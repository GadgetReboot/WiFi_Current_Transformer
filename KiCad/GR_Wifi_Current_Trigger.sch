EESchema Schematic File Version 4
LIBS:GR_Wifi_Current_Trigger-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Wifi Current Transformer Interface"
Date "2022-07-05"
Rev "1"
Comp "Gadget Reboot"
Comment1 "https://www.youtube.com/gadgetreboot"
Comment2 "https://github.com/GadgetReboot/Wifi_Current_Transformer"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:WeMos_D1_mini U2
U 1 1 62C6400E
P 8125 3750
F 0 "U2" H 8275 3000 50  0000 C CNN
F 1 "WeMos_D1_mini" H 8525 2925 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 8125 2600 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 6275 2600 50  0001 C CNN
	1    8125 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack4 J1
U 1 1 62C65135
P 1525 3775
F 0 "J1" H 1482 4100 50  0000 C CNN
F 1 "3.5mm Jack" H 1482 4009 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_PJ320E_Horizontal" H 1525 3775 50  0001 C CNN
F 3 "~" H 1525 3775 50  0001 C CNN
	1    1525 3775
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C1
U 1 1 62C68C71
P 2275 3975
F 0 "C1" V 2047 3975 50  0000 C CNN
F 1 "10uF" V 2138 3975 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2275 3975 50  0001 C CNN
F 3 "~" H 2275 3975 50  0001 C CNN
	1    2275 3975
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT_US R4
U 1 1 62C69698
P 3275 3625
F 0 "R4" V 3162 3625 50  0000 C CNN
F 1 "25K" V 3071 3625 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Vishay_T73XX_Horizontal" H 3275 3625 50  0001 C CNN
F 3 "~" H 3275 3625 50  0001 C CNN
	1    3275 3625
	0    1    -1   0   
$EndComp
$Comp
L Device:R_POT_US R5
U 1 1 62C6C873
P 5450 4200
F 0 "R5" H 5375 4150 50  0000 R CNN
F 1 "25K" H 5375 4225 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Vishay_T73XX_Horizontal" H 5450 4200 50  0001 C CNN
F 3 "~" H 5450 4200 50  0001 C CNN
	1    5450 4200
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 62C6D9DD
P 2375 4625
F 0 "R1" H 2443 4671 50  0000 L CNN
F 1 "47K" H 2443 4580 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2375 4625 50  0001 C CNN
F 3 "~" H 2375 4625 50  0001 C CNN
	1    2375 4625
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 62C6DF94
P 2575 3975
F 0 "R3" V 2370 3975 50  0000 C CNN
F 1 "1K" V 2461 3975 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2575 3975 50  0001 C CNN
F 3 "~" H 2575 3975 50  0001 C CNN
	1    2575 3975
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 62C6E338
P 2375 4950
F 0 "R2" H 2443 4996 50  0000 L CNN
F 1 "47K" H 2443 4905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2375 4950 50  0001 C CNN
F 3 "~" H 2375 4950 50  0001 C CNN
	1    2375 4950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 62C6E61E
P 8125 5425
F 0 "J2" H 8043 5650 50  0000 C CNN
F 1 "Conn_01x03" H 8205 5376 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8125 5425 50  0001 C CNN
F 3 "~" H 8125 5425 50  0001 C CNN
	1    8125 5425
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR01
U 1 1 62C7446F
P 1975 3725
F 0 "#PWR01" H 1975 3475 50  0001 C CNN
F 1 "GNDREF" H 1980 3552 50  0001 C CNN
F 2 "" H 1975 3725 50  0001 C CNN
F 3 "" H 1975 3725 50  0001 C CNN
	1    1975 3725
	1    0    0    -1  
$EndComp
Wire Wire Line
	1725 3675 1975 3675
Wire Wire Line
	1975 3675 1975 3725
Wire Wire Line
	1725 3975 2175 3975
Wire Wire Line
	2375 3975 2475 3975
Wire Wire Line
	2675 3975 2800 3975
$Comp
L power:GNDREF #PWR06
U 1 1 62C776B4
P 3850 5425
F 0 "#PWR06" H 3850 5175 50  0001 C CNN
F 1 "GNDREF" H 3855 5252 50  0001 C CNN
F 2 "" H 3850 5425 50  0001 C CNN
F 3 "" H 3850 5425 50  0001 C CNN
	1    3850 5425
	1    0    0    -1  
$EndComp
Text Notes 1225 4300 0    50   ~ 0
SCT-013\nCurrent Transformer
$Comp
L Device:C_Small C2
U 1 1 62C7B97E
P 2700 4950
F 0 "C2" H 2792 4996 50  0000 L CNN
F 1 "100nF" H 2792 4905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2700 4950 50  0001 C CNN
F 3 "~" H 2700 4950 50  0001 C CNN
	1    2700 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR03
