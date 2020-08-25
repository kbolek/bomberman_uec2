#ifndef PLAYER_H
#define PLAYER_H
#include "gpu_drv.h"

#define PLAYERS 2

typedef enum{
	Yeas,
	No
}CanMove;

typedef struct{
	uint32_t xPosition;
	uint32_t yPosition;
	uint32_t BombsAvailable;
	CanMove eCanMove;

}PlayerStruct;

PlayerStruct sPlayerStruct[PLAYERS];


#endif
