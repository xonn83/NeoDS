	.code	16
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
	.code 16
	.thumb_func
	.type	IPC_SendSync, %function
IPC_SendSync:
.LFB12:
	.file 1 "C:/devkitPro/libnds/include/nds/ipc.h"
	.loc 1 125 0
.LVL0:
	.loc 1 127 0
	ldr	r1, .L3
	mov	r3, #15
	ldrh	r2, [r1]
	and	r0, r0, r3
.LVL1:
	ldr	r3, .L3+4
	lsl	r0, r0, #8
	and	r2, r2, r3
	mov	r3, #128
	lsl	r3, r3, #6
	orr	r2, r2, r3
	orr	r0, r0, r2
	.loc 1 125 0
	@ lr needed for prologue
	.loc 1 127 0
	strh	r0, [r1]
	.loc 1 128 0
	@ sp needed for prologue
	bx	lr
.L4:
	.align	2
.L3:
	.word	67109248
	.word	-3841
.LFE12:
	.size	IPC_SendSync, .-IPC_SendSync
	.align	2
	.global	neoIPCInit
	.code 16
	.thumb_func
	.type	neoIPCInit, %function
neoIPCInit:
.LFB107:
	.file 2 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoIPC.c"
	.loc 2 34 0
	.loc 2 35 0
	ldr	r2, .L7
	ldr	r3, .L7+4
	.loc 2 36 0
	ldr	r1, .L7+8
	.loc 2 35 0
	strh	r2, [r3]
	.loc 2 36 0
	ldrh	r2, [r1]
	mov	r3, #128
	lsl	r3, r3, #7
	orr	r2, r2, r3
	.loc 2 34 0
	@ lr needed for prologue
	.loc 2 36 0
	strh	r2, [r1]
	.loc 2 37 0
	@ sp needed for prologue
	bx	lr
.L8:
	.align	2
.L7:
	.word	-16376
	.word	67109252
	.word	67109248
.LFE107:
	.size	neoIPCInit, .-neoIPCInit
	.align	2
	.global	neoIPCSendCommandAsync
	.code 16
	.thumb_func
	.type	neoIPCSendCommandAsync, %function
neoIPCSendCommandAsync:
.LFB108:
	.loc 2 40 0
	push	{lr}
.LCFI0:
.LVL2:
	sub	sp, sp, #4
.LCFI1:
.L11:
	.loc 2 42 0
	ldr	r3, .L16
	ldrh	r3, [r3]
	lsl	r2, r3, #30
	bmi	.L11
	.loc 2 44 0
	ldr	r3, .L16+4
	lsl	r2, r0, #24
	str	r2, [r3]
	.loc 2 45 0
	bl	IPC_SendSync
