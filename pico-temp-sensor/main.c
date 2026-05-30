#include <stdio.h>
#include "pico/stdlib.h"
#include "DS18B20.h"
#include "pico/cyw43_arch.h"


void HeartBeat();

int heartBeatState = 1;


// Temp sensor
#define DS18B20_PIN 0


// Tortouse GPIO pins
#define TORTOISE_CLOCK_PIN 1
#define TORTOISE_DATA_PIN  2

int main(void)
{
    stdio_init_all();

    sleep_ms(2000);
    cyw43_arch_init();


    while (true)
    {
        HeartBeat();

        int16_t raw = GetTemperatureReading(DS18B20_PIN);
        TransmitTemperatureValue(TORTOISE_CLOCK_PIN, TORTOISE_DATA_PIN, raw);
        
        float celsius = raw / 16.0f;
        printf("Temp: %.2f C\n", celsius);
    }

    return 0;
}


void HeartBeat()
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
