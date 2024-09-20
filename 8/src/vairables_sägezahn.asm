mvi c,0
mvi d,0
mvi b,4

F1:
F2:
inr c
mov a,c
sub b
jnz F2        ; jump F2 if non zero
mvi c,0

inr d
cpe gebe_1_aus ; call if parity even
cpo gebe_0_aus ; call if parity odd

jmp F1


hlt


gebe_1_aus:
mvi e,1
ret

gebe_0_aus:
mvi e,0
ret













mvi a, 10     ; in 01
mov b, a
mvi a, 0
F1: inr a
mvi e, 1      ;out 04
cmp b
jnz F2
mvi a, 0
F2: jmp F1
