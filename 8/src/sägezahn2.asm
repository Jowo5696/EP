;in
mvi b,a
mvi c,b

F1:
dcr c     ; decrement
mov a, c
out 04    ; gebe A in den DAC
cz reset  ; call reset if zero
jmp F1

reset:
mvi c,b
ret





mvi d, 1
F1: mvi a, 3 ; IN 01 = DB 01
mov b, a
mov c, b

F2: dcr c
jnz F2
mov a, d
adi 0
cz sig_on
cnz sig_off
mvi a, 1    ; OUT 04 = D3 04
jmp F1

sig_on: mvi a, 255
mvi d, 1
ret

sig_off: mvi a, 0
mvi d, 0
ret
