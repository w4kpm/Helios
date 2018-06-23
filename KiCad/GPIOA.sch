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
Sheet 3 14
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
L AVR-JTAG-10 CON1
U 1 1 5B21788C
P 2950 1650
F 0 "CON1" H 2780 1980 50  0000 C CNN
F 1 "AVR-JTAG-10" H 2610 1320 50  0000 L BNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" V 2380 1670 50  0001 C CNN
F 3 "" H 2950 1650 50  0001 C CNN
	1    2950 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5B217893
P 3550 1450
F 0 "#PWR016" H 3550 1200 50  0001 C CNN
F 1 "GND" H 3550 1300 50  0000 C CNN
F 2 "" H 3550 1450 50  0001 C CNN
F 3 "" H 3550 1450 50  0001 C CNN
	1    3550 1450
	0    -1   -1   0   
$EndComp
NoConn ~ 3000 1650
NoConn ~ 3000 1750
NoConn ~ 3000 1850
NoConn ~ 2750 1850
NoConn ~ 2750 1750
NoConn ~ 2750 1550
$Comp
L +3.3V #PWR017
U 1 1 5B2178A0
P 3750 1550
F 0 "#PWR017" H 3750 1400 50  0001 C CNN
F 1 "+3.3V" H 3750 1690 50  0000 C CNN
F 2 "" H 3750 1550 50  0001 C CNN
F 3 "" H 3750 1550 50  0001 C CNN
	1    3750 1550
	0    1    1    0   
$EndComp
$Comp
L STM32F303V(B-C)Tx_u U2
U 1 1 5B2178A7
P 7550 3700
F 0 "U2" H 8250 2650 50  0000 C CNN
F 1 "STM32F303V(B-C)Tx_u" H 7500 2750 50  0000 C CNN
F 2 "Housings_QFP:LQFP-100_14x14mm_Pitch0.5mm" H 7550 2600 50  0000 C CIN
F 3 "" H 7550 3700 50  0000 C CNN
	1    7550 3700
	-1   0    0    1   
$EndComp
$Sheet
S 850  5000 1000 650 
U 5B217EA8
F0 "serial" 60
F1 "serial.sch" 60
F2 "TX_en" I R 1850 5100 60 
F3 "TX" I R 1850 5250 60 
F4 "RX" I R 1850 5400 60 
F5 "RS485B(+)" O L 850 5150 60 
F6 "RS485A(-)" O L 850 5300 60 
$EndSheet
Text HLabel 5400 5200 2    60   Input ~ 0
485TX
Text HLabel 5400 5350 2    60   Input ~ 0
485RX
Text HLabel 5400 5600 2    60   Input ~ 0
RX485_A(-)
Text HLabel 5400 5800 2    60   Input ~ 0
RX485_B(+)
$Comp
L Conn_01x11 J7
U 1 1 5B2E23EC
P 950 3700
F 0 "J7" H 950 4300 50  0000 C CNN
F 1 "Conn_01x11" H 950 3100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x11_Pitch2.54mm" H 950 3700 50  0001 C CNN
F 3 "" H 950 3700 50  0001 C CNN
	1    950  3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 3200 1150 3200
Wire Wire Line
	1550 3000 1550 3200
Wire Wire Line
	2250 3000 1550 3000
Wire Wire Line
	1600 4200 1150 4200
Wire Wire Line
	1600 4500 1600 4200
Wire Wire Line
	2250 4500 1600 4500
Wire Wire Line
	1150 4100 2250 4100
Wire Wire Line
	2250 4000 1150 4000
Wire Wire Line
	1150 3900 2250 3900
Wire Wire Line
	2250 3800 1150 3800
Wire Wire Line
	1150 3700 2250 3700
Wire Wire Line
	1150 3600 2250 3600
Wire Wire Line
	1150 3500 2250 3500
Wire Wire Line
	1150 3400 2250 3400
Wire Wire Line
	1150 3300 2250 3300
Wire Wire Line
	4700 5600 5400 5600
Wire Wire Line
	4700 5950 4700 5600
Wire Wire Line
	700  5950 4700 5950
Wire Wire Line
	700  5300 700  5950
Wire Wire Line
	850  5300 700  5300
Wire Wire Line
	4900 5800 5400 5800
Wire Wire Line
	4900 6250 4900 5800
Wire Wire Line
	550  6250 4900 6250
Wire Wire Line
	550  5150 550  6250
Wire Wire Line
	850  5150 550  5150
Wire Wire Line
	1950 5350 5400 5350
Wire Wire Line
	2000 5200 5400 5200
Connection ~ 1950 5350
Connection ~ 2000 5200
Wire Wire Line
	1950 5400 1850 5400
Wire Wire Line
	1950 4200 1950 5400
Wire Wire Line
	2250 4200 1950 4200
Wire Wire Line
	2000 5250 1850 5250
Wire Wire Line
	2000 4300 2000 5250
Wire Wire Line
	2250 4300 2000 4300
Wire Wire Line
	2050 5100 1850 5100
Wire Wire Line
	2050 4400 2050 5100
Wire Wire Line
	2250 4400 2050 4400
Wire Wire Line
	1900 3100 1900 1450
Wire Wire Line
	2250 3100 1900 3100
Wire Wire Line
	1900 1450 2750 1450
Wire Wire Line
	2150 1650 2750 1650
Wire Wire Line
	2150 3200 2150 1650
Wire Wire Line
	2250 3200 2150 3200
Wire Wire Line
	3000 1550 3750 1550
Wire Wire Line
	3000 1450 3550 1450
$EndSCHEMATC
