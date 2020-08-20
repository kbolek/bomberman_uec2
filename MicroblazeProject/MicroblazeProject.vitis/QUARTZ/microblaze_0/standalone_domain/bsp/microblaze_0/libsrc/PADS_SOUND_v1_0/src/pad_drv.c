#include "pad_drv.h"

uint32_t *Pad_Ptr = (uint32_t *) PAD_ADDR;


void decodePad1 (uint32_t inputData, PadStruct *Pad)
{
	inputData = ~inputData;
	Pad->buttons = inputData;
}

void decodePad2 (uint32_t inputData, PadStruct *Pad)
{
	inputData = ~inputData;
	Pad->buttons = inputData;
}

void PadsRead ()
{
	uint32_t Pad1Input = Pad_Ptr[0];
	uint32_t Pad2Input = Pad_Ptr[1];

	decodePad1(Pad1Input, &sPads[0]);
	decodePad2(Pad2Input, &sPads[1]);
}