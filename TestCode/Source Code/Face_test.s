li x5 8
li x6 8

li x1 0x70
li x2 0x1E
sll x2 x5 x2
or x1 x1 x2
sw x1 0(x6)
sw x1 44(x6)
addi x6 x6 4

li x1 0x48
li x2 0x1E
sll x2 x5 x2
or x1 x1 x2
sw x1 0(x6)
sw x1 36(x6)
addi x6 x6 4

li x1 0x64
li x2 0x40
sll x2 x5 x2
or x1 x1 x2
sw x1 0(x6)
sw x1 28(x6)
addi x6 x6 4

li x1 0x4C
li x2 0x20
sll x2 x5 x2
or x1 x1 x2
sw x1 0(x6)
sw x1 20(x6)
addi x6 x6 4

li x1 0x44
sw x1 0(x6)
addi x6 x6 4

li x1 0x64
sw x1 0(x6)
addi x6 x6 4

li x1 0x4C
sw x1 0(x6)
addi x6 x6 4

li x1 0x64
sw x1 0(x6)