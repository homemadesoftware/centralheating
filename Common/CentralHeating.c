#define _CRT_SECURE_NO_WARNINGS
#include "../Common/HardwareAbstraction.h"
#include "../Common/DateTime.h"
#include "../Common/MenuMgr.h"
#include "../Common/CentralHeatingMenus.h"
#include "../Common/StringUtils.h"

#define COMPILED_AT "20260526"


#define SCREEN_BUFFER_SIZE  32

// Timer cookies
#define RTCUPDATECOOKIE		    1
#define READKEYSCOOKIE		    2
#define PROCESSHEATING  	    3
#define SCREENACTIVITY   	    4
#define READKEYSBUFFERCOOKIE    5
#define HEARTBEATCOOKIE         6



// Screen constants
#define SCREEN_HOME         1
#define SCREEN_SETDATE      2
#define SCREEN_SETTIME      3
#define SCREEN_OUTPUTTEST   4


// CH output constants
#define INPUT_ZONENC1 (0x01) // not used
#define INPUT_ZONENC2 (0x02) // not used
#define INPUT_ZONE3   (0x04)  // P3_2
#define INPUT_ZONE4   (0x08)  // P3_3, currently not used
#define INPUT_ZONE1   (0x10)  // P3_4
#define INPUT_ZONE2   (0x20)  // P3_5
#define INPUT_ZONE5   (0x40)  // P3_6, currently not used
#define INPUT_ZONE6   (0x80) // busted


#define OUTPUT_ACTUATOR1   (0x01)
#define OUTPUT_ACTUATOR2   (0x02)
#define OUTPUT_ACTUATOR3   (0x04)
#define OUTPUT_ACTUATOR4   (0x08)
#define OUTPUT_HWACTUATOR  (0x10)
#define OUTPUT_BOILER      (0x20)
#define OUTPUT_ACTUATOR5   (0x40)
#define OUTPUT_ACTUATOR6   (0x80)

#define ANIMATE_INPUTS      (0)
#define ANIMATE_OUTPUTS     (1)
#define ANIMATE_HW          (2)
#define ANIMATE_VERSION     (3)
#define ANIMATE_TEMPERATURE (4)


// The boiler stops the pump 5 minutes after the boiler stops. 
// We need an open valve (HOT WATER) to prevent overheat - 5 minutes and 10 seconds
#define POST_SWITCH_OFF_PUMP_OVERRUN ((5 * 60) + 10) 

    

// Globals
unsigned char screenBuffer[SCREEN_BUFFER_SIZE + 1];
unsigned char lastKeys;
unsigned char currentScreen;
unsigned char flashDateTime;
unsigned char lastInputState;
unsigned char lastOutputState;
unsigned char animationType;
unsigned char hotWaterNeeded;
DateTimeStruct currentDateTime;
DateTimeStruct provideHotwaterUntil;
DateTimeStruct pumpRunOffUntil;


// Helpers
void DisplayMenuOnHardware();
void HandleMenuCommand(int menuItem, int eventType);
void PartialWriteToScreen(int screenPosition, int maxLen, char *information);
void ClearTopLine();
void PreviewDateAdjustment();
void PreviewTimeAdjustment();
void TestAndDisplay(char *description, unsigned char output);
void WriteCurrentTime();
void AnimateScreen();
void ProcessHeating();



void STDCALL UserProgram()
{
	int i;

    
	// First time initialisation
    // Initialise globals
    lastKeys = 0;
    currentScreen = 0;
    flashDateTime = 0;
    lastInputState = 0;
    lastOutputState = 0;
    animationType = ANIMATE_INPUTS;
    
    // Reset the hot water timing
    provideHotwaterUntil.day = 0;
    provideHotwaterUntil.dayOfWeek = 0;
    provideHotwaterUntil.hours = 0;
    provideHotwaterUntil.minutes = 0;
    provideHotwaterUntil.month = 0;
    provideHotwaterUntil.seconds = 0;
    provideHotwaterUntil.year = 0;

    
    // Stuff screen with blanks
	for (i = 0; i < SCREEN_BUFFER_SIZE; ++i)
    {
        screenBuffer[i] = ' ';
    }

    pWriteDisplayBuffer(screenBuffer);

    
    // Reset to home screen
    currentScreen = SCREEN_HOME;

    // Do the registrations
    pRegisterForTimer(RTCUPDATECOOKIE, 400, Callback);

    // Does the hardware support multiple key reads?
    unsigned char keyBufferSupported;
    unsigned char keyBuffer[16];
    pGetWaitingKeys(keyBuffer, &keyBufferSupported);
    if (keyBufferSupported == 0xff)
    {
        // Old school keys
        pRegisterForTimer(READKEYSCOOKIE, 10, Callback);
    }
    else
    {
        // New buffered keys
        pRegisterForTimer(READKEYSBUFFERCOOKIE, 10, Callback);
    }
	
	pRegisterForTimer(PROCESSHEATING, 1000, Callback);
    pRegisterForTimer(SCREENACTIVITY, 1000, Callback);
    pRegisterForTimer(HEARTBEATCOOKIE, 330, Callback);


    // Init menu defs
    BuildCentralHeatingMenuDefinitions();

    
    InitialiseMenuController();
    DisplayMenuOnHardware();
    
    
}


