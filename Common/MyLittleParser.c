#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include "MyLittleParser.h"

void StartParsing(const unsigned char* inputString, const unsigned char* delimiters, ParserState* pState)
{
	pState->inputString = inputString;
	pState->delimiters = delimiters;
	pState->currentToken = NULL;
	pState->currentPosition = 0;
	pState->currentTokenLength = 0;
}

bool Next(ParserState* pState)
{
	const unsigned char* remaining = pState->inputString + pState->currentPosition;
	if (*remaining == 0)
	{
		return false;
	}

	// Length until the delimiter.
	pState->currentToken = remaining;
	pState->currentTokenLength = strcspn(remaining, pState->delimiters);
	
	// Jump over remaining delimiters until next time
	pState->currentPosition += pState->currentTokenLength;
	pState->currentPosition += strspn(pState->currentToken + pState->currentTokenLength, pState->delimiters);

	return true;
}
