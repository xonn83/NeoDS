	.code	16
	.file	"NeoIO.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	neoWriteSystemLatch16
	.code 16
	.thumb_func
	.type	neoWriteSystemLatch16, %function
neoWriteSystemLatch16:
.LFB110:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoIO.c"
	.loc 1 132 0
	push	{lr}
.LCFI0:
.LVL0:
	.loc 1 133 0
	lsl	r3, r0, #27
	.loc 1 135 0
	lsl	r0, r0, #28
.LVL1:
	lsr	r0, r0, #29
	.loc 1 132 0
	sub	sp, sp, #4
.LCFI1:
	.loc 1 133 0
	lsr	r1, r3, #31
.LVL2:
	.loc 1 135 0
	cmp	r0, #7
	bhi	.L15
	ldr	r2, .L17
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.section	.rodata
	.align	2
	.align	2
.L8:
	.word	.L3
	.word	.L4
	.word	.L15
	.word	.L15
	.word	.L15
	.word	.L5
	.word	.L6
	.word	.L7
	.text
.L3:
	.loc 1 137 0
	ldr	r3, .L17+4
	b	.L16
.L4:
	.loc 1 140 0
	mov	r2, #142
	lsl	r2, r2, #2
	ldrb	r3, [r7, r2]
	cmp	r3, r1
	beq	.L15
	.loc 1 141 0
	strb	r1, [r7, r2]
	.loc 1 142 0
	cmp	r1, #0
	bne	.L10
	.loc 1 143 0
	bl	neoMemoryLoadBiosVector
.LVL3:
	b	.L15
.LVL4:
.L10:
	.loc 1 145 0
	bl	neoMemoryLoadProgramVector
.LVL5:
	b	.L15
.LVL6:
.L5:
	.loc 1 150 0
	ldr	r0, .L17+8
	ldrb	r3, [r7, r0]
	cmp	r3, r1
	beq	.L15
	.loc 1 151 0
	strb	r1, [r7, r0]
	.loc 1 152 0
	cmp	r1, #0
	beq	.L13
	mov	r2, #128
	mov	r3, #128
	lsl	r2, r2, #2
	lsl	r3, r3, #5
	str	r3, [r7, r2]
	b	.L15
.L13:
	.loc 1 153 0
	mov	r3, #128
	lsl	r3, r3, #2
	str	r1, [r7, r3]
	b	.L15
.L6:
	.loc 1 157 0
	ldr	r3, .L17+12
.L16:
	strb	r1, [r7, r3]
	b	.L15
.L7:
	.loc 1 160 0
	mov	r0, r1
	bl	neoVideoPaletteBank
.LVL7:
.LVL8:
.L15:
	.loc 1 166 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L18:
	.align	2
.L17:
	.word	.L8
	.word	569
	.word	570
	.word	571
.LFE110:
	.size	neoWriteSystemLatch16, .-neoWriteSystemLatch16
	.align	2
	.code 16
	.thumb_func
	.type	neoForceZ80Nmi, %function
neoForceZ80Nmi:
.LFB107:
	.loc 1 97 0
	push	{lr}
.LCFI2:
	sub	sp, sp, #4
.LCFI3:
	.loc 1 99 0
	mov	r0, #4
	bl	neoIPCSendCommand
	.loc 1 101 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE107:
	.size	neoForceZ80Nmi, .-neoForceZ80Nmi
	.align	2
	.global	neoWriteAudioCommand16
	.code 16
	.thumb_func
	.type	neoWriteAudioCommand16, %function
neoWriteAudioCommand16:
.LFB109:
	.loc 1 118 0
	push	{r4, lr}
.LCFI4:
.LVL9:
	.loc 1 119 0
	ldr	r3, .L26
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L25
	.loc 1 120 0
	mov	r4, #1
	tst	r0, r4
	bne	.L25
	.loc 1 121 0
	ldr	r2, .L26+4
	lsr	r3, r1, #8
	strb	r3, [r2]
	.loc 1 122 0
	ldr	r3, .L26+8
	strb	r4, [r3]
	.loc 1 124 0
	bl	neoForceZ80Nmi
