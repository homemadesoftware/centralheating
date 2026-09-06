// _DEFAULT_SOURCE alone turned out not to be enough to expose struct
// sigaction/sigaction()/sigemptyset() on toadmail-hub's (old, ARMv6)
// glibc, even placed before every include — _GNU_SOURCE is the maximal,
// "just expose everything" macro glibc has supported for 20+ years, and a
// safer bet across whatever glibc vintage a given remote target turns out
// to have. Must be defined before any libc header is included anywhere in
// this translation unit, hence right at the top.
#define _GNU_SOURCE

#include <udp_io.h>
#include <stdio.h>
#include <stdbool.h>
#include <memory.h>
#include <string.h>

#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <signal.h>
#include <errno.h>
#include <time.h>

typedef int udp_socket_t;
#define UDP_CLOSE(s) close(s)

#define INVALID_SOCKET (-1)
#define RECEIVE_TIMEOUT_SECONDS 2

// A reply only actually goes out when the content's genuinely new, or this
// long has passed since the last one - QUACK has no request/response
// coupling (the Pico just keeps reading whatever's cached), so replying to
// every single heartbeat when nothing's changed is pure overhead. The
// keepalive still comfortably beats the Pico's own 300s
// broadcast-vs-unicast threshold in network_io.c, with a lot of margin.
#define REPLY_KEEPALIVE_SECONDS 30


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

// QUACK payloads are \n-joined lines (see QUACK.md) - fine on the wire, but
// it means logging one verbatim sprawls across a dozen-plus journal lines.
// Flattens it to a single line for logging, trimming the separator left by
// the payload's own trailing \n.
static void FlattenForLog(const char* pSource, char* pDest, size_t destSize)
{
	static const char separator[] = " | ";
	static const size_t separatorLen = sizeof(separator) - 1;
	size_t out = 0;

	for (size_t i = 0; pSource[i] != '\0' && out < destSize - 1; ++i)
	{
		if (pSource[i] == '\n')
		{
			for (size_t j = 0; j < separatorLen && out < destSize - 1; ++j)
			{
				pDest[out++] = separator[j];
			}
		}
		else
		{
			pDest[out++] = pSource[i];
		}
	}

	if (out >= separatorLen && strncmp(pDest + out - separatorLen, separator, separatorLen) == 0)
	{
		out -= separatorLen;
	}

	pDest[out] = '\0';
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

	// Without this, recvfrom() below blocks indefinitely whenever the Pico
	// goes quiet, and the only way back to a point where g_shutdownRequested
	// gets rechecked is a signal actually interrupting the blocked call.
	// This bounds that to RECEIVE_TIMEOUT_SECONDS regardless, so a kill
	// during a quiet spell doesn't depend on signal delivery/timing at all.
	struct timeval recvTimeout;
	recvTimeout.tv_sec = RECEIVE_TIMEOUT_SECONDS;
	recvTimeout.tv_usec = 0;
	setsockopt(udpSocket, SOL_SOCKET, SO_RCVTIMEO, &recvTimeout, sizeof(recvTimeout));

	// Received content is logged in full only when it changes - every
	// incoming packet still gets a "UDP from" pulse regardless, so the log
	// stays a live liveness signal without repeating the same ~1s
	// heartbeat content forever. Replies are different: they're not just
	// logged conditionally, they're only actually *sent* when the content's
	// new or the keepalive interval's due - see REPLY_KEEPALIVE_SECONDS.
	char lastReceivedBuffer[UDP_MODULE_MAX_RECEIVE_BUFFER] = { 0 };
	char lastSentBuffer[UDP_MODULE_MAX_SEND_BUFFER] = { 0 };
	time_t lastSentAt = 0;

	while (!g_shutdownRequested)
	{
		struct sockaddr_in senderAddress;
		memset(&senderAddress, 0, sizeof(senderAddress));

		unsigned int senderAddressLength = sizeof(senderAddress);

		char buffer[UDP_MODULE_MAX_RECEIVE_BUFFER];
		memset(&buffer, 0, sizeof(buffer));

		int received = recvfrom(udpSocket, buffer, sizeof(buffer), 0, (struct sockaddr*)&senderAddress, &senderAddressLength);

		if (received < 0)
		{
			// Shutdown signal interrupting the blocked recvfrom() looks the
			// same as any other error here (a negative return) — this is
			// the expected, clean way out of the loop, not a real error.
			if (g_shutdownRequested)
			{
				break;
			}

			// The periodic SO_RCVTIMEO wakeup, not a real failure - just
			// means nothing arrived in the last RECEIVE_TIMEOUT_SECONDS.
			if (errno == EAGAIN || errno == EWOULDBLOCK)
			{
				continue;
			}

			printf("recvfrom failed\n");
			continue;
		}

		char ipStr[INET_ADDRSTRLEN];
		inet_ntop(AF_INET, &senderAddress.sin_addr, ipStr, sizeof(ipStr));

		printf("UDP from %s\n", ipStr);
		if (strcmp(buffer, lastReceivedBuffer) != 0)
		{
			char flattened[UDP_MODULE_MAX_RECEIVE_BUFFER];
			FlattenForLog(buffer, flattened, sizeof(flattened));
			printf("Received (changed): %s\n", flattened);
			strncpy(lastReceivedBuffer, buffer, sizeof(lastReceivedBuffer) - 1);
			lastReceivedBuffer[sizeof(lastReceivedBuffer) - 1] = '\0';
		}

		pOnDataReceived((const unsigned char*)buffer);

		// send back

		char sendBuffer[UDP_MODULE_MAX_SEND_BUFFER];
		memset(&sendBuffer, 0, sizeof(sendBuffer));

		// Notify new data arriving
		pOnResponseRequired((unsigned char*)sendBuffer, UDP_MODULE_MAX_SEND_BUFFER - 1);

		bool contentChanged = strcmp(sendBuffer, lastSentBuffer) != 0;
		bool keepaliveDue = lastSentAt == 0 || difftime(time(NULL), lastSentAt) >= REPLY_KEEPALIVE_SECONDS;

		if (contentChanged || keepaliveDue)
		{
			char flattened[UDP_MODULE_MAX_SEND_BUFFER];
			FlattenForLog(sendBuffer, flattened, sizeof(flattened));
			printf("Replying to %s (%s): %s\n", ipStr, contentChanged ? "changed" : "keepalive", flattened);

			int sent = sendto(udpSocket, sendBuffer, sizeof(sendBuffer), 0, (struct sockaddr*) & senderAddress, senderAddressLength);
			if (sent < 0)
			{
				printf("sendto to %s failed: %s\n", ipStr, strerror(errno));
			}

			strncpy(lastSentBuffer, sendBuffer, sizeof(lastSentBuffer) - 1);
			lastSentBuffer[sizeof(lastSentBuffer) - 1] = '\0';
			lastSentAt = time(NULL);
		}
	}


	UDP_CLOSE(udpSocket);

	printf("Socket closed\n");

	return 0;
}

int UdpModule_IsShutdownRequested(void)
{
	return g_shutdownRequested;
}


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
