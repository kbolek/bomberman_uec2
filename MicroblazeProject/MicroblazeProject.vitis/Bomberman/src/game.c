#include "game.h"
#include "textures.h"

/*SPOKOJNIE MORDO POTEM ZROBI SIE REFAKTURYZACJE TYCH FUNKCJI TUTAJ*/

void putHex(uint32_t inputHex, uint32_t x, uint32_t y)
{
	for (uint8_t i = 0; i < 8; i++)
	{
		uint32_t character = GpuNumberToChar((inputHex>>(28-4*i))&0xF);
		GpuPutChar(x+i,y,(character),COLOR_WHITE);
	}
}

uint8_t zeroSpriteActionFunction (uint8_t spriteId)
{
	static uint32_t i;
	setSpriteColor(0,i%8);
	i++;
	return 0;
}

uint8_t playerMoveFunction (uint8_t spriteId, int8_t deltaX, int8_t deltaY)
{
	uint32_t newX = asSprites[spriteId].oldX + deltaX;
	uint32_t newY = asSprites[spriteId].oldY + deltaY;

	if (checkCollision(newX, newY) == NO_COLLISION)
	{
		asSprites[spriteId].newX = newX;
		asSprites[spriteId].newY = newY;
		return 0;
	}
	else
	{
		return 1;
	}
}

uint8_t playerMoveFunctionBonus (uint8_t spriteId, int8_t deltaX, int8_t deltaY)
{
	uint32_t newX = asSprites[spriteId].oldX + deltaX;
	uint32_t newY = asSprites[spriteId].oldY + deltaY;

	if (checkCollision(newX, newY) == NO_COLLISION)
	{
		asSprites[spriteId].newX = newX;
		asSprites[spriteId].newY = newY;
		return 0;
	}
	else if (checkCollision(newX, newY) == BOMB_COLLISION)
	{
		uint8_t bombId = findSpriteId(newX, newY);

		if (moveSprite(bombId, newX, newY) == 0)
		{
			asSprites[spriteId].newX = newX;
			asSprites[spriteId].newY = newY;
			return 0;
		}
		else
		{
			return 1;
		}
	}
	return 1;
}

uint8_t bombMoveFunction(uint8_t spriteId, int8_t deltaX, int8_t deltaY)
{
	uint32_t newX = asSprites[spriteId].oldX + deltaX;
	uint32_t newY = asSprites[spriteId].oldY + deltaY;

	if (checkCollision(newX, newY) == NO_COLLISION)
	{
		asSprites[spriteId].newX = newX;
		asSprites[spriteId].newY = newY;
		return 0;
	}
	else
	{
		return 1;
	}
}

void InitPlayers(){

			sPlayers[0].PlayerXPosition=PLAYER_ZERO_START_POSITION_X;
			sPlayers[0].PlayerYPosition=PLAYER_ZERO_START_POSITION_Y;
			sPlayers[0].PlayerColor=COLOR_BLUE;
			sPlayers[0].BombsAvailable=BOMBS_AVAILABLE_ON_START;
			sPlayers[0].CanMoveBomb=0;
			sPlayers[0].FirePower=1;

			sPlayers[1].PlayerXPosition=PLAYER_ONE_START_POSITION_X;
			sPlayers[1].PlayerYPosition=PLAYER_ONE_START_POSITION_Y;
			sPlayers[1].PlayerColor=COLOR_RED;
			sPlayers[1].BombsAvailable=BOMBS_AVAILABLE_ON_START;
			sPlayers[1].CanMoveBomb=0;
			sPlayers[1].FirePower=1;

			for(uint8_t PlayersCounter=0;PlayersCounter<PLAYERS;PlayersCounter++){
				setSpriteTexture(PlayersCounter,sprCharFront);
				setSpriteColor(PlayersCounter,sPlayers[PlayersCounter].PlayerColor);
				moveSpriteAbs(PlayersCounter,sPlayers[PlayersCounter].PlayerXPosition,sPlayers[PlayersCounter].PlayerYPosition);
				//assignSpriteActionFunction(PlayersCounter,zeroSpriteActionFunction);
				assignSpriteMoveFunction(PlayersCounter,playerMoveFunction);
			    //startSpriteTimer(PlayersCounter,1000);
			}

}


