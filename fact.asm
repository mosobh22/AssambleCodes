

.text
addi $a0 , $0 , 6

jal fact
add $a0, $0 , $v0
addi $v0,$0 , 1
syscall

addi $v0 , $0 , 10
syscall



# function to calculate factoral 
fact:
    beq $a0 , 1 , end #branch if it eqal to 1
    
    addi $sp , $sp , -4
    sw $ra , 0($sp)
    addi $sp,$sp, -4
    sw $a0,0($sp)
    addi $a0 , $a0 , -1
    jal fact
    lw $a0 , 0($sp)
    mul $v0,$v0,$a0
    addi $sp , $sp , 4
    lw $ra , 0($sp)
    addi $sp,$sp , 4
    jr $ra


end:
addi $v0 , $0 , 1
jr $ra
