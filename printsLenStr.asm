# Write a program that computes the length of a string and prints it to the console.
.data
.asciz ""

.text
ori a0, zero, 0 #our counter in a0 is at zero 
lui s0, 0x10010 #in s0 address of first letter of string
lb t0, 0(s0) #in t0 the letter in address s0 
loop: beq t0, zero, salta #if letter is zero (end string) goes to salta 
#if letter not zero
addi a0, a0, 1 #adds 1 to counter 
addi s0, s0, 1 #adds one to address
lb t0, 0(s0) #goes to take next letter LOAD BYTE not WORD
beq zero, zero, loop #goes to the if condition 

salta: ori a7, zero, 1
ecall
ori a7, zero, 10
ecall
