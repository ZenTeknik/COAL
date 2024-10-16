                            ;  6 LAB_TASK1      CODE FOR THE JUMP IF CARRY JC

                         
[org 0x100]

xor ax,ax
xor bx,bx


 l1 :   mov  ax,0x2600         ; here i am just taking some numer in the hexadecimal    like mov to ax
        add  ax, 0x9300        ; when am adding the number  that i have to the ax  0x2600+0x8300 at the end result will 0900 where from the last nibble  it generate the carry 
        jc   exit                  ; here i made that condition that if they produce carry  then move to the exit function 



xor ax,ax
xor bx,bx

 exit :   mov ax,0x4c00     ; here is the exit function to terminate the programm else there is no supposition of nay condition 
      int 0x21
  
  
  
