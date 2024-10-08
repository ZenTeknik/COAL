; CF flag will also raise in the case of borrow
;CF flag will also raise in the case of official carry 
; incremenet or decrement will not affect flags 
; when overflow will raise when boht positive  after addition it will generate negative   
; mov instruction does not affect the flag 
; unsigned number carry will show with the carry flag  
; signed number   carry will show with overflow flag   (like when 2's complement number) 
; -1  = FFFF 
; unsigned number range 0-255
; signed number range -128 _  +127

; Parity means how many number of one's   00001111    when partiy is even it raise parity flag  and it uses   for  data encryption like emails  and xor and also work on odd parity  (In general even parity one or odd parity for 0)
                                        ; carry flag code 
; b for binary 
mov ah , 11111111b
add  ah , 1
mov al, 00001111b
mov al, 1
mov ax,0x4c00
int 0x21



          ; sign flag 
mov cx, 0
sub cx 

       
       
                     ; overflow flag 
mov al , 127
sub al,1




                          ; parity flag 
[org 0x0100]
mov al , 00001110b     ; even flag when number of counts is even 
add al, 00000001b
mov ax, 0x4c00
int 0x21 



