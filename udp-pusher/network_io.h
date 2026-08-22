#define MAX_SSID_LEN 32

typedef enum tagNetworkStatus
{
	// Wifi started connecting. We will remain in this state for a while then will re-issue another connection attempt
	WifiStartedConnecting,

	// Wifi Connected. ALL good.
	WifiConnected,
} NetworkStatus;

typedef void (*OnReceiveCallback)(const unsigned char* pszDataIn);

typedef struct tagNetworkIo
{
	unsigned char ssid[MAX_SSID_LEN];
	OnReceiveCallback receiveCallback;
	int initFailure;
	NetworkStatus status;
	absolute_time_t nextStatusCheck;
	absolute_time_t waitConnectionUntil;
	int port;
	ip_addr_t broadcastTarget;
	struct udp_pcb* udpBroadcast;
	ip_addr_t respondingTarget;
	absolute_time_t lastResponseAt;


} NetworkIo;

int NetworkIo_Init(NetworkIo* pIo, const unsigned char* ssid, int port, OnReceiveCallback onReceive);
int NetworkIo_Send(NetworkIo* pIo, const unsigned char* pszDataOut);
int NetworkIo_Poll(NetworkIo* pIo);