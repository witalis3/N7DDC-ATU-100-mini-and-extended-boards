
_correction:

;main.h,50 :: 		int correction(int input) {
;main.h,51 :: 		if (input <= 80)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction469
	MOVF        FARG_correction_input+0, 0 
	SUBLW       80
L__correction469:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction0
;main.h,52 :: 		return 0;
	CLRF        R0 
	CLRF        R1 
	GOTO        L_end_correction
L_correction0:
;main.h,53 :: 		if (input <= 171)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction470
	MOVF        FARG_correction_input+0, 0 
	SUBLW       171
L__correction470:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction1
;main.h,54 :: 		input += 244;
	MOVLW       244
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       0
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction2
L_correction1:
;main.h,55 :: 		else if (input <= 328)
	MOVLW       128
	XORLW       1
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction471
	MOVF        FARG_correction_input+0, 0 
	SUBLW       72
L__correction471:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction3
;main.h,56 :: 		input += 254;
	MOVLW       254
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       0
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction4
L_correction3:
;main.h,57 :: 		else if (input <= 582)
	MOVLW       128
	XORLW       2
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction472
	MOVF        FARG_correction_input+0, 0 
	SUBLW       70
L__correction472:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction5
;main.h,58 :: 		input += 280;
	MOVLW       24
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction6
L_correction5:
;main.h,59 :: 		else if (input <= 820)
	MOVLW       128
	XORLW       3
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction473
	MOVF        FARG_correction_input+0, 0 
	SUBLW       52
L__correction473:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction7
;main.h,60 :: 		input += 297;
	MOVLW       41
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction8
L_correction7:
;main.h,61 :: 		else if (input <= 1100)
	MOVLW       128
	XORLW       4
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction474
	MOVF        FARG_correction_input+0, 0 
	SUBLW       76
L__correction474:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction9
;main.h,62 :: 		input += 310;
	MOVLW       54
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction10
L_correction9:
;main.h,63 :: 		else if (input <= 2181)
	MOVLW       128
	XORLW       8
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction475
	MOVF        FARG_correction_input+0, 0 
	SUBLW       133
L__correction475:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction11
;main.h,64 :: 		input += 430;
	MOVLW       174
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction12
L_correction11:
;main.h,65 :: 		else if (input <= 3322)
	MOVLW       128
	XORLW       12
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction476
	MOVF        FARG_correction_input+0, 0 
	SUBLW       250
L__correction476:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction13
;main.h,66 :: 		input += 484;
	MOVLW       228
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction14
L_correction13:
;main.h,67 :: 		else if (input <= 4623)
	MOVLW       128
	XORLW       18
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction477
	MOVF        FARG_correction_input+0, 0 
	SUBLW       15
L__correction477:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction15
;main.h,68 :: 		input += 530;
	MOVLW       18
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       2
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction16
L_correction15:
;main.h,69 :: 		else if (input <= 5862)
	MOVLW       128
	XORLW       22
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction478
	MOVF        FARG_correction_input+0, 0 
	SUBLW       230
L__correction478:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction17
;main.h,70 :: 		input += 648;
	MOVLW       136
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       2
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction18
L_correction17:
;main.h,71 :: 		else if (input <= 7146)
	MOVLW       128
	XORLW       27
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction479
	MOVF        FARG_correction_input+0, 0 
	SUBLW       234
L__correction479:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction19
;main.h,72 :: 		input += 743;
	MOVLW       231
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       2
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction20
L_correction19:
;main.h,73 :: 		else if (input <= 8502)
	MOVLW       128
	XORLW       33
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction480
	MOVF        FARG_correction_input+0, 0 
	SUBLW       54
L__correction480:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction21
;main.h,74 :: 		input += 800;
	MOVLW       32
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       3
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction22
L_correction21:
;main.h,75 :: 		else if (input <= 10500)
	MOVLW       128
	XORLW       41
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction481
	MOVF        FARG_correction_input+0, 0 
	SUBLW       4
L__correction481:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction23
;main.h,76 :: 		input += 840;
	MOVLW       72
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       3
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction24
L_correction23:
;main.h,78 :: 		input += 860;
	MOVLW       92
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       3
	ADDWFC      FARG_correction_input+1, 1 
L_correction24:
L_correction22:
L_correction20:
L_correction18:
L_correction16:
L_correction14:
L_correction12:
L_correction10:
L_correction8:
L_correction6:
L_correction4:
L_correction2:
;main.h,80 :: 		return input;
	MOVF        FARG_correction_input+0, 0 
	MOVWF       R0 
	MOVF        FARG_correction_input+1, 0 
	MOVWF       R1 
;main.h,81 :: 		}
L_end_correction:
	RETURN      0
; end of _correction

_get_reverse:

;main.h,85 :: 		int get_reverse() {
;main.h,86 :: 		return ADC_Get_Sample(1) * 4.883; // zwraca napięcie w mV
	MOVLW       1
	MOVWF       FARG_ADC_Get_Sample_channel+0 
	CALL        _ADC_Get_Sample+0, 0
	CALL        _word2double+0, 0
	MOVLW       137
	MOVWF       R4 
	MOVLW       65
	MOVWF       R5 
	MOVLW       28
	MOVWF       R6 
	MOVLW       129
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
;main.h,87 :: 		}
L_end_get_reverse:
	RETURN      0
; end of _get_reverse

_get_forward:

;main.h,90 :: 		int get_forward() {
;main.h,92 :: 		Forward = ADC_Get_Sample(0);
	CLRF        FARG_ADC_Get_Sample_channel+0 
	CALL        _ADC_Get_Sample+0, 0
	MOVF        R0, 0 
	MOVWF       get_forward_Forward_L0+0 
	MOVF        R1, 0 
	MOVWF       get_forward_Forward_L0+1 
;main.h,93 :: 		if (Forward > 1000)
	MOVLW       128
	XORLW       3
	MOVWF       R2 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_forward484
	MOVF        R0, 0 
	SUBLW       232
L__get_forward484:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_forward25
;main.h,94 :: 		Overload = 1;
	MOVLW       1
	MOVWF       main_Overload+0 
	GOTO        L_get_forward26
L_get_forward25:
;main.h,96 :: 		Overload = 0;
	CLRF        main_Overload+0 
L_get_forward26:
;main.h,97 :: 		return Forward * 4.883; // zwraca napięcie w mV
	MOVF        get_forward_Forward_L0+0, 0 
	MOVWF       R0 
	MOVF        get_forward_Forward_L0+1, 0 
	MOVWF       R1 
	CALL        _int2double+0, 0
	MOVLW       137
	MOVWF       R4 
	MOVLW       65
	MOVWF       R5 
	MOVLW       28
	MOVWF       R6 
	MOVLW       129
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
;main.h,98 :: 		}
L_end_get_forward:
	RETURN      0
; end of _get_forward

_get_pwr:

;main.h,100 :: 		void get_pwr() {
;main.h,103 :: 		asm CLRWDT;
	CLRWDT
;main.h,105 :: 		Forward = get_forward();
	CALL        _get_forward+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_Forward_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_Forward_L0+1 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	MOVWF       get_pwr_Forward_L0+2 
	MOVWF       get_pwr_Forward_L0+3 
;main.h,106 :: 		Reverse = get_reverse();
	CALL        _get_reverse+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_Reverse_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_Reverse_L0+1 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	MOVWF       get_pwr_Reverse_L0+2 
	MOVWF       get_pwr_Reverse_L0+3 
;main.h,107 :: 		if (D_correction == 1)
	MOVF        main_D_correction+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_get_pwr27
;main.h,108 :: 		p = correction(Forward * 3);
	MOVF        get_pwr_Forward_L0+0, 0 
	MOVWF       R0 
	MOVF        get_pwr_Forward_L0+1, 0 
	MOVWF       R1 
	MOVLW       3
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Mul_16X16_U+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_correction_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_correction_input+1 
	CALL        _correction+0, 0
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
	GOTO        L_get_pwr28
L_get_pwr27:
;main.h,110 :: 		p = Forward * 3;
	MOVF        get_pwr_Forward_L0+0, 0 
	MOVWF       R0 
	MOVF        get_pwr_Forward_L0+1, 0 
	MOVWF       R1 
	MOVF        get_pwr_Forward_L0+2, 0 
	MOVWF       R2 
	MOVF        get_pwr_Forward_L0+3, 0 
	MOVWF       R3 
	MOVLW       3
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVWF       R6 
	MOVWF       R7 
	CALL        _Mul_32x32_U+0, 0
	CALL        _longint2double+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
L_get_pwr28:
;main.h,112 :: 		if (Reverse >= Forward)
	MOVLW       128
	XORWF       get_pwr_Reverse_L0+3, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       get_pwr_Forward_L0+3, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr486
	MOVF        get_pwr_Forward_L0+2, 0 
	SUBWF       get_pwr_Reverse_L0+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr486
	MOVF        get_pwr_Forward_L0+1, 0 
	SUBWF       get_pwr_Reverse_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr486
	MOVF        get_pwr_Forward_L0+0, 0 
	SUBWF       get_pwr_Reverse_L0+0, 0 
L__get_pwr486:
	BTFSS       STATUS+0, 0 
	GOTO        L_get_pwr29
;main.h,113 :: 		Forward = 999;
	MOVLW       231
	MOVWF       get_pwr_Forward_L0+0 
	MOVLW       3
	MOVWF       get_pwr_Forward_L0+1 
	MOVLW       0
	MOVWF       get_pwr_Forward_L0+2 
	MOVWF       get_pwr_Forward_L0+3 
	GOTO        L_get_pwr30
L_get_pwr29:
;main.h,115 :: 		Forward = ((Forward + Reverse) * 100) / (Forward - Reverse);
	MOVF        get_pwr_Reverse_L0+0, 0 
	ADDWF       get_pwr_Forward_L0+0, 0 
	MOVWF       R0 
	MOVF        get_pwr_Reverse_L0+1, 0 
	ADDWFC      get_pwr_Forward_L0+1, 0 
	MOVWF       R1 
	MOVF        get_pwr_Reverse_L0+2, 0 
	ADDWFC      get_pwr_Forward_L0+2, 0 
	MOVWF       R2 
	MOVF        get_pwr_Reverse_L0+3, 0 
	ADDWFC      get_pwr_Forward_L0+3, 0 
	MOVWF       R3 
	MOVLW       100
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVWF       R6 
	MOVWF       R7 
	CALL        _Mul_32x32_U+0, 0
	MOVF        get_pwr_Forward_L0+0, 0 
	MOVWF       R4 
	MOVF        get_pwr_Forward_L0+1, 0 
	MOVWF       R5 
	MOVF        get_pwr_Forward_L0+2, 0 
	MOVWF       R6 
	MOVF        get_pwr_Forward_L0+3, 0 
	MOVWF       R7 
	MOVF        get_pwr_Reverse_L0+0, 0 
	SUBWF       R4, 1 
	MOVF        get_pwr_Reverse_L0+1, 0 
	SUBWFB      R5, 1 
	MOVF        get_pwr_Reverse_L0+2, 0 
	SUBWFB      R6, 1 
	MOVF        get_pwr_Reverse_L0+3, 0 
	SUBWFB      R7, 1 
	CALL        _Div_32x32_S+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_Forward_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_Forward_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_Forward_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_Forward_L0+3 
;main.h,116 :: 		if (Forward > 999)
	MOVLW       128
	MOVWF       R4 
	MOVLW       128
	XORWF       R3, 0 
	SUBWF       R4, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr487
	MOVF        R2, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr487
	MOVF        R1, 0 
	SUBLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr487
	MOVF        R0, 0 
	SUBLW       231
L__get_pwr487:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_pwr31
;main.h,117 :: 		Forward = 999;
	MOVLW       231
	MOVWF       get_pwr_Forward_L0+0 
	MOVLW       3
	MOVWF       get_pwr_Forward_L0+1 
	MOVLW       0
	MOVWF       get_pwr_Forward_L0+2 
	MOVWF       get_pwr_Forward_L0+3 
L_get_pwr31:
;main.h,118 :: 		}
L_get_pwr30:
;main.h,120 :: 		p = p * K_Mult / 1000.0; // mV to Volts on Input
	MOVF        main_K_Mult+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        get_pwr_p_L0+0, 0 
	MOVWF       R4 
	MOVF        get_pwr_p_L0+1, 0 
	MOVWF       R5 
	MOVF        get_pwr_p_L0+2, 0 
	MOVWF       R6 
	MOVF        get_pwr_p_L0+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       122
	MOVWF       R6 
	MOVLW       136
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
;main.h,121 :: 		p = p / 1.414;
	MOVLW       244
	MOVWF       R4 
	MOVLW       253
	MOVWF       R5 
	MOVLW       52
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
;main.h,122 :: 		if (P_High == 1)
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_get_pwr32
;main.h,123 :: 		p = p * p / 50; // 0 - 1500 ( 1500 Watts)
	MOVF        get_pwr_p_L0+0, 0 
	MOVWF       R0 
	MOVF        get_pwr_p_L0+1, 0 
	MOVWF       R1 
	MOVF        get_pwr_p_L0+2, 0 
	MOVWF       R2 
	MOVF        get_pwr_p_L0+3, 0 
	MOVWF       R3 
	MOVF        get_pwr_p_L0+0, 0 
	MOVWF       R4 
	MOVF        get_pwr_p_L0+1, 0 
	MOVWF       R5 
	MOVF        get_pwr_p_L0+2, 0 
	MOVWF       R6 
	MOVF        get_pwr_p_L0+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       72
	MOVWF       R6 
	MOVLW       132
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
	GOTO        L_get_pwr33
L_get_pwr32:
;main.h,125 :: 		p = p * p / 5; // 0 - 1510 (151.0 Watts)
	MOVF        get_pwr_p_L0+0, 0 
	MOVWF       R0 
	MOVF        get_pwr_p_L0+1, 0 
	MOVWF       R1 
	MOVF        get_pwr_p_L0+2, 0 
	MOVWF       R2 
	MOVF        get_pwr_p_L0+3, 0 
	MOVWF       R3 
	MOVF        get_pwr_p_L0+0, 0 
	MOVWF       R4 
	MOVF        get_pwr_p_L0+1, 0 
	MOVWF       R5 
	MOVF        get_pwr_p_L0+2, 0 
	MOVWF       R6 
	MOVF        get_pwr_p_L0+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       32
	MOVWF       R6 
	MOVLW       129
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
L_get_pwr33:
;main.h,126 :: 		p = p + 0.5; // rounding to 0.1 W
	MOVF        get_pwr_p_L0+0, 0 
	MOVWF       R0 
	MOVF        get_pwr_p_L0+1, 0 
	MOVWF       R1 
	MOVF        get_pwr_p_L0+2, 0 
	MOVWF       R2 
	MOVF        get_pwr_p_L0+3, 0 
	MOVWF       R3 
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       126
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       get_pwr_p_L0+0 
	MOVF        R1, 0 
	MOVWF       get_pwr_p_L0+1 
	MOVF        R2, 0 
	MOVWF       get_pwr_p_L0+2 
	MOVF        R3, 0 
	MOVWF       get_pwr_p_L0+3 
;main.h,128 :: 		PWR = p;
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _PWR+0 
	MOVF        R1, 0 
	MOVWF       _PWR+1 
;main.h,129 :: 		if (PWR < 10)
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr488
	MOVLW       10
	SUBWF       R0, 0 
L__get_pwr488:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_pwr34
;main.h,130 :: 		SWR = 1;
	MOVLW       1
	MOVWF       _SWR+0 
	MOVLW       0
	MOVWF       _SWR+1 
	GOTO        L_get_pwr35
L_get_pwr34:
;main.h,131 :: 		else if (Forward < 100)
	MOVLW       128
	XORWF       get_pwr_Forward_L0+3, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr489
	MOVLW       0
	SUBWF       get_pwr_Forward_L0+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr489
	MOVLW       0
	SUBWF       get_pwr_Forward_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr489
	MOVLW       100
	SUBWF       get_pwr_Forward_L0+0, 0 
L__get_pwr489:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_pwr36
;main.h,132 :: 		SWR = 999;
	MOVLW       231
	MOVWF       _SWR+0 
	MOVLW       3
	MOVWF       _SWR+1 
	GOTO        L_get_pwr37
L_get_pwr36:
;main.h,134 :: 		SWR = Forward;
	MOVF        get_pwr_Forward_L0+0, 0 
	MOVWF       _SWR+0 
	MOVF        get_pwr_Forward_L0+1, 0 
	MOVWF       _SWR+1 
L_get_pwr37:
L_get_pwr35:
;main.h,135 :: 		return;
;main.h,136 :: 		}
L_end_get_pwr:
	RETURN      0
; end of _get_pwr

_get_swr:

;main.h,138 :: 		void get_swr() {
;main.h,139 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.h,140 :: 		if (p_cnt != 100)
	MOVF        _p_cnt+0, 0 
	XORLW       100
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr38
;main.h,142 :: 		p_cnt += 1;
	INCF        _p_cnt+0, 1 
;main.h,143 :: 		if (PWR > P_max)
	MOVLW       128
	XORWF       _P_max+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr491
	MOVF        _PWR+0, 0 
	SUBWF       _P_max+0, 0 
L__get_swr491:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_swr39
;main.h,144 :: 		P_max = PWR;
	MOVF        _PWR+0, 0 
	MOVWF       _P_max+0 
	MOVF        _PWR+1, 0 
	MOVWF       _P_max+1 
L_get_swr39:
;main.h,145 :: 		}
	GOTO        L_get_swr40
L_get_swr38:
;main.h,148 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,149 :: 		show_pwr(P_max, SWR); // raz na 100 pomiarów pokazuje maksymalną wartość mocy
	MOVF        _P_max+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _P_max+1, 0 
	MOVWF       FARG_show_pwr+1 
	MOVF        _SWR+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _SWR+1, 0 
	MOVWF       FARG_show_pwr+1 
	CALL        _show_pwr+0, 0
;main.h,150 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,151 :: 		}
L_get_swr40:
;main.h,152 :: 		while (PWR < min_for_start | (PWR > max_for_start & max_for_start > 0))
L_get_swr41:
	MOVLW       128
	XORWF       _PWR+1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       main_min_for_start+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr492
	MOVF        main_min_for_start+0, 0 
	SUBWF       _PWR+0, 0 
L__get_swr492:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R2 
	MOVLW       128
	XORWF       main_max_for_start+1, 0 
	MOVWF       R1 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr493
	MOVF        _PWR+0, 0 
	SUBWF       main_max_for_start+0, 0 
L__get_swr493:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       main_max_for_start+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr494
	MOVF        main_max_for_start+0, 0 
	SUBLW       0
L__get_swr494:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	MOVF        R2, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr42
;main.h,154 :: 		asm CLRWDT;
	CLRWDT
;main.h,155 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.h,156 :: 		if (p_cnt != 100)
	MOVF        _p_cnt+0, 0 
	XORLW       100
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr43
;main.h,158 :: 		p_cnt += 1;
	INCF        _p_cnt+0, 1 
;main.h,159 :: 		if (PWR > P_max)
	MOVLW       128
	XORWF       _P_max+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr495
	MOVF        _PWR+0, 0 
	SUBWF       _P_max+0, 0 
L__get_swr495:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_swr44
;main.h,160 :: 		P_max = PWR;
	MOVF        _PWR+0, 0 
	MOVWF       _P_max+0 
	MOVF        _PWR+1, 0 
	MOVWF       _P_max+1 
L_get_swr44:
;main.h,161 :: 		}
	GOTO        L_get_swr45
L_get_swr43:
;main.h,164 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,165 :: 		show_pwr(P_max, SWR);
	MOVF        _P_max+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _P_max+1, 0 
	MOVWF       FARG_show_pwr+1 
	MOVF        _SWR+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _SWR+1, 0 
	MOVWF       FARG_show_pwr+1 
	CALL        _show_pwr+0, 0
;main.h,166 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,167 :: 		}
L_get_swr45:
;main.h,169 :: 		if (Button( & PORTB, 0, 5, 1))
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       5
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr46
;main.h,170 :: 		rready = 1;
	MOVLW       1
	MOVWF       _rready+0 
L_get_swr46:
;main.h,171 :: 		if (rready == 1 & Button( & PORTB, 0, 5, 0))
	MOVF        _rready+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       FLOC__get_swr+0 
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       5
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        FLOC__get_swr+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr47
;main.h,173 :: 		show_reset();
	CALL        _show_reset+0, 0
;main.h,174 :: 		SWR = 0;	// wskaźnik przerwania oczekiwania na właściwą moc - reset
	CLRF        _SWR+0 
	CLRF        _SWR+1 
;main.h,175 :: 		return;
	GOTO        L_end_get_swr
;main.h,176 :: 		}
L_get_swr47:
;main.h,177 :: 		} //  good power
	GOTO        L_get_swr41
L_get_swr42:
;main.h,178 :: 		return;
;main.h,179 :: 		}
L_end_get_swr:
	RETURN      0
; end of _get_swr

_set_ind:

