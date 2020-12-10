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
Text Label 2400 4100 0    50   ~ 0
MOSI
Text Label 2400 3900 0    50   ~ 0
MISO
Text Label 2400 4000 0    50   ~ 0
SCLK
Text Label 2400 3600 0    50   ~ 0
CSn
Text Label 2400 3800 0    50   ~ 0
GDO2
Text Label 2400 3700 0    50   ~ 0
GDO0
Wire Wire Line
	2050 3600 2400 3600
Wire Wire Line
	2050 3700 2400 3700
Wire Wire Line
	2050 3800 2400 3800
Wire Wire Line
	2050 3900 2400 3900
Wire Wire Line
	2050 4000 2400 4000
Wire Wire Line
	2050 4100 2400 4100
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
Text Label 5200 3700 0    50   ~ 0
DC4
Text Label 5200 4000 0    50   ~ 0
DC5
Text Label 5200 4100 0    50   ~ 0
DC6
$Comp
L hitesh_custom:GND #PWR019
U 1 1 5FDCA090
P 4450 4850
F 0 "#PWR019" H 4450 4600 50  0001 C CNN
F 1 "GND" H 4455 4677 50  0000 C CNN
F 2 "" H 4450 4850 50  0001 C CNN
F 3 "" H 4450 4850 50  0001 C CNN
	1    4450 4850
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR024
U 1 1 5FDCA63E
P 4650 4850
F 0 "#PWR024" H 4650 4600 50  0001 C CNN
F 1 "GND" H 4655 4677 50  0000 C CNN
F 2 "" H 4650 4850 50  0001 C CNN
F 3 "" H 4650 4850 50  0001 C CNN
	1    4650 4850
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR027
U 1 1 5FDCA951
P 4750 4850
F 0 "#PWR027" H 4750 4600 50  0001 C CNN
F 1 "GND" H 4755 4677 50  0000 C CNN
F 2 "" H 4750 4850 50  0001 C CNN
F 3 "" H 4750 4850 50  0001 C CNN
	1    4750 4850
	1    0    0    -1  
$EndComp
Text Label 5200 3800 0    50   ~ 0
RF1
Text Label 5200 3900 0    50   ~ 0
RF2
$Comp
L Device:C_Small C7
U 1 1 5FD4EB93
P 5950 7350
F 0 "C7" H 5844 7333 20  0000 L CNN
F 1 "0.1uF" V 6042 7294 39  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5950 7350 50  0001 C CNN
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
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6200 7350 50  0001 C CNN
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
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6450 7350 50  0001 C CNN
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
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4950 7350 50  0001 C CNN
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
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5200 7350 50  0001 C CNN
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
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5450 7350 50  0001 C CNN
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
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5700 7350 50  0001 C CNN
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
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4400 7350 50  0001 C CNN
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
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4700 7350 50  0001 C CNN
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
P 8600 4050
F 0 "C15" H 8450 4050 39  0000 L CNN
F 1 "56pF" V 8700 4000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8600 4050 50  0001 C CNN
F 3 "~" H 8600 4050 50  0001 C CNN
	1    8600 4050
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR L2
U 1 1 5FEA8DDB
P 6850 4000
F 0 "L2" H 6850 4215 50  0000 C CNN
F 1 "0.027uH" H 6850 4124 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 6850 4000 50  0001 C CNN
F 3 "~" H 6850 4000 50  0001 C CNN
	1    6850 4000
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C13
U 1 1 5FEA9577
P 6850 3700
F 0 "C13" V 6750 3650 39  0000 L CNN
F 1 "3.9pF" V 6950 3650 39  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6850 3700 50  0001 C CNN
F 3 "~" H 6850 3700 50  0001 C CNN
	1    6850 3700
	0    1    -1   0   
$EndComp
$Comp
L pspice:INDUCTOR L3
U 1 1 5FEA99FF
P 7550 3850
F 0 "L3" H 7550 4065 50  0000 C CNN
F 1 "0.027uH" H 7550 3974 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 7550 3850 50  0001 C CNN
F 3 "~" H 7550 3850 50  0001 C CNN
	1    7550 3850
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR L4
U 1 1 5FEAA127
P 8250 3850
F 0 "L4" H 8250 4065 50  0000 C CNN
F 1 "0.027uH" H 8250 3974 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 8250 3850 50  0001 C CNN
F 3 "~" H 8250 3850 50  0001 C CNN
	1    8250 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 5FEAA680
