#define _CRT_SECURE_NO_WARNINGS
#include "../Common/HardwareAbstraction.h"
#include "../Common/MenuMgr.h"
#include "../Common/CentralHeatingMenus.h"




void BuildCentralHeatingMenuDefinitions()
{
    
    InitialiseMenuDefinitions();

    AddMenuDefinition("Hot Water", 0, MENUID_HOTWATER);
        AddMenuDefinition("1 Hour",             MENUID_HOTWATER, MENUID_HOTWATER1HR);
        AddMenuDefinition("Reset",              MENUID_HOTWATER, MENUID_HOTWATERRST);
        AddMenuDefinition("Return",             MENUID_HOTWATER, MENU_END_SENTINEL);
     
    AddMenuDefinition("Set Clock", 0, MENUID_SETRTC);
        AddMenuDefinition("Set Date",            MENUID_SETRTC, MENUID_SETDATE);
            AddMenuDefinition("Day+",                MENUID_SETDATE, MENUID_ADDDAY);
            AddMenuDefinition("Day-",                MENUID_SETDATE, MENUID_SUBDAY);
            AddMenuDefinition("Month+",              MENUID_SETDATE, MENUID_ADDMONTH);
            AddMenuDefinition("Month-",              MENUID_SETDATE, MENUID_SUBMONTH);
            AddMenuDefinition("Year+",               MENUID_SETDATE, MENUID_ADDYEAR);
            AddMenuDefinition("Year-",               MENUID_SETDATE, MENUID_SUBYEAR);
            AddMenuDefinition("Return",              MENUID_SETDATE, MENU_END_SENTINEL);
     
        AddMenuDefinition("Set Time",            MENUID_SETRTC, MENUID_SETTIME);
            AddMenuDefinition("Minute+",             MENUID_SETTIME, MENUID_ADDMINUTE);
            AddMenuDefinition("Minute-",             MENUID_SETTIME, MENUID_SUBMINUTE);
            AddMenuDefinition("Hour+",               MENUID_SETTIME, MENUID_ADDHOUR);
            AddMenuDefinition("Hour-",               MENUID_SETTIME, MENUID_SUBHOUR);
            AddMenuDefinition("Reset Seconds",       MENUID_SETTIME, MENUID_RESETSEC);
            AddMenuDefinition("Return",              MENUID_SETTIME, MENU_END_SENTINEL);
        AddMenuDefinition("Return",              MENUID_SETRTC, MENU_END_SENTINEL);
            
   
	AddMenuDefinition("Test Outputs", 0, MENUID_TESTOUTPUT);
       	AddMenuDefinition("Boiler", MENUID_TESTOUTPUT, MENUID_TEST_BOILER);
        AddMenuDefinition("Zone 1", MENUID_TESTOUTPUT, MENUID_TEST_ZONE1);
        AddMenuDefinition("Zone 2", MENUID_TESTOUTPUT, MENUID_TEST_ZONE2);
        AddMenuDefinition("Zone 3", MENUID_TESTOUTPUT, MENUID_TEST_ZONE3);
		AddMenuDefinition("Zone 4", MENUID_TESTOUTPUT, MENUID_TEST_ZONE4);
        AddMenuDefinition("Zone 5", MENUID_TESTOUTPUT, MENUID_TEST_ZONE5);
        AddMenuDefinition("Zone 6", MENUID_TESTOUTPUT, MENUID_TEST_ZONE6);
        AddMenuDefinition("HW", MENUID_TESTOUTPUT, MENUID_TEST_HW);
        AddMenuDefinition("Reset",  MENUID_TESTOUTPUT, MENUID_TEST_RESET);
        AddMenuDefinition("Return", MENUID_TESTOUTPUT, MENU_END_SENTINEL);

}

 
