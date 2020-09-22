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
	4700 2650 4700 2500
Wire Wire Line
	4700 2500 4900 2500
Wire Wire Line
	4600 2650 4600 2500
Wire Wire Line
	4600 2500 4700 2500
Connection ~ 4700 2500
Wire Wire Line
	4500 2650 4500 2500
Wire Wire Line
	4500 2500 4600 2500
Connection ~ 4600 2500
Wire Wire Line
	4400 2650 4400 2500
Wire Wire Line
	4400 2500 4500 2500
Connection ~ 4500 2500
$Comp
L power:GNDREF #PWR07
U 1 1 5F6A7202
P 4900 2500
F 0 "#PWR07" H 4900 2250 50  0001 C CNN
F 1 "GNDREF" H 4905 2327 50  0000 C CNN
F 2 "" H 4900 2500 50  0001 C CNN
F 3 "" H 4900 2500 50  0001 C CNN
	1    4900 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5F6A8526
P 4400 2150
F 0 "C5" H 4492 2196 50  0000 L CNN
F 1 "100pF" H 4492 2105 50  0000 L CNN
F 2 "" H 4400 2150 50  0001 C CNN
F 3 "~" H 4400 2150 50  0001 C CNN
	1    4400 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2650 4300 2050
Wire Wire Line
	4300 2050 4400 2050
$Comp
L power:GNDREF #PWR06
U 1 1 5F6A8FDC
P 4400 2250
F 0 "#PWR06" H 4400 2000 50  0001 C CNN
F 1 "GNDREF" H 4405 2077 50  0000 C CNN
F 2 "" H 4400 2250 50  0001 C CNN
F 3 "" H 4400 2250 50  0001 C CNN
	1    4400 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5F6A9509
P 4400 1700
F 0 "C4" H 4492 1746 50  0000 L CNN
F 1 "1.0uF" H 4492 1655 50  0000 L CNN
F 2 "" H 4400 1700 50  0001 C CNN
F 3 "~" H 4400 1700 50  0001 C CNN
	1    4400 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR05
U 1 1 5F6A98C3
P 4400 1800
F 0 "#PWR05" H 4400 1550 50  0001 C CNN
F 1 "GNDREF" H 4405 1627 50  0000 C CNN
F 2 "" H 4400 1800 50  0001 C CNN
F 3 "" H 4400 1800 50  0001 C CNN
	1    4400 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2650 4200 1600
Wire Wire Line
	4200 1600 4400 1600
Wire Wire Line
	4000 2650 4000 2300
Wire Wire Line
	4000 2300 3700 2300
$Comp
L power:GNDREF #PWR04
U 1 1 5F6AA738
P 3700 2500
F 0 "#PWR04" H 3700 2250 50  0001 C CNN
F 1 "GNDREF" H 3705 2327 50  0000 C CNN
F 2 "" H 3700 2500 50  0001 C CNN
F 3 "" H 3700 2500 50  0001 C CNN
	1    3700 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5F6A9EB2
P 3700 2400
F 0 "C3" H 3792 2446 50  0000 L CNN
F 1 "4.7uF" H 3792 2355 50  0000 L CNN
F 2 "" H 3700 2400 50  0001 C CNN
F 3 "~" H 3700 2400 50  0001 C CNN
	1    3700 2400
	1    0    0    -1  
$EndComp
$Comp
L NORDIC:nRF52811 U1
U 1 1 5F6A5CBF
P 4350 3350
F 0 "U1" H 5144 3371 50  0000 L CNN
F 1 "nRF52811" H 5144 3280 50  0000 L CNN
F 2 "" H 5000 3650 50  0001 C CNN
F 3 "" H 5000 3650 50  0001 C CNN
	1    4350 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR01
U 1 1 5F6AEF6D
P 3200 2500
F 0 "#PWR01" H 3200 2250 50  0001 C CNN
F 1 "GNDREF" H 3205 2327 50  0000 C CNN
F 2 "" H 3200 2500 50  0001 C CNN
F 3 "" H 3200 2500 50  0001 C CNN
	1    3200 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5F6AEF77
P 3200 2400
F 0 "C1" H 3292 2446 50  0000 L CNN
F 1 "100nF" H 3292 2355 50  0000 L CNN
F 2 "" H 3200 2400 50  0001 C CNN
F 3 "~" H 3200 2400 50  0001 C CNN
	1    3200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3000 3600 2300
Wire Wire Line
	3600 2300 3200 2300
$Comp
L power:GNDREF #PWR02
U 1 1 5F6B0800
P 3500 3900
F 0 "#PWR02" H 3500 3650 50  0001 C CNN
F 1 "GNDREF" H 3505 3727 50  0000 C CNN
F 2 "" H 3500 3900 50  0001 C CNN
F 3 "" H 3500 3900 50  0001 C CNN
	1    3500 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3700 3500 3700
Wire Wire Line
	3500 3700 3500 3800
