# 1 "C:/Users/GRX/NeoDS-master-old/arm7/source/NeoSystem7.c"
# 1 "C:\\Users\\GRX\\NeoDS-master-old\\arm7\\build//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/GRX/NeoDS-master-old/arm7/source/NeoSystem7.c"
# 1 "C:/devkitPro/libnds/include/nds.h" 1
# 166 "C:/devkitPro/libnds/include/nds.h"
# 1 "C:/devkitPro/libnds/include/nds/libversion.h" 1
# 167 "C:/devkitPro/libnds/include/nds.h" 2
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
# 168 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/bios.h" 1
# 43 "C:/devkitPro/libnds/include/nds/bios.h"
# 1 "C:/devkitPro/libnds/include/nds/ndstypes.h" 1
# 44 "C:/devkitPro/libnds/include/nds/bios.h" 2


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
# 83 "C:/devkitPro/libnds/include/nds/bios.h"
void swiDelay(uint32 duration);
# 110 "C:/devkitPro/libnds/include/nds/bios.h"
int swiDivide(int numerator, int divisor);
int swiRemainder(int numerator, int divisor);
void swiDivMod(int numerator, int divisor, int * result, int * remainder);
# 143 "C:/devkitPro/libnds/include/nds/bios.h"
void swiCopy(const void * source, void * dest, int flags);
void swiFastCopy(const void * source, void * dest, int flags);



int swiSqrt(int value);
# 157 "C:/devkitPro/libnds/include/nds/bios.h"
uint16 swiCRC16(uint16 crc, void * data, uint32 size);






int swiIsDebugger(void);
# 182 "C:/devkitPro/libnds/include/nds/bios.h"
void swiUnpackBits(uint8 * source, uint32 * destination, PUnpackStruct params);
# 195 "C:/devkitPro/libnds/include/nds/bios.h"
void swiDecompressLZSSWram(void * source, void * destination);
int swiDecompressLZSSVram(void * source, void * destination, uint32 toGetSize, TDecompressionStream * stream);




int swiDecompressHuffman(void * source, void * destination, uint32 toGetSize, TDecompressionStream * stream);
# 235 "C:/devkitPro/libnds/include/nds/bios.h"
void swiDecompressRLEWram(void * source, void * destination);
int swiDecompressRLEVram(void * source, void * destination, uint32 toGetSize, TDecompressionStream * stream);
# 297 "C:/devkitPro/libnds/include/nds/bios.h"
void swiHalt(void);
void swiSleep(void);
void swiSwitchToGBAMode(void);
void swiSetHaltCR(uint8 data);






uint16 swiGetSineTable(int index);






uint16 swiGetPitchTable(int index);






uint8 swiGetVolumeTable(int index);
# 330 "C:/devkitPro/libnds/include/nds/bios.h"
void swiChangeSoundBias(int enabled, int delay);
# 169 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/card.h" 1
# 31 "C:/devkitPro/libnds/include/nds/card.h"
# 1 "C:/devkitPro/libnds/include/nds/ndstypes.h" 1
# 32 "C:/devkitPro/libnds/include/nds/card.h" 2
# 91 "C:/devkitPro/libnds/include/nds/card.h"
void cardWriteCommand(const uint8 *command);
void cardPolledTransfer(uint32 flags, uint32 *destination, uint32 length, const uint8 *command);
void cardStartTransfer(const uint8 *command, uint32 *destination, int channel, uint32 flags);
uint32 cardWriteAndRead(const uint8 *command, uint32 flags);
void cardParamCommand (uint8 command, uint32 parameter, uint32 flags, uint32 *destination, uint32 length);



void cardReadHeader(uint8 *header);
uint32 cardReadID(uint32 flags);


void cardReadEeprom(uint32 address, uint8 *data, uint32 length, uint32 addrtype);


void cardWriteEeprom(uint32 address, uint8 *data, uint32 length, uint32 addrtype);



uint8 cardEepromReadID(uint8 i);


uint8 cardEepromCommand(uint8 command, uint32 address);
# 122 "C:/devkitPro/libnds/include/nds/card.h"
int cardEepromGetType(void);


uint32 cardEepromGetSize();


void cardEepromChipErase(void);


void cardEepromSectorErase(uint32 address);
# 170 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/debug.h" 1
# 44 "C:/devkitPro/libnds/include/nds/debug.h"
void nocashMessage(const char *message);
# 171 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/dma.h" 1
# 114 "C:/devkitPro/libnds/include/nds/dma.h"
static inline







void dmaCopyWords(uint8 channel, const void* src, void* dest, uint32 size) {
 (*(vuint32*)(0x040000B0+(channel*12))) = (uint32)src;
 (*(vuint32*)(0x040000B4+(channel*12))) = (uint32)dest;
 (*(vuint32*)(0x040000B8+(channel*12))) = ((1 << (31)) | (1 << (26)) | 0) | (size>>2);
 while((*(vuint32*)(0x040000B8+(channel*12))) & (1 << (31)));
}

