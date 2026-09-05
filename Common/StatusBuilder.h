#ifndef STATUSBUILDER_H
#define STATUSBUILDER_H

#include <stdbool.h>

void BuildStatus(
	unsigned char* destination, int maxLength,
	unsigned char* bootId,
	unsigned long uptime,
	unsigned char* currentTime,
	unsigned int inputs,
	unsigned int outputs,
	bool hotWaterOn,
	unsigned char* version,
	unsigned char* temperature,
	unsigned char* lastFullfilledState);

#endif