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
$Comp
L Device:C C2
U 1 1 5F22B920
P 5500 2900
F 0 "C2" H 5615 2938 50  0000 L CNN
F 1 "10uF/10V" H 5615 2855 39  0000 L CNN
F 2 "" H 5538 2750 50  0001 C CNN
F 3 "~" H 5500 2900 50  0001 C CNN
	1    5500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2750 5500 2600
Wire Wire Line
	5500 2600 5850 2600
$Comp
L Device:D D5
U 1 1 5F23319C
P 5500 3350
F 0 "D5" H 5500 3566 50  0000 C CNN
F 1 "D" H 5500 3475 50  0000 C CNN
F 2 "" H 5500 3350 50  0001 C CNN
F 3 "~" H 5500 3350 50  0001 C CNN
	1    5500 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 3200 5500 3050
Wire Wire Line
	5800 3200 5500 3200
Connection ~ 5500 3200
Wire Wire Line
	5500 3500 6000 3500
$Comp
L power:GND #PWR03
U 1 1 5F23EBC2
P 6800 3200
F 0 "#PWR03" H 6800 2950 50  0001 C CNN
F 1 "GND" H 6805 3027 50  0000 C CNN
F 2 "" H 6800 3200 50  0001 C CNN
F 3 "" H 6800 3200 50  0001 C CNN
	1    6800 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F23F173
P 6900 2950
F 0 "R5" H 6970 2996 50  0000 L CNN
F 1 "4.7k" H 6970 2905 50  0000 L CNN
F 2 "" V 6830 2950 50  0001 C CNN
F 3 "~" H 6900 2950 50  0001 C CNN
	1    6900 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2800 6900 2700
Wire Wire Line
	6900 3100 7400 3100
$Comp
L power:VCCQ #PWR04
U 1 1 5F243705
P 6900 2700
F 0 "#PWR04" H 6900 2550 50  0001 C CNN
F 1 "VCCQ" H 6917 2873 50  0000 C CNN
F 2 "" H 6900 2700 50  0001 C CNN
F 3 "" H 6900 2700 50  0001 C CNN
	1    6900 2700
	1    0    0    -1  
$EndComp
Text GLabel 7400 3100 2    50   Output ~ 0
OUT
$Comp
L Isolator:4N35 U1
U 1 1 5F277F11
P 6500 3100
F 0 "U1" H 6500 3425 50  0000 C CNN
F 1 "4N35" H 6500 3334 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 6300 2900 50  0001 L CIN
F 3 "https://www.vishay.com/docs/81181/4n35.pdf" H 6500 3100 50  0001 L CNN
	1    6500 3100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5F234B76
P 6000 3300
F 0 "Q1" V 6312 3300 50  0000 C CNN
F 1 "2N3904" V 6229 3300 39  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6200 3225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 6000 3300 50  0001 L CNN
	1    6000 3300
	0    1    -1   0   
$EndComp
Wire Wire Line
	6800 3100 6900 3100
Connection ~ 6900 3100
$Comp
L Device:D_Bridge_+-AA D1
U 1 1 5F2295EF
P 4950 2900
F 0 "D1" H 5294 2946 50  0000 L CNN
F 1 "D_Bridge_+-AA" V 5294 2855 50  0000 L CNN
F 2 "" H 4950 2900 50  0001 C CNN
F 3 "~" H 4950 2900 50  0001 C CNN
	1    4950 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3400 3050 3600 3050
$Comp
L power:AC #PWR02
U 1 1 5F242AA0
P 3400 3050
F 0 "#PWR02" H 3400 2950 50  0001 C CNN
F 1 "AC" H 3400 3325 50  0000 C CNN
F 2 "" H 3400 3050 50  0001 C CNN
F 3 "" H 3400 3050 50  0001 C CNN
	1    3400 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 2750 3600 2750
$Comp
L power:AC #PWR01
U 1 1 5F2370EC
P 3400 2750
F 0 "#PWR01" H 3400 2650 50  0001 C CNN
F 1 "AC" H 3400 3025 50  0000 C CNN
F 2 "" H 3400 2750 50  0001 C CNN
F 3 "" H 3400 2750 50  0001 C CNN
	1    3400 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3800 3050 4200 3050
Wire Wire Line
	3800 2750 4200 2750
$Comp
L Device:C C1
U 1 1 5F227481
P 4200 2900
F 0 "C1" H 4315 2946 50  0000 L CNN
F 1 "1nF" H 4315 2855 50  0000 L CNN
F 2 "" H 4238 2750 50  0001 C CNN
F 3 "~" H 4200 2900 50  0001 C CNN
	1    4200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2750 4200 2600
Connection ~ 4200 2750
Wire Wire Line
	4200 3050 4200 3200
Connection ~ 4200 3050
Wire Wire Line
	5250 2900 5250 2600
Wire Wire Line
	5250 2600 5500 2600
Connection ~ 5500 2600
Wire Wire Line
	4650 2900 4650 3500
Wire Wire Line
	4650 3500 5500 3500
Connection ~ 5500 3500
$Comp
L Device:R_Small_US R1
U 1 1 5F298E9E
P 3700 2750
F 0 "R1" V 3495 2750 50  0000 C CNN
F 1 "220k" V 3586 2750 50  0000 C CNN
F 2 "" H 3700 2750 50  0001 C CNN
F 3 "~" H 3700 2750 50  0001 C CNN
	1    3700 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 5F29AC9C
P 3700 3050
F 0 "R2" V 3495 3050 50  0000 C CNN
F 1 "220k" V 3586 3050 50  0000 C CNN
F 2 "" H 3700 3050 50  0001 C CNN
F 3 "~" H 3700 3050 50  0001 C CNN
	1    3700 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 5F29B656
P 5950 2600
F 0 "R3" V 5745 2600 50  0000 C CNN
F 1 "R_Small_US" V 5836 2600 50  0000 C CNN
F 2 "" H 5950 2600 50  0001 C CNN
F 3 "~" H 5950 2600 50  0001 C CNN
	1    5950 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 2600 6050 3000
Wire Wire Line
	6050 3000 6200 3000
Wire Wire Line
	4200 2600 4950 2600
Wire Wire Line
	4200 3200 4950 3200
$EndSCHEMATC
