
// This is called by OnListenAndRespond when it receives some data.
// The data can only be a null terminated string and is allocated/freed by the module.
typedef void OnDataReceived(const unsigned char* pszDataReceived);


// This is called by the module when it needs to send a respons to the UDP socket
// A buffer is already allocated and null terminated. 
// The response must be written to it, with thr null terminator. The maximum number of 
// chars that can be written is maxLength - 1.
typedef void OnResponseRequired(unsigned char* pszReceiveBuffer, int maxLength);


int Initalise_UdpModule(int udpPort, OnDataReceived *pOnDataReceived, OnResponseRequired *pOnResponseRequired);

void ListenAndRespond();

void Shutdown();