EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Olfactory Interface"
Date "2020-06-12"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Adafruit:Adafruit-Feather-32u4-BluetoothLE BF1
U 1 1 5EE35FBC
P 9300 1750
F 0 "BF1" H 9275 2715 50  0000 C CNN
F 1 "Adafruit-Feather-32u4-BluetoothLE" H 9275 2624 50  0000 C CNN
F 2 "" H 8650 750 50  0001 C CNN
F 3 "" H 8650 750 50  0001 C CNN
	1    9300 1750
	1    0    0    -1  
$EndComp
$Comp
L TrigTemp:Powerboost1000C PB1
U 1 1 5EE877E5
P 2600 1600
F 0 "PB1" H 2600 2165 50  0000 C CNN
F 1 "Powerboost1000C" H 2600 2074 50  0000 C CNN
F 2 "" H 2600 1200 50  0001 C CNN
F 3 "" H 2600 1200 50  0001 C CNN
	1    2600 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1300 3100 1300
$Comp
L power:GND #PWR?
U 1 1 5EE89F11
P 3100 1300
F 0 "#PWR?" H 3100 1050 50  0001 C CNN
F 1 "GND" V 3105 1172 50  0000 R CNN
F 2 "" H 3100 1300 50  0001 C CNN
F 3 "" H 3100 1300 50  0001 C CNN
	1    3100 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 1750 3100 1750
$Comp
L power:+5V #PWR?
U 1 1 5EE8A2C9
P 3100 1750
F 0 "#PWR?" H 3100 1600 50  0001 C CNN
F 1 "+5V" V 3115 1878 50  0000 L CNN
F 2 "" H 3100 1750 50  0001 C CNN
F 3 "" H 3100 1750 50  0001 C CNN
	1    3100 1750
	0    1    1    0   
$EndComp
Text Notes 9650 1200 0    50   ~ 0
Powerboost is connected\nto the MCU via a LiPo connector
$Comp
L Device:LED D1
U 1 1 5EE8A918
P 1750 3250
F 0 "D1" V 1789 3132 50  0000 R CNN
F 1 "LED" V 1698 3132 50  0000 R CNN
F 2 "" H 1750 3250 50  0001 C CNN
F 3 "~" H 1750 3250 50  0001 C CNN
	1    1750 3250
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5EE8B201
P 1650 3750
F 0 "Q1" H 1840 3796 50  0000 L CNN
F 1 "2N3904" H 1840 3705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1850 3675 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 1650 3750 50  0001 L CNN
	1    1650 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3950 1750 4100
$Comp
L power:GND #PWR?
U 1 1 5EE8C053
P 3400 4250
F 0 "#PWR?" H 3400 4000 50  0001 C CNN
F 1 "GND" H 3405 4077 50  0000 C CNN
F 2 "" H 3400 4250 50  0001 C CNN
F 3 "" H 3400 4250 50  0001 C CNN
	1    3400 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3400 1750 3550
Wire Wire Line
	1450 3750 1300 3750
Text Label 1300 3750 2    50   ~ 0
Channel1-Status
Wire Wire Line
	1750 3100 1750 2950
$Comp
L power:+5V #PWR?
U 1 1 5EE8FCE6
P 1750 2950
F 0 "#PWR?" H 1750 2800 50  0001 C CNN
F 1 "+5V" H 1765 3123 50  0000 C CNN
F 2 "" H 1750 2950 50  0001 C CNN
F 3 "" H 1750 2950 50  0001 C CNN
	1    1750 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5EE9156F
P 3400 3250
F 0 "D2" V 3439 3132 50  0000 R CNN
F 1 "LED" V 3348 3132 50  0000 R CNN
F 2 "" H 3400 3250 50  0001 C CNN
F 3 "~" H 3400 3250 50  0001 C CNN
	1    3400 3250
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5EE91575
P 3300 3750
F 0 "Q2" H 3490 3796 50  0000 L CNN
F 1 "2N3904" H 3490 3705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3500 3675 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 3300 3750 50  0001 L CNN
	1    3300 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3400 3400 3550
Wire Wire Line
	3100 3750 2950 3750
Text Label 2950 3750 2    50   ~ 0
Channel2-Status
Wire Wire Line
	3400 3100 3400 2950
$Comp
L power:+5V #PWR?
U 1 1 5EE91586
P 3400 2950
F 0 "#PWR?" H 3400 2800 50  0001 C CNN
F 1 "+5V" H 3415 3123 50  0000 C CNN
F 2 "" H 3400 2950 50  0001 C CNN
F 3 "" H 3400 2950 50  0001 C CNN
	1    3400 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5EE93A45
