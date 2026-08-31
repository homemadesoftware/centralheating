#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include "DesiredStateParser.h"
#include "MyLittleParser.h"


typedef struct tagDesiredStateBlockParsingState
{
	unsigned char* parsedDesiredStateId;
	int parsedDesiredStateIdMaxLength;
	unsigned char* parsedDesiredState;
	int parsedDesiredStateMaxLength;

} DesiredStateBlockParsingState;

void ParseLine(unsigned char* line, DesiredStateBlockParsingState* parsingState);


bool ParseDesiredStateBlock(
	const unsigned char* desiredStateBlock,
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
	}
}

