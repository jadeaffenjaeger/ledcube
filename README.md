# Contents
Codebase and Schematics for an easily extendable LED cube based on the STM32F103 and TPIC6B595 shift registers.

## Driver Boards
The driver board contains two TPIC6B595, capable of controlling a total of 16 outputs with a current sinking capability of 100mA per channel, eliminating the need for external driving transistors. Resistors can be replaced easily to allow for different types of LEDs. The boards are designed to be daisy-chained together, so that larger cubes can be built without redesigning anything, just by adding more driver boards. Also, this easily fills up the minimum order with most board houses. I had mine
manufactured at [Dirty PCBs](www.dirtypcbs.com), where 10 boards cost around 15USD.

Inputs on the board are:

    1 VCC
    2 Serial Clock
    3 Register Clock/Latch
    4 Serial Data
    5 GND

Assembled Board:
![Assembled Driver Board](/img/board_asem.jpg)
