#somma gli elementi di un vettore (array)
.data
v:	.word 7
n:	.word 5, 7, 7, -2, 0, 1, 1

.text
lui s0, 0x10010 
lw t0, 0(s0) #in t0 len array
li a0, 0 #in a0 counter

ciclo: lw t1, 4(s0) #in t1 primo elemento array 
add a0, a0, t1
addi t0, t0 -1
addi s0, s0, 4
bne t0, zero, ciclo

li a7,1 
ecall
li a7, 10
ecall 