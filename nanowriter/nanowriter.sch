EESchema Schematic File Version 2
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
L ATMEGA32U2 IC1
U 1 1 5886B54A
P 5100 4400
F 0 "IC1" H 4250 5750 50  0000 C CNN
F 1 "ATMEGA32U2" H 5850 3050 50  0000 C CNN
F 2 "keyboard_parts:QFP32" H 4950 4450 50  0000 C CNN
F 3 "http://www.atmel.com/Images/doc7799.pdf" H 5200 2950 50  0001 C CNN
	1    5100 4400
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5886B61F
P 2850 4150
F 0 "C1" H 2875 4250 50  0000 L CNN
F 1 "22p" H 2875 4050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2888 4000 50  0001 C CNN
F 3 "" H 2850 4150 50  0000 C CNN
	1    2850 4150
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5886B6D4
P 3250 4150
F 0 "C2" H 3275 4250 50  0000 L CNN
F 1 "22p" H 3275 4050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3288 4000 50  0001 C CNN
F 3 "" H 3250 4150 50  0000 C CNN
	1    3250 4150
	1    0    0    -1  
$EndComp
$Comp
L XTAL_GND X1
U 1 1 5886B7B7
P 3050 3700
F 0 "X1" H 3050 3850 60  0000 C CNN
F 1 "XTAL_GND" H 3050 3550 60  0000 C CNN
F 2 "keyboard_parts:FA-238" H 3050 3700 60  0001 C CNN
F 3 "" H 3050 3700 60  0000 C CNN
	1    3050 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5886B98B
P 3050 4400
F 0 "#PWR01" H 3050 4150 50  0001 C CNN
F 1 "GND" H 3050 4250 50  0000 C CNN
F 2 "" H 3050 4400 50  0000 C CNN
F 3 "" H 3050 4400 50  0000 C CNN
	1    3050 4400
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5886BAB6
P 3450 2650
F 0 "C3" H 3475 2750 50  0000 L CNN
F 1 "0.1u" H 3475 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3488 2500 50  0001 C CNN
F 3 "" H 3450 2650 50  0000 C CNN
	1    3450 2650
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5886BCCF
P 3700 2650
F 0 "C4" H 3725 2750 50  0000 L CNN
F 1 "4.7u" H 3725 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3738 2500 50  0001 C CNN
F 3 "" H 3700 2650 50  0000 C CNN
	1    3700 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5886BE66
P 3300 2850
F 0 "#PWR02" H 3300 2600 50  0001 C CNN
F 1 "GND" H 3300 2700 50  0000 C CNN
F 2 "" H 3300 2850 50  0000 C CNN
F 3 "" H 3300 2850 50  0000 C CNN
	1    3300 2850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 5886BEB8
P 3300 2450
F 0 "#PWR03" H 3300 2300 50  0001 C CNN
F 1 "VCC" H 3300 2600 50  0000 C CNN
F 2 "" H 3300 2450 50  0000 C CNN
F 3 "" H 3300 2450 50  0000 C CNN
	1    3300 2450
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 5886C3B6
P 3550 3400
F 0 "SW1" H 3700 3510 50  0000 C CNN
F 1 "SW_PUSH" H 3550 3320 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_TL3342" H 3550 3400 60  0001 C CNN
F 3 "" H 3550 3400 60  0000 C CNN
	1    3550 3400
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5886C3F9
P 3700 3100
F 0 "R1" V 3780 3100 50  0000 C CNN
F 1 "10k" V 3700 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3630 3100 50  0001 C CNN
F 3 "" H 3700 3100 50  0000 C CNN
	1    3700 3100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 5886C481
P 3400 3100
F 0 "#PWR04" H 3400 2850 50  0001 C CNN
F 1 "GND" H 3400 2950 50  0000 C CNN
F 2 "" H 3400 3100 50  0000 C CNN
F 3 "" H 3400 3100 50  0000 C CNN
	1    3400 3100
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR05
U 1 1 5886C4AB
P 3150 3400
F 0 "#PWR05" H 3150 3250 50  0001 C CNN
F 1 "VCC" H 3150 3550 50  0000 C CNN
F 2 "" H 3150 3400 50  0000 C CNN
F 3 "" H 3150 3400 50  0000 C CNN
	1    3150 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 3550 2750 4000
Wire Wire Line
	2750 4000 2850 4000
Wire Wire Line
	3350 3650 3350 4000
