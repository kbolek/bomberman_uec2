#include "sprites.h"

void initSprites ()
{
	asSprites[0].assignedTimer = SPRITE0_TIMER_ID;
	asSprites[1].assignedTimer = SPRITE1_TIMER_ID;
	asSprites[2].assignedTimer = SPRITE2_TIMER_ID;
	asSprites[3].assignedTimer = SPRITE3_TIMER_ID;
	asSprites[4].assignedTimer = SPRITE4_TIMER_ID;
	asSprites[5].assignedTimer = SPRITE5_TIMER_ID;
	asSprites[6].assignedTimer = SPRITE6_TIMER_ID;
	asSprites[7].assignedTimer = SPRITE7_TIMER_ID;
	asSprites[8].assignedTimer = SPRITE8_TIMER_ID;
	asSprites[9].assignedTimer = SPRITE9_TIMER_ID;
	asSprites[10].assignedTimer = SPRITE10_TIMER_ID;
	asSprites[11].assignedTimer = SPRITE11_TIMER_ID;
	asSprites[12].assignedTimer = SPRITE12_TIMER_ID;
	asSprites[13].assignedTimer = SPRITE13_TIMER_ID;
	asSprites[14].assignedTimer = SPRITE14_TIMER_ID;
	asSprites[15].assignedTimer = SPRITE15_TIMER_ID;
	asSprites[16].assignedTimer = SPRITE16_TIMER_ID;
	asSprites[17].assignedTimer = SPRITE17_TIMER_ID;
	asSprites[18].assignedTimer = SPRITE18_TIMER_ID;
	asSprites[19].assignedTimer = SPRITE19_TIMER_ID;

	for (uint8_t currentSprite = 0; currentSprite < SPRITES_COUNT; currentSprite++)
	{
		asSprites[currentSprite].actionFunction = &emptySpriteFunction;
		asSprites[currentSprite].moveFunction = &defaultMoveFunction;
		asSprites[currentSprite].actionTime = 1;
		setSpriteColor(currentSprite, COLOR_WHITE);
		asSprites[currentSprite].oldX = 32;
		asSprites[currentSprite].newX = 32;
		asSprites[currentSprite].oldY = 24;
		asSprites[currentSprite].newY = 24;
		setSpriteTexture(currentSprite, sprEmpty);
		stopSpriteTimer(currentSprite);
	}

}

void redrawSprite (uint8_t spriteId)
{
//	if ((asSprites[spriteId].oldX != asSprites[spriteId].newX) || (asSprites[spriteId].oldY != asSprites[spriteId].newY))
	//{
		GpuPutSprite(asSprites[spriteId].oldX,asSprites[spriteId].oldY,sprEmpty,COLOR_BLACK);
		GpuPutSprite(asSprites[spriteId].newX,asSprites[spriteId].newY,asSprites[spriteId].spriteTexture,asSprites[spriteId].spriteColor);

		asSprites[spriteId].oldX = asSprites[spriteId].newX;
		asSprites[spriteId].oldY = asSprites[spriteId].newY;
	//}
}

void refreshSprite (uint8_t spriteId)
{
	uint32_t timerValue;
	TimerRead(asSprites[spriteId].assignedTimer, &timerValue);

	if (timerValue >= asSprites[spriteId].actionTime)
	{
		uint8_t result = asSprites[spriteId].actionFunction(spriteId);
		if (result == 1)
		{
			stopSpriteTimer(spriteId);
		}
		else
		{
			restartSpriteTimer(spriteId);
		}
	}

	redrawSprite(spriteId);
}

void refreshSprites ()
{
	for (uint8_t currentSprite = 0; currentSprite < SPRITES_COUNT; currentSprite++)
	{
		refreshSprite (currentSprite);
	}
}

void clearSprite (uint8_t spriteId)
{
	moveSpriteAbs(spriteId, 32, 24);
	stopSpriteTimer(spriteId);
}

