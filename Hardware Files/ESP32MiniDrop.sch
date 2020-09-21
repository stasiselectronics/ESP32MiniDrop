EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "ESP32MiniDrop"
Date "2020-08-24"
Rev "A02"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Q_NMOS_GDS Q1
U 1 1 5F4F858B
P 6225 7000
AR Path="/5F4F858B" Ref="Q1"  Part="1" 
AR Path="/5F45E76E/5F4F858B" Ref="Q?"  Part="1" 
F 0 "Q1" H 6429 7091 50  0000 L CNN
F 1 "NMOS 60V 46A" H 6429 7000 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-3_TabPin2" H 6425 7100 50  0001 C CNN
F 3 "~" H 6225 7000 50  0001 C CNN
F 4 "ON Semiconductor" H 6225 7000 50  0001 C CNN "MF"
F 5 "NTD5865NLT4G" H 6429 6909 50  0000 L CNN "MPN"
	1    6225 7000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5F4F8599
P 6825 6350
AR Path="/5F4F8599" Ref="J2"  Part="1" 
AR Path="/5F45E76E/5F4F8599" Ref="J?"  Part="1" 
F 0 "J2" H 6905 6342 50  0000 L CNN
F 1 "Solenoid1 Terminal" H 6905 6251 50  0000 L CNN
F 2 "ESP32MiniDrop_PCB_Library:1935161" H 6825 6350 50  0001 C CNN
F 3 "~" H 6825 6350 50  0001 C CNN
F 4 "Pheonix Contact" H 6825 6350 50  0001 C CNN "MF"
F 5 "1935161" H 6825 6350 50  0001 C CNN "MPN"
	1    6825 6350
	1    0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5F4F85A1
P 5925 7250
AR Path="/5F4F85A1" Ref="R5"  Part="1" 
AR Path="/5F45E76E/5F4F85A1" Ref="R?"  Part="1" 
F 0 "R5" V 5718 7250 50  0000 C CNN
F 1 "10k 5% 0.25W" V 5809 7250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5855 7250 50  0001 C CNN
F 3 "~" H 5925 7250 50  0001 C CNN
F 4 "Yageo" H 5925 7250 50  0001 C CNN "MF"
F 5 "RC1206JR-0710KL" H 5925 7250 50  0001 C CNN "MPN"
	1    5925 7250
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5F4F85AF
P 6325 7500
AR Path="/5F4F85AF" Ref="#PWR016"  Part="1" 
AR Path="/5F45E76E/5F4F85AF" Ref="#PWR?"  Part="1" 
F 0 "#PWR016" H 6325 7250 50  0001 C CNN
F 1 "GND" H 6330 7327 50  0000 C CNN
F 2 "" H 6325 7500 50  0001 C CNN
F 3 "" H 6325 7500 50  0001 C CNN
	1    6325 7500
	1    0    0    -1  
$EndComp
Connection ~ 5925 7000
Wire Wire Line
	5925 7000 6025 7000
$Comp
L Device:D D3
U 1 1 5F4F85C5
P 6325 6300
AR Path="/5F4F85C5" Ref="D3"  Part="1" 
AR Path="/5F45E76E/5F4F85C5" Ref="D?"  Part="1" 
F 0 "D3" V 6375 6175 50  0000 R CNN
F 1 "600V 5A" V 6300 6175 50  0000 R CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 6325 6300 50  0001 C CNN
F 3 "~" H 6325 6300 50  0001 C CNN
F 4 "SD560BTR" V 6225 6175 50  0000 R CNN "MPN"
F 5 "SMC Diode Solutions" H 6325 6300 50  0001 C CNN "MF"
	1    6325 6300
	0    1    1    0   
$EndComp
Text GLabel 5775 7000 0    50   Input ~ 0
Solenoid_1_CTLO
Text GLabel 4025 3875 2    50   Input ~ 0
Solenoid_1_CTLO
$Comp
L Device:R R?
U 1 1 5F512BF3
P 8425 2075
AR Path="/5F45F2B5/5F512BF3" Ref="R?"  Part="1" 
AR Path="/5F512BF3" Ref="R1"  Part="1" 
F 0 "R1" H 8495 2121 50  0000 L CNN
F 1 "10k 5% 0.25W" H 8495 2030 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8355 2075 50  0001 C CNN
F 3 "~" H 8425 2075 50  0001 C CNN
F 4 "Yageo" H 8425 2075 50  0001 C CNN "MF"
F 5 "RC1206JR-0710KL" H 8425 2075 50  0001 C CNN "MPN"
	1    8425 2075
	1    0    0    -1  
$EndComp
Wire Wire Line
	8425 2225 8425 2425
Text Label 8475 2425 0    50   ~ 0
EN
$Comp
L power:+3.3V #PWR?
U 1 1 5F512BFB
P 8425 1775
AR Path="/5F45F2B5/5F512BFB" Ref="#PWR?"  Part="1" 
AR Path="/5F512BFB" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 8425 1625 50  0001 C CNN
F 1 "+3.3V" H 8440 1948 50  0000 C CNN
F 2 "" H 8425 1775 50  0001 C CNN
F 3 "" H 8425 1775 50  0001 C CNN
	1    8425 1775
	1    0    0    -1  
