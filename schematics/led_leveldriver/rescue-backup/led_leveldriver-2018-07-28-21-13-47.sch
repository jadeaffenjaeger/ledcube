EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:74hct245
LIBS:bluepill_breakouts
LIBS:led_leveldriver-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "16 LED Serial Driver Board"
Date "2017-01-13"
Rev "0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L VCC #PWR01
U 1 1 5879234B
P 4150 1650
F 0 "#PWR01" H 4150 1500 50  0001 C CNN
F 1 "VCC" H 4150 1800 50  0000 C CNN
F 2 "" H 4150 1650 50  0000 C CNN
F 3 "" H 4150 1650 50  0000 C CNN
	1    4150 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 58792367
P 4600 2550
F 0 "#PWR02" H 4600 2300 50  0001 C CNN
F 1 "GND" H 4600 2400 50  0000 C CNN
F 2 "" H 4600 2550 50  0000 C CNN
F 3 "" H 4600 2550 50  0000 C CNN
	1    4600 2550
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 58792387
P 3750 1950
F 0 "C1" H 3775 2050 50  0000 L CNN
F 1 "0.1uF" H 3775 1850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3788 1800 50  0001 C CNN
F 3 "" H 3750 1950 50  0000 C CNN
	1    3750 1950
	1    0    0    -1  
$EndComp
NoConn ~ 4700 1900
NoConn ~ 4700 2000
$Comp
L TPIC6B595 IC1
U 1 1 58792DD9
P 5400 1700
F 0 "IC1" H 5400 800 60  0000 C CNN
F 1 "TPIC6B595" H 5400 2400 60  0000 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 5400 1700 60  0001 C CNN
F 3 "" H 5400 1700 60  0001 C CNN
	1    5400 1700
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 587931AA
P 4400 1700
F 0 "R1" V 4480 1700 50  0000 C CNN
F 1 "10k" V 4400 1700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4330 1700 50  0001 C CNN
F 3 "" H 4400 1700 50  0000 C CNN
	1    4400 1700
	0    1    1    0   
$EndComp
$Comp
L Conn_01x05 BOARD_OUT1
U 1 1 58795CC1
P 10300 5900
F 0 "BOARD_OUT1" H 10300 6200 50  0000 C CNN
F 1 "CONN_01X05" V 10400 5900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 10300 5900 50  0001 C CNN
F 3 "" H 10300 5900 50  0000 C CNN
	1    10300 5900
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR03
U 1 1 58796886
P 10500 5450
F 0 "#PWR03" H 10500 5300 50  0001 C CNN
F 1 "VCC" H 10500 5600 50  0000 C CNN
F 2 "" H 10500 5450 50  0000 C CNN
F 3 "" H 10500 5450 50  0000 C CNN
	1    10500 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 58796B4D
P 9900 6000
F 0 "#PWR04" H 9900 5750 50  0001 C CNN
F 1 "GND" H 9900 5850 50  0000 C CNN
F 2 "" H 9900 6000 50  0000 C CNN
F 3 "" H 9900 6000 50  0000 C CNN
	1    9900 6000
	1    0    0    -1  
$EndComp
Text Label 10400 5350 3    60   ~ 0
SRCK
Text Label 10300 5350 3    60   ~ 0
RCK
Wire Wire Line
	4700 2200 4600 2200
Wire Wire Line
	4600 2300 4700 2300
Connection ~ 4600 2300
Connection ~ 4600 2400
Wire Wire Line
	4600 1800 4600 2200
Wire Wire Line
	4600 2200 4600 2300
Wire Wire Line
	4600 2300 4600 2400
Wire Wire Line
	4600 2400 4600 2550
Wire Wire Line
	10100 5700 10100 5600
Wire Wire Line
	10100 5600 9900 5600
Wire Wire Line
	9900 5600 9900 6000
Wire Wire Line
	10500 5700 10500 5450
Wire Wire Line
	10300 5700 10300 5350
Wire Wire Line
	10400 5700 10400 5350
$Comp
L Q_PMOS_GSD Q1
U 1 1 5AC54DE4
P 7550 1200
F 0 "Q1" H 7750 1250 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 7750 1150 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7750 1300 50  0001 C CNN
F 3 "" H 7550 1200 50  0001 C CNN
	1    7550 1200
	1    0    0    1   
