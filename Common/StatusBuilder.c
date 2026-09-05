#include <stdio.h>
#include <stdarg.h>


#include "StatusBuilder.h"
#include "StringUtils.h"
#include "OutputPins.h"

void AppendWithFormat(char* str, size_t size, const char* format, ...);
unsigned char* OnOff(bool value);

void BuildStatus(
	unsigned char* destination,
	int maxLength,
	unsigned char* bootId,
	unsigned long uptime,
	unsigned char* currentTime,
	unsigned int inputs,
	unsigned int outputs,
	bool hotWaterOn,
	unsigned char* version,
	unsigned char* temperature,
	unsigned char* lastFullfilledState)
{
	*destination = 0;
	AppendWithFormat(destination, maxLength, "boot-id %s\n", bootId);
	AppendWithFormat(destination, maxLength, "uptime %lu\n", uptime);
	AppendWithFormat(destination, maxLength, "time %s\n", currentTime);
	AppendWithFormat(destination, maxLength, "temperature %s\n", temperature);
	AppendWithFormat(destination, maxLength, "fulfilled-state-id %s\n", lastFullfilledState);
	AppendWithFormat(destination, maxLength, "hotwater %s\n", OnOff(hotWaterOn));
	AppendWithFormat(destination, maxLength, "boiler %s\n", OnOff((outputs & OUTPUT_BOILER) != 0));
	AppendWithFormat(destination, maxLength, "z1 %s\n", OnOff((inputs & INPUT_ZONE1) != 0));
	AppendWithFormat(destination, maxLength, "z2 %s\n", OnOff((inputs & INPUT_ZONE2) != 0));
	AppendWithFormat(destination, maxLength, "z3 %s\n", OnOff((inputs & INPUT_ZONE3) != 0));
	AppendWithFormat(destination, maxLength, "z4 %s\n", OnOff((inputs & INPUT_ZONE4) != 0));
	AppendWithFormat(destination, maxLength, "z5 %s\n", OnOff((inputs & INPUT_ZONE5) != 0));
	AppendWithFormat(destination, maxLength, "hw %s\n", OnOff((outputs & OUTPUT_HWACTUATOR) != 0));
	AppendWithFormat(destination, maxLength, "o1 %s\n", OnOff((outputs & OUTPUT_ACTUATOR1) != 0));
	AppendWithFormat(destination, maxLength, "o2 %s\n", OnOff((outputs & OUTPUT_ACTUATOR2) != 0));
	AppendWithFormat(destination, maxLength, "o3 %s\n", OnOff((outputs & OUTPUT_ACTUATOR3) != 0));
	AppendWithFormat(destination, maxLength, "o4 %s\n", OnOff((outputs & OUTPUT_ACTUATOR4) != 0));
	AppendWithFormat(destination, maxLength, "o5 %s\n", OnOff((outputs & OUTPUT_ACTUATOR5) != 0));
	AppendWithFormat(destination, maxLength, "o6 %s\n", OnOff((outputs & OUTPUT_ACTUATOR6) != 0));
	AppendWithFormat(destination, maxLength, "version %s\n", version);
}

void AppendWithFormat(char* str, size_t size, const char* format, ...)
{
	int lengthSoFar = strlen(str);

	if (lengthSoFar >= size)
	{
		return;
	}

	va_list args;
	va_start(args, format);
	
	vsnprintf(
		str + lengthSoFar,
		size - lengthSoFar,
		format,
		args
	);

	va_end(args);
}

unsigned char* OnOff(bool value)
{
	if (value)
	{
		return "on";
	}
	return "off";
}

