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
Sheet 2 14
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
L STM32F303V(B-C)Tx_u U2
U 8 1 5B10AF1B
P 3050 3600
F 0 "U2" H 2150 3800 50  0000 C CNN
F 1 "STM32F303V(B-C)Tx_u" H 2150 3650 50  0000 C CNN
F 2 "Housings_QFP:LQFP-100_14x14mm_Pitch0.5mm" H 2050 3500 50  0000 C CIN
F 3 "" H 3050 3600 50  0000 C CNN
	8    3050 3600
	1    0    0    -1  
$EndComp
$Comp
L STM32F303V(B-C)Tx_u U2
U 9 1 5B10AF78
P 3050 2100
F 0 "U2" H 2250 2100 50  0000 C CNN
F 1 "STM32F303V(B-C)Tx_u" H 2350 2000 50  0000 C CNN
F 2 "Housings_QFP:LQFP-100_14x14mm_Pitch0.5mm" H 2250 1850 50  0000 C CIN
F 3 "" H 3050 2100 50  0000 C CNN
	9    3050 2100
	1    0    0    -1  
$EndComp
$Comp
L STM32F303V(B-C)Tx_u U2
U 7 1 5B10B1AF
P 3400 1050
F 0 "U2" H 2750 1150 50  0000 C CNN
F 1 "STM32F303V(B-C)Tx_u" H 2650 1000 50  0000 C CNN
F 2 "Housings_QFP:LQFP-100_14x14mm_Pitch0.5mm" H 2700 850 50  0000 C CIN
F 3 "" H 3400 1050 50  0000 C CNN
	7    3400 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5B10B5E3
P 3900 850
F 0 "#PWR07" H 3900 600 50  0001 C CNN
F 1 "GND" H 3900 700 50  0000 C CNN
F 2 "" H 3900 850 50  0001 C CNN
F 3 "" H 3900 850 50  0001 C CNN
	1    3900 850 
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 5B10B639
P 6550 3500
F 0 "#PWR08" H 6550 3250 50  0001 C CNN
F 1 "GND" H 6550 3350 50  0000 C CNN
F 2 "" H 6550 3500 50  0001 C CNN
F 3 "" H 6550 3500 50  0001 C CNN
	1    6550 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 3400 6550 3400
Wire Wire Line
	6550 3400 6550 3700
Wire Wire Line
	3650 3500 6550 3500
Wire Wire Line
	3650 3600 6550 3600
Connection ~ 6550 3500
Wire Wire Line
	6550 3700 3650 3700
Connection ~ 6550 3600
$Comp
L +3.3V #PWR09
U 1 1 5B10B67C
P 6500 2050
F 0 "#PWR09" H 6500 1900 50  0001 C CNN
F 1 "+3.3V" H 6500 2190 50  0000 C CNN
F 2 "" H 6500 2050 50  0001 C CNN
F 3 "" H 6500 2050 50  0001 C CNN
	1    6500 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 1900 6500 1900
Wire Wire Line
	6500 1900 6500 2300
Wire Wire Line
	3550 2000 6500 2000
Connection ~ 6500 2000
Wire Wire Line
	3550 2100 6500 2100
Connection ~ 6500 2050
Wire Wire Line
	3550 2200 6500 2200
Connection ~ 6500 2100
Wire Wire Line
	6500 2300 3550 2300
Connection ~ 6500 2200
NoConn ~ 3900 950 
$Comp
L +3.3V #PWR010
U 1 1 5B10B73C
P 4050 1100
F 0 "#PWR010" H 4050 950 50  0001 C CNN
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
$Comp
L +24V #PWR011
U 1 1 5B21FC2D
P 1900 4700
F 0 "#PWR011" H 1900 4550 50  0001 C CNN
F 1 "+24V" H 1900 4840 50  0000 C CNN
F 2 "" H 1900 4700 50  0001 C CNN
F 3 "" H 1900 4700 50  0001 C CNN
	1    1900 4700
	0    -1   -1   0   
$EndComp
$Comp
L LM7812_TO220 U1
U 1 1 5B21FDA7
P 2950 4700
F 0 "U1" H 2800 4825 50  0000 C CNN
F 1 "LM78l33_TO220" H 2950 4825 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Vertical" H 2950 4925 50  0001 C CIN
F 3 "" H 2950 4650 50  0001 C CNN
	1    2950 4700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR012
U 1 1 5B21FE2B
P 3700 4700
F 0 "#PWR012" H 3700 4550 50  0001 C CNN
F 1 "+3.3V" H 3700 4840 50  0000 C CNN
F 2 "" H 3700 4700 50  0001 C CNN
F 3 "" H 3700 4700 50  0001 C CNN
	1    3700 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 4700 3700 4700
Wire Wire Line
	1900 4700 2650 4700
$Comp
L GND #PWR013
U 1 1 5B21FF71
P 2950 5050
F 0 "#PWR013" H 2950 4800 50  0001 C CNN
F 1 "GND" H 2950 4900 50  0000 C CNN
F 2 "" H 2950 5050 50  0001 C CNN
F 3 "" H 2950 5050 50  0001 C CNN
	1    2950 5050
	1    0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 5B21FFDF
