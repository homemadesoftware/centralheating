// This file is shared between the 8051 and x86 compilers

#ifndef HARDWARE_ABSTRACTION
#define HARDWARE_ABSTRACTION

#ifdef MC8051

#include <mcs51/at89c51ed2.h>
#define STDCALL 
#define EXPORTEDFUNCTION 
#define REENTRANT __reentrant 


#else

#define STDCALL _stdcall 
#define EXPORTEDFUNCTION __declspec(dllexport) 
#define _CRT_SECURE_NO_WARNINGS
#define REENTRANT

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
typedef void (STDCALL *CallbackDelegate)(int cookie) REENTRANT;

// register for a timer
typedef void (STDCALL *RegisterForTimerDelegate)(int cookie, int milliSeconds, CallbackDelegate callback) REENTRANT;

// enable/disable a timer
typedef void (STDCALL *EnableTimerDelegate)(int cookie, int enabled) REENTRANT;

// Get RTC
typedef void (STDCALL *GetRtcDelegate)(DateTimeStruct* dts) REENTRANT;

// Set RTC
typedef void (STDCALL *SetRtcDelegate)(DateTimeStruct* dts) REENTRANT;

// Write to display
typedef void (STDCALL *WriteDisplayBufferDelegate)(unsigned char* buffer) REENTRANT;

// Read key state
typedef void (STDCALL *GetKeyStateDelegate)(int* keys) REENTRANT;

// Get input ports
typedef void (STDCALL *GetInputPortValuesDelegate)(unsigned char *value) REENTRANT;

// Set output ports
typedef void (STDCALL *SetOutputPortValuesDelegate)(unsigned char value) REENTRANT;

// Crash Dump
typedef void (STDCALL *CrashDumpDelegate)(unsigned char* buffer) REENTRANT;
  
extern RegisterForTimerDelegate pRegisterForTimer;
extern EnableTimerDelegate pEnableTimer;
extern GetRtcDelegate pGetRtc;
extern SetRtcDelegate pSetRtc;
extern WriteDisplayBufferDelegate pWriteDisplayBuffer;
extern GetKeyStateDelegate pGetKeyState;
extern GetInputPortValuesDelegate pGetInputPortValues;
extern SetOutputPortValuesDelegate pSetOutputPortValues;
extern CrashDumpDelegate pCrashDump;
  

#ifdef MC8051

// As defined by the the board for 8051
void Start8051Board();

#endif

#endif


void STDCALL UserProgram() REENTRANT;
void STDCALL Callback(int cookie) REENTRANT;