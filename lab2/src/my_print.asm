global my_print

my_print:
    mov rax, 1   ; Sys_write
    mov rdx, rsi ; count
    mov rsi, rdi ; buf
    mov rdi, 1   ; stdout
    syscall
    ret
