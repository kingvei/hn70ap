EESchema Schematic File Version 2
LIBS:txrxdep
LIBS:f4grx_rf
LIBS:txrx-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Low power antenna switch"
Date "2017-12-15"
Rev "1"
Comp "F4GRX"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SMA J101
U 1 1 59C53A9D
P 2700 3300
F 0 "J101" H 2700 3500 45  0000 C CNN
F 1 "SMA" H 2700 3400 45  0000 C CNN
F 2 "txrxdep:SMA_EDGE_NRW" H 2700 3300 60  0001 C CNN
F 3 "" H 2700 3300 60  0000 C CNN
	1    2700 3300
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR102
U 1 1 59C53B18
P 2700 3450
F 0 "#PWR102" H 2700 3450 30  0001 C CNN
F 1 "GND" H 2700 3380 30  0001 C CNN
F 2 "" H 2700 3450 60  0000 C CNN
F 3 "" H 2700 3450 60  0000 C CNN
	1    2700 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR103
U 1 1 59C53BBB
P 2700 4150
F 0 "#PWR103" H 2700 4150 30  0001 C CNN
F 1 "GND" H 2700 4080 30  0001 C CNN
F 2 "" H 2700 4150 60  0000 C CNN
F 3 "" H 2700 4150 60  0000 C CNN
	1    2700 4150
	1    0    0    -1  
$EndComp
Text Notes 2200 3300 0    60   ~ 0
TX IN
Text Notes 2200 4000 0    60   ~ 0
RX OUT
Text Notes 7500 3650 0    60   ~ 0
ANT
$Comp
L GND #PWR121
U 1 1 59C53C97
P 7250 3800
F 0 "#PWR121" H 7250 3800 30  0001 C CNN
F 1 "GND" H 7250 3730 30  0001 C CNN
F 2 "" H 7250 3800 60  0000 C CNN
F 3 "" H 7250 3800 60  0000 C CNN
	1    7250 3800
	1    0    0    -1  
$EndComp
$Comp
L LSMALL L101
U 1 1 59C53CED
P 3000 3050
F 0 "L101" H 3000 3100 30  0000 C CNN
F 1 "3u3" H 3000 3050 30  0000 C CNN
F 2 "txrxdep:0805_m2012" H 3000 3050 60  0001 C CNN
F 3 "" H 3000 3050 60  0000 C CNN
	1    3000 3050
	0    1    1    0   
$EndComp
$Comp
L LSMALL L102
U 1 1 59C53D40
P 3000 4250
F 0 "L102" H 3000 4300 30  0000 C CNN
F 1 "3u3" H 3000 4250 30  0000 C CNN
F 2 "txrxdep:0805_m2012" H 3000 4250 60  0001 C CNN
F 3 "" H 3000 4250 60  0000 C CNN
	1    3000 4250
	0    1    1    0   
$EndComp
$Comp
L CSMALL C101
U 1 1 59C53DB0
P 3200 3300
F 0 "C101" H 3225 3350 30  0000 L CNN
F 1 "100p" H 3225 3250 30  0000 L CNN
F 2 "txrxdep:0603_m1608" H 3200 3300 60  0001 C CNN
F 3 "" H 3200 3300 60  0000 C CNN
	1    3200 3300
	0    1    1    0   
$EndComp
$Comp
L CSMALL C102
U 1 1 59C53DEA
P 3200 4000
F 0 "C102" H 3225 4050 30  0000 L CNN
F 1 "100p" H 3225 3950 30  0000 L CNN
F 2 "txrxdep:0603_m1608" H 3200 4000 60  0001 C CNN
F 3 "" H 3200 4000 60  0000 C CNN
	1    3200 4000
	0    1    1    0   
$EndComp
$Comp
L LSMALL L103
U 1 1 59C54132
P 6200 3650
F 0 "L103" H 6200 3700 30  0000 C CNN
F 1 "LSMALL" H 6200 3650 30  0000 C CNN
F 2 "txrxdep:0805_m2012" H 6200 3650 60  0001 C CNN
F 3 "" H 6200 3650 60  0000 C CNN
	1    6200 3650
	-1   0    0    1   
