#ifndef GAME_H
#define GAME_H

#include "sleep.h"

#include "drv/gpu_drv.h"
#include "drv/pad_drv.h"
#include "map.h"
#include "clock.h"
#include "sprites.h"


#define TIME_TO_DRAW 5
#define MAP_XPOS 7
#define MAP_YPOS 3
#define MAP_WIDTH 17
#define MAP_HEIGHT 15
#define MAX_BOMBS 6
#define BOMB_TIME_DURATION 3
#define BOMBS_AVAILABLE_ON_START 1

#define PLAYERS 2
#define PLAYER_ZERO_START_POSITION_X (MAP_XPOS+1)
#define PLAYER_ZERO_START_POSITION_Y (MAP_YPOS+1)
#define PLAYER_ONE_START_POSITION_X (MAP_XPOS+MAP_WIDTH-2)
#define PLAYER_ONE_START_POSITION_Y (MAP_YPOS+MAP_HEIGHT-2)


uint8_t InfoFlag;

typedef struct{
	uint32_t PlayerXPosition;
	uint32_t PlayerYPosition;
	uint32_t PlayerColor;
	uint8_t  BombsAvailable;
	uint8_t  CanMoveBomb;
	uint8_t  FirePower;
	uint8_t  IfLose;

}PlayerStruct;

PlayerStruct sPlayers[PLAYERS];

typedef struct{
	uint32_t BombXPosition;
	uint32_t BombYPosition;
	uint8_t  IsPuted;
} BombStruct;

typedef enum
{
	WAITING,
	EXPLODING,
	BURNING,
	DESTROYING
}BombStates;

BombStruct sBombs[MAX_BOMBS];

void InitGame();
void putHex(uint32_t inputHex, uint32_t x, uint32_t y);
uint8_t zeroSpriteActionFunction (uint8_t spriteId);
uint8_t playerMoveFunction (uint8_t spriteId, int8_t deltaX, int8_t deltaY);
uint8_t playerMoveFunctionBonus (uint8_t spriteId, int8_t deltaX, int8_t deltaY);
void InitPlayers();
void ChangePlayersPosition();
void PutTheBomb();
uint8_t BombActionFunction(uint8_t spriteId);
void HandlingTheBomb(uint8_t spriteId,uint8_t playerId);

void PlaceBomb (uint8_t playerNumber, int8_t deltaX, int8_t deltaY);
void CrossPlacer (uint32_t centerX, uint32_t centerY, uint32_t inversion, int8_t distance);

#endif