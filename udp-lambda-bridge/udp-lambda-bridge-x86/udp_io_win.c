#include <udp_io.h>
#include <winsock2.h>
#include <ws2tcpip.h>
#include <stdio.h>

#pragma comment(lib, "ws2_32.lib")



static OnDataReceived* spOnDataReceived;
static OnResponseRequired* spOnResponseRequired;


int Initalise_UdpModule(int udpPort, OnDataReceived *pOnDataReceived, OnResponseRequired *pOnResponseRequired)
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


	spOnDataReceived = pOnDataReceived;
	spOnResponseRequired = pOnResponseRequired;

	// create the socket.
	SOCKET receiveSocket = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
	if (receiveSocket == INVALID_SOCKET)
	{
		printf("Could not create socket\n");
		return 1;
	}

	// Set receive address
	struct sockaddr_in receiveAddress;
	memset(&receiveAddress, 0, sizeof(receiveAddress));
	
	receiveAddress.sin_family = AF_INET;
	inet_pton(AF_INET, "0.0.0.0", &receiveAddress.sin_addr);
	receiveAddress.sin_port = htons(udpPort);


	bind(receiveSocket, (struct sockaddr*)&receiveAddress, sizeof(receiveAddress));

	char buffer[200];
	struct sockaddr_in senderAddress;
	memset(&senderAddress, 0, sizeof(senderAddress));

	while (1)
	{

		int senderAddresLength = sizeof(senderAddress);
		int received = recvfrom(receiveSocket, buffer, sizeof(buffer), 0, (struct sockaddr*)&senderAddress, &senderAddresLength);


		char ipStr[INET_ADDRSTRLEN];
		inet_ntop(AF_INET, &senderAddress.sin_addr, ipStr, sizeof(ipStr));

		printf("Sender: %s, Received: %d, Buffer: %s\n", ipStr, received, buffer);
		
		// send back

		SOCKET sendSocket = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);

		
		char sendBuffer[32];
		strcpy_s(sendBuffer, sizeof(sendBuffer), "sheep");
		
		sendto(sendSocket, sendBuffer, sizeof(sendBuffer), 0, &senderAddress, senderAddresLength);

		closesocket(sendSocket);

	}


	closesocket(receiveSocket);


	return 0;
}

void ListenAndRespond()
{


}

void Shutdown()
{
	WSACleanup();

}