static inline







void dmaCopyHalfWords(uint8 channel, const void* src, void* dest, uint32 size) {
 (*(vuint32*)(0x040000B0+(channel*12))) = (uint32)src;
 (*(vuint32*)(0x040000B4+(channel*12))) = (uint32)dest;
 (*(vuint32*)(0x040000B8+(channel*12))) = ((1 << (31)) | 0 | 0) | (size>>1);
 while((*(vuint32*)(0x040000B8+(channel*12))) & (1 << (31)));
}

static inline






void dmaCopy(const void * source, void * dest, uint32 size) {
 (*(vuint32*)(0x040000B0+(3*12))) = (uint32)source;
 (*(vuint32*)(0x040000B4+(3*12))) = (uint32)dest;
 (*(vuint32*)(0x040000B8+(3*12))) = ((1 << (31)) | 0 | 0) | (size>>1);
 while((*(vuint32*)(0x040000B8+(3*12))) & (1 << (31)));
}

static inline
# 167 "C:/devkitPro/libnds/include/nds/dma.h"
void dmaCopyWordsAsynch(uint8 channel, const void* src, void* dest, uint32 size) {
 (*(vuint32*)(0x040000B0+(channel*12))) = (uint32)src;
 (*(vuint32*)(0x040000B4+(channel*12))) = (uint32)dest;
 (*(vuint32*)(0x040000B8+(channel*12))) = ((1 << (31)) | (1 << (26)) | 0) | (size>>2);

}

static inline
# 183 "C:/devkitPro/libnds/include/nds/dma.h"
void dmaCopyHalfWordsAsynch(uint8 channel, const void* src, void* dest, uint32 size) {
 (*(vuint32*)(0x040000B0+(channel*12))) = (uint32)src;
 (*(vuint32*)(0x040000B4+(channel*12))) = (uint32)dest;
 (*(vuint32*)(0x040000B8+(channel*12))) = ((1 << (31)) | 0 | 0) | (size>>1);
}

static inline







void dmaCopyAsynch(const void * source, void * dest, uint32 size) {
 (*(vuint32*)(0x040000B0+(3*12))) = (uint32)source;
 (*(vuint32*)(0x040000B4+(3*12))) = (uint32)dest;
 (*(vuint32*)(0x040000B8+(3*12))) = ((1 << (31)) | 0 | 0) | (size>>1);
}

static inline







void dmaFillWords( u32 value, void* dest, uint32 size) {

 (*(vu32*)0x027FFE04) = (vu32) value;
 (*(vuint32*)(0x040000B0+(3*12))) = 0x027FFE04;





    (*(vuint32*)(0x040000B4+(3*12))) = (uint32)dest;
 (*(vuint32*)(0x040000B8+(3*12))) = (1 << (24)) | ((1 << (31)) | (1 << (26)) | 0) | (size>>2);
 while((*(vuint32*)(0x040000B8+(3*12))) & (1 << (31)));
}

static inline







void dmaFillHalfWords( u16 value, void* dest, uint32 size) {

 (*(vu32*)0x027FFE04) = (vu32) value;
 (*(vuint32*)(0x040000B0+(3*12))) = 0x027FFE04;





 (*(vuint32*)(0x040000B4+(3*12))) = (uint32)dest;
 (*(vuint32*)(0x040000B8+(3*12))) = (1 << (24)) | ((1 << (31)) | 0 | 0) | (size>>1);
 while((*(vuint32*)(0x040000B8+(3*12))) & (1 << (31)));
}

static inline





int dmaBusy(uint8 channel) {
 return ((*(vuint32*)(0x040000B8+(channel*12))) & (1 << (31)))>>31;
}
# 172 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/interrupts.h" 1
# 46 "C:/devkitPro/libnds/include/nds/interrupts.h"
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





enum IRQ_MASKSAUX {
 IRQ_POWER = (1 << (6))
};





typedef enum IRQ_MASKS IRQ_MASK;
# 125 "C:/devkitPro/libnds/include/nds/interrupts.h"
enum IME_VALUE {
 IME_DISABLE = 0,
 IME_ENABLE = 1,
};







extern VoidFn __irq_vector[];
extern vuint32 __irq_flags[];
extern vuint32 __irq_flagsaux[];





struct IntTable{IntFn handler; u32 mask;};
# 154 "C:/devkitPro/libnds/include/nds/interrupts.h"
void irqInit();
# 169 "C:/devkitPro/libnds/include/nds/interrupts.h"
void irqSet(u32 irq, VoidFn handler);
void irqSetAUX(u32 irq, VoidFn handler);





