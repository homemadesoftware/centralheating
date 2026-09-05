#ifndef DESIREDSTATEPARSER_H
#define DESIREDSTATEPARSER_H

#include <stdbool.h>

bool ParseDesiredStateBlock(
	const unsigned char* desiredStateBlock,
	const unsigned char* myBootId,
	const unsigned char* lastDesiredStateId,
	unsigned char* parsedDesiredStateId,
	int parsedDesiredStateIdMaxLength,
	unsigned char* parsedDesiredState,
	int parsedDesiredStateMaxLength);

#endif