
_correction:

;main.h,50 :: 		int correction(int input) {
;main.h,51 :: 		if (input <= 80)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction467
	MOVF        FARG_correction_input+0, 0 
	SUBLW       80
L__correction467:
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
	GOTO        L__correction468
	MOVF        FARG_correction_input+0, 0 
	SUBLW       171
L__correction468:
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
	GOTO        L__correction469
	MOVF        FARG_correction_input+0, 0 
	SUBLW       72
L__correction469:
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
	GOTO        L__correction470
	MOVF        FARG_correction_input+0, 0 
	SUBLW       70
L__correction470:
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
	GOTO        L__correction471
	MOVF        FARG_correction_input+0, 0 
	SUBLW       52
L__correction471:
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
	GOTO        L__correction472
	MOVF        FARG_correction_input+0, 0 
	SUBLW       76
L__correction472:
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
	GOTO        L__correction473
	MOVF        FARG_correction_input+0, 0 
	SUBLW       133
L__correction473:
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
	GOTO        L__correction474
	MOVF        FARG_correction_input+0, 0 
	SUBLW       250
L__correction474:
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
	GOTO        L__correction475
	MOVF        FARG_correction_input+0, 0 
	SUBLW       15
L__correction475:
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
	GOTO        L__correction476
	MOVF        FARG_correction_input+0, 0 
	SUBLW       230
L__correction476:
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
	GOTO        L__correction477
	MOVF        FARG_correction_input+0, 0 
	SUBLW       234
L__correction477:
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
	GOTO        L__correction478
	MOVF        FARG_correction_input+0, 0 
	SUBLW       54
L__correction478:
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
	GOTO        L__correction479
	MOVF        FARG_correction_input+0, 0 
	SUBLW       4
L__correction479:
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
	GOTO        L__get_forward482
	MOVF        R0, 0 
	SUBLW       232
L__get_forward482:
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
	GOTO        L__get_pwr484
	MOVF        get_pwr_Forward_L0+2, 0 
	SUBWF       get_pwr_Reverse_L0+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr484
	MOVF        get_pwr_Forward_L0+1, 0 
	SUBWF       get_pwr_Reverse_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr484
	MOVF        get_pwr_Forward_L0+0, 0 
	SUBWF       get_pwr_Reverse_L0+0, 0 
L__get_pwr484:
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
	GOTO        L__get_pwr485
	MOVF        R2, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr485
	MOVF        R1, 0 
	SUBLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr485
	MOVF        R0, 0 
	SUBLW       231
L__get_pwr485:
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
	GOTO        L__get_pwr486
	MOVLW       10
	SUBWF       R0, 0 
L__get_pwr486:
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
	GOTO        L__get_pwr487
	MOVLW       0
	SUBWF       get_pwr_Forward_L0+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr487
	MOVLW       0
	SUBWF       get_pwr_Forward_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr487
	MOVLW       100
	SUBWF       get_pwr_Forward_L0+0, 0 
L__get_pwr487:
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
;main.h,140 :: 		if (p_cnt != 100) {
	MOVF        _p_cnt+0, 0 
	XORLW       100
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr38
;main.h,141 :: 		p_cnt += 1;
	INCF        _p_cnt+0, 1 
;main.h,142 :: 		if (PWR > P_max)
	MOVLW       128
	XORWF       _P_max+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr489
	MOVF        _PWR+0, 0 
	SUBWF       _P_max+0, 0 
L__get_swr489:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_swr39
;main.h,143 :: 		P_max = PWR;
	MOVF        _PWR+0, 0 
	MOVWF       _P_max+0 
	MOVF        _PWR+1, 0 
	MOVWF       _P_max+1 
L_get_swr39:
;main.h,144 :: 		} else {
	GOTO        L_get_swr40
L_get_swr38:
;main.h,145 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,146 :: 		show_pwr(P_max, SWR); // raz na 100 pomiarów pokazuje maksymalną wartośc mocy
	MOVF        _P_max+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _P_max+1, 0 
	MOVWF       FARG_show_pwr+1 
	MOVF        _SWR+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _SWR+1, 0 
	MOVWF       FARG_show_pwr+1 
	CALL        _show_pwr+0, 0
;main.h,147 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,148 :: 		}
L_get_swr40:
;main.h,149 :: 		while (PWR < min_for_start | (PWR > max_for_start & max_for_start > 0)) { // waiting for good power
L_get_swr41:
	MOVLW       128
	XORWF       _PWR+1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       main_min_for_start+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr490
	MOVF        main_min_for_start+0, 0 
	SUBWF       _PWR+0, 0 
L__get_swr490:
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
	GOTO        L__get_swr491
	MOVF        _PWR+0, 0 
	SUBWF       main_max_for_start+0, 0 
L__get_swr491:
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
	GOTO        L__get_swr492
	MOVF        main_max_for_start+0, 0 
	SUBLW       0
L__get_swr492:
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
;main.h,150 :: 		asm CLRWDT;
	CLRWDT
;main.h,151 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.h,152 :: 		if (p_cnt != 100) {
	MOVF        _p_cnt+0, 0 
	XORLW       100
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr43
;main.h,153 :: 		p_cnt += 1;
	INCF        _p_cnt+0, 1 
;main.h,154 :: 		if (PWR > P_max)
	MOVLW       128
	XORWF       _P_max+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr493
	MOVF        _PWR+0, 0 
	SUBWF       _P_max+0, 0 
L__get_swr493:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_swr44
;main.h,155 :: 		P_max = PWR;
	MOVF        _PWR+0, 0 
	MOVWF       _P_max+0 
	MOVF        _PWR+1, 0 
	MOVWF       _P_max+1 
L_get_swr44:
;main.h,156 :: 		} else {
	GOTO        L_get_swr45
L_get_swr43:
;main.h,157 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,158 :: 		show_pwr(P_max, SWR);
	MOVF        _P_max+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _P_max+1, 0 
	MOVWF       FARG_show_pwr+1 
	MOVF        _SWR+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _SWR+1, 0 
	MOVWF       FARG_show_pwr+1 
	CALL        _show_pwr+0, 0
;main.h,159 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,160 :: 		}
L_get_swr45:
;main.h,162 :: 		if (Button( & PORTB, 0, 5, 1))
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
;main.h,163 :: 		rready = 1;
	MOVLW       1
	MOVWF       _rready+0 
L_get_swr46:
;main.h,164 :: 		if (rready == 1 & Button( & PORTB, 0, 5, 0)) { //  press button  Tune
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
;main.h,165 :: 		show_reset();
	CALL        _show_reset+0, 0
;main.h,166 :: 		SWR = 0;
	CLRF        _SWR+0 
	CLRF        _SWR+1 
;main.h,167 :: 		return;
	GOTO        L_end_get_swr
;main.h,168 :: 		}
L_get_swr47:
;main.h,169 :: 		} //  good power
	GOTO        L_get_swr41
L_get_swr42:
;main.h,170 :: 		return;
;main.h,171 :: 		}
L_end_get_swr:
	RETURN      0
; end of _get_swr

_set_ind:

;main.h,173 :: 		void set_ind(char Ind) { // 0 - 31
;main.h,174 :: 		if (L_invert == 0) {
	MOVF        main_L_invert+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_set_ind48
;main.h,175 :: 		Ind_005 = Ind.B0;
	BTFSC       FARG_set_ind_Ind+0, 0 
	GOTO        L__set_ind495
	BCF         LATB3_bit+0, BitPos(LATB3_bit+0) 
	GOTO        L__set_ind496
L__set_ind495:
	BSF         LATB3_bit+0, BitPos(LATB3_bit+0) 
L__set_ind496:
;main.h,176 :: 		Ind_011 = Ind.B1;
	BTFSC       FARG_set_ind_Ind+0, 1 
	GOTO        L__set_ind497
	BCF         LATA2_bit+0, BitPos(LATA2_bit+0) 
	GOTO        L__set_ind498
L__set_ind497:
	BSF         LATA2_bit+0, BitPos(LATA2_bit+0) 
L__set_ind498:
;main.h,177 :: 		Ind_022 = Ind.B2;
	BTFSC       FARG_set_ind_Ind+0, 2 
	GOTO        L__set_ind499
	BCF         LATB4_bit+0, BitPos(LATB4_bit+0) 
	GOTO        L__set_ind500
L__set_ind499:
	BSF         LATB4_bit+0, BitPos(LATB4_bit+0) 
L__set_ind500:
;main.h,178 :: 		Ind_045 = Ind.B3;
	BTFSC       FARG_set_ind_Ind+0, 3 
	GOTO        L__set_ind501
	BCF         LATA3_bit+0, BitPos(LATA3_bit+0) 
	GOTO        L__set_ind502
L__set_ind501:
	BSF         LATA3_bit+0, BitPos(LATA3_bit+0) 
L__set_ind502:
;main.h,179 :: 		Ind_1 = Ind.B4;
	BTFSC       FARG_set_ind_Ind+0, 4 
	GOTO        L__set_ind503
	BCF         LATB5_bit+0, BitPos(LATB5_bit+0) 
	GOTO        L__set_ind504
L__set_ind503:
	BSF         LATB5_bit+0, BitPos(LATB5_bit+0) 
L__set_ind504:
;main.h,180 :: 		Ind_22 = Ind.B5;
	BTFSC       FARG_set_ind_Ind+0, 5 
	GOTO        L__set_ind505
	BCF         LATA5_bit+0, BitPos(LATA5_bit+0) 
	GOTO        L__set_ind506
L__set_ind505:
	BSF         LATA5_bit+0, BitPos(LATA5_bit+0) 
L__set_ind506:
;main.h,181 :: 		Ind_45 = Ind.B6;
	BTFSC       FARG_set_ind_Ind+0, 6 
	GOTO        L__set_ind507
	BCF         LATA4_bit+0, BitPos(LATA4_bit+0) 
	GOTO        L__set_ind508
L__set_ind507:
	BSF         LATA4_bit+0, BitPos(LATA4_bit+0) 
L__set_ind508:
;main.h,183 :: 		} else {
	GOTO        L_set_ind49
L_set_ind48:
;main.h,184 :: 		Ind_005 = ~Ind.B0;
	BTFSC       FARG_set_ind_Ind+0, 0 
	GOTO        L__set_ind509
	BSF         LATB3_bit+0, BitPos(LATB3_bit+0) 
	GOTO        L__set_ind510
L__set_ind509:
	BCF         LATB3_bit+0, BitPos(LATB3_bit+0) 
L__set_ind510:
;main.h,185 :: 		Ind_011 = ~Ind.B1;
	BTFSC       FARG_set_ind_Ind+0, 1 
	GOTO        L__set_ind511
	BSF         LATA2_bit+0, BitPos(LATA2_bit+0) 
	GOTO        L__set_ind512
L__set_ind511:
	BCF         LATA2_bit+0, BitPos(LATA2_bit+0) 
L__set_ind512:
;main.h,186 :: 		Ind_022 = ~Ind.B2;
	BTFSC       FARG_set_ind_Ind+0, 2 
	GOTO        L__set_ind513
	BSF         LATB4_bit+0, BitPos(LATB4_bit+0) 
	GOTO        L__set_ind514
L__set_ind513:
	BCF         LATB4_bit+0, BitPos(LATB4_bit+0) 
L__set_ind514:
;main.h,187 :: 		Ind_045 = ~Ind.B3;
	BTFSC       FARG_set_ind_Ind+0, 3 
	GOTO        L__set_ind515
	BSF         LATA3_bit+0, BitPos(LATA3_bit+0) 
	GOTO        L__set_ind516
L__set_ind515:
	BCF         LATA3_bit+0, BitPos(LATA3_bit+0) 
L__set_ind516:
;main.h,188 :: 		Ind_1 = ~Ind.B4;
	BTFSC       FARG_set_ind_Ind+0, 4 
	GOTO        L__set_ind517
	BSF         LATB5_bit+0, BitPos(LATB5_bit+0) 
	GOTO        L__set_ind518
L__set_ind517:
	BCF         LATB5_bit+0, BitPos(LATB5_bit+0) 
L__set_ind518:
;main.h,189 :: 		Ind_22 = ~Ind.B5;
	BTFSC       FARG_set_ind_Ind+0, 5 
	GOTO        L__set_ind519
	BSF         LATA5_bit+0, BitPos(LATA5_bit+0) 
	GOTO        L__set_ind520
L__set_ind519:
	BCF         LATA5_bit+0, BitPos(LATA5_bit+0) 
L__set_ind520:
;main.h,190 :: 		Ind_45 = ~Ind.B6;
	BTFSC       FARG_set_ind_Ind+0, 6 
	GOTO        L__set_ind521
	BSF         LATA4_bit+0, BitPos(LATA4_bit+0) 
	GOTO        L__set_ind522
L__set_ind521:
	BCF         LATA4_bit+0, BitPos(LATA4_bit+0) 
L__set_ind522:
;main.h,192 :: 		}
L_set_ind49:
;main.h,193 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,194 :: 		}
L_end_set_ind:
	RETURN      0
; end of _set_ind

_set_cap:

;main.h,196 :: 		void set_cap(char Cap) { // 0 - 31
;main.h,197 :: 		Cap_10 = Cap.B0;
	BTFSC       FARG_set_cap_Cap+0, 0 
	GOTO        L__set_cap524
	BCF         LATC7_bit+0, BitPos(LATC7_bit+0) 
	GOTO        L__set_cap525
L__set_cap524:
	BSF         LATC7_bit+0, BitPos(LATC7_bit+0) 
L__set_cap525:
;main.h,198 :: 		Cap_22 = Cap.B1;
	BTFSC       FARG_set_cap_Cap+0, 1 
	GOTO        L__set_cap526
	BCF         LATC3_bit+0, BitPos(LATC3_bit+0) 
	GOTO        L__set_cap527
L__set_cap526:
	BSF         LATC3_bit+0, BitPos(LATC3_bit+0) 
L__set_cap527:
;main.h,199 :: 		Cap_47 = Cap.B2;
	BTFSC       FARG_set_cap_Cap+0, 2 
	GOTO        L__set_cap528
	BCF         LATC6_bit+0, BitPos(LATC6_bit+0) 
	GOTO        L__set_cap529
L__set_cap528:
	BSF         LATC6_bit+0, BitPos(LATC6_bit+0) 
L__set_cap529:
;main.h,200 :: 		Cap_100 = Cap.B3;
	BTFSC       FARG_set_cap_Cap+0, 3 
	GOTO        L__set_cap530
	BCF         LATC2_bit+0, BitPos(LATC2_bit+0) 
	GOTO        L__set_cap531
L__set_cap530:
	BSF         LATC2_bit+0, BitPos(LATC2_bit+0) 
L__set_cap531:
;main.h,201 :: 		Cap_220 = Cap.B4;
	BTFSC       FARG_set_cap_Cap+0, 4 
	GOTO        L__set_cap532
	BCF         LATC5_bit+0, BitPos(LATC5_bit+0) 
	GOTO        L__set_cap533
L__set_cap532:
	BSF         LATC5_bit+0, BitPos(LATC5_bit+0) 
L__set_cap533:
;main.h,202 :: 		Cap_470 = Cap.B5;
	BTFSC       FARG_set_cap_Cap+0, 5 
	GOTO        L__set_cap534
	BCF         LATC1_bit+0, BitPos(LATC1_bit+0) 
	GOTO        L__set_cap535
L__set_cap534:
	BSF         LATC1_bit+0, BitPos(LATC1_bit+0) 
L__set_cap535:
;main.h,203 :: 		Cap_1000 = Cap.B6;
	BTFSC       FARG_set_cap_Cap+0, 6 
	GOTO        L__set_cap536
	BCF         LATC4_bit+0, BitPos(LATC4_bit+0) 
	GOTO        L__set_cap537
L__set_cap536:
	BSF         LATC4_bit+0, BitPos(LATC4_bit+0) 
L__set_cap537:
;main.h,204 :: 		if (mem_offset == band_160m)        // kod pasma 160m
	MOVLW       0
	XORWF       _mem_offset+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__set_cap538
	MOVF        _band_160m+0, 0 
	XORWF       _mem_offset+0, 0 
L__set_cap538:
	BTFSS       STATUS+0, 2 
	GOTO        L_set_cap50
;main.h,206 :: 		Cap_1820 = 1;
	BSF         LATA7_bit+0, BitPos(LATA7_bit+0) 
;main.h,207 :: 		}
	GOTO        L_set_cap51
L_set_cap50:
;main.h,210 :: 		Cap_1820 = 0;
	BCF         LATA7_bit+0, BitPos(LATA7_bit+0) 
;main.h,211 :: 		}
L_set_cap51:
;main.h,213 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,214 :: 		}
L_end_set_cap:
	RETURN      0
; end of _set_cap

_set_sw:

;main.h,216 :: 		void set_sw(char SW) { // 0 - IN,  1 - OUT
;main.h,217 :: 		Cap_sw = SW;
	BTFSC       FARG_set_sw_SW+0, 0 
	GOTO        L__set_sw540
	BCF         LATC0_bit+0, BitPos(LATC0_bit+0) 
	GOTO        L__set_sw541
L__set_sw540:
	BSF         LATC0_bit+0, BitPos(LATC0_bit+0) 
L__set_sw541:
;main.h,218 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,219 :: 		}
L_end_set_sw:
	RETURN      0
; end of _set_sw

_atu_reset:

;main.h,221 :: 		void atu_reset() {
;main.h,222 :: 		ind = 0;
	CLRF        main_ind+0 
;main.h,223 :: 		cap = 0;
	CLRF        main_cap+0 
;main.h,224 :: 		set_ind(ind);
	CLRF        FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,225 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,226 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,227 :: 		}
L_end_atu_reset:
	RETURN      0
; end of _atu_reset

_coarse_cap:

;main.h,229 :: 		void coarse_cap() {
;main.h,230 :: 		char step = 3;
	MOVLW       3
	MOVWF       coarse_cap_step_L0+0 
;main.h,234 :: 		cap = 0;
	CLRF        main_cap+0 
;main.h,235 :: 		set_cap(cap);
	CLRF        FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,236 :: 		step_cap = step;
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,237 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,238 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap544
	MOVLW       0
	XORWF       _SWR+0, 0 
L__coarse_cap544:
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_cap52
;main.h,239 :: 		return;
	GOTO        L_end_coarse_cap
L_coarse_cap52:
;main.h,240 :: 		min_swr = SWR + SWR / 20;
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
;main.h,241 :: 		for (count = step; count <= 31;) {
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       coarse_cap_count_L0+0 
L_coarse_cap53:
	MOVF        coarse_cap_count_L0+0, 0 
	SUBLW       31
	BTFSS       STATUS+0, 0 
	GOTO        L_coarse_cap54
;main.h,242 :: 		set_cap(count * C_mult);
	MOVF        coarse_cap_count_L0+0, 0 
	MULWF       main_C_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,243 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,244 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap545
	MOVLW       0
	XORWF       _SWR+0, 0 
L__coarse_cap545:
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_cap56
;main.h,245 :: 		return;
	GOTO        L_end_coarse_cap
L_coarse_cap56:
;main.h,246 :: 		if (SWR < min_swr) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       coarse_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap546
	MOVF        coarse_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__coarse_cap546:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_cap57
;main.h,247 :: 		min_swr = SWR + SWR / 20;
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
;main.h,248 :: 		cap = count * C_mult;
	MOVF        coarse_cap_count_L0+0, 0 
	MULWF       main_C_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       main_cap+0 
;main.h,249 :: 		step_cap = step;
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,250 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap547
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__coarse_cap547:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_cap58
;main.h,251 :: 		break;
	GOTO        L_coarse_cap54
L_coarse_cap58:
;main.h,252 :: 		count += step;
	MOVF        coarse_cap_step_L0+0, 0 
	ADDWF       coarse_cap_count_L0+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       coarse_cap_count_L0+0 
;main.h,253 :: 		if (C_linear == 0 & count == 9)
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
	GOTO        L_coarse_cap59
;main.h,254 :: 		count = 8;
	MOVLW       8
	MOVWF       coarse_cap_count_L0+0 
	GOTO        L_coarse_cap60
L_coarse_cap59:
;main.h,255 :: 		else if (C_linear == 0 & count == 17) {
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
	GOTO        L_coarse_cap61
;main.h,256 :: 		count = 16;
	MOVLW       16
	MOVWF       coarse_cap_count_L0+0 
;main.h,257 :: 		step = 4;
	MOVLW       4
	MOVWF       coarse_cap_step_L0+0 
;main.h,258 :: 		}
L_coarse_cap61:
L_coarse_cap60:
;main.h,259 :: 		} else
	GOTO        L_coarse_cap62
L_coarse_cap57:
;main.h,260 :: 		break;
	GOTO        L_coarse_cap54
L_coarse_cap62:
;main.h,261 :: 		}
	GOTO        L_coarse_cap53
L_coarse_cap54:
;main.h,262 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,263 :: 		return;
;main.h,264 :: 		}
L_end_coarse_cap:
	RETURN      0
; end of _coarse_cap

_coarse_tune:

;main.h,266 :: 		void coarse_tune() {
;main.h,267 :: 		char step = 3;
	MOVLW       3
	MOVWF       coarse_tune_step_L0+0 
;main.h,272 :: 		mem_cap = 0;
	CLRF        coarse_tune_mem_cap_L0+0 
;main.h,273 :: 		step_ind = step;
	MOVF        coarse_tune_step_L0+0, 0 
	MOVWF       main_step_ind+0 
;main.h,274 :: 		mem_step_cap = 3;
	MOVLW       3
	MOVWF       coarse_tune_mem_step_cap_L0+0 
;main.h,275 :: 		min_swr = SWR + SWR / 20;
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
;main.h,276 :: 		for (count = 0; count <= 31;) {
	CLRF        coarse_tune_count_L0+0 
L_coarse_tune63:
	MOVF        coarse_tune_count_L0+0, 0 
	SUBLW       31
	BTFSS       STATUS+0, 0 
	GOTO        L_coarse_tune64
;main.h,277 :: 		set_ind(count * L_mult);
	MOVF        coarse_tune_count_L0+0, 0 
	MULWF       main_L_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,278 :: 		coarse_cap();
	CALL        _coarse_cap+0, 0
;main.h,279 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,280 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune549
	MOVLW       0
	XORWF       _SWR+0, 0 
L__coarse_tune549:
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_tune66
;main.h,281 :: 		return;
	GOTO        L_end_coarse_tune
L_coarse_tune66:
;main.h,282 :: 		if (SWR < min_swr) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       coarse_tune_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune550
	MOVF        coarse_tune_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__coarse_tune550:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_tune67
;main.h,283 :: 		min_swr = SWR + SWR / 20;
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
;main.h,284 :: 		ind = count * L_mult;
	MOVF        coarse_tune_count_L0+0, 0 
	MULWF       main_L_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       main_ind+0 
;main.h,285 :: 		mem_cap = cap;
	MOVF        main_cap+0, 0 
	MOVWF       coarse_tune_mem_cap_L0+0 
;main.h,286 :: 		step_ind = step;
	MOVF        coarse_tune_step_L0+0, 0 
	MOVWF       main_step_ind+0 
;main.h,287 :: 		mem_step_cap = step_cap;
	MOVF        main_step_cap+0, 0 
	MOVWF       coarse_tune_mem_step_cap_L0+0 
;main.h,288 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune551
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__coarse_tune551:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_tune68
;main.h,289 :: 		break;
	GOTO        L_coarse_tune64
L_coarse_tune68:
;main.h,290 :: 		count += step;
	MOVF        coarse_tune_step_L0+0, 0 
	ADDWF       coarse_tune_count_L0+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       coarse_tune_count_L0+0 
;main.h,291 :: 		if (L_linear == 0 & count == 9)
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
	GOTO        L_coarse_tune69
;main.h,292 :: 		count = 8;
	MOVLW       8
	MOVWF       coarse_tune_count_L0+0 
	GOTO        L_coarse_tune70
L_coarse_tune69:
;main.h,293 :: 		else if (L_linear == 0 & count == 17) {
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
	GOTO        L_coarse_tune71
;main.h,294 :: 		count = 16;
	MOVLW       16
	MOVWF       coarse_tune_count_L0+0 
;main.h,295 :: 		step = 4;
	MOVLW       4
	MOVWF       coarse_tune_step_L0+0 
;main.h,296 :: 		}
L_coarse_tune71:
L_coarse_tune70:
;main.h,297 :: 		} else
	GOTO        L_coarse_tune72
L_coarse_tune67:
;main.h,298 :: 		break;
	GOTO        L_coarse_tune64
L_coarse_tune72:
;main.h,299 :: 		}
	GOTO        L_coarse_tune63
L_coarse_tune64:
;main.h,300 :: 		cap = mem_cap;
	MOVF        coarse_tune_mem_cap_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,301 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,302 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,303 :: 		step_cap = mem_step_cap;
	MOVF        coarse_tune_mem_step_cap_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,304 :: 		Delay_ms(10);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_coarse_tune73:
	DECFSZ      R13, 1, 1
	BRA         L_coarse_tune73
	DECFSZ      R12, 1, 1
	BRA         L_coarse_tune73
	NOP
	NOP
;main.h,305 :: 		return;
;main.h,306 :: 		}
L_end_coarse_tune:
	RETURN      0
; end of _coarse_tune

_sharp_cap:

;main.h,308 :: 		void sharp_cap() {
;main.h,311 :: 		range = step_cap * C_mult;
	MOVF        main_step_cap+0, 0 
	MULWF       main_C_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       sharp_cap_range_L0+0 
;main.h,313 :: 		max_range = cap + range;
	MOVF        R0, 0 
	ADDWF       main_cap+0, 0 
	MOVWF       R4 
	MOVF        R4, 0 
	MOVWF       sharp_cap_max_range_L0+0 
;main.h,314 :: 		if (max_range > 32 * C_mult - 1)
	MOVLW       5
	MOVWF       R2 
	MOVF        main_C_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__sharp_cap553:
	BZ          L__sharp_cap554
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__sharp_cap553
L__sharp_cap554:
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
	GOTO        L__sharp_cap555
	MOVF        R4, 0 
	SUBWF       R2, 0 
L__sharp_cap555:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap74
;main.h,315 :: 		max_range = 32 * C_mult - 1;
	MOVLW       5
	MOVWF       R0 
	MOVF        main_C_mult+0, 0 
	MOVWF       sharp_cap_max_range_L0+0 
	MOVF        R0, 0 
L__sharp_cap556:
	BZ          L__sharp_cap557
	RLCF        sharp_cap_max_range_L0+0, 1 
	BCF         sharp_cap_max_range_L0+0, 0 
	ADDLW       255
	GOTO        L__sharp_cap556
L__sharp_cap557:
	DECF        sharp_cap_max_range_L0+0, 1 
L_sharp_cap74:
;main.h,316 :: 		if (cap > range)
	MOVF        main_cap+0, 0 
	SUBWF       sharp_cap_range_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap75
;main.h,317 :: 		min_range = cap - range;
	MOVF        sharp_cap_range_L0+0, 0 
	SUBWF       main_cap+0, 0 
	MOVWF       sharp_cap_min_range_L0+0 
	GOTO        L_sharp_cap76
L_sharp_cap75:
;main.h,319 :: 		min_range = 0;
	CLRF        sharp_cap_min_range_L0+0 
L_sharp_cap76:
;main.h,320 :: 		cap = min_range;
	MOVF        sharp_cap_min_range_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,321 :: 		set_cap(cap);
	MOVF        sharp_cap_min_range_L0+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,322 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,323 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap558
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_cap558:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_cap77
;main.h,324 :: 		return;
	GOTO        L_end_sharp_cap
L_sharp_cap77:
;main.h,325 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_cap_min_swr_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_cap_min_swr_L0+1 
;main.h,326 :: 		for (count = min_range + C_mult; count <= max_range; count += C_mult) {
	MOVF        main_C_mult+0, 0 
	ADDWF       sharp_cap_min_range_L0+0, 0 
	MOVWF       sharp_cap_count_L0+0 
L_sharp_cap78:
	MOVF        sharp_cap_count_L0+0, 0 
	SUBWF       sharp_cap_max_range_L0+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_cap79
;main.h,327 :: 		set_cap(count);
	MOVF        sharp_cap_count_L0+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,328 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,329 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap559
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_cap559:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_cap81
;main.h,330 :: 		return;
	GOTO        L_end_sharp_cap
L_sharp_cap81:
;main.h,331 :: 		if (SWR >= min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap560
	MOVF        sharp_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_cap560:
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_cap82
;main.h,332 :: 		Delay_ms(10);
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
;main.h,333 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,334 :: 		}
L_sharp_cap82:
;main.h,335 :: 		if (SWR >= min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap561
	MOVF        sharp_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_cap561:
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_cap84
;main.h,336 :: 		Delay_ms(10);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_sharp_cap85:
	DECFSZ      R13, 1, 1
	BRA         L_sharp_cap85
	DECFSZ      R12, 1, 1
	BRA         L_sharp_cap85
	NOP
	NOP
;main.h,337 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,338 :: 		}
L_sharp_cap84:
;main.h,339 :: 		if (SWR < min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap562
	MOVF        sharp_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_cap562:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap86
;main.h,340 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_cap_min_swr_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_cap_min_swr_L0+1 
;main.h,341 :: 		cap = count;
	MOVF        sharp_cap_count_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,342 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap563
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sharp_cap563:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap87
;main.h,343 :: 		break;
	GOTO        L_sharp_cap79
L_sharp_cap87:
;main.h,344 :: 		} else
	GOTO        L_sharp_cap88
L_sharp_cap86:
;main.h,345 :: 		break;
	GOTO        L_sharp_cap79
L_sharp_cap88:
;main.h,326 :: 		for (count = min_range + C_mult; count <= max_range; count += C_mult) {
	MOVF        main_C_mult+0, 0 
	ADDWF       sharp_cap_count_L0+0, 1 
;main.h,346 :: 		}
	GOTO        L_sharp_cap78
L_sharp_cap79:
;main.h,347 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,348 :: 		return;
;main.h,349 :: 		}
L_end_sharp_cap:
	RETURN      0
; end of _sharp_cap

_sharp_ind:

;main.h,351 :: 		void sharp_ind() {
;main.h,354 :: 		range = step_ind * L_mult;
	MOVF        main_step_ind+0, 0 
	MULWF       main_L_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       sharp_ind_range_L0+0 
;main.h,356 :: 		max_range = ind + range;
	MOVF        R0, 0 
	ADDWF       main_ind+0, 0 
	MOVWF       R4 
	MOVF        R4, 0 
	MOVWF       sharp_ind_max_range_L0+0 
;main.h,357 :: 		if (max_range > 32 * L_mult - 1)
	MOVLW       5
	MOVWF       R2 
	MOVF        main_L_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__sharp_ind565:
	BZ          L__sharp_ind566
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__sharp_ind565
L__sharp_ind566:
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
	GOTO        L__sharp_ind567
	MOVF        R4, 0 
	SUBWF       R2, 0 
L__sharp_ind567:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind89
;main.h,358 :: 		max_range = 32 * L_mult - 1;
	MOVLW       5
	MOVWF       R0 
	MOVF        main_L_mult+0, 0 
	MOVWF       sharp_ind_max_range_L0+0 
	MOVF        R0, 0 
L__sharp_ind568:
	BZ          L__sharp_ind569
	RLCF        sharp_ind_max_range_L0+0, 1 
	BCF         sharp_ind_max_range_L0+0, 0 
	ADDLW       255
	GOTO        L__sharp_ind568
L__sharp_ind569:
	DECF        sharp_ind_max_range_L0+0, 1 
L_sharp_ind89:
;main.h,359 :: 		if (ind > range)
	MOVF        main_ind+0, 0 
	SUBWF       sharp_ind_range_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind90
;main.h,360 :: 		min_range = ind - range;
	MOVF        sharp_ind_range_L0+0, 0 
	SUBWF       main_ind+0, 0 
	MOVWF       sharp_ind_min_range_L0+0 
	GOTO        L_sharp_ind91
L_sharp_ind90:
;main.h,362 :: 		min_range = 0;
	CLRF        sharp_ind_min_range_L0+0 
L_sharp_ind91:
;main.h,363 :: 		ind = min_range;
	MOVF        sharp_ind_min_range_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,364 :: 		set_ind(ind);
	MOVF        sharp_ind_min_range_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,365 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,366 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind570
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_ind570:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_ind92
;main.h,367 :: 		return;
	GOTO        L_end_sharp_ind
L_sharp_ind92:
;main.h,368 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_ind_min_SWR_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_ind_min_SWR_L0+1 
;main.h,369 :: 		for (count = min_range + L_mult; count <= max_range; count += L_mult) {
	MOVF        main_L_mult+0, 0 
	ADDWF       sharp_ind_min_range_L0+0, 0 
	MOVWF       sharp_ind_count_L0+0 
L_sharp_ind93:
	MOVF        sharp_ind_count_L0+0, 0 
	SUBWF       sharp_ind_max_range_L0+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_ind94
;main.h,370 :: 		set_ind(count);
	MOVF        sharp_ind_count_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,371 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,372 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind571
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_ind571:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_ind96
;main.h,373 :: 		return;
	GOTO        L_end_sharp_ind
L_sharp_ind96:
;main.h,374 :: 		if (SWR >= min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_ind_min_SWR_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind572
	MOVF        sharp_ind_min_SWR_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_ind572:
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_ind97
;main.h,375 :: 		Delay_ms(10);
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
;main.h,376 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,377 :: 		}
L_sharp_ind97:
;main.h,378 :: 		if (SWR >= min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_ind_min_SWR_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind573
	MOVF        sharp_ind_min_SWR_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_ind573:
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_ind99
;main.h,379 :: 		Delay_ms(10);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_sharp_ind100:
	DECFSZ      R13, 1, 1
	BRA         L_sharp_ind100
	DECFSZ      R12, 1, 1
	BRA         L_sharp_ind100
	NOP
	NOP
;main.h,380 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,381 :: 		}
L_sharp_ind99:
;main.h,382 :: 		if (SWR < min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_ind_min_SWR_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind574
	MOVF        sharp_ind_min_SWR_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_ind574:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind101
;main.h,383 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_ind_min_SWR_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_ind_min_SWR_L0+1 
;main.h,384 :: 		ind = count;
	MOVF        sharp_ind_count_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,385 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind575
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sharp_ind575:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind102
;main.h,386 :: 		break;
	GOTO        L_sharp_ind94
L_sharp_ind102:
;main.h,387 :: 		} else
	GOTO        L_sharp_ind103
L_sharp_ind101:
;main.h,388 :: 		break;
	GOTO        L_sharp_ind94
L_sharp_ind103:
;main.h,369 :: 		for (count = min_range + L_mult; count <= max_range; count += L_mult) {
	MOVF        main_L_mult+0, 0 
	ADDWF       sharp_ind_count_L0+0, 1 
;main.h,389 :: 		}
	GOTO        L_sharp_ind93
L_sharp_ind94:
;main.h,390 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,391 :: 		return;
;main.h,392 :: 		}
L_end_sharp_ind:
	RETURN      0
; end of _sharp_ind

_sub_tune:

;main.h,394 :: 		void sub_tune()
;main.h,398 :: 		swr_mem = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sub_tune_swr_mem_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sub_tune_swr_mem_L0+1 
;main.h,399 :: 		coarse_tune();
	CALL        _coarse_tune+0, 0
;main.h,400 :: 		if (SWR == 0) {
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune577
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune577:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune104
;main.h,401 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,402 :: 		return;
	GOTO        L_end_sub_tune
;main.h,403 :: 		}
L_sub_tune104:
;main.h,404 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,405 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune578
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune578:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune105
;main.h,406 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune105:
;main.h,407 :: 		sharp_ind();
	CALL        _sharp_ind+0, 0
;main.h,408 :: 		if (SWR == 0) {
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune579
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune579:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune106
;main.h,409 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,410 :: 		return;
	GOTO        L_end_sub_tune
;main.h,411 :: 		}
L_sub_tune106:
;main.h,412 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,413 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune580
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune580:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune107
;main.h,414 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune107:
;main.h,415 :: 		sharp_cap();
	CALL        _sharp_cap+0, 0
;main.h,416 :: 		if (SWR == 0) {
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune581
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune581:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune108
;main.h,417 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,418 :: 		return;
	GOTO        L_end_sub_tune
;main.h,419 :: 		}
L_sub_tune108:
;main.h,420 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,421 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune582
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune582:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune109
;main.h,422 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune109:
;main.h,424 :: 		if (SWR < 200 & SWR < swr_mem & (swr_mem - SWR) > 100)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R1 
	MOVLW       128
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune583
	MOVLW       200
	SUBWF       _SWR+0, 0 
L__sub_tune583:
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
	GOTO        L__sub_tune584
	MOVF        sub_tune_swr_mem_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sub_tune584:
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
	GOTO        L__sub_tune585
	MOVF        R1, 0 
	SUBLW       100
L__sub_tune585:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R3, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_sub_tune110
;main.h,425 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune110:
;main.h,426 :: 		swr_mem = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sub_tune_swr_mem_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sub_tune_swr_mem_L0+1 
;main.h,427 :: 		ind_mem = ind;
	MOVF        main_ind+0, 0 
	MOVWF       sub_tune_ind_mem_L0+0 
	MOVLW       0
	MOVWF       sub_tune_ind_mem_L0+1 
;main.h,428 :: 		cap_mem = cap;
	MOVF        main_cap+0, 0 
	MOVWF       sub_tune_cap_mem_L0+0 
	MOVLW       0
	MOVWF       sub_tune_cap_mem_L0+1 
;main.h,430 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune111
;main.h,431 :: 		SW = 0;
	CLRF        main_SW+0 
	GOTO        L_sub_tune112
L_sub_tune111:
;main.h,433 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
L_sub_tune112:
;main.h,434 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,435 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.h,436 :: 		Delay_ms(50);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_sub_tune113:
	DECFSZ      R13, 1, 1
	BRA         L_sub_tune113
	DECFSZ      R12, 1, 1
	BRA         L_sub_tune113
	DECFSZ      R11, 1, 1
	BRA         L_sub_tune113
	NOP
;main.h,437 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,438 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune586
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune586:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune114
;main.h,439 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune114:
;main.h,441 :: 		coarse_tune();
	CALL        _coarse_tune+0, 0
;main.h,442 :: 		if (SWR == 0) {
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune587
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune587:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune115
;main.h,443 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,444 :: 		return;
	GOTO        L_end_sub_tune
;main.h,445 :: 		}
L_sub_tune115:
;main.h,446 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,447 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune588
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune588:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune116
;main.h,448 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune116:
;main.h,449 :: 		sharp_ind();
	CALL        _sharp_ind+0, 0
;main.h,450 :: 		if (SWR == 0) {
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune589
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune589:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune117
;main.h,451 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,452 :: 		return;
	GOTO        L_end_sub_tune
;main.h,453 :: 		}
L_sub_tune117:
;main.h,454 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,455 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune590
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune590:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune118
;main.h,456 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune118:
;main.h,457 :: 		sharp_cap();
	CALL        _sharp_cap+0, 0
;main.h,458 :: 		if (SWR == 0) {
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune591
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune591:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune119
;main.h,459 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,460 :: 		return;
	GOTO        L_end_sub_tune
;main.h,461 :: 		}
L_sub_tune119:
;main.h,462 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,463 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune592
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune592:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune120
;main.h,464 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune120:
;main.h,466 :: 		if (SWR > swr_mem)
	MOVLW       128
	XORWF       sub_tune_swr_mem_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune593
	MOVF        _SWR+0, 0 
	SUBWF       sub_tune_swr_mem_L0+0, 0 
L__sub_tune593:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune121
;main.h,468 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune122
;main.h,469 :: 		SW = 0;
	CLRF        main_SW+0 
	GOTO        L_sub_tune123
L_sub_tune122:
;main.h,471 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
L_sub_tune123:
;main.h,472 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.h,473 :: 		ind = ind_mem;
	MOVF        sub_tune_ind_mem_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,474 :: 		cap = cap_mem;
	MOVF        sub_tune_cap_mem_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,475 :: 		set_ind(ind);
	MOVF        sub_tune_ind_mem_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,476 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,477 :: 		SWR = swr_mem;
	MOVF        sub_tune_swr_mem_L0+0, 0 
	MOVWF       _SWR+0 
	MOVF        sub_tune_swr_mem_L0+1, 0 
	MOVWF       _SWR+1 
;main.h,478 :: 		}
L_sub_tune121:
;main.h,480 :: 		asm CLRWDT;
	CLRWDT
;main.h,481 :: 		return;
;main.h,482 :: 		}
L_end_sub_tune:
	RETURN      0
