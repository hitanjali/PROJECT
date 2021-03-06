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
	5800 3300 5700 3300
Wire Wire Line
	5700 3200 5800 3200
Wire Wire Line
	5700 3100 5800 3100
Wire Wire Line
	5700 3000 5800 3000
Wire Wire Line
	5700 3900 5800 3900
Wire Wire Line
	5700 3500 5800 3500
Wire Wire Line
	5700 3700 5800 3700
$Comp
L Device:R_Small_US R1
U 1 1 5F7835BB
P 8400 1900
F 0 "R1" H 8550 1850 50  0000 R CNN
F 1 "10k" H 8600 1950 50  0000 R CNN
F 2 "" H 8400 1900 50  0001 C CNN
F 3 "~" H 8400 1900 50  0001 C CNN
	1    8400 1900
	-1   0    0    1   
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5F7C1A4A
P 5150 1000
F 0 "BT1" V 5000 1000 50  0000 L CNN
F 1 "3V" V 4900 1000 50  0000 L CNN
F 2 "" V 5150 1060 50  0001 C CNN
F 3 "~" V 5150 1060 50  0001 C CNN
	1    5150 1000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_PHOTO R3
U 1 1 5F7C8DBE
P 8400 2450
F 0 "R3" H 8050 2500 50  0000 L CNN
F 1 "LDR_443700" H 7750 2350 50  0000 L CNN
F 2 "" V 8450 2200 50  0001 L CNN
F 3 "~" H 8400 2400 50  0001 C CNN
	1    8400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2600 5000 2550
$Comp
L hitesh_custom:GND #PWR013
U 1 1 5FA15A55
P 5800 3000
F 0 "#PWR013" H 5800 2750 50  0001 C CNN
F 1 "GND" V 5805 2872 50  0000 R CNN
F 2 "" H 5800 3000 50  0001 C CNN
F 3 "" H 5800 3000 50  0001 C CNN
	1    5800 3000
	0    -1   -1   0   
$EndComp
$Comp
L hitesh_custom:GND #PWR018
U 1 1 5FA162FF
P 5800 3700
F 0 "#PWR018" H 5800 3450 50  0001 C CNN
F 1 "GND" V 5805 3572 50  0000 R CNN
F 2 "" H 5800 3700 50  0001 C CNN
F 3 "" H 5800 3700 50  0001 C CNN
	1    5800 3700
	0    -1   -1   0   
$EndComp
$Comp
L hitesh_custom:GND #PWR017
U 1 1 5FA168C9
P 5800 3500
F 0 "#PWR017" H 5800 3250 50  0001 C CNN
F 1 "GND" V 5805 3372 50  0000 R CNN
F 2 "" H 5800 3500 50  0001 C CNN
F 3 "" H 5800 3500 50  0001 C CNN
	1    5800 3500
	0    -1   -1   0   
$EndComp
$Comp
L hitesh_custom:GND #PWR019
U 1 1 5FA16BE8
P 5800 3900
F 0 "#PWR019" H 5800 3650 50  0001 C CNN
F 1 "GND" V 5805 3772 50  0000 R CNN
F 2 "" H 5800 3900 50  0001 C CNN
F 3 "" H 5800 3900 50  0001 C CNN
	1    5800 3900
	0    -1   -1   0   
$EndComp
$Comp
L hitesh_custom:GND #PWR014
U 1 1 5FA180DD
P 5800 3100
F 0 "#PWR014" H 5800 2850 50  0001 C CNN
F 1 "GND" V 5805 2972 50  0000 R CNN
F 2 "" H 5800 3100 50  0001 C CNN
F 3 "" H 5800 3100 50  0001 C CNN
	1    5800 3100
	0    -1   -1   0   
