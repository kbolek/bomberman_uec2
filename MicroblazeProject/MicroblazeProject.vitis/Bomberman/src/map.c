#include "map.h"



void DrawFireWalls(){
	//WARNING: IT HAVE TO BE CHANGED IF YOU WANT TO CHANGE THE MAP SIZE
	BlockStruct sBlock;
	sBlock.textureInversion = 0;
	sBlock.textChar = 0;
	sBlock.textureType = FireWall;

	//WARNING: IT HAVE TO BE CHANGED IF YOU WANT TO CHANGE THE MAP SIZE
	 DrawHLine(MAP_XPOS+4,MAP_YPOS+1,4,&sBlock);
	 DrawHLine(MAP_XPOS+11,MAP_YPOS+1,3,&sBlock);
	 DrawHLine(MAP_XPOS+7,MAP_YPOS+3,4,&sBlock);
	 DrawHLine(MAP_XPOS+6,MAP_YPOS+5,4,&sBlock);
	 DrawHLine(MAP_XPOS+9,MAP_YPOS+7,6,&sBlock);
	 DrawHLine(MAP_XPOS+1,MAP_YPOS+6,8,&sBlock);
	 DrawHLine(MAP_XPOS+5,MAP_YPOS+11,3,&sBlock);
	 DrawHLine(MAP_XPOS+1,MAP_YPOS+13,4,&sBlock);
	 DrawHLine(MAP_XPOS+8,MAP_YPOS+13,3,&sBlock);


	 DrawVLine(MAP_XPOS+1,MAP_YPOS+5,6,&sBlock);
	 DrawVLine(MAP_XPOS+3,MAP_YPOS+2,10,&sBlock);
	 DrawVLine(MAP_XPOS+5,MAP_YPOS+7,3,&sBlock);
	 DrawVLine(MAP_XPOS+7,MAP_YPOS+3,2,&sBlock);
	 DrawVLine(MAP_XPOS+9,MAP_YPOS+10,4,&sBlock);
	 DrawVLine(MAP_XPOS+11,MAP_YPOS+8,1,&sBlock);
	 DrawVLine(MAP_XPOS+11,MAP_YPOS+10,2,&sBlock);
	 DrawVLine(MAP_XPOS+13,MAP_YPOS+9,4,&sBlock);
	 DrawVLine(MAP_XPOS+13,MAP_YPOS+2,4,&sBlock);
	 DrawVLine(MAP_XPOS+15,MAP_YPOS+4,2,&sBlock);
	 DrawVLine(MAP_XPOS+15,MAP_YPOS+1,9,&sBlock);

}


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

	//fire walls
	DrawFireWalls();

}

