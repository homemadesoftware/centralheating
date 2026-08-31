#include <udp_io.h>
#include <stdio.h>
#include <memory.h>

#ifdef _WIN32

#include <winsock2.h>
#include <ws2tcpip.h>
#include <signal.h>
#pragma comment(lib, "ws2_32.lib")

typedef SOCKET udp_socket_t;
#define UDP_CLOSE(s) closesocket(s)

#else

// Must come before <signal.h> — struct sigaction/sigaction()/sigemptyset()
// are gated behind this feature-test macro at the point signal.h is first
// included; defining it after would be too late (header guards lock the
// declarations out for good on that translation unit).
#ifndef _DEFAULT_SOURCE
#define _DEFAULT_SOURCE
#endif
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <signal.h>

typedef int udp_socket_t;
#define UDP_CLOSE(s) close(s)

#define INVALID_SOCKET (-1)

#endif


int Initalise();
void Shutdown();

// Set by the SIGINT/SIGTERM handler, checked by the receive loop below so a
// blocking recvfrom() can actually be stopped rather than the process
// having to be killed outright.
static volatile sig_atomic_t g_shutdownRequested = 0;

static void HandleShutdownSignal(int signum)
{
	(void)signum;
	g_shutdownRequested = 1;
}


int UdpModule_ListenAndRespond(unsigned short udpPort, OnDataReceived* pOnDataReceived, OnResponseRequired* pOnResponseRequired)
{
	int ret = Initalise();
	if (ret != 0)
	{
		return ret;
	}

	printf("Any outstanding initialisation is done\n");

	// create the socket.
	udp_socket_t udpSocket = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
	if (udpSocket == INVALID_SOCKET)
	{
		printf("Could not create socket\n");
		return 1;
	}

	printf("Socket created\n");

	// Set receive address
	struct sockaddr_in receiveAddress;
	memset(&receiveAddress, 0, sizeof(receiveAddress));

	receiveAddress.sin_family = AF_INET;
	inet_pton(AF_INET, "0.0.0.0", &receiveAddress.sin_addr);
	receiveAddress.sin_port = htons(udpPort);


	ret = bind(udpSocket, (struct sockaddr*)&receiveAddress, sizeof(receiveAddress));

	printf("Socket bind complete with %d\n", ret);

	while (!g_shutdownRequested)
	{
		struct sockaddr_in senderAddress;
		memset(&senderAddress, 0, sizeof(senderAddress));

		unsigned int senderAddresLength = sizeof(senderAddress);

		char buffer[UDP_MODULE_MAX_RECEIVE_BUFFER];
		memset(&buffer, 0, sizeof(buffer));

		printf("Start Receive\n");
		int received = recvfrom(udpSocket, buffer, sizeof(buffer), 0, (struct sockaddr*)&senderAddress, &senderAddresLength);

		if (received < 0)
		{
			// Shutdown signal interrupting the blocked recvfrom() looks the
			// same as any other error here (a negative return) — this is
			// the expected, clean way out of the loop, not a real error.
			if (g_shutdownRequested)
			{
				break;
			}

			printf("recvfrom failed\n");
			continue;
		}

		char ipStr[INET_ADDRSTRLEN];
		inet_ntop(AF_INET, &senderAddress.sin_addr, ipStr, sizeof(ipStr));

		printf("Received. Sender: %s, Received: %d, Buffer: %s\n", ipStr, received, buffer);

		pOnDataReceived((const unsigned char*)buffer);

		// send back

		char sendBuffer[UDP_MODULE_MAX_SEND_BUFFER];
		memset(&sendBuffer, 0, sizeof(sendBuffer));

		// Notify new data arriving
		pOnResponseRequired((unsigned char*)sendBuffer, UDP_MODULE_MAX_SEND_BUFFER - 1);

		printf("Sending back %s\n", sendBuffer);
		sendto(udpSocket, sendBuffer, sizeof(sendBuffer), 0, (struct sockaddr*) & senderAddress, senderAddresLength);

		printf("Sending complete\n");
	}


	UDP_CLOSE(udpSocket);

	printf("Socket closed\n");

	return 0;
}


#ifdef _WIN32

static int initialiseCount;


int Initalise()
{
	if (initialiseCount == 0)
	{
		WSADATA wsaData;
		int ret = WSAStartup(MAKEWORD(2, 2), &wsaData);
		if (ret != 0)
		{
			printf("Failed WSAStartup");
			return ret;
		}

		char hostname[32];
		gethostname(hostname, sizeof(hostname));
		printf("WSAStartup Ready. Host: %s\n", hostname);

		signal(SIGINT, HandleShutdownSignal);
		signal(SIGTERM, HandleShutdownSignal);

		initialiseCount++;
	}

	return 0;
}


void Shutdown()
{
	if (initialiseCount == 1)
	{
		WSACleanup();
		initialiseCount--;
	}
}

#else
int Initalise()
{
	// sa_flags left at 0 (no SA_RESTART) deliberately — recvfrom() in the
	// receive loop above needs to come back with EINTR on these signals,
	// not have the kernel silently restart it, or SIGTERM would never
	// actually stop the loop.
	struct sigaction sa;
	memset(&sa, 0, sizeof(sa));
	sa.sa_handler = HandleShutdownSignal;
	sigemptyset(&sa.sa_mask);
	sigaction(SIGINT, &sa, NULL);
	sigaction(SIGTERM, &sa, NULL);

	return 0;
}

void Shutdown()
{

}

#endif
