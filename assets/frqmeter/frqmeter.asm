;**************************************************************************
; FILE:      frqmeter.asm                                                 *
; CONTENTS:  Simple low-cost digital frequency meter using a PIC 16C54    *
; COPYRIGHT: MadLab Ltd. 1996-2003                                        *
; AUTHOR:    James Hutchby                                                *
; UPDATED:   01/12/03                                                     *
;**************************************************************************

     list p=16C54

     include "p16c5x.inc"

     __config _HS_OSC & _WDT_ON & _CP_ON

     __idlocs h'BA10'

     errorlevel -305


;**************************************************************************
;                                                                         *
; Summary                                                                 *
;                                                                         *
;**************************************************************************

; The following software functions as a frequency meter with an input signal
; range of 15Hz to ~ 8MHz and with an accuracy of +/- 1Hz.

; Signal pulses are counted over a fixed time interval of 1/8 second or
; 1 second. High frequency pulses are counted over 1/8 s to make the meter
; more responsive with no loss of displayed accuracy.

; Pulses are counted using the real time clock/counter (RTCC) of the PIC,
; which is set to increment on rising edges on the RTCC pin. The 8-bit
; hardware register is extended by software into a 24-bit pulse counter.
; If the RTCC rolls over (msb 1 -> 0) between successive polls then the
; high two bytes of the pulse counter are incremented.

; The RTCC is unable to count more than one pulse per instruction cycle
; (per 4 clock cycles) so the prescaler is used at frequencies above
; 5MHz (20MHz clock / 4) and also to ensure that pulses are not lost
; between polls of RTCC (which would happen if more than 128 pulses were
; received).

; Timing is based on a software loop of known execution period which is
; iterated using a 16-bit loop counter. The loop duration is 20 us which
; gives integer iteration counts to time 1 s (50 000) and 1/8 s (6 250).


; The frequency in binary is converted to decimal using a powers-of-ten
; lookup table. The binary powers of ten are repeatedly subtracted from
; the frequency to determine the individual decimal digits. The decimal
; digits are stored at the 7 bytes at 'digits'. Leading zeroes are then
; suppressed and the four significant digits are converted to LED data
; for the 7-segment displays using individual lookup tables.


; The signal frequency is displayed on four 7-segment displays. The displays
; are multiplexed which means that only one display is enabled at any one
; time. The variable 'disp_index' contains the index of the currently
; enabled display. Each display is enabled in turn at a sufficient frequency
; that no flicker is discernable. A 5-bit prescaler ('disp_timer') is used
; to set the multiplexing frequency to around 1KHz.


; The display always shows the signal frequency in KHz, according to the
; following table:

; -----------------------
; | Frequency | Display |
; -----------------------
; | < 1Hz     |       0 |
; | 1Hz       |   0.001 |
; | 10Hz      |   0.010 |
; | 100Hz     |   0.100 |
; | 1.000KHz  |   1.000 |
; | 10.00KHz  |   10.00 |
; | 100.0KHz  |   100.0 |
; | 1.000MHz  |   1000. |
; | > 8MHz    |       E |
; -----------------------

; Underflows (frequencies less than 1Hz) or no signal at all are displayed
; as a single zero, and overflows (frequencies greater than 8MHz) are
; displayed as the letter 'E' (for error).


; Use is made of the indirection register of the PIC (FSR). This is set to
; point to a register in the register file which is then accessed using the
; dummy register address of 0.

; A pecularity of the PIC's instruction set should be noted. The subtraction
; instruction (subwf) does not behave as one would expect. Specifically the
; carry flag is complemented. In other words a subtraction that underflows
; clears the carry flag rather than sets it. This should be borne in mind
; when studying the multi-byte arithmetic macros that involve subtraction.


;**************************************************************************
;                                                                         *
; Port assignments                                                        *
;                                                                         *
;**************************************************************************

PORTA_IO       equ  b'0000'        ; port A I/O mode (all output)
PORTB_IO       equ  b'00000000'    ; port B I/O mode (all output)

