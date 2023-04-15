.data
vettore: .word 2,2,3,4,3,1,2,1,2,1,2	#5 risultato	
n: .word 11				#dim
x: .word 2				#elemento da contare

.text
la s0, vettore

la t1, n 
lw t1, 0(t1) #in t1 len lista 

la t2, x
lw t2 0(t2) #in t2 valore da trovare 

li a0, 0 #counter in a0 

ciclo: lw t0, 0(s0)
bne t0, t2, prox 
addi a0, a0, 1
addi t1, t1, -1
addi s0, s0, 4
beq t1, zero, fine
beq zero, zero, ciclo

prox: addi t1, t1, -1
addi s0, s0, 4
beq t1, zero, fine
beq zero, zero, ciclo

fine: li a7, 1
ecall
li a7, 10
ecall