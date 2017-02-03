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
LIBS:dvi
LIBS:dvipmod-cache
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
L dvi U1
U 1 1 589305B8
P 8550 2450
F 0 "U1" H 8550 2150 60  0000 C CNN
F 1 "dvi" H 8550 2750 60  0000 C CNN
F 2 "fp:molex dvi ra" H 8550 2450 60  0001 C CNN
F 3 "" H 8550 2450 60  0001 C CNN
	1    8550 2450
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR01
U 1 1 58930616
P 7550 4900
F 0 "#PWR01" H 7550 4650 50  0001 C CNN
F 1 "Earth" H 7550 4750 50  0001 C CNN
F 2 "" H 7550 4900 50  0000 C CNN
F 3 "" H 7550 4900 50  0000 C CNN
	1    7550 4900
	1    0    0    -1  
$EndComp
NoConn ~ 8050 2500
NoConn ~ 8050 2600
NoConn ~ 8050 2700
NoConn ~ 8050 2800
NoConn ~ 8050 2900
NoConn ~ 8050 3300
NoConn ~ 8050 3400
NoConn ~ 8050 3500
NoConn ~ 8050 3700
NoConn ~ 8050 4100
NoConn ~ 8050 4200
NoConn ~ 9800 3000
NoConn ~ 9800 3100
NoConn ~ 9800 3200
NoConn ~ 9800 3300
NoConn ~ 9800 3400
$Comp
L CONN_02X06 P1
U 1 1 58930AD7
P 3350 4100
F 0 "P1" H 3350 4450 50  0000 C CNN
F 1 "CONN_02X06" H 3350 3750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x06" H 3350 2900 50  0001 C CNN
F 3 "" H 3350 2900 50  0000 C CNN
	1    3350 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2400 7550 2400
Wire Wire Line
	7550 2400 7550 4900
Wire Wire Line
	8050 4300 7550 4300
Wire Wire Line
	7550 4300 7550 4350
Connection ~ 7550 4350
Wire Wire Line
	8050 4000 7550 4000
Connection ~ 7550 4000
Wire Wire Line
	8050 3600 7550 3600
Connection ~ 7550 3600
Wire Wire Line
	8050 3200 7550 3200
Connection ~ 7550 3200
Wire Wire Line
	8050 2200 6100 2200
Wire Wire Line
	8050 2300 6100 2300
Wire Wire Line
	8050 3000 6100 3000
Wire Wire Line
	8050 3100 6100 3100
Wire Wire Line
	8050 3800 6150 3800
Wire Wire Line
	8050 3900 6150 3900
Wire Wire Line
	8050 4400 6200 4400
Wire Wire Line
	8050 4500 6200 4500
Text Label 6100 2200 0    60   ~ 0
red-
Text Label 6100 2300 0    60   ~ 0
red+
Text Label 6100 3000 0    60   ~ 0
green-
Text Label 6100 3100 0    60   ~ 0
green+
Text Label 6150 3800 0    60   ~ 0
blue-
Text Label 6150 3900 0    60   ~ 0
blue+
Text Label 6200 4400 0    60   ~ 0
clock+
Text Label 6200 4500 0    60   ~ 0
clock-
$Comp
L Earth #PWR02
U 1 1 58930BB3
P 3750 4250
F 0 "#PWR02" H 3750 4000 50  0001 C CNN
F 1 "Earth" H 3750 4100 50  0001 C CNN
F 2 "" H 3750 4250 50  0000 C CNN
F 3 "" H 3750 4250 50  0000 C CNN
	1    3750 4250
	0    -1   -1   0   
$EndComp
$Comp
L Earth #PWR03
U 1 1 58930BCB
P 2950 4250
F 0 "#PWR03" H 2950 4000 50  0001 C CNN
F 1 "Earth" H 2950 4100 50  0001 C CNN
F 2 "" H 2950 4250 50  0000 C CNN
F 3 "" H 2950 4250 50  0000 C CNN
	1    2950 4250
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR04
U 1 1 58930BE3
P 2950 4350
F 0 "#PWR04" H 2950 4200 50  0001 C CNN
F 1 "VCC" H 2950 4500 50  0000 C CNN
F 2 "" H 2950 4350 50  0000 C CNN
F 3 "" H 2950 4350 50  0000 C CNN
	1    2950 4350
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR05
U 1 1 58930BFF
P 3750 4350
F 0 "#PWR05" H 3750 4200 50  0001 C CNN
F 1 "VCC" H 3750 4500 50  0000 C CNN
F 2 "" H 3750 4350 50  0000 C CNN
F 3 "" H 3750 4350 50  0000 C CNN
	1    3750 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 4250 3100 4250
