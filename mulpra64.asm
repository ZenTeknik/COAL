[org 0x0100]
jmp start 

multiplicand: dd 60000          ; 32-bit multiplicand
multiplier: dd 1300             ; 32-bit multiplier
result: dq 0                    ; 64-bit result to hold the multiplication result

start:
    mov cx, 32                  ; Set loop counter for 32 bits
    mov dx, [multiplier]        ; Load the multiplier into DX

checkbit:
    shr dx, 1                   ; Shift right to check the next bit
    jnc skip                    ; If carry is not set, skip the addition

    mov ax, [multiplicand]      ; Load the lower 32 bits of multiplicand
    add [result], ax            ; Add to the result lower part
    mov ax, [multiplicand + 4]  ; Load the upper 32 bits of multiplicand
    adc [result + 4], ax        ; Add with carry to the result upper part

skip:
    shl dword [multiplicand], 1  ; Shift left the lower part
    rcl dword [multiplicand + 4], 1 ; Rotate carry left for the upper part
    dec cx                      ; Decrement the loop counter
    jnz checkbit                ; Repeat until all bits are processed

exit:
    mov ax, 0x4c00              ; Terminate the program
    int 0x21

