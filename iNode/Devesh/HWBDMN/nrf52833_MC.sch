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
$Comp
L Device:LED_Dual_CCA D?
U 1 1 600A646B
P 9950 3400
AR Path="/600A646B" Ref="D?"  Part="1" 
AR Path="/600A1DAF/600A646B" Ref="D4"  Part="1" 
F 0 "D4" H 9950 3053 50  0000 C CNN
F 1 "Relay_Idication" H 9950 3144 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 10000 3400 50  0001 C CNN
F 3 "~" H 10000 3400 50  0001 C CNN
	1    9950 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 600A6471
P 9450 3300
AR Path="/600A6471" Ref="R?"  Part="1" 
AR Path="/600A1DAF/600A6471" Ref="R5"  Part="1" 
F 0 "R5" V 9245 3300 50  0000 C CNN
F 1 "220" V 9336 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9450 3300 50  0001 C CNN
F 3 "~" H 9450 3300 50  0001 C CNN
	1    9450 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 600A6477
P 9450 3500
AR Path="/600A6477" Ref="R?"  Part="1" 
AR Path="/600A1DAF/600A6477" Ref="R6"  Part="1" 
F 0 "R6" V 9650 3500 50  0000 C CNN
F 1 "220" V 9550 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9450 3500 50  0001 C CNN
F 3 "~" H 9450 3500 50  0001 C CNN
	1    9450 3500
	0    1    1    0   
$EndComp
Text Label 8700 3300 0    39   ~ 0
Relay_Idication_ON
Text Label 8700 3500 0    39   ~ 0
Relay_Idication_OFF
Wire Wire Line
	9550 3300 9650 3300
Wire Wire Line
	9550 3500 9650 3500
$Comp
L power:+3.3V #PWR?
U 1 1 600A6481
P 10450 3400
AR Path="/600A6481" Ref="#PWR?"  Part="1" 
AR Path="/600A1DAF/600A6481" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 10450 3250 50  0001 C CNN
F 1 "+3.3V" V 10450 3500 50  0000 L CNN
F 2 "" H 10450 3400 50  0001 C CNN
F 3 "" H 10450 3400 50  0001 C CNN
	1    10450 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 600A6487
P 9450 4150
AR Path="/600A6487" Ref="R?"  Part="1" 
AR Path="/600A1DAF/600A6487" Ref="R7"  Part="1" 
F 0 "R7" V 9245 4150 50  0000 C CNN
F 1 "220" V 9336 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9450 4150 50  0001 C CNN
F 3 "~" H 9450 4150 50  0001 C CNN
	1    9450 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9650 4150 9550 4150
Text Label 8700 4150 0    39   ~ 0
DB_mode
$Comp
L Device:LED D?
U 1 1 600A648F
P 9800 2650
AR Path="/600A648F" Ref="D?"  Part="1" 
AR Path="/600A1DAF/600A648F" Ref="D2"  Part="1" 
F 0 "D2" H 9793 2866 50  0000 C CNN
F 1 "motion_indicator" H 9793 2775 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 9800 2650 50  0001 C CNN
F 3 "~" H 9800 2650 50  0001 C CNN
	1    9800 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 600A6495
P 9450 2650
AR Path="/600A6495" Ref="R?"  Part="1" 
AR Path="/600A1DAF/600A6495" Ref="R4"  Part="1" 
F 0 "R4" V 9245 2650 50  0000 C CNN
F 1 "220" V 9336 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9450 2650 50  0001 C CNN
F 3 "~" H 9450 2650 50  0001 C CNN
	1    9450 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9650 2650 9550 2650
Text Label 8700 2650 0    39   ~ 0
motion_indicator
$Comp
L power:+3.3V #PWR?
U 1 1 600A649D
P 10400 2650
AR Path="/600A649D" Ref="#PWR?"  Part="1" 
AR Path="/600A1DAF/600A649D" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 10400 2500 50  0001 C CNN
F 1 "+3.3V" V 10400 2900 50  0000 C CNN
F 2 "" H 10400 2650 50  0001 C CNN
F 3 "" H 10400 2650 50  0001 C CNN
	1    10400 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	8700 3300 9350 3300
