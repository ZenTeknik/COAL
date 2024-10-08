                                          ; INSTRUCTION   Lab-5-date-08-10-2024

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
; b for binary 





                                       ; GIVEN TASK  WITH THE  COMMENTS  
; ;Zero Flag
; [org 0x0100]

; mov cx,1                    ; zero flag will be raise when the after performing ALU operation by processor  the distination 
; sub cx,1                    ; becomes zero in other means results becomes zero it raise zero flag but, here in case of mov ZF 
; mov ax,0x0FFFF              ; will not be raise   (mov instruction does not affect the flag) 
; inc ax                      ; incremenet or decrement will not affect flags    
; inc ax
; mov ax,0x4c00
; int 0x21



;Sign Flag
; [org 0x0100]

; mov cx,0                              ; no effect on SF
; sub cx,1                              ;SF raised 
; add cx,2
; dec cx                               ;  decrement will not affect flags  
; inc cx                                ;  incremenet  will not affect flags  
; mov al,0                             
; sub al,1                                    
; add al,2 ; add effects carry               ; ALU effects carry flag 
; mov ax, 0x4c00
; int 0x21




;Carry Flag
; [org 0x0100]
; mov ah, 11111111b                   ; here  in this case  we have a bit register (higher part of register) 
; add ah,1                            ; when we add 1 to ah last bit will put its carry out this raise carry flag 
; mov al, 00001111b                    ; here  in this case  we have a bit register (lower  part of register) 
; add al,1                             ; when we add 1 to ah last bit will put it's  carry tranfer from one nibble to another  nibble    this does not raise carry flag 
; mov ax, 0x4c00
; int 0x21




; Overflow Flag
; [org 0x0100]
;mov al,127                 ; In case of overflow flag    here we are dealing   signed number   range with  (-128 _  +127)        
;sub al,1                   ; In  this case OF will not ne raise   127-1=126    and 126 is in the range.  
;mov ax, 0x4c00
;int 0x21



;Parity
; [org 0x0100]

; mov al, 00001110b           ; Even  parity will be raise after this bcz,     in above instruction  
; add al, 00000001b           ; we have odd bit when add it becomes even       it raise even parity 
; mov ax, 0x4c00              ; if we have  00000000b in 2nd inrtuction it will raise odd parity      
; int 0x21                    ;(In general even parity 1 or odd parity for 0)
