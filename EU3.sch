EESchema Schematic File Version 4
LIBS:Kicad-EffectsUnit1-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "Clock and Counter - CNC"
Date "2019-02-25"
Rev "Rev A"
Comp "Johansen Engineering"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GNDS #PWR?
U 1 1 5C78729D
P 1250 1400
AR Path="/5C78729D" Ref="#PWR?"  Part="1" 
AR Path="/5D60ED9A/5C78729D" Ref="#PWR?"  Part="1" 
AR Path="/5C781441/5C78729D" Ref="#PWR0302"  Part="1" 
F 0 "#PWR0302" H 1250 1150 50  0001 C CNN
F 1 "GNDS" H 1255 1227 50  0000 C CNN
F 2 "" H 1250 1400 50  0001 C CNN
F 3 "" H 1250 1400 50  0001 C CNN
	1    1250 1400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5C7872C9
P 1350 1400
AR Path="/5C7872C9" Ref="#FLG?"  Part="1" 
AR Path="/5D60ED9A/5C7872C9" Ref="#FLG?"  Part="1" 
AR Path="/5C781441/5C7872C9" Ref="#FLG0303"  Part="1" 
F 0 "#FLG0303" H 1350 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 1350 1574 50  0000 C CNN
F 2 "" H 1350 1400 50  0001 C CNN
F 3 "~" H 1350 1400 50  0001 C CNN
	1    1350 1400
	1    0    0    -1  
$EndComp
Text GLabel 1900 1700 0    50   Input ~ 0
-12Vc
Text GLabel 1875 1100 0    50   Input ~ 0
+12Vc
$Comp
L Device:C C?
U 1 1 5C783F87
P 1250 1150
AR Path="/5C783F87" Ref="C?"  Part="1" 
AR Path="/5C781441/5C783F87" Ref="C?"  Part="1" 
F 0 "C?" H 1365 1196 50  0000 L CNN
F 1 "100n" H 1365 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1288 1000 50  0001 C CNN
F 3 "~" H 1250 1150 50  0001 C CNN
	1    1250 1150
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C783F8E
P 1250 950
AR Path="/5C783F8E" Ref="#PWR?"  Part="1" 
AR Path="/5C781441/5C783F8E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1250 800 50  0001 C CNN
F 1 "+5V" H 1200 850 50  0000 C CNN
F 2 "" H 1250 950 50  0001 C CNN
F 3 "" H 1250 950 50  0001 C CNN
	1    1250 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1000 1250 950 
Connection ~ 1250 1000
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5C783F9D
P 2050 1400
AR Path="/5C783F9D" Ref="U?"  Part="3" 
AR Path="/5C781441/5C783F9D" Ref="U?"  Part="3" 
F 0 "U?" H 2050 1767 50  0000 C CNN
F 1 "TL072" H 2050 1676 50  0000 C CNN
F 2 "AJ-Dropbox-Kicad:AJ_SO-8_5.3x6.2mm_P1.27mm" H 2050 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2050 1400 50  0001 C CNN
	3    2050 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5C783FA4
P 2300 1250
AR Path="/5C783FA4" Ref="C?"  Part="1" 
AR Path="/5C781441/5C783FA4" Ref="C?"  Part="1" 
F 0 "C?" H 2250 1450 50  0000 L CNN
F 1 "100uF 16v" H 2150 1550 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2338 1100 50  0001 C CNN
F 3 "~" H 2300 1250 50  0001 C CNN
	1    2300 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5C783FAB
P 2300 1550
AR Path="/5C783FAB" Ref="C?"  Part="1" 
AR Path="/5C781441/5C783FAB" Ref="C?"  Part="1" 
F 0 "C?" H 2400 1450 50  0000 L CNN
F 1 "100uF 16v" H 2150 1300 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2338 1400 50  0001 C CNN
F 3 "~" H 2300 1550 50  0001 C CNN
	1    2300 1550
	1    0    0    -1  
$EndComp
Connection ~ 2300 1400
$Comp
L Device:C C?
U 1 1 5C783FBB
P 2700 1250
AR Path="/5C783FBB" Ref="C?"  Part="1" 
AR Path="/5C781441/5C783FBB" Ref="C?"  Part="1" 
F 0 "C?" H 2750 1150 50  0000 L CNN
F 1 "100n" H 2650 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2738 1100 50  0001 C CNN
F 3 "~" H 2700 1250 50  0001 C CNN
	1    2700 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5C783FC2
P 2700 1550
AR Path="/5C783FC2" Ref="C?"  Part="1" 
AR Path="/5C781441/5C783FC2" Ref="C?"  Part="1" 
F 0 "C?" H 2600 1700 50  0000 L CNN
F 1 "100n" H 2600 1800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2738 1400 50  0001 C CNN
F 3 "~" H 2700 1550 50  0001 C CNN
	1    2700 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 1400 2475 1400
Connection ~ 2700 1400
Wire Wire Line
	2300 1100 2475 1100
Connection ~ 2300 1100
Wire Wire Line
	2300 1700 2475 1700
Connection ~ 2300 1700
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J?
U 1 1 5C783FCF
P 3550 1100
AR Path="/5C783FCF" Ref="J?"  Part="1" 
AR Path="/5C781441/5C783FCF" Ref="J?"  Part="1" 
F 0 "J?" H 3600 1617 50  0000 C CNN
F 1 "Doepfer connector" H 3600 1526 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical" H 3550 1100 50  0001 C CNN
F 3 "~" H 3550 1100 50  0001 C CNN
	1    3550 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1000 3250 1000
Connection ~ 2700 1100
Wire Wire Line
	3350 1200 3350 1300
Connection ~ 2700 1700
Wire Wire Line
	3350 800  3350 700 
Wire Wire Line
	3350 700  3850 700 
Wire Wire Line
	3850 700  3850 800 
Wire Wire Line
	3350 900  3300 900 
Wire Wire Line
	3300 900  3300 650 
Wire Wire Line
	3300 650  3900 650 
Wire Wire Line
	3900 650  3900 900 
Wire Wire Line
	3900 900  3850 900 
Wire Wire Line
	3850 1000 3950 1000
