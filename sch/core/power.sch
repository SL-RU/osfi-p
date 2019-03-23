EESchema Schematic File Version 4
LIBS:core-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
	3350 1050 3350 1000
$Comp
L power:GND #PWR0101
U 1 1 5C3B7924
P 3350 1450
F 0 "#PWR0101" H 3350 1200 50  0001 C CNN
F 1 "GND" H 3355 1277 50  0000 C CNN
F 2 "" H 3350 1450 50  0001 C CNN
F 3 "" H 3350 1450 50  0001 C CNN
	1    3350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1450 3350 1400
$Comp
L Device:Battery_Cell BT1
U 1 1 5C3B7CB0
P 3900 2350
F 0 "BT1" H 3650 2450 50  0000 L CNN
F 1 "Battery_Cell" H 3350 2350 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" V 3900 2410 50  0001 C CNN
F 3 "~" V 3900 2410 50  0001 C CNN
	1    3900 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C22
U 1 1 5C3B7D48
P 3000 1200
F 0 "C22" H 3115 1246 50  0000 L CNN
F 1 "10u" H 3115 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3038 1050 50  0001 C CNN
F 3 "~" H 3000 1200 50  0001 C CNN
	1    3000 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0102
U 1 1 5C3B7DC6
P 3000 900
F 0 "#PWR0102" H 3000 750 50  0001 C CNN
F 1 "+BATT" H 3015 1073 50  0000 C CNN
F 2 "" H 3000 900 50  0001 C CNN
F 3 "" H 3000 900 50  0001 C CNN
	1    3000 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5C3B86D8
P 3000 1450
F 0 "#PWR0103" H 3000 1200 50  0001 C CNN
F 1 "GND" H 3005 1277 50  0000 C CNN
F 2 "" H 3000 1450 50  0001 C CNN
F 3 "" H 3000 1450 50  0001 C CNN
	1    3000 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1450 3000 1350
$Comp
L power:VBUS #PWR0108
U 1 1 5C3BECB1
P 1700 850
F 0 "#PWR0108" H 1700 700 50  0001 C CNN
F 1 "VBUS" H 1715 1023 50  0000 C CNN
F 2 "" H 1700 850 50  0001 C CNN
F 3 "" H 1700 850 50  0001 C CNN
	1    1700 850 
	1    0    0    -1  
$EndComp
Wire Notes Line
	600  550  600  3350
Wire Notes Line
	600  3350 7100 3350
Wire Notes Line
	7100 3350 7100 550 
Wire Notes Line
	7100 550  600  550 
$Comp
L core-rescue:LM3671-3.3-core U2
U 1 1 5C3F0F04
P 1550 3950
F 0 "U2" H 1550 4275 50  0000 C CNN
F 1 "LM3671-3.3" H 1550 4184 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TSOT-23-5" H 1600 3700 50  0001 L CNN
F 3 "https://static.chipdip.ru/lib/550/DOC001550787.pdf" H 1300 3600 50  0001 C CNN
	1    1550 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5C3F1042
P 2050 3850
F 0 "L1" V 2240 3850 50  0000 C CNN
F 1 "2.2uH" V 2149 3850 50  0000 C CNN
F 2 "Inductors_SMD:L_1210_HandSoldering" H 2050 3850 50  0001 C CNN
F 3 "~" H 2050 3850 50  0001 C CNN
	1    2050 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1900 3850 1850 3850
Wire Wire Line
	1850 4050 2250 4050
Wire Wire Line
	2250 4050 2250 3850
Wire Wire Line
	2250 3850 2200 3850
$Comp
L Device:C C3
U 1 1 5C3FAB67
P 950 4050
F 0 "C3" H 1065 4096 50  0000 L CNN
F 1 "4.7u" H 1065 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 988 3900 50  0001 C CNN
F 3 "~" H 950 4050 50  0001 C CNN
	1    950  4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4200 950  4300
Wire Wire Line
	950  4300 1550 4300
Wire Wire Line
	1550 4300 1550 4250
Wire Wire Line
	1250 3950 1200 3950
Wire Wire Line
	1200 3950 1200 3850
Wire Wire Line
	1200 3850 1250 3850
$Comp
L power:GND #PWR0112
U 1 1 5C4027CC
P 1550 4350
F 0 "#PWR0112" H 1550 4100 50  0001 C CNN
F 1 "GND" H 1555 4177 50  0000 C CNN
F 2 "" H 1550 4350 50  0001 C CNN
F 3 "" H 1550 4350 50  0001 C CNN
	1    1550 4350
	1    0    0    -1  
$EndComp
Connection ~ 2250 3850
$Comp
L Device:C C16
U 1 1 5C40575B
P 2350 4050
F 0 "C16" H 2465 4096 50  0000 L CNN
F 1 "10u" H 2465 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2388 3900 50  0001 C CNN
F 3 "~" H 2350 4050 50  0001 C CNN
	1    2350 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3850 2300 3850
Wire Wire Line
	1200 3850 950  3850
Wire Wire Line
	950  3850 950  3900
Connection ~ 1200 3850
Connection ~ 1550 4300
Wire Wire Line
	1550 4350 1550 4300
$Comp
L power:VCCQ #PWR0113
U 1 1 5C414B3C
P 4300 1000
F 0 "#PWR0113" H 4300 850 50  0001 C CNN
F 1 "VCCQ" H 4317 1173 50  0000 C CNN
F 2 "" H 4300 1000 50  0001 C CNN
F 3 "" H 4300 1000 50  0001 C CNN
	1    4300 1000
	1    0    0    -1  
$EndComp
$Comp
L power:VCCQ #PWR0114
U 1 1 5C417F39
P 850 3800
F 0 "#PWR0114" H 850 3650 50  0001 C CNN
F 1 "VCCQ" H 867 3973 50  0000 C CNN
F 2 "" H 850 3800 50  0001 C CNN
F 3 "" H 850 3800 50  0001 C CNN
	1    850  3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  3800 850  3850
