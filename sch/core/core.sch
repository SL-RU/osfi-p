EESchema Schematic File Version 4
LIBS:core-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
L core:STM32F427VITx U1
U 1 1 5C3BE072
P 4300 2950
F 0 "U1" H 4300 3965 50  0000 C CNN
F 1 "STM32F427VITx" H 4300 3874 50  0000 C CNN
F 2 "Housings_QFP:LQFP-100_14x14mm_Pitch0.5mm" H 5100 1900 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00071990.pdf" H 4350 3000 50  0001 C CNN
	1    4300 2950
	1    0    0    -1  
$EndComp
$Comp
L core:STM32F427VITx U1
U 2 1 5C3BE13B
P 6650 2950
F 0 "U1" H 6650 3965 50  0000 C CNN
F 1 "STM32F427VITx" H 6650 3874 50  0000 C CNN
F 2 "Housings_QFP:LQFP-100_14x14mm_Pitch0.5mm" H 7450 1900 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00071990.pdf" H 6700 3000 50  0001 C CNN
	2    6650 2950
	1    0    0    -1  
$EndComp
$Comp
L core:STM32F427VITx U1
U 3 1 5C3BE204
P 1500 2950
F 0 "U1" H 1606 3965 50  0000 C CNN
F 1 "STM32F427VITx" H 1606 3874 50  0000 C CNN
F 2 "Housings_QFP:LQFP-100_14x14mm_Pitch0.5mm" H 2300 1900 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00071990.pdf" H 1550 3000 50  0001 C CNN
	3    1500 2950
	1    0    0    -1  
$EndComp
$Sheet
S 3450 5600 1100 800 
U 5C3BFBF8
F0 "power" 50
F1 "power.sch" 50
F2 "BAT_INT" I R 4550 5700 50 
F3 "BAT_SDA" B R 4550 5800 50 
F4 "BAT_SCL" I R 4550 5900 50 
F5 "BAT_OTG" I R 4550 6000 50 
F6 "BAT_CE" I R 4550 6100 50 
F7 "BAT_PSEL" I R 4550 6200 50 
F8 "BAT_PG" I R 4550 6300 50 
F9 "USB_ID" B L 3450 5700 50 
F10 "USB_DM" B L 3450 5800 50 
F11 "USB_DP" B L 3450 5900 50 
$EndSheet
$Sheet
S 6050 5600 650  800 
U 5C4DC24C
F0 "display" 50
F1 "display.sch" 50
F2 "MISO" I L 6050 5700 50 
F3 "LED" I L 6050 5800 50 
F4 "SCK" I L 6050 5900 50 
F5 "MOSI" I L 6050 6000 50 
F6 "DC" I L 6050 6100 50 
F7 "RST" I L 6050 6200 50 
F8 "CS" I L 6050 6300 50 
$EndSheet
$EndSCHEMATC
