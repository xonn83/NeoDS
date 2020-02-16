	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"io_cf_common.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	_CF_isInserted
	.code	16
	.thumb_func
	.type	_CF_isInserted, %function
_CF_isInserted:
.LFB0:
	.file 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_cf_common.c"
	.loc 1 64 0
	.loc 1 66 0
	ldr	r3, .L3
	mov	r2, #80
	ldr	r3, [r3, #4]
	.loc 1 68 0
	@ sp needed for prologue
	.loc 1 66 0
	strh	r2, [r3]
	.loc 1 67 0
	ldrh	r2, [r3]
	mov	r3, #255
	and	r3, r3, r2
	sub	r3, r3, #80
	neg	r0, r3
	adc	r0, r0, r3
	.loc 1 68 0
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
.LFE0:
	.size	_CF_isInserted, .-_CF_isInserted
	.align	2
	.global	_CF_clearStatus
	.code	16
	.thumb_func
	.type	_CF_clearStatus, %function
_CF_clearStatus:
.LFB1:
	.loc 1 76 0
	push	{r4, lr}
.LCFI0:
	.loc 1 81 0
	ldr	r3, .L15
	mov	r1, #128
	ldr	r0, [r3, #8]
	ldr	r2, .L15+4
	mov	r3, #0
.LVL0:
	b	.L6
.L8:
	.loc 1 82 0
	add	r3, r3, #1
.L6:
	.loc 1 81 0
	ldrh	r4, [r0]
	tst	r4, r1
	beq	.L7
	cmp	r3, r2
	bne	.L8
.L7:
	.loc 1 87 0
	ldr	r3, .L15
.LVL1:
	mov	r1, #80
	ldr	r0, [r3, #4]
	ldr	r2, .L15+4
	mov	r3, #0
.LVL2:
	b	.L9
.L11:
	.loc 1 88 0
	add	r3, r3, #1
.L9:
	.loc 1 87 0
	ldrh	r4, [r0]
	tst	r4, r1
	bne	.L10
	cmp	r3, r2
	bne	.L11
	mov	r0, #0
	b	.L12
.L10:
	ldr	r2, .L15+8
	lsr	r0, r3, #31
	mov	r1, #0
	cmp	r2, r3
	adc	r0, r0, r1
.L12:
	.loc 1 94 0
	@ sp needed for prologue
	pop	{r4, pc}
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.word	10000000
	.word	9999999
.LFE1:
	.size	_CF_clearStatus, .-_CF_clearStatus
	.align	2
	.global	_CF_readSectors
	.code	16
	.thumb_func
	.type	_CF_readSectors, %function
_CF_readSectors:
.LFB2:
	.loc 1 106 0
	push	{r4, r5, r6, r7, lr}
.LCFI1:
.LVL3:
	sub	sp, sp, #12
.LCFI2:
	.loc 1 121 0
	ldr	r3, .L41
	mov	r5, #128
	ldr	r3, [r3, #8]
	ldr	r4, .L41+4
	str	r3, [sp, #4]
	mov	r3, #0
.LVL4:
	b	.L18
.L21:
	.loc 1 122 0
	add	r3, r3, #1
.L18:
	.loc 1 121 0
	ldr	r6, [sp, #4]
	ldrh	r7, [r6]
	tst	r7, r5
	bne	.L19
.L22:
	.loc 1 127 0
	ldr	r3, .L41
.LVL5:
	mov	r5, #80
	ldr	r7, [r3, #4]
	ldr	r6, .L41+4
	mov	r3, #0
.LVL6:
	b	.L20
.L19:
	.loc 1 121 0
	cmp	r3, r4
	bne	.L21
	b	.L22
.L24:
	.loc 1 128 0
	add	r3, r3, #1
.L20:
	.loc 1 127 0
	ldrh	r4, [r7]
	tst	r4, r5
	bne	.L23
	cmp	r3, r6
	bne	.L24
	b	.L25
.L23:
	.loc 1 130 0
	ldr	r4, .L41+8
	cmp	r3, r4
	bgt	.L25
	.loc 1 134 0
	ldr	r3, .L41
.LVL7:
	ldr	r5, [r3, #16]
	cmp	r1, #255
	bls	.L26
	mov	r3, #0
	b	.L27
.L26:
	lsl	r3, r1, #16
	lsr	r3, r3, #16
.L27:
	strh	r3, [r5]
	.loc 1 137 0
	ldr	r3, .L41
	mov	r5, #255
	ldr	r7, [r3, #20]
	mov	r6, r0
	and	r6, r6, r5
	strh	r6, [r7]
	.loc 1 138 0
	ldr	r6, [r3, #24]
	lsr	r7, r0, #8
	and	r7, r7, r5
	strh	r7, [r6]
	.loc 1 139 0
	lsr	r6, r0, #16
	ldr	r7, [r3, #28]
	and	r5, r5, r6
	.loc 1 140 0
	lsl	r0, r0, #4
.LVL8:
	.loc 1 139 0
	strh	r5, [r7]
	.loc 1 140 0
	lsr	r0, r0, #28
	mov	r5, #224
	orr	r0, r0, r5
	ldr	r3, [r3, #32]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	strh	r0, [r3]
	.loc 1 143 0
	ldr	r0, [sp, #4]
	mov	r3, #32
	.loc 1 111 0
	mov	r4, r2
.LVL9:
	.loc 1 143 0
	strh	r3, [r0]
	.loc 1 150 0
	mov	r6, #255
	.loc 1 146 0
	b	.L28
.LVL10:
.L30:
	.loc 1 152 0
	add	r3, r3, #1
.L39:
	.loc 1 150 0
	ldrh	r7, [r0]
	and	r7, r7, r6
	cmp	r7, #88
	beq	.L29
	ldr	r5, .L41+4
	cmp	r3, r5
	bne	.L30
	b	.L25
.L29:
	.loc 1 154 0
	ldr	r0, .L41+8
	cmp	r3, r0
	bgt	.L25
	.loc 1 169 0
	lsl	r7, r4, #31
	bpl	.L31
	.loc 1 172 0
	ldr	r5, .L41
	.loc 1 169 0
	mov	r3, #128
.LVL11:
	mov	r0, r4
	lsl	r3, r3, #1
	.loc 1 172 0
	mov	ip, r5
	b	.L32
.LVL12:
.L31:
	.loc 1 178 0
	ldr	r3, .L41
.LVL13:
	mov	r0, r2
	ldr	r7, [r3]
	mov	r3, #128
.LVL14:
	lsl	r3, r3, #1
	b	.L33
.LVL15:
.L34:
	.loc 1 172 0
	mov	r7, ip
	ldr	r5, [r7]
	ldrh	r7, [r5]
	.loc 1 173 0
	strb	r7, [r0]
	.loc 1 174 0
	asr	r7, r7, #8
	strb	r7, [r0, #1]
	.loc 1 106 0
	add	r0, r0, #2
.LVL16:
.L32:
	.loc 1 170 0
	sub	r3, r3, #1
	bcs	.L34
	mov	r7, #128
	lsl	r7, r7, #2
	add	r4, r4, r7
.LVL17:
	b	.L35
.LVL18:
.L36:
	.loc 1 178 0
	ldrh	r5, [r7]
	strh	r5, [r0]
	add	r0, r0, #2
.LVL19:
.L33:
	.loc 1 177 0
	sub	r3, r3, #1
	bcs	.L36
	mov	r7, #128
	lsl	r7, r7, #2
	add	r2, r2, r7
.LVL20:
.L35:
	sub	r1, r1, #1
.LVL21:
.L28:
	.loc 1 146 0
	cmp	r1, #0
	bne	.L37
	mov	r0, #1
	b	.L38
.L37:
	.loc 1 150 0
	ldr	r3, .L41
.LVL22:
	ldr	r0, [r3, #4]
	mov	r3, #0
.LVL23:
	b	.L39
.LVL24:
.L25:
	mov	r0, #0
.LVL25:
.L38:
	.loc 1 191 0
	add	sp, sp, #12
	@ sp needed for prologue
.LVL26:
	pop	{r4, r5, r6, r7, pc}
.L42:
	.align	2
.L41:
	.word	.LANCHOR0
	.word	10000000
	.word	9999999
.LFE2:
	.size	_CF_readSectors, .-_CF_readSectors
	.align	2
	.global	_CF_writeSectors
	.code	16
	.thumb_func
	.type	_CF_writeSectors, %function
_CF_writeSectors:
.LFB3:
	.loc 1 204 0
	push	{r4, r5, r6, r7, lr}
.LCFI3:
.LVL27:
	sub	sp, sp, #12
.LCFI4:
	.loc 1 219 0
	ldr	r3, .L67
	mov	r5, #128
	ldr	r7, [r3, #8]
	ldr	r4, .L67+4
	mov	r3, #0
.LVL28:
	b	.L44
.L47:
	.loc 1 221 0
	add	r3, r3, #1
.LVL29:
.L44:
	.loc 1 219 0
	ldrh	r6, [r7]
	tst	r6, r5
	bne	.L45
.L48:
	.loc 1 226 0
	ldr	r3, .L67
.LVL30:
	mov	r5, #80
	ldr	r6, [r3, #4]
	ldr	r4, .L67+4
	mov	r3, #0
.LVL31:
	mov	ip, r2
	b	.L46
.LVL32:
.L45:
	.loc 1 219 0
	cmp	r3, r4
	bne	.L47
	b	.L48
.LVL33:
.L50:
	.loc 1 228 0
	add	r3, r3, #1
.LVL34:
.L46:
	.loc 1 226 0
	ldrh	r2, [r6]
	tst	r2, r5
	bne	.L49
	cmp	r3, r4
	bne	.L50
	b	.L51
.L49:
	.loc 1 230 0
	ldr	r4, .L67+8
	mov	r2, ip
	cmp	r3, r4
	bgt	.L51
.LVL35:
	.loc 1 234 0
	ldr	r3, .L67
.LVL36:
	ldr	r5, [r3, #16]
	cmp	r1, #255
	bls	.L52
	mov	r3, #0
	b	.L53
.L52:
	lsl	r3, r1, #16
	lsr	r3, r3, #16
.L53:
	strh	r3, [r5]
	.loc 1 237 0
	ldr	r3, .L67
	mov	r5, #255
	.loc 1 209 0
	str	r2, [sp, #4]
	.loc 1 237 0
	ldr	r4, [r3, #20]
	.loc 1 207 0
	str	r2, [sp]
	.loc 1 237 0
	mov	r2, r0
.LVL37:
	and	r2, r2, r5
	strh	r2, [r4]
	.loc 1 238 0
	lsr	r4, r0, #8
	ldr	r2, [r3, #24]
	and	r4, r4, r5
	strh	r4, [r2]
	.loc 1 239 0
	lsr	r2, r0, #16
	.loc 1 240 0
	lsl	r0, r0, #4
.LVL38:
	.loc 1 239 0
	ldr	r4, [r3, #28]
	.loc 1 240 0
	lsr	r0, r0, #28
	.loc 1 239 0
	and	r5, r5, r2
	.loc 1 240 0
	mov	ip, r0
.LVL39:
	.loc 1 239 0
	strh	r5, [r4]
	.loc 1 240 0
	mov	r0, #224
	mov	r4, ip
	orr	r0, r0, r4
	ldr	r5, [r3, #32]
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	ldr	r4, [sp, #4]
.LVL40:
	strh	r0, [r5]
	.loc 1 243 0
	mov	r0, #48
	strh	r0, [r7]
	.loc 1 273 0
	ldr	r5, [r3]
	mov	r2, r4
.LVL41:
	.loc 1 245 0
	b	.L54
.LVL42:
.L56:
	.loc 1 251 0
	add	r3, r3, #1
.LVL43:
.L65:
	.loc 1 249 0
	ldrh	r0, [r6]
	mov	r7, #255
	and	r0, r0, r7
	cmp	r0, #88
	beq	.L55
	ldr	r0, .L67+4
	cmp	r3, r0
	bne	.L56
	b	.L51
.L55:
	.loc 1 253 0
	ldr	r0, .L67+8
	cmp	r3, r0
	bgt	.L51
	.loc 1 268 0
	lsl	r3, r4, #31
	bmi	.L57
.LVL44:
	mov	r3, #128
.LVL45:
	mov	r0, r2
	lsl	r3, r3, #1
	b	.L58
.LVL46:
.L57:
	mov	r3, #128
.LVL47:
	lsl	r3, r3, #1
	mov	r0, r4
	str	r3, [sp]
	b	.L59
.LVL48:
.L60:
	.loc 1 272 0
	ldrb	r3, [r0, #1]
	.loc 1 271 0
	ldrb	r7, [r0]
	.loc 1 272 0
	lsl	r3, r3, #8
	.loc 1 273 0
	orr	r7, r7, r3
	.loc 1 204 0
	add	r0, r0, #2
.LVL49:
	.loc 1 273 0
	strh	r7, [r5]
.LVL50:
.L59:
	.loc 1 269 0
	ldr	r3, [sp]
.LVL51:
	sub	r3, r3, #1
	str	r3, [sp]
	bcs	.L60
	mov	r7, #128
	lsl	r7, r7, #2
	add	r4, r4, r7
.LVL52:
	b	.L61
.LVL53:
.L62:
	.loc 1 277 0
	ldrh	r7, [r0]
	add	r0, r0, #2
.LVL54:
	strh	r7, [r5]
.LVL55:
.L58:
	.loc 1 276 0
	sub	r3, r3, #1
	bcs	.L62
	mov	r0, #128
.LVL56:
	lsl	r0, r0, #2
	add	r2, r2, r0
.L61:
	sub	r1, r1, #1
.LVL57:
.L54:
	.loc 1 245 0
	cmp	r1, #0
	bne	.L63
	mov	r0, #1
	b	.L64
.L63:
	mov	r3, #0
.LVL58:
	b	.L65
.LVL59:
.L51:
	mov	r0, #0
.LVL60:
.L64:
	.loc 1 291 0
	add	sp, sp, #12
	@ sp needed for prologue
.LVL61:
	pop	{r4, r5, r6, r7, pc}
.L68:
	.align	2
.L67:
	.word	.LANCHOR0
	.word	10000000
	.word	9999999
.LFE3:
	.size	_CF_writeSectors, .-_CF_writeSectors
	.align	2
	.global	_CF_shutdown
	.code	16
	.thumb_func
	.type	_CF_shutdown, %function
_CF_shutdown:
.LFB4:
	.loc 1 297 0
	push	{r4, lr}
.LCFI5:
	.loc 1 298 0
	bl	_CF_clearStatus
	.loc 1 299 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE4:
	.size	_CF_shutdown, .-_CF_shutdown
	.align	2
	.global	_CF_startup
	.code	16
	.thumb_func
	.type	_CF_startup, %function
_CF_startup:
.LFB5:
	.loc 1 306 0
	push	{r4, r5, lr}
.LCFI6:
.LVL62:
	.loc 1 307 0
	ldr	r2, .L75
	mov	r3, r2
	ldmia	r0!, {r1, r4, r5}
	stmia	r3!, {r1, r4, r5}
.LVL63:
	ldmia	r0!, {r1, r4, r5}
	stmia	r3!, {r1, r4, r5}
	ldmia	r0!, {r1, r4, r5}
	stmia	r3!, {r1, r4, r5}
	.loc 1 309 0
	ldr	r3, [r2, #20]
	.loc 1 310 0
	mov	r2, #255
	.loc 1 309 0
	ldrh	r1, [r3]
	.loc 1 310 0
	bic	r2, r2, r1
	strh	r2, [r3]
	.loc 1 312 0
	ldrh	r1, [r3]
	cmp	r1, r2
	beq	.L72
	mov	r0, #0
.LVL64:
	b	.L73
.LVL65:
.L72:
	.loc 1 316 0
	ldr	r2, .L75+4
	.loc 1 317 0
	ldr	r1, .L75+8
	.loc 1 316 0
	strh	r2, [r3]
	.loc 1 317 0
	ldrh	r0, [r3]
.LVL66:
	add	r0, r0, r1
	sub	r3, r0, #1
	sbc	r0, r0, r3
.L73:
	.loc 1 321 0
	@ sp needed for prologue
	pop	{r4, r5, pc}
.L76:
	.align	2
.L75:
	.word	.LANCHOR0
	.word	-21931
	.word	-43605
.LFE5:
	.size	_CF_startup, .-_CF_startup
	.global	cfRegisters
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	cfRegisters, %object
	.size	cfRegisters, 36
cfRegisters:
	.space	36
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x14
	.byte	0x11
	.uleb128 0x4
	.sleb128 5
	.byte	0x11
	.uleb128 0x5
	.sleb128 4
	.byte	0x11
	.uleb128 0x6
	.sleb128 3
	.byte	0x11
	.uleb128 0x7
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x14
	.byte	0x11
	.uleb128 0x4
	.sleb128 5
	.byte	0x11
	.uleb128 0x5
	.sleb128 4
	.byte	0x11
	.uleb128 0x6
	.sleb128 3
	.byte	0x11
	.uleb128 0x7
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI5-.LFB4
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI6-.LFB5
	.byte	0xe
	.uleb128 0xc
	.byte	0x11
	.uleb128 0x4
	.sleb128 3
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE10:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LFB1-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL59-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL56-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_cf_common.h"
	.section	.debug_info
	.4byte	0x32b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x1
	.4byte	.LASF40
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2a
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x36
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x50
	.4byte	0x65
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x3
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x3
	.byte	0x63
	.4byte	0x41
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x64
	.4byte	0x5a
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0x7d
	.4byte	0xbd
	.uleb128 0x7
	.4byte	.LASF12
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF13
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x7d
	.4byte	0xa8
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x9
	.byte	0x24
	.byte	0x4
	.byte	0x2b
	.4byte	0x158
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2c
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2d
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2e
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2f
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.byte	0x30
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.byte	0x31
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.byte	0x32
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.byte	0x33
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.byte	0x34
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x15e
	.uleb128 0xc
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0x35
	.4byte	0xd1
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF35
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5d
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF26
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST1
	.4byte	0x1b0
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x1
	.byte	0x4d
	.4byte	0x53
	.4byte	.LLST2
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST3
	.4byte	0x22f
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0x6a
	.4byte	0x9d
	.4byte	.LLST4
	.uleb128 0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0x6a
	.4byte	0x9d
	.byte	0x1
	.byte	0x51
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6a
	.4byte	0xc8
	.4byte	.LLST5
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x1
	.byte	0x6b
	.4byte	0x53
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x6d
	.4byte	0x22f
	.4byte	.LLST7
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0x6f
	.4byte	0x235
	.4byte	.LLST8
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0x70
	.4byte	0x53
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x92
	.uleb128 0xb
	.byte	0x4
	.4byte	0x88
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST9
	.4byte	0x2bc
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0xcc
	.4byte	0x9d
	.4byte	.LLST10
	.uleb128 0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0xcc
	.4byte	0x9d
	.byte	0x1
	.byte	0x51
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0xcc
	.4byte	0xc8
	.4byte	.LLST11
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x1
	.byte	0xcd
	.4byte	0x53
	.4byte	.LLST12
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0xcf
	.4byte	0x22f
	.4byte	.LLST13
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0xd1
	.4byte	0x235
	.4byte	.LLST14
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0xd2
	.4byte	0x53
	.byte	0x1
	.byte	0x57
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x129
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST15
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x132
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST16
	.4byte	0x311
	.uleb128 0x17
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x132
	.4byte	0x311
	.4byte	.LLST17
	.uleb128 0x18
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x135
	.4byte	0x92
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x317
	.uleb128 0x19
	.4byte	0x163
	.uleb128 0x1a
	.4byte	.LASF41
	.byte	0x1
	.byte	0x38
	.4byte	0x163
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cfRegisters
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x8f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x32f
	.4byte	0x16e
	.ascii	"_CF_isInserted\000"
	.4byte	0x185
	.ascii	"_CF_clearStatus\000"
	.4byte	0x1b0
	.ascii	"_CF_readSectors\000"
	.4byte	0x23b
	.ascii	"_CF_writeSectors\000"
	.4byte	0x2bc
	.ascii	"_CF_shutdown\000"
	.4byte	0x2d6
	.ascii	"_CF_startup\000"
	.4byte	0x31c
	.ascii	"cfRegisters\000"
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
.LASF38:
	.ascii	"usableCfRegs\000"
.LASF32:
	.ascii	"buff_u8\000"
.LASF34:
	.ascii	"temp\000"
.LASF2:
	.ascii	"short int\000"
.LASF35:
	.ascii	"_CF_isInserted\000"
.LASF31:
	.ascii	"buff\000"
.LASF36:
	.ascii	"_CF_shutdown\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF27:
	.ascii	"_CF_readSectors\000"
.LASF28:
	.ascii	"sector\000"
.LASF14:
	.ascii	"bool\000"
.LASF10:
	.ascii	"float\000"
.LASF26:
	.ascii	"_CF_clearStatus\000"
.LASF8:
	.ascii	"long long int\000"
.LASF21:
	.ascii	"lba1\000"
.LASF22:
	.ascii	"lba2\000"
.LASF23:
	.ascii	"lba3\000"
.LASF24:
	.ascii	"lba4\000"
.LASF41:
	.ascii	"cfRegisters\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF20:
	.ascii	"sectorCount\000"
.LASF0:
	.ascii	"signed char\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF7:
	.ascii	"unsigned int\000"
.LASF12:
	.ascii	"false\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF17:
	.ascii	"status\000"
.LASF33:
	.ascii	"_CF_writeSectors\000"
.LASF13:
	.ascii	"true\000"
.LASF16:
	.ascii	"data\000"
.LASF30:
	.ascii	"buffer\000"
.LASF29:
	.ascii	"numSectors\000"
.LASF15:
	.ascii	"long unsigned int\000"
.LASF11:
	.ascii	"double\000"
.LASF25:
	.ascii	"CF_REGISTERS\000"
.LASF19:
	.ascii	"error\000"
.LASF39:
	.ascii	"GNU C 4.4.3\000"
.LASF40:
	.ascii	"C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_cf"
	.ascii	"_common.c\000"
.LASF37:
	.ascii	"_CF_startup\000"
.LASF18:
	.ascii	"command\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
