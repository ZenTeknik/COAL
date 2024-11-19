                               ; LINUX   Name  :  Haris-23P-0573

[org 0x0100]
     jmp start
; In the example 5.3  we have same calling subroutines but, two data arrays
data : dw 60,55,45,50,40,35,25,30,10,0
data2: dw  328,329,898,8923,8293,2345,10,877,355,98,888,533,2000,1020,30,200,761,167,90,5




 ; here we restore the previous value
 bubblesort :        push bp
                     mov bp,sp
                     sub sp,2      ;for the swap flag
                     push ax
                     push bx
                     push cx
                     push si

                     mov bx,[bp+6]
                     mov cx,[bp+4]
                     dec cx
                     shl cx,1



 mainloop  : mov si ,0
            mov word [bp-2],0






innerloop : mov ax,[bx+si]
            cmp ax,[bx+si+2]
            jbe noswap

            xchg ax,[bx+si+2]
            mov [bx+si],ax
            mov word[bp-2],1


; here is the noswap function
noswap :   add si,2
           cmp si,cx
           jne innerloop

           cmp word[bp-2] ,1
           je mainloop

   ; here we have pop all the value that we push into the stack
           pop si
           pop cx
           pop bx
           pop ax
           mov sp,bp
           pop bp

           ret  4

start :    mov ax,data
           push ax
          mov ax,10
          call bubblesort

         mov ax,data2
           push ax
          mov ax,20
          call bubblesort

          mov ax,0x4c00
          int 0x21

