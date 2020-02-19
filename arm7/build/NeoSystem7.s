	.file	"NeoSystem7.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	systemPanic
	.type	systemPanic, %function
systemPanic:
.LFB31:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoSystem7.c"
	.loc 1 197 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI0:
	.loc 1 198 0
	ldr	r3, .L4
	mov	r2, #0	@ movhi
	.loc 1 197 0
	sub	sp, sp, #4
.LCFI1:
	.loc 1 198 0
	strh	r2, [r3, #8]	@ movhi
	.loc 1 199 0
	bl	neoAudioPause
.L2:
	b	.L2
.L5:
	.align	2
.L4:
	.word	67109376
.LFE31:
	.size	systemPanic, .-systemPanic
	.align	2
	.type	readPowerManagement, %function
readPowerManagement:
.LFB19:
	.file 2 "C:/devkitPro/libnds/include/nds/arm7/serial.h"
	.loc 2 158 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	str	lr, [sp, #-4]!
.LCFI2:
	.loc 2 159 0
	mov	r1, #0
	.loc 2 158 0
	sub	sp, sp, #4
.LCFI3:
	.loc 2 159 0
	orr	r0, r0, #128
.LVL1:
	bl	writePowerManagement
	.loc 2 160 0
	add	sp, sp, #4
	ldr	lr, [sp], #4
	bx	lr
.LFE19:
	.size	readPowerManagement, .-readPowerManagement
	.align	2
	.type	neoBacklightOn, %function
neoBacklightOn:
.LFB24:
	.loc 1 28 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r6, r7, lr}
.LCFI4:
	.loc 1 29 0
	ldr	r7, .L10
	.loc 1 30 0
	mov	r6, #0
	.loc 1 29 0
	ldrh	r4, [r7, #8]
	.loc 1 31 0
	mov	r0, r6
	.loc 1 30 0
	strh	r6, [r7, #8]	@ movhi
	.loc 1 31 0
	bl	readPowerManagement
	.loc 1 32 0
	orr	r1, r0, #4
	mov	r0, r6
	bl	writePowerManagement
	.loc 1 33 0
	strh	r4, [r7, #8]	@ movhi
	.loc 1 34 0
	ldmfd	sp!, {r4, r6, r7, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	67109376
.LFE24:
	.size	neoBacklightOn, .-neoBacklightOn
	.align	2
	.type	neoBacklightOff, %function
neoBacklightOff:
.LFB23:
	.loc 1 19 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r6, r7, lr}
.LCFI5:
	.loc 1 20 0
	ldr	r7, .L14
	.loc 1 21 0
	mov	r6, #0
	.loc 1 20 0
	ldrh	r4, [r7, #8]
	.loc 1 22 0
	mov	r0, r6
	.loc 1 21 0
	strh	r6, [r7, #8]	@ movhi
	.loc 1 22 0
	bl	readPowerManagement
	.loc 1 23 0
	bic	r1, r0, #4
	mov	r0, r6
	bl	writePowerManagement
	.loc 1 24 0
	strh	r4, [r7, #8]	@ movhi
	.loc 1 25 0
	ldmfd	sp!, {r4, r6, r7, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	67109376
.LFE23:
	.size	neoBacklightOff, .-neoBacklightOff
	.align	2
	.global	neoSystem7Reset
	.type	neoSystem7Reset, %function
neoSystem7Reset:
.LFB29:
	.loc 1 171 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI6:
	sub	sp, sp, #4
.LCFI7:
	.loc 1 172 0
	bl	neoAudioReset
	.loc 1 173 0
	bl	neoYM2610Init
	.loc 1 174 0
	bl	neoZ80Reset
	.loc 1 175 0
	add	sp, sp, #4
	ldr	lr, [sp], #4
	bx	lr
.LFE29:
	.size	neoSystem7Reset, .-neoSystem7Reset
	.align	2
	.global	neoSystem7Execute
	.type	neoSystem7Execute, %function
neoSystem7Execute:
.LFB30:
	.loc 1 178 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r6, r7, r8, r9, sl, lr}
.LCFI8:
.LBB12:
	.loc 1 14 0
	mov	r0, #0
.LBE12:
	.loc 1 178 0
	sub	sp, sp, #4
.LCFI9:
.LBB13:
	.loc 1 14 0
	bl	readPowerManagement
.LBB14:
	.loc 1 15 0
	bic	r1, r0, #8
	mov	r0, #0
	bl	writePowerManagement
	mov	r9, #0
.LVL2:
.LVL3:
.L19:
	mov	sl, #0
.L20:
.LBE14:
.LBE13:
	.loc 1 184 0
	add	r4, r9, #336
	add	r4, r4, #1
	.loc 1 185 0
	mov	r0, r4
	bl	neoZ80Execute
	rsb	r9, r0, r4
	b	.L61
.LVL4:
.L22:
.LBB15:
.LBB16:
	.loc 1 131 0
	mov	r3, r0, lsr #24
	sub	r3, r3, #1
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L23
	.p2align 2
.L29:
	.word	.L24
	.word	.L25
	.word	.L23
	.word	.L26
	.word	.L27
	.word	.L28
.L26:
	.loc 1 133 0
	bl	neoZ80Nmi
.LVL5:
	b	.L23
.LVL6:
.L24:
	.loc 1 137 0
	bl	neoSystem7Reset
.LVL7:
	b	.L23
.LVL8:
.L25:
.LBB17:
.LBB18:
	.loc 1 81 0
	bl	neoAudioPause
.LVL9:
	.loc 1 84 0
	bl	neoIPCAckCommand
	mov	r8, #1
.L31:
.LBE18:
	.loc 1 87 0
	bl	neoIPCRecvCommand
.LBB19:
.LBB20:
	.loc 1 88 0
	cmp	r0, #0
.LVL10:
	beq	.L32
	.loc 1 89 0
	mov	r3, r0, lsr #24
	sub	r3, r3, #1
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L34
	.p2align 2
.L40:
	.word	.L35
	.word	.L34
	.word	.L36
	.word	.L34
	.word	.L37
	.word	.L38
	.word	.L39
.L35:
	.loc 1 91 0
	bl	neoSystem7Reset
.LVL11:
.L36:
	.loc 1 98 0
	bl	neoIPCAckCommand
.LVL12:
	mov	r8, #0
	b	.L32
.LVL13:
.L37:
	.loc 1 101 0
	bl	neoBacklightOff
.LVL14:
	b	.L34
.LVL15:
.L38:
	.loc 1 105 0
	bl	neoBacklightOn
.LVL16:
	b	.L34
.LVL17:
.L39:
.LBB21:
.LBB22:
	.loc 1 38 0
	ldr	r6, .L62
	.loc 1 39 0
	mov	r3, #0	@ movhi
	.loc 1 38 0
	ldrh	r4, [r6, #8]
.LVL18:
.LBE22:
	.loc 1 40 0
	mov	r0, #0
.LVL19:
.LBB23:
	.loc 1 39 0
	strh	r3, [r6, #8]	@ movhi
.LBE23:
	.loc 1 40 0
	bl	readPowerManagement
.LBB24:
	.loc 1 42 0
	bic	r1, r0, #12
.LVL20:
	.loc 1 44 0
	orr	r1, r1, #16
.LVL21:
.LBE24:
	.loc 1 40 0
	mov	r7, r0
.LBB25:
	.loc 1 44 0
	mov	r0, #0
	bl	writePowerManagement
	.loc 1 46 0
	mov	r0, #0
	mov	r1, #1024
	.loc 1 45 0
	strh	r4, [r6, #8]	@ movhi
	.loc 1 46 0
	bl	swiChangeSoundBias
	.loc 1 47 0
	bl	neoAudioShutdown
.L60:
	.loc 1 50 0
	bl	neoIPCAckCommand
.L59:
.LBB26:
	.loc 1 54 0
	bl	swiWaitForVBlank
.LBE26:
.LBE25:
	.loc 1 55 0
	bl	neoIPCRecvCommand
.LBB27:
.LBB28:
	.loc 1 56 0
	cmp	r0, #0
.LVL22:
	.loc 1 57 0
	mov	r0, r0, lsr #24
.LVL23:
	.loc 1 56 0
	beq	.L59
	.loc 1 57 0
	cmp	r0, #8
	bne	.L60
.LBE28:
	.loc 1 66 0
	ldr	r6, .L62
	.loc 1 67 0
	mov	r3, #0	@ movhi
	.loc 1 66 0
	ldrh	r4, [r6, #8]
	.loc 1 68 0
	mov	r1, r7
	.loc 1 67 0
	strh	r3, [r6, #8]	@ movhi
	.loc 1 68 0
	mov	r0, #0
	bl	writePowerManagement
	.loc 1 70 0
	mov	r0, #1
	mov	r1, #1024
	.loc 1 69 0
	strh	r4, [r6, #8]	@ movhi
	.loc 1 70 0
	bl	swiChangeSoundBias
	.loc 1 71 0
	bl	neoAudioReset
.LVL24:
.L34:
.LBE27:
.LBE21:
	.loc 1 114 0
	bl	neoIPCAckCommand
.LVL25:
.L32:
	.loc 1 118 0
	ldr	r3, .L62+4
	ldrb	r3, [r3, #-110]	@ zero_extendqisi2
	cmp	r3, #0
	.loc 1 119 0
	blne	neoAudioUpdate
.LVL26:
.L45:
	.loc 1 121 0
	bl	swiWaitForVBlank
.LVL27:
.LBE20:
	.loc 1 86 0
	cmp	r8, #0
	bne	.L31
	.loc 1 124 0
	bl	neoAudioResume
	b	.L61
.LVL28:
.L27:
.LBE19:
.LBE17:
	.loc 1 144 0
	bl	neoBacklightOff
.LVL29:
	b	.L23
.LVL30:
.L28:
	.loc 1 148 0
	bl	neoBacklightOn
.LVL31:
.L23:
	.loc 1 154 0
	bl	neoIPCAckCommand
.LVL32:
.L61:
.LBE16:
	.loc 1 157 0
	bl	neoIPCRecvCommand
.LVL33:
.LBB29:
	.loc 1 130 0
	cmp	r0, #0
	bne	.L22
.LBE29:
.LBE15:
	.loc 1 183 0
	add	sl, sl, #1
	.loc 1 187 0
	bl	neoYM2610Process
.LVL34:
	.loc 1 183 0
	cmp	sl, #200
	bne	.L20
	.loc 1 189 0
	mov	r0, #1
	mov	r1, #4
	bl	swiIntrWait
	.loc 1 190 0
	bl	neoAudioUpdate
	.loc 1 192 0
	ldr	r2, .L62+4
	ldr	r3, [r2, #-143]
	add	r3, r3, #1
	str	r3, [r2, #-143]
	b	.L19
.L63:
	.align	2
.L62:
	.word	67109376
	.word	41940223
.LFE30:
	.size	neoSystem7Execute, .-neoSystem7Execute
	.align	2
	.global	neoSystem7Init
	.type	neoSystem7Init, %function
neoSystem7Init:
.LFB28:
	.loc 1 162 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI10:
	.loc 1 163 0
	ldr	r5, .L66
	.loc 1 162 0
	sub	sp, sp, #4
.LCFI11:
	.loc 1 165 0
	bl	neoAudioInit
	.loc 1 166 0
	bl	neoYM2610Init
	.loc 1 167 0
	bl	neoZ80Init
	.loc 1 168 0
	add	sp, sp, #4
	ldr	lr, [sp], #4
	bx	lr
.L67:
	.align	2
.L66:
	.word	g_neoContext7
.LFE28:
	.size	neoSystem7Init, .-neoSystem7Init
	.bss
	.align	2
g_neoContext7:
	.space	2288
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI0-.LFB31
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI2-.LFB19
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI4-.LFB24
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x1
	.byte	0x87
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x84
	.uleb128 0x4
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI5-.LFB23
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x1
	.byte	0x87
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x84
	.uleb128 0x4
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI6-.LFB29
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI8-.LFB30
	.byte	0xe
	.uleb128 0x1c
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x20
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
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI10-.LFB28
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE12:
	.file 3 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 4 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 5 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoSystem7.h"
	.file 6 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoCpuZ80.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/DrZ80.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB31-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LFB19-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB24-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB23-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB29-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB30-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 28
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x607
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF73
	.byte	0x1
	.4byte	.LASF74
	.4byte	.LASF75
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF4
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
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
	.byte	0x53
	.4byte	0x57
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
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x8
	.byte	0x4
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x3
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x61
	.4byte	0x5e
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x3
	.byte	0x66
	.4byte	0x4c
	.uleb128 0x6
	.4byte	0xcf
	.byte	0x1
	.byte	0x3
	.byte	0x81
	.uleb128 0x7
	.4byte	.LASF14
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF15
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x81
	.4byte	0xba
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe0
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.4byte	0x2af
	.4byte	.LASF50
	.byte	0x70
	.byte	0x7
	.byte	0x13
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x7
	.byte	0x14
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x7
	.byte	0x15
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x7
	.byte	0x16
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x7
	.byte	0x17
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x7
	.byte	0x18
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x7
	.byte	0x19
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x7
	.byte	0x1a
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x7
	.byte	0x1b
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x7
	.byte	0x1c
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x7
	.byte	0x1d
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x7
	.byte	0x1e
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x7
	.byte	0x1f
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x7
	.byte	0x20
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x7
	.byte	0x21
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x7
	.byte	0x22
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x7
	.byte	0x23
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x7
	.byte	0x24
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x7
	.byte	0x27
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x7
	.byte	0x28
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x7
	.byte	0x29
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x7
	.byte	0x2a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x7
	.byte	0x2b
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x7
	.byte	0x2c
	.4byte	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x7
	.byte	0x2d
	.4byte	0x2c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x7
	.byte	0x2e
	.4byte	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x7
	.byte	0x2f
	.4byte	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x7
	.byte	0x30
	.4byte	0x304
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x7
	.byte	0x31
	.4byte	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x7
	.byte	0x32
	.4byte	0x31a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x7
	.byte	0x33
	.4byte	0x330
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x7
	.byte	0x34
	.4byte	0x330
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xc
	.4byte	0x2c0
	.byte	0x1
	.uleb128 0xd
	.4byte	0x37
	.uleb128 0xd
	.4byte	0x45
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2af
	.uleb128 0xc
	.4byte	0x2d7
	.byte	0x1
	.uleb128 0xd
	.4byte	0x45
	.uleb128 0xd
	.4byte	0x45
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c6
	.uleb128 0xe
	.4byte	0x2ed
	.byte	0x1
	.4byte	0x37
	.uleb128 0xd
	.4byte	0x45
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2dd
	.uleb128 0xc
	.4byte	0x304
	.byte	0x1
	.uleb128 0xd
	.4byte	0x45
	.uleb128 0xd
	.4byte	0x37
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2f3
	.uleb128 0xe
	.4byte	0x31a
	.byte	0x1
	.4byte	0x45
	.uleb128 0xd
	.4byte	0x45
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30a
	.uleb128 0xe
	.4byte	0x330
	.byte	0x1
	.4byte	0x85
	.uleb128 0xd
	.4byte	0x45
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x320
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x6
	.byte	0xc
	.4byte	0xf0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9a
	.uleb128 0xf
	.4byte	0x380
	.4byte	.LASF51
	.2byte	0x8f0
	.byte	0x5
	.byte	0x1f
	.uleb128 0x10
	.ascii	"z80\000"
	.byte	0x5
	.byte	0x20
	.4byte	0x336
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x5
	.byte	0x26
	.4byte	0x380
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x5
	.byte	0x27
	.4byte	0x390
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.byte	0x0
	.uleb128 0x11
	.4byte	0x390
	.4byte	0x341
	.uleb128 0x12
	.4byte	0xe2
	.byte	0x1f
	.byte	0x0
	.uleb128 0x11
	.4byte	0x3a1
	.4byte	0x9a
	.uleb128 0x13
	.4byte	0xe2
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x5
	.byte	0x28
	.4byte	0x347
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF60
	.byte	0x1
	.byte	0xc5
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LLST0
	.uleb128 0x15
	.4byte	0x3ec
	.4byte	.LASF55
	.byte	0x2
	.byte	0x9e
	.byte	0x1
	.4byte	0x7e
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST1
	.uleb128 0x16
	.ascii	"reg\000"
	.byte	0x2
	.byte	0x9e
	.4byte	0x7e
	.4byte	.LLST2
	.byte	0x0
	.uleb128 0x17
	.4byte	0x41a
	.4byte	.LASF56
	.byte	0x1
	.byte	0x1c
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF57
	.byte	0x1
	.byte	0x1d
	.4byte	0xa4
	.uleb128 0x18
	.4byte	.LASF58
	.byte	0x1
	.byte	0x1f
	.4byte	0xa4
	.byte	0x0
	.uleb128 0x17
	.4byte	0x448
	.4byte	.LASF59
	.byte	0x1
	.byte	0x13
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF57
	.byte	0x1
	.byte	0x14
	.4byte	0xa4
	.uleb128 0x18
	.4byte	.LASF58
	.byte	0x1
	.byte	0x16
	.4byte	0xa4
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0xab
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	0x474
	.4byte	.LASF62
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF58
	.byte	0x1
	.byte	0xe
	.4byte	0xa4
	.byte	0x0
	.uleb128 0x19
	.4byte	0x48c
	.4byte	.LASF63
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x1
	.byte	0x81
	.4byte	0xa4
	.byte	0x0
	.uleb128 0x19
	.4byte	0x4b1
	.4byte	.LASF65
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF66
	.byte	0x1
	.byte	0x4f
	.4byte	0xcf
	.uleb128 0x1a
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x1
	.byte	0x57
	.4byte	0xa4
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.4byte	0x4ec
	.4byte	.LASF67
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF57
	.byte	0x1
	.byte	0x26
	.4byte	0xa4
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x1
	.byte	0x28
	.4byte	0x4ec
	.uleb128 0x18
	.4byte	.LASF58
	.byte	0x1
	.byte	0x29
	.4byte	0xa4
	.uleb128 0x1a
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x1
	.byte	0x37
	.4byte	0xa4
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.4byte	0xa4
	.uleb128 0x1c
	.4byte	0x5d1
	.byte	0x1
	.4byte	.LASF76
	.byte	0x1
	.byte	0xb2
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	.LASF69
	.byte	0x1
	.byte	0xb3
	.4byte	0xaf
	.4byte	.LLST7
	.uleb128 0x1e
	.ascii	"i\000"
	.byte	0x1
	.byte	0xb4
	.4byte	0xa4
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1f
	.4byte	0x45c
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0xb5
	.uleb128 0x20
	.4byte	0x541
	.4byte	.LBB14
	.4byte	.LBE14
	.uleb128 0x21
	.4byte	0x468
	.byte	0x0
	.uleb128 0x22
	.4byte	0x474
	.4byte	.LBB15
	.4byte	.LBE15
	.byte	0x1
	.byte	0xba
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x24
	.4byte	0x480
	.4byte	.LLST8
	.uleb128 0x22
	.4byte	0x48c
	.4byte	.LBB17
	.4byte	.LBE17
	.byte	0x1
	.byte	0x8d
	.uleb128 0x25
	.4byte	0x57e
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x26
	.4byte	0x498
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x27
	.4byte	.LBB20
	.4byte	.LBE20
	.uleb128 0x24
	.4byte	0x4a4
	.4byte	.LLST9
	.uleb128 0x22
	.4byte	0x4b1
	.4byte	.LBB21
	.4byte	.LBE21
	.byte	0x1
	.byte	0x6e
	.uleb128 0x25
	.4byte	0x5bc
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x21
	.4byte	0x4bd
	.uleb128 0x21
	.4byte	0x4c8
	.uleb128 0x24
	.4byte	0x4d3
	.4byte	.LLST10
	.byte	0x0
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x78
	.uleb128 0x24
	.4byte	0x4df
	.4byte	.LLST11
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF70
	.byte	0x1
	.byte	0xa2
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST12
	.uleb128 0x28
	.4byte	.LASF71
	.byte	0x1
	.byte	0xa
	.4byte	0x3a1
	.byte	0x5
	.byte	0x3
	.4byte	g_neoContext7
	.uleb128 0x29
	.4byte	.LASF72
	.byte	0x5
	.byte	0x39
	.4byte	0x604
	.byte	0x1
	.byte	0x1
	.byte	0x55
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3a1
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x0
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.4byte	0x66
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x60b
	.4byte	0x3ac
	.ascii	"systemPanic\000"
	.4byte	0x448
	.ascii	"neoSystem7Reset\000"
	.4byte	0x4f1
	.ascii	"neoSystem7Execute\000"
	.4byte	0x5d1
	.ascii	"neoSystem7Init\000"
	.4byte	0x5f6
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
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF51:
	.ascii	"_TNeoContext7\000"
.LASF69:
	.ascii	"cycles\000"
.LASF73:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF39:
	.ascii	"z80irqvector\000"
.LASF35:
	.ascii	"Z80_IRQ\000"
.LASF26:
	.ascii	"Z80SP_BASE\000"
.LASF65:
	.ascii	"neoSystem7Pause\000"
.LASF47:
	.ascii	"z80_rebaseSP\000"
.LASF49:
	.ascii	"TDrZ80Context\000"
.LASF7:
	.ascii	"uint32_t\000"
.LASF41:
	.ascii	"z80_write8\000"
.LASF12:
	.ascii	"float\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF30:
	.ascii	"Z80A2\000"
.LASF71:
	.ascii	"g_neoContext7\000"
.LASF58:
	.ascii	"value\000"
.LASF75:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm7\\\\buil"
	.ascii	"d\000"
.LASF45:
	.ascii	"z80_read8\000"
.LASF21:
	.ascii	"Z80BC\000"
.LASF44:
	.ascii	"z80_out\000"
.LASF66:
	.ascii	"paused\000"
.LASF63:
	.ascii	"neoSystem7ProcessCommands\000"
.LASF56:
	.ascii	"neoBacklightOn\000"
.LASF15:
	.ascii	"true\000"
.LASF33:
	.ascii	"Z80DE2\000"
.LASF46:
	.ascii	"z80_read16\000"
.LASF55:
	.ascii	"readPowerManagement\000"
.LASF18:
	.ascii	"Z80PC\000"
.LASF17:
	.ascii	"char\000"
.LASF61:
	.ascii	"neoSystem7Reset\000"
.LASF38:
	.ascii	"spare\000"
.LASF70:
	.ascii	"neoSystem7Init\000"
.LASF50:
	.ascii	"DrZ80\000"
.LASF4:
	.ascii	"uint8_t\000"
.LASF24:
	.ascii	"Z80SP\000"
.LASF22:
	.ascii	"Z80DE\000"
.LASF62:
	.ascii	"neoBacklightOffUpper\000"
.LASF9:
	.ascii	"long long int\000"
.LASF74:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoSystem7.c"
	.ascii	"\000"
.LASF16:
	.ascii	"bool\000"
.LASF28:
	.ascii	"Z80IY\000"
.LASF43:
	.ascii	"z80_in\000"
.LASF53:
	.ascii	"z80Ram\000"
.LASF31:
	.ascii	"Z80F2\000"
.LASF25:
	.ascii	"Z80PC_BASE\000"
.LASF72:
	.ascii	"g_neo7\000"
.LASF2:
	.ascii	"short int\000"
.LASF14:
	.ascii	"false\000"
.LASF6:
	.ascii	"long int\000"
.LASF76:
	.ascii	"neoSystem7Execute\000"
.LASF23:
	.ascii	"Z80HL\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF40:
	.ascii	"z80_irq_callback\000"
.LASF34:
	.ascii	"Z80HL2\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF36:
	.ascii	"Z80IF\000"
.LASF52:
	.ascii	"z80MemTable\000"
.LASF37:
	.ascii	"Z80IM\000"
.LASF5:
	.ascii	"int32_t\000"
.LASF27:
	.ascii	"Z80IX\000"
.LASF32:
	.ascii	"Z80BC2\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF57:
	.ascii	"enabled\000"
.LASF68:
	.ascii	"powerValue\000"
.LASF64:
	.ascii	"command\000"
.LASF60:
	.ascii	"systemPanic\000"
.LASF42:
	.ascii	"z80_write16\000"
.LASF54:
	.ascii	"TNeoContext7\000"
.LASF0:
	.ascii	"signed char\000"
.LASF19:
	.ascii	"Z80A\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF20:
	.ascii	"Z80F\000"
.LASF29:
	.ascii	"Z80I\000"
.LASF13:
	.ascii	"double\000"
.LASF67:
	.ascii	"neoLidClose\000"
.LASF48:
	.ascii	"z80_rebasePC\000"
.LASF59:
	.ascii	"neoBacklightOff\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
