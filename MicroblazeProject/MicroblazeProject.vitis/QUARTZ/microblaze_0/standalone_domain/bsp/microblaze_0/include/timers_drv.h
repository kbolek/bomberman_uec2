#ifndef TIMERS_DRV_H
#define TIMERS_DRV_H

#ifdef __cplusplus
extern "C" {
#endif

#include "xil_types.h"

/////////////////////////////////////////////////////

#define TIMER_ADDR 0xB0000000
#define TIMER_COUNT 31

#define CLOCK_TIMER_ID 0
#define SPRITE0_TIMER_ID 1
#define SPRITE1_TIMER_ID 2
#define SPRITE2_TIMER_ID 3
#define SPRITE3_TIMER_ID 4
#define SPRITE4_TIMER_ID 5
#define SPRITE5_TIMER_ID 6
#define SPRITE6_TIMER_ID 7
#define SPRITE7_TIMER_ID 8

/////////////////////////////////////////////////////

uint32_t TimerSet (uint8_t timerNumber);

uint32_t TimerClear (uint8_t timerNumber);

uint32_t TimerRestart (uint8_t timerNumber);

void TimerClearAll();

uint32_t TimerRead (uint8_t timerNumber, uint32_t *value);

#endif