$EndComp
Wire Wire Line
	8425 1775 8425 1925
$Comp
L Device:C C?
U 1 1 5F512C25
P 1825 2650
AR Path="/5F45F2B5/5F512C25" Ref="C?"  Part="1" 
AR Path="/5F512C25" Ref="C3"  Part="1" 
F 0 "C3" H 1940 2696 50  0000 L CNN
F 1 "1uF 50V" H 1940 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1863 2500 50  0001 C CNN
F 3 "~" H 1825 2650 50  0001 C CNN
F 4 "Samsung Electro-Mechanics" H 1825 2650 50  0001 C CNN "MF"
F 5 "CL31B105KBHNFNE" H 1825 2650 50  0001 C CNN "MPN"
	1    1825 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1225 2800 1225 2850
Wire Wire Line
	1225 2850 1825 2850
Wire Wire Line
	1825 2850 1825 2800
Wire Wire Line
	1225 2500 1225 2450
Wire Wire Line
	1225 2450 1825 2450
Wire Wire Line
	1825 2450 1825 2500
Wire Wire Line
	1225 2450 1225 2350
$Comp
L power:+3.3V #PWR?
U 1 1 5F512C32
P 1225 2350
AR Path="/5F45F2B5/5F512C32" Ref="#PWR?"  Part="1" 
AR Path="/5F512C32" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 1225 2200 50  0001 C CNN
F 1 "+3.3V" H 1240 2523 50  0000 C CNN
F 2 "" H 1225 2350 50  0001 C CNN
F 3 "" H 1225 2350 50  0001 C CNN
	1    1225 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F512C38
P 1825 2950
AR Path="/5F45F2B5/5F512C38" Ref="#PWR?"  Part="1" 
AR Path="/5F512C38" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 1825 2700 50  0001 C CNN
F 1 "GND" H 1830 2777 50  0000 C CNN
F 2 "" H 1825 2950 50  0001 C CNN
F 3 "" H 1825 2950 50  0001 C CNN
	1    1825 2950
	1    0    0    -1  
$EndComp
Connection ~ 1825 2850
Wire Wire Line
	1825 2950 1825 2850
Connection ~ 1225 2450
$Comp
L power:GND #PWR?
U 1 1 5F512C41
P 3175 4575
AR Path="/5F45F2B5/5F512C41" Ref="#PWR?"  Part="1" 
AR Path="/5F512C41" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 3175 4325 50  0001 C CNN
F 1 "GND" H 3180 4402 50  0000 C CNN
F 2 "" H 3175 4575 50  0001 C CNN
F 3 "" H 3175 4575 50  0001 C CNN
	1    3175 4575
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 4575 3175 4475
Wire Wire Line
	2575 1875 2375 1875
Text Label 2375 1875 0    50   ~ 0
EN
Wire Wire Line
	3775 1975 4125 1975
Wire Wire Line
	3775 2175 4125 2175
Text Label 4125 1975 2    50   ~ 0
USB_RX
Text Label 4125 2175 2    50   ~ 0
USB_TX
$Comp
L Switch:SW_Push SW?
U 1 1 5F512C54
P 9425 2425
AR Path="/5F45F2B5/5F512C54" Ref="SW?"  Part="1" 
AR Path="/5F512C54" Ref="SW2"  Part="1" 
F 0 "SW2" H 9425 2710 50  0000 C CNN
F 1 "SPST (RED)" H 9425 2619 50  0000 C CNN
F 2 "ESP32MiniDrop_PCB_Library:1825027-8" H 9425 2625 50  0001 C CNN
F 3 "~" H 9425 2625 50  0001 C CNN
F 4 "TE Connectivity ALCOSWITCH Switches" H 9425 2425 50  0001 C CNN "MF"
F 5 "1825027-6" H 9425 2425 50  0001 C CNN "MPN"
	1    9425 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	9625 2425 9875 2425
Wire Wire Line
	9875 2425 9875 2625
$Comp
L power:GND #PWR?
U 1 1 5F512C5C
P 9875 2725
AR Path="/5F45F2B5/5F512C5C" Ref="#PWR?"  Part="1" 
AR Path="/5F512C5C" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 9875 2475 50  0001 C CNN
F 1 "GND" H 9880 2552 50  0000 C CNN
F 2 "" H 9875 2725 50  0001 C CNN
F 3 "" H 9875 2725 50  0001 C CNN
	1    9875 2725
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F512C64
P 9425 2625
AR Path="/5F45F2B5/5F512C64" Ref="C?"  Part="1" 
AR Path="/5F512C64" Ref="C1"  Part="1" 
F 0 "C1" V 9575 2625 50  0000 C CNN
F 1 "1nF 50V" V 9675 2625 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9463 2475 50  0001 C CNN
F 3 "~" H 9425 2625 50  0001 C CNN
F 4 "Walsin Technology Corporation" V 9425 2625 50  0001 C CNN "MF"
F 5 "1206B102K500CT" V 9425 2625 50  0001 C CNN "MPN"
	1    9425 2625
	0    1    1    0   
$EndComp
Connection ~ 9175 2425
Wire Wire Line
	9175 2425 9225 2425
