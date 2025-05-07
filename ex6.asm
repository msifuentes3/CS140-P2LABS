.data 
    Array: .word 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    N: .word 10
    sum: .word 0


.text
.globl main
main:
    la $t0, Array
    ori $t2, $zero, 10
    ori $t1, $zero, 0

    ori $t5, $t0, 0
loop:
    addi $t1, $t1, 1
    lw $t5, 0($t5)
    slt $t4, $t2, $t1
    bne $t4, $zero, exit

    add $t3, $t3, $t5
    
    sw $t3, sum

    sll $t5, $t1, 2
    add $t5, $t5, $t0
    j loop


exit:

sw $t3, sum

li	 $v0, 1
move	$a0, $t3

syscall
li	$v0,10
syscall