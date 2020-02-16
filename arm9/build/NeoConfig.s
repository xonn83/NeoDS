	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"NeoConfig.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	neoSaveConfig
	.code	16
	.thumb_func
	.type	neoSaveConfig, %function
neoSaveConfig:
.LFB170:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/NeoConfig.c"
	.loc 1 132 0
	push	{r4, r5, r6, lr}
.LCFI0:
	sub	sp, sp, #48
.LCFI1:
	.loc 1 133 0
	ldr	r0, .L6
	bl	guiConsoleLog
	.loc 1 134 0
	ldr	r0, .L6+4
	bl	guiConsoleLog
	.loc 1 135 0
	ldr	r0, .L6+8
	bl	guiConsoleLog
	.loc 1 136 0
	bl	guiConsoleDump
	.loc 1 138 0
	ldr	r0, .L6+12
	mov	r1, #1
	bl	systemOpen
	mov	r4, r0
.LVL0:
	.loc 1 140 0
	bl	guiConsoleDump
	.loc 1 142 0
	cmp	r4, #0
	bge	.L2
	mov	r0, #0
	b	.L3
.L2:
	.loc 1 147 0
	ldr	r3, .L6+16
	add	r1, sp, #40
	str	r3, [sp, #40]
	.loc 1 148 0
	mov	r3, #3
	str	r3, [r1, #4]
	.loc 1 149 0
	mov	r0, r4
	mov	r2, #8
	bl	systemWrite
	.loc 1 152 0
	bl	guiConsoleDump
	.loc 1 157 0
	ldr	r3, .L6+20
	add	r6, sp, #32
	str	r3, [sp, #32]
	.loc 1 158 0
	mov	r3, #16
	str	r3, [r6, #4]
	.loc 1 160 0
	ldr	r3, .L6+24
	mov	r2, #8
	add	r1, r7, r3
	add	r0, sp, #8
	mov	r5, r7
	bl	memcpy
	.loc 1 161 0
	mov	r3, #246
	lsl	r3, r3, #1
	ldr	r3, [r5, r3]
	.loc 1 172 0
	mov	r5, #128
	.loc 1 161 0
	str	r3, [sp, #4]
	.loc 1 162 0
	bl	neoVideoGetSize
	.loc 1 163 0
	mov	r1, r6
	.loc 1 162 0
	str	r0, [sp]
	.loc 1 163 0
	mov	r2, #8
	mov	r0, r4
	bl	systemWrite
	.loc 1 164 0
	mov	r0, r4
	mov	r1, sp
	mov	r2, #16
	bl	systemWrite
	.loc 1 167 0
	bl	guiConsoleDump
	.loc 1 172 0
	lsl	r5, r5, #9
	.loc 1 171 0
	add	r1, sp, #24
	ldr	r3, .L6+28
	.loc 1 172 0
	str	r5, [r1, #4]
	.loc 1 173 0
	mov	r0, r4
	mov	r2, #8
	.loc 1 171 0
	str	r3, [sp, #24]
	.loc 1 173 0
	bl	systemWrite
	.loc 1 175 0
	bl	guiConsoleDump
	.loc 1 176 0
	mov	r3, r7
	add	r3, r3, #252
	ldr	r1, [r3, #84]
	mov	r2, r5
	mov	r0, r4
	bl	systemWrite
	.loc 1 184 0
	mov	r5, #128
	.loc 1 179 0
	bl	guiConsoleDump
	.loc 1 184 0
	lsl	r5, r5, #4
	.loc 1 183 0
	add	r1, sp, #16
	ldr	r3, .L6+32
	.loc 1 184 0
	str	r5, [r1, #4]
	.loc 1 185 0
	mov	r0, r4
	mov	r2, #8
	.loc 1 183 0
	str	r3, [sp, #16]
	.loc 1 185 0
	bl	systemWrite
	.loc 1 186 0
	mov	r3, r7
	add	r3, r3, #252
	ldr	r1, [r3, #88]
	mov	r2, r5
	mov	r0, r4
	bl	systemWrite
	.loc 1 189 0
	bl	guiConsoleDump
	.loc 1 191 0
	mov	r0, r4
	bl	systemClose
	.loc 1 193 0
	ldr	r0, .L6+36
	bl	guiConsoleLog
	.loc 1 194 0
	bl	guiConsoleDump
	mov	r0, #1
.L3:
	.loc 1 196 0
	add	sp, sp, #48
	@ sp needed for prologue
.LVL1:
	pop	{r4, r5, r6, pc}
.L7:
	.align	2
.L6:
	.word	.LC0
	.word	.LC2
	.word	.LC4
	.word	.LANCHOR0
	.word	-1065412879
	.word	1128679217
	.word	575
	.word	1397899597
	.word	1128354372
	.word	.LC7
.LFE170:
	.size	neoSaveConfig, .-neoSaveConfig
	.align	2
	.global	neoLoadConfig
	.code	16
	.thumb_func
	.type	neoLoadConfig, %function
neoLoadConfig:
.LFB169:
	.loc 1 61 0
	push	{r4, r5, r6, lr}
.LCFI2:
.LVL2:
.LBB5:
.LBB7:
	.loc 1 46 0
	ldr	r2, .L29
	mov	r1, #1
.LBE7:
.LBE5:
	.loc 1 61 0
	sub	sp, sp, #40
.LCFI3:
.LBB9:
.LBB6:
	.loc 1 46 0
	strb	r1, [r7, r2]
	.loc 1 47 0
	mov	r2, #144
	lsl	r2, r2, #2
	mov	r1, #2
	strb	r1, [r7, r2]
	.loc 1 48 0
	ldr	r2, .L29+4
	mov	r1, #4
	strb	r1, [r7, r2]
	.loc 1 49 0
	mov	r1, #8
	add	r2, r2, #1
	strb	r1, [r7, r2]
	.loc 1 50 0
	ldr	r1, .L29+8
	mov	r2, #128
	neg	r2, r2
	strb	r2, [r7, r1]
	.loc 1 51 0
	mov	r2, #145
	lsl	r2, r2, #2
	mov	r1, #32
	strb	r1, [r7, r2]
	.loc 1 52 0
	ldr	r2, .L29+12
	mov	r1, #16
	strb	r1, [r7, r2]
.LBE6:
.LBE9:
	.loc 1 61 0
	mov	r5, r0
.LBB10:
.LBB8:
	.loc 1 53 0
	mov	r1, #64
	add	r2, r2, #1
	.loc 1 54 0
	mov	r0, #2
.LVL3:
	.loc 1 53 0
	strb	r1, [r7, r2]
	.loc 1 54 0
	bl	neoSystemSetClockDivide
	.loc 1 55 0
	mov	r0, #1
	bl	neoVideoSetSize
	.loc 1 56 0
	mov	r3, r7
	add	r3, r3, #252
	mov	r2, #128
	ldr	r0, [r3, #84]
	mov	r1, #0
	lsl	r2, r2, #9
	bl	memset
	.loc 1 57 0
	mov	r3, r7
	add	r3, r3, #252
	mov	r2, #128
	ldr	r0, [r3, #88]
	mov	r1, #0
	lsl	r2, r2, #4
	bl	memset
.LBE8:
.LBE10:
	.loc 1 67 0
	ldr	r4, .L29+16
	mov	r2, #128
	mov	r1, r5
	mov	r0, r4
	lsl	r2, r2, #1
	bl	strncpy
	.loc 1 68 0
	mov	r0, r4
	mov	r1, #46
	bl	strrchr
	.loc 1 69 0
	cmp	r0, #0
	beq	.L9
	mov	r3, #0
	strb	r3, [r0]
.L9:
	.loc 1 70 0
	ldr	r4, .L29+16
	ldr	r1, .L29+20
	mov	r0, r4
	bl	strcat
	.loc 1 71 0
	mov	r0, r4
	mov	r1, #0
	bl	systemOpen
	mov	r4, r0
.LVL4:
	.loc 1 72 0
	cmp	r0, #0
	blt	.L26
.LVL5:
	.loc 1 78 0
	add	r5, sp, #32
.LVL6:
	mov	r2, #8
	mov	r1, r5
	bl	systemRead
.LVL7:
	.loc 1 79 0
	ldr	r2, [sp, #32]
	ldr	r3, .L29+24
	cmp	r2, r3
	bne	.L12
	mov	r2, #0
	str	r2, [sp, #4]
.LBB11:
	.loc 1 89 0
	add	r5, sp, #24
	.loc 1 97 0
	add	r6, sp, #8
	b	.L13
.L12:
.LBE11:
	.loc 1 81 0
	mov	r0, r4
	bl	systemClose
.LVL8:
.L26:
	mov	r0, #0
	.loc 1 82 0
	b	.L11
.LVL9:
.L22:
.LBB12:
	.loc 1 89 0
	mov	r2, #8
	mov	r0, r4
	mov	r1, r5
	bl	systemRead
	.loc 1 90 0
	ldr	r3, [r5]
	ldr	r2, .L29+28
	cmp	r3, r2
	beq	.L16
	ldr	r2, .L29+32
	cmp	r3, r2
	beq	.L17
	ldr	r1, .L29+36
	ldr	r2, [r5, #4]
	cmp	r3, r1
	bne	.L24
	b	.L28
.L16:
	.loc 1 92 0
	ldr	r3, [r5, #4]
	cmp	r3, #16
	bne	.L12
	.loc 1 97 0
	mov	r0, r4
	mov	r1, r6
	mov	r2, #16
	bl	systemRead
	.loc 1 98 0
	ldr	r3, .L29
	add	r1, sp, #16
	add	r0, r7, r3
	mov	r2, #8
	bl	memcpy
	.loc 1 99 0
	ldr	r0, [r6, #4]
	bl	neoSystemSetClockDivide
	.loc 1 100 0
	ldrb	r0, [r6]
	bl	neoVideoSetSize
	.loc 1 101 0
	b	.L19
.L17:
	.loc 1 103 0
	mov	r3, #128
	ldr	r2, [r5, #4]
	lsl	r3, r3, #9
	cmp	r2, r3
	bne	.L12
	.loc 1 108 0
	mov	r3, r7
	add	r3, r3, #252
	ldr	r1, [r3, #84]
	b	.L25
.L28:
	.loc 1 111 0
	mov	r3, #128
	lsl	r3, r3, #4
	cmp	r2, r3
	bne	.L12
	.loc 1 116 0
	mov	r3, r7
	add	r3, r3, #252
	ldr	r1, [r3, #88]
.L25:
	mov	r0, r4
	bl	systemRead
	.loc 1 117 0
	b	.L19
.L24:
	.loc 1 120 0
	mov	r1, r2
	mov	r0, r4
	mov	r2, #1
	bl	systemSeek
.L19:
.LBE12:
	.loc 1 85 0
	ldr	r2, [sp, #4]
	add	r2, r2, #1
	str	r2, [sp, #4]
.L13:
	ldr	r3, [sp, #36]
	ldr	r2, [sp, #4]
	cmp	r2, r3
	bcc	.L22
	.loc 1 125 0
	mov	r0, r4
	bl	systemClose
	mov	r0, #1
.LVL10:
.L11:
	.loc 1 129 0
	add	sp, sp, #40
	@ sp needed for prologue
.LVL11:
.LVL12:
	pop	{r4, r5, r6, pc}
.L30:
	.align	2
.L29:
	.word	575
	.word	577
	.word	579
	.word	581
	.word	.LANCHOR0
	.word	.LC10
	.word	-1065412879
	.word	1128679217
	.word	1397899597
	.word	1128354372
.LFE169:
	.size	neoLoadConfig, .-neoLoadConfig
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"\000"
.LC2:
	.ascii	"Saving config...\000"
.LC4:
	.ascii	"*** DON'T POWER OFF ***\000"
.LC7:
	.ascii	"Save complete!\000"
.LC10:
	.ascii	".cfg\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_szConfigFile, %object
	.size	g_szConfigFile, 256
g_szConfigFile:
	.space	256
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
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.byte	0x4
	.4byte	.LCFI0-.LFB170
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
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x40
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.byte	0x4
	.4byte	.LCFI2-.LFB169
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
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x38
	.align	2
.LEFDE2:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB170-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 64
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB169-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE169-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 5 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 6 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 7 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 8 "C:/Users/GRX/NeoDS-master-old/arm9/include/cyclone.h"
	.file 9 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoCpu.h"
	.file 10 "C:/Users/GRX/NeoDS-master-old/arm9/../common/source/NeoAudioStream.h"
	.file 11 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoSystem.h"
	.file 12 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoVideo.h"
	.file 13 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.section	.debug_info
	.4byte	0xf83
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF215
	.byte	0x1
	.4byte	.LASF216
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2a
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x35
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x36
	.4byte	0x57
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.4byte	0x69
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x50
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x48
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x3
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x3
	.byte	0x63
	.4byte	0x4c
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x64
	.4byte	0x70
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x3
	.byte	0x68
	.4byte	0x3a
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x3
	.byte	0x69
	.4byte	0x5e
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0x7d
	.4byte	0xf4
	.uleb128 0x7
	.4byte	.LASF15
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF16
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x7d
	.4byte	0xdf
	.uleb128 0x8
	.byte	0x4
	.4byte	0x105
	.uleb128 0x9
	.byte	0x1
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x8
	.byte	0x4
	.4byte	0x10a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF19
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0x8
	.byte	0x4
	.4byte	0x12d
	.uleb128 0xc
	.4byte	0x10a
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x28
	.byte	0x4
	.2byte	0x18c
	.4byte	0x1d6
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x18d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x18e
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x18f
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x190
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x191
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x192
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x193
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x194
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x195
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x196
	.4byte	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x198
	.4byte	0x132
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x8
	.byte	0x5
	.byte	0x29
	.4byte	0x20b
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x5
	.byte	0x2a
	.4byte	0x20b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x5
	.byte	0x2b
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11e
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x5
	.byte	0x2c
	.4byte	0x1e2
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0x9c
	.4byte	0x23d
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x6
	.byte	0xa1
	.4byte	0x21c
	.uleb128 0x12
	.4byte	.LASF40
	.2byte	0x2020
	.byte	0x6
	.2byte	0x11a
	.4byte	0x2d4
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x11b
	.4byte	0x23d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x11e
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x121
	.4byte	0x2d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x122
	.4byte	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x123
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x124
	.4byte	0x2e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x125
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x126
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x201c
	.byte	0x0
	.uleb128 0x13
	.4byte	0x90
	.4byte	0x2e5
	.uleb128 0x14
	.4byte	0x107
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x90
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x128
	.4byte	0x248
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x59
	.4byte	0x324
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
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x62
	.4byte	0x345
	.uleb128 0x7
	.4byte	.LASF53
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF54
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF55
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF56
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x6a
	.4byte	0x366
	.uleb128 0x7
	.4byte	.LASF57
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF58
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF59
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF60
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x72
	.4byte	0x37b
	.uleb128 0x7
	.4byte	.LASF61
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF62
	.sleb128 1
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0xb0
	.byte	0x8
	.byte	0x15
	.4byte	0x511
	.uleb128 0x15
	.ascii	"d\000"
	.byte	0x8
	.byte	0x16
	.4byte	0x511
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.ascii	"a\000"
	.byte	0x8
	.byte	0x17
	.4byte	0x511
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.ascii	"pc\000"
	.byte	0x8
	.byte	0x18
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.ascii	"srh\000"
	.byte	0x8
	.byte	0x19
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x8
	.byte	0x1a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x8
	.byte	0x1b
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x15
	.ascii	"irq\000"
	.byte	0x8
	.byte	0x1c
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x15
	.ascii	"osp\000"
	.byte	0x8
	.byte	0x1d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.ascii	"xc\000"
	.byte	0x8
	.byte	0x1e
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x8
	.byte	0x1f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x8
	.byte	0x20
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x8
	.byte	0x21
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x8
	.byte	0x22
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x8
	.byte	0x23
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x8
	.byte	0x24
	.4byte	0x531
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x8
	.byte	0x25
	.4byte	0x531
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x8
	.byte	0x26
	.4byte	0x531
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x8
	.byte	0x27
	.4byte	0x531
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x8
	.byte	0x28
	.4byte	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x8
	.byte	0x29
	.4byte	0x55f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x8
	.byte	0x2a
	.4byte	0x576
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x8
	.byte	0x2b
	.4byte	0x531
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x8
	.byte	0x2c
	.4byte	0x531
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x8
	.byte	0x2d
	.4byte	0x531
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0x8
	.byte	0x2e
	.4byte	0x58c
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x8
	.byte	0x2f
	.4byte	0xff
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x8
	.byte	0x30
	.4byte	0x598
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0x8
	.byte	0x31
	.4byte	0x59e
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x13
	.4byte	0x7b
	.4byte	0x521
	.uleb128 0x16
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	0x7b
	.4byte	0x531
	.uleb128 0x18
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x521
	.uleb128 0x19
	.byte	0x1
	.4byte	0x548
	.uleb128 0x18
	.4byte	0x7b
	.uleb128 0x18
	.4byte	0x33
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x537
	.uleb128 0x19
	.byte	0x1
	.4byte	0x55f
	.uleb128 0x18
	.4byte	0x7b
	.uleb128 0x18
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x54e
	.uleb128 0x19
	.byte	0x1
	.4byte	0x576
	.uleb128 0x18
	.4byte	0x7b
	.uleb128 0x18
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x565
	.uleb128 0x17
	.byte	0x1
	.4byte	0x69
	.4byte	0x58c
	.uleb128 0x18
	.4byte	0x69
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x57c
	.uleb128 0x1a
	.byte	0x1
	.4byte	0x69
	.uleb128 0x8
	.byte	0x4
	.4byte	0x592
	.uleb128 0x13
	.4byte	0x7b
	.4byte	0x5ae
	.uleb128 0x16
	.4byte	0x107
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x9
	.byte	0x6
	.4byte	0x37b
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x9
	.byte	0x8
	.4byte	0x5c4
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5ca
	.uleb128 0x17
	.byte	0x1
	.4byte	0xa9
	.4byte	0x5da
	.uleb128 0x18
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x9
	.byte	0x9
	.4byte	0x5e5
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5eb
	.uleb128 0x17
	.byte	0x1
	.4byte	0xb3
	.4byte	0x5fb
	.uleb128 0x18
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x9
	.byte	0xa
	.4byte	0x606
	.uleb128 0x8
	.byte	0x4
	.4byte	0x60c
	.uleb128 0x17
	.byte	0x1
	.4byte	0xbe
	.4byte	0x61c
	.uleb128 0x18
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x9
	.byte	0xc
	.4byte	0x627
	.uleb128 0x8
	.byte	0x4
	.4byte	0x62d
	.uleb128 0x19
	.byte	0x1
	.4byte	0x63e
	.uleb128 0x18
	.4byte	0xbe
	.uleb128 0x18
	.4byte	0xa9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0x9
	.byte	0xd
	.4byte	0x649
	.uleb128 0x8
	.byte	0x4
	.4byte	0x64f
	.uleb128 0x19
	.byte	0x1
	.4byte	0x660
	.uleb128 0x18
	.4byte	0xbe
	.uleb128 0x18
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x9
	.byte	0xe
	.4byte	0x66b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x671
	.uleb128 0x19
	.byte	0x1
	.4byte	0x682
	.uleb128 0x18
	.4byte	0xbe
	.uleb128 0x18
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0x9
	.byte	0x10
	.4byte	0x606
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0xc
	.byte	0xa
	.byte	0x17
	.4byte	0x6d2
	.uleb128 0x11
	.4byte	.LASF94
	.byte	0xa
	.byte	0x18
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.ascii	"end\000"
	.byte	0xa
	.byte	0x19
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.ascii	"acc\000"
	.byte	0xa
	.byte	0x1a
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF95
	.byte	0xa
	.byte	0x1b
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xa
	.byte	0x1c
	.4byte	0x68d
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0xc
	.byte	0xa
	.byte	0x1f
	.4byte	0x714
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0xa
	.byte	0x20
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0xa
	.byte	0x21
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF100
	.byte	0xa
	.byte	0x22
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0xa
	.byte	0x23
	.4byte	0x6dd
	.uleb128 0x1b
	.4byte	.LASF185
	.byte	0x1
	.byte	0xb
	.byte	0x99
	.4byte	0x768
	.uleb128 0x7
	.4byte	.LASF102
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF103
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF104
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF105
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF106
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF107
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF108
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF109
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF110
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF111
	.sleb128 9
	.byte	0x0
	.uleb128 0x1c
	.2byte	0x248
	.byte	0xb
	.byte	0xc0
	.4byte	0xb56
	.uleb128 0x15
	.ascii	"cpu\000"
	.byte	0xb
	.byte	0xc1
	.4byte	0x5ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0xb
	.byte	0xc4
	.4byte	0xb56
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0xb
	.byte	0xc7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0xb
	.byte	0xc8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0xb
	.byte	0xcb
	.4byte	0xb66
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0xb
	.byte	0xcc
	.4byte	0x714
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0xb
	.byte	0xcd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0xb
	.byte	0xd0
	.4byte	0x2fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0xb
	.byte	0xd1
	.4byte	0x2fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0xb
	.byte	0xd2
	.4byte	0x2fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0xb
	.byte	0xd3
	.4byte	0x2fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0xb
	.byte	0xd4
	.4byte	0x2fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0xb
	.byte	0xd5
	.4byte	0x2fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0xb
	.byte	0xd6
	.4byte	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0xb
	.byte	0xd7
	.4byte	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x11
	.4byte	.LASF126
	.byte	0xb
	.byte	0xd8
	.4byte	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0xb
	.byte	0xda
	.4byte	0xb76
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x11
	.4byte	.LASF128
	.byte	0xb
	.byte	0xdd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0xb
	.byte	0xde
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0xb
	.byte	0xdf
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0xb
	.byte	0xe0
	.4byte	0xb87
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0xb
	.byte	0xe1
	.4byte	0xb87
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0xb
	.byte	0xe2
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0xb
	.byte	0xe5
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0xb
	.byte	0xe6
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0xb
	.byte	0xe7
	.4byte	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0xb
	.byte	0xe8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xb
	.byte	0xea
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0xb
	.byte	0xeb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0xb
	.byte	0xec
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0xb
	.byte	0xed
	.4byte	0xb92
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0xb
	.byte	0xee
	.4byte	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0xb
	.byte	0xf1
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0xb
	.byte	0xf2
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0xb
	.byte	0xf3
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0xb
	.byte	0xf4
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0xb
	.byte	0xf7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0xb
	.byte	0xf8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0xb
	.byte	0xf9
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0xb
	.byte	0xfa
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xb
	.byte	0xfb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x11
	.4byte	.LASF152
	.byte	0xb
	.byte	0xfc
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0xb
	.byte	0xfd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xe
	.4byte	.LASF154
	.byte	0xb
	.2byte	0x102
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xe
	.4byte	.LASF155
	.byte	0xb
	.2byte	0x103
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xe
	.4byte	.LASF156
	.byte	0xb
	.2byte	0x106
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xe
	.4byte	.LASF157
	.byte	0xb
	.2byte	0x108
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xe
	.4byte	.LASF158
	.byte	0xb
	.2byte	0x109
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xe
	.4byte	.LASF159
	.byte	0xb
	.2byte	0x10a
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xe
	.4byte	.LASF160
	.byte	0xb
	.2byte	0x10b
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xe
	.4byte	.LASF161
	.byte	0xb
	.2byte	0x10d
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xe
	.4byte	.LASF162
	.byte	0xb
	.2byte	0x10e
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xe
	.4byte	.LASF163
	.byte	0xb
	.2byte	0x10f
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xe
	.4byte	.LASF164
	.byte	0xb
	.2byte	0x110
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xe
	.4byte	.LASF165
	.byte	0xb
	.2byte	0x111
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xe
	.4byte	.LASF166
	.byte	0xb
	.2byte	0x114
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xe
	.4byte	.LASF167
	.byte	0xb
	.2byte	0x115
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xe
	.4byte	.LASF168
	.byte	0xb
	.2byte	0x116
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xe
	.4byte	.LASF169
	.byte	0xb
	.2byte	0x117
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xe
	.4byte	.LASF170
	.byte	0xb
	.2byte	0x118
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xe
	.4byte	.LASF171
	.byte	0xb
	.2byte	0x11b
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xe
	.4byte	.LASF172
	.byte	0xb
	.2byte	0x11c
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xe
	.4byte	.LASF173
	.byte	0xb
	.2byte	0x11f
	.4byte	0xba2
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xe
	.4byte	.LASF174
	.byte	0xb
	.2byte	0x122
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xe
	.4byte	.LASF175
	.byte	0xb
	.2byte	0x123
	.4byte	0xbb2
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0x13
	.4byte	0x11e
	.4byte	0xb66
	.uleb128 0x16
	.4byte	0x107
	.byte	0x8
	.byte	0x0
	.uleb128 0x13
	.4byte	0x6d2
	.4byte	0xb76
	.uleb128 0x16
	.4byte	0x107
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb7c
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb82
	.uleb128 0xc
	.4byte	0xa9
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb8d
	.uleb128 0xc
	.4byte	0xbe
	.uleb128 0x13
	.4byte	0xbe
	.4byte	0xba2
	.uleb128 0x16
	.4byte	0x107
	.byte	0xf
	.byte	0x0
	.uleb128 0x13
	.4byte	0xa9
	.4byte	0xbb2
	.uleb128 0x16
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x13
	.4byte	0xa9
	.4byte	0xbc1
	.uleb128 0x1d
	.4byte	0x107
	.byte	0x0
	.uleb128 0x1e
	.2byte	0x400
	.byte	0xb
	.byte	0xbf
	.4byte	0xbdc
	.uleb128 0x1f
	.4byte	0x768
	.uleb128 0x20
	.4byte	.LASF217
	.byte	0xb
	.2byte	0x125
	.4byte	0xbdc
	.byte	0x0
	.uleb128 0x13
	.4byte	0xbe
	.4byte	0xbec
	.uleb128 0x16
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF176
	.2byte	0x2000
	.byte	0xb
	.byte	0xbe
	.4byte	0xc72
	.uleb128 0x22
	.4byte	0xbc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF177
	.byte	0xb
	.2byte	0x128
	.4byte	0xc72
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xe
	.4byte	.LASF178
	.byte	0xb
	.2byte	0x129
	.4byte	0xc82
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xe
	.4byte	.LASF179
	.byte	0xb
	.2byte	0x12a
	.4byte	0xc92
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xe
	.4byte	.LASF180
	.byte	0xb
	.2byte	0x12b
	.4byte	0xca2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xe
	.4byte	.LASF181
	.byte	0xb
	.2byte	0x12c
	.4byte	0xcb2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xe
	.4byte	.LASF182
	.byte	0xb
	.2byte	0x12d
	.4byte	0xcc2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xe
	.4byte	.LASF183
	.byte	0xb
	.2byte	0x12e
	.4byte	0xcd2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0x13
	.4byte	0x5b9
	.4byte	0xc82
	.uleb128 0x16
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x5da
	.4byte	0xc92
	.uleb128 0x16
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x5fb
	.4byte	0xca2
	.uleb128 0x16
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x61c
	.4byte	0xcb2
	.uleb128 0x16
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x63e
	.4byte	0xcc2
	.uleb128 0x16
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x660
	.4byte	0xcd2
	.uleb128 0x16
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x682
	.4byte	0xce2
	.uleb128 0x16
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF184
	.byte	0xb
	.2byte	0x12f
	.4byte	0xbec
	.uleb128 0x1b
	.4byte	.LASF186
	.byte	0x1
	.byte	0xc
	.byte	0xd
	.4byte	0xd0d
	.uleb128 0x7
	.4byte	.LASF187
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF188
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF189
	.sleb128 2
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF190
	.byte	0x8
	.byte	0x1
	.byte	0xa
	.4byte	0xd36
	.uleb128 0x11
	.4byte	.LASF191
	.byte	0x1
	.byte	0xb
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF192
	.byte	0x1
	.byte	0xc
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF193
	.byte	0x1
	.byte	0xd
	.4byte	0xd0d
	.uleb128 0x10
	.4byte	.LASF194
	.byte	0x8
	.byte	0x1
	.byte	0xf
	.4byte	0xd6a
	.uleb128 0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0x10
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0x11
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF195
	.byte	0x1
	.byte	0x12
	.4byte	0xd41
	.uleb128 0x10
	.4byte	.LASF196
	.byte	0x10
	.byte	0x1
	.byte	0x14
	.4byte	0xdac
	.uleb128 0x11
	.4byte	.LASF197
	.byte	0x1
	.byte	0x15
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0x1
	.byte	0x16
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF173
	.byte	0x1
	.byte	0x17
	.4byte	0xba2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF198
	.byte	0x1
	.byte	0x18
	.4byte	0xd75
	.uleb128 0x23
	.4byte	.LASF218
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF219
	.byte	0x1
	.byte	0x83
	.4byte	0xf4
	.4byte	.LFB170
	.4byte	.LFE170
	.4byte	.LLST0
	.4byte	0xe30
	.uleb128 0x25
	.ascii	"fd\000"
	.byte	0x1
	.byte	0x8a
	.4byte	0x69
	.4byte	.LLST1
	.uleb128 0x26
	.4byte	.LASF199
	.byte	0x1
	.byte	0x92
	.4byte	0xd36
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.4byte	.LASF200
	.byte	0x1
	.byte	0x9c
	.4byte	0xd6a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.4byte	.LASF201
	.byte	0x1
	.byte	0x9f
	.4byte	0xdac
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.4byte	.LASF202
	.byte	0x1
	.byte	0xaa
	.4byte	0xd6a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.4byte	.LASF203
	.byte	0x1
	.byte	0xb6
	.4byte	0xd6a
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF220
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.4byte	0xf4
	.4byte	.LFB169
	.4byte	.LFE169
	.4byte	.LLST2
	.4byte	0xec1
	.uleb128 0x28
	.4byte	.LASF221
	.byte	0x1
	.byte	0x3c
	.4byte	0x127
	.4byte	.LLST3
	.uleb128 0x29
	.ascii	"i\000"
	.byte	0x1
	.byte	0x3e
	.4byte	0xbe
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2a
	.4byte	.LASF205
	.byte	0x1
	.byte	0x44
	.4byte	0x111
	.uleb128 0x25
	.ascii	"fd\000"
	.byte	0x1
	.byte	0x47
	.4byte	0x69
	.4byte	.LLST4
	.uleb128 0x26
	.4byte	.LASF199
	.byte	0x1
	.byte	0x4d
	.4byte	0xd36
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.4byte	0xdb7
	.4byte	.LBB5
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x41
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x26
	.4byte	.LASF204
	.byte	0x1
	.byte	0x56
	.4byte	0xd6a
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.4byte	.LASF201
	.byte	0x1
	.byte	0x57
	.4byte	0xdac
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF206
	.byte	0x6
	.2byte	0x12e
	.4byte	0xecd
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2eb
	.uleb128 0x13
	.4byte	0x10a
	.4byte	0xee3
	.uleb128 0x16
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF207
	.byte	0x1
	.byte	0x29
	.4byte	0xed3
	.byte	0x5
	.byte	0x3
	.4byte	g_szConfigFile
	.uleb128 0x2e
	.4byte	.LASF208
	.byte	0xd
	.byte	0x56
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF209
	.byte	0xd
	.byte	0x57
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	0xf1e
	.4byte	0xf1e
	.uleb128 0x16
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf24
	.uleb128 0x2f
	.4byte	0x57
	.uleb128 0x30
	.4byte	.LASF210
	.byte	0x4
	.2byte	0x19c
	.4byte	0xf0e
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	0x1d6
	.4byte	0xf47
	.uleb128 0x16
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x30
	.4byte	.LASF211
	.byte	0x4
	.2byte	0x19f
	.4byte	0xf37
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF212
	.byte	0x6
	.2byte	0x12b
	.4byte	0x2eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.4byte	.LASF213
	.byte	0xb
	.2byte	0x149
	.4byte	0xf72
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0xce2
	.uleb128 0x30
	.4byte	.LASF214
	.byte	0xb
	.2byte	0x14d
	.4byte	0xce2
	.byte	0x1
	.byte	0x1
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x4
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
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x1d
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xf87
	.4byte	0xdbf
	.ascii	"neoSaveConfig\000"
	.4byte	0xe30
	.ascii	"neoLoadConfig\000"
	.4byte	0xf63
	.ascii	"g_neo\000"
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
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF192:
	.ascii	"chunkCount\000"
.LASF166:
	.ascii	"irqVectorLatch\000"
.LASF96:
	.ascii	"TNeoADPCMStream\000"
.LASF82:
	.ascii	"ResetCallback\000"
.LASF16:
	.ascii	"true\000"
.LASF72:
	.ascii	"read8\000"
.LASF50:
	.ascii	"OBJMODE_BLENDED\000"
.LASF17:
	.ascii	"bool\000"
.LASF169:
	.ascii	"sramProtectLatch\000"
.LASF208:
	.ascii	"mosaicShadow\000"
.LASF125:
	.ascii	"pSpriteRam\000"
.LASF188:
	.ascii	"NEOVIDEO_SCALED\000"
.LASF36:
	.ascii	"GL_POSITION\000"
.LASF111:
	.ascii	"NEOROM_COUNT\000"
.LASF42:
	.ascii	"clearColor\000"
.LASF155:
	.ascii	"sramProtection\000"
.LASF210:
	.ascii	"bgControl\000"
.LASF172:
	.ascii	"debug\000"
.LASF102:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF29:
	.ascii	"type\000"
.LASF122:
	.ascii	"pSram\000"
.LASF47:
	.ascii	"nextPBlock\000"
.LASF162:
	.ascii	"ctrl2Reg\000"
.LASF70:
	.ascii	"membase\000"
.LASF21:
	.ascii	"angle\000"
.LASF196:
	.ascii	"_TConfigChunkV1\000"
.LASF33:
	.ascii	"data\000"
.LASF148:
	.ascii	"cpuClocksPerScanline\000"
.LASF146:
	.ascii	"tileScaleY\000"
.LASF106:
	.ascii	"NEOROM_AUDODATA\000"
.LASF215:
	.ascii	"GNU C 4.4.3\000"
.LASF187:
	.ascii	"NEOVIDEO_NORMAL\000"
.LASF134:
	.ascii	"scanline\000"
.LASF44:
	.ascii	"texturePtrs\000"
.LASF100:
	.ascii	"frequency\000"
.LASF123:
	.ascii	"pCard\000"
.LASF154:
	.ascii	"sramProtectCount\000"
.LASF80:
	.ascii	"fetch32\000"
.LASF25:
	.ascii	"scaleY\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF101:
	.ascii	"TNeoADPCMBStream\000"
.LASF10:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF73:
	.ascii	"read16\000"
.LASF105:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF52:
	.ascii	"OBJMODE_BITMAP\000"
.LASF177:
	.ascii	"cpuRead8Table\000"
.LASF219:
	.ascii	"neoSaveConfig\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF128:
	.ascii	"smaAddr0\000"
.LASF129:
	.ascii	"smaAddr1\000"
.LASF85:
	.ascii	"TCycloneContext\000"
.LASF171:
	.ascii	"active\000"
.LASF118:
	.ascii	"pRom0\000"
.LASF119:
	.ascii	"pRom1\000"
.LASF19:
	.ascii	"long int\000"
.LASF55:
	.ascii	"OBJSHAPE_TALL\000"
.LASF161:
	.ascii	"ctrl1Reg\000"
.LASF15:
	.ascii	"false\000"
.LASF45:
	.ascii	"activeTexture\000"
.LASF113:
	.ascii	"spriteCount\000"
.LASF4:
	.ascii	"short int\000"
.LASF141:
	.ascii	"paletteDirty\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF207:
	.ascii	"g_szConfigFile\000"
.LASF14:
	.ascii	"double\000"
.LASF151:
	.ascii	"paletteBank\000"
.LASF209:
	.ascii	"mosaicShadowSub\000"
.LASF194:
	.ascii	"_TChunkHeader\000"
.LASF165:
	.ascii	"coinReg\000"
.LASF185:
	.ascii	"_TNeoRomRegion\000"
.LASF12:
	.ascii	"uint32\000"
.LASF200:
	.ascii	"v1Type\000"
.LASF107:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF81:
	.ascii	"IrqCallback\000"
.LASF175:
	.ascii	"varEnd\000"
.LASF49:
	.ascii	"OBJMODE_NORMAL\000"
.LASF189:
	.ascii	"NEOVIDEO_SIZECOUNT\000"
.LASF212:
	.ascii	"glGlobalData\000"
.LASF157:
	.ascii	"vramMod\000"
.LASF121:
	.ascii	"pRam\000"
.LASF38:
	.ascii	"GL_TEXTURE\000"
.LASF133:
	.ascii	"smaRand\000"
.LASF86:
	.ascii	"TRead8Func\000"
.LASF75:
	.ascii	"write8\000"
.LASF167:
	.ascii	"screenDarkLatch\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF173:
	.ascii	"keyGrid\000"
.LASF159:
	.ascii	"displayControlMask\000"
.LASF153:
	.ascii	"romBankAddress\000"
.LASF213:
	.ascii	"g_neo\000"
.LASF20:
	.ascii	"long unsigned int\000"
.LASF46:
	.ascii	"nextBlock\000"
.LASF51:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF138:
	.ascii	"displayCounter\000"
.LASF140:
	.ascii	"spriteMask\000"
.LASF198:
	.ascii	"TConfigChunkV1\000"
.LASF127:
	.ascii	"bankTable\000"
.LASF98:
	.ascii	"initOffset\000"
.LASF34:
	.ascii	"cur_size\000"
.LASF32:
	.ascii	"DynamicArray\000"
.LASF28:
	.ascii	"size\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF91:
	.ascii	"TWrite32Func\000"
.LASF201:
	.ascii	"v1Header\000"
.LASF115:
	.ascii	"adpcm\000"
.LASF74:
	.ascii	"read32\000"
.LASF71:
	.ascii	"checkpc\000"
.LASF150:
	.ascii	"watchdogCounter\000"
.LASF120:
	.ascii	"pBios\000"
.LASF193:
	.ascii	"TConfigFileHeader\000"
.LASF149:
	.ascii	"irqPending\000"
.LASF39:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF147:
	.ascii	"cpuClockDivide\000"
.LASF24:
	.ascii	"scaleX\000"
.LASF76:
	.ascii	"write16\000"
.LASF89:
	.ascii	"TWrite8Func\000"
.LASF132:
	.ascii	"smaBankbit\000"
.LASF180:
	.ascii	"cpuWrite8Table\000"
.LASF64:
	.ascii	"unused\000"
.LASF145:
	.ascii	"tileScaleX\000"
.LASF195:
	.ascii	"TChunkHeader\000"
.LASF202:
	.ascii	"sramType\000"
.LASF92:
	.ascii	"TCheckPcFunc\000"
.LASF37:
	.ascii	"GL_MODELVIEW\000"
.LASF63:
	.ascii	"Cyclone\000"
.LASF31:
	.ascii	"BgState\000"
.LASF103:
	.ascii	"NEOROM_BIOS\000"
.LASF61:
	.ascii	"OBJCOLOR_16\000"
.LASF117:
	.ascii	"adpcmActive\000"
.LASF114:
	.ascii	"romBankCount\000"
.LASF186:
	.ascii	"_TNeoVideoSize\000"
.LASF104:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF137:
	.ascii	"vramBaseMask\000"
.LASF13:
	.ascii	"float\000"
.LASF59:
	.ascii	"OBJSIZE_32\000"
.LASF66:
	.ascii	"prev_pc\000"
.LASF41:
	.ascii	"matrixMode\000"
.LASF130:
	.ascii	"smaBankAddr\000"
.LASF184:
	.ascii	"TNeoContext\000"
.LASF211:
	.ascii	"bgState\000"
.LASF203:
	.ascii	"cardType\000"
.LASF30:
	.ascii	"dirty\000"
.LASF40:
	.ascii	"gl_hidden_globals\000"
.LASF68:
	.ascii	"state_flags\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF136:
	.ascii	"pVramBase\000"
.LASF95:
	.ascii	"step\000"
.LASF204:
	.ascii	"chunkHeader\000"
.LASF206:
	.ascii	"glGlob\000"
.LASF108:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF26:
	.ascii	"scrollX\000"
.LASF191:
	.ascii	"magic\000"
.LASF183:
	.ascii	"cpuCheckPcTable\000"
.LASF69:
	.ascii	"cycles\000"
.LASF170:
	.ascii	"paletteRamLatch\000"
.LASF217:
	.ascii	"fill\000"
.LASF205:
	.ascii	"pExt\000"
.LASF35:
	.ascii	"GL_PROJECTION\000"
.LASF58:
	.ascii	"OBJSIZE_16\000"
.LASF216:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/NeoConfig"
	.ascii	".c\000"
.LASF23:
	.ascii	"centerY\000"
.LASF218:
	.ascii	"neoLoadDefaultConfig\000"
.LASF190:
	.ascii	"_TConfigFileHeader\000"
.LASF178:
	.ascii	"cpuRead16Table\000"
.LASF77:
	.ascii	"write32\000"
.LASF124:
	.ascii	"pVram\000"
.LASF142:
	.ascii	"pTileBuffer\000"
.LASF18:
	.ascii	"char\000"
.LASF168:
	.ascii	"fixedRomLatch\000"
.LASF83:
	.ascii	"UnrecognizedCallback\000"
.LASF160:
	.ascii	"displayCounterLoad\000"
.LASF97:
	.ascii	"_TNeoADPCMBStream\000"
.LASF135:
	.ascii	"frameCount\000"
.LASF93:
	.ascii	"_TNeoADPCMStream\000"
.LASF139:
	.ascii	"autoAnimationCounter\000"
.LASF78:
	.ascii	"fetch8\000"
.LASF220:
	.ascii	"neoLoadConfig\000"
.LASF94:
	.ascii	"offset\000"
.LASF57:
	.ascii	"OBJSIZE_8\000"
.LASF56:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF62:
	.ascii	"OBJCOLOR_256\000"
.LASF67:
	.ascii	"reserved\000"
.LASF197:
	.ascii	"videoSize\000"
.LASF22:
	.ascii	"centerX\000"
.LASF199:
	.ascii	"fileHeader\000"
.LASF27:
	.ascii	"scrollY\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF221:
	.ascii	"szFileName\000"
.LASF112:
	.ascii	"pVideoWriteTable\000"
.LASF87:
	.ascii	"TRead16Func\000"
.LASF164:
	.ascii	"ctrl4Reg\000"
.LASF53:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF79:
	.ascii	"fetch16\000"
.LASF109:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF43:
	.ascii	"textures\000"
.LASF182:
	.ascii	"cpuWrite32Table\000"
.LASF152:
	.ascii	"fixedBank\000"
.LASF116:
	.ascii	"adpcmb\000"
.LASF88:
	.ascii	"TRead32Func\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF110:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF65:
	.ascii	"flags\000"
.LASF90:
	.ascii	"TWrite16Func\000"
.LASF143:
	.ascii	"tileOffsetX\000"
.LASF144:
	.ascii	"tileOffsetY\000"
.LASF214:
	.ascii	"g_neoContext\000"
.LASF54:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF156:
	.ascii	"vramOffset\000"
.LASF60:
	.ascii	"OBJSIZE_64\000"
.LASF48:
	.ascii	"nameCount\000"
.LASF131:
	.ascii	"smaBankoffset\000"
.LASF176:
	.ascii	"_TNeoContext\000"
.LASF181:
	.ascii	"cpuWrite16Table\000"
.LASF126:
	.ascii	"pPalette\000"
.LASF179:
	.ascii	"cpuRead32Table\000"
.LASF158:
	.ascii	"displayControl\000"
.LASF99:
	.ascii	"freqCounter\000"
.LASF163:
	.ascii	"ctrl3Reg\000"
.LASF174:
	.ascii	"frameCounter\000"
.LASF84:
	.ascii	"internal\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
