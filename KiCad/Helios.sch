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
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 14
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 700  6700 1650 1150
U 5B10AF12
F0 "power" 60
F1 "power.sch" 60
$EndSheet
$Sheet
S 1150 1200 900  650 
U 5B2171DF
F0 "GPIOA" 60
F1 "GPIOA.sch" 60
F2 "485TX" I R 2050 1350 60 
F3 "485RX" I R 2050 1500 60 
F4 "RX485_A(-)" I R 2050 1600 60 
F5 "RX485_B(+)" I R 2050 1750 60 
$EndSheet
$Sheet
S 1150 2150 900  700 
U 5B2179B0
F0 "GPIOB" 60
F1 "GPIOB.sch" 60
F2 "485TX" I R 2050 2300 60 
F3 "485RX" I R 2050 2450 60 
$EndSheet
$Sheet
S 1150 3150 950  650 
U 5B21C79A
F0 "GPIOC" 60
F1 "GPIOC.sch" 60
$EndSheet
$Sheet
S 1150 4150 950  550 
U 5B21C79D
F0 "GPIOD" 60
F1 "GPIOD.sch" 60
F2 "Wind4_20" O R 2100 4350 60 
F3 "Snow+24v" O R 2100 4450 60 
F4 "pyro" O R 2100 4200 60 
$EndSheet
$Sheet
S 1200 5000 950  650 
U 5B21D278
F0 "GPIOE" 60
F1 "GPIOE.sch" 60
$EndSheet
$Sheet
S 1250 5900 950  550 
U 5B21D27B
F0 "GPIOF" 60
F1 "GPIOF.sch" 60
$EndSheet
$Comp
L Conn_01x04 J2
U 1 1 5B2B7A25
P 7250 1350
F 0 "J2" H 7250 1550 50  0000 C CNN
F 1 "Conn_01x04" H 7250 1050 50  0000 C CNN
F 2 "CH20M:CH20Mt" H 7250 1350 50  0001 C CNN
F 3 "" H 7250 1350 50  0001 C CNN
	1    7250 1350
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J4
U 1 1 5B2B7B34
P 8450 1350
F 0 "J4" H 8450 1550 50  0000 C CNN
F 1 "Conn_01x04" H 8450 1050 50  0000 C CNN
F 2 "CH20M:CH20Mr" H 8450 1350 50  0001 C CNN
F 3 "" H 8450 1350 50  0001 C CNN
	1    8450 1350
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J6
U 1 1 5B2B7BA9
P 9650 1350
F 0 "J6" H 9650 1550 50  0000 C CNN
F 1 "Conn_01x04" H 9650 1050 50  0000 C CNN
F 2 "CH20M:CH20Mr" H 9650 1350 50  0001 C CNN
F 3 "" H 9650 1350 50  0001 C CNN
	1    9650 1350
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J1
U 1 1 5B2B7F8B
P 6950 5250
F 0 "J1" H 6950 5450 50  0000 C CNN
F 1 "Conn_01x04" H 6950 4950 50  0000 C CNN
F 2 "CH20M:CH20Mt" H 6950 5250 50  0001 C CNN
F 3 "" H 6950 5250 50  0001 C CNN
	1    6950 5250
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J3
U 1 1 5B2B7F91
P 8400 5250
F 0 "J3" H 8400 5450 50  0000 C CNN
F 1 "Conn_01x04" H 8400 4950 50  0000 C CNN
F 2 "CH20M:CH20Mt" H 8400 5250 50  0001 C CNN
F 3 "" H 8400 5250 50  0001 C CNN
	1    8400 5250
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J5
U 1 1 5B2B7F97
P 9750 5250
F 0 "J5" H 9750 5450 50  0000 C CNN
F 1 "Conn_01x04" H 9750 4950 50  0000 C CNN
F 2 "CH20M:CH20Mr" H 9750 5250 50  0001 C CNN
F 3 "" H 9750 5250 50  0001 C CNN
	1    9750 5250
	1    0    0    -1  
