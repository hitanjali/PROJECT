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
L hitesh_custom:GND #PWR08
U 1 1 5FA2809B
P 4750 2050
F 0 "#PWR08" H 4750 1800 50  0001 C CNN
F 1 "GND" H 4755 1877 50  0000 C CNN
F 2 "" H 4750 2050 50  0001 C CNN
F 3 "" H 4750 2050 50  0001 C CNN
	1    4750 2050
	1    0    0    -1  
$EndComp
Text Label 1800 3650 2    50   ~ 0
LDR
Text Label 1800 3750 2    50   ~ 0
PIR_1
Text Label 8800 1550 2    50   ~ 0
program
$Comp
L hitesh_custom:GND #PWR04
U 1 1 5FA5ACD2
P 8200 2050
F 0 "#PWR04" H 8200 1800 50  0001 C CNN
F 1 "GND" H 8205 1877 50  0000 C CNN
F 2 "" H 8200 2050 50  0001 C CNN
F 3 "" H 8200 2050 50  0001 C CNN
	1    8200 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR06
U 1 1 5FA6CAA4
P 4750 850
F 0 "#PWR06" H 4750 700 50  0001 C CNN
F 1 "+3V0" V 4765 978 50  0000 L CNN
F 2 "" H 4750 850 50  0001 C CNN
F 3 "" H 4750 850 50  0001 C CNN
	1    4750 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR03
U 1 1 5FA721B3
P 8200 850
F 0 "#PWR03" H 8200 700 50  0001 C CNN
F 1 "+3V0" H 8200 1050 50  0000 C CNN
F 2 "" H 8200 850 50  0001 C CNN
F 3 "" H 8200 850 50  0001 C CNN
	1    8200 850 
	1    0    0    -1  
$EndComp
Text Label 1800 3550 2    50   ~ 0
to_LDR
Text Label 3950 1000 0    50   ~ 0
pwr_measurment
Wire Wire Line
	3950 1000 4750 1000
Text Label 3900 3650 0    50   ~ 0
MOSI
Text Label 3900 3750 0    50   ~ 0
MISO
Text Label 3900 3850 0    50   ~ 0
SCLK
Text Label 3900 3950 0    50   ~ 0
CSn
Text Label 3900 4050 0    50   ~ 0
GDO2
Text Label 3900 4150 0    50   ~ 0
GDO0
Wire Wire Line
	3550 3650 3900 3650
Wire Wire Line
	3550 3750 3900 3750
Wire Wire Line
	3550 3850 3900 3850
Wire Wire Line
	3550 3950 3900 3950
Wire Wire Line
	3550 4050 3900 4050
Wire Wire Line
	3550 4150 3900 4150
Text Label 3900 3550 0    50   ~ 0
program
Wire Wire Line
	3550 3550 3700 3550
Text Label 3900 3450 0    50   ~ 0
Reset
Wire Wire Line
	3900 3450 3700 3450
Wire Wire Line
	3700 3450 3700 3550
Connection ~ 3700 3550
Wire Wire Line
	3700 3550 3900 3550
Text Label 3900 4250 0    50   ~ 0
pwr_measurment
Wire Wire Line
	3550 4250 3900 4250
$Comp
L hitesh_custom:GND #PWR02
U 1 1 5FA49C2C
P 9100 2050
F 0 "#PWR02" H 9100 1800 50  0001 C CNN
F 1 "GND" H 9105 1877 50  0000 C CNN
F 2 "" H 9100 2050 50  0001 C CNN
F 3 "" H 9100 2050 50  0001 C CNN
	1    9100 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 1900 9100 2050
Wire Wire Line
	9100 1350 9600 1350
$Comp
L Switch:SW_Push SW1
U 1 1 5FA4A8FE
P 9100 1700
F 0 "SW1" V 9054 1652 50  0000 R CNN
F 1 "Reset" V 9145 1652 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 9100 1900 50  0001 C CNN
F 3 "~" H 9100 1900 50  0001 C CNN
	1    9100 1700
	0    -1   1    0   
$EndComp
Wire Wire Line
	9100 1350 9100 1500
Connection ~ 9100 1350
Wire Wire Line
	9100 1200 9100 1350
Text Label 9600 1350 2    50   ~ 0
Reset
Wire Wire Line
	9100 850  9100 1000
$Comp
L Device:R_Small_US R2
U 1 1 5FA49C1A
P 9100 1100
F 0 "R2" H 9250 1050 50  0000 R CNN
F 1 "10K" H 9300 1150 50  0000 R CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 9100 1100 50  0001 C CNN
F 3 "~" H 9100 1100 50  0001 C CNN
	1    9100 1100
	-1   0    0    1   
