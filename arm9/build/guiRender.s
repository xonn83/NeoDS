	.code	16
	.file	"guiRender.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	guiRenderLogo
	.code 16
	.thumb_func
	.type	guiRenderLogo, %function
guiRenderLogo:
.LFB109:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiRender.c"
	.loc 1 79 0
	push	{lr}
.LCFI0:
.LVL0:
	.loc 1 82 0
	lsl	r1, r1, #5
.LVL1:
	ldr	r3, .L15
	add	r1, r1, r0
	lsl	r1, r1, #1
	add	r1, r1, r3
.LVL2:
	mov	r2, r1
.LVL3:
	mov	r3, #176
.LVL4:
.L2:
	.loc 1 87 0
	strh	r3, [r2]
	add	r3, r3, #1
.LVL5:
	lsl	r3, r3, #16
	lsr	r3, r3, #16
.LVL6:
	add	r2, r2, #2
	.loc 1 86 0
	cmp	r3, #188
	bne	.L2
	.loc 1 89 0
	add	r1, r1, #64
.LVL7:
	mov	r2, r1
.LVL8:
	mov	r3, #192
.LVL9:
.L4:
	.loc 1 92 0
	strh	r3, [r2]
	add	r3, r3, #1
.LVL10:
	lsl	r3, r3, #16
	lsr	r3, r3, #16
.LVL11:
	add	r2, r2, #2
	.loc 1 91 0
	cmp	r3, #204
	bne	.L4
	.loc 1 94 0
	add	r1, r1, #64
.LVL12:
	mov	r3, #208
.LVL13:
.L6:
	.loc 1 97 0
	strh	r3, [r1]
	add	r3, r3, #1
.LVL14:
	lsl	r3, r3, #16
	lsr	r3, r3, #16
.LVL15:
	add	r1, r1, #2
	.loc 1 96 0
	cmp	r3, #220
	bne	.L6
	.loc 1 99 0
	@ sp needed for prologue
	pop	{pc}
.L16:
	.align	2
.L15:
	.word	102803456
.LFE109:
	.size	guiRenderLogo, .-guiRenderLogo
	.align	2
	.global	guiRenderFrame
	.code 16
	.thumb_func
	.type	guiRenderFrame, %function
guiRenderFrame:
.LFB110:
	.loc 1 102 0
	push	{r4, r5, r6, lr}
.LCFI1:
.LVL16:
	sub	sp, sp, #8
