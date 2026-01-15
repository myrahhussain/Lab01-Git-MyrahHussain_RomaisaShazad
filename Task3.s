.text
.globl main
main:
    li x20, 5 # a = 5
    li x21, 0 # b = 0
    addi x21, x21, 0 # b = b + 0
    addi x21, x21, 0 # b = b + 0
    addi x20, x21, 32 # a = b + 32
    li x22, 0 # d = 0
    add x22, x20, x21 # d = a + b
    li x23, 5 # storing 5
    sub x22, x22, x23 # d = d - 5
    li x24, 0 # new variable to store a - d
    sub x24, x20, x22 # f = a - d
    li x25, 0 # new var to store b - a
    sub x25, x21, x20 # g = b - a
    li x26, 0 # e = 0
    add x26, x24, x25 # e = f + g
    add x26, x26, x22 # e = e + d
    add x26, x26, x20 # e = e + a
    add x26, x26, x21 # e = e + b
    add x26, x26, x22 # e = e + d
    add x26, x26, x26 # e = e + e

end:
    j end
