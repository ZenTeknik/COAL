[org 0x0100]

mov ax,6                          ; according to the question the 6 bit we have to complement
mov bx,0

mov cx,00000001b ; mask
mov cl,al
shl cx,cl                          ; then after applying mask  it become's   00100000


xor bx,cx                           ; In xor opertaion it retaion the same value    suppose if BX=(00000000)
                                    ; after mask it will become    00100000  Here 6bit is complemented


exit: mov ax,0x4c00
      int 0x21
