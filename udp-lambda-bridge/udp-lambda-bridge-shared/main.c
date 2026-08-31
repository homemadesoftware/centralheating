#include <stdio.h>
#include <udp_io.h>

// Command Centre write path is Pi-only for now (libcurl isn't wired up for
// the x86 build, which also shares this file) — see
// udp-lambda-bridge-pi/CommandCentreClient.h.
#ifndef _WIN32
#include "../udp-lambda-bridge-pi/CommandCentreClient.h"
#endif

void OnDataReceivedCallback(const unsigned char* pszDataReceived)
{
    printf("Data: %s\n", pszDataReceived);

#ifndef _WIN32
    CommandCentre_PostStatus(pszDataReceived);
#endif
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

#ifndef _WIN32
    if (CommandCentre_Init() != 0)
    {
        return 1;
    }
#endif

    UdpModule_ListenAndRespond(12345, OnDataReceivedCallback, OnResponseRequiredCallback);

#ifndef _WIN32
    CommandCentre_Shutdown();
#endif

    return 0;
}
