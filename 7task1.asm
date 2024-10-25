[org 0x0100]

jmp start       

data: dw  6, 4, 5, 2              ; according to the  dry run state  we have four   pass   simply first it will compare  6 & 4 then sorting   then in the second pass it will compare  4&5 in the third pass it's compare 5&2  (now, the one pass is done)  as same as it will make three pass     

     
start: 
    mov  cx, 4            ; here we set the counter register to 4                 

    outerloop: 
        mov  bx, 0            ;here we move 0 to bx 
        
        innerloop:                   
            mov  ax, [data + bx]
            cmp  ax, [data + bx + 2]    ; here we store  the first index  data  to the ax  and then we are cmp the next index data with  with the previous ax   

            jbe  noswap                 ; if the data is already in accsending order then  it move the   noswap function  
                                        ; think of this as the "if"

                ; the swap potion 
                mov  dx, [data + bx + 2]
                mov  [data + bx + 2], ax    ; here we have to swap the value from ax to dx and dx to ax  
                mov  [data + bx], dx

            noswap:           ;this is the noawap function 
            add  bx, 2
            cmp  bx, 6         ; here we comaring the bx with 6 why not 8 bcz, the first index already we stored and the remaining 3*2=6
            jne  innerloop       ; again to swap function 

        ; check outer loop termination 
        sub cx, 1                       ;like again to start from the outerloop  function   and sub -1  form the counter 
        jnz outerloop 


    ; exit system call 
    mov  ax, 0x4c00        
    int  0x21