$EndComp
$Comp
L R R2
U 1 1 5AC55354
P 7150 1050
F 0 "R2" V 7230 1050 50  0000 C CNN
F 1 "10k" V 7150 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7080 1050 50  0001 C CNN
F 3 "" H 7150 1050 50  0001 C CNN
	1    7150 1050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 5AC55389
P 7150 800
F 0 "#PWR05" H 7150 650 50  0001 C CNN
F 1 "VCC" H 7150 950 50  0000 C CNN
F 2 "" H 7150 800 50  0001 C CNN
F 3 "" H 7150 800 50  0001 C CNN
	1    7150 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 800  7150 850 
Wire Wire Line
	7150 850  7150 900 
Wire Wire Line
	7150 850  7650 850 
Wire Wire Line
	7650 850  7650 1000
Connection ~ 7150 850 
Connection ~ 7150 1200
$Comp
L Q_PMOS_GSD Q2
U 1 1 5AC56300
P 7550 1950
F 0 "Q2" H 7750 2000 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 7750 1900 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7750 2050 50  0001 C CNN
F 3 "" H 7550 1950 50  0001 C CNN
	1    7550 1950
	1    0    0    1   
$EndComp
$Comp
L R R3
U 1 1 5AC56306
P 7150 1800
F 0 "R3" V 7230 1800 50  0000 C CNN
F 1 "10k" V 7150 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7080 1800 50  0001 C CNN
F 3 "" H 7150 1800 50  0001 C CNN
	1    7150 1800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR06
U 1 1 5AC5630C
P 7150 1550
F 0 "#PWR06" H 7150 1400 50  0001 C CNN
F 1 "VCC" H 7150 1700 50  0000 C CNN
F 2 "" H 7150 1550 50  0001 C CNN
F 3 "" H 7150 1550 50  0001 C CNN
	1    7150 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1550 7150 1600
Wire Wire Line
	7150 1600 7150 1650
Wire Wire Line
	7150 1600 7650 1600
Wire Wire Line
	7650 1600 7650 1750
Connection ~ 7150 1600
Connection ~ 7150 1950
$Comp
L Q_PMOS_GSD Q3
U 1 1 5AC56437
P 7550 2650
F 0 "Q3" H 7750 2700 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 7750 2600 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7750 2750 50  0001 C CNN
F 3 "" H 7550 2650 50  0001 C CNN
	1    7550 2650
	1    0    0    1   
$EndComp
$Comp
L R R4
U 1 1 5AC5643D
P 7150 2500
F 0 "R4" V 7230 2500 50  0000 C CNN
F 1 "10k" V 7150 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7080 2500 50  0001 C CNN
F 3 "" H 7150 2500 50  0001 C CNN
	1    7150 2500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 5AC56443
P 7150 2250
F 0 "#PWR07" H 7150 2100 50  0001 C CNN
F 1 "VCC" H 7150 2400 50  0000 C CNN
F 2 "" H 7150 2250 50  0001 C CNN
F 3 "" H 7150 2250 50  0001 C CNN
	1    7150 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2250 7150 2300
Wire Wire Line
	7150 2300 7150 2350
Wire Wire Line
	7150 2300 7650 2300
Wire Wire Line
	7650 2300 7650 2450
Connection ~ 7150 2300
Connection ~ 7150 2650
$Comp
L Q_PMOS_GSD Q4
U 1 1 5AC5644E
P 7550 3400
F 0 "Q4" H 7750 3450 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 7750 3350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7750 3500 50  0001 C CNN
F 3 "" H 7550 3400 50  0001 C CNN
	1    7550 3400
	1    0    0    1   
$EndComp
$Comp
L R R5
U 1 1 5AC56454
P 7150 3250
F 0 "R5" V 7230 3250 50  0000 C CNN
F 1 "10k" V 7150 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7080 3250 50  0001 C CNN
F 3 "" H 7150 3250 50  0001 C CNN
	1    7150 3250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR08
U 1 1 5AC5645A
P 7150 3000
F 0 "#PWR08" H 7150 2850 50  0001 C CNN
F 1 "VCC" H 7150 3150 50  0000 C CNN
F 2 "" H 7150 3000 50  0001 C CNN
F 3 "" H 7150 3000 50  0001 C CNN
	1    7150 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3000 7150 3050
