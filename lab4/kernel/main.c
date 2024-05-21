
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                            main.c
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                                                    Forrest Yu, 2005
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

#include "type.h"
#include "const.h"
#include "protect.h"
#include "string.h"
#include "proc.h"
#include "tty.h"
#include "console.h"
#include "global.h"
#include "proto.h"


/*======================================================================*
                            kernel_main
 *======================================================================*/
PUBLIC int kernel_main() {
  disp_str("-----\"kernel_main\" begins-----\n");

  TASK *p_task = task_table;
  PROCESS *p_proc = proc_table;
  char *p_task_stack = task_stack + STACK_SIZE_TOTAL;
  u16 selector_ldt = SELECTOR_LDT_FIRST;
  int i;
  u8 privilege;
  u8 rpl;
  int eflags;
  for (i = 0; i < NR_TASKS + NR_PROCS; i++) {
    if (i < NR_TASKS) {     /* 任务 */
      p_task = task_table + i;
      privilege = PRIVILEGE_TASK;
      rpl = RPL_TASK;
      eflags = 0x1202; /* IF=1, IOPL=1, bit 2 is always 1 */
    } else {                  /* 用户进程 */
      p_task = user_proc_table + (i - NR_TASKS);
      privilege = PRIVILEGE_USER;
      rpl = RPL_USER;
      eflags = 0x202; /* IF=1, bit 2 is always 1 */
    }

    strcpy(p_proc->p_name, p_task->name);  // name of the process
    p_proc->pid = i;      // pid

    p_proc->ldt_sel = selector_ldt;

    memcpy(&p_proc->ldts[0], &gdt[SELECTOR_KERNEL_CS >> 3],
           sizeof(DESCRIPTOR));
    p_proc->ldts[0].attr1 = DA_C | privilege << 5;
    memcpy(&p_proc->ldts[1], &gdt[SELECTOR_KERNEL_DS >> 3],
           sizeof(DESCRIPTOR));
    p_proc->ldts[1].attr1 = DA_DRW | privilege << 5;
    p_proc->regs.cs = (0 & SA_RPL_MASK & SA_TI_MASK) | SA_TIL | rpl;
    p_proc->regs.ds = (8 & SA_RPL_MASK & SA_TI_MASK) | SA_TIL | rpl;
    p_proc->regs.es = (8 & SA_RPL_MASK & SA_TI_MASK) | SA_TIL | rpl;
    p_proc->regs.fs = (8 & SA_RPL_MASK & SA_TI_MASK) | SA_TIL | rpl;
    p_proc->regs.ss = (8 & SA_RPL_MASK & SA_TI_MASK) | SA_TIL | rpl;
    p_proc->regs.gs = (SELECTOR_KERNEL_GS & SA_RPL_MASK) | rpl;

    p_proc->regs.eip = (u32)p_task->initial_eip;
    p_proc->regs.esp = (u32)p_task_stack;
    p_proc->regs.eflags = eflags;

    p_task_stack -= p_task->stacksize;
    p_proc++;
    p_task++;
    selector_ldt += 1 << 3;

    p_proc->status = IDLE;
  }

  proc_table[0].ticks = proc_table[0].priority = 15;
  proc_table[1].ticks = proc_table[1].priority = 5;
  proc_table[2].ticks = proc_table[2].priority = 3;

  k_reenter = 0;
  ticks = 0;

  p_proc_ready = proc_table;

  init_clock();

  task_tty(); // just clear console

  restart();

  while (1) {}
}

/* RW problem */

PRIVATE void work(int slices) {
  p_proc_ready->status = BUSY;
  sleep(slices * TIME_SLICE);
}

PRIVATE void read_rf(int slices) {
  sem_wait(&r_sem);
  if (reader_cnt == 0) {
    sem_wait(&rw_sem);
  }
  reader_cnt++;
  sem_post(&r_sem);

  sem_wait(&rcount_sem);
  work(slices);
  sem_post(&rcount_sem);

  sem_wait(&r_sem);
  reader_cnt--;
  if (reader_cnt == 0) {
    sem_post(&rw_sem);
  }
  sem_post(&r_sem);
}

PRIVATE void write_rf(int slices) {
  sem_wait(&rw_sem);

  work(slices);

  sem_post(&rw_sem);
}

