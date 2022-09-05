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
	
	#Exercicios
	#A) 2 + 5
	
	li $s0, 2
	addi $s1,$s0,5
	
	#B) 89 + 20
	
	li $s2, 89
	addi $s3,$s2,20
	
	#C) -80 + 1234
	
	li $s4, -80
	addi $s5,$s4,1234
	
	#D) 70 - 24 --> Dar preferencia por usar addi, pois subi vira addi com o segundo numero em negativo
	
	li $s6, 2
	addi $s7,$s6,-24
	
	#E) 20 - 150
	
	li $t8, 20
	subi $t9,$t8,150