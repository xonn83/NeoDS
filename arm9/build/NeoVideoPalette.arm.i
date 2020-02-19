# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoVideoPalette.arm.c"
# 1 "C:\\Users\\GRX\\NeoDS-GBMacro\\arm9\\build//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoVideoPalette.arm.c"
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/Default.h" 1



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
# 5 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/Default.h" 2
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


# 6 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/Default.h" 2
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdio.h" 1 3
# 34 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdio.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stddef.h" 1 3 4
# 35 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdio.h" 2 3


# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stdarg.h" 1 3 4
# 43 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 38 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdio.h" 2 3
# 46 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdio.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/types.h" 1 3
# 25 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/types.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/machine/_types.h" 1 3
# 22 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/machine/_types.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/limits.h" 1 3 4
# 23 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/machine/_types.h" 2 3



typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;
# 36 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/machine/_types.h" 3
typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/machine/_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/machine/_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/machine/_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/machine/_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 26 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/types.h" 2 3
# 69 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/types.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stddef.h" 1 3 4
# 152 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 326 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 70 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/types.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/machine/types.h" 1 3
# 19 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/machine/types.h" 3
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/types.h" 2 3
# 92 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/types.h" 3
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
# 166 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/types.h" 3
typedef int dev_t;




typedef long off_t;

typedef unsigned short uid_t;
typedef unsigned short gid_t;


typedef int pid_t;

typedef long key_t;

typedef _ssize_t ssize_t;
# 195 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/types.h" 3
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 222 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/types.h" 3
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 253 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/types.h" 3
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;

# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/features.h" 1 3
# 266 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/types.h" 2 3
# 47 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdio.h" 2 3



typedef __FILE FILE;
# 59 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdio.h" 3
typedef _fpos_t fpos_t;





# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/stdio.h" 1 3
# 66 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdio.h" 2 3
# 170 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdio.h" 3
FILE * tmpfile (void);
char * tmpnam (char *);
int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *, const char *, FILE *);
void setbuf (FILE *, char *);
int setvbuf (FILE *, char *, int, size_t);
int fprintf (FILE *, const char *, ...);
int fscanf (FILE *, const char *, ...);
int printf (const char *, ...);
int scanf (const char *, ...);
int sscanf (const char *, const char *, ...);
int siscanf (const char *, const char *, ...);
int vfprintf (FILE *, const char *, __gnuc_va_list);
int vprintf (const char *, __gnuc_va_list);
int vsprintf (char *, const char *, __gnuc_va_list);
int fgetc (FILE *);
char * fgets (char *, int, FILE *);
int fputc (int, FILE *);
int fputs (const char *, FILE *);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *, size_t _size, size_t _n, FILE *);
size_t fwrite (const void * , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *, fpos_t *);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *_name, const char *_type);
int sprintf (char *, const char *, ...);
int remove (const char *);
int rename (const char *, const char *);






int fseeko (FILE *, off_t, int);
off_t ftello ( FILE *);


int asiprintf (char **, const char *, ...);
int asprintf (char **, const char *, ...);

int dprintf (int, const char *, ...);

int fcloseall (void);
int fiprintf (FILE *, const char *, ...);
int fiscanf (FILE *, const char *, ...);
int iprintf (const char *, ...);
int iscanf (const char *, ...);
int siprintf (char *, const char *, ...);
int siscanf (const char *, const char *, ...);
int snprintf (char *, size_t, const char *, ...);
int sniprintf (char *, size_t, const char *, ...);
char * tempnam (const char *, const char *);
int vasiprintf (char **, const char *, __gnuc_va_list);
int vasprintf (char **, const char *, __gnuc_va_list);
int vdprintf (int, const char *, __gnuc_va_list);
int vsniprintf (char *, size_t, const char *, __gnuc_va_list);
int vsnprintf (char *, size_t, const char *, __gnuc_va_list);
int vfiprintf (FILE *, const char *, __gnuc_va_list);
int vfiscanf (FILE *, const char *, __gnuc_va_list);
int vfscanf (FILE *, const char *, __gnuc_va_list);
int viprintf (const char *, __gnuc_va_list);
int viscanf (const char *, __gnuc_va_list);
int viprintf (const char *, __gnuc_va_list);
int vscanf (const char *, __gnuc_va_list);
int vsiscanf (const char *, const char *, __gnuc_va_list);
int vsscanf (const char *, const char *, __gnuc_va_list);
# 269 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdio.h" 3
FILE * fdopen (int, const char *);

