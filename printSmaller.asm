# Given two integers stored in the memory (in the data segment), print the smaller.

.data
.word 7
.word 2

.text
lui s0, 0x10010 #address number 2

lw a0, 0(s0) #n 2
lw t0, 4(s0) #n 7

bge t0, a0, stampaprimo
lw, a0, 4(s0) 

stampaprimo: ori a7, zero, 1
ecall
ori a7, zero, 10
ecall