.LVL10:
.LVL11:
.L25:
	.loc 1 129 0
	@ sp needed for prologue
	pop	{r4, pc}
.L27:
	.align	2
.L26:
	.word	41940113
	.word	41940114
	.word	41940116
.LFE109:
	.size	neoWriteAudioCommand16, .-neoWriteAudioCommand16
	.align	2
	.global	neoWriteAudioCommand8
	.code 16
	.thumb_func
	.type	neoWriteAudioCommand8, %function
neoWriteAudioCommand8:
.LFB108:
	.loc 1 104 0
	push	{lr}
.LCFI5:
.LVL12:
	.loc 1 105 0
	ldr	r3, .L33
	.loc 1 104 0
	sub	sp, sp, #4
.LCFI6:
	.loc 1 105 0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L32
	.loc 1 106 0
	mov	r2, #1
	tst	r0, r2
	bne	.L32
	.loc 1 107 0
	ldr	r3, .L33+4
	strb	r1, [r3]
	.loc 1 108 0
	add	r3, r3, #2
	strb	r2, [r3]
	.loc 1 110 0
	bl	neoForceZ80Nmi
.LVL13:
.LVL14:
.L32:
	.loc 1 115 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L34:
	.align	2
.L33:
	.word	41940113
	.word	41940114