int fileno (FILE *);
int getw (FILE *);
int pclose (FILE *);
FILE * popen (const char *, const char *);
int putw (int, FILE *);
void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);
int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);






int _asiprintf_r (struct _reent *, char **, const char *, ...);
int _asprintf_r (struct _reent *, char **, const char *, ...);
int _dprintf_r (struct _reent *, int, const char *, ...);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
FILE * _fopen_r (struct _reent *, const char *, const char *);
int _fclose_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *, int, FILE *);
int _fiscanf_r (struct _reent *, FILE *, const char *, ...);
int _fputc_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *, FILE *);
size_t _fread_r (struct _reent *, void *, size_t _size, size_t _n, FILE *);
int _fscanf_r (struct _reent *, FILE *, const char *, ...);
int _fseek_r (struct _reent *, FILE *, long, int);
long _ftell_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * , size_t _size, size_t _n, FILE *);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...);
int _iscanf_r (struct _reent *, const char *, ...);
int _mkstemp_r (struct _reent *, char *);
char * _mktemp_r (struct _reent *, char *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *, ...);
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new);

int _scanf_r (struct _reent *, const char *, ...);
int _siprintf_r (struct _reent *, char *, const char *, ...);
int _siscanf_r (struct _reent *, const char *, const char *, ...);
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...);
int _snprintf_r (struct _reent *, char *, size_t, const char *, ...);
int _sprintf_r (struct _reent *, char *, const char *, ...);
int _sscanf_r (struct _reent *, const char *, const char *, ...);
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list);
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list);
int _vdprintf_r (struct _reent *, int, const char *, __gnuc_va_list);
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list);
int _vfprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list);
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list);
int _vprintf_r (struct _reent *, const char *, __gnuc_va_list);
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list);
int _vsprintf_r (struct _reent *, char *, const char *, __gnuc_va_list);
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list);
int _vsnprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list);
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list);
int _vfscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list);
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list);
int _vscanf_r (struct _reent *, const char *, __gnuc_va_list);
int _vsscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list);
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list);

ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);
# 382 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);






FILE *funopen (const void * _cookie, int (*readfn)(void * _cookie, char *_buf, int _n), int (*writefn)(void * _cookie, const char *_buf, int _n), fpos_t (*seekfn)(void * _cookie, fpos_t _off, int _whence), int (*closefn)(void * _cookie));
# 491 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdio.h" 3

# 7 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/Default.h" 2
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stdarg.h" 1 3 4
# 105 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 8 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/Default.h" 2





typedef struct _TPoint {
 s32 x;
 s32 y;
} TPoint;

typedef union _TBounds {
 struct {
  s32 x0;
  s32 y0;
  s32 x1;
  s32 y1;
 };
 struct {
  TPoint p0;
  TPoint p1;
 };
} TBounds;

static inline bool boundsTest(const TBounds* pBounds, s32 x, s32 y)
{
 return x >= pBounds->x0 && y >= pBounds->y0 &&
  x <= pBounds->x1 && y <= pBounds->y1;
}




# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/EmuSystem.h" 1
# 24 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/EmuSystem.h"
bool systemInit();
bool systemSelectRom(char* szName);







void systemPanic_d(const char* szFile, u32 line, const char* szMessage, ...);
u32 systemGetMs();
void systemWaitKey(const char* szText);





void* systemAlloc(u32 size);
void* systemRealloc(void* p, u32 size);
void systemFree(void* p);

