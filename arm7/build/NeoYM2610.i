# 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoYM2610.c"
# 1 "C:\\Users\\GRX\\NeoDS-GBMacro\\arm7\\build//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoYM2610.c"
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/string.h" 1 3
# 10 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/string.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/_ansi.h" 1 3
# 15 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/_ansi.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/newlib.h" 1 3
# 16 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/_ansi.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/config.h" 1 3



# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/machine/ieeefp.h" 1 3
# 5 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/config.h" 2 3
# 17 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/_ansi.h" 2 3
# 11 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/string.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/reent.h" 1 3
# 13 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/reent.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/_ansi.h" 1 3
# 14 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/reent.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/_types.h" 1 3
# 12 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/_types.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 13 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/_types.h" 2 3

typedef long _off_t;
__extension__ typedef long long _off64_t;


typedef int _ssize_t;





# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stddef.h" 1 3 4
# 355 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 25 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/_types.h" 2 3


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
# 15 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 42 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/reent.h" 3
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
# 87 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 103 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};






typedef long _fpos_t;
# 168 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  int _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (void * _cookie, char *_buf, int _n);
  int (*_write) (void * _cookie, const char *_buf, int _n);

  _fpos_t (*_seek) (void * _cookie, _fpos_t _offset, int _whence);
  int (*_close) (void * _cookie);


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

};
# 261 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;


struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 292 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 561 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


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
# 793 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 12 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/string.h" 2 3


# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stddef.h" 1 3 4
# 214 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stddef.h" 3 4
typedef unsigned int size_t;
# 15 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/string.h" 2 3







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



char *rindex (const char *, int);
int strcasecmp (const char *, const char *);
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
# 99 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/string.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/string.h" 1 3
# 100 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/string.h" 2 3


# 2 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoYM2610.c" 2
# 1 "C:/devkitPro/libnds/include/nds.h" 1
# 44 "C:/devkitPro/libnds/include/nds.h"
# 1 "C:/devkitPro/libnds/include/nds/jtypes.h" 1
# 65 "C:/devkitPro/libnds/include/nds/jtypes.h"
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h" 1 3
# 45 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h" 3
typedef signed char int8_t ;
typedef unsigned char uint8_t ;




typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;




typedef signed short int16_t;
typedef unsigned short uint16_t;
# 71 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h" 3
typedef int16_t int_least16_t;
typedef uint16_t uint_least16_t;
# 83 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h" 3
typedef signed long int32_t;
typedef unsigned long uint32_t;
# 101 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h" 3
typedef int32_t int_least32_t;
typedef uint32_t uint_least32_t;
# 123 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h" 3
typedef signed long long int64_t;
typedef unsigned long long uint64_t;
# 133 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h" 3
typedef int64_t int_least64_t;
typedef uint64_t uint_least64_t;
# 163 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h" 3
  typedef signed int int_fast8_t;
  typedef unsigned int uint_fast8_t;




  typedef signed int int_fast16_t;
  typedef unsigned int uint_fast16_t;




  typedef signed int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 217 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h" 3
  typedef int_least64_t int_fast64_t;
  typedef uint_least64_t uint_fast64_t;







  typedef long long int intmax_t;
# 235 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h" 3
  typedef long long unsigned int uintmax_t;
# 247 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h" 3
typedef signed int intptr_t;
typedef unsigned int uintptr_t;
# 66 "C:/devkitPro/libnds/include/nds/jtypes.h" 2

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

typedef struct touchPosition {
 int16 x;
 int16 y;
 int16 px;
 int16 py;
 int16 z1;
 int16 z2;
} touchPosition;






typedef enum { false, true } bool;



typedef void ( * IntFn)(void);
typedef void (* VoidFunctionPointer)(void);
typedef void (* fp)(void);
# 45 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/bios.h" 1
# 47 "C:/devkitPro/libnds/include/nds/bios.h"
typedef struct DecompressionStream {
  int (*getSize)(uint8 * source, uint16 * dest, uint32 r2);
  int (*getResult)(uint8 * source);
  uint8 (*readByte)(uint8 * source);
} __attribute__ ((packed)) TDecompressionStream;


typedef struct UnpackStruct {
  uint16 sourceSize;
  uint8 sourceWidth;
  uint8 destWidth;
  uint32 dataOffset;
} __attribute__ ((packed)) TUnpackStruct, * PUnpackStruct;






void swiSoftReset(void);
# 84 "C:/devkitPro/libnds/include/nds/bios.h"
void swiDelay(uint32 duration);
# 98 "C:/devkitPro/libnds/include/nds/bios.h"
void swiIntrWait(int waitForSet, uint32 flags);
# 108 "C:/devkitPro/libnds/include/nds/bios.h"
void swiWaitForVBlank(void);
# 135 "C:/devkitPro/libnds/include/nds/bios.h"
int swiDivide(int numerator, int divisor);
int swiRemainder(int numerator, int divisor);
void swiDivMod(int numerator, int divisor, int * result, int * remainder);
# 168 "C:/devkitPro/libnds/include/nds/bios.h"
void swiCopy(const void * source, void * dest, int flags);
void swiFastCopy(const void * source, void * dest, int flags);



int swiSqrt(int value);
# 182 "C:/devkitPro/libnds/include/nds/bios.h"
uint16 swiCRC16(uint16 crc, void * data, uint32 size);






int swiIsDebugger(void);
# 207 "C:/devkitPro/libnds/include/nds/bios.h"
void swiUnpackBits(uint8 * source, uint32 * destination, PUnpackStruct params);
# 220 "C:/devkitPro/libnds/include/nds/bios.h"
void swiDecompressLZSSWram(void * source, void * destination);
int swiDecompressLZSSVram(void * source, void * destination, uint32 toGetSize, TDecompressionStream * stream);




int swiDecompressHuffman(void * source, void * destination, uint32 toGetSize, TDecompressionStream * stream);
# 260 "C:/devkitPro/libnds/include/nds/bios.h"
void swiDecompressRLEWram(void * source, void * destination);
int swiDecompressRLEVram(void * source, void * destination, uint32 toGetSize, TDecompressionStream * stream);
# 322 "C:/devkitPro/libnds/include/nds/bios.h"
void swiHalt(void);
void swiSleep(void);
void swiSwitchToGBAMode(void);
void swiSetHaltCR(uint8 data);






uint16 swiGetSineTable(int index);






uint16 swiGetPitchTable(int index);






uint8 swiGetVolumeTable(int index);
# 355 "C:/devkitPro/libnds/include/nds/bios.h"
void swiChangeSoundBias(int enabled, int delay);
# 46 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/card.h" 1
# 32 "C:/devkitPro/libnds/include/nds/card.h"
# 1 "C:/devkitPro/libnds/include/nds/jtypes.h" 1
# 33 "C:/devkitPro/libnds/include/nds/card.h" 2
# 78 "C:/devkitPro/libnds/include/nds/card.h"
void cardWriteCommand(const uint8 * command);

void cardPolledTransfer(uint32 flags, uint32 * destination, uint32 length, const uint8 * command);
void cardStartTransfer(const uint8 * command, uint32 * destination, int channel, uint32 flags);
uint32 cardWriteAndRead(const uint8 * command, uint32 flags);