P 7900 4050
F 0 "C14" H 7750 4050 39  0000 L CNN
F 1 "8.2pF" V 8000 4000 39  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7900 4050 50  0001 C CNN
F 3 "~" H 7900 4050 50  0001 C CNN
	1    7900 4050
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR L1
U 1 1 5FEAADD7
P 6550 3350
F 0 "L1" V 6596 3306 50  0000 R CNN
F 1 "0.027uH" V 6505 3306 50  0000 R CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 6550 3350 50  0001 C CNN
F 3 "~" H 6550 3350 50  0001 C CNN
	1    6550 3350
	0    -1   1    0   
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5FEABE11
P 6550 4350
F 0 "C12" H 6400 4350 39  0000 L CNN
F 1 "3.9pF" V 6650 4300 39  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6550 4350 50  0001 C CNN
F 3 "~" H 6550 4350 50  0001 C CNN
	1    6550 4350
	1    0    0    1   
$EndComp
Wire Wire Line
	7200 3700 7200 3850
Wire Wire Line
	7200 3850 7300 3850
Connection ~ 7200 3850
Wire Wire Line
	7200 3850 7200 4000
Wire Wire Line
	7800 3850 7900 3850
Wire Wire Line
	7900 3950 7900 3850
Connection ~ 7900 3850
Wire Wire Line
	7900 3850 8000 3850
Wire Wire Line
	6550 4250 6550 4000
Connection ~ 6550 4000
Wire Wire Line
	6550 4000 6600 4000
Wire Wire Line
	6550 3600 6550 3700
Connection ~ 6550 3700
Wire Wire Line
	6550 3700 6750 3700
$Comp
L Device:C_Small C11
U 1 1 5FEEAD15
P 6550 2900
F 0 "C11" H 6400 2900 39  0000 L CNN
F 1 "220pF" V 6650 2850 39  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6550 2900 50  0001 C CNN
F 3 "~" H 6550 2900 50  0001 C CNN
	1    6550 2900
	1    0    0    1   
$EndComp
Wire Wire Line
	6550 3000 6550 3100
$Comp
L hitesh_custom:GND #PWR033
U 1 1 5FEF0392
P 7050 2700
F 0 "#PWR033" H 7050 2450 50  0001 C CNN
F 1 "GND" H 7055 2527 50  0000 C CNN
F 2 "" H 7050 2700 50  0001 C CNN
F 3 "" H 7050 2700 50  0001 C CNN
	1    7050 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2700 6550 2800
$Comp
L hitesh_custom:GND #PWR034
U 1 1 5FEF52F6
P 7900 4850
F 0 "#PWR034" H 7900 4600 50  0001 C CNN
F 1 "GND" H 7905 4677 50  0000 C CNN
F 2 "" H 7900 4850 50  0001 C CNN
F 3 "" H 7900 4850 50  0001 C CNN
	1    7900 4850
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:GND #PWR032
U 1 1 5FEFAA04
P 6550 4850
F 0 "#PWR032" H 6550 4600 50  0001 C CNN
F 1 "GND" H 6555 4677 50  0000 C CNN
F 2 "" H 6550 4850 50  0001 C CNN
F 3 "" H 6550 4850 50  0001 C CNN
	1    6550 4850
	-1   0    0    -1  
$EndComp
Text Label 6250 3700 2    50   ~ 0
RF1
Text Label 6250 4000 2    50   ~ 0
RF2
$Comp
L Device:Antenna AE1
U 1 1 5FF10B57
P 9050 5150
F 0 "AE1" H 8970 5047 50  0000 R CNN
F 1 "Antenna" H 8970 5138 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 9050 5150 50  0001 C CNN
F 3 "~" H 9050 5150 50  0001 C CNN
	1    9050 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 3900 5200 3900
$Comp
L Device:R_Small_US R4
U 1 1 5FDCF03C
P 4650 4650
F 0 "R4" H 4569 4672 20  0000 L CNN
F 1 "56K" V 4718 4629 20  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4650 4650 50  0001 C CNN
F 3 "~" H 4650 4650 50  0001 C CNN
	1    4650 4650
	1    0    0    -1  
$EndComp
Text Label 4550 4450 3    50   ~ 0
DC7
Wire Wire Line
	4450 4300 4450 4850
Wire Wire Line
	4750 4300 4750 4850
Wire Wire Line
	4650 4850 4650 4750
Wire Wire Line
	4650 4300 4650 4550
Wire Wire Line
	5000 4000 5200 4000