;main.h,181 :: 		void set_ind(char Ind) { // 0 - 31
;main.h,182 :: 		if (L_invert == 0) {
	MOVF        main_L_invert+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_set_ind48
;main.h,183 :: 		Ind_005 = Ind.B0;
	BTFSC       FARG_set_ind_Ind+0, 0 
	GOTO        L__set_ind497
	BCF         LATB3_bit+0, BitPos(LATB3_bit+0) 
	GOTO        L__set_ind498
L__set_ind497:
	BSF         LATB3_bit+0, BitPos(LATB3_bit+0) 
L__set_ind498:
;main.h,184 :: 		Ind_011 = Ind.B1;
	BTFSC       FARG_set_ind_Ind+0, 1 
	GOTO        L__set_ind499
	BCF         LATA2_bit+0, BitPos(LATA2_bit+0) 
	GOTO        L__set_ind500
L__set_ind499:
	BSF         LATA2_bit+0, BitPos(LATA2_bit+0) 
L__set_ind500:
;main.h,185 :: 		Ind_022 = Ind.B2;
	BTFSC       FARG_set_ind_Ind+0, 2 
	GOTO        L__set_ind501
	BCF         LATB4_bit+0, BitPos(LATB4_bit+0) 
	GOTO        L__set_ind502
L__set_ind501:
	BSF         LATB4_bit+0, BitPos(LATB4_bit+0) 
L__set_ind502:
;main.h,186 :: 		Ind_045 = Ind.B3;
	BTFSC       FARG_set_ind_Ind+0, 3 
	GOTO        L__set_ind503
	BCF         LATA3_bit+0, BitPos(LATA3_bit+0) 
	GOTO        L__set_ind504
L__set_ind503:
	BSF         LATA3_bit+0, BitPos(LATA3_bit+0) 
L__set_ind504:
;main.h,187 :: 		Ind_1 = Ind.B4;
	BTFSC       FARG_set_ind_Ind+0, 4 
	GOTO        L__set_ind505
	BCF         LATB5_bit+0, BitPos(LATB5_bit+0) 
	GOTO        L__set_ind506
L__set_ind505:
	BSF         LATB5_bit+0, BitPos(LATB5_bit+0) 
L__set_ind506:
;main.h,188 :: 		Ind_22 = Ind.B5;
	BTFSC       FARG_set_ind_Ind+0, 5 
	GOTO        L__set_ind507
	BCF         LATA5_bit+0, BitPos(LATA5_bit+0) 
	GOTO        L__set_ind508
L__set_ind507:
	BSF         LATA5_bit+0, BitPos(LATA5_bit+0) 
L__set_ind508:
;main.h,189 :: 		Ind_45 = Ind.B6;
	BTFSC       FARG_set_ind_Ind+0, 6 
	GOTO        L__set_ind509
	BCF         LATA4_bit+0, BitPos(LATA4_bit+0) 
	GOTO        L__set_ind510
L__set_ind509:
	BSF         LATA4_bit+0, BitPos(LATA4_bit+0) 
L__set_ind510:
;main.h,191 :: 		} else {
	GOTO        L_set_ind49
L_set_ind48:
;main.h,192 :: 		Ind_005 = ~Ind.B0;
	BTFSC       FARG_set_ind_Ind+0, 0 
	GOTO        L__set_ind511
	BSF         LATB3_bit+0, BitPos(LATB3_bit+0) 
	GOTO        L__set_ind512
L__set_ind511:
	BCF         LATB3_bit+0, BitPos(LATB3_bit+0) 
L__set_ind512:
;main.h,193 :: 		Ind_011 = ~Ind.B1;
	BTFSC       FARG_set_ind_Ind+0, 1 
	GOTO        L__set_ind513
	BSF         LATA2_bit+0, BitPos(LATA2_bit+0) 
	GOTO        L__set_ind514
L__set_ind513:
	BCF         LATA2_bit+0, BitPos(LATA2_bit+0) 
L__set_ind514:
;main.h,194 :: 		Ind_022 = ~Ind.B2;
	BTFSC       FARG_set_ind_Ind+0, 2 
	GOTO        L__set_ind515
	BSF         LATB4_bit+0, BitPos(LATB4_bit+0) 
	GOTO        L__set_ind516
L__set_ind515:
	BCF         LATB4_bit+0, BitPos(LATB4_bit+0) 
L__set_ind516:
;main.h,195 :: 		Ind_045 = ~Ind.B3;
	BTFSC       FARG_set_ind_Ind+0, 3 
	GOTO        L__set_ind517
	BSF         LATA3_bit+0, BitPos(LATA3_bit+0) 
	GOTO        L__set_ind518
L__set_ind517:
	BCF         LATA3_bit+0, BitPos(LATA3_bit+0) 
L__set_ind518:
;main.h,196 :: 		Ind_1 = ~Ind.B4;
	BTFSC       FARG_set_ind_Ind+0, 4 
	GOTO        L__set_ind519
	BSF         LATB5_bit+0, BitPos(LATB5_bit+0) 
	GOTO        L__set_ind520
L__set_ind519:
	BCF         LATB5_bit+0, BitPos(LATB5_bit+0) 
L__set_ind520:
;main.h,197 :: 		Ind_22 = ~Ind.B5;
	BTFSC       FARG_set_ind_Ind+0, 5 
	GOTO        L__set_ind521
	BSF         LATA5_bit+0, BitPos(LATA5_bit+0) 
	GOTO        L__set_ind522
L__set_ind521:
	BCF         LATA5_bit+0, BitPos(LATA5_bit+0) 
L__set_ind522:
;main.h,198 :: 		Ind_45 = ~Ind.B6;
	BTFSC       FARG_set_ind_Ind+0, 6 
	GOTO        L__set_ind523
	BSF         LATA4_bit+0, BitPos(LATA4_bit+0) 
	GOTO        L__set_ind524
L__set_ind523:
	BCF         LATA4_bit+0, BitPos(LATA4_bit+0) 
L__set_ind524:
;main.h,200 :: 		}
L_set_ind49:
;main.h,201 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,202 :: 		}
L_end_set_ind:
	RETURN      0
; end of _set_ind

_set_cap:

;main.h,204 :: 		void set_cap(char Cap) { // 0 - 31
;main.h,205 :: 		Cap_10 = Cap.B0;
	BTFSC       FARG_set_cap_Cap+0, 0 
	GOTO        L__set_cap526
	BCF         LATC7_bit+0, BitPos(LATC7_bit+0) 
	GOTO        L__set_cap527
L__set_cap526:
	BSF         LATC7_bit+0, BitPos(LATC7_bit+0) 
L__set_cap527:
;main.h,206 :: 		Cap_22 = Cap.B1;
	BTFSC       FARG_set_cap_Cap+0, 1 
	GOTO        L__set_cap528
	BCF         LATC3_bit+0, BitPos(LATC3_bit+0) 
	GOTO        L__set_cap529
L__set_cap528:
	BSF         LATC3_bit+0, BitPos(LATC3_bit+0) 
L__set_cap529:
;main.h,207 :: 		Cap_47 = Cap.B2;
	BTFSC       FARG_set_cap_Cap+0, 2 
	GOTO        L__set_cap530
	BCF         LATC6_bit+0, BitPos(LATC6_bit+0) 
	GOTO        L__set_cap531
L__set_cap530:
	BSF         LATC6_bit+0, BitPos(LATC6_bit+0) 
L__set_cap531:
;main.h,208 :: 		Cap_100 = Cap.B3;
	BTFSC       FARG_set_cap_Cap+0, 3 
	GOTO        L__set_cap532
	BCF         LATC2_bit+0, BitPos(LATC2_bit+0) 
	GOTO        L__set_cap533
L__set_cap532:
	BSF         LATC2_bit+0, BitPos(LATC2_bit+0) 
L__set_cap533:
;main.h,209 :: 		Cap_220 = Cap.B4;
	BTFSC       FARG_set_cap_Cap+0, 4 
	GOTO        L__set_cap534
	BCF         LATC5_bit+0, BitPos(LATC5_bit+0) 
	GOTO        L__set_cap535
L__set_cap534:
	BSF         LATC5_bit+0, BitPos(LATC5_bit+0) 
L__set_cap535:
;main.h,210 :: 		Cap_470 = Cap.B5;
	BTFSC       FARG_set_cap_Cap+0, 5 
	GOTO        L__set_cap536
	BCF         LATC1_bit+0, BitPos(LATC1_bit+0) 
	GOTO        L__set_cap537
L__set_cap536:
	BSF         LATC1_bit+0, BitPos(LATC1_bit+0) 
L__set_cap537:
;main.h,211 :: 		Cap_1000 = Cap.B6;
	BTFSC       FARG_set_cap_Cap+0, 6 
	GOTO        L__set_cap538
	BCF         LATC4_bit+0, BitPos(LATC4_bit+0) 
	GOTO        L__set_cap539
L__set_cap538:
	BSF         LATC4_bit+0, BitPos(LATC4_bit+0) 
L__set_cap539:
;main.h,212 :: 		Cap_1820 = Cap.B7;
	BTFSC       FARG_set_cap_Cap+0, 7 
	GOTO        L__set_cap540
	BCF         LATA7_bit+0, BitPos(LATA7_bit+0) 
	GOTO        L__set_cap541
L__set_cap540:
	BSF         LATA7_bit+0, BitPos(LATA7_bit+0) 
L__set_cap541:
;main.h,224 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,225 :: 		}
L_end_set_cap:
	RETURN      0
; end of _set_cap

_set_sw:

;main.h,227 :: 		void set_sw(char SW) { // 0 - IN,  1 - OUT
;main.h,228 :: 		Cap_sw = SW;
	BTFSC       FARG_set_sw_SW+0, 0 
	GOTO        L__set_sw543
	BCF         LATC0_bit+0, BitPos(LATC0_bit+0) 
	GOTO        L__set_sw544
L__set_sw543:
	BSF         LATC0_bit+0, BitPos(LATC0_bit+0) 
L__set_sw544:
;main.h,229 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,230 :: 		}
L_end_set_sw:
	RETURN      0
; end of _set_sw

_atu_reset:

;main.h,232 :: 		void atu_reset() {
;main.h,233 :: 		ind = 0;
	CLRF        main_ind+0 
;main.h,234 :: 		cap = 0;
	CLRF        main_cap+0 
;main.h,235 :: 		set_ind(ind);
	CLRF        FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,236 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,237 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,238 :: 		}
L_end_atu_reset:
	RETURN      0
; end of _atu_reset

_coarse_cap:

;main.h,240 :: 		void coarse_cap() {
;main.h,241 :: 		char step = 3;
	MOVLW       3
	MOVWF       coarse_cap_step_L0+0 
;main.h,245 :: 		cap = 0;
	CLRF        main_cap+0 
;main.h,246 :: 		set_cap(cap);
	CLRF        FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,247 :: 		step_cap = step;
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,248 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,249 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap547
	MOVLW       0
	XORWF       _SWR+0, 0 
L__coarse_cap547:
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_cap50
;main.h,250 :: 		return;
	GOTO        L_end_coarse_cap
L_coarse_cap50:
;main.h,251 :: 		min_swr = SWR + SWR / 20;
	MOVLW       20
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _SWR+0, 0 
	MOVWF       R0 
	MOVF        _SWR+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	ADDWF       _SWR+0, 0 
	MOVWF       coarse_cap_min_swr_L0+0 
	MOVF        R1, 0 
	ADDWFC      _SWR+1, 0 
	MOVWF       coarse_cap_min_swr_L0+1 
;main.h,252 :: 		for (count = step; count <= 31;) {
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       coarse_cap_count_L0+0 
L_coarse_cap51:
	MOVF        coarse_cap_count_L0+0, 0 
	SUBLW       31
	BTFSS       STATUS+0, 0 
	GOTO        L_coarse_cap52
;main.h,253 :: 		set_cap(count * C_mult);
	MOVF        coarse_cap_count_L0+0, 0 
	MULWF       main_C_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,254 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,255 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap548
	MOVLW       0
	XORWF       _SWR+0, 0 
L__coarse_cap548:
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_cap54
;main.h,256 :: 		return;
	GOTO        L_end_coarse_cap
L_coarse_cap54:
;main.h,257 :: 		if (SWR < min_swr) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       coarse_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap549
	MOVF        coarse_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__coarse_cap549:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_cap55
;main.h,258 :: 		min_swr = SWR + SWR / 20;
	MOVLW       20
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _SWR+0, 0 
	MOVWF       R0 
	MOVF        _SWR+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	ADDWF       _SWR+0, 0 
	MOVWF       coarse_cap_min_swr_L0+0 
	MOVF        R1, 0 
	ADDWFC      _SWR+1, 0 
	MOVWF       coarse_cap_min_swr_L0+1 
;main.h,259 :: 		cap = count * C_mult;
	MOVF        coarse_cap_count_L0+0, 0 
	MULWF       main_C_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       main_cap+0 
;main.h,260 :: 		step_cap = step;
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,261 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap550
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__coarse_cap550:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_cap56
;main.h,262 :: 		break;
	GOTO        L_coarse_cap52
L_coarse_cap56:
;main.h,263 :: 		count += step;
	MOVF        coarse_cap_step_L0+0, 0 
	ADDWF       coarse_cap_count_L0+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       coarse_cap_count_L0+0 
;main.h,264 :: 		if (C_linear == 0 & count == 9)
	MOVF        main_C_linear+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
	XORLW       9
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_coarse_cap57
;main.h,265 :: 		count = 8;
	MOVLW       8
	MOVWF       coarse_cap_count_L0+0 
	GOTO        L_coarse_cap58
L_coarse_cap57:
;main.h,266 :: 		else if (C_linear == 0 & count == 17) {
	MOVF        main_C_linear+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        coarse_cap_count_L0+0, 0 
	XORLW       17
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_coarse_cap59
;main.h,267 :: 		count = 16;
	MOVLW       16
	MOVWF       coarse_cap_count_L0+0 
;main.h,268 :: 		step = 4;
	MOVLW       4
	MOVWF       coarse_cap_step_L0+0 
;main.h,269 :: 		}
L_coarse_cap59:
L_coarse_cap58:
;main.h,270 :: 		} else
	GOTO        L_coarse_cap60
L_coarse_cap55:
;main.h,271 :: 		break;
	GOTO        L_coarse_cap52
L_coarse_cap60:
;main.h,272 :: 		}
	GOTO        L_coarse_cap51
L_coarse_cap52:
;main.h,273 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,274 :: 		return;
;main.h,275 :: 		}
L_end_coarse_cap:
	RETURN      0
; end of _coarse_cap

_coarse_tune:

;main.h,277 :: 		void coarse_tune() {
;main.h,278 :: 		char step = 3;
	MOVLW       3
	MOVWF       coarse_tune_step_L0+0 
;main.h,283 :: 		mem_cap = 0;
	CLRF        coarse_tune_mem_cap_L0+0 
;main.h,284 :: 		step_ind = step;
	MOVF        coarse_tune_step_L0+0, 0 
	MOVWF       main_step_ind+0 
;main.h,285 :: 		mem_step_cap = 3;
	MOVLW       3
	MOVWF       coarse_tune_mem_step_cap_L0+0 
;main.h,286 :: 		min_swr = SWR + SWR / 20;
	MOVLW       20
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _SWR+0, 0 
	MOVWF       R0 
	MOVF        _SWR+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	ADDWF       _SWR+0, 0 
	MOVWF       coarse_tune_min_swr_L0+0 
	MOVF        R1, 0 
	ADDWFC      _SWR+1, 0 
	MOVWF       coarse_tune_min_swr_L0+1 
;main.h,287 :: 		for (count = 0; count <= 31;) {
	CLRF        coarse_tune_count_L0+0 
L_coarse_tune61:
	MOVF        coarse_tune_count_L0+0, 0 
	SUBLW       31
	BTFSS       STATUS+0, 0 
	GOTO        L_coarse_tune62
;main.h,288 :: 		set_ind(count * L_mult);
	MOVF        coarse_tune_count_L0+0, 0 
	MULWF       main_L_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,289 :: 		coarse_cap();
	CALL        _coarse_cap+0, 0
;main.h,290 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,291 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune552
	MOVLW       0
	XORWF       _SWR+0, 0 
L__coarse_tune552:
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_tune64
;main.h,292 :: 		return;
	GOTO        L_end_coarse_tune
L_coarse_tune64:
;main.h,293 :: 		if (SWR < min_swr) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       coarse_tune_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune553
	MOVF        coarse_tune_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__coarse_tune553:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_tune65
;main.h,294 :: 		min_swr = SWR + SWR / 20;
	MOVLW       20
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _SWR+0, 0 
	MOVWF       R0 
	MOVF        _SWR+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	ADDWF       _SWR+0, 0 
	MOVWF       coarse_tune_min_swr_L0+0 
	MOVF        R1, 0 
	ADDWFC      _SWR+1, 0 
	MOVWF       coarse_tune_min_swr_L0+1 
;main.h,295 :: 		ind = count * L_mult;
	MOVF        coarse_tune_count_L0+0, 0 
	MULWF       main_L_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       main_ind+0 
;main.h,296 :: 		mem_cap = cap;
	MOVF        main_cap+0, 0 
	MOVWF       coarse_tune_mem_cap_L0+0 
;main.h,297 :: 		step_ind = step;
	MOVF        coarse_tune_step_L0+0, 0 
	MOVWF       main_step_ind+0 
;main.h,298 :: 		mem_step_cap = step_cap;
	MOVF        main_step_cap+0, 0 
	MOVWF       coarse_tune_mem_step_cap_L0+0 
;main.h,299 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune554
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__coarse_tune554:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_tune66
;main.h,300 :: 		break;
	GOTO        L_coarse_tune62
L_coarse_tune66:
;main.h,301 :: 		count += step;
	MOVF        coarse_tune_step_L0+0, 0 
	ADDWF       coarse_tune_count_L0+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       coarse_tune_count_L0+0 
;main.h,302 :: 		if (L_linear == 0 & count == 9)
	MOVF        main_L_linear+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
	XORLW       9
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_coarse_tune67
;main.h,303 :: 		count = 8;
	MOVLW       8
	MOVWF       coarse_tune_count_L0+0 
	GOTO        L_coarse_tune68
L_coarse_tune67:
;main.h,304 :: 		else if (L_linear == 0 & count == 17) {
	MOVF        main_L_linear+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        coarse_tune_count_L0+0, 0 
	XORLW       17
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_coarse_tune69
;main.h,305 :: 		count = 16;
	MOVLW       16
	MOVWF       coarse_tune_count_L0+0 
;main.h,306 :: 		step = 4;
	MOVLW       4
	MOVWF       coarse_tune_step_L0+0 
;main.h,307 :: 		}
L_coarse_tune69:
L_coarse_tune68:
;main.h,308 :: 		} else
	GOTO        L_coarse_tune70
L_coarse_tune65:
;main.h,309 :: 		break;
	GOTO        L_coarse_tune62
L_coarse_tune70:
;main.h,310 :: 		}
	GOTO        L_coarse_tune61
L_coarse_tune62:
;main.h,311 :: 		cap = mem_cap;
	MOVF        coarse_tune_mem_cap_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,312 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,313 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,314 :: 		step_cap = mem_step_cap;
	MOVF        coarse_tune_mem_step_cap_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,315 :: 		Delay_ms(10);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_coarse_tune71:
	DECFSZ      R13, 1, 1
	BRA         L_coarse_tune71
	DECFSZ      R12, 1, 1
	BRA         L_coarse_tune71
	NOP
	NOP
;main.h,316 :: 		return;
;main.h,317 :: 		}
L_end_coarse_tune:
	RETURN      0
; end of _coarse_tune

_sharp_cap:

;main.h,319 :: 		void sharp_cap()
;main.h,323 :: 		range = step_cap * C_mult;
	MOVF        main_step_cap+0, 0 
	MULWF       main_C_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       sharp_cap_range_L0+0 
;main.h,325 :: 		max_range = cap + range;
	MOVF        R0, 0 
	ADDWF       main_cap+0, 0 
	MOVWF       R4 
	MOVF        R4, 0 
	MOVWF       sharp_cap_max_range_L0+0 
;main.h,326 :: 		if (max_range > 32 * C_mult - 1)
	MOVLW       5
	MOVWF       R2 
	MOVF        main_C_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__sharp_cap556:
	BZ          L__sharp_cap557
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__sharp_cap556
L__sharp_cap557:
	MOVLW       1
	SUBWF       R0, 0 
	MOVWF       R2 
	MOVLW       0
	SUBWFB      R1, 0 
	MOVWF       R3 
	MOVLW       128
	XORWF       R3, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap558
	MOVF        R4, 0 
	SUBWF       R2, 0 
L__sharp_cap558:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap72
;main.h,327 :: 		max_range = 32 * C_mult - 1;
	MOVLW       5
	MOVWF       R0 
	MOVF        main_C_mult+0, 0 
	MOVWF       sharp_cap_max_range_L0+0 
	MOVF        R0, 0 
L__sharp_cap559:
	BZ          L__sharp_cap560
	RLCF        sharp_cap_max_range_L0+0, 1 
	BCF         sharp_cap_max_range_L0+0, 0 
	ADDLW       255
	GOTO        L__sharp_cap559
L__sharp_cap560:
	DECF        sharp_cap_max_range_L0+0, 1 
L_sharp_cap72:
;main.h,328 :: 		if (cap > range)
	MOVF        main_cap+0, 0 
	SUBWF       sharp_cap_range_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap73
;main.h,329 :: 		min_range = cap - range;
	MOVF        sharp_cap_range_L0+0, 0 
	SUBWF       main_cap+0, 0 
	MOVWF       sharp_cap_min_range_L0+0 
	GOTO        L_sharp_cap74
L_sharp_cap73:
;main.h,331 :: 		min_range = 0;
	CLRF        sharp_cap_min_range_L0+0 
L_sharp_cap74:
;main.h,332 :: 		cap = min_range;
	MOVF        sharp_cap_min_range_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,333 :: 		set_cap(cap);
	MOVF        sharp_cap_min_range_L0+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,334 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,335 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap561
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_cap561:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_cap75
;main.h,336 :: 		return;
	GOTO        L_end_sharp_cap
