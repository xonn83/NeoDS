	.file	"NeoVideoPalette.arm.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	neoVideoPaletteBank
	.type	neoVideoPaletteBank, %function
neoVideoPaletteBank:
.LFB107:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoVideoPalette.arm.c"
	.loc 1 12 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 13 0
	ldrb	r3, [r7, #572]	@ zero_extendqisi2
	.loc 1 12 0
	@ lr needed for prologue
	.loc 1 13 0
	cmp	r3, r0
	bxeq	lr
	.loc 1 15 0
	cmp	r0, #0
	movne	r3, #4096
	.loc 1 14 0
	strb	r0, [r7, #572]
	.loc 1 15 0
	strne	r3, [r7, #508]
	.loc 1 16 0
	streq	r0, [r7, #508]
	bx	lr
.LFE107:
	.size	neoVideoPaletteBank, .-neoVideoPaletteBank
	.align	2
	.global	neoPaletteExit
	.type	neoPaletteExit, %function
neoPaletteExit:
.LFB109:
	.loc 1 28 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ lr needed for prologue
	.loc 1 30 0
	bx	lr
.LFE109:
	.size	neoPaletteExit, .-neoPaletteExit
	.align	2
	.global	neoUpdatePalette
	.type	neoUpdatePalette, %function
neoUpdatePalette:
.LFB110:
	.loc 1 33 0
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
.LCFI0:
	.loc 1 34 0
	ldr	ip, [r7, #508]
	.loc 1 33 0
	sub	sp, sp, #24
.LCFI1:
	.loc 1 36 0
	cmp	ip, #0
	movne	r0, #8
	moveq	r0, #0
	.loc 1 44 0
	cmp	r0, #0
	movne	r3, #440
	moveq	r3, #408
	add	r3, r7, r3
	.loc 1 36 0
	str	r0, [sp, #4]
.LVL1:
	.loc 1 44 0
	ldrh	r0, [r3, #4]
	.loc 1 35 0
	ldr	r3, .L33
	.loc 1 45 0
	ldr	r9, .L33+4
	.loc 1 35 0
	ldr	r3, [r3, #0]
	.loc 1 45 0
	ldr	r2, [r9, #0]
	.loc 1 35 0
	str	r3, [sp, #0]
	.loc 1 41 0
	ldr	r3, .L33+8
	mvn	r6, #0
	.loc 1 34 0
	ldr	r1, [r7, #352]
	.loc 1 41 0
	str	r6, [r3, #0]
	.loc 1 42 0
	ldr	r3, .L33+12
	.loc 1 45 0
	cmp	ip, r2
	.loc 1 42 0
	mov	r8, #0
	.loc 1 44 0
	ldr	lr, .L33+16
	.loc 1 42 0
	str	r8, [r3, #0]
	.loc 1 46 0
	movne	r3, #1
	.loc 1 44 0
	str	r0, [lr, #0]
	.loc 1 48 0
	ldr	r0, [sp, #4]
	.loc 1 46 0
	strne	r3, [lr, #0]
	.loc 1 35 0
	ldr	r3, [sp, #0]
	.loc 1 34 0
	mov	r2, ip, asl #1
	add	r5, r1, r2
.LVL2:
	.loc 1 35 0
	add	r4, r3, r2
.LVL3:
	.loc 1 48 0
	mov	r1, r8
	mov	sl, r0, asl #5
	mov	r8, r0
.LVL4:
	str	r6, [sp, #12]
	str	ip, [r9, #0]
	b	.L15
.LVL5:
.L16:
.LBB2:
	.loc 1 51 0
	add	r2, r7, r8, asl #2
	ldr	r3, [r2, #412]
	.loc 1 52 0
	cmp	r3, #0
	.loc 1 51 0
	str	r3, [sp, #8]
	.loc 1 53 0
	addeq	r5, r5, #1024
	.loc 1 54 0
	addeq	r4, r4, #1024
	.loc 1 52 0
	beq	.L19
	.loc 1 57 0
	mov	r3, #0
	str	r3, [r2, #412]
	mov	fp, r3
	mov	r6, sl
.L20:
	ldr	r0, [sp, #12]
.LBB3:
	.loc 1 63 0
	ldr	r2, [sp, #8]
	mov	r3, #1
.LBE3:
	.loc 1 57 0
	cmp	r0, r6
	movcs	r0, r6
.LBB4:
	.loc 1 63 0
	ands	r2, r2, r3, asl fp
.LBE4:
	.loc 1 57 0
	str	r0, [sp, #12]
.LBB5:
	.loc 1 72 0
	addeq	r5, r5, #32
	.loc 1 73 0
	addeq	r4, r4, #32
	.loc 1 63 0
	beq	.L25
	str	r5, [sp, #20]
	str	r4, [sp, #16]
	mov	r9, #0
.L23:
.LBB6:
	.loc 1 65 0
	ldr	r0, [sp, #20]
.LBE6:
	.loc 1 64 0
	add	r9, r9, #1
.LBB7:
	.loc 1 65 0
	ldrh	r3, [r0], #2
.LVL6:
.LBE7:
	.loc 1 64 0
	cmp	r9, #16
.LVL7:
.LBB8:
	.loc 1 66 0
	mov	r2, r3, lsr #7
	mov	r1, r3, lsr #8
	.loc 1 65 0
	str	r0, [sp, #20]
	.loc 1 66 0
	mov	r0, r3, asl #2
	mov	ip, r3, lsr #2
	mov	lr, r3, asl #17
	and	r2, r2, #30
	and	r1, r1, #32
	and	r0, r0, #960
	mov	r3, r3, asl #11
	and	r3, r3, #30720
	orr	r2, r2, lr, lsr #31
	orr	r1, r1, r0
	and	ip, ip, #1024
	orr	r2, r2, r3
	orr	r1, r1, ip
	ldr	r3, [sp, #16]
	orr	r2, r2, r1
	strh	r2, [r3], #2	@ movhi
	str	r3, [sp, #16]
.LBE8:
	.loc 1 64 0
	bne	.L23
	add	r4, r4, #32
	add	r5, r5, #32
.L25:
.LBE5:
	.loc 1 58 0
	add	fp, fp, #1
	cmp	fp, #32
	add	r6, r6, #1
	bne	.L20
	add	r1, sl, #31
.L19:
.LBE2:
	.loc 1 50 0
	add	r8, r8, #1
	add	sl, sl, #32
.L15:
	ldr	r0, [sp, #4]
	add	r3, r0, #8
	cmp	r8, r3
	bcc	.L16
	.loc 1 78 0
	ldr	r3, [r7, #508]
	ldr	r2, [sp, #0]
	.loc 1 50 0
	ldr	r0, [sp, #12]
	.loc 1 78 0
	add	r3, r2, r3, asl #1
	ldr	r2, .L33+20
	ldrh	r2, [r3, r2]
	.loc 1 50 0
	ldr	r3, .L33+8
	.loc 1 78 0
	orr	r2, r2, #2031616
	.loc 1 50 0
	str	r0, [r3, #0]
	ldr	r3, .L33+12
	str	r1, [r3, #0]
	.loc 1 78 0
	mov	r3, #67108864
	str	r2, [r3, #848]
	.loc 1 79 0
	add	sp, sp, #24
	ldmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}
.L34:
	.align	2
.L33:
	.word	g_nitroPalette
	.word	g_paletteBank
	.word	g_startTransfer
	.word	g_endTransfer
	.word	g_loadFixed
	.word	8190
.LFE110:
	.size	neoUpdatePalette, .-neoUpdatePalette
	.align	2
	.global	neoLoadPalette
	.type	neoLoadPalette, %function
neoLoadPalette:
.LFB111:
	.loc 1 82 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 83 0
	ldr	r3, .L49
	.loc 1 82 0
	stmfd	sp!, {r4, r5, r6, r8, lr}
.LCFI2:
	.loc 1 83 0
	ldr	r8, [r3, #0]
	ldr	r3, .L49+4
	.loc 1 82 0
	sub	sp, sp, #4
.LCFI3:
	.loc 1 83 0
	ldr	r6, [r3, #0]
	cmp	r8, r6
	bls	.L36
.LBB13:
	.loc 1 84 0
	ldr	r3, .L49+8
	.loc 1 87 0
	mov	r0, #0
	.loc 1 84 0
	ldr	r5, [r3, #0]
	.loc 1 87 0
	bl	vramSetBankG
.LBB14:
.LBB15:
	.file 2 "C:/devkitPro/libnds/include/nds/dma.h"
	.loc 2 96 0
	rsb	r3, r6, r8
	mov	r3, r3, asl #5
.LBE15:
.LBE14:
	.loc 1 84 0
	mov	r4, r6, asl #5
.LBB16:
.LBB17:
	.loc 2 96 0
	add	r3, r3, #32
.LBE17:
.LBE16:
	.loc 1 84 0
	add	r5, r4, r5
.LVL8:
.LBB18:
.LBB19:
	.loc 2 96 0
	mov	r3, r3, lsr #2
	.loc 2 95 0
	add	r4, r4, #109051904
	.loc 2 94 0
	mov	r2, #67108864
	.loc 2 95 0
	add	r4, r4, #606208
	.loc 2 96 0
	orr	r3, r3, #-2080374784
	.loc 2 94 0
	str	r5, [r2, #212]
	.loc 2 95 0
	str	r4, [r2, #216]
	.loc 2 96 0
	str	r3, [r2, #220]
.L38:
	.loc 2 97 0
	mov	r3, #67108864
	ldr	r3, [r3, #220]
	cmp	r3, #0
	blt	.L38
.LBE19:
.LBE18:
	.loc 1 89 0
	mov	r0, #3
	bl	vramSetBankG
.L36:
.LBE13:
	.loc 1 92 0
	ldr	r3, .L49+12
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L44
.LBB20:
	.loc 1 93 0
	ldr	r3, .L49+8
	.loc 1 98 0
	mov	r0, #0
	.loc 1 93 0
	ldr	r2, [r3, #0]
	ldr	r3, .L49+16
	ldr	r3, [r3, #0]
	add	r4, r2, r3, asl #1
.LVL9:
	.loc 1 98 0
	bl	vramSetBankF
	ldr	r0, .L49+20
.LVL10:
	ldr	ip, .L49+24
.L42:
	.loc 1 101 0
	ldr	r2, [r4, #0]
	.loc 1 98 0
	sub	r3, r0, #8192
.LVL11:
	.loc 1 101 0
	str	r2, [r3, #0]
	.loc 1 102 0
	ldr	r1, [r4, #4]
	ldr	r3, .L49+28
.LVL12:
	str	r1, [r0, r3]
	.loc 1 103 0
	ldr	r2, [r4, #8]
	add	r3, r3, #4
	str	r2, [r0, r3]
	.loc 1 104 0
	ldr	r2, [r4, #12]
	add	r3, r3, #4
	str	r2, [r0, r3]
	.loc 1 105 0
	ldr	r2, [r4, #16]
	add	r3, r3, #4
	str	r2, [r0, r3]
	.loc 1 106 0
	ldr	r2, [r4, #20]
	add	r3, r3, #4
	str	r2, [r0, r3]
	.loc 1 107 0
	ldr	r2, [r4, #24]
	add	r3, r3, #4
	str	r2, [r0, r3]
	.loc 1 108 0
	ldr	r2, [r4, #28]
	add	r3, r3, #4
	str	r2, [r0, r3]
	.loc 1 111 0
	ldmia	r4, {r0, r3}	@ phole ldm
.LVL13:
	str	r3, [ip, #-508]
	.loc 1 112 0
	ldr	r3, [r4, #8]
	.loc 1 110 0
	str	r0, [ip, #-512]
	.loc 1 112 0
	str	r3, [ip, #-504]
	.loc 1 113 0
	ldr	r2, [r4, #12]
	.loc 1 99 0
	ldr	r3, .L49+32
	.loc 1 113 0
	str	r2, [ip, #-500]
	.loc 1 99 0
	cmp	ip, r3
	.loc 1 114 0
	ldr	r3, [r4, #16]
	.loc 1 82 0
	mov	r0, ip
.LVL14:
	.loc 1 114 0
	str	r3, [ip, #-496]
	.loc 1 115 0
	ldr	r3, [r4, #20]
	str	r3, [ip, #-492]
	.loc 1 116 0
	ldr	r3, [r4, #24]
	str	r3, [ip, #-488]
	.loc 1 117 0
	ldr	r3, [r4, #28]
	add	r4, r4, #32
	str	r3, [ip, #-484]
	add	ip, ip, #512
	.loc 1 99 0
	bne	.L42
	.loc 1 123 0
	mov	r0, #12
.LVL15:
	bl	vramSetBankF
	.loc 1 124 0
	ldr	r3, .L49+8
	mov	r1, #512
	ldr	r2, [r3, #0]
	ldr	r3, .L49+16
	ldr	r0, [r3, #0]
	add	r0, r2, r0, asl #1
.LBE20:
	.loc 1 126 0
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r8, lr}
.LBB21:
	.loc 1 124 0
	b	DC_InvalidateRange
.LVL16:
.L44:
.LBE21:
	.loc 1 126 0
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r8, pc}
.L50:
	.align	2
.L49:
	.word	g_endTransfer
	.word	g_startTransfer
	.word	g_nitroPalette
	.word	g_loadFixed
	.word	g_paletteBank
	.word	109649920
	.word	109650432
	.word	-8188
	.word	109658112
.LFE111:
	.size	neoLoadPalette, .-neoLoadPalette
	.align	2
	.global	neoPaletteInit
	.type	neoPaletteInit, %function
neoPaletteInit:
.LFB108:
	.loc 1 23 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI4:
	.loc 1 24 0
	mov	r0, #16384
	.loc 1 23 0
	sub	sp, sp, #4
.LCFI5:
	.loc 1 24 0
	bl	neoSystemVramHAlloc
	ldr	r3, .L53
	str	r0, [r3, #0]
	.loc 1 25 0
	add	sp, sp, #4
	ldmfd	sp!, {pc}
.L54:
	.align	2
.L53:
	.word	g_nitroPalette
.LFE108:
	.size	neoPaletteInit, .-neoPaletteInit
	.data
	.align	2
	.type	g_paletteBank, %object
	.size	g_paletteBank, 4
g_paletteBank:
	.word	-1
	.bss
	.align	2
g_nitroPalette:
	.space	4
	.align	2
g_startTransfer:
	.space	4
	.align	2
g_endTransfer:
	.space	4
	.align	2
g_loadFixed:
	.space	4
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
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x4
	.4byte	.LCFI0-.LFB110
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x38
	.byte	0x8e
	.uleb128 0x1
	.byte	0x8b
	.uleb128 0x2
	.byte	0x8a
	.uleb128 0x3
	.byte	0x89
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x85
	.uleb128 0x7
	.byte	0x84
	.uleb128 0x8
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI2-.LFB111
	.byte	0xe
	.uleb128 0x14
	.byte	0x8e
	.uleb128 0x1
	.byte	0x88
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x4
	.byte	0x84
	.uleb128 0x5
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x4
	.4byte	.LCFI4-.LFB108
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE8:
	.file 3 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 4 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 5 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 6 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
	.file 8 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h"
	.file 9 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h"
	.file 10 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LFB110-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB108-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0xdc9
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF173
	.byte	0x1
	.4byte	.LASF174
	.4byte	.LASF175
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x4
	.byte	0x2e
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x4
	.byte	0x39
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
	.byte	0x3a
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x53
	.4byte	0x6d
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
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
	.byte	0x3
	.byte	0x43
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x45
	.4byte	0x74
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF17
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
	.4byte	0x50
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x61
	.4byte	0x74
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x3
	.byte	0x65
	.4byte	0x3e
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x3
	.byte	0x66
	.4byte	0x62
	.uleb128 0x6
	.byte	0x4
	.4byte	0x102
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x10a
	.uleb128 0x8
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.4byte	0x13a
	.byte	0x1
	.byte	0x5
	.byte	0x9b
	.uleb128 0xa
	.4byte	.LASF19
	.sleb128 0
	.uleb128 0xa
	.4byte	.LASF20
	.sleb128 1
	.uleb128 0xa
	.4byte	.LASF21
	.sleb128 2
	.uleb128 0xa
	.4byte	.LASF22
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0xa0
	.4byte	0x119
	.uleb128 0xb
	.4byte	0x1bd
	.2byte	0x2018
	.byte	0x5
	.2byte	0x119
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x11a
	.4byte	0x13a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x11d
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x120
	.4byte	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x121
	.4byte	0xad
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x122
	.4byte	0x1ce
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x123
	.4byte	0xad
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x124
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.byte	0x0
	.uleb128 0xd
	.4byte	0x1ce
	.4byte	0xad
	.uleb128 0xe
	.4byte	0x10b
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x126
	.4byte	0x145
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x11
	.4byte	0x378
	.4byte	.LASF61
	.byte	0xb0
	.byte	0x9
	.byte	0x15
	.uleb128 0x12
	.ascii	"d\000"
	.byte	0x9
	.byte	0x16
	.4byte	0x378
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.ascii	"a\000"
	.byte	0x9
	.byte	0x17
	.4byte	0x378
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.ascii	"pc\000"
	.byte	0x9
	.byte	0x18
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.ascii	"srh\000"
	.byte	0x9
	.byte	0x19
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x9
	.byte	0x1a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x9
	.byte	0x1b
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x12
	.ascii	"irq\000"
	.byte	0x9
	.byte	0x1c
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x12
	.ascii	"osp\000"
	.byte	0x9
	.byte	0x1d
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.ascii	"xc\000"
	.byte	0x9
	.byte	0x1e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x9
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0x9
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x9
	.byte	0x21
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x9
	.byte	0x22
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x9
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x13
	.4byte	.LASF39
	.byte	0x9
	.byte	0x24
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x9
	.byte	0x25
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x9
	.byte	0x26
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x9
	.byte	0x27
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x9
	.byte	0x28
	.4byte	0x3af
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x9
	.byte	0x29
	.4byte	0x3c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x9
	.byte	0x2a
	.4byte	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x9
	.byte	0x2b
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x9
	.byte	0x2c
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x9
	.byte	0x2d
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x9
	.byte	0x2e
	.4byte	0x3f3
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x9
	.byte	0x2f
	.4byte	0xfc
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x9
	.byte	0x30
	.4byte	0x3ff
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x9
	.byte	0x31
	.4byte	0x405
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xd
	.4byte	0x388
	.4byte	0x9b
	.uleb128 0x14
	.4byte	0x10b
	.byte	0x7
	.byte	0x0
	.uleb128 0x15
	.4byte	0x398
	.byte	0x1
	.4byte	0x9b
	.uleb128 0x16
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x388
	.uleb128 0x17
	.4byte	0x3af
	.byte	0x1
	.uleb128 0x16
	.4byte	0x9b
	.uleb128 0x16
	.4byte	0x37
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x39e
	.uleb128 0x17
	.4byte	0x3c6
	.byte	0x1
	.uleb128 0x16
	.4byte	0x9b
	.uleb128 0x16
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3b5
	.uleb128 0x17
	.4byte	0x3dd
	.byte	0x1
	.uleb128 0x16
	.4byte	0x9b
	.uleb128 0x16
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3cc
	.uleb128 0x15
	.4byte	0x3f3
	.byte	0x1
	.4byte	0x94
	.uleb128 0x16
	.4byte	0x94
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e3
	.uleb128 0x18
	.byte	0x1
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f9
	.uleb128 0xd
	.4byte	0x415
	.4byte	0x9b
	.uleb128 0x14
	.4byte	0x10b
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x8
	.byte	0x6
	.4byte	0x1e2
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x8
	.byte	0x8
	.4byte	0x42b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x431
	.uleb128 0x15
	.4byte	0x441
	.byte	0x1
	.4byte	0xc6
	.uleb128 0x16
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x8
	.byte	0x9
	.4byte	0x44c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x452
	.uleb128 0x15
	.4byte	0x462
	.byte	0x1
	.4byte	0xd0
	.uleb128 0x16
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x8
	.byte	0xa
	.4byte	0x46d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x473
	.uleb128 0x15
	.4byte	0x483
	.byte	0x1
	.4byte	0xdb
	.uleb128 0x16
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x8
	.byte	0xc
	.4byte	0x48e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x494
	.uleb128 0x17
	.4byte	0x4a5
	.byte	0x1
	.uleb128 0x16
	.4byte	0xdb
	.uleb128 0x16
	.4byte	0xc6
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x8
	.byte	0xd
	.4byte	0x4b0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4b6
	.uleb128 0x17
	.4byte	0x4c7
	.byte	0x1
	.uleb128 0x16
	.4byte	0xdb
	.uleb128 0x16
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x8
	.byte	0xe
	.4byte	0x4d2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4d8
	.uleb128 0x17
	.4byte	0x4e9
	.byte	0x1
	.uleb128 0x16
	.4byte	0xdb
	.uleb128 0x16
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x8
	.byte	0x10
	.4byte	0x46d
	.uleb128 0x11
	.4byte	0x539
	.4byte	.LASF62
	.byte	0xc
	.byte	0xa
	.byte	0x17
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0xa
	.byte	0x18
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.ascii	"end\000"
	.byte	0xa
	.byte	0x19
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.ascii	"acc\000"
	.byte	0xa
	.byte	0x1a
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0xa
	.byte	0x1b
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xa
	.byte	0x1c
	.4byte	0x4f4
	.uleb128 0x11
	.4byte	0x57b
	.4byte	.LASF66
	.byte	0xc
	.byte	0xa
	.byte	0x1f
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0xa
	.byte	0x20
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0xa
	.byte	0x21
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0xa
	.byte	0x22
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xa
	.byte	0x23
	.4byte	0x544
	.uleb128 0x19
	.4byte	0x974
	.2byte	0x248
	.byte	0x7
	.byte	0xc0
	.uleb128 0x12
	.ascii	"cpu\000"
	.byte	0x7
	.byte	0xc1
	.4byte	0x415
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x7
	.byte	0xc4
	.4byte	0x974
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x7
	.byte	0xc7
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x7
	.byte	0xc8
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0x7
	.byte	0xcb
	.4byte	0x984
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x7
	.byte	0xcc
	.4byte	0x57b
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x7
	.byte	0xcd
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x7
	.byte	0xd0
	.4byte	0x994
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x7
	.byte	0xd1
	.4byte	0x994
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x7
	.byte	0xd2
	.4byte	0x994
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x7
	.byte	0xd3
	.4byte	0x994
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x7
	.byte	0xd4
	.4byte	0x994
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x7
	.byte	0xd5
	.4byte	0x994
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x7
	.byte	0xd6
	.4byte	0x99a
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x7
	.byte	0xd7
	.4byte	0x99a
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x7
	.byte	0xd8
	.4byte	0x99a
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x7
	.byte	0xda
	.4byte	0x9a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0x7
	.byte	0xdd
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x7
	.byte	0xde
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0x7
	.byte	0xdf
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x13
	.4byte	.LASF90
	.byte	0x7
	.byte	0xe0
	.4byte	0x9b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0x7
	.byte	0xe1
	.4byte	0x9b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0x7
	.byte	0xe2
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0x7
	.byte	0xe5
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0x7
	.byte	0xe6
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0x7
	.byte	0xe7
	.4byte	0x99a
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x7
	.byte	0xe8
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0x7
	.byte	0xea
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x7
	.byte	0xeb
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0x7
	.byte	0xec
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x13
	.4byte	.LASF100
	.byte	0x7
	.byte	0xed
	.4byte	0x9bc
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0x7
	.byte	0xee
	.4byte	0x99a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0x7
	.byte	0xf1
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x7
	.byte	0xf2
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x7
	.byte	0xf3
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x7
	.byte	0xf4
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x7
	.byte	0xf7
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x7
	.byte	0xf8
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x7
	.byte	0xf9
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x7
	.byte	0xfa
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x7
	.byte	0xfb
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0x7
	.byte	0xfc
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x13
	.4byte	.LASF112
	.byte	0x7
	.byte	0xfd
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x102
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x103
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x106
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x108
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x109
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x10a
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x10b
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xc
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x10d
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x10e
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x10f
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xc
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x110
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x111
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x114
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x115
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0x7
	.2byte	0x116
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0x7
	.2byte	0x117
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0x7
	.2byte	0x118
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0x7
	.2byte	0x11b
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0x7
	.2byte	0x11c
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0x7
	.2byte	0x11f
	.4byte	0x9cc
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xc
	.4byte	.LASF133
	.byte	0x7
	.2byte	0x122
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xc
	.4byte	.LASF134
	.byte	0x7
	.2byte	0x123
	.4byte	0x9dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xd
	.4byte	0x984
	.4byte	0x1e0
	.uleb128 0x14
	.4byte	0x10b
	.byte	0x8
	.byte	0x0
	.uleb128 0xd
	.4byte	0x994
	.4byte	0x539
	.uleb128 0x14
	.4byte	0x10b
	.byte	0x6
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc6
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9a6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9ac
	.uleb128 0x1a
	.4byte	0xc6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9b7
	.uleb128 0x1a
	.4byte	0xdb
	.uleb128 0xd
	.4byte	0x9cc
	.4byte	0xdb
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xf
	.byte	0x0
	.uleb128 0xd
	.4byte	0x9dc
	.4byte	0xc6
	.uleb128 0x14
	.4byte	0x10b
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.4byte	0x9eb
	.4byte	0xc6
	.uleb128 0x1b
	.4byte	0x10b
	.byte	0x0
	.uleb128 0x1c
	.4byte	0xa06
	.2byte	0x400
	.byte	0x7
	.byte	0xbf
	.uleb128 0x1d
	.4byte	0x586
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0x7
	.2byte	0x125
	.4byte	0xa06
	.byte	0x0
	.uleb128 0xd
	.4byte	0xa16
	.4byte	0xdb
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xff
	.byte	0x0
	.uleb128 0x1f
	.4byte	0xa9c
	.4byte	.LASF136
	.2byte	0x2000
	.byte	0x7
	.byte	0xbe
	.uleb128 0x20
	.4byte	0x9eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF137
	.byte	0x7
	.2byte	0x128
	.4byte	0xa9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xc
	.4byte	.LASF138
	.byte	0x7
	.2byte	0x129
	.4byte	0xaac
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xc
	.4byte	.LASF139
	.byte	0x7
	.2byte	0x12a
	.4byte	0xabc
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xc
	.4byte	.LASF140
	.byte	0x7
	.2byte	0x12b
	.4byte	0xacc
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0x7
	.2byte	0x12c
	.4byte	0xadc
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0x7
	.2byte	0x12d
	.4byte	0xaec
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0x7
	.2byte	0x12e
	.4byte	0xafc
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xd
	.4byte	0xaac
	.4byte	0x420
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xabc
	.4byte	0x441
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xacc
	.4byte	0x462
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xadc
	.4byte	0x483
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xaec
	.4byte	0x4a5
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xafc
	.4byte	0x4c7
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xb0c
	.4byte	0x4e9
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xff
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF144
	.byte	0x7
	.2byte	0x12f
	.4byte	0xa16
	.uleb128 0x21
	.4byte	0xb3d
	.byte	0x1
	.4byte	.LASF145
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.4byte	.LFB107
	.4byte	.LFE107
	.byte	0x1
	.byte	0x5d
	.uleb128 0x22
	.4byte	.LASF152
	.byte	0x1
	.byte	0xb
	.4byte	0xdb
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF160
	.byte	0x1
	.byte	0x1c
	.4byte	.LFB109
	.4byte	.LFE109
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.4byte	0xbf5
	.byte	0x1
	.4byte	.LASF146
	.byte	0x1
	.byte	0x21
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST2
	.uleb128 0x25
	.4byte	.LASF147
	.byte	0x1
	.byte	0x22
	.4byte	0xbf5
	.4byte	.LLST3
	.uleb128 0x25
	.4byte	.LASF148
	.byte	0x1
	.byte	0x23
	.4byte	0x99a
	.4byte	.LLST4
	.uleb128 0x26
	.4byte	.LASF149
	.byte	0x1
	.byte	0x24
	.4byte	0x9b7
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.ascii	"i\000"
	.byte	0x1
	.byte	0x25
	.4byte	0xdb
	.byte	0x1
	.byte	0x58
	.uleb128 0x27
	.ascii	"j\000"
	.byte	0x1
	.byte	0x26
	.4byte	0xdb
	.byte	0x1
	.byte	0x5b
	.uleb128 0x27
	.ascii	"p\000"
	.byte	0x1
	.byte	0x27
	.4byte	0xdb
	.byte	0x1
	.byte	0x59
	.uleb128 0x28
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x26
	.4byte	.LASF150
	.byte	0x1
	.byte	0x33
	.4byte	0x9b7
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.4byte	0xbe0
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x2a
	.4byte	.LASF151
	.byte	0x1
	.byte	0x3b
	.4byte	0x9b7
	.byte	0x0
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x2c
	.ascii	"d\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x9b7
	.4byte	.LLST5
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbfb
	.uleb128 0x1a
	.4byte	0xd0
	.uleb128 0x2d
	.4byte	0xc3a
	.4byte	.LASF176
	.byte	0x2
	.byte	0x5d
	.byte	0x1
	.byte	0x3
	.uleb128 0x2e
	.4byte	.LASF153
	.byte	0x2
	.byte	0x5d
	.4byte	0xa2
	.uleb128 0x2f
	.ascii	"src\000"
	.byte	0x2
	.byte	0x5d
	.4byte	0x104
	.uleb128 0x2e
	.4byte	.LASF154
	.byte	0x2
	.byte	0x5d
	.4byte	0x1e0
	.uleb128 0x2e
	.4byte	.LASF155
	.byte	0x2
	.byte	0x5d
	.4byte	0xad
	.byte	0x0
	.uleb128 0x24
	.4byte	0xce0
	.byte	0x1
	.4byte	.LASF156
	.byte	0x1
	.byte	0x52
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST6
	.uleb128 0x30
	.4byte	0xca3
	.4byte	.LBB13
	.4byte	.LBE13
	.uleb128 0x26
	.4byte	.LASF147
	.byte	0x1
	.byte	0x54
	.4byte	0xbf5
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.4byte	.LASF148
	.byte	0x1
	.byte	0x55
	.4byte	0x99a
	.uleb128 0x2a
	.4byte	.LASF157
	.byte	0x1
	.byte	0x56
	.4byte	0x9b7
	.uleb128 0x31
	.4byte	0xc00
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x58
	.uleb128 0x32
	.4byte	0xc2e
	.uleb128 0x32
	.4byte	0xc23
	.uleb128 0x32
	.4byte	0xc18
	.uleb128 0x32
	.4byte	0xc0d
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x25
	.4byte	.LASF147
	.byte	0x1
	.byte	0x5d
	.4byte	0x9b1
	.4byte	.LLST7
	.uleb128 0x25
	.4byte	.LASF158
	.byte	0x1
	.byte	0x5e
	.4byte	0xce0
	.4byte	.LLST8
	.uleb128 0x25
	.4byte	.LASF159
	.byte	0x1
	.byte	0x5f
	.4byte	0xce0
	.4byte	.LLST9
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x1
	.byte	0x60
	.4byte	0xf1
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xdb
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF161
	.byte	0x1
	.byte	0x17
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LLST10
	.uleb128 0x35
	.4byte	.LASF162
	.byte	0x5
	.2byte	0x129
	.4byte	0xd06
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x26
	.4byte	.LASF163
	.byte	0x1
	.byte	0x5
	.4byte	0x99a
	.byte	0x5
	.byte	0x3
	.4byte	g_nitroPalette
	.uleb128 0x26
	.4byte	.LASF164
	.byte	0x1
	.byte	0x6
	.4byte	0xdb
	.byte	0x5
	.byte	0x3
	.4byte	g_startTransfer
	.uleb128 0x26
	.4byte	.LASF165
	.byte	0x1
	.byte	0x7
	.4byte	0xdb
	.byte	0x5
	.byte	0x3
	.4byte	g_endTransfer
	.uleb128 0x26
	.4byte	.LASF166
	.byte	0x1
	.byte	0x8
	.4byte	0xdb
	.byte	0x5
	.byte	0x3
	.4byte	g_loadFixed
	.uleb128 0x26
	.4byte	.LASF167
	.byte	0x1
	.byte	0x9
	.4byte	0xdb
	.byte	0x5
	.byte	0x3
	.4byte	g_paletteBank
	.uleb128 0xd
	.4byte	0xd6c
	.4byte	0x49
	.uleb128 0x36
	.byte	0x0
	.uleb128 0x37
	.4byte	.LASF168
	.byte	0x6
	.byte	0x2c
	.4byte	0xd61
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0xd84
	.4byte	0x49
	.uleb128 0x36
	.byte	0x0
	.uleb128 0x37
	.4byte	.LASF169
	.byte	0x6
	.byte	0x2d
	.4byte	0xd79
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0xd9c
	.4byte	0x49
	.uleb128 0x36
	.byte	0x0
	.uleb128 0x37
	.4byte	.LASF170
	.byte	0x6
	.byte	0x2e
	.4byte	0xd91
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.4byte	.LASF171
	.byte	0x7
	.2byte	0x149
	.4byte	0xdb8
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb0c
	.uleb128 0x39
	.4byte	.LASF172
	.byte	0x7
	.2byte	0x14d
	.4byte	0xb0c
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
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x5
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.4byte	0x7e
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xdcd
	.4byte	0xb18
	.ascii	"neoVideoPaletteBank\000"
	.4byte	0xb3d
	.ascii	"neoPaletteExit\000"
	.4byte	0xb4f
	.ascii	"neoUpdatePalette\000"
	.4byte	0xc3a
	.ascii	"neoLoadPalette\000"
	.4byte	0xce6
	.ascii	"neoPaletteInit\000"
	.4byte	0xda9
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
	.4byte	.LBB3-.Ltext0
	.4byte	.LBE3-.Ltext0
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF25:
	.ascii	"clearColor\000"
.LASF39:
	.ascii	"checkpc\000"
.LASF43:
	.ascii	"write8\000"
.LASF91:
	.ascii	"smaBankbit\000"
.LASF143:
	.ascii	"cpuCheckPcTable\000"
.LASF99:
	.ascii	"spriteMask\000"
.LASF122:
	.ascii	"ctrl3Reg\000"
.LASF48:
	.ascii	"fetch32\000"
.LASF162:
	.ascii	"glGlob\000"
.LASF163:
	.ascii	"g_nitroPalette\000"
.LASF107:
	.ascii	"cpuClocksPerScanline\000"
.LASF55:
	.ascii	"TRead16Func\000"
.LASF73:
	.ascii	"romBankCount\000"
.LASF102:
	.ascii	"tileOffsetX\000"
.LASF141:
	.ascii	"cpuWrite16Table\000"
.LASF15:
	.ascii	"uint32\000"
.LASF21:
	.ascii	"GL_MODELVIEW\000"
.LASF104:
	.ascii	"tileScaleX\000"
.LASF105:
	.ascii	"tileScaleY\000"
.LASF44:
	.ascii	"write16\000"
.LASF60:
	.ascii	"TCheckPcFunc\000"
.LASF134:
	.ascii	"varEnd\000"
.LASF57:
	.ascii	"TWrite8Func\000"
.LASF40:
	.ascii	"read8\000"
.LASF70:
	.ascii	"TNeoADPCMBStream\000"
.LASF54:
	.ascii	"TRead8Func\000"
.LASF146:
	.ascii	"neoUpdatePalette\000"
.LASF101:
	.ascii	"pTileBuffer\000"
.LASF139:
	.ascii	"cpuRead32Table\000"
.LASF23:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF8:
	.ascii	"long int\000"
.LASF69:
	.ascii	"frequency\000"
.LASF58:
	.ascii	"TWrite16Func\000"
.LASF46:
	.ascii	"fetch8\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF132:
	.ascii	"keyGrid\000"
.LASF45:
	.ascii	"write32\000"
.LASF160:
	.ascii	"neoPaletteExit\000"
.LASF145:
	.ascii	"neoVideoPaletteBank\000"
.LASF161:
	.ascii	"neoPaletteInit\000"
.LASF49:
	.ascii	"IrqCallback\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF123:
	.ascii	"ctrl4Reg\000"
.LASF112:
	.ascii	"romBankAddress\000"
.LASF170:
	.ascii	"TAN_bin\000"
.LASF64:
	.ascii	"step\000"
.LASF76:
	.ascii	"adpcmActive\000"
.LASF96:
	.ascii	"vramBaseMask\000"
.LASF72:
	.ascii	"spriteCount\000"
.LASF148:
	.ascii	"pDst\000"
.LASF51:
	.ascii	"UnrecognizedCallback\000"
.LASF18:
	.ascii	"char\000"
.LASF125:
	.ascii	"irqVectorLatch\000"
.LASF83:
	.ascii	"pVram\000"
.LASF126:
	.ascii	"screenDarkLatch\000"
.LASF34:
	.ascii	"prev_pc\000"
.LASF66:
	.ascii	"_TNeoADPCMBStream\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF33:
	.ascii	"flags\000"
.LASF17:
	.ascii	"double\000"
.LASF98:
	.ascii	"autoAnimationCounter\000"
.LASF26:
	.ascii	"textures\000"
.LASF166:
	.ascii	"g_loadFixed\000"
.LASF20:
	.ascii	"GL_POSITION\000"
.LASF157:
	.ascii	"transferSize\000"
.LASF144:
	.ascii	"TNeoContext\000"
.LASF106:
	.ascii	"cpuClockDivide\000"
.LASF94:
	.ascii	"frameCount\000"
.LASF115:
	.ascii	"vramOffset\000"
.LASF164:
	.ascii	"g_startTransfer\000"
.LASF175:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF135:
	.ascii	"fill\000"
.LASF37:
	.ascii	"cycles\000"
.LASF142:
	.ascii	"cpuWrite32Table\000"
.LASF129:
	.ascii	"paletteRamLatch\000"
.LASF168:
	.ascii	"COS_bin\000"
.LASF80:
	.ascii	"pRam\000"
.LASF82:
	.ascii	"pCard\000"
.LASF97:
	.ascii	"displayCounter\000"
.LASF53:
	.ascii	"TCycloneContext\000"
.LASF109:
	.ascii	"watchdogCounter\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF147:
	.ascii	"pSrc\000"
.LASF138:
	.ascii	"cpuRead16Table\000"
.LASF118:
	.ascii	"displayControlMask\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF130:
	.ascii	"active\000"
.LASF61:
	.ascii	"Cyclone\000"
.LASF79:
	.ascii	"pBios\000"
.LASF153:
	.ascii	"channel\000"
.LASF100:
	.ascii	"paletteDirty\000"
.LASF169:
	.ascii	"SIN_bin\000"
.LASF24:
	.ascii	"matrixMode\000"
.LASF28:
	.ascii	"nextBlock\000"
.LASF137:
	.ascii	"cpuRead8Table\000"
.LASF92:
	.ascii	"smaRand\000"
.LASF62:
	.ascii	"_TNeoADPCMStream\000"
.LASF59:
	.ascii	"TWrite32Func\000"
.LASF87:
	.ascii	"smaAddr0\000"
.LASF11:
	.ascii	"long long int\000"
.LASF19:
	.ascii	"GL_PROJECTION\000"
.LASF124:
	.ascii	"coinReg\000"
.LASF67:
	.ascii	"initOffset\000"
.LASF152:
	.ascii	"enable\000"
.LASF52:
	.ascii	"internal\000"
.LASF47:
	.ascii	"fetch16\000"
.LASF88:
	.ascii	"smaAddr1\000"
.LASF32:
	.ascii	"unused\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF158:
	.ascii	"pDst0\000"
.LASF159:
	.ascii	"pDst1\000"
.LASF117:
	.ascii	"displayControl\000"
.LASF90:
	.ascii	"smaBankoffset\000"
.LASF22:
	.ascii	"GL_TEXTURE\000"
.LASF156:
	.ascii	"neoLoadPalette\000"
.LASF95:
	.ascii	"pVramBase\000"
.LASF63:
	.ascii	"offset\000"
.LASF77:
	.ascii	"pRom0\000"
.LASF103:
	.ascii	"tileOffsetY\000"
.LASF140:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF27:
	.ascii	"activeTexture\000"
.LASF121:
	.ascii	"ctrl2Reg\000"
.LASF41:
	.ascii	"read16\000"
.LASF110:
	.ascii	"paletteBank\000"
.LASF174:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoVideoPale"
	.ascii	"tte.arm.c\000"
.LASF172:
	.ascii	"g_neoContext\000"
.LASF38:
	.ascii	"membase\000"
.LASF173:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF165:
	.ascii	"g_endTransfer\000"
.LASF93:
	.ascii	"scanline\000"
.LASF155:
	.ascii	"size\000"
.LASF85:
	.ascii	"pPalette\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF131:
	.ascii	"debug\000"
.LASF78:
	.ascii	"pRom1\000"
.LASF42:
	.ascii	"read32\000"
.LASF154:
	.ascii	"dest\000"
.LASF84:
	.ascii	"pSpriteRam\000"
.LASF50:
	.ascii	"ResetCallback\000"
.LASF128:
	.ascii	"sramProtectLatch\000"
.LASF111:
	.ascii	"fixedBank\000"
.LASF171:
	.ascii	"g_neo\000"
.LASF30:
	.ascii	"nameCount\000"
.LASF120:
	.ascii	"ctrl1Reg\000"
.LASF36:
	.ascii	"state_flags\000"
.LASF114:
	.ascii	"sramProtection\000"
.LASF14:
	.ascii	"uint8\000"
.LASF81:
	.ascii	"pSram\000"
.LASF68:
	.ascii	"freqCounter\000"
.LASF4:
	.ascii	"short int\000"
.LASF133:
	.ascii	"frameCounter\000"
.LASF75:
	.ascii	"adpcmb\000"
.LASF29:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF149:
	.ascii	"start\000"
.LASF151:
	.ascii	"index\000"
.LASF119:
	.ascii	"displayCounterLoad\000"
.LASF108:
	.ascii	"irqPending\000"
.LASF176:
	.ascii	"dmaCopyWords\000"
.LASF56:
	.ascii	"TRead32Func\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF74:
	.ascii	"adpcm\000"
.LASF16:
	.ascii	"float\000"
.LASF31:
	.ascii	"gl_hidden_globals\000"
.LASF71:
	.ascii	"pVideoWriteTable\000"
.LASF150:
	.ascii	"dirty\000"
.LASF86:
	.ascii	"bankTable\000"
.LASF89:
	.ascii	"smaBankAddr\000"
.LASF136:
	.ascii	"_TNeoContext\000"
.LASF35:
	.ascii	"reserved\000"
.LASF127:
	.ascii	"fixedRomLatch\000"
.LASF113:
	.ascii	"sramProtectCount\000"
.LASF65:
	.ascii	"TNeoADPCMStream\000"
.LASF167:
	.ascii	"g_paletteBank\000"
.LASF116:
	.ascii	"vramMod\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
