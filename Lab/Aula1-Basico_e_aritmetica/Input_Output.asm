.text
	#Imprime INT
	li $t0,2
	li $t1,10
	add $t2,$t1,$t0
	
	#Colocando código da função em $v0 -> Imprimir int = 1, olhar SVG para saber o código ou clicar na interrogação do lado da barrinha de run speed
	li $v0,1
	
	#Depois de dar o li em $v0, o valor a ser exibido deve estar salvo em $a0, isso pode ser feito com add,addi ou move:
	add $a0,$t2,$0 # Soma $t2 com 0 e slave em $a0
	#addi $a0,$t2,0
	#move $a0,$t2
	syscall #chamar o sistema
	
	#Entrar com um inteiro
	li $v0,5
	syscall
	
	#Salvar o valor que entrou em $v0 em $t3, para não perder a entrada quandod der um system call
	
	move $t3,$v0