Wire Wire Line
	3950 1000 3950 600 
Wire Wire Line
	3950 600  3250 600 
Wire Wire Line
	3250 600  3250 1000
Connection ~ 3250 1000
Wire Wire Line
	3250 1000 1875 1000
Wire Wire Line
	3850 1600 3850 1500
Wire Wire Line
	3850 1200 3850 1300
Wire Wire Line
	3850 1300 3850 1400
Connection ~ 3850 1300
Wire Wire Line
	3850 1400 3900 1400
Connection ~ 3850 1400
Wire Wire Line
	3950 1100 3850 1100
Wire Wire Line
	3350 1300 3350 1400
Connection ~ 3350 1300
Connection ~ 3350 1400
Wire Wire Line
	2700 1100 2900 1100
Wire Wire Line
	2700 1400 2900 1400
Wire Wire Line
	3900 1400 3900 1650
Wire Wire Line
	3900 1650 3200 1650
Wire Wire Line
	3200 1650 3200 1400
Connection ~ 3200 1400
Wire Wire Line
	3200 1400 3350 1400
Wire Wire Line
	3350 1500 3350 1600
Wire Wire Line
	3350 1600 3850 1600
Wire Wire Line
	3350 1700 3350 1600
Connection ~ 3350 1600
Wire Wire Line
	2700 1700 2900 1700
Wire Wire Line
	3950 1100 3950 1750
Wire Wire Line
	3950 1750 3150 1750
Wire Wire Line
	3150 1750 3150 1100
Connection ~ 3150 1100
Wire Wire Line
	3150 1100 3350 1100
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5C784005
P 2300 1100
AR Path="/5C784005" Ref="#FLG?"  Part="1" 
AR Path="/5C781441/5C784005" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 2300 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 2300 1274 50  0000 C CNN
F 2 "" H 2300 1100 50  0001 C CNN
F 3 "~" H 2300 1100 50  0001 C CNN
	1    2300 1100
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5C78400B
P 2100 1700
AR Path="/5C78400B" Ref="#FLG?"  Part="1" 
AR Path="/5C781441/5C78400B" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 2100 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 2100 1874 50  0000 C CNN
F 2 "" H 2100 1700 50  0001 C CNN
F 3 "~" H 2100 1700 50  0001 C CNN
	1    2100 1700
	1    0    0    -1  
$EndComp
Connection ~ 2100 1700
Wire Wire Line
	2100 1700 2300 1700
Text Label 3850 800  0    50   ~ 0
Gate
Text Label 3850 900  0    50   ~ 0
CV
Wire Wire Line
	1900 1700 1950 1700
Connection ~ 1950 1700
Wire Wire Line
	1875 1100 1950 1100
Connection ~ 1950 1100
$Comp
L Device:C C?
U 1 1 5C78401C
P 2900 1550
AR Path="/5C78401C" Ref="C?"  Part="1" 
AR Path="/5C781441/5C78401C" Ref="C?"  Part="1" 
F 0 "C?" H 2800 1700 50  0000 L CNN
F 1 "100n" H 2800 1800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2938 1400 50  0001 C CNN
F 3 "~" H 2900 1550 50  0001 C CNN
	1    2900 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5C784023
P 2900 1250
AR Path="/5C784023" Ref="C?"  Part="1" 
AR Path="/5C781441/5C784023" Ref="C?"  Part="1" 
F 0 "C?" H 2950 1150 50  0000 L CNN
F 1 "100n" H 2850 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2938 1100 50  0001 C CNN
F 3 "~" H 2900 1250 50  0001 C CNN
	1    2900 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C?
U 1 1 5C78402A
P 1475 1150
AR Path="/5C78402A" Ref="C?"  Part="1" 
AR Path="/5C781441/5C78402A" Ref="C?"  Part="1" 
F 0 "C?" H 1593 1196 50  0000 L CNN
F 1 "100uF" H 1593 1105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1513 1000 50  0001 C CNN
F 3 "~" H 1475 1150 50  0001 C CNN
	1    1475 1150
	1    0    0    -1  
$EndComp
Connection ~ 1475 1000
Wire Wire Line
	1475 1000 1250 1000
$Comp
L Device:D D?
U 1 1 5C784035
P 2475 1250
AR Path="/5C784035" Ref="D?"  Part="1" 
AR Path="/5C781441/5C784035" Ref="D?"  Part="1" 
F 0 "D?" V 2429 1329 50  0000 L CNN
F 1 "1N1007" V 2520 1329 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 2475 1250 50  0001 C CNN
F 3 "~" H 2475 1250 50  0001 C CNN
	1    2475 1250
	0    1    1    0   
$EndComp
Connection ~ 2475 1100
Wire Wire Line
	2475 1100 2700 1100
Connection ~ 2475 1400
Wire Wire Line
	2475 1400 2700 1400
$Comp
L Device:D D?
U 1 1 5C784040
P 2475 1550
AR Path="/5C784040" Ref="D?"  Part="1" 
AR Path="/5C781441/5C784040" Ref="D?"  Part="1" 
F 0 "D?" V 2429 1629 50  0000 L CNN
F 1 "1N1007" V 2520 1629 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 2475 1550 50  0001 C CNN
F 3 "~" H 2475 1550 50  0001 C CNN
	1    2475 1550
	0    1    1    0   
$EndComp
Connection ~ 2475 1700
Wire Wire Line
	2475 1700 2700 1700
Connection ~ 2900 1700
Connection ~ 2900 1400
Connection ~ 2900 1100
$Comp
L Device:Polyfuse F?
U 1 1 5C784057
P 1725 1000
AR Path="/5C784057" Ref="F?"  Part="1" 
AR Path="/5C781441/5C784057" Ref="F?"  Part="1" 
F 0 "F?" V 1500 1000 50  0000 C CNN
F 1 "Polyfuse" V 1591 1000 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1775 800 50  0001 L CNN
F 3 "~" H 1725 1000 50  0001 C CNN
	1    1725 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	1575 1000 1475 1000
Text Label 3850 1000 0    50   ~ 0
+5Vin
Wire Wire Line
	1475 1400 1475 1300
Wire Wire Line
	2900 1100 3150 1100
