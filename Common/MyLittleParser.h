#ifndef MYLITTLEPARSER_H
#define MYLITTLEPARSER_H

#include <stdbool.h>

typedef struct tagParserState
{
	const unsigned char* inputString;
	const unsigned char* delimiters;
	int currentPosition;
	const unsigned char* currentToken;
	int currentTokenLength;
} ParserState;

void StartParsing(const unsigned char* inputString, const unsigned char* delimiters, ParserState* pState);
bool Next(ParserState* pState);

#endif