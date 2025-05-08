.data
    sum: .word 0
    A: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11
    idx: .word 0
    num: .word 10

.text
.globl main

main:

    la $t0, A   
    lw $t1, idx
    lw $t2, num
    lw $t3, sum
    ori $t1, $zero, 0
    

    ori $t5, $t0, 0
loop:
    
    lw $t5, 0($t5)
    slt $t4, $t1, $t2
    bne $t4, $zero, exit
    add $t3, $t3, 0($t5) 
    
    addi $t1, $t1, 1
    sll $t5, $t1, 2
    add $t5, $t5, $t0
    j loop
    
exit:
    sw $t3, sum
    
    li $v0, 1
    move $a0, $t3
    syscall

    li $v0, 10
    syscall