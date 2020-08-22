#include "xil_printf.h"
#include "sleep.h"

#include "gpu_drv.h"
#include "pad_drv.h"
#include "map.h"
#include "clock.h"

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
    //end of rubbish code


    GpuPutSprite(0,1,sprAmplifier,COLOR_RED);
    GpuPutSprite(1,1,sprBomb,COLOR_GREEN);
    GpuPutSprite(2,1,sprCharBack,COLOR_CYAN);
    GpuPutSprite(3,1,sprCharFront,COLOR_YELLOW);
    GpuPutSprite(4,1,sprTransistor,COLOR_MAGENTA);

    ClockInit();
    while(1)
    {

    	ShowTime();
    	PadsRead();
    	GpuPutBlock(1,0,0,sPads[0].buttons,0,0); //ogarnij ktory bit ktorego pada to ktory przycisk
    	GpuPutBlock(1,0,0,sPads[1].buttons,1,0);

    	//GpuGetBlock(0,0,&sBlock);
    	//sBlock.textureNumber = 4;
    	//DrawBackground(BlockStruct *sBlock)

    	//uint32_t time;
		//TimerRead(1,&time);
    	//uint32_t character = GpuNumberToChar((time/1000)%10);

    	//GpuPutChar(10,10,character);


    	//if((time%1000)==1)
    	//{
    		//print("Sekunda\n\r");
    		//usleep(1000);
    	//}
    }

    return 0;
}
