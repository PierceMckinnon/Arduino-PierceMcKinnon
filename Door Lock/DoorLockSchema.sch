EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L MCU_Module:Arduino_UNO_R3 A?
U 1 1 5E60745F
P 5200 3300
F 0 "A?" H 5200 4481 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 5200 4390 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 5200 3300 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5200 3300 50  0001 C CNN
	1    5200 3300
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_Servo_Hitec M
U 1 1 5E609C9E
P 8200 1900
F 0 "M" H 8532 1965 50  0000 L CNN
F 1 "Motor_Servo_Hitec" H 8532 1874 50  0000 L CNN
F 2 "" H 8200 1710 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 8200 1710 50  0001 C CNN
	1    8200 1900
	1    0    0    -1  
$EndComp
$Comp
L Interface_Optical:TSDP341xx U
U 1 1 5E60A808
P 8200 2850
F 0 "U" H 7734 2808 50  0000 R CNN
F 1 "IR Receiver" H 7734 2899 50  0000 R CNN
F 2 "OptoDevice:Vishay_MOLD-3Pin" H 8150 2475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/82667/tsdp341.pdf" H 8850 3150 50  0001 C CNN
	1    8200 2850
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push B
U 1 1 5E60C1D3
P 2300 2400
F 0 "B" H 2300 2685 50  0000 C CNN
F 1 "SW_Push" H 2300 2594 50  0000 C CNN
F 2 "" H 2300 2600 50  0001 C CNN
F 3 "~" H 2300 2600 50  0001 C CNN
	1    2300 2400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push B
U 1 1 5E60E413
P 2300 3350
F 0 "B" H 2300 3635 50  0000 C CNN
F 1 "SW_Push" H 2300 3544 50  0000 C CNN
F 2 "" H 2300 3550 50  0001 C CNN
F 3 "~" H 2300 3550 50  0001 C CNN
	1    2300 3350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push B
U 1 1 5E610CB2
P 8400 4250
F 0 "B" H 8400 4535 50  0000 C CNN
F 1 "SW_Push" H 8400 4444 50  0000 C CNN
F 2 "" H 8400 4450 50  0001 C CNN
F 3 "~" H 8400 4450 50  0001 C CNN
	1    8400 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2300 5400 1750
Wire Wire Line
	5400 1750 6300 1750
Wire Wire Line
	6300 1750 6300 1900
Wire Wire Line
	5300 4400 6200 4400
Wire Wire Line
	7800 2650 6200 2650
Connection ~ 6200 2650
Wire Wire Line
	6200 2650 6200 2000
Wire Wire Line
	7900 2000 6200 2000
Connection ~ 6200 2000
Wire Wire Line
	6200 2000 6200 1900
Wire Wire Line
	7900 1900 6300 1900
Connection ~ 6300 1900
Wire Wire Line
	6300 1900 6300 3300
Wire Wire Line
	4700 2700 4700 1800
Wire Wire Line
	4700 1800 7900 1800
Wire Wire Line
	7800 3050 6200 3050
Connection ~ 6200 3050
Wire Wire Line
	6200 3050 6200 2650
Wire Wire Line
	7800 2850 7400 2850
Wire Wire Line
	7400 2850 7400 4650
Wire Wire Line
	7400 4650 4700 4650
Wire Wire Line
	4700 4650 4700 4000
$Comp
L Device:R_Small_US R
U 1 1 5E631315
P 7850 4250
F 0 "R" V 7645 4250 50  0000 C CNN
F 1 "10K" V 7736 4250 50  0000 C CNN
F 2 "" H 7850 4250 50  0001 C CNN
F 3 "~" H 7850 4250 50  0001 C CNN
	1    7850 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 4250 6300 4250
Connection ~ 6300 4250
Wire Wire Line
	6300 4250 6300 4450
Wire Wire Line
	7950 4250 8100 4250
Wire Wire Line
	8100 4250 8100 4800
Wire Wire Line
	8100 4800 4600 4800
