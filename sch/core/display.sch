EESchema Schematic File Version 4
LIBS:core-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 5500 3850 0    50   Input ~ 0
MISO
Text HLabel 5500 3750 0    50   Input ~ 0
LED
Text HLabel 5500 3650 0    50   Input ~ 0
SCK
Text HLabel 5500 3550 0    50   Input ~ 0
MOSI
Text HLabel 5500 3450 0    50   Input ~ 0
DC
Text HLabel 5500 3350 0    50   Input ~ 0
RST
Text HLabel 5500 3250 0    50   Input ~ 0
CS
$Comp
L Connector_Generic:Conn_01x09 J6
U 1 1 5C4DC60F
P 5700 3450
F 0 "J6" H 5780 3492 50  0000 L CNN
F 1 "Conn_01x09" H 5780 3401 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 5700 3450 50  0001 C CNN
F 3 "~" H 5700 3450 50  0001 C CNN
	1    5700 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C27
U 1 1 5C4DC6F4
P 5000 3100
F 0 "C27" H 5115 3146 50  0000 L CNN
F 1 "20u" H 5115 3055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5038 2950 50  0001 C CNN
F 3 "~" H 5000 3100 50  0001 C CNN
	1    5000 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0129
U 1 1 5C4DC7FF
P 5000 2850
F 0 "#PWR0129" H 5000 2700 50  0001 C CNN
F 1 "+3.3V" H 5015 3023 50  0000 C CNN
F 2 "" H 5000 2850 50  0001 C CNN
F 3 "" H 5000 2850 50  0001 C CNN
	1    5000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2850 5000 2900
$Comp
L power:GND #PWR0130
U 1 1 5C4DC874
P 5000 3350
F 0 "#PWR0130" H 5000 3100 50  0001 C CNN
F 1 "GND" H 5005 3177 50  0000 C CNN
F 2 "" H 5000 3350 50  0001 C CNN
F 3 "" H 5000 3350 50  0001 C CNN
	1    5000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3350 5000 3300
Connection ~ 5000 2900
Wire Wire Line
	5000 2900 5000 2950
Wire Wire Line
	5300 3300 5300 3150
Wire Wire Line
	5300 3150 5500 3150
Connection ~ 5000 3300
Wire Wire Line
	5000 3300 5000 3250
Wire Wire Line
	5300 3050 5300 2900
Wire Wire Line
	5300 3050 5500 3050
Wire Wire Line
	5000 3300 5300 3300
Wire Wire Line
	5000 2900 5300 2900
$EndSCHEMATC
