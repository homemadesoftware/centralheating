#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/gpio.h"
#include "pico/cyw43_arch.h"
#include "tusb.h" // Add this to check if TinyUSB is even present


void HeartBeat();

void InitPin(uint8_t pin);


void WriteByte(uint8_t pin, uint8_t byte);
uint8_t  ReadByte(uint8_t pin);

void WriteBit1(uint8_t pin);
void WriteBit0(uint8_t pin);
uint8_t ReadBit(uint8_t pin);

bool ResetAndPresence(uint8_t pin);
void PullDown(uint8_t pin);
void Release(uint8_t pin);
uint8_t Sample(uint8_t pin);

int heartBeatState = 1;

int main(void)
{
    stdio_init_all();

    sleep_ms(2000);
    cyw43_arch_init();


    while (true)
    {
        HeartBeat();

        InitPin(0);
        bool found = ResetAndPresence(0);
        if (!found)
        {
            printf("NOT Found\r");
        }

        WriteByte(0, 0xcc); // skip ROM
        WriteByte(0, 0x44); // start conversion

        sleep_ms(800);

        found = ResetAndPresence(0);
        if (!found)
        {
            printf("NOT Found\r");
            continue;
        }

        WriteByte(0, 0xcc); // skip ROM
        WriteByte(0, 0xbe); // read scratchpad

        uint8_t lower = ReadByte(0);
        uint8_t upper = ReadByte(0);

        int16_t raw = (upper << 8) | lower;
        float celsius = raw / 16.0f;

        printf("Raw: %02x%02x | Temp: %.2f C\n", upper, lower, celsius);
    }

    return 0;
}


void InitPin(uint8_t pin)
{
    gpio_init(pin);
    gpio_disable_pulls(pin);
}


bool ResetAndPresence(uint8_t pin)
{
    // Start by pulling down for at least 480us
    PullDown(pin);
    sleep_us(480);
    Release(pin);

    // Wait at least 60us before the DS18B20 responds. The pulse will be up to 240.
    // If we check in between we are good
    sleep_us(60);
    int sample = Sample(pin);

    // Keep waiting to make it up to 480
    sleep_us(420);

    return sample == 0;
}

void WriteByte(uint8_t pin, uint8_t byte)
{
    for (int8_t i = 0; i < 8; ++i)
    {
        uint8_t bit = (byte & 0x1);
        if (bit)
        {
            WriteBit1(pin);
        }
        else
        {
            WriteBit0(pin);
        }
        byte >>= 1;
    }

}

uint8_t ReadByte(uint8_t pin)
{
    uint8_t accumulated = 0;
    for (int8_t i = 0; i < 8; ++i)
    {
        accumulated >>= 1;
        uint8_t bit = ReadBit(pin);
        if (bit)
        {
            accumulated |= 0x80;
        }
    }
    return accumulated;
}

void WriteBit0(uint8_t pin)
{
    // Hold at least 60us
    PullDown(pin);
    sleep_us(60);
    // Then release
    Release(pin);

    // wait at least 1us for next operation
    sleep_us(1);
}


void WriteBit1(uint8_t pin)
{
    // Pull down then release within 15us
    PullDown(pin);
    sleep_us(10);
    // Then release
    Release(pin);
    // Continue to keep released for to make the whole cycle at least 60us
    sleep_us(50);

    // wait at least 1us for next operation
    sleep_us(1);
}


uint8_t ReadBit(uint8_t pin)
{
    // Start by pulling down for a minimum of 1us
    PullDown(pin);
    sleep_us(2);
    Release(pin);

    // Wait until we are 10us into it
    sleep_us(8);
    int value = Sample(pin);

    // Wait 50 us to achieve total of 60
    sleep_us(50);

    // wait at least 1us for next operation
    sleep_us(1);

    return value;
}



void PullDown(uint8_t pin)
{
    gpio_set_dir(pin, GPIO_OUT);
    gpio_put(pin, 0);
}


void Release(uint8_t pin)
{
    gpio_set_dir(pin, GPIO_IN);
}


uint8_t Sample(uint8_t pin)
{
    return gpio_get(pin);
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