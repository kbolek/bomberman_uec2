#ifndef SPRITES_H
#define SPRITES_H

#include "timers_drv.h"
#include "gpu_drv.h"

#define SPRITES_COUNT 8

typedef struct
{
	uint32_t newX;
	uint32_t newY;
	uint32_t oldX;
	uint32_t oldY;
	spriteChar spriteTexture;
	uint32_t spriteColor;
	uint8_t assignedTimer;
	uint32_t actionTime;
	uint8_t (*actionFunction)(uint8_t spriteId);
	uint8_t (*moveFunction)(uint8_t spriteId, int8_t deltaX, int8_t deltaY);
}sprite;

void initSprites ();

void refreshSprites ();

void clearSprite (uint8_t spriteId);

void moveSprite (uint8_t spriteId, int8_t deltaX, int8_t deltaY);

void moveSpriteAbs (uint8_t spriteId, uint32_t newX, uint32_t newY);

void setSpriteTexture (uint8_t spriteId, spriteChar spriteTexture);

void setSpriteColor (uint8_t spriteId, uint32_t spriteColor);

void startSpriteTimer (uint8_t spriteId, uint32_t actionTime);

void stopSpriteTimer (uint8_t spriteId);

void restartSpriteTimer (uint8_t spriteId);

void assignSpriteActionFunction (uint8_t spriteId, uint8_t (*actionFunction)(uint8_t spriteId));

void assignSpriteMoveFunction (uint8_t spriteId, uint8_t (*moveFunction)(uint8_t spriteId, int8_t deltaX, int8_t deltaY));

uint8_t emptySpriteFunction (uint8_t spriteId);

uint8_t defaultMoveFunction (uint8_t spriteId, int8_t deltaX, int8_t deltaY);

#endif
