#include "common.h"
#include "shell.h"
#include "disk.h"

int main() {
#ifdef DEBUG
  setbuf(stdout, NULL);
#endif

  disk_init("lab2.img");
  atexit(&disk_exit);

  start_shell();

  return 0;
}
