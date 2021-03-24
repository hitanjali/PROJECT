EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 3000 4000 0    50   ~ 0
ALS
$Comp
L hwbdsn_v1.1-rescue:GND-hitesh_custom #PWR?
U 1 1 5FEDD2F2
P 3600 5150
AR Path="/5FEDD2F2" Ref="#PWR?"  Part="1" 
AR Path="/5FED4AD5/5FEDD2F2" Ref="#PWR01"  Part="1" 
AR Path="/5FFE69F0/5FEDD2F2" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 3600 4900 50  0001 C CNN
F 1 "GND" H 3605 4977 50  0000 C CNN
F 2 "" H 3600 5150 50  0001 C CNN
F 3 "" H 3600 5150 50  0001 C CNN
	1    3600 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5FEDD2FE
P 3600 4500
AR Path="/5FEDD2FE" Ref="R?"  Part="1" 
AR Path="/5FED4AD5/5FEDD2FE" Ref="R1"  Part="1" 
AR Path="/5FFE69F0/5FEDD2FE" Ref="R1"  Part="1" 
F 0 "R1" H 3750 4450 50  0000 R CNN
F 1 "2.7K" H 3800 4550 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3600 4500 50  0001 C CNN
F 3 "~" H 3600 4500 50  0001 C CNN
F 4 "CR0603-JW-272ELF" H 3600 4500 50  0001 C CNN "MFPN"
F 5 "Bornus" H 3600 4500 50  0001 C CNN "Vendor"
	1    3600 4500
	-1   0    0    1   
$EndComp
Text HLabel 3600 3050 1    50   Input ~ 0
TO_PHOTOTRANS
Wire Wire Line
	2750 4000 3600 4000
Text HLabel 2750 4000 0    50   Output ~ 0
ALS
$Comp
L Device:Q_Photo_NPN Q1
U 1 1 6011682C
P 3500 3550
F 0 "Q1" H 3690 3596 50  0000 L CNN
F 1 "SFH_3711" H 3690 3505 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 3700 3650 50  0001 C CNN
F 3 "~" H 3500 3550 50  0001 C CNN
F 4 "SFH_3711" H 3500 3550 50  0001 C CNN "MFPN"
F 5 "OSRAM" H 3500 3550 50  0001 C CNN "Vendor"
	1    3500 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 60134E98
P 5650 3450
F 0 "J1" H 5730 3492 50  0000 L CNN
F 1 "171856-0003" H 5730 3401 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 5650 3450 50  0001 C CNN
F 3 "~" H 5650 3450 50  0001 C CNN
F 4 "171856-0003" H 5650 3450 50  0001 C CNN "MFPN"
F 5 "Molex" H 5650 3450 50  0001 C CNN "Vendor"
	1    5650 3450
	1    0    0    -1  
$EndComp
$Comp
L hwbdsn_v1.1-rescue:GND-hitesh_custom #PWR?
U 1 1 60137C38
P 5100 4050
AR Path="/60137C38" Ref="#PWR?"  Part="1" 
AR Path="/5FED4AD5/60137C38" Ref="#PWR?"  Part="1" 
AR Path="/5FFE69F0/60137C38" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 5100 3800 50  0001 C CNN
F 1 "GND" H 5105 3877 50  0000 C CNN
F 2 "" H 5100 4050 50  0001 C CNN
F 3 "" H 5100 4050 50  0001 C CNN
	1    5100 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2850 5100 3350
Wire Wire Line
	5100 3350 5450 3350
Wire Wire Line
	5100 3550 5100 4050
Wire Wire Line
	5100 3550 5450 3550
Wire Wire Line
	5450 3450 4850 3450
Text HLabel 4850 3450 0    50   Output ~ 0
PIR_1
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 6013BFA9
P 7700 3400
F 0 "J2" H 7780 3442 50  0000 L CNN
F 1 "171857-0003" H 7780 3351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 7700 3400 50  0001 C CNN
F 3 "~" H 7700 3400 50  0001 C CNN
F 4 "171857-0003" H 7700 3400 50  0001 C CNN "MFPN"
F 5 "Molex" H 7700 3400 50  0001 C CNN "Vendor"
	1    7700 3400
	1    0    0    -1  
