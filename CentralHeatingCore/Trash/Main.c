#include "HardwareAbstraction.h"
#include "LcdDisplay.h"
#include "89C51Board.h"


#include "Rtc1307.h"
#include "StringUtils.h"

void TempProg();


void SimpleCentralHeating();
             


#define SCREEN_BUFFER_SIZE  32



void TempProg()
{
    long delay;
    DateTimeStruct dt;
    char strBuf[10];

    dt.year = 12;
    dt.month = 1;
    dt.day = 10;
    dt.dayOfWeek = 0;
    dt.hours = 23;
    dt.minutes = 20;
    dt.seconds = 3;
            
    if (!Rtc_WriteClock(&dt))
    {
        pCrashDump("Cannot Write RTC");
    }       

    while (1)
    {
        for (delay = 0; delay < 1000; ++delay)
        {
            ;
        }
        
        if (!Rtc_ReadClock(&dt))
        {
            pCrashDump("Cannot Read RTC");
        } 

        strBuf[0] = (dt.hours / 10) + '0';
        strBuf[1] = (dt.hours % 10) + '0';
        strBuf[2] = ':';
        strBuf[3] = (dt.minutes / 10) + '0';
        strBuf[4] = (dt.minutes % 10) + '0';
        strBuf[5] = ':';
        strBuf[6] = (dt.seconds / 10) + '0';
        strBuf[7] = (dt.seconds % 10) + '0';
        strBuf[8] = 0;

        pWriteDisplayBuffer(strBuf);
        
    }

    
    

}


