[org 0x0100]

; start of code 

mov al,127 
add al,1
mov cl,255
add cl,1

mov ax,0x4c00

; exit .. 
int  0x21              ; .. is what the OS should do for me





; watch the listing carefully 