$EndComp
$Comp
L power:+3V0 #PWR01
U 1 1 5FA70B02
P 9100 850
F 0 "#PWR01" H 9100 700 50  0001 C CNN
F 1 "+3V0" H 9100 1050 50  0000 C CNN
F 2 "" H 9100 850 50  0001 C CNN
F 3 "" H 9100 850 50  0001 C CNN
	1    9100 850 
	1    0    0    -1  
$EndComp
Text Label 3600 850  0    50   ~ 0
to_LDR
Wire Wire Line
	3600 1350 3600 1500
Connection ~ 3600 1350
Wire Wire Line
	3600 1200 3600 1350
Wire Wire Line
	3000 1350 3600 1350
Text Label 3000 1350 0    50   ~ 0
LDR
Wire Wire Line
	3600 850  3600 1000
$Comp
L hitesh_custom:GND #PWR021
U 1 1 5FA3218F
P 3600 2050
F 0 "#PWR021" H 3600 1800 50  0001 C CNN
F 1 "GND" H 3605 1877 50  0000 C CNN
F 2 "" H 3600 2050 50  0001 C CNN
F 3 "" H 3600 2050 50  0001 C CNN
	1    3600 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_PHOTO R3
U 1 1 5F7C8DBE
P 3600 1650
F 0 "R3" H 3250 1700 50  0000 L CNN
F 1 "LDR_443700" H 2950 1550 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 3650 1400 50  0001 L CNN
F 3 "~" H 3600 1600 50  0001 C CNN
	1    3600 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 5F7835BB
P 3600 1100
F 0 "R1" H 3750 1050 50  0000 R CNN
F 1 "20k" H 3800 1150 50  0000 R CNN
F 2 "Resistor_SMD:R_0201_0603Metric" H 3600 1100 50  0001 C CNN
F 3 "~" H 3600 1100 50  0001 C CNN
	1    3600 1100
	-1   0    0    1   
$EndComp
$Comp
L Device:Crystal_Small Y1
U 1 1 5FD6EE36
P 4550 7000
F 0 "Y1" H 4550 7100 39  0000 C CNN
F 1 "26MHz" H 4550 6900 39  0000 C CNN
F 2 "" H 4550 7000 50  0001 C CNN
F 3 "~" H 4550 7000 50  0001 C CNN
	1    4550 7000
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR022
U 1 1 5FD60B75
P 5950 7550
F 0 "#PWR022" H 5950 7300 50  0001 C CNN
F 1 "GND" H 5950 7400 20  0000 C CNN
F 2 "" H 5950 7550 50  0001 C CNN
F 3 "" H 5950 7550 50  0001 C CNN
	1    5950 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 7450 5950 7550
Text Label 6700 3750 0    50   ~ 0
DC4
Text Label 6700 4050 0    50   ~ 0
DC5
Text Label 6700 4150 0    50   ~ 0
DC6
$Comp
L hitesh_custom:GND #PWR019
U 1 1 5FDCA090
P 5950 4900
F 0 "#PWR019" H 5950 4650 50  0001 C CNN
F 1 "GND" H 5955 4727 50  0000 C CNN
F 2 "" H 5950 4900 50  0001 C CNN
F 3 "" H 5950 4900 50  0001 C CNN
	1    5950 4900
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR024
U 1 1 5FDCA63E
P 6150 4900
F 0 "#PWR024" H 6150 4650 50  0001 C CNN
F 1 "GND" H 6155 4727 50  0000 C CNN
F 2 "" H 6150 4900 50  0001 C CNN
F 3 "" H 6150 4900 50  0001 C CNN
	1    6150 4900
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR027
U 1 1 5FDCA951
P 6250 4900
F 0 "#PWR027" H 6250 4650 50  0001 C CNN
F 1 "GND" H 6255 4727 50  0000 C CNN
F 2 "" H 6250 4900 50  0001 C CNN
F 3 "" H 6250 4900 50  0001 C CNN
	1    6250 4900
	1    0    0    -1  