PRIVATE void read_wf(int slices) {
  sem_wait(&critical_sem);
  sem_wait(&r_sem);
  if (reader_cnt == 0) {
    sem_wait(&rw_sem);
  }
  reader_cnt++;
  sem_post(&r_sem);
  sem_post(&critical_sem);

  sem_wait(&rcount_sem);
  work(slices);
  sem_post(&rcount_sem);

  sem_wait(&r_sem);
  reader_cnt--;
  if (reader_cnt == 0) {
    sem_post(&rw_sem);
  }
  sem_post(&r_sem);
}

PRIVATE void write_wf(int slices) {
  sem_wait(&w_sem);
  if (writer_cnt == 0) {
    sem_wait(&critical_sem);
  }
  writer_cnt++;
  sem_post(&w_sem);

  sem_wait(&rw_sem);
  work(slices);
  sem_post(&rw_sem);

  sem_wait(&w_sem);
  writer_cnt--;
  if (writer_cnt == 0) {
    sem_post(&critical_sem);
  }
  sem_post(&w_sem);
}

PRIVATE void read_fair(int slices) {
  sem_wait(&critical_sem);
  sem_wait(&r_sem);
  if (reader_cnt == 0) {
    sem_wait(&rw_sem);
  }
  reader_cnt++;
  sem_post(&r_sem);
  sem_post(&critical_sem);

  sem_wait(&rcount_sem);
  work(slices);
  sem_post(&rcount_sem);

  sem_wait(&r_sem);
  reader_cnt--;
  if (reader_cnt == 0) {
    sem_post(&rw_sem);
  }
  sem_post(&r_sem);
}

PRIVATE void write_fair(int slices) {
  sem_wait(&critical_sem);
  sem_wait(&rw_sem);

  work(slices);

  sem_post(&rw_sem);
  sem_post(&critical_sem);
}

PRIVATE void print_rw(int no) {
  char pattern[] = "  ";
  pattern[0] = patterns[proc_table[no].status];
  disp_color_str(pattern,
                 MAKE_COLOR(pattern_colors[proc_table[no].status], BRIGHT));
}

/* PC problem */

PRIVATE void consume(int no) {
  int i = CAPACITY;
  while (i == CAPACITY) {
    sem_wait(&fill_sem);

    sem_wait(&critical_sem);
    for (i = 0; i < CAPACITY; i++) {
      if (inventories[i] == no) {
        inventories[i] = 0;
        p_proc_ready->cnt++;
        break;
      }
    }
    sem_post(&critical_sem);

    sem_post(&fill_sem);
  }
  sem_post(&empty_sem);
}

PRIVATE void produce(int no) {
  sem_wait(&empty_sem);

  sem_wait(&critical_sem);
  for (int i = 0; i < CAPACITY; i++) {
    if (inventories[i] == 0) {
      inventories[i] = no;
      p_proc_ready->cnt++;
      break;
    }
  }
  sem_post(&critical_sem);

  sem_post(&fill_sem);
}

PRIVATE void print_pc(int no) {
  disp_decimal(proc_table[no].cnt);
  disp_str(" ");
}

/* Processes */

void T_main() {
  char colon[] = ": ";
  char newline[] = "\n";
  for (int i = 0; i < ROUNDS; i++) {
    disp_decimal(i + 1);
    puts(colon);
    for (int j = NR_TASKS + 1; j < NR_TASKS + NR_PROCS; j++) {
#ifndef PC
      print_rw(j);
#else
      print_pc(j);
#endif
    }
    puts(newline);
    if (disp_pos > 2 * SCREEN_SIZE) {
      disp_pos = 0;
    }
    sleep(TIME_SLICE);
  }
  while (1) {}
}

void T_reader1() {
  PROC_DO(READ(2))
}

void T_reader2() {
  PROC_DO(READ(3))
}

void T_reader3() {
  PROC_DO(READ(3))
}

void T_writer1() {
  PROC_DO(WRITE(3))
}

void T_writer2() {
  PROC_DO(WRITE(4))
}

void T_consumer1() {
  PROC_DO(consume(1))
}

void T_consumer2() {
  PROC_DO(consume(2))
}

void T_consumer3() {
  PROC_DO(consume(2))
}

void T_producer1() {
  PROC_DO(produce(1))
}

void T_producer2() {
  PROC_DO(produce(2))
}