void cardRead00(uint32 address, uint32 * destination, uint32 length, uint32 flags);
void cardReadHeader(uint8 * header);
int cardReadID(uint32 flags);


void cardReadEeprom(uint32 address, uint8 *data, uint32 length, uint32 addrtype);


void cardWriteEeprom(uint32 address, uint8 *data, uint32 length, uint32 addrtype);



uint8 cardEepromReadID(uint8 i);


uint8 cardEepromCommand(uint8 command, uint32 address);
# 110 "C:/devkitPro/libnds/include/nds/card.h"
int cardEepromGetType(void);


uint32 cardEepromGetSize();


void cardEepromChipErase(void);


void cardEepromSectorErase(uint32 address);
# 47 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/dma.h" 1
# 93 "C:/devkitPro/libnds/include/nds/dma.h"
static inline void dmaCopyWords(uint8 channel, const void* src, void* dest, uint32 size) {
 (*(vuint32*)(0x040000B0+(channel*12))) = (uint32)src;
 (*(vuint32*)(0x040000B4+(channel*12))) = (uint32)dest;
 (*(vuint32*)(0x040000B8+(channel*12))) = ((1 << (31)) | (1 << (26)) | 0) | (size>>2);
 while((*(vuint32*)(0x040000B8+(channel*12))) & (1 << (31)));
}

static inline void dmaCopyHalfWords(uint8 channel, const void* src, void* dest, uint32 size) {
 (*(vuint32*)(0x040000B0+(channel*12))) = (uint32)src;
 (*(vuint32*)(0x040000B4+(channel*12))) = (uint32)dest;
 (*(vuint32*)(0x040000B8+(channel*12))) = ((1 << (31)) | 0 | 0) | (size>>1);
 while((*(vuint32*)(0x040000B8+(channel*12))) & (1 << (31)));
}

static inline void dmaCopy(const void * source, void * dest, uint32 size) {
 (*(vuint32*)(0x040000B0+(3*12))) = (uint32)source;
 (*(vuint32*)(0x040000B4+(3*12))) = (uint32)dest;
 (*(vuint32*)(0x040000B8+(3*12))) = ((1 << (31)) | 0 | 0) | (size>>1);
 while((*(vuint32*)(0x040000B8+(3*12))) & (1 << (31)));
}

static inline void dmaCopyWordsAsynch(uint8 channel, const void* src, void* dest, uint32 size) {
 (*(vuint32*)(0x040000B0+(channel*12))) = (uint32)src;
 (*(vuint32*)(0x040000B4+(channel*12))) = (uint32)dest;
 (*(vuint32*)(0x040000B8+(channel*12))) = ((1 << (31)) | (1 << (26)) | 0) | (size>>2);

}

static inline void dmaCopyHalfWordsAsynch(uint8 channel, const void* src, void* dest, uint32 size) {
 (*(vuint32*)(0x040000B0+(channel*12))) = (uint32)src;
 (*(vuint32*)(0x040000B4+(channel*12))) = (uint32)dest;
 (*(vuint32*)(0x040000B8+(channel*12))) = ((1 << (31)) | 0 | 0) | (size>>1);
}

static inline void dmaCopyAsynch(const void * source, void * dest, uint32 size) {
 (*(vuint32*)(0x040000B0+(3*12))) = (uint32)source;
 (*(vuint32*)(0x040000B4+(3*12))) = (uint32)dest;
 (*(vuint32*)(0x040000B8+(3*12))) = ((1 << (31)) | 0 | 0) | (size>>1);
}

static inline void dmaFillWords( const void* src, void* dest, uint32 size) {
 (*(vuint32*)(0x040000B0+(3*12))) = (uint32)src;
 (*(vuint32*)(0x040000B4+(3*12))) = (uint32)dest;
 (*(vuint32*)(0x040000B8+(3*12))) = (1 << (24)) | ((1 << (31)) | (1 << (26)) | 0) | (size>>2);
 while((*(vuint32*)(0x040000B8+(3*12))) & (1 << (31)));
}

static inline void dmaFillHalfWords( const void* src, void* dest, uint32 size) {
 (*(vuint32*)(0x040000B0+(3*12))) = (uint32)src;
 (*(vuint32*)(0x040000B4+(3*12))) = (uint32)dest;
 (*(vuint32*)(0x040000B8+(3*12))) = (1 << (24)) | ((1 << (31)) | 0 | 0) | (size>>1);
 while((*(vuint32*)(0x040000B8+(3*12))) & (1 << (31)));
}

static inline int dmaBusy(uint8 channel) {
 return ((*(vuint32*)(0x040000B8+(channel*12))) & (1 << (31)))>>31;
}
# 48 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/interrupts.h" 1
# 47 "C:/devkitPro/libnds/include/nds/interrupts.h"
enum IRQ_MASKS {
 IRQ_VBLANK = (1 << (0)),
 IRQ_HBLANK = (1 << (1)),
 IRQ_VCOUNT = (1 << (2)),
 IRQ_TIMER0 = (1 << (3)),
 IRQ_TIMER1 = (1 << (4)),
 IRQ_TIMER2 = (1 << (5)),
 IRQ_TIMER3 = (1 << (6)),
 IRQ_NETWORK = (1 << (7)),
 IRQ_DMA0 = (1 << (8)),
 IRQ_DMA1 = (1 << (9)),
 IRQ_DMA2 = (1 << (10)),
 IRQ_DMA3 = (1 << (11)),
 IRQ_KEYS = (1 << (12)),
 IRQ_CART = (1 << (13)),
 IRQ_IPC_SYNC = (1 << (16)),
 IRQ_FIFO_EMPTY = (1 << (17)),
 IRQ_FIFO_NOT_EMPTY = (1 << (18)),
 IRQ_CARD = (1 << (19)),
 IRQ_CARD_LINE = (1 << (20)),
 IRQ_GEOMETRY_FIFO = (1 << (21)),
 IRQ_LID = (1 << (22)),
 IRQ_SPI = (1 << (23)),
 IRQ_WIFI = (1 << (24)),
 IRQ_ALL = (~0)
};



typedef enum IRQ_MASKS IRQ_MASK;
# 112 "C:/devkitPro/libnds/include/nds/interrupts.h"
enum IME_VALUE {
 IME_DISABLE = 0,
 IME_ENABLE = 1,
};







extern VoidFunctionPointer __irq_vector[];
extern vuint32 __irq_flags[];



struct IntTable{IntFn handler; u32 mask;};
# 137 "C:/devkitPro/libnds/include/nds/interrupts.h"
void irqInit();
# 152 "C:/devkitPro/libnds/include/nds/interrupts.h"
void irqSet(IRQ_MASK irq, VoidFunctionPointer handler);




void irqClear(IRQ_MASK irq);
# 167 "C:/devkitPro/libnds/include/nds/interrupts.h"
void irqInitHandler(VoidFunctionPointer handler);





void irqEnable(uint32 irq);





void irqDisable(uint32 irq);
# 49 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/ipc.h" 1
# 36 "C:/devkitPro/libnds/include/nds/ipc.h"
typedef struct sTransferSoundData {

  const void *data;
  u32 len;
  u32 rate;
  u8 vol;
  u8 pan;
  u8 format;
  u8 PADDING;
} TransferSoundData, * pTransferSoundData;



