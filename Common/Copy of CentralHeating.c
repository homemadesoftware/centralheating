#define _CRT_SECURE_NO_WARNINGS
#include "../Common/HardwareAbstraction.h"
#include "../Common/MenuMgr.h"
#include "../Common/CentralHeatingMenus.h"
#include "../Common/StringUtils.h"




#define SCREEN_BUFFER_SIZE  32

// Timer cookies
#define RTCUPDATECOOKIE		1
#define READKEYSCOOKIE		2
#define PROCESSHEATING  	3
#define SCREENACTIVITY   	4
#define OUTPUTSTEPBYSTEP 	5



// Screen constants
#define SCREEN_HOME         1
#define SCREEN_SETDATE      2
#define SCREEN_SETTIME      3
#define SCREEN_OUTPUTTEST   4


// CH output constants
// Output 0 -> Not used
#define OUTPUT_BOILER_ON    0x2
#define OUTPUT_PUMP_ON      0x4
#define OUTPUT_ZONE1_ON     0x8
#define OUTPUT_ZONE2_ON     0x10
#define OUTPUT_ZONE3_ON     0x20
#define OUTPUT_ZONE4_ON     0x40
#define OUTPUT_ZONE5_ON     0x80
    

// Globals
unsigned char screenBuffer[SCREEN_BUFFER_SIZE + 1];
int lastKeys;
int currentScreen;
int flashDateTime;
int animationPos;
unsigned char targetOutput;
unsigned char lastOutput;
unsigned char stepByStepMask;



// Helpers
void DisplayMenuOnHardware();
void HandleMenuCommand(int menuItem, int eventType);
void PartialWriteToScreen(int screenPosition, int maxLen, char *information);
void ClearTopLine();
int GetNumDaysInMonth(DateTimeStruct* dt);
void PreviewDateAdjustment();
void PreviewTimeAdjustment();
void TestAndDisplay(char *description, unsigned char output);
void WriteCurrentTime();
void AnimateScreen();
void ProcessHeating();
void SetOutputStepByStep();


void STDCALL UserProgram()
{
	int i;

    
	// First time initialisation
    // Initialise globals
    lastKeys = 0;
    currentScreen = 0;
    flashDateTime = 0;
    animationPos = 0;
    targetOutput = 0;
    lastOutput = 0;
    stepByStepMask = 0;

    
    // Stuff screen with blanks
	for (i = 0; i < SCREEN_BUFFER_SIZE; ++i)
    {
        screenBuffer[i] = '-';
    }

    pWriteDisplayBuffer(screenBuffer);

    
    // Reset to home screen
    currentScreen = SCREEN_HOME;

    
	// Do the registrations
    pRegisterForTimer(RTCUPDATECOOKIE, 400, Callback);
    pRegisterForTimer(READKEYSCOOKIE, 50, Callback);
	pRegisterForTimer(PROCESSHEATING, 1000, Callback);
    pRegisterForTimer(SCREENACTIVITY, 100, Callback);
	pRegisterForTimer(OUTPUTSTEPBYSTEP, 100, Callback);

    // Init menu defs
    BuildCentralHeatingMenuDefinitions();

    
    InitialiseMenuController();
    DisplayMenuOnHardware();
    
    
}