Wire Wire Line
	2900 1700 3350 1700
Wire Wire Line
	2900 1400 3200 1400
Wire Wire Line
	1250 1300 1250 1400
Wire Wire Line
	1250 1400 1350 1400
Connection ~ 1475 1400
Connection ~ 1250 1400
Connection ~ 1350 1400
Wire Wire Line
	1350 1400 1475 1400
Wire Wire Line
	1475 1400 2300 1400
Wire Notes Line
	4050 1950 575  1950
Wire Notes Line
	575  1950 575  525 
Wire Notes Line
	575  525  4050 525 
Wire Notes Line
	4050 525  4050 1950
Wire Wire Line
	1950 1700 2100 1700
Wire Wire Line
	1950 1100 2300 1100
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5C7ADEA8
P 5650 1375
AR Path="/5C7ADEA8" Ref="U?"  Part="3" 
AR Path="/5C781441/5C7ADEA8" Ref="U?"  Part="1" 
F 0 "U?" H 5650 1742 50  0000 C CNN
F 1 "TL072" H 5650 1651 50  0000 C CNN
F 2 "AJ-Dropbox-Kicad:AJ_SO-8_5.3x6.2mm_P1.27mm" H 5650 1375 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5650 1375 50  0001 C CNN
	1    5650 1375
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 5C7ADF1C
P 5650 1950
AR Path="/5C7ADF1C" Ref="U?"  Part="3" 
AR Path="/5C781441/5C7ADF1C" Ref="U?"  Part="2" 
F 0 "U?" H 5650 2317 50  0000 C CNN
F 1 "TL072" H 5650 2226 50  0000 C CNN
F 2 "AJ-Dropbox-Kicad:AJ_SO-8_5.3x6.2mm_P1.27mm" H 5650 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5650 1950 50  0001 C CNN
	2    5650 1950
	1    0    0    -1  
$EndComp
$Comp
L Timer:LM555 U?
U 1 1 5C7AF350
P 2350 3400
F 0 "U?" H 2350 3978 50  0000 C CNN
F 1 "LM555" H 2350 3887 50  0000 C CNN
F 2 "" H 2350 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm555.pdf" H 2350 3400 50  0001 C CNN
	1    2350 3400
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4017 U?
U 1 1 5C7AF44B
P 5650 4725
F 0 "U?" H 5650 5703 50  0000 C CNN
F 1 "4017" H 5650 5612 50  0000 C CNN
F 2 "" H 5650 4725 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4017bms-22bms.pdf" H 5650 4725 50  0001 C CNN
	1    5650 4725
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C7AFA5F
P 3175 3800
AR Path="/5C7AFA5F" Ref="R?"  Part="1" 
AR Path="/5C781441/5C7AFA5F" Ref="R?"  Part="1" 
F 0 "R?" V 2968 3800 50  0000 C CNN
F 1 "3k3" V 3059 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3105 3800 50  0001 C CNN
F 3 "~" H 3175 3800 50  0001 C CNN
	1    3175 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5C7AFA66
P 3175 3450
AR Path="/5C7AFA66" Ref="RV?"  Part="1" 
AR Path="/5C781441/5C7AFA66" Ref="RV?"  Part="1" 
F 0 "RV?" V 3375 3525 50  0000 R CNN
F 1 "50k_freq" V 3275 3425 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_China_RK09_Single_Vertical_AJ" H 3175 3450 50  0001 C CNN
F 3 "~" H 3175 3450 50  0001 C CNN
	1    3175 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3175 3650 3175 3600
Wire Wire Line
	3175 3300 3175 3200
Wire Wire Line
	3025 3450 3025 3200
Wire Wire Line
	3025 3200 3175 3200
Text GLabel 2325 2700 0    50   Input ~ 0
+12Vc
Wire Wire Line
	2350 3000 2350 2950
Wire Wire Line
	2350 2700 2325 2700
$Comp
L power:GNDS #PWR?
U 1 1 5C7B2647
P 2350 3875
AR Path="/5C7B2647" Ref="#PWR?"  Part="1" 
AR Path="/5D60ED9A/5C7B2647" Ref="#PWR?"  Part="1" 
AR Path="/5C781441/5C7B2647" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2350 3625 50  0001 C CNN
F 1 "GNDS" H 2355 3702 50  0000 C CNN
F 2 "" H 2350 3875 50  0001 C CNN
F 3 "" H 2350 3875 50  0001 C CNN
	1    2350 3875
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3875 2350 3850
Wire Wire Line
	2850 4200 2075 4200
Wire Wire Line
	1725 4200 1725 3200
Wire Wire Line
	1725 3200 1850 3200
Wire Wire Line
	2850 3600 2850 4200
$Comp
L Device:C C?
U 1 1 5C7B6AFE
P 1525 3625
AR Path="/5C7B6AFE" Ref="C?"  Part="1" 
AR Path="/5C781441/5C7B6AFE" Ref="C?"  Part="1" 
F 0 "C?" H 1425 3775 50  0000 L CNN
F 1 "10n" H 1425 3875 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1563 3475 50  0001 C CNN
F 3 "~" H 1525 3625 50  0001 C CNN
	1    1525 3625
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 3400 1525 3400
Wire Wire Line
	1525 3400 1525 3475
Wire Wire Line
	1525 3775 1525 3850
Wire Wire Line
	1525 3850 2075 3850
Connection ~ 2350 3850
Wire Wire Line
	2350 3850 2350 3800
$Comp
L Device:CP C?
U 1 1 5C7BA0E3
P 2075 4000
AR Path="/5C7BA0E3" Ref="C?"  Part="1" 
AR Path="/5C781441/5C7BA0E3" Ref="C?"  Part="1" 
F 0 "C?" H 2025 4200 50  0000 L CNN
F 1 "100uF 16v" H 1925 4300 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2113 3850 50  0001 C CNN
F 3 "~" H 2075 4000 50  0001 C CNN
	1    2075 4000
	-1   0    0    1   
$EndComp
Connection ~ 2075 3850
Wire Wire Line
	2075 3850 2350 3850
Wire Wire Line
	2075 4200 2075 4150
Connection ~ 2075 4200
Wire Wire Line
	2075 4200 1725 4200
