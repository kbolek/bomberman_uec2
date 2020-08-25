#ifndef MAP_H
#define MAP_H
#include "gpu_drv.h"
#include "xil_types.h"



void DrawHLine(uint32_t Xpos, uint32_t Ypos, uint32_t Length, BlockStruct *sBlock);
void DrawVLine(uint32_t Xpos, uint32_t Ypos, uint32_t Length, BlockStruct *sBlock);
void DrawMap(uint32_t Xpos, uint32_t Ypos, uint32_t Width, uint32_t Height, BlockStruct *sBlock);

/*Position is set up by upper line of outside border (clock in the centre)*/
typedef struct{
	uint32_t HXpos;
	uint32_t HYpos;
	uint32_t HLength;
}ClockPositionStruct;

extern ClockPositionStruct asClockPositionStruct;


#endif