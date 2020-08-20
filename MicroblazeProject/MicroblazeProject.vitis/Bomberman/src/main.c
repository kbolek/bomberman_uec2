#include "xil_printf.h"
#include "sleep.h"

#include "gpu_drv.h"
#include "timers_drv.h"
#include "pad_drv.h"

int main()
{
    print("Hello World\n\r");

    BlockStruct sBlock;
    sBlock.textureNumber = 5;

    for (uint32_t x = 0; x < 32; x++)
        {
        	for (uint32_t y = 0; y < 24; y++)
        	{
        		GpuPutBlockStruct(x,y,&sBlock);
        	}
        }

    TimerClearAll();
    TimerSet(1);

    while(1)
    {
    	PadsRead();
    	GpuPutBlock(1,0,0,sPads[0].buttons,0,0);

    	GpuGetBlock(0,0,&sBlock);
    	sBlock.textureNumber = 4;
    	GpuPutBlockStruct(2,2,&sBlock);

    	uint32_t time;
		TimerRead(1,&time);
    	uint32_t character = GpuNumberToChar((time/1000)%10);

    	GpuPutChar(10,10,character);


    	if((time%1000)==1)
    	{
    		print("Sekunda\n\r");
    		usleep(1000);
    	}
    }

    return 0;
}