.LCFI2:
	.loc 1 102 0
	str	r3, [sp, #4]
	.loc 1 105 0
	lsl	r1, r1, #5
.LVL17:
	.loc 1 102 0
	add	r3, sp, #24
.LVL18:
	mov	r6, r2
	.loc 1 105 0
	add	r1, r1, r0
	ldr	r2, .L37
.LVL19:
	.loc 1 102 0
	ldrb	r3, [r3]
	.loc 1 105 0
	lsl	r1, r1, #1
	add	r1, r1, r2
.LVL20:
	.loc 1 108 0
	cmp	r3, #1
	beq	.L20
.LVL21:
	cmp	r3, #1
	bcc	.L19
	cmp	r3, #2
	beq	.L21
	cmp	r3, #3
	bne	.L18
	mov	r2, #134
.LVL22:
	b	.L23
.LVL23:
.L18:
	mov	r2, #0
.LVL24:
	b	.L23
.LVL25:
.L19:
	mov	r2, #131
.LVL26:
	b	.L23
.LVL27:
.L20:
	.loc 1 109 0
	mov	r2, #128
.LVL28:
	b	.L23
.LVL29:
.L21:
	.loc 1 110 0
	mov	r2, #137
.LVL30:
.L23:
.LVL31:
	.loc 1 115 0
	strh	r2, [r1]
.LVL32:
	mov	r0, r2
.LVL33:
	add	r1, r1, #2
.LVL34:
	mov	r4, #1
.LVL35:
	b	.L24
.LVL36:
.L25:
	.loc 1 117 0
	add	r3, r0, #1
.LVL37:
	strh	r3, [r1]
	.loc 1 116 0
	add	r4, r4, #1
	.loc 1 117 0
	mov	r1, r2
.LVL38:
.L24:
	.loc 1 116 0
	sub	r5, r6, #1
	add	r2, r1, #2
.LVL39:
	cmp	r4, r5
	blt	.L25
.LVL40:
	.loc 1 119 0
	add	r3, r0, #2
.LVL41:
	strh	r3, [r1]
	.loc 1 120 0
	mov	r3, #32
	sub	r3, r3, r6
	lsl	r3, r3, #1
	mov	ip, r3
	add	r2, r2, ip
.LVL42:
	mov	r6, #1
.LVL43:
	b	.L27
.L28:
	.loc 1 123 0
	mov	r3, r0
	add	r3, r3, #16
	mov	r1, #1
.LVL44:
	strh	r3, [r2]
	b	.L29
.LVL45:
.L30:
	.loc 1 125 0
	mov	r3, r0
	add	r3, r3, #17
	strh	r3, [r4, r2]
	.loc 1 124 0
	add	r1, r1, #1
.LVL46:
.L29:
	lsl	r4, r1, #1
.LVL47:
	cmp	r1, r5
	blt	.L30
	add	r3, r2, r4
.LVL48:
	.loc 1 127 0
	mov	r2, r0
.LVL49:
	add	r2, r2, #18
	strh	r2, [r3]
	.loc 1 128 0
	mov	r1, ip
.LVL50:
	.loc 1 127 0
	add	r3, r3, #2
.LVL51:
	.loc 1 128 0
	add	r2, r3, r1
.LVL52:
	.loc 1 122 0
	add	r6, r6, #1
.LVL53:
.L27:
	ldr	r3, [sp, #4]
.LVL54:
	sub	r3, r3, #1
	cmp	r6, r3
	blt	.L28
	.loc 1 131 0
	mov	r3, r0
	add	r3, r3, #32
	mov	r1, #1
.LVL55:
	strh	r3, [r2]
	b	.L33
.LVL56:
.L34:
	.loc 1 133 0
	mov	r3, r0
	add	r3, r3, #33
	strh	r3, [r4, r2]
	.loc 1 132 0
	add	r1, r1, #1
.LVL57:
.L33:
	lsl	r4, r1, #1
.LVL58:
	cmp	r1, r5
	blt	.L34
	.loc 1 135 0
	mov	r3, r0
	add	r3, r3, #34
	.loc 1 136 0
	add	sp, sp, #8
	.loc 1 135 0
	strh	r3, [r4, r2]
	.loc 1 136 0
	@ sp needed for prologue
.LVL59:
	pop	{r4, r5, r6, pc}
.L38:
	.align	2
.L37:
	.word	102803456
.LFE110:
	.size	guiRenderFrame, .-guiRenderFrame
	.align	2
	.global	guiRenderFrameBounds
	.code 16
	.thumb_func
	.type	guiRenderFrameBounds, %function
guiRenderFrameBounds:
.LFB108:
	.loc 1 71 0
	push	{r4, r5, lr}
.LCFI3:
.LVL60:
	.loc 1 72 0
	ldr	r4, [r0]
	.loc 1 71 0
	mov	r5, r1
	.loc 1 75 0
	ldr	r2, [r0, #8]
	.loc 1 73 0
	ldr	r1, [r0, #4]
.LVL61:
	.loc 1 75 0
	ldr	r3, [r0, #12]
	sub	r2, r2, r4
	sub	r3, r3, r1
	.loc 1 71 0
	sub	sp, sp, #12
.LCFI4:
	.loc 1 75 0
	add	r2, r2, #1
	add	r3, r3, #1
	mov	r0, r4
.LVL62:
	str	r5, [sp]
	bl	guiRenderFrame
	.loc 1 76 0
	add	sp, sp, #12
	@ sp needed for prologue
.LVL63:
	pop	{r4, r5, pc}
.LFE108:
	.size	guiRenderFrameBounds, .-guiRenderFrameBounds
	.align	2
	.global	guiRenderChar
	.code 16
	.thumb_func
	.type	guiRenderChar, %function
guiRenderChar:
.LFB111:
	.loc 1 139 0
.LVL64:
	.loc 1 143 0
	lsl	r1, r1, #5
.LVL65:
	add	r1, r1, r0
	ldr	r3, .L43
	lsl	r1, r1, #1
	add	r1, r1, r3
	.loc 1 139 0
	@ lr needed for prologue
	.loc 1 143 0
	strh	r2, [r1]
	.loc 1 144 0
	@ sp needed for prologue
	bx	lr
.L44:
	.align	2
.L43:
	.word	102801408
.LFE111:
	.size	guiRenderChar, .-guiRenderChar
	.align	2
	.global	guiRenderVertString
	.code 16
	.thumb_func
	.type	guiRenderVertString, %function
guiRenderVertString:
.LFB112:
	.loc 1 147 0
	push	{r4, lr}
.LCFI5:
.LVL66:
	.loc 1 150 0
	lsl	r1, r1, #5
.LVL67:
	add	r1, r1, r0
	ldr	r3, .L53
	lsl	r1, r1, #1
	add	r1, r1, r3
.LVL68:
	b	.L46
.L47:
	.loc 1 153 0
	strh	r3, [r1]
	.loc 1 156 0
	cmp	r0, #22
	bgt	.L48
	.loc 1 154 0
	add	r1, r1, #64
	b	.L50
.L48:
	.loc 1 158 0
	add	r0, r0, #1
	.loc 1 159 0
	ldr	r4, .L53
	lsl	r3, r0, #1
	add	r1, r3, r4
.L50:
	.loc 1 153 0
	add	r2, r2, #1
.L46:
	.loc 1 152 0
	ldrb	r3, [r2]
	cmp	r3, #0
	bne	.L47
	.loc 1 162 0
	@ sp needed for prologue
	pop	{r4, pc}
.L54:
	.align	2
.L53:
	.word	102801408
.LFE112:
	.size	guiRenderVertString, .-guiRenderVertString
	.align	2
	.global	guiRenderString
	.code 16
	.thumb_func
	.type	guiRenderString, %function
guiRenderString:
.LFB113:
	.loc 1 166 0
	push	{r4, r5, lr}
.LCFI6:
.LVL69:
	.loc 1 169 0
	lsl	r3, r1, #5
	add	r3, r3, r0
	ldr	r5, .L63
	lsl	r3, r3, #1
	.loc 1 166 0
	mov	r4, r2
	.loc 1 169 0
	add	r2, r3, r5
.LVL70:
	b	.L56
.L57:
	.loc 1 173 0
	add	r0, r0, #1
	.loc 1 172 0
	strh	r3, [r2]
	.loc 1 174 0
	cmp	r0, #30
	bgt	.L58
	.loc 1 172 0
	add	r2, r2, #2
	b	.L60
.L58:
	.loc 1 177 0
	ldr	r0, .L63
.LVL71:
	.loc 1 176 0
	add	r1, r1, #1
	.loc 1 177 0
	lsl	r3, r1, #6
	add	r2, r3, r0
	mov	r0, #0
.LVL72:
.L60:
	.loc 1 172 0
	add	r4, r4, #1
.L56:
	.loc 1 171 0
	ldrb	r3, [r4]
	cmp	r3, #0
	bne	.L57
	.loc 1 180 0
	@ sp needed for prologue
.LVL73:
	pop	{r4, r5, pc}
.L64:
	.align	2
.L63:
	.word	102801408
.LFE113:
	.size	guiRenderString, .-guiRenderString
	.align	2
	.global	guiRenderStringn
	.code 16
	.thumb_func
	.type	guiRenderStringn, %function
guiRenderStringn:
.LFB114:
	.loc 1 183 0
	push	{r4, r5, r6, lr}
.LCFI7:
.LVL74:
	.loc 1 183 0
	mov	r4, r3
	.loc 1 186 0
	lsl	r3, r1, #5
.LVL75:
	add	r3, r3, r0
	ldr	r6, .L74
	lsl	r3, r3, #1
	.loc 1 183 0
	mov	r5, r2
	.loc 1 186 0
	add	r2, r3, r6
.LVL76:
	b	.L66
.L67:
	.loc 1 190 0
	add	r0, r0, #1
	.loc 1 189 0
	strh	r3, [r2]
	.loc 1 192 0
	cmp	r0, #30
	bgt	.L68
	.loc 1 189 0
	add	r2, r2, #2
	b	.L70
.L68:
	.loc 1 195 0
	ldr	r0, .L74
.LVL77:
	.loc 1 194 0
	add	r1, r1, #1
	.loc 1 195 0
	lsl	r3, r1, #6
	add	r2, r3, r0
	mov	r0, #0
.LVL78:
.L70:
	.loc 1 189 0
	add	r4, r4, #1
	.loc 1 191 0
	sub	r5, r5, #1
.L66:
	.loc 1 188 0
	ldrb	r3, [r4]
	cmp	r3, #0
	beq	.L73
	cmp	r5, #0
	bne	.L67
.L73:
	.loc 1 198 0
	@ sp needed for prologue
.LVL79:
.LVL80:
	pop	{r4, r5, r6, pc}
.L75:
	.align	2
.L74:
	.word	102801408
.LFE114:
	.size	guiRenderStringn, .-guiRenderStringn
	.align	2
	.global	guiRenderClearBounds
	.code 16
	.thumb_func
	.type	guiRenderClearBounds, %function
guiRenderClearBounds:
.LFB115:
	.loc 1 201 0
	push	{r4, r5, r6, lr}
.LCFI8:
.LVL81:
	.loc 1 202 0
	ldr	r2, [r0]
	ldr	r3, [r0, #8]
	.loc 1 205 0
	ldr	r4, [r0, #4]
.LVL82:
	.loc 1 202 0
	sub	r3, r3, r2
	add	r3, r3, #1
	mov	ip, r3
.LVL83:
	.loc 1 205 0
	lsl	r3, r4, #5
	add	r3, r3, r2
	ldr	r2, .L84
	ldr	r6, [r0, #12]
	lsl	r3, r3, #1
	.loc 1 201 0
	sub	sp, sp, #8
.LCFI9:
	.loc 1 205 0
	add	r0, r3, r2
.LVL84:
	b	.L77
.LVL85:
.L78:
	mov	r1, r0
	mov	r5, #0
	b	.L79
.L80:
.LBB2:
	.loc 1 209 0
	mov	r2, #0
	.loc 1 210 0
	ldr	r3, .L84+4
	.loc 1 209 0
	strh	r2, [r1]
	add	r1, r1, #2
	.loc 1 210 0
	add	r3, r1, r3
	strh	r2, [r3]
	.loc 1 208 0
	add	r5, r5, #1
.L79:
	cmp	r5, ip
	blt	.L80
.LBE2:
	.loc 1 205 0
	add	r4, r4, #1
	add	r0, r0, #64
.L77:
	cmp	r4, r6
	ble	.L78
	.loc 1 213 0
	add	sp, sp, #8
	@ sp needed for prologue
.LVL86:
.LVL87:
	pop	{r4, r5, r6, pc}
.L85:
	.align	2
.L84:
	.word	102803456
	.word	-2050
.LFE115:
	.size	guiRenderClearBounds, .-guiRenderClearBounds
	.align	2
	.global	guiRenderClear
	.code 16
	.thumb_func
	.type	guiRenderClear, %function
guiRenderClear:
.LFB116:
	.loc 1 217 0
	push	{lr}
.LCFI10:
	.loc 1 217 0
	ldr	r1, .L92
.LVL88:
.L87:
	.loc 1 222 0
	mov	r3, #0
	.loc 1 223 0
	ldr	r0, .L92+4
	.loc 1 222 0
	strh	r3, [r1]
	add	r1, r1, #2
	.loc 1 223 0
	add	r2, r1, r0
	strh	r3, [r2]
	.loc 1 221 0
	ldr	r3, .L92+8
	cmp	r1, r3
	bne	.L87
	.loc 1 225 0
	@ sp needed for prologue
	pop	{pc}
.L93:
	.align	2
.L92:
	.word	102803456
	.word	-2050
	.word	102804992
.LFE116:
	.size	guiRenderClear, .-guiRenderClear
	.align	2
	.global	guiRenderInit
	.code 16
	.thumb_func
	.type	guiRenderInit, %function
guiRenderInit:
.LFB107:
	.loc 1 42 0
	push	{lr}
.LCFI11:
	sub	sp, sp, #4
.LCFI12:
	.loc 1 45 0
	mov	r0, #1
	bl	vramSetBankI
.LBB7:
.LBB8:
	.file 2 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.loc 2 294 0
	ldr	r2, .L104
	ldr	r3, .L104+4
.LBE8:
.LBE7:
	.loc 1 57 0
	ldr	r1, .L104+8
.LBB9:
.LBB10:
	.loc 2 294 0
	str	r2, [r3]
.LBE10:
.LBE9:
	.loc 1 50 0
	ldr	r2, .L104+12
	add	r3, r3, #8
	strh	r2, [r3]
	.loc 1 51 0
	ldr	r2, .L104+16
	mov	r3, #4
	neg	r3, r3
	strh	r3, [r2]
	.loc 1 52 0
	add	r2, r2, #2
	strh	r3, [r2]
	.loc 1 55 0
	ldr	r2, .L104+20
	ldr	r3, .L104+24
	strh	r2, [r3]
	.loc 1 56 0
	mov	r2, #0
	add	r3, r3, #10
	strh	r2, [r3]
	.loc 1 57 0
	add	r3, r3, #2
	strh	r2, [r3]
	ldr	r2, .L104+28
.L95:
	.loc 1 61 0
	ldrh	r3, [r2]
	add	r2, r2, #2
	strh	r3, [r1]
	.loc 1 60 0
	ldr	r3, .L104+32
	.loc 1 61 0
	add	r1, r1, #2
	.loc 1 60 0
	cmp	r1, r3
	bne	.L95
	.loc 1 64 0
	bl	DC_FlushAll
.LBB11:
.LBB12:
	.file 3 "C:/devkitPro/libnds/include/nds/dma.h"
	.loc 3 108 0
	ldr	r2, .L104+36
	ldr	r3, .L104+40
	str	r2, [r3]
	.loc 3 109 0
	ldr	r2, .L104+44
	add	r3, r3, #4
	str	r2, [r3]
	.loc 3 110 0
	ldr	r3, .L104+48
	ldr	r2, .L104+52
	ldr	r3, [r3]
	lsr	r3, r3, #1
	orr	r3, r3, r2
	ldr	r2, .L104+56
	str	r3, [r2]
.L97:
	.loc 3 111 0
	ldr	r3, .L104+56
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L97
.LBE12:
.LBE11:
	.loc 1 68 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L105:
	.align	2
.L104:
	.word	66304
	.word	67112960
	.word	83887104
	.word	5128
	.word	67112976
	.word	5384
	.word	67112970
	.word	g_palette
	.word	83887616
	.word	gui_bin
	.word	67109076
	.word	102793216
	.word	gui_bin_size
	.word	-2147483648
	.word	67109084
.LFE107:
	.size	guiRenderInit, .-guiRenderInit
	.section	.rodata
	.align	1
	.type	g_palette, %object
	.size	g_palette, 512
g_palette:
	.short	0
	.short	20083
	.short	4228
	.short	15855
	.short	12684
	.short	9513
	.short	23254
	.short	26425
	.short	29596
	.short	14798
	.short	32767
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	31775
	.short	0
	.short	32767
	.short	16912
	.short	12684
	.space	470
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
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x4
	.4byte	.LCFI0-.LFB109
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x4
	.4byte	.LCFI1-.LFB110
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
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x4
	.4byte	.LCFI3-.LFB108
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
	.uleb128 0x18
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI5-.LFB112
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.byte	0x4
	.4byte	.LCFI6-.LFB113
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.byte	0x4
	.4byte	.LCFI7-.LFB114
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
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.byte	0x4
	.4byte	.LCFI8-.LFB115
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
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.byte	0x4
	.4byte	.LCFI10-.LFB116
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x4
	.4byte	.LCFI11-.LFB107
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE18:
	.file 4 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 5 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 6 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiRender.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/Default.h"
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
	.4byte	.LFB109-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB110-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB108-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB112-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LFB113-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL72-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LFB114-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL78-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LFB115-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LFB116-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LFB107-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x10b2
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF186
	.byte	0x1
	.4byte	.LASF187
	.4byte	.LASF188
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x5
	.byte	0x2e
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x5
	.byte	0x39
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x5
	.byte	0x3a
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x5
	.byte	0x53
	.4byte	0x6d
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x5
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
	.byte	0x4
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
	.byte	0x4
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x4
	.byte	0x60
	.4byte	0x50
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x4
	.byte	0x61
	.4byte	0x74
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x4
	.byte	0x65
	.4byte	0x3e
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x4
	.byte	0x66
	.4byte	0x62
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf7
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.4byte	0xff
	.uleb128 0x8
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.4byte	0x11e
	.4byte	0xc5
	.uleb128 0xa
	.4byte	0x100
	.byte	0xff
	.byte	0x0
	.uleb128 0xb
	.4byte	0x13f
	.byte	0x1
	.byte	0x8
	.byte	0x9b
	.uleb128 0xc
	.4byte	.LASF18
	.sleb128 0
	.uleb128 0xc
	.4byte	.LASF19
	.sleb128 1
	.uleb128 0xc
	.4byte	.LASF20
	.sleb128 2
	.uleb128 0xc
	.4byte	.LASF21
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x8
	.byte	0xa0
	.4byte	0x11e
	.uleb128 0xd
	.4byte	0x1c2
	.2byte	0x2018
	.byte	0x8
	.2byte	0x119
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x8
	.2byte	0x11a
	.4byte	0x13f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x8
	.2byte	0x11d
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x8
	.2byte	0x120
	.4byte	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x8
	.2byte	0x121
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x8
	.2byte	0x122
	.4byte	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x8
	.2byte	0x123
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x8
	.2byte	0x124
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.byte	0x0
	.uleb128 0x9
	.4byte	0x1d3
	.4byte	0xa2
	.uleb128 0xf
	.4byte	0x100
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x8
	.2byte	0x126
	.4byte	0x14a
	.uleb128 0x11
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ed
	.uleb128 0x12
	.4byte	0x107
	.uleb128 0x13
	.4byte	0x217
	.4byte	.LASF33
	.byte	0x8
	.byte	0x7
	.byte	0xd
	.uleb128 0x14
	.ascii	"x\000"
	.byte	0x7
	.byte	0xe
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.ascii	"y\000"
	.byte	0x7
	.byte	0xf
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x7
	.byte	0x10
	.4byte	0x1f2
	.uleb128 0x15
	.4byte	0x25f
	.byte	0x10
	.byte	0x7
	.byte	0x13
	.uleb128 0x14
	.ascii	"x0\000"
	.byte	0x7
	.byte	0x14
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.ascii	"y0\000"
	.byte	0x7
	.byte	0x15
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.ascii	"x1\000"
	.byte	0x7
	.byte	0x16
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.ascii	"y1\000"
	.byte	0x7
	.byte	0x17
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x15
	.4byte	0x282
	.byte	0x10
	.byte	0x7
	.byte	0x19
	.uleb128 0x14
	.ascii	"p0\000"
	.byte	0x7
	.byte	0x1a
	.4byte	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.ascii	"p1\000"
	.byte	0x7
	.byte	0x1b
	.4byte	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x16
	.4byte	0x299
	.4byte	.LASF189
	.byte	0x10
	.byte	0x7
	.byte	0x12
	.uleb128 0x17
	.4byte	0x222
	.uleb128 0x17
	.4byte	0x25f
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x7
	.byte	0x1d
	.4byte	0x282
	.uleb128 0x13
	.4byte	0x43a
	.4byte	.LASF34
	.byte	0xb0
	.byte	0xc
	.byte	0x15
	.uleb128 0x14
	.ascii	"d\000"
	.byte	0xc
	.byte	0x16
	.4byte	0x43a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.ascii	"a\000"
	.byte	0xc
	.byte	0x17
	.4byte	0x43a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.ascii	"pc\000"
	.byte	0xc
	.byte	0x18
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x14
	.ascii	"srh\000"
	.byte	0xc
	.byte	0x19
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x18
	.4byte	.LASF35
	.byte	0xc
	.byte	0x1a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x18
	.4byte	.LASF36
	.byte	0xc
	.byte	0x1b
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x14
	.ascii	"irq\000"
	.byte	0xc
	.byte	0x1c
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x14
	.ascii	"osp\000"
	.byte	0xc
	.byte	0x1d
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x14
	.ascii	"xc\000"
	.byte	0xc
	.byte	0x1e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x18
	.4byte	.LASF37
	.byte	0xc
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x18
	.4byte	.LASF38
	.byte	0xc
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x18
	.4byte	.LASF39
	.byte	0xc
	.byte	0x21
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x18
	.4byte	.LASF40
	.byte	0xc
	.byte	0x22
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x18
	.4byte	.LASF41
	.byte	0xc
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x18
	.4byte	.LASF42
	.byte	0xc
	.byte	0x24
	.4byte	0x45a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x18
	.4byte	.LASF43
	.byte	0xc
	.byte	0x25
	.4byte	0x45a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0xc
	.byte	0x26
	.4byte	0x45a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x18
	.4byte	.LASF45
	.byte	0xc
	.byte	0x27
	.4byte	0x45a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x18
	.4byte	.LASF46
	.byte	0xc
	.byte	0x28
	.4byte	0x471
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0xc
	.byte	0x29
	.4byte	0x488
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x18
	.4byte	.LASF48
	.byte	0xc
	.byte	0x2a
	.4byte	0x49f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x18
	.4byte	.LASF49
	.byte	0xc
	.byte	0x2b
	.4byte	0x45a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x18
	.4byte	.LASF50
	.byte	0xc
	.byte	0x2c
	.4byte	0x45a
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x18
	.4byte	.LASF51
	.byte	0xc
	.byte	0x2d
	.4byte	0x45a
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x18
	.4byte	.LASF52
	.byte	0xc
	.byte	0x2e
	.4byte	0x4b5
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x18
	.4byte	.LASF53
	.byte	0xc
	.byte	0x2f
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0xc
	.byte	0x30
	.4byte	0x4c1
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x18
	.4byte	.LASF55
	.byte	0xc
	.byte	0x31
	.4byte	0x4c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x9
	.4byte	0x44a
	.4byte	0x9b
	.uleb128 0xa
	.4byte	0x100
	.byte	0x7
	.byte	0x0
	.uleb128 0x19
	.4byte	0x45a
	.byte	0x1
	.4byte	0x9b
	.uleb128 0x1a
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x44a
	.uleb128 0x1b
	.4byte	0x471
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x9b
	.uleb128 0x1a
	.4byte	0x37
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x460
	.uleb128 0x1b
	.4byte	0x488
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x9b
	.uleb128 0x1a
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x477
	.uleb128 0x1b
	.4byte	0x49f
	.byte	0x1
	.uleb128 0x1a
	.4byte	0x9b
	.uleb128 0x1a
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x48e
	.uleb128 0x19
	.4byte	0x4b5
	.byte	0x1
	.4byte	0x94
	.uleb128 0x1a
	.4byte	0x94
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4a5
	.uleb128 0x1c
	.byte	0x1
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4bb
	.uleb128 0x9
	.4byte	0x4d7
	.4byte	0x9b
	.uleb128 0xa
	.4byte	0x100
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0xb
	.byte	0x6
	.4byte	0x2a4
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0xb
	.byte	0x8
	.4byte	0x4ed
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4f3
	.uleb128 0x19
	.4byte	0x503
	.byte	0x1
	.4byte	0xbb
	.uleb128 0x1a
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0xb
	.byte	0x9
	.4byte	0x50e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x514
	.uleb128 0x19
	.4byte	0x524
	.byte	0x1
	.4byte	0xc5
	.uleb128 0x1a
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0xb
	.byte	0xa
	.4byte	0x52f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x535
	.uleb128 0x19
	.4byte	0x545
	.byte	0x1
	.4byte	0xd0
	.uleb128 0x1a
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xb
	.byte	0xc
	.4byte	0x550
	.uleb128 0x6
	.byte	0x4
	.4byte	0x556
	.uleb128 0x1b
	.4byte	0x567
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xd0
	.uleb128 0x1a
	.4byte	0xbb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xb
	.byte	0xd
	.4byte	0x572
	.uleb128 0x6
	.byte	0x4
	.4byte	0x578
	.uleb128 0x1b
	.4byte	0x589
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xd0
	.uleb128 0x1a
	.4byte	0xc5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xb
	.byte	0xe
	.4byte	0x594
	.uleb128 0x6
	.byte	0x4
	.4byte	0x59a
	.uleb128 0x1b
	.4byte	0x5ab
	.byte	0x1
	.uleb128 0x1a
	.4byte	0xd0
	.uleb128 0x1a
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xb
	.byte	0x10
	.4byte	0x52f
	.uleb128 0x13
	.4byte	0x5fb
	.4byte	.LASF64
	.byte	0xc
	.byte	0xd
	.byte	0x17
	.uleb128 0x18
	.4byte	.LASF65
	.byte	0xd
	.byte	0x18
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.ascii	"end\000"
	.byte	0xd
	.byte	0x19
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.ascii	"acc\000"
	.byte	0xd
	.byte	0x1a
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
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
	.4byte	0x5b6
	.uleb128 0x13
	.4byte	0x63d
	.4byte	.LASF68
	.byte	0xc
	.byte	0xd
	.byte	0x1f
	.uleb128 0x18
	.4byte	.LASF69
	.byte	0xd
	.byte	0x20
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0xd
	.byte	0x21
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x18
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
	.4byte	0x606
	.uleb128 0x1d
	.4byte	0xa36
	.2byte	0x248
	.byte	0xa
	.byte	0xc0
	.uleb128 0x14
	.ascii	"cpu\000"
	.byte	0xa
	.byte	0xc1
	.4byte	0x4d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0xa
	.byte	0xc4
	.4byte	0xa36
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0xa
	.byte	0xc7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0xa
	.byte	0xc8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0xa
	.byte	0xcb
	.4byte	0xa46
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0xa
	.byte	0xcc
	.4byte	0x63d
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0xa
	.byte	0xcd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0xa
	.byte	0xd0
	.4byte	0xa56
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0xa
	.byte	0xd1
	.4byte	0xa56
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0xa
	.byte	0xd2
	.4byte	0xa56
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0xa
	.byte	0xd3
	.4byte	0xa56
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0xa
	.byte	0xd4
	.4byte	0xa56
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0xa
	.byte	0xd5
	.4byte	0xa56
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0xa
	.byte	0xd6
	.4byte	0xa5c
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0xa
	.byte	0xd7
	.4byte	0xa5c
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x18
	.4byte	.LASF87
	.byte	0xa
	.byte	0xd8
	.4byte	0xa5c
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0xa
	.byte	0xda
	.4byte	0xa62
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0xa
	.byte	0xdd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0xa
	.byte	0xde
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0xa
	.byte	0xdf
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0xa
	.byte	0xe0
	.4byte	0xa73
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0xa
	.byte	0xe1
	.4byte	0xa73
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0xa
	.byte	0xe2
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0xa
	.byte	0xe5
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0xa
	.byte	0xe6
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0xa
	.byte	0xe7
	.4byte	0xa5c
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0xa
	.byte	0xe8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0xa
	.byte	0xea
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0xa
	.byte	0xeb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0xa
	.byte	0xec
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0xa
	.byte	0xed
	.4byte	0xa7e
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0xa
	.byte	0xee
	.4byte	0xa5c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0xa
	.byte	0xf1
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0xa
	.byte	0xf2
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0xa
	.byte	0xf3
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0xa
	.byte	0xf4
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0xa
	.byte	0xf7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0xa
	.byte	0xf8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x18
	.4byte	.LASF110
	.byte	0xa
	.byte	0xf9
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0xa
	.byte	0xfa
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0xa
	.byte	0xfb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x18
	.4byte	.LASF113
	.byte	0xa
	.byte	0xfc
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0xa
	.byte	0xfd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0xa
	.2byte	0x102
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0xa
	.2byte	0x103
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0xa
	.2byte	0x106
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0xa
	.2byte	0x108
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xe
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x109
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xe
	.4byte	.LASF120
	.byte	0xa
	.2byte	0x10a
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xe
	.4byte	.LASF121
	.byte	0xa
	.2byte	0x10b
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xe
	.4byte	.LASF122
	.byte	0xa
	.2byte	0x10d
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xe
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x10e
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xe
	.4byte	.LASF124
	.byte	0xa
	.2byte	0x10f
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xe
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x110
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xe
	.4byte	.LASF126
	.byte	0xa
	.2byte	0x111
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0xa
	.2byte	0x114
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xe
	.4byte	.LASF128
	.byte	0xa
	.2byte	0x115
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xe
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x116
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xe
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x117
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xe
	.4byte	.LASF131
	.byte	0xa
	.2byte	0x118
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xe
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x11b
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xe
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x11c
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xe
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x11f
	.4byte	0xa8e
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xe
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x122
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xe
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x123
	.4byte	0xa9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0x9
	.4byte	0xa46
	.4byte	0x1e5
	.uleb128 0xa
	.4byte	0x100
	.byte	0x8
	.byte	0x0
	.uleb128 0x9
	.4byte	0xa56
	.4byte	0x5fb
	.uleb128 0xa
	.4byte	0x100
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
	.4byte	0xa68
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6e
	.uleb128 0x12
	.4byte	0xbb
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa79
	.uleb128 0x12
	.4byte	0xd0
	.uleb128 0x9
	.4byte	0xa8e
	.4byte	0xd0
	.uleb128 0xa
	.4byte	0x100
	.byte	0xf
	.byte	0x0
	.uleb128 0x9
	.4byte	0xa9e
	.4byte	0xbb
	.uleb128 0xa
	.4byte	0x100
	.byte	0x7
	.byte	0x0
	.uleb128 0x9
	.4byte	0xaad
	.4byte	0xbb
	.uleb128 0x1e
	.4byte	0x100
	.byte	0x0
	.uleb128 0x1f
	.4byte	0xac8
	.2byte	0x400
	.byte	0xa
	.byte	0xbf
	.uleb128 0x17
	.4byte	0x648
	.uleb128 0x20
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x125
	.4byte	0xac8
	.byte	0x0
	.uleb128 0x9
	.4byte	0xad8
	.4byte	0xd0
	.uleb128 0xa
	.4byte	0x100
	.byte	0xff
	.byte	0x0
	.uleb128 0x21
	.4byte	0xb5e
	.4byte	.LASF138
	.2byte	0x2000
	.byte	0xa
	.byte	0xbe
	.uleb128 0x22
	.4byte	0xaad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x128
	.4byte	0xb5e
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xe
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x129
	.4byte	0xb6e
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xe
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x12a
	.4byte	0xb7e
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xe
	.4byte	.LASF142
	.byte	0xa
	.2byte	0x12b
	.4byte	0xb8e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xe
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x12c
	.4byte	0xb9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xe
	.4byte	.LASF144
	.byte	0xa
	.2byte	0x12d
	.4byte	0xbae
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xe
	.4byte	.LASF145
	.byte	0xa
	.2byte	0x12e
	.4byte	0xbbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0x9
	.4byte	0xb6e
	.4byte	0x4e2
	.uleb128 0xa
	.4byte	0x100
	.byte	0xff
	.byte	0x0
	.uleb128 0x9
	.4byte	0xb7e
	.4byte	0x503
	.uleb128 0xa
	.4byte	0x100
	.byte	0xff
	.byte	0x0
	.uleb128 0x9
	.4byte	0xb8e
	.4byte	0x524
	.uleb128 0xa
	.4byte	0x100
	.byte	0xff
	.byte	0x0
	.uleb128 0x9
	.4byte	0xb9e
	.4byte	0x545
	.uleb128 0xa
	.4byte	0x100
	.byte	0xff
	.byte	0x0
	.uleb128 0x9
	.4byte	0xbae
	.4byte	0x567
	.uleb128 0xa
	.4byte	0x100
	.byte	0xff
	.byte	0x0
	.uleb128 0x9
	.4byte	0xbbe
	.4byte	0x589
	.uleb128 0xa
	.4byte	0x100
	.byte	0xff
	.byte	0x0
	.uleb128 0x9
	.4byte	0xbce
	.4byte	0x5ab
	.uleb128 0xa
	.4byte	0x100
	.byte	0xff
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF146
	.byte	0xa
	.2byte	0x12f
	.4byte	0xad8
	.uleb128 0x23
	.4byte	0xbff
	.4byte	.LASF190
	.byte	0x1
	.byte	0x6
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF147
	.sleb128 0
	.uleb128 0xc
	.4byte	.LASF148
	.sleb128 1
	.uleb128 0xc
	.4byte	.LASF149
	.sleb128 2
	.uleb128 0xc
	.4byte	.LASF150
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF151
	.byte	0x6
	.byte	0xc
	.4byte	0xbda
	.uleb128 0x24
	.4byte	0xc7b
	.byte	0x1
	.4byte	.LASF156
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LLST0
	.uleb128 0x25
	.ascii	"x0\000"
	.byte	0x1
	.byte	0x4e
	.4byte	0xe6
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.ascii	"y0\000"
	.byte	0x1
	.byte	0x4e
	.4byte	0xe6
	.4byte	.LLST1
	.uleb128 0x27
	.4byte	.LASF152
	.byte	0x1
	.byte	0x50
	.4byte	0xa79
	.uleb128 0x27
	.4byte	.LASF153
	.byte	0x1
	.byte	0x51
	.4byte	0xa79
	.uleb128 0x28
	.4byte	.LASF154
	.byte	0x1
	.byte	0x52
	.4byte	0xa5c
	.4byte	.LLST2
	.uleb128 0x29
	.ascii	"x\000"
	.byte	0x1
	.byte	0x53
	.4byte	0xe6
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.byte	0x55
	.4byte	0xc5
	.4byte	.LLST3
	.byte	0x0
	.uleb128 0x24
	.4byte	0xd12
	.byte	0x1
	.4byte	.LASF157
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST4
	.uleb128 0x26
	.ascii	"x\000"
	.byte	0x1
	.byte	0x65
	.4byte	0xe6
	.4byte	.LLST5
	.uleb128 0x26
	.ascii	"y\000"
	.byte	0x1
	.byte	0x65
	.4byte	0xe6
	.4byte	.LLST6
	.uleb128 0x26
	.ascii	"w\000"
	.byte	0x1
	.byte	0x65
	.4byte	0xe6
	.4byte	.LLST7
	.uleb128 0x26
	.ascii	"h\000"
	.byte	0x1
	.byte	0x65
	.4byte	0xe6
	.4byte	.LLST8
	.uleb128 0x2a
	.4byte	.LASF158
	.byte	0x1
	.byte	0x65
	.4byte	0xbff
	.4byte	.LLST9
	.uleb128 0x2b
	.ascii	"x0\000"
	.byte	0x1
	.byte	0x67
	.4byte	0xe6
	.4byte	.LLST10
	.uleb128 0x2b
	.ascii	"y0\000"
	.byte	0x1
	.byte	0x68
	.4byte	0xe6
	.4byte	.LLST11
	.uleb128 0x28
	.4byte	.LASF154
	.byte	0x1
	.byte	0x69
	.4byte	0xa5c
	.4byte	.LLST12
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.byte	0x6a
	.4byte	0xd0
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x24
	.4byte	0xd5c
	.byte	0x1
	.4byte	.LASF159
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LLST14
	.uleb128 0x2a
	.4byte	.LASF160
	.byte	0x1
	.byte	0x46
	.4byte	0xd5c
	.4byte	.LLST15
	.uleb128 0x2a
	.4byte	.LASF158
	.byte	0x1
	.byte	0x46
	.4byte	0xbff
	.4byte	.LLST16
	.uleb128 0x29
	.ascii	"w\000"
	.byte	0x1
	.byte	0x48
	.4byte	0xd67
	.uleb128 0x29
	.ascii	"h\000"
	.byte	0x1
	.byte	0x49
	.4byte	0xd67
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd62
	.uleb128 0x12
	.4byte	0x299
	.uleb128 0x12
	.4byte	0xe6
	.uleb128 0x2c
	.4byte	0xdb2
	.byte	0x1
	.4byte	.LASF161
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.4byte	.LFB111
	.4byte	.LFE111
	.byte	0x1
	.byte	0x5d
	.uleb128 0x25
	.ascii	"x\000"
	.byte	0x1
	.byte	0x8a
	.4byte	0xe6
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.ascii	"y\000"
	.byte	0x1
	.byte	0x8a
	.4byte	0xe6
	.4byte	.LLST18
	.uleb128 0x25
	.ascii	"c\000"
	.byte	0x1
	.byte	0x8a
	.4byte	0x107
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	.LASF154
	.byte	0x1
	.byte	0x8e
	.4byte	0xa5c
	.byte	0x0
	.uleb128 0x24
	.4byte	0xdfe
	.byte	0x1
	.4byte	.LASF162
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST19
	.uleb128 0x25
	.ascii	"x\000"
	.byte	0x1
	.byte	0x92
	.4byte	0xe6
	.byte	0x1
	.byte	0x50
	.uleb128 0x26
	.ascii	"y\000"
	.byte	0x1
	.byte	0x92
	.4byte	0xe6
	.4byte	.LLST20
	.uleb128 0x2d
	.4byte	.LASF163
	.byte	0x1
	.byte	0x92
	.4byte	0x1e7
	.byte	0x1
	.byte	0x52
	.uleb128 0x2e
	.4byte	.LASF154
	.byte	0x1
	.byte	0x96
	.4byte	0xa5c
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x24
	.4byte	0xe4c
	.byte	0x1
	.4byte	.LASF164
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST21
	.uleb128 0x26
	.ascii	"x\000"
	.byte	0x1
	.byte	0xa5
	.4byte	0xe6
	.4byte	.LLST22
	.uleb128 0x25
	.ascii	"y\000"
	.byte	0x1
	.byte	0xa5
	.4byte	0xe6
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.4byte	.LASF163
	.byte	0x1
	.byte	0xa5
	.4byte	0x1e7
	.4byte	.LLST23
	.uleb128 0x2e
	.4byte	.LASF154
	.byte	0x1
	.byte	0xa9
	.4byte	0xa5c
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x24
	.4byte	0xea7
	.byte	0x1
	.4byte	.LASF165
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LLST24
	.uleb128 0x26
	.ascii	"x\000"
	.byte	0x1
	.byte	0xb6
	.4byte	0xe6
	.4byte	.LLST25
	.uleb128 0x25
	.ascii	"y\000"
	.byte	0x1
	.byte	0xb6
	.4byte	0xe6
	.byte	0x1
	.byte	0x51
	.uleb128 0x26
	.ascii	"n\000"
	.byte	0x1
	.byte	0xb6
	.4byte	0xd0
	.4byte	.LLST26
	.uleb128 0x2a
	.4byte	.LASF163
	.byte	0x1
	.byte	0xb6
	.4byte	0x1e7
	.4byte	.LLST27
	.uleb128 0x2e
	.4byte	.LASF154
	.byte	0x1
	.byte	0xba
	.4byte	0xa5c
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x24
	.4byte	0xf19
	.byte	0x1
	.4byte	.LASF166
	.byte	0x1
	.byte	0xc9
	.byte	0x1
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LLST28
	.uleb128 0x2a
	.4byte	.LASF160
	.byte	0x1
	.byte	0xc8
	.4byte	0xd5c
	.4byte	.LLST29
	.uleb128 0x2e
	.4byte	.LASF152
	.byte	0x1
	.byte	0xca
	.4byte	0xe6
	.byte	0x1
	.byte	0x5c
	.uleb128 0x2b
	.ascii	"x\000"
	.byte	0x1
	.byte	0xcb
	.4byte	0xe6
	.4byte	.LLST30
	.uleb128 0x2b
	.ascii	"y\000"
	.byte	0x1
	.byte	0xcb
	.4byte	0xe6
	.4byte	.LLST31
	.uleb128 0x2f
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x2e
	.4byte	.LASF167
	.byte	0x1
	.byte	0xce
	.4byte	0xa5c
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.4byte	.LASF168
	.byte	0x1
	.byte	0xcf
	.4byte	0xa5c
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.4byte	0xf53
	.byte	0x1
	.4byte	.LASF169
	.byte	0x1
	.byte	0xd9
	.4byte	.LFB116
	.4byte	.LFE116
	.4byte	.LLST32
	.uleb128 0x2e
	.4byte	.LASF167
	.byte	0x1
	.byte	0xda
	.4byte	0xa5c
	.byte	0x1
	.byte	0x51
	.uleb128 0x27
	.4byte	.LASF168
	.byte	0x1
	.byte	0xdb
	.4byte	0xa5c
	.uleb128 0x29
	.ascii	"i\000"
	.byte	0x1
	.byte	0xdc
	.4byte	0xe6
	.byte	0x0
	.uleb128 0x31
	.4byte	0xf6e
	.4byte	.LASF171
	.byte	0x2
	.2byte	0x126
	.byte	0x1
	.byte	0x3
	.uleb128 0x32
	.4byte	.LASF170
	.byte	0x2
	.2byte	0x126
	.4byte	0xa2
	.byte	0x0
	.uleb128 0x33
	.4byte	0xf9d
	.4byte	.LASF172
	.byte	0x3
	.byte	0x6b
	.byte	0x1
	.byte	0x3
	.uleb128 0x34
	.4byte	.LASF173
	.byte	0x3
	.byte	0x6b
	.4byte	0xf9
	.uleb128 0x34
	.4byte	.LASF174
	.byte	0x3
	.byte	0x6b
	.4byte	0x1e5
	.uleb128 0x34
	.4byte	.LASF175
	.byte	0x3
	.byte	0x6b
	.4byte	0xa2
	.byte	0x0
	.uleb128 0x30
	.4byte	0xff3
	.byte	0x1
	.4byte	.LASF176
	.byte	0x1
	.byte	0x2a
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LLST33
	.uleb128 0x29
	.ascii	"i\000"
	.byte	0x1
	.byte	0x2b
	.4byte	0xe6
	.uleb128 0x35
	.4byte	0xfd3
	.4byte	0xf53
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x2f
	.uleb128 0x36
	.4byte	0xf61
	.byte	0x0
	.uleb128 0x37
	.4byte	0xf6e
	.4byte	.LBB11
	.4byte	.LBE11
	.byte	0x1
	.byte	0x43
	.uleb128 0x36
	.4byte	0xf91
	.uleb128 0x36
	.4byte	0xf86
	.uleb128 0x36
	.4byte	0xf7b
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.4byte	.LASF177
	.byte	0x8
	.2byte	0x129
	.4byte	0xfff
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d9
	.uleb128 0x2e
	.4byte	.LASF178
	.byte	0x1
	.byte	0x10
	.4byte	0x1016
	.byte	0x5
	.byte	0x3
	.4byte	g_palette
	.uleb128 0x12
	.4byte	0x10e
	.uleb128 0x9
	.4byte	0x1026
	.4byte	0x49
	.uleb128 0x39
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF179
	.byte	0x9
	.byte	0x2c
	.4byte	0x101b
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.4byte	0x103e
	.4byte	0x49
	.uleb128 0x39
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF180
	.byte	0x9
	.byte	0x2d
	.4byte	0x1033
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.4byte	0x1056
	.4byte	0x49
	.uleb128 0x39
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF181
	.byte	0x9
	.byte	0x2e
	.4byte	0x104b
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.4byte	.LASF182
	.byte	0xa
	.2byte	0x149
	.4byte	0x1072
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbce
	.uleb128 0x3c
	.4byte	.LASF183
	.byte	0xa
	.2byte	0x14d
	.4byte	0xbce
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.4byte	0x1091
	.4byte	0xbb
	.uleb128 0x39
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF184
	.byte	0x1
	.byte	0x5
	.4byte	0x109e
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0x1086
	.uleb128 0x3a
	.4byte	.LASF185
	.byte	0x1
	.byte	0x6
	.4byte	0x10b0
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0x94
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
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x6
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
	.uleb128 0x2
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0x5
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
	.uleb128 0x33
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xe7
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x10b6
	.4byte	0xc0a
	.ascii	"guiRenderLogo\000"
	.4byte	0xc7b
	.ascii	"guiRenderFrame\000"
	.4byte	0xd12
	.ascii	"guiRenderFrameBounds\000"
	.4byte	0xd6c
	.ascii	"guiRenderChar\000"
	.4byte	0xdb2
	.ascii	"guiRenderVertString\000"
	.4byte	0xdfe
	.ascii	"guiRenderString\000"
	.4byte	0xe4c
	.ascii	"guiRenderStringn\000"
	.4byte	0xea7
	.ascii	"guiRenderClearBounds\000"
	.4byte	0xf19
	.ascii	"guiRenderClear\000"
	.4byte	0xf9d
	.ascii	"guiRenderInit\000"
	.4byte	0x1063
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
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF24:
	.ascii	"clearColor\000"
.LASF42:
	.ascii	"checkpc\000"
.LASF46:
	.ascii	"write8\000"
.LASF93:
	.ascii	"smaBankbit\000"
.LASF145:
	.ascii	"cpuCheckPcTable\000"
.LASF101:
	.ascii	"spriteMask\000"
.LASF173:
	.ascii	"source\000"
.LASF124:
	.ascii	"ctrl3Reg\000"
.LASF51:
	.ascii	"fetch32\000"
.LASF189:
	.ascii	"_TBounds\000"
.LASF177:
	.ascii	"glGlob\000"
.LASF155:
	.ascii	"tile\000"
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
.LASF33:
	.ascii	"_TPoint\000"
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
.LASF151:
	.ascii	"TGuiBorderStyle\000"
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
.LASF8:
	.ascii	"long int\000"
.LASF71:
	.ascii	"frequency\000"
.LASF150:
	.ascii	"GUIBORDER_ROUND_PRESSED\000"
.LASF163:
	.ascii	"szString\000"
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
.LASF190:
	.ascii	"_TGuiBorderStyle\000"
.LASF52:
	.ascii	"IrqCallback\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF125:
	.ascii	"ctrl4Reg\000"
.LASF114:
	.ascii	"romBankAddress\000"
.LASF181:
	.ascii	"TAN_bin\000"
.LASF66:
	.ascii	"step\000"
.LASF78:
	.ascii	"adpcmActive\000"
.LASF157:
	.ascii	"guiRenderFrame\000"
.LASF98:
	.ascii	"vramBaseMask\000"
.LASF74:
	.ascii	"spriteCount\000"
.LASF154:
	.ascii	"pDst\000"
.LASF54:
	.ascii	"UnrecognizedCallback\000"
.LASF178:
	.ascii	"g_palette\000"
.LASF17:
	.ascii	"char\000"
.LASF127:
	.ascii	"irqVectorLatch\000"
.LASF165:
	.ascii	"guiRenderStringn\000"
.LASF85:
	.ascii	"pVram\000"
.LASF128:
	.ascii	"screenDarkLatch\000"
.LASF37:
	.ascii	"prev_pc\000"
.LASF68:
	.ascii	"_TNeoADPCMBStream\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF166:
	.ascii	"guiRenderClearBounds\000"
.LASF36:
	.ascii	"flags\000"
.LASF187:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiRender.c\000"
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
.LASF188:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF137:
	.ascii	"fill\000"
.LASF40:
	.ascii	"cycles\000"
.LASF153:
	.ascii	"stride\000"
.LASF144:
	.ascii	"cpuWrite32Table\000"
.LASF131:
	.ascii	"paletteRamLatch\000"
.LASF179:
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
.LASF32:
	.ascii	"TBounds\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF140:
	.ascii	"cpuRead16Table\000"
.LASF120:
	.ascii	"displayControlMask\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF132:
	.ascii	"active\000"
.LASF34:
	.ascii	"Cyclone\000"
.LASF81:
	.ascii	"pBios\000"
.LASF160:
	.ascii	"pBounds\000"
.LASF102:
	.ascii	"paletteDirty\000"
.LASF180:
	.ascii	"SIN_bin\000"
.LASF23:
	.ascii	"matrixMode\000"
.LASF27:
	.ascii	"nextBlock\000"
.LASF139:
	.ascii	"cpuRead8Table\000"
.LASF94:
	.ascii	"smaRand\000"
.LASF64:
	.ascii	"_TNeoADPCMStream\000"
.LASF62:
	.ascii	"TWrite32Func\000"
.LASF89:
	.ascii	"smaAddr0\000"
.LASF11:
	.ascii	"long long int\000"
.LASF18:
	.ascii	"GL_PROJECTION\000"
.LASF126:
	.ascii	"coinReg\000"
.LASF69:
	.ascii	"initOffset\000"
.LASF152:
	.ascii	"width\000"
.LASF55:
	.ascii	"internal\000"
.LASF50:
	.ascii	"fetch16\000"
.LASF90:
	.ascii	"smaAddr1\000"
.LASF35:
	.ascii	"unused\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF167:
	.ascii	"pDst0\000"
.LASF168:
	.ascii	"pDst1\000"
.LASF147:
	.ascii	"GUIBORDER_NORMAL\000"
.LASF119:
	.ascii	"displayControl\000"
.LASF159:
	.ascii	"guiRenderFrameBounds\000"
.LASF92:
	.ascii	"smaBankoffset\000"
.LASF21:
	.ascii	"GL_TEXTURE\000"
.LASF149:
	.ascii	"GUIBORDER_ROUND_NORMAL\000"
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
.LASF26:
	.ascii	"activeTexture\000"
.LASF123:
	.ascii	"ctrl2Reg\000"
.LASF44:
	.ascii	"read16\000"
.LASF112:
	.ascii	"paletteBank\000"
.LASF158:
	.ascii	"style\000"
.LASF183:
	.ascii	"g_neoContext\000"
.LASF41:
	.ascii	"membase\000"
.LASF186:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF95:
	.ascii	"scanline\000"
.LASF175:
	.ascii	"size\000"
.LASF87:
	.ascii	"pPalette\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF133:
	.ascii	"debug\000"
.LASF80:
	.ascii	"pRom1\000"
.LASF172:
	.ascii	"dmaCopy\000"
.LASF161:
	.ascii	"guiRenderChar\000"
.LASF185:
	.ascii	"gui_bin_size\000"
.LASF45:
	.ascii	"read32\000"
.LASF174:
	.ascii	"dest\000"
.LASF86:
	.ascii	"pSpriteRam\000"
.LASF148:
	.ascii	"GUIBORDER_PRESSED\000"
.LASF53:
	.ascii	"ResetCallback\000"
.LASF130:
	.ascii	"sramProtectLatch\000"
.LASF113:
	.ascii	"fixedBank\000"
.LASF182:
	.ascii	"g_neo\000"
.LASF29:
	.ascii	"nameCount\000"
.LASF122:
	.ascii	"ctrl1Reg\000"
.LASF39:
	.ascii	"state_flags\000"
.LASF116:
	.ascii	"sramProtection\000"
.LASF83:
	.ascii	"pSram\000"
.LASF70:
	.ascii	"freqCounter\000"
.LASF162:
	.ascii	"guiRenderVertString\000"
.LASF4:
	.ascii	"short int\000"
.LASF135:
	.ascii	"frameCounter\000"
.LASF77:
	.ascii	"adpcmb\000"
.LASF170:
	.ascii	"mode\000"
.LASF184:
	.ascii	"gui_bin\000"
.LASF28:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF171:
	.ascii	"videoSetModeSub\000"
.LASF121:
	.ascii	"displayCounterLoad\000"
.LASF110:
	.ascii	"irqPending\000"
.LASF164:
	.ascii	"guiRenderString\000"
.LASF176:
	.ascii	"guiRenderInit\000"
.LASF59:
	.ascii	"TRead32Func\000"
.LASF156:
	.ascii	"guiRenderLogo\000"
.LASF169:
	.ascii	"guiRenderClear\000"
.LASF9:
	.ascii	"uint32_t\000"
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
.LASF118:
	.ascii	"vramMod\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