Wire Wire Line
	850  3850 950  3850
Connection ~ 950  3850
$Comp
L power:+3.3V #PWR0115
U 1 1 5C41BA86
P 2750 3850
F 0 "#PWR0115" H 2750 3700 50  0001 C CNN
F 1 "+3.3V" H 2765 4023 50  0000 C CNN
F 2 "" H 2750 3850 50  0001 C CNN
F 3 "" H 2750 3850 50  0001 C CNN
	1    2750 3850
	1    0    0    -1  
$EndComp
Wire Notes Line
	600  3450 600  4600
Wire Notes Line
	600  4600 2900 4600
Wire Notes Line
	2900 4600 2900 3450
Wire Notes Line
	2900 3450 600  3450
Text Notes 2550 4550 0    50   ~ 0
To 3.3V
Text Notes 750  3250 0    50   ~ 0
Battery charger & controller
$Comp
L core-rescue:STM32F427VITx-core U1
U 4 1 5C42716C
P 9050 1750
F 0 "U1" H 9050 2765 50  0000 C CNN
F 1 "STM32F427VITx" H 9050 2674 50  0000 C CNN
F 2 "Housings_QFP:LQFP-100_14x14mm_Pitch0.5mm" H 9850 700 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00071990.pdf" H 9100 1800 50  0001 C CNN
	4    9050 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2100 10050 2100
Wire Wire Line
	10050 2100 10050 2200
Wire Wire Line
	10050 2500 9950 2500
Wire Wire Line
	9950 2400 10050 2400
Connection ~ 10050 2400
Wire Wire Line
	10050 2400 10050 2500
Wire Wire Line
	9950 2300 10050 2300
Connection ~ 10050 2300
Wire Wire Line
	10050 2300 10050 2400
Wire Wire Line
	9950 2200 10050 2200
Connection ~ 10050 2200
Wire Wire Line
	10050 2200 10050 2300
Wire Wire Line
	8150 1700 8050 1700
Wire Wire Line
	8050 1700 8050 1600
Wire Wire Line
	8050 1000 8150 1000
Wire Wire Line
	8150 1100 8050 1100
Connection ~ 8050 1100
Wire Wire Line
	8050 1100 8050 1000
Wire Wire Line
	8050 1200 8150 1200
Connection ~ 8050 1200
Wire Wire Line
	8050 1200 8050 1100
Wire Wire Line
	8150 1300 8050 1300
Connection ~ 8050 1300
Wire Wire Line
	8050 1300 8050 1200
Wire Wire Line
	8150 1500 8050 1500
Connection ~ 8050 1500
Wire Wire Line
	8050 1500 8050 1400
Wire Wire Line
	8050 1400 8150 1400
Connection ~ 8050 1400
Wire Wire Line
	8050 1400 8050 1300
Wire Wire Line
	8150 1600 8050 1600
Connection ~ 8050 1600
Wire Wire Line
	8050 1600 8050 1500
$Comp
L power:GND #PWR0116
U 1 1 5C456764
P 10250 2400
F 0 "#PWR0116" H 10250 2150 50  0001 C CNN
F 1 "GND" H 10255 2227 50  0000 C CNN
F 2 "" H 10250 2400 50  0001 C CNN
F 3 "" H 10250 2400 50  0001 C CNN
	1    10250 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 2400 10250 2300
Wire Wire Line
	10250 2300 10050 2300
$Comp
L Device:C C24
U 1 1 5C45BA94
P 10250 1950
F 0 "C24" H 10365 1996 50  0000 L CNN
F 1 "0.1u" H 10365 1905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402_NoSilk" H 10288 1800 50  0001 C CNN
F 3 "~" H 10250 1950 50  0001 C CNN
	1    10250 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1700 10250 1700
Wire Wire Line
	10250 1700 10250 1800
Wire Wire Line
	10250 2300 10250 2200
Connection ~ 10250 2300
$Comp
L power:+3.3V #PWR0117
U 1 1 5C46BAD9
P 8050 900
F 0 "#PWR0117" H 8050 750 50  0001 C CNN
F 1 "+3.3V" H 8065 1073 50  0000 C CNN
F 2 "" H 8050 900 50  0001 C CNN
F 3 "" H 8050 900 50  0001 C CNN
	1    8050 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 900  8050 1000
Connection ~ 8050 1000
$Comp
L Device:C C25
U 1 1 5C4717BA
P 10400 1300
F 0 "C25" H 10285 1254 50  0000 R CNN
F 1 "2.2u" H 10285 1345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10438 1150 50  0001 C CNN
F 3 "~" H 10400 1300 50  0001 C CNN
	1    10400 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	9950 1100 10400 1100
Wire Wire Line
	10400 1100 10400 1150
$Comp
L Device:C C26
U 1 1 5C476F67
P 10700 1300
F 0 "C26" H 10585 1254 50  0000 R CNN
F 1 "2.2u" H 10585 1345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10738 1150 50  0001 C CNN
F 3 "~" H 10700 1300 50  0001 C CNN
	1    10700 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	9950 1000 10700 1000
Wire Wire Line
	10700 1000 10700 1150
Wire Wire Line
	10400 1450 10400 1500
Wire Wire Line
	10400 1500 10550 1500
Wire Wire Line
	10700 1500 10700 1450
$Comp
L power:GND #PWR0118
U 1 1 5C482167
P 10550 1550
F 0 "#PWR0118" H 10550 1300 50  0001 C CNN
F 1 "GND" H 10555 1377 50  0000 C CNN
F 2 "" H 10550 1550 50  0001 C CNN
F 3 "" H 10550 1550 50  0001 C CNN
	1    10550 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 1550 10550 1500
