// This file is shared between the Pico and x86 compilers

#ifndef HARDWARE_ABSTRACTION
#define HARDWARE_ABSTRACTION

#ifdef PICO_BOARD

#define STDCALL
#define EXPORTEDFUNCTION


#else

#define STDCALL _stdcall
#define EXPORTEDFUNCTION __declspec(dllexport)
#define _CRT_SECURE_NO_WARNINGS

#endif

typedef struct tagDateTimeStruct
{
	unsigned char seconds;
	unsigned char minutes;
	unsigned char hours;
	unsigned char dayOfWeek;
	unsigned char day;
	unsigned char month;
    unsigned char year;
} DateTimeStruct;
    

// callback from board to program
typedef void (STDCALL *CallbackDelegate)(int cookie);

// register for a timer
typedef void (STDCALL *RegisterForTimerDelegate)(int cookie, int milliSeconds, CallbackDelegate callback);

// enable/disable a timer
typedef void (STDCALL *EnableTimerDelegate)(int cookie, int enabled);

// Get RTC
typedef void (STDCALL *GetRtcDelegate)(DateTimeStruct* dts);

// Set RTC
typedef void (STDCALL *SetRtcDelegate)(DateTimeStruct* dts);

// Write to display
typedef void (STDCALL *WriteDisplayBufferDelegate)(unsigned char* buffer);

// Number of chars waiting to be processed - if readCount is 0xff this type of input is not supported
// Read at most 32 chars into buffer as input keys.
typedef void (STDCALL* GetWaitingKeysDelegate)(unsigned char* buffer, unsigned char* readCount);

// Get input ports
typedef void (STDCALL *GetInputPortValuesDelegate)(unsigned char *value);

// Set output ports
typedef void (STDCALL *SetOutputPortValuesDelegate)(unsigned char value);

// Heart beat
typedef void (STDCALL* HeartBeatDelegate)();

// Hot Water temp
typedef void (STDCALL* ReadHotWaterTemperatureDelegate)(float *fValue);

// Get the last received network packet
typedef void (STDCALL* ReadLastNetworkPacketDelegate)(unsigned char* buffer, int maxLength);

// Send a network packet out
typedef void (STDCALL* SendNetworkPacketDelegate)(unsigned char* buffer);

// Crash Dump
typedef void (STDCALL *CrashDumpDelegate)(unsigned char* buffer);
  
extern RegisterForTimerDelegate pRegisterForTimer;
extern EnableTimerDelegate pEnableTimer;
extern GetRtcDelegate pGetRtc;
extern SetRtcDelegate pSetRtc;
extern WriteDisplayBufferDelegate pWriteDisplayBuffer;
extern GetWaitingKeysDelegate pGetWaitingKeys;
extern GetInputPortValuesDelegate pGetInputPortValues;
extern SetOutputPortValuesDelegate pSetOutputPortValues;
extern HeartBeatDelegate pHeartBeat;
extern ReadHotWaterTemperatureDelegate pReadHotWaterTemperature;
extern CrashDumpDelegate pCrashDump;
extern ReadLastNetworkPacketDelegate pReadLastNetworkPacket;
extern SendNetworkPacketDelegate pSendNetworkPacket;

// Keybard constants
#define KEY_LEFT	1
#define KEY_SELECT	2
#define KEY_RIGHT	3
#define KEY_UP		4
#define KEY_DOWN	5
#define KEY_FIRE	6



#endif


void STDCALL UserProgram();
void STDCALL Callback(int cookie);