$EndComp
$Comp
L CSMALL C103
U 1 1 59C54175
P 5950 3850
F 0 "C103" H 5975 3900 30  0000 L CNN
F 1 "100p" H 5975 3800 30  0000 L CNN
F 2 "txrxdep:0603_m1608" H 5950 3850 60  0001 C CNN
F 3 "" H 5950 3850 60  0000 C CNN
	1    5950 3850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR120
U 1 1 59C54240
P 6950 3950
F 0 "#PWR120" H 6950 3950 30  0001 C CNN
F 1 "GND" H 6950 3880 30  0001 C CNN
F 2 "" H 6950 3950 60  0000 C CNN
F 3 "" H 6950 3950 60  0000 C CNN
	1    6950 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR118
U 1 1 59C5426F
P 6450 3950
F 0 "#PWR118" H 6450 3950 30  0001 C CNN
F 1 "GND" H 6450 3880 30  0001 C CNN
F 2 "" H 6450 3950 60  0000 C CNN
F 3 "" H 6450 3950 60  0000 C CNN
	1    6450 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR117
U 1 1 59C5429E
P 5950 3950
F 0 "#PWR117" H 5950 3950 30  0001 C CNN
F 1 "GND" H 5950 3880 30  0001 C CNN
F 2 "" H 5950 3950 60  0000 C CNN
F 3 "" H 5950 3950 60  0000 C CNN
	1    5950 3950
	1    0    0    -1  
$EndComp
$Comp
L RSMALL R102
U 1 1 59C542CF
P 3650 3300
F 0 "R102" H 3650 3350 30  0000 C CNN
F 1 "RSMALL" H 3650 3300 30  0000 C CNN
F 2 "txrxdep:0603_m1608" H 3650 3300 60  0001 C CNN
F 3 "" H 3650 3300 60  0000 C CNN
	1    3650 3300
	1    0    0    -1  
$EndComp
$Comp
L RSMALL R101
U 1 1 59C54329
P 3400 3550
F 0 "R101" H 3400 3600 30  0000 C CNN
F 1 "RSMALL" H 3400 3550 30  0000 C CNN
F 2 "txrxdep:0603_m1608" H 3400 3550 60  0001 C CNN
F 3 "" H 3400 3550 60  0000 C CNN
	1    3400 3550
	0    1    1    0   
$EndComp
$Comp
L RSMALL R103
U 1 1 59C54377
P 3900 3550
F 0 "R103" H 3900 3600 30  0000 C CNN
F 1 "RSMALL" H 3900 3550 30  0000 C CNN
F 2 "txrxdep:0603_m1608" H 3900 3550 60  0001 C CNN
F 3 "" H 3900 3550 60  0000 C CNN
	1    3900 3550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR107
U 1 1 59C54432
P 3400 3700
F 0 "#PWR107" H 3400 3700 30  0001 C CNN
F 1 "GND" H 3400 3630 30  0001 C CNN
F 2 "" H 3400 3700 60  0000 C CNN
F 3 "" H 3400 3700 60  0000 C CNN
	1    3400 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR108
U 1 1 59C5446A
P 3900 3700
F 0 "#PWR108" H 3900 3700 30  0001 C CNN
F 1 "GND" H 3900 3630 30  0001 C CNN
F 2 "" H 3900 3700 60  0000 C CNN
F 3 "" H 3900 3700 60  0000 C CNN
	1    3900 3700
	1    0    0    -1  
$EndComp
$Comp
L CSMALL C104
U 1 1 59C54777
P 6450 3850
F 0 "C104" H 6475 3900 30  0000 L CNN
F 1 "100p" H 6475 3800 30  0000 L CNN
F 2 "txrxdep:0603_m1608" H 6450 3850 60  0001 C CNN
F 3 "" H 6450 3850 60  0000 C CNN
	1    6450 3850
	-1   0    0    1   
$EndComp
$Comp
L CSMALL C105
U 1 1 59C547C1
P 6950 3850
F 0 "C105" H 6975 3900 30  0000 L CNN
F 1 "100p" H 6975 3800 30  0000 L CNN
F 2 "txrxdep:0603_m1608" H 6950 3850 60  0001 C CNN
F 3 "" H 6950 3850 60  0000 C CNN
	1    6950 3850
	-1   0    0    1   