typedef struct sTransferSound {

  TransferSoundData data[16];
  u8 count;
  u8 PADDING[3];
} TransferSound, * pTransferSound;



typedef struct sTransferRegion {

 vint16 touchX, touchY;
 vint16 touchXpx, touchYpx;
 vint16 touchZ1, touchZ2;
 vuint16 tdiode1, tdiode2;
 vuint32 temperature;

 uint16 buttons;

 union {
  vuint8 curtime[8];

  struct {
   vu8 command;
   vu8 year;
   vu8 month;
   vu8 day;

   vu8 weekday;
   vu8 hours;
   vu8 minutes;
   vu8 seconds;
  } rtc;
 } time;
 vint32 unixTime;

 uint16 battery;
 uint16 aux;


 pTransferSound soundData;

 vuint32 mailAddr;
 vuint32 mailData;
 vuint8 mailRead;
 vuint8 mailBusy;
 vuint32 mailSize;
} TransferRegion, * pTransferRegion;


static inline
TransferRegion volatile * getIPC();

static inline
TransferRegion volatile * getIPC() {
 return (TransferRegion volatile *)(0x027FF000);
}
# 119 "C:/devkitPro/libnds/include/nds/ipc.h"
enum IPC_SYNC_BITS {
 IPC_SYNC_IRQ_ENABLE = (1 << (14)),
 IPC_SYNC_IRQ_REQUEST = (1 << (13))
};


static inline void IPC_SendSync(unsigned int sync) {

 (*(vuint16*)0x04000180) = ((*(vuint16*)0x04000180) & 0xf0ff) | (((sync) & 0x0f) << 8) | IPC_SYNC_IRQ_REQUEST;
}


static inline int IPC_GetSync() {

 return (*(vuint16*)0x04000180) & 0x0f;
}
# 143 "C:/devkitPro/libnds/include/nds/ipc.h"
enum IPC_CONTROL_BITS {
 IPC_FIFO_SEND_EMPTY = (1<<0),
 IPC_FIFO_SEND_FULL = (1<<1),
 IPC_FIFO_SEND_IRQ = (1<<2),
 IPC_FIFO_SEND_CLEAR = (1<<3),
 IPC_FIFO_RECV_EMPTY = (1<<8),
 IPC_FIFO_RECV_FULL = (1<<9),
 IPC_FIFO_RECV_IRQ = (1<<10),
 IPC_FIFO_ERROR = (1<<14),
 IPC_FIFO_ENABLE = (1<<15)
};
# 50 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/memory.h" 1
# 104 "C:/devkitPro/libnds/include/nds/memory.h"
typedef struct sGBAHeader {
 uint32 entryPoint;
 uint8 logo[156];
 char title[0xC];
 char gamecode[0x4];
 uint16 makercode;
 uint8 is96h;
 uint8 unitcode;
 uint8 devicecode;
 uint8 unused[7];
 uint8 version;
 uint8 complement;
 uint16 checksum;
} __attribute__ ((__packed__)) tGBAHeader;




typedef struct sNDSHeader {
  char gameTitle[12];
  char gameCode[4];
  char makercode[2];
  uint8 unitCode;
  uint8 deviceType;
  uint8 deviceSize;
  uint8 reserved1[9];
  uint8 romversion;
  uint8 flags;

  uint32 arm9romSource;
  uint32 arm9executeAddress;
  uint32 arm9destination;
  uint32 arm9binarySize;

  uint32 arm7romSource;
  uint32 arm7executeAddress;
  uint32 arm7destination;
  uint32 arm7binarySize;

  uint32 filenameSource;
  uint32 filenameSize;
  uint32 fatSource;
  uint32 fatSize;

  uint32 arm9overlaySource;
  uint32 arm9overlaySize;
  uint32 arm7overlaySource;
  uint32 arm7overlaySize;

  uint32 cardControl13;
  uint32 cardControlBF;
  uint32 bannerOffset;

  uint16 secureCRC16;

  uint16 readTimeout;

  uint32 unknownRAM1;
  uint32 unknownRAM2;

  uint32 bfPrime1;
  uint32 bfPrime2;
  uint32 romSize;

  uint32 headerSize;
  uint32 zeros88[14];
  uint8 gbaLogo[156];
  uint16 logoCRC16;
  uint16 headerCRC16;

  uint32 debugRomSource;
  uint32 debugRomSize;
  uint32 debugRomDestination;
  uint32 offset_0x16C;

  uint8 zero[0x90];
} __attribute__ ((__packed__)) tNDSHeader;




typedef struct sNDSBanner {
  uint16 version;
  uint16 crc;
  uint8 reserved[28];
  uint8 icon[512];
  uint16 palette[16];
  uint16 titles[6][128];
} __attribute__ ((__packed__)) tNDSBanner;
# 51 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/system.h" 1
# 62 "C:/devkitPro/libnds/include/nds/system.h"
static inline
void SetYtrigger(int Yvalue) {
 (*(vu16*)0x04000004) = ((*(vu16*)0x04000004) & 0x007F ) | (Yvalue << 8) | (( Yvalue & 0x100 ) >> 2) ;
}
# 88 "C:/devkitPro/libnds/include/nds/system.h"
static inline
void powerON(int on) { *(vu16*)0x4000304 |= on;}







static inline void powerSET(int on) { *(vu16*)0x4000304 = on;}




static inline void powerOFF(int off) { *(vu16*)0x4000304 &= ~off;}
# 163 "C:/devkitPro/libnds/include/nds/system.h"
void readUserSettings();
# 173 "C:/devkitPro/libnds/include/nds/system.h"
typedef struct tPERSONAL_DATA {
  u8 RESERVED0[2];

  u8 theme;
  u8 birthMonth;
  u8 birthDay;

  u8 RESERVED1[1];

  s16 name[10];
  u16 nameLen;

  s16 message[26];
  u16 messageLen;

  u8 alarmHour;
  u8 alarmMinute;


  u8 RESERVED2[4];


  u16 calX1;
  u16 calY1;
  u8 calX1px;
  u8 calY1px;

  u16 calX2;
  u16 calY2;
  u8 calX2px;
  u8 calY2px;

  struct __attribute__ ((packed)) {
    unsigned language : 3;
    unsigned gbaScreen : 1;
    unsigned defaultBrightness : 2;
    unsigned autoMode : 1;
    unsigned RESERVED1 : 2;
 unsigned settingsLost : 1;
 unsigned RESERVED2 : 6;
  } _user_data;

  u16 RESERVED3;
  u32 rtcOffset;
  u32 RESERVED4;
} __attribute__ ((packed)) PERSONAL_DATA ;
# 238 "C:/devkitPro/libnds/include/nds/system.h"
struct __argv {
 int argvMagic;
 char *commandLine;
 int length;
};
# 52 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/timers.h" 1
# 53 "C:/devkitPro/libnds/include/nds.h" 2
# 80 "C:/devkitPro/libnds/include/nds.h"
# 1 "C:/devkitPro/libnds/include/nds/arm7/audio.h" 1
# 44 "C:/devkitPro/libnds/include/nds/arm7/audio.h"
# 1 "C:/devkitPro/libnds/include/nds/arm7/serial.h" 1
# 143 "C:/devkitPro/libnds/include/nds/arm7/serial.h"
static inline
void SerialWaitBusy() {
 while ((*(vuint16*)0x040001C0) & (1 << (7)))
  swiDelay(1);
}