void STDCALL Callback(int cookie)
{
	int keys;
    
    switch (cookie)
    {
       case RTCUPDATECOOKIE :
           if (currentScreen == SCREEN_HOME)
           {
		       WriteCurrentTime();
           }
           else if (currentScreen == SCREEN_SETDATE)
           {
               if (flashDateTime)
               {
                    ClearTopLine();
                    flashDateTime = 0;
               }
               else
               {
                   PreviewDateAdjustment(); 
                   flashDateTime = 1;
               }
               
           }
           else if (currentScreen == SCREEN_SETTIME)
           {
               if (flashDateTime)
               {
                    ClearTopLine();
                    flashDateTime = 0;
               }
               else
               {
                    PreviewTimeAdjustment();
                    flashDateTime = 1;
               }
           }
           break;

       case READKEYSCOOKIE :
           pGetKeyState(&keys);
           if (keys != lastKeys)
           {
               lastKeys = keys;
               if (keys == 1)
               {
                   // L key pressed
                   MenuNavigation(NAVTYPE_LEFT);
               }
               else if (keys == 2)
               {
                   MenuNavigation(NAVTYPE_SELECTITEM);
               }
               else if (keys == 3)
               {
                   MenuNavigation(NAVTYPE_RIGHT);
               }
               DisplayMenuOnHardware();
           }
           break;

	   case PROCESSHEATING :
           if (currentScreen != SCREEN_OUTPUTTEST)
           {
               ProcessHeating();
           }
       	   break;

       case SCREENACTIVITY :
           if (currentScreen == SCREEN_HOME)
           {
               AnimateScreen();
           }
           break;

	   case OUTPUTSTEPBYSTEP :
	   	   SetOutputStepByStep();
		   break;
    }
}

 

void DisplayMenuOnHardware()
{
    // Renders the menu on the buffer, included scrolling
    char buffer[SCREEN_BUFFER_SIZE / 2 + 1];
    int i, j;

    RenderMenuOnBuffer(buffer, SCREEN_BUFFER_SIZE / 2);
    
    j = 0;
    for (i = 0; i < SCREEN_BUFFER_SIZE / 2; ++i)
    {
        if (buffer[j] != 0)
        {
            screenBuffer[i + SCREEN_BUFFER_SIZE / 2] = buffer[j++];
        }
        else
        {
            screenBuffer[i + SCREEN_BUFFER_SIZE / 2] = ' ';
        }
    }

    

    pWriteDisplayBuffer(screenBuffer);    

    
}

void PartialWriteToScreen(int screenPosition, int maxLen, char *information)
{
    char *p = information;
    int i;
    for (i = screenPosition; i < (screenPosition + maxLen); ++i)
    {
        if (*p == 0)
        {
            screenBuffer[i] = ' ';
        }
        else
        {
            screenBuffer[i] = *p;
            ++p;
        }
    }
    pWriteDisplayBuffer(screenBuffer);    
}

void ClearTopLine()
{
    PartialWriteToScreen(0, 16, "");
}