.LFE108:
	.size	neoWriteAudioCommand8, .-neoWriteAudioCommand8
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
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x4
	.4byte	.LCFI0-.LFB110
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x4
	.4byte	.LCFI2-.LFB107
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x4
	.4byte	.LCFI4-.LFB109
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x4
	.4byte	.LCFI5-.LFB108
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE6:
	.file 2 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 5 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.file 6 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h"
	.file 8 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h"
	.file 9 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB110-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE110-.Ltext0
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
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB107-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB109-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB108-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0xc3e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF154
	.byte	0x1
	.4byte	.LASF155
	.4byte	.LASF156
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2e
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x39
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x3a
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x53
	.4byte	0x6d
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x54
	.4byte	0x7f
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x2
	.byte	0x45
	.4byte	0x74
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x8
	.byte	0x4
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x2
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x2
	.byte	0x60
	.4byte	0x50
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x2
	.byte	0x61
	.4byte	0x74
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x2
	.byte	0x65
	.4byte	0x3e
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x2
	.byte	0x66
	.4byte	0x62
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf7
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x1
	.byte	0x8
	.uleb128 0x8
	.4byte	0x128
	.byte	0x1
	.byte	0x4
	.byte	0x9b
	.uleb128 0x9
	.4byte	.LASF18
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF19
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF20
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF21
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0xa0
	.4byte	0x107
	.uleb128 0xa
	.4byte	0x1ab
	.2byte	0x2018
	.byte	0x4
	.2byte	0x119
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x11a
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x11d
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x120
	.4byte	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x121
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x122
	.4byte	0x1bc
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x123
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x124
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.byte	0x0
	.uleb128 0xc
	.4byte	0x1bc
	.4byte	0xa2
	.uleb128 0xd
	.4byte	0xf9
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa2
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x126
	.4byte	0x133
	.uleb128 0xf
	.byte	0x4
	.uleb128 0x10
	.4byte	0x366
	.4byte	.LASF60
	.byte	0xb0
	.byte	0x8
	.byte	0x15
	.uleb128 0x11
	.ascii	"d\000"
	.byte	0x8
	.byte	0x16
	.4byte	0x366
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.ascii	"a\000"
	.byte	0x8
	.byte	0x17
	.4byte	0x366
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.ascii	"pc\000"
	.byte	0x8
	.byte	0x18
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.ascii	"srh\000"
	.byte	0x8
	.byte	0x19
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x8
	.byte	0x1a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x8
	.byte	0x1b
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x11
	.ascii	"irq\000"
	.byte	0x8
	.byte	0x1c
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x11
	.ascii	"osp\000"
	.byte	0x8
	.byte	0x1d
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.ascii	"xc\000"
	.byte	0x8
	.byte	0x1e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x8
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x8
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x8
	.byte	0x21
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x8
	.byte	0x22
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x8
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x8
	.byte	0x24
	.4byte	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x8
	.byte	0x25
	.4byte	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x8
	.byte	0x26
	.4byte	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x8
	.byte	0x27
	.4byte	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x8
	.byte	0x28
	.4byte	0x39d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x8
	.byte	0x29
	.4byte	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x8
	.byte	0x2a
	.4byte	0x3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x8
	.byte	0x2b
	.4byte	0x386
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x8
	.byte	0x2c
	.4byte	0x386
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x8
	.byte	0x2d
	.4byte	0x386
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x8
	.byte	0x2e
	.4byte	0x3e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x8
	.byte	0x2f
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x8
	.byte	0x30
	.4byte	0x3ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x8
	.byte	0x31
	.4byte	0x3f3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xc
	.4byte	0x376
	.4byte	0x9b
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x7
	.byte	0x0
	.uleb128 0x14
	.4byte	0x386
	.byte	0x1
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x376
	.uleb128 0x16
	.4byte	0x39d
	.byte	0x1
	.uleb128 0x15
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x37
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x38c
	.uleb128 0x16
	.4byte	0x3b4
	.byte	0x1
	.uleb128 0x15
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3a3
	.uleb128 0x16
	.4byte	0x3cb
	.byte	0x1
	.uleb128 0x15
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ba
	.uleb128 0x14
	.4byte	0x3e1
	.byte	0x1
	.4byte	0x94
	.uleb128 0x15
	.4byte	0x94
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3d1
	.uleb128 0x17
	.byte	0x1
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e7
	.uleb128 0xc
	.4byte	0x403
	.4byte	0x9b
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x7
	.byte	0x6
	.4byte	0x1d0
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x7
	.byte	0x8
	.4byte	0x419
	.uleb128 0x6
	.byte	0x4
	.4byte	0x41f
	.uleb128 0x14
	.4byte	0x42f
	.byte	0x1
	.4byte	0xbb
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x7
	.byte	0x9
	.4byte	0x43a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x440
	.uleb128 0x14
	.4byte	0x450
	.byte	0x1
	.4byte	0xc5
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x7
	.byte	0xa
	.4byte	0x45b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x461
	.uleb128 0x14
	.4byte	0x471
	.byte	0x1
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x7
	.byte	0xc
	.4byte	0x47c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x482
	.uleb128 0x16
	.4byte	0x493
	.byte	0x1
	.uleb128 0x15
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xbb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x7
	.byte	0xd
	.4byte	0x49e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4a4
	.uleb128 0x16
	.4byte	0x4b5
	.byte	0x1
	.uleb128 0x15
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xc5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x7
	.byte	0xe
	.4byte	0x4c0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c6
	.uleb128 0x16
	.4byte	0x4d7
	.byte	0x1
	.uleb128 0x15
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x7
	.byte	0x10
	.4byte	0x45b
	.uleb128 0x10
	.4byte	0x527
	.4byte	.LASF61
	.byte	0xc
	.byte	0x9
	.byte	0x17
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x9
	.byte	0x18
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.ascii	"end\000"
	.byte	0x9
	.byte	0x19
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.ascii	"acc\000"
	.byte	0x9
	.byte	0x1a
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x9
	.byte	0x1b
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x9
	.byte	0x1c
	.4byte	0x4e2
	.uleb128 0x10
	.4byte	0x569
	.4byte	.LASF65
	.byte	0xc
	.byte	0x9
	.byte	0x1f
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x9
	.byte	0x20
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x9
	.byte	0x21
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x9
	.byte	0x22
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x9
	.byte	0x23
	.4byte	0x532
	.uleb128 0x18
	.4byte	0x962
	.2byte	0x248
	.byte	0x6
	.byte	0xc0
	.uleb128 0x11
	.ascii	"cpu\000"
	.byte	0x6
	.byte	0xc1
	.4byte	0x403
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x6
	.byte	0xc4
	.4byte	0x962
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x6
	.byte	0xc7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x6
	.byte	0xc8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0x6
	.byte	0xcb
	.4byte	0x972
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0x6
	.byte	0xcc
	.4byte	0x569
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0x6
	.byte	0xcd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x6
	.byte	0xd0
	.4byte	0x982
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x6
	.byte	0xd1
	.4byte	0x982
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x6
	.byte	0xd2
	.4byte	0x982
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x6
	.byte	0xd3
	.4byte	0x982
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x6
	.byte	0xd4
	.4byte	0x982
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x6
	.byte	0xd5
	.4byte	0x982
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x6
	.byte	0xd6
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x6
	.byte	0xd7
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x6
	.byte	0xd8
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x6
	.byte	0xda
	.4byte	0x98e
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x6
	.byte	0xdd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x6
	.byte	0xde
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0x6
	.byte	0xdf
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x12
	.4byte	.LASF89
	.byte	0x6
	.byte	0xe0
	.4byte	0x99f
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe1
	.4byte	0x99f
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x12
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe2
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x12
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe5
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x6
	.byte	0xe6
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x6
	.byte	0xe7
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x6
	.byte	0xe8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x6
	.byte	0xea
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x6
	.byte	0xeb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x6
	.byte	0xec
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x6
	.byte	0xed
	.4byte	0x9aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x6
	.byte	0xee
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0x6
	.byte	0xf1
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x6
	.byte	0xf2
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x12
	.4byte	.LASF103
	.byte	0x6
	.byte	0xf3
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x12
	.4byte	.LASF104
	.byte	0x6
	.byte	0xf4
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x12
	.4byte	.LASF105
	.byte	0x6
	.byte	0xf7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x12
	.4byte	.LASF106
	.byte	0x6
	.byte	0xf8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0x6
	.byte	0xf9
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x6
	.byte	0xfa
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x6
	.byte	0xfb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0x6
	.byte	0xfc
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x12
	.4byte	.LASF111
	.byte	0x6
	.byte	0xfd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x102
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x103
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x106
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x108
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x109
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x10a
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x10b
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x10d
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x10e
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x10f
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x110
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x111
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x6
	.2byte	0x114
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x6
	.2byte	0x115
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x6
	.2byte	0x116
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x6
	.2byte	0x117
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x6
	.2byte	0x118
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x6
	.2byte	0x11b
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x6
	.2byte	0x11c
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x6
	.2byte	0x11f
	.4byte	0x9ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x6
	.2byte	0x122
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x6
	.2byte	0x123
	.4byte	0x9ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xc
	.4byte	0x972
	.4byte	0x1ce
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x8
	.byte	0x0
	.uleb128 0xc
	.4byte	0x982
	.4byte	0x527
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x6
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x994
	.uleb128 0x6
	.byte	0x4
	.4byte	0x99a
	.uleb128 0x19
	.4byte	0xbb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9a5
	.uleb128 0x19
	.4byte	0xd0
	.uleb128 0xc
	.4byte	0x9ba
	.4byte	0xd0
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9ca
	.4byte	0xbb
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9d9
	.4byte	0xbb
	.uleb128 0x1a
	.4byte	0xf9
	.byte	0x0
	.uleb128 0x1b
	.4byte	0x9f4
	.2byte	0x400
	.byte	0x6
	.byte	0xbf
	.uleb128 0x1c
	.4byte	0x574
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0x6
	.2byte	0x125
	.4byte	0x9f4
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa04
	.4byte	0xd0
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0x1e
	.4byte	0xa8a
	.4byte	.LASF135
	.2byte	0x2000
	.byte	0x6
	.byte	0xbe
	.uleb128 0x1f
	.4byte	0x9d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x6
	.2byte	0x128
	.4byte	0xa8a
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x6
	.2byte	0x129
	.4byte	0xa9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x6
	.2byte	0x12a
	.4byte	0xaaa
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x6
	.2byte	0x12b
	.4byte	0xaba
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x6
	.2byte	0x12c
	.4byte	0xaca
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x6
	.2byte	0x12d
	.4byte	0xada
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x6
	.2byte	0x12e
	.4byte	0xaea
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa9a
	.4byte	0x40e
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xaaa
	.4byte	0x42f
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xaba
	.4byte	0x450
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xaca
	.4byte	0x471
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xada
	.4byte	0x493
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xaea
	.4byte	0x4b5
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xafa
	.4byte	0x4d7
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF143
	.byte	0x6
	.2byte	0x12f
	.4byte	0xa04
	.uleb128 0x20
	.4byte	0xb49
	.byte	0x1
	.4byte	.LASF144
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST0
	.uleb128 0x21
	.ascii	"a\000"
	.byte	0x1
	.byte	0x83
	.4byte	0xd0
	.4byte	.LLST1
	.uleb128 0x21
	.ascii	"d\000"
	.byte	0x1
	.byte	0x83
	.4byte	0xc5
	.4byte	.LLST2
	.uleb128 0x22
	.4byte	.LASF147
	.byte	0x1
	.byte	0x85
	.4byte	0x99a
	.4byte	.LLST3
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF157
	.byte	0x1
	.byte	0x61
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	0xb90
	.byte	0x1
	.4byte	.LASF145
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LLST5
	.uleb128 0x21
	.ascii	"a\000"
	.byte	0x1
	.byte	0x75
	.4byte	0xd0
	.4byte	.LLST6
	.uleb128 0x21
	.ascii	"d\000"
	.byte	0x1
	.byte	0x75
	.4byte	0xc5
	.4byte	.LLST7
	.byte	0x0
	.uleb128 0x20
	.4byte	0xbc4
	.byte	0x1
	.4byte	.LASF146
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LLST8
	.uleb128 0x21
	.ascii	"a\000"
	.byte	0x1
	.byte	0x67
	.4byte	0xd0
	.4byte	.LLST9
	.uleb128 0x21
	.ascii	"d\000"
	.byte	0x1
	.byte	0x67
	.4byte	0xbb
	.4byte	.LLST10
	.byte	0x0
	.uleb128 0x24
	.4byte	.LASF148
	.byte	0x4
	.2byte	0x129
	.4byte	0xbd0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c2
	.uleb128 0xc
	.4byte	0xbe1
	.4byte	0x49
	.uleb128 0x25
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF149
	.byte	0x5
	.byte	0x2c
	.4byte	0xbd6
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0xbf9
	.4byte	0x49
	.uleb128 0x25
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF150
	.byte	0x5
	.byte	0x2d
	.4byte	0xbee
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0xc11
	.4byte	0x49
	.uleb128 0x25
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF151
	.byte	0x5
	.byte	0x2e
	.4byte	0xc06
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF152
	.byte	0x6
	.2byte	0x149
	.4byte	0xc2d
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x6
	.byte	0x4
	.4byte	0xafa
	.uleb128 0x28
	.4byte	.LASF153
	.byte	0x6
	.2byte	0x14d
	.4byte	0xafa
	.byte	0x1
	.byte	0x1
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x4
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x5
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x67
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xc42
	.4byte	0xb06
	.ascii	"neoWriteSystemLatch16\000"
	.4byte	0xb5c
	.ascii	"neoWriteAudioCommand16\000"
	.4byte	0xb90
	.ascii	"neoWriteAudioCommand8\000"
	.4byte	0xc1e
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
	.section	.debug_str,"MS",%progbits,1
