#include "clock.h"
#include "game.h"

TimeStruct asTimeStruct;

void ClockInit(){
	 TimerClearAll();
	 TimerSet(CLOCK_TIMER_ID);
	 asTimeStruct.SecondsLSB = 0;
	 asTimeStruct.SecondsMSB = 0;
	 asTimeStruct.MinutesLSB = 0;
	 asTimeStruct.MinutesMSB = 0;
}

void Clock(){
	 uint32_t MiliSeconds;
	 uint32_t Seconds;
	 uint32_t SecondsClear;
	 uint32_t Minutes;
	 uint32_t MinutesClear;
	 TimerRead(CLOCK_TIMER_ID,&MiliSeconds);

	 Seconds = (MiliSeconds/1000);
	 SecondsClear = Seconds%60;
	 asTimeStruct.SecondsLSB = SecondsClear%10;
	 asTimeStruct.SecondsMSB = SecondsClear/10;


	 Minutes = Seconds/60;
	 MinutesClear = Minutes%60;
	 asTimeStruct.MinutesLSB = MinutesClear%10;
	 asTimeStruct.MinutesMSB = MinutesClear/10;

	 asTimeStruct.MiliSeconds = MiliSeconds;

}

void ShowTime(){

	Clock();

	asTimeStruct.SecondsLSB = GpuNumberToChar(asTimeStruct.SecondsLSB);
	asTimeStruct.SecondsMSB = GpuNumberToChar(asTimeStruct.SecondsMSB);
	asTimeStruct.MinutesLSB = GpuNumberToChar(asTimeStruct.MinutesLSB);
	asTimeStruct.MinutesMSB = GpuNumberToChar(asTimeStruct.MinutesMSB);


	GpuPutChar(MAP_WIDTH,MAP_YPOS-2,asTimeStruct.SecondsLSB,COLOR_WHITE);
	GpuPutChar(MAP_WIDTH-1,MAP_YPOS-2,asTimeStruct.SecondsMSB,COLOR_WHITE);
	char cColon = GpuAsciiToChar(':');
	GpuPutChar(MAP_WIDTH-2,MAP_YPOS-2,cColon,COLOR_WHITE);
	GpuPutChar(MAP_WIDTH-3,MAP_YPOS-2,asTimeStruct.MinutesLSB,COLOR_WHITE);
	GpuPutChar(MAP_WIDTH-4,MAP_YPOS-2,asTimeStruct.MinutesMSB,COLOR_WHITE);

}



void DrawClockFrame(){
	BlockStruct sBlock;
	sBlock.textureInversion=0;
	sBlock.textChar=0;
	sBlock.textureType=WallFront;

	uint32_t ClockXpos = MAP_XPOS + (MAP_WIDTH/2);
	DrawHLine(ClockXpos-(CLOCK_H_LENGTH/2),MAP_YPOS-1 ,CLOCK_H_LENGTH,&sBlock);
	DrawHLine(ClockXpos-(CLOCK_H_LENGTH/2),MAP_YPOS-CLOCK_V_LENGTH,CLOCK_H_LENGTH,&sBlock);
	DrawVLine(ClockXpos-(CLOCK_H_LENGTH/2),MAP_YPOS - CLOCK_V_LENGTH,CLOCK_V_LENGTH,&sBlock);
	DrawVLine(ClockXpos+(CLOCK_H_LENGTH/2),MAP_YPOS - CLOCK_V_LENGTH,CLOCK_V_LENGTH,&sBlock);
}


