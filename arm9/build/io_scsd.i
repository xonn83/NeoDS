# 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_scsd.c"
# 1 "C:\\Users\\GRX\\NeoDS\\arm9\\build//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_scsd.c"
# 50 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_scsd.c"
# 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_scsd.h" 1
# 43 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_scsd.h"
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
# 44 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_scsd.h" 2


extern const IO_INTERFACE _io_scsd ;
# 51 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_scsd.c" 2
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
# 52 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_scsd.c" 2
# 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_sc_common.h" 1
# 43 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_sc_common.h"
extern void _SC_changeMode (u8 mode);
# 53 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_scsd.c" 2
# 83 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_scsd.c"
static u32 _SCSD_relativeCardAddress = 0;




extern bool _SCSD_writeData_s (u8 *data, u16* crc);

static inline void _SCSD_unlock (void) {
 _SC_changeMode (0x3);
}

static inline void _SCSD_enable_lite (void) {
 (*(vu16*)(0x09440000)) = 0;
}

static bool _SCSD_sendCommand (u8 command, u32 argument) {
 u8 databuff[6];
 u8 *tempDataPtr = databuff;
 int length = 6;
 u16 dataByte;
 int curBit;
 int i;

 *tempDataPtr++ = command | 0x40;
 *tempDataPtr++ = argument>>24;
 *tempDataPtr++ = argument>>16;
 *tempDataPtr++ = argument>>8;
 *tempDataPtr++ = argument;
 *tempDataPtr = _SD_CRC7 (databuff, 5);

 i = 500000;
 while ((((*(vu16*)(0x09800000)) & 0x01) == 0) && (--i));
 if (i == 0) {
  return false;
 }

 dataByte = (*(vu16*)(0x09800000));

 tempDataPtr = databuff;

 while (length--) {
  dataByte = *tempDataPtr++;
  for (curBit = 7; curBit >=0; curBit--){
   (*(vu16*)(0x09800000)) = dataByte;
   dataByte = dataByte << 1;
  }
 }

 return true;
}


static bool _SCSD_getResponse (u8* dest, u32 length) {
 u32 i;
 int dataByte;
 int numBits = length * 8;


 i = 500000;
 while ((((*(vu16*)(0x09800000)) & 0x01) != 0) && (--i));
 if (dest == 0) {
  return true;
 }

 if (i == 0) {

  return false;
 }


 dataByte = 0;
 numBits--;


 while (numBits--) {
  dataByte = (dataByte << 1) | ((*(vu16*)(0x09800000)) & 0x01);
  if ((numBits & 0x7) == 0) {

   *dest++ = (u8)dataByte;
   dataByte = 0;
  }
 }


 for (i = 0; i < 16; i++) {
  dataByte = (*(vu16*)(0x09800000));
 }

 return true;
}

static inline bool _SCSD_getResponse_R1 (u8* dest) {
 return _SCSD_getResponse (dest, 6);
}

static inline bool _SCSD_getResponse_R1b (u8* dest) {
 return _SCSD_getResponse (dest, 6);
}

static inline bool _SCSD_getResponse_R2 (u8* dest) {
 return _SCSD_getResponse (dest, 17);
}

static inline bool _SCSD_getResponse_R3 (u8* dest) {
 return _SCSD_getResponse (dest, 6);
}

static inline bool _SCSD_getResponse_R6 (u8* dest) {
 return _SCSD_getResponse (dest, 6);
}

static void _SCSD_sendClocks (u32 numClocks) {
 u16 temp;
 do {
  temp = (*(vu16*)(0x09800000));
 } while (numClocks--);
}

bool _SCSD_cmd_6byte_response (u8* responseBuffer, u8 command, u32 data) {
 _SCSD_sendCommand (command, data);
 return _SCSD_getResponse (responseBuffer, 6);
}

bool _SCSD_cmd_17byte_response (u8* responseBuffer, u8 command, u32 data) {
 _SCSD_sendCommand (command, data);
 return _SCSD_getResponse (responseBuffer, 17);
}


static bool _SCSD_initCard (void) {
 _SCSD_enable_lite();


 _SCSD_sendClocks (100);


 if (!_SCSD_sendCommand (0, 0)) {
  return false;
 }

 _SCSD_sendClocks (100);


 _SCSD_relativeCardAddress = 0;


 return _SD_InitCard (_SCSD_cmd_6byte_response,
    _SCSD_cmd_17byte_response,
    true,
    &_SCSD_relativeCardAddress);
}

