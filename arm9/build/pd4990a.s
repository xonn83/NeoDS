	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
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
	.code	16
	.thumb_func
	.type	pd4990a_init, %function
pd4990a_init:
.LFB167:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/pd4990a.c"
	.loc 1 84 0
	.loc 1 87 0
	ldr	r2, .L3
	.loc 1 90 0
	mov	r1, #9
	str	r1, [r2, #12]
	.loc 1 91 0
	str	r1, [r2, #16]
	.loc 1 92 0
	mov	r1, #115
	.loc 1 87 0
	mov	r3, #0
	.loc 1 92 0
	str	r1, [r2, #20]
	.loc 1 93 0
	mov	r1, #1
	.loc 1 87 0
	str	r3, [r2]
	.loc 1 88 0
	str	r3, [r2, #4]
	.loc 1 89 0
	str	r3, [r2, #8]
	.loc 1 93 0
	str	r1, [r2, #24]
	.loc 1 95 0
	ldr	r2, .L3+4
	.loc 1 104 0
	@ sp needed for prologue
	.loc 1 95 0
	str	r3, [r2]
	.loc 1 96 0
	str	r3, [r2, #4]
	.loc 1 97 0
	strb	r3, [r2, #8]
	.loc 1 98 0
	strb	r3, [r2, #9]
	.loc 1 99 0
	str	r3, [r2, #12]
	.loc 1 100 0
	str	r3, [r2, #16]
	.loc 1 102 0
	str	r3, [r2, #20]
	.loc 1 103 0
	str	r3, [r2, #24]
	.loc 1 104 0
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.word	.LANCHOR1
.LFE167:
	.size	pd4990a_init, .-pd4990a_init
	.align	2
	.global	pd4990a_increment_month
	.code	16
	.thumb_func
	.type	pd4990a_increment_month, %function
pd4990a_increment_month:
.LFB169:
	.loc 1 160 0
	push	{lr}
.LCFI0:
	.loc 1 161 0
	ldr	r3, .L10
	ldr	r2, [r3, #16]
	add	r2, r2, #1
	str	r2, [r3, #16]
	.loc 1 162 0
	cmp	r2, #13
	bne	.L8
	.loc 1 164 0
	mov	r2, #1
	str	r2, [r3, #16]
	.loc 1 165 0
	ldr	r2, [r3, #20]
	.loc 1 166 0
	mov	r1, #15
	.loc 1 165 0
	add	r2, r2, #1
	.loc 1 166 0
	and	r1, r1, r2
	.loc 1 165 0
	str	r2, [r3, #20]
	.loc 1 166 0
	cmp	r1, #9
	ble	.L7
	.loc 1 169 0
	mov	r1, #240
	and	r2, r2, r1
	add	r2, r2, #16
	str	r2, [r3, #20]
.L7:
	.loc 1 171 0
	ldr	r3, .L10
	ldr	r2, [r3, #20]
	cmp	r2, #160
	bne	.L8
	.loc 1 172 0
	mov	r2, #0
	str	r2, [r3, #20]
.L8:
	.loc 1 174 0
	@ sp needed for prologue
	pop	{pc}
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
.LFE169:
	.size	pd4990a_increment_month, .-pd4990a_increment_month
	.global	__aeabi_idivmod
	.align	2
	.global	pd4990a_increment_day
	.code	16
	.thumb_func
	.type	pd4990a_increment_day, %function
pd4990a_increment_day:
.LFB168:
	.loc 1 107 0
	push	{r4, lr}
.LCFI1:
	.loc 1 110 0
	ldr	r3, .L24
	.loc 1 111 0
	mov	r1, #15
	.loc 1 110 0
	ldr	r2, [r3, #12]
	add	r2, r2, #1
	.loc 1 111 0
	and	r1, r1, r2
	.loc 1 110 0
	str	r2, [r3, #12]
	.loc 1 111 0
	cmp	r1, #9
	ble	.L13
	.loc 1 114 0
	mov	r1, #240
	and	r2, r2, r1
	add	r2, r2, #16
	str	r2, [r3, #12]
.L13:
	.loc 1 117 0
	ldr	r3, .L24
	ldr	r2, [r3, #24]
	add	r2, r2, #1
	str	r2, [r3, #24]
	.loc 1 118 0
	cmp	r2, #7
	bne	.L14
	.loc 1 119 0
	mov	r2, #0
	str	r2, [r3, #24]
.L14:
	.loc 1 121 0
	ldr	r3, .L24
	ldr	r1, [r3, #16]
	cmp	r1, #12
	bhi	.L21
	mov	r2, #1
	mov	r0, r2
	lsl	r0, r0, r1
	mov	r1, r0
	ldr	r0, .L24+4
	tst	r1, r0
	bne	.L16
	mov	r0, #165
	lsl	r0, r0, #4
	tst	r1, r0
	bne	.L18
	lsl	r2, r1, #29
	bmi	.L17
	b	.L21
.L16:
	.loc 1 124 0
	ldr	r1, [r3, #12]
	cmp	r1, #50
	bne	.L21
	b	.L22
.L17:
	.loc 1 131 0
	ldr	r3, [r3, #20]
	asr	r2, r3, #4
	lsl	r4, r2, #2
	add	r2, r4, r2
	mov	r4, #15
	lsl	r2, r2, #1
	and	r3, r3, r4
	add	r4, r2, r3
.LVL0:
	.loc 1 132 0
	lsl	r3, r4, #30
	beq	.L19
	mov	r0, r4
	mov	r1, #100
	bl	__aeabi_idivmod
	cmp	r1, #0
	beq	.L20
	mov	r1, #200
	mov	r0, r4
	lsl	r1, r1, #1
	bl	__aeabi_idivmod
	cmp	r1, #0
	beq	.L19
.L20:
	.loc 1 134 0
	ldr	r3, .L24
	ldr	r2, [r3, #12]
	cmp	r2, #41
	bne	.L21
	b	.L23
.L19:
	.loc 1 142 0
	ldr	r3, .L24
	ldr	r2, [r3, #12]
	cmp	r2, #48
	bne	.L21
.L23:
	.loc 1 144 0
	mov	r2, #1
	b	.L22
.LVL1:
.L18:
	.loc 1 150 0
	ldr	r1, [r3, #12]
	cmp	r1, #49
	bne	.L21
.LVL2:
.L22:
	.loc 1 152 0
	str	r2, [r3, #12]
	.loc 1 153 0
	bl	pd4990a_increment_month
.L21:
	.loc 1 157 0
	@ sp needed for prologue
.LVL3:
	pop	{r4, pc}
.L25:
	.align	2
.L24:
	.word	.LANCHOR0
	.word	5546
.LFE168:
	.size	pd4990a_increment_day, .-pd4990a_increment_day
	.align	2
	.global	pd4990a_addretrace
	.code	16
	.thumb_func
	.type	pd4990a_addretrace, %function
pd4990a_addretrace:
.LFB166:
	.loc 1 46 0
	push	{r4, r5, r6, lr}
.LCFI2:
	.loc 1 47 0
	ldr	r3, .L30
	.loc 1 48 0
	ldr	r1, .L30+4
	.loc 1 47 0
	ldr	r2, [r3, #28]
	.loc 1 48 0
	ldr	r1, [r1, #28]
	.loc 1 47 0
	add	r2, r2, #1
	str	r2, [r3, #28]
	.loc 1 48 0
	cmp	r2, r1
	blt	.L27
	.loc 1 50 0
	ldr	r1, [r3, #4]
	mov	r2, #1
	eor	r2, r2, r1
	str	r2, [r3, #4]
	.loc 1 51 0
	mov	r2, #0
	str	r2, [r3, #28]
.L27:
	.loc 1 53 0
	ldr	r3, .L30
	ldr	r2, [r3]
	add	r2, r2, #1
	str	r2, [r3]
	.loc 1 54 0
	cmp	r2, #59
	ble	.L29
	.loc 1 56 0
	mov	r2, #0
	str	r2, [r3]
	.loc 1 57 0
	ldr	r3, .L30+4
	.loc 1 58 0
	mov	r4, #15
	.loc 1 57 0
	ldr	r0, [r3]
	add	r0, r0, #1
	.loc 1 58 0
	mov	r1, r0
	and	r1, r1, r4
	.loc 1 57 0
	str	r0, [r3]
	.loc 1 58 0
	cmp	r1, #9
	ble	.L29
	.loc 1 61 0
	mov	r1, #240
	and	r0, r0, r1
	add	r0, r0, #16
	str	r0, [r3]
	.loc 1 62 0
	cmp	r0, #95
	ble	.L29
	.loc 1 65 0
	ldr	r0, [r3, #4]
	.loc 1 64 0
	str	r2, [r3]
	.loc 1 65 0
	add	r0, r0, #1
	.loc 1 66 0
	mov	r5, r0
	and	r5, r5, r4
	.loc 1 65 0
	str	r0, [r3, #4]
	.loc 1 66 0
	cmp	r5, #9
	ble	.L29
	.loc 1 69 0
	and	r0, r0, r1
	add	r0, r0, #16
	str	r0, [r3, #4]
	.loc 1 70 0
	cmp	r0, #95
	ble	.L29
	.loc 1 73 0
	ldr	r0, [r3, #8]
	.loc 1 72 0
	str	r2, [r3, #4]
	.loc 1 73 0
	add	r0, r0, #1
	.loc 1 74 0
	and	r4, r4, r0
	.loc 1 73 0
	str	r0, [r3, #8]
	.loc 1 74 0
	cmp	r4, #9
	ble	.L29
	.loc 1 77 0
	and	r1, r1, r0
	add	r1, r1, #16
	str	r1, [r3, #8]
	.loc 1 78 0
	cmp	r1, #35
	ble	.L29
	.loc 1 80 0
	str	r2, [r3, #8]
	.loc 1 81 0
	bl	pd4990a_increment_day
.L29:
	.loc 1 82 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L31:
	.align	2
.L30:
	.word	.LANCHOR1
	.word	.LANCHOR0
.LFE166:
	.size	pd4990a_addretrace, .-pd4990a_addretrace
	.align	2
	.global	read_4990_output
	.code	16
	.thumb_func
	.type	read_4990_output, %function
read_4990_output:
.LFB170:
	.loc 1 177 0
	.loc 1 177 0
	ldr	r3, .L34
	.loc 1 179 0
	@ sp needed for prologue
	.loc 1 177 0
	ldr	r0, [r3, #20]
	ldr	r3, [r3, #4]
	lsl	r0, r0, #7
	lsl	r3, r3, #6
	orr	r0, r0, r3
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	.loc 1 179 0
	bx	lr
.L35:
	.align	2
.L34:
	.word	.LANCHOR1
.LFE170:
	.size	read_4990_output, .-read_4990_output
	.align	2
	.global	read_4990_testbit
	.code	16
	.thumb_func
	.type	read_4990_testbit, %function
read_4990_testbit:
.LFB171:
	.loc 1 182 0
	.loc 1 182 0
	ldr	r3, .L38
	.loc 1 184 0
	@ sp needed for prologue
	.loc 1 182 0
	ldrh	r0, [r3, #4]
	.loc 1 184 0
	bx	lr
.L39:
	.align	2
.L38:
	.word	.LANCHOR1
.LFE171:
	.size	read_4990_testbit, .-read_4990_testbit
	.align	2
	.global	read_4990_databit
	.code	16
	.thumb_func
	.type	read_4990_databit, %function
read_4990_databit:
.LFB172:
	.loc 1 187 0
	.loc 1 187 0
	ldr	r3, .L42
	.loc 1 189 0
	@ sp needed for prologue
	.loc 1 187 0
	ldrh	r0, [r3, #20]
	.loc 1 189 0
	bx	lr
.L43:
	.align	2
.L42:
	.word	.LANCHOR1
.LFE172:
	.size	read_4990_databit, .-read_4990_databit
	.align	2
	.code	16
	.thumb_func
	.type	pd4990a_readbit, %function
pd4990a_readbit:
.LFB173:
	.loc 1 192 0
	push	{lr}
.LCFI3:
	.loc 1 193 0
	ldr	r2, .L64
	ldr	r3, [r2, #24]
	cmp	r3, #31
	bgt	.L53
	cmp	r3, #24
	bge	.L49
	cmp	r3, #15
	bgt	.L48
	cmp	r3, #8
	bge	.L47
	cmp	r3, #0
	bge	.L56
	b	.L55
.L53:
	cmp	r3, #39
	bgt	.L54
	ldr	r1, .L64+4
	cmp	r3, #36
	bge	.L51
	b	.L62
.L54:
	cmp	r3, #47
	bgt	.L55
	b	.L63
.L56:
	.loc 1 197 0
	ldr	r1, .L64+4
	ldr	r1, [r1]
	b	.L59
.L47:
	.loc 1 201 0
	ldr	r1, .L64+4
	sub	r3, r3, #8
	ldr	r1, [r1, #4]
	b	.L59
.L48:
	.loc 1 205 0
	ldr	r1, .L64+4
	sub	r3, r3, #16
	ldr	r1, [r1, #8]
	b	.L59
.L49:
	.loc 1 209 0
	ldr	r1, .L64+4
	sub	r3, r3, #24
	ldr	r1, [r1, #12]
	b	.L59
.L62:
	.loc 1 212 0
	sub	r3, r3, #32
	ldr	r1, [r1, #24]
	b	.L59
.L51:
	.loc 1 215 0
	sub	r3, r3, #36
	ldr	r1, [r1, #16]
	b	.L59
.L63:
	.loc 1 219 0
	ldr	r1, .L64+4
	sub	r3, r3, #40
	ldr	r1, [r1, #20]
.L59:
	asr	r1, r1, r3
	mov	r3, r1
	mov	r1, #1
	and	r3, r3, r1
	str	r3, [r2, #20]
.L55:
	.loc 1 225 0
	@ sp needed for prologue
	pop	{pc}
.L65:
	.align	2
.L64:
	.word	.LANCHOR1
	.word	.LANCHOR0
.LFE173:
	.size	pd4990a_readbit, .-pd4990a_readbit
	.align	2
	.global	pd4990a_serial_control
	.code	16
	.thumb_func
	.type	pd4990a_serial_control, %function
pd4990a_serial_control:
.LFB180:
	.loc 1 308 0
	push	{r4, r5, r6, lr}
.LCFI4:
.LVL4:
	.loc 1 313 0
	ldr	r3, .L84
	.loc 1 308 0
	mov	r5, r0
	.loc 1 313 0
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L67
.LVL5:
	lsl	r2, r0, #29
	bmi	.L67
.LVL6:
.LBB22:
.LBB23:
.LBB24:
.LBB25:
	.loc 1 262 0
	ldr	r2, [r3, #24]
	cmp	r2, #31
	bgt	.L68
	.loc 1 263 0
	sub	r2, r2, #4
	ldr	r3, [r3, #12]
	b	.L82
.L68:
	.loc 1 265 0
	ldr	r3, [r3, #16]
	sub	r2, r2, #36
.L82:
	lsr	r3, r3, r2
	lsl	r3, r3, #24
	lsr	r3, r3, #24
.LBE25:
.LBE24:
	.loc 1 281 0
	sub	r3, r3, #1
	lsl	r3, r3, #24
	lsr	r3, r3, #24
	cmp	r3, #7
	bhi	.L70
	ldr	r2, .L84+4
	lsl	r3, r3, #2
	ldr	r3, [r2, r3]
	ldr	r2, .L84
	mov	pc, r3
	.section	.rodata
	.align	2
.L76:
	.word	.L71
	.word	.L72
	.word	.L73
	.word	.L70
	.word	.L70
	.word	.L70
	.word	.L74
	.word	.L75
	.text
.L71:
	.loc 1 284 0
	mov	r3, #0
	str	r3, [r2, #24]
	.loc 1 285 0
	ldrb	r3, [r2, #8]
	cmp	r3, #0
	beq	.L70
	.loc 1 286 0
	bl	pd4990a_readbit
.LVL7:
	b	.L70
.LVL8:
.L72:
.LBB26:
.LBB28:
	.loc 1 270 0
	ldr	r0, [r2, #12]
.LVL9:
.LBE28:
.LBE26:
	.loc 1 291 0
	mov	r3, #0
.LBB30:
.LBB27:
	.loc 1 270 0
	mov	r1, #255
.LBE27:
.LBE30:
	.loc 1 291 0
	strb	r3, [r2, #9]
.LBB31:
.LBB29:
	.loc 1 270 0
	mov	r4, r0
	ldr	r3, .L84+8
	and	r4, r4, r1
	str	r4, [r3]
	.loc 1 271 0
	lsr	r4, r0, #8
	and	r4, r4, r1
	.loc 1 274 0
	ldr	r2, [r2, #16]
	.loc 1 271 0
	str	r4, [r3, #4]
	.loc 1 272 0
	lsr	r4, r0, #16
	and	r4, r4, r1
	.loc 1 273 0
	lsr	r0, r0, #24
	.loc 1 272 0
	str	r4, [r3, #8]
	.loc 1 273 0
	str	r0, [r3, #12]
	.loc 1 274 0
	mov	r4, r2
	mov	r0, #15
	and	r4, r4, r0
	str	r4, [r3, #24]
	.loc 1 275 0
	lsr	r4, r2, #4
	.loc 1 276 0
	lsr	r2, r2, #8
	.loc 1 275 0
	and	r0, r0, r4
	.loc 1 276 0
	and	r1, r1, r2
	.loc 1 275 0
	str	r0, [r3, #16]
	.loc 1 276 0
	str	r1, [r3, #20]
	b	.L70
.LVL10:
.L73:
.LBE29:
.LBE31:
	.loc 1 295 0
	mov	r3, #1
	strb	r3, [r2, #8]
	b	.L70
.L74:
	.loc 1 298 0
	mov	r2, #1
	b	.L83
.L75:
	.loc 1 301 0
	mov	r2, #30
.L83:
	ldr	r3, .L84+8
	str	r2, [r3, #28]
.LVL11:
.L70:
.LBE23:
.LBE22:
.LBB32:
.LBB33:
	.loc 1 232 0
	ldr	r3, .L84
	mov	r2, #0
	str	r2, [r3, #12]
	.loc 1 233 0
	str	r2, [r3, #16]
	.loc 1 234 0
	str	r2, [r3, #24]
.L67:
.LBE33:
.LBE32:
	.loc 1 318 0
	ldr	r3, .L84
	mov	r2, #4
	and	r2, r2, r5
	str	r2, [r3, #32]
	.loc 1 320 0
	ldr	r2, [r3, #36]
	cmp	r2, #0
	beq	.L78
	lsl	r2, r5, #30
	bmi	.L78
.LBB34:
.LBB35:
	.loc 1 239 0
	ldr	r6, [r3, #24]
.LBE35:
.LBE34:
	.loc 1 322 0
	mov	r2, #1
	and	r2, r2, r5
.LBB37:
.LBB36:
	.loc 1 239 0
	cmp	r6, #31
	bgt	.L79
	.loc 1 240 0
	ldr	r1, [r3, #12]
	lsl	r2, r2, r6
	orr	r2, r2, r1
	str	r2, [r3, #12]
	b	.L80
.L79:
	.loc 1 242 0
	mov	r1, r6
	sub	r1, r1, #32
	lsl	r2, r2, r1
	ldr	r1, [r3, #16]
	orr	r2, r2, r1
	str	r2, [r3, #16]
.L80:
.LBE36:
.LBE37:
.LBB38:
.LBB39:
	.loc 1 247 0
	ldr	r4, .L84
	add	r6, r6, #1
	.loc 1 248 0
	ldrb	r3, [r4, #8]
	.loc 1 247 0
	str	r6, [r4, #24]
	.loc 1 248 0
	cmp	r3, #0
	beq	.L78
	.loc 1 249 0
	bl	pd4990a_readbit
	.loc 1 250 0
	cmp	r6, #52
	bne	.L78
	.loc 1 252 0
	mov	r3, #0
	strb	r3, [r4, #8]
.LBB40:
.LBB41:
	.loc 1 232 0
	str	r3, [r4, #12]
	.loc 1 233 0
	str	r3, [r4, #16]
	.loc 1 234 0
	str	r3, [r4, #24]
.LVL12:
.L78:
.LBE41:
.LBE40:
.LBE39:
.LBE38:
	.loc 1 325 0
	mov	r3, #2
	and	r5, r5, r3
.LVL13:
	ldr	r3, .L84
	.loc 1 326 0
	@ sp needed for prologue
	.loc 1 325 0
	str	r5, [r3, #36]
	.loc 1 326 0
	pop	{r4, r5, r6, pc}
.L85:
	.align	2
.L84:
	.word	.LANCHOR1
	.word	.L76
	.word	.LANCHOR0
.LFE180:
	.size	pd4990a_serial_control, .-pd4990a_serial_control
	.align	2
	.global	neoWrite4990a16
	.code	16
	.thumb_func
	.type	neoWrite4990a16, %function
neoWrite4990a16:
.LFB181:
	.loc 1 329 0
	push	{r4, lr}
.LCFI5:
.LVL14:
	.loc 1 330 0
	mov	r3, #7
	mov	r0, r1
.LVL15:
	and	r0, r0, r3
	bl	pd4990a_serial_control
.LVL16:
	.loc 1 331 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE181:
	.size	neoWrite4990a16, .-neoWrite4990a16
	.global	pd4990a
	.data
	.align	2
	.set	.LANCHOR0,. + 0
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
	.type	maxwaits, %object
	.size	maxwaits, 4
maxwaits:
	.word	1
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	retraces, %object
	.size	retraces, 4
retraces:
	.space	4
	.type	testbit, %object
	.size	testbit, 4
testbit:
	.space	4
	.type	reading, %object
	.size	reading, 1
reading:
	.space	1
	.type	writing, %object
	.size	writing, 1
writing:
	.space	1
	.space	2
	.type	shiftlo, %object
	.size	shiftlo, 4
shiftlo:
	.space	4
	.type	shifthi, %object
	.size	shifthi, 4
shifthi:
	.space	4
	.type	outputbit, %object
	.size	outputbit, 4
outputbit:
	.space	4
	.type	bitno, %object
	.size	bitno, 4
bitno:
	.space	4
	.type	testwaits, %object
	.size	testwaits, 4
testwaits:
	.space	4
	.type	command_line.7307, %object
	.size	command_line.7307, 4
command_line.7307:
	.space	4
	.type	clock_line.7306, %object
	.size	clock_line.7306, 4
clock_line.7306:
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
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.byte	0x4
	.4byte	.LCFI1-.LFB168
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.byte	0x4
	.4byte	.LCFI2-.LFB166
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
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.byte	0x4
	.4byte	.LCFI3-.LFB173
	.byte	0xe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.byte	0x4
	.4byte	.LCFI4-.LFB180
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
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.byte	0x4
	.4byte	.LCFI5-.LFB181
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
.LLST1:
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
.LLST2:
	.4byte	.LFB168-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
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
	.4byte	.LFB166-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE166-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB173-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB180-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE180-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE180-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB181-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE181-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 5 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 6 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 7 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 8 "C:/Users/GRX/NeoDS-master-old/arm9/include/cyclone.h"
	.file 9 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoCpu.h"
	.file 10 "C:/Users/GRX/NeoDS-master-old/arm9/../common/source/NeoAudioStream.h"
	.file 11 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoSystem.h"
	.file 12 "C:/Users/GRX/NeoDS-master-old/arm9/include/pd4990a.h"
	.file 13 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.section	.debug_info
	.4byte	0x10bd
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF228
	.byte	0x1
	.4byte	.LASF229
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2a
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x35
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x36
	.4byte	0x57
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.4byte	0x69
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
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
	.byte	0x3
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
	.byte	0x3
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x3
	.byte	0x63
	.4byte	0x4c
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x64
	.4byte	0x70
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x3
	.byte	0x68
	.4byte	0x3a
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x3
	.byte	0x69
	.4byte	0x5e
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
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
	.byte	0x3
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
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x28
	.byte	0x4
	.2byte	0x18c
	.4byte	0x1c5
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x18d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x18e
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x18f
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x190
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x191
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x192
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x193
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x194
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x195
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x196
	.4byte	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x198
	.4byte	0x121
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x8
	.byte	0x5
	.byte	0x29
	.4byte	0x1fa
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x5
	.byte	0x2a
	.4byte	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x5
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
	.byte	0x5
	.byte	0x2c
	.4byte	0x1d1
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0x9c
	.4byte	0x22c
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
	.byte	0x6
	.byte	0xa1
	.4byte	0x20b
	.uleb128 0x11
	.4byte	.LASF40
	.2byte	0x2020
	.byte	0x6
	.2byte	0x11a
	.4byte	0x2c3
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x11b
	.4byte	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x11e
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x121
	.4byte	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x122
	.4byte	0x200
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x123
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x124
	.4byte	0x2d4
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x125
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x126
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x201c
	.byte	0x0
	.uleb128 0x12
	.4byte	0x90
	.4byte	0x2d4
	.uleb128 0x13
	.4byte	0x107
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x90
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x128
	.4byte	0x237
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x59
	.4byte	0x313
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
	.byte	0x7
	.byte	0x62
	.4byte	0x334
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
	.byte	0x7
	.byte	0x6a
	.4byte	0x355
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
	.byte	0x7
	.byte	0x72
	.4byte	0x36a
	.uleb128 0x7
	.4byte	.LASF61
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF62
	.sleb128 1
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0xb0
	.byte	0x8
	.byte	0x15
	.4byte	0x500
	.uleb128 0x14
	.ascii	"d\000"
	.byte	0x8
	.byte	0x16
	.4byte	0x500
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.ascii	"a\000"
	.byte	0x8
	.byte	0x17
	.4byte	0x500
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.ascii	"pc\000"
	.byte	0x8
	.byte	0x18
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x14
	.ascii	"srh\000"
	.byte	0x8
	.byte	0x19
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x8
	.byte	0x1a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x8
	.byte	0x1b
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x14
	.ascii	"irq\000"
	.byte	0x8
	.byte	0x1c
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x14
	.ascii	"osp\000"
	.byte	0x8
	.byte	0x1d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x14
	.ascii	"xc\000"
	.byte	0x8
	.byte	0x1e
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x8
	.byte	0x1f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x8
	.byte	0x20
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x8
	.byte	0x21
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x8
	.byte	0x22
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x8
	.byte	0x23
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x8
	.byte	0x24
	.4byte	0x520
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x8
	.byte	0x25
	.4byte	0x520
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x8
	.byte	0x26
	.4byte	0x520
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x8
	.byte	0x27
	.4byte	0x520
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x8
	.byte	0x28
	.4byte	0x537
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x8
	.byte	0x29
	.4byte	0x54e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x8
	.byte	0x2a
	.4byte	0x565
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x8
	.byte	0x2b
	.4byte	0x520
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x8
	.byte	0x2c
	.4byte	0x520
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x8
	.byte	0x2d
	.4byte	0x520
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x8
	.byte	0x2e
	.4byte	0x57b
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x8
	.byte	0x2f
	.4byte	0xff
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x8
	.byte	0x30
	.4byte	0x587
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x8
	.byte	0x31
	.4byte	0x58d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x12
	.4byte	0x7b
	.4byte	0x510
	.uleb128 0x15
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x16
	.byte	0x1
	.4byte	0x7b
	.4byte	0x520
	.uleb128 0x17
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x510
	.uleb128 0x18
	.byte	0x1
	.4byte	0x537
	.uleb128 0x17
	.4byte	0x7b
	.uleb128 0x17
	.4byte	0x33
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x526
	.uleb128 0x18
	.byte	0x1
	.4byte	0x54e
	.uleb128 0x17
	.4byte	0x7b
	.uleb128 0x17
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x53d
	.uleb128 0x18
	.byte	0x1
	.4byte	0x565
	.uleb128 0x17
	.4byte	0x7b
	.uleb128 0x17
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x554
	.uleb128 0x16
	.byte	0x1
	.4byte	0x69
	.4byte	0x57b
	.uleb128 0x17
	.4byte	0x69
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x56b
	.uleb128 0x19
	.byte	0x1
	.4byte	0x69
	.uleb128 0x8
	.byte	0x4
	.4byte	0x581
	.uleb128 0x12
	.4byte	0x7b
	.4byte	0x59d
	.uleb128 0x15
	.4byte	0x107
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x9
	.byte	0x6
	.4byte	0x36a
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x9
	.byte	0x8
	.4byte	0x5b3
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5b9
	.uleb128 0x16
	.byte	0x1
	.4byte	0xa9
	.4byte	0x5c9
	.uleb128 0x17
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x9
	.byte	0x9
	.4byte	0x5d4
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5da
	.uleb128 0x16
	.byte	0x1
	.4byte	0xb3
	.4byte	0x5ea
	.uleb128 0x17
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x9
	.byte	0xa
	.4byte	0x5f5
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5fb
	.uleb128 0x16
	.byte	0x1
	.4byte	0xbe
	.4byte	0x60b
	.uleb128 0x17
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x9
	.byte	0xc
	.4byte	0x616
	.uleb128 0x8
	.byte	0x4
	.4byte	0x61c
	.uleb128 0x18
	.byte	0x1
	.4byte	0x62d
	.uleb128 0x17
	.4byte	0xbe
	.uleb128 0x17
	.4byte	0xa9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0x9
	.byte	0xd
	.4byte	0x638
	.uleb128 0x8
	.byte	0x4
	.4byte	0x63e
	.uleb128 0x18
	.byte	0x1
	.4byte	0x64f
	.uleb128 0x17
	.4byte	0xbe
	.uleb128 0x17
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x9
	.byte	0xe
	.4byte	0x65a
	.uleb128 0x8
	.byte	0x4
	.4byte	0x660
	.uleb128 0x18
	.byte	0x1
	.4byte	0x671
	.uleb128 0x17
	.4byte	0xbe
	.uleb128 0x17
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0x9
	.byte	0x10
	.4byte	0x5f5
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0xc
	.byte	0xa
	.byte	0x17
	.4byte	0x6c1
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0xa
	.byte	0x18
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.ascii	"end\000"
	.byte	0xa
	.byte	0x19
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.ascii	"acc\000"
	.byte	0xa
	.byte	0x1a
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0xa
	.byte	0x1b
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xa
	.byte	0x1c
	.4byte	0x67c
	.uleb128 0xf
	.4byte	.LASF97
	.byte	0xc
	.byte	0xa
	.byte	0x1f
	.4byte	0x703
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0xa
	.byte	0x20
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0xa
	.byte	0x21
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0xa
	.byte	0x22
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0xa
	.byte	0x23
	.4byte	0x6cc
	.uleb128 0x1a
	.4byte	.LASF230
	.byte	0x1
	.byte	0xb
	.byte	0x99
	.4byte	0x757
	.uleb128 0x7
	.4byte	.LASF102
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF103
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF104
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF105
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF106
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF107
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF108
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF109
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF110
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF111
	.sleb128 9
	.byte	0x0
	.uleb128 0x1b
	.2byte	0x248
	.byte	0xb
	.byte	0xc0
	.4byte	0xb45
	.uleb128 0x14
	.ascii	"cpu\000"
	.byte	0xb
	.byte	0xc1
	.4byte	0x59d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0xb
	.byte	0xc4
	.4byte	0xb45
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0xb
	.byte	0xc7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0xb
	.byte	0xc8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0xb
	.byte	0xcb
	.4byte	0xb55
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0xb
	.byte	0xcc
	.4byte	0x703
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0xb
	.byte	0xcd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0xb
	.byte	0xd0
	.4byte	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0xb
	.byte	0xd1
	.4byte	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x10
	.4byte	.LASF120
	.byte	0xb
	.byte	0xd2
	.4byte	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0xb
	.byte	0xd3
	.4byte	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x10
	.4byte	.LASF122
	.byte	0xb
	.byte	0xd4
	.4byte	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x10
	.4byte	.LASF123
	.byte	0xb
	.byte	0xd5
	.4byte	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x10
	.4byte	.LASF124
	.byte	0xb
	.byte	0xd6
	.4byte	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0xb
	.byte	0xd7
	.4byte	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0xb
	.byte	0xd8
	.4byte	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0xb
	.byte	0xda
	.4byte	0xb65
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0xb
	.byte	0xdd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0xb
	.byte	0xde
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0xb
	.byte	0xdf
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0xb
	.byte	0xe0
	.4byte	0xb76
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x10
	.4byte	.LASF132
	.byte	0xb
	.byte	0xe1
	.4byte	0xb76
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0xb
	.byte	0xe2
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x10
	.4byte	.LASF134
	.byte	0xb
	.byte	0xe5
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x10
	.4byte	.LASF135
	.byte	0xb
	.byte	0xe6
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x10
	.4byte	.LASF136
	.byte	0xb
	.byte	0xe7
	.4byte	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x10
	.4byte	.LASF137
	.byte	0xb
	.byte	0xe8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x10
	.4byte	.LASF138
	.byte	0xb
	.byte	0xea
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x10
	.4byte	.LASF139
	.byte	0xb
	.byte	0xeb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x10
	.4byte	.LASF140
	.byte	0xb
	.byte	0xec
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x10
	.4byte	.LASF141
	.byte	0xb
	.byte	0xed
	.4byte	0xb81
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x10
	.4byte	.LASF142
	.byte	0xb
	.byte	0xee
	.4byte	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x10
	.4byte	.LASF143
	.byte	0xb
	.byte	0xf1
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x10
	.4byte	.LASF144
	.byte	0xb
	.byte	0xf2
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x10
	.4byte	.LASF145
	.byte	0xb
	.byte	0xf3
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x10
	.4byte	.LASF146
	.byte	0xb
	.byte	0xf4
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x10
	.4byte	.LASF147
	.byte	0xb
	.byte	0xf7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x10
	.4byte	.LASF148
	.byte	0xb
	.byte	0xf8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0xb
	.byte	0xf9
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x10
	.4byte	.LASF150
	.byte	0xb
	.byte	0xfa
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x10
	.4byte	.LASF151
	.byte	0xb
	.byte	0xfb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0xb
	.byte	0xfc
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x10
	.4byte	.LASF153
	.byte	0xb
	.byte	0xfd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.4byte	.LASF154
	.byte	0xb
	.2byte	0x102
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xd
	.4byte	.LASF155
	.byte	0xb
	.2byte	0x103
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xd
	.4byte	.LASF156
	.byte	0xb
	.2byte	0x106
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xd
	.4byte	.LASF157
	.byte	0xb
	.2byte	0x108
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xd
	.4byte	.LASF158
	.byte	0xb
	.2byte	0x109
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.4byte	.LASF159
	.byte	0xb
	.2byte	0x10a
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.4byte	.LASF160
	.byte	0xb
	.2byte	0x10b
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.4byte	.LASF161
	.byte	0xb
	.2byte	0x10d
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.4byte	.LASF162
	.byte	0xb
	.2byte	0x10e
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.4byte	.LASF163
	.byte	0xb
	.2byte	0x10f
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.4byte	.LASF164
	.byte	0xb
	.2byte	0x110
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.4byte	.LASF165
	.byte	0xb
	.2byte	0x111
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xd
	.4byte	.LASF166
	.byte	0xb
	.2byte	0x114
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xd
	.4byte	.LASF167
	.byte	0xb
	.2byte	0x115
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xd
	.4byte	.LASF168
	.byte	0xb
	.2byte	0x116
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xd
	.4byte	.LASF169
	.byte	0xb
	.2byte	0x117
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xd
	.4byte	.LASF170
	.byte	0xb
	.2byte	0x118
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xd
	.4byte	.LASF171
	.byte	0xb
	.2byte	0x11b
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xd
	.4byte	.LASF172
	.byte	0xb
	.2byte	0x11c
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xd
	.4byte	.LASF173
	.byte	0xb
	.2byte	0x11f
	.4byte	0xb91
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xd
	.4byte	.LASF174
	.byte	0xb
	.2byte	0x122
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xd
	.4byte	.LASF175
	.byte	0xb
	.2byte	0x123
	.4byte	0xba1
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0x12
	.4byte	0x118
	.4byte	0xb55
	.uleb128 0x15
	.4byte	0x107
	.byte	0x8
	.byte	0x0
	.uleb128 0x12
	.4byte	0x6c1
	.4byte	0xb65
	.uleb128 0x15
	.4byte	0x107
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb6b
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb71
	.uleb128 0x1c
	.4byte	0xa9
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb7c
	.uleb128 0x1c
	.4byte	0xbe
	.uleb128 0x12
	.4byte	0xbe
	.4byte	0xb91
	.uleb128 0x15
	.4byte	0x107
	.byte	0xf
	.byte	0x0
	.uleb128 0x12
	.4byte	0xa9
	.4byte	0xba1
	.uleb128 0x15
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x12
	.4byte	0xa9
	.4byte	0xbb0
	.uleb128 0x1d
	.4byte	0x107
	.byte	0x0
	.uleb128 0x1e
	.2byte	0x400
	.byte	0xb
	.byte	0xbf
	.4byte	0xbcb
	.uleb128 0x1f
	.4byte	0x757
	.uleb128 0x20
	.4byte	.LASF231
	.byte	0xb
	.2byte	0x125
	.4byte	0xbcb
	.byte	0x0
	.uleb128 0x12
	.4byte	0xbe
	.4byte	0xbdb
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF176
	.2byte	0x2000
	.byte	0xb
	.byte	0xbe
	.4byte	0xc61
	.uleb128 0x22
	.4byte	0xbb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF177
	.byte	0xb
	.2byte	0x128
	.4byte	0xc61
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xd
	.4byte	.LASF178
	.byte	0xb
	.2byte	0x129
	.4byte	0xc71
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xd
	.4byte	.LASF179
	.byte	0xb
	.2byte	0x12a
	.4byte	0xc81
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xd
	.4byte	.LASF180
	.byte	0xb
	.2byte	0x12b
	.4byte	0xc91
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xd
	.4byte	.LASF181
	.byte	0xb
	.2byte	0x12c
	.4byte	0xca1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xd
	.4byte	.LASF182
	.byte	0xb
	.2byte	0x12d
	.4byte	0xcb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xd
	.4byte	.LASF183
	.byte	0xb
	.2byte	0x12e
	.4byte	0xcc1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0x12
	.4byte	0x5a8
	.4byte	0xc71
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x5c9
	.4byte	0xc81
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x5ea
	.4byte	0xc91
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x60b
	.4byte	0xca1
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x62d
	.4byte	0xcb1
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x64f
	.4byte	0xcc1
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x671
	.4byte	0xcd1
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF184
	.byte	0xb
	.2byte	0x12f
	.4byte	0xbdb
	.uleb128 0xf
	.4byte	.LASF185
	.byte	0x1c
	.byte	0xc
	.byte	0x7
	.4byte	0xd4c
	.uleb128 0x10
	.4byte	.LASF186
	.byte	0xc
	.byte	0x8
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF187
	.byte	0xc
	.byte	0x9
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF188
	.byte	0xc
	.byte	0xa
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF189
	.byte	0xc
	.byte	0xb
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF190
	.byte	0xc
	.byte	0xc
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF191
	.byte	0xc
	.byte	0xd
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF192
	.byte	0xc
	.byte	0xe
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF193
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x102
	.byte	0x1
	.4byte	0xa9
	.byte	0x1
	.uleb128 0x25
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x10c
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x117
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF233
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.byte	0x1
	.4byte	0xd90
	.uleb128 0x27
	.ascii	"bit\000"
	.byte	0x1
	.byte	0xed
	.4byte	0xa9
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF196
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF197
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	.LFB167
	.4byte	.LFE167
	.byte	0x1
	.byte	0x5d
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF198
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.4byte	.LFB169
	.4byte	.LFE169
	.4byte	.LLST1
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF203
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	.LFB168
	.4byte	.LFE168
	.4byte	.LLST2
	.4byte	0xdea
	.uleb128 0x2b
	.4byte	.LASF205
	.byte	0x1
	.byte	0x6c
	.4byte	0x69
	.4byte	.LLST3
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF199
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.4byte	.LFB166
	.4byte	.LFE166
	.4byte	.LLST4
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF200
	.byte	0x1
	.byte	0xb0
	.4byte	0xb3
	.4byte	.LFB170
	.4byte	.LFE170
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF201
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.4byte	0xb3
	.4byte	.LFB171
	.4byte	.LFE171
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF202
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.4byte	0xb3
	.4byte	.LFB172
	.4byte	.LFE172
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2e
	.4byte	.LASF234
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.4byte	.LFB173
	.4byte	.LFE173
	.4byte	.LLST8
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x133
	.byte	0x1
	.4byte	.LFB180
	.4byte	.LFE180
	.4byte	.LLST9
	.4byte	0xf25
	.uleb128 0x30
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x133
	.4byte	0x33
	.4byte	.LLST10
	.uleb128 0x31
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x135
	.4byte	0x69
	.byte	0x5
	.byte	0x3
	.4byte	clock_line.7306
	.uleb128 0x31
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x136
	.4byte	0x69
	.byte	0x5
	.byte	0x3
	.4byte	command_line.7307
	.uleb128 0x32
	.4byte	0xd6d
	.4byte	.LBB22
	.4byte	.LBE22
	.byte	0x1
	.2byte	0x13b
	.4byte	0xeda
	.uleb128 0x33
	.4byte	0xd55
	.4byte	.LBB24
	.4byte	.LBE24
	.byte	0x1
	.2byte	0x119
	.uleb128 0x34
	.4byte	0xd63
	.4byte	.LBB26
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x124
	.byte	0x0
	.uleb128 0x33
	.4byte	0xd4c
	.4byte	.LBB32
	.4byte	.LBE32
	.byte	0x1
	.2byte	0x13c
	.uleb128 0x35
	.4byte	0xd77
	.4byte	.LBB34
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x142
	.4byte	0xf04
	.uleb128 0x36
	.4byte	0xd84
	.byte	0x0
	.uleb128 0x37
	.4byte	0xd90
	.4byte	.LBB38
	.4byte	.LBE38
	.byte	0x1
	.2byte	0x143
	.uleb128 0x38
	.4byte	0xd4c
	.4byte	.LBB40
	.4byte	.LBE40
	.byte	0x1
	.byte	0xfd
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x148
	.byte	0x1
	.4byte	.LFB181
	.4byte	.LFE181
	.4byte	.LLST11
	.4byte	0xf60
	.uleb128 0x30
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x148
	.4byte	0xbe
	.4byte	.LLST12
	.uleb128 0x30
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x148
	.4byte	0xb3
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF235
	.byte	0x6
	.2byte	0x12e
	.4byte	0xf6c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2da
	.uleb128 0x3a
	.4byte	.LASF210
	.byte	0x1
	.byte	0x1d
	.4byte	0xbe
	.byte	0x5
	.byte	0x3
	.4byte	shiftlo
	.uleb128 0x3a
	.4byte	.LASF211
	.byte	0x1
	.byte	0x1d
	.4byte	0xbe
	.byte	0x5
	.byte	0x3
	.4byte	shifthi
	.uleb128 0x3a
	.4byte	.LASF212
	.byte	0x1
	.byte	0x1e
	.4byte	0x69
	.byte	0x5
	.byte	0x3
	.4byte	retraces
	.uleb128 0x3a
	.4byte	.LASF213
	.byte	0x1
	.byte	0x1f
	.4byte	0x69
	.byte	0x5
	.byte	0x3
	.4byte	testwaits
	.uleb128 0x3a
	.4byte	.LASF214
	.byte	0x1
	.byte	0x20
	.4byte	0x69
	.byte	0x5
	.byte	0x3
	.4byte	maxwaits
	.uleb128 0x3a
	.4byte	.LASF215
	.byte	0x1
	.byte	0x21
	.4byte	0x69
	.byte	0x5
	.byte	0x3
	.4byte	testbit
	.uleb128 0x3a
	.4byte	.LASF216
	.byte	0x1
	.byte	0x23
	.4byte	0x69
	.byte	0x5
	.byte	0x3
	.4byte	outputbit
	.uleb128 0x3a
	.4byte	.LASF217
	.byte	0x1
	.byte	0x24
	.4byte	0x69
	.byte	0x5
	.byte	0x3
	.4byte	bitno
	.uleb128 0x3a
	.4byte	.LASF218
	.byte	0x1
	.byte	0x26
	.4byte	0x10a
	.byte	0x5
	.byte	0x3
	.4byte	reading
	.uleb128 0x3a
	.4byte	.LASF219
	.byte	0x1
	.byte	0x27
	.4byte	0x10a
	.byte	0x5
	.byte	0x3
	.4byte	writing
	.uleb128 0x3b
	.4byte	.LASF220
	.byte	0xd
	.byte	0x56
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.4byte	.LASF221
	.byte	0xd
	.byte	0x57
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0x1046
	.4byte	0x1046
	.uleb128 0x15
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x104c
	.uleb128 0x3c
	.4byte	0x57
	.uleb128 0x3d
	.4byte	.LASF222
	.byte	0x4
	.2byte	0x19c
	.4byte	0x1036
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0x1c5
	.4byte	0x106f
	.uleb128 0x15
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x3d
	.4byte	.LASF223
	.byte	0x4
	.2byte	0x19f
	.4byte	0x105f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.4byte	.LASF224
	.byte	0x6
	.2byte	0x12b
	.4byte	0x2da
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.4byte	.LASF225
	.byte	0xb
	.2byte	0x149
	.4byte	0x109a
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0xcd1
	.uleb128 0x3d
	.4byte	.LASF226
	.byte	0xb
	.2byte	0x14d
	.4byte	0xcd1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.4byte	.LASF227
	.byte	0x1
	.byte	0x12
	.4byte	0xcdd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pd4990a
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
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xf2
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x10c1
	.4byte	0xd99
	.ascii	"pd4990a_init\000"
	.4byte	0xdac
	.ascii	"pd4990a_increment_month\000"
	.4byte	0xdc1
	.ascii	"pd4990a_increment_day\000"
	.4byte	0xdea
	.ascii	"pd4990a_addretrace\000"
	.4byte	0xdff
	.ascii	"read_4990_output\000"
	.4byte	0xe15
	.ascii	"read_4990_testbit\000"
	.4byte	0xe2c
	.ascii	"read_4990_databit\000"
	.4byte	0xe57
	.ascii	"pd4990a_serial_control\000"
	.4byte	0xf25
	.ascii	"neoWrite4990a16\000"
	.4byte	0x108b
	.ascii	"g_neo\000"
	.4byte	0x10ae
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
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF160:
	.ascii	"displayCounterLoad\000"
.LASF210:
	.ascii	"shiftlo\000"
.LASF166:
	.ascii	"irqVectorLatch\000"
.LASF96:
	.ascii	"TNeoADPCMStream\000"
.LASF82:
	.ascii	"ResetCallback\000"
.LASF16:
	.ascii	"true\000"
.LASF72:
	.ascii	"read8\000"
.LASF50:
	.ascii	"OBJMODE_BLENDED\000"
.LASF17:
	.ascii	"bool\000"
.LASF169:
	.ascii	"sramProtectLatch\000"
.LASF220:
	.ascii	"mosaicShadow\000"
.LASF125:
	.ascii	"pSpriteRam\000"
.LASF170:
	.ascii	"paletteRamLatch\000"
.LASF36:
	.ascii	"GL_POSITION\000"
.LASF111:
	.ascii	"NEOROM_COUNT\000"
.LASF42:
	.ascii	"clearColor\000"
.LASF155:
	.ascii	"sramProtection\000"
.LASF219:
	.ascii	"writing\000"
.LASF172:
	.ascii	"debug\000"
.LASF102:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF29:
	.ascii	"type\000"
.LASF122:
	.ascii	"pSram\000"
.LASF189:
	.ascii	"days\000"
.LASF47:
	.ascii	"nextPBlock\000"
.LASF162:
	.ascii	"ctrl2Reg\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF21:
	.ascii	"angle\000"
.LASF33:
	.ascii	"data\000"
.LASF148:
	.ascii	"cpuClocksPerScanline\000"
.LASF146:
	.ascii	"tileScaleY\000"
.LASF106:
	.ascii	"NEOROM_AUDODATA\000"
.LASF228:
	.ascii	"GNU C 4.4.3\000"
.LASF134:
	.ascii	"scanline\000"
.LASF44:
	.ascii	"texturePtrs\000"
.LASF198:
	.ascii	"pd4990a_increment_month\000"
.LASF100:
	.ascii	"frequency\000"
.LASF123:
	.ascii	"pCard\000"
.LASF154:
	.ascii	"sramProtectCount\000"
.LASF80:
	.ascii	"fetch32\000"
.LASF25:
	.ascii	"scaleY\000"
.LASF207:
	.ascii	"command_line\000"
.LASF101:
	.ascii	"TNeoADPCMBStream\000"
.LASF10:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF202:
	.ascii	"read_4990_databit\000"
.LASF105:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF52:
	.ascii	"OBJMODE_BITMAP\000"
.LASF177:
	.ascii	"cpuRead8Table\000"
.LASF229:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/pd4990a.c"
	.ascii	"\000"
.LASF128:
	.ascii	"smaAddr0\000"
.LASF129:
	.ascii	"smaAddr1\000"
.LASF85:
	.ascii	"TCycloneContext\000"
.LASF191:
	.ascii	"year\000"
.LASF118:
	.ascii	"pRom0\000"
.LASF119:
	.ascii	"pRom1\000"
.LASF19:
	.ascii	"long int\000"
.LASF55:
	.ascii	"OBJSHAPE_TALL\000"
.LASF161:
	.ascii	"ctrl1Reg\000"
.LASF15:
	.ascii	"false\000"
.LASF214:
	.ascii	"maxwaits\000"
.LASF217:
	.ascii	"bitno\000"
.LASF68:
	.ascii	"state_flags\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF45:
	.ascii	"activeTexture\000"
.LASF113:
	.ascii	"spriteCount\000"
.LASF4:
	.ascii	"short int\000"
.LASF212:
	.ascii	"retraces\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF70:
	.ascii	"membase\000"
.LASF14:
	.ascii	"double\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF221:
	.ascii	"mosaicShadowSub\000"
.LASF218:
	.ascii	"reading\000"
.LASF165:
	.ascii	"coinReg\000"
.LASF188:
	.ascii	"hours\000"
.LASF230:
	.ascii	"_TNeoRomRegion\000"
.LASF12:
	.ascii	"uint32\000"
.LASF197:
	.ascii	"pd4990a_init\000"
.LASF107:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF81:
	.ascii	"IrqCallback\000"
.LASF175:
	.ascii	"varEnd\000"
.LASF49:
	.ascii	"OBJMODE_NORMAL\000"
.LASF224:
	.ascii	"glGlobalData\000"
.LASF205:
	.ascii	"real_year\000"
.LASF157:
	.ascii	"vramMod\000"
.LASF121:
	.ascii	"pRam\000"
.LASF38:
	.ascii	"GL_TEXTURE\000"
.LASF133:
	.ascii	"smaRand\000"
.LASF86:
	.ascii	"TRead8Func\000"
.LASF75:
	.ascii	"write8\000"
.LASF167:
	.ascii	"screenDarkLatch\000"
.LASF190:
	.ascii	"month\000"
.LASF199:
	.ascii	"pd4990a_addretrace\000"
.LASF173:
	.ascii	"keyGrid\000"
.LASF171:
	.ascii	"active\000"
.LASF211:
	.ascii	"shifthi\000"
.LASF159:
	.ascii	"displayControlMask\000"
.LASF153:
	.ascii	"romBankAddress\000"
.LASF225:
	.ascii	"g_neo\000"
.LASF20:
	.ascii	"long unsigned int\000"
.LASF46:
	.ascii	"nextBlock\000"
.LASF51:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF140:
	.ascii	"spriteMask\000"
.LASF127:
	.ascii	"bankTable\000"
.LASF98:
	.ascii	"initOffset\000"
.LASF34:
	.ascii	"cur_size\000"
.LASF32:
	.ascii	"DynamicArray\000"
.LASF28:
	.ascii	"size\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF91:
	.ascii	"TWrite32Func\000"
.LASF151:
	.ascii	"paletteBank\000"
.LASF115:
	.ascii	"adpcm\000"
.LASF74:
	.ascii	"read32\000"
.LASF71:
	.ascii	"checkpc\000"
.LASF150:
	.ascii	"watchdogCounter\000"
.LASF120:
	.ascii	"pBios\000"
.LASF149:
	.ascii	"irqPending\000"
.LASF39:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF77:
	.ascii	"write32\000"
.LASF147:
	.ascii	"cpuClockDivide\000"
.LASF215:
	.ascii	"testbit\000"
.LASF24:
	.ascii	"scaleX\000"
.LASF76:
	.ascii	"write16\000"
.LASF89:
	.ascii	"TWrite8Func\000"
.LASF132:
	.ascii	"smaBankbit\000"
.LASF180:
	.ascii	"cpuWrite8Table\000"
.LASF204:
	.ascii	"pd4990a_serial_control\000"
.LASF64:
	.ascii	"unused\000"
.LASF145:
	.ascii	"tileScaleX\000"
.LASF196:
	.ascii	"pd4990a_nextbit\000"
.LASF203:
	.ascii	"pd4990a_increment_day\000"
.LASF209:
	.ascii	"address\000"
.LASF206:
	.ascii	"clock_line\000"
.LASF186:
	.ascii	"seconds\000"
.LASF92:
	.ascii	"TCheckPcFunc\000"
.LASF37:
	.ascii	"GL_MODELVIEW\000"
.LASF63:
	.ascii	"Cyclone\000"
.LASF31:
	.ascii	"BgState\000"
.LASF213:
	.ascii	"testwaits\000"
.LASF103:
	.ascii	"NEOROM_BIOS\000"
.LASF61:
	.ascii	"OBJCOLOR_16\000"
.LASF117:
	.ascii	"adpcmActive\000"
.LASF114:
	.ascii	"romBankCount\000"
.LASF67:
	.ascii	"reserved\000"
.LASF104:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF137:
	.ascii	"vramBaseMask\000"
.LASF13:
	.ascii	"float\000"
.LASF59:
	.ascii	"OBJSIZE_32\000"
.LASF66:
	.ascii	"prev_pc\000"
.LASF41:
	.ascii	"matrixMode\000"
.LASF130:
	.ascii	"smaBankAddr\000"
.LASF187:
	.ascii	"minutes\000"
.LASF184:
	.ascii	"TNeoContext\000"
.LASF223:
	.ascii	"bgState\000"
.LASF30:
	.ascii	"dirty\000"
.LASF40:
	.ascii	"gl_hidden_globals\000"
.LASF73:
	.ascii	"read16\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF136:
	.ascii	"pVramBase\000"
.LASF95:
	.ascii	"step\000"
.LASF235:
	.ascii	"glGlob\000"
.LASF108:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF27:
	.ascii	"scrollY\000"
.LASF183:
	.ascii	"cpuCheckPcTable\000"
.LASF69:
	.ascii	"cycles\000"
.LASF222:
	.ascii	"bgControl\000"
.LASF231:
	.ascii	"fill\000"
.LASF138:
	.ascii	"displayCounter\000"
.LASF35:
	.ascii	"GL_PROJECTION\000"
.LASF58:
	.ascii	"OBJSIZE_16\000"
.LASF23:
	.ascii	"centerY\000"
.LASF84:
	.ascii	"internal\000"
.LASF178:
	.ascii	"cpuRead16Table\000"
.LASF195:
	.ascii	"pd4990a_process_command\000"
.LASF227:
	.ascii	"pd4990a\000"
.LASF124:
	.ascii	"pVram\000"
.LASF142:
	.ascii	"pTileBuffer\000"
.LASF201:
	.ascii	"read_4990_testbit\000"
.LASF18:
	.ascii	"char\000"
.LASF216:
	.ascii	"outputbit\000"
.LASF168:
	.ascii	"fixedRomLatch\000"
.LASF83:
	.ascii	"UnrecognizedCallback\000"
.LASF185:
	.ascii	"pd4990a_s\000"
.LASF208:
	.ascii	"neoWrite4990a16\000"
.LASF97:
	.ascii	"_TNeoADPCMBStream\000"
.LASF192:
	.ascii	"weekday\000"
.LASF135:
	.ascii	"frameCount\000"
.LASF93:
	.ascii	"_TNeoADPCMStream\000"
.LASF139:
	.ascii	"autoAnimationCounter\000"
.LASF78:
	.ascii	"fetch8\000"
.LASF94:
	.ascii	"offset\000"
.LASF193:
	.ascii	"pd4990a_resetbitstream\000"
.LASF57:
	.ascii	"OBJSIZE_8\000"
.LASF56:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF62:
	.ascii	"OBJCOLOR_256\000"
.LASF22:
	.ascii	"centerX\000"
.LASF26:
	.ascii	"scrollX\000"
.LASF233:
	.ascii	"pd4990a_writebit\000"
.LASF141:
	.ascii	"paletteDirty\000"
.LASF112:
	.ascii	"pVideoWriteTable\000"
.LASF87:
	.ascii	"TRead16Func\000"
.LASF164:
	.ascii	"ctrl4Reg\000"
.LASF234:
	.ascii	"pd4990a_readbit\000"
.LASF53:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF79:
	.ascii	"fetch16\000"
.LASF109:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF43:
	.ascii	"textures\000"
.LASF182:
	.ascii	"cpuWrite32Table\000"
.LASF152:
	.ascii	"fixedBank\000"
.LASF116:
	.ascii	"adpcmb\000"
.LASF88:
	.ascii	"TRead32Func\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF200:
	.ascii	"read_4990_output\000"
.LASF110:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF65:
	.ascii	"flags\000"
.LASF90:
	.ascii	"TWrite16Func\000"
.LASF143:
	.ascii	"tileOffsetX\000"
.LASF144:
	.ascii	"tileOffsetY\000"
.LASF226:
	.ascii	"g_neoContext\000"
.LASF54:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF156:
	.ascii	"vramOffset\000"
.LASF60:
	.ascii	"OBJSIZE_64\000"
.LASF194:
	.ascii	"pd4990a_update_date\000"
.LASF48:
	.ascii	"nameCount\000"
.LASF131:
	.ascii	"smaBankoffset\000"
.LASF176:
	.ascii	"_TNeoContext\000"
.LASF181:
	.ascii	"cpuWrite16Table\000"
.LASF126:
	.ascii	"pPalette\000"
.LASF179:
	.ascii	"cpuRead32Table\000"
.LASF232:
	.ascii	"pd4990a_getcommand\000"
.LASF158:
	.ascii	"displayControl\000"
.LASF99:
	.ascii	"freqCounter\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF163:
	.ascii	"ctrl3Reg\000"
.LASF174:
	.ascii	"frameCounter\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
