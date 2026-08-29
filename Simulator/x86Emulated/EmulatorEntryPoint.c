#include <windows.h>
#include "../../Common/HardwareAbstraction.h"

void STDCALL Hardware_GetUptimeSeconds(unsigned long* pValue)
{
    *pValue = (unsigned long)(GetTickCount64() / 1000);
}

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
    ReadLastNetworkPacketDelegate pReadLastNetworkPacket;
    SendNetworkPacketDelegate pSendNetworkPacket;
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
GetUptimeSecondsDelegate        pGetUptimeSeconds;
HeartBeatDelegate               pHeartBeat;
ReadLastNetworkPacketDelegate   pReadLastNetworkPacket;
SendNetworkPacketDelegate       pSendNetworkPacket;
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
    pGetUptimeSeconds           = Hardware_GetUptimeSeconds;
    pHeartBeat                  = pCalls->pHeartBeat;
    pReadLastNetworkPacket      = pCalls->pReadLastNetworkPacket;
    pSendNetworkPacket          = pCalls->pSendNetworkPacket;
    pCrashDump                  = pCalls->pCrashDump;

    UserProgram();
}
