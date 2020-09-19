#ifndef CLOCK_H
#define CLOCK_H
#include "drv/gpu_drv.h"
#include "drawing.h"
#include "drv/timers_drv.h"

//size of the clock frame
#define CLOCK_H_LENGTH 7
#define CLOCK_V_LENGTH 3

typedef struct{
	uint32_t SecondsLSB;
	uint32_t SecondsMSB;
	uint32_t MinutesLSB;
	uint32_t MinutesMSB;
	uint32_t MiliSeconds;
}TimeStruct;

extern TimeStruct asTimeStruct;

void ClockInit();
void Clock();
void DrawClockFrame();
void ShowTime();


#endif
