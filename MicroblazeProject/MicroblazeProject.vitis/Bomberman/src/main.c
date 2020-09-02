#include "xil_printf.h"
#include "sleep.h"
#include "game.h"


int main()
{
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
