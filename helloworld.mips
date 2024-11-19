.data
            .space  8
Text:       .asciiz "Hello World"
TextAdr:    .space  4

.text
main:
    daddi   r5,     r0,             Text
    sw      r5,     TextAdr(r0)
    daddi   r14,    r0,             TextAdr
    syscall 5
    syscall 0