Wire Wire Line
	4600 4800 4600 3900
Wire Wire Line
	4600 3900 4700 3900
Connection ~ 8100 4250
Wire Wire Line
	8100 4250 8200 4250
Wire Wire Line
	8650 4250 8650 3900
Wire Wire Line
	8650 3900 6200 3900
Connection ~ 6200 3900
Wire Wire Line
	6200 3900 6200 4400
Wire Wire Line
	5400 1750 4050 1750
Connection ~ 5400 1750
$Comp
L Device:R_Small_US R
U 1 1 5E639967
P 2900 3350
F 0 "R" V 2695 3350 50  0000 C CNN
F 1 "10K" V 2786 3350 50  0000 C CNN
F 2 "" H 2900 3350 50  0001 C CNN
F 3 "~" H 2900 3350 50  0001 C CNN
	1    2900 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R
U 1 1 5E63B1C6
P 2850 2400
F 0 "R" V 2645 2400 50  0000 C CNN
F 1 "10K" V 2736 2400 50  0000 C CNN
F 2 "" H 2850 2400 50  0001 C CNN
F 3 "~" H 2850 2400 50  0001 C CNN
	1    2850 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 2400 4050 2400
Wire Wire Line
	4050 1750 4050 2400
Connection ~ 4050 2400
Wire Wire Line
	4050 2400 4050 3350
Wire Wire Line
	3000 3350 4050 3350
Connection ~ 4050 3350
Wire Wire Line
	4050 3350 4050 3850
Wire Wire Line
	5100 4400 4200 4400
Wire Wire Line
	4200 4400 4200 3750
Wire Wire Line
	2100 2400 2100 2700
Wire Wire Line
	2100 2700 4200 2700
Connection ~ 4200 2700
Wire Wire Line
	4200 2700 4200 2300
Wire Wire Line
	2100 3350 2100 3750
Wire Wire Line
	2100 3750 4200 3750
Connection ~ 4200 3750
Wire Wire Line
	4200 3750 4200 2700
Wire Wire Line
	2500 3350 2650 3350
Wire Wire Line
	2500 2400 2600 2400
Wire Wire Line
	2600 2400 2600 3000
Wire Wire Line
	2600 3000 4700 3000
Connection ~ 2600 2400
Wire Wire Line
	2600 2400 2750 2400
Wire Wire Line
	2650 3350 2650 3500
Wire Wire Line
	2650 3500 4700 3500
Connection ~ 2650 3350
Wire Wire Line
	2650 3350 2800 3350
$Comp
L HC-SR04:HC-SR04 S
U 1 1 5E644C11
P 8100 3400
F 0 "S" H 8530 3396 50  0000 L CNN
F 1 "HC-SR04" H 8530 3305 50  0000 L CNN
F 2 "XCVR_HC-SR04" H 8100 3400 50  0001 L BNN
F 3 "Osepp" H 8100 3400 50  0001 L BNN
	1    8100 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 3300 6300 3300
Connection ~ 6300 3300
Wire Wire Line
	6300 3300 6300 4250
Wire Wire Line
	7900 3600 6200 3600
Wire Wire Line
	6200 3050 6200 3600
Connection ~ 6200 3600
Wire Wire Line
	6200 3600 6200 3900
Wire Wire Line
	7900 3400 7550 3400
Wire Wire Line
	7550 3400 7550 4900
Wire Wire Line
	7550 4900 4500 4900
Wire Wire Line
	4500 4900 4500 3800
Wire Wire Line
	4500 3800 4700 3800
Wire Wire Line
	7900 3500 7700 3500
Wire Wire Line
	7700 3500 7700 5000
Wire Wire Line
	7700 5000 4400 5000
Wire Wire Line
	4400 5000 4400 3700
Wire Wire Line
	4400 3700 4700 3700
Text Notes 9550 7300 0    79   ~ 0
Pierce McKinnon
Text Notes 7450 7500 0    79   ~ 0
Arduino Door Lock
$EndSCHEMATC