Wire Wire Line
	9175 2625 9275 2625
Wire Wire Line
	9175 2425 9175 2625
Wire Wire Line
	9575 2625 9875 2625
Connection ~ 9875 2625
Wire Wire Line
	9875 2625 9875 2725
$Comp
L Diode:1N5819 D?
U 1 1 5F512C73
P 2600 9550
AR Path="/5F45F2B5/5F512C73" Ref="D?"  Part="1" 
AR Path="/5F512C73" Ref="D4"  Part="1" 
F 0 "D4" H 2600 9333 50  0000 C CNN
F 1 "40V 2A" H 2600 9424 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 2600 9375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 2600 9550 50  0001 C CNN
F 4 "ON Semiconductor" H 2600 9550 50  0001 C CNN "MF"
F 5 "SS24FL" H 2600 9550 50  0001 C CNN "MPN"
	1    2600 9550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 9550 2950 9550
Connection ~ 3200 9550
Wire Wire Line
	2750 9150 3200 9150
Wire Wire Line
	3200 9150 3200 9550
$Comp
L power:+12V #PWR?
U 1 1 5F512C88
P 2200 9500
AR Path="/5F45F2B5/5F512C88" Ref="#PWR?"  Part="1" 
AR Path="/5F512C88" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 2200 9350 50  0001 C CNN
F 1 "+12V" H 2215 9673 50  0000 C CNN
F 2 "" H 2200 9500 50  0001 C CNN
F 3 "" H 2200 9500 50  0001 C CNN
	1    2200 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 9500 2200 9550
Wire Wire Line
	2200 9550 2450 9550
$Comp
L Device:C C?
U 1 1 5F512C92
P 2950 9775
AR Path="/5F45F2B5/5F512C92" Ref="C?"  Part="1" 
AR Path="/5F512C92" Ref="C5"  Part="1" 
F 0 "C5" H 3100 9725 50  0000 L CNN
F 1 "10uF 25V 10%" H 3100 9800 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2988 9625 50  0001 C CNN
F 3 "~" H 2950 9775 50  0001 C CNN
F 4 "Samsung Electro-Mechanics" H 2950 9775 50  0001 C CNN "MF"
F 5 "CL31A106MAHNNNE" H 2950 9775 50  0001 C CNN "MPN"
	1    2950 9775
	-1   0    0    1   
$EndComp
Connection ~ 2950 9550
Wire Wire Line
	2950 9550 3200 9550
Wire Wire Line
	2950 9625 2950 9550
Wire Wire Line
	2950 9925 2950 10000
Text Notes 3475 9075 0    50   ~ 0
Regulator for both 12V and 5V\ninput sources
Text Notes 8350 1450 0    50   ~ 0
Boot Mode Selection
Text Notes 9225 1975 0    50   ~ 0
User Reset
$Comp
L Device:C C?
U 1 1 5F512CC9
P 1225 2650
AR Path="/5F45F2B5/5F512CC9" Ref="C?"  Part="1" 
AR Path="/5F512CC9" Ref="C2"  Part="1" 
F 0 "C2" H 1375 2600 50  0000 L CNN
F 1 "10uF 25V 10%" H 1375 2675 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1263 2500 50  0001 C CNN
F 3 "~" H 1225 2650 50  0001 C CNN
F 4 "Samsung Electro-Mechanics" H 1225 2650 50  0001 C CNN "MF"
F 5 "CL31A106MAHNNNE" H 1225 2650 50  0001 C CNN "MPN"
	1    1225 2650
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F512CCF
P 3175 1575
AR Path="/5F45F2B5/5F512CCF" Ref="#PWR?"  Part="1" 
AR Path="/5F512CCF" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 3175 1425 50  0001 C CNN
F 1 "+3.3V" H 3190 1748 50  0000 C CNN
F 2 "" H 3175 1575 50  0001 C CNN
F 3 "" H 3175 1575 50  0001 C CNN
	1    3175 1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 1575 3175 1675
Text Label 4125 1875 2    50   ~ 0
IO0
Wire Wire Line
	4125 2575 3775 2575
Wire Wire Line
	8425 2425 9175 2425
$Comp
L Switch:SW_Push SW?
U 1 1 5F512D38
P 6325 2425
AR Path="/5F45F2B5/5F512D38" Ref="SW?"  Part="1" 
AR Path="/5F512D38" Ref="SW1"  Part="1" 
F 0 "SW1" H 6325 2710 50  0000 C CNN
F 1 "SPST (BLUE)" H 6325 2619 50  0000 C CNN
F 2 "ESP32MiniDrop_PCB_Library:1825027-8" H 6325 2625 50  0001 C CNN
F 3 "~" H 6325 2625 50  0001 C CNN
F 4 "TE Connectivity ALCOSWITCH Switches" H 6325 2425 50  0001 C CNN "MF"
F 5 "1825027-8" H 6325 2425 50  0001 C CNN "MPN"
	1    6325 2425
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F512D40
P 6325 2675
AR Path="/5F45F2B5/5F512D40" Ref="C?"  Part="1" 
AR Path="/5F512D40" Ref="C4"  Part="1" 
F 0 "C4" V 6475 2675 50  0000 C CNN
F 1 "1nF 50V" V 6575 2675 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6363 2525 50  0001 C CNN
F 3 "~" H 6325 2675 50  0001 C CNN
F 4 "Walsin Technology Corporation" V 6325 2675 50  0001 C CNN "MF"
F 5 "1206B102K500CT" V 6325 2675 50  0001 C CNN "MPN"
	1    6325 2675
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F512D48
P 5725 2125
AR Path="/5F45F2B5/5F512D48" Ref="R?"  Part="1" 
AR Path="/5F512D48" Ref="R2"  Part="1" 
F 0 "R2" H 5550 2200 50  0000 L CNN
F 1 "10k 5% 0.25W" H 5100 2125 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5655 2125 50  0001 C CNN
F 3 "~" H 5725 2125 50  0001 C CNN
F 4 "Yageo" H 5725 2125 50  0001 C CNN "MF"
F 5 "RC1206JR-0710KL" H 5725 2125 50  0001 C CNN "MPN"
	1    5725 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	5725 2275 5725 2425
