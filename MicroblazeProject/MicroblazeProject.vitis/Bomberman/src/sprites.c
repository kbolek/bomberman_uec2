#include "sprites.h"

sprite asSprites[SPRITES_COUNT];

void initSprites ()
{
	position zeroPosition;	//out of screen = invisible;
	zeroPosition.x = 32;
	zeroPosition.y = 24;

	for (uint8_t currentSprite = 0; currentSprite < SPRITES_COUNT; currentSprite++)
	{
		asSprites[currentSprite].actionFunction = &emptySpriteFunction;
		asSprites[currentSprite].actionTime = 0;
		asSprites[currentSprite].spriteColor = COLOR_BLACK;
		asSprites[currentSprite].newPosition = zeroPosition;
		asSprites[currentSprite].oldPosition = zeroPosition;
		asSprites[currentSprite].spriteTexture = sprEmpty;
	}

	asSprites[0].assignedTimer = SPRITE0_TIMER_ID;
	asSprites[1].assignedTimer = SPRITE1_TIMER_ID;
	asSprites[2].assignedTimer = SPRITE2_TIMER_ID;
	asSprites[3].assignedTimer = SPRITE3_TIMER_ID;
	asSprites[4].assignedTimer = SPRITE4_TIMER_ID;
	asSprites[5].assignedTimer = SPRITE5_TIMER_ID;
	asSprites[6].assignedTimer = SPRITE6_TIMER_ID;
	asSprites[7].assignedTimer = SPRITE7_TIMER_ID;
}

void redrawSprite (uint8_t spriteId)
{
	GpuPutSprite(asSprites[spriteId].oldPosition.x,asSprites[spriteId].oldPosition.y,sprEmpty,COLOR_BLACK);
	GpuPutSprite(asSprites[spriteId].newPosition.x,asSprites[spriteId].newPosition.y,asSprites[spriteId].spriteTexture,asSprites[spriteId].spriteColor);
}

void refreshSprite (uint8_t spriteId)
{
	uint32_t timerValue;
	TimerRead(asSprites[spriteId].assignedTimer, &timerValue);

	if (timerValue >= asSprites[spriteId].actionTime)
	{
		asSprites[spriteId].actionFunction();
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

}

void moveSprite (uint8_t spriteId, position newPosition)
{

}

void setSpriteTexture (uint8_t spriteId, spriteChar spriteTexture)
{

}

void startSpriteTimer (uint8_t spriteId, uint32_t actionTime)
{

}

void stopSpriteTimer (uint8_t spriteId)
{

}

void assignSpriteFunction (uint8_t spriteId, void (*actionFunction)())
{

}

void emptySpriteFunction ()
{
	//intentionally empty
}
