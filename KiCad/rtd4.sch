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
Sheet 12 14
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
L MAX31865 U7
U 1 1 5B2C85A1
P 5950 3100
F 0 "U7" H 5950 3050 60  0000 C CNN
F 1 "MAX31865" H 5950 3150 60  0000 C CNN
F 2 "Housings_SSOP:SSOP-20_5.3x7.2mm_Pitch0.65mm" H 5900 2800 60  0001 C CNN
F 3 "" H 5900 2800 60  0000 C CNN
	1    5950 3100
	1    0    0    -1  
$EndComp
NoConn ~ 6850 2750
$Comp
L GND #PWR036
U 1 1 5B2C85A9
P 7150 2900
F 0 "#PWR036" H 7150 2650 50  0001 C CNN
F 1 "GND" H 7150 2750 50  0000 C CNN
F 2 "" H 7150 2900 50  0001 C CNN
F 3 "" H 7150 2900 50  0001 C CNN
	1    7150 2900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR037
U 1 1 5B2C85AF
P 7150 3450
F 0 "#PWR037" H 7150 3200 50  0001 C CNN
F 1 "GND" H 7150 3300 50  0000 C CNN
F 2 "" H 7150 3450 50  0001 C CNN
F 3 "" H 7150 3450 50  0001 C CNN
	1    7150 3450
	0    -1   -1   0   
$EndComp
$Comp
L R R11
U 1 1 5B2C85B5
P 4250 3200
F 0 "R11" V 4330 3200 50  0000 C CNN
F 1 "430 .1%" V 4250 3200 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" V 4180 3200 50  0001 C CNN
F 3 "" H 4250 3200 50  0001 C CNN
	1    4250 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3050 5000 3050
Wire Wire Line
	4700 3150 5000 3150
Wire Wire Line
	4250 3350 5000 3350
Wire Wire Line
	4700 3350 4700 3250
$Comp
L +3.3V #PWR038
U 1 1 5B2C85C0
P 4200 2850
F 0 "#PWR038" H 4200 2700 50  0001 C CNN
F 1 "+3.3V" H 4200 2990 50  0000 C CNN
F 2 "" H 4200 2850 50  0001 C CNN
F 3 "" H 4200 2850 50  0001 C CNN
	1    4200 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 2950 5000 2950
$Comp
L C C20
U 1 1 5B2C85C7
P 4400 2550
F 0 "C20" H 4425 2650 50  0000 L CNN
F 1 ".1 uF" H 4425 2450 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4438 2400 50  0001 C CNN
F 3 "" H 4400 2550 50  0001 C CNN
	1    4400 2550
	1    0    0    -1  
$EndComp
$Comp
L C C21
U 1 1 5B2C85CE
P 4650 2550
F 0 "C21" H 4675 2650 50  0000 L CNN
F 1 ".1 uF" H 4675 2450 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4688 2400 50  0001 C CNN
F 3 "" H 4650 2550 50  0001 C CNN
	1    4650 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2700 4650 2850
$Comp
L GND #PWR039
U 1 1 5B2C85D6
P 4500 2250
F 0 "#PWR039" H 4500 2000 50  0001 C CNN
F 1 "GND" H 4500 2100 50  0000 C CNN
F 2 "" H 4500 2250 50  0001 C CNN
F 3 "" H 4500 2250 50  0001 C CNN
	1    4500 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 2400 4400 2250
Wire Wire Line
	4400 2250 4650 2250
Wire Wire Line
	4650 2250 4650 2400
Connection ~ 4500 2250
Wire Wire Line
	6850 2850 7150 2850
Wire Wire Line
	7150 2850 7150 2950
Wire Wire Line
	7150 2950 6850 2950
Connection ~ 7150 2900
Wire Wire Line
	6850 3450 7150 3450
Wire Wire Line
	6850 3650 7500 3650
Wire Wire Line
	7500 3650 7500 5450
Wire Wire Line
	5000 3650 4400 3650
Wire Wire Line
	4400 3650 4400 5450
Wire Wire Line
	5000 3450 3850 3450
Wire Wire Line
	3850 3450 3850 5450
Wire Wire Line
	5000 3550 4700 3550
Wire Wire Line
	4700 3550 4700 3450
Connection ~ 4700 3450
Wire Wire Line
	6850 3550 7050 3550
Wire Wire Line
	7050 3550 7050 3650
Connection ~ 7050 3650
Connection ~ 4700 3350
Wire Wire Line
	4700 3150 4700 3050
Connection ~ 4700 3050
Wire Wire Line
	4700 3250 5000 3250
Connection ~ 4650 2850
Wire Wire Line
	4200 2850 5000 2850
Wire Wire Line
	4250 2950 4250 2850
Connection ~ 4250 2850
Wire Wire Line
	4400 2700 4400 2950
Connection ~ 4400 2950
$Comp
L C C22
U 1 1 5B2C8600
P 5900 4550
F 0 "C22" H 5925 4650 50  0000 L CNN
F 1 "100nF" H 5925 4450 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5938 4400 50  0001 C CNN
F 3 "" H 5900 4550 50  0001 C CNN
	1    5900 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 4550 7500 4550
Connection ~ 7500 4550
Wire Wire Line
	5750 4550 4400 4550
Connection ~ 4400 4550
Wire Wire Line
	4900 1300 4900 2750
Wire Wire Line
	4900 2750 5000 2750
Wire Wire Line
	7600 1300 7600 3050
Wire Wire Line
	7600 3050 6850 3050
Wire Wire Line
	7800 1300 7800 3150
Wire Wire Line
	7800 3150 6850 3150
Wire Wire Line
	8000 1300 8000 3250
Wire Wire Line
	8000 3250 6850 3250
Wire Wire Line
	8200 1300 8200 3350
Wire Wire Line
	8200 3350 6850 3350
Text GLabel 4900 1300 1    60   Input ~ 0
~DRDY4
Text GLabel 7600 1300 1    60   Input ~ 0
RTD_MISO
Text GLabel 7800 1300 1    60   Input ~ 0
~RTDcs4
Text GLabel 8000 1300 1    60   Input ~ 0
RTD_SCK
Text GLabel 8200 1300 1    60   Input ~ 0
RTD_MOSI
Text GLabel 3850 5450 3    60   Input ~ 0
RTDa4
Text GLabel 4400 5450 3    60   Input ~ 0
RTDb4
Text GLabel 7500 5450 3    60   Input ~ 0
RTD-4
$EndSCHEMATC
