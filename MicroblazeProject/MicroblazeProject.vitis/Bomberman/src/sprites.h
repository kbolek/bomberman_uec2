#ifndef SPRITES_H
#define SPRITES_H

#include "timers_drv.h"
#include "gpu_drv.h"

#define SPRITES_COUNT 8

typedef struct
{
	uint32_t x;
	uint32_t y;
}position;

typedef struct
{
	position oldPosition;
	position newPosition;
	spriteChar spriteTexture;
	uint32_t spriteColor;
	uint8_t assignedTimer;
	uint32_t actionTime;
	void (*actionFunction)();
}sprite;

void initSprites ();

void refreshSprites ();

void clearSprite (uint8_t spriteId);

void moveSprite (uint8_t spriteId, position newPosition);

void setSpriteTexture (uint8_t spriteId, spriteChar spriteTexture);

void startSpriteTimer (uint8_t spriteId, uint32_t actionTime);

void stopSpriteTimer (uint8_t spriteId);

void assignSpriteFunction (uint8_t spriteId, void (*actionFunction)());

void emptySpriteFunction ();

#endif
