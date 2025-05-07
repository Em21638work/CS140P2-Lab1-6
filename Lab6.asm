..data
    sum: .word 0
    A: .word 1, 2, 3, 4, 5, 6, 7, 8, 9
    idx: .word 0

.text
.globl main

main:

    la $t0, A   
    lw $t1, idx
    lw $t2, 10
    lw $t3, sum
    ori $t1, $zero, 0
    

    ori $t5, $t0, 0
loop:
    
    lw $t5, 0($t5)
    slt $t4, $t1, $t2
    bne $t4, $zero, exit
    add $t3, $t3, 0($t5) 
    addi $t3, $t3, 1
    j loop
    
exit:

    li $v0, 1
    move $a0, $t1
    syscall

    li $v0, 10
    syscall