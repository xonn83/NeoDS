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
	.code 16
	.thumb_func
	.type	_NJSD_waitIRQ, %function
_NJSD_waitIRQ:
.LFB104:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_njsd.c"
	.loc 1 84 0
	push	{lr}
.LCFI0:
	.loc 1 84 0
	ldr	r0, .L11
.LVL0:
.L2:
	.loc 1 86 0
	ldr	r1, .L11+4
	mov	r2, #128
	ldr	r3, [r1]
	lsl	r2, r2, #13
	tst	r3, r2
	bne	.L3
	sub	r0, r0, #1
	cmp	r0, #0
	beq	.L10
	b	.L2
.L3:
	.loc 1 87 0
	str	r2, [r1]
	mov	r2, #0
	cmp	r0, #0
	bgt	.L6
	mov	r2, #1
.L6:
	mov	r3, #1
	eor	r3, r3, r2
	lsl	r3, r3, #24
	lsr	r0, r3, #24
.LVL1:
	b	.L7
.LVL2:
.L10:
	str	r2, [r1]
	mov	r0, #0
.LVL3:
.L7:
	.loc 1 93 0
	@ sp needed for prologue
	pop	{pc}
.L12:
	.align	2
.L11:
	.word	1000000
	.word	67109396
.LFE104:
	.size	_NJSD_waitIRQ, .-_NJSD_waitIRQ
	.align	2
	.code 16
	.thumb_func
	.type	_NJSD_writeCardCommand, %function
_NJSD_writeCardCommand:
.LFB105:
	.loc 1 97 0
	push	{r4, r5, r6, r7, lr}
.LCFI1:
.LVL4:
	.loc 1 97 0
	add	r4, sp, #20
	ldrb	r5, [r4]
	add	r4, sp, #24
	ldrb	r6, [r4]
	add	r4, sp, #28
	ldrb	r4, [r4]
	.loc 1 106 0
	@ sp needed for prologue
	.loc 1 97 0
	mov	ip, r4
	add	r4, sp, #32
	ldrb	r7, [r4]
	.loc 1 98 0
	ldr	r4, .L15
	strb	r0, [r4]
	.loc 1 99 0
	ldr	r0, .L15+4
.LVL5:
	strb	r1, [r0]
	.loc 1 100 0
	ldr	r1, .L15+8
.LVL6:
	strb	r2, [r1]
	.loc 1 101 0
	ldr	r2, .L15+12
.LVL7:
	strb	r3, [r2]
	.loc 1 102 0
	ldr	r3, .L15+16
.LVL8:
	.loc 1 104 0
	mov	r2, ip
	.loc 1 102 0
	strb	r5, [r3]
	.loc 1 103 0
	add	r3, r3, #1
	strb	r6, [r3]
	.loc 1 104 0
	add	r3, r3, #1
	strb	r2, [r3]
	.loc 1 105 0
	add	r3, r3, #1
	strb	r7, [r3]
	.loc 1 106 0
	pop	{r4, r5, r6, r7, pc}
.L16:
	.align	2
.L15:
	.word	67109288
	.word	67109289
	.word	67109290
	.word	67109291
	.word	67109292
.LFE105:
	.size	_NJSD_writeCardCommand, .-_NJSD_writeCardCommand
	.align	2
	.code 16
	.thumb_func
	.type	_NJSD_reset, %function
_NJSD_reset:
.LFB106:
	.loc 1 108 0
	push	{lr}
.LCFI2:
	.loc 1 110 0
	ldr	r2, .L27
	mov	r3, #128
	neg	r3, r3
	strb	r3, [r2]
	.loc 1 108 0
	sub	sp, sp, #20
