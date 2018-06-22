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
Sheet 14 14
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2700 1400 0    60   Input ~ 0
SPI-CS
Text HLabel 2700 5750 0    60   Input ~ 0
RTD
$Comp
L MAX31865 U?
U 1 1 5B2C8C9A
P 5950 3300
F 0 "U?" H 5950 3250 60  0000 C CNN
F 1 "MAX31865" H 5950 3350 60  0000 C CNN
F 2 "" H 5900 3000 60  0000 C CNN
F 3 "" H 5900 3000 60  0000 C CNN
	1    5950 3300
	1    0    0    -1  
$EndComp
NoConn ~ 6850 2950
$Comp
L GND #PWR?
U 1 1 5B2C8CA2
P 7150 3100
F 0 "#PWR?" H 7150 2850 50  0001 C CNN
F 1 "GND" H 7150 2950 50  0000 C CNN
F 2 "" H 7150 3100 50  0001 C CNN
F 3 "" H 7150 3100 50  0001 C CNN
	1    7150 3100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5B2C8CA8
P 7150 3650
F 0 "#PWR?" H 7150 3400 50  0001 C CNN
F 1 "GND" H 7150 3500 50  0000 C CNN
F 2 "" H 7150 3650 50  0001 C CNN
F 3 "" H 7150 3650 50  0001 C CNN
	1    7150 3650
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5B2C8CAE
P 4250 3400
F 0 "R?" V 4330 3400 50  0000 C CNN
F 1 "430 .1%" V 4250 3400 50  0000 C CNN
F 2 "" V 4180 3400 50  0001 C CNN
F 3 "" H 4250 3400 50  0001 C CNN
	1    4250 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3250 5000 3250
Wire Wire Line
	4700 3350 5000 3350
Wire Wire Line
	4250 3550 5000 3550
Wire Wire Line
	4700 3550 4700 3450
$Comp
L +3.3V #PWR?
U 1 1 5B2C8CB9
P 4200 3050
F 0 "#PWR?" H 4200 2900 50  0001 C CNN
F 1 "+3.3V" H 4200 3190 50  0000 C CNN
F 2 "" H 4200 3050 50  0001 C CNN
F 3 "" H 4200 3050 50  0001 C CNN
	1    4200 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 3150 5000 3150
$Comp
L C C?
U 1 1 5B2C8CC0
P 4400 2750
F 0 "C?" H 4425 2850 50  0000 L CNN
F 1 ".1 uF" H 4425 2650 50  0000 L CNN
F 2 "" H 4438 2600 50  0001 C CNN
F 3 "" H 4400 2750 50  0001 C CNN
	1    4400 2750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5B2C8CC7
P 4650 2750
F 0 "C?" H 4675 2850 50  0000 L CNN
F 1 ".1 uF" H 4675 2650 50  0000 L CNN
F 2 "" H 4688 2600 50  0001 C CNN
F 3 "" H 4650 2750 50  0001 C CNN
	1    4650 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2900 4650 3050
$Comp
L GND #PWR?
U 1 1 5B2C8CCF
P 4500 2450
F 0 "#PWR?" H 4500 2200 50  0001 C CNN
F 1 "GND" H 4500 2300 50  0000 C CNN
F 2 "" H 4500 2450 50  0001 C CNN
F 3 "" H 4500 2450 50  0001 C CNN
	1    4500 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 2600 4400 2450
Wire Wire Line
	4400 2450 4650 2450
Wire Wire Line
	4650 2450 4650 2600
Connection ~ 4500 2450
Wire Wire Line
	6850 3050 7150 3050
Wire Wire Line
	7150 3050 7150 3150
Wire Wire Line
	7150 3150 6850 3150
Connection ~ 7150 3100
Wire Wire Line
	6850 3650 7150 3650
Wire Bus Line
	2700 1400 8100 1400
Wire Bus Line
	2700 5750 7400 5750
Entry Wire Line
	3750 5750 3850 5650
Entry Wire Line
	4300 5750 4400 5650
Entry Wire Line
	7400 5750 7500 5650
Wire Wire Line
	6850 3850 7500 3850
Wire Wire Line
	7500 3850 7500 5650
Wire Wire Line
	5000 3850 4400 3850
Wire Wire Line
	4400 3850 4400 5650
Wire Wire Line
	5000 3650 3850 3650
Wire Wire Line
	3850 3650 3850 5650
Wire Wire Line
	5000 3750 4700 3750
Wire Wire Line
	4700 3750 4700 3650
Connection ~ 4700 3650
Wire Wire Line
	6850 3750 7050 3750
Wire Wire Line
	7050 3750 7050 3850
Connection ~ 7050 3850
Connection ~ 4700 3550
Wire Wire Line
	4700 3350 4700 3250
Connection ~ 4700 3250
Wire Wire Line
	4700 3450 5000 3450
Connection ~ 4650 3050
Wire Wire Line
	4200 3050 5000 3050
Wire Wire Line
	4250 3150 4250 3050
Connection ~ 4250 3050
Wire Wire Line
	4400 2900 4400 3150
Connection ~ 4400 3150
$Comp
L C C?
U 1 1 5B2C8CF9
P 5900 4750
F 0 "C?" H 5925 4850 50  0000 L CNN
F 1 "100nF" H 5925 4650 50  0000 L CNN
F 2 "" H 5938 4600 50  0001 C CNN
F 3 "" H 5900 4750 50  0001 C CNN
	1    5900 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 4750 7500 4750
Connection ~ 7500 4750
Wire Wire Line
	5750 4750 4400 4750
Connection ~ 4400 4750
Text Label 4400 5350 1    60   ~ 0
RTDb5
Text Label 3850 5300 1    60   ~ 0
RTDa5
Text Label 7500 5350 1    60   ~ 0
RTD-5
Entry Wire Line
	4800 1400 4900 1500
Wire Wire Line
	4900 1500 4900 2950
Wire Wire Line
	4900 2950 5000 2950
Entry Wire Line
	7500 1400 7600 1500
Entry Wire Line
	7700 1400 7800 1500
Entry Wire Line
	7900 1400 8000 1500
Entry Wire Line
	8100 1400 8200 1500
Wire Wire Line
	7600 1500 7600 3250
Wire Wire Line
	7600 3250 6850 3250
Wire Wire Line
	7800 1500 7800 3350
Wire Wire Line
	7800 3350 6850 3350
Wire Wire Line
	8000 1500 8000 3450
Wire Wire Line
	8000 3450 6850 3450
Wire Wire Line
	8200 1500 8200 3550
Wire Wire Line
	8200 3550 6850 3550
Text Label 4900 2400 1    60   ~ 0
~DRDY5
Text Label 7600 2400 1    60   ~ 0
RTD_MISO
Text Label 7800 2400 1    60   ~ 0
~RTDcs1
Text Label 8000 2400 1    60   ~ 0
SCK
Text Label 8200 2400 1    60   ~ 0
RTD_MOSI
$EndSCHEMATC
