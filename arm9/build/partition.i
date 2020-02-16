# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.c"
# 1 "C:\\Users\\GRX\\NeoDS-master-old\\arm9\\build//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.c"
# 40 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.c"
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.h" 1
# 36 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.h"
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/common.h" 1
# 43 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/common.h"
# 1 "C:/devkitPro/libnds/include/nds/ndstypes.h" 1
# 68 "C:/devkitPro/libnds/include/nds/ndstypes.h"
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h" 1 3
# 41 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h" 3
typedef signed char int8_t ;
typedef unsigned char uint8_t ;




typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;




typedef signed short int16_t;
typedef unsigned short uint16_t;
# 67 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h" 3
typedef int16_t int_least16_t;
typedef uint16_t uint_least16_t;
# 79 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h" 3
typedef signed int int32_t;
typedef unsigned int uint32_t;
# 97 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h" 3
typedef int32_t int_least32_t;
typedef uint32_t uint_least32_t;
# 119 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h" 3
typedef signed long long int64_t;
typedef unsigned long long uint64_t;
# 129 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h" 3
typedef int64_t int_least64_t;
typedef uint64_t uint_least64_t;
# 159 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h" 3
  typedef signed int int_fast8_t;
  typedef unsigned int uint_fast8_t;




  typedef signed int int_fast16_t;
  typedef unsigned int uint_fast16_t;




  typedef signed int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 213 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h" 3
  typedef int_least64_t int_fast64_t;
  typedef uint_least64_t uint_fast64_t;







  typedef long long int intmax_t;
# 231 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h" 3
  typedef long long unsigned int uintmax_t;
# 243 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h" 3
typedef signed int intptr_t;
typedef unsigned int uintptr_t;
# 69 "C:/devkitPro/libnds/include/nds/ndstypes.h" 2

typedef uint8_t uint8;
typedef uint16_t uint16;
typedef uint32_t uint32;
typedef uint64_t uint64;

typedef int8_t int8;
typedef int16_t int16;
typedef int32_t int32;
typedef int64_t int64;

typedef float float32;
typedef double float64;

typedef volatile uint8_t vuint8;
typedef volatile uint16_t vuint16;
typedef volatile uint32_t vuint32;
typedef volatile uint64_t vuint64;

typedef volatile int8_t vint8;
typedef volatile int16_t vint16;
typedef volatile int32_t vint32;
typedef volatile int64_t vint64;

typedef volatile float32 vfloat32;
typedef volatile float64 vfloat64;

typedef uint8_t byte;

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;

typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;

typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;
# 125 "C:/devkitPro/libnds/include/nds/ndstypes.h"
typedef enum { false, true } bool;



typedef void ( * IntFn)(void);
typedef void (* VoidFn)(void);
typedef void (* fp)(void);
# 44 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/common.h" 2
# 37 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.h" 2

# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc.h" 1
# 36 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc.h"
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/../common.h" 1
# 37 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc.h" 2
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc_io.h" 1
# 61 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc_io.h"
typedef bool (* FN_MEDIUM_STARTUP)(void) ;
typedef bool (* FN_MEDIUM_ISINSERTED)(void) ;
typedef bool (* FN_MEDIUM_READSECTORS)(u32 sector, u32 numSectors, void* buffer) ;
typedef bool (* FN_MEDIUM_WRITESECTORS)(u32 sector, u32 numSectors, const void* buffer) ;
typedef bool (* FN_MEDIUM_CLEARSTATUS)(void) ;
typedef bool (* FN_MEDIUM_SHUTDOWN)(void) ;

struct IO_INTERFACE_STRUCT {
 unsigned long ioType ;
 unsigned long features ;
 FN_MEDIUM_STARTUP fn_startup ;
 FN_MEDIUM_ISINSERTED fn_isInserted ;
 FN_MEDIUM_READSECTORS fn_readSectors ;
 FN_MEDIUM_WRITESECTORS fn_writeSectors ;
 FN_MEDIUM_CLEARSTATUS fn_clearStatus ;
 FN_MEDIUM_SHUTDOWN fn_shutdown ;
} ;

typedef struct IO_INTERFACE_STRUCT IO_INTERFACE ;
# 38 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc.h" 2






