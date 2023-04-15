#arrange an array based on a number in a2 
#a1 size of array
#a2 special value
#a0 pointer of the array 
#bisogna lavorare con la head e la tail dell'array, se è minore di num si sposta alla head se invece maggiore 
#si sposta alla tail fino a che non raggiunge il numero 
.data 
n: .word 6
x: .word -1, 3, 0, 5, 7, -2
num: .word 5 
.text
f: mv t0, a0 
mv t1, a1
sll t1, t1, 2 #into t1 i put t1 times 4
add t0, t0, t1 
ciclo: lw t2, 0(a4)
bge t2, a2, salta
add a0, a0, 4

salta: addi t0, t0, 4
lw t3, 0(t0)
sw t3, 0(a0)
sw t2, 0(t0)
fine: bne a0, t0, ciclo
