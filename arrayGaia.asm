.data
.word 6
.word 3, 5, 11, 12, 21, 27 

.text
lui s0, 0x10010
lw t0, 0(s0) #lunghezza dell'array in t0
lui t1, 0x10010004
beq t0, zero, fine #se len(array) = 0 allora va direttamente alla fine

lw t2, 0(t1) #legge valore dell'array all'indirizzo base in t1
add a0, a0, t2 #somma
ori t1, t1, 4 #aggiunge 4 all'indirizzo base (legge elementi successivi) 

fine: 
ecall