$EndComp
Text Label 6700 3850 0    50   ~ 0
RF1
Text Label 6700 3950 0    50   ~ 0
RF2
$Comp
L Device:C_Small C7
U 1 1 5FD4EB93
P 5950 7350
F 0 "C7" H 5844 7333 20  0000 L CNN
F 1 "0.1uF" V 6042 7294 39  0000 L CNN
F 2 "" H 5950 7350 50  0001 C CNN
F 3 "~" H 5950 7350 50  0001 C CNN
	1    5950 7350
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR026
U 1 1 5FDEC478
P 6200 7550
F 0 "#PWR026" H 6200 7300 50  0001 C CNN
F 1 "GND" H 6200 7400 20  0000 C CNN
F 2 "" H 6200 7550 50  0001 C CNN
F 3 "" H 6200 7550 50  0001 C CNN
	1    6200 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 7450 6200 7550
$Comp
L Device:C_Small C8
U 1 1 5FDEC483
P 6200 7350
F 0 "C8" H 6094 7333 20  0000 L CNN
F 1 "0.1uF" V 6292 7294 39  0000 L CNN
F 2 "" H 6200 7350 50  0001 C CNN
F 3 "~" H 6200 7350 50  0001 C CNN
	1    6200 7350
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR029
U 1 1 5FDEF60D
P 6450 7550
F 0 "#PWR029" H 6450 7300 50  0001 C CNN
F 1 "GND" H 6450 7400 20  0000 C CNN
F 2 "" H 6450 7550 50  0001 C CNN
F 3 "" H 6450 7550 50  0001 C CNN
	1    6450 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 7450 6450 7550
$Comp
L Device:C_Small C9
U 1 1 5FDEF618
P 6450 7350
F 0 "C9" H 6344 7333 20  0000 L CNN
F 1 "0.1uF" V 6542 7294 39  0000 L CNN
F 2 "" H 6450 7350 50  0001 C CNN
F 3 "~" H 6450 7350 50  0001 C CNN
	1    6450 7350
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR012
U 1 1 5FDF309E
P 4950 7550
F 0 "#PWR012" H 4950 7300 50  0001 C CNN
F 1 "GND" H 4950 7400 20  0000 C CNN
F 2 "" H 4950 7550 50  0001 C CNN
F 3 "" H 4950 7550 50  0001 C CNN
	1    4950 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 7450 4950 7550
$Comp
L Device:C_Small C3
U 1 1 5FDF30A9
P 4950 7350
F 0 "C3" H 4844 7333 20  0000 L CNN
F 1 "0.1uF" V 5042 7294 39  0000 L CNN
F 2 "" H 4950 7350 50  0001 C CNN
F 3 "~" H 4950 7350 50  0001 C CNN
	1    4950 7350
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR014
U 1 1 5FDF30B3
P 5200 7550
F 0 "#PWR014" H 5200 7300 50  0001 C CNN
F 1 "GND" H 5200 7400 20  0000 C CNN
F 2 "" H 5200 7550 50  0001 C CNN
F 3 "" H 5200 7550 50  0001 C CNN
	1    5200 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 7450 5200 7550
$Comp
L Device:C_Small C4
U 1 1 5FDF30BE
P 5200 7350
F 0 "C4" H 5094 7333 20  0000 L CNN
F 1 "0.1uF" V 5292 7294 39  0000 L CNN
F 2 "" H 5200 7350 50  0001 C CNN
F 3 "~" H 5200 7350 50  0001 C CNN
	1    5200 7350
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR016
U 1 1 5FDF30C8
P 5450 7550
F 0 "#PWR016" H 5450 7300 50  0001 C CNN
F 1 "GND" H 5450 7400 20  0000 C CNN
F 2 "" H 5450 7550 50  0001 C CNN
F 3 "" H 5450 7550 50  0001 C CNN
	1    5450 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 7450 5450 7550
$Comp
L Device:C_Small C5
U 1 1 5FDF30D3
P 5450 7350
F 0 "C5" H 5344 7333 20  0000 L CNN
F 1 "0.1uF" V 5542 7294 39  0000 L CNN
F 2 "" H 5450 7350 50  0001 C CNN
F 3 "~" H 5450 7350 50  0001 C CNN
	1    5450 7350
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR018
U 1 1 5FDF30DD
P 5700 7550
F 0 "#PWR018" H 5700 7300 50  0001 C CNN
F 1 "GND" H 5700 7400 20  0000 C CNN
F 2 "" H 5700 7550 50  0001 C CNN
F 3 "" H 5700 7550 50  0001 C CNN
	1    5700 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 7450 5700 7550
$Comp
L Device:C_Small C6
U 1 1 5FDF30E8
P 5700 7350
F 0 "C6" H 5594 7333 20  0000 L CNN
F 1 "0.1uF" V 5792 7294 39  0000 L CNN
F 2 "" H 5700 7350 50  0001 C CNN
F 3 "~" H 5700 7350 50  0001 C CNN
	1    5700 7350
	1    0    0    -1  