$EndComp
$Comp
L hitesh_custom:GND #PWR015
U 1 1 5FA18516
P 5800 3200
F 0 "#PWR015" H 5800 2950 50  0001 C CNN
F 1 "GND" V 5805 3072 50  0000 R CNN
F 2 "" H 5800 3200 50  0001 C CNN
F 3 "" H 5800 3200 50  0001 C CNN
	1    5800 3200
	0    -1   -1   0   
$EndComp
$Comp
L hitesh_custom:GND #PWR016
U 1 1 5FA186BD
P 5800 3300
F 0 "#PWR016" H 5800 3050 50  0001 C CNN
F 1 "GND" V 5805 3172 50  0000 R CNN
F 2 "" H 5800 3300 50  0001 C CNN
F 3 "" H 5800 3300 50  0001 C CNN
	1    5800 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 2600 5100 2550
$Comp
L hitesh_custom:GND #PWR05
U 1 1 5FA1F0B7
P 4050 3000
F 0 "#PWR05" H 4050 2750 50  0001 C CNN
F 1 "GND" V 4055 2872 50  0000 R CNN
F 2 "" H 4050 3000 50  0001 C CNN
F 3 "" H 4050 3000 50  0001 C CNN
	1    4050 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 3000 4100 3000
$Comp
L hitesh_custom:GND #PWR08
U 1 1 5FA2809B
P 5600 1000
F 0 "#PWR08" H 5600 750 50  0001 C CNN
F 1 "GND" H 5605 827 50  0000 C CNN
F 2 "" H 5600 1000 50  0001 C CNN
F 3 "" H 5600 1000 50  0001 C CNN
	1    5600 1000
	0    -1   -1   0   
$EndComp
$Comp
L hitesh_custom:GND #PWR023
U 1 1 5FA2BFB9
P 8400 4250
F 0 "#PWR023" H 8400 4000 50  0001 C CNN
F 1 "GND" H 8405 4077 50  0000 C CNN
F 2 "" H 8400 4250 50  0001 C CNN
F 3 "" H 8400 4250 50  0001 C CNN
	1    8400 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3550 8400 3450
Wire Wire Line
	8400 4250 8400 4150
$Comp
L hitesh_custom:GND #PWR021
U 1 1 5FA3218F
P 8400 2750
F 0 "#PWR021" H 8400 2500 50  0001 C CNN
F 1 "GND" H 8405 2577 50  0000 C CNN
F 2 "" H 8400 2750 50  0001 C CNN
F 3 "" H 8400 2750 50  0001 C CNN
	1    8400 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1650 8400 1800
Wire Wire Line
	8400 2600 8400 2750
Text Label 7800 2150 0    50   ~ 0
LDR
Wire Wire Line
	7800 2150 8400 2150
Wire Wire Line
	8400 2000 8400 2150
Connection ~ 8400 2150
Wire Wire Line
	8400 2150 8400 2300
Text Label 7750 3850 0    50   ~ 0
PIR
Text Label 6850 3400 2    50   ~ 0
LDR
Wire Wire Line
	5700 3400 6850 3400
$Comp
L Device:R_Small_US R2
U 1 1 5FA49C1A
P 1600 1850
F 0 "R2" H 1750 1800 50  0000 R CNN
F 1 "10K" H 1800 1900 50  0000 R CNN
F 2 "" H 1600 1850 50  0001 C CNN
F 3 "~" H 1600 1850 50  0001 C CNN
	1    1600 1850
	-1   0    0    1   
$EndComp
$Comp
L hitesh_custom:GND #PWR02
U 1 1 5FA49C2C
P 1600 2800
F 0 "#PWR02" H 1600 2550 50  0001 C CNN
F 1 "GND" H 1605 2627 50  0000 C CNN
F 2 "" H 1600 2800 50  0001 C CNN
F 3 "" H 1600 2800 50  0001 C CNN
	1    1600 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1600 1600 1750
Text Label 2100 2100 2    50   ~ 0
Reset
Wire Wire Line
	1600 1950 1600 2100
Connection ~ 1600 2100
Wire Wire Line
	1600 2100 1600 2250
