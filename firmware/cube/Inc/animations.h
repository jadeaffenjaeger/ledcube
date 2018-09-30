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

void anim_sine(void);
void anim_planes(void);
void anim_sineCenter();
void anim_sineSolid();
void anim_scroll();
void anim_fallinggrid(void);
void anim_rainingCubes(void);
void anim_rainingDots(void);
void anim_skeleton(void);
void anim_expandingCube();

#ifdef __cplusplus
}
#endif
#endif
