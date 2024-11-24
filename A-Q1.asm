[org 0x0100]
                    jmp start

check: shr ax,1                       ; in check function , check that how mnay 1's
       inc  cx                       ; add cx 1 bcz , to count the number of bits
       jc count_ones                  ; here after the shift right  if the carry flag is raise then it call the function of
                                       ; count_ones

           cmp cx,16
           jne check


count_ones: add dx,1                   ; add the 1 to the dx register
            cmp cx,16                  ; check for the 16 bits
            jne check                  ; if not then again jump to the check (loop)



            add bx,1                   ; bx is the for the iteration how many iteration througout the programm
            mov ax,0                  ; the number of ones add to the dx to ax   (In  this the no of ones is 8 )
            ret                        ; again return to  the same where it call




start:   mov ax,1100010110100011b             ; moving the 16 bits to the ax register
         mov cx,0
         mov dx,0
         call check                           ; here call the subroutine of the check


         mov ax,dx                            ; again for the second iteration
         mov cx,0
         mov dx,0
         call check


         mov ax,dx                             ; showing the final result

exit: mov ax,0x4c00
       int 0x21
