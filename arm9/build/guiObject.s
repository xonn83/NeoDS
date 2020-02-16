	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"guiObject.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.code	16
	.thumb_func
	.type	__TGuiObjectTypeHandler__, %function
__TGuiObjectTypeHandler__:
.LFB168:
	.file 1 "C:/Users/GRX/NeoDS/arm9/source/guiObject.c"
	.loc 1 5 0
.LVL0:
	.loc 1 7 0
	mov	r0, #1
.LVL1:
	@ sp needed for prologue
	bx	lr
.LFE168:
	.size	__TGuiObjectTypeHandler__, .-__TGuiObjectTypeHandler__
	.align	2
	.global	guiObjIsType_r
	.code	16
	.thumb_func
	.type	guiObjIsType_r, %function
guiObjIsType_r:
.LFB169:
	.loc 1 17 0
	push	{lr}
.LCFI0:
.LVL2:
	.loc 1 18 0
	ldr	r3, [r0]
.LVL3:
	.loc 1 19 0
	b	.L4
.L7:
	.loc 1 20 0
	cmp	r3, r1
	bne	.L5
	mov	r0, #1
.LVL4:
	b	.L6
.LVL5:
.L5:
	.loc 1 21 0
	ldr	r3, [r3, #4]
.L4:
	.loc 1 19 0
	cmp	r3, #0
	bne	.L7
	mov	r0, #0
.LVL6:
.L6:
	.loc 1 24 0
	@ sp needed for prologue
	pop	{pc}
.LFE169:
	.size	guiObjIsType_r, .-guiObjIsType_r
	.align	2
	.global	guiObjGetGlobalBounds
	.code	16
	.thumb_func
	.type	guiObjGetGlobalBounds, %function
guiObjGetGlobalBounds:
.LFB170:
	.loc 1 27 0
	push	{r4, r5, r6, lr}
.LCFI1:
.LVL7:
	sub	sp, sp, #8
.LCFI2:
	.loc 1 29 0
	ldr	r3, [r0, #36]
	.loc 1 28 0
	ldr	r6, [r0, #32]
	ldr	r5, [r0, #24]
.LVL8:
	.loc 1 29 0
	str	r3, [sp, #4]
	ldr	r4, [r0, #28]
.LVL9:
	.loc 1 32 0
	ldr	r3, [r0, #4]
.LVL10:
	mov	r2, r4
	mov	r0, r5
.LVL11:
	mov	ip, r1
	.loc 1 33 0
	b	.L11
.LVL12:
.L12:
	.loc 1 34 0
	ldr	r1, [r3, #24]
	add	r0, r0, r1
.LVL13:
	.loc 1 35 0
	ldr	r1, [r3, #28]
	.loc 1 36 0
	ldr	r3, [r3, #4]
.LVL14:
	.loc 1 35 0
	add	r2, r2, r1
.LVL15:
.L11:
	.loc 1 33 0
	cmp	r3, #0
	bne	.L12
	mov	r1, ip
	.loc 1 40 0
	sub	r5, r6, r5
	.loc 1 38 0
	str	r0, [r1]
	.loc 1 40 0
	add	r0, r5, r0
.LVL16:
	.loc 1 39 0
	str	r2, [r1, #4]
	.loc 1 40 0
	str	r0, [r1, #8]
	.loc 1 41 0
	ldr	r3, [sp, #4]
.LVL17:
	sub	r4, r3, r4
	add	r2, r4, r2
.LVL18:
	str	r2, [r1, #12]
	.loc 1 42 0
	add	sp, sp, #8
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.LFE170:
	.size	guiObjGetGlobalBounds, .-guiObjGetGlobalBounds
	.align	2
	.code	16
	.thumb_func
	.type	guiObjRenderDirtyChildren, %function
guiObjRenderDirtyChildren:
.LFB172:
	.loc 1 86 0
	push	{r4, lr}
.LCFI3:
.LVL19:
	.loc 1 88 0
	ldr	r2, [r0, #20]
	mov	r3, #1
	tst	r2, r3
	bne	.L18
	.loc 1 92 0
	orr	r3, r3, r2
	str	r3, [r0, #20]
	.loc 1 94 0
	ldr	r4, [r0, #8]
.LVL20:
	.loc 1 95 0
	b	.L16
.L17:
	.loc 1 96 0
	mov	r0, r4
.LVL21:
	bl	guiObjRenderDirtyChildren
	.loc 1 97 0
	ldr	r4, [r4, #12]
.LVL22:
.L16:
	.loc 1 95 0
	cmp	r4, #0
	bne	.L17
.L18:
	.loc 1 99 0
	@ sp needed for prologue
.LVL23:
	pop	{r4, pc}
.LFE172:
	.size	guiObjRenderDirtyChildren, .-guiObjRenderDirtyChildren
	.align	2
	.global	guiObjRenderDirty
	.code	16
	.thumb_func
	.type	guiObjRenderDirty, %function
guiObjRenderDirty:
.LFB173:
	.loc 1 102 0
	push	{r4, lr}
.LCFI4:
.LVL24:
	.loc 1 103 0
	ldr	r2, [r0, #20]
	mov	r3, #1
	.loc 1 102 0
	mov	r4, r0
	.loc 1 103 0
	tst	r2, r3
	bne	.L27
.LVL25:
	.loc 1 107 0
	orr	r3, r3, r2
	str	r3, [r0, #20]
	.loc 1 109 0
	ldr	r0, [r0, #4]
.LBB4:
.LBB5:
	.file 2 "C:/Users/GRX/NeoDS/arm9/source/guiObject.h"
	.loc 2 109 0
	cmp	r0, #0
	bne	.L21
	mov	r2, #1
	b	.L22
.L21:
	ldr	r1, [r0, #4]
	neg	r2, r1
	adc	r2, r2, r1
.L22:
.LBE5:
.LBE4:
	.loc 1 109 0
	cmp	r2, #0
	beq	.L23
	.loc 1 111 0
	mov	r2, #2
	orr	r3, r3, r2
	str	r3, [r4, #20]
	b	.L24
.L23:
	.loc 1 113 0
	bl	guiObjRenderDirty
.L24:
	.loc 1 116 0
	ldr	r4, [r4, #8]
.LVL26:
	.loc 1 117 0
	b	.L25
.L26:
	.loc 1 118 0
	mov	r0, r4
	bl	guiObjRenderDirtyChildren
	.loc 1 119 0
	ldr	r4, [r4, #12]
.L25:
	.loc 1 117 0
	cmp	r4, #0
	bne	.L26
.LVL27:
.L27:
	.loc 1 121 0
	@ sp needed for prologue
.LVL28:
	pop	{r4, pc}
.LFE173:
	.size	guiObjRenderDirty, .-guiObjRenderDirty
	.align	2
	.global	guiObjSetHandler
	.code	16
	.thumb_func
	.type	guiObjSetHandler, %function
guiObjSetHandler:
.LFB174:
	.loc 1 124 0
.LVL29:
	.loc 1 124 0
	mov	r3, r0
	.loc 1 128 0
	@ sp needed for prologue
	.loc 1 125 0
	ldr	r0, [r0, #16]
.LVL30:
	.loc 1 126 0
	str	r1, [r3, #16]
.LVL31:
	.loc 1 128 0
	bx	lr
.LFE174:
	.size	guiObjSetHandler, .-guiObjSetHandler
	.align	2
	.global	guiObjForeachChild
	.code	16
	.thumb_func
	.type	guiObjForeachChild, %function
guiObjForeachChild:
.LFB175:
	.loc 1 131 0
	push	{r4, r5, r6, lr}
.LCFI5:
.LVL32:
	.loc 1 131 0
	mov	r5, r1
	mov	r6, r2
	.loc 1 132 0
	ldr	r0, [r0, #8]
.LVL33:
	.loc 1 133 0
	b	.L31
.LVL34:
.L32:
.LBB6:
	.loc 1 134 0
	ldr	r4, [r0, #12]
	.loc 1 135 0
	mov	r1, r6
	blx	r5
.LVL35:
	mov	r0, r4
.LVL36:
.L31:
.LBE6:
	.loc 1 133 0
	cmp	r0, #0
	bne	.L32
	.loc 1 138 0
	@ sp needed for prologue
.LVL37:
.LVL38:
.LVL39:
	pop	{r4, r5, r6, pc}
.LFE175:
	.size	guiObjForeachChild, .-guiObjForeachChild
	.align	2
	.global	guiObjSendEvent
	.code	16
	.thumb_func
	.type	guiObjSendEvent, %function
guiObjSendEvent:
.LFB171:
	.loc 1 45 0
	push	{r4, r5, r6, lr}
.LCFI6:
.LVL40:
	sub	sp, sp, #24
.LCFI7:
	.loc 1 45 0
	mov	r5, r0
	str	r1, [sp]
	str	r2, [sp, #4]
	.loc 1 46 0
	ldr	r6, [r0]
.LVL41:
	.loc 1 50 0
	cmp	r1, #1
	beq	.L36
	cmp	r1, #6
	bne	.L35
	.loc 1 52 0
	ldr	r3, [r0, #20]
	mov	r2, #1
.LVL42:
	tst	r3, r2
	bne	.L38
	mov	r0, #0
.LVL43:
	b	.L39
.LVL44:
.L38:
	.loc 1 56 0
	bic	r3, r3, r2
	.loc 1 57 0
	mov	r2, #2
	.loc 1 56 0
	str	r3, [r0, #20]
	.loc 1 57 0
	tst	r3, r2
	beq	.L35
.LBB7:
	.loc 1 60 0
	add	r4, sp, #8
	mov	r1, r4
.LVL45:
	bl	guiObjGetGlobalBounds
.LVL46:
	.loc 1 61 0
	mov	r0, r4
	bl	guiRenderClearBounds
	.loc 1 62 0
	ldr	r3, [r5, #20]
	mov	r2, #2
	bic	r3, r3, r2
	str	r3, [r5, #20]
	b	.L35
.LVL47:
.L36:
.LBE7:
	.loc 1 66 0
	bl	guiObjRenderDirty
.LVL48:
.L35:
	.loc 1 73 0
	ldr	r3, [r5, #16]
	cmp	r3, #0
	bne	.L40
	mov	r0, #1
.LVL49:
	b	.L45
.LVL50:
.L40:
	.loc 1 74 0
	mov	r0, r5
	ldr	r1, [sp]
.LVL51:
	ldr	r2, [sp, #4]
.LVL52:
	blx	r3
	b	.L45
.LVL53:
.L42:
	.loc 1 79 0
	ldr	r3, [r6]
	mov	r0, r5
.LVL54:
	ldr	r1, [sp]
.LVL55:
	ldr	r2, [sp, #4]
.LVL56:
	blx	r3
	.loc 1 80 0
	ldr	r6, [r6, #4]
.LVL57:
.L45:
	.loc 1 78 0
	cmp	r6, #0
	beq	.L39
	cmp	r0, #1
	beq	.L42
.L39:
	.loc 1 83 0
	add	sp, sp, #24
.LVL58:
	@ sp needed for prologue
.LVL59:
.LVL60:
	pop	{r4, r5, r6, pc}
.LFE171:
	.size	guiObjSendEvent, .-guiObjSendEvent
	.global	__TGuiObjectTypeHeader__
	.section	.rodata
	.align	2
	.type	__TGuiObjectTypeHeader__, %object
	.size	__TGuiObjectTypeHeader__, 16
__TGuiObjectTypeHeader__:
	.word	__TGuiObjectTypeHandler__
	.word	0
	.word	40
	.word	.LC0
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"TGuiObject\000"
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
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.byte	0x4
	.4byte	.LCFI0-.LFB169
	.byte	0xe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.byte	0x4
	.4byte	.LCFI1-.LFB170
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
	.uleb128 0x18
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.byte	0x4
	.4byte	.LCFI3-.LFB172
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.byte	0x4
	.4byte	.LCFI4-.LFB173
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.byte	0x4
	.4byte	.LCFI5-.LFB175
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
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.byte	0x4
	.4byte	.LCFI6-.LFB171
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
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE14:
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
.LLST2:
	.4byte	.LFB169-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE169-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB170-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB172-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB173-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB175-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE175-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE175-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL39-.Ltext0
	.4byte	.LFE175-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE175-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LFB171-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL57-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 5 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 6 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 7 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 8 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 9 "C:/Users/GRX/NeoDS/arm9/source/Default.h"
	.file 10 "C:/Users/GRX/NeoDS/arm9/include/cyclone.h"
	.file 11 "C:/Users/GRX/NeoDS/arm9/include/NeoCpu.h"
	.file 12 "C:/Users/GRX/NeoDS/arm9/../common/source/NeoAudioStream.h"
	.file 13 "C:/Users/GRX/NeoDS/arm9/include/NeoSystem.h"
	.file 14 "C:/Users/GRX/NeoDS/arm9/source/guiEvent.h"
	.file 15 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.section	.debug_info
	.4byte	0x1316
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF248
	.byte	0x1
	.4byte	.LASF249
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
	.4byte	0x127
	.uleb128 0xc
	.4byte	0x10a
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x28
	.byte	0x5
	.2byte	0x18c
	.4byte	0x1d0
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
	.4byte	0x12c
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x8
	.byte	0x6
	.byte	0x29
	.4byte	0x205
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x6
	.byte	0x2a
	.4byte	0x205
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
	.4byte	0x118
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x6
	.byte	0x2c
	.4byte	0x1dc
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x9c
	.4byte	0x237
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
	.4byte	0x216
	.uleb128 0x12
	.4byte	.LASF40
	.2byte	0x2020
	.byte	0x7
	.2byte	0x11a
	.4byte	0x2ce
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x7
	.2byte	0x11b
	.4byte	0x237
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
	.4byte	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x7
	.2byte	0x122
	.4byte	0x20b
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
	.4byte	0x2df
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
	.4byte	0x2df
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
	.4byte	0x242
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
	.4byte	0x31e
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
	.4byte	0x33f
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
	.4byte	0x360
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
	.4byte	0x375
	.uleb128 0x7
	.4byte	.LASF61
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF62
	.sleb128 1
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x8
	.byte	0x9
	.byte	0xd
	.4byte	0x39a
	.uleb128 0x15
	.ascii	"x\000"
	.byte	0x9
	.byte	0xe
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.ascii	"y\000"
	.byte	0x9
	.byte	0xf
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x9
	.byte	0x10
	.4byte	0x375
	.uleb128 0x16
	.byte	0x10
	.byte	0x9
	.byte	0x13
	.4byte	0x3e2
	.uleb128 0x15
	.ascii	"x0\000"
	.byte	0x9
	.byte	0x14
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.ascii	"y0\000"
	.byte	0x9
	.byte	0x15
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.ascii	"x1\000"
	.byte	0x9
	.byte	0x16
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.ascii	"y1\000"
	.byte	0x9
	.byte	0x17
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x16
	.byte	0x10
	.byte	0x9
	.byte	0x19
	.4byte	0x405
	.uleb128 0x15
	.ascii	"p0\000"
	.byte	0x9
	.byte	0x1a
	.4byte	0x39a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.ascii	"p1\000"
	.byte	0x9
	.byte	0x1b
	.4byte	0x39a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x17
	.4byte	.LASF250
	.byte	0x10
	.byte	0x9
	.byte	0x12
	.4byte	0x41c
	.uleb128 0x18
	.4byte	0x3a5
	.uleb128 0x18
	.4byte	0x3e2
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x9
	.byte	0x1d
	.4byte	0x405
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0xb0
	.byte	0xa
	.byte	0x15
	.4byte	0x5bd
	.uleb128 0x15
	.ascii	"d\000"
	.byte	0xa
	.byte	0x16
	.4byte	0x5bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.ascii	"a\000"
	.byte	0xa
	.byte	0x17
	.4byte	0x5bd
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
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0xa
	.byte	0x1a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x11
	.4byte	.LASF68
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
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0xa
	.byte	0x1f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0xa
	.byte	0x20
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0xa
	.byte	0x21
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0xa
	.byte	0x22
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0xa
	.byte	0x23
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0xa
	.byte	0x24
	.4byte	0x5dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0xa
	.byte	0x25
	.4byte	0x5dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0xa
	.byte	0x26
	.4byte	0x5dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0xa
	.byte	0x27
	.4byte	0x5dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0xa
	.byte	0x28
	.4byte	0x5f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0xa
	.byte	0x29
	.4byte	0x60b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0xa
	.byte	0x2a
	.4byte	0x622
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0xa
	.byte	0x2b
	.4byte	0x5dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0xa
	.byte	0x2c
	.4byte	0x5dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0xa
	.byte	0x2d
	.4byte	0x5dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0xa
	.byte	0x2e
	.4byte	0x638
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF85
	.byte	0xa
	.byte	0x2f
	.4byte	0xff
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0xa
	.byte	0x30
	.4byte	0x644
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0xa
	.byte	0x31
	.4byte	0x64a
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x13
	.4byte	0x7b
	.4byte	0x5cd
	.uleb128 0x19
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	0x7b
	.4byte	0x5dd
	.uleb128 0x1b
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5cd
	.uleb128 0x1c
	.byte	0x1
	.4byte	0x5f4
	.uleb128 0x1b
	.4byte	0x7b
	.uleb128 0x1b
	.4byte	0x33
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e3
	.uleb128 0x1c
	.byte	0x1
	.4byte	0x60b
	.uleb128 0x1b
	.4byte	0x7b
	.uleb128 0x1b
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5fa
	.uleb128 0x1c
	.byte	0x1
	.4byte	0x622
	.uleb128 0x1b
	.4byte	0x7b
	.uleb128 0x1b
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x611
	.uleb128 0x1a
	.byte	0x1
	.4byte	0x69
	.4byte	0x638
	.uleb128 0x1b
	.4byte	0x69
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x628
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x69
	.uleb128 0x8
	.byte	0x4
	.4byte	0x63e
	.uleb128 0x13
	.4byte	0x7b
	.4byte	0x65a
	.uleb128 0x19
	.4byte	0x107
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0xb
	.byte	0x6
	.4byte	0x427
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0xb
	.byte	0x8
	.4byte	0x670
	.uleb128 0x8
	.byte	0x4
	.4byte	0x676
	.uleb128 0x1a
	.byte	0x1
	.4byte	0xa9
	.4byte	0x686
	.uleb128 0x1b
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0xb
	.byte	0x9
	.4byte	0x691
	.uleb128 0x8
	.byte	0x4
	.4byte	0x697
	.uleb128 0x1a
	.byte	0x1
	.4byte	0xb3
	.4byte	0x6a7
	.uleb128 0x1b
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0xb
	.byte	0xa
	.4byte	0x6b2
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6b8
	.uleb128 0x1a
	.byte	0x1
	.4byte	0xbe
	.4byte	0x6c8
	.uleb128 0x1b
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0xb
	.byte	0xc
	.4byte	0x6d3
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6d9
	.uleb128 0x1c
	.byte	0x1
	.4byte	0x6ea
	.uleb128 0x1b
	.4byte	0xbe
	.uleb128 0x1b
	.4byte	0xa9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xb
	.byte	0xd
	.4byte	0x6f5
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6fb
	.uleb128 0x1c
	.byte	0x1
	.4byte	0x70c
	.uleb128 0x1b
	.4byte	0xbe
	.uleb128 0x1b
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0xb
	.byte	0xe
	.4byte	0x717
	.uleb128 0x8
	.byte	0x4
	.4byte	0x71d
	.uleb128 0x1c
	.byte	0x1
	.4byte	0x72e
	.uleb128 0x1b
	.4byte	0xbe
	.uleb128 0x1b
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0xb
	.byte	0x10
	.4byte	0x6b2
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0xc
	.byte	0xc
	.byte	0x17
	.4byte	0x77e
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0xc
	.byte	0x18
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.ascii	"end\000"
	.byte	0xc
	.byte	0x19
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.ascii	"acc\000"
	.byte	0xc
	.byte	0x1a
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0xc
	.byte	0x1b
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0xc
	.byte	0x1c
	.4byte	0x739
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0xc
	.byte	0xc
	.byte	0x1f
	.4byte	0x7c0
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0xc
	.byte	0x20
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0xc
	.byte	0x21
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0xc
	.byte	0x22
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xc
	.byte	0x23
	.4byte	0x789
	.uleb128 0x1e
	.4byte	.LASF188
	.byte	0x1
	.byte	0xd
	.byte	0x99
	.4byte	0x814
	.uleb128 0x7
	.4byte	.LASF105
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF106
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF107
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF108
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF109
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF110
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF111
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF112
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF113
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF114
	.sleb128 9
	.byte	0x0
	.uleb128 0x1f
	.2byte	0x248
	.byte	0xd
	.byte	0xc0
	.4byte	0xc02
	.uleb128 0x15
	.ascii	"cpu\000"
	.byte	0xd
	.byte	0xc1
	.4byte	0x65a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0xd
	.byte	0xc4
	.4byte	0xc02
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0xd
	.byte	0xc7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0xd
	.byte	0xc8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0xd
	.byte	0xcb
	.4byte	0xc12
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0xd
	.byte	0xcc
	.4byte	0x7c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0xd
	.byte	0xcd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0xd
	.byte	0xd0
	.4byte	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0xd
	.byte	0xd1
	.4byte	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0xd
	.byte	0xd2
	.4byte	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0xd
	.byte	0xd3
	.4byte	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0xd
	.byte	0xd4
	.4byte	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x11
	.4byte	.LASF126
	.byte	0xd
	.byte	0xd5
	.4byte	0x2f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0xd
	.byte	0xd6
	.4byte	0x2f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x11
	.4byte	.LASF128
	.byte	0xd
	.byte	0xd7
	.4byte	0x2f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0xd
	.byte	0xd8
	.4byte	0x2f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0xd
	.byte	0xda
	.4byte	0xc22
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0xd
	.byte	0xdd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0xd
	.byte	0xde
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0xd
	.byte	0xdf
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0xd
	.byte	0xe0
	.4byte	0xc33
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0xd
	.byte	0xe1
	.4byte	0xc33
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0xd
	.byte	0xe2
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0xd
	.byte	0xe5
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xd
	.byte	0xe6
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0xd
	.byte	0xe7
	.4byte	0x2f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0xd
	.byte	0xe8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0xd
	.byte	0xea
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0xd
	.byte	0xeb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0xd
	.byte	0xec
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0xd
	.byte	0xed
	.4byte	0xc3e
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0xd
	.byte	0xee
	.4byte	0x2f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0xd
	.byte	0xf1
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0xd
	.byte	0xf2
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0xd
	.byte	0xf3
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0xd
	.byte	0xf4
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0xd
	.byte	0xf7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xd
	.byte	0xf8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x11
	.4byte	.LASF152
	.byte	0xd
	.byte	0xf9
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0xd
	.byte	0xfa
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x11
	.4byte	.LASF154
	.byte	0xd
	.byte	0xfb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x11
	.4byte	.LASF155
	.byte	0xd
	.byte	0xfc
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0xd
	.byte	0xfd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xe
	.4byte	.LASF157
	.byte	0xd
	.2byte	0x102
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xe
	.4byte	.LASF158
	.byte	0xd
	.2byte	0x103
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xe
	.4byte	.LASF159
	.byte	0xd
	.2byte	0x106
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xe
	.4byte	.LASF160
	.byte	0xd
	.2byte	0x108
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xe
	.4byte	.LASF161
	.byte	0xd
	.2byte	0x109
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xe
	.4byte	.LASF162
	.byte	0xd
	.2byte	0x10a
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xe
	.4byte	.LASF163
	.byte	0xd
	.2byte	0x10b
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xe
	.4byte	.LASF164
	.byte	0xd
	.2byte	0x10d
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xe
	.4byte	.LASF165
	.byte	0xd
	.2byte	0x10e
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xe
	.4byte	.LASF166
	.byte	0xd
	.2byte	0x10f
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xe
	.4byte	.LASF167
	.byte	0xd
	.2byte	0x110
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xe
	.4byte	.LASF168
	.byte	0xd
	.2byte	0x111
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xe
	.4byte	.LASF169
	.byte	0xd
	.2byte	0x114
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xe
	.4byte	.LASF170
	.byte	0xd
	.2byte	0x115
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xe
	.4byte	.LASF171
	.byte	0xd
	.2byte	0x116
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xe
	.4byte	.LASF172
	.byte	0xd
	.2byte	0x117
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xe
	.4byte	.LASF173
	.byte	0xd
	.2byte	0x118
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xe
	.4byte	.LASF174
	.byte	0xd
	.2byte	0x11b
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xe
	.4byte	.LASF175
	.byte	0xd
	.2byte	0x11c
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xe
	.4byte	.LASF176
	.byte	0xd
	.2byte	0x11f
	.4byte	0xc4e
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xe
	.4byte	.LASF177
	.byte	0xd
	.2byte	0x122
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xe
	.4byte	.LASF178
	.byte	0xd
	.2byte	0x123
	.4byte	0xc5e
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0x13
	.4byte	0x118
	.4byte	0xc12
	.uleb128 0x19
	.4byte	0x107
	.byte	0x8
	.byte	0x0
	.uleb128 0x13
	.4byte	0x77e
	.4byte	0xc22
	.uleb128 0x19
	.4byte	0x107
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc28
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc2e
	.uleb128 0xc
	.4byte	0xa9
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc39
	.uleb128 0xc
	.4byte	0xbe
	.uleb128 0x13
	.4byte	0xbe
	.4byte	0xc4e
	.uleb128 0x19
	.4byte	0x107
	.byte	0xf
	.byte	0x0
	.uleb128 0x13
	.4byte	0xa9
	.4byte	0xc5e
	.uleb128 0x19
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x13
	.4byte	0xa9
	.4byte	0xc6d
	.uleb128 0x20
	.4byte	0x107
	.byte	0x0
	.uleb128 0x21
	.2byte	0x400
	.byte	0xd
	.byte	0xbf
	.4byte	0xc88
	.uleb128 0x18
	.4byte	0x814
	.uleb128 0x22
	.4byte	.LASF251
	.byte	0xd
	.2byte	0x125
	.4byte	0xc88
	.byte	0x0
	.uleb128 0x13
	.4byte	0xbe
	.4byte	0xc98
	.uleb128 0x19
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF179
	.2byte	0x2000
	.byte	0xd
	.byte	0xbe
	.4byte	0xd1e
	.uleb128 0x24
	.4byte	0xc6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF180
	.byte	0xd
	.2byte	0x128
	.4byte	0xd1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xe
	.4byte	.LASF181
	.byte	0xd
	.2byte	0x129
	.4byte	0xd2e
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xe
	.4byte	.LASF182
	.byte	0xd
	.2byte	0x12a
	.4byte	0xd3e
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xe
	.4byte	.LASF183
	.byte	0xd
	.2byte	0x12b
	.4byte	0xd4e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xe
	.4byte	.LASF184
	.byte	0xd
	.2byte	0x12c
	.4byte	0xd5e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xe
	.4byte	.LASF185
	.byte	0xd
	.2byte	0x12d
	.4byte	0xd6e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xe
	.4byte	.LASF186
	.byte	0xd
	.2byte	0x12e
	.4byte	0xd7e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0x13
	.4byte	0x665
	.4byte	0xd2e
	.uleb128 0x19
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x686
	.4byte	0xd3e
	.uleb128 0x19
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x6a7
	.4byte	0xd4e
	.uleb128 0x19
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x6c8
	.4byte	0xd5e
	.uleb128 0x19
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x6ea
	.4byte	0xd6e
	.uleb128 0x19
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x70c
	.4byte	0xd7e
	.uleb128 0x19
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x72e
	.4byte	0xd8e
	.uleb128 0x19
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF187
	.byte	0xd
	.2byte	0x12f
	.4byte	0xc98
	.uleb128 0x1e
	.4byte	.LASF189
	.byte	0x1
	.byte	0xe
	.byte	0x4
	.4byte	0xdfb
	.uleb128 0x7
	.4byte	.LASF190
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF191
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF192
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF193
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF194
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF195
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF196
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF197
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF198
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF199
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF200
	.sleb128 10
	.uleb128 0x7
	.4byte	.LASF201
	.sleb128 11
	.uleb128 0x7
	.4byte	.LASF202
	.sleb128 12
	.uleb128 0x7
	.4byte	.LASF203
	.sleb128 13
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF204
	.byte	0xe
	.byte	0x17
	.4byte	0xd9a
	.uleb128 0x1e
	.4byte	.LASF205
	.byte	0x1
	.byte	0xe
	.byte	0x19
	.4byte	0xe1f
	.uleb128 0x7
	.4byte	.LASF206
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF207
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF208
	.byte	0xe
	.byte	0x1c
	.4byte	0xe06
	.uleb128 0x3
	.4byte	.LASF209
	.byte	0x2
	.byte	0xc
	.4byte	0xe35
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe3b
	.uleb128 0x1a
	.byte	0x1
	.4byte	0xe1f
	.4byte	0xe55
	.uleb128 0x1b
	.4byte	0xe55
	.uleb128 0x1b
	.4byte	0xdfb
	.uleb128 0x1b
	.4byte	0x118
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe5b
	.uleb128 0x10
	.4byte	.LASF210
	.byte	0x28
	.byte	0x2
	.byte	0x8
	.4byte	0xeca
	.uleb128 0x11
	.4byte	.LASF211
	.byte	0x2
	.byte	0x1b
	.4byte	0xf42
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF212
	.byte	0x2
	.byte	0x1c
	.4byte	0xe55
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF213
	.byte	0x2
	.byte	0x1d
	.4byte	0xe55
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF214
	.byte	0x2
	.byte	0x1e
	.4byte	0xe55
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF215
	.byte	0x2
	.byte	0x1f
	.4byte	0xe2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x2
	.byte	0x20
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF216
	.byte	0x2
	.byte	0x21
	.4byte	0x41c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF217
	.byte	0x10
	.byte	0x2
	.byte	0xe
	.4byte	0xf0f
	.uleb128 0x11
	.4byte	.LASF215
	.byte	0x2
	.byte	0xf
	.4byte	0xe2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF212
	.byte	0x2
	.byte	0x10
	.4byte	0xf0f
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
	.4byte	.LASF218
	.byte	0x2
	.byte	0x12
	.4byte	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf15
	.uleb128 0x25
	.4byte	.LASF217
	.4byte	0xeca
	.uleb128 0x3
	.4byte	.LASF219
	.byte	0x2
	.byte	0x13
	.4byte	0xeca
	.uleb128 0x1e
	.4byte	.LASF220
	.byte	0x1
	.byte	0x2
	.byte	0x15
	.4byte	0xf42
	.uleb128 0x7
	.4byte	.LASF221
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF222
	.sleb128 2
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf48
	.uleb128 0xc
	.4byte	0xf1e
	.uleb128 0x3
	.4byte	.LASF223
	.byte	0x2
	.byte	0x22
	.4byte	0xe5b
	.uleb128 0x3
	.4byte	.LASF224
	.byte	0x2
	.byte	0x53
	.4byte	0xf63
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf69
	.uleb128 0x1c
	.byte	0x1
	.4byte	0xf7a
	.uleb128 0x1b
	.4byte	0xf7a
	.uleb128 0x1b
	.4byte	0x118
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf4d
	.uleb128 0x26
	.4byte	.LASF252
	.byte	0x2
	.byte	0x6b
	.byte	0x1
	.4byte	0xf4
	.byte	0x3
	.4byte	0xf9d
	.uleb128 0x27
	.4byte	.LASF227
	.byte	0x2
	.byte	0x6b
	.4byte	0xf9d
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfa3
	.uleb128 0xc
	.4byte	0xf4d
	.uleb128 0x28
	.4byte	.LASF253
	.byte	0x1
	.byte	0x4
	.byte	0x1
	.4byte	0xe1f
	.4byte	.LFB168
	.4byte	.LFE168
	.byte	0x1
	.byte	0x5d
	.4byte	0xfea
	.uleb128 0x29
	.4byte	.LASF225
	.byte	0x1
	.byte	0x4
	.4byte	0xe55
	.4byte	.LLST1
	.uleb128 0x2a
	.ascii	"e\000"
	.byte	0x1
	.byte	0x4
	.4byte	0xdfb
	.byte	0x1
	.byte	0x51
	.uleb128 0x2b
	.4byte	.LASF226
	.byte	0x1
	.byte	0x4
	.4byte	0x118
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF233
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.4byte	0xf4
	.4byte	.LFB169
	.4byte	.LFE169
	.4byte	.LLST2
	.4byte	0x1031
	.uleb128 0x29
	.4byte	.LASF227
	.byte	0x1
	.byte	0x10
	.4byte	0xf9d
	.4byte	.LLST3
	.uleb128 0x2b
	.4byte	.LASF211
	.byte	0x1
	.byte	0x10
	.4byte	0xf42
	.byte	0x1
	.byte	0x51
	.uleb128 0x2d
	.4byte	.LASF229
	.byte	0x1
	.byte	0x12
	.4byte	0xf42
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF231
	.byte	0x1
	.byte	0x1a
	.byte	0x1
	.4byte	.LFB170
	.4byte	.LFE170
	.4byte	.LLST4
	.4byte	0x10a4
	.uleb128 0x29
	.4byte	.LASF227
	.byte	0x1
	.byte	0x1a
	.4byte	0xf9d
	.4byte	.LLST5
	.uleb128 0x29
	.4byte	.LASF228
	.byte	0x1
	.byte	0x1a
	.4byte	0x10a4
	.4byte	.LLST6
	.uleb128 0x2f
	.ascii	"w\000"
	.byte	0x1
	.byte	0x1c
	.4byte	0xd4
	.uleb128 0x2f
	.ascii	"h\000"
	.byte	0x1
	.byte	0x1d
	.4byte	0xd4
	.uleb128 0x30
	.ascii	"x\000"
	.byte	0x1
	.byte	0x1e
	.4byte	0xd4
	.4byte	.LLST7
	.uleb128 0x30
	.ascii	"y\000"
	.byte	0x1
	.byte	0x1f
	.4byte	0xd4
	.4byte	.LLST8
	.uleb128 0x31
	.4byte	.LASF212
	.byte	0x1
	.byte	0x20
	.4byte	0xf9d
	.4byte	.LLST9
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x41c
	.uleb128 0x32
	.4byte	.LASF254
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.4byte	.LFB172
	.4byte	.LFE172
	.4byte	.LLST10
	.4byte	0x10e1
	.uleb128 0x29
	.4byte	.LASF227
	.byte	0x1
	.byte	0x55
	.4byte	0xf7a
	.4byte	.LLST11
	.uleb128 0x31
	.4byte	.LASF230
	.byte	0x1
	.byte	0x5e
	.4byte	0xf7a
	.4byte	.LLST12
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF232
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.4byte	.LFB173
	.4byte	.LFE173
	.4byte	.LLST13
	.4byte	0x112e
	.uleb128 0x29
	.4byte	.LASF227
	.byte	0x1
	.byte	0x65
	.4byte	0xf7a
	.4byte	.LLST14
	.uleb128 0x31
	.4byte	.LASF230
	.byte	0x1
	.byte	0x74
	.4byte	0xf7a
	.4byte	.LLST15
	.uleb128 0x33
	.4byte	0xf80
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x1
	.byte	0x6d
	.uleb128 0x34
	.4byte	0xf91
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF234
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.4byte	0xe2a
	.4byte	.LFB174
	.4byte	.LFE174
	.byte	0x1
	.byte	0x5d
	.4byte	0x1175
	.uleb128 0x29
	.4byte	.LASF227
	.byte	0x1
	.byte	0x7b
	.4byte	0xf7a
	.4byte	.LLST17
	.uleb128 0x2b
	.4byte	.LASF215
	.byte	0x1
	.byte	0x7b
	.4byte	0xe2a
	.byte	0x1
	.byte	0x51
	.uleb128 0x30
	.ascii	"old\000"
	.byte	0x1
	.byte	0x7d
	.4byte	0xe2a
	.4byte	.LLST18
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF235
	.byte	0x1
	.byte	0x82
	.byte	0x1
	.4byte	.LFB175
	.4byte	.LFE175
	.4byte	.LLST19
	.4byte	0x11e4
	.uleb128 0x29
	.4byte	.LASF227
	.byte	0x1
	.byte	0x82
	.4byte	0xf9d
	.4byte	.LLST20
	.uleb128 0x29
	.4byte	.LASF236
	.byte	0x1
	.byte	0x82
	.4byte	0xf58
	.4byte	.LLST21
	.uleb128 0x36
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x82
	.4byte	0x118
	.4byte	.LLST22
	.uleb128 0x31
	.4byte	.LASF230
	.byte	0x1
	.byte	0x84
	.4byte	0xf7a
	.4byte	.LLST23
	.uleb128 0x37
	.4byte	.LBB6
	.4byte	.LBE6
	.uleb128 0x31
	.4byte	.LASF237
	.byte	0x1
	.byte	0x86
	.4byte	0xf7a
	.4byte	.LLST24
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF238
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.4byte	0xe1f
	.4byte	.LFB171
	.4byte	.LFE171
	.4byte	.LLST25
	.4byte	0x1263
	.uleb128 0x29
	.4byte	.LASF227
	.byte	0x1
	.byte	0x2c
	.4byte	0xf7a
	.4byte	.LLST26
	.uleb128 0x36
	.ascii	"e\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0xdfb
	.4byte	.LLST27
	.uleb128 0x36
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0x118
	.4byte	.LLST28
	.uleb128 0x31
	.4byte	.LASF211
	.byte	0x1
	.byte	0x2e
	.4byte	0xf42
	.4byte	.LLST29
	.uleb128 0x30
	.ascii	"ret\000"
	.byte	0x1
	.byte	0x2f
	.4byte	0xe1f
	.4byte	.LLST30
	.uleb128 0x37
	.4byte	.LBB7
	.4byte	.LBE7
	.uleb128 0x2d
	.4byte	.LASF216
	.byte	0x1
	.byte	0x3b
	.4byte	0x41c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.4byte	.LASF239
	.byte	0x7
	.2byte	0x12e
	.4byte	0x126f
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2e5
	.uleb128 0x39
	.4byte	.LASF240
	.byte	0xf
	.byte	0x56
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.4byte	.LASF241
	.byte	0xf
	.byte	0x57
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	0x129f
	.4byte	0x129f
	.uleb128 0x19
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x12a5
	.uleb128 0x3a
	.4byte	0x57
	.uleb128 0x3b
	.4byte	.LASF242
	.byte	0x5
	.2byte	0x19c
	.4byte	0x128f
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	0x1d0
	.4byte	0x12c8
	.uleb128 0x19
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x3b
	.4byte	.LASF243
	.byte	0x5
	.2byte	0x19f
	.4byte	0x12b8
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.4byte	.LASF244
	.byte	0x7
	.2byte	0x12b
	.4byte	0x2e5
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF245
	.byte	0xd
	.2byte	0x149
	.4byte	0x12f3
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd8e
	.uleb128 0x3b
	.4byte	.LASF246
	.byte	0xd
	.2byte	0x14d
	.4byte	0xd8e
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.4byte	.LASF247
	.byte	0x1
	.byte	0x9
	.4byte	0xf48
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__TGuiObjectTypeHeader__
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0xa
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0x35
	.byte	0x0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xb8
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x131a
	.4byte	0xfea
	.ascii	"guiObjIsType_r\000"
	.4byte	0x1031
	.ascii	"guiObjGetGlobalBounds\000"
	.4byte	0x10e1
	.ascii	"guiObjRenderDirty\000"
	.4byte	0x112e
	.ascii	"guiObjSetHandler\000"
	.4byte	0x1175
	.ascii	"guiObjForeachChild\000"
	.4byte	0x11e4
	.ascii	"guiObjSendEvent\000"
	.4byte	0x12e4
	.ascii	"g_neo\000"
	.4byte	0x1307
	.ascii	"__TGuiObjectTypeHeader__\000"
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
.LASF252:
	.ascii	"guiObjIsRoot\000"
.LASF42:
	.ascii	"clearColor\000"
.LASF74:
	.ascii	"checkpc\000"
.LASF78:
	.ascii	"write8\000"
.LASF164:
	.ascii	"ctrl1Reg\000"
.LASF143:
	.ascii	"spriteMask\000"
.LASF203:
	.ascii	"GUIEVENT_SELECTED\000"
.LASF166:
	.ascii	"ctrl3Reg\000"
.LASF83:
	.ascii	"fetch32\000"
.LASF239:
	.ascii	"glGlob\000"
.LASF151:
	.ascii	"cpuClocksPerScanline\000"
.LASF60:
	.ascii	"OBJSIZE_64\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF185:
	.ascii	"cpuWrite32Table\000"
.LASF184:
	.ascii	"cpuWrite16Table\000"
.LASF12:
	.ascii	"uint32\000"
.LASF72:
	.ascii	"cycles\000"
.LASF37:
	.ascii	"GL_MODELVIEW\000"
.LASF195:
	.ascii	"GUIEVENT_PROCESS\000"
.LASF206:
	.ascii	"GUIEVENTRET_HANDLED\000"
.LASF63:
	.ascii	"_TPoint\000"
.LASF38:
	.ascii	"GL_TEXTURE\000"
.LASF173:
	.ascii	"paletteRamLatch\000"
.LASF29:
	.ascii	"type\000"
.LASF178:
	.ascii	"varEnd\000"
.LASF92:
	.ascii	"TWrite8Func\000"
.LASF75:
	.ascii	"read8\000"
.LASF61:
	.ascii	"OBJCOLOR_16\000"
.LASF79:
	.ascii	"write16\000"
.LASF226:
	.ascii	"__arg__\000"
.LASF104:
	.ascii	"TNeoADPCMBStream\000"
.LASF89:
	.ascii	"TRead8Func\000"
.LASF48:
	.ascii	"nameCount\000"
.LASF245:
	.ascii	"g_neo\000"
.LASF182:
	.ascii	"cpuRead32Table\000"
.LASF39:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF207:
	.ascii	"GUIEVENTRET_NOTHANDLED\000"
.LASF19:
	.ascii	"long int\000"
.LASF223:
	.ascii	"TGuiObject\000"
.LASF81:
	.ascii	"fetch8\000"
.LASF176:
	.ascii	"keyGrid\000"
.LASF231:
	.ascii	"guiObjGetGlobalBounds\000"
.LASF80:
	.ascii	"write32\000"
.LASF220:
	.ascii	"_TGuiObjectFlags\000"
.LASF50:
	.ascii	"OBJMODE_BLENDED\000"
.LASF179:
	.ascii	"_TNeoContext\000"
.LASF84:
	.ascii	"IrqCallback\000"
.LASF95:
	.ascii	"TCheckPcFunc\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF201:
	.ascii	"GUIEVENT_KEYUP\000"
.LASF156:
	.ascii	"romBankAddress\000"
.LASF98:
	.ascii	"step\000"
.LASF120:
	.ascii	"adpcmActive\000"
.LASF111:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF183:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF148:
	.ascii	"tileScaleX\000"
.LASF149:
	.ascii	"tileScaleY\000"
.LASF153:
	.ascii	"watchdogCounter\000"
.LASF113:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF213:
	.ascii	"pChildren\000"
.LASF140:
	.ascii	"vramBaseMask\000"
.LASF116:
	.ascii	"spriteCount\000"
.LASF86:
	.ascii	"UnrecognizedCallback\000"
.LASF234:
	.ascii	"guiObjSetHandler\000"
.LASF215:
	.ascii	"handler\000"
.LASF130:
	.ascii	"bankTable\000"
.LASF18:
	.ascii	"char\000"
.LASF31:
	.ascii	"BgState\000"
.LASF67:
	.ascii	"unused\000"
.LASF170:
	.ascii	"screenDarkLatch\000"
.LASF237:
	.ascii	"pNext\000"
.LASF69:
	.ascii	"prev_pc\000"
.LASF100:
	.ascii	"_TNeoADPCMBStream\000"
.LASF242:
	.ascii	"bgControl\000"
.LASF194:
	.ascii	"GUIEVENT_DESTROY\000"
.LASF106:
	.ascii	"NEOROM_BIOS\000"
.LASF64:
	.ascii	"TPoint\000"
.LASF68:
	.ascii	"flags\000"
.LASF142:
	.ascii	"autoAnimationCounter\000"
.LASF43:
	.ascii	"textures\000"
.LASF250:
	.ascii	"_TBounds\000"
.LASF244:
	.ascii	"glGlobalData\000"
.LASF36:
	.ascii	"GL_POSITION\000"
.LASF253:
	.ascii	"__TGuiObjectTypeHandler__\000"
.LASF150:
	.ascii	"cpuClockDivide\000"
.LASF138:
	.ascii	"frameCount\000"
.LASF251:
	.ascii	"fill\000"
.LASF56:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF15:
	.ascii	"false\000"
.LASF236:
	.ascii	"iterator\000"
.LASF90:
	.ascii	"TRead16Func\000"
.LASF51:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF189:
	.ascii	"_TGuiEventID\000"
.LASF124:
	.ascii	"pRam\000"
.LASF32:
	.ascii	"DynamicArray\000"
.LASF199:
	.ascii	"GUIEVENT_TAP\000"
.LASF65:
	.ascii	"TBounds\000"
.LASF20:
	.ascii	"long unsigned int\000"
.LASF110:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF49:
	.ascii	"OBJMODE_NORMAL\000"
.LASF225:
	.ascii	"__pObj__\000"
.LASF54:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF190:
	.ascii	"GUIEVENT_NULL\000"
.LASF181:
	.ascii	"cpuRead16Table\000"
.LASF162:
	.ascii	"displayControlMask\000"
.LASF193:
	.ascii	"GUIEVENT_CREATE\000"
.LASF88:
	.ascii	"TCycloneContext\000"
.LASF107:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF227:
	.ascii	"this\000"
.LASF174:
	.ascii	"active\000"
.LASF145:
	.ascii	"pTileBuffer\000"
.LASF66:
	.ascii	"Cyclone\000"
.LASF216:
	.ascii	"bounds\000"
.LASF123:
	.ascii	"pBios\000"
.LASF247:
	.ascii	"__TGuiObjectTypeHeader__\000"
.LASF249:
	.ascii	"C:/Users/GRX/NeoDS/arm9/source/guiObject.c\000"
.LASF228:
	.ascii	"pBounds\000"
.LASF21:
	.ascii	"angle\000"
.LASF169:
	.ascii	"irqVectorLatch\000"
.LASF144:
	.ascii	"paletteDirty\000"
.LASF41:
	.ascii	"matrixMode\000"
.LASF197:
	.ascii	"GUIEVENT_TOUCHDOWN\000"
.LASF219:
	.ascii	"TGuiTypeHeader\000"
.LASF186:
	.ascii	"cpuCheckPcTable\000"
.LASF46:
	.ascii	"nextBlock\000"
.LASF192:
	.ascii	"GUIEVENT_DISABLE\000"
.LASF217:
	.ascii	"_TGuiTypeHeader\000"
.LASF214:
	.ascii	"pNextChild\000"
.LASF136:
	.ascii	"smaRand\000"
.LASF96:
	.ascii	"_TNeoADPCMStream\000"
.LASF94:
	.ascii	"TWrite32Func\000"
.LASF248:
	.ascii	"GNU C 4.4.3\000"
.LASF10:
	.ascii	"long long int\000"
.LASF35:
	.ascii	"GL_PROJECTION\000"
.LASF168:
	.ascii	"coinReg\000"
.LASF114:
	.ascii	"NEOROM_COUNT\000"
.LASF101:
	.ascii	"initOffset\000"
.LASF243:
	.ascii	"bgState\000"
.LASF26:
	.ascii	"scrollX\000"
.LASF27:
	.ascii	"scrollY\000"
.LASF165:
	.ascii	"ctrl2Reg\000"
.LASF14:
	.ascii	"double\000"
.LASF87:
	.ascii	"internal\000"
.LASF191:
	.ascii	"GUIEVENT_ENABLE\000"
.LASF167:
	.ascii	"ctrl4Reg\000"
.LASF131:
	.ascii	"smaAddr0\000"
.LASF132:
	.ascii	"smaAddr1\000"
.LASF141:
	.ascii	"displayCounter\000"
.LASF103:
	.ascii	"frequency\000"
.LASF212:
	.ascii	"pParent\000"
.LASF13:
	.ascii	"float\000"
.LASF126:
	.ascii	"pCard\000"
.LASF233:
	.ascii	"guiObjIsType_r\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF55:
	.ascii	"OBJSHAPE_TALL\000"
.LASF238:
	.ascii	"guiObjSendEvent\000"
.LASF161:
	.ascii	"displayControl\000"
.LASF229:
	.ascii	"pMyType\000"
.LASF202:
	.ascii	"GUIEVENT_KEYREPEAT\000"
.LASF139:
	.ascii	"pVramBase\000"
.LASF163:
	.ascii	"displayCounterLoad\000"
.LASF62:
	.ascii	"OBJCOLOR_256\000"
.LASF200:
	.ascii	"GUIEVENT_KEYDOWN\000"
.LASF97:
	.ascii	"offset\000"
.LASF108:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF121:
	.ascii	"pRom0\000"
.LASF122:
	.ascii	"pRom1\000"
.LASF146:
	.ascii	"tileOffsetX\000"
.LASF147:
	.ascii	"tileOffsetY\000"
.LASF17:
	.ascii	"bool\000"
.LASF105:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF45:
	.ascii	"activeTexture\000"
.LASF159:
	.ascii	"vramOffset\000"
.LASF76:
	.ascii	"read16\000"
.LASF235:
	.ascii	"guiObjForeachChild\000"
.LASF188:
	.ascii	"_TNeoRomRegion\000"
.LASF172:
	.ascii	"sramProtectLatch\000"
.LASF246:
	.ascii	"g_neoContext\000"
.LASF187:
	.ascii	"TNeoContext\000"
.LASF73:
	.ascii	"membase\000"
.LASF102:
	.ascii	"freqCounter\000"
.LASF52:
	.ascii	"OBJMODE_BITMAP\000"
.LASF137:
	.ascii	"scanline\000"
.LASF28:
	.ascii	"size\000"
.LASF129:
	.ascii	"pPalette\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF77:
	.ascii	"read32\000"
.LASF254:
	.ascii	"guiObjRenderDirtyChildren\000"
.LASF175:
	.ascii	"debug\000"
.LASF112:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF93:
	.ascii	"TWrite16Func\000"
.LASF34:
	.ascii	"cur_size\000"
.LASF205:
	.ascii	"_TGuiEventReturn\000"
.LASF180:
	.ascii	"cpuRead8Table\000"
.LASF209:
	.ascii	"TGuiEventHandler\000"
.LASF119:
	.ascii	"adpcmb\000"
.LASF211:
	.ascii	"pType\000"
.LASF128:
	.ascii	"pSpriteRam\000"
.LASF134:
	.ascii	"smaBankoffset\000"
.LASF155:
	.ascii	"fixedBank\000"
.LASF57:
	.ascii	"OBJSIZE_8\000"
.LASF71:
	.ascii	"state_flags\000"
.LASF218:
	.ascii	"szName\000"
.LASF222:
	.ascii	"GUIOBJ_RENDERCLEAR\000"
.LASF158:
	.ascii	"sramProtection\000"
.LASF125:
	.ascii	"pSram\000"
.LASF4:
	.ascii	"short int\000"
.LASF177:
	.ascii	"frameCounter\000"
.LASF198:
	.ascii	"GUIEVENT_TOUCHUP\000"
.LASF47:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF85:
	.ascii	"ResetCallback\000"
.LASF16:
	.ascii	"true\000"
.LASF44:
	.ascii	"texturePtrs\000"
.LASF230:
	.ascii	"pChild\000"
.LASF204:
	.ascii	"TGuiEventID\000"
.LASF127:
	.ascii	"pVram\000"
.LASF58:
	.ascii	"OBJSIZE_16\000"
.LASF152:
	.ascii	"irqPending\000"
.LASF22:
	.ascii	"centerX\000"
.LASF23:
	.ascii	"centerY\000"
.LASF91:
	.ascii	"TRead32Func\000"
.LASF210:
	.ascii	"_TGuiObject\000"
.LASF240:
	.ascii	"mosaicShadow\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF24:
	.ascii	"scaleX\000"
.LASF25:
	.ascii	"scaleY\000"
.LASF70:
	.ascii	"reserved\000"
.LASF208:
	.ascii	"TGuiEventReturn\000"
.LASF118:
	.ascii	"adpcm\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF40:
	.ascii	"gl_hidden_globals\000"
.LASF59:
	.ascii	"OBJSIZE_32\000"
.LASF224:
	.ascii	"TGuiObjIterator\000"
.LASF241:
	.ascii	"mosaicShadowSub\000"
.LASF115:
	.ascii	"pVideoWriteTable\000"
.LASF154:
	.ascii	"paletteBank\000"
.LASF30:
	.ascii	"dirty\000"
.LASF133:
	.ascii	"smaBankAddr\000"
.LASF82:
	.ascii	"fetch16\000"
.LASF196:
	.ascii	"GUIEVENT_RENDER\000"
.LASF232:
	.ascii	"guiObjRenderDirty\000"
.LASF53:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF135:
	.ascii	"smaBankbit\000"
.LASF109:
	.ascii	"NEOROM_AUDODATA\000"
.LASF33:
	.ascii	"data\000"
.LASF171:
	.ascii	"fixedRomLatch\000"
.LASF157:
	.ascii	"sramProtectCount\000"
.LASF221:
	.ascii	"GUIOBJ_RENDERDIRTY\000"
.LASF117:
	.ascii	"romBankCount\000"
.LASF99:
	.ascii	"TNeoADPCMStream\000"
.LASF160:
	.ascii	"vramMod\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
