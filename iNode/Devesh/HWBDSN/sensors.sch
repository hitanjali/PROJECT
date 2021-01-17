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
Wire Wire Line
	3600 4000 3600 4150
Connection ~ 3600 4000
Wire Wire Line
	3600 3850 3600 4000
Text Label 3000 4000 0    50   ~ 0
LDR
$Comp
L hitesh_custom:GND #PWR?
U 1 1 5FEDD2F2
P 3600 4700
AR Path="/5FEDD2F2" Ref="#PWR?"  Part="1" 
AR Path="/5FED4AD5/5FEDD2F2" Ref="#PWR01"  Part="1" 
AR Path="/5FFE69F0/5FEDD2F2" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 3600 4450 50  0001 C CNN
F 1 "GND" H 3605 4527 50  0000 C CNN
F 2 "" H 3600 4700 50  0001 C CNN
F 3 "" H 3600 4700 50  0001 C CNN
	1    3600 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_PHOTO R?
U 1 1 5FEDD2F8
P 3600 4300
AR Path="/5FEDD2F8" Ref="R?"  Part="1" 
AR Path="/5FED4AD5/5FEDD2F8" Ref="R2"  Part="1" 
AR Path="/5FFE69F0/5FEDD2F8" Ref="R3"  Part="1" 
F 0 "R3" H 3250 4350 50  0000 L CNN
F 1 "LDR_443700" H 2950 4200 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 3650 4050 50  0001 L CNN
F 3 "~" H 3600 4250 50  0001 C CNN
	1    3600 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5FEDD2FE
P 3600 3750
AR Path="/5FEDD2FE" Ref="R?"  Part="1" 
AR Path="/5FED4AD5/5FEDD2FE" Ref="R1"  Part="1" 
AR Path="/5FFE69F0/5FEDD2FE" Ref="R2"  Part="1" 
F 0 "R2" H 3750 3700 50  0000 R CNN
F 1 "20k" H 3800 3800 50  0000 R CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 3600 3750 50  0001 C CNN
F 3 "~" H 3600 3750 50  0001 C CNN
	1    3600 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 4450 3600 4700
$Comp
L sensor_module-rescue:PIR_digital_sensor-custom_sch_footprint U?
U 1 1 5FEDD315
P 8400 4050
AR Path="/5FEDD315" Ref="U?"  Part="1" 
AR Path="/5FED4AD5/5FEDD315" Ref="U3"  Part="1" 
AR Path="/5FFE69F0/5FEDD315" Ref="U3"  Part="1" 
F 0 "U3" V 8400 4350 50  0000 L CNN
F 1 "PIR_digital_sensor" H 8100 4300 50  0000 L CNN
F 2 "CUSTOM:digital_PIR_sensor" H 8550 3900 50  0001 C CNN
F 3 "" H 8550 3900 50  0001 C CNN
	1    8400 4050
	0    1    1    0   
$EndComp
$Comp
L hitesh_custom:GND #PWR?
U 1 1 5FEDD31B
P 8400 4700
AR Path="/5FEDD31B" Ref="#PWR?"  Part="1" 
AR Path="/5FED4AD5/5FEDD31B" Ref="#PWR021"  Part="1" 
AR Path="/5FFE69F0/5FEDD31B" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 8400 4450 50  0001 C CNN
F 1 "GND" H 8405 4527 50  0000 C CNN
F 2 "" H 8400 4700 50  0001 C CNN
F 3 "" H 8400 4700 50  0001 C CNN
	1    8400 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4350 8400 4700
Wire Wire Line
	8400 3500 8400 3750
Wire Wire Line
	6100 3450 6100 3700
Wire Wire Line
	7750 4050 8100 4050
Text Label 7750 4050 0    50   ~ 0
PIR_2
Wire Wire Line
	6100 4300 6100 4650
$Comp
L hitesh_custom:GND #PWR?
U 1 1 5FEDD340
P 6100 4650
AR Path="/5FEDD340" Ref="#PWR?"  Part="1" 
AR Path="/5FED4AD5/5FEDD340" Ref="#PWR017"  Part="1" 
AR Path="/5FFE69F0/5FEDD340" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 6100 4400 50  0001 C CNN
F 1 "GND" H 6105 4477 50  0000 C CNN
F 2 "" H 6100 4650 50  0001 C CNN
F 3 "" H 6100 4650 50  0001 C CNN
	1    6100 4650
	1    0    0    -1  
$EndComp
$Comp
L sensor_module-rescue:PIR_digital_sensor-custom_sch_footprint U?
U 1 1 5FEDD347
P 6100 4000
AR Path="/5FEDD347" Ref="U?"  Part="1" 
AR Path="/5FED4AD5/5FEDD347" Ref="U2"  Part="1" 
AR Path="/5FFE69F0/5FEDD347" Ref="U2"  Part="1" 
F 0 "U2" V 6100 4300 50  0000 L CNN
F 1 "PIR_digital_sensor" H 5800 4250 50  0000 L CNN
F 2 "CUSTOM:digital_PIR_sensor" H 6250 3850 50  0001 C CNN
F 3 "" H 6250 3850 50  0001 C CNN
	1    6100 4000
	0    1    1    0   
$EndComp
Text Label 5450 4000 0    50   ~ 0
PIR_1
Wire Wire Line
	3600 3250 3600 3650
Text HLabel 3600 3250 2    50   Input ~ 0
to_LDR
Wire Wire Line
	2750 4000 3600 4000
Text HLabel 2750 4000 0    50   Output ~ 0
LDR
Wire Wire Line
	5350 4000 5800 4000
Text HLabel 5350 4000 0    50   Output ~ 0
PIR_1
Text HLabel 7750 4050 0    50   Output ~ 0
PIR_2
$Comp
L hitesh_custom:+3.3V #PWR0114
U 1 1 5FF0876E
P 6100 3450
F 0 "#PWR0114" H 6100 3300 50  0001 C CNN
F 1 "+3.3V" H 6115 3623 50  0000 C CNN
F 2 "" H 6100 3450 50  0001 C CNN
F 3 "" H 6100 3450 50  0001 C CNN
	1    6100 3450
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:+3.3V #PWR0115
U 1 1 5FF094EE
P 8400 3500
F 0 "#PWR0115" H 8400 3350 50  0001 C CNN
F 1 "+3.3V" H 8415 3673 50  0000 C CNN
F 2 "" H 8400 3500 50  0001 C CNN
F 3 "" H 8400 3500 50  0001 C CNN
	1    8400 3500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