int writePowerManagement(int reg, int command);

static inline
int readPowerManagement(int reg) {
 return writePowerManagement((reg)|(1<<7), 0);
}


void readFirmware(uint32 address, void * destination, uint32 size);
# 45 "C:/devkitPro/libnds/include/nds/arm7/audio.h" 2
# 99 "C:/devkitPro/libnds/include/nds/arm7/audio.h"
u8 MIC_ReadData();






void StartRecording(u8* buffer, int length);




int StopRecording();


void ProcessMicrophoneTimerIRQ();

void PM_SetAmp(u8 control);




static inline void MIC_On() {

  PM_SetAmp(1);
}





static inline void MIC_Off() {

  PM_SetAmp(0);
}
# 81 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/arm7/clock.h" 1
# 119 "C:/devkitPro/libnds/include/nds/arm7/clock.h"
void rtcReset(void);
void rtcTransaction(uint8 * command, uint32 commandLength, uint8 * result, uint32 resultLength);

void rtcGetTime(uint8 * time);
void rtcSetTime(uint8 * time);

void rtcGetTimeAndDate(uint8 * time);
void rtcSetTimeAndDate(uint8 * time);

void rtcGetData(uint8 * data, uint32 size);

void BCDToInteger(uint8 * data, uint32 length);
void integerToBCD(uint8 * data, uint32 length);

void initClockIRQ();
# 82 "C:/devkitPro/libnds/include/nds.h" 2

# 1 "C:/devkitPro/libnds/include/nds/arm7/touch.h" 1
# 60 "C:/devkitPro/libnds/include/nds/arm7/touch.h"
touchPosition touchReadXY();

uint16 touchRead(uint32 command);
uint32 touchReadTemperature(int * t1, int * t2);
# 84 "C:/devkitPro/libnds/include/nds.h" 2
# 3 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoYM2610.c" 2
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/../common/source/NeoIPC.h" 1
# 61 "C:/Users/GRX/NeoDS-GBMacro/arm7/../common/source/NeoIPC.h"
typedef enum _TNeoAdpcmCommand {
 NEOADPCM_NONE,
 NEOADPCM_STOP,
 NEOADPCM_START,
 NEOADPCM_ENDADDR,
 NEOADPCM_FREQUENCY,
} TNeoAdpcmCommand;

typedef struct _TNeoAdpcaControl {
 u32 command;
 union {
  u32 startAddr;
  u32 endAddr;
  u32 frequency;
 };
 u16 audioFrame;
 u16 timeStamp;
} TNeoAdpcmControl;

typedef struct _TNeoIPC {

 u8* pAudioProgram0;
 u32 audioProgramSize;
 u32 audioRomSize;
 u32 arm9FifoSent;
 u32 arm9FifoProcessed;
 u32 arm7FifoSent;
 u32 arm7FifoProcessed;
 u16* pAdpcmBuffer[7];
 TNeoAdpcmControl* adpcmControl[7];
 s16 adpcmQueuePos7[7];
 s16 adpcmQueuePos9[7];
 u32 arm7Alive;


 u32 arm9Args[4];
 u32 arm9Return;

 u16 audioStreamCount;

 u8 adpcmaFinished[7];


 u8 globalAudioEnabled;
 u8 audioCommand;
 u8 audioResult;
 u8 audioCommandPending;
 u8 misc;
} TNeoIPC;





typedef enum _TNeoIPCCommand {
 NEOARM7_RESET = 1,
 NEOARM7_PAUSE,
 NEOARM7_RESUME,
 NEOARM7_NMI,
 NEOARM7_BACKLIGHTOFF,
 NEOARM7_BACKLIGHTON,
 NEOARM7_LIDCLOSE,
 NEOARM7_LIDOPEN,
 NEOARM9_READAUDIO,
 NEOARM9_AUDIORESULT,
} TNeoIPCCommand;
# 139 "C:/Users/GRX/NeoDS-GBMacro/arm7/../common/source/NeoIPC.h"
void neoIPCInit();
u32 neoIPCSendCommandAsync(TNeoIPCCommand command);
void neoIPCSendCommand(TNeoIPCCommand command);
bool neoIPCCheckCommandDone(u32 message);
void neoIPCWaitCommandDone(u32 message);
u32 neoIPCRecvCommand();
u32 neoIPCWaitCommand(TNeoIPCCommand command);
void neoIPCAckCommand();
# 4 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoYM2610.c" 2
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoSystem7.h" 1



# 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/../common/source/NeoSystemCommon.h" 1
# 5 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoSystem7.h" 2
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoCpuZ80.h" 1
# 10 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoCpuZ80.h"
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/DrZ80.h" 1
# 16 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/DrZ80.h"
extern int DrZ80Ver;

struct DrZ80
{
  unsigned int Z80PC;
  unsigned int Z80A;
  unsigned int Z80F;
  unsigned int Z80BC;
  unsigned int Z80DE;
  unsigned int Z80HL;
  unsigned int Z80SP;
  unsigned int Z80PC_BASE;
  unsigned int Z80SP_BASE;
  unsigned int Z80IX;
  unsigned int Z80IY;
  unsigned int Z80I;
  unsigned int Z80A2;
  unsigned int Z80F2;
  unsigned int Z80BC2;
  unsigned int Z80DE2;
  unsigned int Z80HL2;


  unsigned char Z80_IRQ;
  unsigned char Z80IF;
  unsigned char Z80IM;
  unsigned char spare;
  unsigned int z80irqvector;
  void (*z80_irq_callback )(void);
  void (*z80_write8 )(unsigned char d,unsigned short a);
  void (*z80_write16 )(unsigned short d,unsigned short a);
  unsigned char (*z80_in)(unsigned short p);
  void (*z80_out )(unsigned short p,unsigned char d);
  unsigned char (*z80_read8)(unsigned short a);
  unsigned short (*z80_read16)(unsigned short a);
  unsigned int (*z80_rebaseSP)(unsigned short new_sp);
  unsigned int (*z80_rebasePC)(unsigned short new_pc);
};

extern void DrZ80Run(struct DrZ80 *pcy,unsigned int cyc);
# 11 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoCpuZ80.h" 2

typedef struct DrZ80 TDrZ80Context;

void neoZ80Init();
void neoZ80Nmi();
void neoZ80ClearNmi();
void neoZ80Irq();
void neoZ80ClearIrq();
s32 neoZ80Execute(s32 cycles);
void neoZ80Reset();
# 6 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoSystem7.h" 2
# 31 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoSystem7.h"
typedef struct _TNeoContext7 {
 TDrZ80Context z80;





 u8* z80MemTable[32];
 u8 z80Ram[2048];
} TNeoContext7;

void neoSystem7Init();
void neoSystem7Reset();
void neoSystem7Execute();

void systemPanic();
# 57 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoSystem7.h"
register TNeoContext7* g_neo7 asm("r5");
# 5 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoYM2610.c" 2

# 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoAudio.h" 1
# 12 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoAudio.h"
void neoAudioInit();
void neoAudioReset();
void neoAudioShutdown();
void neoAudioEventHandler();
u32 neoAudioGetTimestamp();
void neoAudioPause();
void neoAudioResume();
void neoAudioUpdate();


