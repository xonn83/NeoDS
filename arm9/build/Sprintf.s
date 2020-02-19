	.code	16
	.file	"Sprintf.c"
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
	.type	dopr_outch, %function
dopr_outch:
.LFB110:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/Sprintf.c"
	.loc 1 450 0
	push	{r4, r5, lr}
.LCFI0:
.LVL0:
	.loc 1 450 0
	mov	r4, r1
	.loc 1 451 0
	ldr	r1, [r1]
.LVL1:
	.loc 1 450 0
	mov	r5, r0
	mov	r0, r3
.LVL2:
	.loc 1 451 0
	add	r3, r1, #1
.LVL3:
	cmp	r3, r2
	bcs	.L2
	.loc 1 452 0
	strb	r0, [r5, r1]
	str	r3, [r4]
.L2:
	.loc 1 454 0
	mov	r0, #1
.LVL4:
	@ sp needed for prologue
.LVL5:
.LVL6:
	pop	{r4, r5, pc}
.LFE110:
	.size	dopr_outch, .-dopr_outch
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"0123456789ABCDEF\000"
	.align	2
.LC2:
	.ascii	"0123456789abcdef\000"
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.text
	.align	2
	.code 16
	.thumb_func
	.type	fmtint, %function
fmtint:
.LFB109:
	.loc 1 363 0
	push	{r4, r5, r6, lr}
.LCFI1:
.LVL7:
	sub	sp, sp, #56