Wire Wire Line
	7150 3050 7150 3100
Wire Wire Line
	7150 3050 7650 3050
Wire Wire Line
	7650 3050 7650 3200
Connection ~ 7150 3050
Connection ~ 7150 3400
$Comp
L Q_PMOS_GSD Q5
U 1 1 5AC56F35
P 10200 1200
F 0 "Q5" H 10400 1250 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 10400 1150 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 10400 1300 50  0001 C CNN
F 3 "" H 10200 1200 50  0001 C CNN
	1    10200 1200
	-1   0    0    1   
$EndComp
$Comp
L R R6
U 1 1 5AC56F3B
P 10600 1050
F 0 "R6" V 10680 1050 50  0000 C CNN
F 1 "10k" V 10600 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10530 1050 50  0001 C CNN
F 3 "" H 10600 1050 50  0001 C CNN
	1    10600 1050
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR09
U 1 1 5AC56F41
P 10600 800
F 0 "#PWR09" H 10600 650 50  0001 C CNN
F 1 "VCC" H 10600 950 50  0000 C CNN
F 2 "" H 10600 800 50  0001 C CNN
F 3 "" H 10600 800 50  0001 C CNN
	1    10600 800 
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10600 800  10600 850 
Wire Wire Line
	10600 850  10600 900 
Wire Wire Line
	10600 850  10100 850 
Wire Wire Line
	10100 850  10100 1000
Connection ~ 10600 850 
Connection ~ 10600 1200
$Comp
L Q_PMOS_GSD Q6
U 1 1 5AC56F4C
P 10200 1950
F 0 "Q6" H 10400 2000 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 10400 1900 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 10400 2050 50  0001 C CNN
F 3 "" H 10200 1950 50  0001 C CNN
	1    10200 1950
	-1   0    0    1   
$EndComp
$Comp
L R R7
U 1 1 5AC56F52
P 10600 1800
F 0 "R7" V 10680 1800 50  0000 C CNN
F 1 "10k" V 10600 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10530 1800 50  0001 C CNN
F 3 "" H 10600 1800 50  0001 C CNN
	1    10600 1800
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 5AC56F58
P 10600 1550
F 0 "#PWR010" H 10600 1400 50  0001 C CNN
F 1 "VCC" H 10600 1700 50  0000 C CNN
F 2 "" H 10600 1550 50  0001 C CNN
F 3 "" H 10600 1550 50  0001 C CNN
	1    10600 1550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10600 1550 10600 1600
Wire Wire Line
	10600 1600 10600 1650
Wire Wire Line
	10600 1600 10100 1600
Wire Wire Line
	10100 1600 10100 1750
Connection ~ 10600 1600
Connection ~ 10600 1950
$Comp
L Q_PMOS_GSD Q7
U 1 1 5AC56F63
P 10200 2650
F 0 "Q7" H 10400 2700 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 10400 2600 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 10400 2750 50  0001 C CNN
F 3 "" H 10200 2650 50  0001 C CNN
	1    10200 2650
	-1   0    0    1   
$EndComp
$Comp
L R R8
U 1 1 5AC56F69
P 10600 2500
F 0 "R8" V 10680 2500 50  0000 C CNN
F 1 "10k" V 10600 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10530 2500 50  0001 C CNN
F 3 "" H 10600 2500 50  0001 C CNN
	1    10600 2500
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 5AC56F6F
P 10600 2250
F 0 "#PWR011" H 10600 2100 50  0001 C CNN
F 1 "VCC" H 10600 2400 50  0000 C CNN
F 2 "" H 10600 2250 50  0001 C CNN
F 3 "" H 10600 2250 50  0001 C CNN
	1    10600 2250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10600 2250 10600 2300
Wire Wire Line
	10600 2300 10600 2350
Wire Wire Line
	10600 2300 10100 2300
Wire Wire Line
	10100 2300 10100 2450
Connection ~ 10600 2300
Connection ~ 10600 2650
$Comp
L Q_PMOS_GSD Q8
U 1 1 5AC56F7A
P 10200 3400
F 0 "Q8" H 10400 3450 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 10400 3350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 10400 3500 50  0001 C CNN
F 3 "" H 10200 3400 50  0001 C CNN
	1    10200 3400
	-1   0    0    1   
