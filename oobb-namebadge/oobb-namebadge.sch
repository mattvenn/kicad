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
LIBS:oobb-namebadge-cache
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
L GND #PWR01
U 1 1 5D963203
P 2950 1950
F 0 "#PWR01" H 2950 1700 50  0001 C CNN
F 1 "GND" V 2955 1822 50  0000 R CNN
F 2 "" H 2950 1950 50  0001 C CNN
F 3 "" H 2950 1950 50  0001 C CNN
	1    2950 1950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR02
U 1 1 5D963333
P 2950 1450
F 0 "#PWR02" H 2950 1300 50  0001 C CNN
F 1 "+3.3V" V 2965 1578 50  0000 L CNN
F 2 "" H 2950 1450 50  0001 C CNN
F 3 "" H 2950 1450 50  0001 C CNN
	1    2950 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5D9633FE
P 2150 1950
F 0 "#PWR03" H 2150 1700 50  0001 C CNN
F 1 "GND" V 2155 1822 50  0000 R CNN
F 2 "" H 2150 1950 50  0001 C CNN
F 3 "" H 2150 1950 50  0001 C CNN
	1    2150 1950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR04
U 1 1 5D963404
P 2150 1450
F 0 "#PWR04" H 2150 1300 50  0001 C CNN
F 1 "+3.3V" V 2165 1578 50  0000 L CNN
F 2 "" H 2150 1450 50  0001 C CNN
F 3 "" H 2150 1450 50  0001 C CNN
	1    2150 1450
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x03_Odd_Even J1
U 1 1 5D963559
P 2250 1750
F 0 "J1" V 2346 1562 50  0000 R CNN
F 1 "Conn_02x03_Odd_Even" H 2700 2100 50  0000 R CNN
F 2 "oobb:Pin_Header_Straight_2x03_Pitch2.54mm" H 2250 1750 50  0001 C CNN
F 3 "~" H 2250 1750 50  0001 C CNN
	1    2250 1750
	0    -1   -1   0   
$EndComp
$Comp
L Conn_02x03_Odd_Even J2
U 1 1 5D9635F0
P 3050 1750
F 0 "J2" V 3146 1562 50  0000 R CNN
F 1 "Conn_02x03_Odd_Even" H 3450 2100 50  0000 R CNN
F 2 "oobb:Pin_Header_Straight_2x03_Pitch2.54mm" H 3050 1750 50  0001 C CNN
F 3 "~" H 3050 1750 50  0001 C CNN
	1    3050 1750
	0    -1   -1   0   
$EndComp
NoConn ~ 2250 1450
NoConn ~ 2350 1450
NoConn ~ 2250 1950
NoConn ~ 2350 1950
NoConn ~ 3050 1450
NoConn ~ 3150 1450
NoConn ~ 3050 1950
NoConn ~ 3150 1950
$Comp
L GND #PWR05
U 1 1 5D963760
P 4550 1950
F 0 "#PWR05" H 4550 1700 50  0001 C CNN
F 1 "GND" V 4555 1822 50  0000 R CNN
F 2 "" H 4550 1950 50  0001 C CNN
F 3 "" H 4550 1950 50  0001 C CNN
	1    4550 1950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR06
U 1 1 5D963766
P 4550 1450
F 0 "#PWR06" H 4550 1300 50  0001 C CNN
F 1 "+3.3V" V 4565 1578 50  0000 L CNN
F 2 "" H 4550 1450 50  0001 C CNN
F 3 "" H 4550 1450 50  0001 C CNN
	1    4550 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5D96376C
P 3750 1950
F 0 "#PWR07" H 3750 1700 50  0001 C CNN
F 1 "GND" V 3755 1822 50  0000 R CNN
F 2 "" H 3750 1950 50  0001 C CNN
F 3 "" H 3750 1950 50  0001 C CNN
	1    3750 1950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR08