void STDCALL Callback(int cookie)
{
	int keys;
    unsigned char keysBuffer[16];
    unsigned char readCount;
    
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

       case READKEYSBUFFERCOOKIE :
           for (unsigned char i = 0; i < 16; ++i)
           {
               keysBuffer[i] = 0;
           }
           pGetWaitingKeys(keysBuffer, &readCount);
           if (readCount != 0xff)
           {
               for (unsigned char i = 0; i < readCount; ++i)
               {
                   unsigned char keys = keysBuffer[i];
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

       case HEARTBEATCOOKIE: 
           pHeartBeat();
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
        case MENUID_HOTWATER1HR :
            AddSecondsToDateTime(&currentDateTime, 3600, &provideHotwaterUntil);
            break;

        case MENUID_HOTWATERRST :
            provideHotwaterUntil.year = 0;
            break;

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
                TestAndDisplay("Boiler", OUTPUT_BOILER);
            }
            break;

        case MENUID_TEST_ZONE1 :
            if (eventType == MENU_COMMAND)
            {
                TestAndDisplay("Zone 1", OUTPUT_ACTUATOR1);
            }
            break;
        
        case MENUID_TEST_ZONE2 :
            if (eventType == MENU_COMMAND)
            {
                TestAndDisplay("Zone 2", OUTPUT_ACTUATOR2);
            }
            break;

        case MENUID_TEST_ZONE3 :
            if (eventType == MENU_COMMAND)
            {
                TestAndDisplay("Zone 3", OUTPUT_ACTUATOR3);
            }
            break;

		case MENUID_TEST_ZONE4 :
            if (eventType == MENU_COMMAND)
            {
                TestAndDisplay("Zone 4", OUTPUT_ACTUATOR4);
            }
            break;

        case MENUID_TEST_ZONE5:
            if (eventType == MENU_COMMAND)
            {
                TestAndDisplay("Zone 5", OUTPUT_ACTUATOR5);
            }
            break;

        case MENUID_TEST_ZONE6:
            if (eventType == MENU_COMMAND)
            {
                TestAndDisplay("Zone 6", OUTPUT_ACTUATOR6);
            }
            break;

        case MENUID_TEST_HW:
            if (eventType == MENU_COMMAND)
            {
                TestAndDisplay("HW Act", OUTPUT_HWACTUATOR);
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



void WriteCurrentTime()
{
    char strBuffer[10];
    
    pGetRtc(&currentDateTime);
    FormatTime(strBuffer, &currentDateTime, 0);
    PartialWriteToScreen(11, 5, strBuffer);
}


void PreviewTimeAdjustment()
{
    char strBuffer[10];
    DateTimeStruct dt;
    pGetRtc(&dt);
    FormatTime(strBuffer, &dt, 1);
    PartialWriteToScreen(0, 16, strBuffer);
}


void PreviewDateAdjustment()
{
    char strBuffer[10];
    DateTimeStruct dt;
    pGetRtc(&dt);
    FormatDate(strBuffer, &dt);
    PartialWriteToScreen(0, 16, strBuffer);
}


void TestAndDisplay(char *description, unsigned char output)
{
    PartialWriteToScreen(0, 16, description);
    pSetOutputPortValues(output);
}





void ProcessHeating()
{
    unsigned char inputs;
    unsigned char zones[5];
    unsigned char boiler;
    unsigned char output;


    // Look at the status of inputs
    inputs = 0;
    pGetInputPortValues(&inputs);

    lastInputState = inputs;

    zones[0] = inputs & INPUT_ZONE1;
    zones[1] = inputs & INPUT_ZONE2;
    zones[2] = inputs & INPUT_ZONE3;
    zones[3] = inputs & INPUT_ZONE4;
    zones[4] = inputs & INPUT_ZONE5;

    if (zones[0] || zones[1] || zones[2] || zones[3] || zones[4])
    {
        boiler = 1;
    }
    else
    {
        boiler = 0;
    }

    // check if we need hot water!
    if (CompareDateTime(&currentDateTime, &provideHotwaterUntil) < 0 )
        /* ||
        (currentDateTime.hours == 18 && currentDateTime.minutes <= 30) ||
        (currentDateTime.hours == 06 && currentDateTime.minutes <= 30))
        */
    {
        hotWaterNeeded = 1;
        boiler = 1;
    }
    else
    {
        hotWaterNeeded = 0;
    }

    if (boiler)
    {
        AddSecondsToDateTime(&currentDateTime, POST_SWITCH_OFF_PUMP_OVERRUN, &pumpRunOffUntil);
    }
    

    output = 0;
    if (boiler)
    {
        output |= OUTPUT_BOILER;
    }

    
    unsigned char extendPumpDischarge = 0;
    if (!boiler)
    {
        if (CompareDateTime(&pumpRunOffUntil, &currentDateTime) > 0)
        {
            extendPumpDischarge = 1;
        }
    }
    

    if (hotWaterNeeded || extendPumpDischarge)
    {
        output |= OUTPUT_HWACTUATOR;
    }

	if (zones[0])
	{
        output |= OUTPUT_ACTUATOR1;
        output |= OUTPUT_ACTUATOR2;
	}
	if (zones[1])
	{
        output |= OUTPUT_ACTUATOR3;
	}
	if (zones[2])
	{
        output |= OUTPUT_ACTUATOR4;
	}
    if (zones[3])
    {
        output |= OUTPUT_ACTUATOR5;
    }
    if (zones[4])
    {
        output |= OUTPUT_ACTUATOR6;
    }
    
    pSetOutputPortValues(output);
    lastOutputState = output;
}


void AnimateScreen()
{
    unsigned char strBuffer[11];
    unsigned char numericValue[2];
    unsigned char zones[5];
    unsigned char outputs[6];
    unsigned char index;

    if (animationType == ANIMATE_INPUTS)
    {
        zones[0] = lastInputState & INPUT_ZONE1;
        zones[1] = lastInputState & INPUT_ZONE2;
        zones[2] = lastInputState & INPUT_ZONE3;
        zones[3] = lastInputState & INPUT_ZONE4;
        zones[4] = lastInputState & INPUT_ZONE5;


        strcpy(strBuffer, "Z ");
        for (index = 0; index < 5; ++index)
        {
            if (zones[index])
            {
                numericValue[0] = '1' + index;
                numericValue[1] = 0;
                strcat(strBuffer, numericValue);
            }
            else
            {
                strcat(strBuffer, "_");
            }
        }
    }
    else if (animationType == ANIMATE_OUTPUTS)
    {
        outputs[0] = lastOutputState & OUTPUT_ACTUATOR1;
        outputs[1] = lastOutputState & OUTPUT_ACTUATOR2;
        outputs[2] = lastOutputState & OUTPUT_ACTUATOR3;
        outputs[3] = lastOutputState & OUTPUT_ACTUATOR4;
        outputs[4] = lastOutputState & OUTPUT_ACTUATOR5;
        outputs[5] = lastOutputState & OUTPUT_ACTUATOR6;
        
        strcpy(strBuffer, "O ");
        for (index = 0; index < 6; ++index)
        {
            if (outputs[index])
            {
                numericValue[0] = '1' + index;
                numericValue[1] = 0;
                strcat(strBuffer, numericValue);
            }
            else
            {
                strcat(strBuffer, "_");
            }
        }

        if (lastOutputState & OUTPUT_HWACTUATOR)
        {
            strcat(strBuffer, "H");
        }
        else
        {
            strcat(strBuffer, "_");
        }

        if (lastOutputState & OUTPUT_BOILER)
        {
            strcat(strBuffer, "B");
        }
        else
        {
            strcat(strBuffer, "_");
        }
    }
    else if (animationType == ANIMATE_HW)
    {
        strcpy(strBuffer, "HW ");
        if (hotWaterNeeded)
        {
            strcat(strBuffer, "On");
        }
        else
        {
            strcat(strBuffer, "Off");
        }
    }
    else if (animationType == ANIMATE_VERSION)
    {
        strcpy(strBuffer, COMPILED_AT);
    }
    else if (animationType == ANIMATE_TEMPERATURE)
    {
        float value;
        pReadHotWaterTemperature(&value);
        if (value >= -55 && value <= 125)
        {
            FloatToString(strBuffer, 10, (float)value);
        }
        else
        { 
            strcpy(strBuffer, "NO_READING");
        }
    }

    PartialWriteToScreen(0, 10, strBuffer);
    animationType++;
    if (animationType > ANIMATE_TEMPERATURE)
    {
        animationType = ANIMATE_INPUTS;
    }
}