.LVL3:
	.loc 2 48 0
	ldr	r2, .L16+8
	.loc 2 55 0
	add	sp, sp, #4
	.loc 2 48 0
	ldr	r3, [r2, #12]
	.loc 2 55 0
	@ sp needed for prologue
	.loc 2 48 0
	add	r3, r3, #1
	str	r3, [r2, #12]
	.loc 2 50 0
	ldr	r0, [r2, #12]
	.loc 2 55 0
	pop	{pc}
.L17:
	.align	2
.L16:
	.word	67109252
	.word	67109256
	.word	41939968
.LFE108:
	.size	neoIPCSendCommandAsync, .-neoIPCSendCommandAsync
	.align	2
	.global	neoIPCCheckCommandDone
	.code 16
	.thumb_func
	.type	neoIPCCheckCommandDone, %function
neoIPCCheckCommandDone:
.LFB110:
	.loc 2 65 0
	push	{lr}
.LCFI2:
.LVL4:
	.loc 2 67 0
	ldr	r3, .L24
	.loc 2 65 0
	mov	r2, r0
	.loc 2 67 0
	ldr	r0, [r3, #24]
.LVL5:
	.loc 2 71 0
	cmp	r0, r2
	bcc	.L19
	mov	r0, #1
.LVL6:
	b	.L21
.LVL7:
.L19:
	ldr	r3, .L24+4
	sub	r2, r2, r0
.LVL8:
	mov	r1, #0
	cmp	r2, r3
	bls	.L22
	mov	r1, #1
.L22:
	mov	r0, r1
.LVL9:
.L21:
	.loc 2 79 0
	@ sp needed for prologue
	pop	{pc}
.L25:
	.align	2
.L24:
	.word	41939968
	.word	-2147483648
.LFE110:
	.size	neoIPCCheckCommandDone, .-neoIPCCheckCommandDone
	.align	2
	.global	neoIPCRecvCommand
	.code 16
	.thumb_func
	.type	neoIPCRecvCommand, %function
neoIPCRecvCommand:
.LFB112:
	.loc 2 99 0
	push	{lr}
.LCFI3:
	.loc 2 103 0
	ldr	r3, .L31
	ldrh	r3, [r3]
	lsl	r2, r3, #23
	bpl	.L27
	mov	r0, #0
.LVL10:
	b	.L29
.LVL11:
.L27:
	.loc 2 105 0
	mov	r3, #130
	lsl	r3, r3, #19
	.loc 2 106 0
	ldr	r2, .L31+4
	.loc 2 105 0
	ldr	r0, [r3]
.LVL12:
	.loc 2 106 0
	mov	r3, #1
	str	r3, [r2]
.L29:
.LVL13:
	.loc 2 110 0
	@ sp needed for prologue
	pop	{pc}
.L32:
	.align	2
.L31:
	.word	67109252
	.word	g_ipcState
.LFE112:
	.size	neoIPCRecvCommand, .-neoIPCRecvCommand
	.align	2
	.global	neoIPCAckCommand
	.code 16
	.thumb_func
	.type	neoIPCAckCommand, %function
neoIPCAckCommand:
.LFB114:
	.loc 2 143 0
	push	{lr}
.LCFI4:
	.loc 2 146 0
	ldr	r2, .L35
	.loc 2 143 0
	sub	sp, sp, #4
.LCFI5:
	.loc 2 146 0
	ldr	r3, [r2, #16]
	.loc 2 150 0
	mov	r0, #0
	.loc 2 146 0
	add	r3, r3, #1
	str	r3, [r2, #16]
	.loc 2 150 0
	bl	IPC_SendSync
	.loc 2 151 0
	ldr	r2, .L35+4
	mov	r3, #0
	.loc 2 152 0
	add	sp, sp, #4
	.loc 2 151 0
	str	r3, [r2]
	.loc 2 152 0
	@ sp needed for prologue
	pop	{pc}
.L36:
	.align	2
.L35:
	.word	41939968
	.word	g_ipcState
.LFE114:
	.size	neoIPCAckCommand, .-neoIPCAckCommand
	.align	2
	.code 16
	.thumb_func
	.type	neoIPCDelay, %function
neoIPCDelay:
.LFB106:
	.loc 2 29 0
	push	{lr}
.LCFI6:
	.loc 2 30 0
	mov	r1, #128
	.loc 2 29 0
	sub	sp, sp, #4
.LCFI7:
	.loc 2 30 0
	lsl	r1, r1, #9
	mov	r0, #0
	bl	swiIntrWait
	.loc 2 31 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE106:
	.size	neoIPCDelay, .-neoIPCDelay
	.align	2
	.global	neoIPCWaitCommandDone
	.code 16
	.thumb_func
	.type	neoIPCWaitCommandDone, %function
neoIPCWaitCommandDone:
.LFB111:
	.loc 2 82 0
	push	{r4, lr}
.LCFI8:
.LVL14:
	.loc 2 82 0
	mov	r4, r0
	b	.L40
.LVL15:
.L41:
	.loc 2 88 0
	bl	neoIPCDelay
.LVL16:
.L40:
	.loc 2 87 0
	mov	r0, r4
	bl	neoIPCCheckCommandDone
	cmp	r0, #0
	beq	.L41
	.loc 2 96 0
	@ sp needed for prologue
.LVL17:
	pop	{r4, pc}
.LFE111:
	.size	neoIPCWaitCommandDone, .-neoIPCWaitCommandDone
	.align	2
	.global	neoIPCSendCommand
	.code 16
	.thumb_func
	.type	neoIPCSendCommand, %function
neoIPCSendCommand:
.LFB109:
	.loc 2 58 0
	push	{lr}
.LCFI9:
.LVL18:
	sub	sp, sp, #4
.LCFI10:
	.loc 2 59 0
	bl	neoIPCSendCommandAsync
.LVL19:
	.loc 2 60 0
	bl	neoIPCWaitCommandDone
	.loc 2 61 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE109:
	.size	neoIPCSendCommand, .-neoIPCSendCommand
	.align	2
	.global	neoIPCWaitCommand
	.code 16
	.thumb_func
	.type	neoIPCWaitCommand, %function
neoIPCWaitCommand:
.LFB113:
	.loc 2 113 0
	push	{r4, lr}
.LCFI11:
.LVL20:
	mov	r4, r0
.LVL21:
.L47:
.LBB5:
.LBB6:
.LBB7:
	.loc 2 103 0
	ldr	r3, .L56
	ldrh	r3, [r3]
	lsl	r2, r3, #23
	bpl	.L48
	mov	r1, #0
.LVL22:
	b	.L50
.LVL23:
.L48:
	.loc 2 105 0
	mov	r3, #130
	lsl	r3, r3, #19
	.loc 2 106 0
	ldr	r2, .L56+4
	.loc 2 105 0
	ldr	r1, [r3]
.LVL24:
	.loc 2 106 0
	mov	r3, #1
	str	r3, [r2]
.L50:
.LBE7:
.LBE6:
	.loc 2 122 0
	lsr	r3, r1, #24
	cmp	r3, r4
	beq	.L51
	.loc 2 124 0
	cmp	r1, #0
	beq	.L53
	.loc 2 130 0
	bl	neoIPCAckCommand
.LVL25:
.L53:
	.loc 2 132 0
	bl	neoIPCDelay
.LVL26:
	b	.L47
.LVL27:
.L51:
.LBE5:
	.loc 2 140 0
	mov	r0, #0
	@ sp needed for prologue
.LVL28:
	pop	{r4, pc}
.L57:
	.align	2
.L56:
	.word	67109252
	.word	g_ipcState
.LFE113:
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
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x4
	.4byte	.LCFI0-.LFB108
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x4
	.4byte	.LCFI2-.LFB110
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI3-.LFB112
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.byte	0x4
	.4byte	.LCFI4-.LFB114
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x4
	.4byte	.LCFI6-.LFB106
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI8-.LFB111
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x4
	.4byte	.LCFI9-.LFB109
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.byte	0x4
	.4byte	.LCFI11-.LFB113
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE18:
	.file 3 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 4 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 5 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoIPC.h"
	.file 6 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 7 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.file 8 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
	.file 9 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h"
	.file 10 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h"
	.file 11 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h"
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
	.4byte	.LFB108-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE108-.Ltext0
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
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB110-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB112-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB114-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB106-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE106-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB109-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LFB113-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0xdd8
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF178
	.byte	0x1
	.4byte	.LASF179
	.4byte	.LASF180
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
	.4byte	0x106
	.byte	0x1
	.byte	0x3
	.byte	0x81
	.uleb128 0x7
	.4byte	.LASF17
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF18
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x81
	.4byte	0xf1
	.uleb128 0x8
	.byte	0x4
	.4byte	0x117
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.4byte	0x148
	.byte	0x1
	.byte	0x6
	.byte	0x9b
	.uleb128 0x7
	.4byte	.LASF21
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF22
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF23
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF24
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0xa0
	.4byte	0x127
	.uleb128 0xa
	.4byte	0x1cb
	.2byte	0x2018
	.byte	0x6
	.2byte	0x119
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x11a
	.4byte	0x148
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x11d
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x120
	.4byte	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x121
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x122
	.4byte	0x1dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x123
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x124
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.byte	0x0
	.uleb128 0xc
	.4byte	0x1dc
	.4byte	0xa2
	.uleb128 0xd
	.4byte	0x119
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa2
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x126
	.4byte	0x153
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc5
	.uleb128 0xf
	.4byte	0x243
	.4byte	.LASF181
	.byte	0x1
	.byte	0x5
	.byte	0x73
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF39
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF40
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF41
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF42
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF43
	.sleb128 10
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x5
	.byte	0x7e
	.4byte	0x1fa
	.uleb128 0x10
	.4byte	0x3e4
	.4byte	.LASF74
	.byte	0xb0
	.byte	0xa
	.byte	0x15
	.uleb128 0x11
	.ascii	"d\000"
	.byte	0xa
	.byte	0x16
	.4byte	0x3e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.ascii	"a\000"
	.byte	0xa
	.byte	0x17
	.4byte	0x3e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.ascii	"pc\000"
	.byte	0xa
	.byte	0x18
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.ascii	"srh\000"
	.byte	0xa
	.byte	0x19
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0xa
	.byte	0x1a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0xa
	.byte	0x1b
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x11
	.ascii	"irq\000"
	.byte	0xa
	.byte	0x1c
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x11
	.ascii	"osp\000"
	.byte	0xa
	.byte	0x1d
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.ascii	"xc\000"
	.byte	0xa
	.byte	0x1e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0xa
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0xa
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0xa
	.byte	0x21
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0xa
	.byte	0x22
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0xa
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0xa
	.byte	0x24
	.4byte	0x404
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0xa
	.byte	0x25
	.4byte	0x404
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0xa
	.byte	0x26
	.4byte	0x404
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0xa
	.byte	0x27
	.4byte	0x404
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0xa
	.byte	0x28
	.4byte	0x41b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0xa
	.byte	0x29
	.4byte	0x432
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0xa
	.byte	0x2a
	.4byte	0x449
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0xa
	.byte	0x2b
	.4byte	0x404
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0xa
	.byte	0x2c
	.4byte	0x404
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0xa
	.byte	0x2d
	.4byte	0x404
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0xa
	.byte	0x2e
	.4byte	0x45f
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0xa
	.byte	0x2f
	.4byte	0x111
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0xa
	.byte	0x30
	.4byte	0x46b
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0xa
	.byte	0x31
	.4byte	0x471
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xc
	.4byte	0x3f4
	.4byte	0x9b
	.uleb128 0x13
	.4byte	0x119
	.byte	0x7
	.byte	0x0
	.uleb128 0x14
	.4byte	0x404
	.byte	0x1
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3f4
	.uleb128 0x16
	.4byte	0x41b
	.byte	0x1
	.uleb128 0x15
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x37
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x40a
	.uleb128 0x16
	.4byte	0x432
	.byte	0x1
	.uleb128 0x15
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x421
	.uleb128 0x16
	.4byte	0x449
	.byte	0x1
	.uleb128 0x15
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x438
	.uleb128 0x14
	.4byte	0x45f
	.byte	0x1
	.4byte	0x94
	.uleb128 0x15
	.4byte	0x94
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x44f
	.uleb128 0x17
	.byte	0x1
	.4byte	0x94
	.uleb128 0x8
	.byte	0x4
	.4byte	0x465
	.uleb128 0xc
	.4byte	0x481
	.4byte	0x9b
	.uleb128 0x13
	.4byte	0x119
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x9
	.byte	0x6
	.4byte	0x24e
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x9
	.byte	0x8
	.4byte	0x497
	.uleb128 0x8
	.byte	0x4
	.4byte	0x49d
	.uleb128 0x14
	.4byte	0x4ad
	.byte	0x1
	.4byte	0xbb
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x9
	.byte	0x9
	.4byte	0x4b8
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4be
	.uleb128 0x14
	.4byte	0x4ce
	.byte	0x1
	.4byte	0xc5
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x9
	.byte	0xa
	.4byte	0x4d9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4df
	.uleb128 0x14
	.4byte	0x4ef
	.byte	0x1
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x9
	.byte	0xc
	.4byte	0x4fa
	.uleb128 0x8
	.byte	0x4
	.4byte	0x500
	.uleb128 0x16
	.4byte	0x511
	.byte	0x1
	.uleb128 0x15
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xbb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x9
	.byte	0xd
	.4byte	0x51c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x522
	.uleb128 0x16
	.4byte	0x533
	.byte	0x1
	.uleb128 0x15
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xc5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x9
	.byte	0xe
	.4byte	0x53e
	.uleb128 0x8
	.byte	0x4
	.4byte	0x544
	.uleb128 0x16
	.4byte	0x555
	.byte	0x1
	.uleb128 0x15
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x9
	.byte	0x10
	.4byte	0x4d9
	.uleb128 0x10
	.4byte	0x5a5
	.4byte	.LASF75
	.byte	0xc
	.byte	0xb
	.byte	0x17
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0xb
	.byte	0x18
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.ascii	"end\000"
	.byte	0xb
	.byte	0x19
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.ascii	"acc\000"
	.byte	0xb
	.byte	0x1a
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0xb
	.byte	0x1b
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0xb
	.byte	0x1c
	.4byte	0x560
	.uleb128 0x10
	.4byte	0x5e7
	.4byte	.LASF79
	.byte	0xc
	.byte	0xb
	.byte	0x1f
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0xb
	.byte	0x20
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0xb
	.byte	0x21
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0xb
	.byte	0x22
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0xb
	.byte	0x23
	.4byte	0x5b0
	.uleb128 0x18
	.4byte	0x9e0
	.2byte	0x248
	.byte	0x8
	.byte	0xc0
	.uleb128 0x11
	.ascii	"cpu\000"
	.byte	0x8
	.byte	0xc1
	.4byte	0x481
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x8
	.byte	0xc4
	.4byte	0x9e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x8
	.byte	0xc7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x8
	.byte	0xc8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x8
	.byte	0xcb
	.4byte	0x9f2
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0x8
	.byte	0xcc
	.4byte	0x5e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x12
	.4byte	.LASF89
	.byte	0x8
	.byte	0xcd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0x8
	.byte	0xd0
	.4byte	0x1ee
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x12
	.4byte	.LASF91
	.byte	0x8
	.byte	0xd1
	.4byte	0x1ee
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x12
	.4byte	.LASF92
	.byte	0x8
	.byte	0xd2
	.4byte	0x1ee
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x8
	.byte	0xd3
	.4byte	0x1ee
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x8
	.byte	0xd4
	.4byte	0x1ee
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x8
	.byte	0xd5
	.4byte	0x1ee
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x8
	.byte	0xd6
	.4byte	0x1f4
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x8
	.byte	0xd7
	.4byte	0x1f4
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x8
	.byte	0xd8
	.4byte	0x1f4
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x8
	.byte	0xda
	.4byte	0xa02
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x8
	.byte	0xdd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0x8
	.byte	0xde
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x8
	.byte	0xdf
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x12
	.4byte	.LASF103
	.byte	0x8
	.byte	0xe0
	.4byte	0xa13
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x12
	.4byte	.LASF104
	.byte	0x8
	.byte	0xe1
	.4byte	0xa13
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x12
	.4byte	.LASF105
	.byte	0x8
	.byte	0xe2
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x12
	.4byte	.LASF106
	.byte	0x8
	.byte	0xe5
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0x8
	.byte	0xe6
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x8
	.byte	0xe7
	.4byte	0x1f4
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x8
	.byte	0xe8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0x8
	.byte	0xea
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x12
	.4byte	.LASF111
	.byte	0x8
	.byte	0xeb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x12
	.4byte	.LASF112
	.byte	0x8
	.byte	0xec
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0x8
	.byte	0xed
	.4byte	0xa1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x8
	.byte	0xee
	.4byte	0x1f4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0x8
	.byte	0xf1
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x12
	.4byte	.LASF116
	.byte	0x8
	.byte	0xf2
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x12
	.4byte	.LASF117
	.byte	0x8
	.byte	0xf3
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x12
	.4byte	.LASF118
	.byte	0x8
	.byte	0xf4
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x12
	.4byte	.LASF119
	.byte	0x8
	.byte	0xf7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x12
	.4byte	.LASF120
	.byte	0x8
	.byte	0xf8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x12
	.4byte	.LASF121
	.byte	0x8
	.byte	0xf9
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x12
	.4byte	.LASF122
	.byte	0x8
	.byte	0xfa
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0x8
	.byte	0xfb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x12
	.4byte	.LASF124
	.byte	0x8
	.byte	0xfc
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0x8
	.byte	0xfd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x8
	.2byte	0x102
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x8
	.2byte	0x103
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x8
	.2byte	0x106
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x8
	.2byte	0x108
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x8
	.2byte	0x109
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x8
	.2byte	0x10a
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x8
	.2byte	0x10b
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x8
	.2byte	0x10d
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x8
	.2byte	0x10e
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x8
	.2byte	0x10f
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x8
	.2byte	0x110
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x8
	.2byte	0x111
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x8
	.2byte	0x114
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x8
	.2byte	0x115
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x8
	.2byte	0x116
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x8
	.2byte	0x117
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x8
	.2byte	0x118
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0x8
	.2byte	0x11b
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0x8
	.2byte	0x11c
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x8
	.2byte	0x11f
	.4byte	0xa2e
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0x8
	.2byte	0x122
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x8
	.2byte	0x123
	.4byte	0xa3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9f0
	.4byte	0x9f0
	.uleb128 0x13
	.4byte	0x119
	.byte	0x8
	.byte	0x0
	.uleb128 0x19
	.byte	0x4
	.uleb128 0xc
	.4byte	0xa02
	.4byte	0x5a5
	.uleb128 0x13
	.4byte	0x119
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa08
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa0e
	.uleb128 0x1a
	.4byte	0xbb
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa19
	.uleb128 0x1a
	.4byte	0xd0
	.uleb128 0xc
	.4byte	0xa2e
	.4byte	0xd0
	.uleb128 0x13
	.4byte	0x119
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa3e
	.4byte	0xbb
	.uleb128 0x13
	.4byte	0x119
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa4d
	.4byte	0xbb
	.uleb128 0x1b
	.4byte	0x119
	.byte	0x0
	.uleb128 0x1c
	.4byte	0xa68
	.2byte	0x400
	.byte	0x8
	.byte	0xbf
	.uleb128 0x1d
	.4byte	0x5f2
	.uleb128 0x1e
	.4byte	.LASF148
	.byte	0x8
	.2byte	0x125
	.4byte	0xa68
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa78
	.4byte	0xd0
	.uleb128 0x13
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0x1f
	.4byte	0xafe
	.4byte	.LASF149
	.2byte	0x2000
	.byte	0x8
	.byte	0xbe
	.uleb128 0x20
	.4byte	0xa4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0x8
	.2byte	0x128
	.4byte	0xafe
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x8
	.2byte	0x129
	.4byte	0xb0e
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0x8
	.2byte	0x12a
	.4byte	0xb1e
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0x8
	.2byte	0x12b
	.4byte	0xb2e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0x8
	.2byte	0x12c
	.4byte	0xb3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0x8
	.2byte	0x12d
	.4byte	0xb4e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0x8
	.2byte	0x12e
	.4byte	0xb5e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb0e
	.4byte	0x48c
	.uleb128 0x13
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb1e
	.4byte	0x4ad
	.uleb128 0x13
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb2e
	.4byte	0x4ce
	.uleb128 0x13
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb3e
	.4byte	0x4ef
	.uleb128 0x13
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb4e
	.4byte	0x511
	.uleb128 0x13
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb5e
	.4byte	0x533
	.uleb128 0x13
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb6e
	.4byte	0x555
	.uleb128 0x13
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF157
	.byte	0x8
	.2byte	0x12f
	.4byte	0xa78
	.uleb128 0x21
	.4byte	0xba0
	.4byte	.LASF182
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x5d
	.uleb128 0x22
	.4byte	.LASF158
	.byte	0x1
	.byte	0x7d
	.4byte	0x9b
	.4byte	.LLST1
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF165
	.byte	0x2
	.byte	0x22
	.4byte	.LFB107
	.4byte	.LFE107
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.4byte	0xbdf
	.byte	0x1
	.4byte	.LASF160
	.byte	0x2
	.byte	0x28
	.byte	0x1
	.4byte	0xd0
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LLST3
	.uleb128 0x22
	.4byte	.LASF159
	.byte	0x2
	.byte	0x27
	.4byte	0x243
	.4byte	.LLST4
	.byte	0x0
	.uleb128 0x24
	.4byte	0xc1b
	.byte	0x1
	.4byte	.LASF161
	.byte	0x2
	.byte	0x41
	.byte	0x1
	.4byte	0x106
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST5
	.uleb128 0x22
	.4byte	.LASF162
	.byte	0x2
	.byte	0x40
	.4byte	0xd0
	.4byte	.LLST6
	.uleb128 0x25
	.4byte	.LASF164
	.byte	0x2
	.byte	0x43
	.4byte	0xa19
	.4byte	.LLST7
	.byte	0x0
	.uleb128 0x26
	.4byte	0xc38
	.byte	0x1
	.4byte	.LASF163
	.byte	0x2
	.byte	0x63
	.4byte	0xd0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF159
	.byte	0x2
	.byte	0x66
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x28
	.4byte	0xc57
	.4byte	0xc1b
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST8
	.uleb128 0x29
	.4byte	0xc2c
	.4byte	.LLST9
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF166
	.byte	0x2
	.byte	0x8f
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LLST10
	.uleb128 0x2b
	.4byte	.LASF183
	.byte	0x2
	.byte	0x1d
	.4byte	.LFB106
	.4byte	.LFE106
	.4byte	.LLST11
	.uleb128 0x2c
	.4byte	0xca7
	.byte	0x1
	.4byte	.LASF167
	.byte	0x2
	.byte	0x52
	.byte	0x1
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST12
	.uleb128 0x22
	.4byte	.LASF162
	.byte	0x2
	.byte	0x51
	.4byte	0xd0
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x2c
	.4byte	0xcdd
	.byte	0x1
	.4byte	.LASF168
	.byte	0x2
	.byte	0x3a
	.byte	0x1
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LLST14
	.uleb128 0x22
	.4byte	.LASF159
	.byte	0x2
	.byte	0x39
	.4byte	0x243
	.4byte	.LLST15
	.uleb128 0x2d
	.4byte	.LASF162
	.byte	0x2
	.byte	0x3b
	.4byte	0xa19
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x24
	.4byte	0xd4d
	.byte	0x1
	.4byte	.LASF169
	.byte	0x2
	.byte	0x71
	.byte	0x1
	.4byte	0xd0
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST16
	.uleb128 0x22
	.4byte	.LASF159
	.byte	0x2
	.byte	0x70
	.4byte	0x243
	.4byte	.LLST17
	.uleb128 0x27
	.4byte	.LASF170
	.byte	0x2
	.byte	0x72
	.4byte	0xd0
	.uleb128 0x2e
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x25
	.4byte	.LASF170
	.byte	0x2
	.byte	0x79
	.4byte	0xd0
	.4byte	.LLST18
	.uleb128 0x2f
	.4byte	0xc1b
	.4byte	.LBB6
	.4byte	.LBE6
	.byte	0x2
	.byte	0x79
	.uleb128 0x2e
	.4byte	.LBB7
	.4byte	.LBE7
	.uleb128 0x30
	.4byte	0xc2c
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.4byte	.LASF171
	.byte	0x6
	.2byte	0x129
	.4byte	0xd59
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1e2
	.uleb128 0x2d
	.4byte	.LASF172
	.byte	0x2
	.byte	0x1a
	.4byte	0xd0
	.byte	0x5
	.byte	0x3
	.4byte	g_ipcState
	.uleb128 0xc
	.4byte	0xd7b
	.4byte	0x49
	.uleb128 0x32
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF173
	.byte	0x7
	.byte	0x2c
	.4byte	0xd70
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0xd93
	.4byte	0x49
	.uleb128 0x32
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF174
	.byte	0x7
	.byte	0x2d
	.4byte	0xd88
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0xdab
	.4byte	0x49
	.uleb128 0x32
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF175
	.byte	0x7
	.byte	0x2e
	.4byte	0xda0
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.4byte	.LASF176
	.byte	0x8
	.2byte	0x149
	.4byte	0xdc7
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb6e
	.uleb128 0x35
	.4byte	.LASF177
	.byte	0x8
	.2byte	0x14d
	.4byte	0xb6e
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0x6
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xce
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xddc
	.4byte	0xba0
	.ascii	"neoIPCInit\000"
	.4byte	0xbb2
	.ascii	"neoIPCSendCommandAsync\000"
	.4byte	0xbdf
	.ascii	"neoIPCCheckCommandDone\000"
	.4byte	0xc38
	.ascii	"neoIPCRecvCommand\000"
	.4byte	0xc57
	.ascii	"neoIPCAckCommand\000"
	.4byte	0xc7e
	.ascii	"neoIPCWaitCommandDone\000"
	.4byte	0xca7
	.ascii	"neoIPCSendCommand\000"
	.4byte	0xcdd
	.ascii	"neoIPCWaitCommand\000"
	.4byte	0xdb8
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
.LASF27:
	.ascii	"clearColor\000"
.LASF52:
	.ascii	"checkpc\000"
.LASF56:
	.ascii	"write8\000"
.LASF133:
	.ascii	"ctrl1Reg\000"
.LASF156:
	.ascii	"cpuCheckPcTable\000"
.LASF112:
	.ascii	"spriteMask\000"
.LASF135:
	.ascii	"ctrl3Reg\000"
.LASF153:
	.ascii	"cpuWrite8Table\000"
.LASF61:
	.ascii	"fetch32\000"
.LASF163:
	.ascii	"neoIPCRecvCommand\000"
.LASF120:
	.ascii	"cpuClocksPerScanline\000"
.LASF68:
	.ascii	"TRead16Func\000"
.LASF86:
	.ascii	"romBankCount\000"
.LASF115:
	.ascii	"tileOffsetX\000"
.LASF154:
	.ascii	"cpuWrite16Table\000"
.LASF44:
	.ascii	"TNeoIPCCommand\000"
.LASF14:
	.ascii	"uint32\000"
.LASF23:
	.ascii	"GL_MODELVIEW\000"
.LASF118:
	.ascii	"tileScaleY\000"
.LASF36:
	.ascii	"NEOARM7_RESUME\000"
.LASF24:
	.ascii	"GL_TEXTURE\000"
.LASF147:
	.ascii	"varEnd\000"
.LASF70:
	.ascii	"TWrite8Func\000"
.LASF53:
	.ascii	"read8\000"
.LASF57:
	.ascii	"write16\000"
.LASF67:
	.ascii	"TRead8Func\000"
.LASF176:
	.ascii	"g_neo\000"
.LASF114:
	.ascii	"pTileBuffer\000"
.LASF152:
	.ascii	"cpuRead32Table\000"
.LASF25:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF8:
	.ascii	"long int\000"
.LASF41:
	.ascii	"NEOARM7_LIDOPEN\000"
.LASF59:
	.ascii	"fetch8\000"
.LASF158:
	.ascii	"sync\000"
.LASF172:
	.ascii	"g_ipcState\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF145:
	.ascii	"keyGrid\000"
.LASF58:
	.ascii	"write32\000"
.LASF170:
	.ascii	"data\000"
.LASF62:
	.ascii	"IrqCallback\000"
.LASF73:
	.ascii	"TCheckPcFunc\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF125:
	.ascii	"romBankAddress\000"
.LASF175:
	.ascii	"TAN_bin\000"
.LASF77:
	.ascii	"step\000"
.LASF89:
	.ascii	"adpcmActive\000"
.LASF161:
	.ascii	"neoIPCCheckCommandDone\000"
.LASF169:
	.ascii	"neoIPCWaitCommand\000"
.LASF117:
	.ascii	"tileScaleX\000"
.LASF109:
	.ascii	"vramBaseMask\000"
.LASF182:
	.ascii	"IPC_SendSync\000"
.LASF85:
	.ascii	"spriteCount\000"
.LASF64:
	.ascii	"UnrecognizedCallback\000"
.LASF99:
	.ascii	"bankTable\000"
.LASF20:
	.ascii	"char\000"
.LASF138:
	.ascii	"irqVectorLatch\000"
.LASF34:
	.ascii	"NEOARM7_RESET\000"
.LASF139:
	.ascii	"screenDarkLatch\000"
.LASF47:
	.ascii	"prev_pc\000"
.LASF79:
	.ascii	"_TNeoADPCMBStream\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF166:
	.ascii	"neoIPCAckCommand\000"
.LASF46:
	.ascii	"flags\000"
.LASF16:
	.ascii	"double\000"
.LASF111:
	.ascii	"autoAnimationCounter\000"
.LASF28:
	.ascii	"textures\000"
.LASF22:
	.ascii	"GL_POSITION\000"
.LASF157:
	.ascii	"TNeoContext\000"
.LASF119:
	.ascii	"cpuClockDivide\000"
.LASF107:
	.ascii	"frameCount\000"
.LASF128:
	.ascii	"vramOffset\000"
.LASF84:
	.ascii	"pVideoWriteTable\000"
.LASF180:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF148:
	.ascii	"fill\000"
.LASF39:
	.ascii	"NEOARM7_BACKLIGHTON\000"
.LASF50:
	.ascii	"cycles\000"
.LASF155:
	.ascii	"cpuWrite32Table\000"
.LASF45:
	.ascii	"unused\000"
.LASF142:
	.ascii	"paletteRamLatch\000"
.LASF40:
	.ascii	"NEOARM7_LIDCLOSE\000"
.LASF93:
	.ascii	"pRam\000"
.LASF95:
	.ascii	"pCard\000"
.LASF110:
	.ascii	"displayCounter\000"
.LASF122:
	.ascii	"watchdogCounter\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF35:
	.ascii	"NEOARM7_PAUSE\000"
.LASF151:
	.ascii	"cpuRead16Table\000"
.LASF131:
	.ascii	"displayControlMask\000"
.LASF66:
	.ascii	"TCycloneContext\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF143:
	.ascii	"active\000"
.LASF74:
	.ascii	"Cyclone\000"
.LASF92:
	.ascii	"pBios\000"
.LASF113:
	.ascii	"paletteDirty\000"
.LASF174:
	.ascii	"SIN_bin\000"
.LASF26:
	.ascii	"matrixMode\000"
.LASF30:
	.ascii	"nextBlock\000"
.LASF150:
	.ascii	"cpuRead8Table\000"
.LASF105:
	.ascii	"smaRand\000"
.LASF75:
	.ascii	"_TNeoADPCMStream\000"
.LASF72:
	.ascii	"TWrite32Func\000"
.LASF11:
	.ascii	"long long int\000"
.LASF21:
	.ascii	"GL_PROJECTION\000"
.LASF137:
	.ascii	"coinReg\000"
.LASF80:
	.ascii	"initOffset\000"
.LASF173:
	.ascii	"COS_bin\000"
.LASF65:
	.ascii	"internal\000"
.LASF136:
	.ascii	"ctrl4Reg\000"
.LASF160:
	.ascii	"neoIPCSendCommandAsync\000"
.LASF100:
	.ascii	"smaAddr0\000"
.LASF101:
	.ascii	"smaAddr1\000"
.LASF43:
	.ascii	"NEOARM9_AUDIORESULT\000"
.LASF168:
	.ascii	"neoIPCSendCommand\000"
.LASF82:
	.ascii	"frequency\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF167:
	.ascii	"neoIPCWaitCommandDone\000"
.LASF130:
	.ascii	"displayControl\000"
.LASF103:
	.ascii	"smaBankoffset\000"
.LASF134:
	.ascii	"ctrl2Reg\000"
.LASF108:
	.ascii	"pVramBase\000"
.LASF76:
	.ascii	"offset\000"
.LASF90:
	.ascii	"pRom0\000"
.LASF116:
	.ascii	"tileOffsetY\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF183:
	.ascii	"neoIPCDelay\000"
.LASF19:
	.ascii	"bool\000"
.LASF29:
	.ascii	"activeTexture\000"
.LASF54:
	.ascii	"read16\000"
.LASF123:
	.ascii	"paletteBank\000"
.LASF51:
	.ascii	"membase\000"
.LASF178:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF106:
	.ascii	"scanline\000"
.LASF98:
	.ascii	"pPalette\000"
.LASF159:
	.ascii	"command\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF144:
	.ascii	"debug\000"
.LASF179:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/Ne"
	.ascii	"oIPC.c\000"
.LASF91:
	.ascii	"pRom1\000"
.LASF71:
	.ascii	"TWrite16Func\000"
.LASF55:
	.ascii	"read32\000"
.LASF88:
	.ascii	"adpcmb\000"
.LASF97:
	.ascii	"pSpriteRam\000"
.LASF63:
	.ascii	"ResetCallback\000"
.LASF141:
	.ascii	"sramProtectLatch\000"
.LASF124:
	.ascii	"fixedBank\000"
.LASF37:
	.ascii	"NEOARM7_NMI\000"
.LASF32:
	.ascii	"nameCount\000"
.LASF177:
	.ascii	"g_neoContext\000"
.LASF17:
	.ascii	"false\000"
.LASF49:
	.ascii	"state_flags\000"
.LASF127:
	.ascii	"sramProtection\000"
.LASF171:
	.ascii	"glGlob\000"
.LASF94:
	.ascii	"pSram\000"
.LASF81:
	.ascii	"freqCounter\000"
.LASF4:
	.ascii	"short int\000"
.LASF146:
	.ascii	"frameCounter\000"
.LASF165:
	.ascii	"neoIPCInit\000"
.LASF31:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF18:
	.ascii	"true\000"
.LASF132:
	.ascii	"displayCounterLoad\000"
.LASF121:
	.ascii	"irqPending\000"
.LASF96:
	.ascii	"pVram\000"
.LASF83:
	.ascii	"TNeoADPCMBStream\000"
.LASF69:
	.ascii	"TRead32Func\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF38:
	.ascii	"NEOARM7_BACKLIGHTOFF\000"
.LASF87:
	.ascii	"adpcm\000"
.LASF15:
	.ascii	"float\000"
.LASF33:
	.ascii	"gl_hidden_globals\000"
.LASF162:
	.ascii	"message\000"
.LASF164:
	.ascii	"processed\000"
.LASF102:
	.ascii	"smaBankAddr\000"
.LASF60:
	.ascii	"fetch16\000"
.LASF42:
	.ascii	"NEOARM9_READAUDIO\000"
.LASF149:
	.ascii	"_TNeoContext\000"
.LASF104:
	.ascii	"smaBankbit\000"
.LASF48:
	.ascii	"reserved\000"
.LASF140:
	.ascii	"fixedRomLatch\000"
.LASF126:
	.ascii	"sramProtectCount\000"
.LASF78:
	.ascii	"TNeoADPCMStream\000"
.LASF181:
	.ascii	"_TNeoIPCCommand\000"
.LASF129:
	.ascii	"vramMod\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