void neoAudioBufferWrite16(vu16* reg, u16 value, u16 mask);
void neoAudioBufferWrite32(vu32* reg, u32 value, u32 mask);
# 7 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoYM2610.c" 2
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/../common/source/NeoAudioStream.h" 1
# 8 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoYM2610.c" 2
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoYM2610.h" 1



typedef struct _TADPCMAChannel {
 u32 start;
 u32 end;
 u8 level;
 u8 pan;
 u8 flagMask;
} TADPCMAChannel;

typedef struct _TADPCMBChannel {
 u32 start;
 u32 end;
 u32 delta;
 u32 lastDelta;
 u8 level;
 u8 portstate;
 u8 control;
 u8 pan;
 u8 flagMask;
} TADPCMBChannel;

typedef enum _TSSGChannelState {
 SSG_CHANNEL_DISABLE,
 SSG_CHANNEL_TONE,
 SSG_CHANNEL_NOISE,
 SSG_CHANNEL_NOISETONE,
 SSG_CHANNEL_WAIT_NOISE,
 SSG_CHANNEL_WAIT_NOISETONE,
} TSSGChannelState;

typedef struct _TSSGChannel {
 u32 period;
 u32 volume;
 u8 envelopeEnable;
 u8 hwChannel;
 u8 state;
} TSSGChannel;

typedef struct _TSSGNoise {
 u32 period;



} TSSGNoise;

typedef struct _TSSGEnvelope {
 u32 period;
 s32 count;
 u32 volume;
 s32 index;
 u8 attack;
 u8 alternate;
 u8 hold;
 u8 holding;
} TSSGEnvelope;

typedef struct _TYM2610Context {

 TADPCMAChannel adpcma[6];
 TADPCMBChannel adpcmb;
 TSSGChannel ssg[3];

 TSSGNoise noise;
 TSSGEnvelope ssgEnvelope;

 s32 timerA;
 s32 timerB;
 s32 timerAValue;
 s32 timerBValue;
 s32 timerATicks;
 s32 timerBTicks;
 u32 irqStatus;
 s32 queuePos[7];

 u8 reg[512];

 u8 addrPort;
 u8 address;
 u8 mode;

 u8 adpcmaTotalLevel;
 u8 adpcmArriveEnd;
 u8 irq;
 u8 noiseChannelUsed;
} TYM2610Context;






void neoYM2610Write(u16 a, u8 d);





u8 neoYM2610Read(u16 a);

void neoYM2610Init();
void neoYM2610Process();
# 9 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoYM2610.c" 2
# 55 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoYM2610.c"
static TYM2610Context g_ym2610;
# 71 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoYM2610.c"
static const u8 g_ssgVolumeTable[32] = {
 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 3, 4, 4, 5, 6, 8, 9, 11, 13, 15,
 19, 22, 26, 31, 37, 45, 53, 63, 75, 89, 106, 127
};

static void ymInterruptSet(u32 flag)
{

 g_ym2610.irqStatus |= flag;
 if(!g_ym2610.irq && g_ym2610.irqStatus) {
  g_ym2610.irq = true;
  neoZ80Irq();
 }
}

static void ymInterruptReset(u32 flag)
{
 g_ym2610.irqStatus &= ~flag;
 if(g_ym2610.irq && !g_ym2610.irqStatus) {
  g_ym2610.irq = false;
  neoZ80ClearIrq();
 }
}

static void ymTimerASet()
{
 g_ym2610.timerAValue = (1024 - g_ym2610.timerA);
 g_ym2610.timerATicks =
  (g_ym2610.timerAValue * (60 * 200)) / ((8*1000*1000)/(6*24));
 if(g_ym2610.timerATicks == 0) g_ym2610.timerATicks = 1;
}

static void ymTimerBSet()
{
 g_ym2610.timerBValue = (256 - g_ym2610.timerB) << 4;
 g_ym2610.timerBTicks =
  (g_ym2610.timerBValue * (60 * 200)) / ((8*1000*1000)/(6*24));
 if(g_ym2610.timerBTicks == 0) g_ym2610.timerBTicks = 1;
}

static void ymUpdateArriveEnd()
{
 u32 i;
 for(i = 0; i < 6; i++) {
  if(((volatile TNeoIPC*)0x027FF400)->adpcmaFinished[i]) {
   g_ym2610.adpcmArriveEnd |= g_ym2610.adpcma[i].flagMask;
   ((volatile TNeoIPC*)0x027FF400)->adpcmaFinished[i] = 0;
  }
 }
 if(((volatile TNeoIPC*)0x027FF400)->adpcmaFinished[6]) {
  g_ym2610.adpcmArriveEnd |= g_ym2610.adpcmb.flagMask;
  ((volatile TNeoIPC*)0x027FF400)->adpcmaFinished[6] = 0;
 }
}

static void ymOPNModeWrite(u16 r, u8 v)
{
 switch(r) {
 case 0x22:
  break;
 case 0x24:
  g_ym2610.timerA = (g_ym2610.timerA & 0x03) | ((s32)v << 2);
  break;
 case 0x25:
  g_ym2610.timerA = (g_ym2610.timerA & 0x3fc) | (v & 0x03);
  break;
 case 0x26:
  g_ym2610.timerB = v;
  break;
 case 0x27:
# 149 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoYM2610.c"
  g_ym2610.mode = v;
  if(v & 0x20) ymInterruptReset(0x02);
  if(v & 0x10) ymInterruptReset(0x01);

  if(v & 0x02) {

   if (g_ym2610.timerBValue == 0) {
    ymTimerBSet();
   }
  } else {

   if(g_ym2610.timerBValue != 0) {
    g_ym2610.timerBValue = 0;
    g_ym2610.timerBTicks = 0;
   }
  }

  if(v & 0x01) {

   if(g_ym2610.timerAValue == 0) {
    ymTimerASet();
   }
  } else {

   if(g_ym2610.timerAValue != 0) {
    g_ym2610.timerAValue = 0;
    g_ym2610.timerATicks = 0;
   }
  }
  break;
 case 0x28:
  break;
 }
}

TNeoAdpcmControl* ymGetChannelControl(u32 ch)
{
 const s32 pos9 = ((volatile TNeoIPC*)0x027FF400)->adpcmQueuePos9[ch];
 s32 pos = ((volatile TNeoIPC*)0x027FF400)->adpcmQueuePos7[ch];
 s32 pendingCount = pos - pos9;
 if(pendingCount < 0) pendingCount += 32;

 ((void)0);

 if(pendingCount < 32 - 1) {
  TNeoAdpcmControl* pControl = &((volatile TNeoIPC*)0x027FF400)->adpcmControl[ch][pos];
  pos++;
  if(pos >= 32) {
   pos = 0;
  }

  neoAudioUpdate();
  pControl->command = NEOADPCM_NONE;
  pControl->audioFrame = ((volatile TNeoIPC*)0x027FF400)->audioStreamCount;
  pControl->timeStamp = neoAudioGetTimestamp();

  g_ym2610.queuePos[ch] = pos;
  return pControl;
 }

 return 0;
}

