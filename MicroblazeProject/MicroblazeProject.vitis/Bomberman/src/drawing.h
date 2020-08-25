#ifndef DRAWING_H
#define DRAWING_H
#include "gpu_drv.h"
#include "xil_types.h"

void DrawHLine(uint32_t Xpos, uint32_t Ypos, uint32_t Length, BlockStruct *sBlock);
void DrawVLine(uint32_t Xpos, uint32_t Ypos, uint32_t Length, BlockStruct *sBlock);
void DrawBackground(BlockStruct *sBlock);
void DrawFrame(uint32_t Xpos, uint32_t Ypos, uint32_t Width, uint32_t Height, BlockStruct *sBlock);


#endif
