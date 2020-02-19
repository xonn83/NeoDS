# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/ram.c"
# 1 "C:\\Users\\GRX\\NeoDS-GBMacro\\arm9\\build//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/ram.c"





# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/ram.h" 1
# 9 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/ram.h"
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
# 279 "C:/devkitPro/libnds/include/nds/bios.h"
void swiWaitForIRQ(void);

void swiSetHaltCR(uint32 data);


extern void swiDecodeDelta8(void * source, void * destination);
# 295 "C:/devkitPro/libnds/include/nds/bios.h"
void swiDecodeDelta16(void * source, void * destination);
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
# 204 "C:/devkitPro/libnds/include/nds/memory.h"
static inline void sysSetCartOwner(bool arm9) {
  (*(vuint16*)0x04000204) = ((*(vuint16*)0x04000204) & ~(1 << (7))) | (arm9 ? 0 : (1 << (7)));
}

static inline void sysSetCardOwner(bool arm9) {
  (*(vuint16*)0x04000204) = ((*(vuint16*)0x04000204) & ~(1 << (11))) | (arm9 ? 0 : (1 << (11)));
}


static inline void sysSetBusOwners(bool arm9rom, bool arm9card) {
  uint16 pattern = (*(vuint16*)0x04000204) & ~((1 << (11))|(1 << (7)));
  pattern = pattern | (arm9card ? 0: (1 << (11)) ) |
                      (arm9rom ? 0: (1 << (7)) );
  (*(vuint16*)0x04000204) = pattern;
}
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
# 137 "C:/devkitPro/libnds/include/nds/system.h"
static inline void lcdSwap(void) { *(vu16*)0x4000304 ^= (1 << (15)); }


static inline void lcdMainOnTop(void) { *(vu16*)0x4000304 |= (1 << (15)); }


static inline void lcdMainOnBottom(void) { *(vu16*)0x4000304 &= ~(1 << (15)); }
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





# 1 "C:/devkitPro/libnds/include/nds/arm9/background.h" 1
# 59 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/arm9/boxtest.h" 1
# 35 "C:/devkitPro/libnds/include/nds/arm9/boxtest.h"
# 1 "C:/devkitPro/libnds/include/nds/arm9/video.h" 1
# 70 "C:/devkitPro/libnds/include/nds/arm9/video.h"
typedef enum {
 VRAM_A_LCD = 0,
 VRAM_A_MAIN_BG = 1,
 VRAM_A_MAIN_BG_0x06000000 = 1 | ((0)<<3),
 VRAM_A_MAIN_BG_0x06020000 = 1 | ((1)<<3),
 VRAM_A_MAIN_BG_0x06040000 = 1 | ((2)<<3),
 VRAM_A_MAIN_BG_0x06060000 = 1 | ((3)<<3),
 VRAM_A_MAIN_SPRITE = 2,
 VRAM_A_MAIN_SPRITE_0x06400000 = 2,
 VRAM_A_MAIN_SPRITE_0x06420000 = 2 | ((1)<<3),
 VRAM_A_TEXTURE = 3,
 VRAM_A_TEXTURE_SLOT0 = 3 | ((0)<<3),
 VRAM_A_TEXTURE_SLOT1 = 3 | ((1)<<3),
 VRAM_A_TEXTURE_SLOT2 = 3 | ((2)<<3),
 VRAM_A_TEXTURE_SLOT3 = 3 | ((3)<<3)
} VRAM_A_TYPE;

typedef enum {
 VRAM_B_LCD = 0,
 VRAM_B_MAIN_BG = 1 | ((1)<<3),
 VRAM_B_MAIN_BG_0x06000000 = 1 | ((0)<<3),
 VRAM_B_MAIN_BG_0x06020000 = 1 | ((1)<<3),
 VRAM_B_MAIN_BG_0x06040000 = 1 | ((2)<<3),
 VRAM_B_MAIN_BG_0x06060000 = 1 | ((3)<<3),
 VRAM_B_MAIN_SPRITE = 2 | ((1)<<3),
 VRAM_B_MAIN_SPRITE_0x06400000 = 2,
 VRAM_B_MAIN_SPRITE_0x06420000 = 2 | ((1)<<3),
 VRAM_B_TEXTURE = 3 | ((1)<<3),
 VRAM_B_TEXTURE_SLOT0 = 3 | ((0)<<3),
 VRAM_B_TEXTURE_SLOT1 = 3 | ((1)<<3),
 VRAM_B_TEXTURE_SLOT2 = 3 | ((2)<<3),
 VRAM_B_TEXTURE_SLOT3 = 3 | ((3)<<3)
} VRAM_B_TYPE;

typedef enum {
 VRAM_C_LCD = 0,
 VRAM_C_MAIN_BG = 1 | ((2)<<3),
 VRAM_C_MAIN_BG_0x06000000 = 1 | ((0)<<3),
 VRAM_C_MAIN_BG_0x06020000 = 1 | ((1)<<3),
 VRAM_C_MAIN_BG_0x06040000 = 1 | ((2)<<3),
 VRAM_C_MAIN_BG_0x06060000 = 1 | ((3)<<3),
 VRAM_C_ARM7 = 2,
 VRAM_C_ARM7_0x06000000 = 2,
 VRAM_C_ARM7_0x06020000 = 2 | ((1)<<3),
 VRAM_C_SUB_BG = 4,
 VRAM_C_SUB_BG_0x06200000 = 4 | ((0)<<3),
 VRAM_C_SUB_BG_0x06220000 = 4 | ((1)<<3),
 VRAM_C_SUB_BG_0x06240000 = 4 | ((2)<<3),
 VRAM_C_SUB_BG_0x06260000 = 4 | ((3)<<3),
 VRAM_C_TEXTURE = 3 | ((2)<<3),
 VRAM_C_TEXTURE_SLOT0 = 3 | ((0)<<3),
 VRAM_C_TEXTURE_SLOT1 = 3 | ((1)<<3),
 VRAM_C_TEXTURE_SLOT2 = 3 | ((2)<<3),
 VRAM_C_TEXTURE_SLOT3 = 3 | ((3)<<3)
} VRAM_C_TYPE;

typedef enum {
 VRAM_D_LCD = 0,
 VRAM_D_MAIN_BG = 1 | ((3)<<3),
 VRAM_D_MAIN_BG_0x06000000 = 1 | ((0)<<3),
 VRAM_D_MAIN_BG_0x06020000 = 1 | ((1)<<3),
 VRAM_D_MAIN_BG_0x06040000 = 1 | ((2)<<3),
 VRAM_D_MAIN_BG_0x06060000 = 1 | ((3)<<3),
 VRAM_D_ARM7 = 2 | ((1)<<3),
 VRAM_D_ARM7_0x06000000 = 2,
 VRAM_D_ARM7_0x06020000 = 2 | ((1)<<3),
 VRAM_D_SUB_SPRITE = 4,
 VRAM_D_TEXTURE = 3 | ((3)<<3),
 VRAM_D_TEXTURE_SLOT0 = 3 | ((0)<<3),
 VRAM_D_TEXTURE_SLOT1 = 3 | ((1)<<3),
 VRAM_D_TEXTURE_SLOT2 = 3 | ((2)<<3),
 VRAM_D_TEXTURE_SLOT3 = 3 | ((3)<<3)
} VRAM_D_TYPE;

typedef enum {
 VRAM_E_LCD = 0,
 VRAM_E_MAIN_BG = 1,
 VRAM_E_MAIN_SPRITE = 2,
 VRAM_E_TEX_PALETTE = 3,
 VRAM_E_BG_EXT_PALETTE = 4,
 VRAM_E_OBJ_EXT_PALETTE = 5,
} VRAM_E_TYPE;

