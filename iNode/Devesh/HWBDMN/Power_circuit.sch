EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
	10150 3800 10150 3600
Wire Wire Line
	9600 3600 9900 3600
Connection ~ 9600 3600
$Comp
L power:+5V #PWR?
U 1 1 600A1136
P 9600 3250
AR Path="/600A1136" Ref="#PWR?"  Part="1" 
AR Path="/6009CECF/600A1136" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 9600 3100 50  0001 C CNN
F 1 "+5V" H 9615 3423 50  0000 C CNN
F 2 "" H 9600 3250 50  0001 C CNN
F 3 "" H 9600 3250 50  0001 C CNN
	1    9600 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 600A1144
P 11100 3150
AR Path="/600A1144" Ref="#PWR?"  Part="1" 
AR Path="/6009CECF/600A1144" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 11100 3000 50  0001 C CNN
F 1 "+3.3V" V 11115 3278 50  0000 L CNN
F 2 "" H 11100 3150 50  0001 C CNN
F 3 "" H 11100 3150 50  0001 C CNN
	1    11100 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 600A1150
P 11100 3900
AR Path="/600A1150" Ref="C?"  Part="1" 
AR Path="/6009CECF/600A1150" Ref="C2"  Part="1" 
F 0 "C2" H 11215 3946 50  0000 L CNN
F 1 "1uf" H 11215 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 11138 3750 50  0001 C CNN
F 3 "~" H 11100 3900 50  0001 C CNN
	1    11100 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3600 10150 3600
Connection ~ 9900 3600
$Comp
L Device:C C?
U 1 1 600A115A
P 9900 3900
AR Path="/600A115A" Ref="C?"  Part="1" 
AR Path="/6009CECF/600A115A" Ref="C1"  Part="1" 
F 0 "C1" H 10015 3946 50  0000 L CNN
F 1 "1uf" H 10015 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9938 3750 50  0001 C CNN
F 3 "~" H 9900 3900 50  0001 C CNN
	1    9900 3900
	1    0    0    -1  
$EndComp
Text HLabel 950  4000 2    50   BiDi ~ 0
P
Text HLabel 950  4450 2    50   BiDi ~ 0
N
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6014C542
P 9450 3400
F 0 "#FLG0101" H 9450 3475 50  0001 C CNN
F 1 "PWR_FLAG" V 9450 3527 50  0000 L CNN
F 2 "" H 9450 3400 50  0001 C CNN
F 3 "~" H 9450 3400 50  0001 C CNN
	1    9450 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9600 3400 9450 3400
Connection ~ 9600 3400
Wire Wire Line
	9600 3400 9600 3600
Wire Wire Line
	9600 3250 9600 3400
$Comp
L Device:D_Bridge_+AA- D1
U 1 1 5FE9EF4A
P 2000 4250
F 0 "D1" V 2046 3906 50  0000 R CNN
F 1 "D_Bridge 1A 800V" V 3100 4450 50  0000 R CNN
F 2 "Diode_SMD:Diode_Bridge_Vishay_DFS" H 2000 4250 50  0001 C CNN
F 3 "~" H 2000 4250 50  0001 C CNN
F 4 "LMB10S-TP" H 2000 4250 50  0001 C CNN "MFN PN"
F 5 "LMB10S-TP" H 2000 4250 50  0001 C CNN "MFPN"
	1    2000 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 5FE9FE71
P 1150 3850
F 0 "R1" V 945 3850 50  0000 C CNN
F 1 "10E ,2W Fusible" V 1036 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P5.08mm_Vertical" H 1150 3850 50  0001 C CNN
F 3 "~" H 1150 3850 50  0001 C CNN
F 4 "FKN2WSJR-73-10R" V 1150 3850 50  0001 C CNN "MFN PN"
F 5 "FKN2WSJR-73-10R" H 1150 3850 50  0001 C CNN "MFPN"
	1    1150 3850
	0    1    1    0   
