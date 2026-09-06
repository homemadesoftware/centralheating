#include <stdio.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include <signal.h>
#include <sys/wait.h>
#include <udp_io.h>
#include "CommandCentreClient.h"
#include "DesiredStateReader.h"

// AWS is deliberately off the Pico-facing critical path - this is how
// often the *latest* received status gets posted, dropping whatever
// arrived in between. Per-second granularity wasn't buying anything real
// (a hot water tank doesn't cool meaningfully second to second), so this
// trades it away for never blocking the reply loop on an AWS call.
#define STATUS_POST_INTERVAL_SECONDS 30

// <= 0 means "no child successfully started yet" - nothing to supervise.
static pid_t g_readerPid = -1;

static char g_latestStatus[UDP_MODULE_MAX_RECEIVE_BUFFER] = { 0 };
static int g_haveLatestStatus = 0;
static time_t g_lastStatusPostAt = 0;

// The desired-state read path runs in a forked child rather than a
// thread - no shared memory/locking to get right, just the cache file
// as the sole interface between the two. See DesiredStateReader.h.
static void StartReaderChild(void)
{
    g_readerPid = fork();
    if (g_readerPid == 0)
    {
        DesiredStateReader_RunChildLoop();
        _exit(0); // RunChildLoop never returns normally; this is just a safety net
    }
    else if (g_readerPid < 0)
    {
        printf("Failed to fork desired-state reader - replies will stay empty\n");
    }
}

// Checked once per reply cycle (roughly every Pico heartbeat) - cheap
// (WNOHANG never blocks), and frequent enough that a dead child gets
// noticed and replaced within a few seconds rather than leaving the cache
// frozen indefinitely with nothing to indicate anything's wrong.
static void EnsureReaderChildAlive(void)
{
    if (g_readerPid <= 0 || UdpModule_IsShutdownRequested())
    {
        // Once shutdown's underway, a child dying (e.g. the same signal
        // that's stopping the parent also hit it directly, since Ctrl+C
        // targets the whole foreground process group) is expected, not
        // something to replace - starting a fresh child here would race
        // the parent's own exit, with no guarantee the new child's
        // PR_SET_PDEATHSIG gets armed before the parent's actually gone.
        return;
    }

    if (waitpid(g_readerPid, NULL, WNOHANG) == g_readerPid)
    {
        printf("Desired-state reader child died - restarting it\n");
        StartReaderChild();
    }
}

// Reaps any finished one-shot status-post children (see
// PostLatestStatusIfDue). Deliberately not a blanket signal(SIGCHLD,
// SIG_IGN) - that would auto-reap g_readerPid too, out from under
// EnsureReaderChildAlive's own explicit waitpid, breaking its ability to
// ever see that child exit.
static void ReapFinishedChildren(void)
{
    while (waitpid(-1, NULL, WNOHANG) > 0)
    {
    }
}

// Posts whatever the latest status was as of right now, at most once every
// STATUS_POST_INTERVAL_SECONDS, in a one-shot forked child - fire and
// forget, since posting status has nothing to hand back to the parent
// (unlike the desired-state read path, which needs the cache file for
// exactly that reason). fork()'s copy-on-write semantics mean the child
// just inherits whatever g_latestStatus holds at the moment it's forked;
// no IPC needed. The parent's own loop never waits on this, regardless of
// how slow the actual POST turns out to be.
static void PostLatestStatusIfDue(void)
{
    if (!g_haveLatestStatus)
    {
        return;
    }

    time_t now = time(NULL);
    if (g_lastStatusPostAt != 0 && difftime(now, g_lastStatusPostAt) < STATUS_POST_INTERVAL_SECONDS)
    {
        return;
    }
    g_lastStatusPostAt = now;

    pid_t pid = fork();
    if (pid == 0)
    {
        CommandCentre_PostStatus((const unsigned char*)g_latestStatus);
        _exit(0);
    }
    else if (pid < 0)
    {
        printf("Failed to fork status-post child - status not sent this cycle\n");
    }
}

void OnDataReceivedCallback(const unsigned char* pszDataReceived)
{
    // udp_io.c already logs this (deduplicated and flattened to one line)
    // as "UDP from"/"Received (changed)" - no need to log it again here.
    //
    // No AWS call here at all - just remember the latest reading.
    // PostLatestStatusIfDue (called from OnResponseRequiredCallback, once
    // per reply cycle) decides when to actually post it.
    strncpy(g_latestStatus, (const char*)pszDataReceived, sizeof(g_latestStatus) - 1);
    g_latestStatus[sizeof(g_latestStatus) - 1] = '\0';
    g_haveLatestStatus = 1;
}

void OnResponseRequiredCallback(unsigned char* pszReceiveBuffer, unsigned short maxLength)
{
    EnsureReaderChildAlive();
    ReapFinishedChildren();
    PostLatestStatusIfDue();
    DesiredStateReader_ReadCache((char*)pszReceiveBuffer, maxLength);
}

int main(void)
{
    // stdout is fully buffered (not line-buffered) whenever it isn't an
    // interactive terminal — e.g. piped over SSH or redirected to a log
    // file — so printf output would otherwise only appear once the buffer
    // fills or the process exits, not as it happens.
    setvbuf(stdout, NULL, _IONBF, 0);

    // Both APIs' config is validated up front, before forking, so a
    // missing/bad env var fails the whole service loudly at startup
    // (a crash-looping systemd unit) instead of only the reader child
    // silently dying while the parent looks fine and keeps serving a
    // frozen cache forever.
    if (CommandCentre_Init() != 0)
    {
        return 1;
    }
    if (DesiredStateReader_ValidateEnv() != 0)
    {
        return 1;
    }

    StartReaderChild();

    UdpModule_ListenAndRespond(12345, OnDataReceivedCallback, OnResponseRequiredCallback);

    // Belt-and-suspenders alongside PR_SET_PDEATHSIG: deterministically
    // takes down whichever child is currently running on a clean exit,
    // rather than relying on signal-delivery timing. PDEATHSIG remains the
    // only mechanism if the parent instead dies abnormally (SIGKILL,
    // crash) and never reaches this line at all.
    if (g_readerPid > 0)
    {
        kill(g_readerPid, SIGTERM);
        waitpid(g_readerPid, NULL, 0);
    }

    CommandCentre_Shutdown();

    return 0;
}
