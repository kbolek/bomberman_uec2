#include "clock.h"

TimeStruct asTimeStruct;

void ClockInit(){
	 TimerClearAll();
	 TimerSet(0);
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
	 TimerRead(0,&MiliSeconds);

	 Seconds = (MiliSeconds/1000);
	 SecondsClear = Seconds%60;
	 asTimeStruct.SecondsLSB = SecondsClear%10;
	 asTimeStruct.SecondsMSB = SecondsClear/10;


	 Minutes = Seconds/60;
	 MinutesClear = Minutes%60;
	 asTimeStruct.MinutesLSB = MinutesClear%10;
	 asTimeStruct.MinutesMSB = MinutesClear/10;

}

void ShowTime(){

	Clock();

	asTimeStruct.SecondsLSB = GpuNumberToChar(asTimeStruct.SecondsLSB);
	asTimeStruct.SecondsMSB = GpuNumberToChar(asTimeStruct.SecondsMSB);
	asTimeStruct.MinutesLSB = GpuNumberToChar(asTimeStruct.MinutesLSB);
	asTimeStruct.MinutesMSB = GpuNumberToChar(asTimeStruct.MinutesMSB);

	//DOIT::scale it (first, and second parameter) bolko will do it
	GpuPutChar(17,1,asTimeStruct.SecondsLSB,COLOR_WHITE);
	GpuPutChar(16,1,asTimeStruct.SecondsMSB,COLOR_WHITE);
	char cColon = GpuAsciiToChar(':');
	GpuPutChar(15,1,cColon,COLOR_WHITE);
	GpuPutChar(14,1,asTimeStruct.MinutesLSB,COLOR_WHITE);
	GpuPutChar(13,1,asTimeStruct.MinutesMSB,COLOR_WHITE);

}



void DrawClockFrame(BlockStruct *sBlock){
	uint32_t ClockXpos = asClockPositionStruct.HXpos + (asClockPositionStruct.HLength/2);
	DrawHLine(ClockXpos-(CLOCK_H_LENGTH/2),asClockPositionStruct.HYpos-1 ,CLOCK_H_LENGTH,sBlock);
	DrawHLine(ClockXpos-(CLOCK_H_LENGTH/2),asClockPositionStruct.HYpos-CLOCK_V_LENGTH,CLOCK_H_LENGTH,sBlock);
	DrawVLine(ClockXpos-(CLOCK_H_LENGTH/2),asClockPositionStruct.HYpos - CLOCK_V_LENGTH,CLOCK_V_LENGTH,sBlock);
	DrawVLine(ClockXpos+(CLOCK_H_LENGTH/2),asClockPositionStruct.HYpos - CLOCK_V_LENGTH,CLOCK_V_LENGTH,sBlock);
}