Connection ~ 10550 1500
Wire Wire Line
	10550 1500 10700 1500
$Comp
L power:GND #PWR0119
U 1 1 5C4880E7
P 10050 1450
F 0 "#PWR0119" H 10050 1200 50  0001 C CNN
F 1 "GND" H 10055 1277 50  0000 C CNN
F 2 "" H 10050 1450 50  0001 C CNN
F 3 "" H 10050 1450 50  0001 C CNN
	1    10050 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 1450 10050 1350
Wire Wire Line
	10050 1350 9950 1350
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5C48E097
P 10850 1900
F 0 "J2" H 10930 1892 50  0000 L CNN
F 1 "Reset" H 10930 1801 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 10850 1900 50  0001 C CNN
F 3 "~" H 10850 1900 50  0001 C CNN
	1    10850 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1700 10400 1700
Wire Wire Line
	10400 1700 10400 1900
Wire Wire Line
	10400 1900 10650 1900
Connection ~ 10250 1700
Wire Wire Line
	10650 2000 10400 2000
Wire Wire Line
	10400 2200 10250 2200
Wire Wire Line
	10400 2000 10400 2200
Connection ~ 10250 2200
Wire Wire Line
	10250 2200 10250 2100
Wire Wire Line
	8150 1800 8050 1800
Wire Wire Line
	8050 1800 8050 1700
Connection ~ 8050 1700
$Comp
L Device:C C1
U 1 1 5C4B3C49
P 750 5200
F 0 "C1" H 865 5246 50  0000 L CNN
F 1 "0.1u" H 865 5155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402_NoSilk" H 788 5050 50  0001 C CNN
F 3 "~" H 750 5200 50  0001 C CNN
	1    750  5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5C4B3E25
P 950 5200
F 0 "C4" H 1065 5246 50  0000 L CNN
F 1 "0.1u" H 1065 5155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402_NoSilk" H 988 5050 50  0001 C CNN
F 3 "~" H 950 5200 50  0001 C CNN
	1    950  5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5C4B3E71
P 1150 5200
F 0 "C6" H 1265 5246 50  0000 L CNN
F 1 "0.1u" H 1265 5155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402_NoSilk" H 1188 5050 50  0001 C CNN
F 3 "~" H 1150 5200 50  0001 C CNN
	1    1150 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5C4B3EBF
P 1350 5200
F 0 "C8" H 1465 5246 50  0000 L CNN
F 1 "0.1u" H 1465 5155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402_NoSilk" H 1388 5050 50  0001 C CNN
F 3 "~" H 1350 5200 50  0001 C CNN
	1    1350 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5C4B3F0F
P 1550 5200
F 0 "C9" H 1665 5246 50  0000 L CNN
F 1 "0.1u" H 1665 5155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402_NoSilk" H 1588 5050 50  0001 C CNN
F 3 "~" H 1550 5200 50  0001 C CNN
	1    1550 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5C4B3F61
P 1750 5200
F 0 "C10" H 1865 5246 50  0000 L CNN
F 1 "0.1u" H 1865 5155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402_NoSilk" H 1788 5050 50  0001 C CNN
F 3 "~" H 1750 5200 50  0001 C CNN
	1    1750 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5C4B3FB5
P 1950 5200
F 0 "C11" H 2065 5246 50  0000 L CNN
F 1 "0.1u" H 2065 5155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402_NoSilk" H 1988 5050 50  0001 C CNN
F 3 "~" H 1950 5200 50  0001 C CNN
	1    1950 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5C4B400F
P 2150 5200
F 0 "C13" H 2265 5246 50  0000 L CNN
F 1 "0.1u" H 2265 5155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402_NoSilk" H 2188 5050 50  0001 C CNN
F 3 "~" H 2150 5200 50  0001 C CNN
	1    2150 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 5C4B4067
P 2350 5200
F 0 "C15" H 2465 5246 50  0000 L CNN
F 1 "0.1u" H 2465 5155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402_NoSilk" H 2388 5050 50  0001 C CNN
F 3 "~" H 2350 5200 50  0001 C CNN
	1    2350 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5C4B411D
P 750 5900
F 0 "C2" H 865 5946 50  0000 L CNN
F 1 "1u" H 865 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 788 5750 50  0001 C CNN
F 3 "~" H 750 5900 50  0001 C CNN
	1    750  5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  5400 750  5350
Wire Wire Line
	750  5400 950  5400
Wire Wire Line
	950  5400 950  5350
Wire Wire Line
	950  5400 1150 5400
Wire Wire Line
	1150 5400 1150 5350
Connection ~ 950  5400
Wire Wire Line
	1150 5400 1350 5400
Wire Wire Line
	1350 5400 1350 5350
Connection ~ 1150 5400
Wire Wire Line
	1350 5400 1550 5400
Wire Wire Line
	2350 5400 2350 5350
Connection ~ 1350 5400
Wire Wire Line
	2150 5350 2150 5400
Connection ~ 2150 5400
Wire Wire Line
	2150 5400 2350 5400
Wire Wire Line
	1950 5400 1950 5350
Connection ~ 1950 5400
Wire Wire Line
	1950 5400 2150 5400
Wire Wire Line
	1750 5350 1750 5400
Connection ~ 1750 5400
Wire Wire Line
	1750 5400 1950 5400
Wire Wire Line
	1550 5400 1550 5350
Connection ~ 1550 5400
Wire Wire Line
	1550 5400 1750 5400
Wire Wire Line
	1550 5000 1750 5000
Wire Wire Line
	2350 5000 2350 5050
Wire Wire Line
	1550 5050 1550 5000
Wire Wire Line
	2150 5050 2150 5000
Connection ~ 2150 5000
Wire Wire Line
	2150 5000 2350 5000
Wire Wire Line
	1950 5050 1950 5000
