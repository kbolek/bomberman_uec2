#include "map.h"

/*WARNING: IT HAVE TO BE CHANGED IF YOU WANT TO CHANGE THE MAP SIZE*/
uint32_t Bonuses[16][3] = {
	/*SET UP EIGHT BOMBS */
	{MAP_XPOS+15,MAP_YPOS+8,sprBomb},
	{MAP_XPOS+11,MAP_YPOS+7,sprBomb},
	{MAP_XPOS+6,MAP_YPOS+11,sprBomb},
	{MAP_XPOS+7,MAP_YPOS+5,sprBomb},
	{MAP_XPOS+13,MAP_YPOS+3,sprBomb},
	{MAP_XPOS+1,MAP_YPOS+5,sprBomb},
	{MAP_XPOS+3,MAP_YPOS+8,sprBomb},
	{MAP_XPOS+4,MAP_YPOS+13,sprBomb},
	//END OF BOMBS

	/*SET UP SIX AMPLIFIERS*/
	{MAP_XPOS+2,MAP_YPOS+13,sprAmplifier},
	{MAP_XPOS+5,MAP_YPOS+7,sprAmplifier},
	{MAP_XPOS+8,MAP_YPOS+3,sprAmplifier},
	{MAP_XPOS+9,MAP_YPOS+7,sprAmplifier},
	{MAP_XPOS+11,MAP_YPOS+10,sprAmplifier},
	{MAP_XPOS+14,MAP_YPOS+7,sprAmplifier},

	/*SET UP 2 TRANSISTORS*/
	{MAP_XPOS+6,MAP_YPOS+2,sprTransistor},
	{MAP_XPOS+8,MAP_YPOS+13,sprTransistor}
	};

void DrawFireWalls(){
	//WARNING: IT HAVE TO BE CHANGED IF YOU WANT TO CHANGE THE MAP SIZE
	BlockStruct sBlock;
	sBlock.textureInversion = 0;
	sBlock.textChar = 0;
	sBlock.textureType = FireWall;

	//WARNING: IT HAVE TO BE CHANGED IF YOU WANT TO CHANGE THE MAP SIZE
	 DrawHLine(MAP_XPOS+4,MAP_YPOS+1,4,&sBlock);
	 DrawHLine(MAP_XPOS+11,MAP_YPOS+1,3,&sBlock);
	 DrawHLine(MAP_XPOS+7,MAP_YPOS+3,4,&sBlock);
	 DrawHLine(MAP_XPOS+6,MAP_YPOS+5,4,&sBlock);
	 DrawHLine(MAP_XPOS+9,MAP_YPOS+7,6,&sBlock);
	 DrawHLine(MAP_XPOS+1,MAP_YPOS+6,8,&sBlock);
	 DrawHLine(MAP_XPOS+5,MAP_YPOS+11,3,&sBlock);
	 DrawHLine(MAP_XPOS+1,MAP_YPOS+13,4,&sBlock);
	 DrawHLine(MAP_XPOS+8,MAP_YPOS+13,3,&sBlock);


	 DrawVLine(MAP_XPOS+1,MAP_YPOS+5,6,&sBlock);
	 DrawVLine(MAP_XPOS+3,MAP_YPOS+2,10,&sBlock);
	 DrawVLine(MAP_XPOS+5,MAP_YPOS+7,3,&sBlock);
	 DrawVLine(MAP_XPOS+7,MAP_YPOS+3,2,&sBlock);
	 DrawVLine(MAP_XPOS+9,MAP_YPOS+10,4,&sBlock);
	 DrawVLine(MAP_XPOS+11,MAP_YPOS+8,1,&sBlock);
	 DrawVLine(MAP_XPOS+11,MAP_YPOS+10,2,&sBlock);
	 DrawVLine(MAP_XPOS+13,MAP_YPOS+9,4,&sBlock);
	 DrawVLine(MAP_XPOS+13,MAP_YPOS+2,4,&sBlock);
	 DrawVLine(MAP_XPOS+15,MAP_YPOS+4,2,&sBlock);
	 DrawVLine(MAP_XPOS+15,MAP_YPOS+1,9,&sBlock);
}


