#include <stdio.h>
#include "pico/stdlib.h"
#include "pico/cyw43_arch.h"
#include "pico/time.h"
#include "network_io.h"



#define RECONNECT_AFTER 30000


// forward declares
void on_recv(void* arg, struct udp_pcb* pcb, struct pbuf* p, const ip_addr_t* addr, u16_t port);
bool has_time_passed_ms(absolute_time_t start_time, uint32_t interval_ms);

int NetworkIo_Init(NetworkIo* pIo, const unsigned char* ssid, int port, OnReceiveCallback onReceive)
{
	memset(pIo, 0, sizeof(NetworkIo));
	if (cyw43_arch_init())
	{
		printf("WiFi init failed\n");
		pIo->initFailure = 1;
		return pIo->initFailure;
	}

	strncpy(pIo->ssid, ssid, MAX_SSID_LEN);
	pIo->port = port;
	IP4_ADDR(&pIo->broadcastTarget, 255, 255, 255, 255);

	pIo->udpBroadcast = udp_new();
	ip_set_option(pIo->udpBroadcast, SOF_BROADCAST);
	udp_bind(pIo->udpBroadcast, IP_ADDR_ANY, pIo->port);
	udp_recv(pIo->udpBroadcast, on_recv, pIo);

	pIo->lastResponseAt = nil_time;
	
	cyw43_arch_enable_sta_mode();
	
	pIo->receiveCallback = onReceive;
	pIo->nextStatusCheck = make_timeout_time_ms(1000);
	pIo->status = WifiStartedConnecting;
	pIo->waitConnectionUntil = delayed_by_ms(get_absolute_time(), 100);
	return 0;
}

int NetworkIo_Send(NetworkIo* pIo, const unsigned char* pszDataOut)
{
	if (pIo->status == WifiConnected)
	{
		int len = strlen(pszDataOut) + 1;
		struct pbuf* p = pbuf_alloc(PBUF_TRANSPORT, (u16_t)len, PBUF_RAM);
		if (p == NULL)
		{
			printf("Out of memory");
			return 1;
		}

		// From this point onwards we are always sending/receiving null terminated strings
		strcpy(p->payload, pszDataOut);

		// If we know the IP of the last sender, talk directly to that as long as it was not a long time ago. If it was a long time ago so maybe they re-iped themselves.
		if (is_nil_time(pIo->lastResponseAt) || has_time_passed_ms(pIo->lastResponseAt, 600 * 1000)) // never heard from anyone, or 600 seconds passed?
		{
			int ret = udp_sendto(pIo->udpBroadcast, p, &pIo->broadcastTarget, pIo->port);
			printf("Broadcast: %s, target: %s, ret: %d\n", pszDataOut, ip4addr_ntoa(&pIo->broadcastTarget), ret);
		}
		else 
		{
			int ret = udp_sendto(pIo->udpBroadcast, p, &pIo->respondingTarget, pIo->port);
			printf("Broadcast: %s, target: %s, ret: %d\n", pszDataOut, ip4addr_ntoa(&pIo->respondingTarget), ret);
		}
		
		
		
		pbuf_free(p);
		return 0;
	}
	else
	{
		printf("Not connected\n");
		return 1;
	}
	
}

int NetworkIo_Poll(NetworkIo* pIo)
{
	cyw43_arch_poll();

	if (time_reached(pIo->nextStatusCheck))
	{
		pIo->nextStatusCheck = delayed_by_ms(pIo->nextStatusCheck, 1000);

		// Check wifi status
		int status = cyw43_tcpip_link_status(&cyw43_state, CYW43_ITF_STA);

		if (pIo->status == WifiStartedConnecting)
		{
			if (status == CYW43_LINK_UP)
			{
				pIo->status = WifiConnected;
			}
			else if (time_reached(pIo->waitConnectionUntil))
			{
				printf("Attempting connect\n");
				pIo->lastResponseAt = nil_time;
				pIo->waitConnectionUntil = make_timeout_time_ms(RECONNECT_AFTER);
				printf("Connecting to %s...\n", pIo->ssid);
				cyw43_arch_wifi_connect_async(pIo->ssid, NULL, CYW43_AUTH_OPEN);
			}
		}
		else
		{
			if (status == CYW43_LINK_UP)
			{
				pIo->status = WifiConnected;
			}
			else
			{
				pIo->status = WifiStartedConnecting;
				pIo->waitConnectionUntil = make_timeout_time_ms(RECONNECT_AFTER);

				// Line dropped. Perhaps router rebooting. We will wait for 30 seconds before attempting again
			}
		}

	}
}


void on_recv(void* arg, struct udp_pcb* pcb, struct pbuf* p, const ip_addr_t* addr, u16_t port)
{
	if (p == NULL || arg == NULL)
	{
		return;
	}

	NetworkIo* pIo = (NetworkIo*)arg;
	pIo->lastResponseAt = get_absolute_time();
	pIo->respondingTarget = *addr;

	char payload[256] = { 0 };
	u16_t len = p->tot_len < sizeof(payload) - 1 ? p->tot_len : sizeof(payload) - 1;
	pbuf_copy_partial(p, payload, len, 0);
	pbuf_free(p);

	if (pIo->receiveCallback != NULL)
	{
		pIo->receiveCallback(payload);
	}
}

bool has_time_passed_ms(absolute_time_t start_time, uint32_t interval_ms)
{
	int64_t diff_us = absolute_time_diff_us(start_time, get_absolute_time());
	return diff_us >= ((int64_t)interval_ms * 1000);
}