Connection ~ 1950 5000
Wire Wire Line
	1950 5000 2150 5000
Wire Wire Line
	1750 5050 1750 5000
Connection ~ 1750 5000
Wire Wire Line
	1750 5000 1950 5000
Wire Wire Line
	1350 5050 1350 5000
Wire Wire Line
	1350 5000 1550 5000
Connection ~ 1550 5000
Wire Wire Line
	1350 5000 1150 5000
Wire Wire Line
	1150 5000 1150 5050
Connection ~ 1350 5000
Wire Wire Line
	1150 5000 950  5000
Wire Wire Line
	950  5000 950  5050
Connection ~ 1150 5000
Wire Wire Line
	950  5000 750  5000
Wire Wire Line
	750  5000 750  5050
Connection ~ 950  5000
$Comp
L power:GND #PWR0120
U 1 1 5C541011
P 1550 5450
F 0 "#PWR0120" H 1550 5200 50  0001 C CNN
F 1 "GND" H 1555 5277 50  0000 C CNN
F 2 "" H 1550 5450 50  0001 C CNN
F 3 "" H 1550 5450 50  0001 C CNN
	1    1550 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5450 1550 5400
$Comp
L power:+3.3V #PWR0121
U 1 1 5C54B88B
P 1550 4950
F 0 "#PWR0121" H 1550 4800 50  0001 C CNN
F 1 "+3.3V" H 1565 5123 50  0000 C CNN
F 2 "" H 1550 4950 50  0001 C CNN
F 3 "" H 1550 4950 50  0001 C CNN
	1    1550 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4950 1550 5000
$Comp
L Device:C C5
U 1 1 5C5560E3
P 950 5900
F 0 "C5" H 1065 5946 50  0000 L CNN
F 1 "1u" H 1065 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 988 5750 50  0001 C CNN
F 3 "~" H 950 5900 50  0001 C CNN
	1    950  5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  5750 750  5700
Wire Wire Line
	750  5700 950  5700
Wire Wire Line
	950  5700 950  5750
Wire Wire Line
	750  6050 750  6100
Wire Wire Line
	750  6100 950  6100
Wire Wire Line
	950  6100 950  6050
$Comp
L Device:C C7
U 1 1 5C56C0AF
P 1150 5900
F 0 "C7" H 1265 5946 50  0000 L CNN
F 1 "4.7u" H 1265 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1188 5750 50  0001 C CNN
F 3 "~" H 1150 5900 50  0001 C CNN
	1    1150 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5700 1150 5700
Wire Wire Line
	1150 5700 1150 5750
Connection ~ 950  5700
Wire Wire Line
	950  6100 1150 6100
Wire Wire Line
	1150 6100 1150 6050
Connection ~ 950  6100
$Comp
L power:GND #PWR0122
U 1 1 5C58333A
P 950 6150
F 0 "#PWR0122" H 950 5900 50  0001 C CNN
F 1 "GND" H 955 5977 50  0000 C CNN
F 2 "" H 950 6150 50  0001 C CNN
F 3 "" H 950 6150 50  0001 C CNN
	1    950  6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  6150 950  6100
$Comp
L power:+3.3V #PWR0123
U 1 1 5C58F3DE
P 950 5650
F 0 "#PWR0123" H 950 5500 50  0001 C CNN
F 1 "+3.3V" H 965 5823 50  0000 C CNN
F 2 "" H 950 5650 50  0001 C CNN
F 3 "" H 950 5650 50  0001 C CNN
	1    950  5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5650 950  5700
Wire Notes Line
	600  6400 600  4700
Text Notes 1850 5850 0    50   ~ 0
MCU caps
$Comp
L Connector:USB_B_Micro J1
U 1 1 5C5D1F73
P 3750 4000
F 0 "J1" H 3805 4467 50  0000 C CNN
F 1 "USB_B_Micro" H 3805 4376 50  0000 C CNN
F 2 "Connectors:USB_Micro-B" H 3900 3950 50  0001 C CNN
F 3 "~" H 3900 3950 50  0001 C CNN
	1    3750 4000
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0124
U 1 1 5C5D22DF
P 6000 3750
F 0 "#PWR0124" H 6000 3600 50  0001 C CNN
F 1 "VBUS" H 6015 3923 50  0000 C CNN
F 2 "" H 6000 3750 50  0001 C CNN
F 3 "" H 6000 3750 50  0001 C CNN
	1    6000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4400 3700 4400
$Comp
L power:GND #PWR0125
U 1 1 5C6129E4
P 3700 4450
F 0 "#PWR0125" H 3700 4200 50  0001 C CNN
F 1 "GND" H 3705 4277 50  0000 C CNN
F 2 "" H 3700 4450 50  0001 C CNN
F 3 "" H 3700 4450 50  0001 C CNN
	1    3700 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4450 3700 4400
Connection ~ 3700 4400
Wire Wire Line
	3700 4400 3650 4400
$Comp
L Device:C C18
U 1 1 5C63C15B
P 3300 4000
F 0 "C18" H 3415 4046 50  0000 L CNN
F 1 "1u" H 3415 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3338 3850 50  0001 C CNN
F 3 "~" H 3300 4000 50  0001 C CNN
	1    3300 4000
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0126
U 1 1 5C63C277
P 3200 3800
F 0 "#PWR0126" H 3200 3650 50  0001 C CNN
F 1 "VBUS" H 3215 3973 50  0000 C CNN
F 2 "" H 3200 3800 50  0001 C CNN
F 3 "" H 3200 3800 50  0001 C CNN
	1    3200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3850 3200 3850
Wire Wire Line
	3200 3850 3200 3800
Connection ~ 3200 3850
Wire Wire Line
	3200 3850 3300 3850
Wire Wire Line
	3100 4150 3200 4150