void irqClear(u32 irq);
void irqClearAUX(u32 irq);
# 187 "C:/devkitPro/libnds/include/nds/interrupts.h"
void irqInitHandler(VoidFn handler);





void irqEnable(u32 irq);
void irqEnableAUX(u32 irq);





void irqDisable(u32 irq);
void irqDisableAUX(u32 irq);
# 215 "C:/devkitPro/libnds/include/nds/interrupts.h"
void swiIntrWait(u32 waitForSet, uint32 flags);
# 225 "C:/devkitPro/libnds/include/nds/interrupts.h"
void swiWaitForVBlank(void);

static inline int enterCriticalSection() {
 int oldIME = (*(vuint32*)0x04000208);
 (*(vuint32*)0x04000208) = 0;
 return oldIME;
}

static inline void leaveCriticalSection(int oldIME) {
 (*(vuint32*)0x04000208) = oldIME;
}
# 173 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/ipc.h" 1
# 39 "C:/devkitPro/libnds/include/nds/ipc.h"
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
# 63 "C:/devkitPro/libnds/include/nds/ipc.h"
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
# 174 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/memory.h" 1
# 84 "C:/devkitPro/libnds/include/nds/memory.h"
typedef struct sGBAHeader {
 u32 entryPoint;
 u8 logo[156];
 char title[0xC];
 char gamecode[0x4];
 u16 makercode;
 u8 is96h;
 u8 unitcode;
 u8 devicecode;
 u8 unused[7];
 u8 version;
 u8 complement;
 u16 checksum;
} __attribute__ ((__packed__)) tGBAHeader;






typedef struct sNDSHeader {
  char gameTitle[12];
  char gameCode[4];
  char makercode[2];
  u8 unitCode;
  u8 deviceType;
  u8 deviceSize;
  u8 reserved1[9];
  u8 romversion;
  u8 flags;

  u32 arm9romOffset;
  u32 arm9executeAddress;
  u32 arm9destination;
  u32 arm9binarySize;

  u32 arm7romOffset;
  u32 arm7executeAddress;
  u32 arm7destination;
  u32 arm7binarySize;

  u32 filenameOffset;
  u32 filenameSize;
  u32 fatOffset;
  u32 fatSize;

  u32 arm9overlaySource;
  u32 arm9overlaySize;
  u32 arm7overlaySource;
  u32 arm7overlaySize;

  u32 cardControl13;
  u32 cardControlBF;
  u32 bannerOffset;

  u16 secureCRC16;

  u16 readTimeout;

  u32 unknownRAM1;
  u32 unknownRAM2;

  u32 bfPrime1;
  u32 bfPrime2;
  u32 romSize;

  u32 headerSize;
  u32 zeros88[14];
  u8 gbaLogo[156];
  u16 logoCRC16;
  u16 headerCRC16;

  u32 debugRomSource;
  u32 debugRomSize;
  u32 debugRomDestination;
  u32 offset_0x16C;

  u8 zero[0x90];
} __attribute__ ((__packed__)) tNDSHeader;






typedef struct sNDSBanner {
  u16 version;
  u16 crc;
  u8 reserved[28];
  u8 icon[512];
  u16 palette[16];
  u16 titles[6][128];
} __attribute__ ((__packed__)) tNDSBanner;
# 175 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/system.h" 1
# 44 "C:/devkitPro/libnds/include/nds/system.h"
typedef enum
{
 DISP_IN_VBLANK = (1 << (0)),
 DISP_IN_HBLANK = (1 << (1)),
 DISP_YTRIGGERED = (1 << (2)),
 DISP_VBLANK_IRQ = (1 << (3)),
 DISP_HBLANK_IRQ = (1 << (4)),
 DISP_YTRIGGER_IRQ = (1 << (5))
}DISP_BITS;
# 71 "C:/devkitPro/libnds/include/nds/system.h"
static inline

void SetYtrigger(int Yvalue) {
 (*(vu16*)0x04000004) = ((*(vu16*)0x04000004) & 0x007F ) | (Yvalue << 8) | (( Yvalue & 0x100 ) >> 1) ;
}





typedef enum
{
 PM_SOUND_AMP = (1 << (0)) ,
 PM_SOUND_MUTE = (1 << (1)),
 PM_BACKLIGHT_BOTTOM = (1 << (2)),
 PM_BACKLIGHT_TOP = (1 << (3)) ,
 PM_SYSTEM_PWR = (1 << (6)) ,

 POWER_LCD = (1 << (16)) | (1 << (0)),
 POWER_2D_A = (1 << (16)) | (1 << (1)),
 POWER_MATRIX = (1 << (16)) | (1 << (2)),
 POWER_3D_CORE = (1 << (16)) | (1 << (3)),
 POWER_2D_B = (1 << (16)) | (1 << (9)),
 POWER_SWAP_LCDS = (1 << (16)) | (1 << (15)),
 POWER_ALL_2D = (1 << (16)) | POWER_LCD | POWER_2D_A | POWER_2D_B,
 POWER_ALL = (1 << (16)) | POWER_ALL_2D | POWER_3D_CORE | POWER_MATRIX

}PM_Bits;

