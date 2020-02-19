	.code	16
	.file	"guiRadioButton.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	guiRadioButtonSetGroup
	.code 16
	.thumb_func
	.type	guiRadioButtonSetGroup, %function
guiRadioButtonSetGroup:
.LFB111:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiRadioButton.c"
	.loc 1 54 0
.LVL0:
	@ lr needed for prologue
	.loc 1 55 0
	str	r1, [r0, #80]
	.loc 1 56 0
	@ sp needed for prologue
	bx	lr
.LFE111:
	.size	guiRadioButtonSetGroup, .-guiRadioButtonSetGroup
	.align	2
	.code 16
	.thumb_func
	.type	__TGuiRadioButtonTypeHandler__, %function
__TGuiRadioButtonTypeHandler__:
.LFB110:
	.loc 1 18 0
	push	{r4, r5, lr}
.LCFI0:
.LVL1:
	sub	sp, sp, #28
.LCFI1:
	.loc 1 18 0
	mov	r4, r0
	cmp	r1, #6
	beq	.L6
.LVL2:
	cmp	r1, #9
	beq	.L7
	cmp	r1, #3
	bne	.L15
.LBB2:
	.loc 1 22 0
	mov	r3, #0
	str	r3, [r0, #80]
.LVL3:
.L15:
	mov	r0, #1
.LVL4:
	b	.L8
.LVL5:
.L6:
.LBE2:
.LBB3:
.LBB4:
	.loc 1 29 0
	mov	r3, r0
	add	r3, r3, #72
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L9
.LVL6:
	mov	r5, #3
.LVL7:
	b	.L11
.LVL8:
.L9:
	mov	r5, #2
.LVL9:
.L11:
	.loc 1 32 0
	mov	r0, r4
.LVL10:
	add	r1, sp, #8
.LVL11:
	bl	guiObjGetGlobalBounds
.LVL12:
	.loc 1 33 0
	mov	r3, #2
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	mov	r2, #2
	str	r5, [sp]
	bl	guiRenderFrame
	.loc 1 34 0
	ldr	r0, [sp, #8]
	mov	r2, r4
	add	r0, r0, #2
	ldr	r1, [sp, #12]
	add	r2, r2, #40
	bl	guiRenderString
	.loc 1 35 0
	mov	r3, r4
	add	r3, r3, #76
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L16
	.loc 1 36 0
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	mov	r2, #14
	bl	guiRenderChar
	b	.L16
.LVL13:
.L7:
.LBE4:
.LBE3:
.LBB5:
.LBB6:
	.loc 1 45 0
	mov	r2, r4
.LVL14:
	ldr	r0, [r0, #4]
	ldr	r1, .L17
.LVL15:
	bl	guiObjForeachChild
.LVL16:
	.loc 1 46 0
	mov	r0, r4
.LVL17:
	mov	r1, #1
	bl	guiCheckboxSetChecked
.LVL18:
	.loc 1 47 0
	mov	r0, r4
.LVL19:
	mov	r1, #13
	mov	r2, #0
	bl	guiObjSendEvent
.LVL20:
.L16:
	mov	r0, #0
.LVL21:
.L8:
.LBE6:
.LBE5:
	.loc 1 51 0
	add	sp, sp, #28
.LVL22:
	@ sp needed for prologue
.LVL23:
.LVL24:
	pop	{r4, r5, pc}
.L18:
	.align	2
.L17:
	.word	radioHandler
.LFE110:
	.size	__TGuiRadioButtonTypeHandler__, .-__TGuiRadioButtonTypeHandler__
	.align	2
	.code 16
	.thumb_func
	.type	radioHandler, %function
radioHandler:
.LFB109:
	.loc 1 7 0
	push	{r4, r5, lr}
.LCFI2:
.LVL25:
	mov	r5, r1
	mov	r4, r0
	sub	sp, sp, #4
.LCFI3:
	.loc 1 8 0
	ldr	r1, .L29
.LVL26:
	mov	r0, r5
.LVL27:
	bl	guiObjIsType_r
	cmp	r0, #0
	bne	.L22
	mov	r5, #0
.LVL28:
.L22:
	.loc 1 9 0
	ldr	r1, .L29
	mov	r0, r4
	bl	guiObjIsType_r
	cmp	r0, #0
	beq	.L28
	.loc 1 11 0
	cmp	r4, #0
	beq	.L28
.LVL29:
	cmp	r4, r5
	beq	.L28
	.loc 1 12 0
	ldr	r2, [r4, #80]
	ldr	r3, [r5, #80]
	cmp	r2, r3
	bne	.L28
	.loc 1 13 0
	mov	r0, r4
.LVL30:
	mov	r1, #0
	bl	guiCheckboxSetChecked
.LVL31:
.LVL32:
.L28:
	.loc 1 16 0
	add	sp, sp, #4
	@ sp needed for prologue
.LVL33:
.LVL34:
	pop	{r4, r5, pc}
.L30:
	.align	2
.L29:
	.word	__TGuiRadioButtonTypeHeader__
.LFE109:
	.size	radioHandler, .-radioHandler
	.global	__TGuiRadioButtonTypeHeader__
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC2:
	.ascii	"TGuiRadioButton\000"
	.section	.rodata
	.align	2
	.type	__TGuiRadioButtonTypeHeader__, %object
	.size	__TGuiRadioButtonTypeHeader__, 16
__TGuiRadioButtonTypeHeader__:
	.word	__TGuiRadioButtonTypeHandler__
	.word	__TGuiCheckboxTypeHeader__
	.word	84
	.word	.LC2
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
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x4
	.4byte	.LCFI0-.LFB110
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x4
	.4byte	.LCFI2-.LFB109
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE4:
	.file 2 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiRadioButton.h"
	.file 3 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiCheckbox.h"
	.file 4 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiButton.h"
	.file 5 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiLabel.h"
	.file 6 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiObject.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiEvent.h"
	.file 8 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 9 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 10 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/Default.h"
	.file 11 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiRender.h"
	.file 12 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 13 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.file 14 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
	.file 15 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h"
	.file 16 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h"
	.file 17 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LFB110-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB109-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x112d
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF228
	.byte	0x1
	.4byte	.LASF229
	.4byte	.LASF230
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x9
	.byte	0x2e
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x9
	.byte	0x39
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x9
	.byte	0x3a
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x9
	.byte	0x53
	.4byte	0x6d
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x9
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
	.byte	0x8
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
	.byte	0x8
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x8
	.byte	0x60
	.4byte	0x50
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x8
	.byte	0x61
	.4byte	0x74
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x8
	.byte	0x65
	.4byte	0x3e
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x8
	.byte	0x66
	.4byte	0x62
	.uleb128 0x6
	.4byte	0x106
	.byte	0x1
	.byte	0x8
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
	.byte	0x8
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
	.byte	0xc
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
	.byte	0xc
	.byte	0xa0
	.4byte	0x127
	.uleb128 0xa
	.4byte	0x1cb
	.2byte	0x2018
	.byte	0xc
	.2byte	0x119
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0xc
	.2byte	0x11a
	.4byte	0x148
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0xc
	.2byte	0x11d
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0xc
	.2byte	0x120
	.4byte	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0xc
	.2byte	0x121
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0xc
	.2byte	0x122
	.4byte	0x1dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0xc
	.2byte	0x123
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0xc
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
	.byte	0xc
	.2byte	0x126
	.4byte	0x153
	.uleb128 0xf
	.byte	0x4
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1f6
	.uleb128 0x10
	.4byte	0x120
	.uleb128 0x11
	.4byte	0x220
	.4byte	.LASF36
	.byte	0x8
	.byte	0xa
	.byte	0xd
	.uleb128 0x12
	.ascii	"x\000"
	.byte	0xa
	.byte	0xe
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.ascii	"y\000"
	.byte	0xa
	.byte	0xf
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0xa
	.byte	0x10
	.4byte	0x1fb
	.uleb128 0x13
	.4byte	0x268
	.byte	0x10
	.byte	0xa
	.byte	0x13
	.uleb128 0x12
	.ascii	"x0\000"
	.byte	0xa
	.byte	0x14
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.ascii	"y0\000"
	.byte	0xa
	.byte	0x15
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.ascii	"x1\000"
	.byte	0xa
	.byte	0x16
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.ascii	"y1\000"
	.byte	0xa
	.byte	0x17
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x13
	.4byte	0x28b
	.byte	0x10
	.byte	0xa
	.byte	0x19
	.uleb128 0x12
	.ascii	"p0\000"
	.byte	0xa
	.byte	0x1a
	.4byte	0x220
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.ascii	"p1\000"
	.byte	0xa
	.byte	0x1b
	.4byte	0x220
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x14
	.4byte	0x2a2
	.4byte	.LASF231
	.byte	0x10
	.byte	0xa
	.byte	0x12
	.uleb128 0x15
	.4byte	0x22b
	.uleb128 0x15
	.4byte	0x268
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0xa
	.byte	0x1d
	.4byte	0x28b
	.uleb128 0x11
	.4byte	0x443
	.4byte	.LASF37
	.byte	0xb0
	.byte	0x10
	.byte	0x15
	.uleb128 0x12
	.ascii	"d\000"
	.byte	0x10
	.byte	0x16
	.4byte	0x443
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.ascii	"a\000"
	.byte	0x10
	.byte	0x17
	.4byte	0x443
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.ascii	"pc\000"
	.byte	0x10
	.byte	0x18
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.ascii	"srh\000"
	.byte	0x10
	.byte	0x19
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x10
	.byte	0x1a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x16
	.4byte	.LASF39
	.byte	0x10
	.byte	0x1b
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x12
	.ascii	"irq\000"
	.byte	0x10
	.byte	0x1c
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x12
	.ascii	"osp\000"
	.byte	0x10
	.byte	0x1d
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.ascii	"xc\000"
	.byte	0x10
	.byte	0x1e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x10
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0x10
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x16
	.4byte	.LASF42
	.byte	0x10
	.byte	0x21
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x10
	.byte	0x22
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x16
	.4byte	.LASF44
	.byte	0x10
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x16
	.4byte	.LASF45
	.byte	0x10
	.byte	0x24
	.4byte	0x463
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x10
	.byte	0x25
	.4byte	0x463
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x10
	.byte	0x26
	.4byte	0x463
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x10
	.byte	0x27
	.4byte	0x463
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0x10
	.byte	0x28
	.4byte	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x10
	.byte	0x29
	.4byte	0x491
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x10
	.byte	0x2a
	.4byte	0x4a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x10
	.byte	0x2b
	.4byte	0x463
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x10
	.byte	0x2c
	.4byte	0x463
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0x10
	.byte	0x2d
	.4byte	0x463
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x16
	.4byte	.LASF55
	.byte	0x10
	.byte	0x2e
	.4byte	0x4be
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x16
	.4byte	.LASF56
	.byte	0x10
	.byte	0x2f
	.4byte	0x111
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x16
	.4byte	.LASF57
	.byte	0x10
	.byte	0x30
	.4byte	0x4ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x16
	.4byte	.LASF58
	.byte	0x10
	.byte	0x31
	.4byte	0x4d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xc
	.4byte	0x453
	.4byte	0x9b
	.uleb128 0x17
	.4byte	0x119
	.byte	0x7
	.byte	0x0
	.uleb128 0x18
	.4byte	0x463
	.byte	0x1
	.4byte	0x9b
	.uleb128 0x19
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x453
	.uleb128 0x1a
	.4byte	0x47a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9b
	.uleb128 0x19
	.4byte	0x37
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x469
	.uleb128 0x1a
	.4byte	0x491
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9b
	.uleb128 0x19
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x480
	.uleb128 0x1a
	.4byte	0x4a8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9b
	.uleb128 0x19
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x497
	.uleb128 0x18
	.4byte	0x4be
	.byte	0x1
	.4byte	0x94
	.uleb128 0x19
	.4byte	0x94
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4ae
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x94
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4c4
	.uleb128 0xc
	.4byte	0x4e0
	.4byte	0x9b
	.uleb128 0x17
	.4byte	0x119
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0xf
	.byte	0x6
	.4byte	0x2ad
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xf
	.byte	0x8
	.4byte	0x4f6
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4fc
	.uleb128 0x18
	.4byte	0x50c
	.byte	0x1
	.4byte	0xbb
	.uleb128 0x19
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xf
	.byte	0x9
	.4byte	0x517
	.uleb128 0x8
	.byte	0x4
	.4byte	0x51d
	.uleb128 0x18
	.4byte	0x52d
	.byte	0x1
	.4byte	0xc5
	.uleb128 0x19
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xf
	.byte	0xa
	.4byte	0x538
	.uleb128 0x8
	.byte	0x4
	.4byte	0x53e
	.uleb128 0x18
	.4byte	0x54e
	.byte	0x1
	.4byte	0xd0
	.uleb128 0x19
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xf
	.byte	0xc
	.4byte	0x559
	.uleb128 0x8
	.byte	0x4
	.4byte	0x55f
	.uleb128 0x1a
	.4byte	0x570
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd0
	.uleb128 0x19
	.4byte	0xbb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xf
	.byte	0xd
	.4byte	0x57b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x581
	.uleb128 0x1a
	.4byte	0x592
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd0
	.uleb128 0x19
	.4byte	0xc5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xf
	.byte	0xe
	.4byte	0x59d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5a3
	.uleb128 0x1a
	.4byte	0x5b4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd0
	.uleb128 0x19
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xf
	.byte	0x10
	.4byte	0x538
	.uleb128 0x11
	.4byte	0x604
	.4byte	.LASF67
	.byte	0xc
	.byte	0x11
	.byte	0x17
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x11
	.byte	0x18
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.ascii	"end\000"
	.byte	0x11
	.byte	0x19
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.ascii	"acc\000"
	.byte	0x11
	.byte	0x1a
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x11
	.byte	0x1b
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x11
	.byte	0x1c
	.4byte	0x5bf
	.uleb128 0x11
	.4byte	0x646
	.4byte	.LASF71
	.byte	0xc
	.byte	0x11
	.byte	0x1f
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x11
	.byte	0x20
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x11
	.byte	0x21
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0x11
	.byte	0x22
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x11
	.byte	0x23
	.4byte	0x60f
	.uleb128 0x1c
	.4byte	0xa3f
	.2byte	0x248
	.byte	0xe
	.byte	0xc0
	.uleb128 0x12
	.ascii	"cpu\000"
	.byte	0xe
	.byte	0xc1
	.4byte	0x4e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0xe
	.byte	0xc4
	.4byte	0xa3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0xe
	.byte	0xc7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0xe
	.byte	0xc8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0xe
	.byte	0xcb
	.4byte	0xa4f
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0xe
	.byte	0xcc
	.4byte	0x646
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0xe
	.byte	0xcd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0xe
	.byte	0xd0
	.4byte	0xa5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0xe
	.byte	0xd1
	.4byte	0xa5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0xe
	.byte	0xd2
	.4byte	0xa5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0xe
	.byte	0xd3
	.4byte	0xa5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0xe
	.byte	0xd4
	.4byte	0xa5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0xe
	.byte	0xd5
	.4byte	0xa5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0xe
	.byte	0xd6
	.4byte	0xa65
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0xe
	.byte	0xd7
	.4byte	0xa65
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0xe
	.byte	0xd8
	.4byte	0xa65
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0xe
	.byte	0xda
	.4byte	0xa6b
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0xe
	.byte	0xdd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0xe
	.byte	0xde
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0xe
	.byte	0xdf
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0xe
	.byte	0xe0
	.4byte	0xa7c
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0xe
	.byte	0xe1
	.4byte	0xa7c
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0xe
	.byte	0xe2
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0xe
	.byte	0xe5
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x16
	.4byte	.LASF99
	.byte	0xe
	.byte	0xe6
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0xe
	.byte	0xe7
	.4byte	0xa65
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0xe
	.byte	0xe8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0xe
	.byte	0xea
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0xe
	.byte	0xeb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0xe
	.byte	0xec
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0xe
	.byte	0xed
	.4byte	0xa87
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0xe
	.byte	0xee
	.4byte	0xa65
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0xe
	.byte	0xf1
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0xe
	.byte	0xf2
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0xe
	.byte	0xf3
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0xe
	.byte	0xf4
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0xe
	.byte	0xf7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0xe
	.byte	0xf8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0xe
	.byte	0xf9
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0xe
	.byte	0xfa
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0xe
	.byte	0xfb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0xe
	.byte	0xfc
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0xe
	.byte	0xfd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0xe
	.2byte	0x102
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0xe
	.2byte	0x103
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0xe
	.2byte	0x106
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0xe
	.2byte	0x108
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0xe
	.2byte	0x109
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0xe
	.2byte	0x10a
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0xe
	.2byte	0x10b
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0xe
	.2byte	0x10d
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0xe
	.2byte	0x10e
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0xe
	.2byte	0x10f
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0xe
	.2byte	0x110
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0xe
	.2byte	0x111
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0xe
	.2byte	0x114
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0xe
	.2byte	0x115
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0xe
	.2byte	0x116
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0xe
	.2byte	0x117
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0xe
	.2byte	0x118
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xe
	.2byte	0x11b
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0xe
	.2byte	0x11c
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xe
	.2byte	0x11f
	.4byte	0xa97
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xe
	.2byte	0x122
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0xe
	.2byte	0x123
	.4byte	0xaa7
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa4f
	.4byte	0x1ee
	.uleb128 0x17
	.4byte	0x119
	.byte	0x8
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa5f
	.4byte	0x604
	.uleb128 0x17
	.4byte	0x119
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc5
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa71
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa77
	.uleb128 0x10
	.4byte	0xbb
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa82
	.uleb128 0x10
	.4byte	0xd0
	.uleb128 0xc
	.4byte	0xa97
	.4byte	0xd0
	.uleb128 0x17
	.4byte	0x119
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.4byte	0xaa7
	.4byte	0xbb
	.uleb128 0x17
	.4byte	0x119
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.4byte	0xab6
	.4byte	0xbb
	.uleb128 0x1d
	.4byte	0x119
	.byte	0x0
	.uleb128 0x1e
	.4byte	0xad1
	.2byte	0x400
	.byte	0xe
	.byte	0xbf
	.uleb128 0x15
	.4byte	0x651
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0xe
	.2byte	0x125
	.4byte	0xad1
	.byte	0x0
	.uleb128 0xc
	.4byte	0xae1
	.4byte	0xd0
	.uleb128 0x17
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0x20
	.4byte	0xb67
	.4byte	.LASF141
	.2byte	0x2000
	.byte	0xe
	.byte	0xbe
	.uleb128 0x21
	.4byte	0xab6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xe
	.2byte	0x128
	.4byte	0xb67
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xe
	.2byte	0x129
	.4byte	0xb77
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0xe
	.2byte	0x12a
	.4byte	0xb87
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0xe
	.2byte	0x12b
	.4byte	0xb97
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0xe
	.2byte	0x12c
	.4byte	0xba7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xe
	.2byte	0x12d
	.4byte	0xbb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0xe
	.2byte	0x12e
	.4byte	0xbc7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb77
	.4byte	0x4eb
	.uleb128 0x17
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb87
	.4byte	0x50c
	.uleb128 0x17
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb97
	.4byte	0x52d
	.uleb128 0x17
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xba7
	.4byte	0x54e
	.uleb128 0x17
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbb7
	.4byte	0x570
	.uleb128 0x17
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbc7
	.4byte	0x592
	.uleb128 0x17
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbd7
	.4byte	0x5b4
	.uleb128 0x17
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF149
	.byte	0xe
	.2byte	0x12f
	.4byte	0xae1
	.uleb128 0x22
	.4byte	0xc44
	.4byte	.LASF165
	.byte	0x1
	.byte	0x7
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF150
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF151
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF152
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF153
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF154
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF155
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF156
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF157
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF158
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF159
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF160
	.sleb128 10
	.uleb128 0x7
	.4byte	.LASF161
	.sleb128 11
	.uleb128 0x7
	.4byte	.LASF162
	.sleb128 12
	.uleb128 0x7
	.4byte	.LASF163
	.sleb128 13
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF164
	.byte	0x7
	.byte	0x17
	.4byte	0xbe3
	.uleb128 0x22
	.4byte	0xc68
	.4byte	.LASF166
	.byte	0x1
	.byte	0x7
	.byte	0x19
	.uleb128 0x7
	.4byte	.LASF167
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF168
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF169
	.byte	0x7
	.byte	0x1c
	.4byte	0xc4f
	.uleb128 0x3
	.4byte	.LASF170
	.byte	0x7
	.byte	0x2a
	.4byte	0x1ee
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0x7
	.byte	0x2d
	.4byte	0x1ee
	.uleb128 0x3
	.4byte	.LASF172
	.byte	0x7
	.byte	0x30
	.4byte	0xc94
	.uleb128 0x11
	.4byte	0xcbd
	.4byte	.LASF172
	.byte	0x8
	.byte	0x7
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF173
	.byte	0x7
	.byte	0x31
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF174
	.byte	0x7
	.byte	0x32
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF175
	.byte	0x6
	.byte	0xc
	.4byte	0xcc8
	.uleb128 0x8
	.byte	0x4
	.4byte	0xcce
	.uleb128 0x18
	.4byte	0xce8
	.byte	0x1
	.4byte	0xc68
	.uleb128 0x19
	.4byte	0xce8
	.uleb128 0x19
	.4byte	0xc44
	.uleb128 0x19
	.4byte	0x1ee
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xcee
	.uleb128 0x11
	.4byte	0xd5d
	.4byte	.LASF176
	.byte	0x28
	.byte	0x6
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF177
	.byte	0x6
	.byte	0x1b
	.4byte	0xdb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF178
	.byte	0x6
	.byte	0x1c
	.4byte	0xce8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF179
	.byte	0x6
	.byte	0x1d
	.4byte	0xce8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF180
	.byte	0x6
	.byte	0x1e
	.4byte	0xce8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF181
	.byte	0x6
	.byte	0x1f
	.4byte	0xcbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.4byte	.LASF39
	.byte	0x6
	.byte	0x20
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.4byte	.LASF182
	.byte	0x6
	.byte	0x21
	.4byte	0x2a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x11
	.4byte	0xda2
	.4byte	.LASF183
	.byte	0x10
	.byte	0x6
	.byte	0xe
	.uleb128 0x16
	.4byte	.LASF181
	.byte	0x6
	.byte	0xf
	.4byte	0xcbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF178
	.byte	0x6
	.byte	0x10
	.4byte	0xda2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF184
	.byte	0x6
	.byte	0x11
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF185
	.byte	0x6
	.byte	0x12
	.4byte	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xda8
	.uleb128 0x10
	.4byte	0xd5d
	.uleb128 0x3
	.4byte	.LASF186
	.byte	0x6
	.byte	0x13
	.4byte	0xd5d
	.uleb128 0x8
	.byte	0x4
	.4byte	0xdbe
	.uleb128 0x10
	.4byte	0xdad
	.uleb128 0x3
	.4byte	.LASF187
	.byte	0x6
	.byte	0x22
	.4byte	0xcee
	.uleb128 0x8
	.byte	0x4
	.4byte	0xdc3
	.uleb128 0x22
	.4byte	0xdf9
	.4byte	.LASF188
	.byte	0x1
	.byte	0xb
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF189
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF190
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF191
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF192
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF193
	.byte	0xb
	.byte	0xc
	.4byte	0xdd4
	.uleb128 0x3
	.4byte	.LASF194
	.byte	0x5
	.byte	0x6
	.4byte	0xe0f
	.uleb128 0x11
	.4byte	0xe38
	.4byte	.LASF195
	.byte	0x48
	.byte	0x5
	.byte	0x6
	.uleb128 0x16
	.4byte	.LASF196
	.byte	0x5
	.byte	0x6
	.4byte	0xdc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF197
	.byte	0x5
	.byte	0x7
	.4byte	0xe38
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0xc
	.4byte	0xe48
	.4byte	0x120
	.uleb128 0x17
	.4byte	0x119
	.byte	0x1f
	.byte	0x0
	.uleb128 0x22
	.4byte	0xe61
	.4byte	.LASF198
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF199
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF200
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF201
	.byte	0x4
	.byte	0x9
	.4byte	0xe48
	.uleb128 0x3
	.4byte	.LASF202
	.byte	0x4
	.byte	0xb
	.4byte	0xe77
	.uleb128 0x11
	.4byte	0xea0
	.4byte	.LASF203
	.byte	0x4c
	.byte	0x4
	.byte	0xb
	.uleb128 0x16
	.4byte	.LASF196
	.byte	0x4
	.byte	0xb
	.4byte	0xe04
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF204
	.byte	0x4
	.byte	0xc
	.4byte	0xe61
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF205
	.byte	0x3
	.byte	0x6
	.4byte	0xeab
	.uleb128 0x11
	.4byte	0xed4
	.4byte	.LASF206
	.byte	0x50
	.byte	0x3
	.byte	0x6
	.uleb128 0x16
	.4byte	.LASF196
	.byte	0x3
	.byte	0x6
	.4byte	0xe6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF207
	.byte	0x3
	.byte	0x7
	.4byte	0x106
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF208
	.byte	0x2
	.byte	0x6
	.4byte	0xedf
	.uleb128 0x11
	.4byte	0xf08
	.4byte	.LASF209
	.byte	0x54
	.byte	0x2
	.byte	0x6
	.uleb128 0x16
	.4byte	.LASF196
	.byte	0x2
	.byte	0x6
	.4byte	0xea0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF210
	.byte	0x2
	.byte	0x7
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0x0
	.uleb128 0x23
	.4byte	0xf3a
	.byte	0x1
	.4byte	.LASF232
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.4byte	.LFB111
	.4byte	.LFE111
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.4byte	.LASF211
	.byte	0x1
	.byte	0x35
	.4byte	0xf3a
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.4byte	.LASF210
	.byte	0x1
	.byte	0x35
	.4byte	0xd0
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xed4
	.uleb128 0x25
	.4byte	0x102d
	.4byte	.LASF217
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.4byte	0xc68
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST1
	.uleb128 0x26
	.4byte	.LASF212
	.byte	0x1
	.byte	0x12
	.4byte	0xce8
	.4byte	.LLST2
	.uleb128 0x27
	.ascii	"e\000"
	.byte	0x1
	.byte	0x12
	.4byte	0xc44
	.4byte	.LLST3
	.uleb128 0x26
	.4byte	.LASF213
	.byte	0x1
	.byte	0x12
	.4byte	0x1ee
	.4byte	.LLST4
	.uleb128 0x28
	.4byte	.LASF211
	.byte	0x1
	.byte	0x12
	.4byte	0xf3a
	.4byte	.LLST5
	.uleb128 0x28
	.4byte	.LASF214
	.byte	0x1
	.byte	0x12
	.4byte	0xc68
	.4byte	.LLST6
	.uleb128 0x29
	.4byte	0xfbe
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x2a
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x14
	.4byte	0x102d
	.byte	0x0
	.uleb128 0x29
	.4byte	0xffe
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x2a
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x19
	.4byte	0x1033
	.uleb128 0x2b
	.4byte	.LBB4
	.4byte	.LBE4
	.uleb128 0x28
	.4byte	.LASF215
	.byte	0x1
	.byte	0x1b
	.4byte	0xdf9
	.4byte	.LLST7
	.uleb128 0x2c
	.4byte	.LASF182
	.byte	0x1
	.byte	0x1c
	.4byte	0x2a2
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x2a
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x29
	.4byte	0x1039
	.uleb128 0x2b
	.4byte	.LBB6
	.4byte	.LBE6
	.uleb128 0x28
	.4byte	.LASF216
	.byte	0x1
	.byte	0x2b
	.4byte	0xdce
	.4byte	.LLST8
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc73
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc7e
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc89
	.uleb128 0x2d
	.4byte	0x1094
	.4byte	.LASF218
	.byte	0x1
	.byte	0x7
	.byte	0x1
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LLST9
	.uleb128 0x26
	.4byte	.LASF216
	.byte	0x1
	.byte	0x6
	.4byte	0xdce
	.4byte	.LLST10
	.uleb128 0x27
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x6
	.4byte	0x1ee
	.4byte	.LLST11
	.uleb128 0x28
	.4byte	.LASF211
	.byte	0x1
	.byte	0x8
	.4byte	0xf3a
	.4byte	.LLST12
	.uleb128 0x28
	.4byte	.LASF219
	.byte	0x1
	.byte	0x9
	.4byte	0xf3a
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x2e
	.4byte	.LASF220
	.byte	0xc
	.2byte	0x129
	.4byte	0x10a0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1e2
	.uleb128 0xc
	.4byte	0x10b1
	.4byte	0x49
	.uleb128 0x2f
	.byte	0x0
	.uleb128 0x30
	.4byte	.LASF221
	.byte	0xd
	.byte	0x2c
	.4byte	0x10a6
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x10c9
	.4byte	0x49
	.uleb128 0x2f
	.byte	0x0
	.uleb128 0x30
	.4byte	.LASF222
	.byte	0xd
	.byte	0x2d
	.4byte	0x10be
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x10e1
	.4byte	0x49
	.uleb128 0x2f
	.byte	0x0
	.uleb128 0x30
	.4byte	.LASF223
	.byte	0xd
	.byte	0x2e
	.4byte	0x10d6
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.4byte	.LASF224
	.byte	0xe
	.2byte	0x149
	.4byte	0x10fd
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbd7
	.uleb128 0x32
	.4byte	.LASF225
	.byte	0xe
	.2byte	0x14d
	.4byte	0xbd7
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF226
	.byte	0x1
	.byte	0x12
	.4byte	0xdbe
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF227
	.byte	0x1
	.byte	0x12
	.4byte	0xdbe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__TGuiRadioButtonTypeHeader__
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.4byte	0x55
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1131
	.4byte	0xf08
	.ascii	"guiRadioButtonSetGroup\000"
	.4byte	0x10ee
	.ascii	"g_neo\000"
	.4byte	0x111e
	.ascii	"__TGuiRadioButtonTypeHeader__\000"
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
.LASF197:
	.ascii	"szText\000"
.LASF45:
	.ascii	"checkpc\000"
.LASF49:
	.ascii	"write8\000"
.LASF96:
	.ascii	"smaBankbit\000"
.LASF148:
	.ascii	"cpuCheckPcTable\000"
.LASF104:
	.ascii	"spriteMask\000"
.LASF127:
	.ascii	"ctrl3Reg\000"
.LASF54:
	.ascii	"fetch32\000"
.LASF231:
	.ascii	"_TBounds\000"
.LASF220:
	.ascii	"glGlob\000"
.LASF112:
	.ascii	"cpuClocksPerScanline\000"
.LASF61:
	.ascii	"TRead16Func\000"
.LASF78:
	.ascii	"romBankCount\000"
.LASF107:
	.ascii	"tileOffsetX\000"
.LASF146:
	.ascii	"cpuWrite16Table\000"
.LASF14:
	.ascii	"uint32\000"
.LASF23:
	.ascii	"GL_MODELVIEW\000"
.LASF109:
	.ascii	"tileScaleX\000"
.LASF110:
	.ascii	"tileScaleY\000"
.LASF155:
	.ascii	"GUIEVENT_PROCESS\000"
.LASF156:
	.ascii	"GUIEVENT_RENDER\000"
.LASF200:
	.ascii	"GUIBUTTON_PRESSED\000"
.LASF203:
	.ascii	"_TGuiButton\000"
.LASF167:
	.ascii	"GUIEVENTRET_HANDLED\000"
.LASF36:
	.ascii	"_TPoint\000"
.LASF162:
	.ascii	"GUIEVENT_KEYREPEAT\000"
.LASF50:
	.ascii	"write16\000"
.LASF66:
	.ascii	"TCheckPcFunc\000"
.LASF139:
	.ascii	"varEnd\000"
.LASF207:
	.ascii	"checked\000"
.LASF63:
	.ascii	"TWrite8Func\000"
.LASF46:
	.ascii	"read8\000"
.LASF202:
	.ascii	"TGuiButton\000"
.LASF213:
	.ascii	"__arg__\000"
.LASF164:
	.ascii	"TGuiEventID\000"
.LASF212:
	.ascii	"__pObj__\000"
.LASF193:
	.ascii	"TGuiBorderStyle\000"
.LASF75:
	.ascii	"TNeoADPCMBStream\000"
.LASF60:
	.ascii	"TRead8Func\000"
.LASF106:
	.ascii	"pTileBuffer\000"
.LASF144:
	.ascii	"cpuRead32Table\000"
.LASF25:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF168:
	.ascii	"GUIEVENTRET_NOTHANDLED\000"
.LASF8:
	.ascii	"long int\000"
.LASF174:
	.ascii	"yPos\000"
.LASF74:
	.ascii	"frequency\000"
.LASF192:
	.ascii	"GUIBORDER_ROUND_PRESSED\000"
.LASF208:
	.ascii	"TGuiRadioButton\000"
.LASF64:
	.ascii	"TWrite16Func\000"
.LASF52:
	.ascii	"fetch8\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF137:
	.ascii	"keyGrid\000"
.LASF210:
	.ascii	"group\000"
.LASF51:
	.ascii	"write32\000"
.LASF188:
	.ascii	"_TGuiBorderStyle\000"
.LASF55:
	.ascii	"IrqCallback\000"
.LASF0:
	.ascii	"signed char\000"
.LASF201:
	.ascii	"TGuiButtonState\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF128:
	.ascii	"ctrl4Reg\000"
.LASF161:
	.ascii	"GUIEVENT_KEYUP\000"
.LASF199:
	.ascii	"GUIBUTTON_NORMAL\000"
.LASF117:
	.ascii	"romBankAddress\000"
.LASF223:
	.ascii	"TAN_bin\000"
.LASF69:
	.ascii	"step\000"
.LASF81:
	.ascii	"adpcmActive\000"
.LASF158:
	.ascii	"GUIEVENT_TOUCHUP\000"
.LASF179:
	.ascii	"pChildren\000"
.LASF101:
	.ascii	"vramBaseMask\000"
.LASF77:
	.ascii	"spriteCount\000"
.LASF57:
	.ascii	"UnrecognizedCallback\000"
.LASF181:
	.ascii	"handler\000"
.LASF218:
	.ascii	"radioHandler\000"
.LASF226:
	.ascii	"__TGuiCheckboxTypeHeader__\000"
.LASF20:
	.ascii	"char\000"
.LASF130:
	.ascii	"irqVectorLatch\000"
.LASF88:
	.ascii	"pVram\000"
.LASF175:
	.ascii	"TGuiEventHandler\000"
.LASF131:
	.ascii	"screenDarkLatch\000"
.LASF40:
	.ascii	"prev_pc\000"
.LASF71:
	.ascii	"_TNeoADPCMBStream\000"
.LASF154:
	.ascii	"GUIEVENT_DESTROY\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF227:
	.ascii	"__TGuiRadioButtonTypeHeader__\000"
.LASF39:
	.ascii	"flags\000"
.LASF16:
	.ascii	"double\000"
.LASF103:
	.ascii	"autoAnimationCounter\000"
.LASF28:
	.ascii	"textures\000"
.LASF22:
	.ascii	"GL_POSITION\000"
.LASF149:
	.ascii	"TNeoContext\000"
.LASF111:
	.ascii	"cpuClockDivide\000"
.LASF99:
	.ascii	"frameCount\000"
.LASF120:
	.ascii	"vramOffset\000"
.LASF230:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF140:
	.ascii	"fill\000"
.LASF217:
	.ascii	"__TGuiRadioButtonTypeHandler__\000"
.LASF43:
	.ascii	"cycles\000"
.LASF147:
	.ascii	"cpuWrite32Table\000"
.LASF171:
	.ascii	"TGUIEVENT_RENDERArg\000"
.LASF134:
	.ascii	"paletteRamLatch\000"
.LASF221:
	.ascii	"COS_bin\000"
.LASF85:
	.ascii	"pRam\000"
.LASF87:
	.ascii	"pCard\000"
.LASF102:
	.ascii	"displayCounter\000"
.LASF59:
	.ascii	"TCycloneContext\000"
.LASF195:
	.ascii	"_TGuiLabel\000"
.LASF114:
	.ascii	"watchdogCounter\000"
.LASF35:
	.ascii	"TBounds\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF150:
	.ascii	"GUIEVENT_NULL\000"
.LASF143:
	.ascii	"cpuRead16Table\000"
.LASF123:
	.ascii	"displayControlMask\000"
.LASF153:
	.ascii	"GUIEVENT_CREATE\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF135:
	.ascii	"active\000"
.LASF37:
	.ascii	"Cyclone\000"
.LASF182:
	.ascii	"bounds\000"
.LASF84:
	.ascii	"pBios\000"
.LASF105:
	.ascii	"paletteDirty\000"
.LASF222:
	.ascii	"SIN_bin\000"
.LASF187:
	.ascii	"TGuiObject\000"
.LASF26:
	.ascii	"matrixMode\000"
.LASF186:
	.ascii	"TGuiTypeHeader\000"
.LASF30:
	.ascii	"nextBlock\000"
.LASF183:
	.ascii	"_TGuiTypeHeader\000"
.LASF180:
	.ascii	"pNextChild\000"
.LASF142:
	.ascii	"cpuRead8Table\000"
.LASF97:
	.ascii	"smaRand\000"
.LASF67:
	.ascii	"_TNeoADPCMStream\000"
.LASF65:
	.ascii	"TWrite32Func\000"
.LASF92:
	.ascii	"smaAddr0\000"
.LASF11:
	.ascii	"long long int\000"
.LASF21:
	.ascii	"GL_PROJECTION\000"
.LASF157:
	.ascii	"GUIEVENT_TOUCHDOWN\000"
.LASF129:
	.ascii	"coinReg\000"
.LASF72:
	.ascii	"initOffset\000"
.LASF58:
	.ascii	"internal\000"
.LASF198:
	.ascii	"_TGuiButtonState\000"
.LASF53:
	.ascii	"fetch16\000"
.LASF151:
	.ascii	"GUIEVENT_ENABLE\000"
.LASF206:
	.ascii	"_TGuiCheckbox\000"
.LASF152:
	.ascii	"GUIEVENT_DISABLE\000"
.LASF93:
	.ascii	"smaAddr1\000"
.LASF214:
	.ascii	"__ret__\000"
.LASF38:
	.ascii	"unused\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF189:
	.ascii	"GUIBORDER_NORMAL\000"
.LASF122:
	.ascii	"displayControl\000"
.LASF216:
	.ascii	"pObj\000"
.LASF95:
	.ascii	"smaBankoffset\000"
.LASF24:
	.ascii	"GL_TEXTURE\000"
.LASF191:
	.ascii	"GUIBORDER_ROUND_NORMAL\000"
.LASF100:
	.ascii	"pVramBase\000"
.LASF68:
	.ascii	"offset\000"
.LASF82:
	.ascii	"pRom0\000"
.LASF108:
	.ascii	"tileOffsetY\000"
.LASF145:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF19:
	.ascii	"bool\000"
.LASF29:
	.ascii	"activeTexture\000"
.LASF126:
	.ascii	"ctrl2Reg\000"
.LASF47:
	.ascii	"read16\000"
.LASF232:
	.ascii	"guiRadioButtonSetGroup\000"
.LASF115:
	.ascii	"paletteBank\000"
.LASF215:
	.ascii	"style\000"
.LASF225:
	.ascii	"g_neoContext\000"
.LASF44:
	.ascii	"membase\000"
.LASF228:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF98:
	.ascii	"scanline\000"
.LASF184:
	.ascii	"size\000"
.LASF90:
	.ascii	"pPalette\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF136:
	.ascii	"debug\000"
.LASF204:
	.ascii	"state\000"
.LASF83:
	.ascii	"pRom1\000"
.LASF166:
	.ascii	"_TGuiEventReturn\000"
.LASF48:
	.ascii	"read32\000"
.LASF172:
	.ascii	"TGUIEVENT_TAPArg\000"
.LASF177:
	.ascii	"pType\000"
.LASF89:
	.ascii	"pSpriteRam\000"
.LASF190:
	.ascii	"GUIBORDER_PRESSED\000"
.LASF56:
	.ascii	"ResetCallback\000"
.LASF133:
	.ascii	"sramProtectLatch\000"
.LASF116:
	.ascii	"fixedBank\000"
.LASF224:
	.ascii	"g_neo\000"
.LASF194:
	.ascii	"TGuiLabel\000"
.LASF32:
	.ascii	"nameCount\000"
.LASF17:
	.ascii	"false\000"
.LASF176:
	.ascii	"_TGuiObject\000"
.LASF125:
	.ascii	"ctrl1Reg\000"
.LASF42:
	.ascii	"state_flags\000"
.LASF163:
	.ascii	"GUIEVENT_SELECTED\000"
.LASF196:
	.ascii	"parent\000"
.LASF185:
	.ascii	"szName\000"
.LASF119:
	.ascii	"sramProtection\000"
.LASF170:
	.ascii	"TGUIEVENT_CREATEArg\000"
.LASF219:
	.ascii	"pOther\000"
.LASF86:
	.ascii	"pSram\000"
.LASF73:
	.ascii	"freqCounter\000"
.LASF4:
	.ascii	"short int\000"
.LASF138:
	.ascii	"frameCounter\000"
.LASF80:
	.ascii	"adpcmb\000"
.LASF173:
	.ascii	"xPos\000"
.LASF31:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF18:
	.ascii	"true\000"
.LASF124:
	.ascii	"displayCounterLoad\000"
.LASF113:
	.ascii	"irqPending\000"
.LASF159:
	.ascii	"GUIEVENT_TAP\000"
.LASF211:
	.ascii	"this\000"
.LASF62:
	.ascii	"TRead32Func\000"
.LASF209:
	.ascii	"_TGuiRadioButton\000"
.LASF229:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiRadioButt"
	.ascii	"on.c\000"
.LASF160:
	.ascii	"GUIEVENT_KEYDOWN\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF165:
	.ascii	"_TGuiEventID\000"
.LASF169:
	.ascii	"TGuiEventReturn\000"
.LASF79:
	.ascii	"adpcm\000"
.LASF15:
	.ascii	"float\000"
.LASF33:
	.ascii	"gl_hidden_globals\000"
.LASF76:
	.ascii	"pVideoWriteTable\000"
.LASF91:
	.ascii	"bankTable\000"
.LASF94:
	.ascii	"smaBankAddr\000"
.LASF178:
	.ascii	"pParent\000"
.LASF141:
	.ascii	"_TNeoContext\000"
.LASF205:
	.ascii	"TGuiCheckbox\000"
.LASF41:
	.ascii	"reserved\000"
.LASF132:
	.ascii	"fixedRomLatch\000"
.LASF118:
	.ascii	"sramProtectCount\000"
.LASF70:
	.ascii	"TNeoADPCMStream\000"
.LASF34:
	.ascii	"TPoint\000"
.LASF121:
	.ascii	"vramMod\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"