uint32_t CheckBonuses(uint32_t Xpos, uint32_t Ypos){
	for(uint16_t BonusesCounter=0; BonusesCounter<16; BonusesCounter++){
			if(Bonuses[BonusesCounter][0] == Xpos && Bonuses[BonusesCounter][1] == Ypos){
				return IsBonusHere;
			}
		}
	return 0;
}

void PutTheBonus(uint32_t Xpos, uint32_t Ypos){
	for(uint16_t BonusesCounter=0; BonusesCounter<16; BonusesCounter++){
		if(Bonuses[BonusesCounter][0] == Xpos && Bonuses[BonusesCounter][1] == Ypos){
			uint32_t WhichBonus = Bonuses[BonusesCounter][2];
			GpuPutSprite(Xpos,Ypos,WhichBonus,COLOR_MAGENTA);
		}
	}
}

void ShowCollectedBonuses(uint8_t spriteId,uint8_t playerNumber){
	//Draw Available Bombs
	static uint8_t PlayerFirst;
	static uint8_t PlayerSecond;

	if(playerNumber == 0){
		moveSpriteAbs(spriteId,MAP_XPOS+MAP_WIDTH+2,MAP_YPOS+PlayerFirst);
		PlayerFirst++;
	}
	else if(playerNumber == 1){
		moveSpriteAbs(spriteId,MAP_XPOS-2,MAP_YPOS+PlayerSecond);
		PlayerSecond++;
	}

}

void PickUpTheBonus(uint32_t Xpos, uint32_t Ypos,uint8_t playerNumber,uint8_t spriteId){
	for(uint16_t BonusesCounter=0; BonusesCounter<16; BonusesCounter++){
			if(Bonuses[BonusesCounter][0] == Xpos && Bonuses[BonusesCounter][1] == Ypos){
				uint32_t WhichBonus = Bonuses[BonusesCounter][2];
				switch(WhichBonus){
						case sprAmplifier:
							//YOU CAN DO AN APPRIOPRIATE ANIMATION INSTEAD OF CLEAR SPRITE
							sPlayers[playerNumber].FirePower += 1;
							break;
						case sprBomb: //bomb
							sPlayers[playerNumber].BombsAvailable += 1;
							break;
						case sprTransistor: //transistor
							sPlayers[playerNumber].CanMoveBomb += 1;
							break;
					}
				ShowCollectedBonuses(spriteId,playerNumber);
			}
	}


}



/*Function always Put WallFront Block at the top and rest WallUsual*/
void DrawMap(uint32_t Xpos, uint32_t Ypos, uint32_t Width, uint32_t Height){
	BlockStruct sBlock;
	sBlock.textureInversion = 0;
	sBlock.textChar = 0;

	//main background
	DrawBackground();


	//map background (path)
	sBlock.textureType=Path;;
	for(uint32_t PathCounterV=0;PathCounterV<Height-2;PathCounterV++){
		for(uint32_t PathCounterH=0;PathCounterH<Width-2;PathCounterH++){
			GpuPutBlockStruct(Xpos+1+PathCounterH,Ypos+1+PathCounterV,&sBlock);
		}
	}

	//outside border
	sBlock.textureType=WallFront;
	DrawFrame(Xpos,Ypos,Width, Height, &sBlock);

	//blocked paths
	sBlock.textureType=WallUsual;
	for(uint32_t BlockedPathCounterV=0;BlockedPathCounterV<((Height/2)-1);BlockedPathCounterV++){
		for(uint32_t BlockedPathCounterH=0;BlockedPathCounterH<((Width/2)-1);BlockedPathCounterH++){
			GpuPutBlockStruct(Xpos+2+(BlockedPathCounterH*2),(Ypos+2)+(BlockedPathCounterV*2),&sBlock);
		}
	}

	//fire walls
	DrawFireWalls();

}