void* systemSlot2Alloc(u32 size);
void systemSlot2Reset();
u32 systemGetSlot2Free();
void systemSlot2Unlock();
void systemSlot2Lock();
bool systemIsSlot2Active();

void* systemRamAlloc(u32 size);
u32 systemGetRamFree();
void systemRamReset();

s32 systemOpen(const char* szFileName, bool write);
void systemRead(s32 file, void* pDst, u32 size);
void systemReadOffset(s32 file, void* pDst, u32 offset, u32 size);
void systemWrite(s32 file, const void* pSrc, u32 size);
void systemClose(s32 file);
void systemSeek(s32 file, s32 offset, bool relative);
u32 systemFileSize(s32 file);
# 78 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/EmuSystem.h"
extern volatile u32 g_currentFps;
extern volatile u32 g_frames;
# 41 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/Default.h" 2
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h" 1
# 123 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoSystemCommon.h" 1
# 124 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h" 2




# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h" 1



# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h" 1
# 18 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h"
extern int CycloneVer;

struct Cyclone
{
  unsigned int d[8];
  unsigned int a[8];
  unsigned int pc;
  unsigned char srh;
  unsigned char unused;
  unsigned char flags;
  unsigned char irq;
  unsigned int osp;
  unsigned int xc;
  unsigned int prev_pc;
  unsigned int reserved;
  int state_flags;
  int cycles;
  int membase;
  unsigned int (*checkpc)(unsigned int pc);
  unsigned int (*read8 )(unsigned int a);
  unsigned int (*read16 )(unsigned int a);
  unsigned int (*read32 )(unsigned int a);
  void (*write8 )(unsigned int a,unsigned char d);
  void (*write16)(unsigned int a,unsigned short d);
  void (*write32)(unsigned int a,unsigned int d);
  unsigned int (*fetch8 )(unsigned int a);
  unsigned int (*fetch16)(unsigned int a);
  unsigned int (*fetch32)(unsigned int a);
  int (*IrqCallback)(int int_level);
  void (*ResetCallback)(void);
  int (*UnrecognizedCallback)(void);
  unsigned int internal[6];
};


void CycloneInit(void);


void CycloneRun(struct Cyclone *pcy);


void CycloneSetSr(struct Cyclone *pcy, unsigned int sr);
unsigned int CycloneGetSr(const struct Cyclone *pcy);



int CycloneFlushIrq(struct Cyclone *pcy);




void CyclonePack(const struct Cyclone *pcy, void *save_buffer);
void CycloneUnpack(struct Cyclone *pcy, const void *save_buffer);


void CycloneSetRealTAS(int use_real);
# 5 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h" 2

typedef struct Cyclone TCycloneContext;

typedef u8 (*TRead8Func)(u32 a);
typedef u16 (*TRead16Func)(u32 a);
typedef u32 (*TRead32Func)(u32 a);

typedef void (*TWrite8Func)(u32 a, u8 d);
typedef void (*TWrite16Func)(u32 a, u16 d);
typedef void (*TWrite32Func)(u32 a, u32 d);

typedef u32 (*TCheckPcFunc)(u32 pc);

typedef struct _TNeoMemoryTableEntry {
 TRead8Func read8;
 TRead16Func read16;
 TRead32Func read32;
 TWrite8Func write8;
 TWrite16Func write16;
 TWrite32Func write32;
 TCheckPcFunc checkPc;
 u32 pad1;
} TNeoMemoryTableEntry;

void cpuInit();
void cpuReset();
void cpuInterrupt(u32 irq);
u32 cpuExecute(s32 cycles);
void cpuDisassemble(char* szText);
void cpuDrawInfo();
u32 cpuGetPC();

void cpuNullWrite8(u32 a, u8 d);
void cpuNullWrite16(u32 a, u16 d);
void cpuNullWrite32(u32 a, u32 d);
u8 cpuUnmapped8();
u16 cpuUnmapped16();
u32 cpuUnmapped32();