Wire Wire Line
	8700 3500 9350 3500
$Comp
L Device:LED D?
U 1 1 600A64A5
P 9800 4150
AR Path="/600A64A5" Ref="D?"  Part="1" 
AR Path="/600A1DAF/600A64A5" Ref="D3"  Part="1" 
F 0 "D3" H 9793 4366 50  0000 C CNN
F 1 "LED" H 9793 4275 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 9800 4150 50  0001 C CNN
F 3 "~" H 9800 4150 50  0001 C CNN
	1    9800 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 3400 10450 3400
Wire Wire Line
	9950 2650 10400 2650
Wire Wire Line
	8700 4150 9350 4150
Wire Wire Line
	8700 2650 9350 2650
Wire Wire Line
	5700 1750 5700 2300
Wire Wire Line
	3700 3200 4550 3200
Wire Wire Line
	3700 3000 4550 3000
Text Label 3700 3000 0    50   ~ 0
DC2
Wire Wire Line
	6450 3000 7250 3000
Text Label 7250 3000 2    50   ~ 0
DC1
Wire Wire Line
	6450 4100 7250 4100
Wire Wire Line
	6450 4000 7250 4000
Wire Wire Line
	6450 3900 7250 3900
Wire Wire Line
	6450 3600 7250 3600
Wire Wire Line
	6450 3700 7250 3700
$Comp
L custom_sch_footprint:NRF52833_BE33 M?
U 1 1 600A64C4
P 5500 3450
AR Path="/600A64C4" Ref="M?"  Part="1" 
AR Path="/600A1DAF/600A64C4" Ref="M1"  Part="1" 
F 0 "M1" H 5500 4465 50  0000 C CNN
F 1 "NRF52833_BE33" H 5500 4374 50  0000 C CNN
F 2 "" H 5350 3700 50  0001 C CNN
F 3 "" H 5350 3700 50  0001 C CNN
	1    5500 3450
	1    0    0    1   
$EndComp
NoConn ~ 6000 2300
NoConn ~ 5900 2300
NoConn ~ 6450 3500
NoConn ~ 6450 3400
NoConn ~ 4550 3300
Text Label 7250 4000 2    39   ~ 0
Relay_Idication_ON
Text Label 7250 4100 2    39   ~ 0
Relay_Idication_OFF
Text Label 7250 3900 2    39   ~ 0
SWDIO
Text Label 7250 3700 2    39   ~ 0
Reset
Text Label 7250 3600 2    39   ~ 0
SWDCLK
Wire Wire Line
	4550 4200 4550 4250
$Comp
L power:GND #PWR?
U 1 1 600A64DB
P 4550 4250
AR Path="/600A64DB" Ref="#PWR?"  Part="1" 
AR Path="/600A1DAF/600A64DB" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 4550 4000 50  0001 C CNN
F 1 "GND" H 4555 4077 50  0000 C CNN
F 2 "" H 4550 4250 50  0001 C CNN
F 3 "" H 4550 4250 50  0001 C CNN
	1    4550 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6450 4200 6450 4250
$Comp
L power:GND #PWR?
U 1 1 600A64E2
P 6450 4250
AR Path="/600A64E2" Ref="#PWR?"  Part="1" 
AR Path="/600A1DAF/600A64E2" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 6450 4000 50  0001 C CNN
F 1 "GND" H 6455 4077 50  0000 C CNN
F 2 "" H 6450 4250 50  0001 C CNN
F 3 "" H 6450 4250 50  0001 C CNN
	1    6450 4250
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 600AB2EC
P 2250 6800
AR Path="/600AB2EC" Ref="J?"  Part="1" 
AR Path="/600A1DAF/600AB2EC" Ref="J2"  Part="1" 
F 0 "J2" H 2400 6800 50  0000 L CNN
F 1 "Programing" V 2350 6550 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x04_P1.00mm_Vertical" H 2250 6800 50  0001 C CNN
F 3 "~" H 2250 6800 50  0001 C CNN
	1    2250 6800
	1    0    0    -1  
