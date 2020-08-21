#include "gpu_drv.h"

uint32_t *Gpu_Ptr = (uint32_t *) GPU_BLOCK_ADDR;

uint32_t GpuPutBlock(uint32_t textureInversion, uint32_t textureType, uint32_t textColor, uint32_t textChar, uint32_t x, uint32_t y)
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

uint32_t GpuPutBlockStruct (uint32_t x, uint32_t y, BlockStruct *sBlock)
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

uint32_t GpuGetBlock (uint32_t x, uint32_t y, BlockStruct *sBlock)
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

uint32_t GpuPutChar (uint32_t x, uint32_t y, uint32_t textChar, uint32_t textColor)
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

uint32_t GpuReadChar (uint32_t x, uint32_t y, uint32_t *textChar, uint32_t *textColor)
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

uint32_t GpuNumberToChar (uint32_t number)
{
	return (number+1);
}

uint32_t GpuAsciiToChar (char asciiChar)
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
