%include 'src/common.asm'

global get

get:
    push rbp
    mov rbp, rsp
    sub rsp, 0x10
    pusha

    mov qword [rbp - 0x8], rax
    mov dword [rbp - 0x4], 0 ; count = 0
    mov dword [rbp - 0x5], 0 ; ch = '\0'

.loop:
    mov eax, Sys_read
    mov edi, 0
    lea rsi, byte [rbp - 0x5]
    mov edx, 1
    syscall ; read(0, &ch, 1)

    cmp byte [rbp - 0x5], 10 ; if ch == '\n'
    je .end
    cmp byte [rbp - 0x5], 255 ; if ch == EOF
    je .end

    mov al, byte [rbp - 0x5] ; $al = ch
    mov ecx, dword [rbp - 0x4]
    mov byte [ibuf + ecx], al ; ibuf[count] = $al
    inc ecx
    mov dword [rbp - 0x4], ecx ; count++

    cmp dword [rbp - 0x4], MAX_INPUT_LEN ; if count > MAX_INPUT_LEN
    jle .loop

    mov eax, Sys_exit
    mov edi, 0
    syscall ; exit(0)

.end:
    mov eax, dword [rbp - 0x4] ; return count
    popa
    leave
    ret