$EndComp
$Comp
L R R9
U 1 1 5AC56F80
P 10600 3250
F 0 "R9" V 10680 3250 50  0000 C CNN
F 1 "10k" V 10600 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 10530 3250 50  0001 C CNN
F 3 "" H 10600 3250 50  0001 C CNN
	1    10600 3250
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 5AC56F86
P 10600 3000
F 0 "#PWR012" H 10600 2850 50  0001 C CNN
F 1 "VCC" H 10600 3150 50  0000 C CNN
F 2 "" H 10600 3000 50  0001 C CNN
F 3 "" H 10600 3000 50  0001 C CNN
	1    10600 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10600 3000 10600 3050
Wire Wire Line
	10600 3050 10600 3100
Wire Wire Line
	10600 3050 10100 3050
Wire Wire Line
	10100 3050 10100 3200
Connection ~ 10600 3050
Connection ~ 10600 3400
$Comp
L Conn_02x04_Odd_Even J1
U 1 1 5ACA7745
P 8800 2350
F 0 "J1" H 8850 2550 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 8850 2050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x04_Pitch2.54mm" H 8800 2350 50  0001 C CNN
F 3 "" H 8800 2350 50  0001 C CNN
	1    8800 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2400 4700 2400
Wire Wire Line
	4150 1650 4150 1700
Wire Wire Line
	4150 1700 4250 1700
Wire Wire Line
	4550 1700 4700 1700
$Comp
L VCC #PWR?
U 1 1 5B5CB1AD
P 4150 2000
F 0 "#PWR?" H 4150 1850 50  0001 C CNN
F 1 "VCC" H 4150 2150 50  0000 C CNN
F 2 "" H 4150 2000 50  0000 C CNN
F 3 "" H 4150 2000 50  0000 C CNN
	1    4150 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2000 4150 2100
Wire Wire Line
	4150 2100 4700 2100
$Comp
L VCC #PWR?
U 1 1 5B5CB2BB
P 3750 1650
F 0 "#PWR?" H 3750 1500 50  0001 C CNN
F 1 "VCC" H 3750 1800 50  0000 C CNN
F 2 "" H 3750 1650 50  0000 C CNN
F 3 "" H 3750 1650 50  0000 C CNN
	1    3750 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B5CB3A1
P 3750 2300
F 0 "#PWR?" H 3750 2050 50  0001 C CNN
F 1 "GND" H 3750 2150 50  0000 C CNN
F 2 "" H 3750 2300 50  0000 C CNN
F 3 "" H 3750 2300 50  0000 C CNN
	1    3750 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1650 3750 1800
Wire Wire Line
	3750 2100 3750 2300
Wire Wire Line
	4700 1800 4600 1800
Connection ~ 4600 2200
Text Label 4550 1500 2    60   ~ 0
DOUT
Wire Wire Line
	4550 1500 4700 1500
Text Label 10200 5350 3    60   ~ 0
DOUT
Wire Wire Line
	10200 5350 10200 5700
$Comp
L BluePill_STM32F103C U?
U 1 1 5B5CDDB0
P 1950 4900
F 0 "U?" H 1500 3550 50  0000 C CNN
F 1 "BluePill_STM32F103C" H 2000 5750 50  0000 C CNN
F 2 "BluePill_breakouts:BluePill_STM32F103C" H 2000 3300 50  0001 C CNN
F 3 "www.rogerclark.net" H 1950 3400 50  0001 C CNN
	1    1950 4900
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5B5CF019
P 3350 3800
F 0 "#PWR?" H 3350 3650 50  0001 C CNN
F 1 "+3V3" H 3350 3940 50  0000 C CNN
F 2 "" H 3350 3800 50  0001 C CNN
F 3 "" H 3350 3800 50  0001 C CNN
	1    3350 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4200 2850 4200
Wire Wire Line
	3050 3900 3050 4200
$Comp
L GND #PWR?
U 1 1 5B5CF122
P 950 6150
F 0 "#PWR?" H 950 5900 50  0001 C CNN
F 1 "GND" H 950 6000 50  0000 C CNN
F 2 "" H 950 6150 50  0000 C CNN
F 3 "" H 950 6150 50  0000 C CNN
	1    950  6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B5CF185