$EndComp
Text Label 5200 7050 1    50   ~ 0
DC2
Text Label 5450 7050 1    50   ~ 0
DC3
Text Label 5700 7050 1    50   ~ 0
DC4
Text Label 5950 7050 1    50   ~ 0
DC5
Text Label 6200 7050 1    50   ~ 0
DC6
Text Label 6450 7050 1    50   ~ 0
DC7
$Comp
L Device:C_Small C1
U 1 1 5FE61126
P 4400 7350
F 0 "C1" H 4250 7350 39  0000 L CNN
F 1 "22uF" V 4500 7300 39  0000 L CNN
F 2 "" H 4400 7350 50  0001 C CNN
F 3 "~" H 4400 7350 50  0001 C CNN
	1    4400 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5FE618EF
P 4700 7350
F 0 "C2" H 4550 7350 39  0000 L CNN
F 1 "27uF" V 4800 7300 39  0000 L CNN
F 2 "" H 4700 7350 50  0001 C CNN
F 3 "~" H 4700 7350 50  0001 C CNN
	1    4700 7350
	1    0    0    -1  
$EndComp
Text Label 4400 6750 1    50   ~ 0
Q1
Text Label 4700 6750 1    50   ~ 0
Q2
Wire Wire Line
	4400 7250 4400 7000
Wire Wire Line
	4700 7250 4700 7000
Wire Wire Line
	4650 7000 4700 7000
Connection ~ 4700 7000
Wire Wire Line
	4700 7000 4700 6750
Wire Wire Line
	4450 7000 4400 7000
Connection ~ 4400 7000
Wire Wire Line
	4400 7000 4400 6750
Wire Wire Line
	4400 7550 4400 7450
Wire Wire Line
	4700 7550 4700 7450
$Comp
L hitesh_custom:GND #PWR09
U 1 1 5FE8329F
P 4700 7550
F 0 "#PWR09" H 4700 7300 50  0001 C CNN
F 1 "GND" H 4700 7400 20  0000 C CNN
F 2 "" H 4700 7550 50  0001 C CNN
F 3 "" H 4700 7550 50  0001 C CNN
	1    4700 7550
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR07
U 1 1 5FE834D0
P 4400 7550
F 0 "#PWR07" H 4400 7300 50  0001 C CNN
F 1 "GND" H 4400 7400 20  0000 C CNN
F 2 "" H 4400 7550 50  0001 C CNN
F 3 "" H 4400 7550 50  0001 C CNN
	1    4400 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6850 5200 7250
Wire Wire Line
	5450 6850 5450 7250
Wire Wire Line
	5700 6850 5700 7250
Wire Wire Line
	5950 6850 5950 7250
Wire Wire Line
	6200 6850 6200 7250
Wire Wire Line
	6450 6850 6450 7250
Wire Wire Line
	4950 6850 4950 7250
Text Label 4950 7050 1    50   ~ 0
DC1
$Comp
L Device:C_Small C15
U 1 1 5FEA780B
P 10200 4100
F 0 "C15" H 10050 4100 39  0000 L CNN
F 1 "56pF" V 10300 4050 50  0000 L CNN
F 2 "" H 10200 4100 50  0001 C CNN
F 3 "~" H 10200 4100 50  0001 C CNN
	1    10200 4100
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR L2
U 1 1 5FEA8DDB
P 8450 4050
F 0 "L2" H 8450 4265 50  0000 C CNN
F 1 "0.027uH" H 8450 4174 50  0000 C CNN
F 2 "" H 8450 4050 50  0001 C CNN
F 3 "~" H 8450 4050 50  0001 C CNN
	1    8450 4050
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C13
U 1 1 5FEA9577
P 8450 3750
F 0 "C13" H 8300 3750 39  0000 L CNN
F 1 "3.9pF" V 8550 3700 39  0000 L CNN
F 2 "" H 8450 3750 50  0001 C CNN
F 3 "~" H 8450 3750 50  0001 C CNN
	1    8450 3750
	0    1    -1   0   
