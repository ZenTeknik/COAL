                              ; programm to find the minimum number 
[org 0x0100]

jmp start 


num1 : dw 10,2,4,4,6,8,1
min : dw 0


start    : 
      mov ax, [num1]
      mov [min],ax
      
      
l1 :   mov ax,[num1+bx]
       cmp ax,[min]
       jae  l2
      
        mov [min] , ax
        
        
 l2 :    add bx,2
         cmp bx,14
         jne l1
         

mov ax,0x4c00
int 0x21