$EndComp
Text Notes 8150 650  0    60   ~ 0
TOP
$Comp
L D_Schottky D2
U 1 1 5B2B9678
P 6500 1250
F 0 "D2" H 6500 1350 50  0000 C CNN
F 1 "D_Schottky" H 6500 1450 50  0000 C CNN
F 2 "Diodes_SMD:D_1206" H 6500 1250 50  0001 C CNN
F 3 "" H 6500 1250 50  0001 C CNN
	1    6500 1250
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D1
U 1 1 5B2B96C3
P 6200 1350
F 0 "D1" H 6200 1450 50  0000 C CNN
F 1 "D_Schottky" H 6200 1500 50  0000 C CNN
F 2 "Diodes_SMD:D_1206" H 6200 1350 50  0001 C CNN
F 3 "" H 6200 1350 50  0001 C CNN
	1    6200 1350
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 5B2B977D
P 5800 1350
F 0 "R1" V 5700 1350 50  0000 C CNN
F 1 "0" V 5800 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5730 1350 50  0001 C CNN
F 3 "" H 5800 1350 50  0001 C CNN
	1    5800 1350
	0    -1   -1   0   
$EndComp
$Comp
L +24V #PWR01
U 1 1 5B2B98DC
P 5500 1250
F 0 "#PWR01" H 5500 1100 50  0001 C CNN
F 1 "+24V" H 5500 1390 50  0000 C CNN
F 2 "" H 5500 1250 50  0001 C CNN
F 3 "" H 5500 1250 50  0001 C CNN
	1    5500 1250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 5B2B9926
P 5500 1350
F 0 "#PWR02" H 5500 1100 50  0001 C CNN
F 1 "GND" H 5500 1200 50  0000 C CNN
F 2 "" H 5500 1350 50  0001 C CNN
F 3 "" H 5500 1350 50  0001 C CNN
	1    5500 1350
	0    1    1    0   
$EndComp
$Comp
L GNDPWR #PWR03
U 1 1 5B2B9BD9
P 6700 1450
F 0 "#PWR03" H 6700 1250 50  0001 C CNN
F 1 "GNDPWR" H 6700 1320 50  0000 C CNN
F 2 "" H 6700 1400 50  0001 C CNN
F 3 "" H 6700 1400 50  0001 C CNN
	1    6700 1450
	1    0    0    -1  
$EndComp
Text Label 5850 1650 0    60   ~ 0
Pyro-
$Comp
L GND #PWR04
U 1 1 5B2BA9AC
P 5500 1650
F 0 "#PWR04" H 5500 1400 50  0001 C CNN
F 1 "GND" H 5500 1500 50  0000 C CNN
F 2 "" H 5500 1650 50  0001 C CNN
F 3 "" H 5500 1650 50  0001 C CNN
	1    5500 1650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 5B2BA9FC
P 8000 1450
F 0 "#PWR05" H 8000 1200 50  0001 C CNN
F 1 "GND" H 8000 1300 50  0000 C CNN
F 2 "" H 8000 1450 50  0001 C CNN
F 3 "" H 8000 1450 50  0001 C CNN
	1    8000 1450
	0    1    1    0   
$EndComp
Text Label 7150 1950 0    60   ~ 0
Wind
$Sheet
S 5400 3500 700  600 
U 5B2C674A
F0 "rtd2" 60
F1 "rtd2.sch" 60
$EndSheet
$Sheet
S 6250 3500 650  600 
U 5B2C7906
F0 "rtd3" 60
F1 "rtd3.sch" 60
$EndSheet
$Sheet
S 7100 3500 650  600 
U 5B2C795B
F0 "rtd4" 60
F1 "rtd4.sch" 60
$EndSheet
$Sheet
S 7950 3500 650  600 
U 5B2C7984
F0 "rtd5" 60
F1 "rtd5.sch" 60
$EndSheet
Text Label 8350 2150 0    60   ~ 0
Snow
Text Label 5850 1800 0    60   ~ 0
Pyro
Text Label 5850 800  0    60   ~ 0
RS485A
Text Label 5700 950  0    60   ~ 0
RS485B
Text GLabel 6600 5150 0    60   Input ~ 0
RTDa1
Text GLabel 6450 5250 0    60   Input ~ 0
RTDa2
Text GLabel 6300 5350 0    60   Input ~ 0
RTDa3
Text GLabel 6100 5450 0    60   Input ~ 0
RTDa4
Text GLabel 8000 5150 0    60   Input ~ 0
RTDb1
Text GLabel 7850 5250 0    60   Input ~ 0
RTDb2
Text GLabel 7700 5350 0    60   Input ~ 0
RTDb3
Text GLabel 7550 5450 0    60   Input ~ 0
RTDb4
Text GLabel 9400 5150 0    60   Input ~ 0
RTD-1
Text GLabel 9250 5250 0    60   Input ~ 0
RTD-2
Text GLabel 9100 5350 0    60   Input ~ 0
RTD-3
Text GLabel 8950 5450 0    60   Input ~ 0
RTD-4
Text GLabel 9200 900  1    60   Input ~ 0
RTDa5
Text GLabel 9050 900  1    60   Input ~ 0
RTDb5
Text GLabel 8900 900  1    60   Input ~ 0
RTD-5
$Sheet
S 4400 3500 750  550 
U 5B2BDBB9
F0 "rtd1" 60
F1 "rtd1.sch" 60
$EndSheet
$Comp
L PWR_FLAG #FLG06
U 1 1 5B2EB86D
P 6950 1200
F 0 "#FLG06" H 6950 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 6950 1350 50  0000 C CNN
F 2 "" H 6950 1200 50  0001 C CNN
F 3 "" H 6950 1200 50  0001 C CNN
	1    6950 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1500 2350 1500
