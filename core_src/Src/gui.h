#ifndef GUI_H
#define GUI_H
#include "ili9341.h"
#include "makise_colors.h"
#include "makise.h"
#include "makise_gui.h"
#include "makise_e.h"
#include "gpio.h"
#include <stdio.h>
#include <string.h>

extern MakiseGUI *mGui;
MakiseGUI* gui_init();

//Define user keys
#define M_KEY_USER_ESC        M_KEY_USER_0
#define M_KEY_USER_FOCUS_NEXT M_KEY_USER_0+1
#define M_KEY_USER_FOCUS_PREV M_KEY_USER_0+2
#define M_KEY_USER_TREE       M_KEY_USER_0+3
#define M_KEY_USER_EncL       M_KEY_USER_0+4
#define M_KEY_USER_EncR       M_KEY_USER_0+5
#define M_KEY_USER_Play       M_KEY_USER_0+6
#define M_KEY_USER_SD_ERROR   M_KEY_USER_0+7

#endif
