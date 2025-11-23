// E-paper
#include "EPD_2in13_V3.h"
#include "GUI_Paint.h"
#include "Debug.h"


#define ROW_COUNT				2
#define COL_COUNT				16

#define FONT Font24
#define TEXT_X 0
#define TEXT_Y 30


void DirectWriteToDisplay(unsigned char* contents)
{
    // Take the entire buffer and write it to the screen
    int row, col;
    unsigned char* p;

    p = contents;
    for (row = 0; row < ROW_COUNT; ++row)
    {
        unsigned char* rowContents[COL_COUNT + 1];
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
                break;
            }
        }
        rowContents[col] = 0;

        Paint_DrawString_EN(TEXT_X, TEXT_Y + row * FONT.Height, rowContents, &FONT, WHITE, BLACK);
    }
}
