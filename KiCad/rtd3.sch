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
Sheet 11 14
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
L MAX31865 U6
U 1 1 5B2C7DC9
P 6000 3450
F 0 "U6" H 6000 3400 60  0000 C CNN
F 1 "MAX31865" H 6000 3500 60  0000 C CNN
F 2 "Housings_SSOP:SSOP-20_5.3x7.2mm_Pitch0.65mm" H 5950 3150 60  0001 C CNN
F 3 "" H 5950 3150 60  0000 C CNN
	1    6000 3450
	1    0    0    -1  
$EndComp
NoConn ~ 6900 3100
$Comp
L GND #PWR032
U 1 1 5B2C7DD1
P 7200 3250
F 0 "#PWR032" H 7200 3000 50  0001 C CNN
F 1 "GND" H 7200 3100 50  0000 C CNN
F 2 "" H 7200 3250 50  0001 C CNN
F 3 "" H 7200 3250 50  0001 C CNN
	1    7200 3250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR033
U 1 1 5B2C7DD7
P 7200 3800
F 0 "#PWR033" H 7200 3550 50  0001 C CNN
F 1 "GND" H 7200 3650 50  0000 C CNN
F 2 "" H 7200 3800 50  0001 C CNN
F 3 "" H 7200 3800 50  0001 C CNN
	1    7200 3800
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 5B2C7DDD
P 4300 3550
F 0 "R10" V 4380 3550 50  0000 C CNN
F 1 "430 .1%" V 4300 3550 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" V 4230 3550 50  0001 C CNN
F 3 "" H 4300 3550 50  0001 C CNN
	1    4300 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3400 5050 3400
Wire Wire Line
	4750 3500 5050 3500
Wire Wire Line
	4300 3700 5050 3700
Wire Wire Line
	4750 3700 4750 3600
$Comp
L +3.3V #PWR034
U 1 1 5B2C7DE8
P 4250 3200
F 0 "#PWR034" H 4250 3050 50  0001 C CNN
F 1 "+3.3V" H 4250 3340 50  0000 C CNN
F 2 "" H 4250 3200 50  0001 C CNN
F 3 "" H 4250 3200 50  0001 C CNN
	1    4250 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 3300 5050 3300
$Comp
L C C17
U 1 1 5B2C7DEF
P 4450 2900
F 0 "C17" H 4475 3000 50  0000 L CNN
F 1 ".1 uF" H 4475 2800 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4488 2750 50  0001 C CNN
F 3 "" H 4450 2900 50  0001 C CNN
	1    4450 2900
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 5B2C7DF6
P 4700 2900
F 0 "C18" H 4725 3000 50  0000 L CNN
F 1 ".1 uF" H 4725 2800 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4738 2750 50  0001 C CNN
F 3 "" H 4700 2900 50  0001 C CNN
	1    4700 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3200 4700 3050
$Comp
L GND #PWR035
U 1 1 5B2C7DFE
P 4550 2600
F 0 "#PWR035" H 4550 2350 50  0001 C CNN
F 1 "GND" H 4550 2450 50  0000 C CNN
F 2 "" H 4550 2600 50  0001 C CNN
F 3 "" H 4550 2600 50  0001 C CNN
	1    4550 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4450 2750 4450 2600
Wire Wire Line
	4450 2600 4700 2600
Wire Wire Line
	4700 2600 4700 2750
Connection ~ 4550 2600
Wire Wire Line
	6900 3200 7200 3200
Wire Wire Line
	7200 3200 7200 3300
Wire Wire Line
	7200 3300 6900 3300
Connection ~ 7200 3250
Wire Wire Line
	6900 3800 7200 3800
Wire Wire Line
	6900 4000 7550 4000
Wire Wire Line
	7550 4000 7550 5800
Wire Wire Line
	5050 4000 4450 4000
Wire Wire Line
	4450 4000 4450 5800
Wire Wire Line
	3900 3800 5050 3800
Wire Wire Line
	3900 3800 3900 5800
Wire Wire Line
	5050 3900 4750 3900
Wire Wire Line
	4750 3900 4750 3800
Connection ~ 4750 3800
Wire Wire Line
	6900 3900 7100 3900
Wire Wire Line
	7100 3900 7100 4000
Connection ~ 7100 4000
Connection ~ 4750 3700
Wire Wire Line
	4750 3500 4750 3400
Connection ~ 4750 3400
Wire Wire Line
	4750 3600 5050 3600
Connection ~ 4700 3200
Wire Wire Line
	4250 3200 5050 3200
Wire Wire Line
	4300 3300 4300 3200
Connection ~ 4300 3200
Wire Wire Line
	4450 3050 4450 3300
Connection ~ 4450 3300
$Comp
L C C19
U 1 1 5B2C7E28
P 5950 4900
F 0 "C19" H 5975 5000 50  0000 L CNN
F 1 "100nF" H 5975 4800 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5988 4750 50  0001 C CNN
F 3 "" H 5950 4900 50  0001 C CNN
	1    5950 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 4900 7550 4900
Connection ~ 7550 4900
Wire Wire Line
	5800 4900 4450 4900
Connection ~ 4450 4900
Wire Wire Line
	4950 1650 4950 3100
Wire Wire Line
	4950 3100 5050 3100
Wire Wire Line
	7650 1650 7650 3400
Wire Wire Line
	7650 3400 6900 3400
Wire Wire Line
	7850 1650 7850 3500
Wire Wire Line
	7850 3500 6900 3500
Wire Wire Line
	8050 1650 8050 3600
Wire Wire Line
	8050 3600 6900 3600
Wire Wire Line
	8250 1650 8250 3700
Wire Wire Line
	8250 3700 6900 3700
Text GLabel 3900 5800 3    60   Input ~ 0
RTDa3
Text GLabel 4450 5800 3    60   Input ~ 0
RTDb3
Text GLabel 7550 5800 3    60   Input ~ 0
RTD-3
Text GLabel 4950 1650 1    60   Input ~ 0
~DRDY3
Text GLabel 7650 1650 1    60   Input ~ 0
RTD_MISO
Text GLabel 7850 1650 1    60   Input ~ 0
~RTDcs3
Text GLabel 8050 1650 1    60   Input ~ 0
RTD_SCK
Text GLabel 8250 1650 1    60   Input ~ 0
RTD_MOSI
$EndSCHEMATC