typedef enum {
 VRAM_F_LCD = 0,
 VRAM_F_MAIN_BG = 1,
 VRAM_F_MAIN_SPRITE = 2,
 VRAM_F_MAIN_SPRITE_0x06000000 = 2,
 VRAM_F_MAIN_SPRITE_0x06004000 = 2 | ((1)<<3),
 VRAM_F_MAIN_SPRITE_0x06010000 = 2 | ((2)<<3),
 VRAM_F_MAIN_SPRITE_0x06014000 = 2 | ((3)<<3),
 VRAM_F_TEX_PALETTE = 3,
 VRAM_F_BG_EXT_PALETTE = 4,
 VRAM_F_OBJ_EXT_PALETTE = 5,
} VRAM_F_TYPE;

typedef enum {
 VRAM_G_LCD = 0,
 VRAM_G_MAIN_BG = 1,
 VRAM_G_MAIN_SPRITE = 2,
 VRAM_G_MAIN_SPRITE_0x06000000 = 2,
 VRAM_G_MAIN_SPRITE_0x06004000 = 2 | ((1)<<3),
 VRAM_G_MAIN_SPRITE_0x06010000 = 2 | ((2)<<3),
 VRAM_G_MAIN_SPRITE_0x06014000 = 2 | ((3)<<3),
 VRAM_G_TEX_PALETTE = 3,
 VRAM_G_BG_EXT_PALETTE = 4,
 VRAM_G_OBJ_EXT_PALETTE = 5,
} VRAM_G_TYPE;

typedef enum {
 VRAM_H_LCD = 0,
 VRAM_H_SUB_BG = 1,
 VRAM_H_SUB_BG_EXT_PALETTE = 2,
} VRAM_H_TYPE;

typedef enum {
 VRAM_I_LCD = 0,
 VRAM_I_SUB_BG = 1,
 VRAM_I_SUB_SPRITE = 2,
 VRAM_I_SUB_SPRITE_EXT_PALETTE = 3,
}VRAM_I_TYPE;


typedef u16 _palette[256];
typedef _palette _ext_palette[16];







uint32 vramSetMainBanks(VRAM_A_TYPE a, VRAM_B_TYPE b, VRAM_C_TYPE c, VRAM_D_TYPE d);
void vramRestoreMainBanks(uint32 vramTemp);

void vramSetBankA(VRAM_A_TYPE a);
void vramSetBankB(VRAM_B_TYPE b);
void vramSetBankC(VRAM_C_TYPE c);
void vramSetBankD(VRAM_D_TYPE d);
void vramSetBankE(VRAM_E_TYPE e);
void vramSetBankF(VRAM_F_TYPE f);
void vramSetBankG(VRAM_G_TYPE g);
void vramSetBankH(VRAM_H_TYPE h);
void vramSetBankI(VRAM_I_TYPE i);
# 291 "C:/devkitPro/libnds/include/nds/arm9/video.h"
static inline
void videoSetMode( uint32 mode) { (*(vuint32*)0x04000000) = mode; }
static inline
void videoSetModeSub( uint32 mode) { (*(vuint32*)0x04001000) = mode; }
# 366 "C:/devkitPro/libnds/include/nds/arm9/video.h"
typedef struct {
 u16 x;
 u16 y;
} bg_scroll;

typedef struct {
    u16 xdx;
    u16 xdy;
    u16 ydx;
    u16 ydy;
    u32 centerX;
    u32 centerY;
} bg_rotation;

typedef struct {
    u16 control[4];
    bg_scroll scroll[4];
    bg_rotation bg2_rotation;
    bg_rotation bg3_rotation;
} bg_attribute;
# 36 "C:/devkitPro/libnds/include/nds/arm9/boxtest.h" 2
# 1 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h" 1
# 54 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
# 1 "C:/devkitPro/libnds/include/nds/arm9/math.h" 1
# 94 "C:/devkitPro/libnds/include/nds/arm9/math.h"
static inline int32 divf32(int32 num, int32 den)
{
 (*(vuint16*)(0x04000280)) = 1;

 while((*(vuint16*)(0x04000280)) & (1<<15));

 (*(vint64*) (0x04000290)) = ((int64)num) << 12;
 (*(vint32*) (0x04000298)) = den;

 while((*(vuint16*)(0x04000280)) & (1<<15));

 return ((*(vint32*) (0x040002A0)));
}




static inline int32 mulf32(int32 a, int32 b)
{
 long long result = (long long)a*(long long)b;
 return (int32)(result >> 12);
}




static inline int32 sqrtf32(int32 a)
{
 (*(vuint16*)(0x040002B0)) = 1;

 while((*(vuint16*)(0x040002B0)) & (1<<15));

 (*(vint64*) (0x040002B8)) = ((int64)a) << 12;

 while((*(vuint16*)(0x040002B0)) & (1<<15));

 return (*(vint32*) (0x040002B4));
}






static inline int32 div32(int32 num, int32 den)
{
 (*(vuint16*)(0x04000280)) = 0;

 while((*(vuint16*)(0x04000280)) & (1<<15));

 (*(vint32*) (0x04000290)) = num;
 (*(vint32*) (0x04000298)) = den;

 while((*(vuint16*)(0x04000280)) & (1<<15));

 return ((*(vint32*) (0x040002A0)));
}




static inline int32 mod32(int32 num, int32 den)
{
 (*(vuint16*)(0x04000280)) = 0;

 while((*(vuint16*)(0x04000280)) & (1<<15));

 (*(vint32*) (0x04000290)) = num;
 (*(vint32*) (0x04000298)) = den;

 while((*(vuint16*)(0x04000280)) & (1<<15));

 return ((*(vint32*) (0x040002A8)));
}




static inline int32 div64(int64 num, int32 den)
{
 (*(vuint16*)(0x04000280)) = 1;

 while((*(vuint16*)(0x04000280)) & (1<<15));

 (*(vint64*) (0x04000290)) = num;
 (*(vint32*) (0x04000298)) = den;

 while((*(vuint16*)(0x04000280)) & (1<<15));

 return ((*(vint32*) (0x040002A0)));
}




static inline int32 mod64(int64 num, int32 den)
{
 (*(vuint16*)(0x04000280)) = 1;

 while((*(vuint16*)(0x04000280)) & (1<<15));

 (*(vint64*) (0x04000290)) = num;
 (*(vint32*) (0x04000298)) = den;

 while((*(vuint16*)(0x04000280)) & (1<<15));

 return ((*(vint32*) (0x040002A8)));
}




static inline int32 sqrt32(int a)
{
 (*(vuint16*)(0x040002B0)) = 0;

 while((*(vuint16*)(0x040002B0)) & (1<<15));

 (*(vint32*) (0x040002B8)) = a;

 while((*(vuint16*)(0x040002B0)) & (1<<15));

 return (*(vint32*) (0x040002B4));
}







static inline void crossf32(int32 *a, int32 *b, int32 *result)
{
 result[0] = mulf32(a[1], b[2]) - mulf32(b[1], a[2]);
 result[1] = mulf32(a[2], b[0]) - mulf32(b[2], a[0]);
 result[2] = mulf32(a[0], b[1]) - mulf32(b[0], a[1]);
}



static inline int32 dotf32(int32 *a, int32 *b)
{
 return mulf32(a[0], b[0]) + mulf32(a[1], b[1]) + mulf32(a[2], b[2]);
}





static inline void normalizef32(int32* a)
{

 int32 magnitude = sqrtf32( mulf32(a[0], a[0]) + mulf32(a[1], a[1]) + mulf32(a[2], a[2]) );

 a[0] = divf32(a[0], magnitude);
 a[1] = divf32(a[1], magnitude);
 a[2] = divf32(a[2], magnitude);
}
# 55 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h" 2
# 1 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h" 1
# 44 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
extern short COS_bin[];
extern short SIN_bin[];
extern short TAN_bin[];
# 56 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h" 2
# 1 "C:/devkitPro/libnds/include/nds/arm9/cache.h" 1
# 46 "C:/devkitPro/libnds/include/nds/arm9/cache.h"
void IC_InvalidateAll();







void IC_InvalidateRange(const void *base, u32 size);





void DC_FlushAll();







void DC_FlushRange(const void *base, u32 size);





void DC_InvalidateAll();







