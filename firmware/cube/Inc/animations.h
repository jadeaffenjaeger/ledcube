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


/*
 *Moving Sine wave
 */
void anim_sine(void);

/*
 *XZ and YZ planes going back and forth
 */
void anim_planes(void);

/*
 *3D sine wave with center in the middle of the cube
 */
void anim_sineCenter();

/*
 *Fill/unfill cube with sine wave
 */
void anim_sineSolid();

/*
 *Scroll through random "starfield"
 */
void anim_scroll();

/*
 *Drop random pixels from the top and collect afterwards
 */
void anim_fallinggrid(void);

/*
 *Tetris-like cubes dropping from the ceiling
 */
void anim_rainingCubes(void);

/*
 *Same as rainingCubes, but with single dots
 */
void anim_rainingDots(void);


/*
 *Expanding and contracting cube mesh
 */
void anim_skeleton(void);

/*
 *Expanding and contracting solid cube
 */
void anim_expandingCube();

#ifdef __cplusplus
}
#endif
#endif
