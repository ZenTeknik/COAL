                  ; 16  bit multiplication algorithm
[org 0x0100]
      jmp start 
 multiplier : dd 1300 
 multiplicand : dw 500
 result : dd 0 
 
 
 start :    mov dx,[multiplier]
            mov cl,16 
            
            
            mov ax,[multiplicand]
            add [result], ax
            mov ax,[multiplier+2]
            adc [result +2],ax
            
checkbit :   shr dx,1 
             jnc skip 
             
             
            
skip :       shl word [multiplicand],1
             rcl word [multiplicand+2 ],1
              dec cl 
             jnz checkbit
             
             mov ax,0x4c00
              int 0x21
            