$Comp
L power:GND #PWR0127
U 1 1 5C6649E3
P 3200 4200
F 0 "#PWR0127" H 3200 3950 50  0001 C CNN
F 1 "GND" H 3205 4027 50  0000 C CNN
F 2 "" H 3200 4200 50  0001 C CNN
F 3 "" H 3200 4200 50  0001 C CNN
	1    3200 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4200 3200 4150
Connection ~ 3200 4150
Wire Wire Line
	3200 4150 3300 4150
$Comp
L core-rescue:USBLC6-4SC6-core U4
U 1 1 5C681E02
P 5000 4750
F 0 "U4" H 5250 4400 50  0000 C CNN
F 1 "USBLC6-4SC6" H 5300 5100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 4250 5150 50  0001 C CNN
F 3 "http://www2.st.com/resource/en/datasheet/CD00050750.pdf" H 5200 5100 50  0001 C CNN
	1    5000 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3800 6000 3750
Wire Wire Line
	4050 3800 5000 3800
Wire Wire Line
	5000 4250 5000 3800
Connection ~ 5000 3800
Wire Wire Line
	5000 3800 5400 3800
Wire Wire Line
	4500 4850 4250 4850
$Comp
L power:GND #PWR0128
U 1 1 5C6F3874
P 5000 5300
F 0 "#PWR0128" H 5000 5050 50  0001 C CNN
F 1 "GND" H 5005 5127 50  0000 C CNN
F 2 "" H 5000 5300 50  0001 C CNN
F 3 "" H 5000 5300 50  0001 C CNN
	1    5000 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 5300 5000 5250
Wire Notes Line
	3000 3450 3000 5600
Wire Notes Line
	3000 5600 6650 5600
Wire Notes Line
	6650 5600 6650 3450
Wire Notes Line
	3000 3450 6650 3450
Text Notes 6100 5300 0    50   ~ 0
USB
Wire Notes Line
	2900 6400 2900 4700
Wire Notes Line
	600  4700 2900 4700
Wire Notes Line
	600  6400 2900 6400
Wire Notes Line
	7200 550  7200 3350
Wire Notes Line
	7200 3350 11150 3350
Wire Notes Line
	11150 3350 11150 550 
Wire Notes Line
	11150 550  7200 550 
Text HLabel 2400 1400 2    50   Input ~ 0
BAT_CE
Text HLabel 6000 4200 2    50   BiDi ~ 0
USB_ID
Text HLabel 6000 4100 2    50   BiDi ~ 0
USB_D-
Text HLabel 6000 4000 2    50   BiDi ~ 0
USB_D+
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5C45FB62
P 4250 1050
F 0 "#FLG0102" H 4250 1125 50  0001 C CNN
F 1 "PWR_FLAG" H 4250 1223 50  0000 C CNN
F 2 "" H 4250 1050 50  0001 C CNN
F 3 "~" H 4250 1050 50  0001 C CNN
	1    4250 1050
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5C493E9B
P 2300 3700
F 0 "#FLG0104" H 2300 3775 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 3850 50  0000 C CNN
F 2 "" H 2300 3700 50  0001 C CNN
F 3 "~" H 2300 3700 50  0001 C CNN
	1    2300 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3700 2300 3850
Connection ~ 2300 3850
NoConn ~ 8150 2500
Wire Wire Line
	4250 1050 4250 1000
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5C4EEEA3
P 3900 800
F 0 "J4" V 3866 612 50  0000 R CNN
F 1 "CHRG_OUT" V 4000 950 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3900 800 50  0001 C CNN
F 3 "~" H 3900 800 50  0001 C CNN
	1    3900 800 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 1000 4250 1000
Wire Wire Line
	4300 1000 4250 1000
Connection ~ 4250 1000
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5C5233E1
P 5400 3600
F 0 "J5" V 5366 3412 50  0000 R CNN
F 1 "V_USB" V 5500 3750 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5400 3600 50  0001 C CNN
F 3 "~" H 5400 3600 50  0001 C CNN
	1    5400 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 3800 6000 3800
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5C523887
P 2450 3650
F 0 "J3" V 2550 3450 50  0000 R CNN
F 1 "V_3.3" V 2550 3700 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2450 3650 50  0001 C CNN
F 3 "~" H 2450 3650 50  0001 C CNN
	1    2450 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 3850 2350 3850
Wire Wire Line
	2350 3900 2350 3850
Wire Wire Line
	2350 4200 2350 4300
Wire Wire Line
	2350 4300 1550 4300
Wire Wire Line
	2750 3850 2550 3850
Wire Wire Line
	2350 3850 2450 3850
Connection ~ 2350 3850
$Comp
L Device:C C28
U 1 1 5C4343F0
P 3350 1200
F 0 "C28" H 3465 1246 50  0000 L CNN
F 1 "10u" H 3465 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3388 1050 50  0001 C CNN
F 3 "~" H 3350 1200 50  0001 C CNN
	1    3350 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C29
U 1 1 5C434480
P 3550 1200
F 0 "C29" H 3665 1246 50  0000 L CNN
F 1 "10u" H 3665 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3588 1050 50  0001 C CNN
F 3 "~" H 3550 1200 50  0001 C CNN
	1    3550 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1000 3550 1000
Wire Wire Line
	3550 1050 3550 1000
Connection ~ 3550 1000
Wire Wire Line
	3550 1350 3550 1400
Wire Wire Line
	3550 1400 3350 1400
Connection ~ 3350 1400
Wire Wire Line
	3350 1400 3350 1350
Wire Wire Line
	5500 4850 5600 4850
Wire Wire Line
	4050 4100 4250 4100
Wire Wire Line
	4050 4000 5600 4000
Wire Wire Line
	4250 4850 4250 4100
Connection ~ 4250 4100
Wire Wire Line
	4250 4100 6000 4100
