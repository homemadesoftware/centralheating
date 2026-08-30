#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include "../Common/HardwareAbstraction.h"
#include "../Common/DateTime.h"


// Gets the number of days in a month for a given year
int GetNumDaysInMonth(DateTimeStruct* pdt)
{
    int year = pdt->year + 2000;
    switch (pdt->month)
    {
    case 1 :   // Jan
        return 31;
    case 2 :   // Feb
        if ((!(year % 4) && (year % 100)) || !(year % 400))
        {
            return 29;
        }
        else
        {
            return 28;
        }
    case 3 :   // Mar
        return 31;
    case 4 :   // Apr
        return 30;
    case 5 :   // May
        return 31;
    case 6 :   // Jun
        return 30;
    case 7 :   // Jul 
        return 31;
    case 8 :   // Aug
        return 30;
    case 9 :   // Sep
        return 30;
    case 10 :  // Oct
        return 30;
    case 11 :  // Nov
        return 30;
    case 12 :  // Dec
        return 31;
    }
    return -1;
}


void FormatTime(char *buffer, DateTimeStruct *pdt, unsigned char seconds)
{
    buffer[0] = (pdt->hours / 10) + '0';
    buffer[1] = (pdt->hours % 10) + '0';
    buffer[2] = ':';
    buffer[3] = (pdt->minutes / 10) + '0';
    buffer[4] = (pdt->minutes % 10) + '0';
    if (!seconds)
    {
        buffer[5] = 0;
        return;
    }
    buffer[5] = ':';
    buffer[6] = (pdt->seconds / 10) + '0';
    buffer[7] = (pdt->seconds % 10) + '0';
    buffer[8] = 0;
}


void FormatDate(char *buffer, DateTimeStruct *pdt)
{
    buffer[0] = (pdt->day / 10) + '0';
    buffer[1] = (pdt->day % 10) + '0';
    buffer[2] = '/';
    buffer[3] = (pdt->month / 10) + '0';
    buffer[4] = (pdt->month % 10) + '0';
    buffer[5] = '/';
    buffer[6] = (pdt->year / 10) + '0';
    buffer[7] = (pdt->year % 10) + '0';
    buffer[8] = 0;
}


void FormatIso8601DateTime(char *buffer, int size, DateTimeStruct *pdt)
{
    snprintf(buffer, size, "%04d-%02d-%02dT%02d:%02d:%02d",
        pdt->year + 2000, pdt->month, pdt->day,
        pdt->hours, pdt->minutes, pdt->seconds);
}


void AddSecondsToDateTime(DateTimeStruct* pdt, int seconds, DateTimeStruct* result)
{
    int secondsLeft, secondsAdded, secondsToNextMinute, numDays;

    // First copy
    result->day = pdt->day;
    result->dayOfWeek = pdt->dayOfWeek;
    result->hours = pdt->hours;
    result->minutes = pdt->minutes;
    result->month = pdt->month;
    result->seconds = pdt->seconds;
    result->year = pdt->year;
    
    // now advance by seconds paying attention to rollovers
    secondsLeft = seconds;
    while (secondsLeft > 0)
    {
        secondsToNextMinute = 60 - result->seconds;
        secondsAdded = secondsLeft < secondsToNextMinute ? secondsLeft : secondsToNextMinute;
        result->seconds += secondsAdded;
        secondsLeft -= secondsAdded;

        // look for overflows
        if (result->seconds >= 60)
        {
            result->seconds = 0;
            result->minutes++;
            if (result->minutes >= 60)
            {
                result->minutes = 0;
                result->hours++;
                if (result->hours >= 24)
                {
                    result->hours = 0;
                    result->day++;
                    numDays = GetNumDaysInMonth(result);
                    if (result->day > numDays)
                    {
                        result->day = 1;
                        result->month++;
                        if (result->month >= 12)
                        {
                            result->month = 1;
                            result->year++;
                        }
                    }
                }
            }
        }
    }
}

// Returns <0 if dt1<dt2, 0 if they are equal and >0 if dt1>dt2
int CompareDateTime(DateTimeStruct* dt1, DateTimeStruct* dt2)
{
    if (dt1->year == dt2->year)
    {
        if (dt1->month == dt2->month)
        {
            if (dt1->day == dt2->day)
            {
                if (dt1->hours == dt2->hours)
                {
                    if (dt1->minutes == dt2->minutes)
                    {
                        if (dt1->seconds == dt2->seconds)
                        {
                            return 0;
                        }
                        else
                        {
                            return dt1->seconds - dt2->seconds;
                        }
                    }
                    else
                    {
                        return dt1->minutes - dt2->minutes;
                    }
                }
                else
                {
                    return dt1->hours - dt2->hours;
                }
            }
            else
            {
                return dt1->day - dt2->day;
            }
        }
        else
        {
            return dt1->month - dt2->month;
        }
    }
    else
    {
        return dt1->year - dt2->year;
    }
    
}


