EESchema Schematic File Version 4
LIBS:Kicad-EffectsUnit1-cache
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
$Comp
L Device:CP C?
U 1 1 5C78728F
P 1425 1400
AR Path="/5C78728F" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5C78728F" Ref="C?"  Part="1" 
AR Path="/5C781441/5C78728F" Ref="C301"  Part="1" 
F 0 "C301" H 1375 1600 50  0000 L CNN
F 1 "100uF 16v" H 1275 1700 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1463 1250 50  0001 C CNN
F 3 "~" H 1425 1400 50  0001 C CNN
	1    1425 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5C787296
P 1425 1700
AR Path="/5C787296" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5C787296" Ref="C?"  Part="1" 
AR Path="/5C781441/5C787296" Ref="C306"  Part="1" 
F 0 "C306" H 1525 1600 50  0000 L CNN
F 1 "100uF 16v" H 1275 1450 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1463 1550 50  0001 C CNN
F 3 "~" H 1425 1700 50  0001 C CNN
	1    1425 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR?
U 1 1 5C78729D
P 1225 1550
AR Path="/5C78729D" Ref="#PWR?"  Part="1" 
AR Path="/5D60ED9A/5C78729D" Ref="#PWR?"  Part="1" 
AR Path="/5C781441/5C78729D" Ref="#PWR0302"  Part="1" 
F 0 "#PWR0302" H 1225 1300 50  0001 C CNN
F 1 "GNDS" H 1230 1377 50  0000 C CNN
F 2 "" H 1225 1550 50  0001 C CNN
F 3 "" H 1225 1550 50  0001 C CNN
	1    1225 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1225 1550 1425 1550
Connection ~ 1425 1550
$Comp
L Device:C C?
U 1 1 5C7872A5
P 1825 1400
AR Path="/5C7872A5" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5C7872A5" Ref="C?"  Part="1" 
AR Path="/5C781441/5C7872A5" Ref="C302"  Part="1" 
F 0 "C302" H 1875 1300 50  0000 L CNN
F 1 "100n" H 1775 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1863 1250 50  0001 C CNN
F 3 "~" H 1825 1400 50  0001 C CNN
	1    1825 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5C7872AC
P 1825 1700
AR Path="/5C7872AC" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5C7872AC" Ref="C?"  Part="1" 
AR Path="/5C781441/5C7872AC" Ref="C307"  Part="1" 
F 0 "C307" H 1725 1850 50  0000 L CNN
F 1 "100n" H 1725 1950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1863 1550 50  0001 C CNN
F 3 "~" H 1825 1700 50  0001 C CNN
	1    1825 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1425 1550 1600 1550
Connection ~ 1825 1550
Wire Wire Line
	1425 1250 1600 1250
Connection ~ 1425 1250
Wire Wire Line
	1425 1850 1600 1850
Connection ~ 1425 1850
Connection ~ 1825 1250
Connection ~ 1825 1850
Wire Wire Line
	2975 1750 2975 1650
Wire Wire Line
	1825 1250 2025 1250
Wire Wire Line
	1825 1550 2025 1550
Wire Wire Line
	2475 1650 2475 1750
Wire Wire Line
	2475 1750 2975 1750
Wire Wire Line
	2475 1850 2475 1750
Connection ~ 2475 1750
Wire Wire Line
	1825 1850 2025 1850
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5C7872C3
P 1425 1250
AR Path="/5C7872C3" Ref="#FLG?"  Part="1" 
AR Path="/5D60ED9A/5C7872C3" Ref="#FLG?"  Part="1" 
AR Path="/5C781441/5C7872C3" Ref="#FLG0301"  Part="1" 
F 0 "#FLG0301" H 1425 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 1425 1424 50  0000 C CNN
F 2 "" H 1425 1250 50  0001 C CNN
F 3 "~" H 1425 1250 50  0001 C CNN
	1    1425 1250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5C7872C9
P 1225 1850
AR Path="/5C7872C9" Ref="#FLG?"  Part="1" 
AR Path="/5D60ED9A/5C7872C9" Ref="#FLG?"  Part="1" 
AR Path="/5C781441/5C7872C9" Ref="#FLG0303"  Part="1" 
F 0 "#FLG0303" H 1225 1925 50  0001 C CNN
F 1 "PWR_FLAG" H 1225 2024 50  0000 C CNN
F 2 "" H 1225 1850 50  0001 C CNN
F 3 "~" H 1225 1850 50  0001 C CNN
	1    1225 1850
	1    0    0    -1  
$EndComp
Connection ~ 1225 1850
Wire Wire Line
	1225 1850 1425 1850
