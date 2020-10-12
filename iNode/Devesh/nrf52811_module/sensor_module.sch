EESchema Schematic File Version 4
EELAYER 30 0
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
Wire Wire Line
	5300 2300 5400 2300
Connection ~ 5400 2300
Wire Wire Line
	5400 2300 5800 2300
Wire Wire Line
	5800 3300 5700 3300
Wire Wire Line
	5700 3200 5800 3200
Connection ~ 5800 3200
Wire Wire Line
	5800 3200 5800 3300
Wire Wire Line
	5700 3100 5800 3100
Connection ~ 5800 3100
Wire Wire Line
	5800 3100 5800 3200
Wire Wire Line
	5700 3000 5800 3000
Wire Wire Line
	5800 3000 5800 3100
Wire Wire Line
	5700 3900 5800 3900
Wire Wire Line
	5800 3900 5800 3700
Connection ~ 5800 3300
Wire Wire Line
	5700 3500 5800 3500
Connection ~ 5800 3500
Wire Wire Line
	5800 3500 5800 3300
Wire Wire Line
	5700 3700 5800 3700
Connection ~ 5800 3700
Wire Wire Line
	5800 3700 5800 3500
Wire Wire Line
	5000 2200 5100 2200
Wire Wire Line
	5200 2200 5100 2200
Connection ~ 5100 2200
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 5F7550FB
P 4050 1950
F 0 "U2" H 4050 2192 50  0000 C CNN
F 1 "AMS1117-3.3" H 4050 2101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4050 2150 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 4150 1700 50  0001 C CNN
	1    4050 1950
	1    0    0    -1  
$EndComp
$Comp
L NORDIC:CBTMN11_module U1
U 1 1 5F6DA5FB
P 4150 4000
F 0 "U1" H 4900 3827 50  0000 C CNN
F 1 "CBTMN11_module" H 4900 3736 50  0000 C CNN
F 2 "NORDIC:CBTMN11_module" H 5150 5000 50  0001 C CNN
F 3 "" H 5150 5000 50  0001 C CNN
	1    4150 4000
	1    0    0    -1  
$EndComp
Connection ~ 5300 2300
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5F719C51
P 3400 3100
F 0 "J2" H 3480 3142 50  0000 L CNN
F 1 "PIR" H 3480 3051 50  0000 L CNN
F 2 "" H 3400 3100 50  0001 C CNN
F 3 "~" H 3400 3100 50  0001 C CNN
	1    3400 3100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5100 1950 5100 2200
Wire Wire Line
	4050 2250 4050 2300
Connection ~ 4050 2300
Wire Wire Line
	4350 1950 4600 1950
$Comp
L Device:C_Small C1
U 1 1 5F763362
P 4600 2150
F 0 "C1" H 4692 2196 50  0000 L CNN
F 1 "10uF" H 4692 2105 50  0000 L CNN
F 2 "" H 4600 2150 50  0001 C CNN
F 3 "~" H 4600 2150 50  0001 C CNN
	1    4600 2150
	1    0    0    -1  
$EndComp
Connection ~ 4600 1950
Wire Wire Line
	4600 1950 5100 1950
Wire Wire Line
	4050 2300 4600 2300
Wire Wire Line
	4600 2250 4600 2300
Connection ~ 4600 2300
Wire Wire Line
	4600 2300 5300 2300
Wire Wire Line
	4600 1950 4600 2050
Wire Wire Line
	5400 2300 5400 2600
Wire Wire Line
	5300 2300 5300 2600
Wire Wire Line
	5200 2200 5200 2600
Wire Wire Line
	5100 2200 5100 2600
Wire Wire Line
	5000 2200 5000 2600
Wire Wire Line
	5800 2300 5800 3000
Connection ~ 5800 3000
Wire Wire Line
	4050 2300 4050 2750
Connection ~ 4050 3000
Wire Wire Line
	4050 3000 4100 3000
Wire Wire Line
	3600 2450 3650 2450
Wire Wire Line
	4600 2550 4600 2600
$Comp
L Device:R_Small_US R1
U 1 1 5F7835BB
P 3900 2650
F 0 "R1" H 4050 2600 50  0000 R CNN
F 1 "1K" H 4050 2700 50  0000 R CNN
F 2 "" H 3900 2650 50  0001 C CNN
F 3 "~" H 3900 2650 50  0001 C CNN
	1    3900 2650
	-1   0    0    1   
$EndComp
Connection ~ 4050 2750
Wire Wire Line
	4050 2750 4050 3000
Wire Wire Line
	3900 2750 4050 2750
Connection ~ 3900 2550
Wire Wire Line
	3900 2550 4600 2550
$Comp
L Device:Battery_Cell BT1
U 1 1 5F7C1A4A
P 3400 2150
F 0 "BT1" H 3150 2200 50  0000 L CNN
F 1 "POWER 5V" H 3000 2100 50  0000 L CNN
F 2 "" V 3400 2210 50  0001 C CNN
F 3 "~" V 3400 2210 50  0001 C CNN
	1    3400 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2250 3400 2300
Wire Wire Line
	3650 1950 3750 1950
Wire Wire Line
	3650 1950 3650 2450
Connection ~ 3650 2450
Wire Wire Line
	3600 3000 4050 3000
Wire Wire Line
	3600 3900 4100 3900
Wire Wire Line
	3600 4000 4100 4000
Connection ~ 3650 1950
Wire Wire Line
	3400 1950 3650 1950
Wire Wire Line
	3600 3100 4100 3100
Wire Wire Line
	3650 3200 3600 3200
Wire Wire Line
	3650 2450 3650 3200
$Comp
L Connector_Generic_MountingPin:Conn_01x03_MountingPin J?
U 1 1 5F7C5522
P 3400 3900
F 0 "J?" H 3488 3772 50  0000 L CNN
F 1 "Conn_01x03_MountingPin" H 3488 3863 50  0000 L CNN
F 2 "" H 3400 3900 50  0001 C CNN
F 3 "~" H 3400 3900 50  0001 C CNN
	1    3400 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 3800 4100 3800
Wire Wire Line
	3400 2300 4050 2300
$Comp
L Device:R_PHOTO R?
U 1 1 5F7C8DBE
P 3400 2700
F 0 "R?" H 3050 2750 50  0000 L CNN
F 1 "R_PHOTO" H 2850 2600 50  0000 L CNN
F 2 "" V 3450 2450 50  0001 L CNN
F 3 "~" H 3400 2650 50  0001 C CNN
	1    3400 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2550 3900 2550
Wire Wire Line
	3400 2850 4000 2850
Wire Wire Line
	4000 2850 4000 3200
Wire Wire Line
	4000 3200 4100 3200
$EndSCHEMATC
