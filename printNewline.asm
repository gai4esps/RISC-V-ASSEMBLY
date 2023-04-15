.text
jal ra, acapo #jumps to acapo and registers in ra current address + 4 

addi a7, zero, 10 #closes program
ecall 


acapo: 
ori a0, zero, 10 #li a0, 10 pseudocode to add constant into register 
addi a7, zero, 11 #li a0, 11 
ecall 
jalr zero, ra, 0 #jumps back to address in ra 
