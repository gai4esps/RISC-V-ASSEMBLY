#print 1 if x is in the array y, print 0 otherwise 
.data
x: .word 6 #just a number
n: .word 5 #len of array
y: .word 7, -2, 0, 1, 1 

.text

lui s0, 0x10010 #or la(load address) s0, y 
add s0, s0, 8 #into s0 i have the address of the array 
lw s1, n

ciclo: lw, t1, 0(s0) #s0 doesnt go to initial address 
beq t1, t0, trovato 

addi s0, s0, 4 #go to next element of the array 
addi s1, s1, -1 #decrement len
bne s1, zero, ciclo #if len different from zero

li a0, 0
li a7, 1
ecall
li a7, 10
ecall
trovato: li a0, 1
li a7, 1
ecall
li a7, 10
ecall 