P 3350 4450
F 0 "#PWR?" H 3350 4200 50  0001 C CNN
F 1 "GND" H 3350 4300 50  0000 C CNN
F 2 "" H 3350 4450 50  0000 C CNN
F 3 "" H 3350 4450 50  0000 C CNN
	1    3350 4450
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5B5CFA3E
P 3350 4150
F 0 "C?" H 3375 4250 50  0000 L CNN
F 1 "0.1uF" H 3375 4050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3388 4000 50  0001 C CNN
F 3 "" H 3350 4150 50  0000 C CNN
	1    3350 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3800 3350 3900
Wire Wire Line
	3350 3900 3350 4000
Wire Wire Line
	3350 4300 3350 4350
Wire Wire Line
	3350 4350 3350 4450
Wire Wire Line
	3050 3900 3350 3900
Connection ~ 3350 3900
Wire Wire Line
	2850 4300 3050 4300
Wire Wire Line
	3050 4300 3050 4350
Wire Wire Line
	3050 4350 3350 4350
Connection ~ 3350 4350
Wire Wire Line
	1100 6100 950  6100
Wire Wire Line
	950  6000 950  6100
Wire Wire Line
	950  6100 950  6150
Wire Wire Line
	1100 6000 950  6000
Connection ~ 950  6100
$Comp
L +3V3 #PWR?
U 1 1 5B5CFEA6
P 950 5850
F 0 "#PWR?" H 950 5700 50  0001 C CNN
F 1 "+3V3" H 950 5990 50  0000 C CNN
F 2 "" H 950 5850 50  0001 C CNN
F 3 "" H 950 5850 50  0001 C CNN
	1    950  5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5850 950  5900
Wire Wire Line
	950  5900 1100 5900
Text Label 6000 6250 0    60   ~ 0
SRCK
Text Label 6000 6350 0    60   ~ 0
RCK
Text Label 6000 6450 0    60   ~ 0
DATA
Text Label 4550 1400 2    60   ~ 0
DATA
Text Label 4550 1300 2    60   ~ 0
SRCK
Text Label 4550 1200 2    60   ~ 0
RCK
Wire Wire Line
	4550 1200 4700 1200
Wire Wire Line
	4550 1300 4700 1300
Wire Wire Line
	4550 1400 4700 1400
$Comp
L 74HCT245 U?
U 1 1 5B5D3956
P 5200 6750
F 0 "U?" H 5200 7250 60  0000 C CNN
F 1 "74HCT245" V 5200 6750 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-20_7.5x12.8mm_Pitch1.27mm" H 5200 6050 60  0001 C CNN
F 3 "" H 5200 6750 60  0000 C CNN
	1    5200 6750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B5D40C1
P 6450 7300
F 0 "#PWR?" H 6450 7050 50  0001 C CNN
F 1 "GND" H 6450 7150 50  0000 C CNN
F 2 "" H 6450 7300 50  0000 C CNN
F 3 "" H 6450 7300 50  0000 C CNN
	1    6450 7300
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5B5D40C7
P 6450 7000
F 0 "C?" H 6475 7100 50  0000 L CNN
F 1 "0.1uF" H 6475 6900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6488 6850 50  0001 C CNN
F 3 "" H 6450 7000 50  0000 C CNN
	1    6450 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 6450 6450 6750
Wire Wire Line
	6450 6750 6450 6850
Wire Wire Line
	6450 7150 6450 7200
Wire Wire Line
	6450 7200 6450 7300
Wire Wire Line
	6150 6750 6450 6750
Connection ~ 6450 6750
Wire Wire Line
	5900 7200 6450 7200
Connection ~ 6450 7200
$Comp
L VCC #PWR?
U 1 1 5B5D411F
P 6450 6450
F 0 "#PWR?" H 6450 6300 50  0001 C CNN
F 1 "VCC" H 6450 6600 50  0000 C CNN
F 2 "" H 6450 6450 50  0000 C CNN
F 3 "" H 6450 6450 50  0000 C CNN
	1    6450 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 7100 6150 7100
