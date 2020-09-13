#include "xil_printf.h"
#include "sleep.h"
#include "game.h"
#include "endgame_info.h"

int main()
{

	InitGame();
    while(1)
    {
    	ShowTime();
    	PadsRead();

    	/*after 1 minute for now - when the game will be over
    	 * we set up appropriate the time in the definition*/
    	if(InfoFlag == 2)
    	{
    		ShowTheInfo(fired);
    	}
    	if(asTimeStruct.MinutesLSB == (TIME_TO_DRAW+1) && InfoFlag == 0){
    			ShowTheInfo(remis);
    	}
    	else
    	{
    		if(InfoFlag==1)
    		{
    			InitGame();
    			InfoFlag=0;
    		}

    		ChangePlayersPosition();
    		PutTheBomb();

    		refreshSprites();
    		usleep(1001);

    	}

    }

    return 0;
}