void HandleMenuCommand(int menuItem, int eventType)
{
    DateTimeStruct dt;
    switch (menuItem)
    {
        case MENUID_SETDATE :
            if (eventType == MENU_SUBMENUENTER)
            {
                currentScreen = SCREEN_SETDATE;
                flashDateTime = 0;
                ClearTopLine();
            }
            else if (eventType == MENU_SUBMENUEXIT)
            {
                currentScreen = SCREEN_HOME;
                ClearTopLine();
            }
            break;

        case MENUID_SETTIME :
            if (eventType == MENU_SUBMENUENTER)
            {
                currentScreen = SCREEN_SETTIME;
                flashDateTime = 0;
                ClearTopLine();
            }
            else if (eventType == MENU_SUBMENUEXIT)
            {
                currentScreen = SCREEN_HOME;
                ClearTopLine();
            }
            break;

        case MENUID_ADDDAY :
            if (eventType == MENU_COMMAND)
            {
                pGetRtc(&dt);
                if (dt.day == GetNumDaysInMonth(&dt))
                {
                    break;
                }
                dt.day++;
                pSetRtc(&dt);
                flashDateTime = 0;
                PreviewDateAdjustment();
            }
            break;

        case MENUID_SUBDAY :
            if (eventType == MENU_COMMAND)
            {
                pGetRtc(&dt);
                if (dt.day == 1)
                {
                    break;
                }
                dt.day--;
                pSetRtc(&dt);
                flashDateTime = 0;
                PreviewDateAdjustment();
            }
            break;

        case MENUID_ADDMONTH :
            if (eventType == MENU_COMMAND)
            {
                pGetRtc(&dt);
                if (dt.month == 12)
                {
                    break;
                }
                dt.month++;
                pSetRtc(&dt);
                flashDateTime = 0;
                PreviewDateAdjustment();
            }
            break;

        case MENUID_SUBMONTH :
            if (eventType == MENU_COMMAND)
            {
                pGetRtc(&dt);
                if (dt.month == 1)
                {
                    break;
                }
                dt.month--;
                pSetRtc(&dt);
                flashDateTime = 0;
                PreviewDateAdjustment();
            }
            break;

        case MENUID_ADDYEAR :
            if (eventType == MENU_COMMAND)
            {
                pGetRtc(&dt);
                if (dt.year == 50)
                {
                    break;
                }
                dt.year++;
                pSetRtc(&dt);
                flashDateTime = 0;
                PreviewDateAdjustment();
            }
            break;

        case MENUID_SUBYEAR :
            if (eventType == MENU_COMMAND)
            {
                pGetRtc(&dt);
                if (dt.year == 10)
                {
                    break;
                }
                dt.year--;
                pSetRtc(&dt);
                flashDateTime = 0;
                PreviewDateAdjustment();
            }
            break;

        
        case MENUID_ADDMINUTE :
            if (eventType == MENU_COMMAND)
            {
                pGetRtc(&dt);
                if (dt.minutes == 59)
                {
                    dt.minutes = 0;
                }
                else
                {
                    dt.minutes++;
                }
                pSetRtc(&dt);
                flashDateTime = 0;
                PreviewTimeAdjustment();
            }
            break;

        case MENUID_SUBMINUTE :
            if (eventType == MENU_COMMAND)
            {
                pGetRtc(&dt);
                if (dt.minutes == 0)
                {
                    dt.minutes = 59;
                }
                else
                {
                    dt.minutes--;
                }
                pSetRtc(&dt);
                flashDateTime = 0;
                PreviewTimeAdjustment();
            }
            break;


        case MENUID_ADDHOUR :
            if (eventType == MENU_COMMAND)
            {
                pGetRtc(&dt);
                if (dt.hours == 23)
                {
                    dt.hours = 0;
                }
                else
                {
                    dt.hours++;
                }
                pSetRtc(&dt);
                flashDateTime = 0;
                PreviewTimeAdjustment();
            }
            break;

        case MENUID_SUBHOUR :
            if (eventType == MENU_COMMAND)
            {
                pGetRtc(&dt);
                if (dt.hours == 0)
                {
                    dt.hours = 23;
                }
                else
                {
                    dt.hours--;
                }
                pSetRtc(&dt);
                flashDateTime = 0;
                PreviewTimeAdjustment();
            }
            break;

        case MENUID_RESETSEC :
            if (eventType == MENU_COMMAND)
            {
                pGetRtc(&dt);
                dt.seconds = 0;
                pSetRtc(&dt);
                flashDateTime = 0;
                PreviewTimeAdjustment();
            }
            break;
             
        case MENUID_TESTOUTPUT :
            if (eventType == MENU_SUBMENUENTER)
            {
               currentScreen = SCREEN_OUTPUTTEST;
                ClearTopLine();
                TestAndDisplay("Off", 0);
            }
            else if (eventType == MENU_SUBMENUEXIT)
            {
                currentScreen = SCREEN_HOME;
                ClearTopLine();
            }
            break;
               
        case MENUID_TEST_BOILER :
            if (eventType == MENU_COMMAND)
            {
                TestAndDisplay("Boiler", OUTPUT_BOILER_ON);
            }
            break;

        case MENUID_TEST_PUMP :
            if (eventType == MENU_COMMAND)
            {
                TestAndDisplay("Pump", OUTPUT_PUMP_ON);
            }
            break;

        case MENUID_TEST_ZONE1 :
            if (eventType == MENU_COMMAND)
            {
                TestAndDisplay("Zone 1", OUTPUT_ZONE1_ON);
            }
            break;
        
        case MENUID_TEST_ZONE2 :
            if (eventType == MENU_COMMAND)
            {
                TestAndDisplay("Zone 2", OUTPUT_ZONE2_ON);
            }
            break;

        case MENUID_TEST_ZONE3 :
            if (eventType == MENU_COMMAND)
            {
                TestAndDisplay("Zone 3", OUTPUT_ZONE3_ON);
            }
            break;

		case MENUID_TEST_ZONE4 :
            if (eventType == MENU_COMMAND)
            {
                TestAndDisplay("Zone 4", OUTPUT_ZONE4_ON);
            }
            break;

		case MENUID_TEST_ZONE5 :
            if (eventType == MENU_COMMAND)
            {
                TestAndDisplay("Zone 5", OUTPUT_ZONE5_ON);
            }
            break;
        
        case MENUID_TEST_RESET :
            if (eventType == MENU_COMMAND)
            {
                TestAndDisplay("Reset", 0);
            }
            break;


    }
    
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

void WriteCurrentTime()
{
    char strBuffer[32];
    DateTimeStruct dt;
    pGetRtc(&dt);
    FormatTime(strBuffer, &dt, 0);
    PartialWriteToScreen(11, 5, strBuffer);
}

void PreviewTimeAdjustment()
{
    char strBuffer[32];
    DateTimeStruct dt;
    pGetRtc(&dt);
    FormatTime(strBuffer, &dt, 1);
    PartialWriteToScreen(0, 16, strBuffer);
}

void PreviewDateAdjustment()
{
    char strBuffer[32];
    DateTimeStruct dt;
    pGetRtc(&dt);
    FormatDate(strBuffer, &dt);
    PartialWriteToScreen(0, 16, strBuffer);
}

void TestAndDisplay(char *description, unsigned char output)
{
    PartialWriteToScreen(0, 16, description);
    targetOutput = output;
}


void AnimateScreen()
{
    char strBuffer[32];
    int i;
    for (i = 0; i < 10; ++i)
    {
        if (i == animationPos)
        {
            strBuffer[i] = '*';
        }
        else
        {
            strBuffer[i] = ' ';
        }
    }
    strBuffer[i] = 0;
    animationPos++;
    if (animationPos >= 10)
    {
        animationPos = 0;
    }

    PartialWriteToScreen(0, 10, strBuffer);
}


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

void ProcessHeating()
{
    unsigned char inputs;
    int zones[3];
    int pump;
    int boiler;
    unsigned char output;


    // Look at the status of inputs
    inputs = 0;
    pGetInputPortValues(&inputs);

    // Inp 0 -> Zone 1
    // Inp 1 -> Zone 2
    // Inp 2 -> Zone 3
    zones[0] = inputs & 0x01;
    zones[1] = inputs & 0x02;
    zones[2] = inputs & 0x04;

    if (zones[0] || zones[1] || zones[2])
    {
        pump = 1;
        boiler = 1;
    }
    else
    {
        pump = 0;
        boiler = 0;
    }

	// Output 0 -> Not used
    // Output 1 -> Boiler
    // Output 2 -> Pump
	// Output 3 -> Zone 1 Valve
	// Output 4 -> Zone 2 Valve
	// Output 5 -> Zone 3 Valve

    output = 0;
    if (boiler)
    {
        output |= OUTPUT_BOILER_ON;
    }
    if (pump)
    {
        output |= OUTPUT_PUMP_ON;
    }

	if (zones[0])
	{
		output |= OUTPUT_ZONE1_ON;
	}
	if (zones[1])
	{
		output |= OUTPUT_ZONE2_ON;
	}
	if (zones[2])
	{
		output |= OUTPUT_ZONE3_ON;
	}

	// test output = 0xff;

    if (output != targetOutput)
    {
        targetOutput = output;
	    // The output will be set step by step by the timer, start by bit 1
	    stepByStepMask = 1;
    }
    
}


void SetOutputStepByStep()
{
	// Now turn the bits on/off in a gradual fashion to reduce noise
	// Do until the last output equals new one
    if (targetOutput != lastOutput)
	{
		// Gradually turn it on/off
		lastOutput = (lastOutput & ~stepByStepMask) | (targetOutput & stepByStepMask);
		pSetOutputPortValues(lastOutput);

		// Next time do the next bit, if needed
		stepByStepMask <<= 1; // Shift left by one
		stepByStepMask |= 1; // and turn bit one on

	}
	
}
