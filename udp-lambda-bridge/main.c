#include <stdio.h>
#include <unistd.h>
#include <udp_io.h>
#include "CommandCentreClient.h"
#include "DesiredStateReader.h"

void OnDataReceivedCallback(const unsigned char* pszDataReceived)
{
    printf("Data: %s\n", pszDataReceived);

    CommandCentre_PostStatus(pszDataReceived);
}

void OnResponseRequiredCallback(unsigned char* pszReceiveBuffer, unsigned short maxLength)
{
    DesiredStateReader_ReadCache((char*)pszReceiveBuffer, maxLength);
}

int main(void)
{
    // stdout is fully buffered (not line-buffered) whenever it isn't an
    // interactive terminal — e.g. piped over SSH or redirected to a log
    // file — so printf output would otherwise only appear once the buffer
    // fills or the process exits, not as it happens.
    setvbuf(stdout, NULL, _IONBF, 0);

    if (CommandCentre_Init() != 0)
    {
        return 1;
    }

    // The desired-state read path runs in a forked child rather than a
    // thread - no shared memory/locking to get right, just the cache file
    // as the sole interface between the two. See DesiredStateReader.h.
    pid_t readerPid = fork();
    if (readerPid == 0)
    {
        DesiredStateReader_RunChildLoop();
        return 0;
    }
    else if (readerPid < 0)
    {
        printf("Failed to fork desired-state reader - replies will stay empty\n");
    }

    UdpModule_ListenAndRespond(12345, OnDataReceivedCallback, OnResponseRequiredCallback);

    CommandCentre_Shutdown();

    return 0;
}
