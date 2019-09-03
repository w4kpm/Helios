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
Sheet 10 14
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
L MAX31865 U5
U 1 1 5B2C73F9
P 5550 3300
F 0 "U5" H 5550 3250 60  0000 C CNN
F 1 "MAX31865" H 5550 3350 60  0000 C CNN
F 2 "Housings_SSOP:SSOP-20_5.3x7.2mm_Pitch0.65mm" H 5500 3000 60  0001 C CNN
F 3 "" H 5500 3000 60  0000 C CNN
	1    5550 3300
	1    0    0    -1  
$EndComp
NoConn ~ 6450 2950
$Comp
L GND #PWR029
U 1 1 5B2C7401
P 6750 3100
F 0 "#PWR029" H 6750 2850 50  0001 C CNN
F 1 "GND" H 6750 2950 50  0000 C CNN
F 2 "" H 6750 3100 50  0001 C CNN
F 3 "" H 6750 3100 50  0001 C CNN
	1    6750 3100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR030
U 1 1 5B2C7407
P 6750 3650
F 0 "#PWR030" H 6750 3400 50  0001 C CNN
F 1 "GND" H 6750 3500 50  0000 C CNN
F 2 "" H 6750 3650 50  0001 C CNN
F 3 "" H 6750 3650 50  0001 C CNN
	1    6750 3650
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 5B2C740D
P 3850 3400
F 0 "R9" V 3930 3400 50  0000 C CNN
F 1 "430 .1%" V 3850 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3780 3400 50  0001 C CNN
F 3 "" H 3850 3400 50  0001 C CNN
	1    3850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3250 4600 3250
Wire Wire Line
	4300 3350 4600 3350
Wire Wire Line
	3850 3550 4600 3550
Wire Wire Line
	4300 3550 4300 3450
$Comp
L +3.3V #PWR031
U 1 1 5B2C7418
P 3800 3050
F 0 "#PWR031" H 3800 2900 50  0001 C CNN
F 1 "+3.3V" H 3800 3190 50  0000 C CNN
F 2 "" H 3800 3050 50  0001 C CNN
F 3 "" H 3800 3050 50  0001 C CNN
	1    3800 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 3150 4600 3150
$Comp
L C C14
U 1 1 5B2C741F
P 4000 2750
F 0 "C14" H 4025 2850 50  0000 L CNN
F 1 ".1 uF" H 4025 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4038 2600 50  0001 C CNN
F 3 "" H 4000 2750 50  0001 C CNN
	1    4000 2750
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 5B2C7426
P 4250 2750
F 0 "C15" H 4275 2850 50  0000 L CNN
F 1 ".1 uF" H 4275 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4288 2600 50  0001 C CNN
F 3 "" H 4250 2750 50  0001 C CNN
	1    4250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2900 4250 3050
$Comp
L GND #PWR032
U 1 1 5B2C742E
P 4100 2450
F 0 "#PWR032" H 4100 2200 50  0001 C CNN
F 1 "GND" H 4100 2300 50  0000 C CNN
F 2 "" H 4100 2450 50  0001 C CNN
F 3 "" H 4100 2450 50  0001 C CNN
	1    4100 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 2600 4000 2450
Wire Wire Line
	4000 2450 4250 2450
Wire Wire Line
	4250 2450 4250 2600
Connection ~ 4100 2450
Wire Wire Line
	6450 3050 6750 3050
Wire Wire Line
	6750 3050 6750 3150
Wire Wire Line
	6750 3150 6450 3150
Connection ~ 6750 3100
Wire Wire Line
	6450 3650 6750 3650
Wire Wire Line
	6450 3850 7100 3850
Wire Wire Line
	7100 3850 7100 5650
Wire Wire Line
	4600 3850 4000 3850
Wire Wire Line
	4000 3850 4000 5650
Wire Wire Line
	4600 3650 3450 3650
Wire Wire Line
	3450 3650 3450 5650
Wire Wire Line
	4600 3750 4300 3750
Wire Wire Line
	4300 3750 4300 3650
Connection ~ 4300 3650
Wire Wire Line
	6450 3750 6650 3750
Wire Wire Line
	6650 3750 6650 3850
Connection ~ 6650 3850
Connection ~ 4300 3550
Wire Wire Line
	4300 3350 4300 3250
Connection ~ 4300 3250
Wire Wire Line
	4300 3450 4600 3450
Connection ~ 4250 3050
Wire Wire Line
	3800 3050 4600 3050
Wire Wire Line
	3850 3150 3850 3050
Connection ~ 3850 3050
Wire Wire Line
	4000 2900 4000 3150
Connection ~ 4000 3150
$Comp
L C C16
U 1 1 5B2C7458
P 5500 4750
F 0 "C16" H 5525 4850 50  0000 L CNN
F 1 "100nF" H 5525 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5538 4600 50  0001 C CNN
F 3 "" H 5500 4750 50  0001 C CNN
	1    5500 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 4750 7100 4750
Connection ~ 7100 4750
Wire Wire Line
	5350 4750 4000 4750
Connection ~ 4000 4750
Text Label 4000 5350 1    60   ~ 0
RTDb2
Text Label 3450 5300 1    60   ~ 0
RTDa2
Text Label 7100 5350 1    60   ~ 0
RTD-2
Wire Wire Line
	4500 1500 4500 2950
Wire Wire Line
	4500 2950 4600 2950
Wire Wire Line
	7200 1500 7200 3250
Wire Wire Line
	7200 3250 6450 3250
Wire Wire Line
	7400 1500 7400 3350
Wire Wire Line
	7400 3350 6450 3350
Wire Wire Line
	7600 1500 7600 3450
Wire Wire Line
	7600 3450 6450 3450
Wire Wire Line
	7800 1500 7800 3550
Wire Wire Line
	7800 3550 6450 3550
Text GLabel 3450 5650 3    60   Input ~ 0
RTDa2
Text GLabel 4000 5650 3    60   Input ~ 0
RTDb2
Text GLabel 7100 5650 3    60   Input ~ 0
RTD-2
Text GLabel 4500 1500 1    60   Input ~ 0
~DRDY2
Text GLabel 7200 1500 1    60   Input ~ 0
RTD_MISO
Text GLabel 7400 1500 1    60   Input ~ 0
~RTDcs2
Text GLabel 7600 1500 1    60   Input ~ 0
RTD_SCK
Text GLabel 7800 1500 1    60   Input ~ 0
RTD_MOSI
$EndSCHEMATC