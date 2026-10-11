#include <stdio.h>
#include <string.h>
#include <time.h>
#include <udp_io.h>
#include "CommandCentreClient.h"
#include "DesiredStateReader.h"

// AWS is deliberately off the Pico-facing critical path - this is how
// often the *latest* received status gets posted, dropping whatever
// arrived in between. Per-second granularity wasn't buying anything real
// (a hot water tank doesn't cool meaningfully second to second), so this
// trades it away for never blocking the reply loop longer than necessary.
#define STATUS_POST_INTERVAL_SECONDS 30

static char g_latestStatus[UDP_MODULE_MAX_RECEIVE_BUFFER] = { 0 };
static int g_haveLatestStatus = 0;
static time_t g_lastStatusPostAt = 0;

// Posts whatever the latest status was as of right now, at most once every
// STATUS_POST_INTERVAL_SECONDS, inline on this same thread. The POST call
// blocks for however long curl takes (bounded by its own timeout), but
// that's accepted now - it happens at most once every 30s, not per packet,
// which is what actually caused the original backlog.
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

    CommandCentre_PostStatus((const unsigned char*)g_latestStatus);
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
    // Single thread, single process - do this, then that, then this:
    // fetch-if-due, post-if-due, then reply with whatever's cached.
    DesiredStateReader_Tick();
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

    // Both APIs' config is validated up front, so a missing/bad env var
    // fails the whole service loudly at startup (a crash-looping systemd
    // unit) instead of silently limping along.
    if (CommandCentre_Init() != 0)
    {
        return 1;
    }
    if (DesiredStateReader_ValidateEnv() != 0)
    {
        return 1;
    }

    UdpModule_ListenAndRespond(12345, OnDataReceivedCallback, OnResponseRequiredCallback);

    CommandCentre_Shutdown();

    return 0;
}