P 5000 3250
F 0 "D3" V 5039 3132 50  0000 R CNN
F 1 "LED" V 4948 3132 50  0000 R CNN
F 2 "" H 5000 3250 50  0001 C CNN
F 3 "~" H 5000 3250 50  0001 C CNN
	1    5000 3250
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q3
U 1 1 5EE93A4B
P 4900 3750
F 0 "Q3" H 5090 3796 50  0000 L CNN
F 1 "2N3904" H 5090 3705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5100 3675 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4900 3750 50  0001 L CNN
	1    4900 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3400 5000 3550
Wire Wire Line
	4700 3750 4550 3750
Text Label 4550 3750 2    50   ~ 0
Channel3-Status
Wire Wire Line
	5000 3100 5000 2950
$Comp
L power:+5V #PWR?
U 1 1 5EE93A55
P 5000 2950
F 0 "#PWR?" H 5000 2800 50  0001 C CNN
F 1 "+5V" H 5015 3123 50  0000 C CNN
F 2 "" H 5000 2950 50  0001 C CNN
F 3 "" H 5000 2950 50  0001 C CNN
	1    5000 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3950 3400 4100
Wire Wire Line
	5000 3950 5000 4100
Wire Wire Line
	5000 4100 3400 4100
Wire Wire Line
	3400 4100 3400 4250
Connection ~ 3400 4100
Wire Wire Line
	1750 4100 3400 4100
Text Notes 3000 2550 0    50   ~ 0
Channel Status Lights
$Comp
L Switch:SW_Push SW?
U 1 1 5EEA0A24
P 1850 1750
F 0 "SW?" H 1850 2035 50  0000 C CNN
F 1 "SW_Push" H 1850 1944 50  0000 C CNN
F 2 "" H 1850 1950 50  0001 C CNN
F 3 "~" H 1850 1950 50  0001 C CNN
	1    1850 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1750 2050 1750
Wire Wire Line
	1650 1750 1650 1900
$Comp
L power:GND #PWR?
U 1 1 5EEA1B91
P 1650 1900
F 0 "#PWR?" H 1650 1650 50  0001 C CNN
F 1 "GND" H 1655 1727 50  0000 C CNN
F 2 "" H 1650 1900 50  0001 C CNN
F 3 "" H 1650 1900 50  0001 C CNN
	1    1650 1900
	1    0    0    -1  
$EndComp
$Comp
L TrigTemp:GroveWaterAtomizer G?
U 1 1 5EE9566C
P 5400 2000
F 0 "G?" H 5400 2731 50  0000 C CNN
F 1 "GroveWaterAtomizer" H 5400 2640 50  0000 C CNN
F 2 "" H 5400 1200 50  0001 C CNN
F 3 "" H 5400 1200 50  0001 C CNN
	1    5400 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EE96EF9
P 5400 2500
F 0 "#PWR?" H 5400 2250 50  0001 C CNN
F 1 "GND" H 5405 2327 50  0000 C CNN
F 2 "" H 5400 2500 50  0001 C CNN
F 3 "" H 5400 2500 50  0001 C CNN
	1    5400 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1450 5400 1200
$Comp
L power:+5V #PWR?
U 1 1 5EE974B9
P 5400 1200
F 0 "#PWR?" H 5400 1050 50  0001 C CNN
F 1 "+5V" H 5415 1373 50  0000 C CNN
F 2 "" H 5400 1200 50  0001 C CNN
F 3 "" H 5400 1200 50  0001 C CNN
	1    5400 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2000 4850 2000
Text Label 4850 2000 2    50   ~ 0
AtomizerEN
Text Notes 4800 900  0    50   ~ 0
Vibrating Mesh Transducer Driver
Text Notes 2100 900  0    50   ~ 0
Voltage Regulator for LiPo
Wire Wire Line
	8850 1350 8700 1350
Wire Wire Line
	8850 1450 8700 1450
Wire Wire Line
	8850 1550 8700 1550
Wire Wire Line
	8850 1650 8700 1650
Wire Wire Line
	8850 1750 8700 1750
Wire Wire Line
	8850 1850 8700 1850
Wire Wire Line
	9700 2250 9850 2250
Text Label 9850 2250 0    50   ~ 0
AtomizerEN
Text Label 8700 1450 2    50   ~ 0
Channel1-Status
Text Label 8700 1650 2    50   ~ 0
Channel2-Status
Text Label 8700 1850 2    50   ~ 0
Channel3-Status
$Comp
L Hydraulics:mp6-OEM OEM1
U 1 1 5EEA4FD0
P 2200 5500
F 0 "OEM1" H 2175 6215 50  0000 C CNN
F 1 "mp6-OEM" H 2175 6124 50  0000 C CNN
F 2 "" H 2200 4800 50  0001 C CNN
F 3 "" H 2200 4800 50  0001 C CNN
	1    2200 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 5050 1450 5050
