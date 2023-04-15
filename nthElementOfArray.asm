#we want to take the nth element of the array
.data
.word 4
.word 6
.word 3, 5, 11, 12, 21, 27

.text
lui s0, 0x10010
lw t0, 0(s0) #stores 4 (our i)

ori s1, s0, 8 #address of first element of the array (+4 would give address of 6) 
slli t0, t0, 2 #multiplying the content of t0 by four 
add s1, s1, t0 #adds i times 4 to the address of first element
lw a0, 0(s1) #loads to a0 the element at address s1 

ori a7, zero, 1
ecall

ori a7, zero, 10
ecall

#the address of the wanted item is i times 4 