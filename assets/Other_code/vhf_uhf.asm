;UßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßU
;U CONTENTS : Simple low-cost 7-digit universal UHF/VHF frequency meter   U
;U            based on the PIC16F84                                       U
;U COPYRIGHT: Peter Halicky  OM3CPH                                       U
;U AUTHOR   : Peter Halicky OM3CPH                                        U
;UÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU
;U E-Mail: halicky@minv.sk     or om3cph@oe3xbs.aut.eu                    U
;U                                                                        U
;U Bratislava, Slovakia, February, 2000                                   U
;UÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU
;U This is 7-digit frequency meter measuring frequency from 10 Hz up to   U
;U 1300 MHz. It is based on ideas of PIC16F84 based frequency meter.      U
;U The measuring range is divided into two subranges: 10Hz - 20MHz and    U
;U 20 MHz - 1300MHz. The decimal point is after MHz digit, but can be set U
;U at any position.                                                       U
;U                                                                        U
;U Hardware is very simple:                                               U
;U                                                                        U
;U It contains     : PIC 16F84                                            U
;U                   74HC137 (BCD -> 1 of 8 decoder)                      U
;U                   SAB6456 VHF-UHF divider by 256                       U
;U                   7-digit calculator display (common cathode),         U
;U                   some resistors, capacitors and 2 switching diodes    U
;U Note:                                                                  U
;U "Calculator display" means (say) 7 digit LED multiplexed display.      U
;U Both common cathode and common anode can be used. Software is written  U
;U for common cathode. For common anode displays it requires some softwa- U
;U re and hardware modification.                                          U
;U                                                                        U
;U PIC is used as 3 byte counter. If it counts 0.1 s maximum measured     U
;U frequency is FF FF FF, e. g. 167.77215 MHz (theoretically).            U
;U SAB6456 is used as 1:256 predivider. Its upper limit is 1300MHz.       U
;UÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU
;U                                                                        U
;U The device uses internal prescaler of PIC as low byte of counter,      U
;U TMR0 as middle byte and some register as high byte of counter. The     U
;U software DOESN'T read anything from any input port. RA4 is used as     U
;U prescaler input.                                                       U
;U                                                                        U
;UÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU
;U                                                                        U
;U Measuring period is 100 000 us (HF) or 256 000 us (VHF and UHF).       U
;U                                                                        U
;U The main steps during measuring period:                                U
;U                                                                        U
;U        1. start measurement,                                           U
;U        2. precode decimal value of digit to segments,                  U
;U        3. if it's correct digit set decimal point,                     U
;U        4. output to PortB,                                             U
;U        5. output digit number to PortA                                 U
;U        6. test TMR0 overflow bite, if YES increase TimerH,             U
;U        7. leave digit to light,                                        U
;U        8. increase digit number,                                       U
;U        9. if <7 goto 2,                                                U
;U       10. else zero digit number, decrease counter and goto 2,         U
;U       11. stop measurement,                                            U
;U       12. test TMR0 overflow bite, if YES increase TimerH,             U
;U       13. shift out precounter content,                                U
;U       14. check signal at RB0 and switch range accordingly,            U
;U       15. recode 3-byte value into 7 decimal numbers,                  U
;U       16. goto 1                                                       U
;U                                                                        U
;UÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU
;U                                                                        U
;U Total timing formula:                                                  U
;U                                                                        U
;U For low frequency N = Fx * 100 000/4                                   U
;U For VHF-UHF       N = Fx * 256 000/4 respectively                      U
;U                                                                        U
;U                   N = T*[7*(34+3*T1)+6+3*T2]+9+9*T3+Z                  U
;U                                                                        U
;U where T,T1,T2,T3 are initial values of timing loops,                   U
;U       Z          are additional fine tunig NOPs,                       U
;U       Fx         Xtal frequency in MHz.                                U
;U                                                                        U
;UÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU
;U Some ideas were taken from "Simple low-cost digital frequency meter    U
;U                             using a PIC 16C54" (frqmeter.asm)          U
;U                             written by James Hutchby, MadLab Ltd. 1996 U
;UÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU
;U                                                                        U
;U This software is free for private usage. It was created for HAM radio  U
;U community members. Commercial exploatation is allowed only with        U
;U permission of authors.                                                 U
;U                                                                        U
;UÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜU

       include <p16f84.inc>

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

