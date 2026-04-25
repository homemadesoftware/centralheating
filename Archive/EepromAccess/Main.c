#include <mcs51\at89c51ed2.h>
#include "LcdDisplay.h"
#include "StringUtils.h"

unsigned char ReadByte(int address)
{
    unsigned char value;
    unsigned char eaSave;

    // Wait whilst the EEPROM is busy
    while (EECON & EEBUSY > 0)
    {
    }

    // Disable interrupts
    eaSave = EA;
    EA = 0;

    // Enable EEPROM
    EECON |= EEE;

    // Read value
    value = *(unsigned char __xdata*)address;

    // Disable it back
    EECON &= ~EEE;

    // Enable interrupts
    EA = eaSave;

    return value;
}

void WriteByte(int address, unsigned char value)
{
    unsigned char eaSave;

    // Wait whilst the EEPROM is busy
    while (EECON & EEBUSY > 0)
    {
    }

    // Disable interrupts
    eaSave = EA;
    EA = 0;
    
    // Enable EEPROM
    EECON |= EEE;

    // Write value
    *(unsigned char __xdata*)address = value;

    // Disable it back
    EECON &= ~EEE;

    // Enable interrupts
    EA = eaSave;
    
}

void main(void)
{
    char c1;
    char c2;
    char buf[10];

    CKCON0 = 0x01;						// Initial X2 Mode (BUS Clock = 58.9824 MHz) 
    InitialiseLcd();

    for (c1 = 'A'; c1 <= 'Z'; ++c1)
    {
        DirectWriteToDisplay("           ");

        WriteByte(0, c1);

        c2 = ReadByte(0);

        UnsignedCharToString(buf, c2);
        DirectWriteToDisplay(buf);
    }
}


