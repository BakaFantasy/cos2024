
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                               tty.c
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
#include "keyboard.h"
#include "proto.h"

#define TTY_FIRST  (tty_table)
#define TTY_END    (tty_table + NR_CONSOLES)

PRIVATE void init_tty(TTY *p_tty);
PRIVATE void tty_do_read(TTY *p_tty);
PRIVATE void tty_do_write(TTY *p_tty);
PRIVATE void put_key(TTY *p_tty, u32 key);

PRIVATE void tty_clear();

PRIVATE void process_normal(TTY *p_tty, u32 key);
PRIVATE void process_search(TTY *p_tty, u32 key);
PRIVATE void process_highlight(TTY *p_tty, u32 key);

PUBLIC Mode current_mode;

/*======================================================================*
                           task_tty
 *======================================================================*/
PUBLIC void task_tty() {
  TTY *p_tty;

  init_keyboard();

  for (p_tty = TTY_FIRST; p_tty < TTY_END; p_tty++) {
    init_tty(p_tty);
  }
  select_console(0);
  while (1) {
    for (p_tty = TTY_FIRST; p_tty < TTY_END; p_tty++) {
      tty_do_read(p_tty);
      tty_do_write(p_tty);
    }
  }
}

/*======================================================================*
                           task_clearer
 *======================================================================*/
PUBLIC void task_clearer() {
  while (1) {
    if (current_mode == MODE_NORMAL) {
      tty_clear();
    }
    milli_delay(CLEAR_INTERVAL);
  }
}

/*======================================================================*
			   init_tty
 *======================================================================*/
PRIVATE void init_tty(TTY *p_tty) {
  p_tty->inbuf_count = 0;
  p_tty->p_inbuf_head = p_tty->p_inbuf_tail = p_tty->in_buf;

  init_screen(p_tty);
}

/*======================================================================*
				in_process
 *======================================================================*/
PUBLIC void in_process(TTY *p_tty, u32 key) {
  char output[2] = {'\0', '\0'};

  if (current_mode != MODE_HIGHLIGHT && !(key & FLAG_EXT)) {
    put_key(p_tty, key);
  } else {
    switch (current_mode) {
      case MODE_NORMAL:
        process_normal(p_tty, key);
        break;
      case MODE_SEARCH:
        process_search(p_tty, key);
        break;
      case MODE_HIGHLIGHT:
        process_highlight(p_tty, key);
        break;
      default:
        break;
    }
  }
}

/*======================================================================*
			      put_key
*======================================================================*/
PRIVATE void put_key(TTY *p_tty, u32 key) {
  if (p_tty->inbuf_count < TTY_IN_BYTES) {
    *(p_tty->p_inbuf_head) = key;
    p_tty->p_inbuf_head++;
    if (p_tty->p_inbuf_head == p_tty->in_buf + TTY_IN_BYTES) {
      p_tty->p_inbuf_head = p_tty->in_buf;
    }
    p_tty->inbuf_count++;
  }
}


/*======================================================================*
			      tty_do_read
 *======================================================================*/
PRIVATE void tty_do_read(TTY *p_tty) {
  if (is_current_console(p_tty->p_console)) {
    keyboard_read(p_tty);
  }
}


/*======================================================================*
			      tty_do_write
 *======================================================================*/
PRIVATE void tty_do_write(TTY *p_tty) {
  if (p_tty->inbuf_count) {
    char ch = *(p_tty->p_inbuf_tail);
    p_tty->p_inbuf_tail++;
    if (p_tty->p_inbuf_tail == p_tty->in_buf + TTY_IN_BYTES) {
      p_tty->p_inbuf_tail = p_tty->in_buf;
    }
    p_tty->inbuf_count--;

    out_char(p_tty->p_console, ch);
  }
}

/*======================================================================*
			      tty_clear
 *======================================================================*/
PRIVATE void tty_clear() {
  for (TTY *p_tty = TTY_FIRST; p_tty < TTY_END; p_tty++) {
    if (is_current_console(p_tty->p_console)) {
      clear(p_tty->p_console);
      return;
    }
  }
}

/*======================================================================*
			      process_normal
 *======================================================================*/
PRIVATE void process_normal(TTY *p_tty, u32 key) {
  int raw_code = key & MASK_RAW;
  switch (raw_code) {
    case ENTER:
      put_key(p_tty, '\n');
      break;
    case TAB:
      put_key(p_tty, '\t');
      break;
    case BACKSPACE:
      put_key(p_tty, '\b');
      break;
    case UP:
      if ((key & FLAG_SHIFT_L) || (key & FLAG_SHIFT_R)) {
        scroll_screen(p_tty->p_console, SCR_DN);
      }
      break;
    case DOWN:
      if ((key & FLAG_SHIFT_L) || (key & FLAG_SHIFT_R)) {
        scroll_screen(p_tty->p_console, SCR_UP);
      }
      break;
    case F1:
    case F2:
    case F3:
    case F4:
    case F5:
    case F6:
    case F7:
    case F8:
    case F9:
    case F10:
    case F11:
    case F12:
      /* Alt + F1~F12 */
      if ((key & FLAG_ALT_L) || (key & FLAG_ALT_R)) {
        select_console(raw_code - F1);
      }
      break;
    case ESC:
      init_search(p_tty->p_console);
      current_mode = MODE_SEARCH;
      break;
    default:
      break;
  }
}

/*======================================================================*
			      process_search
 *======================================================================*/
PRIVATE void process_search(TTY *p_tty, u32 key) {
  int raw_code = key & MASK_RAW;
  switch (raw_code) {
    case ENTER:
      show_highlight(p_tty->p_console);
      current_mode = MODE_HIGHLIGHT;
      break;
    case TAB:
      put_key(p_tty, '\t');
      break;
    case BACKSPACE:
      put_key(p_tty, '\b');
      break;
    case UP:
      if ((key & FLAG_SHIFT_L) || (key & FLAG_SHIFT_R)) {
        scroll_screen(p_tty->p_console, SCR_DN);
      }
      break;
    case DOWN:
      if ((key & FLAG_SHIFT_L) || (key & FLAG_SHIFT_R)) {
        scroll_screen(p_tty->p_console, SCR_UP);
      }
      break;
    case F1:
    case F2:
    case F3:
    case F4:
    case F5:
    case F6:
    case F7:
    case F8:
    case F9:
    case F10:
    case F11:
    case F12:
      /* Alt + F1~F12 */
      if ((key & FLAG_ALT_L) || (key & FLAG_ALT_R)) {
        select_console(raw_code - F1);
      }
      break;
    case ESC:
      clear_highlight(p_tty->p_console);
      current_mode = MODE_NORMAL;
      break;
    default:
      break;
  }
}

/*======================================================================*
			      process_highlight
 *======================================================================*/
PRIVATE void process_highlight(TTY *p_tty, u32 key) {
  int raw_code = key & MASK_RAW;
  if (raw_code == ESC) {
    clear_highlight(p_tty->p_console);
    current_mode = MODE_NORMAL;
  }
}
