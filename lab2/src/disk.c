#include "disk.h"

static FILE *fp_img;
static BootRecord br;
static uint32_t *fat_table;
static DirEntry *dirents;
static int data_zone_offset;

static char pwd[BUF_SZ];

void disk_init(char const *filename) {
  // open the image
  fp_img = fopen(filename, "r");
  assert(fp_img);
  // load FAT12 boot record
  fread(&br, sizeof(BootRecord), 1, fp_img);
  // load FAT table
  int fat_table_sz = br.sec_per_fat * br.bps * 2 / 3;
  fat_table = malloc(fat_table_sz * sizeof *fat_table);
  for (int i = 0; i < fat_table_sz / 2; i++) {
    uint32_t entry_pair = 0;
    fread(&entry_pair, 3, 1, fp_img);
    fat_table[2 * i] = (entry_pair >> 8 & 0xf) << 8 | entry_pair & 0xff;
    fat_table[2 * i + 1] = (entry_pair >> 16 & 0xff) << 4 | entry_pair >> 12 & 0xf;
  }
  // load root entries
  fseek(fp_img, (br.rsvd_sec_cnt + br.fat_num * br.sec_per_fat) * br.bps, SEEK_SET);
  dirents = malloc(br.dirent_num * sizeof(DirEntry));
  fread(dirents, sizeof(DirEntry), br.dirent_num, fp_img);
  // calculate data zone offset
  data_zone_offset = (br.rsvd_sec_cnt + br.fat_num * br.sec_per_fat) * br.bps
      + (int)(br.dirent_num * sizeof(DirEntry));
}

void disk_exit() {
  free(dirents);
  free(fat_table);
  fclose(fp_img);
}

static char *read_clus(char *buf, uint32_t clus, int size) {
  fseek(fp_img, data_zone_offset + (clus - 2) * br.sec_per_clus * br.bps, SEEK_SET);
  fread(buf, size, 1, fp_img);
  return buf;
}

static uint32_t next_clus(uint32_t clus) {
  return fat_table[clus];
}

static void to_path_name(char *dst, char const *src) {
  int count = 0;
  while (count < NAME_LEN && src[count] != ' ') {
    *dst++ = src[count++];
  }
  while (count < NAME_LEN && src[count] == ' ') {
    count++;
  }
  if (src[NAME_LEN] == ' ') {
    *dst = '\0';
    return;
  }
  *dst++ = '.';
  while (count < FILE_NAME_LEN && src[count] != ' ') {
    *dst++ = src[count++];
  }
  *dst = '\0';
}

static bool match_name(char const *path, char const *file_name) {
  char file_name_to_path[FILE_NAME_LEN + 1];
  to_path_name(file_name_to_path, file_name);
  return strcmp(path, file_name_to_path) == 0;
}

static bool find_dirent_in_root(DirEntry *dirent, char const *path) {
  for (int i = 0; i < br.dirent_num; i++) {
    if (ENT_ENDS(&dirents[i])) {
      break;
    }
    if (ENT_IS_UNUSED(&dirents[i])) {
      continue;
    }
    if (match_name(path, dirents[i].file_name)) {
      memcpy(dirent, &dirents[i], sizeof(DirEntry));
      return true;
    }
  }
  return false;
}

static bool find_dirent_in_data(DirEntry *dirent, char const *path, uint32_t clus) {
  DirEntry *buf = malloc(br.bps);
  while (CLUS_HAS_NEXT(clus)) {
    read_clus((char *)buf, clus, br.bps);
    for (int i = 0; i < br.bps / sizeof(DirEntry); i++) {
      if (match_name(path, buf[i].file_name)) {
        memcpy(dirent, &buf[i], sizeof(DirEntry));
        free(buf);
        return true;
      }
    }
    clus = next_clus(clus);
  }
  free(buf);
  return false;
}

static bool build_entry_stk(DirEntry **stk, int *stk_ptr, char const *current) {
  do {
    // if not a directory, throw exception
    if (*stk_ptr > -1 && stk[*stk_ptr]->file_attr != FILE_ATTR_DIRECTORY) {
      ERROR("Not a directory.");
      return NULL;
    }
    if (strcmp(current, ".") == 0) {
      continue;
    }
    if (strcmp(current, "..") == 0) {
      if (*stk_ptr > -1) {
        free(stk[*stk_ptr]);
        (*stk_ptr)--;
      }
      continue;
    }
    // search dirent of @last and push it into @stk
    stk[++(*stk_ptr)] = malloc(sizeof(DirEntry));
    if (*stk_ptr == 0) {
      if (!find_dirent_in_root(stk[*stk_ptr], current)) {
        ERROR(ANSI_RED "%s" ANSI_RESET " not found.", current);
        return false;
      }
    } else {
      if (!find_dirent_in_data(stk[*stk_ptr], current, PTR_GET_CLUS(stk[*stk_ptr - 1]))) {
        ERROR(ANSI_RED "%s" ANSI_RESET " not found.", current);
        return false;
      }
    }
  } while ((current = strtok(NULL, "/")) != NULL);
  return true;
}

