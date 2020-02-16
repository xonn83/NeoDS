# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/file_allocation_table.c"
# 1 "C:\\Users\\GRX\\NeoDS-master-old\\arm9\\build//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/file_allocation_table.c"
# 40 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/file_allocation_table.c"
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/file_allocation_table.h" 1
# 39 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/file_allocation_table.h"
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
# 40 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/file_allocation_table.h" 2
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.h" 1
# 38 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.h"
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
# 41 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/file_allocation_table.h" 2
# 51 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/file_allocation_table.h"
u32 _FAT_fat_nextCluster(PARTITION* partition, u32 cluster);

u32 _FAT_fat_linkFreeCluster(PARTITION* partition, u32 cluster);
u32 _FAT_fat_linkFreeClusterCleared (PARTITION* partition, u32 cluster);

bool _FAT_fat_clearLinks (PARTITION* partition, u32 cluster);

u32 _FAT_fat_lastCluster (PARTITION* partition, u32 cluster);

static inline u32 _FAT_fat_clusterToSector (PARTITION* partition, u32 cluster) {
 return (cluster >= 2) ? ((cluster - 2) * partition->sectorsPerCluster) + partition->dataStart : partition->rootDirStart;
}
# 41 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/file_allocation_table.c" 2

# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/string.h" 1 3
# 10 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/string.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/_ansi.h" 1 3
# 15 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/_ansi.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/newlib.h" 1 3
# 16 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/_ansi.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/config.h" 1 3



# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/ieeefp.h" 1 3
# 5 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/config.h" 2 3
# 17 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/_ansi.h" 2 3
# 11 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/string.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 1 3
# 13 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/_ansi.h" 1 3
# 14 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 2 3
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
# 12 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/string.h" 2 3


# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 1 3 4
# 211 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
typedef unsigned int size_t;
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


# 43 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/file_allocation_table.c" 2




u32 _FAT_fat_nextCluster(PARTITION* partition, u32 cluster)
{
 u32 nextCluster = 0x0000;
 u32 sector;
 int offset;

 switch (partition->filesysType)
 {
  case FS_UNKNOWN:
   nextCluster = 0x0000;
   break;

  case FS_FAT12:
   sector = partition->fat.fatStart + (((cluster * 3) / 2) / 512);
   offset = ((cluster * 3) / 2) % 512;


   _FAT_cache_readPartialSector (partition->cache, &nextCluster, sector, offset, sizeof(u8));

   offset++;

   if (offset >= 512) {
    offset = 0;
    sector++;
   }

   _FAT_cache_readPartialSector (partition->cache, ((u8*)&nextCluster) + sizeof(u8), sector, offset, sizeof(u8));

   if (cluster & 0x01) {
    nextCluster = nextCluster >> 4;
   } else {
    nextCluster &= 0x0FFF;
   }

   if (nextCluster >= 0x0FF7)
   {
    nextCluster = 0x0FFFFFFF;
   }

   break;

  case FS_FAT16:
   sector = partition->fat.fatStart + ((cluster << 1) / 512);
   offset = (cluster % (512 >> 1)) << 1;

   _FAT_cache_readPartialSector (partition->cache, &nextCluster, sector, offset, sizeof(u16));

   if (nextCluster >= 0xFFF7)
   {
    nextCluster = 0x0FFFFFFF;
   }
   break;

  case FS_FAT32:
   sector = partition->fat.fatStart + ((cluster << 2) / 512);
   offset = (cluster % (512 >> 2)) << 2;

   _FAT_cache_readPartialSector (partition->cache, &nextCluster, sector, offset, sizeof(u32));

   if (nextCluster >= 0x0FFFFFF7)
   {
    nextCluster = 0x0FFFFFFF;
   }
   break;

  default:
   nextCluster = 0x0000;
   break;
 }

 return nextCluster;
}





