EESchema Schematic File Version 4
LIBS:Kicad-EffectsUnit1-cache
EELAYER 29 0
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
$Comp
L Device:CP C?
U 1 1 5D62F36B
P 1500 1300
AR Path="/5D62F36B" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5D62F36B" Ref="C201"  Part="1" 
F 0 "C201" H 1450 1500 50  0000 L CNN
F 1 "100uF 16v" H 1350 1600 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1538 1150 50  0001 C CNN
F 3 "~" H 1500 1300 50  0001 C CNN
	1    1500 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D62F379
P 1300 1450
AR Path="/5D62F379" Ref="#PWR?"  Part="1" 
AR Path="/5D60ED9A/5D62F379" Ref="#PWR0202"  Part="1" 
F 0 "#PWR0202" H 1300 1200 50  0001 C CNN
F 1 "GND" H 1305 1277 50  0000 C CNN
F 2 "" H 1300 1450 50  0001 C CNN
F 3 "" H 1300 1450 50  0001 C CNN
	1    1300 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1450 1500 1450
Connection ~ 1500 1450
$Comp
L Device:C C?
U 1 1 5D62F383
P 5400 1450
AR Path="/5D62F383" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5D62F383" Ref="C202"  Part="1" 
F 0 "C202" H 5450 1350 50  0000 L CNN
F 1 "100n" H 5350 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5438 1300 50  0001 C CNN
F 3 "~" H 5400 1450 50  0001 C CNN
	1    5400 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 1450 1675 1450
Wire Wire Line
	1500 1150 1675 1150
Connection ~ 1500 1150
Wire Wire Line
	3050 1650 3050 1550
Wire Wire Line
	2550 1550 2550 1650
Wire Wire Line
	2550 1650 3050 1650
Wire Wire Line
	2550 1750 2550 1650
Connection ~ 2550 1650
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D62F3CA
P 1500 1150
AR Path="/5D62F3CA" Ref="#FLG?"  Part="1" 
AR Path="/5D60ED9A/5D62F3CA" Ref="#FLG0201"  Part="1" 
F 0 "#FLG0201" H 1500 1225 50  0001 C CNN
F 1 "PWR_FLAG" H 1500 1324 50  0000 C CNN
F 2 "" H 1500 1150 50  0001 C CNN
F 3 "~" H 1500 1150 50  0001 C CNN
	1    1500 1150
	1    0    0    -1  
$EndComp
Text GLabel 1075 1150 0    50   Input ~ 0
+12Vb
$Comp
L Device:D D?
U 1 1 5D62F3EE
P 1675 1300
AR Path="/5D62F3EE" Ref="D?"  Part="1" 
AR Path="/5D60ED9A/5D62F3EE" Ref="D202"  Part="1" 
F 0 "D202" V 1629 1379 50  0000 L CNN
F 1 "1N1007" V 1720 1379 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 1675 1300 50  0001 C CNN
F 3 "~" H 1675 1300 50  0001 C CNN
	1    1675 1300
	0    1    1    0   
$EndComp
Connection ~ 1675 1150
Connection ~ 1675 1450
Wire Wire Line
	2550 1250 2550 1350
$Comp
L Eurorack:HEADER_2x5_Doepfer P?
U 1 1 5D631512
P 2800 1350
AR Path="/5D631512" Ref="P?"  Part="1" 
AR Path="/5D60ED9A/5D631512" Ref="P201"  Part="1" 
F 0 "P201" H 2800 852 40  0000 C CNN
F 1 "HEADER_2x5_Doepfer" H 2800 928 40  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 2800 1019 60  0000 C CNN
F 3 "" H 2800 1350 60  0000 C CNN
	1    2800 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 1250 2650 1250
Wire Wire Line
	2650 1350 2550 1350
Connection ~ 2550 1350
Wire Wire Line
	2550 1350 2550 1450
Wire Wire Line
	2650 1450 2550 1450
Connection ~ 2550 1450
Wire Wire Line
	2550 1550 2650 1550
Wire Wire Line
	2950 1550 3050 1550
$Comp
L Transistor_BJT:BC337 Q201
U 1 1 5D636B86
P 4050 1250
F 0 "Q201" V 4378 1250 50  0000 C CNN
F 1 "BC337" V 4287 1250 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4250 1175 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 4050 1250 50  0001 L CNN
	1    4050 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 1250 2950 1350
$Comp
L Device:D D?
U 1 1 5D6381EE
P 4050 800
AR Path="/5D6381EE" Ref="D?"  Part="1" 
AR Path="/5D60ED9A/5D6381EE" Ref="D201"  Part="1" 
F 0 "D201" V 4004 879 50  0000 L CNN
F 1 "1N1007" V 4095 879 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 4050 800 50  0001 C CNN
F 3 "~" H 4050 800 50  0001 C CNN
	1    4050 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5D638D42
P 3725 1625
AR Path="/5D638D42" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5D638D42" Ref="C210"  Part="1" 
F 0 "C210" H 3825 1525 50  0000 L CNN
F 1 "100uF 16v" H 3575 1375 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3763 1475 50  0001 C CNN
F 3 "~" H 3725 1625 50  0001 C CNN
	1    3725 1625
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D639169
P 3725 1300
AR Path="/5D639169" Ref="R?"  Part="1" 
AR Path="/5D60ED9A/5D639169" Ref="R201"  Part="1" 
F 0 "R201" V 3725 1350 50  0000 C CNN
F 1 "10k" V 3609 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3655 1300 50  0001 C CNN
F 3 "~" H 3725 1300 50  0001 C CNN
	1    3725 1300
	-1   0    0    1   