Wire Wire Line
	3025 3200 2850 3200
Connection ~ 3025 3200
Wire Wire Line
	2850 4200 3175 4200
Wire Wire Line
	3175 4200 3175 3950
Connection ~ 2850 4200
$Comp
L Device:R R?
U 1 1 5C7C396E
P 3425 3600
AR Path="/5C7C396E" Ref="R?"  Part="1" 
AR Path="/5C781441/5C7C396E" Ref="R?"  Part="1" 
F 0 "R?" V 3218 3600 50  0000 C CNN
F 1 "220k" V 3309 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3355 3600 50  0001 C CNN
F 3 "~" H 3425 3600 50  0001 C CNN
	1    3425 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2700 3425 2700
Wire Wire Line
	3425 2700 3425 3450
Connection ~ 2350 2700
Wire Wire Line
	3425 3750 3425 4200
Wire Wire Line
	3425 4200 3175 4200
Connection ~ 3175 4200
Wire Wire Line
	1850 3600 1800 3600
Wire Wire Line
	1800 3600 1800 2950
Wire Wire Line
	1800 2950 2350 2950
Connection ~ 2350 2950
Wire Wire Line
	2350 2950 2350 2700
Text GLabel 3550 3200 2    50   Input ~ 0
ClockOut
Wire Wire Line
	3175 3200 3550 3200
Connection ~ 3175 3200
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5C7D403E
P 10550 1050
AR Path="/5C7D403E" Ref="J?"  Part="1" 
AR Path="/5C781441/5C7D403E" Ref="J?"  Part="1" 
F 0 "J?" H 10317 1121 50  0000 R CNN
F 1 "ClockOut" H 10317 1030 50  0000 R CNN
F 2 "AJ-Dropbox-Kicad:PJ301SM" H 10550 1050 50  0001 C CNN
F 3 "~" H 10550 1050 50  0001 C CNN
	1    10550 1050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10050 1050 10100 1050
Wire Wire Line
	10350 950  10200 950 
Text GLabel 10050 1050 0    50   Input ~ 0
ClockOut
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5C7D6AF0
P 10550 1425
AR Path="/5C7D6AF0" Ref="J?"  Part="1" 
AR Path="/5C781441/5C7D6AF0" Ref="J?"  Part="1" 
F 0 "J?" H 10317 1496 50  0000 R CNN
F 1 "ClockIn" H 10317 1405 50  0000 R CNN
F 2 "AJ-Dropbox-Kicad:PJ301SM" H 10550 1425 50  0001 C CNN
F 3 "~" H 10550 1425 50  0001 C CNN
	1    10550 1425
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10350 1525 10100 1525
Connection ~ 10100 1050
Wire Wire Line
	10100 1050 10350 1050
Wire Wire Line
	10200 950  10200 1150
Wire Wire Line
	10200 1325 10350 1325
Text GLabel 10050 1425 0    50   Input ~ 0
ClockIn
Wire Wire Line
	10050 1425 10150 1425
Text GLabel 5025 4225 0    50   Input ~ 0
ClockIn
$Comp
L Device:LED D?
U 1 1 5C7E5BB9
P 9450 1300
AR Path="/5C7E5BB9" Ref="D?"  Part="1" 
AR Path="/5C781441/5C7E5BB9" Ref="D?"  Part="1" 
F 0 "D?" H 9441 1516 50  0000 C CNN
F 1 "LED_Clk" H 9450 1400 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9450 1300 50  0001 C CNN
F 3 "~" H 9450 1300 50  0001 C CNN
	1    9450 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C7E5BC0
P 9875 1300
AR Path="/5C7E5BC0" Ref="R?"  Part="1" 
AR Path="/5C781441/5C7E5BC0" Ref="R?"  Part="1" 
F 0 "R?" V 9668 1300 50  0000 C CNN
F 1 "680R" V 9759 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9805 1300 50  0001 C CNN
F 3 "~" H 9875 1300 50  0001 C CNN
	1    9875 1300
	0    1    1    0   
$EndComp
$Comp
L power:GNDS #PWR?
U 1 1 5C7F3CAF
P 10275 1150
AR Path="/5C7F3CAF" Ref="#PWR?"  Part="1" 
AR Path="/5D60ED9A/5C7F3CAF" Ref="#PWR?"  Part="1" 
AR Path="/5C781441/5C7F3CAF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10275 900 50  0001 C CNN
F 1 "GNDS" H 10280 977 50  0000 C CNN
F 2 "" H 10275 1150 50  0001 C CNN
F 3 "" H 10275 1150 50  0001 C CNN
	1    10275 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9725 1300 9600 1300
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5C808834
P 10550 1800
AR Path="/5C808834" Ref="J?"  Part="1" 
AR Path="/5C781441/5C808834" Ref="J?"  Part="1" 
F 0 "J?" H 10317 1871 50  0000 R CNN
F 1 "Out0" H 10317 1780 50  0000 R CNN
F 2 "AJ-Dropbox-Kicad:PJ301SM" H 10550 1800 50  0001 C CNN
F 3 "~" H 10550 1800 50  0001 C CNN
	1    10550 1800
	-1   0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5C80888A
P 10550 2175
AR Path="/5C80888A" Ref="J?"  Part="1" 
AR Path="/5C781441/5C80888A" Ref="J?"  Part="1" 
F 0 "J?" H 10317 2246 50  0000 R CNN
F 1 "Out1" H 10317 2155 50  0000 R CNN
F 2 "AJ-Dropbox-Kicad:PJ301SM" H 10550 2175 50  0001 C CNN
F 3 "~" H 10550 2175 50  0001 C CNN
	1    10550 2175
	-1   0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5C8088D4
P 10550 2575
AR Path="/5C8088D4" Ref="J?"  Part="1" 
AR Path="/5C781441/5C8088D4" Ref="J?"  Part="1" 
F 0 "J?" H 10317 2646 50  0000 R CNN
F 1 "Out2" H 10317 2555 50  0000 R CNN
F 2 "AJ-Dropbox-Kicad:PJ301SM" H 10550 2575 50  0001 C CNN
F 3 "~" H 10550 2575 50  0001 C CNN
	1    10550 2575
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 1325 10200 1700
Wire Wire Line
	10200 1700 10350 1700
