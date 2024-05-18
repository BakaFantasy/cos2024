%include 'src/common.asm'
%include 'src/get.asm'
%include 'src/to-bits.asm'
%include 'src/print.asm'

section .data
    error_msg: db 'Error', 0ah
    prefix_b: db '0b'
    prefix_o: db '0o'
    prefix_h: db '0x'
    newline: db 0ah

section .bss
    ibuf: resb MAX_INPUT_LEN
    digits: resb MAX_DIGITS_LEN
    peeled: resb MAX_DIGITS_LEN
    quotient: resb MAX_DIGITS_LEN
    bit_arr: resb MAX_BINARY_LEN

section .text
global _start

_start:
    call main
    mov eax, Sys_exit
    mov edi, 0
    syscall ; exit(0)

write:
    pusha
    mov eax, Sys_write
    mov edx, edi
    mov rdi, 1
    syscall
    popa
    ret

%define input_len dword [rbp - 0x4]
%define digit_len dword [rbp - 0x8]
%define i dword [rbp - 0xc]
%define bit_len dword [rbp - 0x10]
%define radix byte [rbp - 0x11]

main:
    push rbp
    mov rbp, rsp
    sub rsp, 0x18

.loop:
; get user's input
    call get
    mov input_len, eax ; input_len

    cmp eax, 0 ; if input_len == 0
    je .loop

    cmp eax, 1
    jne .split
    movzx eax, byte [ibuf]
    cmp al, 'q'
    je .exit ; if input_len == 1 and ibuf[0] == 'q'

.split:
    mov digit_len, 0 ; digit_len
    jmp .split_cond
.split_loop:
    mov eax, digit_len
    cdqe ; extends EAX to RAX
    lea rdx, ibuf
    movzx edx, byte [rax + rdx] ; $edx = input[digit_len]
    mov eax, digit_len
    cdqe
    lea rcx, digits
    mov byte [rax + rcx], dl ; digits[digit_len] = $dl
    inc digit_len    ; digit_len++
    mov eax, input_len
    sub eax, digit_len
    cmp eax, 2 ; if input_len - digit_len < 2
    jl .handle_error
.split_cond:
    mov eax, digit_len
    cdqe
    lea rdx, ibuf
    movzx eax, byte [rax + rdx]
    cmp al, ' '                  ; if ibuf[digit_len] != ' '
    jne .split_loop

    mov eax, digit_len
    inc eax
    cdqe
    lea rdx, ibuf
    movzx eax, byte [rax + rdx]
    mov radix, al ; radix = ibuf[digit_len + 1]

; exceptions
    cmp digit_len, 0 ; if digit_len == 0
    je .handle_error

    cmp radix, 'b'
    je .is_not_num
    cmp radix, 'o'
    je .is_not_num
    cmp radix, 'h'
    jne .handle_error

.is_not_num:
    mov i, 0 ; i = 0
    jmp .is_not_num_cond
.is_not_num_loop:
    mov eax, i
    cdqe
    lea rdx, digits
    movzx eax, byte [rax + rdx]
    cmp al, '0'                 ; if digits[i] < '0'
    jl .handle_error
    mov eax, i
    cdqe
    lea rdx, digits
    movzx eax, byte [rax + rdx]
    cmp al, '9'                 ; if digits[i] > '9'
    jg .handle_error
    inc i
.is_not_num_cond:
    mov eax, i
    cmp eax, digit_len ; if i > digit_len
    jl .is_not_num_loop

; convert characterized digit array to bit array
    mov edi, digit_len
    call to_bits ; to_bits(digit_len)
    mov bit_len, eax ; bit_len

; output w.r.t. radix
    movsx esi, radix
    mov edi, bit_len
    call print ; print(bit_len, radix)
    jmp .loop

.handle_error:
    mov rsi, error_msg
    mov edi, 6
    call write
    jmp .loop

.exit:
    mov eax, 0 ; return 0
    leave
    ret

%undef input_len
%undef digit_len
%undef i
%undef bit_len
%undef radix