extern const IO_INTERFACE* _FAT_disc_gbaSlotFindInterface (void);







extern const IO_INTERFACE* _FAT_disc_dsSlotFindInterface (void);







extern const IO_INTERFACE* _FAT_disc_findInterface (void);





static inline bool _FAT_disc_isInserted (const IO_INTERFACE* disc) {
 return disc->fn_isInserted();
}







static inline bool _FAT_disc_readSectors (const IO_INTERFACE* disc, u32 sector, u32 numSectors, void* buffer) {
 return disc->fn_readSectors (sector, numSectors, buffer);
}







static inline bool _FAT_disc_writeSectors (const IO_INTERFACE* disc, u32 sector, u32 numSectors, const void* buffer) {
 return disc->fn_writeSectors (sector, numSectors, buffer);
}




static inline bool _FAT_disc_clearStatus (const IO_INTERFACE* disc) {
 return disc->fn_clearStatus();
}




static inline bool _FAT_disc_startup (const IO_INTERFACE* disc) {
 return disc->fn_startup();
}





static inline bool _FAT_disc_shutdown (const IO_INTERFACE* disc) {
 return disc->fn_shutdown();
}




static inline u32 _FAT_disc_hostType (const IO_INTERFACE* disc) {
 return disc->ioType;
}




static inline u32 _FAT_disc_features (const IO_INTERFACE* disc) {
 return disc->features;
}
# 39 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.h" 2
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/cache.h" 1
# 43 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/cache.h"
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc_io.h" 1
# 44 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/cache.h" 2



typedef struct {
 u32 sector;
 u32 count;
 bool dirty;
} CACHE_ENTRY;

typedef struct {
 const IO_INTERFACE* disc;
 u32 numberOfPages;
 CACHE_ENTRY* cacheEntries;
 u8* pages;
} CACHE;
# 68 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/cache.h"
bool _FAT_cache_readPartialSector (CACHE* cache, void* buffer, u32 sector, u32 offset, u32 size);
# 78 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/cache.h"
bool _FAT_cache_writePartialSector (CACHE* cache, const void* buffer, u32 sector, u32 offset, u32 size);
# 88 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/cache.h"
bool _FAT_cache_eraseWritePartialSector (CACHE* cache, const void* buffer, u32 sector, u32 offset, u32 size);




static inline bool _FAT_cache_readSector (CACHE* cache, void* buffer, u32 sector) {
 return _FAT_cache_readPartialSector (cache, buffer, sector, 0, 512);
}




static inline bool _FAT_cache_writeSector (CACHE* cache, const void* buffer, u32 sector) {
 return _FAT_cache_writePartialSector (cache, buffer, sector, 0, 512);
}




bool _FAT_cache_flush (CACHE* cache);




void _FAT_cache_invalidate (CACHE* cache);

CACHE* _FAT_cache_constructor (u32 numberOfPages, const IO_INTERFACE* discInterface);

void _FAT_cache_destructor (CACHE* cache);
# 40 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.h" 2


extern const char* DEVICE_NAME;


typedef enum {FS_UNKNOWN, FS_FAT12, FS_FAT16, FS_FAT32} FS_TYPE;


typedef enum {PI_DEFAULT, PI_SLOT_1, PI_SLOT_2, PI_CUSTOM} PARTITION_INTERFACE;




typedef struct {
 u32 fatStart;
 u32 sectorsPerFat;
 u32 lastCluster;
 u32 firstFree;
} FAT;

typedef struct {
 const IO_INTERFACE* disc;
 CACHE* cache;

 bool readOnly;
 FS_TYPE filesysType;
 u32 totalSize;
 u32 rootDirStart;
 u32 rootDirCluster;
 u32 numberOfSectors;
 u32 dataStart;
 u32 bytesPerSector;
 u32 sectorsPerCluster;
 u32 bytesPerCluster;
 FAT fat;

 u32 cwdCluster;
 u32 openFileCount;
} PARTITION;






bool _FAT_partition_mount (PARTITION_INTERFACE partitionNumber, u32 cacheSize);




bool _FAT_partition_mountCustomInterface (const IO_INTERFACE* device, u32 cacheSize);





