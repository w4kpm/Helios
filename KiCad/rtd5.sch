EESchema Schematic File Version 4
LIBS:Helios-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 14
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
L MyParts:MAX31865 U8
U 1 1 5B2C8C9A
P 5950 3300
F 0 "U8" H 5950 3250 60  0000 C CNN
F 1 "MAX31865" H 5950 3350 60  0000 C CNN
F 2 "Housings_SSOP:SSOP-20_5.3x7.2mm_Pitch0.65mm" H 5900 3000 60  0001 C CNN
F 3 "" H 5900 3000 60  0000 C CNN
	1    5950 3300
	1    0    0    -1  
$EndComp
NoConn ~ 6850 2950
$Comp
L power1:GND #PWR041
U 1 1 5B2C8CA2
P 7150 3100
F 0 "#PWR041" H 7150 2850 50  0001 C CNN
F 1 "GND" H 7150 2950 50  0000 C CNN
F 2 "" H 7150 3100 50  0001 C CNN
F 3 "" H 7150 3100 50  0001 C CNN
	1    7150 3100
	0    -1   -1   0   
$EndComp
$Comp
L power1:GND #PWR042
U 1 1 5B2C8CA8
P 7150 3650
F 0 "#PWR042" H 7150 3400 50  0001 C CNN
F 1 "GND" H 7150 3500 50  0000 C CNN
F 2 "" H 7150 3650 50  0001 C CNN
F 3 "" H 7150 3650 50  0001 C CNN
	1    7150 3650
	0    -1   -1   0   
$EndComp
$Comp
L device:R R12
U 1 1 5B2C8CAE
P 4250 3400
F 0 "R12" V 4330 3400 50  0000 C CNN
F 1 "430 .1%" V 4250 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4180 3400 50  0001 C CNN
F 3 "" H 4250 3400 50  0001 C CNN
	1    4250 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3250 4700 3250
Wire Wire Line
	4700 3350 5000 3350
Wire Wire Line
	4250 3550 4700 3550
Wire Wire Line
	4700 3550 4700 3450
$Comp
L power1:+3.3V #PWR043
U 1 1 5B2C8CB9
P 4200 3050
F 0 "#PWR043" H 4200 2900 50  0001 C CNN
F 1 "+3.3V" H 4200 3190 50  0000 C CNN
F 2 "" H 4200 3050 50  0001 C CNN
F 3 "" H 4200 3050 50  0001 C CNN
	1    4200 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 3150 4400 3150
$Comp
L device:C C23
U 1 1 5B2C8CC0
P 4400 2750
F 0 "C23" H 4425 2850 50  0000 L CNN
F 1 ".1 uF" H 4425 2650 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4438 2600 50  0001 C CNN
F 3 "" H 4400 2750 50  0001 C CNN
	1    4400 2750
	1    0    0    -1  
$EndComp
$Comp
L device:C C24
U 1 1 5B2C8CC7
P 4650 2750
F 0 "C24" H 4675 2850 50  0000 L CNN
F 1 ".1 uF" H 4675 2650 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4688 2600 50  0001 C CNN
F 3 "" H 4650 2750 50  0001 C CNN
	1    4650 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2900 4650 3050
$Comp
L power1:GND #PWR044
U 1 1 5B2C8CCF
P 4500 2450
F 0 "#PWR044" H 4500 2200 50  0001 C CNN
F 1 "GND" H 4500 2300 50  0000 C CNN
F 2 "" H 4500 2450 50  0001 C CNN
F 3 "" H 4500 2450 50  0001 C CNN
	1    4500 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 2600 4400 2450
Wire Wire Line
	4400 2450 4500 2450
Wire Wire Line
	4650 2450 4650 2600
Connection ~ 4500 2450
Wire Wire Line
	6850 3050 7150 3050
Wire Wire Line
	7150 3050 7150 3100
Wire Wire Line
	7150 3150 6850 3150
Connection ~ 7150 3100
Wire Wire Line
	6850 3650 7150 3650
Wire Wire Line
	6850 3850 7050 3850
Wire Wire Line
	7500 3850 7500 4750
Wire Wire Line
	5000 3850 4400 3850
Wire Wire Line
	4400 3850 4400 4750
Wire Wire Line
	5000 3650 4700 3650
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
	4200 3050 4250 3050
Wire Wire Line
	4250 3150 4250 3050
Connection ~ 4250 3050
Wire Wire Line
	4400 2900 4400 3150
Connection ~ 4400 3150
$Comp
L device:C C25
U 1 1 5B2C8CF9
P 5900 4750
F 0 "C25" H 5925 4850 50  0000 L CNN
F 1 ".1 uF" H 5925 4650 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5938 4600 50  0001 C CNN
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
Wire Wire Line
	4900 1500 4900 2950
Wire Wire Line
	4900 2950 5000 2950
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
Text GLabel 3850 5650 3    60   Input ~ 0
RTDa5
Text GLabel 4400 5650 3    60   Input ~ 0
RTDb5
Text GLabel 7500 5650 3    60   Input ~ 0
RTD-5
Text GLabel 4900 1500 1    60   Input ~ 0
~DRDY5
Text GLabel 7600 1500 1    60   Input ~ 0
RTD_MISO
Text GLabel 7800 1500 1    60   Input ~ 0
~RTDcs5
Text GLabel 8000 1500 1    60   Input ~ 0
RTD_SCK
Text GLabel 8200 1500 1    60   Input ~ 0
RTD_MOSI
Wire Wire Line
	4500 2450 4650 2450
Wire Wire Line
	7150 3100 7150 3150
Wire Wire Line
	4700 3650 3850 3650
Wire Wire Line
	7050 3850 7500 3850
Wire Wire Line
	4700 3550 5000 3550
Wire Wire Line
	4700 3250 5000 3250
Wire Wire Line
	4650 3050 5000 3050
Wire Wire Line
	4250 3050 4650 3050
Wire Wire Line
	4400 3150 5000 3150
Wire Wire Line
	7500 4750 7500 5650
Wire Wire Line
	4400 4750 4400 5650
$EndSCHEMATC
