#include <stdio.h>
#include <udp_io.h>


static int responseCounter = 0;

static char responses[10][10] = {
    "piggy",
    "sheepy",
    "cowww",
    "ducky"
};

void OnDataReceivedCallback(const unsigned char* pszDataReceived)
{
    printf("Data: %s\n", pszDataReceived);
}

void OnResponseRequiredCallback(unsigned char* pszReceiveBuffer, unsigned short maxLength)
{
    snprintf((char*)pszReceiveBuffer, maxLength, "%s", responses[responseCounter++ % 4]);

}

int main(void)
{
    UdpModule_ListenAndRespond(12345, OnDataReceivedCallback, OnResponseRequiredCallback);

    return 0;
        
}