static bool interpret_path(DirEntry *dirent, char const *path) {
  char path_to_delim[BUF_SZ];
  strncpy(path_to_delim, path, BUF_SZ);
  DirEntry *stk[STK_SZ];
  int stk_ptr = -1;

  char const *current = strtok(path_to_delim, "/");
  while (current && (strcmp(current, ".") == 0 || strcmp(current, "..") == 0)) {
    current = strtok(NULL, "/");
  }
  sprintf(pwd, "/");
  if (!current) {
    *dirent = (DirEntry){};
    return true;
  }

  if (!build_entry_stk(stk, &stk_ptr, current)) {
    return false;
  }

  if (stk_ptr == -1) {
    *dirent = (DirEntry){};
    return true;
  }
  for (int i = 0; i < stk_ptr; i++) {
    char buf[BUF_SZ];
    to_path_name(buf, stk[i]->file_name);
    char *end = strchr(pwd, '\0');
    snprintf(end, BUF_SZ - 1 - (end - pwd), "%s/", buf);
    free(stk[i]);
  }
  memcpy(dirent, stk[stk_ptr], sizeof(DirEntry));
  free(stk[stk_ptr]);
  return true;
}

static int iterate_entries(uint32_t clus, bool long_flag, FileAttr attr,
                           void (*func)(DirEntry const *, bool), void (*interleave)(DirEntry const *, bool)) {
  DirEntry *buf = malloc(br.bps);
  int exec_count = 0; // count the real execution instead of break or continue
  while (CLUS_HAS_NEXT(clus)) {
    read_clus((char *)buf, clus, br.bps);
    for (int i = 0; i < br.bps / sizeof(DirEntry); i++) {
      if (ENT_ENDS(&buf[i])) {
        break;
      }
      if (ENT_IS_UNUSED(&buf[i]) || buf[i].file_attr != attr) {
        continue;
      }
      if (interleave && exec_count > 0) {
        interleave(&buf[i], long_flag);
      }
      if (func) {
        func(&buf[i], long_flag);
      }
      exec_count++;
    }
    clus = next_clus(clus);
  }
  free(buf);
  return exec_count;
}

static int iterate_root(bool long_flag, FileAttr attr,
                        void (*func)(DirEntry const *, bool), void (*interleave)(DirEntry const *, bool)) {
  int exec_count = 0;
  for (int i = 0; i < br.dirent_num; i++) {
    if (ENT_ENDS(&dirents[i])) {
      break;
    }
    if (ENT_IS_UNUSED(&dirents[i]) || dirents[i].file_attr != attr) {
      continue;
    }
    if (interleave && exec_count > 0) {
      interleave(&dirents[i], long_flag);
    }
    if (func) {
      func(&dirents[i], long_flag);
    }
    exec_count++;
  }
  return exec_count;
}

static void list_file(DirEntry const *dirent, bool long_flag) {
  char path_name[FILE_NAME_LEN + 1];
  to_path_name(path_name, dirent->file_name);
  if (long_flag) {
    PRINT("%s %d\n", path_name, dirent->file_sz);
    return;
  }
  PRINT("%s", path_name);
}

static void list_dir(DirEntry const *dirent, bool long_flag) {
  char path_name[FILE_NAME_LEN + 1];
  to_path_name(path_name, dirent->file_name);
  if (long_flag) {
    if (strcmp(path_name, ".") == 0 || strcmp(path_name, "..") == 0) {
      PRINT(ANSI_RED "%s" ANSI_RESET "\n", path_name);
    } else {
      PRINT(ANSI_RED "%s" ANSI_RESET " %d %d\n", path_name,
            iterate_entries(PTR_GET_CLUS(dirent), long_flag,
                            FILE_ATTR_DIRECTORY, NULL, NULL) - 2,
            iterate_entries(PTR_GET_CLUS(dirent), long_flag,
                            FILE_ATTR_ARCHIVE, NULL, NULL));
    }
    return;
  }
  PRINT(ANSI_RED "%s" ANSI_RESET, path_name);
}

