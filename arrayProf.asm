.data
#the test is not much tougher that this exercise 
.word 6
.word 3, 5, 11, 12, 21, 27

.text
lui s0, 0x10010
lw t1, 0(s0) #loadint len in t1
and a0, zero, zero #adds to a0 zero counter

ori s1, s0, 4 #i store the address next to s0 (base address), which is the address of the first element of the array 

ciclo: lw t0, 0(s1)
add a0, a0, t0 #adds the value of the array taken in t1 to the counter 
addi s1, s1, 4 #adds 4 to the original address
addi t1, t1, -1 #decrementing len 
bne t1, zero, ciclo #if t1 is not zero i will repeat the ciclo again

ori a7, zero, 1 #i call the os to print the value in a0
ecall

ori a7, zero, 10 #i call the os to exit 
ecall