.LASF24:
	.ascii	"clearColor\000"
.LASF38:
	.ascii	"checkpc\000"
.LASF42:
	.ascii	"write8\000"
.LASF90:
	.ascii	"smaBankbit\000"
.LASF142:
	.ascii	"cpuCheckPcTable\000"
.LASF98:
	.ascii	"spriteMask\000"
.LASF121:
	.ascii	"ctrl3Reg\000"
.LASF47:
	.ascii	"fetch32\000"
.LASF106:
	.ascii	"cpuClocksPerScanline\000"
.LASF54:
	.ascii	"TRead16Func\000"
.LASF72:
	.ascii	"romBankCount\000"
.LASF101:
	.ascii	"tileOffsetX\000"
.LASF140:
	.ascii	"cpuWrite16Table\000"
.LASF14:
	.ascii	"uint32\000"
.LASF20:
	.ascii	"GL_MODELVIEW\000"
.LASF103:
	.ascii	"tileScaleX\000"
.LASF104:
	.ascii	"tileScaleY\000"
.LASF43:
	.ascii	"write16\000"
.LASF59:
	.ascii	"TCheckPcFunc\000"
.LASF133:
	.ascii	"varEnd\000"
.LASF56:
	.ascii	"TWrite8Func\000"
.LASF39:
	.ascii	"read8\000"