u8 neoDefaultRead8(u32 a);
u32 neoDefaultRead32(u32 a);
void neoDefaultWrite32(u32 a, u32 d);
# 129 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h" 2
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoMemory.h" 1
# 22 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoMemory.h"
extern u16 g_paletteMem[8*(1<<10)];



u16 neoReadCard16(u32 a);
void neoWriteCard8(u32 a, u8 d);
void neoWriteCard16(u32 a, u16 d);

void neoWriteSram8(u32 a, u8 d);
void neoWriteSram16(u32 a, u16 d);


u8 neoReadSram8(u32 a);
u16 neoReadSram16(u32 a);
u32 neoReadSram32(u32 a);





void neoSetRomBankAddr(u32 bankAddr);
void neoWriteRomBank(u32 a, u16 d);
u8 neoReadBankedRom8(u32 a);
u16 neoReadBankedRom16(u32 a);
u32 neoReadBankedRom32(u32 a);
u32 neoBankPC(u32 a);

extern u8 neoReadRom8(u32 a);
extern u16 neoReadRom16(u32 a);
extern u32 neoReadRom32(u32 a);

extern u8 neoReadSlot2Rom8(u32 a);
extern u16 neoReadSlot2Rom16(u32 a);
extern u32 neoReadSlot2Rom32(u32 a);

extern u8 neoReadBios8(u32 a);
extern u16 neoReadBios16(u32 a);
extern u32 neoReadBios32(u32 a);


extern u8 neoReadRom18(u32 a);
extern u16 neoReadRom116(u32 a);
extern u32 neoReadRom132(u32 a);


extern u8 neoReadRom08(u32 a);
extern u16 neoReadRom016(u32 a);
extern u32 neoReadRom032(u32 a);

extern u8 neoReadRam8(u32 a);
extern u16 neoReadRam16(u32 a);
extern u32 neoReadRam32(u32 a);

extern void neoWriteRam8(u32 a, u8 d);
extern void neoWriteRam16(u32 a, u16 d);
extern void neoWriteRam32(u32 a, u32 d);

extern u32 neoRomPc(u32 pc);
extern u32 neoSlot2RomPc(u32 pc);
extern u32 neoRom0Pc(u32 pc);
extern u32 neoRom1Pc(u32 pc);
extern u32 neoRamPc(u32 pc);
extern u32 neoBiosPc(u32 pc);

u8 neoReadBankedRom8Uncached(u32 a);
u16 neoReadBankedRom16Uncached(u32 a);
u32 neoReadBankedRom32Uncached(u32 a);
u32 neoBankedPcUncached(u32 a);
# 99 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoMemory.h"
void neoMemoryLoadProgramVector();
void neoMemoryLoadBiosVector();
void neoMemoryInit();
# 130 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h" 2
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h" 1
# 23 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h"
typedef struct _TNeoADPCMStream {
 u32 offset;
 u32 end;
 s16 acc;
 s16 step;
} TNeoADPCMStream;


typedef struct _TNeoADPCMBStream {
 u32 initOffset;
 s32 freqCounter;
 s32 frequency;
} TNeoADPCMBStream;

void neoAudioStreamInit();
void neoAudioStreamReset();
void neoAudioStreamProcess();
# 131 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h" 2
# 141 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
typedef enum _TNeoRomProtection {
 NEOPROT_NONE,
 NEOPROT_PVC,
 NEOPROT_KOF2000,
 NEOPROT_MSLUG3,
 NEOPROT_GAROUO,
 NEOPROT_GAROU,
 NEOPROT_KOF99,
 NEOPROT_KOF98,
 NEOPROT_FATFURY2,
} TNeoRomProtection;

typedef enum _TNeoRomRegion {
 NEOROM_MAINPROGRAM = 0,
 NEOROM_BIOS,
 NEOROM_AUDIOPROGRAM,
 NEOROM_AUDIOBIOS,
 NEOROM_AUDODATA,
 NEOROM_SPRITEDATA,
 NEOROM_FIXEDDATA,
 NEOROM_SPRITEUSAGE,
 NEOROM_TILEUSAGE,
 NEOROM_COUNT,
} TNeoRomRegion;

