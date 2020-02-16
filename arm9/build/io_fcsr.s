	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"io_fcsr.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	_FCSR_clearStatus
	.code	16
	.thumb_func
	.type	_FCSR_clearStatus, %function
_FCSR_clearStatus:
.LFB1:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_fcsr.c"
	.loc 1 105 0
	.loc 1 107 0
	mov	r0, #1
	@ sp needed for prologue
	bx	lr
.LFE1:
	.size	_FCSR_clearStatus, .-_FCSR_clearStatus
	.align	2
	.global	_FCSR_writeSectors
	.code	16
	.thumb_func
	.type	_FCSR_writeSectors, %function
_FCSR_writeSectors:
.LFB3:
	.loc 1 188 0
	push	{r4, r5, r6, r7, lr}
.LCFI0:
.LVL0:
	.loc 1 198 0
	ldr	r3, .L14
	.loc 1 188 0
	mov	r5, #0
	.loc 1 198 0
	mov	r6, r3
	.loc 1 188 0
	mov	r4, #0
.LVL1:
	.loc 1 198 0
	add	r6, r6, #16
.L6:
	ldr	r7, [r3, r5]
	cmp	r0, r7
	bcc	.L4
	ldr	r7, [r6, r5]
	cmp	r0, r7
	bcc	.L5
.L4:
	.loc 1 196 0
	add	r4, r4, #1
	add	r5, r5, #4
	cmp	r4, #4
	bne	.L6
	b	.L7
.L5:
	.loc 1 209 0
	lsl	r4, r4, #2
