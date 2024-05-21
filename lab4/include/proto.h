
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                            proto.h
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                                                    Forrest Yu, 2005
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/* klib.asm */
PUBLIC void	out_byte(u16 port, u8 value);
PUBLIC u8	in_byte(u16 port);
PUBLIC void	disp_str(char * info);
PUBLIC void	disp_color_str(char * info, int color);

/* protect.c */
PUBLIC void	init_prot();
PUBLIC u32	seg2phys(u16 seg);

/* klib.c */
PUBLIC void	delay(int time);

/* kernel.asm */
void restart();

/* main.c */
void T_main();
void T_consumer1();
void T_consumer2();
void T_consumer3();
void T_producer1();
void T_producer2();

/* i8259.c */
PUBLIC void put_irq_handler(int irq, irq_handler handler);
PUBLIC void spurious_irq(int irq);

/* clock.c */
PUBLIC void clock_handler(int irq);
PUBLIC void init_clock();

/* keyboard.c */
PUBLIC void init_keyboard();

/* tty.c */
PUBLIC void task_tty();
PUBLIC void task_clearer();
PUBLIC void in_process(TTY* p_tty, u32 key);

/* console.c */
PUBLIC void out_char(CONSOLE* p_con, char ch);
PUBLIC void scroll_screen(CONSOLE* p_con, int direction);
PUBLIC void clear(CONSOLE *p_con);
PUBLIC void init_search(CONSOLE *p_con);
PUBLIC void show_highlight(CONSOLE *p_con);
PUBLIC void clear_highlight(CONSOLE *p_con);

/* 以下是系统调用相关 */
typedef struct sem_t sem_t;

/* proc.c */
PUBLIC  int     sys_get_ticks();        /* sys_call */
PUBLIC  void    sys_sleep(int milli_sec);
PUBLIC  void    sys_puts(char const *str);
PUBLIC  void    sys_sem_post(sem_t *sem);
PUBLIC  void    sys_sem_wait(sem_t *sem);

/* syscall.asm */
PUBLIC  void    sys_call();             /* int_handler */
PUBLIC  int     get_ticks();
PUBLIC  void    sleep(int milli_sec);
PUBLIC  void    puts(char const *str);
PUBLIC  void    sem_post(sem_t *sem);
PUBLIC  void    sem_wait(sem_t *sem);

