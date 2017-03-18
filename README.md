#Contents
Codebase and Schematics for an easily extendable LED cube based on the STM32F103 and TPIC6B595 shift registers.

##Driver Boards
The driver board contains two TPIC6B595, capable of controlling a total of 16 outputs with a current sinking capability of 100mA per channel, eliminating the need for external driving transistors. Resistors can be replaced easily to accomodate for different color LEDs. The boards are designed to be daisy-chained together, so that larger cubes just need more boards and still run on the same SPI bus. The main reason is, that I wanted to just order a few of these boards and use them up on future
LED cube projects, regardless of size and if they are color or monochrome

Inputs on the board are:
    1 VCC
    2 Serial Clock
    3 Register Clock/Latch
    4 Serial Data
    5 GND
