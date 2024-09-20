
; main ---
mvi b,0

F1: inr b
cpo gebe_1_aus
cpe gebe_0_aus
jmp F1

hlt
; ---

; functions ---
gebe_1_aus:
mvi c,1
ret

gebe_0_aus:
mvi c,0
ret
; ---
