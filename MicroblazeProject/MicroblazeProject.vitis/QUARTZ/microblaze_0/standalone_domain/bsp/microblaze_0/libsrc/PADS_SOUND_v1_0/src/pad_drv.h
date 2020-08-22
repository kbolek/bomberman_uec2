#ifndef PAD_DRV_H
#define PAD_DRV_H

#ifdef __cplusplus
extern "C" {
#endif

#include "xil_types.h"

/////////////////////////////////////////////////////

#define PAD_ADDR 0xC0000000
#define PADS_COUNT 2

/*Buttons*/
#define UPPER_BTN 0xFFC40
#define DOWN_BTN 0xFFC10
#define RIGHT_BTN 0xFFC20
#define LEFT_BTN 0xFFC80
/*Bomb button depence on pad*/
#define FIRST_P_BOMB_BTN 0xFFD00
#define SECOND_P_BOMB_BTN 0xFFC00
//Bomb button and buttons
//pad 1
#define FIRST_UPPER_BTN_BOMB 0xFFD40
#define FIRST_DOWN_BTN BOMB 0xFFD10
#define FIRST_RIGHT_BTN_BOMB 0xFFD20
#define FIRST_LEFT_BTN_BOMB 0xFFD80
//pad 2
#define SECONDS_UPPER_BTN_BOMB 0xFFE40
#define SECOND_DOWN_BTN BOMB 0xFFE10
#define SECOND_RIGHT_BTN 0xFFE20
#define SECOND_LEFT_BTN 0xFFE80

//

////////////////////////////////////////////////////

typedef struct
{
	uint32_t buttons;
	uint32_t isConnected;
}PadStruct;

PadStruct sPads[PADS_COUNT];

////////////////////////////////////////////////////

void decodePad1 (uint32_t inputData, PadStruct *Pad);

void decodePad2 (uint32_t inputData, PadStruct *Pad);

void PadsRead ();

#endif