$EndComp
$Comp
L pspice:INDUCTOR L3
U 1 1 5FEA99FF
P 9150 3900
F 0 "L3" H 9150 4115 50  0000 C CNN
F 1 "0.027uH" H 9150 4024 50  0000 C CNN
F 2 "" H 9150 3900 50  0001 C CNN
F 3 "~" H 9150 3900 50  0001 C CNN
	1    9150 3900
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR L4
U 1 1 5FEAA127
P 9850 3900
F 0 "L4" H 9850 4115 50  0000 C CNN
F 1 "0.027uH" H 9850 4024 50  0000 C CNN
F 2 "" H 9850 3900 50  0001 C CNN
F 3 "~" H 9850 3900 50  0001 C CNN
	1    9850 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 5FEAA680
P 9500 4100
F 0 "C14" H 9350 4100 39  0000 L CNN
F 1 "8.2pF" V 9600 4050 39  0000 L CNN
F 2 "" H 9500 4100 50  0001 C CNN
F 3 "~" H 9500 4100 50  0001 C CNN
	1    9500 4100
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR L1
U 1 1 5FEAADD7
P 8150 3400
F 0 "L1" V 8196 3356 50  0000 R CNN
F 1 "0.027uH" V 8105 3356 50  0000 R CNN
F 2 "" H 8150 3400 50  0001 C CNN
F 3 "~" H 8150 3400 50  0001 C CNN
	1    8150 3400
	0    -1   1    0   
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5FEABE11
P 8150 4400
F 0 "C12" H 8000 4400 39  0000 L CNN
F 1 "3.9pF" V 8250 4350 39  0000 L CNN
F 2 "" H 8150 4400 50  0001 C CNN
F 3 "~" H 8150 4400 50  0001 C CNN
	1    8150 4400
	1    0    0    1   
$EndComp
Wire Wire Line
	8800 3750 8800 3900
Wire Wire Line
	8800 3900 8900 3900
Connection ~ 8800 3900
Wire Wire Line
	8800 3900 8800 4050
Wire Wire Line
	9400 3900 9500 3900
Wire Wire Line
	9500 4000 9500 3900
Connection ~ 9500 3900
Wire Wire Line
	9500 3900 9600 3900
Wire Wire Line
	8150 4300 8150 4050
Connection ~ 8150 4050
Wire Wire Line
	8150 4050 8200 4050
Wire Wire Line
	8150 3650 8150 3750
Connection ~ 8150 3750
Wire Wire Line
	8150 3750 8350 3750
$Comp
L Device:C_Small C11
U 1 1 5FEEAD15
P 8150 2950
F 0 "C11" H 8000 2950 39  0000 L CNN
F 1 "220pF" V 8250 2900 39  0000 L CNN
F 2 "" H 8150 2950 50  0001 C CNN
F 3 "~" H 8150 2950 50  0001 C CNN
	1    8150 2950
	1    0    0    1   
$EndComp
Wire Wire Line
	8150 3050 8150 3150
$Comp
L hitesh_custom:GND #PWR033
U 1 1 5FEF0392
P 8650 2750
F 0 "#PWR033" H 8650 2500 50  0001 C CNN
F 1 "GND" H 8655 2577 50  0000 C CNN
F 2 "" H 8650 2750 50  0001 C CNN
F 3 "" H 8650 2750 50  0001 C CNN
	1    8650 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2750 8150 2850
$Comp
L hitesh_custom:GND #PWR034
U 1 1 5FEF52F6
P 9500 4900
F 0 "#PWR034" H 9500 4650 50  0001 C CNN
F 1 "GND" H 9505 4727 50  0000 C CNN
F 2 "" H 9500 4900 50  0001 C CNN
F 3 "" H 9500 4900 50  0001 C CNN
	1    9500 4900
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR032
U 1 1 5FEFAA04
P 8150 4900
F 0 "#PWR032" H 8150 4650 50  0001 C CNN
F 1 "GND" H 8155 4727 50  0000 C CNN
F 2 "" H 8150 4900 50  0001 C CNN
F 3 "" H 8150 4900 50  0001 C CNN
	1    8150 4900
	-1   0    0    -1  
$EndComp
Text Label 7850 3750 2    50   ~ 0
RF1
Text Label 7850 4050 2    50   ~ 0
RF2
$Comp
L Device:Antenna AE1
U 1 1 5FF10B57
P 10600 3900
F 0 "AE1" V 10554 4030 50  0000 L CNN
F 1 "Antenna" V 10645 4030 50  0000 L CNN
F 2 "" H 10600 3900 50  0001 C CNN
F 3 "~" H 10600 3900 50  0001 C CNN
	1    10600 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 3950 6700 3950
$Comp
L Device:R_Small_US R4
U 1 1 5FDCF03C
P 6150 4700
F 0 "R4" H 6069 4722 20  0000 L CNN
F 1 "56K" V 6218 4679 20  0000 L CNN
F 2 "" H 6150 4700 50  0001 C CNN
F 3 "~" H 6150 4700 50  0001 C CNN
	1    6150 4700
	1    0    0    -1  
