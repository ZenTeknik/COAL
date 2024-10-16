                            ;  6 LAB_TASK1      CODE FOR THE JUMP IF EQUAL  JE

[org 0x100]

xor ax,ax
xor bx,bx


 l1 :   mov  ax,[num1]        ; here i am just taking some numer in the hexadecimal    like mov to ax
        cmp ax, [num2]        ; here am comparing with the ax  with the given  hexadeciaml number 
        je   exit                  ; if they are bith equal they move to the exit function 



xor ax,ax
xor bx,bx

 exit :   mov ax,0x4c00     ; here is the exit function to terminate the programm else there is no supposition of nay condition 
      int 0x21
  
  
  num1 : dw 10 
  num2 : dw 10

