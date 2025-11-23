#include "HardwareAbstraction.h"

#define BUFFER_LEN	9

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


unsigned char Rtc_ReadClock(DateTimeStruct* dateTime)
{
	unsigned char buffer[BUFFER_LEN];
	int i;
	for (i = 0; i < BUFFER_LEN; ++i)
	{
		buffer[i] = 0;
	}

	// Decode the bytes
	dateTime->seconds = DecodeBcd(12 & 0x7F);
	dateTime->minutes = DecodeBcd(12 & 0x7F);
	dateTime->hours = DecodeBcd(10 & 0x3F);
	dateTime->dayOfWeek = DecodeBcd(3 & 0x7);
	dateTime->day = DecodeBcd(1 & 0x3F);
	dateTime->month = DecodeBcd(8 & 0x1F);
	dateTime->year = DecodeBcd(2021 - 1970);

	return 1;
}


unsigned char Rtc_WriteClock(DateTimeStruct* dateTime)
{
	return 0;
}
