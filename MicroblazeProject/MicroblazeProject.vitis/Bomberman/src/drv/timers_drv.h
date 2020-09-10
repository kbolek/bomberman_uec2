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
#define SPRITE8_TIMER_ID 9
#define SPRITE9_TIMER_ID 10
#define SPRITE10_TIMER_ID 11
#define SPRITE11_TIMER_ID 12
#define SPRITE12_TIMER_ID 13
#define SPRITE13_TIMER_ID 14
#define SPRITE14_TIMER_ID 15
#define SPRITE15_TIMER_ID 16
#define SPRITE16_TIMER_ID 17
#define SPRITE17_TIMER_ID 18
#define SPRITE18_TIMER_ID 19
#define SPRITE19_TIMER_ID 20

/////////////////////////////////////////////////////

uint32_t TimerSet (uint8_t timerNumber);

uint32_t TimerClear (uint8_t timerNumber);

uint32_t TimerRestart (uint8_t timerNumber);

void TimerClearAll();

uint32_t TimerRead (uint8_t timerNumber, uint32_t *value);

#endif