Text GLabel 1025 1850 0    50   Input ~ 0
-12Vc
Text GLabel 1000 1250 0    50   Input ~ 0
+12Vc
$Comp
L Device:C C?
U 1 1 5C7872D3
P 2025 1700
AR Path="/5C7872D3" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5C7872D3" Ref="C?"  Part="1" 
AR Path="/5C781441/5C7872D3" Ref="C308"  Part="1" 
F 0 "C308" H 1925 1850 50  0000 L CNN
F 1 "100n" H 1925 1950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2063 1550 50  0001 C CNN
F 3 "~" H 2025 1700 50  0001 C CNN
	1    2025 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5C7872DA
P 2025 1400
AR Path="/5C7872DA" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5C7872DA" Ref="C?"  Part="1" 
AR Path="/5C781441/5C7872DA" Ref="C303"  Part="1" 
F 0 "C303" H 2075 1300 50  0000 L CNN
F 1 "100n" H 1975 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2063 1250 50  0001 C CNN
F 3 "~" H 2025 1400 50  0001 C CNN
	1    2025 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:D D?
U 1 1 5C7872E1
P 1600 1400
AR Path="/5C7872E1" Ref="D?"  Part="1" 
AR Path="/5D60ED9A/5C7872E1" Ref="D?"  Part="1" 
AR Path="/5C781441/5C7872E1" Ref="D302"  Part="1" 
F 0 "D302" V 1554 1479 50  0000 L CNN
F 1 "1N1007" V 1645 1479 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 1600 1400 50  0001 C CNN
F 3 "~" H 1600 1400 50  0001 C CNN
	1    1600 1400
	0    1    1    0   
$EndComp
Connection ~ 1600 1250
Wire Wire Line
	1600 1250 1825 1250
Connection ~ 1600 1550
Wire Wire Line
	1600 1550 1825 1550
$Comp
L Device:D D?
U 1 1 5C7872EC
P 1600 1700
AR Path="/5C7872EC" Ref="D?"  Part="1" 
AR Path="/5D60ED9A/5C7872EC" Ref="D?"  Part="1" 
AR Path="/5C781441/5C7872EC" Ref="D303"  Part="1" 
F 0 "D303" V 1554 1779 50  0000 L CNN
F 1 "1N1007" V 1645 1779 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 1600 1700 50  0001 C CNN
F 3 "~" H 1600 1700 50  0001 C CNN
	1    1600 1700
	0    1    1    0   
$EndComp
Connection ~ 1600 1850
Wire Wire Line
	1600 1850 1825 1850
Connection ~ 2025 1850
Connection ~ 2025 1550
Connection ~ 2025 1250
$Comp
L Device:C C?
U 1 1 5C7872F8
P 2200 1400
AR Path="/5C7872F8" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5C7872F8" Ref="C?"  Part="1" 
AR Path="/5C781441/5C7872F8" Ref="C304"  Part="1" 
F 0 "C304" H 2250 1300 50  0000 L CNN
F 1 "100n" H 2150 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2238 1250 50  0001 C CNN
F 3 "~" H 2200 1400 50  0001 C CNN
	1    2200 1400
	-1   0    0    1   
$EndComp
Connection ~ 2200 1550
Connection ~ 2200 1250
$Comp
L Device:C C?
U 1 1 5C787301
P 2200 1700
AR Path="/5C787301" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5C787301" Ref="C?"  Part="1" 
AR Path="/5C781441/5C787301" Ref="C309"  Part="1" 
F 0 "C309" H 2100 1850 50  0000 L CNN
F 1 "100n" H 2100 1950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2238 1550 50  0001 C CNN
F 3 "~" H 2200 1700 50  0001 C CNN
	1    2200 1700
	-1   0    0    1   
$EndComp
Connection ~ 2200 1850
Wire Wire Line
	2200 1850 2475 1850
Wire Wire Line
	2025 1250 2200 1250
Wire Wire Line
	2025 1550 2200 1550
Wire Wire Line
	2025 1850 2200 1850
Wire Wire Line
	2475 1350 2475 1450
$Comp
L Eurorack:HEADER_2x5_Doepfer P?
U 1 1 5C78730E
P 2725 1450
AR Path="/5C78730E" Ref="P?"  Part="1" 
AR Path="/5D60ED9A/5C78730E" Ref="P?"  Part="1" 
AR Path="/5C781441/5C78730E" Ref="P301"  Part="1" 
F 0 "P301" H 2725 952 40  0000 C CNN
F 1 "HEADER_2x5_Doepfer" H 2725 1028 40  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 2725 1119 60  0000 C CNN
F 3 "" H 2725 1450 60  0000 C CNN
	1    2725 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2475 1350 2575 1350
Wire Wire Line
	2575 1450 2475 1450
Connection ~ 2475 1450
Wire Wire Line
	2475 1450 2475 1550
Wire Wire Line
	2575 1550 2475 1550
