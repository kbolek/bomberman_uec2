#ifndef TIMERS_DRV_H
#define TIMERS_DRV_H

#ifdef __cplusplus
extern "C" {
#endif

#include "xil_types.h"

/////////////////////////////////////////////////////

#define TIMER_ADDR 0xB0000000
#define TIMER_COUNT 31

/////////////////////////////////////////////////////

uint32_t TimerSet (uint32_t timerNumber);

uint32_t TimerClear (uint32_t timerNumber);

uint32_t TimerRestart (uint32_t timerNumber);

void TimerClearAll();

uint32_t TimerRead (uint32_t timerNumber, uint32_t *value);

#endif
