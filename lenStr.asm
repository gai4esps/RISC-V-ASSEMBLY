#Write a program that computes the length of a string and prints it to the console.

.data
.asciz "Gini la puzza"

.text
lui s0, 0x10010
li a0, 0 

ciclo: lb t0, 0(s0) #first letter 
beq t0, zero, fine
addi a0, a0, 1
addi s0, s0 , 1
beq zero, zero, ciclo

fine: li a7, 1
ecall
li a7, 10
ecall