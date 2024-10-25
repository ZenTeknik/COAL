[org 0x0100]

jmp start       

data: dw   2, 4, 6, 5
swap: db   0    ; use this as a flag 

start: 
     ; mov  cx, 4                          ; make passes, has to be outside the loop! 

    outerloop: 
        mov  bx, 0                       ; here moving 0 to bx means like bx=NULL
        mov  byte [swap], 0             ; here byte is declared like we are reserving one byte space for the swap flag "but, as far i know the flag need space if one bit here we are wasting 7 bit's 
        
        innerloop: 
            mov  ax, [data + bx]
            cmp  ax, [data + bx + 2]    ; we move the first value of the array data  into ax   and then we are cmp the ax value with next value of the same array 
            
            jbe  noswap                 ; if the data is already in asscending order so we need to move to the noswap function  

                ; the swap potion 
                mov  dx, [data + bx + 2]        
                mov  [data + bx + 2], ax    ; here we are swaping the data  
                mov  [data + bx], dx
                mov  byte [swap], 1 

            noswap:                     ; here we have the noswap function 
            add  bx, 2
            cmp  bx, 6
            jne  innerloop

        
        cmp  byte [swap], 1    
        je   outerloop 

        ; check outer loop termination 
        ; sub cx, 1 
        ; jnz outerloop 


    ; exit system call 
    mov  ax, 0x4c00
    int  0x21



