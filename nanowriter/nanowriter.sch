EESchema Schematic File Version 2
LIBS:nanowriter-rescue
LIBS:power
LIBS:device
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
LIBS:keyboard_parts
LIBS:teensy
LIBS:nanowriter-cache
EELAYER 25 0
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
$Comp
L KEYSW K1
U 1 1 5886E063
P 7300 3350
F 0 "K1" H 7250 3350 60  0000 C CNN
F 1 "KEYSW" H 7300 3250 60  0001 C CNN
F 2 "Keyboard:CHERRY_PCB_100H" H 7300 3350 60  0001 C CNN
F 3 "" H 7300 3350 60  0000 C CNN
	1    7300 3350
	1    0    0    -1  
$EndComp
$Comp
L KEYSW K2
U 1 1 5886E14B
P 7300 3600
F 0 "K2" H 7250 3600 60  0000 C CNN
F 1 "KEYSW" H 7300 3500 60  0001 C CNN
F 2 "Keyboard:CHERRY_PCB_100H" H 7300 3600 60  0001 C CNN
F 3 "" H 7300 3600 60  0000 C CNN
	1    7300 3600
	1    0    0    -1  
$EndComp
$Comp
L KEYSW K3
U 1 1 5886E1BC
P 7300 3850
F 0 "K3" H 7250 3850 60  0000 C CNN
F 1 "KEYSW" H 7300 3750 60  0001 C CNN
F 2 "Keyboard:CHERRY_PCB_100H" H 7300 3850 60  0001 C CNN
F 3 "" H 7300 3850 60  0000 C CNN
	1    7300 3850
	1    0    0    -1  
$EndComp
$Comp
L KEYSW K4
U 1 1 5886E1F9
P 7300 4100
F 0 "K4" H 7250 4100 60  0000 C CNN
F 1 "KEYSW" H 7300 4000 60  0001 C CNN
F 2 "Keyboard:CHERRY_PCB_100H" H 7300 4100 60  0001 C CNN
F 3 "" H 7300 4100 60  0000 C CNN
	1    7300 4100
	1    0    0    -1  
$EndComp
$Comp
L KEYSW K5
U 1 1 5886E240
P 7300 4350
F 0 "K5" H 7250 4350 60  0000 C CNN
F 1 "KEYSW" H 7300 4250 60  0001 C CNN
F 2 "Keyboard:CHERRY_PCB_100H" H 7300 4350 60  0001 C CNN
F 3 "" H 7300 4350 60  0000 C CNN
	1    7300 4350
	1    0    0    -1  
$EndComp
$Comp
L KEYSW K6
U 1 1 5886E289
P 7300 4600
F 0 "K6" H 7250 4600 60  0000 C CNN
F 1 "KEYSW" H 7300 4500 60  0001 C CNN
F 2 "Keyboard:CHERRY_PCB_100H" H 7300 4600 60  0001 C CNN
F 3 "" H 7300 4600 60  0000 C CNN
	1    7300 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5887F8AD
P 7650 4800
F 0 "#PWR01" H 7650 4550 50  0001 C CNN
F 1 "GND" H 7650 4650 50  0000 C CNN
F 2 "" H 7650 4800 50  0000 C CNN
F 3 "" H 7650 4800 50  0000 C CNN
	1    7650 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3350 7650 3350
Wire Wire Line
	7650 3350 7650 4800
Wire Wire Line
	7650 3600 7600 3600
Wire Wire Line
	7650 3850 7600 3850
Connection ~ 7650 3600
Wire Wire Line
	7650 4100 7600 4100
Connection ~ 7650 3850
Wire Wire Line
	7650 4350 7600 4350
Connection ~ 7650 4100
Wire Wire Line
	7650 4600 7600 4600
Connection ~ 7650 4350
Connection ~ 7650 4600
$Comp
L ProMicro U1
U 1 1 58880220
P 5900 4250
F 0 "U1" H 5450 5200 60  0000 C CNN
F 1 "ProMicro" H 5900 3700 60  0000 C CNN
F 2 "keebs:Pro_Micro" H 6000 3200 60  0001 C CNN
F 3 "" H 6000 3200 60  0000 C CNN
	1    5900 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4300 6650 4300
Wire Wire Line
	6650 4300 6650 3350
Wire Wire Line
	6650 3350 7000 3350
Wire Wire Line
	6600 4500 6700 4500
Wire Wire Line
	6700 4500 6700 3600
Wire Wire Line
	6700 3600 7000 3600
Wire Wire Line
	6600 4400 6750 4400
Wire Wire Line
	6750 4400 6750 3850
Wire Wire Line
	6750 3850 7000 3850
Wire Wire Line
	5200 4500 5100 4500
Wire Wire Line
	5100 4500 5100 4900
Wire Wire Line
	5100 4900 6800 4900
Wire Wire Line
	6800 4900 6800 4100
Wire Wire Line
	6800 4100 7000 4100
Wire Wire Line
	5200 4600 5200 4850
Wire Wire Line
	5200 4850 6850 4850
Wire Wire Line
	6850 4850 6850 4350
Wire Wire Line
	6850 4350 7000 4350
Wire Wire Line
	6600 4600 7000 4600
Wire Wire Line
	4950 3700 5200 3700
Wire Wire Line
	5100 3700 5100 3800
Wire Wire Line
	5100 3800 5200 3800
$Comp
L GND #PWR02
U 1 1 588804F7
P 4950 3700
F 0 "#PWR02" H 4950 3450 50  0001 C CNN
F 1 "GND" H 4950 3550 50  0000 C CNN
F 2 "" H 4950 3700 50  0000 C CNN
F 3 "" H 4950 3700 50  0000 C CNN
	1    4950 3700
	0    1    1    0   
$EndComp
Connection ~ 5100 3700
$EndSCHEMATC