$EndComp
$Comp
L LSMALL L104
U 1 1 59C54855
P 6700 3650
F 0 "L104" H 6700 3700 30  0000 C CNN
F 1 "LSMALL" H 6700 3650 30  0000 C CNN
F 2 "txrxdep:0805_m2012" H 6700 3650 60  0001 C CNN
F 3 "" H 6700 3650 60  0000 C CNN
	1    6700 3650
	-1   0    0    1   
$EndComp
$Comp
L SMA J102
U 1 1 59C5495A
P 2700 4000
F 0 "J102" H 2700 4200 45  0000 C CNN
F 1 "SMA" H 2700 4100 45  0000 C CNN
F 2 "txrxdep:SMA_EDGE_NRW" H 2700 4000 60  0001 C CNN
F 3 "" H 2700 4000 60  0000 C CNN
	1    2700 4000
	-1   0    0    -1  
$EndComp
$Comp
L SMA J103
U 1 1 59C54A32
P 7250 3650
F 0 "J103" H 7250 3850 45  0000 C CNN
F 1 "SMA" H 7250 3750 45  0000 C CNN
F 2 "txrxdep:SMA_EDGE_NRW" H 7250 3650 60  0001 C CNN
F 3 "" H 7250 3650 60  0000 C CNN
	1    7250 3650
	1    0    0    -1  
$EndComp
$Comp
L MMIC_SMALL U101
U 1 1 59C54D2F
P 4100 3150
F 0 "U101" H 4300 3150 45  0000 C CNN
F 1 "MMIC_SMALL" H 4500 2900 45  0000 C CNN
F 2 "txrxdep:SOT89" H 4100 3150 60  0001 C CNN
F 3 "" H 4100 3150 60  0000 C CNN
	1    4100 3150
	1    0    0    -1  
$EndComp
$Comp
L MMIC_SMALL U102
U 1 1 59C54DB0
P 4300 4150
F 0 "U102" H 4500 4150 45  0000 C CNN
F 1 "PGA-103+" H 4700 3900 45  0000 C CNN
F 2 "txrxdep:SOT89" H 4300 4150 60  0001 C CNN
F 3 "" H 4300 4150 60  0000 C CNN
	1    4300 4150
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR110
U 1 1 59C54ECE
P 4200 3500
F 0 "#PWR110" H 4200 3500 30  0001 C CNN
F 1 "GND" H 4200 3430 30  0001 C CNN
F 2 "" H 4200 3500 60  0000 C CNN
F 3 "" H 4200 3500 60  0000 C CNN
	1    4200 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR112
U 1 1 59C54F0C
P 4200 4200
F 0 "#PWR112" H 4200 4200 30  0001 C CNN
F 1 "GND" H 4200 4130 30  0001 C CNN
F 2 "" H 4200 4200 60  0000 C CNN
F 3 "" H 4200 4200 60  0000 C CNN
	1    4200 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR111
U 1 1 59C54F4A
P 4200 3800
F 0 "#PWR111" H 4200 3800 30  0001 C CNN
F 1 "GND" H 4200 3730 30  0001 C CNN
F 2 "" H 4200 3800 60  0000 C CNN
F 3 "" H 4200 3800 60  0000 C CNN
	1    4200 3800
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR109
U 1 1 59C54F88
P 4200 3100
F 0 "#PWR109" H 4200 3100 30  0001 C CNN
F 1 "GND" H 4200 3030 30  0001 C CNN
F 2 "" H 4200 3100 60  0000 C CNN
F 3 "" H 4200 3100 60  0000 C CNN
	1    4200 3100
	-1   0    0    1   
$EndComp
$Comp
L CSMALL C106
U 1 1 59C56602
P 4700 3300
F 0 "C106" H 4725 3350 30  0000 L CNN
F 1 "100p" H 4725 3250 30  0000 L CNN
F 2 "txrxdep:0603_m1608" H 4700 3300 60  0001 C CNN
F 3 "" H 4700 3300 60  0000 C CNN
	1    4700 3300
	0    1    1    0   