$EndComp
$Comp
L hwbdsn_v1.1-rescue:GND-hitesh_custom #PWR?
U 1 1 6013BFAF
P 7150 4000
AR Path="/6013BFAF" Ref="#PWR?"  Part="1" 
AR Path="/5FED4AD5/6013BFAF" Ref="#PWR?"  Part="1" 
AR Path="/5FFE69F0/6013BFAF" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 7150 3750 50  0001 C CNN
F 1 "GND" H 7155 3827 50  0000 C CNN
F 2 "" H 7150 4000 50  0001 C CNN
F 3 "" H 7150 4000 50  0001 C CNN
	1    7150 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2800 7150 3300
Wire Wire Line
	7150 3300 7500 3300
Wire Wire Line
	7150 3500 7150 4000
Wire Wire Line
	7150 3500 7500 3500
Wire Wire Line
	7500 3400 6900 3400
Text HLabel 6900 3400 0    50   Output ~ 0
PIR_2
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 6013D095
P 9900 3400
F 0 "J3" H 9980 3442 50  0000 L CNN
F 1 "171856-0003" H 9980 3351 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 9900 3400 50  0001 C CNN
F 3 "~" H 9900 3400 50  0001 C CNN
F 4 "171856-0003" H 9900 3400 50  0001 C CNN "MFPN"
F 5 "Molex" H 9900 3400 50  0001 C CNN "Vendor"
	1    9900 3400
	1    0    0    -1  
$EndComp
$Comp
L hwbdsn_v1.1-rescue:GND-hitesh_custom #PWR?
U 1 1 6013D09B
P 9350 4000
AR Path="/6013D09B" Ref="#PWR?"  Part="1" 
AR Path="/5FED4AD5/6013D09B" Ref="#PWR?"  Part="1" 
AR Path="/5FFE69F0/6013D09B" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 9350 3750 50  0001 C CNN
F 1 "GND" H 9355 3827 50  0000 C CNN
F 2 "" H 9350 4000 50  0001 C CNN
F 3 "" H 9350 4000 50  0001 C CNN
	1    9350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2800 9350 3300
Wire Wire Line
	9350 3300 9700 3300
Wire Wire Line
	9350 3500 9350 4000
Wire Wire Line
	9350 3500 9700 3500
Wire Wire Line
	9700 3400 9100 3400
Text HLabel 9100 3400 0    50   Output ~ 0
PIR_3
Wire Wire Line
	3600 3050 3600 3350
Wire Wire Line
	3600 3750 3600 4000
Connection ~ 3600 4000
Wire Wire Line
	3600 4000 3600 4400
Wire Wire Line
	3600 4600 3600 5150
$Comp
L power:+3V0 #PWR?
U 1 1 603AA0E2
P 5100 2850
AR Path="/6001F811/603AA0E2" Ref="#PWR?"  Part="1" 
AR Path="/5FFE69F0/603AA0E2" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 5100 2700 50  0001 C CNN
F 1 "+3V0" H 5115 3023 50  0000 C CNN
F 2 "" H 5100 2850 50  0001 C CNN
F 3 "" H 5100 2850 50  0001 C CNN
	1    5100 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR?
U 1 1 603AA5B0
P 7150 2800
AR Path="/6001F811/603AA5B0" Ref="#PWR?"  Part="1" 
AR Path="/5FFE69F0/603AA5B0" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 7150 2650 50  0001 C CNN
F 1 "+3V0" H 7165 2973 50  0000 C CNN
F 2 "" H 7150 2800 50  0001 C CNN
F 3 "" H 7150 2800 50  0001 C CNN
	1    7150 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR?
U 1 1 603AAF6E
P 9350 2800
AR Path="/6001F811/603AAF6E" Ref="#PWR?"  Part="1" 
AR Path="/5FFE69F0/603AAF6E" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 9350 2650 50  0001 C CNN
F 1 "+3V0" H 9365 2973 50  0000 C CNN
F 2 "" H 9350 2800 50  0001 C CNN
F 3 "" H 9350 2800 50  0001 C CNN
	1    9350 2800
	1    0    0    -1  
$EndComp
$EndSCHEMATC