static bool _SCSD_readData (void* buffer) {
 u8* buff_u8 = (u8*)buffer;
 u16* buff = (u16*)buffer;
 volatile register u32 temp;
 int i;

 i = 500000;
 while (((*(vu16*)(0x09100000)) & 0x100) && (--i));
 if (i == 0) {
  return false;
 }

 i=256;
 if ((u32)buff_u8 & 0x01) {
  while(i--) {
   temp = (*(vu32*)(0x09100000));
   temp = (*(vu32*)(0x09100000)) >> 16;
   *buff_u8++ = (u8)temp;
   *buff_u8++ = (u8)(temp >> 8);
  }
 } else {
  while(i--) {
   temp = (*(vu32*)(0x09100000));
   temp = (*(vu32*)(0x09100000)) >> 16;
   *buff++ = temp;
  }
 }


 for (i = 0; i < 8; i++) {
  temp = (*(vu32*)(0x09100000));
 }

 temp = (*(vu16*)(0x09100000));

 return true;
}




bool _SCSD_startUp (void) {
 _SCSD_unlock();
 return _SCSD_initCard();
}

bool _SCSD_isInserted (void) {
 u8 responseBuffer [6];


 if (!_SCSD_sendCommand (13, 0)) {
  return false;
 }

 if (!_SCSD_getResponse_R1 (responseBuffer)) {
  return false;
 }

 if (responseBuffer[0] != 13) {
  return false;
 }
 return true;
}

bool _SCSD_readSectors (u32 sector, u32 numSectors, void* buffer) {
 u32 i;
 u8* dest = (u8*) buffer;
 u8 responseBuffer[6];

 if (numSectors == 1) {

  if (!_SCSD_sendCommand (17, sector * 512)) {
   return false;
  }

  if (!_SCSD_readData (buffer)) {
   return false;
  }

 } else {

  if (!_SCSD_sendCommand (18, sector * 512)) {
   return false;
  }

  for(i=0; i < numSectors; i++, dest+=512) {
   if (!_SCSD_readData(dest)) {
    return false;
   }
  }


  _SCSD_sendCommand (12, 0);
  _SCSD_getResponse_R1b (responseBuffer);
 }

 _SCSD_sendClocks(0x10);
 return true;
}

bool _SCSD_writeSectors (u32 sector, u32 numSectors, const void* buffer) {
 u16 crc[4];
 u8 responseBuffer[6];
 u32 offset = sector * 512;
 u8* data = (u8*) buffer;
 int i;

 while (numSectors--) {

  _SD_CRC16 ( data, 512, (u8*)crc);


  _SCSD_sendCommand (24, offset);
  if (!_SCSD_getResponse_R1 (responseBuffer)) {
   return false;
  }


  if (! _SCSD_writeData_s (data, crc)) {
   return false;
  }


  _SCSD_sendClocks(0x10);

  offset += 512;
  data += 512;


  i = 3000;
  responseBuffer[3] = 0;
  do {
   _SCSD_sendCommand (13, _SCSD_relativeCardAddress);
   _SCSD_getResponse_R1 (responseBuffer);
   i--;
   if (i <= 0) {
    return false;
   }
  } while (((responseBuffer[3] & 0x1f) != ((4 << 1) | 1)));
 }

 return true;
}

bool _SCSD_clearStatus (void) {
 return _SCSD_initCard ();
}

bool _SCSD_shutdown (void) {
 _SC_changeMode (0x1);
 return true;
}

const IO_INTERFACE _io_scsd = {
 0x44534353,
 0x00000001 | 0x00000002 | 0x00000010,
 (FN_MEDIUM_STARTUP)&_SCSD_startUp,
 (FN_MEDIUM_ISINSERTED)&_SCSD_isInserted,
 (FN_MEDIUM_READSECTORS)&_SCSD_readSectors,
 (FN_MEDIUM_WRITESECTORS)&_SCSD_writeSectors,
 (FN_MEDIUM_CLEARSTATUS)&_SCSD_clearStatus,
 (FN_MEDIUM_SHUTDOWN)&_SCSD_shutdown
} ;