$Comp
L Switch:SW_Push SW1
U 1 1 5FA4A8FE
P 1600 2450
F 0 "SW1" V 1554 2402 50  0000 R CNN
F 1 "Reset" V 1645 2402 50  0000 R CNN
F 2 "" H 1600 2650 50  0001 C CNN
F 3 "~" H 1600 2650 50  0001 C CNN
	1    1600 2450
	0    -1   1    0   
$EndComp
Wire Wire Line
	1600 2650 1600 2800
Wire Wire Line
	1600 2100 2100 2100
Wire Wire Line
	7750 3850 8100 3850
Text Label 6850 3800 2    50   ~ 0
PIR
Text Label 3500 3800 0    50   ~ 0
Reset
Wire Wire Line
	3500 3800 4100 3800
Text Label 3500 3900 0    50   ~ 0
SWCLK
Wire Wire Line
	3500 3900 4100 3900
Text Label 3500 4000 0    50   ~ 0
SWDIO
Wire Wire Line
	3500 4000 4100 4000
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 5FA57667
P 1400 4000
F 0 "J1" H 1550 3950 50  0000 C CNN
F 1 "programing" V 1450 3950 50  0000 C CNN
F 2 "" H 1400 4000 50  0001 C CNN
F 3 "~" H 1400 4000 50  0001 C CNN
	1    1400 4000
	-1   0    0    1   
$EndComp
Text Label 2200 3900 2    50   ~ 0
SWCLK
Wire Wire Line
	2200 3900 1600 3900
Text Label 2200 4000 2    50   ~ 0
SWDIO
Wire Wire Line
	2200 4000 1600 4000
$Comp
L hitesh_custom:GND #PWR04
U 1 1 5FA5ACD2
P 1600 4250
F 0 "#PWR04" H 1600 4000 50  0001 C CNN
F 1 "GND" H 1605 4077 50  0000 C CNN
F 2 "" H 1600 4250 50  0001 C CNN
F 3 "" H 1600 4250 50  0001 C CNN
	1    1600 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3800 1600 3650
Wire Wire Line
	1600 4250 1600 4100
NoConn ~ 4100 3100
NoConn ~ 4100 3200
NoConn ~ 4100 3300
NoConn ~ 4100 3400
NoConn ~ 4100 3500
NoConn ~ 4100 3600
NoConn ~ 4100 3700
NoConn ~ 4400 2600
NoConn ~ 4500 2600
NoConn ~ 4600 2600
NoConn ~ 4700 2600
NoConn ~ 4800 2600
NoConn ~ 4900 2600
Wire Wire Line
	4650 1000 4950 1000
Wire Wire Line
	5250 1000 5600 1000
$Comp
L power:+3V0 #PWR?
U 1 1 5FA6CAA4
P 4650 1000
F 0 "#PWR?" H 4650 850 50  0001 C CNN
F 1 "+3V0" V 4665 1128 50  0000 L CNN
F 2 "" H 4650 1000 50  0001 C CNN
F 3 "" H 4650 1000 50  0001 C CNN
	1    4650 1000
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V0 #PWR?
U 1 1 5FA6FBEC
P 8400 3450
F 0 "#PWR?" H 8400 3300 50  0001 C CNN
F 1 "+3V0" V 8400 3700 50  0000 C CNN
F 2 "" H 8400 3450 50  0001 C CNN
F 3 "" H 8400 3450 50  0001 C CNN
	1    8400 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR?
U 1 1 5FA70B02
P 1600 1600
F 0 "#PWR?" H 1600 1450 50  0001 C CNN
F 1 "+3V0" H 1600 1800 50  0000 C CNN
F 2 "" H 1600 1600 50  0001 C CNN
F 3 "" H 1600 1600 50  0001 C CNN
	1    1600 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR?