$EndComp
Connection ~ 3725 1150
Wire Wire Line
	3725 1150 3850 1150
Wire Wire Line
	3725 1450 4050 1450
Wire Wire Line
	3725 1450 3725 1475
Connection ~ 3725 1450
Wire Wire Line
	2950 1350 2950 1450
Connection ~ 2950 1350
Wire Wire Line
	2925 1450 2950 1450
Connection ~ 2950 1450
Wire Wire Line
	2950 1150 3050 1150
Wire Wire Line
	2550 1150 2550 1075
Wire Wire Line
	2550 1075 3050 1075
Wire Wire Line
	3050 1075 3050 1150
Connection ~ 2550 1150
Wire Wire Line
	2550 1150 2650 1150
Wire Wire Line
	3725 1800 3725 1775
Wire Wire Line
	3900 800  3725 800 
Wire Wire Line
	3725 800  3725 1150
Wire Wire Line
	4250 1150 4425 1150
Wire Wire Line
	4425 1150 4425 800 
Wire Wire Line
	4425 800  4200 800 
$Comp
L Device:CP C?
U 1 1 5D645B0A
P 5075 1450
AR Path="/5D645B0A" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5D645B0A" Ref="C205"  Part="1" 
F 0 "C205" H 5175 1350 50  0000 L CNN
F 1 "100uF 16v" H 4925 1200 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 5113 1300 50  0001 C CNN
F 3 "~" H 5075 1450 50  0001 C CNN
	1    5075 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4425 1150 4425 1300
Connection ~ 4425 1150
Wire Wire Line
	4425 1600 4425 1800
Wire Wire Line
	4425 1800 4050 1800
$Comp
L Device:D_Zener D204
U 1 1 5D648219
P 4050 1625
F 0 "D204" V 4004 1704 50  0000 L CNN
F 1 "7v5" V 4095 1704 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 4050 1625 50  0001 C CNN
F 3 "~" H 4050 1625 50  0001 C CNN
	1    4050 1625
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 1450 4050 1475
Connection ~ 4050 1450
Wire Wire Line
	4050 1775 4050 1800
Connection ~ 4050 1800
Wire Wire Line
	4050 1800 3725 1800
$Comp
L power:+5VA #PWR0201
U 1 1 5D64AB64
P 5175 1150
F 0 "#PWR0201" H 5175 1000 50  0001 C CNN
F 1 "+5VA" H 5190 1323 50  0000 C CNN
F 2 "" H 5175 1150 50  0001 C CNN
F 3 "" H 5175 1150 50  0001 C CNN
	1    5175 1150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D64AB9E
P 4425 800
AR Path="/5D64AB9E" Ref="#FLG?"  Part="1" 
AR Path="/5D60ED9A/5D64AB9E" Ref="#FLG0202"  Part="1" 
F 0 "#FLG0202" H 4425 875 50  0001 C CNN
F 1 "PWR_FLAG" H 4575 850 50  0000 C CNN
F 2 "" H 4425 800 50  0001 C CNN
F 3 "~" H 4425 800 50  0001 C CNN
	1    4425 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D64ABD1
P 4050 1800
AR Path="/5D64ABD1" Ref="#PWR?"  Part="1" 
AR Path="/5D60ED9A/5D64ABD1" Ref="#PWR0204"  Part="1" 
F 0 "#PWR0204" H 4050 1550 50  0001 C CNN
F 1 "GND" H 4055 1627 50  0000 C CNN
F 2 "" H 4050 1800 50  0001 C CNN
F 3 "" H 4050 1800 50  0001 C CNN
	1    4050 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D64AC58
P 3100 1450
AR Path="/5D64AC58" Ref="#PWR?"  Part="1" 
AR Path="/5D60ED9A/5D64AC58" Ref="#PWR0203"  Part="1" 
F 0 "#PWR0203" H 3100 1200 50  0001 C CNN
F 1 "GND" H 3200 1525 50  0000 C CNN
F 2 "" H 3100 1450 50  0001 C CNN
F 3 "" H 3100 1450 50  0001 C CNN
	1    3100 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1450 3100 1450
Text GLabel 3625 1150 0    50   Input ~ 0
+12Vb
Wire Wire Line
	3625 1150 3725 1150
Wire Wire Line
	5025 1150 5075 1150
Connection ~ 5175 1150
$Comp
L Audio:PT2399 U202
U 1 1 5D64CF96
P 4225 4050
F 0 "U202" H 4225 4817 50  0000 C CNN
F 1 "PT2399" H 4225 4726 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4225 3650 50  0001 C CNN
F 3 "http://sound.westhost.com/pt2399.pdf" H 4225 3650 50  0001 C CNN
	1    4225 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR0209
U 1 1 5D64D016
P 3725 3550
F 0 "#PWR0209" H 3725 3400 50  0001 C CNN
F 1 "+5VA" H 3740 3723 50  0000 C CNN
F 2 "" H 3725 3550 50  0001 C CNN
F 3 "" H 3725 3550 50  0001 C CNN
	1    3725 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5D64D04B