$EndComp
Text Label 1150 6800 0    59   ~ 0
SWDIO
Text Label 1150 6900 0    59   ~ 0
SWDCLK
$Comp
L power:+3.3V #PWR?
U 1 1 600AB2F4
P 2000 6500
AR Path="/600AB2F4" Ref="#PWR?"  Part="1" 
AR Path="/600A1DAF/600AB2F4" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 2000 6350 50  0001 C CNN
F 1 "+3.3V" V 2000 6750 50  0000 C CNN
F 2 "" H 2000 6500 50  0001 C CNN
F 3 "" H 2000 6500 50  0001 C CNN
	1    2000 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 600AB2FA
P 2000 7450
AR Path="/600AB2FA" Ref="#PWR?"  Part="1" 
AR Path="/600A1DAF/600AB2FA" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 2000 7200 50  0001 C CNN
F 1 "GND" H 2005 7277 50  0000 C CNN
F 2 "" H 2000 7450 50  0001 C CNN
F 3 "" H 2000 7450 50  0001 C CNN
	1    2000 7450
	1    0    0    -1  
$EndComp
Text Label 3300 6850 0    59   ~ 0
Reset
Wire Wire Line
	2000 6700 2050 6700
Wire Wire Line
	2000 7000 2050 7000
$Comp
L power:+3.3V #PWR?
U 1 1 600AB303
P 4400 6500
AR Path="/600AB303" Ref="#PWR?"  Part="1" 
AR Path="/600A1DAF/600AB303" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 4400 6350 50  0001 C CNN
F 1 "+3.3V" V 4400 6750 50  0000 C CNN
F 2 "" H 4400 6500 50  0001 C CNN
F 3 "" H 4400 6500 50  0001 C CNN
	1    4400 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 600AB309
P 4400 7450
AR Path="/600AB309" Ref="#PWR?"  Part="1" 
AR Path="/600A1DAF/600AB309" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 4400 7200 50  0001 C CNN
F 1 "GND" H 4405 7277 50  0000 C CNN
F 2 "" H 4400 7450 50  0001 C CNN
F 3 "" H 4400 7450 50  0001 C CNN
	1    4400 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 600AB30F
P 4400 6700
AR Path="/600AB30F" Ref="R?"  Part="1" 
AR Path="/600A1DAF/600AB30F" Ref="R3"  Part="1" 
F 0 "R3" H 4468 6746 50  0000 L CNN
F 1 "10K" H 4468 6655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4400 6700 50  0001 C CNN
F 3 "~" H 4400 6700 50  0001 C CNN
	1    4400 6700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 600AB315
P 4400 7150
AR Path="/600AB315" Ref="SW?"  Part="1" 
AR Path="/600A1DAF/600AB315" Ref="SW1"  Part="1" 
F 0 "SW1" V 4354 7298 50  0000 L CNN
F 1 "Reset" V 4445 7298 50  0000 L CNN
F 2 "" H 4400 7350 50  0001 C CNN
F 3 "~" H 4400 7350 50  0001 C CNN
	1    4400 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 6950 4400 6850
Connection ~ 4400 6850
Wire Wire Line
	4400 6850 4400 6800
$Comp
L power:+3.3V #PWR?
U 1 1 600AB334
P 6750 6500
AR Path="/600AB334" Ref="#PWR?"  Part="1" 
AR Path="/600A1DAF/600AB334" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 6750 6350 50  0001 C CNN
F 1 "+3.3V" V 6750 6750 50  0000 C CNN
F 2 "" H 6750 6500 50  0001 C CNN
F 3 "" H 6750 6500 50  0001 C CNN
	1    6750 6500
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 600AB33A
P 6750 7200
AR Path="/600AB33A" Ref="C?"  Part="1" 
AR Path="/600A1DAF/600AB33A" Ref="C4"  Part="1" 
F 0 "C4" H 6900 7200 50  0000 C CNN
F 1 "0.1uF" H 6550 7200 50  0000 C CNN
F 2 "" H 6750 7200 50  0001 C CNN
F 3 "~" H 6750 7200 50  0001 C CNN
	1    6750 7200
	1    0    0    1   
