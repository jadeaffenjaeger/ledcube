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

void anim_fallinggrid();
void anim_rainingCubes();
void anim_rainingDots();

#ifdef __cplusplus
}
#endif
#endif