.LASF155:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoIO.c\000"
.LASF69:
	.ascii	"TNeoADPCMBStream\000"
.LASF53:
	.ascii	"TRead8Func\000"
.LASF100:
	.ascii	"pTileBuffer\000"
.LASF138:
	.ascii	"cpuRead32Table\000"
.LASF22:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF8:
	.ascii	"long int\000"
.LASF68:
	.ascii	"frequency\000"
.LASF57:
	.ascii	"TWrite16Func\000"
.LASF45:
	.ascii	"fetch8\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF131:
	.ascii	"keyGrid\000"
.LASF44:
	.ascii	"write32\000"
.LASF48:
	.ascii	"IrqCallback\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF122:
	.ascii	"ctrl4Reg\000"
.LASF111:
	.ascii	"romBankAddress\000"
.LASF151:
	.ascii	"TAN_bin\000"
.LASF63:
	.ascii	"step\000"
.LASF75:
	.ascii	"adpcmActive\000"
.LASF95:
	.ascii	"vramBaseMask\000"
.LASF71:
	.ascii	"spriteCount\000"
.LASF50:
	.ascii	"UnrecognizedCallback\000"
.LASF17:
	.ascii	"char\000"
.LASF124:
	.ascii	"irqVectorLatch\000"
.LASF82:
	.ascii	"pVram\000"
