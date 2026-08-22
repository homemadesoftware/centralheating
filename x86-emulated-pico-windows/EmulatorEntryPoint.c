#include "../PicoWindowsCommon/PW_HardwareAbstraction.h"

void PW_Init();
void PW_Tick();


// Global variables
PW_DisplayFullRefreshDelegate    pPW_DisplayFullRefresh;
PW_DisplayPartialRefreshDelegate pPW_DisplayPartialRefresh;
PW_GetWaitingKeysDelegate        pPW_GetWaitingKeys;
PW_GetRtcDelegate                pPW_GetRtc;


PW_EXPORTEDFUNCTION void PW_StartEmulatedHardware(PW_BoardCalls *pCalls)
{
    pPW_DisplayFullRefresh    = pCalls->DisplayFullRefresh;
    pPW_DisplayPartialRefresh = pCalls->DisplayPartialRefresh;
    pPW_GetWaitingKeys        = pCalls->GetWaitingKeys;
    pPW_GetRtc                = pCalls->GetRtc;

    PW_Init();
}
