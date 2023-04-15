
#build a function that takes an array and arranges it in such a way that the first item is the minimum 
.data 
n: .word 3 
v: .word 3, 1, 5

.text
min: mv t0, a0
lw a2, 0(a0)
addi t0, t0, 4
addi a1, a1, -1 #è una funzione quindi è scontato che in a1 ci sia len
ciclo: ble a1, zero, fine
lw t1, 0(t0) 
bge t1, a2, salta
lw t1, 0(a0)
sw a2, 0(t0)
mv a2, t1 

salta: addi t0, t0, 4 
addi a1, a1, -1 
beq zero, zero, ciclo

fine: jalr zero, ra, 0
