.............[org 0x0100]

; start of code 

xor ax,ax 
xor bx,bx

mov ax ,[num1]
mov bx ,[num1+1]
add ax,bx


mov [num2], ax 

; exit .. 

xor ax,ax 
xor bx,bx

mov ax,0x4c00
int  0x21                ; interupt     



num1 : db 2,3
num2 : db 0

