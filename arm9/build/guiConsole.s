	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"guiConsole.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	guiConsoleLog
	.code	16
	.thumb_func
	.type	guiConsoleLog, %function
guiConsoleLog:
.LFB170:
	.file 1 "C:/Users/GRX/NeoDS/arm9/source/guiConsole.c"
	.loc 1 67 0
	push	{r4, r5, r6, lr}
.LCFI0:
.LVL0:
	.loc 1 67 0
	ldr	r5, .L14
.LBB7:
	.loc 1 69 0
	mov	r6, r5
.LBE7:
	.loc 1 67 0
	ldr	r3, [r5]
.LBB8:
	.loc 1 69 0
	add	r6, r6, #32
.LBE8:
	.loc 1 68 0
	b	.L12
.LVL1:
.L7:
.LBB9:
	.loc 1 69 0
	lsl	r2, r3, #5
	add	r2, r6, r2
.LVL2:
	mov	r4, #31
	.loc 1 72 0
	b	.L3
.L4:
	.loc 1 73 0
	strb	r1, [r2]
	add	r0, r0, #1
.LVL3:
	add	r2, r2, #1
	.loc 1 74 0
	sub	r4, r4, #1
.L3:
	.loc 1 72 0
	ldrb	r1, [r0]
	cmp	r4, #0
	ble	.L6
	cmp	r1, #0
	bne	.L4
	.loc 1 77 0
	strb	r1, [r2]
.L6:
	.loc 1 79 0
	add	r3, r3, #1
	.loc 1 80 0
	cmp	r3, #23
	bls	.L12
	mov	r3, #0
.L12:
.LBE9:
	.loc 1 68 0
	ldrb	r2, [r0]
