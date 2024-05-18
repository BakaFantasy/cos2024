#ifndef LAB2__DISK_H_
#define LAB2__DISK_H_

#include <common.h>

#define FILE_NAME_LEN 11
#define NAME_LEN 8
#define EXT_LEN (FILE_NAME_LEN - NAME_LEN)
#define BAD_CLUS 0xff7
#define STK_SZ 0x100

#define GET_CLUS(dirent) ((dirent.first_clus_high << 16) + dirent.first_clus_low)
#define PTR_GET_CLUS(dirent) ((dirent->first_clus_high << 16) + dirent->first_clus_low)
#define CLUS_HAS_NEXT(clus) ((clus) <= BAD_CLUS)
#define CLUS_ENDS(clus) (!CLUS_HAS_NEXT(clus))
#define CLUS_IS_BAD(clus) ((clus) == BAD_CLUS)

#define ENT_IS_UNUSED(dirent) (((uint8_t *)(dirent))[0] == 0xe5 || ((dirent)->file_attr == 0xf))
#define ENT_ENDS(dirent) (((uint8_t *)(dirent))[0] == 0x0)

typedef struct BootRecord {
  uint8_t jmp_inst[3];
  char oem_identifier[8];
  uint16_t bps;               // bytes per sector
  uint8_t sec_per_clus;       // sectors per cluster
  uint16_t rsvd_sec_cnt;      // reserved sector count
  uint8_t fat_num;            // number of FATs
  uint16_t dirent_num;        // number of directory entries
  uint16_t sec_num;           // total sectors in the logical volume
  uint8_t media_desc_type;    // media descriptor type
  uint16_t sec_per_fat;       // sector number per FAT
  uint16_t sec_per_track;     // sector number per track
  uint16_t head_num;          // number of heads or sides
  uint32_t hidden_sec_num;    // number of hidden sectors
  uint32_t large_sec_cnt;     // large sector count
  uint8_t drive_num;
  uint8_t windows_nt_flags;
  uint8_t signature;
  uint32_t volume_id;
  char volume_label[11];
  char system_identifier[8];
  uint8_t boot_code[448];
  uint16_t magic_num;
}__attribute__((packed)) BootRecord;

typedef struct DirEntry {
  char file_name[FILE_NAME_LEN];
  uint8_t file_attr;
  uint8_t windows_nt_reserve;
  uint8_t creation_time_len;
  uint16_t creation_time;
  uint16_t creation_date;
  uint16_t last_accessed_date;
  uint16_t first_clus_high; // high 16 bits of first cluster number
  uint16_t last_modification_time;
  uint16_t last_modification_date;
  uint16_t first_clus_low; // low 16 bits of first cluster number
  uint32_t file_sz;
}__attribute__((packed)) DirEntry;

__attribute_maybe_unused__
typedef struct LFN {
  uint8_t order;
  char first_2byte_chars[10];
  uint8_t attr;
  uint8_t long_entry_type;
  uint8_t checksum;
  char second_2byte_chars[12];
  uint8_t zeros[2];
  char final_2byte_chars[4];
}__attribute__((packed)) LFN;

typedef enum FileAttr {
  FILE_ATTR_READ_ONLY = 0x01,
  FILE_ATTR_HIDDEN = 0x02,
  FILE_ATTR_SYSTEM = 0x04,
  FILE_ATTR_VOLUME_ID = 0x08,
  FILE_ATTR_DIRECTORY = 0x10,
  FILE_ATTR_ARCHIVE = 0x20,
} FileAttr;

void disk_init(char const *filename);
void disk_exit();

bool list(char const *path, bool long_flag);
bool concatenate(char const *path);

#endif //LAB2__DISK_H_
