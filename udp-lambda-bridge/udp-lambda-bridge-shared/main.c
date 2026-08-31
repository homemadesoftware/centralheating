#include <stdio.h>
#include <udp_io.h>

void OnDataReceivedCallback(const unsigned char* pszDataReceived)
{
    printf("Data: %s\n", pszDataReceived);
}

void OnResponseRequiredCallback(unsigned char* pszReceiveBuffer, unsigned short maxLength)
{
    // Placeholder until the real QUACK bridge to central-heating-on-cloud
    // is built (see udp-lambda-bridge/README.md and AWS-BACKEND-SPEC.md).
    snprintf((char*)pszReceiveBuffer, maxLength, "%s", "");
}

int main(void)
{
    UdpModule_ListenAndRespond(12345, OnDataReceivedCallback, OnResponseRequiredCallback);

    return 0;
}
