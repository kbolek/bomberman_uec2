#ifndef DRAWING_H
#define DRAWING_H
#include "xil_types.h"
#include "gpu_drv.h"

void DrawHLine(uint32_t Xpos, uint32_t Ypos, uint32_t Length, BlockStruct *sBlock);
void DrawVLine(uint32_t Xpos, uint32_t Ypos, uint32_t Length, BlockStruct *sBlock);
void DrawBackground();
void DrawFrame(uint32_t Xpos, uint32_t Ypos, uint32_t Length, uint32_t Width, BlockStruct *sBlock);


#endif