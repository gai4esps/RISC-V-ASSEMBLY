#given a number, check if its even or odd. to chech we have to AND the number with one, if zero = even , if 1 = odd 
.data
n: .word 5
str1:	.asciz "Pari"
str2:	.asciz "Dispari"

.text 

lui s0, 0x10010
lw t0, 0(s0) #in t0 ho n 

andi t1, t0, 1
beq t1, zero, pari
j dispari 

pari: addi a0, s0, 4
j fine

dispari: addi a0, s0, 9
j fine 

fine: li a7, 4
ecall
li a7, 10
ecall