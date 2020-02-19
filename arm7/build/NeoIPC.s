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
	.type	IPC_SendSync, %function
IPC_SendSync:
.LFB12:
	.file 1 "C:/devkitPro/libnds/include/nds/ipc.h"
	.loc 1 125 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 127 0
	ldr	r3, .L3
	ldrh	r2, [r3, #128]
	bic	r2, r2, #3840
	and	r0, r0, #15
.LVL1:
	orr	r2, r2, #8192
	orr	r2, r2, r0, asl #8
	.loc 1 125 0
	@ lr needed for prologue
	.loc 1 127 0
	strh	r2, [r3, #128]	@ movhi
	.loc 1 128 0
	bx	lr
.L4:
	.align	2
.L3:
	.word	67109120
.LFE12:
	.size	IPC_SendSync, .-IPC_SendSync
	.align	2
	.global	neoIPCInit
	.type	neoIPCInit, %function
neoIPCInit:
.LFB23:
	.file 2 "C:/Users/GRX/NeoDS-GBMacro/arm7/../common/source/NeoIPC.c"
	.loc 2 34 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 35 0
	ldr	r2, .L7
	ldr	r3, .L7+4
	strh	r3, [r2, #132]	@ movhi
	.loc 2 36 0
	ldrh	r3, [r2, #128]
	orr	r3, r3, #16384
	.loc 2 34 0
	@ lr needed for prologue
	.loc 2 36 0
	strh	r3, [r2, #128]	@ movhi
	.loc 2 37 0
	bx	lr
.L8:
	.align	2
.L7:
	.word	67109120
	.word	-16376
.LFE23:
	.size	neoIPCInit, .-neoIPCInit
	.align	2
	.global	neoIPCSendCommandAsync
	.type	neoIPCSendCommandAsync, %function
neoIPCSendCommandAsync:
.LFB24:
	.loc 2 40 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2:
	str	lr, [sp, #-4]!
.LCFI0:
	mov	r2, r0
	sub	sp, sp, #4
.LCFI1:
.LVL3:
.L11:
	.loc 2 42 0
	ldr	r3, .L16
	ldrh	r3, [r3, #132]
	tst	r3, #2
	bne	.L11
	.loc 2 45 0
	mov	r0, r2
	.loc 2 44 0
	mov	r3, #67108864
	mov	r2, r2, asl #24
.LVL4:
	str	r2, [r3, #392]
	.loc 2 45 0
	bl	IPC_SendSync
.LVL5:
	.loc 2 52 0
	ldr	r2, .L16+4
	ldr	r3, [r2, #-235]
	add	r3, r3, #1
	str	r3, [r2, #-235]
	.loc 2 53 0
	ldr	r0, [r2, #-235]
	.loc 2 55 0
	add	sp, sp, #4
	ldr	lr, [sp], #4
	bx	lr
.L17:
	.align	2
.L16:
	.word	67109120
	.word	41940223
.LFE24:
	.size	neoIPCSendCommandAsync, .-neoIPCSendCommandAsync
	.align	2
	.global	neoIPCCheckCommandDone
	.type	neoIPCCheckCommandDone, %function
neoIPCCheckCommandDone:
.LFB26:
	.loc 2 65 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL6:
	.loc 2 69 0
	ldr	r3, .L23
	ldr	r3, [r3, #-239]
.LVL7:
	.loc 2 71 0
	cmp	r3, r0
	rsb	r2, r3, r0
	.loc 2 65 0
	@ lr needed for prologue
	.loc 2 71 0
	mov	r0, #1
.LVL8:
	bxcs	lr
	cmp	r2, #-2147483648
	movls	r0, #0
	movhi	r0, #1
	.loc 2 79 0
	bx	lr
.L24:
	.align	2
.L23:
	.word	41940223
.LFE26:
	.size	neoIPCCheckCommandDone, .-neoIPCCheckCommandDone
	.align	2
	.global	neoIPCRecvCommand
	.type	neoIPCRecvCommand, %function
neoIPCRecvCommand:
.LFB28:
	.loc 2 99 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 103 0
	ldr	r3, .L30
	ldrh	r3, [r3, #132]
	tst	r3, #256
	.loc 2 99 0
	@ lr needed for prologue
	.loc 2 103 0
	mov	r0, #0
.LVL9:
	bxne	lr
	.loc 2 106 0
	ldr	r2, .L30+4
	mov	r3, #1
	str	r3, [r2, #0]
	.loc 2 105 0
	mov	r3, #68157440
	ldr	r0, [r3, #0]
.LVL10:
	.loc 2 110 0
	bx	lr
.L31:
	.align	2
.L30:
	.word	67109120
	.word	g_ipcState
.LFE28:
	.size	neoIPCRecvCommand, .-neoIPCRecvCommand
	.align	2
	.global	neoIPCAckCommand
	.type	neoIPCAckCommand, %function
neoIPCAckCommand:
.LFB30:
	.loc 2 143 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 148 0
	ldr	r2, .L34
	.loc 2 143 0
	str	lr, [sp, #-4]!
.LCFI2:
	.loc 2 148 0
	ldr	r3, [r2, #-231]
	add	r3, r3, #1
	str	r3, [r2, #-231]
	.loc 2 143 0
	sub	sp, sp, #4
.LCFI3:
	.loc 2 150 0
	mov	r0, #0
	bl	IPC_SendSync
	.loc 2 151 0
	ldr	r3, .L34+4
	mov	r2, #0
	str	r2, [r3, #0]
	.loc 2 152 0
	add	sp, sp, #4
	ldr	lr, [sp], #4
	bx	lr
.L35:
	.align	2
.L34:
	.word	41940223
	.word	g_ipcState
.LFE30:
	.size	neoIPCAckCommand, .-neoIPCAckCommand
	.align	2
	.type	neoIPCDelay, %function
neoIPCDelay:
.LFB22:
	.loc 2 29 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI4:
	.loc 2 30 0
	mov	r0, #0
	.loc 2 29 0
	sub	sp, sp, #4
.LCFI5:
	.loc 2 30 0
	mov	r1, #65536
	bl	swiIntrWait
	.loc 2 31 0
	add	sp, sp, #4
	ldr	lr, [sp], #4
	bx	lr
.LFE22:
	.size	neoIPCDelay, .-neoIPCDelay
	.align	2
	.global	neoIPCWaitCommandDone
	.type	neoIPCWaitCommandDone, %function
neoIPCWaitCommandDone:
.LFB27:
	.loc 2 82 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL11:
	stmfd	sp!, {r4, lr}
.LCFI6:
	.loc 2 82 0
	mov	r4, r0
	b	.L39
.LVL12:
.L40:
	.loc 2 88 0
	bl	neoIPCDelay
.LVL13:
.L39:
	.loc 2 87 0
	mov	r0, r4
	bl	neoIPCCheckCommandDone
	cmp	r0, #0
	beq	.L40
	.loc 2 96 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.LFE27:
	.size	neoIPCWaitCommandDone, .-neoIPCWaitCommandDone
	.align	2
	.global	neoIPCSendCommand
	.type	neoIPCSendCommand, %function
neoIPCSendCommand:
.LFB25:
	.loc 2 58 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL14:
	str	lr, [sp, #-4]!
.LCFI7:
	sub	sp, sp, #4
.LCFI8:
	.loc 2 59 0
	bl	neoIPCSendCommandAsync
.LVL15:
	.loc 2 61 0
	add	sp, sp, #4
	ldr	lr, [sp], #4
	.loc 2 60 0
	b	neoIPCWaitCommandDone
.LFE25:
	.size	neoIPCSendCommand, .-neoIPCSendCommand
	.align	2
	.global	neoIPCWaitCommand
	.type	neoIPCWaitCommand, %function
neoIPCWaitCommand:
.LFB29:
	.loc 2 113 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL16:
	stmfd	sp!, {r4, lr}
.LCFI9:
	mov	r4, r0
.LVL17:
.L46:
.LBB5:
.LBB6:
.LBB7:
	.loc 2 103 0
	ldr	r3, .L55
	ldrh	r3, [r3, #132]
	tst	r3, #256
	.loc 2 106 0
	ldreq	r2, .L55+4
	.loc 2 103 0
	mov	r3, #0
.LVL18:
	.loc 2 106 0
	moveq	r3, #1
.LVL19:
	streq	r3, [r2, #0]
	.loc 2 105 0
	moveq	r3, #68157440
	ldreq	r3, [r3, #0]
.LVL20:
.LBE7:
.LBE6:
	.loc 2 122 0
	cmp	r4, r3, lsr #24
	beq	.L50
	.loc 2 124 0
	cmp	r3, #0
	.loc 2 130 0
	blne	neoIPCAckCommand
.LVL21:
.L52:
	.loc 2 132 0
	bl	neoIPCDelay
.LVL22:
	b	.L46
.LVL23:
.L50:
.LBE5:
	.loc 2 140 0
	mov	r0, #0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L56:
	.align	2
.L55:
	.word	67109120
	.word	g_ipcState
.LFE29:
	.size	neoIPCWaitCommand, .-neoIPCWaitCommand
	.bss
	.align	2
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI0-.LFB24
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI2-.LFB30
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI4-.LFB22
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI6-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.byte	0x84
	.uleb128 0x2
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI7-.LFB25
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI9-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.byte	0x84
	.uleb128 0x2
	.align	2
.LEFDE18:
	.file 3 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 4 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 5 "C:/Users/GRX/NeoDS-GBMacro/arm7/../common/source/NeoIPC.h"
	.file 6 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoSystem7.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoCpuZ80.h"
	.file 8 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/DrZ80.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB24-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB30-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB22-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB25-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB29-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x5dc
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF80
	.byte	0x1
	.4byte	.LASF81
	.4byte	.LASF82
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF5
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
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x4
	.byte	0x54
	.4byte	0x5e
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF12
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
	.4byte	0x53
	.uleb128 0x6
	.4byte	0xb9
	.byte	0x1
	.byte	0x3
	.byte	0x81
	.uleb128 0x7
	.4byte	.LASF13
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF14
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x81
	.4byte	0xa4
	.uleb128 0x8
	.byte	0x4
	.4byte	0xca
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x1
	.byte	0x8
	.uleb128 0x8
	.byte	0x4
	.4byte	0x8f
	.uleb128 0xa
	.4byte	0x129
	.4byte	.LASF83
	.byte	0x1
	.byte	0x5
	.byte	0x73
	.uleb128 0x7
	.4byte	.LASF17
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF18
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF19
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF20
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF21
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF22
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF23
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF24
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF25
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 10
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x7e
	.4byte	0xe0
	.uleb128 0xb
	.4byte	0x2f3
	.4byte	.LASF60
	.byte	0x70
	.byte	0x8
	.byte	0x13
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x8
	.byte	0x14
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x8
	.byte	0x15
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x8
	.byte	0x16
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x8
	.byte	0x17
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x8
	.byte	0x18
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x8
	.byte	0x19
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x8
	.byte	0x1a
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x8
	.byte	0x1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x8
	.byte	0x1c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x8
	.byte	0x1d
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x8
	.byte	0x1e
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x8
	.byte	0x1f
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x8
	.byte	0x20
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x8
	.byte	0x21
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x8
	.byte	0x22
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x8
	.byte	0x23
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x8
	.byte	0x24
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x8
	.byte	0x27
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x8
	.byte	0x28
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x8
	.byte	0x29
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x8
	.byte	0x2a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x8
	.byte	0x2b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x8
	.byte	0x2c
	.4byte	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x8
	.byte	0x2d
	.4byte	0x304
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x8
	.byte	0x2e
	.4byte	0x31b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x8
	.byte	0x2f
	.4byte	0x331
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x8
	.byte	0x30
	.4byte	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x8
	.byte	0x31
	.4byte	0x331
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x8
	.byte	0x32
	.4byte	0x35e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x8
	.byte	0x33
	.4byte	0x374
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x8
	.byte	0x34
	.4byte	0x374
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xd
	.4byte	0x304
	.byte	0x1
	.uleb128 0xe
	.4byte	0x37
	.uleb128 0xe
	.4byte	0x45
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2f3
	.uleb128 0xd
	.4byte	0x31b
	.byte	0x1
	.uleb128 0xe
	.4byte	0x45
	.uleb128 0xe
	.4byte	0x45
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30a
	.uleb128 0xf
	.4byte	0x331
	.byte	0x1
	.4byte	0x37
	.uleb128 0xe
	.4byte	0x45
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x321
	.uleb128 0xd
	.4byte	0x348
	.byte	0x1
	.uleb128 0xe
	.4byte	0x45
	.uleb128 0xe
	.4byte	0x37
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x337
	.uleb128 0xf
	.4byte	0x35e
	.byte	0x1
	.4byte	0x45
	.uleb128 0xe
	.4byte	0x45
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x34e
	.uleb128 0xf
	.4byte	0x374
	.byte	0x1
	.4byte	0x7a
	.uleb128 0xe
	.4byte	0x45
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x364
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x7
	.byte	0xc
	.4byte	0x134
	.uleb128 0x10
	.4byte	0x3be
	.4byte	.LASF61
	.2byte	0x8f0
	.byte	0x6
	.byte	0x1f
	.uleb128 0x11
	.ascii	"z80\000"
	.byte	0x6
	.byte	0x20
	.4byte	0x37a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x6
	.byte	0x26
	.4byte	0x3be
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x6
	.byte	0x27
	.4byte	0x3ce
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.byte	0x0
	.uleb128 0x12
	.4byte	0x3ce
	.4byte	0xda
	.uleb128 0x13
	.4byte	0xcc
	.byte	0x1f
	.byte	0x0
	.uleb128 0x12
	.4byte	0x3df
	.4byte	0x8f
	.uleb128 0x14
	.4byte	0xcc
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x6
	.byte	0x28
	.4byte	0x385
	.uleb128 0x15
	.4byte	0x410
	.4byte	.LASF84
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x5d
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x1
	.byte	0x7d
	.4byte	0x7a
	.4byte	.LLST1
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF72
	.byte	0x2
	.byte	0x22
	.4byte	.LFB23
	.4byte	.LFE23
	.byte	0x1
	.byte	0x5d
	.uleb128 0x18
	.4byte	0x44f
	.byte	0x1
	.4byte	.LASF67
	.byte	0x2
	.byte	0x28
	.byte	0x1
	.4byte	0x99
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x2
	.byte	0x27
	.4byte	0x129
	.4byte	.LLST4
	.byte	0x0
	.uleb128 0x19
	.4byte	0x487
	.byte	0x1
	.4byte	.LASF68
	.byte	0x2
	.byte	0x41
	.byte	0x1
	.4byte	0xb9
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x5d
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x2
	.byte	0x40
	.4byte	0x99
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LASF71
	.byte	0x2
	.byte	0x45
	.4byte	0x487
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1b
	.4byte	0x99
	.uleb128 0x1c
	.4byte	0x4a9
	.byte	0x1
	.4byte	.LASF70
	.byte	0x2
	.byte	0x63
	.4byte	0x99
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF66
	.byte	0x2
	.byte	0x66
	.4byte	0x99
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x4c6
	.4byte	0x48c
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1f
	.4byte	0x49d
	.4byte	.LLST8
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF73
	.byte	0x2
	.byte	0x8f
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LLST9
	.uleb128 0x21
	.4byte	.LASF85
	.byte	0x2
	.byte	0x1d
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LLST10
	.uleb128 0x22
	.4byte	0x516
	.byte	0x1
	.4byte	.LASF74
	.byte	0x2
	.byte	0x52
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST11
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x2
	.byte	0x51
	.4byte	0x99
	.4byte	.LLST12
	.byte	0x0
	.uleb128 0x22
	.4byte	0x54a
	.byte	0x1
	.4byte	.LASF75
	.byte	0x2
	.byte	0x3a
	.byte	0x1
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST13
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x2
	.byte	0x39
	.4byte	0x129
	.4byte	.LLST14
	.uleb128 0x1d
	.4byte	.LASF69
	.byte	0x2
	.byte	0x3b
	.4byte	0x487
	.byte	0x0
	.uleb128 0x18
	.4byte	0x5ba
	.byte	0x1
	.4byte	.LASF76
	.byte	0x2
	.byte	0x71
	.byte	0x1
	.4byte	0x99
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LLST15
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x2
	.byte	0x70
	.4byte	0x129
	.4byte	.LLST16
	.uleb128 0x1d
	.4byte	.LASF77
	.byte	0x2
	.byte	0x72
	.4byte	0x99
	.uleb128 0x23
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x24
	.4byte	.LASF77
	.byte	0x2
	.byte	0x79
	.4byte	0x99
	.4byte	.LLST17
	.uleb128 0x25
	.4byte	0x48c
	.4byte	.LBB6
	.4byte	.LBE6
	.byte	0x2
	.byte	0x79
	.uleb128 0x23
	.4byte	.LBB7
	.4byte	.LBE7
	.uleb128 0x26
	.4byte	0x49d
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LASF78
	.byte	0x2
	.byte	0x1a
	.4byte	0x99
	.byte	0x5
	.byte	0x3
	.4byte	g_ipcState
	.uleb128 0x27
	.4byte	.LASF79
	.byte	0x6
	.byte	0x39
	.4byte	0x5d9
	.byte	0x1
	.byte	0x1
	.byte	0x55
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3df
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
	.uleb128 0x4
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.4byte	0x5e0
	.4byte	0x410
	.ascii	"neoIPCInit\000"
	.4byte	0x422
	.ascii	"neoIPCSendCommandAsync\000"
	.4byte	0x44f
	.ascii	"neoIPCCheckCommandDone\000"
	.4byte	0x4a9
	.ascii	"neoIPCRecvCommand\000"
	.4byte	0x4c6
	.ascii	"neoIPCAckCommand\000"
	.4byte	0x4ed
	.ascii	"neoIPCWaitCommandDone\000"
	.4byte	0x516
	.ascii	"neoIPCSendCommand\000"
	.4byte	0x54a
	.ascii	"neoIPCWaitCommand\000"
	.4byte	0x5cb
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
	.section	.debug_str,"MS",%progbits,1
.LASF61:
	.ascii	"_TNeoContext7\000"
.LASF80:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF49:
	.ascii	"z80irqvector\000"
.LASF69:
	.ascii	"message\000"
.LASF26:
	.ascii	"NEOARM9_AUDIORESULT\000"
.LASF45:
	.ascii	"Z80_IRQ\000"
.LASF24:
	.ascii	"NEOARM7_LIDOPEN\000"
.LASF74:
	.ascii	"neoIPCWaitCommandDone\000"
.LASF65:
	.ascii	"sync\000"
.LASF25:
	.ascii	"NEOARM9_READAUDIO\000"
.LASF36:
	.ascii	"Z80SP_BASE\000"
.LASF57:
	.ascii	"z80_rebaseSP\000"
.LASF59:
	.ascii	"TDrZ80Context\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF51:
	.ascii	"z80_write8\000"
.LASF75:
	.ascii	"neoIPCSendCommand\000"
.LASF11:
	.ascii	"float\000"
.LASF72:
	.ascii	"neoIPCInit\000"
.LASF22:
	.ascii	"NEOARM7_BACKLIGHTON\000"
.LASF19:
	.ascii	"NEOARM7_RESUME\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF40:
	.ascii	"Z80A2\000"
.LASF73:
	.ascii	"neoIPCAckCommand\000"
.LASF82:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm7\\\\buil"
	.ascii	"d\000"
.LASF55:
	.ascii	"z80_read8\000"
.LASF31:
	.ascii	"Z80BC\000"
.LASF54:
	.ascii	"z80_out\000"
.LASF14:
	.ascii	"true\000"
.LASF43:
	.ascii	"Z80DE2\000"
.LASF56:
	.ascii	"z80_read16\000"
.LASF28:
	.ascii	"Z80PC\000"
.LASF16:
	.ascii	"char\000"
.LASF48:
	.ascii	"spare\000"
.LASF60:
	.ascii	"DrZ80\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF34:
	.ascii	"Z80SP\000"
.LASF85:
	.ascii	"neoIPCDelay\000"
.LASF32:
	.ascii	"Z80DE\000"
.LASF67:
	.ascii	"neoIPCSendCommandAsync\000"
.LASF18:
	.ascii	"NEOARM7_PAUSE\000"
.LASF83:
	.ascii	"_TNeoIPCCommand\000"
.LASF8:
	.ascii	"long long int\000"
.LASF27:
	.ascii	"TNeoIPCCommand\000"
.LASF15:
	.ascii	"bool\000"
.LASF38:
	.ascii	"Z80IY\000"
.LASF53:
	.ascii	"z80_in\000"
.LASF63:
	.ascii	"z80Ram\000"
.LASF41:
	.ascii	"Z80F2\000"
.LASF35:
	.ascii	"Z80PC_BASE\000"
.LASF20:
	.ascii	"NEOARM7_NMI\000"
.LASF77:
	.ascii	"data\000"
.LASF78:
	.ascii	"g_ipcState\000"
.LASF79:
	.ascii	"g_neo7\000"
.LASF2:
	.ascii	"short int\000"
.LASF13:
	.ascii	"false\000"
.LASF4:
	.ascii	"long int\000"
.LASF17:
	.ascii	"NEOARM7_RESET\000"
.LASF84:
	.ascii	"IPC_SendSync\000"
.LASF33:
	.ascii	"Z80HL\000"
.LASF23:
	.ascii	"NEOARM7_LIDCLOSE\000"
.LASF70:
	.ascii	"neoIPCRecvCommand\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF50:
	.ascii	"z80_irq_callback\000"
.LASF68:
	.ascii	"neoIPCCheckCommandDone\000"
.LASF44:
	.ascii	"Z80HL2\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF46:
	.ascii	"Z80IF\000"
.LASF62:
	.ascii	"z80MemTable\000"
.LASF47:
	.ascii	"Z80IM\000"
.LASF37:
	.ascii	"Z80IX\000"
.LASF42:
	.ascii	"Z80BC2\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF81:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm7/../common/source/Ne"
	.ascii	"oIPC.c\000"
.LASF71:
	.ascii	"processed\000"
.LASF66:
	.ascii	"command\000"
.LASF52:
	.ascii	"z80_write16\000"
.LASF64:
	.ascii	"TNeoContext7\000"
.LASF0:
	.ascii	"signed char\000"
.LASF29:
	.ascii	"Z80A\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF30:
	.ascii	"Z80F\000"
.LASF39:
	.ascii	"Z80I\000"
.LASF12:
	.ascii	"double\000"
.LASF58:
	.ascii	"z80_rebasePC\000"
.LASF21:
	.ascii	"NEOARM7_BACKLIGHTOFF\000"
.LASF76:
	.ascii	"neoIPCWaitCommand\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
