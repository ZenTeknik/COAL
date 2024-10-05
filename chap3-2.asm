[org 0x100]

                            jmp start 
                


start :      xor ax,ax
             xor bx,bx

l1 :   mov ax,[num1+bx]       ; base + offset address 
        add bx,2
        cmp bx,20;
        jne l1
        
      mov [total],ax


xor ax,ax
xor bx,bx

      mov ax,0x4c00
      int 0x21
  
   num1 : dw     1, 2, 3, 4, 5, 6, 7, 8, 9
                total : dw    0 
 
