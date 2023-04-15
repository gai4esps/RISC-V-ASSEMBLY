#function that sums two numbers 
.text 
li a0, 2
li a1, 2
jal ra, somma 


somma: 
add a0, a0, a1 #the function knows that the arguments are into a0 and a1 
jalr zero, ra, 0 