P 3575 3650
AR Path="/5D64D04B" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5D64D04B" Ref="C215"  Part="1" 
F 0 "C215" H 3675 3550 50  0000 L CNN
F 1 "100uF 16v" H 3425 3400 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3613 3500 50  0001 C CNN
F 3 "~" H 3575 3650 50  0001 C CNN
	1    3575 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	3725 3850 3425 3850
Wire Wire Line
	3425 3850 3425 3650
$Comp
L Device:R R?
U 1 1 5D64E3D5
P 4425 1950
AR Path="/5D64E3D5" Ref="R?"  Part="1" 
AR Path="/5D60ED9A/5D64E3D5" Ref="R202"  Part="1" 
F 0 "R202" V 4425 2000 50  0000 C CNN
F 1 "0R" V 4309 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4355 1950 50  0001 C CNN
F 3 "~" H 4425 1950 50  0001 C CNN
	1    4425 1950
	-1   0    0    1   
$EndComp
Connection ~ 4425 1800
$Comp
L power:GNDA #PWR0206
U 1 1 5D64E4DB
P 4425 2100
F 0 "#PWR0206" H 4425 1850 50  0001 C CNN
F 1 "GNDA" H 4430 1927 50  0000 C CNN
F 2 "" H 4425 2100 50  0001 C CNN
F 3 "" H 4425 2100 50  0001 C CNN
	1    4425 2100
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D64E577
P 4425 2100
AR Path="/5D64E577" Ref="#FLG?"  Part="1" 
AR Path="/5D60ED9A/5D64E577" Ref="#FLG0204"  Part="1" 
F 0 "#FLG0204" H 4425 2175 50  0001 C CNN
F 1 "PWR_FLAG" H 4575 2150 50  0000 C CNN
F 2 "" H 4425 2100 50  0001 C CNN
F 3 "~" H 4425 2100 50  0001 C CNN
	1    4425 2100
	0    1    1    0   
$EndComp
Connection ~ 4425 2100
$Comp
L power:GNDA #PWR0210
U 1 1 5D64E67F
P 3425 3850
F 0 "#PWR0210" H 3425 3600 50  0001 C CNN
F 1 "GNDA" H 3430 3677 50  0000 C CNN
F 2 "" H 3425 3850 50  0001 C CNN
F 3 "" H 3425 3850 50  0001 C CNN
	1    3425 3850
	1    0    0    -1  
$EndComp
Connection ~ 3425 3850
$Comp
L power:GND #PWR?
U 1 1 5D64E6E6
P 3725 3950
AR Path="/5D64E6E6" Ref="#PWR?"  Part="1" 
AR Path="/5D60ED9A/5D64E6E6" Ref="#PWR0211"  Part="1" 
F 0 "#PWR0211" H 3725 3700 50  0001 C CNN
F 1 "GND" H 3730 3777 50  0000 C CNN
F 2 "" H 3725 3950 50  0001 C CNN
F 3 "" H 3725 3950 50  0001 C CNN
	1    3725 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D64E71F
P 2450 4675
AR Path="/5D64E71F" Ref="R?"  Part="1" 
AR Path="/5D60ED9A/5D64E71F" Ref="R214"  Part="1" 
F 0 "R214" V 2450 4675 50  0000 C CNN
F 1 "120k" V 2550 4675 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2380 4675 50  0001 C CNN
F 3 "~" H 2450 4675 50  0001 C CNN
	1    2450 4675
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5D64EB0F
P 2450 5025
AR Path="/5D64EB0F" Ref="RV?"  Part="1" 
AR Path="/5D60ED9A/5D64EB0F" Ref="RV202"  Part="1" 
F 0 "RV202" H 2380 5071 50  0000 R CNN
F 1 "20k" H 2380 4980 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_China_RK09_Single_Vertical_AJ" H 2450 5025 50  0001 C CNN
F 3 "~" H 2450 5025 50  0001 C CNN
	1    2450 5025
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5650 2200 5650
$Comp
L power:GNDA #PWR?
U 1 1 5D650219
P 2450 5250
AR Path="/5D650219" Ref="#PWR?"  Part="1" 
AR Path="/5D60ED9A/5D650219" Ref="#PWR0219"  Part="1" 
F 0 "#PWR0219" H 2450 5000 50  0001 C CNN
F 1 "GNDA" H 2455 5077 50  0000 C CNN
F 2 "" H 2450 5250 50  0001 C CNN
F 3 "" H 2450 5250 50  0001 C CNN
	1    2450 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D650288
P 3550 4600
AR Path="/5D650288" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5D650288" Ref="C223"  Part="1" 
F 0 "C223" H 3450 4750 50  0000 L CNN
F 1 "100n" H 3450 4850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3588 4450 50  0001 C CNN
F 3 "~" H 3550 4600 50  0001 C CNN
	1    3550 4600
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5D650336
P 3700 4725
AR Path="/5D650336" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5D650336" Ref="C225"  Part="1" 
F 0 "C225" H 3600 4875 50  0000 L CNN
F 1 "100n" H 3600 4975 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3738 4575 50  0001 C CNN
F 3 "~" H 3700 4725 50  0001 C CNN
	1    3700 4725
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 4575 3700 4550
Wire Wire Line
	3700 4550 3725 4550
