EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4400 1400 5600 1400
Wire Wire Line
	4550 1550 5900 1550
Wire Wire Line
	6700 1400 6700 1450
Wire Wire Line
	5900 1400 6400 1400
Wire Wire Line
	6200 1550 6400 1550
Wire Wire Line
	6700 1450 6900 1450
Connection ~ 6700 1450
Wire Wire Line
	3800 2550 3600 2550
Wire Wire Line
	3800 1750 3700 1750
Text Notes 2800 2700 0    60   ~ 0
gnd\n\n
Text Notes 2800 2500 0    60   ~ 0
mosi
Text Notes 2850 2300 0    60   ~ 0
~cs\n
Text Notes 2850 2400 0    60   ~ 0
sck\n
Text Notes 2850 2200 0    60   ~ 0
d/~c
Text Notes 2850 2100 0    60   ~ 0
~rst\n
Text Notes 2850 2100 0    60   ~ 0
tx\n\n
Text Notes 2850 1900 0    60   ~ 0
rx
Text Notes 2850 1800 0    60   ~ 0
3v
Text Notes 2850 1650 0    60   ~ 0
24v
Wire Wire Line
	3400 1850 4400 1850
Wire Wire Line
	4400 1850 4400 1400
Wire Wire Line
	3400 1950 4550 1950
Wire Wire Line
	4550 1950 4550 1550
Wire Wire Line
	3700 1550 3700 1750
Connection ~ 3700 1750
Wire Wire Line
	6700 1450 6700 1550
Wire Wire Line
	3700 1750 3400 1750
$Comp
L power:GND #PWR05
U 1 1 5D49DDB2
P 6900 1450
F 0 "#PWR05" H 6900 1200 50  0001 C CNN
F 1 "GND" H 6905 1277 50  0000 C CNN
F 2 "" H 6900 1450 50  0001 C CNN
F 3 "" H 6900 1450 50  0001 C CNN
	1    6900 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5D49DF25
P 5750 1400
F 0 "D1" H 5742 1145 50  0000 C CNN
F 1 "LED" H 5742 1236 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 5750 1400 50  0001 C CNN
F 3 "~" H 5750 1400 50  0001 C CNN
	1    5750 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 5D49DFF0
P 6050 1550
F 0 "D2" H 6042 1295 50  0000 C CNN
F 1 "LED" H 6042 1386 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 6050 1550 50  0001 C CNN
F 3 "~" H 6050 1550 50  0001 C CNN
	1    6050 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5D49E0D0
P 6550 1400
F 0 "R1" V 6343 1400 50  0000 C CNN
F 1 "R" V 6434 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6480 1400 50  0001 C CNN
F 3 "~" H 6550 1400 50  0001 C CNN
	1    6550 1400
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D49E12B
P 6550 1550
F 0 "R2" V 6343 1550 50  0000 C CNN
F 1 "300" V 6434 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6480 1550 50  0001 C CNN
F 3 "~" H 6550 1550 50  0001 C CNN
	1    6550 1550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D49E2B8
P 3800 2550
F 0 "#PWR04" H 3800 2300 50  0001 C CNN
F 1 "GND" V 3805 2422 50  0000 R CNN
F 2 "" H 3800 2550 50  0001 C CNN
F 3 "" H 3800 2550 50  0001 C CNN
	1    3800 2550
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D49E404
P 3700 1550
F 0 "#FLG01" H 3700 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 3700 1724 50  0000 C CNN
F 2 "" H 3700 1550 50  0001 C CNN
F 3 "~" H 3700 1550 50  0001 C CNN
	1    3700 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 5D49E49E
P 3800 1750
F 0 "#PWR03" H 3800 1600 50  0001 C CNN
F 1 "+3.3V" V 3815 1878 50  0000 L CNN
F 2 "" H 3800 1750 50  0001 C CNN
F 3 "" H 3800 1750 50  0001 C CNN
	1    3800 1750
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J1
U 1 1 5D4A0435
P 3200 2150
F 0 "J1" H 3120 1425 50  0000 C CNN
F 1 "Conn_01x10" H 3120 1516 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 3200 2150 50  0001 C CNN
F 3 "~" H 3200 2150 50  0001 C CNN
	1    3200 2150
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J2
U 1 1 5D4A2F13
P 10150 2350
F 0 "J2" H 10230 2342 50  0000 L CNN
F 1 "Conn_01x12" H 10230 2251 50  0000 L CNN
F 2 "Connector_FFC-FPC:Hirose_FH12-11S-0.5SH_1x11-1MP_P0.50mm_Horizontal" H 10150 2350 50  0001 C CNN
F 3 "~" H 10150 2350 50  0001 C CNN
	1    10150 2350
	1    0    0    -1  
