.text

 la $a0 , 1
 la $a1 , 3
 
 jal swap
 
 li $v0 , 1
 syscall
 li $v0 , 1
 addi $a0 , $a1, 0
 syscall  
 
 li $v0 , 10
 syscall
 
 
 
 
swap:
	addi $v0 ,  $a0,0
	addi $a0 ,  $a1,0
	addi $a1 ,  $v0,0
	jr $ra