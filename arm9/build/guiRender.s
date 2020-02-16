	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
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
	.code	16
	.thumb_func
	.type	guiRenderLogo, %function
guiRenderLogo:
.LFB168:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/guiRender.c"
	.loc 1 79 0
	push	{lr}
.LCFI0:
.LVL0:
	.loc 1 82 0
	lsl	r1, r1, #5
.LVL1:
	ldr	r3, .L10
	add	r0, r1, r0
.LVL2:
	lsl	r0, r0, #1
	add	r0, r0, r3
.LVL3:
	mov	r2, r0
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
	add	r0, r0, #64
.LVL7:
	mov	r2, r0
	mov	r3, #192
.LVL8:
.L3:
	.loc 1 92 0
	strh	r3, [r2]
	add	r3, r3, #1
.LVL9:
	lsl	r3, r3, #16
	lsr	r3, r3, #16
.LVL10:
	add	r2, r2, #2
	.loc 1 91 0
	cmp	r3, #204
	bne	.L3
	.loc 1 94 0
	add	r0, r0, #64
.LVL11:
	mov	r3, #208
.LVL12:
.L4:
	.loc 1 97 0
	strh	r3, [r0]
	add	r3, r3, #1
.LVL13:
	lsl	r3, r3, #16
	lsr	r3, r3, #16
.LVL14:
	add	r0, r0, #2
	.loc 1 96 0
	cmp	r3, #220
	bne	.L4
	.loc 1 99 0
	@ sp needed for prologue
	pop	{pc}
.L11:
	.align	2
.L10:
	.word	102803456
.LFE168:
	.size	guiRenderLogo, .-guiRenderLogo
	.align	2
	.global	guiRenderFrame
	.code	16
	.thumb_func
	.type	guiRenderFrame, %function
guiRenderFrame:
.LFB169:
	.loc 1 102 0
	push	{r4, r5, r6, lr}
.LCFI1:
.LVL15:
	sub	sp, sp, #16
.LCFI2:
	.loc 1 105 0
	lsl	r1, r1, #5
.LVL16:
	.loc 1 102 0
	add	r4, sp, #32
	.loc 1 105 0
	add	r0, r1, r0
.LVL17:
	.loc 1 102 0
	ldrb	r4, [r4]
.LVL18:
	.loc 1 105 0
	ldr	r1, .L24
	lsl	r0, r0, #1
	add	r0, r0, r1
.LVL19:
	cmp	r4, #3
	bls	.L13
	mov	r1, #0
.LVL20:
	b	.L14
.LVL21:
.L13:
	ldr	r1, .L24+4
	lsl	r4, r4, #2
.LVL22:
	ldr	r1, [r4, r1]
.LVL23:
.L14:
	.loc 1 115 0
	lsl	r1, r1, #16
.LVL24:
	lsr	r1, r1, #16
	.loc 1 117 0
	add	r6, r1, #1
	.loc 1 115 0
	strh	r1, [r0]
	mov	r5, #1
.LVL25:
	add	r0, r0, #2
.LVL26:
	.loc 1 116 0
	sub	r4, r2, #1
