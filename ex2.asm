.data
    ival: 	.word 10
	jval:	.word 20
	val1: 	.word 100
	val2:	.word 200
	val3:	.word 0 

.text
.globl main

main:
lw $t0, val3
lw $t1, val2
lw $t2, val1
lw $t3, ival
lw $t4, jval

bne $t3, $t4, true
sub $t0, $t1, $t2 
j	endif
true:
add $t0, $t1, $t2
endif:

sw $t0,val3

li	 $v0, 1
move	$a0, $t0
syscall
li	$v0,10
syscall