.LCFI2:
	.loc 1 363 0
	ldr	r6, [sp, #80]
.LVL8:
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r0, r3
.LVL9:
	cmp	r6, #0
	bge	.L6
.LVL10:
	mov	r6, #0
.L6:
	.loc 1 376 0
	mov	r4, r0
.LVL11:
	.loc 1 378 0
	ldr	r0, [sp, #84]
.LVL12:
	lsl	r0, r0, #25
	bmi	.L7
.LVL13:
	.loc 1 380 0
	cmp	r4, #0
	bge	.L9
	.loc 1 382 0
	neg	r4, r4
	mov	r1, #45
	b	.L49
.LVL14:
.L9:
	.loc 1 385 0
	ldr	r2, [sp, #84]
	lsl	r2, r2, #30
	bpl	.L12
	mov	r3, #43
.LVL15:
	str	r3, [sp, #16]
.LVL16:
	b	.L11
.LVL17:
.L12:
	.loc 1 388 0
	ldr	r0, [sp, #84]
	lsl	r0, r0, #29
	bpl	.L7
	mov	r1, #32
.LVL18:
.L49:
	str	r1, [sp, #16]
.LVL19:
	b	.L11
.LVL20:
.L7:
	mov	r2, #0
	str	r2, [sp, #16]
.LVL21:
.L11:
	.loc 1 392 0
	ldr	r0, [sp, #84]
	mov	r3, #32
.LVL22:
	and	r0, r0, r3
	mov	r1, #0
	str	r0, [sp, #12]
	str	r1, [sp, #20]
.LVL23:
.LVL24:
.L15:
	.loc 1 395 0
	ldr	r2, [sp, #12]
	cmp	r2, #0
	beq	.L16
	ldr	r5, .L50
	b	.L18
.L16:
	ldr	r5, .L50+4
.L18:
	mov	r0, r4
	ldr	r1, [sp, #72]
	bl	__aeabi_uidivmod
	ldr	r0, [sp, #20]
	ldrb	r2, [r5, r1]
	add	r3, sp, #24
	strb	r2, [r0, r3]
	add	r0, r0, #1
	str	r0, [sp, #20]
	.loc 1 398 0
	ldr	r1, [sp, #72]
	mov	r0, r4
	bl	__aeabi_uidiv
	mov	r4, r0
	.loc 1 399 0
	cmp	r0, #0
	bne	.L19
.LVL25:
	.loc 1 400 0
	ldr	r1, [sp, #20]
	cmp	r1, #32
	bne	.L22
	b	.L21
.L19:
	.loc 1 399 0
	ldr	r2, [sp, #20]
	cmp	r2, #32
	bne	.L15
.L21:
	mov	r3, #31
	str	r3, [sp, #20]
.L22:
	.loc 1 401 0
	ldr	r0, [sp, #20]
.LVL26:
	add	r3, sp, #24
	mov	r2, #0
	strb	r2, [r3, r0]
	.loc 1 403 0
	sub	r1, r6, r0
.LVL27:
	.loc 1 404 0
	mov	r3, r6
	cmp	r6, r0
	bge	.L23
	ldr	r3, [sp, #20]
.L23:
	ldr	r2, [sp, #76]
	ldr	r0, [sp, #16]
	sub	r2, r2, r3
	neg	r3, r0
	lsr	r3, r3, #31
	sub	r2, r2, r3
.LVL28:
	sub	r5, r1, #0
	bge	.L25
.LVL29:
	mov	r5, #0
.L25:
	sub	r4, r2, #0
	bge	.L26
.LVL30:
	mov	r4, #0
.L26:
	.loc 1 407 0
	ldr	r1, [sp, #84]
.LVL31:
	lsl	r1, r1, #27
	bpl	.L27
	.loc 1 409 0
	cmp	r5, r4
	bge	.L29
	mov	r5, r4
.L29:
	mov	r4, #0
.L27:
	.loc 1 412 0
	ldr	r2, [sp, #84]
.LVL32:
	lsl	r2, r2, #31
	bpl	.L30
	.loc 1 413 0
	neg	r4, r4
.L30:
	mov	r6, #0
.LVL33:
	b	.L32
.L33:
	.loc 1 418 0
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	mov	r3, #32
	bl	dopr_outch
	.loc 1 419 0
	sub	r4, r4, #1
	.loc 1 418 0
	add	r6, r6, r0
.L32:
	.loc 1 416 0
	cmp	r4, #0
	bgt	.L33
	.loc 1 423 0
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L35
	.loc 1 424 0
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	bl	dopr_outch
	add	r6, r6, r0
.L35:
	.loc 1 427 0
	cmp	r5, #0
	bne	.L47
	b	.L38
.L39:
	.loc 1 431 0
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	mov	r3, #48
	bl	dopr_outch
	.loc 1 432 0
	sub	r5, r5, #1
	.loc 1 431 0
	add	r6, r6, r0
.L47:
	.loc 1 429 0
	cmp	r5, #0
	bgt	.L39
.L38:
	ldr	r0, [sp, #20]
	add	r1, sp, #56
	add	r3, r0, r1
	mov	r5, r3
.LVL34:
	sub	r5, r5, #33
	b	.L40
.L41:
	.loc 1 438 0
	ldr	r2, [sp, #20]
	ldr	r0, [sp, #8]
	sub	r2, r2, #1
	str	r2, [sp, #20]
	ldrb	r3, [r5]
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	bl	dopr_outch
	sub	r5, r5, #1
	add	r6, r6, r0
.L40:
	.loc 1 437 0
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bgt	.L41
	b	.L48
.L43:
	.loc 1 442 0
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	mov	r3, #32
	bl	dopr_outch
	.loc 1 443 0
	add	r4, r4, #1
	.loc 1 442 0
	add	r6, r6, r0
.L48:
	.loc 1 441 0
	cmp	r4, #0
	bne	.L43
	.loc 1 447 0
	mov	r0, r6
	add	sp, sp, #56
	@ sp needed for prologue
.LVL35:
.LVL36:
	pop	{r4, r5, r6, pc}
.L51:
	.align	2
.L50:
	.word	.LC0
	.word	.LC2
.LFE109:
	.size	fmtint, .-fmtint
	.section	.rodata.str1.4
	.align	2
.LC6:
	.ascii	"<NULL>\000"
	.text
	.align	2
	.global	neoVsnprintf
	.code 16
	.thumb_func
	.type	neoVsnprintf, %function
neoVsnprintf:
.LFB112:
	.loc 1 466 0
	push	{r4, r5, r6, lr}
.LCFI3:
.LVL37:
	sub	sp, sp, #72
.LCFI4:
	.loc 1 466 0
	str	r0, [sp, #24]
	str	r1, [sp, #20]
	mov	r5, r3
	.loc 1 467 0
	cmp	r0, #0
	beq	.L53
.LVL38:
	.loc 1 468 0
	mov	r3, #0
	strb	r3, [r0]
.LVL39:
.L53:
.LBB6:
.LBB7:
	.loc 1 125 0
	mov	r3, #0
	.loc 1 127 0
	mov	r1, #1
	.loc 1 125 0
	str	r3, [sp, #68]
.LVL40:
	.loc 1 127 0
	neg	r1, r1
	ldrb	r4, [r2]
.LVL41:
	add	r6, r2, #1
.LVL42:
	str	r3, [sp, #44]
.LVL43:
	str	r1, [sp, #52]
.LVL44:
	str	r3, [sp, #32]
.LVL45:
	str	r3, [sp, #56]
.LVL46:
	str	r3, [sp, #60]
.LVL47:
	str	r3, [sp, #28]
.LVL48:
.LVL49:
.L168:
	.loc 1 132 0
	cmp	r4, #0
	bne	.LCB436
	b	.L56	@long jump
.LCB436:
	.loc 1 135 0
	ldr	r2, [sp, #32]
.LVL50:
	cmp	r2, #6
	bls	.LCB441
	b	.L58	@long jump
.LCB441:
	lsl	r3, r2, #2
	ldr	r2, .L169
	ldr	r3, [r3, r2]
	mov	pc, r3
	.section	.rodata
	.align	2
	.align	2
.L66:
	.word	.L59
	.word	.L60
	.word	.L61
	.word	.L62
	.word	.L63
	.word	.L64
	.word	.L65
	.text
.L59:
	.loc 1 138 0
	cmp	r4, #37
	bne	.L67
	mov	r3, #1
	str	r3, [sp, #32]
	b	.L69
.L67:
.LBE7:
	.loc 1 141 0
	add	r1, sp, #68
	ldr	r0, [sp, #24]
	ldr	r2, [sp, #20]
	mov	r3, r4
	bl	dopr_outch
.LVL51:
.LBB8:
	ldr	r1, [sp, #28]
	add	r1, r1, r0
	str	r1, [sp, #28]
.LVL52:
.L69:
	.loc 1 142 0
	ldrb	r4, [r6]
	add	r6, r6, #1
	b	.L58
.LVL53:
.L60:
	.loc 1 145 0
	cmp	r4, #43
	beq	.L73
	cmp	r4, #43
	bhi	.L76
	cmp	r4, #32
	beq	.L71
	cmp	r4, #35
	bne	.L70
	b	.L72
.L76:
	cmp	r4, #45
	beq	.L74
	cmp	r4, #48
	beq	.L75
.L70:
	mov	r2, #2
	b	.L158
.L74:
	.loc 1 148 0
	mov	r3, #1
	b	.L162
.L73:
	.loc 1 152 0
	mov	r3, #2
.L163:
	ldr	r2, [sp, #56]
	orr	r2, r2, r3
	str	r2, [sp, #56]
.LVL54:
.L159:
	.loc 1 153 0
	ldrb	r4, [r6]
	add	r6, r6, #1
	b	.L168
.LVL55:
.L71:
	.loc 1 156 0
	mov	r3, #4
.L162:
	ldr	r1, [sp, #56]
	orr	r1, r1, r3
	str	r1, [sp, #56]
	b	.L159
.L72:
	.loc 1 160 0
	mov	r3, #8
	b	.L163
.L75:
	.loc 1 164 0
	mov	r3, #16
	b	.L162
.L61:
	.loc 1 173 0
	ldr	r3, .L169+4
	ldr	r3, [r3]
	ldrb	r3, [r3, r4]
	lsl	r2, r3, #29
	bpl	.L77
	.loc 1 175 0
	ldr	r1, [sp, #44]
	lsl	r3, r1, #2
	add	r3, r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r4
	sub	r3, r3, #48
	str	r3, [sp, #44]
	b	.L159
.L77:
	.loc 1 178 0
	cmp	r4, #42
	beq	.LCB579
	b	.L79	@long jump
.LCB579:
	.loc 1 180 0
	ldr	r2, [r5]
	.loc 1 181 0
	mov	r3, #3
	.loc 1 180 0
	str	r2, [sp, #44]
	.loc 1 181 0
	ldrb	r4, [r6]
	add	r5, r5, #4
	add	r6, r6, #1
	b	.L160
.L62:
	.loc 1 188 0
	cmp	r4, #46
	beq	.LCB596
	b	.L81	@long jump
.LCB596:
	.loc 1 191 0
	ldrb	r4, [r6]
	mov	r1, #4
	add	r6, r6, #1
	b	.L161
.L63:
	.loc 1 197 0
	ldr	r3, .L169+4
	ldr	r3, [r3]
	ldrb	r3, [r3, r4]
	lsl	r2, r3, #29
	bpl	.L83
	.loc 1 201 0
	ldr	r2, [sp, #52]
	cmp	r2, #0
	bge	.L85
.LVL56:
	mov	r2, #0
.L85:
	lsl	r3, r2, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r4
	sub	r3, r3, #48
	str	r3, [sp, #52]
	b	.L159
.LVL57:
.L83:
	.loc 1 204 0
	cmp	r4, #42
	beq	.LCB633
	b	.L81	@long jump
.LCB633:
	.loc 1 206 0
	ldr	r3, [r5]
	.loc 1 207 0
	mov	r1, #5
	.loc 1 206 0
	str	r3, [sp, #52]
	.loc 1 207 0
	ldrb	r4, [r6]
	add	r5, r5, #4
	add	r6, r6, #1
.L161:
	str	r1, [sp, #32]
	b	.L168
.L64:
	.loc 1 215 0
	cmp	r4, #104
	beq	.L88
	cmp	r4, #108
	beq	.LCB655
	b	.L155	@long jump
.LCB655:
	b	.L89
.L88:
	.loc 1 219 0
	ldrb	r4, [r6]
	mov	r2, #6
	mov	r3, #1
	add	r6, r6, #1
	str	r2, [sp, #32]
	str	r3, [sp, #60]
	b	.L168
.L89:
	.loc 1 223 0
	ldrb	r4, [r6]
	mov	r1, #6
	mov	r2, #2
	add	r6, r6, #1
	str	r1, [sp, #32]
	str	r2, [sp, #60]
	b	.L168
.L65:
	.loc 1 231 0
	cmp	r4, #111
	beq	.L95
	cmp	r4, #111
	bhi	.L101
	cmp	r4, #99
	beq	.L93
	cmp	r4, #99
	bhi	.L102
	cmp	r4, #37
	bne	.LCB692
	b	.L91	@long jump
.LCB692:
	cmp	r4, #88
	beq	.LCB694
	b	.L90	@long jump
.LCB694:
	b	.L92
.L102:
	cmp	r4, #100
	beq	.L94
	cmp	r4, #105
	beq	.LCB702
	b	.L90	@long jump
.LCB702:
	b	.L94
.L101:
	cmp	r4, #117
	beq	.L98
	cmp	r4, #117
	bhi	.L103
	cmp	r4, #112
	bne	.LCB712
	b	.L96	@long jump
.LCB712:
	cmp	r4, #115
	beq	.LCB714
	b	.L90	@long jump
.LCB714:
	b	.L97
.L103:
	cmp	r4, #119
	bne	.LCB720
	b	.L99	@long jump
.LCB720:
	cmp	r4, #120
	beq	.LCB722
	b	.L90	@long jump
.LCB722:
	b	.L100
.L94:
	.loc 1 235 0
	ldr	r3, [sp, #60]
	cmp	r3, #1
	bne	.L104
	.loc 1 236 0
	ldr	r4, [r5]
.LVL58:
	add	r5, r5, #4
	b	.L106
.LVL59:
.L104:
	add	r3, r5, #4
	.loc 1 240 0
	ldr	r4, [r5]
.LVL60:
	mov	r5, r3
.L106:
.LBE8:
	.loc 1 241 0
	mov	r3, #10
	str	r3, [sp]
	ldr	r2, [sp, #44]
	ldr	r3, [sp, #52]
	ldr	r1, [sp, #56]
	str	r2, [sp, #4]
	str	r3, [sp, #8]
	str	r1, [sp, #12]
	b	.L165
.LVL61:
.L95:
.LBB9:
	.loc 1 245 0
	ldr	r3, [sp, #60]
	cmp	r3, #1
	bne	.L109
	.loc 1 246 0
	ldr	r4, [r5]
.LVL62:
	add	r5, r5, #4
	b	.L111
.LVL63:
.L109:
	add	r3, r5, #4
	.loc 1 250 0
	ldr	r4, [r5]
.LVL64:
	mov	r5, r3
.L111:
.LBE9:
	.loc 1 251 0
	mov	r3, #8
.LVL65:
.L167:
	str	r3, [sp]
	ldr	r3, [sp, #52]
	ldr	r1, [sp, #56]
	ldr	r2, [sp, #44]
	str	r3, [sp, #8]
	mov	r3, #64
	orr	r3, r3, r1
	str	r2, [sp, #4]
	str	r3, [sp, #12]
.LVL66:
.L165:
	ldr	r2, [sp, #20]
	ldr	r0, [sp, #24]
	add	r1, sp, #68
.LVL67:
	mov	r3, r4
	bl	fmtint
.LVL68:
.LBB10:
	ldr	r2, [sp, #28]
	add	r2, r2, r0
	str	r2, [sp, #28]
	b	.L90
.LVL69:
.L98:
	.loc 1 255 0
	ldr	r3, [sp, #60]
	cmp	r3, #1
	bne	.L114
	.loc 1 256 0
	ldr	r4, [r5]
.LVL70:
	add	r5, r5, #4
	b	.L116
.LVL71:
.L114:
	add	r3, r5, #4
	.loc 1 260 0
	ldr	r4, [r5]
.LVL72:
	mov	r5, r3
.L116:
.LBE10:
	.loc 1 261 0
	mov	r3, #10
	b	.L167
.LVL73:
.L92:
.LBB11:
	.loc 1 264 0
	ldr	r1, [sp, #56]
	mov	r3, #32
	orr	r1, r1, r3
	str	r1, [sp, #56]
.L100:
	.loc 1 267 0
	ldr	r2, [sp, #60]
	cmp	r2, #1
	bne	.L119
	.loc 1 268 0
	ldr	r4, [r5]
.LVL74:
	add	r5, r5, #4
	b	.L121
.LVL75:
.L119:
	add	r3, r5, #4
	.loc 1 272 0
	ldr	r4, [r5]
.LVL76:
	mov	r5, r3
.L121:
.LBE11:
	.loc 1 273 0
	mov	r3, #16
	b	.L167
.LVL77:
.L93:
	.loc 1 276 0
	ldrb	r3, [r5]
	ldr	r0, [sp, #24]
	add	r1, sp, #68
	ldr	r2, [sp, #20]
	bl	dopr_outch
.LVL78:
.LBB12:
	ldr	r3, [sp, #28]
	add	r4, r5, #4
.LVL79:
	add	r3, r3, r0
	str	r3, [sp, #28]
	b	.L166
.LVL80:
.L97:
	.loc 1 279 0
	ldr	r1, [r5]
	str	r1, [sp, #48]
.LBB13:
.LBB14:
	.loc 1 327 0
	cmp	r1, #0
	bne	.L124
	ldr	r2, .L169+8
	str	r2, [sp, #48]
.L124:
	mov	r2, #0
.LVL81:
	b	.L126
.L127:
	.loc 1 332 0
	add	r2, r2, #1
.L126:
	ldr	r1, [sp, #48]
	ldrb	r3, [r2, r1]
	cmp	r3, #0
	bne	.L127
	.loc 1 333 0
	ldr	r1, [sp, #52]
	.loc 1 332 0
	mov	r3, r2
.LVL82:
	.loc 1 333 0
	cmp	r1, #0
	blt	.L129
	mov	r2, r1
	cmp	r1, r3
	ble	.L129
	mov	r2, r3
.L129:
	.loc 1 335 0
	ldr	r3, [sp, #44]
.LVL83:
	sub	r4, r3, r2
	bpl	.L132
.LVL84:
	mov	r4, #0
.L132:
.LBE14:
	.loc 1 338 0
	ldr	r1, [sp, #56]
	lsl	r1, r1, #31
	bpl	.L133
.LBB15:
	.loc 1 339 0
	neg	r4, r4
.L133:
	mov	r2, #0
.LVL85:
	str	r2, [sp, #36]
	b	.L135
.LVL86:
.L136:
.LBE15:
	.loc 1 343 0
	mov	r3, #32
	ldr	r0, [sp, #24]
	add	r1, sp, #68
	ldr	r2, [sp, #20]
	bl	dopr_outch
.LBB16:
	ldr	r3, [sp, #36]
	.loc 1 344 0
	sub	r4, r4, #1
	.loc 1 343 0
	add	r3, r3, r0
	str	r3, [sp, #36]
.LVL87:
.L135:
	.loc 1 341 0
	cmp	r4, #0
	bgt	.L136
	mov	r1, #0
	b	.L164
.LVL88:
.L139:
	.loc 1 348 0
	ldr	r2, [sp, #48]
.LBE16:
	add	r1, sp, #68
.LBB17:
	add	r2, r2, #1
	str	r2, [sp, #48]
.LBE17:
	ldr	r0, [sp, #24]
	ldr	r2, [sp, #20]
	bl	dopr_outch
.LVL89:
.LBB18:
	ldr	r3, [sp, #36]
	.loc 1 349 0
	ldr	r1, [sp, #40]
	.loc 1 348 0
	add	r3, r3, r0
	str	r3, [sp, #36]
	.loc 1 349 0
	add	r1, r1, #1
.LVL90:
.L164:
	.loc 1 346 0
	ldr	r2, [sp, #48]
	.loc 1 349 0
	str	r1, [sp, #40]
	.loc 1 346 0
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.L156
.LVL91:
	ldr	r1, [sp, #52]
	cmp	r1, #0
	blt	.L139
	ldr	r2, [sp, #40]
	cmp	r2, r1
	blt	.L139
	b	.L156
.L143:
.LBE18:
	.loc 1 353 0
	mov	r3, #32
	ldr	r0, [sp, #24]
	add	r1, sp, #68
	ldr	r2, [sp, #20]
	bl	dopr_outch
.LVL92:
.LBB19:
	ldr	r3, [sp, #36]
	.loc 1 354 0
	add	r4, r4, #1
	.loc 1 353 0
	add	r3, r3, r0
	str	r3, [sp, #36]
.LVL93:
.L156:
	.loc 1 351 0
	cmp	r4, #0
	bne	.L143
.LVL94:
.LBE19:
.LBE13:
	.loc 1 280 0
	ldr	r1, [sp, #28]
	ldr	r2, [sp, #36]
	.loc 1 279 0
	add	r5, r5, #4
	.loc 1 280 0
	add	r1, r1, r2
	str	r1, [sp, #28]
	b	.L90
.LVL95:
.L96:
.LBE12:
	.loc 1 284 0
	ldr	r1, [sp, #44]
	mov	r2, #16
	ldr	r3, [r5]
	str	r2, [sp]
	str	r1, [sp, #4]
	ldr	r2, [sp, #52]
	ldr	r1, [sp, #56]
	str	r2, [sp, #8]
	str	r1, [sp, #12]
	ldr	r2, [sp, #20]
	ldr	r0, [sp, #24]
	add	r1, sp, #68
	bl	fmtint
.LVL96:
.LBB20:
	ldr	r2, [sp, #28]
	.loc 1 283 0
	add	r4, r5, #4
.LVL97:
	.loc 1 284 0
	add	r2, r2, r0
	str	r2, [sp, #28]
.LVL98:
.L166:
.LVL99:
	mov	r5, r4
	b	.L90
.LVL100:
.L91:
.LBE20:
	.loc 1 288 0
	mov	r3, #37
	ldr	r0, [sp, #24]
	add	r1, sp, #68
	ldr	r2, [sp, #20]
	bl	dopr_outch
.LVL101:
.LBB21:
	ldr	r3, [sp, #28]
	add	r3, r3, r0
	str	r3, [sp, #28]
	b	.L90
.LVL102:
.L99:
	.loc 1 292 0
	add	r6, r6, #1
.LVL103:
.L90:
	.loc 1 298 0
	ldrb	r4, [r6]
.LVL104:
	mov	r2, #1
	mov	r1, #0
	neg	r2, r2
	add	r6, r6, #1
	str	r1, [sp, #44]
	str	r2, [sp, #52]
	str	r1, [sp, #32]
	str	r1, [sp, #56]
	str	r1, [sp, #60]
	b	.L168
.LVL105:
.L155:
	mov	r3, #6
	b	.L160
.L170:
	.align	2
.L169:
	.word	.L66
	.word	__ctype_ptr
	.word	.LC6
.L58:
	.loc 1 130 0
	ldr	r1, [sp, #32]
	cmp	r1, #7
	beq	.LCB1207
	b	.L168	@long jump
.LCB1207:
.LVL106:
.L56:
	.loc 1 310 0
	ldr	r2, [sp, #24]
.LVL107:
	cmp	r2, #0
	beq	.L145
.LVL108:
	.loc 1 312 0
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #68]
	sub	r3, r3, #1
	cmp	r2, r3
	bcs	.L147
	.loc 1 313 0
	ldr	r1, [sp, #24]
	mov	r3, #0
	strb	r3, [r1, r2]
	b	.L145
.L147:
	.loc 1 315 0
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #20]
	add	r3, r2, r1
	sub	r3, r3, #1
	mov	r2, #0
	strb	r2, [r3]
	b	.L145
.LVL109:
.L79:
	mov	r2, #3
.L158:
	str	r2, [sp, #32]
	b	.L168
.L81:
	mov	r3, #5
.L160:
	str	r3, [sp, #32]
	b	.L168
.LVL110:
.L145:
.LBE21:
.LBE6:
	.loc 1 473 0
	ldr	r0, [sp, #28]
	add	sp, sp, #72
	@ sp needed for prologue
.LVL111:
.LVL112:
.LVL113:
	pop	{r4, r5, r6, pc}
.LFE112:
	.size	neoVsnprintf, .-neoVsnprintf
	.align	2
	.global	neoSprintf
	.code 16
	.thumb_func
	.type	neoSprintf, %function
neoSprintf:
.LFB111:
	.loc 1 457 0
	push	{r1, r2, r3}
.LCFI5:
	push	{lr}
.LCFI6:
.LVL114:
	sub	sp, sp, #8
.LCFI7:
	.loc 1 457 0
	add	r3, sp, #12
	ldmia	r3!, {r2}
	.loc 1 460 0
	mov	r1, #128
	lsl	r1, r1, #1
	.loc 1 459 0
	str	r3, [sp, #4]
.LVL115:
	.loc 1 460 0
	bl	neoVsnprintf
.LVL116:
	.loc 1 463 0
	add	sp, sp, #8
	@ sp needed for prologue
	pop	{r3}
	add	sp, sp, #12
	bx	r3
.LFE111:
	.size	neoSprintf, .-neoSprintf
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
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x4
	.4byte	.LCFI0-.LFB110
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
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
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x48
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI3-.LFB112
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
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x58
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI5-.LFB111
	.byte	0xe
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE6:
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stddef.h"
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stdarg.h"
	.file 4 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 5 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 6 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 7 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.file 8 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
	.file 9 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h"
	.file 10 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h"
	.file 11 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h"
	.file 12 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/ctype.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB110-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB109-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 72
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL25-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL29-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 28
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LFB112-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 88
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL110-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.4byte	.LVL47-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x101f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF181
	.byte	0x1
	.4byte	.LASF182
	.4byte	.LASF183
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x6
	.byte	0x2e
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x6
	.byte	0x39
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x6
	.byte	0x3a
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x6
	.byte	0x53
	.4byte	0x6d
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x6
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
	.byte	0x5
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
	.byte	0x5
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x5
	.byte	0x60
	.4byte	0x50
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x5
	.byte	0x61
	.4byte	0x74
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x5
	.byte	0x65
	.4byte	0x3e
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x5
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0x100
	.uleb128 0x8
	.4byte	0x12e
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
	.4byte	0x10d
	.uleb128 0xa
	.4byte	0x1b1
	.2byte	0x2018
	.byte	0x4
	.2byte	0x119
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x11a
	.4byte	0x12e
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
	.4byte	0x1b1
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
	.4byte	0x1c2
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
	.4byte	0x1c2
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
	.4byte	0x139
	.uleb128 0xf
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1dc
	.uleb128 0x10
	.4byte	0x100
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x2
	.byte	0xd6
	.4byte	0x9b
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x3
	.byte	0x2b
	.4byte	0x1f7
	.uleb128 0xf
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x3
	.byte	0x69
	.4byte	0x1ec
	.uleb128 0x11
	.4byte	0x39a
	.4byte	.LASF63
	.byte	0xb0
	.byte	0xa
	.byte	0x15
	.uleb128 0x12
	.ascii	"d\000"
	.byte	0xa
	.byte	0x16
	.4byte	0x39a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.ascii	"a\000"
	.byte	0xa
	.byte	0x17
	.4byte	0x39a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.ascii	"pc\000"
	.byte	0xa
	.byte	0x18
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.ascii	"srh\000"
	.byte	0xa
	.byte	0x19
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0xa
	.byte	0x1a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0xa
	.byte	0x1b
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x12
	.ascii	"irq\000"
	.byte	0xa
	.byte	0x1c
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x12
	.ascii	"osp\000"
	.byte	0xa
	.byte	0x1d
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.ascii	"xc\000"
	.byte	0xa
	.byte	0x1e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0xa
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0xa
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0xa
	.byte	0x21
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x13
	.4byte	.LASF39
	.byte	0xa
	.byte	0x22
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0xa
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0xa
	.byte	0x24
	.4byte	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0xa
	.byte	0x25
	.4byte	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0xa
	.byte	0x26
	.4byte	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0xa
	.byte	0x27
	.4byte	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0xa
	.byte	0x28
	.4byte	0x3d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0xa
	.byte	0x29
	.4byte	0x3e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0xa
	.byte	0x2a
	.4byte	0x3ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0xa
	.byte	0x2b
	.4byte	0x3ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0xa
	.byte	0x2c
	.4byte	0x3ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0xa
	.byte	0x2d
	.4byte	0x3ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0xa
	.byte	0x2e
	.4byte	0x415
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0xa
	.byte	0x2f
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0xa
	.byte	0x30
	.4byte	0x421
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0xa
	.byte	0x31
	.4byte	0x427
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xc
	.4byte	0x3aa
	.4byte	0x9b
	.uleb128 0x14
	.4byte	0xf9
	.byte	0x7
	.byte	0x0
	.uleb128 0x15
	.4byte	0x3ba
	.byte	0x1
	.4byte	0x9b
	.uleb128 0x16
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3aa
	.uleb128 0x17
	.4byte	0x3d1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x9b
	.uleb128 0x16
	.4byte	0x37
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3c0
	.uleb128 0x17
	.4byte	0x3e8
	.byte	0x1
	.uleb128 0x16
	.4byte	0x9b
	.uleb128 0x16
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3d7
	.uleb128 0x17
	.4byte	0x3ff
	.byte	0x1
	.uleb128 0x16
	.4byte	0x9b
	.uleb128 0x16
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ee
	.uleb128 0x15
	.4byte	0x415
	.byte	0x1
	.4byte	0x94
	.uleb128 0x16
	.4byte	0x94
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x405
	.uleb128 0x18
	.byte	0x1
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0x41b
	.uleb128 0xc
	.4byte	0x437
	.4byte	0x9b
	.uleb128 0x14
	.4byte	0xf9
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x9
	.byte	0x6
	.4byte	0x204
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x9
	.byte	0x8
	.4byte	0x44d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x453
	.uleb128 0x15
	.4byte	0x463
	.byte	0x1
	.4byte	0xbb
	.uleb128 0x16
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x9
	.byte	0x9
	.4byte	0x46e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x474
	.uleb128 0x15
	.4byte	0x484
	.byte	0x1
	.4byte	0xc5
	.uleb128 0x16
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x9
	.byte	0xa
	.4byte	0x48f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x495
	.uleb128 0x15
	.4byte	0x4a5
	.byte	0x1
	.4byte	0xd0
	.uleb128 0x16
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x9
	.byte	0xc
	.4byte	0x4b0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4b6
	.uleb128 0x17
	.4byte	0x4c7
	.byte	0x1
	.uleb128 0x16
	.4byte	0xd0
	.uleb128 0x16
	.4byte	0xbb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x9
	.byte	0xd
	.4byte	0x4d2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4d8
	.uleb128 0x17
	.4byte	0x4e9
	.byte	0x1
	.uleb128 0x16
	.4byte	0xd0
	.uleb128 0x16
	.4byte	0xc5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x9
	.byte	0xe
	.4byte	0x4f4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4fa
	.uleb128 0x17
	.4byte	0x50b
	.byte	0x1
	.uleb128 0x16
	.4byte	0xd0
	.uleb128 0x16
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x9
	.byte	0x10
	.4byte	0x48f
	.uleb128 0x11
	.4byte	0x55b
	.4byte	.LASF64
	.byte	0xc
	.byte	0xb
	.byte	0x17
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0xb
	.byte	0x18
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.ascii	"end\000"
	.byte	0xb
	.byte	0x19
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.ascii	"acc\000"
	.byte	0xb
	.byte	0x1a
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0xb
	.byte	0x1b
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xb
	.byte	0x1c
	.4byte	0x516
	.uleb128 0x11
	.4byte	0x59d
	.4byte	.LASF68
	.byte	0xc
	.byte	0xb
	.byte	0x1f
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0xb
	.byte	0x20
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0xb
	.byte	0x21
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0xb
	.byte	0x22
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xb
	.byte	0x23
	.4byte	0x566
	.uleb128 0x19
	.4byte	0x996
	.2byte	0x248
	.byte	0x8
	.byte	0xc0
	.uleb128 0x12
	.ascii	"cpu\000"
	.byte	0x8
	.byte	0xc1
	.4byte	0x437
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x8
	.byte	0xc4
	.4byte	0x996
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0x8
	.byte	0xc7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x8
	.byte	0xc8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x8
	.byte	0xcb
	.4byte	0x9a6
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x8
	.byte	0xcc
	.4byte	0x59d
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x8
	.byte	0xcd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x8
	.byte	0xd0
	.4byte	0x9b6
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x8
	.byte	0xd1
	.4byte	0x9b6
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x8
	.byte	0xd2
	.4byte	0x9b6
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x8
	.byte	0xd3
	.4byte	0x9b6
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x8
	.byte	0xd4
	.4byte	0x9b6
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x8
	.byte	0xd5
	.4byte	0x9b6
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x8
	.byte	0xd6
	.4byte	0x9bc
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x8
	.byte	0xd7
	.4byte	0x9bc
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0x8
	.byte	0xd8
	.4byte	0x9bc
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x8
	.byte	0xda
	.4byte	0x9c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0x8
	.byte	0xdd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x13
	.4byte	.LASF90
	.byte	0x8
	.byte	0xde
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0x8
	.byte	0xdf
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0x8
	.byte	0xe0
	.4byte	0x9d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0x8
	.byte	0xe1
	.4byte	0x9d3
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0x8
	.byte	0xe2
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0x8
	.byte	0xe5
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x8
	.byte	0xe6
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0x8
	.byte	0xe7
	.4byte	0x9bc
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x8
	.byte	0xe8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0x8
	.byte	0xea
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x13
	.4byte	.LASF100
	.byte	0x8
	.byte	0xeb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0x8
	.byte	0xec
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0x8
	.byte	0xed
	.4byte	0x9de
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x8
	.byte	0xee
	.4byte	0x9bc
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x8
	.byte	0xf1
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x8
	.byte	0xf2
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x8
	.byte	0xf3
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x8
	.byte	0xf4
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x8
	.byte	0xf7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x8
	.byte	0xf8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x8
	.byte	0xf9
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0x8
	.byte	0xfa
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x13
	.4byte	.LASF112
	.byte	0x8
	.byte	0xfb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x13
	.4byte	.LASF113
	.byte	0x8
	.byte	0xfc
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x13
	.4byte	.LASF114
	.byte	0x8
	.byte	0xfd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x102
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x103
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x106
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x108
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x8
	.2byte	0x109
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x8
	.2byte	0x10a
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x8
	.2byte	0x10b
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x8
	.2byte	0x10d
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x8
	.2byte	0x10e
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x8
	.2byte	0x10f
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x8
	.2byte	0x110
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x8
	.2byte	0x111
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x8
	.2byte	0x114
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x8
	.2byte	0x115
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x8
	.2byte	0x116
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x8
	.2byte	0x117
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x8
	.2byte	0x118
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x8
	.2byte	0x11b
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x8
	.2byte	0x11c
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x8
	.2byte	0x11f
	.4byte	0x9ee
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x8
	.2byte	0x122
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x8
	.2byte	0x123
	.4byte	0x9fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9a6
	.4byte	0x1d4
	.uleb128 0x14
	.4byte	0xf9
	.byte	0x8
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9b6
	.4byte	0x55b
	.uleb128 0x14
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
	.4byte	0x9c8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9ce
	.uleb128 0x10
	.4byte	0xbb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9d9
	.uleb128 0x10
	.4byte	0xd0
	.uleb128 0xc
	.4byte	0x9ee
	.4byte	0xd0
	.uleb128 0x14
	.4byte	0xf9
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9fe
	.4byte	0xbb
	.uleb128 0x14
	.4byte	0xf9
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa0d
	.4byte	0xbb
	.uleb128 0x1a
	.4byte	0xf9
	.byte	0x0
	.uleb128 0x1b
	.4byte	0xa28
	.2byte	0x400
	.byte	0x8
	.byte	0xbf
	.uleb128 0x1c
	.4byte	0x5a8
	.uleb128 0x1d
	.4byte	.LASF137
	.byte	0x8
	.2byte	0x125
	.4byte	0xa28
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa38
	.4byte	0xd0
	.uleb128 0x14
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0x1e
	.4byte	0xabe
	.4byte	.LASF138
	.2byte	0x2000
	.byte	0x8
	.byte	0xbe
	.uleb128 0x1f
	.4byte	0xa0d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x8
	.2byte	0x128
	.4byte	0xabe
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x8
	.2byte	0x129
	.4byte	0xace
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x8
	.2byte	0x12a
	.4byte	0xade
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x8
	.2byte	0x12b
	.4byte	0xaee
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0x8
	.2byte	0x12c
	.4byte	0xafe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0x8
	.2byte	0x12d
	.4byte	0xb0e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x8
	.2byte	0x12e
	.4byte	0xb1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xc
	.4byte	0xace
	.4byte	0x442
	.uleb128 0x14
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xade
	.4byte	0x463
	.uleb128 0x14
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xaee
	.4byte	0x484
	.uleb128 0x14
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xafe
	.4byte	0x4a5
	.uleb128 0x14
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb0e
	.4byte	0x4c7
	.uleb128 0x14
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb1e
	.4byte	0x4e9
	.uleb128 0x14
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb2e
	.4byte	0x50b
	.uleb128 0x14
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF146
	.byte	0x8
	.2byte	0x12f
	.4byte	0xa38
	.uleb128 0x20
	.4byte	0xb94
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1c2
	.byte	0x1
	.4byte	0x94
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST0
	.uleb128 0x21
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x107
	.4byte	.LLST1
	.uleb128 0x21
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x1c1
	.4byte	0xb94
	.4byte	.LLST2
	.uleb128 0x22
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x1e1
	.byte	0x1
	.byte	0x52
	.uleb128 0x23
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x100
	.4byte	.LLST3
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e1
	.uleb128 0x20
	.4byte	0xcb2
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x16b
	.byte	0x1
	.4byte	0x94
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LLST4
	.uleb128 0x21
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x169
	.4byte	0x107
	.4byte	.LLST5
	.uleb128 0x21
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x169
	.4byte	0xb94
	.4byte	.LLST6
	.uleb128 0x21
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x169
	.4byte	0x1e1
	.4byte	.LLST7
	.uleb128 0x21
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x16a
	.4byte	0x6d
	.4byte	.LLST8
	.uleb128 0x21
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x16a
	.4byte	0x94
	.4byte	.LLST9
	.uleb128 0x23
	.ascii	"min\000"
	.byte	0x1
	.2byte	0x16a
	.4byte	0x94
	.4byte	.LLST10
	.uleb128 0x23
	.ascii	"max\000"
	.byte	0x1
	.2byte	0x16a
	.4byte	0x94
	.4byte	.LLST11
	.uleb128 0x21
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x16a
	.4byte	0x94
	.4byte	.LLST12
	.uleb128 0x24
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x16c
	.4byte	0x94
	.4byte	.LLST13
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x16d
	.4byte	0x7f
	.4byte	.LLST14
	.uleb128 0x25
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x16e
	.4byte	0xcb2
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x16f
	.4byte	0x94
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x170
	.4byte	0x94
	.4byte	.LLST15
	.uleb128 0x24
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x171
	.4byte	0x94
	.4byte	.LLST16
	.uleb128 0x26
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x172
	.4byte	0x94
	.uleb128 0x24
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x173
	.4byte	0x94
	.4byte	.LLST17
	.byte	0x0
	.uleb128 0xc
	.4byte	0xcc2
	.4byte	0x100
	.uleb128 0x14
	.4byte	0xf9
	.byte	0x1f
	.byte	0x0
	.uleb128 0x27
	.4byte	0xd6d
	.4byte	.LASF162
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.4byte	0x94
	.byte	0x1
	.uleb128 0x28
	.4byte	.LASF147
	.byte	0x1
	.byte	0x6f
	.4byte	0x107
	.uleb128 0x28
	.4byte	.LASF149
	.byte	0x1
	.byte	0x6f
	.4byte	0x1e1
	.uleb128 0x28
	.4byte	.LASF163
	.byte	0x1
	.byte	0x6f
	.4byte	0x1d6
	.uleb128 0x28
	.4byte	.LASF164
	.byte	0x1
	.byte	0x6f
	.4byte	0x1f9
	.uleb128 0x29
	.ascii	"ch\000"
	.byte	0x1
	.byte	0x71
	.4byte	0x100
	.uleb128 0x2a
	.4byte	.LASF152
	.byte	0x1
	.byte	0x72
	.4byte	0x6d
	.uleb128 0x2a
	.4byte	.LASF165
	.byte	0x1
	.byte	0x73
	.4byte	0x107
	.uleb128 0x29
	.ascii	"min\000"
	.byte	0x1
	.byte	0x74
	.4byte	0x94
	.uleb128 0x29
	.ascii	"max\000"
	.byte	0x1
	.byte	0x75
	.4byte	0x94
	.uleb128 0x2a
	.4byte	.LASF166
	.byte	0x1
	.byte	0x76
	.4byte	0x94
	.uleb128 0x2a
	.4byte	.LASF35
	.byte	0x1
	.byte	0x77
	.4byte	0x94
	.uleb128 0x2a
	.4byte	.LASF167
	.byte	0x1
	.byte	0x78
	.4byte	0x94
	.uleb128 0x2a
	.4byte	.LASF161
	.byte	0x1
	.byte	0x79
	.4byte	0x94
	.uleb128 0x2a
	.4byte	.LASF148
	.byte	0x1
	.byte	0x7a
	.4byte	0x1e1
	.byte	0x0
	.uleb128 0x2b
	.4byte	0xe04
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x142
	.byte	0x1
	.4byte	0x94
	.byte	0x1
	.uleb128 0x2c
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x140
	.4byte	0x107
	.uleb128 0x2c
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x140
	.4byte	0xb94
	.uleb128 0x2c
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x140
	.4byte	0x1e1
	.uleb128 0x2c
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x141
	.4byte	0x107
	.uleb128 0x2c
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x141
	.4byte	0x94
	.uleb128 0x2d
	.ascii	"min\000"
	.byte	0x1
	.2byte	0x141
	.4byte	0x94
	.uleb128 0x2d
	.ascii	"max\000"
	.byte	0x1
	.2byte	0x141
	.4byte	0x94
	.uleb128 0x26
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x143
	.4byte	0x94
	.uleb128 0x26
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x143
	.4byte	0x94
	.uleb128 0x2e
	.ascii	"cnt\000"
	.byte	0x1
	.2byte	0x144
	.4byte	0x94
	.uleb128 0x26
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x145
	.4byte	0x94
	.byte	0x0
	.uleb128 0x2f
	.4byte	0xf3c
	.byte	0x1
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x1d2
	.byte	0x1
	.4byte	0x94
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST18
	.uleb128 0x23
	.ascii	"str\000"
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x107
	.4byte	.LLST19
	.uleb128 0x21
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x1e1
	.4byte	.LLST20
	.uleb128 0x23
	.ascii	"fmt\000"
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x1d6
	.4byte	.LLST21
	.uleb128 0x21
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x1f9
	.4byte	.LLST22
	.uleb128 0x30
	.4byte	0xcc2
	.4byte	.LBB6
	.4byte	.LBE6
	.byte	0x1
	.2byte	0x1d5
	.uleb128 0x31
	.4byte	0xcf4
	.uleb128 0x32
	.4byte	0xce9
	.4byte	.LLST23
	.uleb128 0x31
	.4byte	0xcde
	.uleb128 0x31
	.4byte	0xcd3
	.uleb128 0x33
	.4byte	0xed7
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x34
	.4byte	0xcff
	.4byte	.LLST24
	.uleb128 0x34
	.4byte	0xd09
	.4byte	.LLST25
	.uleb128 0x35
	.4byte	0xd14
	.uleb128 0x35
	.4byte	0xd1f
	.uleb128 0x35
	.4byte	0xd2a
	.uleb128 0x36
	.4byte	0xd35
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.4byte	0xd40
	.uleb128 0x35
	.4byte	0xd4b
	.uleb128 0x36
	.4byte	0xd56
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.4byte	0xd61
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0x0
	.uleb128 0x30
	.4byte	0xd6d
	.4byte	.LBB13
	.4byte	.LBE13
	.byte	0x1
	.2byte	0x118
	.uleb128 0x31
	.4byte	0xdc7
	.uleb128 0x32
	.4byte	0xdbb
	.4byte	.LLST26
	.uleb128 0x31
	.4byte	0xdaf
	.uleb128 0x37
	.4byte	0xda3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.4byte	0xd97
	.uleb128 0x31
	.4byte	0xd8b
	.uleb128 0x31
	.4byte	0xd7f
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x34
	.4byte	0xdd3
	.4byte	.LLST27
	.uleb128 0x34
	.4byte	0xddf
	.4byte	.LLST28
	.uleb128 0x36
	.4byte	0xdeb
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.4byte	0xdf7
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0xf98
	.byte	0x1
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x1c9
	.byte	0x1
	.4byte	0x94
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST29
	.uleb128 0x23
	.ascii	"str\000"
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x107
	.4byte	.LLST30
	.uleb128 0x39
	.ascii	"fmt\000"
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x1d6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.uleb128 0x25
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x1f9
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x25
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x94
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF174
	.byte	0x4
	.2byte	0x129
	.4byte	0xfa4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c8
	.uleb128 0xc
	.4byte	0xfb5
	.4byte	0x49
	.uleb128 0x3b
	.byte	0x0
	.uleb128 0x3c
	.4byte	.LASF175
	.byte	0x7
	.byte	0x2c
	.4byte	0xfaa
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0xfcd
	.4byte	0x49
	.uleb128 0x3b
	.byte	0x0
	.uleb128 0x3c
	.4byte	.LASF176
	.byte	0x7
	.byte	0x2d
	.4byte	0xfc2
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0xfe5
	.4byte	0x49
	.uleb128 0x3b
	.byte	0x0
	.uleb128 0x3c
	.4byte	.LASF177
	.byte	0x7
	.byte	0x2e
	.4byte	0xfda
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.4byte	.LASF178
	.byte	0x8
	.2byte	0x149
	.4byte	0x1001
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb2e
	.uleb128 0x3e
	.4byte	.LASF179
	.byte	0x8
	.2byte	0x14d
	.4byte	0xb2e
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF180
	.byte	0xc
	.byte	0x27
	.4byte	0x1d6
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2b
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x38
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1023
	.4byte	0xe04
	.ascii	"neoVsnprintf\000"
	.4byte	0xf3c
	.ascii	"neoSprintf\000"
	.4byte	0xff2
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
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF24:
	.ascii	"clearColor\000"
.LASF41:
	.ascii	"checkpc\000"
.LASF45:
	.ascii	"write8\000"
.LASF93:
	.ascii	"smaBankbit\000"
.LASF31:
	.ascii	"size_t\000"
.LASF145:
	.ascii	"cpuCheckPcTable\000"
.LASF101:
	.ascii	"spriteMask\000"
.LASF124:
	.ascii	"ctrl3Reg\000"
.LASF169:
	.ascii	"padlen\000"
.LASF50:
	.ascii	"fetch32\000"
.LASF174:
	.ascii	"glGlob\000"
.LASF161:
	.ascii	"total\000"
.LASF156:
	.ascii	"convert\000"
.LASF109:
	.ascii	"cpuClocksPerScanline\000"
.LASF57:
	.ascii	"TRead16Func\000"
.LASF75:
	.ascii	"romBankCount\000"
.LASF104:
	.ascii	"tileOffsetX\000"
.LASF143:
	.ascii	"cpuWrite16Table\000"
.LASF155:
	.ascii	"uvalue\000"
.LASF14:
	.ascii	"uint32\000"
.LASF20:
	.ascii	"GL_MODELVIEW\000"
.LASF106:
	.ascii	"tileScaleX\000"
.LASF107:
	.ascii	"tileScaleY\000"
.LASF46:
	.ascii	"write16\000"
.LASF150:
	.ascii	"dopr_outch\000"
.LASF62:
	.ascii	"TCheckPcFunc\000"
.LASF136:
	.ascii	"varEnd\000"
.LASF59:
	.ascii	"TWrite8Func\000"
.LASF42:
	.ascii	"read8\000"
.LASF72:
	.ascii	"TNeoADPCMBStream\000"
.LASF56:
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
.LASF60:
	.ascii	"TWrite16Func\000"
.LASF48:
	.ascii	"fetch8\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF134:
	.ascii	"keyGrid\000"
.LASF47:
	.ascii	"write32\000"
.LASF51:
	.ascii	"IrqCallback\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF125:
	.ascii	"ctrl4Reg\000"
.LASF114:
	.ascii	"romBankAddress\000"
.LASF177:
	.ascii	"TAN_bin\000"
.LASF66:
	.ascii	"step\000"
.LASF78:
	.ascii	"adpcmActive\000"
.LASF98:
	.ascii	"vramBaseMask\000"
.LASF170:
	.ascii	"strln\000"
.LASF74:
	.ascii	"spriteCount\000"
.LASF53:
	.ascii	"UnrecognizedCallback\000"
.LASF32:
	.ascii	"__gnuc_va_list\000"
.LASF17:
	.ascii	"char\000"
.LASF127:
	.ascii	"irqVectorLatch\000"
.LASF85:
	.ascii	"pVram\000"
.LASF128:
	.ascii	"screenDarkLatch\000"
.LASF36:
	.ascii	"prev_pc\000"
.LASF68:
	.ascii	"_TNeoADPCMBStream\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF165:
	.ascii	"strvalue\000"
.LASF35:
	.ascii	"flags\000"
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
.LASF173:
	.ascii	"neoSprintf\000"
.LASF183:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF137:
	.ascii	"fill\000"
.LASF182:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/Sprintf.c\000"
.LASF160:
	.ascii	"caps\000"
.LASF39:
	.ascii	"cycles\000"
.LASF144:
	.ascii	"cpuWrite32Table\000"
.LASF131:
	.ascii	"paletteRamLatch\000"
.LASF167:
	.ascii	"cflags\000"
.LASF175:
	.ascii	"COS_bin\000"
.LASF82:
	.ascii	"pRam\000"
.LASF84:
	.ascii	"pCard\000"
.LASF99:
	.ascii	"displayCounter\000"
.LASF55:
	.ascii	"TCycloneContext\000"
.LASF111:
	.ascii	"watchdogCounter\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF163:
	.ascii	"format\000"
.LASF140:
	.ascii	"cpuRead16Table\000"
.LASF120:
	.ascii	"displayControlMask\000"
.LASF168:
	.ascii	"fmtstr\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF132:
	.ascii	"active\000"
.LASF63:
	.ascii	"Cyclone\000"
.LASF81:
	.ascii	"pBios\000"
.LASF102:
	.ascii	"paletteDirty\000"
.LASF176:
	.ascii	"SIN_bin\000"
.LASF23:
	.ascii	"matrixMode\000"
.LASF27:
	.ascii	"nextBlock\000"
.LASF164:
	.ascii	"args\000"
.LASF139:
	.ascii	"cpuRead8Table\000"
.LASF94:
	.ascii	"smaRand\000"
.LASF64:
	.ascii	"_TNeoADPCMStream\000"
.LASF61:
	.ascii	"TWrite32Func\000"
.LASF89:
	.ascii	"smaAddr0\000"
.LASF11:
	.ascii	"long long int\000"
.LASF18:
	.ascii	"GL_PROJECTION\000"
.LASF33:
	.ascii	"va_list\000"
.LASF126:
	.ascii	"coinReg\000"
.LASF69:
	.ascii	"initOffset\000"
.LASF149:
	.ascii	"maxlen\000"
.LASF54:
	.ascii	"internal\000"
.LASF49:
	.ascii	"fetch16\000"
.LASF158:
	.ascii	"spadlen\000"
.LASF90:
	.ascii	"smaAddr1\000"
.LASF171:
	.ascii	"count\000"
.LASF34:
	.ascii	"unused\000"
.LASF151:
	.ascii	"fmtint\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF119:
	.ascii	"displayControl\000"
.LASF180:
	.ascii	"__ctype_ptr\000"
.LASF92:
	.ascii	"smaBankoffset\000"
.LASF21:
	.ascii	"GL_TEXTURE\000"
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
.LASF43:
	.ascii	"read16\000"
.LASF112:
	.ascii	"paletteBank\000"
.LASF179:
	.ascii	"g_neoContext\000"
.LASF40:
	.ascii	"membase\000"
.LASF162:
	.ascii	"dopr\000"
.LASF181:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF95:
	.ascii	"scanline\000"
.LASF87:
	.ascii	"pPalette\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF133:
	.ascii	"debug\000"
.LASF152:
	.ascii	"value\000"
.LASF166:
	.ascii	"state\000"
.LASF148:
	.ascii	"currlen\000"
.LASF80:
	.ascii	"pRom1\000"
.LASF44:
	.ascii	"read32\000"
.LASF86:
	.ascii	"pSpriteRam\000"
.LASF52:
	.ascii	"ResetCallback\000"
.LASF130:
	.ascii	"sramProtectLatch\000"
.LASF113:
	.ascii	"fixedBank\000"
.LASF178:
	.ascii	"g_neo\000"
.LASF29:
	.ascii	"nameCount\000"
.LASF122:
	.ascii	"ctrl1Reg\000"
.LASF38:
	.ascii	"state_flags\000"
.LASF116:
	.ascii	"sramProtection\000"
.LASF147:
	.ascii	"buffer\000"
.LASF83:
	.ascii	"pSram\000"
.LASF153:
	.ascii	"base\000"
.LASF70:
	.ascii	"freqCounter\000"
.LASF154:
	.ascii	"signvalue\000"
.LASF4:
	.ascii	"short int\000"
.LASF135:
	.ascii	"frameCounter\000"
.LASF77:
	.ascii	"adpcmb\000"
.LASF159:
	.ascii	"zpadlen\000"
.LASF28:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF121:
	.ascii	"displayCounterLoad\000"
.LASF172:
	.ascii	"neoVsnprintf\000"
.LASF110:
	.ascii	"irqPending\000"
.LASF58:
	.ascii	"TRead32Func\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF157:
	.ascii	"place\000"
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
.LASF37:
	.ascii	"reserved\000"
.LASF129:
	.ascii	"fixedRomLatch\000"
.LASF115:
	.ascii	"sramProtectCount\000"
.LASF67:
	.ascii	"TNeoADPCMStream\000"
.LASF118:
	.ascii	"vramMod\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
