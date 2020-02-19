# 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/../common/source/NeoIPC.c"
# 1 "C:\\Users\\GRX\\NeoDS-GBMacro\\arm7\\build//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/../common/source/NeoIPC.c"
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
# 2 "C:/Users/GRX/NeoDS-GBMacro/arm7/../common/source/NeoIPC.c" 2
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
# 3 "C:/Users/GRX/NeoDS-GBMacro/arm7/../common/source/NeoIPC.c" 2
# 13 "C:/Users/GRX/NeoDS-GBMacro/arm7/../common/source/NeoIPC.c"
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
# 14 "C:/Users/GRX/NeoDS-GBMacro/arm7/../common/source/NeoIPC.c" 2







enum {
 IPCSTATE_IDLE,
 IPCSTATE_RECVD,
};

static u32 g_ipcState = IPCSTATE_IDLE;

static void neoIPCDelay()
{
 swiIntrWait(0, IRQ_IPC_SYNC);
}

void neoIPCInit()
{
 (*(vu16*)0x4000184) = IPC_FIFO_SEND_CLEAR | IPC_FIFO_ERROR | IPC_FIFO_ENABLE;
 (*(vuint16*)0x04000180) |= IPC_SYNC_IRQ_ENABLE;
}

u32 neoIPCSendCommandAsync(TNeoIPCCommand command)
{

 while((*(vu16*)0x4000184) & IPC_FIFO_SEND_FULL) continue;

 (*(vu32*)0x4000188) = ((command << 24) & 0xff000000) | ((0 << 0) & 0x00ffffff);
 IPC_SendSync(command);






 ((volatile TNeoIPC*)0x027FF400)->arm7FifoSent++;
 return ((volatile TNeoIPC*)0x027FF400)->arm7FifoSent;

}

void neoIPCSendCommand(TNeoIPCCommand command)
{
 const u32 message = neoIPCSendCommandAsync(command);
 neoIPCWaitCommandDone(message);
}


bool neoIPCCheckCommandDone(u32 message)
{



 const u32 processed = ((volatile TNeoIPC*)0x027FF400)->arm9FifoProcessed;

 if(processed >= message) {
  return true;
 } else if(message - processed > 0x80000000) {

  return true;
 } else {
  return false;
 }
}

void neoIPCWaitCommandDone(u32 message)
{




 while(!neoIPCCheckCommandDone(message)) {
  neoIPCDelay();



 }



}

u32 neoIPCRecvCommand()
{
 ((void)0);

 u32 command = 0;
 if(!((*(vu16*)0x4000184) & IPC_FIFO_RECV_EMPTY)) {

  command = (*(vu32*)0x4100000);
  g_ipcState = IPCSTATE_RECVD;
 }

 return command;
}

u32 neoIPCWaitCommand(TNeoIPCCommand command)
{
 u32 data = 0;





 while(1) {
  u32 data = neoIPCRecvCommand();
  if(((data & 0xff000000) >> 24) == command) {
   break;
  } else if(data != 0) {





   neoIPCAckCommand();
  }
  neoIPCDelay();
 }





 return data;
}

void neoIPCAckCommand()
{
 ((void)0);



 ((volatile TNeoIPC*)0x027FF400)->arm7FifoProcessed++;

 IPC_SendSync(0);
 g_ipcState = IPCSTATE_IDLE;
}
