# 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_m3sd.c"
# 1 "C:\\Users\\GRX\\NeoDS\\arm9\\build//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_m3sd.c"
# 46 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_m3sd.c"
# 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_m3sd.h" 1
# 43 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_m3sd.h"
# 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/disc_io.h" 1
# 39 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/disc_io.h"
# 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/../common.h" 1
# 43 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/../common.h"
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
# 44 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/../common.h" 2
# 40 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/disc_io.h" 2
# 61 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/disc_io.h"
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
# 44 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_m3sd.h" 2


extern const IO_INTERFACE _io_m3sd ;
# 47 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_m3sd.c" 2
# 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_sd_common.h" 1
# 94 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_sd_common.h"
extern u8 _SD_CRC7(u8* data, int size);





extern void _SD_CRC16 (u8* buff, int buffLength, u8* crc16buff);

typedef bool (*_SD_FN_CMD_6BYTE_RESPONSE) (u8* responseBuffer, u8 command, u32 data);
typedef bool (*_SD_FN_CMD_17BYTE_RESPONSE) (u8* responseBuffer, u8 command, u32 data);
# 112 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_sd_common.h"
extern bool _SD_InitCard (_SD_FN_CMD_6BYTE_RESPONSE cmd_6byte_response,
       _SD_FN_CMD_17BYTE_RESPONSE cmd_17byte_response,
       bool use4bitBus,
       u32 *RCA);
# 48 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_m3sd.c" 2
# 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_m3_common.h" 1
# 45 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_m3_common.h"
extern void _M3_changeMode (u32 mode);
# 49 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_m3sd.c" 2
# 69 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_m3sd.c"
static u32 _M3SD_relativeCardAddress = 0;




static inline void _M3SD_unlock (void) {
 _M3_changeMode (0x00400003);
}

static inline bool _M3SD_waitOnBusy (void) {
 int i = 0;
 while ( ((*(vu16*)0x09800000) & 0x01) == 0x00) {
  i++;
  if (i >= 20000) {
   return false;
  }
 }
 return true;
}

static inline bool _M3SD_waitForDataReady (void) {
 int i = 0;
 while ( ((*(vu16*)0x09800000) & 0x40) == 0x00) {
  i++;
  if (i >= 20000) {
   return false;
  }
 }
 return true;
}


static bool _M3SD_sendCommand (u16 command, u32 argument) {
 (*(vu16*)0x09800000) = 0x8;
 (*(vu16*)0x09200000) = 0x40 + command;
 (*(vu16*)0x09400000) = argument >> 16;
 (*(vu16*)0x09600000) = argument;


 (*(vu16*)0x08800000)=0x29;
 if (!_M3SD_waitOnBusy()) {
  (*(vu16*)0x08800000)=0x09;
  return false;
 }
 (*(vu16*)0x08800000)=0x09;
 return true;
}

static bool _M3SD_sendByte (u8 byte) {
 int i = 0;
 (*(vu16*)0x09000000) = byte;
 (*(vu16*)0x08800000) = 0x03;
 (*(vu16*)0x09800000) = 0x01;
 while (((*(vu16*)0x09800000) & 0x04) == 0) {
  i++;
  if (i >= 20000) {
   return false;
  }
 }
 return true;
}

static u8 _M3SD_getByte (void) {
 int i;

 (*(vu16*)0x08800000) = 0x02;
 (*(vu16*)0x09800000) = 0x02;

 i = 0;
 while (((*(vu16*)0x09800000) & 0x08) == 0) {
  i++;
  if (i >= 20000) {

   return 0xFF;
  }
 }
 i = 0;
 while (((*(vu16*)0x09800000) & 0x08) != 0) {
  i++;
  if (i >= 20000) {

   return 0xFF;
  }
 }

 return ((*(vu16*)0x09000000) & 0xff);
}


