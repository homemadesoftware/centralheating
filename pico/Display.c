#include <stdlib.h>
// E-paper
#include "EPD_2in13_V3.h"
#include "GUI_Paint.h"
#include "Debug.h"


#define ROW_COUNT				2
#define COL_COUNT				16

#define FONT Font20
#define TEXT_X 0
#define TEXT_Y 30

unsigned char* imageBuffer;

// Screen assumptions
#define SCREEN_BUFFER_SIZE  32


void PicoCH_InitialiseDisplay()
{
    EPD_2in13_V3_Init();
    EPD_2in13_V3_Clear();

    int imageSize = ((EPD_2in13_V3_WIDTH % 8 == 0) ? (EPD_2in13_V3_WIDTH / 8) : (EPD_2in13_V3_WIDTH / 8 + 1)) * EPD_2in13_V3_HEIGHT;
    imageBuffer = (unsigned char*)malloc(imageSize);
        
    Paint_NewImage(imageBuffer, EPD_2in13_V3_WIDTH, EPD_2in13_V3_HEIGHT, 90, WHITE);
    Paint_Clear(WHITE);
    DEV_Delay_ms(100);

    Paint_SelectImage(imageBuffer);
    EPD_2in13_V3_Display(imageBuffer);
}

void PicoCH_DirectWriteToDisplay(unsigned char* contents)
{
    // Take the entire buffer and write it to the screen
    int row, col;
    unsigned char* p;

    Paint_Clear(WHITE);

    p = contents;
    for (row = 0; row < ROW_COUNT; ++row)
    {
        unsigned char rowContents[COL_COUNT + 1];
        for (col = 0; col < COL_COUNT; ++col)
        {
            if (*p != 0)
            {
                rowContents[col] = *p;
                ++p;
            }
            else
            {
                rowContents[col] = ' ';
                rowContents[col + 1] = 0;
                break;
            }
        }
        rowContents[col] = 0;

        Paint_DrawString_EN(TEXT_X, TEXT_Y + row * FONT.Height, rowContents, &FONT, WHITE, BLACK);
    }
    EPD_2in13_V3_Display_Partial(imageBuffer);
}
