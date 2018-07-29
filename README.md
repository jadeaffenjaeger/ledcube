# Contents
Codebase and Schematics for an easily extendable LED cube based on the STM32F103 and TPIC6B595 shift registers.

## Structure
The cube uses two types of driver PCBs: One *Level driver*, which activates the anodes for one out of eight levels at a time. The PCB also contains the main MCU on a "Blue Pill" breakout board, as well as voltage regulation for the MCU and 74HCT245 bus driver for 3.3V-5V level conversion.
Four *Row Drivers*, each of which controls the anodes of 16 of 64 columns independently.
All boards are designed to be chained together with the level driver coming first, followed by the row drivers.
This makes it possible to control the cube with just 3 pins on the MCU. All boards are designed to be extendable and reusable for cubes that require more or less contol pins

## Row Driver Boards
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

## Level Driver board
In an earlier iteration, this was a very simple board that only contained the shift register IC and the p-channel MOSFETs. As of now, the board was redesigned to contain the MCU, voltage regulation and the shift register and MOS transistors