bool _FAT_partition_unmount (PARTITION_INTERFACE partitionNumber);






bool _FAT_partition_unsafeUnmount (PARTITION_INTERFACE partitionNumber);





bool _FAT_partition_setDefaultInterface (PARTITION_INTERFACE partitionNumber);





bool _FAT_partition_setDefaultPartition (PARTITION* partition);






PARTITION* _FAT_partition_getPartitionFromPath (const char* path);
# 41 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.c" 2
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/bit_ops.h" 1
# 38 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/bit_ops.h"
static inline u16 u8array_to_u16 (const u8* item, int offset) {
 return ( item[offset] | (item[offset + 1] << 8));
}

static inline u32 u8array_to_u32 (const u8* item, int offset) {
 return ( item[offset] | (item[offset + 1] << 8) | (item[offset + 2] << 16) | (item[offset + 3] << 24));
}

static inline void u16_to_u8array (u8* item, int offset, u16 value) {
 item[offset] = (u8)value;
 item[offset + 1] = (u8)(value >> 8);
}

static inline void u32_to_u8array (u8* item, int offset, u32 value) {
 item[offset] = (u8)value;
 item[offset + 1] = (u8)(value >> 8);
 item[offset + 2] = (u8)(value >> 16);
 item[offset + 3] = (u8)(value >> 24);
}
# 42 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.c" 2
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/file_allocation_table.h" 1
# 51 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/file_allocation_table.h"
u32 _FAT_fat_nextCluster(PARTITION* partition, u32 cluster);

u32 _FAT_fat_linkFreeCluster(PARTITION* partition, u32 cluster);
u32 _FAT_fat_linkFreeClusterCleared (PARTITION* partition, u32 cluster);

bool _FAT_fat_clearLinks (PARTITION* partition, u32 cluster);

u32 _FAT_fat_lastCluster (PARTITION* partition, u32 cluster);

static inline u32 _FAT_fat_clusterToSector (PARTITION* partition, u32 cluster) {
 return (cluster >= 2) ? ((cluster - 2) * partition->sectorsPerCluster) + partition->dataStart : partition->rootDirStart;
}
# 43 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.c" 2
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/directory.h" 1
# 36 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/directory.h"
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/stat.h" 1 3







# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/_ansi.h" 1 3
# 15 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/_ansi.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/newlib.h" 1 3
# 16 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/_ansi.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/config.h" 1 3



# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/ieeefp.h" 1 3
# 5 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/config.h" 2 3
# 17 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/_ansi.h" 2 3
# 9 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/stat.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/time.h" 1 3
# 10 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/time.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/_ansi.h" 1 3
# 11 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/time.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 1 3
# 14 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/_types.h" 1 3
# 12 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/_types.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/_types.h" 1 3






# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/_default_types.h" 1 3
# 26 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;
# 36 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 8 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/_types.h" 2 3
# 13 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/_types.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 14 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/_types.h" 2 3


typedef long _off_t;







typedef int __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 56 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/_types.h" 3
typedef int _ssize_t;






# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 1 3 4
# 352 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 64 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 15 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 37 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 89 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 105 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 169 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int);

  int (* _write) (struct _reent *, void *, const char *, int);

  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 273 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 305 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 579 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;


  struct _atexit *_atexit;
  struct _atexit _atexit0;


  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 817 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 12 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/time.h" 2 3






# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/time.h" 1 3
# 19 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/time.h" 2 3
# 27 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/time.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 1 3 4
# 211 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
typedef unsigned int size_t;
# 28 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/time.h" 2 3

# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/types.h" 1 3
# 69 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/types.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 1 3 4
# 149 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 323 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 70 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/types.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/types.h" 1 3
# 19 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/types.h" 3
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/types.h" 2 3
# 92 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/types.h" 3
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;



typedef unsigned short ushort;
typedef unsigned int uint;



typedef unsigned long clock_t;




typedef long time_t;




struct timespec {
  time_t tv_sec;
  long tv_nsec;
};

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;
typedef char * caddr_t;






typedef unsigned int ino_t;
# 162 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/types.h" 3
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;



typedef long key_t;

