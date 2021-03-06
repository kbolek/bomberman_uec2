#ifndef MAP_H
#define MAP_H
#include "drv/gpu_drv.h"
#include "xil_types.h"
#include "drawing.h"
#include "game.h"

#define IsBonusHere 5


void DrawHLine(uint32_t Xpos, uint32_t Ypos, uint32_t Length, BlockStruct *sBlock);
void DrawVLine(uint32_t Xpos, uint32_t Ypos, uint32_t Length, BlockStruct *sBlock);
void DrawMap(uint32_t Xpos, uint32_t Ypos, uint32_t Width, uint32_t Height);
void DrawFireWalls(); //WARNING: IT HAVE TO BE CHANGED IF YOU WANT TO CHANGE THE MAP SIZE
/*
 * IMPORTANT: ARGUMENTS ARE NO ABSOLUTE (YOU HAVE TO TAKE INTO ACCOUNT ADDING THE XPOS,YPOS POSITION OF MAP
 * */
uint32_t CheckBonuses(uint32_t Xpos, uint32_t Ypos);
void PutTheBonus(uint32_t Xpos, uint32_t Ypos);
void PickUpTheBonus(uint32_t Xpos, uint32_t Ypos,uint8_t playerNumber,uint8_t spirteId);
void ShowCollectedBonuses(uint8_t spriteId,uint8_t playerNumber);


#endif
