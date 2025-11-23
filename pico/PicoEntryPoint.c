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

// Screen assumptions
#define SCREEN_BUFFER_SIZE  32

void DirectWriteToDisplay(unsigned char* contents);
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


int main()
{
    stdio_init_all();

    // Separate RTOS-style non-blocking reboot thread
    multicore_launch_core1(check_reboot_button);

    DEV_Delay_ms(500);

    printf("EPD_2in13_V3_test Demo\r\n");
    if (DEV_Module_Init() != 0) {
        return -1;
    }

    printf("e-Paper Init and Clear...\r\n");
    EPD_2in13_V3_Init();
    EPD_2in13_V3_Clear();

    DirectWriteToDisplay("Hello World of warcraft");

    return 0;

    // Initialise the hardware calls
    pRegisterForTimer = Hardware_CrashDump;
    pEnableTimer = Hardware_CrashDump;
    pGetRtc = Hardware_CrashDump;
    pSetRtc = Hardware_CrashDump;
    pWriteDisplayBuffer = Hardware_CrashDump;
    pGetKeyState = Hardware_CrashDump;
    pGetInputPortValues = Hardware_CrashDump;
    pSetOutputPortValues = Hardware_CrashDump;
    pCrashDump = Hardware_CrashDump;


    UserProgram();

    return 0;

}



void check_reboot_button()
{
    const uint BUTTON_PIN = 14;

    gpio_init(BUTTON_PIN);
    gpio_set_dir(BUTTON_PIN, GPIO_IN);
    gpio_pull_up(BUTTON_PIN);

    while (true)
    {
        if (gpio_get(BUTTON_PIN) == 0)
        {
            sleep_ms(50); // debounce

            if (gpio_get(BUTTON_PIN) == 0)
            {
                reset_usb_boot(0, 0);  // jumps to BOOTSEL
            }
        }

        sleep_ms(10);
    }
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