void DC_InvalidateRange(const void *base, u32 size);
# 57 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h" 2
# 77 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
typedef uint16 fixed12d3;
# 90 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
typedef short int t16;






typedef short int v16;






typedef short int v10;
# 113 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
typedef unsigned short rgb;


typedef struct {
 int32 m[9];
} m3x3;


typedef struct {
 int32 m[16];
} m4x4;


typedef struct {
 int32 m[12];
} m4x3;


typedef struct {
 int32 x, y, z;
} GLvector;
# 143 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
typedef enum {
 GL_TRIANGLES = 0,
 GL_QUADS = 1,
 GL_TRIANGLE_STRIP = 2,
 GL_QUAD_STRIP = 3,
 GL_TRIANGLE = 0,
 GL_QUAD = 1
} GL_GLBEGIN_ENUM;




typedef enum {
 GL_PROJECTION = 0,
 GL_POSITION = 1,
 GL_MODELVIEW = 2,
 GL_TEXTURE = 3
} GL_MATRIX_MODE_ENUM;




typedef enum {
 GL_AMBIENT = 0x01,
 GL_DIFFUSE = 0x02,
 GL_AMBIENT_AND_DIFFUSE = 0x03,
 GL_SPECULAR = 0x04,
 GL_SHININESS = 0x08,
 GL_EMISSION = 0x10
} GL_MATERIALS_ENUM;




enum GL_POLY_FORMAT_ENUM {
 POLY_FORMAT_LIGHT0 = (1<<0),
 POLY_FORMAT_LIGHT1 = (1<<1),
 POLY_FORMAT_LIGHT2 = (1<<2),
 POLY_FORMAT_LIGHT3 = (1<<3),
 POLY_MODULATION = (0<<4),
 POLY_DECAL = (1<<4),
 POLY_TOON_HIGHLIGHT = (2<<4),
 POLY_SHADOW = (3<<4),
 POLY_CULL_FRONT = (1<<6),
 POLY_CULL_BACK = (2<<6),
 POLY_CULL_NONE = (3<<6),
 POLY_FOG = (1<<15)
};



enum GL_TEXTURE_SIZE_ENUM {
 TEXTURE_SIZE_8 = 0,
 TEXTURE_SIZE_16 = 1,
 TEXTURE_SIZE_32 = 2,
 TEXTURE_SIZE_64 = 3,
 TEXTURE_SIZE_128 = 4,
 TEXTURE_SIZE_256 = 5,
 TEXTURE_SIZE_512 = 6,
 TEXTURE_SIZE_1024 = 7
};




enum GL_TEXTURE_PARAM_ENUM {
 GL_TEXTURE_WRAP_S = (1 << 16),
 GL_TEXTURE_WRAP_T = (1 << 17),
 GL_TEXTURE_FLIP_S = (1 << 18),
 GL_TEXTURE_FLIP_T = (1 << 19),
 GL_TEXTURE_COLOR0_TRANSPARENT = (1<<29),
 TEXGEN_OFF = (0<<30),
 TEXGEN_TEXCOORD = (1<<30),
 TEXGEN_NORMAL = (2<<30),
 TEXGEN_POSITION = (3<<30)
};




typedef enum {
 GL_RGB32_A3 = 1,
 GL_RGB4 = 2,
 GL_RGB16 = 3,
 GL_RGB256 = 4,
 GL_COMPRESSED = 5,
 GL_RGB8_A5 = 6,
 GL_RGBA = 7,
 GL_RGB = 8
} GL_TEXTURE_TYPE_ENUM;




enum DISP3DCNT_ENUM {
 GL_TEXTURE_2D = (1<<0),
 GL_TOON_HIGHLIGHT = (1<<1),
 GL_ALPHA_TEST = (1<<2),
 GL_BLEND = (1<<3),
 GL_ANTIALIAS = (1<<4),
 GL_OUTLINE = (1<<5),
 GL_FOG_ONLY_ALPHA = (1<<6),
 GL_FOG = (1<<7),
 GL_COLOR_UNDERFLOW = (1<<12),
 GL_POLY_OVERFLOW = (1<<13),
 GL_CLEAR_BMP = (1<<14)
};




typedef enum {
 GL_GET_VERTEX_RAM_COUNT,
 GL_GET_POLYGON_RAM_COUNT,
 GL_GET_MATRIX_VECTOR,
 GL_GET_MATRIX_POSITION,
 GL_GET_MATRIX_PROJECTION,
 GL_GET_MATRIX_CLIP,
 GL_GET_TEXTURE_WIDTH,
 GL_GET_TEXTURE_HEIGHT
} GL_GET_ENUM;





enum GLFLUSH_ENUM {
 GL_TRANS_MANUALSORT = (1<<0),
 GL_WBUFFERING = (1<<1)
};
# 281 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
typedef struct {
 GL_MATRIX_MODE_ENUM matrixMode;


 uint32 clearColor;


 uint32 textures[2048];
 uint32 activeTexture;
 uint32* nextBlock;
 uint32 nextPBlock;
 int nameCount;

} gl_hidden_globals;


static gl_hidden_globals* glGlob = 0;
# 344 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
void glRotatef32i(int angle, int32 x, int32 y, int32 z);
# 355 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
int glTexImage2D(int target, int empty1, GL_TEXTURE_TYPE_ENUM type, int sizeX, int sizeY, int empty2, int param, const uint8* texture);





void glTexLoadPal(const u16* pal, u16 count, u32 addr );





int gluTexLoadPal(const u16* pal, u16 count, uint8 format);







void glTexParameter( uint8 sizeX, uint8 sizeY,
      const uint32* addr,
      GL_TEXTURE_TYPE_ENUM mode,
      uint32 param) ;


u32 glGetTexParameter();



void* glGetTexturePointer( int name);




void glBindTexture(int target, int name);


void glColorTable(uint8 format, uint32 addr);




int glGenTextures(int n, int *names);


void glResetTextures(void);





void glTexCoord2f32(int32 u, int32 v);




void glMaterialf(GL_MATERIALS_ENUM mode, rgb color);


void glInit_C(void);


gl_hidden_globals* glGetGlobals();
# 462 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
static inline uint32 POLY_ALPHA(int n) { return (uint32)((n) << 16); };



static inline uint32 POLY_ID(int n) { return (uint32)((n)<<24); };



static inline void glBegin(GL_GLBEGIN_ENUM mode) { (*(vuint32*) 0x04000500) = mode; }


static inline void glEnd(void) { (*(vuint32*) 0x04000504) = 0; }




static inline void glClearDepth(fixed12d3 depth) { (*(vuint16*) 0x04000354) = depth; }






static inline void glColor3b(uint8 red, uint8 green, uint8 blue) { (*(vuint32*) 0x04000480) = (vuint32)((red>>3)|((green>>3)<<5)|((blue>>3)<<10)); }



static inline void glColor(rgb color) { (*(vuint32*) 0x04000480) = (vuint32)color; }





static inline void glVertex3v16(v16 x, v16 y, v16 z) {
 (*(vuint32*) 0x0400048C) = (y << 16) | (x & 0xFFFF);
 (*(vuint32*) 0x0400048C) = ((uint32)(uint16)z);
}





static inline void glTexCoord2t16(t16 u, t16 v) { (*(vuint32*) 0x04000488) = ((u & 0xFFFF) | ((v) << 16)); }



static inline void glPushMatrix(void) { (*(vuint32*)0x04000444) = 0; }




static inline void glPopMatrix(int32 num) { (*(vuint32*)0x04000448) = num; }




static inline void glRestoreMatrix(int32 index) { (*(vuint32*)0x04000450) = index; }




static inline void glStoreMatrix(int32 index) { (*(vuint32*)0x0400044C) = index; }




static inline void glScalev(const GLvector* v) {
 (*(vint32*) 0x0400046C) = v->x;
 (*(vint32*) 0x0400046C) = v->y;
 (*(vint32*) 0x0400046C) = v->z;
}




