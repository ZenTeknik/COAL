                            ;3rd   TASK 
[org 0x0100]


; here i move  6 to the ax     then in the cx submask of  6 ascii to convert 
mov ax,6
mov cx ,00110110b      ; here move the mask to cx 
or ax,cx                     ; or  operation 



; here i move  9 to the ax     then in the cx submask of  6 ascii to convert 
mov ax,9               
mov cx,00111001b    ; here move the mask to cx 
or ax,cx            ; or operation 


mov ax,0x4c00
int 0x21