$EndComp
Text Notes 10300 2950 0    59   ~ 0
gnd\nd2\nd1\nd0\nd/~c\n~res\n~cs\nBS1\nBS0\nVDD\nvbat\ngnd
NoConn ~ 9950 1950
$Comp
L power:GND #PWR06
U 1 1 5D4A3569
P 9950 1850
F 0 "#PWR06" H 9950 1600 50  0001 C CNN
F 1 "GND" V 9955 1722 50  0000 R CNN
F 2 "" H 9950 1850 50  0001 C CNN
F 3 "" H 9950 1850 50  0001 C CNN
	1    9950 1850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5D4A35F7
P 9950 2950
F 0 "#PWR011" H 9950 2700 50  0001 C CNN
F 1 "GND" V 9955 2822 50  0000 R CNN
F 2 "" H 9950 2950 50  0001 C CNN
F 3 "" H 9950 2950 50  0001 C CNN
	1    9950 2950
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR010
U 1 1 5D4A369D
P 9950 2850
F 0 "#PWR010" H 9950 2700 50  0001 C CNN
F 1 "+3.3V" V 9965 2978 50  0000 L CNN
F 2 "" H 9950 2850 50  0001 C CNN
F 3 "" H 9950 2850 50  0001 C CNN
	1    9950 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 5D4A36F5
P 9950 2750
F 0 "#PWR09" H 9950 2600 50  0001 C CNN
F 1 "+3.3V" V 9965 2878 50  0000 L CNN
F 2 "" H 9950 2750 50  0001 C CNN
F 3 "" H 9950 2750 50  0001 C CNN
	1    9950 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5D4A377A
P 9950 2650
F 0 "#PWR08" H 9950 2400 50  0001 C CNN
F 1 "GND" V 9955 2522 50  0000 R CNN
F 2 "" H 9950 2650 50  0001 C CNN
F 3 "" H 9950 2650 50  0001 C CNN
	1    9950 2650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D4A37CC
P 9950 2550
F 0 "#PWR07" H 9950 2300 50  0001 C CNN
F 1 "GND" V 9955 2422 50  0000 R CNN
F 2 "" H 9950 2550 50  0001 C CNN
F 3 "" H 9950 2550 50  0001 C CNN
	1    9950 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	9350 2250 9350 2450
Wire Wire Line
	9350 2450 9950 2450
Wire Wire Line
	3400 2250 9350 2250
Wire Wire Line
	9450 2050 9450 2350
Wire Wire Line
	9450 2350 9950 2350
Wire Wire Line
	3400 2050 9450 2050
Wire Wire Line
	9600 2150 9600 2250
Wire Wire Line
	9600 2250 9950 2250
Wire Wire Line
	3400 2150 9600 2150
Wire Wire Line
	8300 2450 8300 1900
Wire Wire Line
	8300 1900 9650 1900
Wire Wire Line
	9650 1900 9650 2050
Wire Wire Line
	9650 2050 9950 2050
Wire Wire Line
	3400 2450 8300 2450
Wire Wire Line
	5550 2350 5550 2000
Wire Wire Line
	5550 2000 9550 2000
Wire Wire Line
	9550 2000 9550 2100
Wire Wire Line
	9550 2100 9950 2100
Wire Wire Line
	9950 2100 9950 2150
Wire Wire Line
	3400 2350 5550 2350
$Comp
L Device:C C1
U 1 1 5D4A6608
P 3450 3200
F 0 "C1" H 3565 3246 50  0000 L CNN
F 1 "1uf" H 3565 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3488 3050 50  0001 C CNN
F 3 "~" H 3450 3200 50  0001 C CNN
	1    3450 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D4A6684
P 3450 3350
F 0 "#PWR02" H 3450 3100 50  0001 C CNN
F 1 "GND" H 3455 3177 50  0000 C CNN
F 2 "" H 3450 3350 50  0001 C CNN
F 3 "" H 3450 3350 50  0001 C CNN
	1    3450 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 5D4A670F
P 3450 3050
F 0 "#PWR01" H 3450 2900 50  0001 C CNN
F 1 "+3.3V" H 3465 3223 50  0000 C CNN
F 2 "" H 3450 3050 50  0001 C CNN
F 3 "" H 3450 3050 50  0001 C CNN
	1    3450 3050
	1    0    0    -1  
$EndComp
NoConn ~ 3400 1650
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5D4A6F61
P 3600 2550
F 0 "#FLG0101" H 3600 2625 50  0001 C CNN
F 1 "PWR_FLAG" H 3600 2723 50  0000 C CNN
F 2 "" H 3600 2550 50  0001 C CNN
F 3 "~" H 3600 2550 50  0001 C CNN
	1    3600 2550
	-1   0    0    1   
$EndComp
Connection ~ 3600 2550
Wire Wire Line
	3600 2550 3400 2550
$EndSCHEMATC