Wire Wire Line
	5600 4850 5600 4000
Connection ~ 5600 4000
Wire Wire Line
	5600 4000 6000 4000
$Comp
L core-rescue:KXO-V97-core U5
U 1 1 5C525BA3
P 7950 4150
F 0 "U5" H 8100 3900 50  0000 L CNN
F 1 "KXO-V97" H 8050 4400 50  0000 L CNN
F 2 "Crystals:Crystal_SMD_7050-4pin_7.0x5.0mm" H 7950 4150 50  0001 C CNN
F 3 "" H 7950 4150 50  0001 C CNN
	1    7950 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5C526C3B
P 8650 4150
F 0 "R10" V 8443 4150 50  0000 C CNN
F 1 "510" V 8534 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8580 4150 50  0001 C CNN
F 3 "~" H 8650 4150 50  0001 C CNN
	1    8650 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 4150 8450 4150
$Comp
L Device:C C32
U 1 1 5C5AA6E9
P 8450 4350
F 0 "C32" H 8565 4396 50  0000 L CNN
F 1 "30pF" H 8565 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8488 4200 50  0001 C CNN
F 3 "~" H 8450 4350 50  0001 C CNN
	1    8450 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C30
U 1 1 5C5AA7EF
P 7450 3700
F 0 "C30" H 7565 3746 50  0000 L CNN
F 1 "10nF" H 7565 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7488 3550 50  0001 C CNN
F 3 "~" H 7450 3700 50  0001 C CNN
	1    7450 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5C5AAE14
P 7450 3900
F 0 "#PWR0133" H 7450 3650 50  0001 C CNN
F 1 "GND" H 7455 3727 50  0000 C CNN
F 2 "" H 7450 3900 50  0001 C CNN
F 3 "" H 7450 3900 50  0001 C CNN
	1    7450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3900 7450 3850
Wire Wire Line
	7450 3550 7450 3500
Wire Wire Line
	7450 3500 7950 3500
Wire Wire Line
	7950 3500 7950 3700
$Comp
L power:+3.3V #PWR0134
U 1 1 5C5E3553
P 8100 3700
F 0 "#PWR0134" H 8100 3550 50  0001 C CNN
F 1 "+3.3V" H 8115 3873 50  0000 C CNN
F 2 "" H 8100 3700 50  0001 C CNN
F 3 "" H 8100 3700 50  0001 C CNN
	1    8100 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3700 7950 3700
Connection ~ 7950 3700
Wire Wire Line
	7950 3700 7950 3750
$Comp
L power:GND #PWR0135
U 1 1 5C5F66DB
P 7950 4650
F 0 "#PWR0135" H 7950 4400 50  0001 C CNN
F 1 "GND" H 7955 4477 50  0000 C CNN
F 2 "" H 7950 4650 50  0001 C CNN
F 3 "" H 7950 4650 50  0001 C CNN
	1    7950 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4650 7950 4600
Wire Wire Line
	7950 4600 8450 4600
Wire Wire Line
	8450 4600 8450 4500
Connection ~ 7950 4600
Wire Wire Line
	7950 4600 7950 4550
Wire Wire Line
	8450 4200 8450 4150
Connection ~ 8450 4150
Wire Wire Line
	8450 4150 8500 4150
$Comp
L Device:R R8
U 1 1 5C643DAB
P 7400 4350
F 0 "R8" H 7470 4396 50  0000 L CNN
F 1 "22k" H 7470 4305 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 7330 4350 50  0001 C CNN
F 3 "~" H 7400 4350 50  0001 C CNN
	1    7400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 4500 7400 4600
Wire Wire Line
	7400 4600 7950 4600
Wire Wire Line
	7400 4200 7400 4150
Wire Wire Line
	7400 4150 7500 4150
$Comp
L core-rescue:KXO-V97-core U6
U 1 1 5C68096E
P 7950 5650
F 0 "U6" H 8100 5400 50  0000 L CNN
F 1 "KXO-V97" H 8050 5900 50  0000 L CNN
F 2 "Crystals:Crystal_SMD_7050-4pin_7.0x5.0mm" H 7950 5650 50  0001 C CNN
F 3 "" H 7950 5650 50  0001 C CNN
	1    7950 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5C680974
P 8650 5650
F 0 "R11" V 8443 5650 50  0000 C CNN
F 1 "510" V 8534 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8580 5650 50  0001 C CNN
F 3 "~" H 8650 5650 50  0001 C CNN
	1    8650 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 5650 8450 5650
$Comp
L Device:C C33
U 1 1 5C68097B
P 8450 5850
F 0 "C33" H 8565 5896 50  0000 L CNN
F 1 "30pF" H 8565 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8488 5700 50  0001 C CNN
F 3 "~" H 8450 5850 50  0001 C CNN
	1    8450 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C31
U 1 1 5C680981
P 7450 5200
F 0 "C31" H 7565 5246 50  0000 L CNN
F 1 "10nF" H 7565 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7488 5050 50  0001 C CNN
F 3 "~" H 7450 5200 50  0001 C CNN
	1    7450 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 5C680987
P 7450 5400
F 0 "#PWR0136" H 7450 5150 50  0001 C CNN
F 1 "GND" H 7455 5227 50  0000 C CNN
F 2 "" H 7450 5400 50  0001 C CNN
F 3 "" H 7450 5400 50  0001 C CNN
	1    7450 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 5400 7450 5350
Wire Wire Line
	7450 5050 7450 5000
Wire Wire Line
	7450 5000 7950 5000
$Comp
L power:+3.3V #PWR0137
U 1 1 5C680991
P 8100 5150
F 0 "#PWR0137" H 8100 5000 50  0001 C CNN
F 1 "+3.3V" H 8115 5323 50  0000 C CNN
F 2 "" H 8100 5150 50  0001 C CNN
F 3 "" H 8100 5150 50  0001 C CNN
	1    8100 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0138
