#include "game.h"
#include "textures.h"

BombStates eBombStates [SPRITES_COUNT];

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

	/*if (checkCollision(newX, newY) == NO_COLLISION)
	{
		asSprites[spriteId].newX = newX;
		asSprites[spriteId].newY = newY;
		sPlayers[spriteId].PlayerXPosition = newX;
		sPlayers[spriteId].PlayerYPosition = newY;
		return 0;
	}
	else
	{
		return 1;
	}*/
	uint8_t BonusSpriteId = findSpriteId(newX, newY);
	switch(checkCollision(newX, newY)){
		case NO_COLLISION:
			asSprites[spriteId].newX = newX;
			asSprites[spriteId].newY = newY;
			sPlayers[spriteId].PlayerXPosition = newX;
			sPlayers[spriteId].PlayerYPosition = newY;
			return 0;
			break;

		case BONUS_COLLISION:
				PickUpTheBonus(newX,newY,spriteId,BonusSpriteId);
				break;


		case BOMB_COLLISION:
			if(CheckBonuses(newX,newY) == IsBonusHere && asSprites[BonusSpriteId].spriteTexture==sprBomb){
				PickUpTheBonus(newX,newY,spriteId,BonusSpriteId);
			}
			else{
				if(moveSprite(BonusSpriteId, newX, newY) == 0)
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
			break;

		default:
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
			sPlayers[0].FirePower=2;

			sPlayers[1].PlayerXPosition=PLAYER_ONE_START_POSITION_X;
			sPlayers[1].PlayerYPosition=PLAYER_ONE_START_POSITION_Y;
			sPlayers[1].PlayerColor=COLOR_RED;
			sPlayers[1].BombsAvailable=BOMBS_AVAILABLE_ON_START;
			sPlayers[1].CanMoveBomb=0;
			sPlayers[1].FirePower=2;

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

	    DrawClockFrame();
	    ClockInit();


	    initSprites();
	    /*set up players*/
	    InitPlayers();
	    print("Game started\n\r");
	    /*set up the bombs*/
	    for(uint16_t BombIndexCounter = 0;BombIndexCounter < MAX_BOMBS; BombIndexCounter++){
	    	sBombs[BombIndexCounter].IsPuted=0;
	    	eBombStates[BombIndexCounter] = WAITING;
	    }
}

void ChangePlayersPosition(){
	static PadStruct oldPads[PADS_COUNT];

	for(uint8_t PlayersCounter=0; PlayersCounter<PLAYERS;PlayersCounter++)
	{
		if(isButtonPressed(&sPads[PlayersCounter],PAD_ENTER_BIT) == 0)
			{
				if ((isButtonPressed(&sPads[PlayersCounter],PAD_RIGHT_BIT)!=0) && (isButtonPressed(&oldPads[PlayersCounter],PAD_RIGHT_BIT)==0))
				{
					moveSprite(PlayersCounter,1,0);
				}
				else if ((isButtonPressed(&sPads[PlayersCounter],PAD_LEFT_BIT)!=0) && (isButtonPressed(&oldPads[PlayersCounter],PAD_LEFT_BIT)==0)!=0)
				{
					moveSprite(PlayersCounter,-1,0);
				}
				else if ((isButtonPressed(&sPads[PlayersCounter],PAD_UP_BIT)!=0) && (isButtonPressed(&oldPads[PlayersCounter],PAD_UP_BIT)==0)!=0)
				{
					moveSprite(PlayersCounter,0,-1);
				}
				else if ((isButtonPressed(&sPads[PlayersCounter],PAD_DOWN_BIT)!=0) && (isButtonPressed(&oldPads[PlayersCounter],PAD_DOWN_BIT)==0)!=0)
				{
					moveSprite(PlayersCounter,0,1);
				}
			}
		oldPads[PlayersCounter].buttons = sPads[PlayersCounter].buttons;
	}
}




uint8_t BombActionFunction(uint8_t spriteId)
{
	uint8_t PlayerId = asSprites[spriteId].PlayerId;
	uint8_t PlayerFirePower = sPlayers[PlayerId].FirePower;

	switch (eBombStates[spriteId])
	{
		case WAITING:
			eBombStates[spriteId] = EXPLODING;
			asSprites[spriteId].actionTime = 250;
			return 0;
			break;

		case EXPLODING:
			CrossPlacer(asSprites[spriteId].oldX,asSprites[spriteId].oldY,0,PlayerFirePower);
			asSprites[spriteId].actionTime = 250;
			eBombStates[spriteId] = BURNING;
			return 0;
			break;

		case BURNING:
			CrossPlacer(asSprites[spriteId].oldX,asSprites[spriteId].oldY,1,PlayerFirePower);
			asSprites[spriteId].actionTime = 250;
			eBombStates[spriteId] = DESTROYING;
			return 0;
			break;

		case DESTROYING:
			CrossPlacer(asSprites[spriteId].oldX,asSprites[spriteId].oldY,0,-(PlayerFirePower));
			asSprites[spriteId].actionTime = BOMB_TIME_DURATION*1000;
			eBombStates[spriteId] = WAITING;

			sBombs[spriteId-2].IsPuted = 0;
			clearSprite(spriteId);
			sPlayers[PlayerId].BombsAvailable += 1;
			return 1;
			break;

		default:
			asSprites[spriteId].actionTime = BOMB_TIME_DURATION*1000;
			eBombStates[spriteId] = WAITING;
			return 0;
			break;
	}
}

void HandlingTheBomb(uint8_t spriteId,uint8_t playerId)
{
	asSprites[spriteId].PlayerId = playerId;
	assignSpriteActionFunction(spriteId,BombActionFunction);
	startSpriteTimer(spriteId,BOMB_TIME_DURATION*1000);
}


void PutTheBomb(){
	static PadStruct oldPads[PADS_COUNT];

	for(uint8_t PlayersCounter=0; PlayersCounter<PLAYERS;PlayersCounter++)
	{
		if(isButtonPressed(&sPads[PlayersCounter],PAD_ENTER_BIT) != 0)
		{
			if ((isButtonPressed(&sPads[PlayersCounter],PAD_RIGHT_BIT)!=0) && (isButtonPressed(&oldPads[PlayersCounter],PAD_RIGHT_BIT)==0))
			{
				PlaceBomb(PlayersCounter,1,0);
			}
			else if ((isButtonPressed(&sPads[PlayersCounter],PAD_LEFT_BIT)!=0) && (isButtonPressed(&oldPads[PlayersCounter],PAD_LEFT_BIT)==0)!=0)
			{
				PlaceBomb(PlayersCounter,-1,0);
			}
			else if ((isButtonPressed(&sPads[PlayersCounter],PAD_UP_BIT)!=0) && (isButtonPressed(&oldPads[PlayersCounter],PAD_UP_BIT)==0)!=0)
			{
				PlaceBomb(PlayersCounter,0,-1);
			}
			else if ((isButtonPressed(&sPads[PlayersCounter],PAD_DOWN_BIT)!=0) && (isButtonPressed(&oldPads[PlayersCounter],PAD_DOWN_BIT)==0)!=0)
			{
				PlaceBomb(PlayersCounter,0,1);
			}
		}
		oldPads[PlayersCounter].buttons = sPads[PlayersCounter].buttons;
	}
}

void PlaceBomb (uint8_t playerNumber, int8_t deltaX, int8_t deltaY)
{
	if(sPlayers[playerNumber].BombsAvailable > 0)
	{
		for(uint16_t BombsCounter=0; BombsCounter<MAX_BOMBS ; BombsCounter++)
		{
			if ((sBombs[BombsCounter].IsPuted == 0) && (checkCollision(sPlayers[playerNumber].PlayerXPosition+deltaX,sPlayers[playerNumber].PlayerYPosition+deltaY) == NO_COLLISION))
			{
				sBombs[BombsCounter].IsPuted = 1;
				setSpriteTexture(BombsCounter+2,sprBomb);
				setSpriteColor(BombsCounter+2,sPlayers[playerNumber].PlayerColor);
				moveSpriteAbs(BombsCounter+2,sPlayers[playerNumber].PlayerXPosition+deltaX,sPlayers[playerNumber].PlayerYPosition+deltaY);
				HandlingTheBomb(BombsCounter+2,playerNumber);
				sPlayers[playerNumber].BombsAvailable -= 1;
				break;
			}

		}
	}
}

void CrossPlacer (uint32_t centerX, uint32_t centerY, uint32_t inversion, int8_t distance)
{
	BlockStruct sBlock;

	GpuGetBlock(centerX, centerY, &sBlock);
	sBlock.textureInversion = inversion;
	if (distance < 0)
	{
		sBlock.textureType = Path;

	}
	else
	{
		sBlock.textureType = FireCorner;
	}
	GpuPutBlockStruct(centerX, centerY, &sBlock);
	PutTheBonus(centerX,centerY);


	for (int8_t dxPlus = 1; dxPlus < abs(distance); dxPlus++)
	{
		GpuGetBlock(centerX+dxPlus, centerY, &sBlock);
		sBlock.textureInversion = inversion;

		if (distance < 0)
		{
			sBlock.textureType = Path;
		}
		else
		{
			sBlock.textureType = FireHorizontal;
		}

		if (checkCollision(centerX+dxPlus, centerY) == BLOCK_COLLISION)
		{
			break;
		}
		else
		{
			GpuPutBlockStruct(centerX+dxPlus, centerY, &sBlock);
			PutTheBonus(centerX+dxPlus,centerY);
		}
	}

	for (int8_t dxMinus = 1; dxMinus < abs(distance); dxMinus++)
	{
		GpuGetBlock(centerX-dxMinus, centerY, &sBlock);
		sBlock.textureInversion = inversion;

		if (distance < 0)
		{
			sBlock.textureType = Path;
		}
		else
		{
			sBlock.textureType = FireHorizontal;
		}

		if (checkCollision(centerX-dxMinus, centerY) == BLOCK_COLLISION)
		{
			break;
		}
		else
		{
			GpuPutBlockStruct(centerX-dxMinus, centerY, &sBlock);
			PutTheBonus(centerX-dxMinus,centerY);
		}
	}

	for (int8_t dyPlus = 1; dyPlus < abs(distance); dyPlus++)
	{
		GpuGetBlock(centerX, centerY+dyPlus, &sBlock);
		sBlock.textureInversion = inversion;

		if (distance < 0)
		{
			sBlock.textureType = Path;
		}
		else
		{
			sBlock.textureType = FireHorizontal;
		}

		if (checkCollision(centerX, centerY+dyPlus) == BLOCK_COLLISION)
		{
			break;
		}
		else
		{
			GpuPutBlockStruct(centerX, centerY+dyPlus, &sBlock);
			PutTheBonus(centerX,centerY+dyPlus);
		}
	}

	for (int8_t dyMinus = 1; dyMinus < abs(distance); dyMinus++)
	{
		GpuGetBlock(centerX, centerY-dyMinus, &sBlock);
		sBlock.textureInversion = inversion;

		if (distance < 0)
		{
			sBlock.textureType = Path;
		}
		else
		{
			sBlock.textureType = FireHorizontal;
		}

		if (checkCollision(centerX, centerY-dyMinus) == BLOCK_COLLISION)
		{
			break;
		}
		else
		{
			GpuPutBlockStruct(centerX, centerY-dyMinus, &sBlock);
			PutTheBonus(centerX,centerY-dyMinus);
		}
	}

}