static inline void glTranslatev(const GLvector* v) {
 (*(vint32*) 0x04000470) = v->x;
 (*(vint32*) 0x04000470) = v->y;
 (*(vint32*) 0x04000470) = v->z;
}






static inline void glTranslate3f32(int32 x, int32 y, int32 z) {
 (*(vint32*) 0x04000470) = x;
 (*(vint32*) 0x04000470) = y;
 (*(vint32*) 0x04000470) = z;
}




static inline void glScalef32(int32 factor) {
 (*(vint32*) 0x0400046C) = factor;
 (*(vint32*) 0x0400046C) = factor;
 (*(vint32*) 0x0400046C) = factor;
}
# 570 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
static inline void glLight(int id, rgb color, v10 x, v10 y, v10 z) {
 id = (id & 3) << 30;
 (*(vuint32*) 0x040004C8) = id | ((z & 0x3FF) << 20) | ((y & 0x3FF) << 10) | (x & 0x3FF);
 (*(vuint32*) 0x040004CC) = id | color;
}





static inline void glNormal(uint32 normal) { (*(vuint32*) 0x04000484) = normal; }


static inline void glLoadIdentity(void) { (*(vuint32*)0x04000454) = 0; }




static inline void glMatrixMode(GL_MATRIX_MODE_ENUM mode) { (*(vuint32*)0x04000440) = mode; }







static inline void glViewport(uint8 x1, uint8 y1, uint8 x2, uint8 y2) { (*(vuint32*) 0x04000580) = (x1) + (y1 << 8) + (x2 << 16) + (y2 << 24); }




static inline void glFlush(uint32 mode) { (*(vuint32*) 0x04000540) = mode; }


static inline void glMaterialShinyness(void) {
 uint32 shiny32[128/4];
 uint8 *shiny8 = (uint8*)shiny32;

 int i;

 for (i = 0; i < 128 * 2; i += 2)
  shiny8[i>>1] = i;

 for (i = 0; i < 128 / 4; i++)
  (*(vuint32*) 0x040004D0) = shiny32[i];
}






static inline void glCallList(const u32* list) {
 u32 count = *list++;


 DC_FlushRange(list, count*4);



 while(((*(vuint32*)(0x040000B8+(0*12))) & (1 << (31)))||((*(vuint32*)(0x040000B8+(1*12))) & (1 << (31)))||((*(vuint32*)(0x040000B8+(2*12))) & (1 << (31)))||((*(vuint32*)(0x040000B8+(3*12))) & (1 << (31))));


 (*(vuint32*)(0x040000B0+(0*12))) = (uint32)list;
 (*(vuint32*)(0x040000B4+(0*12))) = 0x4000400;
 (*(vuint32*)(0x040000B8+(0*12))) = ((1 << (31)) | (1 << (26)) | (1 << (22)) | (7<<27)) | count;
 while((*(vuint32*)(0x040000B8+(0*12))) & (1 << (31)));
}




static inline void glPolyFmt(uint32 params) { (*(vuint32*) 0x040004A4) = params; }



static inline void glEnable(int bits) { (*(vuint16*) 0x04000060) |= bits; }



static inline void glDisable(int bits) { (*(vuint16*) 0x04000060) &= ~bits; }



static inline void glLoadMatrix4x4(const m4x4 *m) {
 (*(vint32*) 0x04000458) = m->m[0];
 (*(vint32*) 0x04000458) = m->m[1];
 (*(vint32*) 0x04000458) = m->m[2];
 (*(vint32*) 0x04000458) = m->m[3];

 (*(vint32*) 0x04000458) = m->m[4];
 (*(vint32*) 0x04000458) = m->m[5];
 (*(vint32*) 0x04000458) = m->m[6];
 (*(vint32*) 0x04000458) = m->m[7];

 (*(vint32*) 0x04000458) = m->m[8];
 (*(vint32*) 0x04000458) = m->m[9];
 (*(vint32*) 0x04000458) = m->m[10];
 (*(vint32*) 0x04000458) = m->m[11];

 (*(vint32*) 0x04000458) = m->m[12];
 (*(vint32*) 0x04000458) = m->m[13];
 (*(vint32*) 0x04000458) = m->m[14];
 (*(vint32*) 0x04000458) = m->m[15];
}



static inline void glLoadMatrix4x3(const m4x3 * m) {
 (*(vint32*) 0x0400045C) = m->m[0];
 (*(vint32*) 0x0400045C) = m->m[1];
 (*(vint32*) 0x0400045C) = m->m[2];
 (*(vint32*) 0x0400045C) = m->m[3];

 (*(vint32*) 0x0400045C) = m->m[4];
 (*(vint32*) 0x0400045C) = m->m[5];
 (*(vint32*) 0x0400045C) = m->m[6];
 (*(vint32*) 0x0400045C) = m->m[7];

 (*(vint32*) 0x0400045C) = m->m[8];
 (*(vint32*) 0x0400045C) = m->m[9];
 (*(vint32*) 0x0400045C) = m->m[10];
 (*(vint32*) 0x0400045C) = m->m[11];
}



static inline void glMultMatrix4x4(const m4x4 * m) {
 (*(vint32*) 0x04000460) = m->m[0];
 (*(vint32*) 0x04000460) = m->m[1];
 (*(vint32*) 0x04000460) = m->m[2];
 (*(vint32*) 0x04000460) = m->m[3];

 (*(vint32*) 0x04000460) = m->m[4];
 (*(vint32*) 0x04000460) = m->m[5];
 (*(vint32*) 0x04000460) = m->m[6];
 (*(vint32*) 0x04000460) = m->m[7];

 (*(vint32*) 0x04000460) = m->m[8];
 (*(vint32*) 0x04000460) = m->m[9];
 (*(vint32*) 0x04000460) = m->m[10];
 (*(vint32*) 0x04000460) = m->m[11];

 (*(vint32*) 0x04000460) = m->m[12];
 (*(vint32*) 0x04000460) = m->m[13];
 (*(vint32*) 0x04000460) = m->m[14];
 (*(vint32*) 0x04000460) = m->m[15];
}



static inline void glMultMatrix4x3(const m4x3 * m) {
 (*(vint32*) 0x04000464) = m->m[0];
 (*(vint32*) 0x04000464) = m->m[1];
 (*(vint32*) 0x04000464) = m->m[2];
 (*(vint32*) 0x04000464) = m->m[3];

 (*(vint32*) 0x04000464) = m->m[4];
 (*(vint32*) 0x04000464) = m->m[5];
 (*(vint32*) 0x04000464) = m->m[6];
 (*(vint32*) 0x04000464) = m->m[7];

 (*(vint32*) 0x04000464) = m->m[8];
 (*(vint32*) 0x04000464) = m->m[9];
 (*(vint32*) 0x04000464) = m->m[10];
 (*(vint32*) 0x04000464) = m->m[11];

}



static inline void glMultMatrix3x3(const m3x3 * m) {
 (*(vint32*) 0x04000468) = m->m[0];
 (*(vint32*) 0x04000468) = m->m[1];
 (*(vint32*) 0x04000468) = m->m[2];

 (*(vint32*) 0x04000468) = m->m[3];
 (*(vint32*) 0x04000468) = m->m[4];
 (*(vint32*) 0x04000468) = m->m[5];

 (*(vint32*) 0x04000468) = m->m[6];
 (*(vint32*) 0x04000468) = m->m[7];
 (*(vint32*) 0x04000468) = m->m[8];
}



static inline void glRotateXi(int angle) {
 int32 sine = SIN_bin[angle & (0x1FF)];
 int32 cosine = COS_bin[angle & (0x1FF)];

 (*(vint32*) 0x04000468) = ((1) << 12);
 (*(vint32*) 0x04000468) = 0;
 (*(vint32*) 0x04000468) = 0;

 (*(vint32*) 0x04000468) = 0;
 (*(vint32*) 0x04000468) = cosine;
 (*(vint32*) 0x04000468) = sine;

 (*(vint32*) 0x04000468) = 0;
 (*(vint32*) 0x04000468) = -sine;
 (*(vint32*) 0x04000468) = cosine;
}



