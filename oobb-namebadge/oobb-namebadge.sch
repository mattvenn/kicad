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
LIBS:oobb-namebadge
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
L Conn_01x01 J7
U 1 1 5D963A71
P 2100 3600
F 0 "J7" H 2180 3642 50  0000 L CNN
F 1 "Conn_01x01" H 2180 3551 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Big" H 2100 3600 50  0001 C CNN
F 3 "~" H 2100 3600 50  0001 C CNN
	1    2100 3600
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J8
U 1 1 5D963ABB
P 2100 3800
F 0 "J8" H 2180 3842 50  0000 L CNN
F 1 "Conn_01x01" H 2180 3751 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Square-SMD-Pad_Big" H 2100 3800 50  0001 C CNN
F 3 "~" H 2100 3800 50  0001 C CNN
	1    2100 3800
	1    0    0    -1  
$EndComp
$Comp
L lipo-charger-boost U2
U 1 1 5D9C5C35
P 5300 3750
F 0 "U2" H 5528 3803 60  0000 L CNN
F 1 "lipo-charger-boost" H 5528 3697 60  0000 L CNN
F 2 "oobb:lipo-charger-boost" H 5300 3750 60  0001 C CNN
F 3 "" H 5300 3750 60  0001 C CNN
	1    5300 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5D9C5C9F
P 5000 3500
F 0 "#PWR011" H 5000 3250 50  0001 C CNN
F 1 "GND" V 5005 3372 50  0000 R CNN
F 2 "" H 5000 3500 50  0001 C CNN
F 3 "" H 5000 3500 50  0001 C CNN
	1    5000 3500
	0    1    1    0   
$EndComp
NoConn ~ 5000 3600
$Comp
L AP1117-15 U1
U 1 1 5D9C5DAD
P 3600 3550
F 0 "U1" H 3600 3792 50  0000 C CNN
F 1 "AP1117-15" H 3600 3701 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 3600 3750 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 3700 3300 50  0001 C CNN
F 4 "1202826" H 3600 3550 60  0001 C CNN "farnell #"
F 5 "Value" H 3600 3550 60  0001 C CNN "supplier"
F 6 "Value" H 3600 3550 60  0001 C CNN "supplier PN"
F 7 "Value" H 3600 3550 60  0001 C CNN "MOQ"
F 8 "Value" H 3600 3550 60  0001 C CNN "leadtime"
	1    3600 3550
	1    0    0    -1  
$EndComp
$Comp
L SW_SPDT SW1
U 1 1 5D9C5F59
P 4650 4550
F 0 "SW1" H 4650 4835 50  0000 C CNN
F 1 "SW_SPDT" H 4650 4744 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPDT_CK-JS102011SAQN" H 4650 4550 50  0001 C CNN
F 3 "" H 4650 4550 50  0001 C CNN
F 4 "2320017 " H 4650 4550 60  0001 C CNN "farnell #"
F 5 "Value" H 4650 4550 60  0001 C CNN "supplier"
F 6 "Value" H 4650 4550 60  0001 C CNN "supplier PN"
F 7 "Value" H 4650 4550 60  0001 C CNN "MOQ"
F 8 "Value" H 4650 4550 60  0001 C CNN "leadtime"
	1    4650 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5D9C6130
P 1900 3800
F 0 "#PWR012" H 1900 3550 50  0001 C CNN
F 1 "GND" V 1905 3672 50  0000 R CNN
F 2 "" H 1900 3800 50  0001 C CNN
F 3 "" H 1900 3800 50  0001 C CNN
	1    1900 3800
	0    1    1    0   
$EndComp
Text Label 1900 3600 2    60   ~ 0
lipo
Text Label 4850 4450 0    60   ~ 0
lipo
$Comp
L +3.3V #PWR015
U 1 1 5D9C6392
P 3900 3550
F 0 "#PWR015" H 3900 3400 50  0001 C CNN
F 1 "+3.3V" V 3915 3678 50  0000 L CNN
F 2 "" H 3900 3550 50  0001 C CNN
F 3 "" H 3900 3550 50  0001 C CNN
	1    3900 3550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR016