U 1 1 5D963772
P 3750 1450
F 0 "#PWR08" H 3750 1300 50  0001 C CNN
F 1 "+3.3V" V 3765 1578 50  0000 L CNN
F 2 "" H 3750 1450 50  0001 C CNN
F 3 "" H 3750 1450 50  0001 C CNN
	1    3750 1450
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x03_Odd_Even J3
U 1 1 5D963778
P 3850 1750
F 0 "J3" V 3946 1562 50  0000 R CNN
F 1 "Conn_02x03_Odd_Even" H 4300 2100 50  0000 R CNN
F 2 "oobb:Pin_Header_Straight_2x03_Pitch2.54mm" H 3850 1750 50  0001 C CNN
F 3 "~" H 3850 1750 50  0001 C CNN
	1    3850 1750
	0    -1   -1   0   
$EndComp
$Comp
L Conn_02x03_Odd_Even J4
U 1 1 5D96377E
P 4650 1750
F 0 "J4" V 4746 1562 50  0000 R CNN
F 1 "Conn_02x03_Odd_Even" H 5050 2100 50  0000 R CNN
F 2 "oobb:Pin_Header_Straight_2x03_Pitch2.54mm" H 4650 1750 50  0001 C CNN
F 3 "~" H 4650 1750 50  0001 C CNN
	1    4650 1750
	0    -1   -1   0   
$EndComp
NoConn ~ 3850 1450
NoConn ~ 3950 1450
NoConn ~ 3850 1950
NoConn ~ 3950 1950
NoConn ~ 4650 1450
NoConn ~ 4750 1450
NoConn ~ 4650 1950
NoConn ~ 4750 1950
$Comp
L GND #PWR09
U 1 1 5D9637E4
P 6150 1950
F 0 "#PWR09" H 6150 1700 50  0001 C CNN
F 1 "GND" V 6155 1822 50  0000 R CNN
F 2 "" H 6150 1950 50  0001 C CNN
F 3 "" H 6150 1950 50  0001 C CNN
	1    6150 1950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR010
U 1 1 5D9637EA
P 6150 1450
F 0 "#PWR010" H 6150 1300 50  0001 C CNN
F 1 "+3.3V" V 6165 1578 50  0000 L CNN
F 2 "" H 6150 1450 50  0001 C CNN
F 3 "" H 6150 1450 50  0001 C CNN
	1    6150 1450
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x03_Odd_Even J6
U 1 1 5D963802
P 6250 1750
F 0 "J6" V 6346 1562 50  0000 R CNN
F 1 "Conn_02x03_Odd_Even" H 6650 2100 50  0000 R CNN
F 2 "oobb:Pin_Header_Straight_2x03_Pitch2.54mm" H 6250 1750 50  0001 C CNN
F 3 "~" H 6250 1750 50  0001 C CNN
	1    6250 1750
	0    -1   -1   0   
$EndComp
NoConn ~ 6250 1450
NoConn ~ 6350 1450
NoConn ~ 6250 1950
NoConn ~ 6350 1950
$Comp
L Conn_01x01 J7
U 1 1 5D963A71
P 2850 2550
F 0 "J7" H 2930 2592 50  0000 L CNN
F 1 "Conn_01x01" H 2930 2501 50  0000 L CNN
F 2 "Connectors_TestPoints:Test_Point_Pad_d1.5mm" H 2850 2550 50  0001 C CNN
F 3 "~" H 2850 2550 50  0001 C CNN
	1    2850 2550
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J8
U 1 1 5D963ABB
P 2850 2750
F 0 "J8" H 2930 2792 50  0000 L CNN
F 1 "Conn_01x01" H 2930 2701 50  0000 L CNN
F 2 "Connectors_TestPoints:Test_Point_Pad_d1.5mm" H 2850 2750 50  0001 C CNN
F 3 "~" H 2850 2750 50  0001 C CNN
	1    2850 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5D963AE3
P 2650 2750
F 0 "#PWR013" H 2650 2500 50  0001 C CNN
F 1 "GND" V 2655 2622 50  0000 R CNN
F 2 "" H 2650 2750 50  0001 C CNN
F 3 "" H 2650 2750 50  0001 C CNN
	1    2650 2750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR014
U 1 1 5D963AFE
P 2650 2550
F 0 "#PWR014" H 2650 2400 50  0001 C CNN
F 1 "+3.3V" V 2665 2678 50  0000 L CNN
F 2 "" H 2650 2550 50  0001 C CNN
F 3 "" H 2650 2550 50  0001 C CNN
	1    2650 2550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