Wire Wire Line
	4750 3450 4750 3250
Wire Wire Line
	4650 3450 4650 3250
Wire Wire Line
	4550 3450 4550 3250
Wire Wire Line
	4450 3450 4450 3250
Wire Wire Line
	4350 3450 4350 3250
Text Label 3900 4000 2    50   ~ 0
MISO
Text Label 3900 4100 2    50   ~ 0
SCLK
Text Label 3900 3900 2    50   ~ 0
GDO2
Wire Wire Line
	3900 3900 4100 3900
Wire Wire Line
	3900 3800 4100 3800
Wire Wire Line
	3900 3700 4100 3700
Text Label 3900 3800 2    50   ~ 0
DC1
Text Label 3900 3700 2    50   ~ 0
DC2
Wire Wire Line
	4100 4000 3900 4000
Wire Wire Line
	3900 4100 4100 4100
Wire Wire Line
	5000 3800 5200 3800
Wire Wire Line
	5000 3700 5200 3700
Wire Wire Line
	5000 4100 5200 4100
Text Label 4650 3250 1    50   ~ 0
DC3
Wire Wire Line
	4350 4450 4350 4300
Wire Wire Line
	4550 4450 4550 4300
Text Label 4750 3250 1    50   ~ 0
Q2
Text Label 4550 3250 1    50   ~ 0
Q1
Text Label 4350 3250 1    50   ~ 0
GDO0
Text Label 4450 3250 1    50   ~ 0
CSn
Text Label 4350 4450 3    50   ~ 0
MOSI
$Comp
L custom_sch_footprint:CC110L U3
U 1 1 5FCF2921
P 4550 3900
F 0 "U3" H 4500 3950 50  0000 L CNN
F 1 "CC110L" H 4400 3850 50  0000 L CNN
F 2 "Package_DFN_QFN:QFN-20-1EP_5x5mm_P0.65mm_EP3.35x3.35mm" H 4550 3900 50  0001 C CNN
F 3 "" H 4550 3900 50  0001 C CNN
	1    4550 3900
	1    0    0    1   
$EndComp
Wire Wire Line
	6250 4000 6550 4000
Wire Wire Line
	6250 3700 6550 3700
Wire Wire Line
	6950 3700 7200 3700
Wire Wire Line
	7100 4000 7200 4000
Wire Wire Line
	8500 3850 8600 3850
Wire Wire Line
	8600 3950 8600 3850
Connection ~ 8600 3850
$Comp
L hitesh_custom:GND #PWR035
U 1 1 5FF665A7
P 8600 4850
F 0 "#PWR035" H 8600 4600 50  0001 C CNN
F 1 "GND" H 8605 4677 50  0000 C CNN
F 2 "" H 8600 4850 50  0001 C CNN
F 3 "" H 8600 4850 50  0001 C CNN
	1    8600 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4450 6550 4850
Wire Wire Line
	7900 4150 7900 4850
Wire Wire Line
	8600 4150 8600 4850
Wire Wire Line
	6550 2700 7050 2700