Wire Wire Line
	3725 4450 3550 4450
$Comp
L power:GNDA #PWR0218
U 1 1 5D653327
P 3700 4875
F 0 "#PWR0218" H 3700 4625 50  0001 C CNN
F 1 "GNDA" H 3705 4702 50  0000 C CNN
F 2 "" H 3700 4875 50  0001 C CNN
F 3 "" H 3700 4875 50  0001 C CNN
	1    3700 4875
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0217
U 1 1 5D653368
P 3550 4750
F 0 "#PWR0217" H 3550 4500 50  0001 C CNN
F 1 "GNDA" H 3555 4577 50  0000 C CNN
F 2 "" H 3550 4750 50  0001 C CNN
F 3 "" H 3550 4750 50  0001 C CNN
	1    3550 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D653B3E
P 4925 4625
AR Path="/5D653B3E" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5D653B3E" Ref="C224"  Part="1" 
F 0 "C224" H 4825 4775 50  0000 L CNN
F 1 "82n" H 4825 4875 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4963 4475 50  0001 C CNN
F 3 "~" H 4925 4625 50  0001 C CNN
	1    4925 4625
	-1   0    0    1   
$EndComp
Wire Wire Line
	4725 4450 4925 4450
Wire Wire Line
	4925 4450 4925 4475
Wire Wire Line
	4925 4775 4725 4775
Wire Wire Line
	4725 4775 4725 4550
$Comp
L Device:C C?
U 1 1 5D656F8E
P 4875 4250
AR Path="/5D656F8E" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5D656F8E" Ref="C220"  Part="1" 
F 0 "C220" H 4775 4400 50  0000 L CNN
F 1 "82n" H 4775 4500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4913 4100 50  0001 C CNN
F 3 "~" H 4875 4250 50  0001 C CNN
	1    4875 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4725 4150 5025 4150
Wire Wire Line
	5025 4150 5025 4250
$Comp
L Device:R R?
U 1 1 5D659604
P 5175 4250
AR Path="/5D659604" Ref="R?"  Part="1" 
AR Path="/5D60ED9A/5D659604" Ref="R212"  Part="1" 
F 0 "R212" V 5175 4200 50  0000 C CNN
F 1 "10k" V 5275 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5105 4250 50  0001 C CNN
F 3 "~" H 5175 4250 50  0001 C CNN
	1    5175 4250
	0    1    1    0   
$EndComp
Connection ~ 5025 4250
$Comp
L Device:R R?
U 1 1 5D6596A9
P 5525 4125
AR Path="/5D6596A9" Ref="R?"  Part="1" 
AR Path="/5D60ED9A/5D6596A9" Ref="R211"  Part="1" 
F 0 "R211" V 5525 4075 50  0000 C CNN
F 1 "10k" V 5625 4125 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5455 4125 50  0001 C CNN
F 3 "~" H 5525 4125 50  0001 C CNN
	1    5525 4125
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D659713
P 5525 3875
AR Path="/5D659713" Ref="R?"  Part="1" 
AR Path="/5D60ED9A/5D659713" Ref="R210"  Part="1" 
F 0 "R210" V 5525 3825 50  0000 C CNN
F 1 "15k" V 5600 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5455 3875 50  0001 C CNN
F 3 "~" H 5525 3875 50  0001 C CNN
	1    5525 3875
	0    1    1    0   
$EndComp
Wire Wire Line
	5325 4250 5675 4250
Wire Wire Line
	5675 4250 5675 4125
$Comp
L Device:C_Small C219
U 1 1 5D65D17E
P 5275 3975
F 0 "C219" H 5325 4050 50  0000 L CNN
F 1 "560p" H 5300 3925 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5275 3975 50  0001 C CNN
F 3 "~" H 5275 3975 50  0001 C CNN
	1    5275 3975
	1    0    0    -1  
$EndComp
Connection ~ 5675 4125
Wire Wire Line
	5675 3875 5675 4125
Wire Wire Line
	5275 4075 5275 4125
Wire Wire Line
	5275 4125 5375 4125
Wire Wire Line
	5275 3875 5375 3875
$Comp
L Device:C_Small C221
U 1 1 5D661046
P 5675 4350
F 0 "C221" H 5767 4396 50  0000 L CNN
F 1 "3n3" H 5767 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5675 4350 50  0001 C CNN
F 3 "~" H 5675 4350 50  0001 C CNN
	1    5675 4350
	1    0    0    -1  
$EndComp
Connection ~ 5675 4250
$Comp
L power:GNDA #PWR0215
U 1 1 5D6610CC
P 5675 4450
F 0 "#PWR0215" H 5675 4200 50  0001 C CNN
F 1 "GNDA" H 5680 4277 50  0000 C CNN
F 2 "" H 5675 4450 50  0001 C CNN
F 3 "" H 5675 4450 50  0001 C CNN
	1    5675 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4725 3950 5075 3950
Wire Wire Line
	5075 3950 5075 4125
Wire Wire Line
	5075 4125 5275 4125
Connection ~ 5275 4125
Wire Wire Line
	5275 3875 4725 3875
Wire Wire Line
	4725 3875 4725 3850
