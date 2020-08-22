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
    char cColon = GpuAsciiToChar(':');



    ClockInit();
    while(1)
    {

    	ShowTime();
    	PadsRead();


    	//unfortunately it doesn't works - i don't have idea why.
    	switch(sPads[0].buttons){
    	    		case UPPER_BTN:
    	    			GpuPutSprite(0,1,sprAmplifier,COLOR_GREEN);
    	    		break;
    	    		case DOWN_BTN:
    	    			 GpuPutSprite(0,1,sprBomb,COLOR_GREEN);
    	    		break;
    	    		case RIGHT_BTN:
    	    			  GpuPutSprite(0,1,sprCharBack,COLOR_GREEN);
    	    		break;

    	    		case LEFT_BTN:
    	    			GpuPutSprite(0,1,sprCharFront,COLOR_GREEN);
    	    		break;

    	    		case FIRST_P_BOMB_BTN:
    	    			GpuPutSprite(0,1,sprTransistor,COLOR_GREEN);
    	    		break;



    	    	}


    }

    return 0;
}
