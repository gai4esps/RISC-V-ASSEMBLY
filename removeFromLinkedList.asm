.data
n01: .word 8, n02
n04: .word 5, 0
n02: .word 5, n03
n03: .word -2, n04
lista: .word n01

.text
lw a0, lista 
lw a1, 4(a0)
ciclo: beq a1, zero, fine 
lw t0, 0(a1) #carico 5 in t0 
bgt t0, zero, salta 
lw a1, 4(a1) 
sw a1, 4(a0)
beq zero, zero, ciclo

salta: mv a0, a1
lw a1, 4(a1)
beq zero, zero, ciclo

fine: li a7, 10
ecall