Index       equ         0Ch         ; dummy register
Count       equ         0Dh         ; inkremental register
Help        equ         0Eh         ; dummy register

LED0        equ         0Fh
LED1        equ        010h
LED2        equ        011h
LED3        equ        012h
LED4        equ        013h
LED5        equ        014h
LED6        equ        015h
UHF         equ        016h         ; semaphore register

TimerH      equ        017h         ; higher byte of SW counter

LowB        equ        018h         ; low byte of resulted frequency
MidB        equ        019h         ; middle byte of resulted frequency
HigB        equ        01Ah         ; high byte of resulted frequency

Temp        equ        01Bh         ; temporary register
HIndex      equ        01Ch         ; index register
LEDIndex    equ        01Dh         ; LED pointer

MTT         equ        01Eh         ; working timer registers
TM1         equ        01Fh         ;
TM2         equ        020h         ;
TM3         equ        021h         ;
MD          equ        022h         ; dot position

MT          equ        023h         ; timing loop registers
T1          equ        024h         ; 1st timer loop
T2          equ        025h         ; 2nd timer loop
T3          equ        026h         ; 3rd timer loop - values for 10 MHz Xtal
D           equ        027h         ; decimal point position

UT          equ        028h         ; the main timing loop
U1          equ        029h         ; 1st timer loop
U2          equ        02Ah         ; 2nd timer loop
U3          equ        02Bh         ; 3rd timer loop
UD          equ        02Ch         ; decimal point position

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

            org        0

Start       clrf       Index
            clrf       LEDIndex

            clrf       LED0
            clrf       LED1
            clrf       LED2
            clrf       LED3
            clrf       LED4
            clrf       LED5
            clrf       LED6

            clrf       LowB
            clrf       MidB
            clrf       HigB

            movlw      .94          ; low frequency timers
            movwf      MT
            movlw      .114
            movwf      T1
            movlw      .5
            movwf      T2
            movlw      .2
            movwf      T3
            movlw      5
            movwf      D

            movlw      .94          ; timers starting values
            movwf      MTT
            movlw      .114
            movwf      TM1
            movlw      .5
            movwf      TM2
            movlw      .2
            movwf      TM3
            movlw      5
            movwf      MD

            movlw      .160         ; VHF-UHF timers
            movwf      UT
            movlw      .178
            movwf      U1
            movlw      .4
            movwf      U2
            movlw      .1
            movwf      U3
            movlw      3
            movwf      UD

            bsf        STATUS,RP0

            movlw      b'00010000' ; RA0..RA3 outputs
            movwf      TRISA       ; RA4 input

            movlw      b'00000000' ; RB0..RB7 outputs
            movwf      TRISB

            clrwdt                 ;
            movlw      b'00100111' ; Prescaler -> TMR0,
            movwf      OPTION_REG  ; 1:256, rising edge

            bcf        STATUS,RP0  ;

            goto       Entry

;ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
;s The block of subroutines and constants tables                           s
;CÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍL
;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄz
;l 3 byte substraction of the constant from the table, it sets carry       l
;l if result is negative                                                   l
;RÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU

Subc24      clrf       Temp        ; it will temporary save CF
            movf       Index,W     ; pointer to low byte of constant
            movwf      HIndex      ; W -> HIndex
            call       DecTable    ; W returned with low byte of constant
            bsf        STATUS,C    ; set CF
            subwf      LowB,F      ; LowB - W -> LowB
                                   ; if underflow -> C=0
            btfsc      STATUS,C
            goto       Step1
            bsf        STATUS,C
            movlw      1
            subwf      MidB,F      ; decrement MidB
                                   ; if underflow -> C=0
            btfsc      STATUS,C
            goto       Step1

            bsf        STATUS,C
            movlw      1
            subwf      HigB,F      ; decrement HigB
            btfsc      STATUS,C    ; if underflow -> C=0
            goto       Step1
            bsf        Temp,C      ; set C

