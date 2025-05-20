.data 
    num: .word 1, 2, 3
    msg: .asciiz "returning from fn\n"


.text
.globl main
main:

    la $a0, num
    li $a1, 0
    jal swap
    
    li $v0, 4
    la $a0, msg
    syscall 

    li $v0, 10
    syscall
    
swap:
    sll $s0, $a1, 2
    add $s0, $s0, $a0
    lw $s1, 0($s0)
    lw $s2, 4($s0)
    sw $s1, 4($s0)
    sw $s2, 0($s0)
    jr $ra

