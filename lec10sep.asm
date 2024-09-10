                                  ; direct addressing and indirect addressing


[org 0x0100]

; start of code 

mov  ax, [Num1]             ; move the constant 5 into register ax 
mov  bx, [Num1+2]            

add  Ax, bx             ; add value of bx into the value of ax 

mov  bx, [Num1+4]             ; add constant 15 into the value of bx 
add  ax, bx
mov  ax, [Num1+6] 

mov  ax, 0x4c00         ; exit .. 
int  0x21               ; .. is what the OS should do for me





; watch the listing carefully 





Num1 : dw 5
     dw 10
     dw 15





