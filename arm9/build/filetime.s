	.code	16
	.file	"filetime.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	_FAT_filetime_to_time_t
	.code 16
	.thumb_func
	.type	_FAT_filetime_to_time_t, %function
_FAT_filetime_to_time_t:
.LFB7:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/filetime.c"
	.loc 1 113 0
	push	{r4, r5, r6, lr}
.LCFI0:
.LVL0:
	.loc 1 113 0
	lsl	r3, r1, #23
	ldr	r2, .L3
	lsr	r3, r3, #28
	mov	r6, #31
	mov	r5, r3
	mul	r5, r2
	mov	r2, r1
	and	r2, r2, r6
	lsl	r3, r2, #1
	add	r3, r3, r2
	lsl	r2, r3, #4
	sub	r2, r2, r3
	lsl	r3, r2, #4
	sub	r3, r3, r2
	lsl	r3, r3, #7
	add	r5, r5, r3
	lsl	r3, r0, #21
	lsr	r3, r3, #26
	lsl	r4, r3, #4
	sub	r4, r4, r3
	lsr	r3, r0, #11
	lsl	r2, r3, #4
	sub	r2, r2, r3
	lsl	r3, r2, #4
	and	r0, r0, r6
.LVL1:
	sub	r3, r3, r2
	lsl	r0, r0, #1
	lsl	r3, r3, #4
	add	r3, r3, r0
	lsl	r4, r4, #2
	add	r4, r4, r3
	ldr	r3, .L3+4
	lsr	r1, r1, #9
.LVL2:
	mul	r3, r1
	add	r4, r4, r3
	add	r5, r5, r4
	.loc 1 138 0
	mov	r0, r5
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L4:
	.align	2
.L3:
	.word	2629743
	.word	31556926
.LFE7:
	.size	_FAT_filetime_to_time_t, .-_FAT_filetime_to_time_t
	.align	2
	.global	_FAT_filetime_getDateFromRTC
	.code 16
	.thumb_func
	.type	_FAT_filetime_getDateFromRTC, %function
_FAT_filetime_getDateFromRTC:
.LFB6:
	.loc 1 91 0
	push	{lr}
