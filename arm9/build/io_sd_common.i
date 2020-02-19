# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_sd_common.c"
# 1 "C:\\Users\\GRX\\NeoDS-GBMacro\\arm9\\build//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_sd_common.c"
# 41 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_sd_common.c"
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_sd_common.h" 1
# 46 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_sd_common.h"
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
# 47 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_sd_common.h" 2
# 94 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_sd_common.h"
extern u8 _SD_CRC7(u8* data, int size);





extern void _SD_CRC16 (u8* buff, int buffLength, u8* crc16buff);

typedef bool (*_SD_FN_CMD_6BYTE_RESPONSE) (u8* responseBuffer, u8 command, u32 data);
typedef bool (*_SD_FN_CMD_17BYTE_RESPONSE) (u8* responseBuffer, u8 command, u32 data);
# 112 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_sd_common.h"
extern bool _SD_InitCard (_SD_FN_CMD_6BYTE_RESPONSE cmd_6byte_response,
       _SD_FN_CMD_17BYTE_RESPONSE cmd_17byte_response,
       bool use4bitBus,
       u32 *RCA);
# 42 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_sd_common.c" 2
# 50 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_sd_common.c"
u8 _SD_CRC7(u8* data, int cnt) {
    int i, a;
    u8 crc, temp;

    crc = 0;
    for (a = 0; a < cnt; a++)
    {
        temp = data[a];
        for (i = 0; i < 8; i++)
        {
            crc <<= 1;
            if ((temp & 0x80) ^ (crc & 0x80)) crc ^= 0x09;
            temp <<= 1;
        }
    }
    crc = (crc << 1) | 1;
    return(crc);
}






void _SD_CRC16 (u8* buff, int buffLength, u8* crc16buff) {
 u32 a, b, c, d;
 int count;
 u32 bitPattern = 0x80808080;
 u32 crcConst = 0x1021;
 u32 dataByte = 0;

 a = 0;
 b = 0;
 c = 0;
 d = 0;

 buffLength = buffLength * 8;


 do {
  if (bitPattern & 0x80) dataByte = *buff++;

  a = a << 1;
  if ( a & 0x10000) a ^= crcConst;
  if (dataByte & (bitPattern >> 24)) a ^= crcConst;

  b = b << 1;
  if (b & 0x10000) b ^= crcConst;
  if (dataByte & (bitPattern >> 25)) b ^= crcConst;

  c = c << 1;
  if (c & 0x10000) c ^= crcConst;
  if (dataByte & (bitPattern >> 26)) c ^= crcConst;

  d = d << 1;
  if (d & 0x10000) d ^= crcConst;
  if (dataByte & (bitPattern >> 27)) d ^= crcConst;

  bitPattern = (bitPattern >> 4) | (bitPattern << 28);
 } while (buffLength-=4);

 count = 16;

 do {
  bitPattern = bitPattern << 4;
  if (a & 0x8000) bitPattern |= 8;
  if (b & 0x8000) bitPattern |= 4;
  if (c & 0x8000) bitPattern |= 2;
  if (d & 0x8000) bitPattern |= 1;

  a = a << 1;
  b = b << 1;
  c = c << 1;
  d = d << 1;

  count--;

  if (!(count & 0x01)) {
   *crc16buff++ = (u8)(bitPattern & 0xff);
  }
 } while (count != 0);

 return;
}
# 142 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_sd_common.c"
bool _SD_InitCard (_SD_FN_CMD_6BYTE_RESPONSE cmd_6byte_response,
     _SD_FN_CMD_17BYTE_RESPONSE cmd_17byte_response,
     bool use4bitBus,
     u32 *RCA)
{
 u8 responseBuffer[17] = {0};
 int i;

 for (i = 0; i < 1000 ; i++) {
  cmd_6byte_response (responseBuffer, 55, 0);

  if (responseBuffer[0] != 55) {
   return false;
  }
  if (
   cmd_6byte_response (responseBuffer, 41, 0x00030000) &&
   ((responseBuffer[1] & 0x80) != 0))
  {

   break;
  }
 }
 if (i >= 1000) {
  return false;
 }


 cmd_17byte_response (responseBuffer, 2, 0);


 for (i = 0; i < 1000 ; i++) {
  cmd_6byte_response (responseBuffer, 3, 0);
  *RCA = (responseBuffer[1] << 24) | (responseBuffer[2] << 16);
  if ((responseBuffer[3] & 0x1e) != (3 << 1)) {
   break;
  }
 }
  if (i >= 1000) {
  return false;
 }


 cmd_17byte_response (responseBuffer, 9, *RCA);


 cmd_6byte_response (responseBuffer, 7, *RCA);

 if (use4bitBus) {

  cmd_6byte_response (responseBuffer, 55, *RCA);
  cmd_6byte_response (responseBuffer, 6, 2);
 }


 cmd_6byte_response (responseBuffer, 16, 512);


 i = 0;
 do {
  if (i >= 256) {
   return false;
  }
  i++;
 } while (!cmd_6byte_response (responseBuffer, 13, *RCA) && ((responseBuffer[3] & 0x1f) != ((4 << 1) | 1)));

 return true;
}
