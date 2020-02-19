	.code	16
	.file	"guiMenu.c"
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
	.type	__TGuiMenuTypeHandler__, %function
__TGuiMenuTypeHandler__:
.LFB111:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiMenu.c"
	.loc 1 6 0
	push	{r4, r5, r6, lr}
.LCFI0:
.LVL0:
	sub	sp, sp, #32
.LCFI1:
	.loc 1 6 0
	mov	r4, r0
	mov	r5, r2
	cmp	r1, #11
	beq	.L4
.LVL1:
	cmp	r1, #12
	beq	.L5
	cmp	r1, #6
	beq	.L3
	mov	r0, #1
.LVL2:
	b	.L6
.LVL3:
.L3:
.LBB9:
.LBB10:
	.loc 1 14 0
	add	r1, sp, #16
.LVL4:
	bl	guiObjGetGlobalBounds
	.loc 1 16 0
	ldr	r5, [r4, #48]
.LVL5:
	.loc 1 15 0
	ldr	r6, [sp, #20]
.LVL6:
	.loc 1 16 0
	lsl	r2, r5, #5
	b	.L26
.L8:
	.loc 1 19 0
	ldr	r3, [r4, #44]
	cmp	r5, r3
	bne	.L9
	.loc 1 20 0
	ldr	r0, [sp, #16]
	ldr	r2, [sp, #24]
	mov	r3, #1
	sub	r2, r2, r0
	str	r3, [sp]
	add	r2, r2, #1
	mov	r1, r6
	mov	r3, #2
	bl	guiRenderFrame
.L9:
	.loc 1 22 0
	ldr	r2, [r4, #40]
	ldr	r3, [sp, #12]
	mov	r1, r6
	add	r2, r3, r2
	ldr	r0, [sp, #16]
	bl	guiRenderString
	.loc 1 24 0
	ldr	r2, [sp, #12]
	.loc 1 23 0
	add	r6, r6, #2
	.loc 1 24 0
	add	r5, r5, #1
	add	r2, r2, #32
.L26:
	.loc 1 18 0
	ldr	r3, [sp, #28]
	.loc 1 24 0
	str	r2, [sp, #12]
	.loc 1 18 0
	cmp	r6, r3
	bge	.L11
	ldr	r3, [r4, #52]
	cmp	r5, r3
	blt	.L8
	b	.L11
.LVL7:
.L5:
.LBE10:
.LBE9:
.LBB11:
.LBB12:
.LBB13:
.LBB14:
	.file 2 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiObject.h"
	.loc 2 105 0
	ldr	r3, [r0, #36]
	str	r3, [sp, #8]
.LBE14:
.LBE13:
	.loc 1 32 0
	ldr	r3, [r2]
.LBB15:
.LBB16:
	.loc 2 105 0
	ldr	r6, [r0, #28]
.LBE16:
.LBE15:
	.loc 1 32 0
	lsl	r2, r3, #24
	bpl	.L13
.LVL8:
	.loc 1 33 0
	ldr	r3, [r0, #44]
	.loc 1 34 0
	ldr	r2, [r0, #52]
	.loc 1 33 0
	add	r3, r3, #1
	str	r3, [r0, #44]
	.loc 1 34 0
	cmp	r3, r2
	blt	.L15
	.loc 1 35 0
	mov	r3, #0
	str	r3, [r0, #44]
.L15:
	.loc 1 37 0
	mov	r0, r4
.LVL9:
	bl	guiObjRenderDirty
.LVL10:
.L13:
	.loc 1 39 0
	ldr	r3, [r5]
	lsl	r2, r3, #25
	bpl	.L17
	.loc 1 40 0
	ldr	r3, [r4, #44]
	sub	r3, r3, #1
	str	r3, [r4, #44]
	.loc 1 41 0
	cmp	r3, #0
	bge	.L19
	.loc 1 42 0
	ldr	r3, [r4, #52]
	sub	r3, r3, #1
	str	r3, [r4, #44]
.L19:
	.loc 1 44 0
	mov	r0, r4
	bl	guiObjRenderDirty
.LVL11:
.L17:
	.loc 1 46 0
	ldr	r1, [r4, #44]
.LVL12:
	ldr	r0, [r4, #48]
	cmp	r1, r0
	bge	.L21
	.loc 1 47 0
	str	r1, [r4, #48]
	b	.L11
.L21:
	.loc 1 31 0
	ldr	r2, [sp, #8]
	sub	r3, r2, r6
	lsr	r2, r3, #31
	add	r2, r2, r3
	asr	r2, r2, #1
	.loc 1 48 0
	add	r3, r0, r2
	cmp	r1, r3
	blt	.L11
	.loc 1 49 0
	sub	r3, r1, r2
	add	r3, r3, #1
	str	r3, [r4, #48]
	b	.L11
.LVL13:
.L4:
.LBE12:
.LBE11:
.LBB17:
	.loc 1 56 0
	ldr	r3, [r2]
	lsl	r2, r3, #28
	bpl	.L11
	.loc 1 57 0
	mov	r1, #13
.LVL14:
	mov	r2, #0
	bl	guiObjSendEvent
.LVL15:
.L11:
	mov	r0, #0
.LVL16:
.L6:
.LBE17:
	.loc 1 62 0
	add	sp, sp, #32
.LVL17:
	@ sp needed for prologue
.LVL18:
.LVL19:
.LVL20:
	pop	{r4, r5, r6, pc}
.LFE111:
	.size	__TGuiMenuTypeHandler__, .-__TGuiMenuTypeHandler__
	.align	2
	.global	guiMenuAddItem
	.code 16
	.thumb_func
	.type	guiMenuAddItem, %function
guiMenuAddItem:
.LFB113:
	.loc 1 76 0
	push	{r4, lr}
.LCFI2:
.LVL21:
	.loc 1 76 0
	mov	r4, r0
	.loc 1 80 0
	ldr	r0, [r0, #52]
.LVL22:
	ldr	r3, [r4, #40]
	lsl	r0, r0, #5
	mov	r2, #32
	add	r0, r0, r3
	bl	strncpy
.LVL23:
	.loc 1 81 0
	ldr	r3, [r4, #52]
	.loc 1 82 0
	mov	r0, r4
	.loc 1 81 0
	add	r3, r3, #1
	str	r3, [r4, #52]
	.loc 1 82 0
	bl	guiObjRenderDirty
	.loc 1 83 0
	@ sp needed for prologue
.LVL24:
	pop	{r4, pc}
.LFE113:
	.size	guiMenuAddItem, .-guiMenuAddItem
	.align	2
	.global	guiMenuCreateChild
	.code 16
	.thumb_func
	.type	guiMenuCreateChild, %function
guiMenuCreateChild:
.LFB112:
	.loc 1 65 0
	push	{r4, r5, lr}
.LCFI3:
.LVL25:
	mov	r3, r0
	mov	r5, r1
	sub	sp, sp, #4
.LCFI4:
	.loc 1 66 0
	mov	r1, r3
.LVL26:
	ldr	r0, .L31
.LVL27:
	bl	guiObjCreateChild_r
.LVL28:
	mov	r4, r0
	.loc 1 67 0
	lsl	r0, r5, #5
	bl	guiHeapAlloc
	.loc 1 69 0
	mov	r3, #0
	.loc 1 67 0
	str	r0, [r4, #40]
	.loc 1 73 0
	add	sp, sp, #4
	mov	r0, r4
	.loc 1 68 0
	str	r5, [r4, #56]
	.loc 1 69 0
	str	r3, [r4, #52]
	.loc 1 70 0
	str	r3, [r4, #44]
	.loc 1 71 0
	str	r3, [r4, #48]
	.loc 1 73 0
	@ sp needed for prologue
.LVL29:
	pop	{r4, r5, pc}
.L32:
	.align	2
.L31:
	.word	__TGuiMenuTypeHeader__
.LFE112:
	.size	guiMenuCreateChild, .-guiMenuCreateChild
	.global	__TGuiMenuTypeHeader__
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"TGuiMenu\000"
	.section	.rodata
	.align	2
	.type	__TGuiMenuTypeHeader__, %object
	.size	__TGuiMenuTypeHeader__, 16
__TGuiMenuTypeHeader__:
	.word	__TGuiMenuTypeHandler__
	.word	__TGuiObjectTypeHeader__
	.word	60
	.word	.LC1
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
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI0-.LFB111
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x4
	.byte	0x85
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x30
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.byte	0x4
	.4byte	.LCFI2-.LFB113
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI3-.LFB112
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE4:
	.file 3 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 4 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 5 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiEvent.h"
	.file 6 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/Default.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiMenu.h"
	.file 8 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 9 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.file 10 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
	.file 11 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h"
	.file 12 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h"
	.file 13 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB113-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB112-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x10ce
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF213
	.byte	0x1
	.4byte	.LASF214
	.4byte	.LASF215
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
	.byte	0x8
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
	.byte	0x8
	.byte	0xa0
	.4byte	0x107
	.uleb128 0xa
	.4byte	0x1ab
	.2byte	0x2018
	.byte	0x8
	.2byte	0x119
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x8
	.2byte	0x11a
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x8
	.2byte	0x11d
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x8
	.2byte	0x120
	.4byte	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x8
	.2byte	0x121
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x8
	.2byte	0x122
	.4byte	0x1bc
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x8
	.2byte	0x123
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x8
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
	.byte	0x8
	.2byte	0x126
	.4byte	0x133
	.uleb128 0xf
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d6
	.uleb128 0x10
	.4byte	0x100
	.uleb128 0x11
	.4byte	0x200
	.4byte	.LASF33
	.byte	0x8
	.byte	0x6
	.byte	0xd
	.uleb128 0x12
	.ascii	"x\000"
	.byte	0x6
	.byte	0xe
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.ascii	"y\000"
	.byte	0x6
	.byte	0xf
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x10
	.4byte	0x1db
	.uleb128 0x13
	.4byte	0x248
	.byte	0x10
	.byte	0x6
	.byte	0x13
	.uleb128 0x12
	.ascii	"x0\000"
	.byte	0x6
	.byte	0x14
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.ascii	"y0\000"
	.byte	0x6
	.byte	0x15
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.ascii	"x1\000"
	.byte	0x6
	.byte	0x16
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.ascii	"y1\000"
	.byte	0x6
	.byte	0x17
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x13
	.4byte	0x26b
	.byte	0x10
	.byte	0x6
	.byte	0x19
	.uleb128 0x12
	.ascii	"p0\000"
	.byte	0x6
	.byte	0x1a
	.4byte	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.ascii	"p1\000"
	.byte	0x6
	.byte	0x1b
	.4byte	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x14
	.4byte	0x282
	.4byte	.LASF216
	.byte	0x10
	.byte	0x6
	.byte	0x12
	.uleb128 0x15
	.4byte	0x20b
	.uleb128 0x15
	.4byte	0x248
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x6
	.byte	0x1d
	.4byte	0x26b
	.uleb128 0x11
	.4byte	0x423
	.4byte	.LASF34
	.byte	0xb0
	.byte	0xc
	.byte	0x15
	.uleb128 0x12
	.ascii	"d\000"
	.byte	0xc
	.byte	0x16
	.4byte	0x423
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.ascii	"a\000"
	.byte	0xc
	.byte	0x17
	.4byte	0x423
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.ascii	"pc\000"
	.byte	0xc
	.byte	0x18
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.ascii	"srh\000"
	.byte	0xc
	.byte	0x19
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0xc
	.byte	0x1a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x16
	.4byte	.LASF36
	.byte	0xc
	.byte	0x1b
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x12
	.ascii	"irq\000"
	.byte	0xc
	.byte	0x1c
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x12
	.ascii	"osp\000"
	.byte	0xc
	.byte	0x1d
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.ascii	"xc\000"
	.byte	0xc
	.byte	0x1e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0xc
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0xc
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x16
	.4byte	.LASF39
	.byte	0xc
	.byte	0x21
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0xc
	.byte	0x22
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0xc
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x16
	.4byte	.LASF42
	.byte	0xc
	.byte	0x24
	.4byte	0x443
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0xc
	.byte	0x25
	.4byte	0x443
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x16
	.4byte	.LASF44
	.byte	0xc
	.byte	0x26
	.4byte	0x443
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x16
	.4byte	.LASF45
	.byte	0xc
	.byte	0x27
	.4byte	0x443
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0xc
	.byte	0x28
	.4byte	0x45a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0xc
	.byte	0x29
	.4byte	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0xc
	.byte	0x2a
	.4byte	0x488
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0xc
	.byte	0x2b
	.4byte	0x443
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0xc
	.byte	0x2c
	.4byte	0x443
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0xc
	.byte	0x2d
	.4byte	0x443
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0xc
	.byte	0x2e
	.4byte	0x49e
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0xc
	.byte	0x2f
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0xc
	.byte	0x30
	.4byte	0x4aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x16
	.4byte	.LASF55
	.byte	0xc
	.byte	0x31
	.4byte	0x4b0
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xc
	.4byte	0x433
	.4byte	0x9b
	.uleb128 0x17
	.4byte	0xf9
	.byte	0x7
	.byte	0x0
	.uleb128 0x18
	.4byte	0x443
	.byte	0x1
	.4byte	0x9b
	.uleb128 0x19
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x433
	.uleb128 0x1a
	.4byte	0x45a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9b
	.uleb128 0x19
	.4byte	0x37
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x449
	.uleb128 0x1a
	.4byte	0x471
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9b
	.uleb128 0x19
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x460
	.uleb128 0x1a
	.4byte	0x488
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9b
	.uleb128 0x19
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x477
	.uleb128 0x18
	.4byte	0x49e
	.byte	0x1
	.4byte	0x94
	.uleb128 0x19
	.4byte	0x94
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x48e
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4a4
	.uleb128 0xc
	.4byte	0x4c0
	.4byte	0x9b
	.uleb128 0x17
	.4byte	0xf9
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0xb
	.byte	0x6
	.4byte	0x28d
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0xb
	.byte	0x8
	.4byte	0x4d6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4dc
	.uleb128 0x18
	.4byte	0x4ec
	.byte	0x1
	.4byte	0xbb
	.uleb128 0x19
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0xb
	.byte	0x9
	.4byte	0x4f7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4fd
	.uleb128 0x18
	.4byte	0x50d
	.byte	0x1
	.4byte	0xc5
	.uleb128 0x19
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0xb
	.byte	0xa
	.4byte	0x518
	.uleb128 0x6
	.byte	0x4
	.4byte	0x51e
	.uleb128 0x18
	.4byte	0x52e
	.byte	0x1
	.4byte	0xd0
	.uleb128 0x19
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xb
	.byte	0xc
	.4byte	0x539
	.uleb128 0x6
	.byte	0x4
	.4byte	0x53f
	.uleb128 0x1a
	.4byte	0x550
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd0
	.uleb128 0x19
	.4byte	0xbb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xb
	.byte	0xd
	.4byte	0x55b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x561
	.uleb128 0x1a
	.4byte	0x572
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd0
	.uleb128 0x19
	.4byte	0xc5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xb
	.byte	0xe
	.4byte	0x57d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x583
	.uleb128 0x1a
	.4byte	0x594
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd0
	.uleb128 0x19
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xb
	.byte	0x10
	.4byte	0x518
	.uleb128 0x11
	.4byte	0x5e4
	.4byte	.LASF64
	.byte	0xc
	.byte	0xd
	.byte	0x17
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0xd
	.byte	0x18
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.ascii	"end\000"
	.byte	0xd
	.byte	0x19
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.ascii	"acc\000"
	.byte	0xd
	.byte	0x1a
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0xd
	.byte	0x1b
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xd
	.byte	0x1c
	.4byte	0x59f
	.uleb128 0x11
	.4byte	0x626
	.4byte	.LASF68
	.byte	0xc
	.byte	0xd
	.byte	0x1f
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0xd
	.byte	0x20
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0xd
	.byte	0x21
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0xd
	.byte	0x22
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xd
	.byte	0x23
	.4byte	0x5ef
	.uleb128 0x1c
	.4byte	0xa1f
	.2byte	0x248
	.byte	0xa
	.byte	0xc0
	.uleb128 0x12
	.ascii	"cpu\000"
	.byte	0xa
	.byte	0xc1
	.4byte	0x4c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0xa
	.byte	0xc4
	.4byte	0xa1f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0xa
	.byte	0xc7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0xa
	.byte	0xc8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0xa
	.byte	0xcb
	.4byte	0xa2f
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0xa
	.byte	0xcc
	.4byte	0x626
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0xa
	.byte	0xcd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0xa
	.byte	0xd0
	.4byte	0xa3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0xa
	.byte	0xd1
	.4byte	0xa3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0xa
	.byte	0xd2
	.4byte	0xa3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0xa
	.byte	0xd3
	.4byte	0xa3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0xa
	.byte	0xd4
	.4byte	0xa3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0xa
	.byte	0xd5
	.4byte	0xa3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0xa
	.byte	0xd6
	.4byte	0xa45
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0xa
	.byte	0xd7
	.4byte	0xa45
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0xa
	.byte	0xd8
	.4byte	0xa45
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0xa
	.byte	0xda
	.4byte	0xa4b
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0xa
	.byte	0xdd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0xa
	.byte	0xde
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0xa
	.byte	0xdf
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0xa
	.byte	0xe0
	.4byte	0xa5c
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0xa
	.byte	0xe1
	.4byte	0xa5c
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0xa
	.byte	0xe2
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0xa
	.byte	0xe5
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0xa
	.byte	0xe6
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0xa
	.byte	0xe7
	.4byte	0xa45
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0xa
	.byte	0xe8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x16
	.4byte	.LASF99
	.byte	0xa
	.byte	0xea
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0xa
	.byte	0xeb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0xa
	.byte	0xec
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0xa
	.byte	0xed
	.4byte	0xa67
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0xa
	.byte	0xee
	.4byte	0xa45
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0xa
	.byte	0xf1
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0xa
	.byte	0xf2
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0xa
	.byte	0xf3
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0xa
	.byte	0xf4
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0xa
	.byte	0xf7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0xa
	.byte	0xf8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0xa
	.byte	0xf9
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0xa
	.byte	0xfa
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0xa
	.byte	0xfb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0xa
	.byte	0xfc
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0xa
	.byte	0xfd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0xa
	.2byte	0x102
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0xa
	.2byte	0x103
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0xa
	.2byte	0x106
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0xa
	.2byte	0x108
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x109
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0xa
	.2byte	0x10a
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0xa
	.2byte	0x10b
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0xa
	.2byte	0x10d
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x10e
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0xa
	.2byte	0x10f
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x110
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0xa
	.2byte	0x111
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0xa
	.2byte	0x114
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0xa
	.2byte	0x115
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x116
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x117
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0xa
	.2byte	0x118
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x11b
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x11c
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x11f
	.4byte	0xa77
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x122
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x123
	.4byte	0xa87
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa2f
	.4byte	0x1ce
	.uleb128 0x17
	.4byte	0xf9
	.byte	0x8
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa3f
	.4byte	0x5e4
	.uleb128 0x17
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
	.4byte	0xa51
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa57
	.uleb128 0x10
	.4byte	0xbb
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa62
	.uleb128 0x10
	.4byte	0xd0
	.uleb128 0xc
	.4byte	0xa77
	.4byte	0xd0
	.uleb128 0x17
	.4byte	0xf9
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa87
	.4byte	0xbb
	.uleb128 0x17
	.4byte	0xf9
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa96
	.4byte	0xbb
	.uleb128 0x1d
	.4byte	0xf9
	.byte	0x0
	.uleb128 0x1e
	.4byte	0xab1
	.2byte	0x400
	.byte	0xa
	.byte	0xbf
	.uleb128 0x15
	.4byte	0x631
	.uleb128 0x1f
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x125
	.4byte	0xab1
	.byte	0x0
	.uleb128 0xc
	.4byte	0xac1
	.4byte	0xd0
	.uleb128 0x17
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0x20
	.4byte	0xb47
	.4byte	.LASF138
	.2byte	0x2000
	.byte	0xa
	.byte	0xbe
	.uleb128 0x21
	.4byte	0xa96
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x128
	.4byte	0xb47
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x129
	.4byte	0xb57
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x12a
	.4byte	0xb67
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xa
	.2byte	0x12b
	.4byte	0xb77
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x12c
	.4byte	0xb87
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0xa
	.2byte	0x12d
	.4byte	0xb97
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0xa
	.2byte	0x12e
	.4byte	0xba7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb57
	.4byte	0x4cb
	.uleb128 0x17
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb67
	.4byte	0x4ec
	.uleb128 0x17
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb77
	.4byte	0x50d
	.uleb128 0x17
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb87
	.4byte	0x52e
	.uleb128 0x17
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb97
	.4byte	0x550
	.uleb128 0x17
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xba7
	.4byte	0x572
	.uleb128 0x17
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbb7
	.4byte	0x594
	.uleb128 0x17
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF146
	.byte	0xa
	.2byte	0x12f
	.4byte	0xac1
	.uleb128 0x22
	.4byte	0xc24
	.4byte	.LASF162
	.byte	0x1
	.byte	0x5
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF147
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF148
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF149
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF150
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF151
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF152
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF153
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF154
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF155
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF156
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF157
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF158
	.sleb128 11
	.uleb128 0x9
	.4byte	.LASF159
	.sleb128 12
	.uleb128 0x9
	.4byte	.LASF160
	.sleb128 13
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF161
	.byte	0x5
	.byte	0x17
	.4byte	0xbc3
	.uleb128 0x22
	.4byte	0xc48
	.4byte	.LASF163
	.byte	0x1
	.byte	0x5
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF164
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF165
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF166
	.byte	0x5
	.byte	0x1c
	.4byte	0xc2f
	.uleb128 0x3
	.4byte	.LASF167
	.byte	0x5
	.byte	0x2d
	.4byte	0x1ce
	.uleb128 0x3
	.4byte	.LASF168
	.byte	0x5
	.byte	0x37
	.4byte	0xc69
	.uleb128 0x11
	.4byte	0xc84
	.4byte	.LASF168
	.byte	0x4
	.byte	0x5
	.byte	0x37
	.uleb128 0x16
	.4byte	.LASF169
	.byte	0x5
	.byte	0x38
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF170
	.byte	0x5
	.byte	0x3b
	.4byte	0xc69
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0x2
	.byte	0xc
	.4byte	0xc9a
	.uleb128 0x6
	.byte	0x4
	.4byte	0xca0
	.uleb128 0x18
	.4byte	0xcba
	.byte	0x1
	.4byte	0xc48
	.uleb128 0x19
	.4byte	0xcba
	.uleb128 0x19
	.4byte	0xc24
	.uleb128 0x19
	.4byte	0x1ce
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcc0
	.uleb128 0x11
	.4byte	0xd2f
	.4byte	.LASF172
	.byte	0x28
	.byte	0x2
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF173
	.byte	0x2
	.byte	0x1b
	.4byte	0xd8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF174
	.byte	0x2
	.byte	0x1c
	.4byte	0xcba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF175
	.byte	0x2
	.byte	0x1d
	.4byte	0xcba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF176
	.byte	0x2
	.byte	0x1e
	.4byte	0xcba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF177
	.byte	0x2
	.byte	0x1f
	.4byte	0xc8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.4byte	.LASF36
	.byte	0x2
	.byte	0x20
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.4byte	.LASF178
	.byte	0x2
	.byte	0x21
	.4byte	0x282
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x11
	.4byte	0xd74
	.4byte	.LASF179
	.byte	0x10
	.byte	0x2
	.byte	0xe
	.uleb128 0x16
	.4byte	.LASF177
	.byte	0x2
	.byte	0xf
	.4byte	0xc8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF174
	.byte	0x2
	.byte	0x10
	.4byte	0xd74
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF180
	.byte	0x2
	.byte	0x11
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF181
	.byte	0x2
	.byte	0x12
	.4byte	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd7a
	.uleb128 0x10
	.4byte	0xd2f
	.uleb128 0x3
	.4byte	.LASF182
	.byte	0x2
	.byte	0x13
	.4byte	0xd2f
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd90
	.uleb128 0x10
	.4byte	0xd7f
	.uleb128 0x3
	.4byte	.LASF183
	.byte	0x2
	.byte	0x22
	.4byte	0xcc0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd95
	.uleb128 0x11
	.4byte	0xdc1
	.4byte	.LASF184
	.byte	0x20
	.byte	0x7
	.byte	0x6
	.uleb128 0x16
	.4byte	.LASF185
	.byte	0x7
	.byte	0x7
	.4byte	0xdc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.4byte	0xdd1
	.4byte	0x100
	.uleb128 0x17
	.4byte	0xf9
	.byte	0x1f
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF186
	.byte	0x7
	.byte	0x8
	.4byte	0xda6
	.uleb128 0x3
	.4byte	.LASF187
	.byte	0x7
	.byte	0xa
	.4byte	0xde7
	.uleb128 0x11
	.4byte	0xe48
	.4byte	.LASF188
	.byte	0x3c
	.byte	0x7
	.byte	0xa
	.uleb128 0x16
	.4byte	.LASF189
	.byte	0x7
	.byte	0xa
	.4byte	0xd95
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF190
	.byte	0x7
	.byte	0xb
	.4byte	0xe48
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x16
	.4byte	.LASF191
	.byte	0x7
	.byte	0xc
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.ascii	"top\000"
	.byte	0x7
	.byte	0xd
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x16
	.4byte	.LASF192
	.byte	0x7
	.byte	0xe
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x16
	.4byte	.LASF193
	.byte	0x7
	.byte	0xf
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xdd1
	.uleb128 0x23
	.4byte	0xe6b
	.4byte	.LASF194
	.byte	0x2
	.byte	0x68
	.byte	0x1
	.4byte	0xe6
	.byte	0x3
	.uleb128 0x24
	.4byte	.LASF196
	.byte	0x2
	.byte	0x68
	.4byte	0xe6b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe71
	.uleb128 0x10
	.4byte	0xd95
	.uleb128 0x25
	.4byte	0xf79
	.4byte	.LASF195
	.byte	0x1
	.byte	0x6
	.byte	0x1
	.4byte	0xc48
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST0
	.uleb128 0x26
	.4byte	.LASF197
	.byte	0x1
	.byte	0x6
	.4byte	0xcba
	.4byte	.LLST1
	.uleb128 0x27
	.ascii	"e\000"
	.byte	0x1
	.byte	0x6
	.4byte	0xc24
	.4byte	.LLST2
	.uleb128 0x26
	.4byte	.LASF198
	.byte	0x1
	.byte	0x6
	.4byte	0x1ce
	.4byte	.LLST3
	.uleb128 0x28
	.4byte	.LASF196
	.byte	0x1
	.byte	0x6
	.4byte	0xf79
	.uleb128 0x29
	.4byte	.LASF199
	.byte	0x1
	.byte	0x6
	.4byte	0xc48
	.4byte	.LLST4
	.uleb128 0x2a
	.4byte	0xf24
	.4byte	.LBB9
	.4byte	.LBE9
	.uleb128 0x2b
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x8
	.4byte	0xf7f
	.uleb128 0x2c
	.4byte	.LBB10
	.4byte	.LBE10
	.uleb128 0x2d
	.4byte	.LASF178
	.byte	0x1
	.byte	0xa
	.4byte	0x282
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.4byte	.LASF200
	.byte	0x1
	.byte	0xb
	.4byte	0xe6
	.4byte	.LLST5
	.uleb128 0x2e
	.ascii	"i\000"
	.byte	0x1
	.byte	0xc
	.4byte	0xe6
	.4byte	.LLST6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.4byte	0xf63
	.4byte	.LBB11
	.4byte	.LBE11
	.uleb128 0x2b
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x1d
	.4byte	0xf85
	.uleb128 0x2c
	.4byte	.LBB12
	.4byte	.LBE12
	.uleb128 0x28
	.4byte	.LASF201
	.byte	0x1
	.byte	0x1f
	.4byte	0xe6
	.uleb128 0x2f
	.4byte	0xe4e
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x1f
	.uleb128 0x30
	.4byte	0xe5f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.4byte	.LBB17
	.4byte	.LBE17
	.uleb128 0x2b
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x36
	.4byte	0xf8b
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xddc
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc53
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc5e
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc84
	.uleb128 0x31
	.4byte	0xfd4
	.byte	0x1
	.4byte	.LASF202
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST7
	.uleb128 0x26
	.4byte	.LASF196
	.byte	0x1
	.byte	0x4b
	.4byte	0xf79
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	.LASF185
	.byte	0x1
	.byte	0x4b
	.4byte	0x1d0
	.4byte	.LLST9
	.uleb128 0x28
	.4byte	.LASF190
	.byte	0x1
	.byte	0x4f
	.4byte	0xe48
	.byte	0x0
	.uleb128 0x32
	.4byte	0x102a
	.byte	0x1
	.4byte	.LASF203
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.4byte	0xf79
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST10
	.uleb128 0x26
	.4byte	.LASF174
	.byte	0x1
	.byte	0x40
	.4byte	0xda0
	.4byte	.LLST11
	.uleb128 0x26
	.4byte	.LASF193
	.byte	0x1
	.byte	0x40
	.4byte	0xe6
	.4byte	.LLST12
	.uleb128 0x26
	.4byte	.LASF204
	.byte	0x1
	.byte	0x40
	.4byte	0x102a
	.4byte	.LLST13
	.uleb128 0x28
	.4byte	.LASF196
	.byte	0x1
	.byte	0x42
	.4byte	0xf79
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1030
	.uleb128 0x10
	.4byte	0x282
	.uleb128 0x33
	.4byte	.LASF205
	.byte	0x8
	.2byte	0x129
	.4byte	0x1041
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c2
	.uleb128 0xc
	.4byte	0x1052
	.4byte	0x49
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF206
	.byte	0x9
	.byte	0x2c
	.4byte	0x1047
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x106a
	.4byte	0x49
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF207
	.byte	0x9
	.byte	0x2d
	.4byte	0x105f
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x1082
	.4byte	0x49
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF208
	.byte	0x9
	.byte	0x2e
	.4byte	0x1077
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.4byte	.LASF209
	.byte	0xa
	.2byte	0x149
	.4byte	0x109e
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbb7
	.uleb128 0x37
	.4byte	.LASF210
	.byte	0xa
	.2byte	0x14d
	.4byte	0xbb7
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.4byte	.LASF211
	.byte	0x1
	.byte	0x6
	.4byte	0xd90
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__TGuiMenuTypeHeader__
	.uleb128 0x35
	.4byte	.LASF212
	.byte	0x1
	.byte	0x6
	.4byte	0xd90
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x17
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
	.uleb128 0x15
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.4byte	0x5d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x10d2
	.4byte	0xf91
	.ascii	"guiMenuAddItem\000"
	.4byte	0xfd4
	.ascii	"guiMenuCreateChild\000"
	.4byte	0x108f
	.ascii	"g_neo\000"
	.4byte	0x10b2
	.ascii	"__TGuiMenuTypeHeader__\000"
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
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF24:
	.ascii	"clearColor\000"
.LASF185:
	.ascii	"szText\000"
.LASF42:
	.ascii	"checkpc\000"
.LASF46:
	.ascii	"write8\000"
.LASF93:
	.ascii	"smaBankbit\000"
.LASF203:
	.ascii	"guiMenuCreateChild\000"
.LASF145:
	.ascii	"cpuCheckPcTable\000"
.LASF101:
	.ascii	"spriteMask\000"
.LASF124:
	.ascii	"ctrl3Reg\000"
.LASF51:
	.ascii	"fetch32\000"
.LASF216:
	.ascii	"_TBounds\000"
.LASF205:
	.ascii	"glGlob\000"
.LASF109:
	.ascii	"cpuClocksPerScanline\000"
.LASF58:
	.ascii	"TRead16Func\000"
.LASF75:
	.ascii	"romBankCount\000"
.LASF104:
	.ascii	"tileOffsetX\000"
.LASF143:
	.ascii	"cpuWrite16Table\000"
.LASF14:
	.ascii	"uint32\000"
.LASF20:
	.ascii	"GL_MODELVIEW\000"
.LASF106:
	.ascii	"tileScaleX\000"
.LASF107:
	.ascii	"tileScaleY\000"
.LASF152:
	.ascii	"GUIEVENT_PROCESS\000"
.LASF153:
	.ascii	"GUIEVENT_RENDER\000"
.LASF164:
	.ascii	"GUIEVENTRET_HANDLED\000"
.LASF33:
	.ascii	"_TPoint\000"
.LASF159:
	.ascii	"GUIEVENT_KEYREPEAT\000"
.LASF47:
	.ascii	"write16\000"
.LASF63:
	.ascii	"TCheckPcFunc\000"
.LASF136:
	.ascii	"varEnd\000"
.LASF60:
	.ascii	"TWrite8Func\000"
.LASF43:
	.ascii	"read8\000"
.LASF198:
	.ascii	"__arg__\000"
.LASF161:
	.ascii	"TGuiEventID\000"
.LASF197:
	.ascii	"__pObj__\000"
.LASF72:
	.ascii	"TNeoADPCMBStream\000"
.LASF57:
	.ascii	"TRead8Func\000"
.LASF103:
	.ascii	"pTileBuffer\000"
.LASF141:
	.ascii	"cpuRead32Table\000"
.LASF22:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF165:
	.ascii	"GUIEVENTRET_NOTHANDLED\000"
.LASF8:
	.ascii	"long int\000"
.LASF200:
	.ascii	"yPos\000"
.LASF71:
	.ascii	"frequency\000"
.LASF61:
	.ascii	"TWrite16Func\000"
.LASF49:
	.ascii	"fetch8\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF134:
	.ascii	"keyGrid\000"
.LASF48:
	.ascii	"write32\000"
.LASF52:
	.ascii	"IrqCallback\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF125:
	.ascii	"ctrl4Reg\000"
.LASF158:
	.ascii	"GUIEVENT_KEYUP\000"
.LASF114:
	.ascii	"romBankAddress\000"
.LASF208:
	.ascii	"TAN_bin\000"
.LASF66:
	.ascii	"step\000"
.LASF78:
	.ascii	"adpcmActive\000"
.LASF155:
	.ascii	"GUIEVENT_TOUCHUP\000"
.LASF175:
	.ascii	"pChildren\000"
.LASF98:
	.ascii	"vramBaseMask\000"
.LASF74:
	.ascii	"spriteCount\000"
.LASF54:
	.ascii	"UnrecognizedCallback\000"
.LASF177:
	.ascii	"handler\000"
.LASF192:
	.ascii	"itemCount\000"
.LASF17:
	.ascii	"char\000"
.LASF127:
	.ascii	"irqVectorLatch\000"
.LASF85:
	.ascii	"pVram\000"
.LASF171:
	.ascii	"TGuiEventHandler\000"
.LASF128:
	.ascii	"screenDarkLatch\000"
.LASF37:
	.ascii	"prev_pc\000"
.LASF68:
	.ascii	"_TNeoADPCMBStream\000"
.LASF151:
	.ascii	"GUIEVENT_DESTROY\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF36:
	.ascii	"flags\000"
.LASF16:
	.ascii	"double\000"
.LASF100:
	.ascii	"autoAnimationCounter\000"
.LASF25:
	.ascii	"textures\000"
.LASF19:
	.ascii	"GL_POSITION\000"
.LASF146:
	.ascii	"TNeoContext\000"
.LASF108:
	.ascii	"cpuClockDivide\000"
.LASF96:
	.ascii	"frameCount\000"
.LASF117:
	.ascii	"vramOffset\000"
.LASF215:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF137:
	.ascii	"fill\000"
.LASF40:
	.ascii	"cycles\000"
.LASF144:
	.ascii	"cpuWrite32Table\000"
.LASF167:
	.ascii	"TGUIEVENT_RENDERArg\000"
.LASF131:
	.ascii	"paletteRamLatch\000"
.LASF206:
	.ascii	"COS_bin\000"
.LASF82:
	.ascii	"pRam\000"
.LASF84:
	.ascii	"pCard\000"
.LASF99:
	.ascii	"displayCounter\000"
.LASF56:
	.ascii	"TCycloneContext\000"
.LASF111:
	.ascii	"watchdogCounter\000"
.LASF186:
	.ascii	"TGuiMenuItem\000"
.LASF32:
	.ascii	"TBounds\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF184:
	.ascii	"_TGuiMenuItem\000"
.LASF147:
	.ascii	"GUIEVENT_NULL\000"
.LASF140:
	.ascii	"cpuRead16Table\000"
.LASF120:
	.ascii	"displayControlMask\000"
.LASF150:
	.ascii	"GUIEVENT_CREATE\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF132:
	.ascii	"active\000"
.LASF170:
	.ascii	"TGUIEVENT_KEYUPArg\000"
.LASF34:
	.ascii	"Cyclone\000"
.LASF178:
	.ascii	"bounds\000"
.LASF81:
	.ascii	"pBios\000"
.LASF204:
	.ascii	"pBounds\000"
.LASF102:
	.ascii	"paletteDirty\000"
.LASF207:
	.ascii	"SIN_bin\000"
.LASF183:
	.ascii	"TGuiObject\000"
.LASF23:
	.ascii	"matrixMode\000"
.LASF182:
	.ascii	"TGuiTypeHeader\000"
.LASF188:
	.ascii	"_TGuiMenu\000"
.LASF27:
	.ascii	"nextBlock\000"
.LASF179:
	.ascii	"_TGuiTypeHeader\000"
.LASF176:
	.ascii	"pNextChild\000"
.LASF139:
	.ascii	"cpuRead8Table\000"
.LASF94:
	.ascii	"smaRand\000"
.LASF64:
	.ascii	"_TNeoADPCMStream\000"
.LASF62:
	.ascii	"TWrite32Func\000"
.LASF169:
	.ascii	"keys\000"
.LASF89:
	.ascii	"smaAddr0\000"
.LASF11:
	.ascii	"long long int\000"
.LASF18:
	.ascii	"GL_PROJECTION\000"
.LASF154:
	.ascii	"GUIEVENT_TOUCHDOWN\000"
.LASF126:
	.ascii	"coinReg\000"
.LASF69:
	.ascii	"initOffset\000"
.LASF193:
	.ascii	"itemMax\000"
.LASF55:
	.ascii	"internal\000"
.LASF50:
	.ascii	"fetch16\000"
.LASF148:
	.ascii	"GUIEVENT_ENABLE\000"
.LASF149:
	.ascii	"GUIEVENT_DISABLE\000"
.LASF90:
	.ascii	"smaAddr1\000"
.LASF199:
	.ascii	"__ret__\000"
.LASF35:
	.ascii	"unused\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF119:
	.ascii	"displayControl\000"
.LASF92:
	.ascii	"smaBankoffset\000"
.LASF21:
	.ascii	"GL_TEXTURE\000"
.LASF212:
	.ascii	"__TGuiObjectTypeHeader__\000"
.LASF168:
	.ascii	"TGUIEVENT_KEYREPEATArg\000"
.LASF97:
	.ascii	"pVramBase\000"
.LASF65:
	.ascii	"offset\000"
.LASF79:
	.ascii	"pRom0\000"
.LASF105:
	.ascii	"tileOffsetY\000"
.LASF142:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF191:
	.ascii	"selected\000"
.LASF26:
	.ascii	"activeTexture\000"
.LASF123:
	.ascii	"ctrl2Reg\000"
.LASF44:
	.ascii	"read16\000"
.LASF112:
	.ascii	"paletteBank\000"
.LASF210:
	.ascii	"g_neoContext\000"
.LASF41:
	.ascii	"membase\000"
.LASF213:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF95:
	.ascii	"scanline\000"
.LASF180:
	.ascii	"size\000"
.LASF87:
	.ascii	"pPalette\000"
.LASF202:
	.ascii	"guiMenuAddItem\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF133:
	.ascii	"debug\000"
.LASF80:
	.ascii	"pRom1\000"
.LASF163:
	.ascii	"_TGuiEventReturn\000"
.LASF194:
	.ascii	"guiObjGetHeight\000"
.LASF45:
	.ascii	"read32\000"
.LASF173:
	.ascii	"pType\000"
.LASF86:
	.ascii	"pSpriteRam\000"
.LASF53:
	.ascii	"ResetCallback\000"
.LASF130:
	.ascii	"sramProtectLatch\000"
.LASF113:
	.ascii	"fixedBank\000"
.LASF209:
	.ascii	"g_neo\000"
.LASF29:
	.ascii	"nameCount\000"
.LASF172:
	.ascii	"_TGuiObject\000"
.LASF122:
	.ascii	"ctrl1Reg\000"
.LASF39:
	.ascii	"state_flags\000"
.LASF160:
	.ascii	"GUIEVENT_SELECTED\000"
.LASF189:
	.ascii	"parent\000"
.LASF181:
	.ascii	"szName\000"
.LASF116:
	.ascii	"sramProtection\000"
.LASF83:
	.ascii	"pSram\000"
.LASF70:
	.ascii	"freqCounter\000"
.LASF214:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiMenu.c\000"
.LASF4:
	.ascii	"short int\000"
.LASF135:
	.ascii	"frameCounter\000"
.LASF77:
	.ascii	"adpcmb\000"
.LASF28:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF190:
	.ascii	"pItem\000"
.LASF187:
	.ascii	"TGuiMenu\000"
.LASF121:
	.ascii	"displayCounterLoad\000"
.LASF110:
	.ascii	"irqPending\000"
.LASF156:
	.ascii	"GUIEVENT_TAP\000"
.LASF196:
	.ascii	"this\000"
.LASF195:
	.ascii	"__TGuiMenuTypeHandler__\000"
.LASF59:
	.ascii	"TRead32Func\000"
.LASF157:
	.ascii	"GUIEVENT_KEYDOWN\000"
.LASF211:
	.ascii	"__TGuiMenuTypeHeader__\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF162:
	.ascii	"_TGuiEventID\000"
.LASF166:
	.ascii	"TGuiEventReturn\000"
.LASF76:
	.ascii	"adpcm\000"
.LASF15:
	.ascii	"float\000"
.LASF30:
	.ascii	"gl_hidden_globals\000"
.LASF73:
	.ascii	"pVideoWriteTable\000"
.LASF88:
	.ascii	"bankTable\000"
.LASF91:
	.ascii	"smaBankAddr\000"
.LASF174:
	.ascii	"pParent\000"
.LASF138:
	.ascii	"_TNeoContext\000"
.LASF38:
	.ascii	"reserved\000"
.LASF129:
	.ascii	"fixedRomLatch\000"
.LASF115:
	.ascii	"sramProtectCount\000"
.LASF67:
	.ascii	"TNeoADPCMStream\000"
.LASF31:
	.ascii	"TPoint\000"
.LASF201:
	.ascii	"height\000"
.LASF118:
	.ascii	"vramMod\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
