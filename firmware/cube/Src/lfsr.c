#include "lfsr.h"

void lfsr_update(lfsr_t* reg) {
    reg->state >>= 1;
    if(reg->state & 1 == 1) {
        reg->state ^= reg->mask;
    }
}

uint8_t lfsr_get8(lfsr_t* reg) {
    for(uint32_t i = 0; i < 8; i++) {
        lfsr_update(reg);
    }
    return (uint8_t) reg->state;
}

uint32_t lfsr_get32(lfsr_t* reg) {
    for(uint32_t i = 0; i < 32; i++) {
        lfsr_update(reg);
    }
    return reg->state;
}
