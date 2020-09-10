#include "map.h"



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

	uint32_t Bonuses[17][3] = {
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

	spriteChar WhichBonus;
	/*WARNING: IT HAVE TO BE CHANGED IF YOU WANT TO CHANGE THE MAP SIZE*/
	for(uint16_t BonusesCounter=0; BonusesCounter<16; BonusesCounter++){
		if(Bonuses[BonusesCounter][0] == Xpos && Bonuses[BonusesCounter][1] == Ypos){
			WhichBonus = Bonuses[BonusesCounter][2];
			return WhichBonus;
		}
		else{
			return 20;
		}
	}

	return 20;
}

void PutTheBonus(uint32_t Xpos, uint32_t Ypos){
	spriteChar WhichBonus = CheckBonuses(Xpos,Ypos);
	if(WhichBonus==sprAmplifier || WhichBonus == sprBomb || WhichBonus == sprTransistor){
		GpuPutSprite(Xpos,Ypos,WhichBonus,COLOR_MAGENTA);
	}

}



void PickUpTheBonus(uint32_t Xpos, uint32_t Ypos,uint8_t playerNumber,uint8_t spriteId){
	uint32_t WhichBonus = CheckBonuses(Xpos,Ypos);
	switch(WhichBonus){
		case sprAmplifier:
			//YOU CAN DO AN APPRIOPRIATE ANIMATION INSTEAD OF CLEAR SPRITE
			clearSprite(spriteId);
			sPlayers[playerNumber].FirePower += 1;
			break;
		case sprBomb: //bomb
			clearSprite(spriteId);
			sPlayers[playerNumber].BombsAvailable += 1;
			break;
		case sprTransistor: //transistor
			clearSprite(spriteId);
			sPlayers[playerNumber].CanMoveBomb += 1;
			break;
		case 6:
			break;
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

