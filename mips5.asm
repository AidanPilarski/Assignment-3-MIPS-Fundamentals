.data
fizz:
.asciiz "Fizz"
buzz:
.asciiz "Buzz"
fizzbuzz: .asciiz "FizzBuzz"
.text
main:
li $t1, 1
li $t2, 101
li $t3, 0
li $t4, 0
li $t5, 3
li $t6, 5
loop:
addi $t3, $t3, 1
addi $t4, $t4, 1
bne $t3, $t5, notFizz
bne $t4, $t6, printFizz
j printFizzBuzz
notFizz:
bne $t4, $t6, printInt
j printBuzz
printInt:
li $v0, 1
move $a0, $t1
syscall
j printNewLine
printFizz:
li $v0, 4
la $a0, fizz
syscall
li $t3, 0
j printNewLine
printBuzz:
li $v0, 4
la $a0, buzz
syscall
li $t4, 0
j printNewLine
printFizzBuzz:
li $v0, 4
la $a0, fizzbuzz
syscall
li $t3, 0
li $t4, 0
printNewLine:
li $a0, '\n'
li $v0, 11
syscall
addi $t1, $t1, 1
bne $t1, $t2, loop