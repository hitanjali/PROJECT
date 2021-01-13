EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L MCU_Microchip_ATtiny:ATtiny1606-M U101
U 1 1 5FE6BC34
P 3800 4200
F 0 "U101" H 4150 5050 50  0000 C CNN
F 1 "ATtiny1606-M" V 3800 4200 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-20-1EP_4x4mm_P0.5mm_EP2.7x2.7mm_ThermalVias" H 3800 4200 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATtiny806_1606_Data_Sheet_40002029A.pdf" H 3800 4200 50  0001 C CNN
	1    3800 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4200 4850 4200
Wire Wire Line
	4400 4100 4850 4100
Wire Wire Line
	4400 4000 4850 4000
Wire Wire Line
	4400 3900 4850 3900
Wire Wire Line
	4400 3800 4850 3800
Wire Wire Line
	4400 3700 4850 3700
Wire Wire Line
	4400 3600 4850 3600
Wire Wire Line
	2750 4500 3200 4500
$Comp
L power:+3.3V #PWR0103
U 1 1 5FFAF884
P 3800 2500
F 0 "#PWR0103" H 3800 2350 50  0001 C CNN
F 1 "+3.3V" H 3815 2673 50  0000 C CNN
F 2 "" H 3800 2500 50  0001 C CNN
F 3 "" H 3800 2500 50  0001 C CNN
	1    3800 2500
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR0104
U 1 1 5FFB059C
P 3800 5350
F 0 "#PWR0104" H 3800 5100 50  0001 C CNN
F 1 "GND" H 3805 5177 50  0000 C CNN
F 2 "" H 3800 5350 50  0001 C CNN
F 3 "" H 3800 5350 50  0001 C CNN
	1    3800 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5100 3800 5350
$Comp
L Device:C_Small C101
U 1 1 5FFB20CF
P 3350 2850
F 0 "C101" V 3400 2600 50  0000 L CNN
F 1 "0.1uF, 10V" V 3250 2550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3350 2850 50  0001 C CNN
F 3 "~" H 3350 2850 50  0001 C CNN
	1    3350 2850
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR0102
U 1 1 5FFBA41F
P 3350 3150
F 0 "#PWR0102" H 3350 2900 50  0001 C CNN
F 1 "GND" H 3355 2977 50  0000 C CNN
F 2 "" H 3350 3150 50  0001 C CNN
F 3 "" H 3350 3150 50  0001 C CNN
	1    3350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3150 3350 2950
$Comp
L Switch:SW_Push SW101
U 1 1 5FFC6D13
P 10150 1800
F 0 "SW101" V 10104 1948 50  0000 L CNN
F 1 "SW_Push" V 10195 1948 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 10150 2000 50  0001 C CNN
F 3 "~" H 10150 2000 50  0001 C CNN
	1    10150 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R101
U 1 1 5FFC76DC
P 10150 1250
F 0 "R101" H 10218 1296 50  0000 L CNN
F 1 "10K" H 10218 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10150 1250 50  0001 C CNN
F 3 "~" H 10150 1250 50  0001 C CNN
F 4 "YAEGO" H 10150 1250 50  0001 C CNN "Vendor"
	1    10150 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0105
U 1 1 5FFCD574
P 10150 900
F 0 "#PWR0105" H 10150 750 50  0001 C CNN
F 1 "+3.3V" H 10165 1073 50  0000 C CNN
F 2 "" H 10150 900 50  0001 C CNN
F 3 "" H 10150 900 50  0001 C CNN
	1    10150 900 
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR0106
U 1 1 5FFCF3CA
P 10150 2200
F 0 "#PWR0106" H 10150 1950 50  0001 C CNN
F 1 "GND" H 10155 2027 50  0000 C CNN
F 2 "" H 10150 2200 50  0001 C CNN
F 3 "" H 10150 2200 50  0001 C CNN
	1    10150 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 900  10150 1150
Wire Wire Line
	10150 1350 10150 1500
Wire Wire Line
	10150 2000 10150 2200
$Comp
L hitesh_custom:GND #PWR0107
U 1 1 5FFD5545
P 9950 6050
F 0 "#PWR0107" H 9950 5800 50  0001 C CNN
F 1 "GND" H 9955 5877 50  0000 C CNN
F 2 "" H 9950 6050 50  0001 C CNN
F 3 "" H 9950 6050 50  0001 C CNN
	1    9950 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D101
U 1 1 5FFC81A5
P 9950 5650
F 0 "D101" V 9989 5532 50  0000 R CNN
F 1 "RED" H 9898 5532 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 9950 5650 50  0001 C CNN
F 3 "~" H 9950 5650 50  0001 C CNN
	1    9950 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9950 5200 9950 5500
Wire Wire Line
	9950 5800 9950 6050
