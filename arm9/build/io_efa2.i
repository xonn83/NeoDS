# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_efa2.c"
# 1 "C:\\Users\\GRX\\NeoDS-GBMacro\\arm9\\build//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_efa2.c"
# 17 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_efa2.c"
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_efa2.h" 1
# 18 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_efa2.h"
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/disc_io.h" 1
# 39 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/disc_io.h"
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/../common.h" 1
# 43 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/../common.h"
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
# 44 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/../common.h" 2
# 40 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/disc_io.h" 2
# 61 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/disc_io.h"
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
# 19 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_efa2.h" 2


extern const IO_INTERFACE _io_efa2;
# 18 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_efa2.c" 2
# 56 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_efa2.c"
static inline void _EFA2_rtc_deactivate(void) {
 (*(vu16*)0x080000c8) = 0;
}


static void _EFA2_reg_unlock(void) {
 (*(vu16*)0x09fe0000) = 0x0d200;
 (*(vu16*)0x08000000) = 0x01500;
 (*(vu16*)0x08020000) = 0x0d200;
 (*(vu16*)0x08040000) = 0x01500;
}


static inline void _EFA2_reg_lock(void) {
 (*(vu16*)0x09fc0000) = 0x1500;
}


static void _EFA2_global_unlock(void) {
 _EFA2_reg_unlock();
 *(vu16*)0x09880000 = 0x08000;
 _EFA2_reg_lock();
}
# 87 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_efa2.c"
static void _EFA2_nand_unlock(void) {
 _EFA2_reg_unlock();
 (*(vu16*)0x09c40000) = 0x01500;
 _EFA2_reg_lock();
}


static void _EFA2_nand_lock(void) {
 _EFA2_reg_unlock();
 (*(vu16*)0x09c40000) = 0x0d200;
 _EFA2_reg_lock();
}
# 110 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_efa2.c"
static void _EFA2_nand_enable(u16 val) {
 _EFA2_reg_unlock();
 (*(vu16*)0x09400000) = val;
 _EFA2_reg_lock();
}





static inline void _EFA2_nand_reset(void) {
 (*(vu8*)0x09ffffe2) = 0xff;
}
# 135 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_efa2.c"
static u32 _EFA2_nand_id(void) {
 u8 byte;
 u32 id;

 _EFA2_nand_unlock();
 _EFA2_nand_enable(1);

 (*(vu8*)0x09ffffe2) = 0x90;
 (*(vu8*)0x09ffffe0) = 0x00;
 byte = (*(vu8*)0x09ffc000);
 id = byte;
 byte = (*(vu8*)0x09ffc000);
 id = (id << 8) | byte;
 byte = (*(vu8*)0x09ffc000);
 id = (id << 8) | byte;
 byte = (*(vu8*)0x09ffc000);
 id = (id << 8) | byte;

 _EFA2_nand_enable(0);
 _EFA2_nand_lock();
 return (id);
}
# 167 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_efa2.c"
bool _EFA2_clearStatus (void)
{


 return true;
}






bool _EFA2_isInserted (void)
{
 _EFA2_clearStatus();
 return (_EFA2_nand_id() == 0xEC79A5C0);
}
# 194 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_efa2.c"
bool _EFA2_readSectors (u32 sector, u32 numSecs, void* buffer)
{
 int i;
# 211 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_efa2.c"
 u32 page = 0x40 + sector;



 if (!_EFA2_clearStatus()) return false;

 _EFA2_nand_unlock();
 _EFA2_nand_enable(1);
 _EFA2_nand_reset();


 (*(vu8*)0x09ffffe2) = 0x00;
 (*(vu8*)0x09ffffe0) = 0x00;
 (*(vu8*)0x09ffffe0) = (page ) & 0xff;
 (*(vu8*)0x09ffffe0) = (page >> 8 ) & 0xff;
 (*(vu8*)0x09ffffe0) = (page >> 16) & 0xff;





 for (i=0 ; i < 3 ; i++) _EFA2_rtc_deactivate();

 while (numSecs--)
 {



  for (i=0 ; i < 512 ; i++)
   ((u8*)buffer)[i] = (*(vu8*)0x09ffc000);
# 251 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_efa2.c"
 }

 _EFA2_nand_enable(0);
 _EFA2_nand_lock();
 return true;
}
# 268 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_efa2.c"
bool _EFA2_writeSectors (u32 sector, u8 numSecs, void* buffer)
{


 return false;
}





bool _EFA2_shutdown(void)
{
 return _EFA2_clearStatus();
}






bool _EFA2_startUp(void)
{
 _EFA2_global_unlock();
 return (_EFA2_nand_id() == 0xEC79A5C0);
}




const IO_INTERFACE _io_efa2 = {
 0x32414645,
 0x00000001 | 0x00000010,
 (FN_MEDIUM_STARTUP)&_EFA2_startUp,
 (FN_MEDIUM_ISINSERTED)&_EFA2_isInserted,
 (FN_MEDIUM_READSECTORS)&_EFA2_readSectors,
 (FN_MEDIUM_WRITESECTORS)&_EFA2_writeSectors,
 (FN_MEDIUM_CLEARSTATUS)&_EFA2_clearStatus,
 (FN_MEDIUM_SHUTDOWN)&_EFA2_shutdown
};