; end of _sub_tune

_tune:

;main.h,484 :: 		void tune()
;main.h,488 :: 		asm CLRWDT;
	CLRWDT
;main.h,490 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,491 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,493 :: 		rready = 0;
	CLRF        _rready+0 
;main.h,494 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,495 :: 		if (SWR < 110)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune595
	MOVLW       110
	SUBWF       _SWR+0, 0 
L__tune595:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune124
;main.h,496 :: 		return;
	GOTO        L_end_tune
L_tune124:
;main.h,497 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,498 :: 		if (Loss_ind == 0)
	MOVF        main_Loss_ind+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_tune125
;main.h,499 :: 		lcd_ind();                // wyświetlenie wartości L i C
	CALL        _lcd_ind+0, 0
L_tune125:
;main.h,500 :: 		Delay_ms(50);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_tune126:
	DECFSZ      R13, 1, 1
	BRA         L_tune126
	DECFSZ      R12, 1, 1
	BRA         L_tune126
	DECFSZ      R11, 1, 1
	BRA         L_tune126
	NOP
;main.h,501 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,502 :: 		swr_a = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       _swr_a+0 
	MOVF        _SWR+1, 0 
	MOVWF       _swr_a+1 
;main.h,503 :: 		if (SWR < 110)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune596
	MOVLW       110
	SUBWF       _SWR+0, 0 
L__tune596:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune127
;main.h,504 :: 		return;
	GOTO        L_end_tune
L_tune127:
;main.h,505 :: 		if (max_swr > 110 & SWR > max_swr)        // max_swr - zawartość komórki 9 (domyślnie 0)
	MOVLW       128
	MOVWF       R1 
	MOVLW       128
	XORWF       main_max_swr+1, 0 
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune597
	MOVF        main_max_swr+0, 0 
	SUBLW       110
L__tune597:
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
	GOTO        L__tune598
	MOVF        _SWR+0, 0 
	SUBWF       main_max_swr+0, 0 
L__tune598:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_tune128
;main.h,506 :: 		return;
	GOTO        L_end_tune
L_tune128:
;main.h,509 :: 		sub_tune();
	CALL        _sub_tune+0, 0
;main.h,510 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune599
	MOVLW       0
	XORWF       _SWR+0, 0 
L__tune599:
	BTFSS       STATUS+0, 2 
	GOTO        L_tune129
;main.h,512 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,513 :: 		return;
	GOTO        L_end_tune
;main.h,514 :: 		}
L_tune129:
;main.h,515 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune600
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__tune600:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune130
;main.h,516 :: 		return;
	GOTO        L_end_tune
L_tune130:
;main.h,517 :: 		if (C_q == 5 & L_q == 5)
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
	GOTO        L_tune131
;main.h,518 :: 		return;
	GOTO        L_end_tune
L_tune131:
;main.h,520 :: 		if (L_q > 5) {
	MOVF        main_L_q+0, 0 
	SUBLW       5
	BTFSC       STATUS+0, 0 
	GOTO        L_tune132
;main.h,521 :: 		step_ind = L_mult;
	MOVF        main_L_mult+0, 0 
	MOVWF       main_step_ind+0 
;main.h,522 :: 		L_mult = 1;
	MOVLW       1
	MOVWF       main_L_mult+0 
;main.h,523 :: 		sharp_ind();
	CALL        _sharp_ind+0, 0
;main.h,524 :: 		}
L_tune132:
;main.h,525 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune601
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__tune601:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune133
;main.h,526 :: 		return;
	GOTO        L_end_tune
L_tune133:
;main.h,527 :: 		if (C_q > 5) {
	MOVF        main_C_q+0, 0 
	SUBLW       5
	BTFSC       STATUS+0, 0 
	GOTO        L_tune134
;main.h,528 :: 		step_cap = C_mult; // = C_mult
	MOVF        main_C_mult+0, 0 
	MOVWF       main_step_cap+0 
;main.h,529 :: 		C_mult = 1;
	MOVLW       1
	MOVWF       main_C_mult+0 
;main.h,530 :: 		sharp_cap();
	CALL        _sharp_cap+0, 0
;main.h,531 :: 		}
L_tune134:
;main.h,532 :: 		if (L_q == 5)
	MOVF        main_L_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_tune135
;main.h,533 :: 		L_mult = 1;
	MOVLW       1
	MOVWF       main_L_mult+0 
	GOTO        L_tune136
L_tune135:
;main.h,534 :: 		else if (L_q == 6)
	MOVF        main_L_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_tune137
;main.h,535 :: 		L_mult = 2;
	MOVLW       2
	MOVWF       main_L_mult+0 
	GOTO        L_tune138
L_tune137:
;main.h,536 :: 		else if (L_q == 7)
	MOVF        main_L_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_tune139
;main.h,537 :: 		L_mult = 4;
	MOVLW       4
	MOVWF       main_L_mult+0 
L_tune139:
L_tune138:
L_tune136:
;main.h,538 :: 		if (C_q == 5)
	MOVF        main_C_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_tune140
;main.h,539 :: 		C_mult = 1;
	MOVLW       1
	MOVWF       main_C_mult+0 
	GOTO        L_tune141
L_tune140:
;main.h,540 :: 		else if (C_q == 6)
	MOVF        main_C_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_tune142
;main.h,541 :: 		C_mult = 2;
	MOVLW       2
	MOVWF       main_C_mult+0 
	GOTO        L_tune143
L_tune142:
;main.h,542 :: 		else if (C_q == 7)
	MOVF        main_C_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_tune144
;main.h,543 :: 		C_mult = 4;
	MOVLW       4
	MOVWF       main_C_mult+0 
L_tune144:
L_tune143:
L_tune141:
;main.h,544 :: 		asm CLRWDT;
	CLRWDT
;main.h,545 :: 		return;
;main.h,546 :: 		}
L_end_tune:
	RETURN      0
; end of _tune

_main:

;main.c,38 :: 		void main() {
;main.c,40 :: 		if (RCON.B3 == 0)
	BTFSC       RCON+0, 3 
	GOTO        L_main145
;main.c,41 :: 		Restart = 1;
	MOVLW       1
	MOVWF       _Restart+0 
L_main145:
;main.c,42 :: 		pic_init();
	CALL        _pic_init+0, 0
;main.c,44 :: 		Delay_ms(300);
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
;main.c,45 :: 		asm CLRWDT;
	CLRWDT
;main.c,46 :: 		cells_init();
	CALL        _cells_init+0, 0
;main.c,47 :: 		Soft_I2C_Init();
	CALL        _Soft_I2C_Init+0, 0
;main.c,48 :: 		if (type == 0)
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main147
;main.c,50 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,51 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,52 :: 		}
L_main147:
;main.c,53 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,55 :: 		Delay_ms(300);
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
;main.c,56 :: 		asm CLRWDT;
	CLRWDT
;main.c,57 :: 		if (PORTB.B1 == 0 & PORTB.B2 == 0)
	BTFSC       PORTB+0, 1 
	GOTO        L__main603
	BSF         R4, 0 
	GOTO        L__main604
L__main603:
	BCF         R4, 0 
L__main604:
	BTFSC       PORTB+0, 2 
	GOTO        L__main605
	BSF         STATUS+0, 0 
	GOTO        L__main606
L__main605:
	BCF         STATUS+0, 0 
L__main606:
	BTFSS       R4, 0 
	GOTO        L__main607
	BTFSS       STATUS+0, 0 
	GOTO        L__main607
	BSF         R4, 0 
	GOTO        L__main608
L__main607:
	BCF         R4, 0 
L__main608:
	BTFSS       R4, 0 
	GOTO        L_main149
;main.c,59 :: 		Test = 1;
	MOVLW       1
	MOVWF       _Test+0 
;main.c,60 :: 		Auto = 0;
	CLRF        _Auto+0 
;main.c,61 :: 		}
L_main149:
;main.c,62 :: 		if (L_q == 5)
	MOVF        main_L_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_main150
;main.c,63 :: 		L_mult = 1;
	MOVLW       1
	MOVWF       main_L_mult+0 
	GOTO        L_main151
L_main150:
;main.c,64 :: 		else if (L_q == 6)
	MOVF        main_L_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_main152
;main.c,65 :: 		L_mult = 2;
	MOVLW       2
	MOVWF       main_L_mult+0 
	GOTO        L_main153
L_main152:
;main.c,66 :: 		else if (L_q == 7)
	MOVF        main_L_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_main154
;main.c,67 :: 		L_mult = 4;
	MOVLW       4
	MOVWF       main_L_mult+0 
L_main154:
L_main153:
L_main151:
;main.c,68 :: 		if (C_q == 5)
	MOVF        main_C_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_main155
;main.c,69 :: 		C_mult = 1;
	MOVLW       1
	MOVWF       main_C_mult+0 
	GOTO        L_main156
L_main155:
;main.c,70 :: 		else if (C_q == 6)
	MOVF        main_C_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_main157
;main.c,71 :: 		C_mult = 2;
	MOVLW       2
	MOVWF       main_C_mult+0 
	GOTO        L_main158
L_main157:
;main.c,72 :: 		else if (C_q == 7)
	MOVF        main_C_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_main159
;main.c,73 :: 		C_mult = 4;
	MOVLW       4
	MOVWF       main_C_mult+0 
L_main159:
L_main158:
L_main156:
;main.c,75 :: 		Delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_main160:
	DECFSZ      R13, 1, 1
	BRA         L_main160
	DECFSZ      R12, 1, 1
	BRA         L_main160
	DECFSZ      R11, 1, 1
	BRA         L_main160
	NOP
;main.c,76 :: 		asm CLRWDT;
	CLRWDT
;main.c,77 :: 		led_init();
	CALL        _led_init+0, 0
;main.c,79 :: 		if (Button( & PORTB, 0, 100, 0))
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
	GOTO        L_main161
;main.c,81 :: 		if (type == 4 | type == 5) {
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
	GOTO        L_main162
;main.c,82 :: 		led_wr_str(0, 6, "Fider Loss", 10); // 128*64
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
;main.c,83 :: 		led_wr_str(2, 6, "input", 5);
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
;main.c,84 :: 		led_wr_str(4, 6 + 3 * 12, "dB", 2);
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
;main.c,85 :: 		} else if (type != 0) {
	GOTO        L_main163
L_main162:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_main164
;main.c,86 :: 		led_wr_str(0, 0, "Fider Loss input", 16); // 1602 | 128*32
	CLRF        FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr4_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr4_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,87 :: 		led_wr_str(1, 3, "dB", 2);
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
;main.c,88 :: 		}
L_main164:
L_main163:
;main.c,89 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
	MOVLW       52
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Fid_loss+0 
;main.c,90 :: 		show_loss();
	CALL        _show_loss+0, 0
;main.c,92 :: 		while (1) {
L_main165:
;main.c,93 :: 		if (Button( & PORTB, 2, 50, 0)) { // BYP button
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
	GOTO        L_main167
;main.c,94 :: 		if (Fid_loss < 99) {
	MOVLW       99
	SUBWF       _Fid_loss+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main168
;main.c,95 :: 		Fid_loss++;
	INCF        _Fid_loss+0, 1 
;main.c,96 :: 		show_loss();
	CALL        _show_loss+0, 0
;main.c,97 :: 		EEPROM_Write(0x34, Dec2Bcd(Fid_loss));
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_Dec2Bcd_decnum+0 
	CALL        _Dec2Bcd+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	MOVLW       52
	MOVWF       FARG_EEPROM_Write_address+0 
	CALL        _EEPROM_Write+0, 0
;main.c,98 :: 		}
L_main168:
;main.c,99 :: 		while (Button( & PORTB, 2, 50, 0)) asm CLRWDT;
L_main169:
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
	GOTO        L_main170
	CLRWDT
	GOTO        L_main169
L_main170:
;main.c,100 :: 		}
L_main167:
;main.c,102 :: 		if (Button( & PORTB, 1, 50, 0)) { // AUTO button
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
	GOTO        L_main171
;main.c,103 :: 		if (Fid_loss > 0) {
	MOVF        _Fid_loss+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_main172
;main.c,104 :: 		Fid_loss--;
	DECF        _Fid_loss+0, 1 
;main.c,105 :: 		show_loss();
	CALL        _show_loss+0, 0
;main.c,106 :: 		EEPROM_Write(0x34, Dec2Bcd(Fid_loss));
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_Dec2Bcd_decnum+0 
	CALL        _Dec2Bcd+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	MOVLW       52
	MOVWF       FARG_EEPROM_Write_address+0 
	CALL        _EEPROM_Write+0, 0
;main.c,107 :: 		}
L_main172:
;main.c,108 :: 		while (Button( & PORTB, 1, 50, 0)) asm CLRWDT;
L_main173:
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
	GOTO        L_main174
	CLRWDT
	GOTO        L_main173
L_main174:
;main.c,109 :: 		}
L_main171:
;main.c,110 :: 		asm CLRWDT;
	CLRWDT
;main.c,111 :: 		}
	GOTO        L_main165