static bool _M3SD_getResponse (u8* dest, u32 length) {
 u32 i;
 u8 dataByte;
 int shiftAmount;


 for (i = 0; i < 256; i++) {
  dataByte = _M3SD_getByte();
  if (dataByte != 0xff) {
   break;
  }
 }

 if (dest == 0) {
  return true;
 }


 if (dataByte == 0xff) {
  return false;
 }


 for ( i = 0; i < length; i++) {
  dest[i] = dataByte;
  dataByte = _M3SD_getByte();
 }



 i = _M3SD_getByte();
 i = _M3SD_getByte();



 for (shiftAmount = 0; ((dest[0] << shiftAmount) & 0x80) != 0x00; shiftAmount++) {
  if (shiftAmount >= 7) {
   return false;
  }
 }

 for (i = 0; i < length - 1; i++) {
  dest[i] = (dest[i] << shiftAmount) | (dest[i+1] >> (8-shiftAmount));
 }

 dest[i] = (dest[i] << shiftAmount) | (dataByte >> (8-shiftAmount));

 return true;
}


static inline bool _M3SD_getResponse_R1 (u8* dest) {
 return _M3SD_getResponse (dest, 6);
}

static inline bool _M3SD_getResponse_R1b (u8* dest) {
 return _M3SD_getResponse (dest, 6);
}

static inline bool _M3SD_getResponse_R2 (u8* dest) {
 return _M3SD_getResponse (dest, 17);
}

static inline bool _M3SD_getResponse_R3 (u8* dest) {
 return _M3SD_getResponse (dest, 6);
}

static inline bool _M3SD_getResponse_R6 (u8* dest) {
 return _M3SD_getResponse (dest, 6);
}

static void _M3SD_sendClocks (u32 numClocks) {
 while (numClocks--) {
  _M3SD_sendByte(0xff);
 }
}

static void _M3SD_getClocks (u32 numClocks) {
 while (numClocks--) {
  _M3SD_getByte();
 }
}

bool _M3SD_cmd_6byte_response (u8* responseBuffer, u8 command, u32 data) {
 _M3SD_sendCommand (command, data);
 return _M3SD_getResponse (responseBuffer, 6);
}

bool _M3SD_cmd_17byte_response (u8* responseBuffer, u8 command, u32 data) {
 _M3SD_sendCommand (command, data);
 return _M3SD_getResponse (responseBuffer, 17);
}

static bool _M3SD_initCard (void) {

 _M3SD_sendClocks (100);


 if (!_M3SD_sendCommand (0, 0)) {
  return false;
 }

 _M3SD_getClocks (100);


 _M3SD_relativeCardAddress = 0;


 return _SD_InitCard (_M3SD_cmd_6byte_response,
    _M3SD_cmd_17byte_response,
    true,
    &_M3SD_relativeCardAddress);
}

static bool _M3SD_readData (void* buffer) {
 u32 i;
 u8* buff_u8 = (u8*)buffer;
 u16* buff = (u16*)buffer;
 u16 temp;

 (*(vu16*)0x08800000) = 0x49;
 if (!_M3SD_waitForDataReady()) {
  (*(vu16*)0x08800000) = 0x09;
  return false;
 }
 (*(vu16*)0x08800000) = 0x09;

 (*(vu16*)0x08800000) = 0x8;
 (*(vu16*)0x09800000) = 0x4;

 i = (*(vu16*)0x08800000);

 i=256;
 if ((u32)buff_u8 & 0x01) {
  while(i--)
  {
   temp = (*(vu16*)0x08800000);
   *buff_u8++ = temp & 0xFF;
   *buff_u8++ = temp >> 8;
  }
 } else {
  while(i--)
   *buff++ = (*(vu16*)0x08800000);
 }

 i = (*(vu16*)0x08800000) + (*(vu16*)0x08800000) + (*(vu16*)0x08800000) + (*(vu16*)0x08800000);

 return true;
}

static void _M3SD_clkout (void) {
 (*(vu16*)0x08800000) = 0x4;
 (*(vu16*)0x08800000) = 0xc;
# 323 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_m3sd.c"
}

static void _M3SD_clkin (void) {
 (*(vu16*)0x08800000) = 0x0;
 (*(vu16*)0x08800000) = 0x8;
# 340 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_m3sd.c"
}