U 1 1 5D9C63BE
P 3600 3850
F 0 "#PWR016" H 3600 3600 50  0001 C CNN
F 1 "GND" V 3605 3722 50  0000 R CNN
F 2 "" H 3600 3850 50  0001 C CNN
F 3 "" H 3600 3850 50  0001 C CNN
	1    3600 3850
	1    0    0    -1  
$EndComp
Text Label 5000 3700 2    60   ~ 0
boost-out
Text Label 3300 3550 2    60   ~ 0
boost-out
Wire Wire Line
	4450 4550 4450 3950
Wire Wire Line
	4450 3950 5000 3950
NoConn ~ 4850 4650
Text Label 2250 1450 1    60   ~ 0
sda
Text Label 2250 1950 3    60   ~ 0
scl
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
Text Label 2350 1450 1    60   ~ 0
gpio1
Text Label 2350 1950 3    60   ~ 0
gpio2
$Comp
L GND #PWR01
U 1 1 5D9C6BAD
P 2900 1950
F 0 "#PWR01" H 2900 1700 50  0001 C CNN
F 1 "GND" V 2905 1822 50  0000 R CNN
F 2 "" H 2900 1950 50  0001 C CNN
F 3 "" H 2900 1950 50  0001 C CNN
	1    2900 1950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR02
U 1 1 5D9C6BB3
P 2900 1450
F 0 "#PWR02" H 2900 1300 50  0001 C CNN
F 1 "+3.3V" V 2915 1578 50  0000 L CNN
F 2 "" H 2900 1450 50  0001 C CNN
F 3 "" H 2900 1450 50  0001 C CNN
	1    2900 1450
	1    0    0    -1  
$EndComp
Text Label 3000 1450 1    60   ~ 0
sda
Text Label 3000 1950 3    60   ~ 0
scl
$Comp
L Conn_02x03_Odd_Even J2
U 1 1 5D9C6BBB
P 3000 1750
F 0 "J2" V 3096 1562 50  0000 R CNN
F 1 "Conn_02x03_Odd_Even" H 3450 2100 50  0000 R CNN
F 2 "oobb:Pin_Header_Straight_2x03_Pitch2.54mm" H 3000 1750 50  0001 C CNN
F 3 "~" H 3000 1750 50  0001 C CNN
	1    3000 1750
	0    -1   -1   0   
$EndComp
Text Label 3100 1450 1    60   ~ 0
gpio1
Text Label 3100 1950 3    60   ~ 0
gpio2
$Comp
L GND #PWR05
U 1 1 5D9C6C24
P 3500 1950
F 0 "#PWR05" H 3500 1700 50  0001 C CNN
F 1 "GND" V 3505 1822 50  0000 R CNN
F 2 "" H 3500 1950 50  0001 C CNN
F 3 "" H 3500 1950 50  0001 C CNN
	1    3500 1950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR06
U 1 1 5D9C6C2A
P 3500 1450
F 0 "#PWR06" H 3500 1300 50  0001 C CNN
F 1 "+3.3V" V 3515 1578 50  0000 L CNN
F 2 "" H 3500 1450 50  0001 C CNN
F 3 "" H 3500 1450 50  0001 C CNN
	1    3500 1450
	1    0    0    -1  
$EndComp
Text Label 3600 1450 1    60   ~ 0
sda
Text Label 3600 1950 3    60   ~ 0
scl
$Comp
L Conn_02x03_Odd_Even J3
U 1 1 5D9C6C32
P 3600 1750
F 0 "J3" V 3696 1562 50  0000 R CNN
F 1 "Conn_02x03_Odd_Even" H 4050 2100 50  0000 R CNN
F 2 "oobb:Pin_Header_Straight_2x03_Pitch2.54mm" H 3600 1750 50  0001 C CNN
F 3 "~" H 3600 1750 50  0001 C CNN
	1    3600 1750
	0    -1   -1   0   
