#include <stdio.h>
#include "pico/stdlib.h"


#define TORTOISE_FRAME_START (0x7f)


void InitOutputPin(uint8_t pin);
void TransmitByte(uint8_t clockPin, uint8_t dataPin, uint8_t value);
void TransmitBit(uint8_t clockPin, uint8_t dataPin, uint8_t bit);


void TransmitTemperatureValue(uint8_t clockPin, uint8_t dataPin, int16_t rawValue)
{
    InitOutputPin(clockPin);
    InitOutputPin(dataPin);

    // Start the frame by two sentinels
    TransmitByte(clockPin, dataPin, TORTOISE_FRAME_START);
    TransmitByte(clockPin, dataPin, TORTOISE_FRAME_START);

    // Then data
    TransmitByte(clockPin, dataPin, rawValue);
    TransmitByte(clockPin, dataPin, (rawValue >> 8) & 0xf);
}


void InitOutputPin(uint8_t pin)
{
    gpio_init(pin);
    gpio_set_dir(pin, GPIO_OUT);
    gpio_put(pin, 0);
}

void TransmitByte(uint8_t clockPin, uint8_t dataPin, uint8_t value)
{
    for (uint8_t i = 0; i < 8; ++i)
    {
        uint8_t bit = value & 0x01;
        TransmitBit(clockPin, dataPin, bit);
        value >>= 1;
    }
    
}

void TransmitBit(uint8_t clockPin, uint8_t dataPin, uint8_t bit)
{
    // pull the data up
    gpio_put(dataPin, bit);
    // Sleep a little for settling
    sleep_ms(10);

    // Toggle clock for a while, the receiver will detect the rising edge and will have 10ms to read.
    gpio_put(clockPin, 1);
    sleep_ms(10);
    gpio_put(clockPin, 0);

    // Pull data down in any case.
    gpio_put(dataPin, 0);

    // Delay before the next transmission
    sleep_ms(10);
}