Connection ~ 5275 3875
$Comp
L Device:R R?
U 1 1 5D665521
P 4975 3775
AR Path="/5D665521" Ref="R?"  Part="1" 
AR Path="/5D60ED9A/5D665521" Ref="R209"  Part="1" 
F 0 "R209" V 4975 3725 50  0000 C CNN
F 1 "5k6" V 5075 3775 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4905 3775 50  0001 C CNN
F 3 "~" H 4975 3775 50  0001 C CNN
	1    4975 3775
	0    1    1    0   
$EndComp
Wire Wire Line
	4725 3850 4725 3775
Wire Wire Line
	4725 3775 4825 3775
Connection ~ 4725 3850
$Comp
L Device:C_Small C218
U 1 1 5D667A18
P 5150 3875
F 0 "C218" H 5242 3921 50  0000 L CNN
F 1 "10n" H 5175 3975 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5150 3875 50  0001 C CNN
F 3 "~" H 5150 3875 50  0001 C CNN
	1    5150 3875
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0212
U 1 1 5D667A82
P 5150 3975
F 0 "#PWR0212" H 5150 3725 50  0001 C CNN
F 1 "GNDA" H 5155 3802 50  0000 C CNN
F 2 "" H 5150 3975 50  0001 C CNN
F 3 "" H 5150 3975 50  0001 C CNN
	1    5150 3975
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C217
U 1 1 5D667C41
P 5575 3775
F 0 "C217" V 5800 3775 50  0000 C CNN
F 1 "10u" V 5709 3775 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5575 3775 50  0001 C CNN
F 3 "~" H 5575 3775 50  0001 C CNN
	1    5575 3775
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5125 3775 5150 3775
Connection ~ 5150 3775
Wire Wire Line
	5150 3775 5475 3775
$Comp
L Device:R_POT RV?
U 1 1 5D66CAFA
P 5850 3925
AR Path="/5D66CAFA" Ref="RV?"  Part="1" 
AR Path="/5D60ED9A/5D66CAFA" Ref="RV201"  Part="1" 
F 0 "RV201" H 6075 3775 50  0000 R CNN
F 1 "50k" H 6075 3850 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_China_RK09_Single_Vertical_AJ" H 5850 3925 50  0001 C CNN
F 3 "~" H 5850 3925 50  0001 C CNN
	1    5850 3925
	1    0    0    -1  
$EndComp
Wire Wire Line
	5675 3775 5850 3775
$Comp
L power:GNDA #PWR0213
U 1 1 5D66F427
P 5850 4075
F 0 "#PWR0213" H 5850 3825 50  0001 C CNN
F 1 "GNDA" H 5950 3950 50  0000 C CNN
F 2 "" H 5850 4075 50  0001 C CNN
F 3 "" H 5850 4075 50  0001 C CNN
	1    5850 4075
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D66F47E
P 5900 3400
AR Path="/5D66F47E" Ref="R?"  Part="1" 
AR Path="/5D60ED9A/5D66F47E" Ref="R206"  Part="1" 
F 0 "R206" V 5900 3350 50  0000 C CNN
F 1 "10k" V 6000 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5830 3400 50  0001 C CNN
F 3 "~" H 5900 3400 50  0001 C CNN
	1    5900 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 3925 6075 3925
$Comp
L Device:CP_Small C213
U 1 1 5D671CCE
P 5625 3400
F 0 "C213" V 5850 3400 50  0000 C CNN
F 1 "4u7" V 5759 3400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5625 3400 50  0001 C CNN
F 3 "~" H 5625 3400 50  0001 C CNN
	1    5625 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D674659
P 5150 3650
AR Path="/5D674659" Ref="R?"  Part="1" 
AR Path="/5D60ED9A/5D674659" Ref="R207"  Part="1" 
F 0 "R207" V 5150 3625 50  0000 C CNN
F 1 "10k" V 5075 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5080 3650 50  0001 C CNN
F 3 "~" H 5150 3650 50  0001 C CNN
	1    5150 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D67476A
P 5150 3400
AR Path="/5D67476A" Ref="R?"  Part="1" 
AR Path="/5D60ED9A/5D67476A" Ref="R205"  Part="1" 
F 0 "R205" V 5150 3350 50  0000 C CNN
F 1 "10k" V 5050 3325 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5080 3400 50  0001 C CNN
F 3 "~" H 5150 3400 50  0001 C CNN
	1    5150 3400
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C214
U 1 1 5D674912
P 4950 3550
F 0 "C214" H 4850 3775 50  0000 L CNN
F 1 "560p" H 4850 3625 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4950 3550 50  0001 C CNN
F 3 "~" H 4950 3550 50  0001 C CNN
	1    4950 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4725 3650 4950 3650
Connection ~ 4950 3650
Wire Wire Line
	4950 3650 5000 3650
Wire Wire Line
	4725 3550 4825 3550
Wire Wire Line
	4825 3550 4825 3400
Wire Wire Line
	4825 3400 4950 3400
Wire Wire Line
	4950 3450 4950 3400
Connection ~ 4950 3400
Wire Wire Line
	4950 3400 5000 3400
Wire Wire Line
	5300 3400 5400 3400
Text GLabel 6350 3050 2    50   Input ~ 0
In
Wire Wire Line
	5725 3400 5750 3400
Wire Wire Line
	5300 3650 5400 3650