typedef struct _TNeoRomEntry {
 u32 offset;
 u32 size;
} TNeoRomEntry;

typedef struct _TNeoRomHeader {
 u32 magic;
 u32 version;
 u32 protection;
 u32 sramProtection;
 u32 fixedBankType;
 u32 audio2Offset;
 u32 sectionCount;
 char name[16];
 TNeoRomEntry romEntry[NEOROM_COUNT];
 u8 data[0];
} TNeoRomHeader;

typedef enum _TNeoInterrups {
 INTR_VBLANK = 1,
 INTR_DISPLAYPOS = 2,
 INTR_COLDBOOT = 4,
} TNeoInterrups;

typedef struct _TNeoContext {
 union {
  struct {
   TCycloneContext cpu;


   void* restrict pVideoWriteTable[9];


   u32 spriteCount;
   u32 romBankCount;


   TNeoADPCMStream adpcm[7];
   TNeoADPCMBStream adpcmb;
   u32 adpcmActive;


   u8* restrict pRom0;
   u8* restrict pRom1;
   u8* restrict pBios;
   u8* restrict pRam;
   u8* restrict pSram;
   u8* restrict pCard;
   u16* restrict pVram;
   u16* restrict pSpriteRam;
   u16* restrict pPalette;

   const u8** restrict bankTable;


   u32 smaAddr0;
   u32 smaAddr1;
   u32 smaBankAddr;
   const u32* restrict smaBankoffset;
   const u32* restrict smaBankbit;
   u32 smaRand;


   u32 scanline;
   u32 frameCount;
   u16* restrict pVramBase;
   u32 vramBaseMask;

   u32 displayCounter;
   u32 autoAnimationCounter;
   u32 spriteMask;
   u32 paletteDirty[16];
   u16* pTileBuffer;


   s32 tileOffsetX;
   s32 tileOffsetY;
   s16 tileScaleX;
   s16 tileScaleY;


   u32 cpuClockDivide;
   u32 cpuClocksPerScanline;
   u32 irqPending;
   u32 watchdogCounter;
   u32 paletteBank;
   u32 fixedBank;
   u32 romBankAddress;




   u32 sramProtectCount;
   s32 sramProtection;


   u32 vramOffset;

   u32 vramMod;
   u32 displayControl;
   u32 displayControlMask;
   u32 displayCounterLoad;

   u32 ctrl1Reg;
   u32 ctrl2Reg;
   u32 ctrl3Reg;
   u32 ctrl4Reg;
   u32 coinReg;


   u8 irqVectorLatch;
   u8 screenDarkLatch;
   u8 fixedRomLatch;
   u8 sramProtectLatch;
   u8 paletteRamLatch;


   u8 active;
   u8 debug;


   u8 keyGrid[8];


   u8 frameCounter;
   u8 varEnd[0];
  };
  u32 fill[0x400 / 4];
 };

 TRead8Func cpuRead8Table[256];
 TRead16Func cpuRead16Table[256];
 TRead32Func cpuRead32Table[256];
 TWrite8Func cpuWrite8Table[256];
 TWrite16Func cpuWrite16Table[256];
 TWrite32Func cpuWrite32Table[256];
 TCheckPcFunc cpuCheckPcTable[256];
} TNeoContext;

bool neoSystemInit();
bool neoSystemOpen(const char* szFileName);
void neoSystemReset();
void neoSystemIPCSync();
void neoSystemLoadRegionEx(TNeoRomRegion region, void* pDst, u32 offset, u32 maxSize);
void neoSystemLoadRegion(TNeoRomRegion region, void* pDst, u32 maxSize);
void neoSystemReadRegion(TNeoRomRegion region, void* pDst, u32 offset, u32 size);
void neoSystemReadRegionAsync(TNeoRomRegion region, void* pDst, u32 offset, u32 size);
u32 neoSystemRegionSize(TNeoRomRegion region);
void neoSystemClose();
void neoSystemExecute();
void neoSystemLoadSprite(u8* pDst, u32 index);
void neoSystemLoadSprite2(u8* pDst, u32 index);
void neoSystemLoadTile(u8* pDst, u32 index);
void neoSystemSetEnabled(bool enable);
void* neoSystemVramHAlloc(u32 size);
void neoSystemSetClockDivide(u32 clock);

