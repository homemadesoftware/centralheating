#include "../Common/HardwareAbstraction.h"
#include "I2C.h"
#include "StringUtils.h"

#define SDA P3_6
#define SCL P3_7



void I2C_Initialise()
{
    SDA = 1;
    SCL = 1;
}

void Delay()
{
    int i;
    for (i = 0; i < 10; ++i)
    {
        
    }
}

void SendStart()
{
    // clock up
    SCL = 1;
    Delay();

    // data going down when SCL is high indicates START
    SDA = 0;
    Delay();

    // clock down, bus busy now
    SCL = 0;
    Delay();

    
}


void SendStop()
{
    // Pull SDA down first so we can make it go up
    SDA = 0;

    SCL = 1;
    Delay();

    // data going up when SCL is high indicates STOP
    SDA = 1;
    Delay();

    // clock remains high, data remains high, bus not busy
}



// Reads the ACK or NACK from the slave
unsigned char ReadAckNack()
{
    unsigned char ack;
    
    // SCL should be low now.
    // pull SDA up, so that the device can pull it down to ACK
    SDA = 1;
    
    // Clock the SCL up
    SCL = 1;
    Delay();

    // Read the SDA.
    // If SDA is down, the device we are talking to has acknowledged
    if (SDA)
    {
        ack = 0;
    }
    else
    {
        ack = 1;
    }

    
    // Leave the clock low, bus busy
    SCL = 0;
    Delay();

    // Leave data low too
    SDA = 0;

    return ack;
}


// Sends a single byte to slave. Returns Ack or Nack (Ack = 1)
unsigned char SendByte(unsigned char byteValue)
{
    unsigned char ack = 0;
    int i;

    for (i = 0; i < 8; ++i)
    {
        // SDA changes when clock is low
        if (byteValue & 0x80)
        {
            SDA = 1;
        }
        else
        {
            SDA = 0;
        }
        Delay();

        SCL = 1;
        Delay();

        
        // SCL goes low again
        SCL = 0;
        Delay();

        // leave SDA low, bus busy
        SDA = 0;
        Delay();

        byteValue <<= 1;
    }

    ack = ReadAckNack();

    return ack;
}

// Reads a single byte
unsigned char RecvByte(unsigned char ack)
{
    unsigned char byteValue;
    unsigned char bitValue;
    int i;

    byteValue = 0;
    
    for (i = 0; i < 8; ++i)
    {
        byteValue <<= 1;

        SDA = 1; // SDA up so we can read it back from the device.
        
        SCL = 0;
        Delay();

        // Pulse
        SCL = 1;
        Delay();

        bitValue = SDA;
        Delay();

        SCL = 0;
        Delay();

        byteValue |= bitValue;
    }

    // Send ACK or NACK
    if (ack)
    {
        SDA = 0;
    }
    else
    {
        SDA = 1;
    }
    
    Delay();

    SCL = 1;
    Delay();

    SCL = 0;
    Delay();

    return byteValue;
}


// Sends address with direction bit
// If gets ACK then returns 1
unsigned char SendAddressWithDirection(unsigned char slaveAddress, unsigned char readFlag)
{
    unsigned char ack;
    
    // Stick the RW bit to the end of the slaveAddress
    slaveAddress <<= 1;
    slaveAddress |= readFlag & 0x01;

    ack = SendByte(slaveAddress);
    return ack;
}


// Recevies an array of bytes from slave at the given address. 
// If no error then returns 1
unsigned char I2C_SendData(unsigned char slaveAddress, unsigned char *byte, int dataLen)
{
    int i = 0;
    unsigned char ack;
    
    SendStart();

    ack = SendAddressWithDirection(slaveAddress, 0);
    if (!ack)
    {
        SendStop();
        return 0;
    }

    for (i = 0; i < dataLen; ++i)
    {
        ack = SendByte(*byte);
        if (!ack)
        {
            SendStop();
            return 0;
        }
        ++byte;
    }

    SendStop();
    return 1;
}

// Receives a number of bytes from slave
// If no error then returns 1
unsigned char I2C_RecvData(unsigned char slaveAddress, unsigned char *pbyte, int dataLen)
{
    int i = 0;
    unsigned char ack;

    SendStart();

    ack = SendAddressWithDirection(slaveAddress, 1);
    if (!ack)
    {
        SendStop();
        return 0;
    }

    for (i = 0; i < dataLen; ++i)
    {
        // Send ACK until the last byte where we send NACK
        ack = (i < dataLen - 1);
        *pbyte = RecvByte(ack);
        ++pbyte;
    }

    SendStop();
    return 1;
}



