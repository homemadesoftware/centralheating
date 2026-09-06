
// This is called by OnListenAndRespond when it receives some data.
// The data can only be a null terminated string and is allocated/freed by the module.
typedef void OnDataReceived(const unsigned char* pszDataReceived);


// This is called by the module when it needs to send a respons to the UDP socket
// A buffer is already allocated and null terminated. 
// The response must be written to it, with thr null terminator. The maximum number of 
// chars that can be written is maxLength - 1.
typedef void OnResponseRequired(unsigned char* pszReceiveBuffer, unsigned short maxLength);



int UdpModule_ListenAndRespond(unsigned short udpPort, OnDataReceived* pOnDataReceived, OnResponseRequired* pOnResponseRequired);

// True once a shutdown signal has been received - lets a callback avoid
// starting new work (e.g. respawning a child process) that would only
// need tearing down again a moment later.
int UdpModule_IsShutdownRequested(void);

#define UDP_MODULE_MAX_RECEIVE_BUFFER 512
#define UDP_MODULE_MAX_SEND_BUFFER    512