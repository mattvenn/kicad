EESchema Schematic File Version 2
LIBS:wiimotefpga-rescue
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
LIBS:wiimote-camera
LIBS:oscillator
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
$Comp
L CONN_02X06 P2
U 1 1 592C4A96
P 7800 4350
F 0 "P2" H 7800 4815 50  0000 C CNN
F 1 "CONN_02X06" H 7800 4724 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x06" H 7800 3150 50  0001 C CNN
F 3 "" H 7800 3150 50  0000 C CNN
	1    7800 4350
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 592C4B06
P 6150 4550
F 0 "R3" H 6220 4596 50  0000 L CNN
F 1 "10k" H 6220 4505 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6080 4550 50  0001 C CNN
F 3 "" H 6150 4550 50  0000 C CNN
	1    6150 4550
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 592C4B90
P 6650 4550
F 0 "C1" H 6765 4596 50  0000 L CNN
F 1 "C" H 6765 4505 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 6688 4400 50  0001 C CNN
F 3 "" H 6650 4550 50  0000 C CNN
	1    6650 4550
	1    0    0    -1  
$EndComp
$Comp
L oscillator U1
U 1 1 592C4E35
P 5700 3000
F 0 "U1" H 5675 3487 60  0000 C CNN
F 1 "oscillator" H 5675 3381 60  0000 C CNN
F 2 "fp:oscillator" H 5850 3050 60  0001 C CNN
F 3 "" H 5850 3050 60  0001 C CNN
F 4 "1448074" H 5700 3000 60  0001 C CNN "farnell #"
	1    5700 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 592C51DC
P 7400 4500
F 0 "#PWR01" H 7400 4250 50  0001 C CNN
F 1 "GND" H 7405 4327 50  0000 C CNN
F 2 "" H 7400 4500 50  0000 C CNN
F 3 "" H 7400 4500 50  0000 C CNN
	1    7400 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 4500 7550 4500
$Comp
L VCC #PWR02
U 1 1 592C522F
P 7550 4600
F 0 "#PWR02" H 7550 4450 50  0001 C CNN
F 1 "VCC" H 7568 4773 50  0000 C CNN
F 2 "" H 7550 4600 50  0000 C CNN
F 3 "" H 7550 4600 50  0000 C CNN
	1    7550 4600
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR03
U 1 1 592C5255
P 8050 4600
F 0 "#PWR03" H 8050 4450 50  0001 C CNN
F 1 "VCC" H 8068 4773 50  0000 C CNN
F 2 "" H 8050 4600 50  0000 C CNN
F 3 "" H 8050 4600 50  0000 C CNN
	1    8050 4600
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR04
U 1 1 592C526A
P 8200 4500
F 0 "#PWR04" H 8200 4250 50  0001 C CNN
F 1 "GND" H 8205 4327 50  0000 C CNN
F 2 "" H 8200 4500 50  0000 C CNN
F 3 "" H 8200 4500 50  0000 C CNN
	1    8200 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4500 8200 4500
Text Label 8050 4100 0    60   ~ 0
sda
Text Label 8050 4200 0    60   ~ 0
scl
Text Label 8050 4300 0    60   ~ 0
clk
Text Label 8050 4400 0    60   ~ 0
reset
NoConn ~ 7550 4400
NoConn ~ 7550 4300
NoConn ~ 7550 4200
NoConn ~ 7550 4100
$Comp
L VCC #PWR05
U 1 1 592C5306
P 6200 2850
F 0 "#PWR05" H 6200 2700 50  0001 C CNN
F 1 "VCC" H 6218 3023 50  0000 C CNN
F 2 "" H 6200 2850 50  0000 C CNN
F 3 "" H 6200 2850 50  0000 C CNN
	1    6200 2850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 592C531B
P 5150 3150
F 0 "#PWR06" H 5150 2900 50  0001 C CNN
F 1 "GND" H 5155 2977 50  0000 C CNN
F 2 "" H 5150 3150 50  0000 C CNN
F 3 "" H 5150 3150 50  0000 C CNN
	1    5150 3150
	1    0    0    -1  
$EndComp
NoConn ~ 5150 2850
$Comp
L CONN_01X03 P1
U 1 1 592C5397
P 5650 1800
F 0 "P1" H 5728 1841 50  0000 L CNN
F 1 "CONN_01X03" H 5728 1750 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 5650 1800 50  0001 C CNN
F 3 "" H 5650 1800 50  0000 C CNN
	1    5650 1800
	1    0    0    -1  
$EndComp
Text Label 6200 3150 0    60   ~ 0
osc
Text Label 5450 1900 2    60   ~ 0
osc
Text Label 5450 1700 2    60   ~ 0
clk
Text Label 5450 1800 2    60   ~ 0
cam_clk
Text Label 6950 2050 2    60   ~ 0
cam_clk
Text Label 6950 1850 2    60   ~ 0
scl
Text Label 6950 1950 2    60   ~ 0
sda
$Comp
L GND #PWR07
U 1 1 592C5709
P 6750 1600
F 0 "#PWR07" H 6750 1350 50  0001 C CNN
F 1 "GND" H 6755 1427 50  0000 C CNN
F 2 "" H 6750 1600 50  0000 C CNN
F 3 "" H 6750 1600 50  0000 C CNN
	1    6750 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1450 6750 1450
$Comp
L VCC #PWR08
U 1 1 592C5735
P 6750 1450
F 0 "#PWR08" H 6750 1300 50  0001 C CNN
F 1 "VCC" H 6768 1623 50  0000 C CNN
F 2 "" H 6750 1450 50  0000 C CNN
F 3 "" H 6750 1450 50  0000 C CNN
	1    6750 1450
	0    -1   -1   0   
