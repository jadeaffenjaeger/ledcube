#include "animations.h"

/*
 *This file implements all high-level animations that will be called from the main loop
 */

lfsr_t random = {.state = 0xDEADBEEF, .mask = ((1 << 31) | (1 << 21))};

void anim_sine() {
    cube_fill(0);
    for(uint16_t theta = 0; theta < 16000; theta+=8) {
        cube_shiftLeft();
        for(uint8_t yy = 0; yy < SIZE; yy++) {
            int8_t sin = sine_sin(theta+6*yy);
            sin = (sin/32) + 3;
            cube_setPx(SIZE-1, yy, sin, 0xff);
        }
        HAL_Delay(30);
    }
}

void anim_planes() {
    for(uint8_t j = 0; j < 15; j++) {
        for(uint8_t i = 0; i < 8; i++) {
            cube_fill(0);
            draw_plane(XZ, i, 0xff);
            draw_plane(YZ, i, 0xff);
            HAL_Delay(80);
        }
        for(uint8_t i = 0; i < 8; i++) {
            cube_fill(0);
            draw_plane(XZ, 7-i, 0xff);
            draw_plane(YZ, 7-i, 0xff);
            HAL_Delay(80);
        }
    }
}
void anim_sineCenter() {
    cube_fill(0);
    for(uint16_t i = 0; i < 2048; i++) {
        for(uint8_t xx = 0; xx < 8; xx++) {
            for(uint8_t yy = 0; yy < 8; yy++) {
                int16_t theta = pow((xx-2), 2) + pow((yy-3), 2);
                theta = 8 * sqrt(theta);
                int8_t z = sine_sin(theta + 4 * i);
                z = (z/17) +4;
                for(uint8_t zz = 0; zz < 8; zz++) {
                    if (zz <= z) {
                        cube_setPx(xx, yy, zz, 0xff);
                    } else {
                        cube_setPx(xx, yy, zz, 0);
                    }
                }
            }
        }
        HAL_Delay(20);
    }
}

void anim_sineSolid() {
    cube_fill(0);
    for(uint16_t i = 0; i < 1024; i++) {
        for(uint8_t xx = 0; xx < 8; xx++) {
            for(uint8_t yy = 0; yy < 8; yy++) {
                int16_t theta = ((xx) - (yy)+ i) *4;
                int8_t z = sine_sin(theta);
                z = (z/16) +4;
                for(uint8_t zz = 0; zz < 8; zz++) {
                    if (zz <= z) {
                        cube_setPx(xx, yy, zz, 0xff);
                    } else {
                        cube_setPx(xx, yy, zz, 0);
                    }
                }
            }
        }
        HAL_Delay(50);
    }
}

void anim_scroll() {
    cube_fill(0);
    for(uint16_t i = 0; i < 512; i++ ) {
        cube_shiftBack();
        uint8_t rand1 = lfsr_get8(&random);
        uint8_t rand2 = lfsr_get8(&random);
        cube_setPx(rand1 %8, SIZE-1, (rand1 >> 3) % 8, 0xff);
        cube_setPx(rand2 %8, SIZE-1, (rand2 >> 3) % 8, 0xff);
        HAL_Delay(60);
    }
}

void anim_fallinggrid() {
    uint8_t targets[8][8];
    for(uint8_t xx = 0; xx < 8; xx++) {
        for(uint8_t yy = 0; yy < 8; yy++) {
            uint8_t rand = lfsr_get8(&random);
            targets[xx][yy] = rand % 8;
        }
    }

    for(uint8_t i = 0; i < 8; i++){
        cube_fill(0);
        for(uint8_t xx = 0; xx < 8; xx++) {
            for(uint8_t yy = 0; yy < 8; yy++) {
                uint8_t zz = targets[xx][yy];
                if(zz > 7- i) {
                    cube_setPx(xx, yy, zz, 0xff);
                } else {
                    cube_setPx(xx, yy, 7-i, 0xff);
                }
            }
        }
        HAL_Delay(100);
    }

    for(uint8_t i = 0; i < 8; i++){
        cube_fill(0);
        for(uint8_t xx = 0; xx < 8; xx++) {
            for(uint8_t yy = 0; yy < 8; yy++) {
                uint8_t zz = targets[xx][yy];
                if(zz < 7-i) {
                    cube_setPx(xx, yy, zz, 0xff);
                } else {
                    cube_setPx(xx, yy, 7- i, 0xff);
                }
            }
        }
        HAL_Delay(100);
    }
}

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

void anim_skeleton() {
    for(uint8_t j = 0; j < 10; j++){
        for(int8_t i = 0; i < 4; i++) {
            cube_fill(0);
            draw_hollowCube(i,i,i,(4-i)*2,255);
            HAL_Delay(100);
        }
        for(int8_t i = 3; i >= 0; i--) {
            cube_fill(0);
            draw_hollowCube(i,i,i,(4-i)*2,255);
            HAL_Delay(100);
        }
    }
    for(int8_t i = 0; i < 4; i++) {
        draw_hollowCube(i,i,i,(4-i)*2,255);
        HAL_Delay(300);
    }
    HAL_Delay(2000);
}

void anim_expandingCube(){
    cube_fill(0);
    for(uint8_t i = 0; i < 4; i++) {
        for(uint val = 0; val < 255; val++) {
            draw_cube(3-i, 3-i, 3-i, 2*(i+1), val);
            draw_cube(4-i, 4-i, 4-i, 2*i, 0xff);
            HAL_Delay(10);
        }
    }
}
