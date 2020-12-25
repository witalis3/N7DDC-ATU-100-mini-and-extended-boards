
_correction:

;main.h,47 :: 		int correction(int input) {
;main.h,48 :: 		if (input <= 80)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction466
	MOVF        FARG_correction_input+0, 0 
	SUBLW       80
L__correction466:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction0
;main.h,49 :: 		return 0;
	CLRF        R0 
	CLRF        R1 
	GOTO        L_end_correction
L_correction0:
;main.h,50 :: 		if (input <= 171)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction467
	MOVF        FARG_correction_input+0, 0 
	SUBLW       171
L__correction467:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction1
;main.h,51 :: 		input += 244;
	MOVLW       244
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       0
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction2
L_correction1:
;main.h,52 :: 		else if (input <= 328)
	MOVLW       128
	XORLW       1
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction468
	MOVF        FARG_correction_input+0, 0 
	SUBLW       72
L__correction468:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction3
;main.h,53 :: 		input += 254;
	MOVLW       254
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       0
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction4
L_correction3:
;main.h,54 :: 		else if (input <= 582)
	MOVLW       128
	XORLW       2
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction469
	MOVF        FARG_correction_input+0, 0 
	SUBLW       70
L__correction469:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction5
;main.h,55 :: 		input += 280;
	MOVLW       24
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction6
L_correction5:
;main.h,56 :: 		else if (input <= 820)
	MOVLW       128
	XORLW       3
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction470
	MOVF        FARG_correction_input+0, 0 
	SUBLW       52
L__correction470:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction7
;main.h,57 :: 		input += 297;
	MOVLW       41
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction8
L_correction7:
;main.h,58 :: 		else if (input <= 1100)
	MOVLW       128
	XORLW       4
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction471
	MOVF        FARG_correction_input+0, 0 
	SUBLW       76
L__correction471:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction9
;main.h,59 :: 		input += 310;
	MOVLW       54
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction10
L_correction9:
;main.h,60 :: 		else if (input <= 2181)
	MOVLW       128
	XORLW       8
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction472
	MOVF        FARG_correction_input+0, 0 
	SUBLW       133
L__correction472:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction11
;main.h,61 :: 		input += 430;
	MOVLW       174
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction12
L_correction11:
;main.h,62 :: 		else if (input <= 3322)
	MOVLW       128
	XORLW       12
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction473
	MOVF        FARG_correction_input+0, 0 
	SUBLW       250
L__correction473:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction13
;main.h,63 :: 		input += 484;
	MOVLW       228
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       1
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction14
L_correction13:
;main.h,64 :: 		else if (input <= 4623)
	MOVLW       128
	XORLW       18
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction474
	MOVF        FARG_correction_input+0, 0 
	SUBLW       15
L__correction474:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction15
;main.h,65 :: 		input += 530;
	MOVLW       18
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       2
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction16
L_correction15:
;main.h,66 :: 		else if (input <= 5862)
	MOVLW       128
	XORLW       22
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction475
	MOVF        FARG_correction_input+0, 0 
	SUBLW       230
L__correction475:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction17
;main.h,67 :: 		input += 648;
	MOVLW       136
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       2
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction18
L_correction17:
;main.h,68 :: 		else if (input <= 7146)
	MOVLW       128
	XORLW       27
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction476
	MOVF        FARG_correction_input+0, 0 
	SUBLW       234
L__correction476:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction19
;main.h,69 :: 		input += 743;
	MOVLW       231
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       2
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction20
L_correction19:
;main.h,70 :: 		else if (input <= 8502)
	MOVLW       128
	XORLW       33
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction477
	MOVF        FARG_correction_input+0, 0 
	SUBLW       54
L__correction477:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction21
;main.h,71 :: 		input += 800;
	MOVLW       32
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       3
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction22
L_correction21:
;main.h,72 :: 		else if (input <= 10500)
	MOVLW       128
	XORLW       41
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_correction_input+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__correction478
	MOVF        FARG_correction_input+0, 0 
	SUBLW       4
L__correction478:
	BTFSS       STATUS+0, 0 
	GOTO        L_correction23
;main.h,73 :: 		input += 840;
	MOVLW       72
	ADDWF       FARG_correction_input+0, 1 
	MOVLW       3
	ADDWFC      FARG_correction_input+1, 1 
	GOTO        L_correction24
L_correction23:
;main.h,75 :: 		input += 860;
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
;main.h,77 :: 		return input;
	MOVF        FARG_correction_input+0, 0 
	MOVWF       R0 
	MOVF        FARG_correction_input+1, 0 
	MOVWF       R1 
;main.h,78 :: 		}
L_end_correction:
	RETURN      0
; end of _correction

_get_reverse:

;main.h,82 :: 		int get_reverse() {
;main.h,83 :: 		return ADC_Get_Sample(1) * 4.883; // zwraca napięcie w mV
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
;main.h,84 :: 		}
L_end_get_reverse:
	RETURN      0
; end of _get_reverse

_get_forward:

;main.h,87 :: 		int get_forward() {
;main.h,89 :: 		Forward = ADC_Get_Sample(0);
	CLRF        FARG_ADC_Get_Sample_channel+0 
	CALL        _ADC_Get_Sample+0, 0
	MOVF        R0, 0 
	MOVWF       get_forward_Forward_L0+0 
	MOVF        R1, 0 
	MOVWF       get_forward_Forward_L0+1 
;main.h,90 :: 		if (Forward > 1000)
	MOVLW       128
	XORLW       3
	MOVWF       R2 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_forward481
	MOVF        R0, 0 
	SUBLW       232
L__get_forward481:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_forward25
;main.h,91 :: 		Overload = 1;
	MOVLW       1
	MOVWF       main_Overload+0 
	GOTO        L_get_forward26
L_get_forward25:
;main.h,93 :: 		Overload = 0;
	CLRF        main_Overload+0 
L_get_forward26:
;main.h,94 :: 		return Forward * 4.883; // zwraca napięcie w mV
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
;main.h,95 :: 		}
L_end_get_forward:
	RETURN      0
; end of _get_forward

_get_pwr:

;main.h,97 :: 		void get_pwr() {
;main.h,100 :: 		asm CLRWDT;
	CLRWDT
;main.h,102 :: 		Forward = get_forward();
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
;main.h,103 :: 		Reverse = get_reverse();
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
;main.h,104 :: 		if (D_correction == 1)
	MOVF        main_D_correction+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_get_pwr27
;main.h,105 :: 		p = correction(Forward * 3);
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
;main.h,107 :: 		p = Forward * 3;
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
;main.h,109 :: 		if (Reverse >= Forward)
	MOVLW       128
	XORWF       get_pwr_Reverse_L0+3, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       get_pwr_Forward_L0+3, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr483
	MOVF        get_pwr_Forward_L0+2, 0 
	SUBWF       get_pwr_Reverse_L0+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr483
	MOVF        get_pwr_Forward_L0+1, 0 
	SUBWF       get_pwr_Reverse_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr483
	MOVF        get_pwr_Forward_L0+0, 0 
	SUBWF       get_pwr_Reverse_L0+0, 0 
L__get_pwr483:
	BTFSS       STATUS+0, 0 
	GOTO        L_get_pwr29
;main.h,110 :: 		Forward = 999;
	MOVLW       231
	MOVWF       get_pwr_Forward_L0+0 
	MOVLW       3
	MOVWF       get_pwr_Forward_L0+1 
	MOVLW       0
	MOVWF       get_pwr_Forward_L0+2 
	MOVWF       get_pwr_Forward_L0+3 
	GOTO        L_get_pwr30
L_get_pwr29:
;main.h,112 :: 		Forward = ((Forward + Reverse) * 100) / (Forward - Reverse);
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
;main.h,113 :: 		if (Forward > 999)
	MOVLW       128
	MOVWF       R4 
	MOVLW       128
	XORWF       R3, 0 
	SUBWF       R4, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr484
	MOVF        R2, 0 
	SUBLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr484
	MOVF        R1, 0 
	SUBLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr484
	MOVF        R0, 0 
	SUBLW       231
L__get_pwr484:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_pwr31
;main.h,114 :: 		Forward = 999;
	MOVLW       231
	MOVWF       get_pwr_Forward_L0+0 
	MOVLW       3
	MOVWF       get_pwr_Forward_L0+1 
	MOVLW       0
	MOVWF       get_pwr_Forward_L0+2 
	MOVWF       get_pwr_Forward_L0+3 
L_get_pwr31:
;main.h,115 :: 		}
L_get_pwr30:
;main.h,117 :: 		p = p * K_Mult / 1000.0; // mV to Volts on Input
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
;main.h,118 :: 		p = p / 1.414;
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
;main.h,119 :: 		if (P_High == 1)
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_get_pwr32
;main.h,120 :: 		p = p * p / 50; // 0 - 1500 ( 1500 Watts)
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
;main.h,122 :: 		p = p * p / 5; // 0 - 1510 (151.0 Watts)
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
;main.h,123 :: 		p = p + 0.5; // rounding to 0.1 W
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
;main.h,125 :: 		PWR = p;
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _PWR+0 
	MOVF        R1, 0 
	MOVWF       _PWR+1 
;main.h,126 :: 		if (PWR < 10)
	MOVLW       128
	XORWF       R1, 0 
	MOVWF       R2 
	MOVLW       128
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr485
	MOVLW       10
	SUBWF       R0, 0 
L__get_pwr485:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_pwr34
;main.h,127 :: 		SWR = 1;
	MOVLW       1
	MOVWF       _SWR+0 
	MOVLW       0
	MOVWF       _SWR+1 
	GOTO        L_get_pwr35
L_get_pwr34:
;main.h,128 :: 		else if (Forward < 100)
	MOVLW       128
	XORWF       get_pwr_Forward_L0+3, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr486
	MOVLW       0
	SUBWF       get_pwr_Forward_L0+2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr486
	MOVLW       0
	SUBWF       get_pwr_Forward_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_pwr486
	MOVLW       100
	SUBWF       get_pwr_Forward_L0+0, 0 
L__get_pwr486:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_pwr36
;main.h,129 :: 		SWR = 999;
	MOVLW       231
	MOVWF       _SWR+0 
	MOVLW       3
	MOVWF       _SWR+1 
	GOTO        L_get_pwr37
L_get_pwr36:
;main.h,131 :: 		SWR = Forward;
	MOVF        get_pwr_Forward_L0+0, 0 
	MOVWF       _SWR+0 
	MOVF        get_pwr_Forward_L0+1, 0 
	MOVWF       _SWR+1 
L_get_pwr37:
L_get_pwr35:
;main.h,132 :: 		return;
;main.h,133 :: 		}
L_end_get_pwr:
	RETURN      0
; end of _get_pwr

_get_swr:

;main.h,135 :: 		void get_swr() {
;main.h,136 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.h,137 :: 		if (p_cnt != 100) {
	MOVF        _p_cnt+0, 0 
	XORLW       100
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr38
;main.h,138 :: 		p_cnt += 1;
	INCF        _p_cnt+0, 1 
;main.h,139 :: 		if (PWR > P_max)
	MOVLW       128
	XORWF       _P_max+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr488
	MOVF        _PWR+0, 0 
	SUBWF       _P_max+0, 0 
L__get_swr488:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_swr39
;main.h,140 :: 		P_max = PWR;
	MOVF        _PWR+0, 0 
	MOVWF       _P_max+0 
	MOVF        _PWR+1, 0 
	MOVWF       _P_max+1 
L_get_swr39:
;main.h,141 :: 		} else {
	GOTO        L_get_swr40
L_get_swr38:
;main.h,142 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,143 :: 		show_pwr(P_max, SWR); // raz na 100 pomiarów pokazuje maksymalną wartośc mocy
	MOVF        _P_max+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _P_max+1, 0 
	MOVWF       FARG_show_pwr+1 
	MOVF        _SWR+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _SWR+1, 0 
	MOVWF       FARG_show_pwr+1 
	CALL        _show_pwr+0, 0
;main.h,144 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,145 :: 		}
L_get_swr40:
;main.h,146 :: 		while (PWR < min_for_start | (PWR > max_for_start & max_for_start > 0)) { // waiting for good power
L_get_swr41:
	MOVLW       128
	XORWF       _PWR+1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       main_min_for_start+1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr489
	MOVF        main_min_for_start+0, 0 
	SUBWF       _PWR+0, 0 
L__get_swr489:
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
	GOTO        L__get_swr490
	MOVF        _PWR+0, 0 
	SUBWF       main_max_for_start+0, 0 
L__get_swr490:
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
	GOTO        L__get_swr491
	MOVF        main_max_for_start+0, 0 
	SUBLW       0
L__get_swr491:
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
;main.h,147 :: 		asm CLRWDT;
	CLRWDT
;main.h,148 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.h,149 :: 		if (p_cnt != 100) {
	MOVF        _p_cnt+0, 0 
	XORLW       100
	BTFSC       STATUS+0, 2 
	GOTO        L_get_swr43
;main.h,150 :: 		p_cnt += 1;
	INCF        _p_cnt+0, 1 
;main.h,151 :: 		if (PWR > P_max)
	MOVLW       128
	XORWF       _P_max+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__get_swr492
	MOVF        _PWR+0, 0 
	SUBWF       _P_max+0, 0 
L__get_swr492:
	BTFSC       STATUS+0, 0 
	GOTO        L_get_swr44
;main.h,152 :: 		P_max = PWR;
	MOVF        _PWR+0, 0 
	MOVWF       _P_max+0 
	MOVF        _PWR+1, 0 
	MOVWF       _P_max+1 
L_get_swr44:
;main.h,153 :: 		} else {
	GOTO        L_get_swr45
L_get_swr43:
;main.h,154 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,155 :: 		show_pwr(P_max, SWR);
	MOVF        _P_max+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _P_max+1, 0 
	MOVWF       FARG_show_pwr+1 
	MOVF        _SWR+0, 0 
	MOVWF       FARG_show_pwr+0 
	MOVF        _SWR+1, 0 
	MOVWF       FARG_show_pwr+1 
	CALL        _show_pwr+0, 0
;main.h,156 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,157 :: 		}
L_get_swr45:
;main.h,159 :: 		if (Button( & PORTB, 0, 5, 1))
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
;main.h,160 :: 		rready = 1;
	MOVLW       1
	MOVWF       _rready+0 
L_get_swr46:
;main.h,161 :: 		if (rready == 1 & Button( & PORTB, 0, 5, 0)) { //  press button  Tune
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
;main.h,162 :: 		show_reset();
	CALL        _show_reset+0, 0
;main.h,163 :: 		SWR = 0;
	CLRF        _SWR+0 
	CLRF        _SWR+1 
;main.h,164 :: 		return;
	GOTO        L_end_get_swr
;main.h,165 :: 		}
L_get_swr47:
;main.h,166 :: 		} //  good power
	GOTO        L_get_swr41
L_get_swr42:
;main.h,167 :: 		return;
;main.h,168 :: 		}
L_end_get_swr:
	RETURN      0
; end of _get_swr

_set_ind:

;main.h,170 :: 		void set_ind(char Ind) { // 0 - 31
;main.h,171 :: 		if (L_invert == 0) {
	MOVF        main_L_invert+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_set_ind48
;main.h,172 :: 		Ind_005 = Ind.B0;
	BTFSC       FARG_set_ind_Ind+0, 0 
	GOTO        L__set_ind494
	BCF         LATB3_bit+0, BitPos(LATB3_bit+0) 
	GOTO        L__set_ind495
L__set_ind494:
	BSF         LATB3_bit+0, BitPos(LATB3_bit+0) 
L__set_ind495:
;main.h,173 :: 		Ind_011 = Ind.B1;
	BTFSC       FARG_set_ind_Ind+0, 1 
	GOTO        L__set_ind496
	BCF         LATA2_bit+0, BitPos(LATA2_bit+0) 
	GOTO        L__set_ind497
L__set_ind496:
	BSF         LATA2_bit+0, BitPos(LATA2_bit+0) 
L__set_ind497:
;main.h,174 :: 		Ind_022 = Ind.B2;
	BTFSC       FARG_set_ind_Ind+0, 2 
	GOTO        L__set_ind498
	BCF         LATB4_bit+0, BitPos(LATB4_bit+0) 
	GOTO        L__set_ind499
L__set_ind498:
	BSF         LATB4_bit+0, BitPos(LATB4_bit+0) 
L__set_ind499:
;main.h,175 :: 		Ind_045 = Ind.B3;
	BTFSC       FARG_set_ind_Ind+0, 3 
	GOTO        L__set_ind500
	BCF         LATA3_bit+0, BitPos(LATA3_bit+0) 
	GOTO        L__set_ind501
L__set_ind500:
	BSF         LATA3_bit+0, BitPos(LATA3_bit+0) 
L__set_ind501:
;main.h,176 :: 		Ind_1 = Ind.B4;
	BTFSC       FARG_set_ind_Ind+0, 4 
	GOTO        L__set_ind502
	BCF         LATB5_bit+0, BitPos(LATB5_bit+0) 
	GOTO        L__set_ind503
L__set_ind502:
	BSF         LATB5_bit+0, BitPos(LATB5_bit+0) 
L__set_ind503:
;main.h,177 :: 		Ind_22 = Ind.B5;
	BTFSC       FARG_set_ind_Ind+0, 5 
	GOTO        L__set_ind504
	BCF         LATA5_bit+0, BitPos(LATA5_bit+0) 
	GOTO        L__set_ind505
L__set_ind504:
	BSF         LATA5_bit+0, BitPos(LATA5_bit+0) 
L__set_ind505:
;main.h,178 :: 		Ind_45 = Ind.B6;
	BTFSC       FARG_set_ind_Ind+0, 6 
	GOTO        L__set_ind506
	BCF         LATA4_bit+0, BitPos(LATA4_bit+0) 
	GOTO        L__set_ind507
L__set_ind506:
	BSF         LATA4_bit+0, BitPos(LATA4_bit+0) 
L__set_ind507:
;main.h,180 :: 		} else {
	GOTO        L_set_ind49
L_set_ind48:
;main.h,181 :: 		Ind_005 = ~Ind.B0;
	BTFSC       FARG_set_ind_Ind+0, 0 
	GOTO        L__set_ind508
	BSF         LATB3_bit+0, BitPos(LATB3_bit+0) 
	GOTO        L__set_ind509
L__set_ind508:
	BCF         LATB3_bit+0, BitPos(LATB3_bit+0) 
L__set_ind509:
;main.h,182 :: 		Ind_011 = ~Ind.B1;
	BTFSC       FARG_set_ind_Ind+0, 1 
	GOTO        L__set_ind510
	BSF         LATA2_bit+0, BitPos(LATA2_bit+0) 
	GOTO        L__set_ind511
L__set_ind510:
	BCF         LATA2_bit+0, BitPos(LATA2_bit+0) 
L__set_ind511:
;main.h,183 :: 		Ind_022 = ~Ind.B2;
	BTFSC       FARG_set_ind_Ind+0, 2 
	GOTO        L__set_ind512
	BSF         LATB4_bit+0, BitPos(LATB4_bit+0) 
	GOTO        L__set_ind513
L__set_ind512:
	BCF         LATB4_bit+0, BitPos(LATB4_bit+0) 
L__set_ind513:
;main.h,184 :: 		Ind_045 = ~Ind.B3;
	BTFSC       FARG_set_ind_Ind+0, 3 
	GOTO        L__set_ind514
	BSF         LATA3_bit+0, BitPos(LATA3_bit+0) 
	GOTO        L__set_ind515
L__set_ind514:
	BCF         LATA3_bit+0, BitPos(LATA3_bit+0) 
L__set_ind515:
;main.h,185 :: 		Ind_1 = ~Ind.B4;
	BTFSC       FARG_set_ind_Ind+0, 4 
	GOTO        L__set_ind516
	BSF         LATB5_bit+0, BitPos(LATB5_bit+0) 
	GOTO        L__set_ind517
L__set_ind516:
	BCF         LATB5_bit+0, BitPos(LATB5_bit+0) 
L__set_ind517:
;main.h,186 :: 		Ind_22 = ~Ind.B5;
	BTFSC       FARG_set_ind_Ind+0, 5 
	GOTO        L__set_ind518
	BSF         LATA5_bit+0, BitPos(LATA5_bit+0) 
	GOTO        L__set_ind519
L__set_ind518:
	BCF         LATA5_bit+0, BitPos(LATA5_bit+0) 
L__set_ind519:
;main.h,187 :: 		Ind_45 = ~Ind.B6;
	BTFSC       FARG_set_ind_Ind+0, 6 
	GOTO        L__set_ind520
	BSF         LATA4_bit+0, BitPos(LATA4_bit+0) 
	GOTO        L__set_ind521
L__set_ind520:
	BCF         LATA4_bit+0, BitPos(LATA4_bit+0) 
L__set_ind521:
;main.h,189 :: 		}
L_set_ind49:
;main.h,190 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,191 :: 		}
L_end_set_ind:
	RETURN      0
