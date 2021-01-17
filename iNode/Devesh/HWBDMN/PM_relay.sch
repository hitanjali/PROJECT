EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
	5350 3650 5350 3600
Wire Wire Line
	5350 4800 5350 4850
$Comp
L power:+5V #PWR?
U 1 1 60048D47
P 5350 3500
AR Path="/60048D47" Ref="#PWR?"  Part="1" 
AR Path="/5FFD7A5E/60048D47" Ref="#PWR?"  Part="1" 
AR Path="/60045FB5/60048D47" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 5350 3350 50  0001 C CNN
F 1 "+5V" H 5450 3600 50  0000 C CNN
F 2 "" H 5350 3500 50  0001 C CNN
F 3 "" H 5350 3500 50  0001 C CNN
	1    5350 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 60048D4D
P 5800 4600
AR Path="/60048D4D" Ref="R?"  Part="1" 
AR Path="/5FFD7A5E/60048D4D" Ref="R?"  Part="1" 
AR Path="/60045FB5/60048D4D" Ref="R2"  Part="1" 
F 0 "R2" V 5595 4600 50  0000 C CNN
F 1 "3k" V 5686 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5800 4600 50  0001 C CNN
F 3 "~" H 5800 4600 50  0001 C CNN
	1    5800 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 4400 5350 4350
$Comp
L Relay:G5Q-1A K?
U 1 1 60048D55
P 5150 3950
AR Path="/60048D55" Ref="K?"  Part="1" 
AR Path="/5FFD7A5E/60048D55" Ref="K?"  Part="1" 
AR Path="/60045FB5/60048D55" Ref="K1"  Part="1" 
F 0 "K1" H 4650 3950 50  0000 R CNN
F 1 "G5PZ-1A" V 4700 4150 50  0000 R CNN
F 2 "Relay_THT:Relay_SPST_Omron-G5Q-1A" H 5500 3900 50  0001 L CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g5q.pdf" H 5150 3950 50  0001 C CNN
	1    5150 3950
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC817 Q?
U 1 1 60048D5B
P 5450 4600
AR Path="/60048D5B" Ref="Q?"  Part="1" 
AR Path="/5FFD7A5E/60048D5B" Ref="Q?"  Part="1" 
AR Path="/60045FB5/60048D5B" Ref="Q1"  Part="1" 
F 0 "Q1" H 5700 4600 50  0000 L CNN
F 1 "BC816-25H" V 5650 4400 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5650 4525 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC817.pdf" H 5450 4600 50  0001 L CNN
	1    5450 4600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60048D7D
P 5350 5150
AR Path="/60048D7D" Ref="#PWR?"  Part="1" 
AR Path="/5FFD7A5E/60048D7D" Ref="#PWR?"  Part="1" 
AR Path="/60045FB5/60048D7D" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 5350 4900 50  0001 C CNN
F 1 "GND" H 5350 5000 50  0000 C CNN
F 2 "" H 5350 5150 50  0001 C CNN
F 3 "" H 5350 5150 50  0001 C CNN
	1    5350 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4600 5700 4600
Wire Wire Line
	5900 4600 6250 4600
Wire Wire Line
	4950 5400 6000 5400
Wire Wire Line
	5700 5500 6000 5500
$Comp
L Device:D D?
U 1 1 60048DAD
P 5900 3950
AR Path="/60048DAD" Ref="D?"  Part="1" 
AR Path="/5FFD7A5E/60048DAD" Ref="D?"  Part="1" 
AR Path="/60045FB5/60048DAD" Ref="D1"  Part="1" 
F 0 "D1" V 5854 4029 50  0000 L CNN
F 1 "FM4004W-W" V 5945 4029 50  0000 L CNN
F 2 "" H 5900 3950 50  0001 C CNN
F 3 "~" H 5900 3950 50  0001 C CNN
	1    5900 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 3600 5900 3600
Wire Wire Line
	5900 3600 5900 3800
Connection ~ 5350 3600
Wire Wire Line
	5350 3600 5350 3500
Wire Wire Line
	5350 4350 5900 4350
$Comp
L Device:R_Small_US R?
U 1 1 60048DBA
P 5350 4950
AR Path="/60048DBA" Ref="R?"  Part="1" 
AR Path="/5FFD7A5E/60048DBA" Ref="R?"  Part="1" 
AR Path="/60045FB5/60048DBA" Ref="R1"  Part="1" 
F 0 "R1" H 5418 4996 50  0000 L CNN
F 1 "10k" H 5418 4905 50  0000 L CNN
F 2 "" H 5350 4950 50  0001 C CNN
F 3 "~" H 5350 4950 50  0001 C CNN
	1    5350 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5150 5350 5050
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 60048DCE
P 6200 5400
AR Path="/5FFD7A5E/60048DCE" Ref="J?"  Part="1" 
AR Path="/60045FB5/60048DCE" Ref="J1"  Part="1" 
F 0 "J1" H 6400 5400 50  0000 L CNN
F 1 "tubelight" V 6300 5200 50  0000 L CNN
F 2 "" H 6200 5400 50  0001 C CNN
F 3 "~" H 6200 5400 50  0001 C CNN
	1    6200 5400
	1    0    0    -1  
$EndComp
Text HLabel 6250 4600 2    50   Input ~ 0
Relay
Wire Wire Line
	4950 4250 4950 5400
Wire Wire Line
	5350 4350 5350 4250
Connection ~ 5350 4350
Wire Wire Line
	5900 4100 5900 4350
Wire Wire Line
	4950 3650 4950 3250
Wire Wire Line
	4950 3250 5900 3250
Text HLabel 5900 3250 2    50   BiDi ~ 0
P
Text HLabel 5700 5500 0    50   BiDi ~ 0
N
$EndSCHEMATC
