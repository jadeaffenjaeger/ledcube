#ifndef __cube_H
#define __cube_H
#ifdef __cplusplus
 extern "C" {
#endif

#include "stm32f1xx.h"

#define SIZE 8
#define RESOLUTION 4

void cube_init(void);
void cube_fillBitBuffer(uint8_t bitPosition);
uint8_t* cube_getNext(void);
void cube_update(void);

#ifdef __cplusplus
}
#endif
#endif
