	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"io_sccf.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	_SCCF_startup
	.code	16
	.thumb_func
	.type	_SCCF_startup, %function
_SCCF_startup:
.LFB0:
	.file 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_sccf.c"
	.loc 1 68 0
	push	{r4, lr}
.LCFI0:
	.loc 1 69 0
	mov	r0, #3
	bl	_SC_changeMode
	.loc 1 70 0
	ldr	r0, .L3
	bl	_CF_startup
	.loc 1 71 0
	@ sp needed for prologue
	pop	{r4, pc}
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
.LFE0:
	.size	_SCCF_startup, .-_SCCF_startup
	.global	_io_sccf
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_SCCF_Registers, %object
	.size	_SCCF_Registers, 36
_SCCF_Registers:
	.word	150994944
	.word	160169984
	.word	151912448
	.word	151126016
	.word	151257088
	.word	151388160
	.word	151519232
	.word	151650304
	.word	151781376
	.type	_io_sccf, %object
	.size	_io_sccf, 32
_io_sccf:
	.word	1178813267
	.word	19
	.word	_SCCF_startup
	.word	_CF_isInserted
	.word	_CF_readSectors
	.word	_CF_writeSectors
	.word	_CF_clearStatus
	.word	_CF_shutdown
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.byte	0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0x0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE0:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB0-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/disc_io.h"
	.file 5 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_cf_common.h"
	.section	.debug_info
	.4byte	0x2a3
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x1
	.4byte	.LASF40
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x50
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF8
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x64
	.4byte	0x44
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0x7d
	.4byte	0x92
	.uleb128 0x7
	.4byte	.LASF10
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF11
	.sleb128 1
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x7d
	.4byte	0x7d
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x3d
	.4byte	0xa8
	.uleb128 0x8
	.byte	0x4
	.4byte	0xae
	.uleb128 0x9
	.byte	0x1
	.4byte	0x92
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x3e
	.4byte	0xa8
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3f
	.4byte	0xca
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd0
	.uleb128 0xa
	.byte	0x1
	.4byte	0x92
	.4byte	0xea
	.uleb128 0xb
	.4byte	0x72
	.uleb128 0xb
	.4byte	0x72
	.uleb128 0xb
	.4byte	0xea
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x40
	.4byte	0xf7
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfd
	.uleb128 0xa
	.byte	0x1
	.4byte	0x92
	.4byte	0x117
	.uleb128 0xb
	.4byte	0x72
	.uleb128 0xb
	.4byte	0x72
	.uleb128 0xb
	.4byte	0x117
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11d
	.uleb128 0xd
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x41
	.4byte	0xa8
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x42
	.4byte	0xa8
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x20
	.byte	0x4
	.byte	0x44
	.4byte	0x1b1
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x4
	.byte	0x45
	.4byte	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x4
	.byte	0x46
	.4byte	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x4
	.byte	0x47
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x4
	.byte	0x48
	.4byte	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x4
	.byte	0x49
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x4
	.byte	0x4a
	.4byte	0xec
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x4
	.byte	0x4b
	.4byte	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x4
	.byte	0x4c
	.4byte	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF27
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x4
	.byte	0x4f
	.4byte	0x134
	.uleb128 0x10
	.byte	0x24
	.byte	0x5
	.byte	0x2b
	.4byte	0x24a
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x5
	.byte	0x2c
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x5
	.byte	0x2d
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x5
	.byte	0x2e
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x5
	.byte	0x2f
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x5
	.byte	0x30
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x5
	.byte	0x31
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x5
	.byte	0x32
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x5
	.byte	0x33
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x5
	.byte	0x34
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x250
	.uleb128 0x11
	.4byte	0x36
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x5
	.byte	0x35
	.4byte	0x1c3
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF42
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0x92
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0x37
	.4byte	0x28a
	.byte	0x5
	.byte	0x3
	.4byte	_SCCF_Registers
	.uleb128 0x14
	.4byte	0x255
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x1
	.byte	0x4a
	.4byte	0x2a1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_io_sccf
	.uleb128 0x14
	.4byte	0x1b8
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x2d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2a7
	.4byte	0x260
	.ascii	"_SCCF_startup\000"
	.4byte	0x28f
	.ascii	"_io_sccf\000"
	.4byte	0x0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF17:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF15:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF2:
	.ascii	"short int\000"
.LASF19:
	.ascii	"ioType\000"
.LASF22:
	.ascii	"fn_isInserted\000"
.LASF18:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF29:
	.ascii	"data\000"
.LASF40:
	.ascii	"C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_sc"
	.ascii	"cf.c\000"
.LASF12:
	.ascii	"bool\000"
.LASF13:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF7:
	.ascii	"float\000"
.LASF5:
	.ascii	"long long int\000"
.LASF42:
	.ascii	"_SCCF_startup\000"
.LASF28:
	.ascii	"IO_INTERFACE\000"
.LASF44:
	.ascii	"_io_sccf\000"
.LASF34:
	.ascii	"lba1\000"
.LASF23:
	.ascii	"fn_readSectors\000"
.LASF36:
	.ascii	"lba3\000"
.LASF37:
	.ascii	"lba4\000"
.LASF25:
	.ascii	"fn_clearStatus\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF33:
	.ascii	"sectorCount\000"
.LASF0:
	.ascii	"signed char\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF10:
	.ascii	"false\000"
.LASF41:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF20:
	.ascii	"features\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF16:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF30:
	.ascii	"status\000"
.LASF35:
	.ascii	"lba2\000"
.LASF11:
	.ascii	"true\000"
.LASF21:
	.ascii	"fn_startup\000"
.LASF27:
	.ascii	"long unsigned int\000"
.LASF8:
	.ascii	"double\000"
.LASF38:
	.ascii	"CF_REGISTERS\000"
.LASF43:
	.ascii	"_SCCF_Registers\000"
.LASF24:
	.ascii	"fn_writeSectors\000"
.LASF32:
	.ascii	"error\000"
.LASF14:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF39:
	.ascii	"GNU C 4.4.3\000"
.LASF31:
	.ascii	"command\000"
.LASF26:
	.ascii	"fn_shutdown\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