Wire Wire Line
	6150 7100 6150 6750
Wire Wire Line
	5900 6250 6000 6250
Wire Wire Line
	5900 6350 6000 6350
Wire Wire Line
	5900 6450 6000 6450
$Comp
L LM1117-3.3 U?
U 1 1 5B5D66E7
P 1600 1300
F 0 "U?" H 1450 1425 50  0000 C CNN
F 1 "LM1117-3.3" H 1600 1425 50  0000 L CNN
F 2 "" H 1600 1300 50  0001 C CNN
F 3 "" H 1600 1300 50  0001 C CNN
	1    1600 1300
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5B5D67B6
P 2250 1200
F 0 "#PWR?" H 2250 1050 50  0001 C CNN
F 1 "+3V3" H 2250 1340 50  0000 C CNN
F 2 "" H 2250 1200 50  0001 C CNN
F 3 "" H 2250 1200 50  0001 C CNN
	1    2250 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1300 2250 1300
Wire Wire Line
	2250 1200 2250 1300
Wire Wire Line
	2250 1300 2250 1450
$Comp
L VCC #PWR?
U 1 1 5B5D68BA
P 900 1150
F 0 "#PWR?" H 900 1000 50  0001 C CNN
F 1 "VCC" H 900 1300 50  0000 C CNN
F 2 "" H 900 1150 50  0000 C CNN
F 3 "" H 900 1150 50  0000 C CNN
	1    900  1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1150 900  1300
Wire Wire Line
	900  1300 900  1450
Wire Wire Line
	900  1300 1300 1300
$Comp
L GND #PWR?
U 1 1 5B5D69C0
P 1600 1800
F 0 "#PWR?" H 1600 1550 50  0001 C CNN
F 1 "GND" H 1600 1650 50  0000 C CNN
F 2 "" H 1600 1800 50  0000 C CNN
F 3 "" H 1600 1800 50  0000 C CNN
	1    1600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1600 1600 1750
Wire Wire Line
	1600 1750 1600 1800
$Comp
L CP1 C?
U 1 1 5B5D6AE4
P 900 1600
F 0 "C?" H 925 1700 50  0000 L CNN
F 1 "CP1" H 925 1500 50  0000 L CNN
F 2 "" H 900 1600 50  0001 C CNN
F 3 "" H 900 1600 50  0001 C CNN
	1    900  1600
	1    0    0    -1  
$EndComp
$Comp
L CP1 C?
U 1 1 5B5D6B68
P 2250 1600
F 0 "C?" H 2275 1700 50  0000 L CNN
F 1 "CP1" H 2275 1500 50  0000 L CNN
F 2 "" H 2250 1600 50  0001 C CNN
F 3 "" H 2250 1600 50  0001 C CNN
	1    2250 1600
	1    0    0    -1  
$EndComp
Connection ~ 900  1300
Wire Wire Line
	900  1750 1600 1750
Wire Wire Line
	1600 1750 2250 1750
Connection ~ 1600 1750
Connection ~ 2250 1300
$Comp
L VCC #PWR?
U 1 1 5B5D7E61
P 4150 6750
F 0 "#PWR?" H 4150 6600 50  0001 C CNN
F 1 "VCC" H 4150 6900 50  0000 C CNN
F 2 "" H 4150 6750 50  0000 C CNN
F 3 "" H 4150 6750 50  0000 C CNN
	1    4150 6750
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5B5D7EA6
P 4150 7000
F 0 "R?" V 4230 7000 50  0000 C CNN
F 1 "R" V 4150 7000 50  0000 C CNN
F 2 "" V 4080 7000 50  0001 C CNN
F 3 "" H 4150 7000 50  0001 C CNN
	1    4150 7000
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5B5D7F51
P 3900 7000
F 0 "R?" V 3980 7000 50  0000 C CNN
F 1 "R" V 3900 7000 50  0000 C CNN
F 2 "" V 3830 7000 50  0001 C CNN
F 3 "" H 3900 7000 50  0001 C CNN
	1    3900 7000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5B5D7FC5
P 3900 6750
F 0 "#PWR?" H 3900 6600 50  0001 C CNN
F 1 "VCC" H 3900 6900 50  0000 C CNN
F 2 "" H 3900 6750 50  0000 C CNN
F 3 "" H 3900 6750 50  0000 C CNN
	1    3900 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6750 3900 6850
