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
LIBS:stm32
LIBS:MyParts
LIBS:Helios-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L STM32F303V(B-C)Tx_u U?
U 4 1 5B21CE69
P 8900 3550
F 0 "U?" H 9700 2600 50  0000 C CNN
F 1 "STM32F303V(B-C)Tx_u" H 8950 2650 50  0000 C CNN
F 2 "LQFP100" H 9000 2550 50  0000 C CIN
F 3 "" H 8900 3550 50  0000 C CNN
	4    8900 3550
	-1   0    0    1   
$EndComp
Text HLabel 1300 3050 0    60   Output ~ 12
Wind4_20
$Comp
L Polyfuse_Small F?
U 1 1 5B221E6D
P 1600 3050
F 0 "F?" V 1525 3050 50  0000 C CNN
F 1 "Polyfuse_Small" V 1675 3050 50  0000 C CNN
F 2 "" H 1650 2850 50  0001 L CNN
F 3 "" H 1600 3050 50  0001 C CNN
	1    1600 3050
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5B221EA6
P 2050 3200
F 0 "R?" V 2130 3200 50  0000 C CNN
F 1 "120" V 2050 3200 50  0000 C CNN
F 2 "" V 1980 3200 50  0001 C CNN
F 3 "" H 2050 3200 50  0001 C CNN
	1    2050 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 3050 1500 3050
Wire Wire Line
	1700 3050 6400 3050
Connection ~ 2050 3050
Text HLabel 1250 3750 0    60   Output ~ 12
Snow+24v
$Comp
L R R?
U 1 1 5B22210C
P 1600 3750
F 0 "R?" V 1680 3750 50  0000 C CNN
F 1 "9k" V 1600 3750 50  0000 C CNN
F 2 "" V 1530 3750 50  0001 C CNN
F 3 "" H 1600 3750 50  0001 C CNN
	1    1600 3750
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5B22212F
P 2400 3950
F 0 "R?" V 2480 3950 50  0000 C CNN
F 1 "1k" V 2400 3950 50  0000 C CNN
F 2 "" V 2330 3950 50  0001 C CNN
F 3 "" H 2400 3950 50  0001 C CNN
	1    2400 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3750 1450 3750
Wire Wire Line
	1750 3750 4800 3750
Wire Wire Line
	4800 3750 4800 3450
Wire Wire Line
	4800 3450 6400 3450
Text HLabel 1100 4350 0    60   Output ~ 12
pyro
$Comp
L Polyfuse_Small F?
U 1 1 5B222295
P 1500 4350
F 0 "F?" V 1425 4350 50  0000 C CNN
F 1 "Polyfuse_Small" V 1575 4350 50  0000 C CNN
F 2 "" H 1550 4150 50  0001 L CNN
F 3 "" H 1500 4350 50  0001 C CNN
	1    1500 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 4350 1400 4350
Wire Wire Line
	3250 3250 3250 4350
Wire Wire Line
	3250 4350 1600 4350
$Comp
L +3.3V #PWR?
U 1 1 5B222486
P 1100 2200
F 0 "#PWR?" H 1100 2050 50  0001 C CNN
F 1 "+3.3V" H 1100 2340 50  0000 C CNN
F 2 "" H 1100 2200 50  0001 C CNN
F 3 "" H 1100 2200 50  0001 C CNN
	1    1100 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 3800 2400 3750
Connection ~ 2400 3750
$Comp
L GND #PWR?
U 1 1 5B222747
P 1000 5450
F 0 "#PWR?" H 1000 5200 50  0001 C CNN
F 1 "GND" H 1000 5300 50  0000 C CNN
F 2 "" H 1000 5450 50  0001 C CNN
F 3 "" H 1000 5450 50  0001 C CNN
	1    1000 5450
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 5B2227C9
P 4100 2700
F 0 "D?" H 4100 2800 50  0000 C CNN
F 1 "D_Schottky" H 4100 2600 50  0000 C CNN
F 2 "" H 4100 2700 50  0001 C CNN
F 3 "" H 4100 2700 50  0001 C CNN
	1    4100 2700
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 5B222A7B
P 4500 2700
F 0 "D?" H 4500 2800 50  0000 C CNN
F 1 "D_Schottky" H 4500 2600 50  0000 C CNN
F 2 "" H 4500 2700 50  0001 C CNN
F 3 "" H 4500 2700 50  0001 C CNN
	1    4500 2700
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 5B222B1E
P 5050 2700
F 0 "D?" H 5050 2800 50  0000 C CNN
F 1 "D_Schottky" H 5050 2600 50  0000 C CNN
F 2 "" H 5050 2700 50  0001 C CNN
F 3 "" H 5050 2700 50  0001 C CNN
	1    5050 2700
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 5B222BF7
P 4050 4950
F 0 "D?" H 4050 5050 50  0000 C CNN
F 1 "D_Schottky" H 4050 4850 50  0000 C CNN
F 2 "" H 4050 4950 50  0001 C CNN
F 3 "" H 4050 4950 50  0001 C CNN
	1    4050 4950
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 5B222C5E
P 4550 4950
F 0 "D?" H 4550 5050 50  0000 C CNN
F 1 "D_Schottky" H 4550 4850 50  0000 C CNN
F 2 "" H 4550 4950 50  0001 C CNN
F 3 "" H 4550 4950 50  0001 C CNN
	1    4550 4950
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D?
U 1 1 5B222D2C
P 5100 4950
F 0 "D?" H 5100 5050 50  0000 C CNN
F 1 "D_Schottky" H 5100 4850 50  0000 C CNN
F 2 "" H 5100 4950 50  0001 C CNN
F 3 "" H 5100 4950 50  0001 C CNN
	1    5100 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 5450 5100 5450
Wire Wire Line
	5100 5450 5100 5100
Wire Wire Line
	4550 5100 4550 5450
Connection ~ 4550 5450
Wire Wire Line
	4050 5100 4050 5450
Connection ~ 4050 5450
Wire Wire Line
	3250 3250 6400 3250
$Comp
L R R?
U 1 1 5B222F6F
P 2800 4600
F 0 "R?" V 2880 4600 50  0000 C CNN
F 1 "10k" V 2800 4600 50  0000 C CNN
F 2 "" V 2730 4600 50  0001 C CNN
F 3 "" H 2800 4600 50  0001 C CNN
	1    2800 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4350 2800 4450
Connection ~ 2800 4350
Wire Wire Line
	2800 4750 2800 5450
Connection ~ 2800 5450
Wire Wire Line
	2400 4100 2400 5450
Connection ~ 2400 5450
Wire Wire Line
	2050 3350 2050 5450
Connection ~ 2050 5450
$EndSCHEMATC
