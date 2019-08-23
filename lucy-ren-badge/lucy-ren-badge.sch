EESchema Schematic File Version 3
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos4000
LIBS:cmos_ieee
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intel
LIBS:interface
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:linear
LIBS:logic_programmable
LIBS:maxim
LIBS:mechanical
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:modules
LIBS:motor_drivers
LIBS:motorola
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:xilinx
LIBS:zetex
LIBS:Zilog
LIBS:rgbled
LIBS:lucy-ren-badge-cache
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
L Battery_Cell BT1
U 1 1 5D5FED2C
P 6050 2600
F 0 "BT1" H 6168 2696 50  0000 L CNN
F 1 "Battery_Cell" H 6168 2605 50  0000 L CNN
F 2 "Battery_Holders:Keystone_3000_1x12mm-CoinCell" V 6050 2660 50  0001 C CNN
F 3 "" V 6050 2660 50  0001 C CNN
	1    6050 2600
	1    0    0    -1  
$EndComp
$Comp
L ATTINY88-AU U1
U 1 1 5D5FEE51
P 2800 3050
F 0 "U1" H 2800 4717 50  0000 C CNN
F 1 "ATTINY88-AU" H 2800 4626 50  0000 C CNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 2800 3050 50  0001 C CIN
F 3 "http://www.atmel.com/Images/doc8008.pdf" H 2800 3050 50  0001 C CNN
	1    2800 3050
	1    0    0    -1  
$EndComp
$Comp
L SW_DIP_x01 SW1
U 1 1 5D5FF062
P 5750 2400
F 0 "SW1" H 5750 2667 50  0000 C CNN
F 1 "SW_DIP_x01" H 5750 2576 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_DIP_x1_W5.08mm_Slide_Copal_CHS-A" H 5750 2400 50  0001 C CNN
F 3 "" H 5750 2400 50  0001 C CNN
	1    5750 2400
	1    0    0    -1  
$EndComp
Text Notes 5500 2350 0    60   ~ 0
3v\n
Text Notes 5200 3300 0    60   ~ 0
plus resistors for 3v
$Comp
L rgbled U2
U 1 1 5D5FFEAB
P 4600 4600
F 0 "U2" H 4432 4739 60  0000 R CNN
F 1 "rgbled" H 4432 4633 60  0000 R CNN
F 2 "raise_fp:3528-4p" V 4600 4650 60  0001 C CNN
F 3 "" V 4600 4650 60  0001 C CNN
	1    4600 4600
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x03_Odd_Even J1
U 1 1 5D6000FF
P 4600 1250
F 0 "J1" H 4650 1567 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 4650 1476 50  0000 C CNN
F 2 "raise_fp:icsp-2.54-smt" H 4600 1250 50  0001 C CNN
F 3 "~" H 4600 1250 50  0001 C CNN
	1    4600 1250
	1    0    0    -1  
$EndComp
Text Label 4400 1150 2    60   ~ 0
miso
Text Label 4400 1250 2    60   ~ 0
sck
Text Label 4400 1350 2    60   ~ 0
reset
Text Label 4900 1250 0    60   ~ 0
mosi
$Comp
L GND #PWR01
U 1 1 5D600229
P 4900 1350
F 0 "#PWR01" H 4900 1100 50  0001 C CNN
F 1 "GND" H 4905 1177 50  0000 C CNN
F 2 "" H 4900 1350 50  0001 C CNN
F 3 "" H 4900 1350 50  0001 C CNN
	1    4900 1350
	1    0    0    -1  
$EndComp
NoConn ~ 4900 1150
Text Label 3750 2400 0    60   ~ 0
mosi
Text Label 3750 2500 0    60   ~ 0
miso
Text Label 3750 2600 0    60   ~ 0
sck
Text Label 3750 3550 0    60   ~ 0
reset
$Comp
L GND #PWR02
U 1 1 5D6002D1
P 1550 4500
F 0 "#PWR02" H 1550 4250 50  0001 C CNN
F 1 "GND" H 1555 4327 50  0000 C CNN
F 2 "" H 1550 4500 50  0001 C CNN
F 3 "" H 1550 4500 50  0001 C CNN
	1    1550 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4400 1850 4500
Wire Wire Line
	1850 4500 1550 4500
$Comp
L GND #PWR03
U 1 1 5D600306
P 5300 2700
F 0 "#PWR03" H 5300 2450 50  0001 C CNN
F 1 "GND" H 5305 2527 50  0000 C CNN
F 2 "" H 5300 2700 50  0001 C CNN
F 3 "" H 5300 2700 50  0001 C CNN
	1    5300 2700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5D60038B
P 5300 2400
F 0 "#PWR04" H 5300 2250 50  0001 C CNN
F 1 "VCC" H 5317 2573 50  0000 C CNN
F 2 "" H 5300 2400 50  0001 C CNN
F 3 "" H 5300 2400 50  0001 C CNN
	1    5300 2400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 5D6003AB