U 1 1 5FA721B3
P 1600 3650
F 0 "#PWR?" H 1600 3500 50  0001 C CNN
F 1 "+3V0" H 1600 3850 50  0000 C CNN
F 2 "" H 1600 3650 50  0001 C CNN
F 3 "" H 1600 3650 50  0001 C CNN
	1    1600 3650
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR?
U 1 1 5FA7B068
P 5400 1800
F 0 "#PWR?" H 5400 1550 50  0001 C CNN
F 1 "GND" H 5405 1627 50  0000 C CNN
F 2 "" H 5400 1800 50  0001 C CNN
F 3 "" H 5400 1800 50  0001 C CNN
	1    5400 1800
	-1   0    0    1   
$EndComp
$Comp
L power:+3V0 #PWR?
U 1 1 5FA7BB18
P 5000 1800
F 0 "#PWR?" H 5000 1650 50  0001 C CNN
F 1 "+3V0" H 5015 1973 50  0000 C CNN
F 2 "" H 5000 1800 50  0001 C CNN
F 3 "" H 5000 1800 50  0001 C CNN
	1    5000 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2600 5200 2550
Wire Wire Line
	5200 2550 5100 2550
Wire Wire Line
	5100 2550 5000 2550
Connection ~ 5100 2550
Wire Wire Line
	5000 2550 5000 2350
Connection ~ 5000 2550
Connection ~ 5000 2350
Wire Wire Line
	5000 2350 5000 1950
Wire Wire Line
	5400 2350 5400 2550
Wire Wire Line
	5400 2350 5400 1950
Connection ~ 5400 2350
Wire Wire Line
	5300 2600 5300 2550
Wire Wire Line
	5300 2550 5400 2550
Connection ~ 5400 2550
Wire Wire Line
	5400 2550 5400 2600
Wire Wire Line
	5000 1950 5000 1800
Connection ~ 5000 1950
Wire Wire Line
	5400 1950 5400 1800
Connection ~ 5400 1950
Wire Wire Line
	5700 3800 6850 3800
Text Label 8400 1650 0    50   ~ 0
to_LDR
Text Label 6850 3600 2    50   ~ 0
to_LDR
Wire Wire Line
	5700 3600 6850 3600
$Comp
L Device:C_Small C?
U 1 1 5FA9148C
P 5200 2350
F 0 "C?" V 4971 2350 50  0000 C CNN
F 1 "0.1uF" V 5062 2350 50  0000 C CNN
F 2 "" H 5200 2350 50  0001 C CNN
F 3 "~" H 5200 2350 50  0001 C CNN
	1    5200 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 2350 5400 2350
Wire Wire Line
	5000 2350 5100 2350
$Comp
L Device:C_Small C?
U 1 1 5FA94A41
P 5200 1950
F 0 "C?" V 4971 1950 50  0000 C CNN
F 1 "10uF" V 5062 1950 50  0000 C CNN
F 2 "" H 5200 1950 50  0001 C CNN
F 3 "~" H 5200 1950 50  0001 C CNN
	1    5200 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 1950 5400 1950
Wire Wire Line
	5000 1950 5100 1950
$Comp
L custom_sch_footprint:PIR_digital_sensor U?
U 1 1 5FA5140B
P 8400 3850
F 0 "U?" V 8354 4078 50  0000 L CNN
F 1 "PIR_digital_sensor" V 8445 4078 50  0000 L CNN
F 2 "" H 8550 3700 50  0001 C CNN
F 3 "" H 8550 3700 50  0001 C CNN
	1    8400 3850
	0    1    1    0   
$EndComp
$Comp
L custom_sch_footprint:CBTMN11_module-NORDIC U?
U 1 1 5FA51AD4
P 4150 4000
F 0 "U?" H 4900 3827 50  0000 C CNN
F 1 "CBTMN11_module-NORDIC" H 4900 3736 50  0000 C CNN
F 2 "" H 5150 5000 50  0001 C CNN
F 3 "" H 5150 5000 50  0001 C CNN
	1    4150 4000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
