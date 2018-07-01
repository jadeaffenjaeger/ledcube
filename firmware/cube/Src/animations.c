#include "animations.h"

lfsr_t random = {.state = 0xDEADBEEF, .mask = ((1 << 31) | (1 << 21))};

void anim_rainingCubes() {
    cube_fill(0);
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

        for(int8_t i = 9; i >= cubeState[x][y] * 2; i--) {
            draw_cube(2 * x, 2 * y, i, 2, 0xff);
            HAL_Delay(70);
            draw_cube(2 * x, 2 * y, i, 2, 0x00);
        }

        draw_cube(2 * x, 2 * y, cubeState[x][y] *2, 2, 0xff);
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

void anim_rainingDots() {
    cube_fill(0);
    uint8_t cubeState[8][8];
    memset(&cubeState, 0, 64);
        uint8_t filled = 0;

    while(filled == 0) {
        uint32_t x, y;

        // Find free coordinates
        do {
            uint8_t rand = lfsr_get8(&random);
            x = rand & 0x7;
            y = (rand >> 3) & 0x7;
        } while(cubeState[x][y] == 8);

        for(int8_t i = 9; i >= cubeState[x][y]; i--) {
            cube_setPx(x,y,i,0xff);
            HAL_Delay(20);
            cube_setPx(x,y,i,0x00);
        }

        /* draw_cube(x, y, cubeState[x][y], 2, 0xff);*/
        cube_setPx(x,y,cubeState[x][y],0xff);
        cubeState[x][y]++;


        filled = 1;
        for(uint32_t xx = 0; xx < 8; xx++) {
            for(uint32_t yy = 0; yy < 8; yy++) {
                if(cubeState[xx][yy] < 8) {
                    filled = 0;
                }
            }
        }
    }
}

void anim_expandingCube(){
    for(uint8_t i = 0; i < 4; i++) {
        for(uint val = 0; val < 255; val++) {
            draw_cube(3-i, 3-i, 3-i, 2*(i+1), val);
            draw_cube(4-i, 4-i, 4-i, 2*i, 0xff);
            HAL_Delay(30);
        }
    }
}
