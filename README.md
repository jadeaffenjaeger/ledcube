#Contents
Codebase and Schematics for an easily extendable LED cube based on the STM32F103 and TPIC6B595 shift registers.

##Driver Boards
The driver board contains two TPIC6B595, capable of controlling a total of 16 outputs with a current sinking capability of 100mA per channel, eliminating the need for external driving transistors. Resistors can be replaced easily to accomodate for different color LEDs. The boards are designed to be daisy-chained together, so that larger cubes will simply need more boards cascaded together, while still running on the same SPI bus. This is my first shot at PCB design, so even though it works, there's certainly room for optimization.
