EESchema Schematic File Version 2
LIBS:bus_shield
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
LIBS:special
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
LIBS:bus_shield-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Bus Shield"
Date "Mon 09 Feb 2015"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 3MM_HOLE H1
U 1 1 53AA33AA
P 3800 800
F 0 "H1" H 3750 950 50  0000 C CNN
F 1 "3MM_HOLE" H 3800 650 50  0000 C CNN
F 2 "bus_shield:MountingHole_3mm" H 3800 800 60  0001 C CNN
F 3 "" H 3800 800 60  0000 C CNN
	1    3800 800 
	1    0    0    -1  
$EndComp
$Comp
L OSHW_LOGO G1
U 1 1 53AA4798
P 2650 1750
F 0 "G1" H 2650 1950 60  0000 C CNN
F 1 "OSHW_LOGO" H 2650 1575 60  0000 C CNN
F 2 "bus_shield:OSHW_LOGO_400mil" H 2650 1750 60  0001 C CNN
F 3 "" H 2650 1750 60  0000 C CNN
	1    2650 1750
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328_DIP28 U5
U 1 1 53E952D0
P 7200 1550
F 0 "U5" H 7175 2350 50  0000 C CNN
F 1 "ATMEGA328_DIP28" H 7200 725 50  0000 C CNN
F 2 "bus_shield:DIP-28__300" H 7200 1550 60  0000 C CNN
F 3 "" H 7200 1550 60  0000 C CNN
	1    7200 1550
	1    0    0    -1  
$EndComp
$Comp
L BUS_SLAVE_HEADER N1
U 1 1 53E9683A
P 800 6250
F 0 "N1" H 625 5700 50  0000 C CNN
F 1 "BUS_SLAVE_HEADER" H 900 6800 50  0000 C CNN
F 2 "bus_shield:Pin_Header_Straight_2x05_Shrouded" H 800 6250 60  0001 C CNN
F 3 "" H 800 6250 60  0000 C CNN
	1    800  6250
	1    0    0    1   
$EndComp
$Comp
L MCP2562 U3
U 1 1 53E968BB
P 2400 6200
F 0 "U3" H 2150 6500 50  0000 C CNN
F 1 "MCP2562" H 2375 6000 50  0000 C CNN
F 2 "bus_shield:DIP-8__300" H 2450 6200 60  0001 C CNN
F 3 "" H 2450 6200 60  0000 C CNN
	1    2400 6200
	1    0    0    1   
$EndComp
$Comp
L SCHOTTKY_DIODE_VERT D1
U 1 1 53E96A4D
P 4200 3850
F 0 "D1" H 4300 3700 50  0000 C CNN
F 1 "SD101C-TR" H 4475 3975 50  0000 C CNN
F 2 "bus_shield:Diode_DO-41_SOD81_Horizontal_RM10" H 4200 3850 60  0001 C CNN
F 3 "" H 4200 3850 60  0000 C CNN
	1    4200 3850
	-1   0    0    1   
$EndComp
$Comp
L TERMINATE_JUMPER J1
U 1 1 53E96A70
P 900 5400
F 0 "J1" H 950 5600 50  0000 C CNN
F 1 "TERMINATE_JUMPER" H 900 5200 50  0000 C CNN
F 2 "bus_shield:Pin_Header_Straight_1x03" H 900 5400 60  0001 C CNN
F 3 "" H 900 5400 60  0000 C CNN
	1    900  5400
	1    0    0    -1  
$EndComp
$Comp
L FTDI_HEADER N2
U 1 1 53E96ADF
P 850 4750
F 0 "N2" H 750 5350 50  0000 C CNN
F 1 "FTDI_HEADER" H 850 4525 50  0000 C CNN
F 2 "bus_shield:Pin_Header_Straight_1x06" H 850 4750 60  0001 C CNN
F 3 "" H 850 4750 60  0000 C CNN
	1    850  4750
	1    0    0    -1  
$EndComp
$Comp
L 74X08 U1
U 4 2 53EA309B
P 4400 5600
F 0 "U1" H 4400 5850 50  0000 C CNN
F 1 "74HCT08" H 4275 5350 50  0000 C CNN
F 2 "bus_shield:DIP-14__300" H 4400 5600 60  0001 C CNN
F 3 "" H 4400 5600 60  0000 C CNN
	4    4400 5600
	1    0    0    -1  
$EndComp
$Comp
L VOLTAGE_REGULATOR U2
U 1 1 53EA3E06
P 2200 6950
F 0 "U2" H 2000 7100 50  0000 C CNN
F 1 "LM2940" H 2250 6750 50  0000 L CNN
F 2 "bus_shield:TO-220_Neutral123_Horizontal_LargePads" H 2200 7000 60  0001 C CNN
F 3 "" H 2200 7000 60  0000 C CNN
	1    2200 6950
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C5
U 1 1 53EA3E9D
P 1500 7200
F 0 "C5" H 1520 7290 50  0000 L CNN
F 1 "22uF_35V_ALUM" H 1520 7110 50  0000 L CNN
F 2 "bus_shield:Capacitor3MMDiscRM2.5" H 1538 7050 30  0001 C CNN
F 3 "" H 1500 7200 60  0000 C CNN
	1    1500 7200
	1    0    0    -1  
