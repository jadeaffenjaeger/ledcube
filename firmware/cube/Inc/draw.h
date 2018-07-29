#ifndef __DRAW_H
#define __DRAW_H
#ifdef __cplusplus
 extern "C" {
#endif

#include "stm32f1xx.h"
#include "cube.h"

typedef struct SExtrapolation {
    uint8_t p1;
    uint8_t p2;
} SExtrapolation_t;

typedef enum EPlane {
    XY,
    XZ,
    YZ
} EPlane_t;

void draw_linearExtrapolate(uint8_t point, uint8_t value, SExtrapolation_t* buffer);
void draw_drawPoint(uint8_t x, uint8_t y, uint8_t z, uint8_t value);

void draw_cube(uint8_t x, uint8_t y, uint8_t z, uint8_t size, uint8_t value);

#ifdef __cplusplus
}
#endif
#endif
