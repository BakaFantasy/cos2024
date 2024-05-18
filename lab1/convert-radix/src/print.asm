%include 'src/common.asm'

global print

%define prefix qword [rbp - 0x8]
%define interval byte [rbp - 0x9]
%define num byte [rbp - 0xa]
%define shift byte [rbp - 0xb]
%define digit byte [rbp - 0xc]
%define pos dword [rbp - 0x10]
%define bit_len dword [rbp - 0x14]
%define radix byte [rbp - 0x15]

print:
    push rbp
    mov rbp, rsp
    sub rsp, 0x18

    mov bit_len, edi
    mov radix, sil
    mov interval, 0
.case_bin:
    cmp radix, 'b'
    jne .case_oct
    mov interval, 1
    mov prefix, prefix_b
    jmp .write_prefix
.case_oct:
    cmp radix, 'o'
    jne .case_hex
    mov interval, 3
    mov prefix, prefix_o
    jmp .write_prefix
.case_hex:
    cmp radix, 'h'
    jne .case_default
    mov interval, 4
    mov prefix, prefix_h
    jmp .write_prefix
.case_default:
    ; shouldn't reach here!
.write_prefix:
    mov rsi, prefix
    mov edi, 2
    call write

    mov num, 0
    mov eax, bit_len
    dec eax
    mov pos, eax ; pos = bit_len - 1
    jmp .loop_cond
.loop:
    movsx ecx, interval
    mov eax, pos
    cdq
    idiv ecx ; $edx = pos % interval
    mov shift, dl ; shift = $dl
    mov eax, pos
    cdqe
    lea rdx, bit_arr
    movzx eax, byte [rax + rdx] ; $eax = bit_arr[pos]
    movsx ecx, shift
    shl eax, cl ; $edx <<= shift
    movzx edx, num
    add eax, edx
    mov num, al ; num += bit_arr[pos] << shift
    cmp shift, 0 ; if shift != 0
    jne .continue

    movzx eax, num
    cmp eax, 9 ; if num <= 9
    jle .pure_digit
; alph_digit
    add eax, 'a' - 10 ; $eax = 'a' + num - 10
    jmp .write_digit
.pure_digit:
    add eax, '0' ; $eax = '0' + num
.write_digit:
    mov digit, al
    lea rsi, digit
    mov edi, 1
    call write

    mov num, 0
.continue:
    dec pos
.loop_cond:
    cmp pos, 0 ; if pos > -1
    jns .loop

.write_newline:
    mov rsi, newline
    mov edi, 1
    call write

.end:
    leave
    ret

%undef prefix
%undef interval
%undef num
%undef shift
%undef digit
%undef pos
%undef bit_len
%undef radix
