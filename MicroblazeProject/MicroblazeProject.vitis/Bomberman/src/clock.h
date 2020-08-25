#ifndef CLOCK_H
#define CLOCK_H
#include "gpu_drv.h"
#include "drawing.h"
#include "map.h"
#include "timers_drv.h"

//size of the clock frame
#define CLOCK_H_LENGTH 7
#define CLOCK_V_LENGTH 3

typedef struct{
	uint32_t SecondsLSB;
	uint32_t SecondsMSB;
	uint32_t MinutesLSB;
	uint32_t MinutesMSB;
}TimeStruct;

extern TimeStruct asTimeStruct;
uint32_t ClockXpos;

void ClockInit();
void Clock();
void DrawClockFrame(BlockStruct *sBlock);
void ShowTime();


#endif
