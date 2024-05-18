#include "shell.h"

static void do_prompt(bool last_stat) {
  PRINT(ANSI_BOLD "%sFAT12 ❯ " ANSI_RESET,
        last_stat ? ANSI_GREEN : ANSI_RED);
}

static int do_input(char *input, char **argv) {
  fgets(input, BUF_SZ, stdin);
  char delim[] = " \n";
  char *p = strtok(input, delim);
  argv[0] = p;
  int argc = 1;
  while ((p = strtok(NULL, delim)) != NULL) {
    argv[argc++] = p;
  }
  argv[argc] = NULL;
  return argc;
}

static bool ls(int argc, char *const *argv) {
  bool long_flag = false;
  char const *path = NULL;
  for (int i = 1; i < argc; i++) {
    if (argv[i][0] == '-') {
      size_t len = strlen(argv[i] + 1);
      if (len && strspn(argv[i] + 1, "l") == len) {
        long_flag = true;
      } else {
        ERROR("Unknown flag " ANSI_RED "%s" ANSI_RESET ".", argv[i]);
        return false;
      }
    } else if (!path) {
      path = argv[i];
    } else {
      ERROR("Multiple paths is not allowed.");
      return false;
    }
  }
  if (!path) {
    return list("/", long_flag);
  } else {
    return list(path, long_flag);
  }
}

static bool cat(int argc, char *const *argv) {
  char const *path = NULL;
  for (int i = 1; i < argc; i++) {
    if (!path) {
      path = argv[i];
    } else {
      ERROR("Multiple paths not allowed.");
      return false;
    }
  }
  if (!path) {
    ERROR("File path required.");
    return false;
  }
  return concatenate(path);
}

static bool cmd_not_found(char const *cmd) {
  ERROR("Command " ANSI_RED "%s" ANSI_RESET " not found.", cmd);
  return false;
}

void start_shell() {
  bool last_cmd_stat = true;
  while (true) {
    do_prompt(last_cmd_stat);

    char input[BUF_SZ];
    char *argv[MAX_ARGS];
    int argc = do_input(input, argv);
    if (argv[0] == NULL) {
      continue;
    } else if (strcmp(argv[0], "exit") == 0) {
      break;
    } else if (strcmp(argv[0], "ls") == 0) {
      last_cmd_stat = ls(argc, argv);
    } else if (strcmp(argv[0], "cat") == 0) {
      last_cmd_stat = cat(argc, argv);
    } else {
      last_cmd_stat = cmd_not_found(argv[0]);
    }
  }
}
