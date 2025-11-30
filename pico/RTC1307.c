#include "HardwareAbstraction.h"
#include "RTC1307.h"
#include "pico/stdlib.h"
#include "hardware/i2c.h"

#define I2C_CONTROLLER  i2c1
#define SDA_PIN  6
#define SCL_PIN  7

#define DS1307ADDRESS	(0b1101000)
#define BUFFER_LEN	9

void Rtc_Initialise()
{
	i2c_init(i2c1, 100000);

	gpio_set_function(SDA_PIN, GPIO_FUNC_I2C);
	gpio_set_function(SCL_PIN, GPIO_FUNC_I2C);

	gpio_pull_up(SDA_PIN);
	gpio_pull_up(SCL_PIN);
}

unsigned char EncodeAsBcd(unsigned char value)
{
	unsigned char result = ((value % 10) & 0xf);
	result |= ((value / 10) & 0xf) << 4;
	return result;
}

unsigned char DecodeBcd(unsigned char value)
{
	return (10 * ((value & 0xf0) >> 4)) + (value & 0xf);
}

unsigned char Rtc_ReadClock(DateTimeStruct *dateTime)
{
	unsigned char buffer[BUFFER_LEN];
    int i;
    for (i = 0; i < BUFFER_LEN; ++i)
    {
        buffer[i] = 0;
    }

    // Set the data pointer to 0 by sending a single byte
	i2c_write_blocking(I2C_CONTROLLER, DS1307ADDRESS, buffer, 1, true);

	// Now read back
    if (!i2c_read_blocking(I2C_CONTROLLER, DS1307ADDRESS, buffer, 7, true))
	{
		return 0;
	}
    
	// Decode the bytes
	dateTime->seconds = DecodeBcd(buffer[0] & 0x7F);
	dateTime->minutes = DecodeBcd(buffer[1] & 0x7F);
	dateTime->hours = DecodeBcd(buffer[2] & 0x3F);
	dateTime->dayOfWeek = DecodeBcd(buffer[3] & 0x7);
	dateTime->day = DecodeBcd(buffer[4] & 0x3F);
	dateTime->month = DecodeBcd(buffer[5] & 0x1F);
	dateTime->year = DecodeBcd(buffer[6]);

	return 1;
}


unsigned char Rtc_WriteClock(DateTimeStruct *dateTime)
{
	// Convert it all to a buffer
	unsigned char buffer[BUFFER_LEN];
    buffer[0] = 0;
	buffer[1] = EncodeAsBcd(dateTime->seconds) & 0x7F; // Also clear CH
	buffer[2] = EncodeAsBcd(dateTime->minutes) & 0x7F;
	buffer[3] = (EncodeAsBcd(dateTime->hours) & 0x7F) | 0x80; // 24 hour
	buffer[4] = EncodeAsBcd(dateTime->dayOfWeek) & 0x7;
	buffer[5] = EncodeAsBcd(dateTime->day) & 0x3F;
	buffer[6] = EncodeAsBcd(dateTime->month) & 0x1F;
	buffer[7] = EncodeAsBcd(dateTime->year);
    //buffer[7] = 0; // Control register

	return i2c_write_blocking(I2C_CONTROLLER, DS1307ADDRESS, buffer, 8, true);
}
	

