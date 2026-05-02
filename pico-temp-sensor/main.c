#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/adc.h"
#include "pico/cyw43_arch.h"

int main(void)
{
    stdio_init_all();
    cyw43_arch_init();

    int heartBeatState = 1;

    while (1)
    {
        printf("Polling");
        sleep_ms(1000);

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
    return 0;
}


void DS18B20_Init(int8_t pin)
{


}


int DS18B20_Read(int8_t pin)
{

}

