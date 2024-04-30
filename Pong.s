start:
    li x1 1 
    li x2 0x20
    li x3 0x7
    li x4 2
    li x5 1
    li x6 15
    li x7 60
    
    li x9 7
    li x10 7
    li x11 7
    li x12 12
loop:
    bne x2 x7 nRight
    li x4 -2
    beq x0 x0 nLeft
nRight:
    bne x2 x0 nLeft
    li x4 2
nLeft:
    bne x3 x6 nUp
    li x5 -1
    beq x0 x0 move
nUp:
    bne x3 x0 nDown
    li x5 1
nDown:
move:
    lw x17 64(x0)
    sw x1 68(x0)
    sw x0 68(x0)
    
    and x13 x17 x1
    bne x13 x1 p2nUp
    addi x11 x11 1
p2nUp:
    srl x17 x1 x17
    and x13 x17 x1  
    bne x13 x1 p2nDown
    addi x11 x11 -1
p2nDown:
    srl x17 x1 x17
    and x13 x17 x1  
    bne x13 x1 p1nUp
    addi x10 x10 1
p1nUp:
    srl x17 x1 x17
    and x13 x17 x1  
    bne x13 x1 p1nDown
    addi x10 x10 -1
p1nDown: 
    add x3 x3 x5
    sll x8 x3 x1
    sll x18 x10 x9
    sll x19 x11 x9
    sw x0 0(x2)
    add x2 x2 x4
    sw x8 0(x2)
    sw x18 0(x0)
    sw x19 60(x0)
    beq x0 x0 loop
    