#include "sine.h"

/*
 *This file implements a simple LUT-based sine/cosine approximation
    Input angle is mapped to 256 values, where:

    0 = 0
    128 = pi
    255 = 2 * pi

    The return value will be in the interval [-127, 127] (i.e. sin/cos(theta) * 127)
 */

/* 64 value Sine LUT:*/
const uint8_t sine_lut[] = {
    0, 3, 6, 9, 13, 16, 19, 22, 
    25, 28, 31, 34, 37, 40, 43, 46, 
    49, 52, 55, 58, 61, 64, 66, 69, 
    72, 74, 77, 79, 82, 84, 86, 89, 
    91, 93, 95, 97, 99, 101, 103, 105, 
    107, 108, 110, 112, 113, 114, 116, 117, 
    118, 119, 120, 121, 122, 123, 124, 124, 
    125, 126, 126, 126, 127, 127, 127, 127
};

int8_t sine_getSinLut(uint8_t idx) {
    if (idx < 64) {
        return sine_lut[idx];
    }
    if (idx < 128) {
        idx -= 64;
        return sine_lut[63 - idx];
    }
    if (idx < 192) {
        idx -= 128;
        return -sine_lut[idx];
    }

    idx -= 192;
    return -sine_lut[63 - idx];
}

int8_t sine_sin(int32_t theta) {
    if (theta < 0) {
        return -sine_sin(-(theta));
    }
    if (theta > 255) {
        theta %= 255;
    }
    return sine_getSinLut(theta);
}

int8_t sine_cos(int32_t theta) {
    if (theta < 0) {
        return sine_sin(-(theta - 64));
    }
    else {
        return sine_sin(theta - 64);
    }
}


