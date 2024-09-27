[org 0x100]

mov bx,0
mov ax,0
mov cx,10


l1: mov ax,[num1+bx]
mov bx,2
sub cx,1
jnz l1


mov [total],ax

mov ax, 0x4c00
int 0x21

num1 : dw   1, 2,3,4,5,6,7,8,9,10
total: dw  0