Connection ~ 2475 1550
Wire Wire Line
	2475 1650 2575 1650
Wire Wire Line
	2875 1650 2975 1650
$Comp
L Transistor_BJT:BC337 Q?
U 1 1 5C78731D
P 3975 1350
AR Path="/5D60ED9A/5C78731D" Ref="Q?"  Part="1" 
AR Path="/5C781441/5C78731D" Ref="Q301"  Part="1" 
F 0 "Q301" V 4303 1350 50  0000 C CNN
F 1 "BC337" V 4212 1350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4175 1275 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 3975 1350 50  0001 L CNN
	1    3975 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2875 1350 2875 1450
$Comp
L Device:D D?
U 1 1 5C787325
P 3975 900
AR Path="/5C787325" Ref="D?"  Part="1" 
AR Path="/5D60ED9A/5C787325" Ref="D?"  Part="1" 
AR Path="/5C781441/5C787325" Ref="D301"  Part="1" 
F 0 "D301" V 3929 979 50  0000 L CNN
F 1 "1N1007" V 4020 979 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 3975 900 50  0001 C CNN
F 3 "~" H 3975 900 50  0001 C CNN
	1    3975 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5C78732C
P 3650 1725
AR Path="/5C78732C" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5C78732C" Ref="C?"  Part="1" 
AR Path="/5C781441/5C78732C" Ref="C310"  Part="1" 
F 0 "C310" H 3750 1625 50  0000 L CNN
F 1 "100uF 16v" H 3500 1475 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3688 1575 50  0001 C CNN
F 3 "~" H 3650 1725 50  0001 C CNN
	1    3650 1725
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C787333
P 3650 1400
AR Path="/5C787333" Ref="R?"  Part="1" 
AR Path="/5D60ED9A/5C787333" Ref="R?"  Part="1" 
AR Path="/5C781441/5C787333" Ref="R301"  Part="1" 
F 0 "R301" V 3650 1450 50  0000 C CNN
F 1 "10k" V 3534 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3580 1400 50  0001 C CNN
F 3 "~" H 3650 1400 50  0001 C CNN
	1    3650 1400
	-1   0    0    1   
$EndComp
Connection ~ 3650 1250
Wire Wire Line
	3650 1250 3775 1250
Wire Wire Line
	3650 1550 3975 1550
Wire Wire Line
	3650 1550 3650 1575
Connection ~ 3650 1550
Wire Wire Line
	2875 1450 2875 1550
Connection ~ 2875 1450
Wire Wire Line
	2850 1550 2875 1550
Connection ~ 2875 1550
Wire Wire Line
	2200 1250 2475 1250
Wire Wire Line
	2875 1250 2975 1250
Wire Wire Line
	2475 1250 2475 1175
Wire Wire Line
	2475 1175 2975 1175
Wire Wire Line
	2975 1175 2975 1250
Connection ~ 2475 1250
Wire Wire Line
	2475 1250 2575 1250
Wire Wire Line
	3650 1900 3650 1875
Wire Wire Line
	3825 900  3650 900 
Wire Wire Line
	3650 900  3650 1250
Wire Wire Line
	4175 1250 4350 1250
Wire Wire Line
	4350 1250 4350 900 
Wire Wire Line
	4350 900  4125 900 
$Comp
L Device:CP C?
U 1 1 5C787350
P 4350 1550
AR Path="/5C787350" Ref="C?"  Part="1" 
AR Path="/5D60ED9A/5C787350" Ref="C?"  Part="1" 
AR Path="/5C781441/5C787350" Ref="C305"  Part="1" 
F 0 "C305" H 4450 1450 50  0000 L CNN
F 1 "100uF 16v" H 4200 1300 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4388 1400 50  0001 C CNN
F 3 "~" H 4350 1550 50  0001 C CNN
	1    4350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1250 4350 1400
Connection ~ 4350 1250
Wire Wire Line
	4350 1700 4350 1900
Wire Wire Line
	4350 1900 3975 1900
$Comp
L Device:D_Zener D?
U 1 1 5C78735B
P 3975 1725
AR Path="/5D60ED9A/5C78735B" Ref="D?"  Part="1" 
AR Path="/5C781441/5C78735B" Ref="D304"  Part="1" 
F 0 "D304" V 3929 1804 50  0000 L CNN
F 1 "5v6" V 4020 1804 50  0000 L CNN
F 2 "Diode_SMD:D_MELF-RM10_Universal_Handsoldering" H 3975 1725 50  0001 C CNN
F 3 "~" H 3975 1725 50  0001 C CNN
	1    3975 1725
	0    1    1    0   
$EndComp
Wire Wire Line
	3975 1550 3975 1575
Connection ~ 3975 1550
Wire Wire Line
	3975 1875 3975 1900
