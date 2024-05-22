
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
#ifndef PC
    {T_main, STACK_SIZE_PROC, "main"},
    {T_reader1, STACK_SIZE_PROC, "R1"},
    {T_reader2, STACK_SIZE_PROC, "R2"},
    {T_reader3, STACK_SIZE_PROC, "R3"},
    {T_writer1, STACK_SIZE_PROC, "W1"},
    {T_writer2, STACK_SIZE_PROC, "W2"},
#else
    {T_main, STACK_SIZE_PROC, "main"},
    {T_producer1, STACK_SIZE_PROC, "P1"},
    {T_producer2, STACK_SIZE_PROC, "P2"},
    {T_consumer1, STACK_SIZE_PROC, "C1"},
    {T_consumer2, STACK_SIZE_PROC, "C2"},
    {T_consumer3, STACK_SIZE_PROC, "C3"},
#endif
};

PUBLIC  char task_stack[STACK_SIZE_TOTAL];

PUBLIC  TTY tty_table[NR_CONSOLES];
PUBLIC  CONSOLE console_table[NR_CONSOLES];

PUBLIC  irq_handler irq_table[NR_IRQ];

PUBLIC  system_call sys_call_table[NR_SYS_CALL] =
    {&sys_get_ticks, &sys_sleep, &sys_puts, &sys_sem_post, &sys_sem_wait};

/* RW problem */
PUBLIC  char patterns[3] = {'Z', 'O', 'X'};
PUBLIC  char pattern_colors[3] = {BLUE, GREEN, RED};

PUBLIC  sem_t rw_sem = {1, 0, 0};
PUBLIC  sem_t w_sem = {1, 0, 0};
PUBLIC  sem_t r_sem = {1, 0, 0};
PUBLIC  sem_t rcount_sem = {MAX_READERS, 0, 0};
PUBLIC  sem_t critical_sem = {1, 0, 0};

PUBLIC  int reader_cnt;
PUBLIC  int writer_cnt;

/* PC problem */
PUBLIC  sem_t fill_sem = {0, 0, 0};
PUBLIC  sem_t empty_sem = {CAPACITY, 0, 0};

PUBLIC  int inventories[CAPACITY];
