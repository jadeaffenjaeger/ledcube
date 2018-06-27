#include "draw.h"

// Base linear extrapolation function
void draw_linearExtrapolate(uint8_t point, uint8_t value, SExtrapolation_t* buffer) {

    uint8_t a = (point - (point % 16));
    uint32_t x0_v = ((15 - a) * value)/16;
    uint32_t x1_v = (a * value)/16;

    buffer->p1    = (uint8_t) x0_v;
    buffer->p2    = (uint8_t) x1_v;
}

// Experimental linear extrapolation. Extrapolates point in 128x128x128 grid to it's neighbors in 8x8x8 grid.
// Might behave in unpredictable ways :)
void draw_drawPoint(uint8_t x, uint8_t y, uint8_t z, uint8_t value) {
    if(x > 127 || y > 127 || z > 127){
        return;
    }

    SExtrapolation_t xAx, yAx0, yAx1, zAx0, zAx1, zAx2, zAx3;
    uint8_t x0, x1, y0, y1, z0, z1;
    cube_linearExtrapolate(x, value, &xAx);

    cube_linearExtrapolate(y, xAx.p1, &yAx0);
    cube_linearExtrapolate(y, xAx.p2, &yAx1);

    cube_linearExtrapolate(z, yAx0.p1, &zAx0);
    cube_linearExtrapolate(z, yAx0.p2, &zAx1);
    cube_linearExtrapolate(z, yAx1.p1, &zAx2);
    cube_linearExtrapolate(z, yAx1.p2, &zAx3);

    x0 = x / 16;
    x1 = x0 + 1;
    y0 = y / 16;
    y1 = y0 + 1;
    z0 = z / 16;
    z1 = z0 + 1;

    cube_setPx(x0, y0, z0, zAx0.p1);
    cube_setPx(x0, y0, z1, zAx0.p2);
    cube_setPx(x0, y1, z0, zAx1.p1);
    cube_setPx(x0, y1, z1, zAx1.p2);
    cube_setPx(x1, y0, z0, zAx2.p1);
    cube_setPx(x1, y0, z1, zAx2.p2);
    cube_setPx(x1, y1, z0, zAx3.p1);
    cube_setPx(x1, y1, z1, zAx3.p2);
}

void draw_cube(uint8_t x, uint8_t y, uint8_t z, uint8_t size, uint8_t value) {
    for(uint32_t xx = x; xx < x + size; xx++) {
        for(uint32_t yy = y; yy < y + size; yy++) {
            for(uint32_t zz = z; zz < z + size; zz++) {
                cube_setPx(xx, yy, zz, value);
            }
        }
    }
}