u32 neoSystemGetRomCount();
const char* neoSystemGetRomName(u32 i);

void neoSystemIrqAk(u16 data);
void neoSystemIrq(u32 irq);

register TNeoContext* g_neo asm("r7");



extern TNeoContext g_neoContext __attribute__((section(".sbss")));
extern TNeoRomHeader g_header;

static inline void neoClearContext() { g_neo = 0; }
static inline void neoResetContext() { g_neo = &g_neoContext; }
# 42 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/Default.h" 2

int neoSprintf (char *str, const char *fmt, ...);
int neoVsnprintf (char *str, size_t count, const char *fmt, va_list args);
# 2 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoVideoPalette.arm.c" 2
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoVideo.h" 1



# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoIO.h" 1



# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h" 1
# 5 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoIO.h" 2
# 38 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoIO.h"
u8 neoReadVideo8(u32 a);
u16 neoReadVideo16(u32 a);
u32 neoReadVideo32(u32 a);
# 51 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoIO.h"
u16 neoReadCtrl116(u32 a);
u16 neoReadCtrl216(u32 a);
u16 neoReadCtrl316(u32 a);
u16 neoReadCoin16(u32 a);






void neoWriteSystemLatch16(u32 a, u16 d);
void neoWrite4990a16(u32 a, u16 d);




void neoWriteVideo8(u32 a, u8 d);
void neoWriteVideo16(u32 a, u16 d);
void neoWriteVideo32(u32 a, u32 d);
# 79 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoIO.h"
void neoWriteWatchdog8(u32 a, u8 d);
void neoWriteWatchdog16(u32 a, u16 d);

void neoWriteAudioCommand8(u32 a, u8 d);
void neoWriteAudioCommand16(u32 a, u16 d);
# 92 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoIO.h"
void neoIOInit();
# 5 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoVideo.h" 2

typedef struct _TNeoVideoBounds {
 s32 minX;
 s32 minY;
 s32 maxX;
 s32 maxY;
} TNeoVideoBounds;

typedef enum _TNeoVideoSize {
 NEOVIDEO_NORMAL,
 NEOVIDEO_SCALED,
 NEOVIDEO_SIZECOUNT,
} TNeoVideoSize;

u16 neoVideoReadPal16(u32 a);
void neoVideoWritePal8(u32 a, u8 d);
void neoVideoWritePal16(u32 a, u16 d);
void neoVideoPaletteBank(u32 enable);







u16 neoVideoReadPal16(u32 a);
bool neoVideoInit();
void neoVideoDrawFrame();
void neoVideoFinishFrame();
bool neoVideoIsFramePending();
void neoVideoSetSize(TNeoVideoSize size);
TNeoVideoSize neoVideoGetSize();
# 82 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoVideo.h"
extern TNeoVideoBounds g_videoBounds __attribute__((section(".sbss")));






extern u16 g_frameCount __attribute__((section(".sbss")));
# 3 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoVideoPalette.arm.c" 2
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoMemory.h" 1
# 4 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoVideoPalette.arm.c" 2

static u16* g_nitroPalette;
static u32 g_startTransfer;
static u32 g_endTransfer;
static u32 g_loadFixed;
static u32 g_paletteBank = 0xffffffff;

void neoVideoPaletteBank(u32 enable)
{
 if(g_neo->paletteRamLatch != enable) {
  g_neo->paletteRamLatch = enable;
  if(enable) g_neo->paletteBank = 4*(1<<10);
  else g_neo->paletteBank = 0;


 }
}

