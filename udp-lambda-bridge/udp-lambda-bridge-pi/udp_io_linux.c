#define _DEFAULT_SOURCE
#include <udp_io.h>
#include <stdio.h>
#include <unistd.h>


static OnDataReceived* spOnDataReceived;
static OnResponseRequired* spOnResponseRequired;


int Initalise_UdpModule(int udpPort, OnDataReceived* pOnDataReceived, OnResponseRequired* pOnResponseRequired)
{
	char hostname[32];
	gethostname(hostname, sizeof(hostname));
	printf("WSAStartup Ready. Host: %s\n", hostname);

	spOnDataReceived = pOnDataReceived;
	spOnResponseRequired = pOnResponseRequired;

	return 0;
}

void ListenAndRespond()
{


}

void Shutdown()
{

}