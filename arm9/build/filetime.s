	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
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
	.code	16
	.thumb_func
	.type	_FAT_filetime_to_time_t, %function
_FAT_filetime_to_time_t:
.LFB4:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/filetime.c"
	.loc 1 116 0
	push	{r4, lr}
.LCFI0:
.LVL0:
	.loc 1 116 0
	lsr	r3, r0, #11
	lsl	r2, r3, #4
	sub	r3, r2, r3
	lsl	r2, r3, #4
	sub	r2, r2, r3
	mov	r4, r0
	mov	r3, #31
	and	r4, r4, r3
	lsl	r0, r0, #21
.LVL1:
	lsl	r4, r4, #1
	lsr	r0, r0, #26
	lsl	r2, r2, #4
	add	r2, r2, r4
	lsl	r4, r0, #4
	sub	r0, r4, r0
	and	r3, r3, r1
	lsl	r0, r0, #2
	add	r0, r2, r0
	lsl	r2, r3, #1
	add	r3, r2, r3
	lsl	r2, r3, #4
	sub	r3, r2, r3
	lsl	r2, r3, #4
	sub	r3, r2, r3
	lsl	r3, r3, #7
	ldr	r4, .L3
	add	r0, r0, r3
	lsr	r3, r1, #9
	mov	r2, r4
	mul	r2, r3
	lsl	r1, r1, #23
.LVL2:
	ldr	r3, .L3+4
	lsr	r1, r1, #28
	add	r0, r0, r2
	mov	r2, r3
	mul	r2, r1
	.loc 1 141 0
	@ sp needed for prologue
	.loc 1 116 0
	add	r0, r0, r2
	.loc 1 141 0
	pop	{r4, pc}
.L4:
	.align	2
.L3:
	.word	31556926
	.word	2629743
.LFE4:
	.size	_FAT_filetime_to_time_t, .-_FAT_filetime_to_time_t
	.align	2
	.global	_FAT_filetime_getDateFromRTC
	.code	16
	.thumb_func
	.type	_FAT_filetime_getDateFromRTC, %function
_FAT_filetime_getDateFromRTC:
.LFB3:
	.loc 1 95 0
	push	{r4, r5, lr}
.LCFI1:
	sub	sp, sp, #44