void systemSleep(void);
# 179 "C:/devkitPro/libnds/include/nds/system.h"
typedef enum {
 POWER_SOUND = (1 << (0)),

 PM_CONTROL_REG = 0,
 PM_BATTERY_REG = 1,
 PM_AMPLIFIER_REG = 2,
 PM_READ_REGISTER = (1<<7),
 PM_AMP_OFFSET = 2,
 PM_GAIN_OFFSET = 3,
 PM_BACKLIGHT_LEVEL = 4,
 PM_GAIN_20 = 0,
 PM_GAIN_40 = 1,
 PM_GAIN_80 = 2,
 PM_GAIN_160 = 3,
 PM_AMP_ON = 1,
 PM_AMP_OFF = 0
} ARM7_power;





void installSystemFIFO(void);


void systemSleep(void);

int sleepEnabled(void);






int writePowerManagement(int reg, int command);

static inline
int readPowerManagement(int reg) {
 return writePowerManagement((reg)|PM_READ_REGISTER, 0);
}

static inline
void powerOn(int bits) {
 *(vu16*)0x4000304 |= bits;
}

static inline
void powerOff(PM_Bits bits) {
 *(vu16*)0x4000304 &= ~bits;
}

void readUserSettings();
void systemShutDown();






typedef enum {
 BACKLIGHT_LOW,
 BACKLIGHT_MED,
 BACKLIGHT_HIGH,
 BACKLIGHT_MAX
} BACKLIGHT_LEVELS;
# 254 "C:/devkitPro/libnds/include/nds/system.h"
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
# 313 "C:/devkitPro/libnds/include/nds/system.h"
struct __argv {
 int argvMagic;
 char *commandLine;
 int length;
 int argc;
 char **argv;
};






struct __bootstub {
 u64 bootsig;
 VoidFn arm9reboot;
 VoidFn arm7reboot;
 u32 bootsize;
};

typedef struct {
 u8 year;
 u8 month;
 u8 day;

 u8 weekday;
 u8 hours;
 u8 minutes;
 u8 seconds;
} RTCtime;
# 351 "C:/devkitPro/libnds/include/nds/system.h"
void resetARM9(u32 address);
# 176 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/timers.h" 1
# 54 "C:/devkitPro/libnds/include/nds/timers.h"
# 1 "C:/devkitPro/libnds/include/nds/linkedlist.h" 1
# 31 "C:/devkitPro/libnds/include/nds/linkedlist.h"
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/malloc.h" 1 3





# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/_ansi.h" 1 3
# 15 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/_ansi.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/newlib.h" 1 3
# 16 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/_ansi.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/config.h" 1 3



# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/ieeefp.h" 1 3
# 5 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/config.h" 2 3
# 17 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/_ansi.h" 2 3
# 7 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/malloc.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 1 3
# 14 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/_types.h" 1 3
# 12 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/_types.h" 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/_types.h" 1 3






# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/_default_types.h" 1 3
# 26 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;
# 36 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 8 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/_types.h" 2 3
# 13 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/_types.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 14 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/_types.h" 2 3


typedef long _off_t;







typedef int __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 56 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/_types.h" 3
typedef int _ssize_t;






# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 1 3 4
# 352 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 64 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/_types.h" 2 3



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
# 15 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 37 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
struct _reent;






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
# 89 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 105 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 169 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int);

  int (* _write) (struct _reent *, void *, const char *, int);

  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


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

  _mbstate_t _mbstate;
  int _flags2;
};
# 273 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 305 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 579 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


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
   int _h_errno;
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
# 817 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 8 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/malloc.h" 2 3


# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 1 3 4
# 211 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h" 3 4
typedef unsigned int size_t;
# 11 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/malloc.h" 2 3


# 1 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/machine/malloc.h" 1 3
# 14 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/malloc.h" 2 3
# 22 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/malloc.h" 3
struct mallinfo {
  int arena;
  int ordblks;
  int smblks;
  int hblks;
  int hblkhd;
  int usmblks;
  int fsmblks;
  int uordblks;
  int fordblks;
  int keepcost;
};



extern void * malloc (size_t);




extern void * _malloc_r (struct _reent *, size_t);


extern void free (void *);




extern void _free_r (struct _reent *, void *);


extern void * realloc (void *, size_t);




extern void * _realloc_r (struct _reent *, void *, size_t);


extern void * calloc (size_t, size_t);




extern void * _calloc_r (struct _reent *, size_t, size_t);


