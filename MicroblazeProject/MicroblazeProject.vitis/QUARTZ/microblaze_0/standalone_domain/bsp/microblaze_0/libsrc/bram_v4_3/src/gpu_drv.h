#ifndef GPU_DRV_H
#define GPU_DRV_H

#ifdef __cplusplus
extern "C" {
#endif

#include "xil_types.h"

/////////////////////////////////////////////////////

#define GPU_BLOCK_ADDR 0xA0000000
//#define GPU_TEX_ADDR 0x
#define RESOLUTION_X 32
#define RESOLUTION_Y 24

#define INVERSION_MASK 0x01
#define TEXTURE_NUMBER_MASK 0x07
#define TEXT_COLOR_MASK 0x07
#define TEXT_CHAR_MASK 0x3F

#define COLOR_BLACK 0x0
#define COLOR_BLUE 0x1
#define COLOR_GREEN 0x2
#define COLOR_RED 0x4
#define COLOR_CYAN 0x3
#define COLOR_MAGENTA 0x5
#define COLOR_YELLOW 0x6
#define COLOR_WHITE 0x7

#define Background 0
#define FireCorner 1
#define FireVertical 2
#define FireHorizontal 3
#define Path 4
#define FireWall 5
#define WallUsual 6
#define WallFront 7

////////////////////////////////////////////////////
typedef enum
{
	sprAmplifier,
	sprBomb,
	sprCharBack,
	sprCharFront,
	sprTransistor,
	sprEmpty
}Sprites;
////////////////////////////////////////////////////


typedef struct
{
	uint32_t textureInversion;
	uint32_t textureType;
	uint32_t textColor;
	uint32_t textChar;
}BlockStruct;

////////////////////////////////////////////////////JAK KRZUCHY TU COS RUSZYSZ TO COS NIEDOBREGO CI ZROBIE

uint32_t GpuPutBlock (uint32_t textureInversion, uint32_t textureType, uint32_t textColor, uint32_t textChar, uint32_t x, uint32_t y);

uint32_t GpuPutBlockStruct (uint32_t x, uint32_t y, BlockStruct *sBlock);

uint32_t GpuGetBlock (uint32_t x, uint32_t y, BlockStruct *sBlock);

uint32_t GpuPutChar (uint32_t x, uint32_t y, uint32_t textChar, uint32_t textColor);

uint32_t GpuReadChar (uint32_t x, uint32_t y, uint32_t *textChar, uint32_t *textColor);

uint32_t GpuNumberToChar (uint32_t number);

uint32_t GpuAsciiToChar (char asciiChar);

uint32_t GpuPutSprite (uint32_t x, uint32_t y, Sprites eSprite, uint32_t spriteColor);

#endif