; end of _set_ind

_set_cap:

;main.h,193 :: 		void set_cap(char Cap) { // 0 - 31
;main.h,194 :: 		Cap_10 = Cap.B0;
	BTFSC       FARG_set_cap_Cap+0, 0 
	GOTO        L__set_cap523
	BCF         LATC7_bit+0, BitPos(LATC7_bit+0) 
	GOTO        L__set_cap524
L__set_cap523:
	BSF         LATC7_bit+0, BitPos(LATC7_bit+0) 
L__set_cap524:
;main.h,195 :: 		Cap_22 = Cap.B1;
	BTFSC       FARG_set_cap_Cap+0, 1 
	GOTO        L__set_cap525
	BCF         LATC3_bit+0, BitPos(LATC3_bit+0) 
	GOTO        L__set_cap526
L__set_cap525:
	BSF         LATC3_bit+0, BitPos(LATC3_bit+0) 
L__set_cap526:
;main.h,196 :: 		Cap_47 = Cap.B2;
	BTFSC       FARG_set_cap_Cap+0, 2 
	GOTO        L__set_cap527
	BCF         LATC6_bit+0, BitPos(LATC6_bit+0) 
	GOTO        L__set_cap528
L__set_cap527:
	BSF         LATC6_bit+0, BitPos(LATC6_bit+0) 
L__set_cap528:
;main.h,197 :: 		Cap_100 = Cap.B3;
	BTFSC       FARG_set_cap_Cap+0, 3 
	GOTO        L__set_cap529
	BCF         LATC2_bit+0, BitPos(LATC2_bit+0) 
	GOTO        L__set_cap530
L__set_cap529:
	BSF         LATC2_bit+0, BitPos(LATC2_bit+0) 
L__set_cap530:
;main.h,198 :: 		Cap_220 = Cap.B4;
	BTFSC       FARG_set_cap_Cap+0, 4 
	GOTO        L__set_cap531
	BCF         LATC5_bit+0, BitPos(LATC5_bit+0) 
	GOTO        L__set_cap532
L__set_cap531:
	BSF         LATC5_bit+0, BitPos(LATC5_bit+0) 
L__set_cap532:
;main.h,199 :: 		Cap_470 = Cap.B5;
	BTFSC       FARG_set_cap_Cap+0, 5 
	GOTO        L__set_cap533
	BCF         LATC1_bit+0, BitPos(LATC1_bit+0) 
	GOTO        L__set_cap534
L__set_cap533:
	BSF         LATC1_bit+0, BitPos(LATC1_bit+0) 
L__set_cap534:
;main.h,200 :: 		Cap_1000 = Cap.B6;
	BTFSC       FARG_set_cap_Cap+0, 6 
	GOTO        L__set_cap535
	BCF         LATC4_bit+0, BitPos(LATC4_bit+0) 
	GOTO        L__set_cap536
L__set_cap535:
	BSF         LATC4_bit+0, BitPos(LATC4_bit+0) 
L__set_cap536:
;main.h,201 :: 		if (mem_offset == 14)        // kod pasma 160m
	MOVLW       0
	XORWF       _mem_offset+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__set_cap537
	MOVLW       14
	XORWF       _mem_offset+0, 0 
L__set_cap537:
	BTFSS       STATUS+0, 2 
	GOTO        L_set_cap50
;main.h,203 :: 		Cap_1820 = 1;
	BSF         LATA7_bit+0, BitPos(LATA7_bit+0) 
;main.h,204 :: 		}
	GOTO        L_set_cap51
L_set_cap50:
;main.h,207 :: 		Cap_1820 = 0;
	BCF         LATA7_bit+0, BitPos(LATA7_bit+0) 
;main.h,208 :: 		}
L_set_cap51:
;main.h,210 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,211 :: 		}
L_end_set_cap:
	RETURN      0
; end of _set_cap

_set_sw:

;main.h,213 :: 		void set_sw(char SW) { // 0 - IN,  1 - OUT
;main.h,214 :: 		Cap_sw = SW;
	BTFSC       FARG_set_sw_SW+0, 0 
	GOTO        L__set_sw539
	BCF         LATC0_bit+0, BitPos(LATC0_bit+0) 
	GOTO        L__set_sw540
L__set_sw539:
	BSF         LATC0_bit+0, BitPos(LATC0_bit+0) 
L__set_sw540:
;main.h,215 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,216 :: 		}
L_end_set_sw:
	RETURN      0
; end of _set_sw

_atu_reset:

;main.h,218 :: 		void atu_reset() {
;main.h,219 :: 		ind = 0;
	CLRF        main_ind+0 
;main.h,220 :: 		cap = 0;
	CLRF        main_cap+0 
;main.h,221 :: 		set_ind(ind);
	CLRF        FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,222 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,223 :: 		Vdelay_ms(Rel_Del);
	MOVF        main_Rel_Del+0, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+0 
	MOVF        main_Rel_Del+1, 0 
	MOVWF       FARG_VDelay_ms_Time_ms+1 
	CALL        _VDelay_ms+0, 0
;main.h,224 :: 		}
L_end_atu_reset:
	RETURN      0
; end of _atu_reset

_coarse_cap:

;main.h,226 :: 		void coarse_cap() {
;main.h,227 :: 		char step = 3;
	MOVLW       3
	MOVWF       coarse_cap_step_L0+0 
;main.h,231 :: 		cap = 0;
	CLRF        main_cap+0 
;main.h,232 :: 		set_cap(cap);
	CLRF        FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,233 :: 		step_cap = step;
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,234 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,235 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap543
	MOVLW       0
	XORWF       _SWR+0, 0 
L__coarse_cap543:
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_cap52
;main.h,236 :: 		return;
	GOTO        L_end_coarse_cap
L_coarse_cap52:
;main.h,237 :: 		min_swr = SWR + SWR / 20;
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
;main.h,238 :: 		for (count = step; count <= 31;) {
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       coarse_cap_count_L0+0 
L_coarse_cap53:
	MOVF        coarse_cap_count_L0+0, 0 
	SUBLW       31
	BTFSS       STATUS+0, 0 
	GOTO        L_coarse_cap54
;main.h,239 :: 		set_cap(count * C_mult);
	MOVF        coarse_cap_count_L0+0, 0 
	MULWF       main_C_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,240 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,241 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap544
	MOVLW       0
	XORWF       _SWR+0, 0 
L__coarse_cap544:
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_cap56
;main.h,242 :: 		return;
	GOTO        L_end_coarse_cap
L_coarse_cap56:
;main.h,243 :: 		if (SWR < min_swr) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       coarse_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap545
	MOVF        coarse_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__coarse_cap545:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_cap57
;main.h,244 :: 		min_swr = SWR + SWR / 20;
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
;main.h,245 :: 		cap = count * C_mult;
	MOVF        coarse_cap_count_L0+0, 0 
	MULWF       main_C_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       main_cap+0 
;main.h,246 :: 		step_cap = step;
	MOVF        coarse_cap_step_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,247 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_cap546
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__coarse_cap546:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_cap58
;main.h,248 :: 		break;
	GOTO        L_coarse_cap54
L_coarse_cap58:
;main.h,249 :: 		count += step;
	MOVF        coarse_cap_step_L0+0, 0 
	ADDWF       coarse_cap_count_L0+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       coarse_cap_count_L0+0 
;main.h,250 :: 		if (C_linear == 0 & count == 9)
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
;main.h,251 :: 		count = 8;
	MOVLW       8
	MOVWF       coarse_cap_count_L0+0 
	GOTO        L_coarse_cap60
L_coarse_cap59:
;main.h,252 :: 		else if (C_linear == 0 & count == 17) {
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
;main.h,253 :: 		count = 16;
	MOVLW       16
	MOVWF       coarse_cap_count_L0+0 
;main.h,254 :: 		step = 4;
	MOVLW       4
	MOVWF       coarse_cap_step_L0+0 
;main.h,255 :: 		}
L_coarse_cap61:
L_coarse_cap60:
;main.h,256 :: 		} else
	GOTO        L_coarse_cap62
L_coarse_cap57:
;main.h,257 :: 		break;
	GOTO        L_coarse_cap54
L_coarse_cap62:
;main.h,258 :: 		}
	GOTO        L_coarse_cap53
L_coarse_cap54:
;main.h,259 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,260 :: 		return;
;main.h,261 :: 		}
L_end_coarse_cap:
	RETURN      0
; end of _coarse_cap

_coarse_tune:

;main.h,263 :: 		void coarse_tune() {
;main.h,264 :: 		char step = 3;
	MOVLW       3
	MOVWF       coarse_tune_step_L0+0 
;main.h,269 :: 		mem_cap = 0;
	CLRF        coarse_tune_mem_cap_L0+0 
;main.h,270 :: 		step_ind = step;
	MOVF        coarse_tune_step_L0+0, 0 
	MOVWF       main_step_ind+0 
;main.h,271 :: 		mem_step_cap = 3;
	MOVLW       3
	MOVWF       coarse_tune_mem_step_cap_L0+0 
;main.h,272 :: 		min_swr = SWR + SWR / 20;
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
;main.h,273 :: 		for (count = 0; count <= 31;) {
	CLRF        coarse_tune_count_L0+0 
L_coarse_tune63:
	MOVF        coarse_tune_count_L0+0, 0 
	SUBLW       31
	BTFSS       STATUS+0, 0 
	GOTO        L_coarse_tune64
;main.h,274 :: 		set_ind(count * L_mult);
	MOVF        coarse_tune_count_L0+0, 0 
	MULWF       main_L_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,275 :: 		coarse_cap();
	CALL        _coarse_cap+0, 0
;main.h,276 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,277 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune548
	MOVLW       0
	XORWF       _SWR+0, 0 
L__coarse_tune548:
	BTFSS       STATUS+0, 2 
	GOTO        L_coarse_tune66
;main.h,278 :: 		return;
	GOTO        L_end_coarse_tune
L_coarse_tune66:
;main.h,279 :: 		if (SWR < min_swr) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       coarse_tune_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune549
	MOVF        coarse_tune_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__coarse_tune549:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_tune67
;main.h,280 :: 		min_swr = SWR + SWR / 20;
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
;main.h,281 :: 		ind = count * L_mult;
	MOVF        coarse_tune_count_L0+0, 0 
	MULWF       main_L_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       main_ind+0 
;main.h,282 :: 		mem_cap = cap;
	MOVF        main_cap+0, 0 
	MOVWF       coarse_tune_mem_cap_L0+0 
;main.h,283 :: 		step_ind = step;
	MOVF        coarse_tune_step_L0+0, 0 
	MOVWF       main_step_ind+0 
;main.h,284 :: 		mem_step_cap = step_cap;
	MOVF        main_step_cap+0, 0 
	MOVWF       coarse_tune_mem_step_cap_L0+0 
;main.h,285 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__coarse_tune550
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__coarse_tune550:
	BTFSC       STATUS+0, 0 
	GOTO        L_coarse_tune68
;main.h,286 :: 		break;
	GOTO        L_coarse_tune64
L_coarse_tune68:
;main.h,287 :: 		count += step;
	MOVF        coarse_tune_step_L0+0, 0 
	ADDWF       coarse_tune_count_L0+0, 0 
	MOVWF       R2 
	MOVF        R2, 0 
	MOVWF       coarse_tune_count_L0+0 
;main.h,288 :: 		if (L_linear == 0 & count == 9)
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
;main.h,289 :: 		count = 8;
	MOVLW       8
	MOVWF       coarse_tune_count_L0+0 
	GOTO        L_coarse_tune70
L_coarse_tune69:
;main.h,290 :: 		else if (L_linear == 0 & count == 17) {
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
;main.h,291 :: 		count = 16;
	MOVLW       16
	MOVWF       coarse_tune_count_L0+0 
;main.h,292 :: 		step = 4;
	MOVLW       4
	MOVWF       coarse_tune_step_L0+0 
;main.h,293 :: 		}
L_coarse_tune71:
L_coarse_tune70:
;main.h,294 :: 		} else
	GOTO        L_coarse_tune72
L_coarse_tune67:
;main.h,295 :: 		break;
	GOTO        L_coarse_tune64
L_coarse_tune72:
;main.h,296 :: 		}
	GOTO        L_coarse_tune63
L_coarse_tune64:
;main.h,297 :: 		cap = mem_cap;
	MOVF        coarse_tune_mem_cap_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,298 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,299 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,300 :: 		step_cap = mem_step_cap;
	MOVF        coarse_tune_mem_step_cap_L0+0, 0 
	MOVWF       main_step_cap+0 
;main.h,301 :: 		Delay_ms(10);
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
;main.h,302 :: 		return;
;main.h,303 :: 		}
L_end_coarse_tune:
	RETURN      0
; end of _coarse_tune

_sharp_cap:

