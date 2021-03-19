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
L hitesh_custom:Senba_digital_PIR_XX312 U1
U 1 1 60417690
P 5950 3000
F 0 "U1" V 6400 3150 50  0000 L CNN
F 1 "Senba_digital_PIR_XX312" V 5900 3000 50  0000 L CNN
F 2 "mylib:Senba_Digital_PIR_XX312" H 6100 2850 50  0001 C CNN
F 3 "" H 6100 2850 50  0001 C CNN
	1    5950 3000
	0    1    1    0   
$EndComp
$Comp
L hitesh_custom:PIR_Lens_23mm LENS1
U 1 1 60417C6E
P 6200 3250
F 0 "LENS1" V 6300 3150 50  0000 R CNN
F 1 "PIR_Lens_23mm" V 6400 3450 50  0000 R CNN
F 2 "mylib:FRESNEL_LENS_S9006" H 6200 3250 50  0001 C CNN
F 3 "" H 6200 3250 50  0001 C CNN
	1    6200 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 604182E4
P 5000 3200
F 0 "J1" H 5080 3242 50  0000 L CNN
F 1 "Conn_01x03" H 5080 3151 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5000 3200 50  0001 C CNN
F 3 "~" H 5000 3200 50  0001 C CNN
	1    5000 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 3300 5850 3300
Wire Wire Line
	5200 3200 5850 3200
Wire Wire Line
	5200 3100 5850 3100
Text Label 5350 3100 0    50   ~ 0
VDD
Text Label 5350 3200 0    50   ~ 0
DOUT
Text Label 5350 3300 0    50   ~ 0
GND
$EndSCHEMATC