$Comp
L Device:R_Small_US R102
U 1 1 5FFD5539
P 9950 5100
F 0 "R102" H 10018 5146 50  0000 L CNN
F 1 "2.2K" H 10018 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9950 5100 50  0001 C CNN
F 3 "~" H 9950 5100 50  0001 C CNN
	1    9950 5100
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR0108
U 1 1 5FFE5DAC
P 10300 6050
F 0 "#PWR0108" H 10300 5800 50  0001 C CNN
F 1 "GND" H 10305 5877 50  0000 C CNN
F 2 "" H 10300 6050 50  0001 C CNN
F 3 "" H 10300 6050 50  0001 C CNN
	1    10300 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D102
U 1 1 5FFE5DB2
P 10300 5650
F 0 "D102" V 10339 5532 50  0000 R CNN
F 1 "YELLOW" H 10248 5532 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 10300 5650 50  0001 C CNN
F 3 "~" H 10300 5650 50  0001 C CNN
	1    10300 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10300 5200 10300 5500
Wire Wire Line
	10300 5800 10300 6050
$Comp
L Device:R_Small_US R103
U 1 1 5FFE5DBB
P 10300 5100
F 0 "R103" H 10368 5146 50  0000 L CNN
F 1 "2.2K" H 10368 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10300 5100 50  0001 C CNN
F 3 "~" H 10300 5100 50  0001 C CNN
	1    10300 5100
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR0109
U 1 1 5FFE6F86
P 10650 6050
F 0 "#PWR0109" H 10650 5800 50  0001 C CNN
F 1 "GND" H 10655 5877 50  0000 C CNN
F 2 "" H 10650 6050 50  0001 C CNN
F 3 "" H 10650 6050 50  0001 C CNN
	1    10650 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D103
U 1 1 5FFE6F8C
P 10650 5650
F 0 "D103" V 10689 5532 50  0000 R CNN
F 1 "GREEN" H 10598 5532 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 10650 5650 50  0001 C CNN
F 3 "~" H 10650 5650 50  0001 C CNN
	1    10650 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10650 5200 10650 5500
Wire Wire Line
	10650 5800 10650 6050
$Comp
L Device:R_Small_US R104
U 1 1 5FFE6F95
P 10650 5100
F 0 "R104" H 10718 5146 50  0000 L CNN
F 1 "2.2K" H 10718 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10650 5100 50  0001 C CNN
F 3 "~" H 10650 5100 50  0001 C CNN
	1    10650 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 4750 9950 5000
Wire Wire Line
	10300 4650 10300 5000
Wire Wire Line
	10650 4550 10650 5000
Connection ~ 10150 1500
Wire Wire Line
	10150 1500 10150 1600
Text Label 4650 3500 0    50   ~ 0
RESETn_UPDI
Wire Wire Line
	4400 3500 5150 3500
Text Label 9350 1500 0    50   ~ 0
RESETn_UPDI
Text Label 4500 4000 0    50   ~ 0
RED
Text Label 4500 4100 0    50   ~ 0
YELLOW
Text Label 4500 4200 0    50   ~ 0
GREEN
Text Label 9650 4750 0    50   ~ 0
RED
Text Label 9650 4650 0    50   ~ 0
YELLOW
Text Label 9650 4550 0    50   ~ 0
GREEN
Wire Wire Line
	9550 4650 10300 4650
Wire Wire Line
	9550 4550 10650 4550
Wire Wire Line
	9950 4750 9550 4750
Text Label 4500 3600 0    50   ~ 0
MOSI
Text Label 4500 3700 0    50   ~ 0
MISO
Text Label 4500 3800 0    50   ~ 0
SCK
Text Label 4500 3900 0    50   ~ 0
SSn
Text HLabel 4850 3600 2    50   Output ~ 0
MOSI
Text HLabel 4850 3700 2    50   Input ~ 0
MISO
Text HLabel 4850 3800 2    50   Output ~ 0
SCK
Text HLabel 4850 3900 2    50   Output ~ 0
SSn
Wire Wire Line
	4400 4700 4850 4700
Text Label 2900 4600 0    50   ~ 0
GDO0
Text Label 2900 4700 0    50   ~ 0
GDO2
Text Label 2450 4400 0    50   ~ 0
PWR_MONITOR
Wire Wire Line
	2100 4400 3200 4400
Text HLabel 2750 4700 0    50   Input ~ 0
GDO2
Text HLabel 2750 4600 0    50   Input ~ 0
GDO0
Wire Wire Line
	3200 4600 2750 4600
Wire Wire Line
	3200 4700 2750 4700
Wire Wire Line
	4400 4900 4850 4900
Wire Wire Line
	4400 4800 4850 4800
