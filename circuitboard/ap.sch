EESchema Schematic File Version 2
LIBS:apdep
LIBS:f4grx_conn
LIBS:f4grx_rf
LIBS:ap-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title "Radio gateway (overview)"
Date "2017-05-19"
Rev "1"
Comp "F4GRX"
Comment1 "CERN OHL"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 8850 950  2100 1950
U 591C78D6
F0 "ethernet" 60
F1 "ethernet.sch" 60
F2 "MAC_MDIO" I L 8850 1100 45 
F3 "MAC_MDC" I L 8850 1200 45 
F4 "MAC_RXD1" I L 8850 1500 45 
F5 "MAC_RXD0" I L 8850 1400 45 
F6 "MAC_CRSDV" I L 8850 1300 45 
F7 "MAC_REFCLK" I L 8850 1900 45 
F8 "MAC_IRQ" I L 8850 2300 45 
F9 "MAC_TXEN" I L 8850 1600 45 
F10 "MAC_TXD0" I L 8850 1700 45 
F11 "MAC_TXD1" I L 8850 1800 45 
F12 "MAC_RST" I L 8850 2200 45 
F13 "MAC_LINK" I L 8850 2050 45 
F14 "5V" I L 8850 2500 45 
$EndSheet
$Sheet
S 5550 950  2100 4100
U 591D57F8
F0 "cpu" 45
F1 "cpu.sch" 45
F2 "MAC_TXD1" I R 7650 1800 45 
F3 "MAC_TXD0" I R 7650 1700 45 
F4 "MAC_TXEN" I R 7650 1600 45 
F5 "MAC_RXD1" I R 7650 1500 45 
F6 "MAC_RXD0" I R 7650 1400 45 
F7 "MAC_MDIO" I R 7650 1100 45 
F8 "MAC_REFCLK" I R 7650 1900 45 
F9 "MAC_CRSDV" I R 7650 1300 45 
F10 "MAC_MDC" I R 7650 1200 45 
F11 "MAC_RST" I R 7650 2200 45 
F12 "MAC_IRQ" I R 7650 2300 45 
F13 "DBG_CPUTX_PCRX" I L 5550 1200 45 
F14 "DBG_CPURX_PCTX" I L 5550 1100 45 
F15 "RADIO_CS" I R 7650 3200 45 
F16 "RADIO_MISO" I R 7650 3400 45 
F17 "RADIO_MOSI" I R 7650 3500 45 
F18 "RADIO_SCLK" I R 7650 3600 45 
F19 "RADIO_IRQ" I R 7650 3700 45 
F20 "RADIO_SDN" I R 7650 3900 45 
F21 "PGOOD" I L 5550 4100 45 
F22 "5VIN" I L 5550 2400 45 
F23 "3V3CPU" I L 5550 2000 45 
F24 "MAC_LINK" I R 7650 2050 45 
F25 "RADIO_CS2" I R 7650 3300 45 
F26 "RADIO_IRQ2" I R 7650 3800 45 
$EndSheet
Wire Wire Line
	7650 1100 8850 1100
Wire Wire Line
	8850 1200 7650 1200
Wire Wire Line
	7650 1300 8850 1300
Wire Wire Line
	8850 1400 7650 1400
Wire Wire Line
	7650 1500 8850 1500
Wire Wire Line
	8850 1600 7650 1600
Wire Wire Line
	7650 1700 8850 1700
Wire Wire Line
	8850 1800 7650 1800
Wire Wire Line
	7650 1900 8850 1900
$Sheet
S 2200 950  2100 1950
U 591E0893
F0 "debug" 60
F1 "debug.sch" 60
F2 "DBG_PCTX_CPURX" I R 4300 1100 45 
F3 "DBG_PCRX_CPUTX" I R 4300 1200 45 
F4 "3V3DBG" I R 4300 2000 45 
$EndSheet
Wire Wire Line
	7650 2200 8850 2200
Wire Wire Line
	8850 2300 7650 2300
Wire Wire Line
	4300 1100 5550 1100
Wire Wire Line
	4300 1200 5550 1200
$Sheet
S 8850 3100 2100 1950
U 591F8A0B
F0 "radio" 45
F1 "radio.sch" 45
F2 "RADIO_CS" I L 8850 3200 45 
F3 "RADIO_MOSI" I L 8850 3500 45 
F4 "RADIO_MISO" I L 8850 3400 45 
F5 "RADIO_SCLK" I L 8850 3600 45 
F6 "RADIO_IRQ" I L 8850 3700 45 
F7 "RADIO_SDN" I L 8850 3900 45 
F8 "5VIN" I L 8850 4500 45 
F9 "RADIO_CS2" I L 8850 3300 45 
F10 "RADIO_IRQ2" I L 8850 3800 45 
$EndSheet
Wire Wire Line
	8850 3200 7650 3200
Wire Wire Line
	7650 3300 8850 3300
Wire Wire Line
	8850 3400 7650 3400
Wire Wire Line
	7650 3500 8850 3500
Wire Wire Line
	8850 3600 7650 3600
Wire Wire Line
	7650 3700 8850 3700
$Sheet
S 2200 3100 2100 1950
U 595CC61E
F0 "power" 45
F1 "power.sch" 45
F2 "PGOOD" I R 4300 4100 45 
F3 "5VOUT" I R 4300 3500 45 
$EndSheet
Wire Wire Line
	5550 4100 4300 4100
Wire Wire Line
	4300 3500 4900 3500
Wire Wire Line
	4900 2400 4900 5450
Wire Wire Line
	4900 5450 8300 5450
Wire Wire Line
	8300 5450 8300 2500
Connection ~ 4900 3500
Wire Wire Line
	8300 4500 8850 4500
Wire Wire Line
	4900 2400 5550 2400
Wire Wire Line
	4300 2000 5550 2000
Text Label 4500 2000 0    45   ~ 0
3V3CPU
Wire Wire Line
	8850 2050 7650 2050
Wire Wire Line
	7650 3800 8850 3800
Wire Wire Line
	8300 2500 8850 2500
Connection ~ 8300 4500
Wire Wire Line
	7650 3900 8850 3900
Text Notes 2850 2000 0    200  ~ 0
4xx
Text Notes 3100 4000 0    200  ~ 0
6xx
Text Notes 6250 2950 0    200  ~ 0
3xx
Text Notes 9900 1950 0    200  ~ 0
2xx
Text Notes 9700 4050 0    200  ~ 0
5xx
$EndSCHEMATC