LEDS_PORT      equ  PORTB          ; 7-segment LEDs port

ENABLE_PORT    equ  PORTA          ; display enable port
ENABLE0        equ  1              ; display #0 enable bit (0 = enable)
ENABLE1        equ  0              ; display #1 enable bit (0 = enable)
ENABLE2        equ  2              ; display #2 enable bit (0 = enable)
ENABLE3        equ  3              ; display #3 enable bit (0 = enable)


;**************************************************************************
;                                                                         *
; Constants and timings                                                   *
;                                                                         *
;**************************************************************************

; processor clock frequency in Hz (20MHz)
CLOCK     equ  d'20000000'

; microseconds per timing loop
TIME      equ  d'20'

; clock cycles per timing loop
CYCLES    equ  TIME*CLOCK/d'1000000'


;**************************************************************************
;                                                                         *
; File register usage                                                     *
;                                                                         *
;**************************************************************************

     cblock h'07'

     tens_index               ; index into the powers-of-ten table
     divi:3                   ; power of ten (24 bits)

     TMR0_                    ; previous RTCC

     counter:2                ; 16-bit counter (msb first)
     delay                    ; delay loop counter

     freq:3                   ; frequency in binary (24 bits)
     digits:7                 ; frequency as decimal digits (7 bytes)

     display0                 ; display #0 data
     display1                 ; display #1 data
     display2                 ; display #2 data
     display3                 ; display #3 data

     disp_index               ; index of the enabled display (0 to 3)
     disp_timer               ; display timer (5 bits)

     endc


;**************************************************************************
;                                                                         *
; Macros                                                                  *
;                                                                         *
;**************************************************************************

routine   macro label              ; routine
label
          endm


;--------------------------------------------------------------------------
; macros to implement lookup tables - these macros hide the PIC syntax
; used and make the source code more readable
;--------------------------------------------------------------------------

table     macro label              ; define lookup table
label     addwf PCL
          endm

entry     macro value              ; define table entry
          retlw value
          endm

index     macro label              ; index lookup table
          call label
          endm


;--------------------------------------------------------------------------
; add with carry - adds the w register and the carry flag to the file
; register f, returns the result in f with the carry flag set if overflow
;--------------------------------------------------------------------------

addcwf    macro f

          local add1,add2

          bnc add1                      ; branch if no carry set

          addwf f                       ; add byte

          incf f                        ; add carry
          skpnz
          setc

          goto add2

add1      addwf f                       ; add byte

add2
          endm


;--------------------------------------------------------------------------
; subtract with no carry - subtracts the w register and the no carry flag
; from the file register f, returns the result in f with the no carry flag
; set if underflow
;--------------------------------------------------------------------------

subncwf   macro f

          local sub1,sub2

          bc sub1                       ; branch if carry set

          subwf f                       ; subtract byte

          skpnz                         ; subtract no carry
          clrc
          decf f

          goto sub2

sub1      subwf f                       ; subtract byte

sub2
          endm


;--------------------------------------------------------------------------
; macro to perform 24-bit addition - adds the three bytes at op2 to the
; three bytes at op1 (most significant bytes first), returns the result in
; op1 with op2 unchanged and the carry flag set if overflow
;--------------------------------------------------------------------------

add24     macro op1,op2                 ; op1 <= op1 + op2

          movfw op2+2                   ; add low byte
          addwf op1+2

          movfw op2+1                   ; add middle byte
          addcwf op1+1

          movfw op2+0                   ; add high byte
          addcwf op1+0

          endm


;--------------------------------------------------------------------------
; macro to perform 24-bit subtraction - subtracts the three bytes at op2
; from the three bytes at op1 (most significant bytes first), returns the
; result in op1 with op2 unchanged and the no carry flag set if underflow
;--------------------------------------------------------------------------

