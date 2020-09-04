#ifndef ENDGAME_INFO_H
#define ENDGANE_INFO_H
#include "drawing.h"
#include "drv/gpu_drv.h"
#include "drv/pad_drv.h"

#define XPOS_EG 7
#define YPOS_EG 6
#define WIDTH_EG 17
#define LENGTH_EG 12


typedef enum{
	remis,
	win
}GameResult;


void ShowTheInfo(GameResult eGameResult);

uint8_t InfoFlag;


#endif
