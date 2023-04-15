#conta i valori pari in una lista

.data 
lista: .word 4, 5, 2, -2, 3, 8, 1
len: .word 7 

.text
la s0, lista

la t1, len
lw t1, 0(t1)

li a0, 0

ciclo: lw t0, 0(s0)
andi t2, t0, 1 
bne t2, zero, dispari 
addi a0, a0, 1
addi t1, t1, -1
addi s0, s0, 4
beq t1, zero, fine
beq zero, zero, ciclo 

dispari: addi t1, t1, -1
addi s0, s0, 4
beq t1, zero, fine
beq zero, zero, ciclo 

fine: li a7, 1 
ecall
li a7, 10
ecall 