$EndComp
$Comp
L Device:Varistor_US RV1
U 1 1 5FEA0F33
P 1400 4200
F 0 "RV1" H 1450 4350 50  0000 L CNN
F 1 "275V, 7mm" V 1250 3950 50  0000 L CNN
F 2 "Varistor:RV_Disc_D12mm_W4.8mm_P7.5mm" V 1330 4200 50  0001 C CNN
F 3 "~" H 1400 4200 50  0001 C CNN
F 4 "V10H275P" H 1400 4200 50  0001 C CNN "MFN PN"
F 5 "V10H275P" H 1400 4200 50  0001 C CNN "MFPN"
	1    1400 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:L_Small L1
U 1 1 5FEA2666
P 3150 3600
F 0 "L1" V 3335 3600 50  0000 C CNN
F 1 "1mH" V 3244 3600 50  0000 C CNN
F 2 "Inductor_THT:L_Radial_D8.7mm_P5.00mm_Fastron_07HCP" H 3150 3600 50  0001 C CNN
F 3 "~" H 3150 3600 50  0001 C CNN
F 4 "RLB0914-102KL" H 3150 3600 50  0001 C CNN "MFN PN"
F 5 "RLB0914-102KL" H 3150 3600 50  0001 C CNN "MFPN"
F 6 "Bornus" H 3150 3600 50  0001 C CNN "Vendor"
	1    3150 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1_Small C1
U 1 1 5FEA41FC
P 2800 5000
F 0 "C1" H 2891 5046 50  0000 L CNN
F 1 "1uF , 400V" V 2850 5050 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2800 5000 50  0001 C CNN
F 3 "~" H 2800 5000 50  0001 C CNN
F 4 "ECA-2GM010I" H 2800 5000 50  0001 C CNN "MFN PN"
F 5 "860021373002" H 2800 5000 50  0001 C CNN "MFPN"
	1    2800 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C2
U 1 1 5FEA7354
P 3450 5000
F 0 "C2" H 3541 5046 50  0000 L CNN
F 1 "2.2uF 400V" V 3500 4450 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 3450 5000 50  0001 C CNN
F 3 "~" H 3450 5000 50  0001 C CNN
F 4 "860021373003" H 3450 5000 50  0001 C CNN "MFN PN"
F 5 "860021373003" H 3450 5000 50  0001 C CNN "MFPN"
	1    3450 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 5FEA75A4
P 5000 4000
F 0 "R2" H 5068 4046 50  0000 L CNN
F 1 "2.05M, 1%" V 5200 3850 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 5000 4000 50  0001 C CNN
F 3 "~" H 5000 4000 50  0001 C CNN
F 4 "CRCW12062M05FKEA" H 5000 4000 50  0001 C CNN "MFN PN"
F 5 "CRCW12062M05FKEA" H 5000 4000 50  0001 C CNN "MFPN"
	1    5000 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 5FEA7DCA
P 5000 4500
F 0 "R3" H 5068 4546 50  0000 L CNN
F 1 "2.05M , 1%" V 5200 4250 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 5000 4500 50  0001 C CNN
F 3 "~" H 5000 4500 50  0001 C CNN
F 4 "CRCW12062M05FKEA" H 5000 4500 50  0001 C CNN "MFN PN"
F 5 "CRCW12062M05FKEA" H 5000 4500 50  0001 C CNN "MFPN"
	1    5000 4500
	1    0    0    -1  
$EndComp
$Comp
L SMPS_5V_1W_TNY284_v1.0-rescue:TNY284P-Regulator_Switching U1
U 1 1 5FEA8586
P 4350 5600
F 0 "U1" H 4020 5646 50  0000 R CNN
F 1 "TNY284P" H 4020 5555 50  0000 R CNN
F 2 "Package_SO:PowerIntegrations_SO-8C" H 4350 5600 50  0001 C CIN
F 3 "https://ac-dc.power.com/sites/default/files/product-docs/tinyswitch-4_family_datasheet.pdf" H 4350 5600 50  0001 C CNN
F 4 "TNY284DG-TL" H 4350 5600 50  0001 C CNN "MFN PN"
F 5 "TNY284DG-TL" H 4350 5600 50  0001 C CNN "MFPN"
	1    4350 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener_ALT D2