Step1       decf       HIndex,F
            movf       HIndex,W    ; pointer to middle byte of const
            call       DecTable
            bsf        STATUS,C
            subwf      MidB,F      ; MidB - W -> MidB
            btfsc      STATUS,C    ; if underflow -> C=0
            goto       Step2
            bsf        STATUS,C
            movlw      1
            subwf      HigB,1      ; decrement HigB
            btfsc      STATUS,C    ; if underflow -> C=0
            goto       Step2
            bsf        Temp,C      ; set C

Step2       decf       HIndex,F
            movf       HIndex,W    ; pointer to middle byte of constatnt
            call       DecTable
            bsf        STATUS,C
            subwf      HigB,F      ; HigB - W -> HigB
            btfsc      STATUS,C    ; if underflow -> C=0
            goto       ClearCF
            bsf        STATUS,C
            goto       SubEnd
ClearCF     rrf        Temp,C      ; C -> STATUS
SubEnd      retlw      0

;=========================================================================
; 3 byte addition of the constant from the table, it sets carry if       |
; result overflows                                                       |
;=========================================================================

Addc24      clrf       Temp        ; register for temporary storage of CF
            movf       Index,W     ; pointer to lower byte of const into W
            movwf      HIndex      ; save it into HIndex
            call       DecTable    ; W contains low byte of const
            bcf        STATUS,C    ; clear C
            addwf      LowB,1      ; W + LowB -> LowB
            btfss      STATUS,C    ; test overflow
            goto       Add2
            bcf        STATUS,C    ; clear C
            movlw      1
            addwf      MidB,F      ; increment MidB
            btfss      STATUS,C
            goto       Add2
            bcf        STATUS,C
            movlw      1
            addwf      HigB,F      ; increment HigB
            btfss      STATUS,C    ; test overflow
            goto       Add2
            bsf        Temp,C      ; store C

Add2        decf       HIndex,F    ; pointer to middle byte into W
            movf       HIndex,W
            call       DecTable
            bcf        STATUS,C
            addwf      MidB,1      ; W + MidB -> MidB
            btfss      STATUS,C
            goto       Add3
            bcf        STATUS,C    ; clear C
            movlw      1
            addwf      HigB,1      ; increment HigB
            btfss      STATUS,C
            goto       Add3
            bsf        Temp,C

Add3        decf       HIndex,F    ; pointer to higher byte into W
            movf       HIndex,W
            call       DecTable
            bsf        STATUS,C
            addwf      HigB,F      ; W + HigB -> HigB,
            btfss      STATUS,C
            goto       ClarCF
            bsf        STATUS,C
            goto       AddEnd
ClarCF      rrf        Temp,C      ; C -> STATUS

AddEnd      retlw      0

;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄz
;l Tables of 3-byte constants                                             l
;AÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
;l Table of decades                                                       l
;RÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU

DecTable    addwf      PCL,F       ; W + PCL -> PCL
            retlw      0           ; 10
            retlw      0           ;
            retlw      0Ah         ;

            retlw      0           ; 100
            retlw      0           ;
            retlw      064h        ;

            retlw      0           ; 1 000
            retlw      03h         ;
            retlw      0E8h        ;

            retlw      0           ; 10 000
            retlw      027h        ;
            retlw      010h        ;

            retlw      01h         ; 100 000
            retlw      086h        ;
            retlw      0A0h        ;

            retlw      0Fh         ; 1 000 000
            retlw      042h        ;
            retlw      040h        ;

;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄz
;l Table for conversion BCD -> 7 segments                                l
;RÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU

LEDTable    addwf      PCL,F        ; W + PCL -> PCL
            retlw      b'00111111' ; ..FEDCBA = '0'
            retlw      b'00000110' ; .....CB. = '1'
            retlw      b'01011011' ; .G.ED.BA = '2'
            retlw      b'01001111' ; .G..DCBA = '3'
            retlw      b'01100110' ; .GF..CB. = '4'
            retlw      b'01101101' ; .GF.DC.A = '5'
            retlw      b'01111101' ; .GFEDC.A = '6'
            retlw      b'00000111' ; .....CBA = '7'
            retlw      b'01111111' ; .GFEDCBA = '8'
            retlw      b'01100111' ; .GF..CBA = '9'
            retlw      b'10000000' ; H....... = '.'

;UßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßU
;U The main cycle entry point                                             U
;UÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU
;U Routine for conversion of 3-byte number into 7 digits                  U
;UÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜU

Entry       bsf        STATUS,RP0
            movlw      b'00000000'
            movwf      TRISB
            bcf        STATUS,RP0

            movlw      6*3-1       ; pointer to dec. table
            movwf      Index       ; 6*3-1 -> Index

            movlw      9           ; maximum of substractions
            movwf      Count       ; 9 -> Count

            clrf       Help

            movlw      6
            movwf      LEDIndex

Divide      call       Subc24      ; substract untill result is negative,
            btfsc      STATUS,C    ; add last substracted number
            goto       Add24       ; next digit
            incf       Help,F
            decf       Count,F
            btfss      STATUS,Z
            goto       Divide
            movlw      3
            subwf      Index,F
            goto       Next

Add24       call       Addc24
            movlw      3
            subwf      Index,F

Next        movlw      9
            movwf      Count
            movlw      LED1        ; LED1 -> W
            addwf      LEDIndex,W  ; LED1 + LEDIndex -> W
            movwf      Temp
            decf       Temp,F      ; LEDIndex+LED1-1 -> TEMP
            movf       Temp,W

            movwf      FSR         ; W -> FSR
            movf       Help,W      ; Help -> W
            clrf       Help        ; save result at LEDx
            movwf      INDF        ; W -> LED(6..1)
            decf       LEDIndex,F

            movlw      1
            addwf      Index,W
            btfss      STATUS,Z
            goto       Divide

            movf       LowB,W
            movwf      LED0        ; the rest -> LED0

;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄz
;l Registers LED0..LED6 are filled with values                           l
;RÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU

            clrf       TimerH

            clrf       TMR0
            nop
            nop

            clrf       LEDIndex

            movf       MTT,W       ; set initial counter value
            movwf      Index       ; LF or UHF -> Index

            clrf       INTCON      ; global INT disable, TMR0 INT disable
                                   ; clear TMR0 overflow bite

;ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
;s Start of the measurement:  RA3 + RA4 set input                      s
;CÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍL

            movlw      b'00010000' ; all ports set L, RA4 set H
            movwf      PORTA

            bsf        STATUS,RP0
            movlw      b'00011000' ; RA0..RA2 output, RA3, RA4 input
            movwf      TRISA
            bcf        STATUS,RP0

;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄz
;l 7-step cycle of digits                                                l
;RÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU

LEDCycle    movlw      LED0
            addwf      LEDIndex,W  ; LED1 + LEDIndex -> W

            movwf      FSR         ; W -> FSR
            movf       INDF,W      ; LED(0..6) -> W
            call       LEDTable    ; W contains segments

            movwf      Temp        ; test for decimal point
            movf       MD,W
            subwf      LEDIndex,W
            btfss      STATUS,Z
            goto       NoDot
            bsf        Temp,7      ; common cathode....

NoDot       movf       Temp,W
            movwf      PORTB       ; segments -> PORTB

            movf       LEDIndex,W  ; LEDIndex -> W
            nop
            movwf      PORTA       ; digit number -> PORTA

;ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ

            btfss      INTCON,2    ; Test for TMR0 overflow
            goto       DoNothing
            incf       TimerH,F    ; YES! Increment SW counter
            bcf        INTCON,2    ; clear overflow bite
            goto       O_K

DoNothing   nop
            nop
            nop

;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄz
;l The first timing loop 2+3*T1 procesor cycles                          l
;RÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU

O_K         movf       TM1,W
            movwf      Temp

Pause       decfsz     Temp,F
            goto       Pause
            nop

;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄz
;l The end of one digit processing                                       l
;RÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU

            incf       LEDIndex,F
            movlw      7           ; is 7th?
            subwf      LEDIndex,W
            btfss      STATUS,Z
            goto       LEDCycle    ; next digit
            nop

;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄz
;l The second timing loop 2+3*T2 procesor cycles                         l
;RÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU

            movf       TM2,W
            movwf      Temp

Again       decfsz     Temp,F
            goto       Again
            nop

;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄz
;l The end of one 7-digits processing                                    l
;RÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU

            clrf       LEDIndex
            decfsz     Index,F
            goto       LEDCycle    ; next 7 * LED
            nop

;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄz
;l The third timing loop 2+9*T3+Z procesor cycles                        l
;RÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU

            movf       TM3,W
            movwf      Temp

EndPause    btfss      INTCON,2    ; Final test for TMR0 overflow
            goto       Nothing2Do
            incf       TimerH,F
            bcf        INTCON,2
            goto       Nx

Nothing2Do  nop
            nop
            nop

Nx          decfsz     Temp,F
            goto       EndPause
            nop

            nop                    ; Z times NOP  (0..8)
            nop
            nop

;ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
;s Stop of the measurement:  RA3 set output RA4 set input              s
;CÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍL

            clrw

            movwf      PORTB
            movlw      b'00010000' ; RA0..RA3 = 0
            movwf      PORTA       ; W -> PORTA

            bsf        STATUS,RP0
            movlw      b'00010000' ; RA0..RA3 output
            movwf      TRISA       ; RA4 input
            bcf        STATUS,RP0

            btfsc      INTCON,2    ; really final check
            incf       TimerH,F
            bcf        INTCON,2

;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄz
;l Analyse precounter and store counted value in registers               l
;RÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU

            movf       TMR0,W
            movwf      MidB        ; TMR0 -> MidB

            movf       TimerH,W
            movwf      HigB        ; TimerH -> HigB

            clrf       Temp

CountIt     incf       Temp,F
            bsf        PORTA,3     ; _| false impulz
            bcf        PORTA,3     ;    |_

            bcf        INTCON,2
            movf       TMR0,W      ; actual TMR0 -> W
            bcf        STATUS,Z
            subwf      MidB,W
            btfsc      STATUS,Z
            goto       CountIt
            incf       Temp,F
            comf       Temp,F
            incf       Temp,F
            incf       Temp,W

            movwf      LowB

;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄz
;l Range switching according value on RB0 pin                            l
;RÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄU

            movlw      b'00010111' ; set A0..A2 bites high
            movwf      PORTA       ; e.g. send "8" to decoder

            bsf        STATUS,RP0
            movlw      b'00000001' ; set RB0 as input, the rest as output
            movwf      TRISB
            bcf        STATUS,RP0

            btfsc      PORTB,0     ; if 0. bit=1 then VHF-UHF
            goto       SetUHF      ; else low frequency

            movf       T1,W        ; fill registers with proper values
            movwf      TM1
            movf       T2,W
            movwf      TM2
            movf       T3,W
            movwf      TM3

            movf       MT,W
            movwf      MTT

            movf       D,W
            movwf      MD

            goto       Entry

SetUHF      movf       U1,W        ; fill registers with proper values
            movwf      TM1
            movf       U2,W
            movwf      TM2
            movf       U3,W
            movwf      TM3

            movf       UT,W
            movwf      MTT

            movf       UD,W
            movwf      MD

            goto       Entry

;UßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßU
;U The main cycle end                                                     U
;UÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜU

            end