Wire Wire Line
	2350 1500 2350 2450
Wire Wire Line
	2050 1350 2200 1350
Wire Wire Line
	2200 1350 2200 2300
Wire Wire Line
	2200 2300 2050 2300
Wire Wire Line
	6650 1250 7050 1250
Wire Wire Line
	2350 2450 2050 2450
Wire Wire Line
	2050 1600 2600 1600
Wire Wire Line
	2600 1600 2600 800 
Wire Wire Line
	2600 800  7850 800 
Wire Wire Line
	7850 800  7850 1250
Wire Wire Line
	7850 1250 8250 1250
Wire Wire Line
	2050 1750 2800 1750
Wire Wire Line
	2800 1750 2800 950 
Wire Wire Line
	2800 950  7700 950 
Wire Wire Line
	7700 950  7700 1350
Wire Wire Line
	7700 1350 8250 1350
Wire Wire Line
	6350 1350 7050 1350
Wire Wire Line
	6050 1350 5950 1350
Wire Wire Line
	5650 1350 5500 1350
Wire Wire Line
	6350 1250 5500 1250
Wire Wire Line
	6700 1350 6700 1450
Connection ~ 6700 1350
Wire Wire Line
	5500 1650 6900 1650
Wire Wire Line
	6900 1650 6900 1450
Wire Wire Line
	6900 1450 7050 1450
Wire Wire Line
	6950 1800 6950 1550
Wire Wire Line
	6950 1550 7050 1550
Wire Wire Line
	8250 1450 8000 1450
Wire Wire Line
	3050 1950 3050 4350
Wire Wire Line
	3050 1950 7700 1950
Wire Wire Line
	7700 1950 7700 1550
Wire Wire Line
	7700 1550 8250 1550
Wire Wire Line
	3250 2150 3250 4450
Wire Wire Line
	3250 2150 9050 2150
Wire Wire Line
	9050 2150 9050 1550
Wire Wire Line
	9050 1550 9450 1550
Wire Wire Line
	6950 1800 2900 1800
Wire Wire Line
	2900 1800 2900 4200
Wire Wire Line
	2900 4200 2100 4200
Wire Wire Line
	3250 4450 2100 4450
Wire Wire Line
	3050 4350 2100 4350
Wire Wire Line
	6600 5150 6750 5150
Wire Wire Line
	6450 5250 6750 5250
Wire Wire Line
	6300 5350 6750 5350
Wire Wire Line
	6100 5450 6750 5450
Wire Wire Line
	8000 5150 8200 5150
Wire Wire Line
	7850 5250 8200 5250
Wire Wire Line
	7700 5350 8200 5350
Wire Wire Line
	7550 5450 8200 5450
Wire Wire Line
	9400 5150 9550 5150
Wire Wire Line
	9250 5250 9550 5250
Wire Wire Line
	9100 5350 9550 5350
Wire Wire Line
	8950 5450 9550 5450
Wire Wire Line
	9200 900  9200 1250
Wire Wire Line
	9200 1250 9450 1250
Wire Wire Line
	9050 900  9050 1350
Wire Wire Line
	9050 1350 9450 1350
Wire Wire Line
	8900 900  8900 1450
Wire Wire Line
	8900 1450 9450 1450
Wire Wire Line
	6950 1200 6950 1350
Connection ~ 6950 1350
$EndSCHEMATC