U 1 1 5FEAEB55
P 4150 3950
F 0 "D2" V 4196 3870 50  0000 R CNN
F 1 "SMBJ85A" V 4105 3870 50  0000 R CNN
F 2 "Diode_SMD:D_SMB" H 4150 3950 50  0001 C CNN
F 3 "~" H 4150 3950 50  0001 C CNN
F 4 "P6KE100A-E3/54" H 4150 3950 50  0001 C CNN "MFN PN"
F 5 "SMBJ85A" H 4150 3950 50  0001 C CNN "MFPN"
F 6 "MC" H 4150 3950 50  0001 C CNN "Vendor"
	1    4150 3950
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D3
U 1 1 5FEAFB50
P 4150 4450
F 0 "D3" V 4104 4530 50  0000 L CNN
F 1 "UF1K+" V 4195 4530 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 4150 4450 50  0001 C CNN
F 3 "~" H 4150 4450 50  0001 C CNN
F 4 "RMPG06K-E3/54" H 4150 4450 50  0001 C CNN "MFN PN"
F 5 "UF1K+" H 4150 4450 50  0001 C CNN "MFPN"
F 6 "MC" H 4150 4450 50  0001 C CNN "Vendor"
	1    4150 4450
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5FEB0A3B
P 5000 6000
F 0 "C3" H 5092 6046 50  0000 L CNN
F 1 "10uF 16V , X7R" H 5092 5955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5000 6000 50  0001 C CNN
F 3 "~" H 5000 6000 50  0001 C CNN
F 4 "CL31B106MOHNNNE" H 5000 6000 50  0001 C CNN "MFN PN"
F 5 "CL31B106MOHNNNE" H 5000 6000 50  0001 C CNN "MFPN"
	1    5000 6000
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-817 U2
U 1 1 5FEB1D2D
P 6050 5600
F 0 "U2" H 6050 5925 50  0000 C CNN
F 1 "LTV-817" H 6050 5834 50  0000 C CNN
F 2 "Package_DIP:SMDIP-4_W9.53mm" H 5850 5400 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 6050 5500 50  0001 L CNN
F 4 "LTV-817S-TA1" H 6050 5600 50  0001 C CNN "MFN PN"
F 5 "LTV-817S-TA1" H 6050 5600 50  0001 C CNN "MFPN"
	1    6050 5600
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5819 D4
U 1 1 5FEB3125
P 6600 3600
F 0 "D4" H 6600 3383 50  0000 C CNN
F 1 "1N5819" H 6600 3474 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 6600 3425 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 6600 3600 50  0001 C CNN
F 4 "1N5819" H 6600 3600 50  0001 C CNN "MFN PN"
F 5 "1N5819HW-7-F" H 6600 3600 50  0001 C CNN "MFPN"
F 6 "MC" H 6600 3600 50  0001 C CNN "Vendor"
	1    6600 3600
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1_Small C4
U 1 1 5FEB3D3F
P 6900 3900
F 0 "C4" H 6991 3946 50  0000 L CNN
F 1 "1000uF, 10V" V 6800 3650 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 6900 3900 50  0001 C CNN
F 3 "~" H 6900 3900 50  0001 C CNN
F 4 "ESY108M010AH2EA" H 6900 3900 50  0001 C CNN "MFN PN"
F 5 "ESY108M010AH2EA" H 6900 3900 50  0001 C CNN "MFPN"
	1    6900 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L2
U 1 1 5FEB6A7D
P 7500 3600
F 0 "L2" V 7685 3600 50  0000 C CNN
F 1 "3.3uH" V 7594 3600 50  0000 C CNN
F 2 "mylib:SRN5040" H 7500 3600 50  0001 C CNN
F 3 "~" H 7500 3600 50  0001 C CNN
F 4 "SRN5040-3R3M" H 7500 3600 50  0001 C CNN "MFN PN"
F 5 "SRN5040-3R3M" H 7500 3600 50  0001 C CNN "MFPN"
	1    7500 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1_Small C6
