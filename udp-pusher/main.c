#include <stdio.h>
#include <string.h>
#include "pico/stdlib.h"
#include "pico/cyw43_arch.h"
#include "lwip/udp.h"
#include "lwip/ip_addr.h"
#include "lwip/netif.h"
#include "network_io.h"

#define WIFI_SSID       "You will be hacked"
#define WIFI_PASSWORD   ""
#define UDP_PORT        12345
#define BASE_FAKE_UTC   1786291200UL


static uint64_t s_start_us;
static char     s_mode[16] = "";


static uint32_t fake_current_utc(void)
{
    return BASE_FAKE_UTC + (uint32_t)((time_us_64() - s_start_us) / 1000000);
}


void Receive(const unsigned char* pszDataIn)
{
    printf("%s\n", pszDataIn);

    if (strcmp(pszDataIn, "sheep") == 0 ||
        strcmp(pszDataIn, "pig") == 0 ||
        strcmp(pszDataIn, "cow") == 0)
    {
        strncpy(s_mode, pszDataIn, sizeof(s_mode) - 1);
        printf("Mode: %s\n", s_mode);
    }
}


int main(void)
{
    stdio_init_all();

    s_start_us = time_us_64();


    NetworkIo io;

    if (NetworkIo_Init(&io, WIFI_SSID, WIFI_PASSWORD, UDP_PORT, Receive) != 0)
    {
        printf("Failed to Init\n");
        return 1;
    }

    absolute_time_t next_send = make_timeout_time_ms(1000);

    while (true) 
    {
        NetworkIo_Poll(&io);
        sleep_ms(1);

        if (time_reached(next_send)) 
        {
            next_send = delayed_by_ms(next_send, 1000);

            char buf[32];
            snprintf(buf, sizeof(buf), "%lu %s", (unsigned long)fake_current_utc(), s_mode);
            NetworkIo_Send(&io, buf);
        }
    }
}
