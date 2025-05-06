.data 
    ival:   .word 1
    gval: 	.word 100
	hval:	.word 200
	fval:	.word 0 

.text
.globl main
main:

lw $t3, ival
lw $t0, fval
lw $t1, hval
lw $t2, gval

ori $t4, 10
slt $t5, $t4, $t3

beq $t5, $zero, true
sub $t0, $t1, $t2
j endif
true:
add $t0, $t1, $t2
endif:

sw $t0, fval

li	 $v0, 1
move	$a0, $t0
syscall
li	$v0,10
syscall