$EndComp
$Comp
L R_HORIZ R5
U 1 1 53EA42CF
P 2700 7500
F 0 "R5" H 2700 7600 50  0000 C CNN
F 1 ".47" H 2700 7400 50  0000 C CNN
F 2 "bus_shield:Resistor_Horizontal_400" H 2725 7500 60  0001 C CNN
F 3 "" H 2725 7500 60  0000 C CNN
	1    2700 7500
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C6
U 1 1 53EA479D
P 3000 7200
F 0 "C6" H 3020 7290 50  0000 L CNN
F 1 ".1uF" H 3020 7110 50  0000 L CNN
F 2 "bus_shield:Capacitor3MMDiscRM2.5" H 3038 7050 30  0001 C CNN
F 3 "" H 3000 7200 60  0000 C CNN
	1    3000 7200
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C7
U 1 1 53EA4CB4
P 3300 7200
F 0 "C7" H 3320 7290 50  0000 L CNN
F 1 "22uF_6.3V_TANT" H 3320 7110 50  0000 L CNN
F 2 "bus_shield:Capacitor3MMDiscRM2.5" H 3338 7050 30  0001 C CNN
F 3 "" H 3300 7200 60  0000 C CNN
	1    3300 7200
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 53EA6D8D
P 6400 2650
F 0 "X1" H 6400 2800 50  0000 C CNN
F 1 "16MHz" H 6400 2500 50  0000 C CNN
F 2 "bus_shield:Crystal_HC49-U_Vertical" H 6400 2650 60  0001 C CNN
F 3 "" H 6400 2650 60  0000 C CNN
	1    6400 2650
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C10
U 1 1 53EA7619
P 6000 2950
F 0 "C10" H 6020 3040 50  0000 L CNN
F 1 "18pF" H 6020 2860 50  0000 L CNN
F 2 "bus_shield:Capacitor3MMDiscRM2.5" H 6038 2800 30  0001 C CNN
F 3 "" H 6000 2950 60  0000 C CNN
	1    6000 2950
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C11
U 1 1 53EA7713
P 6800 2950
F 0 "C11" H 6820 3040 50  0000 L CNN
F 1 "18pF" H 6820 2860 50  0000 L CNN
F 2 "bus_shield:Capacitor3MMDiscRM2.5" H 6838 2800 30  0001 C CNN
F 3 "" H 6800 2950 60  0000 C CNN
	1    6800 2950
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R1
U 1 1 53EAC63C
P 1500 4000
F 0 "R1" H 1570 4050 50  0000 L CNN
F 1 "22K" H 1570 3950 50  0000 L CNN
F 2 "bus_shield:Resistor_Horizontal_400" H 1500 4050 60  0001 C CNN
F 3 "" H 1500 4050 60  0000 C CNN
	1    1500 4000
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R4
U 1 1 53EACAD9
P 2100 4000
F 0 "R4" H 2170 4050 50  0000 L CNN
F 1 "100K" H 2170 3950 50  0000 L CNN
F 2 "bus_shield:Resistor_Horizontal_400" H 2100 4050 60  0001 C CNN
F 3 "" H 2100 4050 60  0000 C CNN
	1    2100 4000
	1    0    0    -1  
$EndComp
NoConn ~ 1200 4600
NoConn ~ 1200 4700
$Comp
L 74X08 U1
U 3 1 53EAE540
P 3100 4200
F 0 "U1" H 3100 4450 50  0000 C CNN
F 1 "74HCT08" H 2975 3950 50  0000 C CNN
F 2 "bus_shield:DIP-14__300" H 3100 4200 60  0001 C CNN
F 3 "" H 3100 4200 60  0000 C CNN
	3    3100 4200
	1    0    0    -1  
$EndComp
$Comp
L C_HORIZ C8
U 1 1 53E996AB
P 3900 4200
F 0 "C8" H 3960 4260 50  0000 L CNN
F 1 ".1uF" H 3960 4130 50  0000 L CNN
F 2 "bus_shield:Capacitor3MMDiscRM2.5" H 3938 4050 30  0001 C CNN
F 3 "" H 3900 4200 60  0000 C CNN
	1    3900 4200
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R8
U 1 1 53E99988
P 4500 3900
F 0 "R8" H 4570 3950 50  0000 L CNN
F 1 "10K" H 4570 3850 50  0000 L CNN
F 2 "bus_shield:Resistor_Horizontal_400" H 4500 3950 60  0001 C CNN
F 3 "" H 4500 3950 60  0000 C CNN
	1    4500 3900
	1    0    0    -1  
$EndComp
$Comp
L 2_LEAD_PUSH_BUTTON SW1
U 1 1 53E9A9CA
P 4400 4600
F 0 "SW1" H 4400 4850 50  0000 C CNN
F 1 "MJTP1243" H 4400 4550 50  0000 C CNN
F 2 "bus_shield:Button_6.5MM" H 4400 4600 60  0001 C CNN
F 3 "" H 4400 4600 60  0000 C CNN
	1    4400 4600
	1    0    0    -1  
$EndComp
$Comp
L 3MM_HOLE H2
U 1 1 53E9AFD9
P 3800 1200
F 0 "H2" H 3750 1350 50  0000 C CNN
F 1 "3MM_HOLE" H 3800 1050 50  0000 C CNN
F 2 "bus_shield:MountingHole_3mm" H 3800 1200 60  0001 C CNN
F 3 "" H 3800 1200 60  0000 C CNN
	1    3800 1200
	1    0    0    -1  
$EndComp
$Comp
L 3MM_HOLE H3
U 1 1 53E9B07B
P 3800 1600
F 0 "H3" H 3750 1750 50  0000 C CNN
F 1 "3MM_HOLE" H 3800 1450 50  0000 C CNN
F 2 "bus_shield:MountingHole_3mm" H 3800 1600 60  0001 C CNN
F 3 "" H 3800 1600 60  0000 C CNN
	1    3800 1600
	1    0    0    -1  
$EndComp
$Comp
L 3MM_HOLE H4
U 1 1 53E9B0DD
P 3800 2000
F 0 "H4" H 3750 2150 50  0000 C CNN
F 1 "3MM_HOLE" H 3800 1850 50  0000 C CNN
F 2 "bus_shield:MountingHole_3mm" H 3800 2000 60  0001 C CNN
F 3 "" H 3800 2000 60  0000 C CNN
	1    3800 2000
	1    0    0    -1  
$EndComp
Text Label 3050 6900 0    50   ~ 0
VCC
$Comp
L +5V #PWR01
U 1 1 53EA1139
P 3000 6800
F 0 "#PWR01" H 3000 6890 20  0001 C CNN
F 1 "+5V" H 3000 6905 50  0000 C CNN
F 2 "" H 3000 6800 60  0000 C CNN
F 3 "" H 3000 6800 60  0000 C CNN
	1    3000 6800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 53EA1339
P 3300 7800
F 0 "#PWR02" H 3300 7800 30  0001 C CNN
F 1 "GND" H 3300 7730 30  0001 C CNN
F 2 "" H 3300 7800 60  0000 C CNN
F 3 "" H 3300 7800 60  0000 C CNN
	1    3300 7800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 53EA1FD3
P 1400 6600
F 0 "#PWR03" H 1400 6600 30  0001 C CNN
F 1 "GND" H 1400 6530 30  0001 C CNN
F 2 "" H 1400 6600 60  0000 C CNN
F 3 "" H 1400 6600 60  0000 C CNN
	1    1400 6600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 53EA3202
