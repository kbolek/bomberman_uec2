#include "map.h"
#include "drawing.h"

/*Function always Put WallFront Block at the top and rest WallUsual*/
void DrawMap(uint32_t Xpos, uint32_t Ypos, uint32_t Width, uint32_t Height){
	BlockStruct sBlock;
	sBlock.textureInversion = 0;
	sBlock.textChar = 0;

	//main background
	DrawBackground();


	//map background (path)
	sBlock.textureType=Path;;
	for(uint32_t PathCounterV=0;PathCounterV<Height-2;PathCounterV++){
		for(uint32_t PathCounterH=0;PathCounterH<Width-2;PathCounterH++){
			GpuPutBlockStruct(Xpos+1+PathCounterH,Ypos+1+PathCounterV,&sBlock);
		}
	}

	//outside border
	sBlock.textureType=WallFront;
	DrawFrame(Xpos,Ypos,Width, Height, &sBlock);

	//blocked paths
	sBlock.textureType=WallUsual;
	for(uint32_t BlockedPathCounterV=0;BlockedPathCounterV<((Height/2)-1);BlockedPathCounterV++){
		for(uint32_t BlockedPathCounterH=0;BlockedPathCounterH<((Width/2)-1);BlockedPathCounterH++){
			GpuPutBlockStruct(Xpos+2+(BlockedPathCounterH*2),(Ypos+2)+(BlockedPathCounterV*2),&sBlock);
		}
	}

}