;main.h,305 :: 		void sharp_cap() {
;main.h,308 :: 		range = step_cap * C_mult;
	MOVF        main_step_cap+0, 0 
	MULWF       main_C_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       sharp_cap_range_L0+0 
;main.h,310 :: 		max_range = cap + range;
	MOVF        R0, 0 
	ADDWF       main_cap+0, 0 
	MOVWF       R4 
	MOVF        R4, 0 
	MOVWF       sharp_cap_max_range_L0+0 
;main.h,311 :: 		if (max_range > 32 * C_mult - 1)
	MOVLW       5
	MOVWF       R2 
	MOVF        main_C_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__sharp_cap552:
	BZ          L__sharp_cap553
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__sharp_cap552
L__sharp_cap553:
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
	GOTO        L__sharp_cap554
	MOVF        R4, 0 
	SUBWF       R2, 0 
L__sharp_cap554:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap74
;main.h,312 :: 		max_range = 32 * C_mult - 1;
	MOVLW       5
	MOVWF       R0 
	MOVF        main_C_mult+0, 0 
	MOVWF       sharp_cap_max_range_L0+0 
	MOVF        R0, 0 
L__sharp_cap555:
	BZ          L__sharp_cap556
	RLCF        sharp_cap_max_range_L0+0, 1 
	BCF         sharp_cap_max_range_L0+0, 0 
	ADDLW       255
	GOTO        L__sharp_cap555
L__sharp_cap556:
	DECF        sharp_cap_max_range_L0+0, 1 
L_sharp_cap74:
;main.h,313 :: 		if (cap > range)
	MOVF        main_cap+0, 0 
	SUBWF       sharp_cap_range_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap75
;main.h,314 :: 		min_range = cap - range;
	MOVF        sharp_cap_range_L0+0, 0 
	SUBWF       main_cap+0, 0 
	MOVWF       sharp_cap_min_range_L0+0 
	GOTO        L_sharp_cap76
L_sharp_cap75:
;main.h,316 :: 		min_range = 0;
	CLRF        sharp_cap_min_range_L0+0 
L_sharp_cap76:
;main.h,317 :: 		cap = min_range;
	MOVF        sharp_cap_min_range_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,318 :: 		set_cap(cap);
	MOVF        sharp_cap_min_range_L0+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,319 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,320 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap557
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_cap557:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_cap77
;main.h,321 :: 		return;
	GOTO        L_end_sharp_cap
L_sharp_cap77:
;main.h,322 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_cap_min_swr_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_cap_min_swr_L0+1 
;main.h,323 :: 		for (count = min_range + C_mult; count <= max_range; count += C_mult) {
	MOVF        main_C_mult+0, 0 
	ADDWF       sharp_cap_min_range_L0+0, 0 
	MOVWF       sharp_cap_count_L0+0 
L_sharp_cap78:
	MOVF        sharp_cap_count_L0+0, 0 
	SUBWF       sharp_cap_max_range_L0+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_cap79
;main.h,324 :: 		set_cap(count);
	MOVF        sharp_cap_count_L0+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,325 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,326 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap558
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_cap558:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_cap81
;main.h,327 :: 		return;
	GOTO        L_end_sharp_cap
L_sharp_cap81:
;main.h,328 :: 		if (SWR >= min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_cap_min_swr_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap559
	MOVF        sharp_cap_min_swr_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_cap559:
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_cap82
;main.h,329 :: 		Delay_ms(10);
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
;main.h,330 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,331 :: 		}
L_sharp_cap82:
;main.h,332 :: 		if (SWR >= min_SWR) {
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
	GOTO        L_sharp_cap84
;main.h,333 :: 		Delay_ms(10);
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
;main.h,334 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,335 :: 		}
L_sharp_cap84:
;main.h,336 :: 		if (SWR < min_SWR) {
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
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap86
;main.h,337 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_cap_min_swr_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_cap_min_swr_L0+1 
;main.h,338 :: 		cap = count;
	MOVF        sharp_cap_count_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,339 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_cap562
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sharp_cap562:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_cap87
;main.h,340 :: 		break;
	GOTO        L_sharp_cap79
L_sharp_cap87:
;main.h,341 :: 		} else
	GOTO        L_sharp_cap88
L_sharp_cap86:
;main.h,342 :: 		break;
	GOTO        L_sharp_cap79
L_sharp_cap88:
;main.h,323 :: 		for (count = min_range + C_mult; count <= max_range; count += C_mult) {
	MOVF        main_C_mult+0, 0 
	ADDWF       sharp_cap_count_L0+0, 1 
;main.h,343 :: 		}
	GOTO        L_sharp_cap78
L_sharp_cap79:
;main.h,344 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,345 :: 		return;
;main.h,346 :: 		}
L_end_sharp_cap:
	RETURN      0
; end of _sharp_cap

_sharp_ind:

;main.h,348 :: 		void sharp_ind() {
;main.h,351 :: 		range = step_ind * L_mult;
	MOVF        main_step_ind+0, 0 
	MULWF       main_L_mult+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       sharp_ind_range_L0+0 
;main.h,353 :: 		max_range = ind + range;
	MOVF        R0, 0 
	ADDWF       main_ind+0, 0 
	MOVWF       R4 
	MOVF        R4, 0 
	MOVWF       sharp_ind_max_range_L0+0 
;main.h,354 :: 		if (max_range > 32 * L_mult - 1)
	MOVLW       5
	MOVWF       R2 
	MOVF        main_L_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__sharp_ind564:
	BZ          L__sharp_ind565
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__sharp_ind564
L__sharp_ind565:
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
	GOTO        L__sharp_ind566
	MOVF        R4, 0 
	SUBWF       R2, 0 
L__sharp_ind566:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind89
;main.h,355 :: 		max_range = 32 * L_mult - 1;
	MOVLW       5
	MOVWF       R0 
	MOVF        main_L_mult+0, 0 
	MOVWF       sharp_ind_max_range_L0+0 
	MOVF        R0, 0 
L__sharp_ind567:
	BZ          L__sharp_ind568
	RLCF        sharp_ind_max_range_L0+0, 1 
	BCF         sharp_ind_max_range_L0+0, 0 
	ADDLW       255
	GOTO        L__sharp_ind567
L__sharp_ind568:
	DECF        sharp_ind_max_range_L0+0, 1 
L_sharp_ind89:
;main.h,356 :: 		if (ind > range)
	MOVF        main_ind+0, 0 
	SUBWF       sharp_ind_range_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind90
;main.h,357 :: 		min_range = ind - range;
	MOVF        sharp_ind_range_L0+0, 0 
	SUBWF       main_ind+0, 0 
	MOVWF       sharp_ind_min_range_L0+0 
	GOTO        L_sharp_ind91
L_sharp_ind90:
;main.h,359 :: 		min_range = 0;
	CLRF        sharp_ind_min_range_L0+0 
L_sharp_ind91:
;main.h,360 :: 		ind = min_range;
	MOVF        sharp_ind_min_range_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,361 :: 		set_ind(ind);
	MOVF        sharp_ind_min_range_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,362 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,363 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind569
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_ind569:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_ind92
;main.h,364 :: 		return;
	GOTO        L_end_sharp_ind
L_sharp_ind92:
;main.h,365 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_ind_min_SWR_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_ind_min_SWR_L0+1 
;main.h,366 :: 		for (count = min_range + L_mult; count <= max_range; count += L_mult) {
	MOVF        main_L_mult+0, 0 
	ADDWF       sharp_ind_min_range_L0+0, 0 
	MOVWF       sharp_ind_count_L0+0 
L_sharp_ind93:
	MOVF        sharp_ind_count_L0+0, 0 
	SUBWF       sharp_ind_max_range_L0+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_ind94
;main.h,367 :: 		set_ind(count);
	MOVF        sharp_ind_count_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,368 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,369 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind570
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sharp_ind570:
	BTFSS       STATUS+0, 2 
	GOTO        L_sharp_ind96
;main.h,370 :: 		return;
	GOTO        L_end_sharp_ind
L_sharp_ind96:
;main.h,371 :: 		if (SWR >= min_SWR) {
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       sharp_ind_min_SWR_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind571
	MOVF        sharp_ind_min_SWR_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sharp_ind571:
	BTFSS       STATUS+0, 0 
	GOTO        L_sharp_ind97
;main.h,372 :: 		Delay_ms(10);
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
;main.h,373 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,374 :: 		}
L_sharp_ind97:
;main.h,375 :: 		if (SWR >= min_SWR) {
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
	GOTO        L_sharp_ind99
;main.h,376 :: 		Delay_ms(10);
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
;main.h,377 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,378 :: 		}
L_sharp_ind99:
;main.h,379 :: 		if (SWR < min_SWR) {
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
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind101
;main.h,380 :: 		min_SWR = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sharp_ind_min_SWR_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sharp_ind_min_SWR_L0+1 
;main.h,381 :: 		ind = count;
	MOVF        sharp_ind_count_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,382 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sharp_ind574
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sharp_ind574:
	BTFSC       STATUS+0, 0 
	GOTO        L_sharp_ind102
;main.h,383 :: 		break;
	GOTO        L_sharp_ind94
L_sharp_ind102:
;main.h,384 :: 		} else
	GOTO        L_sharp_ind103
L_sharp_ind101:
;main.h,385 :: 		break;
	GOTO        L_sharp_ind94
L_sharp_ind103:
;main.h,366 :: 		for (count = min_range + L_mult; count <= max_range; count += L_mult) {
	MOVF        main_L_mult+0, 0 
	ADDWF       sharp_ind_count_L0+0, 1 
;main.h,386 :: 		}
	GOTO        L_sharp_ind93
L_sharp_ind94:
;main.h,387 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,388 :: 		return;
;main.h,389 :: 		}
L_end_sharp_ind:
	RETURN      0
; end of _sharp_ind

_sub_tune:

;main.h,391 :: 		void sub_tune()
;main.h,395 :: 		swr_mem = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sub_tune_swr_mem_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sub_tune_swr_mem_L0+1 
;main.h,396 :: 		coarse_tune();
	CALL        _coarse_tune+0, 0
;main.h,397 :: 		if (SWR == 0) {
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune576
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune576:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune104
;main.h,398 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,399 :: 		return;
	GOTO        L_end_sub_tune
;main.h,400 :: 		}
L_sub_tune104:
;main.h,401 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,402 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune577
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune577:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune105
;main.h,403 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune105:
;main.h,404 :: 		sharp_ind();
	CALL        _sharp_ind+0, 0
;main.h,405 :: 		if (SWR == 0) {
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune578
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune578:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune106
;main.h,406 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,407 :: 		return;
	GOTO        L_end_sub_tune
;main.h,408 :: 		}
L_sub_tune106:
;main.h,409 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,410 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune579
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune579:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune107
;main.h,411 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune107:
;main.h,412 :: 		sharp_cap();
	CALL        _sharp_cap+0, 0
;main.h,413 :: 		if (SWR == 0) {
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune580
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune580:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune108
;main.h,414 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,415 :: 		return;
	GOTO        L_end_sub_tune
;main.h,416 :: 		}
L_sub_tune108:
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
	GOTO        L_sub_tune109
;main.h,419 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune109:
;main.h,421 :: 		if (SWR < 200 & SWR < swr_mem & (swr_mem - SWR) > 100)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R1 
	MOVLW       128
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune582
	MOVLW       200
	SUBWF       _SWR+0, 0 
L__sub_tune582:
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
	GOTO        L__sub_tune583
	MOVF        sub_tune_swr_mem_L0+0, 0 
	SUBWF       _SWR+0, 0 
L__sub_tune583:
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
	GOTO        L__sub_tune584
	MOVF        R1, 0 
	SUBLW       100
L__sub_tune584:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R3, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_sub_tune110
;main.h,422 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune110:
;main.h,423 :: 		swr_mem = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       sub_tune_swr_mem_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       sub_tune_swr_mem_L0+1 
;main.h,424 :: 		ind_mem = ind;
	MOVF        main_ind+0, 0 
	MOVWF       sub_tune_ind_mem_L0+0 
	MOVLW       0
	MOVWF       sub_tune_ind_mem_L0+1 
;main.h,425 :: 		cap_mem = cap;
	MOVF        main_cap+0, 0 
	MOVWF       sub_tune_cap_mem_L0+0 
	MOVLW       0
	MOVWF       sub_tune_cap_mem_L0+1 
;main.h,427 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune111
;main.h,428 :: 		SW = 0;
	CLRF        main_SW+0 
	GOTO        L_sub_tune112
L_sub_tune111:
;main.h,430 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
L_sub_tune112:
;main.h,431 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,432 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.h,433 :: 		Delay_ms(50);
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
;main.h,434 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,435 :: 		if (SWR < 120)
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
	GOTO        L_sub_tune114
;main.h,436 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune114:
;main.h,438 :: 		coarse_tune();
	CALL        _coarse_tune+0, 0
;main.h,439 :: 		if (SWR == 0) {
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune586
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune586:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune115
;main.h,440 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,441 :: 		return;
	GOTO        L_end_sub_tune
;main.h,442 :: 		}
L_sub_tune115:
;main.h,443 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,444 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune587
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__sub_tune587:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune116
;main.h,445 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune116:
;main.h,446 :: 		sharp_ind();
	CALL        _sharp_ind+0, 0
;main.h,447 :: 		if (SWR == 0) {
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune588
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune588:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune117
;main.h,448 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,449 :: 		return;
	GOTO        L_end_sub_tune
;main.h,450 :: 		}
L_sub_tune117:
;main.h,451 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,452 :: 		if (SWR < 120)
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
	GOTO        L_sub_tune118
;main.h,453 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune118:
;main.h,454 :: 		sharp_cap();
	CALL        _sharp_cap+0, 0
;main.h,455 :: 		if (SWR == 0) {
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune590
	MOVLW       0
	XORWF       _SWR+0, 0 
L__sub_tune590:
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune119
;main.h,456 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,457 :: 		return;
	GOTO        L_end_sub_tune
;main.h,458 :: 		}
L_sub_tune119:
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
	GOTO        L_sub_tune120
;main.h,461 :: 		return;
	GOTO        L_end_sub_tune
L_sub_tune120:
;main.h,463 :: 		if (SWR > swr_mem) {
	MOVLW       128
	XORWF       sub_tune_swr_mem_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__sub_tune592
	MOVF        _SWR+0, 0 
	SUBWF       sub_tune_swr_mem_L0+0, 0 
L__sub_tune592:
	BTFSC       STATUS+0, 0 
	GOTO        L_sub_tune121
;main.h,464 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_sub_tune122
;main.h,465 :: 		SW = 0;
	CLRF        main_SW+0 
	GOTO        L_sub_tune123
L_sub_tune122:
;main.h,467 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
L_sub_tune123:
;main.h,468 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.h,469 :: 		ind = ind_mem;
	MOVF        sub_tune_ind_mem_L0+0, 0 
	MOVWF       main_ind+0 
;main.h,470 :: 		cap = cap_mem;
	MOVF        sub_tune_cap_mem_L0+0, 0 
	MOVWF       main_cap+0 
;main.h,471 :: 		set_ind(ind);
	MOVF        sub_tune_ind_mem_L0+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.h,472 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.h,473 :: 		SWR = swr_mem;
	MOVF        sub_tune_swr_mem_L0+0, 0 
	MOVWF       _SWR+0 
	MOVF        sub_tune_swr_mem_L0+1, 0 
	MOVWF       _SWR+1 
;main.h,474 :: 		}
L_sub_tune121:
;main.h,476 :: 		asm CLRWDT;
	CLRWDT
;main.h,477 :: 		return;
;main.h,478 :: 		}
L_end_sub_tune:
	RETURN      0
; end of _sub_tune

_tune:

;main.h,480 :: 		void tune()
;main.h,484 :: 		asm CLRWDT;
	CLRWDT
;main.h,486 :: 		p_cnt = 0;
	CLRF        _p_cnt+0 
;main.h,487 :: 		P_max = 0;
	CLRF        _P_max+0 
	CLRF        _P_max+1 
;main.h,489 :: 		rready = 0;
	CLRF        _rready+0 
;main.h,490 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,491 :: 		if (SWR < 110)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune594
	MOVLW       110
	SUBWF       _SWR+0, 0 
L__tune594:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune124
;main.h,492 :: 		return;
	GOTO        L_end_tune
L_tune124:
;main.h,493 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,494 :: 		if (Loss_ind == 0)
	MOVF        main_Loss_ind+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_tune125
;main.h,495 :: 		lcd_ind();                // wyświetlenie wartości L i C
	CALL        _lcd_ind+0, 0
L_tune125:
;main.h,496 :: 		Delay_ms(50);
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
;main.h,497 :: 		get_swr();
	CALL        _get_swr+0, 0
;main.h,498 :: 		swr_a = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       _swr_a+0 
	MOVF        _SWR+1, 0 
	MOVWF       _swr_a+1 
;main.h,499 :: 		if (SWR < 110)
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
	GOTO        L_tune127
;main.h,500 :: 		return;
	GOTO        L_end_tune
L_tune127:
;main.h,501 :: 		if (max_swr > 110 & SWR > max_swr)        // max_swr - zawartość komórki 9 (domyślnie 0)
	MOVLW       128
	MOVWF       R1 
	MOVLW       128
	XORWF       main_max_swr+1, 0 
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune596
	MOVF        main_max_swr+0, 0 
	SUBLW       110
L__tune596:
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
	GOTO        L__tune597
	MOVF        _SWR+0, 0 
	SUBWF       main_max_swr+0, 0 
L__tune597:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_tune128
;main.h,502 :: 		return;
	GOTO        L_end_tune
L_tune128:
;main.h,505 :: 		sub_tune();
	CALL        _sub_tune+0, 0
;main.h,506 :: 		if (SWR == 0)
	MOVLW       0
	XORWF       _SWR+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune598
	MOVLW       0
	XORWF       _SWR+0, 0 
L__tune598:
	BTFSS       STATUS+0, 2 
	GOTO        L_tune129
;main.h,508 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.h,509 :: 		return;
	GOTO        L_end_tune
;main.h,510 :: 		}
L_tune129:
;main.h,511 :: 		if (SWR < 120)
	MOVLW       128
	XORWF       _SWR+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__tune599
	MOVLW       120
	SUBWF       _SWR+0, 0 
L__tune599:
	BTFSC       STATUS+0, 0 
	GOTO        L_tune130
;main.h,512 :: 		return;
	GOTO        L_end_tune
L_tune130:
;main.h,513 :: 		if (C_q == 5 & L_q == 5)
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
;main.h,514 :: 		return;
	GOTO        L_end_tune
L_tune131:
;main.h,516 :: 		if (L_q > 5) {
	MOVF        main_L_q+0, 0 
	SUBLW       5
	BTFSC       STATUS+0, 0 
	GOTO        L_tune132
;main.h,517 :: 		step_ind = L_mult;
	MOVF        main_L_mult+0, 0 
	MOVWF       main_step_ind+0 
;main.h,518 :: 		L_mult = 1;
	MOVLW       1
	MOVWF       main_L_mult+0 
;main.h,519 :: 		sharp_ind();
	CALL        _sharp_ind+0, 0
;main.h,520 :: 		}
L_tune132:
;main.h,521 :: 		if (SWR < 120)
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
	GOTO        L_tune133
;main.h,522 :: 		return;
	GOTO        L_end_tune
L_tune133:
;main.h,523 :: 		if (C_q > 5) {
	MOVF        main_C_q+0, 0 
	SUBLW       5
	BTFSC       STATUS+0, 0 
	GOTO        L_tune134
;main.h,524 :: 		step_cap = C_mult; // = C_mult
	MOVF        main_C_mult+0, 0 
	MOVWF       main_step_cap+0 
;main.h,525 :: 		C_mult = 1;
	MOVLW       1
	MOVWF       main_C_mult+0 
;main.h,526 :: 		sharp_cap();
	CALL        _sharp_cap+0, 0
;main.h,527 :: 		}
L_tune134:
;main.h,528 :: 		if (L_q == 5)
	MOVF        main_L_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_tune135
;main.h,529 :: 		L_mult = 1;
	MOVLW       1
	MOVWF       main_L_mult+0 
	GOTO        L_tune136
L_tune135:
;main.h,530 :: 		else if (L_q == 6)
	MOVF        main_L_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_tune137
;main.h,531 :: 		L_mult = 2;
	MOVLW       2
	MOVWF       main_L_mult+0 
	GOTO        L_tune138
L_tune137:
;main.h,532 :: 		else if (L_q == 7)
	MOVF        main_L_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_tune139
;main.h,533 :: 		L_mult = 4;
	MOVLW       4
	MOVWF       main_L_mult+0 
L_tune139:
L_tune138:
L_tune136:
;main.h,534 :: 		if (C_q == 5)
	MOVF        main_C_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_tune140
;main.h,535 :: 		C_mult = 1;
	MOVLW       1
	MOVWF       main_C_mult+0 
	GOTO        L_tune141
L_tune140:
;main.h,536 :: 		else if (C_q == 6)
	MOVF        main_C_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_tune142
;main.h,537 :: 		C_mult = 2;
	MOVLW       2
	MOVWF       main_C_mult+0 
	GOTO        L_tune143
L_tune142:
;main.h,538 :: 		else if (C_q == 7)
	MOVF        main_C_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_tune144
;main.h,539 :: 		C_mult = 4;
	MOVLW       4
	MOVWF       main_C_mult+0 
L_tune144:
L_tune143:
L_tune141:
;main.h,540 :: 		asm CLRWDT;
	CLRWDT
;main.h,541 :: 		return;
;main.h,542 :: 		}
L_end_tune:
	RETURN      0
; end of _tune

_main:

