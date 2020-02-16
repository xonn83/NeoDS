# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_fcsr.c"
# 1 "C:\\Users\\GRX\\NeoDS-master-old\\arm9\\build//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_fcsr.c"
# 38 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_fcsr.c"
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_fcsr.h" 1
# 39 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_fcsr.h"
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc_io.h" 1
# 39 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc_io.h"
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/../common.h" 1
# 43 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/../common.h"
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
# 44 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/../common.h" 2
# 40 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc_io.h" 2
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
# 40 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_fcsr.h" 2


extern const IO_INTERFACE _io_fcsr ;
# 39 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_fcsr.c" 2

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


# 41 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_fcsr.c" 2
# 64 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_fcsr.c"
const char _FCSR_LabelString[] = " Chishm FAT";

u8* _FCSR_FileSysPointer = 0;
u8* _FCSR_SramSectorPointer[4] = {0,0,0,0};
u32 _FCSR_SramSectorStart[4] = {0,0,0,0};
u32 _FCSR_SramSectorEnd[4] = {0,0,0,0};






bool _FCSR_isInserted (void)
{
 bool flagFoundFileSys = false;

 u32* fileSysPointer = (u32*)0x08000100;


 while ((fileSysPointer < (u32*)0x0A000000) && !flagFoundFileSys)
 {
  while ((*fileSysPointer != 0x52534346) && (fileSysPointer < (u32*)0x0A000000))
   fileSysPointer += 0x40;
  if ((strncmp(_FCSR_LabelString, (char*)(fileSysPointer + 1), 12) == 0) && (fileSysPointer < (u32*)0x0A000000))
  {
   flagFoundFileSys = true;
  } else {
   fileSysPointer += 0x80;
  }
 }

 return flagFoundFileSys;
}







bool _FCSR_clearStatus (void)
{
 return true;
}
# 119 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_fcsr.c"
bool _FCSR_readSectors (u32 sector, u32 numSectors, void* buffer)
{
 int i;
 bool flagSramSector = false;
 int readLength = numSectors * 512;
 u8* src;;
 u8* dst;


 for (i = 0; (i < 4) && !flagSramSector; i++)
 {
  if ((sector >= _FCSR_SramSectorStart[i]) && (sector < _FCSR_SramSectorEnd[i]))
  {
   flagSramSector = true;
   break;
  }
 }


 if ( flagSramSector && ((sector + numSectors) > _FCSR_SramSectorEnd[i]))
  return false;


 if (flagSramSector)
 {
  src = _FCSR_SramSectorPointer[i] + (sector - _FCSR_SramSectorStart[i]) * 512;
 } else {
  src = _FCSR_FileSysPointer + sector * 512;
 }
 dst = (u8*)buffer;

 if (flagSramSector)
 {
  while (readLength--)
  {
   *dst++ = *src++;
  }
 } else {
# 170 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_fcsr.c"
  memcpy (buffer, src, readLength);


 }

 return true;
}
# 187 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_fcsr.c"
bool _FCSR_writeSectors (u32 sector, u8 numSectors, void* buffer)
{
 int i;
 bool flagSramSector = false;
 u32 writeLength = numSectors * 512;
 u8* src = (u8*) buffer;
 u8* dst;


 for (i = 0; (i < 4) && !flagSramSector; i++)
 {
  if ((sector >= _FCSR_SramSectorStart[i]) && (sector < _FCSR_SramSectorEnd[i]))
  {
   flagSramSector = true;
   break;
  }
 }

 if (!flagSramSector)
  return false;


 if ((sector + numSectors) > _FCSR_SramSectorEnd[i])
  return false;


 dst = _FCSR_SramSectorPointer[i] + (sector - _FCSR_SramSectorStart[i]) * 512;
 while (writeLength--)
 {
  *dst++ = *src++;
 }

 return true;
}





bool _FCSR_shutdown(void)
{
 int i;
 if (_FCSR_clearStatus() == false)
  return false;

 _FCSR_FileSysPointer = 0;

 for (i=0; i < 4; i++)
 {
  _FCSR_SramSectorPointer[i] = 0;
  _FCSR_SramSectorStart[i] = 0;
  _FCSR_SramSectorEnd[i] = 0;
 }
 return true;
}






bool _FCSR_startUp(void)
{
 bool flagFoundFileSys = false;
 int i;
 int SramRegionSize[4];
 u8* srcByte;
 u8* destByte;

 u32* fileSysPointer = (u32*)0x08000100;


 while ((fileSysPointer < (u32*)0x0A000000) && !flagFoundFileSys)
 {
  while ((*fileSysPointer != 0x52534346) && (fileSysPointer < (u32*)0x0A000000))
   fileSysPointer += 0x40;
  if ((strncmp(_FCSR_LabelString, (char*)(fileSysPointer + 1), 12) == 0) && (fileSysPointer < (u32*)0x0A000000))
  {
   flagFoundFileSys = true;
  } else {
   fileSysPointer += 0x80;
  }
 }

 if (!flagFoundFileSys)
  return false;


 _FCSR_FileSysPointer = (u8*)(fileSysPointer - 0x40);


 for (i = 0; i < 4; i++)
 {
  _FCSR_SramSectorStart[i] = fileSysPointer[i+4];
  SramRegionSize[i] = fileSysPointer[i+8];
  _FCSR_SramSectorEnd[i] = _FCSR_SramSectorStart[i] + SramRegionSize[i];
 }


 _FCSR_SramSectorPointer[0] = (u8*)(0x0A000000 + 4);
 for (i = 1; i < 4; i++)
 {
  _FCSR_SramSectorPointer[i] = _FCSR_SramSectorPointer[i-1] + (SramRegionSize[i-1] * 512);
 }


 if ( (*((u8*)0x0A000000) != 'F') || (*((u8*)(0x0A000000 +1)) != 'C') || (*((u8*)(0x0A000000 +2)) != 'S') || (*((u8*)(0x0A000000 +3)) != 'R') )
 {
  *((u8*)0x0A000000) = 'F';
  *((u8*)(0x0A000000 +1)) = 'C';
  *((u8*)(0x0A000000 +2)) = 'S';
  *((u8*)(0x0A000000 +3)) = 'R';

  for (i = 0; i < 4; i++)
  {
   srcByte = _FCSR_FileSysPointer + (_FCSR_SramSectorStart[i] * 512);
   destByte = _FCSR_SramSectorPointer[i];
   while (srcByte < _FCSR_FileSysPointer + (_FCSR_SramSectorEnd[i] * 512) )
    *destByte++ = *srcByte++;
  }
 }


 for (i = 0; i < 4; i++)
 {
  if (SramRegionSize[i] == 0)
  {
   _FCSR_SramSectorStart[i] = 0xFFFFFFFF;
   _FCSR_SramSectorEnd[i] = 0xFFFFFFFF;
  }
 }

 return true;
}




const IO_INTERFACE _io_fcsr = {
 0x52534346,
 0x00000001 | 0x00000002 | 0x00000010,
 (FN_MEDIUM_STARTUP)&_FCSR_startUp,
 (FN_MEDIUM_ISINSERTED)&_FCSR_isInserted,
 (FN_MEDIUM_READSECTORS)&_FCSR_readSectors,
 (FN_MEDIUM_WRITESECTORS)&_FCSR_writeSectors,
 (FN_MEDIUM_CLEARSTATUS)&_FCSR_clearStatus,
 (FN_MEDIUM_SHUTDOWN)&_FCSR_shutdown
} ;
