#include "xil_printf.h"
#include "sleep.h"

#include "gpu_drv.h"
#include "pad_drv.h"
#include "map.h"
#include "clock.h"
#include "sprites.h"
#include "endgame_info.h"

#define TIME_TO_DRAW 1

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
	//rubbish code
	    print("Hello World\n\r");
	    BlockStruct sBlock;
	    sBlock.textChar=0;
	    DrawMap(7,3,17,15);
	    sBlock.textureType=FireWall;
	    GpuPutBlockStruct (12, 8,&sBlock);
	    sBlock.textureType=FireVertical;
	    GpuPutBlockStruct (12, 9,&sBlock);
	    sBlock.textureType=FireCorner;
	    GpuPutBlockStruct (12, 10,&sBlock);
	    sBlock.textureType=FireHorizontal;
	    GpuPutBlockStruct (13, 10,&sBlock);


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

int main()
{
	InitGame();
	InfoFlag=0;
    while(1)
    {
    	ShowTime();
    	PadsRead();

    	/*after 1 minute for now - when the game will be over
    	 * we set up appropriate the time in the definition*/
    	if(asTimeStruct.MinutesLSB == (TIME_TO_DRAW+1) && InfoFlag == 0){
    			ShowTheInfo(remis);
    	}
    	else{
    		if(InfoFlag==1){
    			InitGame();
    			InfoFlag=0;
    		}

    		if (isButtonPressed(&sPads[0],PAD_ENTER_BIT)!=0){
    		    GpuPutBlock(0,0,COLOR_WHITE,2,0,0); //1 na pozycji 0,0
    		    moveSprite(0,1,0);
    		}
    	    else{
    		    GpuPutBlock(0,0,COLOR_WHITE,1,0,0); //0 na pozycji 0,0
    		}

    		refreshSprites();
    		usleep(20000);

    	}

    }

    return 0;
}
