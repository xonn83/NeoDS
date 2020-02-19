	.file	"template.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.type	VblankHandler, %function
VblankHandler:
.LFB24:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/template.c"
	.loc 1 71 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ lr needed for prologue
	.loc 1 73 0
	bx	lr
.LFE24:
	.size	VblankHandler, .-VblankHandler
	.align	2
	.type	IPCSyncHandler, %function
IPCSyncHandler:
.LFB25:
	.loc 1 76 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ lr needed for prologue
	.loc 1 78 0
	bx	lr
.LFE25:
	.size	IPCSyncHandler, .-IPCSyncHandler
	.align	2
	.global	main
	.type	main, %function
main:
.LFB26:
	.loc 1 84 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	str	lr, [sp, #-4]!
.LCFI0:
	sub	sp, sp, #4
.LCFI1:
	.loc 1 85 0
	bl	neoIPCInit
.LVL1:
	.loc 1 87 0
	bl	rtcReset
	.loc 1 89 0
	bl	irqInit
	.loc 1 90 0
	mov	r0, #1
	ldr	r1, .L7
	bl	irqSet
.LBB22:
.LBB23:
	.file 2 "C:/devkitPro/libnds/include/nds/system.h"
	.loc 2 64 0
	mov	r2, #67108864
	ldrh	r3, [r2, #4]
	and	r3, r3, #127
	strh	r3, [r2, #4]	@ movhi
.LBE23:
.LBE22:
	.loc 1 92 0
	mov	r0, #4
	ldr	r1, .L7+4
	bl	irqSet
	.loc 1 93 0
	mov	r0, #65536
	ldr	r1, .L7+8
	bl	irqSet
	.loc 1 94 0
	ldr	r1, .L7+12
	mov	r0, #64
	bl	irqSet
	.loc 1 95 0
	ldr	r0, .L7+16
	bl	irqEnable
	.loc 1 96 0
	ldr	r3, .L7+20
	mov	r2, #1
	.loc 1 99 0
	mov	r0, r2
	.loc 1 96 0
	strh	r2, [r3, #8]	@ movhi
	.loc 1 99 0
	bl	neoIPCWaitCommand
	.loc 1 105 0
	bl	neoSystem7Init
	.loc 1 107 0
	bl	neoIPCAckCommand
	.loc 1 109 0
	bl	neoSystem7Execute
	.loc 1 112 0
	mov	r0, #0
	add	sp, sp, #4
	ldr	lr, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	VblankHandler
	.word	VcountHandler
	.word	IPCSyncHandler
	.word	neoAudioEventHandler
	.word	65605
	.word	67109376
.LFE26:
	.size	main, .-main
	.align	2
	.type	VcountHandler, %function
VcountHandler:
.LFB23:
	.loc 1 66 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r6, r7, r8, r9, sl, lr}
.LCFI2:
.LBB44:
.LBB45:
	.loc 1 18 0
	ldr	r3, .L24
	.loc 1 20 0
	ldr	r9, .L24+4
	.loc 1 18 0
	ldrh	r2, [r3, #54]
	.loc 1 20 0
	ldr	r3, [r9, #0]
.LVL2:
	eor	r3, r2, r3
	ands	r8, r3, #64
.LBE45:
.LBE44:
	.loc 1 66 0
	sub	sp, sp, #20
.LCFI3:
.LVL3:
.LBB46:
.LBB47:
	.loc 1 18 0
	mov	r7, r2
.LVL4:
	.loc 1 20 0
	bne	.L10
	.loc 1 22 0
	ldr	r6, .L24+8
.LBE47:
	mov	r0, sp
	bl	touchReadXY
	mov	r2, #12
	mov	r0, r6
	mov	r1, sp
	bl	memcpy
.LBB48:
	.loc 1 24 0
	ldrh	r2, [r6, #0]
	cmp	r2, #0
	beq	.L12
	ldrh	r3, [r6, #2]
	cmp	r3, #0
	bne	.L14
.L12:
	.loc 1 26 0
	mov	ip, r8
.LVL5:
	.loc 1 25 0
	orr	r7, r7, #64
	.loc 1 26 0
	mov	r1, r8
.LVL6:
	mov	r6, ip
.LVL7:
	mov	r4, ip
.LVL8:
	mov	sl, r8
.LVL9:
	str	r7, [r9, #0]
	b	.L15
.LVL10:
.L14:
	.loc 1 33 0
	ldrh	r8, [r6, #10]
.LVL11:
	.loc 1 30 0
	ldrh	r4, [r6, #4]
.LVL12:
	.loc 1 31 0
	ldrh	r1, [r6, #6]
.LVL13:
	.loc 1 32 0
	ldrh	sl, [r6, #8]
.LVL14:
	.loc 1 29 0
	mov	ip, r3
.LVL15:
	.loc 1 28 0
	mov	r6, r2
.LVL16:
	b	.L15
.LVL17:
.L10:
	.loc 1 38 0
	mov	ip, #0
.LVL18:
	.loc 1 37 0
	str	r2, [r9, #0]
	.loc 1 38 0
	mov	r1, ip
.LVL19:
	mov	r8, ip
.LVL20:
	orr	r7, r2, #64
.LVL21:
	mov	r6, ip
.LVL22:
	mov	r4, ip
.LVL23:
	mov	sl, ip
.LVL24:
.L15:
	.loc 1 41 0
	ldr	r3, .L24+12
	ldr	r9, [r3, #0]
	cmp	r9, #80
	ldr	r0, .L24+16
	bne	.L16
	.loc 1 42 0
	ldr	r1, .L24+8
.LVL25:
	mov	r2, #12
	bl	memcpy
.LVL26:
	b	.L18
.LVL27:
.L16:
	.loc 1 44 0
	ldrsh	r3, [r0, #4]
	rsb	r3, r3, r4
	cmp	r3, #0
	rsblt	r3, r3, #0
	cmp	r3, #10
	bgt	.L19
	ldrsh	r3, [r0, #6]
	rsb	r3, r3, r1
	cmp	r3, #0
	rsblt	r3, r3, #0
	cmp	r3, #10
	bgt	.L19
	ands	lr, r7, #64
	beq	.L22
.L19:
	.loc 1 48 0
	ldr	r3, .L24+4
	.loc 1 47 0
	orr	r7, r7, #64
	.loc 1 48 0
	str	r7, [r3, #0]
	b	.L18
.L22:
	.loc 1 51 0
	ldr	r3, .L24+20
	mov	r2, #1
	strb	r2, [r3, #53]
	.loc 1 52 0
	strh	r6, [r3, #0]	@ movhi
	.loc 1 53 0
	strh	ip, [r3, #2]	@ movhi
	.loc 1 54 0
	strh	r4, [r3, #4]	@ movhi
	.loc 1 55 0
	strh	r1, [r3, #6]	@ movhi
	.loc 1 56 0
	strh	sl, [r3, #8]	@ movhi
	.loc 1 57 0
	strh	r8, [r3, #10]	@ movhi
	.loc 1 58 0
	strb	lr, [r3, #53]
.LVL28:
.L18:
	.loc 1 61 0
	ldr	r2, .L24+20
	strh	r7, [r2, #20]	@ movhi
	.loc 1 62 0
	ldr	r2, .L24+12
	eor	r3, r9, #210
	str	r3, [r2, #0]
.LBE48:
.LBE46:
	.loc 1 68 0
	add	sp, sp, #20
	ldmfd	sp!, {r4, r6, r7, r8, r9, sl, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	67109120
	.word	lastbut.2753
	.word	tempPos
	.word	vcount
	.word	first
	.word	41938944
.LFE23:
	.size	VcountHandler, .-VcountHandler
	.data
	.align	2
	.type	vcount, %object
	.size	vcount, 4
vcount:
	.word	80
	.align	2
	.type	lastbut.2753, %object
	.size	lastbut.2753, 4
lastbut.2753:
	.word	-1
	.bss
	.align	1
first:
	.space	12
	.align	1
tempPos:
	.space	12
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI0-.LFB26
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI2-.LFB23
	.byte	0xe
	.uleb128 0x1c
	.byte	0x8e
	.uleb128 0x1
	.byte	0x8a
	.uleb128 0x2
	.byte	0x89
	.uleb128 0x3
	.byte	0x88
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x84
	.uleb128 0x7
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x30
	.align	2
.LEFDE6:
	.file 3 "C:/devkitPro/libnds/include/nds/ipc.h"
	.file 4 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 5 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 6 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoSystem7.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoCpuZ80.h"
	.file 8 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/DrZ80.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LFB26-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB23-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 28
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x8b2
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF108
	.byte	0x1
	.4byte	.LASF109
	.4byte	.LASF110
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x5
	.byte	0x2e
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x5
	.byte	0x39
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x5
	.byte	0x3a
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x5
	.byte	0x54
	.4byte	0x74
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x44
	.4byte	0x50
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x49
	.4byte	0x3e
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
	.byte	0x4
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x4
	.byte	0x61
	.4byte	0x69
	.uleb128 0x6
	.4byte	0x129
	.4byte	.LASF17
	.byte	0xc
	.byte	0x4
	.byte	0x73
	.uleb128 0x7
	.ascii	"x\000"
	.byte	0x4
	.byte	0x74
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.ascii	"y\000"
	.byte	0x4
	.byte	0x75
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.ascii	"px\000"
	.byte	0x4
	.byte	0x76
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.ascii	"py\000"
	.byte	0x4
	.byte	0x77
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.ascii	"z1\000"
	.byte	0x4
	.byte	0x78
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.ascii	"z2\000"
	.byte	0x4
	.byte	0x79
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x7a
	.4byte	0xd0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x13a
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x6
	.4byte	0x1ab
	.4byte	.LASF18
	.byte	0x10
	.byte	0x3
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x3
	.byte	0x26
	.4byte	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.ascii	"len\000"
	.byte	0x3
	.byte	0x27
	.4byte	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x3
	.byte	0x28
	.4byte	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.ascii	"vol\000"
	.byte	0x3
	.byte	0x29
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.ascii	"pan\000"
	.byte	0x3
	.byte	0x2a
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x3
	.byte	0x2b
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x3
	.byte	0x2c
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1b1
	.uleb128 0xb
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x3
	.byte	0x2d
	.4byte	0x13c
	.uleb128 0xc
	.4byte	0x1f7
	.4byte	.LASF24
	.2byte	0x104
	.byte	0x3
	.byte	0x31
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x3
	.byte	0x33
	.4byte	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x3
	.byte	0x34
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x3
	.byte	0x35
	.4byte	0x20e
	.byte	0x3
	.byte	0x23
	.uleb128 0x101
	.byte	0x0
	.uleb128 0xd
	.4byte	0x207
	.4byte	0x1b2
	.uleb128 0xe
	.4byte	0x207
	.byte	0xf
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x7
	.uleb128 0xd
	.4byte	0x21e
	.4byte	0xbb
	.uleb128 0xe
	.4byte	0x207
	.byte	0x2
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x3
	.byte	0x36
	.4byte	0x229
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1bd
	.uleb128 0xf
	.4byte	0x2a8
	.byte	0x8
	.byte	0x3
	.byte	0x47
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x3
	.byte	0x48
	.4byte	0x2a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x3
	.byte	0x49
	.4byte	0x2a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x3
	.byte	0x4a
	.4byte	0x2a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.ascii	"day\000"
	.byte	0x3
	.byte	0x4b
	.4byte	0x2a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x3
	.byte	0x4d
	.4byte	0x2a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x3
	.byte	0x4e
	.4byte	0x2a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x3
	.byte	0x4f
	.4byte	0x2a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x3
	.byte	0x50
	.4byte	0x2a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0x0
	.uleb128 0x10
	.4byte	0x37
	.uleb128 0x11
	.4byte	0x2cc
	.byte	0x8
	.byte	0x3
	.byte	0x44
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x3
	.byte	0x45
	.4byte	0x2dc
	.uleb128 0x13
	.ascii	"rtc\000"
	.byte	0x3
	.byte	0x51
	.4byte	0x22f
	.byte	0x0
	.uleb128 0xd
	.4byte	0x2dc
	.4byte	0x37
	.uleb128 0xe
	.4byte	0x207
	.byte	0x7
	.byte	0x0
	.uleb128 0x10
	.4byte	0x2cc
	.uleb128 0x6
	.4byte	0x406
	.4byte	.LASF35
	.byte	0x3c
	.byte	0x3
	.byte	0x3a
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x3
	.byte	0x3c
	.4byte	0x406
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x3
	.byte	0x3c
	.4byte	0x406
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x3
	.byte	0x3d
	.4byte	0x406
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x3
	.byte	0x3d
	.4byte	0x406
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x3
	.byte	0x3e
	.4byte	0x406
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x3
	.byte	0x3e
	.4byte	0x406
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x3
	.byte	0x3f
	.4byte	0x40b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x3
	.byte	0x3f
	.4byte	0x40b
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x3
	.byte	0x40
	.4byte	0x410
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x3
	.byte	0x42
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x3
	.byte	0x52
	.4byte	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x3
	.byte	0x53
	.4byte	0x415
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x3
	.byte	0x55
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.ascii	"aux\000"
	.byte	0x3
	.byte	0x56
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x3
	.byte	0x59
	.4byte	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x3
	.byte	0x5b
	.4byte	0x410
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x3
	.byte	0x5c
	.4byte	0x410
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x3
	.byte	0x5d
	.4byte	0x2a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x3
	.byte	0x5e
	.4byte	0x2a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x3
	.byte	0x5f
	.4byte	0x410
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x10
	.4byte	0x49
	.uleb128 0x10
	.4byte	0x5b
	.uleb128 0x10
	.4byte	0x74
	.uleb128 0x10
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x3
	.byte	0x60
	.4byte	0x2e1
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x1
	.byte	0x8
	.uleb128 0x8
	.byte	0x4
	.4byte	0x425
	.uleb128 0x6
	.4byte	0x5f1
	.4byte	.LASF57
	.byte	0x70
	.byte	0x8
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x8
	.byte	0x14
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x8
	.byte	0x15
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x8
	.byte	0x16
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x8
	.byte	0x17
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x8
	.byte	0x18
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x8
	.byte	0x19
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x8
	.byte	0x1a
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x8
	.byte	0x1b
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x8
	.byte	0x1c
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x8
	.byte	0x1d
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x8
	.byte	0x1e
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x8
	.byte	0x1f
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x8
	.byte	0x20
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x8
	.byte	0x21
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x8
	.byte	0x22
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x8
	.byte	0x23
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x8
	.byte	0x24
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x8
	.byte	0x27
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x8
	.byte	0x28
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x8
	.byte	0x29
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x8
	.byte	0x2a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x8
	.byte	0x2b
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x8
	.byte	0x2c
	.4byte	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x8
	.byte	0x2d
	.4byte	0x602
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x8
	.byte	0x2e
	.4byte	0x619
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x8
	.byte	0x2f
	.4byte	0x62f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x8
	.byte	0x30
	.4byte	0x646
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x8
	.byte	0x31
	.4byte	0x62f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x8
	.byte	0x32
	.4byte	0x65c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x8
	.byte	0x33
	.4byte	0x672
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x8
	.byte	0x34
	.4byte	0x672
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x14
	.4byte	0x602
	.byte	0x1
	.uleb128 0x15
	.4byte	0x37
	.uleb128 0x15
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5f1
	.uleb128 0x14
	.4byte	0x619
	.byte	0x1
	.uleb128 0x15
	.4byte	0x5b
	.uleb128 0x15
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x608
	.uleb128 0x16
	.4byte	0x62f
	.byte	0x1
	.4byte	0x37
	.uleb128 0x15
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x61f
	.uleb128 0x14
	.4byte	0x646
	.byte	0x1
	.uleb128 0x15
	.4byte	0x5b
	.uleb128 0x15
	.4byte	0x37
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x635
	.uleb128 0x16
	.4byte	0x65c
	.byte	0x1
	.4byte	0x5b
	.uleb128 0x15
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x64c
	.uleb128 0x16
	.4byte	0x672
	.byte	0x1
	.4byte	0x90
	.uleb128 0x15
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x662
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x7
	.byte	0xc
	.4byte	0x432
	.uleb128 0xc
	.4byte	0x6bc
	.4byte	.LASF90
	.2byte	0x8f0
	.byte	0x6
	.byte	0x1f
	.uleb128 0x7
	.ascii	"z80\000"
	.byte	0x6
	.byte	0x20
	.4byte	0x678
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x6
	.byte	0x26
	.4byte	0x6bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0x6
	.byte	0x27
	.4byte	0x6d2
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.byte	0x0
	.uleb128 0xd
	.4byte	0x6cc
	.4byte	0x6cc
	.uleb128 0xe
	.4byte	0x207
	.byte	0x1f
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbb
	.uleb128 0xd
	.4byte	0x6e3
	.4byte	0xbb
	.uleb128 0x17
	.4byte	0x207
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x6
	.byte	0x28
	.4byte	0x683
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x3
	.byte	0x67
	.4byte	0x6fa
	.byte	0x3
	.uleb128 0x8
	.byte	0x4
	.4byte	0x700
	.uleb128 0x10
	.4byte	0x41a
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0x1
	.byte	0x47
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5d
	.uleb128 0x19
	.4byte	.LASF96
	.byte	0x1
	.byte	0x4c
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1a
	.4byte	0x740
	.4byte	.LASF100
	.byte	0x2
	.byte	0x3f
	.byte	0x1
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF97
	.byte	0x2
	.byte	0x3f
	.4byte	0x89
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x791
	.byte	0x1
	.4byte	.LASF111
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	0x89
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	.LASF98
	.byte	0x1
	.byte	0x53
	.4byte	0x89
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	.LASF99
	.byte	0x1
	.byte	0x53
	.4byte	0x791
	.4byte	.LLST4
	.uleb128 0x1e
	.4byte	0x727
	.4byte	.LBB22
	.4byte	.LBE22
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1f
	.4byte	0x734
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x42c
	.uleb128 0x20
	.4byte	0x805
	.4byte	.LASF101
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.uleb128 0x21
	.ascii	"but\000"
	.byte	0x1
	.byte	0x10
	.4byte	0x97
	.uleb128 0x21
	.ascii	"x\000"
	.byte	0x1
	.byte	0x10
	.4byte	0x97
	.uleb128 0x21
	.ascii	"y\000"
	.byte	0x1
	.byte	0x10
	.4byte	0x97
	.uleb128 0x21
	.ascii	"xpx\000"
	.byte	0x1
	.byte	0x10
	.4byte	0x97
	.uleb128 0x21
	.ascii	"ypx\000"
	.byte	0x1
	.byte	0x10
	.4byte	0x97
	.uleb128 0x21
	.ascii	"z1\000"
	.byte	0x1
	.byte	0x10
	.4byte	0x97
	.uleb128 0x21
	.ascii	"z2\000"
	.byte	0x1
	.byte	0x10
	.4byte	0x97
	.uleb128 0x22
	.uleb128 0x22
	.uleb128 0x22
	.uleb128 0x22
	.uleb128 0x22
	.uleb128 0x22
	.uleb128 0x22
	.uleb128 0x22
	.uleb128 0x22
	.uleb128 0x23
	.4byte	.LASF102
	.byte	0x1
	.byte	0xe
	.4byte	0x89
	.byte	0x5
	.byte	0x3
	.4byte	lastbut.2753
	.byte	0x0
	.uleb128 0x24
	.4byte	0x86e
	.4byte	.LASF103
	.byte	0x1
	.byte	0x42
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST5
	.uleb128 0x25
	.4byte	0x797
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x43
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x27
	.4byte	0x7a3
	.4byte	.LLST6
	.uleb128 0x27
	.4byte	0x7ae
	.4byte	.LLST7
	.uleb128 0x27
	.4byte	0x7b7
	.4byte	.LLST8
	.uleb128 0x27
	.4byte	0x7c0
	.4byte	.LLST9
	.uleb128 0x27
	.4byte	0x7cb
	.4byte	.LLST10
	.uleb128 0x27
	.4byte	0x7d6
	.4byte	.LLST11
	.uleb128 0x27
	.4byte	0x7e0
	.4byte	.LLST12
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF104
	.byte	0x1
	.byte	0x9
	.4byte	0x89
	.byte	0x5
	.byte	0x3
	.4byte	vcount
	.uleb128 0x23
	.4byte	.LASF105
	.byte	0x1
	.byte	0xa
	.4byte	0x129
	.byte	0x5
	.byte	0x3
	.4byte	first
	.uleb128 0x23
	.4byte	.LASF106
	.byte	0x1
	.byte	0xa
	.4byte	0x129
	.byte	0x5
	.byte	0x3
	.4byte	tempPos
	.uleb128 0x28
	.4byte	.LASF107
	.byte	0x6
	.byte	0x39
	.4byte	0x8af
	.byte	0x1
	.byte	0x1
	.byte	0x55
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6e3
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x0
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.4byte	0x22
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x8b6
	.4byte	0x740
	.ascii	"main\000"
	.4byte	0x8a1
	.ascii	"g_neo7\000"
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
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF90:
	.ascii	"_TNeoContext7\000"
.LASF108:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF21:
	.ascii	"format\000"
.LASF44:
	.ascii	"temperature\000"
.LASF79:
	.ascii	"z80irqvector\000"
.LASF92:
	.ascii	"z80Ram\000"
.LASF75:
	.ascii	"Z80_IRQ\000"
.LASF100:
	.ascii	"SetYtrigger\000"
.LASF66:
	.ascii	"Z80SP_BASE\000"
.LASF22:
	.ascii	"PADDING\000"
.LASF87:
	.ascii	"z80_rebaseSP\000"
.LASF89:
	.ascii	"TDrZ80Context\000"
.LASF84:
	.ascii	"z80_out\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF77:
	.ascii	"Z80IM\000"
.LASF81:
	.ascii	"z80_write8\000"
.LASF15:
	.ascii	"float\000"
.LASF25:
	.ascii	"count\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF83:
	.ascii	"z80_in\000"
.LASF70:
	.ascii	"Z80A2\000"
.LASF53:
	.ascii	"mailBusy\000"
.LASF46:
	.ascii	"time\000"
.LASF110:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm7\\\\buil"
	.ascii	"d\000"
.LASF85:
	.ascii	"z80_read8\000"
.LASF88:
	.ascii	"z80_rebasePC\000"
.LASF61:
	.ascii	"Z80BC\000"
.LASF101:
	.ascii	"handleInput\000"
.LASF29:
	.ascii	"month\000"
.LASF98:
	.ascii	"argc\000"
.LASF52:
	.ascii	"mailRead\000"
.LASF24:
	.ascii	"sTransferSound\000"
.LASF105:
	.ascii	"first\000"
.LASF26:
	.ascii	"pTransferSound\000"
.LASF73:
	.ascii	"Z80DE2\000"
.LASF86:
	.ascii	"z80_read16\000"
.LASF40:
	.ascii	"touchZ1\000"
.LASF47:
	.ascii	"unixTime\000"
.LASF56:
	.ascii	"char\000"
.LASF20:
	.ascii	"rate\000"
.LASF59:
	.ascii	"Z80A\000"
.LASF103:
	.ascii	"VcountHandler\000"
.LASF78:
	.ascii	"spare\000"
.LASF13:
	.ascii	"uint16\000"
.LASF42:
	.ascii	"tdiode1\000"
.LASF43:
	.ascii	"tdiode2\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF57:
	.ascii	"DrZ80\000"
.LASF10:
	.ascii	"long long int\000"
.LASF51:
	.ascii	"mailData\000"
.LASF67:
	.ascii	"Z80IX\000"
.LASF68:
	.ascii	"Z80IY\000"
.LASF97:
	.ascii	"Yvalue\000"
.LASF18:
	.ascii	"sTransferSoundData\000"
.LASF39:
	.ascii	"touchYpx\000"
.LASF58:
	.ascii	"Z80PC\000"
.LASF33:
	.ascii	"seconds\000"
.LASF71:
	.ascii	"Z80F2\000"
.LASF65:
	.ascii	"Z80PC_BASE\000"
.LASF17:
	.ascii	"touchPosition\000"
.LASF34:
	.ascii	"curtime\000"
.LASF19:
	.ascii	"data\000"
.LASF99:
	.ascii	"argv\000"
.LASF35:
	.ascii	"sTransferRegion\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF107:
	.ascii	"g_neo7\000"
.LASF111:
	.ascii	"main\000"
.LASF4:
	.ascii	"short int\000"
.LASF7:
	.ascii	"long int\000"
.LASF104:
	.ascii	"vcount\000"
.LASF32:
	.ascii	"minutes\000"
.LASF109:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm7/source/template.c\000"
.LASF63:
	.ascii	"Z80HL\000"
.LASF54:
	.ascii	"mailSize\000"
.LASF23:
	.ascii	"TransferSoundData\000"
.LASF31:
	.ascii	"hours\000"
.LASF36:
	.ascii	"touchX\000"
.LASF37:
	.ascii	"touchY\000"
.LASF55:
	.ascii	"TransferRegion\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF80:
	.ascii	"z80_irq_callback\000"
.LASF74:
	.ascii	"Z80HL2\000"
.LASF49:
	.ascii	"soundData\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF45:
	.ascii	"buttons\000"
.LASF76:
	.ascii	"Z80IF\000"
.LASF91:
	.ascii	"z80MemTable\000"
.LASF28:
	.ascii	"year\000"
.LASF72:
	.ascii	"Z80BC2\000"
.LASF106:
	.ascii	"tempPos\000"
.LASF64:
	.ascii	"Z80SP\000"
.LASF14:
	.ascii	"int16\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF62:
	.ascii	"Z80DE\000"
.LASF95:
	.ascii	"VblankHandler\000"
.LASF94:
	.ascii	"getIPC\000"
.LASF27:
	.ascii	"command\000"
.LASF82:
	.ascii	"z80_write16\000"
.LASF93:
	.ascii	"TNeoContext7\000"
.LASF41:
	.ascii	"touchZ2\000"
.LASF0:
	.ascii	"signed char\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF60:
	.ascii	"Z80F\000"
.LASF69:
	.ascii	"Z80I\000"
.LASF50:
	.ascii	"mailAddr\000"
.LASF16:
	.ascii	"double\000"
.LASF102:
	.ascii	"lastbut\000"
.LASF48:
	.ascii	"battery\000"
.LASF38:
	.ascii	"touchXpx\000"
.LASF30:
	.ascii	"weekday\000"
.LASF96:
	.ascii	"IPCSyncHandler\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
