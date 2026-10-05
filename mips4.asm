.data
num1: .word 8
num2: .word 7
sum: .word 0
.text
main:
lw $t0, num1
lw $t1, num2
add $t2, $t0, $t1
sw $t2, sum