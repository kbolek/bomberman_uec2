#ifndef SPRITES_H
#define SPRITES_H

#include "drv/timers_drv.h"
#include "drv/gpu_drv.h"

#define SPRITES_COUNT 20

#define BONUS_COLOR COLOR_MAGENTA

#define NO_COLLISION (uint8_t) 0 //no sprite, nor solid block in the way
#define BOMB_COLLISION (uint8_t) 1 //only bomb collision
#define PLAYER_COLLISION (uint8_t) 2 //any other sprite collision
#define BONUS_COLLISION (uint8_t) 3
#define BLOCK_COLLISION (uint8_t) 4 //collision with block (different than background)
#define CHAR_COLLISION (uint8_t) 5 //collision with some char
#define WALL_COLLISION (uint8_t) 7 //collision with FireWall
#define FIRE_COLLISION (uint8_t) 6 //self explanatory

typedef struct
{
	uint32_t newX;
	uint32_t newY;
	uint32_t oldX;
	uint32_t oldY;
	spriteChar spriteTexture;
	uint32_t spriteColor;
	uint8_t assignedTimer;
	uint8_t PlayerId;
	uint32_t actionTime;
	uint8_t (*actionFunction)(uint8_t spriteId);
	uint8_t (*moveFunction)(uint8_t spriteId, int8_t deltaX, int8_t deltaY);
}sprite;

sprite asSprites[SPRITES_COUNT];

void initSprites ();

void refreshSprites ();

void clearSprite (uint8_t spriteId);

uint8_t moveSprite (uint8_t spriteId, int8_t deltaX, int8_t deltaY);

void moveSpriteAbs (uint8_t spriteId, uint32_t newX, uint32_t newY);

void setSpriteTexture (uint8_t spriteId, spriteChar spriteTexture);

void setSpriteColor (uint8_t spriteId, uint32_t spriteColor);

void startSpriteTimer (uint8_t spriteId, uint32_t actionTime);

void stopSpriteTimer (uint8_t spriteId);

void restartSpriteTimer (uint8_t spriteId);

void assignSpriteActionFunction (uint8_t spriteId, uint8_t (*actionFunction)(uint8_t spriteId));

void assignSpriteMoveFunction (uint8_t spriteId, uint8_t (*moveFunction)(uint8_t spriteId, int8_t deltaX, int8_t deltaY));

uint8_t checkCollision (uint32_t x, uint32_t y);

uint8_t findSpriteId (uint32_t X, uint32_t Y);

uint8_t emptySpriteFunction (uint8_t spriteId);

uint8_t defaultMoveFunction (uint8_t spriteId, int8_t deltaX, int8_t deltaY);

#endif
