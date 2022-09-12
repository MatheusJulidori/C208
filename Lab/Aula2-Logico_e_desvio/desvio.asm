#instruções de desvio

#Condicionais: Implementando na pratica

# if(x==y) go to L2;
# a=b+c
# L2: a=b-c

.text
	li $s1,4
	li $s2,5
	li $s3,4
	li $s4,5
	
	#branch if not equals
	
	bne $s3,$s4, Else 	# Se $s3 != de S4, retorna true e vai para label Else. No caso, retorna true
	sub $s0,$s1,$s2 	#Se #s3 fosse igual, ele n iria para o else, e executaria o sub. Logo depois do sub, temos o jump para que ele não passe pelo Else.
	j Exit 			#pula para ao Exit, para que n rode a linha debaixo
	Else:
		add $s0,$s1,$2
	Exit:
	
	# bge / bgt / ble / blt / beq / bne 
	# >=  /  >  / <=  /  <  / ==  /  !=

# Repecições com WHILE
	
	li $t0
	li $t2
	WHILE: ble $t0,2, Loop
	j Exit
	Loop:
		add $t2,$t2,1 	# $t2++
		add $t0,$t0,1 	# $t0++
		j WHILE 	#Volta pro WHILE
	Exit: