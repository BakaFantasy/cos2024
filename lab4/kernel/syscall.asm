
; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;                               syscall.asm
; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;                                                     Forrest Yu, 2005
; ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

%include "sconst.inc"

_NR_get_ticks       equ 0 ; 要跟 global.c 中 sys_call_table 的定义相对应！
_NR_sleep           equ 1
_NR_puts            equ 2
_NR_sem_post        equ 3
_NR_sem_wait        equ 4
INT_VECTOR_SYS_CALL equ 0x90

; 导出符号
global	get_ticks
global	sleep
global	puts
global	sem_post
global	sem_wait

bits 32
[section .text]

; ====================================================================
;                              get_ticks
; ====================================================================
get_ticks:
    mov	eax, _NR_get_ticks
    int	INT_VECTOR_SYS_CALL
    ret

sleep:
    mov	eax, _NR_sleep
    mov ebx, [esp + 4]
    int	INT_VECTOR_SYS_CALL
    ret

puts:
    mov	eax, _NR_puts
    mov ebx, [esp + 4]
    int	INT_VECTOR_SYS_CALL
    ret

sem_post:
    mov	eax, _NR_sem_post
    mov ebx, [esp + 4]
    int	INT_VECTOR_SYS_CALL
    ret

sem_wait:
    mov	eax, _NR_sem_wait
    mov ebx, [esp + 4]
    int	INT_VECTOR_SYS_CALL
    ret