Wire Wire Line
	5400 3650 5400 3400
Connection ~ 5400 3400
Wire Wire Line
	5400 3400 5525 3400
$Comp
L Device:R R?
U 1 1 5D694388
P 5625 3050
AR Path="/5D694388" Ref="R?"  Part="1" 
AR Path="/5D60ED9A/5D694388" Ref="R203"  Part="1" 
F 0 "R203" V 5625 3000 50  0000 C CNN
F 1 "15k" V 5700 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5555 3050 50  0001 C CNN
F 3 "~" H 5625 3050 50  0001 C CNN
	1    5625 3050
	0    1    1    0   
$EndComp
$Comp
L Device:CP_Small C212
U 1 1 5D69444C
P 6000 3050
F 0 "C212" V 6225 3050 50  0000 C CNN
F 1 "4u7" V 6134 3050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6000 3050 50  0001 C CNN
F 3 "~" H 6000 3050 50  0001 C CNN
	1    6000 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C211
U 1 1 5D6944D8
P 5225 3050
F 0 "C211" V 4996 3050 50  0000 C CNN
F 1 "3n3" V 5087 3050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5225 3050 50  0001 C CNN
F 3 "~" H 5225 3050 50  0001 C CNN
	1    5225 3050
	0    1    1    0   
$EndComp
$Comp
L power:GNDA #PWR0207
U 1 1 5D6945A7
P 5025 3100
F 0 "#PWR0207" H 5025 2850 50  0001 C CNN
F 1 "GNDA" H 5030 2927 50  0000 C CNN
F 2 "" H 5025 3100 50  0001 C CNN
F 3 "" H 5025 3100 50  0001 C CNN
	1    5025 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D69469A
P 6250 3225
AR Path="/5D69469A" Ref="R?"  Part="1" 
AR Path="/5D60ED9A/5D69469A" Ref="R204"  Part="1" 
F 0 "R204" V 6250 3275 50  0000 C CNN
F 1 "0R" V 6134 3225 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6180 3225 50  0001 C CNN
F 3 "~" H 6250 3225 50  0001 C CNN
	1    6250 3225
	-1   0    0    1   
$EndComp
$Comp
L power:GNDA #PWR0208
U 1 1 5D694740
P 6250 3375
F 0 "#PWR0208" H 6250 3125 50  0001 C CNN
F 1 "GNDA" H 6255 3202 50  0000 C CNN
F 2 "" H 6250 3375 50  0001 C CNN
F 3 "" H 6250 3375 50  0001 C CNN
	1    6250 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	5025 3100 5025 3050
Wire Wire Line
	5025 3050 5125 3050
Wire Wire Line
	5325 3050 5400 3050
Wire Wire Line
	5775 3050 5900 3050
Wire Wire Line
	6350 3050 6250 3050
Wire Wire Line
	6250 3075 6250 3050
Connection ~ 6250 3050
Wire Wire Line
	6250 3050 6100 3050
Wire Wire Line
	5400 3400 5400 3050
Connection ~ 5400 3050
Wire Wire Line
	5400 3050 5475 3050
Wire Wire Line
	6050 3400 6075 3400
Wire Wire Line
	6075 3400 6075 3925
Text GLabel 6575 3700 2    50   Input ~ 0
Out
$Comp
L Device:CP_Small C216
U 1 1 5D6AE6F9
P 6400 3700
F 0 "C216" V 6625 3700 50  0000 C CNN
F 1 "10u" V 6534 3700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6400 3700 50  0001 C CNN
F 3 "~" H 6400 3700 50  0001 C CNN
	1    6400 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D6AE793
P 6075 3700
AR Path="/5D6AE793" Ref="R?"  Part="1" 
AR Path="/5D60ED9A/5D6AE793" Ref="R208"  Part="1" 
F 0 "R208" V 6075 3650 50  0000 C CNN
F 1 "4k7" V 6175 3825 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6005 3700 50  0001 C CNN
F 3 "~" H 6075 3700 50  0001 C CNN
	1    6075 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	6225 3700 6300 3700
Wire Wire Line
	4950 3650 4950 3700
Wire Wire Line
	4950 3700 5925 3700
$Comp
L Transistor_BJT:PZT2222A Q202
U 1 1 5D6C1182
P 3250 4450
F 0 "Q202" H 3441 4496 50  0000 L CNN
F 1 "PZT2222A" H 3441 4405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3450 4375 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 3250 4450 50  0001 L CNN
	1    3250 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3725 4250 3350 4250
$Comp
L Device:R R?
U 1 1 5D6C9C8F
P 2800 4450
AR Path="/5D6C9C8F" Ref="R?"  Part="1" 
AR Path="/5D60ED9A/5D6C9C8F" Ref="R213"  Part="1" 
F 0 "R213" V 2800 4400 50  0000 C CNN
F 1 "100k" V 2900 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2730 4450 50  0001 C CNN
F 3 "~" H 2800 4450 50  0001 C CNN
	1    2800 4450
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C222
U 1 1 5D6C9D9E
P 3000 4550
F 0 "C222" H 3050 4625 50  0000 L CNN
F 1 "1u" H 3025 4500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3000 4550 50  0001 C CNN
F 3 "~" H 3000 4550 50  0001 C CNN
	1    3000 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 4450 3000 4450