extern void * memalign (size_t, size_t);




extern void * _memalign_r (struct _reent *, size_t, size_t);


extern struct mallinfo mallinfo (void);




extern struct mallinfo _mallinfo_r (struct _reent *);


extern void malloc_stats (void);




extern void _malloc_stats_r (struct _reent *);


extern int mallopt (int, int);




extern int _mallopt_r (struct _reent *, int, int);


extern size_t malloc_usable_size (void *);




extern size_t _malloc_usable_size_r (struct _reent *, void *);





extern void * valloc (size_t);




extern void * _valloc_r (struct _reent *, size_t);


extern void * pvalloc (size_t);




extern void * _pvalloc_r (struct _reent *, size_t);


extern int malloc_trim (size_t);




extern int _malloc_trim_r (struct _reent *, size_t);




extern void mstats (char *);




extern void _mstats_r (struct _reent *, char *);
# 162 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/malloc.h" 3
extern void cfree (void *);
# 32 "C:/devkitPro/libnds/include/nds/linkedlist.h" 2




typedef struct LinkedList{
 struct LinkedList *next;
 struct LinkedList *prev;
 void *data;
}LinkedList;

static inline

LinkedList* linkedlistAdd(LinkedList **front, void* data)
{
 LinkedList *node = (LinkedList*)malloc(sizeof(LinkedList));

 node->prev = 0;

 if(*front == 0)
 {
  node->next = 0;

  node->data = data;

  *front = node;

  return node;
 }

 node->next = *front;

 (*front)->prev = node;

 return node;
}


static inline

void linkedlistRemove(LinkedList *node)
{
 if(node == 0) return;

 if(node->prev)
 {
  node->prev->next = node->next;
 }

 if(node->next)
 {
  node->next->prev = node->prev;
 }

 free(node);
}
# 55 "C:/devkitPro/libnds/include/nds/timers.h" 2
# 65 "C:/devkitPro/libnds/include/nds/timers.h"
typedef enum {
ClockDivider_1 = 0,
ClockDivider_64 = 1,
ClockDivider_256 = 2,
ClockDivider_1024 = 3
}ClockDivider;
# 83 "C:/devkitPro/libnds/include/nds/timers.h"
void timerStart(int channel, ClockDivider divider, u16 ticks, fp callback);







u16 timerElapsed(int channel);


static inline u16 timerFreqToTicks_1(int freq) {return -0x2000000 / freq;}
static inline u16 timerFreqToTicks_64(int freq) {return (-0x2000000 >> 6) / freq;}
static inline u16 timerFreqToTicks_256(int freq) {return (-0x2000000 >> 8) / freq;}
static inline u16 timerFreqToTicks_1024(int freq) {return (-0x2000000 >> 10) / freq;}
# 255 "C:/devkitPro/libnds/include/nds/timers.h"
static inline void timerStop(int channel){(*(vuint16*)(0x04000102+((channel)<<2))) &= ~(1<<7);}







void cpuStartTiming(u32 timer);





u32 cpuEndTiming();
# 177 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/fifocommon.h" 1
# 10 "C:/devkitPro/libnds/include/nds/fifocommon.h"
typedef enum {
   FIFO_PM = 0,
   FIFO_SOUND = 1,
   FIFO_SYSTEM = 2,
   FIFO_MAXMOD = 3,
   FIFO_DSWIFI = 4,
   FIFO_RSDV_01 = 5,
   FIFO_RSVD_02 = 6,
   FIFO_RSVD_03 = 7,
   FIFO_USER_01 = 8,
   FIFO_USER_02 = 9,
   FIFO_USER_03 = 10,
   FIFO_USER_04 = 11,
   FIFO_USER_05 = 12,
   FIFO_USER_06 = 13,
   FIFO_USER_07 = 14,
   FIFO_USER_08 = 15,
} FifoChannels;


typedef enum {
    SOUND_SET_PAN = 0 << 20,
 SOUND_SET_VOLUME = 1 << 20,
 SOUND_SET_FREQ = 2 << 20,
 SOUND_SET_WAVEDUTY = 3 << 20,
 SOUND_MASTER_ENABLE = 4 << 20,
 SOUND_MASTER_DISABLE = 5 << 20,
 SOUND_PAUSE = 6 << 20,
 SOUND_RESUME = 7 << 20,
 SOUND_KILL = 8 << 20,
 SOUND_SET_MASTER_VOL = 9 << 20,
 MIC_STOP = 10 << 20

} FifoSoundCommand;

typedef enum {
 SYS_REQ_TOUCH,
 SYS_REQ_KEYS,
 SYS_REQ_TIME,

} FifoSystemCommands;

