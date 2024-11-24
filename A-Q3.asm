[org 0x0100]

stc                    ; here set the carry flag (stc instructions sets the carry flag. If carry is 0 will make it 1)
mov ax, 385Dh            ; 230573 Roll number  but in hexadecimal   CF = 0
adc ah, 48h                 ; First letter of Name is H   48 in hex
cmc                 ; cmc instruction reverses the carry flag i-e if carry flag is 1 then cmc will make it 0 and vice versa.
                       ;CF flips from 0 to 1.
xor ah, al              ; XOR will not affect    CF remains 1.
mov cl, 4               ; when we load 4 to cl  CF remains 1 (No impact on CF).
shr al, cl              ;The last bit shifted out is 1, so CF = 1.
rcr ah, cl             ; The last bit shifted out is 0, so CF = 0.


;Final Output
;AX = 9D05
;CF = 1

exit: mov ax,0x4c00
      int 0x21