Connection ~ 10200 1325
Wire Wire Line
	10200 2075 10350 2075
Connection ~ 10200 1700
Wire Wire Line
	10200 2475 10350 2475
Connection ~ 10200 2075
Wire Wire Line
	10200 1700 10200 2075
Wire Wire Line
	10100 1050 10100 1525
Wire Wire Line
	10150 1425 10150 1300
Wire Wire Line
	10150 1300 10025 1300
Connection ~ 10150 1425
Wire Wire Line
	10150 1425 10350 1425
Wire Wire Line
	10200 1150 10275 1150
Connection ~ 10200 1150
Wire Wire Line
	10200 1150 10200 1325
Text GLabel 10050 1800 0    50   Input ~ 0
Out0
$Comp
L Device:LED D?
U 1 1 5C827C40
P 9450 1675
AR Path="/5C827C40" Ref="D?"  Part="1" 
AR Path="/5C781441/5C827C40" Ref="D?"  Part="1" 
F 0 "D?" H 9441 1891 50  0000 C CNN
F 1 "LED_Clk" H 9450 1775 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9450 1675 50  0001 C CNN
F 3 "~" H 9450 1675 50  0001 C CNN
	1    9450 1675
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C827C46
P 9875 1675
AR Path="/5C827C46" Ref="R?"  Part="1" 
AR Path="/5C781441/5C827C46" Ref="R?"  Part="1" 
F 0 "R?" V 9668 1675 50  0000 C CNN
F 1 "680R" V 9759 1675 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9805 1675 50  0001 C CNN
F 3 "~" H 9875 1675 50  0001 C CNN
	1    9875 1675
	0    1    1    0   
$EndComp
Wire Wire Line
	9725 1675 9600 1675
Wire Wire Line
	10350 1800 10150 1800
Wire Wire Line
	10025 1675 10150 1675
Wire Wire Line
	10150 1675 10150 1800
Connection ~ 10150 1800
Wire Wire Line
	10150 1800 10050 1800
Text GLabel 10050 2175 0    50   Input ~ 0
Out1
$Comp
L Device:LED D?
U 1 1 5C831A2E
P 9450 2050
AR Path="/5C831A2E" Ref="D?"  Part="1" 
AR Path="/5C781441/5C831A2E" Ref="D?"  Part="1" 
F 0 "D?" H 9441 2266 50  0000 C CNN
F 1 "LED_Clk" H 9450 2150 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9450 2050 50  0001 C CNN
F 3 "~" H 9450 2050 50  0001 C CNN
	1    9450 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C831A34
P 9875 2050
AR Path="/5C831A34" Ref="R?"  Part="1" 
AR Path="/5C781441/5C831A34" Ref="R?"  Part="1" 
F 0 "R?" V 9668 2050 50  0000 C CNN
F 1 "680R" V 9759 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9805 2050 50  0001 C CNN
F 3 "~" H 9875 2050 50  0001 C CNN
	1    9875 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	9725 2050 9600 2050
Wire Wire Line
	10350 2175 10150 2175
Wire Wire Line
	10025 2050 10150 2050
Wire Wire Line
	10150 2050 10150 2175
Connection ~ 10150 2175
Wire Wire Line
	10150 2175 10050 2175
Text GLabel 10050 2575 0    50   Input ~ 0
Out2
$Comp
L Device:LED D?
U 1 1 5C8355A4
P 9450 2450
AR Path="/5C8355A4" Ref="D?"  Part="1" 
AR Path="/5C781441/5C8355A4" Ref="D?"  Part="1" 
F 0 "D?" H 9441 2666 50  0000 C CNN
F 1 "LED_Clk" H 9450 2550 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9450 2450 50  0001 C CNN
F 3 "~" H 9450 2450 50  0001 C CNN
	1    9450 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C8355AA
P 9875 2450
AR Path="/5C8355AA" Ref="R?"  Part="1" 
AR Path="/5C781441/5C8355AA" Ref="R?"  Part="1" 
F 0 "R?" V 9668 2450 50  0000 C CNN
F 1 "680R" V 9759 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9805 2450 50  0001 C CNN
F 3 "~" H 9875 2450 50  0001 C CNN
	1    9875 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	9725 2450 9600 2450
Wire Wire Line
	10350 2575 10150 2575
Wire Wire Line
	10025 2450 10150 2450
Wire Wire Line
	10150 2450 10150 2575
Connection ~ 10150 2575
Wire Wire Line
	10150 2575 10050 2575
Wire Wire Line
	9300 1300 9300 1675
Connection ~ 9300 1675
Wire Wire Line
	9300 1675 9300 2050
Connection ~ 9300 2050
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5C83D850
P 10550 2925
AR Path="/5C83D850" Ref="J?"  Part="1" 
AR Path="/5C781441/5C83D850" Ref="J?"  Part="1" 
F 0 "J?" H 10317 2996 50  0000 R CNN
F 1 "Out3" H 10317 2905 50  0000 R CNN
F 2 "AJ-Dropbox-Kicad:PJ301SM" H 10550 2925 50  0001 C CNN
F 3 "~" H 10550 2925 50  0001 C CNN
	1    10550 2925
	-1   0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5C83D856
P 10550 3300
AR Path="/5C83D856" Ref="J?"  Part="1" 
AR Path="/5C781441/5C83D856" Ref="J?"  Part="1" 
F 0 "J?" H 10317 3371 50  0000 R CNN
F 1 "Out4" H 10317 3280 50  0000 R CNN
F 2 "AJ-Dropbox-Kicad:PJ301SM" H 10550 3300 50  0001 C CNN
F 3 "~" H 10550 3300 50  0001 C CNN
	1    10550 3300
	-1   0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5C83D85C
P 10550 3700
AR Path="/5C83D85C" Ref="J?"  Part="1" 
AR Path="/5C781441/5C83D85C" Ref="J?"  Part="1" 
F 0 "J?" H 10317 3771 50  0000 R CNN
F 1 "Out5" H 10317 3680 50  0000 R CNN
F 2 "AJ-Dropbox-Kicad:PJ301SM" H 10550 3700 50  0001 C CNN
F 3 "~" H 10550 3700 50  0001 C CNN
	1    10550 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2825 10350 2825