Wire Wire Line
	3350 4000 3250 4000
Wire Wire Line
	3500 4000 4000 4000
Wire Wire Line
	3600 3900 4000 3900
Connection ~ 2750 3700
Wire Wire Line
	3050 3900 3050 4400
Wire Wire Line
	2850 4300 3250 4300
Connection ~ 3050 4300
Wire Wire Line
	3350 3650 3500 3650
Wire Wire Line
	3500 3650 3500 4000
Connection ~ 3350 3700
Wire Wire Line
	3600 3900 3600 3550
Wire Wire Line
	3600 3550 2750 3550
Wire Wire Line
	3300 2800 3300 2850
Connection ~ 3450 2800
Wire Wire Line
	3300 2500 3300 2450
Connection ~ 3450 2500
Wire Wire Line
	3850 3100 3900 3100
Wire Wire Line
	3900 3100 3900 3700
Wire Wire Line
	3900 3400 3850 3400
Wire Wire Line
	3900 3700 4000 3700
Connection ~ 3900 3400
Wire Wire Line
	3550 3100 3400 3100
Wire Wire Line
	3250 3400 3150 3400
$Comp
L R R2
U 1 1 5886C6F7
P 6500 4900
F 0 "R2" V 6580 4900 50  0000 C CNN
F 1 "10k" V 6500 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6430 4900 50  0001 C CNN
F 3 "" H 6500 4900 50  0000 C CNN
	1    6500 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 4900 6350 4900
$Comp
L GND #PWR06
U 1 1 5886C76B
P 6800 4900
F 0 "#PWR06" H 6800 4650 50  0001 C CNN
F 1 "GND" H 6800 4750 50  0000 C CNN
F 2 "" H 6800 4900 50  0000 C CNN
F 3 "" H 6800 4900 50  0000 C CNN
	1    6800 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 4900 6800 4900
$Comp
L USB_mini_micro_B J1
U 1 1 5886CB4E
P 2800 4750
F 0 "J1" H 2400 4700 60  0000 C CNN
F 1 "USB_mini_micro_B" H 2650 5000 60  0001 C CNN
F 2 "keyboard_parts:USB_microB" H 2750 4750 60  0001 C CNN
F 3 "" H 2750 4750 60  0000 C CNN
	1    2800 4750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 5886CBAF
P 3300 4500
F 0 "#PWR07" H 3300 4350 50  0001 C CNN
F 1 "VCC" H 3300 4650 50  0000 C CNN
F 2 "" H 3300 4500 50  0000 C CNN
F 3 "" H 3300 4500 50  0000 C CNN
	1    3300 4500
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5886CBDD
P 3650 4800
F 0 "R3" V 3730 4800 50  0000 C CNN
F 1 "22" V 3650 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3580 4800 50  0001 C CNN
F 3 "" H 3650 4800 50  0000 C CNN
	1    3650 4800
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5886CC2E
P 3650 4900
F 0 "R4" V 3730 4900 50  0000 C CNN
F 1 "22" V 3650 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3580 4900 50  0001 C CNN
F 3 "" H 3650 4900 50  0000 C CNN
	1    3650 4900
	0    1    1    0   
$EndComp
$Comp
L C C5
U 1 1 5886CCA5
P 3700 4600
F 0 "C5" H 3725 4700 50  0000 L CNN
F 1 "1u" H 3725 4500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3738 4450 50  0001 C CNN
F 3 "" H 3700 4600 50  0000 C CNN
	1    3700 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 4600 3300 4600
Wire Wire Line
	3300 4500 3300 4700
Wire Wire Line
	3300 4700 4000 4700
Connection ~ 3300 4600
Wire Wire Line
	3850 4600 4000 4600
Wire Wire Line
	3550 4600 3400 4600
Wire Wire Line
	3400 4600 3400 5200
Wire Wire Line
	3400 5100 2950 5100
Wire Wire Line
	2950 5000 4000 5000
Connection ~ 3400 5000
$Comp
L GND #PWR08
U 1 1 5886CE5E
P 3400 5200
F 0 "#PWR08" H 3400 4950 50  0001 C CNN
F 1 "GND" H 3400 5050 50  0000 C CNN
F 2 "" H 3400 5200 50  0000 C CNN
F 3 "" H 3400 5200 50  0000 C CNN
	1    3400 5200
	1    0    0    -1  
$EndComp
Connection ~ 3400 5100
Wire Wire Line
	4000 4800 3800 4800
