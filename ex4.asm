.data
    Array: .word 1, 2, 3, 4, 5, 6
    sum: .word 0
    N: .word 6

.text
.globl main
main:

    la $t0, Array
    lw $t1, sum
    lw $t2, N
    ori $t3, $zero, 0
    ori $t4, $zero, 2

    ori $t7, $t0, 0
loop:
    lw $t7, 0($t7)
    add $t1, $t1, $t7

    add $t3, $t3, $t4
    sll $t7, $t3, 2
    add $t7, $t7, $t0
    bne $t3, $t2, loop




li	 $v0, 1
move	$a0, $t1

syscall
li	$v0,10
syscall