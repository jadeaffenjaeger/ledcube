#ifndef __ANIMATIONS_H
#define __ANIMATIONS_H
#ifdef __cplusplus
 extern "C" {
#endif

#include "stm32f1xx.h"
#include "sine.h"
#include "lfsr.h"
#include "draw.h"
#include "cube.h"

#include <math.h>

void anim_sine();
void anim_fallinggrid();
void anim_fallinggrid();
void anim_rainingCubes();
void anim_rainingDots();
void anim_skeleton();

#ifdef __cplusplus
}
#endif
#endif
