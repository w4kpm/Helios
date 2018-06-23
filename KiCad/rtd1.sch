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
L MAX31865 U4
U 1 1 5B2C4CA0
P 4950 3550
F 0 "U4" H 4950 3500 60  0000 C CNN
F 1 "MAX31865" H 4950 3600 60  0000 C CNN
F 2 "Housings_SSOP:SSOP-20_5.3x7.2mm_Pitch0.65mm" H 4900 3250 60  0001 C CNN
F 3 "" H 4900 3250 60  0000 C CNN
	1    4950 3550
	1    0    0    -1  
$EndComp
NoConn ~ 5850 3200
$Comp
L GND #PWR044
U 1 1 5B2C4ED0
P 6150 3350
F 0 "#PWR044" H 6150 3100 50  0001 C CNN
F 1 "GND" H 6150 3200 50  0000 C CNN
F 2 "" H 6150 3350 50  0001 C CNN
F 3 "" H 6150 3350 50  0001 C CNN
	1    6150 3350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR045
U 1 1 5B2C4EFE
P 6150 3900
F 0 "#PWR045" H 6150 3650 50  0001 C CNN
F 1 "GND" H 6150 3750 50  0000 C CNN
F 2 "" H 6150 3900 50  0001 C CNN
F 3 "" H 6150 3900 50  0001 C CNN
	1    6150 3900
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 5B2C4F14
P 3250 3650
F 0 "R8" V 3330 3650 50  0000 C CNN
F 1 "430 .1%" V 3250 3650 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" V 3180 3650 50  0001 C CNN
F 3 "" H 3250 3650 50  0001 C CNN
	1    3250 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3500 4000 3500
Wire Wire Line
	3700 3600 4000 3600
Wire Wire Line
	3250 3800 4000 3800
Wire Wire Line
	3700 3800 3700 3700
$Comp
L +3.3V #PWR046
U 1 1 5B2C4F85
P 3200 3300
F 0 "#PWR046" H 3200 3150 50  0001 C CNN
F 1 "+3.3V" H 3200 3440 50  0000 C CNN
F 2 "" H 3200 3300 50  0001 C CNN
F 3 "" H 3200 3300 50  0001 C CNN
	1    3200 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 3400 4000 3400
$Comp
L C C11
U 1 1 5B2C4FD4
P 3400 3000
F 0 "C11" H 3425 3100 50  0000 L CNN
F 1 ".1 uF" H 3425 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3438 2850 50  0001 C CNN
F 3 "" H 3400 3000 50  0001 C CNN
	1    3400 3000
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 5B2C4FF5
P 3650 3000
F 0 "C12" H 3675 3100 50  0000 L CNN
F 1 ".1 uF" H 3675 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3688 2850 50  0001 C CNN
F 3 "" H 3650 3000 50  0001 C CNN
	1    3650 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3150 3650 3300
$Comp
L GND #PWR047
U 1 1 5B2C504A
P 3500 2700
F 0 "#PWR047" H 3500 2450 50  0001 C CNN
F 1 "GND" H 3500 2550 50  0000 C CNN
F 2 "" H 3500 2700 50  0001 C CNN
F 3 "" H 3500 2700 50  0001 C CNN
	1    3500 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 2850 3400 2700
Wire Wire Line
	3400 2700 3650 2700
Wire Wire Line
	3650 2700 3650 2850
Connection ~ 3500 2700
Wire Wire Line
	5850 3300 6150 3300
Wire Wire Line
	6150 3300 6150 3400
Wire Wire Line
	6150 3400 5850 3400
Connection ~ 6150 3350
Wire Wire Line
	5850 3900 6150 3900
Wire Wire Line
	5850 4100 6500 4100
Wire Wire Line
	6500 4100 6500 5900
Wire Wire Line
	4000 4100 3400 4100
Wire Wire Line
	3400 4100 3400 5900
Wire Wire Line
	4000 3900 2850 3900
Wire Wire Line
	4000 4000 3700 4000
Wire Wire Line
	3700 4000 3700 3900
Connection ~ 3700 3900
Wire Wire Line
	5850 4000 6050 4000
Wire Wire Line
	6050 4000 6050 4100
Connection ~ 6050 4100
Connection ~ 3700 3800
Wire Wire Line
	3700 3600 3700 3500
Connection ~ 3700 3500
Wire Wire Line
	3700 3700 4000 3700
Connection ~ 3650 3300
Wire Wire Line
	3200 3300 4000 3300
Wire Wire Line
	3250 3400 3250 3300
Connection ~ 3250 3300
Wire Wire Line
	3400 3150 3400 3400
Connection ~ 3400 3400
$Comp
L C C13
U 1 1 5B2C578E
P 4900 5000
F 0 "C13" H 4925 5100 50  0000 L CNN
F 1 "100nF" H 4925 4900 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4938 4850 50  0001 C CNN
F 3 "" H 4900 5000 50  0001 C CNN
	1    4900 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 5000 6500 5000
Connection ~ 6500 5000
Wire Wire Line
	4750 5000 3400 5000
Connection ~ 3400 5000
Text Label 3400 5600 1    60   ~ 0
RTDb1
Text Label 6500 5600 1    60   ~ 0
RTD-1
Wire Wire Line
	3900 1750 3900 3200
Wire Wire Line
	3900 3200 4000 3200
Wire Wire Line
	6600 1750 6600 3500
Wire Wire Line
	6600 3500 5850 3500
Wire Wire Line
	6800 1750 6800 3600
Wire Wire Line
	6800 3600 5850 3600
Wire Wire Line
	7000 1750 7000 3700
Wire Wire Line
	7000 3700 5850 3700
Wire Wire Line
	7200 1750 7200 3800
Wire Wire Line
	7200 3800 5850 3800
Text GLabel 2850 3900 0    60   Input ~ 0
RTDa1
Text GLabel 3400 5900 3    60   Input ~ 0
RTDb1
Text GLabel 6500 5900 3    60   Input ~ 0
RTD-1
Text GLabel 3900 1750 1    60   Input ~ 0
~DRDY1
Text GLabel 6600 1750 1    60   Input ~ 0
RTD_MISO
Text GLabel 6800 1750 1    60   Input ~ 0
~RTDcs1
Text GLabel 7000 1750 1    60   Input ~ 0
RTD_SCK
Text GLabel 7200 1750 1    60   Input ~ 0
RTD_MISO
$EndSCHEMATC
