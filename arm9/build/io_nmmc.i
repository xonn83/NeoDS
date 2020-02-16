# 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_nmmc.c"
# 1 "C:\\Users\\GRX\\NeoDS\\arm9\\build//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_nmmc.c"
# 22 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_nmmc.c"
# 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_nmmc.h" 1
# 40 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_nmmc.h"
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
# 41 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_nmmc.h" 2
# 49 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_nmmc.h"
extern const IO_INTERFACE _io_nmmc;
# 23 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_nmmc.c" 2



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
# 27 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_nmmc.c" 2

int _NMMC_spi_freq = 3;
# 46 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_nmmc.c"
static inline void _Neo_OpenSPI( u8 frequency )
{
 (*(vuint16*)0x040001A0) = 0x0000A040 | frequency;
}

static inline u8 _Neo_SPI( u8 dataByte )
{
 (*(vuint8*)0x040001A2) = dataByte;
 while ((*(vuint16*)0x040001A0) & 0x80);
 return (*(vuint8*)0x040001A2);
}

static inline void _Neo_CloseSPI ( void )
{
 (*(vuint16*)0x040001A0) = 0;
}

static inline void _Neo_MK2GameMode() {
 _Neo_OpenSPI(_NMMC_spi_freq);
 _Neo_SPI(0xF1);
 _Neo_CloseSPI();
}

static inline void _Neo_EnableEEPROM( bool enable ) {
 _Neo_OpenSPI(_NMMC_spi_freq);
 if(enable) _Neo_SPI(0x06);
 else _Neo_SPI(0x0E);
 _Neo_CloseSPI();
}

static void _Neo_WriteMK2Config(u8 config) {
 _Neo_EnableEEPROM(true);
 _Neo_OpenSPI(_NMMC_spi_freq);
 _Neo_SPI(0xFA);
 _Neo_SPI(0x01);
 _Neo_SPI(config);
 _Neo_CloseSPI();
 _Neo_EnableEEPROM(false);
}

static u8 _Neo_ReadMK2Config(void)
{
 u8 config;
 _Neo_EnableEEPROM(true);
 _Neo_OpenSPI(_NMMC_spi_freq);
 _Neo_SPI(0xf8);
 _Neo_SPI(0x01);
 config = _Neo_SPI(0x00);
 _Neo_CloseSPI();
 _Neo_EnableEEPROM(false);
 return config;
}



u8 selectMMC_command [8] = {0xFF, 0x00, 0x6A, 0xDF, 0x37, 0x59, 0x33, 0xA3};

static void _Neo_SelectMMC (u8 dataByte)
{
 selectMMC_command[1] = dataByte;
 cardWriteCommand (selectMMC_command);
 (*(vuint32*)0x040001A4) = (1<<31) | (1<<29);
 while ((*(vuint32*)0x040001A4) & (1<<31));
 return;
}

static void _Neo_EnableMMC( bool enable )
{
 if ( enable == false) {
  _Neo_CloseSPI ();
  _Neo_SelectMMC (0);
  _Neo_SelectMMC (0);
 } else {
  _Neo_SelectMMC (1);
  _Neo_SelectMMC (1);
  _Neo_OpenSPI (_NMMC_spi_freq);
 }
 return;
}

static void _Neo_SendMMCCommand( u8 command, u32 argument )
{
 _Neo_SPI (0xFF);
 _Neo_SPI (command | 0x40);
 _Neo_SPI ((argument >> 24) & 0xff);
 _Neo_SPI ((argument >> 16) & 0xff);
 _Neo_SPI ((argument >> 8) & 0xff) ;
 _Neo_SPI (argument & 0xff);
 _Neo_SPI (0x95);
 _Neo_SPI (0xFF);
 return;
}

static bool _Neo_CheckMMCResponse( u8 response, u8 mask ) {
 u32 i;
 for(i=0;i<256;i++) {
  if( ( _Neo_SPI( 0xFF ) & mask ) == response )
   return true;
 }
 return false;
}



static bool _Neo_InitMMC() {
 _Neo_MK2GameMode();
 _Neo_WriteMK2Config( (1 << 5) | ((1 << 4) | (1 << 0)));


 if (_Neo_ReadMK2Config() != ((1 << 5) | ((1 << 4) | (1 << 0)))) {
  return false;
 }

 return true;
}



bool _NMMC_isInserted(void) {
 int i;

 _Neo_EnableMMC( true );
 _Neo_SendMMCCommand(9, 0);
 if( _Neo_CheckMMCResponse( 0x00, 0xFF ) == false ) {
  _Neo_EnableMMC( false );
  return false;
 }
 if( _Neo_CheckMMCResponse( 0xFE, 0xFF ) == false ) {
  _Neo_EnableMMC( false );
  return false;
 }


 for (i = 0; i < 28; i++) {
  _Neo_SPI(0xff);
 }

 return true;
}

