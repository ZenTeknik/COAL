[org 0x0100]

         jmp start 

num1 : dw 10,21,3,32,2
flag : db 0


start :  xor ax,ax
         xor bx,bx 
         xor dx,dx
         mov byte[flag],0
         
swap :    mov ax,[num1+bx]
          cmp ax,[num1+bx+2]
          jbe  noswap 
          
          mov dx,[num1+bx+2]
          mov [num1+bx+2],ax
          mov [num1+bx],dx
          
          mov byte[flag],1
          
          

noswap :    add bx,2
            cmp bx,10
            jne swap 
            
            cmp byte [flag],1
            je start 
            
mov ax,0x4c00
int 0x21



