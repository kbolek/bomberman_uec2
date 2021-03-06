#include "pad_drv.h"

volatile uint32_t *Pad_Ptr = (uint32_t *) PAD_ADDR;

void decodePad (uint32_t inputData, PadStruct *Pad)
{
	inputData = ~inputData;
	Pad->buttons = inputData & PAD_MASK;

	if ((inputData && PAD_INSERTION_MASK) == 0)
	{
		Pad->isConnected = 1;
	}
	else
	{
		Pad->isConnected = 0;
	}
}

void PadsRead ()
{
	uint32_t Pad1Input = Pad_Ptr[0];
	uint32_t Pad2Input = Pad_Ptr[1];

	decodePad(Pad1Input, &sPads[0]);
	decodePad(Pad2Input, &sPads[1]);
}

uint32_t isButtonPressed(PadStruct *Pad, uint8_t keyNumber)
{
	uint32_t mask = (1<<keyNumber);
	if ((Pad->buttons & mask) != 0)
	{
		return 1;
	}
	else
	{
		return 0;
	}
}
