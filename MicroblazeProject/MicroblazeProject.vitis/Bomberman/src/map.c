#include "map.h"

ClockPositionStruct asClockPositionStruct;

void DrawHLine(uint32_t Xpos, uint32_t Ypos, uint32_t Length, BlockStruct *sBlock){
	for(uint32_t HBlockCounter = 0; HBlockCounter < Length; HBlockCounter++ ){
			GpuPutBlockStruct((Xpos+HBlockCounter),Ypos,sBlock);
	}
}


void DrawVLine(uint32_t Xpos, uint32_t Ypos, uint32_t Length, BlockStruct *sBlock){
	for(uint32_t VBlockCounter = 0; VBlockCounter < Length; VBlockCounter++ ){
			GpuPutBlockStruct(Xpos,(Ypos+VBlockCounter),sBlock);
		}
}

void DrawBackground(BlockStruct *sBlock){
	sBlock->textureType=Background;
	for(uint32_t BgCounterV=0;BgCounterV<RESOLUTION_Y;BgCounterV++){
			for(uint32_t BgCounterH=0;BgCounterH<RESOLUTION_X;BgCounterH++){
				GpuPutBlockStruct(BgCounterH,BgCounterV,sBlock);
			}
		}

}

/*Function always Put WallFront Block at the top and rest WallUsual*/
void DrawMap(uint32_t Xpos, uint32_t Ypos, uint32_t Width, uint32_t Height, BlockStruct *sBlock){

	//main background
	DrawBackground(sBlock);

	//map background (path)
	sBlock->textureType=Path;;
	for(uint32_t PathCounterV=0;PathCounterV<Height-2;PathCounterV++){
		for(uint32_t PathCounterH=0;PathCounterH<Width-2;PathCounterH++){
			GpuPutBlockStruct(Xpos+1+PathCounterH,Ypos+1+PathCounterV,sBlock);
		}
	}

	//outside border
	sBlock->textureType=WallFront;
	DrawHLine(Xpos,Ypos,Width,sBlock);
	//sBlock->eTextureType=WallUsual;
	DrawVLine(Xpos,Ypos+1,Height-1,sBlock);
	DrawVLine(Xpos+Width-1,Ypos+1,Height-1,sBlock);
	DrawHLine(Xpos,Ypos+Height-1,Width,sBlock);

	//blocked paths
	sBlock->textureType=WallUsual;
	for(uint32_t BlockedPathCounterV=0;BlockedPathCounterV<((Height/2)-1);BlockedPathCounterV++){
		for(uint32_t BlockedPathCounterH=0;BlockedPathCounterH<((Width/2)-1);BlockedPathCounterH++){
			GpuPutBlockStruct(Xpos+2+(BlockedPathCounterH*2),(Ypos+2)+(BlockedPathCounterV*2),sBlock);
		}
	}

	//set up clock position
	asClockPositionStruct.HXpos=Xpos;
	asClockPositionStruct.HYpos=Ypos;
	asClockPositionStruct.HLength=Width;

}