typedef enum {
 PM_REQ_ON = (1<<16),
 PM_REQ_OFF = (2<<16),
 PM_REQ_LED = (3<<16),
 PM_REQ_SLEEP = (4<<16),
 PM_REQ_SLEEP_DISABLE = (5<<16),
 PM_REQ_SLEEP_ENABLE = (6<<16)
}FifoPMCommands;

typedef enum {
 WIFI_ENABLE,
 WIFI_DISABLE,
 WIFI_SYNC,
 WIFI_STARTUP
} FifoWifiCommands;






typedef enum {
 PM_LED_ON =(0<<4),
 PM_LED_SLEEP =(1<<4),
 PM_LED_BLINK =(3<<4),
}PM_LedBlinkMode;
# 92 "C:/devkitPro/libnds/include/nds/fifocommon.h"
typedef void (*FifoAddressHandlerFunc)(void * address, void * userdata);


typedef void (*FifoValue32HandlerFunc)(u32 value32, void * userdata);


typedef void (*FifoDatamsgHandlerFunc)(int num_bytes, void * userdata);
# 107 "C:/devkitPro/libnds/include/nds/fifocommon.h"
bool fifoInit();
# 116 "C:/devkitPro/libnds/include/nds/fifocommon.h"
bool fifoSendAddress(int channel, void *address);
# 128 "C:/devkitPro/libnds/include/nds/fifocommon.h"
bool fifoSendValue32(int channel, u32 value32);
# 140 "C:/devkitPro/libnds/include/nds/fifocommon.h"
bool fifoSendDatamsg(int channel, int num_bytes, u8 * data_array);
# 156 "C:/devkitPro/libnds/include/nds/fifocommon.h"
bool fifoSetAddressHandler(int channel, FifoAddressHandlerFunc newhandler, void * userdata);
# 167 "C:/devkitPro/libnds/include/nds/fifocommon.h"
bool fifoSetValue32Handler(int channel, FifoValue32HandlerFunc newhandler, void * userdata);
# 179 "C:/devkitPro/libnds/include/nds/fifocommon.h"
bool fifoSetDatamsgHandler(int channel, FifoDatamsgHandlerFunc newhandler, void * userdata);




bool fifoCheckAddress(int channel);
bool fifoCheckValue32(int channel);
bool fifoCheckDatamsg(int channel);

int fifoCheckDatamsgLength(int channel);


void * fifoGetAddress(int channel);

u32 fifoGetValue32(int channel);


int fifoGetDatamsg(int channel, int buffersize, u8 * destbuffer);
# 178 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/touch.h" 1





typedef struct touchPosition {
 u16 rawx;
 u16 rawy;
 u16 px;
 u16 py;
 u16 z1;
 u16 z2;
} touchPosition;
# 179 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/input.h" 1
# 31 "C:/devkitPro/libnds/include/nds/input.h"
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
# 180 "C:/devkitPro/libnds/include/nds.h" 2
# 211 "C:/devkitPro/libnds/include/nds.h"
# 1 "C:/devkitPro/libnds/include/nds/arm7/audio.h" 1
# 43 "C:/devkitPro/libnds/include/nds/arm7/audio.h"
# 1 "C:/devkitPro/libnds/include/nds/arm7/serial.h" 1
# 38 "C:/devkitPro/libnds/include/nds/arm7/serial.h"
# 1 "C:/devkitPro/libnds/include/nds/bios.h" 1
# 39 "C:/devkitPro/libnds/include/nds/arm7/serial.h" 2
# 111 "C:/devkitPro/libnds/include/nds/arm7/serial.h"
static inline
void SerialWaitBusy() {
 while ((*(vu16*)0x040001C0) & (1 << (7)))
  swiDelay(1);
}





void readFirmware(u32 address, void * destination, u32 size);
# 44 "C:/devkitPro/libnds/include/nds/arm7/audio.h" 2
# 1 "C:/devkitPro/libnds/include/nds/system.h" 1
# 45 "C:/devkitPro/libnds/include/nds/arm7/audio.h" 2
# 91 "C:/devkitPro/libnds/include/nds/arm7/audio.h"
typedef void (*MIC_BUF_SWAP_CB)(u8* completedBuffer, int length);
# 107 "C:/devkitPro/libnds/include/nds/arm7/audio.h"
u8 micReadData8();
u16 micReadData12();






void micStartRecording(u8* buffer, int length, int freq, int timer, bool eightBitSample, MIC_BUF_SWAP_CB bufferSwapCallback);




int micStopRecording(void);


void micTimerHandler(void);

void micSetAmp(u8 control, u8 gain);




static inline void micOn(void) {

  micSetAmp(PM_AMP_ON, PM_GAIN_160);
}





static inline void micOff(void) {

  micSetAmp(PM_AMP_OFF, 0);
}

