.data

valor: .word
dnum1: .asciiz "Digite o 1º número: "
dnum2: .asciiz "Digite o 2º número: "
resultado: .asciiz "O resultado foi: "

.text

.macro subtracao
la $a0, dnum1
li $v0, 4
syscall
li $v0, 5
syscall
move $t0, $v0

la $a0, dnum2
li $v0, 4
syscall
li $v0, 5
syscall
move $t1, $v0

la $a0, resultado
li $v0, 4
syscall

la $t2, valor 
sub $t3, $t0, $t1
sw $t3, ($t2)
lw $a0, ($t2)
li $v0, 1
syscall

.end_macro

.globl main

main:

subtracao

li $v0, 10
syscall