static void space(DirEntry const *dirent, bool long_flag) {
  if (!long_flag) {
    PRINT("  ");
  }
}

static void list_dirs(DirEntry const *dirent, bool long_flag) {
  char path_name[FILE_NAME_LEN + 1];
  to_path_name(path_name, dirent->file_name);
  if (strcmp(path_name, ".") == 0 || strcmp(path_name, "..") == 0) {
    return;
  }
  if (long_flag) {
    PRINT("%s%s/ %d %d:\n", pwd, path_name,
          iterate_entries(PTR_GET_CLUS(dirent), long_flag,
                          FILE_ATTR_DIRECTORY, NULL, NULL) - 2,
          iterate_entries(PTR_GET_CLUS(dirent), long_flag,
                          FILE_ATTR_ARCHIVE, NULL, NULL));
  } else {
    PRINT("%s%s/:\n", pwd, path_name);
  }
  uint32_t clus = PTR_GET_CLUS(dirent);
  if (iterate_entries(clus, long_flag, FILE_ATTR_DIRECTORY, list_dir, space) > 0) {
    space(NULL, long_flag);
  }
  iterate_entries(clus, long_flag, FILE_ATTR_ARCHIVE, list_file, space);
  PRINT("\n");

  char *end = strchr(pwd, '\0');
  sprintf(end, "%s/", path_name);
  iterate_entries(clus, long_flag, FILE_ATTR_DIRECTORY, list_dirs, NULL);
  char *last_delim = strrchr(pwd, '/');
  if (last_delim) {
    *last_delim = '\0';
  }
  last_delim = strrchr(pwd, '/');
  if (last_delim) {
    *(last_delim + 1) = '\0';
  }
}

static void list_root(bool long_flag) {
  if (long_flag) {
    PRINT("%s %d %d:\n", pwd,
           iterate_root(long_flag, FILE_ATTR_DIRECTORY, NULL, NULL),
           iterate_root(long_flag, FILE_ATTR_ARCHIVE, NULL, NULL));
  } else {
    PRINT("%s:\n", pwd);
  }
  if (iterate_root(long_flag, FILE_ATTR_DIRECTORY, list_dir, space)) {
    space(NULL, long_flag);
  }
  iterate_root(long_flag, FILE_ATTR_ARCHIVE, list_file, space);
  PRINT("\n");
  strncpy(pwd, "/", BUF_SZ - 1);
  iterate_root(long_flag, FILE_ATTR_DIRECTORY, list_dirs, NULL);
  char *last_delim = strrchr(pwd, '/');
  if (last_delim) {
    *last_delim = '\0';
  }
  last_delim = strrchr(pwd, '/');
  if (last_delim) {
    *(last_delim + 1) = '\0';
  }
}

bool list(char const *path, bool long_flag) {
  DirEntry dirent;
  if (!interpret_path(&dirent, path)) {
    return false;
  }
  if (dirent.file_attr == 0) { // specific to the implementation in interpret_path
    list_root(long_flag);
  } else if (dirent.file_attr == FILE_ATTR_DIRECTORY) {
    list_dirs(&dirent, long_flag);
  } else if (dirent.file_attr == FILE_ATTR_ARCHIVE) {
    list_file(&dirent, long_flag);
    PRINT("\n");
  }
  return true;
}

bool concatenate(char const *path) {
  DirEntry dirent;
  if (!interpret_path(&dirent, path)) {
//    ERROR("Path " ANSI_RED "%s" ANSI_RESET " not found.", path);
    return false;
  }
  if (dirent.file_attr != FILE_ATTR_ARCHIVE) {
    ERROR("Only normal file allowed.");
    return false;
  }
  uint32_t clus = GET_CLUS(dirent);
  while (CLUS_HAS_NEXT(clus)) {
    if (CLUS_IS_BAD(clus)) {
      ERROR("Bad cluster.");
      return false;
    }
    int sz = br.sec_per_clus * br.bps;
    if (CLUS_ENDS(next_clus(clus))) {
      sz = (int)dirent.file_sz % br.bps;
    }
    char *buf = malloc(sz + 1);
    read_clus(buf, clus, sz);
    buf[sz] = '\0';
    PRINT("%s", buf);
    free(buf);
    clus = next_clus(clus);
  }
  return true;
}