U 1 1 5C68099A
P 7950 6150
F 0 "#PWR0138" H 7950 5900 50  0001 C CNN
F 1 "GND" H 7955 5977 50  0000 C CNN
F 2 "" H 7950 6150 50  0001 C CNN
F 3 "" H 7950 6150 50  0001 C CNN
	1    7950 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 6150 7950 6100
Wire Wire Line
	7950 6100 8450 6100
Wire Wire Line
	8450 6100 8450 6000
Connection ~ 7950 6100
Wire Wire Line
	7950 6100 7950 6050
Wire Wire Line
	8450 5700 8450 5650
Connection ~ 8450 5650
Wire Wire Line
	8450 5650 8500 5650
$Comp
L Device:R R9
U 1 1 5C6809A8
P 7400 5850
F 0 "R9" H 7470 5896 50  0000 L CNN
F 1 "22k" H 7470 5805 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 7330 5850 50  0001 C CNN
F 3 "~" H 7400 5850 50  0001 C CNN
	1    7400 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 6000 7400 6100
Wire Wire Line
	7400 6100 7950 6100
Wire Wire Line
	7400 5700 7400 5650
Wire Wire Line
	7400 5650 7500 5650
Wire Notes Line
	8900 3400 8900 6400
Wire Wire Line
	8800 5650 9100 5650
Wire Wire Line
	9100 5650 9100 4900
Wire Wire Line
	9100 4150 8800 4150
Wire Wire Line
	9100 4900 9350 4900
Wire Wire Line
	9350 4900 9350 2950
Wire Wire Line
	9350 2950 8000 2950
Wire Wire Line
	8000 2950 8000 2100
Connection ~ 9100 4900
Wire Wire Line
	9100 4900 9100 4150
Wire Wire Line
	8000 2100 8150 2100
Text HLabel 7300 4150 0    50   Input ~ 0
CRYST_2
Wire Wire Line
	7300 4150 7400 4150
Connection ~ 7400 4150
Text HLabel 7300 5650 0    50   Input ~ 0
CRYST_1
Wire Wire Line
	7300 5650 7400 5650
Connection ~ 7400 5650
Wire Notes Line
	6850 6400 6850 3400
Wire Notes Line
	6850 3400 8900 3400
Wire Notes Line
	6850 6400 8900 6400
Wire Notes Line
	6850 4900 8900 4900
Wire Wire Line
	5500 4650 5550 4650
Wire Wire Line
	5550 4650 5550 4200
Connection ~ 5550 4200
Wire Wire Line
	5550 4200 6000 4200
Wire Wire Line
	4050 4200 5550 4200
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5C46BAED
P 6250 3750
F 0 "#FLG0103" H 6250 3825 50  0001 C CNN
F 1 "PWR_FLAG" H 6350 3900 50  0000 C CNN
F 2 "" H 6250 3750 50  0001 C CNN
F 3 "~" H 6250 3750 50  0001 C CNN
	1    6250 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3750 6250 3800
Wire Wire Line
	6250 3800 6000 3800
Connection ~ 6000 3800
NoConn ~ 4500 4650
$Comp
L Battery_Management:MCP73831-2-OT U3
U 1 1 5CA29BCA
P 1700 1300
F 0 "U3" H 1350 1400 50  0000 C CNN
F 1 "MCP73831-2-OT" H 1050 1500 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1750 1050 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 1550 1250 50  0001 C CNN
	1    1700 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 900  3000 1000
Wire Wire Line
	1700 850  1700 950 
$Comp
L power:GND #PWR0105
U 1 1 5CB12982
P 1700 1900
F 0 "#PWR0105" H 1700 1650 50  0001 C CNN
F 1 "GND" H 1705 1727 50  0000 C CNN
F 2 "" H 1700 1900 50  0001 C CNN
F 3 "" H 1700 1900 50  0001 C CNN
	1    1700 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1600 1700 1800
$Comp
L power:+BATT #PWR0106
U 1 1 5CB2015B
P 2300 1150
F 0 "#PWR0106" H 2300 1000 50  0001 C CNN
F 1 "+BATT" H 2315 1323 50  0000 C CNN
F 2 "" H 2300 1150 50  0001 C CNN
F 3 "" H 2300 1150 50  0001 C CNN
	1    2300 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1200 2300 1200
Wire Wire Line
	2300 1200 2300 1150
Wire Wire Line
	2400 1400 2100 1400
$Comp
L Device:R R2
U 1 1 5CB3B394
P 1200 1600
F 0 "R2" H 1270 1646 50  0000 L CNN
F 1 "2k" H 1270 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1130 1600 50  0001 C CNN
F 3 "~" H 1200 1600 50  0001 C CNN
	1    1200 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1450 1200 1400
Wire Wire Line
	1200 1400 1300 1400
Wire Wire Line
	1200 1750 1200 1800
Wire Wire Line
	1200 1800 1700 1800
Connection ~ 1700 1800
Wire Wire Line
	1700 1800 1700 1900
Wire Wire Line
	3350 1000 3000 1000
Connection ~ 3350 1000
Connection ~ 3000 1000
Wire Wire Line
	3000 1000 3000 1050
$Comp
L core-rescue:DW01-P U7
U 1 1 5CBF741E
P 5350 2400
F 0 "U7" H 5350 2915 50  0000 C CNN
F 1 "DW01-P" H 5350 2824 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 5300 2100 50  0001 C CNN
F 3 "" H 5300 2100 50  0001 C CNN
	1    5350 2400
	1    0    0    -1  