$EndComp
$Comp
L LSMALL L106
U 1 1 59C56674
P 4500 3050
F 0 "L106" H 4500 3100 30  0000 C CNN
F 1 "LSMALL" H 4500 3050 30  0000 C CNN
F 2 "txrxdep:0805_m2012" H 4500 3050 60  0001 C CNN
F 3 "" H 4500 3050 60  0000 C CNN
	1    4500 3050
	0    1    1    0   
$EndComp
$Comp
L RSMALL R105
U 1 1 59C566F3
P 4250 2750
F 0 "R105" H 4250 2800 30  0000 C CNN
F 1 "RSMALL" H 4250 2750 30  0000 C CNN
F 2 "txrxdep:0603_m1608" H 4250 2750 60  0001 C CNN
F 3 "" H 4250 2750 60  0000 C CNN
	1    4250 2750
	1    0    0    -1  
$EndComp
$Comp
L LSMALL L105
U 1 1 59C56866
P 3800 4300
F 0 "L105" H 3800 4350 30  0000 C CNN
F 1 "LSMALL" H 3800 4300 30  0000 C CNN
F 2 "txrxdep:0805_m2012" H 3800 4300 60  0001 C CNN
F 3 "" H 3800 4300 60  0000 C CNN
	1    3800 4300
	0    1    1    0   
$EndComp
$Comp
L RSMALL R104
U 1 1 59C56928
P 3800 4700
F 0 "R104" H 3800 4750 30  0000 C CNN
F 1 "RSMALL" H 3800 4700 30  0000 C CNN
F 2 "txrxdep:0603_m1608" H 3800 4700 60  0001 C CNN
F 3 "" H 3800 4700 60  0000 C CNN
	1    3800 4700
	0    1    1    0   
$EndComp
$Comp
L MOSP_SMALL T104
U 1 1 59C56A12
P 3700 2650
F 0 "T104" H 3600 2800 45  0000 C CNN
F 1 "MOSP_SMALL" H 3550 2450 45  0000 C CNN
F 2 "txrxdep:SOT23GDS" H 3700 2650 60  0001 C CNN
F 3 "" H 3700 2650 60  0000 C CNN
	1    3700 2650
	0    1    1    0   
$EndComp
$Comp
L MOSN_SMALL T101
U 1 1 59C56B98
P 3050 2250
F 0 "T101" H 2950 2400 45  0000 C CNN
F 1 "MOSN_SMALL" H 2900 2050 45  0000 C CNN
F 2 "txrxdep:SOT23GDS" H 3050 2250 60  0001 C CNN
F 3 "" H 3050 2250 60  0000 C CNN
	1    3050 2250
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR101
U 1 1 59C570D1
P 2550 2150
F 0 "#PWR101" H 2550 2150 30  0001 C CNN
F 1 "GND" H 2550 2080 30  0001 C CNN
F 2 "" H 2550 2150 60  0000 C CNN
F 3 "" H 2550 2150 60  0000 C CNN
	1    2550 2150
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR106
U 1 1 59C57248
P 3300 2750
F 0 "#PWR106" H 3300 2850 30  0001 C CNN
F 1 "VDD" H 3300 2860 30  0000 C CNN
F 2 "" H 3300 2750 60  0000 C CNN
F 3 "" H 3300 2750 60  0000 C CNN
	1    3300 2750
	0    -1   -1   0   
$EndComp
$Comp
L MOSN_SMALL T102
U 1 1 59C57381
P 3050 5500
F 0 "T102" H 2950 5650 45  0000 C CNN
F 1 "MOSN_SMALL" H 2900 5300 45  0000 C CNN
F 2 "txrxdep:SOT23GDS" H 3050 5500 60  0001 C CNN
F 3 "" H 3050 5500 60  0000 C CNN
	1    3050 5500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR104
U 1 1 59C57470
P 2900 5600
F 0 "#PWR104" H 2900 5600 30  0001 C CNN
F 1 "GND" H 2900 5530 30  0001 C CNN
F 2 "" H 2900 5600 60  0000 C CNN
F 3 "" H 2900 5600 60  0000 C CNN
	1    2900 5600
	0    1    1    0   
$EndComp
$Comp
L MOSP_SMALL T103
U 1 1 59C574C6
P 3600 5050
F 0 "T103" H 3500 5200 45  0000 C CNN
F 1 "MOSP_SMALL" H 3450 4850 45  0000 C CNN
F 2 "txrxdep:SOT23GDS" H 3600 5050 60  0001 C CNN
F 3 "" H 3600 5050 60  0000 C CNN
	1    3600 5050
	0    1    -1   0   
