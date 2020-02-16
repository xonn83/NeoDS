	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"disc.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	_FAT_disc_gbaSlotFindInterface
	.code	16
	.thumb_func
	.type	_FAT_disc_gbaSlotFindInterface, %function
_FAT_disc_gbaSlotFindInterface:
.LFB171:
	.file 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/disc.c"
	.loc 1 111 0
	push	{r4, r5, r6, lr}
.LCFI0:
.LBB8:
.LBB9:
	.file 2 "C:/devkitPro/libnds/include/nds/memory.h"
	.loc 2 194 0
	ldr	r3, .L8
	mov	r1, #128
	ldrh	r2, [r3]
	ldr	r4, .L8+4
	bic	r2, r2, r1
	strh	r2, [r3]
	mov	r5, #0
.LVL0:
.LBE9:
.LBE8:
	.loc 1 123 0
	mov	r6, #16
.L4:
	ldr	r3, [r4]
	ldr	r2, [r3, #4]
	tst	r2, r6
	beq	.L2
	ldr	r3, [r3, #8]
	blx	r3
	cmp	r0, #0
	beq	.L2
	.loc 1 124 0
	ldr	r3, .L8+4
	lsl	r5, r5, #2
.LVL1:
	ldr	r0, [r5, r3]
	b	.L3
.LVL2:
.L2:
	.loc 1 122 0
	add	r5, r5, #1
	add	r4, r4, #4
	cmp	r5, #8
	bne	.L4
	mov	r0, #0
.L3:
	.loc 1 128 0
	@ sp needed for prologue
.LVL3:
	pop	{r4, r5, r6, pc}
.L9:
	.align	2
.L8:
	.word	67109380
	.word	.LANCHOR0
.LFE171:
	.size	_FAT_disc_gbaSlotFindInterface, .-_FAT_disc_gbaSlotFindInterface
	.align	2
	.global	_FAT_disc_dsSlotFindInterface
	.code	16
	.thumb_func
	.type	_FAT_disc_dsSlotFindInterface, %function
_FAT_disc_dsSlotFindInterface:
.LFB172:
	.loc 1 138 0
	push	{r4, r5, r6, lr}
.LCFI1:
.LBB10:
.LBB11:
	.loc 2 203 0
	ldr	r3, .L16
	ldr	r2, .L16+4
	ldrh	r1, [r3]
	ldr	r4, .L16+8
	and	r2, r2, r1
	strh	r2, [r3]
	mov	r5, #0
.LVL4:
.LBE11:
.LBE10:
	.loc 1 145 0
	mov	r6, #32
.L13:
	ldr	r3, [r4]
	ldr	r2, [r3, #4]
	tst	r2, r6
	beq	.L11
	ldr	r3, [r3, #8]
	blx	r3
	cmp	r0, #0
	beq	.L11
	.loc 1 146 0
	ldr	r3, .L16+8
	lsl	r5, r5, #2
.LVL5:
	ldr	r0, [r5, r3]
	b	.L12
.LVL6:
.L11:
	.loc 1 144 0
	add	r5, r5, #1
	add	r4, r4, #4
	cmp	r5, #8
	bne	.L13
	mov	r0, #0
.L12:
	.loc 1 151 0
	@ sp needed for prologue
.LVL7:
	pop	{r4, r5, r6, pc}
.L17:
	.align	2
.L16:
	.word	67109380
	.word	-2049
	.word	.LANCHOR0
.LFE172:
	.size	_FAT_disc_dsSlotFindInterface, .-_FAT_disc_dsSlotFindInterface
	.align	2
	.global	_FAT_disc_findInterface
	.code	16
	.thumb_func
	.type	_FAT_disc_findInterface, %function
_FAT_disc_findInterface:
.LFB173:
	.loc 1 164 0
	push	{r4, r5, r6, lr}
.LCFI2:
.LBB12:
.LBB13:
	.loc 2 213 0
	ldr	r3, .L24
	ldr	r2, .L24+4
	ldrh	r1, [r3]
	ldr	r4, .L24+8
	and	r2, r2, r1
	strh	r2, [r3]
	mov	r5, #0
.LVL8:
.L21:
.LBE13:
.LBE12:
	.loc 1 172 0
	ldmia	r4!, {r3}
	ldr	r3, [r3, #8]
	blx	r3
	cmp	r0, #0
	beq	.L19
	.loc 1 173 0
	ldr	r3, .L24+8
	lsl	r5, r5, #2
.LVL9:
	ldr	r0, [r5, r3]
	b	.L20
.LVL10:
.L19:
	.loc 1 171 0
	add	r5, r5, #1
	cmp	r5, #8
	bne	.L21
	mov	r0, #0
.L20:
	.loc 1 178 0
	@ sp needed for prologue
.LVL11:
	pop	{r4, r5, r6, pc}
.L25:
	.align	2
.L24:
	.word	67109380
	.word	-2177
	.word	.LANCHOR0
.LFE173:
	.size	_FAT_disc_findInterface, .-_FAT_disc_findInterface
	.global	ioInterfaces
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ioInterfaces, %object
	.size	ioInterfaces, 32
ioInterfaces:
	.word	_io_dldi
	.word	_io_njsd
	.word	_io_nmmc
	.word	_io_mpcf
	.word	_io_m3cf
	.word	_io_sccf
	.word	_io_scsd
	.word	_io_m3sd
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
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.byte	0x4
	.4byte	.LCFI0-.LFB171
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0x4
	.sleb128 4
	.byte	0x11
	.uleb128 0x5
	.sleb128 3
	.byte	0x11
	.uleb128 0x6
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.byte	0x4
	.4byte	.LCFI1-.LFB172
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0x4
	.sleb128 4
	.byte	0x11
	.uleb128 0x5
	.sleb128 3
	.byte	0x11
	.uleb128 0x6
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.byte	0x4
	.4byte	.LCFI2-.LFB173
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0x4
	.sleb128 4
	.byte	0x11
	.uleb128 0x5
	.sleb128 3
	.byte	0x11
	.uleb128 0x6
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE4:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB171-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB172-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB173-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 5 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/disc_io.h"
	.file 6 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 7 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 8 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 9 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 10 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.file 11 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_dldi.h"
	.file 12 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_njsd.h"
	.file 13 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_nmmc.h"
	.file 14 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_mpcf.h"
	.file 15 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_m3cf.h"
	.file 16 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_sccf.h"
	.file 17 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_scsd.h"
	.file 18 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_m3sd.h"
	.section	.debug_info
	.4byte	0x676
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0x1
	.4byte	.LASF101
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x36
	.4byte	0x41
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4f
	.4byte	0x53
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x50
	.4byte	0x65
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x48
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x4
	.byte	0x63
	.4byte	0x36
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x4
	.byte	0x64
	.4byte	0x5a
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x4
	.byte	0x69
	.4byte	0x48
	.uleb128 0x6
	.byte	0x1
	.byte	0x4
	.byte	0x7d
	.4byte	0xc9
	.uleb128 0x7
	.4byte	.LASF13
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF14
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x7d
	.4byte	0xb4
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x3d
	.4byte	0xdf
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe5
	.uleb128 0x9
	.byte	0x1
	.4byte	0xc9
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x3e
	.4byte	0xdf
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x3f
	.4byte	0x101
	.uleb128 0x8
	.byte	0x4
	.4byte	0x107
	.uleb128 0xa
	.byte	0x1
	.4byte	0xc9
	.4byte	0x121
	.uleb128 0xb
	.4byte	0x9e
	.uleb128 0xb
	.4byte	0x9e
	.uleb128 0xb
	.4byte	0x121
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x40
	.4byte	0x12e
	.uleb128 0x8
	.byte	0x4
	.4byte	0x134
	.uleb128 0xa
	.byte	0x1
	.4byte	0xc9
	.4byte	0x14e
	.uleb128 0xb
	.4byte	0x9e
	.uleb128 0xb
	.4byte	0x9e
	.uleb128 0xb
	.4byte	0x14e
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x154
	.uleb128 0xd
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x41
	.4byte	0xdf
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x42
	.4byte	0xdf
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x20
	.byte	0x5
	.byte	0x44
	.4byte	0x1e8
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x5
	.byte	0x45
	.4byte	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x5
	.byte	0x46
	.4byte	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x5
	.byte	0x47
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x5
	.byte	0x48
	.4byte	0xeb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x5
	.byte	0x49
	.4byte	0xf6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x5
	.byte	0x4a
	.4byte	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x5
	.byte	0x4b
	.4byte	0x155
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x5
	.byte	0x4c
	.4byte	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF30
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x5
	.byte	0x4f
	.4byte	0x16b
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF32
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF33
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x28
	.byte	0x6
	.2byte	0x18c
	.4byte	0x2af
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x18d
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x18e
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x18f
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x190
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x191
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x192
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x193
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x194
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x195
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x196
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x198
	.4byte	0x20b
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x8
	.byte	0x7
	.byte	0x29
	.4byte	0x2e4
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x7
	.byte	0x2a
	.4byte	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x7
	.byte	0x2b
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x121
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x7
	.byte	0x2c
	.4byte	0x2bb
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x9c
	.4byte	0x316
	.uleb128 0x7
	.4byte	.LASF49
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF50
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF51
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF52
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x8
	.byte	0xa1
	.4byte	0x2f5
	.uleb128 0x14
	.4byte	.LASF54
	.2byte	0x2020
	.byte	0x8
	.2byte	0x11a
	.4byte	0x3ad
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0x8
	.2byte	0x11b
	.4byte	0x316
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x8
	.2byte	0x11e
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x8
	.2byte	0x121
	.4byte	0x3ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x8
	.2byte	0x122
	.4byte	0x2ea
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x8
	.2byte	0x123
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x8
	.2byte	0x124
	.4byte	0x3be
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x125
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x8
	.2byte	0x126
	.4byte	0x53
	.byte	0x3
	.byte	0x23
	.uleb128 0x201c
	.byte	0x0
	.uleb128 0x15
	.4byte	0x7a
	.4byte	0x3be
	.uleb128 0x16
	.4byte	0x1fa
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x8
	.2byte	0x128
	.4byte	0x321
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x59
	.4byte	0x3f1
	.uleb128 0x7
	.4byte	.LASF63
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF64
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF65
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF66
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x62
	.4byte	0x412
	.uleb128 0x7
	.4byte	.LASF67
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF68
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF69
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF70
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x6a
	.4byte	0x433
	.uleb128 0x7
	.4byte	.LASF71
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF72
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF73
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF74
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x72
	.4byte	0x448
	.uleb128 0x7
	.4byte	.LASF75
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF76
	.sleb128 1
	.byte	0x0
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x2
	.byte	0xc1
	.byte	0x1
	.byte	0x3
	.4byte	0x461
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x2
	.byte	0xc1
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x2
	.byte	0xca
	.byte	0x1
	.byte	0x3
	.4byte	0x47a
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x2
	.byte	0xca
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x17
	.4byte	.LASF80
	.byte	0x2
	.byte	0xd4
	.byte	0x1
	.byte	0x3
	.4byte	0x49e
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x2
	.byte	0xd4
	.4byte	0xc9
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x2
	.byte	0xd4
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF83
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x4de
	.4byte	.LFB171
	.4byte	.LFE171
	.4byte	.LLST0
	.4byte	0x4de
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.byte	0x78
	.4byte	0x53
	.4byte	.LLST1
	.uleb128 0x1b
	.4byte	0x448
	.4byte	.LBB8
	.4byte	.LBE8
	.byte	0x1
	.byte	0x74
	.uleb128 0x1c
	.4byte	0x455
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4e4
	.uleb128 0x1d
	.4byte	0x1ef
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF84
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.4byte	0x4de
	.4byte	.LFB172
	.4byte	.LFE172
	.4byte	.LLST2
	.4byte	0x529
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.byte	0x8e
	.4byte	0x53
	.4byte	.LLST3
	.uleb128 0x1b
	.4byte	0x461
	.4byte	.LBB10
	.4byte	.LBE10
	.byte	0x1
	.byte	0x8c
	.uleb128 0x1c
	.4byte	0x46e
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF85
	.byte	0x1
	.byte	0xa3
	.byte	0x1
	.4byte	0x4de
	.4byte	.LFB173
	.4byte	.LFE173
	.4byte	.LLST4
	.4byte	0x56e
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.byte	0xa9
	.4byte	0x53
	.4byte	.LLST5
	.uleb128 0x1b
	.4byte	0x47a
	.4byte	.LBB12
	.4byte	.LBE12
	.byte	0x1
	.byte	0xa6
	.uleb128 0x1c
	.4byte	0x492
	.uleb128 0x1c
	.4byte	0x487
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x12e
	.4byte	0x57a
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3c4
	.uleb128 0x1f
	.4byte	.LASF86
	.byte	0xa
	.byte	0x56
	.4byte	0x93
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF87
	.byte	0xa
	.byte	0x57
	.4byte	0x93
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x5aa
	.4byte	0x5aa
	.uleb128 0x20
	.4byte	0x1fa
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5b0
	.uleb128 0x21
	.4byte	0x41
	.uleb128 0x22
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x19c
	.4byte	0x59a
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x2af
	.4byte	0x5d3
	.uleb128 0x20
	.4byte	0x1fa
	.byte	0x7
	.byte	0x0
	.uleb128 0x22
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x19f
	.4byte	0x5c3
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF90
	.byte	0x8
	.2byte	0x12b
	.4byte	0x3c4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF91
	.byte	0xb
	.byte	0x2a
	.4byte	0x4e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF92
	.byte	0xc
	.byte	0x2e
	.4byte	0x4e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF93
	.byte	0xd
	.byte	0x31
	.4byte	0x4e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF94
	.byte	0xe
	.byte	0x2b
	.4byte	0x4e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF95
	.byte	0xf
	.byte	0x2b
	.4byte	0x4e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF96
	.byte	0x10
	.byte	0x2b
	.4byte	0x4e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF97
	.byte	0x11
	.byte	0x2e
	.4byte	0x4e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF98
	.byte	0x12
	.byte	0x2e
	.4byte	0x4e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x4de
	.4byte	0x667
	.uleb128 0x20
	.4byte	0x1fa
	.byte	0x7
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF99
	.byte	0x1
	.byte	0x5e
	.4byte	0x657
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	ioInterfaces
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
	.uleb128 0x4
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
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x5
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.4byte	0x80
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x67a
	.4byte	0x49e
	.ascii	"_FAT_disc_gbaSlotFindInterface\000"
	.4byte	0x4e9
	.ascii	"_FAT_disc_dsSlotFindInterface\000"
	.4byte	0x529
	.ascii	"_FAT_disc_findInterface\000"
	.4byte	0x667
	.ascii	"ioInterfaces\000"
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
.LASF58:
	.ascii	"texturePtrs\000"
.LASF54:
	.ascii	"gl_hidden_globals\000"
.LASF20:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF76:
	.ascii	"OBJCOLOR_256\000"
.LASF36:
	.ascii	"angle\000"
.LASF90:
	.ascii	"glGlobalData\000"
.LASF47:
	.ascii	"data\000"
.LASF14:
	.ascii	"true\000"
.LASF2:
	.ascii	"short int\000"
.LASF22:
	.ascii	"ioType\000"
.LASF72:
	.ascii	"OBJSIZE_16\000"
.LASF25:
	.ascii	"fn_isInserted\000"
.LASF101:
	.ascii	"C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/disc."
	.ascii	"c\000"
.LASF51:
	.ascii	"GL_MODELVIEW\000"
.LASF21:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF93:
	.ascii	"_io_nmmc\000"
.LASF46:
	.ascii	"DynamicArray\000"
.LASF99:
	.ascii	"ioInterfaces\000"
.LASF52:
	.ascii	"GL_TEXTURE\000"
.LASF39:
	.ascii	"scaleX\000"
.LASF40:
	.ascii	"scaleY\000"
.LASF80:
	.ascii	"sysSetBusOwners\000"
.LASF60:
	.ascii	"nextBlock\000"
.LASF57:
	.ascii	"textures\000"
.LASF37:
	.ascii	"centerX\000"
.LASF38:
	.ascii	"centerY\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF56:
	.ascii	"clearColor\000"
.LASF89:
	.ascii	"bgState\000"
.LASF16:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"float\000"
.LASF75:
	.ascii	"OBJCOLOR_16\000"
.LASF48:
	.ascii	"cur_size\000"
.LASF8:
	.ascii	"long long int\000"
.LASF45:
	.ascii	"dirty\000"
.LASF53:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF69:
	.ascii	"OBJSHAPE_TALL\000"
.LASF33:
	.ascii	"long int\000"
.LASF74:
	.ascii	"OBJSIZE_64\000"
.LASF77:
	.ascii	"sysSetCartOwner\000"
.LASF31:
	.ascii	"IO_INTERFACE\000"
.LASF63:
	.ascii	"OBJMODE_NORMAL\000"
.LASF26:
	.ascii	"fn_readSectors\000"
.LASF102:
	.ascii	"glGlob\000"
.LASF81:
	.ascii	"arm9rom\000"
.LASF94:
	.ascii	"_io_mpcf\000"
.LASF28:
	.ascii	"fn_clearStatus\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF65:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF95:
	.ascii	"_io_m3cf\000"
.LASF96:
	.ascii	"_io_sccf\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF64:
	.ascii	"OBJMODE_BLENDED\000"
.LASF44:
	.ascii	"type\000"
.LASF19:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF13:
	.ascii	"false\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF73:
	.ascii	"OBJSIZE_32\000"
.LASF88:
	.ascii	"bgControl\000"
.LASF34:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF23:
	.ascii	"features\000"
.LASF55:
	.ascii	"matrixMode\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF86:
	.ascii	"mosaicShadow\000"
.LASF32:
	.ascii	"char\000"
.LASF83:
	.ascii	"_FAT_disc_gbaSlotFindInterface\000"
.LASF59:
	.ascii	"activeTexture\000"
.LASF49:
	.ascii	"GL_PROJECTION\000"
.LASF42:
	.ascii	"scrollY\000"
.LASF5:
	.ascii	"int32_t\000"
.LASF92:
	.ascii	"_io_njsd\000"
.LASF67:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF24:
	.ascii	"fn_startup\000"
.LASF18:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF10:
	.ascii	"uint32\000"
.LASF30:
	.ascii	"long unsigned int\000"
.LASF12:
	.ascii	"double\000"
.LASF98:
	.ascii	"_io_m3sd\000"
.LASF97:
	.ascii	"_io_scsd\000"
.LASF43:
	.ascii	"size\000"
.LASF61:
	.ascii	"nextPBlock\000"
.LASF15:
	.ascii	"bool\000"
.LASF50:
	.ascii	"GL_POSITION\000"
.LASF17:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF82:
	.ascii	"arm9card\000"
.LASF91:
	.ascii	"_io_dldi\000"
.LASF68:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF41:
	.ascii	"scrollX\000"
.LASF62:
	.ascii	"nameCount\000"
.LASF84:
	.ascii	"_FAT_disc_dsSlotFindInterface\000"
.LASF66:
	.ascii	"OBJMODE_BITMAP\000"
.LASF100:
	.ascii	"GNU C 4.4.3\000"
.LASF35:
	.ascii	"BgState\000"
.LASF29:
	.ascii	"fn_shutdown\000"
.LASF7:
	.ascii	"unsigned int\000"
.LASF79:
	.ascii	"arm9\000"
.LASF27:
	.ascii	"fn_writeSectors\000"
.LASF71:
	.ascii	"OBJSIZE_8\000"
.LASF70:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF85:
	.ascii	"_FAT_disc_findInterface\000"
.LASF87:
	.ascii	"mosaicShadowSub\000"
.LASF78:
	.ascii	"sysSetCardOwner\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