Connection ~ 3000 4450
Wire Wire Line
	3000 4450 3050 4450
$Comp
L Device:D D?
U 1 1 5D6CE5DB
P 2800 4300
AR Path="/5D6CE5DB" Ref="D?"  Part="1" 
AR Path="/5D60ED9A/5D6CE5DB" Ref="D205"  Part="1" 
F 0 "D205" V 2754 4379 50  0000 L CNN
F 1 "1N1007" V 2845 4379 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 2800 4300 50  0001 C CNN
F 3 "~" H 2800 4300 50  0001 C CNN
	1    2800 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4450 3000 4300
Wire Wire Line
	3000 4300 2950 4300
Wire Wire Line
	2650 4300 2650 4375
$Comp
L power:+5VA #PWR0214
U 1 1 5D6D7FCA
P 2525 4375
F 0 "#PWR0214" H 2525 4225 50  0001 C CNN
F 1 "+5VA" H 2540 4548 50  0000 C CNN
F 2 "" H 2525 4375 50  0001 C CNN
F 3 "" H 2525 4375 50  0001 C CNN
	1    2525 4375
	1    0    0    -1  
$EndComp
Wire Wire Line
	2525 4375 2650 4375
Connection ~ 2650 4375
Wire Wire Line
	2650 4375 2650 4450
$Comp
L Transistor_BJT:PZT2222A Q203
U 1 1 5D6DCF5C
P 3075 5025
F 0 "Q203" H 3125 5025 50  0000 L CNN
F 1 "PZT2222A" H 2800 5175 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3275 4950 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 3075 5025 50  0001 L CNN
	1    3075 5025
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D6DD12A
P 3375 5025
AR Path="/5D6DD12A" Ref="R?"  Part="1" 
AR Path="/5D60ED9A/5D6DD12A" Ref="R215"  Part="1" 
F 0 "R215" V 3375 4975 50  0000 C CNN
F 1 "22k" V 3300 5075 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3305 5025 50  0001 C CNN
F 3 "~" H 3375 5025 50  0001 C CNN
	1    3375 5025
	-1   0    0    1   
$EndComp
Wire Wire Line
	3375 4875 3375 4825
Wire Wire Line
	3375 4825 3350 4825
Wire Wire Line
	3350 4650 3350 4825
Connection ~ 3350 4825
Wire Wire Line
	3350 4825 3175 4825
$Comp
L Device:R R?
U 1 1 5D6E7727
P 3175 5425
AR Path="/5D6E7727" Ref="R?"  Part="1" 
AR Path="/5D60ED9A/5D6E7727" Ref="R216"  Part="1" 
F 0 "R216" V 3175 5475 50  0000 C CNN
F 1 "150R" V 3275 5425 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3105 5425 50  0001 C CNN
F 3 "~" H 3175 5425 50  0001 C CNN
	1    3175 5425
	-1   0    0    1   
$EndComp
Wire Wire Line
	3175 5225 3175 5250
Wire Wire Line
	3375 5175 3375 5250
Wire Wire Line
	3375 5250 3175 5250
Connection ~ 3175 5250
Wire Wire Line
	3175 5250 3175 5275
$Comp
L Device:C C?
U 1 1 5C5E68E8
P 2825 5225
AR Path="/5C5E68E8" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5C5E68E8" Ref="C226"  Part="1" 
F 0 "C226" H 2725 5375 50  0000 L CNN
F 1 "100n" H 2725 5475 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2863 5075 50  0001 C CNN
F 3 "~" H 2825 5225 50  0001 C CNN
	1    2825 5225
	-1   0    0    1   
$EndComp
Wire Wire Line
	2825 5075 2825 5025
Wire Wire Line
	2825 5025 2875 5025
Wire Wire Line
	2825 5375 2825 5575
Wire Wire Line
	2825 5575 3050 5575
$Comp
L power:GNDA #PWR0220
U 1 1 5C5F26D3
P 3050 5575
F 0 "#PWR0220" H 3050 5325 50  0001 C CNN
F 1 "GNDA" H 3055 5402 50  0000 C CNN
F 2 "" H 3050 5575 50  0001 C CNN
F 3 "" H 3050 5575 50  0001 C CNN
	1    3050 5575
	1    0    0    -1  
$EndComp
Connection ~ 3050 5575
Wire Wire Line
	3050 5575 3175 5575
Wire Wire Line
	2450 5250 2450 5175
Wire Wire Line
	2450 4825 2450 4875
Wire Wire Line
	2450 4525 2450 4375
Wire Wire Line
	2450 4375 2525 4375
Connection ~ 2525 4375
Wire Wire Line
	2600 5025 2825 5025
Connection ~ 2825 5025
Text Notes 1550 4875 0    50   ~ 0
Voltage divider for \nVbe between 0 \nand 0,65v on the input
$Comp
L power:GNDA #PWR?
U 1 1 5C60BCB0
P 3000 4650
AR Path="/5C60BCB0" Ref="#PWR?"  Part="1" 
AR Path="/5D60ED9A/5C60BCB0" Ref="#PWR0216"  Part="1" 
F 0 "#PWR0216" H 3000 4400 50  0001 C CNN
F 1 "GNDA" H 3005 4477 50  0000 C CNN
F 2 "" H 3000 4650 50  0001 C CNN
F 3 "" H 3000 4650 50  0001 C CNN
	1    3000 4650
	1    0    0    -1  
