.data 
	x : 7

.text

        
	la $t0 , x
	lw $t1 , 0($t0) #load value from the memory
	add $a0 , $0 , $t1
	jal fib
	
	add $a0 , $v0,$0
	li $v0 , 1
	syscall
	li $v0 , 10
	syscall


fib:
	beq $a0 , 1, endfib
	beq $a0, 0, endfibz	
	
	addi $sp , $sp , -4 #first subtract four from stack pointer then add
	sw $ra  , 0($sp)
	addi $sp, $sp, -4
	sw $a0 , 0($sp)
	addi $a0 , $a0 , -1
	jal fib
	lw $a0 , 0($sp)
	addi $sp , $sp , 4
	addi $a0, $a0 , -2
	addi $sp , $sp , -4
	sw $v0 , 0($sp)
	jal fib
	lw $t0 , 0($sp)
	addi $sp , $sp , 4
	add $v0,$v0,$t0
	lw $ra , 0($sp)
	addi $sp,$sp,4
	jr $ra
	
	
endfib:
	addi $v0 , $0 , 1 # add $v0 , $0 , $a0
	jr $ra
endfibz:
	addi $v0 , $0 , 0
	jr $ra
