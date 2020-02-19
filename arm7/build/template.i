# 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/template.c"
# 1 "C:\\Users\\GRX\\NeoDS-GBMacro\\arm7\\build//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/template.c"
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
# 2 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/template.c" 2
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdlib.h" 1 3
# 10 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdlib.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/_ansi.h" 1 3
# 15 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/_ansi.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/newlib.h" 1 3
# 16 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/_ansi.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/config.h" 1 3



# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/machine/ieeefp.h" 1 3
# 5 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/config.h" 2 3
# 17 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/_ansi.h" 2 3
# 11 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdlib.h" 2 3



# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stddef.h" 1 3 4
# 214 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stddef.h" 3 4
typedef unsigned int size_t;
# 326 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 15 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdlib.h" 2 3

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
# 17 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdlib.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/machine/stdlib.h" 1 3
# 18 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdlib.h" 2 3

# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/alloca.h" 1 3
# 20 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdlib.h" 2 3








typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;
# 57 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdlib.h" 3
extern int __mb_cur_max;



void abort (void) __attribute__ ((noreturn));
int abs (int);
int atexit (void (*__func)(void));
double atof (const char *__nptr);

float atoff (const char *__nptr);

int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, int (* _compar) (const void *, const void *));




void * calloc (size_t __nmemb, size_t __size);
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((noreturn));
void free (void *);
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);
long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size);
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *, const char *, size_t);
int _mbtowc_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *, const char *, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
size_t wcstombs (char *, const wchar_t *, size_t);
size_t _wcstombs_r (struct _reent *, char *, const wchar_t *, size_t, _mbstate_t *);


int mkstemp (char *);
char * mktemp (char *);


void qsort (void * __base, size_t __nmemb, size_t __size, int(*_compar)(const void *, const void *));
int rand (void);
void * realloc (void * __r, size_t __size);
void srand (unsigned __seed);
double strtod (const char *__n, char **__end_PTR);
double _strtod_r (struct _reent *,const char *__n, char **__end_PTR);
float strtof (const char *__n, char **__end_PTR);






long strtol (const char *__n, char **__end_PTR, int __base);
long _strtol_r (struct _reent *,const char *__n, char **__end_PTR, int __base);
unsigned long strtoul (const char *__n, char **__end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *__n, char **__end_PTR, int __base);

int system (const char *__string);


long a64l (const char *__input);
char * l64a (long __input);
char * _l64a_r (struct _reent *,long __input);
int on_exit (void (*__func)(int, void *),void * __arg);
void _Exit (int __status) __attribute__ ((noreturn));
int putenv (char *__string);
int _putenv_r (struct _reent *, char *__string);
int setenv (const char *__string, const char *__value, int __overwrite);
int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);

char * gcvt (double,int,char *);
char * gcvtf (float,int,char *);
char * fcvt (double,int,int *,int *);
char * fcvtf (float,int,int *,int *);
char * ecvt (double,int,int *,int *);
char * ecvtbuf (double, int, int*, int*, char *);
char * fcvtbuf (double, int, int*, int*, char *);
char * ecvtf (float,int,int *,int *);
char * dtoa (double, int, int, int *, int*, char**);
int rand_r (unsigned *__seed);

double drand48 (void);
double _drand48_r (struct _reent *);
double erand48 (unsigned short [3]);
double _erand48_r (struct _reent *, unsigned short [3]);
long jrand48 (unsigned short [3]);
long _jrand48_r (struct _reent *, unsigned short [3]);
void lcong48 (unsigned short [7]);
void _lcong48_r (struct _reent *, unsigned short [7]);
long lrand48 (void);
long _lrand48_r (struct _reent *);
long mrand48 (void);
long _mrand48_r (struct _reent *);
long nrand48 (unsigned short [3]);
long _nrand48_r (struct _reent *, unsigned short [3]);
unsigned short *
       seed48 (unsigned short [3]);
unsigned short *
       _seed48_r (struct _reent *, unsigned short [3]);
void srand48 (long);
void _srand48_r (struct _reent *, long);
long long atoll (const char *__nptr);
long long _atoll_r (struct _reent *, const char *__nptr);
long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *__n, char **__end_PTR, int __base);
long long _strtoll_r (struct _reent *, const char *__n, char **__end_PTR, int __base);
unsigned long long strtoull (const char *__n, char **__end_PTR, int __base);
unsigned long long _strtoull_r (struct _reent *, const char *__n, char **__end_PTR, int __base);


void cfree (void *);
void unsetenv (const char *__string);
void _unsetenv_r (struct _reent *, const char *__string);




char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t);
void * _calloc_r (struct _reent *, size_t, size_t);
void _free_r (struct _reent *, void *);
void * _realloc_r (struct _reent *, void *, size_t);
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);


# 3 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/template.c" 2
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
# 4 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/template.c" 2

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
# 6 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/template.c" 2
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
# 7 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/template.c" 2
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
# 8 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/template.c" 2

static int vcount = 80;
static touchPosition first,tempPos;

static void handleInput()
{
 static int lastbut = -1;

 uint16 but=0, x=0, y=0, xpx=0, ypx=0, z1=0, z2=0;

 but = (*(vuint16*)0x04000136);

 if (!( (but ^ lastbut) & (1<<6))) {

  tempPos = touchReadXY();

  if ( tempPos.x == 0 || tempPos.y == 0 ) {
   but |= (1 <<6);
   lastbut = but;
  } else {
   x = tempPos.x;
   y = tempPos.y;
   xpx = tempPos.px;
   ypx = tempPos.py;
   z1 = tempPos.z1;
   z2 = tempPos.z2;
  }

 } else {
  lastbut = but;
  but |= (1 <<6);
 }

 if ( vcount == 80 ) {
  first = tempPos;
 } else {
  if ( abs( xpx - first.px) > 10 || abs( ypx - first.py) > 10 ||
    (but & ( 1<<6)) ) {

   but |= (1 <<6);
   lastbut = but;

  } else {
   getIPC()->mailBusy = 1;
   getIPC()->touchX = x;
   getIPC()->touchY = y;
   getIPC()->touchXpx = xpx;
   getIPC()->touchYpx = ypx;
   getIPC()->touchZ1 = z1;
   getIPC()->touchZ2 = z2;
   getIPC()->mailBusy = 0;
  }
 }
 getIPC()->buttons = but;
 vcount ^= (80 ^ 130);
}

static void VcountHandler()
{
 handleInput();
}

static void VblankHandler()
{

}

static void IPCSyncHandler()
{

}




int main(int argc, char ** argv)
{
 neoIPCInit();

 rtcReset();

 irqInit();
 irqSet(IRQ_VBLANK, VblankHandler);
 SetYtrigger(0);
 irqSet(IRQ_VCOUNT, VcountHandler);
 irqSet(IRQ_IPC_SYNC, IPCSyncHandler);
 irqSet(IRQ_TIMER3, neoAudioEventHandler);
 irqEnable(IRQ_VBLANK | IRQ_VCOUNT | IRQ_IPC_SYNC | IRQ_TIMER3);
 (*(vuint16*)0x04000208) = 1;


 neoIPCWaitCommand(NEOARM7_RESET);





 neoSystem7Init();

 neoIPCAckCommand();

 neoSystem7Execute();

 return 0;
}
