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
	5850 2600 6000 2600
$Comp
L Device:D D5
U 1 1 5F23319C
P 5850 3350
F 0 "D5" H 5850 3566 50  0000 C CNN
F 1 "1N4148X-TP" H 5850 3475 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 5850 3350 50  0001 C CNN
F 3 "~" H 5850 3350 50  0001 C CNN
	1    5850 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5850 3200 5850 3050
Wire Wire Line
	6150 3200 5850 3200
Connection ~ 5850 3200
Wire Wire Line
	5850 3500 6350 3500
Text GLabel 7850 3100 2    50   Output ~ 0
OUT
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5F234B76
P 6350 3300
F 0 "Q1" V 6662 3300 39  0000 C BNN
F 1 "2N3904" V 6579 3300 39  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6550 3225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 6350 3300 50  0001 L CNN
	1    6350 3300
	0    1    -1   0   
$EndComp
Wire Wire Line
	3400 3200 3600 3200
$Comp
L power:AC #PWR02
U 1 1 5F242AA0
P 3400 3200
F 0 "#PWR02" H 3400 3100 50  0001 C CNN
F 1 "AC" H 3400 3475 50  0000 C CNN
F 2 "" H 3400 3200 50  0001 C CNN
F 3 "" H 3400 3200 50  0001 C CNN
	1    3400 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 2600 3500 2600
$Comp
L power:AC #PWR01
U 1 1 5F2370EC
P 3400 2600
F 0 "#PWR01" H 3400 2500 50  0001 C CNN
F 1 "AC" H 3400 2875 50  0000 C CNN
F 2 "" H 3400 2600 50  0001 C CNN
F 3 "" H 3400 2600 50  0001 C CNN
	1    3400 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5F227481
P 4200 2900
F 0 "C1" H 4315 2946 50  0000 L CNN
F 1 "1nF" H 4315 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4238 2750 50  0001 C CNN
F 3 "~" H 4200 2900 50  0001 C CNN
	1    4200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2750 4200 2600
Wire Wire Line
	4200 3050 4200 3200
Connection ~ 5850 2600
Wire Wire Line
	4650 2900 4650 3500
Connection ~ 5850 3500
$Comp
L Device:R_Small_US R1
U 1 1 5F298E9E
P 3700 2600
F 0 "R1" V 3495 2600 50  0000 C CNN
F 1 "220k" V 3586 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3700 2600 50  0001 C CNN
F 3 "~" H 3700 2600 50  0001 C CNN
	1    3700 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 5F29AC9C
P 3700 3200
F 0 "R2" V 3495 3200 50  0000 C CNN
F 1 "220k" V 3586 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3700 3200 50  0001 C CNN
F 3 "~" H 3700 3200 50  0001 C CNN
	1    3700 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 5F29B656
P 6100 2600
F 0 "R3" V 5895 2600 50  0000 C CNN
F 1 "1k" V 5986 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6100 2600 50  0001 C CNN
F 3 "~" H 6100 2600 50  0001 C CNN
	1    6100 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 2600 6400 3000
Wire Wire Line
	4200 2600 4950 2600
Wire Wire Line
	4200 3200 4950 3200
Text Notes 7350 7500 0    50   ~ 0
zero cross detector circuit
$Comp
L Isolator:4N35 U1
U 1 1 5F277F11
P 6950 3100
F 0 "U1" H 6950 3425 50  0000 C CNN
F 1 "4N35" H 6950 3334 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm_SMDSocket_SmallPads" H 6750 2900 50  0001 L CIN
F 3 "https://www.vishay.com/docs/81181/4n35.pdf" H 6950 3100 50  0001 L CNN
	1    6950 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5F23EBC2
P 7350 3400
F 0 "#PWR03" H 7350 3150 50  0001 C CNN
F 1 "GND" H 7355 3227 50  0000 C CNN
F 2 "" H 7350 3400 50  0001 C CNN
F 3 "" H 7350 3400 50  0001 C CNN
	1    7350 3400
	1    0    0    -1  