Wire Wire Line
	5725 2425 6125 2425
Wire Wire Line
	5725 2425 5725 2675
Wire Wire Line
	5725 2675 6175 2675
Connection ~ 5725 2425
Wire Wire Line
	6525 2425 6925 2425
Wire Wire Line
	6925 2425 6925 2675
Wire Wire Line
	6475 2675 6925 2675
Connection ~ 6925 2675
Wire Wire Line
	6925 2675 6925 2875
Wire Wire Line
	5725 1825 5725 1975
$Comp
L power:+3.3V #PWR?
U 1 1 5F512D59
P 5725 1825
AR Path="/5F45F2B5/5F512D59" Ref="#PWR?"  Part="1" 
AR Path="/5F512D59" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 5725 1675 50  0001 C CNN
F 1 "+3.3V" H 5740 1998 50  0000 C CNN
F 2 "" H 5725 1825 50  0001 C CNN
F 3 "" H 5725 1825 50  0001 C CNN
	1    5725 1825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F512D5F
P 6925 2875
AR Path="/5F45F2B5/5F512D5F" Ref="#PWR?"  Part="1" 
AR Path="/5F512D5F" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 6925 2625 50  0001 C CNN
F 1 "GND" H 6930 2702 50  0000 C CNN
F 2 "" H 6925 2875 50  0001 C CNN
F 3 "" H 6925 2875 50  0001 C CNN
	1    6925 2875
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F512D67
P 5725 4225
AR Path="/5F45F2B5/5F512D67" Ref="D?"  Part="1" 
AR Path="/5F512D67" Ref="D2"  Part="1" 
F 0 "D2" H 5718 4442 50  0000 C CNN
F 1 "BLUE 3.2V 20mA" H 5718 4351 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5725 4225 50  0001 C CNN
F 3 "~" H 5725 4225 50  0001 C CNN
F 4 "Wurth Elektronik" H 5725 4225 50  0001 C CNN "MF"
F 5 "150120BS75000" H 5725 4225 50  0001 C CNN "MPN"
	1    5725 4225
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F512D6F
P 5725 3725
AR Path="/5F45F2B5/5F512D6F" Ref="D?"  Part="1" 
AR Path="/5F512D6F" Ref="D1"  Part="1" 
F 0 "D1" H 5718 3942 50  0000 C CNN
F 1 "GREEN 3.2V 20mA" H 5718 3851 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5725 3725 50  0001 C CNN
F 3 "~" H 5725 3725 50  0001 C CNN
F 4 "Wurth Elektronik" H 5725 3725 50  0001 C CNN "MF"
F 5 "150120GS75000" H 5725 3725 50  0001 C CNN "MPN"
	1    5725 3725
	1    0    0    -1  
$EndComp
Wire Wire Line
	5575 3725 5275 3725
Wire Wire Line
	5275 3725 5275 4225
Wire Wire Line
	5275 4225 5575 4225
Wire Wire Line
	5275 4225 5275 4475
Connection ~ 5275 4225
$Comp
L power:GND #PWR?
U 1 1 5F512D83
P 5275 4475
AR Path="/5F45F2B5/5F512D83" Ref="#PWR?"  Part="1" 
AR Path="/5F512D83" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 5275 4225 50  0001 C CNN
F 1 "GND" H 5280 4302 50  0000 C CNN
F 2 "" H 5275 4475 50  0001 C CNN
F 3 "" H 5275 4475 50  0001 C CNN
	1    5275 4475
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F512D8C
P 7225 3575
AR Path="/5F45F2B5/5F512D8C" Ref="#PWR?"  Part="1" 
AR Path="/5F512D8C" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 7225 3425 50  0001 C CNN
F 1 "+3.3V" H 7240 3748 50  0000 C CNN
F 2 "" H 7225 3575 50  0001 C CNN
F 3 "" H 7225 3575 50  0001 C CNN
	1    7225 3575
	1    0    0    -1  
