#ifndef DECODER_H
#define DECODER_H

#include "TypeDef.h"

class Decoder
{
    public:
        Decoder();
        enum Resul DecodeMsg(char *pcString);
        struct Token asToken[MAX_TOKEN_NR];
    private:
        struct Keyword asKeywordList[MAX_KEYWORD_NR]=
        {   {ADD,"ADD"},
            {SUB, "SUB"},
            {AND, "AND"},
            {OR, "OR"},
            {LDA, "LDA"},
            {LDB, "LDB"},
            {NOP, "NOP"},
            {B1, "B1"},
            {BR, "BR"},
            {BN0, "BN0"},};
        enum CompResult eCompareString(char pcStr1[], char pcStr2[]);
        void ReplaceCharactersInString(char pcString[],char cOldChar,char cNewChar);
        enum Resul eHexStringToUInt(char pcStr[],unsigned int *puiValue);
        unsigned char ucFindTokensInString(char *pcString);
        enum Resul eStringToKeyword (char pcStr[],enum KeywordCode *peKeywordCode);
        enum Resul DecodeTokens();
};

#endif // DECODER_H
