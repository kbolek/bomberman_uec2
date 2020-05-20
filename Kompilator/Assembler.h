#ifndef ASSEMBLER_H
#define ASSEMBLER_H

#include "TypeDef.h"

class Assembler
{
    public:
        Assembler(Token *ptrToken);
        uint16_t assemble();
    private:
        Token *pToken;
        uint16_t ADD_f();
        uint16_t SUB_f();
        uint16_t AND_f();
        uint16_t OR_f();
        uint16_t LDA_f();
        uint16_t LDB_f();
        uint16_t NOP_f();
        uint16_t BI_f();
        uint16_t BR_f();
        uint16_t BN_f();
};

#endif // ASSEMBLER_H
