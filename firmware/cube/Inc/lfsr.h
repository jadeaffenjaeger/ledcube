#ifndef __LFSR_H
#define __LFSR_H
#ifdef __cplusplus
extern "C" {
#endif

#include "stm32f1xx.h"

typedef struct lfsr {
    uint32_t mask;
    uint32_t state;
} lfsr_t;

uint8_t lfsr_get8(lfsr_t* reg);
uint32_t lfsr_get32(lfsr_t* reg);

#ifdef __cplusplus
}
#endif
#endif
