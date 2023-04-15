.data
.word 1
.asciz "Zero"
.asciz "Non zero"

.text
lui s0, 0x10010         #loads address of 1 in s0
lw t0, 0(s0)            #loads 1 in t0
ori a0, s0, 4           #stores in a0 address of string "Zero"
beq t0, zero, salta     #if t0 and zero are equal go to salta
ori a0, s0, 9           #stores in a0 address of string "Non zero"
salta: ori a7, zero, 4  #stores in a7 number 4 (print string code)
ecall                    
ori a7, zero, 10        #stores in a7 code 10 exit code
ecall 