Wire Wire Line
	2950 4350 3100 4350
Wire Wire Line
	3600 4350 3750 4350
Wire Wire Line
	3600 4250 3750 4250
$Comp
L C C1
U 1 1 58930D3C
P 4550 2300
F 0 "C1" H 4575 2400 50  0000 L CNN
F 1 "C" H 4575 2200 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4588 2150 50  0001 C CNN
F 3 "" H 4550 2300 50  0000 C CNN
	1    4550 2300
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 58930E02
P 4550 2600
F 0 "C2" H 4575 2700 50  0000 L CNN
F 1 "C" H 4575 2500 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4588 2450 50  0001 C CNN
F 3 "" H 4550 2600 50  0000 C CNN
	1    4550 2600
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 58930E2C
P 4850 2450
F 0 "R1" V 4930 2450 50  0000 C CNN
F 1 "R" V 4850 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4780 2450 50  0001 C CNN
F 3 "" H 4850 2450 50  0000 C CNN
	1    4850 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2300 5100 2300
Wire Wire Line
	4700 2600 5100 2600
Connection ~ 4850 2300
Connection ~ 4850 2600
Text Label 5100 2300 0    60   ~ 0
red-
Text Label 5100 2600 0    60   ~ 0
red+
Text Label 4400 2300 0    60   ~ 0
r-
Text Label 4400 2600 0    60   ~ 0
r+
Text Label 3600 4050 0    60   ~ 0
r+
Text Label 3100 4050 2    60   ~ 0
r-
$Comp
L C C3
U 1 1 58931143
P 4550 2950
F 0 "C3" H 4575 3050 50  0000 L CNN
F 1 "C" H 4575 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4588 2800 50  0001 C CNN
F 3 "" H 4550 2950 50  0000 C CNN
	1    4550 2950
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 58931149
P 4550 3250
F 0 "C4" H 4575 3350 50  0000 L CNN
F 1 "C" H 4575 3150 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4588 3100 50  0001 C CNN
F 3 "" H 4550 3250 50  0000 C CNN
	1    4550 3250
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5893114F
P 4850 3100
F 0 "R2" V 4930 3100 50  0000 C CNN
F 1 "R" V 4850 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4780 3100 50  0001 C CNN
F 3 "" H 4850 3100 50  0000 C CNN
	1    4850 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2950 5100 2950
Wire Wire Line
	4700 3250 5100 3250
Connection ~ 4850 2950
Connection ~ 4850 3250
Text Label 5100 2950 0    60   ~ 0
green-
Text Label 5100 3250 0    60   ~ 0
green+
Text Label 4400 2950 0    60   ~ 0
g-
Text Label 4400 3250 0    60   ~ 0
g+
$Comp
L C C5
U 1 1 589312A1
P 4550 3600
F 0 "C5" H 4575 3700 50  0000 L CNN
F 1 "C" H 4575 3500 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4588 3450 50  0001 C CNN
F 3 "" H 4550 3600 50  0000 C CNN
	1    4550 3600
	0    1    1    0   
$EndComp
$Comp
L C C6
U 1 1 589312A7
P 4550 3900
F 0 "C6" H 4575 4000 50  0000 L CNN
F 1 "C" H 4575 3800 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4588 3750 50  0001 C CNN
F 3 "" H 4550 3900 50  0000 C CNN
	1    4550 3900
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 589312AD
P 4850 3750
F 0 "R3" V 4930 3750 50  0000 C CNN
F 1 "R" V 4850 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4780 3750 50  0001 C CNN
F 3 "" H 4850 3750 50  0000 C CNN
	1    4850 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3600 5100 3600
Wire Wire Line
	4700 3900 5100 3900
Connection ~ 4850 3600
Connection ~ 4850 3900
Text Label 5100 3600 0    60   ~ 0
blue-
Text Label 5100 3900 0    60   ~ 0
blue+
Text Label 4400 3600 0    60   ~ 0
b-
Text Label 4400 3900 0    60   ~ 0
b+
$Comp
L C C7
U 1 1 589312BB
P 4550 4250
F 0 "C7" H 4575 4350 50  0000 L CNN
F 1 "C" H 4575 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4588 4100 50  0001 C CNN
F 3 "" H 4550 4250 50  0000 C CNN
	1    4550 4250
	0    1    1    0   
