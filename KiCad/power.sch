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
LIBS:Helios-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
U 8 1 5B10AF1B
P 3250 3600
F 0 "U?" H 2350 3800 50  0000 C CNN
F 1 "STM32F303V(B-C)Tx_u" H 2350 3650 50  0000 C CNN
F 2 "LQFP100" H 2250 3500 50  0000 C CIN
F 3 "" H 3250 3600 50  0000 C CNN
	8    3250 3600
	1    0    0    -1  
$EndComp
$Comp
L STM32F303V(B-C)Tx_u U?
U 9 1 5B10AF78
P 3350 2700
F 0 "U?" H 2550 2700 50  0000 C CNN
F 1 "STM32F303V(B-C)Tx_u" H 2650 2600 50  0000 C CNN
F 2 "LQFP100" H 2550 2450 50  0000 C CIN
F 3 "" H 3350 2700 50  0000 C CNN
	9    3350 2700
	1    0    0    -1  
$EndComp
$Comp
L STM32F303V(B-C)Tx_u U?
U 7 1 5B10B1AF
P 3400 1050
F 0 "U?" H 2750 1150 50  0000 C CNN
F 1 "STM32F303V(B-C)Tx_u" H 2650 1000 50  0000 C CNN
F 2 "LQFP100" H 2700 850 50  0000 C CIN
F 3 "" H 3400 1050 50  0000 C CNN
	7    3400 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B10B5E3
P 3900 850
F 0 "#PWR?" H 3900 600 50  0001 C CNN
F 1 "GND" H 3900 700 50  0000 C CNN
F 2 "" H 3900 850 50  0001 C CNN
F 3 "" H 3900 850 50  0001 C CNN
	1    3900 850 
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5B10B639
P 4800 3500
F 0 "#PWR?" H 4800 3250 50  0001 C CNN
F 1 "GND" H 4800 3350 50  0000 C CNN
F 2 "" H 4800 3500 50  0001 C CNN
F 3 "" H 4800 3500 50  0001 C CNN
	1    4800 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 3400 4800 3400
Wire Wire Line
	4800 3400 4800 3700
Wire Wire Line
	4800 3500 3850 3500
Wire Wire Line
	4800 3600 3850 3600
Connection ~ 4800 3500
Wire Wire Line
	4800 3700 3850 3700
Connection ~ 4800 3600
$Comp
L +3.3V #PWR?
U 1 1 5B10B67C
P 4550 2650
F 0 "#PWR?" H 4550 2500 50  0001 C CNN
F 1 "+3.3V" H 4550 2790 50  0000 C CNN
F 2 "" H 4550 2650 50  0001 C CNN
F 3 "" H 4550 2650 50  0001 C CNN
	1    4550 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 2500 4550 2500
Wire Wire Line
	4550 2500 4550 2900
Wire Wire Line
	3850 2600 4550 2600
Connection ~ 4550 2600
Wire Wire Line
	4550 2700 3850 2700
Connection ~ 4550 2650
Wire Wire Line
	4550 2800 3850 2800
Connection ~ 4550 2700
Wire Wire Line
	4550 2900 3850 2900
Connection ~ 4550 2800
NoConn ~ 3900 950 
$Comp
L +3.3V #PWR?
U 1 1 5B10B73C
P 4050 1100
F 0 "#PWR?" H 4050 950 50  0001 C CNN
F 1 "+3.3V" H 4050 1240 50  0000 C CNN
F 2 "" H 4050 1100 50  0001 C CNN
F 3 "" H 4050 1100 50  0001 C CNN
	1    4050 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 1050 4050 1050
Wire Wire Line
	4050 1050 4050 1150
Wire Wire Line
	4050 1150 3900 1150
Connection ~ 4050 1100
$EndSCHEMATC
