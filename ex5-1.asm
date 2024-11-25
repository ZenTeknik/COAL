[org 0x0100]
        jmp start

data: dw  10,4,2,6,0,1,9,20
data2: dw 100,23,12,4,5,22,11,1
swapflag: db 0

swap:  mov ax,[bx+si]
        xchg  ax, [bx+si+2]
        mov [bx+si],ax
        ret

bubblesort:   dec cx
              shl cx,1

mainloop:  mov si,0
           mov byte[swapflag],0

innerloop: mov ax,[bx+si]
           cmp ax,[bx+si+2]
           jbe noswap

           call swap
        mov byte[swapflag],1


 noswap:   add si,2
           cmp si,cx
           jne innerloop

           cmp byte[swapflag],1
           je mainloop
            ret

start: mov bx, data
       mov cx, 8
       call bubblesort

       mov bx, data2
       mov cx, 8
       call bubblesort



exit: mov ax,0x4c00
      int 0x21
