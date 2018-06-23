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
Sheet 4 14
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1700 3250 0    60   Input ~ 0
TX_en
Text HLabel 1700 3450 0    60   Input ~ 0
TX
Text HLabel 1700 3650 0    60   Input ~ 0
RX
$Comp
L SN65HV7X U3
U 1 1 5B217ECD
P 5800 3600
F 0 "U3" H 5800 3650 60  0000 C CNN
F 1 "SN65HV7X" H 5800 3550 60  0000 C CNN
F 2 "Housings_SOIC:SO-8_5.3x6.2mm_Pitch1.27mm" H 5800 3600 60  0001 C CNN
F 3 "" H 5800 3600 60  0000 C CNN
	1    5800 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3250 2250 3250
Wire Wire Line
	2250 3250 2250 5250
Wire Wire Line
	2250 5250 5600 5250
Wire Wire Line
	5600 5250 5600 4300
Wire Wire Line
	5600 4300 5900 4300
Wire Wire Line
	1700 3450 2500 3450
Wire Wire Line
	2500 3450 2500 5600
Wire Wire Line
	2500 5600 6150 5600
Wire Wire Line
	6150 5600 6150 4300
Wire Wire Line
	1700 3650 2700 3650
Wire Wire Line
	2700 3650 2700 5050
Wire Wire Line
	2700 5050 5400 5050
Wire Wire Line
	5400 5050 5400 4300
$Comp
L +3.3V #PWR018
U 1 1 5B218015
P 6150 2400
F 0 "#PWR018" H 6150 2250 50  0001 C CNN
F 1 "+3.3V" H 6150 2540 50  0000 C CNN
F 2 "" H 6150 2400 50  0001 C CNN
F 3 "" H 6150 2400 50  0001 C CNN
	1    6150 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2400 6150 2950
$Comp
L GND #PWR019
U 1 1 5B218056
P 5400 2400
F 0 "#PWR019" H 5400 2150 50  0001 C CNN
F 1 "GND" H 5400 2250 50  0000 C CNN
F 2 "" H 5400 2400 50  0001 C CNN
F 3 "" H 5400 2400 50  0001 C CNN
	1    5400 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 2400 5400 2950
$Comp
L C C10
U 1 1 5B21809E
P 5750 2500
F 0 "C10" H 5775 2600 50  0000 L CNN
F 1 ".1u" H 5775 2400 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5788 2350 50  0001 C CNN
F 3 "" H 5750 2500 50  0001 C CNN
	1    5750 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 2500 5600 2500
Connection ~ 5400 2500
Wire Wire Line
	5900 2500 6150 2500
Connection ~ 6150 2500
$Comp
L D_TVS_x2_AAC D3
U 1 1 5B218147
P 7700 2950
F 0 "D3" H 7700 3125 50  0000 C CNN
F 1 "D_TVS_x2_AAC" H 7700 3050 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 7550 2950 50  0001 C CNN
F 3 "" H 7550 2950 50  0001 C CNN
	1    7700 2950
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 5B2181EF
P 7050 2600
F 0 "R2" V 7130 2600 50  0000 C CNN
F 1 "10" V 7050 2600 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" V 6980 2600 50  0001 C CNN
F 3 "" H 7050 2600 50  0001 C CNN
	1    7050 2600
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5B218238
P 7050 3300
F 0 "R3" V 7130 3300 50  0000 C CNN
F 1 "10" V 7050 3300 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" V 6980 3300 50  0001 C CNN
F 3 "" H 7050 3300 50  0001 C CNN
	1    7050 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 2950 5650 2750
Wire Wire Line
	5650 2750 6550 2750
Wire Wire Line
	5900 2950 6550 2950
$Comp
L Polyfuse_Small F1
U 1 1 5B2182F6
P 8250 2600
F 0 "F1" V 8175 2600 50  0000 C CNN
F 1 "Polyfuse_Small" V 8325 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_1812_HandSoldering" H 8300 2400 50  0001 L CNN
F 3 "" H 8250 2600 50  0001 C CNN
	1    8250 2600
	0    1    1    0   
$EndComp
$Comp
L Polyfuse_Small F2
U 1 1 5B218351
P 8300 3300
F 0 "F2" V 8225 3300 50  0000 C CNN
F 1 "Polyfuse_Small" V 8375 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_1812_HandSoldering" H 8350 3100 50  0001 L CNN
F 3 "" H 8300 3300 50  0001 C CNN
	1    8300 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 2750 6550 2600
Wire Wire Line
	6550 2600 6900 2600
Wire Wire Line
	6550 2950 6550 3300
Wire Wire Line
	6550 3300 6900 3300
Wire Wire Line
	7200 2600 8150 2600
Wire Wire Line
	7200 3300 8200 3300
Connection ~ 7700 2600
Connection ~ 7700 3300
$Comp
L GND #PWR020
U 1 1 5B2185CF
P 7850 2950
F 0 "#PWR020" H 7850 2700 50  0001 C CNN
F 1 "GND" H 7850 2800 50  0000 C CNN
F 2 "" H 7850 2950 50  0001 C CNN
F 3 "" H 7850 2950 50  0001 C CNN
	1    7850 2950
	0    -1   -1   0   
$EndComp
$Comp
L Varistor RV1
U 1 1 5B218635
P 8900 2900
F 0 "RV1" V 9025 2900 50  0000 C CNN
F 1 "Varistor" V 8775 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_1210_HandSoldering" V 8830 2900 50  0001 C CNN
F 3 "" H 8900 2900 50  0001 C CNN
	1    8900 2900
	0    1    1    0   
$EndComp
$Comp
L Varistor RV2
U 1 1 5B2186AA
P 8900 3150
F 0 "RV2" V 9025 3150 50  0000 C CNN
F 1 "Varistor" V 8775 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_1210_HandSoldering" V 8830 3150 50  0001 C CNN
F 3 "" H 8900 3150 50  0001 C CNN
	1    8900 3150
	0    1    1    0   
$EndComp
Text HLabel 9950 2900 2    60   Output Italic 0
RS485B(+)
Text HLabel 9950 3150 2    60   Output Italic 0
RS485A(-)
Wire Wire Line
	9050 2900 9950 2900
Wire Wire Line
	9050 3150 9950 3150
Wire Wire Line
	8350 2600 9350 2600
Wire Wire Line
	9350 2600 9350 2900
Connection ~ 9350 2900
Wire Wire Line
	8400 3300 9350 3300
Wire Wire Line
	9350 3300 9350 3150
Connection ~ 9350 3150
$Comp
L GND #PWR021
U 1 1 5B218929
P 8550 3000
F 0 "#PWR021" H 8550 2750 50  0001 C CNN
F 1 "GND" H 8550 2850 50  0000 C CNN
F 2 "" H 8550 3000 50  0001 C CNN
F 3 "" H 8550 3000 50  0001 C CNN
	1    8550 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 2900 8750 3150
Wire Wire Line
	8550 3000 8750 3000
Connection ~ 8750 3000
$EndSCHEMATC
