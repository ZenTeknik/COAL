[org 0x0100]

; start of code 

xor ax,ax 
xor bx,bx

mov ax ,[num1]
mov [num1+4],ax

mov ax ,[num1+2]
add [num1+4],ax





; exit .. 

xor ax,ax 
xor bx,bx

mov ax,0x4c00
int  0x21                ; interupt     



num1 : dw 2,3 ,0
num2 : dw 0

