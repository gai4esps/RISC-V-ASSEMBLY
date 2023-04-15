.data
.word 11, 6

.text
lui s0, 0x10010
lw a0, 0(s0) #loads 6 in a0
lw t0 4(s0) #loads 11 in t0

bgt a0, t0, stampa
lw a0, 4(s0)

stampa: li a7, 1
ecall
li a7, 10
ecall