Text Label 4500 4800 0    50   ~ 0
PIR_1
Text Label 4500 4900 0    50   ~ 0
PIR_2
$Comp
L Connector_Generic:Conn_01x01 J102
U 1 1 5FFFED9D
P 8600 1500
F 0 "J102" H 8518 1275 50  0000 C CNN
F 1 "Conn_01x01" H 8518 1366 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8600 1500 50  0001 C CNN
F 3 "~" H 8600 1500 50  0001 C CNN
	1    8600 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	8800 1500 10150 1500
Wire Wire Line
	3350 2650 3800 2650
Wire Wire Line
	3800 2500 3800 2650
Wire Wire Line
	3350 2650 3350 2750
Connection ~ 3800 2650
Wire Wire Line
	3800 2650 3800 3300
Text Label 9400 3000 0    50   ~ 0
PWR_MONITOR
$Comp
L Connector_Generic:Conn_01x02 J105
U 1 1 60008807
P 10450 3450
F 0 "J105" H 10530 3442 50  0000 L CNN
F 1 "extenal_battery" H 10530 3351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10450 3450 50  0001 C CNN
F 3 "~" H 10450 3450 50  0001 C CNN
	1    10450 3450
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR?
U 1 1 5FFFB528
P 10100 4050
AR Path="/5FFFB528" Ref="#PWR?"  Part="1" 
AR Path="/5FED4AD5/5FFFB528" Ref="#PWR?"  Part="1" 
AR Path="/5FFE69F0/5FFFB528" Ref="#PWR?"  Part="1" 
AR Path="/6001F811/5FFFB528" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 10100 3800 50  0001 C CNN
F 1 "GND" H 10105 3877 50  0000 C CNN
F 2 "" H 10100 4050 50  0001 C CNN
F 3 "" H 10100 4050 50  0001 C CNN
	1    10100 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3000 10100 3000
Wire Wire Line
	10100 2850 10100 3000
Wire Wire Line
	10250 3300 10100 3300
Wire Wire Line
	10250 3700 10100 3700
Connection ~ 10100 3000
Wire Wire Line
	10100 3000 10100 3300
Wire Wire Line
	9950 3300 10100 3300
Connection ~ 10100 3300
Wire Wire Line
	9950 3700 10100 3700
Connection ~ 10100 3700
$Comp
L hitesh_custom:+3.3V #PWR?
U 1 1 5FFFB53E
P 10100 2850
AR Path="/5FFE69F0/5FFFB53E" Ref="#PWR?"  Part="1" 
AR Path="/6001F811/5FFFB53E" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 10100 2700 50  0001 C CNN
F 1 "+3.3V" H 10115 3023 50  0000 C CNN
F 2 "" H 10100 2850 50  0001 C CNN
F 3 "" H 10100 2850 50  0001 C CNN
	1    10100 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 5FFFB54B
P 9950 3550
AR Path="/5FFFB54B" Ref="BT?"  Part="1" 
AR Path="/5FED4AD5/5FFFB54B" Ref="BT?"  Part="1" 
AR Path="/5FFE69F0/5FFFB54B" Ref="BT?"  Part="1" 
AR Path="/6001F811/5FFFB54B" Ref="BT1"  Part="1" 
F 0 "BT1" H 10150 3550 50  0000 L CNN
F 1 "Battery_Cell" V 10100 3400 50  0000 L CNN
F 2 "Battery:BatteryHolder_LINX_BAT-HLD-012-SMT" V 9950 3610 50  0001 C CNN
F 3 "~" V 9950 3610 50  0001 C CNN
	1    9950 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10250 3550 10250 3700
Wire Wire Line
	10250 3300 10250 3450
Wire Wire Line
	9950 3650 9950 3700
Wire Wire Line
	9950 3350 9950 3300
Text HLabel 2750 4500 0    50   Input ~ 0
LDR
Text Label 2900 4500 0    50   ~ 0
LDR
Text HLabel 4850 4700 2    50   Output ~ 0
to_LDR
Text Label 4500 4700 0    50   ~ 0
to_LDR
Text HLabel 4850 4800 2    50   Input ~ 0
PIR_1
Text HLabel 4850 4900 2    50   Input ~ 0
PIR_2
NoConn ~ 4400 4400
NoConn ~ 4400 4500
NoConn ~ 4400 4600
Wire Wire Line
	10100 3700 10100 3900
$Comp
L hitesh_custom:PWR_FLAG #FLG0102
U 1 1 60014CFD
P 10250 3900
F 0 "#FLG0102" H 10250 3975 50  0001 C CNN
F 1 "PWR_FLAG" V 10250 4028 50  0000 L CNN
F 2 "" H 10250 3900 50  0001 C CNN
F 3 "~" H 10250 3900 50  0001 C CNN
	1    10250 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 3900 10100 3900
Connection ~ 10100 3900
Wire Wire Line
	10100 3900 10100 4050
$EndSCHEMATC
