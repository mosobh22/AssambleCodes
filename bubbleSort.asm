.data
   x: 3,8,2,10,13,9
   siz: 6
   
.text

   la $t0 , x
   la $t1 , siz
   lw $t2 , 0($t1)
   addi $t1 , $0 , 0
   fori:
   beq $t1,$t2,endfori
   add $t3,$0,$0
   sub $t4 , $t2 , $t1 
   forj:
   beq $t3 , $t4,endforj
   addi $s0, $t3, 1
   sll $s0,$s0,2
   sll $s1,$t3,2
   add $s0 , $s0 , $t0
   add $s1 , $s1 , $t0 
   lw $s3,0($s0)
   lw $s4,0($s1)
   slt $t5 , $s3 , $s4
   beq $t5, 1, endif
   add $s5 , $0 , $s3
   sw $s5 , 0($s1)
   sw $s4,0($s0)
   endif:
   addi $t3 , $t3 , 1
   j forj
   endforj:
   addi $t1 , $t1 , 1
   j fori
  endfori: 



