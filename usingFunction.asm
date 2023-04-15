#sort an array by using the arrangeArrayMinimumProf function 
.data
n: .word 6
x: .word 5, -2, 4, 3, 0. -7

.text
lw s1, n
lw s0, x
li s2, 1
ciclo: mv a1, s1
mv a0, s0
jal ra, min 
addi s0, s0, 4
addi s1, s1, -1
bne s1, s2, ciclo 

