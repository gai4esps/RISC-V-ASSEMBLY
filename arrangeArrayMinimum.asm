#build a function that takes an array and arranges it in such a way that the first item is the minimum 
.data 
n: .word 3 
v: .word 3, 1, 5

.text
lui s0, 0x10010
lw t0, 0(s0) #len list
lw a0, 4(s0) #min 
ciclo: lw t1, 4(s0) #1ST ELEMENT 
blt t1, a0, scambia
addi s0, s0, 4 
beq zero, zero, ciclo

scambia: add a0, zero, t1 
addi s0, s0, 4
beq zero, zero, ciclo

#qui dovrei avere in a0 il minimo 

sw t1, 0(t2)