P 4200 3400
F 0 "#PWR04" H 4200 3490 20  0001 C CNN
F 1 "+5V" H 4200 3505 50  0000 C CNN
F 2 "" H 4200 3400 60  0000 C CNN
F 3 "" H 4200 3400 60  0000 C CNN
	1    4200 3400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 53EA3587
P 2500 3600
F 0 "#PWR05" H 2500 3690 20  0001 C CNN
F 1 "+5V" H 2500 3705 50  0000 C CNN
F 2 "" H 2500 3600 60  0000 C CNN
F 3 "" H 2500 3600 60  0000 C CNN
	1    2500 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 53EA46AE
P 3700 4700
F 0 "#PWR06" H 3700 4700 30  0001 C CNN
F 1 "GND" H 3700 4630 30  0001 C CNN
F 2 "" H 3700 4700 60  0000 C CNN
F 3 "" H 3700 4700 60  0000 C CNN
	1    3700 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 53EA4CCF
P 6800 3250
F 0 "#PWR07" H 6800 3250 30  0001 C CNN
F 1 "GND" H 6800 3180 30  0001 C CNN
F 2 "" H 6800 3250 60  0000 C CNN
F 3 "" H 6800 3250 60  0000 C CNN
	1    6800 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 53EA6BB5
P 6000 3250
F 0 "#PWR08" H 6000 3250 30  0001 C CNN
F 1 "GND" H 6000 3180 30  0001 C CNN
F 2 "" H 6000 3250 60  0000 C CNN
F 3 "" H 6000 3250 60  0000 C CNN
	1    6000 3250
	1    0    0    -1  
$EndComp
Text Label 4600 4200 0    50   ~ 0
~RESET
$Comp
L C_VERT C1
U 1 1 53EA3930
P 700 1750
F 0 "C1" H 720 1840 50  0000 L CNN
F 1 ".1uF" H 720 1660 50  0000 L CNN
F 2 "bus_shield:Capacitor3MMDiscRM2.5" H 738 1600 30  0001 C CNN
F 3 "" H 700 1750 60  0000 C CNN
	1    700  1750
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C2
U 1 1 53EA3BB3
P 1000 1750
F 0 "C2" H 1020 1840 50  0000 L CNN
F 1 ".1uF" H 1020 1660 50  0000 L CNN
F 2 "bus_shield:Capacitor3MMDiscRM2.5" H 1038 1600 30  0001 C CNN
F 3 "" H 1000 1750 60  0000 C CNN
	1    1000 1750
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C3
U 1 1 53EA3C1E
P 1300 1750
F 0 "C3" H 1320 1840 50  0000 L CNN
F 1 ".1uF" H 1320 1660 50  0000 L CNN
F 2 "bus_shield:Capacitor3MMDiscRM2.5" H 1338 1600 30  0001 C CNN
F 3 "" H 1300 1750 60  0000 C CNN
	1    1300 1750
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C4
U 1 1 53EA3C8A
P 1600 1750
F 0 "C4" H 1620 1840 50  0000 L CNN
F 1 ".1uF" H 1620 1660 50  0000 L CNN
F 2 "bus_shield:Capacitor3MMDiscRM2.5" H 1638 1600 30  0001 C CNN
F 3 "" H 1600 1750 60  0000 C CNN
	1    1600 1750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 53EA3CF1
P 700 1350
F 0 "#PWR09" H 700 1440 20  0001 C CNN
F 1 "+5V" H 700 1455 50  0000 C CNN
F 2 "" H 700 1350 60  0000 C CNN
F 3 "" H 700 1350 60  0000 C CNN
	1    700  1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 53EA3DE7
P 700 2150
F 0 "#PWR010" H 700 2150 30  0001 C CNN
F 1 "GND" H 700 2080 30  0001 C CNN
F 2 "" H 700 2150 60  0000 C CNN
F 3 "" H 700 2150 60  0000 C CNN
	1    700  2150
	1    0    0    -1  
$EndComp
Text Notes 825  2150 0    50   ~ 0
Filter Capacitors
Text Notes 3350 3900 0    50   ~ 0
Reset Circuitry
Text Notes 625  5100 0    50   ~ 0
Programmer
Text Label 1350 6900 0    50   ~ 0
VIN
$Comp
L R_VERT R2
U 1 1 53EAC7FD
P 1500 4800
F 0 "R2" H 1570 4850 50  0000 L CNN
F 1 "33K" H 1570 4750 50  0000 L CNN
F 2 "bus_shield:Resistor_Horizontal_400" H 1500 4850 60  0001 C CNN
F 3 "" H 1500 4850 60  0000 C CNN
	1    1500 4800
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R7
U 1 1 542FA869
P 3800 5150
F 0 "R7" H 3870 5200 50  0000 L CNN
F 1 "100K" H 3870 5100 50  0000 L CNN
F 2 "bus_shield:Resistor_Horizontal_400" H 3800 5200 60  0001 C CNN
F 3 "" H 3800 5200 60  0000 C CNN
	1    3800 5150
	1    0    0    -1  
$EndComp
$Comp
L 74X08 U1
U 1 1 542FBC41
P 1300 1000
F 0 "U1" H 1300 1250 50  0000 C CNN
F 1 "74HCT08" H 1175 750 50  0000 C CNN
F 2 "bus_shield:DIP-14__300" H 1300 1000 60  0001 C CNN
F 3 "" H 1300 1000 60  0000 C CNN
	1    1300 1000
	1    0    0    -1  
$EndComp
$Comp
L 74X08 U1
U 2 1 542FBD07
P 2600 1000
F 0 "U1" H 2600 1250 50  0000 C CNN
F 1 "74HCT08" H 2475 750 50  0000 C CNN
F 2 "bus_shield:DIP-14__300" H 2600 1000 60  0001 C CNN
F 3 "" H 2600 1000 60  0000 C CNN
	2    2600 1000
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 542FE734
P 5300 3450
F 0 "D2" H 5370 3610 50  0000 C CNN
F 1 "LED" H 5410 3325 50  0000 C CNN
F 2 "bus_shield:T1_LED" H 5300 3450 60  0001 C CNN
F 3 "" H 5300 3450 60  0000 C CNN
	1    5300 3450
	1    0    0    -1  