;main.c,33 :: 		void main() {
;main.c,35 :: 		if (RCON.B3 == 0)
	BTFSC       RCON+0, 3 
	GOTO        L_main145
;main.c,36 :: 		Restart = 1;
	MOVLW       1
	MOVWF       _Restart+0 
L_main145:
;main.c,37 :: 		pic_init();
	CALL        _pic_init+0, 0
;main.c,39 :: 		Delay_ms(300);
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
;main.c,40 :: 		asm CLRWDT;
	CLRWDT
;main.c,41 :: 		cells_init();
	CALL        _cells_init+0, 0
;main.c,42 :: 		Soft_I2C_Init();
	CALL        _Soft_I2C_Init+0, 0
;main.c,43 :: 		if (type == 0) { // 2-colors led  reset
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main147
;main.c,44 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,45 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,46 :: 		}
L_main147:
;main.c,47 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,49 :: 		Delay_ms(300);
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
;main.c,50 :: 		asm CLRWDT;
	CLRWDT
;main.c,51 :: 		if (PORTB.B1 == 0 & PORTB.B2 == 0) { // Test mode
	BTFSC       PORTB+0, 1 
	GOTO        L__main602
	BSF         R4, 0 
	GOTO        L__main603
L__main602:
	BCF         R4, 0 
L__main603:
	BTFSC       PORTB+0, 2 
	GOTO        L__main604
	BSF         STATUS+0, 0 
	GOTO        L__main605
L__main604:
	BCF         STATUS+0, 0 
L__main605:
	BTFSS       R4, 0 
	GOTO        L__main606
	BTFSS       STATUS+0, 0 
	GOTO        L__main606
	BSF         R4, 0 
	GOTO        L__main607
L__main606:
	BCF         R4, 0 
L__main607:
	BTFSS       R4, 0 
	GOTO        L_main149
;main.c,52 :: 		Test = 1;
	MOVLW       1
	MOVWF       _Test+0 
;main.c,53 :: 		Auto = 0;
	CLRF        _Auto+0 
;main.c,54 :: 		}
L_main149:
;main.c,55 :: 		if (L_q == 5)
	MOVF        main_L_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_main150
;main.c,56 :: 		L_mult = 1;
	MOVLW       1
	MOVWF       main_L_mult+0 
	GOTO        L_main151
L_main150:
;main.c,57 :: 		else if (L_q == 6)
	MOVF        main_L_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_main152
;main.c,58 :: 		L_mult = 2;
	MOVLW       2
	MOVWF       main_L_mult+0 
	GOTO        L_main153
L_main152:
;main.c,59 :: 		else if (L_q == 7)
	MOVF        main_L_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_main154
;main.c,60 :: 		L_mult = 4;
	MOVLW       4
	MOVWF       main_L_mult+0 
L_main154:
L_main153:
L_main151:
;main.c,61 :: 		if (C_q == 5)
	MOVF        main_C_q+0, 0 
	XORLW       5
	BTFSS       STATUS+0, 2 
	GOTO        L_main155
;main.c,62 :: 		C_mult = 1;
	MOVLW       1
	MOVWF       main_C_mult+0 
	GOTO        L_main156
L_main155:
;main.c,63 :: 		else if (C_q == 6)
	MOVF        main_C_q+0, 0 
	XORLW       6
	BTFSS       STATUS+0, 2 
	GOTO        L_main157
;main.c,64 :: 		C_mult = 2;
	MOVLW       2
	MOVWF       main_C_mult+0 
	GOTO        L_main158
L_main157:
;main.c,65 :: 		else if (C_q == 7)
	MOVF        main_C_q+0, 0 
	XORLW       7
	BTFSS       STATUS+0, 2 
	GOTO        L_main159
;main.c,66 :: 		C_mult = 4;
	MOVLW       4
	MOVWF       main_C_mult+0 
L_main159:
L_main158:
L_main156:
;main.c,68 :: 		Delay_ms(300);
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
;main.c,69 :: 		asm CLRWDT;
	CLRWDT
;main.c,70 :: 		led_init();
	CALL        _led_init+0, 0
;main.c,72 :: 		if (Button( & PORTB, 0, 100, 0)) { //  Fider loss input
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
;main.c,73 :: 		if (type == 4 | type == 5) {
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
;main.c,74 :: 		led_wr_str(0, 6, "Fider Loss", 10); // 128*64
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
;main.c,75 :: 		led_wr_str(2, 6, "input", 5);
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
;main.c,76 :: 		led_wr_str(4, 6 + 3 * 12, "dB", 2);
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
;main.c,77 :: 		} else if (type != 0) {
	GOTO        L_main163
L_main162:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_main164
;main.c,78 :: 		led_wr_str(0, 0, "Fider Loss input", 16); // 1602 | 128*32
	CLRF        FARG_led_wr_str+0 
	CLRF        FARG_led_wr_str+0 
	MOVLW       ?lstr4_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr4_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       16
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,79 :: 		led_wr_str(1, 3, "dB", 2);
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
;main.c,80 :: 		}
L_main164:
L_main163:
;main.c,81 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
	MOVLW       52
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Fid_loss+0 
;main.c,82 :: 		show_loss();
	CALL        _show_loss+0, 0
;main.c,84 :: 		while (1) {
L_main165:
;main.c,85 :: 		if (Button( & PORTB, 2, 50, 0)) { // BYP button
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
;main.c,86 :: 		if (Fid_loss < 99) {
	MOVLW       99
	SUBWF       _Fid_loss+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main168
;main.c,87 :: 		Fid_loss++;
	INCF        _Fid_loss+0, 1 
;main.c,88 :: 		show_loss();
	CALL        _show_loss+0, 0
;main.c,89 :: 		EEPROM_Write(0x34, Dec2Bcd(Fid_loss));
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_Dec2Bcd_decnum+0 
	CALL        _Dec2Bcd+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	MOVLW       52
	MOVWF       FARG_EEPROM_Write_address+0 
	CALL        _EEPROM_Write+0, 0
;main.c,90 :: 		}
L_main168:
;main.c,91 :: 		while (Button( & PORTB, 2, 50, 0)) asm CLRWDT;
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
;main.c,92 :: 		}
L_main167:
;main.c,94 :: 		if (Button( & PORTB, 1, 50, 0)) { // AUTO button
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
;main.c,95 :: 		if (Fid_loss > 0) {
	MOVF        _Fid_loss+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_main172
;main.c,96 :: 		Fid_loss--;
	DECF        _Fid_loss+0, 1 
;main.c,97 :: 		show_loss();
	CALL        _show_loss+0, 0
;main.c,98 :: 		EEPROM_Write(0x34, Dec2Bcd(Fid_loss));
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_Dec2Bcd_decnum+0 
	CALL        _Dec2Bcd+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	MOVLW       52
	MOVWF       FARG_EEPROM_Write_address+0 
	CALL        _EEPROM_Write+0, 0
;main.c,99 :: 		}
L_main172:
;main.c,100 :: 		while (Button( & PORTB, 1, 50, 0)) asm CLRWDT;
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
;main.c,101 :: 		}
L_main171:
;main.c,102 :: 		asm CLRWDT;
	CLRWDT
;main.c,103 :: 		}
	GOTO        L_main165
;main.c,105 :: 		} //  Fider loss input
L_main161:
;main.c,107 :: 		if (Test == 0) {
	MOVF        _Test+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main175
;main.c,116 :: 		read_i2c_inputs();
	CALL        _read_i2c_inputs+0, 0
;main.c,117 :: 		load_settings();
	CALL        _load_settings+0, 0
;main.c,118 :: 		if (Restart == 1)
	MOVF        _Restart+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main176
;main.c,119 :: 		lcd_prep_short = 1;
	MOVLW       1
	MOVWF       _lcd_prep_short+0 
L_main176:
;main.c,120 :: 		lcd_prep();
	CALL        _lcd_prep+0, 0
;main.c,121 :: 		} else
	GOTO        L_main177
L_main175:
;main.c,122 :: 		Test_init();
	CALL        _test_init+0, 0
L_main177:
;main.c,124 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,128 :: 		while (1)
L_main178:
;main.c,131 :: 		asm CLRWDT;
	CLRWDT
;main.c,132 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,134 :: 		if (Test == 0)
	MOVF        _Test+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main180
;main.c,136 :: 		button_proc();	// główna procedura
	CALL        _button_proc+0, 0
;main.c,137 :: 		} else {
	GOTO        L_main181
L_main180:
;main.c,138 :: 		button_proc_test();
	CALL        _button_proc_test+0, 0
;main.c,139 :: 		}
L_main181:
;main.c,142 :: 		if (dysp_cnt != 0)
	MOVLW       0
	XORWF       _dysp_cnt+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main608
	MOVLW       0
	XORWF       _dysp_cnt+0, 0 
L__main608:
	BTFSC       STATUS+0, 2 
	GOTO        L_main182
;main.c,143 :: 		dysp_cnt--;
	MOVLW       1
	SUBWF       _dysp_cnt+0, 1 
	MOVLW       0
	SUBWFB      _dysp_cnt+1, 1 
	GOTO        L_main183
L_main182:
;main.c,144 :: 		else if (Test == 0 & Dysp_delay != 0)
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
;main.c,145 :: 		dysp_off();
	CALL        _dysp_off+0, 0
L_main184:
L_main183:
;main.c,147 :: 		offset = mem_offset;
	MOVF        _mem_offset+0, 0 
	MOVWF       main_offset_L0+0 
;main.c,148 :: 		read_i2c_inputs();
	CALL        _read_i2c_inputs+0, 0
;main.c,150 :: 		if (offset != mem_offset) {
	MOVF        main_offset_L0+0, 0 
	XORWF       _mem_offset+0, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L_main185
;main.c,151 :: 		load_settings();
	CALL        _load_settings+0, 0
;main.c,152 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,153 :: 		}
L_main185:
;main.c,158 :: 		}
	GOTO        L_main178
;main.c,159 :: 		}
L_end_main:
	GOTO        $+0
; end of _main

_button_proc_test:

;main.c,163 :: 		void button_proc_test(void) {
;main.c,164 :: 		if (Button( & PORTB, 0, 50, 0)) { // Tune btn
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
;main.c,165 :: 		Delay_ms(250);
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
;main.c,166 :: 		asm CLRWDT;
	CLRWDT
;main.c,167 :: 		if (PORTB.B0 == 1) { // short press button
	BTFSS       PORTB+0, 0 
	GOTO        L_button_proc_test188
;main.c,168 :: 		if (SW == 0)
	MOVF        main_SW+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc_test189
;main.c,169 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
	GOTO        L_button_proc_test190
L_button_proc_test189:
;main.c,171 :: 		SW = 0;
	CLRF        main_SW+0 
L_button_proc_test190:
;main.c,172 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,173 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,174 :: 		} else { // long press button
	GOTO        L_button_proc_test191
L_button_proc_test188:
;main.c,175 :: 		if (L == 1)
	MOVF        _L+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc_test192
;main.c,176 :: 		L = 0;
	CLRF        _L+0 
	GOTO        L_button_proc_test193
L_button_proc_test192:
;main.c,178 :: 		L = 1;
	MOVLW       1
	MOVWF       _L+0 
L_button_proc_test193:
;main.c,179 :: 		if (L == 1) {
	MOVF        _L+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc_test194
;main.c,180 :: 		if (type == 4 | type == 5) // 128*64 OLED
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
;main.c,181 :: 		led_wr_str(0, 16 + 12 * 8, "l", 1);
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
;main.c,182 :: 		else if (type != 0) // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test197
;main.c,183 :: 		led_wr_str(0, 8, "l", 1);
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
;main.c,184 :: 		} else {
	GOTO        L_button_proc_test198
L_button_proc_test194:
;main.c,185 :: 		if (type == 4 | type == 5) // 128*64 OLED
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
;main.c,186 :: 		led_wr_str(0, 16 + 12 * 8, "c", 1);
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
;main.c,187 :: 		else if (type != 0) // 1602 LCD & 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test201
;main.c,188 :: 		led_wr_str(0, 8, "c", 1);
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
;main.c,189 :: 		}
L_button_proc_test198:
;main.c,190 :: 		}
L_button_proc_test191:
;main.c,191 :: 		while (Button( & PORTB, 0, 50, 0)) {
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
;main.c,192 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,193 :: 		asm CLRWDT;
	CLRWDT
;main.c,194 :: 		}
	GOTO        L_button_proc_test202
L_button_proc_test203:
;main.c,195 :: 		} // END Tune btn
L_button_proc_test186:
;main.c,197 :: 		if (Button( & PORTB, 2, 50, 0)) { // BYP button
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
;main.c,198 :: 		asm CLRWDT;
	CLRWDT
;main.c,199 :: 		while (PORTB.B2 == 0) {
L_button_proc_test205:
	BTFSC       PORTB+0, 2 
	GOTO        L_button_proc_test206
;main.c,200 :: 		if (L & ind < 32 * L_mult - 1) {
	MOVLW       5
	MOVWF       R2 
	MOVF        main_L_mult+0, 0 
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__button_proc_test610:
	BZ          L__button_proc_test611
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__button_proc_test610
L__button_proc_test611:
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
	GOTO        L__button_proc_test612
	MOVF        R2, 0 
	SUBWF       main_ind+0, 0 
L__button_proc_test612:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        _L+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test207
;main.c,201 :: 		ind++;
	INCF        main_ind+0, 1 
;main.c,202 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,203 :: 		} else if (!L & cap < 32 * L_mult - 1) {
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
L__button_proc_test613:
	BZ          L__button_proc_test614
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__button_proc_test613
L__button_proc_test614:
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
	GOTO        L__button_proc_test615
	MOVF        R2, 0 
	SUBWF       main_cap+0, 0 
L__button_proc_test615:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R4, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc_test209
;main.c,204 :: 		cap++;
	INCF        main_cap+0, 1 
;main.c,205 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,206 :: 		}
L_button_proc_test209:
L_button_proc_test208:
;main.c,207 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,208 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,209 :: 		Delay_ms(30);
	MOVLW       156
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_button_proc_test210:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc_test210
	DECFSZ      R12, 1, 1
	BRA         L_button_proc_test210
;main.c,210 :: 		asm CLRWDT;
	CLRWDT
;main.c,211 :: 		}
	GOTO        L_button_proc_test205
L_button_proc_test206:
;main.c,212 :: 		} // end of BYP button
L_button_proc_test204:
;main.c,214 :: 		if (Button( & PORTB, 1, 50, 0) & Bypas == 0) { // Auto button
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
;main.c,215 :: 		asm CLRWDT;
	CLRWDT
;main.c,216 :: 		while (PORTB.B1 == 0) {
L_button_proc_test212:
	BTFSC       PORTB+0, 1 
	GOTO        L_button_proc_test213
;main.c,217 :: 		if (L & ind > 0) {
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
;main.c,218 :: 		ind--;
	DECF        main_ind+0, 1 
;main.c,219 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,220 :: 		} else if (!L & cap > 0) {
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
;main.c,221 :: 		cap--;
	DECF        main_cap+0, 1 
;main.c,222 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,223 :: 		}
L_button_proc_test216:
L_button_proc_test215:
;main.c,224 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,225 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,226 :: 		Delay_ms(30);
	MOVLW       156
	MOVWF       R12, 0
	MOVLW       215
	MOVWF       R13, 0
L_button_proc_test217:
	DECFSZ      R13, 1, 1
	BRA         L_button_proc_test217
	DECFSZ      R12, 1, 1
	BRA         L_button_proc_test217
;main.c,227 :: 		asm CLRWDT;
	CLRWDT
;main.c,228 :: 		}
	GOTO        L_button_proc_test212
L_button_proc_test213:
;main.c,229 :: 		}
L_button_proc_test211:
;main.c,230 :: 		return;
;main.c,231 :: 		}
L_end_button_proc_test:
	RETURN      0
; end of _button_proc_test

_button_proc:

;main.c,233 :: 		void button_proc(void) {
;main.c,234 :: 		if (Button( & PORTB, 0, 50, 0) | Soft_tune) {
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
;main.c,235 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,236 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,237 :: 		Delay_ms(250);
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
;main.c,238 :: 		asm CLRWDT;
	CLRWDT
;main.c,239 :: 		if (Soft_tune == 0 & PORTB.B0 == 1) { // short press button
	MOVF        _Soft_tune+0, 0 
	XORLW       0
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R1 
	BTFSC       PORTB+0, 0 
	GOTO        L__button_proc617
	BCF         STATUS+0, 0 
	GOTO        L__button_proc618
L__button_proc617:
	BSF         STATUS+0, 0 
L__button_proc618:
	CLRF        R0 
	BTFSC       STATUS+0, 0 
	INCF        R0, 1 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc220
;main.c,240 :: 		show_reset();
	CALL        _show_reset+0, 0
;main.c,241 :: 		bypas = 0;
	CLRF        _bypas+0 
;main.c,242 :: 		} else { // long press button
	GOTO        L_button_proc221
L_button_proc220:
;main.c,244 :: 		n_Tx = 0; // TX request
	BCF         LATA6_bit+0, BitPos(LATA6_bit+0) 
;main.c,245 :: 		Delay_ms(250); //
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
;main.c,246 :: 		btn_push();
	CALL        _btn_push+0, 0
;main.c,247 :: 		bypas = 0;
	CLRF        _bypas+0 
;main.c,248 :: 		while (Button( & PORTB, 0, 50, 0)) {
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
;main.c,249 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,250 :: 		asm CLRWDT;
	CLRWDT
;main.c,251 :: 		}
	GOTO        L_button_proc223
L_button_proc224:
;main.c,252 :: 		Soft_tune = 0;
	CLRF        _Soft_tune+0 
;main.c,253 :: 		}
L_button_proc221:
;main.c,255 :: 		}
L_button_proc218:
;main.c,257 :: 		if (Button( & PORTB, 2, 50, 0)) { // BYP button
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
;main.c,258 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,259 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,260 :: 		asm CLRWDT;
	CLRWDT
;main.c,261 :: 		if (bypas == 0) {
	MOVF        _bypas+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc226
;main.c,262 :: 		bypas = 1;
	MOVLW       1
	MOVWF       _bypas+0 
;main.c,263 :: 		cap_mem = cap;
	MOVF        main_cap+0, 0 
	MOVWF       _cap_mem+0 
;main.c,264 :: 		ind_mem = ind;
	MOVF        main_ind+0, 0 
	MOVWF       _ind_mem+0 
;main.c,265 :: 		SW_mem = SW;
	MOVF        main_SW+0, 0 
	MOVWF       _SW_mem+0 
;main.c,266 :: 		cap = 0;
	CLRF        main_cap+0 
;main.c,267 :: 		ind = 0;
	CLRF        main_ind+0 
;main.c,268 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,269 :: 		set_ind(ind);
	CLRF        FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,270 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,271 :: 		set_SW(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,272 :: 		if (Loss_mode == 0)
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc227
;main.c,273 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
L_button_proc227:
;main.c,274 :: 		Auto_mem = Auto;
	MOVF        _Auto+0, 0 
	MOVWF       _Auto_mem+0 
;main.c,275 :: 		Auto = 0;
	CLRF        _Auto+0 
;main.c,276 :: 		} else {
	GOTO        L_button_proc228
L_button_proc226:
;main.c,277 :: 		bypas = 0;
	CLRF        _bypas+0 
;main.c,278 :: 		cap = cap_mem;
	MOVF        _cap_mem+0, 0 
	MOVWF       main_cap+0 
;main.c,279 :: 		ind = ind_mem;
	MOVF        _ind_mem+0, 0 
	MOVWF       main_ind+0 
;main.c,280 :: 		SW = SW_mem;
	MOVF        _SW_mem+0, 0 
	MOVWF       main_SW+0 
;main.c,281 :: 		set_cap(cap);
	MOVF        _cap_mem+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,282 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,283 :: 		set_SW(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,284 :: 		if (Loss_mode == 0)
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc229
;main.c,285 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
L_button_proc229:
;main.c,286 :: 		Auto = Auto_mem;
	MOVF        _Auto_mem+0, 0 
	MOVWF       _Auto+0 
;main.c,287 :: 		}
L_button_proc228:
;main.c,288 :: 		if (type == 4 | type == 5) { // 128*64 OLED
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
;main.c,289 :: 		if (Auto & !Bypas)
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc231
;main.c,290 :: 		led_wr_str(0, 16 + 8 * 12, ".", 1);
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
;main.c,291 :: 		else if (!Auto & Bypas)
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc233
;main.c,292 :: 		led_wr_str(0, 16 + 8 * 12, "_", 1);
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
;main.c,294 :: 		led_wr_str(0, 16 + 8 * 12, " ", 1);
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
;main.c,295 :: 		} else if (type != 0) { //  1602 LCD  or 128*32 OLED
	GOTO        L_button_proc235
L_button_proc230:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc236
;main.c,296 :: 		if (Auto & !Bypas)
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc237
;main.c,297 :: 		led_wr_str(0, 8, ".", 1);
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
;main.c,298 :: 		else if (!Auto & Bypas)
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc239
;main.c,299 :: 		led_wr_str(0, 8, "_", 1);
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
;main.c,301 :: 		led_wr_str(0, 8, " ", 1);
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
;main.c,302 :: 		}
L_button_proc236:
L_button_proc235:
;main.c,303 :: 		asm CLRWDT;
	CLRWDT
;main.c,304 :: 		while (Button( & PORTB, 2, 50, 0)) {
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
;main.c,305 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,306 :: 		asm CLRWDT;
	CLRWDT
;main.c,307 :: 		}
	GOTO        L_button_proc241
L_button_proc242:
;main.c,308 :: 		}
L_button_proc225:
;main.c,310 :: 		if (Button( & PORTB, 1, 50, 0) & Bypas == 0) { // Auto button
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
;main.c,311 :: 		dysp_on();
	CALL        _dysp_on+0, 0
;main.c,312 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,313 :: 		asm CLRWDT;
	CLRWDT
;main.c,314 :: 		if (Auto == 0)
	MOVF        _Auto+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_button_proc244
;main.c,315 :: 		Auto = 1;
	MOVLW       1
	MOVWF       _Auto+0 
	GOTO        L_button_proc245
L_button_proc244:
;main.c,317 :: 		Auto = 0;
	CLRF        _Auto+0 
L_button_proc245:
;main.c,318 :: 		EEPROM_Write(2, Auto);
	MOVLW       2
	MOVWF       FARG_EEPROM_Write_address+0 
	MOVF        _Auto+0, 0 
	MOVWF       FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,319 :: 		if (type == 4 | type == 5) { // 128*64 OLED
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
;main.c,320 :: 		if (Auto & !Bypas)
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc247
;main.c,321 :: 		led_wr_str(0, 16 + 8 * 12, ".", 1);
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
;main.c,322 :: 		else if (!Auto & Bypas)
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc249
;main.c,323 :: 		led_wr_str(0, 16 + 8 * 12, "_", 1);
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
;main.c,325 :: 		led_wr_str(0, 16 + 8 * 12, " ", 1);
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
;main.c,326 :: 		} else if (type != 0) { //  1602 LCD  or 128*32 OLED
	GOTO        L_button_proc251
L_button_proc246:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc252
;main.c,327 :: 		if (Auto & !Bypas)
	MOVF        _bypas+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _Auto+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc253
;main.c,328 :: 		led_wr_str(0, 8, ".", 1);
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
;main.c,329 :: 		else if (!Auto & Bypas)
	MOVF        _Auto+0, 1 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        _bypas+0, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_button_proc255
;main.c,330 :: 		led_wr_str(0, 8, "_", 1);
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
;main.c,332 :: 		led_wr_str(0, 8, " ", 1);
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
;main.c,333 :: 		}
L_button_proc252:
L_button_proc251:
;main.c,334 :: 		asm CLRWDT;
	CLRWDT
;main.c,335 :: 		while (Button( & PORTB, 1, 50, 0)) {
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
;main.c,336 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,337 :: 		asm CLRWDT;
	CLRWDT
;main.c,338 :: 		}
	GOTO        L_button_proc257
L_button_proc258:
;main.c,339 :: 		}
L_button_proc243:
;main.c,340 :: 		return;
;main.c,341 :: 		}
L_end_button_proc:
	RETURN      0
; end of _button_proc

_show_reset:

;main.c,343 :: 		void show_reset() {
;main.c,344 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.c,345 :: 		SW = 1;
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,346 :: 		set_sw(SW);
	MOVLW       1
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,347 :: 		EEPROM_Write(255 - mem_offset * 5, 0);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       255
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,348 :: 		EEPROM_Write(254 - mem_offset * 5, 0);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       254
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,349 :: 		EEPROM_Write(253 - mem_offset * 5, 1);
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
;main.c,350 :: 		EEPROM_Write(252 - mem_offset * 5, 0);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       252
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,351 :: 		EEPROM_Write(251 - mem_offset * 5, 0);
	MOVLW       5
	MULWF       _mem_offset+0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	SUBLW       251
	MOVWF       FARG_EEPROM_Write_address+0 
	CLRF        FARG_EEPROM_Write_data_+0 
	CALL        _EEPROM_Write+0, 0
;main.c,352 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,353 :: 		Loss_mode = 0;
	CLRF        _Loss_mode+0 
;main.c,355 :: 		n_Tx = 1;
	BSF         LATA6_bit+0, BitPos(LATA6_bit+0) 
;main.c,356 :: 		SWR = 0;
	CLRF        _SWR+0 
	CLRF        _SWR+1 
;main.c,357 :: 		PWR = 0;
	CLRF        _PWR+0 
	CLRF        _PWR+1 
;main.c,358 :: 		SWR_fixed_old = 0;
	CLRF        _SWR_fixed_old+0 
	CLRF        _SWR_fixed_old+1 
;main.c,359 :: 		if (type == 4 | type == 5) { // 128*64 OLED
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
;main.c,360 :: 		led_wr_str(2, 16, "RESET   ", 8);
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
;main.c,361 :: 		asm CLRWDT;
	CLRWDT
;main.c,362 :: 		delay_ms(600);
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
;main.c,363 :: 		led_wr_str(2, 16, "SWR=0.00", 8);
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
;main.c,364 :: 		asm CLRWDT;
	CLRWDT
;main.c,365 :: 		} else if (type != 0) { // 1602 LCD & 128*32 OLED
	GOTO        L_show_reset261
L_show_reset259:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_reset262
;main.c,366 :: 		led_wr_str(1, 0, "RESET   ", 8);
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
;main.c,367 :: 		asm CLRWDT;
	CLRWDT
;main.c,368 :: 		delay_ms(600);
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
;main.c,369 :: 		led_wr_str(1, 0, "SWR=0.00", 8);
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
;main.c,370 :: 		asm CLRWDT;
	CLRWDT
;main.c,371 :: 		} else {
	GOTO        L_show_reset264
L_show_reset262:
;main.c,372 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,373 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,374 :: 		}
L_show_reset264:
L_show_reset261:
;main.c,375 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,376 :: 		Power_old = 10000;
	MOVLW       16
	MOVWF       _Power_old+0 
	MOVLW       39
	MOVWF       _Power_old+1 
;main.c,377 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,378 :: 		return;
;main.c,379 :: 		}
L_end_show_reset:
	RETURN      0
; end of _show_reset

_btn_push:

;main.c,381 :: 		void btn_push() {
;main.c,382 :: 		asm CLRWDT;
	CLRWDT
;main.c,383 :: 		if (type == 4 | type == 5) { // 128*64 OLED
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
;main.c,384 :: 		led_wr_str(2, 16 + 12 * 4, "TUNE", 4);
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
;main.c,385 :: 		} else if (type != 0) { // 1602 LCD & 128*32 OLED
	GOTO        L_btn_push266
L_btn_push265:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_btn_push267
;main.c,386 :: 		led_wr_str(1, 4, "TUNE", 4);
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
;main.c,387 :: 		} else {
	GOTO        L_btn_push268
L_btn_push267:
;main.c,388 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,389 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,390 :: 		}
L_btn_push268:
L_btn_push266:
;main.c,391 :: 		tune();
	CALL        _tune+0, 0
;main.c,392 :: 		if (type == 0) { // real-time 2-colors led work
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_btn_push269
;main.c,393 :: 		if (swr <= 150) {
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__btn_push621
	MOVF        _SWR+0, 0 
	SUBLW       150
L__btn_push621:
	BTFSS       STATUS+0, 0 
	GOTO        L_btn_push270
;main.c,394 :: 		LATB.B6 = 0;
	BCF         LATB+0, 6 
;main.c,395 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,396 :: 		} // Green
	GOTO        L_btn_push271
L_btn_push270:
;main.c,397 :: 		else if (swr <= 250) {
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _SWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__btn_push622
	MOVF        _SWR+0, 0 
	SUBLW       250
L__btn_push622:
	BTFSS       STATUS+0, 0 
	GOTO        L_btn_push272
;main.c,398 :: 		PORTB.B6 = 0;
	BCF         PORTB+0, 6 
;main.c,399 :: 		PORTB.B7 = 0;
	BCF         PORTB+0, 7 
;main.c,400 :: 		} // Orange
	GOTO        L_btn_push273
L_btn_push272:
;main.c,402 :: 		PORTB.B6 = 1;
	BSF         PORTB+0, 6 
;main.c,403 :: 		PORTB.B7 = 0;
	BCF         PORTB+0, 7 
;main.c,404 :: 		} // Red
L_btn_push273:
L_btn_push271:
;main.c,405 :: 		} else if (Loss_mode == 0 | Loss_ind == 0)
	GOTO        L_btn_push274
L_btn_push269:
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
;main.c,406 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
L_btn_push275:
L_btn_push274:
;main.c,407 :: 		EEPROM_Write(255 - mem_offset * 5, cap);
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
;main.c,408 :: 		EEPROM_Write(254 - mem_offset * 5, ind);
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
;main.c,409 :: 		EEPROM_Write(253 - mem_offset * 5, SW);
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
;main.c,410 :: 		EEPROM_Write(252 - mem_offset * 5, swr_a / 256);
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
;main.c,411 :: 		EEPROM_Write(251 - mem_offset * 5, swr_a % 256);
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
;main.c,412 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,413 :: 		Power_old = 10000;
	MOVLW       16
	MOVWF       _Power_old+0 
	MOVLW       39
	MOVWF       _Power_old+1 
;main.c,414 :: 		lcd_pwr();
	CALL        _lcd_pwr+0, 0
;main.c,415 :: 		SWR_fixed_old = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       _SWR_fixed_old+0 
	MOVF        _SWR+1, 0 
	MOVWF       _SWR_fixed_old+1 
;main.c,417 :: 		n_Tx = 1;
	BSF         LATA6_bit+0, BitPos(LATA6_bit+0) 
;main.c,418 :: 		asm CLRWDT;
	CLRWDT
;main.c,419 :: 		return;
;main.c,420 :: 		}
L_end_btn_push:
	RETURN      0
; end of _btn_push

_lcd_prep:

;main.c,422 :: 		void lcd_prep() {
;main.c,423 :: 		asm CLRWDT;
	CLRWDT
;main.c,424 :: 		if (type == 4 | type == 5) { // 128*64 OLED
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
;main.c,425 :: 		if (lcd_prep_short == 0) {
	MOVF        _lcd_prep_short+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep277
;main.c,426 :: 		led_wr_str(0, 22, "ATU-100", 7);
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
;main.c,427 :: 		led_wr_str(2, 6, "EXT board", 9);
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
;main.c,428 :: 		led_wr_str(4, 16, "by N7DDC", 8);
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
;main.c,429 :: 		led_wr_str(6, 4, "FW ver 3.1", 10);
	MOVLW       6
	MOVWF       FARG_led_wr_str+0 
	MOVLW       4
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr31_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr31_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,430 :: 		asm CLRWDT;
	CLRWDT
;main.c,431 :: 		Delay_ms(600);
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
;main.c,432 :: 		asm CLRWDT;
	CLRWDT
;main.c,433 :: 		Delay_ms(500);
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
;main.c,434 :: 		asm CLRWDT;
	CLRWDT
;main.c,435 :: 		led_wr_str(0, 16, "        ", 8);
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
;main.c,436 :: 		led_wr_str(2, 4, "          ", 10);
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
;main.c,437 :: 		led_wr_str(4, 16, "        ", 8);
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
;main.c,438 :: 		led_wr_str(6, 4, "          ", 10);
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
;main.c,439 :: 		}
L_lcd_prep277:
;main.c,440 :: 		Delay_ms(150);
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
;main.c,441 :: 		if (P_High == 1)
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep281
;main.c,442 :: 		led_wr_str(0, 16, "PWR=  0W", 8);
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
;main.c,444 :: 		led_wr_str(0, 16, "PWR=0.0W", 8);
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
;main.c,445 :: 		led_wr_str(2, 16, "SWR=0.00", 8);
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
;main.c,446 :: 		if (Auto)
	MOVF        _Auto+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep283
;main.c,447 :: 		led_wr_str(0, 16 + 8 * 12, ".", 1);
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
;main.c,448 :: 		} else if (type != 0) { // 1602 LCD & 128*32 OLED
	GOTO        L_lcd_prep284
L_lcd_prep276:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep285
;main.c,449 :: 		if (lcd_prep_short == 0) {
	MOVF        _lcd_prep_short+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep286
;main.c,450 :: 		led_wr_str(0, 4, "ATU-100", 7);
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
;main.c,451 :: 		led_wr_str(1, 3, "EXT board", 9);
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
;main.c,452 :: 		asm CLRWDT;
	CLRWDT
;main.c,453 :: 		Delay_ms(700);
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
;main.c,454 :: 		asm CLRWDT;
	CLRWDT
;main.c,455 :: 		Delay_ms(500);
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
;main.c,456 :: 		asm CLRWDT;
	CLRWDT
;main.c,457 :: 		led_wr_str(0, 4, "by N7DDC", 8);
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
;main.c,458 :: 		led_wr_str(1, 3, "FW ver 3.1", 10);
	MOVLW       1
	MOVWF       FARG_led_wr_str+0 
	MOVLW       3
	MOVWF       FARG_led_wr_str+0 
	MOVLW       ?lstr43_main+0
	MOVWF       FARG_led_wr_str+0 
	MOVLW       hi_addr(?lstr43_main+0)
	MOVWF       FARG_led_wr_str+1 
	MOVLW       10
	MOVWF       FARG_led_wr_str+0 
	CALL        _led_wr_str+0, 0
;main.c,459 :: 		asm CLRWDT;
	CLRWDT
;main.c,460 :: 		Delay_ms(600);
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
;main.c,461 :: 		asm CLRWDT;
	CLRWDT
;main.c,462 :: 		Delay_ms(500);
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
;main.c,463 :: 		asm CLRWDT;
	CLRWDT
;main.c,464 :: 		led_wr_str(0, 4, "        ", 8);
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
;main.c,465 :: 		led_wr_str(1, 3, "          ", 10);
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
;main.c,466 :: 		}
L_lcd_prep286:
;main.c,467 :: 		Delay_ms(150);
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
;main.c,468 :: 		if (P_High == 1)
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_prep292
;main.c,469 :: 		led_wr_str(0, 0, "PWR=  0W", 8);
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
;main.c,471 :: 		led_wr_str(0, 0, "PWR=0.0W", 8);
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
;main.c,472 :: 		led_wr_str(1, 0, "SWR=0.00", 8);
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
;main.c,473 :: 		if (Auto)
	MOVF        _Auto+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_prep294
;main.c,474 :: 		led_wr_str(0, 8, ".", 1);
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
;main.c,475 :: 		}
L_lcd_prep285:
L_lcd_prep284:
;main.c,476 :: 		asm CLRWDT;
	CLRWDT
;main.c,477 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
;main.c,478 :: 		return;
;main.c,479 :: 		}
L_end_lcd_prep:
	RETURN      0
; end of _lcd_prep

_lcd_swr:

;main.c,481 :: 		void lcd_swr(int swr) {
;main.c,482 :: 		asm CLRWDT;
	CLRWDT
;main.c,483 :: 		if (swr != SWR_old) {
	MOVF        FARG_lcd_swr_swr+1, 0 
	XORWF       _SWR_old+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr625
	MOVF        _SWR_old+0, 0 
	XORWF       FARG_lcd_swr_swr+0, 0 
L__lcd_swr625:
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr295
;main.c,484 :: 		SWR_old = swr;
	MOVF        FARG_lcd_swr_swr+0, 0 
	MOVWF       _SWR_old+0 
	MOVF        FARG_lcd_swr_swr+1, 0 
	MOVWF       _SWR_old+1 
;main.c,485 :: 		if (swr == 1) { // Low power
	MOVLW       0
	XORWF       FARG_lcd_swr_swr+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr626
	MOVLW       1
	XORWF       FARG_lcd_swr_swr+0, 0 
L__lcd_swr626:
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr296
;main.c,486 :: 		if (type == 4 | type == 5)
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
;main.c,487 :: 		led_wr_str(2, 16 + 4 * 12, "0.00", 4); // 128*64 OLED
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
;main.c,488 :: 		else if (type != 0)
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr299
;main.c,489 :: 		led_wr_str(1, 4, "0.00", 4); // 1602  & 128*32 OLED
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
;main.c,490 :: 		else if (type == 0) { // real-time 2-colors led work
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr301
;main.c,491 :: 		LATB.B6 = 1;
	BSF         LATB+0, 6 
;main.c,492 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,493 :: 		}
L_lcd_swr301:
L_lcd_swr300:
L_lcd_swr298:
;main.c,494 :: 		SWR_old = 0;
	CLRF        _SWR_old+0 
	CLRF        _SWR_old+1 
;main.c,495 :: 		} else {
	GOTO        L_lcd_swr302
L_lcd_swr296:
;main.c,496 :: 		SWR_old = swr;
	MOVF        FARG_lcd_swr_swr+0, 0 
	MOVWF       _SWR_old+0 
	MOVF        FARG_lcd_swr_swr+1, 0 
	MOVWF       _SWR_old+1 
;main.c,497 :: 		IntToStr(swr, work_str);
	MOVF        FARG_lcd_swr_swr+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_lcd_swr_swr+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,498 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,499 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,500 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,501 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,502 :: 		if (type == 4 | type == 5)
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
;main.c,503 :: 		led_wr_str(2, 16 + 4 * 12, work_str_2, 4); // 128*64 OLED
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
;main.c,504 :: 		else if (type != 0)
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_swr305
;main.c,505 :: 		led_wr_str(1, 4, work_str_2, 4); // 1602  & 128*32
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
;main.c,506 :: 		else if (type == 0) { // real-time 2-colors led work
	MOVF        _type+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_swr307
;main.c,507 :: 		if (swr <= 150) {
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_lcd_swr_swr+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr627
	MOVF        FARG_lcd_swr_swr+0, 0 
	SUBLW       150
L__lcd_swr627:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_swr308
;main.c,508 :: 		LATB.B6 = 0;
	BCF         LATB+0, 6 
;main.c,509 :: 		LATB.B7 = 1;
	BSF         LATB+0, 7 
;main.c,510 :: 		} // Green
	GOTO        L_lcd_swr309
L_lcd_swr308:
;main.c,511 :: 		else if (swr <= 250) {
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_lcd_swr_swr+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_swr628
	MOVF        FARG_lcd_swr_swr+0, 0 
	SUBLW       250
L__lcd_swr628:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_swr310
;main.c,512 :: 		PORTB.B6 = 0;
	BCF         PORTB+0, 6 
;main.c,513 :: 		PORTB.B7 = 0;
	BCF         PORTB+0, 7 
;main.c,514 :: 		} // Orange
	GOTO        L_lcd_swr311
L_lcd_swr310:
;main.c,516 :: 		PORTB.B6 = 1;
	BSF         PORTB+0, 6 
;main.c,517 :: 		PORTB.B7 = 0;
	BCF         PORTB+0, 7 
;main.c,518 :: 		} // Red
L_lcd_swr311:
L_lcd_swr309:
;main.c,519 :: 		}
L_lcd_swr307:
L_lcd_swr306:
L_lcd_swr304:
;main.c,520 :: 		}
L_lcd_swr302:
;main.c,521 :: 		}
L_lcd_swr295:
;main.c,522 :: 		asm CLRWDT;
	CLRWDT
;main.c,523 :: 		return;
;main.c,524 :: 		}
L_end_lcd_swr:
	RETURN      0
