
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
			      console.h
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
						    Forrest Yu, 2005
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

#ifndef _ORANGES_CONSOLE_H_
#define _ORANGES_CONSOLE_H_

/* CONSOLE */
typedef struct s_console {
  unsigned int current_start_addr;  /* 当前显示到了什么位置	  */
  unsigned int original_addr;    /* 当前控制台对应显存位置 */
  unsigned int v_mem_limit;    /* 当前控制台占的显存大小 */
  unsigned int cursor;      /* 当前光标位置 */
} CONSOLE;

#define SCR_UP  1  /* scroll forward */
#define SCR_DN  -1  /* scroll backward */

#define SCREEN_SIZE    (80 * 25)
#define SCREEN_WIDTH    80

#define DEFAULT_CHAR_COLOR  0x07  /* 0000 0111 黑底白字 */
#define HIGHLIGHTED_CHAR_COLOR   0x04

#define TAB_SIZE 4
#define TAB_CHAR ((u8) '\0')
#define NO_NEWLINE (SCREEN_WIDTH - 1)

#define CLEAR_INTERVAL (800 * 1000)

#define TO_VMEM(cursor) ((u8 *)(V_MEM_BASE + (cursor) * 2))

#endif /* _ORANGES_CONSOLE_H_ */
