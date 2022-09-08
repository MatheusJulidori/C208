.data #Area de memória
	idade: .byte 0x22 #apesar de ser byte, ele vai pular mais um byte antes de salvar a half word
	rg: .half 0x3344
	num1: .word 0xAABBCCDD

.text
	la $t1, idade   #load address, carrego o endereço de idade em $t1
	lb $t2, 0($t1)  #load byte, pegando o endereço de t1 e extraindo o valor usando 0( )
		        #o 0($t1) pega o valor de $t1 e desloca 0 posições.
		        # Considerando o dado 0x33440022, sem deslocar eu pego 0x22
		        #deslocando 1($t1) ele pega 0x00, 2 ele pega 0x44 e 3 ele pega 0x33.
		        # Se eu colocar 4($t1) ele pega a proxima celula
		       
	lh $t3, rg      #carrega direto o valor de rg em $t3. Poderia ter feito lh $t3, 2($t1)
		        #ou feito da forma que foi feito com idade	

	lw $t4, num1 	#pega a word inteira
	lw $t5, 4($t1) 	#pega a word, deslocada 4bytes depois de $t1 -> 0xAABBCCDD