$EndComp
$Comp
L C C8
U 1 1 589312C1
P 4550 4550
F 0 "C8" H 4575 4650 50  0000 L CNN
F 1 "C" H 4575 4450 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4588 4400 50  0001 C CNN
F 3 "" H 4550 4550 50  0000 C CNN
	1    4550 4550
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 589312C7
P 4850 4400
F 0 "R4" V 4930 4400 50  0000 C CNN
F 1 "R" V 4850 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4780 4400 50  0001 C CNN
F 3 "" H 4850 4400 50  0000 C CNN
	1    4850 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4250 5100 4250
Wire Wire Line
	4700 4550 5100 4550
Connection ~ 4850 4250
Connection ~ 4850 4550
Text Label 5100 4250 0    60   ~ 0
clock-
Text Label 5100 4550 0    60   ~ 0
clock+
Text Label 4400 4250 0    60   ~ 0
c-
Text Label 4400 4550 0    60   ~ 0
c+
Text Label 3600 4150 0    60   ~ 0
c+
Text Label 3600 3950 0    60   ~ 0
g+
Text Label 3600 3850 0    60   ~ 0
b+
Text Label 3100 4150 2    60   ~ 0
c-
Text Label 3100 3950 2    60   ~ 0
g-
Text Label 3100 3850 2    60   ~ 0
b-
Text Notes 6450 1850 0    60   ~ 0
pinout from https://en.wikipedia.org/wiki/Digital_Visual_Interface
Text Notes 3250 3550 0    60   ~ 0
pmod
Text Notes 3000 5250 0    60   ~ 0
useful discussion on tmds from lvds\nhttp://electronics.stackexchange.com/questions/130942/transmitting-hdmi-dvi-over-an-fpga-with-no-support-for-tmds
Text Notes 3000 5500 0    60   ~ 0
ac coupling from https://www.silabs.com/Support%20Documents/TechnicalDocs/AN408.pdf
$Comp
L LED D1
U 1 1 5894522F
P 3300 2550
F 0 "D1" H 3300 2650 50  0000 C CNN
F 1 "LED" H 3300 2450 50  0000 C CNN
F 2 "LEDs:LED-1206" H 3300 2550 50  0001 C CNN
F 3 "" H 3300 2550 50  0000 C CNN
	1    3300 2550
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 58945325
P 3300 2900
F 0 "R5" V 3380 2900 50  0000 C CNN
F 1 "R" V 3300 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3230 2900 50  0001 C CNN
F 3 "" H 3300 2900 50  0000 C CNN
	1    3300 2900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR06
U 1 1 589453DD
P 3300 2350
F 0 "#PWR06" H 3300 2200 50  0001 C CNN
F 1 "VCC" H 3300 2500 50  0000 C CNN
F 2 "" H 3300 2350 50  0000 C CNN
F 3 "" H 3300 2350 50  0000 C CNN
	1    3300 2350
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR07
U 1 1 58945482
P 3300 3050
F 0 "#PWR07" H 3300 2800 50  0001 C CNN
F 1 "Earth" H 3300 2900 50  0001 C CNN
F 2 "" H 3300 3050 50  0000 C CNN
F 3 "" H 3300 3050 50  0000 C CNN
	1    3300 3050
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W8
U 1 1 58945143
P 4400 4550
F 0 "W8" H 4400 4820 50  0000 C CNN
F 1 "TEST_1P" H 4400 4750 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 4600 4550 50  0001 C CNN
F 3 "" H 4600 4550 50  0000 C CNN
	1    4400 4550
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W6
U 1 1 58945092
P 4400 3900
F 0 "W6" H 4400 4170 50  0000 C CNN
F 1 "TEST_1P" H 4400 4100 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 4600 3900 50  0001 C CNN
F 3 "" H 4600 3900 50  0000 C CNN
	1    4400 3900
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W4
U 1 1 58944FD1
P 4400 3250
F 0 "W4" H 4400 3520 50  0000 C CNN
F 1 "TEST_1P" H 4400 3450 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 4600 3250 50  0001 C CNN
F 3 "" H 4600 3250 50  0000 C CNN
	1    4400 3250
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W2
U 1 1 58944EE5
P 4400 2600
F 0 "W2" H 4400 2870 50  0000 C CNN
F 1 "TEST_1P" H 4400 2800 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 4600 2600 50  0001 C CNN
F 3 "" H 4600 2600 50  0000 C CNN
	1    4400 2600
	1    0    0    -1  
$EndComp
Text Notes 4600 1950 0    60   ~ 0
ac coupling
$EndSCHEMATC