uint8_t moveSprite (uint8_t spriteId, int8_t deltaX, int8_t deltaY)
{
	return asSprites[spriteId].moveFunction(spriteId, deltaX, deltaY);
}

void moveSpriteAbs (uint8_t spriteId, uint32_t newX, uint32_t newY)
{
	asSprites[spriteId].newX = newX;
	asSprites[spriteId].newY = newY;
}

void setSpriteTexture (uint8_t spriteId, spriteChar spriteTexture)
{
	asSprites[spriteId].spriteTexture = spriteTexture;
}

void setSpriteColor (uint8_t spriteId, uint32_t spriteColor)
{
	asSprites[spriteId].spriteColor = spriteColor;
}

void startSpriteTimer (uint8_t spriteId, uint32_t actionTime)
{
	TimerSet(asSprites[spriteId].assignedTimer);
	asSprites[spriteId].actionTime = actionTime;
}

void stopSpriteTimer (uint8_t spriteId)
{
	TimerClear(asSprites[spriteId].assignedTimer);
}

void restartSpriteTimer (uint8_t spriteId)
{
	TimerRestart(asSprites[spriteId].assignedTimer);
}

void assignSpriteActionFunction (uint8_t spriteId, uint8_t (*actionFunction)(uint8_t spriteId))
{
	asSprites[spriteId].actionFunction = actionFunction;
}

void assignSpriteMoveFunction (uint8_t spriteId, uint8_t (*moveFunction)(uint8_t spriteId, int8_t deltaX, int8_t deltaY))
{
	asSprites[spriteId].moveFunction = moveFunction;
}

uint8_t checkCollision (uint32_t x, uint32_t y)
{
	BlockStruct sBlock;
	GpuGetBlock(x,y,&sBlock);

	switch(sBlock.textChar)
	{
	case AMPLIFIER_CHAR:
		return BONUS_COLLISION;
		break;

	case BOMB_CHAR:
		if(sBlock.textColor == BONUS_COLOR)
		{
			return BONUS_COLLISION;
		}
		else
		{
			return BOMB_COLLISION;
		}
		break;

	case CHAR_BACK_CHAR:
		return PLAYER_COLLISION;
		break;

	case CHAR_FRONT_CHAR:
		return PLAYER_COLLISION;
		break;

	case TRANSISTOR_CHAR:
		return BONUS_COLLISION;
		break;

	case EMPTY_CHAR:
		break;

	default:
		return CHAR_COLLISION;
		break;
	}
	//empty char here, check for block collision

	switch(sBlock.textureType)
	{
	case Background:
		return NO_COLLISION;
		break;

	case FireCorner:
		return FIRE_COLLISION;
		break;

	case FireVertical:
		return FIRE_COLLISION;
		break;

	case FireHorizontal:
		return FIRE_COLLISION;
		break;

	case Path:
		return NO_COLLISION;
		break;

	case FireWall:
		return WALL_COLLISION;
		break;

	case WallUsual:
		return BLOCK_COLLISION;
		break;

	case WallFront:
		return BLOCK_COLLISION;
		break;

	default:
		return BLOCK_COLLISION;
		break;
	}

	return NO_COLLISION;
}

uint8_t findSpriteId (uint32_t X, uint32_t Y)
{
	for (uint8_t currentSprite = 0; currentSprite < SPRITES_COUNT; currentSprite++)
		{
			if ((asSprites[currentSprite].oldX == X) && (asSprites[currentSprite].oldY == Y))
			{
				return currentSprite;
			}
		}

	return 255;
}

uint8_t emptySpriteFunction (uint8_t spriteId)
{
	return 0;
}

uint8_t defaultMoveFunction (uint8_t spriteId, int8_t deltaX, int8_t deltaY)
{
	asSprites[spriteId].newX = asSprites[spriteId].oldX + deltaX;
	asSprites[spriteId].newY = asSprites[spriteId].oldY + deltaY;
	return 0;
}