Wire Wire Line
	10200 3200 10350 3200
Connection ~ 10200 2825
Wire Wire Line
	10200 3600 10350 3600
Connection ~ 10200 3200
Wire Wire Line
	10200 3200 10200 3600
Wire Wire Line
	10200 2825 10200 3200
Text GLabel 10050 2925 0    50   Input ~ 0
Out3
$Comp
L Device:LED D?
U 1 1 5C83D86B
P 9450 2800
AR Path="/5C83D86B" Ref="D?"  Part="1" 
AR Path="/5C781441/5C83D86B" Ref="D?"  Part="1" 
F 0 "D?" H 9441 3016 50  0000 C CNN
F 1 "LED_Clk" H 9450 2900 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9450 2800 50  0001 C CNN
F 3 "~" H 9450 2800 50  0001 C CNN
	1    9450 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C83D871
P 9875 2800
AR Path="/5C83D871" Ref="R?"  Part="1" 
AR Path="/5C781441/5C83D871" Ref="R?"  Part="1" 
F 0 "R?" V 9668 2800 50  0000 C CNN
F 1 "680R" V 9759 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9805 2800 50  0001 C CNN
F 3 "~" H 9875 2800 50  0001 C CNN
	1    9875 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	9725 2800 9600 2800
Wire Wire Line
	10350 2925 10150 2925
Wire Wire Line
	10025 2800 10150 2800
Wire Wire Line
	10150 2800 10150 2925
Connection ~ 10150 2925
Wire Wire Line
	10150 2925 10050 2925
Text GLabel 10050 3300 0    50   Input ~ 0
Out4
$Comp
L Device:LED D?
U 1 1 5C83D87E
P 9450 3175
AR Path="/5C83D87E" Ref="D?"  Part="1" 
AR Path="/5C781441/5C83D87E" Ref="D?"  Part="1" 
F 0 "D?" H 9441 3391 50  0000 C CNN
F 1 "LED_Clk" H 9450 3275 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9450 3175 50  0001 C CNN
F 3 "~" H 9450 3175 50  0001 C CNN
	1    9450 3175
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C83D884
P 9875 3175
AR Path="/5C83D884" Ref="R?"  Part="1" 
AR Path="/5C781441/5C83D884" Ref="R?"  Part="1" 
F 0 "R?" V 9668 3175 50  0000 C CNN
F 1 "680R" V 9759 3175 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9805 3175 50  0001 C CNN
F 3 "~" H 9875 3175 50  0001 C CNN
	1    9875 3175
	0    1    1    0   
$EndComp
Wire Wire Line
	9725 3175 9600 3175
Wire Wire Line
	10350 3300 10150 3300
Wire Wire Line
	10025 3175 10150 3175
Wire Wire Line
	10150 3175 10150 3300
Connection ~ 10150 3300
Wire Wire Line
	10150 3300 10050 3300
Text GLabel 10050 3700 0    50   Input ~ 0
Out5
$Comp
L Device:LED D?
U 1 1 5C83D891
P 9450 3575
AR Path="/5C83D891" Ref="D?"  Part="1" 
AR Path="/5C781441/5C83D891" Ref="D?"  Part="1" 
F 0 "D?" H 9441 3791 50  0000 C CNN
F 1 "LED_Clk" H 9450 3675 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9450 3575 50  0001 C CNN
F 3 "~" H 9450 3575 50  0001 C CNN
	1    9450 3575
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C83D897
P 9875 3575
AR Path="/5C83D897" Ref="R?"  Part="1" 
AR Path="/5C781441/5C83D897" Ref="R?"  Part="1" 
F 0 "R?" V 9668 3575 50  0000 C CNN
F 1 "680R" V 9759 3575 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9805 3575 50  0001 C CNN
F 3 "~" H 9875 3575 50  0001 C CNN
	1    9875 3575
	0    1    1    0   
$EndComp
Wire Wire Line
	9725 3575 9600 3575
Wire Wire Line
	10350 3700 10150 3700
Wire Wire Line
	10025 3575 10150 3575
Wire Wire Line
	10150 3575 10150 3700
Connection ~ 10150 3700
Wire Wire Line
	10150 3700 10050 3700
Connection ~ 9300 2800
Wire Wire Line
	9300 2800 9300 3175
Connection ~ 9300 3175
Wire Wire Line
	9300 3175 9300 3575
Connection ~ 9300 2450
Wire Wire Line
	9300 2450 9300 2800
Connection ~ 10200 2475
Wire Wire Line
	10200 2475 10200 2825
Wire Wire Line
	10200 2075 10200 2475
Wire Wire Line
	9300 2050 9300 2450
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5C843B3B
P 10550 4100
AR Path="/5C843B3B" Ref="J?"  Part="1" 
AR Path="/5C781441/5C843B3B" Ref="J?"  Part="1" 
F 0 "J?" H 10317 4171 50  0000 R CNN
F 1 "Out6" H 10317 4080 50  0000 R CNN
F 2 "AJ-Dropbox-Kicad:PJ301SM" H 10550 4100 50  0001 C CNN
F 3 "~" H 10550 4100 50  0001 C CNN
	1    10550 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 4000 10350 4000
Text GLabel 10050 4100 0    50   Input ~ 0
Out6
$Comp
L Device:LED D?
U 1 1 5C843B43
P 9450 3975
AR Path="/5C843B43" Ref="D?"  Part="1" 
AR Path="/5C781441/5C843B43" Ref="D?"  Part="1" 
F 0 "D?" H 9441 4191 50  0000 C CNN
F 1 "LED_Clk" H 9450 4075 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9450 3975 50  0001 C CNN
F 3 "~" H 9450 3975 50  0001 C CNN
	1    9450 3975
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C843B49
P 9875 3975
AR Path="/5C843B49" Ref="R?"  Part="1" 
AR Path="/5C781441/5C843B49" Ref="R?"  Part="1" 
F 0 "R?" V 9668 3975 50  0000 C CNN
F 1 "680R" V 9759 3975 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9805 3975 50  0001 C CNN
F 3 "~" H 9875 3975 50  0001 C CNN
	1    9875 3975
	0    1    1    0   
