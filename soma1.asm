.data

.text

li $t0, 2
li $t1, 2
add $t2, $t1, $t0
move $a0, $t2
li $v0, 1
syscall
li $v0, 10
syscall