Wire Wire Line
	4150 6750 4150 6850
Wire Wire Line
	4150 7150 4500 7150
Wire Wire Line
	4500 7250 3900 7250
Wire Wire Line
	3900 7250 3900 7150
Text Label 6950 1200 2    60   ~ 0
L0
Text Label 6150 1700 0    60   ~ 0
L0
Wire Wire Line
	6100 1700 6150 1700
Text Label 10850 1200 0    60   ~ 0
L1
Wire Wire Line
	10400 1200 10600 1200
Wire Wire Line
	10600 1200 10850 1200
Text Label 6150 1800 0    60   ~ 0
L1
Wire Wire Line
	6100 1800 6150 1800
Text Label 6950 1950 2    60   ~ 0
L2
Text Label 6150 1900 0    60   ~ 0
L2
Wire Wire Line
	6100 1900 6150 1900
Wire Wire Line
	6950 1950 7150 1950
Wire Wire Line
	7150 1950 7350 1950
Text Label 10850 1950 0    60   ~ 0
L3
Text Label 6150 2000 0    60   ~ 0
L3
Wire Wire Line
	6100 2000 6150 2000
Wire Wire Line
	10400 1950 10600 1950
Wire Wire Line
	10600 1950 10850 1950
Wire Wire Line
	6950 1200 7150 1200
Wire Wire Line
	7150 1200 7350 1200
Text Label 6950 2650 2    60   ~ 0
L4
Wire Wire Line
	6950 2650 7150 2650
Wire Wire Line
	7150 2650 7350 2650
Text Label 6950 3400 2    60   ~ 0
L6
Wire Wire Line
	6950 3400 7150 3400
Wire Wire Line
	7150 3400 7350 3400
Text Label 6150 2100 0    60   ~ 0
L4
Wire Wire Line
	6100 2100 6150 2100
Text Label 6150 2200 0    60   ~ 0
L5
Wire Wire Line
	6100 2200 6150 2200
Text Label 6150 2300 0    60   ~ 0
L6
Wire Wire Line
	6100 2300 6150 2300
Text Label 6150 2400 0    60   ~ 0
L7
Wire Wire Line
	6100 2400 6150 2400
Text Label 10850 2650 0    60   ~ 0
L5
Text Label 10850 3400 0    60   ~ 0
L7
Wire Wire Line
	10400 3400 10600 3400
Wire Wire Line
	10600 3400 10850 3400
Wire Wire Line
	10400 2650 10600 2650
Wire Wire Line
	10600 2650 10850 2650
Wire Wire Line
	7650 1400 7650 1500
Wire Wire Line
	7650 1500 8600 1500
Wire Wire Line
	8600 1500 8600 2250
Wire Wire Line
	7650 2150 7650 2200
Wire Wire Line
	7650 2200 8150 2200
Wire Wire Line
	8150 2200 8150 2350
Wire Wire Line
	8150 2350 8600 2350
Wire Wire Line
	7650 2850 7650 2900
Wire Wire Line
	7650 2900 8150 2900
Wire Wire Line
	8150 2900 8150 2450
Wire Wire Line
	8150 2450 8600 2450
Wire Wire Line
	7650 3600 7650 3700
Wire Wire Line
	7650 3700 8600 3700
Wire Wire Line
	8600 3700 8600 2550
Wire Wire Line
	10100 1400 10100 1500
Wire Wire Line
	10100 1500 9100 1500
Wire Wire Line
	9100 1500 9100 2250
Wire Wire Line
	9100 2350 9400 2350
Wire Wire Line
	9400 2350 9400 2200
Wire Wire Line
	9400 2200 10100 2200
Wire Wire Line
	10100 2200 10100 2150
Wire Wire Line
	9100 2450 9400 2450
Wire Wire Line
	9400 2450 9400 2900
Wire Wire Line
	9400 2900 10100 2900
Wire Wire Line
	10100 2900 10100 2850
Wire Wire Line
	9100 2550 9100 3700
Wire Wire Line
	9100 3700 10100 3700
Wire Wire Line
	10100 3700 10100 3600
$EndSCHEMATC