void neoPaletteInit()
{
 g_nitroPalette = (u16*)neoSystemVramHAlloc(16*(1<<10));
}

void neoPaletteExit()
{

}

void neoUpdatePalette()
{
 const u16* restrict pSrc = &g_neo->pPalette[g_neo->paletteBank];
 u16* restrict pDst = &g_nitroPalette[g_neo->paletteBank];
 const u32 start = (g_neo->paletteBank == 0) ? 0 : 8;
 u32 i;
 u32 j;
 u32 p;

 g_startTransfer = 0xffffffff;
 g_endTransfer = 0;

 g_loadFixed = *((u16*)&g_neo->paletteDirty[start]);
 if(g_neo->paletteBank != g_paletteBank) {
  g_loadFixed = 1;
 }
 g_paletteBank = g_neo->paletteBank;

 for(i = start; i < start + 8; i++) {
  const u32 dirty = g_neo->paletteDirty[i];
  if(dirty == 0) {
   pSrc += 512;
   pDst += 512;
   continue;
  }
  g_neo->paletteDirty[i] = 0;
  for(j = 0; j < 32; j++) {
   const u32 index = i * 32 + j;
   if(index < g_startTransfer) g_startTransfer = index;

   g_endTransfer = index;
   if(dirty & (1 << j)) {
    for(p = 0; p < 16; p++) {
     const u32 d = (u32)*pSrc++;
     *pDst++ =
      ((d >> 7) & 0x1e) | ((d >> 14) & 0x01) |
      ((d << 2) & (0x1e << 5)) | ((d >> 8) & (0x01 << 5)) |
      ((d << 11) & (0x1e << 10)) | ((d >> 2) & (0x01 << 10));
    }
   } else {
    pSrc += 16;
    pDst += 16;
   }
  }
 }

 (*(vuint32*) 0x04000350) = g_nitroPalette[g_neo->paletteBank + 0x0fff] | (0x1f << 16);
}

void neoLoadPalette()
{
 if(g_endTransfer > g_startTransfer) {
  const u16* restrict pSrc = &g_nitroPalette[g_startTransfer * 16];
  u16* restrict pDst = ((uint16*)0x6894000) + g_startTransfer * 16;
  const u32 transferSize = (g_endTransfer - g_startTransfer + 1) * 32;
  vramSetBankG(VRAM_G_LCD);
  dmaCopyWords(3, pSrc, pDst, transferSize);
  vramSetBankG(VRAM_G_TEX_PALETTE);
 }

 if(g_loadFixed) {
  const u32* restrict pSrc = (const u32*)&g_nitroPalette[g_paletteBank];
  u32* restrict pDst0 = (u32*)(((uint16*)0x6890000));
  u32* restrict pDst1 = (u32*)((u8*)((uint16*)0x6890000) + 8*(1<<10));
  s32 i;

  vramSetBankF(VRAM_F_LCD);
  for(i = 0; i < 16; i++) {

   *pDst0++ = *pSrc++;
   *pDst0++ = *pSrc++;
   *pDst0++ = *pSrc++;
   *pDst0++ = *pSrc++;
   *pDst0++ = *pSrc++;
   *pDst0++ = *pSrc++;
   *pDst0++ = *pSrc++;
   *pDst0++ = *pSrc++;
   pSrc -= 8;
   *pDst1++ = *pSrc++;
   *pDst1++ = *pSrc++;
   *pDst1++ = *pSrc++;
   *pDst1++ = *pSrc++;
   *pDst1++ = *pSrc++;
   *pDst1++ = *pSrc++;
   *pDst1++ = *pSrc++;
   *pDst1++ = *pSrc++;

   pDst0 += 128 - 8;
   pDst1 += 128 - 8;
  }

  vramSetBankF(VRAM_F_BG_EXT_PALETTE | ((1)<<3));
  DC_InvalidateRange(&g_nitroPalette[g_paletteBank], 512);
 }
}
