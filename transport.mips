.data                           ; begin of data section
    .word   0x123
    .word   0x456
    .word   0x789

.text
main:
    ; direct addressing
    lw      r2, 8(r0)           ; loads the value from address 0x0008 into register R2
    ; indirect addressing
    addi    r1, r0,     0x0008  ; writes 0x0008 into register R1
    lw      r3, (r1)            ; loads the value from address in R1 into register R3
    ; indirect addressing with displacement
    lw      r4, 8(r1)           ; loads value from address in R1 + 0x04 into register R4
    sw      r4, (r1)            ; writes the content of register R4 to address in R1

    trap    0