static bool _M3SD_writeData (u8* data, u8* crc) {
 int i;
 u8 temp;

 do {
  _M3SD_clkin();
 } while (((*(vu16*)0x09000000) & 0x100) == 0);

 (*(vu16*)0x09000000) = 0;

 _M3SD_clkout();

 for (i = 0; i < 512; i++) {
  temp = (*data++);
  (*(vu16*)0x09000000) = temp >> 4;
  _M3SD_clkout();
  (*(vu16*)0x09000000) = temp;
  _M3SD_clkout();
 }

 if (crc != 0) {
  for (i = 0; i < 8; i++) {
   temp = (*crc++);
   (*(vu16*)0x09000000) = temp >> 4;
   _M3SD_clkout();
   (*(vu16*)0x09000000) = temp;
   _M3SD_clkout();
  }
 }

 i = 32;
 while (i--) {
  temp += 2;
 }

 for (i = 0; i < 32; i++) {
  (*(vu16*)0x09000000) = 0xff;
  _M3SD_clkout();
 }

 do {
  _M3SD_clkin();
 } while (((*(vu16*)0x09000000) & 0x100) == 0);

 return true;
}




bool _M3SD_startUp (void) {
 _M3SD_unlock();
 return _M3SD_initCard();
}

bool _M3SD_isInserted (void) {
 u8 responseBuffer [6];

 if (!_M3SD_sendCommand (13, 0)) {
  return false;
 }

 if (!_M3SD_getResponse_R1 (responseBuffer)) {
  return false;
 }

 if (responseBuffer[0] != 13) {
  return false;
 }
 return true;
}

bool _M3SD_readSectors (u32 sector, u32 numSectors, void* buffer) {
 u32 i;
 u8* dest = (u8*) buffer;
 u8 responseBuffer[6];

 if (numSectors == 1) {

  if (!_M3SD_sendCommand (17, sector * 512)) {
   return false;
  }

  if (!_M3SD_readData (buffer)) {
   return false;
  }

 } else {

  if (!_M3SD_sendCommand (18, sector * 512)) {
   return false;
  }

  for(i=0; i < numSectors; i++, dest+=512) {
   if (!_M3SD_readData(dest)) {
    return false;
   }
   (*(vu16*)0x09800000) = 0x8;
  }


  _M3SD_sendCommand (12, 0);
  _M3SD_getResponse_R1b (responseBuffer);
 }

 return true;
}

bool _M3SD_writeSectors (u32 sector, u32 numSectors, const void* buffer) {
 u8 crc[8];
 u8 responseBuffer[6];
 u32 offset = sector * 512;
 u8* data = (u8*) buffer;
 int i;

 _SD_CRC16 ( data, 512, crc);

 while (numSectors--) {

  _M3SD_sendCommand (24, offset);
  if (!_M3SD_getResponse_R1 (responseBuffer)) {
   return false;
  }

  (*(vu16*)0x08800000) = 0x4;
  (*(vu16*)0x09800000) = 0x0;


  if (! _M3SD_writeData( data, crc)) {
   return false;
  }

  if (numSectors > 0) {
   offset += 512;
   data += 512;

   _SD_CRC16 ( data, 512, crc);
  }


  i = 3000;
  responseBuffer[3] = 0;
  do {
   _M3SD_sendCommand (13, _M3SD_relativeCardAddress);
   _M3SD_getResponse_R1 (responseBuffer);
   i--;
   if (i <= 0) {
    return false;
   }
  } while (((responseBuffer[3] & 0x1f) != ((4 << 1) | 1)));
 }

 return true;

}

bool _M3SD_clearStatus (void) {
 return _M3SD_initCard ();
}

bool _M3SD_shutdown (void) {
 _M3_changeMode (0x00400004);
 return true;
}

const IO_INTERFACE _io_m3sd = {
 0x4453334D,
 0x00000001 | 0x00000002 | 0x00000010,
 (FN_MEDIUM_STARTUP)&_M3SD_startUp,
 (FN_MEDIUM_ISINSERTED)&_M3SD_isInserted,
 (FN_MEDIUM_READSECTORS)&_M3SD_readSectors,
 (FN_MEDIUM_WRITESECTORS)&_M3SD_writeSectors,
 (FN_MEDIUM_CLEARSTATUS)&_M3SD_clearStatus,
 (FN_MEDIUM_SHUTDOWN)&_M3SD_shutdown
} ;
