li x1 0b010100000
li x2 0b001100000

sw x1 4(x0)
sw x2 12(x0)

add x3 x2 x1
sw x3 24(x0)

sub x3 x2 x1
sw x3 24(x0)

and x3 x2 x1
sw x3 24(x0)

or x3 x2 x1
sw x3 24(x0)

xor x3 x2 x1
sw x3 24(x0)

li x2 3

sll x3 x2 x1
sw x3 24(x0)

srl x3 x2 x1
sw x3 24(x0)