$EndComp
$Comp
L RF_Module:ESP32-WROOM-32 U?
U 1 1 5F512D94
P 3175 3075
AR Path="/5F45F2B5/5F512D94" Ref="U?"  Part="1" 
AR Path="/5F512D94" Ref="U1"  Part="1" 
F 0 "U1" H 3375 4575 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 3675 4475 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 3175 1575 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 2875 3125 50  0001 C CNN
F 4 "Espressif" H 3175 3075 50  0001 C CNN "MF"
F 5 "ESP32-WROOM-32D" H 3175 3075 50  0001 C CNN "MPN"
	1    3175 3075
	1    0    0    -1  
$EndComp
Wire Wire Line
	3775 3175 4075 3175
$Comp
L Regulator_Linear:AZ1117-3.3 U?
U 1 1 5F512DAE
P 3700 9550
AR Path="/5F45F2B5/5F512DAE" Ref="U?"  Part="1" 
AR Path="/5F512DAE" Ref="U4"  Part="1" 
F 0 "U4" H 3700 9792 50  0000 C CNN
F 1 "AZ1117-3.3" H 3700 9701 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3700 9800 50  0001 C CIN
F 3 "" H 3700 9550 50  0001 C CNN
F 4 "Diodes Incorporated" H 3700 9550 50  0001 C CNN "MF"
F 5 "AZ1117CH-3.3TRG1" H 3700 9550 50  0001 C CNN "MPN"
	1    3700 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 10000 3700 9850
Wire Wire Line
	3200 9550 3400 9550
$Comp
L power:GND #PWR?
U 1 1 5F512DB6
P 3700 10100
AR Path="/5F45F2B5/5F512DB6" Ref="#PWR?"  Part="1" 
AR Path="/5F512DB6" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 3700 9850 50  0001 C CNN
F 1 "GND" H 3705 9927 50  0000 C CNN
F 2 "" H 3700 10100 50  0001 C CNN
F 3 "" H 3700 10100 50  0001 C CNN
	1    3700 10100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 9550 4450 9550
$Comp
L power:+3.3V #PWR?
U 1 1 5F512DC7
P 4450 9450
AR Path="/5F45F2B5/5F512DC7" Ref="#PWR?"  Part="1" 
AR Path="/5F512DC7" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 4450 9300 50  0001 C CNN
F 1 "+3.3V" H 4465 9623 50  0000 C CNN
F 2 "" H 4450 9450 50  0001 C CNN
F 3 "" H 4450 9450 50  0001 C CNN
	1    4450 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 9450 4450 9550
Wire Wire Line
	2950 10000 3700 10000
Connection ~ 3700 10000
Text Notes 1075 8600 0    50   ~ 0
Drop Out Voltage: 1.3V@800mA\nUSB rectified voltage: 4.65V
$Comp
L Connector:AudioJack3 J?
U 1 1 5F5C6C60
P 3550 6925
AR Path="/5F5BF78E/5F5C6C60" Ref="J?"  Part="1" 
AR Path="/5F5C6C60" Ref="J3"  Part="1" 
F 0 "J3" H 3270 6950 50  0000 R CNN
F 1 "AudioJack3" H 3270 6859 50  0000 R CNN
F 2 "ESP32MiniDrop_PCB_Library:SJ1-3523N" H 3550 6925 50  0001 C CNN
F 3 "~" H 3550 6925 50  0001 C CNN
F 4 "CUI Devices" H 3550 6925 50  0001 C CNN "MF"
F 5 "SJ1-3523N" H 3550 6925 50  0001 C CNN "MPN"
	1    3550 6925
	-1   0    0    -1  
$EndComp
Text GLabel 1475 7325 0    50   Input ~ 0
Shutter_CTLO
Text GLabel 1475 6625 0    50   Input ~ 0
Focus_CTLO
$Comp
L Device:R R?
U 1 1 5F5C6C7B
P 1775 6625
AR Path="/5F5BF78E/5F5C6C7B" Ref="R?"  Part="1" 
AR Path="/5F5C6C7B" Ref="R4"  Part="1" 
F 0 "R4" V 1568 6625 50  0000 C CNN
F 1 "220R 5% 0.25W" V 1659 6625 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1705 6625 50  0001 C CNN
F 3 "~" H 1775 6625 50  0001 C CNN
F 4 "Yageo" H 1775 6625 50  0001 C CNN "MF"
F 5 "RC1206JR-07220RL" H 1775 6625 50  0001 C CNN "MPN"
	1    1775 6625
	0    1    1    0   
$EndComp
Wire Wire Line
	1475 6625 1625 6625
$Comp
L Device:R R?
U 1 1 5F5C6C85
P 1775 7325
AR Path="/5F5BF78E/5F5C6C85" Ref="R?"  Part="1" 
AR Path="/5F5C6C85" Ref="R6"  Part="1" 
F 0 "R6" V 1568 7325 50  0000 C CNN
F 1 "220R 5% 0.25W" V 1659 7325 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1705 7325 50  0001 C CNN
F 3 "~" H 1775 7325 50  0001 C CNN
F 4 "Yageo" H 1775 7325 50  0001 C CNN "MF"
F 5 "RC1206JR-07220RL" H 1775 7325 50  0001 C CNN "MPN"
	1    1775 7325
	0    1    1    0   
$EndComp
Wire Wire Line
	1475 7325 1625 7325
