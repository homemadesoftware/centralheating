// DS1307 Real time clock
void Rtc_Initialise();
unsigned char Rtc_ReadClock(DateTimeStruct *dateTime);
unsigned char Rtc_WriteClock(DateTimeStruct *dateTime);
	