sub24     macro op1,op2                 ; op1 <= op1 - op2

          movfw op2+2                   ; subtract low byte
          subwf op1+2

          movfw op2+1                   ; subtract middle byte
          subncwf op1+1

          movfw op2+0                   ; subtract high byte
          subncwf op1+0

          endm


          org 0


;**************************************************************************
;                                                                         *
; Lookup tables                                                           *
;                                                                         *
;**************************************************************************

;--------------------------------------------------------------------------
; 7-segment LED data tables (note: each 7-segment display has a separate
; table because of the way the pcb is designed)
;--------------------------------------------------------------------------

BLANK     equ  d'10'               ; blank display
ERR       equ  d'11'               ; indicates overflow
TEST      equ  d'12'               ; power-on display test

DP0       equ  7                   ; display #0 decimal point bit
DP1       equ  0                   ; display #1 decimal point bit
DP2       equ  7                   ; display #2 decimal point bit
DP3       equ  0                   ; display #3 decimal point bit


          table LEDS0

; A = 2, B = 3, C = 6, D = 5, E = 4, F = 0, G = 1, DP = 7

          entry b'01111101'        ; ABCDEF. = '0'
          entry b'01001000'        ; .BC.... = '1'
          entry b'00111110'        ; AB.DE.G = '2'
          entry b'01101110'        ; ABCD..G = '3'
          entry b'01001011'        ; .BC..FG = '4'
          entry b'01100111'        ; A.CD.FG = '5'
          entry b'01110011'        ; ..CDEFG = '6'
          entry b'01001100'        ; ABC.... = '7'
          entry b'01111111'        ; ABCDEFG = '8'
          entry b'01001111'        ; ABC..FG = '9'

          entry b'00000000'        ; ....... = ' '
          entry b'00110111'        ; A..DEFG = 'E'
          entry b'11111111'        ; all segments on


          table LEDS1

; A = 2, B = 1, C = 4, D = 6, E = 7, F = 3, G = 5, DP = 0

          entry b'11011110'        ; ABCDEF. = '0'
          entry b'00010010'        ; .BC.... = '1'
          entry b'11100110'        ; AB.DE.G = '2'
          entry b'01110110'        ; ABCD..G = '3'
          entry b'00111010'        ; .BC..FG = '4'
          entry b'01111100'        ; A.CD.FG = '5'
          entry b'11111000'        ; ..CDEFG = '6'
          entry b'00010110'        ; ABC.... = '7'
          entry b'11111110'        ; ABCDEFG = '8'
          entry b'00111110'        ; ABC..FG = '9'

          entry b'00000000'        ; ....... = ' '
          entry b'11101100'        ; A..DEFG = 'E'
          entry b'11111111'        ; all segments on


          table LEDS2

; A = 2, B = 3, C = 6, D = 5, E = 4, F = 0, G = 1, DP = 7

          entry b'01111101'        ; ABCDEF. = '0'
          entry b'01001000'        ; .BC.... = '1'
          entry b'00111110'        ; AB.DE.G = '2'
          entry b'01101110'        ; ABCD..G = '3'
          entry b'01001011'        ; .BC..FG = '4'
          entry b'01100111'        ; A.CD.FG = '5'
          entry b'01110011'        ; ..CDEFG = '6'
          entry b'01001100'        ; ABC.... = '7'
          entry b'01111111'        ; ABCDEFG = '8'
          entry b'01001111'        ; ABC..FG = '9'

          entry b'00000000'        ; ....... = ' '
          entry b'00110111'        ; A..DEFG = 'E'
          entry b'11111111'        ; all segments on


          table LEDS3

