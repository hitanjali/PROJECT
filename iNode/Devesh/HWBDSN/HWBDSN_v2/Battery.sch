EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L Device:Battery BT1
U 1 1 6059DAC5
P 5000 3950
F 0 "BT1" H 4892 3904 50  0000 R CNN
F 1 "AA_Battries_holder" H 4892 3995 50  0000 R CNN
F 2 "" V 5000 4010 50  0001 C CNN
F 3 "~" V 5000 4010 50  0001 C CNN
F 4 "Genric" H 5000 3950 50  0001 C CNN "MFPN"
F 5 "Genric" H 5000 3950 50  0001 C CNN "Vendor"
	1    5000 3950
	-1   0    0    1   
$EndComp
$Comp
L power:+3V0 #PWR01
U 1 1 6059FC64
P 5000 3350
F 0 "#PWR01" H 5000 3200 50  0001 C CNN
F 1 "+3V0" H 5015 3523 50  0000 C CNN
F 2 "" H 5000 3350 50  0001 C CNN
F 3 "" H 5000 3350 50  0001 C CNN
	1    5000 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 605A2A31
P 5000 4500
F 0 "#PWR02" H 5000 4250 50  0001 C CNN
F 1 "GND" H 5005 4327 50  0000 C CNN
F 2 "" H 5000 4500 50  0001 C CNN
F 3 "" H 5000 4500 50  0001 C CNN
	1    5000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3750 5000 3350
Wire Wire Line
	5000 4500 5000 4150
Text Notes 4500 1200 0    98   ~ 0
battery and battery holder for AA cell\nbattery and battery holder for CR2477
$EndSCHEMATC
