.text
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
	
#Desafio 1
	
	li $v0,5 #Setar para entrada
	syscall #Chamar entrada
	move $t1,$v0 #mover entrada pra t1
	li $v0,1 #setar para exibir a0
	add $a0,$t1,30 #somar t1 com 30 e salvar em a0
	syscall #chamar print de a0
	
#Desafio 2	
	li $t2,54
	li $t3,45
	li $v0,1
	add $a0,$t2,$t3
	syscall
