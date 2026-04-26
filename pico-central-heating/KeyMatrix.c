#include "HardwareAbstraction.h"
#include "KeyMatrix.h"
#include "pico/stdlib.h"

#define KEYMATRIX_START_PIN  14

#define KEYMATRIX_COLS_START        (KEYMATRIX_START_PIN)
#define KEYMATRIX_COLS_END          (KEYMATRIX_COLS_START + 4)


#define KEYMATRIX_ROWS_START        (KEYMATRIX_COLS_END)
#define KEYMATRIX_ROWS_END          (KEYMATRIX_ROWS_START + 4)




void KeyMatrix_Init()
{
    for (int pin = KEYMATRIX_ROWS_START; pin < KEYMATRIX_ROWS_END; ++pin)
    {
        gpio_init(pin);
        gpio_set_dir(pin, GPIO_OUT);
        gpio_put(pin, 1);
    }
    
    for (int pin = KEYMATRIX_COLS_START; pin < KEYMATRIX_COLS_END; ++pin)
    {
        gpio_init(pin);
        gpio_set_dir(pin, GPIO_IN);
        gpio_pull_up(pin);
    }
}

void KeyMatrix_Read(int* keys)
{
    *keys = 0;

    // pull them up first
    for (unsigned char rowCount = 0; rowCount < 4; ++rowCount)
    {
        gpio_put(KEYMATRIX_ROWS_START + rowCount, 1);
    }
    sleep_us(5);

    for (unsigned char rowCount = 0; rowCount < 4; ++rowCount)
    {
        gpio_put(KEYMATRIX_ROWS_START + rowCount, 0);

        sleep_us(5);

        for (unsigned char colCount = 0; colCount < 4; ++colCount)
        {
            unsigned char portValue = gpio_get(KEYMATRIX_COLS_START + colCount);
            if (portValue == 0)
            {
                // Rows are actually numbered backwards
                *keys = 12 - (rowCount * 4) + colCount + 1;
                return;
            }
        }

        gpio_put(KEYMATRIX_ROWS_START + rowCount, 1);
    }
}
