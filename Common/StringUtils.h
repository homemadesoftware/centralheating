void IntToString(unsigned char *p, unsigned int v);
void UnsignedCharToString(unsigned char *p, unsigned char v);
void FloatToString(char* p, int size, float value);

#ifndef PICO_BOARD
void strcat(unsigned char *p, unsigned char *s);
void strcpy(unsigned char *p, unsigned char *s);
#else
#include <string.h>
#endif