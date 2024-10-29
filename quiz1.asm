                              ; QUIZ_1 
[org 0x0100]
                       jmp start 
arr1 : dw 1,1               ; these are the three test cases   arr1 for (Equality)
arr2 : dw 2,1               ; here is the declareation  for the  greater number
arr3 : dw 1,3               ; here is the declareation  for the  less number

equal : db  0               ; here equal db __ greater db __ & lesser db is defined for the flag status
greater : db 0
lesser : db   0 

start : 
         mov byte [equal],0
         mov byte [greater],0
         mov byte [lesser],0
         xor bx,bx 
         
         
                          ;here is the code for comparison a=b or  not  
                          
equality :  mov ax,[arr1] 
           cmp ax ,[arr1+bx+2]
           je   equality_swap                             ; here equality_swap is the function to raise the equality flag if equal 
                                                          ; bcz, by default i set to the zero in the start function 
equality_swap :    mov byte[equal],1                      ; here is the flag function if ( a=b) equal then move 1 to the flag 



   
                        ; here is the code for comparison a>b or not  

greater_check  :  mov ax,[arr2] 
               cmp ax ,[arr2+bx+2]
               jg     greater_swap                   ; here greater_swap is the function to raise the equality flag if greater
                                                     ; bcz, by default i set to the zero in the start function 
greater_swap :    mov byte[greater],1                ; here is the flag function if ( a>b) greater then move 1 to the flag 




                        ; here is the code for comparison a<b or not  

lesser_check  :  mov ax,[arr3] 
               cmp ax ,[arr3+bx+2]
               jb    lesser_swap                   ; here lesser_swap is the function to raise the equality flag if less 
                                                     ; bcz, by default i set to the zero in the start function 
lesser_swap :    mov byte[lesser],1                  ; here is the flag function if ( a<b) lesser then move 1 to the flag 




exit:   mov ax,0x4c00
         int 0x21