;main.c,113 :: 		} //  Fider loss input
L_main161:
;main.c,115 :: 		if (Test == 0) {
	MOVF        _Test+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main175
;main.c,124 :: 		read_i2c_inputs();
	CALL        _read_i2c_inputs+0, 0
;main.c,125 :: 		load_settings();
	CALL        _load_settings+0, 0
;main.c,126 :: 		if (Restart == 1)
	MOVF        _Restart+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main176
;main.c,127 :: 		lcd_prep_short = 1;
	MOVLW       1
	MOVWF       _lcd_prep_short+0 
L_main176:
;main.c,128 :: 		lcd_prep();
	CALL        _lcd_prep+0, 0
;main.c,129 :: 		} else
	GOTO        L_main177
L_main175:
;main.c,130 :: 		Test_init();
	CALL        _test_init+0, 0
L_main177:
;main.c,132 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,136 :: 		while (1)
L_main178:
;main.c,139 :: 		asm CLRWDT;
	CLRWDT
;main.c,140 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,142 :: 		if (Test == 0)
	MOVF        _Test+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main180
;main.c,144 :: 		button_proc();	// główna procedura
	CALL        _button_proc+0, 0
;main.c,145 :: 		}
	GOTO        L_main181
L_main180:
;main.c,148 :: 		button_proc_test();
	CALL        _button_proc_test+0, 0
;main.c,149 :: 		}
L_main181:
;main.c,152 :: 		if (dysp_cnt != 0)
	MOVLW       0
	XORWF       _dysp_cnt+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main609
	MOVLW       0
	XORWF       _dysp_cnt+0, 0 
L__main609:
	BTFSC       STATUS+0, 2 
	GOTO        L_main182
;main.c,153 :: 		dysp_cnt--;
	MOVLW       1
	SUBWF       _dysp_cnt+0, 1 
	MOVLW       0
	SUBWFB      _dysp_cnt+1, 1 
	GOTO        L_main183
L_main182:
;main.c,154 :: 		else if (Test == 0 & Dysp_delay != 0)
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
	GOTO        L_main184
;main.c,155 :: 		dysp_off();
	CALL        _dysp_off+0, 0
L_main184:
L_main183:
;main.c,157 :: 		offset = mem_offset;
	MOVF        _mem_offset+0, 0 
	MOVWF       main_offset_L0+0 
;main.c,158 :: 		read_i2c_inputs();
	CALL        _read_i2c_inputs+0, 0
;main.c,160 :: 		if (offset != mem_offset) {
	MOVF        main_offset_L0+0, 0 
	XORWF       _mem_offset+0, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L_main185
;main.c,161 :: 		load_settings();
	CALL        _load_settings+0, 0
;main.c,162 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,163 :: 		}
L_main185:
;main.c,168 :: 		}
	GOTO        L_main178
;main.c,169 :: 		}
L_end_main:
	GOTO        $+0
; end of _main

_button_proc_test:

;main.c,173 :: 		void button_proc_test(void) {
;main.c,174 :: 		if (Button( & PORTB, 0, 50, 0)) { // Tune btn
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
	GOTO        L_button_proc_test186
;main.c,175 :: 		Delay_ms(250);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_button_proc_test187:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc_test187
	DECFSZ      R12, 1, 1
	BRA         L_button_proc_test187
	DECFSZ      R11, 1, 1
	BRA         L_button_proc_test187
	NOP
	NOP
;main.c,176 :: 		asm CLRWDT;
	CLRWDT
;main.c,177 :: 		if (PORTB.B0 == 1) { // short press button
	BTFSS       PORTB+0, 0 
	GOTO        L_button_proc_test188
;main.c,178 :: 		if (SW == 0)
	MOVF        main_SW+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc_test189
;main.c,179 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
	GOTO        L_button_proc_test190
L_button_proc_test189:
;main.c,181 :: 		SW = 0;
	CLRF        main_SW+0 
L_button_proc_test190:
;main.c,182 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,183 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,184 :: 		} else { // long press button
	GOTO        L_button_proc_test191
L_button_proc_test188:
;main.c,185 :: 		if (L == 1)
	MOVF        _L+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc_test192
;main.c,186 :: 		L = 0;
	CLRF        _L+0 
	GOTO        L_button_proc_test193
L_button_proc_test192:
;main.c,188 :: 		L = 1;
	MOVLW       1
	MOVWF       _L+0 
L_button_proc_test193:
;main.c,189 :: 		if (L == 1) {
	MOVF        _L+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc_test194
;main.c,190 :: 		if (type == 4 | type == 5) // 128*64 OLED
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
	GOTO        L_button_proc_test195
;main.c,191 :: 		led_wr_str(0, 16 + 12 * 8, "l", 1);
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
	GOTO        L_button_proc_test196
L_button_proc_test195:
;main.c,192 :: 		else if (type != 0) // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test197
;main.c,193 :: 		led_wr_str(0, 8, "l", 1);
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
L_button_proc_test197:
L_button_proc_test196:
;main.c,194 :: 		} else {
	GOTO        L_button_proc_test198
L_button_proc_test194:
;main.c,195 :: 		if (type == 4 | type == 5) // 128*64 OLED
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
	GOTO        L_button_proc_test199
;main.c,196 :: 		led_wr_str(0, 16 + 12 * 8, "c", 1);
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
	GOTO        L_button_proc_test200
L_button_proc_test199:
;main.c,197 :: 		else if (type != 0) // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test201
;main.c,198 :: 		led_wr_str(0, 8, "c", 1);
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
L_button_proc_test201:
L_button_proc_test200:
;main.c,199 :: 		}
L_button_proc_test198:
;main.c,200 :: 		}
L_button_proc_test191:
;main.c,201 :: 		while (Button( & PORTB, 0, 50, 0))
L_button_proc_test202:
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
	GOTO        L_button_proc_test203
;main.c,203 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,204 :: 		asm CLRWDT;
	CLRWDT
;main.c,205 :: 		}
	GOTO        L_button_proc_test202
L_button_proc_test203:
;main.c,206 :: 		} // END Tune btn
L_button_proc_test186:
;main.c,208 :: 		if (Button( & PORTB, 2, 50, 0)) { // BYP button
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
	GOTO        L_button_proc_test204
;main.c,209 :: 		asm CLRWDT;
	CLRWDT
;main.c,210 :: 		while (PORTB.B2 == 0) {
L_button_proc_test205:
	BTFSC       PORTB+0, 2 
	GOTO        L_button_proc_test206
;main.c,211 :: 		if (L & ind < 32 * L_mult - 1) {
	MOVLW       5
	MOVWF       R2 
	MOVF        main_L_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__button_proc_test611:
	BZ          L__button_proc_test612
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__button_proc_test611
L__button_proc_test612:
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
	GOTO        L__button_proc_test613
	MOVF        R2, 0 
	SUBWF       main_ind+0, 0 
L__button_proc_test613:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        _L+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test207
;main.c,212 :: 		ind++;
	INCF        main_ind+0, 1 
;main.c,213 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,214 :: 		} else if (!L & cap < 32 * L_mult - 1) {
	GOTO        L_button_proc_test208
L_button_proc_test207:
	MOVF        _L+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R4 
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
	SUBWF       main_cap+0, 0 
L__button_proc_test616:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R4, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test209
;main.c,215 :: 		cap++;
	INCF        main_cap+0, 1 
;main.c,216 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,217 :: 		}
L_button_proc_test209:
L_button_proc_test208:
;main.c,218 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,219 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,220 :: 		Delay_ms(30);
	MOVLW       156
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_button_proc_test210:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc_test210
	DECFSZ      R12, 1, 1
	BRA         L_button_proc_test210
;main.c,221 :: 		asm CLRWDT;
	CLRWDT
;main.c,222 :: 		}
	GOTO        L_button_proc_test205
L_button_proc_test206:
;main.c,223 :: 		} // end of BYP button
L_button_proc_test204:
;main.c,225 :: 		if (Button( & PORTB, 1, 50, 0) & Bypas == 0)
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
	GOTO        L_button_proc_test211
;main.c,227 :: 		asm CLRWDT;
	CLRWDT
;main.c,228 :: 		while (PORTB.B1 == 0) {
L_button_proc_test212:
	BTFSC       PORTB+0, 1 
	GOTO        L_button_proc_test213
;main.c,229 :: 		if (L & ind > 0) {
	MOVF        main_ind+0, 0 
	SUBLW       0
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        _L+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test214
;main.c,230 :: 		ind--;
	DECF        main_ind+0, 1 
;main.c,231 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,232 :: 		} else if (!L & cap > 0) {
	GOTO        L_button_proc_test215
L_button_proc_test214:
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
	GOTO        L_button_proc_test216
;main.c,233 :: 		cap--;
	DECF        main_cap+0, 1 
;main.c,234 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,235 :: 		}
L_button_proc_test216:
L_button_proc_test215:
;main.c,236 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,237 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,238 :: 		Delay_ms(30);
	MOVLW       156
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_button_proc_test217:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc_test217
	DECFSZ      R12, 1, 1
	BRA         L_button_proc_test217
;main.c,239 :: 		asm CLRWDT;
	CLRWDT
;main.c,240 :: 		}
	GOTO        L_button_proc_test212
L_button_proc_test213:
;main.c,241 :: 		}
L_button_proc_test211:
;main.c,242 :: 		return;
;main.c,243 :: 		}
L_end_button_proc_test:
	RETURN      0
; end of _button_proc_test

_button_proc:

;main.c,245 :: 		void button_proc(void)
;main.c,247 :: 		if (Button( & PORTB, 0, 50, 0) | Soft_tune)
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
	GOTO        L_button_proc218
;main.c,249 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,250 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,251 :: 		Delay_ms(250);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_button_proc219:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc219
	DECFSZ      R12, 1, 1
	BRA         L_button_proc219
	DECFSZ      R11, 1, 1
	BRA         L_button_proc219
	NOP
	NOP
;main.c,252 :: 		asm CLRWDT;
	CLRWDT
;main.c,253 :: 		if (Soft_tune == 0 & PORTB.B0 == 1) { // short press button
	MOVF        _Soft_tune+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	BTFSC       PORTB+0, 0 
	GOTO        L__button_proc618
	BCF         STATUS+0, 0 
	GOTO        L__button_proc619
L__button_proc618:
	BSF         STATUS+0, 0 
L__button_proc619:
	CLRF        R0 
	BTFSC       STATUS+0, 0 
	INCF        R0, 1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc220
;main.c,254 :: 		show_reset();
	CALL        _show_reset+0, 0
;main.c,255 :: 		bypas = 0;
	CLRF        _bypas+0 
;main.c,256 :: 		}
	GOTO        L_button_proc221
L_button_proc220:
;main.c,260 :: 		n_Tx = 0; // TX request
	BCF         LATA6_bit+0, BitPos(LATA6_bit+0) 
;main.c,261 :: 		Delay_ms(250); //
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_button_proc222:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc222
	DECFSZ      R12, 1, 1
	BRA         L_button_proc222
	DECFSZ      R11, 1, 1
	BRA         L_button_proc222
	NOP
	NOP
;main.c,262 :: 		btn_push();
	CALL        _btn_push+0, 0
;main.c,263 :: 		bypas = 0;
	CLRF        _bypas+0 
;main.c,264 :: 		while (Button( & PORTB, 0, 50, 0))
L_button_proc223:
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
	GOTO        L_button_proc224
;main.c,266 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,267 :: 		asm CLRWDT;
	CLRWDT
;main.c,268 :: 		}
	GOTO        L_button_proc223
L_button_proc224:
;main.c,269 :: 		Soft_tune = 0;
	CLRF        _Soft_tune+0 
;main.c,270 :: 		}
L_button_proc221:
;main.c,272 :: 		}
L_button_proc218:
;main.c,274 :: 		if (Button( & PORTB, 2, 50, 0)) { // BYP button
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
	GOTO        L_button_proc225
;main.c,275 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,276 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,277 :: 		asm CLRWDT;
	CLRWDT
;main.c,278 :: 		if (bypas == 0) {
	MOVF        _bypas+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc226
;main.c,279 :: 		bypas = 1;
	MOVLW       1
	MOVWF       _bypas+0 
;main.c,280 :: 		cap_mem = cap;
	MOVF        main_cap+0, 0 
	MOVWF       _cap_mem+0 
;main.c,281 :: 		ind_mem = ind;
	MOVF        main_ind+0, 0 
	MOVWF       _ind_mem+0 
;main.c,282 :: 		SW_mem = SW;
	MOVF        main_SW+0, 0 
	MOVWF       _SW_mem+0 
;main.c,283 :: 		cap = 0;
	CLRF        main_cap+0 
;main.c,284 :: 		ind = 0;
	CLRF        main_ind+0 
;main.c,285 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,286 :: 		set_ind(ind);
	CLRF        FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,287 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,288 :: 		set_SW(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,289 :: 		if (Loss_mode == 0)
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc227
;main.c,290 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
L_button_proc227:
;main.c,291 :: 		Auto_mem = Auto;
	MOVF        _Auto+0, 0 
	MOVWF       _Auto_mem+0 
;main.c,292 :: 		Auto = 0;
	CLRF        _Auto+0 
;main.c,293 :: 		} else {
	GOTO        L_button_proc228
L_button_proc226:
;main.c,294 :: 		bypas = 0;
	CLRF        _bypas+0 
;main.c,295 :: 		cap = cap_mem;
	MOVF        _cap_mem+0, 0 
	MOVWF       main_cap+0 
;main.c,296 :: 		ind = ind_mem;
	MOVF        _ind_mem+0, 0 
	MOVWF       main_ind+0 
;main.c,297 :: 		SW = SW_mem;
	MOVF        _SW_mem+0, 0 
	MOVWF       main_SW+0 
;main.c,298 :: 		set_cap(cap);
	MOVF        _cap_mem+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,299 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
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
;main.c,303 :: 		Auto = Auto_mem;
	MOVF        _Auto_mem+0, 0 
	MOVWF       _Auto+0 
;main.c,304 :: 		}
L_button_proc228:
;main.c,305 :: 		if (type == 4 | type == 5) { // 128*64 OLED
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
	GOTO        L_button_proc230
;main.c,306 :: 		if (Auto & !Bypas)
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc231
;main.c,307 :: 		led_wr_str(0, 16 + 8 * 12, ".", 1);
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
	GOTO        L_button_proc232
L_button_proc231:
;main.c,308 :: 		else if (!Auto & Bypas)
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc233
;main.c,309 :: 		led_wr_str(0, 16 + 8 * 12, "_", 1);
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
	GOTO        L_button_proc234
L_button_proc233:
;main.c,311 :: 		led_wr_str(0, 16 + 8 * 12, " ", 1);
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
L_button_proc234:
L_button_proc232:
;main.c,312 :: 		} else if (type != 0) { //  1602 LCD  or 128*32 OLED
	GOTO        L_button_proc235
L_button_proc230:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc236
;main.c,313 :: 		if (Auto & !Bypas)
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc237
;main.c,314 :: 		led_wr_str(0, 8, ".", 1);
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
	GOTO        L_button_proc238
L_button_proc237:
;main.c,315 :: 		else if (!Auto & Bypas)
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc239
;main.c,316 :: 		led_wr_str(0, 8, "_", 1);
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
	GOTO        L_button_proc240
L_button_proc239:
;main.c,318 :: 		led_wr_str(0, 8, " ", 1);
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
L_button_proc240:
L_button_proc238:
;main.c,319 :: 		}
L_button_proc236:
L_button_proc235:
;main.c,320 :: 		asm CLRWDT;
	CLRWDT
;main.c,321 :: 		while (Button( & PORTB, 2, 50, 0)) {
L_button_proc241:
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
	GOTO        L_button_proc242
;main.c,322 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,323 :: 		asm CLRWDT;
	CLRWDT
;main.c,324 :: 		}
	GOTO        L_button_proc241
L_button_proc242:
;main.c,325 :: 		}
L_button_proc225:
;main.c,327 :: 		if (Button( & PORTB, 1, 50, 0) & Bypas == 0) { // Auto button
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
	GOTO        L_button_proc243
;main.c,328 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,329 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,330 :: 		asm CLRWDT;
	CLRWDT
;main.c,331 :: 		if (Auto == 0)
	MOVF        _Auto+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc244
;main.c,332 :: 		Auto = 1;
	MOVLW       1
	MOVWF       _Auto+0 
	GOTO        L_button_proc245
L_button_proc244:
;main.c,334 :: 		Auto = 0;
	CLRF        _Auto+0 
L_button_proc245:
;main.c,335 :: 		EEPROM_Write(2, Auto);
	MOVLW       2
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        _Auto+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,336 :: 		if (type == 4 | type == 5) { // 128*64 OLED
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
	GOTO        L_button_proc246
;main.c,337 :: 		if (Auto & !Bypas)
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc247
;main.c,338 :: 		led_wr_str(0, 16 + 8 * 12, ".", 1);
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
	GOTO        L_button_proc248
L_button_proc247:
;main.c,339 :: 		else if (!Auto & Bypas)
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc249
;main.c,340 :: 		led_wr_str(0, 16 + 8 * 12, "_", 1);
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
	GOTO        L_button_proc250
L_button_proc249:
;main.c,342 :: 		led_wr_str(0, 16 + 8 * 12, " ", 1);
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
L_button_proc250:
L_button_proc248:
;main.c,343 :: 		} else if (type != 0) { //  1602 LCD  or 128*32 OLED
	GOTO        L_button_proc251
L_button_proc246:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc252
;main.c,344 :: 		if (Auto & !Bypas)
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc253
;main.c,345 :: 		led_wr_str(0, 8, ".", 1);
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
	GOTO        L_button_proc254
L_button_proc253:
;main.c,346 :: 		else if (!Auto & Bypas)
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc255
;main.c,347 :: 		led_wr_str(0, 8, "_", 1);
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
	GOTO        L_button_proc256
L_button_proc255:
;main.c,349 :: 		led_wr_str(0, 8, " ", 1);
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
L_button_proc256:
L_button_proc254:
;main.c,350 :: 		}
L_button_proc252:
L_button_proc251:
;main.c,351 :: 		asm CLRWDT;
	CLRWDT
;main.c,352 :: 		while (Button( & PORTB, 1, 50, 0)) {
L_button_proc257:
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
	GOTO        L_button_proc258
;main.c,353 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,354 :: 		asm CLRWDT;
	CLRWDT
;main.c,355 :: 		}
	GOTO        L_button_proc257
L_button_proc258:
;main.c,356 :: 		}
L_button_proc243:
;main.c,357 :: 		return;
;main.c,358 :: 		}
L_end_button_proc:
	RETURN      0
