#include "timers_drv.h"

uint32_t *Timer_Ptr = (uint32_t *) TIMER_ADDR;


uint32_t TimerSet (uint32_t timerNumber)
{
	if(timerNumber >= TIMER_COUNT)
	{
		return 1;
	}
	else
	{
		Timer_Ptr[0] |= (1<<timerNumber);
		return 0;
	}
}

uint32_t TimerClear (uint32_t timerNumber)
{
	if(timerNumber >= TIMER_COUNT)
	{
		return 1;
	}
	else
	{
		Timer_Ptr[0] &= (~(1<<timerNumber));
		return 0;
	}
}

uint32_t TimerRestart (uint32_t timerNumber)
{
	if(timerNumber >= TIMER_COUNT)
	{
		return 1;
	}
	else
	{
		Timer_Ptr[0] &= (~(1<<timerNumber));
		asm("nop");
		asm("nop");
		asm("nop");
		asm("nop");
		Timer_Ptr[0] |= (1<<timerNumber);
		return 0;
	}
}

void TimerClearAll()
{
	for (uint32_t timerCounter = 0; timerCounter < TIMER_COUNT; timerCounter++)
	{
		TimerClear(timerCounter);
	}
}

uint32_t TimerRead (uint32_t timerNumber, uint32_t *value)
{
	if(timerNumber >= TIMER_COUNT)
	{
		return 1;
	}
	else
	{
		*value = Timer_Ptr[(timerNumber+1)];
		return 0;
	}
}