L_sharp_cap75:
;main.h,337 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_cap_min_swr_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_cap_min_swr_L0+1 
;main.h,338 :: 		for (count = min_range + C_mult; count <= max_range; count += C_mult) {
	MOVF        main_C_mult+0, 0 
	ADDWF       sharp_cap_min_range_L0+0, 0 
	MOVWF       sharp_cap_count_L0+0 
L_sharp_cap76:
	MOVF        sharp_cap_count_L0+0, 0 
	SUBWF       sharp_cap_max_range_L0+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_cap77
;main.h,339 :: 		set_cap(count);
	MOVF        sharp_cap_count_L0+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,340 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,341 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap562
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_cap562:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_cap79
;main.h,342 :: 		return;
	GOTO        L_end_sharp_cap
L_sharp_cap79:
;main.h,343 :: 		if (SWR >= min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap563
	MOVF        sharp_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_cap563:
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_cap80
;main.h,344 :: 		Delay_ms(10);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_sharp_cap81:
	DECFSZ      R13, 1, 1
	BRA         L_sharp_cap81
	DECFSZ      R12, 1, 1
	BRA         L_sharp_cap81
	NOP
	NOP
;main.h,345 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,346 :: 		}
L_sharp_cap80:
;main.h,347 :: 		if (SWR >= min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap564
	MOVF        sharp_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_cap564:
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_cap82
;main.h,348 :: 		Delay_ms(10);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_sharp_cap83:
	DECFSZ      R13, 1, 1
	BRA         L_sharp_cap83
	DECFSZ      R12, 1, 1
	BRA         L_sharp_cap83
	NOP
	NOP
;main.h,349 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,350 :: 		}
L_sharp_cap82:
;main.h,351 :: 		if (SWR < min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap565
	MOVF        sharp_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_cap565:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap84
;main.h,352 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_cap_min_swr_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_cap_min_swr_L0+1 
;main.h,353 :: 		cap = count;
	MOVF        sharp_cap_count_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,354 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap566
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sharp_cap566:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap85
;main.h,355 :: 		break;
	GOTO        L_sharp_cap77
L_sharp_cap85:
;main.h,356 :: 		} else
	GOTO        L_sharp_cap86
L_sharp_cap84:
;main.h,357 :: 		break;
	GOTO        L_sharp_cap77
L_sharp_cap86:
;main.h,338 :: 		for (count = min_range + C_mult; count <= max_range; count += C_mult) {
	MOVF        main_C_mult+0, 0 
	ADDWF       sharp_cap_count_L0+0, 1 
;main.h,358 :: 		}
	GOTO        L_sharp_cap76
L_sharp_cap77:
;main.h,359 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,360 :: 		return;
;main.h,361 :: 		}
L_end_sharp_cap:
	RETURN      0
; end of _sharp_cap

_sharp_ind:

;main.h,363 :: 		void sharp_ind()
;main.h,367 :: 		range = step_ind * L_mult;
	MOVF        main_step_ind+0, 0 
	MULWF       main_L_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       sharp_ind_range_L0+0 
;main.h,369 :: 		max_range = ind + range;
	MOVF        R0, 0 
	ADDWF       main_ind+0, 0 
	MOVWF       R4 
	MOVF        R4, 0 
	MOVWF       sharp_ind_max_range_L0+0 
;main.h,370 :: 		if (max_range > 32 * L_mult - 1)
	MOVLW       5
	MOVWF       R2 
	MOVF        main_L_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__sharp_ind568:
	BZ          L__sharp_ind569
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__sharp_ind568
L__sharp_ind569:
	MOVLW       1
	SUBWF       R0, 0 
	MOVWF       R2 
	MOVLW       0
	SUBWFB      R1, 0 
	MOVWF       R3 
	MOVLW       128
	XORWF       R3, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind570
	MOVF        R4, 0 
	SUBWF       R2, 0 
L__sharp_ind570:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind87
;main.h,371 :: 		max_range = 32 * L_mult - 1;
	MOVLW       5
	MOVWF       R0 
	MOVF        main_L_mult+0, 0 
	MOVWF       sharp_ind_max_range_L0+0 
	MOVF        R0, 0 
L__sharp_ind571:
	BZ          L__sharp_ind572
	RLCF        sharp_ind_max_range_L0+0, 1 
	BCF         sharp_ind_max_range_L0+0, 0 
	ADDLW       255
	GOTO        L__sharp_ind571
L__sharp_ind572:
	DECF        sharp_ind_max_range_L0+0, 1 
L_sharp_ind87:
;main.h,372 :: 		if (ind > range)
	MOVF        main_ind+0, 0 
	SUBWF       sharp_ind_range_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind88
;main.h,373 :: 		min_range = ind - range;
	MOVF        sharp_ind_range_L0+0, 0 
	SUBWF       main_ind+0, 0 
	MOVWF       sharp_ind_min_range_L0+0 
	GOTO        L_sharp_ind89
L_sharp_ind88:
;main.h,375 :: 		min_range = 0;
	CLRF        sharp_ind_min_range_L0+0 
L_sharp_ind89:
;main.h,376 :: 		ind = min_range;
	MOVF        sharp_ind_min_range_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,377 :: 		set_ind(ind);
	MOVF        sharp_ind_min_range_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,378 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,379 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind573
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_ind573:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_ind90
;main.h,380 :: 		return;
	GOTO        L_end_sharp_ind
L_sharp_ind90:
;main.h,381 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_ind_min_SWR_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_ind_min_SWR_L0+1 
;main.h,382 :: 		for (count = min_range + L_mult; count <= max_range; count += L_mult) {
	MOVF        main_L_mult+0, 0 
	ADDWF       sharp_ind_min_range_L0+0, 0 
	MOVWF       sharp_ind_count_L0+0 
L_sharp_ind91:
	MOVF        sharp_ind_count_L0+0, 0 
	SUBWF       sharp_ind_max_range_L0+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_ind92
;main.h,383 :: 		set_ind(count);
	MOVF        sharp_ind_count_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,384 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,385 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind574
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_ind574:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_ind94
;main.h,386 :: 		return;
	GOTO        L_end_sharp_ind
L_sharp_ind94:
;main.h,387 :: 		if (SWR >= min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_ind_min_SWR_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind575
	MOVF        sharp_ind_min_SWR_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_ind575:
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_ind95
;main.h,388 :: 		Delay_ms(10);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_sharp_ind96:
	DECFSZ      R13, 1, 1
	BRA         L_sharp_ind96
	DECFSZ      R12, 1, 1
	BRA         L_sharp_ind96
	NOP
	NOP
;main.h,389 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,390 :: 		}
L_sharp_ind95:
;main.h,391 :: 		if (SWR >= min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_ind_min_SWR_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind576
	MOVF        sharp_ind_min_SWR_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_ind576:
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_ind97
;main.h,392 :: 		Delay_ms(10);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_sharp_ind98:
	DECFSZ      R13, 1, 1
	BRA         L_sharp_ind98
	DECFSZ      R12, 1, 1
	BRA         L_sharp_ind98
	NOP
	NOP
;main.h,393 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,394 :: 		}
L_sharp_ind97:
;main.h,395 :: 		if (SWR < min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_ind_min_SWR_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind577
	MOVF        sharp_ind_min_SWR_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_ind577:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind99
;main.h,396 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_ind_min_SWR_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_ind_min_SWR_L0+1 
;main.h,397 :: 		ind = count;
	MOVF        sharp_ind_count_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,398 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind578
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sharp_ind578:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind100
;main.h,399 :: 		break;
	GOTO        L_sharp_ind92
L_sharp_ind100:
;main.h,400 :: 		} else
	GOTO        L_sharp_ind101
L_sharp_ind99:
;main.h,401 :: 		break;
	GOTO        L_sharp_ind92
L_sharp_ind101:
;main.h,382 :: 		for (count = min_range + L_mult; count <= max_range; count += L_mult) {
	MOVF        main_L_mult+0, 0 
	ADDWF       sharp_ind_count_L0+0, 1 
;main.h,402 :: 		}
	GOTO        L_sharp_ind91
L_sharp_ind92:
;main.h,403 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,404 :: 		return;
;main.h,405 :: 		}
L_end_sharp_ind:
	RETURN      0
; end of _sharp_ind

_sub_tune:

;main.h,407 :: 		void sub_tune()
;main.h,411 :: 		swr_mem = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sub_tune_swr_mem_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sub_tune_swr_mem_L0+1 
;main.h,412 :: 		coarse_tune();
	CALL        _coarse_tune+0, 0
;main.h,413 :: 		if (SWR == 0) {
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune580
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune580:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune102
;main.h,414 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,415 :: 		return;
	GOTO        L_end_sub_tune
;main.h,416 :: 		}
L_sub_tune102:
;main.h,417 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,418 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune581
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune581:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune103
;main.h,419 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune103:
;main.h,420 :: 		sharp_ind();
	CALL        _sharp_ind+0, 0
;main.h,421 :: 		if (SWR == 0) {
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune582
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune582:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune104
;main.h,422 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,423 :: 		return;
	GOTO        L_end_sub_tune
;main.h,424 :: 		}
L_sub_tune104:
;main.h,425 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,426 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune583
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune583:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune105
;main.h,427 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune105:
;main.h,428 :: 		sharp_cap();
	CALL        _sharp_cap+0, 0
;main.h,429 :: 		if (SWR == 0) {
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune584
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune584:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune106
;main.h,430 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,431 :: 		return;
	GOTO        L_end_sub_tune
;main.h,432 :: 		}
L_sub_tune106:
;main.h,433 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,434 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune585
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune585:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune107
;main.h,435 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune107:
;main.h,437 :: 		if (SWR < 200 & SWR < swr_mem & (swr_mem - SWR) > 100)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R1 
	MOVLW       128
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune586
	MOVLW       200
	SUBWF       _SWR+0, 0 
L__sub_tune586:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sub_tune_swr_mem_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune587
	MOVF        sub_tune_swr_mem_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sub_tune587:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 0 
	MOVWF       R3 
	MOVF        _SWR+0, 0 
	SUBWF       sub_tune_swr_mem_L0+0, 0 
	MOVWF       R1 
	MOVF        _SWR+1, 0 
	SUBWFB      sub_tune_swr_mem_L0+1, 0 
	MOVWF       R2 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune588
	MOVF        R1, 0 
	SUBLW       100
L__sub_tune588:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R3, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_sub_tune108
;main.h,438 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune108:
;main.h,439 :: 		swr_mem = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sub_tune_swr_mem_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sub_tune_swr_mem_L0+1 
;main.h,440 :: 		ind_mem = ind;
	MOVF        main_ind+0, 0 
	MOVWF       sub_tune_ind_mem_L0+0 
	MOVLW       0
	MOVWF       sub_tune_ind_mem_L0+1 
;main.h,441 :: 		cap_mem = cap;
	MOVF        main_cap+0, 0 
	MOVWF       sub_tune_cap_mem_L0+0 
	MOVLW       0
	MOVWF       sub_tune_cap_mem_L0+1 
;main.h,443 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune109
;main.h,444 :: 		SW = 0;
	CLRF        main_SW+0 
	GOTO        L_sub_tune110
L_sub_tune109:
;main.h,446 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
L_sub_tune110:
;main.h,447 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,448 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.h,449 :: 		Delay_ms(50);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_sub_tune111:
	DECFSZ      R13, 1, 1
	BRA         L_sub_tune111
	DECFSZ      R12, 1, 1
	BRA         L_sub_tune111
	DECFSZ      R11, 1, 1
	BRA         L_sub_tune111
	NOP
;main.h,450 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,451 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune589
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune589:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune112
;main.h,452 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune112:
;main.h,454 :: 		coarse_tune();
	CALL        _coarse_tune+0, 0
;main.h,455 :: 		if (SWR == 0) {
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune590
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune590:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune113
;main.h,456 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,457 :: 		return;
	GOTO        L_end_sub_tune
;main.h,458 :: 		}
L_sub_tune113:
;main.h,459 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,460 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune591
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune591:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune114
;main.h,461 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune114:
;main.h,462 :: 		sharp_ind();
	CALL        _sharp_ind+0, 0
;main.h,463 :: 		if (SWR == 0) {
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune592
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune592:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune115
;main.h,464 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,465 :: 		return;
	GOTO        L_end_sub_tune
;main.h,466 :: 		}
L_sub_tune115:
;main.h,467 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,468 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune593
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune593:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune116
;main.h,469 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune116:
;main.h,470 :: 		sharp_cap();
	CALL        _sharp_cap+0, 0
;main.h,471 :: 		if (SWR == 0) {
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune594
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune594:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune117
;main.h,472 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,473 :: 		return;
	GOTO        L_end_sub_tune
;main.h,474 :: 		}
L_sub_tune117:
;main.h,475 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,476 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune595
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune595:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune118
;main.h,477 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune118:
;main.h,479 :: 		if (SWR > swr_mem)
	MOVLW       128
	XORWF       sub_tune_swr_mem_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune596
	MOVF        _SWR+0, 0 
	SUBWF       sub_tune_swr_mem_L0+0, 0 
L__sub_tune596:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune119
;main.h,481 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune120
;main.h,482 :: 		SW = 0;
	CLRF        main_SW+0 
	GOTO        L_sub_tune121
L_sub_tune120:
;main.h,484 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
L_sub_tune121:
;main.h,485 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.h,486 :: 		ind = ind_mem;
	MOVF        sub_tune_ind_mem_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,487 :: 		cap = cap_mem;
	MOVF        sub_tune_cap_mem_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,488 :: 		set_ind(ind);
	MOVF        sub_tune_ind_mem_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,489 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,490 :: 		SWR = swr_mem;
	MOVF        sub_tune_swr_mem_L0+0, 0 
	MOVWF       _SWR+0 
	MOVF        sub_tune_swr_mem_L0+1, 0 
	MOVWF       _SWR+1 
;main.h,491 :: 		}
L_sub_tune119:
;main.h,493 :: 		asm CLRWDT;
	CLRWDT
;main.h,494 :: 		return;
;main.h,495 :: 		}
L_end_sub_tune:
	RETURN      0
; end of _sub_tune

_tune:

;main.h,499 :: 		void tune()
;main.h,503 :: 		asm CLRWDT;
	CLRWDT
;main.h,505 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,506 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,508 :: 		rready = 0;
	CLRF        _rready+0 
;main.h,509 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,510 :: 		if (SWR < 110)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune598
	MOVLW       110
	SUBWF       _SWR+0, 0 
L__tune598:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune122
;main.h,511 :: 		return;
	GOTO        L_end_tune
L_tune122:
;main.h,512 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,513 :: 		if (Loss_ind == 0)
	MOVF        main_Loss_ind+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_tune123
;main.h,514 :: 		lcd_ind();                // wyświetlenie wartości L i C
	CALL        _lcd_ind+0, 0
L_tune123:
;main.h,515 :: 		Delay_ms(50);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_tune124:
	DECFSZ      R13, 1, 1
	BRA         L_tune124
	DECFSZ      R12, 1, 1
	BRA         L_tune124
	DECFSZ      R11, 1, 1
	BRA         L_tune124
	NOP
;main.h,516 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,517 :: 		swr_a = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       _swr_a+0 
	MOVF        _SWR+1, 0 
	MOVWF       _swr_a+1 
;main.h,518 :: 		if (SWR < 110)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune599
	MOVLW       110
	SUBWF       _SWR+0, 0 
L__tune599:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune125
;main.h,519 :: 		return;
	GOTO        L_end_tune
L_tune125:
;main.h,520 :: 		if (max_swr > 110 & SWR > max_swr)
	MOVLW       128
	MOVWF       R1 
	MOVLW       128
	XORWF       main_max_swr+1, 0 
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune600
	MOVF        main_max_swr+0, 0 
	SUBLW       110
L__tune600:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       128
	XORWF       main_max_swr+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune601
	MOVF        _SWR+0, 0 
	SUBWF       main_max_swr+0, 0 
L__tune601:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_tune126
;main.h,522 :: 		return;
	GOTO        L_end_tune
L_tune126:
;main.h,525 :: 		sub_tune();
	CALL        _sub_tune+0, 0
;main.h,526 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune602
	MOVLW       0
	XORWF       _SWR+0, 0 
L__tune602:
	BTFSS       STATUS+0, 2 
	GOTO        L_tune127
;main.h,528 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,529 :: 		return;
	GOTO        L_end_tune
;main.h,530 :: 		}
L_tune127:
;main.h,531 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune603
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__tune603:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune128
;main.h,532 :: 		return;
	GOTO        L_end_tune
L_tune128:
;main.h,533 :: 		if (C_q == 5 & L_q == 5)
	MOVF        main_C_q+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        main_L_q+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_tune129
;main.h,534 :: 		return;
	GOTO        L_end_tune
L_tune129:
;main.h,536 :: 		if (L_q > 5)
	MOVF        main_L_q+0, 0 
	SUBLW       5
	BTFSC       STATUS+0, 0 
	GOTO        L_tune130
;main.h,538 :: 		step_ind = L_mult;
	MOVF        main_L_mult+0, 0 
	MOVWF       main_step_ind+0 
;main.h,539 :: 		L_mult = 1;
	MOVLW       1
	MOVWF       main_L_mult+0 
;main.h,540 :: 		sharp_ind();
	CALL        _sharp_ind+0, 0
;main.h,541 :: 		}
L_tune130:
;main.h,542 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune604
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__tune604:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune131
;main.h,543 :: 		return;
	GOTO        L_end_tune
L_tune131:
;main.h,545 :: 		if (C_q > 5)
	MOVF        main_C_q+0, 0 
	SUBLW       5
	BTFSC       STATUS+0, 0 
	GOTO        L_tune132
;main.h,547 :: 		step_cap = C_mult; // = C_mult
	MOVF        main_C_mult+0, 0 
	MOVWF       main_step_cap+0 
;main.h,548 :: 		C_mult = 1;
	MOVLW       1
	MOVWF       main_C_mult+0 
;main.h,549 :: 		sharp_cap();
	CALL        _sharp_cap+0, 0
;main.h,550 :: 		}
L_tune132:
;main.h,551 :: 		if (L_q == 5)
	MOVF        main_L_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_tune133
;main.h,552 :: 		L_mult = 1;
	MOVLW       1
	MOVWF       main_L_mult+0 
	GOTO        L_tune134
L_tune133:
;main.h,553 :: 		else if (L_q == 6)
	MOVF        main_L_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_tune135
;main.h,554 :: 		L_mult = 2;
	MOVLW       2
	MOVWF       main_L_mult+0 
	GOTO        L_tune136
L_tune135:
;main.h,555 :: 		else if (L_q == 7)
	MOVF        main_L_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_tune137
;main.h,556 :: 		L_mult = 4;
	MOVLW       4
	MOVWF       main_L_mult+0 
L_tune137:
L_tune136:
L_tune134:
;main.h,557 :: 		if (C_q == 5)
	MOVF        main_C_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_tune138
;main.h,558 :: 		C_mult = 1;
	MOVLW       1
	MOVWF       main_C_mult+0 
	GOTO        L_tune139
L_tune138:
;main.h,559 :: 		else if (C_q == 6)
	MOVF        main_C_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_tune140
;main.h,560 :: 		C_mult = 2;
	MOVLW       2
	MOVWF       main_C_mult+0 
	GOTO        L_tune141
L_tune140:
;main.h,561 :: 		else if (C_q == 7)
	MOVF        main_C_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_tune142
;main.h,562 :: 		C_mult = 4;
	MOVLW       4
	MOVWF       main_C_mult+0 
	GOTO        L_tune143
L_tune142:
;main.h,563 :: 		else if (C_q == 8)		// 8 kondensatorów
	MOVF        main_C_q+0, 0 
	XORLW       8
	BTFSS       STATUS+0, 2 
	GOTO        L_tune144
;main.h,564 :: 		C_mult = 8;
	MOVLW       8
	MOVWF       main_C_mult+0 
L_tune144:
L_tune143:
L_tune141:
L_tune139:
;main.h,565 :: 		asm CLRWDT;
	CLRWDT
;main.h,566 :: 		return;
;main.h,567 :: 		}
L_end_tune:
	RETURN      0
; end of _tune

_main:

;main.c,41 :: 		void main() {
;main.c,43 :: 		if (RCON.B3 == 0)
	BTFSC       RCON+0, 3 
	GOTO        L_main145
;main.c,44 :: 		Restart = 1;
	MOVLW       1
	MOVWF       _Restart+0 
L_main145:
;main.c,45 :: 		pic_init();
	CALL        _pic_init+0, 0
;main.c,47 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main146:
	DECFSZ      R13, 1, 1
	BRA         L_main146
	DECFSZ      R12, 1, 1
	BRA         L_main146
	DECFSZ      R11, 1, 1
	BRA         L_main146
	NOP
;main.c,48 :: 		asm CLRWDT;
	CLRWDT
;main.c,49 :: 		cells_init();
	CALL        _cells_init+0, 0
;main.c,50 :: 		Soft_I2C_Init();
	CALL        _Soft_I2C_Init+0, 0
;main.c,54 :: 		if (type == 0)
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main147
;main.c,56 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,57 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,58 :: 		}
L_main147:
;main.c,59 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,61 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main148:
	DECFSZ      R13, 1, 1
	BRA         L_main148
	DECFSZ      R12, 1, 1
	BRA         L_main148
	DECFSZ      R11, 1, 1
	BRA         L_main148
	NOP
;main.c,62 :: 		asm CLRWDT;
	CLRWDT
;main.c,63 :: 		if (PORTB.B1 == 0 & PORTB.B2 == 0)
	BTFSC       PORTB+0, 1 
	GOTO        L__main606
	BSF         R4, 0 
	GOTO        L__main607