bool _NMMC_clearStatus (void) {
 u32 i;

 _Neo_EnableMMC( true );
 for (i = 0; i < 10; i++) {
  _Neo_SPI(0xFF);
 }
 _Neo_SendMMCCommand(0, 0);
 if( _Neo_CheckMMCResponse( 0x01, 0xFF ) == false ) {
  _Neo_EnableMMC( false );
  return false;
 }
 for(i=0;i<256;i++) {
  _Neo_SendMMCCommand(1, 0);
  if( _Neo_CheckMMCResponse( 0x00, 0x01 ) == true ) {
   _Neo_EnableMMC( false );
   return true;
  }
 }
 _Neo_EnableMMC( false );
 return false;
}

bool _NMMC_shutdown(void) {
 return _NMMC_clearStatus();
}

bool _NMMC_startUp(void) {
 int i;
 int transSpeed;
 if (_Neo_InitMMC() == false) {
  return false;
 }
 if (_NMMC_clearStatus() == false) {
  return false;
 }
 _Neo_EnableMMC( true );


 _Neo_SendMMCCommand(16, 512 );
 if( _Neo_CheckMMCResponse( 0x00, 0xFF ) == false ) {
  _Neo_EnableMMC( false );
  return false;
 }


 _Neo_SendMMCCommand(9, 0);
 if( _Neo_CheckMMCResponse( 0x00, 0xFF ) == false ) {
  _Neo_EnableMMC( false );
  return false;
 }
 if( _Neo_CheckMMCResponse( 0xFE, 0xFF ) == false ) {
  _Neo_EnableMMC( false );
  return false;
 }
 for (i = 0; i < 3; i++) {
  _Neo_SPI(0xFF);
 }
 transSpeed = _Neo_SPI (0xFF);
 for (i = 0; i < 24; i++) {
  _Neo_SPI(0xFF);
 }
 if ((transSpeed & 0xf0) >= 0x30) {
  _NMMC_spi_freq = 0;
 }

 _Neo_EnableMMC( false );

 return true;
}


bool _NMMC_writeSectors (u32 sector, u32 totalSecs, const void* buffer)
{
 u32 i;
 u8 *p=(u8*)buffer;

 sector *= 512;

 _Neo_EnableMMC( true );
 _Neo_SendMMCCommand( 25, sector );
 if( _Neo_CheckMMCResponse( 0x00, 0xFF ) == false ) {
  _Neo_EnableMMC( false );
  return false;
 }

 while (totalSecs--) {
  _Neo_SPI( 0xFC );
  for( i = 0; i < 512; i++ )
   _Neo_SPI( *p++ );
  _Neo_SPI( 0xFF );
  _Neo_SPI( 0xFF );

  if( ( _Neo_SPI( 0xFF ) & 0x0F ) != 0x05 ) {
   _Neo_EnableMMC( false );
   return false;
  }
  while( _Neo_SPI( 0xFF ) == 0x00 );
 }


 _Neo_SPI( 0xFD );
 for( i = 0; i < 512; i++ )
  _Neo_SPI( 0xFF );
 _Neo_SPI( 0xFF );
 _Neo_SPI( 0xFF );

 _Neo_SPI (0xFF);
 while( _Neo_SPI( 0xFF ) == 0x00 );


 for ( i = 0; i < 0x10; i++) {
  _Neo_SPI (0xFF);
 }

 _Neo_EnableMMC( false );
 return true;
}

bool _NMMC_readSectors (u32 sector, u32 totalSecs, void* buffer)
{
 u32 i;
 u8 *p=(u8*)buffer;

 sector *= 512;

 _Neo_EnableMMC( true );

 while (totalSecs--) {
  _Neo_SendMMCCommand(17, sector );
  if( _Neo_CheckMMCResponse( 0x00, 0xFF ) == false ) {
   _Neo_EnableMMC( false );
   return false;
  }

  if( _Neo_CheckMMCResponse( 0xFE, 0xFF ) == false ) {
   _Neo_EnableMMC( false );
   return false;
  }
  for( i = 0; i < 512; i++ )
   *p++ = _Neo_SPI( 0xFF );
  _Neo_SPI( 0xFF );
  _Neo_SPI( 0xFF );
  sector += 512;
 }

 _Neo_EnableMMC( false );
 return true;
}


const IO_INTERFACE _io_nmmc = {
 0x434D4D4E,
 0x00000001 | 0x00000002 | 0x00000020,
 (FN_MEDIUM_STARTUP)&_NMMC_startUp,
 (FN_MEDIUM_ISINSERTED)&_NMMC_isInserted,
 (FN_MEDIUM_READSECTORS)&_NMMC_readSectors,
 (FN_MEDIUM_WRITESECTORS)&_NMMC_writeSectors,
 (FN_MEDIUM_CLEARSTATUS)&_NMMC_clearStatus,
 (FN_MEDIUM_SHUTDOWN)&_NMMC_shutdown
} ;
