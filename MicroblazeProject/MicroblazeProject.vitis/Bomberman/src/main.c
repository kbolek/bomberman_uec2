#include "xil_printf.h"
#include "sleep.h"

#include "gpu_drv.h"
#include "pad_drv.h"
#include "map.h"
#include "clock.h"
#include "sprites.h"

void putHex(uint32_t inputHex, uint32_t x, uint32_t y)
{
	for (uint8_t i = 0; i < 8; i++)
	{
		uint32_t character = GpuNumberToChar((inputHex>>(28-4*i))&0xF);
		GpuPutChar(x+i,y,(character),COLOR_WHITE);
	}
}

int main()
{
	//rubbish code
    print("Hello World\n\r");
    BlockStruct sBlock;
    DrawMap(7,3,17,15,&sBlock);
    sBlock.textureType=FireWall;
    GpuPutBlockStruct (12, 8,&sBlock);
    sBlock.textureType=FireVertical;
    GpuPutBlockStruct (12, 9,&sBlock);
    sBlock.textureType=FireCorner;
    GpuPutBlockStruct (12, 10,&sBlock);
    sBlock.textureType=FireHorizontal;
    GpuPutBlockStruct (13, 10,&sBlock);


    sBlock.textureType=WallFront;
    DrawClockFrame(&sBlock);

    ClockInit();


    while(1)
    {
    	ShowTime();
    	PadsRead();
    	putHex(sPads[0].buttons,0,18);
    	putHex(sPads[1].buttons,0,19);

    	if (isButtonPressed(&sPads[0],PAD_ENTER_BIT)!=0)
    	{
    		GpuPutBlock(0,0,COLOR_WHITE,2,0,0); //1 na pozycji 0,0
    	}
    	else
    	{
    		GpuPutBlock(0,0,COLOR_WHITE,1,0,0); //0 na pozycji 0,0
    	}

    }

    return 0;
}