static inline void glRotateYi(int angle) {
 int32 sine = SIN_bin[angle & (0x1FF)];
 int32 cosine = COS_bin[angle & (0x1FF)];

 (*(vint32*) 0x04000468) = cosine;
 (*(vint32*) 0x04000468) = 0;
 (*(vint32*) 0x04000468) = -sine;

 (*(vint32*) 0x04000468) = 0;
 (*(vint32*) 0x04000468) = ((1) << 12);
 (*(vint32*) 0x04000468) = 0;

 (*(vint32*) 0x04000468) = sine;
 (*(vint32*) 0x04000468) = 0;
 (*(vint32*) 0x04000468) = cosine;
}



static inline void glRotateZi(int angle) {
 int32 sine = SIN_bin[angle & (0x1FF)];
 int32 cosine = COS_bin[angle & (0x1FF)];

 (*(vint32*) 0x04000468) = cosine;
 (*(vint32*) 0x04000468) = sine;
 (*(vint32*) 0x04000468) = 0;

 (*(vint32*) 0x04000468) = - sine;
 (*(vint32*) 0x04000468) = cosine;
 (*(vint32*) 0x04000468) = 0;

 (*(vint32*) 0x04000468) = 0;
 (*(vint32*) 0x04000468) = 0;
 (*(vint32*) 0x04000468) = ((1) << 12);
}
# 820 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
static inline void glOrthof32(int32 left, int32 right, int32 bottom, int32 top, int32 zNear, int32 zFar) {
 (*(vint32*) 0x04000460) = divf32(((2) << 12), right - left);
 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = 0;

 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = divf32(((2) << 12), top - bottom);
 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = 0;

 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = divf32(((-2) << 12), zFar - zNear);
 (*(vint32*) 0x04000460) = 0;

 (*(vint32*) 0x04000460) = -divf32(right + left, right - left);
 (*(vint32*) 0x04000460) = -divf32(top + bottom, top - bottom);
 (*(vint32*) 0x04000460) = -divf32(zFar + zNear, zFar - zNear);
 (*(vint32*) 0x04000460) = ((int32)((1.0F) * (1 << 12)));
}
# 852 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
static inline void gluLookAtf32(int32 eyex, int32 eyey, int32 eyez, int32 lookAtx, int32 lookAty, int32 lookAtz, int32 upx, int32 upy, int32 upz) {
 int32 side[3], forward[3], up[3], eye[3];

 forward[0] = eyex - lookAtx;
 forward[1] = eyey - lookAty;
 forward[2] = eyez - lookAtz;

 normalizef32(forward);

 up[0] = upx;
 up[1] = upy;
 up[2] = upz;
 eye[0] = eyex;
 eye[1] = eyey;
 eye[2] = eyez;

 crossf32(up, forward, side);

 normalizef32(side);


 crossf32(forward, side, up);

 glMatrixMode(GL_MODELVIEW);



 (*(vint32*) 0x04000464) = side[0];
 (*(vint32*) 0x04000464) = up[0];
 (*(vint32*) 0x04000464) = forward[0];

 (*(vint32*) 0x04000464) = side[1];
 (*(vint32*) 0x04000464) = up[1];
 (*(vint32*) 0x04000464) = forward[1];

 (*(vint32*) 0x04000464) = side[2];
 (*(vint32*) 0x04000464) = up[2];
 (*(vint32*) 0x04000464) = forward[2];

 (*(vint32*) 0x04000464) = -dotf32(eye,side);
 (*(vint32*) 0x04000464) = -dotf32(eye,up);
 (*(vint32*) 0x04000464) = -dotf32(eye,forward);

}
# 905 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
static inline void glFrustumf32(int32 left, int32 right, int32 bottom, int32 top, int32 near, int32 far) {
# 928 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
 (*(vint32*) 0x04000460) = divf32(2*near, right - left);
 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = 0;

 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = divf32(2*near, top - bottom);
 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = 0;

 (*(vint32*) 0x04000460) = divf32(right + left, right - left);
 (*(vint32*) 0x04000460) = divf32(top + bottom, top - bottom);
 (*(vint32*) 0x04000460) = -divf32(far + near, far - near);
 (*(vint32*) 0x04000460) = ((int32)((-1.0F) * (1 << 12)));

 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = -divf32(2 * mulf32(far, near), far - near);
 (*(vint32*) 0x04000460) = 0;

}






static inline void gluPerspectivef32(int fovy, int32 aspect, int32 zNear, int32 zFar) {
 int32 xmin, xmax, ymin, ymax;

 ymax = mulf32(zNear, TAN_bin[(fovy>>1) & (0x1FF)]);
 ymin = -ymax;
 xmin = mulf32(ymin, aspect);
 xmax = mulf32(ymax, aspect);

 glFrustumf32(xmin, xmax, ymin, ymax, zNear, zFar);
}







static inline void gluPickMatrix(int x, int y, int width, int height, const int viewport[4]) {
 (*(vint32*) 0x04000460) = ((viewport[2]) << 12) / width;
 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = ((viewport[3]) << 12) / height;
 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = ((1) << 12);
 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = ((viewport[2] + ((viewport[0] - x)<<1)) << 12) / width;
 (*(vint32*) 0x04000460) = ((viewport[3] + ((viewport[1] - y)<<1)) << 12) / height;
 (*(vint32*) 0x04000460) = 0;
 (*(vint32*) 0x04000460) = ((1) << 12);
}


static inline void glResetMatrixStack(void) {

 while((*(vuint32*) 0x04000600) & (1 << (14))){
  (*(vuint32*) 0x04000600) |= 1 << 15;
 }


 if(((*(vuint32*) 0x04000600)&(1<<13))!=0) {
  glMatrixMode(GL_PROJECTION);
  glPopMatrix(1);
 }


 glMatrixMode(GL_MODELVIEW);
 glPopMatrix(((*(vuint32*) 0x04000600) >> 8) & 0x1F);


 glMatrixMode(GL_MODELVIEW);
 glLoadIdentity();
 glMatrixMode(GL_PROJECTION);
 glLoadIdentity();
 glMatrixMode(GL_TEXTURE);
 glLoadIdentity();
}




static inline void glSetOutlineColor(int id, rgb color) { ((vuint16*) 0x04000330)[id] = color; }



static inline void glSetToonTable(const uint16 *table) {
 int i;
 for(i = 0; i < 32; i++ )
  ((vuint16*) 0x04000380)[i] = table[i];
}





static inline void glSetToonTableRange(int start, int end, rgb color) {
 int i;
 for(i = start; i <= end; i++ )
  ((vuint16*) 0x04000380)[i] = color;
}






static inline void glGetFixed(const GL_GET_ENUM param, int32* f) {
 int i;
 switch (param) {
  case GL_GET_MATRIX_VECTOR:
   while(((*(vuint32*) 0x04000600) & (1 << (27))));
   for(i = 0; i < 9; i++) f[i] = ((vint32*) (0x04000680))[i];
   break;
  case GL_GET_MATRIX_CLIP:
   while(((*(vuint32*) 0x04000600) & (1 << (27))));
   for(i = 0; i < 16; i++) f[i] = ((vint32*) (0x04000640))[i];
   break;
  case GL_GET_MATRIX_PROJECTION:
   glMatrixMode(GL_POSITION);
   glPushMatrix();
   glLoadIdentity();
   while(((*(vuint32*) 0x04000600) & (1 << (27))));
    for(i = 0; i < 16; i++) f[i] = ((vint32*) (0x04000640))[i];
   glPopMatrix(1);
   break;
  case GL_GET_MATRIX_POSITION:
   glMatrixMode(GL_PROJECTION);
   glPushMatrix();
   glLoadIdentity();
   while(((*(vuint32*) 0x04000600) & (1 << (27))));
    for(i = 0; i < 16; i++) f[i] = ((vint32*) (0x04000640))[i];
   glPopMatrix(1);
   break;
  default:
   break;
 }
}




