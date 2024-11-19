.data
a:  .word   3
b:  .word   4
c:  .word   5
x:  .word   2
y:  .word   0

.text
main:
    lw      r1, a(r0)       ; R1 = a
    lw      r2, x(r0)       ; R2 = x
    mult    r1, r2          ; R1 = a * x
    mflo    r1
    mult    r1, r2          ; R1 = a * x * x
    mflo    r1
    lw      r3, b(r0)       ; R3 = b
    mult    r3, r2          ; R3 = b * x
    mflo    r3
    add     r1, r1,     r3  ; R1 = a * x * x + b * x
    lw      r4, c(r0)       ; R4 = c
    add     r1, r1,     r4  ; R1 = a * x * x + b * x + c
    sw      r1, y(r0)       ; y = a * x * x + b * x + c
