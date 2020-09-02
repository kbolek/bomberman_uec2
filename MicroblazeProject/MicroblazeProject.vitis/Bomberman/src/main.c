#include "xil_printf.h"
#include "sleep.h"
#include "game.h"
#include "textures.h"

int main()
{
	GpuSetTexture(0,texture0);
	GpuSetTexture(1,texture1);
	GpuSetTexture(2,texture2);
	GpuSetTexture(3,texture3);
	GpuSetTexture(4,texture4);
	GpuSetTexture(5,texture5);
	GpuSetTexture(6,texture6);
	GpuSetTexture(7,texture7);

	InitGame();
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

    		if (isButtonPressed(&sPads[0],PAD_RIGHT_BIT)!=0){
    		    moveSprite(0,1,0);
    		}
    		else if (isButtonPressed(&sPads[0],PAD_LEFT_BIT)!=0){
    			moveSprite(0,-1,0);
    		}
    		else if (isButtonPressed(&sPads[0],PAD_UP_BIT)!=0){
    		    moveSprite(0,0,-1);
    		}
    		else if (isButtonPressed(&sPads[0],PAD_DOWN_BIT)!=0){
    		    moveSprite(0,0,1);
    		}

    		refreshSprites();
    		usleep(20000);

    	}

    }

    return 0;
}
