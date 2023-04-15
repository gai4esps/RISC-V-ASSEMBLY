#I want to count the nodes of a linked list
.data
n01: .word 7, n02
n04: .word 8, 0
n02: .word 11, n03
n03: .word -2, n04
lista: .word n01

.text 
lw s0, lista #the assembler translates this into an the instructions needed. s0 contains address to n 7 . 
li a0, 0 #counter initialized in a0 
beq s0, zero, fine
ciclo: lw s0, 4(s0) #loading the address of the next element (n02) 
addi a0, a0, 1 #increment counter
bne s0, zero, ciclo

fine: li a7, 1
ecall
li a7, 10
ecall 
