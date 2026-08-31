#include <stdio.h>
#include <udp_io.h>
#include "CommandCentreClient.h"

void OnDataReceivedCallback(const unsigned char* pszDataReceived)
{
    printf("Data: %s\n", pszDataReceived);

    CommandCentre_PostStatus(pszDataReceived);
}

void OnResponseRequiredCallback(unsigned char* pszReceiveBuffer, unsigned short maxLength)
{
    // Placeholder until the read path (desired-state) is wired up too —
    // see AWS-BACKEND-SPEC.md.
    snprintf((char*)pszReceiveBuffer, maxLength, "%s", "");
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

    UdpModule_ListenAndRespond(12345, OnDataReceivedCallback, OnResponseRequiredCallback);

    CommandCentre_Shutdown();

    return 0;
}
