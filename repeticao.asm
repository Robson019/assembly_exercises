.data

array: .space 12

.text

laco:

la $t0, array
addi $t1, $t1, 1

jal iteracao

move $a0, $t2
la $v0, 1
syscall
beq $t1, 4, sair
j laco

sair:
la $v0, 10
syscall

iteracao:

beq $t1, 1, posicao1
posicao1:
sw $t1, 0($t0)
lw $t2, 0($t0)
jr $ra

beq $t1, 2, posicao2
posicao2:
sw $t1, 4($t0)
lw $t2, 4($t0)
jr $ra

beq $t1, 3, posicao3
posicao3:
sw $t1, 8($t0)
lw $t2, 8($t0)
jr $ra