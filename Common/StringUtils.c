
void IntToString(unsigned char *p, unsigned int v)
{
    unsigned int digit, divider;

    divider = 10000;
    do
    {
        digit = v / divider;
        *p = '0' + digit;
        v -= digit * divider;
        divider = divider / 10;
        ++p;
    }
    while (divider > 0);
    *p = 0;
}



void UnsignedCharToString(unsigned char *p, unsigned char v)
{
    unsigned digit, divider;

    divider = 0x80;
    do
    {
        digit = v / divider;
        *p = digit ? '1' : '0';
        v -= digit * divider;
        divider = divider / 2;
        ++p;
    }
    while (divider > 0);
    *p = 0;
}

#ifndef PICO_BOARD

void strcat(unsigned char *p, unsigned char *s)
{
    while (*p)
    {
        ++p;
    }
    while (*s)
    {
        *p = *s;
        ++p;
        ++s;
    }
    *p = 0;
}

void strcpy(unsigned char *p, unsigned char *s)
{
    *p = 0;
    while (*s)
    {
        *p = *s;
        ++p;
        ++s;
    }
    *p = 0;
}

#endif