; A = 2, B = 1, C = 4, D = 6, E = 7, F = 3, G = 5, DP = 0

          entry b'11011110'        ; ABCDEF. = '0'
          entry b'00010010'        ; .BC.... = '1'
          entry b'11100110'        ; AB.DE.G = '2'
          entry b'01110110'        ; ABCD..G = '3'
          entry b'00111010'        ; .BC..FG = '4'
          entry b'01111100'        ; A.CD.FG = '5'
          entry b'11111000'        ; ..CDEFG = '6'
          entry b'00010110'        ; ABC.... = '7'
          entry b'11111110'        ; ABCDEFG = '8'
          entry b'00111110'        ; ABC..FG = '9'

          entry b'00000000'        ; ....... = ' '
          entry b'11101100'        ; A..DEFG = 'E'
          entry b'11111111'        ; all segments on


;--------------------------------------------------------------------------
; table to control which 7-segment display is enabled (displays are common
; cathode so pulled low to enable)
;--------------------------------------------------------------------------

          table enable_table

          entry b'1111'-(1<<ENABLE0)
          entry b'1111'-(1<<ENABLE1)
          entry b'1111'-(1<<ENABLE2)
          entry b'1111'-(1<<ENABLE3)


;--------------------------------------------------------------------------
; powers-of-ten table (24 bits, most significant byte first)
;--------------------------------------------------------------------------

          table tens_table

power     macro value

          entry value>>d'16'            ; high byte
          entry (value>>8)&h'ff'        ; middle byte
          entry value&h'ff'             ; low byte

          endm

          power d'1000000'
          power d'100000'
          power d'10000'
          power d'1000'
          power d'100'
          power d'10'
          power d'1'


;**************************************************************************
;                                                                         *
; Procedures                                                              *
;                                                                         *
;**************************************************************************

;--------------------------------------------------------------------------
; converts a character into LEDs data for the 7-segment displays, fed with
; the character in w
;--------------------------------------------------------------------------

conv      macro LEDS,DP,display         ; macro for duplicate code

          movwf display                 ; save decimal point bit (msb)
          andlw h'7f'                   ; mask bit
          index LEDS                    ; index LEDs table
          btfsc display,7
          iorlw 1<<DP                   ; include decimal point
          movwf display                 ; set display data register

          retlw 0

          endm

          routine conv_char0            ; display #0
          conv LEDS0,DP0,display0

          routine conv_char1            ; display #1
          conv LEDS1,DP1,display1

          routine conv_char2            ; display #2
          conv LEDS2,DP2,display2

          routine conv_char3            ; display #3
          conv LEDS3,DP3,display3


;--------------------------------------------------------------------------
; counts pulses, fed with the number of loop iterations in 'counter',
; returns the number of pulses in 'freq' (clock cycles in [])
;--------------------------------------------------------------------------

          routine count_pulses

          clrf freq+0                   ; clear pulse counter
          clrf freq+1
          clrf freq+2

          clrf TMR0_                    ; initialise RTCC
          clrf TMR0

          nop                           ; 2 instruction cycle delay
          nop                           ; after writing to RTCC

; -- start of timing loop --

; the following timing loop must take CYCLES clock cycles in total per
; iteration, therefore [80] + WAIT * [16] + [96] = [CYCLES]

WAIT      equ  (CYCLES-d'80'-d'96')/d'16'

count1    movlw display0                ; use the indirection register [4]
          addwf disp_index,w            ; to get the LEDs data for the [4]
          movwf FSR                     ; current 7-segment display [4]
          movfw 0                       ; [4]

          movwf LEDS_PORT               ; set the LEDs [4]

          movfw disp_index              ; enable the current 7-segment [4]
          index enable_table            ; display [8 + 8 + 8]
          movwf ENABLE_PORT             ; [4]

          incf disp_timer               ; increment display timer [4]
          btfsc disp_timer,5            ; (5-bit prescaler) [8/4]
          incf disp_index               ; next display if rolled over [4]
          bcf disp_timer,5              ; [4]
          bcf disp_index,2              ; ensure display index = 0 to 3 [4]

          movlw WAIT                    ; delay loop iterations [4]
          movwf delay                   ; [4]

; the delay loop always takes the same number of cycles to execute [16],
; including the last iteration of the loop

