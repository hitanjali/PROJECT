EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
	3450 3550 4400 3550
Wire Wire Line
	3450 3650 4400 3650
Text Label 4400 3550 2    50   ~ 0
N
Text Label 4400 3650 2    50   ~ 0
P
Text Label 4400 3750 2    50   ~ 0
Relay
$Sheet
S 2800 3450 650  400 
U 60045FB5
F0 "power_measurment_and_relay" 39
F1 "PM_relay.sch" 20
F2 "Relay" I R 3450 3750 50 
F3 "P" B R 3450 3650 50 
F4 "N" B R 3450 3550 50 
$EndSheet
$Sheet
S 2800 2400 650  450 
U 6009CECF
F0 "Power_circuit" 50
F1 "Power_circuit.sch" 50
F2 "P" B R 3450 2700 50 
F3 "N" B R 3450 2550 50 
$EndSheet
$Sheet
S 7100 3200 1000 950 
U 600A1DAF
F0 "nrf52833_MC" 50
F1 "nrf52833_MC.sch" 50
F2 "Relay" B L 7100 3400 50 
F3 "Reset" B L 7100 3600 50 
F4 "TX" B L 7100 3750 50 
F5 "RX" B L 7100 3900 50 
$EndSheet
$Sheet
S 2850 4600 600  400 
U 5FF841AF
F0 "RF_communication" 50
F1 "RF_communication.sch" 20
F2 "RxD" I R 3450 4800 50 
F3 "TxD" I R 3450 4900 50 
F4 "Reset" B R 3450 4700 50 
$EndSheet
Wire Wire Line
	6100 3400 7100 3400
Wire Wire Line
	3450 3750 4400 3750
Text Label 6100 3400 0    50   ~ 0
Relay
Text Label 6100 3600 0    50   ~ 0
Reset
Wire Wire Line
	6100 3600 7100 3600
Text Label 6100 3750 0    50   ~ 0
TX
Text Label 6100 3900 0    50   ~ 0
RX
Wire Wire Line
	6100 3750 7100 3750
Wire Wire Line
	6100 3900 7100 3900
Text Label 4450 4700 2    50   ~ 0
Reset
Wire Wire Line
	4450 4700 3450 4700
Text Label 4450 4800 2    50   ~ 0
TX
Text Label 4450 4900 2    50   ~ 0
RX
Wire Wire Line
	4450 4800 3450 4800
Wire Wire Line
	4450 4900 3450 4900
Wire Wire Line
	3450 2550 4400 2550
Wire Wire Line
	3450 2700 4400 2700
Text Label 4400 2550 2    50   ~ 0
N
Text Label 4400 2700 2    50   ~ 0
P
Text Notes 4900 6350 0    157  ~ 0
Will re-do the anotaion, befor statring the layout
$EndSCHEMATC
