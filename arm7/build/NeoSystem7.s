	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
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
.LFB35:
	.file 1 "C:/Users/GRX/NeoDS/arm7/source/NeoSystem7.c"
	.loc 1 192 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 193 0
	mov	r2, #0
	mov	r3, #67108864
	.loc 1 192 0
	stmfd	sp!, {r4, lr}
.LCFI0:
	.loc 1 193 0
	str	r2, [r3, #520]
	.loc 1 194 0
	bl	neoAudioPause
.L2:
	b	.L2
.LFE35:
	.size	systemPanic, .-systemPanic
	.align	2
	.type	neoBacklightOff, %function
neoBacklightOff:
.LFB27:
	.loc 1 13 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r6, r7, lr}
.LCFI1:
	.loc 1 15 0
	mov	r6, #0
	.loc 1 14 0
	mov	r4, #67108864
	ldr	r7, [r4, #520]
.LVL0:
.LBB9:
.LBB10:
	.file 2 "C:/devkitPro/libnds/include/nds/system.h"
	.loc 2 217 0
	mov	r1, r6
	mov	r0, #128
.LBE10:
.LBE9:
	.loc 1 15 0
	str	r6, [r4, #520]
.LBB12:
.LBB11:
	.loc 2 217 0
	bl	writePowerManagement
.LBE11:
.LBE12:
	.loc 1 17 0
	bic	r1, r0, #8
	mov	r0, r6
	bl	writePowerManagement
	.loc 1 18 0
	str	r7, [r4, #520]
	.loc 1 19 0
	ldmfd	sp!, {r4, r6, r7, lr}
	bx	lr
.LFE27:
	.size	neoBacklightOff, .-neoBacklightOff
	.align	2
	.type	neoBacklightOn, %function
neoBacklightOn:
.LFB28:
	.loc 1 22 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r6, r7, lr}
.LCFI2:
	.loc 1 24 0
	mov	r6, #0
	.loc 1 23 0
	mov	r4, #67108864
	ldr	r7, [r4, #520]
.LVL1:
.LBB13:
.LBB14:
	.loc 2 217 0
	mov	r1, r6
	mov	r0, #128
.LBE14:
.LBE13:
	.loc 1 24 0
	str	r6, [r4, #520]
.LBB16:
.LBB15:
	.loc 2 217 0
	bl	writePowerManagement
.LBE15:
.LBE16:
	.loc 1 26 0
	orr	r1, r0, #4
	mov	r0, r6
	bl	writePowerManagement
	.loc 1 27 0
	str	r7, [r4, #520]
	.loc 1 28 0
	ldmfd	sp!, {r4, r6, r7, lr}
	bx	lr
.LFE28:
	.size	neoBacklightOn, .-neoBacklightOn
	.align	2
	.global	neoSystem7Reset
	.type	neoSystem7Reset, %function
neoSystem7Reset:
.LFB33:
	.loc 1 165 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI3:
	.loc 1 166 0
	bl	neoAudioReset
	.loc 1 167 0
	bl	neoYM2610Init
	.loc 1 168 0
	bl	neoZ80Reset
	.loc 1 169 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.LFE33:
	.size	neoSystem7Reset, .-neoSystem7Reset
	.align	2
	.global	neoSystem7Execute
	.type	neoSystem7Execute, %function
neoSystem7Execute:
.LFB34:
	.loc 1 172 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r0, r1, r4, r6, r7, r8, r9, sl, fp, lr}
.LCFI4:
	.loc 1 175 0
	mov	r6, #0
.LVL2:
	bl	neoBacklightOff
	mov	r7, r6
.LVL3:
	.loc 1 187 0
	ldr	r8, .L45
	mov	sl, r6
.LBB27:
.LBB28:
.LBB29:
.LBB30:
.LBB31:
.LBB32:
.LBB33:
	.loc 1 32 0
	mov	r4, #67108864
	b	.L42
.LVL4:
.L36:
.LBE33:
.LBE32:
.LBE31:
.LBE30:
.LBE29:
.LBE28:
.LBE27:
	.loc 1 179 0
	add	r7, r7, #336
.LVL5:
	add	r7, r7, #1
	.loc 1 180 0
	mov	r0, r7
	bl	neoZ80Execute
	str	r0, [sp, #4]
	b	.L21
.LVL6:
.L35:
.LBB47:
.LBB46:
	.loc 1 125 0
	mov	r0, r0, lsr #24
.LVL7:
	sub	r0, r0, #1
	cmp	r0, #5
	ldrls	pc, [pc, r0, asl #2]
	b	.L14
.L20:
	.word	.L15
	.word	.L16
	.word	.L14
	.word	.L17
	.word	.L18
	.word	.L19
.L17:
	.loc 1 127 0
	bl	neoZ80Nmi
	b	.L14
.L15:
	.loc 1 131 0
	bl	neoSystem7Reset
	b	.L14
.L16:
.LBB45:
.LBB44:
	.loc 1 75 0
	bl	neoAudioPause
	.loc 1 78 0
	bl	neoIPCAckCommand
.L34:
.LBB43:
	.loc 1 81 0
	bl	neoIPCRecvCommand
	.loc 1 82 0
	subs	r3, r0, #0
.LVL8:
	beq	.L44
	.loc 1 83 0
	mov	r3, r3, lsr #24
.LVL9:
	sub	r3, r3, #1
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L24
.L30:
	.word	.L25
	.word	.L24
	.word	.L26
	.word	.L24
	.word	.L27
	.word	.L28
	.word	.L29
.L25:
	.loc 1 85 0
	bl	neoSystem7Reset
.L26:
	.loc 1 92 0
	bl	neoIPCAckCommand
	mov	r9, #0
.LVL10:
	b	.L23
.L27:
	.loc 1 95 0
	bl	neoBacklightOff
	b	.L24
.L28:
	.loc 1 99 0
	bl	neoBacklightOn
	b	.L24
.L29:
.LBB42:
.LBB41:
	.loc 1 32 0
	ldr	fp, [r4, #520]
.LVL11:
.LBB34:
.LBB36:
	.loc 2 217 0
	mov	r1, #0
	mov	r0, #128
.LBE36:
.LBE34:
	.loc 1 33 0
	str	sl, [r4, #520]
.LBB38:
.LBB35:
	.loc 2 217 0
	bl	writePowerManagement
.LBE35:
.LBE38:
	.loc 1 36 0
	bic	r1, r0, #12
.LVL12:
	.loc 1 38 0
	orr	r1, r1, #16
.LVL13:
.LBB39:
.LBB37:
	.loc 2 217 0
	mov	r9, r0
.LVL14:
.LBE37:
.LBE39:
	.loc 1 38 0
	mov	r0, #0
	bl	writePowerManagement
	.loc 1 40 0
	mov	r0, #0
	mov	r1, #1024
	.loc 1 39 0
	str	fp, [r4, #520]
	.loc 1 40 0
	bl	swiChangeSoundBias
	.loc 1 41 0
	bl	neoAudioShutdown
.LVL15:
.L43:
	.loc 1 44 0
	bl	neoIPCAckCommand
.L41:
.LBB40:
	.loc 1 48 0
	bl	swiWaitForVBlank
	.loc 1 49 0
	bl	neoIPCRecvCommand
	.loc 1 50 0
	cmp	r0, #0
.LVL16:
	beq	.L41
	.loc 1 51 0
	mov	r0, r0, lsr #24
.LVL17:
	cmp	r0, #8
	bne	.L43
.LBE40:
	.loc 1 62 0
	mov	r1, r9
	.loc 1 60 0
	ldr	r9, [r4, #520]
.LVL18:
	.loc 1 62 0
	mov	r0, #0
	.loc 1 61 0
	str	sl, [r4, #520]
	.loc 1 62 0
	bl	writePowerManagement
	.loc 1 64 0
	mov	r0, #1
	mov	r1, #1024
	.loc 1 63 0
	str	r9, [r4, #520]
	.loc 1 64 0
	bl	swiChangeSoundBias
	.loc 1 65 0
	bl	neoAudioReset
.LVL19:
.L24:
.LBE41:
.LBE42:
	.loc 1 108 0
	bl	neoIPCAckCommand
.LVL20:
.L44:
	mov	r9, #1
.LVL21:
.L23:
	.loc 1 112 0
	ldrb	r3, [r8, #-110]	@ zero_extendqisi2
.LVL22:
	cmp	r3, #0
	.loc 1 113 0
	blne	neoAudioUpdate
.L33:
	.loc 1 115 0
	bl	swiWaitForVBlank
.LBE43:
	.loc 1 80 0
	cmp	r9, #0
	bne	.L34
	.loc 1 118 0
	bl	neoAudioResume
	b	.L21
.L18:
.LBE44:
.LBE45:
	.loc 1 138 0
	bl	neoBacklightOff
	b	.L14
.L19:
	.loc 1 142 0
	bl	neoBacklightOn
.L14:
	.loc 1 148 0
	bl	neoIPCAckCommand
.L21:
	.loc 1 151 0
	bl	neoIPCRecvCommand
	.loc 1 124 0
	cmp	r0, #0
.LVL23:
	bne	.L35
.LBE46:
.LBE47:
	.loc 1 182 0
	bl	neoYM2610Process
.LVL24:
	.loc 1 180 0
	ldr	r3, [sp, #4]
	.loc 1 178 0
	add	r6, r6, #1
	.loc 1 180 0
	rsb	r7, r3, r7
.LVL25:
.L42:
	.loc 1 178 0
	cmp	r6, #199
	bls	.L36
	.loc 1 184 0
	mov	r0, #1
	mov	r1, #4
	bl	swiIntrWait
	.loc 1 185 0
	bl	neoAudioUpdate
	.loc 1 187 0
	ldr	r3, [r8, #-143]
	add	r3, r3, #1
	str	r3, [r8, #-143]
	mov	r6, #0
	b	.L36
.L46:
	.align	2
.L45:
	.word	41940223
.LFE34:
	.size	neoSystem7Execute, .-neoSystem7Execute
	.align	2
	.global	neoSystem7Init
	.type	neoSystem7Init, %function
neoSystem7Init:
.LFB32:
	.loc 1 156 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI5:
	.loc 1 157 0
	ldr	r5, .L49
	.loc 1 159 0
	bl	neoAudioInit
	.loc 1 160 0
	bl	neoYM2610Init
	.loc 1 161 0
	bl	neoZ80Init
	.loc 1 162 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L50:
	.align	2
.L49:
	.word	.LANCHOR0
.LFE32:
	.size	neoSystem7Init, .-neoSystem7Init
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_neoContext7, %object
	.size	g_neoContext7, 2288
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
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI0-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI1-.LFB27
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x7
	.sleb128 2
	.byte	0x11
	.uleb128 0x6
	.sleb128 3
	.byte	0x11
	.uleb128 0x4
	.sleb128 4
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI2-.LFB28
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x7
	.sleb128 2
	.byte	0x11
	.uleb128 0x6
	.sleb128 3
	.byte	0x11
	.uleb128 0x4
	.sleb128 4
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI3-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI4-.LFB34
	.byte	0xe
	.uleb128 0x28
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
	.uleb128 0x7
	.sleb128 6
	.byte	0x11
	.uleb128 0x6
	.sleb128 7
	.byte	0x11
	.uleb128 0x4
	.sleb128 8
	.byte	0x11
	.uleb128 0x1
	.sleb128 9
	.byte	0x11
	.uleb128 0x0
	.sleb128 10
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI5-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE10:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB35-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB33-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB34-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB32-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 5 "C:/devkitPro/libnds/include/nds/fifocommon.h"
	.file 6 "C:/Users/GRX/NeoDS/arm7/source/DrZ80.h"
	.file 7 "C:/Users/GRX/NeoDS/arm7/source/NeoCpuZ80.h"
	.file 8 "C:/Users/GRX/NeoDS/arm7/../common/source/NeoIPC.h"
	.file 9 "C:/devkitPro/libnds/include/nds/interrupts.h"
	.file 10 "C:/Users/GRX/NeoDS/arm7/source/NeoSystem7.h"
	.section	.debug_info
	.4byte	0xa1d
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF168
	.byte	0x1
	.4byte	.LASF169
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2a
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x35
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x36
	.4byte	0x57
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4f
	.4byte	0x69
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x4
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x4
	.byte	0x63
	.4byte	0x4c
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x4
	.byte	0x64
	.4byte	0x70
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x4
	.byte	0x68
	.4byte	0x3a
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x4
	.byte	0x69
	.4byte	0x5e
	.uleb128 0x6
	.byte	0x1
	.byte	0x4
	.byte	0x7d
	.4byte	0xe9
	.uleb128 0x7
	.4byte	.LASF14
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF15
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x7d
	.4byte	0xd4
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfa
	.uleb128 0x9
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF137
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.4byte	0x1b9
	.uleb128 0x7
	.4byte	.LASF17
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF18
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF19
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF20
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF21
	.sleb128 16
	.uleb128 0x7
	.4byte	.LASF22
	.sleb128 32
	.uleb128 0x7
	.4byte	.LASF23
	.sleb128 64
	.uleb128 0x7
	.4byte	.LASF24
	.sleb128 128
	.uleb128 0x7
	.4byte	.LASF25
	.sleb128 256
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 512
	.uleb128 0x7
	.4byte	.LASF27
	.sleb128 1024
	.uleb128 0x7
	.4byte	.LASF28
	.sleb128 2048
	.uleb128 0x7
	.4byte	.LASF29
	.sleb128 4096
	.uleb128 0x7
	.4byte	.LASF30
	.sleb128 8192
	.uleb128 0x7
	.4byte	.LASF31
	.sleb128 65536
	.uleb128 0x7
	.4byte	.LASF32
	.sleb128 131072
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 262144
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 524288
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 1048576
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 2097152
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 4194304
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 8388608
	.uleb128 0x7
	.4byte	.LASF39
	.sleb128 16777216
	.uleb128 0x7
	.4byte	.LASF40
	.sleb128 -1
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF41
	.uleb128 0xc
	.4byte	0x9e
	.4byte	0x1d3
	.uleb128 0xd
	.4byte	0x1b9
	.byte	0x6
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.byte	0x2
	.byte	0x52
	.4byte	0x23b
	.uleb128 0x7
	.4byte	.LASF42
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF43
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF44
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF45
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF46
	.sleb128 64
	.uleb128 0x7
	.4byte	.LASF47
	.sleb128 65537
	.uleb128 0x7
	.4byte	.LASF48
	.sleb128 65538
	.uleb128 0x7
	.4byte	.LASF49
	.sleb128 65540
	.uleb128 0x7
	.4byte	.LASF50
	.sleb128 65544
	.uleb128 0x7
	.4byte	.LASF51
	.sleb128 66048
	.uleb128 0x7
	.4byte	.LASF52
	.sleb128 98304
	.uleb128 0x7
	.4byte	.LASF53
	.sleb128 66051
	.uleb128 0x7
	.4byte	.LASF54
	.sleb128 66063
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.byte	0xb3
	.4byte	0x299
	.uleb128 0x7
	.4byte	.LASF55
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF56
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF57
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF58
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF59
	.sleb128 128
	.uleb128 0x7
	.4byte	.LASF60
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF61
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF62
	.sleb128 4
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
	.uleb128 0x7
	.4byte	.LASF67
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF68
	.sleb128 0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF70
	.uleb128 0x6
	.byte	0x1
	.byte	0x5
	.byte	0x49
	.4byte	0x2c2
	.uleb128 0x7
	.4byte	.LASF71
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF72
	.sleb128 16
	.uleb128 0x7
	.4byte	.LASF73
	.sleb128 48
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9e
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0x70
	.byte	0x6
	.byte	0x13
	.4byte	0x487
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x6
	.byte	0x14
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0x6
	.byte	0x15
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x6
	.byte	0x16
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x6
	.byte	0x17
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0x6
	.byte	0x18
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x6
	.byte	0x19
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x6
	.byte	0x1a
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0x6
	.byte	0x1b
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0x6
	.byte	0x1c
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0x6
	.byte	0x1d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.4byte	.LASF84
	.byte	0x6
	.byte	0x1e
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.4byte	.LASF85
	.byte	0x6
	.byte	0x1f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.4byte	.LASF86
	.byte	0x6
	.byte	0x20
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.4byte	.LASF87
	.byte	0x6
	.byte	0x21
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0x6
	.byte	0x22
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0x6
	.byte	0x23
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.4byte	.LASF90
	.byte	0x6
	.byte	0x24
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.4byte	.LASF91
	.byte	0x6
	.byte	0x27
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0x6
	.byte	0x28
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0x6
	.byte	0x29
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xf
	.4byte	.LASF94
	.byte	0x6
	.byte	0x2a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0x6
	.byte	0x2b
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.4byte	.LASF96
	.byte	0x6
	.byte	0x2c
	.4byte	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.4byte	.LASF97
	.byte	0x6
	.byte	0x2d
	.4byte	0x498
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xf
	.4byte	.LASF98
	.byte	0x6
	.byte	0x2e
	.4byte	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xf
	.4byte	.LASF99
	.byte	0x6
	.byte	0x2f
	.4byte	0x4c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xf
	.4byte	.LASF100
	.byte	0x6
	.byte	0x30
	.4byte	0x4dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xf
	.4byte	.LASF101
	.byte	0x6
	.byte	0x31
	.4byte	0x4c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.4byte	.LASF102
	.byte	0x6
	.byte	0x32
	.4byte	0x4f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.4byte	.LASF103
	.byte	0x6
	.byte	0x33
	.4byte	0x508
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xf
	.4byte	.LASF104
	.byte	0x6
	.byte	0x34
	.4byte	0x508
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.4byte	0x498
	.uleb128 0x11
	.4byte	0x33
	.uleb128 0x11
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x487
	.uleb128 0x10
	.byte	0x1
	.4byte	0x4af
	.uleb128 0x11
	.4byte	0x57
	.uleb128 0x11
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x49e
	.uleb128 0x12
	.byte	0x1
	.4byte	0x33
	.4byte	0x4c5
	.uleb128 0x11
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4b5
	.uleb128 0x10
	.byte	0x1
	.4byte	0x4dc
	.uleb128 0x11
	.4byte	0x57
	.uleb128 0x11
	.4byte	0x33
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4cb
	.uleb128 0x12
	.byte	0x1
	.4byte	0x57
	.4byte	0x4f2
	.uleb128 0x11
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4e2
	.uleb128 0x12
	.byte	0x1
	.4byte	0x7b
	.4byte	0x508
	.uleb128 0x11
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4f8
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0x7
	.byte	0xc
	.4byte	0x2c8
	.uleb128 0x13
	.byte	0x4
	.byte	0x8
	.byte	0x47
	.4byte	0x543
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x8
	.byte	0x48
	.4byte	0xb3
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x8
	.byte	0x49
	.4byte	0xb3
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x8
	.byte	0x4a
	.4byte	0xb3
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0xc
	.byte	0x8
	.byte	0x45
	.4byte	0x582
	.uleb128 0xf
	.4byte	.LASF111
	.byte	0x8
	.byte	0x46
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	0x519
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF112
	.byte	0x8
	.byte	0x4c
	.4byte	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF113
	.byte	0x8
	.byte	0x4d
	.4byte	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0x8
	.byte	0x4e
	.4byte	0x543
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0x98
	.byte	0x8
	.byte	0x50
	.4byte	0x6c8
	.uleb128 0xf
	.4byte	.LASF116
	.byte	0x8
	.byte	0x52
	.4byte	0x2c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF117
	.byte	0x8
	.byte	0x53
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF118
	.byte	0x8
	.byte	0x54
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF119
	.byte	0x8
	.byte	0x55
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF120
	.byte	0x8
	.byte	0x56
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF121
	.byte	0x8
	.byte	0x57
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF122
	.byte	0x8
	.byte	0x58
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF123
	.byte	0x8
	.byte	0x59
	.4byte	0x6c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.4byte	.LASF124
	.byte	0x8
	.byte	0x5a
	.4byte	0x6de
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.4byte	.LASF125
	.byte	0x8
	.byte	0x5b
	.4byte	0x6f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xf
	.4byte	.LASF126
	.byte	0x8
	.byte	0x5c
	.4byte	0x6f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xf
	.4byte	.LASF127
	.byte	0x8
	.byte	0x5d
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xf
	.4byte	.LASF128
	.byte	0x8
	.byte	0x60
	.4byte	0x704
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.4byte	.LASF129
	.byte	0x8
	.byte	0x61
	.4byte	0xb3
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xf
	.4byte	.LASF130
	.byte	0x8
	.byte	0x63
	.4byte	0xa8
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xf
	.4byte	.LASF131
	.byte	0x8
	.byte	0x65
	.4byte	0x1c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0xf
	.4byte	.LASF132
	.byte	0x8
	.byte	0x68
	.4byte	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x91
	.uleb128 0xf
	.4byte	.LASF133
	.byte	0x8
	.byte	0x69
	.4byte	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x92
	.uleb128 0xf
	.4byte	.LASF134
	.byte	0x8
	.byte	0x6a
	.4byte	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x93
	.uleb128 0xf
	.4byte	.LASF135
	.byte	0x8
	.byte	0x6b
	.4byte	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xf
	.4byte	.LASF136
	.byte	0x8
	.byte	0x6c
	.4byte	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x95
	.byte	0x0
	.uleb128 0xc
	.4byte	0x6d8
	.4byte	0x6d8
	.uleb128 0xd
	.4byte	0x1b9
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa8
	.uleb128 0xc
	.4byte	0x6ee
	.4byte	0x6ee
	.uleb128 0xd
	.4byte	0x1b9
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x582
	.uleb128 0xc
	.4byte	0xbe
	.4byte	0x704
	.uleb128 0xd
	.4byte	0x1b9
	.byte	0x6
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb3
	.4byte	0x714
	.uleb128 0xd
	.4byte	0x1b9
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.4byte	.LASF138
	.byte	0x1
	.byte	0x8
	.byte	0x73
	.4byte	0x75d
	.uleb128 0x7
	.4byte	.LASF139
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF140
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF141
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF142
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF143
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF144
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF145
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF146
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF147
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF148
	.sleb128 10
	.byte	0x0
	.uleb128 0x16
	.4byte	.LASF149
	.2byte	0x8f0
	.byte	0xa
	.byte	0x1f
	.4byte	0x796
	.uleb128 0x17
	.ascii	"z80\000"
	.byte	0xa
	.byte	0x20
	.4byte	0x50e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF150
	.byte	0xa
	.byte	0x26
	.4byte	0x796
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xf
	.4byte	.LASF151
	.byte	0xa
	.byte	0x27
	.4byte	0x7a6
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.byte	0x0
	.uleb128 0xc
	.4byte	0x2c2
	.4byte	0x7a6
	.uleb128 0xd
	.4byte	0x1b9
	.byte	0x1f
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9e
	.4byte	0x7b7
	.uleb128 0x18
	.4byte	0x1b9
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF152
	.byte	0xa
	.byte	0x28
	.4byte	0x75d
	.uleb128 0x19
	.4byte	.LASF153
	.byte	0x2
	.byte	0xd8
	.byte	0x1
	.4byte	0x69
	.byte	0x3
	.4byte	0x7df
	.uleb128 0x1a
	.ascii	"reg\000"
	.byte	0x2
	.byte	0xd8
	.4byte	0x69
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF158
	.byte	0x1
	.byte	0xbf
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LASF154
	.byte	0x1
	.byte	0xc
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST1
	.4byte	0x838
	.uleb128 0x1d
	.4byte	.LASF156
	.byte	0x1
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.4byte	.LASF157
	.byte	0x1
	.byte	0x10
	.4byte	0xb3
	.uleb128 0x1f
	.4byte	0x7c2
	.4byte	.LBB9
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x10
	.uleb128 0x20
	.4byte	0x7d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0x1
	.byte	0x15
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST2
	.4byte	0x87d
	.uleb128 0x1d
	.4byte	.LASF156
	.byte	0x1
	.byte	0x17
	.4byte	0xb3
	.byte	0x1
	.byte	0x57
	.uleb128 0x1e
	.4byte	.LASF157
	.byte	0x1
	.byte	0x19
	.4byte	0xb3
	.uleb128 0x1f
	.4byte	0x7c2
	.4byte	.LBB13
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x19
	.uleb128 0x20
	.4byte	0x7d3
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF159
	.byte	0x1
	.byte	0xa4
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LLST3
	.uleb128 0x21
	.4byte	.LASF160
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.4byte	0x8a9
	.uleb128 0x1e
	.4byte	.LASF111
	.byte	0x1
	.byte	0x7b
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF161
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.4byte	0x8ce
	.uleb128 0x1e
	.4byte	.LASF162
	.byte	0x1
	.byte	0x49
	.4byte	0xe9
	.uleb128 0x22
	.uleb128 0x1e
	.4byte	.LASF111
	.byte	0x1
	.byte	0x51
	.4byte	0xb3
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF163
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.4byte	0x909
	.uleb128 0x1e
	.4byte	.LASF156
	.byte	0x1
	.byte	0x20
	.4byte	0xb3
	.uleb128 0x1e
	.4byte	.LASF164
	.byte	0x1
	.byte	0x22
	.4byte	0x909
	.uleb128 0x1e
	.4byte	.LASF157
	.byte	0x1
	.byte	0x23
	.4byte	0xb3
	.uleb128 0x22
	.uleb128 0x1e
	.4byte	.LASF111
	.byte	0x1
	.byte	0x31
	.4byte	0xb3
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	0xb3
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF170
	.byte	0x1
	.byte	0xab
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LLST4
	.4byte	0x9e7
	.uleb128 0x1d
	.4byte	.LASF165
	.byte	0x1
	.byte	0xad
	.4byte	0xc9
	.byte	0x1
	.byte	0x57
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x1
	.byte	0xae
	.4byte	0xb3
	.4byte	.LLST5
	.uleb128 0x1f
	.4byte	0x891
	.4byte	.LBB27
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xb5
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x27
	.4byte	0x89d
	.4byte	.LLST6
	.uleb128 0x1f
	.4byte	0x8a9
	.4byte	.LBB29
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x87
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0x78
	.uleb128 0x27
	.4byte	0x8b5
	.4byte	.LLST7
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0x90
	.uleb128 0x27
	.4byte	0x8c1
	.4byte	.LLST8
	.uleb128 0x1f
	.4byte	0x8ce
	.4byte	.LBB32
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0x68
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0xc0
	.uleb128 0x27
	.4byte	0x8da
	.4byte	.LLST9
	.uleb128 0x28
	.4byte	0x8e5
	.uleb128 0x27
	.4byte	0x8f0
	.4byte	.LLST10
	.uleb128 0x29
	.4byte	0x7c2
	.4byte	.LBB34
	.4byte	.Ldebug_ranges0+0xd8
	.byte	0x1
	.byte	0x22
	.4byte	0x9cc
	.uleb128 0x20
	.4byte	0x7d3
	.byte	0x0
	.uleb128 0x2a
	.4byte	.LBB40
	.4byte	.LBE40
	.uleb128 0x27
	.4byte	0x8fc
	.4byte	.LLST11
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF166
	.byte	0x1
	.byte	0x9b
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LLST12
	.uleb128 0x1d
	.4byte	.LASF167
	.byte	0x1
	.byte	0xa
	.4byte	0x7b7
	.byte	0x5
	.byte	0x3
	.4byte	g_neoContext7
	.uleb128 0x2b
	.4byte	.LASF171
	.byte	0xa
	.byte	0x39
	.4byte	0xa1a
	.byte	0x1
	.byte	0x1
	.byte	0x55
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7b7
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
	.uleb128 0xb
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x17
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.4byte	0xa21
	.4byte	0x7df
	.ascii	"systemPanic\000"
	.4byte	0x87d
	.ascii	"neoSystem7Reset\000"
	.4byte	0x90e
	.ascii	"neoSystem7Execute\000"
	.4byte	0x9e7
	.ascii	"neoSystem7Init\000"
	.4byte	0xa0c
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
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF149:
	.ascii	"_TNeoContext7\000"
.LASF112:
	.ascii	"audioFrame\000"
.LASF128:
	.ascii	"arm9Args\000"
.LASF119:
	.ascii	"arm9FifoSent\000"
.LASF45:
	.ascii	"PM_BACKLIGHT_TOP\000"
.LASF168:
	.ascii	"GNU C 4.4.3\000"
.LASF114:
	.ascii	"TNeoAdpcmControl\000"
.LASF54:
	.ascii	"POWER_ALL\000"
.LASF137:
	.ascii	"IRQ_MASKS\000"
.LASF132:
	.ascii	"globalAudioEnabled\000"
.LASF43:
	.ascii	"PM_SOUND_MUTE\000"
.LASF123:
	.ascii	"pAdpcmBuffer\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF115:
	.ascii	"_TNeoIPC\000"
.LASF33:
	.ascii	"IRQ_FIFO_NOT_EMPTY\000"
.LASF148:
	.ascii	"NEOARM9_AUDIORESULT\000"
.LASF91:
	.ascii	"Z80_IRQ\000"
.LASF146:
	.ascii	"NEOARM7_LIDOPEN\000"
.LASF31:
	.ascii	"IRQ_IPC_SYNC\000"
.LASF142:
	.ascii	"NEOARM7_NMI\000"
.LASF71:
	.ascii	"PM_LED_ON\000"
.LASF20:
	.ascii	"IRQ_TIMER0\000"
.LASF21:
	.ascii	"IRQ_TIMER1\000"
.LASF22:
	.ascii	"IRQ_TIMER2\000"
.LASF23:
	.ascii	"IRQ_TIMER3\000"
.LASF131:
	.ascii	"adpcmaFinished\000"
.LASF108:
	.ascii	"frequency\000"
.LASF147:
	.ascii	"NEOARM9_READAUDIO\000"
.LASF82:
	.ascii	"Z80SP_BASE\000"
.LASF124:
	.ascii	"adpcmControl\000"
.LASF29:
	.ascii	"IRQ_KEYS\000"
.LASF103:
	.ascii	"z80_rebaseSP\000"
.LASF105:
	.ascii	"TDrZ80Context\000"
.LASF161:
	.ascii	"neoSystem7Pause\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF97:
	.ascii	"z80_write8\000"
.LASF110:
	.ascii	"_TNeoAdpcaControl\000"
.LASF12:
	.ascii	"float\000"
.LASF96:
	.ascii	"z80_irq_callback\000"
.LASF144:
	.ascii	"NEOARM7_BACKLIGHTON\000"
.LASF141:
	.ascii	"NEOARM7_RESUME\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF145:
	.ascii	"NEOARM7_LIDCLOSE\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF99:
	.ascii	"z80_in\000"
.LASF86:
	.ascii	"Z80A2\000"
.LASF74:
	.ascii	"Z80PC\000"
.LASF98:
	.ascii	"z80_write16\000"
.LASF153:
	.ascii	"readPowerManagement\000"
.LASF40:
	.ascii	"IRQ_ALL\000"
.LASF52:
	.ascii	"POWER_SWAP_LCDS\000"
.LASF130:
	.ascii	"audioStreamCount\000"
.LASF167:
	.ascii	"g_neoContext7\000"
.LASF157:
	.ascii	"value\000"
.LASF59:
	.ascii	"PM_READ_REGISTER\000"
.LASF58:
	.ascii	"PM_AMPLIFIER_REG\000"
.LASF101:
	.ascii	"z80_read8\000"
.LASF44:
	.ascii	"PM_BACKLIGHT_BOTTOM\000"
.LASF77:
	.ascii	"Z80BC\000"
.LASF100:
	.ascii	"z80_out\000"
.LASF127:
	.ascii	"arm7Alive\000"
.LASF162:
	.ascii	"paused\000"
.LASF107:
	.ascii	"endAddr\000"
.LASF155:
	.ascii	"neoBacklightOn\000"
.LASF133:
	.ascii	"audioCommand\000"
.LASF15:
	.ascii	"true\000"
.LASF102:
	.ascii	"z80_read16\000"
.LASF66:
	.ascii	"PM_GAIN_160\000"
.LASF63:
	.ascii	"PM_GAIN_20\000"
.LASF139:
	.ascii	"NEOARM7_RESET\000"
.LASF41:
	.ascii	"char\000"
.LASF39:
	.ascii	"IRQ_WIFI\000"
.LASF60:
	.ascii	"PM_AMP_OFFSET\000"
.LASF159:
	.ascii	"neoSystem7Reset\000"
.LASF94:
	.ascii	"spare\000"
.LASF56:
	.ascii	"PM_CONTROL_REG\000"
.LASF24:
	.ascii	"IRQ_NETWORK\000"
.LASF121:
	.ascii	"arm7FifoSent\000"
.LASF35:
	.ascii	"IRQ_CARD_LINE\000"
.LASF169:
	.ascii	"C:/Users/GRX/NeoDS/arm7/source/NeoSystem7.c\000"
.LASF17:
	.ascii	"IRQ_VBLANK\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF80:
	.ascii	"Z80SP\000"
.LASF62:
	.ascii	"PM_BACKLIGHT_LEVEL\000"
.LASF122:
	.ascii	"arm7FifoProcessed\000"
.LASF109:
	.ascii	"DrZ80\000"
.LASF140:
	.ascii	"NEOARM7_PAUSE\000"
.LASF138:
	.ascii	"_TNeoIPCCommand\000"
.LASF34:
	.ascii	"IRQ_CARD\000"
.LASF10:
	.ascii	"long long int\000"
.LASF125:
	.ascii	"adpcmQueuePos7\000"
.LASF126:
	.ascii	"adpcmQueuePos9\000"
.LASF30:
	.ascii	"IRQ_CART\000"
.LASF95:
	.ascii	"z80irqvector\000"
.LASF16:
	.ascii	"bool\000"
.LASF64:
	.ascii	"PM_GAIN_40\000"
.LASF84:
	.ascii	"Z80IY\000"
.LASF53:
	.ascii	"POWER_ALL_2D\000"
.LASF120:
	.ascii	"arm9FifoProcessed\000"
.LASF166:
	.ascii	"neoSystem7Init\000"
.LASF67:
	.ascii	"PM_AMP_ON\000"
.LASF72:
	.ascii	"PM_LED_SLEEP\000"
.LASF151:
	.ascii	"z80Ram\000"
.LASF111:
	.ascii	"command\000"
.LASF87:
	.ascii	"Z80F2\000"
.LASF70:
	.ascii	"long unsigned int\000"
.LASF81:
	.ascii	"Z80PC_BASE\000"
.LASF49:
	.ascii	"POWER_MATRIX\000"
.LASF55:
	.ascii	"POWER_SOUND\000"
.LASF48:
	.ascii	"POWER_2D_A\000"
.LASF51:
	.ascii	"POWER_2D_B\000"
.LASF42:
	.ascii	"PM_SOUND_AMP\000"
.LASF117:
	.ascii	"audioProgramSize\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF171:
	.ascii	"g_neo7\000"
.LASF36:
	.ascii	"IRQ_GEOMETRY_FIFO\000"
.LASF68:
	.ascii	"PM_AMP_OFF\000"
.LASF156:
	.ascii	"enabled\000"
.LASF158:
	.ascii	"systemPanic\000"
.LASF106:
	.ascii	"startAddr\000"
.LASF4:
	.ascii	"short int\000"
.LASF38:
	.ascii	"IRQ_SPI\000"
.LASF69:
	.ascii	"long int\000"
.LASF118:
	.ascii	"audioRomSize\000"
.LASF25:
	.ascii	"IRQ_DMA0\000"
.LASF26:
	.ascii	"IRQ_DMA1\000"
.LASF27:
	.ascii	"IRQ_DMA2\000"
.LASF28:
	.ascii	"IRQ_DMA3\000"
.LASF129:
	.ascii	"arm9Return\000"
.LASF170:
	.ascii	"neoSystem7Execute\000"
.LASF135:
	.ascii	"audioCommandPending\000"
.LASF61:
	.ascii	"PM_GAIN_OFFSET\000"
.LASF79:
	.ascii	"Z80HL\000"
.LASF89:
	.ascii	"Z80DE2\000"
.LASF136:
	.ascii	"misc\000"
.LASF73:
	.ascii	"PM_LED_BLINK\000"
.LASF164:
	.ascii	"powerValue\000"
.LASF19:
	.ascii	"IRQ_VCOUNT\000"
.LASF90:
	.ascii	"Z80HL2\000"
.LASF65:
	.ascii	"PM_GAIN_80\000"
.LASF92:
	.ascii	"Z80IF\000"
.LASF150:
	.ascii	"z80MemTable\000"
.LASF93:
	.ascii	"Z80IM\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF83:
	.ascii	"Z80IX\000"
.LASF47:
	.ascii	"POWER_LCD\000"
.LASF88:
	.ascii	"Z80BC2\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF78:
	.ascii	"Z80DE\000"
.LASF32:
	.ascii	"IRQ_FIFO_EMPTY\000"
.LASF14:
	.ascii	"false\000"
.LASF160:
	.ascii	"neoSystem7ProcessCommands\000"
.LASF152:
	.ascii	"TNeoContext7\000"
.LASF134:
	.ascii	"audioResult\000"
.LASF0:
	.ascii	"signed char\000"
.LASF75:
	.ascii	"Z80A\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF76:
	.ascii	"Z80F\000"
.LASF85:
	.ascii	"Z80I\000"
.LASF18:
	.ascii	"IRQ_HBLANK\000"
.LASF13:
	.ascii	"double\000"
.LASF113:
	.ascii	"timeStamp\000"
.LASF165:
	.ascii	"cycles\000"
.LASF57:
	.ascii	"PM_BATTERY_REG\000"
.LASF163:
	.ascii	"neoLidClose\000"
.LASF104:
	.ascii	"z80_rebasePC\000"
.LASF154:
	.ascii	"neoBacklightOff\000"
.LASF116:
	.ascii	"pAudioProgram0\000"
.LASF50:
	.ascii	"POWER_3D_CORE\000"
.LASF143:
	.ascii	"NEOARM7_BACKLIGHTOFF\000"
.LASF46:
	.ascii	"PM_SYSTEM_PWR\000"
.LASF37:
	.ascii	"IRQ_LID\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
