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
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5F719C51
P 6000 2350
F 0 "J?" H 6080 2392 50  0000 L CNN
F 1 "PIR" H 6080 2301 50  0000 L CNN
F 2 "" H 6000 2350 50  0001 C CNN
F 3 "~" H 6000 2350 50  0001 C CNN
	1    6000 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 5F7009FD
P 5400 2450
F 0 "BT?" H 5518 2546 50  0000 L CNN
F 1 "3.3v" H 5518 2455 50  0000 L CNN
F 2 "" V 5400 2510 50  0001 C CNN
F 3 "~" V 5400 2510 50  0001 C CNN
	1    5400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2600 5400 2550
Wire Wire Line
	5300 2600 5300 2550
Wire Wire Line
	5300 2550 5400 2550
Connection ~ 5400 2550
Wire Wire Line
	5200 2600 5200 2250
Wire Wire Line
	5200 2250 5400 2250
Wire Wire Line
	5100 2600 5100 2250
Wire Wire Line
	5100 2250 5200 2250
Connection ~ 5200 2250
Wire Wire Line
	5000 2600 5000 2250
Wire Wire Line
	5000 2250 5100 2250
Connection ~ 5100 2250
Wire Wire Line
	5400 2550 5800 2550
Wire Wire Line
	5800 2550 5800 3000
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
Connection ~ 5800 3000
Wire Wire Line
	5800 3000 5800 3100
Wire Wire Line
	5400 2250 5800 2250
Connection ~ 5400 2250
Wire Wire Line
	5800 2450 5800 2550
Connection ~ 5800 2550
Wire Wire Line
	5700 3900 5800 3900
Wire Wire Line
	5800 3900 5800 3700
Connection ~ 5800 3300
Wire Wire Line
	5800 2350 4900 2350
Wire Wire Line
	4900 2350 4900 2600
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
	4100 3000 4100 2250
Wire Wire Line
	4100 2250 5000 2250
Connection ~ 5000 2250
$EndSCHEMATC