$EndComp
Text Label 6050 4500 3    50   ~ 0
DC7
Wire Wire Line
	5950 4350 5950 4900
Wire Wire Line
	6250 4350 6250 4900
Wire Wire Line
	6150 4900 6150 4800
Wire Wire Line
	6150 4350 6150 4600
Wire Wire Line
	6500 4050 6700 4050
Wire Wire Line
	6250 3500 6250 3300
Wire Wire Line
	6150 3500 6150 3300
Wire Wire Line
	6050 3500 6050 3300
Wire Wire Line
	5950 3500 5950 3300
Wire Wire Line
	5850 3500 5850 3300
Text Label 5400 4050 2    50   ~ 0
MISO
Text Label 5400 4150 2    50   ~ 0
SCLK
Text Label 5400 3950 2    50   ~ 0
GDO2
Wire Wire Line
	5400 3950 5600 3950
Wire Wire Line
	5400 3850 5600 3850
Wire Wire Line
	5400 3750 5600 3750
Text Label 5400 3850 2    50   ~ 0
DC1
Text Label 5400 3750 2    50   ~ 0
DC2
Wire Wire Line
	5600 4050 5400 4050
Wire Wire Line
	5400 4150 5600 4150
Wire Wire Line
	6500 3850 6700 3850
Wire Wire Line
	6500 3750 6700 3750
Wire Wire Line
	6500 4150 6700 4150
Text Label 6150 3300 1    50   ~ 0
DC3
Wire Wire Line
	5850 4500 5850 4350
Wire Wire Line
	6050 4500 6050 4350
Text Label 6250 3300 1    50   ~ 0
Q2
Text Label 6050 3300 1    50   ~ 0
Q1
Text Label 5850 3300 1    50   ~ 0
GDO0
Text Label 5950 3300 1    50   ~ 0
CSn
Text Label 5850 4500 3    50   ~ 0
MOSI
$Comp
L custom_sch_footprint:CC110L U3
U 1 1 5FCF2921
P 6050 3950
F 0 "U3" H 6000 4000 50  0000 L CNN
F 1 "CC110L" H 5900 3900 50  0000 L CNN
F 2 "" H 6050 3950 50  0001 C CNN
F 3 "" H 6050 3950 50  0001 C CNN
	1    6050 3950
	1    0    0    1   
$EndComp
Wire Wire Line
	1800 3550 2350 3550
Wire Wire Line
	1800 3650 2350 3650
Wire Wire Line
	1800 3750 2350 3750
Wire Wire Line
	7850 4050 8150 4050
Wire Wire Line
	7850 3750 8150 3750
Wire Wire Line
	8550 3750 8800 3750
Wire Wire Line
	8700 4050 8800 4050
Wire Wire Line
	10100 3900 10200 3900
Wire Wire Line
	10200 4000 10200 3900
Connection ~ 10200 3900
Wire Wire Line
	10200 3900 10400 3900
$Comp
L hitesh_custom:GND #PWR035
U 1 1 5FF665A7
P 10200 4900
F 0 "#PWR035" H 10200 4650 50  0001 C CNN
F 1 "GND" H 10205 4727 50  0000 C CNN
F 2 "" H 10200 4900 50  0001 C CNN
F 3 "" H 10200 4900 50  0001 C CNN
	1    10200 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4500 8150 4900
Wire Wire Line
	9500 4200 9500 4900
Wire Wire Line
	10200 4200 10200 4900
Wire Wire Line
	8150 2750 8650 2750
Text Label 1800 3200 2    50   ~ 0
DC8
Wire Wire Line
	1800 3200 2950 3200
$Comp
L hitesh_custom:GND #PWR031
U 1 1 5FF9B78A
P 6700 7550
F 0 "#PWR031" H 6700 7300 50  0001 C CNN
F 1 "GND" H 6700 7400 20  0000 C CNN
F 2 "" H 6700 7550 50  0001 C CNN
F 3 "" H 6700 7550 50  0001 C CNN
	1    6700 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 7450 6700 7550
$Comp
L Device:C_Small C10
U 1 1 5FF9B795
P 6700 7350
F 0 "C10" H 6594 7333 20  0000 L CNN
F 1 "0.1uF" V 6792 7294 39  0000 L CNN
F 2 "" H 6700 7350 50  0001 C CNN
F 3 "~" H 6700 7350 50  0001 C CNN
	1    6700 7350
	1    0    0    -1  
