#include "endgame_info.h"


void ShowTheInfo(GameResult eGameResult){
		BlockStruct sBlock;
		DrawBackground(); //clear the screen
		sBlock.textureType=WallFront;
		sBlock.textureInversion = 0;
		sBlock.textChar = 0;
		DrawFrame(XPOS_EG, YPOS_EG,WIDTH_EG,LENGTH_EG, &sBlock);

		ShowTheText(XPOS_EG+4,YPOS_EG+2,"GAME OVER", COLORFUL);

		if(eGameResult == remis){
			ShowTheText(XPOS_EG+6,YPOS_EG+4,"REMIS",COLOR_RED);
			ShowTheText(XPOS_EG+2,YPOS_EG+6,"AGAIN PRESS",COLOR_WHITE);
			GpuPutSprite(XPOS_EG+14,YPOS_EG+6,sprBomb,COLOR_WHITE);
		}
		else if(eGameResult == fired){
			if(sPlayers[0].IfLose != 1){
				GpuPutSprite(XPOS_EG+6,YPOS_EG+4,sprCharFront,sPlayers[0].PlayerColor);
				ShowTheText(XPOS_EG+8,YPOS_EG+4,"WON",sPlayers[0].PlayerColor);
			}
			else{
				GpuPutSprite(XPOS_EG+6,YPOS_EG+4,sprCharFront,sPlayers[1].PlayerColor);
				ShowTheText(XPOS_EG+8,YPOS_EG+4,"WON",sPlayers[1].PlayerColor);
			}

			ShowTheText(XPOS_EG+2,YPOS_EG+6,"AGAIN PRESS",COLOR_WHITE);
			GpuPutSprite(XPOS_EG+14,YPOS_EG+6,sprBomb,COLOR_WHITE);
		}

		InfoFlag = (InfoFlag == 2) ? 0 : InfoFlag;
		while(!InfoFlag){
		PadsRead();
		//DOIT: in the end of making the game change or in if statement for and - both players have to accept the new game
		if((isButtonPressed(&sPads[0],PAD_ENTER_BIT) != 0) || (isButtonPressed(&sPads[1],PAD_ENTER_BIT) != 0) ){
			InfoFlag = 1;
		}
	}
}