.LVL2:
	add	r5, r3, r4
	ldr	r6, [r5, #16]
	add	r7, r1, r0
	cmp	r7, r6
	bhi	.L7
	.loc 1 213 0
	ldr	r3, [r4, r3]
	.loc 1 191 0
	lsl	r1, r1, #9
.LVL3:
	.loc 1 213 0
	sub	r0, r0, r3
.LVL4:
	ldr	r3, [r5, #32]
	lsl	r0, r0, #9
	add	r0, r3, r0
.LVL5:
	mov	r3, #0
	.loc 1 214 0
	b	.L8
.L9:
	.loc 1 216 0
	ldrb	r4, [r2, r3]
	strb	r4, [r0, r3]
	add	r3, r3, #1
.L8:
	.loc 1 214 0
	cmp	r1, r3
	bne	.L9
	mov	r0, #1
.LVL6:
	b	.L10
.LVL7:
.L7:
	mov	r0, #0
.LVL8:
.L10:
	.loc 1 220 0
	@ sp needed for prologue
.LVL9:
	pop	{r4, r5, r6, r7, pc}
.L15:
	.align	2
.L14:
	.word	.LANCHOR0
.LFE3:
	.size	_FCSR_writeSectors, .-_FCSR_writeSectors
	.align	2
	.global	_FCSR_shutdown
	.code	16
	.thumb_func
	.type	_FCSR_shutdown, %function
_FCSR_shutdown:
.LFB4:
	.loc 1 227 0
	.loc 1 232 0
	ldr	r3, .L18
	mov	r2, #0
	.loc 1 241 0
	mov	r0, #1
	.loc 1 232 0
	str	r2, [r3, #48]
	.loc 1 236 0
	str	r2, [r3, #32]
	.loc 1 237 0
	str	r2, [r3]
	.loc 1 238 0
	str	r2, [r3, #16]
	.loc 1 236 0
	str	r2, [r3, #36]
	.loc 1 237 0
	str	r2, [r3, #4]
	.loc 1 238 0
	str	r2, [r3, #20]
	.loc 1 236 0
	str	r2, [r3, #40]
	.loc 1 237 0
	str	r2, [r3, #8]
	.loc 1 238 0
	str	r2, [r3, #24]
	.loc 1 236 0
	str	r2, [r3, #44]
	.loc 1 237 0
	str	r2, [r3, #12]
	.loc 1 238 0
	str	r2, [r3, #28]
	.loc 1 241 0
	@ sp needed for prologue
	bx	lr
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
.LFE4:
	.size	_FCSR_shutdown, .-_FCSR_shutdown
	.align	2
	.global	_FCSR_startUp
	.code	16
	.thumb_func
	.type	_FCSR_startUp, %function
_FCSR_startUp:
.LFB5:
	.loc 1 249 0
	push	{r4, r5, r6, r7, lr}
.LCFI1:
	sub	sp, sp, #20
.LCFI2:
	.loc 1 249 0
	ldr	r4, .L47
.LVL10:
	.loc 1 267 0
	mov	r5, #0
.LVL11:
	.loc 1 259 0
	ldr	r6, .L47+4
	b	.L45
.L22:
	.loc 1 262 0
	mov	r1, #128
	lsl	r1, r1, #1
	add	r4, r4, r1
	b	.L46
.L26:
	.loc 1 261 0
	ldr	r3, .L47+8
.L46:
	mov	r7, r5
	cmp	r6, r4
	adc	r7, r7, r5
	cmp	r7, #0
	beq	.L39
	ldr	r2, [r4]
	cmp	r2, r3
	bne	.L22
.L39:
	.loc 1 263 0
	add	r1, r4, #4
	ldr	r0, .L47+12
	mov	r2, #12
	bl	strncmp
	cmp	r0, #0
	bne	.L40
	cmp	r7, #0
	bne	.L28
.L40:
	.loc 1 267 0
	mov	r2, #128
	lsl	r2, r2, #2
	add	r4, r4, r2
.L45:
	.loc 1 259 0
	cmp	r4, r6
	bls	.L26
	.loc 1 271 0
	mov	r0, #0
	b	.L29
.L28:
	.loc 1 275 0
	ldr	r3, .L47+16
	ldr	r1, .L47+20
	.loc 1 282 0
	mov	r6, r3
	.loc 1 275 0
	add	r2, r4, r1
	str	r2, [r3, #48]
	add	r4, r4, #16
.LVL12:
	mov	r2, #0
	.loc 1 281 0
	mov	r1, sp
	.loc 1 282 0
	add	r6, r6, #16
.L30:
	.loc 1 280 0
	ldr	r0, [r4]
	str	r0, [r3, r2]
	.loc 1 281 0
	ldr	r5, [r4, #16]
.LVL13:
	.loc 1 282 0
	add	r4, r4, #4
	add	r0, r5, r0
	.loc 1 281 0
	str	r5, [r1, r2]
	.loc 1 282 0
	str	r0, [r6, r2]
	add	r2, r2, #4
	.loc 1 278 0
	cmp	r2, #16
	bne	.L30
	.loc 1 289 0
	ldr	r0, [r1]
	.loc 1 286 0
	ldr	r2, .L47+24
	.loc 1 289 0
	lsl	r0, r0, #9
	add	r0, r0, r2
	.loc 1 286 0
	str	r2, [r3, #32]
	.loc 1 289 0
	ldr	r2, [r1, #4]
	ldr	r1, [r1, #8]
	lsl	r2, r2, #9
	add	r2, r0, r2
	lsl	r1, r1, #9
	str	r2, [r3, #40]
	add	r2, r2, r1
	str	r0, [r3, #36]
	str	r2, [r3, #44]
	.loc 1 293 0
	mov	r3, #160
	lsl	r3, r3, #20
	ldrb	r3, [r3]
	cmp	r3, #70
	bne	.L31
	ldr	r3, .L47+28
	ldrb	r3, [r3]
	cmp	r3, #67
	bne	.L31
	ldr	r3, .L47+32
	ldrb	r3, [r3]
	cmp	r3, #83
	bne	.L31
	ldr	r3, .L47+36
	ldrb	r3, [r3]
	cmp	r3, #82
	bne	.L31
.LVL14:
.L36:
	.loc 1 314 0
	ldr	r1, .L47+16
.LVL15:
	mov	r2, #1
	.loc 1 315 0
	mov	r0, r1
.LVL16:
	.loc 1 293 0
	mov	r3, #0
	.loc 1 312 0
	mov	r4, sp
	.loc 1 314 0
	neg	r2, r2
	.loc 1 315 0
	add	r0, r0, #16
	b	.L32
.L31:
	.loc 1 295 0
	mov	r3, #160
	lsl	r3, r3, #20
	mov	r2, #70
	strb	r2, [r3]
	.loc 1 296 0
	ldr	r3, .L47+28
	mov	r2, #67
	strb	r2, [r3]
	.loc 1 297 0
	mov	r2, #83
	add	r3, r3, #1
	strb	r2, [r3]
	.loc 1 298 0
	mov	r2, #82
	add	r3, r3, #1
	strb	r2, [r3]
	.loc 1 302 0
	ldr	r2, .L47+16
	.loc 1 298 0
	mov	r3, #0
	.loc 1 304 0
	mov	r4, r2
	mov	r5, r2
	add	r4, r4, #16
.LVL17:
.L35:
	.loc 1 302 0
	ldr	r1, [r2, r3]
.LVL18:
	ldr	r0, [r2, #48]
.LVL19:
	lsl	r1, r1, #9
	add	r1, r0, r1
.LVL20:
	.loc 1 303 0
	mov	r0, r2
	add	r0, r0, #32
	ldr	r0, [r0, r3]
.LVL21:
	.loc 1 304 0
	b	.L33
.L34:
	.loc 1 305 0
	ldrb	r6, [r1]
	add	r1, r1, #1
	strb	r6, [r0]
	add	r0, r0, #1
.L33:
	.loc 1 304 0
	ldr	r6, [r4, r3]
	ldr	r7, [r5, #48]
	lsl	r6, r6, #9
	add	r6, r7, r6
	cmp	r1, r6
	bcc	.L34
	add	r3, r3, #4
	.loc 1 300 0
	cmp	r3, #16
	bne	.L35
	b	.L36
.LVL22:
.L32:
	.loc 1 312 0
	ldr	r5, [r4, r3]
	cmp	r5, #0
	bne	.L37
	.loc 1 314 0
	str	r2, [r1, r3]
	.loc 1 315 0
	str	r2, [r0, r3]
.L37:
	add	r3, r3, #4
	.loc 1 310 0
	cmp	r3, #16
	bne	.L32
	mov	r0, #1
.LVL23:
.L29:
	.loc 1 320 0
	add	sp, sp, #20
	@ sp needed for prologue
.LVL24:
.LVL25:
	pop	{r4, r5, r6, r7, pc}
.L48:
	.align	2
.L47:
	.word	134217984
	.word	167772159
	.word	1381188422
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	-256
	.word	167772164
	.word	167772161
	.word	167772162
	.word	167772163
.LFE5:
	.size	_FCSR_startUp, .-_FCSR_startUp
	.align	2
	.global	_FCSR_isInserted
	.code	16
	.thumb_func
	.type	_FCSR_isInserted, %function
_FCSR_isInserted:
.LFB0:
	.loc 1 77 0
	push	{r3, r4, r5, r6, r7, lr}
.LCFI3:
	.loc 1 77 0
	ldr	r4, .L62
.LVL26:
	.loc 1 91 0
	mov	r5, #0
.LVL27:
	.loc 1 83 0
	ldr	r6, .L62+4
	b	.L50
.L51:
	.loc 1 86 0
	mov	r2, #128
	lsl	r2, r2, #1
	add	r4, r4, r2
	b	.L61
.LVL28:
.L55:
	.loc 1 85 0
	ldr	r3, .L62+8
.LVL29:
.L61:
	mov	r7, r5
	cmp	r6, r4
	adc	r7, r7, r5
	cmp	r7, #0
	beq	.L58
	ldr	r2, [r4]
	cmp	r2, r3
	bne	.L51
.L58:
	.loc 1 87 0
	add	r1, r4, #4
	ldr	r0, .L62+12
	mov	r2, #12
	bl	strncmp
	mov	r3, #1
.LVL30:
	cmp	r0, #0
	bne	.L59
	cmp	r7, #0
	bne	.L60
.L59:
	.loc 1 91 0
	mov	r3, #128
.LVL31:
	lsl	r3, r3, #2
	add	r4, r4, r3
.LVL32:
.L50:
	mov	r3, r5
	.loc 1 83 0
	cmp	r4, r6
	bls	.L55
.LVL33:
.L60:
	.loc 1 96 0
	mov	r0, r3
	@ sp needed for prologue
.LVL34:
	pop	{r3, r4, r5, r6, r7, pc}
.L63:
	.align	2
.L62:
	.word	134217984
	.word	167772159
	.word	1381188422
	.word	.LANCHOR1
.LFE0:
	.size	_FCSR_isInserted, .-_FCSR_isInserted
	.align	2
	.global	_FCSR_readSectors
	.code	16
	.thumb_func
	.type	_FCSR_readSectors, %function
_FCSR_readSectors:
.LFB2:
	.loc 1 120 0
	push	{r3, r4, r5, r6, r7, lr}
.LCFI4:
.LVL35:
	.loc 1 130 0
	ldr	r4, .L81
	.loc 1 120 0
	mov	r3, r0
	.loc 1 130 0
	mov	r0, r4
.LVL36:
	.loc 1 120 0
	mov	r6, #0
	mov	r5, #0
.LVL37:
	.loc 1 130 0
	add	r0, r0, #16
.L67:
	ldr	r7, [r4, r6]
	cmp	r3, r7
	bcc	.L65
	ldr	r7, [r0, r6]
	cmp	r3, r7
	bcc	.L66
.L65:
	.loc 1 128 0
	add	r5, r5, #1
	add	r6, r6, #4
	cmp	r5, #4
	bne	.L67
	b	.L80
.L66:
	.loc 1 138 0
	lsl	r5, r5, #2
.LVL38:
	add	r0, r4, r5
	ldr	r6, [r0, #16]
	add	r7, r1, r3
	cmp	r7, r6
	bls	.L69
	mov	r0, #0
	b	.L70
.L69:
	.loc 1 144 0
	ldr	r4, [r5, r4]
	ldr	r0, [r0, #32]
	sub	r3, r3, r4
.LVL39:
	lsl	r3, r3, #9
	add	r3, r0, r3
.LVL40:
	mov	r5, #1
.LVL41:
.L74:
	.loc 1 123 0
	lsl	r4, r1, #9
	.loc 1 150 0
	cmp	r5, #0
	beq	.L71
	.loc 1 119 0
	add	r4, r2, r4
.LVL42:
	b	.L72
.L73:
	.loc 1 154 0
	ldrb	r1, [r3]
.LVL43:
	add	r3, r3, #1
	strb	r1, [r2]
	add	r2, r2, #1
.LVL44:
.L72:
	.loc 1 152 0
	cmp	r2, r4
	bne	.L73
	b	.L78
.LVL45:
.L71:
	.loc 1 170 0
	mov	r0, r2
	mov	r1, r3
.LVL46:
	mov	r2, r4
.LVL47:
	bl	memcpy
.LVL48:
.L78:
	mov	r0, #1
.LVL49:
.L70:
	.loc 1 176 0
	@ sp needed for prologue
.LVL50:
	pop	{r3, r4, r5, r6, r7, pc}
.LVL51:
.L80:
	.loc 1 146 0
	ldr	r0, .L81
	lsl	r3, r3, #9
.LVL52:
	ldr	r0, [r0, #48]
	mov	r5, #0
.LVL53:
	add	r3, r0, r3
.LVL54:
	b	.L74
.L82:
	.align	2
.L81:
	.word	.LANCHOR0
.LFE2:
	.size	_FCSR_readSectors, .-_FCSR_readSectors
	.global	_FCSR_LabelString
	.global	_FCSR_FileSysPointer
	.global	_FCSR_SramSectorPointer
	.global	_FCSR_SramSectorStart
	.global	_FCSR_SramSectorEnd
	.global	_io_fcsr
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_FCSR_LabelString, %object
	.size	_FCSR_LabelString, 12
_FCSR_LabelString:
	.ascii	" Chishm FAT\000"
	.type	_io_fcsr, %object
	.size	_io_fcsr, 32
_io_fcsr:
	.word	1381188422
	.word	19
	.word	_FCSR_startUp
	.word	_FCSR_isInserted
	.word	_FCSR_readSectors
	.word	_FCSR_writeSectors
	.word	_FCSR_clearStatus
	.word	_FCSR_shutdown
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_FCSR_SramSectorStart, %object
	.size	_FCSR_SramSectorStart, 16
_FCSR_SramSectorStart:
	.space	16
	.type	_FCSR_SramSectorEnd, %object
	.size	_FCSR_SramSectorEnd, 16
_FCSR_SramSectorEnd:
	.space	16
	.type	_FCSR_SramSectorPointer, %object
	.size	_FCSR_SramSectorPointer, 16
_FCSR_SramSectorPointer:
	.space	16
	.type	_FCSR_FileSysPointer, %object
	.size	_FCSR_FileSysPointer, 4
_FCSR_FileSysPointer:
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
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
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI1-.LFB5
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
	.uleb128 0x28
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI3-.LFB0
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0x3
	.sleb128 6
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
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI4-.LFB2
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0x3
	.sleb128 6
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
	.align	2
.LEFDE10:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB0-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL33-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc_io.h"
	.section	.debug_info
	.4byte	0x4af
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x1
	.4byte	.LASF55
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x50
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x3
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x64
	.4byte	0x4f
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0x7d
	.4byte	0xa7
	.uleb128 0x7
	.4byte	.LASF11
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF12
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x7d
	.4byte	0x92
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x3d
	.4byte	0xbd
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x9
	.byte	0x1
	.4byte	0xa7
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3e
	.4byte	0xbd
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3f
	.4byte	0xdf
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe5
	.uleb128 0xa
	.byte	0x1
	.4byte	0xa7
	.4byte	0xff
	.uleb128 0xb
	.4byte	0x87
	.uleb128 0xb
	.4byte	0x87
	.uleb128 0xb
	.4byte	0xff
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x40
	.4byte	0x10c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x112
	.uleb128 0xa
	.byte	0x1
	.4byte	0xa7
	.4byte	0x12c
	.uleb128 0xb
	.4byte	0x87
	.uleb128 0xb
	.4byte	0x87
	.uleb128 0xb
	.4byte	0x12c
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x132
	.uleb128 0xd
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x41
	.4byte	0xbd
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x42
	.4byte	0xbd
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x20
	.byte	0x4
	.byte	0x44
	.4byte	0x1c6
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x4
	.byte	0x45
	.4byte	0x1c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x4
	.byte	0x46
	.4byte	0x1c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x4
	.byte	0x47
	.4byte	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x4
	.byte	0x48
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x4
	.byte	0x49
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x4
	.byte	0x4a
	.4byte	0x101
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x4
	.byte	0x4b
	.4byte	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x4
	.byte	0x4c
	.4byte	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF28
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0x4f
	.4byte	0x149
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF30
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF31
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.4byte	0xa7
	.byte	0x1
	.uleb128 0x12
	.4byte	0x1e9
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x5d
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF37
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST1
	.4byte	0x28c
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x1
	.byte	0xbb
	.4byte	0x87
	.4byte	.LLST2
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.byte	0xbb
	.4byte	0x7d
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	.LASF34
	.byte	0x1
	.byte	0xbb
	.4byte	0xff
	.byte	0x1
	.byte	0x52
	.uleb128 0x16
	.ascii	"i\000"
	.byte	0x1
	.byte	0xbd
	.4byte	0x48
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	.LASF35
	.byte	0x1
	.byte	0xbe
	.4byte	0xa7
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.byte	0xbf
	.4byte	0x87
	.uleb128 0x18
	.ascii	"src\000"
	.byte	0x1
	.byte	0xc0
	.4byte	0x28c
	.uleb128 0x16
	.ascii	"dst\000"
	.byte	0x1
	.byte	0xc1
	.4byte	0x28c
	.4byte	.LLST5
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x5d
	.4byte	0x2b7
	.uleb128 0x18
	.ascii	"i\000"
	.byte	0x1
	.byte	0xe4
	.4byte	0x48
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF39
	.byte	0x1
	.byte	0xf8
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST7
	.4byte	0x329
	.uleb128 0x1a
	.4byte	.LASF40
	.byte	0x1
	.byte	0xfa
	.4byte	0xa7
	.4byte	.LLST8
	.uleb128 0x18
	.ascii	"i\000"
	.byte	0x1
	.byte	0xfb
	.4byte	0x48
	.uleb128 0x1b
	.4byte	.LASF41
	.byte	0x1
	.byte	0xfc
	.4byte	0x329
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.4byte	.LASF42
	.byte	0x1
	.byte	0xfd
	.4byte	0x28c
	.4byte	.LLST9
	.uleb128 0x1a
	.4byte	.LASF43
	.byte	0x1
	.byte	0xfe
	.4byte	0x28c
	.4byte	.LLST10
	.uleb128 0x1c
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x100
	.4byte	0x339
	.4byte	.LLST11
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x48
	.4byte	0x339
	.uleb128 0x1e
	.4byte	0x1df
	.byte	0x3
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x87
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF45
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST12
	.4byte	0x37b
	.uleb128 0x1a
	.4byte	.LASF40
	.byte	0x1
	.byte	0x4e
	.4byte	0xa7
	.4byte	.LLST13
	.uleb128 0x1a
	.4byte	.LASF44
	.byte	0x1
	.byte	0x50
	.4byte	0x339
	.4byte	.LLST14
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF46
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST15
	.4byte	0x40b
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x1
	.byte	0x77
	.4byte	0x87
	.4byte	.LLST16
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.byte	0x77
	.4byte	0x87
	.4byte	.LLST17
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x77
	.4byte	0xff
	.4byte	.LLST18
	.uleb128 0x16
	.ascii	"i\000"
	.byte	0x1
	.byte	0x79
	.4byte	0x48
	.4byte	.LLST19
	.uleb128 0x1a
	.4byte	.LASF35
	.byte	0x1
	.byte	0x7a
	.4byte	0xa7
	.4byte	.LLST20
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x1
	.byte	0x7b
	.4byte	0x48
	.uleb128 0x16
	.ascii	"src\000"
	.byte	0x1
	.byte	0x7c
	.4byte	0x28c
	.4byte	.LLST21
	.uleb128 0x16
	.ascii	"dst\000"
	.byte	0x1
	.byte	0x7d
	.4byte	0x28c
	.4byte	.LLST22
	.byte	0x0
	.uleb128 0x1f
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x145
	.4byte	0x41e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_io_fcsr
	.uleb128 0x20
	.4byte	0x1cd
	.uleb128 0x1d
	.4byte	0x1e2
	.4byte	0x433
	.uleb128 0x1e
	.4byte	0x1df
	.byte	0xb
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF49
	.byte	0x1
	.byte	0x40
	.4byte	0x445
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_FCSR_LabelString
	.uleb128 0x20
	.4byte	0x423
	.uleb128 0x21
	.4byte	.LASF50
	.byte	0x1
	.byte	0x42
	.4byte	0x28c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_FCSR_FileSysPointer
	.uleb128 0x1d
	.4byte	0x28c
	.4byte	0x46c
	.uleb128 0x1e
	.4byte	0x1df
	.byte	0x3
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF51
	.byte	0x1
	.byte	0x43
	.4byte	0x45c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_FCSR_SramSectorPointer
	.uleb128 0x1d
	.4byte	0x87
	.4byte	0x48e
	.uleb128 0x1e
	.4byte	0x1df
	.byte	0x3
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF52
	.byte	0x1
	.byte	0x44
	.4byte	0x47e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_FCSR_SramSectorStart
	.uleb128 0x21
	.4byte	.LASF53
	.byte	0x1
	.byte	0x45
	.4byte	0x47e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_FCSR_SramSectorEnd
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.4byte	0x115
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x4b3
	.4byte	0x1f7
	.ascii	"_FCSR_clearStatus\000"
	.4byte	0x206
	.ascii	"_FCSR_writeSectors\000"
	.4byte	0x292
	.ascii	"_FCSR_shutdown\000"
	.4byte	0x2b7
	.ascii	"_FCSR_startUp\000"
	.4byte	0x33f
	.ascii	"_FCSR_isInserted\000"
	.4byte	0x37b
	.ascii	"_FCSR_readSectors\000"
	.4byte	0x40b
	.ascii	"_io_fcsr\000"
	.4byte	0x433
	.ascii	"_FCSR_LabelString\000"
	.4byte	0x44a
	.ascii	"_FCSR_FileSysPointer\000"
	.4byte	0x46c
	.ascii	"_FCSR_SramSectorPointer\000"
	.4byte	0x48e
	.ascii	"_FCSR_SramSectorStart\000"
	.4byte	0x4a0
	.ascii	"_FCSR_SramSectorEnd\000"
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
.LASF12:
	.ascii	"true\000"
.LASF56:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF53:
	.ascii	"_FCSR_SramSectorEnd\000"
.LASF54:
	.ascii	"GNU C 4.4.3\000"
.LASF50:
	.ascii	"_FCSR_FileSysPointer\000"
.LASF51:
	.ascii	"_FCSR_SramSectorPointer\000"
.LASF7:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF57:
	.ascii	"_FCSR_clearStatus\000"
.LASF24:
	.ascii	"fn_readSectors\000"
.LASF27:
	.ascii	"fn_shutdown\000"
.LASF30:
	.ascii	"long int\000"
.LASF10:
	.ascii	"double\000"
.LASF25:
	.ascii	"fn_writeSectors\000"
.LASF18:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF45:
	.ascii	"_FCSR_isInserted\000"
.LASF47:
	.ascii	"readLength\000"
.LASF26:
	.ascii	"fn_clearStatus\000"
.LASF39:
	.ascii	"_FCSR_startUp\000"
.LASF6:
	.ascii	"unsigned int\000"
.LASF32:
	.ascii	"sector\000"
.LASF46:
	.ascii	"_FCSR_readSectors\000"
.LASF38:
	.ascii	"_FCSR_shutdown\000"
.LASF28:
	.ascii	"long unsigned int\000"
.LASF43:
	.ascii	"destByte\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF41:
	.ascii	"SramRegionSize\000"
.LASF49:
	.ascii	"_FCSR_LabelString\000"
.LASF13:
	.ascii	"bool\000"
.LASF33:
	.ascii	"numSectors\000"
.LASF42:
	.ascii	"srcByte\000"
.LASF20:
	.ascii	"ioType\000"
.LASF23:
	.ascii	"fn_isInserted\000"
.LASF21:
	.ascii	"features\000"
.LASF15:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF36:
	.ascii	"writeLength\000"
.LASF48:
	.ascii	"_io_fcsr\000"
.LASF16:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF9:
	.ascii	"float\000"
.LASF19:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF40:
	.ascii	"flagFoundFileSys\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF2:
	.ascii	"short int\000"
.LASF17:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF11:
	.ascii	"false\000"
.LASF14:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF5:
	.ascii	"uint32_t\000"
.LASF35:
	.ascii	"flagSramSector\000"
.LASF31:
	.ascii	"char\000"
.LASF34:
	.ascii	"buffer\000"
.LASF52:
	.ascii	"_FCSR_SramSectorStart\000"
.LASF29:
	.ascii	"IO_INTERFACE\000"
.LASF22:
	.ascii	"fn_startup\000"
.LASF4:
	.ascii	"uint8_t\000"
.LASF44:
	.ascii	"fileSysPointer\000"
.LASF37:
	.ascii	"_FCSR_writeSectors\000"
.LASF55:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/di"
	.ascii	"sc_io/io_fcsr.c\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