void InitGame(){
		InfoFlag=0;

		GpuSetTexture(0,texture0);
		GpuSetTexture(1,texture1);
		GpuSetTexture(2,texture2);
		GpuSetTexture(3,texture3);
		GpuSetTexture(4,texture4);
		GpuSetTexture(5,texture5);
		GpuSetTexture(6,texture7);
		GpuSetTexture(7,texture6);

	    DrawMap(MAP_XPOS,MAP_YPOS,MAP_WIDTH,MAP_HEIGHT);


	    /*rubbish code*/

	    BlockStruct sBlock;
	  	sBlock.textChar=0;
	  	sBlock.textureInversion=0;
	    sBlock.textureType=FireWall;
	    GpuPutBlockStruct (12, 8,&sBlock);
	    sBlock.textureType=FireVertical;
	    GpuPutBlockStruct (12, 9,&sBlock);
	    sBlock.textureType=FireCorner;
	    GpuPutBlockStruct (12, 10,&sBlock);
	    sBlock.textureType=FireHorizontal;
	    GpuPutBlockStruct (13, 10,&sBlock);
	    /*end of rubbish code*/


	    DrawClockFrame();
	    ClockInit();


	    initSprites();
	    /*set up players*/
	    InitPlayers();
	    print("Game started\n\r");
	    /*set up the bombs*/
	    for(uint16_t BombIndexCounter = 0;BombIndexCounter < MAX_BOMBS; BombIndexCounter++){
	    	sBombs[BombIndexCounter].IsPuted=0;
	    	sBombs[BombIndexCounter].BombTimeDuration=BOMB_TIME_DURATION;
	    }
}

void ChangePlayersPosition(){
	static PadStruct oldPads[PADS_COUNT];

	for(uint8_t PlayersCounter=0; PlayersCounter<PLAYERS;PlayersCounter++)
	{
		if ((isButtonPressed(&sPads[PlayersCounter],PAD_RIGHT_BIT)!=0) && (isButtonPressed(&oldPads[PlayersCounter],PAD_RIGHT_BIT)==0)){
			moveSprite(PlayersCounter,1,0);
			sPlayers[PlayersCounter].PlayerXPosition += 1;
		}
		else if ((isButtonPressed(&sPads[PlayersCounter],PAD_LEFT_BIT)!=0) && (isButtonPressed(&oldPads[PlayersCounter],PAD_LEFT_BIT)==0)!=0){
			moveSprite(PlayersCounter,-1,0);
			sPlayers[PlayersCounter].PlayerXPosition -= 1;
		}
		else if ((isButtonPressed(&sPads[PlayersCounter],PAD_UP_BIT)!=0) && (isButtonPressed(&oldPads[PlayersCounter],PAD_UP_BIT)==0)!=0){
			moveSprite(PlayersCounter,0,-1);
			sPlayers[PlayersCounter].PlayerYPosition -= 1;
		}
		else if ((isButtonPressed(&sPads[PlayersCounter],PAD_DOWN_BIT)!=0) && (isButtonPressed(&oldPads[PlayersCounter],PAD_DOWN_BIT)==0)!=0){
			moveSprite(PlayersCounter,0,1);
			sPlayers[PlayersCounter].PlayerXPosition += 1;
		}
		oldPads[PlayersCounter].buttons = sPads[PlayersCounter].buttons;
	}
}


//it isn't working good for now :D
void PutTheBomb(){
	for(uint8_t PlayersCounter=0; PlayersCounter<PLAYERS;PlayersCounter++){
			if((isButtonPressed(&sPads[PlayersCounter],PAD_ENTER_BIT) != 0)){
				if(sPlayers[PlayersCounter].BombsAvailable > 0){
					for(uint16_t BombIndexCounter=0;sBombs[BombIndexCounter].IsPuted != 0 || BombIndexCounter<MAX_BOMBS; BombIndexCounter++){
						setSpriteTexture(BombIndexCounter,sprBomb);
						setSpriteColor(BombIndexCounter+2,sPlayers[PlayersCounter].PlayerColor);
						moveSpriteAbs(BombIndexCounter+2,sPlayers[PlayersCounter].PlayerXPosition,sPlayers[PlayersCounter].PlayerYPosition);
						sBombs[BombIndexCounter].IsPuted = 1;
						sPlayers[PlayersCounter].BombsAvailable  -= 1;
					}
				}
			}
	}

}
