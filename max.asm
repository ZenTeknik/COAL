[org 0x0100] 

       jmp start 
num1 : dw  10,2, 3, 4, 5, 23
max : dw 0



start :   
          mov ax,[num1]
          mov [max],ax
          
          
          
         
l1 :   mov ax,[num1+bx]
       cmp ax,[max]
       jbe  l2
       
       
       mov [max],ax
       
       
l2 :  add bx,2
      cmp bx,12
      jne start 
      
    
     mov ax,0x4c00
     int 0x21
     
