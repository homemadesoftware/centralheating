#include "HardwareAbstraction.h"
#include <stdio.h>
#include "pico/stdlib.h"


// GPIO 16 and 17 are used for this
uint8_t assumedClockPin = 16;
uint8_t assumedDataPin = 17;

#define TORTOISE_FRAME_START (0x7f7f)
#define INVALID_VALUE TORTOISE_FRAME_START

uint16_t shiftRegister = 0;
int remainingDataBits = 0;
uint16_t rawValue = INVALID_VALUE;

void SharedHandler();
void HandleIncomingData();
void PushBit(uint8_t bit);

void StartReceivingTemperatureReadings()
{
    gpio_init(assumedClockPin);
    gpio_set_dir(assumedClockPin, GPIO_IN);

    gpio_init(assumedDataPin);
    gpio_set_dir(assumedDataPin, GPIO_IN);

    gpio_add_raw_irq_handler(assumedClockPin, SharedHandler);

    // Enable the interrupt at the GPIO level
    gpio_set_irq_enabled(assumedClockPin, GPIO_IRQ_EDGE_RISE, true);

    // Set the interrupts on
    irq_set_enabled(IO_IRQ_BANK0, true);
}

bool GetLatestReading(float *pfReading)
{
    if (rawValue != INVALID_VALUE)
    {
        *pfReading = ((float)rawValue) / 16.0f;
        return true;
    }
    else
    {
        *pfReading = 123;
        return false;
    }
}

void SharedHandler()
{
    if (gpio_get_irq_event_mask(assumedClockPin) & GPIO_IRQ_EDGE_RISE)
    {
        gpio_acknowledge_irq(assumedClockPin, GPIO_IRQ_EDGE_RISE);
        HandleIncomingData();
    }
}

void HandleIncomingData()
{
    uint8_t bit = gpio_get(assumedDataPin);
    PushBit(bit);
}


// Build a state machine
// Everytime we receive a 16 bit snetinel value, then the next 16 bits is the value.
// The sentinel can re-start at any time
void PushBit(uint8_t bit)
{
    if (remainingDataBits > 0)
    {
        shiftRegister >>= 1;
        shiftRegister |= bit ? 0x8000 : 0;

        --remainingDataBits;

        if (remainingDataBits == 0)
        {
            rawValue = shiftRegister;
            shiftRegister = 0;
        }
    }
    else
    {
        shiftRegister >>= 1;
        shiftRegister |= bit ? 0x8000 : 0;

        if (shiftRegister == TORTOISE_FRAME_START)
        {
            // Sentinel received, Next 16 bits will be data
            remainingDataBits = 16;
            shiftRegister = 0;
        }
    }
}