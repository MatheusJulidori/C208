.text 

li $t1, 10
li $t2, 8

# AND / ANDI

and $t0,$t1,$t2 # t1 and t2   1010 
		#          x  1000
		#          =  1000
andi $t3,$t1,8	# t1 and 8 = 1000

#OR / ORI / NOR / XOR / XORI

#Teste lógico

slt $t4,$t1,$t2 # se t1<t2 então $t4 = 1, senão $t4 = 0
slti $t5,$t2,9 	#se $t2<9 então $%$t5 = 1, sentão $t5 = 1 

# Deslocamento de bits

sll $t6,$t1,2 	# desloca dois bits pra esqueda de t1 e salva em t6. 10 << 2 = 10*2^n, onde n é o numero de shifts e 10 é o numero salvo em t1. = 40
srl $t7,$t1,1 	# desloca um bit pra direita de t1 e salva em t7. 10 >> 1 = 10/2^n, onde n é o numero de shifts e 10 é o numero salvo em t1. = 5

#Deslocamento mantendo o numero negativo

li $t1 -10

srl $t9,$t1,1	# desloca um bit pra direta de t1,e salva em t9, sem manter o sinal negativo(complemento 2)
sra $t8,$t1,1	# desloca um bit para direita de t1 e salva em t8, mantendo o sinal negativo.