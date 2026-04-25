#include "../Common/HardwareAbstraction.h"
#include "89C51Board.h"
#include "StringUtils.h"
#include "LcdDisplay.h"


#define DISPLAY_BUFFER_SIZE  32


// Globals
unsigned char displayBuffer[DISPLAY_BUFFER_SIZE + 1];



#define ZONENC1 (0x01) // not used
#define ZONENC2 (0x02) // not used
#define ZONE3   (0x04)  // P3_2
#define ZONE4   (0x08)  // P3_3, currently not used
#define ZONE1   (0x10)  // P3_4
#define ZONE2   (0x20)  // P3_5
#define ZONE5   (0x40)  // P3_6, currently not used
#define ZONE6   (0x80) // busted


#define ACTUATOR1   (0x01)
#define ACTUATOR2   (0x02)
#define ACTUATOR3   (0x04)
#define ACTUATOR4   (0x08)
#define PUMP        (0x10)
#define BOILER      (0x20)




void SimpleCentralHeating()
{
    int i;
    int keys;
    unsigned char inputs, outputs;
    unsigned char animatedChars[4];
    char animatedBuffer[3];
    int animatedCounter;
    unsigned char zones[3];
    unsigned char boilerOn;
    unsigned char pumpOn;
    unsigned char actuators[3];
    long delay;

    //char strBuf[10];
    

    animatedChars[0] = '-';
    animatedChars[1] = '/';
    animatedChars[2] = '|';
    animatedChars[3] = '\\';


    animatedBuffer[0] = '.';
    animatedBuffer[1] = '.';
    animatedBuffer[2] = 0;


    // Inputs:
    // Zone 1: 00010000
    // Zone 2: 00001000
    // Zone 3: 00000100

    // Display layout
    // 
    // Stuff with blanks
    for (i = 0; i < DISPLAY_BUFFER_SIZE; ++i)
    {
        displayBuffer[i] = '.';
    }
    displayBuffer[DISPLAY_BUFFER_SIZE] = 0;

    pWriteDisplayBuffer(displayBuffer);

    i = 0;
    animatedCounter = 0;
    
    while (1)
    {
        *displayBuffer = 0;
    
        animatedBuffer[0] = animatedChars[animatedCounter];
        
        if (animatedCounter == 3)
        {
            animatedCounter = 0;
        }
        else
        {
            ++animatedCounter;
        }
        
        
        strcat(displayBuffer, "Z123 B P A123 ");
        strcat(displayBuffer, animatedBuffer);

        // Second line
        strcat(displayBuffer, " ");

        
        pGetInputPortValues(&inputs);
        zones[0] = ((inputs & ZONE1) == 0);
        zones[1] = ((inputs & ZONE2) == 0);
        zones[2] = ((inputs & ZONE3) == 0);
        

        // Override zone values via keyboard
        pGetKeyState(&keys);

        switch (keys)
        {
        case 1 :
            zones[0] = 1;
            break;

        case 2 :
            zones[1] = 1;
            break;

        case 3 :
            zones[2] = 1;
            break;
        }

        if (zones[0])
        {
            strcat(displayBuffer, "*");
        }
        else
        {
            strcat(displayBuffer, " ");
        }

        if (zones[1])
        {
            strcat(displayBuffer, "*");
        }
        else
        {
            strcat(displayBuffer, " ");
        }

        if (zones[2])
        {
            strcat(displayBuffer, "*");
        }
        else
        {
            strcat(displayBuffer, " ");
        }



        // Boiler
        boilerOn = (zones[0] || zones[1] || zones[2]);
        

        // Pump
        pumpOn = (zones[0] || zones[1] || zones[2]);

        // A1
        actuators[0] = zones[0];
        actuators[1] = zones[1];
        actuators[2] = zones[2];

        switch (keys)
        {
        case 5 :
            boilerOn = 1;
            break;

        case 6 :
            pumpOn = 1;
            break;

        case 9 :
            actuators[0] = 1;
            break;

        case 10 :
            actuators[1] = 1;
            break;

        case 11 :
            actuators[2] = 1;
            break;
        }

        strcat(displayBuffer, " ");

        if (boilerOn)
        {
            strcat(displayBuffer, "* ");
        }
        else
        {
            strcat(displayBuffer, "  ");
        }

        if (pumpOn)
        {
            strcat(displayBuffer, "* ");
        }
        else
        {
            strcat(displayBuffer, "  ");
        }

        strcat(displayBuffer, " ");

        if (actuators[0])
        {
            strcat(displayBuffer, "*");
        }
        else
        {
            strcat(displayBuffer, " ");
        }
        if (actuators[1])
        {
            strcat(displayBuffer, "*");
        }
        else
        {
            strcat(displayBuffer, " ");
        }
        if (actuators[2])
        {
            strcat(displayBuffer, "*");
        }
        else
        {
            strcat(displayBuffer, " ");
        }



        pWriteDisplayBuffer(displayBuffer);


        outputs = 0;
        if (actuators[0])
        {
            outputs |= ACTUATOR1;
        }
        if (actuators[1])
        {
            outputs |= ACTUATOR2;
        }
        if (actuators[2])
        {
            outputs |= ACTUATOR3;
        }
        if (pumpOn)
        {
            outputs |= PUMP;
        }
        if (boilerOn)
        {
            outputs |= BOILER;
        }

        pSetOutputPortValues(outputs);

        for (delay = 0; delay < 200000; ++delay)
        {
            ;
        }
        

        ++i;

        
        
    }

}