.LVL27:
	.loc 1 117 0
	mov	ip, r6
	str	r3, [sp, #8]
	.loc 1 116 0
	b	.L15
.LVL28:
.L16:
	.loc 1 117 0
	mov	r3, ip
.LVL29:
	strh	r3, [r0]
	.loc 1 116 0
	add	r5, r5, #1
.LVL30:
	.loc 1 117 0
	mov	r0, r6
.LVL31:
.L15:
	add	r6, r0, #2
.LVL32:
	.loc 1 116 0
	cmp	r5, r4
	blt	.L16
	ldr	r3, [sp, #8]
.LVL33:
	.loc 1 119 0
	add	r5, r1, #2
.LVL34:
	strh	r5, [r0]
	.loc 1 122 0
	sub	r3, r3, #1
.LVL35:
	.loc 1 120 0
	mov	r0, #32
	sub	r2, r0, r2
.LVL36:
	.loc 1 122 0
	mov	ip, r3
	.loc 1 123 0
	mov	r0, r1
	.loc 1 125 0
	mov	r3, r1
	.loc 1 120 0
	lsl	r2, r2, #1
	.loc 1 123 0
	add	r0, r0, #16
	.loc 1 125 0
	add	r3, r3, #17
	.loc 1 120 0
	add	r6, r6, r2
.LVL37:
	mov	r5, #1
.LVL38:
	.loc 1 123 0
	str	r0, [sp, #8]
	.loc 1 125 0
	str	r3, [sp, #12]
	.loc 1 122 0
	b	.L17
.L20:
	.loc 1 123 0
	mov	r3, #8
	mov	r0, sp
	ldrh	r0, [r3, r0]
	str	r1, [sp]
	strh	r0, [r6]
	mov	r3, #1
.LVL39:
	ldr	r0, [sp, #4]
.LVL40:
	str	r2, [sp, #4]
	.loc 1 124 0
	b	.L18
.LVL41:
.L19:
	.loc 1 125 0
	mov	r1, sp
	mov	r2, #12
	ldrh	r1, [r2, r1]
	.loc 1 124 0
	add	r3, r3, #1
.LVL42:
	.loc 1 125 0
	strh	r1, [r0]
	mov	r0, r6
.LVL43:
.L18:
	add	r6, r0, #2
.LVL44:
	.loc 1 124 0
	cmp	r3, r4
	blt	.L19
	ldr	r1, [sp]
	ldr	r2, [sp, #4]
	.loc 1 127 0
	mov	r3, r1
.LVL45:
	add	r3, r3, #18
	strh	r3, [r0]
	.loc 1 128 0
	add	r6, r6, r2
.LVL46:
	.loc 1 122 0
	add	r5, r5, #1
.LVL47:
.L17:
	add	r3, r6, #2
	str	r3, [sp, #4]
	cmp	r5, ip
	blt	.L20
	mov	r0, r3
.LVL48:
	.loc 1 131 0
	mov	r3, r1
	add	r3, r3, #32
	.loc 1 133 0
	mov	r2, r1
	.loc 1 131 0
	strh	r3, [r6]
	.loc 1 133 0
	add	r2, r2, #33
	.loc 1 131 0
	mov	r3, #1
.LVL49:
	.loc 1 132 0
	b	.L21
.LVL50:
.L22:
	.loc 1 133 0
	strh	r2, [r0]
	.loc 1 132 0
	add	r3, r3, #1
.LVL51:
	.loc 1 133 0
	add	r0, r0, #2
.LVL52:
.L21:
	.loc 1 132 0
	cmp	r3, r4
	blt	.L22
.LVL53:
	.loc 1 135 0
	add	r1, r1, #34
	strh	r1, [r0]
	.loc 1 136 0
	add	sp, sp, #16
	@ sp needed for prologue
.LVL54:
.LVL55:
	pop	{r4, r5, r6, pc}
.L25:
	.align	2
.L24:
	.word	102803456
	.word	.LANCHOR0
.LFE169:
	.size	guiRenderFrame, .-guiRenderFrame
	.align	2
	.global	guiRenderFrameBounds
	.code	16
	.thumb_func
	.type	guiRenderFrameBounds, %function
guiRenderFrameBounds:
.LFB167:
	.loc 1 71 0
	push	{r4, lr}
.LCFI3:
.LVL56:
	mov	r3, r0
	sub	sp, sp, #8
.LCFI4:
	.loc 1 71 0
	mov	r4, r1
	.loc 1 75 0
	ldr	r2, [r3, #8]
	.loc 1 73 0
	ldr	r1, [r3, #4]
.LVL57:
	.loc 1 75 0
	ldr	r3, [r3, #12]
	.loc 1 72 0
	ldr	r0, [r0]
.LVL58:
	.loc 1 75 0
	add	r2, r2, #1
	add	r3, r3, #1
	sub	r2, r2, r0
	sub	r3, r3, r1
	str	r4, [sp]
	bl	guiRenderFrame
	.loc 1 76 0
	add	sp, sp, #8
	@ sp needed for prologue
.LVL59:
	pop	{r4, pc}
.LFE167:
	.size	guiRenderFrameBounds, .-guiRenderFrameBounds
	.align	2
	.global	guiRenderChar
	.code	16
	.thumb_func
	.type	guiRenderChar, %function
guiRenderChar:
.LFB170:
	.loc 1 139 0
.LVL60:
	.loc 1 143 0
	lsl	r1, r1, #5
.LVL61:
	add	r0, r1, r0
.LVL62:
	ldr	r3, .L30
	lsl	r0, r0, #1
	add	r0, r0, r3
	strh	r2, [r0]
	.loc 1 144 0
	@ sp needed for prologue
	bx	lr
.L31:
	.align	2
.L30:
	.word	102801408
.LFE170:
	.size	guiRenderChar, .-guiRenderChar
	.align	2
	.global	guiRenderVertString
	.code	16
	.thumb_func
	.type	guiRenderVertString, %function
guiRenderVertString:
.LFB171:
	.loc 1 147 0
	push	{lr}
.LCFI5:
.LVL63:
	.loc 1 150 0
	lsl	r1, r1, #5
.LVL64:
	add	r1, r1, r0
	ldr	r3, .L38
	lsl	r1, r1, #1
	add	r1, r1, r3
.LVL65:
	.loc 1 152 0
	b	.L33
.L36:
	.loc 1 153 0
	strh	r3, [r1]
	.loc 1 156 0
	cmp	r0, #22
	bgt	.L34
	.loc 1 154 0
	add	r1, r1, #64
	b	.L35
.L34:
	.loc 1 158 0
	add	r0, r0, #1
.LVL66:
	.loc 1 159 0
	ldr	r3, .L38
	lsl	r1, r0, #1
.LVL67:
	add	r1, r1, r3
.LVL68:
.L35:
	.loc 1 153 0
	add	r2, r2, #1
.LVL69:
.L33:
	.loc 1 152 0
	ldrb	r3, [r2]
	cmp	r3, #0
	bne	.L36
	.loc 1 162 0
	@ sp needed for prologue
	pop	{pc}
.L39:
	.align	2
.L38:
	.word	102801408
.LFE171:
	.size	guiRenderVertString, .-guiRenderVertString
	.align	2
	.global	guiRenderString
	.code	16
	.thumb_func
	.type	guiRenderString, %function
guiRenderString:
.LFB172:
	.loc 1 166 0
	push	{r4, lr}
.LCFI6:
.LVL70:
	.loc 1 169 0
	lsl	r3, r1, #5
	add	r3, r3, r0
	ldr	r4, .L46
	lsl	r3, r3, #1
	add	r3, r3, r4
.LVL71:
	.loc 1 171 0
	b	.L41
.L44:
	.loc 1 173 0
	add	r0, r0, #1
.LVL72:
	.loc 1 172 0
	strh	r4, [r3]
	.loc 1 174 0
	cmp	r0, #30
	bgt	.L42
	.loc 1 172 0
	add	r3, r3, #2
	b	.L43
.L42:
	.loc 1 177 0
	ldr	r0, .L46
.LVL73:
	.loc 1 176 0
	add	r1, r1, #1
.LVL74:
	.loc 1 177 0
	lsl	r3, r1, #6
.LVL75:
	add	r3, r3, r0
.LVL76:
	mov	r0, #0
.LVL77:
.L43:
	.loc 1 172 0
	add	r2, r2, #1
.LVL78:
.L41:
	.loc 1 171 0
	ldrb	r4, [r2]
	cmp	r4, #0
	bne	.L44
	.loc 1 180 0
	@ sp needed for prologue
	pop	{r4, pc}
.L47:
	.align	2
.L46:
	.word	102801408
.LFE172:
	.size	guiRenderString, .-guiRenderString
	.align	2
	.global	guiRenderStringn
	.code	16
	.thumb_func
	.type	guiRenderStringn, %function
guiRenderStringn:
.LFB173:
	.loc 1 183 0
	push	{r4, r5, r6, lr}
.LCFI7:
.LVL79:
	.loc 1 186 0
	lsl	r5, r1, #5
	ldr	r4, .L55
	add	r5, r5, r0
	lsl	r5, r5, #1
	add	r5, r5, r4
.LVL80:
	mov	r4, #0
	.loc 1 188 0
	b	.L49
.L52:
	.loc 1 190 0
	add	r0, r0, #1
.LVL81:
	.loc 1 189 0
	strh	r6, [r5]
	.loc 1 192 0
	cmp	r0, #30
	bgt	.L50
	.loc 1 189 0
	add	r5, r5, #2
	b	.L51
.L50:
	.loc 1 195 0
	ldr	r0, .L55
.LVL82:
	.loc 1 194 0
	add	r1, r1, #1
.LVL83:
	.loc 1 195 0
	lsl	r5, r1, #6
.LVL84:
	add	r5, r5, r0
.LVL85:
	mov	r0, #0
.LVL86:
.L51:
	add	r4, r4, #1
.L49:
	.loc 1 188 0
	ldrb	r6, [r3, r4]
	cmp	r2, r4
	beq	.L54
	cmp	r6, #0
	bne	.L52
.L54:
	.loc 1 198 0
	@ sp needed for prologue
.LVL87:
	pop	{r4, r5, r6, pc}
.L56:
	.align	2
.L55:
	.word	102801408
.LFE173:
	.size	guiRenderStringn, .-guiRenderStringn
	.align	2
	.global	guiRenderClearBounds
	.code	16
	.thumb_func
	.type	guiRenderClearBounds, %function
guiRenderClearBounds:
.LFB174:
	.loc 1 201 0
	push	{r4, r5, r6, lr}
.LCFI8:
.LVL88:
	sub	sp, sp, #8
.LCFI9:
	.loc 1 202 0
	ldr	r5, [r0, #8]
	ldr	r3, [r0]
	add	r5, r5, #1
	sub	r5, r5, r3
	str	r5, [sp, #4]
	.loc 1 205 0
	ldr	r2, [r0, #4]
.LVL89:
	ldr	r6, [r0, #12]
	lsl	r1, r2, #5
	add	r3, r1, r3
	ldr	r1, .L63
	lsl	r3, r3, #1
	add	r3, r3, r1
	mov	r4, #0
	b	.L58
.LVL90:
.L61:
	ldr	r5, .L63+4
	mov	r1, #0
	add	r5, r5, r3
	mov	ip, r5
	mov	r0, #0
.LVL91:
.LBB8:
	.loc 1 208 0
	b	.L59
.L60:
	.loc 1 210 0
	mov	r5, ip
	.loc 1 209 0
	strh	r4, [r3, r1]
	.loc 1 208 0
	add	r0, r0, #1
	.loc 1 210 0
	strh	r4, [r5, r1]
	.loc 1 208 0
	add	r1, r1, #2
.L59:
	ldr	r5, [sp, #4]
	cmp	r0, r5
	blt	.L60
.LBE8:
	.loc 1 205 0
	add	r2, r2, #1
	add	r3, r3, #64
.LVL92:
.L58:
	cmp	r2, r6
	ble	.L61
	.loc 1 213 0
	add	sp, sp, #8
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L64:
	.align	2
.L63:
	.word	102803456
	.word	-2048
.LFE174:
	.size	guiRenderClearBounds, .-guiRenderClearBounds
	.align	2
	.global	guiRenderClear
	.code	16
	.thumb_func
	.type	guiRenderClear, %function
guiRenderClear:
.LFB175:
	.loc 1 217 0
	push	{r4, lr}
.LCFI10:
	.loc 1 217 0
	ldr	r3, .L69
.LVL93:
	.loc 1 221 0
	ldr	r1, .L69+4
	.loc 1 222 0
	mov	r2, #0
.L66:
	.loc 1 223 0
	ldr	r4, .L69+8
	.loc 1 222 0
	strh	r2, [r3]
	add	r3, r3, #2
	.loc 1 223 0
	add	r0, r3, r4
	strh	r2, [r0]
	.loc 1 221 0
	cmp	r3, r1
	bne	.L66
	.loc 1 225 0
	@ sp needed for prologue
	pop	{r4, pc}
.L70:
	.align	2
.L69:
	.word	102803456
	.word	102804992
	.word	-2050
.LFE175:
	.size	guiRenderClear, .-guiRenderClear
	.align	2
	.global	guiRenderInit
	.code	16
	.thumb_func
	.type	guiRenderInit, %function
guiRenderInit:
.LFB166:
	.loc 1 42 0
	push	{r4, lr}
.LCFI11:
.LBB9:
.LBB10:
	.file 2 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.loc 2 381 0
	ldr	r2, .L77
	mov	r3, #127
	neg	r3, r3
	strb	r3, [r2]
.LBE10:
.LBE9:
.LBB11:
.LBB12:
	.loc 2 502 0
	ldr	r2, .L77+4
	ldr	r3, .L77+8
.LBE12:
.LBE11:
	.loc 1 61 0
	ldr	r1, .L77+12
.LBB14:
.LBB13:
	.loc 2 502 0
	str	r2, [r3]
.LBE13:
.LBE14:
	.loc 1 50 0
	ldr	r2, .L77+16
	add	r3, r3, #8
	strh	r2, [r3]
	.loc 1 51 0
	ldr	r2, .L77+20
	mov	r3, #4
	neg	r3, r3
	strh	r3, [r2]
	.loc 1 52 0
	add	r2, r2, #2
	strh	r3, [r2]
	.loc 1 55 0
	ldr	r2, .L77+24
	ldr	r3, .L77+28
	.loc 1 61 0
	add	r1, r1, #16
	.loc 1 55 0
	strh	r2, [r3]
	.loc 1 56 0
	ldr	r2, .L77+32
	mov	r3, #0
	strh	r3, [r2]
	.loc 1 57 0
	add	r2, r2, #2
	strh	r3, [r2]
	ldr	r3, .L77+36
	.loc 1 60 0
	ldr	r2, .L77+40
.L72:
	.loc 1 61 0
	ldr	r4, .L77+44
	add	r0, r1, r3
	add	r0, r0, r4
	ldrh	r0, [r0]
	strh	r0, [r3]
	add	r3, r3, #2
	.loc 1 60 0
	cmp	r3, r2
	bne	.L72
	.loc 1 64 0
	bl	DC_FlushAll
.LBB15:
.LBB16:
	.file 3 "C:/devkitPro/libnds/include/nds/dma.h"
	.loc 3 152 0
	ldr	r3, .L77+48
	ldr	r2, .L77+52
	str	r2, [r3]
	.loc 3 153 0
	ldr	r2, .L77+56
	add	r3, r3, #4
	str	r2, [r3]
	.loc 3 154 0
	ldr	r3, .L77+60
	ldr	r2, [r3]
	ldr	r3, .L77+64
	lsr	r2, r2, #1
	orr	r2, r2, r3
	ldr	r3, .L77+68
	str	r2, [r3]
.L73:
	.loc 3 155 0
	ldr	r2, [r3]
	cmp	r2, #0
	blt	.L73
.LBE16:
.LBE15:
	.loc 1 68 0
	@ sp needed for prologue
	pop	{r4, pc}
.L78:
	.align	2
.L77:
	.word	67109449
	.word	66304
	.word	67112960
	.word	.LANCHOR0
	.word	5128
	.word	67112976
	.word	5384
	.word	67112970
	.word	67112980
	.word	83887104
	.word	83887616
	.word	-83887104
	.word	67109076
	.word	gui_bin
	.word	102793216
	.word	gui_bin_size
	.word	-2147483648
	.word	67109084
.LFE166:
	.size	guiRenderInit, .-guiRenderInit
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	CSWTCH.94, %object
	.size	CSWTCH.94, 16
CSWTCH.94:
	.word	131
	.word	128
	.word	137
	.word	134
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
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.byte	0x4
	.4byte	.LCFI0-.LFB168
	.byte	0xe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.byte	0x4
	.4byte	.LCFI1-.LFB169
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
	.uleb128 0x20
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.byte	0x4
	.4byte	.LCFI3-.LFB167
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
	.uleb128 0x10
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.byte	0x4
	.4byte	.LCFI5-.LFB171
	.byte	0xe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.byte	0x4
	.4byte	.LCFI6-.LFB172
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.byte	0x4
	.4byte	.LCFI7-.LFB173
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
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.byte	0x4
	.4byte	.LCFI8-.LFB174
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
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.byte	0x4
	.4byte	.LCFI10-.LFB175
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.byte	0x4
	.4byte	.LCFI11-.LFB166
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE18:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB168-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB169-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE169-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49-.Ltext0
	.4byte	.LFE169-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL55-.Ltext0
	.4byte	.LFE169-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB167-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE167-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LFB171-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL68-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LFB172-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL77-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LFB173-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL86-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LFB174-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL92-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LFB175-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE175-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LFB166-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE166-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
	.file 4 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 5 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 6 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 7 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 8 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 9 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 10 "C:/Users/GRX/NeoDS-master-old/arm9/source/Default.h"
	.file 11 "C:/Users/GRX/NeoDS-master-old/arm9/include/cyclone.h"
	.file 12 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoCpu.h"
	.file 13 "C:/Users/GRX/NeoDS-master-old/arm9/../common/source/NeoAudioStream.h"
	.file 14 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoSystem.h"
	.file 15 "C:/Users/GRX/NeoDS-master-old/arm9/source/guiRender.h"
	.section	.debug_info
	.4byte	0x13b7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF255
	.byte	0x1
	.4byte	.LASF256
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x4
	.byte	0x2a
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x4
	.byte	0x35
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
	.byte	0x36
	.4byte	0x57
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4f
	.4byte	0x69
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
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
	.byte	0x5
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
	.byte	0x5
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x5
	.byte	0x63
	.4byte	0x4c
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x5
	.byte	0x64
	.4byte	0x70
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x5
	.byte	0x68
	.4byte	0x3a
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x5
	.byte	0x69
	.4byte	0x5e
	.uleb128 0x6
	.byte	0x1
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x1
	.byte	0x2
	.2byte	0x117
	.4byte	0x14e
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
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x2
	.2byte	0x11c
	.4byte	0x12c
	.uleb128 0xf
	.4byte	0xb3
	.4byte	0x16a
	.uleb128 0x10
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.2byte	0x1ad
	.4byte	0x20c
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 65536
	.uleb128 0x7
	.4byte	.LASF27
	.sleb128 65537
	.uleb128 0x7
	.4byte	.LASF28
	.sleb128 65538
	.uleb128 0x7
	.4byte	.LASF29
	.sleb128 65539
	.uleb128 0x7
	.4byte	.LASF30
	.sleb128 65540
	.uleb128 0x7
	.4byte	.LASF31
	.sleb128 65541
	.uleb128 0x7
	.4byte	.LASF32
	.sleb128 65542
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 65800
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 65801
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 65802
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 65803
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 65804
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 65805
	.uleb128 0x7
	.4byte	.LASF39
	.sleb128 65806
	.uleb128 0x7
	.4byte	.LASF40
	.sleb128 196608
	.uleb128 0x7
	.4byte	.LASF41
	.sleb128 131072
	.uleb128 0x7
	.4byte	.LASF42
	.sleb128 393216
	.uleb128 0x7
	.4byte	.LASF43
	.sleb128 655360
	.uleb128 0x7
	.4byte	.LASF44
	.sleb128 917504
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x28
	.byte	0x6
	.2byte	0x18c
	.4byte	0x2b0
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x18d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x18e
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x18f
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x190
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x191
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x192
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x193
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x194
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x195
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x196
	.4byte	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x198
	.4byte	0x20c
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x8
	.byte	0x7
	.byte	0x29
	.4byte	0x2e5
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x7
	.byte	0x2a
	.4byte	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x7
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
	.4byte	.LASF56
	.byte	0x7
	.byte	0x2c
	.4byte	0x2bc
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x9c
	.4byte	0x317
	.uleb128 0x7
	.4byte	.LASF59
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF60
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF61
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF62
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x8
	.byte	0xa1
	.4byte	0x2f6
	.uleb128 0x15
	.4byte	.LASF64
	.2byte	0x2020
	.byte	0x8
	.2byte	0x11a
	.4byte	0x3ae
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x11b
	.4byte	0x317
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x11e
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x121
	.4byte	0x3ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x8
	.2byte	0x122
	.4byte	0x2eb
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x8
	.2byte	0x123
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x8
	.2byte	0x124
	.4byte	0x3bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x8
	.2byte	0x125
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x126
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x201c
	.byte	0x0
	.uleb128 0xf
	.4byte	0x90
	.4byte	0x3bf
	.uleb128 0x16
	.4byte	0x107
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x90
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x128
	.4byte	0x322
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb3
	.uleb128 0xc
	.4byte	0x69
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x59
	.4byte	0x403
	.uleb128 0x7
	.4byte	.LASF73
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF74
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF75
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF76
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x62
	.4byte	0x424
	.uleb128 0x7
	.4byte	.LASF77
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF78
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF79
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF80
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x6a
	.4byte	0x445
	.uleb128 0x7
	.4byte	.LASF81
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF82
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF83
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF84
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x72
	.4byte	0x45a
	.uleb128 0x7
	.4byte	.LASF85
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF86
	.sleb128 1
	.byte	0x0
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0x8
	.byte	0xa
	.byte	0xd
	.4byte	0x47f
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
	.4byte	.LASF88
	.byte	0xa
	.byte	0x10
	.4byte	0x45a
	.uleb128 0x18
	.byte	0x10
	.byte	0xa
	.byte	0x13
	.4byte	0x4c7
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
	.4byte	0x4ea
	.uleb128 0x17
	.ascii	"p0\000"
	.byte	0xa
	.byte	0x1a
	.4byte	0x47f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.ascii	"p1\000"
	.byte	0xa
	.byte	0x1b
	.4byte	0x47f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF257
	.byte	0x10
	.byte	0xa
	.byte	0x12
	.4byte	0x501
	.uleb128 0x1a
	.4byte	0x48a
	.uleb128 0x1a
	.4byte	0x4c7
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0xa
	.byte	0x1d
	.4byte	0x4ea
	.uleb128 0x13
	.4byte	.LASF90
	.byte	0xb0
	.byte	0xb
	.byte	0x15
	.4byte	0x6a2
	.uleb128 0x17
	.ascii	"d\000"
	.byte	0xb
	.byte	0x16
	.4byte	0x6a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.ascii	"a\000"
	.byte	0xb
	.byte	0x17
	.4byte	0x6a2
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
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0xb
	.byte	0x1a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x14
	.4byte	.LASF92
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
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0xb
	.byte	0x1f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0xb
	.byte	0x20
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0xb
	.byte	0x21
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0xb
	.byte	0x22
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0xb
	.byte	0x23
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0xb
	.byte	0x24
	.4byte	0x6c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0xb
	.byte	0x25
	.4byte	0x6c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0xb
	.byte	0x26
	.4byte	0x6c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0xb
	.byte	0x27
	.4byte	0x6c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0xb
	.byte	0x28
	.4byte	0x6d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0xb
	.byte	0x29
	.4byte	0x6f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0xb
	.byte	0x2a
	.4byte	0x707
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0xb
	.byte	0x2b
	.4byte	0x6c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0xb
	.byte	0x2c
	.4byte	0x6c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0xb
	.byte	0x2d
	.4byte	0x6c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0xb
	.byte	0x2e
	.4byte	0x71d
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0xb
	.byte	0x2f
	.4byte	0xff
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0xb
	.byte	0x30
	.4byte	0x729
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0xb
	.byte	0x31
	.4byte	0x72f
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xf
	.4byte	0x7b
	.4byte	0x6b2
	.uleb128 0x10
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x7b
	.4byte	0x6c2
	.uleb128 0x1c
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6b2
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x6d9
	.uleb128 0x1c
	.4byte	0x7b
	.uleb128 0x1c
	.4byte	0x33
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6c8
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x6f0
	.uleb128 0x1c
	.4byte	0x7b
	.uleb128 0x1c
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6df
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x707
	.uleb128 0x1c
	.4byte	0x7b
	.uleb128 0x1c
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6f6
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x69
	.4byte	0x71d
	.uleb128 0x1c
	.4byte	0x69
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x70d
	.uleb128 0x1e
	.byte	0x1
	.4byte	0x69
	.uleb128 0x8
	.byte	0x4
	.4byte	0x723
	.uleb128 0xf
	.4byte	0x7b
	.4byte	0x73f
	.uleb128 0x10
	.4byte	0x107
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xc
	.byte	0x6
	.4byte	0x50c
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xc
	.byte	0x8
	.4byte	0x755
	.uleb128 0x8
	.byte	0x4
	.4byte	0x75b
	.uleb128 0x1b
	.byte	0x1
	.4byte	0xa9
	.4byte	0x76b
	.uleb128 0x1c
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0xc
	.byte	0x9
	.4byte	0x776
	.uleb128 0x8
	.byte	0x4
	.4byte	0x77c
	.uleb128 0x1b
	.byte	0x1
	.4byte	0xb3
	.4byte	0x78c
	.uleb128 0x1c
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0xc
	.byte	0xa
	.4byte	0x797
	.uleb128 0x8
	.byte	0x4
	.4byte	0x79d
	.uleb128 0x1b
	.byte	0x1
	.4byte	0xbe
	.4byte	0x7ad
	.uleb128 0x1c
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0xc
	.byte	0xc
	.4byte	0x7b8
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7be
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x7cf
	.uleb128 0x1c
	.4byte	0xbe
	.uleb128 0x1c
	.4byte	0xa9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0xc
	.byte	0xd
	.4byte	0x7da
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7e0
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x7f1
	.uleb128 0x1c
	.4byte	0xbe
	.uleb128 0x1c
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0xc
	.byte	0xe
	.4byte	0x7fc
	.uleb128 0x8
	.byte	0x4
	.4byte	0x802
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x813
	.uleb128 0x1c
	.4byte	0xbe
	.uleb128 0x1c
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0xc
	.byte	0x10
	.4byte	0x797
	.uleb128 0x13
	.4byte	.LASF120
	.byte	0xc
	.byte	0xd
	.byte	0x17
	.4byte	0x863
	.uleb128 0x14
	.4byte	.LASF121
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
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0xd
	.byte	0x1b
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0xd
	.byte	0x1c
	.4byte	0x81e
	.uleb128 0x13
	.4byte	.LASF124
	.byte	0xc
	.byte	0xd
	.byte	0x1f
	.4byte	0x8a5
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0xd
	.byte	0x20
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF126
	.byte	0xd
	.byte	0x21
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF127
	.byte	0xd
	.byte	0x22
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0xd
	.byte	0x23
	.4byte	0x86e
	.uleb128 0x1f
	.4byte	.LASF212
	.byte	0x1
	.byte	0xe
	.byte	0x99
	.4byte	0x8f9
	.uleb128 0x7
	.4byte	.LASF129
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF130
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF131
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF132
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF133
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF134
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF135
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF136
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF137
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF138
	.sleb128 9
	.byte	0x0
	.uleb128 0x20
	.2byte	0x248
	.byte	0xe
	.byte	0xc0
	.4byte	0xce7
	.uleb128 0x17
	.ascii	"cpu\000"
	.byte	0xe
	.byte	0xc1
	.4byte	0x73f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF139
	.byte	0xe
	.byte	0xc4
	.4byte	0xce7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x14
	.4byte	.LASF140
	.byte	0xe
	.byte	0xc7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x14
	.4byte	.LASF141
	.byte	0xe
	.byte	0xc8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x14
	.4byte	.LASF142
	.byte	0xe
	.byte	0xcb
	.4byte	0xcf7
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x14
	.4byte	.LASF143
	.byte	0xe
	.byte	0xcc
	.4byte	0x8a5
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x14
	.4byte	.LASF144
	.byte	0xe
	.byte	0xcd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x14
	.4byte	.LASF145
	.byte	0xe
	.byte	0xd0
	.4byte	0x3dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x14
	.4byte	.LASF146
	.byte	0xe
	.byte	0xd1
	.4byte	0x3dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x14
	.4byte	.LASF147
	.byte	0xe
	.byte	0xd2
	.4byte	0x3dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x14
	.4byte	.LASF148
	.byte	0xe
	.byte	0xd3
	.4byte	0x3dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x14
	.4byte	.LASF149
	.byte	0xe
	.byte	0xd4
	.4byte	0x3dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x14
	.4byte	.LASF150
	.byte	0xe
	.byte	0xd5
	.4byte	0x3dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x14
	.4byte	.LASF151
	.byte	0xe
	.byte	0xd6
	.4byte	0x3d1
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x14
	.4byte	.LASF152
	.byte	0xe
	.byte	0xd7
	.4byte	0x3d1
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x14
	.4byte	.LASF153
	.byte	0xe
	.byte	0xd8
	.4byte	0x3d1
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x14
	.4byte	.LASF154
	.byte	0xe
	.byte	0xda
	.4byte	0xd07
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x14
	.4byte	.LASF155
	.byte	0xe
	.byte	0xdd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x14
	.4byte	.LASF156
	.byte	0xe
	.byte	0xde
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x14
	.4byte	.LASF157
	.byte	0xe
	.byte	0xdf
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x14
	.4byte	.LASF158
	.byte	0xe
	.byte	0xe0
	.4byte	0xd18
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x14
	.4byte	.LASF159
	.byte	0xe
	.byte	0xe1
	.4byte	0xd18
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x14
	.4byte	.LASF160
	.byte	0xe
	.byte	0xe2
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x14
	.4byte	.LASF161
	.byte	0xe
	.byte	0xe5
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x14
	.4byte	.LASF162
	.byte	0xe
	.byte	0xe6
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x14
	.4byte	.LASF163
	.byte	0xe
	.byte	0xe7
	.4byte	0x3d1
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x14
	.4byte	.LASF164
	.byte	0xe
	.byte	0xe8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x14
	.4byte	.LASF165
	.byte	0xe
	.byte	0xea
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x14
	.4byte	.LASF166
	.byte	0xe
	.byte	0xeb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x14
	.4byte	.LASF167
	.byte	0xe
	.byte	0xec
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x14
	.4byte	.LASF168
	.byte	0xe
	.byte	0xed
	.4byte	0xd23
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x14
	.4byte	.LASF169
	.byte	0xe
	.byte	0xee
	.4byte	0x3d1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x14
	.4byte	.LASF170
	.byte	0xe
	.byte	0xf1
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x14
	.4byte	.LASF171
	.byte	0xe
	.byte	0xf2
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x14
	.4byte	.LASF172
	.byte	0xe
	.byte	0xf3
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x14
	.4byte	.LASF173
	.byte	0xe
	.byte	0xf4
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x14
	.4byte	.LASF174
	.byte	0xe
	.byte	0xf7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x14
	.4byte	.LASF175
	.byte	0xe
	.byte	0xf8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x14
	.4byte	.LASF176
	.byte	0xe
	.byte	0xf9
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x14
	.4byte	.LASF177
	.byte	0xe
	.byte	0xfa
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x14
	.4byte	.LASF178
	.byte	0xe
	.byte	0xfb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x14
	.4byte	.LASF179
	.byte	0xe
	.byte	0xfc
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x14
	.4byte	.LASF180
	.byte	0xe
	.byte	0xfd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0x12
	.4byte	.LASF181
	.byte	0xe
	.2byte	0x102
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x12
	.4byte	.LASF182
	.byte	0xe
	.2byte	0x103
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0x12
	.4byte	.LASF183
	.byte	0xe
	.2byte	0x106
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x12
	.4byte	.LASF184
	.byte	0xe
	.2byte	0x108
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x12
	.4byte	.LASF185
	.byte	0xe
	.2byte	0x109
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0x12
	.4byte	.LASF186
	.byte	0xe
	.2byte	0x10a
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0x12
	.4byte	.LASF187
	.byte	0xe
	.2byte	0x10b
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x12
	.4byte	.LASF188
	.byte	0xe
	.2byte	0x10d
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0x12
	.4byte	.LASF189
	.byte	0xe
	.2byte	0x10e
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x12
	.4byte	.LASF190
	.byte	0xe
	.2byte	0x10f
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x12
	.4byte	.LASF191
	.byte	0xe
	.2byte	0x110
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x12
	.4byte	.LASF192
	.byte	0xe
	.2byte	0x111
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0x12
	.4byte	.LASF193
	.byte	0xe
	.2byte	0x114
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0x12
	.4byte	.LASF194
	.byte	0xe
	.2byte	0x115
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0x12
	.4byte	.LASF195
	.byte	0xe
	.2byte	0x116
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0x12
	.4byte	.LASF196
	.byte	0xe
	.2byte	0x117
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0x12
	.4byte	.LASF197
	.byte	0xe
	.2byte	0x118
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0x12
	.4byte	.LASF198
	.byte	0xe
	.2byte	0x11b
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0x12
	.4byte	.LASF199
	.byte	0xe
	.2byte	0x11c
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0x12
	.4byte	.LASF200
	.byte	0xe
	.2byte	0x11f
	.4byte	0xd33
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0x12
	.4byte	.LASF201
	.byte	0xe
	.2byte	0x122
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0x12
	.4byte	.LASF202
	.byte	0xe
	.2byte	0x123
	.4byte	0xd43
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xf
	.4byte	0x118
	.4byte	0xcf7
	.uleb128 0x10
	.4byte	0x107
	.byte	0x8
	.byte	0x0
	.uleb128 0xf
	.4byte	0x863
	.4byte	0xd07
	.uleb128 0x10
	.4byte	0x107
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd0d
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd13
	.uleb128 0xc
	.4byte	0xa9
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd1e
	.uleb128 0xc
	.4byte	0xbe
	.uleb128 0xf
	.4byte	0xbe
	.4byte	0xd33
	.uleb128 0x10
	.4byte	0x107
	.byte	0xf
	.byte	0x0
	.uleb128 0xf
	.4byte	0xa9
	.4byte	0xd43
	.uleb128 0x10
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.4byte	0xa9
	.4byte	0xd52
	.uleb128 0x21
	.4byte	0x107
	.byte	0x0
	.uleb128 0x22
	.2byte	0x400
	.byte	0xe
	.byte	0xbf
	.4byte	0xd6d
	.uleb128 0x1a
	.4byte	0x8f9
	.uleb128 0x23
	.4byte	.LASF258
	.byte	0xe
	.2byte	0x125
	.4byte	0xd6d
	.byte	0x0
	.uleb128 0xf
	.4byte	0xbe
	.4byte	0xd7d
	.uleb128 0x10
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x24
	.4byte	.LASF203
	.2byte	0x2000
	.byte	0xe
	.byte	0xbe
	.4byte	0xe03
	.uleb128 0x25
	.4byte	0xd52
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF204
	.byte	0xe
	.2byte	0x128
	.4byte	0xe03
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0x12
	.4byte	.LASF205
	.byte	0xe
	.2byte	0x129
	.4byte	0xe13
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0x12
	.4byte	.LASF206
	.byte	0xe
	.2byte	0x12a
	.4byte	0xe23
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0x12
	.4byte	.LASF207
	.byte	0xe
	.2byte	0x12b
	.4byte	0xe33
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0x12
	.4byte	.LASF208
	.byte	0xe
	.2byte	0x12c
	.4byte	0xe43
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0x12
	.4byte	.LASF209
	.byte	0xe
	.2byte	0x12d
	.4byte	0xe53
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0x12
	.4byte	.LASF210
	.byte	0xe
	.2byte	0x12e
	.4byte	0xe63
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xf
	.4byte	0x74a
	.4byte	0xe13
	.uleb128 0x10
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xf
	.4byte	0x76b
	.4byte	0xe23
	.uleb128 0x10
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xf
	.4byte	0x78c
	.4byte	0xe33
	.uleb128 0x10
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xf
	.4byte	0x7ad
	.4byte	0xe43
	.uleb128 0x10
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xf
	.4byte	0x7cf
	.4byte	0xe53
	.uleb128 0x10
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xf
	.4byte	0x7f1
	.4byte	0xe63
	.uleb128 0x10
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xf
	.4byte	0x813
	.4byte	0xe73
	.uleb128 0x10
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF211
	.byte	0xe
	.2byte	0x12f
	.4byte	0xd7d
	.uleb128 0x1f
	.4byte	.LASF213
	.byte	0x1
	.byte	0xf
	.byte	0x7
	.4byte	0xea4
	.uleb128 0x7
	.4byte	.LASF214
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF215
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF216
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF217
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0xf
	.byte	0xc
	.4byte	0xe7f
	.uleb128 0x26
	.4byte	.LASF219
	.byte	0x2
	.2byte	0x17d
	.byte	0x1
	.byte	0x3
	.4byte	0xec8
	.uleb128 0x27
	.ascii	"i\000"
	.byte	0x2
	.2byte	0x17d
	.4byte	0x14e
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF220
	.byte	0x2
	.2byte	0x1f6
	.byte	0x1
	.byte	0x3
	.4byte	0xee3
	.uleb128 0x28
	.4byte	.LASF221
	.byte	0x2
	.2byte	0x1f6
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x29
	.4byte	.LASF222
	.byte	0x3
	.byte	0x97
	.byte	0x1
	.byte	0x3
	.4byte	0xf12
	.uleb128 0x2a
	.4byte	.LASF223
	.byte	0x3
	.byte	0x97
	.4byte	0xf12
	.uleb128 0x2a
	.4byte	.LASF224
	.byte	0x3
	.byte	0x97
	.4byte	0x118
	.uleb128 0x2a
	.4byte	.LASF52
	.byte	0x3
	.byte	0x97
	.4byte	0x90
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf18
	.uleb128 0x2b
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF229
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.4byte	.LFB168
	.4byte	.LFE168
	.4byte	.LLST0
	.4byte	0xf8c
	.uleb128 0x2d
	.ascii	"x0\000"
	.byte	0x1
	.byte	0x4e
	.4byte	0xd4
	.4byte	.LLST1
	.uleb128 0x2d
	.ascii	"y0\000"
	.byte	0x1
	.byte	0x4e
	.4byte	0xd4
	.4byte	.LLST2
	.uleb128 0x2e
	.4byte	.LASF225
	.byte	0x1
	.byte	0x50
	.4byte	0xd1e
	.uleb128 0x2e
	.4byte	.LASF226
	.byte	0x1
	.byte	0x51
	.4byte	0xd1e
	.uleb128 0x2f
	.4byte	.LASF227
	.byte	0x1
	.byte	0x52
	.4byte	0x3d1
	.4byte	.LLST3
	.uleb128 0x30
	.ascii	"x\000"
	.byte	0x1
	.byte	0x53
	.4byte	0xd4
	.uleb128 0x2f
	.4byte	.LASF228
	.byte	0x1
	.byte	0x55
	.4byte	0xb3
	.4byte	.LLST4
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF230
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.4byte	.LFB169
	.4byte	.LFE169
	.4byte	.LLST5
	.4byte	0x1023
	.uleb128 0x2d
	.ascii	"x\000"
	.byte	0x1
	.byte	0x65
	.4byte	0xd4
	.4byte	.LLST6
	.uleb128 0x2d
	.ascii	"y\000"
	.byte	0x1
	.byte	0x65
	.4byte	0xd4
	.4byte	.LLST7
	.uleb128 0x2d
	.ascii	"w\000"
	.byte	0x1
	.byte	0x65
	.4byte	0xd4
	.4byte	.LLST8
	.uleb128 0x2d
	.ascii	"h\000"
	.byte	0x1
	.byte	0x65
	.4byte	0xd4
	.4byte	.LLST9
	.uleb128 0x31
	.4byte	.LASF231
	.byte	0x1
	.byte	0x65
	.4byte	0xea4
	.4byte	.LLST10
	.uleb128 0x32
	.ascii	"x0\000"
	.byte	0x1
	.byte	0x67
	.4byte	0xd4
	.4byte	.LLST11
	.uleb128 0x32
	.ascii	"y0\000"
	.byte	0x1
	.byte	0x68
	.4byte	0xd4
	.4byte	.LLST12
	.uleb128 0x2f
	.4byte	.LASF227
	.byte	0x1
	.byte	0x69
	.4byte	0x3d1
	.4byte	.LLST13
	.uleb128 0x2f
	.4byte	.LASF228
	.byte	0x1
	.byte	0x6a
	.4byte	0xbe
	.4byte	.LLST14
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF232
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.4byte	.LFB167
	.4byte	.LFE167
	.4byte	.LLST15
	.4byte	0x106d
	.uleb128 0x31
	.4byte	.LASF233
	.byte	0x1
	.byte	0x46
	.4byte	0x106d
	.4byte	.LLST16
	.uleb128 0x31
	.4byte	.LASF231
	.byte	0x1
	.byte	0x46
	.4byte	0xea4
	.4byte	.LLST17
	.uleb128 0x30
	.ascii	"w\000"
	.byte	0x1
	.byte	0x48
	.4byte	0x1078
	.uleb128 0x30
	.ascii	"h\000"
	.byte	0x1
	.byte	0x49
	.4byte	0x1078
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1073
	.uleb128 0xc
	.4byte	0x501
	.uleb128 0xc
	.4byte	0xd4
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF234
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.4byte	.LFB170
	.4byte	.LFE170
	.byte	0x1
	.byte	0x5d
	.4byte	0x10c5
	.uleb128 0x2d
	.ascii	"x\000"
	.byte	0x1
	.byte	0x8a
	.4byte	0xd4
	.4byte	.LLST19
	.uleb128 0x2d
	.ascii	"y\000"
	.byte	0x1
	.byte	0x8a
	.4byte	0xd4
	.4byte	.LLST20
	.uleb128 0x34
	.ascii	"c\000"
	.byte	0x1
	.byte	0x8a
	.4byte	0x10a
	.byte	0x1
	.byte	0x52
	.uleb128 0x2e
	.4byte	.LASF227
	.byte	0x1
	.byte	0x8e
	.4byte	0x3d1
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF235
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.4byte	.LFB171
	.4byte	.LFE171
	.4byte	.LLST21
	.4byte	0x1113
	.uleb128 0x34
	.ascii	"x\000"
	.byte	0x1
	.byte	0x92
	.4byte	0xd4
	.byte	0x1
	.byte	0x50
	.uleb128 0x2d
	.ascii	"y\000"
	.byte	0x1
	.byte	0x92
	.4byte	0xd4
	.4byte	.LLST22
	.uleb128 0x35
	.4byte	.LASF236
	.byte	0x1
	.byte	0x92
	.4byte	0x121
	.byte	0x1
	.byte	0x52
	.uleb128 0x2f
	.4byte	.LASF227
	.byte	0x1
	.byte	0x96
	.4byte	0x3d1
	.4byte	.LLST23
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF237
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.4byte	.LFB172
	.4byte	.LFE172
	.4byte	.LLST24
	.4byte	0x1161
	.uleb128 0x2d
	.ascii	"x\000"
	.byte	0x1
	.byte	0xa5
	.4byte	0xd4
	.4byte	.LLST25
	.uleb128 0x34
	.ascii	"y\000"
	.byte	0x1
	.byte	0xa5
	.4byte	0xd4
	.byte	0x1
	.byte	0x51
	.uleb128 0x35
	.4byte	.LASF236
	.byte	0x1
	.byte	0xa5
	.4byte	0x121
	.byte	0x1
	.byte	0x52
	.uleb128 0x2f
	.4byte	.LASF227
	.byte	0x1
	.byte	0xa9
	.4byte	0x3d1
	.4byte	.LLST26
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF238
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.4byte	.LFB173
	.4byte	.LFE173
	.4byte	.LLST27
	.4byte	0x11ba
	.uleb128 0x2d
	.ascii	"x\000"
	.byte	0x1
	.byte	0xb6
	.4byte	0xd4
	.4byte	.LLST28
	.uleb128 0x34
	.ascii	"y\000"
	.byte	0x1
	.byte	0xb6
	.4byte	0xd4
	.byte	0x1
	.byte	0x51
	.uleb128 0x34
	.ascii	"n\000"
	.byte	0x1
	.byte	0xb6
	.4byte	0xbe
	.byte	0x1
	.byte	0x52
	.uleb128 0x35
	.4byte	.LASF236
	.byte	0x1
	.byte	0xb6
	.4byte	0x121
	.byte	0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LASF227
	.byte	0x1
	.byte	0xba
	.4byte	0x3d1
	.4byte	.LLST29
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF239
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.4byte	.LFB174
	.4byte	.LFE174
	.4byte	.LLST30
	.4byte	0x1229
	.uleb128 0x31
	.4byte	.LASF233
	.byte	0x1
	.byte	0xc8
	.4byte	0x106d
	.4byte	.LLST31
	.uleb128 0x36
	.4byte	.LASF225
	.byte	0x1
	.byte	0xca
	.4byte	0xd4
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x37
	.ascii	"x\000"
	.byte	0x1
	.byte	0xcb
	.4byte	0xd4
	.byte	0x1
	.byte	0x50
	.uleb128 0x37
	.ascii	"y\000"
	.byte	0x1
	.byte	0xcb
	.4byte	0xd4
	.byte	0x1
	.byte	0x52
	.uleb128 0x38
	.4byte	.LBB8
	.4byte	.LBE8
	.uleb128 0x2e
	.4byte	.LASF240
	.byte	0x1
	.byte	0xce
	.4byte	0x3d1
	.uleb128 0x36
	.4byte	.LASF241
	.byte	0x1
	.byte	0xcf
	.4byte	0x3d1
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF242
	.byte	0x1
	.byte	0xd8
	.4byte	.LFB175
	.4byte	.LFE175
	.4byte	.LLST32
	.4byte	0x1263
	.uleb128 0x36
	.4byte	.LASF240
	.byte	0x1
	.byte	0xda
	.4byte	0x3d1
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LASF241
	.byte	0x1
	.byte	0xdb
	.4byte	0x3d1
	.uleb128 0x30
	.ascii	"i\000"
	.byte	0x1
	.byte	0xdc
	.4byte	0xd4
	.byte	0x0
	.uleb128 0x39
	.byte	0x1
	.4byte	.LASF243
	.byte	0x1
	.byte	0x29
	.4byte	.LFB166
	.4byte	.LFE166
	.4byte	.LLST33
	.4byte	0x12d6
	.uleb128 0x30
	.ascii	"i\000"
	.byte	0x1
	.byte	0x2b
	.4byte	0xd4
	.uleb128 0x3a
	.4byte	0xeaf
	.4byte	.LBB9
	.4byte	.LBE9
	.byte	0x1
	.byte	0x2d
	.4byte	0x129d
	.uleb128 0x3b
	.4byte	0xebd
	.byte	0x0
	.uleb128 0x3c
	.4byte	0xec8
	.4byte	.LBB11
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x2f
	.4byte	0x12b6
	.uleb128 0x3b
	.4byte	0xed6
	.byte	0x0
	.uleb128 0x3d
	.4byte	0xee3
	.4byte	.LBB15
	.4byte	.LBE15
	.byte	0x1
	.byte	0x43
	.uleb128 0x3b
	.4byte	0xf06
	.uleb128 0x3b
	.4byte	0xefb
	.uleb128 0x3b
	.4byte	0xef0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF244
	.byte	0x8
	.2byte	0x12e
	.4byte	0x12e2
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3c5
	.uleb128 0x36
	.4byte	.LASF245
	.byte	0x1
	.byte	0x10
	.4byte	0x12f9
	.byte	0x5
	.byte	0x3
	.4byte	g_palette
	.uleb128 0xc
	.4byte	0x15a
	.uleb128 0x3f
	.4byte	.LASF246
	.byte	0x2
	.byte	0x56
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.4byte	.LASF247
	.byte	0x2
	.byte	0x57
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.4byte	0x1328
	.4byte	0x1328
	.uleb128 0x10
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x132e
	.uleb128 0x40
	.4byte	0x57
	.uleb128 0x41
	.4byte	.LASF248
	.byte	0x6
	.2byte	0x19c
	.4byte	0x1318
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.4byte	0x2b0
	.4byte	0x1351
	.uleb128 0x10
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x41
	.4byte	.LASF249
	.byte	0x6
	.2byte	0x19f
	.4byte	0x1341
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.4byte	.LASF250
	.byte	0x8
	.2byte	0x12b
	.4byte	0x3c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.4byte	.LASF251
	.byte	0xe
	.2byte	0x149
	.4byte	0x137c
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe73
	.uleb128 0x41
	.4byte	.LASF252
	.byte	0xe
	.2byte	0x14d
	.4byte	0xe73
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.4byte	0xa9
	.4byte	0x139b
	.uleb128 0x43
	.byte	0x0
	.uleb128 0x3f
	.4byte	.LASF253
	.byte	0x1
	.byte	0x5
	.4byte	0x13a8
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x1390
	.uleb128 0x3f
	.4byte	.LASF254
	.byte	0x1
	.byte	0x6
	.4byte	0x3d7
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
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x26
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xe7
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x13bb
	.4byte	0xf19
	.ascii	"guiRenderLogo\000"
	.4byte	0xf8c
	.ascii	"guiRenderFrame\000"
	.4byte	0x1023
	.ascii	"guiRenderFrameBounds\000"
	.4byte	0x107d
	.ascii	"guiRenderChar\000"
	.4byte	0x10c5
	.ascii	"guiRenderVertString\000"
	.4byte	0x1113
	.ascii	"guiRenderString\000"
	.4byte	0x1161
	.ascii	"guiRenderStringn\000"
	.4byte	0x11ba
	.ascii	"guiRenderClearBounds\000"
	.4byte	0x1229
	.ascii	"guiRenderClear\000"
	.4byte	0x1263
	.ascii	"guiRenderInit\000"
	.4byte	0x136d
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
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF66:
	.ascii	"clearColor\000"
.LASF98:
	.ascii	"checkpc\000"
.LASF102:
	.ascii	"write8\000"
.LASF188:
	.ascii	"ctrl1Reg\000"
.LASF27:
	.ascii	"MODE_1_2D\000"
.LASF167:
	.ascii	"spriteMask\000"
.LASF190:
	.ascii	"ctrl3Reg\000"
.LASF29:
	.ascii	"MODE_3_2D\000"
.LASF107:
	.ascii	"fetch32\000"
.LASF244:
	.ascii	"glGlob\000"
.LASF235:
	.ascii	"guiRenderVertString\000"
.LASF31:
	.ascii	"MODE_5_2D\000"
.LASF175:
	.ascii	"cpuClocksPerScanline\000"
.LASF84:
	.ascii	"OBJSIZE_64\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF209:
	.ascii	"cpuWrite32Table\000"
.LASF34:
	.ascii	"MODE_1_3D\000"
.LASF208:
	.ascii	"cpuWrite16Table\000"
.LASF12:
	.ascii	"uint32\000"
.LASF96:
	.ascii	"cycles\000"
.LASF61:
	.ascii	"GL_MODELVIEW\000"
.LASF36:
	.ascii	"MODE_3_3D\000"
.LASF38:
	.ascii	"MODE_5_3D\000"
.LASF87:
	.ascii	"_TPoint\000"
.LASF62:
	.ascii	"GL_TEXTURE\000"
.LASF197:
	.ascii	"paletteRamLatch\000"
.LASF53:
	.ascii	"type\000"
.LASF242:
	.ascii	"guiRenderClear\000"
.LASF202:
	.ascii	"varEnd\000"
.LASF116:
	.ascii	"TWrite8Func\000"
.LASF99:
	.ascii	"read8\000"
.LASF85:
	.ascii	"OBJCOLOR_16\000"
.LASF103:
	.ascii	"write16\000"
.LASF128:
	.ascii	"TNeoADPCMBStream\000"
.LASF113:
	.ascii	"TRead8Func\000"
.LASF72:
	.ascii	"nameCount\000"
.LASF251:
	.ascii	"g_neo\000"
.LASF206:
	.ascii	"cpuRead32Table\000"
.LASF63:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF19:
	.ascii	"long int\000"
.LASF217:
	.ascii	"GUIBORDER_ROUND_PRESSED\000"
.LASF105:
	.ascii	"fetch8\000"
.LASF227:
	.ascii	"pDst\000"
.LASF200:
	.ascii	"keyGrid\000"
.LASF104:
	.ascii	"write32\000"
.LASF213:
	.ascii	"_TGuiBorderStyle\000"
.LASF74:
	.ascii	"OBJMODE_BLENDED\000"
.LASF203:
	.ascii	"_TNeoContext\000"
.LASF108:
	.ascii	"IrqCallback\000"
.LASF119:
	.ascii	"TCheckPcFunc\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF180:
	.ascii	"romBankAddress\000"
.LASF122:
	.ascii	"step\000"
.LASF144:
	.ascii	"adpcmActive\000"
.LASF135:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF207:
	.ascii	"cpuWrite8Table\000"
.LASF22:
	.ascii	"VRAM_I_SUB_BG_0x06208000\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF226:
	.ascii	"stride\000"
.LASF172:
	.ascii	"tileScaleX\000"
.LASF173:
	.ascii	"tileScaleY\000"
.LASF177:
	.ascii	"watchdogCounter\000"
.LASF137:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF230:
	.ascii	"guiRenderFrame\000"
.LASF164:
	.ascii	"vramBaseMask\000"
.LASF140:
	.ascii	"spriteCount\000"
.LASF110:
	.ascii	"UnrecognizedCallback\000"
.LASF245:
	.ascii	"g_palette\000"
.LASF154:
	.ascii	"bankTable\000"
.LASF18:
	.ascii	"char\000"
.LASF55:
	.ascii	"BgState\000"
.LASF238:
	.ascii	"guiRenderStringn\000"
.LASF91:
	.ascii	"unused\000"
.LASF194:
	.ascii	"screenDarkLatch\000"
.LASF93:
	.ascii	"prev_pc\000"
.LASF124:
	.ascii	"_TNeoADPCMBStream\000"
.LASF248:
	.ascii	"bgControl\000"
.LASF239:
	.ascii	"guiRenderClearBounds\000"
.LASF223:
	.ascii	"source\000"
.LASF23:
	.ascii	"VRAM_I_SUB_SPRITE\000"
.LASF130:
	.ascii	"NEOROM_BIOS\000"
.LASF88:
	.ascii	"TPoint\000"
.LASF92:
	.ascii	"flags\000"
.LASF166:
	.ascii	"autoAnimationCounter\000"
.LASF67:
	.ascii	"textures\000"
.LASF257:
	.ascii	"_TBounds\000"
.LASF250:
	.ascii	"glGlobalData\000"
.LASF60:
	.ascii	"GL_POSITION\000"
.LASF174:
	.ascii	"cpuClockDivide\000"
.LASF162:
	.ascii	"frameCount\000"
.LASF258:
	.ascii	"fill\000"
.LASF80:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF15:
	.ascii	"false\000"
.LASF176:
	.ascii	"irqPending\000"
.LASF114:
	.ascii	"TRead16Func\000"
.LASF75:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF41:
	.ascii	"MODE_FB0\000"
.LASF42:
	.ascii	"MODE_FB1\000"
.LASF43:
	.ascii	"MODE_FB2\000"
.LASF44:
	.ascii	"MODE_FB3\000"
.LASF148:
	.ascii	"pRam\000"
.LASF56:
	.ascii	"DynamicArray\000"
.LASF236:
	.ascii	"szString\000"
.LASF89:
	.ascii	"TBounds\000"
.LASF20:
	.ascii	"long unsigned int\000"
.LASF134:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF73:
	.ascii	"OBJMODE_NORMAL\000"
.LASF78:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF205:
	.ascii	"cpuRead16Table\000"
.LASF186:
	.ascii	"displayControlMask\000"
.LASF112:
	.ascii	"TCycloneContext\000"
.LASF131:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF198:
	.ascii	"active\000"
.LASF169:
	.ascii	"pTileBuffer\000"
.LASF90:
	.ascii	"Cyclone\000"
.LASF147:
	.ascii	"pBios\000"
.LASF237:
	.ascii	"guiRenderString\000"
.LASF233:
	.ascii	"pBounds\000"
.LASF45:
	.ascii	"angle\000"
.LASF193:
	.ascii	"irqVectorLatch\000"
.LASF168:
	.ascii	"paletteDirty\000"
.LASF65:
	.ascii	"matrixMode\000"
.LASF210:
	.ascii	"cpuCheckPcTable\000"
.LASF70:
	.ascii	"nextBlock\000"
.LASF160:
	.ascii	"smaRand\000"
.LASF120:
	.ascii	"_TNeoADPCMStream\000"
.LASF118:
	.ascii	"TWrite32Func\000"
.LASF255:
	.ascii	"GNU C 4.4.3\000"
.LASF10:
	.ascii	"long long int\000"
.LASF59:
	.ascii	"GL_PROJECTION\000"
.LASF192:
	.ascii	"coinReg\000"
.LASF138:
	.ascii	"NEOROM_COUNT\000"
.LASF125:
	.ascii	"initOffset\000"
.LASF225:
	.ascii	"width\000"
.LASF26:
	.ascii	"MODE_0_2D\000"
.LASF249:
	.ascii	"bgState\000"
.LASF50:
	.ascii	"scrollX\000"
.LASF51:
	.ascii	"scrollY\000"
.LASF189:
	.ascii	"ctrl2Reg\000"
.LASF28:
	.ascii	"MODE_2_2D\000"
.LASF14:
	.ascii	"double\000"
.LASF111:
	.ascii	"internal\000"
.LASF25:
	.ascii	"VRAM_I_TYPE\000"
.LASF191:
	.ascii	"ctrl4Reg\000"
.LASF30:
	.ascii	"MODE_4_2D\000"
.LASF155:
	.ascii	"smaAddr0\000"
.LASF156:
	.ascii	"smaAddr1\000"
.LASF32:
	.ascii	"MODE_6_2D\000"
.LASF165:
	.ascii	"displayCounter\000"
.LASF33:
	.ascii	"MODE_0_3D\000"
.LASF127:
	.ascii	"frequency\000"
.LASF13:
	.ascii	"float\000"
.LASF150:
	.ascii	"pCard\000"
.LASF35:
	.ascii	"MODE_2_3D\000"
.LASF243:
	.ascii	"guiRenderInit\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF79:
	.ascii	"OBJSHAPE_TALL\000"
.LASF39:
	.ascii	"MODE_6_3D\000"
.LASF240:
	.ascii	"pDst0\000"
.LASF241:
	.ascii	"pDst1\000"
.LASF214:
	.ascii	"GUIBORDER_NORMAL\000"
.LASF185:
	.ascii	"displayControl\000"
.LASF232:
	.ascii	"guiRenderFrameBounds\000"
.LASF216:
	.ascii	"GUIBORDER_ROUND_NORMAL\000"
.LASF163:
	.ascii	"pVramBase\000"
.LASF187:
	.ascii	"displayCounterLoad\000"
.LASF86:
	.ascii	"OBJCOLOR_256\000"
.LASF121:
	.ascii	"offset\000"
.LASF132:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF145:
	.ascii	"pRom0\000"
.LASF146:
	.ascii	"pRom1\000"
.LASF170:
	.ascii	"tileOffsetX\000"
.LASF171:
	.ascii	"tileOffsetY\000"
.LASF17:
	.ascii	"bool\000"
.LASF129:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF69:
	.ascii	"activeTexture\000"
.LASF183:
	.ascii	"vramOffset\000"
.LASF100:
	.ascii	"read16\000"
.LASF231:
	.ascii	"style\000"
.LASF212:
	.ascii	"_TNeoRomRegion\000"
.LASF196:
	.ascii	"sramProtectLatch\000"
.LASF252:
	.ascii	"g_neoContext\000"
.LASF211:
	.ascii	"TNeoContext\000"
.LASF97:
	.ascii	"membase\000"
.LASF126:
	.ascii	"freqCounter\000"
.LASF76:
	.ascii	"OBJMODE_BITMAP\000"
.LASF161:
	.ascii	"scanline\000"
.LASF52:
	.ascii	"size\000"
.LASF153:
	.ascii	"pPalette\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF218:
	.ascii	"TGuiBorderStyle\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF101:
	.ascii	"read32\000"
.LASF219:
	.ascii	"vramSetBankI\000"
.LASF222:
	.ascii	"dmaCopy\000"
.LASF228:
	.ascii	"tile\000"
.LASF234:
	.ascii	"guiRenderChar\000"
.LASF199:
	.ascii	"debug\000"
.LASF136:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF117:
	.ascii	"TWrite16Func\000"
.LASF58:
	.ascii	"cur_size\000"
.LASF204:
	.ascii	"cpuRead8Table\000"
.LASF254:
	.ascii	"gui_bin_size\000"
.LASF143:
	.ascii	"adpcmb\000"
.LASF152:
	.ascii	"pSpriteRam\000"
.LASF224:
	.ascii	"dest\000"
.LASF215:
	.ascii	"GUIBORDER_PRESSED\000"
.LASF158:
	.ascii	"smaBankoffset\000"
.LASF179:
	.ascii	"fixedBank\000"
.LASF81:
	.ascii	"OBJSIZE_8\000"
.LASF256:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/guiRender"
	.ascii	".c\000"
.LASF95:
	.ascii	"state_flags\000"
.LASF182:
	.ascii	"sramProtection\000"
.LASF149:
	.ascii	"pSram\000"
.LASF4:
	.ascii	"short int\000"
.LASF201:
	.ascii	"frameCounter\000"
.LASF221:
	.ascii	"mode\000"
.LASF21:
	.ascii	"VRAM_I_LCD\000"
.LASF253:
	.ascii	"gui_bin\000"
.LASF71:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF109:
	.ascii	"ResetCallback\000"
.LASF16:
	.ascii	"true\000"
.LASF37:
	.ascii	"MODE_4_3D\000"
.LASF68:
	.ascii	"texturePtrs\000"
.LASF220:
	.ascii	"videoSetModeSub\000"
.LASF151:
	.ascii	"pVram\000"
.LASF82:
	.ascii	"OBJSIZE_16\000"
.LASF24:
	.ascii	"VRAM_I_SUB_SPRITE_EXT_PALETTE\000"
.LASF46:
	.ascii	"centerX\000"
.LASF47:
	.ascii	"centerY\000"
.LASF115:
	.ascii	"TRead32Func\000"
.LASF229:
	.ascii	"guiRenderLogo\000"
.LASF246:
	.ascii	"mosaicShadow\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF48:
	.ascii	"scaleX\000"
.LASF49:
	.ascii	"scaleY\000"
.LASF94:
	.ascii	"reserved\000"
.LASF142:
	.ascii	"adpcm\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF64:
	.ascii	"gl_hidden_globals\000"
.LASF83:
	.ascii	"OBJSIZE_32\000"
.LASF247:
	.ascii	"mosaicShadowSub\000"
.LASF139:
	.ascii	"pVideoWriteTable\000"
.LASF178:
	.ascii	"paletteBank\000"
.LASF54:
	.ascii	"dirty\000"
.LASF157:
	.ascii	"smaBankAddr\000"
.LASF106:
	.ascii	"fetch16\000"
.LASF77:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF159:
	.ascii	"smaBankbit\000"
.LASF133:
	.ascii	"NEOROM_AUDODATA\000"
.LASF57:
	.ascii	"data\000"
.LASF195:
	.ascii	"fixedRomLatch\000"
.LASF181:
	.ascii	"sramProtectCount\000"
.LASF40:
	.ascii	"MODE_FIFO\000"
.LASF141:
	.ascii	"romBankCount\000"
.LASF123:
	.ascii	"TNeoADPCMStream\000"
.LASF184:
	.ascii	"vramMod\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