; end of _button_proc

_show_reset:

;main.c,360 :: 		void show_reset() {
;main.c,361 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.c,362 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,363 :: 		set_sw(SW);
	MOVLW       1
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,364 :: 		EEPROM_Write(255 - mem_offset * 5, 0);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       255
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,365 :: 		EEPROM_Write(254 - mem_offset * 5, 0);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       254
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,366 :: 		EEPROM_Write(253 - mem_offset * 5, 1);
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
;main.c,367 :: 		EEPROM_Write(252 - mem_offset * 5, 0);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       252
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,368 :: 		EEPROM_Write(251 - mem_offset * 5, 0);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       251
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,369 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,370 :: 		Loss_mode = 0;
	CLRF        _Loss_mode+0 
;main.c,372 :: 		n_Tx = 1;
	BSF         LATA6_bit+0, BitPos(LATA6_bit+0) 
;main.c,373 :: 		SWR = 0;
	CLRF        _SWR+0 
	CLRF        _SWR+1 
;main.c,374 :: 		PWR = 0;
	CLRF        _PWR+0 
	CLRF        _PWR+1 
;main.c,375 :: 		SWR_fixed_old = 0;
	CLRF        _SWR_fixed_old+0 
	CLRF        _SWR_fixed_old+1 
;main.c,376 :: 		if (type == 4 | type == 5) { // 128*64 OLED
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
	GOTO        L_show_reset259
;main.c,377 :: 		led_wr_str(2, 16, "RESET   ", 8);
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
;main.c,378 :: 		asm CLRWDT;
	CLRWDT
;main.c,379 :: 		delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_show_reset260:
	DECFSZ      R13, 1, 1
	BRA         L_show_reset260
	DECFSZ      R12, 1, 1
	BRA         L_show_reset260
	DECFSZ      R11, 1, 1
	BRA         L_show_reset260
	NOP
	NOP
;main.c,380 :: 		led_wr_str(2, 16, "SWR=0.00", 8);
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
;main.c,381 :: 		asm CLRWDT;
	CLRWDT
;main.c,382 :: 		} else if (type != 0) { // 1602 LCD & 128*32 OLED
	GOTO        L_show_reset261
L_show_reset259:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_reset262
;main.c,383 :: 		led_wr_str(1, 0, "RESET   ", 8);
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
;main.c,384 :: 		asm CLRWDT;
	CLRWDT
;main.c,385 :: 		delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_show_reset263:
	DECFSZ      R13, 1, 1
	BRA         L_show_reset263
	DECFSZ      R12, 1, 1
	BRA         L_show_reset263
	DECFSZ      R11, 1, 1
	BRA         L_show_reset263
	NOP
	NOP
;main.c,386 :: 		led_wr_str(1, 0, "SWR=0.00", 8);
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
;main.c,387 :: 		asm CLRWDT;
	CLRWDT
;main.c,388 :: 		} else {
	GOTO        L_show_reset264
L_show_reset262:
;main.c,389 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,390 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,391 :: 		}
L_show_reset264:
L_show_reset261:
;main.c,392 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,393 :: 		Power_old = 10000;
	MOVLW       16
	MOVWF       _Power_old+0 
	MOVLW       39
	MOVWF       _Power_old+1 
;main.c,394 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,395 :: 		return;
;main.c,396 :: 		}
L_end_show_reset:
	RETURN      0
; end of _show_reset

_btn_push:

;main.c,398 :: 		void btn_push()
;main.c,400 :: 		asm CLRWDT;
	CLRWDT
;main.c,401 :: 		if (type == 4 | type == 5) { // 128*64 OLED
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
	GOTO        L_btn_push265
;main.c,402 :: 		led_wr_str(2, 16 + 12 * 4, "TUNE", 4);
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
;main.c,403 :: 		} else if (type != 0) { // 1602 LCD & 128*32 OLED
	GOTO        L_btn_push266
L_btn_push265:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_btn_push267
;main.c,404 :: 		led_wr_str(1, 4, "TUNE", 4);
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
;main.c,405 :: 		} else {
	GOTO        L_btn_push268
L_btn_push267:
;main.c,406 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,407 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,408 :: 		}
L_btn_push268:
L_btn_push266:
;main.c,409 :: 		tune();		// strojenie
	CALL        _tune+0, 0
;main.c,410 :: 		if (type == 0)
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_btn_push269
;main.c,412 :: 		if (swr <= 150) {
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__btn_push622
	MOVF        _SWR+0, 0 
	SUBLW       150
L__btn_push622:
	BTFSS       STATUS+0, 0 
	GOTO        L_btn_push270
;main.c,413 :: 		LATB.B6 = 0;
	BCF         LATB+0, 6 
;main.c,414 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,415 :: 		} // Green
	GOTO        L_btn_push271
L_btn_push270:
;main.c,416 :: 		else if (swr <= 250) {
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__btn_push623
	MOVF        _SWR+0, 0 
	SUBLW       250
L__btn_push623:
	BTFSS       STATUS+0, 0 
	GOTO        L_btn_push272
;main.c,417 :: 		PORTB.B6 = 0;
	BCF         PORTB+0, 6 
;main.c,418 :: 		PORTB.B7 = 0;
	BCF         PORTB+0, 7 
;main.c,419 :: 		} // Orange
	GOTO        L_btn_push273
L_btn_push272:
;main.c,421 :: 		PORTB.B6 = 1;
	BSF         PORTB+0, 6 
;main.c,422 :: 		PORTB.B7 = 0;
	BCF         PORTB+0, 7 
;main.c,423 :: 		} // Red
L_btn_push273:
L_btn_push271:
;main.c,424 :: 		}
	GOTO        L_btn_push274
L_btn_push269:
;main.c,425 :: 		else if (Loss_mode == 0 | Loss_ind == 0)
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
	GOTO        L_btn_push275
;main.c,426 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
L_btn_push275:
L_btn_push274:
;main.c,427 :: 		EEPROM_Write(255 - mem_offset * 5, cap);
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
;main.c,428 :: 		EEPROM_Write(254 - mem_offset * 5, ind);
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
;main.c,429 :: 		EEPROM_Write(253 - mem_offset * 5, SW);
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
;main.c,430 :: 		EEPROM_Write(252 - mem_offset * 5, swr_a / 256);
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
;main.c,431 :: 		EEPROM_Write(251 - mem_offset * 5, swr_a % 256);
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
;main.c,432 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,433 :: 		Power_old = 10000;
	MOVLW       16
	MOVWF       _Power_old+0 
	MOVLW       39
	MOVWF       _Power_old+1 
;main.c,434 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,435 :: 		SWR_fixed_old = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       _SWR_fixed_old+0 
	MOVF        _SWR+1, 0 
	MOVWF       _SWR_fixed_old+1 
;main.c,437 :: 		n_Tx = 1;
	BSF         LATA6_bit+0, BitPos(LATA6_bit+0) 
;main.c,438 :: 		asm CLRWDT;
	CLRWDT
;main.c,439 :: 		return;
;main.c,440 :: 		}
L_end_btn_push:
	RETURN      0
; end of _btn_push

_lcd_prep:

;main.c,442 :: 		void lcd_prep() {
;main.c,443 :: 		asm CLRWDT;
	CLRWDT
;main.c,444 :: 		if (type == 4 | type == 5) { // 128*64 OLED
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
	GOTO        L_lcd_prep276
;main.c,445 :: 		if (lcd_prep_short == 0) {
	MOVF        _lcd_prep_short+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep277
;main.c,446 :: 		led_wr_str(0, 22, "ATU-100", 7);
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
;main.c,447 :: 		led_wr_str(2, 6, "EXT board", 9);
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
;main.c,448 :: 		led_wr_str(4, 16, "by N7DDC", 8);
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
;main.c,449 :: 		led_wr_str(6, 4, "FW ver 3.1m", 11);
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
;main.c,450 :: 		asm CLRWDT;
	CLRWDT
;main.c,451 :: 		Delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_lcd_prep278:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep278
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep278
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep278
	NOP
	NOP
;main.c,452 :: 		asm CLRWDT;
	CLRWDT
;main.c,453 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_prep279:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep279
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep279
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep279
	NOP
	NOP
;main.c,454 :: 		asm CLRWDT;
	CLRWDT
;main.c,455 :: 		led_wr_str(0, 16, "        ", 8);
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
;main.c,456 :: 		led_wr_str(2, 4, "          ", 10);
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
;main.c,457 :: 		led_wr_str(4, 16, "        ", 8);
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
;main.c,458 :: 		led_wr_str(6, 4, "          ", 10);
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr35_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr35_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,459 :: 		}
L_lcd_prep277:
;main.c,460 :: 		Delay_ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
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
;main.c,461 :: 		if (P_High == 1)
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep281
;main.c,462 :: 		led_wr_str(0, 16, "PWR=  0W", 8);
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
	GOTO        L_lcd_prep282
L_lcd_prep281:
;main.c,464 :: 		led_wr_str(0, 16, "PWR=0.0W", 8);
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
L_lcd_prep282:
;main.c,465 :: 		led_wr_str(2, 16, "SWR=0.00", 8);
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
;main.c,466 :: 		if (Auto)
	MOVF        _Auto+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep283
;main.c,467 :: 		led_wr_str(0, 16 + 8 * 12, ".", 1);
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
L_lcd_prep283:
;main.c,468 :: 		} else if (type != 0) { // 1602 LCD & 128*32 OLED
	GOTO        L_lcd_prep284
L_lcd_prep276:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep285
;main.c,469 :: 		if (lcd_prep_short == 0) {
	MOVF        _lcd_prep_short+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep286
;main.c,470 :: 		led_wr_str(0, 4, "ATU-100", 7);
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
;main.c,471 :: 		led_wr_str(1, 3, "EXT board", 9);
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
;main.c,472 :: 		asm CLRWDT;
	CLRWDT
;main.c,473 :: 		Delay_ms(700);
	MOVLW       15
	MOVWF       R11, 0
	MOVLW       53
	MOVWF       R12, 0
	MOVLW       81
	MOVWF       R13, 0
L_lcd_prep287:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep287
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep287
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep287
;main.c,474 :: 		asm CLRWDT;
	CLRWDT
;main.c,475 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_prep288:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep288
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep288
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep288
	NOP
	NOP
;main.c,476 :: 		asm CLRWDT;
	CLRWDT
;main.c,477 :: 		led_wr_str(0, 4, "by N7DDC", 8);
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
;main.c,478 :: 		led_wr_str(1, 3, "FW ver 3.1m", 11);
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
;main.c,479 :: 		asm CLRWDT;
	CLRWDT
;main.c,480 :: 		Delay_ms(600);
	MOVLW       13
	MOVWF       R11, 0
	MOVLW       45
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_lcd_prep289:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_prep289
	DECFSZ      R12, 1, 1
	BRA         L_lcd_prep289
	DECFSZ      R11, 1, 1
	BRA         L_lcd_prep289
	NOP
	NOP
;main.c,481 :: 		asm CLRWDT;
	CLRWDT
;main.c,482 :: 		Delay_ms(500);
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
;main.c,483 :: 		asm CLRWDT;
	CLRWDT
;main.c,484 :: 		led_wr_str(0, 4, "        ", 8);
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
;main.c,485 :: 		led_wr_str(1, 3, "          ", 10);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr45_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr45_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,486 :: 		}
L_lcd_prep286:
;main.c,487 :: 		Delay_ms(150);
	MOVLW       4
	MOVWF       R11, 0
	MOVLW       12
	MOVWF       R12, 0
	MOVLW       51
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
;main.c,488 :: 		if (P_High == 1)
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep292
;main.c,489 :: 		led_wr_str(0, 0, "PWR=  0W", 8);
	CLRF        FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr46_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr46_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
	GOTO        L_lcd_prep293
L_lcd_prep292:
;main.c,491 :: 		led_wr_str(0, 0, "PWR=0.0W", 8);
	CLRF        FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr47_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr47_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       8
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
L_lcd_prep293:
;main.c,492 :: 		led_wr_str(1, 0, "SWR=0.00", 8);
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
;main.c,493 :: 		if (Auto)
	MOVF        _Auto+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep294
;main.c,494 :: 		led_wr_str(0, 8, ".", 1);
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
L_lcd_prep294:
;main.c,495 :: 		}
L_lcd_prep285:
L_lcd_prep284:
;main.c,496 :: 		asm CLRWDT;
	CLRWDT
;main.c,497 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,498 :: 		return;
;main.c,499 :: 		}
L_end_lcd_prep:
	RETURN      0
; end of _lcd_prep

_lcd_swr:

;main.c,501 :: 		void lcd_swr(int swr) {
;main.c,502 :: 		asm CLRWDT;
	CLRWDT
;main.c,503 :: 		if (swr != SWR_old) {
	MOVF        FARG_lcd_swr_swr+1, 0 
	XORWF       _SWR_old+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr626
	MOVF        _SWR_old+0, 0 
	XORWF       FARG_lcd_swr_swr+0, 0 
L__lcd_swr626:
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr295
;main.c,504 :: 		SWR_old = swr;
	MOVF        FARG_lcd_swr_swr+0, 0 
	MOVWF       _SWR_old+0 
	MOVF        FARG_lcd_swr_swr+1, 0 
	MOVWF       _SWR_old+1 
;main.c,505 :: 		if (swr == 1) { // Low power
	MOVLW       0
	XORWF       FARG_lcd_swr_swr+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr627
	MOVLW       1
	XORWF       FARG_lcd_swr_swr+0, 0 
L__lcd_swr627:
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr296
;main.c,506 :: 		if (type == 4 | type == 5)
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
	GOTO        L_lcd_swr297
;main.c,507 :: 		led_wr_str(2, 16 + 4 * 12, "0.00", 4); // 128*64 OLED
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
	GOTO        L_lcd_swr298
L_lcd_swr297:
;main.c,508 :: 		else if (type != 0)
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr299
;main.c,509 :: 		led_wr_str(1, 4, "0.00", 4); // 1602  & 128*32 OLED
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
	GOTO        L_lcd_swr300
L_lcd_swr299:
;main.c,510 :: 		else if (type == 0) { // real-time 2-colors led work
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr301
;main.c,511 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,512 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,513 :: 		}
L_lcd_swr301:
L_lcd_swr300:
L_lcd_swr298:
;main.c,514 :: 		SWR_old = 0;
	CLRF        _SWR_old+0 
	CLRF        _SWR_old+1 
;main.c,515 :: 		} else {
	GOTO        L_lcd_swr302
L_lcd_swr296:
;main.c,516 :: 		SWR_old = swr;
	MOVF        FARG_lcd_swr_swr+0, 0 
	MOVWF       _SWR_old+0 
	MOVF        FARG_lcd_swr_swr+1, 0 
	MOVWF       _SWR_old+1 
;main.c,517 :: 		IntToStr(swr, work_str);
	MOVF        FARG_lcd_swr_swr+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_lcd_swr_swr+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,518 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,519 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,520 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,521 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,522 :: 		if (type == 4 | type == 5)
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
	GOTO        L_lcd_swr303
;main.c,523 :: 		led_wr_str(2, 16 + 4 * 12, work_str_2, 4); // 128*64 OLED
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
	GOTO        L_lcd_swr304
L_lcd_swr303:
;main.c,524 :: 		else if (type != 0)
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr305
;main.c,525 :: 		led_wr_str(1, 4, work_str_2, 4); // 1602  & 128*32
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
	GOTO        L_lcd_swr306
L_lcd_swr305:
;main.c,526 :: 		else if (type == 0) { // real-time 2-colors led work
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr307
;main.c,527 :: 		if (swr <= 150) {
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_lcd_swr_swr+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr628
	MOVF        FARG_lcd_swr_swr+0, 0 
	SUBLW       150
L__lcd_swr628:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_swr308
;main.c,528 :: 		LATB.B6 = 0;
	BCF         LATB+0, 6 
;main.c,529 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,530 :: 		} // Green
	GOTO        L_lcd_swr309
L_lcd_swr308:
;main.c,531 :: 		else if (swr <= 250) {
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_lcd_swr_swr+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr629
	MOVF        FARG_lcd_swr_swr+0, 0 
	SUBLW       250
L__lcd_swr629:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_swr310
;main.c,532 :: 		PORTB.B6 = 0;
	BCF         PORTB+0, 6 
;main.c,533 :: 		PORTB.B7 = 0;
	BCF         PORTB+0, 7 
;main.c,534 :: 		} // Orange
	GOTO        L_lcd_swr311
L_lcd_swr310:
;main.c,536 :: 		PORTB.B6 = 1;
	BSF         PORTB+0, 6 
;main.c,537 :: 		PORTB.B7 = 0;
	BCF         PORTB+0, 7 
;main.c,538 :: 		} // Red
L_lcd_swr311:
L_lcd_swr309:
;main.c,539 :: 		}
L_lcd_swr307:
L_lcd_swr306:
L_lcd_swr304:
;main.c,540 :: 		}
L_lcd_swr302:
;main.c,541 :: 		}
L_lcd_swr295:
;main.c,542 :: 		asm CLRWDT;
	CLRWDT