$EndComp
$Comp
L VDD #PWR105
U 1 1 59C576E3
P 3250 4800
F 0 "#PWR105" H 3250 4900 30  0001 C CNN
F 1 "VDD" H 3250 4910 30  0000 C CNN
F 2 "" H 3250 4800 60  0000 C CNN
F 3 "" H 3250 4800 60  0000 C CNN
	1    3250 4800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P101
U 1 1 59C5697B
P 7150 5050
F 0 "P101" H 7150 5200 50  0000 C CNN
F 1 "CONN_01X02" V 7250 5050 50  0000 C CNN
F 2 "txrxdep:PINS-2.54-1x2" H 7150 5050 60  0001 C CNN
F 3 "" H 7150 5050 60  0000 C CNN
	1    7150 5050
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR115
U 1 1 59C56A0D
P 5600 4900
F 0 "#PWR115" H 5600 5000 30  0001 C CNN
F 1 "VDD" H 5600 5010 30  0000 C CNN
F 2 "" H 5600 4900 60  0000 C CNN
F 3 "" H 5600 4900 60  0000 C CNN
	1    5600 4900
	1    0    0    -1  
$EndComp
$Comp
L CSMALL C107
U 1 1 59C56AB5
P 5600 5250
F 0 "C107" H 5625 5300 30  0000 L CNN
F 1 "100p" H 5625 5200 30  0000 L CNN
F 2 "txrxdep:0603_m1608" H 5600 5250 60  0001 C CNN
F 3 "" H 5600 5250 60  0000 C CNN
	1    5600 5250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR116
U 1 1 59C56B83
P 5600 5350
F 0 "#PWR116" H 5600 5350 30  0001 C CNN
F 1 "GND" H 5600 5280 30  0001 C CNN
F 2 "" H 5600 5350 60  0000 C CNN
F 3 "" H 5600 5350 60  0000 C CNN
	1    5600 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR119
U 1 1 59C56BE2
P 6950 5100
F 0 "#PWR119" H 6950 5100 30  0001 C CNN
F 1 "GND" H 6950 5030 30  0001 C CNN
F 2 "" H 6950 5100 60  0000 C CNN
F 3 "" H 6950 5100 60  0000 C CNN
	1    6950 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 3200 3000 3300
Wire Wire Line
	2900 3300 3100 3300
Wire Wire Line
	3000 4100 3000 4000
Wire Wire Line
	2900 4000 3100 4000
Connection ~ 3000 3300
Connection ~ 3000 4000
Wire Wire Line
	3000 2400 3000 2900
Wire Wire Line
	3000 4400 3000 5350
Wire Wire Line
	6850 3650 7050 3650
Wire Wire Line
	6350 3650 6550 3650
Wire Wire Line
	4900 3650 6050 3650
Wire Wire Line
	5950 3650 5950 3750
Wire Wire Line
	6450 3750 6450 3650
Connection ~ 6450 3650
Wire Wire Line
	6950 3750 6950 3650
Connection ~ 6950 3650
Wire Wire Line
	3300 3300 3500 3300
Wire Wire Line
	3400 3400 3400 3300
Connection ~ 3400 3300
Wire Wire Line
	3800 3300 4000 3300
Wire Wire Line
	3900 3300 3900 3400
Wire Wire Line
	3300 4000 4000 4000
Connection ~ 3900 3300
Wire Wire Line
	4500 2900 4500 2750
Wire Wire Line
	4500 2750 4400 2750
Wire Wire Line
	4400 3300 4600 3300
Wire Wire Line
	4500 3200 4500 3300
Connection ~ 4500 3300
Wire Wire Line
	4900 4000 4400 4000
Wire Wire Line
	4900 3300 4900 4000
Wire Wire Line
	4900 3300 4800 3300
Connection ~ 4900 3650
Connection ~ 5950 3650
Wire Wire Line
	3800 4150 3800 4000
Connection ~ 3800 4000
Wire Wire Line
	3800 4550 3800 4450
