[org 0x0100]

jmp start

data    dw 2
result  dw 0

summation:
    push bp
    mov bp, sp
    push ax
    push bx
    push cx

    ; Load data into bx
    mov ax, [bp+4]   ; Get data parameter
    mov bx, ax       ; Initialize bx for factorial calculation

main_loop:
    mov cx, bx       ; Copy bx to cx for factorial
    mov ax, 1        ; Initialize ax for multiplication

factorial:
    mul cx           ; Multiply ax by cx
    dec cx           ; Decrement cx
    jnz factorial    ; Repeat if cx != 0

    ; Add result
    mov cx, [result] ; Load value of result into cx
    add cx, ax       ; Add ax to cx
    mov [result], cx

    ; Decrement input value
    dec bx
    jnz main_loop    ; Repeat if bx != 0


    pop cx
    pop bx
    pop ax
    pop bp
    ret

start:
    mov ax, data
    push ax
    call summation


    mov ax, 0x4c00
    int 0x21