L__main606:
	BCF         R4, 0 
L__main607:
	BTFSC       PORTB+0, 2 
	GOTO        L__main608
	BSF         STATUS+0, 0 
	GOTO        L__main609
L__main608:
	BCF         STATUS+0, 0 
L__main609:
	BTFSS       R4, 0 
	GOTO        L__main610
	BTFSS       STATUS+0, 0 
	GOTO        L__main610
	BSF         R4, 0 
	GOTO        L__main611
L__main610:
	BCF         R4, 0 
L__main611:
	BTFSS       R4, 0 
	GOTO        L_main149
;main.c,65 :: 		Test = 1;
	MOVLW       1
	MOVWF       _Test+0 
;main.c,66 :: 		Auto = 0;
	CLRF        _Auto+0 
;main.c,67 :: 		}
L_main149:
;main.c,68 :: 		if (L_q == 5)
	MOVF        main_L_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_main150
;main.c,69 :: 		L_mult = 1;
	MOVLW       1
	MOVWF       main_L_mult+0 
	GOTO        L_main151
L_main150:
;main.c,70 :: 		else if (L_q == 6)
	MOVF        main_L_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_main152
;main.c,71 :: 		L_mult = 2;
	MOVLW       2
	MOVWF       main_L_mult+0 
	GOTO        L_main153
L_main152:
;main.c,72 :: 		else if (L_q == 7)
	MOVF        main_L_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_main154
;main.c,73 :: 		L_mult = 4;
	MOVLW       4
	MOVWF       main_L_mult+0 
L_main154:
L_main153:
L_main151:
;main.c,74 :: 		if (C_q == 5)
	MOVF        main_C_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_main155
;main.c,75 :: 		C_mult = 1;
	MOVLW       1
	MOVWF       main_C_mult+0 
	GOTO        L_main156
L_main155:
;main.c,76 :: 		else if (C_q == 6)
	MOVF        main_C_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_main157
;main.c,77 :: 		C_mult = 2;
	MOVLW       2
	MOVWF       main_C_mult+0 
	GOTO        L_main158
L_main157:
;main.c,78 :: 		else if (C_q == 7)
	MOVF        main_C_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_main159
;main.c,79 :: 		C_mult = 4;
	MOVLW       4
	MOVWF       main_C_mult+0 
	GOTO        L_main160
L_main159:
;main.c,80 :: 		else if (C_q == 8)		// 8 kondensatorów
	MOVF        main_C_q+0, 0 
	XORLW       8
	BTFSS       STATUS+0, 2 
	GOTO        L_main161
;main.c,81 :: 		C_mult = 8;
	MOVLW       8
	MOVWF       main_C_mult+0 
L_main161:
L_main160:
L_main158:
L_main156:
;main.c,83 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main162:
	DECFSZ      R13, 1, 1
	BRA         L_main162
	DECFSZ      R12, 1, 1
	BRA         L_main162
	DECFSZ      R11, 1, 1
	BRA         L_main162
	NOP
;main.c,84 :: 		asm CLRWDT;
	CLRWDT
;main.c,85 :: 		led_init();
	CALL        _led_init+0, 0
;main.c,87 :: 		if (Button( & PORTB, 0, 100, 0))
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       100
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main163
;main.c,89 :: 		if (type == 4 | type == 5) {
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main164
;main.c,90 :: 		led_wr_str(0, 6, "Fider Loss", 10); // 128*64
	CLRF        FARG_led_wr_str+0 
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr1_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr1_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,91 :: 		led_wr_str(2, 6, "input", 5);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr2_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr2_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       5
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,92 :: 		led_wr_str(4, 6 + 3 * 12, "dB", 2);
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       42
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr3_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr3_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,93 :: 		} else if (type != 0) {
	GOTO        L_main165
L_main164:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_main166
;main.c,94 :: 		led_wr_str(0, 0, "Fider Loss input", 16); // 1602 | 128*32
	CLRF        FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr4_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr4_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,95 :: 		led_wr_str(1, 3, "dB", 2);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr5_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr5_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,96 :: 		}
L_main166:
L_main165:
;main.c,97 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
	MOVLW       52
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Fid_loss+0 
;main.c,98 :: 		show_loss();
	CALL        _show_loss+0, 0
;main.c,100 :: 		while (1) {
L_main167:
;main.c,101 :: 		if (Button( & PORTB, 2, 50, 0)) { // BYP button
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main169
;main.c,102 :: 		if (Fid_loss < 99) {
	MOVLW       99
	SUBWF       _Fid_loss+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main170
;main.c,103 :: 		Fid_loss++;
	INCF        _Fid_loss+0, 1 
;main.c,104 :: 		show_loss();
	CALL        _show_loss+0, 0
;main.c,105 :: 		EEPROM_Write(0x34, Dec2Bcd(Fid_loss));
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_Dec2Bcd_decnum+0 
	CALL        _Dec2Bcd+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	MOVLW       52
	MOVWF       FARG_EEPROM_Write_address+0 
	CALL        _EEPROM_Write+0, 0
;main.c,106 :: 		}
L_main170:
;main.c,107 :: 		while (Button( & PORTB, 2, 50, 0)) asm CLRWDT;
L_main171:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main172
	CLRWDT
	GOTO        L_main171
L_main172:
;main.c,108 :: 		}
L_main169:
;main.c,110 :: 		if (Button( & PORTB, 1, 50, 0)) { // AUTO button
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main173
;main.c,111 :: 		if (Fid_loss > 0) {
	MOVF        _Fid_loss+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_main174
;main.c,112 :: 		Fid_loss--;
	DECF        _Fid_loss+0, 1 
;main.c,113 :: 		show_loss();
	CALL        _show_loss+0, 0
;main.c,114 :: 		EEPROM_Write(0x34, Dec2Bcd(Fid_loss));
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_Dec2Bcd_decnum+0 
	CALL        _Dec2Bcd+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	MOVLW       52
	MOVWF       FARG_EEPROM_Write_address+0 
	CALL        _EEPROM_Write+0, 0
;main.c,115 :: 		}
L_main174:
;main.c,116 :: 		while (Button( & PORTB, 1, 50, 0)) asm CLRWDT;
L_main175:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main176
	CLRWDT
	GOTO        L_main175
L_main176:
;main.c,117 :: 		}
L_main173:
;main.c,118 :: 		asm CLRWDT;
	CLRWDT
;main.c,119 :: 		}
	GOTO        L_main167
;main.c,121 :: 		} //  Fider loss input
L_main163:
;main.c,123 :: 		if (Test == 0) {
	MOVF        _Test+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main177
;main.c,132 :: 		read_i2c_inputs();
	CALL        _read_i2c_inputs+0, 0
;main.c,133 :: 		load_settings();
	CALL        _load_settings+0, 0
;main.c,134 :: 		if (Restart == 1)
	MOVF        _Restart+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main178
;main.c,135 :: 		lcd_prep_short = 1;
	MOVLW       1
	MOVWF       _lcd_prep_short+0 
L_main178:
;main.c,136 :: 		lcd_prep();
	CALL        _lcd_prep+0, 0
;main.c,137 :: 		} else
	GOTO        L_main179
L_main177:
;main.c,138 :: 		Test_init();
	CALL        _test_init+0, 0
L_main179:
;main.c,140 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,144 :: 		while (1)
L_main180:
;main.c,147 :: 		asm CLRWDT;
	CLRWDT
;main.c,148 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,150 :: 		if (Test == 0)
	MOVF        _Test+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main182
;main.c,152 :: 		button_proc();	// główna procedura
	CALL        _button_proc+0, 0
;main.c,153 :: 		}
	GOTO        L_main183
L_main182:
;main.c,156 :: 		button_proc_test();
	CALL        _button_proc_test+0, 0
;main.c,157 :: 		}
L_main183:
;main.c,160 :: 		if (dysp_cnt != 0)
	MOVLW       0
	XORWF       _dysp_cnt+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main612
	MOVLW       0
	XORWF       _dysp_cnt+0, 0 
L__main612:
	BTFSC       STATUS+0, 2 
	GOTO        L_main184
;main.c,161 :: 		dysp_cnt--;
	MOVLW       1
	SUBWF       _dysp_cnt+0, 1 
	MOVLW       0
	SUBWFB      _dysp_cnt+1, 1 
	GOTO        L_main185
L_main184:
;main.c,162 :: 		else if (Test == 0 & Dysp_delay != 0)
	MOVF        _Test+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _Dysp_delay+0, 0 
	XORLW       0
	MOVLW       0
	BTFSS       STATUS+0, 2 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main186
;main.c,163 :: 		dysp_off();
	CALL        _dysp_off+0, 0
L_main186:
L_main185:
;main.c,165 :: 		offset = mem_offset;
	MOVF        _mem_offset+0, 0 
	MOVWF       main_offset_L0+0 
;main.c,166 :: 		read_i2c_inputs();
	CALL        _read_i2c_inputs+0, 0
;main.c,168 :: 		if (offset != mem_offset) {
	MOVF        main_offset_L0+0, 0 
	XORWF       _mem_offset+0, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L_main187
;main.c,169 :: 		load_settings();
	CALL        _load_settings+0, 0
;main.c,170 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,171 :: 		}
L_main187:
;main.c,176 :: 		}
	GOTO        L_main180
;main.c,177 :: 		}
L_end_main:
	GOTO        $+0
; end of _main

_button_proc_test:

;main.c,181 :: 		void button_proc_test(void) {
;main.c,182 :: 		if (Button( & PORTB, 0, 50, 0)) { // Tune btn
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test188
;main.c,183 :: 		Delay_ms(250);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_button_proc_test189:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc_test189
	DECFSZ      R12, 1, 1
	BRA         L_button_proc_test189
	DECFSZ      R11, 1, 1
	BRA         L_button_proc_test189
	NOP
	NOP
;main.c,184 :: 		asm CLRWDT;
	CLRWDT
;main.c,185 :: 		if (PORTB.B0 == 1) { // short press button
	BTFSS       PORTB+0, 0 
	GOTO        L_button_proc_test190
;main.c,186 :: 		if (SW == 0)
	MOVF        main_SW+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc_test191
;main.c,187 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
	GOTO        L_button_proc_test192
L_button_proc_test191:
;main.c,189 :: 		SW = 0;
	CLRF        main_SW+0 
L_button_proc_test192:
;main.c,190 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,191 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,192 :: 		} else { // long press button
	GOTO        L_button_proc_test193
L_button_proc_test190:
;main.c,193 :: 		if (L == 1)
	MOVF        _L+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc_test194
;main.c,194 :: 		L = 0;
	CLRF        _L+0 
	GOTO        L_button_proc_test195
L_button_proc_test194:
;main.c,196 :: 		L = 1;
	MOVLW       1
	MOVWF       _L+0 
L_button_proc_test195:
;main.c,197 :: 		if (L == 1) {
	MOVF        _L+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc_test196
;main.c,198 :: 		if (type == 4 | type == 5) // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test197
;main.c,199 :: 		led_wr_str(0, 16 + 12 * 8, "l", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr6_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr6_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc_test198
L_button_proc_test197:
;main.c,200 :: 		else if (type != 0) // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test199
;main.c,201 :: 		led_wr_str(0, 8, "l", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr7_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr7_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_button_proc_test199:
L_button_proc_test198:
;main.c,202 :: 		} else {
	GOTO        L_button_proc_test200
L_button_proc_test196:
;main.c,203 :: 		if (type == 4 | type == 5) // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test201
;main.c,204 :: 		led_wr_str(0, 16 + 12 * 8, "c", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr8_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr8_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc_test202
L_button_proc_test201:
;main.c,205 :: 		else if (type != 0) // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test203
;main.c,206 :: 		led_wr_str(0, 8, "c", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr9_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr9_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_button_proc_test203:
L_button_proc_test202:
;main.c,207 :: 		}
L_button_proc_test200:
;main.c,208 :: 		}
L_button_proc_test193:
;main.c,209 :: 		while (Button( & PORTB, 0, 50, 0))
L_button_proc_test204:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test205
;main.c,211 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,212 :: 		asm CLRWDT;
	CLRWDT
;main.c,213 :: 		}
	GOTO        L_button_proc_test204
L_button_proc_test205:
;main.c,214 :: 		} // END Tune btn
L_button_proc_test188:
;main.c,216 :: 		if (Button( & PORTB, 2, 50, 0)) { // BYP button
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test206
;main.c,217 :: 		asm CLRWDT;
	CLRWDT
;main.c,218 :: 		while (PORTB.B2 == 0)
L_button_proc_test207:
	BTFSC       PORTB+0, 2 
	GOTO        L_button_proc_test208
;main.c,220 :: 		if (L & ind < 32 * L_mult - 1)
	MOVLW       5
	MOVWF       R2 
	MOVF        main_L_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__button_proc_test614:
	BZ          L__button_proc_test615
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__button_proc_test614
L__button_proc_test615:
	MOVLW       1
	SUBWF       R0, 0 
	MOVWF       R2 
	MOVLW       0
	SUBWFB      R1, 0 
	MOVWF       R3 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R3, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__button_proc_test616
	MOVF        R2, 0 
	SUBWF       main_ind+0, 0 
L__button_proc_test616:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        _L+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test209
;main.c,222 :: 		ind++;
	INCF        main_ind+0, 1 
;main.c,223 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,224 :: 		}
	GOTO        L_button_proc_test210
L_button_proc_test209:
;main.c,225 :: 		else if (!L & cap < 32 * C_mult - 1)	// było L_mult
	MOVF        _L+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R4 
	MOVLW       5
	MOVWF       R2 
	MOVF        main_C_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__button_proc_test617:
	BZ          L__button_proc_test618
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__button_proc_test617
L__button_proc_test618:
	MOVLW       1
	SUBWF       R0, 0 
	MOVWF       R2 
	MOVLW       0
	SUBWFB      R1, 0 
	MOVWF       R3 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R3, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__button_proc_test619
	MOVF        R2, 0 
	SUBWF       main_cap+0, 0 
L__button_proc_test619:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R4, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test211
;main.c,227 :: 		cap++;
	INCF        main_cap+0, 1 
;main.c,228 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,229 :: 		}
L_button_proc_test211:
L_button_proc_test210:
;main.c,230 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,231 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,232 :: 		Delay_ms(30);
	MOVLW       156
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_button_proc_test212:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc_test212
	DECFSZ      R12, 1, 1
	BRA         L_button_proc_test212
;main.c,233 :: 		asm CLRWDT;
	CLRWDT
;main.c,234 :: 		}
	GOTO        L_button_proc_test207
L_button_proc_test208:
;main.c,235 :: 		} // end of BYP button
L_button_proc_test206:
;main.c,237 :: 		if (Button( & PORTB, 1, 50, 0) & Bypas == 0)
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        _bypas+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test213
;main.c,239 :: 		asm CLRWDT;
	CLRWDT
;main.c,240 :: 		while (PORTB.B1 == 0) {
L_button_proc_test214:
	BTFSC       PORTB+0, 1 
	GOTO        L_button_proc_test215
;main.c,241 :: 		if (L & ind > 0) {
	MOVF        main_ind+0, 0 
	SUBLW       0
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        _L+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test216
;main.c,242 :: 		ind--;
	DECF        main_ind+0, 1 
;main.c,243 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,244 :: 		} else if (!L & cap > 0) {
	GOTO        L_button_proc_test217
L_button_proc_test216:
	MOVF        _L+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        main_cap+0, 0 
	SUBLW       0
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test218
;main.c,245 :: 		cap--;
	DECF        main_cap+0, 1 
;main.c,246 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,247 :: 		}
L_button_proc_test218:
L_button_proc_test217:
;main.c,248 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,249 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,250 :: 		Delay_ms(30);
	MOVLW       156
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_button_proc_test219:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc_test219
	DECFSZ      R12, 1, 1
	BRA         L_button_proc_test219
;main.c,251 :: 		asm CLRWDT;
	CLRWDT
;main.c,252 :: 		}
	GOTO        L_button_proc_test214
L_button_proc_test215:
;main.c,253 :: 		}
L_button_proc_test213:
;main.c,254 :: 		return;
;main.c,255 :: 		}
L_end_button_proc_test:
	RETURN      0
; end of _button_proc_test

_button_proc:

;main.c,257 :: 		void button_proc(void)
;main.c,259 :: 		if (Button( & PORTB, 0, 50, 0) | Soft_tune)
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        _Soft_tune+0, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc220
;main.c,261 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,262 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,263 :: 		Delay_ms(250);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_button_proc221:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc221
	DECFSZ      R12, 1, 1
	BRA         L_button_proc221
	DECFSZ      R11, 1, 1
	BRA         L_button_proc221
	NOP
	NOP
;main.c,264 :: 		asm CLRWDT;
	CLRWDT
;main.c,265 :: 		if (Soft_tune == 0 & PORTB.B0 == 1) { // short press button
	MOVF        _Soft_tune+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	BTFSC       PORTB+0, 0 
	GOTO        L__button_proc621
	BCF         STATUS+0, 0 
	GOTO        L__button_proc622
L__button_proc621:
	BSF         STATUS+0, 0 
L__button_proc622:
	CLRF        R0 
	BTFSC       STATUS+0, 0 
	INCF        R0, 1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc222
;main.c,266 :: 		show_reset();
	CALL        _show_reset+0, 0
;main.c,267 :: 		bypas = 0;
	CLRF        _bypas+0 
;main.c,268 :: 		}
	GOTO        L_button_proc223
L_button_proc222:
;main.c,272 :: 		n_Tx = 0; // TX request
	BCF         LATA6_bit+0, BitPos(LATA6_bit+0) 
;main.c,273 :: 		Delay_ms(250); //
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_button_proc224:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc224
	DECFSZ      R12, 1, 1
	BRA         L_button_proc224
	DECFSZ      R11, 1, 1
	BRA         L_button_proc224
	NOP
	NOP
;main.c,274 :: 		btn_push();		// tutaj rozpoczęcie procedury strojenia
	CALL        _btn_push+0, 0
;main.c,275 :: 		bypas = 0;
	CLRF        _bypas+0 
;main.c,276 :: 		while (Button( & PORTB, 0, 50, 0))
L_button_proc225:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc226
;main.c,278 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,279 :: 		asm CLRWDT;
	CLRWDT
;main.c,280 :: 		}
	GOTO        L_button_proc225
L_button_proc226:
;main.c,281 :: 		Soft_tune = 0;
	CLRF        _Soft_tune+0 
