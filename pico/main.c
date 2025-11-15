#include <stdlib.h>
#include "pico/stdlib.h"
#include "pico/bootrom.h"
#include "pico/multicore.h"

// E-paper
#include "EPD_2in13_V3.h"
#include "GUI_Paint.h"
#include "Debug.h"

int test(void);
void check_reboot_button();

int main()
{
    stdio_init_all();

    // Separate RTOS-style non-blocking reboot thread
    multicore_launch_core1(check_reboot_button);

    DEV_Delay_ms(500);
    test();
    
    return 0;
}

int test(void)
{
    printf("EPD_2in13_V3_test Demo\r\n");
    if (DEV_Module_Init() != 0) {
        return -1;
    }

    printf("e-Paper Init and Clear...\r\n");
    EPD_2in13_V3_Init();
    EPD_2in13_V3_Clear();

    //Create a new image cache
    UBYTE* BlackImage;
    UWORD Imagesize = ((EPD_2in13_V3_WIDTH % 8 == 0) ? (EPD_2in13_V3_WIDTH / 8) : (EPD_2in13_V3_WIDTH / 8 + 1)) * EPD_2in13_V3_HEIGHT;
    if ((BlackImage = (UBYTE*)malloc(Imagesize)) == NULL) {
        printf("Failed to apply for black memory...\r\n");
        return -1;
    }
    
    printf("Paint_NewImage\r\n");
    Paint_NewImage(BlackImage, EPD_2in13_V3_WIDTH, EPD_2in13_V3_HEIGHT, 90, WHITE);
    Paint_Clear(WHITE);
    DEV_Delay_ms(500);

#define FONT Font24
#define TEXT_X 0
#define TEXT_Y 30
    Paint_DrawString_EN(TEXT_X, TEXT_Y,
        "Ali is cool", &FONT, WHITE, BLACK);
    Paint_DrawString_EN(TEXT_X, TEXT_Y + FONT.Height,
        "   >:-)    ", &FONT, WHITE, BLACK);

    printf("Partial refresh\r\n");
    Paint_SelectImage(BlackImage);

    PAINT_TIME sPaint_time;
    sPaint_time.Hour = 12;
    sPaint_time.Min = 34;
    sPaint_time.Sec = 56;
    
    UBYTE num = 100;
    while (num > 0)
    {
        sPaint_time.Sec = sPaint_time.Sec + 1;
        if (sPaint_time.Sec == 60) {
            sPaint_time.Min = sPaint_time.Min + 1;
            sPaint_time.Sec = 0;
            if (sPaint_time.Min == 60) {
                sPaint_time.Hour = sPaint_time.Hour + 1;
                sPaint_time.Min = 0;
                if (sPaint_time.Hour == 24) {
                    sPaint_time.Hour = 0;
                    sPaint_time.Min = 0;
                    sPaint_time.Sec = 0;
                }
            }
        }

#define TIME_X_START 0
#define TIME_Y_START 0

        Paint_ClearWindows(
            TIME_X_START,
            TIME_Y_START,
            TIME_X_START + FONT.Width * 7,
            TIME_Y_START + FONT.Height,
            WHITE);
        Paint_DrawTime(TIME_X_START, TIME_Y_START, &sPaint_time, &FONT, WHITE, BLACK);

        num--;
        EPD_2in13_V3_Display_Partial(BlackImage);
        DEV_Delay_ms(500);//Analog clock 1s
    }

    printf("Clear...\r\n");
    EPD_2in13_V3_Init();
    EPD_2in13_V3_Clear();

    printf("Goto Sleep...\r\n");
    EPD_2in13_V3_Sleep();
    free(BlackImage);
    BlackImage = NULL;
    DEV_Delay_ms(2000);//important, at least 2s
    // close 5V
    printf("close 5V, Module enters 0 power consumption ...\r\n");
    DEV_Module_Exit();
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