$Comp
L power:GND #PWR?
U 1 1 5EEA5D6C
P 1450 5050
F 0 "#PWR?" H 1450 4800 50  0001 C CNN
F 1 "GND" V 1455 4922 50  0000 R CNN
F 2 "" H 1450 5050 50  0001 C CNN
F 3 "" H 1450 5050 50  0001 C CNN
	1    1450 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 5200 1450 5200
Text Label 1450 5200 2    50   ~ 0
Channel1-Pump
Wire Wire Line
	2750 5050 2900 5050
$Comp
L power:+5V #PWR?
U 1 1 5EEA7A9B
P 2900 5050
F 0 "#PWR?" H 2900 4900 50  0001 C CNN
F 1 "+5V" H 2915 5223 50  0000 C CNN
F 2 "" H 2900 5050 50  0001 C CNN
F 3 "" H 2900 5050 50  0001 C CNN
	1    2900 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal VMT1
U 1 1 5EEA837A
P 6200 2000
F 0 "VMT1" V 6246 1869 50  0000 R CNN
F 1 "Vibrating Mesh Transducer" V 6155 1869 50  0000 R CNN
F 2 "" H 6200 2000 50  0001 C CNN
F 3 "~" H 6200 2000 50  0001 C CNN
	1    6200 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 1900 6000 1900
Wire Wire Line
	6000 1900 6000 1850
Wire Wire Line
	6000 1850 6200 1850
Wire Wire Line
	5800 2050 6000 2050
Wire Wire Line
	6000 2050 6000 2150
Wire Wire Line
	6000 2150 6200 2150
$Comp
L Hydraulics:mp6-OEM OEM2
U 1 1 5EEAB6A8
P 4500 5450
F 0 "OEM2" H 4475 6165 50  0000 C CNN
F 1 "mp6-OEM" H 4475 6074 50  0000 C CNN
F 2 "" H 4500 4750 50  0001 C CNN
F 3 "" H 4500 4750 50  0001 C CNN
	1    4500 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5000 3750 5000
$Comp
L power:GND #PWR?
U 1 1 5EEAB6AF
P 3750 5000
F 0 "#PWR?" H 3750 4750 50  0001 C CNN
F 1 "GND" V 3755 4872 50  0000 R CNN
F 2 "" H 3750 5000 50  0001 C CNN
F 3 "" H 3750 5000 50  0001 C CNN
	1    3750 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 5150 3750 5150
Text Label 3750 5150 2    50   ~ 0
Channel2-Pump
Wire Wire Line
	5050 5000 5200 5000
$Comp
L power:+5V #PWR?
U 1 1 5EEAB6B8
P 5200 5000
F 0 "#PWR?" H 5200 4850 50  0001 C CNN
F 1 "+5V" H 5215 5173 50  0000 C CNN
F 2 "" H 5200 5000 50  0001 C CNN
F 3 "" H 5200 5000 50  0001 C CNN
	1    5200 5000
	1    0    0    -1  
$EndComp
$Comp
L Hydraulics:mp6-OEM OEM3
U 1 1 5EEAC34B
P 6700 5450
F 0 "OEM3" H 6675 6165 50  0000 C CNN
F 1 "mp6-OEM" H 6675 6074 50  0000 C CNN
F 2 "" H 6700 4750 50  0001 C CNN
F 3 "" H 6700 4750 50  0001 C CNN
	1    6700 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5000 5950 5000
$Comp
L power:GND #PWR?
U 1 1 5EEAC352
P 5950 5000
F 0 "#PWR?" H 5950 4750 50  0001 C CNN
F 1 "GND" V 5955 4872 50  0000 R CNN
F 2 "" H 5950 5000 50  0001 C CNN
F 3 "" H 5950 5000 50  0001 C CNN
	1    5950 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 5150 5950 5150
Text Label 5950 5150 2    50   ~ 0
Channel3-Pump
Wire Wire Line
	7250 5000 7400 5000
$Comp
L power:+5V #PWR?
U 1 1 5EEAC35B
P 7400 5000
F 0 "#PWR?" H 7400 4850 50  0001 C CNN
F 1 "+5V" H 7415 5173 50  0000 C CNN
F 2 "" H 7400 5000 50  0001 C CNN
F 3 "" H 7400 5000 50  0001 C CNN
	1    7400 5000
	1    0    0    -1  
$EndComp
Text Label 8700 1350 2    50   ~ 0
Channel1-Pump
Text Label 8700 1550 2    50   ~ 0
Channel2-Pump
Text Label 8700 1750 2    50   ~ 0
Channel3-Pump
$EndSCHEMATC