void installSoundFIFO(void);
# 212 "C:/devkitPro/libnds/include/nds.h" 2
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
void resyncClock();
# 213 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/arm7/serial.h" 1
# 214 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/arm7/touch.h" 1
# 42 "C:/devkitPro/libnds/include/nds/arm7/touch.h"
# 1 "C:/devkitPro/libnds/include/nds/touch.h" 1
# 43 "C:/devkitPro/libnds/include/nds/arm7/touch.h" 2
# 61 "C:/devkitPro/libnds/include/nds/arm7/touch.h"
void touchReadXY(touchPosition *touchPos);
uint16 touchRead(uint32 command);
uint32 touchReadTemperature(int * t1, int * t2);
# 215 "C:/devkitPro/libnds/include/nds.h" 2
# 1 "C:/devkitPro/libnds/include/nds/arm7/input.h" 1
# 10 "C:/devkitPro/libnds/include/nds/arm7/input.h"
 void inputGetAndSend(void);
# 216 "C:/devkitPro/libnds/include/nds.h" 2
# 2 "C:/Users/GRX/NeoDS-master-old/arm7/source/NeoSystem7.c" 2
# 1 "C:/Users/GRX/NeoDS-master-old/arm7/source/NeoCpuZ80.h" 1
# 10 "C:/Users/GRX/NeoDS-master-old/arm7/source/NeoCpuZ80.h"
# 1 "C:/Users/GRX/NeoDS-master-old/arm7/source/DrZ80.h" 1
# 16 "C:/Users/GRX/NeoDS-master-old/arm7/source/DrZ80.h"
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
# 11 "C:/Users/GRX/NeoDS-master-old/arm7/source/NeoCpuZ80.h" 2

typedef struct DrZ80 TDrZ80Context;

void neoZ80Init();
void neoZ80Nmi();
void neoZ80ClearNmi();
void neoZ80Irq();
void neoZ80ClearIrq();
s32 neoZ80Execute(s32 cycles);
void neoZ80Reset();
# 3 "C:/Users/GRX/NeoDS-master-old/arm7/source/NeoSystem7.c" 2
# 1 "C:/Users/GRX/NeoDS-master-old/arm7/../common/source/NeoIPC.h" 1
# 61 "C:/Users/GRX/NeoDS-master-old/arm7/../common/source/NeoIPC.h"
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
# 139 "C:/Users/GRX/NeoDS-master-old/arm7/../common/source/NeoIPC.h"
void neoIPCInit();
u32 neoIPCSendCommandAsync(TNeoIPCCommand command);
void neoIPCSendCommand(TNeoIPCCommand command);
bool neoIPCCheckCommandDone(u32 message);
void neoIPCWaitCommandDone(u32 message);
u32 neoIPCRecvCommand();
u32 neoIPCWaitCommand(TNeoIPCCommand command);
void neoIPCAckCommand();
# 4 "C:/Users/GRX/NeoDS-master-old/arm7/source/NeoSystem7.c" 2
# 1 "C:/Users/GRX/NeoDS-master-old/arm7/source/NeoYM2610.h" 1



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
# 5 "C:/Users/GRX/NeoDS-master-old/arm7/source/NeoSystem7.c" 2
# 1 "C:/Users/GRX/NeoDS-master-old/arm7/source/NeoAudio.h" 1
# 12 "C:/Users/GRX/NeoDS-master-old/arm7/source/NeoAudio.h"
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
# 6 "C:/Users/GRX/NeoDS-master-old/arm7/source/NeoSystem7.c" 2
# 1 "C:/Users/GRX/NeoDS-master-old/arm7/source/NeoSystem7.h" 1



# 1 "C:/Users/GRX/NeoDS-master-old/arm7/../common/source/NeoSystemCommon.h" 1
# 5 "C:/Users/GRX/NeoDS-master-old/arm7/source/NeoSystem7.h" 2
# 31 "C:/Users/GRX/NeoDS-master-old/arm7/source/NeoSystem7.h"
typedef struct _TNeoContext7 {
 TDrZ80Context z80;





 u8* z80MemTable[32];
 u8 z80Ram[2048];
} TNeoContext7;

void neoSystem7Init();
void neoSystem7Reset();
void neoSystem7Execute();

void systemPanic();
# 57 "C:/Users/GRX/NeoDS-master-old/arm7/source/NeoSystem7.h"
register TNeoContext7* g_neo7 asm("r5");
# 7 "C:/Users/GRX/NeoDS-master-old/arm7/source/NeoSystem7.c" 2

struct __STATICASSERTSTRUCT8__ { u8 staticAssert[(sizeof(TNeoContext7) == (((0 + 112) + 32 * 4) + 2048)) - 1]; };

static TNeoContext7 g_neoContext7;

