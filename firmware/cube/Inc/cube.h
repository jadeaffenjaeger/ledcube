#ifndef __cube_H
#define __cube_H
#ifdef __cplusplus
 extern "C" {
#endif

#include "stm32f1xx.h"
#include "string.h"

#define SIZE 8
#define RESOLUTION 4

void cube_init(void);
void cube_fillBitBuffer(uint8_t bitPosition);
uint8_t* cube_getNext(void);
void cube_update(void);

void cube_fill(uint8_t val);
void cube_drawPoint(uint8_t x, uint8_t y, uint8_t z, uint8_t value);
void cube_setPx(uint8_t x, uint8_t y, uint8_t z, uint8_t value);

#ifdef __cplusplus
}
#endif
#endif
