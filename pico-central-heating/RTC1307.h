// DS1307 Real time clock
unsigned char Rtc_ReadClock(i2c_inst_t* ic2Port, DateTimeStruct *dateTime);
unsigned char Rtc_WriteClock(i2c_inst_t* ic2Port, DateTimeStruct *dateTime);
	
