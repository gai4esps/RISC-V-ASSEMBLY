.data
.word 1
.asciz "Zero"
.asciz "Non zero"

.text
    lui s0, 0x10010
    lw t0, 0(s0)
    ori a0, s0, 0x04
    beq t0, zero, salta
    ori a0, s0, 0x09
salta:    ori a7, zero, 4
    ecall
    ori a7, zero, 10
    ecall