void ymFinishChannelControl(u32 ch)
{
 ((void)0);
 ((volatile TNeoIPC*)0x027FF400)->adpcmQueuePos7[ch] = g_ym2610.queuePos[ch];
 g_ym2610.queuePos[ch] = -1;
}

static u32 ymSSGVolume(const TSSGChannel* pChannel)
{
 return (pChannel->volume);
}

static void ymSSGCalculateFreq(const TSSGChannel* pChannel)
{
 s32 freq;
 switch(pChannel->state) {
 case SSG_CHANNEL_TONE:
  freq = (8*1000*1000) / 8 / pChannel->period;
  break;
 case SSG_CHANNEL_NOISE:
  freq = (8*1000*1000) / 64 / g_ym2610.noise.period;
  break;
 case SSG_CHANNEL_NOISETONE:
  freq = ((8*1000*1000) / 64 / pChannel->period);

  break;

 default:
  return;
 }
 neoAudioBufferWrite16((vu16*)&(*(vint16*)(0x04000408 + ((pChannel->hwChannel)<<4))),
  (s16)((-0x1000000 / (freq))), 0xffff);
}

static bool ymSSGIsNoiseChannel(u32 hwch)
{
 return hwch == 14 || hwch == 15;
}

static u32 ymSSGAllocNoiseChannel()
{
 if((g_ym2610.noiseChannelUsed & 1) == 0) {
  g_ym2610.noiseChannelUsed |= 1;
  return 14;
 } else if((g_ym2610.noiseChannelUsed & 2) == 0) {
  g_ym2610.noiseChannelUsed |= 2;
  return 15;
 }
 return 0xff;
}

static void ymSSGFreeChannel(u32 hwch)
{
 if(ymSSGIsNoiseChannel(hwch)) {
  s32 i;

  for(i = 0; i < 3; i++) {
   TSSGChannel* pChannel = &g_ym2610.ssg[i];
   if(pChannel->state >= SSG_CHANNEL_WAIT_NOISE) {

    pChannel->hwChannel = hwch;
    neoAudioBufferWrite32(&(*(vuint32*)(0x04000400 + ((pChannel->hwChannel)<<4))),
     (1 << (31)) | (3<<29) |
     ((63) << 16) | ymSSGVolume(pChannel),
     0xffffffff);

    if(pChannel->state == SSG_CHANNEL_WAIT_NOISETONE) {
     pChannel->state = SSG_CHANNEL_NOISETONE;
    } else {
     pChannel->state = SSG_CHANNEL_NOISE;
    }
    ymSSGCalculateFreq(pChannel);
    break;
   }
  }
  if(i >= 3) {

   g_ym2610.noiseChannelUsed &= ~(1 << (hwch - 14));
   neoAudioBufferWrite32(&(*(vuint32*)(0x04000400 + ((hwch)<<4))), 0, 0xffffffff);
  }
 } else if(hwch >= 11 && hwch <= 13) {
  neoAudioBufferWrite32(&(*(vuint32*)(0x04000400 + ((hwch)<<4))), 0, 0xffffffff);
 }
}

static void ymSSGWrite(u32 r, u8 v)
{
 TSSGChannel* pChannel;
 s32 ch;
 s32 i;

 switch(r) {
 case 0x00: case 0x02: case 0x04:
 case 0x01: case 0x03: case 0x05:
  ch = r >> 1;
  r &= ~1;
  g_ym2610.reg[r + 1] &= 0x0f;
  pChannel = &g_ym2610.ssg[ch];
  pChannel->period = (g_ym2610.reg[r] + 256 * g_ym2610.reg[r + 1]);
  if(pChannel->period == 0) {
   pChannel->period = 1;
  }
  ymSSGCalculateFreq(pChannel);
  break;
 case 0x06:
  g_ym2610.reg[(6)] &= 0x1f;
  g_ym2610.noise.period = g_ym2610.reg[(6)];
  if(g_ym2610.noise.period == 0) {
   g_ym2610.noise.period = 1;
  }
  for(i = 0; i < 3; i++) {
   pChannel = &g_ym2610.ssg[i];

   if(pChannel->state == SSG_CHANNEL_NOISETONE || pChannel->state == SSG_CHANNEL_NOISE) {
    ymSSGCalculateFreq(pChannel);
   }
  }
  break;
 case 0x07:
  for(i = 0; i < 3; i++) {
   pChannel = &g_ym2610.ssg[i];
   if(((v >> i) & 0x08) == 0) {

    if(!ymSSGIsNoiseChannel(pChannel->hwChannel)) {


     ymSSGFreeChannel(pChannel->hwChannel);
     pChannel->hwChannel = ymSSGAllocNoiseChannel();
    }
    if(ymSSGIsNoiseChannel(pChannel->hwChannel)) {


     neoAudioBufferWrite32(&(*(vuint32*)(0x04000400 + ((pChannel->hwChannel)<<4))),
      (1 << (31)) | (3<<29) |
      ((63) << 16) | ymSSGVolume(pChannel),
      0xffffffff);
     if(((v >> i) & 0x01) == 0) {

      pChannel->state = SSG_CHANNEL_NOISETONE;
     } else {

      pChannel->state = SSG_CHANNEL_NOISE;
     }
     ymSSGCalculateFreq(pChannel);
    } else {

     if(((v >> i) & 1) == 0) {
      pChannel->state = SSG_CHANNEL_WAIT_NOISETONE;
     } else {
      pChannel->state = SSG_CHANNEL_WAIT_NOISE;
     }
     pChannel->hwChannel = 0xff;
    }
   } else if(((v >> i) & 0x01) == 0) {

    if(ymSSGIsNoiseChannel(pChannel->hwChannel)) {

     ymSSGFreeChannel(pChannel->hwChannel);
    }

    pChannel->hwChannel = 11 + i;
    neoAudioBufferWrite32(&(*(vuint32*)(0x04000400 + ((pChannel->hwChannel)<<4))),
     (1 << (31)) | (3<<29) | (3 << 24) |
     ((63) << 16) | ymSSGVolume(pChannel),
     0xffffffff);
    pChannel->state = SSG_CHANNEL_TONE;
    ymSSGCalculateFreq(pChannel);
   } else {

    ymSSGFreeChannel(pChannel->hwChannel);
    pChannel->state = SSG_CHANNEL_DISABLE;
    pChannel->hwChannel = 0xff;
   }
  }
  break;
 case 0x08: case 0x09: case 0x0a:
  ch = r & 3;
  g_ym2610.reg[r] &= 0x1f;
  pChannel = &g_ym2610.ssg[ch];

  pChannel->envelopeEnable = g_ym2610.reg[r] & 0x10;
  if(pChannel->envelopeEnable) {

   pChannel->volume = g_ym2610.ssgEnvelope.volume;
  } else if(g_ym2610.reg[r] != 0) {

   pChannel->volume = g_ssgVolumeTable[g_ym2610.reg[r] * 2 + 1];
  } else {

   pChannel->volume = 0;
  }
  neoAudioBufferWrite32(&(*(vuint32*)(0x04000400 + ((pChannel->hwChannel)<<4))),
   ymSSGVolume(pChannel), 0x7f);
  break;
 case (11):
 case (12):
  g_ym2610.ssgEnvelope.count -= g_ym2610.ssgEnvelope.period;
  g_ym2610.ssgEnvelope.period =
   (g_ym2610.reg[(11)] + 256 * g_ym2610.reg[(12)]) * (((0x8000 * (60 * 200)) / (8*1000*1000)) * 8);
  if(g_ym2610.ssgEnvelope.period == 0) {
   g_ym2610.ssgEnvelope.period = (((0x8000 * (60 * 200)) / (8*1000*1000)) * 8) / 2;
  }
  g_ym2610.ssgEnvelope.count += g_ym2610.ssgEnvelope.period;
  if(g_ym2610.ssgEnvelope.count <= 0) g_ym2610.ssgEnvelope.count = 1;
  break;
 case (13):
  g_ym2610.reg[(13)] &= 0x0f;
  if(g_ym2610.reg[(13)] & 0x04) {
   g_ym2610.ssgEnvelope.attack = 0x1f;
  } else {
   g_ym2610.ssgEnvelope.attack = 0;
  }

  if((g_ym2610.reg[(13)] & 0x08) == 0) {

   g_ym2610.ssgEnvelope.hold = 1;
   g_ym2610.ssgEnvelope.alternate = g_ym2610.ssgEnvelope.attack;
  } else {
   g_ym2610.ssgEnvelope.hold = g_ym2610.reg[(13)] & 0x01;
   g_ym2610.ssgEnvelope.alternate = g_ym2610.reg[(13)] & 0x02;
  }
  g_ym2610.ssgEnvelope.count = g_ym2610.ssgEnvelope.period;
  g_ym2610.ssgEnvelope.index = 0x1f;
  g_ym2610.ssgEnvelope.holding = 0;
  g_ym2610.ssgEnvelope.volume = g_ssgVolumeTable[0x1f ^ g_ym2610.ssgEnvelope.attack];

  for(i = 0; i < 3; i++) {
   pChannel = &g_ym2610.ssg[i];
   if(pChannel->envelopeEnable && pChannel->volume != g_ym2610.ssgEnvelope.volume) {
    pChannel->volume = g_ym2610.ssgEnvelope.volume;
    neoAudioBufferWrite32(&(*(vuint32*)(0x04000400 + ((pChannel->hwChannel)<<4))),
     ymSSGVolume(pChannel), 0x7f);
   }
  }
  break;
 case (14):
 case (15):
  break;
 }
}

