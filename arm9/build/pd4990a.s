	.code	16
	.file	"pd4990a.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	pd4990a_init
	.code 16
	.thumb_func
	.type	pd4990a_init, %function
pd4990a_init:
.LFB108:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/pd4990a.c"
	.loc 1 84 0
	.loc 1 87 0
	ldr	r3, .L3
	.loc 1 90 0
	mov	r2, #9
	str	r2, [r3, #12]
	.loc 1 91 0
	str	r2, [r3, #16]
	.loc 1 92 0
	mov	r2, #115
	.loc 1 87 0
	mov	r1, #0
	.loc 1 92 0
	str	r2, [r3, #20]
	.loc 1 93 0
	mov	r2, #1
	.loc 1 87 0
	str	r1, [r3]
	.loc 1 88 0
	str	r1, [r3, #4]
	.loc 1 89 0
	str	r1, [r3, #8]
	.loc 1 93 0
	str	r2, [r3, #24]
	.loc 1 95 0
	ldr	r3, .L3+4
	.loc 1 84 0
	@ lr needed for prologue
	.loc 1 95 0
	str	r1, [r3]
	.loc 1 96 0
	ldr	r3, .L3+8
	.loc 1 104 0
	@ sp needed for prologue
	.loc 1 96 0
	str	r1, [r3]
	.loc 1 97 0
	ldr	r3, .L3+12
	strb	r1, [r3]
	.loc 1 98 0
	ldr	r3, .L3+16
	strb	r1, [r3]
	.loc 1 99 0
	ldr	r3, .L3+20
	str	r1, [r3]
	.loc 1 100 0
	ldr	r3, .L3+24
	str	r1, [r3]
	.loc 1 102 0
	ldr	r3, .L3+28
	str	r1, [r3]
	.loc 1 103 0
	ldr	r3, .L3+32
	str	r1, [r3]
	.loc 1 104 0
	bx	lr
.L4:
	.align	2
.L3:
	.word	pd4990a
	.word	retraces
	.word	testbit
	.word	reading
	.word	writing
	.word	shiftlo
	.word	shifthi
	.word	outputbit
	.word	bitno
.LFE108:
	.size	pd4990a_init, .-pd4990a_init
	.align	2
	.global	pd4990a_increment_month
	.code 16
	.thumb_func
	.type	pd4990a_increment_month, %function
pd4990a_increment_month:
.LFB110:
	.loc 1 160 0
	push	{lr}
.LCFI0:
	.loc 1 161 0
	ldr	r2, .L12
	ldr	r3, [r2, #16]
	add	r3, r3, #1
	str	r3, [r2, #16]
	.loc 1 162 0
	cmp	r3, #13
	bne	.L11
	.loc 1 164 0
	mov	r3, #1
	str	r3, [r2, #16]
	.loc 1 165 0
	ldr	r3, [r2, #20]
	add	r1, r3, #1
	.loc 1 166 0
	mov	r3, #15
	and	r3, r3, r1
	.loc 1 165 0
	str	r1, [r2, #20]
	.loc 1 166 0
	cmp	r3, #9
	ble	.L8
	.loc 1 168 0
	mov	r3, #240
	and	r3, r3, r1
	.loc 1 169 0
	add	r3, r3, #16
	str	r3, [r2, #20]
.L8:
	.loc 1 171 0
	ldr	r3, [r2, #20]
	cmp	r3, #160
	bne	.L11
	.loc 1 172 0
	mov	r3, #0
	str	r3, [r2, #20]
.L11:
	.loc 1 174 0
	@ sp needed for prologue
	pop	{pc}
.L13:
	.align	2
.L12:
	.word	pd4990a
.LFE110:
	.size	pd4990a_increment_month, .-pd4990a_increment_month
	.global	__aeabi_idivmod
	.align	2
	.global	pd4990a_increment_day
	.code 16
	.thumb_func
	.type	pd4990a_increment_day, %function
pd4990a_increment_day:
.LFB109:
	.loc 1 107 0
	push	{r4, r5, r6, lr}
.LCFI1:
	.loc 1 110 0
	ldr	r5, .L34
	.loc 1 111 0
	mov	r0, #15
	.loc 1 110 0
	ldr	r3, [r5, #12]
	add	r2, r3, #1
	.loc 1 111 0
	mov	r3, r2
	and	r3, r3, r0
	.loc 1 110 0
	str	r2, [r5, #12]
	.loc 1 111 0
	cmp	r3, #9
	ble	.L15
	.loc 1 113 0
	mov	r3, #240
	and	r3, r3, r2
	.loc 1 114 0
	add	r3, r3, #16
	str	r3, [r5, #12]
.L15:
	.loc 1 117 0
	ldr	r3, [r5, #24]
	add	r3, r3, #1
	str	r3, [r5, #24]
	.loc 1 118 0
	cmp	r3, #7
	bne	.L17
	.loc 1 119 0
	mov	r3, #0
	str	r3, [r5, #24]
.L17:
	.loc 1 121 0
	ldr	r3, [r5, #16]
	cmp	r3, #12
	bhi	.L31
	mov	r6, #1
	mov	r2, r6
	lsl	r2, r2, r3
	ldr	r3, .L34+4
	tst	r2, r3
	bne	.L20
	mov	r3, #165
	lsl	r3, r3, #4
	tst	r2, r3
	bne	.L22
	lsl	r3, r2, #29
	bmi	.L21
	b	.L31
.L20:
	.loc 1 124 0
	ldr	r3, [r5, #12]
	cmp	r3, #50
	bne	.L31
	b	.L32
.L21:
	.loc 1 131 0
	ldr	r2, [r5, #20]
	asr	r1, r2, #4
	lsl	r3, r1, #2
	add	r3, r3, r1
	lsl	r3, r3, #1
	and	r2, r2, r0
	add	r4, r3, r2
.LVL0:
	.loc 1 132 0
	mov	r3, #3
	tst	r4, r3
	beq	.L24
	mov	r0, r4
	mov	r1, #100
	bl	__aeabi_idivmod
	cmp	r1, #0
	beq	.L26
	mov	r1, #200
	mov	r0, r4
	lsl	r1, r1, #1
	bl	__aeabi_idivmod
	cmp	r1, #0
	beq	.L24
.L26:
	.loc 1 134 0
	ldr	r3, [r5, #12]
	cmp	r3, #41
	bne	.L31
	b	.L32
.L24:
	.loc 1 142 0
	ldr	r2, .L34
	ldr	r3, [r2, #12]
	cmp	r3, #48
	bne	.L31
	.loc 1 144 0
	mov	r3, #1
	str	r3, [r2, #12]
	b	.L33
.LVL1:
.L22:
	.loc 1 150 0
	ldr	r3, [r5, #12]
	cmp	r3, #49
	bne	.L31
.LVL2:
.L32:
	.loc 1 152 0
	str	r6, [r5, #12]
.L33:
	.loc 1 153 0
	bl	pd4990a_increment_month
.L31:
	.loc 1 157 0
	@ sp needed for prologue
.LVL3:
	pop	{r4, r5, r6, pc}
.L35:
	.align	2
.L34:
	.word	pd4990a
	.word	5546
.LFE109:
	.size	pd4990a_increment_day, .-pd4990a_increment_day
	.align	2
	.global	pd4990a_addretrace
	.code 16
	.thumb_func
	.type	pd4990a_addretrace, %function
pd4990a_addretrace:
.LFB107:
	.loc 1 46 0
	push	{r4, r5, lr}
.LCFI2:
	.loc 1 47 0
	ldr	r0, .L48
	.loc 1 48 0
	ldr	r2, .L48+4
	.loc 1 47 0
	ldr	r3, [r0]
	.loc 1 48 0
	ldr	r2, [r2]
	.loc 1 47 0
	add	r3, r3, #1
	.loc 1 46 0
	sub	sp, sp, #4
.LCFI3:
	.loc 1 47 0
	str	r3, [r0]
	.loc 1 48 0
	cmp	r3, r2
	blt	.L37
	.loc 1 50 0
	ldr	r1, .L48+8
	mov	r2, #1
	ldr	r3, [r1]
	eor	r3, r3, r2
	str	r3, [r1]
	.loc 1 51 0
	mov	r3, #0
	str	r3, [r0]
.L37:
	.loc 1 53 0
	ldr	r2, .L48+12
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	.loc 1 54 0
	cmp	r3, #59
	ble	.L47
	.loc 1 57 0
	ldr	r1, .L48+16
	.loc 1 56 0
	mov	r5, #0
	.loc 1 57 0
	ldr	r3, [r1]
	.loc 1 56 0
	str	r5, [r2]
	.loc 1 57 0
	add	r2, r3, #1
	.loc 1 58 0
	mov	r4, #15
	mov	r3, r2
	and	r3, r3, r4
	.loc 1 57 0
	str	r2, [r1]
	.loc 1 58 0
	cmp	r3, #9
	ble	.L47
	.loc 1 61 0
	mov	r0, #240
	mov	r3, r2
	and	r3, r3, r0
	add	r3, r3, #16
	str	r3, [r1]
	.loc 1 62 0
	cmp	r3, #95
	ble	.L47
	.loc 1 65 0
	ldr	r3, [r1, #4]
	.loc 1 64 0
	str	r5, [r1]
	.loc 1 65 0
	add	r2, r3, #1
	.loc 1 66 0
	mov	r3, r2
	and	r3, r3, r4
	.loc 1 65 0
	str	r2, [r1, #4]
	.loc 1 66 0
	cmp	r3, #9
	ble	.L47
	.loc 1 69 0
	mov	r3, r2
	and	r3, r3, r0
	add	r3, r3, #16
	str	r3, [r1, #4]
	.loc 1 70 0
	cmp	r3, #95
	ble	.L47
	.loc 1 73 0
	ldr	r3, [r1, #8]
	.loc 1 72 0
	str	r5, [r1, #4]
	.loc 1 73 0
	add	r2, r3, #1
	.loc 1 74 0
	mov	r3, r2
	and	r3, r3, r4
	.loc 1 73 0
	str	r2, [r1, #8]
	.loc 1 74 0
	cmp	r3, #9
	ble	.L47
	.loc 1 77 0
	mov	r3, r2
	and	r3, r3, r0
	add	r3, r3, #16
	str	r3, [r1, #8]
	.loc 1 78 0
	cmp	r3, #35
	ble	.L47
	.loc 1 80 0
	str	r5, [r1, #8]
	.loc 1 81 0
	bl	pd4990a_increment_day
.L47:
	.loc 1 82 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{r4, r5, pc}
.L49:
	.align	2
.L48:
	.word	testwaits
	.word	maxwaits
	.word	testbit
	.word	retraces
	.word	pd4990a
.LFE107:
	.size	pd4990a_addretrace, .-pd4990a_addretrace
	.align	2
	.global	read_4990_output
	.code 16
	.thumb_func
	.type	read_4990_output, %function
read_4990_output:
.LFB111:
	.loc 1 177 0
	ldr	r3, .L52
	@ lr needed for prologue
	.loc 1 177 0
	ldr	r0, [r3]
	ldr	r3, .L52+4
	lsl	r0, r0, #6
	ldr	r3, [r3]
	.loc 1 179 0
	@ sp needed for prologue
	.loc 1 177 0
	lsl	r3, r3, #7
	orr	r0, r0, r3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	.loc 1 179 0
	bx	lr
.L53:
	.align	2
.L52:
	.word	testbit
	.word	outputbit
.LFE111:
	.size	read_4990_output, .-read_4990_output
	.align	2
	.global	read_4990_testbit
	.code 16
	.thumb_func
	.type	read_4990_testbit, %function
read_4990_testbit:
.LFB112:
	.loc 1 182 0
	ldr	r3, .L56
	@ lr needed for prologue
	.loc 1 182 0
	ldrh	r0, [r3]
	.loc 1 184 0
	@ sp needed for prologue
	bx	lr
.L57:
	.align	2
.L56:
	.word	testbit
.LFE112:
	.size	read_4990_testbit, .-read_4990_testbit
	.align	2
	.global	read_4990_databit
	.code 16
	.thumb_func
	.type	read_4990_databit, %function
read_4990_databit:
.LFB113:
	.loc 1 187 0
	ldr	r3, .L60
	@ lr needed for prologue
	.loc 1 187 0
	ldrh	r0, [r3]
	.loc 1 189 0
	@ sp needed for prologue
	bx	lr
.L61:
	.align	2
.L60:
	.word	outputbit
.LFE113:
	.size	read_4990_databit, .-read_4990_databit
	.align	2
	.code 16
	.thumb_func
	.type	pd4990a_readbit, %function
pd4990a_readbit:
.LFB114:
	.loc 1 192 0
	push	{lr}
.LCFI4:
	.loc 1 193 0
	ldr	r3, .L78
	ldr	r2, [r3]
	cmp	r2, #31
	bgt	.L71
	cmp	r2, #24
	bge	.L67
	cmp	r2, #15
	bgt	.L66
	cmp	r2, #8
	bge	.L65
	cmp	r2, #0
	bge	.L74
	b	.L73
.L71:
	cmp	r2, #39
	bgt	.L72
	cmp	r2, #36
	bge	.L69
	b	.L75
.L72:
	cmp	r2, #47
	bgt	.L73
	b	.L76
.L74:
	.loc 1 197 0
	ldr	r3, .L78+4
	ldr	r1, .L78+8
	ldr	r3, [r3]
	b	.L77
.L65:
	.loc 1 201 0
	ldr	r3, .L78+4
	ldr	r1, .L78+8
	ldr	r3, [r3, #4]
	sub	r2, r2, #8
	b	.L77
.L66:
	.loc 1 205 0
	ldr	r3, .L78+4
	ldr	r1, .L78+8
	ldr	r3, [r3, #8]
	sub	r2, r2, #16
	b	.L77
.L67:
	.loc 1 209 0
	ldr	r3, .L78+4
	ldr	r1, .L78+8
	ldr	r3, [r3, #12]
	sub	r2, r2, #24
	b	.L77
.L75:
	.loc 1 212 0
	ldr	r3, .L78+4
	ldr	r1, .L78+8
	ldr	r3, [r3, #24]
	sub	r2, r2, #32
	b	.L77
.L69:
	.loc 1 215 0
	ldr	r3, .L78+4
	ldr	r1, .L78+8
	ldr	r3, [r3, #16]
	sub	r2, r2, #36
	b	.L77
.L76:
	.loc 1 219 0
	ldr	r3, .L78+4
	ldr	r1, .L78+8
	ldr	r3, [r3, #20]
	sub	r2, r2, #40
.L77:
	asr	r3, r3, r2
	mov	r2, #1
	and	r3, r3, r2
	str	r3, [r1]
.L73:
	.loc 1 225 0
	@ sp needed for prologue
	pop	{pc}
.L79:
	.align	2
.L78:
	.word	bitno
	.word	pd4990a
	.word	outputbit
.LFE114:
	.size	pd4990a_readbit, .-pd4990a_readbit
	.align	2
	.global	pd4990a_serial_control
	.code 16
	.thumb_func
	.type	pd4990a_serial_control, %function
pd4990a_serial_control:
.LFB121:
	.loc 1 308 0
	push	{r4, r5, r6, lr}
.LCFI5:
.LVL4:
	.loc 1 313 0
	ldr	r3, .L108
	.loc 1 308 0
	sub	sp, sp, #8
.LCFI6:
	.loc 1 313 0
	ldr	r3, [r3]
	.loc 1 308 0
	str	r0, [sp, #4]
	.loc 1 313 0
	cmp	r3, #0
	beq	.L81
.LVL5:
	mov	r1, r0
	lsl	r1, r1, #29
	bmi	.L81
.LVL6:
.LBB20:
.LBB21:
.LBB22:
.LBB23:
	.loc 1 262 0
	ldr	r3, .L108+4
	ldr	r2, [r3]
	cmp	r2, #31
	bgt	.L84
	.loc 1 263 0
	ldr	r3, .L108+8
	sub	r2, r2, #4
	b	.L105
.L84:
	.loc 1 265 0
	ldr	r3, .L108+12
	sub	r2, r2, #36
.L105:
	ldr	r3, [r3]
	lsr	r3, r3, r2
	lsl	r3, r3, #24
	lsr	r2, r3, #24
.LBE23:
.LBE22:
	.loc 1 281 0
	sub	r3, r2, #1
	lsl	r3, r3, #24
	lsr	r2, r3, #24
	cmp	r2, #7
	bhi	.L87
	lsl	r3, r2, #2
	ldr	r2, .L108+16
	ldr	r3, [r3, r2]
	mov	pc, r3
	.section	.rodata
	.align	2
	.align	2
.L93:
	.word	.L88
	.word	.L89
	.word	.L90
	.word	.L87
	.word	.L87
	.word	.L87
	.word	.L91
	.word	.L92
	.text
.L88:
	.loc 1 284 0
	ldr	r3, .L108+4
	mov	r4, #0
	str	r4, [r3]
	.loc 1 285 0
	ldr	r3, .L108+20
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L94
	.loc 1 286 0
	bl	pd4990a_readbit
.LVL7:
.L94:
	.loc 1 287 0
	ldr	r3, .L108+8
	str	r4, [r3]
	.loc 1 288 0
	ldr	r3, .L108+12
	str	r4, [r3]
	b	.L87
.LVL8:
.L89:
	.loc 1 291 0
	ldr	r2, .L108+24
	mov	r3, #0
	strb	r3, [r2]
.LBB24:
.LBB25:
	.loc 1 270 0
	ldr	r3, .L108+8
	ldr	r1, .L108+28
	ldr	r2, [r3]
	mov	r4, #255
	mov	r3, r2
	and	r3, r3, r4
	str	r3, [r1]
	.loc 1 271 0
	lsr	r3, r2, #8
	and	r3, r3, r4
	str	r3, [r1, #4]
	.loc 1 272 0
	lsr	r3, r2, #16
	and	r3, r3, r4
	str	r3, [r1, #8]
	.loc 1 274 0
	ldr	r3, .L108+12
	.loc 1 273 0
	lsr	r2, r2, #24
	str	r2, [r1, #12]
	.loc 1 274 0
	ldr	r2, [r3]
	mov	r0, #15
.LVL9:
	mov	r3, r2
	and	r3, r3, r0
	str	r3, [r1, #24]
	.loc 1 275 0
	lsr	r3, r2, #4
	.loc 1 276 0
	lsr	r2, r2, #8
	.loc 1 275 0
	and	r3, r3, r0
	.loc 1 276 0
	and	r2, r2, r4
	.loc 1 275 0
	str	r3, [r1, #16]
	.loc 1 276 0
	str	r2, [r1, #20]
	b	.L87
.LVL10:
.L90:
.LBE25:
.LBE24:
	.loc 1 295 0
	ldr	r2, .L108+20
	mov	r3, #1
	strb	r3, [r2]
	b	.L87
.L91:
	.loc 1 298 0
	ldr	r2, .L108+32
	mov	r3, #1
	b	.L106
.L92:
	.loc 1 301 0
	ldr	r2, .L108+32
	mov	r3, #30
.L106:
	str	r3, [r2]
.LVL11:
.L87:
.LBE21:
.LBE20:
.LBB26:
.LBB27:
	.loc 1 232 0
	ldr	r3, .L108+8
	mov	r2, #0
	str	r2, [r3]
	.loc 1 233 0
	ldr	r3, .L108+12
	str	r2, [r3]
	.loc 1 234 0
	ldr	r3, .L108+4
	str	r2, [r3]
.L81:
.LBE27:
.LBE26:
	.loc 1 318 0
	ldr	r1, [sp, #4]
	ldr	r2, .L108
	mov	r3, #4
	and	r3, r3, r1
	str	r3, [r2]
	.loc 1 320 0
	ldr	r3, .L108+36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L96
	lsl	r1, r1, #30
	bmi	.L96
	.loc 1 322 0
	ldr	r4, [sp, #4]
	mov	r3, #1
	and	r4, r4, r3
.LBB28:
.LBB29:
	.loc 1 239 0
	ldr	r3, .L108+4
	ldr	r0, [r3]
	cmp	r0, #31
	bgt	.L99
	.loc 1 240 0
	mov	r2, r4
	ldr	r1, .L108+8
	lsl	r2, r2, r0
	b	.L107
.L99:
	.loc 1 242 0
	mov	r2, r0
	sub	r2, r2, #32
	lsl	r4, r4, r2
	ldr	r1, .L108+12
	mov	r2, r4
.L107:
	ldr	r3, [r1]
.LBE29:
.LBE28:
.LBB30:
.LBB31:
	.loc 1 248 0
	ldr	r4, .L108+20
.LBE31:
.LBE30:
.LBB32:
.LBB33:
	.loc 1 242 0
	orr	r3, r3, r2
	str	r3, [r1]
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.loc 1 247 0
	ldr	r6, .L108+4
	.loc 1 248 0
	ldrb	r3, [r4]
	.loc 1 247 0
	add	r5, r0, #1
	str	r5, [r6]
	.loc 1 248 0
	cmp	r3, #0
	beq	.L96
	.loc 1 249 0
	bl	pd4990a_readbit
	.loc 1 250 0
	cmp	r5, #52
	bne	.L96
.LBB36:
.LBB37:
	.loc 1 232 0
	ldr	r2, .L108+8
.LBE37:
.LBE36:
	.loc 1 252 0
	mov	r3, #0
.LBB38:
.LBB39:
	.loc 1 232 0
	str	r3, [r2]
	.loc 1 233 0
	ldr	r2, .L108+12
.LBE39:
.LBE38:
	.loc 1 252 0
	strb	r3, [r4]
.LBB40:
.LBB41:
	.loc 1 233 0
	str	r3, [r2]
	.loc 1 234 0
	str	r3, [r6]
.LVL12:
.L96:
.LBE41:
.LBE40:
.LBE35:
.LBE34:
	.loc 1 325 0
	ldr	r1, [sp, #4]
	ldr	r3, .L108+36
	mov	r2, #2
	and	r2, r2, r1
	.loc 1 326 0
	add	sp, sp, #8
	.loc 1 325 0
	str	r2, [r3]
	.loc 1 326 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L109:
	.align	2
.L108:
	.word	command_line.5388
	.word	bitno
	.word	shiftlo
	.word	shifthi
	.word	.L93
	.word	reading
	.word	writing
	.word	pd4990a
	.word	maxwaits
	.word	clock_line.5387
.LFE121:
	.size	pd4990a_serial_control, .-pd4990a_serial_control
	.align	2
	.global	neoWrite4990a16
	.code 16
	.thumb_func
	.type	neoWrite4990a16, %function
neoWrite4990a16:
.LFB122:
	.loc 1 329 0
	push	{lr}
.LCFI7:
.LVL13:
	.loc 1 330 0
	mov	r3, #7
	and	r1, r1, r3
.LVL14:
	.loc 1 329 0
	sub	sp, sp, #4
.LCFI8:
	.loc 1 330 0
	mov	r0, r1
.LVL15:
	bl	pd4990a_serial_control
	.loc 1 331 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE122:
	.size	neoWrite4990a16, .-neoWrite4990a16
	.global	pd4990a
	.data
	.align	2
	.type	pd4990a, %object
	.size	pd4990a, 28
pd4990a:
	.word	0
	.word	0
	.word	0
	.word	9
	.word	9
	.word	115
	.word	1
	.bss
	.align	2
command_line.5388:
	.space	4
	.align	2
clock_line.5387:
	.space	4
	.align	2
bitno:
	.space	4
reading:
	.space	1
writing:
	.space	1
	.data
	.align	2
	.type	maxwaits, %object
	.size	maxwaits, 4
maxwaits:
	.word	1
	.bss
	.align	2
outputbit:
	.space	4
	.align	2
testbit:
	.space	4
	.align	2
retraces:
	.space	4
	.align	2
testwaits:
	.space	4
	.align	2
shiftlo:
	.space	4
	.align	2
shifthi:
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
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
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
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x4
	.4byte	.LCFI1-.LFB109
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
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x4
	.4byte	.LCFI2-.LFB107
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
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.byte	0x4
	.4byte	.LCFI4-.LFB114
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.byte	0x4
	.4byte	.LCFI5-.LFB121
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
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.byte	0x4
	.4byte	.LCFI7-.LFB122
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE18:
	.file 2 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 5 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.file 6 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h"
	.file 8 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h"
	.file 9 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h"
	.file 10 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/pd4990a.h"
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
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB109-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB107-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB114-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB121-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB122-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0xeb8
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF190
	.byte	0x1
	.4byte	.LASF191
	.4byte	.LASF192
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2e
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x39
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x3a
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x53
	.4byte	0x6d
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
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
	.byte	0x2
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
	.byte	0x2
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x2
	.byte	0x60
	.4byte	0x50
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x2
	.byte	0x61
	.4byte	0x74
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x2
	.byte	0x65
	.4byte	0x3e
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x2
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
	.byte	0x4
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
	.byte	0x4
	.byte	0xa0
	.4byte	0x107
	.uleb128 0xa
	.4byte	0x1ab
	.2byte	0x2018
	.byte	0x4
	.2byte	0x119
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x11a
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x11d
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x120
	.4byte	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x121
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x122
	.4byte	0x1bc
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x123
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x4
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
	.byte	0x4
	.2byte	0x126
	.4byte	0x133
	.uleb128 0xf
	.byte	0x4
	.uleb128 0x10
	.4byte	0x366
	.4byte	.LASF60
	.byte	0xb0
	.byte	0x8
	.byte	0x15
	.uleb128 0x11
	.ascii	"d\000"
	.byte	0x8
	.byte	0x16
	.4byte	0x366
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.ascii	"a\000"
	.byte	0x8
	.byte	0x17
	.4byte	0x366
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.ascii	"pc\000"
	.byte	0x8
	.byte	0x18
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.ascii	"srh\000"
	.byte	0x8
	.byte	0x19
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x8
	.byte	0x1a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x8
	.byte	0x1b
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x11
	.ascii	"irq\000"
	.byte	0x8
	.byte	0x1c
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x11
	.ascii	"osp\000"
	.byte	0x8
	.byte	0x1d
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.ascii	"xc\000"
	.byte	0x8
	.byte	0x1e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x8
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x8
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x8
	.byte	0x21
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x8
	.byte	0x22
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x8
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x8
	.byte	0x24
	.4byte	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x8
	.byte	0x25
	.4byte	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x8
	.byte	0x26
	.4byte	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x8
	.byte	0x27
	.4byte	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x8
	.byte	0x28
	.4byte	0x39d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x8
	.byte	0x29
	.4byte	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x8
	.byte	0x2a
	.4byte	0x3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x8
	.byte	0x2b
	.4byte	0x386
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x8
	.byte	0x2c
	.4byte	0x386
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x8
	.byte	0x2d
	.4byte	0x386
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x8
	.byte	0x2e
	.4byte	0x3e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x8
	.byte	0x2f
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x8
	.byte	0x30
	.4byte	0x3ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x8
	.byte	0x31
	.4byte	0x3f3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xc
	.4byte	0x376
	.4byte	0x9b
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x7
	.byte	0x0
	.uleb128 0x14
	.4byte	0x386
	.byte	0x1
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x376
	.uleb128 0x16
	.4byte	0x39d
	.byte	0x1
	.uleb128 0x15
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x37
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x38c
	.uleb128 0x16
	.4byte	0x3b4
	.byte	0x1
	.uleb128 0x15
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3a3
	.uleb128 0x16
	.4byte	0x3cb
	.byte	0x1
	.uleb128 0x15
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ba
	.uleb128 0x14
	.4byte	0x3e1
	.byte	0x1
	.4byte	0x94
	.uleb128 0x15
	.4byte	0x94
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3d1
	.uleb128 0x17
	.byte	0x1
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e7
	.uleb128 0xc
	.4byte	0x403
	.4byte	0x9b
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x7
	.byte	0x6
	.4byte	0x1d0
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x7
	.byte	0x8
	.4byte	0x419
	.uleb128 0x6
	.byte	0x4
	.4byte	0x41f
	.uleb128 0x14
	.4byte	0x42f
	.byte	0x1
	.4byte	0xbb
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x7
	.byte	0x9
	.4byte	0x43a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x440
	.uleb128 0x14
	.4byte	0x450
	.byte	0x1
	.4byte	0xc5
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x7
	.byte	0xa
	.4byte	0x45b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x461
	.uleb128 0x14
	.4byte	0x471
	.byte	0x1
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x7
	.byte	0xc
	.4byte	0x47c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x482
	.uleb128 0x16
	.4byte	0x493
	.byte	0x1
	.uleb128 0x15
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xbb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x7
	.byte	0xd
	.4byte	0x49e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4a4
	.uleb128 0x16
	.4byte	0x4b5
	.byte	0x1
	.uleb128 0x15
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xc5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x7
	.byte	0xe
	.4byte	0x4c0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c6
	.uleb128 0x16
	.4byte	0x4d7
	.byte	0x1
	.uleb128 0x15
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x7
	.byte	0x10
	.4byte	0x45b
	.uleb128 0x10
	.4byte	0x527
	.4byte	.LASF61
	.byte	0xc
	.byte	0x9
	.byte	0x17
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x9
	.byte	0x18
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.ascii	"end\000"
	.byte	0x9
	.byte	0x19
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.ascii	"acc\000"
	.byte	0x9
	.byte	0x1a
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x9
	.byte	0x1b
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x9
	.byte	0x1c
	.4byte	0x4e2
	.uleb128 0x10
	.4byte	0x569
	.4byte	.LASF65
	.byte	0xc
	.byte	0x9
	.byte	0x1f
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x9
	.byte	0x20
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x9
	.byte	0x21
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x9
	.byte	0x22
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x9
	.byte	0x23
	.4byte	0x532
	.uleb128 0x18
	.4byte	0x962
	.2byte	0x248
	.byte	0x6
	.byte	0xc0
	.uleb128 0x11
	.ascii	"cpu\000"
	.byte	0x6
	.byte	0xc1
	.4byte	0x403
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x6
	.byte	0xc4
	.4byte	0x962
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x6
	.byte	0xc7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x6
	.byte	0xc8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0x6
	.byte	0xcb
	.4byte	0x972
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0x6
	.byte	0xcc
	.4byte	0x569
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0x6
	.byte	0xcd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x6
	.byte	0xd0
	.4byte	0x982
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x6
	.byte	0xd1
	.4byte	0x982
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x6
	.byte	0xd2
	.4byte	0x982
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x6
	.byte	0xd3
	.4byte	0x982
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x6
	.byte	0xd4
	.4byte	0x982
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x6
	.byte	0xd5
	.4byte	0x982
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x6
	.byte	0xd6
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x6
	.byte	0xd7
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x6
	.byte	0xd8
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x6
	.byte	0xda
	.4byte	0x98e
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x6
	.byte	0xdd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x6
	.byte	0xde
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0x6
	.byte	0xdf
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x12
	.4byte	.LASF89
	.byte	0x6
	.byte	0xe0
	.4byte	0x99f
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe1
	.4byte	0x99f
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x12
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe2
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x12
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe5
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x6
	.byte	0xe6
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x6
	.byte	0xe7
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x6
	.byte	0xe8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x6
	.byte	0xea
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x6
	.byte	0xeb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x6
	.byte	0xec
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x6
	.byte	0xed
	.4byte	0x9aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x6
	.byte	0xee
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0x6
	.byte	0xf1
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x6
	.byte	0xf2
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x12
	.4byte	.LASF103
	.byte	0x6
	.byte	0xf3
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x12
	.4byte	.LASF104
	.byte	0x6
	.byte	0xf4
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x12
	.4byte	.LASF105
	.byte	0x6
	.byte	0xf7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x12
	.4byte	.LASF106
	.byte	0x6
	.byte	0xf8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0x6
	.byte	0xf9
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x6
	.byte	0xfa
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x6
	.byte	0xfb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0x6
	.byte	0xfc
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x12
	.4byte	.LASF111
	.byte	0x6
	.byte	0xfd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x102
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x103
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x106
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x108
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x109
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x10a
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x10b
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x10d
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x10e
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x10f
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x110
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x111
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x6
	.2byte	0x114
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x6
	.2byte	0x115
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x6
	.2byte	0x116
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x6
	.2byte	0x117
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x6
	.2byte	0x118
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x6
	.2byte	0x11b
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x6
	.2byte	0x11c
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x6
	.2byte	0x11f
	.4byte	0x9ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x6
	.2byte	0x122
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x6
	.2byte	0x123
	.4byte	0x9ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xc
	.4byte	0x972
	.4byte	0x1ce
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x8
	.byte	0x0
	.uleb128 0xc
	.4byte	0x982
	.4byte	0x527
	.uleb128 0x13
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
	.4byte	0x994
	.uleb128 0x6
	.byte	0x4
	.4byte	0x99a
	.uleb128 0x19
	.4byte	0xbb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9a5
	.uleb128 0x19
	.4byte	0xd0
	.uleb128 0xc
	.4byte	0x9ba
	.4byte	0xd0
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9ca
	.4byte	0xbb
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9d9
	.4byte	0xbb
	.uleb128 0x1a
	.4byte	0xf9
	.byte	0x0
	.uleb128 0x1b
	.4byte	0x9f4
	.2byte	0x400
	.byte	0x6
	.byte	0xbf
	.uleb128 0x1c
	.4byte	0x574
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0x6
	.2byte	0x125
	.4byte	0x9f4
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa04
	.4byte	0xd0
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0x1e
	.4byte	0xa8a
	.4byte	.LASF135
	.2byte	0x2000
	.byte	0x6
	.byte	0xbe
	.uleb128 0x1f
	.4byte	0x9d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x6
	.2byte	0x128
	.4byte	0xa8a
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x6
	.2byte	0x129
	.4byte	0xa9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x6
	.2byte	0x12a
	.4byte	0xaaa
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x6
	.2byte	0x12b
	.4byte	0xaba
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x6
	.2byte	0x12c
	.4byte	0xaca
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x6
	.2byte	0x12d
	.4byte	0xada
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x6
	.2byte	0x12e
	.4byte	0xaea
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa9a
	.4byte	0x40e
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xaaa
	.4byte	0x42f
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xaba
	.4byte	0x450
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xaca
	.4byte	0x471
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xada
	.4byte	0x493
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xaea
	.4byte	0x4b5
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xafa
	.4byte	0x4d7
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF143
	.byte	0x6
	.2byte	0x12f
	.4byte	0xa04
	.uleb128 0x10
	.4byte	0xb75
	.4byte	.LASF144
	.byte	0x1c
	.byte	0xa
	.byte	0x7
	.uleb128 0x12
	.4byte	.LASF145
	.byte	0xa
	.byte	0x8
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF146
	.byte	0xa
	.byte	0x9
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF147
	.byte	0xa
	.byte	0xa
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF148
	.byte	0xa
	.byte	0xb
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF149
	.byte	0xa
	.byte	0xc
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF150
	.byte	0xa
	.byte	0xd
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF151
	.byte	0xa
	.byte	0xe
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x20
	.4byte	.LASF158
	.byte	0x1
	.byte	0xe7
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF152
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	.LFB108
	.4byte	.LFE108
	.byte	0x1
	.byte	0x5d
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF153
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST1
	.uleb128 0x23
	.4byte	0xbcf
	.byte	0x1
	.4byte	.LASF165
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LLST2
	.uleb128 0x24
	.4byte	.LASF168
	.byte	0x1
	.byte	0x6c
	.4byte	0x94
	.4byte	.LLST3
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF154
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LLST4
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF155
	.byte	0x1
	.byte	0xb1
	.4byte	0xc5
	.4byte	.LFB111
	.4byte	.LFE111
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF156
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.4byte	0xc5
	.4byte	.LFB112
	.4byte	.LFE112
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF157
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.4byte	0xc5
	.4byte	.LFB113
	.4byte	.LFE113
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.4byte	.LASF159
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LLST8
	.uleb128 0x28
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x118
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x103
	.byte	0x1
	.4byte	0xbb
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x10d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.4byte	0xc77
	.4byte	.LASF163
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.ascii	"bit\000"
	.byte	0x1
	.byte	0xed
	.4byte	0xbb
	.byte	0x0
	.uleb128 0x2a
	.4byte	0xc86
	.4byte	.LASF164
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x2d
	.4byte	0xd47
	.byte	0x1
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x134
	.byte	0x1
	.4byte	.LFB121
	.4byte	.LFE121
	.4byte	.LLST9
	.uleb128 0x2e
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x133
	.4byte	0x37
	.4byte	.LLST10
	.uleb128 0x2f
	.4byte	0xce5
	.4byte	0xc3c
	.4byte	.LBB20
	.4byte	.LBE20
	.byte	0x1
	.2byte	0x13b
	.uleb128 0x30
	.4byte	0xc46
	.4byte	.LBB22
	.4byte	.LBE22
	.byte	0x1
	.2byte	0x119
	.uleb128 0x30
	.4byte	0xc54
	.4byte	.LBB24
	.4byte	.LBE24
	.byte	0x1
	.2byte	0x124
	.byte	0x0
	.uleb128 0x30
	.4byte	0xb75
	.4byte	.LBB26
	.4byte	.LBE26
	.byte	0x1
	.2byte	0x13c
	.uleb128 0x31
	.4byte	0xd0b
	.4byte	0xc5e
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x142
	.uleb128 0x32
	.4byte	0xc6b
	.byte	0x0
	.uleb128 0x33
	.4byte	0xc77
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x143
	.uleb128 0x34
	.4byte	0xb75
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xfd
	.uleb128 0x35
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x136
	.4byte	0x94
	.byte	0x5
	.byte	0x3
	.4byte	command_line.5388
	.uleb128 0x35
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x135
	.4byte	0x94
	.byte	0x5
	.byte	0x3
	.4byte	clock_line.5387
	.byte	0x0
	.uleb128 0x2d
	.4byte	0xd82
	.byte	0x1
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x149
	.byte	0x1
	.4byte	.LFB122
	.4byte	.LFE122
	.4byte	.LLST11
	.uleb128 0x2e
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x148
	.4byte	0xd0
	.4byte	.LLST12
	.uleb128 0x2e
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x148
	.4byte	0xc5
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x36
	.4byte	.LASF173
	.byte	0x4
	.2byte	0x129
	.4byte	0xd8e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c2
	.uleb128 0x37
	.4byte	.LASF174
	.byte	0x1
	.byte	0x1d
	.4byte	0xd0
	.byte	0x5
	.byte	0x3
	.4byte	shiftlo
	.uleb128 0x37
	.4byte	.LASF175
	.byte	0x1
	.byte	0x1d
	.4byte	0xd0
	.byte	0x5
	.byte	0x3
	.4byte	shifthi
	.uleb128 0x37
	.4byte	.LASF176
	.byte	0x1
	.byte	0x1e
	.4byte	0x94
	.byte	0x5
	.byte	0x3
	.4byte	retraces
	.uleb128 0x37
	.4byte	.LASF177
	.byte	0x1
	.byte	0x1f
	.4byte	0x94
	.byte	0x5
	.byte	0x3
	.4byte	testwaits
	.uleb128 0x37
	.4byte	.LASF178
	.byte	0x1
	.byte	0x20
	.4byte	0x94
	.byte	0x5
	.byte	0x3
	.4byte	maxwaits
	.uleb128 0x37
	.4byte	.LASF179
	.byte	0x1
	.byte	0x21
	.4byte	0x94
	.byte	0x5
	.byte	0x3
	.4byte	testbit
	.uleb128 0x37
	.4byte	.LASF180
	.byte	0x1
	.byte	0x23
	.4byte	0x94
	.byte	0x5
	.byte	0x3
	.4byte	outputbit
	.uleb128 0x37
	.4byte	.LASF181
	.byte	0x1
	.byte	0x24
	.4byte	0x94
	.byte	0x5
	.byte	0x3
	.4byte	bitno
	.uleb128 0x37
	.4byte	.LASF182
	.byte	0x1
	.byte	0x26
	.4byte	0x100
	.byte	0x5
	.byte	0x3
	.4byte	reading
	.uleb128 0x37
	.4byte	.LASF183
	.byte	0x1
	.byte	0x27
	.4byte	0x100
	.byte	0x5
	.byte	0x3
	.4byte	writing
	.uleb128 0xc
	.4byte	0xe49
	.4byte	0x49
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF184
	.byte	0x5
	.byte	0x2c
	.4byte	0xe3e
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0xe61
	.4byte	0x49
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF185
	.byte	0x5
	.byte	0x2d
	.4byte	0xe56
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0xe79
	.4byte	0x49
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF186
	.byte	0x5
	.byte	0x2e
	.4byte	0xe6e
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.4byte	.LASF187
	.byte	0x6
	.2byte	0x149
	.4byte	0xe95
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x6
	.byte	0x4
	.4byte	0xafa
	.uleb128 0x3b
	.4byte	.LASF188
	.byte	0x6
	.2byte	0x14d
	.4byte	0xafa
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF189
	.byte	0x1
	.byte	0x12
	.4byte	0xb06
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pd4990a
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x21
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x28
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0x1d
	.byte	0x0
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
	.uleb128 0x34
	.uleb128 0x1d
	.byte	0x0
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
	.uleb128 0x35
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
	.uleb128 0x3a
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
	.4byte	0xf2
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xebc
	.4byte	0xb7e
	.ascii	"pd4990a_init\000"
	.4byte	0xb91
	.ascii	"pd4990a_increment_month\000"
	.4byte	0xba6
	.ascii	"pd4990a_increment_day\000"
	.4byte	0xbcf
	.ascii	"pd4990a_addretrace\000"
	.4byte	0xbe4
	.ascii	"read_4990_output\000"
	.4byte	0xbfa
	.ascii	"read_4990_testbit\000"
	.4byte	0xc11
	.ascii	"read_4990_databit\000"
	.4byte	0xc86
	.ascii	"pd4990a_serial_control\000"
	.4byte	0xd47
	.ascii	"neoWrite4990a16\000"
	.4byte	0xe86
	.ascii	"g_neo\000"
	.4byte	0xea9
	.ascii	"pd4990a\000"
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
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF24:
	.ascii	"clearColor\000"
.LASF38:
	.ascii	"checkpc\000"
.LASF42:
	.ascii	"write8\000"
.LASF90:
	.ascii	"smaBankbit\000"
.LASF158:
	.ascii	"pd4990a_resetbitstream\000"
.LASF171:
	.ascii	"neoWrite4990a16\000"
.LASF142:
	.ascii	"cpuCheckPcTable\000"
.LASF98:
	.ascii	"spriteMask\000"
.LASF121:
	.ascii	"ctrl3Reg\000"
.LASF47:
	.ascii	"fetch32\000"
.LASF173:
	.ascii	"glGlob\000"
.LASF106:
	.ascii	"cpuClocksPerScanline\000"
.LASF54:
	.ascii	"TRead16Func\000"
.LASF72:
	.ascii	"romBankCount\000"
.LASF101:
	.ascii	"tileOffsetX\000"
.LASF140:
	.ascii	"cpuWrite16Table\000"
.LASF14:
	.ascii	"uint32\000"
.LASF20:
	.ascii	"GL_MODELVIEW\000"
.LASF103:
	.ascii	"tileScaleX\000"
.LASF104:
	.ascii	"tileScaleY\000"
.LASF43:
	.ascii	"write16\000"
.LASF59:
	.ascii	"TCheckPcFunc\000"
.LASF161:
	.ascii	"pd4990a_getcommand\000"
.LASF133:
	.ascii	"varEnd\000"
.LASF150:
	.ascii	"year\000"
.LASF56:
	.ascii	"TWrite8Func\000"
.LASF39:
	.ascii	"read8\000"
.LASF191:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/pd4990a.c\000"
.LASF69:
	.ascii	"TNeoADPCMBStream\000"
.LASF53:
	.ascii	"TRead8Func\000"
.LASF164:
	.ascii	"pd4990a_nextbit\000"
.LASF100:
	.ascii	"pTileBuffer\000"
.LASF138:
	.ascii	"cpuRead32Table\000"
.LASF22:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF8:
	.ascii	"long int\000"
.LASF148:
	.ascii	"days\000"
.LASF68:
	.ascii	"frequency\000"
.LASF57:
	.ascii	"TWrite16Func\000"
.LASF45:
	.ascii	"fetch8\000"
.LASF163:
	.ascii	"pd4990a_writebit\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF131:
	.ascii	"keyGrid\000"
.LASF44:
	.ascii	"write32\000"
.LASF167:
	.ascii	"data\000"
.LASF48:
	.ascii	"IrqCallback\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF122:
	.ascii	"ctrl4Reg\000"
.LASF111:
	.ascii	"romBankAddress\000"
.LASF186:
	.ascii	"TAN_bin\000"
.LASF63:
	.ascii	"step\000"
.LASF75:
	.ascii	"adpcmActive\000"
.LASF160:
	.ascii	"pd4990a_process_command\000"
.LASF95:
	.ascii	"vramBaseMask\000"
.LASF71:
	.ascii	"spriteCount\000"
.LASF50:
	.ascii	"UnrecognizedCallback\000"
.LASF177:
	.ascii	"testwaits\000"
.LASF157:
	.ascii	"read_4990_databit\000"
.LASF17:
	.ascii	"char\000"
.LASF124:
	.ascii	"irqVectorLatch\000"
.LASF82:
	.ascii	"pVram\000"
.LASF125:
	.ascii	"screenDarkLatch\000"
.LASF33:
	.ascii	"prev_pc\000"
.LASF65:
	.ascii	"_TNeoADPCMBStream\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF151:
	.ascii	"weekday\000"
.LASF32:
	.ascii	"flags\000"
.LASF16:
	.ascii	"double\000"
.LASF97:
	.ascii	"autoAnimationCounter\000"
.LASF25:
	.ascii	"textures\000"
.LASF19:
	.ascii	"GL_POSITION\000"
.LASF143:
	.ascii	"TNeoContext\000"
.LASF105:
	.ascii	"cpuClockDivide\000"
.LASF93:
	.ascii	"frameCount\000"
.LASF114:
	.ascii	"vramOffset\000"
.LASF192:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF134:
	.ascii	"fill\000"
.LASF36:
	.ascii	"cycles\000"
.LASF141:
	.ascii	"cpuWrite32Table\000"
.LASF128:
	.ascii	"paletteRamLatch\000"
.LASF179:
	.ascii	"testbit\000"
.LASF184:
	.ascii	"COS_bin\000"
.LASF79:
	.ascii	"pRam\000"
.LASF81:
	.ascii	"pCard\000"
.LASF96:
	.ascii	"displayCounter\000"
.LASF52:
	.ascii	"TCycloneContext\000"
.LASF165:
	.ascii	"pd4990a_increment_day\000"
.LASF108:
	.ascii	"watchdogCounter\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF172:
	.ascii	"address\000"
.LASF137:
	.ascii	"cpuRead16Table\000"
.LASF117:
	.ascii	"displayControlMask\000"
.LASF176:
	.ascii	"retraces\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF129:
	.ascii	"active\000"
.LASF178:
	.ascii	"maxwaits\000"
.LASF60:
	.ascii	"Cyclone\000"
.LASF78:
	.ascii	"pBios\000"
.LASF99:
	.ascii	"paletteDirty\000"
.LASF185:
	.ascii	"SIN_bin\000"
.LASF23:
	.ascii	"matrixMode\000"
.LASF155:
	.ascii	"read_4990_output\000"
.LASF181:
	.ascii	"bitno\000"
.LASF27:
	.ascii	"nextBlock\000"
.LASF162:
	.ascii	"pd4990a_update_date\000"
.LASF136:
	.ascii	"cpuRead8Table\000"
.LASF91:
	.ascii	"smaRand\000"
.LASF156:
	.ascii	"read_4990_testbit\000"
.LASF61:
	.ascii	"_TNeoADPCMStream\000"
.LASF58:
	.ascii	"TWrite32Func\000"
.LASF86:
	.ascii	"smaAddr0\000"
.LASF11:
	.ascii	"long long int\000"
.LASF18:
	.ascii	"GL_PROJECTION\000"
.LASF123:
	.ascii	"coinReg\000"
.LASF66:
	.ascii	"initOffset\000"
.LASF51:
	.ascii	"internal\000"
.LASF46:
	.ascii	"fetch16\000"
.LASF87:
	.ascii	"smaAddr1\000"
.LASF145:
	.ascii	"seconds\000"
.LASF31:
	.ascii	"unused\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF182:
	.ascii	"reading\000"
.LASF116:
	.ascii	"displayControl\000"
.LASF175:
	.ascii	"shifthi\000"
.LASF89:
	.ascii	"smaBankoffset\000"
.LASF21:
	.ascii	"GL_TEXTURE\000"
.LASF94:
	.ascii	"pVramBase\000"
.LASF146:
	.ascii	"minutes\000"
.LASF62:
	.ascii	"offset\000"
.LASF76:
	.ascii	"pRom0\000"
.LASF102:
	.ascii	"tileOffsetY\000"
.LASF139:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF144:
	.ascii	"pd4990a_s\000"
.LASF26:
	.ascii	"activeTexture\000"
.LASF153:
	.ascii	"pd4990a_increment_month\000"
.LASF120:
	.ascii	"ctrl2Reg\000"
.LASF40:
	.ascii	"read16\000"
.LASF109:
	.ascii	"paletteBank\000"
.LASF170:
	.ascii	"clock_line\000"
.LASF188:
	.ascii	"g_neoContext\000"
.LASF37:
	.ascii	"membase\000"
.LASF190:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF92:
	.ascii	"scanline\000"
.LASF84:
	.ascii	"pPalette\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF130:
	.ascii	"debug\000"
.LASF166:
	.ascii	"pd4990a_serial_control\000"
.LASF174:
	.ascii	"shiftlo\000"
.LASF77:
	.ascii	"pRom1\000"
.LASF152:
	.ascii	"pd4990a_init\000"
.LASF41:
	.ascii	"read32\000"
.LASF83:
	.ascii	"pSpriteRam\000"
.LASF49:
	.ascii	"ResetCallback\000"
.LASF127:
	.ascii	"sramProtectLatch\000"
.LASF110:
	.ascii	"fixedBank\000"
.LASF187:
	.ascii	"g_neo\000"
.LASF149:
	.ascii	"month\000"
.LASF29:
	.ascii	"nameCount\000"
.LASF119:
	.ascii	"ctrl1Reg\000"
.LASF35:
	.ascii	"state_flags\000"
.LASF113:
	.ascii	"sramProtection\000"
.LASF80:
	.ascii	"pSram\000"
.LASF67:
	.ascii	"freqCounter\000"
.LASF4:
	.ascii	"short int\000"
.LASF132:
	.ascii	"frameCounter\000"
.LASF74:
	.ascii	"adpcmb\000"
.LASF159:
	.ascii	"pd4990a_readbit\000"
.LASF28:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF118:
	.ascii	"displayCounterLoad\000"
.LASF107:
	.ascii	"irqPending\000"
.LASF154:
	.ascii	"pd4990a_addretrace\000"
.LASF169:
	.ascii	"command_line\000"
.LASF189:
	.ascii	"pd4990a\000"
.LASF55:
	.ascii	"TRead32Func\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF147:
	.ascii	"hours\000"
.LASF180:
	.ascii	"outputbit\000"
.LASF73:
	.ascii	"adpcm\000"
.LASF15:
	.ascii	"float\000"
.LASF30:
	.ascii	"gl_hidden_globals\000"
.LASF70:
	.ascii	"pVideoWriteTable\000"
.LASF183:
	.ascii	"writing\000"
.LASF85:
	.ascii	"bankTable\000"
.LASF88:
	.ascii	"smaBankAddr\000"
.LASF135:
	.ascii	"_TNeoContext\000"
.LASF34:
	.ascii	"reserved\000"
.LASF126:
	.ascii	"fixedRomLatch\000"
.LASF168:
	.ascii	"real_year\000"
.LASF112:
	.ascii	"sramProtectCount\000"
.LASF64:
	.ascii	"TNeoADPCMStream\000"
.LASF115:
	.ascii	"vramMod\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
