.data
message: .asciiz "Hello World\n"
.text
main:
la $t0, message
li $v0, 4
move $a0, $t0
syscall