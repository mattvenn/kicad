EESchema Schematic File Version 3
LIBS:icestick
LIBS:4xxx
LIBS:4xxx_IEEE
LIBS:74xGxx
LIBS:74xx
LIBS:74xx_IEEE
LIBS:Amplifier_Audio
LIBS:Amplifier_Buffer
LIBS:Amplifier_Current
LIBS:Amplifier_Difference
LIBS:Amplifier_Instrumentation
LIBS:Amplifier_Operational
LIBS:Amplifier_Video
LIBS:Analog
LIBS:Analog_ADC
LIBS:Analog_DAC
LIBS:Analog_Switch
LIBS:Audio
LIBS:Battery_Management
LIBS:Comparator
LIBS:Connector
LIBS:Connector_Generic
LIBS:Connector_Generic_MountingPin
LIBS:Connector_Generic_Shielded
LIBS:Converter_ACDC
LIBS:Converter_DCDC
LIBS:CPLD_Altera
LIBS:CPLD_Xilinx
LIBS:CPU
LIBS:CPU_NXP_6800
LIBS:CPU_NXP_68000
LIBS:CPU_PowerPC
LIBS:Device
LIBS:Diode
LIBS:Diode_Bridge
LIBS:Diode_Laser
LIBS:Display_Character
LIBS:Display_Graphic
LIBS:Driver_Display
LIBS:Driver_FET
LIBS:Driver_LED
LIBS:Driver_Motor
LIBS:Driver_Relay
LIBS:DSP_Freescale
LIBS:DSP_Microchip_DSPIC33
LIBS:DSP_Motorola
LIBS:DSP_Texas
LIBS:Filter
LIBS:FPGA_Microsemi
LIBS:FPGA_Xilinx
LIBS:FPGA_Xilinx_Artix7
LIBS:FPGA_Xilinx_Kintex7
LIBS:FPGA_Xilinx_Spartan6
LIBS:FPGA_Xilinx_Virtex5
LIBS:FPGA_Xilinx_Virtex6
LIBS:FPGA_Xilinx_Virtex7
LIBS:GPU
LIBS:Graphic
LIBS:Interface
LIBS:Interface_CAN_LIN
LIBS:Interface_CurrentLoop
LIBS:Interface_Ethernet
LIBS:Interface_Expansion
LIBS:Interface_HID
LIBS:Interface_LineDriver
LIBS:Interface_Optical
LIBS:Interface_Telecom
LIBS:Interface_UART
LIBS:Interface_USB
LIBS:Isolator
LIBS:Isolator_Analog
LIBS:Jumper
LIBS:LED
LIBS:Logic_LevelTranslator
LIBS:Logic_Programmable
LIBS:MCU_AnalogDevices
LIBS:MCU_Cypress
LIBS:MCU_Espressif
LIBS:MCU_Intel
LIBS:MCU_Microchip_8051
LIBS:MCU_Microchip_ATmega
LIBS:MCU_Microchip_ATtiny
LIBS:MCU_Microchip_AVR
LIBS:MCU_Microchip_PIC10
LIBS:MCU_Microchip_PIC12
LIBS:MCU_Microchip_PIC16
LIBS:MCU_Microchip_PIC18
LIBS:MCU_Microchip_PIC24
LIBS:MCU_Microchip_PIC32
LIBS:MCU_Microchip_SAME
LIBS:MCU_Microchip_SAML
LIBS:MCU_Module
LIBS:MCU_Nordic
LIBS:MCU_NXP_ColdFire
LIBS:MCU_NXP_HC11
LIBS:MCU_NXP_HC12
LIBS:MCU_NXP_HCS12
LIBS:MCU_NXP_Kinetis
LIBS:MCU_NXP_LPC
LIBS:MCU_NXP_MAC7100
LIBS:MCU_NXP_MCore
LIBS:MCU_NXP_S08
LIBS:MCU_Parallax
LIBS:MCU_SiFive
LIBS:MCU_SiliconLabs
LIBS:MCU_ST_STM8
LIBS:MCU_ST_STM32F0
LIBS:MCU_ST_STM32F1
LIBS:MCU_ST_STM32F2
LIBS:MCU_ST_STM32F3
LIBS:MCU_ST_STM32F4
LIBS:MCU_ST_STM32F7
LIBS:MCU_ST_STM32H7
LIBS:MCU_ST_STM32L0
LIBS:MCU_ST_STM32L1
LIBS:MCU_ST_STM32L4
LIBS:MCU_ST_STM32L4+
LIBS:MCU_Texas
LIBS:MCU_Texas_MSP430
LIBS:Mechanical
LIBS:Memory_Controller
LIBS:Memory_EEPROM
LIBS:Memory_EPROM
LIBS:Memory_Flash
LIBS:Memory_NVRAM
LIBS:Memory_RAM
LIBS:Memory_ROM
LIBS:Memory_UniqueID
LIBS:Motor
LIBS:Oscillator
LIBS:Potentiometer_Digital
LIBS:power
LIBS:Power_Management
LIBS:Power_Protection
LIBS:Power_Supervisor
LIBS:pspice
LIBS:Reference_Current
LIBS:Reference_Voltage
LIBS:Regulator_Controller
LIBS:Regulator_Current
LIBS:Regulator_Linear
LIBS:Regulator_SwitchedCapacitor
LIBS:Regulator_Switching
LIBS:Relay
LIBS:Relay_SolidState
LIBS:RF
LIBS:RF_AM_FM
LIBS:RF_Amplifier
LIBS:RF_Bluetooth
LIBS:RF_GPS
LIBS:RF_Mixer
LIBS:RF_Module
LIBS:RF_RFID
LIBS:RF_Switch
LIBS:RF_WiFi
LIBS:RF_ZigBee
LIBS:Sensor
LIBS:Sensor_Audio
LIBS:Sensor_Current
LIBS:Sensor_Gas
LIBS:Sensor_Humidity
LIBS:Sensor_Magnetic
LIBS:Sensor_Motion
LIBS:Sensor_Optical
LIBS:Sensor_Pressure
LIBS:Sensor_Proximity
LIBS:Sensor_Temperature
LIBS:Sensor_Touch
LIBS:Sensor_Voltage
LIBS:Switch
LIBS:Timer
LIBS:Timer_PLL
LIBS:Timer_RTC
LIBS:Transformer
LIBS:Transistor_Array
LIBS:Transistor_BJT
LIBS:Transistor_FET
LIBS:Transistor_IGBT
LIBS:Triac_Thyristor
LIBS:Valve
LIBS:Video
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "icestick pmod adapter"
Date "2018-07-31"
Rev "1"
Comp "Matt Venn Engineering"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L icestick U1
U 1 1 5B607C2F
P 5300 3200
F 0 "U1" H 5550 3887 60  0000 C CNN
F 1 "icestick" H 5550 3781 60  0000 C CNN
F 2 "fp:icestick" H 5300 3200 60  0001 C CNN
F 3 "" H 5300 3200 60  0001 C CNN
	1    5300 3200
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x06_Odd_Even J2
U 1 1 5B607DCD
P 3300 3850
F 0 "J2" H 3350 4267 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 3350 4176 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x06_P2.54mm_Vertical" H 3300 3850 50  0001 C CNN
F 3 "~" H 3300 3850 50  0001 C CNN
	1    3300 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5B607EFA
