#include "endgame_info.h"

uint32_t InfoFlag;



void ShowTheText(uint32_t Xpos, uint32_t Ypos, char *TextChar,uint32_t TextColor){
	size_t TextLength = strlen(TextChar);
	uint32_t CharCounter = 0;


	for(CharCounter=0; CharCounter<TextLength; CharCounter++){
		uint32_t ActualTextColor = (TextColor==COLORFUL) ? ((CharCounter)%8)+1: TextColor;
		uint8_t cActualCharacter = GpuAsciiToChar(TextChar[CharCounter]);
		GpuPutChar(Xpos+CharCounter,Ypos,cActualCharacter,ActualTextColor);
	}

}

void ShowTheInfo(GameResult eGameResult){
		BlockStruct sBlock;
		DrawBackground(); //clear the screen
		sBlock.textureType=WallFront;
		sBlock.textureInversion = 0;
		sBlock.textChar = 0;
		DrawFrame(XPOS_EG, YPOS_EG,WIDTH_EG,LENGTH_EG, &sBlock);

		ShowTheText(XPOS_EG+3,YPOS_EG+2,"GAME OVER", COLORFUL);

		if(eGameResult == remis){
			ShowTheText(XPOS_EG+4,YPOS_EG+4,"REMIS",COLOR_RED);
			ShowTheText(XPOS_EG+1,YPOS_EG+6,"AGAIN PRESS B",COLOR_WHITE);
		}



		while(!InfoFlag){
		PadsRead();
		if(isButtonPressed(&sPads[0],PAD_ENTER_BIT) != 0){
			InfoFlag = 1;
		}
	}
}