U 1 1 62C7D452
P 2375 5150
F 0 "#PWR03" H 2375 4900 50  0001 C CNN
F 1 "GNDREF" H 2380 4977 50  0001 C CNN
F 2 "" H 2375 5150 50  0001 C CNN
F 3 "" H 2375 5150 50  0001 C CNN
	1    2375 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 62C7D9D3
P 4300 4800
F 0 "#PWR02" H 4300 4650 50  0001 C CNN
F 1 "+5V" H 4315 4973 50  0000 C CNN
F 2 "" H 4300 4800 50  0001 C CNN
F 3 "" H 4300 4800 50  0001 C CNN
	1    4300 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2375 4475 2375 4525
Wire Wire Line
	2375 4725 2375 4800
Wire Wire Line
	2375 5050 2375 5150
Wire Wire Line
	2700 4850 2700 4800
Wire Wire Line
	2700 4800 2375 4800
Connection ~ 2375 4800
Wire Wire Line
	2375 4800 2375 4850
$Comp
L power:GNDREF #PWR04
U 1 1 62C7E9D1
P 2700 5150
F 0 "#PWR04" H 2700 4900 50  0001 C CNN
F 1 "GNDREF" H 2705 4977 50  0001 C CNN
F 2 "" H 2700 5150 50  0001 C CNN
F 3 "" H 2700 5150 50  0001 C CNN
	1    2700 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5150 2700 5050
Wire Wire Line
	2850 4175 2700 4175
Wire Wire Line
	2700 4175 2700 4800
Connection ~ 2700 4800
$Comp
L Device:C_Small C3
U 1 1 62C80F1A
P 3275 3300
F 0 "C3" V 3046 3300 50  0000 C CNN
F 1 "DNI" V 3137 3300 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3275 3300 50  0001 C CNN
F 3 "~" H 3275 3300 50  0001 C CNN
	1    3275 3300
	0    1    1    0   
$EndComp
Text Notes 6250 6625 0    50   ~ 0
Note:  DNI = Do Not Install
Wire Wire Line
	3275 3475 3275 3450
Wire Wire Line
	3800 4075 3450 4075
Wire Wire Line
	3125 3625 3025 3625
Wire Wire Line
	2800 3625 2800 3975
Connection ~ 2800 3975
Wire Wire Line
	2800 3975 2850 3975
Wire Wire Line
	3175 3300 2800 3300
Wire Wire Line
	2800 3300 2800 3625
Connection ~ 2800 3625
Wire Wire Line
	3375 3300 3800 3300
Wire Wire Line
	3800 3300 3800 3625
Connection ~ 3800 3625
Wire Wire Line
	3800 3625 3800 4075
Wire Wire Line
	4200 4075 3800 4075
Connection ~ 3800 4075
Wire Wire Line
	4200 3875 4075 3875
$Comp
L power:GNDREF #PWR08
U 1 1 62C8E7AB
P 5450 4400
F 0 "#PWR08" H 5450 4150 50  0001 C CNN
F 1 "GNDREF" H 5455 4227 50  0001 C CNN
F 2 "" H 5450 4400 50  0001 C CNN
F 3 "" H 5450 4400 50  0001 C CNN
	1    5450 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3975 5450 4050
Wire Wire Line
	5450 4400 5450 4350
$Comp
L power:+5V #PWR09
U 1 1 62C93FE3
P 8025 2875
F 0 "#PWR09" H 8025 2725 50  0001 C CNN
F 1 "+5V" H 8000 3050 50  0000 C CNN
F 2 "" H 8025 2875 50  0001 C CNN
F 3 "" H 8025 2875 50  0001 C CNN
	1    8025 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	8025 2950 8025 2875
$Comp
L power:GNDREF #PWR010
U 1 1 62C952ED
P 8125 4650
F 0 "#PWR010" H 8125 4400 50  0001 C CNN
F 1 "GNDREF" H 8130 4477 50  0001 C CNN
F 2 "" H 8125 4650 50  0001 C CNN
F 3 "" H 8125 4650 50  0001 C CNN
	1    8125 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8125 4650 8125 4550
Wire Wire Line
	5600 4200 6125 4200
Text Label 5875 4200 0    50   ~ 0
Sensor
Wire Wire Line
	8525 3250 9050 3250
Text Label 8800 3250 0    50   ~ 0
Sensor
Wire Wire Line
	8525 3550 9050 3550
Text Label 8700 3550 0    50   ~ 0
Triggered
Wire Wire Line
	8325 5325 8850 5325
Text Label 8600 5325 0    50   ~ 0
Sensor
Wire Wire Line
	8325 5425 8850 5425