$EndComp
$Comp
L ISP_CONN N7
U 1 1 54CDC8ED
P 10000 4750
F 0 "N7" H 10000 5100 50  0000 C CNN
F 1 "ISP_CONN" H 10000 4400 50  0000 C CNN
F 2 "bus_shield:Pin_Header_Straight_2x03" H 10000 4750 60  0001 C CNN
F 3 "" H 10000 4750 60  0000 C CNN
	1    10000 4750
	1    0    0    -1  
$EndComp
NoConn ~ 3600 800 
NoConn ~ 3600 1200
NoConn ~ 3600 1600
NoConn ~ 3600 2000
$Comp
L GND #PWR011
U 1 1 54CDF2B3
P 5300 3800
F 0 "#PWR011" H 5300 3800 30  0001 C CNN
F 1 "GND" H 5300 3730 30  0001 C CNN
F 2 "" H 5300 3800 60  0000 C CNN
F 3 "" H 5300 3800 60  0000 C CNN
	1    5300 3800
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R9
U 1 1 54CDFB7B
P 5300 2900
F 0 "R9" H 5370 2950 50  0000 L CNN
F 1 "470" H 5370 2850 50  0000 L CNN
F 2 "bus_shield:Resistor_Horizontal_400" H 5300 2950 60  0001 C CNN
F 3 "" H 5300 2950 60  0000 C CNN
	1    5300 2900
	1    0    0    -1  
$EndComp
$Comp
L ARD_D9_13_CONN N3
U 1 1 54CE2958
P 10000 1250
F 0 "N3" H 10000 1700 50  0000 C CNN
F 1 "ARD_D9_13_CONN" H 10000 800 50  0000 C CNN
F 2 "bus_shield:Pin_Header_Straight_1x08" H 10000 1250 60  0001 C CNN
F 3 "" H 10000 1250 60  0000 C CNN
	1    10000 1250
	1    0    0    -1  
$EndComp
$Comp
L ARD_DO_D7 N4
U 1 1 54CE298F
P 10000 2250
F 0 "N4" H 10000 2700 50  0000 C CNN
F 1 "ARD_DO_D7" H 10000 1800 50  0000 C CNN
F 2 "bus_shield:Pin_Header_Straight_1x08" H 10000 2250 60  0001 C CNN
F 3 "" H 10000 2250 60  0000 C CNN
	1    10000 2250
	1    0    0    -1  
$EndComp
$Comp
L ARD_A0_A5 N5
U 1 1 54CE2D08
P 10000 3150
F 0 "N5" H 10000 3500 50  0000 C CNN
F 1 "ARD_A0_A5" H 10000 2800 50  0000 C CNN
F 2 "bus_shield:Pin_Header_Straight_1x06" H 10000 3150 60  0000 C CNN
F 3 "" H 10000 3150 60  0000 C CNN
	1    10000 3150
	1    0    0    -1  
$EndComp
$Comp
L ARD_PWR N6
U 1 1 54CE2D2F
P 10000 3950
F 0 "N6" H 10000 4300 50  0000 C CNN
F 1 "ARD_PWR" H 10000 3600 50  0000 C CNN
F 2 "bus_shield:Pin_Header_Straight_1x06" H 10000 3950 60  0001 C CNN
F 3 "" H 10000 3950 60  0000 C CNN
	1    10000 3950
	1    0    0    -1  
$EndComp
Text Label 9450 2400 2    50   ~ 0
D2
Text Label 9450 2300 2    50   ~ 0
D3
Text Label 9450 2200 2    50   ~ 0
D4
Text Label 9450 2100 2    50   ~ 0
D5
Text Label 9450 2000 2    50   ~ 0
D6
Text Label 9450 1900 2    50   ~ 0
D7
Text Label 9450 1600 2    50   ~ 0
D8
Text Label 9450 1500 2    50   ~ 0
D9
Text Label 9450 1400 2    50   ~ 0
D10
Text Label 9450 1300 2    50   ~ 0
D11
Text Label 9450 1200 2    50   ~ 0
D12
Text Label 9450 1100 2    50   ~ 0
D13
Text Label 9450 1000 2    50   ~ 0
GND
Text Label 9450 900  2    50   ~ 0
AREF
Text Label 9450 2900 2    50   ~ 0
A0
Text Label 9450 3000 2    50   ~ 0
A1
Text Label 9450 3100 2    50   ~ 0
A2
Text Label 9450 3200 2    50   ~ 0
A3
Text Label 9450 3300 2    50   ~ 0
A4
Text Label 9450 3400 2    50   ~ 0
A5
Text Label 9450 3700 2    50   ~ 0
~RESET
Text Label 9450 3800 2    50   ~ 0
3V3
Text Label 9450 3900 2    50   ~ 0
5V
Text Label 9450 4000 2    50   ~ 0
GND
Text Label 9450 4100 2    50   ~ 0
GND
Text Label 9450 4200 2    50   ~ 0
VIN
Entry Wire Line
	9000 800  9100 900 
Entry Wire Line
	9000 900  9100 1000
Entry Wire Line
	9000 1000 9100 1100
Entry Wire Line
	9000 1100 9100 1200
Entry Wire Line
	9000 1200 9100 1300
Entry Wire Line
	9000 1300 9100 1400
Entry Wire Line
	9000 1400 9100 1500
Entry Wire Line
	9000 1500 9100 1600
Entry Wire Line
	9000 1800 9100 1900
Entry Wire Line
	9000 1900 9100 2000
Entry Wire Line
	9000 2000 9100 2100
Entry Wire Line
	9000 2100 9100 2200
Entry Wire Line
	9000 2200 9100 2300
Entry Wire Line
	9000 2300 9100 2400
Entry Wire Line
	9000 2800 9100 2900
Entry Wire Line
	9000 2900 9100 3000
Entry Wire Line
	9000 3000 9100 3100
Entry Wire Line
	9000 3100 9100 3200
Entry Wire Line
	9000 3200 9100 3300
Entry Wire Line
	9000 3300 9100 3400
Entry Wire Line
	9000 3600 9100 3700
Entry Wire Line
	9000 3700 9100 3800
Entry Wire Line
	9000 3800 9100 3900
Entry Wire Line
	9000 3900 9100 4000
Entry Wire Line
	9000 4000 9100 4100
Entry Wire Line
	9000 4100 9100 4200