;main.c,543 :: 		return;
;main.c,544 :: 		}
L_end_lcd_swr:
	RETURN      0
; end of _lcd_swr

_button_delay:

;main.c,546 :: 		void button_delay() {
;main.c,547 :: 		if ((Button( & PORTB, 0, 25, 0)) | (Button( & PORTB, 1, 25, 0)) |
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
;main.c,548 :: 		(Button( & PORTB, 2, 25, 0))) {
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
	GOTO        L_button_delay312
;main.c,549 :: 		but = 1;
	MOVLW       1
	MOVWF       _but+0 
;main.c,550 :: 		}
L_button_delay312:
;main.c,551 :: 		return;
;main.c,552 :: 		}
L_end_button_delay:
	RETURN      0
; end of _button_delay

_show_pwr:

;main.c,554 :: 		void show_pwr(int Power, int SWR) {
;main.c,558 :: 		asm CLRWDT;
	CLRWDT
;main.c,560 :: 		if (Test == 0 & Loss_ind == 1 & SWR >= 100) {
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
	GOTO        L__show_pwr632
	MOVLW       100
	SUBWF       FARG_show_pwr_SWR+0, 0 
L__show_pwr632:
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr313
;main.c,561 :: 		if (Loss_mode == 0) { // prepare
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr314
;main.c,562 :: 		if (type == 4 | type == 5) { // 128*64 OLED
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
	GOTO        L_show_pwr315
;main.c,563 :: 		if (P_High == 1)
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr316
;main.c,564 :: 		led_wr_str(4, 16, "ANT=  0W", 8);
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
	GOTO        L_show_pwr317
L_show_pwr316:
;main.c,566 :: 		led_wr_str(4, 16, "ANT=0.0W", 8);
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
L_show_pwr317:
;main.c,567 :: 		led_wr_str(6, 16, "EFF=  0%", 8);
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
;main.c,568 :: 		} else if (type == 2 | type == 3) { // 128*32 OLED
	GOTO        L_show_pwr318
L_show_pwr315:
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
	GOTO        L_show_pwr319
;main.c,569 :: 		if (P_High == 1)
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr320
;main.c,570 :: 		led_wr_str(0, 9, "ANT=  0W", 8);
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
	GOTO        L_show_pwr321
L_show_pwr320:
;main.c,572 :: 		led_wr_str(0, 9, "ANT=0.0W", 8);
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
L_show_pwr321:
;main.c,573 :: 		led_wr_str(1, 9, "EFF=  0%", 8);
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
;main.c,574 :: 		} else if (type == 1) { // 1602 LCD
	GOTO        L_show_pwr322
L_show_pwr319:
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr323
;main.c,575 :: 		if (P_High == 1)
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr324
;main.c,576 :: 		led_wr_str(0, 9, "AN=  0W", 7);
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
	GOTO        L_show_pwr325
L_show_pwr324:
;main.c,578 :: 		led_wr_str(0, 9, "AN=0.0W", 7);
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
L_show_pwr325:
;main.c,579 :: 		led_wr_str(1, 9, "EFF= 0%", 7);
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
;main.c,580 :: 		}
L_show_pwr323:
L_show_pwr322:
L_show_pwr318:
;main.c,581 :: 		}
L_show_pwr314:
;main.c,582 :: 		Loss_mode = 1;
	MOVLW       1
	MOVWF       _Loss_mode+0 
;main.c,583 :: 		} else {
	GOTO        L_show_pwr326
L_show_pwr313:
;main.c,584 :: 		if (Loss_mode == 1)
	MOVF        _Loss_mode+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr327
;main.c,585 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
L_show_pwr327:
;main.c,586 :: 		Loss_mode = 0;
	CLRF        _Loss_mode+0 
;main.c,587 :: 		}
L_show_pwr326:
;main.c,588 :: 		asm CLRWDT;
	CLRWDT
;main.c,589 :: 		if (Power != Power_old) {
	MOVF        FARG_show_pwr_Power+1, 0 
	XORWF       _Power_old+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr633
	MOVF        _Power_old+0, 0 
	XORWF       FARG_show_pwr_Power+0, 0 
L__show_pwr633:
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr328
;main.c,590 :: 		Power_old = Power;
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       _Power_old+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       _Power_old+1 
;main.c,592 :: 		if (P_High == 0) {
	MOVF        main_P_High+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr329
;main.c,593 :: 		if (Power >= 100) { // > 10 W
	MOVLW       128
	XORWF       FARG_show_pwr_Power+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr634
	MOVLW       100
	SUBWF       FARG_show_pwr_Power+0, 0 
L__show_pwr634:
	BTFSS       STATUS+0, 0 
	GOTO        L_show_pwr330
;main.c,594 :: 		Power += 5; // rounding to 1 W
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
;main.c,595 :: 		IntToStr(Power, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,596 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,597 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,598 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,599 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,600 :: 		} else {
	GOTO        L_show_pwr331
L_show_pwr330:
;main.c,601 :: 		IntToStr(Power, work_str);
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,602 :: 		if (work_str[4] != ' ')
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr332
;main.c,603 :: 		work_str_2[0] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_pwr333
L_show_pwr332:
;main.c,605 :: 		work_str_2[0] = '0';
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_pwr333:
;main.c,606 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,607 :: 		if (work_str[5] != ' ')
	MOVF        _work_str+5, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr334
;main.c,608 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_show_pwr335
L_show_pwr334:
;main.c,610 :: 		work_str_2[2] = '0';
	MOVLW       48
	MOVWF       _work_str_2+2 
L_show_pwr335:
;main.c,611 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,612 :: 		}
L_show_pwr331:
;main.c,613 :: 		} else { // High Power
	GOTO        L_show_pwr336
L_show_pwr329:
;main.c,614 :: 		if (Power < 999) { // 0 - 1500 Watts
	MOVLW       128
	XORWF       FARG_show_pwr_Power+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr635
	MOVLW       231
	SUBWF       FARG_show_pwr_Power+0, 0 
L__show_pwr635:
	BTFSC       STATUS+0, 0 
	GOTO        L_show_pwr337
;main.c,615 :: 		IntToStr(Power, work_str);
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,616 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,617 :: 		work_str_2[1] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+1 
;main.c,618 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,619 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,620 :: 		} else {
	GOTO        L_show_pwr338
L_show_pwr337:
;main.c,621 :: 		IntToStr(Power, work_str);
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,622 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,623 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,624 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,625 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,626 :: 		}
L_show_pwr338:
;main.c,627 :: 		}
L_show_pwr336:
;main.c,628 :: 		if (type == 4 | type == 5)
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
	GOTO        L_show_pwr339
;main.c,629 :: 		led_wr_str(0, 16 + 4 * 12, work_str_2, 4); // 128*64 OLED
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
	GOTO        L_show_pwr340
L_show_pwr339:
;main.c,630 :: 		else if (type != 0)
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr341
;main.c,631 :: 		led_wr_str(0, 4, work_str_2, 4); // 1602  & 128*32
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
L_show_pwr341:
L_show_pwr340:
;main.c,633 :: 		asm CLRWDT;
	CLRWDT
;main.c,635 :: 		if (Loss_mode == 1) {
	MOVF        _Loss_mode+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr342
;main.c,636 :: 		if (ind == 0 & cap == 0)
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
	GOTO        L_show_pwr343
;main.c,637 :: 		swr_a = SWR;
	MOVF        FARG_show_pwr_SWR+0, 0 
	MOVWF       _swr_a+0 
	MOVF        FARG_show_pwr_SWR+1, 0 
	MOVWF       _swr_a+1 
L_show_pwr343:
;main.c,638 :: 		a = 1.0 / ((swr_a / 100.0 + 100.0 / swr_a) * Fid_loss / 10.0 * 0.115 + 1.0); // Fider loss
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
;main.c,639 :: 		b = 4.0 / (2.0 + SWR / 100.0 + 100.0 / SWR); // SWR loss
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
;main.c,640 :: 		if (a >= 1.0)
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
	GOTO        L_show_pwr344
;main.c,641 :: 		a = 1.0;
	MOVLW       0
	MOVWF       show_pwr_a_L0+0 
	MOVLW       0
	MOVWF       show_pwr_a_L0+1 
	MOVLW       0
	MOVWF       show_pwr_a_L0+2 
	MOVLW       127
	MOVWF       show_pwr_a_L0+3 
L_show_pwr344:
;main.c,642 :: 		if (b >= 1.0)
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
	GOTO        L_show_pwr345
;main.c,643 :: 		b = 1.0;
	MOVLW       0
	MOVWF       show_pwr_b_L0+0 
	MOVLW       0
	MOVWF       show_pwr_b_L0+1 
	MOVLW       0
	MOVWF       show_pwr_b_L0+2 
	MOVLW       127
	MOVWF       show_pwr_b_L0+3 
L_show_pwr345:
;main.c,644 :: 		p_ant = Power * a * b;
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
;main.c,645 :: 		eff = a * b * 100;
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
;main.c,646 :: 		if (eff >= 100)
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
	GOTO        L_show_pwr346
;main.c,647 :: 		eff = 99;
	MOVLW       0
	MOVWF       show_pwr_eff_L0+0 
	MOVLW       0
	MOVWF       show_pwr_eff_L0+1 
	MOVLW       70
	MOVWF       show_pwr_eff_L0+2 
	MOVLW       133
	MOVWF       show_pwr_eff_L0+3 
L_show_pwr346:
;main.c,649 :: 		if (P_High == 0) {
	MOVF        main_P_High+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr347
;main.c,650 :: 		if (p_ant >= 100) { // > 10 W
	MOVLW       128
	XORWF       show_pwr_p_ant_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr636
	MOVLW       100
	SUBWF       show_pwr_p_ant_L0+0, 0 
L__show_pwr636:
	BTFSS       STATUS+0, 0 
	GOTO        L_show_pwr348
;main.c,651 :: 		p_ant += 5; // rounding to 1 W
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
;main.c,652 :: 		IntToStr(p_ant, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,653 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,654 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,655 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,656 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,657 :: 		} else {
	GOTO        L_show_pwr349
L_show_pwr348:
;main.c,658 :: 		IntToStr(p_ant, work_str);
	MOVF        show_pwr_p_ant_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_p_ant_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,659 :: 		if (work_str[4] != ' ')
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr350
;main.c,660 :: 		work_str_2[0] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_pwr351
L_show_pwr350:
;main.c,662 :: 		work_str_2[0] = '0';
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_pwr351:
;main.c,663 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,664 :: 		if (work_str[5] != ' ')
	MOVF        _work_str+5, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr352
;main.c,665 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_show_pwr353
L_show_pwr352:
;main.c,667 :: 		work_str_2[2] = '0';
	MOVLW       48
	MOVWF       _work_str_2+2 
L_show_pwr353:
;main.c,668 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,669 :: 		}
L_show_pwr349:
;main.c,670 :: 		} else { // High Power
	GOTO        L_show_pwr354
L_show_pwr347:
;main.c,671 :: 		if (p_ant < 999) { // 0 - 1500 Watts
	MOVLW       128
	XORWF       show_pwr_p_ant_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr637
	MOVLW       231
	SUBWF       show_pwr_p_ant_L0+0, 0 
L__show_pwr637:
	BTFSC       STATUS+0, 0 
	GOTO        L_show_pwr355
;main.c,672 :: 		IntToStr(p_ant, work_str);
	MOVF        show_pwr_p_ant_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_p_ant_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,673 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,674 :: 		work_str_2[1] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+1 
;main.c,675 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,676 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,677 :: 		} else {
	GOTO        L_show_pwr356
L_show_pwr355:
;main.c,678 :: 		IntToStr(p_ant, work_str);
	MOVF        show_pwr_p_ant_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_p_ant_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,679 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,680 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,681 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,682 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,683 :: 		}
L_show_pwr356:
;main.c,684 :: 		}
L_show_pwr354:
;main.c,685 :: 		if (type == 4 | type == 5)
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
	GOTO        L_show_pwr357
;main.c,686 :: 		led_wr_str(4, 16 + 4 * 12, work_str_2, 4); // 128*64 OLED
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
	GOTO        L_show_pwr358
L_show_pwr357:
;main.c,687 :: 		else if (type == 2 | type == 3)
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
	GOTO        L_show_pwr359
;main.c,688 :: 		led_wr_str(0, 13, work_str_2, 4); // 128*32
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
	GOTO        L_show_pwr360
L_show_pwr359:
;main.c,689 :: 		else if (type == 1)
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr361
;main.c,690 :: 		led_wr_str(0, 12, work_str_2, 4); // 1602
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
L_show_pwr361:
L_show_pwr360:
L_show_pwr358:
;main.c,692 :: 		IntToStr(eff, work_str);
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
;main.c,693 :: 		work_str_2[0] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
;main.c,694 :: 		work_str_2[1] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+1 
;main.c,695 :: 		if (type == 4 | type == 5)
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
	GOTO        L_show_pwr362
;main.c,696 :: 		led_wr_str(6, 16 + 5 * 12, work_str_2, 2);
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
	GOTO        L_show_pwr363
L_show_pwr362:
;main.c,697 :: 		else if (type == 2 | type == 3)
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
	GOTO        L_show_pwr364
;main.c,698 :: 		led_wr_str(1, 14, work_str_2, 2);
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
	GOTO        L_show_pwr365
L_show_pwr364:
;main.c,699 :: 		else if (type == 1)
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr366
;main.c,700 :: 		led_wr_str(1, 13, work_str_2, 2);
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
L_show_pwr366:
L_show_pwr365:
L_show_pwr363:
;main.c,701 :: 		}
L_show_pwr342:
;main.c,702 :: 		}
L_show_pwr328:
;main.c,703 :: 		asm CLRWDT;
	CLRWDT
;main.c,704 :: 		return;
;main.c,705 :: 		}
L_end_show_pwr:
	RETURN      0
; end of _show_pwr

_lcd_pwr:

;main.c,707 :: 		void lcd_pwr() {
;main.c,708 :: 		int p = 0;
	CLRF        lcd_pwr_p_L0+0 
	CLRF        lcd_pwr_p_L0+1 
	MOVLW       1
	MOVWF       lcd_pwr_SWR_fixed_L0+0 
	MOVLW       0
	MOVWF       lcd_pwr_SWR_fixed_L0+1 
;main.c,714 :: 		delta = Auto_delta - 100;
	MOVLW       100
	SUBWF       _Auto_delta+0, 0 
	MOVWF       lcd_pwr_delta_L0+0 
	MOVLW       0
	SUBWFB      _Auto_delta+1, 0 
	MOVWF       lcd_pwr_delta_L0+1 
;main.c,715 :: 		PWR = 0;
	CLRF        _PWR+0 
	CLRF        _PWR+1 
;main.c,716 :: 		asm CLRWDT;
	CLRWDT
;main.c,718 :: 		cnt = 120;
	MOVLW       120
	MOVWF       lcd_pwr_cnt_L0+0 
;main.c,719 :: 		for (peak_cnt = 0; peak_cnt < cnt; peak_cnt++) {
	CLRF        lcd_pwr_peak_cnt_L0+0 
L_lcd_pwr367:
	MOVF        lcd_pwr_cnt_L0+0, 0 
	SUBWF       lcd_pwr_peak_cnt_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_pwr368
;main.c,720 :: 		if (PORTB.B1 == 0 | PORTB.B2 == 0 | PORTB.B0 == 0) {
	BTFSC       PORTB+0, 1 
	GOTO        L__lcd_pwr639
	BSF         R6, 0 
	GOTO        L__lcd_pwr640
L__lcd_pwr639:
	BCF         R6, 0 
L__lcd_pwr640:
	BTFSC       PORTB+0, 2 
	GOTO        L__lcd_pwr641
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr642
L__lcd_pwr641:
	BCF         STATUS+0, 0 
L__lcd_pwr642:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr643
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr643
	BCF         R6, 0 
	GOTO        L__lcd_pwr644
L__lcd_pwr643:
	BSF         R6, 0 
L__lcd_pwr644:
	BTFSC       PORTB+0, 0 
	GOTO        L__lcd_pwr645
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr646
L__lcd_pwr645:
	BCF         STATUS+0, 0 
L__lcd_pwr646:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr647
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr647
	BCF         R6, 0 
	GOTO        L__lcd_pwr648
L__lcd_pwr647:
	BSF         R6, 0 
L__lcd_pwr648:
	BTFSS       R6, 0 
	GOTO        L_lcd_pwr370
;main.c,721 :: 		button_delay();
	CALL        _button_delay+0, 0
;main.c,722 :: 		if (but == 1) {
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr371
;main.c,723 :: 		but = 0;
	CLRF        _but+0 
;main.c,724 :: 		return;
	GOTO        L_end_lcd_pwr
;main.c,725 :: 		}
L_lcd_pwr371:
;main.c,726 :: 		}
L_lcd_pwr370:
;main.c,727 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.c,728 :: 		if (PWR > p) {
	MOVLW       128
	XORWF       lcd_pwr_p_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr649
	MOVF        _PWR+0, 0 
	SUBWF       lcd_pwr_p_L0+0, 0 
L__lcd_pwr649:
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_pwr372
;main.c,729 :: 		p = PWR;
	MOVF        _PWR+0, 0 
	MOVWF       lcd_pwr_p_L0+0 
	MOVF        _PWR+1, 0 
	MOVWF       lcd_pwr_p_L0+1 
;main.c,730 :: 		SWR_fixed = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       lcd_pwr_SWR_fixed_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       lcd_pwr_SWR_fixed_L0+1 
;main.c,731 :: 		}
L_lcd_pwr372:
;main.c,732 :: 		Delay_ms(3);
	MOVLW       16
	MOVWF       R12, 0
	MOVLW       148
	MOVWF       R13, 0
L_lcd_pwr373:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr373
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr373
	NOP
;main.c,719 :: 		for (peak_cnt = 0; peak_cnt < cnt; peak_cnt++) {
	INCF        lcd_pwr_peak_cnt_L0+0, 1 
;main.c,733 :: 		}
	GOTO        L_lcd_pwr367
L_lcd_pwr368:
;main.c,734 :: 		asm CLRWDT;
	CLRWDT
;main.c,735 :: 		Power = p;
	MOVF        lcd_pwr_p_L0+0, 0 
	MOVWF       _Power+0 
	MOVF        lcd_pwr_p_L0+1, 0 
	MOVWF       _Power+1 
;main.c,736 :: 		lcd_swr(SWR_fixed);
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_lcd_swr_swr+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_lcd_swr_swr+1 
	CALL        _lcd_swr+0, 0
;main.c,737 :: 		if (SWR_fixed >= 100) {
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr650
	MOVLW       100
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
L__lcd_pwr650:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr374
;main.c,738 :: 		dysp_on(); // dysplay ON
	CALL        _dysp_on+0, 0
;main.c,739 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,740 :: 		}
L_lcd_pwr374:
;main.c,742 :: 		if (Auto & SWR_fixed >= Auto_delta &
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _Auto_delta+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr651
	MOVF        _Auto_delta+0, 0 
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
L__lcd_pwr651:
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       _Auto+0, 0 
	MOVWF       R5 
;main.c,743 :: 		((SWR_fixed > SWR_fixed_old & (SWR_fixed - SWR_fixed_old) > delta) |
	MOVLW       128
	XORWF       _SWR_fixed_old+1, 0 
	MOVWF       R3 
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	SUBWF       R3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr652
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	SUBWF       _SWR_fixed_old+0, 0 
L__lcd_pwr652:
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
	GOTO        L__lcd_pwr653
	MOVF        R1, 0 
	SUBWF       lcd_pwr_delta_L0+0, 0 
L__lcd_pwr653:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R3, 0 
	MOVWF       R4 
;main.c,744 :: 		(SWR_fixed < SWR_fixed_old & (SWR_fixed_old - SWR_fixed) > delta) |
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R3 
	MOVLW       128
	XORWF       _SWR_fixed_old+1, 0 
	SUBWF       R3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr654
	MOVF        _SWR_fixed_old+0, 0 
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
L__lcd_pwr654:
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
	GOTO        L__lcd_pwr655
	MOVF        R1, 0 
	SUBWF       lcd_pwr_delta_L0+0, 0 
L__lcd_pwr655:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R3, 0 
	ANDWF       R0, 1 
	MOVF        R0, 0 
	IORWF       R4, 0 
	MOVWF       R1 
;main.c,745 :: 		SWR_fixed_old == 999))
	MOVF        _SWR_fixed_old+1, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr656
	MOVLW       231
	XORWF       _SWR_fixed_old+0, 0 
L__lcd_pwr656:
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	IORWF       R0, 1 
	MOVF        R5, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_pwr375
;main.c,746 :: 		Soft_tune = 1;
	MOVLW       1
	MOVWF       _Soft_tune+0 
L_lcd_pwr375:
;main.c,748 :: 		if (PORTB.B1 == 0 | PORTB.B2 == 0 | PORTB.B0 == 0) {
	BTFSC       PORTB+0, 1 
	GOTO        L__lcd_pwr657
	BSF         R6, 0 
	GOTO        L__lcd_pwr658
L__lcd_pwr657:
	BCF         R6, 0 
L__lcd_pwr658:
	BTFSC       PORTB+0, 2 
	GOTO        L__lcd_pwr659
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr660
L__lcd_pwr659:
	BCF         STATUS+0, 0 
L__lcd_pwr660:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr661
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr661
	BCF         R6, 0 
	GOTO        L__lcd_pwr662
L__lcd_pwr661:
	BSF         R6, 0 
L__lcd_pwr662:
	BTFSC       PORTB+0, 0 
	GOTO        L__lcd_pwr663
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr664
L__lcd_pwr663:
	BCF         STATUS+0, 0 
L__lcd_pwr664:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr665
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr665
	BCF         R6, 0 
	GOTO        L__lcd_pwr666
L__lcd_pwr665:
	BSF         R6, 0 
L__lcd_pwr666:
	BTFSS       R6, 0 
	GOTO        L_lcd_pwr376
;main.c,749 :: 		button_delay();
	CALL        _button_delay+0, 0
;main.c,750 :: 		if (but == 1) {
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr377
;main.c,751 :: 		but = 0;
	CLRF        _but+0 
;main.c,752 :: 		return;
	GOTO        L_end_lcd_pwr
;main.c,753 :: 		}
L_lcd_pwr377:
;main.c,754 :: 		} // Fast return if button pressed
L_lcd_pwr376:
;main.c,755 :: 		show_pwr(Power, SWR_fixed);
	MOVF        _Power+0, 0 
	MOVWF       FARG_show_pwr_Power+0 
	MOVF        _Power+1, 0 
	MOVWF       FARG_show_pwr_Power+1 
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_show_pwr_SWR+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_show_pwr_SWR+1 
	CALL        _show_pwr+0, 0
;main.c,757 :: 		if (PORTB.B1 == 0 | PORTB.B2 == 0 | PORTB.B0 == 0) {
	BTFSC       PORTB+0, 1 
	GOTO        L__lcd_pwr667
	BSF         R6, 0 
	GOTO        L__lcd_pwr668
L__lcd_pwr667:
	BCF         R6, 0 
L__lcd_pwr668:
	BTFSC       PORTB+0, 2 
	GOTO        L__lcd_pwr669
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr670
L__lcd_pwr669:
	BCF         STATUS+0, 0 
L__lcd_pwr670:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr671
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr671
	BCF         R6, 0 
	GOTO        L__lcd_pwr672
L__lcd_pwr671:
	BSF         R6, 0 
L__lcd_pwr672:
	BTFSC       PORTB+0, 0 
	GOTO        L__lcd_pwr673
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr674
L__lcd_pwr673:
	BCF         STATUS+0, 0 
L__lcd_pwr674:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr675
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr675
	BCF         R6, 0 
	GOTO        L__lcd_pwr676
L__lcd_pwr675:
	BSF         R6, 0 
L__lcd_pwr676:
	BTFSS       R6, 0 
	GOTO        L_lcd_pwr378
;main.c,758 :: 		button_delay();
	CALL        _button_delay+0, 0
;main.c,759 :: 		if (but == 1) {
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr379
;main.c,760 :: 		but = 0;
	CLRF        _but+0 
;main.c,761 :: 		return;
	GOTO        L_end_lcd_pwr
;main.c,762 :: 		}
L_lcd_pwr379:
;main.c,763 :: 		}
L_lcd_pwr378:
;main.c,764 :: 		asm CLRWDT;
	CLRWDT
;main.c,765 :: 		if (Overload == 1) {
	MOVF        main_Overload+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr380
;main.c,766 :: 		if (type == 4 | type == 5) { // 128*64 OLED
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
	GOTO        L_lcd_pwr381
;main.c,767 :: 		led_wr_str(2, 16, "        ", 8);
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
;main.c,768 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr382:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr382
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr382
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr382
;main.c,769 :: 		led_wr_str(2, 16, "OVERLOAD", 8);
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
;main.c,770 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr383:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr383
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr383
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr383
	NOP
	NOP
;main.c,771 :: 		asm CLRWDT;
	CLRWDT
;main.c,772 :: 		led_wr_str(2, 16, "        ", 8);
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
;main.c,773 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr384:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr384
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr384
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr384
	NOP
;main.c,774 :: 		asm CLRWDT;
	CLRWDT
;main.c,775 :: 		led_wr_str(2, 16, "OVERLOAD", 8);
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
;main.c,776 :: 		delay_ms(500);
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
;main.c,777 :: 		asm CLRWDT;
	CLRWDT
;main.c,778 :: 		led_wr_str(2, 16, "        ", 8);
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
;main.c,779 :: 		delay_ms(300);
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
;main.c,780 :: 		asm CLRWDT;
	CLRWDT
;main.c,781 :: 		led_wr_str(2, 16, "OVERLOAD", 8);
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
;main.c,782 :: 		delay_ms(500);
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
;main.c,783 :: 		asm CLRWDT;
	CLRWDT
;main.c,784 :: 		led_wr_str(2, 16, "        ", 8);
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
;main.c,785 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr388:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr388
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr388
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr388
;main.c,786 :: 		led_wr_str(2, 16, "SWR=    ", 8);
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
;main.c,787 :: 		} else if (type != 0) { // 1602  & 128*32// 1602
	GOTO        L_lcd_pwr389
L_lcd_pwr381:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_pwr390
;main.c,788 :: 		led_wr_str(1, 0, "        ", 8);
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
;main.c,789 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr391:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr391
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr391
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr391
;main.c,790 :: 		led_wr_str(1, 0, "OVERLOAD", 8);
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
;main.c,791 :: 		delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_lcd_pwr392:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr392
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr392
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr392
	NOP
	NOP
;main.c,792 :: 		asm CLRWDT;
	CLRWDT
;main.c,793 :: 		led_wr_str(1, 0, "        ", 8);
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
;main.c,794 :: 		delay_ms(300);
	MOVLW       7
	MOVWF       R11, 0
	MOVLW       23
	MOVWF       R12, 0
	MOVLW       106
	MOVWF       R13, 0
L_lcd_pwr393:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr393
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr393
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr393
	NOP
;main.c,795 :: 		asm CLRWDT;
	CLRWDT
;main.c,796 :: 		led_wr_str(1, 0, "OVERLOAD", 8);
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
;main.c,797 :: 		delay_ms(500);
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
;main.c,798 :: 		asm CLRWDT;
	CLRWDT
;main.c,799 :: 		led_wr_str(1, 0, "        ", 8);
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
;main.c,800 :: 		delay_ms(300);
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
;main.c,801 :: 		asm CLRWDT;
	CLRWDT
;main.c,802 :: 		led_wr_str(1, 0, "OVERLOAD", 8);
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
;main.c,803 :: 		delay_ms(500);
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
;main.c,804 :: 		asm CLRWDT;
	CLRWDT
;main.c,805 :: 		led_wr_str(1, 0, "        ", 8);
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
;main.c,806 :: 		delay_ms(100);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_lcd_pwr397:
	DECFSZ      R13, 1, 1
	BRA         L_lcd_pwr397
	DECFSZ      R12, 1, 1
	BRA         L_lcd_pwr397
	DECFSZ      R11, 1, 1
	BRA         L_lcd_pwr397
;main.c,807 :: 		led_wr_str(1, 0, "SWR=    ", 8);
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
;main.c,808 :: 		}
L_lcd_pwr390:
L_lcd_pwr389:
;main.c,809 :: 		asm CLRWDT;
	CLRWDT
;main.c,810 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,811 :: 		lcd_swr(SWR_fixed);
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_lcd_swr_swr+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_lcd_swr_swr+1 
	CALL        _lcd_swr+0, 0
;main.c,812 :: 		}
L_lcd_pwr380:
;main.c,813 :: 		return;
;main.c,814 :: 		}
L_end_lcd_pwr:
	RETURN      0
; end of _lcd_pwr

_lcd_ind:

;main.c,818 :: 		void lcd_ind() {
;main.c,820 :: 		asm CLRWDT;
	CLRWDT
;main.c,822 :: 		work_int = 0;
	CLRF        _work_int+0 
	CLRF        _work_int+1 
;main.c,823 :: 		if (ind.B0)
	BTFSS       main_ind+0, 0 
	GOTO        L_lcd_ind399
;main.c,824 :: 		work_int += Ind1;
	MOVF        _Ind1+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind1+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind399:
;main.c,825 :: 		if (ind.B1)
	BTFSS       main_ind+0, 1 
	GOTO        L_lcd_ind400
;main.c,826 :: 		work_int += Ind2;
	MOVF        _Ind2+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind2+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind400:
;main.c,827 :: 		if (ind.B2)
	BTFSS       main_ind+0, 2 
	GOTO        L_lcd_ind401
;main.c,828 :: 		work_int += Ind3;
	MOVF        _Ind3+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind3+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind401:
;main.c,829 :: 		if (ind.B3)
	BTFSS       main_ind+0, 3 
	GOTO        L_lcd_ind402
;main.c,830 :: 		work_int += Ind4;
	MOVF        _Ind4+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind4+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind402:
;main.c,831 :: 		if (ind.B4)
	BTFSS       main_ind+0, 4 
	GOTO        L_lcd_ind403
;main.c,832 :: 		work_int += Ind5;
	MOVF        _Ind5+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind5+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind403:
;main.c,833 :: 		if (ind.B5)
	BTFSS       main_ind+0, 5 
	GOTO        L_lcd_ind404
;main.c,834 :: 		work_int += Ind6;
	MOVF        _Ind6+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind6+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind404:
;main.c,835 :: 		if (ind.B6)
	BTFSS       main_ind+0, 6 
	GOTO        L_lcd_ind405
;main.c,836 :: 		work_int += Ind7;
	MOVF        _Ind7+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind7+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind405:
;main.c,837 :: 		if (work_int > 9999) { // more then 9999 nH
	MOVLW       128
	XORLW       39
	MOVWF       R0 
	MOVLW       128
	XORWF       _work_int+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_ind678
	MOVF        _work_int+0, 0 
	SUBLW       15
L__lcd_ind678:
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_ind406
;main.c,838 :: 		work_int += 50; // round
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
;main.c,839 :: 		IntToStr(work_int, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,840 :: 		work_str_2[0] = work_str[1];
	MOVF        _work_str+1, 0 
	MOVWF       _work_str_2+0 
;main.c,841 :: 		work_str_2[1] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+1 
;main.c,842 :: 		work_str_2[2] = '.';
	MOVLW       46
	MOVWF       _work_str_2+2 
;main.c,843 :: 		work_str_2[3] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+3 
;main.c,844 :: 		} else {
	GOTO        L_lcd_ind407
L_lcd_ind406:
;main.c,845 :: 		IntToStr(work_int, work_str);
	MOVF        _work_int+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _work_int+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,846 :: 		if (work_str[2] != ' ')
	MOVF        _work_str+2, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind408
;main.c,847 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_lcd_ind409
L_lcd_ind408:
;main.c,849 :: 		work_str_2[0] = '0';
	MOVLW       48
	MOVWF       _work_str_2+0 
L_lcd_ind409:
;main.c,850 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,851 :: 		if (work_str[3] != ' ')
	MOVF        _work_str+3, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind410
;main.c,852 :: 		work_str_2[2] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_lcd_ind411
L_lcd_ind410:
;main.c,854 :: 		work_str_2[2] = '0';
	MOVLW       48
	MOVWF       _work_str_2+2 
L_lcd_ind411:
;main.c,855 :: 		if (work_str[4] != ' ')
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind412
;main.c,856 :: 		work_str_2[3] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+3 
	GOTO        L_lcd_ind413
L_lcd_ind412:
;main.c,858 :: 		work_str_2[3] = '0';
	MOVLW       48
	MOVWF       _work_str_2+3 
L_lcd_ind413:
;main.c,859 :: 		}
L_lcd_ind407:
;main.c,860 :: 		if (type == 4 | type == 5) { // 128*64 OLED
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
	GOTO        L_lcd_ind414
;main.c,861 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind415
;main.c,862 :: 		column = 4;
	MOVLW       4
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind416
L_lcd_ind415:
;main.c,864 :: 		column = 6;
	MOVLW       6
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind416:
;main.c,865 :: 		led_wr_str(column, 16, "L=", 2);
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
;main.c,866 :: 		led_wr_str(column, 16 + 6 * 12, "uH", 2);
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
;main.c,867 :: 		led_wr_str(column, 16 + 2 * 12, work_str_2, 4);
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
;main.c,868 :: 		} else if (type == 2 | type == 3) { // 128*32 OLED
	GOTO        L_lcd_ind417
L_lcd_ind414:
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
	GOTO        L_lcd_ind418
;main.c,869 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind419
;main.c,870 :: 		column = 0;
	CLRF        lcd_ind_column_L0+0 
	GOTO        L_lcd_ind420
L_lcd_ind419:
;main.c,872 :: 		column = 1;
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind420:
;main.c,873 :: 		led_wr_str(column, 9, "L=", 2);
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
;main.c,874 :: 		led_wr_str(column, 15, "uH", 2);
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
;main.c,875 :: 		led_wr_str(column, 11, work_str_2, 4);
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
;main.c,876 :: 		} else if (type == 1) { //  1602 LCD
	GOTO        L_lcd_ind421
L_lcd_ind418:
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind422
;main.c,877 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind423
;main.c,878 :: 		column = 0;
	CLRF        lcd_ind_column_L0+0 
	GOTO        L_lcd_ind424
L_lcd_ind423:
;main.c,880 :: 		column = 1;
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind424:
;main.c,881 :: 		led_wr_str(column, 9, "L=", 2);
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
;main.c,882 :: 		led_wr_str(column, 15, "u", 1);
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
;main.c,883 :: 		led_wr_str(column, 11, work_str_2, 4);
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
;main.c,884 :: 		}
L_lcd_ind422:
L_lcd_ind421:
L_lcd_ind417:
;main.c,886 :: 		asm CLRWDT;
	CLRWDT
;main.c,888 :: 		work_int = 0;
	CLRF        _work_int+0 
	CLRF        _work_int+1 
;main.c,889 :: 		if (cap.B0)
	BTFSS       main_cap+0, 0 
	GOTO        L_lcd_ind426
;main.c,890 :: 		work_int += Cap1;
	MOVF        _Cap1+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap1+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind426:
;main.c,891 :: 		if (cap.B1)
	BTFSS       main_cap+0, 1 
	GOTO        L_lcd_ind427
;main.c,892 :: 		work_int += Cap2;
	MOVF        _Cap2+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap2+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind427:
;main.c,893 :: 		if (cap.B2)
	BTFSS       main_cap+0, 2 
	GOTO        L_lcd_ind428
;main.c,894 :: 		work_int += Cap3;
	MOVF        _Cap3+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap3+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind428:
;main.c,895 :: 		if (cap.B3)
	BTFSS       main_cap+0, 3 
	GOTO        L_lcd_ind429
;main.c,896 :: 		work_int += Cap4;
	MOVF        _Cap4+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap4+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind429:
;main.c,897 :: 		if (cap.B4)
	BTFSS       main_cap+0, 4 
	GOTO        L_lcd_ind430
;main.c,898 :: 		work_int += Cap5;
	MOVF        _Cap5+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap5+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind430:
;main.c,899 :: 		if (cap.B5)
	BTFSS       main_cap+0, 5 
	GOTO        L_lcd_ind431
;main.c,900 :: 		work_int += Cap6;
	MOVF        _Cap6+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap6+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind431:
;main.c,901 :: 		if (cap.B6)
	BTFSS       main_cap+0, 6 
	GOTO        L_lcd_ind432
;main.c,902 :: 		work_int += Cap7;
	MOVF        _Cap7+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap7+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind432:
;main.c,903 :: 		if (mem_offset == band_160m)
	MOVF        _mem_offset+0, 0 
	XORWF       _band_160m+0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind433
;main.c,904 :: 		work_int += C8_value;
	MOVF        _C8_value+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _C8_value+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind433:
;main.c,905 :: 		IntToStr(work_int, work_str);
	MOVF        _work_int+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _work_int+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,906 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,907 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,908 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,909 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,911 :: 		if (type == 4 | type == 5) { // 128*64 OLED
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
	GOTO        L_lcd_ind434
;main.c,912 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind435
;main.c,913 :: 		column = 6;
	MOVLW       6
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind436
L_lcd_ind435:
;main.c,915 :: 		column = 4;
	MOVLW       4
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind436:
;main.c,916 :: 		led_wr_str(column, 16, "C=", 2);
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
;main.c,917 :: 		led_wr_str(column, 16 + 6 * 12, "pF", 2);
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
;main.c,918 :: 		led_wr_str(column, 16 + 2 * 12, work_str_2, 4);
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
;main.c,919 :: 		} else if (type == 2 | type == 3) { // 128*32 OLED
	GOTO        L_lcd_ind437
L_lcd_ind434:
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
	GOTO        L_lcd_ind438
;main.c,920 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind439
;main.c,921 :: 		column = 1;
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind440
L_lcd_ind439:
;main.c,923 :: 		column = 0;
	CLRF        lcd_ind_column_L0+0 
L_lcd_ind440:
;main.c,924 :: 		led_wr_str(column, 9, "C=", 2);
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
;main.c,925 :: 		led_wr_str(column, 15, "pF", 2);
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
;main.c,926 :: 		led_wr_str(column, 11, work_str_2, 4);
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
;main.c,927 :: 		} else if (type == 1) { // 1602 LCD
	GOTO        L_lcd_ind441
L_lcd_ind438:
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind442
;main.c,928 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind443
;main.c,929 :: 		column = 1;
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind444
L_lcd_ind443:
;main.c,931 :: 		column = 0;
	CLRF        lcd_ind_column_L0+0 
L_lcd_ind444:
;main.c,932 :: 		led_wr_str(column, 9, "C=", 2);
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
;main.c,933 :: 		led_wr_str(column, 15, "p", 1);
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
;main.c,934 :: 		led_wr_str(column, 11, work_str_2, 4);
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
;main.c,935 :: 		}
L_lcd_ind442:
L_lcd_ind441:
L_lcd_ind437:
;main.c,937 :: 		asm CLRWDT;
	CLRWDT
;main.c,938 :: 		return;
;main.c,939 :: 		}
L_end_lcd_ind:
	RETURN      0
; end of _lcd_ind

_Test_init:

;main.c,941 :: 		void Test_init(void) { // Test mode
;main.c,942 :: 		if (type == 4 | type == 5) // 128*64 OLED
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
	GOTO        L_Test_init445
;main.c,943 :: 		led_wr_str(0, 10, "TEST MODE", 9);
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
	GOTO        L_Test_init446
L_Test_init445:
;main.c,944 :: 		else if (type != 0) // 1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init447
;main.c,945 :: 		led_wr_str(0, 3, "TEST MODE", 9);
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
L_Test_init447:
L_Test_init446:
;main.c,946 :: 		asm CLRWDT;
	CLRWDT
;main.c,947 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init448:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init448
	DECFSZ      R12, 1, 1
	BRA         L_Test_init448
	DECFSZ      R11, 1, 1
	BRA         L_Test_init448
	NOP
	NOP
;main.c,948 :: 		asm CLRWDT;
	CLRWDT
;main.c,949 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init449:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init449
	DECFSZ      R12, 1, 1
	BRA         L_Test_init449
	DECFSZ      R11, 1, 1
	BRA         L_Test_init449
	NOP
	NOP
;main.c,950 :: 		asm CLRWDT;
	CLRWDT
;main.c,951 :: 		Delay_ms(500);
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
;main.c,952 :: 		asm CLRWDT;
	CLRWDT
;main.c,953 :: 		Delay_ms(500);
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
;main.c,954 :: 		asm CLRWDT;
	CLRWDT
;main.c,955 :: 		if (type == 4 | type == 5) // 128*64 OLED
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
	GOTO        L_Test_init452
;main.c,956 :: 		led_wr_str(0, 10, "         ", 9);
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
	GOTO        L_Test_init453
L_Test_init452:
;main.c,957 :: 		else if (type != 0) // 1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init454
;main.c,958 :: 		led_wr_str(0, 3, "         ", 9);
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
L_Test_init454:
L_Test_init453:
;main.c,959 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.c,960 :: 		SW = 1; // C to OUT
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,961 :: 		set_sw(SW);
	MOVLW       1
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,962 :: 		EEPROM_Write(255 - mem_offset * 5, cap);
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
;main.c,963 :: 		EEPROM_Write(254 - mem_offset * 5, ind);
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
;main.c,964 :: 		EEPROM_Write(253 - mem_offset * 5, SW);
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
;main.c,966 :: 		if (type == 4 | type == 5) // 128*64 OLED
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
	GOTO        L_Test_init455
;main.c,967 :: 		led_wr_str(0, 16 + 12 * 8, "l", 1);
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
	GOTO        L_Test_init456
L_Test_init455:
;main.c,968 :: 		else if (type != 0) // 1602 LCD or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init457
;main.c,969 :: 		led_wr_str(0, 8, "l", 1);
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
L_Test_init457:
L_Test_init456:
;main.c,971 :: 		lcd_prep_short = 1;
	MOVLW       1
	MOVWF       _lcd_prep_short+0 
;main.c,972 :: 		lcd_prep();
	CALL        _lcd_prep+0, 0
;main.c,973 :: 		return;
;main.c,974 :: 		}
L_end_Test_init:
	RETURN      0
; end of _Test_init

_cells_init:

;main.c,976 :: 		void cells_init(void) {
;main.c,978 :: 		asm CLRWDT;
	CLRWDT
;main.c,980 :: 		type = EEPROM_Read(1); // type of display
	MOVLW       1
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _type+0 
;main.c,981 :: 		if (EEPROM_Read(2) == 1)
	MOVLW       2
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_cells_init458
;main.c,982 :: 		Auto = 1;
	MOVLW       1
	MOVWF       _Auto+0 
L_cells_init458:
;main.c,983 :: 		Rel_Del = Bcd2Dec(EEPROM_Read(3)); // Relay's Delay
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
;main.c,984 :: 		Auto_delta = Bcd2Dec(EEPROM_Read(4)) * 10; // Auto_delta
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
;main.c,985 :: 		min_for_start = Bcd2Dec(EEPROM_Read(5)) * 10; // P_min_for_start
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
;main.c,986 :: 		max_for_start = Bcd2Dec(EEPROM_Read(6)) * 10; // P_max_for_start
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
;main.c,989 :: 		max_swr = Bcd2Dec(EEPROM_Read(9)) * 10; // Max SWR
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
;main.c,990 :: 		L_q = EEPROM_Read(10);
	MOVLW       10
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_L_q+0 
;main.c,991 :: 		L_linear = EEPROM_Read(11);
	MOVLW       11
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_L_linear+0 
;main.c,992 :: 		C_q = EEPROM_Read(12);
	MOVLW       12
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_C_q+0 
;main.c,993 :: 		C_linear = EEPROM_Read(13);
	MOVLW       13
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_C_linear+0 
;main.c,994 :: 		D_correction = EEPROM_Read(14);
	MOVLW       14
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_D_correction+0 
;main.c,995 :: 		L_invert = EEPROM_Read(15);
	MOVLW       15
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_L_invert+0 
;main.c,997 :: 		asm CLRWDT;
	CLRWDT
;main.c,998 :: 		Ind1 = Bcd2Dec(EEPROM_Read(16)) * 100 + Bcd2Dec(EEPROM_Read(17)); // Ind1
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
;main.c,999 :: 		Ind2 = Bcd2Dec(EEPROM_Read(18)) * 100 + Bcd2Dec(EEPROM_Read(19)); // Ind2
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
;main.c,1000 :: 		Ind3 = Bcd2Dec(EEPROM_Read(20)) * 100 + Bcd2Dec(EEPROM_Read(21)); // Ind3
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
;main.c,1001 :: 		Ind4 = Bcd2Dec(EEPROM_Read(22)) * 100 + Bcd2Dec(EEPROM_Read(23)); // Ind4
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
;main.c,1002 :: 		Ind5 = Bcd2Dec(EEPROM_Read(24)) * 100 + Bcd2Dec(EEPROM_Read(25)); // Ind5
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
;main.c,1003 :: 		Ind6 = Bcd2Dec(EEPROM_Read(26)) * 100 + Bcd2Dec(EEPROM_Read(27)); // Ind6
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
;main.c,1004 :: 		Ind7 = Bcd2Dec(EEPROM_Read(28)) * 100 + Bcd2Dec(EEPROM_Read(29)); // Ind7
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
;main.c,1006 :: 		Cap1 = Bcd2Dec(EEPROM_Read(32)) * 100 + Bcd2Dec(EEPROM_Read(33)); // Cap1
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
;main.c,1007 :: 		Cap2 = Bcd2Dec(EEPROM_Read(34)) * 100 + Bcd2Dec(EEPROM_Read(35)); // Cap2
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
;main.c,1008 :: 		Cap3 = Bcd2Dec(EEPROM_Read(36)) * 100 + Bcd2Dec(EEPROM_Read(37)); // Cap3
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
;main.c,1009 :: 		Cap4 = Bcd2Dec(EEPROM_Read(38)) * 100 + Bcd2Dec(EEPROM_Read(39)); // Cap4
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
;main.c,1010 :: 		Cap5 = Bcd2Dec(EEPROM_Read(40)) * 100 + Bcd2Dec(EEPROM_Read(41)); // Cap5
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
;main.c,1011 :: 		Cap6 = Bcd2Dec(EEPROM_Read(42)) * 100 + Bcd2Dec(EEPROM_Read(43)); // Cap6
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
;main.c,1012 :: 		Cap7 = Bcd2Dec(EEPROM_Read(44)) * 100 + Bcd2Dec(EEPROM_Read(45)); // Cap7
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
;main.c,1014 :: 		P_High = EEPROM_Read(0x30); // High power
	MOVLW       48
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_P_High+0 
;main.c,1015 :: 		K_Mult = Bcd2Dec(EEPROM_Read(0x31)); // Tandem Natch rate
	MOVLW       49
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       main_K_Mult+0 
;main.c,1016 :: 		Dysp_delay = Bcd2Dec(EEPROM_Read(0x32)); // Dysplay ON delay
	MOVLW       50
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Dysp_delay+0 
;main.c,1017 :: 		Loss_ind = EEPROM_Read(0x33);
	MOVLW       51
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_Loss_ind+0 
;main.c,1018 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
	MOVLW       52
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Fid_loss+0 
;main.c,1019 :: 		asm CLRWDT;
	CLRWDT
;main.c,1020 :: 		return;
;main.c,1022 :: 		}
L_end_cells_init:
	RETURN      0
; end of _cells_init

_show_loss:

;main.c,1024 :: 		void show_loss(void) {
;main.c,1025 :: 		IntToStr(Fid_loss, work_str);
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVLW       0
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,1026 :: 		if (Fid_loss >= 10)
	MOVLW       10
	SUBWF       _Fid_loss+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_show_loss459
;main.c,1027 :: 		work_str_2[0] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_loss460
L_show_loss459:
;main.c,1029 :: 		work_str_2[0] = '0';
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_loss460:
;main.c,1030 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,1031 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,1032 :: 		if (type == 4 | type == 5)
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
	GOTO        L_show_loss461
;main.c,1033 :: 		led_wr_str(4, 6, work_str_2, 3); // 128*64
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
	GOTO        L_show_loss462
L_show_loss461:
;main.c,1034 :: 		else if (type != 0)
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_loss463
;main.c,1035 :: 		led_wr_str(1, 0, work_str_2, 3); // 1602 | 128*32
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
L_show_loss463:
L_show_loss462:
;main.c,1036 :: 		return;
;main.c,1037 :: 		}
L_end_show_loss:
	RETURN      0
; end of _show_loss

_load_settings:

;main.c,1038 :: 		void load_settings()
;main.c,1040 :: 		cap = EEPROM_Read(255 - mem_offset * 5);
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
;main.c,1041 :: 		ind = EEPROM_Read(254 - mem_offset * 5);
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
;main.c,1042 :: 		SW = EEPROM_Read(253 - mem_offset * 5);
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
;main.c,1043 :: 		swr_a = EEPROM_Read(252 - mem_offset * 5) * 256;
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
;main.c,1044 :: 		swr_a += EEPROM_Read(251 - mem_offset * 5);
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
;main.c,1045 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,1046 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,1047 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,1048 :: 		}
L_end_load_settings:
	RETURN      0
; end of _load_settings

_read_i2c_inputs:

;main.c,1050 :: 		void read_i2c_inputs(void) {
;main.c,1053 :: 		_status = ~mem_offset | 0xF0;
	COMF        _mem_offset+0, 0 
	MOVWF       read_i2c_inputs__status_L0+0 
	MOVLW       240
	IORWF       read_i2c_inputs__status_L0+0, 1 
;main.c,1055 :: 		Delay_us(100);
	MOVLW       133
	MOVWF       R13, 0
L_read_i2c_inputs464:
	DECFSZ      R13, 1, 1
	BRA         L_read_i2c_inputs464
;main.c,1056 :: 		asm CLRWDT;
	CLRWDT
;main.c,1058 :: 		Soft_I2C_Start();
	CALL        _Soft_I2C_Start+0, 0
;main.c,1059 :: 		Soft_I2C_Write(0x40); // device addres for write
	MOVLW       64
	MOVWF       FARG_Soft_I2C_Write+0 
	CALL        _Soft_I2C_Write+0, 0
;main.c,1060 :: 		Soft_I2C_Write(_status);
	MOVF        read_i2c_inputs__status_L0+0, 0 
	MOVWF       FARG_Soft_I2C_Write+0 
	CALL        _Soft_I2C_Write+0, 0
;main.c,1061 :: 		Soft_I2C_Stop();
	CALL        _Soft_I2C_Stop+0, 0
;main.c,1062 :: 		asm CLRWDT;
	CLRWDT
;main.c,1063 :: 		Delay_us(100);
	MOVLW       133
	MOVWF       R13, 0
L_read_i2c_inputs465:
	DECFSZ      R13, 1, 1
	BRA         L_read_i2c_inputs465
;main.c,1064 :: 		asm CLRWDT;
	CLRWDT
;main.c,1065 :: 		Soft_I2C_Start();
	CALL        _Soft_I2C_Start+0, 0
;main.c,1066 :: 		Soft_I2C_Write(0x41); // device addres for read
	MOVLW       65
	MOVWF       FARG_Soft_I2C_Write+0 
	CALL        _Soft_I2C_Write+0, 0
;main.c,1067 :: 		_status = Soft_I2C_Read();
	CALL        _Soft_I2C_Read+0, 0
	MOVF        R0, 0 
	MOVWF       read_i2c_inputs__status_L0+0 
;main.c,1068 :: 		Soft_I2C_Stop();
	CALL        _Soft_I2C_Stop+0, 0
;main.c,1069 :: 		asm CLRWDT;
	CLRWDT
;main.c,1070 :: 		mem_offset = ~_status;
	COMF        read_i2c_inputs__status_L0+0, 0 
	MOVWF       _mem_offset+0 
;main.c,1071 :: 		mem_offset >>= 4;
	RRCF        _mem_offset+0, 1 
	BCF         _mem_offset+0, 7 
	RRCF        _mem_offset+0, 1 
	BCF         _mem_offset+0, 7 
	RRCF        _mem_offset+0, 1 
	BCF         _mem_offset+0, 7 
	RRCF        _mem_offset+0, 1 
	BCF         _mem_offset+0, 7 
;main.c,1072 :: 		mem_offset &= 0xf;
	MOVLW       15
	ANDWF       _mem_offset+0, 1 
;main.c,1073 :: 		}
L_end_read_i2c_inputs:
	RETURN      0
; end of _read_i2c_inputs