$EndComp
Text Label 6150 4400 1    60   ~ 0
reset
Text Label 6950 2150 2    60   ~ 0
reset
$Comp
L VCC #PWR09
U 1 1 592C5A56
P 6150 4700
F 0 "#PWR09" H 6150 4550 50  0001 C CNN
F 1 "VCC" H 6168 4873 50  0000 C CNN
F 2 "" H 6150 4700 50  0000 C CNN
F 3 "" H 6150 4700 50  0000 C CNN
	1    6150 4700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR010
U 1 1 592C5A94
P 6650 4700
F 0 "#PWR010" H 6650 4450 50  0001 C CNN
F 1 "GND" H 6655 4527 50  0000 C CNN
F 2 "" H 6650 4700 50  0000 C CNN
F 3 "" H 6650 4700 50  0000 C CNN
	1    6650 4700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 592C5AAB
P 6650 4400
F 0 "#PWR011" H 6650 4250 50  0001 C CNN
F 1 "VCC" H 6667 4573 50  0000 C CNN
F 2 "" H 6650 4400 50  0000 C CNN
F 3 "" H 6650 4400 50  0000 C CNN
	1    6650 4400
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 592C5B74
P 5650 4550
F 0 "R2" H 5720 4596 50  0000 L CNN
F 1 "4.7k" H 5720 4505 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5580 4550 50  0001 C CNN
F 3 "" H 5650 4550 50  0000 C CNN
	1    5650 4550
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 592C5BA0
P 5250 4550
F 0 "R1" H 5320 4596 50  0000 L CNN
F 1 "R" H 5320 4505 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5180 4550 50  0001 C CNN
F 3 "" H 5250 4550 50  0000 C CNN
F 4 "4.7k" H 5250 4550 60  0001 C CNN "farnell #"
	1    5250 4550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 592C5C32
P 5250 4700
F 0 "#PWR012" H 5250 4550 50  0001 C CNN
F 1 "VCC" H 5268 4873 50  0000 C CNN
F 2 "" H 5250 4700 50  0000 C CNN
F 3 "" H 5250 4700 50  0000 C CNN
	1    5250 4700
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR013
U 1 1 592C5C5D
P 5650 4700
F 0 "#PWR013" H 5650 4550 50  0001 C CNN
F 1 "VCC" H 5668 4873 50  0000 C CNN
F 2 "" H 5650 4700 50  0000 C CNN
F 3 "" H 5650 4700 50  0000 C CNN
	1    5650 4700
	-1   0    0    1   
$EndComp
Text Label 5250 4400 0    60   ~ 0
sda
Text Label 5650 4400 0    60   ~ 0
scl
$Comp
L TEST_1P W1
U 1 1 592C5CF9
P 5100 3950
F 0 "W1" H 5158 4070 50  0000 L CNN
F 1 "TEST_1P" H 5158 3979 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Round-TH_Small" H 5300 3950 50  0001 C CNN
F 3 "" H 5300 3950 50  0000 C CNN
	1    5100 3950
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W2
U 1 1 592C5DE1
P 5650 3950
F 0 "W2" H 5708 4070 50  0000 L CNN
F 1 "TEST_1P" H 5708 3979 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Round-TH_Small" H 5850 3950 50  0001 C CNN
F 3 "" H 5850 3950 50  0000 C CNN
	1    5650 3950
	1    0    0    -1  
$EndComp
Text Label 5100 3950 2    60   ~ 0
sda
Text Label 5650 3950 2    60   ~ 0
scl
$Comp
L LED D1
U 1 1 592C5F93
P 4350 4400
F 0 "D1" V 4396 4292 50  0000 R CNN
F 1 "LED" V 4305 4292 50  0000 R CNN
F 2 "LEDs:LED-1206" H 4350 4400 50  0001 C CNN
F 3 "" H 4350 4400 50  0000 C CNN
	1    4350 4400
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 592C6095
P 4350 4750
F 0 "R4" H 4420 4796 50  0000 L CNN
F 1 "150R" H 4420 4705 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4280 4750 50  0001 C CNN
F 3 "" H 4350 4750 50  0000 C CNN
	1    4350 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 592C6101
P 4350 4900
F 0 "#PWR014" H 4350 4650 50  0001 C CNN
F 1 "GND" H 4355 4727 50  0000 C CNN
F 2 "" H 4350 4900 50  0000 C CNN
F 3 "" H 4350 4900 50  0000 C CNN
	1    4350 4900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR015
U 1 1 592C6154
P 4350 4200
F 0 "#PWR015" H 4350 4050 50  0001 C CNN
F 1 "VCC" H 4367 4373 50  0000 C CNN
F 2 "" H 4350 4200 50  0000 C CNN
F 3 "" H 4350 4200 50  0000 C CNN
	1    4350 4200
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W3
U 1 1 592C64F0
P 6350 3950
F 0 "W3" H 6408 4070 50  0000 L CNN
F 1 "TEST_1P" H 6408 3979 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Round-TH_Small" H 6550 3950 50  0001 C CNN
F 3 "" H 6550 3950 50  0000 C CNN
	1    6350 3950
	1    0    0    -1  
$EndComp
Text Label 6350 3950 2    60   ~ 0
cam_clk
$Comp
L wiimote-camera U2
U 1 1 592C6EA5
P 7600 1750
F 0 "U2" H 7978 1728 60  0000 L CNN
F 1 "wiimote-camera" H 7978 1622 60  0000 L CNN
F 2 "fp:wiimote" H 7400 1650 60  0001 C CNN
F 3 "" H 7400 1650 60  0001 C CNN
	1    7600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1600 6950 1600
Wire Wire Line
	6950 1550 6950 1650
Connection ~ 6950 1600
$EndSCHEMATC