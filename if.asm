.data

var1: .asciiz "Digite 1 para adição e 2 para subtração: "
var2: .asciiz "Entre com um valor: "
var3: .asciiz "Entre com outro valor: "

.macro soma

la $a0, var2
li $v0, 4
syscall
li $v0, 5
syscall
move $t0, $v0

la $a0, var3
li $v0, 4
syscall
li $v0, 5
syscall
move $t1, $v0

add $t2, $t1, $t0
move $a0, $t2
li $v0, 1
syscall

.end_macro

.macro subtracao

la $a0, var2
li $v0, 4
syscall
li $v0, 5
syscall
move $t0, $v0

la $a0, var3
li $v0, 4
syscall
li $v0, 5
syscall
move $t1, $v0

sub $t2, $t0, $t1
move $a0, $t2
li $v0, 1
syscall

.end_macro

.text

.globl main

main:

la $a0, var1
li $v0, 4
syscall
li $v0, 5
syscall
move $t3, $v0

beq $t3, 2, subtracao
soma: 
soma
li $v0, 10
syscall

subtracao:
subtracao
li $v0, 10
syscall