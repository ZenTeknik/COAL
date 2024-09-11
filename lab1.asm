[org 0x0100]

; start of code 

mov  ax, [Num1]             ; move the constant 5 into register ax 
mov  bx, [Num2]            

add  Ax, bx             ; add value of bx into the value of ax 

mov  bx, [Num3]             ; add constant 15 into the value of bx 
add  ax, bx

mov  ax, 0x4c00         ; exit .. 
int  0x21               ; .. is what the OS should do for me





; watch the listing carefully 





Num1 : dw 5
Num2 : dw 10
Num3 : dw 15

