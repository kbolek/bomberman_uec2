#ifndef GAME_H
#define GAME_H

#include "sleep.h"

#include "gpu_drv.h"
#include "pad_drv.h"
#include "map.h"
#include "clock.h"
#include "sprites.h"
#include "endgame_info.h"

#define TIME_TO_DRAW 5
#define MAP_XPOS 7
#define MAP_YPOS 3
#define MAP_WIDTH 17
#define MAP_HEIGHT 15

#define PLAYERS 2
#define PLAYER_ZERO_START_POSITION_X (MAP_XPOS+1)
#define PLAYER_ZERO_START_POSITION_Y (MAP_YPOS+1)
#define PLAYER_ONE_START_POSITION_X (MAP_XPOS+MAP_WIDTH-2)
#define PLAYER_ONE_START_POSITION_Y (MAP_YPOS+MAP_HEIGHT-2)

typedef struct{
	uint32_t PlayerXPosition;
	uint32_t PlayerYPosition;
	uint32_t PlayerColor;
	uint8_t BombsAvailable;
	uint8_t CanMoveBomb;
	uint8_t FirePower;

}PlayerStruct;

PlayerStruct sPlayers[PLAYERS];

void InitGame();
void putHex(uint32_t inputHex, uint32_t x, uint32_t y);
uint8_t zeroSpriteActionFunction (uint8_t spriteId);
uint8_t playerMoveFunction (uint8_t spriteId, int8_t deltaX, int8_t deltaY);
void InitPlayers();



#endif
