.text
.globl main

main:



    # 4b:

    # Array A
    li x20, 1 # Value for A[0]
    sb x20, 0x100(x0) 

    li x21, 2 # Value for A[1]
    sb x21, 0x101(x0) 

    li x22, 3 # Value for A[2]
    sb x22, 0x102(x0) 

    li x23, 4 # Value for A[3]
    sb x23, 0x103(x0) 



    # Array B
    li x24, 5 # Value for B[0]
    sh x24, 0x200(x0) 

    li x25, 6 # Value for B[1]
    sh x25, 0x202(x0) 

    li x26, 7 # Value for B[2]
    sh x26, 0x204(x0) 

    li x27, 8 # Value for B[3]
    sh x27, 0x206(x0) 



    # Array C

    # i = 0 C[0] = A[0] + B[0]
    # C[0] = 1 + 5 = 6
    lb x28, 0x100(x0) # Loading A[0]
    lh x29, 0x200(x0) # Loading B[0]
    add x30, x28, x29
    sw x30, 0x300(x0) # Storing C[0] as unsigned int 

    # i = 1 C[1] = A[1] + B[1]
    # C[1] = 2 + 6 = 8
    lb x28, 0x101(x0) # Loading A[1]
    lh x29, 0x202(x0) # Loading B[1]
    add x30, x28, x29
    sw x30, 0x304(x0) # Storing C[1] as character array

    # i = 2 C[2] = A[2] + B[2]
    # C[2] =3 + 7 = 10
    lb x28, 0x102(x0) # Loading A[2]
    lh x29, 0x204(x0) # Loading B[2]
    add x30, x28, x29
    sw x30, 0x308(x0) # Storing C[2] as unsigned int 

    # i = 3 C[3] = A[3] + B[3]
    # C[3] = 4 + 8 = 12
    lb x28, 0x103(x0) # Loading A[3]
    lh x29, 0x206(x0) # Loading B[3]
    add x30, x28, x29
    sw x30, 0x30C(x0) # Storing C[3] as unsigned int 

end: 
    j end