.LCFI3:
	.loc 1 111 0
	mov	r3, #0
	mov	r2, #0
	mov	r0, #32
	mov	r1, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	str	r3, [sp, #12]
	bl	_NJSD_writeCardCommand
	.loc 1 112 0
	ldr	r2, .L27+4
	ldr	r3, .L27+8
	str	r2, [r3]
	ldr	r2, .L27+12
.LVL9:
.L18:
	.loc 1 114 0
	ldr	r3, .L27+8
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L19
	sub	r2, r2, #1
	cmp	r2, #0
	bne	.L18
	mov	r0, #0
	b	.L22
.L19:
	mov	r1, #0
	cmp	r2, #0
	bgt	.L23
	mov	r1, #1
.L23:
	mov	r3, #1
	eor	r3, r3, r1
	lsl	r3, r3, #24
	lsr	r0, r3, #24
.L22:
	.loc 1 120 0
	add	sp, sp, #20
	@ sp needed for prologue
	pop	{pc}
.L28:
	.align	2
.L27:
	.word	67109281
	.word	-1606393856
	.word	67109284
	.word	10000
.LFE106:
	.size	_NJSD_reset, .-_NJSD_reset
	.align	2
	.code 16
	.thumb_func
	.type	_NJSD_sendCMDR, %function
_NJSD_sendCMDR:
.LFB108:
	.loc 1 135 0
	push	{r4, r5, r6, r7, lr}
.LCFI4:
.LVL10:
	mov	r5, r2
	.loc 1 141 0
	ldr	r2, .L58
.LVL11:
	.loc 1 135 0
	mov	ip, r3
	.loc 1 141 0
	ldrh	r3, [r2]
.LVL12:
	.loc 1 135 0
	sub	sp, sp, #12
.LCFI5:
	.loc 1 141 0
	str	r3, [sp, #4]
.LVL13:
	.loc 1 142 0
	mov	r3, #0
	strh	r3, [r2]
	.loc 1 145 0
	mov	r3, #128
	lsl	r3, r3, #13
	add	r2, r2, #12
	.loc 1 135 0
	ldr	r7, [sp, #32]
	.loc 1 145 0
	str	r3, [r2]
	.loc 1 147 0
	mov	r3, #128
	neg	r3, r3
	sub	r2, r2, #115
	strb	r3, [r2]
	.loc 1 149 0
	mov	r6, r5
	mov	r3, #3
	and	r6, r6, r3
	.loc 1 135 0
	mov	r4, r1
	.loc 1 149 0
	cmp	r6, #1
	bgt	.L30
.LVL14:
	.loc 1 150 0
	mov	r3, #15
	neg	r3, r3
	lsl	r1, r0, #2
	orr	r1, r1, r3
	lsl	r2, r5, #1
	orr	r2, r2, r1
	lsl	r2, r2, #24
	ldr	r3, .L58+4
	lsr	r2, r2, #24
	strb	r2, [r3]
	b	.L32
.LVL15:
.L30:
	lsl	r0, r0, #2
.LVL16:
	.loc 1 151 0
	cmp	r6, #2
	bne	.L33
	.loc 1 152 0
	mov	r3, #30
	b	.L56
.L33:
	.loc 1 154 0
	mov	r3, #14
.L56:
	neg	r3, r3
	orr	r3, r3, r0
	lsl	r3, r3, #24
	ldr	r2, .L58+4
	lsr	r3, r3, #24
	strb	r3, [r2]
.LVL17:
.L32:
	.loc 1 157 0
	mov	r3, #64
	mov	r2, r5
	and	r2, r2, r3
	lsl	r3, r5, #27
	lsr	r3, r3, #29
	lsl	r3, r3, #3
	orr	r2, r2, r3
	ldr	r3, .L58+8
	strb	r2, [r3]
	.loc 1 158 0
	mov	r2, ip
	mov	r3, #64
	orr	r3, r3, r2
	lsl	r3, r3, #24
	ldr	r2, .L58+12
	lsr	r3, r3, #24
	strb	r3, [r2]
	.loc 1 159 0
	ldr	r3, .L58+16
	lsr	r2, r7, #24
	strb	r2, [r3]
	.loc 1 160 0
	ldr	r2, .L58+20
	lsl	r3, r7, #8
	lsr	r3, r3, #24
	strb	r3, [r2]
	.loc 1 161 0
	lsl	r3, r7, #16
	lsr	r3, r3, #24
	add	r2, r2, #1
	strb	r3, [r2]
	.loc 1 162 0
	lsl	r3, r7, #24
	lsr	r3, r3, #24
	add	r2, r2, #1
	strb	r3, [r2]
	.loc 1 163 0
	ldr	r3, .L58+24
	mov	r2, #0
	strb	r2, [r3]
	ldr	r2, .L58+28
	.loc 1 165 0
	cmp	r6, #1
	bgt	.L35
	.loc 1 166 0
	ldr	r2, [r2]
	mov	r3, #128
	lsl	r3, r3, #17
	orr	r2, r2, r3
	ldr	r3, .L58+32
	str	r2, [r3]
	.loc 1 169 0
	bl	_NJSD_waitIRQ
.LVL18:
	cmp	r0, #0
	beq	.L57
	.loc 1 173 0
	mov	r1, #0
.LVL19:
.LVL20:
.L40:
	.loc 1 179 0
	ldr	r3, .L58+32
	ldr	r3, [r3]
	lsl	r2, r3, #8
	bpl	.L41
.LVL21:
	.loc 1 180 0
	ldr	r3, .L58+36
	ldr	r2, [r3]
.LVL22:
	.loc 1 181 0
	cmp	r4, #0
	beq	.L43
	.loc 1 182 0
	cmp	r1, #4
	bne	.L45
	.loc 1 184 0
	lsr	r3, r2, #8
	strb	r3, [r4, #1]
	.loc 1 185 0
	lsr	r3, r2, #16
	strb	r3, [r4, #2]
	.loc 1 186 0
	lsr	r3, r2, #24
	.loc 1 183 0
	strb	r2, [r4]
	.loc 1 186 0
	strb	r3, [r4, #3]
	b	.L43
.L45:
	.loc 1 187 0
	cmp	r1, #5
	bne	.L43
	.loc 1 189 0
	lsr	r3, r2, #8
	.loc 1 188 0
	strb	r2, [r4, #4]
	.loc 1 189 0
	strb	r3, [r4, #5]
.L43:
	.loc 1 192 0
	add	r1, r1, #1
.L41:
	.loc 1 194 0
	ldr	r3, .L58+32
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L48
	b	.L40
.LVL23:
.L35:
	.loc 1 196 0
	ldr	r2, [r2]
	ldr	r3, .L58+32
	str	r2, [r3]
.L49:
	.loc 1 197 0
	ldr	r3, .L58+32
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L49
	.loc 1 200 0
	bl	_NJSD_waitIRQ
.LVL24:
	cmp	r0, #0
	bne	.L48
.L57:
	.loc 1 202 0
	ldr	r2, [sp, #4]
	ldr	r3, .L58
	strh	r2, [r3]
	b	.L39
.LVL25:
.L48:
	.loc 1 209 0
	ldr	r2, [sp, #4]
.LVL26:
	ldr	r3, .L58
	mov	r0, #1
	strh	r2, [r3]
.L39:
	.loc 1 212 0
	add	sp, sp, #12
	@ sp needed for prologue
.LVL27:
.LVL28:
.LVL29:
	pop	{r4, r5, r6, r7, pc}
.L59:
	.align	2
.L58:
	.word	67109384
	.word	67109288
	.word	67109289
	.word	67109290
	.word	67109291
	.word	67109292
	.word	67109295
	.word	_NJSD_cardFlags
	.word	67109284
	.word	68157456
.LFE108:
	.size	_NJSD_sendCMDR, .-_NJSD_sendCMDR
	.align	2
	.code 16
	.thumb_func
	.type	_NJSD_sendCLK, %function
_NJSD_sendCLK:
.LFB110:
	.loc 1 310 0
	push	{r4, r5, lr}
.LCFI6:
.LVL30:
	mov	r2, r1
	.loc 1 315 0
	ldr	r1, .L71
.LVL31:
	.loc 1 316 0
	mov	r4, #0
	.loc 1 315 0
	ldrh	r3, [r1]
	.loc 1 316 0
	strh	r4, [r1]
	.loc 1 315 0
	mov	r5, r3
.LVL32:
	.loc 1 318 0
	mov	r3, #128
	lsl	r3, r3, #13
	add	r1, r1, #12
	str	r3, [r1]
	.loc 1 322 0
	mov	r3, #3
	and	r0, r0, r3
.LVL33:
	mov	r3, #32
	neg	r3, r3
	lsl	r0, r0, #2
	orr	r0, r0, r3
	sub	r2, r2, #1
.LVL34:
	lsl	r0, r0, #24
	lsl	r2, r2, #24
	.loc 1 310 0
	sub	sp, sp, #20
.LCFI7:
	.loc 1 322 0
	lsr	r2, r2, #24
	mov	r3, #0
	lsr	r0, r0, #24
	mov	r1, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	str	r4, [sp, #12]
	bl	_NJSD_writeCardCommand
	.loc 1 324 0
	ldr	r3, .L71+4
	ldr	r2, [r3]
	ldr	r3, .L71+8
	str	r2, [r3]
	ldr	r2, .L71+12
.LVL35:
.L61:
	.loc 1 326 0
	ldr	r3, .L71+8
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L62
	sub	r2, r2, #1
	cmp	r2, #0
	beq	.L64
	b	.L61
.L62:
	.loc 1 327 0
	cmp	r2, #0
	bgt	.L65
.L64:
	.loc 1 329 0
	ldr	r3, .L71
	mov	r0, #0
.LVL36:
	strh	r5, [r3]
	b	.L66
.LVL37:
.L65:
	.loc 1 335 0
	bl	_NJSD_waitIRQ
.LVL38:
	lsl	r2, r5, #16
	cmp	r0, #0
	bne	.L67
	.loc 1 337 0
	ldr	r3, .L71
	lsr	r2, r2, #16
	strh	r2, [r3]
	b	.L66
.L67:
	.loc 1 343 0
	ldr	r3, .L71
	lsr	r2, r2, #16
	strh	r2, [r3]
	mov	r0, #1
.LVL39:
.L66:
	.loc 1 346 0
	add	sp, sp, #20
	@ sp needed for prologue
.LVL40:
	pop	{r4, r5, pc}
.L72:
	.align	2
.L71:
	.word	67109384
	.word	_NJSD_cardFlags
	.word	67109284
	.word	100000
.LFE110:
	.size	_NJSD_sendCLK, .-_NJSD_sendCLK
	.align	2
	.code 16
	.thumb_func
	.type	_NJSD_sendCMDN, %function
_NJSD_sendCMDN:
.LFB111:
	.loc 1 348 0
	push	{r4, r5, r6, lr}
.LCFI8:
.LVL41:
	mov	r4, r1
	.loc 1 353 0
	ldr	r1, .L84
.LVL42:
	.loc 1 354 0
	mov	r5, #0
	.loc 1 353 0
	ldrh	r3, [r1]
	.loc 1 354 0
	strh	r5, [r1]
	.loc 1 353 0
	mov	r6, r3
.LVL43:
	.loc 1 357 0
	mov	r3, #128
	lsl	r3, r3, #13
	add	r1, r1, #12
	str	r3, [r1]
	.loc 1 359 0
	mov	r3, #128
	neg	r3, r3
	sub	r1, r1, #115
	strb	r3, [r1]
	.loc 1 360 0
	mov	r3, #3
	and	r0, r0, r3
.LVL44:
	mov	r3, #16
	neg	r3, r3
	lsl	r0, r0, #2
	orr	r0, r0, r3
	lsl	r1, r2, #8
	mov	r3, #64
	.loc 1 348 0
	sub	sp, sp, #16
.LCFI9:
	.loc 1 360 0
	orr	r4, r4, r3
.LVL45:
	lsr	r1, r1, #24
	lsr	r3, r2, #24
	str	r1, [sp]
	lsl	r4, r4, #24
	lsl	r1, r2, #16
	lsl	r2, r2, #24
.LVL46:
	lsr	r1, r1, #24
	lsr	r2, r2, #24
	lsl	r0, r0, #24
	lsr	r4, r4, #24
	str	r1, [sp, #4]
	str	r2, [sp, #8]
	lsr	r0, r0, #24
	mov	r2, r4
	mov	r1, #0
	str	r5, [sp, #12]
	bl	_NJSD_writeCardCommand
	.loc 1 363 0
	ldr	r3, .L84+4
	ldr	r2, [r3]
	ldr	r3, .L84+8
	str	r2, [r3]
	ldr	r2, .L84+12
.LVL47:
.L74:
	.loc 1 365 0
	ldr	r3, .L84+8
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L75
	sub	r2, r2, #1
	cmp	r2, #0
	beq	.L77
	b	.L74
.L75:
	.loc 1 366 0
	cmp	r2, #0
	bgt	.L78
.L77:
	.loc 1 368 0
	ldr	r3, .L84
	mov	r0, #0
.LVL48:
	strh	r6, [r3]
	b	.L79
.LVL49:
.L78:
	.loc 1 374 0
	bl	_NJSD_waitIRQ
.LVL50:
	lsl	r2, r6, #16
	cmp	r0, #0
	bne	.L80
	.loc 1 376 0
	ldr	r3, .L84
	lsr	r2, r2, #16
	strh	r2, [r3]
	b	.L79
.L80:
	.loc 1 382 0
	ldr	r3, .L84
	lsr	r2, r2, #16
	strh	r2, [r3]
	mov	r0, #1
.LVL51:
.L79:
	.loc 1 385 0
	add	sp, sp, #16
	@ sp needed for prologue
.LVL52:
	pop	{r4, r5, r6, pc}
.L85:
	.align	2
.L84:
	.word	67109384
	.word	_NJSD_cardFlags
	.word	67109284
	.word	100000
.LFE111:
	.size	_NJSD_sendCMDN, .-_NJSD_sendCMDN
	.align	2
	.global	_NJSD_cmd_6byte_response
	.code 16
	.thumb_func
	.type	_NJSD_cmd_6byte_response, %function
_NJSD_cmd_6byte_response:
.LFB112:
	.loc 1 387 0
	push	{r4, lr}
.LCFI10:
.LVL53:
	sub	sp, sp, #8
.LCFI11:
	.loc 1 387 0
	mov	r4, r0
	mov	r3, r1
	.loc 1 388 0
	str	r2, [sp]
	mov	r1, r4
.LVL54:
	mov	r2, #0
.LVL55:
	mov	r0, #0
.LVL56:
	bl	_NJSD_sendCMDR
.LVL57:
	.loc 1 389 0
	add	sp, sp, #8
	@ sp needed for prologue
.LVL58:
	pop	{r4, pc}
.LFE112:
	.size	_NJSD_cmd_6byte_response, .-_NJSD_cmd_6byte_response
	.align	2
	.global	_NJSD_cmd_17byte_response
	.code 16
	.thumb_func
	.type	_NJSD_cmd_17byte_response, %function
_NJSD_cmd_17byte_response:
.LFB113:
	.loc 1 391 0
	push	{r4, lr}
.LCFI12:
.LVL59:
	sub	sp, sp, #8
.LCFI13:
	.loc 1 391 0
	mov	r4, r0
	mov	r3, r1
	.loc 1 392 0
	str	r2, [sp]
	mov	r1, r4
.LVL60:
	mov	r2, #1
.LVL61:
	mov	r0, #0
.LVL62:
	bl	_NJSD_sendCMDR
.LVL63:
	.loc 1 393 0
	add	sp, sp, #8
	@ sp needed for prologue
.LVL64:
	pop	{r4, pc}
.LFE113:
	.size	_NJSD_cmd_17byte_response, .-_NJSD_cmd_17byte_response
	.align	2
	.global	_NJSD_isInserted
	.code 16
	.thumb_func
	.type	_NJSD_isInserted, %function
_NJSD_isInserted:
.LFB115:
	.loc 1 416 0
	push	{r4, lr}
.LCFI14:
	sub	sp, sp, #16
.LCFI15:
	.loc 1 418 0
	add	r4, sp, #8
	mov	r3, #0
	str	r3, [sp]
	mov	r0, #0
	mov	r3, #13
	mov	r1, r4
	mov	r2, #0
	bl	_NJSD_sendCMDR
	ldrb	r3, [r4]
	mov	r0, #0
	cmp	r3, #13
	beq	.L91
	mov	r0, #1
.L91:
	mov	r3, #1
	eor	r0, r0, r3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	.loc 1 425 0
	add	sp, sp, #16
	@ sp needed for prologue
	pop	{r4, pc}
.LFE115:
	.size	_NJSD_isInserted, .-_NJSD_isInserted
	.align	2
	.global	_NJSD_clearStatus
	.code 16
	.thumb_func
	.type	_NJSD_clearStatus, %function
_NJSD_clearStatus:
.LFB116:
	.loc 1 427 0
	push	{lr}
.LCFI16:
	sub	sp, sp, #4
.LCFI17:
	.loc 1 428 0
	bl	_NJSD_reset
	.loc 1 429 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE116:
	.size	_NJSD_clearStatus, .-_NJSD_clearStatus
	.align	2
	.global	_NJSD_shutdown
	.code 16
	.thumb_func
	.type	_NJSD_shutdown, %function
_NJSD_shutdown:
.LFB117:
	.loc 1 431 0
	push	{lr}
.LCFI18:
	sub	sp, sp, #4
.LCFI19:
	.loc 1 432 0
	bl	_NJSD_clearStatus
	.loc 1 433 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE117:
	.size	_NJSD_shutdown, .-_NJSD_shutdown
	.align	2
	.global	_NJSD_readSectors
	.code 16
	.thumb_func
	.type	_NJSD_readSectors, %function
_NJSD_readSectors:
.LFB120:
	.loc 1 464 0
	push	{r4, r5, r6, r7, lr}
.LCFI20:
.LVL65:
	ldr	r4, .L127
	mov	r7, r2
	add	sp, sp, r4
.LCFI21:
	.loc 1 464 0
	str	r1, [sp, #8]
	.loc 1 474 0
	cmp	r1, #0
	bne	.LCB894
	b	.L126	@long jump
.LCB894:
.LVL66:
	.loc 1 479 0
	ldr	r3, .L127+4
	lsl	r0, r0, #9
.LVL67:
	ldrh	r2, [r3]
	str	r2, [sp, #16]
.LVL68:
	.loc 1 480 0
	mov	r2, #0
	strh	r2, [r3]
	.loc 1 483 0
	ldr	r2, [sp, #8]
	cmp	r2, #1
	bls	.L101
.LVL69:
	.loc 1 484 0
	str	r0, [sp]
	mov	r3, #18
	mov	r0, #2
	mov	r1, #0
	mov	r2, #2
	bl	_NJSD_sendCMDR
	mov	r6, r7
.LVL70:
	mov	r3, #0
	b	.L123
.LVL71:
.L104:
	.loc 1 486 0
	mov	r3, #3
	ldr	r5, .L127+8
	tst	r7, r3
	beq	.L105
	.loc 1 487 0
	add	r4, sp, #24
	mov	r2, #128
	mov	r1, r4
	ldr	r0, .L127+12
	lsl	r2, r2, #2
	mov	r3, r5
	bl	cardPolledTransfer
	.loc 1 488 0
	mov	r2, #128
	mov	r0, r6
	mov	r1, r4
	lsl	r2, r2, #2
	bl	memcpy
	b	.L107
.L105:
	.loc 1 490 0
	mov	r2, #128
	ldr	r0, .L127+12
	mov	r1, r6
	lsl	r2, r2, #2
	mov	r3, r5
	bl	cardPolledTransfer
.L107:
	.loc 1 492 0
	bl	_NJSD_waitIRQ
	mov	r2, #128
	lsl	r2, r2, #2
	add	r6, r6, r2
	cmp	r0, #0
	beq	.L122
	.loc 1 485 0
	ldr	r3, [sp, #12]
	add	r3, r3, #1
.L123:
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	sub	r3, r3, #2
	cmp	r2, r3
	bne	.L104
	ldr	r2, [sp, #8]
	.loc 1 499 0
	mov	r3, #3
	lsl	r6, r2, #9
.LVL72:
	mov	r2, r7
	ldr	r5, .L127+16
	and	r2, r3
	str	r2, [sp, #20]
	beq	.L111
	.loc 1 500 0
	add	r4, sp, #24
	mov	r2, #128
	mov	r1, r4
	mov	r3, r5
	ldr	r0, .L127+12
	lsl	r2, r2, #2
	bl	cardPolledTransfer
	.loc 1 501 0
	ldr	r3, .L127+20
	add	r0, r7, r6
	mov	r2, #128
	add	r0, r0, r3
	mov	r1, r4
	lsl	r2, r2, #2
	bl	memcpy
	b	.L113
.L111:
	.loc 1 503 0
	ldr	r2, .L127+20
	add	r1, r7, r6
	add	r1, r1, r2
	mov	r2, #128
	ldr	r0, .L127+12
	lsl	r2, r2, #2
	mov	r3, r5
	bl	cardPolledTransfer
.L113:
	.loc 1 505 0
	bl	_NJSD_waitIRQ
	cmp	r0, #0
	bne	.L114
	.loc 1 507 0
	ldr	r2, [sp, #16]
	ldr	r3, .L127+4
	strh	r2, [r3]
	b	.L100
.L114:
	ldr	r3, [sp, #8]
	.loc 1 512 0
	ldr	r2, [sp, #20]
	ldr	r5, .L127+8
	lsl	r6, r3, #9
	cmp	r2, #0
	beq	.L116
	.loc 1 513 0
	add	r4, sp, #24
	mov	r2, #128
	ldr	r0, .L127+12
	mov	r3, r5
	mov	r1, r4
	lsl	r2, r2, #2
	bl	cardPolledTransfer
	.loc 1 514 0
	ldr	r3, .L127+24
	add	r0, r7, r6
	add	r0, r0, r3
	b	.L124
.L116:
	.loc 1 516 0
	ldr	r2, .L127+24
	add	r1, r7, r6
	ldr	r0, .L127+12
	add	r1, r1, r2
	b	.L125
.LVL73:
.L101:
	.loc 1 519 0
	str	r0, [sp]
	mov	r3, #17
	mov	r0, #2
	mov	r1, #0
	mov	r2, #3
	bl	_NJSD_sendCMDR
	.loc 1 520 0
	mov	r3, #3
	ldr	r5, .L127+8
	tst	r7, r3
	beq	.L119
	.loc 1 521 0
	add	r4, sp, #24
	mov	r2, #128
	ldr	r0, .L127+12
	mov	r1, r4
	lsl	r2, r2, #2
	mov	r3, r5
	bl	cardPolledTransfer
	.loc 1 522 0
	mov	r0, r7
.LVL74:
.L124:
	mov	r2, #128
	mov	r1, r4
	lsl	r2, r2, #2
	bl	memcpy
.LVL75:
	b	.L118
.LVL76:
.L122:
	.loc 1 494 0
	ldr	r2, [sp, #16]
	ldr	r3, .L127+4
	strh	r2, [r3]
.LVL77:
.L126:
	mov	r0, #0
.LVL78:
	b	.L100
.LVL79:
.L119:
	.loc 1 524 0
	ldr	r0, .L127+12
	mov	r1, r7
.LVL80:
.L125:
	mov	r2, #128
	lsl	r2, r2, #2
	mov	r3, r5
	bl	cardPolledTransfer
.LVL81:
.L118:
	.loc 1 529 0
	ldr	r2, [sp, #16]
	ldr	r3, .L127+4
	mov	r0, #1
	strh	r2, [r3]
.LVL82:
.L100:
	.loc 1 532 0
	mov	r3, #135
	lsl	r3, r3, #2
	add	sp, sp, r3
	@ sp needed for prologue
.LVL83:
.LVL84:
	pop	{r4, r5, r6, r7, pc}
.L128:
	.align	2
.L127:
	.word	-540
	.word	67109384
	.word	_NJSD_read_cmd
	.word	-1589616640
	.word	_NJSD_read_end_cmd
	.word	-1024
	.word	-512
.LFE120:
	.size	_NJSD_readSectors, .-_NJSD_readSectors
	.align	2
	.global	_NJSD_writeSectors
	.code 16
	.thumb_func
	.type	_NJSD_writeSectors, %function
_NJSD_writeSectors:
.LFB119:
	.loc 1 446 0
	push	{r4, r5, r6, r7, lr}
.LCFI22:
.LVL85:
	sub	sp, sp, #68
.LCFI23:
	.loc 1 448 0
	lsl	r0, r0, #9
.LVL86:
	.loc 1 446 0
	str	r1, [sp, #28]
	.loc 1 448 0
	str	r0, [sp, #32]
.LVL87:
	b	.L173
.LVL88:
.L131:
	.loc 1 452 0
	mov	r1, #128
	mov	r2, sp
	ldr	r0, [sp, #36]
	lsl	r1, r1, #2
	add	r2, r2, #50
	bl	_SD_CRC16
.LBB4:
.LBB5:
	.loc 1 221 0
	ldr	r2, .L175
	.loc 1 222 0
	mov	r1, #0
	.loc 1 221 0
	ldrh	r3, [r2]
	.loc 1 222 0
	strh	r1, [r2]
	.loc 1 221 0
	str	r3, [sp, #40]
	.loc 1 225 0
	mov	r3, #128
	neg	r3, r3
	sub	r2, r2, #103
	strb	r3, [r2]
	.loc 1 226 0
	mov	r0, #128
	mov	r2, #0
	mov	r3, #0
	str	r1, [sp]
	str	r1, [sp, #4]
	str	r1, [sp, #8]
	str	r1, [sp, #12]
	bl	_NJSD_writeCardCommand
	.loc 1 227 0
	ldr	r2, .L175+4
	ldr	r3, .L175+8
	str	r2, [r3]
	ldr	r2, .L175+12
.LVL89:
.L132:
	.loc 1 229 0
	ldr	r3, .L175+8
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L133
	sub	r2, r2, #1
	cmp	r2, #0
	bne	.LCB1251
	b	.L174	@long jump
.LCB1251:
	b	.L132
.L133:
	.loc 1 230 0
	cmp	r2, #0
	bgt	.LCB1259
	b	.L174	@long jump
.LCB1259:
	.loc 1 232 0
	mov	r1, #0
	ldr	r7, [sp, #36]
	str	r1, [sp, #44]
.L138:
	.loc 1 239 0
	ldr	r2, .L175+16
.LVL90:
	mov	r3, #128
	neg	r3, r3
	strb	r3, [r2]
	.loc 1 240 0
	ldr	r2, [sp, #44]
	cmp	r2, #63
	bgt	.L139
	.loc 1 242 0
	ldrb	r3, [r7, #3]
	ldrb	r0, [r7]
	ldrb	r1, [r7, #1]
	ldrb	r2, [r7, #2]
	str	r3, [sp, #20]
	ldrb	r3, [r7, #7]
	ldrb	r4, [r7, #4]
.LVL91:
	ldrb	r5, [r7, #5]
	ldrb	r6, [r7, #6]
	str	r3, [sp, #12]
	ldr	r3, [sp, #20]
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r6, [sp, #8]
	b	.L172
.LVL92:
.L139:
	.loc 1 245 0
	mov	r4, sp
.LVL93:
	add	r4, r4, #50
	ldrb	r5, [r4, #4]
	ldrb	r0, [r4]
	ldrb	r1, [r4, #1]
	ldrb	r2, [r4, #2]
	ldrb	r3, [r4, #3]
	str	r5, [sp]
	ldrb	r5, [r4, #5]
	str	r5, [sp, #4]
	ldrb	r5, [r4, #6]
	str	r5, [sp, #8]
	ldrb	r4, [r4, #7]
	str	r4, [sp, #12]
.L172:
	bl	_NJSD_writeCardCommand
	.loc 1 248 0
	ldr	r2, .L175+20
	ldr	r3, .L175+8
	str	r2, [r3]
.L142:
	.loc 1 252 0
	ldr	r4, .L175+8
	ldr	r3, [r4]
	lsl	r1, r3, #8
	bpl	.L143
	.loc 1 253 0
	ldr	r3, .L175+24
	ldr	r3, [r3]
.LVL94:
.L143:
	.loc 1 255 0
	ldr	r3, [r4]
.LVL95:
	cmp	r3, #0
	blt	.L142
	.loc 1 237 0
	ldr	r2, [sp, #44]
	add	r7, r7, #8
	add	r2, r2, #1
	str	r2, [sp, #44]
	cmp	r2, #65
	bne	.L138
	.loc 1 258 0
	ldr	r2, .L175+16
	mov	r3, #128
	neg	r3, r3
	strb	r3, [r2]
	.loc 1 259 0
	ldr	r1, [sp, #32]
	mov	r0, #245
	lsl	r2, r1, #8
	lsr	r2, r2, #24
	str	r2, [sp]
	lsl	r2, r1, #16
	lsr	r2, r2, #24
	str	r2, [sp, #4]
	lsl	r2, r1, #24
	lsr	r2, r2, #24
	str	r2, [sp, #8]
	mov	r2, #0
	lsr	r3, r1, #24
	str	r2, [sp, #12]
	mov	r1, #128
	mov	r2, #88
	bl	_NJSD_writeCardCommand
	.loc 1 261 0
	ldr	r3, .L175+20
	str	r3, [r4]
.LBE5:
	.loc 1 264 0
	bl	_NJSD_waitIRQ
.LBB6:
	cmp	r0, #0
	bne	.L147
	.loc 1 266 0
	ldr	r2, [sp, #40]
	ldr	r3, .L175
	strh	r2, [r3]
	b	.L137
.L147:
	mov	r0, #0
.LVL96:
.LVL97:
.L149:
	.loc 1 274 0
	ldr	r3, .L175+8
	ldr	r3, [r3]
	lsl	r2, r3, #8
	bpl	.L150
	.loc 1 275 0
	ldr	r3, .L175+24
	ldr	r1, [r3]
	.loc 1 276 0
	cmp	r0, #2
	bne	.L152
	.loc 1 277 0
	mov	r2, sp
	add	r2, r2, #58
	.loc 1 278 0
	lsr	r3, r1, #8
	strb	r3, [r2, #1]
	.loc 1 279 0
	lsr	r3, r1, #16
	strb	r3, [r2, #2]
	.loc 1 280 0
	lsr	r3, r1, #24
	.loc 1 277 0
	strb	r1, [r2]
	.loc 1 280 0
	strb	r3, [r2, #3]
	b	.L154
.L152:
	.loc 1 281 0
	cmp	r0, #3
	bne	.L154
	.loc 1 282 0
	mov	r2, sp
	add	r2, r2, #58
	.loc 1 283 0
	lsr	r3, r1, #8
	.loc 1 282 0
	strb	r1, [r2, #4]
	.loc 1 283 0
	strb	r3, [r2, #5]
.L154:
	.loc 1 285 0
	add	r0, r0, #1
.L150:
	.loc 1 287 0
	ldr	r3, .L175+8
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L149
	.loc 1 290 0
	mov	r1, sp
.LVL98:
	add	r1, r1, #58
	mov	r3, #0
	strb	r3, [r1, #3]
	.loc 1 292 0
	ldr	r3, .L175+28
	mov	r0, #0
.LVL99:
	ldr	r3, [r3]
	mov	r2, #0
	str	r3, [sp]
	mov	r3, #13
	bl	_NJSD_sendCMDR
	ldr	r4, .L175+32
.LVL100:
	b	.L157
.L158:
	ldr	r3, .L175+28
	mov	r0, #0
	ldr	r3, [r3]
	mov	r2, #0
	str	r3, [sp]
	.loc 1 293 0
	sub	r4, r4, #1
	.loc 1 292 0
	mov	r3, #13
	bl	_NJSD_sendCMDR
	.loc 1 294 0
	cmp	r4, #0
	bne	.L157
.LVL101:
.L174:
	.loc 1 296 0
	ldr	r2, [sp, #40]
.LVL102:
	ldr	r3, .L175
	mov	r0, #0
	strh	r2, [r3]
	b	.L137
.L157:
	.loc 1 300 0
	mov	r1, sp
	add	r1, r1, #58
	ldrb	r3, [r1, #3]
	mov	r2, #31
	and	r3, r3, r2
	cmp	r3, #9
	bne	.L158
	.loc 1 304 0
	ldr	r2, [sp, #40]
	ldr	r3, .L175
.LBE6:
.LBE4:
	.loc 1 457 0
	mov	r1, #128
.LBB7:
.LBB8:
	.loc 1 304 0
	strh	r2, [r3]
.LBE8:
.LBE7:
	.loc 1 457 0
	ldr	r3, [sp, #32]
	lsl	r1, r1, #2
	.loc 1 458 0
	ldr	r2, [sp, #36]
	.loc 1 457 0
	add	r3, r3, r1
	str	r3, [sp, #32]
	.loc 1 458 0
	add	r2, r2, r1
.LVL103:
.L173:
	.loc 1 451 0
	ldr	r3, [sp, #28]
.LVL104:
	.loc 1 458 0
	str	r2, [sp, #36]
	.loc 1 451 0
	sub	r3, r3, #1
	str	r3, [sp, #28]
	bcc	.LCB1539
	b	.L131	@long jump
.LCB1539:
	mov	r0, #1
.L137:
	.loc 1 461 0
	add	sp, sp, #68
	@ sp needed for prologue
.LVL105:
	pop	{r4, r5, r6, r7, pc}
.L176:
	.align	2
.L175:
	.word	67109384
	.word	-1606393856
	.word	67109284
	.word	100000
	.word	67109281
	.word	-1488953344
	.word	68157456
	.word	_NJSD_relativeCardAddress
	.word	2999
.LFE119:
	.size	_NJSD_writeSectors, .-_NJSD_writeSectors
	.align	2
	.global	_NJSD_startup
	.code 16
	.thumb_func
	.type	_NJSD_startup, %function
_NJSD_startup:
.LFB118:
	.loc 1 435 0
	push	{lr}
.LCFI24:
.LBB13:
.LBB14:
	.loc 1 123 0
	ldr	r2, .L187
	ldr	r3, .L187+4
	.loc 1 125 0
	mov	r0, #128
	.loc 1 123 0
	str	r3, [r2]
	.loc 1 125 0
	ldr	r3, .L187+8
	lsl	r0, r0, #13
.LBE14:
.LBE13:
	.loc 1 435 0
	sub	sp, sp, #4
.LCFI25:
.LBB15:
.LBB16:
	.loc 1 125 0
	str	r0, [r3]
	.loc 1 127 0
	bl	irqDisable
.LBE16:
	.loc 1 129 0
	bl	_NJSD_reset
.LBB17:
	cmp	r0, #0
	beq	.L178
	b	.L185
.L186:
.LBE17:
.LBE15:
.LBB18:
	.loc 1 400 0
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	_NJSD_sendCMDN
.LBB19:
	cmp	r0, #0
	beq	.L178
	.loc 1 403 0
	mov	r1, #8
	mov	r0, #0
	bl	_NJSD_sendCLK
	.loc 1 405 0
	mov	r1, #128
	lsl	r1, r1, #1
	mov	r0, #0
	bl	_NJSD_sendCLK
	.loc 1 406 0
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0
	bl	_NJSD_sendCMDN
	.loc 1 407 0
	mov	r1, #8
	mov	r0, #0
	bl	_NJSD_sendCLK
.LBE19:
	.loc 1 409 0
	mov	r2, #1
	ldr	r0, .L187+12
	ldr	r1, .L187+16
	ldr	r3, .L187+20
	bl	_SD_InitCard
	lsl	r0, r0, #24
	mov	r2, #0
	cmp	r0, #0
	bne	.L182
	mov	r2, #1
.L182:
	mov	r3, #1
	eor	r3, r3, r2
	lsl	r3, r3, #24
	lsr	r0, r3, #24
	b	.L183
.L178:
	mov	r0, #0
	b	.L183
.L185:
	.loc 1 397 0
	mov	r1, #128
	mov	r0, #0
	lsl	r1, r1, #1
	bl	_NJSD_sendCLK
.LBB20:
	cmp	r0, #0
	beq	.L178
	b	.L186
.L183:
.LBE20:
.LBE18:
	.loc 1 443 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L188:
	.align	2
.L187:
	.word	_NJSD_cardFlags
	.word	-1606393856
	.word	67109396
	.word	_NJSD_cmd_6byte_response
	.word	_NJSD_cmd_17byte_response
	.word	_NJSD_relativeCardAddress
.LFE118:
	.size	_NJSD_startup, .-_NJSD_startup
	.global	_io_njsd
	.section	.rodata
	.align	2
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
	.bss
	.align	2
_NJSD_relativeCardAddress:
	.space	4
	.align	2
_NJSD_cardFlags:
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
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.byte	0x4
	.4byte	.LCFI0-.LFB104
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
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.byte	0x4
	.4byte	.LCFI1-.LFB105
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
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x4
	.4byte	.LCFI2-.LFB106
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x4
	.4byte	.LCFI4-.LFB108
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
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x4
	.4byte	.LCFI6-.LFB110
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI8-.LFB111
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
	.uleb128 0x20
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI10-.LFB112
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.byte	0x4
	.4byte	.LCFI12-.LFB113
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.byte	0x4
	.4byte	.LCFI14-.LFB115
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.byte	0x4
	.4byte	.LCFI16-.LFB116
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.byte	0x4
	.4byte	.LCFI18-.LFB117
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.byte	0x4
	.4byte	.LCFI20-.LFB120
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
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x230
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.byte	0x4
	.4byte	.LCFI22-.LFB119
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
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x58
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.byte	0x4
	.4byte	.LCFI24-.LFB118
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE26:
	.file 2 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 5 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/disc_io.h"
	.file 6 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB104-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE104-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB105-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE105-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB106-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE106-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB108-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL29-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL25-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LFB110-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LFB112-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LFB113-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LFB115-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LFB116-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LFB117-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LFB120-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 560
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL69-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL84-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL80-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LFB119-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI23-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 88
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL88-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LFB118-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x919
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF96
	.byte	0x1
	.4byte	.LASF97
	.4byte	.LASF98
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF5
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
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x54
	.4byte	0x5e
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x45
	.4byte	0x53
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
	.ascii	"u32\000"
	.byte	0x2
	.byte	0x61
	.4byte	0x53
	.uleb128 0x6
	.4byte	0xc4
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
	.4byte	0xaf
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x3d
	.4byte	0xda
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe0
	.uleb128 0x9
	.byte	0x1
	.4byte	0xc4
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x3e
	.4byte	0xda
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x3f
	.4byte	0xfc
	.uleb128 0x8
	.byte	0x4
	.4byte	0x102
	.uleb128 0xa
	.4byte	0x11c
	.byte	0x1
	.4byte	0xc4
	.uleb128 0xb
	.4byte	0xa4
	.uleb128 0xb
	.4byte	0xa4
	.uleb128 0xb
	.4byte	0x11c
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x40
	.4byte	0x129
	.uleb128 0x8
	.byte	0x4
	.4byte	0x12f
	.uleb128 0xa
	.4byte	0x149
	.byte	0x1
	.4byte	0xc4
	.uleb128 0xb
	.4byte	0xa4
	.uleb128 0xb
	.4byte	0xa4
	.uleb128 0xb
	.4byte	0x149
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x14f
	.uleb128 0xd
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x41
	.4byte	0xda
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x42
	.4byte	0xda
	.uleb128 0xe
	.4byte	0x1e3
	.4byte	.LASF99
	.byte	0x20
	.byte	0x5
	.byte	0x44
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x5
	.byte	0x45
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x5
	.byte	0x46
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x5
	.byte	0x47
	.4byte	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x5
	.byte	0x48
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x5
	.byte	0x49
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x5
	.byte	0x4a
	.4byte	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x5
	.byte	0x4b
	.4byte	0x150
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x5
	.byte	0x4c
	.4byte	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x5
	.byte	0x4f
	.4byte	0x166
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.4byte	0x21d
	.byte	0x1
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x4
	.byte	0xa0
	.4byte	0x1fc
	.uleb128 0x10
	.4byte	0x2a0
	.2byte	0x2018
	.byte	0x4
	.2byte	0x119
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x11a
	.4byte	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x11d
	.4byte	0x81
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x120
	.4byte	0x2a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x121
	.4byte	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x122
	.4byte	0x2b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x123
	.4byte	0x81
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x124
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.byte	0x0
	.uleb128 0x12
	.4byte	0x2b1
	.4byte	0x81
	.uleb128 0x13
	.4byte	0x1ee
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x81
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x126
	.4byte	0x228
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9a
	.uleb128 0x15
	.4byte	0x2f3
	.4byte	.LASF46
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	0xc4
	.4byte	.LFB104
	.4byte	.LFE104
	.4byte	.LLST0
	.uleb128 0x16
	.ascii	"i\000"
	.byte	0x1
	.byte	0x55
	.4byte	0x73
	.4byte	.LLST1
	.byte	0x0
	.uleb128 0x17
	.4byte	0x380
	.4byte	.LASF47
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.4byte	.LFB105
	.4byte	.LFE105
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	.LASF48
	.byte	0x1
	.byte	0x60
	.4byte	0x9a
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF49
	.byte	0x1
	.byte	0x60
	.4byte	0x9a
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF50
	.byte	0x1
	.byte	0x60
	.4byte	0x9a
	.4byte	.LLST5
	.uleb128 0x18
	.4byte	.LASF51
	.byte	0x1
	.byte	0x60
	.4byte	0x9a
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LASF52
	.byte	0x1
	.byte	0x60
	.4byte	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.4byte	.LASF53
	.byte	0x1
	.byte	0x60
	.4byte	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.4byte	.LASF54
	.byte	0x1
	.byte	0x60
	.4byte	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.4byte	.LASF55
	.byte	0x1
	.byte	0x60
	.4byte	0x9a
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x15
	.4byte	0x3a8
	.4byte	.LASF56
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.4byte	0xc4
	.4byte	.LFB106
	.4byte	.LFE106
	.4byte	.LLST7
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.byte	0x6d
	.4byte	0x73
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x15
	.4byte	0x43a
	.4byte	.LASF57
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.4byte	0xc4
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LASF58
	.byte	0x1
	.byte	0x87
	.4byte	0x73
	.4byte	.LLST9
	.uleb128 0x18
	.4byte	.LASF59
	.byte	0x1
	.byte	0x87
	.4byte	0x2c3
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	.LASF60
	.byte	0x1
	.byte	0x87
	.4byte	0x73
	.4byte	.LLST11
	.uleb128 0x1b
	.ascii	"cmd\000"
	.byte	0x1
	.byte	0x87
	.4byte	0x9a
	.4byte	.LLST12
	.uleb128 0x18
	.4byte	.LASF61
	.byte	0x1
	.byte	0x87
	.4byte	0xa4
	.4byte	.LLST13
	.uleb128 0x16
	.ascii	"i\000"
	.byte	0x1
	.byte	0x88
	.4byte	0x73
	.4byte	.LLST14
	.uleb128 0x1c
	.4byte	.LASF62
	.byte	0x1
	.byte	0x89
	.4byte	0xa4
	.4byte	.LLST15
	.uleb128 0x1d
	.4byte	.LASF63
	.byte	0x1
	.byte	0x8c
	.4byte	0xa4
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x496
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x136
	.byte	0x1
	.4byte	0xc4
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST16
	.uleb128 0x1f
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x136
	.4byte	0x73
	.4byte	.LLST17
	.uleb128 0x1f
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x136
	.4byte	0x73
	.4byte	.LLST18
	.uleb128 0x20
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x137
	.4byte	0x73
	.4byte	.LLST19
	.uleb128 0x21
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x13a
	.4byte	0xa4
	.4byte	.LLST20
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x502
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x15c
	.byte	0x1
	.4byte	0xc4
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST21
	.uleb128 0x1f
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x15c
	.4byte	0x73
	.4byte	.LLST22
	.uleb128 0x22
	.ascii	"cmd\000"
	.byte	0x1
	.2byte	0x15c
	.4byte	0x9a
	.4byte	.LLST23
	.uleb128 0x1f
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x15c
	.4byte	0xa4
	.4byte	.LLST24
	.uleb128 0x20
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x15d
	.4byte	0x73
	.4byte	.LLST25
	.uleb128 0x21
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x160
	.4byte	0xa4
	.4byte	.LLST26
	.byte	0x0
	.uleb128 0x23
	.4byte	0x551
	.byte	0x1
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x183
	.byte	0x1
	.4byte	0xc4
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST27
	.uleb128 0x1f
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x183
	.4byte	0x2c3
	.4byte	.LLST28
	.uleb128 0x1f
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x183
	.4byte	0x9a
	.4byte	.LLST29
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x183
	.4byte	0xa4
	.4byte	.LLST30
	.byte	0x0
	.uleb128 0x23
	.4byte	0x5a0
	.byte	0x1
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x187
	.byte	0x1
	.4byte	0xc4
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST31
	.uleb128 0x1f
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x187
	.4byte	0x2c3
	.4byte	.LLST32
	.uleb128 0x1f
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x187
	.4byte	0x9a
	.4byte	.LLST33
	.uleb128 0x1f
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x187
	.4byte	0xa4
	.4byte	.LLST34
	.byte	0x0
	.uleb128 0x23
	.4byte	0x5ce
	.byte	0x1
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1a0
	.byte	0x1
	.4byte	0xc4
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LLST35
	.uleb128 0x24
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x5ce
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0x0
	.uleb128 0x12
	.4byte	0x5de
	.4byte	0x9a
	.uleb128 0x25
	.4byte	0x1ee
	.byte	0x7
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1ab
	.byte	0x1
	.4byte	0xc4
	.4byte	.LFB116
	.4byte	.LFE116
	.4byte	.LLST36
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1af
	.byte	0x1
	.4byte	0xc4
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LLST37
	.uleb128 0x23
	.4byte	0x69e
	.byte	0x1
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1d0
	.byte	0x1
	.4byte	0xc4
	.4byte	.LFB120
	.4byte	.LFE120
	.4byte	.LLST38
	.uleb128 0x1f
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1d0
	.4byte	0xa4
	.4byte	.LLST39
	.uleb128 0x1f
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1d0
	.4byte	0xa4
	.4byte	.LLST40
	.uleb128 0x1f
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x11c
	.4byte	.LLST41
	.uleb128 0x27
	.ascii	"tmp\000"
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x69e
	.byte	0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x20
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x73
	.4byte	.LLST42
	.uleb128 0x24
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1d5
	.4byte	0xa4
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x21
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x2c3
	.4byte	.LLST43
	.byte	0x0
	.uleb128 0x12
	.4byte	0x6ae
	.4byte	0xa4
	.uleb128 0x25
	.4byte	0x1ee
	.byte	0x7f
	.byte	0x0
	.uleb128 0x28
	.4byte	0x70b
	.4byte	.LASF79
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.4byte	0xc4
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF77
	.byte	0x1
	.byte	0xd6
	.4byte	0x2c3
	.uleb128 0x29
	.4byte	.LASF80
	.byte	0x1
	.byte	0xd6
	.4byte	0x2c3
	.uleb128 0x29
	.4byte	.LASF81
	.byte	0x1
	.byte	0xd6
	.4byte	0xa4
	.uleb128 0x2a
	.ascii	"i\000"
	.byte	0x1
	.byte	0xd7
	.4byte	0x73
	.uleb128 0x2b
	.4byte	.LASF67
	.byte	0x1
	.byte	0xd8
	.4byte	0x70b
	.uleb128 0x2b
	.4byte	.LASF62
	.byte	0x1
	.byte	0xd9
	.4byte	0xa4
	.uleb128 0x2b
	.4byte	.LASF63
	.byte	0x1
	.byte	0xdc
	.4byte	0xa4
	.byte	0x0
	.uleb128 0x12
	.4byte	0x71b
	.4byte	0x9a
	.uleb128 0x25
	.4byte	0x1ee
	.byte	0x5
	.byte	0x0
	.uleb128 0x23
	.4byte	0x7db
	.byte	0x1
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1be
	.byte	0x1
	.4byte	0xc4
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LLST44
	.uleb128 0x1f
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1be
	.4byte	0xa4
	.4byte	.LLST45
	.uleb128 0x1f
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1be
	.4byte	0xa4
	.4byte	.LLST46
	.uleb128 0x1f
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1be
	.4byte	0x149
	.4byte	.LLST47
	.uleb128 0x27
	.ascii	"crc\000"
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x5ce
	.byte	0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x24
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1c0
	.4byte	0xa4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x2c3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.4byte	0x6ae
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x1c6
	.uleb128 0x2d
	.4byte	0x6d5
	.uleb128 0x2d
	.4byte	0x6ca
	.uleb128 0x2d
	.4byte	0x6bf
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2f
	.4byte	0x6e0
	.4byte	.LLST48
	.uleb128 0x30
	.4byte	0x6e9
	.byte	0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x2f
	.4byte	0x6f4
	.4byte	.LLST49
	.uleb128 0x30
	.4byte	0x6ff
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	0x7f8
	.4byte	.LASF83
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.4byte	0xc4
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF84
	.byte	0x1
	.byte	0x7a
	.4byte	0xa4
	.byte	0x0
	.uleb128 0x31
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x18b
	.byte	0x1
	.4byte	0xc4
	.byte	0x1
	.uleb128 0x23
	.4byte	0x84b
	.byte	0x1
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1b3
	.byte	0x1
	.4byte	0xc4
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LLST50
	.uleb128 0x32
	.4byte	0x83a
	.4byte	0x7db
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.2byte	0x1b4
	.uleb128 0x2d
	.4byte	0x7ec
	.byte	0x0
	.uleb128 0x33
	.4byte	0x7f8
	.4byte	.LBB18
	.4byte	.LBE18
	.byte	0x1
	.2byte	0x1b7
	.byte	0x0
	.uleb128 0x34
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x129
	.4byte	0x857
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2b7
	.uleb128 0x1d
	.4byte	.LASF87
	.byte	0x1
	.byte	0x4b
	.4byte	0x86e
	.byte	0x5
	.byte	0x3
	.4byte	_NJSD_read_cmd
	.uleb128 0x35
	.4byte	0x5ce
	.uleb128 0x1d
	.4byte	.LASF88
	.byte	0x1
	.byte	0x4c
	.4byte	0x884
	.byte	0x5
	.byte	0x3
	.4byte	_NJSD_read_end_cmd
	.uleb128 0x35
	.4byte	0x5ce
	.uleb128 0x36
	.4byte	.LASF89
	.byte	0x1
	.byte	0x4e
	.4byte	0x895
	.byte	0x2
	.uleb128 0x35
	.4byte	0x73
	.uleb128 0x1d
	.4byte	.LASF90
	.byte	0x1
	.byte	0x50
	.4byte	0xa4
	.byte	0x5
	.byte	0x3
	.4byte	_NJSD_cardFlags
	.uleb128 0x1d
	.4byte	.LASF91
	.byte	0x1
	.byte	0x52
	.4byte	0xa4
	.byte	0x5
	.byte	0x3
	.4byte	_NJSD_relativeCardAddress
	.uleb128 0x37
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x248
	.4byte	0x8cf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_io_njsd
	.uleb128 0x35
	.4byte	0x1e3
	.uleb128 0x12
	.4byte	0x8df
	.4byte	0x3e
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF93
	.byte	0x6
	.byte	0x2c
	.4byte	0x8d4
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0x8f7
	.4byte	0x3e
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF94
	.byte	0x6
	.byte	0x2d
	.4byte	0x8ec
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0x90f
	.4byte	0x3e
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF95
	.byte	0x6
	.byte	0x2e
	.4byte	0x904
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0x1d
	.byte	0x0
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.uleb128 0x21
	.byte	0x0
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
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xd3
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x91d
	.4byte	0x502
	.ascii	"_NJSD_cmd_6byte_response\000"
	.4byte	0x551
	.ascii	"_NJSD_cmd_17byte_response\000"
	.4byte	0x5a0
	.ascii	"_NJSD_isInserted\000"
	.4byte	0x5de
	.ascii	"_NJSD_clearStatus\000"
	.4byte	0x5f8
	.ascii	"_NJSD_shutdown\000"
	.4byte	0x612
	.ascii	"_NJSD_readSectors\000"
	.4byte	0x71b
	.ascii	"_NJSD_writeSectors\000"
	.4byte	0x806
	.ascii	"_NJSD_startup\000"
	.4byte	0x8bc
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
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF39:
	.ascii	"clearColor\000"
.LASF86:
	.ascii	"glGlob\000"
.LASF29:
	.ascii	"fn_clearStatus\000"
.LASF11:
	.ascii	"uint32\000"
.LASF35:
	.ascii	"GL_MODELVIEW\000"
.LASF92:
	.ascii	"_io_njsd\000"
.LASF69:
	.ascii	"_NJSD_cmd_6byte_response\000"
.LASF46:
	.ascii	"_NJSD_waitIRQ\000"
.LASF36:
	.ascii	"GL_TEXTURE\000"
.LASF80:
	.ascii	"crc_buf\000"
.LASF37:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF89:
	.ascii	"_NJSD_speed\000"
.LASF4:
	.ascii	"long int\000"
.LASF79:
	.ascii	"_NJSD_writeSector\000"
.LASF97:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_"
	.ascii	"io/io_njsd.c\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF62:
	.ascii	"data\000"
.LASF0:
	.ascii	"signed char\000"
.LASF82:
	.ascii	"_NJSD_writeSectors\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF95:
	.ascii	"TAN_bin\000"
.LASF90:
	.ascii	"_NJSD_cardFlags\000"
.LASF47:
	.ascii	"_NJSD_writeCardCommand\000"
.LASF18:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF20:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF75:
	.ascii	"sector\000"
.LASF32:
	.ascii	"char\000"
.LASF31:
	.ascii	"IO_INTERFACE\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF84:
	.ascii	"flags\000"
.LASF63:
	.ascii	"old_REG_IME\000"
.LASF13:
	.ascii	"double\000"
.LASF40:
	.ascii	"textures\000"
.LASF34:
	.ascii	"GL_POSITION\000"
.LASF98:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF23:
	.ascii	"ioType\000"
.LASF48:
	.ascii	"cmd0\000"
.LASF49:
	.ascii	"cmd1\000"
.LASF51:
	.ascii	"cmd3\000"
.LASF53:
	.ascii	"cmd5\000"
.LASF55:
	.ascii	"cmd7\000"
.LASF26:
	.ascii	"fn_isInserted\000"
.LASF58:
	.ascii	"speed\000"
.LASF99:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF76:
	.ascii	"numSectors\000"
.LASF17:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF64:
	.ascii	"_NJSD_sendCLK\000"
.LASF87:
	.ascii	"_NJSD_read_cmd\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF61:
	.ascii	"param\000"
.LASF22:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF59:
	.ascii	"rsp_buf\000"
.LASF94:
	.ascii	"SIN_bin\000"
.LASF38:
	.ascii	"matrixMode\000"
.LASF42:
	.ascii	"nextBlock\000"
.LASF74:
	.ascii	"_NJSD_readSectors\000"
.LASF73:
	.ascii	"_NJSD_shutdown\000"
.LASF70:
	.ascii	"_NJSD_cmd_17byte_response\000"
.LASF8:
	.ascii	"long long int\000"
.LASF33:
	.ascii	"GL_PROJECTION\000"
.LASF71:
	.ascii	"_NJSD_isInserted\000"
.LASF93:
	.ascii	"COS_bin\000"
.LASF65:
	.ascii	"count\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF85:
	.ascii	"_NJSD_startup\000"
.LASF27:
	.ascii	"fn_readSectors\000"
.LASF81:
	.ascii	"offset\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF16:
	.ascii	"bool\000"
.LASF41:
	.ascii	"activeTexture\000"
.LASF25:
	.ascii	"fn_startup\000"
.LASF21:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF96:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF68:
	.ascii	"command\000"
.LASF78:
	.ascii	"tbuf\000"
.LASF52:
	.ascii	"cmd4\000"
.LASF60:
	.ascii	"type\000"
.LASF28:
	.ascii	"fn_writeSectors\000"
.LASF67:
	.ascii	"responseBuffer\000"
.LASF24:
	.ascii	"features\000"
.LASF44:
	.ascii	"nameCount\000"
.LASF14:
	.ascii	"false\000"
.LASF50:
	.ascii	"cmd2\000"
.LASF54:
	.ascii	"cmd6\000"
.LASF57:
	.ascii	"_NJSD_sendCMDR\000"
.LASF56:
	.ascii	"_NJSD_reset\000"
.LASF88:
	.ascii	"_NJSD_read_end_cmd\000"
.LASF77:
	.ascii	"buffer\000"
.LASF100:
	.ascii	"_NJSD_cardInit\000"
.LASF2:
	.ascii	"short int\000"
.LASF43:
	.ascii	"nextPBlock\000"
.LASF19:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF15:
	.ascii	"true\000"
.LASF30:
	.ascii	"fn_shutdown\000"
.LASF66:
	.ascii	"_NJSD_sendCMDN\000"
.LASF83:
	.ascii	"_NJSD_init\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF72:
	.ascii	"_NJSD_clearStatus\000"
.LASF12:
	.ascii	"float\000"
.LASF45:
	.ascii	"gl_hidden_globals\000"
.LASF91:
	.ascii	"_NJSD_relativeCardAddress\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
