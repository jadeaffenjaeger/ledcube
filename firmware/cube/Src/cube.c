#include "cube.h"
#include "stm32f1xx.h"
#include "string.h"


static uint8_t cube[SIZE][SIZE][SIZE];
static uint8_t bit_buffer[SIZE][SIZE+1];

static uint8_t current_layer            = 0;


void cube_init(void) {
    /* Write layer byte for each layer in buffer*/
    for(uint32_t i = 0; i < SIZE; i++) {
        bit_buffer[i][SIZE] = 1 << i;
    }

    for (uint32_t y = 0; y < SIZE; y++) {
        for (uint32_t z = 0; z < SIZE; z++) {
            cube[y][z][4] = 255;
        }
    }
}

/* Loads the bit buffer with bit states for the nth bit for each layer*/
void cube_fillBitBuffer(uint8_t bitPosition) {
    for(uint32_t z = 0; z < SIZE; z++) {
        for(uint32_t x = 0; x < SIZE; x++) {
            uint8_t temp = 0;
            for(uint32_t y = 0; y < SIZE; y++) {
                if((cube[x][y][z] & (1 << bitPosition)) != 0) {
                    temp |= 1 << y;
                }
            }
            bit_buffer[z][x] = temp;

        }
    }
}

/* Returns pointer to the next bit stream that needs to be clocked out.*/
uint8_t* cube_getNext(void) {
    return bit_buffer[current_layer];
}


void cube_fill(uint8_t val) {
    memset(cube, val, SIZE*SIZE*SIZE);
}

void cube_update(void) {
    static uint8_t current_bitPosition      = 0;
    static uint16_t current_bitCounter      = 0;
    current_layer += 1;
    if (current_layer == SIZE) {
        current_layer = 0;
        current_bitCounter += 1;
        if(current_bitCounter == 1 << (current_bitPosition)) {
            current_bitCounter = 0;
            current_bitPosition += 1;
            if (current_bitPosition == RESOLUTION) {
                current_bitPosition = 0;
            }
            cube_fillBitBuffer(current_bitPosition);
        }
    }
}