static void ymSSGEnvelopeProcess()
{

 TSSGEnvelope* pEnv = &g_ym2610.ssgEnvelope;
 s32 i;

 if(pEnv->holding) {
  return;
 }
 pEnv->count -= 0x8000;
 if(pEnv->count <= 0) {
  do {
   pEnv->index--;
   pEnv->count += pEnv->period;
  } while(pEnv->count <= 0);


  if(pEnv->index < 0){
   if(pEnv->hold) {
    if(pEnv->alternate) pEnv->attack ^= 0x1f;
    pEnv->holding = 1;
    pEnv->index = 0;
   } else {


    if(pEnv->alternate && (pEnv->index & 0x20)) pEnv->attack ^= 0x1f;
    pEnv->index &= 0x1f;
   }
  }

  pEnv->volume = g_ssgVolumeTable[pEnv->index ^ pEnv->attack];

  for(i = 0; i < 3; i++) {
   TSSGChannel* pChannel = &g_ym2610.ssg[i];
   if(pChannel->envelopeEnable) {
    pChannel->volume = g_ym2610.ssgEnvelope.volume;
    neoAudioBufferWrite32(&(*(vuint32*)(0x04000400 + ((pChannel->hwChannel)<<4))),
     ymSSGVolume(pChannel), 0x7f);
   }
  }
 }
}

static void ymADPCMBCalculateFreq()
{




 u32 changed = 0;

 if(g_ym2610.adpcmb.delta > g_ym2610.adpcmb.lastDelta) {
  changed = g_ym2610.adpcmb.delta - g_ym2610.adpcmb.lastDelta;
 } else {
  changed = g_ym2610.adpcmb.lastDelta - g_ym2610.adpcmb.delta;
 }

 if(changed > 128) {
  u32 freq = ((u32)g_ym2610.adpcmb.delta * 55500) >> 16;
  if(freq > 55500) freq = 55500;
  TNeoAdpcmControl* pControl = ymGetChannelControl(6);
  if(pControl) {
   pControl->frequency = (freq * 65536) / 18432;
   pControl->command = NEOADPCM_FREQUENCY;
   g_ym2610.adpcmb.lastDelta = g_ym2610.adpcmb.delta;
   ymFinishChannelControl(6);
  }
 }
}

static void ymADPCMBCalculateVolume()
{

 static const u32 panTable[4] = {0, 0, 127, 64};

 u32 volume = g_ym2610.adpcmb.level;
 u32 pan = g_ym2610.adpcmb.pan;

 if(volume > 0x7f) volume = 0x7f;




 if(pan == 0) {

  neoAudioBufferWrite32(&(*(vuint32*)(0x04000400 + ((6)<<4))), 0, (0x7f|(0x7f << 16)));
  return;
 }
 neoAudioBufferWrite32(&(*(vuint32*)(0x04000400 + ((6)<<4))),
  (volume) | ((panTable[pan]) << 16), (0x7f|(0x7f << 16)));
}

static void ymADPCMBWrite(u32 r, u8 v)
{
 u32 i;
 u16 v16;




 switch(r) {
 case 0x00:

  if(v & 0x01) v = 0;


  g_ym2610.adpcmb.portstate = v & (0x80|0x40|0x20|0x10|0x01);

  if((v & 0x80) && g_ym2610.adpcmb.start < ((volatile TNeoIPC*)0x027FF400)->audioRomSize) {

   ymUpdateArriveEnd();
   TNeoAdpcmControl* pControl = ymGetChannelControl(6);
   if(pControl) {
    u32 startAddr = g_ym2610.adpcmb.start;
    if(v & 0x10) {

     startAddr |= 0x80000000;
    }
    pControl->startAddr = startAddr;
    pControl->command = NEOADPCM_START;
    ymFinishChannelControl(6);
   }
  } else if(!(v & 0x80)) {

   ymUpdateArriveEnd();
   TNeoAdpcmControl* pControl = ymGetChannelControl(6);
   if(pControl) {
    pControl->command = NEOADPCM_STOP;
    ymFinishChannelControl(6);
   }
  }
  break;
 case 0x01:

  g_ym2610.adpcmb.pan = (v>>6) & 0x03;
  g_ym2610.adpcmb.control = v;
  ymADPCMBCalculateVolume();
  break;
 case 0x02:
 case 0x03:

  g_ym2610.adpcmb.start =
   ((g_ym2610.reg[0x13] * 0x0100) | g_ym2610.reg[0x12]) << 8;
  break;
 case 0x04:
 case 0x05:
  g_ym2610.adpcmb.end =
   ((g_ym2610.reg[0x15] * 0x0100) | g_ym2610.reg[0x14]) << 8;
  g_ym2610.adpcmb.end += (1 << 8) - 1;
  TNeoAdpcmControl* pControl = ymGetChannelControl(6);
  if(pControl) {
   pControl->endAddr = g_ym2610.adpcmb.end;
   pControl->command = NEOADPCM_ENDADDR;
   ymFinishChannelControl(6);
  }
  break;
 case 0x06:
 case 0x07:
  break;
 case 0x08:

  break;
 case 0x09:
 case 0x0a:
  v16 = ((g_ym2610.reg[0x1a] * 0x0100) | g_ym2610.reg[0x19]);

  if(v16 == g_ym2610.adpcmb.delta) break;
  g_ym2610.adpcmb.delta = v16;
  ymADPCMBCalculateFreq();
  break;
 case 0x0b:
  g_ym2610.adpcmb.level = v;
  ymADPCMBCalculateVolume();
  break;



 case 0x0c:
  ymUpdateArriveEnd();
  for(i = 0; i < 6; i++) {
   g_ym2610.adpcma[i].flagMask = (~v) & (1 << i);
  }
  g_ym2610.adpcmb.flagMask = 0x80 & (~v);
  g_ym2610.adpcmArriveEnd &= (~v);
  break;
 }
}

