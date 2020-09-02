#include "game.h"

void putHex(uint32_t inputHex, uint32_t x, uint32_t y)
{
	for (uint8_t i = 0; i < 8; i++)
	{
		uint32_t character = GpuNumberToChar((inputHex>>(28-4*i))&0xF);
		GpuPutChar(x+i,y,(character),COLOR_WHITE);
	}
}

uint8_t zeroSpriteActionFunction (uint8_t spriteId)
{
	static uint32_t i;
	setSpriteColor(0,i%8);
	i++;
	return 0;
}

uint8_t playerMoveFunction (uint8_t spriteId, int8_t deltaX, int8_t deltaY)
{
	uint32_t newX = asSprites[spriteId].oldX + deltaX;
	uint32_t newY = asSprites[spriteId].oldY + deltaY;

	if (checkCollision(newX, newY) == NO_COLLISION)
	{
		asSprites[spriteId].newX = newX;
		asSprites[spriteId].newY = newY;
	}

	return 0;
}

void InitGame(){
		InfoFlag=0;
	    print("Game started\n\r");
	    BlockStruct sBlock;
	    sBlock.textChar=0;
	    DrawMap(MAP_XPOS,MAP_YPOS,MAP_WIDTH,MAP_HEIGHT);


	    /*rubbish code*/
	    sBlock.textureType=FireWall;
	    GpuPutBlockStruct (12, 8,&sBlock);
	    sBlock.textureType=FireVertical;
	    GpuPutBlockStruct (12, 9,&sBlock);
	    sBlock.textureType=FireCorner;
	    GpuPutBlockStruct (12, 10,&sBlock);
	    sBlock.textureType=FireHorizontal;
	    GpuPutBlockStruct (13, 10,&sBlock);
	    /*end of rubbish code*/


	    DrawClockFrame();
	    ClockInit();
	    initSprites();
	    setSpriteTexture(0,sprCharFront);
	    setSpriteColor(0,COLOR_WHITE);
	    moveSpriteAbs(0,1,1);
	    assignSpriteActionFunction(0,zeroSpriteActionFunction);
	    assignSpriteMoveFunction(0,playerMoveFunction);
	    startSpriteTimer(0,1000);
}