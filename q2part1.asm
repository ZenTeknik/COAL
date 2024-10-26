[org 0x0100]

           jmp start 
arr1 : dw      1,2,3,4,5,6,7,8
arr2 : dw      20,2,4,10
result1 : dw   0
result2 : dw   0
min : dw       0


start : mov bx, 0
      

loop1 :     mov  ax, [arr1 + bx]
            add [result1],ax
            
            add bx,2
            cmp bx,6
            jbe loop1
            
loop2 :    mov  dx,[arr1 + bx]
           add [result2], dx
           
           add bx ,2
           cmp bx,14
           jbe loop2
           
  
  
; here is the code for  finding the minimum number 

               mov bx,0
               mov ax,[arr2]
               mov [min],ax
           
           
loop3 :    mov ax,[arr2 + bx]
            cmp ax,[min]
            jae   loop4
            
            mov [min] ,ax
 
 
loop4  :     add bx, 2 
             cmp bx ,8
             jbe loop3
    




; finallay here is the divide code 

     mov ax,[result1]
     cmp ax,[result2]
     ja   fun

   mov ax, [result1]


fun :   mov ax, [result2]
         mov bx ,[min]
         div  bx 
        jmp end_programm


 end_programm :   mov ax, 0x4c00
    int 0x21
