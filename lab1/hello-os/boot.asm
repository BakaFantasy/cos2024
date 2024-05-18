    org 07c00h ; with 32K in total, prepare 1K (1 page)
    mov ax, cs
    mov ds, ax ; data segment
    mov es, ax ; extra segment
    call print
    jmp $

print:
    mov ax, str
    mov bp, ax      ; ES:BP = offset of string
    mov cx, 10      ; CX = length
    mov ax, 01301h  ; AH = 0x13 (write string); AL = 0x01 (write mode)
    mov bx, 000ch   ; BH = page num; BL = color
    mov dl, 0       ; DH = row; DL = column
    int 10h         ; BIOS intr only for real mode
    ret

str: db 'Hello, OS!'
times 510-($-$$) db 0 ; 512 - length of code - length of 0xaa55
dw 0xaa55
