#print the sum of *only* the positive numbers in the array 

.data
n: .word 5
v: .word -2, -4, -4, 0, -45 #result should be 9 

.text 

lui s0, 0x10010
lw t0, 0(s0) #in t0 len list
li a0, 0

ciclo: lw t1, 4(s0)
blt t1, zero, next
add a0, a0, t1
addi t0, t0, -1
addi s0, s0, 4
bne t1, zero, ciclo
j fine

next: 
addi t0, t0, -1
addi s0, s0, 4
bne t1, zero, ciclo
j fine

fine: li a7, 1
ecall
li a7, 10
ecall 