.data
.text
main:
    addi    r1,     r0,         5   ; R1=5
start:                              ; start defines a jump target
    beqz    r1,     finished        ; branches if R1 equals zero
    nop
    nop
    addi    r1,     r1,         -1  ; R1—-
    j       start                   ; jump to start
    nop
    nop
finished:                           ; end of loop
    addi    r2,     r0,         15  ; calculates maximum of R2=15 and R3=10 and write it to R4
    addi    r3,     r0,         10
    slt     R10,    R3,         R2  ; comparison R3<R2 the result is a boolean value, i.e. 1 as true, 0 as false
    bnez    R10,    sprung          ; jumps, if the condition is true, i.e. R3<R2
    nop
    nop
    add     r4,     r0,         r3
    j       Ende
    nop
    nop
sprung:
    add     r4,     r0,         r2
Ende:
    trap    0