static inline void glAlphaFunc(int alphaThreshold) { (*(vuint16*) 0x04000340) = alphaThreshold; }




static inline void glCutoffDepth(fixed12d3 wVal) { (*(uint16*)0x04000610) = wVal; }


static inline void glInit() {
 glGlob = glGetGlobals();
 glInit_C();
}






static inline void glClearColor(uint8 red, uint8 green, uint8 blue, uint8 alpha) {
 (*(vuint32*) 0x04000350) = glGlob->clearColor = ( glGlob->clearColor & 0xFFE08000) | (0x7FFF & ((red)|((green)<<5)|((blue)<<10))) | ((alpha & 0x1F) << 16);
}



static inline void glClearPolyID(uint8 ID) {
 (*(vuint32*) 0x04000350) = glGlob->clearColor = ( glGlob->clearColor & 0xC0FFFFFF) | (( ID & 0x3F ) << 24 );
}




static inline void glGetInt(GL_GET_ENUM param, int* i) {
 switch (param) {
  case GL_GET_POLYGON_RAM_COUNT:
   *i = (*(uint16*) 0x04000604);
   break;
  case GL_GET_VERTEX_RAM_COUNT:
   *i = (*(uint16*) 0x04000606);
   break;
  case GL_GET_TEXTURE_WIDTH:
   *i = 8 << (((glGlob->textures[glGlob->activeTexture]) >> 20) & 7);
   break;
  case GL_GET_TEXTURE_HEIGHT:
   *i = 8 << (((glGlob->textures[glGlob->activeTexture]) >> 23) & 7);
   break;
  default:
   break;
 }
}
# 1142 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
static inline void glVertex3f(float x, float y, float z) {
 glVertex3v16(((v16)((x) * (1 << 12))), ((v16)((y) * (1 << 12))), ((v16)((z) * (1 << 12))));
}







static inline void glRotatef32(float angle, int32 x, int32 y, int32 z) {
    glRotatef32i((int)(angle * (512) / 360.0), x, y, z);
}







static inline void glRotatef(float angle, float x, float y, float z) {
 glRotatef32(angle, ((int32)((x) * (1 << 12))), ((int32)((y) * (1 << 12))), ((int32)((z) * (1 << 12))));
}






static inline void glColor3f(float r, float g, float b) {
 glColor3b((uint8)(r*255), (uint8)(g*255), (uint8)(b*255));
}







static inline void glScalef(float x, float y, float z) {
 (*(vint32*) 0x0400046C) = ((int32)((x) * (1 << 12)));
 (*(vint32*) 0x0400046C) = ((int32)((y) * (1 << 12)));
 (*(vint32*) 0x0400046C) = ((int32)((z) * (1 << 12)));
}







static inline void glTranslatef(float x, float y, float z) {
 (*(vint32*) 0x04000470) = ((int32)((x) * (1 << 12)));
 (*(vint32*) 0x04000470) = ((int32)((y) * (1 << 12)));
 (*(vint32*) 0x04000470) = ((int32)((z) * (1 << 12)));
}







static inline void glNormal3f(float x, float y, float z) {
 glNormal((((((x>.998) ? 0x1FF : ((v10)((x)*(1<<9))))) & 0x3FF) | (((((y>.998) ? 0x1FF : ((v10)((y)*(1<<9))))) & 0x3FF) << 10) | ((((z>.998) ? 0x1FF : ((v10)((z)*(1<<9))))) << 20)));
}




static inline void glRotateX(float angle) {
 glRotateXi((int)(angle * (512) / 360.0));
}




static inline void glRotateY(float angle) {
 glRotateYi((int)(angle * (512) / 360.0));
}




static inline void glRotateZ(float angle) {
 glRotateZi((int)(angle * (512) / 360.0));
}
# 1238 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
static inline void glOrtho(float left, float right, float bottom, float top, float zNear, float zFar) {
 glOrthof32(((int32)((left) * (1 << 12))), ((int32)((right) * (1 << 12))), ((int32)((bottom) * (1 << 12))), ((int32)((top) * (1 << 12))), ((int32)((zNear) * (1 << 12))), ((int32)((zFar) * (1 << 12))));
}
# 1253 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
static inline void gluLookAt( float eyex, float eyey, float eyez,
        float lookAtx, float lookAty, float lookAtz,
        float upx, float upy, float upz) {
 gluLookAtf32(((int32)((eyex) * (1 << 12))), ((int32)((eyey) * (1 << 12))), ((int32)((eyez) * (1 << 12))),
     ((int32)((lookAtx) * (1 << 12))), ((int32)((lookAty) * (1 << 12))), ((int32)((lookAtz) * (1 << 12))),
     ((int32)((upx) * (1 << 12))), ((int32)((upy) * (1 << 12))), ((int32)((upz) * (1 << 12))));
}
# 1269 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
static inline void glFrustum(float left, float right, float bottom, float top, float near, float far) {
 glFrustumf32(((int32)((left) * (1 << 12))), ((int32)((right) * (1 << 12))), ((int32)((bottom) * (1 << 12))), ((int32)((top) * (1 << 12))), ((int32)((near) * (1 << 12))), ((int32)((far) * (1 << 12))));
}







static inline void gluPerspective(float fovy, float aspect, float zNear, float zFar) {
 gluPerspectivef32((int)(fovy * (512) / 360.0), ((int32)((aspect) * (1 << 12))), ((int32)((zNear) * (1 << 12))), ((int32)((zFar) * (1 << 12))));
}






static inline void glTexCoord2f(float s, float t) {
 int x = ((glGlob->textures[glGlob->activeTexture]) >> 20) & 7;
 int y = ((glGlob->textures[glGlob->activeTexture]) >> 23) & 7;

 glTexCoord2t16(((t16)((s*(8 << x)) * (1 << 4))), ((t16)((t*(8<<y)) * (1 << 4))));
}
# 37 "C:/devkitPro/libnds/include/nds/arm9/boxtest.h" 2
# 57 "C:/devkitPro/libnds/include/nds/arm9/boxtest.h"
int BoxTest(v16 x, v16 y, v16 z, v16 width, v16 height, v16 depth);
# 70 "C:/devkitPro/libnds/include/nds/arm9/boxtest.h"
int BoxTestf(float x, float y, float z, float width, float height, float depth);
# 84 "C:/devkitPro/libnds/include/nds/arm9/boxtest.h"
void BoxTest_Asynch(v16 x, v16 y, v16 z, v16 height, v16 width, v16 depth);
# 98 "C:/devkitPro/libnds/include/nds/arm9/boxtest.h"
void BoxTestf_Asynch(float x, float y, float z, float width, float height, float depth);






int BoxTestResult(void);
# 60 "C:/devkitPro/libnds/include/nds.h" 2

# 1 "C:/devkitPro/libnds/include/nds/arm9/console.h" 1
# 60 "C:/devkitPro/libnds/include/nds/arm9/console.h"
void consoleInit(u16* font, u16* charBase, u16 numCharacters, u8 charStart, u16* map, u8 pal, u8 bitDepth);
# 70 "C:/devkitPro/libnds/include/nds/arm9/console.h"
void consoleInitDefault(u16* map, u16* charBase, u8 bitDepth);







void consoleDemoInit(void);



void consoleClear(void);
# 62 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/arm9/exceptions.h" 1
# 54 "C:/devkitPro/libnds/include/nds/arm9/exceptions.h"
extern VoidFunctionPointer exceptionC[] ;
extern unsigned long exceptionStack ;
extern signed long exceptionRegisters[];

void enterException(void);
void setExceptionHandler(VoidFunctionPointer handler);
void defaultExceptionHandler();

u32 getCPSR();
# 63 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/arm9/image.h" 1
# 51 "C:/devkitPro/libnds/include/nds/arm9/image.h"
 typedef struct
 {
    unsigned char r,g,b;
 }__attribute__ ((packed)) RGB_24;


 typedef struct
 {
    short height,width;
    int bpp;
    unsigned short* palette;

    union
    {
       unsigned char* data8;
       unsigned short* data16;
       unsigned int* data32;
    } image;

 } sImage, *psImage;





