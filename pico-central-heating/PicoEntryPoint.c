#include <stdlib.h>
#include "pico/stdlib.h"
#include "pico/bootrom.h"
#include "pico/multicore.h"
#include "pico/cyw43_arch.h"

// E-paper
#include "EPD_2in13_V3.h"
#include "GUI_Paint.h"
#include "Debug.h"

// network io - push udp
#include "network_io.h"

#define WIFI_SSID       "You will be hacked"
#define WIFI_PASSWORD   ""
#define UDP_PORT        12345



#include "HardwareAbstraction.h"
#include "StringUtils.h"
#include "Display.h"
#include "i2c.h"
#include "Rtc1307.h"
#include "KeyMatrix.h"
#include "IoExpander.h"
#include "ButtonPad.h"
#include "tortoise_receiver.h"
 
// User program is provided at link time
void UserProgram();

// Globals declared here
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
ReadLastNetworkPacketDelegate   pReadLastNetworkPacket;
SendNetworkPacketDelegate       pSendNetworkPacket;


// Forwward declare various APIs available from this board
void Hardware_RegisterForTimer(int cookie, int milliSeconds, CallbackDelegate callback);
void Hardware_EnableTimer(int cookie, int enabled);
void Hardware_WriteDisplayBuffer(unsigned char*);
void Hardware_SetRtc(DateTimeStruct* pdts);
void Hardware_GetRtc(DateTimeStruct* pdts);
void Hardware_GetWaitingKeys(unsigned char* buffer, unsigned char* readCount);
void Hardware_GetInputPortValues(unsigned char* pValue);
void Hardware_SetOutputPortValues(unsigned char value);
void Hardware_HeartBeat() ;
void Hardware_CrashDump(unsigned char* message);
void Hardware_ReadHotWaterTemperature(float* pfValue);
void Hardware_ScheduleUserCalls();
void Hardware_ReadLastNetworkPacket(unsigned char* buffer, int maxLength);
void Hardware_SendNetworkPacket(unsigned char* buffer);


// currently selected/used i2c port for RTC
i2c_inst_t* i2cPortForIo;
i2c_inst_t* i2cPortForRtc;

bool heartBeatState = true;

NetworkIo networkIo;
void ReceiveDataFromNetwork(const unsigned char* pszDataIn);

int main()
{
    // Hack. Make sure to pull up the outputs first thing
    IoExpander_Pull_Up_Output_On_I2C0_At_Startup();

    stdio_init_all();
    
    DEV_Module_Init();

    cyw43_arch_init();
    
    PicoCH_InitialiseDisplay();

    i2cPortForIo = InitialiseI2C(0, 10000);
    i2cPortForRtc = InitialiseI2C(1, 10000);

    IoExpander_Initialise(i2cPortForIo);

    KeyMatrix_Init();

    Tortoise_StartReceivingTemperatureReadings();

    // Connect to network
    NetworkIo_Init(&networkIo, WIFI_SSID, WIFI_PASSWORD, UDP_PORT, ReceiveDataFromNetwork);
    
    // Initialise the hardware calls
    pRegisterForTimer = Hardware_RegisterForTimer;
    pEnableTimer = Hardware_EnableTimer;
    pGetRtc = Hardware_GetRtc;
    pSetRtc = Hardware_SetRtc;
    pWriteDisplayBuffer = Hardware_WriteDisplayBuffer;
    pGetWaitingKeys = Hardware_GetWaitingKeys;
    pGetInputPortValues = Hardware_GetInputPortValues;
    pSetOutputPortValues = Hardware_SetOutputPortValues;
    pReadHotWaterTemperature = Hardware_ReadHotWaterTemperature;
    pHeartBeat = Hardware_HeartBeat;
    pReadLastNetworkPacket = Hardware_ReadLastNetworkPacket;
    pSendNetworkPacket = Hardware_SendNetworkPacket;
    pCrashDump = Hardware_CrashDump;

    UserProgram();

    Hardware_ScheduleUserCalls();

    return 0;

}

void Hardware_CrashDump(unsigned char* message)
{
    PicoCH_DirectWriteToDisplay(message);
    while (1);
}

void Hardware_GetInputPortValues(unsigned char* pValue)
{
    unsigned char newLayoutReading;

    IoExpander_Read(i2cPortForIo, &newLayoutReading);

    // Map new layout to old layout

// CH output constants
#define INPUT_ZONENC1 (0x01) // not used
#define INPUT_ZONENC2 (0x02) // not used
#define INPUT_ZONE3   (0x04)  // P3_2
#define INPUT_ZONE4   (0x08)  // P3_3, currently not used
#define INPUT_ZONE1   (0x10)  // P3_4
#define INPUT_ZONE2   (0x20)  // P3_5
#define INPUT_ZONE5   (0x40)  // P3_6, currently not used
#define INPUT_ZONE6   (0x80) // busted

    * pValue = 
        ((newLayoutReading & 0x01) ? INPUT_ZONE1 : 0) |
        ((newLayoutReading & 0x02) ? INPUT_ZONE2 : 0) |
        ((newLayoutReading & 0x04) ? INPUT_ZONE3 : 0) |
        ((newLayoutReading & 0x08) ? INPUT_ZONE4 : 0) |
        ((newLayoutReading & 0x10) ? INPUT_ZONE5 : 0);
}

void Hardware_SetOutputPortValues(unsigned char value)
{
    // The outputs are active low
    IoExpander_Write(i2cPortForIo, ~value);
}

void Hardware_SetRtc(DateTimeStruct* dts)
{
    Rtc_WriteClock(i2cPortForRtc, dts);
}

void Hardware_GetRtc(DateTimeStruct* dts)
{
    Rtc_ReadClock(i2cPortForRtc, dts);
}

void Hardware_GetWaitingKeys(unsigned char* buffer, unsigned char* readCount)
{
    ButtonPad_ReadBufferedKeys(i2cPortForIo, buffer, readCount);
}

void Hardware_HeartBeat()
{
    if (heartBeatState)
    {
        cyw43_arch_gpio_put(CYW43_WL_GPIO_LED_PIN, 1); // on
    }
    else
    {
        cyw43_arch_gpio_put(CYW43_WL_GPIO_LED_PIN, 0); // off
    }
    heartBeatState = !heartBeatState;
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


void Hardware_RegisterForTimer(int cookie, int milliSeconds, CallbackDelegate callback)
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


void Hardware_EnableTimer(int cookie, int enabled)
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
                NetworkIo_Poll(&networkIo);
            }
        }

        sleep_ms(1);
        NetworkIo_Poll(&networkIo);
    }
}

void Hardware_WriteDisplayBuffer(unsigned char* buffer)
{
    PicoCH_DirectWriteToDisplay(buffer);
}


void Hardware_ReadHotWaterTemperature(float* pfValue)
{
    if (!Tortoise_GetLatestReading(pfValue))
    {
        *pfValue = -200;
    }
}

void ReceiveDataFromNetwork(const unsigned char* pszDataIn)
{
    printf("%s\n", pszDataIn);
}

void Hardware_ReadLastNetworkPacket(unsigned char* buffer, int maxLength)
{

}

void Hardware_SendNetworkPacket(unsigned char* buffer)
{
    NetworkIo_Send(&networkIo, buffer);
}
