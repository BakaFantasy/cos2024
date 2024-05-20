
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                            global.c
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                                                    Forrest Yu, 2005
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

#define GLOBAL_VARIABLES_HERE

#include "type.h"
#include "const.h"
#include "protect.h"
#include "tty.h"
#include "console.h"
#include "proc.h"
#include "global.h"
#include "proto.h"

PUBLIC  PROCESS proc_table[NR_TASKS + NR_PROCS];

PUBLIC  TASK task_table[NR_TASKS] = {
    };

PUBLIC  TASK user_proc_table[NR_PROCS] = {
    {T_main, STACK_SIZE_PROC, "main"},
    {T_producer, STACK_SIZE_PROC, "P1"},
    {T_producer, STACK_SIZE_PROC, "P2"},
    {T_consumer, STACK_SIZE_PROC, "C1"},
    {T_consumer, STACK_SIZE_PROC, "C2"},
    {T_consumer, STACK_SIZE_PROC, "C3"},
};

PUBLIC  char task_stack[STACK_SIZE_TOTAL];

PUBLIC  TTY tty_table[NR_CONSOLES];
PUBLIC  CONSOLE console_table[NR_CONSOLES];

PUBLIC  irq_handler irq_table[NR_IRQ];

PUBLIC  system_call sys_call_table[NR_SYS_CALL] =
    {&sys_get_ticks, &sys_sleep, &sys_puts, &sys_sem_post, &sys_sem_wait};

PUBLIC  sem_t rw_mutex = {1, 0, 0};
PUBLIC  sem_t w_mutex = {1, 0, 0};
PUBLIC  sem_t r_mutex = {1, 0, 0};
PUBLIC  sem_t rcount_mutex = {NR_READERS, 0, 0};