P 3500 4900
F 0 "C1" H 3525 5000 50  0000 L CNN
F 1 "100uF" H 3525 4800 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_5x5.3" H 3500 4900 50  0001 C CNN
F 3 "" H 3500 4900 50  0001 C CNN
	1    3500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4700 3500 4750
Connection ~ 3500 4700
Wire Wire Line
	2550 5050 3500 5050
Wire Wire Line
	2950 5000 2950 5050
$Comp
L C C2
U 1 1 5B22088F
P 3750 2800
F 0 "C2" H 3775 2900 50  0000 L CNN
F 1 "1uF" H 3775 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3788 2650 50  0001 C CNN
F 3 "" H 3750 2800 50  0001 C CNN
	1    3750 2800
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5B220916
P 4000 2800
F 0 "C3" H 4025 2900 50  0000 L CNN
F 1 ".1uF" H 4025 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4038 2650 50  0001 C CNN
F 3 "" H 4000 2800 50  0001 C CNN
	1    4000 2800
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5B220941
P 4300 2800
F 0 "C4" H 4325 2900 50  0000 L CNN
F 1 "1uF" H 4325 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4338 2650 50  0001 C CNN
F 3 "" H 4300 2800 50  0001 C CNN
	1    4300 2800
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5B220990
P 4550 2800
F 0 "C5" H 4575 2900 50  0000 L CNN
F 1 ".1uF" H 4575 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4588 2650 50  0001 C CNN
F 3 "" H 4550 2800 50  0001 C CNN
	1    4550 2800
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5B2209BB
P 4900 2800
F 0 "C6" H 4925 2900 50  0000 L CNN
F 1 "1uF" H 4925 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4938 2650 50  0001 C CNN
F 3 "" H 4900 2800 50  0001 C CNN
	1    4900 2800
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5B220A12
P 5200 2800
F 0 "C7" H 5225 2900 50  0000 L CNN
F 1 ".1uF" H 5225 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5238 2650 50  0001 C CNN
F 3 "" H 5200 2800 50  0001 C CNN
	1    5200 2800
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5B220A61
P 5450 2800
F 0 "C8" H 5475 2900 50  0000 L CNN
F 1 "1uF" H 5475 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5488 2650 50  0001 C CNN
F 3 "" H 5450 2800 50  0001 C CNN
	1    5450 2800
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5B220AA6
P 5750 2800
F 0 "C9" H 5775 2900 50  0000 L CNN
F 1 ".1uF" H 5775 2700 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5788 2650 50  0001 C CNN
F 3 "" H 5750 2800 50  0001 C CNN
	1    5750 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2650 3750 2000
Connection ~ 3750 2000
Wire Wire Line
	3750 2950 3750 3400
Connection ~ 3750 3400
Wire Wire Line
	4000 2650 4000 2000
Connection ~ 4000 2000
Wire Wire Line
	4000 2950 4000 3400
Connection ~ 4000 3400
Wire Wire Line
	4300 2650 4300 2100
Connection ~ 4300 2100
Wire Wire Line
	4300 2950 4300 3500
Connection ~ 4300 3500
Wire Wire Line
	4550 2650 4550 2100
Connection ~ 4550 2100
Wire Wire Line
	4550 2950 4550 3500
Connection ~ 4550 3500
Wire Wire Line
	4900 2650 4900 2200
Connection ~ 4900 2200
Wire Wire Line
	4900 2950 4900 3600
Connection ~ 4900 3600
Wire Wire Line
	5200 2650 5200 2200
Connection ~ 5200 2200
Wire Wire Line
	5200 2950 5200 3600
Connection ~ 5200 3600
Wire Wire Line
	5450 2650 5450 2300
Connection ~ 5450 2300
Wire Wire Line
	5450 2950 5450 3700
Connection ~ 5450 3700
Wire Wire Line
	5750 2650 5750 2300
Connection ~ 5750 2300
Wire Wire Line
	5750 2950 5750 3700
Connection ~ 5750 3700
$Comp
L PWR_FLAG #FLG014
U 1 1 5B2EBF72
P 2150 4550
F 0 "#FLG014" H 2150 4625 50  0001 C CNN
F 1 "PWR_FLAG" H 2150 4700 50  0000 C CNN
F 2 "" H 2150 4550 50  0001 C CNN
F 3 "" H 2150 4550 50  0001 C CNN
	1    2150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4550 2150 4700
Connection ~ 2150 4700
$Comp
L PWR_FLAG #FLG015
U 1 1 5B2EC17F
P 2550 5050
F 0 "#FLG015" H 2550 5125 50  0001 C CNN
F 1 "PWR_FLAG" H 2550 5200 50  0000 C CNN
F 2 "" H 2550 5050 50  0001 C CNN
F 3 "" H 2550 5050 50  0001 C CNN
	1    2550 5050
	0    -1   -1   0   
$EndComp
Connection ~ 2950 5050
$EndSCHEMATC
