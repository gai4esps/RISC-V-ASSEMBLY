#HOMEWORK 1, Gaia Esposito, 2066322
#Write a risc-v program that, given three integers in the data segment, prints the median. 
#(Not the largest, not the smallest, the other one). Do not use pseudo-instructions.

.data
.word 8
.word 1
.word 5

.text
lui s0, 0x10010 
lw t0, 0(s0) 
lw t1, 4(s0) 
lw t2, 8(s0) 

blt t0, t1, t0t1 
beq zero, zero, t1t0 

t1t0: blt t0, t2, pt0 
beq zero, zero, t1t0t1t2

t1t0t1t2: blt t2, t1, pt1 
beq zero, zero, pt2

t0t1: blt t0, t2, t0t1t0t2 
beq zero, zero, pt0 

t0t1t0t2: blt t1, t2, pt1 
beq zero, zero, pt2  

pt0: ori a0, t0, 0 
beq zero, zero, end

pt1: ori a0, t1, 0 
beq zero, zero, end

pt2: ori a0, t2, 0 
beq zero, zero end

end: ori a7, zero, 1 
ecall
ori a7, zero 10
ecall 