Text Label 9450 4500 2    50   ~ 0
D12
Text Label 9450 4600 2    50   ~ 0
5V
Text Label 9450 4700 2    50   ~ 0
D13
Text Label 9450 4800 2    50   ~ 0
D11
Text Label 9450 4900 2    50   ~ 0
~RESET
Text Label 9450 5000 2    50   ~ 0
GND
Entry Wire Line
	9000 4400 9100 4500
Entry Wire Line
	9000 4500 9100 4600
Entry Wire Line
	9000 4600 9100 4700
Entry Wire Line
	9000 4700 9100 4800
Entry Wire Line
	9000 4800 9100 4900
Entry Wire Line
	9000 4900 9100 5000
Text Label 6250 1600 2    50   ~ 0
GND
Text Label 6250 1500 2    50   ~ 0
5V
Text Label 6250 1400 2    50   ~ 0
D4
Text Label 6250 1300 2    50   ~ 0
D3
Text Label 6250 1200 2    50   ~ 0
D2
Text Label 6250 1100 2    50   ~ 0
TXD
Text Label 6250 1000 2    50   ~ 0
RXD
Text Label 6250 900  2    50   ~ 0
~RESET
Entry Wire Line
	5800 800  5900 900 
Entry Wire Line
	5800 900  5900 1000
Entry Wire Line
	5800 1000 5900 1100
Entry Wire Line
	5800 1100 5900 1200
Entry Wire Line
	5800 1200 5900 1300
Entry Wire Line
	5800 1300 5900 1400
Entry Wire Line
	5800 1400 5900 1500
Entry Wire Line
	5800 1500 5900 1600
Text Label 6250 1900 2    50   ~ 0
D5
Text Label 6250 2000 2    50   ~ 0
D6
Text Label 6250 2100 2    50   ~ 0
D7
Text Label 6250 2200 2    50   ~ 0
D8
Entry Wire Line
	5800 1800 5900 1900
Entry Wire Line
	5800 1900 5900 2000
Entry Wire Line
	5800 2000 5900 2100
Entry Wire Line
	5800 2100 5900 2200
Text Label 8150 900  0    50   ~ 0
A5
Entry Wire Line
	8500 900  8600 800 
Text Label 8150 1000 0    50   ~ 0
A4
Entry Wire Line
	8500 1000 8600 900 
Text Label 8150 1100 0    50   ~ 0
A3
Entry Wire Line
	8500 1100 8600 1000
Text Label 8150 1200 0    50   ~ 0
A2
Entry Wire Line
	8500 1200 8600 1100
Text Label 8150 1300 0    50   ~ 0
A1
Entry Wire Line
	8500 1300 8600 1200
Text Label 8150 1400 0    50   ~ 0
A0
Entry Wire Line
	8500 1400 8600 1300
Text Label 8150 1500 0    50   ~ 0
GND
Entry Wire Line
	8500 1500 8600 1400
Text Label 8150 1600 0    50   ~ 0
AREF
Entry Wire Line
	8500 1600 8600 1500
Text Label 8150 1700 0    50   ~ 0
5V
Entry Wire Line
	8500 1700 8600 1600
Text Label 8150 1800 0    50   ~ 0
D13
Entry Wire Line
	8500 1800 8600 1700
Text Label 8150 1900 0    50   ~ 0
D12
Entry Wire Line
	8500 1900 8600 1800
Text Label 8150 2000 0    50   ~ 0
D11
Entry Wire Line
	8500 2000 8600 1900
Text Label 8150 2100 0    50   ~ 0
D10
Entry Wire Line
	8500 2100 8600 2000
Text Label 8150 2200 0    50   ~ 0
D9
Entry Wire Line
	8500 2200 8600 2100
NoConn ~ 9500 2500
NoConn ~ 9500 2600
Text Notes 1500 7150 0    50   ~ 0
+
Text Notes 3200 7150 0    50   ~ 0
+
$Comp
L VOLTAGE_REGULATOR U4
U 1 1 54CE7224
P 4000 6950
F 0 "U4" H 4200 6750 50  0000 C CNN
F 1 "LM117T-3.3" H 3800 7100 50  0000 L CNN
F 2 "bus_shield:TO-220_Neutral123_Horizontal_LargePads" H 4000 7000 60  0001 C CNN
F 3 "" H 4000 7000 60  0000 C CNN
	1    4000 6950
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C9
U 1 1 54CE8414
P 4700 7200
F 0 "C9" H 4720 7290 50  0000 L CNN
F 1 "22uF_6.3V_TANT" H 4720 7110 50  0000 L CNN
F 2 "bus_shield:Capacitor3MMDiscRM2.5" H 4738 7050 30  0001 C CNN
F 3 "" H 4700 7200 60  0000 C CNN
	1    4700 7200
	1    0    0    -1  
$EndComp
Text Label 4550 6900 0    50   ~ 0
3V3
$Comp
L 3V3 #PWR012
U 1 1 54CE94A5
P 4700 6800
F 0 "#PWR012" H 4700 6890 20  0001 C CNN
F 1 "3V3" H 4700 6905 50  0000 C CNN
F 2 "" H 4700 6800 60  0000 C CNN
F 3 "" H 4700 6800 60  0000 C CNN
	1    4700 6800
	1    0    0    -1  
$EndComp
NoConn ~ 1200 5500
$Comp
L +5V #PWR013
U 1 1 54CE9F03
P 1800 6000
F 0 "#PWR013" H 1800 6090 20  0001 C CNN
F 1 "+5V" H 1800 6105 50  0000 C CNN
F 2 "" H 1800 6000 60  0000 C CNN
F 3 "" H 1800 6000 60  0000 C CNN
	1    1800 6000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 54CEA2E6
P 1800 6500
F 0 "#PWR014" H 1800 6500 30  0001 C CNN
F 1 "GND" H 1800 6430 30  0001 C CNN
F 2 "" H 1800 6500 60  0000 C CNN
F 3 "" H 1800 6500 60  0000 C CNN
	1    1800 6500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 54CEA430
P 3000 6500
F 0 "#PWR015" H 3000 6500 30  0001 C CNN
F 1 "GND" H 3000 6430 30  0001 C CNN
F 2 "" H 3000 6500 60  0000 C CNN
F 3 "" H 3000 6500 60  0000 C CNN
	1    3000 6500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR016