typedef _ssize_t ssize_t;
# 191 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/types.h" 3
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 218 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/types.h" 3
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 249 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/types.h" 3
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;

typedef __uint32_t fsblkcnt_t;
typedef __uint32_t fsfilcnt_t;

# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/features.h" 1 3
# 265 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/types.h" 2 3
# 30 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/time.h" 2 3



struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;
};

clock_t clock (void);
double difftime (time_t _time2, time_t _time1);
time_t mktime (struct tm *_timeptr);
time_t time (time_t *_timer);

char *asctime (const struct tm *_tblock);
char *ctime (const time_t *_time);
struct tm *gmtime (const time_t *_timer);
struct tm *localtime (const time_t *_timer);

size_t strftime (char *_s, size_t _maxsize, const char *_fmt, const struct tm *_t);

char *asctime_r (const struct tm *, char *);
char *ctime_r (const time_t *, char *);
struct tm *gmtime_r (const time_t *, struct tm *);
struct tm *localtime_r (const time_t *, struct tm *);








char *strptime (const char *, const char *, struct tm *);
void tzset (void);
void _tzset_r (struct _reent *);

typedef struct __tzrule_struct
{
  char ch;
  int m;
  int n;
  int d;
  int s;
  time_t change;
  long offset;
} __tzrule_type;

typedef struct __tzinfo_struct
{
  int __tznorth;
  int __tzyear;
  __tzrule_type __tzrule[2];
} __tzinfo_type;

__tzinfo_type *__gettzinfo (void);
# 118 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/time.h" 3
extern long _timezone;
extern int _daylight;
extern char *_tzname[2];
# 10 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/stat.h" 2 3
# 25 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/stat.h" 3
struct stat
{
  dev_t st_dev;
  ino_t st_ino;
  mode_t st_mode;
  nlink_t st_nlink;
  uid_t st_uid;
  gid_t st_gid;
  dev_t st_rdev;
  off_t st_size;
# 48 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/stat.h" 3
  time_t st_atime;
  long st_spare1;
  time_t st_mtime;
  long st_spare2;
  time_t st_ctime;
  long st_spare3;
  long st_blksize;
  long st_blocks;
  long st_spare4[2];


};
# 139 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/stat.h" 3
int chmod ( const char *__path, mode_t __mode );
int fchmod (int __fd, mode_t __mode);
int fstat ( int __fd, struct stat *__sbuf );
int mkdir ( const char *_path, mode_t __mode );
int mkfifo ( const char *__path, mode_t __mode );
int stat ( const char *__path, struct stat *__sbuf );
mode_t umask ( mode_t __mask );
# 37 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/directory.h" 2
# 58 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/directory.h"
typedef enum {FT_DIRECTORY, FT_FILE} FILE_TYPE;

typedef struct {
 u32 cluster;
 u32 sector;
 s32 offset;
} DIR_ENTRY_POSITION;

typedef struct {
 u8 entryData[0x20];
 DIR_ENTRY_POSITION dataStart;
 DIR_ENTRY_POSITION dataEnd;
 char filename[256];
} DIR_ENTRY;


enum DIR_ENTRY_offset {
 DIR_ENTRY_name = 0x00,
 DIR_ENTRY_extension = 0x08,
 DIR_ENTRY_attributes = 0x0B,
 DIR_ENTRY_reserved = 0x0C,
 DIR_ENTRY_cTime_ms = 0x0D,
 DIR_ENTRY_cTime = 0x0E,
 DIR_ENTRY_cDate = 0x10,
 DIR_ENTRY_aDate = 0x12,
 DIR_ENTRY_clusterHigh = 0x14,
 DIR_ENTRY_mTime = 0x16,
 DIR_ENTRY_mDate = 0x18,
 DIR_ENTRY_cluster = 0x1A,
 DIR_ENTRY_fileSize = 0x1C
};




static inline bool _FAT_directory_isDirectory (DIR_ENTRY* entry) {
 return ((entry->entryData[DIR_ENTRY_attributes] & 0x10) != 0);
}

static inline bool _FAT_directory_isWritable (DIR_ENTRY* entry) {
 return ((entry->entryData[DIR_ENTRY_attributes] & 0x01) == 0);
}

