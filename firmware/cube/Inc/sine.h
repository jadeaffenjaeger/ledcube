#ifndef __SINE_H
#define __SINE_H
#ifdef __cplusplus
extern "C" {
#endif

#include "stm32f1xx.h"

int8_t sine_sin(int32_t theta);
int8_t sine_cos(int32_t theta);

#ifdef __cplusplus
}
#endif
#endif