$Comp
L power:GND #PWR?
U 1 1 5F5C6C8D
P 2025 6825
AR Path="/5F5BF78E/5F5C6C8D" Ref="#PWR?"  Part="1" 
AR Path="/5F5C6C8D" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 2025 6575 50  0001 C CNN
F 1 "GND" H 2025 6675 50  0000 C CNN
F 2 "" H 2025 6825 50  0001 C CNN
F 3 "" H 2025 6825 50  0001 C CNN
	1    2025 6825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F5C6C94
P 2025 7525
AR Path="/5F5BF78E/5F5C6C94" Ref="#PWR?"  Part="1" 
AR Path="/5F5C6C94" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 2025 7275 50  0001 C CNN
F 1 "GND" H 2025 7375 50  0000 C CNN
F 2 "" H 2025 7525 50  0001 C CNN
F 3 "" H 2025 7525 50  0001 C CNN
	1    2025 7525
	1    0    0    -1  
$EndComp
Text Notes 1025 6225 0    50   ~ 0
OptoIsolator LED Characteristics\nForward Voltage:     1.2 Volts\nOperating Current: 10 mA
Wire Notes Line style solid
	975  5925 975  6275
Wire Notes Line style solid
	975  6275 2325 6275
Wire Notes Line style solid
	2325 6275 2325 5925
Wire Notes Line style solid
	2325 5925 975  5925
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J1
U 1 1 5F42EF88
P 1575 3875
F 0 "J1" H 1625 4192 50  0000 C CNN
F 1 "0.100\" 2x4 Header" H 1625 4101 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 1575 3875 50  0001 C CNN
F 3 "~" H 1575 3875 50  0001 C CNN
	1    1575 3875
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 3775 2225 3775
Wire Wire Line
	1875 3875 2225 3875
Wire Wire Line
	1875 3975 2225 3975
Wire Wire Line
	1875 4075 2225 4075
Text Label 2225 3775 2    50   ~ 0
EN
Text Label 2225 3875 2    50   ~ 0
IO0
Text Label 2225 4075 2    50   ~ 0
USB_RX
Text Label 2225 3975 2    50   ~ 0
USB_TX
Wire Wire Line
	1375 3775 1275 3775
Wire Wire Line
	1275 3775 1275 3875
Wire Wire Line
	1275 3975 1375 3975
Wire Wire Line
	1375 3875 1275 3875
Connection ~ 1275 3875
Wire Wire Line
	1275 3875 1275 3975
Wire Wire Line
	1375 4075 1375 4325
Text Label 2900 9150 0    50   ~ 0
VREG_IN
Text Label 1725 4325 2    50   ~ 0
VREG_IN
Wire Wire Line
	1375 4325 1725 4325
$Comp
L power:GND #PWR?
U 1 1 5F4C1FC2
P 1175 4075
AR Path="/5F45F2B5/5F4C1FC2" Ref="#PWR?"  Part="1" 
AR Path="/5F4C1FC2" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 1175 3825 50  0001 C CNN
F 1 "GND" H 1180 3902 50  0000 C CNN
F 2 "" H 1175 4075 50  0001 C CNN
F 3 "" H 1175 4075 50  0001 C CNN
	1    1175 4075
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1175 4075 1275 4075
Wire Wire Line
	1275 4075 1275 3975
Connection ~ 1275 3975
Text GLabel 4150 2075 2    50   Input ~ 0
Shutter_CTLO
Text GLabel 4125 2575 2    50   Input ~ 0
Focus_CTLO
Wire Notes Line
	8325 1450 9175 1450
Text Notes 1125 2050 0    50   ~ 0
U3 Bypass Capacitors
Wire Notes Line
	1100 2050 2000 2050
Wire Wire Line
	7225 3575 7225 3725
Text Notes 6025 3275 0    50   ~ 0
Status LEDs
Wire Notes Line
	5975 3275 6525 3275
Text GLabel 5575 2425 0    50   Input ~ 0
PairSwitch_CTLI
Text GLabel 4075 3175 2    50   Input ~ 0
PairSwitch_CTLI
Wire Wire Line
	5575 2425 5725 2425
Text Notes 6025 1475 0    50   ~ 0
User Pair Switch
Wire Notes Line
	5975 1475 6725 1475
Text Notes 2300 8300 0    98   ~ 20
Power Input
Text Notes 2375 5625 0    98   ~ 20
Camera I/O
Text Notes 5725 5600 0    98   ~ 20
Solenoid Control
Wire Wire Line
	6325 6150 6325 6050
Wire Wire Line
	6325 6050 6625 6050
Wire Wire Line
	6625 6050 6625 6250
Wire Wire Line
	6325 6450 6325 6550
Wire Wire Line
	6325 6550 6625 6550
Wire Wire Line
	6625 6550 6625 6350
$Comp
L power:+12V #PWR?
U 1 1 5F54D179
P 6325 5950
AR Path="/5F45F2B5/5F54D179" Ref="#PWR?"  Part="1" 
AR Path="/5F54D179" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 6325 5800 50  0001 C CNN
F 1 "+12V" H 6340 6123 50  0000 C CNN
F 2 "" H 6325 5950 50  0001 C CNN
F 3 "" H 6325 5950 50  0001 C CNN
	1    6325 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6325 5950 6325 6050
