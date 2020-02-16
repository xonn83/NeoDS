	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.file	"NeoIPC.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	neoIPCInit
	.type	neoIPCInit, %function
neoIPCInit:
.LFB28:
	.file 1 "C:/Users/GRX/NeoDS/arm7/../common/source/NeoIPC.c"
	.loc 1 34 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 35 0
	ldr	r3, .L3
	ldr	r2, .L3+4
	strh	r2, [r3, #132]	@ movhi
	.loc 1 36 0
	ldrh	r2, [r3, #128]
	orr	r2, r2, #16384
	strh	r2, [r3, #128]	@ movhi
	.loc 1 37 0
	bx	lr
.L4:
	.align	2
.L3:
	.word	67109120
	.word	-16376
.LFE28:
	.size	neoIPCInit, .-neoIPCInit
	.align	2
	.global	neoIPCSendCommandAsync
	.type	neoIPCSendCommandAsync, %function
neoIPCSendCommandAsync:
.LFB29:
	.loc 1 40 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 42 0
	ldr	r3, .L10
.L6:
	ldrh	r2, [r3, #132]
	tst	r2, #2
	ldr	r2, .L10
	bne	.L6
	.loc 1 44 0
	mov	r1, r0, asl #24
	mov	r3, #67108864
	str	r1, [r3, #392]
.LBB23:
.LBB24:
	.file 2 "C:/devkitPro/libnds/include/nds/ipc.h"
	.loc 2 47 0
	ldrh	r3, [r2, #128]
	bic	r3, r3, #3840
	orr	r3, r3, #8192
	and	r0, r0, #15
.LVL1:
	orr	r0, r3, r0, asl #8
	strh	r0, [r2, #128]	@ movhi
.LBE24:
.LBE23:
	.loc 1 52 0
	ldr	r3, .L10+4
	ldr	r2, [r3, #-235]
	add	r2, r2, #1
	str	r2, [r3, #-235]
	.loc 1 53 0
	ldr	r0, [r3, #-235]
	.loc 1 55 0
	bx	lr
.L11:
	.align	2
.L10:
	.word	67109120
	.word	41940223
.LFE29:
	.size	neoIPCSendCommandAsync, .-neoIPCSendCommandAsync
	.align	2
	.global	neoIPCCheckCommandDone
	.type	neoIPCCheckCommandDone, %function
neoIPCCheckCommandDone:
.LFB31:
	.loc 1 65 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2:
	.loc 1 69 0
	ldr	r3, .L16
	ldr	r3, [r3, #-239]
.LVL3:
	.loc 1 71 0
	cmp	r3, r0
	movcs	r0, #1
.LVL4:
	bxcs	lr
	rsb	r0, r3, r0
.LVL5:
	cmp	r0, #-2147483648
	movls	r0, #0
	movhi	r0, #1
	.loc 1 79 0
	bx	lr
.L17:
	.align	2
.L16:
	.word	41940223
.LFE31:
	.size	neoIPCCheckCommandDone, .-neoIPCCheckCommandDone
	.align	2
	.global	neoIPCRecvCommand
	.type	neoIPCRecvCommand, %function
neoIPCRecvCommand:
.LFB33:
	.loc 1 99 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 103 0
	ldr	r3, .L22
	ldrh	r3, [r3, #132]
	tst	r3, #256
	.loc 1 106 0
	ldreq	r3, .L22+4
	moveq	r2, #1
	streq	r2, [r3, #0]
	.loc 1 105 0
	moveq	r3, #68157440
	.loc 1 103 0
	movne	r0, #0
.LVL6:
	.loc 1 105 0
	ldreq	r0, [r3, #0]
.LVL7:
	.loc 1 110 0
	bx	lr
.L23:
	.align	2
.L22:
	.word	67109120
	.word	.LANCHOR0
.LFE33:
	.size	neoIPCRecvCommand, .-neoIPCRecvCommand
	.align	2
	.global	neoIPCAckCommand
	.type	neoIPCAckCommand, %function
neoIPCAckCommand:
.LFB35:
	.loc 1 143 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 148 0
	ldr	r3, .L26
	ldr	r2, [r3, #-231]
	add	r2, r2, #1
	str	r2, [r3, #-231]
.LBB25:
.LBB26:
	.loc 2 47 0
	ldr	r3, .L26+4
	ldrh	r2, [r3, #128]
	bic	r2, r2, #3840
	orr	r2, r2, #8192
	strh	r2, [r3, #128]	@ movhi
.LBE26:
.LBE25:
	.loc 1 151 0
	ldr	r3, .L26+8
	mov	r2, #0
	str	r2, [r3, #0]
	.loc 1 152 0
	bx	lr
.L27:
	.align	2
.L26:
	.word	41940223
	.word	67109120
	.word	.LANCHOR0
.LFE35:
	.size	neoIPCAckCommand, .-neoIPCAckCommand
	.align	2
	.global	neoIPCWaitCommand
	.type	neoIPCWaitCommand, %function
neoIPCWaitCommand:
.LFB34:
	.loc 1 113 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL8:
	stmfd	sp!, {r4, r6, r7, r8, r9, sl, fp, lr}
.LCFI0:
.LBB27:
.LBB33:
.LBB34:
	.loc 1 103 0
	ldr	r4, .L35
	.loc 1 106 0
	ldr	r7, .L35+4
.LBE34:
.LBE33:
.LBB28:
.LBB29:
	.loc 1 148 0
	ldr	r6, .L35+8
.LBE29:
.LBE28:
.LBE27:
	.loc 1 113 0
	mov	fp, r0
.LBB42:
.LBB36:
.LBB35:
	.loc 1 105 0
	mov	r9, #68157440
	.loc 1 106 0
	mov	sl, #1
	.loc 1 103 0
	mov	r8, #0
.LVL9:
.L33:
	ldrh	r3, [r4, #132]
	tst	r3, #256
	.loc 1 106 0
	streq	sl, [r7, #0]
	.loc 1 105 0
	ldreq	r3, [r9, #0]
.LVL10:
	.loc 1 103 0
	movne	r3, #0
.LBE35:
.LBE36:
	.loc 1 122 0
	cmp	fp, r3, lsr #24
.LBB37:
.LBB38:
	.loc 1 30 0
	mov	r0, #0
.LBE38:
.LBE37:
	.loc 1 122 0
	beq	.L31
	.loc 1 124 0
	cmp	r3, r0
	beq	.L32
.LBB40:
.LBB32:
	.loc 1 148 0
	ldr	r3, [r6, #-231]
.LVL11:
	add	r3, r3, #1
	str	r3, [r6, #-231]
.LBB30:
.LBB31:
	.loc 2 47 0
	ldrh	r3, [r4, #128]
	bic	r3, r3, #3840
	orr	r3, r3, #8192
	strh	r3, [r4, #128]	@ movhi
.LBE31:
.LBE30:
	.loc 1 151 0
	str	r8, [r7, #0]
.LVL12:
.L32:
.LBE32:
.LBE40:
.LBB41:
.LBB39:
	.loc 1 30 0
	mov	r1, #65536
	bl	swiIntrWait
.LBE39:
.LBE41:
.LBE42:
	.loc 1 133 0
	b	.L33
.LVL13:
.L31:
	.loc 1 140 0
	mov	r0, #0
	ldmfd	sp!, {r4, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	67109120
	.word	.LANCHOR0
	.word	41940223
.LFE34:
	.size	neoIPCWaitCommand, .-neoIPCWaitCommand
	.align	2
	.global	neoIPCWaitCommandDone
	.type	neoIPCWaitCommandDone, %function
neoIPCWaitCommandDone:
.LFB32:
	.loc 1 82 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL14:
	stmfd	sp!, {r4, r5, r6, lr}
.LCFI1:
.LBB43:
.LBB44:
	.loc 1 69 0
	ldr	r6, .L42
.LBE44:
.LBE43:
	.loc 1 82 0
	mov	r4, r0
.LVL15:
.L40:
.LBB46:
.LBB45:
	.loc 1 69 0
	ldr	r3, [r6, #-239]
.LVL16:
	.loc 1 71 0
	cmp	r3, r4
	.loc 1 73 0
	rsb	r2, r3, r4
	.loc 1 71 0
	bcs	.L41
	.loc 1 73 0
	cmp	r2, #-2147483648
	bhi	.L41
.LBE45:
.LBE46:
.LBB47:
.LBB48:
	.loc 1 30 0
	mov	r0, #0
	mov	r1, #65536
	bl	swiIntrWait
.LVL17:
	b	.L40
.LVL18:
.L41:
.LBE48:
.LBE47:
	.loc 1 96 0
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	41940223
.LFE32:
	.size	neoIPCWaitCommandDone, .-neoIPCWaitCommandDone
	.align	2
	.global	neoIPCSendCommand
	.type	neoIPCSendCommand, %function
neoIPCSendCommand:
.LFB30:
	.loc 1 58 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL19:
.LBB49:
.LBB50:
	.loc 1 42 0
	ldr	r3, .L48
.L45:
	ldrh	r2, [r3, #132]
	tst	r2, #2
	ldr	r2, .L48
	bne	.L45
	.loc 1 44 0
	mov	r1, r0, asl #24
	mov	r3, #67108864
	str	r1, [r3, #392]
.LBB51:
.LBB52:
	.loc 2 47 0
	ldrh	r3, [r2, #128]
	bic	r3, r3, #3840
	orr	r3, r3, #8192
	and	r0, r0, #15
.LVL20:
	orr	r0, r3, r0, asl #8
	strh	r0, [r2, #128]	@ movhi
.LBE52:
.LBE51:
	.loc 1 52 0
	ldr	r3, .L48+4
	ldr	r2, [r3, #-235]
	add	r2, r2, #1
	str	r2, [r3, #-235]
	.loc 1 53 0
	ldr	r0, [r3, #-235]
.LVL21:
.LBE50:
.LBE49:
	.loc 1 61 0
	.loc 1 60 0
	b	neoIPCWaitCommandDone
.LVL22:
.L49:
	.align	2
.L48:
	.word	67109120
	.word	41940223
.LFE30:
	.size	neoIPCSendCommand, .-neoIPCSendCommand
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_ipcState, %object
	.size	g_ipcState, 4
g_ipcState:
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI0-.LFB34
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
	.uleb128 0x7
	.sleb128 6
	.byte	0x11
	.uleb128 0x6
	.sleb128 7
	.byte	0x11
	.uleb128 0x4
	.sleb128 8
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI1-.LFB32
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x6
	.sleb128 2
	.byte	0x11
	.uleb128 0x5
	.sleb128 3
	.byte	0x11
	.uleb128 0x4
	.sleb128 4
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.align	2
.LEFDE14:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB34-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB32-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 5 "C:/devkitPro/libnds/include/nds/interrupts.h"
	.file 6 "C:/Users/GRX/NeoDS/arm7/../common/source/NeoIPC.h"
	.file 7 "C:/Users/GRX/NeoDS/arm7/source/DrZ80.h"
	.file 8 "C:/Users/GRX/NeoDS/arm7/source/NeoCpuZ80.h"
	.file 9 "C:/Users/GRX/NeoDS/arm7/source/NeoSystem7.h"
	.section	.debug_info
	.4byte	0xa19
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0x1
	.4byte	.LASF148
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x50
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
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
	.4byte	0x65
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x4
	.byte	0x68
	.4byte	0x3a
	.uleb128 0x6
	.byte	0x1
	.byte	0x4
	.byte	0x7d
	.4byte	0xd3
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
	.4byte	0xbe
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe4
	.uleb128 0x9
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0x5
	.byte	0x2e
	.4byte	0x1a3
	.uleb128 0x7
	.4byte	.LASF16
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF17
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF18
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF19
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF20
	.sleb128 16
	.uleb128 0x7
	.4byte	.LASF21
	.sleb128 32
	.uleb128 0x7
	.4byte	.LASF22
	.sleb128 64
	.uleb128 0x7
	.4byte	.LASF23
	.sleb128 128
	.uleb128 0x7
	.4byte	.LASF24
	.sleb128 256
	.uleb128 0x7
	.4byte	.LASF25
	.sleb128 512
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 1024
	.uleb128 0x7
	.4byte	.LASF27
	.sleb128 2048
	.uleb128 0x7
	.4byte	.LASF28
	.sleb128 4096
	.uleb128 0x7
	.4byte	.LASF29
	.sleb128 8192
	.uleb128 0x7
	.4byte	.LASF30
	.sleb128 65536
	.uleb128 0x7
	.4byte	.LASF31
	.sleb128 131072
	.uleb128 0x7
	.4byte	.LASF32
	.sleb128 262144
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 524288
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 1048576
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 2097152
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 4194304
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 8388608
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 16777216
	.uleb128 0x7
	.4byte	.LASF39
	.sleb128 -1
	.byte	0x0
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x2
	.byte	0x2
	.byte	0x27
	.4byte	0x1c0
	.uleb128 0x7
	.4byte	.LASF42
	.sleb128 16384
	.uleb128 0x7
	.4byte	.LASF43
	.sleb128 8192
	.byte	0x0
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x2
	.byte	0x2
	.byte	0x3f
	.4byte	0x20a
	.uleb128 0x7
	.4byte	.LASF45
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF46
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF47
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF48
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF49
	.sleb128 256
	.uleb128 0x7
	.4byte	.LASF50
	.sleb128 512
	.uleb128 0x7
	.4byte	.LASF51
	.sleb128 1024
	.uleb128 0x7
	.4byte	.LASF52
	.sleb128 16384
	.uleb128 0x7
	.4byte	.LASF53
	.sleb128 32768
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF54
	.uleb128 0xc
	.4byte	0x93
	.4byte	0x224
	.uleb128 0xd
	.4byte	0x20a
	.byte	0x6
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF55
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF56
	.uleb128 0x8
	.byte	0x4
	.4byte	0x93
	.uleb128 0xe
	.byte	0x4
	.byte	0x6
	.byte	0x47
	.4byte	0x262
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x6
	.byte	0x48
	.4byte	0xa8
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x6
	.byte	0x49
	.4byte	0xa8
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x6
	.byte	0x4a
	.4byte	0xa8
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0xc
	.byte	0x6
	.byte	0x45
	.4byte	0x2a1
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x6
	.byte	0x46
	.4byte	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x6
	.byte	0x4c
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x6
	.byte	0x4d
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x6
	.byte	0x4e
	.4byte	0x262
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x98
	.byte	0x6
	.byte	0x50
	.4byte	0x3e7
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x6
	.byte	0x52
	.4byte	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x6
	.byte	0x53
	.4byte	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x6
	.byte	0x54
	.4byte	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x6
	.byte	0x55
	.4byte	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x6
	.byte	0x56
	.4byte	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x6
	.byte	0x57
	.4byte	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x6
	.byte	0x58
	.4byte	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x6
	.byte	0x59
	.4byte	0x3e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x6
	.byte	0x5a
	.4byte	0x3fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x6
	.byte	0x5b
	.4byte	0x413
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x6
	.byte	0x5c
	.4byte	0x413
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x6
	.byte	0x5d
	.4byte	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x6
	.byte	0x60
	.4byte	0x423
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x6
	.byte	0x61
	.4byte	0xa8
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x6
	.byte	0x63
	.4byte	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0x6
	.byte	0x65
	.4byte	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x6
	.byte	0x68
	.4byte	0x93
	.byte	0x3
	.byte	0x23
	.uleb128 0x91
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x6
	.byte	0x69
	.4byte	0x93
	.byte	0x3
	.byte	0x23
	.uleb128 0x92
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0x6
	.byte	0x6a
	.4byte	0x93
	.byte	0x3
	.byte	0x23
	.uleb128 0x93
	.uleb128 0x11
	.4byte	.LASF85
	.byte	0x6
	.byte	0x6b
	.4byte	0x93
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0x6
	.byte	0x6c
	.4byte	0x93
	.byte	0x3
	.byte	0x23
	.uleb128 0x95
	.byte	0x0
	.uleb128 0xc
	.4byte	0x3f7
	.4byte	0x3f7
	.uleb128 0xd
	.4byte	0x20a
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9d
	.uleb128 0xc
	.4byte	0x40d
	.4byte	0x40d
	.uleb128 0xd
	.4byte	0x20a
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2a1
	.uleb128 0xc
	.4byte	0xb3
	.4byte	0x423
	.uleb128 0xd
	.4byte	0x20a
	.byte	0x6
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa8
	.4byte	0x433
	.uleb128 0xd
	.4byte	0x20a
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x1
	.byte	0x6
	.byte	0x73
	.4byte	0x47c
	.uleb128 0x7
	.4byte	.LASF88
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF89
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF90
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF91
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF92
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF93
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF94
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF95
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF96
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF97
	.sleb128 10
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF98
	.byte	0x6
	.byte	0x7e
	.4byte	0x433
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0x70
	.byte	0x7
	.byte	0x13
	.4byte	0x646
	.uleb128 0x11
	.4byte	.LASF100
	.byte	0x7
	.byte	0x14
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0x7
	.byte	0x15
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0x7
	.byte	0x16
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0x7
	.byte	0x17
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0x7
	.byte	0x18
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0x7
	.byte	0x19
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF106
	.byte	0x7
	.byte	0x1a
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0x7
	.byte	0x1b
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0x7
	.byte	0x1c
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF109
	.byte	0x7
	.byte	0x1d
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0x7
	.byte	0x1e
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0x7
	.byte	0x1f
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0x7
	.byte	0x20
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0x7
	.byte	0x21
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0x7
	.byte	0x22
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0x7
	.byte	0x23
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0x7
	.byte	0x24
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0x7
	.byte	0x27
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0x7
	.byte	0x28
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0x7
	.byte	0x29
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0x7
	.byte	0x2a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0x7
	.byte	0x2b
	.4byte	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0x7
	.byte	0x2c
	.4byte	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0x7
	.byte	0x2d
	.4byte	0x657
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0x7
	.byte	0x2e
	.4byte	0x66e
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0x7
	.byte	0x2f
	.4byte	0x684
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x11
	.4byte	.LASF126
	.byte	0x7
	.byte	0x30
	.4byte	0x69b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0x7
	.byte	0x31
	.4byte	0x684
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF128
	.byte	0x7
	.byte	0x32
	.4byte	0x6b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0x7
	.byte	0x33
	.4byte	0x6c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0x7
	.byte	0x34
	.4byte	0x6c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.4byte	0x657
	.uleb128 0x14
	.4byte	0x33
	.uleb128 0x14
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x646
	.uleb128 0x13
	.byte	0x1
	.4byte	0x66e
	.uleb128 0x14
	.4byte	0x57
	.uleb128 0x14
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x65d
	.uleb128 0x15
	.byte	0x1
	.4byte	0x33
	.4byte	0x684
	.uleb128 0x14
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x674
	.uleb128 0x13
	.byte	0x1
	.4byte	0x69b
	.uleb128 0x14
	.4byte	0x57
	.uleb128 0x14
	.4byte	0x33
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x68a
	.uleb128 0x15
	.byte	0x1
	.4byte	0x57
	.4byte	0x6b1
	.uleb128 0x14
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6a1
	.uleb128 0x15
	.byte	0x1
	.4byte	0x70
	.4byte	0x6c7
	.uleb128 0x14
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6b7
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0x8
	.byte	0xc
	.4byte	0x487
	.uleb128 0x16
	.4byte	.LASF132
	.2byte	0x8f0
	.byte	0x9
	.byte	0x1f
	.4byte	0x711
	.uleb128 0x17
	.ascii	"z80\000"
	.byte	0x9
	.byte	0x20
	.4byte	0x6cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0x9
	.byte	0x26
	.4byte	0x711
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0x9
	.byte	0x27
	.4byte	0x721
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.byte	0x0
	.uleb128 0xc
	.4byte	0x232
	.4byte	0x721
	.uleb128 0xd
	.4byte	0x20a
	.byte	0x1f
	.byte	0x0
	.uleb128 0xc
	.4byte	0x93
	.4byte	0x732
	.uleb128 0x18
	.4byte	0x20a
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0x9
	.byte	0x28
	.4byte	0x6d8
	.uleb128 0x6
	.byte	0x1
	.byte	0x1
	.byte	0x15
	.4byte	0x752
	.uleb128 0x7
	.4byte	.LASF136
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF137
	.sleb128 1
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF149
	.byte	0x2
	.byte	0x2d
	.byte	0x1
	.byte	0x3
	.4byte	0x76b
	.uleb128 0x1a
	.4byte	.LASF138
	.byte	0x2
	.byte	0x2d
	.4byte	0x70
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF150
	.byte	0x1
	.byte	0x62
	.4byte	0xa8
	.byte	0x1
	.4byte	0x788
	.uleb128 0x1c
	.4byte	.LASF60
	.byte	0x1
	.byte	0x66
	.4byte	0xa8
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF151
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF152
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF141
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.4byte	0xd3
	.byte	0x1
	.4byte	0x7c2
	.uleb128 0x1a
	.4byte	.LASF139
	.byte	0x1
	.byte	0x40
	.4byte	0xa8
	.uleb128 0x1c
	.4byte	.LASF140
	.byte	0x1
	.byte	0x45
	.4byte	0x7c2
	.byte	0x0
	.uleb128 0x20
	.4byte	0xa8
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF142
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.4byte	0xa8
	.byte	0x1
	.4byte	0x7e5
	.uleb128 0x1a
	.4byte	.LASF60
	.byte	0x1
	.byte	0x27
	.4byte	0x47c
	.byte	0x0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF153
	.byte	0x1
	.byte	0x21
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5d
	.uleb128 0x22
	.4byte	0x7c7
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5d
	.4byte	0x829
	.uleb128 0x23
	.4byte	0x7d9
	.4byte	.LLST2
	.uleb128 0x24
	.4byte	0x752
	.4byte	.LBB23
	.4byte	.LBE23
	.byte	0x1
	.byte	0x2d
	.uleb128 0x25
	.4byte	0x75f
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.4byte	0x799
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5d
	.4byte	0x84d
	.uleb128 0x23
	.4byte	0x7ab
	.4byte	.LLST4
	.uleb128 0x26
	.4byte	0x7b6
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x22
	.4byte	0x76b
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x5d
	.4byte	0x86a
	.uleb128 0x27
	.4byte	0x77c
	.4byte	.LLST6
	.byte	0x0
	.uleb128 0x22
	.4byte	0x788
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x5d
	.4byte	0x893
	.uleb128 0x24
	.4byte	0x752
	.4byte	.LBB25
	.4byte	.LBE25
	.byte	0x1
	.byte	0x96
	.uleb128 0x25
	.4byte	0x75f
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF154
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.4byte	0xa8
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LLST8
	.4byte	0x937
	.uleb128 0x29
	.4byte	.LASF60
	.byte	0x1
	.byte	0x70
	.4byte	0x47c
	.4byte	.LLST9
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0x1
	.byte	0x72
	.4byte	0xa8
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x2b
	.4byte	.LASF143
	.byte	0x1
	.byte	0x79
	.4byte	0xa8
	.4byte	.LLST10
	.uleb128 0x2c
	.4byte	0x788
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x82
	.4byte	0x907
	.uleb128 0x24
	.4byte	0x752
	.4byte	.LBB30
	.4byte	.LBE30
	.byte	0x1
	.byte	0x96
	.uleb128 0x25
	.4byte	0x75f
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.4byte	0x76b
	.4byte	.LBB33
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x79
	.4byte	0x926
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x2d
	.4byte	0x77c
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.4byte	0x791
	.4byte	.LBB37
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x84
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF144
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LLST11
	.4byte	0x997
	.uleb128 0x29
	.4byte	.LASF139
	.byte	0x1
	.byte	0x51
	.4byte	0xa8
	.4byte	.LLST12
	.uleb128 0x2c
	.4byte	0x799
	.4byte	.LBB43
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0x57
	.4byte	0x987
	.uleb128 0x25
	.4byte	0x83c
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0x90
	.uleb128 0x27
	.4byte	0x7b6
	.4byte	.LLST13
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.4byte	0x791
	.4byte	.LBB47
	.4byte	.LBE47
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF145
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5d
	.4byte	0x9f7
	.uleb128 0x29
	.4byte	.LASF60
	.byte	0x1
	.byte	0x39
	.4byte	0x47c
	.4byte	.LLST15
	.uleb128 0x2b
	.4byte	.LASF139
	.byte	0x1
	.byte	0x3b
	.4byte	0x7c2
	.4byte	.LLST16
	.uleb128 0x24
	.4byte	0x7c7
	.4byte	.LBB49
	.4byte	.LBE49
	.byte	0x1
	.byte	0x3b
	.uleb128 0x25
	.4byte	0x80a
	.uleb128 0x24
	.4byte	0x752
	.4byte	.LBB51
	.4byte	.LBE51
	.byte	0x1
	.byte	0x2d
	.uleb128 0x25
	.4byte	0x75f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.4byte	.LASF146
	.byte	0x1
	.byte	0x1a
	.4byte	0xa8
	.byte	0x5
	.byte	0x3
	.4byte	g_ipcState
	.uleb128 0x33
	.4byte	.LASF155
	.byte	0x9
	.byte	0x39
	.4byte	0xa16
	.byte	0x1
	.byte	0x1
	.byte	0x55
	.uleb128 0x8
	.byte	0x4
	.4byte	0x732
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
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0xe
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x1d
	.byte	0x0
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xcf
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xa1d
	.4byte	0x7e5
	.ascii	"neoIPCInit\000"
	.4byte	0x7f7
	.ascii	"neoIPCSendCommandAsync\000"
	.4byte	0x829
	.ascii	"neoIPCCheckCommandDone\000"
	.4byte	0x84d
	.ascii	"neoIPCRecvCommand\000"
	.4byte	0x86a
	.ascii	"neoIPCAckCommand\000"
	.4byte	0x893
	.ascii	"neoIPCWaitCommand\000"
	.4byte	0x937
	.ascii	"neoIPCWaitCommandDone\000"
	.4byte	0x997
	.ascii	"neoIPCSendCommand\000"
	.4byte	0xa08
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
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF132:
	.ascii	"_TNeoContext7\000"
.LASF42:
	.ascii	"IPC_SYNC_IRQ_ENABLE\000"
.LASF61:
	.ascii	"audioFrame\000"
.LASF78:
	.ascii	"arm9Args\000"
.LASF69:
	.ascii	"arm9FifoSent\000"
.LASF147:
	.ascii	"GNU C 4.4.3\000"
.LASF44:
	.ascii	"IPC_CONTROL_BITS\000"
.LASF63:
	.ascii	"TNeoAdpcmControl\000"
.LASF121:
	.ascii	"z80irqvector\000"
.LASF139:
	.ascii	"message\000"
.LASF40:
	.ascii	"IRQ_MASKS\000"
.LASF82:
	.ascii	"globalAudioEnabled\000"
.LASF73:
	.ascii	"pAdpcmBuffer\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF65:
	.ascii	"_TNeoIPC\000"
.LASF32:
	.ascii	"IRQ_FIFO_NOT_EMPTY\000"
.LASF97:
	.ascii	"NEOARM9_AUDIORESULT\000"
.LASF117:
	.ascii	"Z80_IRQ\000"
.LASF95:
	.ascii	"NEOARM7_LIDOPEN\000"
.LASF30:
	.ascii	"IRQ_IPC_SYNC\000"
.LASF141:
	.ascii	"neoIPCCheckCommandDone\000"
.LASF91:
	.ascii	"NEOARM7_NMI\000"
.LASF138:
	.ascii	"sync\000"
.LASF19:
	.ascii	"IRQ_TIMER0\000"
.LASF20:
	.ascii	"IRQ_TIMER1\000"
.LASF21:
	.ascii	"IRQ_TIMER2\000"
.LASF22:
	.ascii	"IRQ_TIMER3\000"
.LASF81:
	.ascii	"adpcmaFinished\000"
.LASF59:
	.ascii	"frequency\000"
.LASF48:
	.ascii	"IPC_FIFO_SEND_CLEAR\000"
.LASF144:
	.ascii	"neoIPCWaitCommandDone\000"
.LASF50:
	.ascii	"IPC_FIFO_RECV_FULL\000"
.LASF96:
	.ascii	"NEOARM9_READAUDIO\000"
.LASF62:
	.ascii	"timeStamp\000"
.LASF74:
	.ascii	"adpcmControl\000"
.LASF28:
	.ascii	"IRQ_KEYS\000"
.LASF129:
	.ascii	"z80_rebaseSP\000"
.LASF131:
	.ascii	"TDrZ80Context\000"
.LASF152:
	.ascii	"neoIPCDelay\000"
.LASF7:
	.ascii	"uint32_t\000"
.LASF41:
	.ascii	"IPC_SYNC_BITS\000"
.LASF123:
	.ascii	"z80_write8\000"
.LASF145:
	.ascii	"neoIPCSendCommand\000"
.LASF64:
	.ascii	"_TNeoAdpcaControl\000"
.LASF11:
	.ascii	"float\000"
.LASF153:
	.ascii	"neoIPCInit\000"
.LASF122:
	.ascii	"z80_irq_callback\000"
.LASF93:
	.ascii	"NEOARM7_BACKLIGHTON\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF125:
	.ascii	"z80_in\000"
.LASF112:
	.ascii	"Z80A2\000"
.LASF100:
	.ascii	"Z80PC\000"
.LASF124:
	.ascii	"z80_write16\000"
.LASF39:
	.ascii	"IRQ_ALL\000"
.LASF80:
	.ascii	"audioStreamCount\000"
.LASF148:
	.ascii	"C:/Users/GRX/NeoDS/arm7/../common/source/NeoIPC.c\000"
.LASF52:
	.ascii	"IPC_FIFO_ERROR\000"
.LASF127:
	.ascii	"z80_read8\000"
.LASF103:
	.ascii	"Z80BC\000"
.LASF126:
	.ascii	"z80_out\000"
.LASF77:
	.ascii	"arm7Alive\000"
.LASF58:
	.ascii	"endAddr\000"
.LASF83:
	.ascii	"audioCommand\000"
.LASF14:
	.ascii	"true\000"
.LASF137:
	.ascii	"IPCSTATE_RECVD\000"
.LASF115:
	.ascii	"Z80DE2\000"
.LASF128:
	.ascii	"z80_read16\000"
.LASF90:
	.ascii	"NEOARM7_RESUME\000"
.LASF88:
	.ascii	"NEOARM7_RESET\000"
.LASF54:
	.ascii	"char\000"
.LASF38:
	.ascii	"IRQ_WIFI\000"
.LASF120:
	.ascii	"spare\000"
.LASF49:
	.ascii	"IPC_FIFO_RECV_EMPTY\000"
.LASF23:
	.ascii	"IRQ_NETWORK\000"
.LASF51:
	.ascii	"IPC_FIFO_RECV_IRQ\000"
.LASF71:
	.ascii	"arm7FifoSent\000"
.LASF34:
	.ascii	"IRQ_CARD_LINE\000"
.LASF99:
	.ascii	"DrZ80\000"
.LASF16:
	.ascii	"IRQ_VBLANK\000"
.LASF43:
	.ascii	"IPC_SYNC_IRQ_REQUEST\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF106:
	.ascii	"Z80SP\000"
.LASF104:
	.ascii	"Z80DE\000"
.LASF142:
	.ascii	"neoIPCSendCommandAsync\000"
.LASF89:
	.ascii	"NEOARM7_PAUSE\000"
.LASF87:
	.ascii	"_TNeoIPCCommand\000"
.LASF33:
	.ascii	"IRQ_CARD\000"
.LASF9:
	.ascii	"long long int\000"
.LASF75:
	.ascii	"adpcmQueuePos7\000"
.LASF76:
	.ascii	"adpcmQueuePos9\000"
.LASF29:
	.ascii	"IRQ_CART\000"
.LASF72:
	.ascii	"arm7FifoProcessed\000"
.LASF98:
	.ascii	"TNeoIPCCommand\000"
.LASF15:
	.ascii	"bool\000"
.LASF70:
	.ascii	"arm9FifoProcessed\000"
.LASF149:
	.ascii	"IPC_SendSync\000"
.LASF134:
	.ascii	"z80Ram\000"
.LASF60:
	.ascii	"command\000"
.LASF113:
	.ascii	"Z80F2\000"
.LASF107:
	.ascii	"Z80PC_BASE\000"
.LASF67:
	.ascii	"audioProgramSize\000"
.LASF136:
	.ascii	"IPCSTATE_IDLE\000"
.LASF143:
	.ascii	"data\000"
.LASF146:
	.ascii	"g_ipcState\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF45:
	.ascii	"IPC_FIFO_SEND_EMPTY\000"
.LASF155:
	.ascii	"g_neo7\000"
.LASF35:
	.ascii	"IRQ_GEOMETRY_FIFO\000"
.LASF57:
	.ascii	"startAddr\000"
.LASF4:
	.ascii	"short int\000"
.LASF46:
	.ascii	"IPC_FIFO_SEND_FULL\000"
.LASF37:
	.ascii	"IRQ_SPI\000"
.LASF55:
	.ascii	"long int\000"
.LASF68:
	.ascii	"audioRomSize\000"
.LASF24:
	.ascii	"IRQ_DMA0\000"
.LASF25:
	.ascii	"IRQ_DMA1\000"
.LASF26:
	.ascii	"IRQ_DMA2\000"
.LASF27:
	.ascii	"IRQ_DMA3\000"
.LASF79:
	.ascii	"arm9Return\000"
.LASF85:
	.ascii	"audioCommandPending\000"
.LASF105:
	.ascii	"Z80HL\000"
.LASF94:
	.ascii	"NEOARM7_LIDCLOSE\000"
.LASF150:
	.ascii	"neoIPCRecvCommand\000"
.LASF86:
	.ascii	"misc\000"
.LASF18:
	.ascii	"IRQ_VCOUNT\000"
.LASF116:
	.ascii	"Z80HL2\000"
.LASF56:
	.ascii	"long unsigned int\000"
.LASF118:
	.ascii	"Z80IF\000"
.LASF133:
	.ascii	"z80MemTable\000"
.LASF119:
	.ascii	"Z80IM\000"
.LASF47:
	.ascii	"IPC_FIFO_SEND_IRQ\000"
.LASF109:
	.ascii	"Z80IX\000"
.LASF110:
	.ascii	"Z80IY\000"
.LASF114:
	.ascii	"Z80BC2\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF31:
	.ascii	"IRQ_FIFO_EMPTY\000"
.LASF13:
	.ascii	"false\000"
.LASF108:
	.ascii	"Z80SP_BASE\000"
.LASF151:
	.ascii	"neoIPCAckCommand\000"
.LASF140:
	.ascii	"processed\000"
.LASF135:
	.ascii	"TNeoContext7\000"
.LASF84:
	.ascii	"audioResult\000"
.LASF0:
	.ascii	"signed char\000"
.LASF101:
	.ascii	"Z80A\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF102:
	.ascii	"Z80F\000"
.LASF111:
	.ascii	"Z80I\000"
.LASF17:
	.ascii	"IRQ_HBLANK\000"
.LASF12:
	.ascii	"double\000"
.LASF53:
	.ascii	"IPC_FIFO_ENABLE\000"
.LASF130:
	.ascii	"z80_rebasePC\000"
.LASF66:
	.ascii	"pAudioProgram0\000"
.LASF92:
	.ascii	"NEOARM7_BACKLIGHTOFF\000"
.LASF154:
	.ascii	"neoIPCWaitCommand\000"
.LASF36:
	.ascii	"IRQ_LID\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
