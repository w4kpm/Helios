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
Sheet 6 14
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
L STM32F303V(B-C)Tx_u U?
U 3 1 5B21CD88
P 8400 2000
F 0 "U?" H 9000 1050 50  0000 C CNN
F 1 "STM32F303V(B-C)Tx_u" H 8400 1100 50  0000 C CNN
F 2 "LQFP100" H 8450 1000 50  0000 C CIN
F 3 "" H 8400 2000 50  0000 C CNN
	3    8400 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 1600 5900 1600
Wire Wire Line
	2650 1700 5900 1700
Wire Wire Line
	2500 1800 5900 1800
Text HLabel 1450 850  0    60   Input ~ 0
RTDSPI_CS
Wire Bus Line
	1450 850  2700 850 
Entry Wire Line
	1650 850  1750 950 
Entry Wire Line
	1800 850  1900 950 
Entry Wire Line
	1950 850  2050 950 
Entry Wire Line
	2100 850  2200 950 
Entry Wire Line
	2250 850  2350 950 
Entry Wire Line
	2400 850  2500 950 
Entry Wire Line
	2550 850  2650 950 
Entry Wire Line
	2700 850  2800 950 
Wire Wire Line
	1750 950  1750 2800
Wire Wire Line
	1750 2800 5900 2800
Wire Wire Line
	1900 950  1900 2700
Wire Wire Line
	1900 2700 5900 2700
Wire Wire Line
	2050 950  2050 2600
Wire Wire Line
	2050 2600 5900 2600
Wire Wire Line
	2200 950  2200 2500
Wire Wire Line
	2200 2500 5900 2500
Wire Wire Line
	2350 950  2350 2400
Wire Wire Line
	2350 2400 5900 2400
Wire Wire Line
	2500 950  2500 1800
Wire Wire Line
	2650 950  2650 1700
Wire Wire Line
	2800 950  2800 1600
Text Label 4650 1600 0    60   ~ 0
RTD_MOSI
Text Label 4250 1700 0    60   ~ 0
RTD_MISO
Text Label 3800 1800 0    60   ~ 0
RTD_SCK
Text Label 2500 2400 0    60   ~ 0
~RTDcs5
Text Label 2900 2500 0    60   ~ 0
~RTDcs4
Text Label 3300 2600 0    60   ~ 0
~RTDcs3
Text Label 3750 2700 0    60   ~ 0
~RTDcs2
Text Label 4250 2800 0    60   ~ 0
~RTDcs1
NoConn ~ 5900 1300
NoConn ~ 5900 1400
NoConn ~ 5900 1500
NoConn ~ 5900 1900
NoConn ~ 5900 2000
NoConn ~ 5900 2100
NoConn ~ 5900 2200
NoConn ~ 5900 2300
$EndSCHEMATC
