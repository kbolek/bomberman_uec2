#include "Decoder.h"

Decoder::Decoder()
{

}

enum CompResult Decoder::eCompareString(char pcStr1[], char pcStr2[])
{
    unsigned char ucCharCounter;
	for(ucCharCounter=0;pcStr1[ucCharCounter] != '\0';ucCharCounter++)
	{
		if (pcStr1[ucCharCounter] != pcStr2[ucCharCounter]) return DIFFERENT;
	}
	return EQUAL;
}

void Decoder::ReplaceCharactersInString(char pcString[],char cOldChar,char cNewChar)
{
	unsigned char ucCharCounter;
	for(ucCharCounter=0;pcString[ucCharCounter]!='\0';ucCharCounter++)
	{
		if(pcString[ucCharCounter] == cOldChar) pcString[ucCharCounter] = cNewChar;
	}
}

enum Resul Decoder::eHexStringToUInt(char pcStr[],unsigned int *puiValue)
{
	unsigned char ucCharCounter;
	if((pcStr[0] != '0') | (pcStr[1] != 'x') | (pcStr[2] == '\0'))
		return ERRR;
	*puiValue = 0;
	for(ucCharCounter=2;ucCharCounter<7;ucCharCounter++)
	{
		if(pcStr[ucCharCounter] == '\0')
			return K;
	  *puiValue = *puiValue << 4;
		if(pcStr[ucCharCounter] >= 'A')
			*puiValue = *puiValue | (pcStr[ucCharCounter] - 'A' + 10);
		else
			*puiValue = *puiValue | (pcStr[ucCharCounter] - '0');
	}
	return K;
}

unsigned char Decoder::ucFindTokensInString(char *pcString)
{
	unsigned char ucTokenPointer;
	unsigned char ucDelimiterCounter;
	char cCurrentChar;
	enum State {TOKEN, DELIMITER};
	enum State eState = DELIMITER;
	ucDelimiterCounter = 0;

	for(ucTokenPointer=0;;ucTokenPointer++)
	{
		cCurrentChar = pcString[ucTokenPointer];
		switch(eState)
		{
			case DELIMITER:
				if(cCurrentChar == '\0')
					return ucDelimiterCounter;
				else if(cCurrentChar == ' ') {}
				else
				{
					eState = TOKEN;
					asToken[ucDelimiterCounter].uValue.pcString = pcString+ucTokenPointer;
					asToken[ucDelimiterCounter].eType = KEYWORD; //not empty
					ucDelimiterCounter++;
				}
				break;
			case TOKEN:
				if(cCurrentChar == '\0')
					return ucDelimiterCounter;
				else if(ucDelimiterCounter == MAX_TOKEN_NR)
					return ucDelimiterCounter;
				else if(cCurrentChar != ' ') {}
				else
					eState = DELIMITER;
				break;
		}
	}
}

enum Resul Decoder::eStringToKeyword (char pcStr[],enum KeywordCode *peKeywordCode)
{
	unsigned char ucTokenCounter;
	for(ucTokenCounter=0;ucTokenCounter<MAX_KEYWORD_NR;ucTokenCounter++)
	{
		if (eCompareString(pcStr,asKeywordList[ucTokenCounter].cString) == EQUAL)
		{
			*peKeywordCode = asKeywordList[ucTokenCounter].eCode;
			return K;
		}
	}
	return ERRR;
}

enum Resul Decoder::DecodeTokens()
{
	unsigned char ucTokenCounter;
	Token* tValue;
	for(ucTokenCounter=0;ucTokenCounter<MAX_TOKEN_NR;ucTokenCounter++)
	{
		tValue = &asToken[ucTokenCounter];
		if ((tValue->uValue.pcString == '\0') || (tValue->eType == EMPTY)) break;
		if (eStringToKeyword(tValue->uValue.pcString,&tValue->uValue.eKeyword) == K) tValue->eType = KEYWORD;
		else if (eHexStringToUInt(tValue->uValue.pcString,&tValue->uValue.uiNumber) == K) tValue->eType = NUMBER;
		else return ERRR;
	}
	return K;
}

enum Resul Decoder::DecodeMsg(char *pcString)
{
    unsigned char ucTokenCounter;
    for(ucTokenCounter=0;ucTokenCounter<MAX_TOKEN_NR;ucTokenCounter++)
    {
        asToken[ucTokenCounter].eType = EMPTY;
    }

	ucFindTokensInString(pcString);
	ReplaceCharactersInString(pcString,' ','\0');
	if(DecodeTokens() == ERRR)
        return ERRR;
    else
        return K;
}
