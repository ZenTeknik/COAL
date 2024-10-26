[org 0x0100]

           jmp start 
 arr2 : dw   20,2,4,10
 min : dw    0
 
 
 start :      mov bx,0
               mov ax,[arr2]
               mov [min],ax
 
 
 loop1 :    mov ax,[arr2 + bx]
            cmp ax,[min]
            jae   loop2
            
            mov [min] ,ax
 
 
loop2  :     add bx, 2 
             cmp bx ,8
             jbe loop1 
    
    
mov ax,0x4c00
int 0x21

