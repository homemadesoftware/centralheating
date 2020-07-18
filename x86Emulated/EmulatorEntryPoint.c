#include "../Common/HardwareAbstraction.h"

typedef struct tagBoardCalls
{
	RegisterForTimerDelegate pRegisterForTimer;
    EnableTimerDelegate pEnableTimer;
	GetRtcDelegate pGetRtc;
	SetRtcDelegate pSetRtc;
	WriteDisplayBufferDelegate pWriteDisplayBuffer;
	GetKeyStateDelegate pGetKeyState;
	GetInputPortValuesDelegate pGetInputPortValues;
	SetOutputPortValuesDelegate pSetOutputPortValues;
	CrashDumpDelegate pCrashDump;
} BoardCalls;


// Global variables
RegisterForTimerDelegate    pRegisterForTimer;
EnableTimerDelegate         pEnableTimer;
GetRtcDelegate              pGetRtc;
SetRtcDelegate              pSetRtc;
WriteDisplayBufferDelegate  pWriteDisplayBuffer;
GetKeyStateDelegate         pGetKeyState;
GetInputPortValuesDelegate  pGetInputPortValues;
SetOutputPortValuesDelegate pSetOutputPortValues;
CrashDumpDelegate           pCrashDump;


EXPORTEDFUNCTION void StartEmulatedHardware(BoardCalls *pCalls)
{
    pRegisterForTimer       = pCalls->pRegisterForTimer;
    pEnableTimer            = pCalls->pEnableTimer;
    pGetRtc                 = pCalls->pGetRtc;
    pSetRtc                 = pCalls->pSetRtc;
    pWriteDisplayBuffer     = pCalls->pWriteDisplayBuffer;
    pGetKeyState            = pCalls->pGetKeyState;
    pGetInputPortValues     = pCalls->pGetInputPortValues;
    pSetOutputPortValues    = pCalls->pSetOutputPortValues;
    pCrashDump              = pCalls->pCrashDump;

    UserProgram();
}
