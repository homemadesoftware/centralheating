#include <mcs51\at89c51ed2.h>
#include "LcdDisplay.h"



#define ROW_COUNT				2
#define COL_COUNT				16

#define BLANK_CHAR				' '

const int rowStartAddresses[] = {0x0, 0x40};

/*
// The complete screen buffer
unsigned char screenBuffer[ROW_COUNT * COL_COUNT];

// Row position
unsigned char rowPos;

// Column position
unsigned char colPos;

// Force a new line next time the function is called
char newLineNextTime;
*/

// Private prototypes
void PulseLcdEnable(void);
void WriteInstructionToLcd(unsigned char i);
void WriteDataToLcd(unsigned char i);
void SetCursorPos(unsigned char pos);
char WaitLcdReady(void);

void ClearDisplay();
void LcdPrintf(char* format, ...);




#define PORT_LCD 		P0				// Alias to Port
#define PORT_LCD_RS		P0_3			// RS LCD (0=Instruction,1=Data)			
#define PORT_LCD_RW		P0_2			// RW LCD (0=Write,1=Read)
#define PORT_LCD_E		P0_1			// Enable LCD(Active = "1")



void InitialiseLcd()
{
  unsigned int i;						// Delay Count

  PORT_LCD_E = 0;						// Start LCD Control (Disable)
  PORT_LCD_RS = 0;						// Default Instruction
  PORT_LCD_RW = 0;						// Default = Write Direction
  for (i=0;i<10000;i++);				// Power-On Delay (15 mS)  
  	  
  PORT_LCD &= 0x0F;       				// Clear old LCD Data (Bit[7..4])
  PORT_LCD |= 0x30;						// DB5:DB4 = 1:1
  PulseLcdEnable();							// Enable Pulse
  for (i=0;i<2500;i++);					// Delay 4.1mS

  PORT_LCD &= 0x0F;       				// Clear old LCD Data (Bit[7..4])
  PORT_LCD |= 0x30;						// DB5:DB4 = 1:1
  PulseLcdEnable();							// Enable Pulse
  for (i=0;i<100;i++);					// delay 100uS

  PORT_LCD &= 0x0F;       				// Clear old LCD Data (Bit[7..4])
  PORT_LCD |= 0x30;						// DB5:DB4 = 1:1
  PulseLcdEnable();							// Enable Pulse
  while(WaitLcdReady());      				// Wait LCD Execute Complete

  PORT_LCD &= 0x0F;       				// Clear old LCD Data (Bit[7..4])
  PORT_LCD |= 0x20;						// DB5:DB4 = 1:0
  PulseLcdEnable();							// Enable Pulse
  while(WaitLcdReady());      				// Wait LCD Execute Complete
  
  WriteInstructionToLcd(0x28);  					// Function Set (DL=0 4-Bit,N=1 2 Line,F=0 5X7)
  WriteInstructionToLcd(0x0C);  					// Display on/off Control (Entry Display,Cursor off,Cursor not Blink)
  WriteInstructionToLcd(0x06);  					// Entry Mode Set (I/D=1 Increment,S=0 Cursor Shift)
  WriteInstructionToLcd(0x01);  					// Clear Display  (Clear Display,Set DD RAM Address=0)

  SetCursorPos(0);

  //BufferedDisplay_Clear();
}

/****************************/
/* Write Instruction to LCD */
/****************************/
void WriteInstructionToLcd(unsigned char i)
{
  PORT_LCD_RS  = 0;			 			// Instruction Select
  PORT_LCD_RW  = 0;						// Write Select

  PORT_LCD &= 0x0F;       				// Clear old LCD Data (Bit[7..4])
  PORT_LCD |= i & 0xF0;   				// Strobe High Nibble Command
  PulseLcdEnable();							// Enable Pulse
       
  PORT_LCD &= 0x0F;        				// Clear old LCD Data (Bit[7..4])
  PORT_LCD |= (i << 4) & 0xF0;			// Strobe Low Nibble Command
  PulseLcdEnable();							// Enable Pulse
    
  while(WaitLcdReady());      				// Wait LCD Execute Complete
}

/****************************/
/* Write Data(ASCII) to LCD */
/****************************/
void WriteDataToLcd(unsigned char i)
{
  PORT_LCD_RS  = 1;				  		// Data Select
  PORT_LCD_RW  = 0;						// Write Select

  PORT_LCD &= 0x0F;    					// Clear old LCD Data (Bit[7..4])
  PORT_LCD |= i & 0xF0;  				// Strobe High Nibble Data
  PulseLcdEnable();							// Enable Pulse  
    			
  PORT_LCD &= 0x0F;    					// Clear old LCD Data (Bit[7..4])
  PORT_LCD |= (i << 4) & 0xF0; 			// Strobe Low Nibble Data
  PulseLcdEnable();							// Enable Pulse
 
  while(WaitLcdReady());      				// Wait LCD Execute Complete
}