; end of _lcd_swr

_button_delay:

;main.c,526 :: 		void button_delay() {
;main.c,527 :: 		if ((Button( & PORTB, 0, 25, 0)) | (Button( & PORTB, 1, 25, 0)) |
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
;main.c,528 :: 		(Button( & PORTB, 2, 25, 0))) {
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
;main.c,529 :: 		but = 1;
	MOVLW       1
	MOVWF       _but+0 
;main.c,530 :: 		}
L_button_delay312:
;main.c,531 :: 		return;
;main.c,532 :: 		}
L_end_button_delay:
	RETURN      0
; end of _button_delay

_show_pwr:

;main.c,534 :: 		void show_pwr(int Power, int SWR) {
;main.c,538 :: 		asm CLRWDT;
	CLRWDT
;main.c,540 :: 		if (Test == 0 & Loss_ind == 1 & SWR >= 100) {
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
	GOTO        L__show_pwr631
	MOVLW       100
	SUBWF       FARG_show_pwr_SWR+0, 0 
L__show_pwr631:
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
	ANDWF       R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr313
;main.c,541 :: 		if (Loss_mode == 0) { // prepare
	MOVF        _Loss_mode+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr314
;main.c,542 :: 		if (type == 4 | type == 5) { // 128*64 OLED
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
;main.c,543 :: 		if (P_High == 1)
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr316
;main.c,544 :: 		led_wr_str(4, 16, "ANT=  0W", 8);
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
;main.c,546 :: 		led_wr_str(4, 16, "ANT=0.0W", 8);
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
;main.c,547 :: 		led_wr_str(6, 16, "EFF=  0%", 8);
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
;main.c,548 :: 		} else if (type == 2 | type == 3) { // 128*32 OLED
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
;main.c,549 :: 		if (P_High == 1)
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr320
;main.c,550 :: 		led_wr_str(0, 9, "ANT=  0W", 8);
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
;main.c,552 :: 		led_wr_str(0, 9, "ANT=0.0W", 8);
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
;main.c,553 :: 		led_wr_str(1, 9, "EFF=  0%", 8);
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
;main.c,554 :: 		} else if (type == 1) { // 1602 LCD
	GOTO        L_show_pwr322
L_show_pwr319:
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr323
;main.c,555 :: 		if (P_High == 1)
	MOVF        main_P_High+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr324
;main.c,556 :: 		led_wr_str(0, 9, "AN=  0W", 7);
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
;main.c,558 :: 		led_wr_str(0, 9, "AN=0.0W", 7);
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
;main.c,559 :: 		led_wr_str(1, 9, "EFF= 0%", 7);
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
;main.c,560 :: 		}
L_show_pwr323:
L_show_pwr322:
L_show_pwr318:
;main.c,561 :: 		}
L_show_pwr314:
;main.c,562 :: 		Loss_mode = 1;
	MOVLW       1
	MOVWF       _Loss_mode+0 
;main.c,563 :: 		} else {
	GOTO        L_show_pwr326
L_show_pwr313:
;main.c,564 :: 		if (Loss_mode == 1)
	MOVF        _Loss_mode+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr327
;main.c,565 :: 		lcd_ind();
	CALL        _lcd_ind+0, 0
L_show_pwr327:
;main.c,566 :: 		Loss_mode = 0;
	CLRF        _Loss_mode+0 
;main.c,567 :: 		}
L_show_pwr326:
;main.c,568 :: 		asm CLRWDT;
	CLRWDT
;main.c,569 :: 		if (Power != Power_old) {
	MOVF        FARG_show_pwr_Power+1, 0 
	XORWF       _Power_old+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr632
	MOVF        _Power_old+0, 0 
	XORWF       FARG_show_pwr_Power+0, 0 
L__show_pwr632:
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr328
;main.c,570 :: 		Power_old = Power;
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       _Power_old+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       _Power_old+1 
;main.c,572 :: 		if (P_High == 0) {
	MOVF        main_P_High+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr329
;main.c,573 :: 		if (Power >= 100) { // > 10 W
	MOVLW       128
	XORWF       FARG_show_pwr_Power+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr633
	MOVLW       100
	SUBWF       FARG_show_pwr_Power+0, 0 
L__show_pwr633:
	BTFSS       STATUS+0, 0 
	GOTO        L_show_pwr330
;main.c,574 :: 		Power += 5; // rounding to 1 W
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
;main.c,575 :: 		IntToStr(Power, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,576 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,577 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,578 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,579 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,580 :: 		} else {
	GOTO        L_show_pwr331
L_show_pwr330:
;main.c,581 :: 		IntToStr(Power, work_str);
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,582 :: 		if (work_str[4] != ' ')
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr332
;main.c,583 :: 		work_str_2[0] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_pwr333
L_show_pwr332:
;main.c,585 :: 		work_str_2[0] = '0';
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_pwr333:
;main.c,586 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,587 :: 		if (work_str[5] != ' ')
	MOVF        _work_str+5, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr334
;main.c,588 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_show_pwr335
L_show_pwr334:
;main.c,590 :: 		work_str_2[2] = '0';
	MOVLW       48
	MOVWF       _work_str_2+2 
L_show_pwr335:
;main.c,591 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,592 :: 		}
L_show_pwr331:
;main.c,593 :: 		} else { // High Power
	GOTO        L_show_pwr336
L_show_pwr329:
;main.c,594 :: 		if (Power < 999) { // 0 - 1500 Watts
	MOVLW       128
	XORWF       FARG_show_pwr_Power+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr634
	MOVLW       231
	SUBWF       FARG_show_pwr_Power+0, 0 
L__show_pwr634:
	BTFSC       STATUS+0, 0 
	GOTO        L_show_pwr337
;main.c,595 :: 		IntToStr(Power, work_str);
	MOVF        FARG_show_pwr_Power+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        FARG_show_pwr_Power+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,596 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,597 :: 		work_str_2[1] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+1 
;main.c,598 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,599 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,600 :: 		} else {
	GOTO        L_show_pwr338
L_show_pwr337:
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
;main.c,602 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,603 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,604 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,605 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,606 :: 		}
L_show_pwr338:
;main.c,607 :: 		}
L_show_pwr336:
;main.c,608 :: 		if (type == 4 | type == 5)
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
;main.c,609 :: 		led_wr_str(0, 16 + 4 * 12, work_str_2, 4); // 128*64 OLED
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
;main.c,610 :: 		else if (type != 0)
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr341
;main.c,611 :: 		led_wr_str(0, 4, work_str_2, 4); // 1602  & 128*32
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
;main.c,613 :: 		asm CLRWDT;
	CLRWDT
;main.c,615 :: 		if (Loss_mode == 1) {
	MOVF        _Loss_mode+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr342
;main.c,616 :: 		if (ind == 0 & cap == 0)
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
;main.c,617 :: 		swr_a = SWR;
	MOVF        FARG_show_pwr_SWR+0, 0 
	MOVWF       _swr_a+0 
	MOVF        FARG_show_pwr_SWR+1, 0 
	MOVWF       _swr_a+1 
L_show_pwr343:
;main.c,618 :: 		a = 1.0 / ((swr_a / 100.0 + 100.0 / swr_a) * Fid_loss / 10.0 * 0.115 + 1.0); // Fider loss
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
;main.c,619 :: 		b = 4.0 / (2.0 + SWR / 100.0 + 100.0 / SWR); // SWR loss
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
;main.c,620 :: 		if (a >= 1.0)
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
;main.c,621 :: 		a = 1.0;
	MOVLW       0
	MOVWF       show_pwr_a_L0+0 
	MOVLW       0
	MOVWF       show_pwr_a_L0+1 
	MOVLW       0
	MOVWF       show_pwr_a_L0+2 
	MOVLW       127
	MOVWF       show_pwr_a_L0+3 
L_show_pwr344:
;main.c,622 :: 		if (b >= 1.0)
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
;main.c,623 :: 		b = 1.0;
	MOVLW       0
	MOVWF       show_pwr_b_L0+0 
	MOVLW       0
	MOVWF       show_pwr_b_L0+1 
	MOVLW       0
	MOVWF       show_pwr_b_L0+2 
	MOVLW       127
	MOVWF       show_pwr_b_L0+3 
L_show_pwr345:
;main.c,624 :: 		p_ant = Power * a * b;
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
;main.c,625 :: 		eff = a * b * 100;
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
;main.c,626 :: 		if (eff >= 100)
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
;main.c,627 :: 		eff = 99;
	MOVLW       0
	MOVWF       show_pwr_eff_L0+0 
	MOVLW       0
	MOVWF       show_pwr_eff_L0+1 
	MOVLW       70
	MOVWF       show_pwr_eff_L0+2 
	MOVLW       133
	MOVWF       show_pwr_eff_L0+3 
L_show_pwr346:
;main.c,629 :: 		if (P_High == 0) {
	MOVF        main_P_High+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr347
;main.c,630 :: 		if (p_ant >= 100) { // > 10 W
	MOVLW       128
	XORWF       show_pwr_p_ant_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr635
	MOVLW       100
	SUBWF       show_pwr_p_ant_L0+0, 0 
L__show_pwr635:
	BTFSS       STATUS+0, 0 
	GOTO        L_show_pwr348
;main.c,631 :: 		p_ant += 5; // rounding to 1 W
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
;main.c,632 :: 		IntToStr(p_ant, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,633 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,634 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,635 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,636 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,637 :: 		} else {
	GOTO        L_show_pwr349
L_show_pwr348:
;main.c,638 :: 		IntToStr(p_ant, work_str);
	MOVF        show_pwr_p_ant_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_p_ant_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,639 :: 		if (work_str[4] != ' ')
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr350
;main.c,640 :: 		work_str_2[0] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_pwr351
L_show_pwr350:
;main.c,642 :: 		work_str_2[0] = '0';
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_pwr351:
;main.c,643 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,644 :: 		if (work_str[5] != ' ')
	MOVF        _work_str+5, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_show_pwr352
;main.c,645 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_show_pwr353
L_show_pwr352:
;main.c,647 :: 		work_str_2[2] = '0';
	MOVLW       48
	MOVWF       _work_str_2+2 
L_show_pwr353:
;main.c,648 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,649 :: 		}
L_show_pwr349:
;main.c,650 :: 		} else { // High Power
	GOTO        L_show_pwr354
L_show_pwr347:
;main.c,651 :: 		if (p_ant < 999) { // 0 - 1500 Watts
	MOVLW       128
	XORWF       show_pwr_p_ant_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       3
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__show_pwr636
	MOVLW       231
	SUBWF       show_pwr_p_ant_L0+0, 0 
L__show_pwr636:
	BTFSC       STATUS+0, 0 
	GOTO        L_show_pwr355
;main.c,652 :: 		IntToStr(p_ant, work_str);
	MOVF        show_pwr_p_ant_L0+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        show_pwr_p_ant_L0+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,653 :: 		work_str_2[0] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+0 
;main.c,654 :: 		work_str_2[1] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+1 
;main.c,655 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,656 :: 		work_str_2[3] = 'W';
	MOVLW       87
	MOVWF       _work_str_2+3 
;main.c,657 :: 		} else {
	GOTO        L_show_pwr356
L_show_pwr355:
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
;main.c,659 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,660 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,661 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,662 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,663 :: 		}
L_show_pwr356:
;main.c,664 :: 		}
L_show_pwr354:
;main.c,665 :: 		if (type == 4 | type == 5)
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
;main.c,666 :: 		led_wr_str(4, 16 + 4 * 12, work_str_2, 4); // 128*64 OLED
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
;main.c,667 :: 		else if (type == 2 | type == 3)
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
;main.c,668 :: 		led_wr_str(0, 13, work_str_2, 4); // 128*32
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
;main.c,669 :: 		else if (type == 1)
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr361
;main.c,670 :: 		led_wr_str(0, 12, work_str_2, 4); // 1602
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
;main.c,672 :: 		IntToStr(eff, work_str);
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
;main.c,673 :: 		work_str_2[0] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
;main.c,674 :: 		work_str_2[1] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+1 
;main.c,675 :: 		if (type == 4 | type == 5)
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
;main.c,676 :: 		led_wr_str(6, 16 + 5 * 12, work_str_2, 2);
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
;main.c,677 :: 		else if (type == 2 | type == 3)
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
;main.c,678 :: 		led_wr_str(1, 14, work_str_2, 2);
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
;main.c,679 :: 		else if (type == 1)
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_show_pwr366
;main.c,680 :: 		led_wr_str(1, 13, work_str_2, 2);
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
;main.c,681 :: 		}
L_show_pwr342:
;main.c,682 :: 		}
L_show_pwr328:
;main.c,683 :: 		asm CLRWDT;
	CLRWDT
;main.c,684 :: 		return;
;main.c,685 :: 		}
L_end_show_pwr:
	RETURN      0
; end of _show_pwr

_lcd_pwr:

;main.c,687 :: 		void lcd_pwr() {
;main.c,688 :: 		int p = 0;
	CLRF        lcd_pwr_p_L0+0 
	CLRF        lcd_pwr_p_L0+1 
	MOVLW       1
	MOVWF       lcd_pwr_SWR_fixed_L0+0 
	MOVLW       0
	MOVWF       lcd_pwr_SWR_fixed_L0+1 
;main.c,694 :: 		delta = Auto_delta - 100;
	MOVLW       100
	SUBWF       _Auto_delta+0, 0 
	MOVWF       lcd_pwr_delta_L0+0 
	MOVLW       0
	SUBWFB      _Auto_delta+1, 0 
	MOVWF       lcd_pwr_delta_L0+1 
;main.c,695 :: 		PWR = 0;
	CLRF        _PWR+0 
	CLRF        _PWR+1 
;main.c,696 :: 		asm CLRWDT;
	CLRWDT
;main.c,698 :: 		cnt = 120;
	MOVLW       120
	MOVWF       lcd_pwr_cnt_L0+0 
;main.c,699 :: 		for (peak_cnt = 0; peak_cnt < cnt; peak_cnt++) {
	CLRF        lcd_pwr_peak_cnt_L0+0 
L_lcd_pwr367:
	MOVF        lcd_pwr_cnt_L0+0, 0 
	SUBWF       lcd_pwr_peak_cnt_L0+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_pwr368
;main.c,700 :: 		if (PORTB.B1 == 0 | PORTB.B2 == 0 | PORTB.B0 == 0) {
	BTFSC       PORTB+0, 1 
	GOTO        L__lcd_pwr638
	BSF         R6, 0 
	GOTO        L__lcd_pwr639
L__lcd_pwr638:
	BCF         R6, 0 
L__lcd_pwr639:
	BTFSC       PORTB+0, 2 
	GOTO        L__lcd_pwr640
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr641
L__lcd_pwr640:
	BCF         STATUS+0, 0 
L__lcd_pwr641:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr642
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr642
	BCF         R6, 0 
	GOTO        L__lcd_pwr643
L__lcd_pwr642:
	BSF         R6, 0 
L__lcd_pwr643:
	BTFSC       PORTB+0, 0 
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
	BTFSS       R6, 0 
	GOTO        L_lcd_pwr370
;main.c,701 :: 		button_delay();
	CALL        _button_delay+0, 0
;main.c,702 :: 		if (but == 1) {
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr371
;main.c,703 :: 		but = 0;
	CLRF        _but+0 
;main.c,704 :: 		return;
	GOTO        L_end_lcd_pwr
;main.c,705 :: 		}
L_lcd_pwr371:
;main.c,706 :: 		}
L_lcd_pwr370:
;main.c,707 :: 		get_pwr();
	CALL        _get_pwr+0, 0
;main.c,708 :: 		if (PWR > p) {
	MOVLW       128
	XORWF       lcd_pwr_p_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _PWR+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr648
	MOVF        _PWR+0, 0 
	SUBWF       lcd_pwr_p_L0+0, 0 
L__lcd_pwr648:
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_pwr372
;main.c,709 :: 		p = PWR;
	MOVF        _PWR+0, 0 
	MOVWF       lcd_pwr_p_L0+0 
	MOVF        _PWR+1, 0 
	MOVWF       lcd_pwr_p_L0+1 
;main.c,710 :: 		SWR_fixed = SWR;
	MOVF        _SWR+0, 0 
	MOVWF       lcd_pwr_SWR_fixed_L0+0 
	MOVF        _SWR+1, 0 
	MOVWF       lcd_pwr_SWR_fixed_L0+1 
;main.c,711 :: 		}
L_lcd_pwr372:
;main.c,712 :: 		Delay_ms(3);
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
;main.c,699 :: 		for (peak_cnt = 0; peak_cnt < cnt; peak_cnt++) {
	INCF        lcd_pwr_peak_cnt_L0+0, 1 
;main.c,713 :: 		}
	GOTO        L_lcd_pwr367
L_lcd_pwr368:
;main.c,714 :: 		asm CLRWDT;
	CLRWDT
;main.c,715 :: 		Power = p;
	MOVF        lcd_pwr_p_L0+0, 0 
	MOVWF       _Power+0 
	MOVF        lcd_pwr_p_L0+1, 0 
	MOVWF       _Power+1 
;main.c,716 :: 		lcd_swr(SWR_fixed);
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_lcd_swr_swr+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_lcd_swr_swr+1 
	CALL        _lcd_swr+0, 0
;main.c,717 :: 		if (SWR_fixed >= 100) {
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr649
	MOVLW       100
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
L__lcd_pwr649:
	BTFSS       STATUS+0, 0 
	GOTO        L_lcd_pwr374
;main.c,718 :: 		dysp_on(); // dysplay ON
	CALL        _dysp_on+0, 0
;main.c,719 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
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
;main.c,720 :: 		}
L_lcd_pwr374:
;main.c,722 :: 		if (Auto & SWR_fixed >= Auto_delta &
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       _Auto_delta+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr650
	MOVF        _Auto_delta+0, 0 
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
L__lcd_pwr650:
	MOVLW       0
	BTFSC       STATUS+0, 0 
	MOVLW       1
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       _Auto+0, 0 
	MOVWF       R5 
;main.c,723 :: 		((SWR_fixed > SWR_fixed_old & (SWR_fixed - SWR_fixed_old) > delta) |
	MOVLW       128
	XORWF       _SWR_fixed_old+1, 0 
	MOVWF       R3 
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	SUBWF       R3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr651
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	SUBWF       _SWR_fixed_old+0, 0 
L__lcd_pwr651:
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
	GOTO        L__lcd_pwr652
	MOVF        R1, 0 
	SUBWF       lcd_pwr_delta_L0+0, 0 
L__lcd_pwr652:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       R3, 0 
	MOVWF       R4 
;main.c,724 :: 		(SWR_fixed < SWR_fixed_old & (SWR_fixed_old - SWR_fixed) > delta) |
	MOVLW       128
	XORWF       lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       R3 
	MOVLW       128
	XORWF       _SWR_fixed_old+1, 0 
	SUBWF       R3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr653
	MOVF        _SWR_fixed_old+0, 0 
	SUBWF       lcd_pwr_SWR_fixed_L0+0, 0 
L__lcd_pwr653:
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
	GOTO        L__lcd_pwr654
	MOVF        R1, 0 
	SUBWF       lcd_pwr_delta_L0+0, 0 
L__lcd_pwr654:
	MOVLW       1
	BTFSC       STATUS+0, 0 
	MOVLW       0
	MOVWF       R0 
	MOVF        R3, 0 
	ANDWF       R0, 1 
	MOVF        R0, 0 
	IORWF       R4, 0 
	MOVWF       R1 
;main.c,725 :: 		SWR_fixed_old == 999))
	MOVF        _SWR_fixed_old+1, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_pwr655
	MOVLW       231
	XORWF       _SWR_fixed_old+0, 0 
L__lcd_pwr655:
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
;main.c,726 :: 		Soft_tune = 1;
	MOVLW       1
	MOVWF       _Soft_tune+0 
L_lcd_pwr375:
;main.c,728 :: 		if (PORTB.B1 == 0 | PORTB.B2 == 0 | PORTB.B0 == 0) {
	BTFSC       PORTB+0, 1 
	GOTO        L__lcd_pwr656
	BSF         R6, 0 
	GOTO        L__lcd_pwr657
L__lcd_pwr656:
	BCF         R6, 0 
L__lcd_pwr657:
	BTFSC       PORTB+0, 2 
	GOTO        L__lcd_pwr658
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr659
L__lcd_pwr658:
	BCF         STATUS+0, 0 
L__lcd_pwr659:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr660
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr660
	BCF         R6, 0 
	GOTO        L__lcd_pwr661
L__lcd_pwr660:
	BSF         R6, 0 
L__lcd_pwr661:
	BTFSC       PORTB+0, 0 
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
	BTFSS       R6, 0 
	GOTO        L_lcd_pwr376
;main.c,729 :: 		button_delay();
	CALL        _button_delay+0, 0
;main.c,730 :: 		if (but == 1) {
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr377
;main.c,731 :: 		but = 0;
	CLRF        _but+0 
;main.c,732 :: 		return;
	GOTO        L_end_lcd_pwr
;main.c,733 :: 		}
L_lcd_pwr377:
;main.c,734 :: 		} // Fast return if button pressed
L_lcd_pwr376:
;main.c,735 :: 		show_pwr(Power, SWR_fixed);
	MOVF        _Power+0, 0 
	MOVWF       FARG_show_pwr_Power+0 
	MOVF        _Power+1, 0 
	MOVWF       FARG_show_pwr_Power+1 
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_show_pwr_SWR+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_show_pwr_SWR+1 
	CALL        _show_pwr+0, 0
;main.c,737 :: 		if (PORTB.B1 == 0 | PORTB.B2 == 0 | PORTB.B0 == 0) {
	BTFSC       PORTB+0, 1 
	GOTO        L__lcd_pwr666
	BSF         R6, 0 
	GOTO        L__lcd_pwr667
L__lcd_pwr666:
	BCF         R6, 0 
L__lcd_pwr667:
	BTFSC       PORTB+0, 2 
	GOTO        L__lcd_pwr668
	BSF         STATUS+0, 0 
	GOTO        L__lcd_pwr669
L__lcd_pwr668:
	BCF         STATUS+0, 0 
L__lcd_pwr669:
	BTFSC       R6, 0 
	GOTO        L__lcd_pwr670
	BTFSC       STATUS+0, 0 
	GOTO        L__lcd_pwr670
	BCF         R6, 0 
	GOTO        L__lcd_pwr671
L__lcd_pwr670:
	BSF         R6, 0 
L__lcd_pwr671:
	BTFSC       PORTB+0, 0 
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
	BTFSS       R6, 0 
	GOTO        L_lcd_pwr378
;main.c,738 :: 		button_delay();
	CALL        _button_delay+0, 0
;main.c,739 :: 		if (but == 1) {
	MOVF        _but+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr379
;main.c,740 :: 		but = 0;
	CLRF        _but+0 
;main.c,741 :: 		return;
	GOTO        L_end_lcd_pwr
;main.c,742 :: 		}
L_lcd_pwr379:
;main.c,743 :: 		}
L_lcd_pwr378:
;main.c,744 :: 		asm CLRWDT;
	CLRWDT
;main.c,745 :: 		if (Overload == 1) {
	MOVF        main_Overload+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_pwr380
;main.c,746 :: 		if (type == 4 | type == 5) { // 128*64 OLED
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
;main.c,747 :: 		led_wr_str(2, 16, "        ", 8);
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
;main.c,748 :: 		delay_ms(100);
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
;main.c,749 :: 		led_wr_str(2, 16, "OVERLOAD", 8);
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
;main.c,750 :: 		delay_ms(500);
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
;main.c,751 :: 		asm CLRWDT;
	CLRWDT
;main.c,752 :: 		led_wr_str(2, 16, "        ", 8);
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
;main.c,753 :: 		delay_ms(300);
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
;main.c,754 :: 		asm CLRWDT;
	CLRWDT
;main.c,755 :: 		led_wr_str(2, 16, "OVERLOAD", 8);
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
;main.c,756 :: 		delay_ms(500);
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
;main.c,757 :: 		asm CLRWDT;
	CLRWDT
;main.c,758 :: 		led_wr_str(2, 16, "        ", 8);
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
;main.c,759 :: 		delay_ms(300);
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
;main.c,760 :: 		asm CLRWDT;
	CLRWDT
;main.c,761 :: 		led_wr_str(2, 16, "OVERLOAD", 8);
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
;main.c,762 :: 		delay_ms(500);
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
;main.c,763 :: 		asm CLRWDT;
	CLRWDT
;main.c,764 :: 		led_wr_str(2, 16, "        ", 8);
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
;main.c,765 :: 		delay_ms(100);
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
;main.c,766 :: 		led_wr_str(2, 16, "SWR=    ", 8);
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
;main.c,767 :: 		} else if (type != 0) { // 1602  & 128*32// 1602
	GOTO        L_lcd_pwr389
L_lcd_pwr381:
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_pwr390
;main.c,768 :: 		led_wr_str(1, 0, "        ", 8);
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
;main.c,769 :: 		delay_ms(100);
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
;main.c,770 :: 		led_wr_str(1, 0, "OVERLOAD", 8);
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
;main.c,771 :: 		delay_ms(500);
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
;main.c,772 :: 		asm CLRWDT;
	CLRWDT
;main.c,773 :: 		led_wr_str(1, 0, "        ", 8);
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
;main.c,774 :: 		delay_ms(300);
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
;main.c,775 :: 		asm CLRWDT;
	CLRWDT
;main.c,776 :: 		led_wr_str(1, 0, "OVERLOAD", 8);
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
;main.c,777 :: 		delay_ms(500);
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
;main.c,778 :: 		asm CLRWDT;
	CLRWDT
;main.c,779 :: 		led_wr_str(1, 0, "        ", 8);
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
;main.c,780 :: 		delay_ms(300);
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
;main.c,781 :: 		asm CLRWDT;
	CLRWDT
;main.c,782 :: 		led_wr_str(1, 0, "OVERLOAD", 8);
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
;main.c,783 :: 		delay_ms(500);
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
;main.c,784 :: 		asm CLRWDT;
	CLRWDT
;main.c,785 :: 		led_wr_str(1, 0, "        ", 8);
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
;main.c,786 :: 		delay_ms(100);
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
;main.c,787 :: 		led_wr_str(1, 0, "SWR=    ", 8);
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
;main.c,788 :: 		}
L_lcd_pwr390:
L_lcd_pwr389:
;main.c,789 :: 		asm CLRWDT;
	CLRWDT
;main.c,790 :: 		SWR_old = 10000;
	MOVLW       16
	MOVWF       _SWR_old+0 
	MOVLW       39
	MOVWF       _SWR_old+1 
;main.c,791 :: 		lcd_swr(SWR_fixed);
	MOVF        lcd_pwr_SWR_fixed_L0+0, 0 
	MOVWF       FARG_lcd_swr_swr+0 
	MOVF        lcd_pwr_SWR_fixed_L0+1, 0 
	MOVWF       FARG_lcd_swr_swr+1 
	CALL        _lcd_swr+0, 0
;main.c,792 :: 		}
L_lcd_pwr380:
;main.c,793 :: 		return;
;main.c,794 :: 		}
L_end_lcd_pwr:
	RETURN      0
; end of _lcd_pwr

_lcd_ind:

;main.c,798 :: 		void lcd_ind() {
;main.c,800 :: 		asm CLRWDT;
	CLRWDT
;main.c,802 :: 		work_int = 0;
	CLRF        _work_int+0 
	CLRF        _work_int+1 
;main.c,803 :: 		if (ind.B0)
	BTFSS       main_ind+0, 0 
	GOTO        L_lcd_ind399
;main.c,804 :: 		work_int += Ind1;
	MOVF        _Ind1+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind1+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind399:
;main.c,805 :: 		if (ind.B1)
	BTFSS       main_ind+0, 1 
	GOTO        L_lcd_ind400
;main.c,806 :: 		work_int += Ind2;
	MOVF        _Ind2+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind2+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind400:
;main.c,807 :: 		if (ind.B2)
	BTFSS       main_ind+0, 2 
	GOTO        L_lcd_ind401
;main.c,808 :: 		work_int += Ind3;
	MOVF        _Ind3+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind3+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind401:
;main.c,809 :: 		if (ind.B3)
	BTFSS       main_ind+0, 3 
	GOTO        L_lcd_ind402
;main.c,810 :: 		work_int += Ind4;
	MOVF        _Ind4+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind4+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind402:
;main.c,811 :: 		if (ind.B4)
	BTFSS       main_ind+0, 4 
	GOTO        L_lcd_ind403
;main.c,812 :: 		work_int += Ind5;
	MOVF        _Ind5+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind5+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind403:
;main.c,813 :: 		if (ind.B5)
	BTFSS       main_ind+0, 5 
	GOTO        L_lcd_ind404
;main.c,814 :: 		work_int += Ind6;
	MOVF        _Ind6+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind6+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind404:
;main.c,815 :: 		if (ind.B6)
	BTFSS       main_ind+0, 6 
	GOTO        L_lcd_ind405
;main.c,816 :: 		work_int += Ind7;
	MOVF        _Ind7+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Ind7+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind405:
;main.c,817 :: 		if (work_int > 9999) { // more then 9999 nH
	MOVLW       128
	XORLW       39
	MOVWF       R0 
	MOVLW       128
	XORWF       _work_int+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__lcd_ind677
	MOVF        _work_int+0, 0 
	SUBLW       15
L__lcd_ind677:
	BTFSC       STATUS+0, 0 
	GOTO        L_lcd_ind406
;main.c,818 :: 		work_int += 50; // round
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
;main.c,819 :: 		IntToStr(work_int, work_str);
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,820 :: 		work_str_2[0] = work_str[1];
	MOVF        _work_str+1, 0 
	MOVWF       _work_str_2+0 
;main.c,821 :: 		work_str_2[1] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+1 
;main.c,822 :: 		work_str_2[2] = '.';
	MOVLW       46
	MOVWF       _work_str_2+2 
;main.c,823 :: 		work_str_2[3] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+3 
;main.c,824 :: 		} else {
	GOTO        L_lcd_ind407
L_lcd_ind406:
;main.c,825 :: 		IntToStr(work_int, work_str);
	MOVF        _work_int+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _work_int+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,826 :: 		if (work_str[2] != ' ')
	MOVF        _work_str+2, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind408
;main.c,827 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_lcd_ind409
L_lcd_ind408:
;main.c,829 :: 		work_str_2[0] = '0';
	MOVLW       48
	MOVWF       _work_str_2+0 
L_lcd_ind409:
;main.c,830 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,831 :: 		if (work_str[3] != ' ')
	MOVF        _work_str+3, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind410
;main.c,832 :: 		work_str_2[2] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+2 
	GOTO        L_lcd_ind411
L_lcd_ind410:
;main.c,834 :: 		work_str_2[2] = '0';
	MOVLW       48
	MOVWF       _work_str_2+2 
L_lcd_ind411:
;main.c,835 :: 		if (work_str[4] != ' ')
	MOVF        _work_str+4, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_lcd_ind412
;main.c,836 :: 		work_str_2[3] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+3 
	GOTO        L_lcd_ind413
L_lcd_ind412:
;main.c,838 :: 		work_str_2[3] = '0';
	MOVLW       48
	MOVWF       _work_str_2+3 
L_lcd_ind413:
;main.c,839 :: 		}
L_lcd_ind407:
;main.c,840 :: 		if (type == 4 | type == 5) { // 128*64 OLED
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
;main.c,841 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind415
;main.c,842 :: 		column = 4;
	MOVLW       4
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind416
L_lcd_ind415:
;main.c,844 :: 		column = 6;
	MOVLW       6
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind416:
;main.c,845 :: 		led_wr_str(column, 16, "L=", 2);
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
;main.c,846 :: 		led_wr_str(column, 16 + 6 * 12, "uH", 2);
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
;main.c,847 :: 		led_wr_str(column, 16 + 2 * 12, work_str_2, 4);
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
;main.c,848 :: 		} else if (type == 2 | type == 3) { // 128*32 OLED
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
;main.c,849 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind419
;main.c,850 :: 		column = 0;
	CLRF        lcd_ind_column_L0+0 
	GOTO        L_lcd_ind420
L_lcd_ind419:
;main.c,852 :: 		column = 1;
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind420:
;main.c,853 :: 		led_wr_str(column, 9, "L=", 2);
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
;main.c,854 :: 		led_wr_str(column, 15, "uH", 2);
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
;main.c,855 :: 		led_wr_str(column, 11, work_str_2, 4);
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
;main.c,856 :: 		} else if (type == 1) { //  1602 LCD
	GOTO        L_lcd_ind421
L_lcd_ind418:
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind422
;main.c,857 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind423
;main.c,858 :: 		column = 0;
	CLRF        lcd_ind_column_L0+0 
	GOTO        L_lcd_ind424
L_lcd_ind423:
;main.c,860 :: 		column = 1;
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind424:
;main.c,861 :: 		led_wr_str(column, 9, "L=", 2);
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
;main.c,862 :: 		led_wr_str(column, 15, "u", 1);
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
;main.c,863 :: 		led_wr_str(column, 11, work_str_2, 4);
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
;main.c,864 :: 		}
L_lcd_ind422:
L_lcd_ind421:
L_lcd_ind417:
;main.c,866 :: 		asm CLRWDT;
	CLRWDT
;main.c,868 :: 		work_int = 0;
	CLRF        _work_int+0 
	CLRF        _work_int+1 
;main.c,869 :: 		if (cap.B0)
	BTFSS       main_cap+0, 0 
	GOTO        L_lcd_ind426
;main.c,870 :: 		work_int += Cap1;
	MOVF        _Cap1+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap1+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind426:
;main.c,871 :: 		if (cap.B1)
	BTFSS       main_cap+0, 1 
	GOTO        L_lcd_ind427
;main.c,872 :: 		work_int += Cap2;
	MOVF        _Cap2+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap2+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind427:
;main.c,873 :: 		if (cap.B2)
	BTFSS       main_cap+0, 2 
	GOTO        L_lcd_ind428
;main.c,874 :: 		work_int += Cap3;
	MOVF        _Cap3+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap3+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind428:
;main.c,875 :: 		if (cap.B3)
	BTFSS       main_cap+0, 3 
	GOTO        L_lcd_ind429
;main.c,876 :: 		work_int += Cap4;
	MOVF        _Cap4+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap4+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind429:
;main.c,877 :: 		if (cap.B4)
	BTFSS       main_cap+0, 4 
	GOTO        L_lcd_ind430
;main.c,878 :: 		work_int += Cap5;
	MOVF        _Cap5+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap5+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind430:
;main.c,879 :: 		if (cap.B5)
	BTFSS       main_cap+0, 5 
	GOTO        L_lcd_ind431
;main.c,880 :: 		work_int += Cap6;
	MOVF        _Cap6+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap6+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind431:
;main.c,881 :: 		if (cap.B6)
	BTFSS       main_cap+0, 6 
	GOTO        L_lcd_ind432
;main.c,882 :: 		work_int += Cap7;
	MOVF        _Cap7+0, 0 
	ADDWF       _work_int+0, 1 
	MOVF        _Cap7+1, 0 
	ADDWFC      _work_int+1, 1 
L_lcd_ind432:
;main.c,883 :: 		IntToStr(work_int, work_str);
	MOVF        _work_int+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _work_int+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,884 :: 		work_str_2[0] = work_str[2];
	MOVF        _work_str+2, 0 
	MOVWF       _work_str_2+0 
;main.c,885 :: 		work_str_2[1] = work_str[3];
	MOVF        _work_str+3, 0 
	MOVWF       _work_str_2+1 
;main.c,886 :: 		work_str_2[2] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+2 
;main.c,887 :: 		work_str_2[3] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+3 
;main.c,889 :: 		if (type == 4 | type == 5) { // 128*64 OLED
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
	GOTO        L_lcd_ind433
;main.c,890 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind434
;main.c,891 :: 		column = 6;
	MOVLW       6
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind435
L_lcd_ind434:
;main.c,893 :: 		column = 4;
	MOVLW       4
	MOVWF       lcd_ind_column_L0+0 
L_lcd_ind435:
;main.c,894 :: 		led_wr_str(column, 16, "C=", 2);
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
;main.c,895 :: 		led_wr_str(column, 16 + 6 * 12, "pF", 2);
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
;main.c,896 :: 		led_wr_str(column, 16 + 2 * 12, work_str_2, 4);
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
;main.c,897 :: 		} else if (type == 2 | type == 3) { // 128*32 OLED
	GOTO        L_lcd_ind436
L_lcd_ind433:
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
	GOTO        L_lcd_ind437
;main.c,898 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind438
;main.c,899 :: 		column = 1;
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind439
L_lcd_ind438:
;main.c,901 :: 		column = 0;
	CLRF        lcd_ind_column_L0+0 
L_lcd_ind439:
;main.c,902 :: 		led_wr_str(column, 9, "C=", 2);
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
;main.c,903 :: 		led_wr_str(column, 15, "pF", 2);
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
;main.c,904 :: 		led_wr_str(column, 11, work_str_2, 4);
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
;main.c,905 :: 		} else if (type == 1) { // 1602 LCD
	GOTO        L_lcd_ind440
L_lcd_ind437:
	MOVF        _type+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind441
;main.c,906 :: 		if (SW == 1)
	MOVF        main_SW+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_lcd_ind442
;main.c,907 :: 		column = 1;
	MOVLW       1
	MOVWF       lcd_ind_column_L0+0 
	GOTO        L_lcd_ind443
L_lcd_ind442:
;main.c,909 :: 		column = 0;
	CLRF        lcd_ind_column_L0+0 
L_lcd_ind443:
;main.c,910 :: 		led_wr_str(column, 9, "C=", 2);
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
;main.c,911 :: 		led_wr_str(column, 15, "p", 1);
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
;main.c,912 :: 		led_wr_str(column, 11, work_str_2, 4);
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
;main.c,913 :: 		}
L_lcd_ind441:
L_lcd_ind440:
L_lcd_ind436:
;main.c,915 :: 		asm CLRWDT;
	CLRWDT
;main.c,916 :: 		return;
;main.c,917 :: 		}
L_end_lcd_ind:
	RETURN      0
; end of _lcd_ind

_Test_init:

;main.c,919 :: 		void Test_init(void) { // Test mode
;main.c,920 :: 		if (type == 4 | type == 5) // 128*64 OLED
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
	GOTO        L_Test_init444
;main.c,921 :: 		led_wr_str(0, 10, "TEST MODE", 9);
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
	GOTO        L_Test_init445
L_Test_init444:
;main.c,922 :: 		else if (type != 0) // 1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init446
;main.c,923 :: 		led_wr_str(0, 3, "TEST MODE", 9);
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
L_Test_init446:
L_Test_init445:
;main.c,924 :: 		asm CLRWDT;
	CLRWDT
;main.c,925 :: 		Delay_ms(500);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_Test_init447:
	DECFSZ      R13, 1, 1
	BRA         L_Test_init447
	DECFSZ      R12, 1, 1
	BRA         L_Test_init447
	DECFSZ      R11, 1, 1
	BRA         L_Test_init447
	NOP
	NOP
;main.c,926 :: 		asm CLRWDT;
	CLRWDT
;main.c,927 :: 		Delay_ms(500);
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
;main.c,928 :: 		asm CLRWDT;
	CLRWDT
;main.c,929 :: 		Delay_ms(500);
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
;main.c,930 :: 		asm CLRWDT;
	CLRWDT
;main.c,931 :: 		Delay_ms(500);
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
;main.c,932 :: 		asm CLRWDT;
	CLRWDT
;main.c,933 :: 		if (type == 4 | type == 5) // 128*64 OLED
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
	GOTO        L_Test_init451
;main.c,934 :: 		led_wr_str(0, 10, "         ", 9);
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
	GOTO        L_Test_init452
L_Test_init451:
;main.c,935 :: 		else if (type != 0) // 1602 LCD  or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init453
;main.c,936 :: 		led_wr_str(0, 3, "         ", 9);
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
L_Test_init453:
L_Test_init452:
;main.c,937 :: 		atu_reset();
	CALL        _atu_reset+0, 0
;main.c,938 :: 		SW = 1; // C to OUT
	MOVLW       1
	MOVWF       main_SW+0 
;main.c,939 :: 		set_sw(SW);
	MOVLW       1
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,940 :: 		EEPROM_Write(255 - mem_offset * 5, cap);
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
;main.c,941 :: 		EEPROM_Write(254 - mem_offset * 5, ind);
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
;main.c,942 :: 		EEPROM_Write(253 - mem_offset * 5, SW);
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
;main.c,944 :: 		if (type == 4 | type == 5) // 128*64 OLED
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
;main.c,945 :: 		led_wr_str(0, 16 + 12 * 8, "l", 1);
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
	GOTO        L_Test_init455
L_Test_init454:
;main.c,946 :: 		else if (type != 0) // 1602 LCD or 128*32 OLED
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_Test_init456
;main.c,947 :: 		led_wr_str(0, 8, "l", 1);
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
L_Test_init456:
L_Test_init455:
;main.c,949 :: 		lcd_prep_short = 1;
	MOVLW       1
	MOVWF       _lcd_prep_short+0 
;main.c,950 :: 		lcd_prep();
	CALL        _lcd_prep+0, 0
;main.c,951 :: 		return;
;main.c,952 :: 		}
L_end_Test_init:
	RETURN      0
; end of _Test_init

_cells_init:

;main.c,954 :: 		void cells_init(void) {
;main.c,956 :: 		asm CLRWDT;
	CLRWDT
;main.c,958 :: 		type = EEPROM_Read(1); // type of display
	MOVLW       1
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _type+0 
;main.c,959 :: 		if (EEPROM_Read(2) == 1)
	MOVLW       2
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_cells_init457
;main.c,960 :: 		Auto = 1;
	MOVLW       1
	MOVWF       _Auto+0 
L_cells_init457:
;main.c,961 :: 		Rel_Del = Bcd2Dec(EEPROM_Read(3)); // Relay's Delay
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
;main.c,962 :: 		Auto_delta = Bcd2Dec(EEPROM_Read(4)) * 10; // Auto_delta
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
;main.c,963 :: 		min_for_start = Bcd2Dec(EEPROM_Read(5)) * 10; // P_min_for_start
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
;main.c,964 :: 		max_for_start = Bcd2Dec(EEPROM_Read(6)) * 10; // P_max_for_start
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
;main.c,967 :: 		max_swr = Bcd2Dec(EEPROM_Read(9)) * 10; // Max SWR
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
;main.c,968 :: 		L_q = EEPROM_Read(10);
	MOVLW       10
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_L_q+0 
;main.c,969 :: 		L_linear = EEPROM_Read(11);
	MOVLW       11
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_L_linear+0 
;main.c,970 :: 		C_q = EEPROM_Read(12);
	MOVLW       12
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_C_q+0 
;main.c,971 :: 		C_linear = EEPROM_Read(13);
	MOVLW       13
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_C_linear+0 
;main.c,972 :: 		D_correction = EEPROM_Read(14);
	MOVLW       14
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_D_correction+0 
;main.c,973 :: 		L_invert = EEPROM_Read(15);
	MOVLW       15
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_L_invert+0 
;main.c,975 :: 		asm CLRWDT;
	CLRWDT
;main.c,976 :: 		Ind1 = Bcd2Dec(EEPROM_Read(16)) * 100 + Bcd2Dec(EEPROM_Read(17)); // Ind1
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
;main.c,977 :: 		Ind2 = Bcd2Dec(EEPROM_Read(18)) * 100 + Bcd2Dec(EEPROM_Read(19)); // Ind2
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
;main.c,978 :: 		Ind3 = Bcd2Dec(EEPROM_Read(20)) * 100 + Bcd2Dec(EEPROM_Read(21)); // Ind3
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
;main.c,979 :: 		Ind4 = Bcd2Dec(EEPROM_Read(22)) * 100 + Bcd2Dec(EEPROM_Read(23)); // Ind4
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
;main.c,980 :: 		Ind5 = Bcd2Dec(EEPROM_Read(24)) * 100 + Bcd2Dec(EEPROM_Read(25)); // Ind5
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
;main.c,981 :: 		Ind6 = Bcd2Dec(EEPROM_Read(26)) * 100 + Bcd2Dec(EEPROM_Read(27)); // Ind6
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
;main.c,982 :: 		Ind7 = Bcd2Dec(EEPROM_Read(28)) * 100 + Bcd2Dec(EEPROM_Read(29)); // Ind7
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
;main.c,984 :: 		Cap1 = Bcd2Dec(EEPROM_Read(32)) * 100 + Bcd2Dec(EEPROM_Read(33)); // Cap1
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
;main.c,985 :: 		Cap2 = Bcd2Dec(EEPROM_Read(34)) * 100 + Bcd2Dec(EEPROM_Read(35)); // Cap2
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
;main.c,986 :: 		Cap3 = Bcd2Dec(EEPROM_Read(36)) * 100 + Bcd2Dec(EEPROM_Read(37)); // Cap3
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
;main.c,987 :: 		Cap4 = Bcd2Dec(EEPROM_Read(38)) * 100 + Bcd2Dec(EEPROM_Read(39)); // Cap4
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
;main.c,988 :: 		Cap5 = Bcd2Dec(EEPROM_Read(40)) * 100 + Bcd2Dec(EEPROM_Read(41)); // Cap5
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
;main.c,989 :: 		Cap6 = Bcd2Dec(EEPROM_Read(42)) * 100 + Bcd2Dec(EEPROM_Read(43)); // Cap6
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
;main.c,990 :: 		Cap7 = Bcd2Dec(EEPROM_Read(44)) * 100 + Bcd2Dec(EEPROM_Read(45)); // Cap7
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
;main.c,992 :: 		P_High = EEPROM_Read(0x30); // High power
	MOVLW       48
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_P_High+0 
;main.c,993 :: 		K_Mult = Bcd2Dec(EEPROM_Read(0x31)); // Tandem Natch rate
	MOVLW       49
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       main_K_Mult+0 
;main.c,994 :: 		Dysp_delay = Bcd2Dec(EEPROM_Read(0x32)); // Dysplay ON delay
	MOVLW       50
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Dysp_delay+0 
;main.c,995 :: 		Loss_ind = EEPROM_Read(0x33);
	MOVLW       51
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       main_Loss_ind+0 
;main.c,996 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
	MOVLW       52
	MOVWF       FARG_EEPROM_Read_address+0 
	CALL        _EEPROM_Read+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_Bcd2Dec_bcdnum+0 
	CALL        _Bcd2Dec+0, 0
	MOVF        R0, 0 
	MOVWF       _Fid_loss+0 
;main.c,997 :: 		asm CLRWDT;
	CLRWDT
;main.c,998 :: 		return;
;main.c,1000 :: 		}
L_end_cells_init:
	RETURN      0
; end of _cells_init

_show_loss:

;main.c,1002 :: 		void show_loss(void) {
;main.c,1003 :: 		IntToStr(Fid_loss, work_str);
	MOVF        _Fid_loss+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVLW       0
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _work_str+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_work_str+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;main.c,1004 :: 		if (Fid_loss >= 10)
	MOVLW       10
	SUBWF       _Fid_loss+0, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_show_loss458
;main.c,1005 :: 		work_str_2[0] = work_str[4];
	MOVF        _work_str+4, 0 
	MOVWF       _work_str_2+0 
	GOTO        L_show_loss459
L_show_loss458:
;main.c,1007 :: 		work_str_2[0] = '0';
	MOVLW       48
	MOVWF       _work_str_2+0 
L_show_loss459:
;main.c,1008 :: 		work_str_2[1] = '.';
	MOVLW       46
	MOVWF       _work_str_2+1 
;main.c,1009 :: 		work_str_2[2] = work_str[5];
	MOVF        _work_str+5, 0 
	MOVWF       _work_str_2+2 
;main.c,1010 :: 		if (type == 4 | type == 5)
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
	GOTO        L_show_loss460
;main.c,1011 :: 		led_wr_str(4, 6, work_str_2, 3); // 128*64
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
	GOTO        L_show_loss461
L_show_loss460:
;main.c,1012 :: 		else if (type != 0)
	MOVF        _type+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_show_loss462
;main.c,1013 :: 		led_wr_str(1, 0, work_str_2, 3); // 1602 | 128*32
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
L_show_loss462:
L_show_loss461:
;main.c,1014 :: 		return;
;main.c,1015 :: 		}
L_end_show_loss:
	RETURN      0
; end of _show_loss

_load_settings:

;main.c,1016 :: 		void load_settings()
;main.c,1018 :: 		cap = EEPROM_Read(255 - mem_offset * 5);
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
;main.c,1019 :: 		ind = EEPROM_Read(254 - mem_offset * 5);
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
;main.c,1020 :: 		SW = EEPROM_Read(253 - mem_offset * 5);
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
;main.c,1021 :: 		swr_a = EEPROM_Read(252 - mem_offset * 5) * 256;
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
;main.c,1022 :: 		swr_a += EEPROM_Read(251 - mem_offset * 5);
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
;main.c,1023 :: 		set_ind(ind);
	MOVF        main_ind+0, 0 
	MOVWF       FARG_set_ind_Ind+0 
	CALL        _set_ind+0, 0
;main.c,1024 :: 		set_cap(cap);
	MOVF        main_cap+0, 0 
	MOVWF       FARG_set_cap_Cap+0 
	CALL        _set_cap+0, 0
;main.c,1025 :: 		set_sw(SW);
	MOVF        main_SW+0, 0 
	MOVWF       FARG_set_sw_SW+0 
	CALL        _set_sw+0, 0
;main.c,1026 :: 		}
L_end_load_settings:
	RETURN      0
; end of _load_settings

_read_i2c_inputs:

;main.c,1028 :: 		void read_i2c_inputs(void) {
;main.c,1031 :: 		_status = ~mem_offset | 0xF0;
	COMF        _mem_offset+0, 0 
	MOVWF       read_i2c_inputs__status_L0+0 
	MOVLW       240
	IORWF       read_i2c_inputs__status_L0+0, 1 
;main.c,1033 :: 		Delay_us(100);
	MOVLW       133
	MOVWF       R13, 0
L_read_i2c_inputs463:
	DECFSZ      R13, 1, 1
	BRA         L_read_i2c_inputs463
;main.c,1034 :: 		asm CLRWDT;
	CLRWDT
;main.c,1036 :: 		Soft_I2C_Start();
	CALL        _Soft_I2C_Start+0, 0
;main.c,1037 :: 		Soft_I2C_Write(0x40); // device addres for write
	MOVLW       64
	MOVWF       FARG_Soft_I2C_Write+0 
	CALL        _Soft_I2C_Write+0, 0
;main.c,1038 :: 		Soft_I2C_Write(_status);
	MOVF        read_i2c_inputs__status_L0+0, 0 
	MOVWF       FARG_Soft_I2C_Write+0 
	CALL        _Soft_I2C_Write+0, 0
;main.c,1039 :: 		Soft_I2C_Stop();
	CALL        _Soft_I2C_Stop+0, 0
;main.c,1040 :: 		asm CLRWDT;
	CLRWDT
;main.c,1041 :: 		Delay_us(100);
	MOVLW       133
	MOVWF       R13, 0
L_read_i2c_inputs464:
	DECFSZ      R13, 1, 1
	BRA         L_read_i2c_inputs464
;main.c,1042 :: 		asm CLRWDT;
	CLRWDT
;main.c,1043 :: 		Soft_I2C_Start();
	CALL        _Soft_I2C_Start+0, 0
;main.c,1044 :: 		Soft_I2C_Write(0x41); // device addres for read
	MOVLW       65
	MOVWF       FARG_Soft_I2C_Write+0 
	CALL        _Soft_I2C_Write+0, 0
;main.c,1045 :: 		_status = Soft_I2C_Read();
	CALL        _Soft_I2C_Read+0, 0
	MOVF        R0, 0 
	MOVWF       read_i2c_inputs__status_L0+0 
;main.c,1046 :: 		Soft_I2C_Stop();
	CALL        _Soft_I2C_Stop+0, 0
;main.c,1047 :: 		asm CLRWDT;
	CLRWDT
;main.c,1048 :: 		mem_offset = ~_status;
	COMF        read_i2c_inputs__status_L0+0, 0 
	MOVWF       _mem_offset+0 
;main.c,1049 :: 		mem_offset >>= 4;
	RRCF        _mem_offset+0, 1 
	BCF         _mem_offset+0, 7 
	RRCF        _mem_offset+0, 1 
	BCF         _mem_offset+0, 7 
	RRCF        _mem_offset+0, 1 
	BCF         _mem_offset+0, 7 
	RRCF        _mem_offset+0, 1 
	BCF         _mem_offset+0, 7 
;main.c,1050 :: 		mem_offset &= 0xf;
	MOVLW       15
	ANDWF       _mem_offset+0, 1 
;main.c,1051 :: 		}
L_end_read_i2c_inputs:
	RETURN      0
; end of _read_i2c_inputs
