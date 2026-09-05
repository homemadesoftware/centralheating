#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include "DesiredStateParser.h"
#include "MyLittleParser.h"

#define MAX_BOOT_ID_LENGTH 64

typedef struct tagDesiredStateBlockParsingState
{
	unsigned char* parsedDesiredStateId;
	int parsedDesiredStateIdMaxLength;
	unsigned char* parsedDesiredState;
	int parsedDesiredStateMaxLength;
	unsigned char parsedBootId[MAX_BOOT_ID_LENGTH];

} DesiredStateBlockParsingState;

void ParseLine(unsigned char* line, DesiredStateBlockParsingState* parsingState);


bool ParseDesiredStateBlock(
	const unsigned char* desiredStateBlock,
	const unsigned char* myBootId,
	const unsigned char* lastDesiredStateId,
	unsigned char* parsedDesiredStateId,
	int parsedDesiredStateIdMaxLength,
	unsigned char* parsedDesiredState,
	int parsedDesiredStateMaxLength)
{
	DesiredStateBlockParsingState blockParsingState;
	blockParsingState.parsedDesiredStateId = parsedDesiredStateId;
	blockParsingState.parsedDesiredStateIdMaxLength = parsedDesiredStateIdMaxLength;
	blockParsingState.parsedDesiredState = parsedDesiredState;
	blockParsingState.parsedDesiredStateMaxLength = parsedDesiredStateMaxLength;

	// Initialise these in case we cannot parse anything.
	blockParsingState.parsedDesiredState[0] = 0;
	blockParsingState.parsedDesiredStateId[0] = 0;
	blockParsingState.parsedBootId[0] = 0;

	const unsigned char* delimiters = "\n\r";
	ParserState s;
	StartParsing(desiredStateBlock, delimiters, &s);
	while (Next(&s))
	{
		unsigned char* line = malloc(s.currentTokenLength + 1);
		snprintf(line, s.currentTokenLength + 1, "%.*s", s.currentTokenLength, s.currentToken);

		// Further parse the line
		ParseLine(line, &blockParsingState);

		free(line);
	}

	// Not for this boot - either a stale command from before the last
	// reboot, or a block with no boot-id at all (e.g. an empty/404 bucket).
	// Either way, there is nothing here to act on.
	if (strcmp(blockParsingState.parsedBootId, myBootId) != 0)
	{
		return false;
	}

	if (strcmp(lastDesiredStateId, parsedDesiredStateId) < 0)
	{
		return true;
	}

	return false;
}

void ParseLine(unsigned char* line, DesiredStateBlockParsingState* parsingState)
{
	const unsigned char* delimiters = " ";
	ParserState s;
	StartParsing(line, delimiters, &s);

	bool nextTokenIsState = false;
	bool nextTokenIsStateId = false;
	bool nextTokenIsBootId = false;

	while (Next(&s))
	{
		if (strncmp("desired-state", s.currentToken, s.currentTokenLength) == 0)
		{
			nextTokenIsState = true;
		}
		else if (strncmp("desired-state-id", s.currentToken, s.currentTokenLength) == 0)
		{
			nextTokenIsStateId = true;
		}
		else if (strncmp("boot-id", s.currentToken, s.currentTokenLength) == 0)
		{
			nextTokenIsBootId = true;
		}
		else if (nextTokenIsState)
		{
			snprintf(
				parsingState->parsedDesiredState,
				parsingState->parsedDesiredStateMaxLength,
				"%.*s", s.currentTokenLength, s.currentToken);
			nextTokenIsState = false;
		}
		else if (nextTokenIsStateId)
		{
			snprintf(
				parsingState->parsedDesiredStateId,
				parsingState->parsedDesiredStateIdMaxLength,
				"%.*s", s.currentTokenLength, s.currentToken);
			nextTokenIsStateId = false;
		}
		else if (nextTokenIsBootId)
		{
			snprintf(
				parsingState->parsedBootId,
				MAX_BOOT_ID_LENGTH,
				"%.*s", s.currentTokenLength, s.currentToken);
			nextTokenIsBootId = false;
		}
	}
}

