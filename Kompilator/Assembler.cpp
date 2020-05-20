#include "Assembler.h"


#define WA_POS      0x0008
#define RB_POS      0x0004
#define RA_POS      0x0000
#define DATA_POS    0x0000
#define TRG_POS     0x0000

#define REG_MASK    0x000F
#define DATA_MASK   0x00FF
#define TRG_MASK    0x00FF

#define WA pToken[1].uValue.uiNumber
#define RB pToken[2].uValue.uiNumber
#define RA pToken[3].uValue.uiNumber
#define DATA pToken[2].uValue.uiNumber
#define TARGET pToken[1].uValue.uiNumber
#define OP pToken[0].uValue.eKeyword

Assembler::Assembler(Token *ptrToken)
{
    pToken = ptrToken;
}

uint16_t Assembler::ADD_f()
{
    uint16_t opcode = 0x0000; //op=0 fn=000

    opcode = (opcode | ((WA & REG_MASK) << WA_POS));
    opcode = (opcode | ((RB & REG_MASK) << RB_POS));
    opcode = (opcode | ((RA & REG_MASK) << RA_POS));

    return opcode;
}

uint16_t Assembler::SUB_f()
{
    uint16_t opcode = 0x1000; //op=0 fn=001

    opcode = (opcode | ((WA & REG_MASK) << WA_POS));
    opcode = (opcode | ((RB & REG_MASK) << RA_POS));
    opcode = (opcode | ((RA & REG_MASK) << RB_POS));

    return opcode;
}

uint16_t Assembler::AND_f()
{
    uint16_t opcode = 0x2000; //op=0 fn=010

    opcode = (opcode | ((WA & REG_MASK) << WA_POS));
    opcode = (opcode | ((RB & REG_MASK) << RB_POS));
    opcode = (opcode | ((RA & REG_MASK) << RA_POS));

    return opcode;
}

uint16_t Assembler::OR_f()
{
    uint16_t opcode = 0x3000; //op=0 fn=011

    opcode = (opcode | ((WA & REG_MASK) << WA_POS));
    opcode = (opcode | ((RB & REG_MASK) << RB_POS));
    opcode = (opcode | ((RA & REG_MASK) << RA_POS));

    return opcode;
}

uint16_t Assembler::LDA_f()
{
    uint16_t opcode = 0x4000; //op=0 fn=100

    opcode = (opcode | ((WA & REG_MASK) << WA_POS));
    opcode = (opcode | ((DATA & DATA_MASK) << DATA_POS));

    return opcode;
}

uint16_t Assembler::LDB_f()
{
    uint16_t opcode = 0x5000; //op=0 fn=101

    opcode = (opcode | ((WA & REG_MASK) << WA_POS));
    opcode = (opcode | ((DATA & DATA_MASK) << DATA_POS));

    return opcode;
}

uint16_t Assembler::NOP_f()
{
    uint16_t opcode = 0x7000; //op=0 fn=111

    //<11:0> Don't care

    return opcode;
}

uint16_t Assembler::BI_f()
{
    uint16_t opcode = 0xA000; //op=1 fn=010

    //<11:8> Don;t care
    opcode = (opcode | ((TARGET & TRG_MASK) << TRG_POS));

    return opcode;
}

uint16_t Assembler::BR_f()
{
    uint16_t opcode = 0xC000; //op=1 fn=100

    //<11:8> Don;t care
    opcode = (opcode | ((TARGET & TRG_MASK) << TRG_POS));

    return opcode;
}

uint16_t Assembler::BN_f()
{
    uint16_t opcode = 0xD000; //op=1 fn=101

    //<11:8> Don;t care
    opcode = (opcode | ((TARGET & TRG_MASK) << TRG_POS));

    return opcode;
}

uint16_t Assembler::assemble()
{
    switch(OP)
    {
    case ADD:
        return ADD_f();
        break;
    case SUB:
        return SUB_f();
        break;
    case AND:
        return AND_f();
        break;
    case OR:
        return OR_f();
        break;
    case LDA:
        return LDA_f();
        break;
    case LDB:
        return LDB_f();
        break;
    case NOP:
        return NOP_f();
        break;
    case B1:
        return BI_f();
        break;
    case BR:
        return BR_f();
        break;
    case BN0:
        return BN_f();
        break;
    default:
        return 0;
        break;
    }
}