$Comp
L hitesh_custom:GND #PWR05
U 1 1 5FFA739B
P 2400 4250
F 0 "#PWR05" H 2400 4000 50  0001 C CNN
F 1 "GND" H 2405 4077 50  0000 C CNN
F 2 "" H 2400 4250 50  0001 C CNN
F 3 "" H 2400 4250 50  0001 C CNN
	1    2400 4250
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:+3.3V #PWR01
U 1 1 6006DD9D
P 2400 3450
F 0 "#PWR01" H 2400 3300 50  0001 C CNN
F 1 "+3.3V" H 2415 3623 50  0000 C CNN
F 2 "" H 2400 3450 50  0001 C CNN
F 3 "" H 2400 3450 50  0001 C CNN
	1    2400 3450
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:+3.3V #PWR02
U 1 1 6006E27E
P 4950 6850
F 0 "#PWR02" H 4950 6700 50  0001 C CNN
F 1 "+3.3V" V 4950 7100 50  0000 C CNN
F 2 "" H 4950 6850 50  0001 C CNN
F 3 "" H 4950 6850 50  0001 C CNN
	1    4950 6850
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:+3.3V #PWR03
U 1 1 6007093B
P 5200 6850
F 0 "#PWR03" H 5200 6700 50  0001 C CNN
F 1 "+3.3V" V 5200 7100 50  0000 C CNN
F 2 "" H 5200 6850 50  0001 C CNN
F 3 "" H 5200 6850 50  0001 C CNN
	1    5200 6850
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:+3.3V #PWR04
U 1 1 60070E93
P 5450 6850
F 0 "#PWR04" H 5450 6700 50  0001 C CNN
F 1 "+3.3V" V 5450 7100 50  0000 C CNN
F 2 "" H 5450 6850 50  0001 C CNN
F 3 "" H 5450 6850 50  0001 C CNN
	1    5450 6850
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:+3.3V #PWR06
U 1 1 60071135
P 5700 6850
F 0 "#PWR06" H 5700 6700 50  0001 C CNN
F 1 "+3.3V" V 5700 7100 50  0000 C CNN
F 2 "" H 5700 6850 50  0001 C CNN
F 3 "" H 5700 6850 50  0001 C CNN
	1    5700 6850
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:+3.3V #PWR08
U 1 1 60071437
P 5950 6850
F 0 "#PWR08" H 5950 6700 50  0001 C CNN
F 1 "+3.3V" V 5950 7100 50  0000 C CNN
F 2 "" H 5950 6850 50  0001 C CNN
F 3 "" H 5950 6850 50  0001 C CNN
	1    5950 6850
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:+3.3V #PWR010
U 1 1 60071696
P 6200 6850
F 0 "#PWR010" H 6200 6700 50  0001 C CNN
F 1 "+3.3V" V 6200 7100 50  0000 C CNN
F 2 "" H 6200 6850 50  0001 C CNN
F 3 "" H 6200 6850 50  0001 C CNN
	1    6200 6850
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:+3.3V #PWR011
U 1 1 60071A08
P 6450 6850
F 0 "#PWR011" H 6450 6700 50  0001 C CNN
F 1 "+3.3V" V 6450 7100 50  0000 C CNN
F 2 "" H 6450 6850 50  0001 C CNN
F 3 "" H 6450 6850 50  0001 C CNN
	1    6450 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4250 2400 4200
Wire Wire Line
	2400 4200 2050 4200
Wire Wire Line
	2400 3450 2400 3500
Wire Wire Line
	2400 3500 2050 3500
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 60076859
P 1850 3800
F 0 "J1" H 2050 3800 50  0000 C CNN
F 1 "Conn_01x08" V 1950 3800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1850 3800 50  0001 C CNN
F 3 "~" H 1850 3800 50  0001 C CNN
	1    1850 3800
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 6007EBAB
P 9050 4050
F 0 "C10" H 8900 4050 39  0000 L CNN
F 1 "0.9pF" V 9150 4000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9050 4050 50  0001 C CNN
F 3 "~" H 9050 4050 50  0001 C CNN
	1    9050 4050
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR L5
U 1 1 6007F26B
P 9450 4500
F 0 "L5" H 9450 4715 50  0000 C CNN
F 1 "0.056uH" H 9450 4624 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 9450 4500 50  0001 C CNN
F 3 "~" H 9450 4500 50  0001 C CNN
	1    9450 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 6007FAAD
P 9450 3850
F 0 "C16" H 9300 3850 39  0000 L CNN
F 1 "0.9pF" V 9550 3800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9450 3850 50  0001 C CNN
F 3 "~" H 9450 3850 50  0001 C CNN
	1    9450 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	9050 4950 9050 4500
Connection ~ 9050 4500
Wire Wire Line
	9050 4500 9200 4500
$Comp
L hitesh_custom:GND #PWR015
U 1 1 6008A1B8
P 9850 4500
F 0 "#PWR015" H 9850 4250 50  0001 C CNN
F 1 "GND" H 9855 4327 50  0000 C CNN
F 2 "" H 9850 4500 50  0001 C CNN
F 3 "" H 9850 4500 50  0001 C CNN
	1    9850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 4500 9850 4500
$Comp
L hitesh_custom:GND #PWR013
U 1 1 6008C96F
P 9850 3850
F 0 "#PWR013" H 9850 3600 50  0001 C CNN
F 1 "GND" H 9855 3677 50  0000 C CNN
F 2 "" H 9850 3850 50  0001 C CNN
F 3 "" H 9850 3850 50  0001 C CNN
	1    9850 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 3850 9850 3850
Wire Wire Line
	8600 3850 9050 3850
Wire Wire Line
	9050 4150 9050 4500
Wire Wire Line
	9050 3950 9050 3850
Connection ~ 9050 3850
Wire Wire Line
	9050 3850 9350 3850
$EndSCHEMATC
