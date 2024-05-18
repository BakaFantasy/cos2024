#ifndef LAB2__MAIN_H_
#define LAB2__MAIN_H_

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <assert.h>
#include <stdlib.h>
#include <string.h>

#define BUF_SZ 0x400

#define ANSI_BOLD "\033[1m"
#define ANSI_RED "\033[31m"
#define ANSI_GREEN "\033[32m"
#define ANSI_BLUE "\033[34m"
#define ANSI_RESET "\033[0m"

extern void my_print(char const *, size_t);

#ifndef DEBUG
#define PRINT(...) do {                        \
    char print_buf[BUF_SZ];                 \
    sprintf(print_buf, __VA_ARGS__);        \
    my_print(print_buf, strlen(print_buf)); \
  } while (false)
#else
#define PRINT(...) printf(__VA_ARGS__)
#endif

#define ERROR(fmt, ...) do { PRINT(fmt "\n", ##__VA_ARGS__); \
  fflush(stdout); } while (false)

#endif //LAB2__MAIN_H_