P 4750 3750
F 0 "#PWR01" H 4750 3500 50  0001 C CNN
F 1 "GND" H 4755 3577 50  0000 C CNN
F 2 "" H 4750 3750 50  0001 C CNN
F 3 "" H 4750 3750 50  0001 C CNN
	1    4750 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5B607F12
P 3800 4050
F 0 "#PWR02" H 3800 3800 50  0001 C CNN
F 1 "GND" H 3805 3877 50  0000 C CNN
F 2 "" H 3800 4050 50  0001 C CNN
F 3 "" H 3800 4050 50  0001 C CNN
	1    3800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4050 3800 4050
Wire Wire Line
	4750 3750 5050 3750
$Comp
L GND #PWR03
U 1 1 5B607F2E
P 6350 3750
F 0 "#PWR03" H 6350 3500 50  0001 C CNN
F 1 "GND" H 6355 3577 50  0000 C CNN
F 2 "" H 6350 3750 50  0001 C CNN
F 3 "" H 6350 3750 50  0001 C CNN
	1    6350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3750 6350 3750
$Comp
L +3.3V #PWR04
U 1 1 5B607FA3
P 4950 3850
F 0 "#PWR04" H 4950 3700 50  0001 C CNN
F 1 "+3.3V" H 4965 4023 50  0000 C CNN
F 2 "" H 4950 3850 50  0001 C CNN
F 3 "" H 4950 3850 50  0001 C CNN
	1    4950 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 3850 5050 3850
$Comp
L +3.3V #PWR05
U 1 1 5B607FDB
P 6200 3850
F 0 "#PWR05" H 6200 3700 50  0001 C CNN
F 1 "+3.3V" H 6215 4023 50  0000 C CNN
F 2 "" H 6200 3850 50  0001 C CNN
F 3 "" H 6200 3850 50  0001 C CNN
	1    6200 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 3850 6200 3850
