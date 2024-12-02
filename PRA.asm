; [org 0x0100]
;         jmp start
; data: dw 1,1,1,1,1,1,1,1,1
; result: dw 0
;
;
; start:       mov ax,0
;              mov bx,0
;
;
; main: add ax,[data+bx]
;
;       add bx,2
;       cmp bx,18
;       jne  main
;
;
;       mov  [result],ax
;
;       mov ax,0x4c00
;       int 0x21
;



; code for the sorting
; [org 0x0100]
;          jmp start
; data: dw -9,8,7,6,5,4,3,2,1
; swap: db 0
;
;
;
;
; start: mov bx,0
;        mov byte[swap],0
;
;
; mainloop:  mov ax,[data+bx]
;            cmp ax,[data+bx+2]
;            jle   noswap
;
;            mov dx,[data+bx+2]
;            mov [data+bx+2],ax
;            mov [data+bx],dx
;            mov byte[swap],1
;
;
; noswap:  add bx,2
;          cmp bx,16
;          jne mainloop
;
;
;          cmp byte[swap],1
;          je start
;
;          mov ax,0x4c00
;          int 0x21
;



; code for the 16 bit multiplication

; [org 0x0100]
;        jmp start
; multiplicand: db 13
; multplier: db 5
; result: db 0
;
;
; start:  mov cl, 4
;         mov dl,[multiplicand]
;         mov bl,[multiplier]
;
;
; checkbit: shr bl,1
;           jnc skip
;
;
; add [result],bl
;
; skip:   shl dl,1
;          dec cl
;          jnz checkbit
;
;
;        mov ax,0x4c00
;        int 0x21

[org 0x0100]
       jmp start
multiplicand: dd 1300
multplier: dw 500
result: dd 0


start:  mov cx, 16
        mov dx,[multiplier]


checkbit: shr bx,1
          jnc skip


mov ax,[multiplicand]
add [result],ax
mvo ax,[multiplicand+2]
adc [result+2]



skip:   shl [multiplicand],1
       rcl [multiplicand+2],1
          dec cl
         jnz checkbit


       mov ax,0x4c00
       int 0x21






















