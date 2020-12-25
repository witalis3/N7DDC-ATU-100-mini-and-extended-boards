#line 1 "D:/mikroC PRO for PIC/Examples/ATU_100_memo/N7DDC-ATU-100-mini-and-extended-boards/ATU_100_EXT_board/FirmWare_PIC18F2520/2520_EXT_board_sources_V_3.1/pic_init.c"





void pic_init (void) {
 CMCON = 0b00000111;

 OSCCON = 0b01100000;
 PLLEN_bit = 1;

 PORTA = 0;
 PORTB = 0;
 PORTC = 0;
 LATA = 0b01000000;
 LATB = 0;
 LATC = 0;
 TRISA = 0b00000011;
 TRISB = 0b00000111;
 TRISC = 0b00000000;

 ADC_Init();


 ADCON1 = 0b00001101;

 RBPU_bit = 0;


 GIE_bit = 0;
}