.LCFI1:
	.loc 1 95 0
	ldr	r2, .L12
	ldrb	r3, [r2, #23]
	mov	r1, r3
	.loc 1 96 0
	ldrb	r3, [r2, #24]
	mov	r0, r3
	.loc 1 97 0
	ldrb	r3, [r2, #25]
	mov	r2, r3
	.loc 1 99 0
	sub	r3, r1, #6
	cmp	r3, #93
	bhi	.L6
	.loc 1 100 0
	sub	r3, r0, #1
	cmp	r3, #11
	bhi	.L6
	.loc 1 101 0
	sub	r3, r2, #1
	cmp	r3, #30
	bhi	.L6
	.loc 1 103 0
	mov	r3, #127
	add	r1, r1, #20
	and	r1, r1, r3
	mov	r3, #31
	and	r2, r2, r3
	mov	r3, #15
	and	r3, r3, r0
	lsl	r1, r1, #9
	lsl	r3, r3, #5
	orr	r2, r2, r3
	mov	r0, r1
	orr	r0, r0, r2
	b	.L10
.L6:
	mov	r0, #0
.L10:
	.loc 1 111 0
	@ sp needed for prologue
	pop	{pc}
.L13:
	.align	2
.L12:
	.word	41938944
.LFE6:
	.size	_FAT_filetime_getDateFromRTC, .-_FAT_filetime_getDateFromRTC
	.align	2
	.global	_FAT_filetime_getTimeFromRTC
	.code 16
	.thumb_func
	.type	_FAT_filetime_getTimeFromRTC, %function
_FAT_filetime_getTimeFromRTC:
.LFB5:
	.loc 1 67 0
	push	{lr}
.LCFI2:
	.loc 1 70 0
	ldr	r2, .L24
	ldrb	r3, [r2, #27]
	cmp	r3, #39
	bls	.L15
	ldrb	r3, [r2, #27]
	mov	r1, r3
.LVL3:
	sub	r1, r1, #40
	b	.L17
.LVL4:
.L15:
	ldrb	r3, [r2, #27]
	mov	r1, r3
.LVL5:
.L17:
	.loc 1 71 0
	ldr	r3, .L24
	ldrb	r2, [r3, #28]
	.loc 1 72 0
	ldrb	r3, [r3, #29]
	.loc 1 71 0
	mov	r0, r2
	.loc 1 72 0
	mov	r2, r3
	.loc 1 76 0
	cmp	r1, #23
	bhi	.L18
	.loc 1 77 0
	cmp	r0, #59
	bhi	.L18
	.loc 1 78 0
	cmp	r3, #59
	bhi	.L18
	.loc 1 80 0
	mov	r3, #31
	asr	r2, r2, #1
	and	r1, r1, r3
.LVL6:
	and	r2, r2, r3
	mov	r3, #63
	and	r3, r3, r0
	lsl	r1, r1, #11
	lsl	r3, r3, #5
	orr	r2, r2, r3
	mov	r0, r1
	orr	r0, r0, r2
	b	.L22
.LVL7:
.L18:
	mov	r0, #0
.L22:
	.loc 1 88 0
	@ sp needed for prologue
	pop	{pc}
.L25:
	.align	2
.L24:
	.word	41938944
.LFE5:
	.size	_FAT_filetime_getTimeFromRTC, .-_FAT_filetime_getTimeFromRTC
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI0-.LFB7
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x4
	.byte	0x85
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI2-.LFB5
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE4:
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/types.h"
	.file 3 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 4 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 5 "C:/devkitPro/libnds/include/nds/ipc.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x4db
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF62
	.byte	0x1
	.4byte	.LASF63
	.4byte	.LASF64
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x4
	.byte	0x2e
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x3a
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x54
	.4byte	0x69
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x44
	.4byte	0x45
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x8
	.byte	0x4
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x3
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x3
	.byte	0x60
	.4byte	0x45
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x61
	.4byte	0x5e
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x2
	.byte	0x6d
	.4byte	0x57
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.4byte	0x14d
	.4byte	.LASF22
	.byte	0x10
	.byte	0x5
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0x26
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.ascii	"len\000"
	.byte	0x5
	.byte	0x27
	.4byte	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x28
	.4byte	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii	"vol\000"
	.byte	0x5
	.byte	0x29
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii	"pan\000"
	.byte	0x5
	.byte	0x2a
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2b
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x2c
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x153
	.uleb128 0xa
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x2d
	.4byte	0xde
	.uleb128 0xb
	.4byte	0x199
	.4byte	.LASF23
	.2byte	0x104
	.byte	0x5
	.byte	0x31
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0x33
	.4byte	0x199
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x5
	.byte	0x34
	.4byte	0xa5
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x35
	.4byte	0x1a9
	.byte	0x3
	.byte	0x23
	.uleb128 0x101
	.byte	0x0
	.uleb128 0xc
	.4byte	0x1a9
	.4byte	0x154
	.uleb128 0xd
	.4byte	0xc5
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.4byte	0x1b9
	.4byte	0xa5
	.uleb128 0xd
	.4byte	0xc5
	.byte	0x2
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x36
	.4byte	0x1c4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x15f
	.uleb128 0xe
	.4byte	0x243
	.byte	0x8
	.byte	0x5
	.byte	0x47
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x5
	.byte	0x48
	.4byte	0x243
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x5
	.byte	0x49
	.4byte	0x243
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x5
	.byte	0x4a
	.4byte	0x243
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.ascii	"day\000"
	.byte	0x5
	.byte	0x4b
	.4byte	0x243
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x5
	.byte	0x4d
	.4byte	0x243
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x5
	.byte	0x4e
	.4byte	0x243
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x5
	.byte	0x4f
	.4byte	0x243
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x5
	.byte	0x50
	.4byte	0x243
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0x0
	.uleb128 0xf
	.4byte	0x37
	.uleb128 0x10
	.4byte	0x267
	.byte	0x8
	.byte	0x5
	.byte	0x44
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x5
	.byte	0x45
	.4byte	0x277
	.uleb128 0x12
	.ascii	"rtc\000"
	.byte	0x5
	.byte	0x51
	.4byte	0x1ca
	.byte	0x0
	.uleb128 0xc
	.4byte	0x277
	.4byte	0x37
	.uleb128 0xd
	.4byte	0xc5
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.4byte	0x267
	.uleb128 0x6
	.4byte	0x3a1
	.4byte	.LASF34
	.byte	0x3c
	.byte	0x5
	.byte	0x3a
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x5
	.byte	0x3c
	.4byte	0x3a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x5
	.byte	0x3c
	.4byte	0x3a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x5
	.byte	0x3d
	.4byte	0x3a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x5
	.byte	0x3d
	.4byte	0x3a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x5
	.byte	0x3e
	.4byte	0x3a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x5
	.byte	0x3e
	.4byte	0x3a1
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x5
	.byte	0x3f
	.4byte	0x3a6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x5
	.byte	0x3f
	.4byte	0x3a6
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x5
	.byte	0x40
	.4byte	0x3ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x5
	.byte	0x42
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x5
	.byte	0x52
	.4byte	0x248
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x5
	.byte	0x53
	.4byte	0x3b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x5
	.byte	0x55
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.ascii	"aux\000"
	.byte	0x5
	.byte	0x56
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x5
	.byte	0x59
	.4byte	0x1b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x5
	.byte	0x5b
	.4byte	0x3ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x5
	.byte	0x5c
	.4byte	0x3ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x5
	.byte	0x5d
	.4byte	0x243
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x5
	.byte	0x5e
	.4byte	0x243
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x5
	.byte	0x5f
	.4byte	0x3ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0xf
	.4byte	0x3e
	.uleb128 0xf
	.4byte	0x50
	.uleb128 0xf
	.4byte	0x69
	.uleb128 0xf
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x5
	.byte	0x60
	.4byte	0x27c
	.uleb128 0x13
	.4byte	0x449
	.byte	0x1
	.4byte	.LASF60
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.4byte	0xcc
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0x71
	.4byte	0xaf
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x1
	.byte	0x71
	.4byte	0xaf
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x1
	.byte	0x72
	.4byte	0x7e
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x1
	.byte	0x72
	.4byte	0x7e
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x1
	.byte	0x72
	.4byte	0x7e
	.uleb128 0x16
	.ascii	"day\000"
	.byte	0x1
	.byte	0x73
	.4byte	0x7e
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x73
	.4byte	0x7e
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x73
	.4byte	0x7e
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x1
	.byte	0x75
	.4byte	0xcc
	.byte	0x0
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x5
	.byte	0x67
	.4byte	0x455
	.byte	0x3
	.uleb128 0x9
	.byte	0x4
	.4byte	0x45b
	.uleb128 0xf
	.4byte	0x3b5
	.uleb128 0x13
	.4byte	0x49f
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.4byte	0xaf
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x5d
	.4byte	0x7e
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x5d
	.4byte	0x7e
	.uleb128 0x16
	.ascii	"day\000"
	.byte	0x1
	.byte	0x5d
	.4byte	0x7e
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF66
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.4byte	0xaf
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	.LASF56
	.byte	0x1
	.byte	0x45
	.4byte	0x7e
	.4byte	.LLST5
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x1
	.byte	0x45
	.4byte	0x7e
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x1
	.byte	0x45
	.4byte	0x7e
	.byte	0x0
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
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
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0xd
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
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x6
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x4df
	.4byte	0x3c0
	.ascii	"_FAT_filetime_to_time_t\000"
	.4byte	0x460
	.ascii	"_FAT_filetime_getDateFromRTC\000"
	.4byte	0x49f
	.ascii	"_FAT_filetime_getTimeFromRTC\000"
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
.LASF24:
	.ascii	"count\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF35:
	.ascii	"touchX\000"
.LASF54:
	.ascii	"TransferRegion\000"
.LASF48:
	.ascii	"soundData\000"
.LASF36:
	.ascii	"touchY\000"
.LASF52:
	.ascii	"mailBusy\000"
.LASF18:
	.ascii	"rate\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF58:
	.ascii	"second\000"
.LASF9:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF42:
	.ascii	"tdiode2\000"
.LASF27:
	.ascii	"year\000"
.LASF32:
	.ascii	"seconds\000"
.LASF6:
	.ascii	"long int\000"
.LASF61:
	.ascii	"_FAT_filetime_getDateFromRTC\000"
.LASF59:
	.ascii	"result\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF43:
	.ascii	"temperature\000"
.LASF53:
	.ascii	"mailSize\000"
.LASF38:
	.ascii	"touchYpx\000"
.LASF49:
	.ascii	"mailAddr\000"
.LASF55:
	.ascii	"date\000"
.LASF56:
	.ascii	"hour\000"
.LASF22:
	.ascii	"sTransferSoundData\000"
.LASF28:
	.ascii	"month\000"
.LASF23:
	.ascii	"sTransferSound\000"
.LASF26:
	.ascii	"command\000"
.LASF51:
	.ascii	"mailRead\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF34:
	.ascii	"sTransferRegion\000"
.LASF17:
	.ascii	"data\000"
.LASF47:
	.ascii	"battery\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF37:
	.ascii	"touchXpx\000"
.LASF30:
	.ascii	"hours\000"
.LASF33:
	.ascii	"curtime\000"
.LASF39:
	.ascii	"touchZ1\000"
.LASF40:
	.ascii	"touchZ2\000"
.LASF50:
	.ascii	"mailData\000"
.LASF45:
	.ascii	"time\000"
.LASF60:
	.ascii	"_FAT_filetime_to_time_t\000"
.LASF62:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF15:
	.ascii	"time_t\000"
.LASF41:
	.ascii	"tdiode1\000"
.LASF13:
	.ascii	"float\000"
.LASF44:
	.ascii	"buttons\000"
.LASF64:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF31:
	.ascii	"minutes\000"
.LASF12:
	.ascii	"uint16\000"
.LASF2:
	.ascii	"short int\000"
.LASF21:
	.ascii	"TransferSoundData\000"
.LASF19:
	.ascii	"format\000"
.LASF16:
	.ascii	"char\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF63:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/filet"
	.ascii	"ime.c\000"
.LASF29:
	.ascii	"weekday\000"
.LASF25:
	.ascii	"pTransferSound\000"
.LASF46:
	.ascii	"unixTime\000"
.LASF57:
	.ascii	"minute\000"
.LASF7:
	.ascii	"uint32_t\000"
.LASF66:
	.ascii	"_FAT_filetime_getTimeFromRTC\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF20:
	.ascii	"PADDING\000"
.LASF65:
	.ascii	"getIPC\000"
.LASF14:
	.ascii	"double\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
