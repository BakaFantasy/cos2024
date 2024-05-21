
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                               proc.c
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                                                    Forrest Yu, 2005
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

#include "type.h"
#include "const.h"
#include "protect.h"
#include "tty.h"
#include "console.h"
#include "string.h"
#include "proc.h"
#include "global.h"
#include "proto.h"

/*======================================================================*
                              schedule
 *======================================================================*/
PUBLIC void schedule() {
  while (1) {
    p_proc_ready++;
    if (p_proc_ready >= proc_table + NR_TASKS + NR_PROCS) {
      p_proc_ready = proc_table;
    }
    if (get_ticks() >= p_proc_ready->wakening_moment && p_proc_ready->blocked == 0) {
      break;
    }
  }
}

/*======================================================================*
                           sys_get_ticks
 *======================================================================*/
PUBLIC int sys_get_ticks() {
  return ticks;
}

/*======================================================================*
                           sys_sleep
 *======================================================================*/
PUBLIC void sys_sleep(int milli_sec) {
  p_proc_ready->wakening_moment = get_ticks() + milli_sec / TIME_SLICE;
  schedule();
}

/*======================================================================*
                           sys_puts
 *======================================================================*/
PUBLIC void sys_puts(char const *str) {
  char buf[BUF_SZ];
  strcpy(buf, str);
  disp_str(buf);
}

/*======================================================================*
                           sys_sem_post
 *======================================================================*/
PUBLIC void sys_sem_post(sem_t *sem) {
  disable_int();
  sem->value++;
  if (sem->value <= 0) {
    sem->waiters[sem->head]->blocked = 0;
    sem->head = (sem->head + 1) % NR_PROCS;
  }
  enable_int();
}

/*======================================================================*
                           sys_sem_wait
 *======================================================================*/
PUBLIC void sys_sem_wait(sem_t *sem) {
  disable_int();
  sem->value--;
  if (sem->value < 0) {
    p_proc_ready->blocked = 1;
    p_proc_ready->status = WAITING;
    sem->waiters[sem->tail] = p_proc_ready;
    sem->tail = (sem->tail + 1) % NR_PROCS;
    enable_int();
    schedule();
    return;
  }
  enable_int();
}