U 1 1 5FEB7BEB
P 7850 3900
F 0 "C6" H 7941 3946 50  0000 L CNN
F 1 "100uF , 10V" V 7750 3650 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 7850 3900 50  0001 C CNN
F 3 "~" H 7850 3900 50  0001 C CNN
F 4 "860020272005 " H 7850 3900 50  0001 C CNN "MFN PN"
F 5 "860020272005 " H 7850 3900 50  0001 C CNN "MFPN"
	1    7850 3900
	1    0    0    -1  
$EndComp
$Comp
L Reference_Voltage:TL431DBZ U3
U 1 1 5FEB8298
P 6700 6100
F 0 "U3" V 6746 6030 50  0000 R CNN
F 1 "TL431DBZ" V 6655 6030 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6700 5950 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 6700 6100 50  0001 C CIN
F 4 "TL431LIACDBZR " H 6700 6100 50  0001 C CNN "MFN PN"
F 5 "TL431LIACDBZR " H 6700 6100 50  0001 C CNN "MFPN"
F 6 "PI" H 6700 6100 50  0001 C CNN "Vendor"
	1    6700 6100
	0    1    -1   0   
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 5FEBB978
P 6700 5600
F 0 "R5" H 6768 5646 50  0000 L CNN
F 1 "1K, 5%" H 6400 5650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6700 5600 50  0001 C CNN
F 3 "~" H 6700 5600 50  0001 C CNN
F 4 "CRCW08051K00JNEAC" H 6700 5600 50  0001 C CNN "MFN PN"
F 5 "CRCW08051K00JNEAC" H 6700 5600 50  0001 C CNN "MFPN"
	1    6700 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5FEC3EEE
P 7050 5800
F 0 "C5" H 7142 5846 50  0000 L CNN
F 1 "100nF, 50V" V 6950 5600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7050 5800 50  0001 C CNN
F 3 "~" H 7050 5800 50  0001 C CNN
F 4 "CC0603KRX7R9BB104" H 7050 5800 50  0001 C CNN "MFN PN"
F 5 "CC0603KRX7R9BB104" H 7050 5800 50  0001 C CNN "MFPN"
	1    7050 5800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 5FEC50F1
P 7600 5750
F 0 "R6" H 7668 5796 50  0000 L CNN
F 1 "4.99K , 1%" H 7668 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7600 5750 50  0001 C CNN
F 3 "~" H 7600 5750 50  0001 C CNN
F 4 "CRCW08054K99FKEAC" H 7600 5750 50  0001 C CNN "MFN PN"
F 5 "CRCW08054K99FKEAC" H 7600 5750 50  0001 C CNN "MFPN"
	1    7600 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 5FEC5421
P 7600 6250
F 0 "R7" H 7668 6296 50  0000 L CNN
F 1 "4.99K, 1%" H 7668 6205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7600 6250 50  0001 C CNN
F 3 "~" H 7600 6250 50  0001 C CNN
F 4 "CRCW08054K99FKEAC" H 7600 6250 50  0001 C CNN "MFN PN"
F 5 "CRCW08054K99FKEAC" H 7600 6250 50  0001 C CNN "MFPN"
	1    7600 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 5FEC60AB
P 6700 4900
F 0 "R4" H 6768 4946 50  0000 L CNN
F 1 "34E, 1%" H 6768 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 6700 4900 50  0001 C CNN
F 3 "~" H 6700 4900 50  0001 C CNN
F 4 "RK73H2ATTD34R0F" H 6700 4900 50  0001 C CNN "MFN PN"
F 5 "RK73H2ATTD34R0F" H 6700 4900 50  0001 C CNN "MFPN"
	1    6700 4900
	1    0    0    -1  