static inline bool _FAT_directory_isDot (DIR_ENTRY* entry) {
 return ((entry->filename[0] == '.') && ((entry->filename[1] == '\0') ||
  ((entry->filename[1] == '.') && entry->filename[2] == '\0')));
}







bool _FAT_directory_getFirstEntry (PARTITION* partition, DIR_ENTRY* entry, u32 dirCluster);







bool _FAT_directory_getNextEntry (PARTITION* partition, DIR_ENTRY* entry);
# 131 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/directory.h"
bool _FAT_directory_entryFromPath (PARTITION* partition, DIR_ENTRY* entry, const char* path, const char* pathEnd);





bool _FAT_directory_chdir (PARTITION* partition, const char* path);






bool _FAT_directory_removeEntry (PARTITION* partition, DIR_ENTRY* entry);







bool _FAT_directory_addEntry (PARTITION* partition, DIR_ENTRY* entry, u32 dirCluster);




u32 _FAT_directory_entryGetCluster (const u8* entryData);






bool _FAT_directory_entryFromPosition (PARTITION* partition, DIR_ENTRY* entry);




void _FAT_directory_entryStat (PARTITION* partition, DIR_ENTRY* entry, struct stat *st);
# 44 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.c" 2

# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/string.h" 1 3
# 14 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/string.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 1 3 4
# 15 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/string.h" 2 3







void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);


char *strtok_r (char *, const char *, char **);

int bcmp (const void *, const void *, size_t);
void bcopy (const void *, void *, size_t);
void bzero (void *, size_t);
int ffs (int);
char *index (const char *, int);
void * memccpy (void *, const void *, int, size_t);
void * mempcpy (void *, const void *, size_t);
void * memmem (const void *, size_t, const void *, size_t);
char *rindex (const char *, int);
char *stpcpy (char *, const char *);
char *stpncpy (char *, const char *, size_t);
int strcasecmp (const char *, const char *);
char *strcasestr (const char *, const char *);
char *strdup (const char *);
char *_strdup_r (struct _reent *, const char *);
char *strndup (const char *, size_t);
char *_strndup_r (struct _reent *, const char *, size_t);
char *strerror_r (int, char *, size_t);
size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);
int strncasecmp (const char *, const char *, size_t);
size_t strnlen (const char *, size_t);
char *strsep (char **, const char *);
char *strlwr (char *);
char *strupr (char *);
# 100 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/string.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/string.h" 1 3
# 101 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/string.h" 2 3


# 46 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.c" 2
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/ctype.h" 1 3







int isalnum (int __c);
int isalpha (int __c);
int iscntrl (int __c);
int isdigit (int __c);
int isgraph (int __c);
int islower (int __c);
int isprint (int __c);
int ispunct (int __c);
int isspace (int __c);
int isupper (int __c);
int isxdigit (int __c);
int tolower (int __c);
int toupper (int __c);


int isblank (int __c);



int isascii (int __c);
int toascii (int __c);
# 45 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/ctype.h" 3
extern char *__ctype_ptr__;
# 109 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/ctype.h" 3
extern const char _ctype_[];


# 47 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.c" 2

# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/mem_allocate.h" 1
# 37 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/mem_allocate.h"
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/malloc.h" 1 3
# 10 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/malloc.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 1 3 4
# 11 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/malloc.h" 2 3


# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/malloc.h" 1 3
# 14 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/malloc.h" 2 3
# 22 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/malloc.h" 3
struct mallinfo {
  int arena;
  int ordblks;
  int smblks;
  int hblks;
  int hblkhd;
  int usmblks;
  int fsmblks;
  int uordblks;
  int fordblks;
  int keepcost;
};



extern void * malloc (size_t);




extern void * _malloc_r (struct _reent *, size_t);


extern void free (void *);




extern void _free_r (struct _reent *, void *);


extern void * realloc (void *, size_t);




extern void * _realloc_r (struct _reent *, void *, size_t);


extern void * calloc (size_t, size_t);




extern void * _calloc_r (struct _reent *, size_t, size_t);


extern void * memalign (size_t, size_t);




extern void * _memalign_r (struct _reent *, size_t, size_t);


