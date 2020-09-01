#include "drawing.h"

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

void DrawBackground(){
	BlockStruct sBlock;
	sBlock.textureInversion=0;
	sBlock.textChar=0;
	sBlock.textureType=Background;
	for(uint32_t BgCounterV=0;BgCounterV<RESOLUTION_Y;BgCounterV++){
			for(uint32_t BgCounterH=0;BgCounterH<RESOLUTION_X;BgCounterH++){
				GpuPutBlockStruct(BgCounterH,BgCounterV,&sBlock);
			}
		}

}

void DrawFrame(uint32_t Xpos, uint32_t Ypos, uint32_t Width, uint32_t Height, BlockStruct *sBlock){
	DrawHLine(Xpos,Ypos,Width,sBlock);
	DrawVLine(Xpos,Ypos+1,Height-1,sBlock);
    DrawVLine(Xpos+Width-1,Ypos+1,Height-1,sBlock);
	DrawHLine(Xpos,Ypos+Height-1,Width,sBlock);
}