Wire Wire Line
	3850 2750 4100 2750
Wire Wire Line
	3200 2150 3850 2150
Wire Wire Line
	3650 2150 3650 2500
Wire Wire Line
	2550 2150 2900 2150
Wire Wire Line
	3550 2750 3300 2750
Wire Wire Line
	3200 5600 3700 5600
Wire Wire Line
	3550 5600 3550 5200
Wire Wire Line
	3800 4850 3800 4950
Wire Wire Line
	3800 4950 3750 4950
Wire Wire Line
	3250 4800 3250 4950
Wire Wire Line
	3250 4950 3450 4950
Wire Wire Line
	5600 4900 5600 5150
Wire Wire Line
	5600 5000 6050 5000
Connection ~ 5600 5000
Wire Notes Line
	2550 3300 2500 3250
Wire Notes Line
	2550 3300 2500 3350
Wire Notes Line
	2100 4000 2550 4000
Wire Notes Line
	2550 3300 2100 3300
Wire Notes Line
	2100 4000 2150 3950
Wire Notes Line
	2100 4000 2150 4050
Text Notes 4100 3000 0    60   ~ 0
"PA"
Text Notes 4100 4400 0    60   ~ 0
"LNA"
$Comp
L DIODE D101
U 1 1 5A341B1E
P 6250 5000
F 0 "D101" H 6250 5100 40  0000 C CNN
F 1 "DIODE" H 6250 4900 40  0000 C CNN
F 2 "txrxdep:SOD123" H 6250 5000 60  0001 C CNN
F 3 "" H 6250 5000 60  0000 C CNN
	1    6250 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6450 5000 6950 5000
$Comp
L LED D102
U 1 1 5A341E1C
P 3900 5600
F 0 "D102" H 3900 5700 50  0000 C CNN
F 1 "LED" H 3900 5500 50  0000 C CNN
F 2 "txrxdep:0603_m1608" H 3900 5600 60  0001 C CNN
F 3 "" H 3900 5600 60  0000 C CNN
	1    3900 5600
	-1   0    0    1   
$EndComp
Connection ~ 3550 5600
$Comp
L RSMALL R106
U 1 1 5A341EFF
P 4350 5600
F 0 "R106" H 4350 5650 30  0000 C CNN
F 1 "RSMALL" H 4350 5600 30  0000 C CNN
F 2 "txrxdep:0603_m1608" H 4350 5600 60  0001 C CNN
F 3 "" H 4350 5600 60  0000 C CNN
	1    4350 5600
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR113
U 1 1 5A341F9C
P 4600 5600
F 0 "#PWR113" H 4600 5700 30  0001 C CNN
F 1 "VDD" H 4600 5710 30  0000 C CNN
F 2 "" H 4600 5600 60  0000 C CNN
F 3 "" H 4600 5600 60  0000 C CNN
	1    4600 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 5600 4500 5600
Wire Wire Line
	4200 5600 4100 5600
$Comp
L LED D103
U 1 1 5A3425F2
P 4050 2150
F 0 "D103" H 4050 2250 50  0000 C CNN
F 1 "LED" H 4050 2050 50  0000 C CNN
F 2 "txrxdep:0603_m1608" H 4050 2150 60  0001 C CNN
F 3 "" H 4050 2150 60  0000 C CNN
	1    4050 2150
	-1   0    0    1   
$EndComp
$Comp
L RSMALL R107
U 1 1 5A3425F8
P 4500 2150
F 0 "R107" H 4500 2200 30  0000 C CNN
F 1 "RSMALL" H 4500 2150 30  0000 C CNN
F 2 "txrxdep:0603_m1608" H 4500 2150 60  0001 C CNN
F 3 "" H 4500 2150 60  0000 C CNN
	1    4500 2150
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR114
U 1 1 5A3425FE
P 4750 2150
F 0 "#PWR114" H 4750 2250 30  0001 C CNN
F 1 "VDD" H 4750 2260 30  0000 C CNN
F 2 "" H 4750 2150 60  0000 C CNN
F 3 "" H 4750 2150 60  0000 C CNN
	1    4750 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 2150 4650 2150
Wire Wire Line
	4350 2150 4250 2150
Connection ~ 3650 2150
$EndSCHEMATC