extern struct mallinfo mallinfo (void);




extern struct mallinfo _mallinfo_r (struct _reent *);


extern void malloc_stats (void);




extern void _malloc_stats_r (struct _reent *);


extern int mallopt (int, int);




extern int _mallopt_r (struct _reent *, int, int);


extern size_t malloc_usable_size (void *);




extern size_t _malloc_usable_size_r (struct _reent *, void *);





extern void * valloc (size_t);




extern void * _valloc_r (struct _reent *, size_t);


extern void * pvalloc (size_t);




extern void * _pvalloc_r (struct _reent *, size_t);


extern int malloc_trim (size_t);




extern int _malloc_trim_r (struct _reent *, size_t);




extern void mstats (char *);




extern void _mstats_r (struct _reent *, char *);
# 162 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/malloc.h" 3
extern void cfree (void *);
# 38 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/mem_allocate.h" 2

static inline void* _FAT_mem_allocate (size_t size) {
 return malloc (size);
}

static inline void _FAT_mem_free (void* mem) {
 return free (mem);
}
# 49 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.c" 2




const char* DEVICE_NAME = "fat";






enum BPB {
 BPB_jmpBoot = 0x00,
 BPB_OEMName = 0x03,

 BPB_bytesPerSector = 0x0B,
 BPB_sectorsPerCluster = 0x0D,
 BPB_reservedSectors = 0x0E,
 BPB_numFATs = 0x10,
 BPB_rootEntries = 0x11,
 BPB_numSectorsSmall = 0x13,
 BPB_mediaDesc = 0x15,
 BPB_sectorsPerFAT = 0x16,
 BPB_sectorsPerTrk = 0x18,
 BPB_numHeads = 0x1A,
 BPB_numHiddenSectors = 0x1C,
 BPB_numSectors = 0x20,

 BPB_FAT16_driveNumber = 0x24,
 BPB_FAT16_reserved1 = 0x25,
 BPB_FAT16_extBootSig = 0x26,
 BPB_FAT16_volumeID = 0x27,
 BPB_FAT16_volumeLabel = 0x2B,
 BPB_FAT16_fileSysType = 0x36,

 BPB_FAT16_bootCode = 0x3E,

 BPB_FAT32_sectorsPerFAT32 = 0x24,
 BPB_FAT32_extFlags = 0x28,
 BPB_FAT32_fsVer = 0x2A,
 BPB_FAT32_rootClus = 0x2C,
 BPB_FAT32_fsInfo = 0x30,
 BPB_FAT32_bkBootSec = 0x32,

 BPB_FAT32_driveNumber = 0x40,
 BPB_FAT32_reserved1 = 0x41,
 BPB_FAT32_extBootSig = 0x42,
 BPB_FAT32_volumeID = 0x43,
 BPB_FAT32_volumeLabel = 0x47,
 BPB_FAT32_fileSysType = 0x52,

 BPB_FAT32_bootCode = 0x5A,
 BPB_bootSig_55 = 0x1FE,
 BPB_bootSig_AA = 0x1FF
};