$EndComp
Text Label 3700 1450 1    60   ~ 0
gpio1
Text Label 3700 1950 3    60   ~ 0
gpio2
$Comp
L GND #PWR07
U 1 1 5D9C6C3A
P 4250 1950
F 0 "#PWR07" H 4250 1700 50  0001 C CNN
F 1 "GND" V 4255 1822 50  0000 R CNN
F 2 "" H 4250 1950 50  0001 C CNN
F 3 "" H 4250 1950 50  0001 C CNN
	1    4250 1950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR08
U 1 1 5D9C6C40
P 4250 1450
F 0 "#PWR08" H 4250 1300 50  0001 C CNN
F 1 "+3.3V" V 4265 1578 50  0000 L CNN
F 2 "" H 4250 1450 50  0001 C CNN
F 3 "" H 4250 1450 50  0001 C CNN
	1    4250 1450
	1    0    0    -1  
$EndComp
Text Label 4350 1450 1    60   ~ 0
sda
Text Label 4350 1950 3    60   ~ 0
scl
$Comp
L Conn_02x03_Odd_Even J4
U 1 1 5D9C6C48
P 4350 1750
F 0 "J4" V 4446 1562 50  0000 R CNN
F 1 "Conn_02x03_Odd_Even" H 4800 2100 50  0000 R CNN
F 2 "oobb:Pin_Header_Straight_2x03_Pitch2.54mm" H 4350 1750 50  0001 C CNN
F 3 "~" H 4350 1750 50  0001 C CNN
	1    4350 1750
	0    -1   -1   0   
$EndComp
Text Label 4450 1450 1    60   ~ 0
gpio1
Text Label 4450 1950 3    60   ~ 0
gpio2
$Comp
L GND #PWR09
U 1 1 5D9C6C8B
P 4900 1950
F 0 "#PWR09" H 4900 1700 50  0001 C CNN
F 1 "GND" V 4905 1822 50  0000 R CNN
F 2 "" H 4900 1950 50  0001 C CNN
F 3 "" H 4900 1950 50  0001 C CNN
	1    4900 1950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR010
U 1 1 5D9C6C91
P 4900 1450
F 0 "#PWR010" H 4900 1300 50  0001 C CNN
F 1 "+3.3V" V 4915 1578 50  0000 L CNN
F 2 "" H 4900 1450 50  0001 C CNN
F 3 "" H 4900 1450 50  0001 C CNN
	1    4900 1450
	1    0    0    -1  
$EndComp
Text Label 5000 1450 1    60   ~ 0
sda
Text Label 5000 1950 3    60   ~ 0
scl
$Comp
L Conn_02x03_Odd_Even J6
U 1 1 5D9C6C99
P 5000 1750
F 0 "J6" V 5096 1562 50  0000 R CNN
F 1 "Conn_02x03_Odd_Even" H 5450 2100 50  0000 R CNN
F 2 "oobb:Pin_Header_Straight_2x03_Pitch2.54mm" H 5000 1750 50  0001 C CNN
F 3 "~" H 5000 1750 50  0001 C CNN
F 4 "Value" H 5000 1750 60  0001 C CNN "supplier"
F 5 "Value" H 5000 1750 60  0001 C CNN "supplier PN"
F 6 "Value" H 5000 1750 60  0001 C CNN "MOQ"
F 7 "Value" H 5000 1750 60  0001 C CNN "leadtime"
	1    5000 1750
	0    -1   -1   0   
$EndComp
Text Label 5100 1450 1    60   ~ 0
gpio1
Text Label 5100 1950 3    60   ~ 0
gpio2
Text Label 2150 5450 2    60   ~ 0
gpio1
Text Label 2150 5550 2    60   ~ 0
gpio2
Text Label 2150 5750 2    60   ~ 0
boost-out
$Comp
L GND #PWR013
U 1 1 5D9C7066
P 2150 5650
F 0 "#PWR013" H 2150 5400 50  0001 C CNN
F 1 "GND" V 2155 5522 50  0000 R CNN
F 2 "" H 2150 5650 50  0001 C CNN
F 3 "" H 2150 5650 50  0001 C CNN
	1    2150 5650
	0    1    1    0   