static void neoBacklightOff()
{
 u32 enabled = (*(vuint32*)0x04000208);
 (*(vuint32*)0x04000208) = 0;
 u32 value = readPowerManagement(PM_CONTROL_REG);
 writePowerManagement(PM_CONTROL_REG, value & ~PM_BACKLIGHT_TOP);
 (*(vuint32*)0x04000208) = enabled;
}

static void neoBacklightOn()
{
 u32 enabled = (*(vuint32*)0x04000208);
 (*(vuint32*)0x04000208) = 0;
 u32 value = readPowerManagement(PM_CONTROL_REG);
 writePowerManagement(PM_CONTROL_REG, value | PM_BACKLIGHT_BOTTOM);
 (*(vuint32*)0x04000208) = enabled;
}

static void neoLidClose()
{
 u32 enabled = (*(vuint32*)0x04000208);
 (*(vuint32*)0x04000208) = 0;
 const u32 powerValue = readPowerManagement(PM_CONTROL_REG);
 u32 value = powerValue;
 value &= ~(PM_BACKLIGHT_BOTTOM | PM_BACKLIGHT_TOP);
 value |= PM_LED_SLEEP;
 writePowerManagement(PM_CONTROL_REG, value);
 (*(vuint32*)0x04000208) = enabled;
 swiChangeSoundBias(0, 0x400);
 neoAudioShutdown();


 neoIPCAckCommand();


 while(1) {
  swiWaitForVBlank();
  u32 command = neoIPCRecvCommand();
  if(command) {
   if(((command & 0xff000000) >> 24) == NEOARM7_LIDOPEN) {
    break;
   } else {

    neoIPCAckCommand();
   }
  }
 }

 enabled = (*(vuint32*)0x04000208);
 (*(vuint32*)0x04000208) = 0;
 writePowerManagement(PM_CONTROL_REG, powerValue);
 (*(vuint32*)0x04000208) = enabled;
 swiChangeSoundBias(1, 0x400);
 neoAudioReset();


 neoIPCAckCommand();
}

static void neoSystem7Pause()
{
 bool paused = true;

 neoAudioPause();


 neoIPCAckCommand();

 while(paused) {
  u32 command = neoIPCRecvCommand();
  if(command != 0) {
   switch(((command & 0xff000000) >> 24)) {
   case NEOARM7_RESET:
    neoSystem7Reset();
    paused = false;
    neoIPCAckCommand();
    break;

   case NEOARM7_RESUME:
    paused = false;
    neoIPCAckCommand();
    break;
   case NEOARM7_BACKLIGHTOFF:
    neoBacklightOff();
    neoIPCAckCommand();
    break;
   case NEOARM7_BACKLIGHTON:
    neoBacklightOn();
    neoIPCAckCommand();
    break;

   case NEOARM7_LIDCLOSE:
    neoLidClose();
    break;
   default:

    neoIPCAckCommand();
    break;
   }
  }
  if(((volatile TNeoIPC*)0x027FF400)->globalAudioEnabled) {
   neoAudioUpdate();
  }
  swiWaitForVBlank();
 }

 neoAudioResume();
}

static void neoSystem7ProcessCommands()
{
 u32 command = neoIPCRecvCommand();
 while(command != 0) {
  switch(((command & 0xff000000) >> 24)) {
  case NEOARM7_NMI:
   neoZ80Nmi();
   neoIPCAckCommand();
   break;
  case NEOARM7_RESET:
   neoSystem7Reset();
   neoIPCAckCommand();
   break;
  case NEOARM7_PAUSE:
   neoSystem7Pause();
   break;
  case NEOARM7_BACKLIGHTOFF:
   neoBacklightOff();
   neoIPCAckCommand();
   break;
  case NEOARM7_BACKLIGHTON:
   neoBacklightOn();
   neoIPCAckCommand();
   break;
  case NEOARM7_RESUME:
  default:

   neoIPCAckCommand();
   break;
  }
  command = neoIPCRecvCommand();
 }
}

void neoSystem7Init()
{
 g_neo7 = &g_neoContext7;

 neoAudioInit();
 neoYM2610Init();
 neoZ80Init();
}

void neoSystem7Reset()
{
 neoAudioReset();
 neoYM2610Init();
 neoZ80Reset();
}

void neoSystem7Execute()
{
 s32 cycles = 0;
 u32 i;
 neoBacklightOff();

 while(1) {
  for(i = 0; i < 200; i++) {
   cycles += (((384 * 4 / 6) * 264) / 200);
   cycles -= neoZ80Execute(cycles);
   neoSystem7ProcessCommands();
   neoYM2610Process();
  }
  swiIntrWait(1, IRQ_VCOUNT);
  neoAudioUpdate();

  ((volatile TNeoIPC*)0x027FF400)->arm7Alive++;
 }
}

void systemPanic()
{
 (*(vuint32*)0x04000208) = 0;
 neoAudioPause();
 while(1) continue;
}