Connection ~ 3975 1900
Wire Wire Line
	3975 1900 3650 1900
$Comp
L power:+5VL #PWR?
U 1 1 5C787367
P 4500 1250
AR Path="/5D60ED9A/5C787367" Ref="#PWR?"  Part="1" 
AR Path="/5C781441/5C787367" Ref="#PWR0301"  Part="1" 
F 0 "#PWR0301" H 4500 1100 50  0001 C CNN
F 1 "+5VL" H 4515 1423 50  0000 C CNN
F 2 "" H 4500 1250 50  0001 C CNN
F 3 "" H 4500 1250 50  0001 C CNN
	1    4500 1250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5C78736D
P 4650 1250
AR Path="/5C78736D" Ref="#FLG?"  Part="1" 
AR Path="/5D60ED9A/5C78736D" Ref="#FLG?"  Part="1" 
AR Path="/5C781441/5C78736D" Ref="#FLG0302"  Part="1" 
F 0 "#FLG0302" H 4650 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 4800 1300 50  0000 C CNN
F 2 "" H 4650 1250 50  0001 C CNN
F 3 "~" H 4650 1250 50  0001 C CNN
	1    4650 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR?
U 1 1 5C787373
P 3975 1900
AR Path="/5C787373" Ref="#PWR?"  Part="1" 
AR Path="/5D60ED9A/5C787373" Ref="#PWR?"  Part="1" 
AR Path="/5C781441/5C787373" Ref="#PWR0304"  Part="1" 
F 0 "#PWR0304" H 3975 1650 50  0001 C CNN
F 1 "GNDS" H 3980 1727 50  0000 C CNN
F 2 "" H 3975 1900 50  0001 C CNN
F 3 "" H 3975 1900 50  0001 C CNN
	1    3975 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1550 2475 1550
$Comp
L power:GNDS #PWR?
U 1 1 5C78737A
P 3025 1550
AR Path="/5C78737A" Ref="#PWR?"  Part="1" 
AR Path="/5D60ED9A/5C78737A" Ref="#PWR?"  Part="1" 
AR Path="/5C781441/5C78737A" Ref="#PWR0303"  Part="1" 
F 0 "#PWR0303" H 3025 1300 50  0001 C CNN
F 1 "GNDS" H 3030 1377 50  0000 C CNN
F 2 "" H 3025 1550 50  0001 C CNN
F 3 "" H 3025 1550 50  0001 C CNN
	1    3025 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2875 1550 3025 1550
Text GLabel 3550 1250 0    50   Input ~ 0
+12Vc
Wire Wire Line
	3550 1250 3650 1250
Wire Wire Line
	4350 1250 4500 1250
Connection ~ 4500 1250
Wire Wire Line
	4500 1250 4650 1250
$Comp
L Device:R R?
U 1 1 5C787386
P 4350 2050
AR Path="/5C787386" Ref="R?"  Part="1" 
AR Path="/5D60ED9A/5C787386" Ref="R?"  Part="1" 
AR Path="/5C781441/5C787386" Ref="R302"  Part="1" 
F 0 "R302" V 4350 2100 50  0000 C CNN
F 1 "0R" V 4234 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4280 2050 50  0001 C CNN
F 3 "~" H 4350 2050 50  0001 C CNN
	1    4350 2050
	-1   0    0    1   
$EndComp
Connection ~ 4350 1900
$Comp
L power:GNDS #PWR?
U 1 1 5C78738E
P 4350 2200
AR Path="/5D60ED9A/5C78738E" Ref="#PWR?"  Part="1" 
AR Path="/5C781441/5C78738E" Ref="#PWR0305"  Part="1" 
F 0 "#PWR0305" H 4350 1950 50  0001 C CNN
F 1 "GNDS" H 4355 2027 50  0000 C CNN
F 2 "" H 4350 2200 50  0001 C CNN
F 3 "" H 4350 2200 50  0001 C CNN
	1    4350 2200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5C787394
P 4350 2200
AR Path="/5C787394" Ref="#FLG?"  Part="1" 
AR Path="/5D60ED9A/5C787394" Ref="#FLG?"  Part="1" 
AR Path="/5C781441/5C787394" Ref="#FLG0304"  Part="1" 
F 0 "#FLG0304" H 4350 2275 50  0001 C CNN
F 1 "PWR_FLAG" H 4500 2250 50  0000 C CNN
F 2 "" H 4350 2200 50  0001 C CNN
F 3 "~" H 4350 2200 50  0001 C CNN
	1    4350 2200
	0    1    1    0   
$EndComp
Connection ~ 4350 2200
Wire Wire Line
	1025 1850 1225 1850
Wire Wire Line
	1000 1250 1425 1250
$EndSCHEMATC