U 1 1 54CEA57C
P 3000 6000
F 0 "#PWR016" H 3000 6090 20  0001 C CNN
F 1 "+5V" H 3000 6105 50  0000 C CNN
F 2 "" H 3000 6000 60  0000 C CNN
F 3 "" H 3000 6000 60  0000 C CNN
	1    3000 6000
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R3
U 1 1 54CEA953
P 1600 5600
F 0 "R3" H 1670 5650 50  0000 L CNN
F 1 "120" H 1670 5550 50  0000 L CNN
F 2 "bus_shield:Resistor_Horizontal_400" H 1600 5650 60  0001 C CNN
F 3 "" H 1600 5650 60  0000 C CNN
	1    1600 5600
	1    0    0    -1  
$EndComp
Entry Wire Line
	5700 2300 5800 2200
Text Label 5650 2300 2    50   ~ 0
TXD
$Comp
L R_VERT R6
U 1 1 54CED497
P 3400 5200
F 0 "R6" H 3470 5250 50  0000 L CNN
F 1 "100K" H 3470 5150 50  0000 L CNN
F 2 "bus_shield:Resistor_Horizontal_400" H 3400 5250 60  0001 C CNN
F 3 "" H 3400 5250 60  0000 C CNN
	1    3400 5200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR017
U 1 1 54CED928
P 3400 4900
F 0 "#PWR017" H 3400 4990 20  0001 C CNN
F 1 "+5V" H 3400 5005 50  0000 C CNN
F 2 "" H 3400 4900 60  0000 C CNN
F 3 "" H 3400 4900 60  0000 C CNN
	1    3400 4900
	1    0    0    -1  
$EndComp
Text Label 3500 7700 0    50   ~ 0
GND
$Comp
L GND #PWR018
U 1 1 54CEDAD3
P 1500 5200
F 0 "#PWR018" H 1500 5200 30  0001 C CNN
F 1 "GND" H 1500 5130 30  0001 C CNN
F 2 "" H 1500 5200 60  0000 C CNN
F 3 "" H 1500 5200 60  0000 C CNN
	1    1500 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 7700 1500 7400
Connection ~ 2200 7500
Wire Wire Line
	3300 7400 3300 7800
Wire Wire Line
	2200 7500 2500 7500
Wire Wire Line
	3000 7500 3000 7400
Wire Wire Line
	2900 7500 3000 7500
Wire Wire Line
	3300 6900 3300 7000
Connection ~ 1300 6700
Connection ~ 1400 6500
Wire Wire Line
	1400 6400 1200 6400
Wire Wire Line
	1200 6500 1400 6500
Wire Wire Line
	1300 6600 1200 6600
Wire Wire Line
	1300 6600 1300 6900
Wire Wire Line
	1200 6700 1300 6700
Wire Wire Line
	6800 2400 6800 2750
Wire Wire Line
	6800 2650 6700 2650
Wire Wire Line
	6100 2650 6000 2650
Wire Wire Line
	6000 1700 6000 2750
Connection ~ 6000 2650
Connection ~ 6800 2650
Wire Wire Line
	6000 3150 6000 3250
Wire Wire Line
	6800 3150 6800 3250
Wire Wire Line
	2100 3800 2100 3700
Wire Wire Line
	1500 4200 1500 4600
Wire Wire Line
	1500 5000 1500 5200
Connection ~ 1500 5100
Wire Wire Line
	1200 4800 1300 4800
Wire Wire Line
	1300 4800 1300 5100
Wire Wire Line
	1200 4300 2600 4300
Connection ~ 2100 4300
Wire Wire Line
	2500 4100 2600 4100
Wire Wire Line
	1200 4500 3200 4500
Wire Wire Line
	1200 4400 1500 4400
Connection ~ 1500 4400
Wire Wire Line
	4200 3400 4200 3600
Wire Wire Line
	4100 4200 4900 4200
Wire Wire Line
	4200 4200 4200 4100
Wire Wire Line
	4500 4200 4500 4100
Connection ~ 4200 4200
Wire Wire Line
	4500 3500 4500 3700
Connection ~ 4200 3500
Wire Wire Line
	3600 4200 3700 4200
Connection ~ 4500 4200
Wire Wire Line
	4900 4600 4700 4600
Wire Wire Line
	4100 4600 3700 4600
Connection ~ 2200 7700
Wire Wire Line
	1400 6400 1400 6600
Wire Wire Line
	2700 6900 3500 6900
Wire Wire Line
	1500 7700 4700 7700
Wire Wire Line
	4200 3500 4500 3500
Wire Wire Line
	2500 3600 2500 4100
Connection ~ 2500 3700
Wire Wire Line
	700  1350 700  1550
Wire Wire Line
	1600 1450 1600 1550
Connection ~ 700  1450
Wire Wire Line
	1300 1450 1300 1550
Connection ~ 1300 1450
Wire Wire Line
	1000 1550 1000 1450
Connection ~ 1000 1450
Wire Wire Line
	700  1950 700  2150
Wire Wire Line
	1600 2050 1600 1950
Connection ~ 700  2050
Wire Wire Line
	1300 2050 1300 1950
Connection ~ 1300 2050
Wire Wire Line
	1000 1950 1000 2050
Connection ~ 1000 2050
Wire Wire Line
	1200 6100 1300 6100
Wire Wire Line
	1300 6100 1300 6000
Wire Wire Line
	1300 6000 1200 6000
Wire Wire Line
	1200 5900 1300 5900
Wire Wire Line
	1300 5900 1300 5800
Wire Wire Line
	1300 5800 1200 5800
Wire Wire Line
	2100 4300 2100 4200
Wire Wire Line
	1800 1000 2000 1000
Wire Wire Line
	2000 900  2000 1100
Wire Wire Line
	2000 900  2100 900 
Wire Wire Line
	2000 1100 2100 1100
Wire Wire Line
	800  900  700  900 
Wire Wire Line
	700  1100 800  1100
Wire Wire Line
	1300 5100 1500 5100
Wire Wire Line
	5300 3800 5300 3700
Wire Wire Line
	5300 2700 5300 2600
Wire Wire Line
	5300 3200 5300 3100
Wire Wire Line
	9500 900  9100 900 
Wire Wire Line
	9100 1000 9500 1000
Wire Wire Line
	9500 1100 9100 1100
Wire Wire Line
	9100 1200 9500 1200
Wire Wire Line
	9100 1300 9500 1300
Wire Wire Line
	9100 1400 9500 1400
Wire Wire Line
	9100 1500 9500 1500
