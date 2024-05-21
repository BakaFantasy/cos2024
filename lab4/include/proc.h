
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                               proc.h
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                                                    Forrest Yu, 2005
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/


typedef struct s_stackframe {  /* proc_ptr points here				↑ Low			*/
  u32 gs;    /* ┓						│			*/
  u32 fs;    /* ┃						│			*/
  u32 es;    /* ┃						│			*/
  u32 ds;    /* ┃						│			*/
  u32 edi;    /* ┃						│			*/
  u32 esi;    /* ┣ pushed by save()				│			*/
  u32 ebp;    /* ┃						│			*/
  u32 kernel_esp;  /* <- 'popad' will ignore it			│			*/
  u32 ebx;    /* ┃						↑栈从高地址往低地址增长*/
  u32 edx;    /* ┃						│			*/
  u32 ecx;    /* ┃						│			*/
  u32 eax;    /* ┛						│			*/
  u32 retaddr;  /* return address for assembly code save()	│			*/
  u32 eip;    /*  ┓						│			*/
  u32 cs;    /*  ┃						│			*/
  u32 eflags;    /*  ┣ these are pushed by CPU during interrupt	│			*/
  u32 esp;    /*  ┃						│			*/
  u32 ss;    /*  ┛						┷High			*/
} STACK_FRAME;

typedef enum Status {IDLE, BUSY, WAITING} Status;

typedef struct s_proc {
  STACK_FRAME regs;          /* process registers saved in stack frame */

  u16 ldt_sel;               /* gdt selector giving ldt base and limit */
  DESCRIPTOR ldts[LDT_SIZE]; /* local descriptors for code and data */

  int ticks;                 /* remained ticks */
  int priority;

  int wakening_moment;
  int blocked;
  Status status;
  int cnt;

  u32 pid;                   /* process id passed in from MM */
  char p_name[16];           /* name of the process */
} PROCESS;

typedef struct s_task {
  task_f initial_eip;
  int stacksize;
  char name[32];
} TASK;

/* Number of tasks & procs */
#define NR_TASKS  0
#define NR_PROCS  6

typedef struct sem_t {
  int value;
  int head;
  int tail;
  PROCESS *waiters[NR_PROCS];
} sem_t;

/* stacks of tasks */
#define STACK_SIZE_TTY     0x8000
#define STACK_SIZE_PROC    0x8000

#define STACK_SIZE_TOTAL  (NR_TASKS * STACK_SIZE_TTY + \
          NR_PROCS * STACK_SIZE_PROC)

