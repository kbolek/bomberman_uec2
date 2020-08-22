#ifndef PAD_DRV_H
#define PAD_DRV_H

#ifdef __cplusplus
extern "C" {
#endif

#include "xil_types.h"

/////////////////////////////////////////////////////

#define PAD_ADDR 0xC0000000
#define PADS_COUNT 2

//#define PAD1_UP

////////////////////////////////////////////////////

typedef struct
{
	uint32_t buttons;
	uint32_t isConnected;
}PadStruct;

PadStruct sPads[PADS_COUNT];

////////////////////////////////////////////////////

void decodePad1 (uint32_t inputData, PadStruct *Pad);

void decodePad2 (uint32_t inputData, PadStruct *Pad);

void PadsRead ();

#endif