Connection ~ 6325 6050
Wire Wire Line
	6325 6800 6325 6550
Connection ~ 6325 6550
Wire Wire Line
	5925 7100 5925 7000
Wire Wire Line
	5925 7400 6325 7400
Wire Wire Line
	6325 7200 6325 7400
Wire Wire Line
	6325 7400 6325 7500
Connection ~ 6325 7400
Wire Wire Line
	5775 7000 5925 7000
Text Notes 1225 3425 0    50   ~ 0
Programming Header
Wire Notes Line
	2075 3425 1175 3425
Text GLabel 4075 3275 2    50   Input ~ 0
PairLED_CTLO
Wire Wire Line
	3775 3275 4075 3275
Text Notes 2975 925  0    98   ~ 20
MCU
Wire Notes Line width 14 style solid
	13000 4800 13000 600 
Text GLabel 6800 4225 2    50   Input ~ 0
PairLED_CTLO
Text Notes 13075 875  0    100  ~ 20
NOTES
Wire Notes Line
	13150 1020 13150 1070
Wire Notes Line
	13150 1070 13200 1070
Text Notes 13200 1100 0    50   ~ 0
Theoretical Maximum Power for Solenoid
Text Notes 6900 6450 0    50   ~ 0
18A Max
Text Notes 13275 1775 0    50   ~ 0
Lowest current rating is for flyback diode, which could see spikes of\ncurrent equal to the operating current of the coil. 5A at 12V provides \nmaximum of 60 Watts. Typical 12v solenoid is 6.5 Watts. \n\nPlan for testing inductive load at 50 Watts for 20% safety margin.\n\nThrough Hole diodes rated at 100V 20A are available, at marginal\nincrase in cost.
Wire Notes Line
	13125 1895 13125 1945
Wire Notes Line
	13125 1945 13175 1945
Text Notes 13175 1975 0    50   ~ 0
Camera Connection
Text Notes 13275 2325 0    50   ~ 0
Most DSLR cameras have a 2.5mm TRS port on the camera body to\nallow remote Shutter and Focus control. Different models might have\nShutter and Focus switched, so software might require switching pin\nfunction.
Wire Notes Line
	13250 2025 13250 2350
Wire Notes Line
	13250 2350 13300 2350
Wire Notes Line
	13250 1175 13250 1800
Wire Notes Line
	13250 1800 13300 1800
Text Notes 1175 4775 0    50   ~ 0
EN
Text Notes 1125 4975 0    50   ~ 0
IO 0
Text Notes 1125 4525 0    50   ~ 0
To enter programming mode
Wire Notes Line style solid
	1325 4675 1425 4675
Wire Notes Line style solid
	1425 4675 1425 4775
Wire Notes Line style solid
	1425 4775 1625 4775
Wire Notes Line style solid
	1625 4775 1625 4675
Wire Notes Line style solid
	1475 4875 1475 4975
Wire Notes Line style solid
	1475 4975 1825 4975
Wire Notes Line style solid
	1825 4975 1825 4875
Wire Notes Line style solid
	1825 4875 2075 4875
Wire Notes Line style solid
	1325 4875 1475 4875
Wire Notes Line style solid
	1625 4675 2075 4675
Text Notes 3950 9650 0    50   ~ 0
1A Max
Wire Notes Line
	9200 1975 9675 1975
Wire Wire Line
	3775 3875 4025 3875
$Comp
L Connector_Generic:Conn_01x01 M1
U 1 1 5F5962A4
P 17475 1250
F 0 "M1" H 17625 1250 50  0000 C CNN
F 1 "Conn_01x01" H 17393 1116 50  0001 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380_Pad" H 17475 1250 50  0001 C CNN
F 3 "~" H 17475 1250 50  0001 C CNN
	1    17475 1250
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 M2
U 1 1 5F5A0DC7
P 17475 1375
F 0 "M2" H 17625 1375 50  0000 C CNN
F 1 "Conn_01x01" H 17393 1241 50  0001 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380_Pad" H 17475 1375 50  0001 C CNN
F 3 "~" H 17475 1375 50  0001 C CNN
	1    17475 1375
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 M3
U 1 1 5F5A10F3
P 17475 1500
F 0 "M3" H 17625 1500 50  0000 C CNN
F 1 "Conn_01x01" H 17393 1366 50  0001 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380_Pad" H 17475 1500 50  0001 C CNN
F 3 "~" H 17475 1500 50  0001 C CNN
	1    17475 1500
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 M4
U 1 1 5F5A143F
P 17475 1625
F 0 "M4" H 17625 1625 50  0000 C CNN
F 1 "Conn_01x01" H 17393 1491 50  0001 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380_Pad" H 17475 1625 50  0001 C CNN
F 3 "~" H 17475 1625 50  0001 C CNN
	1    17475 1625
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F5AAE85
P 17750 1700
F 0 "#PWR02" H 17750 1450 50  0001 C CNN
F 1 "GND" H 17755 1527 50  0000 C CNN
F 2 "" H 17750 1700 50  0001 C CNN
F 3 "" H 17750 1700 50  0001 C CNN
	1    17750 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	17675 1250 17750 1250
Wire Wire Line
	17750 1250 17750 1375
Wire Wire Line
	17675 1375 17750 1375