$EndComp
Wire Wire Line
	9725 3975 9600 3975
Wire Wire Line
	10350 4100 10150 4100
Wire Wire Line
	10025 3975 10150 3975
Wire Wire Line
	10150 3975 10150 4100
Connection ~ 10150 4100
Wire Wire Line
	10150 4100 10050 4100
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5C843B55
P 10550 4450
AR Path="/5C843B55" Ref="J?"  Part="1" 
AR Path="/5C781441/5C843B55" Ref="J?"  Part="1" 
F 0 "J?" H 10317 4521 50  0000 R CNN
F 1 "Out7" H 10317 4430 50  0000 R CNN
F 2 "AJ-Dropbox-Kicad:PJ301SM" H 10550 4450 50  0001 C CNN
F 3 "~" H 10550 4450 50  0001 C CNN
	1    10550 4450
	-1   0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5C843B5B
P 10550 4825
AR Path="/5C843B5B" Ref="J?"  Part="1" 
AR Path="/5C781441/5C843B5B" Ref="J?"  Part="1" 
F 0 "J?" H 10317 4896 50  0000 R CNN
F 1 "Out8" H 10317 4805 50  0000 R CNN
F 2 "AJ-Dropbox-Kicad:PJ301SM" H 10550 4825 50  0001 C CNN
F 3 "~" H 10550 4825 50  0001 C CNN
	1    10550 4825
	-1   0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5C843B61
P 10550 5225
AR Path="/5C843B61" Ref="J?"  Part="1" 
AR Path="/5C781441/5C843B61" Ref="J?"  Part="1" 
F 0 "J?" H 10317 5296 50  0000 R CNN
F 1 "Out9" H 10317 5205 50  0000 R CNN
F 2 "AJ-Dropbox-Kicad:PJ301SM" H 10550 5225 50  0001 C CNN
F 3 "~" H 10550 5225 50  0001 C CNN
	1    10550 5225
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 4350 10350 4350
Wire Wire Line
	10200 4725 10350 4725
Connection ~ 10200 4350
Wire Wire Line
	10200 5125 10350 5125
Connection ~ 10200 4725
Wire Wire Line
	10200 4725 10200 5125
Wire Wire Line
	10200 4350 10200 4725
Text GLabel 10050 4450 0    50   Input ~ 0
Out7
$Comp
L Device:LED D?
U 1 1 5C843B6F
P 9450 4325
AR Path="/5C843B6F" Ref="D?"  Part="1" 
AR Path="/5C781441/5C843B6F" Ref="D?"  Part="1" 
F 0 "D?" H 9441 4541 50  0000 C CNN
F 1 "LED_Clk" H 9450 4425 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9450 4325 50  0001 C CNN
F 3 "~" H 9450 4325 50  0001 C CNN
	1    9450 4325
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C843B75
P 9875 4325
AR Path="/5C843B75" Ref="R?"  Part="1" 
AR Path="/5C781441/5C843B75" Ref="R?"  Part="1" 
F 0 "R?" V 9668 4325 50  0000 C CNN
F 1 "680R" V 9759 4325 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9805 4325 50  0001 C CNN
F 3 "~" H 9875 4325 50  0001 C CNN
	1    9875 4325
	0    1    1    0   
$EndComp
Wire Wire Line
	9725 4325 9600 4325
Wire Wire Line
	10350 4450 10150 4450
Wire Wire Line
	10025 4325 10150 4325
Wire Wire Line
	10150 4325 10150 4450
Connection ~ 10150 4450
Wire Wire Line
	10150 4450 10050 4450
Text GLabel 10050 4825 0    50   Input ~ 0
Out8
$Comp
L Device:LED D?
U 1 1 5C843B82
P 9450 4700
AR Path="/5C843B82" Ref="D?"  Part="1" 
AR Path="/5C781441/5C843B82" Ref="D?"  Part="1" 
F 0 "D?" H 9441 4916 50  0000 C CNN
F 1 "LED_Clk" H 9450 4800 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9450 4700 50  0001 C CNN
F 3 "~" H 9450 4700 50  0001 C CNN
	1    9450 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C843B88
P 9875 4700
AR Path="/5C843B88" Ref="R?"  Part="1" 
AR Path="/5C781441/5C843B88" Ref="R?"  Part="1" 
F 0 "R?" V 9668 4700 50  0000 C CNN
F 1 "680R" V 9759 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9805 4700 50  0001 C CNN
F 3 "~" H 9875 4700 50  0001 C CNN
	1    9875 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	9725 4700 9600 4700
Wire Wire Line
	10350 4825 10150 4825
Wire Wire Line
	10025 4700 10150 4700
Wire Wire Line
	10150 4700 10150 4825
Connection ~ 10150 4825
Wire Wire Line
	10150 4825 10050 4825
Text GLabel 10050 5225 0    50   Input ~ 0
Out9
$Comp
L Device:LED D?
U 1 1 5C843B95
P 9450 5100
AR Path="/5C843B95" Ref="D?"  Part="1" 
AR Path="/5C781441/5C843B95" Ref="D?"  Part="1" 
F 0 "D?" H 9441 5316 50  0000 C CNN
F 1 "LED_Clk" H 9450 5200 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9450 5100 50  0001 C CNN
F 3 "~" H 9450 5100 50  0001 C CNN
	1    9450 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C843B9B
P 9875 5100
AR Path="/5C843B9B" Ref="R?"  Part="1" 
AR Path="/5C781441/5C843B9B" Ref="R?"  Part="1" 
F 0 "R?" V 9668 5100 50  0000 C CNN
F 1 "680R" V 9759 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9805 5100 50  0001 C CNN
F 3 "~" H 9875 5100 50  0001 C CNN
	1    9875 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	9725 5100 9600 5100
Wire Wire Line
	10350 5225 10150 5225
Wire Wire Line
	10025 5100 10150 5100
Wire Wire Line
	10150 5100 10150 5225
Connection ~ 10150 5225
Wire Wire Line
	10150 5225 10050 5225
