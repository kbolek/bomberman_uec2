#ifndef PAD_DRV_H
#define PAD_DRV_H

#ifdef __cplusplus
extern "C" {
#endif

#include "xil_types.h"

/////////////////////////////////////////////////////

#define PAD_ADDR 0xC0000000
#define PADS_COUNT 2

#define PAD_INSERTION_MASK (1<<5) //neg

#define PAD_LEFT_BIT 0 //KEY1
#define PAD_UP_BIT 1 //KEY2
#define PAD_RIGHT_BIT 2 //KEY3
#define PAD_DOWN_BIT 3 //KEY4
#define PAD_ENTER_BIT 4 //KEY5 - enter

#define PAD_MASK 0x1F

////////////////////////////////////////////////////

typedef struct
{
	uint32_t buttons;
	uint32_t isConnected;
}PadStruct;

PadStruct sPads[PADS_COUNT];

////////////////////////////////////////////////////

void decodePad (uint32_t inputData, PadStruct *Pad);

void PadsRead ();

uint32_t isButtonPressed(PadStruct *Pad, uint8_t keyNumber);

#endif