static bool _FAT_fat_writeFatEntry (PARTITION* partition, u32 cluster, u32 value) {
 u32 sector;
 int offset;
 u8 oldValue;

 if ((cluster < 0x0002) || (cluster > partition->fat.lastCluster))
 {
  return false;
 }

 switch (partition->filesysType)
 {
  case FS_UNKNOWN:
   return false;
   break;

  case FS_FAT12:
   sector = partition->fat.fatStart + (((cluster * 3) / 2) / 512);
   offset = ((cluster * 3) / 2) % 512;

   if (cluster & 0x01) {

    _FAT_cache_readPartialSector (partition->cache, &oldValue, sector, offset, sizeof(u8));

    value = (value << 4) | (oldValue & 0x0F);

    _FAT_cache_writePartialSector (partition->cache, &value, sector, offset, sizeof(u8));

    offset++;
    if (offset >= 512) {
     offset = 0;
     sector++;
    }

    _FAT_cache_writePartialSector (partition->cache, ((u8*)&value) + sizeof(u8), sector, offset, sizeof(u8));

   } else {

    _FAT_cache_writePartialSector (partition->cache, &value, sector, offset, sizeof(u8));

    offset++;
    if (offset >= 512) {
     offset = 0;
     sector++;
    }

    _FAT_cache_readPartialSector (partition->cache, &oldValue, sector, offset, sizeof(u8));

    value = ((value >> 8) & 0x0F) | (oldValue & 0xF0);

    _FAT_cache_writePartialSector (partition->cache, &value, sector, offset, sizeof(u8));
   }

   break;

  case FS_FAT16:
   sector = partition->fat.fatStart + ((cluster << 1) / 512);
   offset = (cluster % (512 >> 1)) << 1;

   _FAT_cache_writePartialSector (partition->cache, &value, sector, offset, sizeof(u16));

   break;

  case FS_FAT32:
   sector = partition->fat.fatStart + ((cluster << 2) / 512);
   offset = (cluster % (512 >> 2)) << 2;

   _FAT_cache_writePartialSector (partition->cache, &value, sector, offset, sizeof(u32));

   break;

  default:
   return false;
   break;
 }

 return true;
}







u32 _FAT_fat_linkFreeCluster(PARTITION* partition, u32 cluster) {
 u32 firstFree;
 u32 curLink;
 u32 lastCluster;
 bool loopedAroundFAT = false;

 lastCluster = partition->fat.lastCluster;

 if (cluster > lastCluster) {
  return 0x0000;
 }


 curLink = _FAT_fat_nextCluster(partition, cluster);
 if ((curLink >= 0x0002) && (curLink <= lastCluster)) {
  return curLink;
 }


 firstFree = partition->fat.firstFree;

 if (firstFree < 0x0002) {
  firstFree = 0x0002;
 }


 while (_FAT_fat_nextCluster(partition, firstFree) != 0x0000) {
  firstFree++;
  if (firstFree > lastCluster) {
   if (loopedAroundFAT) {

    partition->fat.firstFree = firstFree;
    return 0x0000;
   } else {


    firstFree = 0x0002;
    loopedAroundFAT = true;
   }
  }
 }
 partition->fat.firstFree = firstFree;

 if ((cluster >= 0x0002) && (cluster < lastCluster))
 {

  _FAT_fat_writeFatEntry (partition, cluster, firstFree);
 }

 _FAT_fat_writeFatEntry (partition, firstFree, 0x0FFFFFFF);

 return firstFree;
}







u32 _FAT_fat_linkFreeClusterCleared (PARTITION* partition, u32 cluster) {
 u32 newCluster;
 int i;
 u8 emptySector[512];


 newCluster = _FAT_fat_linkFreeCluster(partition, cluster);

 if (newCluster == 0x0000) {
  return 0x0000;
 }


 memset (emptySector, 0, 512);
 for (i = 0; i < partition->sectorsPerCluster; i++) {
  _FAT_disc_writeSectors (partition->disc,
   _FAT_fat_clusterToSector (partition, newCluster) + i,
   1, emptySector);
 }

 return newCluster;
}






bool _FAT_fat_clearLinks (PARTITION* partition, u32 cluster) {
 u32 nextCluster;

 if ((cluster < 0x0002) || (cluster > partition->fat.lastCluster))
  return false;


 if (cluster < partition->fat.firstFree) {
  partition->fat.firstFree = cluster;
 }

 while ((cluster != 0x0FFFFFFF) && (cluster != 0x0000)) {

  nextCluster = _FAT_fat_nextCluster (partition, cluster);


  _FAT_fat_writeFatEntry (partition, cluster, 0x0000);


  cluster = nextCluster;
 }

 return true;
}





u32 _FAT_fat_lastCluster (PARTITION* partition, u32 cluster) {
 while ((_FAT_fat_nextCluster(partition, cluster) != 0x0000) && (_FAT_fat_nextCluster(partition, cluster) != 0x0FFFFFFF)) {
  cluster = _FAT_fat_nextCluster(partition, cluster);
 }
 return cluster;
}
