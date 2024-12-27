.........[org 0x0100]

; start of code 

xor ah,ah 
xor bh,bh

mov ah ,[num1]
mov bh ,[num1+1]
add ah,bh


mov [num2], ah 

; exit .. 

xor ah,ah 
xor bh,bh

mov ax,0x4c00
int  0x21                ; interupt     



num1 : db 2,3
num2 : db 0

