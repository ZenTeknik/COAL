[org 0x0100]

               jmp start 
a : dw 1
sum : dw 0
reminder : dw 0


start  :  mov bh, 2 
          mov cx,10 
          mov ax, [a]
         
loop1 :   
         
          xor dx,dx
          div bh 
          
          mov  word [reminder] , dx
          cmp  word [reminder], 0
          je  fun 
          
          add bl,1
          add [a],bl
           sub cx,1
           cmp cx,0
          jnz loop1
          
          
 fun : add  word [sum],2
        add bl,1
         add [a],bl
       sub cx,1
       cmp cx,0
      jnz loop1
    
end_program:        
     mov ax,0x4c00
     int 0x21