Wire Wire Line
	9100 1600 9500 1600
Wire Wire Line
	9100 1900 9500 1900
Wire Wire Line
	9500 2000 9100 2000
Wire Wire Line
	9500 2100 9100 2100
Wire Wire Line
	9100 2200 9500 2200
Wire Wire Line
	9100 2300 9500 2300
Wire Wire Line
	9100 2400 9500 2400
Wire Wire Line
	9100 2900 9500 2900
Wire Wire Line
	9500 3000 9100 3000
Wire Wire Line
	9100 3100 9500 3100
Wire Wire Line
	9500 3200 9100 3200
Wire Wire Line
	9100 3300 9500 3300
Wire Wire Line
	9500 3400 9100 3400
Wire Wire Line
	9100 3700 9500 3700
Wire Wire Line
	9500 3800 9100 3800
Wire Wire Line
	9500 3900 9100 3900
Wire Wire Line
	9100 4000 9500 4000
Wire Wire Line
	9100 4100 9500 4100
Wire Wire Line
	9100 4200 9500 4200
Wire Wire Line
	9100 4500 9500 4500
Wire Wire Line
	9500 4600 9100 4600
Wire Wire Line
	9500 4700 9100 4700
Wire Wire Line
	9100 4800 9500 4800
Wire Wire Line
	9100 4900 9500 4900
Wire Wire Line
	9100 5000 9500 5000
Wire Wire Line
	6300 900  5900 900 
Wire Wire Line
	5900 1000 6300 1000
Wire Wire Line
	6300 1100 5900 1100
Wire Wire Line
	5900 1200 6300 1200
Wire Wire Line
	5900 1300 6300 1300
Wire Wire Line
	5900 1400 6300 1400
Wire Wire Line
	5900 1500 6300 1500
Wire Wire Line
	5900 1600 6300 1600
Wire Wire Line
	5900 1900 6300 1900
Wire Wire Line
	6300 2000 5900 2000
Wire Wire Line
	5900 2100 6300 2100
Wire Wire Line
	6300 2200 5900 2200
Wire Wire Line
	6300 1800 6100 1800
Wire Wire Line
	6100 1800 6100 2400
Wire Wire Line
	6100 2400 6800 2400
Wire Wire Line
	6300 1700 6000 1700
Wire Wire Line
	8100 900  8500 900 
Wire Wire Line
	8100 1000 8500 1000
Wire Wire Line
	8100 1100 8500 1100
Wire Wire Line
	8100 1200 8500 1200
Wire Wire Line
	8100 1300 8500 1300
Wire Wire Line
	8100 1400 8500 1400
Wire Wire Line
	8100 1500 8500 1500
Wire Wire Line
	8100 1600 8500 1600
Wire Wire Line
	8100 1700 8500 1700
Wire Wire Line
	8100 1800 8500 1800
Wire Wire Line
	8100 1900 8500 1900
Wire Wire Line
	8100 2000 8500 2000
Wire Wire Line
	8100 2100 8500 2100
Wire Wire Line
	8100 2200 8500 2200
Wire Bus Line
	5800 600  9000 600 
Wire Bus Line
	9000 600  9000 5050
Wire Bus Line
	8600 600  8600 2200
Wire Wire Line
	3000 6800 3000 7000
Connection ~ 3000 6900
Wire Wire Line
	1300 6900 1700 6900
Wire Wire Line
	1500 6900 1500 7000
Connection ~ 1500 6900
Connection ~ 3300 6900
Wire Wire Line
	4500 6900 4700 6900
Wire Wire Line
	4700 6800 4700 7000
Wire Wire Line
	4700 7700 4700 7400
Connection ~ 3300 7700
Wire Wire Line
	2200 7300 2200 7700
Wire Wire Line
	4000 7300 4000 7700
Connection ~ 4000 7700
Connection ~ 4700 6900
Wire Wire Line
	1200 6200 1900 6200
Wire Wire Line
	1200 6300 1900 6300
Wire Wire Line
	1900 6100 1800 6100
Wire Wire Line
	1800 6100 1800 6000
Wire Wire Line
	1900 6400 1800 6400
Wire Wire Line
	1800 6400 1800 6500
Wire Wire Line
	2900 6300 3000 6300
Wire Wire Line
	3000 6300 3000 6500
Wire Wire Line
	2900 6200 3000 6200
Wire Wire Line
	3000 6200 3000 6000
Wire Wire Line
	1200 5400 1400 5400
Wire Wire Line
	1400 5400 1400 6300
Connection ~ 1400 6300
Wire Wire Line
	1600 5800 1600 6200
Connection ~ 1600 6200
Wire Wire Line
	1200 5300 1600 5300
Wire Wire Line
	1600 5300 1600 5400
Wire Bus Line
	5800 600  5800 2700
Wire Wire Line
	5700 2300 1500 2300
Wire Wire Line
	1500 2300 1500 3800
Wire Wire Line
	3200 5700 3900 5700
Wire Wire Line
	3200 4500 3200 5500
Wire Wire Line
	3200 5500 3900 5500
Connection ~ 3800 5700
Wire Wire Line
	3400 5400 3400 5500
Connection ~ 3400 5500
Wire Wire Line
	2100 3700 2500 3700
Wire Wire Line
	3400 5000 3400 4900
Wire Wire Line
	3700 4600 3700 4700
Wire Wire Line
	4900 2400 4900 5400
Entry Wire Line
	5700 2400 5800 2300
Entry Wire Line
	5700 2500 5800 2400
Wire Wire Line
	2900 6400 3100 6400
Wire Wire Line
	3100 6400 3100 4600
Wire Wire Line
	3100 4600 1800 4600
Wire Wire Line
	1800 4600 1800 3700
Wire Wire Line
	1800 3700 1500 3700
Connection ~ 1500 3700
$Comp
L +5V #PWR019
U 1 1 54CEEC1E
P 3800 4900
F 0 "#PWR019" H 3800 4990 20  0001 C CNN
F 1 "+5V" H 3800 5005 50  0000 C CNN
F 2 "" H 3800 4900 60  0000 C CNN
F 3 "" H 3800 4900 60  0000 C CNN
	1    3800 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4950 3800 4900
Wire Wire Line
	4900 2400 5700 2400
Connection ~ 4900 4200
Wire Wire Line
	4900 5600 5000 5600
Wire Wire Line
	5000 5600 5000 2500