Wire Wire Line
	3800 4900 4000 4900
Wire Wire Line
	3500 4800 2950 4800
Wire Wire Line
	3500 4900 3050 4900
Wire Wire Line
	3050 4900 3050 4700
Wire Wire Line
	3050 4700 2950 4700
$Comp
L GND #PWR09
U 1 1 5886D69F
P 5100 5900
F 0 "#PWR09" H 5100 5650 50  0001 C CNN
F 1 "GND" H 5100 5750 50  0000 C CNN
F 2 "" H 5100 5900 50  0000 C CNN
F 3 "" H 5100 5900 50  0000 C CNN
	1    5100 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5800 5100 5900
$Comp
L VCC #PWR010
U 1 1 5886DAEA
P 5100 2850
F 0 "#PWR010" H 5100 2700 50  0001 C CNN
F 1 "VCC" H 5100 3000 50  0000 C CNN
F 2 "" H 5100 2850 50  0000 C CNN
F 3 "" H 5100 2850 50  0000 C CNN
	1    5100 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2850 5100 3000
$Comp
L VCC #PWR011
U 1 1 5886DCA6
P 3900 3800
F 0 "#PWR011" H 3900 3650 50  0001 C CNN
F 1 "VCC" H 3900 3950 50  0000 C CNN
F 2 "" H 3900 3800 50  0000 C CNN
F 3 "" H 3900 3800 50  0000 C CNN
	1    3900 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 3800 3900 3800
$Comp
L KEYSW K1
U 1 1 5886E063
P 7300 3350
F 0 "K1" H 7250 3350 60  0000 C CNN
F 1 "KEYSW" H 7300 3250 60  0001 C CNN
F 2 "keebs:Mx_Alps_100" H 7300 3350 60  0001 C CNN
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
F 2 "keebs:Mx_Alps_100" H 7300 3600 60  0001 C CNN
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
F 2 "keebs:Mx_Alps_100" H 7300 3850 60  0001 C CNN
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
F 2 "keebs:Mx_Alps_100" H 7300 4100 60  0001 C CNN
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
F 2 "keebs:Mx_Alps_100" H 7300 4350 60  0001 C CNN
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
F 2 "keebs:Mx_Alps_100" H 7300 4600 60  0001 C CNN
F 3 "" H 7300 4600 60  0000 C CNN
	1    7300 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3350 7650 3350
Wire Wire Line
	7650 3350 7650 4700
Wire Wire Line
	7650 4600 7600 4600
Wire Wire Line
	7600 4350 7650 4350
Connection ~ 7650 4350
Wire Wire Line
	7600 4100 7650 4100
Connection ~ 7650 4100
Wire Wire Line
	7600 3850 7650 3850
Connection ~ 7650 3850
Wire Wire Line
	7600 3600 7650 3600
Connection ~ 7650 3600
$Comp
L GND #PWR012
U 1 1 5886E4DE
P 7650 4700
F 0 "#PWR012" H 7650 4450 50  0001 C CNN
F 1 "GND" H 7650 4550 50  0000 C CNN
F 2 "" H 7650 4700 50  0000 C CNN
F 3 "" H 7650 4700 50  0000 C CNN
	1    7650 4700
	1    0    0    -1  
$EndComp
Connection ~ 7650 4600
Wire Wire Line
	7000 3350 6500 3350
Wire Wire Line
	6500 3350 6500 3300
Wire Wire Line
	6500 3300 6200 3300
Wire Wire Line
	6200 3400 6450 3400
Wire Wire Line
	6450 3400 6450 3600
Wire Wire Line
	6450 3600 7000 3600
Wire Wire Line
	6200 3500 6400 3500
Wire Wire Line
	6400 3500 6400 3850
Wire Wire Line
	6400 3850 7000 3850
Wire Wire Line
	6200 3600 6350 3600
Wire Wire Line
	6350 3600 6350 4100
Wire Wire Line
	6350 4100 7000 4100
Wire Wire Line
	6200 3700 6300 3700
Wire Wire Line
	6300 3700 6300 4350
Wire Wire Line
	6300 4350 7000 4350
Wire Wire Line
	6200 3800 6250 3800
Wire Wire Line
	6250 3800 6250 4600
Wire Wire Line
	6250 4600 7000 4600
Wire Wire Line
	3300 2500 3700 2500
Wire Wire Line
	3300 2800 3700 2800
$EndSCHEMATC