$EndComp
$Comp
L Conn_01x06 J5
U 1 1 5D9C72D7
P 2350 5650
F 0 "J5" H 2430 5642 50  0000 L CNN
F 1 "Conn_01x06" H 2430 5551 50  0000 L CNN
F 2 "oobb:icebreaker" H 2350 5650 50  0001 C CNN
F 3 "~" H 2350 5650 50  0001 C CNN
	1    2350 5650
	1    0    0    -1  
$EndComp
NoConn ~ 2150 5850
NoConn ~ 2150 5950
Text Notes 5600 3550 0    60   ~ 0
charger PCB has USB micro socket for charging\nso charge pad is not connected
Text Notes 5600 5200 0    60   ~ 0
\n
Text Notes 2550 5950 0    60   ~ 0
leave 1 pair of icebreaker psu sockets unconnected as interferes with charger pcb
$Comp
L R R1
U 1 1 5D9F3122
P 2100 6900
F 0 "R1" H 2170 6946 50  0000 L CNN
F 1 "10k" H 2170 6855 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2030 6900 50  0001 C CNN
F 3 "" H 2100 6900 50  0001 C CNN
F 4 "Value" H 2100 6900 60  0001 C CNN "supplier"
F 5 "Value" H 2100 6900 60  0001 C CNN "supplier PN"
F 6 "Value" H 2100 6900 60  0001 C CNN "MOQ"
F 7 "Value" H 2100 6900 60  0001 C CNN "leadtime"
	1    2100 6900
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5D9F317E
P 2300 6900
F 0 "R2" H 2370 6946 50  0000 L CNN
F 1 "10k" H 2370 6855 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2230 6900 50  0001 C CNN
F 3 "" H 2300 6900 50  0001 C CNN
F 4 "Value" H 2300 6900 60  0001 C CNN "supplier"
F 5 "Value" H 2300 6900 60  0001 C CNN "supplier PN"
F 6 "Value" H 2300 6900 60  0001 C CNN "MOQ"
F 7 "Value" H 2300 6900 60  0001 C CNN "leadtime"
	1    2300 6900
	1    0    0    -1  
$EndComp
Text Label 2100 6750 1    60   ~ 0
gpio1
Text Label 2300 6750 1    60   ~ 0
gpio2
$Comp
L +3.3V #PWR014
U 1 1 5D9F3332
P 2100 7050
F 0 "#PWR014" H 2100 6900 50  0001 C CNN
F 1 "+3.3V" V 2115 7178 50  0000 L CNN
F 2 "" H 2100 7050 50  0001 C CNN
F 3 "" H 2100 7050 50  0001 C CNN
	1    2100 7050
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR017
U 1 1 5D9F3398
P 2300 7050
F 0 "#PWR017" H 2300 6900 50  0001 C CNN
F 1 "+3.3V" V 2315 7178 50  0000 L CNN
F 2 "" H 2300 7050 50  0001 C CNN
F 3 "" H 2300 7050 50  0001 C CNN
	1    2300 7050
	-1   0    0    1   
$EndComp
Text Notes 1850 6400 0    60   ~ 0
pullups for LED driver output of icebreaker to control GPIOs for SAOs\n
Wire Notes Line
	1450 900  5600 900 
Wire Notes Line
	5600 900  5600 2450
Wire Notes Line
	5600 2450 1450 2450
Wire Notes Line
	1450 2450 1450 900 
Wire Notes Line
	1400 2750 8400 2750
Wire Notes Line
	8400 2750 8400 4900
Wire Notes Line
	8400 4850 1400 4850
Wire Notes Line
	1400 4850 1400 2700
Wire Notes Line
	1400 5150 6500 5150
Wire Notes Line
	6500 5150 6500 7550
Wire Notes Line
	6500 7550 1400 7550
Wire Notes Line
	1400 7550 1400 5150
Text Notes 1500 850  0    118  ~ 0
SAO x 5
Text Notes 1500 2700 0    118  ~ 0
LiPo charger + 3.3v regulator\n
Text Notes 1450 5100 0    118  ~ 0
iCEBreaker GPIO breakouts and pullups
$EndSCHEMATC
