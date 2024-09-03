                               ; task 2  (LAB-2)     
[org 0x0100]

; start of code 

mov  CL, BL              ; move the constant 1234 into register ax 
mov  AX, DX               

mov   AL, 0x12            ; add value of bx into the value of ax 
mov   AX,0x1234 
mov  AX, 0xFFFF  

; exit .. 
int  0x21              ; .. is what the OS should do for me





; watch the listing carefully 