$EndComp
$Comp
L hitesh_custom:EExx T1
U 1 1 5FECACBC
P 5750 3800
F 0 "T1" H 5800 4225 50  0000 C CNN
F 1 "EE12.6, NP 107, NS 7 " H 5800 4134 50  0000 C CNN
F 2 "mylib:EE13_4+4pin_P2.5mm" H 5750 3800 50  0001 C CNN
F 3 "" H 5750 3800 50  0001 C CNN
F 4 "EE12.6 " H 5750 3800 50  0001 C CNN "MFN PN"
F 5 "EE12.6 " H 5750 3800 50  0001 C CNN "MFPN"
	1    5750 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5FEDF5F1
P 550 4250
F 0 "J1" H 550 4050 50  0000 C CNN
F 1 "Screw_Terminal_01x02" V 550 4750 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 550 4250 50  0001 C CNN
F 3 "~" H 550 4250 50  0001 C CNN
F 4 "691412320002M" H 550 4250 50  0001 C CNN "MFN PN"
F 5 "691412320002M" H 550 4250 50  0001 C CNN "MFPN"
	1    550  4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	950  4150 950  3850
Wire Wire Line
	1400 4050 1400 3850
Wire Wire Line
	1400 3850 1250 3850
Wire Wire Line
	2500 4250 2300 4250
Wire Wire Line
	2000 3950 2000 3600
Wire Wire Line
	2000 3600 2800 3600
Connection ~ 2800 3600
Wire Wire Line
	2800 3600 3050 3600
Wire Wire Line
	3250 3600 3450 3600
Wire Wire Line
	950  4650 1400 4650
Wire Wire Line
	950  3850 1050 3850
Wire Wire Line
	3450 3600 4150 3600
Wire Wire Line
	4150 3600 4150 3800
Connection ~ 3450 3600
Wire Wire Line
	4150 4100 4150 4300
Wire Wire Line
	4150 4600 4150 5000
Wire Wire Line
	4150 5900 4150 6450
Wire Wire Line
	4150 6450 3450 6450
Wire Wire Line
	4150 3600 5000 3600
Wire Wire Line
	5000 3600 5000 3900
Connection ~ 4150 3600
Wire Wire Line
	5000 4100 5000 4400
Wire Wire Line
	5000 4600 5000 5500
Wire Wire Line
	5000 5500 4750 5500
Wire Wire Line
	4750 5700 5000 5700
Wire Wire Line
	5000 5700 5000 5900
Wire Wire Line
	2000 6450 2000 4550
Wire Wire Line
	5000 6100 5000 6450
Wire Wire Line
	5000 6450 4150 6450
Connection ~ 4150 6450
Wire Wire Line
	5000 3600 5550 3600
Connection ~ 5000 3600
Wire Wire Line
	5550 3800 5550 5000
Wire Wire Line
	5550 5000 4150 5000
Connection ~ 4150 5000
Wire Wire Line
	4150 5000 4150 5300
Wire Wire Line
	5000 5500 5750 5500
Connection ~ 5000 5500
Wire Wire Line
	5000 6450 5550 6450
Wire Wire Line
	5550 6450 5550 5700
Wire Wire Line
	5550 5700 5750 5700
Connection ~ 5000 6450
Wire Wire Line
	6050 3600 6450 3600
Wire Wire Line
	6050 3800 6050 4200
Wire Wire Line
	6050 4200 6900 4200
Wire Wire Line
	6900 4200 6900 4000
Wire Wire Line
	7850 4200 7850 4000
Connection ~ 6900 4200
Wire Wire Line
	6750 3600 6900 3600
Wire Wire Line
	6900 3600 6900 3800
Connection ~ 6900 3600
Wire Wire Line
	7600 3600 7850 3600
Wire Wire Line
	7850 3600 7850 3800
Wire Wire Line
	6900 4200 7850 4200
Wire Wire Line
	6900 3600 7200 3600
Wire Wire Line
	7200 3600 7200 4600
Wire Wire Line
	7200 4600 6700 4600
Wire Wire Line
	6700 4600 6700 4800
Connection ~ 7200 3600
Wire Wire Line
	7200 3600 7400 3600
Wire Wire Line
	6700 5000 6700 5400
