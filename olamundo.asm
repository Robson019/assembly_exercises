.data

frase: .asciiz "Olá mundo"

.text

la $a0, frase
li $v0, 4
syscall
li $v0, 10
syscall