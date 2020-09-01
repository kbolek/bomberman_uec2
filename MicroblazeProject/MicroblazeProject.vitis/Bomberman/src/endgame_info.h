#ifndef ENDGAME_INFO_H
#define ENDGANE_INFO_H
#include "drawing.h"
#include "gpu_drv.h"
#include "pad_drv.h"

#define XPOS_EG 8
#define YPOS_EG 6
#define WIDTH_EG 16
#define LENGTH_EG 12

#define COLORFUL 8

typedef enum{
	remis,
	win
}GameResult;


void ShowTheInfo(GameResult eGameResult);
void ShowTheText(uint32_t Xpos,uint32_t Ypos,char *TextChar,uint32_t TextColor);


extern uint32_t InfoFlag;


#endif
