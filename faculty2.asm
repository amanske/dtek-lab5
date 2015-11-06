
.text

addi $a0, $0, 8 			#input N! to a0
addi $v0, $0, 1

start:
	beq $a0, 1, done  	# if a0 == 1 then jump
	mul $v0, $v0, $a0 	# store v0*a0 in v0
	addi $a0, $a0, -1	# decrement a0
	beq $0, $0, start	# jump unconditionally	
done: beq $0, $0, done		# nop