Wire Wire Line
	6350 5500 6350 5400
Wire Wire Line
	6350 5400 6700 5400
Connection ~ 6700 5400
Wire Wire Line
	6700 5400 6700 5500
Wire Wire Line
	6350 5700 6350 5800
Wire Wire Line
	6350 5800 6700 5800
Wire Wire Line
	6700 5800 6700 5700
Wire Wire Line
	7850 3600 8600 3600
Connection ~ 7850 3600
Wire Wire Line
	7850 4200 9000 4200
Connection ~ 7850 4200
Wire Wire Line
	6700 5800 6700 6000
Connection ~ 6700 5800
Wire Wire Line
	6700 6200 6700 6450
Wire Wire Line
	6700 6450 7600 6450
Wire Wire Line
	7600 5850 7600 6000
Wire Wire Line
	7600 6000 7350 6000
Wire Wire Line
	7150 6000 7150 6100
Wire Wire Line
	7150 6100 6800 6100
Connection ~ 7600 6000
Wire Wire Line
	7600 6000 7600 6150
Wire Wire Line
	7600 6350 7600 6450
Connection ~ 7600 6450
Wire Wire Line
	7600 6450 9000 6450
Wire Wire Line
	8600 3600 8600 5100
Wire Wire Line
	8600 5100 7600 5100
Wire Wire Line
	7600 5100 7600 5650
Connection ~ 8600 3600
Wire Wire Line
	8600 3600 9000 3600
Wire Wire Line
	7150 5800 7350 5800
Wire Wire Line
	7350 5800 7350 6000
Connection ~ 7350 6000
Wire Wire Line
	7350 6000 7150 6000
Wire Wire Line
	6950 5800 6700 5800
Wire Wire Line
	2800 3600 2800 4900
Wire Wire Line
	3450 3600 3450 4900
Wire Wire Line
	2800 5100 2800 6450
Connection ~ 2800 6450
Wire Wire Line
	2800 6450 2000 6450
Wire Wire Line
	3450 5100 3450 6450
Connection ~ 3450 6450
Wire Wire Line
	3450 6450 2800 6450
Connection ~ 1400 3850
Wire Wire Line
	2500 4250 2500 4650
Wire Wire Line
	1400 3850 1700 3850
Wire Wire Line
	1400 4350 1400 4650
Wire Wire Line
	950  4250 950  4650
Wire Wire Line
	1400 4650 2500 4650
Connection ~ 1400 4650
Wire Wire Line
	1700 4250 1700 3850
Text Label 950  4100 1    50   ~ 0
AC1
Text Label 950  4500 1    50   ~ 0
AC2
Text Label 1550 3850 0    50   ~ 0
AC3
Text Label 2250 3600 0    50   ~ 0
DCH1
Text Label 2300 6450 0    50   ~ 0
DCH2
Text Label 3700 3600 0    50   ~ 0
DCH3
Text Label 4450 5000 0    50   ~ 0
DCH4
Text Label 8250 3600 0    50   ~ 0
VCC
Text Label 8250 4200 0    50   ~ 0
GND
Text Label 6200 3600 0    50   ~ 0
DCL1
Text Label 7000 3600 0    50   ~ 0
DCL2
$Comp
L Connector:TestPoint_Alt TP4
U 1 1 6002F4FD
P 8600 3600
F 0 "TP4" H 8658 3718 50  0000 L CNN
F 1 "VCC" H 8450 3800 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8800 3600 50  0001 C CNN
F 3 "~" H 8800 3600 50  0001 C CNN
	1    8600 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Alt TP3
U 1 1 60033F74
P 7850 4200
F 0 "TP3" H 7908 4318 50  0000 L CNN
F 1 "GND" H 7700 4400 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8050 4200 50  0001 C CNN
F 3 "~" H 8050 4200 50  0001 C CNN
	1    7850 4200
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint_Alt TP2
U 1 1 600380EB
P 7350 6000
F 0 "TP2" H 7408 6118 50  0000 L CNN
F 1 "REF" H 7300 6200 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7550 6000 50  0001 C CNN
F 3 "~" H 7550 6000 50  0001 C CNN
	1    7350 6000
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint_Alt TP1
U 1 1 6004DFA1
P 4150 5000
F 0 "TP1" H 4208 5118 50  0000 L CNN
F 1 "D" H 4050 5150 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4350 5000 50  0001 C CNN
F 3 "~" H 4350 5000 50  0001 C CNN
	1    4150 5000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 6006C484