Connection ~ 17750 1375
Wire Wire Line
	17750 1375 17750 1500
Wire Wire Line
	17675 1500 17750 1500
Connection ~ 17750 1500
Wire Wire Line
	17750 1500 17750 1625
Wire Wire Line
	17675 1625 17750 1625
Connection ~ 17750 1625
Wire Wire Line
	17750 1625 17750 1700
Text Notes 17000 1025 0    100  ~ 20
Mounting Holes
Wire Wire Line
	4125 1875 3775 1875
Wire Wire Line
	5875 3725 7225 3725
Wire Wire Line
	5875 4225 6800 4225
$Comp
L Device:R R?
U 1 1 5F72D7F7
P 8800 4750
AR Path="/5F45F2B5/5F72D7F7" Ref="R?"  Part="1" 
AR Path="/5F72D7F7" Ref="R3"  Part="1" 
F 0 "R3" H 8870 4796 50  0000 L CNN
F 1 "10k 5% 0.25W" H 8870 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8730 4750 50  0001 C CNN
F 3 "~" H 8800 4750 50  0001 C CNN
F 4 "Yageo" H 8800 4750 50  0001 C CNN "MF"
F 5 "RC1206JR-0710KL" H 8800 4750 50  0001 C CNN "MPN"
	1    8800 4750
	1    0    0    -1  
$EndComp
Text GLabel 4125 2775 2    50   Input ~ 0
U0TX_Active
Wire Wire Line
	4150 2075 3775 2075
Wire Wire Line
	4125 2775 3775 2775
Text GLabel 8675 4500 0    50   Input ~ 0
U0TX_Active
Wire Wire Line
	8675 4500 8800 4500
Wire Wire Line
	8800 4500 8800 4600
$Comp
L power:GND #PWR?
U 1 1 5F750570
P 8800 5025
AR Path="/5F45F2B5/5F750570" Ref="#PWR?"  Part="1" 
AR Path="/5F750570" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 8800 4775 50  0001 C CNN
F 1 "GND" H 8805 4852 50  0000 C CNN
F 2 "" H 8800 5025 50  0001 C CNN
F 3 "" H 8800 5025 50  0001 C CNN
	1    8800 5025
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4900 8800 5025
Text Notes 9125 4425 0    50   ~ 0
MTDO Pin has internal pull up\nU0TX Active : 0\nU0TX Disabled: 1
Text Label 5825 2425 0    50   ~ 0
IO0
Wire Wire Line
	3700 10000 3700 10100
$Comp
L Isolator:LTV-827S U2
U 2 1 5F7A6142
P 2500 7425
F 0 "U2" H 2500 7750 50  0000 C CNN
F 1 "LTV-827S" H 2500 7659 50  0000 C CNN
F 2 "Package_DIP:SMDIP-8_W9.53mm" H 2500 7125 50  0001 C CNN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 1700 7975 50  0001 C CNN
	2    2500 7425
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-827S U2
U 1 1 5F7A5EFB
P 2500 6725
F 0 "U2" H 2500 7050 50  0000 C CNN
F 1 "LTV-827S" H 2500 6959 50  0000 C CNN
F 2 "Package_DIP:SMDIP-8_W9.53mm" H 2500 6425 50  0001 C CNN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 1700 7275 50  0001 C CNN
	1    2500 6725
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 6825 3100 6825
Connection ~ 3100 6825
Wire Wire Line
	3100 6825 3350 6825
Wire Wire Line
	2800 6625 2900 6625
Wire Wire Line
	2900 6625 2900 6925
Wire Wire Line
	2900 6925 3350 6925
Wire Wire Line
	2900 7025 3350 7025
Wire Wire Line
	1925 7325 2200 7325
Wire Wire Line
	2025 7525 2200 7525
Wire Wire Line
	1925 6625 2200 6625
Wire Wire Line
	2025 6825 2200 6825
Wire Wire Line
	2800 7325 2900 7325
Wire Wire Line
	2900 7025 2900 7325
Wire Wire Line
	2800 7525 3100 7525
Wire Wire Line
	3100 6825 3100 7525
$Comp
L Connector:Barrel_Jack_Switch J5
U 1 1 5F8144D0
P 1575 9650
F 0 "J5" H 1632 9967 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 1632 9876 50  0000 C CNN
F 2 "" H 1575 9650 50  0001 C CNN
F 3 "" H 1575 9650 50  0001 C CNN
	1    1575 9650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F815BAF
P 1975 9850
AR Path="/5F45F2B5/5F815BAF" Ref="#PWR?"  Part="1" 
AR Path="/5F815BAF" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 1975 9600 50  0001 C CNN
F 1 "GND" H 1980 9677 50  0000 C CNN
F 2 "" H 1975 9850 50  0001 C CNN
F 3 "" H 1975 9850 50  0001 C CNN
	1    1975 9850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1875 9650 1975 9650
Wire Wire Line
	1975 9650 1975 9750
Wire Wire Line
	1875 9750 1975 9750
Connection ~ 1975 9750
Wire Wire Line
	1975 9750 1975 9850
Wire Wire Line
	1875 9550 2200 9550
Connection ~ 2200 9550
$EndSCHEMATC