.LVL4:
	cmp	r2, #0
	bne	.L7
	str	r3, [r5]
	.loc 1 84 0
	ldr	r3, .L14+4
	.loc 1 85 0
	@ sp needed for prologue
	.loc 1 84 0
	ldr	r2, [r3, #32]
	add	r2, r2, #1
	str	r2, [r3, #32]
.LVL5:
	.loc 1 85 0
	pop	{r4, r5, r6, pc}
.L15:
	.align	2
.L14:
	.word	.LANCHOR0
	.word	.LANCHOR1
.LFE170:
	.size	guiConsoleLog, .-guiConsoleLog
	.align	2
	.code	16
	.thumb_func
	.type	__TGuiConsoleTypeHandler__, %function
__TGuiConsoleTypeHandler__:
.LFB168:
	.loc 1 13 0
	push	{r4, r5, r6, lr}
.LCFI1:
.LVL6:
	sub	sp, sp, #24
.LCFI2:
	.loc 1 13 0
	mov	r5, r0
	cmp	r1, #5
	beq	.L18
.LVL7:
	cmp	r1, #6
	beq	.L19
	mov	r0, #1
.LVL8:
	b	.L20
.LVL9:
.L19:
.LBB10:
.LBB11:
.LBB12:
.LBB13:
	.file 2 "C:/Users/GRX/NeoDS/arm9/source/guiObject.h"
	.loc 2 105 0
	ldr	r2, [r0, #36]
.LVL10:
	ldr	r3, [r0, #28]
.LBE13:
.LBE12:
	.loc 1 22 0
	add	r4, sp, #8
.LBB15:
.LBB14:
	.loc 2 105 0
	sub	r3, r2, r3
	str	r3, [sp, #4]
.LBE14:
.LBE15:
	.loc 1 18 0
	ldr	r3, .L29
	.loc 1 22 0
	mov	r1, r4
.LVL11:
	.loc 1 18 0
	ldr	r6, [r3]
.LVL12:
	.loc 1 22 0
	bl	guiObjGetGlobalBounds
	.loc 1 23 0
	mov	r0, r4
	mov	r1, #0
	bl	guiRenderFrameBounds
	mov	r3, #0
.LVL13:
	.loc 1 24 0
	b	.L21
.L23:
	.loc 1 26 0
	sub	r6, r6, #1
	bpl	.L22
.LVL14:
	add	r6, r6, #24
.L22:
	.loc 1 24 0
	add	r3, r3, #1
.LVL15:
.L21:
	ldr	r2, [sp, #4]
	cmp	r3, r2
	blt	.L23
	mov	r5, #0
.LVL16:
	.loc 1 30 0
	add	r4, sp, #8
	b	.L24
.L26:
	ldr	r2, .L29+4
	ldr	r1, [r4, #4]
	lsl	r3, r6, #5
	add	r3, r2, r3
	ldr	r0, [r4]
	add	r1, r5, r1
	mov	r2, #31
	.loc 1 31 0
	add	r6, r6, #1
.LVL17:
	.loc 1 30 0
	bl	guiRenderStringn
	.loc 1 32 0
	cmp	r6, #23
	ble	.L25
	sub	r6, r6, #24
.L25:
	.loc 1 28 0
	add	r5, r5, #1
.LVL18:
.L24:
	ldr	r3, [sp, #4]
	cmp	r5, r3
	blt	.L26
	b	.L27
.LVL19:
.L18:
.LBE11:
.LBE10:
.LBB16:
	.loc 1 39 0
	ldr	r4, .L29+8
	ldr	r2, [r0, #40]
.LVL20:
	ldr	r3, [r4, #32]
	cmp	r2, r3
	beq	.L27
.LVL21:
	.loc 1 40 0
	bl	guiObjRenderDirty
.LVL22:
	.loc 1 41 0
	ldr	r3, [r4, #32]
	str	r3, [r5, #40]
.LVL23:
.L27:
	mov	r0, #0
.LVL24:
.L20:
.LBE16:
	.loc 1 46 0
	add	sp, sp, #24
.LVL25:
	@ sp needed for prologue
.LVL26:
.LVL27:
	pop	{r4, r5, r6, pc}
.L30:
	.align	2
.L29:
	.word	.LANCHOR0
	.word	.LANCHOR0+32
	.word	.LANCHOR1
.LFE168:
	.size	__TGuiConsoleTypeHandler__, .-__TGuiConsoleTypeHandler__
	.align	2
	.global	guiConsoleLogfv
	.code	16
	.thumb_func
	.type	guiConsoleLogfv, %function
guiConsoleLogfv:
.LFB171:
	.loc 1 90 0
	push	{r4, lr}
.LCFI3:
.LVL28:
	sub	sp, sp, #64
.LCFI4:
	.loc 1 90 0
	mov	r2, r0
	mov	r3, r1
	.loc 1 93 0
	mov	r0, sp
.LVL29:
	mov	r1, #64
.LVL30:
	bl	neoVsnprintf
.LVL31:
	.loc 1 94 0
	mov	r0, sp
	bl	guiConsoleLog
	.loc 1 95 0
	add	sp, sp, #64
	@ sp needed for prologue
	pop	{r4, pc}
.LFE171:
	.size	guiConsoleLogfv, .-guiConsoleLogfv
	.align	2
	.global	guiConsoleLogf
	.code	16
	.thumb_func
	.type	guiConsoleLogf, %function
guiConsoleLogf:
.LFB172:
	.loc 1 98 0
	push	{r0, r1, r2, r3}
.LCFI5:
	push	{lr}
.LCFI6:
.LVL32:
	sub	sp, sp, #12
.LCFI7:
	.loc 1 98 0
	add	r1, sp, #16
	ldmia	r1!, {r0}
	.loc 1 100 0
	str	r1, [sp, #4]
	.loc 1 101 0
	bl	guiConsoleLogfv
	.loc 1 103 0
	add	sp, sp, #12
	@ sp needed for prologue
	pop	{r3}
	add	sp, sp, #16
	bx	r3
.LFE172:
	.size	guiConsoleLogf, .-guiConsoleLogf
	.align	2
	.global	guiConsoleDump
	.code	16
	.thumb_func
	.type	guiConsoleDump, %function
guiConsoleDump:
.LFB169:
	.loc 1 49 0
	push	{r4, r5, r6, lr}
.LCFI8:
	.loc 1 50 0
	ldr	r3, .L43
	ldr	r4, [r3]
.LVL33:
	.loc 1 53 0
	bl	guiRenderClear
	mov	r3, #0
.LVL34:
.L37:
	.loc 1 57 0
	sub	r4, r4, #1
	bpl	.L36
	add	r4, r4, #24
.L36:
	.loc 1 55 0
	add	r3, r3, #1
	cmp	r3, #23
	bne	.L37
	.loc 1 60 0
	ldr	r6, .L43
	.loc 1 55 0
	mov	r5, #0
.LVL35:
	.loc 1 60 0
	add	r6, r6, #32
.L39:
	lsl	r3, r4, #5
	add	r3, r6, r3
	mov	r0, #0
	mov	r1, r5
	mov	r2, #31
	.loc 1 61 0
	add	r4, r4, #1
	.loc 1 60 0
	bl	guiRenderStringn
	.loc 1 62 0
	cmp	r4, #23
	ble	.L38
	sub	r4, r4, #24
.L38:
	.loc 1 59 0
	add	r5, r5, #1
	cmp	r5, #23
	bne	.L39
	.loc 1 64 0
	@ sp needed for prologue
.LVL36:
.LVL37:
	pop	{r4, r5, r6, pc}
.L44:
	.align	2
.L43:
	.word	.LANCHOR0
.LFE169:
	.size	guiConsoleDump, .-guiConsoleDump
	.global	__TGuiConsoleTypeHeader__
	.section	.rodata
	.align	2
	.type	__TGuiConsoleTypeHeader__, %object
	.size	__TGuiConsoleTypeHeader__, 16
__TGuiConsoleTypeHeader__:
	.word	__TGuiConsoleTypeHandler__
	.word	__TGuiObjectTypeHeader__
	.word	44
	.word	.LC10
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC10:
	.ascii	"TGuiConsole\000"
	.bss
	.align	5
	.set	.LANCHOR0,. + 0
	.set	.LANCHOR1,. + 768
	.type	g_line, %object
	.size	g_line, 4
g_line:
	.space	4
	.space	28
	.type	g_log, %object
	.size	g_log, 768
g_log:
	.space	768
	.type	g_logCount, %object
	.size	g_logCount, 4
g_logCount:
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
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.byte	0x4
	.4byte	.LCFI1-.LFB168
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
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.byte	0x4
	.4byte	.LCFI3-.LFB171
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x48
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.byte	0x4
	.4byte	.LCFI5-.LFB172
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x14
	.byte	0x11
	.uleb128 0xe
	.sleb128 5
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.byte	0x4
	.4byte	.LCFI8-.LFB169
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
	.align	2
.LEFDE8:
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
	.4byte	.LFE170-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB168-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB171-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 72
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB172-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB169-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE169-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 5 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 6 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 7 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 8 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 9 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stdarg.h"
	.file 10 "C:/Users/GRX/NeoDS/arm9/source/Default.h"
	.file 11 "C:/Users/GRX/NeoDS/arm9/include/cyclone.h"
	.file 12 "C:/Users/GRX/NeoDS/arm9/include/NeoCpu.h"
	.file 13 "C:/Users/GRX/NeoDS/arm9/../common/source/NeoAudioStream.h"
	.file 14 "C:/Users/GRX/NeoDS/arm9/include/NeoSystem.h"
	.file 15 "C:/Users/GRX/NeoDS/arm9/source/guiEvent.h"
	.file 16 "C:/Users/GRX/NeoDS/arm9/source/guiRender.h"
	.file 17 "C:/Users/GRX/NeoDS/arm9/source/guiConsole.h"
	.file 18 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.section	.debug_info
	.4byte	0x1313
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF263
	.byte	0x1
	.4byte	.LASF264
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
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x5
	.2byte	0x18c
	.4byte	0x1d6
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x18d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x18e
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x18f
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x190
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x191
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x192
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x193
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x194
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x195
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x196
	.4byte	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x198
	.4byte	0x132
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x8
	.byte	0x6
	.byte	0x29
	.4byte	0x20b
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x6
	.byte	0x2a
	.4byte	0x20b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x6
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
	.byte	0x6
	.byte	0x2c
	.4byte	0x1e2
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
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
	.byte	0x7
	.byte	0xa1
	.4byte	0x21c
	.uleb128 0x12
	.4byte	.LASF40
	.2byte	0x2020
	.byte	0x7
	.2byte	0x11a
	.4byte	0x2d4
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x7
	.2byte	0x11b
	.4byte	0x23d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x7
	.2byte	0x11e
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x7
	.2byte	0x121
	.4byte	0x2d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x7
	.2byte	0x122
	.4byte	0x211
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x7
	.2byte	0x123
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x7
	.2byte	0x124
	.4byte	0x2e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x7
	.2byte	0x125
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x8
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
	.byte	0x8
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
	.byte	0x8
	.byte	0x72
	.4byte	0x37b
	.uleb128 0x7
	.4byte	.LASF61
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF62
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x9
	.byte	0x28
	.4byte	0x386
	.uleb128 0x15
	.4byte	.LASF265
	.byte	0x4
	.4byte	0x39e
	.uleb128 0x16
	.4byte	.LASF181
	.4byte	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x9
	.byte	0x66
	.4byte	0x37b
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x8
	.byte	0xa
	.byte	0xd
	.4byte	0x3ce
	.uleb128 0x17
	.ascii	"x\000"
	.byte	0xa
	.byte	0xe
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.ascii	"y\000"
	.byte	0xa
	.byte	0xf
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xa
	.byte	0x10
	.4byte	0x3a9
	.uleb128 0x18
	.byte	0x10
	.byte	0xa
	.byte	0x13
	.4byte	0x416
	.uleb128 0x17
	.ascii	"x0\000"
	.byte	0xa
	.byte	0x14
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.ascii	"y0\000"
	.byte	0xa
	.byte	0x15
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.ascii	"x1\000"
	.byte	0xa
	.byte	0x16
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.ascii	"y1\000"
	.byte	0xa
	.byte	0x17
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x18
	.byte	0x10
	.byte	0xa
	.byte	0x19
	.4byte	0x439
	.uleb128 0x17
	.ascii	"p0\000"
	.byte	0xa
	.byte	0x1a
	.4byte	0x3ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.ascii	"p1\000"
	.byte	0xa
	.byte	0x1b
	.4byte	0x3ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF266
	.byte	0x10
	.byte	0xa
	.byte	0x12
	.4byte	0x450
	.uleb128 0x1a
	.4byte	0x3d9
	.uleb128 0x1a
	.4byte	0x416
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xa
	.byte	0x1d
	.4byte	0x439
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0xb0
	.byte	0xb
	.byte	0x15
	.4byte	0x5f1
	.uleb128 0x17
	.ascii	"d\000"
	.byte	0xb
	.byte	0x16
	.4byte	0x5f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.ascii	"a\000"
	.byte	0xb
	.byte	0x17
	.4byte	0x5f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.ascii	"pc\000"
	.byte	0xb
	.byte	0x18
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x17
	.ascii	"srh\000"
	.byte	0xb
	.byte	0x19
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0xb
	.byte	0x1a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0xb
	.byte	0x1b
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x17
	.ascii	"irq\000"
	.byte	0xb
	.byte	0x1c
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x17
	.ascii	"osp\000"
	.byte	0xb
	.byte	0x1d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x17
	.ascii	"xc\000"
	.byte	0xb
	.byte	0x1e
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0xb
	.byte	0x1f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0xb
	.byte	0x20
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0xb
	.byte	0x21
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0xb
	.byte	0x22
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0xb
	.byte	0x23
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0xb
	.byte	0x24
	.4byte	0x611
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0xb
	.byte	0x25
	.4byte	0x611
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0xb
	.byte	0x26
	.4byte	0x611
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0xb
	.byte	0x27
	.4byte	0x611
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0xb
	.byte	0x28
	.4byte	0x628
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0xb
	.byte	0x29
	.4byte	0x63f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0xb
	.byte	0x2a
	.4byte	0x656
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0xb
	.byte	0x2b
	.4byte	0x611
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0xb
	.byte	0x2c
	.4byte	0x611
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x11
	.4byte	.LASF85
	.byte	0xb
	.byte	0x2d
	.4byte	0x611
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0xb
	.byte	0x2e
	.4byte	0x66c
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0xb
	.byte	0x2f
	.4byte	0xff
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF88
	.byte	0xb
	.byte	0x30
	.4byte	0x678
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0xb
	.byte	0x31
	.4byte	0x67e
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x13
	.4byte	0x7b
	.4byte	0x601
	.uleb128 0x1b
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	0x7b
	.4byte	0x611
	.uleb128 0x1d
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x601
	.uleb128 0x1e
	.byte	0x1
	.4byte	0x628
	.uleb128 0x1d
	.4byte	0x7b
	.uleb128 0x1d
	.4byte	0x33
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x617
	.uleb128 0x1e
	.byte	0x1
	.4byte	0x63f
	.uleb128 0x1d
	.4byte	0x7b
	.uleb128 0x1d
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x62e
	.uleb128 0x1e
	.byte	0x1
	.4byte	0x656
	.uleb128 0x1d
	.4byte	0x7b
	.uleb128 0x1d
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x645
	.uleb128 0x1c
	.byte	0x1
	.4byte	0x69
	.4byte	0x66c
	.uleb128 0x1d
	.4byte	0x69
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x65c
	.uleb128 0x1f
	.byte	0x1
	.4byte	0x69
	.uleb128 0x8
	.byte	0x4
	.4byte	0x672
	.uleb128 0x13
	.4byte	0x7b
	.4byte	0x68e
	.uleb128 0x1b
	.4byte	0x107
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0xc
	.byte	0x6
	.4byte	0x45b
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0xc
	.byte	0x8
	.4byte	0x6a4
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6aa
	.uleb128 0x1c
	.byte	0x1
	.4byte	0xa9
	.4byte	0x6ba
	.uleb128 0x1d
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0xc
	.byte	0x9
	.4byte	0x6c5
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6cb
	.uleb128 0x1c
	.byte	0x1
	.4byte	0xb3
	.4byte	0x6db
	.uleb128 0x1d
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xc
	.byte	0xa
	.4byte	0x6e6
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6ec
	.uleb128 0x1c
	.byte	0x1
	.4byte	0xbe
	.4byte	0x6fc
	.uleb128 0x1d
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0xc
	.byte	0xc
	.4byte	0x707
	.uleb128 0x8
	.byte	0x4
	.4byte	0x70d
	.uleb128 0x1e
	.byte	0x1
	.4byte	0x71e
	.uleb128 0x1d
	.4byte	0xbe
	.uleb128 0x1d
	.4byte	0xa9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0xc
	.byte	0xd
	.4byte	0x729
	.uleb128 0x8
	.byte	0x4
	.4byte	0x72f
	.uleb128 0x1e
	.byte	0x1
	.4byte	0x740
	.uleb128 0x1d
	.4byte	0xbe
	.uleb128 0x1d
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xc
	.byte	0xe
	.4byte	0x74b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x751
	.uleb128 0x1e
	.byte	0x1
	.4byte	0x762
	.uleb128 0x1d
	.4byte	0xbe
	.uleb128 0x1d
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0xc
	.byte	0x10
	.4byte	0x6e6
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0xc
	.byte	0xd
	.byte	0x17
	.4byte	0x7b2
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0xd
	.byte	0x18
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.ascii	"end\000"
	.byte	0xd
	.byte	0x19
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.ascii	"acc\000"
	.byte	0xd
	.byte	0x1a
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF100
	.byte	0xd
	.byte	0x1b
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0xd
	.byte	0x1c
	.4byte	0x76d
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0xc
	.byte	0xd
	.byte	0x1f
	.4byte	0x7f4
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0xd
	.byte	0x20
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0xd
	.byte	0x21
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0xd
	.byte	0x22
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0xd
	.byte	0x23
	.4byte	0x7bd
	.uleb128 0x20
	.4byte	.LASF192
	.byte	0x1
	.byte	0xe
	.byte	0x99
	.4byte	0x848
	.uleb128 0x7
	.4byte	.LASF107
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF108
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF109
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF110
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF111
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF112
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF113
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF114
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF115
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF116
	.sleb128 9
	.byte	0x0
	.uleb128 0x21
	.2byte	0x248
	.byte	0xe
	.byte	0xc0
	.4byte	0xc36
	.uleb128 0x17
	.ascii	"cpu\000"
	.byte	0xe
	.byte	0xc1
	.4byte	0x68e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0xe
	.byte	0xc4
	.4byte	0xc36
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0xe
	.byte	0xc7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0xe
	.byte	0xc8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0xe
	.byte	0xcb
	.4byte	0xc46
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0xe
	.byte	0xcc
	.4byte	0x7f4
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0xe
	.byte	0xcd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0xe
	.byte	0xd0
	.4byte	0x2fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0xe
	.byte	0xd1
	.4byte	0x2fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0xe
	.byte	0xd2
	.4byte	0x2fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x11
	.4byte	.LASF126
	.byte	0xe
	.byte	0xd3
	.4byte	0x2fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0xe
	.byte	0xd4
	.4byte	0x2fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x11
	.4byte	.LASF128
	.byte	0xe
	.byte	0xd5
	.4byte	0x2fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0xe
	.byte	0xd6
	.4byte	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0xe
	.byte	0xd7
	.4byte	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0xe
	.byte	0xd8
	.4byte	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0xe
	.byte	0xda
	.4byte	0xc56
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0xe
	.byte	0xdd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0xe
	.byte	0xde
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0xe
	.byte	0xdf
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0xe
	.byte	0xe0
	.4byte	0xc67
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0xe
	.byte	0xe1
	.4byte	0xc67
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xe
	.byte	0xe2
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0xe
	.byte	0xe5
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0xe
	.byte	0xe6
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0xe
	.byte	0xe7
	.4byte	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0xe
	.byte	0xe8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0xe
	.byte	0xea
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0xe
	.byte	0xeb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0xe
	.byte	0xec
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0xe
	.byte	0xed
	.4byte	0xc72
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0xe
	.byte	0xee
	.4byte	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0xe
	.byte	0xf1
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0xe
	.byte	0xf2
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0xe
	.byte	0xf3
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xe
	.byte	0xf4
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x11
	.4byte	.LASF152
	.byte	0xe
	.byte	0xf7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0xe
	.byte	0xf8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x11
	.4byte	.LASF154
	.byte	0xe
	.byte	0xf9
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x11
	.4byte	.LASF155
	.byte	0xe
	.byte	0xfa
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0xe
	.byte	0xfb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0xe
	.byte	0xfc
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0xe
	.byte	0xfd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xe
	.4byte	.LASF159
	.byte	0xe
	.2byte	0x102
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xe
	.4byte	.LASF160
	.byte	0xe
	.2byte	0x103
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xe
	.4byte	.LASF161
	.byte	0xe
	.2byte	0x106
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xe
	.4byte	.LASF162
	.byte	0xe
	.2byte	0x108
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xe
	.4byte	.LASF163
	.byte	0xe
	.2byte	0x109
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xe
	.4byte	.LASF164
	.byte	0xe
	.2byte	0x10a
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xe
	.4byte	.LASF165
	.byte	0xe
	.2byte	0x10b
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xe
	.4byte	.LASF166
	.byte	0xe
	.2byte	0x10d
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xe
	.4byte	.LASF167
	.byte	0xe
	.2byte	0x10e
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xe
	.4byte	.LASF168
	.byte	0xe
	.2byte	0x10f
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xe
	.4byte	.LASF169
	.byte	0xe
	.2byte	0x110
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xe
	.4byte	.LASF170
	.byte	0xe
	.2byte	0x111
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xe
	.4byte	.LASF171
	.byte	0xe
	.2byte	0x114
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xe
	.4byte	.LASF172
	.byte	0xe
	.2byte	0x115
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xe
	.4byte	.LASF173
	.byte	0xe
	.2byte	0x116
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xe
	.4byte	.LASF174
	.byte	0xe
	.2byte	0x117
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xe
	.4byte	.LASF175
	.byte	0xe
	.2byte	0x118
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xe
	.4byte	.LASF176
	.byte	0xe
	.2byte	0x11b
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xe
	.4byte	.LASF177
	.byte	0xe
	.2byte	0x11c
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xe
	.4byte	.LASF178
	.byte	0xe
	.2byte	0x11f
	.4byte	0xc82
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xe
	.4byte	.LASF179
	.byte	0xe
	.2byte	0x122
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xe
	.4byte	.LASF180
	.byte	0xe
	.2byte	0x123
	.4byte	0xc92
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0x13
	.4byte	0x11e
	.4byte	0xc46
	.uleb128 0x1b
	.4byte	0x107
	.byte	0x8
	.byte	0x0
	.uleb128 0x13
	.4byte	0x7b2
	.4byte	0xc56
	.uleb128 0x1b
	.4byte	0x107
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc5c
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc62
	.uleb128 0xc
	.4byte	0xa9
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc6d
	.uleb128 0xc
	.4byte	0xbe
	.uleb128 0x13
	.4byte	0xbe
	.4byte	0xc82
	.uleb128 0x1b
	.4byte	0x107
	.byte	0xf
	.byte	0x0
	.uleb128 0x13
	.4byte	0xa9
	.4byte	0xc92
	.uleb128 0x1b
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x13
	.4byte	0xa9
	.4byte	0xca1
	.uleb128 0x22
	.4byte	0x107
	.byte	0x0
	.uleb128 0x23
	.2byte	0x400
	.byte	0xe
	.byte	0xbf
	.4byte	0xcbc
	.uleb128 0x1a
	.4byte	0x848
	.uleb128 0x24
	.4byte	.LASF182
	.byte	0xe
	.2byte	0x125
	.4byte	0xcbc
	.byte	0x0
	.uleb128 0x13
	.4byte	0xbe
	.4byte	0xccc
	.uleb128 0x1b
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x25
	.4byte	.LASF183
	.2byte	0x2000
	.byte	0xe
	.byte	0xbe
	.4byte	0xd52
	.uleb128 0x26
	.4byte	0xca1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF184
	.byte	0xe
	.2byte	0x128
	.4byte	0xd52
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xe
	.4byte	.LASF185
	.byte	0xe
	.2byte	0x129
	.4byte	0xd62
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xe
	.4byte	.LASF186
	.byte	0xe
	.2byte	0x12a
	.4byte	0xd72
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xe
	.4byte	.LASF187
	.byte	0xe
	.2byte	0x12b
	.4byte	0xd82
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xe
	.4byte	.LASF188
	.byte	0xe
	.2byte	0x12c
	.4byte	0xd92
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xe
	.4byte	.LASF189
	.byte	0xe
	.2byte	0x12d
	.4byte	0xda2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xe
	.4byte	.LASF190
	.byte	0xe
	.2byte	0x12e
	.4byte	0xdb2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0x13
	.4byte	0x699
	.4byte	0xd62
	.uleb128 0x1b
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x6ba
	.4byte	0xd72
	.uleb128 0x1b
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x6db
	.4byte	0xd82
	.uleb128 0x1b
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x6fc
	.4byte	0xd92
	.uleb128 0x1b
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x71e
	.4byte	0xda2
	.uleb128 0x1b
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x740
	.4byte	0xdb2
	.uleb128 0x1b
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x762
	.4byte	0xdc2
	.uleb128 0x1b
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF191
	.byte	0xe
	.2byte	0x12f
	.4byte	0xccc
	.uleb128 0x20
	.4byte	.LASF193
	.byte	0x1
	.byte	0xf
	.byte	0x4
	.4byte	0xe2f
	.uleb128 0x7
	.4byte	.LASF194
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF195
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF196
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF197
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF198
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF199
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF200
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF201
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF202
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF203
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF204
	.sleb128 10
	.uleb128 0x7
	.4byte	.LASF205
	.sleb128 11
	.uleb128 0x7
	.4byte	.LASF206
	.sleb128 12
	.uleb128 0x7
	.4byte	.LASF207
	.sleb128 13
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF208
	.byte	0xf
	.byte	0x17
	.4byte	0xdce
	.uleb128 0x20
	.4byte	.LASF209
	.byte	0x1
	.byte	0xf
	.byte	0x19
	.4byte	0xe53
	.uleb128 0x7
	.4byte	.LASF210
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF211
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF212
	.byte	0xf
	.byte	0x1c
	.4byte	0xe3a
	.uleb128 0x3
	.4byte	.LASF213
	.byte	0xf
	.byte	0x2c
	.4byte	0x11e
	.uleb128 0x3
	.4byte	.LASF214
	.byte	0xf
	.byte	0x2d
	.4byte	0x11e
	.uleb128 0x3
	.4byte	.LASF215
	.byte	0x2
	.byte	0xc
	.4byte	0xe7f
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe85
	.uleb128 0x1c
	.byte	0x1
	.4byte	0xe53
	.4byte	0xe9f
	.uleb128 0x1d
	.4byte	0xe9f
	.uleb128 0x1d
	.4byte	0xe2f
	.uleb128 0x1d
	.4byte	0x11e
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xea5
	.uleb128 0x10
	.4byte	.LASF216
	.byte	0x28
	.byte	0x2
	.byte	0x8
	.4byte	0xf14
	.uleb128 0x11
	.4byte	.LASF217
	.byte	0x2
	.byte	0x1b
	.4byte	0xf73
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF218
	.byte	0x2
	.byte	0x1c
	.4byte	0xe9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF219
	.byte	0x2
	.byte	0x1d
	.4byte	0xe9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF220
	.byte	0x2
	.byte	0x1e
	.4byte	0xe9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF221
	.byte	0x2
	.byte	0x1f
	.4byte	0xe74
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x2
	.byte	0x20
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF222
	.byte	0x2
	.byte	0x21
	.4byte	0x450
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF223
	.byte	0x10
	.byte	0x2
	.byte	0xe
	.4byte	0xf59
	.uleb128 0x11
	.4byte	.LASF221
	.byte	0x2
	.byte	0xf
	.4byte	0xe74
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF218
	.byte	0x2
	.byte	0x10
	.4byte	0xf59
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x2
	.byte	0x11
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF224
	.byte	0x2
	.byte	0x12
	.4byte	0x127
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf5f
	.uleb128 0x27
	.4byte	.LASF223
	.4byte	0xf14
	.uleb128 0x3
	.4byte	.LASF225
	.byte	0x2
	.byte	0x13
	.4byte	0xf14
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf79
	.uleb128 0xc
	.4byte	0xf68
	.uleb128 0x3
	.4byte	.LASF226
	.byte	0x2
	.byte	0x22
	.4byte	0xea5
	.uleb128 0x20
	.4byte	.LASF227
	.byte	0x1
	.byte	0x10
	.byte	0x7
	.4byte	0xfae
	.uleb128 0x7
	.4byte	.LASF228
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF229
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF230
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF231
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF232
	.byte	0x11
	.byte	0x6
	.4byte	0xfb9
	.uleb128 0x10
	.4byte	.LASF233
	.byte	0x2c
	.byte	0x11
	.byte	0x6
	.4byte	0xfe2
	.uleb128 0x11
	.4byte	.LASF234
	.byte	0x11
	.byte	0x6
	.4byte	0xf7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF235
	.byte	0x11
	.byte	0x7
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x28
	.4byte	.LASF267
	.byte	0x2
	.byte	0x68
	.byte	0x1
	.4byte	0xd4
	.byte	0x3
	.4byte	0xfff
	.uleb128 0x29
	.4byte	.LASF242
	.byte	0x2
	.byte	0x68
	.4byte	0xfff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1005
	.uleb128 0xc
	.4byte	0xf7e
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF245
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.4byte	.LFB170
	.4byte	.LFE170
	.4byte	.LLST0
	.4byte	0x1055
	.uleb128 0x2b
	.4byte	.LASF238
	.byte	0x1
	.byte	0x42
	.4byte	0x127
	.byte	0x1
	.byte	0x50
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x2d
	.4byte	.LASF236
	.byte	0x1
	.byte	0x45
	.4byte	0x111
	.4byte	.LLST1
	.uleb128 0x2d
	.4byte	.LASF237
	.byte	0x1
	.byte	0x46
	.4byte	0xd4
	.4byte	.LLST2
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.4byte	.LASF268
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.4byte	0xe53
	.4byte	.LFB168
	.4byte	.LFE168
	.4byte	.LLST3
	.4byte	0x1139
	.uleb128 0x2f
	.4byte	.LASF239
	.byte	0x1
	.byte	0xd
	.4byte	0xe9f
	.4byte	.LLST4
	.uleb128 0x30
	.ascii	"e\000"
	.byte	0x1
	.byte	0xd
	.4byte	0xe2f
	.4byte	.LLST5
	.uleb128 0x2f
	.4byte	.LASF240
	.byte	0x1
	.byte	0xd
	.4byte	0x11e
	.4byte	.LLST6
	.uleb128 0x31
	.4byte	.LASF242
	.byte	0x1
	.byte	0xd
	.4byte	0x1139
	.uleb128 0x2d
	.4byte	.LASF241
	.byte	0x1
	.byte	0xd
	.4byte	0xe53
	.4byte	.LLST7
	.uleb128 0x32
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0x1123
	.uleb128 0x33
	.ascii	"arg\000"
	.byte	0x1
	.byte	0xf
	.4byte	0x113f
	.uleb128 0x34
	.4byte	.LBB11
	.4byte	.LBE11
	.uleb128 0x31
	.4byte	.LASF243
	.byte	0x1
	.byte	0x11
	.4byte	0x1145
	.uleb128 0x2d
	.4byte	.LASF244
	.byte	0x1
	.byte	0x12
	.4byte	0xd4
	.4byte	.LLST8
	.uleb128 0x35
	.4byte	.LASF222
	.byte	0x1
	.byte	0x13
	.4byte	0x450
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.ascii	"y\000"
	.byte	0x1
	.byte	0x14
	.4byte	0xd4
	.4byte	.LLST9
	.uleb128 0x37
	.4byte	0xfe2
	.4byte	.LBB12
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x11
	.uleb128 0x38
	.4byte	0xff3
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.4byte	.LBB16
	.4byte	.LBE16
	.uleb128 0x33
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x25
	.4byte	0x114a
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfae
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe69
	.uleb128 0xc
	.4byte	0xd4
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe5e
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF246
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.4byte	.LFB171
	.4byte	.LFE171
	.4byte	.LLST10
	.4byte	0x1195
	.uleb128 0x2f
	.4byte	.LASF247
	.byte	0x1
	.byte	0x59
	.4byte	0x127
	.4byte	.LLST11
	.uleb128 0x30
	.ascii	"v\000"
	.byte	0x1
	.byte	0x59
	.4byte	0x39e
	.4byte	.LLST12
	.uleb128 0x35
	.4byte	.LASF248
	.byte	0x1
	.byte	0x5b
	.4byte	0x1195
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0x13
	.4byte	0x10a
	.4byte	0x11a5
	.uleb128 0x1b
	.4byte	0x107
	.byte	0x3f
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF249
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.4byte	.LFB172
	.4byte	.LFE172
	.4byte	.LLST13
	.4byte	0x11da
	.uleb128 0x2b
	.4byte	.LASF247
	.byte	0x1
	.byte	0x61
	.4byte	0x127
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.uleb128 0x3a
	.ascii	"v\000"
	.byte	0x1
	.byte	0x63
	.4byte	0x39e
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF269
	.byte	0x1
	.byte	0x30
	.4byte	.LFB169
	.4byte	.LFE169
	.4byte	.LLST14
	.4byte	0x120f
	.uleb128 0x2d
	.4byte	.LASF244
	.byte	0x1
	.byte	0x32
	.4byte	0xd4
	.4byte	.LLST15
	.uleb128 0x36
	.ascii	"y\000"
	.byte	0x1
	.byte	0x33
	.4byte	0xd4
	.4byte	.LLST16
	.byte	0x0
	.uleb128 0x3c
	.4byte	.LASF250
	.byte	0x7
	.2byte	0x12e
	.4byte	0x121b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2eb
	.uleb128 0x13
	.4byte	0x10a
	.4byte	0x1232
	.uleb128 0x14
	.4byte	0x107
	.2byte	0x2ff
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF251
	.byte	0x1
	.byte	0x9
	.4byte	0x1221
	.byte	0x5
	.byte	0x3
	.4byte	g_log
	.uleb128 0x35
	.4byte	.LASF252
	.byte	0x1
	.byte	0xa
	.4byte	0xbe
	.byte	0x5
	.byte	0x3
	.4byte	g_line
	.uleb128 0x35
	.4byte	.LASF253
	.byte	0x1
	.byte	0xb
	.4byte	0xbe
	.byte	0x5
	.byte	0x3
	.4byte	g_logCount
	.uleb128 0x3d
	.4byte	.LASF254
	.byte	0x12
	.byte	0x56
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.4byte	.LASF255
	.byte	0x12
	.byte	0x57
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	0x128f
	.4byte	0x128f
	.uleb128 0x1b
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1295
	.uleb128 0x3e
	.4byte	0x57
	.uleb128 0x3f
	.4byte	.LASF256
	.byte	0x5
	.2byte	0x19c
	.4byte	0x127f
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	0x1d6
	.4byte	0x12b8
	.uleb128 0x1b
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x3f
	.4byte	.LASF257
	.byte	0x5
	.2byte	0x19f
	.4byte	0x12a8
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.4byte	.LASF258
	.byte	0x7
	.2byte	0x12b
	.4byte	0x2eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.4byte	.LASF259
	.byte	0xe
	.2byte	0x149
	.4byte	0x12e3
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0xdc2
	.uleb128 0x3f
	.4byte	.LASF260
	.byte	0xe
	.2byte	0x14d
	.4byte	0xdc2
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.4byte	.LASF261
	.byte	0x1
	.byte	0xd
	.4byte	0xf79
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__TGuiConsoleTypeHeader__
	.uleb128 0x3d
	.4byte	.LASF262
	.byte	0x1
	.byte	0xd
	.4byte	0xf79
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.uleb128 0x34
	.uleb128 0xc
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
	.uleb128 0x13
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
	.uleb128 0x19
	.uleb128 0x17
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
	.uleb128 0x1a
	.uleb128 0xd
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.4byte	0x82
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1317
	.4byte	0x100a
	.ascii	"guiConsoleLog\000"
	.4byte	0x1150
	.ascii	"guiConsoleLogfv\000"
	.4byte	0x11a5
	.ascii	"guiConsoleLogf\000"
	.4byte	0x11da
	.ascii	"guiConsoleDump\000"
	.4byte	0x12d4
	.ascii	"g_neo\000"
	.4byte	0x12f7
	.ascii	"__TGuiConsoleTypeHeader__\000"
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
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF42:
	.ascii	"clearColor\000"
.LASF238:
	.ascii	"szText\000"
.LASF76:
	.ascii	"checkpc\000"
.LASF80:
	.ascii	"write8\000"
.LASF166:
	.ascii	"ctrl1Reg\000"
.LASF145:
	.ascii	"spriteMask\000"
.LASF207:
	.ascii	"GUIEVENT_SELECTED\000"
.LASF168:
	.ascii	"ctrl3Reg\000"
.LASF85:
	.ascii	"fetch32\000"
.LASF250:
	.ascii	"glGlob\000"
.LASF153:
	.ascii	"cpuClocksPerScanline\000"
.LASF60:
	.ascii	"OBJSIZE_64\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF189:
	.ascii	"cpuWrite32Table\000"
.LASF188:
	.ascii	"cpuWrite16Table\000"
.LASF233:
	.ascii	"_TGuiConsole\000"
.LASF12:
	.ascii	"uint32\000"
.LASF74:
	.ascii	"cycles\000"
.LASF37:
	.ascii	"GL_MODELVIEW\000"
.LASF199:
	.ascii	"GUIEVENT_PROCESS\000"
.LASF251:
	.ascii	"g_log\000"
.LASF210:
	.ascii	"GUIEVENTRET_HANDLED\000"
.LASF65:
	.ascii	"_TPoint\000"
.LASF38:
	.ascii	"GL_TEXTURE\000"
.LASF175:
	.ascii	"paletteRamLatch\000"
.LASF29:
	.ascii	"type\000"
.LASF180:
	.ascii	"varEnd\000"
.LASF232:
	.ascii	"TGuiConsole\000"
.LASF249:
	.ascii	"guiConsoleLogf\000"
.LASF94:
	.ascii	"TWrite8Func\000"
.LASF77:
	.ascii	"read8\000"
.LASF61:
	.ascii	"OBJCOLOR_16\000"
.LASF81:
	.ascii	"write16\000"
.LASF240:
	.ascii	"__arg__\000"
.LASF106:
	.ascii	"TNeoADPCMBStream\000"
.LASF91:
	.ascii	"TRead8Func\000"
.LASF48:
	.ascii	"nameCount\000"
.LASF259:
	.ascii	"g_neo\000"
.LASF186:
	.ascii	"cpuRead32Table\000"
.LASF39:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF246:
	.ascii	"guiConsoleLogfv\000"
.LASF211:
	.ascii	"GUIEVENTRET_NOTHANDLED\000"
.LASF19:
	.ascii	"long int\000"
.LASF226:
	.ascii	"TGuiObject\000"
.LASF252:
	.ascii	"g_line\000"
.LASF237:
	.ascii	"lineCount\000"
.LASF231:
	.ascii	"GUIBORDER_ROUND_PRESSED\000"
.LASF83:
	.ascii	"fetch8\000"
.LASF236:
	.ascii	"pDst\000"
.LASF213:
	.ascii	"TGUIEVENT_PROCESSArg\000"
.LASF178:
	.ascii	"keyGrid\000"
.LASF82:
	.ascii	"write32\000"
.LASF227:
	.ascii	"_TGuiBorderStyle\000"
.LASF50:
	.ascii	"OBJMODE_BLENDED\000"
.LASF183:
	.ascii	"_TNeoContext\000"
.LASF86:
	.ascii	"IrqCallback\000"
.LASF97:
	.ascii	"TCheckPcFunc\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF205:
	.ascii	"GUIEVENT_KEYUP\000"
.LASF158:
	.ascii	"romBankAddress\000"
.LASF100:
	.ascii	"step\000"
.LASF122:
	.ascii	"adpcmActive\000"
.LASF113:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF187:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF150:
	.ascii	"tileScaleX\000"
.LASF151:
	.ascii	"tileScaleY\000"
.LASF155:
	.ascii	"watchdogCounter\000"
.LASF115:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF219:
	.ascii	"pChildren\000"
.LASF142:
	.ascii	"vramBaseMask\000"
.LASF118:
	.ascii	"spriteCount\000"
.LASF88:
	.ascii	"UnrecognizedCallback\000"
.LASF63:
	.ascii	"__gnuc_va_list\000"
.LASF221:
	.ascii	"handler\000"
.LASF132:
	.ascii	"bankTable\000"
.LASF18:
	.ascii	"char\000"
.LASF31:
	.ascii	"BgState\000"
.LASF69:
	.ascii	"unused\000"
.LASF172:
	.ascii	"screenDarkLatch\000"
.LASF71:
	.ascii	"prev_pc\000"
.LASF102:
	.ascii	"_TNeoADPCMBStream\000"
.LASF256:
	.ascii	"bgControl\000"
.LASF198:
	.ascii	"GUIEVENT_DESTROY\000"
.LASF108:
	.ascii	"NEOROM_BIOS\000"
.LASF66:
	.ascii	"TPoint\000"
.LASF70:
	.ascii	"flags\000"
.LASF144:
	.ascii	"autoAnimationCounter\000"
.LASF43:
	.ascii	"textures\000"
.LASF266:
	.ascii	"_TBounds\000"
.LASF258:
	.ascii	"glGlobalData\000"
.LASF36:
	.ascii	"GL_POSITION\000"
.LASF152:
	.ascii	"cpuClockDivide\000"
.LASF140:
	.ascii	"frameCount\000"
.LASF182:
	.ascii	"fill\000"
.LASF56:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF15:
	.ascii	"false\000"
.LASF214:
	.ascii	"TGUIEVENT_RENDERArg\000"
.LASF92:
	.ascii	"TRead16Func\000"
.LASF51:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF193:
	.ascii	"_TGuiEventID\000"
.LASF126:
	.ascii	"pRam\000"
.LASF32:
	.ascii	"DynamicArray\000"
.LASF203:
	.ascii	"GUIEVENT_TAP\000"
.LASF245:
	.ascii	"guiConsoleLog\000"
.LASF67:
	.ascii	"TBounds\000"
.LASF20:
	.ascii	"long unsigned int\000"
.LASF112:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF265:
	.ascii	"__va_list\000"
.LASF49:
	.ascii	"OBJMODE_NORMAL\000"
.LASF239:
	.ascii	"__pObj__\000"
.LASF54:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF194:
	.ascii	"GUIEVENT_NULL\000"
.LASF185:
	.ascii	"cpuRead16Table\000"
.LASF164:
	.ascii	"displayControlMask\000"
.LASF197:
	.ascii	"GUIEVENT_CREATE\000"
.LASF181:
	.ascii	"__ap\000"
.LASF90:
	.ascii	"TCycloneContext\000"
.LASF109:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF244:
	.ascii	"line\000"
.LASF242:
	.ascii	"this\000"
.LASF176:
	.ascii	"active\000"
.LASF147:
	.ascii	"pTileBuffer\000"
.LASF68:
	.ascii	"Cyclone\000"
.LASF222:
	.ascii	"bounds\000"
.LASF125:
	.ascii	"pBios\000"
.LASF262:
	.ascii	"__TGuiObjectTypeHeader__\000"
.LASF21:
	.ascii	"angle\000"
.LASF171:
	.ascii	"irqVectorLatch\000"
.LASF146:
	.ascii	"paletteDirty\000"
.LASF41:
	.ascii	"matrixMode\000"
.LASF201:
	.ascii	"GUIEVENT_TOUCHDOWN\000"
.LASF248:
	.ascii	"szBuffer\000"
.LASF225:
	.ascii	"TGuiTypeHeader\000"
.LASF190:
	.ascii	"cpuCheckPcTable\000"
.LASF269:
	.ascii	"guiConsoleDump\000"
.LASF46:
	.ascii	"nextBlock\000"
.LASF196:
	.ascii	"GUIEVENT_DISABLE\000"
.LASF223:
	.ascii	"_TGuiTypeHeader\000"
.LASF220:
	.ascii	"pNextChild\000"
.LASF138:
	.ascii	"smaRand\000"
.LASF98:
	.ascii	"_TNeoADPCMStream\000"
.LASF96:
	.ascii	"TWrite32Func\000"
.LASF263:
	.ascii	"GNU C 4.4.3\000"
.LASF10:
	.ascii	"long long int\000"
.LASF35:
	.ascii	"GL_PROJECTION\000"
.LASF64:
	.ascii	"va_list\000"
.LASF170:
	.ascii	"coinReg\000"
.LASF116:
	.ascii	"NEOROM_COUNT\000"
.LASF103:
	.ascii	"initOffset\000"
.LASF257:
	.ascii	"bgState\000"
.LASF26:
	.ascii	"scrollX\000"
.LASF27:
	.ascii	"scrollY\000"
.LASF167:
	.ascii	"ctrl2Reg\000"
.LASF14:
	.ascii	"double\000"
.LASF89:
	.ascii	"internal\000"
.LASF195:
	.ascii	"GUIEVENT_ENABLE\000"
.LASF169:
	.ascii	"ctrl4Reg\000"
.LASF234:
	.ascii	"parent\000"
.LASF133:
	.ascii	"smaAddr0\000"
.LASF134:
	.ascii	"smaAddr1\000"
.LASF143:
	.ascii	"displayCounter\000"
.LASF105:
	.ascii	"frequency\000"
.LASF218:
	.ascii	"pParent\000"
.LASF241:
	.ascii	"__ret__\000"
.LASF13:
	.ascii	"float\000"
.LASF128:
	.ascii	"pCard\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF55:
	.ascii	"OBJSHAPE_TALL\000"
.LASF228:
	.ascii	"GUIBORDER_NORMAL\000"
.LASF163:
	.ascii	"displayControl\000"
.LASF268:
	.ascii	"__TGuiConsoleTypeHandler__\000"
.LASF230:
	.ascii	"GUIBORDER_ROUND_NORMAL\000"
.LASF206:
	.ascii	"GUIEVENT_KEYREPEAT\000"
.LASF141:
	.ascii	"pVramBase\000"
.LASF165:
	.ascii	"displayCounterLoad\000"
.LASF62:
	.ascii	"OBJCOLOR_256\000"
.LASF204:
	.ascii	"GUIEVENT_KEYDOWN\000"
.LASF99:
	.ascii	"offset\000"
.LASF110:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF123:
	.ascii	"pRom0\000"
.LASF124:
	.ascii	"pRom1\000"
.LASF148:
	.ascii	"tileOffsetX\000"
.LASF149:
	.ascii	"tileOffsetY\000"
.LASF17:
	.ascii	"bool\000"
.LASF107:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF45:
	.ascii	"activeTexture\000"
.LASF161:
	.ascii	"vramOffset\000"
.LASF78:
	.ascii	"read16\000"
.LASF192:
	.ascii	"_TNeoRomRegion\000"
.LASF174:
	.ascii	"sramProtectLatch\000"
.LASF260:
	.ascii	"g_neoContext\000"
.LASF191:
	.ascii	"TNeoContext\000"
.LASF75:
	.ascii	"membase\000"
.LASF104:
	.ascii	"freqCounter\000"
.LASF52:
	.ascii	"OBJMODE_BITMAP\000"
.LASF139:
	.ascii	"scanline\000"
.LASF28:
	.ascii	"size\000"
.LASF131:
	.ascii	"pPalette\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF247:
	.ascii	"szFormat\000"
.LASF79:
	.ascii	"read32\000"
.LASF177:
	.ascii	"debug\000"
.LASF114:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF95:
	.ascii	"TWrite16Func\000"
.LASF34:
	.ascii	"cur_size\000"
.LASF209:
	.ascii	"_TGuiEventReturn\000"
.LASF184:
	.ascii	"cpuRead8Table\000"
.LASF267:
	.ascii	"guiObjGetHeight\000"
.LASF215:
	.ascii	"TGuiEventHandler\000"
.LASF121:
	.ascii	"adpcmb\000"
.LASF217:
	.ascii	"pType\000"
.LASF130:
	.ascii	"pSpriteRam\000"
.LASF229:
	.ascii	"GUIBORDER_PRESSED\000"
.LASF136:
	.ascii	"smaBankoffset\000"
.LASF157:
	.ascii	"fixedBank\000"
.LASF57:
	.ascii	"OBJSIZE_8\000"
.LASF73:
	.ascii	"state_flags\000"
.LASF224:
	.ascii	"szName\000"
.LASF160:
	.ascii	"sramProtection\000"
.LASF127:
	.ascii	"pSram\000"
.LASF4:
	.ascii	"short int\000"
.LASF179:
	.ascii	"frameCounter\000"
.LASF202:
	.ascii	"GUIEVENT_TOUCHUP\000"
.LASF47:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF87:
	.ascii	"ResetCallback\000"
.LASF16:
	.ascii	"true\000"
.LASF235:
	.ascii	"lastCount\000"
.LASF44:
	.ascii	"texturePtrs\000"
.LASF208:
	.ascii	"TGuiEventID\000"
.LASF129:
	.ascii	"pVram\000"
.LASF58:
	.ascii	"OBJSIZE_16\000"
.LASF154:
	.ascii	"irqPending\000"
.LASF22:
	.ascii	"centerX\000"
.LASF23:
	.ascii	"centerY\000"
.LASF93:
	.ascii	"TRead32Func\000"
.LASF216:
	.ascii	"_TGuiObject\000"
.LASF254:
	.ascii	"mosaicShadow\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF24:
	.ascii	"scaleX\000"
.LASF25:
	.ascii	"scaleY\000"
.LASF253:
	.ascii	"g_logCount\000"
.LASF72:
	.ascii	"reserved\000"
.LASF212:
	.ascii	"TGuiEventReturn\000"
.LASF120:
	.ascii	"adpcm\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF40:
	.ascii	"gl_hidden_globals\000"
.LASF59:
	.ascii	"OBJSIZE_32\000"
.LASF255:
	.ascii	"mosaicShadowSub\000"
.LASF264:
	.ascii	"C:/Users/GRX/NeoDS/arm9/source/guiConsole.c\000"
.LASF117:
	.ascii	"pVideoWriteTable\000"
.LASF156:
	.ascii	"paletteBank\000"
.LASF30:
	.ascii	"dirty\000"
.LASF135:
	.ascii	"smaBankAddr\000"
.LASF84:
	.ascii	"fetch16\000"
.LASF200:
	.ascii	"GUIEVENT_RENDER\000"
.LASF53:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF137:
	.ascii	"smaBankbit\000"
.LASF111:
	.ascii	"NEOROM_AUDODATA\000"
.LASF261:
	.ascii	"__TGuiConsoleTypeHeader__\000"
.LASF33:
	.ascii	"data\000"
.LASF173:
	.ascii	"fixedRomLatch\000"
.LASF159:
	.ascii	"sramProtectCount\000"
.LASF119:
	.ascii	"romBankCount\000"
.LASF101:
	.ascii	"TNeoADPCMStream\000"
.LASF243:
	.ascii	"height\000"
.LASF162:
	.ascii	"vramMod\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