Wire Wire Line
	3600 3800 3500 3800
Connection ~ 3500 3800
Wire Wire Line
	3500 3800 3500 3900
$Comp
L power:GNDREF #PWR03
U 1 1 5F6B2572
P 3500 4450
F 0 "#PWR03" H 3500 4200 50  0001 C CNN
F 1 "GNDREF" H 3505 4277 50  0000 C CNN
F 2 "" H 3500 4450 50  0001 C CNN
F 3 "" H 3500 4450 50  0001 C CNN
	1    3500 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5F6B2578
P 3500 4350
F 0 "C2" H 3592 4396 50  0000 L CNN
F 1 "100nF" H 3592 4305 50  0000 L CNN
F 2 "" H 3500 4350 50  0001 C CNN
F 3 "~" H 3500 4350 50  0001 C CNN
	1    3500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4250 3500 4100
Wire Wire Line
	3500 4100 4000 4100
$Comp
L power:GNDREF #PWR08
U 1 1 5F6B4446
P 6300 3500
F 0 "#PWR08" H 6300 3250 50  0001 C CNN
F 1 "GNDREF" H 6305 3327 50  0000 C CNN
F 2 "" H 6300 3500 50  0001 C CNN
F 3 "" H 6300 3500 50  0001 C CNN
	1    6300 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5F6B444C
P 6300 3400
F 0 "C8" H 6392 3446 50  0000 L CNN
F 1 "100nF" H 6392 3355 50  0000 L CNN
F 2 "" H 6300 3400 50  0001 C CNN
F 3 "~" H 6300 3400 50  0001 C CNN
	1    6300 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L1
U 1 1 5F6B635C
P 5950 3300
F 0 "L1" V 6135 3300 50  0000 C CNN
F 1 "2.2nH" V 6044 3300 50  0000 C CNN
F 2 "" H 5950 3300 50  0001 C CNN
F 3 "~" H 5950 3300 50  0001 C CNN
	1    5950 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 3300 5850 3300
Wire Wire Line
	6050 3300 6300 3300
Wire Wire Line
	5100 3200 5650 3200
Wire Wire Line
	5650 3200 5650 3500
Wire Wire Line
	5650 3500 6300 3500
Connection ~ 6300 3500
$Comp
L Device:Crystal Y1
U 1 1 5F6C46D2
P 5750 2550
F 0 "Y1" V 5704 2681 50  0000 L CNN
F 1 "32MHz" V 5795 2681 50  0000 L CNN
F 2 "" H 5750 2550 50  0001 C CNN
F 3 "~" H 5750 2550 50  0001 C CNN
	1    5750 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3000 5250 3000
Wire Wire Line
	5100 3100 5350 3100
Wire Wire Line
	5350 3100 5350 2800
$Comp
L Device:C_Small C6
U 1 1 5F6C6939
P 6300 2300
F 0 "C6" V 6071 2300 50  0000 C CNN
F 1 "12pF" V 6162 2300 50  0000 C CNN
F 2 "" H 6300 2300 50  0001 C CNN
F 3 "~" H 6300 2300 50  0001 C CNN
	1    6300 2300
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5F6C75CE
P 6300 2800
F 0 "C7" V 6071 2800 50  0000 C CNN
F 1 "12pF" V 6162 2800 50  0000 C CNN
F 2 "" H 6300 2800 50  0001 C CNN
F 3 "~" H 6300 2800 50  0001 C CNN
	1    6300 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 2300 6700 2300
Wire Wire Line
	6700 2800 6400 2800
$Comp
L power:GNDREF #PWR09
U 1 1 5F6C9EA8
P 6700 2800
F 0 "#PWR09" H 6700 2550 50  0001 C CNN
F 1 "GNDREF" H 6705 2627 50  0000 C CNN
F 2 "" H 6700 2800 50  0001 C CNN
F 3 "" H 6700 2800 50  0001 C CNN
	1    6700 2800
	1    0    0    -1  
$EndComp
Connection ~ 6700 2800
Wire Wire Line
	5350 2800 5750 2800
Wire Wire Line
	5250 2300 5250 3000
Wire Wire Line
	5250 2300 5750 2300
Wire Wire Line
	5750 2400 5750 2300
Connection ~ 5750 2300
Wire Wire Line
	5750 2300 6200 2300
Wire Wire Line
	5750 2700 5750 2800
Connection ~ 5750 2800
Wire Wire Line
	5750 2800 6200 2800
Wire Wire Line
	6700 2300 6700 2800
$Comp
L Device:L_Small L2
U 1 1 5F6CCDDC
P 6700 3300
F 0 "L2" V 6885 3300 50  0000 C CNN
F 1 "3.3nH" V 6794 3300 50  0000 C CNN
F 2 "" H 6700 3300 50  0001 C CNN
F 3 "~" H 6700 3300 50  0001 C CNN
	1    6700 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 3300 6600 3300
Connection ~ 6300 3300
$EndSCHEMATC
