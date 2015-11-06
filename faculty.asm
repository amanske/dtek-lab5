

.text

addi $a0, $0, 5 			#input N! to a0

add $v0, $0, 1				#
beq $a0, 0, done1			#
beq $a0, 1, done1			#     Base cases for 0!, 1!, 2!
add $v0, $0, 2 				#
beq $a0, 2, done1			#

add $a1, $a0, $0			#set a1 to input to use for counter
addi $a2, $a1, -1			#set a2 to input -1 for counter addition

loop1: beq $a2, 1, done1		#finished if counter addition is 1
    add $a3, $0, $0			#Reset a3 (index)
    add $v0, $0, $0			#Sets result to 0
    loop2: beq $a3, $a2, done2		#finished if index reaches the counter
	addi $a3, $a3, 1		#increases index value by 1
	add $v0, $v0, $a1		#updates the return value with the value of a1
	beq $0, $0, loop2		#always jumps to start of loop
    done2:add $0, $0, $0		#nop
    addi $a2, $a2, -1			#Decrease the loop limit value by 1
    add $a1, $0, $v0			#Set a1 to new counter value
    beq $0, $0, loop1			#always jumps to start of loop
done1: add $0, $0, $0			#nop
done3: beq $0, $0, done3		#endless loop



#4!  	(4+4+4) = 12, (12+12) = 24
