#ifndef TYPEDEF_H
#define TYPEDEF_H

#include <cstdint>

#define HEX_bm 0x000F
#define MAX_TOKEN_NR 4
#define MAX_KEYWORD_STRING_LTH 3
#define MAX_KEYWORD_NR 10

typedef enum CompResult
{ DIFFERENT , EQUAL } CompResult;

typedef enum TokeType
{KEYWORD, NUMBER, EMPTY} TokeType;

typedef enum Resul
{ K, ERRR } Resul;

typedef enum KeywordCode
{ADD, SUB, AND, OR, LDA, LDB, NOP, B1, BR, BN0} KeywordCode;

typedef union TokenValue
{
enum KeywordCode eKeyword;
unsigned int uiNumber;
char *pcString;
} TokenValue;

typedef struct Token
{
enum TokeType eType;
union TokenValue uValue;
} Token;

typedef struct Keyword
{
enum KeywordCode eCode;
char cString[MAX_KEYWORD_STRING_LTH + 1];
} Keyword;

#endif
