#ifndef GAME_H
#define GAME_H

#include "sleep.h"

#include "gpu_drv.h"
#include "pad_drv.h"
#include "map.h"
#include "clock.h"
#include "sprites.h"
#include "endgame_info.h"

#define TIME_TO_DRAW 1
#define MAP_XPOS 7
#define MAP_YPOS 3
#define MAP_WIDTH 17
#define MAP_HEIGHT 15

void InitGame();
void putHex(uint32_t inputHex, uint32_t x, uint32_t y);
uint8_t zeroSpriteActionFunction (uint8_t spriteId);
uint8_t playerMoveFunction (uint8_t spriteId, int8_t deltaX, int8_t deltaY);





#endif