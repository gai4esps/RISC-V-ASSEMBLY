#print the number of times x appears in the array y (in this case 0) 
.data
x: .word 1 #just a number
n: .word 5 #len of array
y: .word 7, -2, 0, 1, 1 

.text
la s0, y
lw t0, x
lw s1, n 

li a0, 0

ciclo:
lw t1, 0(s0) #primo elemento dell'array in t1
beq t1, t0, aggiungi
addi s0, s0 4
addi s1, s1, -1
bne s1, zero, ciclo #                NON FUNZIONA
beq s1, zero, fine 

aggiungi: addi a0, a0 1
beq zero, zero, ciclo

fine: li a7, 1
ecall
li a7, 10
ecall 

#prof
.text
la s0, x
lw t0, x
lw s1, n

li a0, 0
ciclo: lw t1, 0(s0)
bne t1, t0, salta
add s0, a0, 1

salta: add s0, s0, 4
addi s1, s1, -1
bne s1, zero, ciclo

li a7, 1
ecall
li a7, 10
ecall