.LASF125:
	.ascii	"screenDarkLatch\000"
.LASF33:
	.ascii	"prev_pc\000"
.LASF65:
	.ascii	"_TNeoADPCMBStream\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF32:
	.ascii	"flags\000"
.LASF16:
	.ascii	"double\000"
.LASF97:
	.ascii	"autoAnimationCounter\000"
.LASF25:
	.ascii	"textures\000"
.LASF19:
	.ascii	"GL_POSITION\000"
.LASF152:
	.ascii	"g_neo\000"
.LASF143:
	.ascii	"TNeoContext\000"
.LASF105:
	.ascii	"cpuClockDivide\000"
.LASF93:
	.ascii	"frameCount\000"
.LASF114:
	.ascii	"vramOffset\000"
.LASF156:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF134:
	.ascii	"fill\000"
.LASF36:
	.ascii	"cycles\000"
.LASF144:
	.ascii	"neoWriteSystemLatch16\000"
.LASF141:
	.ascii	"cpuWrite32Table\000"
.LASF128:
	.ascii	"paletteRamLatch\000"
.LASF149:
	.ascii	"COS_bin\000"
.LASF79:
	.ascii	"pRam\000"
.LASF81:
	.ascii	"pCard\000"
.LASF96:
	.ascii	"displayCounter\000"
.LASF52:
	.ascii	"TCycloneContext\000"
.LASF108:
	.ascii	"watchdogCounter\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF137:
	.ascii	"cpuRead16Table\000"
.LASF117:
	.ascii	"displayControlMask\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF129:
	.ascii	"active\000"
.LASF60:
	.ascii	"Cyclone\000"
.LASF78:
	.ascii	"pBios\000"
