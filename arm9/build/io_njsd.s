	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"io_njsd.c"
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
	.type	_NJSD_sendCMDR, %function
_NJSD_sendCMDR:
.LFB167:
	.file 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_njsd.c"
	.loc 1 135 0
	push	{r4, r5, r6, r7, lr}
.LCFI0:
.LVL0:
	.loc 1 141 0
	ldr	r6, .L26
	.loc 1 142 0
	mov	r7, #0
	.loc 1 141 0
	ldr	r5, [r6]
.LVL1:
	.loc 1 135 0
	ldr	r4, [sp, #20]
	.loc 1 142 0
	str	r7, [r6]
	.loc 1 145 0
	ldr	r7, .L26+4
	mov	r6, #128
	lsl	r6, r6, #13
	str	r6, [r7]
	.loc 1 147 0
	mov	r6, #128
	neg	r6, r6
	sub	r7, r7, #115
	strb	r6, [r7]
	.loc 1 149 0
	mov	r6, #3
	and	r6, r6, r2
	cmp	r6, #1
	bgt	.L2
.LVL2:
	.loc 1 150 0
	mov	r7, #15
	lsl	r0, r0, #2
.LVL3:
	neg	r7, r7
	orr	r7, r7, r0
	lsl	r0, r2, #1
	b	.L23
.LVL4:
.L2:
	lsl	r0, r0, #2
.LVL5:
	mov	ip, r0
	.loc 1 151 0
	cmp	r6, #2
	bne	.L4
	.loc 1 152 0
	mov	r0, #30
	mov	r7, ip
	neg	r0, r0
	orr	r0, r0, r7
	lsl	r0, r0, #24
	ldr	r7, .L26+8
	lsr	r0, r0, #24
	strb	r0, [r7]
	b	.L3
.L4:
	.loc 1 154 0
	mov	r7, #14
	neg	r7, r7
.L23:
	orr	r7, r7, r0
	lsl	r7, r7, #24
	ldr	r0, .L26+8
	lsr	r7, r7, #24
	strb	r7, [r0]
.L3:
	.loc 1 157 0
	lsl	r0, r2, #27
	lsr	r0, r0, #29
	mov	r7, #64
	lsl	r0, r0, #3
	and	r2, r2, r7
.LVL6:
	orr	r2, r2, r0
	ldr	r0, .L26+12
	strb	r2, [r0]
	.loc 1 158 0
	mov	r2, #64
	orr	r3, r3, r2
.LVL7:
	lsl	r3, r3, #24
	ldr	r2, .L26+16
	lsr	r3, r3, #24
	strb	r3, [r2]
	.loc 1 159 0
	ldr	r3, .L26+20
	lsr	r2, r4, #24
	strb	r2, [r3]
	.loc 1 160 0
	lsl	r2, r4, #8
	lsr	r2, r2, #24
	add	r3, r3, #1
	strb	r2, [r3]
	.loc 1 161 0
	lsl	r2, r4, #16
	lsr	r2, r2, #24
	add	r3, r3, #1
	.loc 1 162 0
	lsl	r4, r4, #24
.LVL8:
	.loc 1 161 0
	strb	r2, [r3]
	.loc 1 162 0
	lsr	r4, r4, #24
	add	r3, r3, #1
	strb	r4, [r3]
	.loc 1 163 0
	mov	r2, #0
	add	r3, r3, #1
	strb	r2, [r3]
	ldr	r2, .L26+24
	.loc 1 165 0
	cmp	r6, #1
	bgt	.L5
	.loc 1 166 0
	ldr	r2, [r2]
	mov	r3, #128
	lsl	r3, r3, #17
	orr	r3, r3, r2
	ldr	r2, .L26+28
.LBB60:
.LBB62:
	.loc 1 86 0
	add	r0, r0, #107
.LBE62:
.LBE60:
	.loc 1 166 0
	str	r3, [r2]
.LBB64:
.LBB61:
	.loc 1 86 0
	mov	r2, #128
.LBE61:
.LBE64:
	.loc 1 166 0
	ldr	r3, .L26+32
.LVL9:
.LBB65:
.LBB63:
	.loc 1 86 0
	lsl	r2, r2, #13
.L7:
	ldr	r4, [r0]
	tst	r4, r2
	bne	.L6
	sub	r3, r3, #1
	cmp	r3, #0
	bne	.L7
.L6:
	.loc 1 87 0
	mov	r2, #128
	ldr	r0, .L26+4
	lsl	r2, r2, #13
	str	r2, [r0]
	.loc 1 88 0
	cmp	r3, #0
	ble	.L24
.LBE63:
.LBE65:
	.loc 1 179 0
	mov	r0, #128
	ldr	r4, .L26+28
	.loc 1 180 0
	ldr	r6, .L26+36
	.loc 1 173 0
	mov	r2, #0
.LVL10:
	.loc 1 179 0
	lsl	r0, r0, #16
.L13:
	ldr	r3, [r4]
.LVL11:
	tst	r3, r0
	beq	.L10
	.loc 1 180 0
	ldr	r3, [r6]
.LVL12:
	.loc 1 181 0
	cmp	r1, #0
	beq	.L11
	.loc 1 182 0
	cmp	r2, #4
	bne	.L12
	.loc 1 184 0
	lsr	r7, r3, #8
	.loc 1 183 0
	strb	r3, [r1]
	.loc 1 184 0
	strb	r7, [r1, #1]
	.loc 1 185 0
	lsr	r7, r3, #16
	.loc 1 186 0
	lsr	r3, r3, #24
.LVL13:
	.loc 1 185 0
	strb	r7, [r1, #2]
	.loc 1 186 0
	strb	r3, [r1, #3]
	b	.L11
.LVL14:
.L12:
	.loc 1 187 0
	cmp	r2, #5
	bne	.L11
	.loc 1 188 0
	strb	r3, [r1, #4]
	.loc 1 189 0
	lsr	r3, r3, #8
.LVL15:
	strb	r3, [r1, #5]
.LVL16:
.L11:
	.loc 1 192 0
	add	r2, r2, #1
.L10:
	.loc 1 194 0
	ldr	r3, [r4]
.LVL17:
	cmp	r3, #0
	blt	.L13
	b	.L14
.LVL18:
.L5:
	.loc 1 196 0
	ldr	r2, [r2]
	ldr	r3, .L26+28
	str	r2, [r3]
.L15:
	.loc 1 197 0
	ldr	r2, [r3]
	cmp	r2, #0
	blt	.L15
.LBB66:
.LBB67:
	.loc 1 86 0
	mov	r2, #128
.LBE67:
.LBE66:
	.loc 1 197 0
	ldr	r3, .L26+32
.LVL19:
.LBB69:
.LBB68:
	.loc 1 86 0
	ldr	r1, .L26+4
.LVL20:
	lsl	r2, r2, #13
.L17:
	ldr	r0, [r1]
	tst	r0, r2
	bne	.L16
	sub	r3, r3, #1
	cmp	r3, #0
	bne	.L17
.L16:
	.loc 1 87 0
	mov	r2, #128
	ldr	r1, .L26+4
	lsl	r2, r2, #13
	str	r2, [r1]
	.loc 1 88 0
	cmp	r3, #0
	bgt	.L14
.LVL21:
.L24:
.LBE68:
.LBE69:
	.loc 1 202 0
	ldr	r3, .L26
.LVL22:
	mov	r0, #0
	str	r5, [r3]
	.loc 1 204 0
	b	.L9
.LVL23:
.L14:
	.loc 1 209 0
	ldr	r3, .L26
.LVL24:
	mov	r0, #1
	str	r5, [r3]
.L9:
	.loc 1 212 0
	@ sp needed for prologue
.LVL25:
	pop	{r4, r5, r6, r7, pc}
.L27:
	.align	2
.L26:
	.word	67109384
	.word	67109396
	.word	67109288
	.word	67109289
	.word	67109290
	.word	67109291
	.word	.LANCHOR0
	.word	67109284
	.word	1000000
	.word	68157456
.LFE167:
	.size	_NJSD_sendCMDR, .-_NJSD_sendCMDR
	.align	2
	.global	_NJSD_cmd_6byte_response
	.code	16
	.thumb_func
	.type	_NJSD_cmd_6byte_response, %function
_NJSD_cmd_6byte_response:
.LFB171:
	.loc 1 387 0
	push	{r4, lr}
.LCFI1:
.LVL26:
	sub	sp, sp, #8
.LCFI2:
	.loc 1 387 0
	mov	r4, r0
	mov	r3, r1
	.loc 1 388 0
	str	r2, [sp]
	mov	r1, r4
.LVL27:
	mov	r2, #0
.LVL28:
	mov	r0, #0
.LVL29:
	bl	_NJSD_sendCMDR
.LVL30:
	.loc 1 389 0
	add	sp, sp, #8
	@ sp needed for prologue
.LVL31:
	pop	{r4, pc}
.LFE171:
	.size	_NJSD_cmd_6byte_response, .-_NJSD_cmd_6byte_response
	.align	2
	.global	_NJSD_cmd_17byte_response
	.code	16
	.thumb_func
	.type	_NJSD_cmd_17byte_response, %function
_NJSD_cmd_17byte_response:
.LFB172:
	.loc 1 391 0
	push	{r4, lr}
.LCFI3:
.LVL32:
	sub	sp, sp, #8
.LCFI4:
	.loc 1 391 0
	mov	r4, r0
	mov	r3, r1
	.loc 1 392 0
	str	r2, [sp]
	mov	r1, r4
.LVL33:
	mov	r2, #1
.LVL34:
	mov	r0, #0
.LVL35:
	bl	_NJSD_sendCMDR
.LVL36:
	.loc 1 393 0
	add	sp, sp, #8
	@ sp needed for prologue
.LVL37:
	pop	{r4, pc}
.LFE172:
	.size	_NJSD_cmd_17byte_response, .-_NJSD_cmd_17byte_response
	.align	2
	.global	_NJSD_isInserted
	.code	16
	.thumb_func
	.type	_NJSD_isInserted, %function
_NJSD_isInserted:
.LFB174:
	.loc 1 416 0
	push	{r4, lr}
.LCFI5:
	sub	sp, sp, #16
.LCFI6:
	.loc 1 418 0
	add	r4, sp, #8
	mov	r3, #0
	str	r3, [sp]
	mov	r1, r4
	mov	r2, #0
	mov	r3, #13
	mov	r0, #0
	bl	_NJSD_sendCMDR
	ldrb	r3, [r4]
	.loc 1 425 0
	add	sp, sp, #16
	.loc 1 418 0
	sub	r3, r3, #13
	neg	r0, r3
	adc	r0, r0, r3
	.loc 1 425 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE174:
	.size	_NJSD_isInserted, .-_NJSD_isInserted
	.align	2
	.global	_NJSD_clearStatus
	.code	16
	.thumb_func
	.type	_NJSD_clearStatus, %function
_NJSD_clearStatus:
.LFB175:
	.loc 1 427 0
	push	{lr}
.LCFI7:
.LBB70:
.LBB71:
	.loc 1 110 0
	ldr	r2, .L40
	mov	r3, #128
	neg	r3, r3
	strb	r3, [r2]
.LBB72:
.LBB73:
	.loc 1 98 0
	ldr	r3, .L40+4
	mov	r2, #32
	strb	r2, [r3]
	.loc 1 99 0
	ldr	r2, .L40+8
	mov	r3, #0
	strb	r3, [r2]
	.loc 1 100 0
	add	r2, r2, #1
	strb	r3, [r2]
	.loc 1 101 0
	add	r2, r2, #1
	strb	r3, [r2]
	.loc 1 102 0
	add	r2, r2, #1
	strb	r3, [r2]
	.loc 1 103 0
	add	r2, r2, #1
	strb	r3, [r2]
	.loc 1 104 0
	add	r2, r2, #1
	strb	r3, [r2]
	.loc 1 105 0
	add	r2, r2, #1
	strb	r3, [r2]
.LBE73:
.LBE72:
	.loc 1 112 0
	ldr	r3, .L40+12
	sub	r2, r2, #11
	str	r3, [r2]
	ldr	r3, .L40+16
.LVL38:
.L36:
	.loc 1 114 0
	ldr	r1, [r2]
	cmp	r1, #0
	bge	.L35
	sub	r3, r3, #1
	cmp	r3, #0
	bne	.L36
	mov	r0, #0
	b	.L37
.L35:
	asr	r0, r3, #31
	sub	r3, r0, r3
.LVL39:
	lsr	r0, r3, #31
.LVL40:
.L37:
.LBE71:
.LBE70:
	.loc 1 429 0
	@ sp needed for prologue
	pop	{pc}
.L41:
	.align	2
.L40:
	.word	67109281
	.word	67109288
	.word	67109289
	.word	-1606393856
	.word	10000
.LFE175:
	.size	_NJSD_clearStatus, .-_NJSD_clearStatus
	.align	2
	.global	_NJSD_shutdown
	.code	16
	.thumb_func
	.type	_NJSD_shutdown, %function
_NJSD_shutdown:
.LFB176:
	.loc 1 431 0
	push	{r4, lr}
.LCFI8:
	.loc 1 432 0
	bl	_NJSD_clearStatus
	.loc 1 433 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE176:
	.size	_NJSD_shutdown, .-_NJSD_shutdown
	.align	2
	.global	_NJSD_readSectors
	.code	16
	.thumb_func
	.type	_NJSD_readSectors, %function
_NJSD_readSectors:
.LFB179:
	.loc 1 464 0
	push	{r4, r5, r6, r7, lr}
.LCFI9:
.LVL41:
	ldr	r4, .L73
	mov	r6, r1
	add	sp, sp, r4
.LCFI10:
	.loc 1 464 0
	mov	r5, r2
	.loc 1 474 0
	cmp	r1, #0
	beq	.L70
.LVL42:
	.loc 1 479 0
	ldr	r3, .L73+4
	.loc 1 480 0
	mov	r2, #0
	.loc 1 479 0
	ldr	r1, [r3]
.LVL43:
	lsl	r0, r0, #9
.LVL44:
	str	r1, [sp, #16]
	.loc 1 480 0
	str	r2, [r3]
	.loc 1 483 0
	cmp	r6, #1
	bhi	.LCB481
	b	.L47	@long jump
.LCB481:
	.loc 1 484 0
	str	r0, [sp]
	mov	r2, #2
	mov	r3, #18
	mov	r0, #2
	mov	r1, #0
	bl	_NJSD_sendCMDR
	.loc 1 486 0
	mov	r3, #3
	.loc 1 484 0
	mov	r2, #0
	.loc 1 486 0
	and	r3, r3, r5
	.loc 1 484 0
	mov	r7, r5
	str	r2, [sp, #12]
	.loc 1 486 0
	str	r3, [sp, #20]
	.loc 1 485 0
	b	.L48
.L54:
	.loc 1 486 0
	ldr	r1, [sp, #20]
	ldr	r3, .L73+8
	cmp	r1, #0
	beq	.L49
	.loc 1 487 0
	add	r4, sp, #24
	mov	r2, #128
	mov	r1, r4
	ldr	r0, .L73+12
	lsl	r2, r2, #2
	bl	cardPolledTransfer
	.loc 1 488 0
	mov	r2, #128
	mov	r0, r7
	mov	r1, r4
	lsl	r2, r2, #2
	bl	memcpy
	b	.L50
.L49:
	.loc 1 490 0
	mov	r2, #128
	ldr	r0, .L73+12
	mov	r1, r7
	lsl	r2, r2, #2
	bl	cardPolledTransfer
.L50:
.LBB74:
.LBB75:
	.loc 1 86 0
	mov	r2, #128
.LBE75:
.LBE74:
	.loc 1 490 0
	ldr	r3, .L73+16
.LVL45:
.LBB77:
.LBB76:
	.loc 1 86 0
	ldr	r1, .L73+20
	lsl	r2, r2, #13
.L52:
	ldr	r0, [r1]
	tst	r0, r2
	bne	.L51
	sub	r3, r3, #1
.LVL46:
	cmp	r3, #0
	bne	.L52
.L51:
	.loc 1 87 0
	mov	r2, #128
	ldr	r1, .L73+20
	lsl	r2, r2, #13
	str	r2, [r1]
	mov	r2, #128
	lsl	r2, r2, #2
	add	r7, r7, r2
	.loc 1 88 0
	cmp	r3, #0
	ble	.LCB554
	b	.L53	@long jump
.LCB554:
.LBE76:
.LBE77:
	.loc 1 494 0
	ldr	r3, .L73+4
.LVL47:
	ldr	r1, [sp, #16]
	str	r1, [r3]
.LVL48:
.L70:
	mov	r0, #0
.LVL49:
	.loc 1 496 0
	b	.L46
.LVL50:
.L48:
	.loc 1 485 0
	ldr	r2, [sp, #12]
	sub	r3, r6, #2
	cmp	r2, r3
	bcc	.L54
	ldr	r1, .L73+24
	.loc 1 499 0
	mov	r2, #3
	add	r7, r6, r1
	mov	r1, r5
	ldr	r3, .L73+8
	and	r1, r2
	str	r1, [sp, #12]
	beq	.L55
	.loc 1 500 0
	add	r4, sp, #24
	mov	r2, #128
	mov	r1, r4
	add	r3, r3, #8
	ldr	r0, .L73+12
	lsl	r2, r2, #2
	bl	cardPolledTransfer
	.loc 1 501 0
	lsl	r7, r7, #9
	mov	r2, #128
	add	r0, r5, r7
	mov	r1, r4
	lsl	r2, r2, #2
	bl	memcpy
	b	.L56
.L55:
	.loc 1 503 0
	lsl	r7, r7, #9
	mov	r2, #128
	add	r1, r5, r7
	add	r3, r3, #8
	ldr	r0, .L73+12
	lsl	r2, r2, #2
	bl	cardPolledTransfer
.L56:
.LBB78:
.LBB79:
	.loc 1 86 0
	mov	r2, #128
.LBE79:
.LBE78:
	.loc 1 503 0
	ldr	r3, .L73+16
.LVL51:
.LBB81:
.LBB80:
	.loc 1 86 0
	ldr	r1, .L73+20
	lsl	r2, r2, #13
.L58:
	ldr	r0, [r1]
	tst	r0, r2
	bne	.L57
	sub	r3, r3, #1
.LVL52:
	cmp	r3, #0
	bne	.L58
.L57:
	.loc 1 87 0
	mov	r2, #128
	ldr	r1, .L73+20
	lsl	r2, r2, #13
	str	r2, [r1]
	.loc 1 88 0
	cmp	r3, #0
	bgt	.L59
.LBE80:
.LBE81:
	.loc 1 507 0
	ldr	r3, .L73+4
.LVL53:
	ldr	r2, [sp, #16]
	str	r2, [r3]
	b	.L70
.LVL54:
.L62:
	.loc 1 513 0
	add	r4, sp, #24
	mov	r2, #128
	ldr	r0, .L73+12
	ldr	r3, .L73+8
.LVL55:
	mov	r1, r4
	lsl	r2, r2, #2
	bl	cardPolledTransfer
	.loc 1 514 0
	ldr	r3, .L73+28
	add	r0, r6, r3
	lsl	r0, r0, #9
	add	r0, r5, r0
	b	.L68
.LVL56:
.L72:
	.loc 1 516 0
	ldr	r2, .L73+28
	ldr	r0, .L73+12
	add	r1, r6, r2
	lsl	r1, r1, #9
	mov	r2, #128
	add	r1, r5, r1
	lsl	r2, r2, #2
	ldr	r3, .L73+8
.LVL57:
	b	.L69
.L47:
	.loc 1 519 0
	str	r0, [sp]
	mov	r3, #17
	mov	r0, #2
	mov	r1, #0
	mov	r2, #3
	bl	_NJSD_sendCMDR
	ldr	r3, .L73+8
	.loc 1 520 0
	lsl	r1, r5, #30
	beq	.L61
	.loc 1 521 0
	add	r4, sp, #24
	mov	r2, #128
	ldr	r0, .L73+12
	mov	r1, r4
	lsl	r2, r2, #2
	bl	cardPolledTransfer
	.loc 1 522 0
	mov	r0, r5
.L68:
	mov	r2, #128
	mov	r1, r4
	lsl	r2, r2, #2
	bl	memcpy
	b	.L60
.L61:
	.loc 1 524 0
	mov	r2, #128
	ldr	r0, .L73+12
	mov	r1, r5
	lsl	r2, r2, #2
.L69:
	bl	cardPolledTransfer
.L60:
	.loc 1 529 0
	ldr	r3, .L73+4
	ldr	r2, [sp, #16]
	mov	r0, #1
	str	r2, [r3]
.LVL58:
.L46:
	.loc 1 532 0
	mov	r3, #135
	lsl	r3, r3, #2
	add	sp, sp, r3
	@ sp needed for prologue
.LVL59:
.LVL60:
	pop	{r4, r5, r6, r7, pc}
.LVL61:
.L53:
	.loc 1 485 0
	ldr	r3, [sp, #12]
.LVL62:
	add	r3, r3, #1
	str	r3, [sp, #12]
	b	.L48
.LVL63:
.L59:
	.loc 1 512 0
	ldr	r1, [sp, #12]
	cmp	r1, #0
	bne	.L62
	b	.L72
.L74:
	.align	2
.L73:
	.word	-540
	.word	67109384
	.word	.LANCHOR1
	.word	-1589616640
	.word	1000000
	.word	67109396
	.word	8388606
	.word	8388607
.LFE179:
	.size	_NJSD_readSectors, .-_NJSD_readSectors
	.align	2
	.global	_NJSD_writeSectors
	.code	16
	.thumb_func
	.type	_NJSD_writeSectors, %function
_NJSD_writeSectors:
.LFB178:
	.loc 1 446 0
	push	{r4, r5, r6, r7, lr}
.LCFI11:
.LVL64:
	.loc 1 448 0
	lsl	r4, r0, #9
.LVL65:
.LBB94:
.LBB97:
	.loc 1 252 0
	mov	r0, #128
.LVL66:
.LBE97:
.LBE94:
	.loc 1 446 0
	sub	sp, sp, #100
.LCFI12:
.LBB128:
.LBB96:
	.loc 1 252 0
	lsl	r0, r0, #16
.LBE96:
.LBE128:
	.loc 1 446 0
	str	r1, [sp, #32]
	.loc 1 449 0
	str	r2, [sp, #20]
.LBB129:
.LBB126:
	.loc 1 252 0
	str	r0, [sp, #24]
.LBE126:
.LBE129:
	.loc 1 451 0
	b	.L76
.L96:
	.loc 1 452 0
	mov	r1, #128
.LVL67:
	lsl	r1, r1, #2
	add	r2, sp, #80
.LVL68:
	ldr	r0, [sp, #20]
	bl	_SD_CRC16
.LBB130:
.LBB95:
	.loc 1 221 0
	ldr	r2, .L105
	.loc 1 225 0
	ldr	r1, .L105+4
	.loc 1 221 0
	ldr	r3, [r2]
	str	r3, [sp, #16]
	.loc 1 222 0
	mov	r3, #0
	str	r3, [r2]
	.loc 1 225 0
	mov	r2, #128
	neg	r2, r2
	strb	r2, [r1]
.LBB124:
.LBB125:
	.loc 1 98 0
	add	r1, r1, #7
	strb	r2, [r1]
	.loc 1 99 0
	ldr	r2, .L105+8
	strb	r3, [r2]
	.loc 1 100 0
	add	r2, r2, #1
	strb	r3, [r2]
	.loc 1 101 0
	add	r2, r2, #1
	strb	r3, [r2]
	.loc 1 102 0
	add	r2, r2, #1
	strb	r3, [r2]
	.loc 1 103 0
	add	r2, r2, #1
	strb	r3, [r2]
	.loc 1 104 0
	add	r2, r2, #1
	strb	r3, [r2]
	.loc 1 105 0
	add	r2, r2, #1
	strb	r3, [r2]
.LBE125:
.LBE124:
	.loc 1 227 0
	ldr	r3, .L105+12
	sub	r2, r2, #11
	str	r3, [r2]
	ldr	r3, .L105+16
.LVL69:
.L78:
	.loc 1 229 0
	ldr	r1, [r2]
	cmp	r1, #0
	bge	.L77
	sub	r3, r3, #1
.LVL70:
	cmp	r3, #0
	bne	.L78
	b	.L79
.L77:
	.loc 1 230 0
	cmp	r3, #0
	bgt	.L80
.L79:
	.loc 1 232 0
	ldr	r3, .L105
.LVL71:
	ldr	r4, [sp, #16]
.LVL72:
	str	r4, [r3]
	b	.L104
.LVL73:
.L80:
	.loc 1 245 0
	add	r3, sp, #80
.LVL74:
	ldrb	r5, [r3]
	.loc 1 248 0
	ldr	r1, .L105+20
	.loc 1 245 0
	str	r5, [sp, #48]
	ldrb	r6, [r3, #1]
	str	r6, [sp, #52]
	ldrb	r7, [r3, #2]
	str	r7, [sp, #56]
	ldrb	r0, [r3, #3]
	str	r0, [sp, #60]
	ldrb	r2, [r3, #4]
	str	r2, [sp, #64]
	ldrb	r5, [r3, #5]
	mov	r2, #0
.LVL75:
	str	r5, [sp, #68]
	ldrb	r6, [r3, #6]
	str	r6, [sp, #72]
	ldrb	r3, [r3, #7]
	str	r3, [sp, #76]
	ldr	r3, [sp, #20]
.L86:
	.loc 1 239 0
	mov	r0, #128
	ldr	r7, .L105+4
	neg	r0, r0
	strb	r0, [r7]
	.loc 1 240 0
	cmp	r2, #64
	beq	.L82
	.loc 1 242 0
	ldrb	r5, [r3]
	ldrb	r7, [r3, #3]
	ldrb	r6, [r3, #1]
	mov	ip, r5
	ldrb	r5, [r3, #2]
	str	r7, [sp, #12]
	ldrb	r0, [r3, #4]
	str	r0, [sp, #28]
	ldrb	r7, [r3, #5]
	str	r7, [sp, #36]
	ldrb	r0, [r3, #6]
	str	r0, [sp, #40]
	ldrb	r7, [r3, #7]
.LBB121:
.LBB122:
	.loc 1 98 0
	mov	r0, ip
.LBE122:
.LBE121:
	.loc 1 242 0
	str	r7, [sp, #44]
.LBB120:
.LBB123:
	.loc 1 98 0
	ldr	r7, .L105+24
	strb	r0, [r7]
	.loc 1 99 0
	add	r7, r7, #1
	strb	r6, [r7]
	.loc 1 100 0
	ldr	r6, .L105+28
	.loc 1 101 0
	mov	r7, #12
	.loc 1 100 0
	strb	r5, [r6]
	.loc 1 101 0
	mov	r6, sp
	ldrb	r6, [r7, r6]
	ldr	r5, .L105+32
	.loc 1 102 0
	mov	r7, sp
	.loc 1 101 0
	strb	r6, [r5]
	.loc 1 102 0
	mov	r5, #28
	ldrb	r7, [r5, r7]
	ldr	r0, .L105+36
	.loc 1 103 0
	add	r5, sp, #36
	.loc 1 102 0
	strb	r7, [r0]
	.loc 1 103 0
	ldrb	r5, [r5]
	add	r0, r0, #1
	strb	r5, [r0]
	.loc 1 104 0
	add	r6, sp, #40
	ldrb	r6, [r6]
	add	r0, r0, #1
	strb	r6, [r0]
	.loc 1 105 0
	add	r7, sp, #44
	ldrb	r7, [r7]
	add	r0, r0, #1
	strb	r7, [r0]
	b	.L83
.L82:
.LBE123:
.LBE120:
.LBB118:
.LBB119:
	.loc 1 98 0
	add	r5, sp, #48
	ldrb	r5, [r5]
	ldr	r0, .L105+24
	.loc 1 99 0
	add	r6, sp, #52
	.loc 1 98 0
	strb	r5, [r0]
	.loc 1 99 0
	ldrb	r6, [r6]
	add	r0, r0, #1
	strb	r6, [r0]
	.loc 1 100 0
	add	r7, sp, #56
	ldrb	r7, [r7]
	add	r0, r0, #1
	strb	r7, [r0]
	.loc 1 101 0
	add	r5, sp, #60
	ldrb	r5, [r5]
	add	r0, r0, #1
	strb	r5, [r0]
	.loc 1 102 0
	add	r6, sp, #64
	ldrb	r6, [r6]
	add	r0, r0, #1
	strb	r6, [r0]
	.loc 1 103 0
	add	r7, sp, #68
	ldrb	r7, [r7]
	add	r0, r0, #1
	strb	r7, [r0]
	.loc 1 104 0
	add	r5, sp, #72
	ldrb	r5, [r5]
	add	r0, r0, #1
	strb	r5, [r0]
	.loc 1 105 0
	add	r6, sp, #76
	ldrb	r6, [r6]
	add	r0, r0, #1
	strb	r6, [r0]
.L83:
.LBE119:
.LBE118:
	.loc 1 248 0
	ldr	r7, .L105+40
	.loc 1 253 0
	ldr	r0, .L105+44
	.loc 1 248 0
	str	r7, [r1]
.L85:
	.loc 1 252 0
	ldr	r5, [r1]
	ldr	r6, [sp, #24]
	tst	r5, r6
	beq	.L84
	.loc 1 253 0
	ldr	r5, [r0]
.LVL76:
.L84:
	.loc 1 255 0
	ldr	r5, [r1]
.LVL77:
	cmp	r5, #0
	blt	.L85
	.loc 1 237 0
	add	r2, r2, #1
.LVL78:
	add	r3, r3, #8
	cmp	r2, #65
	bne	.L86
	.loc 1 258 0
	ldr	r2, .L105+4
.LVL79:
	mov	r3, #128
	neg	r3, r3
	strb	r3, [r2]
.LBB109:
.LBB113:
	.loc 1 98 0
	ldr	r7, .L105+24
	mov	r2, #11
	neg	r2, r2
	strb	r2, [r7]
	.loc 1 99 0
	ldr	r2, .L105+8
.LBE113:
.LBE109:
	.loc 1 259 0
	lsr	r6, r4, #24
.LBB108:
.LBB114:
	.loc 1 99 0
	strb	r3, [r2]
	.loc 1 100 0
	ldr	r3, .L105+28
	mov	r2, #88
	strb	r2, [r3]
.LBE114:
.LBE108:
	.loc 1 259 0
	lsl	r5, r4, #8
.LBB107:
.LBB112:
	.loc 1 101 0
	add	r3, r3, #1
	strb	r6, [r3]
.LBE112:
.LBE107:
	.loc 1 259 0
	lsr	r5, r5, #24
.LBB106:
.LBB115:
	.loc 1 102 0
	add	r3, r3, #1
.LBE115:
.LBE106:
	.loc 1 259 0
	lsl	r0, r4, #16
.LBB105:
.LBB111:
	.loc 1 102 0
	strb	r5, [r3]
.LBE111:
.LBE105:
	.loc 1 259 0
	lsr	r0, r0, #24
.LBB104:
.LBB116:
	.loc 1 103 0
	add	r3, r3, #1
.LBE116:
.LBE104:
	.loc 1 259 0
	lsl	r1, r4, #24
.LBB103:
.LBB110:
	.loc 1 103 0
	strb	r0, [r3]
.LBE110:
.LBE103:
	.loc 1 259 0
	lsr	r1, r1, #24
.LBB102:
.LBB117:
	.loc 1 104 0
	add	r3, r3, #1
	strb	r1, [r3]
	.loc 1 105 0
	mov	r2, #0
	add	r3, r3, #1
	strb	r2, [r3]
.LBE117:
.LBE102:
	.loc 1 261 0
	ldr	r2, .L105+40
	sub	r3, r3, #11
	str	r2, [r3]
.LBB99:
.LBB100:
	.loc 1 86 0
	ldr	r1, .L105+48
	mov	r2, #128
.LBE100:
.LBE99:
	.loc 1 261 0
	ldr	r3, .L105+52
.LVL80:
.LBB98:
.LBB101:
	.loc 1 86 0
	lsl	r2, r2, #13
.L88:
	ldr	r0, [r1]
	tst	r0, r2
	bne	.L87
	sub	r3, r3, #1
.LVL81:
	cmp	r3, #0
	bne	.L88
.L87:
	.loc 1 87 0
	mov	r2, #128
	ldr	r1, .L105+48
	lsl	r2, r2, #13
	str	r2, [r1]
	.loc 1 88 0
	cmp	r3, #0
	bgt	.L89
.LBE101:
.LBE98:
	.loc 1 266 0
	ldr	r3, .L105
.LVL82:
	ldr	r7, [sp, #16]
	str	r7, [r3]
.L104:
	mov	r0, #0
	b	.L81
.LVL83:
.L89:
	add	r3, sp, #88
.LVL84:
	ldrb	r6, [r3]
	ldrb	r5, [r3, #1]
	ldrb	r0, [r3, #2]
	ldrb	r1, [r3, #4]
	ldrb	r3, [r3, #5]
	.loc 1 274 0
	ldr	r7, .L105+20
	.loc 1 266 0
	str	r3, [sp, #28]
	.loc 1 275 0
	ldr	r3, .L105+44
	.loc 1 266 0
	mov	r2, #0
.LVL85:
	.loc 1 275 0
	mov	ip, r3
	str	r4, [sp, #36]
.L93:
	.loc 1 274 0
	ldr	r4, [r7]
.LVL86:
	ldr	r3, [sp, #24]
	tst	r4, r3
	beq	.L90
	.loc 1 275 0
	mov	r4, ip
	ldr	r3, [r4]
.LVL87:
	.loc 1 276 0
	cmp	r2, #2
	bne	.L91
	.loc 1 277 0
	lsl	r6, r3, #24
	.loc 1 278 0
	lsl	r5, r3, #16
	.loc 1 279 0
	lsl	r3, r3, #8
.LVL88:
	.loc 1 277 0
	lsr	r6, r6, #24
	.loc 1 278 0
	lsr	r5, r5, #24
	.loc 1 279 0
	lsr	r0, r3, #24
	b	.L92
.LVL89:
.L91:
	.loc 1 281 0
	cmp	r2, #3
	bne	.L92
	.loc 1 282 0
	lsl	r1, r3, #24
	.loc 1 283 0
	lsl	r3, r3, #16
.LVL90:
	lsr	r3, r3, #24
	.loc 1 282 0
	lsr	r1, r1, #24
	.loc 1 283 0
	str	r3, [sp, #28]
.LVL91:
.L92:
	.loc 1 285 0
	add	r2, r2, #1
.LVL92:
.L90:
	.loc 1 287 0
	ldr	r3, [r7]
.LVL93:
	cmp	r3, #0
	blt	.L93
	add	r7, sp, #88
	strb	r6, [r7]
	strb	r5, [r7, #1]
	mov	r6, #28
	mov	r5, sp
	ldrb	r5, [r6, r5]
	.loc 1 290 0
	mov	r3, #0
	.loc 1 287 0
	strb	r5, [r7, #5]
	ldr	r4, [sp, #36]
.LVL94:
	.loc 1 290 0
	ldr	r6, .L105+56
.LVL95:
	.loc 1 292 0
	ldr	r5, .L105+60
	.loc 1 287 0
	strb	r0, [r7, #2]
	strb	r1, [r7, #4]
	.loc 1 290 0
	strb	r3, [r7, #3]
.L95:
	.loc 1 292 0
	ldr	r3, [r5, #4]
	mov	r0, #0
	str	r3, [sp]
	mov	r1, r7
	mov	r2, #0
	mov	r3, #13
	.loc 1 293 0
	sub	r6, r6, #1
.LVL96:
	.loc 1 292 0
	bl	_NJSD_sendCMDR
	.loc 1 294 0
	cmp	r6, #0
	bne	.L94
	.loc 1 296 0
	ldr	r3, .L105
	ldr	r6, [sp, #16]
.LVL97:
	str	r6, [r3]
	b	.L104
.LVL98:
.L94:
	.loc 1 300 0
	ldrb	r3, [r7, #3]
	mov	r0, #31
	and	r3, r3, r0
	cmp	r3, #9
	bne	.L95
	.loc 1 304 0
	ldr	r3, .L105
	ldr	r2, [sp, #16]
.LBE95:
.LBE130:
	.loc 1 458 0
	ldr	r5, [sp, #20]
	ldr	r6, [sp, #32]
.LVL99:
.LBB131:
.LBB127:
	.loc 1 304 0
	str	r2, [r3]
.LBE127:
.LBE131:
	.loc 1 457 0
	mov	r3, #128
	lsl	r3, r3, #2
	.loc 1 458 0
	add	r5, r5, r3
	sub	r6, r6, #1
	.loc 1 457 0
	add	r4, r4, r3
	.loc 1 458 0
	str	r5, [sp, #20]
	str	r6, [sp, #32]
.LVL100:
.L76:
	.loc 1 451 0
	ldr	r7, [sp, #32]
	cmp	r7, #0
	beq	.LCB1267
	b	.L96	@long jump
.LCB1267:
	mov	r0, #1
.L81:
	.loc 1 461 0
	add	sp, sp, #100
	@ sp needed for prologue
.LVL101:
	pop	{r4, r5, r6, r7, pc}
.L106:
	.align	2
.L105:
	.word	67109384
	.word	67109281
	.word	67109289
	.word	-1606393856
	.word	100000
	.word	67109284
	.word	67109288
	.word	67109290
	.word	67109291
	.word	67109292
	.word	-1488953344
	.word	68157456
	.word	67109396
	.word	1000000
	.word	3000
	.word	.LANCHOR0
.LFE178:
	.size	_NJSD_writeSectors, .-_NJSD_writeSectors
	.align	2
	.code	16
	.thumb_func
	.type	T.92, %function
T.92:
.LFB180:
	.loc 1 348 0
	push	{r4, lr}
.LCFI13:
	.loc 1 353 0
	ldr	r1, .L120
	.loc 1 354 0
	mov	r3, #0
	.loc 1 353 0
	ldr	r2, [r1]
.LVL102:
	.loc 1 357 0
	ldr	r0, .L120+4
	.loc 1 354 0
	str	r3, [r1]
	.loc 1 357 0
	mov	r1, #128
	lsl	r1, r1, #13
	str	r1, [r0]
	.loc 1 359 0
	mov	r1, #128
	neg	r1, r1
	sub	r0, r0, #115
	strb	r1, [r0]
.LBB132:
.LBB133:
	.loc 1 98 0
	mov	r1, #16
	neg	r1, r1
	add	r0, r0, #7
	strb	r1, [r0]
	.loc 1 99 0
	ldr	r1, .L120+8
	.loc 1 100 0
	mov	r0, #64
	.loc 1 99 0
	strb	r3, [r1]
	.loc 1 100 0
	add	r1, r1, #1
	strb	r0, [r1]
	.loc 1 101 0
	add	r1, r1, #1
	strb	r3, [r1]
	.loc 1 102 0
	add	r1, r1, #1
	strb	r3, [r1]
	.loc 1 103 0
	add	r1, r1, #1
	strb	r3, [r1]
	.loc 1 104 0
	add	r1, r1, #1
	strb	r3, [r1]
	.loc 1 105 0
	add	r1, r1, #1
	strb	r3, [r1]
.LBE133:
.LBE132:
	.loc 1 363 0
	ldr	r3, .L120+12
	sub	r1, r1, #11
	ldr	r3, [r3]
	str	r3, [r1]
	ldr	r3, .L120+16
.LVL103:
.L109:
	.loc 1 365 0
	ldr	r0, [r1]
	cmp	r0, #0
	bge	.L108
	sub	r3, r3, #1
	cmp	r3, #0
	bne	.L109
	b	.L119
.L108:
	.loc 1 366 0
	cmp	r3, #0
	ble	.L119
.LBB134:
.LBB135:
	.loc 1 86 0
	mov	r1, #128
.LBE135:
.LBE134:
	.loc 1 368 0
	ldr	r3, .L120+20
.LVL104:
.LBB137:
.LBB136:
	.loc 1 86 0
	ldr	r0, .L120+4
	lsl	r1, r1, #13
.L114:
	ldr	r4, [r0]
	tst	r4, r1
	bne	.L113
	sub	r3, r3, #1
	cmp	r3, #0
	bne	.L114
.L113:
	.loc 1 87 0
	mov	r1, #128
	ldr	r0, .L120+4
	lsl	r1, r1, #13
	str	r1, [r0]
	.loc 1 88 0
	cmp	r3, #0
	bgt	.L115
.LVL105:
.L119:
.LBE136:
.LBE137:
	.loc 1 376 0
	ldr	r3, .L120
.LVL106:
	mov	r0, #0
	str	r2, [r3]
.L112:
	.loc 1 385 0
	@ sp needed for prologue
	pop	{r4, pc}
.LVL107:
.L115:
	.loc 1 382 0
	ldr	r3, .L120
.LVL108:
	mov	r0, #1
	str	r2, [r3]
	b	.L112
.L121:
	.align	2
.L120:
	.word	67109384
	.word	67109396
	.word	67109289
	.word	.LANCHOR0
	.word	100000
	.word	1000000
.LFE180:
	.size	T.92, .-T.92
	.align	2
	.code	16
	.thumb_func
	.type	T.93, %function
T.93:
.LFB181:
	.loc 1 310 0
	push	{r4, lr}
.LCFI14:
.LVL109:
	.loc 1 315 0
	ldr	r1, .L135
	.loc 1 316 0
	mov	r3, #0
	.loc 1 315 0
	ldr	r2, [r1]
.LVL110:
	.loc 1 318 0
	ldr	r4, .L135+4
	.loc 1 316 0
	str	r3, [r1]
	.loc 1 318 0
	mov	r1, #128
	lsl	r1, r1, #13
	str	r1, [r4]
.LBB138:
.LBB140:
	.loc 1 98 0
	mov	r1, #32
	neg	r1, r1
	sub	r4, r4, #108
	strb	r1, [r4]
.LBE140:
.LBE138:
	.loc 1 322 0
	sub	r0, r0, #1
.LVL111:
.LBB143:
.LBB141:
	.loc 1 99 0
	ldr	r1, .L135+8
.LBE141:
.LBE143:
	.loc 1 322 0
	lsl	r0, r0, #24
.LBB144:
.LBB139:
	.loc 1 99 0
	strb	r3, [r1]
.LBE139:
.LBE144:
	.loc 1 322 0
	lsr	r0, r0, #24
.LBB145:
.LBB142:
	.loc 1 100 0
	add	r1, r1, #1
	strb	r0, [r1]
	.loc 1 101 0
	add	r1, r1, #1
	strb	r3, [r1]
	.loc 1 102 0
	add	r1, r1, #1
	strb	r3, [r1]
	.loc 1 103 0
	add	r1, r1, #1
	strb	r3, [r1]
	.loc 1 104 0
	add	r1, r1, #1
	strb	r3, [r1]
	.loc 1 105 0
	add	r1, r1, #1
	strb	r3, [r1]
.LBE142:
.LBE145:
	.loc 1 324 0
	ldr	r3, .L135+12
	sub	r1, r1, #11
	ldr	r3, [r3]
	str	r3, [r1]
	ldr	r3, .L135+16
.LVL112:
.L124:
	.loc 1 326 0
	ldr	r0, [r1]
	cmp	r0, #0
	bge	.L123
	sub	r3, r3, #1
	cmp	r3, #0
	bne	.L124
	b	.L134
.L123:
	.loc 1 327 0
	cmp	r3, #0
	ble	.L134
.LBB146:
.LBB147:
	.loc 1 86 0
	mov	r1, #128
.LBE147:
.LBE146:
	.loc 1 329 0
	ldr	r3, .L135+20
.LVL113:
.LBB149:
.LBB148:
	.loc 1 86 0
	ldr	r0, .L135+4
	lsl	r1, r1, #13
.L129:
	ldr	r4, [r0]
	tst	r4, r1
	bne	.L128
	sub	r3, r3, #1
	cmp	r3, #0
	bne	.L129
.L128:
	.loc 1 87 0
	mov	r1, #128
	ldr	r0, .L135+4
	lsl	r1, r1, #13
	str	r1, [r0]
	.loc 1 88 0
	cmp	r3, #0
	bgt	.L130
.LVL114:
.L134:
.LBE148:
.LBE149:
	.loc 1 337 0
	ldr	r3, .L135
.LVL115:
	mov	r0, #0
	str	r2, [r3]
.L127:
	.loc 1 346 0
	@ sp needed for prologue
	pop	{r4, pc}
.LVL116:
.L130:
	.loc 1 343 0
	ldr	r3, .L135
.LVL117:
	mov	r0, #1
	str	r2, [r3]
	b	.L127
.L136:
	.align	2
.L135:
	.word	67109384
	.word	67109396
	.word	67109289
	.word	.LANCHOR0
	.word	100000
	.word	1000000
.LFE181:
	.size	T.93, .-T.93
	.align	2
	.global	_NJSD_startup
	.code	16
	.thumb_func
	.type	_NJSD_startup, %function
_NJSD_startup:
.LFB177:
	.loc 1 435 0
	push	{r4, lr}
.LCFI15:
.LBB158:
.LBB159:
	.loc 1 123 0
	ldr	r3, .L150
	ldr	r4, .L150+4
	.loc 1 125 0
	mov	r0, #128
	.loc 1 123 0
	str	r4, [r3]
	.loc 1 125 0
	ldr	r3, .L150+8
	lsl	r0, r0, #13
	str	r0, [r3]
	.loc 1 127 0
	bl	irqDisable
.LBB160:
.LBB161:
	.loc 1 110 0
	ldr	r2, .L150+12
	mov	r3, #128
	neg	r3, r3
	strb	r3, [r2]
.LBB162:
.LBB163:
	.loc 1 98 0
	ldr	r3, .L150+16
	mov	r2, #32
	strb	r2, [r3]
	.loc 1 99 0
	ldr	r2, .L150+20
	mov	r3, #0
	strb	r3, [r2]
	.loc 1 100 0
	add	r2, r2, #1
	strb	r3, [r2]
	.loc 1 101 0
	add	r2, r2, #1
	strb	r3, [r2]
	.loc 1 102 0
	add	r2, r2, #1
	strb	r3, [r2]
	.loc 1 103 0
	add	r2, r2, #1
	strb	r3, [r2]
	.loc 1 104 0
	add	r2, r2, #1
	strb	r3, [r2]
	.loc 1 105 0
	add	r2, r2, #1
	strb	r3, [r2]
.LBE163:
.LBE162:
	.loc 1 112 0
	sub	r2, r2, #11
	ldr	r3, .L150+24
.LVL118:
	str	r4, [r2]
.L139:
	.loc 1 114 0
	ldr	r1, [r2]
	cmp	r1, #0
	bge	.L138
	sub	r3, r3, #1
	cmp	r3, #0
	bne	.L139
	b	.L140
.L138:
	.loc 1 115 0
	cmp	r3, #0
	bgt	.L146
	b	.L140
.LVL119:
.L149:
.LBE161:
.LBE160:
.LBE159:
.LBE158:
.LBB164:
.LBB165:
	.loc 1 400 0
	bl	T.92
	cmp	r0, #0
	beq	.L140
	.loc 1 403 0
	mov	r0, #8
	bl	T.93
	.loc 1 405 0
	mov	r0, #128
	lsl	r0, r0, #1
	bl	T.93
	.loc 1 406 0
	bl	T.92
	.loc 1 407 0
	mov	r0, #8
	bl	T.93
	.loc 1 409 0
	ldr	r3, .L150
	ldr	r0, .L150+28
	add	r3, r3, #4
	ldr	r1, .L150+32
	mov	r2, #1
	bl	_SD_InitCard
	sub	r3, r0, #1
	sbc	r0, r0, r3
	b	.L142
.LVL120:
.L140:
	mov	r0, #0
.L142:
.LBE165:
.LBE164:
	.loc 1 443 0
	@ sp needed for prologue
	pop	{r4, pc}
.L146:
.LBB167:
.LBB166:
	.loc 1 397 0
	mov	r0, #128
	lsl	r0, r0, #1
	bl	T.93
.LVL121:
	cmp	r0, #0
	beq	.L140
	b	.L149
.L151:
	.align	2
.L150:
	.word	.LANCHOR0
	.word	-1606393856
	.word	67109396
	.word	67109281
	.word	67109288
	.word	67109289
	.word	10000
	.word	_NJSD_cmd_6byte_response
	.word	_NJSD_cmd_17byte_response
.LBE166:
.LBE167:
.LFE177:
	.size	_NJSD_startup, .-_NJSD_startup
	.global	_io_njsd
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_NJSD_read_cmd, %object
	.size	_NJSD_read_cmd, 8
_NJSD_read_cmd:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	64
	.type	_NJSD_read_end_cmd, %object
	.size	_NJSD_read_end_cmd, 8
_NJSD_read_end_cmd:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	76
	.byte	0
	.byte	65
	.type	_io_njsd, %object
	.size	_io_njsd, 32
_io_njsd:
	.word	1146309198
	.word	35
	.word	_NJSD_startup
	.word	_NJSD_isInserted
	.word	_NJSD_readSectors
	.word	_NJSD_writeSectors
	.word	_NJSD_clearStatus
	.word	_NJSD_shutdown
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_NJSD_cardFlags, %object
	.size	_NJSD_cardFlags, 4
_NJSD_cardFlags:
	.space	4
	.type	_NJSD_relativeCardAddress, %object
	.size	_NJSD_relativeCardAddress, 4
_NJSD_relativeCardAddress:
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
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.byte	0x4
	.4byte	.LCFI0-.LFB167
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
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.byte	0x4
	.4byte	.LCFI1-.LFB171
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
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
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.byte	0x4
	.4byte	.LCFI5-.LFB174
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.byte	0x4
	.4byte	.LCFI7-.LFB175
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
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.byte	0x4
	.4byte	.LCFI8-.LFB176
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
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.byte	0x4
	.4byte	.LCFI9-.LFB179
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
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x230
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.byte	0x4
	.4byte	.LCFI11-.LFB178
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
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x78
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.byte	0x4
	.4byte	.LCFI13-.LFB180
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
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.byte	0x4
	.4byte	.LCFI14-.LFB181
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
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.byte	0x4
	.4byte	.LCFI15-.LFB177
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE20:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB167-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE167-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE167-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE167-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE167-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB171-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB172-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB174-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB175-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE175-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE175-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB176-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE176-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LFB179-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE179-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 560
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL61-.Ltext0
	.4byte	.LFE179-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61-.Ltext0
	.4byte	.LFE179-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63-.Ltext0
	.4byte	.LFE179-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LFB178-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE178-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 120
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE178-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE178-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LFB180-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE180-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LFB181-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE181-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LFB177-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE177-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/disc_io.h"
	.file 5 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 6 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 7 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 8 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 9 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.file 10 "C:/devkitPro/libnds/include/nds/interrupts.h"
	.section	.debug_info
	.4byte	0xe95
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0x1
	.4byte	.LASF150
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
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.4byte	0x5e
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x50
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x48
	.4byte	0x65
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
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
	.4byte	0x65
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x3
	.byte	0x69
	.4byte	0x53
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0x7d
	.4byte	0xde
	.uleb128 0x7
	.4byte	.LASF14
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF15
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x7d
	.4byte	0xc9
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3d
	.4byte	0xf4
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfa
	.uleb128 0x9
	.byte	0x1
	.4byte	0xde
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x3e
	.4byte	0xf4
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3f
	.4byte	0x116
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11c
	.uleb128 0xa
	.byte	0x1
	.4byte	0xde
	.4byte	0x136
	.uleb128 0xb
	.4byte	0xb3
	.uleb128 0xb
	.4byte	0xb3
	.uleb128 0xb
	.4byte	0x136
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x40
	.4byte	0x143
	.uleb128 0x8
	.byte	0x4
	.4byte	0x149
	.uleb128 0xa
	.byte	0x1
	.4byte	0xde
	.4byte	0x163
	.uleb128 0xb
	.4byte	0xb3
	.uleb128 0xb
	.4byte	0xb3
	.uleb128 0xb
	.4byte	0x163
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x169
	.uleb128 0xd
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x41
	.4byte	0xf4
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x42
	.4byte	0xf4
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x20
	.byte	0x4
	.byte	0x44
	.4byte	0x1fd
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x4
	.byte	0x45
	.4byte	0x1fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x4
	.byte	0x46
	.4byte	0x1fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x4
	.byte	0x47
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x4
	.byte	0x48
	.4byte	0x100
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x4
	.byte	0x49
	.4byte	0x10b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x4
	.byte	0x4a
	.4byte	0x138
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x4
	.byte	0x4b
	.4byte	0x16a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x4
	.byte	0x4c
	.4byte	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF31
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x4
	.byte	0x4f
	.4byte	0x180
	.uleb128 0x10
	.4byte	.LASF151
	.byte	0x4
	.byte	0xa
	.byte	0x2e
	.4byte	0x2cc
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 16
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 32
	.uleb128 0x7
	.4byte	.LASF39
	.sleb128 64
	.uleb128 0x7
	.4byte	.LASF40
	.sleb128 128
	.uleb128 0x7
	.4byte	.LASF41
	.sleb128 256
	.uleb128 0x7
	.4byte	.LASF42
	.sleb128 512
	.uleb128 0x7
	.4byte	.LASF43
	.sleb128 1024
	.uleb128 0x7
	.4byte	.LASF44
	.sleb128 2048
	.uleb128 0x7
	.4byte	.LASF45
	.sleb128 4096
	.uleb128 0x7
	.4byte	.LASF46
	.sleb128 8192
	.uleb128 0x7
	.4byte	.LASF47
	.sleb128 65536
	.uleb128 0x7
	.4byte	.LASF48
	.sleb128 131072
	.uleb128 0x7
	.4byte	.LASF49
	.sleb128 262144
	.uleb128 0x7
	.4byte	.LASF50
	.sleb128 524288
	.uleb128 0x7
	.4byte	.LASF51
	.sleb128 1048576
	.uleb128 0x7
	.4byte	.LASF52
	.sleb128 2097152
	.uleb128 0x7
	.4byte	.LASF53
	.sleb128 4194304
	.uleb128 0x7
	.4byte	.LASF54
	.sleb128 8388608
	.uleb128 0x7
	.4byte	.LASF55
	.sleb128 16777216
	.uleb128 0x7
	.4byte	.LASF56
	.sleb128 -1
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF57
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF58
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x28
	.byte	0x5
	.2byte	0x18c
	.4byte	0x381
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x18d
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x18e
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x18f
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x190
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x191
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x192
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x193
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x194
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x195
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x196
	.4byte	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x198
	.4byte	0x2dd
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x8
	.byte	0x6
	.byte	0x29
	.4byte	0x3b6
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x6
	.byte	0x2a
	.4byte	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x6
	.byte	0x2b
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x136
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x6
	.byte	0x2c
	.4byte	0x38d
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x9c
	.4byte	0x3e8
	.uleb128 0x7
	.4byte	.LASF74
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF75
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF76
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF77
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x7
	.byte	0xa1
	.4byte	0x3c7
	.uleb128 0x15
	.4byte	.LASF79
	.2byte	0x2020
	.byte	0x7
	.2byte	0x11a
	.4byte	0x47f
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x11b
	.4byte	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x11e
	.4byte	0x85
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x121
	.4byte	0x47f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x122
	.4byte	0x3bc
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x123
	.4byte	0x85
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x124
	.4byte	0x490
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x125
	.4byte	0x85
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x126
	.4byte	0x5e
	.byte	0x3
	.byte	0x23
	.uleb128 0x201c
	.byte	0x0
	.uleb128 0x16
	.4byte	0x85
	.4byte	0x490
	.uleb128 0x17
	.4byte	0x2cc
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x85
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x128
	.4byte	0x3f3
	.uleb128 0x18
	.4byte	0x5e
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9e
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x59
	.4byte	0x4ce
	.uleb128 0x7
	.4byte	.LASF88
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF89
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF90
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF91
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x62
	.4byte	0x4ef
	.uleb128 0x7
	.4byte	.LASF92
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF93
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF94
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF95
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x6a
	.4byte	0x510
	.uleb128 0x7
	.4byte	.LASF96
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF97
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF98
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF99
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x72
	.4byte	0x525
	.uleb128 0x7
	.4byte	.LASF100
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF101
	.sleb128 1
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF152
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x3
	.4byte	0x58b
	.uleb128 0x1a
	.4byte	.LASF102
	.byte	0x1
	.byte	0x60
	.4byte	0x9e
	.uleb128 0x1a
	.4byte	.LASF103
	.byte	0x1
	.byte	0x60
	.4byte	0x9e
	.uleb128 0x1a
	.4byte	.LASF104
	.byte	0x1
	.byte	0x60
	.4byte	0x9e
	.uleb128 0x1a
	.4byte	.LASF105
	.byte	0x1
	.byte	0x60
	.4byte	0x9e
	.uleb128 0x1a
	.4byte	.LASF106
	.byte	0x1
	.byte	0x60
	.4byte	0x9e
	.uleb128 0x1a
	.4byte	.LASF107
	.byte	0x1
	.byte	0x60
	.4byte	0x9e
	.uleb128 0x1a
	.4byte	.LASF108
	.byte	0x1
	.byte	0x60
	.4byte	0x9e
	.uleb128 0x1a
	.4byte	.LASF109
	.byte	0x1
	.byte	0x60
	.4byte	0x9e
	.byte	0x0
	.uleb128 0x1b
	.4byte	.LASF110
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	0xde
	.byte	0x3
	.4byte	0x5a6
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x1
	.byte	0x55
	.4byte	0x5e
	.byte	0x0
	.uleb128 0x1b
	.4byte	.LASF111
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.4byte	0xde
	.byte	0x1
	.4byte	0x5c1
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x1
	.byte	0x6d
	.4byte	0x5e
	.byte	0x0
	.uleb128 0x1b
	.4byte	.LASF112
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.4byte	0xde
	.byte	0x1
	.4byte	0x5de
	.uleb128 0x1a
	.4byte	.LASF113
	.byte	0x1
	.byte	0x7a
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x15c
	.byte	0x1
	.4byte	0xde
	.byte	0x1
	.4byte	0x62b
	.uleb128 0x1e
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x15c
	.4byte	0x5e
	.uleb128 0x1f
	.ascii	"cmd\000"
	.byte	0x1
	.2byte	0x15c
	.4byte	0x9e
	.uleb128 0x1e
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x15c
	.4byte	0xb3
	.uleb128 0x20
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x15d
	.4byte	0x5e
	.uleb128 0x21
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x160
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x136
	.byte	0x1
	.4byte	0xde
	.byte	0x1
	.4byte	0x66c
	.uleb128 0x1e
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x136
	.4byte	0x5e
	.uleb128 0x1e
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x136
	.4byte	0x5e
	.uleb128 0x20
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x137
	.4byte	0x5e
	.uleb128 0x21
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x13a
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x22
	.4byte	.LASF153
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.4byte	0xde
	.4byte	.LFB167
	.4byte	.LFE167
	.4byte	.LLST0
	.4byte	0x741
	.uleb128 0x23
	.4byte	.LASF115
	.byte	0x1
	.byte	0x87
	.4byte	0x5e
	.4byte	.LLST1
	.uleb128 0x23
	.4byte	.LASF120
	.byte	0x1
	.byte	0x87
	.4byte	0x4a7
	.4byte	.LLST2
	.uleb128 0x23
	.4byte	.LASF69
	.byte	0x1
	.byte	0x87
	.4byte	0x5e
	.4byte	.LLST3
	.uleb128 0x24
	.ascii	"cmd\000"
	.byte	0x1
	.byte	0x87
	.4byte	0x9e
	.4byte	.LLST4
	.uleb128 0x23
	.4byte	.LASF116
	.byte	0x1
	.byte	0x87
	.4byte	0xb3
	.4byte	.LLST5
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x1
	.byte	0x88
	.4byte	0x5e
	.4byte	.LLST6
	.uleb128 0x26
	.4byte	.LASF72
	.byte	0x1
	.byte	0x89
	.4byte	0xb3
	.4byte	.LLST7
	.uleb128 0x26
	.4byte	.LASF117
	.byte	0x1
	.byte	0x8c
	.4byte	0xb3
	.4byte	.LLST8
	.uleb128 0x27
	.4byte	0x58b
	.4byte	.LBB60
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0xa9
	.4byte	0x721
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x29
	.4byte	0x59c
	.4byte	.LLST9
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.4byte	0x58b
	.4byte	.LBB66
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0xc8
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x58
	.uleb128 0x29
	.4byte	0x59c
	.4byte	.LLST10
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x183
	.byte	0x1
	.4byte	0xde
	.4byte	.LFB171
	.4byte	.LFE171
	.4byte	.LLST11
	.4byte	0x790
	.uleb128 0x2c
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x183
	.4byte	0x4a7
	.4byte	.LLST12
	.uleb128 0x2c
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x183
	.4byte	0x9e
	.4byte	.LLST13
	.uleb128 0x2c
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x183
	.4byte	0xb3
	.4byte	.LLST14
	.byte	0x0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x187
	.byte	0x1
	.4byte	0xde
	.4byte	.LFB172
	.4byte	.LFE172
	.4byte	.LLST15
	.4byte	0x7df
	.uleb128 0x2c
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x187
	.4byte	0x4a7
	.4byte	.LLST16
	.uleb128 0x2c
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x187
	.4byte	0x9e
	.4byte	.LLST17
	.uleb128 0x2c
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x187
	.4byte	0xb3
	.4byte	.LLST18
	.byte	0x0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x1a0
	.byte	0x1
	.4byte	0xde
	.4byte	.LFB174
	.4byte	.LFE174
	.4byte	.LLST19
	.4byte	0x80d
	.uleb128 0x2d
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x80d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x16
	.4byte	0x9e
	.4byte	0x81d
	.uleb128 0x2e
	.4byte	0x2cc
	.byte	0x7
	.byte	0x0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x1ab
	.byte	0x1
	.4byte	0xde
	.4byte	.LFB175
	.4byte	.LFE175
	.4byte	.LLST20
	.4byte	0x898
	.uleb128 0x2f
	.4byte	0x5a6
	.4byte	.LBB70
	.4byte	.LBE70
	.byte	0x1
	.2byte	0x1ac
	.uleb128 0x30
	.4byte	.LBB71
	.4byte	.LBE71
	.uleb128 0x29
	.4byte	0x5b7
	.4byte	.LLST21
	.uleb128 0x31
	.4byte	0x525
	.4byte	.LBB72
	.4byte	.LBE72
	.byte	0x1
	.byte	0x6f
	.uleb128 0x32
	.4byte	0x57f
	.uleb128 0x32
	.4byte	0x574
	.uleb128 0x32
	.4byte	0x569
	.uleb128 0x32
	.4byte	0x55e
	.uleb128 0x32
	.4byte	0x553
	.uleb128 0x32
	.4byte	0x548
	.uleb128 0x32
	.4byte	0x53d
	.uleb128 0x32
	.4byte	0x532
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x1af
	.byte	0x1
	.4byte	0xde
	.4byte	.LFB176
	.4byte	.LFE176
	.4byte	.LLST22
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x1d0
	.byte	0x1
	.4byte	0xde
	.4byte	.LFB179
	.4byte	.LFE179
	.4byte	.LLST23
	.4byte	0x97d
	.uleb128 0x2c
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x1d0
	.4byte	0xb3
	.4byte	.LLST24
	.uleb128 0x2c
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x1d0
	.4byte	0xb3
	.4byte	.LLST25
	.uleb128 0x2c
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x136
	.4byte	.LLST26
	.uleb128 0x34
	.ascii	"tmp\000"
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x97d
	.byte	0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x34
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x5e
	.byte	0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2d
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1d5
	.4byte	0xb3
	.byte	0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x21
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x4a7
	.uleb128 0x35
	.4byte	0x58b
	.4byte	.LBB74
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x95c
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x88
	.uleb128 0x29
	.4byte	0x59c
	.4byte	.LLST27
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.4byte	0x58b
	.4byte	.LBB78
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x1f9
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0xb8
	.uleb128 0x29
	.4byte	0x59c
	.4byte	.LLST28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.4byte	0xb3
	.4byte	0x98d
	.uleb128 0x2e
	.4byte	0x2cc
	.byte	0x7f
	.byte	0x0
	.uleb128 0x1b
	.4byte	.LASF132
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.4byte	0xde
	.byte	0x1
	.4byte	0x9ea
	.uleb128 0x1a
	.4byte	.LASF130
	.byte	0x1
	.byte	0xd6
	.4byte	0x4a7
	.uleb128 0x1a
	.4byte	.LASF133
	.byte	0x1
	.byte	0xd6
	.4byte	0x4a7
	.uleb128 0x1a
	.4byte	.LASF134
	.byte	0x1
	.byte	0xd6
	.4byte	0xb3
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x1
	.byte	0xd7
	.4byte	0x5e
	.uleb128 0x37
	.4byte	.LASF121
	.byte	0x1
	.byte	0xd8
	.4byte	0x9ea
	.uleb128 0x37
	.4byte	.LASF72
	.byte	0x1
	.byte	0xd9
	.4byte	0xb3
	.uleb128 0x37
	.4byte	.LASF117
	.byte	0x1
	.byte	0xdc
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x16
	.4byte	0x9e
	.4byte	0x9fa
	.uleb128 0x2e
	.4byte	0x2cc
	.byte	0x5
	.byte	0x0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x1be
	.byte	0x1
	.4byte	0xde
	.4byte	.LFB178
	.4byte	.LFE178
	.4byte	.LLST29
	.4byte	0xbd0
	.uleb128 0x2c
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x1be
	.4byte	0xb3
	.4byte	.LLST30
	.uleb128 0x2c
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x1be
	.4byte	0xb3
	.4byte	.LLST31
	.uleb128 0x2c
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x1be
	.4byte	0x163
	.4byte	.LLST32
	.uleb128 0x34
	.ascii	"crc\000"
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x80d
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x1c0
	.4byte	0xb3
	.4byte	.LLST33
	.uleb128 0x2d
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x4a7
	.byte	0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x36
	.4byte	0x98d
	.4byte	.LBB94
	.4byte	.Ldebug_ranges0+0xd0
	.byte	0x1
	.2byte	0x1c6
	.uleb128 0x32
	.4byte	0x9b4
	.uleb128 0x32
	.4byte	0x9a9
	.uleb128 0x32
	.4byte	0x99e
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x100
	.uleb128 0x29
	.4byte	0x9bf
	.4byte	.LLST34
	.uleb128 0x39
	.4byte	0x9c8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.4byte	0x9d3
	.4byte	.LLST35
	.uleb128 0x39
	.4byte	0x9de
	.byte	0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x35
	.4byte	0x58b
	.4byte	.LBB99
	.4byte	.Ldebug_ranges0+0x130
	.byte	0x1
	.2byte	0x108
	.4byte	0xae0
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x148
	.uleb128 0x29
	.4byte	0x59c
	.4byte	.LLST36
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.4byte	0x525
	.4byte	.LBB109
	.4byte	.Ldebug_ranges0+0x160
	.byte	0x1
	.2byte	0x103
	.4byte	0xb1d
	.uleb128 0x32
	.4byte	0x57f
	.uleb128 0x32
	.4byte	0x574
	.uleb128 0x32
	.4byte	0x569
	.uleb128 0x32
	.4byte	0x55e
	.uleb128 0x32
	.4byte	0x553
	.uleb128 0x32
	.4byte	0x548
	.uleb128 0x32
	.4byte	0x53d
	.uleb128 0x32
	.4byte	0x532
	.byte	0x0
	.uleb128 0x3a
	.4byte	0x525
	.4byte	.LBB118
	.4byte	.LBE118
	.byte	0x1
	.byte	0xf5
	.4byte	0xb59
	.uleb128 0x32
	.4byte	0x57f
	.uleb128 0x32
	.4byte	0x574
	.uleb128 0x32
	.4byte	0x569
	.uleb128 0x32
	.4byte	0x55e
	.uleb128 0x32
	.4byte	0x553
	.uleb128 0x32
	.4byte	0x548
	.uleb128 0x32
	.4byte	0x53d
	.uleb128 0x32
	.4byte	0x532
	.byte	0x0
	.uleb128 0x27
	.4byte	0x525
	.4byte	.LBB121
	.4byte	.Ldebug_ranges0+0x1a8
	.byte	0x1
	.byte	0xf2
	.4byte	0xb95
	.uleb128 0x32
	.4byte	0x57f
	.uleb128 0x32
	.4byte	0x574
	.uleb128 0x32
	.4byte	0x569
	.uleb128 0x32
	.4byte	0x55e
	.uleb128 0x32
	.4byte	0x553
	.uleb128 0x32
	.4byte	0x548
	.uleb128 0x32
	.4byte	0x53d
	.uleb128 0x32
	.4byte	0x532
	.byte	0x0
	.uleb128 0x31
	.4byte	0x525
	.4byte	.LBB124
	.4byte	.LBE124
	.byte	0x1
	.byte	0xe2
	.uleb128 0x32
	.4byte	0x57f
	.uleb128 0x32
	.4byte	0x574
	.uleb128 0x32
	.4byte	0x569
	.uleb128 0x32
	.4byte	0x55e
	.uleb128 0x32
	.4byte	0x553
	.uleb128 0x32
	.4byte	0x548
	.uleb128 0x32
	.4byte	0x53d
	.uleb128 0x32
	.4byte	0x532
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.4byte	0x5de
	.4byte	.LFB180
	.4byte	.LFE180
	.4byte	.LLST37
	.4byte	0xc62
	.uleb128 0x29
	.4byte	0x614
	.4byte	.LLST38
	.uleb128 0x39
	.4byte	0x61e
	.byte	0x1
	.byte	0x52
	.uleb128 0x32
	.4byte	0x608
	.uleb128 0x32
	.4byte	0x5fc
	.uleb128 0x32
	.4byte	0x5f0
	.uleb128 0x3c
	.4byte	0x525
	.4byte	.LBB132
	.4byte	.LBE132
	.byte	0x1
	.2byte	0x168
	.4byte	0xc41
	.uleb128 0x32
	.4byte	0x57f
	.uleb128 0x32
	.4byte	0x574
	.uleb128 0x32
	.4byte	0x569
	.uleb128 0x32
	.4byte	0x55e
	.uleb128 0x32
	.4byte	0x553
	.uleb128 0x32
	.4byte	0x548
	.uleb128 0x32
	.4byte	0x53d
	.uleb128 0x32
	.4byte	0x532
	.byte	0x0
	.uleb128 0x36
	.4byte	0x58b
	.4byte	.LBB134
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.2byte	0x176
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x1d8
	.uleb128 0x29
	.4byte	0x59c
	.4byte	.LLST39
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.4byte	0x62b
	.4byte	.LFB181
	.4byte	.LFE181
	.4byte	.LLST40
	.4byte	0xcf3
	.uleb128 0x3d
	.4byte	0x649
	.4byte	.LLST41
	.uleb128 0x29
	.4byte	0x655
	.4byte	.LLST42
	.uleb128 0x39
	.4byte	0x65f
	.byte	0x1
	.byte	0x52
	.uleb128 0x32
	.4byte	0x63d
	.uleb128 0x35
	.4byte	0x525
	.4byte	.LBB138
	.4byte	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.2byte	0x142
	.4byte	0xcd2
	.uleb128 0x32
	.4byte	0x57f
	.uleb128 0x32
	.4byte	0x574
	.uleb128 0x32
	.4byte	0x569
	.uleb128 0x32
	.4byte	0x55e
	.uleb128 0x32
	.4byte	0x553
	.uleb128 0x32
	.4byte	0x548
	.uleb128 0x32
	.4byte	0x53d
	.uleb128 0x32
	.4byte	0x532
	.byte	0x0
	.uleb128 0x36
	.4byte	0x58b
	.4byte	.LBB146
	.4byte	.Ldebug_ranges0+0x218
	.byte	0x1
	.2byte	0x14f
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x230
	.uleb128 0x29
	.4byte	0x59c
	.4byte	.LLST43
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x18b
	.byte	0x1
	.4byte	0xde
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x1b3
	.byte	0x1
	.4byte	0xde
	.4byte	.LFB177
	.4byte	.LFE177
	.4byte	.LLST44
	.4byte	0xda5
	.uleb128 0x3c
	.4byte	0x5c1
	.4byte	.LBB158
	.4byte	.LBE158
	.byte	0x1
	.2byte	0x1b4
	.4byte	0xd94
	.uleb128 0x32
	.4byte	0x5d2
	.uleb128 0x31
	.4byte	0x5a6
	.4byte	.LBB160
	.4byte	.LBE160
	.byte	0x1
	.byte	0x81
	.uleb128 0x30
	.4byte	.LBB161
	.4byte	.LBE161
	.uleb128 0x29
	.4byte	0x5b7
	.4byte	.LLST45
	.uleb128 0x31
	.4byte	0x525
	.4byte	.LBB162
	.4byte	.LBE162
	.byte	0x1
	.byte	0x6f
	.uleb128 0x32
	.4byte	0x57f
	.uleb128 0x32
	.4byte	0x574
	.uleb128 0x32
	.4byte	0x569
	.uleb128 0x32
	.4byte	0x55e
	.uleb128 0x32
	.4byte	0x553
	.uleb128 0x32
	.4byte	0x548
	.uleb128 0x32
	.4byte	0x53d
	.uleb128 0x32
	.4byte	0x532
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.4byte	0xcf3
	.4byte	.LBB164
	.4byte	.Ldebug_ranges0+0x248
	.byte	0x1
	.2byte	0x1b7
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF137
	.byte	0x7
	.2byte	0x12e
	.4byte	0xdb1
	.uleb128 0x8
	.byte	0x4
	.4byte	0x496
	.uleb128 0x40
	.4byte	.LASF138
	.byte	0x1
	.byte	0x4b
	.4byte	0xdc8
	.byte	0x5
	.byte	0x3
	.4byte	_NJSD_read_cmd
	.uleb128 0x18
	.4byte	0x80d
	.uleb128 0x40
	.4byte	.LASF139
	.byte	0x1
	.byte	0x4c
	.4byte	0xdde
	.byte	0x5
	.byte	0x3
	.4byte	_NJSD_read_end_cmd
	.uleb128 0x18
	.4byte	0x80d
	.uleb128 0x41
	.4byte	.LASF140
	.byte	0x1
	.byte	0x4e
	.4byte	0x4a2
	.byte	0x2
	.uleb128 0x40
	.4byte	.LASF141
	.byte	0x1
	.byte	0x50
	.4byte	0xb3
	.byte	0x5
	.byte	0x3
	.4byte	_NJSD_cardFlags
	.uleb128 0x40
	.4byte	.LASF142
	.byte	0x1
	.byte	0x52
	.4byte	0xb3
	.byte	0x5
	.byte	0x3
	.4byte	_NJSD_relativeCardAddress
	.uleb128 0x42
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x248
	.4byte	0xe24
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_io_njsd
	.uleb128 0x18
	.4byte	0x204
	.uleb128 0x43
	.4byte	.LASF144
	.byte	0x9
	.byte	0x56
	.4byte	0xa8
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF145
	.byte	0x9
	.byte	0x57
	.4byte	0xa8
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0xe53
	.4byte	0xe53
	.uleb128 0x2e
	.4byte	0x2cc
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe59
	.uleb128 0x44
	.4byte	0x4c
	.uleb128 0x45
	.4byte	.LASF146
	.byte	0x5
	.2byte	0x19c
	.4byte	0xe43
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x381
	.4byte	0xe7c
	.uleb128 0x2e
	.4byte	0x2cc
	.byte	0x7
	.byte	0x0
	.uleb128 0x45
	.4byte	.LASF147
	.byte	0x5
	.2byte	0x19f
	.4byte	0xe6c
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.4byte	.LASF148
	.byte	0x7
	.2byte	0x12b
	.4byte	0x496
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
	.uleb128 0x11
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x34
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x3c
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0x1d
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x44
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
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
	.4byte	0xd3
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xe99
	.4byte	0x741
	.ascii	"_NJSD_cmd_6byte_response\000"
	.4byte	0x790
	.ascii	"_NJSD_cmd_17byte_response\000"
	.4byte	0x7df
	.ascii	"_NJSD_isInserted\000"
	.4byte	0x81d
	.ascii	"_NJSD_clearStatus\000"
	.4byte	0x898
	.ascii	"_NJSD_shutdown\000"
	.4byte	0x8b2
	.ascii	"_NJSD_readSectors\000"
	.4byte	0x9fa
	.ascii	"_NJSD_writeSectors\000"
	.4byte	0xd01
	.ascii	"_NJSD_startup\000"
	.4byte	0xe11
	.ascii	"_io_njsd\000"
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
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	.LBB65-.Ltext0
	.4byte	.LBE65-.Ltext0
	.4byte	.LBB64-.Ltext0
	.4byte	.LBE64-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB62-.Ltext0
	.4byte	.LBE62-.Ltext0
	.4byte	.LBB63-.Ltext0
	.4byte	.LBE63-.Ltext0
	.4byte	.LBB61-.Ltext0
	.4byte	.LBE61-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB66-.Ltext0
	.4byte	.LBE66-.Ltext0
	.4byte	.LBB69-.Ltext0
	.4byte	.LBE69-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB67-.Ltext0
	.4byte	.LBE67-.Ltext0
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB74-.Ltext0
	.4byte	.LBE74-.Ltext0
	.4byte	.LBB77-.Ltext0
	.4byte	.LBE77-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB78-.Ltext0
	.4byte	.LBE78-.Ltext0
	.4byte	.LBB81-.Ltext0
	.4byte	.LBE81-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB79-.Ltext0
	.4byte	.LBE79-.Ltext0
	.4byte	.LBB80-.Ltext0
	.4byte	.LBE80-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB94-.Ltext0
	.4byte	.LBE94-.Ltext0
	.4byte	.LBB131-.Ltext0
	.4byte	.LBE131-.Ltext0
	.4byte	.LBB130-.Ltext0
	.4byte	.LBE130-.Ltext0
	.4byte	.LBB129-.Ltext0
	.4byte	.LBE129-.Ltext0
	.4byte	.LBB128-.Ltext0
	.4byte	.LBE128-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB97-.Ltext0
	.4byte	.LBE97-.Ltext0
	.4byte	.LBB127-.Ltext0
	.4byte	.LBE127-.Ltext0
	.4byte	.LBB95-.Ltext0
	.4byte	.LBE95-.Ltext0
	.4byte	.LBB126-.Ltext0
	.4byte	.LBE126-.Ltext0
	.4byte	.LBB96-.Ltext0
	.4byte	.LBE96-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB99-.Ltext0
	.4byte	.LBE99-.Ltext0
	.4byte	.LBB98-.Ltext0
	.4byte	.LBE98-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB100-.Ltext0
	.4byte	.LBE100-.Ltext0
	.4byte	.LBB101-.Ltext0
	.4byte	.LBE101-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB109-.Ltext0
	.4byte	.LBE109-.Ltext0
	.4byte	.LBB102-.Ltext0
	.4byte	.LBE102-.Ltext0
	.4byte	.LBB103-.Ltext0
	.4byte	.LBE103-.Ltext0
	.4byte	.LBB104-.Ltext0
	.4byte	.LBE104-.Ltext0
	.4byte	.LBB105-.Ltext0
	.4byte	.LBE105-.Ltext0
	.4byte	.LBB106-.Ltext0
	.4byte	.LBE106-.Ltext0
	.4byte	.LBB107-.Ltext0
	.4byte	.LBE107-.Ltext0
	.4byte	.LBB108-.Ltext0
	.4byte	.LBE108-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB121-.Ltext0
	.4byte	.LBE121-.Ltext0
	.4byte	.LBB120-.Ltext0
	.4byte	.LBE120-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB134-.Ltext0
	.4byte	.LBE134-.Ltext0
	.4byte	.LBB137-.Ltext0
	.4byte	.LBE137-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB135-.Ltext0
	.4byte	.LBE135-.Ltext0
	.4byte	.LBB136-.Ltext0
	.4byte	.LBE136-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB138-.Ltext0
	.4byte	.LBE138-.Ltext0
	.4byte	.LBB145-.Ltext0
	.4byte	.LBE145-.Ltext0
	.4byte	.LBB144-.Ltext0
	.4byte	.LBE144-.Ltext0
	.4byte	.LBB143-.Ltext0
	.4byte	.LBE143-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB146-.Ltext0
	.4byte	.LBE146-.Ltext0
	.4byte	.LBB149-.Ltext0
	.4byte	.LBE149-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB147-.Ltext0
	.4byte	.LBE147-.Ltext0
	.4byte	.LBB148-.Ltext0
	.4byte	.LBE148-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB164-.Ltext0
	.4byte	.LBE164-.Ltext0
	.4byte	.LBB167-.Ltext0
	.4byte	.LBE167-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF119:
	.ascii	"count\000"
.LASF133:
	.ascii	"crc_buf\000"
.LASF79:
	.ascii	"gl_hidden_globals\000"
.LASF38:
	.ascii	"IRQ_TIMER2\000"
.LASF15:
	.ascii	"true\000"
.LASF16:
	.ascii	"bool\000"
.LASF75:
	.ascii	"GL_POSITION\000"
.LASF59:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF81:
	.ascii	"clearColor\000"
.LASF144:
	.ascii	"mosaicShadow\000"
.LASF69:
	.ascii	"type\000"
.LASF51:
	.ascii	"IRQ_CARD_LINE\000"
.LASF135:
	.ascii	"_NJSD_writeSectors\000"
.LASF86:
	.ascii	"nextPBlock\000"
.LASF97:
	.ascii	"OBJSIZE_16\000"
.LASF140:
	.ascii	"_NJSD_speed\000"
.LASF61:
	.ascii	"angle\000"
.LASF40:
	.ascii	"IRQ_NETWORK\000"
.LASF72:
	.ascii	"data\000"
.LASF149:
	.ascii	"GNU C 4.4.3\000"
.LASF89:
	.ascii	"OBJMODE_BLENDED\000"
.LASF102:
	.ascii	"cmd0\000"
.LASF103:
	.ascii	"cmd1\000"
.LASF104:
	.ascii	"cmd2\000"
.LASF105:
	.ascii	"cmd3\000"
.LASF106:
	.ascii	"cmd4\000"
.LASF107:
	.ascii	"cmd5\000"
.LASF108:
	.ascii	"cmd6\000"
.LASF109:
	.ascii	"cmd7\000"
.LASF55:
	.ascii	"IRQ_WIFI\000"
.LASF9:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF91:
	.ascii	"OBJMODE_BITMAP\000"
.LASF142:
	.ascii	"_NJSD_relativeCardAddress\000"
.LASF68:
	.ascii	"size\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF27:
	.ascii	"fn_readSectors\000"
.LASF111:
	.ascii	"_NJSD_reset\000"
.LASF30:
	.ascii	"fn_shutdown\000"
.LASF141:
	.ascii	"_NJSD_cardFlags\000"
.LASF58:
	.ascii	"long int\000"
.LASF94:
	.ascii	"OBJSHAPE_TALL\000"
.LASF52:
	.ascii	"IRQ_GEOMETRY_FIFO\000"
.LASF35:
	.ascii	"IRQ_VCOUNT\000"
.LASF13:
	.ascii	"double\000"
.LASF28:
	.ascii	"fn_writeSectors\000"
.LASF145:
	.ascii	"mosaicShadowSub\000"
.LASF21:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF11:
	.ascii	"uint32\000"
.LASF148:
	.ascii	"glGlobalData\000"
.LASF29:
	.ascii	"fn_clearStatus\000"
.LASF56:
	.ascii	"IRQ_ALL\000"
.LASF77:
	.ascii	"GL_TEXTURE\000"
.LASF120:
	.ascii	"rsp_buf\000"
.LASF36:
	.ascii	"IRQ_TIMER0\000"
.LASF37:
	.ascii	"IRQ_TIMER1\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF39:
	.ascii	"IRQ_TIMER3\000"
.LASF128:
	.ascii	"sector\000"
.LASF122:
	.ascii	"command\000"
.LASF31:
	.ascii	"long unsigned int\000"
.LASF50:
	.ascii	"IRQ_CARD\000"
.LASF85:
	.ascii	"nextBlock\000"
.LASF90:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF132:
	.ascii	"_NJSD_writeSector\000"
.LASF114:
	.ascii	"_NJSD_sendCMDN\000"
.LASF73:
	.ascii	"cur_size\000"
.LASF71:
	.ascii	"DynamicArray\000"
.LASF46:
	.ascii	"IRQ_CART\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF143:
	.ascii	"_io_njsd\000"
.LASF127:
	.ascii	"_NJSD_readSectors\000"
.LASF78:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF129:
	.ascii	"numSectors\000"
.LASF23:
	.ascii	"ioType\000"
.LASF26:
	.ascii	"fn_isInserted\000"
.LASF47:
	.ascii	"IRQ_IPC_SYNC\000"
.LASF24:
	.ascii	"features\000"
.LASF48:
	.ascii	"IRQ_FIFO_EMPTY\000"
.LASF64:
	.ascii	"scaleX\000"
.LASF65:
	.ascii	"scaleY\000"
.LASF136:
	.ascii	"_NJSD_startup\000"
.LASF18:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF117:
	.ascii	"old_REG_IME\000"
.LASF93:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF33:
	.ascii	"IRQ_VBLANK\000"
.LASF76:
	.ascii	"GL_MODELVIEW\000"
.LASF98:
	.ascii	"OBJSIZE_32\000"
.LASF60:
	.ascii	"BgState\000"
.LASF100:
	.ascii	"OBJCOLOR_16\000"
.LASF126:
	.ascii	"_NJSD_clearStatus\000"
.LASF125:
	.ascii	"_NJSD_isInserted\000"
.LASF54:
	.ascii	"IRQ_SPI\000"
.LASF19:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF112:
	.ascii	"_NJSD_init\000"
.LASF12:
	.ascii	"float\000"
.LASF80:
	.ascii	"matrixMode\000"
.LASF34:
	.ascii	"IRQ_HBLANK\000"
.LASF147:
	.ascii	"bgState\000"
.LASF22:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF70:
	.ascii	"dirty\000"
.LASF83:
	.ascii	"texturePtrs\000"
.LASF6:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF137:
	.ascii	"glGlob\000"
.LASF155:
	.ascii	"_NJSD_cardInit\000"
.LASF2:
	.ascii	"short int\000"
.LASF20:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF146:
	.ascii	"bgControl\000"
.LASF14:
	.ascii	"false\000"
.LASF74:
	.ascii	"GL_PROJECTION\000"
.LASF49:
	.ascii	"IRQ_FIFO_NOT_EMPTY\000"
.LASF45:
	.ascii	"IRQ_KEYS\000"
.LASF62:
	.ascii	"centerX\000"
.LASF63:
	.ascii	"centerY\000"
.LASF17:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF124:
	.ascii	"_NJSD_cmd_17byte_response\000"
.LASF123:
	.ascii	"_NJSD_cmd_6byte_response\000"
.LASF7:
	.ascii	"uint32_t\000"
.LASF57:
	.ascii	"char\000"
.LASF150:
	.ascii	"C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_nj"
	.ascii	"sd.c\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF130:
	.ascii	"buffer\000"
.LASF41:
	.ascii	"IRQ_DMA0\000"
.LASF42:
	.ascii	"IRQ_DMA1\000"
.LASF43:
	.ascii	"IRQ_DMA2\000"
.LASF44:
	.ascii	"IRQ_DMA3\000"
.LASF88:
	.ascii	"OBJMODE_NORMAL\000"
.LASF134:
	.ascii	"offset\000"
.LASF154:
	.ascii	"_NJSD_shutdown\000"
.LASF116:
	.ascii	"param\000"
.LASF96:
	.ascii	"OBJSIZE_8\000"
.LASF95:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF32:
	.ascii	"IO_INTERFACE\000"
.LASF101:
	.ascii	"OBJCOLOR_256\000"
.LASF151:
	.ascii	"IRQ_MASKS\000"
.LASF153:
	.ascii	"_NJSD_sendCMDR\000"
.LASF66:
	.ascii	"scrollX\000"
.LASF67:
	.ascii	"scrollY\000"
.LASF25:
	.ascii	"fn_startup\000"
.LASF92:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF118:
	.ascii	"_NJSD_sendCLK\000"
.LASF82:
	.ascii	"textures\000"
.LASF131:
	.ascii	"tbuf\000"
.LASF53:
	.ascii	"IRQ_LID\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF139:
	.ascii	"_NJSD_read_end_cmd\000"
.LASF152:
	.ascii	"_NJSD_writeCardCommand\000"
.LASF113:
	.ascii	"flags\000"
.LASF110:
	.ascii	"_NJSD_waitIRQ\000"
.LASF115:
	.ascii	"speed\000"
.LASF99:
	.ascii	"OBJSIZE_64\000"
.LASF87:
	.ascii	"nameCount\000"
.LASF84:
	.ascii	"activeTexture\000"
.LASF138:
	.ascii	"_NJSD_read_cmd\000"
.LASF121:
	.ascii	"responseBuffer\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
