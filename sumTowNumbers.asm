# function to sum two numbers


.text
addi $a0 , $zero , 5 # first parameter will send to function
addi $a1 , $zero , 6 #second parameter will be send to function
addi $a2 , $0 , 10
addi $a3 , $0 , 10
jal sum4  # call function sum

add $a0, $zero , $v0

li $v0 , 1
syscall 
li $v0 , 10
syscall

# function that summ two number
sum: 
	add $v0 , $a0, $a1
	jr $ra


sum4:
	addi $sp,$sp , -4
	sw $ra , 0($sp)
	jal sum
	addi $sp , $sp , -4
	sw $v0, 0($sp)
	add $a0 , $a2, $0
	add $a1 , $a3 , $0
	jal sum
	lw $v1 , 0($sp)
	add $v0 , $v0 , $v1
	addi $sp , $sp , 4
	
	lw $ra , 0($sp)
	addi $sp , $sp , 4
	
	jr $ra 
	
	