void image24to16(sImage* img);
void image8to16(sImage* img);
void image8to16trans(sImage* img, u8 transperentColor);
void imageDestroy(sImage* img);
void imageTileData(sImage* img);






# 1 "C:/devkitPro/libnds/include/nds/arm9/pcx.h" 1
# 41 "C:/devkitPro/libnds/include/nds/arm9/pcx.h"
typedef struct
{
   char manufacturer;
   char version;
   char encoding;
   char bitsPerPixel;
   short int xmin,ymin;
   short int xmax,ymax;
   short int hres;
   short int vres;
   char palette16[48];
   char reserved;
   char colorPlanes;
   short int bytesPerLine;
   short int paletteYype;
   char filler[58];
}__attribute__ ((packed)) PCXHeader, *pPCXHeader;





int loadPCX(unsigned char* pcx, sImage* image);
# 88 "C:/devkitPro/libnds/include/nds/arm9/image.h" 2
# 64 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/arm9/input.h" 1
# 104 "C:/devkitPro/libnds/include/nds/arm9/input.h"
typedef enum KEYPAD_BITS {
  KEY_A = (1 << (0)),
  KEY_B = (1 << (1)),
  KEY_SELECT = (1 << (2)),
  KEY_START = (1 << (3)),
  KEY_RIGHT = (1 << (4)),
  KEY_LEFT = (1 << (5)),
  KEY_UP = (1 << (6)),
  KEY_DOWN = (1 << (7)),
  KEY_R = (1 << (8)),
  KEY_L = (1 << (9)),
  KEY_X = (1 << (10)),
  KEY_Y = (1 << (11)),
  KEY_TOUCH = (1 << (12)),
  KEY_LID = (1 << (13))
} KEYPAD_BITS;
# 128 "C:/devkitPro/libnds/include/nds/arm9/input.h"
void scanKeys();


uint32 keysHeld(void);


uint32 keysDown(void);


uint32 keysDownRepeat(void);





void keysSetRepeat( u8 setDelay, u8 setRepeat );


uint32 keysUp(void);


touchPosition touchReadXY();
# 65 "C:/devkitPro/libnds/include/nds.h" 2


# 1 "C:/devkitPro/libnds/include/nds/arm9/rumble.h" 1
# 50 "C:/devkitPro/libnds/include/nds/arm9/rumble.h"
typedef enum {
   RUMBLE,
   WARIOWARE
}RUMBLE_TYPE;





bool isRumbleInserted(void);





void setRumble(bool position);
# 68 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/arm9/sound.h" 1
# 47 "C:/devkitPro/libnds/include/nds/arm9/sound.h"
void playSound( pTransferSoundData sound);
void setGenericSound( u32 rate, u8 vol, u8 pan, u8 format);
void playGenericSound(const void* data, u32 length);
# 69 "C:/devkitPro/libnds/include/nds.h" 2



# 1 "C:/devkitPro/libnds/include/nds/arm9/sprite.h" 1
# 82 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
typedef enum
{
 OBJMODE_NORMAL,
 OBJMODE_BLENDED,
 OBJMODE_WINDOWED,
 OBJMODE_BITMAP,

} tObjMode;





typedef enum {
 OBJSHAPE_SQUARE,
 OBJSHAPE_WIDE,
 OBJSHAPE_TALL,
 OBJSHAPE_FORBIDDEN,
} tObjShape;





typedef enum {
 OBJSIZE_8,
 OBJSIZE_16,
 OBJSIZE_32,
 OBJSIZE_64,
} tObjSize;





typedef enum {
 OBJCOLOR_16,
 OBJCOLOR_256,
} tObjColMode;





typedef enum {
 OBJPRIORITY_0,
 OBJPRIORITY_1,
 OBJPRIORITY_2,
 OBJPRIORITY_3,
} tObjPriority;



typedef union {
 struct {

  struct {
   u16 posY :8;
   union {
    struct {
     u8 :1;
     bool isHidden :1;
     u8 :6;
    };
    struct {
     bool isRotoscale :1;
     bool rsDouble :1;
     tObjMode objMode :2;
     bool isMosaic :1;
     tObjColMode colMode :1;
     tObjShape objShape :2;
    };
   };
  };

  union {
   struct {
    u16 posX :9;
    u8 :7;
   };
   struct {
    u8 :8;
    union {
     struct {
      u8 :4;
      bool hFlip :1;
      bool vFlip :1;
      u8 :2;
     };
     struct {
      u8 :1;
      u8 rsMatrixIdx :5;
      tObjSize objSize :2;
     };
    };
   };
  };

  struct {
   u16 tileIdx :10;
   tObjPriority objPriority :2;
   u8 objPal :4;
  };

  u16 attribute3;
 };

 struct {
  uint16 attribute[3];
  uint16 filler;
 };

} SpriteEntry, * pSpriteEntry;


typedef struct sSpriteRotation {
  uint16 filler1[3];
  int16 hdx;

  uint16 filler2[3];
  int16 hdy;

  uint16 filler3[3];
  int16 vdx;

  uint16 filler4[3];
  int16 vdy;
} SpriteRotation, * pSpriteRotation;
# 218 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
typedef union {
 SpriteEntry spriteBuffer[128];
 SpriteRotation matrixBuffer[32];
} tOAM;
# 73 "C:/devkitPro/libnds/include/nds.h" 2
# 10 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/ram.h" 2






typedef enum { DETECT_RAM=0, SC_RAM, M3_RAM, OPERA_RAM, G6_RAM, EZ_RAM } RAM_TYPE;


bool ram_init (RAM_TYPE);


RAM_TYPE ram_type ();


const char* ram_type_string ();


u32 ram_size ();



vu16* ram_unlock ();


void ram_lock ();


void ram_turbo (bool enable);
# 7 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/ram.c" 2
# 16 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/ram.c"
vu16 *_sc_unlock ()

{
    *(vu16*)0x9FFFFFE = 0xA55A;
    *(vu16*)0x9FFFFFE = 0xA55A;
    *(vu16*)0x9FFFFFE = 0x5;
    *(vu16*)0x9FFFFFE = 0x5;

    return (vu16*)0x8000000;
}


void _sc_lock ()

{
    *(vu16*)0x9FFFFFE = 0xA55A;
    *(vu16*)0x9FFFFFE = 0xA55A;
    *(vu16*)0x9FFFFFE = 0x3;
    *(vu16*)0x9FFFFFE = 0x3;
}


vu16 *_m3_unlock ()

{
    u32 mode = 0x00400006;
    vu16 tmp;
    tmp = *(vu16*)0x08E00002;
    tmp = *(vu16*)0x0800000E;
    tmp = *(vu16*)0x08801FFC;
    tmp = *(vu16*)0x0800104A;
    tmp = *(vu16*)0x08800612;
    tmp = *(vu16*)0x08000000;
    tmp = *(vu16*)0x08801B66;
    tmp = *(vu16*)(0x08000000 + (mode << 1));
    tmp = *(vu16*)0x0800080E;
    tmp = *(vu16*)0x08000000;
    tmp = *(vu16*)0x080001E4;
    tmp = *(vu16*)0x080001E4;
    tmp = *(vu16*)0x08000188;
    tmp = *(vu16*)0x08000188;

    return (vu16*)0x8000000;
}


void _m3_lock ()

{
    u32 mode = 0x00400003;
    vu16 tmp;
    tmp = *(vu16*)0x08E00002;
    tmp = *(vu16*)0x0800000E;
    tmp = *(vu16*)0x08801FFC;
    tmp = *(vu16*)0x0800104A;
    tmp = *(vu16*)0x08800612;
    tmp = *(vu16*)0x08000000;
    tmp = *(vu16*)0x08801B66;
    tmp = *(vu16*)(0x08000000 + (mode << 1));
    tmp = *(vu16*)0x0800080E;
    tmp = *(vu16*)0x08000000;
    tmp = *(vu16*)0x080001E4;
    tmp = *(vu16*)0x080001E4;
    tmp = *(vu16*)0x08000188;
    tmp = *(vu16*)0x08000188;
}


