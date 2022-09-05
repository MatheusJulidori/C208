.text
	# X = 5 + 4 --> Tipo R
	# A = $t1 = 5
	# B = $t2 = 4
	# X = $t3 => 9
	# X = A + B --> $t3 = $t2 + $t1
	
	#Load Immediate = LI carregar valor em registrador
	
	li $t1, 5
	li $t2, 4
	
	#Soma SEMPRE EM HEXA , portanto 10d + 20d = 
	
	add $t3,$t2,$t1 # X = A + B
	
	
	# Exemplo Tipo I
	# X = 10
	# Z = X + 125
	
	li $t4, 10
	
	addi $t5,$t4,125
	
	#Multiplicação
	
	mul $t6,$t4,$t3 # Tipo R -> $t6 = $t4 * $t3
	mul $t7,$t4,10  # Tipo I -> %t7 = $t4 * 10
	
	#Divisão -> Funciona Igual multiplicação
	
	
	
	