PARTITION* _FAT_partitions[4] = {((void *)0)};
# 117 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.c"
static PARTITION* _FAT_partition_constructor ( const IO_INTERFACE* disc, u32 cacheSize) {
 PARTITION* partition;
 int i;
 u32 bootSector;
 u8 sectorBuffer[512] = {0};


 if ( !_FAT_disc_readSectors (disc, 0, 1, sectorBuffer)) {
  return ((void *)0);
 }


 if ( (sectorBuffer[BPB_bootSig_55] != 0x55) || (sectorBuffer[BPB_bootSig_AA] != 0xAA)) {
  return ((void *)0);
 }


 if ((sectorBuffer[0x36] == 'F') && (sectorBuffer[0x37] == 'A') && (sectorBuffer[0x38] == 'T')) {
  bootSector = 0;
 } else if ((sectorBuffer[0x52] == 'F') && (sectorBuffer[0x53] == 'A') && (sectorBuffer[0x54] == 'T')) {

  bootSector = 0;
 } else {



  for (i=0x1BE; (i < 0x1FE) && (sectorBuffer[i] != 0x80); i+= 0x10);

  if (i == 0x1FE) {
   for (i=0x1BE; (i < 0x1FE) && (sectorBuffer[i+0x04] == 0x00); i+= 0x10);
  }


  if ( i != 0x1FE) {

   bootSector = u8array_to_u32(sectorBuffer, 0x8 + i);
  } else {
   bootSector = 0;
  }
 }


 if ( !_FAT_disc_readSectors (disc, bootSector, 1, sectorBuffer)) {
  return ((void *)0);
 }

 partition = (PARTITION*) _FAT_mem_allocate (sizeof(PARTITION));
 if (partition == ((void *)0)) {
  return ((void *)0);
 }


 partition->disc = disc;


 partition->fat.sectorsPerFat = u8array_to_u16(sectorBuffer, BPB_sectorsPerFAT);
 if (partition->fat.sectorsPerFat == 0) {
  partition->fat.sectorsPerFat = u8array_to_u32( sectorBuffer, BPB_FAT32_sectorsPerFAT32);
 }

 partition->numberOfSectors = u8array_to_u16( sectorBuffer, BPB_numSectorsSmall);
 if (partition->numberOfSectors == 0) {
  partition->numberOfSectors = u8array_to_u32( sectorBuffer, BPB_numSectors);
 }

 partition->bytesPerSector = 512;
 partition->sectorsPerCluster = sectorBuffer[BPB_sectorsPerCluster] * u8array_to_u16(sectorBuffer, BPB_bytesPerSector) / 512;
 partition->bytesPerCluster = partition->bytesPerSector * partition->sectorsPerCluster;
 partition->fat.fatStart = bootSector + u8array_to_u16(sectorBuffer, BPB_reservedSectors);

 partition->rootDirStart = partition->fat.fatStart + (sectorBuffer[BPB_numFATs] * partition->fat.sectorsPerFat);
 partition->dataStart = partition->rootDirStart + (( u8array_to_u16(sectorBuffer, BPB_rootEntries) * 0x20) / partition->bytesPerSector);

 partition->totalSize = (partition->numberOfSectors - partition->dataStart) * partition->bytesPerSector;


 partition->fat.lastCluster = (partition->numberOfSectors - partition->dataStart) / partition->sectorsPerCluster;
 partition->fat.firstFree = 0x0002;

 if (partition->fat.lastCluster < 4085) {
  partition->filesysType = FS_FAT12;
 } else if (partition->fat.lastCluster < 65525) {
  partition->filesysType = FS_FAT16;
 } else {
  partition->filesysType = FS_FAT32;
 }

 if (partition->filesysType != FS_FAT32) {
  partition->rootDirCluster = 0;
 } else {

  partition->rootDirCluster = u8array_to_u32(sectorBuffer, BPB_FAT32_rootClus);

  if (!(sectorBuffer[BPB_FAT32_extFlags] & 0x80)) {

   partition->fat.fatStart = partition->fat.fatStart + ( partition->fat.sectorsPerFat * (sectorBuffer[BPB_FAT32_extFlags] & 0x0F));
  }
 }


 partition->cache = _FAT_cache_constructor (cacheSize, partition->disc);


 partition->cwdCluster = partition->rootDirCluster;


 partition->readOnly = !(_FAT_disc_features(disc) & 0x00000002);


 partition->openFileCount = 0;

 return partition;
}

static void _FAT_partition_destructor (PARTITION* partition) {
 _FAT_cache_destructor (partition->cache);
 _FAT_disc_shutdown (partition->disc);
 _FAT_mem_free (partition);
}

