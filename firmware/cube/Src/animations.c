#include "animations.h"

lfsr_t random = {.state = 0xDEADBEEF, .mask = ((1 << 31) | (1 << 21))};

void anim_rainingCubes() {
    uint8_t cubeState[4][4];
    memset(&cubeState, 0, 16);
        uint8_t filled = 0;

    while(filled == 0) {
        uint32_t x, y;

        // Find free coordinates
        do {
            uint8_t rand = lfsr_get8(&random);
            x = rand & 0x3;
            y = (rand >> 2) & 0x3;
        } while(cubeState[x][y] == 4);

        for(int i = 9; i > cubeState[x][y] * 2; i--) {
            draw_cube(2 * x, 2 * y, i, 2, 0xff);
            HAL_Delay(20);
            draw_cube(2 * x, 2 * y, i, 2, 0x00);
        }

        cubeState[x][y]++;


        filled = 1;
        for(uint32_t xx = 0; xx < 4; xx++) {
            for(uint32_t yy = 0; yy < 4; yy++) {
                if(cubeState[xx][yy] < 4) {
                    filled = 0;
                }
            }
        }
    }
}
