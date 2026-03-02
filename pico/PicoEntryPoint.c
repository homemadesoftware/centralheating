#include <stdlib.h>
#include "pico/stdlib.h"
#include "pico/bootrom.h"
#include "pico/multicore.h"

// E-paper
#include "EPD_2in13_V3.h"
#include "GUI_Paint.h"
#include "Debug.h"

void check_reboot_button();


#include "HardwareAbstraction.h"
#include "StringUtils.h"
#include "Display.h"
#include "i2c.h"
#include "Rtc1307.h"
#include "KeyMatrix.h"
#include "IoExpander.h"
#include "ButtonPad.h"
 
// User program is provided at link time
void UserProgram();

// Globals declared here
RegisterForTimerDelegate    pRegisterForTimer;
EnableTimerDelegate         pEnableTimer;
GetRtcDelegate              pGetRtc;
SetRtcDelegate              pSetRtc;
WriteDisplayBufferDelegate  pWriteDisplayBuffer;
GetKeyStateDelegate         pGetKeyState;
GetInputPortValuesDelegate  pGetInputPortValues;
SetOutputPortValuesDelegate pSetOutputPortValues;
CrashDumpDelegate           pCrashDump;

// Forwward declare various APIs available from this board
void Hardware_InitialiseHardware();
void Hardware_RegisterForTimer(int cookie, int milliSeconds, CallbackDelegate callback);
void Hardware_EnableTimer(int cookie, int enabled);
void Hardware_WriteDisplayBuffer(unsigned char*);
void Hardware_SetRtc(DateTimeStruct* pdts);
void Hardware_GetRtc(DateTimeStruct* pdts);
void Hardware_GetKeyState(int* keys);
void Hardware_GetInputPortValues(unsigned char* pValue);
void Hardware_SetOutputPortValues(unsigned char value);
void Hardware_CrashDump(unsigned char* message);
void Hardware_ScheduleUserCalls();


// currently selected/used i2c port
i2c_inst_t* i2cPort;

int main()
{
    stdio_init_all();
    
    DEV_Module_Init();

    PicoCH_InitialiseDisplay();

    i2cPort = InitialiseI2C(1, 10000);

    IoExpander_Initialise(i2cPort);

    KeyMatrix_Init();
    
    // Initialise the hardware calls
    pRegisterForTimer = Hardware_RegisterForTimer;
    pEnableTimer =Hardware_EnableTimer;
    pGetRtc = Hardware_GetRtc;
    pSetRtc = Hardware_SetRtc;
    pWriteDisplayBuffer = Hardware_WriteDisplayBuffer;
    pGetKeyState = Hardware_GetKeyState;
    pGetInputPortValues = Hardware_GetInputPortValues;
    pSetOutputPortValues = Hardware_SetOutputPortValues;
    pCrashDump = Hardware_CrashDump;

    UserProgram();

    Hardware_ScheduleUserCalls();

    return 0;

}

void Hardware_CrashDump(unsigned char* message) REENTRANT
{
    PicoCH_DirectWriteToDisplay(message);
    while (1);
}

void Hardware_GetInputPortValues(unsigned char* pValue) REENTRANT
{
    *pValue = 0;
}

void Hardware_SetOutputPortValues(unsigned char value) REENTRANT
{
    IoExpander_Write(i2cPort, value);
}

void Hardware_SetRtc(DateTimeStruct* dts) REENTRANT
{
    Rtc_WriteClock(i2cPort, dts);
}

void Hardware_GetRtc(DateTimeStruct* dts) REENTRANT
{
    Rtc_ReadClock(i2cPort, dts);
}

void Hardware_GetKeyState(int* keys)
{
    //KeyMatrix_Read(keys);
    ButtonPad_ReadKeys(i2cPort, keys);
}

// Our timers
typedef struct tagTimerSetup
{
    int cookie;
    int periodMilliseconds;
    int ticksSoFar;
    unsigned char enabled;
    bool fired;
    CallbackDelegate callback;
} TimerSetup;

// An array of timers
#define MAX_TIMERS	10
TimerSetup timers[MAX_TIMERS];


void Hardware_RegisterForTimer(int cookie, int milliSeconds, CallbackDelegate callback) REENTRANT
{
    int i;

    for (i = 0; i < MAX_TIMERS; ++i)
    {
        if (timers[i].cookie == 0 || timers[i].cookie == cookie)
        {
            timers[i].cookie = cookie;
            timers[i].periodMilliseconds = milliSeconds;
            timers[i].ticksSoFar = 0;
            timers[i].enabled = 1;
            timers[i].callback = callback;
            timers[i].fired = false;
            return;
        }
    }

    pCrashDump("OutOfTimers");

}


void Hardware_EnableTimer(int cookie, int enabled) REENTRANT
{
    int i;
    for (i = 0; i < MAX_TIMERS; ++i)
    {
        if (timers[i].cookie == 0 || timers[i].cookie == cookie)
        {
            timers[i].enabled = enabled;
            return;
        }
    }
}

void Hardware_ScheduleUserCalls()
{
    while (1)
    {
        for (int timerCounter = 0; timerCounter < MAX_TIMERS; ++timerCounter)
        {
            TimerSetup* pTimer = timers + timerCounter;
            pTimer->fired = false;
            if (pTimer->cookie != 0 && pTimer->periodMilliseconds <= pTimer->ticksSoFar && pTimer->enabled)
            {
                // Fire this
                pTimer->ticksSoFar = 0;
                pTimer->fired = true;
            }
            else
            {
                pTimer->ticksSoFar++;
            }
        }

        for (int timerCounter = 0; timerCounter < MAX_TIMERS; ++timerCounter)
        {
            TimerSetup* pTimer = timers + timerCounter;
            if (pTimer->fired)
            {
                pTimer->callback(pTimer->cookie);
            }
        }

        sleep_ms(1);
    }
}

void Hardware_WriteDisplayBuffer(unsigned char* buffer) REENTRANT
{
    PicoCH_DirectWriteToDisplay(buffer);
}
