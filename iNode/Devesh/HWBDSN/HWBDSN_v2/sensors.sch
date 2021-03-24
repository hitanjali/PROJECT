EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2950 4050 2950 4200
Text Label 2350 4200 0    50   ~ 0
LDR
Text Label 6700 4250 0    50   ~ 0
PIR_2
Text Label 4400 4200 0    50   ~ 0
PIR_1
Wire Wire Line
	2950 3450 2950 3850
Text HLabel 2950 3450 2    50   Input ~ 0
to_LDR
Wire Wire Line
	2100 4200 2950 4200
Text HLabel 2100 4200 0    50   Output ~ 0
LDR
Text HLabel 4300 4200 0    50   Output ~ 0
PIR_1
Text HLabel 6700 4250 0    50   Output ~ 0
PIR_2
$Comp
L power:GND #PWR034
U 1 1 6020C507
P 4350 4650
F 0 "#PWR034" H 4350 4400 50  0001 C CNN
F 1 "GND" H 4355 4477 50  0000 C CNN
F 2 "" H 4350 4650 50  0001 C CNN
F 3 "" H 4350 4650 50  0001 C CNN
	1    4350 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 6020C923
P 6700 4650
F 0 "#PWR036" H 6700 4400 50  0001 C CNN
F 1 "GND" H 6705 4477 50  0000 C CNN
F 2 "" H 6700 4650 50  0001 C CNN
F 3 "" H 6700 4650 50  0001 C CNN
	1    6700 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR033
U 1 1 6020CF75
P 4350 3650
F 0 "#PWR033" H 4350 3500 50  0001 C CNN
F 1 "+3.3V" H 4365 3823 50  0000 C CNN
F 2 "" H 4350 3650 50  0001 C CNN
F 3 "" H 4350 3650 50  0001 C CNN
	1    4350 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR035
U 1 1 6020D81C
P 6700 3650
F 0 "#PWR035" H 6700 3500 50  0001 C CNN
F 1 "+3.3V" H 6715 3823 50  0000 C CNN
F 2 "" H 6700 3650 50  0001 C CNN
F 3 "" H 6700 3650 50  0001 C CNN
	1    6700 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 6020DE63
P 5250 4200
F 0 "J2" H 5330 4242 50  0000 L CNN
F 1 "Conn_01x03_[PIR_1]" H 5330 4151 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Horizontal" H 5250 4200 50  0001 C CNN
F 3 "~" H 5250 4200 50  0001 C CNN
F 4 "Genric" H 5250 4200 50  0001 C CNN "MFPN"
F 5 "Genric" H 5250 4200 50  0001 C CNN "Vendor"
	1    5250 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 6020E5A0
P 7550 4250
F 0 "J3" H 7630 4292 50  0000 L CNN
F 1 "Conn_01x03_[PIR_2]" H 7630 4201 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Horizontal" H 7550 4250 50  0001 C CNN
F 3 "~" H 7550 4250 50  0001 C CNN
F 4 "Genric" H 7550 4250 50  0001 C CNN "MFPN"
F 5 "Genric" H 7550 4250 50  0001 C CNN "Vendor"
	1    7550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3650 4350 4100
Wire Wire Line
	4300 4200 5050 4200
Wire Wire Line
	6700 4250 7350 4250
Text Label 8750 4200 0    50   ~ 0
PIR_3
Text HLabel 8650 4200 0    50   Output ~ 0
PIR_3
$Comp
L power:GND #PWR0107
U 1 1 60213877
P 8650 4650
F 0 "#PWR0107" H 8650 4400 50  0001 C CNN
F 1 "GND" H 8655 4477 50  0000 C CNN
F 2 "" H 8650 4650 50  0001 C CNN
F 3 "" H 8650 4650 50  0001 C CNN
	1    8650 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 60213881
P 8650 3600
F 0 "#PWR0108" H 8650 3450 50  0001 C CNN
F 1 "+3.3V" H 8665 3773 50  0000 C CNN
F 2 "" H 8650 3600 50  0001 C CNN
F 3 "" H 8650 3600 50  0001 C CNN
	1    8650 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 6021388B
