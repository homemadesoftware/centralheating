#include "HardwareAbstraction.h"
#include "LcdDisplay.h"
#include "Rtc1307.h"
#include "89C51Board.h"
#include "StringUtils.h"

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


// Various APIs available from the 89C51 board
void Hardware_InitialiseHardware() REENTRANT;
void Hardware_RegisterForTimer(int cookie, int milliSeconds, CallbackDelegate callback) REENTRANT;
void Hardware_EnableTimer(int cookie, int enabled) REENTRANT;
void Hardware_WriteDisplayBuffer(unsigned char*) REENTRANT;
void Hardware_SetRtc(DateTimeStruct* pdts) REENTRANT;
void Hardware_GetRtc(DateTimeStruct* pdts) REENTRANT;
void Hardware_GetKeyState(int *keys) REENTRANT;
void Hardware_GetInputPortValues(unsigned char *pValue) REENTRANT;
void Hardware_SetOutputPortValues(unsigned char value) REENTRANT;
void Hardware_CrashDump(unsigned char* message) REENTRANT;
void Hardware_ScheduleUserCalls() REENTRANT;


// Our timers
typedef struct tagTimerSetup
{
	int cookie;
	int periodMilliseconds;
	int ticksSoFar;
    unsigned char enabled;
    CallbackDelegate callback;
} TimerSetup;

// An array of timers
#define MAX_TIMERS	10
TimerSetup timers[MAX_TIMERS];




// Screen assumptions
#define SCREEN_BUFFER_SIZE  32




// Until we finalise... use this temp program
void SimpleCentralHeating();


void main(void)
{
    CKCON0 = 0x01;						// Initial X2 Mode (BUS Clock = 58.9824 MHz) 
    

    // Initialise hardware calls
    Hardware_InitialiseHardware();

    
    //Uncomment this to switch to simple
    //SimpleCentralHeating();
  

    // Call the program and then loop forever
	UserProgram();

    Hardware_ScheduleUserCalls();

}   


void Hardware_ScheduleUserCalls() REENTRANT
{
    while (1)
	{
		int timerCounter;
        long c;

		for (timerCounter = 0; timerCounter < MAX_TIMERS; ++timerCounter)
		{
			TimerSetup *pTimer = timers + timerCounter;
            if (pTimer->cookie != 0 && pTimer->periodMilliseconds <= pTimer->ticksSoFar && pTimer->enabled)
			{
				// Fire this
				pTimer->ticksSoFar = 0;
                pTimer->callback(pTimer->cookie);
			}
			else
			{
				pTimer->ticksSoFar++;
			}

		}

        for (c = 0; c < 100; ++c)
        {
        }
		
	}
}


void Hardware_InitialiseHardware() REENTRANT
{
    int i;
	
    for (i = 0; i < MAX_TIMERS; ++i)
	{
		timers[i].cookie = 0;
	}

    // Initialise the hardware calls
    pRegisterForTimer = Hardware_RegisterForTimer;
    pEnableTimer = Hardware_EnableTimer;
    pGetRtc = Hardware_GetRtc;
    pSetRtc = Hardware_SetRtc;
    pWriteDisplayBuffer = Hardware_WriteDisplayBuffer;
    pGetKeyState = Hardware_GetKeyState;
    pGetInputPortValues = Hardware_GetInputPortValues;
    pSetOutputPortValues = Hardware_SetOutputPortValues;
    pCrashDump = Hardware_CrashDump;


    // LCD and RTC
    InitialiseLcd();
    Rtc_Initialise();

}

// Registers for a timer callback
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


void Hardware_WriteDisplayBuffer(unsigned char* buffer) REENTRANT
{
    DirectWriteToDisplay(buffer);
}

void Hardware_SetRtc(DateTimeStruct* dts) REENTRANT
{
    Rtc_WriteClock(dts);
}

void Hardware_GetRtc(DateTimeStruct* dts) REENTRANT
{
	Rtc_ReadClock(dts);
}

void Hardware_GetKeyState(int *keys) REENTRANT
{
    unsigned char rowCount, colCount, portValue;

    *keys = 0;
    
    for (rowCount = 0; rowCount < 4; ++rowCount)
    {
        P1 = ~(0x80 >> rowCount) | 0xf;
        for (colCount = 0; colCount < 4; ++colCount)
        {
            portValue = ~P1 & (0x01 << colCount);
            if (portValue)
            {
                *keys = rowCount * 4 + colCount + 1;
                return;
            }
        }
    }
    
}


void Hardware_GetInputPortValues(unsigned char *pValue) REENTRANT
{
    P3 = 0xfC;
    *pValue = P3 & 0x3C;
    *pValue = ~ (*pValue); // This hardware has logic 1 as pulled down
    *pValue &= ~ (0x40); // Do not use zone5

}

void Hardware_SetOutputPortValues(unsigned char value) REENTRANT
{
    P2 = ~value;	
}

void Hardware_CrashDump(unsigned char* message) REENTRANT
{
	unsigned char buffer[SCREEN_BUFFER_SIZE + 1];
    int i;
	for (i = 0; i < SCREEN_BUFFER_SIZE; ++i)
	{
		if (*message != 0)
		{
			buffer[i] = *message;
			++message;
		}
		else
		{
			buffer[i] = ' ';
		}
		
	}

	DirectWriteToDisplay(buffer);
	while (1);
	
}


