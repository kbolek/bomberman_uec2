#include "gpu_drv.h"

uint32_t *Gpu_Ptr = (uint32_t *) GPU_BLOCK_ADDR;
uint32_t *Textures_Ptr = (uint32_t *) GPU_TEX_ADDR;


void GpuSetTexture (uint8_t textureNumber, uint16_t *texturePtr)
{
	uint32_t offset = textureNumber*1024;

	for (uint16_t pixel = 0; pixel < 1024; pixel++)
	{
		Textures_Ptr[pixel+offset] = texturePtr[pixel];
	}
}

uint8_t GpuPutBlock(uint32_t textureInversion, uint32_t textureType, uint32_t textColor, uint32_t textChar, uint32_t x, uint32_t y)
{
	if((x >= RESOLUTION_X) || (y >= RESOLUTION_Y))
	{
		return 1;
	}
	else
	{
		uint32_t temp = 0;
		temp |= (textureInversion & INVERSION_MASK) << 15;
		temp |= (textureType & TEXTURE_NUMBER_MASK) << 12;
		temp |= (textColor & TEXT_COLOR_MASK) << 8;
		temp |= (textChar & TEXT_CHAR_MASK);

		uint32_t addr = (y*RESOLUTION_X + x);
		Gpu_Ptr[addr] = temp;

		return 0;
	}
}

uint8_t GpuPutBlockStruct (uint32_t x, uint32_t y, BlockStruct *sBlock)
{
	if((x >= RESOLUTION_X) || (y >= RESOLUTION_Y))
	{
		return 1;
	}
	else
	{
		uint32_t temp = 0;
		temp |= (sBlock->textureInversion & INVERSION_MASK) << 15;
		temp |= (sBlock->textureType & TEXTURE_NUMBER_MASK) << 12;
		temp |= (sBlock->textColor & TEXT_COLOR_MASK) << 8;
		temp |= (sBlock->textChar & TEXT_CHAR_MASK);

		uint32_t addr = (y*RESOLUTION_X + x);
		Gpu_Ptr[addr] = temp;

		return 0;
	}
}

uint8_t GpuGetBlock (uint32_t x, uint32_t y, BlockStruct *sBlock)
{
	if((x >= RESOLUTION_X) || (y >= RESOLUTION_Y))
	{
		return 1;
	}
	else
	{
		uint32_t addr = (y*RESOLUTION_X + x);
		uint32_t temp = Gpu_Ptr[addr];

		sBlock->textureInversion = ((temp >> 15) & INVERSION_MASK);
		sBlock->textureType = ((temp >> 12) & TEXTURE_NUMBER_MASK);
		sBlock->textColor = ((temp >> 8) & TEXT_COLOR_MASK);
		sBlock->textChar = (temp & TEXT_CHAR_MASK);

		return 0;
	}
}

uint8_t GpuPutChar (uint32_t x, uint32_t y, uint32_t textChar, uint32_t textColor)
{
	BlockStruct sBlock;

	if (GpuGetBlock(x,y,&sBlock) != 0)
	{
		return 1;
	}
	else
	{
		sBlock.textChar = textChar;
		sBlock.textColor = textColor;
		GpuPutBlockStruct(x,y,&sBlock);
		return 0;
	}
}

uint8_t GpuReadChar (uint32_t x, uint32_t y, uint32_t *textChar, uint32_t *textColor)
{
	BlockStruct sBlock;

	if (GpuGetBlock(x,y,&sBlock) != 0)
	{
		return 1;
	}
	else
	{
		*textChar = sBlock.textChar;
		*textColor = sBlock.textColor;
		return 0;
	}
}

uint8_t GpuNumberToChar (uint32_t number)
{
	return (number+1);
}

uint8_t GpuAsciiToChar (char asciiChar)
{
	if ((asciiChar >= 48) && (asciiChar <= 57))
	{
		return (uint32_t)(asciiChar - 47);
	}
	else if ((asciiChar >= 65) && (asciiChar <= 90))
	{
		return (uint32_t)(asciiChar - 54);
	}
	else
	{
		switch(asciiChar)
		{
		case ' ':
			return (uint32_t) 0;
			break;
		case '!':
			return (uint32_t) 37;
			break;
		case '?':
			return (uint32_t) 38;
			break;
		case '#':
			return (uint32_t) 39;
			break;
		case '$':
			return (uint32_t) 40;
			break;
		case '%':
			return (uint32_t) 41;
			break;
		case '&':
			return (uint32_t) 42;
			break;
		case '(':
			return (uint32_t) 43;
			break;
		case ')':
			return (uint32_t) 44;
			break;
		case '[':
			return (uint32_t) 45;
			break;
		case ']':
			return (uint32_t) 46;
			break;
		case '{':
			return (uint32_t) 47;
			break;
		case ':':
			return (uint32_t) 48;
			break;
		case '}':
			return (uint32_t) 49;
			break;
		case '*':
			return (uint32_t) 50;
			break;
		case '+':
			return (uint32_t) 51;
			break;
		case '-':
			return (uint32_t) 52;
			break;
		case '/':
			return (uint32_t) 53;
			break;
		case '<':
			return (uint32_t) 54;
			break;
		case '=':
			return (uint32_t) 55;
			break;
		case '>':
			return (uint32_t) 56;
			break;
		default:
			return (uint32_t) 1;
			break;
		}
	}
}

uint8_t GpuPutSprite (uint32_t x, uint32_t y, spriteChar eSprite, uint32_t spriteColor)
{
	BlockStruct sBlock;

	if (GpuGetBlock(x,y,&sBlock) != 0)
	{
		return 1;
	}
	else
	{
		switch(eSprite)
		{
		case sprAmplifier:
			sBlock.textChar = AMPLIFIER_CHAR;
			break;
		case sprBomb:
			sBlock.textChar = BOMB_CHAR;
			break;
		case sprCharBack:
			sBlock.textChar = CHAR_BACK_CHAR;
			break;
		case sprCharFront:
			sBlock.textChar = CHAR_FRONT_CHAR;
			break;
		case sprTransistor:
			sBlock.textChar = TRANSISTOR_CHAR;
			break;
		//sprite 62,63 empty
		case sprEmpty:
			sBlock.textChar = EMPTY_CHAR;
			break;
		default:
			return 1;
			break;
		}
		sBlock.textColor = spriteColor;
		GpuPutBlockStruct(x,y,&sBlock);
		return 0;
	}
}

