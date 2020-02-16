	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
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
.LFB166:
	.file 1 "C:/Users/GRX/NeoDS/arm9/source/NeoVideoPalette.arm.c"
	.loc 1 12 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 13 0
	ldrb	r2, [r7, #572]	@ zero_extendqisi2
	cmp	r2, r0
	bxeq	lr
	.loc 1 15 0
	cmp	r0, #0
	movne	r2, #4096
	.loc 1 14 0
	strb	r0, [r7, #572]
	.loc 1 15 0
	strne	r2, [r7, #508]
	.loc 1 16 0
	streq	r0, [r7, #508]
	bx	lr
.LFE166:
	.size	neoVideoPaletteBank, .-neoVideoPaletteBank
	.align	2
	.global	neoPaletteExit
	.type	neoPaletteExit, %function
neoPaletteExit:
.LFB168:
	.loc 1 28 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 30 0
	bx	lr
.LFE168:
	.size	neoPaletteExit, .-neoPaletteExit
	.align	2
	.global	neoUpdatePalette
	.type	neoUpdatePalette, %function
neoUpdatePalette:
.LFB169:
	.loc 1 33 0
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
.LCFI0:
	sub	sp, sp, #32
.LCFI1:
	.loc 1 34 0
	ldr	r1, [r7, #508]
	.loc 1 45 0
	ldr	r0, .L23
	.loc 1 36 0
	cmp	r1, #0
	movne	r4, #8
.LVL1:
	moveq	r4, #0
	.loc 1 35 0
	ldr	ip, .L23+4
	.loc 1 45 0
	ldr	r0, [r0, #0]
	.loc 1 44 0
	add	r3, r7, r4, asl #2
	.loc 1 35 0
	ldr	r5, [ip, #0]
	.loc 1 44 0
	add	r3, r3, #412
	.loc 1 45 0
	cmp	r1, r0
	.loc 1 44 0
	ldrh	r3, [r3, #0]
	.loc 1 34 0
	ldr	r0, [r7, #352]
	.loc 1 35 0
	str	r5, [sp, #16]
	.loc 1 46 0
	movne	r5, #1
	.loc 1 44 0
	str	r3, [ip, #4]
	.loc 1 48 0
	ldr	r6, .L23
	.loc 1 46 0
	strne	r5, [ip, #4]
	.loc 1 48 0
	cmp	r4, #0
	mov	ip, r4
.LVL2:
	movne	r5, #440
	moveq	r5, #408
	.loc 1 35 0
	ldr	r9, [sp, #16]
	.loc 1 34 0
	mov	r3, r1, asl #1
	.loc 1 48 0
	add	r5, r7, r5
	str	r1, [r6, #0]
	.loc 1 50 0
	add	r1, ip, #8
	.loc 1 34 0
	add	r0, r0, r3
.LVL3:
	.loc 1 48 0
	mov	r2, #0
	.loc 1 35 0
	add	r3, r9, r3
.LVL4:
	.loc 1 48 0
	add	r5, r5, #4
	mov	r4, r4, asl #5
.LVL5:
	mvn	r8, #0
	.loc 1 50 0
	str	r1, [sp, #28]
	b	.L12
.LVL6:
.L19:
.LBB14:
	.loc 1 51 0
	ldr	r9, [r5, #0]
	.loc 1 52 0
	cmp	r9, #0
	.loc 1 51 0
	str	r9, [sp, #12]
	.loc 1 53 0
	addeq	r0, r0, #1024
.LVL7:
	.loc 1 54 0
	addeq	r3, r3, #1024
.LVL8:
	.loc 1 52 0
	beq	.L14
	.loc 1 57 0
	mov	r1, #0
	str	r1, [r5, #0]
	add	r2, r3, #32
	add	r1, r0, #32
	mov	sl, r4
	mov	r6, #0
.LVL9:
.L18:
.LBB15:
	.loc 1 63 0
	ldr	r3, [sp, #12]
.LVL10:
	mov	r9, #1
.LBE15:
	.loc 1 57 0
	cmp	r8, sl
	movcs	r8, sl
.LBB17:
	.loc 1 63 0
	ands	r3, r3, r9, asl r6
.LBE17:
	.loc 1 57 0
	sub	r0, r2, #32
.LVL11:
	sub	r3, r1, #32
	str	r0, [sp, #20]
	str	r3, [sp, #24]
.LBB18:
	.loc 1 63 0
	beq	.L15
	mov	r0, #0
	str	r2, [sp, #4]
.L16:
.LBB16:
	.loc 1 65 0
	ldr	r9, [sp, #24]
	ldrh	r3, [r9, r0]
	.loc 1 66 0
	mov	r9, r3, asl #11
	mov	fp, r3, asl #2
	mov	r2, r3, lsr #7
	and	r9, r9, #30720
	and	fp, fp, #960
	orr	fp, r9, fp
	and	r9, r2, #30
	orr	fp, fp, r9
	mov	r2, r3, lsr #8
	mov	r9, r3, asl #17
	orr	fp, fp, r9, lsr #31
	mov	r3, r3, lsr #2
	and	r9, r2, #32
	and	r3, r3, #1024
	orr	r9, fp, r9
	orr	r9, r9, r3
	ldr	r3, [sp, #20]
	strh	r9, [r3, r0]	@ movhi
	add	r0, r0, #2
.LBE16:
	.loc 1 64 0
	cmp	r0, #32
	bne	.L16
	ldr	r2, [sp, #4]
.L15:
.LBE18:
	.loc 1 58 0
	add	r6, r6, #1
.LVL12:
	cmp	r6, #32
.LBB19:
	.loc 1 64 0
	mov	r0, r1
.LVL13:
	mov	r3, r2
.LVL14:
.LBE19:
	.loc 1 58 0
	add	sl, sl, #1
	add	r1, r1, #32
	add	r2, r2, #32
	bne	.L18
	add	r2, r4, #31
.L14:
.LBE14:
	.loc 1 50 0
	add	ip, ip, #1
.LVL15:
	add	r4, r4, #32
	add	r5, r5, #4
.L12:
	ldr	r9, [sp, #28]
	cmp	ip, r9
	bcc	.L19
	ldr	r3, .L23+4
.LVL16:
	.loc 1 78 0
	ldr	r0, [sp, #16]
.LVL17:
	.loc 1 50 0
	str	r2, [r3, #12]
	str	r8, [r3, #8]
	.loc 1 78 0
	ldr	r3, [r7, #508]
	add	r3, r3, #4080
	add	r3, r3, #15
	mov	r3, r3, asl #1
	ldrh	r2, [r0, r3]
	mov	r3, #67108864
	orr	r2, r2, #2031616
	str	r2, [r3, #848]
	.loc 1 79 0
	add	sp, sp, #32
	ldmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}
.L24:
	.align	2
.L23:
	.word	.LANCHOR1
	.word	.LANCHOR0
.LFE169:
	.size	neoUpdatePalette, .-neoUpdatePalette
	.align	2
	.global	neoLoadPalette
	.type	neoLoadPalette, %function
neoLoadPalette:
.LFB170:
	.loc 1 82 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 83 0
	ldr	r2, .L33
	.loc 1 82 0
	stmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
.LCFI2:
	.loc 1 83 0
	ldr	r1, [r2, #12]
	ldr	r3, [r2, #8]
	cmp	r1, r3
	bls	.L26
.LBB20:
.LBB21:
.LBB23:
	.file 2 "C:/devkitPro/libnds/include/nds/dma.h"
	.loc 2 125 0
	add	r1, r1, #1
	rsb	r1, r3, r1
	.loc 2 123 0
	ldr	r0, [r2, #0]
.LBE23:
.LBE21:
	.loc 1 84 0
	mov	r3, r3, asl #5
.LBB26:
.LBB24:
	.loc 2 125 0
	mov	r1, r1, asl #5
	.loc 2 124 0
	add	r2, r3, #109051904
	.loc 2 125 0
	mov	r1, r1, lsr #2
.LBE24:
.LBE26:
.LBB27:
.LBB28:
	.file 3 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.loc 3 369 0
	ldr	ip, .L33+4
.LBE28:
.LBE27:
.LBB30:
.LBB22:
	.loc 2 123 0
	add	r0, r0, r3
	.loc 2 124 0
	add	r2, r2, #606208
	.loc 2 123 0
	mov	r3, #67108864
	.loc 2 125 0
	orr	r1, r1, #-2080374784
.LBE22:
.LBE30:
.LBB31:
.LBB29:
	.loc 3 369 0
	mvn	r4, #127
	strb	r4, [ip, #70]
.LBE29:
.LBE31:
.LBB32:
.LBB25:
	.loc 2 123 0
	str	r0, [r3, #212]
	.loc 2 124 0
	str	r2, [r3, #216]
	.loc 2 125 0
	str	r1, [r3, #220]
.L27:
	.loc 2 126 0
	ldr	r2, [r3, #220]
	cmp	r2, #0
	blt	.L27
.LBE25:
.LBE32:
.LBB33:
.LBB34:
	.loc 3 369 0
	ldr	r3, .L33+4
	mvn	r2, #124
	strb	r2, [r3, #70]
.L26:
.LBE34:
.LBE33:
.LBE20:
	.loc 1 92 0
	ldr	r3, .L33
	ldr	r2, [r3, #4]
	cmp	r2, #0
	ldmeqfd	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}
.LBB35:
	.loc 1 93 0
	ldr	ip, [r3, #0]
	ldr	r3, .L33+8
.LBB42:
.LBB44:
	.loc 3 363 0
	ldr	r2, .L33+12
.LBE44:
.LBE42:
	.loc 1 93 0
	ldr	r0, [r3, #0]
.LBB41:
.LBB43:
	.loc 3 363 0
	ldr	r3, .L33+4
	mvn	r4, #127
.LBE43:
.LBE41:
	.loc 1 93 0
	mov	r0, r0, asl #1
.LBB40:
.LBB45:
	.loc 3 363 0
	ldr	r1, .L33+16
	strb	r4, [r3, #69]
.LBE45:
.LBE40:
	.loc 1 93 0
	add	r3, ip, r0
.LVL18:
	.loc 1 99 0
	mov	r4, r2
.L29:
	.loc 1 105 0
	ldr	r5, [r3, #16]
	.loc 1 101 0
	ldr	r9, [r3, #0]
	.loc 1 105 0
	str	r5, [r1, #-496]
	.loc 1 107 0
	ldr	r5, [r3, #24]
	.loc 1 102 0
	ldr	sl, [r3, #4]
	.loc 1 107 0
	str	r5, [r1, #-488]
	.loc 1 108 0
	ldr	r5, [r3, #28]
	.loc 1 103 0
	ldr	r8, [r3, #8]
	.loc 1 104 0
	ldr	r6, [r3, #12]
	.loc 1 106 0
	ldr	fp, [r3, #20]
	.loc 1 108 0
	str	r5, [r1, #-484]
	.loc 1 110 0
	ldr	r5, [r3], #32
	.loc 1 101 0
	str	r9, [r1, #-512]
	.loc 1 110 0
	str	r5, [r2, #-512]
	.loc 1 115 0
	ldr	r5, [r3, #-12]
	.loc 1 102 0
	str	sl, [r1, #-508]
	.loc 1 103 0
	str	r8, [r1, #-504]
	.loc 1 104 0
	str	r6, [r1, #-500]
	.loc 1 106 0
	str	fp, [r1, #-492]
	.loc 1 115 0
	str	r5, [r2, #-492]
	.loc 1 117 0
	add	r1, r1, #512
	.loc 1 111 0
	ldr	r9, [r3, #-28]
	.loc 1 112 0
	ldr	sl, [r3, #-24]
	.loc 1 113 0
	ldr	r8, [r3, #-20]
	.loc 1 114 0
	ldr	r6, [r3, #-16]
	.loc 1 116 0
	ldr	fp, [r3, #-8]
	.loc 1 117 0
	ldr	r5, [r3, #-4]
	.loc 1 99 0
	cmp	r1, r4
	.loc 1 111 0
	str	r9, [r2, #-508]
	.loc 1 112 0
	str	sl, [r2, #-504]
	.loc 1 113 0
	str	r8, [r2, #-500]
	.loc 1 114 0
	str	r6, [r2, #-496]
	.loc 1 116 0
	str	fp, [r2, #-488]
	.loc 1 117 0
	str	r5, [r2, #-484]
	add	r2, r2, #512
	.loc 1 99 0
	bne	.L29
.LBB37:
.LBB38:
	.loc 3 363 0
	ldr	r3, .L33+4
.LVL19:
	mvn	r2, #115
.LBE38:
.LBE37:
	.loc 1 124 0
	add	r0, ip, r0
	mov	r1, #512
.LBB36:
.LBB39:
	.loc 3 363 0
	strb	r2, [r3, #69]
.LBE39:
.LBE36:
.LBE35:
	.loc 1 126 0
	ldmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
.LBB46:
	.loc 1 124 0
	b	DC_InvalidateRange
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
	.word	67109376
	.word	.LANCHOR1
	.word	109650432
	.word	109642240
.LBE46:
.LFE170:
	.size	neoLoadPalette, .-neoLoadPalette
	.align	2
	.global	neoPaletteInit
	.type	neoPaletteInit, %function
neoPaletteInit:
.LFB167:
	.loc 1 23 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI3:
	.loc 1 24 0
	mov	r0, #16384
	bl	neoSystemVramHAlloc
	ldr	r3, .L37
	str	r0, [r3, #0]
	.loc 1 25 0
	ldmfd	sp!, {r4, pc}
.L38:
	.align	2
.L37:
	.word	.LANCHOR0
.LFE167:
	.size	neoPaletteInit, .-neoPaletteInit
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_paletteBank, %object
	.size	g_paletteBank, 4
g_paletteBank:
	.word	-1
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_nitroPalette, %object
	.size	g_nitroPalette, 4
g_nitroPalette:
	.space	4
	.type	g_loadFixed, %object
	.size	g_loadFixed, 4
g_loadFixed:
	.space	4
	.type	g_startTransfer, %object
	.size	g_startTransfer, 4
g_startTransfer:
	.space	4
	.type	g_endTransfer, %object
	.size	g_endTransfer, 4
g_endTransfer:
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
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.byte	0x4
	.4byte	.LCFI0-.LFB169
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x40
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0xb
	.sleb128 2
	.byte	0x11
	.uleb128 0xa
	.sleb128 3
	.byte	0x11
	.uleb128 0x9
	.sleb128 4
	.byte	0x11
	.uleb128 0x8
	.sleb128 5
	.byte	0x11
	.uleb128 0x6
	.sleb128 6
	.byte	0x11
	.uleb128 0x5
	.sleb128 7
	.byte	0x11
	.uleb128 0x4
	.sleb128 8
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.byte	0x4
	.4byte	.LCFI2-.LFB170
	.byte	0xe
	.uleb128 0x20
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0xb
	.sleb128 2
	.byte	0x11
	.uleb128 0xa
	.sleb128 3
	.byte	0x11
	.uleb128 0x9
	.sleb128 4
	.byte	0x11
	.uleb128 0x8
	.sleb128 5
	.byte	0x11
	.uleb128 0x6
	.sleb128 6
	.byte	0x11
	.uleb128 0x5
	.sleb128 7
	.byte	0x11
	.uleb128 0x4
	.sleb128 8
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.byte	0x4
	.4byte	.LCFI3-.LFB167
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE8:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LFB169-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE169-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 64
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB170-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB167-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE167-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
	.file 4 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 5 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 6 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 7 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 8 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 9 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 10 "C:/Users/GRX/NeoDS/arm9/include/cyclone.h"
	.file 11 "C:/Users/GRX/NeoDS/arm9/include/NeoCpu.h"
	.file 12 "C:/Users/GRX/NeoDS/arm9/../common/source/NeoAudioStream.h"
	.file 13 "C:/Users/GRX/NeoDS/arm9/include/NeoSystem.h"
	.section	.debug_info
	.4byte	0x1137
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF249
	.byte	0x1
	.4byte	.LASF250
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x4
	.byte	0x2a
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x4
	.byte	0x35
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
	.byte	0x36
	.4byte	0x57
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4f
	.4byte	0x69
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
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
	.byte	0x5
	.byte	0x46
	.4byte	0x28
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x48
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x5
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x5
	.byte	0x63
	.4byte	0x4c
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x5
	.byte	0x64
	.4byte	0x70
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x5
	.byte	0x68
	.4byte	0x3a
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x5
	.byte	0x69
	.4byte	0x5e
	.uleb128 0x6
	.byte	0x1
	.byte	0x5
	.byte	0x7d
	.4byte	0xff
	.uleb128 0x7
	.4byte	.LASF16
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF17
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x7d
	.4byte	0xea
	.uleb128 0x8
	.byte	0x4
	.4byte	0x110
	.uleb128 0x9
	.byte	0x1
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF20
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0xe8
	.4byte	0x195
	.uleb128 0x7
	.4byte	.LASF22
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF23
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF24
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF25
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 17
	.uleb128 0x7
	.4byte	.LASF27
	.sleb128 25
	.uleb128 0x7
	.4byte	.LASF28
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF29
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF30
	.sleb128 10
	.uleb128 0x7
	.4byte	.LASF31
	.sleb128 18
	.uleb128 0x7
	.4byte	.LASF32
	.sleb128 26
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 12
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x3
	.byte	0xf9
	.4byte	0x12c
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0xfc
	.4byte	0x209
	.uleb128 0x7
	.4byte	.LASF39
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF40
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF41
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF42
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF43
	.sleb128 17
	.uleb128 0x7
	.4byte	.LASF44
	.sleb128 25
	.uleb128 0x7
	.4byte	.LASF45
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF46
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF47
	.sleb128 10
	.uleb128 0x7
	.4byte	.LASF48
	.sleb128 18
	.uleb128 0x7
	.4byte	.LASF49
	.sleb128 26
	.uleb128 0x7
	.4byte	.LASF50
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF51
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF52
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF53
	.sleb128 12
	.uleb128 0x7
	.4byte	.LASF54
	.sleb128 5
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x3
	.2byte	0x10d
	.4byte	0x1a0
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x28
	.byte	0x6
	.2byte	0x18c
	.4byte	0x2b9
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x18d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x18e
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x18f
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x190
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x191
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x192
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x193
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x194
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x195
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x196
	.4byte	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x198
	.4byte	0x215
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x8
	.byte	0x7
	.byte	0x29
	.4byte	0x2ee
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x7
	.byte	0x2a
	.4byte	0x2ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x7
	.byte	0x2b
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x123
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x7
	.byte	0x2c
	.4byte	0x2c5
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x9c
	.4byte	0x320
	.uleb128 0x7
	.4byte	.LASF70
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF71
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF72
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF73
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x8
	.byte	0xa1
	.4byte	0x2ff
	.uleb128 0x11
	.4byte	.LASF75
	.2byte	0x2020
	.byte	0x8
	.2byte	0x11a
	.4byte	0x3b7
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x8
	.2byte	0x11b
	.4byte	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x8
	.2byte	0x11e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x8
	.2byte	0x121
	.4byte	0x3b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0x8
	.2byte	0x122
	.4byte	0x2f4
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x8
	.2byte	0x123
	.4byte	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x8
	.2byte	0x124
	.4byte	0x3c8
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0x8
	.2byte	0x125
	.4byte	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x8
	.2byte	0x126
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x201c
	.byte	0x0
	.uleb128 0x12
	.4byte	0x9b
	.4byte	0x3c8
	.uleb128 0x13
	.4byte	0x112
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9b
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x8
	.2byte	0x128
	.4byte	0x32b
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e6
	.uleb128 0x14
	.4byte	0xbe
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc9
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x59
	.4byte	0x418
	.uleb128 0x7
	.4byte	.LASF84
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF85
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF86
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF87
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x62
	.4byte	0x439
	.uleb128 0x7
	.4byte	.LASF88
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF89
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF90
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF91
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x6a
	.4byte	0x45a
	.uleb128 0x7
	.4byte	.LASF92
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF93
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF94
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF95
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x72
	.4byte	0x46f
	.uleb128 0x7
	.4byte	.LASF96
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF97
	.sleb128 1
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF98
	.byte	0xb0
	.byte	0xa
	.byte	0x15
	.4byte	0x605
	.uleb128 0x15
	.ascii	"d\000"
	.byte	0xa
	.byte	0x16
	.4byte	0x605
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.ascii	"a\000"
	.byte	0xa
	.byte	0x17
	.4byte	0x605
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.ascii	"pc\000"
	.byte	0xa
	.byte	0x18
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.ascii	"srh\000"
	.byte	0xa
	.byte	0x19
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0xa
	.byte	0x1a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0xa
	.byte	0x1b
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x15
	.ascii	"irq\000"
	.byte	0xa
	.byte	0x1c
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x15
	.ascii	"osp\000"
	.byte	0xa
	.byte	0x1d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.ascii	"xc\000"
	.byte	0xa
	.byte	0x1e
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0xa
	.byte	0x1f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0xa
	.byte	0x20
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0xa
	.byte	0x21
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0xa
	.byte	0x22
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.4byte	.LASF105
	.byte	0xa
	.byte	0x23
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0xa
	.byte	0x24
	.4byte	0x625
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0xa
	.byte	0x25
	.4byte	0x625
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0xa
	.byte	0x26
	.4byte	0x625
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0xa
	.byte	0x27
	.4byte	0x625
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.4byte	.LASF110
	.byte	0xa
	.byte	0x28
	.4byte	0x63c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0xa
	.byte	0x29
	.4byte	0x653
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0xa
	.byte	0x2a
	.4byte	0x66a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0xa
	.byte	0x2b
	.4byte	0x625
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0xa
	.byte	0x2c
	.4byte	0x625
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0xa
	.byte	0x2d
	.4byte	0x625
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0xa
	.byte	0x2e
	.4byte	0x680
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0xa
	.byte	0x2f
	.4byte	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0xa
	.byte	0x30
	.4byte	0x68c
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0xa
	.byte	0x31
	.4byte	0x692
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x12
	.4byte	0x7b
	.4byte	0x615
	.uleb128 0x16
	.4byte	0x112
	.byte	0x7
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	0x7b
	.4byte	0x625
	.uleb128 0x18
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x615
	.uleb128 0x19
	.byte	0x1
	.4byte	0x63c
	.uleb128 0x18
	.4byte	0x7b
	.uleb128 0x18
	.4byte	0x33
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x62b
	.uleb128 0x19
	.byte	0x1
	.4byte	0x653
	.uleb128 0x18
	.4byte	0x7b
	.uleb128 0x18
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x642
	.uleb128 0x19
	.byte	0x1
	.4byte	0x66a
	.uleb128 0x18
	.4byte	0x7b
	.uleb128 0x18
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x659
	.uleb128 0x17
	.byte	0x1
	.4byte	0x69
	.4byte	0x680
	.uleb128 0x18
	.4byte	0x69
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x670
	.uleb128 0x1a
	.byte	0x1
	.4byte	0x69
	.uleb128 0x8
	.byte	0x4
	.4byte	0x686
	.uleb128 0x12
	.4byte	0x7b
	.4byte	0x6a2
	.uleb128 0x16
	.4byte	0x112
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0xb
	.byte	0x6
	.4byte	0x46f
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0xb
	.byte	0x8
	.4byte	0x6b8
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6be
	.uleb128 0x17
	.byte	0x1
	.4byte	0xb4
	.4byte	0x6ce
	.uleb128 0x18
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0xb
	.byte	0x9
	.4byte	0x6d9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6df
	.uleb128 0x17
	.byte	0x1
	.4byte	0xbe
	.4byte	0x6ef
	.uleb128 0x18
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0xb
	.byte	0xa
	.4byte	0x6fa
	.uleb128 0x8
	.byte	0x4
	.4byte	0x700
	.uleb128 0x17
	.byte	0x1
	.4byte	0xc9
	.4byte	0x710
	.uleb128 0x18
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0xb
	.byte	0xc
	.4byte	0x71b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x721
	.uleb128 0x19
	.byte	0x1
	.4byte	0x732
	.uleb128 0x18
	.4byte	0xc9
	.uleb128 0x18
	.4byte	0xb4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0xb
	.byte	0xd
	.4byte	0x73d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x743
	.uleb128 0x19
	.byte	0x1
	.4byte	0x754
	.uleb128 0x18
	.4byte	0xc9
	.uleb128 0x18
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0xb
	.byte	0xe
	.4byte	0x75f
	.uleb128 0x8
	.byte	0x4
	.4byte	0x765
	.uleb128 0x19
	.byte	0x1
	.4byte	0x776
	.uleb128 0x18
	.4byte	0xc9
	.uleb128 0x18
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0xb
	.byte	0x10
	.4byte	0x6fa
	.uleb128 0xf
	.4byte	.LASF128
	.byte	0xc
	.byte	0xc
	.byte	0x17
	.4byte	0x7c6
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0xc
	.byte	0x18
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.ascii	"end\000"
	.byte	0xc
	.byte	0x19
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.ascii	"acc\000"
	.byte	0xc
	.byte	0x1a
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0xc
	.byte	0x1b
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0xc
	.byte	0x1c
	.4byte	0x781
	.uleb128 0xf
	.4byte	.LASF132
	.byte	0xc
	.byte	0xc
	.byte	0x1f
	.4byte	0x808
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0xc
	.byte	0x20
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF134
	.byte	0xc
	.byte	0x21
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF135
	.byte	0xc
	.byte	0x22
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF136
	.byte	0xc
	.byte	0x23
	.4byte	0x7d1
	.uleb128 0x1b
	.4byte	.LASF251
	.byte	0x1
	.byte	0xd
	.byte	0x99
	.4byte	0x85c
	.uleb128 0x7
	.4byte	.LASF137
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF138
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF139
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF140
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF141
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF142
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF143
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF144
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF145
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF146
	.sleb128 9
	.byte	0x0
	.uleb128 0x1c
	.2byte	0x248
	.byte	0xd
	.byte	0xc0
	.4byte	0xc4a
	.uleb128 0x15
	.ascii	"cpu\000"
	.byte	0xd
	.byte	0xc1
	.4byte	0x6a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF147
	.byte	0xd
	.byte	0xc4
	.4byte	0xc4a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x10
	.4byte	.LASF148
	.byte	0xd
	.byte	0xc7
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0xd
	.byte	0xc8
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x10
	.4byte	.LASF150
	.byte	0xd
	.byte	0xcb
	.4byte	0xc5a
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x10
	.4byte	.LASF151
	.byte	0xd
	.byte	0xcc
	.4byte	0x808
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0xd
	.byte	0xcd
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x10
	.4byte	.LASF153
	.byte	0xd
	.byte	0xd0
	.4byte	0x3eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x10
	.4byte	.LASF154
	.byte	0xd
	.byte	0xd1
	.4byte	0x3eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x10
	.4byte	.LASF155
	.byte	0xd
	.byte	0xd2
	.4byte	0x3eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x10
	.4byte	.LASF156
	.byte	0xd
	.byte	0xd3
	.4byte	0x3eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0xd
	.byte	0xd4
	.4byte	0x3eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x10
	.4byte	.LASF158
	.byte	0xd
	.byte	0xd5
	.4byte	0x3eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x10
	.4byte	.LASF159
	.byte	0xd
	.byte	0xd6
	.4byte	0x3da
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x10
	.4byte	.LASF160
	.byte	0xd
	.byte	0xd7
	.4byte	0x3da
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x10
	.4byte	.LASF161
	.byte	0xd
	.byte	0xd8
	.4byte	0x3da
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0xd
	.byte	0xda
	.4byte	0xc6a
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x10
	.4byte	.LASF163
	.byte	0xd
	.byte	0xdd
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x10
	.4byte	.LASF164
	.byte	0xd
	.byte	0xde
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x10
	.4byte	.LASF165
	.byte	0xd
	.byte	0xdf
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x10
	.4byte	.LASF166
	.byte	0xd
	.byte	0xe0
	.4byte	0xc7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x10
	.4byte	.LASF167
	.byte	0xd
	.byte	0xe1
	.4byte	0xc7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x10
	.4byte	.LASF168
	.byte	0xd
	.byte	0xe2
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x10
	.4byte	.LASF169
	.byte	0xd
	.byte	0xe5
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x10
	.4byte	.LASF170
	.byte	0xd
	.byte	0xe6
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x10
	.4byte	.LASF171
	.byte	0xd
	.byte	0xe7
	.4byte	0x3da
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x10
	.4byte	.LASF172
	.byte	0xd
	.byte	0xe8
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x10
	.4byte	.LASF173
	.byte	0xd
	.byte	0xea
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x10
	.4byte	.LASF174
	.byte	0xd
	.byte	0xeb
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x10
	.4byte	.LASF175
	.byte	0xd
	.byte	0xec
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x10
	.4byte	.LASF176
	.byte	0xd
	.byte	0xed
	.4byte	0xc86
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x10
	.4byte	.LASF177
	.byte	0xd
	.byte	0xee
	.4byte	0x3da
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x10
	.4byte	.LASF178
	.byte	0xd
	.byte	0xf1
	.4byte	0xdf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x10
	.4byte	.LASF179
	.byte	0xd
	.byte	0xf2
	.4byte	0xdf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x10
	.4byte	.LASF180
	.byte	0xd
	.byte	0xf3
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x10
	.4byte	.LASF181
	.byte	0xd
	.byte	0xf4
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x10
	.4byte	.LASF182
	.byte	0xd
	.byte	0xf7
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x10
	.4byte	.LASF183
	.byte	0xd
	.byte	0xf8
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x10
	.4byte	.LASF184
	.byte	0xd
	.byte	0xf9
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x10
	.4byte	.LASF185
	.byte	0xd
	.byte	0xfa
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x10
	.4byte	.LASF186
	.byte	0xd
	.byte	0xfb
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x10
	.4byte	.LASF187
	.byte	0xd
	.byte	0xfc
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x10
	.4byte	.LASF188
	.byte	0xd
	.byte	0xfd
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xe
	.4byte	.LASF189
	.byte	0xd
	.2byte	0x102
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xe
	.4byte	.LASF190
	.byte	0xd
	.2byte	0x103
	.4byte	0xdf
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xe
	.4byte	.LASF191
	.byte	0xd
	.2byte	0x106
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xe
	.4byte	.LASF192
	.byte	0xd
	.2byte	0x108
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xe
	.4byte	.LASF193
	.byte	0xd
	.2byte	0x109
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xe
	.4byte	.LASF194
	.byte	0xd
	.2byte	0x10a
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xe
	.4byte	.LASF195
	.byte	0xd
	.2byte	0x10b
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xe
	.4byte	.LASF196
	.byte	0xd
	.2byte	0x10d
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xe
	.4byte	.LASF197
	.byte	0xd
	.2byte	0x10e
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xe
	.4byte	.LASF198
	.byte	0xd
	.2byte	0x10f
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xe
	.4byte	.LASF199
	.byte	0xd
	.2byte	0x110
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xe
	.4byte	.LASF200
	.byte	0xd
	.2byte	0x111
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xe
	.4byte	.LASF201
	.byte	0xd
	.2byte	0x114
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xe
	.4byte	.LASF202
	.byte	0xd
	.2byte	0x115
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xe
	.4byte	.LASF203
	.byte	0xd
	.2byte	0x116
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xe
	.4byte	.LASF204
	.byte	0xd
	.2byte	0x117
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xe
	.4byte	.LASF205
	.byte	0xd
	.2byte	0x118
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xe
	.4byte	.LASF206
	.byte	0xd
	.2byte	0x11b
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xe
	.4byte	.LASF207
	.byte	0xd
	.2byte	0x11c
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xe
	.4byte	.LASF208
	.byte	0xd
	.2byte	0x11f
	.4byte	0xc96
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xe
	.4byte	.LASF209
	.byte	0xd
	.2byte	0x122
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xe
	.4byte	.LASF210
	.byte	0xd
	.2byte	0x123
	.4byte	0xca6
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0x12
	.4byte	0x123
	.4byte	0xc5a
	.uleb128 0x16
	.4byte	0x112
	.byte	0x8
	.byte	0x0
	.uleb128 0x12
	.4byte	0x7c6
	.4byte	0xc6a
	.uleb128 0x16
	.4byte	0x112
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc70
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc76
	.uleb128 0x14
	.4byte	0xb4
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc81
	.uleb128 0x14
	.4byte	0xc9
	.uleb128 0x12
	.4byte	0xc9
	.4byte	0xc96
	.uleb128 0x16
	.4byte	0x112
	.byte	0xf
	.byte	0x0
	.uleb128 0x12
	.4byte	0xb4
	.4byte	0xca6
	.uleb128 0x16
	.4byte	0x112
	.byte	0x7
	.byte	0x0
	.uleb128 0x12
	.4byte	0xb4
	.4byte	0xcb5
	.uleb128 0x1d
	.4byte	0x112
	.byte	0x0
	.uleb128 0x1e
	.2byte	0x400
	.byte	0xd
	.byte	0xbf
	.4byte	0xcd0
	.uleb128 0x1f
	.4byte	0x85c
	.uleb128 0x20
	.4byte	.LASF252
	.byte	0xd
	.2byte	0x125
	.4byte	0xcd0
	.byte	0x0
	.uleb128 0x12
	.4byte	0xc9
	.4byte	0xce0
	.uleb128 0x16
	.4byte	0x112
	.byte	0xff
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF211
	.2byte	0x2000
	.byte	0xd
	.byte	0xbe
	.4byte	0xd66
	.uleb128 0x22
	.4byte	0xcb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF212
	.byte	0xd
	.2byte	0x128
	.4byte	0xd66
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xe
	.4byte	.LASF213
	.byte	0xd
	.2byte	0x129
	.4byte	0xd76
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xe
	.4byte	.LASF214
	.byte	0xd
	.2byte	0x12a
	.4byte	0xd86
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xe
	.4byte	.LASF215
	.byte	0xd
	.2byte	0x12b
	.4byte	0xd96
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xe
	.4byte	.LASF216
	.byte	0xd
	.2byte	0x12c
	.4byte	0xda6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xe
	.4byte	.LASF217
	.byte	0xd
	.2byte	0x12d
	.4byte	0xdb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xe
	.4byte	.LASF218
	.byte	0xd
	.2byte	0x12e
	.4byte	0xdc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0x12
	.4byte	0x6ad
	.4byte	0xd76
	.uleb128 0x16
	.4byte	0x112
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x6ce
	.4byte	0xd86
	.uleb128 0x16
	.4byte	0x112
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x6ef
	.4byte	0xd96
	.uleb128 0x16
	.4byte	0x112
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x710
	.4byte	0xda6
	.uleb128 0x16
	.4byte	0x112
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x732
	.4byte	0xdb6
	.uleb128 0x16
	.4byte	0x112
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x754
	.4byte	0xdc6
	.uleb128 0x16
	.4byte	0x112
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x776
	.4byte	0xdd6
	.uleb128 0x16
	.4byte	0x112
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF219
	.byte	0xd
	.2byte	0x12f
	.4byte	0xce0
	.uleb128 0x23
	.4byte	.LASF220
	.byte	0x3
	.2byte	0x171
	.byte	0x1
	.byte	0x3
	.4byte	0xdfb
	.uleb128 0x24
	.ascii	"g\000"
	.byte	0x3
	.2byte	0x171
	.4byte	0x209
	.byte	0x0
	.uleb128 0x25
	.4byte	.LASF221
	.byte	0x2
	.byte	0x7a
	.byte	0x1
	.byte	0x3
	.4byte	0xe35
	.uleb128 0x26
	.4byte	.LASF222
	.byte	0x2
	.byte	0x7a
	.4byte	0x90
	.uleb128 0x27
	.ascii	"src\000"
	.byte	0x2
	.byte	0x7a
	.4byte	0xe35
	.uleb128 0x26
	.4byte	.LASF223
	.byte	0x2
	.byte	0x7a
	.4byte	0x123
	.uleb128 0x26
	.4byte	.LASF63
	.byte	0x2
	.byte	0x7a
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe3b
	.uleb128 0x28
	.uleb128 0x23
	.4byte	.LASF224
	.byte	0x3
	.2byte	0x16b
	.byte	0x1
	.byte	0x3
	.4byte	0xe55
	.uleb128 0x24
	.ascii	"f\000"
	.byte	0x3
	.2byte	0x16b
	.4byte	0x195
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF253
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.4byte	.LFB166
	.4byte	.LFE166
	.byte	0x1
	.byte	0x5d
	.4byte	0xe7a
	.uleb128 0x2a
	.4byte	.LASF254
	.byte	0x1
	.byte	0xb
	.4byte	0xc9
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF234
	.byte	0x1
	.byte	0x1b
	.4byte	.LFB168
	.4byte	.LFE168
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF229
	.byte	0x1
	.byte	0x20
	.4byte	.LFB169
	.4byte	.LFE169
	.4byte	.LLST2
	.4byte	0xf2d
	.uleb128 0x2d
	.4byte	.LASF225
	.byte	0x1
	.byte	0x22
	.4byte	0x3e0
	.4byte	.LLST3
	.uleb128 0x2d
	.4byte	.LASF226
	.byte	0x1
	.byte	0x23
	.4byte	0x3da
	.4byte	.LLST4
	.uleb128 0x2d
	.4byte	.LASF227
	.byte	0x1
	.byte	0x24
	.4byte	0xc81
	.4byte	.LLST5
	.uleb128 0x2e
	.ascii	"i\000"
	.byte	0x1
	.byte	0x25
	.4byte	0xc9
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2e
	.ascii	"j\000"
	.byte	0x1
	.byte	0x26
	.4byte	0xc9
	.byte	0x1
	.byte	0x56
	.uleb128 0x2f
	.ascii	"p\000"
	.byte	0x1
	.byte	0x27
	.4byte	0xc9
	.uleb128 0x30
	.4byte	.LBB14
	.4byte	.LBE14
	.uleb128 0x31
	.4byte	.LASF65
	.byte	0x1
	.byte	0x33
	.4byte	0xc81
	.byte	0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x33
	.4byte	.LASF228
	.byte	0x1
	.byte	0x3b
	.4byte	0xc81
	.uleb128 0x30
	.4byte	.LBB16
	.4byte	.LBE16
	.uleb128 0x2f
	.ascii	"d\000"
	.byte	0x1
	.byte	0x41
	.4byte	0xc81
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF230
	.byte	0x1
	.byte	0x51
	.4byte	.LFB170
	.4byte	.LFE170
	.4byte	.LLST6
	.4byte	0x102d
	.uleb128 0x34
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	0xfca
	.uleb128 0x33
	.4byte	.LASF225
	.byte	0x1
	.byte	0x54
	.4byte	0x3e0
	.uleb128 0x33
	.4byte	.LASF226
	.byte	0x1
	.byte	0x55
	.4byte	0x3da
	.uleb128 0x33
	.4byte	.LASF231
	.byte	0x1
	.byte	0x56
	.4byte	0xc81
	.uleb128 0x35
	.4byte	0xdfb
	.4byte	.LBB21
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0x58
	.4byte	0xf9b
	.uleb128 0x36
	.4byte	0xe29
	.uleb128 0x36
	.4byte	0xe1e
	.uleb128 0x36
	.4byte	0xe13
	.uleb128 0x36
	.4byte	0xe08
	.byte	0x0
	.uleb128 0x35
	.4byte	0xde2
	.4byte	.LBB27
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x57
	.4byte	0xfb4
	.uleb128 0x36
	.4byte	0xdf0
	.byte	0x0
	.uleb128 0x37
	.4byte	0xde2
	.4byte	.LBB33
	.4byte	.LBE33
	.byte	0x1
	.byte	0x59
	.uleb128 0x36
	.4byte	0xdf0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x68
	.uleb128 0x2d
	.4byte	.LASF225
	.byte	0x1
	.byte	0x5d
	.4byte	0xc7b
	.4byte	.LLST7
	.uleb128 0x33
	.4byte	.LASF232
	.byte	0x1
	.byte	0x5e
	.4byte	0x3f1
	.uleb128 0x33
	.4byte	.LASF233
	.byte	0x1
	.byte	0x5f
	.4byte	0x3f1
	.uleb128 0x2f
	.ascii	"i\000"
	.byte	0x1
	.byte	0x60
	.4byte	0xdf
	.uleb128 0x35
	.4byte	0xe3c
	.4byte	.LBB37
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x7b
	.4byte	0x1016
	.uleb128 0x36
	.4byte	0xe4a
	.byte	0x0
	.uleb128 0x38
	.4byte	0xe3c
	.4byte	.LBB42
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0x62
	.uleb128 0x36
	.4byte	0xe4a
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF235
	.byte	0x1
	.byte	0x16
	.4byte	.LFB167
	.4byte	.LFE167
	.4byte	.LLST8
	.uleb128 0x3a
	.4byte	.LASF236
	.byte	0x8
	.2byte	0x12e
	.4byte	0x104d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3ce
	.uleb128 0x31
	.4byte	.LASF237
	.byte	0x1
	.byte	0x5
	.4byte	0x3da
	.byte	0x5
	.byte	0x3
	.4byte	g_nitroPalette
	.uleb128 0x31
	.4byte	.LASF238
	.byte	0x1
	.byte	0x6
	.4byte	0xc9
	.byte	0x5
	.byte	0x3
	.4byte	g_startTransfer
	.uleb128 0x31
	.4byte	.LASF239
	.byte	0x1
	.byte	0x7
	.4byte	0xc9
	.byte	0x5
	.byte	0x3
	.4byte	g_endTransfer
	.uleb128 0x31
	.4byte	.LASF240
	.byte	0x1
	.byte	0x8
	.4byte	0xc9
	.byte	0x5
	.byte	0x3
	.4byte	g_loadFixed
	.uleb128 0x31
	.4byte	.LASF241
	.byte	0x1
	.byte	0x9
	.4byte	0xc9
	.byte	0x5
	.byte	0x3
	.4byte	g_paletteBank
	.uleb128 0x3b
	.4byte	.LASF242
	.byte	0x3
	.byte	0x56
	.4byte	0xbe
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.4byte	.LASF243
	.byte	0x3
	.byte	0x57
	.4byte	0xbe
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0x10d2
	.4byte	0x10d2
	.uleb128 0x16
	.4byte	0x112
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x10d8
	.uleb128 0x3c
	.4byte	0x57
	.uleb128 0x3d
	.4byte	.LASF244
	.byte	0x6
	.2byte	0x19c
	.4byte	0x10c2
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0x2b9
	.4byte	0x10fb
	.uleb128 0x16
	.4byte	0x112
	.byte	0x7
	.byte	0x0
	.uleb128 0x3d
	.4byte	.LASF245
	.byte	0x6
	.2byte	0x19f
	.4byte	0x10eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.4byte	.LASF246
	.byte	0x8
	.2byte	0x12b
	.4byte	0x3ce
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.4byte	.LASF247
	.byte	0xd
	.2byte	0x149
	.4byte	0x1126
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0xdd6
	.uleb128 0x3d
	.4byte	.LASF248
	.byte	0xd
	.2byte	0x14d
	.4byte	0xdd6
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0x1d
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x1d
	.byte	0x1
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.4byte	0x7e
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x113b
	.4byte	0xe55
	.ascii	"neoVideoPaletteBank\000"
	.4byte	0xe7a
	.ascii	"neoPaletteExit\000"
	.4byte	0xe8c
	.ascii	"neoUpdatePalette\000"
	.4byte	0xf2d
	.ascii	"neoLoadPalette\000"
	.4byte	0x102d
	.ascii	"neoPaletteInit\000"
	.4byte	0x1117
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
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF77:
	.ascii	"clearColor\000"
.LASF169:
	.ascii	"scanline\000"
.LASF106:
	.ascii	"checkpc\000"
.LASF110:
	.ascii	"write8\000"
.LASF196:
	.ascii	"ctrl1Reg\000"
.LASF227:
	.ascii	"start\000"
.LASF175:
	.ascii	"spriteMask\000"
.LASF198:
	.ascii	"ctrl3Reg\000"
.LASF115:
	.ascii	"fetch32\000"
.LASF236:
	.ascii	"glGlob\000"
.LASF183:
	.ascii	"cpuClocksPerScanline\000"
.LASF95:
	.ascii	"OBJSIZE_64\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF217:
	.ascii	"cpuWrite32Table\000"
.LASF216:
	.ascii	"cpuWrite16Table\000"
.LASF13:
	.ascii	"uint32\000"
.LASF104:
	.ascii	"cycles\000"
.LASF72:
	.ascii	"GL_MODELVIEW\000"
.LASF52:
	.ascii	"VRAM_G_BG_EXT_PALETTE_SLOT01\000"
.LASF73:
	.ascii	"GL_TEXTURE\000"
.LASF205:
	.ascii	"paletteRamLatch\000"
.LASF64:
	.ascii	"type\000"
.LASF210:
	.ascii	"varEnd\000"
.LASF124:
	.ascii	"TWrite8Func\000"
.LASF107:
	.ascii	"read8\000"
.LASF28:
	.ascii	"VRAM_F_MAIN_SPRITE\000"
.LASF96:
	.ascii	"OBJCOLOR_16\000"
.LASF111:
	.ascii	"write16\000"
.LASF136:
	.ascii	"TNeoADPCMBStream\000"
.LASF121:
	.ascii	"TRead8Func\000"
.LASF39:
	.ascii	"VRAM_G_LCD\000"
.LASF247:
	.ascii	"g_neo\000"
.LASF229:
	.ascii	"neoUpdatePalette\000"
.LASF53:
	.ascii	"VRAM_G_BG_EXT_PALETTE_SLOT23\000"
.LASF214:
	.ascii	"cpuRead32Table\000"
.LASF74:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF20:
	.ascii	"long int\000"
.LASF225:
	.ascii	"pSrc\000"
.LASF113:
	.ascii	"fetch8\000"
.LASF226:
	.ascii	"pDst\000"
.LASF208:
	.ascii	"keyGrid\000"
.LASF112:
	.ascii	"write32\000"
.LASF234:
	.ascii	"neoPaletteExit\000"
.LASF85:
	.ascii	"OBJMODE_BLENDED\000"
.LASF235:
	.ascii	"neoPaletteInit\000"
.LASF211:
	.ascii	"_TNeoContext\000"
.LASF116:
	.ascii	"IrqCallback\000"
.LASF127:
	.ascii	"TCheckPcFunc\000"
.LASF0:
	.ascii	"signed char\000"
.LASF54:
	.ascii	"VRAM_G_SPRITE_EXT_PALETTE\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF188:
	.ascii	"romBankAddress\000"
.LASF130:
	.ascii	"step\000"
.LASF152:
	.ascii	"adpcmActive\000"
.LASF143:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF215:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF180:
	.ascii	"tileScaleX\000"
.LASF181:
	.ascii	"tileScaleY\000"
.LASF185:
	.ascii	"watchdogCounter\000"
.LASF145:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF172:
	.ascii	"vramBaseMask\000"
.LASF148:
	.ascii	"spriteCount\000"
.LASF118:
	.ascii	"UnrecognizedCallback\000"
.LASF230:
	.ascii	"neoLoadPalette\000"
.LASF162:
	.ascii	"bankTable\000"
.LASF19:
	.ascii	"char\000"
.LASF66:
	.ascii	"BgState\000"
.LASF99:
	.ascii	"unused\000"
.LASF202:
	.ascii	"screenDarkLatch\000"
.LASF101:
	.ascii	"prev_pc\000"
.LASF132:
	.ascii	"_TNeoADPCMBStream\000"
.LASF22:
	.ascii	"VRAM_F_LCD\000"
.LASF244:
	.ascii	"bgControl\000"
.LASF90:
	.ascii	"OBJSHAPE_TALL\000"
.LASF138:
	.ascii	"NEOROM_BIOS\000"
.LASF100:
	.ascii	"flags\000"
.LASF174:
	.ascii	"autoAnimationCounter\000"
.LASF78:
	.ascii	"textures\000"
.LASF125:
	.ascii	"TWrite16Func\000"
.LASF240:
	.ascii	"g_loadFixed\000"
.LASF26:
	.ascii	"VRAM_F_MAIN_BG_0x06010000\000"
.LASF71:
	.ascii	"GL_POSITION\000"
.LASF182:
	.ascii	"cpuClockDivide\000"
.LASF35:
	.ascii	"VRAM_F_BG_EXT_PALETTE_SLOT01\000"
.LASF238:
	.ascii	"g_startTransfer\000"
.LASF27:
	.ascii	"VRAM_F_MAIN_BG_0x06014000\000"
.LASF252:
	.ascii	"fill\000"
.LASF38:
	.ascii	"VRAM_F_TYPE\000"
.LASF91:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF16:
	.ascii	"false\000"
.LASF23:
	.ascii	"VRAM_F_MAIN_BG\000"
.LASF122:
	.ascii	"TRead16Func\000"
.LASF86:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF36:
	.ascii	"VRAM_F_BG_EXT_PALETTE_SLOT23\000"
.LASF228:
	.ascii	"index\000"
.LASF156:
	.ascii	"pRam\000"
.LASF67:
	.ascii	"DynamicArray\000"
.LASF237:
	.ascii	"g_nitroPalette\000"
.LASF21:
	.ascii	"long unsigned int\000"
.LASF142:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF84:
	.ascii	"OBJMODE_NORMAL\000"
.LASF89:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF213:
	.ascii	"cpuRead16Table\000"
.LASF48:
	.ascii	"VRAM_G_MAIN_SPRITE_0x06410000\000"
.LASF120:
	.ascii	"TCycloneContext\000"
.LASF139:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF206:
	.ascii	"active\000"
.LASF177:
	.ascii	"pTileBuffer\000"
.LASF98:
	.ascii	"Cyclone\000"
.LASF246:
	.ascii	"glGlobalData\000"
.LASF250:
	.ascii	"C:/Users/GRX/NeoDS/arm9/source/NeoVideoPalette.arm."
	.ascii	"c\000"
.LASF49:
	.ascii	"VRAM_G_MAIN_SPRITE_0x06414000\000"
.LASF222:
	.ascii	"channel\000"
.LASF56:
	.ascii	"angle\000"
.LASF201:
	.ascii	"irqVectorLatch\000"
.LASF176:
	.ascii	"paletteDirty\000"
.LASF76:
	.ascii	"matrixMode\000"
.LASF218:
	.ascii	"cpuCheckPcTable\000"
.LASF81:
	.ascii	"nextBlock\000"
.LASF24:
	.ascii	"VRAM_F_MAIN_BG_0x06000000\000"
.LASF168:
	.ascii	"smaRand\000"
.LASF128:
	.ascii	"_TNeoADPCMStream\000"
.LASF155:
	.ascii	"pBios\000"
.LASF126:
	.ascii	"TWrite32Func\000"
.LASF249:
	.ascii	"GNU C 4.4.3\000"
.LASF25:
	.ascii	"VRAM_F_MAIN_BG_0x06004000\000"
.LASF10:
	.ascii	"long long int\000"
.LASF70:
	.ascii	"GL_PROJECTION\000"
.LASF200:
	.ascii	"coinReg\000"
.LASF146:
	.ascii	"NEOROM_COUNT\000"
.LASF133:
	.ascii	"initOffset\000"
.LASF254:
	.ascii	"enable\000"
.LASF245:
	.ascii	"bgState\000"
.LASF61:
	.ascii	"scrollX\000"
.LASF62:
	.ascii	"scrollY\000"
.LASF197:
	.ascii	"ctrl2Reg\000"
.LASF34:
	.ascii	"VRAM_F_BG_EXT_PALETTE\000"
.LASF15:
	.ascii	"double\000"
.LASF119:
	.ascii	"internal\000"
.LASF199:
	.ascii	"ctrl4Reg\000"
.LASF45:
	.ascii	"VRAM_G_MAIN_SPRITE\000"
.LASF163:
	.ascii	"smaAddr0\000"
.LASF164:
	.ascii	"smaAddr1\000"
.LASF173:
	.ascii	"displayCounter\000"
.LASF135:
	.ascii	"frequency\000"
.LASF31:
	.ascii	"VRAM_F_MAIN_SPRITE_0x06410000\000"
.LASF14:
	.ascii	"float\000"
.LASF158:
	.ascii	"pCard\000"
.LASF50:
	.ascii	"VRAM_G_TEX_PALETTE\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF32:
	.ascii	"VRAM_F_MAIN_SPRITE_0x06414000\000"
.LASF194:
	.ascii	"displayControlMask\000"
.LASF232:
	.ascii	"pDst0\000"
.LASF233:
	.ascii	"pDst1\000"
.LASF193:
	.ascii	"displayControl\000"
.LASF40:
	.ascii	"VRAM_G_MAIN_BG\000"
.LASF46:
	.ascii	"VRAM_G_MAIN_SPRITE_0x06400000\000"
.LASF170:
	.ascii	"frameCount\000"
.LASF171:
	.ascii	"pVramBase\000"
.LASF195:
	.ascii	"displayCounterLoad\000"
.LASF97:
	.ascii	"OBJCOLOR_256\000"
.LASF129:
	.ascii	"offset\000"
.LASF140:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF47:
	.ascii	"VRAM_G_MAIN_SPRITE_0x06404000\000"
.LASF153:
	.ascii	"pRom0\000"
.LASF154:
	.ascii	"pRom1\000"
.LASF178:
	.ascii	"tileOffsetX\000"
.LASF179:
	.ascii	"tileOffsetY\000"
.LASF18:
	.ascii	"bool\000"
.LASF137:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF80:
	.ascii	"activeTexture\000"
.LASF191:
	.ascii	"vramOffset\000"
.LASF79:
	.ascii	"texturePtrs\000"
.LASF108:
	.ascii	"read16\000"
.LASF251:
	.ascii	"_TNeoRomRegion\000"
.LASF204:
	.ascii	"sramProtectLatch\000"
.LASF248:
	.ascii	"g_neoContext\000"
.LASF219:
	.ascii	"TNeoContext\000"
.LASF105:
	.ascii	"membase\000"
.LASF134:
	.ascii	"freqCounter\000"
.LASF87:
	.ascii	"OBJMODE_BITMAP\000"
.LASF239:
	.ascii	"g_endTransfer\000"
.LASF63:
	.ascii	"size\000"
.LASF161:
	.ascii	"pPalette\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF29:
	.ascii	"VRAM_F_MAIN_SPRITE_0x06400000\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF109:
	.ascii	"read32\000"
.LASF224:
	.ascii	"vramSetBankF\000"
.LASF220:
	.ascii	"vramSetBankG\000"
.LASF30:
	.ascii	"VRAM_F_MAIN_SPRITE_0x06404000\000"
.LASF253:
	.ascii	"neoVideoPaletteBank\000"
.LASF207:
	.ascii	"debug\000"
.LASF144:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF69:
	.ascii	"cur_size\000"
.LASF212:
	.ascii	"cpuRead8Table\000"
.LASF43:
	.ascii	"VRAM_G_MAIN_BG_0x06010000\000"
.LASF151:
	.ascii	"adpcmb\000"
.LASF160:
	.ascii	"pSpriteRam\000"
.LASF223:
	.ascii	"dest\000"
.LASF166:
	.ascii	"smaBankoffset\000"
.LASF187:
	.ascii	"fixedBank\000"
.LASF37:
	.ascii	"VRAM_F_SPRITE_EXT_PALETTE\000"
.LASF44:
	.ascii	"VRAM_G_MAIN_BG_0x06014000\000"
.LASF92:
	.ascii	"OBJSIZE_8\000"
.LASF103:
	.ascii	"state_flags\000"
.LASF190:
	.ascii	"sramProtection\000"
.LASF12:
	.ascii	"uint8\000"
.LASF157:
	.ascii	"pSram\000"
.LASF4:
	.ascii	"short int\000"
.LASF209:
	.ascii	"frameCounter\000"
.LASF82:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF117:
	.ascii	"ResetCallback\000"
.LASF17:
	.ascii	"true\000"
.LASF33:
	.ascii	"VRAM_F_TEX_PALETTE\000"
.LASF159:
	.ascii	"pVram\000"
.LASF221:
	.ascii	"dmaCopyWords\000"
.LASF93:
	.ascii	"OBJSIZE_16\000"
.LASF184:
	.ascii	"irqPending\000"
.LASF57:
	.ascii	"centerX\000"
.LASF58:
	.ascii	"centerY\000"
.LASF123:
	.ascii	"TRead32Func\000"
.LASF242:
	.ascii	"mosaicShadow\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF59:
	.ascii	"scaleX\000"
.LASF60:
	.ascii	"scaleY\000"
.LASF41:
	.ascii	"VRAM_G_MAIN_BG_0x06000000\000"
.LASF231:
	.ascii	"transferSize\000"
.LASF102:
	.ascii	"reserved\000"
.LASF42:
	.ascii	"VRAM_G_MAIN_BG_0x06004000\000"
.LASF150:
	.ascii	"adpcm\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF75:
	.ascii	"gl_hidden_globals\000"
.LASF94:
	.ascii	"OBJSIZE_32\000"
.LASF51:
	.ascii	"VRAM_G_BG_EXT_PALETTE\000"
.LASF243:
	.ascii	"mosaicShadowSub\000"
.LASF147:
	.ascii	"pVideoWriteTable\000"
.LASF186:
	.ascii	"paletteBank\000"
.LASF65:
	.ascii	"dirty\000"
.LASF83:
	.ascii	"nameCount\000"
.LASF165:
	.ascii	"smaBankAddr\000"
.LASF114:
	.ascii	"fetch16\000"
.LASF55:
	.ascii	"VRAM_G_TYPE\000"
.LASF88:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF167:
	.ascii	"smaBankbit\000"
.LASF141:
	.ascii	"NEOROM_AUDODATA\000"
.LASF68:
	.ascii	"data\000"
.LASF203:
	.ascii	"fixedRomLatch\000"
.LASF189:
	.ascii	"sramProtectCount\000"
.LASF149:
	.ascii	"romBankCount\000"
.LASF131:
	.ascii	"TNeoADPCMStream\000"
.LASF241:
	.ascii	"g_paletteBank\000"
.LASF192:
	.ascii	"vramMod\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
