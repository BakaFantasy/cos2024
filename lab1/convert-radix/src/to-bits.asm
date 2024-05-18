%include 'src/common.asm'

global to_bits

%define i dword [rbp - 0x4]
%define bit_len dword [rbp - 0x8]
%define rem_value dword [rbp - 0xc]
%define zero_count dword [rbp - 0x10]

to_bits:
    push rbp
    mov rbp, rsp
    sub rsp, 0x10

.peel:
    mov i, 0 ; i = 0
    jmp .peel_cond
.peel_loop:
    mov eax, i
    cdqe
    lea rdx, digits
    movzx eax, byte [rax + rdx]
    sub eax, '0'
    mov ecx, eax ; $ecx = digits[i] - '0'
    mov eax, i
    cdqe
    lea rdx, peeled
    mov byte [rax + rdx], cl ; peeled[i] = $cl
    inc i
.peel_cond:
    mov eax, i
    cmp eax, edi ; if i < digit_len
    jl .peel_loop

    mov dword bit_len, 0 ; bit_len = 0
    jmp .loop_cond
.loop:
    mov i, 0 ; i = 0
    jmp .memset_cond
.memset_loop:
    mov eax, i
    cdqe
    lea rdx, quotient
    mov byte [rax + rdx], 0 ; quotient[i] = 0
    inc i
.memset_cond:
    mov eax, i
    cmp eax, edi ; if i < digit_len
    jl .memset_loop

    mov rem_value, 0 ; rem_value = 0
    mov i, 0 ; i = 0
    jmp .div_cond
.div_loop:
    mov edx, rem_value
    mov eax, edx
    shl eax, 2
    add eax, edx
    add eax, eax
    mov ecx, eax ; $ecx = 10 * rem_value
    mov eax, i
    cdqe
    lea rdx, peeled
    movzx eax, byte [rax + rdx] ; $eax = peeled[i]
    add eax, ecx
    mov rem_value, eax ; rem_value = rem_value * 10 + peeled[i]
    sar eax, 1
    mov ecx, eax ; $ecx = rem_value / 2
    mov eax, i
    cdqe
    lea rdx, quotient
    mov byte [rax + rdx], cl ; quotient[i] = $cl
    and rem_value, 1
    inc i
.div_cond:
    mov eax, i
    cmp eax, edi
    jl .div_loop

    mov eax, dword bit_len
    cdqe
    lea rdx, bit_arr
    mov ecx, rem_value
    mov dword [rax + rdx], ecx ; bit_arr[bit_len] = rem_value
    inc dword bit_len

    mov zero_count, 0 ; zero_count = 0
    jmp .strip_cond
.strip_loop:
    inc zero_count
.strip_cond:
    mov eax, zero_count
    cmp eax, edi ; if zero_count >= digit_len
    jge .update
    mov eax, zero_count
    cdqe
    lea rdx, quotient
    movzx eax, byte [rax + rdx]
    test al, al ; if !quotient[zero_count]
    je .strip_loop

.update:
    mov eax, zero_count
    mov i, eax ; i = zero_count
    jmp .update_cond
.update_loop:
    mov eax, i
    sub eax, zero_count
    mov ecx, eax
    mov eax, i
    cdqe
    lea rdx, quotient
    movzx edx, byte [rax + rdx] ; $edx = quotient[i]
    movsxd rax, ecx
    lea rcx, peeled
    mov byte [rax + rcx], dl ; peeled[i - zero_count] = $dl
    inc i
.update_cond:
    mov eax, i
    cmp eax, edi ; if i < digit_len
    jl .update_loop

    mov eax, zero_count
    sub edi, eax ; digit_len -= zero_count

.loop_cond:
    cmp edi, 0
    jne .loop

.end:
    mov eax, dword bit_len
    leave
    ret

%undef i
%undef bit_len
%undef rem_value
%undef zero_count
