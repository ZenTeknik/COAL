                               ; task 1   (LAB-2)     
[org 0x0100]

; start of code 

mov  ax, 0x1234              ; move the constant 1234 into register ax 
mov  bx, 0xABFC               

mov   cx, 0xB100             ; add value of bx into the value of ax 

mov dx, 0xB800 

mov  ax, 0x4c00         ; exit .. 
int  0x21              ; .. is what the OS should do for me





; watch the listing carefully 
