# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_m3cf.c"
# 1 "C:\\Users\\GRX\\NeoDS-master-old\\arm9\\build//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_m3cf.c"
# 37 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_m3cf.c"
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_m3cf.h" 1
# 40 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_m3cf.h"
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
# 41 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_m3cf.h" 2


extern const IO_INTERFACE _io_m3cf ;
# 38 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_m3cf.c" 2
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_m3_common.h" 1
# 45 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_m3_common.h"
extern void _M3_changeMode (u32 mode);
# 39 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_m3cf.c" 2
# 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_cf_common.h" 1
# 43 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_cf_common.h"
typedef struct {
 vu16* data;
 vu16* status;
 vu16* command;
 vu16* error;
 vu16* sectorCount;
 vu16* lba1;
 vu16* lba2;
 vu16* lba3;
 vu16* lba4;
} CF_REGISTERS;
# 71 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_cf_common.h"
bool _CF_isInserted (void);
bool _CF_clearStatus (void);
bool _CF_readSectors (u32 sector, u32 numSectors, void* buffer);
bool _CF_writeSectors (u32 sector, u32 numSectors, void* buffer);
bool _CF_shutdown(void);
bool _CF_startup(const CF_REGISTERS *usableCfRegs);
# 40 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_m3cf.c" 2
# 68 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_m3cf.c"
static const CF_REGISTERS _M3CF_Registers = {
 ((vu16*)0x08800000),
 ((vu16*)0x080C0000),
 ((vu16*)0x088E0000),
 ((vu16*)0x08820000),
 ((vu16*)0x08840000),
 ((vu16*)0x08860000),
 ((vu16*)0x08880000),
 ((vu16*)0x088A0000),
 ((vu16*)0x088C0000)
};


bool _M3CF_startup(void) {
 _M3_changeMode (0x00400003);
 return _CF_startup (&_M3CF_Registers);
}


const IO_INTERFACE _io_m3cf = {
 0x4643334D,
 0x00000001 | 0x00000002 | 0x00000010,
 (FN_MEDIUM_STARTUP)&_M3CF_startup,
 (FN_MEDIUM_ISINSERTED)&_CF_isInserted,
 (FN_MEDIUM_READSECTORS)&_CF_readSectors,
 (FN_MEDIUM_WRITESECTORS)&_CF_writeSectors,
 (FN_MEDIUM_CLEARSTATUS)&_CF_clearStatus,
 (FN_MEDIUM_SHUTDOWN)&_CF_shutdown
} ;