$EndComp
NoConn ~ 7250 3000
$Comp
L Device:R_Small_US R4
U 1 1 5F2DDD23
P 7350 2850
F 0 "R4" V 7145 2850 50  0000 C CNN
F 1 "4.7k" V 7236 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7350 2850 50  0001 C CNN
F 3 "~" H 7350 2850 50  0001 C CNN
	1    7350 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 3200 6650 3200
Wire Wire Line
	6400 3000 6650 3000
Wire Wire Line
	7250 3200 7350 3200
Wire Wire Line
	7250 3100 7350 3100
Wire Wire Line
	7350 2650 7350 2700
Wire Wire Line
	7350 2950 7350 3100
Connection ~ 7350 3100
Wire Wire Line
	7350 3100 7850 3100
Wire Wire Line
	6200 2600 6400 2600
$Comp
L Device:R_Small_US R5
U 1 1 5F31594C
P 5450 3200
F 0 "R5" V 5245 3200 50  0000 C CNN
F 1 "22k" V 5336 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5450 3200 50  0001 C CNN
F 3 "~" H 5450 3200 50  0001 C CNN
	1    5450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3300 5450 3500
Wire Wire Line
	3800 3200 4200 3200
Wire Wire Line
	3800 2600 4200 2600
Connection ~ 4200 2600
Connection ~ 4200 3200
Wire Wire Line
	5850 2600 5850 2850
$Comp
L power:+5V #PWR0101
U 1 1 5F30E1C5
P 7350 2650
F 0 "#PWR0101" H 7350 2500 50  0001 C CNN
F 1 "+5V" H 7365 2823 50  0000 C CNN
F 2 "" H 7350 2650 50  0001 C CNN
F 3 "" H 7350 2650 50  0001 C CNN
	1    7350 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C2
U 1 1 5F31AC9C
P 5850 2950
F 0 "C2" H 5941 2996 39  0000 L CNN
F 1 "10uF/10v" H 5941 2905 39  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5850 2950 50  0001 C CNN
F 3 "~" H 5850 2950 50  0001 C CNN
	1    5850 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Bridge_+-AA D1
U 1 1 5F2295EF
P 4950 2900
F 0 "D1" H 5294 2946 39  0000 R CNN
F 1 "MDS 5" V 5236 2992 50  0000 L CNN
F 2 "ZCD v-1:MDS_5_diode_bridge" H 4950 2900 50  0001 C CNN
F 3 "~" H 4950 2900 50  0001 C CNN
	1    4950 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2600 5450 2900
Wire Wire Line
	4650 3500 5450 3500
Wire Wire Line
	5250 2900 5450 2900
Connection ~ 5450 2900
Wire Wire Line
	5450 2900 5450 3100
Wire Wire Line
	5450 2600 5850 2600
Wire Wire Line
	5450 3500 5850 3500
Connection ~ 5450 3500
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F333A4D
P 7350 2700
F 0 "#FLG0101" H 7350 2775 50  0001 C CNN
F 1 "PWR_FLAG" V 7350 2828 50  0000 L CNN
F 2 "" H 7350 2700 50  0001 C CNN
F 3 "~" H 7350 2700 50  0001 C CNN
	1    7350 2700
	0    1    1    0   
$EndComp
Connection ~ 7350 2700
Wire Wire Line
	7350 2700 7350 2750
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F334B7A
P 7350 3300
F 0 "#FLG0102" H 7350 3375 50  0001 C CNN
F 1 "PWR_FLAG" V 7350 3428 50  0000 L CNN
F 2 "" H 7350 3300 50  0001 C CNN
F 3 "~" H 7350 3300 50  0001 C CNN
	1    7350 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 3200 7350 3300
Connection ~ 7350 3300
Wire Wire Line
	7350 3300 7350 3400
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5F336921
P 3500 2600
F 0 "#FLG0103" H 3500 2675 50  0001 C CNN
F 1 "PWR_FLAG" V 3500 2728 50  0000 L CNN
F 2 "" H 3500 2600 50  0001 C CNN
F 3 "~" H 3500 2600 50  0001 C CNN
	1    3500 2600
	1    0    0    -1  
$EndComp
Connection ~ 3500 2600
Wire Wire Line
	3500 2600 3600 2600
$EndSCHEMATC