.LCFI2:
	.loc 1 99 0
	add	r4, sp, #36
	mov	r0, r4
	bl	time
	.loc 1 100 0
	mov	r0, r4
	bl	localtime
	mov	r3, sp
	ldmia	r0!, {r1, r4, r5}
	stmia	r3!, {r1, r4, r5}
	ldmia	r0!, {r1, r4, r5}
	stmia	r3!, {r1, r4, r5}
	ldmia	r0!, {r1, r4, r5}
	stmia	r3!, {r1, r4, r5}
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #16]
	.loc 1 102 0
	sub	r2, r0, #6
	.loc 1 100 0
	ldr	r3, [sp, #12]
	.loc 1 102 0
	cmp	r2, #93
	bhi	.L6
	.loc 1 103 0
	sub	r2, r1, #1
	cmp	r2, #11
	bhi	.L6
	.loc 1 104 0
	sub	r2, r3, #1
	cmp	r2, #30
	bhi	.L6
	.loc 1 106 0
	mov	r2, #15
	add	r0, r0, #20
	and	r1, r1, r2
	lsl	r1, r1, #5
	lsl	r0, r0, #9
	orr	r0, r0, r1
	mov	r1, #31
	and	r3, r3, r1
	orr	r0, r0, r3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	b	.L7
.L6:
	mov	r0, #0
.L7:
	.loc 1 114 0
	add	sp, sp, #44
	@ sp needed for prologue
	pop	{r4, r5, pc}
.LFE3:
	.size	_FAT_filetime_getDateFromRTC, .-_FAT_filetime_getDateFromRTC
	.align	2
	.global	_FAT_filetime_getTimeFromRTC
	.code	16
	.thumb_func
	.type	_FAT_filetime_getTimeFromRTC, %function
_FAT_filetime_getTimeFromRTC:
.LFB2:
	.loc 1 68 0
	push	{r4, r5, lr}
.LCFI3:
	sub	sp, sp, #44
.LCFI4:
	.loc 1 72 0
	add	r4, sp, #36
	mov	r0, r4
	bl	time
	.loc 1 73 0
	mov	r0, r4
	bl	localtime
	mov	r3, sp
	ldmia	r0!, {r1, r4, r5}
	stmia	r3!, {r1, r4, r5}
	ldmia	r0!, {r1, r4, r5}
	stmia	r3!, {r1, r4, r5}
	ldmia	r0!, {r1, r4, r5}
	stmia	r3!, {r1, r4, r5}
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #4]
	ldr	r1, [sp]
	.loc 1 76 0
	cmp	r3, #39
	ble	.L12
	sub	r3, r3, #40
.LVL3:
.L12:
	.loc 1 80 0
	cmp	r3, #23
	bhi	.L13
	.loc 1 81 0
	cmp	r2, #59
	bhi	.L13
	.loc 1 82 0
	cmp	r1, #59
	bhi	.L13
	.loc 1 84 0
	lsl	r0, r1, #26
	mov	r1, #63
	and	r2, r2, r1
	lsr	r0, r0, #27
	lsl	r2, r2, #5
	orr	r0, r0, r2
	lsl	r3, r3, #11
.LVL4:
	orr	r0, r0, r3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	b	.L14
.LVL5:
.L13:
	mov	r0, #0
.L14:
	.loc 1 92 0
	add	sp, sp, #44
	@ sp needed for prologue
	pop	{r4, r5, pc}
.LFE2:
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
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
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI1-.LFB3
	.byte	0xe
	.uleb128 0xc
	.byte	0x11
	.uleb128 0x4
	.sleb128 3
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x38
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI3-.LFB2
	.byte	0xe
	.uleb128 0xc
	.byte	0x11
	.uleb128 0x4
	.sleb128 3
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x38
	.align	2
.LEFDE4:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
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
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/types.h"
	.file 4 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/time.h"
	.file 5 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.section	.debug_info
	.4byte	0x22d
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x1
	.4byte	.LASF34
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
	.4byte	.LASF9
	.byte	0x2
	.byte	0x36
	.4byte	0x41
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
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
	.ascii	"u16\000"
	.byte	0x5
	.byte	0x63
	.4byte	0x36
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x6d
	.4byte	0x7d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x7
	.ascii	"tm\000"
	.byte	0x24
	.byte	0x4
	.byte	0x22
	.4byte	0x12a
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x23
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0x24
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0x25
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0x26
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0x27
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x28
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x29
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2a
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.byte	0x2b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF31
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.4byte	0x8e
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST0
	.4byte	0x1b3
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x74
	.4byte	0x72
	.4byte	.LLST1
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x74
	.4byte	0x72
	.4byte	.LLST2
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x75
	.4byte	0x48
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x75
	.4byte	0x48
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x75
	.4byte	0x48
	.uleb128 0xc
	.ascii	"day\000"
	.byte	0x1
	.byte	0x76
	.4byte	0x48
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0x76
	.4byte	0x48
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0x76
	.4byte	0x48
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0x78
	.4byte	0x8e
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF32
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.4byte	0x72
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST3
	.4byte	0x1ec
	.uleb128 0xd
	.ascii	"now\000"
	.byte	0x1
	.byte	0x62
	.4byte	0x8e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.ascii	"ts\000"
	.byte	0x1
	.byte	0x64
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF35
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0x72
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST4
	.uleb128 0xd
	.ascii	"now\000"
	.byte	0x1
	.byte	0x47
	.4byte	0x8e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.ascii	"ts\000"
	.byte	0x1
	.byte	0x49
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0x4b
	.4byte	0x48
	.4byte	.LLST5
	.byte	0x0
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
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.4byte	0x231
	.4byte	0x12a
	.ascii	"_FAT_filetime_to_time_t\000"
	.4byte	0x1b3
	.ascii	"_FAT_filetime_getDateFromRTC\000"
	.4byte	0x1ec
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
.LASF29:
	.ascii	"year\000"
.LASF20:
	.ascii	"tm_wday\000"
.LASF35:
	.ascii	"_FAT_filetime_getTimeFromRTC\000"
.LASF28:
	.ascii	"month\000"
.LASF16:
	.ascii	"tm_hour\000"
.LASF7:
	.ascii	"float\000"
.LASF24:
	.ascii	"date\000"
.LASF31:
	.ascii	"_FAT_filetime_to_time_t\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF27:
	.ascii	"second\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF8:
	.ascii	"double\000"
.LASF12:
	.ascii	"time_t\000"
.LASF14:
	.ascii	"tm_sec\000"
.LASF22:
	.ascii	"tm_isdst\000"
.LASF26:
	.ascii	"minute\000"
.LASF21:
	.ascii	"tm_yday\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF30:
	.ascii	"result\000"
.LASF15:
	.ascii	"tm_min\000"
.LASF25:
	.ascii	"hour\000"
.LASF23:
	.ascii	"time\000"
.LASF5:
	.ascii	"long long int\000"
.LASF33:
	.ascii	"GNU C 4.4.3\000"
.LASF13:
	.ascii	"char\000"
.LASF18:
	.ascii	"tm_mon\000"
.LASF2:
	.ascii	"short int\000"
.LASF34:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/fi"
	.ascii	"letime.c\000"
.LASF9:
	.ascii	"uint16_t\000"
.LASF19:
	.ascii	"tm_year\000"
.LASF10:
	.ascii	"long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF32:
	.ascii	"_FAT_filetime_getDateFromRTC\000"
.LASF17:
	.ascii	"tm_mday\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