.LASF99:
	.ascii	"paletteDirty\000"
.LASF150:
	.ascii	"SIN_bin\000"
.LASF23:
	.ascii	"matrixMode\000"
.LASF27:
	.ascii	"nextBlock\000"
.LASF136:
	.ascii	"cpuRead8Table\000"
.LASF91:
	.ascii	"smaRand\000"
.LASF61:
	.ascii	"_TNeoADPCMStream\000"
.LASF58:
	.ascii	"TWrite32Func\000"
.LASF86:
	.ascii	"smaAddr0\000"
.LASF11:
	.ascii	"long long int\000"
.LASF18:
	.ascii	"GL_PROJECTION\000"
.LASF123:
	.ascii	"coinReg\000"
.LASF66:
	.ascii	"initOffset\000"
.LASF147:
	.ascii	"enable\000"
.LASF51:
	.ascii	"internal\000"
.LASF46:
	.ascii	"fetch16\000"
.LASF87:
	.ascii	"smaAddr1\000"
.LASF31:
	.ascii	"unused\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF116:
	.ascii	"displayControl\000"
.LASF89:
	.ascii	"smaBankoffset\000"
.LASF21:
	.ascii	"GL_TEXTURE\000"
.LASF94:
	.ascii	"pVramBase\000"
.LASF62:
	.ascii	"offset\000"
.LASF76:
	.ascii	"pRom0\000"
.LASF102:
	.ascii	"tileOffsetY\000"
.LASF139:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF26:
	.ascii	"activeTexture\000"
.LASF120:
	.ascii	"ctrl2Reg\000"
.LASF40:
	.ascii	"read16\000"
.LASF109:
	.ascii	"paletteBank\000"
.LASF146:
	.ascii	"neoWriteAudioCommand8\000"
.LASF153:
	.ascii	"g_neoContext\000"
.LASF37:
	.ascii	"membase\000"
.LASF154:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF92:
	.ascii	"scanline\000"
.LASF84:
	.ascii	"pPalette\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF130:
	.ascii	"debug\000"
.LASF157:
	.ascii	"neoForceZ80Nmi\000"
.LASF145:
	.ascii	"neoWriteAudioCommand16\000"
.LASF77:
	.ascii	"pRom1\000"
.LASF41:
	.ascii	"read32\000"
.LASF83:
	.ascii	"pSpriteRam\000"
.LASF49:
	.ascii	"ResetCallback\000"
.LASF127:
	.ascii	"sramProtectLatch\000"
.LASF110:
	.ascii	"fixedBank\000"
.LASF29:
	.ascii	"nameCount\000"
.LASF119:
	.ascii	"ctrl1Reg\000"
.LASF35:
	.ascii	"state_flags\000"
.LASF113:
	.ascii	"sramProtection\000"
.LASF148:
	.ascii	"glGlob\000"
.LASF80:
	.ascii	"pSram\000"
.LASF67:
	.ascii	"freqCounter\000"
.LASF4:
	.ascii	"short int\000"
.LASF132:
	.ascii	"frameCounter\000"
.LASF74:
	.ascii	"adpcmb\000"
.LASF28:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF118:
	.ascii	"displayCounterLoad\000"
.LASF107:
	.ascii	"irqPending\000"
.LASF55:
	.ascii	"TRead32Func\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF73:
	.ascii	"adpcm\000"
.LASF15:
	.ascii	"float\000"
.LASF30:
	.ascii	"gl_hidden_globals\000"
.LASF70:
	.ascii	"pVideoWriteTable\000"
.LASF85:
	.ascii	"bankTable\000"
.LASF88:
	.ascii	"smaBankAddr\000"
.LASF135:
	.ascii	"_TNeoContext\000"
.LASF34:
	.ascii	"reserved\000"
.LASF126:
	.ascii	"fixedRomLatch\000"
.LASF112:
	.ascii	"sramProtectCount\000"
.LASF64:
	.ascii	"TNeoADPCMStream\000"
.LASF115:
	.ascii	"vramMod\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