P 1850 1650
F 0 "#PWR05" H 1850 1500 50  0001 C CNN
F 1 "VCC" H 1867 1823 50  0000 C CNN
F 2 "" H 1850 1650 50  0001 C CNN
F 3 "" H 1850 1650 50  0001 C CNN
	1    1850 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1950 1850 1650
$Comp
L C C2
U 1 1 5D600471
P 4900 2550
F 0 "C2" H 5015 2596 50  0000 L CNN
F 1 "C" H 5015 2505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4938 2400 50  0001 C CNN
F 3 "" H 4900 2550 50  0001 C CNN
	1    4900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2400 5450 2400
Wire Wire Line
	4900 2700 6050 2700
Wire Wire Line
	4800 4300 4800 4900
Connection ~ 4800 4600
Text Label 4600 4100 0    60   ~ 0
r1
Text Label 4600 4400 0    60   ~ 0
g1
Text Label 4600 4700 0    60   ~ 0
b1
Text Label 4400 2950 0    60   ~ 0
r1
Text Label 3750 3150 0    60   ~ 0
b1
NoConn ~ 3750 1650
NoConn ~ 3750 1750
NoConn ~ 3750 1850
NoConn ~ 3750 1950
NoConn ~ 3750 2100
NoConn ~ 3750 2200
NoConn ~ 3750 2300
NoConn ~ 3750 2700
NoConn ~ 3750 2800
NoConn ~ 3750 3650
NoConn ~ 3750 4100
NoConn ~ 3750 4200
NoConn ~ 3750 4300
NoConn ~ 3750 4400
NoConn ~ 3750 4500
$Comp
L R R1
U 1 1 5D600903
P 6250 1550
F 0 "R1" H 6320 1596 50  0000 L CNN
F 1 "R" H 6320 1505 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6180 1550 50  0001 C CNN
F 3 "" H 6250 1550 50  0001 C CNN
	1    6250 1550
	-1   0    0    1   
$EndComp
Text Label 6250 1700 2    60   ~ 0
reset
$Comp
L VCC #PWR09
U 1 1 5D600990
P 6250 1400
F 0 "#PWR09" H 6250 1250 50  0001 C CNN
F 1 "VCC" H 6268 1573 50  0000 C CNN
F 2 "" H 6250 1400 50  0001 C CNN
F 3 "" H 6250 1400 50  0001 C CNN
	1    6250 1400
	1    0    0    -1  
$EndComp
Connection ~ 5300 2700
Connection ~ 5300 2400
$Comp
L C C1
U 1 1 5D600B9F
P 5700 1550
F 0 "C1" H 5815 1596 50  0000 L CNN
F 1 "C" H 5815 1505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5738 1400 50  0001 C CNN
F 3 "" H 5700 1550 50  0001 C CNN
	1    5700 1550
	1    0    0    -1  
$EndComp
Text Label 5700 1700 2    60   ~ 0
reset
$Comp
L VCC #PWR010
U 1 1 5D600C15
P 5700 1400
F 0 "#PWR010" H 5700 1250 50  0001 C CNN
F 1 "VCC" H 5718 1573 50  0000 C CNN
F 2 "" H 5700 1400 50  0001 C CNN
F 3 "" H 5700 1400 50  0001 C CNN
	1    5700 1400
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5D600DAD
P 4250 2950
F 0 "R2" V 4457 2950 50  0000 C CNN
F 1 "R" V 4366 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4180 2950 50  0001 C CNN
F 3 "" H 4250 2950 50  0001 C CNN
	1    4250 2950
	0    -1   -1   0   
$EndComp
Text Label 3750 3050 0    60   ~ 0
g1
Wire Wire Line
	3750 2950 4100 2950
$Comp
L VCC #PWR06
U 1 1 5D60123B
P 4800 4900
F 0 "#PWR06" H 4800 4750 50  0001 C CNN
F 1 "VCC" H 4818 5073 50  0000 C CNN
F 2 "" H 4800 4900 50  0001 C CNN
F 3 "" H 4800 4900 50  0001 C CNN
	1    4800 4900
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG01
U 1 1 5D601416
P 4900 2400
F 0 "#FLG01" H 4900 2475 50  0001 C CNN
F 1 "PWR_FLAG" H 4900 2574 50  0000 C CNN
F 2 "" H 4900 2400 50  0001 C CNN
F 3 "" H 4900 2400 50  0001 C CNN
	1    4900 2400
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 5D601473
P 4900 2700
F 0 "#FLG02" H 4900 2775 50  0001 C CNN
F 1 "PWR_FLAG" H 4900 2873 50  0000 C CNN
F 2 "" H 4900 2700 50  0001 C CNN
F 3 "" H 4900 2700 50  0001 C CNN
	1    4900 2700
	-1   0    0    1   
$EndComp
NoConn ~ 3750 3250
NoConn ~ 3750 3350
NoConn ~ 3750 3450
NoConn ~ 3750 3800
NoConn ~ 3750 3900
NoConn ~ 3750 4000
$EndSCHEMATC