/***********************/
/* Enable Pulse to LCD */
/***********************/
void PulseLcdEnable(void)	 				// Enable Pulse
{
  unsigned int i;						// Delay Count
  PORT_LCD_E = 1;   					// Enable ON
  for (i=0;i<500;i++);
  PORT_LCD_E = 0;   					// Enable OFF 
}

/******************/
/* Wait LCD Ready */
/******************/
char WaitLcdReady(void)
{
  unsigned char busy_status;			// Busy Status Read

  PORT_LCD_RS  = 0;			 			// Instruction Select
  PORT_LCD_RW  = 1; 					// Read Direction
  PORT_LCD_E = 1;						// Start Read Busy
  busy_status = PORT_LCD;				// Read LCD Data

  if(busy_status & 0x80)   				// Read & Check Busy Flag
  {
    PORT_LCD_E = 0;       				// Disable Read
	PORT_LCD_RW = 0;					// Default = Write Direction
    return 1;							// LCD Busy Status
  }
  else
  {
    PORT_LCD_E = 0;       				// Disable Read
	PORT_LCD_RW = 0;					// Default = Write Direction
    return 0;							// LCD Ready Status
  }
}



void ClearDisplay()
{
	WriteInstructionToLcd(0x01);
}



/******************/
/* Set LCD Cursor */
/******************/
void SetCursorPos(unsigned char pos)
{
  WriteInstructionToLcd(pos | 0x80);			// Set DD-RAM Address Command  
}


/*

void BufferedDisplay_Clear()
{
    unsigned char *p;
    int row, col;

    p = screenBuffer;
	for (row = 0; row < ROW_COUNT; ++row)
	{
        SetCursorPos(rowStartAddresses[row]);
        for (col = 0; col < COL_COUNT; ++col)
		{
            *p = BLANK_CHAR;
            ++p;
		}
	}

    rowPos = 0;
	colPos = 0;
	newLineNextTime = 0;

    DirectWriteToDisplay(screenBuffer);
}



void LineFeed()
{
	// remove the first line, copy N+1 on to N
    int row, col;
	for (row = 1; row < ROW_COUNT; ++row)
	{
		for (col = 0; col < COL_COUNT; ++col)
		{
			screenBuffer[(row - 1) * COL_COUNT + col] = screenBuffer[row * COL_COUNT + col];
		}
	}

	for (col = 0; col < COL_COUNT; ++col)
	{
		screenBuffer[(ROW_COUNT - 1) * COL_COUNT + col] = BLANK_CHAR;
	}
}

void BufferedDisplay_Write(char *pText)
{	
	// See if we need to newline first
	while (*pText)
	{
		if (newLineNextTime)
		{
			colPos = 0;
			++rowPos;
			if (rowPos >= ROW_COUNT)
			{
				LineFeed();
				--rowPos;
			}
			newLineNextTime = 0;
			continue;
		}

		// Process the char
		if (*pText == '\r')
		{
			colPos = 0;
		}
		else if (*pText == '\n')
		{
			newLineNextTime = 1;
		}
		else
		{
			screenBuffer[rowPos * COL_COUNT + colPos] = *pText;
			++colPos;
			if (colPos >= COL_COUNT)
			{
				newLineNextTime = 1;
			}
		}
		++pText;
	}
	
    // Take the entire buffer and write it to the screen
    DirectWriteToDisplay(screenBuffer);
}


void BufferedDisplay_Printf(char* format, ...)
{
    char buffer[50];

	va_list vargs;
	va_start (vargs, format);
	vsprintf(buffer, format, vargs);
    va_end (vargs);

	BufferedDisplay_Write(buffer);
} */




void DirectWriteToDisplay(unsigned char* contents)
{
	// Take the entire buffer and write it to the screen
    int row, col;
    unsigned char *p;
    

    p = contents;
	for (row = 0; row < ROW_COUNT; ++row)
    {
		SetCursorPos(rowStartAddresses[row]);
		for (col = 0; col < COL_COUNT; ++col)
		{
            if (*p != 0)
            {
                WriteDataToLcd(*p);
                ++p;
            }
            else
            {
                WriteDataToLcd(' ');
            }
		}
	}
}