$EndComp
$Comp
L core-rescue:8205 U8
U 1 1 5CBF8908
P 6200 2500
F 0 "U8" H 6350 2250 50  0000 C CNN
F 1 "8205" H 6300 2750 50  0000 C CNN
F 2 "Package_SO:TSSOP-8_4.4x3mm_P0.65mm" H 6800 2850 50  0001 C CNN
F 3 "" H 6800 2850 50  0001 C CNN
	1    6200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2350 5900 2350
Wire Wire Line
	5700 2650 5900 2650
Wire Wire Line
	6500 2550 6550 2550
Wire Wire Line
	6550 2550 6550 2650
Wire Wire Line
	6550 2650 6500 2650
Wire Wire Line
	6550 2650 6550 2900
Connection ~ 6550 2650
$Comp
L Device:C C17
U 1 1 5CD44FE7
P 4750 2400
F 0 "C17" H 4865 2446 50  0000 L CNN
F 1 "100n" H 4865 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4788 2250 50  0001 C CNN
F 3 "~" H 4750 2400 50  0001 C CNN
	1    4750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2650 5000 2650
Wire Wire Line
	4750 2900 4750 2650
Wire Wire Line
	4750 2900 6550 2900
Connection ~ 4750 2650
Wire Wire Line
	4750 2650 4750 2550
Wire Wire Line
	4750 2250 4750 2150
Wire Wire Line
	4750 2150 5000 2150
NoConn ~ 5900 2450
NoConn ~ 5900 2550
Wire Wire Line
	6550 2450 6500 2450
Wire Wire Line
	6500 2350 6550 2350
Connection ~ 6550 2350
Wire Wire Line
	6550 2350 6550 2450
$Comp
L power:+BATT #PWR0107
U 1 1 5CDE5F21
P 4750 1700
F 0 "#PWR0107" H 4750 1550 50  0001 C CNN
F 1 "+BATT" H 4765 1873 50  0000 C CNN
F 2 "" H 4750 1700 50  0001 C CNN
F 3 "" H 4750 1700 50  0001 C CNN
	1    4750 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5CE19ED9
P 4750 1950
F 0 "R3" H 4820 1996 50  0000 L CNN
F 1 "100" H 4820 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4680 1950 50  0001 C CNN
F 3 "~" H 4750 1950 50  0001 C CNN
	1    4750 1950
	1    0    0    -1  
$EndComp
Connection ~ 4750 2150
Wire Wire Line
	4750 2100 4750 2150
Wire Wire Line
	4750 1800 4750 1750
Connection ~ 4750 2900
Wire Wire Line
	4350 1750 4500 1750
Connection ~ 4750 1750
Wire Wire Line
	4750 1750 4750 1700
$Comp
L power:GND #PWR0109
U 1 1 5CE6F7FC
P 6750 2350
F 0 "#PWR0109" H 6750 2100 50  0001 C CNN
F 1 "GND" H 6755 2177 50  0000 C CNN
F 2 "" H 6750 2350 50  0001 C CNN
F 3 "" H 6750 2350 50  0001 C CNN
	1    6750 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5CE82A4B
P 5950 2150
F 0 "R4" V 5743 2150 50  0000 C CNN
F 1 "1k" V 5834 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5880 2150 50  0001 C CNN
F 3 "~" H 5950 2150 50  0001 C CNN
	1    5950 2150
	0    1    1    0   
$EndComp
NoConn ~ 5700 2250
Wire Wire Line
	5700 2150 5800 2150
Wire Wire Line
	6100 2150 6550 2150
Wire Wire Line
	6550 2150 6550 2350
Wire Wire Line
	6550 2150 6750 2150
Wire Wire Line
	6750 2150 6750 2350
Connection ~ 6550 2150
Wire Wire Line
	3550 1000 3900 1000
$Comp
L Device:Fuse F1
U 1 1 5CEF34C3
P 4200 1750
F 0 "F1" V 4003 1750 50  0000 C CNN
F 1 "MF-MSMF110" V 4094 1750 50  0000 C CNN
F 2 "Fuse:Fuse_1812_4532Metric_Pad1.30x3.40mm_HandSolder" V 4130 1750 50  0001 C CNN
F 3 "~" H 4200 1750 50  0001 C CNN
	1    4200 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 2150 3900 1750
Wire Wire Line
	3900 1750 4050 1750
$Comp
L Device:D_Schottky D1
U 1 1 5CF15BEB
P 4500 2300
F 0 "D1" V 4450 2150 50  0000 L CNN
F 1 "2A" V 4550 2150 50  0000 L CNN
F 2 "Diode_SMD:D_2010_5025Metric" H 4500 2300 50  0001 C CNN
F 3 "~" H 4500 2300 50  0001 C CNN
	1    4500 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 2450 3900 2900
Wire Wire Line
	3900 2900 4500 2900
Wire Wire Line
	4500 2450 4500 2900
Connection ~ 4500 2900
Wire Wire Line
	4500 2900 4750 2900
Wire Wire Line
	4500 2150 4500 1750
Connection ~ 4500 1750
Wire Wire Line
	4500 1750 4750 1750
$Comp
L Device:C C14
U 1 1 5CF4B6A2
P 3100 4000
F 0 "C14" H 3215 4046 50  0000 L CNN
F 1 "10u" H 3215 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3138 3850 50  0001 C CNN
F 3 "~" H 3100 4000 50  0001 C CNN
	1    3100 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5CF4B8A0
P 900 1300
F 0 "C12" H 1015 1346 50  0000 L CNN
F 1 "10u" H 1015 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 938 1150 50  0001 C CNN
F 3 "~" H 900 1300 50  0001 C CNN
	1    900  1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1150 900  950 
Wire Wire Line
	900  950  1700 950 
Connection ~ 1700 950 
Wire Wire Line
	1700 950  1700 1000
Wire Wire Line
	900  1450 900  1800
Wire Wire Line
	900  1800 1200 1800
Connection ~ 1200 1800
$EndSCHEMATC
