.data
    f: .word 0
    g: .word 100
    h: .word 200
    i: .word 10
    j: .word 20 

.text
.globl main

main:

    lw $t0, f
    lw $t1, g
    lw $t2, h
    lw $t3, i
    lw $t4, j

    slt $t5, $t3, $t4
    blez $t5, false
    add $t0, $t1, $t2
    j endif

false: 
    sub $t0, $t1, $t2

endif:
    sw $t0, f

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 10
    syscall
