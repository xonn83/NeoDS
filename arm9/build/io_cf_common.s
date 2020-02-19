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
	.code 16
	.thumb_func
	.type	_CF_isInserted, %function
_CF_isInserted:
.LFB2:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_cf_common.c"
	.loc 1 64 0
	push	{lr}
.LCFI0:
	.loc 1 66 0
	ldr	r3, .L4
	.loc 1 67 0
	mov	r0, #0
	.loc 1 66 0
	ldr	r2, [r3, #4]
	mov	r3, #80
	strh	r3, [r2]
	.loc 1 67 0
	ldrh	r3, [r2]
	mov	r2, #255
	and	r3, r3, r2
	cmp	r3, #80
	bne	.L2
	mov	r0, #1
.L2:
	.loc 1 68 0
	@ sp needed for prologue
	pop	{pc}
.L5:
	.align	2
.L4:
	.word	cfRegisters
.LFE2:
	.size	_CF_isInserted, .-_CF_isInserted
	.align	2
	.global	_CF_clearStatus
	.code 16
	.thumb_func
	.type	_CF_clearStatus, %function
_CF_clearStatus:
.LFB3:
	.loc 1 76 0
	push	{lr}
.LCFI1:
	.loc 1 81 0
	ldr	r3, .L19
	mov	r2, #0
.LVL0:
	ldr	r1, [r3, #8]
	b	.L7
.L8:
	.loc 1 82 0
	add	r2, r2, #1
.L7:
	.loc 1 81 0
	ldrh	r3, [r1]
	lsl	r0, r3, #24
	bpl	.L9
	ldr	r3, .L19+4
	cmp	r2, r3
	bne	.L8
.L9:
	.loc 1 87 0
	ldr	r3, .L19
	mov	r1, #0
.LVL1:
	ldr	r0, [r3, #4]
	b	.L11
.LVL2:
.L12:
	.loc 1 88 0
	add	r1, r1, #1
.LVL3:
.L11:
	.loc 1 87 0
	ldrh	r2, [r0]
.LVL4:
	mov	r3, #80
	tst	r2, r3
	bne	.L13
	ldr	r3, .L19+4
	cmp	r1, r3
	bne	.L12
	mov	r0, #0
	b	.L16
.L13:
	ldr	r3, .L19+8
	mov	r2, #0
	cmp	r1, r3
	ble	.L17
	mov	r2, #1
.L17:
	mov	r3, #1
	eor	r3, r3, r2
	lsl	r3, r3, #24
	lsr	r0, r3, #24
.L16:
	.loc 1 94 0
	@ sp needed for prologue
	pop	{pc}
.L20:
	.align	2
.L19:
	.word	cfRegisters
	.word	10000000
	.word	9999999
.LFE3:
	.size	_CF_clearStatus, .-_CF_clearStatus
	.align	2
	.global	_CF_readSectors
	.code 16
	.thumb_func
	.type	_CF_readSectors, %function
_CF_readSectors:
.LFB4:
	.loc 1 106 0
	push	{r4, r5, r6, r7, lr}
.LCFI2:
.LVL5:
	.loc 1 121 0
	ldr	r3, .L61
	.loc 1 106 0
	mov	r6, r1
	.loc 1 121 0
	ldr	r1, [r3, #8]
.LVL6:
	.loc 1 106 0
	mov	r7, r2
.LVL7:
	mov	r4, r0
	.loc 1 121 0
	mov	r2, #0
.LVL8:
	b	.L22
.LVL9:
.L23:
	.loc 1 122 0
	add	r2, r2, #1
.LVL10:
.L22:
	.loc 1 121 0
	ldrh	r3, [r1]
	lsl	r0, r3, #24
	bpl	.L24
	ldr	r3, .L61+4
	cmp	r2, r3
	bne	.L23
.L24:
	.loc 1 127 0
	ldr	r3, .L61
	mov	r1, #0
.LVL11:
	ldr	r0, [r3, #4]
	b	.L26
.LVL12:
.L27:
	.loc 1 128 0
	add	r1, r1, #1
.LVL13:
.L26:
	.loc 1 127 0
	ldrh	r2, [r0]
.LVL14:
	mov	r3, #80
	tst	r2, r3
	bne	.L28
	ldr	r3, .L61+4
	cmp	r1, r3
	bne	.L27
	b	.L30
.L28:
	.loc 1 130 0
	ldr	r3, .L61+8
	cmp	r1, r3
	bgt	.L30
	.loc 1 134 0
	ldr	r3, .L61
	ldr	r2, [r3, #16]
	cmp	r6, #255
	bls	.L32
	mov	r3, #0
	b	.L34
.L32:
	lsl	r3, r6, #16
	lsr	r3, r3, #16
.L34:
	.loc 1 137 0
	ldr	r0, .L61
	.loc 1 134 0
	strh	r3, [r2]
	.loc 1 137 0
	ldr	r1, [r0, #20]
.LVL15:
	mov	r2, #255
	mov	r3, r4
	and	r3, r3, r2
	strh	r3, [r1]
	.loc 1 138 0
	ldr	r1, [r0, #24]
	lsr	r3, r4, #8
	and	r3, r3, r2
	strh	r3, [r1]
	.loc 1 139 0
	ldr	r1, [r0, #28]
	lsr	r3, r4, #16
	and	r3, r3, r2
	strh	r3, [r1]
	.loc 1 140 0
	lsl	r3, r4, #4
	mov	r2, #224
	lsr	r3, r3, #28
	orr	r3, r3, r2
	ldr	r1, [r0, #32]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	.loc 1 143 0
	ldr	r2, [r0, #8]
	.loc 1 140 0
	strh	r3, [r1]
	.loc 1 111 0
	mov	r5, r7
.LVL16:
	.loc 1 143 0
	mov	r3, #32
	strh	r3, [r2]
	b	.L60
.LVL17:
.L36:
	.loc 1 152 0
	add	r1, r1, #1
.LVL18:
.L37:
	.loc 1 150 0
	ldrh	r3, [r0]
	mov	r2, #255
.LVL19:
	and	r3, r3, r2
	cmp	r3, #88
	beq	.L38
	ldr	r3, .L61+4
	cmp	r1, r3
	bne	.L36
	b	.L30
.L38:
	.loc 1 154 0
	ldr	r3, .L61+8
	cmp	r1, r3
	bgt	.L30
	.loc 1 169 0
	lsl	r3, r5, #31
	bpl	.L41
	ldr	r0, .L61
	mov	r2, r5
.LVL20:
	mov	r1, #255
.LVL21:
.L43:
	.loc 1 172 0
	ldr	r3, [r0]
	ldrh	r3, [r3]
	.loc 1 173 0
	strb	r3, [r2]
	.loc 1 174 0
	asr	r3, r3, #8
	strb	r3, [r2, #1]
	add	r2, r2, #2
	.loc 1 170 0
	sub	r1, r1, #1
	bcs	.L43
	mov	r0, #128
	lsl	r0, r0, #2
	add	r5, r5, r0
	b	.L60
.LVL22:
.L41:
	ldr	r3, .L61
	mov	r2, r7
.LVL23:
	ldr	r0, [r3]
	mov	r1, #255
.LVL24:
.L45:
	.loc 1 178 0
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r2, #2
	.loc 1 177 0
	sub	r1, r1, #1
	bcs	.L45
	mov	r3, #128
	lsl	r3, r3, #2
	add	r7, r7, r3
.LVL25:
.L60:
	.loc 1 146 0
	sub	r6, r6, #1
	bcs	.L47
	mov	r0, #1
	b	.L49
.L47:
	.loc 1 150 0
	ldr	r3, .L61
	mov	r1, #0
.LVL26:
	ldr	r0, [r3, #4]
	b	.L37
.LVL27:
.L30:
	mov	r0, #0
.LVL28:
.L49:
	.loc 1 191 0
	@ sp needed for prologue
.LVL29:
.LVL30:
.LVL31:
.LVL32:
	pop	{r4, r5, r6, r7, pc}
.L62:
	.align	2
.L61:
	.word	cfRegisters
	.word	10000000
	.word	9999999
.LFE4:
	.size	_CF_readSectors, .-_CF_readSectors
	.align	2
	.global	_CF_writeSectors
	.code 16
	.thumb_func
	.type	_CF_writeSectors, %function
_CF_writeSectors:
.LFB5:
	.loc 1 204 0
	push	{r4, r5, r6, r7, lr}
.LCFI3:
.LVL33:
	.loc 1 219 0
	ldr	r3, .L103
	.loc 1 204 0
	mov	r6, r1
	.loc 1 219 0
	ldr	r1, [r3, #8]
.LVL34:
	.loc 1 204 0
	mov	r7, r2
.LVL35:
	mov	r4, r0
	.loc 1 219 0
	mov	r2, #0
.LVL36:
	b	.L64
.LVL37:
.L65:
	.loc 1 221 0
	add	r2, r2, #1
.LVL38:
.L64:
	.loc 1 219 0
	ldrh	r3, [r1]
	lsl	r0, r3, #24
	bpl	.L66
	ldr	r3, .L103+4
	cmp	r2, r3
	bne	.L65
.L66:
	.loc 1 226 0
	ldr	r3, .L103
	mov	r1, #0
.LVL39:
	ldr	r0, [r3, #4]
	b	.L68
.LVL40:
.L69:
	.loc 1 228 0
	add	r1, r1, #1
.LVL41:
.L68:
	.loc 1 226 0
	ldrh	r2, [r0]
.LVL42:
	mov	r3, #80
	tst	r2, r3
	bne	.L70
	ldr	r3, .L103+4
	cmp	r1, r3
	bne	.L69
	b	.L72
.L70:
	.loc 1 230 0
	ldr	r3, .L103+8
	cmp	r1, r3
	bgt	.L72
	.loc 1 234 0
	ldr	r3, .L103
	ldr	r2, [r3, #16]
	cmp	r6, #255
	bls	.L74
	mov	r3, #0
	b	.L76
.L74:
	lsl	r3, r6, #16
	lsr	r3, r3, #16
.L76:
	.loc 1 237 0
	ldr	r0, .L103
	.loc 1 234 0
	strh	r3, [r2]
	.loc 1 237 0
	ldr	r1, [r0, #20]
.LVL43:
	mov	r2, #255
	mov	r3, r4
	and	r3, r3, r2
	strh	r3, [r1]
	.loc 1 238 0
	ldr	r1, [r0, #24]
	lsr	r3, r4, #8
	and	r3, r3, r2
	strh	r3, [r1]
	.loc 1 239 0
	ldr	r1, [r0, #28]
	lsr	r3, r4, #16
	and	r3, r3, r2
	strh	r3, [r1]
	.loc 1 240 0
	lsl	r3, r4, #4
	mov	r2, #224
	lsr	r3, r3, #28
	orr	r3, r3, r2
	ldr	r1, [r0, #32]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	.loc 1 243 0
	ldr	r2, [r0, #8]
	.loc 1 240 0
	strh	r3, [r1]
	.loc 1 209 0
	mov	r5, r7
.LVL44:
	.loc 1 243 0
	mov	r3, #48
	strh	r3, [r2]
	b	.L102
.LVL45:
.L78:
	.loc 1 251 0
	add	r1, r1, #1
.LVL46:
.L79:
	.loc 1 249 0
	ldrh	r3, [r0]
	mov	r2, #255
.LVL47:
	and	r3, r3, r2
	cmp	r3, #88
	beq	.L80
	ldr	r3, .L103+4
	cmp	r1, r3
	bne	.L78
	b	.L72
.L80:
	.loc 1 253 0
	ldr	r3, .L103+8
	cmp	r1, r3
	bgt	.L72
	.loc 1 268 0
	lsl	r3, r5, #31
	bpl	.L83
	ldr	r3, .L103
	mov	r1, r5
.LVL48:
	ldr	r4, [r3]
.LVL49:
	mov	r0, #255
.LVL50:
.L85:
	.loc 1 272 0
	ldrb	r3, [r1, #1]
	.loc 1 271 0
	ldrb	r2, [r1]
.LVL51:
	.loc 1 272 0
	lsl	r3, r3, #8
	.loc 1 273 0
	orr	r2, r2, r3
.LVL52:
	.loc 1 272 0
	add	r1, r1, #2
	.loc 1 273 0
	strh	r2, [r4]
	.loc 1 269 0
	sub	r0, r0, #1
	bcs	.L85
	mov	r0, #128
.LVL53:
	lsl	r0, r0, #2
	add	r5, r5, r0
	b	.L102
.LVL54:
.L83:
	ldr	r3, .L103
	mov	r2, r7
.LVL55:
	ldr	r0, [r3]
	mov	r1, #255
.LVL56:
.L87:
	.loc 1 277 0
	ldrh	r3, [r2]
	add	r2, r2, #2
	strh	r3, [r0]
	.loc 1 276 0
	sub	r1, r1, #1
	bcs	.L87
	mov	r3, #128
	lsl	r3, r3, #2
	add	r7, r7, r3
.LVL57:
.L102:
	.loc 1 245 0
	sub	r6, r6, #1
	bcs	.L89
	mov	r0, #1
	b	.L91
.L89:
	.loc 1 249 0
	ldr	r3, .L103
	mov	r1, #0
.LVL58:
	ldr	r0, [r3, #4]
	b	.L79
.LVL59:
.L72:
	mov	r0, #0
.LVL60:
.L91:
	.loc 1 291 0
	@ sp needed for prologue
.LVL61:
.LVL62:
.LVL63:
.LVL64:
	pop	{r4, r5, r6, r7, pc}
.L104:
	.align	2
.L103:
	.word	cfRegisters
	.word	10000000
	.word	9999999
.LFE5:
	.size	_CF_writeSectors, .-_CF_writeSectors
	.align	2
	.global	_CF_shutdown
	.code 16
	.thumb_func
	.type	_CF_shutdown, %function
_CF_shutdown:
.LFB6:
	.loc 1 297 0
	push	{lr}
.LCFI4:
	sub	sp, sp, #4
.LCFI5:
	.loc 1 298 0
	bl	_CF_clearStatus
	.loc 1 299 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE6:
	.size	_CF_shutdown, .-_CF_shutdown
	.align	2
	.global	_CF_startup
	.code 16
	.thumb_func
	.type	_CF_startup, %function
_CF_startup:
.LFB7:
	.loc 1 306 0
	push	{r4, r5, r6, lr}
.LCFI6:
.LVL65:
	.loc 1 307 0
	ldr	r1, .L113
	mov	r3, r0
	mov	r2, r1
	ldmia	r3!, {r4, r5, r6}
	stmia	r2!, {r4, r5, r6}
	ldmia	r3!, {r0, r4, r5}
	stmia	r2!, {r0, r4, r5}
.LVL66:
	ldmia	r3!, {r0, r4, r6}
	stmia	r2!, {r0, r4, r6}
	.loc 1 309 0
	ldr	r1, [r1, #20]
	.loc 1 310 0
	mov	r3, #255
.LVL67:
	.loc 1 309 0
	ldrh	r2, [r1]
	.loc 1 310 0
	bic	r3, r3, r2
	strh	r3, [r1]
	.loc 1 312 0
	ldrh	r2, [r1]
	cmp	r2, r3
	beq	.L108
	mov	r0, #0
	b	.L110
.L108:
	.loc 1 316 0
	ldr	r3, .L113+4
	strh	r3, [r1]
	.loc 1 317 0
	ldrh	r2, [r1]
	ldr	r3, .L113+8
	mov	r1, #0
	cmp	r2, r3
	bne	.L111
	mov	r1, #1
.L111:
	mov	r3, #1
	eor	r3, r3, r1
	lsl	r3, r3, #24
	lsr	r0, r3, #24
.L110:
	.loc 1 321 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L114:
	.align	2
.L113:
	.word	cfRegisters
	.word	-21931
	.word	43605
.LFE7:
	.size	_CF_startup, .-_CF_startup
	.global	cfRegisters
	.bss
	.align	2
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI1-.LFB3
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI2-.LFB4
	.byte	0xe
	.uleb128 0x14
	.byte	0x84
	.uleb128 0x5
	.byte	0x85
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x87
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI3-.LFB5
	.byte	0xe
	.uleb128 0x14
	.byte	0x84
	.uleb128 0x5
	.byte	0x85
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x87
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI4-.LFB6
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI6-.LFB7
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
.LEFDE10:
	.file 2 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_cf_common.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL58-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x33e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF41
	.byte	0x1
	.4byte	.LASF42
	.4byte	.LASF43
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x3a
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x54
	.4byte	0x69
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x8
	.byte	0x4
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x2
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x2
	.byte	0x60
	.4byte	0x45
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x2
	.byte	0x61
	.4byte	0x5e
	.uleb128 0x6
	.4byte	0xcf
	.byte	0x1
	.byte	0x2
	.byte	0x81
	.uleb128 0x7
	.4byte	.LASF14
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF15
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x2
	.byte	0x81
	.4byte	0xba
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x9
	.4byte	0x163
	.byte	0x24
	.byte	0x4
	.byte	0x2b
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2c
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2d
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2e
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2f
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.byte	0x30
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.byte	0x31
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.byte	0x32
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.byte	0x33
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.byte	0x34
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x169
	.uleb128 0xc
	.4byte	0x50
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x4
	.byte	0x35
	.4byte	0xdc
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF36
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	0x1bd
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST1
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x1
	.byte	0x4d
	.4byte	0x7e
	.4byte	.LLST2
	.byte	0x0
	.uleb128 0xe
	.4byte	0x23e
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST3
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x6a
	.4byte	0xaf
	.4byte	.LLST4
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6a
	.4byte	0xaf
	.4byte	.LLST5
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x6a
	.4byte	0xda
	.4byte	.LLST6
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x1
	.byte	0x6b
	.4byte	0x7e
	.4byte	.LLST7
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0x6d
	.4byte	0x23e
	.4byte	.LLST8
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0x6f
	.4byte	0x244
	.4byte	.LLST9
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0x70
	.4byte	0x7e
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa4
	.uleb128 0xb
	.byte	0x4
	.4byte	0x9a
	.uleb128 0xe
	.4byte	0x2cf
	.byte	0x1
	.4byte	.LASF35
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST10
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0xcc
	.4byte	0xaf
	.4byte	.LLST11
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0xcc
	.4byte	0xaf
	.4byte	.LLST12
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0xcc
	.4byte	0xda
	.4byte	.LLST13
	.uleb128 0xf
	.ascii	"i\000"
	.byte	0x1
	.byte	0xcd
	.4byte	0x7e
	.4byte	.LLST14
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0xcf
	.4byte	0x23e
	.4byte	.LLST15
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0xd1
	.4byte	0x244
	.4byte	.LLST16
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0xd2
	.4byte	0x7e
	.4byte	.LLST17
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x129
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST18
	.uleb128 0x14
	.4byte	0x324
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x132
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST19
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x132
	.4byte	0x324
	.4byte	.LLST20
	.uleb128 0x16
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x135
	.4byte	0xa4
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x32a
	.uleb128 0x17
	.4byte	0x16e
	.uleb128 0x18
	.4byte	.LASF40
	.byte	0x1
	.byte	0x38
	.4byte	0x16e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cfRegisters
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.4byte	0x342
	.4byte	0x179
	.ascii	"_CF_isInserted\000"
	.4byte	0x192
	.ascii	"_CF_clearStatus\000"
	.4byte	0x1bd
	.ascii	"_CF_readSectors\000"
	.4byte	0x24a
	.ascii	"_CF_writeSectors\000"
	.4byte	0x2cf
	.ascii	"_CF_shutdown\000"
	.4byte	0x2e9
	.ascii	"_CF_startup\000"
	.4byte	0x32f
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
.LASF39:
	.ascii	"usableCfRegs\000"
.LASF34:
	.ascii	"temp\000"
.LASF2:
	.ascii	"short int\000"
.LASF36:
	.ascii	"_CF_isInserted\000"
.LASF17:
	.ascii	"data\000"
.LASF32:
	.ascii	"buff\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF29:
	.ascii	"sector\000"
.LASF16:
	.ascii	"bool\000"
.LASF12:
	.ascii	"float\000"
.LASF27:
	.ascii	"_CF_clearStatus\000"
.LASF9:
	.ascii	"long long int\000"
.LASF28:
	.ascii	"_CF_readSectors\000"
.LASF6:
	.ascii	"long int\000"
.LASF40:
	.ascii	"cfRegisters\000"
.LASF22:
	.ascii	"lba1\000"
.LASF24:
	.ascii	"lba3\000"
.LASF25:
	.ascii	"lba4\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF21:
	.ascii	"sectorCount\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF7:
	.ascii	"uint32_t\000"
.LASF14:
	.ascii	"false\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF18:
	.ascii	"status\000"
.LASF23:
	.ascii	"lba2\000"
.LASF15:
	.ascii	"true\000"
.LASF43:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF31:
	.ascii	"buffer\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF35:
	.ascii	"_CF_writeSectors\000"
.LASF13:
	.ascii	"double\000"
.LASF41:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF33:
	.ascii	"buff_u8\000"
.LASF42:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_"
	.ascii	"io/io_cf_common.c\000"
.LASF20:
	.ascii	"error\000"
.LASF37:
	.ascii	"_CF_shutdown\000"
.LASF30:
	.ascii	"numSectors\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF38:
	.ascii	"_CF_startup\000"
.LASF19:
	.ascii	"command\000"
.LASF26:
	.ascii	"CF_REGISTERS\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
