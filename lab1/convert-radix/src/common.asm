; Caller-save: RAX, RCX, RDX
; Callee-save: RBX, RSI, RDI

%ifndef __COMMON_ASM__
%define __COMMON_ASM__

%macro pusha 0
    push rbx
    push rdi
    push rsi
%endmacro

%macro popa 0
    pop rsi
    pop rdi
    pop rbx
%endmacro

%define Sys_read 0
%define Sys_write 1
%define Sys_exit 60

%define MAX_INPUT_LEN 2000
%define MAX_DIGITS_LEN 1000
%define MAX_BINARY_LEN 3322 ; MAX_INPUT_LEN * log_2(10)

%endif