$EndComp
$Comp
L hitesh_custom:GND #PWR?
U 1 1 600AB340
P 6750 7450
AR Path="/600AB340" Ref="#PWR?"  Part="1" 
AR Path="/600A1DAF/600AB340" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 6750 7200 50  0001 C CNN
F 1 "GND" H 6755 7277 50  0000 C CNN
F 2 "" H 6750 7450 50  0001 C CNN
F 3 "" H 6750 7450 50  0001 C CNN
	1    6750 7450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3300 6850 4400 6850
Text Label 6750 7000 1    50   ~ 0
DC1
$Comp
L power:+3.3V #PWR?
U 1 1 600AB34E
P 6150 6500
AR Path="/600AB34E" Ref="#PWR?"  Part="1" 
AR Path="/600A1DAF/600AB34E" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 6150 6350 50  0001 C CNN
F 1 "+3.3V" V 6150 6750 50  0000 C CNN
F 2 "" H 6150 6500 50  0001 C CNN
F 3 "" H 6150 6500 50  0001 C CNN
	1    6150 6500
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 600AB354
P 6150 7200
AR Path="/600AB354" Ref="C?"  Part="1" 
AR Path="/600A1DAF/600AB354" Ref="C3"  Part="1" 
F 0 "C3" H 6300 7200 50  0000 C CNN
F 1 "0.1uF" H 5950 7200 50  0000 C CNN
F 2 "" H 6150 7200 50  0001 C CNN
F 3 "~" H 6150 7200 50  0001 C CNN
	1    6150 7200
	1    0    0    1   
$EndComp
$Comp
L hitesh_custom:GND #PWR?
U 1 1 600AB35A
P 6150 7450
AR Path="/600AB35A" Ref="#PWR?"  Part="1" 
AR Path="/600A1DAF/600AB35A" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 6150 7200 50  0001 C CNN
F 1 "GND" H 6155 7277 50  0000 C CNN
F 2 "" H 6150 7450 50  0001 C CNN
F 3 "" H 6150 7450 50  0001 C CNN
	1    6150 7450
	-1   0    0    -1  
$EndComp
Text Label 6150 7000 1    50   ~ 0
DC2
Wire Wire Line
	6750 7300 6750 7450
Wire Wire Line
	6150 7300 6150 7450
Wire Wire Line
	4400 7350 4400 7450
Wire Wire Line
	4400 6500 4400 6600
Wire Wire Line
	6150 6500 6150 7100
Wire Wire Line
	6750 6500 6750 7100
Wire Wire Line
	1150 6800 2050 6800
Wire Wire Line
	1150 6900 2050 6900
Wire Wire Line
	2000 7000 2000 7450
Wire Wire Line
	2000 6500 2000 6700
Text Label 7250 3800 2    39   ~ 0
DB_mode
Wire Wire Line
	6450 3800 7250 3800
NoConn ~ 5100 2300
NoConn ~ 5200 2300
NoConn ~ 4550 3400
NoConn ~ 4550 3500
NoConn ~ 4550 3600
NoConn ~ 4550 3700
Text HLabel 3700 3200 0    50   BiDi ~ 0
Relay
Text Label 7250 3100 2    50   ~ 0
motion_indicator
Wire Wire Line
	6450 3100 7250 3100
NoConn ~ 6450 3200
Text HLabel 5700 1750 1    50   Output ~ 0
TX
Text HLabel 5300 1750 1    50   Input ~ 0
RX
Wire Wire Line
	5300 2300 5300 1750
$Comp
L power:+3.3V #PWR?
U 1 1 60137C46
P 10450 4150
AR Path="/60137C46" Ref="#PWR?"  Part="1" 
AR Path="/600A1DAF/60137C46" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 10450 4000 50  0001 C CNN
F 1 "+3.3V" V 10450 4250 50  0000 L CNN
F 2 "" H 10450 4150 50  0001 C CNN
F 3 "" H 10450 4150 50  0001 C CNN
	1    10450 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 4150 10450 4150
NoConn ~ 5800 2300
$EndSCHEMATC