P 9600 4200
F 0 "J4" H 9680 4242 50  0000 L CNN
F 1 "Conn_01x03_[PIR_3]" H 9680 4151 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Horizontal" H 9600 4200 50  0001 C CNN
F 3 "~" H 9600 4200 50  0001 C CNN
F 4 "Genric" H 9600 4200 50  0001 C CNN "MFPN"
F 5 "Genric" H 9600 4200 50  0001 C CNN "Vendor"
	1    9600 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 4200 9400 4200
Wire Wire Line
	4350 4650 4350 4300
Wire Wire Line
	4350 4300 5050 4300
Wire Wire Line
	8650 4300 9400 4300
Text Label 4350 5150 0    50   ~ 0
LDR
Text Label 6750 4450 0    50   ~ 0
LDR
Text Label 8800 4400 0    50   ~ 0
LDR
Wire Wire Line
	8650 4650 8650 4300
Wire Wire Line
	8700 4400 9400 4400
Wire Wire Line
	6750 4450 7350 4450
Wire Wire Line
	6700 4650 6700 4350
Wire Wire Line
	6700 4350 7350 4350
Wire Wire Line
	4350 5150 5000 5150
Wire Wire Line
	4350 4100 5050 4100
Wire Wire Line
	7350 4150 6700 4150
Wire Wire Line
	6700 3650 6700 4150
Wire Wire Line
	9400 4100 8650 4100
Wire Wire Line
	8650 3600 8650 4100
$Comp
L Device:R_Small_US R?
U 1 1 6058FBA8
P 2950 3950
AR Path="/6058FBA8" Ref="R?"  Part="1" 
AR Path="/5FED4AD5/6058FBA8" Ref="R1"  Part="1" 
AR Path="/5FFE69F0/6058FBA8" Ref="R1"  Part="1" 
F 0 "R1" H 3100 3900 50  0000 R CNN
F 1 "2.7K" H 3150 4000 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2950 3950 50  0001 C CNN
F 3 "~" H 2950 3950 50  0001 C CNN
F 4 "CR0603-JW-272ELF" H 2950 3950 50  0001 C CNN "MFPN"
F 5 "Bornus" H 2950 3950 50  0001 C CNN "Vendor"
	1    2950 3950
	-1   0    0    1   
$EndComp
Text Notes 5750 2750 0    50   ~ 0
For polarization use 3+1 connector
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 6058E6D4
P 5200 5150
F 0 "J1" H 5280 5192 50  0000 L CNN
F 1 "Conn_01x01" H 5280 5101 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Horizontal" H 5200 5150 50  0001 C CNN
F 3 "~" H 5200 5150 50  0001 C CNN
F 4 "Genric" H 5200 5150 50  0001 C CNN "MFPN"
F 5 "Genric" H 5200 5150 50  0001 C CNN "Vendor"
	1    5200 5150
	1    0    0    -1  
$EndComp
Text Label 6650 5150 0    50   ~ 0
LDR
Wire Wire Line
	6650 5150 7300 5150
$Comp
L Connector_Generic:Conn_01x01 J5
U 1 1 6058FCF8
P 7500 5150
F 0 "J5" H 7580 5192 50  0000 L CNN
F 1 "Conn_01x01" H 7580 5101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Horizontal" H 7500 5150 50  0001 C CNN
F 3 "~" H 7500 5150 50  0001 C CNN
F 4 "Genric" H 7500 5150 50  0001 C CNN "MFPN"
F 5 "Genric" H 7500 5150 50  0001 C CNN "Vendor"
	1    7500 5150
	1    0    0    -1  
$EndComp
Text Label 8600 5200 0    50   ~ 0
LDR
Wire Wire Line
	8600 5200 9250 5200
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 60590652
P 9450 5200
F 0 "J6" H 9530 5242 50  0000 L CNN
F 1 "Conn_01x01" H 9530 5151 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Horizontal" H 9450 5200 50  0001 C CNN
F 3 "~" H 9450 5200 50  0001 C CNN
F 4 "Genric" H 9450 5200 50  0001 C CNN "MFPN"
F 5 "Genric" H 9450 5200 50  0001 C CNN "Vendor"
	1    9450 5200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
