
.data
    Array: .word 5, 15, 25, 35, 45
    N: .word 5
    K: .word 30
    idx: .word 0

.text
.globl main
main:

    la $t0, Array
    lw $t3, K
    ori $t1, $zero, 0

    ori $t2, $t0, 0
loop: 
    lw $t2, 0($t2)
    slt $t4, $t3, $t2
    bne $t4, $zero, exit

    addi $t1, $t1, 1
    sll $t2, $t1, 2
    add $t2, $t2, $t0
    j loop

exit:


li	 $v0, 1
move	$a0, $t1

syscall
li	$v0,10
syscall