Wire Wire Line
	5000 2500 5700 2500
Text Label 5650 2500 2    50   ~ 0
RXD
Text Label 5650 2400 2    50   ~ 0
~RESET
Connection ~ 2000 1000
$Comp
L +5V #PWR020
U 1 1 54CE7686
P 700 800
F 0 "#PWR020" H 700 890 20  0001 C CNN
F 1 "+5V" H 700 905 50  0000 C CNN
F 2 "" H 700 800 60  0000 C CNN
F 3 "" H 700 800 60  0000 C CNN
	1    700  800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  800  700  1100
Connection ~ 700  900 
NoConn ~ 3100 1000
Entry Wire Line
	5700 2600 5800 2500
Wire Wire Line
	5300 2600 5700 2600
Text Label 5650 2600 2    50   ~ 0
D13
Text Notes 4600 7150 0    50   ~ 0
+
Text Label 2800 6900 0    50   ~ 0
5V
Wire Wire Line
	700  1450 1600 1450
Wire Wire Line
	700  2050 1600 2050
$Comp
L 74xx00 U6
U 2 1 54D8F4EC
P 3900 6200
F 0 "U6" H 3700 6450 50  0000 C CNN
F 1 "74HCT03" H 3750 5950 50  0000 C CNN
F 2 "bus_shield:DIP-14__300" H 3900 6200 60  0001 C CNN
F 3 "" H 3900 6200 60  0000 C CNN
	2    3900 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6100 3300 6100
Wire Wire Line
	3200 5700 3200 6300
Wire Wire Line
	3800 5350 3800 5700
Wire Wire Line
	3200 6300 3300 6300
Connection ~ 3200 6100
$Comp
L R_HORIZ R10
U 1 1 54D90638
P 4800 6200
F 0 "R10" H 4800 6300 50  0000 C CNN
F 1 "180" H 4800 6100 50  0000 C CNN
F 2 "bus_shield:Resistor_Horizontal_400" H 4825 6200 60  0001 C CNN
F 3 "" H 4825 6200 60  0000 C CNN
	1    4800 6200
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C12
U 1 1 54D9074B
P 5100 6500
F 0 "C12" H 5120 6590 50  0000 L CNN
F 1 ".1uF" H 5120 6410 50  0000 L CNN
F 2 "bus_shield:Capacitor3MMDiscRM2.5" H 5138 6350 30  0001 C CNN
F 3 "" H 5100 6500 60  0000 C CNN
	1    5100 6500
	1    0    0    -1  
$EndComp
$Comp
L 74xx00 U6
U 4 1 54D907F9
P 5900 6200
F 0 "U6" H 5700 6450 50  0000 C CNN
F 1 "74HCT03" H 5750 5950 50  0000 C CNN
F 2 "bus_shield:DIP-14__300" H 5900 6200 60  0001 C CNN
F 3 "" H 5900 6200 60  0000 C CNN
	4    5900 6200
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R11
U 1 1 54D9087A
P 5100 5900
F 0 "R11" H 5170 5950 50  0000 L CNN
F 1 "10K" H 5170 5850 50  0000 L CNN
F 2 "bus_shield:Resistor_Horizontal_400" H 5100 5950 60  0001 C CNN
F 3 "" H 5100 5950 60  0000 C CNN
	1    5100 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 6100 5200 6100
Wire Wire Line
	5200 6100 5200 6300
Wire Wire Line
	5200 6300 5300 6300
Wire Wire Line
	5000 6200 5200 6200
Wire Wire Line
	5100 6100 5100 6300
Connection ~ 5200 6200
Connection ~ 5100 6200
$Comp
L +5V #PWR021
U 1 1 54D90DCA
P 5100 5600
F 0 "#PWR021" H 5100 5690 20  0001 C CNN
F 1 "+5V" H 5100 5705 50  0000 C CNN
F 2 "" H 5100 5600 60  0000 C CNN
F 3 "" H 5100 5600 60  0000 C CNN
	1    5100 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5700 5100 5600
Wire Wire Line
	4600 6200 4500 6200
$Comp
L GND #PWR022
U 1 1 54D91090
P 5100 6800
F 0 "#PWR022" H 5100 6800 30  0001 C CNN
F 1 "GND" H 5100 6730 30  0001 C CNN
F 2 "" H 5100 6800 60  0000 C CNN
F 3 "" H 5100 6800 60  0000 C CNN
	1    5100 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 6800 5100 6700
Wire Wire Line
	6500 6200 6600 6200
Wire Wire Line
	6600 6200 6600 5400
$Comp
L 74xx00 U6
U 1 1 54D9132A
P 2500 3000
F 0 "U6" H 2300 3250 50  0000 C CNN
F 1 "74HCT03" H 2350 2750 50  0000 C CNN
F 2 "bus_shield:DIP-14__300" H 2500 3000 60  0001 C CNN
F 3 "" H 2500 3000 60  0000 C CNN
	1    2500 3000
	1    0    0    -1  
$EndComp
$Comp
L 74xx00 U6
U 3 1 54D91453
P 4000 3000
F 0 "U6" H 3800 3250 50  0000 C CNN
F 1 "74HCT03" H 3850 2750 50  0000 C CNN
F 2 "bus_shield:DIP-14__300" H 4000 3000 60  0001 C CNN
F 3 "" H 4000 3000 60  0000 C CNN
	3    4000 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3100 3400 3100
Wire Wire Line
	3300 2900 3300 3100
Wire Wire Line
	3300 3000 3100 3000
Wire Wire Line
	3400 2900 3300 2900
Connection ~ 3300 3000
NoConn ~ 4600 3000
Wire Wire Line
	1900 2900 1800 2900
Wire Wire Line
	1800 2900 1800 3100
Wire Wire Line
	1800 3100 1900 3100
$Comp
L +5V #PWR023
U 1 1 54D91880
P 1700 2800
F 0 "#PWR023" H 1700 2890 20  0001 C CNN
F 1 "+5V" H 1700 2905 50  0000 C CNN
F 2 "" H 1700 2800 60  0000 C CNN
F 3 "" H 1700 2800 60  0000 C CNN
	1    1700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3000 1700 3000
Wire Wire Line
	1700 3000 1700 2800
Connection ~ 1800 3000
Wire Wire Line
	6600 5400 4900 5400
Connection ~ 4900 4600
$EndSCHEMATC