count2    clrwdt                        ; clear watchdog timer [4]
          decfsz delay                  ; [4/8]
          goto count2                   ; [8]
          nop                           ; [4]

; the following fragments of code always take the same number of clock
; cycles to execute, irrespective of whether the skips take place or not

          nop                           ; [4]

          movfw TMR0                    ; least significant byte of [4]
          movwf freq+2                  ; pulse counter [4]

          movlw 1                       ; determine if RTCC has rolled [4]
          btfss TMR0_,7                 ; over (rolled over if msb was [8/4]
          clrw                          ; previously set and now isn't) [4]
          btfsc freq+2,7                ; [8/4]
          clrw                          ; [4]

          addwf freq+1                  ; increment high bytes of pulse [4]
          skpnc                         ; counter if low byte rolled [8/4]
          incf freq+0                   ; over [4]

          btfsc freq+0,7                ; overflow (freq > 7fffffh) ? [8/4]
          goto count3                   ; branch if yes

          movfw freq+2                  ; save previous RTCC [4]
          movwf TMR0_                   ; [4]

          tstf counter+1                ; decrement loop counter [4]
          skpnz                         ; [8/4]
          decf counter+0                ; [4]
          decf counter+1                ; [4]

          movfw counter+0               ; counter = 0 ? [4]
          iorwf counter+1,w             ; [4]
          skpz                          ; [8/4]
          goto count1                   ; loop if not [8]

; -- end of timing loop --

          movfw TMR0                    ; get final RTCC
          movwf freq+2

          movlw 1                       ; determine if RTCC has rolled
          btfss TMR0_,7                 ; over (rolled over if msb was
          clrw                          ; previously set and now isn't)
          btfsc freq+2,7
          clrw

          addwf freq+1                  ; increment high bytes of pulse
          skpnc                         ; counter if low byte rolled
          incf freq+0                   ; over

count3    retlw 0


;--------------------------------------------------------------------------
; main entry point
;--------------------------------------------------------------------------

          routine main_entry

          movlw PORTA_IO                ; initialise port A
          tris PORTA
          clrf PORTA

          movlw PORTB_IO                ; initialise port B
          tris PORTB
          clrf PORTB

          clrf disp_index               ; initialise display index and
          clrf disp_timer               ; display timer

          movlw TEST                    ; test all LED segments
          call conv_char0
          movlw TEST
          call conv_char1
          movlw TEST
          call conv_char2
          movlw TEST
          call conv_char3

          movlw b'000111'               ; display the test pattern
          option
          clrf counter+0
          clrf counter+1
          call count_pulses

          movlw BLANK                   ; blank the display
          call conv_char0
          movlw BLANK
          call conv_char1
          movlw BLANK
          call conv_char2
          movlw BLANK
          call conv_char3


;--------------------------------------------------------------------------
; main loop
;--------------------------------------------------------------------------

          routine main_loop

          movlw PORTA_IO                ; re-initialise ports
          tris PORTA
          movlw PORTB_IO
          tris PORTB

ITERS     equ  CLOCK/CYCLES             ; number of loop iterations

          clrwdt                        ; source - transition on RTCC pin
          movlw b'100000'               ; edge - low-to-high transition
          option                        ; prescaler - assigned to RTCC, 1:2

          movlw high (ITERS/8)          ; high byte
          movwf counter+0
          movlw low (ITERS/8)           ; low byte
          movwf counter+1

          call count_pulses             ; count pulses for 1/8 s

          movlw 4                       ; multiply freq by 16 to adjust
          movwf counter                 ; for the prescaling (1:2) and
loop1     clrc                          ; the timing period (1/8 s)
          rlf freq+2
          rlf freq+1
          rlf freq+0
          decfsz counter
          goto loop1

          tstf freq+0                   ; no loss of displayed accuracy
          bnz loop2                     ; (4 significant digits) if the
          movlw high d'10000'           ; error is 1 part in 10000
          subwf freq+1,w
          bc loop2                      ; branch if freq > 10KHz

          movlw b'000111'               ; recommended by Microchip when
          option                        ; changing prescaler assignment
          clrf TMR0                     ; from RTCC to WDT

          movlw b'101111'               ; source - transition on RTCC pin
          option                        ; edge - low-to-high transition
          clrwdt                        ; prescaler - not assigned to RTCC

          movlw high ITERS              ; high byte
          movwf counter+0
          movlw low ITERS               ; low byte
          movwf counter+1

          call count_pulses             ; count pulses for 1 s

loop2     movfw freq+0                  ; underflow (freq = 0) ?
          iorwf freq+1,w
          iorwf freq+2,w
          bz freq_underflow             ; branch if yes

          btfsc freq+0,7                ; overflow (freq > 7fffffh) ?
          goto freq_overflow            ; branch if yes


;--------------------------------------------------------------------------
; converts the frequency from 24-bit binary to decimal digits
;--------------------------------------------------------------------------

          routine convert_freq

          clrf tens_index               ; initialise the table index

          movlw digits                  ; initialise the indirection
          movwf FSR                     ; register

conv1     movfw tens_index              ; fetch the next power of ten
          index tens_table              ; (24 bits) from the lookup table
          movwf divi+0                  ; and store in divi
          incf tens_index

          movfw tens_index
          index tens_table
          movwf divi+1
          incf tens_index

          movfw tens_index
          index tens_table
          movwf divi+2
          incf tens_index

          clrf 0                        ; clear the decimal digit

conv2     sub24 freq,divi               ; repeatedly subtract divi from
          bnc conv3                     ; freq (24-bit subtraction) until
          incf 0                        ; underflow while incrementing
          goto conv2                    ; the decimal digit

conv3     add24 freq,divi               ; ready for next digit

          incf FSR                      ; step to next decimal digit

          movlw 7*3                     ; 7 x 3-byte entries in the table
          subwf tens_index,w
          bnz conv1                     ; loop until end of table


;--------------------------------------------------------------------------
; displays the frequency in decimal
;--------------------------------------------------------------------------

          routine display_freq

          bsf digits+3,7                ; set the decimal point indicating
                                        ; the frequency in KHz

; display the decimal digits according to the following rules:

; 000000A => "0.00A"
; 00000AB => "0.0AB"
; 0000ABC => "0.ABC"
; 000ABCD => "A.BCD"
; 00ABCDE => "AB.CD"
; 0ABCDEF => "ABC.D"
; ABCDEFG => "ABCD."

          movlw digits                  ; find the first significant
          movwf FSR                     ; digit by stepping over leading
          tstf 0                        ; zeroes
          bnz disp1
          incf FSR
          tstf 0
          bnz disp1
          incf FSR
          tstf 0
          skpnz
          incf FSR

disp1     movfw 0                       ; convert the four digits to
          call conv_char0               ; LED display data
          incf FSR
          movfw 0
          call conv_char1
          incf FSR
          movfw 0
          call conv_char2
          incf FSR
          movfw 0
          call conv_char3


          goto main_loop                ; end of main loop


;--------------------------------------------------------------------------
; frequency underflow (frequency < 1Hz)
;--------------------------------------------------------------------------

          routine freq_underflow

          movlw BLANK                   ; display underflow as "   0"
          call conv_char0
          movlw BLANK
          call conv_char1
          movlw BLANK
          call conv_char2
          movlw 0
          call conv_char3

          goto main_loop


;--------------------------------------------------------------------------
; frequency overflow (frequency > 8MHz)
;--------------------------------------------------------------------------

          routine freq_overflow

          movlw BLANK                   ; display overflow as "   E"
          call conv_char0
          movlw BLANK
          call conv_char1
          movlw BLANK
          call conv_char2
          movlw ERR
          call conv_char3

          goto main_loop


;--------------------------------------------------------------------------
; reset vector
;--------------------------------------------------------------------------

          org h'1ff'

          goto main_entry


          end
