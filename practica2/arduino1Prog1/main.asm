;
; arduino1Prog1.asm
;
; Created: 2/6/2020 2:17:24 PM
; Author : pjco9
;

 LDI r16,0xFF
 OUT DDRB,r16
 JMP START
START:
 LDI r16, 0x20
 OUT PORTB, r16
 JMP DELAY1S1
ETIQUETA1:
 LDI r16, 0x00
 OUT PORTB, r16
 JMP DELAY1S2
ETIQUETA2:
 JMP START
DELAY1S1:
 LDI r18, 82
 LDI r19, 43
 LDI r20, 0
L1: DEC r20
 BRNE L1
 DEC r19
 BRNE L1
 DEC r18
 BRNE L1
 JMP ETIQUETA1
DELAY1S2:
 LDI r18, 82
 LDI r19, 43
 LDI r20, 0
L2: DEC r20
 BRNE L2
 DEC r19
 BRNE L2
 DEC r18
 BRNE L2
 JMP ETIQUETA2
