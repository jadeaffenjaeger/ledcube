#ifndef __cube_H
#define __cube_H
#ifdef __cplusplus
 extern "C" {
#endif

#include "stm32f1xx.h"

#define SIZE 8
#define RESOLUTION 4

typedef struct SExtrapolation {
    uint8_t p1;
    uint8_t p2;
} SExtrapolation_t;

void cube_init(void);
void cube_fillBitBuffer(uint8_t bitPosition);
uint8_t* cube_getNext(void);
void cube_update(void);

void cube_drawPoint(uint8_t x, uint8_t y, uint8_t z, uint8_t value);
void cube_setPx(uint8_t x, uint8_t y, uint8_t z, uint8_t value);

#ifdef __cplusplus
}
#endif
#endif
