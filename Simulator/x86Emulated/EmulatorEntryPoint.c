#include "../../Common/HardwareAbstraction.h"

typedef struct tagBoardCalls
{
	RegisterForTimerDelegate pRegisterForTimer;
    EnableTimerDelegate pEnableTimer;
	GetRtcDelegate pGetRtc;
	SetRtcDelegate pSetRtc;
	WriteDisplayBufferDelegate pWriteDisplayBuffer;
    GetWaitingKeysDelegate pGetWaitingKeys;
    GetInputPortValuesDelegate pGetInputPortValues;
	SetOutputPortValuesDelegate pSetOutputPortValues;
    ReadHotWaterTemperatureDelegate pReadHotWaterTemperature;
    HeartBeatDelegate pHeartBeat;
	CrashDumpDelegate pCrashDump;
} BoardCalls;


// Global variables
RegisterForTimerDelegate        pRegisterForTimer;
EnableTimerDelegate             pEnableTimer;
GetRtcDelegate                  pGetRtc;
SetRtcDelegate                  pSetRtc;
WriteDisplayBufferDelegate      pWriteDisplayBuffer;
GetWaitingKeysDelegate          pGetWaitingKeys;
GetInputPortValuesDelegate      pGetInputPortValues;
SetOutputPortValuesDelegate     pSetOutputPortValues;
ReadHotWaterTemperatureDelegate pReadHotWaterTemperature;
HeartBeatDelegate               pHeartBeat;
CrashDumpDelegate               pCrashDump;


EXPORTEDFUNCTION void StartEmulatedHardware(BoardCalls *pCalls)
{
    pRegisterForTimer           = pCalls->pRegisterForTimer;
    pEnableTimer                = pCalls->pEnableTimer;
    pGetRtc                     = pCalls->pGetRtc;
    pSetRtc                     = pCalls->pSetRtc;
    pWriteDisplayBuffer         = pCalls->pWriteDisplayBuffer;
    pGetWaitingKeys             = pCalls->pGetWaitingKeys;
    pGetInputPortValues         = pCalls->pGetInputPortValues;
    pSetOutputPortValues        = pCalls->pSetOutputPortValues;
    pReadHotWaterTemperature    = pCalls->pReadHotWaterTemperature;
    pHeartBeat                  = pCalls->pHeartBeat;
    pCrashDump                  = pCalls->pCrashDump;

    UserProgram();
}