$EndComp
Text Label 6700 7050 1    50   ~ 0
DC8
Wire Wire Line
	6700 6850 6700 7250
$Comp
L hitesh_custom:GND #PWR05
U 1 1 5FFA739B
P 2950 4900
F 0 "#PWR05" H 2950 4650 50  0001 C CNN
F 1 "GND" H 2955 4727 50  0000 C CNN
F 2 "" H 2950 4900 50  0001 C CNN
F 3 "" H 2950 4900 50  0001 C CNN
	1    2950 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4650 2950 4900
Wire Wire Line
	3600 1800 3600 2050
$Comp
L Connector:Conn_01x03_Female J1
U 1 1 5FA57667
P 8000 1550
F 0 "J1" H 8150 1500 50  0000 C CNN
F 1 "programing" V 8050 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP4" H 8000 1550 50  0001 C CNN
F 3 "~" H 8000 1550 50  0001 C CNN
	1    8000 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	8800 1550 8200 1550
Wire Wire Line
	8200 1650 8200 2050
Wire Wire Line
	8200 850  8200 1450
Wire Wire Line
	4750 850  4750 1000
$Comp
L MCU_Microchip_ATtiny:ATtiny1604-SS U1
U 1 1 5FCE90F1
P 2950 3950
F 0 "U1" H 2950 3950 50  0000 C CNN
F 1 "ATtiny1604-SS" H 2950 3850 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2950 3950 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATtiny804_1604-Data-Sheet-40002028A.pdf" H 2950 3950 50  0001 C CNN
	1    2950 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3250 2950 3200
$Comp
L power:+3V0 #PWR0101
U 1 1 5FFF5199
P 7300 850
F 0 "#PWR0101" H 7300 700 50  0001 C CNN
F 1 "+3V0" V 7300 1100 50  0000 C CNN
F 2 "" H 7300 850 50  0001 C CNN
F 3 "" H 7300 850 50  0001 C CNN
	1    7300 850 
	1    0    0    -1  
$EndComp
$Comp
L sensor_module-rescue:PIR_digital_sensor-custom_sch_footprint U4
U 1 1 5FFF51A3
P 7300 1400
F 0 "U4" V 7300 1700 50  0000 L CNN
F 1 "PIR_digital_sensor" H 7000 1650 50  0000 L CNN
F 2 "CUSTOM:digital_PIR_sensor" H 7450 1250 50  0001 C CNN
F 3 "" H 7450 1250 50  0001 C CNN
	1    7300 1400
	0    1    1    0   
$EndComp
$Comp
L hitesh_custom:GND #PWR0102
U 1 1 5FFF51AE
P 7300 2050
F 0 "#PWR0102" H 7300 1800 50  0001 C CNN
F 1 "GND" H 7305 1877 50  0000 C CNN
F 2 "" H 7300 2050 50  0001 C CNN
F 3 "" H 7300 2050 50  0001 C CNN
	1    7300 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1700 7300 2050
Text Label 1800 3850 2    50   ~ 0
PIR_2
Wire Wire Line
	1800 3850 2350 3850
$Comp
L power:+3V0 #PWR0103
U 1 1 5FFFD89A
P 4950 6850
F 0 "#PWR0103" H 4950 6700 50  0001 C CNN
F 1 "+3V0" V 4950 7100 50  0000 C CNN
F 2 "" H 4950 6850 50  0001 C CNN
F 3 "" H 4950 6850 50  0001 C CNN
	1    4950 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR0104
U 1 1 5FFFE68D
P 5200 6850
F 0 "#PWR0104" H 5200 6700 50  0001 C CNN
F 1 "+3V0" V 5200 7100 50  0000 C CNN
F 2 "" H 5200 6850 50  0001 C CNN
F 3 "" H 5200 6850 50  0001 C CNN
	1    5200 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR0105
U 1 1 5FFFED01
P 5450 6850
F 0 "#PWR0105" H 5450 6700 50  0001 C CNN
F 1 "+3V0" V 5450 7100 50  0000 C CNN
F 2 "" H 5450 6850 50  0001 C CNN
F 3 "" H 5450 6850 50  0001 C CNN
	1    5450 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR0106
U 1 1 5FFFF062
P 5700 6850
F 0 "#PWR0106" H 5700 6700 50  0001 C CNN
F 1 "+3V0" V 5700 7100 50  0000 C CNN
F 2 "" H 5700 6850 50  0001 C CNN
F 3 "" H 5700 6850 50  0001 C CNN
	1    5700 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR0107
