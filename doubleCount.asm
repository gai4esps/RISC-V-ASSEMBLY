#Count the number of items of an array v that are equal to x or to y (y and x are two numbers).
.data
n: .word 8
v: .word 5, 8, -3, 0, 1, 1, 7, 2
x: .word 6
y: .word 3

.text
la s0, v #in s0 indirizzo della lista
lw s1, n #len lista in s1
li a0, 0 #counter
lw s2, x #x in s2
lw s3, y #y in s2

ciclo: lw t0, 0(s0) #in t0 primo elemento della lista 
bne t0, s2, controllo
addi a0, a0, 1
j fine

controllo: bne t0, s3, fine
addi a0, a0, 1

fine: addi s1, s1, -1
addi s0, s0, 4
bne s1, zero, ciclo 

li a7, 1
ecall
li a7, 10
ecall 