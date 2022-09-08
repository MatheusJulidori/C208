.text #indica que está entrando na área de programa

#INSTRUÇÃO DO TIPO R:

	addi $t1,$0,0x30 #carregando 30h(48d) em $t1
	addi $t2,$0,0x40 #carregando 40h(64d) em $t2

	add $t3,$t1,$t2  # $t3 <- $t1+$t2 = 70h(112d)
	sub $t4,$t1,$t2  # vai dar -10h, porem, em hexadecimal, usando complemento 2, irá resultar -> 30 + (-40),
			 # complemento de -40 é +60, ent0oa 30 + 60 = 90. Complemento de +90 é -10,
			 # mas o resultado que será salvo será +90. Entender como -10h(-16d)
	or $t5,$t1,$t2   # 0011 0000 ou 0100 0000 = 01110000 = 0x70
	ori $t6,$t2,0x40 # 0100 0000 ou 0100 0000 = 01000000 = 0x40
	
