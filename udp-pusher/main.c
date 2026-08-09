#include <stdio.h>
#include <string.h>
#include "pico/stdlib.h"
#include "pico/cyw43_arch.h"
#include "lwip/udp.h"
#include "lwip/ip_addr.h"
#include "lwip/netif.h"

#define WIFI_SSID   "You will be hacked"
#define UDP_PORT    12345
#define BASE_UTC    1786291200UL

static uint64_t s_start_us;
static char     s_mode[16] = "";

static void led(bool on)
{
    cyw43_arch_gpio_put(CYW43_WL_GPIO_LED_PIN, on);
}

static uint32_t current_utc(void)
{
    return BASE_UTC + (uint32_t)((time_us_64() - s_start_us) / 1000000);
}

static void on_recv(void *arg, struct udp_pcb *pcb, struct pbuf *p,
                    const ip_addr_t *addr, u16_t port)
{
    (void)arg;
    if (!p) return;

    char payload[16] = {0};
    u16_t len = p->tot_len < sizeof(payload) - 1 ? p->tot_len : sizeof(payload) - 1;
    pbuf_copy_partial(p, payload, len, 0);
    pbuf_free(p);

    if (strcmp(payload, "sheep") == 0 ||
        strcmp(payload, "pig")   == 0 ||
        strcmp(payload, "cow")   == 0)
    {
        strncpy(s_mode, payload, sizeof(s_mode) - 1);
        printf("Mode: %s\n", s_mode);

        char buf[32];
        int rlen = snprintf(buf, sizeof(buf), "%lu %s", (unsigned long)current_utc(), s_mode);
        struct pbuf *resp = pbuf_alloc(PBUF_TRANSPORT, (u16_t)rlen, PBUF_RAM);
        if (resp) {
            memcpy(resp->payload, buf, rlen);
            udp_sendto(pcb, resp, addr, port);
            pbuf_free(resp);
        }
    }
}

int main(void)
{
    stdio_init_all();

    if (cyw43_arch_init()) {
        printf("WiFi init failed\n");
        return 1;
    }

    cyw43_arch_enable_sta_mode();
    cyw43_arch_wifi_connect_async(WIFI_SSID, NULL, CYW43_AUTH_OPEN);

    printf("Connecting to %s...\n", WIFI_SSID);
    absolute_time_t timeout    = make_timeout_time_ms(30000);
    absolute_time_t next_blink = make_timeout_time_ms(250);
    bool led_state = false;

    while (!time_reached(timeout)) {
        cyw43_arch_poll();
        int status = cyw43_wifi_link_status(&cyw43_state, CYW43_ITF_STA);
        if (status == CYW43_LINK_JOIN)
            break;
        if (status < 0) {
            printf("Connect failed: %d\n", status);
            cyw43_arch_deinit();
            return 1;
        }
        if (time_reached(next_blink)) {
            led_state = !led_state;
            led(led_state);
            next_blink = delayed_by_ms(next_blink, 250);
        }
        sleep_ms(1);
    }

    if (cyw43_wifi_link_status(&cyw43_state, CYW43_ITF_STA) != CYW43_LINK_JOIN) {
        printf("Timed out\n");
        led(false);
        cyw43_arch_deinit();
        return 1;
    }

    printf("Connected, waiting for DHCP...\n");
    while (ip4_addr_isany_val(*netif_ip4_addr(netif_default))) {
        cyw43_arch_poll();
        sleep_ms(10);
    }

    led(true);
    s_start_us = time_us_64();
    printf("Ready\n");

    struct udp_pcb *pcb = udp_new();
    ip_set_option(pcb, SOF_BROADCAST);
    udp_bind(pcb, IP_ADDR_ANY, UDP_PORT);
    udp_recv(pcb, on_recv, NULL);

    ip_addr_t broadcast;
    IP4_ADDR(&broadcast, 255, 255, 255, 255);

    absolute_time_t next_send = make_timeout_time_ms(1000);
    led_state = true;

    while (true) {
        cyw43_arch_poll();

        if (time_reached(next_send)) {
            next_send = delayed_by_ms(next_send, 1000);
            led_state = !led_state;
            led(led_state);

            char buf[32];
            int len;
            if (s_mode[0])
                len = snprintf(buf, sizeof(buf), "%lu %s", (unsigned long)current_utc(), s_mode);
            else
                len = snprintf(buf, sizeof(buf), "%lu", (unsigned long)current_utc());

            struct pbuf *p = pbuf_alloc(PBUF_TRANSPORT, (u16_t)len, PBUF_RAM);
            if (p) {
                memcpy(p->payload, buf, len);
                udp_sendto(pcb, p, &broadcast, UDP_PORT);
                pbuf_free(p);
                printf("Broadcast: %s\n", buf);
            }
        }

        sleep_ms(1);
    }
}
