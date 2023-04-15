# Write an iterative function to sum up all the values of an array of integers.

.data
n: .word 7
v: .word -4, 3, 7, 5, -3, 5, 0 #sum is 13

.text
lui s0, 0x10010
lw t1, 0(s0) #in t1 len of list
li a0, 0 #counter in a0 

ciclo: lw t2, 4(s0) #in t2 first element of array
beq t1, zero, fine
add a0, a0, t2
addi t1, t1, -1
addi s0, s0, 4
beq zero, zero, ciclo

fine:
li a7, 1 
ecall
li a7, 10
ecall