$EndComp
Text Notes 2950 4250 0    50   ~ 0
Anti latchup\n100K*1u = 1s
Text Notes 3325 5375 0    50   ~ 0
22k = 290ms\napprox max
Wire Wire Line
	6500 3700 6575 3700
$Comp
L Connector:AudioJack2 J?
U 1 1 5C68B7CC
P 7025 1300
AR Path="/5C68B7CC" Ref="J?"  Part="1" 
AR Path="/5D60ED9A/5C68B7CC" Ref="J201"  Part="1" 
F 0 "J201" H 6792 1371 50  0000 R CNN
F 1 "In" H 6792 1280 50  0000 R CNN
F 2 "AJ-Dropbox-Kicad:PJ301SM" H 7025 1300 50  0001 C CNN
F 3 "~" H 7025 1300 50  0001 C CNN
	1    7025 1300
	-1   0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2 J?
U 1 1 5C68B7D3
P 7025 1700
AR Path="/5C68B7D3" Ref="J?"  Part="1" 
AR Path="/5D60ED9A/5C68B7D3" Ref="J202"  Part="1" 
F 0 "J202" H 6792 1771 50  0000 R CNN
F 1 "Out" H 6792 1680 50  0000 R CNN
F 2 "AJ-Dropbox-Kicad:PJ301SM" H 7025 1700 50  0001 C CNN
F 3 "~" H 7025 1700 50  0001 C CNN
	1    7025 1700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6525 1700 6825 1700
Wire Wire Line
	6525 1300 6825 1300
Wire Wire Line
	6825 1200 6675 1200
Wire Wire Line
	6825 1600 6675 1600
Wire Wire Line
	6675 1800 6675 1600
Connection ~ 6675 1600
Wire Wire Line
	6675 1200 6675 1600
Text GLabel 6525 1300 0    50   Input ~ 0
In
Text GLabel 6525 1700 0    50   Input ~ 0
Out
Wire Wire Line
	1075 1150 1500 1150
Wire Wire Line
	1675 1150 2550 1150
$Comp
L power:GNDA #PWR0102
U 1 1 5C768062
P 6675 1800
F 0 "#PWR0102" H 6675 1550 50  0001 C CNN
F 1 "GNDA" H 6680 1627 50  0000 C CNN
F 2 "" H 6675 1800 50  0001 C CNN
F 3 "" H 6675 1800 50  0001 C CNN
	1    6675 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J203
U 1 1 5C76AAB7
P 5850 1500
F 0 "J203" H 5823 1380 50  0000 R CNN
F 1 "Conn_01x02_Male" H 5823 1471 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5850 1500 50  0001 C CNN
F 3 "~" H 5850 1500 50  0001 C CNN
	1    5850 1500
	-1   0    0    1   
$EndComp
$Comp
L Envelope-cache-2018-08-04-13-00-04:L7805 U201
U 1 1 5C76AC9D
P 4725 1150
F 0 "U201" H 4725 1392 50  0000 C CNN
F 1 "L7805" H 4725 1301 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92" H 4750 1000 50  0001 L CIN
F 3 "" H 4725 1100 50  0001 C CNN
	1    4725 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5075 1300 5075 1150
Connection ~ 5075 1150
Wire Wire Line
	5075 1150 5175 1150
Wire Wire Line
	5075 1600 5075 1800
Connection ~ 5075 1800
Wire Wire Line
	5075 1800 5400 1800
Wire Wire Line
	4425 1800 4725 1800
$Comp
L Device:C C?
U 1 1 5C78460D
P 4425 1450
AR Path="/5C78460D" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5C78460D" Ref="C203"  Part="1" 
F 0 "C203" H 4475 1350 50  0000 L CNN
F 1 "100n" H 4375 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4463 1300 50  0001 C CNN
F 3 "~" H 4425 1450 50  0001 C CNN
	1    4425 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4725 1450 4725 1800
Connection ~ 4725 1800
Wire Wire Line
	4725 1800 5075 1800
Wire Wire Line
	5400 1400 5650 1400
Wire Wire Line
	5400 1150 5400 1300
Connection ~ 5400 1300
Wire Wire Line
	5400 1300 5400 1400
Wire Wire Line
	5650 1500 5400 1500
Wire Wire Line
	5400 1500 5400 1600
Connection ~ 5400 1600
Wire Wire Line
	5400 1600 5400 1800
$Comp
L Device:D D?
U 1 1 5C794D49
P 4725 800
AR Path="/5C794D49" Ref="D?"  Part="1" 
AR Path="/5D60ED9A/5C794D49" Ref="D203"  Part="1" 
F 0 "D203" V 4679 879 50  0000 L CNN
F 1 "1N1007" V 4770 879 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 4725 800 50  0001 C CNN
F 3 "~" H 4725 800 50  0001 C CNN
	1    4725 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4425 800  4575 800 
Connection ~ 4425 800 
Wire Wire Line
	5075 1150 5075 800 
Wire Wire Line
	5075 800  4875 800 
Wire Wire Line
	1675 1450 2550 1450
Wire Wire Line
	5175 1150 5400 1150
$EndSCHEMATC