P 9000 3800
F 0 "R8" H 9068 3846 50  0000 L CNN
F 1 "1K" H 9068 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9000 3800 50  0001 C CNN
F 3 "~" H 9000 3800 50  0001 C CNN
F 4 "RK73H2ATTD34R0F" H 9000 3800 50  0001 C CNN "MFN PN"
F 5 "RK73H2ATTD34R0F" H 9000 3800 50  0001 C CNN "MFPN"
	1    9000 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D5
U 1 1 6006F182
P 9000 4050
F 0 "D5" V 9046 3980 50  0000 R CNN
F 1 "RED" V 8955 3980 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 9000 4050 50  0001 C CNN
F 3 "~" V 9000 4050 50  0001 C CNN
	1    9000 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9000 3900 9000 3950
Wire Wire Line
	9000 4150 9000 4200
Connection ~ 9000 4200
Wire Wire Line
	9000 3700 9000 3600
Connection ~ 9000 3600
Wire Wire Line
	9000 3600 9600 3600
Wire Wire Line
	9000 6450 9000 4200
Wire Wire Line
	10650 4400 10650 4550
Connection ~ 10650 4400
Wire Wire Line
	10450 4400 10650 4400
Wire Wire Line
	10650 4200 10650 4400
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6014EC6A
P 10450 4400
F 0 "#FLG0102" H 10450 4475 50  0001 C CNN
F 1 "PWR_FLAG" V 10450 4527 50  0000 L CNN
F 2 "" H 10450 4400 50  0001 C CNN
F 3 "~" H 10450 4400 50  0001 C CNN
	1    10450 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10650 4150 10650 4200
$Comp
L power:GND #PWR?
U 1 1 600A113C
P 10650 4550
AR Path="/600A113C" Ref="#PWR?"  Part="1" 
AR Path="/6009CECF/600A113C" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 10650 4300 50  0001 C CNN
F 1 "GND" H 10655 4377 50  0000 C CNN
F 2 "" H 10650 4550 50  0001 C CNN
F 3 "" H 10650 4550 50  0001 C CNN
	1    10650 4550
	1    0    0    -1  
$EndComp
Connection ~ 10650 4200
Wire Wire Line
	10650 4200 11100 4200
Wire Wire Line
	9900 4200 10650 4200
Connection ~ 9900 4200
$Comp
L Regulator_Linear:MIC5504-3.3YM5 U?
U 1 1 600A1160
P 10600 3700
AR Path="/600A1160" Ref="U?"  Part="1" 
AR Path="/6009CECF/600A1160" Ref="U1"  Part="1" 
F 0 "U1" H 10600 4067 50  0000 C CNN
F 1 "MIC5504-3.3YM5" H 10600 3976 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 10600 3300 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MIC550X.pdf" H 10350 3950 50  0001 C CNN
	1    10600 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4200 9900 4200
Wire Wire Line
	11100 4200 11100 4050
Wire Wire Line
	9900 4050 9900 4200
Wire Wire Line
	9900 3600 9900 3750
Wire Wire Line
	11100 3150 11100 3600
Connection ~ 11100 4200
Wire Wire Line
	11100 4200 11150 4200
Connection ~ 11100 3600
Wire Wire Line
	11100 3600 11100 3750
Wire Wire Line
	10200 3800 10150 3800
Wire Wire Line
	10200 3600 10150 3600
Connection ~ 10150 3600
Wire Wire Line
	11000 3600 11100 3600
Wire Wire Line
	750  4150 950  4150
Wire Wire Line
	750  4250 950  4250
$EndSCHEMATC
