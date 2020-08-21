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

////////////////////////////////////////////////////
enum TextureType {Background,FireCorner,FireVertical,FireHorizontal,Path,FireWall,WallUsual,WallFront};

////////////////////////////////////////////////////


typedef struct
{
	uint32_t textureInversion;
	enum TextureType eTextureType;
	uint32_t textColor;
	uint32_t textChar;
}BlockStruct;

////////////////////////////////////////////////////

uint32_t GpuPutBlock (uint32_t textureInversion, enum TextureType eTextureType, uint32_t textColor, uint32_t textChar, uint32_t x, uint32_t y);

uint32_t GpuPutBlockStruct (uint32_t x, uint32_t y, BlockStruct *sBlock);

uint32_t GpuGetBlock (uint32_t x, uint32_t y, BlockStruct *sBlock);

uint32_t GpuPutChar (uint32_t x, uint32_t y, uint32_t textChar);

uint32_t GpuReadChar (uint32_t x, uint32_t y, uint32_t *textChar);

uint32_t GpuNumberToChar (uint32_t number);

uint32_t GpuAsciiToChar (char asciiChar);


#endif