bool _FAT_partition_mount (PARTITION_INTERFACE partitionNumber, u32 cacheSize) {

 int i;
 const IO_INTERFACE* disc = ((void *)0);

 if (_FAT_partitions[partitionNumber] != ((void *)0)) {
  return false;
 }

 switch (partitionNumber) {
  case PI_SLOT_1:

   disc = _FAT_disc_dsSlotFindInterface ();
   break;
  case PI_SLOT_2:

   disc = _FAT_disc_gbaSlotFindInterface ();
   break;
  case PI_DEFAULT:
  case PI_CUSTOM:
  default:

   return false;
   break;
 }

 if (disc == ((void *)0)) {
  return false;
 }


 for (i = 0; i < 4; i++) {
  if ((_FAT_partitions[i] != ((void *)0)) && (_FAT_partitions[i]->disc == disc)) {
   _FAT_partitions[partitionNumber] = _FAT_partitions[i];
   return true;
  }
 }

 _FAT_partitions[partitionNumber] = _FAT_partition_constructor (disc, cacheSize);

 if (_FAT_partitions[partitionNumber] == ((void *)0)) {
  return false;
 }
# 294 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.c"
 return true;
}

bool _FAT_partition_mountCustomInterface (const IO_INTERFACE* device, u32 cacheSize) {

 int i;

 if (_FAT_partitions[PI_CUSTOM] != ((void *)0)) {
  return false;
 }

 if (device == ((void *)0)) {
  return false;
 }


 for (i = 0; i < 4; i++) {
  if ((_FAT_partitions[i] != ((void *)0)) && (_FAT_partitions[i]->disc == device)) {
   _FAT_partitions[PI_CUSTOM] = _FAT_partitions[i];
   return true;
  }
 }

 _FAT_partitions[PI_CUSTOM] = _FAT_partition_constructor (device, cacheSize);

 if (_FAT_partitions[PI_CUSTOM] == ((void *)0)) {
  return false;
 }
# 337 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.c"
 return true;
}

bool _FAT_partition_setDefaultInterface (PARTITION_INTERFACE partitionNumber) {

 if ((partitionNumber < 1) || (partitionNumber >= 4)) {
  return false;
 }

 if (_FAT_partitions[partitionNumber] == ((void *)0)) {
  return false;
 }

 _FAT_partitions[PI_DEFAULT] = _FAT_partitions[partitionNumber];

 return true;
}

bool _FAT_partition_setDefaultPartition (PARTITION* partition) {

 int i;

 if (partition == ((void *)0)) {
  return false;
 }


 for (i = 1; i < 4; i++) {
  if (_FAT_partitions[i] == partition) {
   break;
  }
 }


 if (i == 4) {
  return false;
 }


 _FAT_partitions[PI_DEFAULT] = partition;


 return true;
}

bool _FAT_partition_unmount (PARTITION_INTERFACE partitionNumber) {
 int i;
 PARTITION* partition = _FAT_partitions[partitionNumber];

 if (partition == ((void *)0)) {
  return false;
 }

 if (partition->openFileCount > 0) {

  return false;
 }


 for (i = 0; i < 4; i++) {
  if (_FAT_partitions[i] == partition) {
   _FAT_partitions[i] = ((void *)0);
  }
 }

 _FAT_partition_destructor (partition);
 return true;
}

bool _FAT_partition_unsafeUnmount (PARTITION_INTERFACE partitionNumber) {
 int i;
 PARTITION* partition = _FAT_partitions[partitionNumber];

 if (partition == ((void *)0)) {
  return false;
 }


 for (i = 0; i < 4; i++) {
  if (_FAT_partitions[i] == partition) {
   _FAT_partitions[i] = ((void *)0);
  }
 }

 _FAT_cache_invalidate (partition->cache);
 _FAT_partition_destructor (partition);
 return true;
}

PARTITION* _FAT_partition_getPartitionFromPath (const char* path) {

 int namelen;
 int partitionNumber;


 namelen = strlen(DEVICE_NAME);
 if (strchr (path, ':') == ((void *)0)) {

  partitionNumber = PI_DEFAULT;
 } else if( strncmp(DEVICE_NAME, path, namelen) == 0 ) {
  if ( path[namelen] == ':' ) {

   partitionNumber = PI_DEFAULT;
  } else if ((((__ctype_ptr__+sizeof(""[path[namelen]]))[(int)(path[namelen])])&04) && path[namelen+1] ==':' ) {

   partitionNumber = path[namelen] - '0';
  } else {

   return ((void *)0);
  }
 } else {

  return ((void *)0);
 }

 if ((partitionNumber < 0) || (partitionNumber >= 4)) {
  return ((void *)0);
 }

 return _FAT_partitions[partitionNumber];




}
