#Write a program to find the maximum value in an array of integers.

.data
n: .word 5
v: .word 4, 6, -7, 13, 5

.text
lui s0, 0x10010
li a0, 0
lw t1, 0(s0) #in t1 len arr

ciclo: lw t0, 4(s0)
bgt t0, a0, maggiore
addi t1, t1, -1
addi s0, s0, 4
beq t1, zero, fine
j ciclo 

maggiore: add a0, zero, t0 
addi s0, s0, 4
addi t1, t1, -1
beq t1, zero, fine
j ciclo

fine: li a7, 1
ecall
li a7, 10
ecall 