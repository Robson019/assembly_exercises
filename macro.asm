.data

var1: .word 2
var2: .word 2

.macro ola_mundo (%str)
.data
string: .asciiz %str
.text
la $a0, string
li $v0, 4
syscall
.end_macro

.macro multiplicacao (%x, %x1)

mul $t0, %x, %x1
move $a0, $t0
li $v0, 1
syscall
.end_macro

.text

.globl main

main:	

ola_mundo ("Olá mundo \n")

la $t0, var1
la $t1, var2
lw $t2, ($t0)
lw $t3, ($t1)

multiplicacao ($t2, $t3)

li $v0, 10
syscall