$Comp
L +3.3V #PWR06
U 1 1 5B607FF5
P 3600 4150
F 0 "#PWR06" H 3600 4000 50  0001 C CNN
F 1 "+3.3V" H 3615 4323 50  0000 C CNN
F 2 "" H 3600 4150 50  0001 C CNN
F 3 "" H 3600 4150 50  0001 C CNN
	1    3600 4150
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR07
U 1 1 5B60800C
P 3100 4150
F 0 "#PWR07" H 3100 4000 50  0001 C CNN
F 1 "+3.3V" H 3115 4323 50  0000 C CNN
F 2 "" H 3100 4150 50  0001 C CNN
F 3 "" H 3100 4150 50  0001 C CNN
	1    3100 4150
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR08
U 1 1 5B608020
P 2850 4050
F 0 "#PWR08" H 2850 3800 50  0001 C CNN
F 1 "GND" H 2855 3877 50  0000 C CNN
F 2 "" H 2850 4050 50  0001 C CNN
F 3 "" H 2850 4050 50  0001 C CNN
	1    2850 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4050 2850 4050
$Comp
L Conn_02x06_Odd_Even J1
U 1 1 5B608087
P 3300 2750
F 0 "J1" H 3350 3167 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 3350 3076 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x06_P2.54mm_Vertical" H 3300 2750 50  0001 C CNN
F 3 "~" H 3300 2750 50  0001 C CNN
	1    3300 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5B60808D
P 3800 2950
F 0 "#PWR09" H 3800 2700 50  0001 C CNN
F 1 "GND" H 3805 2777 50  0000 C CNN
F 2 "" H 3800 2950 50  0001 C CNN
F 3 "" H 3800 2950 50  0001 C CNN
	1    3800 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2950 3800 2950
$Comp
L +3.3V #PWR010
U 1 1 5B608094
P 3600 3050
F 0 "#PWR010" H 3600 2900 50  0001 C CNN
F 1 "+3.3V" H 3615 3223 50  0000 C CNN
F 2 "" H 3600 3050 50  0001 C CNN
F 3 "" H 3600 3050 50  0001 C CNN
	1    3600 3050
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR011
U 1 1 5B60809A
P 3100 3050
F 0 "#PWR011" H 3100 2900 50  0001 C CNN
F 1 "+3.3V" H 3115 3223 50  0000 C CNN
F 2 "" H 3100 3050 50  0001 C CNN
F 3 "" H 3100 3050 50  0001 C CNN
	1    3100 3050
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR012
U 1 1 5B6080A0
P 2850 2950
F 0 "#PWR012" H 2850 2700 50  0001 C CNN
F 1 "GND" H 2855 2777 50  0000 C CNN
F 2 "" H 2850 2950 50  0001 C CNN
F 3 "" H 2850 2950 50  0001 C CNN
	1    2850 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2950 2850 2950
Text Label 5050 2950 2    60   ~ 0
pmod44
Text Label 5050 3050 2    60   ~ 0
pmod45
Text Label 5050 3150 2    60   ~ 0
pmod47
Text Label 5050 3250 2    60   ~ 0
pmod48
Text Label 5050 3350 2    60   ~ 0
pmod56
Text Label 5050 3450 2    60   ~ 0
pmod60
Text Label 5050 3550 2    60   ~ 0
pmod61
Text Label 5050 3650 2    60   ~ 0
pmod62
Text Label 6050 2950 0    60   ~ 0
pmod119
Text Label 6050 3050 0    60   ~ 0
pmod118
Text Label 6050 3150 0    60   ~ 0
pmod117
Text Label 6050 3250 0    60   ~ 0
pmod116
Text Label 6050 3350 0    60   ~ 0
pmod115
Text Label 6050 3450 0    60   ~ 0
pmod114
Text Label 6050 3550 0    60   ~ 0
pmod113
Text Label 6050 3650 0    60   ~ 0
pmod112
Text Label 3100 2550 2    60   ~ 0
pmod44
Text Label 3100 2650 2    60   ~ 0
pmod45
Text Label 3100 2750 2    60   ~ 0
pmod47
Text Label 3100 2850 2    60   ~ 0
pmod48
Text Label 3600 2550 0    60   ~ 0
pmod56
Text Label 3600 2650 0    60   ~ 0
pmod60
Text Label 3600 2750 0    60   ~ 0
pmod61
Text Label 3600 2850 0    60   ~ 0
pmod62
Text Label 3100 3650 2    60   ~ 0
pmod119
Text Label 3100 3750 2    60   ~ 0
pmod118
Text Label 3100 3850 2    60   ~ 0
pmod117
Text Label 3100 3950 2    60   ~ 0
pmod116
Text Label 3600 3650 0    60   ~ 0
pmod115
Text Label 3600 3750 0    60   ~ 0
pmod114
Text Label 3600 3850 0    60   ~ 0
pmod113
Text Label 3600 3950 0    60   ~ 0
pmod112
$EndSCHEMATC