Text Label 8500 5425 0    50   ~ 0
Triggered
$Comp
L power:GNDREF #PWR011
U 1 1 62C9E61B
P 8425 5600
F 0 "#PWR011" H 8425 5350 50  0001 C CNN
F 1 "GNDREF" H 8430 5427 50  0001 C CNN
F 2 "" H 8425 5600 50  0001 C CNN
F 3 "" H 8425 5600 50  0001 C CNN
	1    8425 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8325 5525 8425 5525
Wire Wire Line
	8425 5525 8425 5600
Text Notes 7450 5450 0    50   ~ 0
Aux. Signal Out\n
Connection ~ 4875 3975
Wire Wire Line
	4875 3975 5450 3975
Wire Wire Line
	4875 3975 4800 3975
Wire Wire Line
	4875 3625 4875 3975
Wire Wire Line
	4075 3875 4075 3625
Wire Wire Line
	4075 3625 4875 3625
$Comp
L power:GNDREF #PWR07
U 1 1 62C7ABA8
P 4300 5275
F 0 "#PWR07" H 4300 5025 50  0001 C CNN
F 1 "GNDREF" H 4305 5102 50  0001 C CNN
F 2 "" H 4300 5275 50  0001 C CNN
F 3 "" H 4300 5275 50  0001 C CNN
	1    4300 5275
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 62C6830A
P 4300 5050
F 0 "C4" H 4392 5096 50  0000 L CNN
F 1 "100nF" H 4392 5005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4300 5050 50  0001 C CNN
F 3 "~" H 4300 5050 50  0001 C CNN
	1    4300 5050
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 1 1 62CB158B
P 3150 4075
F 0 "U1" H 3325 4200 50  0000 C CNN
F 1 "LM358" H 3375 4275 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3150 4075 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 3150 4075 50  0001 C CNN
	1    3150 4075
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 2 1 62CB50C1
P 4500 3975
F 0 "U1" H 4600 4100 50  0000 C CNN
F 1 "LM358" H 4650 4175 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4500 3975 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 4500 3975 50  0001 C CNN
	2    4500 3975
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 3 1 62CB6D46
P 3950 5025
F 0 "U1" H 3908 5071 50  0000 L CNN
F 1 "LM358" H 3908 4980 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3950 5025 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 3950 5025 50  0001 C CNN
	3    3950 5025
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 62CD3D4B
P 3850 4625
F 0 "#PWR0101" H 3850 4475 50  0001 C CNN
F 1 "+5V" H 3865 4798 50  0000 C CNN
F 2 "" H 3850 4625 50  0001 C CNN
F 3 "" H 3850 4625 50  0001 C CNN
	1    3850 4625
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5325 3850 5425
Wire Wire Line
	3850 4625 3850 4725
Wire Wire Line
	4300 5150 4300 5275
Wire Wire Line
	3425 3625 3800 3625
Wire Wire Line
	3275 3450 3025 3450
Wire Wire Line
	3025 3450 3025 3625
Connection ~ 3025 3625
Wire Wire Line
	3025 3625 2800 3625
Text Notes 3350 3525 0    50   ~ 0
Gain
Text Notes 5525 4100 0    50   ~ 0
Level
$Comp
L Device:CP1_Small C5
U 1 1 6302EE5C
P 3100 4975
F 0 "C5" H 3200 5050 50  0000 C CNN
F 1 "DNI" H 3250 4950 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3100 4975 50  0001 C CNN
F 3 "~" H 3100 4975 50  0001 C CNN
	1    3100 4975
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR05
U 1 1 63030894
P 3100 5150
F 0 "#PWR05" H 3100 4900 50  0001 C CNN
F 1 "GNDREF" H 3105 4977 50  0001 C CNN
F 2 "" H 3100 5150 50  0001 C CNN
F 3 "" H 3100 5150 50  0001 C CNN
	1    3100 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 5150 3100 5075
Wire Wire Line
	3100 4875 3100 4800
Wire Wire Line
	3100 4800 2700 4800
$Comp
L power:+3V3 #PWR?
U 1 1 6305145B
P 2375 4475
F 0 "#PWR?" H 2375 4325 50  0001 C CNN
F 1 "+3V3" H 2350 4650 50  0000 C CNN
F 2 "" H 2375 4475 50  0001 C CNN
F 3 "" H 2375 4475 50  0001 C CNN
	1    2375 4475
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 63051B2A
P 8225 2875
F 0 "#PWR?" H 8225 2725 50  0001 C CNN
F 1 "+3V3" H 8225 3050 50  0000 C CNN
F 2 "" H 8225 2875 50  0001 C CNN
F 3 "" H 8225 2875 50  0001 C CNN
	1    8225 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	8225 2875 8225 2950
Wire Wire Line
	4300 4800 4300 4950
$EndSCHEMATC
