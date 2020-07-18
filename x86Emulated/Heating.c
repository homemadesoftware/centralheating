#include ".\Heating.h"
#include <stdlib.h>

#include "Hardware\HardwareAbstraction.h"

// from CentralHeating.c
void HardwareCall(HardwareInfo *info);

int main(void)
{
	StartHardwareAbstractionOnAvr(HardwareCall);
	return 0;
}