;main.c,282 :: 		}
L_button_proc223:
;main.c,284 :: 		}
L_button_proc220:
;main.c,286 :: 		if (Button( & PORTB, 2, 50, 0)) { // BYP button
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc227
;main.c,287 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,288 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,289 :: 		asm CLRWDT;
	CLRWDT
;main.c,290 :: 		if (bypas == 0) {
	MOVF        _bypas+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc228
;main.c,291 :: 		bypas = 1;
	MOVLW       1
	MOVWF       _bypas+0 
;main.c,292 :: 		cap_mem = cap;
	MOVF        main_cap+0, 0 
	MOVWF       _cap_mem+0 
;main.c,293 :: 		ind_mem = ind;
	MOVF        main_ind+0, 0 
	MOVWF       _ind_mem+0 
;main.c,294 :: 		SW_mem = SW;
	MOVF        main_SW+0, 0 
	MOVWF       _SW_mem+0 
;main.c,295 :: 		cap = 0;
	CLRF        main_cap+0 
;main.c,296 :: 		ind = 0;
	CLRF        main_ind+0 
;main.c,297 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,298 :: 		set_ind(ind);
	CLRF        FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,299 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,300 :: 		set_SW(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,301 :: 		if (Loss_mode == 0)
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc229
;main.c,302 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
L_button_proc229:
;main.c,303 :: 		Auto_mem = Auto;
	MOVF        _Auto+0, 0 
	MOVWF       _Auto_mem+0 
;main.c,304 :: 		Auto = 0;
	CLRF        _Auto+0 
;main.c,305 :: 		} else {
	GOTO        L_button_proc230
L_button_proc228:
;main.c,306 :: 		bypas = 0;
	CLRF        _bypas+0 
;main.c,307 :: 		cap = cap_mem;
	MOVF        _cap_mem+0, 0 
	MOVWF       main_cap+0 
;main.c,308 :: 		ind = ind_mem;
	MOVF        _ind_mem+0, 0 
	MOVWF       main_ind+0 
;main.c,309 :: 		SW = SW_mem;
	MOVF        _SW_mem+0, 0 
	MOVWF       main_SW+0 
;main.c,310 :: 		set_cap(cap);
	MOVF        _cap_mem+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,311 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,312 :: 		set_SW(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,313 :: 		if (Loss_mode == 0)
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc231
;main.c,314 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
L_button_proc231:
;main.c,315 :: 		Auto = Auto_mem;
	MOVF        _Auto_mem+0, 0 
	MOVWF       _Auto+0 
;main.c,316 :: 		}
L_button_proc230:
;main.c,317 :: 		if (type == 4 | type == 5) { // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc232
;main.c,318 :: 		if (Auto & !Bypas)
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc233
;main.c,319 :: 		led_wr_str(0, 16 + 8 * 12, ".", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr10_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr10_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc234
L_button_proc233:
;main.c,320 :: 		else if (!Auto & Bypas)
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc235
;main.c,321 :: 		led_wr_str(0, 16 + 8 * 12, "_", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr11_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr11_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc236
L_button_proc235:
;main.c,323 :: 		led_wr_str(0, 16 + 8 * 12, " ", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr12_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr12_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_button_proc236:
L_button_proc234:
;main.c,324 :: 		} else if (type != 0) { //  1602 LCD  or 128*32 OLED
	GOTO        L_button_proc237
L_button_proc232:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc238
;main.c,325 :: 		if (Auto & !Bypas)
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc239
;main.c,326 :: 		led_wr_str(0, 8, ".", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr13_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr13_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc240
L_button_proc239:
;main.c,327 :: 		else if (!Auto & Bypas)
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc241
;main.c,328 :: 		led_wr_str(0, 8, "_", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr14_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr14_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc242
L_button_proc241:
;main.c,330 :: 		led_wr_str(0, 8, " ", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr15_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr15_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_button_proc242:
L_button_proc240:
;main.c,331 :: 		}
L_button_proc238:
L_button_proc237:
;main.c,332 :: 		asm CLRWDT;
	CLRWDT
;main.c,333 :: 		while (Button( & PORTB, 2, 50, 0)) {
L_button_proc243:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc244
;main.c,334 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,335 :: 		asm CLRWDT;
	CLRWDT
;main.c,336 :: 		}
	GOTO        L_button_proc243
L_button_proc244:
;main.c,337 :: 		}
L_button_proc227:
;main.c,339 :: 		if (Button( & PORTB, 1, 50, 0) & Bypas == 0) { // Auto button
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        _bypas+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc245
;main.c,340 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,341 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,342 :: 		asm CLRWDT;
	CLRWDT
;main.c,343 :: 		if (Auto == 0)
	MOVF        _Auto+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc246
;main.c,344 :: 		Auto = 1;
	MOVLW       1
	MOVWF       _Auto+0 
	GOTO        L_button_proc247
L_button_proc246:
;main.c,346 :: 		Auto = 0;
	CLRF        _Auto+0 
L_button_proc247:
;main.c,347 :: 		EEPROM_Write(2, Auto);
	MOVLW       2
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        _Auto+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,348 :: 		if (type == 4 | type == 5) { // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc248
;main.c,349 :: 		if (Auto & !Bypas)
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc249
;main.c,350 :: 		led_wr_str(0, 16 + 8 * 12, ".", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr16_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr16_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc250
L_button_proc249:
;main.c,351 :: 		else if (!Auto & Bypas)
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc251
;main.c,352 :: 		led_wr_str(0, 16 + 8 * 12, "_", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr17_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr17_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc252
L_button_proc251:
;main.c,354 :: 		led_wr_str(0, 16 + 8 * 12, " ", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr18_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr18_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_button_proc252:
L_button_proc250:
;main.c,355 :: 		} else if (type != 0) { //  1602 LCD  or 128*32 OLED
	GOTO        L_button_proc253
L_button_proc248:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc254
;main.c,356 :: 		if (Auto & !Bypas)
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc255
;main.c,357 :: 		led_wr_str(0, 8, ".", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr19_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr19_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc256
L_button_proc255:
;main.c,358 :: 		else if (!Auto & Bypas)
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc257
;main.c,359 :: 		led_wr_str(0, 8, "_", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr20_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr20_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_button_proc258
L_button_proc257:
;main.c,361 :: 		led_wr_str(0, 8, " ", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr21_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr21_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_button_proc258:
L_button_proc256:
;main.c,362 :: 		}
L_button_proc254:
L_button_proc253:
;main.c,363 :: 		asm CLRWDT;
	CLRWDT
;main.c,364 :: 		while (Button( & PORTB, 1, 50, 0)) {
L_button_proc259:
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       50
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc260
;main.c,365 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,366 :: 		asm CLRWDT;
	CLRWDT
;main.c,367 :: 		}
	GOTO        L_button_proc259
L_button_proc260:
;main.c,368 :: 		}
L_button_proc245:
;main.c,369 :: 		return;
;main.c,370 :: 		}
L_end_button_proc:
	RETURN      0
; end of _button_proc

_show_reset:

;main.c,372 :: 		void show_reset() {
;main.c,373 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.c,374 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,375 :: 		set_sw(SW);
	MOVLW       1
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,376 :: 		EEPROM_Write(255 - mem_offset * 5, 0);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       255
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,377 :: 		EEPROM_Write(254 - mem_offset * 5, 0);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       254
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,378 :: 		EEPROM_Write(253 - mem_offset * 5, 1);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       253
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVLW       1
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,379 :: 		EEPROM_Write(252 - mem_offset * 5, 0);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       252
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,380 :: 		EEPROM_Write(251 - mem_offset * 5, 0);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       251
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,381 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,382 :: 		Loss_mode = 0;
	CLRF        _Loss_mode+0 
;main.c,384 :: 		n_Tx = 1;
	BSF         LATA6_bit+0, BitPos(LATA6_bit+0) 
;main.c,385 :: 		SWR = 0;
	CLRF        _SWR+0 
	CLRF        _SWR+1 
;main.c,386 :: 		PWR = 0;
	CLRF        _PWR+0 
	CLRF        _PWR+1 
;main.c,387 :: 		SWR_fixed_old = 0;
	CLRF        _SWR_fixed_old+0 
	CLRF        _SWR_fixed_old+1 
;main.c,388 :: 		if (type == 4 | type == 5) { // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_reset261
;main.c,389 :: 		led_wr_str(2, 16, "RESET   ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr22_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr22_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,390 :: 		asm CLRWDT;
	CLRWDT
;main.c,391 :: 		delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_show_reset262:
	DECFSZ      R13, 1, 1
	BRA         L_show_reset262
	DECFSZ      R12, 1, 1
	BRA         L_show_reset262
	DECFSZ      R11, 1, 1
	BRA         L_show_reset262
	NOP
	NOP
;main.c,392 :: 		led_wr_str(2, 16, "SWR=0.00", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr23_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr23_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,393 :: 		asm CLRWDT;
	CLRWDT
;main.c,394 :: 		} else if (type != 0) { // 1602 LCD & 128*32 OLED
	GOTO        L_show_reset263
L_show_reset261:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_reset264
;main.c,395 :: 		led_wr_str(1, 0, "RESET   ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr24_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr24_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,396 :: 		asm CLRWDT;
	CLRWDT
;main.c,397 :: 		delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_show_reset265:
	DECFSZ      R13, 1, 1
	BRA         L_show_reset265
	DECFSZ      R12, 1, 1
	BRA         L_show_reset265
	DECFSZ      R11, 1, 1
	BRA         L_show_reset265
	NOP
	NOP
;main.c,398 :: 		led_wr_str(1, 0, "SWR=0.00", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr25_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr25_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,399 :: 		asm CLRWDT;
	CLRWDT
;main.c,400 :: 		} else {
	GOTO        L_show_reset266
L_show_reset264:
;main.c,401 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,402 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,403 :: 		}
L_show_reset266:
L_show_reset263:
;main.c,404 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,405 :: 		Power_old = 10000;
	MOVLW       16
	MOVWF       _Power_old+0 
	MOVLW       39
	MOVWF       _Power_old+1 
;main.c,406 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,407 :: 		return;
;main.c,408 :: 		}
L_end_show_reset:
	RETURN      0
; end of _show_reset

_btn_push:

;main.c,413 :: 		void btn_push()
;main.c,415 :: 		asm CLRWDT;
	CLRWDT
;main.c,416 :: 		if (type == 4 | type == 5) { // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_btn_push267
;main.c,417 :: 		led_wr_str(2, 16 + 12 * 4, "TUNE", 4);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       64
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr26_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr26_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,418 :: 		} else if (type != 0) { // 1602 LCD & 128*32 OLED
	GOTO        L_btn_push268
L_btn_push267:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_btn_push269
;main.c,419 :: 		led_wr_str(1, 4, "TUNE", 4);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr27_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr27_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,420 :: 		} else {
	GOTO        L_btn_push270
L_btn_push269:
;main.c,421 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,422 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,423 :: 		}
L_btn_push270:
L_btn_push268:
;main.c,424 :: 		tune();		// strojenie
	CALL        _tune+0, 0
;main.c,425 :: 		if (type == 0)
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_btn_push271
;main.c,427 :: 		if (swr <= 150) {
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__btn_push625
	MOVF        _SWR+0, 0 
	SUBLW       150
L__btn_push625:
	BTFSS       STATUS+0, 0 
	GOTO        L_btn_push272
;main.c,428 :: 		LATB.B6 = 0;
	BCF         LATB+0, 6 
;main.c,429 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,430 :: 		} // Green
	GOTO        L_btn_push273
L_btn_push272:
;main.c,431 :: 		else if (swr <= 250) {
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__btn_push626
	MOVF        _SWR+0, 0 
	SUBLW       250
L__btn_push626:
	BTFSS       STATUS+0, 0 
	GOTO        L_btn_push274
;main.c,432 :: 		PORTB.B6 = 0;
	BCF         PORTB+0, 6 
;main.c,433 :: 		PORTB.B7 = 0;
	BCF         PORTB+0, 7 
;main.c,434 :: 		} // Orange
	GOTO        L_btn_push275
L_btn_push274:
;main.c,436 :: 		PORTB.B6 = 1;
	BSF         PORTB+0, 6 
;main.c,437 :: 		PORTB.B7 = 0;
	BCF         PORTB+0, 7 
;main.c,438 :: 		} // Red
L_btn_push275:
L_btn_push273:
;main.c,439 :: 		}
	GOTO        L_btn_push276
L_btn_push271:
;main.c,440 :: 		else if (Loss_mode == 0 | Loss_ind == 0)
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        main_Loss_ind+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_btn_push277
;main.c,441 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
L_btn_push277:
L_btn_push276:
;main.c,442 :: 		EEPROM_Write(255 - mem_offset * 5, cap);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       255
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_cap+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,443 :: 		EEPROM_Write(254 - mem_offset * 5, ind);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       254
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_ind+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,444 :: 		EEPROM_Write(253 - mem_offset * 5, SW);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       253
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_SW+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,445 :: 		EEPROM_Write(252 - mem_offset * 5, swr_a / 256);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       252
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVLW       0
	MOVWF       R4 
	MOVLW       1
	MOVWF       R5 
	MOVF        _swr_a+0, 0 
	MOVWF       R0 
	MOVF        _swr_a+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,446 :: 		EEPROM_Write(251 - mem_offset * 5, swr_a % 256);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       251
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVLW       0
	MOVWF       R4 
	MOVLW       1
	MOVWF       R5 
	MOVF        _swr_a+0, 0 
	MOVWF       R0 
	MOVF        _swr_a+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,447 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,448 :: 		Power_old = 10000;
	MOVLW       16
	MOVWF       _Power_old+0 
	MOVLW       39
	MOVWF       _Power_old+1 
;main.c,449 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,450 :: 		SWR_fixed_old = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       _SWR_fixed_old+0 
	MOVF        _SWR+1, 0 
	MOVWF       _SWR_fixed_old+1 
;main.c,452 :: 		n_Tx = 1;
	BSF         LATA6_bit+0, BitPos(LATA6_bit+0) 
;main.c,453 :: 		asm CLRWDT;
	CLRWDT
;main.c,454 :: 		return;
;main.c,455 :: 		}
L_end_btn_push:
	RETURN      0
; end of _btn_push

_lcd_prep:

;main.c,457 :: 		void lcd_prep() {
;main.c,458 :: 		asm CLRWDT;
	CLRWDT
;main.c,459 :: 		if (type == 4 | type == 5) { // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep278
;main.c,460 :: 		if (lcd_prep_short == 0) {
	MOVF        _lcd_prep_short+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep279
;main.c,461 :: 		led_wr_str(0, 22, "ATU-100", 7);
	CLRF        FARG_led_wr_str+0 
	MOVLW       22
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr28_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr28_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       7
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,462 :: 		led_wr_str(2, 6, "EXT board", 9);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr29_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr29_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,463 :: 		led_wr_str(4, 16, "by N7DDC", 8);
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr30_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr30_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,464 :: 		led_wr_str(6, 4, "FW ver 3.1m", 11);
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr31_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr31_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       11
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,465 :: 		asm CLRWDT;
	CLRWDT
;main.c,466 :: 		Delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_lcd_prep280:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep280
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep280
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep280
	NOP
	NOP
;main.c,467 :: 		asm CLRWDT;
	CLRWDT
;main.c,468 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_prep281:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep281
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep281
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep281
	NOP
	NOP
;main.c,469 :: 		asm CLRWDT;
	CLRWDT
;main.c,470 :: 		led_wr_str(0, 16, "        ", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr32_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr32_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,471 :: 		led_wr_str(2, 4, "          ", 10);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr33_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr33_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,472 :: 		led_wr_str(4, 16, "        ", 8);
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr34_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr34_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,473 :: 		led_wr_str(6, 4, "          ", 11);
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr35_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr35_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       11
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,474 :: 		}
L_lcd_prep279:
;main.c,475 :: 		Delay_ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_lcd_prep282:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep282
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep282
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep282
	NOP
	NOP
;main.c,476 :: 		if (P_High == 1)
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep283
;main.c,477 :: 		led_wr_str(0, 16, "PWR=  0W", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr36_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr36_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_prep284
L_lcd_prep283:
;main.c,479 :: 		led_wr_str(0, 16, "PWR=0.0W", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr37_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr37_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_lcd_prep284:
;main.c,480 :: 		led_wr_str(2, 16, "SWR=0.00", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr38_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr38_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,481 :: 		if (Auto)
	MOVF        _Auto+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep285
;main.c,482 :: 		led_wr_str(0, 16 + 8 * 12, ".", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr39_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr39_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_lcd_prep285:
;main.c,483 :: 		} else if (type != 0) { // 1602 LCD & 128*32 OLED
	GOTO        L_lcd_prep286
L_lcd_prep278:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep287
;main.c,484 :: 		if (lcd_prep_short == 0) {
	MOVF        _lcd_prep_short+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep288
;main.c,485 :: 		led_wr_str(0, 4, "ATU-100", 7);
	CLRF        FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr40_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr40_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       7
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,486 :: 		led_wr_str(1, 3, "EXT board", 9);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr41_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr41_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,487 :: 		asm CLRWDT;
	CLRWDT
;main.c,488 :: 		Delay_ms(700);
	MOVLW       15
	MOVWF       R11, 0
	MOVLW       53
	MOVWF       R12, 0
	MOVLW       81
	MOVWF       R13, 0
L_lcd_prep289:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep289
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep289
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep289
;main.c,489 :: 		asm CLRWDT;
	CLRWDT
;main.c,490 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_prep290:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep290
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep290
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep290
	NOP
	NOP
;main.c,491 :: 		asm CLRWDT;
	CLRWDT
;main.c,492 :: 		led_wr_str(0, 4, "by N7DDC", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr42_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr42_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,493 :: 		led_wr_str(1, 3, "FW ver 3.1m", 11);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr43_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr43_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       11
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,494 :: 		asm CLRWDT;
	CLRWDT
;main.c,495 :: 		Delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_lcd_prep291:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep291
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep291
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep291
	NOP
	NOP
;main.c,496 :: 		asm CLRWDT;
	CLRWDT
;main.c,497 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_prep292:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep292
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep292
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep292
	NOP
	NOP
;main.c,498 :: 		asm CLRWDT;
	CLRWDT
;main.c,499 :: 		led_wr_str(0, 4, "        ", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr44_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr44_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,500 :: 		led_wr_str(1, 3, "          ", 11);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr45_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr45_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       11
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,501 :: 		}
L_lcd_prep288:
;main.c,502 :: 		Delay_ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
	MOVWF       R13, 0
L_lcd_prep293:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep293
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep293
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep293
	NOP
	NOP
;main.c,503 :: 		if (P_High == 1)
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep294
;main.c,504 :: 		led_wr_str(0, 0, "PWR=  0W", 8);
	CLRF        FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr46_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr46_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_prep295
L_lcd_prep294:
;main.c,506 :: 		led_wr_str(0, 0, "PWR=0.0W", 8);
	CLRF        FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr47_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr47_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_lcd_prep295:
;main.c,507 :: 		led_wr_str(1, 0, "SWR=0.00", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr48_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr48_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,508 :: 		if (Auto)
	MOVF        _Auto+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep296
;main.c,509 :: 		led_wr_str(0, 8, ".", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr49_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr49_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_lcd_prep296:
;main.c,510 :: 		}
L_lcd_prep287:
L_lcd_prep286:
;main.c,511 :: 		asm CLRWDT;
	CLRWDT
;main.c,512 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,513 :: 		return;
;main.c,514 :: 		}
L_end_lcd_prep:
	RETURN      0
; end of _lcd_prep

_lcd_swr:

;main.c,516 :: 		void lcd_swr(int swr) {
;main.c,517 :: 		asm CLRWDT;
	CLRWDT
;main.c,518 :: 		if (swr != SWR_old) {
	MOVF        FARG_lcd_swr_swr+1, 0 
	XORWF       _SWR_old+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr629
	MOVF        _SWR_old+0, 0 
	XORWF       FARG_lcd_swr_swr+0, 0 
L__lcd_swr629:
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr297
;main.c,519 :: 		SWR_old = swr;
	MOVF        FARG_lcd_swr_swr+0, 0 
	MOVWF       _SWR_old+0 
	MOVF        FARG_lcd_swr_swr+1, 0 
	MOVWF       _SWR_old+1 
;main.c,520 :: 		if (swr == 1) { // Low power
	MOVLW       0
	XORWF       FARG_lcd_swr_swr+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr630
	MOVLW       1
	XORWF       FARG_lcd_swr_swr+0, 0 
L__lcd_swr630:
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr298
;main.c,521 :: 		if (type == 4 | type == 5)
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr299
;main.c,522 :: 		led_wr_str(2, 16 + 4 * 12, "0.00", 4); // 128*64 OLED
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       64
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr50_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr50_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_swr300
L_lcd_swr299:
;main.c,523 :: 		else if (type != 0)
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr301
;main.c,524 :: 		led_wr_str(1, 4, "0.00", 4); // 1602  & 128*32 OLED
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr51_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr51_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_swr302
L_lcd_swr301:
;main.c,525 :: 		else if (type == 0) { // real-time 2-colors led work
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr303
;main.c,526 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,527 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,528 :: 		}
L_lcd_swr303:
L_lcd_swr302:
L_lcd_swr300:
;main.c,529 :: 		SWR_old = 0;
	CLRF        _SWR_old+0 
	CLRF        _SWR_old+1 
;main.c,530 :: 		} else {
	GOTO        L_lcd_swr304
L_lcd_swr298:
;main.c,531 :: 		SWR_old = swr;
	MOVF        FARG_lcd_swr_swr+0, 0 
	MOVWF       _SWR_old+0 
	MOVF        FARG_lcd_swr_swr+1, 0 
	MOVWF       _SWR_old+1 
;main.c,532 :: 		IntToStr(swr, work_str);
	MOVF        FARG_lcd_swr_swr+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_lcd_swr_swr+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,533 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,534 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,535 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,536 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,537 :: 		if (type == 4 | type == 5)
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr305
;main.c,538 :: 		led_wr_str(2, 16 + 4 * 12, work_str_2, 4); // 128*64 OLED
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       64
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_swr306
L_lcd_swr305:
;main.c,539 :: 		else if (type != 0)
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr307
;main.c,540 :: 		led_wr_str(1, 4, work_str_2, 4); // 1602  & 128*32
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_swr308
L_lcd_swr307:
;main.c,541 :: 		else if (type == 0) { // real-time 2-colors led work
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr309
;main.c,542 :: 		if (swr <= 150) {
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_lcd_swr_swr+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr631
	MOVF        FARG_lcd_swr_swr+0, 0 
	SUBLW       150
L__lcd_swr631:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_swr310
;main.c,543 :: 		LATB.B6 = 0;
	BCF         LATB+0, 6 
;main.c,544 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,545 :: 		} // Green
	GOTO        L_lcd_swr311
L_lcd_swr310:
;main.c,546 :: 		else if (swr <= 250) {
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_lcd_swr_swr+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr632
	MOVF        FARG_lcd_swr_swr+0, 0 
	SUBLW       250
L__lcd_swr632:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_swr312
;main.c,547 :: 		PORTB.B6 = 0;
	BCF         PORTB+0, 6 
;main.c,548 :: 		PORTB.B7 = 0;
	BCF         PORTB+0, 7 
;main.c,549 :: 		} // Orange
	GOTO        L_lcd_swr313
L_lcd_swr312:
;main.c,551 :: 		PORTB.B6 = 1;
	BSF         PORTB+0, 6 
;main.c,552 :: 		PORTB.B7 = 0;
	BCF         PORTB+0, 7 
;main.c,553 :: 		} // Red
L_lcd_swr313:
L_lcd_swr311:
;main.c,554 :: 		}
L_lcd_swr309:
L_lcd_swr308:
L_lcd_swr306:
;main.c,555 :: 		}
L_lcd_swr304:
;main.c,556 :: 		}
L_lcd_swr297:
;main.c,557 :: 		asm CLRWDT;
	CLRWDT
;main.c,558 :: 		return;
;main.c,559 :: 		}
L_end_lcd_swr:
	RETURN      0
; end of _lcd_swr

_button_delay:

;main.c,561 :: 		void button_delay() {
;main.c,562 :: 		if ((Button( & PORTB, 0, 25, 0)) | (Button( & PORTB, 1, 25, 0)) |
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       25
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__button_delay+0 
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       25
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 0 
	IORWF       FLOC__button_delay+0, 1 
;main.c,563 :: 		(Button( & PORTB, 2, 25, 0))) {
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       25
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        FLOC__button_delay+0, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_delay314
;main.c,564 :: 		but = 1;
	MOVLW       1
	MOVWF       _but+0 
;main.c,565 :: 		}
L_button_delay314:
;main.c,566 :: 		return;
;main.c,567 :: 		}
L_end_button_delay:
	RETURN      0
; end of _button_delay

_show_pwr:

;main.c,569 :: 		void show_pwr(int Power, int SWR) {
;main.c,573 :: 		asm CLRWDT;
	CLRWDT
;main.c,575 :: 		if (Test == 0 & Loss_ind == 1 & SWR >= 100) {
	MOVF        _Test+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        main_Loss_ind+0, 0 
	XORLW       1
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R1, 1 
	MOVLW       128
	XORWF       FARG_show_pwr_SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr635
	MOVLW       100
	SUBWF       FARG_show_pwr_SWR+0, 0 
L__show_pwr635:
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr315
;main.c,576 :: 		if (Loss_mode == 0) { // prepare
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr316
;main.c,577 :: 		if (type == 4 | type == 5) { // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr317
;main.c,578 :: 		if (P_High == 1)
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr318
;main.c,579 :: 		led_wr_str(4, 16, "ANT=  0W", 8);
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr52_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr52_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr319
L_show_pwr318:
;main.c,581 :: 		led_wr_str(4, 16, "ANT=0.0W", 8);
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr53_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr53_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_pwr319:
;main.c,582 :: 		led_wr_str(6, 16, "EFF=  0%", 8);
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr54_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr54_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,583 :: 		} else if (type == 2 | type == 3) { // 128*32 OLED
	GOTO        L_show_pwr320
L_show_pwr317:
	MOVF        _type+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr321
;main.c,584 :: 		if (P_High == 1)
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr322
;main.c,585 :: 		led_wr_str(0, 9, "ANT=  0W", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr55_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr55_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr323
L_show_pwr322:
;main.c,587 :: 		led_wr_str(0, 9, "ANT=0.0W", 8);
	CLRF        FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr56_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr56_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_pwr323:
;main.c,588 :: 		led_wr_str(1, 9, "EFF=  0%", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr57_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr57_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,589 :: 		} else if (type == 1) { // 1602 LCD
	GOTO        L_show_pwr324
L_show_pwr321:
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr325
;main.c,590 :: 		if (P_High == 1)
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr326
;main.c,591 :: 		led_wr_str(0, 9, "AN=  0W", 7);
	CLRF        FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr58_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr58_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       7
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr327
L_show_pwr326:
;main.c,593 :: 		led_wr_str(0, 9, "AN=0.0W", 7);
	CLRF        FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr59_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr59_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       7
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_pwr327:
;main.c,594 :: 		led_wr_str(1, 9, "EFF= 0%", 7);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr60_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr60_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       7
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,595 :: 		}
L_show_pwr325:
L_show_pwr324:
L_show_pwr320:
;main.c,596 :: 		}
L_show_pwr316:
;main.c,597 :: 		Loss_mode = 1;
	MOVLW       1
	MOVWF       _Loss_mode+0 
;main.c,598 :: 		} else {
	GOTO        L_show_pwr328
L_show_pwr315:
;main.c,599 :: 		if (Loss_mode == 1)
	MOVF        _Loss_mode+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr329
;main.c,600 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
L_show_pwr329:
;main.c,601 :: 		Loss_mode = 0;
	CLRF        _Loss_mode+0 
;main.c,602 :: 		}
L_show_pwr328:
;main.c,603 :: 		asm CLRWDT;
	CLRWDT
;main.c,604 :: 		if (Power != Power_old) {
	MOVF        FARG_show_pwr_Power+1, 0 
	XORWF       _Power_old+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr636
	MOVF        _Power_old+0, 0 
	XORWF       FARG_show_pwr_Power+0, 0 
L__show_pwr636:
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr330
;main.c,605 :: 		Power_old = Power;
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       _Power_old+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       _Power_old+1 
;main.c,607 :: 		if (P_High == 0) {
	MOVF        main_P_High+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr331
;main.c,608 :: 		if (Power >= 100) { // > 10 W
	MOVLW       128
	XORWF       FARG_show_pwr_Power+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr637
	MOVLW       100
	SUBWF       FARG_show_pwr_Power+0, 0 
L__show_pwr637:
	BTFSS       STATUS+0, 0 
	GOTO        L_show_pwr332
;main.c,609 :: 		Power += 5; // rounding to 1 W
	MOVLW       5
	ADDWF       FARG_show_pwr_Power+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      FARG_show_pwr_Power+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       FARG_show_pwr_Power+0 
	MOVF        R1, 0 
	MOVWF       FARG_show_pwr_Power+1 
;main.c,610 :: 		IntToStr(Power, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,611 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,612 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,613 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,614 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,615 :: 		} else {
	GOTO        L_show_pwr333
L_show_pwr332:
;main.c,616 :: 		IntToStr(Power, work_str);
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,617 :: 		if (work_str[4] != ' ')
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr334
;main.c,618 :: 		work_str_2[0] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_pwr335
L_show_pwr334:
;main.c,620 :: 		work_str_2[0] = '0';
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_pwr335:
;main.c,621 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,622 :: 		if (work_str[5] != ' ')
	MOVF        _work_str+5, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr336
;main.c,623 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_show_pwr337
L_show_pwr336:
;main.c,625 :: 		work_str_2[2] = '0';
	MOVLW       48
	MOVWF       _work_str_2+2 
L_show_pwr337:
;main.c,626 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,627 :: 		}
L_show_pwr333:
;main.c,628 :: 		} else { // High Power
	GOTO        L_show_pwr338
L_show_pwr331:
;main.c,629 :: 		if (Power < 999) { // 0 - 1500 Watts
	MOVLW       128
	XORWF       FARG_show_pwr_Power+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr638
	MOVLW       231
	SUBWF       FARG_show_pwr_Power+0, 0 
L__show_pwr638:
	BTFSC       STATUS+0, 0 
	GOTO        L_show_pwr339
;main.c,630 :: 		IntToStr(Power, work_str);
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,631 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,632 :: 		work_str_2[1] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+1 
;main.c,633 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,634 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,635 :: 		} else {
	GOTO        L_show_pwr340
L_show_pwr339:
;main.c,636 :: 		IntToStr(Power, work_str);
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,637 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,638 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,639 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,640 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,641 :: 		}
L_show_pwr340:
;main.c,642 :: 		}
L_show_pwr338:
;main.c,643 :: 		if (type == 4 | type == 5)
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr341
;main.c,644 :: 		led_wr_str(0, 16 + 4 * 12, work_str_2, 4); // 128*64 OLED
	CLRF        FARG_led_wr_str+0 
	MOVLW       64
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr342
L_show_pwr341:
;main.c,645 :: 		else if (type != 0)
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr343
;main.c,646 :: 		led_wr_str(0, 4, work_str_2, 4); // 1602  & 128*32
	CLRF        FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_pwr343:
L_show_pwr342:
;main.c,648 :: 		asm CLRWDT;
	CLRWDT
;main.c,650 :: 		if (Loss_mode == 1) {
	MOVF        _Loss_mode+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr344
;main.c,651 :: 		if (ind == 0 & cap == 0)
	MOVF        main_ind+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        main_cap+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr345
;main.c,652 :: 		swr_a = SWR;
	MOVF        FARG_show_pwr_SWR+0, 0 
	MOVWF       _swr_a+0 
	MOVF        FARG_show_pwr_SWR+1, 0 
	MOVWF       _swr_a+1 
L_show_pwr345:
;main.c,653 :: 		a = 1.0 / ((swr_a / 100.0 + 100.0 / swr_a) * Fid_loss / 10.0 * 0.115 + 1.0); // Fider loss
	MOVF        _swr_a+0, 0 
	MOVWF       R0 
	MOVF        _swr_a+1, 0 
	MOVWF       R1 
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__show_pwr+4 
	MOVF        R1, 0 
	MOVWF       FLOC__show_pwr+5 
	MOVF        R2, 0 
	MOVWF       FLOC__show_pwr+6 
	MOVF        R3, 0 
	MOVWF       FLOC__show_pwr+7 
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       72
	MOVWF       R6 
	MOVLW       133
	MOVWF       R7 
	MOVF        FLOC__show_pwr+4, 0 
	MOVWF       R0 
	MOVF        FLOC__show_pwr+5, 0 
	MOVWF       R1 
	MOVF        FLOC__show_pwr+6, 0 
	MOVWF       R2 
	MOVF        FLOC__show_pwr+7, 0 
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__show_pwr+0 
	MOVF        R1, 0 
	MOVWF       FLOC__show_pwr+1 
	MOVF        R2, 0 
	MOVWF       FLOC__show_pwr+2 
	MOVF        R3, 0 
	MOVWF       FLOC__show_pwr+3 
	MOVF        FLOC__show_pwr+4, 0 
	MOVWF       R4 
	MOVF        FLOC__show_pwr+5, 0 
	MOVWF       R5 
	MOVF        FLOC__show_pwr+6, 0 
	MOVWF       R6 
	MOVF        FLOC__show_pwr+7, 0 
	MOVWF       R7 
	MOVLW       0
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       72
	MOVWF       R2 
	MOVLW       133
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        FLOC__show_pwr+0, 0 
	MOVWF       R4 
	MOVF        FLOC__show_pwr+1, 0 
	MOVWF       R5 
	MOVF        FLOC__show_pwr+2, 0 
	MOVWF       R6 
	MOVF        FLOC__show_pwr+3, 0 
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__show_pwr+0 
	MOVF        R1, 0 
	MOVWF       FLOC__show_pwr+1 
	MOVF        R2, 0 
	MOVWF       FLOC__show_pwr+2 
	MOVF        R3, 0 
	MOVWF       FLOC__show_pwr+3 
	MOVF        _Fid_loss+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        FLOC__show_pwr+0, 0 
	MOVWF       R4 
	MOVF        FLOC__show_pwr+1, 0 
	MOVWF       R5 
	MOVF        FLOC__show_pwr+2, 0 
	MOVWF       R6 
	MOVF        FLOC__show_pwr+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       32
	MOVWF       R6 
	MOVLW       130
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVLW       31
	MOVWF       R4 
	MOVLW       133
	MOVWF       R5 
	MOVLW       107
	MOVWF       R6 
	MOVLW       123
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       R4 
	MOVF        R1, 0 
	MOVWF       R5 
	MOVF        R2, 0 
	MOVWF       R6 
	MOVF        R3, 0 
	MOVWF       R7 
	MOVLW       0
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       0
	MOVWF       R2 
	MOVLW       127
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__show_pwr+8 
	MOVF        R1, 0 
	MOVWF       FLOC__show_pwr+9 
	MOVF        R2, 0 
	MOVWF       FLOC__show_pwr+10 
	MOVF        R3, 0 
	MOVWF       FLOC__show_pwr+11 
	MOVF        FLOC__show_pwr+8, 0 
	MOVWF       show_pwr_a_L0+0 
	MOVF        FLOC__show_pwr+9, 0 
	MOVWF       show_pwr_a_L0+1 
	MOVF        FLOC__show_pwr+10, 0 
	MOVWF       show_pwr_a_L0+2 
	MOVF        FLOC__show_pwr+11, 0 
	MOVWF       show_pwr_a_L0+3 
;main.c,654 :: 		b = 4.0 / (2.0 + SWR / 100.0 + 100.0 / SWR); // SWR loss
	MOVF        FARG_show_pwr_SWR+0, 0 
	MOVWF       R0 
	MOVF        FARG_show_pwr_SWR+1, 0 
	MOVWF       R1 
	CALL        _int2double+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__show_pwr+4 
	MOVF        R1, 0 
	MOVWF       FLOC__show_pwr+5 
	MOVF        R2, 0 
	MOVWF       FLOC__show_pwr+6 
	MOVF        R3, 0 
	MOVWF       FLOC__show_pwr+7 
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       72
	MOVWF       R6 
	MOVLW       133
	MOVWF       R7 
	MOVF        FLOC__show_pwr+4, 0 
	MOVWF       R0 
	MOVF        FLOC__show_pwr+5, 0 
	MOVWF       R1 
	MOVF        FLOC__show_pwr+6, 0 
	MOVWF       R2 
	MOVF        FLOC__show_pwr+7, 0 
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       128
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__show_pwr+0 
	MOVF        R1, 0 
	MOVWF       FLOC__show_pwr+1 
	MOVF        R2, 0 
	MOVWF       FLOC__show_pwr+2 
	MOVF        R3, 0 
	MOVWF       FLOC__show_pwr+3 
	MOVF        FLOC__show_pwr+4, 0 
	MOVWF       R4 
	MOVF        FLOC__show_pwr+5, 0 
	MOVWF       R5 
	MOVF        FLOC__show_pwr+6, 0 
	MOVWF       R6 
	MOVF        FLOC__show_pwr+7, 0 
	MOVWF       R7 
	MOVLW       0
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       72
	MOVWF       R2 
	MOVLW       133
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        FLOC__show_pwr+0, 0 
	MOVWF       R4 
	MOVF        FLOC__show_pwr+1, 0 
	MOVWF       R5 
	MOVF        FLOC__show_pwr+2, 0 
	MOVWF       R6 
	MOVF        FLOC__show_pwr+3, 0 
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       R4 
	MOVF        R1, 0 
	MOVWF       R5 
	MOVF        R2, 0 
	MOVWF       R6 
	MOVF        R3, 0 
	MOVWF       R7 
	MOVLW       0
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       0
	MOVWF       R2 
	MOVLW       129
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       show_pwr_b_L0+0 
	MOVF        R1, 0 
	MOVWF       show_pwr_b_L0+1 
	MOVF        R2, 0 
	MOVWF       show_pwr_b_L0+2 
	MOVF        R3, 0 
	MOVWF       show_pwr_b_L0+3 
;main.c,655 :: 		if (a >= 1.0)
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	MOVF        FLOC__show_pwr+8, 0 
	MOVWF       R0 
	MOVF        FLOC__show_pwr+9, 0 
	MOVWF       R1 
	MOVF        FLOC__show_pwr+10, 0 
	MOVWF       R2 
	MOVF        FLOC__show_pwr+11, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr346
;main.c,656 :: 		a = 1.0;
	MOVLW       0
	MOVWF       show_pwr_a_L0+0 
	MOVLW       0
	MOVWF       show_pwr_a_L0+1 
	MOVLW       0
	MOVWF       show_pwr_a_L0+2 
	MOVLW       127
	MOVWF       show_pwr_a_L0+3 
L_show_pwr346:
;main.c,657 :: 		if (b >= 1.0)
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       0
	MOVWF       R6 
	MOVLW       127
	MOVWF       R7 
	MOVF        show_pwr_b_L0+0, 0 
	MOVWF       R0 
	MOVF        show_pwr_b_L0+1, 0 
	MOVWF       R1 
	MOVF        show_pwr_b_L0+2, 0 
	MOVWF       R2 
	MOVF        show_pwr_b_L0+3, 0 
	MOVWF       R3 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr347
;main.c,658 :: 		b = 1.0;
	MOVLW       0
	MOVWF       show_pwr_b_L0+0 
	MOVLW       0
	MOVWF       show_pwr_b_L0+1 
	MOVLW       0
	MOVWF       show_pwr_b_L0+2 
	MOVLW       127
	MOVWF       show_pwr_b_L0+3 
L_show_pwr347:
;main.c,659 :: 		p_ant = Power * a * b;
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       R0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       R1 
	CALL        _int2double+0, 0
	MOVF        show_pwr_a_L0+0, 0 
	MOVWF       R4 
	MOVF        show_pwr_a_L0+1, 0 
	MOVWF       R5 
	MOVF        show_pwr_a_L0+2, 0 
	MOVWF       R6 
	MOVF        show_pwr_a_L0+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        show_pwr_b_L0+0, 0 
	MOVWF       R4 
	MOVF        show_pwr_b_L0+1, 0 
	MOVWF       R5 
	MOVF        show_pwr_b_L0+2, 0 
	MOVWF       R6 
	MOVF        show_pwr_b_L0+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       show_pwr_p_ant_L0+0 
	MOVF        R1, 0 
	MOVWF       show_pwr_p_ant_L0+1 
;main.c,660 :: 		eff = a * b * 100;
	MOVF        show_pwr_a_L0+0, 0 
	MOVWF       R0 
	MOVF        show_pwr_a_L0+1, 0 
	MOVWF       R1 
	MOVF        show_pwr_a_L0+2, 0 
	MOVWF       R2 
	MOVF        show_pwr_a_L0+3, 0 
	MOVWF       R3 
	MOVF        show_pwr_b_L0+0, 0 
	MOVWF       R4 
	MOVF        show_pwr_b_L0+1, 0 
	MOVWF       R5 
	MOVF        show_pwr_b_L0+2, 0 
	MOVWF       R6 
	MOVF        show_pwr_b_L0+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       72
	MOVWF       R6 
	MOVLW       133
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       show_pwr_eff_L0+0 
	MOVF        R1, 0 
	MOVWF       show_pwr_eff_L0+1 
	MOVF        R2, 0 
	MOVWF       show_pwr_eff_L0+2 
	MOVF        R3, 0 
	MOVWF       show_pwr_eff_L0+3 
;main.c,661 :: 		if (eff >= 100)
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       72
	MOVWF       R6 
	MOVLW       133
	MOVWF       R7 
	CALL        _Compare_Double+0, 0
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr348
;main.c,662 :: 		eff = 99;
	MOVLW       0
	MOVWF       show_pwr_eff_L0+0 
	MOVLW       0
	MOVWF       show_pwr_eff_L0+1 
	MOVLW       70
	MOVWF       show_pwr_eff_L0+2 
	MOVLW       133
	MOVWF       show_pwr_eff_L0+3 
L_show_pwr348:
;main.c,664 :: 		if (P_High == 0) {
	MOVF        main_P_High+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr349
;main.c,665 :: 		if (p_ant >= 100) { // > 10 W
	MOVLW       128
	XORWF       show_pwr_p_ant_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr639
	MOVLW       100
	SUBWF       show_pwr_p_ant_L0+0, 0 
L__show_pwr639:
	BTFSS       STATUS+0, 0 
	GOTO        L_show_pwr350
;main.c,666 :: 		p_ant += 5; // rounding to 1 W
	MOVLW       5
	ADDWF       show_pwr_p_ant_L0+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      show_pwr_p_ant_L0+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       show_pwr_p_ant_L0+0 
	MOVF        R1, 0 
	MOVWF       show_pwr_p_ant_L0+1 
;main.c,667 :: 		IntToStr(p_ant, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,668 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,669 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,670 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,671 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,672 :: 		} else {
	GOTO        L_show_pwr351
L_show_pwr350:
;main.c,673 :: 		IntToStr(p_ant, work_str);
	MOVF        show_pwr_p_ant_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_p_ant_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,674 :: 		if (work_str[4] != ' ')
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr352
;main.c,675 :: 		work_str_2[0] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_pwr353
L_show_pwr352:
;main.c,677 :: 		work_str_2[0] = '0';
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_pwr353:
;main.c,678 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,679 :: 		if (work_str[5] != ' ')
	MOVF        _work_str+5, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr354
;main.c,680 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_show_pwr355
L_show_pwr354:
;main.c,682 :: 		work_str_2[2] = '0';
	MOVLW       48
	MOVWF       _work_str_2+2 
L_show_pwr355:
;main.c,683 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,684 :: 		}
L_show_pwr351:
;main.c,685 :: 		} else { // High Power
	GOTO        L_show_pwr356
L_show_pwr349:
;main.c,686 :: 		if (p_ant < 999) { // 0 - 1500 Watts
	MOVLW       128
	XORWF       show_pwr_p_ant_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr640
	MOVLW       231
	SUBWF       show_pwr_p_ant_L0+0, 0 
L__show_pwr640:
	BTFSC       STATUS+0, 0 
	GOTO        L_show_pwr357
;main.c,687 :: 		IntToStr(p_ant, work_str);
	MOVF        show_pwr_p_ant_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_p_ant_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,688 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,689 :: 		work_str_2[1] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+1 
;main.c,690 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,691 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,692 :: 		} else {
	GOTO        L_show_pwr358
L_show_pwr357:
;main.c,693 :: 		IntToStr(p_ant, work_str);
	MOVF        show_pwr_p_ant_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_p_ant_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,694 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,695 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,696 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,697 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,698 :: 		}
L_show_pwr358:
;main.c,699 :: 		}
L_show_pwr356:
;main.c,700 :: 		if (type == 4 | type == 5)
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr359
;main.c,701 :: 		led_wr_str(4, 16 + 4 * 12, work_str_2, 4); // 128*64 OLED
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       64
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr360
L_show_pwr359:
;main.c,702 :: 		else if (type == 2 | type == 3)
	MOVF        _type+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr361
;main.c,703 :: 		led_wr_str(0, 13, work_str_2, 4); // 128*32
	CLRF        FARG_led_wr_str+0 
	MOVLW       13
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr362
L_show_pwr361:
;main.c,704 :: 		else if (type == 1)
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr363
;main.c,705 :: 		led_wr_str(0, 12, work_str_2, 4); // 1602
	CLRF        FARG_led_wr_str+0 
	MOVLW       12
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_pwr363:
L_show_pwr362:
L_show_pwr360:
;main.c,707 :: 		IntToStr(eff, work_str);
	MOVF        show_pwr_eff_L0+0, 0 
	MOVWF       R0 
	MOVF        show_pwr_eff_L0+1, 0 
	MOVWF       R1 
	MOVF        show_pwr_eff_L0+2, 0 
	MOVWF       R2 
	MOVF        show_pwr_eff_L0+3, 0 
	MOVWF       R3 
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,708 :: 		work_str_2[0] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
;main.c,709 :: 		work_str_2[1] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+1 
;main.c,710 :: 		if (type == 4 | type == 5)
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr364
;main.c,711 :: 		led_wr_str(6, 16 + 5 * 12, work_str_2, 2);
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       76
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr365
L_show_pwr364:
;main.c,712 :: 		else if (type == 2 | type == 3)
	MOVF        _type+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr366
;main.c,713 :: 		led_wr_str(1, 14, work_str_2, 2);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       14
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_pwr367
L_show_pwr366:
;main.c,714 :: 		else if (type == 1)
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr368
;main.c,715 :: 		led_wr_str(1, 13, work_str_2, 2);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       13
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_pwr368:
L_show_pwr367:
L_show_pwr365:
;main.c,716 :: 		}
L_show_pwr344:
;main.c,717 :: 		}
L_show_pwr330:
;main.c,718 :: 		asm CLRWDT;
	CLRWDT
;main.c,719 :: 		return;
;main.c,720 :: 		}
L_end_show_pwr:
	RETURN      0
; end of _show_pwr

_lcd_pwr:

;main.c,722 :: 		void lcd_pwr() {
;main.c,723 :: 		int p = 0;
	CLRF        lcd_pwr_p_L0+0 
	CLRF        lcd_pwr_p_L0+1 
	MOVLW       1
	MOVWF       lcd_pwr_SWR_fixed_L0+0 
	MOVLW       0
	MOVWF       lcd_pwr_SWR_fixed_L0+1 
;main.c,729 :: 		delta = Auto_delta - 100;
	MOVLW       100
	SUBWF       _Auto_delta+0, 0 
	MOVWF       lcd_pwr_delta_L0+0 
	MOVLW       0
	SUBWFB      _Auto_delta+1, 0 
	MOVWF       lcd_pwr_delta_L0+1 
;main.c,730 :: 		PWR = 0;
	CLRF        _PWR+0 
	CLRF        _PWR+1 
;main.c,731 :: 		asm CLRWDT;
	CLRWDT
;main.c,733 :: 		cnt = 120;
	MOVLW       120
	MOVWF       lcd_pwr_cnt_L0+0 
;main.c,734 :: 		for (peak_cnt = 0; peak_cnt < cnt; peak_cnt++) {
	CLRF        lcd_pwr_peak_cnt_L0+0 
L_lcd_pwr369:
	MOVF        lcd_pwr_cnt_L0+0, 0 
	SUBWF       lcd_pwr_peak_cnt_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_pwr370
;main.c,735 :: 		if (PORTB.B1 == 0 | PORTB.B2 == 0 | PORTB.B0 == 0) {
	BTFSC       PORTB+0, 1 
	GOTO        L__lcd_pwr642
	BSF         R6, 0 
	GOTO        L__lcd_pwr643
L__lcd_pwr642:
	BCF         R6, 0 
L__lcd_pwr643:
	BTFSC       PORTB+0, 2 
	GOTO        L__lcd_pwr644
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr645
L__lcd_pwr644:
	BCF         STATUS+0, 0 
L__lcd_pwr645:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr646
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr646
	BCF         R6, 0 
	GOTO        L__lcd_pwr647
L__lcd_pwr646:
	BSF         R6, 0 
L__lcd_pwr647:
	BTFSC       PORTB+0, 0 
	GOTO        L__lcd_pwr648
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr649
L__lcd_pwr648:
	BCF         STATUS+0, 0 
L__lcd_pwr649:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr650
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr650
	BCF         R6, 0 
	GOTO        L__lcd_pwr651
L__lcd_pwr650:
	BSF         R6, 0 
L__lcd_pwr651:
	BTFSS       R6, 0 
	GOTO        L_lcd_pwr372
;main.c,736 :: 		button_delay();
	CALL        _button_delay+0, 0
;main.c,737 :: 		if (but == 1) {
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr373
;main.c,738 :: 		but = 0;
	CLRF        _but+0 
;main.c,739 :: 		return;
	GOTO        L_end_lcd_pwr
;main.c,740 :: 		}
L_lcd_pwr373:
;main.c,741 :: 		}
L_lcd_pwr372:
;main.c,742 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.c,743 :: 		if (PWR > p) {
	MOVLW       128
	XORWF       lcd_pwr_p_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr652
	MOVF        _PWR+0, 0 
	SUBWF       lcd_pwr_p_L0+0, 0 
L__lcd_pwr652:
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_pwr374
;main.c,744 :: 		p = PWR;
	MOVF        _PWR+0, 0 
	MOVWF       lcd_pwr_p_L0+0 
	MOVF        _PWR+1, 0 
	MOVWF       lcd_pwr_p_L0+1 
;main.c,745 :: 		SWR_fixed = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       lcd_pwr_SWR_fixed_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       lcd_pwr_SWR_fixed_L0+1 
;main.c,746 :: 		}
L_lcd_pwr374:
;main.c,747 :: 		Delay_ms(3);
	MOVLW       16
	MOVWF       R12, 0
	MOVLW       148
	MOVWF       R13, 0
L_lcd_pwr375:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr375
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr375
	NOP
;main.c,734 :: 		for (peak_cnt = 0; peak_cnt < cnt; peak_cnt++) {
	INCF        lcd_pwr_peak_cnt_L0+0, 1 
;main.c,748 :: 		}
	GOTO        L_lcd_pwr369
L_lcd_pwr370:
;main.c,749 :: 		asm CLRWDT;
	CLRWDT
;main.c,750 :: 		Power = p;
	MOVF        lcd_pwr_p_L0+0, 0 
	MOVWF       _Power+0 
	MOVF        lcd_pwr_p_L0+1, 0 
	MOVWF       _Power+1 
;main.c,751 :: 		lcd_swr(SWR_fixed);
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_lcd_swr_swr+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_lcd_swr_swr+1 
	CALL        _lcd_swr+0, 0
;main.c,752 :: 		if (SWR_fixed >= 100) {
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr653
	MOVLW       100
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
L__lcd_pwr653:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr376
;main.c,753 :: 		dysp_on(); // dysplay ON
	CALL        _dysp_on+0, 0
;main.c,754 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF        _Dysp_delay+0, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        _dysp_cnt_mult+0, 0 
	MOVWF       R4 
	MOVF        _dysp_cnt_mult+1, 0 
	MOVWF       R5 
	MOVF        _dysp_cnt_mult+2, 0 
	MOVWF       R6 
	MOVF        _dysp_cnt_mult+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dysp_cnt+0 
	MOVF        R1, 0 
	MOVWF       _dysp_cnt+1 
;main.c,755 :: 		}
L_lcd_pwr376:
;main.c,757 :: 		if (Auto & SWR_fixed >= Auto_delta &
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _Auto_delta+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr654
	MOVF        _Auto_delta+0, 0 
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
L__lcd_pwr654:
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       _Auto+0, 0 
	MOVWF       R5 
;main.c,758 :: 		((SWR_fixed > SWR_fixed_old & (SWR_fixed - SWR_fixed_old) > delta) |
	MOVLW       128
	XORWF       _SWR_fixed_old+1, 0 
	MOVWF       R3 
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	SUBWF       R3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr655
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	SUBWF       _SWR_fixed_old+0, 0 
L__lcd_pwr655:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R3 
	MOVF        _SWR_fixed_old+0, 0 
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       R1 
	MOVF        _SWR_fixed_old+1, 0 
	SUBWFB      lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       lcd_pwr_delta_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr656
	MOVF        R1, 0 
	SUBWF       lcd_pwr_delta_L0+0, 0 
L__lcd_pwr656:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R3, 0 
	MOVWF       R4 
;main.c,759 :: 		(SWR_fixed < SWR_fixed_old & (SWR_fixed_old - SWR_fixed) > delta) |
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R3 
	MOVLW       128
	XORWF       _SWR_fixed_old+1, 0 
	SUBWF       R3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr657
	MOVF        _SWR_fixed_old+0, 0 
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
L__lcd_pwr657:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R3 
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	SUBWF       _SWR_fixed_old+0, 0 
	MOVWF       R1 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	SUBWFB      _SWR_fixed_old+1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       lcd_pwr_delta_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr658
	MOVF        R1, 0 
	SUBWF       lcd_pwr_delta_L0+0, 0 
L__lcd_pwr658:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R3, 0 
	ANDWF       R0, 1 
	MOVF        R0, 0 
	IORWF       R4, 0 
	MOVWF       R1 
;main.c,760 :: 		SWR_fixed_old == 999))
	MOVF        _SWR_fixed_old+1, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr659
	MOVLW       231
	XORWF       _SWR_fixed_old+0, 0 
L__lcd_pwr659:
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	MOVF        R5, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_pwr377
;main.c,761 :: 		Soft_tune = 1;
	MOVLW       1
	MOVWF       _Soft_tune+0 
L_lcd_pwr377:
;main.c,763 :: 		if (PORTB.B1 == 0 | PORTB.B2 == 0 | PORTB.B0 == 0) {
	BTFSC       PORTB+0, 1 
	GOTO        L__lcd_pwr660
	BSF         R6, 0 
	GOTO        L__lcd_pwr661
L__lcd_pwr660:
	BCF         R6, 0 
L__lcd_pwr661:
	BTFSC       PORTB+0, 2 
	GOTO        L__lcd_pwr662
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr663
L__lcd_pwr662:
	BCF         STATUS+0, 0 
L__lcd_pwr663:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr664
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr664
	BCF         R6, 0 
	GOTO        L__lcd_pwr665
L__lcd_pwr664:
	BSF         R6, 0 
L__lcd_pwr665:
	BTFSC       PORTB+0, 0 
	GOTO        L__lcd_pwr666
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr667
L__lcd_pwr666:
	BCF         STATUS+0, 0 
L__lcd_pwr667:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr668
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr668
	BCF         R6, 0 
	GOTO        L__lcd_pwr669
L__lcd_pwr668:
	BSF         R6, 0 
L__lcd_pwr669:
	BTFSS       R6, 0 
	GOTO        L_lcd_pwr378
;main.c,764 :: 		button_delay();
	CALL        _button_delay+0, 0
;main.c,765 :: 		if (but == 1) {
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr379
;main.c,766 :: 		but = 0;
	CLRF        _but+0 
;main.c,767 :: 		return;
	GOTO        L_end_lcd_pwr
;main.c,768 :: 		}
L_lcd_pwr379:
;main.c,769 :: 		} // Fast return if button pressed
L_lcd_pwr378:
;main.c,770 :: 		show_pwr(Power, SWR_fixed);
	MOVF        _Power+0, 0 
	MOVWF       FARG_show_pwr_Power+0 
	MOVF        _Power+1, 0 
	MOVWF       FARG_show_pwr_Power+1 
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_show_pwr_SWR+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_show_pwr_SWR+1 
	CALL        _show_pwr+0, 0
;main.c,772 :: 		if (PORTB.B1 == 0 | PORTB.B2 == 0 | PORTB.B0 == 0) {
	BTFSC       PORTB+0, 1 
	GOTO        L__lcd_pwr670
	BSF         R6, 0 
	GOTO        L__lcd_pwr671
L__lcd_pwr670:
	BCF         R6, 0 
L__lcd_pwr671:
	BTFSC       PORTB+0, 2 
	GOTO        L__lcd_pwr672
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr673
L__lcd_pwr672:
	BCF         STATUS+0, 0 
L__lcd_pwr673:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr674
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr674
	BCF         R6, 0 
	GOTO        L__lcd_pwr675
L__lcd_pwr674:
	BSF         R6, 0 
L__lcd_pwr675:
	BTFSC       PORTB+0, 0 
	GOTO        L__lcd_pwr676
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr677
L__lcd_pwr676:
	BCF         STATUS+0, 0 
L__lcd_pwr677:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr678
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr678
	BCF         R6, 0 
	GOTO        L__lcd_pwr679
L__lcd_pwr678:
	BSF         R6, 0 
L__lcd_pwr679:
	BTFSS       R6, 0 
	GOTO        L_lcd_pwr380
;main.c,773 :: 		button_delay();
	CALL        _button_delay+0, 0
;main.c,774 :: 		if (but == 1) {
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr381
;main.c,775 :: 		but = 0;
	CLRF        _but+0 
;main.c,776 :: 		return;
	GOTO        L_end_lcd_pwr
;main.c,777 :: 		}
L_lcd_pwr381:
;main.c,778 :: 		}
L_lcd_pwr380:
;main.c,779 :: 		asm CLRWDT;
	CLRWDT
;main.c,780 :: 		if (Overload == 1) {
	MOVF        main_Overload+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr382
;main.c,781 :: 		if (type == 4 | type == 5) { // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_pwr383
;main.c,782 :: 		led_wr_str(2, 16, "        ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr61_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr61_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,783 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr384:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr384
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr384
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr384
;main.c,784 :: 		led_wr_str(2, 16, "OVERLOAD", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr62_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr62_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,785 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr385:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr385
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr385
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr385
	NOP
	NOP
;main.c,786 :: 		asm CLRWDT;
	CLRWDT
;main.c,787 :: 		led_wr_str(2, 16, "        ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr63_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr63_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,788 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr386:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr386
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr386
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr386
	NOP
;main.c,789 :: 		asm CLRWDT;
	CLRWDT
;main.c,790 :: 		led_wr_str(2, 16, "OVERLOAD", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr64_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr64_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,791 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr387:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr387
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr387
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr387
	NOP
	NOP
;main.c,792 :: 		asm CLRWDT;
	CLRWDT
;main.c,793 :: 		led_wr_str(2, 16, "        ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr65_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr65_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,794 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr388:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr388
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr388
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr388
	NOP
;main.c,795 :: 		asm CLRWDT;
	CLRWDT
;main.c,796 :: 		led_wr_str(2, 16, "OVERLOAD", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr66_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr66_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,797 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr389:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr389
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr389
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr389
	NOP
	NOP
;main.c,798 :: 		asm CLRWDT;
	CLRWDT
;main.c,799 :: 		led_wr_str(2, 16, "        ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr67_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr67_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,800 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr390:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr390
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr390
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr390
;main.c,801 :: 		led_wr_str(2, 16, "SWR=    ", 8);
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr68_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr68_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,802 :: 		} else if (type != 0) { // 1602  & 128*32// 1602
	GOTO        L_lcd_pwr391
L_lcd_pwr383:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_pwr392
;main.c,803 :: 		led_wr_str(1, 0, "        ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr69_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr69_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,804 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr393:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr393
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr393
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr393
;main.c,805 :: 		led_wr_str(1, 0, "OVERLOAD", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr70_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr70_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,806 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr394:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr394
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr394
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr394
	NOP
	NOP
;main.c,807 :: 		asm CLRWDT;
	CLRWDT
;main.c,808 :: 		led_wr_str(1, 0, "        ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr71_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr71_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,809 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr395:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr395
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr395
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr395
	NOP
;main.c,810 :: 		asm CLRWDT;
	CLRWDT
;main.c,811 :: 		led_wr_str(1, 0, "OVERLOAD", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr72_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr72_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,812 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr396:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr396
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr396
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr396
	NOP
	NOP
;main.c,813 :: 		asm CLRWDT;
	CLRWDT
;main.c,814 :: 		led_wr_str(1, 0, "        ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr73_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr73_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,815 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr397:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr397
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr397
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr397
	NOP
;main.c,816 :: 		asm CLRWDT;
	CLRWDT
;main.c,817 :: 		led_wr_str(1, 0, "OVERLOAD", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr74_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr74_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,818 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr398:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr398
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr398
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr398
	NOP
	NOP
;main.c,819 :: 		asm CLRWDT;
	CLRWDT
;main.c,820 :: 		led_wr_str(1, 0, "        ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr75_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr75_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,821 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr399:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr399
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr399
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr399
;main.c,822 :: 		led_wr_str(1, 0, "SWR=    ", 8);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr76_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr76_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,823 :: 		}
L_lcd_pwr392:
L_lcd_pwr391:
;main.c,824 :: 		asm CLRWDT;
	CLRWDT
;main.c,825 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,826 :: 		lcd_swr(SWR_fixed);
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_lcd_swr_swr+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_lcd_swr_swr+1 
	CALL        _lcd_swr+0, 0
;main.c,827 :: 		}
L_lcd_pwr382:
;main.c,828 :: 		return;
;main.c,829 :: 		}
L_end_lcd_pwr:
	RETURN      0
; end of _lcd_pwr

_lcd_ind:

;main.c,833 :: 		void lcd_ind() {
;main.c,835 :: 		asm CLRWDT;
	CLRWDT
;main.c,837 :: 		work_int = 0;
	CLRF        _work_int+0 
	CLRF        _work_int+1 
;main.c,838 :: 		if (ind.B0)
	BTFSS       main_ind+0, 0 
	GOTO        L_lcd_ind401
;main.c,839 :: 		work_int += Ind1;
	MOVF        _Ind1+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind1+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind401:
;main.c,840 :: 		if (ind.B1)
	BTFSS       main_ind+0, 1 
	GOTO        L_lcd_ind402
;main.c,841 :: 		work_int += Ind2;
	MOVF        _Ind2+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind2+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind402:
;main.c,842 :: 		if (ind.B2)
	BTFSS       main_ind+0, 2 
	GOTO        L_lcd_ind403
;main.c,843 :: 		work_int += Ind3;
	MOVF        _Ind3+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind3+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind403:
;main.c,844 :: 		if (ind.B3)
	BTFSS       main_ind+0, 3 
	GOTO        L_lcd_ind404
;main.c,845 :: 		work_int += Ind4;
	MOVF        _Ind4+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind4+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind404:
;main.c,846 :: 		if (ind.B4)
	BTFSS       main_ind+0, 4 
	GOTO        L_lcd_ind405
;main.c,847 :: 		work_int += Ind5;
	MOVF        _Ind5+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind5+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind405:
;main.c,848 :: 		if (ind.B5)
	BTFSS       main_ind+0, 5 
	GOTO        L_lcd_ind406
;main.c,849 :: 		work_int += Ind6;
	MOVF        _Ind6+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind6+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind406:
;main.c,850 :: 		if (ind.B6)
	BTFSS       main_ind+0, 6 
	GOTO        L_lcd_ind407
;main.c,851 :: 		work_int += Ind7;
	MOVF        _Ind7+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind7+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind407:
;main.c,852 :: 		if (work_int > 9999) { // more then 9999 nH
	MOVLW       128
	XORLW       39
	MOVWF       R0 
	MOVLW       128
	XORWF       _work_int+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_ind681
	MOVF        _work_int+0, 0 
	SUBLW       15
L__lcd_ind681:
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_ind408
;main.c,853 :: 		work_int += 50; // round
	MOVLW       50
	ADDWF       _work_int+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      _work_int+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _work_int+0 
	MOVF        R1, 0 
	MOVWF       _work_int+1 
;main.c,854 :: 		IntToStr(work_int, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,855 :: 		work_str_2[0] = work_str[1];
	MOVF        _work_str+1, 0 
	MOVWF       _work_str_2+0 
;main.c,856 :: 		work_str_2[1] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+1 
;main.c,857 :: 		work_str_2[2] = '.';
	MOVLW       46
	MOVWF       _work_str_2+2 
;main.c,858 :: 		work_str_2[3] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+3 
;main.c,859 :: 		} else {
	GOTO        L_lcd_ind409
L_lcd_ind408:
;main.c,860 :: 		IntToStr(work_int, work_str);
	MOVF        _work_int+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _work_int+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,861 :: 		if (work_str[2] != ' ')
	MOVF        _work_str+2, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind410
;main.c,862 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_lcd_ind411
L_lcd_ind410:
;main.c,864 :: 		work_str_2[0] = '0';
	MOVLW       48
	MOVWF       _work_str_2+0 
L_lcd_ind411:
;main.c,865 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,866 :: 		if (work_str[3] != ' ')
	MOVF        _work_str+3, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind412
;main.c,867 :: 		work_str_2[2] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_lcd_ind413
L_lcd_ind412:
;main.c,869 :: 		work_str_2[2] = '0';
	MOVLW       48
	MOVWF       _work_str_2+2 
L_lcd_ind413:
;main.c,870 :: 		if (work_str[4] != ' ')
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind414
;main.c,871 :: 		work_str_2[3] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+3 
	GOTO        L_lcd_ind415
L_lcd_ind414:
;main.c,873 :: 		work_str_2[3] = '0';
	MOVLW       48
	MOVWF       _work_str_2+3 
L_lcd_ind415:
;main.c,874 :: 		}
L_lcd_ind409:
;main.c,875 :: 		if (type == 4 | type == 5) { // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind416
;main.c,876 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind417
;main.c,877 :: 		column = 4;
	MOVLW       4
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind418
L_lcd_ind417:
;main.c,879 :: 		column = 6;
	MOVLW       6
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind418:
;main.c,880 :: 		led_wr_str(column, 16, "L=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr77_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr77_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,881 :: 		led_wr_str(column, 16 + 6 * 12, "uH", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       88
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr78_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr78_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,882 :: 		led_wr_str(column, 16 + 2 * 12, work_str_2, 4);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       40
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,883 :: 		} else if (type == 2 | type == 3) { // 128*32 OLED
	GOTO        L_lcd_ind419
L_lcd_ind416:
	MOVF        _type+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind420
;main.c,884 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind421
;main.c,885 :: 		column = 0;
	CLRF        lcd_ind_column_L0+0 
	GOTO        L_lcd_ind422
L_lcd_ind421:
;main.c,887 :: 		column = 1;
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind422:
;main.c,888 :: 		led_wr_str(column, 9, "L=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr79_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr79_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,889 :: 		led_wr_str(column, 15, "uH", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       15
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr80_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr80_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,890 :: 		led_wr_str(column, 11, work_str_2, 4);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       11
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,891 :: 		} else if (type == 1) { //  1602 LCD
	GOTO        L_lcd_ind423
L_lcd_ind420:
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind424
;main.c,892 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind425
;main.c,893 :: 		column = 0;
	CLRF        lcd_ind_column_L0+0 
	GOTO        L_lcd_ind426
L_lcd_ind425:
;main.c,895 :: 		column = 1;
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind426:
;main.c,896 :: 		led_wr_str(column, 9, "L=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr81_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr81_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,897 :: 		led_wr_str(column, 15, "u", 1);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       15
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr82_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr82_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,898 :: 		led_wr_str(column, 11, work_str_2, 4);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       11
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,899 :: 		}
L_lcd_ind424:
L_lcd_ind423:
L_lcd_ind419:
;main.c,901 :: 		asm CLRWDT;
	CLRWDT
;main.c,903 :: 		work_int = 0;
	CLRF        _work_int+0 
	CLRF        _work_int+1 
;main.c,904 :: 		if (cap.B0)
	BTFSS       main_cap+0, 0 
	GOTO        L_lcd_ind428
;main.c,905 :: 		work_int += Cap1;
	MOVF        _Cap1+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap1+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind428:
;main.c,906 :: 		if (cap.B1)
	BTFSS       main_cap+0, 1 
	GOTO        L_lcd_ind429
;main.c,907 :: 		work_int += Cap2;
	MOVF        _Cap2+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap2+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind429:
;main.c,908 :: 		if (cap.B2)
	BTFSS       main_cap+0, 2 
	GOTO        L_lcd_ind430
;main.c,909 :: 		work_int += Cap3;
	MOVF        _Cap3+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap3+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind430:
;main.c,910 :: 		if (cap.B3)
	BTFSS       main_cap+0, 3 
	GOTO        L_lcd_ind431
;main.c,911 :: 		work_int += Cap4;
	MOVF        _Cap4+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap4+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind431:
;main.c,912 :: 		if (cap.B4)
	BTFSS       main_cap+0, 4 
	GOTO        L_lcd_ind432
;main.c,913 :: 		work_int += Cap5;
	MOVF        _Cap5+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap5+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind432:
;main.c,914 :: 		if (cap.B5)
	BTFSS       main_cap+0, 5 
	GOTO        L_lcd_ind433
;main.c,915 :: 		work_int += Cap6;
	MOVF        _Cap6+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap6+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind433:
;main.c,916 :: 		if (cap.B6)
	BTFSS       main_cap+0, 6 
	GOTO        L_lcd_ind434
;main.c,917 :: 		work_int += Cap7;
	MOVF        _Cap7+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap7+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind434:
;main.c,918 :: 		if (cap.B7)
	BTFSS       main_cap+0, 7 
	GOTO        L_lcd_ind435
;main.c,919 :: 		work_int += Cap8;
	MOVF        _Cap8+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap8+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind435:
;main.c,922 :: 		IntToStr(work_int, work_str);
	MOVF        _work_int+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _work_int+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,923 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,924 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,925 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,926 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,928 :: 		if (type == 4 | type == 5) { // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind436
;main.c,929 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind437
;main.c,930 :: 		column = 6;
	MOVLW       6
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind438
L_lcd_ind437:
;main.c,932 :: 		column = 4;
	MOVLW       4
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind438:
;main.c,933 :: 		led_wr_str(column, 16, "C=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr83_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr83_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,934 :: 		led_wr_str(column, 16 + 6 * 12, "pF", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       88
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr84_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr84_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,935 :: 		led_wr_str(column, 16 + 2 * 12, work_str_2, 4);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       40
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,936 :: 		} else if (type == 2 | type == 3) { // 128*32 OLED
	GOTO        L_lcd_ind439
L_lcd_ind436:
	MOVF        _type+0, 0 
	XORLW       2
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       3
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind440
;main.c,937 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind441
;main.c,938 :: 		column = 1;
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind442
L_lcd_ind441:
;main.c,940 :: 		column = 0;
	CLRF        lcd_ind_column_L0+0 
L_lcd_ind442:
;main.c,941 :: 		led_wr_str(column, 9, "C=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr85_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr85_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,942 :: 		led_wr_str(column, 15, "pF", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       15
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr86_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr86_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,943 :: 		led_wr_str(column, 11, work_str_2, 4);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       11
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,944 :: 		} else if (type == 1) { // 1602 LCD
	GOTO        L_lcd_ind443
L_lcd_ind440:
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind444
;main.c,945 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind445
;main.c,946 :: 		column = 1;
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind446
L_lcd_ind445:
;main.c,948 :: 		column = 0;
	CLRF        lcd_ind_column_L0+0 
L_lcd_ind446:
;main.c,949 :: 		led_wr_str(column, 9, "C=", 2);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr87_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr87_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       2
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,950 :: 		led_wr_str(column, 15, "p", 1);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       15
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr88_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr88_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,951 :: 		led_wr_str(column, 11, work_str_2, 4);
	MOVF        lcd_ind_column_L0+0, 0 
	MOVWF       FARG_led_wr_str+0 
	MOVLW       11
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,952 :: 		}
L_lcd_ind444:
L_lcd_ind443:
L_lcd_ind439:
;main.c,954 :: 		asm CLRWDT;
	CLRWDT
;main.c,955 :: 		return;
;main.c,956 :: 		}
L_end_lcd_ind:
	RETURN      0
; end of _lcd_ind

_Test_init:

;main.c,958 :: 		void Test_init(void) { // Test mode
;main.c,959 :: 		if (type == 4 | type == 5) // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init447
;main.c,960 :: 		led_wr_str(0, 10, "TEST MODE", 9);
	CLRF        FARG_led_wr_str+0 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr89_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr89_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_Test_init448
L_Test_init447:
;main.c,961 :: 		else if (type != 0) // 1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init449
;main.c,962 :: 		led_wr_str(0, 3, "TEST MODE", 9);
	CLRF        FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr90_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr90_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_Test_init449:
L_Test_init448:
;main.c,963 :: 		asm CLRWDT;
	CLRWDT
;main.c,964 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init450:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init450
	DECFSZ      R12, 1, 1
	BRA         L_Test_init450
	DECFSZ      R11, 1, 1
	BRA         L_Test_init450
	NOP
	NOP
;main.c,965 :: 		asm CLRWDT;
	CLRWDT
;main.c,966 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init451:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init451
	DECFSZ      R12, 1, 1
	BRA         L_Test_init451
	DECFSZ      R11, 1, 1
	BRA         L_Test_init451
	NOP
	NOP
;main.c,967 :: 		asm CLRWDT;
	CLRWDT
;main.c,968 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init452:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init452
	DECFSZ      R12, 1, 1
	BRA         L_Test_init452
	DECFSZ      R11, 1, 1
	BRA         L_Test_init452
	NOP
	NOP
;main.c,969 :: 		asm CLRWDT;
	CLRWDT
;main.c,970 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init453:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init453
	DECFSZ      R12, 1, 1
	BRA         L_Test_init453
	DECFSZ      R11, 1, 1
	BRA         L_Test_init453
	NOP
	NOP
;main.c,971 :: 		asm CLRWDT;
	CLRWDT
;main.c,972 :: 		if (type == 4 | type == 5) // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init454
;main.c,973 :: 		led_wr_str(0, 10, "         ", 9);
	CLRF        FARG_led_wr_str+0 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr91_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr91_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_Test_init455
L_Test_init454:
;main.c,974 :: 		else if (type != 0) // 1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init456
;main.c,975 :: 		led_wr_str(0, 3, "         ", 9);
	CLRF        FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr92_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr92_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       9
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_Test_init456:
L_Test_init455:
;main.c,976 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.c,977 :: 		SW = 1; // C to OUT
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,978 :: 		set_sw(SW);
	MOVLW       1
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,979 :: 		EEPROM_Write(255 - mem_offset * 5, cap);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       255
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_cap+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,980 :: 		EEPROM_Write(254 - mem_offset * 5, ind);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       254
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_ind+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,981 :: 		EEPROM_Write(253 - mem_offset * 5, SW);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       253
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        main_SW+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,983 :: 		if (type == 4 | type == 5) // 128*64 OLED
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init457
;main.c,984 :: 		led_wr_str(0, 16 + 12 * 8, "l", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       112
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr93_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr93_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_Test_init458
L_Test_init457:
;main.c,985 :: 		else if (type != 0) // 1602 LCD or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init459
;main.c,986 :: 		led_wr_str(0, 8, "l", 1);
	CLRF        FARG_led_wr_str+0 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr94_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr94_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_Test_init459:
L_Test_init458:
;main.c,988 :: 		lcd_prep_short = 1;
	MOVLW       1
	MOVWF       _lcd_prep_short+0 
;main.c,989 :: 		lcd_prep();
	CALL        _lcd_prep+0, 0
;main.c,990 :: 		return;
;main.c,991 :: 		}
L_end_Test_init:
	RETURN      0
; end of _Test_init

_cells_init:

;main.c,993 :: 		void cells_init(void) {
;main.c,995 :: 		asm CLRWDT;
	CLRWDT
;main.c,997 :: 		type = EEPROM_Read(1); // type of display
	MOVLW       1
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _type+0 
;main.c,998 :: 		if (EEPROM_Read(2) == 1)
	MOVLW       2
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_cells_init460
;main.c,999 :: 		Auto = 1;
	MOVLW       1
	MOVWF       _Auto+0 
L_cells_init460:
;main.c,1000 :: 		Rel_Del = Bcd2Dec(EEPROM_Read(3)); // Relay's Delay
	MOVLW       3
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       main_Rel_Del+0 
	MOVLW       0
	MOVWF       main_Rel_Del+1 
;main.c,1001 :: 		Auto_delta = Bcd2Dec(EEPROM_Read(4)) * 10; // Auto_delta
	MOVLW       4
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       10
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       _Auto_delta+0 
	MOVF        PRODH+0, 0 
	MOVWF       _Auto_delta+1 
;main.c,1002 :: 		min_for_start = Bcd2Dec(EEPROM_Read(5)) * 10; // P_min_for_start
	MOVLW       5
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       10
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       main_min_for_start+0 
	MOVF        PRODH+0, 0 
	MOVWF       main_min_for_start+1 
;main.c,1003 :: 		max_for_start = Bcd2Dec(EEPROM_Read(6)) * 10; // P_max_for_start
	MOVLW       6
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       10
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       main_max_for_start+0 
	MOVF        PRODH+0, 0 
	MOVWF       main_max_for_start+1 
;main.c,1006 :: 		max_swr = Bcd2Dec(EEPROM_Read(9)) * 10; // Max SWR
	MOVLW       9
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       10
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       main_max_swr+0 
	MOVF        PRODH+0, 0 
	MOVWF       main_max_swr+1 
;main.c,1007 :: 		L_q = EEPROM_Read(10);
	MOVLW       10
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_L_q+0 
;main.c,1008 :: 		L_linear = EEPROM_Read(11);
	MOVLW       11
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_L_linear+0 
;main.c,1009 :: 		C_q = EEPROM_Read(12);
	MOVLW       12
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_C_q+0 
;main.c,1010 :: 		C_linear = EEPROM_Read(13);
	MOVLW       13
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_C_linear+0 
;main.c,1011 :: 		D_correction = EEPROM_Read(14);
	MOVLW       14
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_D_correction+0 
;main.c,1012 :: 		L_invert = EEPROM_Read(15);
	MOVLW       15
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_L_invert+0 
;main.c,1014 :: 		asm CLRWDT;
	CLRWDT
;main.c,1015 :: 		Ind1 = Bcd2Dec(EEPROM_Read(16)) * 100 + Bcd2Dec(EEPROM_Read(17)); // Ind1
	MOVLW       16
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       17
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind1+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind1+1 
;main.c,1016 :: 		Ind2 = Bcd2Dec(EEPROM_Read(18)) * 100 + Bcd2Dec(EEPROM_Read(19)); // Ind2
	MOVLW       18
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       19
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind2+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind2+1 
;main.c,1017 :: 		Ind3 = Bcd2Dec(EEPROM_Read(20)) * 100 + Bcd2Dec(EEPROM_Read(21)); // Ind3
	MOVLW       20
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       21
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind3+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind3+1 
;main.c,1018 :: 		Ind4 = Bcd2Dec(EEPROM_Read(22)) * 100 + Bcd2Dec(EEPROM_Read(23)); // Ind4
	MOVLW       22
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       23
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind4+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind4+1 
;main.c,1019 :: 		Ind5 = Bcd2Dec(EEPROM_Read(24)) * 100 + Bcd2Dec(EEPROM_Read(25)); // Ind5
	MOVLW       24
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       25
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind5+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind5+1 
;main.c,1020 :: 		Ind6 = Bcd2Dec(EEPROM_Read(26)) * 100 + Bcd2Dec(EEPROM_Read(27)); // Ind6
	MOVLW       26
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       27
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind6+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind6+1 
;main.c,1021 :: 		Ind7 = Bcd2Dec(EEPROM_Read(28)) * 100 + Bcd2Dec(EEPROM_Read(29)); // Ind7
	MOVLW       28
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       29
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Ind7+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Ind7+1 
;main.c,1023 :: 		Cap1 = Bcd2Dec(EEPROM_Read(32)) * 100 + Bcd2Dec(EEPROM_Read(33)); // Cap1
	MOVLW       32
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       33
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap1+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap1+1 
;main.c,1024 :: 		Cap2 = Bcd2Dec(EEPROM_Read(34)) * 100 + Bcd2Dec(EEPROM_Read(35)); // Cap2
	MOVLW       34
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       35
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap2+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap2+1 
;main.c,1025 :: 		Cap3 = Bcd2Dec(EEPROM_Read(36)) * 100 + Bcd2Dec(EEPROM_Read(37)); // Cap3
	MOVLW       36
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       37
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap3+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap3+1 
;main.c,1026 :: 		Cap4 = Bcd2Dec(EEPROM_Read(38)) * 100 + Bcd2Dec(EEPROM_Read(39)); // Cap4
	MOVLW       38
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       39
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap4+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap4+1 
;main.c,1027 :: 		Cap5 = Bcd2Dec(EEPROM_Read(40)) * 100 + Bcd2Dec(EEPROM_Read(41)); // Cap5
	MOVLW       40
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       41
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap5+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap5+1 
;main.c,1028 :: 		Cap6 = Bcd2Dec(EEPROM_Read(42)) * 100 + Bcd2Dec(EEPROM_Read(43)); // Cap6
	MOVLW       42
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       43
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap6+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap6+1 
;main.c,1029 :: 		Cap7 = Bcd2Dec(EEPROM_Read(44)) * 100 + Bcd2Dec(EEPROM_Read(45)); // Cap7
	MOVLW       44
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       45
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap7+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap7+1 
;main.c,1030 :: 		Cap8 = Bcd2Dec(EEPROM_Read(46)) * 100 + Bcd2Dec(EEPROM_Read(47)); // Cap8
	MOVLW       46
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVLW       100
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       FLOC__cells_init+0 
	MOVF        PRODH+0, 0 
	MOVWF       FLOC__cells_init+1 
	MOVLW       47
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	ADDWF       FLOC__cells_init+0, 0 
	MOVWF       _Cap8+0 
	MOVLW       0
	ADDWFC      FLOC__cells_init+1, 0 
	MOVWF       _Cap8+1 
;main.c,1032 :: 		P_High = EEPROM_Read(0x30); // High power
	MOVLW       48
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_P_High+0 
;main.c,1033 :: 		K_Mult = Bcd2Dec(EEPROM_Read(0x31)); // Tandem Natch rate
	MOVLW       49
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       main_K_Mult+0 
;main.c,1034 :: 		Dysp_delay = Bcd2Dec(EEPROM_Read(0x32)); // Dysplay ON delay
	MOVLW       50
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Dysp_delay+0 
;main.c,1035 :: 		Loss_ind = EEPROM_Read(0x33);
	MOVLW       51
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_Loss_ind+0 
;main.c,1036 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
	MOVLW       52
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Fid_loss+0 
;main.c,1037 :: 		asm CLRWDT;
	CLRWDT
;main.c,1038 :: 		return;
;main.c,1040 :: 		}
L_end_cells_init:
	RETURN      0
; end of _cells_init

_show_loss:

;main.c,1042 :: 		void show_loss(void) {
;main.c,1043 :: 		IntToStr(Fid_loss, work_str);
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVLW       0
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,1044 :: 		if (Fid_loss >= 10)
	MOVLW       10
	SUBWF       _Fid_loss+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_show_loss461
;main.c,1045 :: 		work_str_2[0] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_loss462
L_show_loss461:
;main.c,1047 :: 		work_str_2[0] = '0';
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_loss462:
;main.c,1048 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,1049 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,1050 :: 		if (type == 4 | type == 5)
	MOVF        _type+0, 0 
	XORLW       4
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	MOVF        _type+0, 0 
	XORLW       5
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_loss463
;main.c,1051 :: 		led_wr_str(4, 6, work_str_2, 3); // 128*64
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_show_loss464
L_show_loss463:
;main.c,1052 :: 		else if (type != 0)
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_loss465
;main.c,1053 :: 		led_wr_str(1, 0, work_str_2, 3); // 1602 | 128*32
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       _work_str_2+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(_work_str_2+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_show_loss465:
L_show_loss464:
;main.c,1054 :: 		return;
;main.c,1055 :: 		}
L_end_show_loss:
	RETURN      0
; end of _show_loss

_load_settings:

;main.c,1056 :: 		void load_settings()
;main.c,1058 :: 		cap = EEPROM_Read(255 - mem_offset * 5);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       255
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_cap+0 
;main.c,1059 :: 		ind = EEPROM_Read(254 - mem_offset * 5);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       254
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_ind+0 
;main.c,1060 :: 		SW = EEPROM_Read(253 - mem_offset * 5);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       253
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_SW+0 
;main.c,1061 :: 		swr_a = EEPROM_Read(252 - mem_offset * 5) * 256;
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       252
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _swr_a+1 
	CLRF        _swr_a+0 
;main.c,1062 :: 		swr_a += EEPROM_Read(251 - mem_offset * 5);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       251
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	ADDWF       _swr_a+0, 1 
	MOVLW       0
	ADDWFC      _swr_a+1, 1 
;main.c,1063 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,1064 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,1065 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,1066 :: 		}
L_end_load_settings:
	RETURN      0
; end of _load_settings

_read_i2c_inputs:

;main.c,1068 :: 		void read_i2c_inputs(void) {
;main.c,1071 :: 		_status = ~mem_offset | 0xF0;
	COMF        _mem_offset+0, 0 
	MOVWF       read_i2c_inputs__status_L0+0 
	MOVLW       240
	IORWF       read_i2c_inputs__status_L0+0, 1 
;main.c,1073 :: 		Delay_us(100);
	MOVLW       133
	MOVWF       R13, 0
L_read_i2c_inputs466:
	DECFSZ      R13, 1, 1
	BRA         L_read_i2c_inputs466
;main.c,1074 :: 		asm CLRWDT;
	CLRWDT
;main.c,1076 :: 		Soft_I2C_Start();
	CALL        _Soft_I2C_Start+0, 0
;main.c,1077 :: 		Soft_I2C_Write(0x40); // device addres for write
	MOVLW       64
	MOVWF       FARG_Soft_I2C_Write+0 
	CALL        _Soft_I2C_Write+0, 0
;main.c,1078 :: 		Soft_I2C_Write(_status);
	MOVF        read_i2c_inputs__status_L0+0, 0 
	MOVWF       FARG_Soft_I2C_Write+0 
	CALL        _Soft_I2C_Write+0, 0
;main.c,1079 :: 		Soft_I2C_Stop();
	CALL        _Soft_I2C_Stop+0, 0
;main.c,1080 :: 		asm CLRWDT;
	CLRWDT
;main.c,1081 :: 		Delay_us(100);
	MOVLW       133
	MOVWF       R13, 0
L_read_i2c_inputs467:
	DECFSZ      R13, 1, 1
	BRA         L_read_i2c_inputs467
;main.c,1082 :: 		asm CLRWDT;
	CLRWDT
;main.c,1083 :: 		Soft_I2C_Start();
	CALL        _Soft_I2C_Start+0, 0
;main.c,1084 :: 		Soft_I2C_Write(0x41); // device addres for read
	MOVLW       65
	MOVWF       FARG_Soft_I2C_Write+0 
	CALL        _Soft_I2C_Write+0, 0
;main.c,1085 :: 		_status = Soft_I2C_Read();
	CALL        _Soft_I2C_Read+0, 0
	MOVF        R0, 0 
	MOVWF       read_i2c_inputs__status_L0+0 
;main.c,1086 :: 		Soft_I2C_Stop();
	CALL        _Soft_I2C_Stop+0, 0
;main.c,1087 :: 		asm CLRWDT;
	CLRWDT
;main.c,1088 :: 		mem_offset = ~_status;
	COMF        read_i2c_inputs__status_L0+0, 0 
	MOVWF       _mem_offset+0 
;main.c,1089 :: 		mem_offset >>= 4;
	RRCF        _mem_offset+0, 1 
	BCF         _mem_offset+0, 7 
	RRCF        _mem_offset+0, 1 
	BCF         _mem_offset+0, 7 
	RRCF        _mem_offset+0, 1 
	BCF         _mem_offset+0, 7 
	RRCF        _mem_offset+0, 1 
	BCF         _mem_offset+0, 7 
;main.c,1090 :: 		mem_offset &= 0xf;
	MOVLW       15
	ANDWF       _mem_offset+0, 1 
;main.c,1091 :: 		}
L_end_read_i2c_inputs:
	RETURN      0
; end of _read_i2c_inputs