U 1 1 5FFFF351
P 5950 6850
F 0 "#PWR0107" H 5950 6700 50  0001 C CNN
F 1 "+3V0" V 5950 7100 50  0000 C CNN
F 2 "" H 5950 6850 50  0001 C CNN
F 3 "" H 5950 6850 50  0001 C CNN
	1    5950 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR0108
U 1 1 5FFFF640
P 6200 6850
F 0 "#PWR0108" H 6200 6700 50  0001 C CNN
F 1 "+3V0" V 6200 7100 50  0000 C CNN
F 2 "" H 6200 6850 50  0001 C CNN
F 3 "" H 6200 6850 50  0001 C CNN
	1    6200 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR0109
U 1 1 5FFFF923
P 6450 6850
F 0 "#PWR0109" H 6450 6700 50  0001 C CNN
F 1 "+3V0" V 6450 7100 50  0000 C CNN
F 2 "" H 6450 6850 50  0001 C CNN
F 3 "" H 6450 6850 50  0001 C CNN
	1    6450 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V0 #PWR0110
U 1 1 5FFFFBCE
P 6700 6850
F 0 "#PWR0110" H 6700 6700 50  0001 C CNN
F 1 "+3V0" V 6700 7100 50  0000 C CNN
F 2 "" H 6700 6850 50  0001 C CNN
F 3 "" H 6700 6850 50  0001 C CNN
	1    6700 6850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 60001977
P 4400 1450
F 0 "J2" H 4600 1350 50  0000 C CNN
F 1 "externa_battery" V 4500 1300 50  0000 C CNN
F 2 "" H 4400 1450 50  0001 C CNN
F 3 "~" H 4400 1450 50  0001 C CNN
	1    4400 1450
	-1   0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 6001BF60
P 4900 1550
F 0 "BT1" H 5100 1550 50  0000 L CNN
F 1 "Battery_Cell" V 5050 1400 50  0000 L CNN
F 2 "" V 4900 1610 50  0001 C CNN
F 3 "~" V 4900 1610 50  0001 C CNN
	1    4900 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1350 4900 1300
Wire Wire Line
	4900 1300 4750 1300
Wire Wire Line
	4900 1650 4900 1700
Wire Wire Line
	4900 1700 4750 1700
Wire Wire Line
	4750 1700 4750 2050
Wire Wire Line
	7300 850  7300 1100
Connection ~ 4750 1000
Wire Wire Line
	4750 1000 4750 1300
Wire Wire Line
	4600 1450 4600 1300
Wire Wire Line
	4600 1300 4750 1300
Connection ~ 4750 1300
Wire Wire Line
	4600 1550 4600 1700
Wire Wire Line
	4600 1700 4750 1700
Connection ~ 4750 1700
Wire Wire Line
	6050 850  6050 1100
Wire Wire Line
	6650 1400 7000 1400
Text Label 6650 1400 0    50   ~ 0
PIR_2
Wire Wire Line
	6050 1700 6050 2050
$Comp
L hitesh_custom:GND #PWR023
U 1 1 5FA2BFB9
P 6050 2050
F 0 "#PWR023" H 6050 1800 50  0001 C CNN
F 1 "GND" H 6055 1877 50  0000 C CNN
F 2 "" H 6050 2050 50  0001 C CNN
F 3 "" H 6050 2050 50  0001 C CNN
	1    6050 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1400 5750 1400
$Comp
L sensor_module-rescue:PIR_digital_sensor-custom_sch_footprint U2
U 1 1 5FA5140B
P 6050 1400
F 0 "U2" V 6050 1700 50  0000 L CNN
F 1 "PIR_digital_sensor" H 5750 1650 50  0000 L CNN
F 2 "CUSTOM:digital_PIR_sensor" H 6200 1250 50  0001 C CNN
F 3 "" H 6200 1250 50  0001 C CNN
	1    6050 1400
	0    1    1    0   
$EndComp
$Comp
L power:+3V0 #PWR010
U 1 1 5FA6FBEC
P 6050 850
F 0 "#PWR010" H 6050 700 50  0001 C CNN
F 1 "+3V0" V 6050 1100 50  0000 C CNN
F 2 "" H 6050 850 50  0001 C CNN
F 3 "" H 6050 850 50  0001 C CNN
	1    6050 850 
	1    0    0    -1  
$EndComp
Text Label 5400 1400 0    50   ~ 0
PIR_1
$EndSCHEMATC