Connection ~ 9300 4325
Wire Wire Line
	9300 4325 9300 4700
Connection ~ 9300 4700
Wire Wire Line
	9300 4700 9300 5100
Connection ~ 9300 3975
Wire Wire Line
	9300 3975 9300 4325
Connection ~ 10200 4000
Wire Wire Line
	10200 4000 10200 4350
Wire Wire Line
	10200 3600 10200 4000
Wire Wire Line
	9300 3575 9300 3975
Connection ~ 9300 3575
Connection ~ 10200 3600
Text GLabel 6150 5125 2    50   Input ~ 0
Out9
Text GLabel 6150 5025 2    50   Input ~ 0
Out8
Text GLabel 6150 4925 2    50   Input ~ 0
Out7
Text GLabel 6150 4825 2    50   Input ~ 0
Out6
Text GLabel 6150 4625 2    50   Input ~ 0
Out4
Text GLabel 6150 4525 2    50   Input ~ 0
Out3
Text GLabel 6150 4425 2    50   Input ~ 0
Out2
Text GLabel 6150 4325 2    50   Input ~ 0
Out1
Text GLabel 6150 4725 2    50   Input ~ 0
Out5
Text GLabel 6150 4225 2    50   Input ~ 0
Out0
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5C8555C8
P 10550 5625
AR Path="/5C8555C8" Ref="J?"  Part="1" 
AR Path="/5C781441/5C8555C8" Ref="J?"  Part="1" 
F 0 "J?" H 10317 5696 50  0000 R CNN
F 1 "Reset" H 10317 5605 50  0000 R CNN
F 2 "AJ-Dropbox-Kicad:PJ301SM" H 10550 5625 50  0001 C CNN
F 3 "~" H 10550 5625 50  0001 C CNN
	1    10550 5625
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 5525 10350 5525
Wire Wire Line
	10200 5125 10200 5525
Text GLabel 10050 5625 0    50   Input ~ 0
Reset
$Comp
L Device:LED D?
U 1 1 5C8555D1
P 9450 5500
AR Path="/5C8555D1" Ref="D?"  Part="1" 
AR Path="/5C781441/5C8555D1" Ref="D?"  Part="1" 
F 0 "D?" H 9441 5716 50  0000 C CNN
F 1 "LED_Clk" H 9450 5600 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9450 5500 50  0001 C CNN
F 3 "~" H 9450 5500 50  0001 C CNN
	1    9450 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C8555D7
P 9875 5500
AR Path="/5C8555D7" Ref="R?"  Part="1" 
AR Path="/5C781441/5C8555D7" Ref="R?"  Part="1" 
F 0 "R?" V 9668 5500 50  0000 C CNN
F 1 "680R" V 9759 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9805 5500 50  0001 C CNN
F 3 "~" H 9875 5500 50  0001 C CNN
	1    9875 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	9725 5500 9600 5500
Wire Wire Line
	10350 5625 10150 5625
Wire Wire Line
	10025 5500 10150 5500
Wire Wire Line
	10150 5500 10150 5625
Connection ~ 10150 5625
Wire Wire Line
	10150 5625 10050 5625
Wire Wire Line
	9300 5100 9300 5500
Connection ~ 9300 5100
Connection ~ 10200 5125
Text GLabel 5000 4525 0    50   Input ~ 0
Reset
Wire Wire Line
	5025 4225 5150 4225
Wire Wire Line
	5000 4525 5150 4525
Text GLabel 5550 3750 0    50   Input ~ 0
+12Vc
$Comp
L power:GNDS #PWR?
U 1 1 5C879D20
P 5650 5675
AR Path="/5C879D20" Ref="#PWR?"  Part="1" 
AR Path="/5D60ED9A/5C879D20" Ref="#PWR?"  Part="1" 
AR Path="/5C781441/5C879D20" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5650 5425 50  0001 C CNN
F 1 "GNDS" H 5655 5502 50  0000 C CNN
F 2 "" H 5650 5675 50  0001 C CNN
F 3 "" H 5650 5675 50  0001 C CNN
	1    5650 5675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5675 5650 5625
Wire Wire Line
	5650 3925 5650 3850
Wire Wire Line
	5650 3750 5550 3750
$Comp
L Switch:SW_SPDT SW?
U 1 1 5C88D8DA
P 4525 4325
AR Path="/5C88D8DA" Ref="SW?"  Part="1" 
AR Path="/5C781441/5C88D8DA" Ref="SW?"  Part="1" 
F 0 "SW?" H 4525 4000 50  0000 C CNN
F 1 "Run" H 4525 4091 50  0000 C CNN
F 2 "AJ-Dropbox-Kicad:SP1MS1" H 4525 4325 50  0001 C CNN
F 3 "~" H 4525 4325 50  0001 C CNN
	1    4525 4325
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 4325 4725 4325
$Comp
L Device:R R?
U 1 1 5C8AA357
P 4325 4000
AR Path="/5C8AA357" Ref="R?"  Part="1" 
AR Path="/5C781441/5C8AA357" Ref="R?"  Part="1" 
F 0 "R?" V 4118 4000 50  0000 C CNN
F 1 "10k" V 4209 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4255 4000 50  0001 C CNN
F 3 "~" H 4325 4000 50  0001 C CNN
	1    4325 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR?
U 1 1 5C8AA43A
P 4325 4525
AR Path="/5C8AA43A" Ref="#PWR?"  Part="1" 
AR Path="/5D60ED9A/5C8AA43A" Ref="#PWR?"  Part="1" 
AR Path="/5C781441/5C8AA43A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4325 4275 50  0001 C CNN
F 1 "GNDS" H 4330 4352 50  0000 C CNN
F 2 "" H 4325 4525 50  0001 C CNN
F 3 "" H 4325 4525 50  0001 C CNN
	1    4325 4525
	1    0    0    -1  
$EndComp
Wire Wire Line
	4325 3850 5650 3850
Connection ~ 5650 3850
Wire Wire Line
	5650 3850 5650 3750
Wire Wire Line
	4325 4150 4325 4225
Wire Wire Line
	4325 4525 4325 4425
$EndSCHEMATC