static void ymADPCMACalculateVolume(s32 ch)
{

 static const u32 panTable[4] = {0, 127, 0, 64};

 u32 volume = g_ym2610.adpcma[ch].level + g_ym2610.adpcmaTotalLevel;
 u32 pan = g_ym2610.adpcma[ch].pan;




 if(volume >= 63 || pan == 0) {

  neoAudioBufferWrite32(&(*(vuint32*)(0x04000400 + ((ch)<<4))), 0, (0x7f|(0x7f << 16)));
  return;
 }
 u32 multiply = 15 - (volume & 7);
 u32 shift = 1 + (volume >> 3);



 u32 hwVolume = (0x80 * multiply) >> (shift + 2);
 if(hwVolume > 0x7f) hwVolume = 0x7f;
 neoAudioBufferWrite32(&(*(vuint32*)(0x04000400 + ((ch)<<4))),
  (hwVolume) | ((panTable[pan]) << 16), (0x7f|(0x7f << 16)));
}

static void ymADPCMAWrite(u32 r, u8 v)
{
 const u32 ch = r & 0x07;
 u32 i;

 switch(r) {
 case 0x00:
  ymUpdateArriveEnd();
  if(!(v & 0x80)) {

   for(i = 0; i < 6; i++) {
    if(((v >> i) & 1) && g_ym2610.adpcma[i].start < ((volatile TNeoIPC*)0x027FF400)->audioRomSize) {

     TNeoAdpcmControl* pControl = ymGetChannelControl(i);
     if(pControl) {
      pControl->startAddr = g_ym2610.adpcma[i].start;
      pControl->command = NEOADPCM_START;
      ymFinishChannelControl(i);
     }
    }
   }
  } else {

   for(i = 0; i < 6; i++) {
    if(((v >> i) & 1)) {

     TNeoAdpcmControl* pControl = ymGetChannelControl(i);
     if(pControl) {
      pControl->command = NEOADPCM_STOP;
      ymFinishChannelControl(i);
     }
    }
   }
  }
  break;
 case 0x01:
  g_ym2610.adpcmaTotalLevel = (v & 0x3f) ^ 0x3f;
  for(i = 0; i < 6; i++) {
   ymADPCMACalculateVolume(i);
  }
  break;
 default:
  if(ch >= 0x06) {

   break;
  }
  switch(r & 0x38) {
  case 0x08:

   g_ym2610.adpcma[ch].level = (v & 0x1f) ^ 0x1f;
   g_ym2610.adpcma[ch].pan = (v >> 6) & 0x03;
   ymADPCMACalculateVolume(ch);
   break;
  case 0x10:
  case 0x18:

   g_ym2610.adpcma[ch].start =
    ((g_ym2610.reg[0x118 + ch] * 0x100) +
    g_ym2610.reg[0x110 + ch]) << 8;
   break;
  case 0x20:
  case 0x28:

   g_ym2610.adpcma[ch].end =
    (((g_ym2610.reg[0x128 + ch] * 0x100) +
    g_ym2610.reg[0x120 + ch]) << 8) +
    (1 << 8) - 1;
   TNeoAdpcmControl* pControl = ymGetChannelControl(ch);
   if(pControl) {
    pControl->endAddr = g_ym2610.adpcma[ch].end;
    pControl->command = NEOADPCM_ENDADDR;
    ymFinishChannelControl(ch);
   }
   break;
  }
  break;
 }
}

u8 neoYM2610Read(u16 a)
{
 u32 addr = g_ym2610.address;

 switch(a & 3) {
 case 0:

  return g_ym2610.irqStatus & 0x03;
 case 1:
  if(addr < 16) return g_ym2610.reg[addr];
  else if(addr == 0xff) return 0x01;
  break;
 case 2:
  ymUpdateArriveEnd();
  return g_ym2610.adpcmArriveEnd;
 }
 return 0;
}

void neoYM2610Write(u16 a, u8 d)
{
 u32 addr;

 switch(a & 3) {
 case 0:
  g_ym2610.addrPort = 0;
  g_ym2610.address = d;
  break;
 case 1:
  if(g_ym2610.addrPort != 0) break;

  addr = g_ym2610.address;
  g_ym2610.reg[addr] = d;

  switch(addr & 0xf0) {
  case 0x00:
   ymSSGWrite(addr, d);
   break;
  case 0x10:
   ymADPCMBWrite(addr - 0x10, d);
   break;
  case 0x20:
   ymOPNModeWrite(addr, d);
   break;
  default:
   break;
  }
  break;
 case 2:
  g_ym2610.addrPort = 1;
  g_ym2610.address = d;
  break;
 case 3:
  if(g_ym2610.addrPort != 1) break;

  addr = g_ym2610.address;
  g_ym2610.reg[addr | 0x100] = d;

  if(addr < 0x30) {
   ymADPCMAWrite(addr, d);
  } else {

  }
  break;
 }
}

void neoYM2610Init()
{
 u32 i;

 memset(&g_ym2610, 0, sizeof(TYM2610Context));
 g_ym2610.adpcmaTotalLevel = 0x3f;
 ymOPNModeWrite(0x27, 0x30);
 for(i = 0; i < 6; i++) {
  g_ym2610.adpcma[i].flagMask = (1 << i);
 }
 g_ym2610.adpcmb.flagMask = 0x80;

 for(i = 0; i < 3; i++) {
  g_ym2610.ssg[i].hwChannel = 0xff;
  g_ym2610.ssg[i].state = SSG_CHANNEL_DISABLE;
 }
 for(i = 0; i < 14; i++) {
  ymSSGWrite(i, 0);
 }
 for(i = 0; i < 7; i++) {
  g_ym2610.queuePos[i] = -1;
 }
}

void neoYM2610Process()
{
 if(g_ym2610.timerATicks > 0) {
  g_ym2610.timerATicks--;
  if(g_ym2610.timerATicks == 0) {

   if(g_ym2610.mode & 0x04) ymInterruptSet(0x01);

   ymTimerASet();
  }
 }
 if(g_ym2610.timerBTicks > 0) {
  g_ym2610.timerBTicks--;
  if(g_ym2610.timerBTicks == 0) {

   if(g_ym2610.mode & 0x08) ymInterruptSet(0x02);

   ymTimerBSet();
  }
 }
 ymSSGEnvelopeProcess();
}