vu16 *_opera_unlock ()

{
    *(vu16*)0x8240000 = 1;

    return (vu16*)0x9000000;
}


void _opera_lock ()

{
    *(vu16*)0x8240000 = 0;
}



vu16 *_g6_unlock ()

{
    u32 mode = 6;
    vu16 tmp;
 tmp = *(vu16*)0x09000000;
 tmp = *(vu16*)0x09FFFFE0;
 tmp = *(vu16*)0x09FFFFEC;
 tmp = *(vu16*)0x09FFFFEC;
 tmp = *(vu16*)0x09FFFFEC;
 tmp = *(vu16*)0x09FFFFFC;
 tmp = *(vu16*)0x09FFFFFC;
 tmp = *(vu16*)0x09FFFFFC;
 tmp = *(vu16*)0x09FFFF4A;
 tmp = *(vu16*)0x09FFFF4A;
 tmp = *(vu16*)0x09FFFF4A;
 tmp = *(vu16*)(0x09200000 + (mode << 1));
 tmp = *(vu16*)0x09FFFFF0;
 tmp = *(vu16*)0x09FFFFE8;

    return (vu16*)0x8000000;
}


void _g6_lock ()

{
    u32 mode = 3;
    vu16 tmp;
 tmp = *(vu16*)0x09000000;
 tmp = *(vu16*)0x09FFFFE0;
 tmp = *(vu16*)0x09FFFFEC;
 tmp = *(vu16*)0x09FFFFEC;
 tmp = *(vu16*)0x09FFFFEC;
 tmp = *(vu16*)0x09FFFFFC;
 tmp = *(vu16*)0x09FFFFFC;
 tmp = *(vu16*)0x09FFFFFC;
 tmp = *(vu16*)0x09FFFF4A;
 tmp = *(vu16*)0x09FFFF4A;
 tmp = *(vu16*)0x09FFFF4A;
 tmp = *(vu16*)(0x09200000 + (mode << 1));
 tmp = *(vu16*)0x09FFFFF0;
 tmp = *(vu16*)0x09FFFFE8;
}


vu16 *_ez_unlock ()

{
    *(vu16*)0x9FE0000 = 0xD200;
    *(vu16*)0x8000000 = 0x1500;
    *(vu16*)0x8020000 = 0xD200;
    *(vu16*)0x8040000 = 0x1500;
    *(vu16*)0x9400000 = 0;
    *(vu16*)0x9C40000 = 0xD200;
    *(vu16*)0x9FC0000 = 0x1500;

    *(vu16*)0x9FE0000 = 0xD200;
    *(vu16*)0x8000000 = 0x1500;
    *(vu16*)0x8020000 = 0xD200;
    *(vu16*)0x8040000 = 0x1500;
    *(vu16*)0x9880000 = 0x8000;
    *(vu16*)0x9FC0000 = 0x1500;

    *(vu16*)0x9FE0000 = 0xD200;
    *(vu16*)0x8000000 = 0x1500;
    *(vu16*)0x8020000 = 0xD200;
    *(vu16*)0x8040000 = 0x1500;
    *(vu16*)0x9C40000 = 0x1500;
    *(vu16*)0x9FC0000 = 0x1500;

    return (vu16*)0x8400000;
}


void _ez_lock ()

{
    *(vu16*)0x9FE0000 = 0xD200;
    *(vu16*)0x8000000 = 0x1500;
    *(vu16*)0x8020000 = 0xD200;
    *(vu16*)0x8040000 = 0x1500;
    *(vu16*)0x9C40000 = 0xD200;
    *(vu16*)0x9FC0000 = 0x1500;

    *(vu16*)0x9FE0000 = 0xD200;
    *(vu16*)0x8000000 = 0x1500;
    *(vu16*)0x8020000 = 0xD200;
    *(vu16*)0x8040000 = 0x1500;
    *(vu16*)0x9880000 = 0x0000;
    *(vu16*)0x9FC0000 = 0x1500;

    *(vu16*)0x9FE0000 = 0xD200;
    *(vu16*)0x8000000 = 0x1500;
    *(vu16*)0x8020000 = 0xD200;
    *(vu16*)0x8040000 = 0x1500;
    *(vu16*)0x9400000 = 1;
    *(vu16*)0x9C40000 = 0x1500;
    *(vu16*)0x9FC0000 = 0x1500;
}
# 209 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/ram.c"
static vu16* (*_unlock) () = 0;
static void (*_lock) () = 0;
static u32 _size = 0;
static RAM_TYPE _type = DETECT_RAM;
const char *_types[] = {"Unknown", "Supercard", "M3", "Opera", "G6", "EZ"};


static bool _ram_test ()

{
    vu16 *ram = _unlock();

    ram[0] = 0x1234;
    if(ram[0] == 0x1234)
    {
        _lock();

        ram[0] = 0x4321;
        if(ram[0] != 0x4321)
        {
            return true;
        }
    }

    return false;
}



static void _ram_precalc_size ()

{
    if(_unlock == 0 || _lock == 0)
        return;

    vu16 *ram = _unlock();
    _size = 0;

    ram[0] = 0x2468;
    while(ram[_size] == 0x2468)
    {
        ram[_size] = 0;
        _size += 512;
        ram[_size] = 0x2468;
    }
    _size<<=1;

    _lock();
}



bool ram_init (RAM_TYPE type)

{
    sysSetBusOwners(true, true);

    switch(type)
    {
        case SC_RAM:
        {
            _unlock = _sc_unlock;
            _lock = _sc_lock;
            _type = SC_RAM;
        }
        break;

        case M3_RAM:
        {
            _unlock = _m3_unlock;
            _lock = _m3_lock;
            _type = M3_RAM;
        }
        break;

        case OPERA_RAM:
        {
            _unlock = _opera_unlock;
            _lock = _opera_lock;
            _type = OPERA_RAM;
        }
        break;

        case G6_RAM:
        {
            _unlock = _g6_unlock;
            _lock = _g6_lock;
            _type = G6_RAM;
        }
        break;

        case EZ_RAM:
        {
            _unlock = _ez_unlock;
            _lock = _ez_lock;
            _type = EZ_RAM;
        }
        break;

        case DETECT_RAM:
        default:
        {

            _unlock = _ez_unlock;
            _lock = _ez_lock;
            _type = EZ_RAM;

            if(_ram_test())
            {
                break;
            }


            _unlock = _sc_unlock;
            _lock = _sc_lock;
            _type = SC_RAM;

            if(_ram_test())
            {
                break;
            }


            _unlock = _m3_unlock;
            _lock = _m3_lock;
            _type = M3_RAM;

            if(_ram_test())
            {
                break;
            }


            _unlock = _opera_unlock;
            _lock = _opera_lock;
            _type = OPERA_RAM;

            if(_ram_test())
            {
                break;
            }


            _unlock = _g6_unlock;
            _lock = _g6_lock;
            _type = G6_RAM;

            if(_ram_test())
            {
                break;
            }


            _unlock = 0;
            _lock = 0;
            _type = DETECT_RAM;

            return false;
        }
        break;
    }

    _ram_precalc_size();

    return true;
}



RAM_TYPE ram_type ()

{
    return _type;
}



const char* ram_type_string ()

{
    return _types[(int)_type];
}



u32 ram_size ()

{
    return _size;
}



vu16* ram_unlock ()

{
    sysSetBusOwners(true, true);

    if(_unlock)
        return _unlock();
    return 0;
}



void ram_lock ()

{
    sysSetBusOwners(true, true);

    if(_lock)
        _lock();
}



void ram_turbo (bool enable)

{
    if(enable)
        (*(vuint16*)0x04000204) |= 0x001A;
    else
        (*(vuint16*)0x04000204) &= ~0x001A;
}
