	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
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
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.align	2
	.code	16
	.thumb_func
	.type	fmtint, %function
fmtint:
.LFB168:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/Sprintf.c"
	.loc 1 363 0
	push	{r4, r5, r6, lr}
.LCFI0:
.LVL0:
	sub	sp, sp, #72
.LCFI1:
	.loc 1 363 0
	mov	r4, r1
	ldr	r1, [sp, #96]
.LVL1:
	str	r0, [sp, #24]
	str	r2, [sp, #28]
	str	r1, [sp, #20]
	cmp	r1, #0
	bge	.L2
.LVL2:
	mov	r2, #0
.LVL3:
	str	r2, [sp, #20]
.LVL4:
.L2:
	.loc 1 376 0
	mov	r6, r3
.LVL5:
	.loc 1 378 0
	ldr	r3, [sp, #100]
.LVL6:
	lsl	r3, r3, #25
	bmi	.L3
.LVL7:
	.loc 1 380 0
	cmp	r6, #0
	bge	.L4
	.loc 1 382 0
	mov	r1, #45
	neg	r6, r6
	str	r1, [sp, #16]
	b	.L5
.L4:
	.loc 1 385 0
	ldr	r2, [sp, #100]
.LVL8:
	lsl	r2, r2, #30
	bpl	.L6
	mov	r3, #43
	b	.L38
.L6:
	.loc 1 388 0
	ldr	r1, [sp, #100]
	lsl	r1, r1, #29
	bpl	.L3
	mov	r2, #32
	str	r2, [sp, #16]
	b	.L5
.LVL9:
.L3:
	mov	r3, #0
.L38:
	str	r3, [sp, #16]
.L5:
	.loc 1 392 0
	ldr	r1, [sp, #100]
	mov	r3, #32
	and	r1, r1, r3
	mov	r2, #0
.LVL10:
	str	r1, [sp, #36]
	str	r2, [sp, #32]
.LVL11:
.L10:
	.loc 1 397 0
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L7
	ldr	r5, .L42
.LVL12:
	b	.L8
.LVL13:
.L7:
	ldr	r5, .L42+4
.LVL14:
.L8:
	.loc 1 395 0
	mov	r0, r6
.LVL15:
	ldr	r1, [sp, #88]
	bl	__aeabi_uidivmod
	ldr	r2, [sp, #32]
	ldrb	r3, [r5, r1]
	add	r1, sp, #40
	strb	r3, [r1, r2]
	.loc 1 398 0
	mov	r0, r6
	ldr	r1, [sp, #88]
	.loc 1 395 0
	mov	r5, r2
.LVL16:
	.loc 1 398 0
	bl	__aeabi_uidiv
	.loc 1 395 0
	add	r5, r5, #1
	.loc 1 398 0
	mov	r6, r0
.LVL17:
	.loc 1 399 0
	cmp	r5, #31
	bhi	.L9
.LVL18:
	cmp	r0, #0
	beq	.L9
.LVL19:
	str	r5, [sp, #32]
	b	.L10
.LVL20:
.L9:
	.loc 1 400 0
	cmp	r5, #32
	bne	.L11
	ldr	r5, [sp, #32]
.LVL21:
.L11:
	.loc 1 401 0
	mov	r2, #0
	add	r3, sp, #40
	strb	r2, [r3, r5]
	.loc 1 404 0
	ldr	r6, [sp, #20]
.LVL22:
	.loc 1 403 0
	ldr	r3, [sp, #20]
	sub	r2, r3, r5
.LVL23:
	.loc 1 404 0
	mov	r3, r5
	cmp	r5, r6
	bge	.L12
	mov	r3, r6
.LVL24:
.L12:
	ldr	r1, [sp, #92]
	sub	r3, r1, r3
.LVL25:
	ldr	r1, [sp, #16]
	sub	r0, r1, #1
	sbc	r1, r1, r0
.LVL26:
	sub	r3, r3, r1
.LVL27:
	cmp	r2, #0
	str	r2, [sp, #32]
	bge	.L13
.LVL28:
	mov	r1, #0
	str	r1, [sp, #32]
.L13:
	cmp	r3, #0
	bge	.L14
	mov	r3, #0
.LVL29:
.L14:
	.loc 1 407 0
	ldr	r2, [sp, #100]
.LVL30:
	lsl	r2, r2, #27
	bpl	.L15
	.loc 1 409 0
	ldr	r6, [sp, #32]
	cmp	r6, r3
	bge	.L16
	str	r3, [sp, #32]
.L16:
	mov	r3, #0
.LVL31:
.L15:
	.loc 1 412 0
	ldr	r1, [sp, #100]
	lsl	r1, r1, #31
	bpl	.L17
	.loc 1 413 0
	neg	r3, r3
.LVL32:
.L17:
.LBB32:
.LBB33:
	.loc 1 452 0
	mov	r2, #32
.LBE33:
.LBE32:
	.loc 1 413 0
	mov	r0, #0
.LVL33:
.LBB35:
.LBB34:
	.loc 1 452 0
	mov	ip, r2
	b	.L18
.L20:
	.loc 1 451 0
	ldr	r6, [r4]
	ldr	r1, [sp, #28]
	str	r6, [sp, #12]
	add	r6, r6, #1
	str	r6, [sp, #20]
	cmp	r6, r1
	bcs	.L19
	.loc 1 452 0
	ldr	r2, [sp, #24]
	ldr	r6, [sp, #12]
	mov	r1, ip
	strb	r1, [r2, r6]
	ldr	r2, [sp, #20]
	str	r2, [r4]
.L19:
.LBE34:
.LBE35:
	.loc 1 418 0
	add	r0, r0, #1
.LVL34:
	.loc 1 419 0
	sub	r3, r3, #1
.LVL35:
.L18:
	.loc 1 416 0
	cmp	r3, #0
	bgt	.L20
	.loc 1 423 0
	ldr	r6, [sp, #16]
	.loc 1 416 0
	str	r3, [sp, #12]
	.loc 1 423 0
	cmp	r6, #0
	beq	.L21
.LBB36:
.LBB37:
	.loc 1 451 0
	ldr	r1, [r4]
	ldr	r6, [sp, #28]
	mov	r2, r1
	add	r2, r2, #1
	mov	ip, r1
	str	r2, [sp, #20]
	cmp	r2, r6
	bcs	.L22
	.loc 1 452 0
	mov	r1, sp
	mov	r2, #16
	ldrb	r6, [r2, r1]
	ldr	r1, [sp, #24]
	mov	r2, ip
	strb	r6, [r1, r2]
	ldr	r1, [sp, #20]
	str	r1, [r4]
.L22:
.LBE37:
.LBE36:
	.loc 1 424 0
	add	r0, r0, #1
.L21:
	.loc 1 427 0
	ldr	r2, [sp, #32]
	cmp	r2, #0
	bne	.L23
.LVL36:
.L27:
	add	r6, sp, #72
	.loc 1 361 0
	mov	r1, sp
	.loc 1 427 0
	add	r2, r6, r5
	.loc 1 361 0
	add	r1, r1, #39
	.loc 1 427 0
	sub	r2, r2, #33
	.loc 1 361 0
	str	r1, [sp, #4]
	mov	ip, r3
	b	.L24
.LVL37:
.L23:
	ldr	r1, [sp, #32]
.LVL38:
.LBB38:
.LBB39:
	.loc 1 452 0
	mov	ip, r3
.LVL39:
.L26:
	.loc 1 451 0
	ldr	r2, [r4]
	ldr	r3, [sp, #28]
	str	r2, [sp, #16]
	add	r2, r2, #1
	str	r2, [sp, #20]
	cmp	r2, r3
	bcs	.L25
	.loc 1 452 0
	ldr	r6, [sp, #24]
	ldr	r2, [sp, #16]
	mov	r3, #48
	strb	r3, [r6, r2]
	ldr	r6, [sp, #20]
	str	r6, [r4]
.L25:
.LBE39:
.LBE38:
	.loc 1 432 0
	sub	r1, r1, #1
.LVL40:
	.loc 1 429 0
	cmp	r1, #0
	bne	.L26
	ldr	r1, [sp, #32]
.LVL41:
	mov	r3, ip
	add	r0, r0, r1
	b	.L27
.L29:
	.loc 1 438 0
	ldrb	r3, [r2]
.LBB40:
.LBB41:
	.loc 1 451 0
	ldr	r6, [r4]
.LBE41:
.LBE40:
	.loc 1 438 0
	str	r3, [sp, #16]
.LBB43:
.LBB42:
	.loc 1 451 0
	ldr	r3, [sp, #28]
	add	r1, r6, #1
	str	r1, [sp, #20]
	cmp	r1, r3
	bcs	.L28
	.loc 1 452 0
	mov	r1, sp
	mov	r3, #16
	ldrb	r3, [r3, r1]
	ldr	r1, [sp, #24]
	strb	r3, [r1, r6]
	ldr	r6, [sp, #20]
	str	r6, [r4]
.L28:
	sub	r2, r2, #1
.LVL42:
.L24:
.LBE42:
.LBE43:
	.loc 1 437 0
	ldr	r1, [sp, #4]
	cmp	r2, r1
	bne	.L29
	b	.L41
.LVL43:
.L32:
.LBB44:
.LBB45:
	.loc 1 451 0
	ldr	r1, [r4]
	ldr	r6, [sp, #28]
	add	r2, r1, #1
	str	r2, [sp, #16]
	cmp	r2, r6
	bcs	.L31
	.loc 1 452 0
	ldr	r2, [sp, #24]
	mov	r6, ip
	strb	r6, [r2, r1]
	ldr	r1, [sp, #16]
	str	r1, [r4]
.L31:
.LBE45:
.LBE44:
	.loc 1 443 0
	add	r3, r3, #1
.LVL44:
	b	.L36
.LVL45:
.L41:
.LBB47:
.LBB46:
	.loc 1 452 0
	mov	r2, #32
	mov	r3, ip
	mov	ip, r2
.LVL46:
.L36:
.LBE46:
.LBE47:
	.loc 1 441 0
	cmp	r3, #0
	bne	.L32
	ldr	r3, [sp, #12]
.LVL47:
	.loc 1 447 0
	add	sp, sp, #72
	.loc 1 441 0
	sub	r5, r5, r3
.LVL48:
	add	r0, r5, r0
	.loc 1 447 0
	@ sp needed for prologue
.LVL49:
.LVL50:
	pop	{r4, r5, r6, pc}
.L43:
	.align	2
.L42:
	.word	.LC2
	.word	.LC4
.LFE168:
	.size	fmtint, .-fmtint
	.align	2
	.global	neoVsnprintf
	.code	16
	.thumb_func
	.type	neoVsnprintf, %function
neoVsnprintf:
.LFB171:
	.loc 1 466 0
	push	{r4, r5, r6, lr}
.LCFI2:
.LVL51:
	sub	sp, sp, #64
.LCFI3:
	.loc 1 466 0
	str	r0, [sp, #36]
	str	r1, [sp, #44]
	.loc 1 467 0
	cmp	r0, #0
	beq	.L45
	.loc 1 468 0
	mov	r1, #0
.LVL52:
	strb	r1, [r0]
.LVL53:
.L45:
.LBB64:
.LBB65:
	.loc 1 125 0
	mov	r1, #0
.LVL54:
	.loc 1 127 0
	mov	r0, #0
.LVL55:
	.loc 1 125 0
	str	r1, [sp, #60]
.LVL56:
	.loc 1 127 0
	ldrb	r1, [r2]
.LVL57:
	add	r5, r2, #1
.LVL58:
	str	r0, [sp, #28]
	mov	r2, #0
.LVL59:
	str	r0, [sp, #32]
	mov	r0, #1
.LVL60:
	mov	r4, r3
.LVL61:
	neg	r0, r0
	str	r2, [sp, #40]
	mov	r6, #0
.LVL62:
.LBB75:
.LBB76:
.LBB77:
.LBB78:
	.loc 1 452 0
	str	r2, [sp, #52]
.LVL63:
.L124:
.LBE78:
.LBE77:
.LBE76:
.LBE75:
	.loc 1 132 0
	cmp	r1, #0
	bne	.LCB487
	b	.L47	@long jump
.LCB487:
.LVL64:
	.loc 1 135 0
	ldr	r3, [sp, #28]
.LVL65:
	cmp	r3, #6
	bhi	.L124
	ldr	r2, .L145
.LVL66:
	lsl	r3, r3, #2
	ldr	r2, [r2, r3]
	mov	pc, r2
	.section	.rodata
	.align	2
.L55:
	.word	.L48
	.word	.L49
	.word	.L50
	.word	.L51
	.word	.L52
	.word	.L53
	.word	.L54
	.text
.L48:
	.loc 1 138 0
	cmp	r1, #37
	bne	.L56
	mov	r3, #1
	str	r3, [sp, #28]
	b	.L128
.L56:
.LBB73:
.LBB74:
	.loc 1 451 0
	ldr	r2, [sp, #60]
	mov	r3, #1
	mov	ip, r2
.LVL67:
	str	r2, [sp, #48]
	ldr	r2, [sp, #44]
	add	ip, ip, r3
	cmp	ip, r2
	bcs	.L58
.LVL68:
	.loc 1 452 0
	ldr	r3, [sp, #36]
	ldr	r2, [sp, #48]
	strb	r1, [r3, r2]
	mov	r3, ip
	str	r3, [sp, #60]
.LVL69:
.L58:
.LBE74:
.LBE73:
	.loc 1 141 0
	add	r6, r6, #1
.LVL70:
	b	.L128
.LVL71:
.L49:
	.loc 1 145 0
	cmp	r1, #43
	beq	.L62
	cmp	r1, #43
	bhi	.L65
	cmp	r1, #32
	beq	.L60
	cmp	r1, #35
	beq	.LCB550
	b	.L59	@long jump
.LCB550:
	b	.L140
.L65:
	cmp	r1, #45
	beq	.L63
	cmp	r1, #48
	beq	.LCB558
	b	.L59	@long jump
.LCB558:
	b	.L141
.L63:
	.loc 1 148 0
	mov	r1, #1
.LVL72:
.L131:
	ldr	r2, [sp, #52]
	orr	r2, r2, r1
	str	r2, [sp, #52]
.LVL73:
.L128:
	.loc 1 149 0
	ldrb	r1, [r5]
	add	r5, r5, #1
	b	.L124
.L62:
	.loc 1 152 0
	mov	r1, #2
.LVL74:
	b	.L130
.LVL75:
.L60:
	.loc 1 156 0
	mov	r1, #4
.LVL76:
	b	.L131
.LVL77:
.L140:
	.loc 1 160 0
	mov	r1, #8
.LVL78:
.L130:
	ldr	r3, [sp, #52]
	orr	r3, r3, r1
	str	r3, [sp, #52]
	b	.L128
.LVL79:
.L141:
	.loc 1 164 0
	mov	r1, #16
.LVL80:
	b	.L131
.LVL81:
.L50:
	.loc 1 173 0
	ldr	r3, .L145+4
	ldr	r2, [r3]
	mov	ip, r2
.LVL82:
	add	ip, ip, r1
	mov	r3, ip
	ldrb	r3, [r3, #1]
	lsl	r3, r3, #29
	bpl	.L66
	.loc 1 175 0
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #40]
	lsl	r2, r2, #2
	mov	ip, r2
	add	ip, ip, r3
	mov	r2, ip
	lsl	r2, r2, #1
	mov	ip, r2
	add	r1, r1, ip
.LVL83:
	sub	r1, r1, #48
	str	r1, [sp, #40]
	b	.L128
.LVL84:
.L66:
	.loc 1 178 0
	cmp	r1, #42
	beq	.LCB641
	b	.L67	@long jump
.LCB641:
	.loc 1 180 0
	ldr	r3, [r4]
	.loc 1 181 0
	mov	r2, #3
	.loc 1 180 0
	str	r3, [sp, #40]
	.loc 1 181 0
	ldrb	r1, [r5]
.LVL85:
	add	r4, r4, #4
	add	r5, r5, #1
	b	.L129
.LVL86:
.L51:
	.loc 1 188 0
	cmp	r1, #46
	beq	.LCB656
	b	.L68	@long jump
.LCB656:
	.loc 1 191 0
	ldrb	r1, [r5]
.LVL87:
	mov	r3, #4
	add	r5, r5, #1
	b	.L127
.L52:
	.loc 1 197 0
	ldr	r2, .L145+4
	ldr	r3, [r2]
	mov	ip, r3
.LVL88:
	add	ip, ip, r1
	mov	r2, ip
	ldrb	r2, [r2, #1]
	lsl	r2, r2, #29
	bpl	.L69
	.loc 1 201 0
	cmp	r0, #0
	bge	.L70
	mov	r0, #0
.LVL89:
.L70:
	lsl	r3, r0, #2
	mov	ip, r3
	add	r0, r0, ip
.LVL90:
	lsl	r0, r0, #1
	sub	r1, r1, #48
.LVL91:
	add	r0, r1, r0
.LVL92:
	b	.L128
.LVL93:
.L69:
	.loc 1 204 0
	cmp	r1, #42
	beq	.LCB698
	b	.L68	@long jump
.LCB698:
	.loc 1 206 0
	ldr	r0, [r4]
.LVL94:
	.loc 1 207 0
	ldrb	r1, [r5]
.LVL95:
	add	r4, r4, #4
	add	r5, r5, #1
	b	.L68
.LVL96:
.L53:
	.loc 1 215 0
	cmp	r1, #104
	beq	.L72
	cmp	r1, #108
	bne	.L134
	b	.L142
.L72:
	.loc 1 219 0
	ldrb	r1, [r5]
.LVL97:
	mov	r2, #1
	add	r5, r5, #1
	b	.L133
.L142:
	.loc 1 223 0
	ldrb	r1, [r5]
.LVL98:
	mov	r2, #2
	add	r5, r5, #1
.L133:
	str	r2, [sp, #32]
.L134:
	mov	r3, #6
	b	.L127
.L54:
	.loc 1 231 0
	cmp	r1, #111
	beq	.L79
	cmp	r1, #111
	bhi	.L85
	cmp	r1, #99
	beq	.L77
	cmp	r1, #99
	bhi	.L86
	cmp	r1, #37
	bne	.LCB750
	b	.L75	@long jump
.LCB750:
	cmp	r1, #88
	beq	.LCB752
	b	.L74	@long jump
.LCB752:
	b	.L143
.L86:
	cmp	r1, #100
	beq	.L78
	cmp	r1, #105
	beq	.LCB760
	b	.L74	@long jump
.LCB760:
	b	.L78
.L85:
	cmp	r1, #117
	beq	.L82
	cmp	r1, #117
	bhi	.L87
	cmp	r1, #112
	bne	.LCB770
	b	.L80	@long jump
.LCB770:
	cmp	r1, #115
	beq	.LCB772
	b	.L74	@long jump
.LCB772:
	b	.L144
.L87:
	cmp	r1, #119
	bne	.LCB778
	b	.L83	@long jump
.LCB778:
	cmp	r1, #120
	beq	.LCB780
	b	.L74	@long jump
.LCB780:
	b	.L84
.L78:
	.loc 1 235 0
	ldr	r1, [sp, #32]
.LVL99:
	cmp	r1, #1
	bne	.L88
	.loc 1 236 0
	ldr	r3, [r4]
.LVL100:
	add	r4, r4, #4
	b	.L89
.LVL101:
.L88:
	add	r1, r4, #4
	.loc 1 240 0
	ldr	r3, [r4]
.LVL102:
	mov	r4, r1
.L89:
	.loc 1 241 0
	mov	r1, #10
	str	r1, [sp]
	ldr	r1, [sp, #40]
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	ldr	r2, [sp, #52]
	b	.L132
.LVL103:
.L79:
	.loc 1 245 0
	ldr	r3, [sp, #32]
	cmp	r3, #1
	bne	.L91
	.loc 1 246 0
	ldr	r3, [r4]
.LVL104:
	add	r4, r4, #4
	b	.L92
.LVL105:
.L91:
	add	r1, r4, #4
.LVL106:
	.loc 1 250 0
	ldr	r3, [r4]
.LVL107:
	mov	r4, r1
.LVL108:
.L92:
	.loc 1 251 0
	mov	r1, #8
.LVL109:
.L135:
	str	r1, [sp]
	ldr	r1, [sp, #40]
	ldr	r2, [sp, #52]
	str	r1, [sp, #4]
	mov	r1, #64
	str	r0, [sp, #8]
	orr	r2, r2, r1
.L132:
	str	r2, [sp, #12]
	ldr	r0, [sp, #36]
.LVL110:
	add	r1, sp, #60
	ldr	r2, [sp, #44]
	bl	fmtint
.LVL111:
	add	r6, r6, r0
.LVL112:
	b	.L74
.LVL113:
.L82:
	.loc 1 255 0
	ldr	r2, [sp, #32]
	cmp	r2, #1
	bne	.L94
	.loc 1 256 0
	ldr	r3, [r4]
.LVL114:
	add	r4, r4, #4
	b	.L95
.LVL115:
.L94:
	add	r1, r4, #4
.LVL116:
	.loc 1 260 0
	ldr	r3, [r4]
.LVL117:
	mov	r4, r1
.LVL118:
.L95:
	.loc 1 261 0
	mov	r1, #10
.LVL119:
	b	.L135
.LVL120:
.L143:
	.loc 1 264 0
	ldr	r2, [sp, #52]
	mov	r3, #32
	orr	r2, r2, r3
	str	r2, [sp, #52]
.L84:
	.loc 1 267 0
	ldr	r1, [sp, #32]
.LVL121:
	cmp	r1, #1
	bne	.L97
	.loc 1 268 0
	ldr	r3, [r4]
.LVL122:
	add	r4, r4, #4
	b	.L98
.LVL123:
.L97:
	add	r1, r4, #4
	.loc 1 272 0
	ldr	r3, [r4]
.LVL124:
	mov	r4, r1
.L98:
	.loc 1 273 0
	mov	r1, #16
	b	.L135
.LVL125:
.L77:
.LBB70:
.LBB71:
	.loc 1 451 0
	ldr	r2, [sp, #60]
	ldr	r0, [sp, #44]
.LVL126:
	add	r3, r2, #1
.LBE71:
.LBE70:
	.loc 1 276 0
	ldr	r1, [r4]
.LVL127:
.LBB69:
.LBB72:
	.loc 1 451 0
	cmp	r3, r0
	bcs	.L100
.LVL128:
	.loc 1 452 0
	ldr	r0, [sp, #36]
	strb	r1, [r0, r2]
	str	r3, [sp, #60]
.LVL129:
.L100:
.LBE72:
.LBE69:
	.loc 1 276 0
	add	r4, r4, #4
	b	.L116
.LVL130:
.L144:
	.loc 1 279 0
	ldr	r1, [r4]
.LVL131:
	str	r1, [sp, #32]
.LBB68:
.LBB85:
	.loc 1 327 0
	cmp	r1, #0
	bne	.L101
	ldr	r2, .L145+8
	str	r2, [sp, #32]
.L101:
	mov	r3, #0
.LVL132:
	ldr	r2, [sp, #52]
.LVL133:
	b	.L102
.L103:
	.loc 1 332 0
	add	r3, r3, #1
.L102:
	ldr	r1, [sp, #32]
	ldrb	r1, [r1, r3]
	cmp	r1, #0
	bne	.L103
	str	r2, [sp, #52]
	.loc 1 333 0
	cmp	r0, r3
	bge	.L104
	cmp	r0, #0
	blt	.L104
.LVL134:
	mov	r3, r0
.L104:
	.loc 1 335 0
	ldr	r2, [sp, #40]
.LVL135:
	sub	r3, r2, r3
	bpl	.L105
.LVL136:
	mov	r3, #0
.L105:
	.loc 1 338 0
	ldr	r1, [sp, #52]
	lsl	r1, r1, #31
	bpl	.L106
	.loc 1 339 0
	neg	r3, r3
.L106:
	mov	r2, #0
.LVL137:
	mov	ip, r0
	str	r4, [sp, #52]
	mov	r0, r2
.LVL138:
	b	.L107
.LVL139:
.L109:
.LBB80:
.LBB79:
	.loc 1 451 0
	ldr	r2, [sp, #60]
	ldr	r4, [sp, #44]
	str	r2, [sp, #40]
	add	r2, r2, #1
	str	r2, [sp, #48]
	cmp	r2, r4
	bcs	.L108
.LVL140:
	.loc 1 452 0
	ldr	r1, [sp, #36]
	ldr	r2, [sp, #40]
	mov	r4, #32
	strb	r4, [r1, r2]
	ldr	r1, [sp, #48]
	str	r1, [sp, #60]
.LVL141:
.L108:
.LBE79:
.LBE80:
	.loc 1 343 0
	add	r0, r0, #1
	.loc 1 344 0
	sub	r3, r3, #1
.LVL142:
.L107:
	.loc 1 341 0
	cmp	r3, #0
	bgt	.L109
	mov	r2, r0
	mov	r1, #0
.LVL143:
	mov	r0, ip
.LVL144:
	ldr	r4, [sp, #52]
	mov	ip, r3
.LVL145:
	str	r3, [sp, #52]
	str	r0, [sp, #24]
	str	r1, [sp, #20]
	b	.L110
.LVL146:
.L113:
.LBB81:
.LBB82:
	.loc 1 451 0
	ldr	r3, [sp, #60]
	ldr	r0, [sp, #44]
	str	r3, [sp, #40]
	add	r3, r3, #1
	str	r3, [sp, #28]
	cmp	r3, r0
	bcs	.L111
.LVL147:
	.loc 1 452 0
	add	r1, sp, #48
	ldrb	r0, [r1]
	ldr	r3, [sp, #40]
	ldr	r1, [sp, #36]
	strb	r0, [r1, r3]
	ldr	r1, [sp, #28]
	str	r1, [sp, #60]
.LVL148:
.L111:
.LBE82:
.LBE81:
	.loc 1 349 0
	ldr	r3, [sp, #20]
	.loc 1 348 0
	add	r2, r2, #1
.LVL149:
	.loc 1 349 0
	add	r3, r3, #1
	str	r3, [sp, #20]
.LVL150:
.L110:
	.loc 1 346 0
	ldr	r0, [sp, #32]
.LVL151:
	ldr	r1, [sp, #20]
.LVL152:
	ldrb	r0, [r0, r1]
	str	r0, [sp, #48]
	cmp	r0, #0
	beq	.L126
	ldr	r3, [sp, #24]
	cmp	r1, r3
	blt	.L113
	cmp	r3, #0
	bge	.L126
	b	.L113
.LVL153:
.L115:
.LBB83:
.LBB84:
	.loc 1 451 0
	ldr	r0, [sp, #60]
	ldr	r2, [sp, #44]
.LVL154:
	mov	r1, r0
	add	r1, r1, #1
	mov	ip, r0
	str	r1, [sp, #32]
	cmp	r1, r2
	bcs	.L114
.LVL155:
	.loc 1 452 0
	ldr	r0, [sp, #36]
	mov	r2, #32
	mov	r1, ip
	strb	r2, [r0, r1]
	ldr	r0, [sp, #32]
	str	r0, [sp, #60]
.LVL156:
.L114:
.LBE84:
.LBE83:
	.loc 1 354 0
	add	r3, r3, #1
	b	.L123
.LVL157:
.L126:
	mov	r3, ip
	str	r2, [sp, #40]
.LVL158:
.L123:
	.loc 1 351 0
	cmp	r3, #0
	bne	.L115
.LBE85:
.LBE68:
	.loc 1 279 0
	ldr	r1, [sp, #52]
	ldr	r2, [sp, #40]
.LVL159:
	sub	r6, r6, r1
.LVL160:
	add	r4, r4, #4
	.loc 1 280 0
	add	r6, r6, r2
.LVL161:
	b	.L74
.LVL162:
.L80:
	.loc 1 284 0
	ldr	r3, [r4]
	str	r0, [sp, #8]
	ldr	r0, [sp, #52]
.LVL163:
	.loc 1 283 0
	add	r2, r4, #4
	.loc 1 284 0
	mov	r1, #16
.LVL164:
	ldr	r4, [sp, #40]
	.loc 1 283 0
	str	r2, [sp, #32]
	.loc 1 284 0
	str	r1, [sp]
	str	r0, [sp, #12]
	add	r1, sp, #60
	ldr	r0, [sp, #36]
	ldr	r2, [sp, #44]
	str	r4, [sp, #4]
	bl	fmtint
.LVL165:
	ldr	r4, [sp, #32]
	add	r6, r6, r0
.LVL166:
	b	.L74
.L146:
	.align	2
.L145:
	.word	.L55
	.word	__ctype_ptr__
	.word	.LC8
.LVL167:
.L75:
.LBB66:
.LBB67:
	.loc 1 451 0
	ldr	r2, [sp, #60]
	ldr	r0, [sp, #44]
.LVL168:
	add	r3, r2, #1
	cmp	r3, r0
	bcs	.L116
.LVL169:
	.loc 1 452 0
	ldr	r0, [sp, #36]
	strb	r1, [r0, r2]
	str	r3, [sp, #60]
.LVL170:
.L116:
.LBE67:
.LBE66:
	.loc 1 288 0
	add	r6, r6, #1
.LVL171:
	b	.L74
.LVL172:
.L83:
	.loc 1 292 0
	add	r5, r5, #1
.LVL173:
.L74:
	.loc 1 298 0
	mov	r2, #0
.LVL174:
	mov	r0, #1
.LVL175:
	ldrb	r1, [r5]
.LVL176:
	neg	r0, r0
	add	r5, r5, #1
	str	r2, [sp, #32]
	str	r2, [sp, #52]
	str	r2, [sp, #28]
	str	r2, [sp, #40]
	b	.L124
.LVL177:
.L59:
	mov	r3, #2
	b	.L127
.LVL178:
.L119:
	.loc 1 312 0
	ldr	r2, [sp, #44]
.LVL179:
	ldr	r3, [sp, #60]
	sub	r2, r2, #1
	cmp	r3, r2
	bcs	.L117
.LVL180:
	.loc 1 313 0
	ldr	r4, [sp, #36]
	strb	r1, [r4, r3]
	b	.L118
.L117:
	.loc 1 315 0
	ldr	r0, [sp, #36]
.LVL181:
	ldr	r2, [sp, #44]
	add	r3, r0, r2
	sub	r3, r3, #1
	strb	r1, [r3]
.LVL182:
.L118:
.LBE65:
.LBE64:
	.loc 1 473 0
	add	sp, sp, #64
	mov	r0, r6
.LVL183:
	@ sp needed for prologue
.LVL184:
.LVL185:
	pop	{r4, r5, r6, pc}
.LVL186:
.L67:
.LBB87:
.LBB86:
	.loc 1 315 0
	mov	r3, #3
.LVL187:
.L127:
	str	r3, [sp, #28]
	b	.L124
.L68:
	mov	r2, #5
.L129:
	str	r2, [sp, #28]
	b	.L124
.LVL188:
.L47:
	.loc 1 310 0
	ldr	r3, [sp, #36]
.LVL189:
	cmp	r3, #0
	bne	.L119
	b	.L118
.LBE86:
.LBE87:
.LFE171:
	.size	neoVsnprintf, .-neoVsnprintf
	.align	2
	.global	neoSprintf
	.code	16
	.thumb_func
	.type	neoSprintf, %function
neoSprintf:
.LFB170:
	.loc 1 457 0
	push	{r1, r2, r3}
.LCFI4:
	push	{lr}
.LCFI5:
.LVL190:
	sub	sp, sp, #8
.LCFI6:
	.loc 1 457 0
	add	r3, sp, #12
	ldmia	r3!, {r2}
	.loc 1 460 0
	mov	r1, #128
	lsl	r1, r1, #1
	.loc 1 459 0
	str	r3, [sp, #4]
	.loc 1 460 0
	bl	neoVsnprintf
.LVL191:
	.loc 1 463 0
	add	sp, sp, #8
	@ sp needed for prologue
	pop	{r3}
	add	sp, sp, #12
	bx	r3
.LFE170:
	.size	neoSprintf, .-neoSprintf
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC2:
	.ascii	"0123456789abcdef\000"
.LC4:
	.ascii	"0123456789ABCDEF\000"
.LC8:
	.ascii	"<NULL>\000"
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
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x58
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.byte	0x4
	.4byte	.LCFI2-.LFB171
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
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x50
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.byte	0x4
	.4byte	.LCFI4-.LFB170
	.byte	0xe
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 4
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE4:
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
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 88
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL28-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 28
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB171-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 80
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL186-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL167-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL186-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL188-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL186-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 60
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 60
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 60
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 60
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 60
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 60
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 60
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	.LVL186-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 60
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL189-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LFB170-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h"
	.file 5 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 6 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 7 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 8 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 9 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stdarg.h"
	.file 10 "C:/Users/GRX/NeoDS-master-old/arm9/include/cyclone.h"
	.file 11 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoCpu.h"
	.file 12 "C:/Users/GRX/NeoDS-master-old/arm9/../common/source/NeoAudioStream.h"
	.file 13 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoSystem.h"
	.file 14 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.file 15 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/ctype.h"
	.section	.debug_info
	.4byte	0x13da
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF225
	.byte	0x1
	.4byte	.LASF226
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
	.uleb128 0x8
	.byte	0x4
	.4byte	0x10a
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
	.4byte	0x12d
	.uleb128 0xc
	.4byte	0x10a
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0xd3
	.4byte	0x7b
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x28
	.byte	0x5
	.2byte	0x18c
	.4byte	0x1e1
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x18d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x18e
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x18f
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x190
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x191
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x192
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x193
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x194
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x195
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x196
	.4byte	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x198
	.4byte	0x13d
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x8
	.byte	0x6
	.byte	0x29
	.4byte	0x216
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x6
	.byte	0x2a
	.4byte	0x216
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x6
	.byte	0x2b
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11e
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x6
	.byte	0x2c
	.4byte	0x1ed
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x9c
	.4byte	0x248
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF39
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x7
	.byte	0xa1
	.4byte	0x227
	.uleb128 0x12
	.4byte	.LASF41
	.2byte	0x2020
	.byte	0x7
	.2byte	0x11a
	.4byte	0x2df
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x7
	.2byte	0x11b
	.4byte	0x248
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x7
	.2byte	0x11e
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x7
	.2byte	0x121
	.4byte	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x7
	.2byte	0x122
	.4byte	0x21c
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x7
	.2byte	0x123
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x7
	.2byte	0x124
	.4byte	0x2f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x7
	.2byte	0x125
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x7
	.2byte	0x126
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x201c
	.byte	0x0
	.uleb128 0x13
	.4byte	0x90
	.4byte	0x2f0
	.uleb128 0x14
	.4byte	0x107
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x90
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x7
	.2byte	0x128
	.4byte	0x253
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x59
	.4byte	0x32f
	.uleb128 0x7
	.4byte	.LASF50
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF51
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF52
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF53
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x62
	.4byte	0x350
	.uleb128 0x7
	.4byte	.LASF54
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF55
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF56
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF57
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x6a
	.4byte	0x371
	.uleb128 0x7
	.4byte	.LASF58
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF59
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF60
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF61
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x72
	.4byte	0x386
	.uleb128 0x7
	.4byte	.LASF62
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF63
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x9
	.byte	0x28
	.4byte	0x391
	.uleb128 0x15
	.4byte	.LASF227
	.byte	0x4
	.4byte	0x3a9
	.uleb128 0x16
	.4byte	.LASF179
	.4byte	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x9
	.byte	0x66
	.4byte	0x386
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0xb0
	.byte	0xa
	.byte	0x15
	.4byte	0x54a
	.uleb128 0x17
	.ascii	"d\000"
	.byte	0xa
	.byte	0x16
	.4byte	0x54a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.ascii	"a\000"
	.byte	0xa
	.byte	0x17
	.4byte	0x54a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.ascii	"pc\000"
	.byte	0xa
	.byte	0x18
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x17
	.ascii	"srh\000"
	.byte	0xa
	.byte	0x19
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0xa
	.byte	0x1a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0xa
	.byte	0x1b
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x17
	.ascii	"irq\000"
	.byte	0xa
	.byte	0x1c
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x17
	.ascii	"osp\000"
	.byte	0xa
	.byte	0x1d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x17
	.ascii	"xc\000"
	.byte	0xa
	.byte	0x1e
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0xa
	.byte	0x1f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0xa
	.byte	0x20
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0xa
	.byte	0x21
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0xa
	.byte	0x22
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0xa
	.byte	0x23
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0xa
	.byte	0x24
	.4byte	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0xa
	.byte	0x25
	.4byte	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0xa
	.byte	0x26
	.4byte	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0xa
	.byte	0x27
	.4byte	0x56a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0xa
	.byte	0x28
	.4byte	0x581
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0xa
	.byte	0x29
	.4byte	0x598
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0xa
	.byte	0x2a
	.4byte	0x5af
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0xa
	.byte	0x2b
	.4byte	0x56a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0xa
	.byte	0x2c
	.4byte	0x56a
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0xa
	.byte	0x2d
	.4byte	0x56a
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0xa
	.byte	0x2e
	.4byte	0x5c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF85
	.byte	0xa
	.byte	0x2f
	.4byte	0xff
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0xa
	.byte	0x30
	.4byte	0x5d1
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0xa
	.byte	0x31
	.4byte	0x5d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x13
	.4byte	0x7b
	.4byte	0x55a
	.uleb128 0x18
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	0x7b
	.4byte	0x56a
	.uleb128 0x1a
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x55a
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x581
	.uleb128 0x1a
	.4byte	0x7b
	.uleb128 0x1a
	.4byte	0x33
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x570
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x598
	.uleb128 0x1a
	.4byte	0x7b
	.uleb128 0x1a
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x587
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x5af
	.uleb128 0x1a
	.4byte	0x7b
	.uleb128 0x1a
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x59e
	.uleb128 0x19
	.byte	0x1
	.4byte	0x69
	.4byte	0x5c5
	.uleb128 0x1a
	.4byte	0x69
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5b5
	.uleb128 0x1c
	.byte	0x1
	.4byte	0x69
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5cb
	.uleb128 0x13
	.4byte	0x7b
	.4byte	0x5e7
	.uleb128 0x18
	.4byte	0x107
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0xb
	.byte	0x6
	.4byte	0x3b4
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0xb
	.byte	0x8
	.4byte	0x5fd
	.uleb128 0x8
	.byte	0x4
	.4byte	0x603
	.uleb128 0x19
	.byte	0x1
	.4byte	0xa9
	.4byte	0x613
	.uleb128 0x1a
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0xb
	.byte	0x9
	.4byte	0x61e
	.uleb128 0x8
	.byte	0x4
	.4byte	0x624
	.uleb128 0x19
	.byte	0x1
	.4byte	0xb3
	.4byte	0x634
	.uleb128 0x1a
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0xb
	.byte	0xa
	.4byte	0x63f
	.uleb128 0x8
	.byte	0x4
	.4byte	0x645
	.uleb128 0x19
	.byte	0x1
	.4byte	0xbe
	.4byte	0x655
	.uleb128 0x1a
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0xb
	.byte	0xc
	.4byte	0x660
	.uleb128 0x8
	.byte	0x4
	.4byte	0x666
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x677
	.uleb128 0x1a
	.4byte	0xbe
	.uleb128 0x1a
	.4byte	0xa9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xb
	.byte	0xd
	.4byte	0x682
	.uleb128 0x8
	.byte	0x4
	.4byte	0x688
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x699
	.uleb128 0x1a
	.4byte	0xbe
	.uleb128 0x1a
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0xb
	.byte	0xe
	.4byte	0x6a4
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6aa
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x6bb
	.uleb128 0x1a
	.4byte	0xbe
	.uleb128 0x1a
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0xb
	.byte	0x10
	.4byte	0x63f
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0xc
	.byte	0xc
	.byte	0x17
	.4byte	0x70b
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0xc
	.byte	0x18
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.ascii	"end\000"
	.byte	0xc
	.byte	0x19
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.ascii	"acc\000"
	.byte	0xc
	.byte	0x1a
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0xc
	.byte	0x1b
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0xc
	.byte	0x1c
	.4byte	0x6c6
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0xc
	.byte	0xc
	.byte	0x1f
	.4byte	0x74d
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0xc
	.byte	0x20
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0xc
	.byte	0x21
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0xc
	.byte	0x22
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xc
	.byte	0x23
	.4byte	0x716
	.uleb128 0x1d
	.4byte	.LASF228
	.byte	0x1
	.byte	0xd
	.byte	0x99
	.4byte	0x7a1
	.uleb128 0x7
	.4byte	.LASF105
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF106
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF107
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF108
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF109
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF110
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF111
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF112
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF113
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF114
	.sleb128 9
	.byte	0x0
	.uleb128 0x1e
	.2byte	0x248
	.byte	0xd
	.byte	0xc0
	.4byte	0xb8f
	.uleb128 0x17
	.ascii	"cpu\000"
	.byte	0xd
	.byte	0xc1
	.4byte	0x5e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0xd
	.byte	0xc4
	.4byte	0xb8f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0xd
	.byte	0xc7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0xd
	.byte	0xc8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0xd
	.byte	0xcb
	.4byte	0xb9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0xd
	.byte	0xcc
	.4byte	0x74d
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0xd
	.byte	0xcd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0xd
	.byte	0xd0
	.4byte	0x308
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0xd
	.byte	0xd1
	.4byte	0x308
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0xd
	.byte	0xd2
	.4byte	0x308
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0xd
	.byte	0xd3
	.4byte	0x308
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0xd
	.byte	0xd4
	.4byte	0x308
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x11
	.4byte	.LASF126
	.byte	0xd
	.byte	0xd5
	.4byte	0x308
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0xd
	.byte	0xd6
	.4byte	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x11
	.4byte	.LASF128
	.byte	0xd
	.byte	0xd7
	.4byte	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0xd
	.byte	0xd8
	.4byte	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0xd
	.byte	0xda
	.4byte	0xbaf
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0xd
	.byte	0xdd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0xd
	.byte	0xde
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0xd
	.byte	0xdf
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0xd
	.byte	0xe0
	.4byte	0xbc0
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0xd
	.byte	0xe1
	.4byte	0xbc0
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0xd
	.byte	0xe2
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0xd
	.byte	0xe5
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xd
	.byte	0xe6
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0xd
	.byte	0xe7
	.4byte	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0xd
	.byte	0xe8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0xd
	.byte	0xea
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0xd
	.byte	0xeb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0xd
	.byte	0xec
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0xd
	.byte	0xed
	.4byte	0xbcb
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0xd
	.byte	0xee
	.4byte	0x302
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0xd
	.byte	0xf1
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0xd
	.byte	0xf2
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0xd
	.byte	0xf3
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0xd
	.byte	0xf4
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0xd
	.byte	0xf7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xd
	.byte	0xf8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x11
	.4byte	.LASF152
	.byte	0xd
	.byte	0xf9
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0xd
	.byte	0xfa
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x11
	.4byte	.LASF154
	.byte	0xd
	.byte	0xfb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x11
	.4byte	.LASF155
	.byte	0xd
	.byte	0xfc
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0xd
	.byte	0xfd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xe
	.4byte	.LASF157
	.byte	0xd
	.2byte	0x102
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xe
	.4byte	.LASF158
	.byte	0xd
	.2byte	0x103
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xe
	.4byte	.LASF159
	.byte	0xd
	.2byte	0x106
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xe
	.4byte	.LASF160
	.byte	0xd
	.2byte	0x108
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xe
	.4byte	.LASF161
	.byte	0xd
	.2byte	0x109
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xe
	.4byte	.LASF162
	.byte	0xd
	.2byte	0x10a
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xe
	.4byte	.LASF163
	.byte	0xd
	.2byte	0x10b
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xe
	.4byte	.LASF164
	.byte	0xd
	.2byte	0x10d
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xe
	.4byte	.LASF165
	.byte	0xd
	.2byte	0x10e
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xe
	.4byte	.LASF166
	.byte	0xd
	.2byte	0x10f
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xe
	.4byte	.LASF167
	.byte	0xd
	.2byte	0x110
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xe
	.4byte	.LASF168
	.byte	0xd
	.2byte	0x111
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xe
	.4byte	.LASF169
	.byte	0xd
	.2byte	0x114
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xe
	.4byte	.LASF170
	.byte	0xd
	.2byte	0x115
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xe
	.4byte	.LASF171
	.byte	0xd
	.2byte	0x116
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xe
	.4byte	.LASF172
	.byte	0xd
	.2byte	0x117
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xe
	.4byte	.LASF173
	.byte	0xd
	.2byte	0x118
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xe
	.4byte	.LASF174
	.byte	0xd
	.2byte	0x11b
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xe
	.4byte	.LASF175
	.byte	0xd
	.2byte	0x11c
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xe
	.4byte	.LASF176
	.byte	0xd
	.2byte	0x11f
	.4byte	0xbdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xe
	.4byte	.LASF177
	.byte	0xd
	.2byte	0x122
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xe
	.4byte	.LASF178
	.byte	0xd
	.2byte	0x123
	.4byte	0xbeb
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0x13
	.4byte	0x11e
	.4byte	0xb9f
	.uleb128 0x18
	.4byte	0x107
	.byte	0x8
	.byte	0x0
	.uleb128 0x13
	.4byte	0x70b
	.4byte	0xbaf
	.uleb128 0x18
	.4byte	0x107
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbb5
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbbb
	.uleb128 0xc
	.4byte	0xa9
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbc6
	.uleb128 0xc
	.4byte	0xbe
	.uleb128 0x13
	.4byte	0xbe
	.4byte	0xbdb
	.uleb128 0x18
	.4byte	0x107
	.byte	0xf
	.byte	0x0
	.uleb128 0x13
	.4byte	0xa9
	.4byte	0xbeb
	.uleb128 0x18
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x13
	.4byte	0xa9
	.4byte	0xbfa
	.uleb128 0x1f
	.4byte	0x107
	.byte	0x0
	.uleb128 0x20
	.2byte	0x400
	.byte	0xd
	.byte	0xbf
	.4byte	0xc15
	.uleb128 0x21
	.4byte	0x7a1
	.uleb128 0x22
	.4byte	.LASF180
	.byte	0xd
	.2byte	0x125
	.4byte	0xc15
	.byte	0x0
	.uleb128 0x13
	.4byte	0xbe
	.4byte	0xc25
	.uleb128 0x18
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF181
	.2byte	0x2000
	.byte	0xd
	.byte	0xbe
	.4byte	0xcab
	.uleb128 0x24
	.4byte	0xbfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF182
	.byte	0xd
	.2byte	0x128
	.4byte	0xcab
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xe
	.4byte	.LASF183
	.byte	0xd
	.2byte	0x129
	.4byte	0xcbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xe
	.4byte	.LASF184
	.byte	0xd
	.2byte	0x12a
	.4byte	0xccb
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xe
	.4byte	.LASF185
	.byte	0xd
	.2byte	0x12b
	.4byte	0xcdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xe
	.4byte	.LASF186
	.byte	0xd
	.2byte	0x12c
	.4byte	0xceb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xe
	.4byte	.LASF187
	.byte	0xd
	.2byte	0x12d
	.4byte	0xcfb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xe
	.4byte	.LASF188
	.byte	0xd
	.2byte	0x12e
	.4byte	0xd0b
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0x13
	.4byte	0x5f2
	.4byte	0xcbb
	.uleb128 0x18
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x613
	.4byte	0xccb
	.uleb128 0x18
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x634
	.4byte	0xcdb
	.uleb128 0x18
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x655
	.4byte	0xceb
	.uleb128 0x18
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x677
	.4byte	0xcfb
	.uleb128 0x18
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x699
	.4byte	0xd0b
	.uleb128 0x18
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x6bb
	.4byte	0xd1b
	.uleb128 0x18
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF189
	.byte	0xd
	.2byte	0x12f
	.4byte	0xc25
	.uleb128 0x25
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x1c1
	.byte	0x1
	.4byte	0x69
	.byte	0x1
	.4byte	0xd68
	.uleb128 0x26
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x111
	.uleb128 0x26
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x1c1
	.4byte	0xd68
	.uleb128 0x26
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x132
	.uleb128 0x27
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x10a
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x132
	.uleb128 0x25
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x140
	.byte	0x1
	.4byte	0x69
	.byte	0x1
	.4byte	0xe05
	.uleb128 0x26
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x140
	.4byte	0x111
	.uleb128 0x26
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x140
	.4byte	0xd68
	.uleb128 0x26
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x140
	.4byte	0x132
	.uleb128 0x26
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x141
	.4byte	0x111
	.uleb128 0x26
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x141
	.4byte	0x69
	.uleb128 0x27
	.ascii	"min\000"
	.byte	0x1
	.2byte	0x141
	.4byte	0x69
	.uleb128 0x27
	.ascii	"max\000"
	.byte	0x1
	.2byte	0x141
	.4byte	0x69
	.uleb128 0x28
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x143
	.4byte	0x69
	.uleb128 0x28
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x143
	.4byte	0x69
	.uleb128 0x29
	.ascii	"cnt\000"
	.byte	0x1
	.2byte	0x144
	.4byte	0x69
	.uleb128 0x28
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x145
	.4byte	0x69
	.byte	0x0
	.uleb128 0x2a
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x169
	.byte	0x1
	.4byte	0x69
	.4byte	.LFB168
	.4byte	.LFE168
	.4byte	.LLST0
	.4byte	0xfe6
	.uleb128 0x2b
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x169
	.4byte	0x111
	.4byte	.LLST1
	.uleb128 0x2b
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x169
	.4byte	0xd68
	.4byte	.LLST2
	.uleb128 0x2b
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x169
	.4byte	0x132
	.4byte	.LLST3
	.uleb128 0x2b
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x16a
	.4byte	0x117
	.4byte	.LLST4
	.uleb128 0x2b
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x16a
	.4byte	0x69
	.4byte	.LLST5
	.uleb128 0x2c
	.ascii	"min\000"
	.byte	0x1
	.2byte	0x16a
	.4byte	0x69
	.4byte	.LLST6
	.uleb128 0x2c
	.ascii	"max\000"
	.byte	0x1
	.2byte	0x16a
	.4byte	0x69
	.4byte	.LLST7
	.uleb128 0x2b
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x16a
	.4byte	0x69
	.4byte	.LLST8
	.uleb128 0x2d
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x16c
	.4byte	0x69
	.byte	0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2e
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x16d
	.4byte	0x120
	.4byte	.LLST9
	.uleb128 0x2d
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x16e
	.4byte	0xfe6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x16f
	.4byte	0x69
	.4byte	.LLST10
	.uleb128 0x2e
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x170
	.4byte	0x69
	.4byte	.LLST11
	.uleb128 0x2e
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x171
	.4byte	0x69
	.4byte	.LLST12
	.uleb128 0x28
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x172
	.4byte	0x69
	.uleb128 0x2e
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x173
	.4byte	0x69
	.4byte	.LLST13
	.uleb128 0x2f
	.4byte	0xd27
	.4byte	.LBB32
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x1a2
	.4byte	0xf45
	.uleb128 0x30
	.4byte	0xd5d
	.uleb128 0x30
	.4byte	0xd51
	.uleb128 0x30
	.4byte	0xd45
	.uleb128 0x30
	.4byte	0xd39
	.byte	0x0
	.uleb128 0x31
	.4byte	0xd27
	.4byte	.LBB36
	.4byte	.LBE36
	.byte	0x1
	.2byte	0x1a8
	.4byte	0xf6e
	.uleb128 0x30
	.4byte	0xd5d
	.uleb128 0x30
	.4byte	0xd51
	.uleb128 0x30
	.4byte	0xd45
	.uleb128 0x30
	.4byte	0xd39
	.byte	0x0
	.uleb128 0x31
	.4byte	0xd27
	.4byte	.LBB38
	.4byte	.LBE38
	.byte	0x1
	.2byte	0x1af
	.4byte	0xf97
	.uleb128 0x30
	.4byte	0xd5d
	.uleb128 0x30
	.4byte	0xd51
	.uleb128 0x30
	.4byte	0xd45
	.uleb128 0x30
	.4byte	0xd39
	.byte	0x0
	.uleb128 0x2f
	.4byte	0xd27
	.4byte	.LBB40
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xfc0
	.uleb128 0x30
	.4byte	0xd5d
	.uleb128 0x30
	.4byte	0xd51
	.uleb128 0x30
	.4byte	0xd45
	.uleb128 0x30
	.4byte	0xd39
	.byte	0x0
	.uleb128 0x32
	.4byte	0xd27
	.4byte	.LBB44
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x1ba
	.uleb128 0x30
	.4byte	0xd5d
	.uleb128 0x30
	.4byte	0xd51
	.uleb128 0x30
	.4byte	0xd45
	.uleb128 0x30
	.4byte	0xd39
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.4byte	0x10a
	.4byte	0xff6
	.uleb128 0x18
	.4byte	0x107
	.byte	0x1f
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF207
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.4byte	0x69
	.byte	0x1
	.4byte	0x10a1
	.uleb128 0x34
	.4byte	.LASF190
	.byte	0x1
	.byte	0x6f
	.4byte	0x111
	.uleb128 0x34
	.4byte	.LASF192
	.byte	0x1
	.byte	0x6f
	.4byte	0x132
	.uleb128 0x34
	.4byte	.LASF208
	.byte	0x1
	.byte	0x6f
	.4byte	0x127
	.uleb128 0x34
	.4byte	.LASF209
	.byte	0x1
	.byte	0x6f
	.4byte	0x3a9
	.uleb128 0x35
	.ascii	"ch\000"
	.byte	0x1
	.byte	0x71
	.4byte	0x10a
	.uleb128 0x36
	.4byte	.LASF195
	.byte	0x1
	.byte	0x72
	.4byte	0x117
	.uleb128 0x36
	.4byte	.LASF210
	.byte	0x1
	.byte	0x73
	.4byte	0x111
	.uleb128 0x35
	.ascii	"min\000"
	.byte	0x1
	.byte	0x74
	.4byte	0x69
	.uleb128 0x35
	.ascii	"max\000"
	.byte	0x1
	.byte	0x75
	.4byte	0x69
	.uleb128 0x36
	.4byte	.LASF211
	.byte	0x1
	.byte	0x76
	.4byte	0x69
	.uleb128 0x36
	.4byte	.LASF68
	.byte	0x1
	.byte	0x77
	.4byte	0x69
	.uleb128 0x36
	.4byte	.LASF212
	.byte	0x1
	.byte	0x78
	.4byte	0x69
	.uleb128 0x36
	.4byte	.LASF198
	.byte	0x1
	.byte	0x79
	.4byte	0x69
	.uleb128 0x36
	.4byte	.LASF191
	.byte	0x1
	.byte	0x7a
	.4byte	0x132
	.byte	0x0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x1d1
	.byte	0x1
	.4byte	0x69
	.4byte	.LFB171
	.4byte	.LFE171
	.4byte	.LLST14
	.4byte	0x12d0
	.uleb128 0x2c
	.ascii	"str\000"
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x111
	.4byte	.LLST15
	.uleb128 0x2b
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x132
	.4byte	.LLST16
	.uleb128 0x2c
	.ascii	"fmt\000"
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x127
	.4byte	.LLST17
	.uleb128 0x2b
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x3a9
	.4byte	.LLST18
	.uleb128 0x32
	.4byte	0xff6
	.4byte	.LBB64
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x1d5
	.uleb128 0x30
	.4byte	0x1028
	.uleb128 0x38
	.4byte	0x101d
	.4byte	.LLST19
	.uleb128 0x30
	.4byte	0x1012
	.uleb128 0x30
	.4byte	0x1007
	.uleb128 0x39
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x3a
	.4byte	0x1033
	.4byte	.LLST20
	.uleb128 0x3a
	.4byte	0x103d
	.4byte	.LLST21
	.uleb128 0x3b
	.4byte	0x1048
	.byte	0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x3b
	.4byte	0x1053
	.byte	0x2
	.byte	0x7d
	.sleb128 40
	.uleb128 0x3a
	.4byte	0x105e
	.4byte	.LLST22
	.uleb128 0x3b
	.4byte	0x1069
	.byte	0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x3a
	.4byte	0x1074
	.4byte	.LLST23
	.uleb128 0x3b
	.4byte	0x107f
	.byte	0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x3a
	.4byte	0x108a
	.4byte	.LLST24
	.uleb128 0x3a
	.4byte	0x1095
	.4byte	.LLST25
	.uleb128 0x31
	.4byte	0xd27
	.4byte	.LBB66
	.4byte	.LBE66
	.byte	0x1
	.2byte	0x120
	.4byte	0x11ab
	.uleb128 0x30
	.4byte	0xd45
	.uleb128 0x30
	.4byte	0xd5d
	.uleb128 0x30
	.4byte	0xd51
	.uleb128 0x30
	.4byte	0xd39
	.byte	0x0
	.uleb128 0x2f
	.4byte	0xd27
	.4byte	.LBB70
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.2byte	0x114
	.4byte	0x11d4
	.uleb128 0x30
	.4byte	0xd5d
	.uleb128 0x30
	.4byte	0xd51
	.uleb128 0x30
	.4byte	0xd45
	.uleb128 0x30
	.4byte	0xd39
	.byte	0x0
	.uleb128 0x3c
	.4byte	0xd27
	.4byte	.LBB73
	.4byte	.LBE73
	.byte	0x1
	.byte	0x8d
	.4byte	0x11fc
	.uleb128 0x30
	.4byte	0xd5d
	.uleb128 0x30
	.4byte	0xd51
	.uleb128 0x30
	.4byte	0xd45
	.uleb128 0x30
	.4byte	0xd39
	.byte	0x0
	.uleb128 0x32
	.4byte	0xd6e
	.4byte	.LBB75
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.2byte	0x118
	.uleb128 0x30
	.4byte	0xdc8
	.uleb128 0x30
	.4byte	0xdbc
	.uleb128 0x30
	.4byte	0xdb0
	.uleb128 0x30
	.4byte	0xda4
	.uleb128 0x30
	.4byte	0xd98
	.uleb128 0x30
	.4byte	0xd8c
	.uleb128 0x30
	.4byte	0xd80
	.uleb128 0x39
	.4byte	.Ldebug_ranges0+0xa8
	.uleb128 0x3a
	.4byte	0xdd4
	.4byte	.LLST26
	.uleb128 0x3a
	.4byte	0xdec
	.4byte	.LLST27
	.uleb128 0x3a
	.4byte	0xdf8
	.4byte	.LLST28
	.uleb128 0x3d
	.4byte	0xde0
	.uleb128 0x2f
	.4byte	0xd27
	.4byte	.LBB77
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.2byte	0x157
	.4byte	0x127d
	.uleb128 0x30
	.4byte	0xd5d
	.uleb128 0x30
	.4byte	0xd51
	.uleb128 0x30
	.4byte	0xd45
	.uleb128 0x30
	.4byte	0xd39
	.byte	0x0
	.uleb128 0x31
	.4byte	0xd27
	.4byte	.LBB81
	.4byte	.LBE81
	.byte	0x1
	.2byte	0x15c
	.4byte	0x12a6
	.uleb128 0x30
	.4byte	0xd5d
	.uleb128 0x30
	.4byte	0xd51
	.uleb128 0x30
	.4byte	0xd45
	.uleb128 0x30
	.4byte	0xd39
	.byte	0x0
	.uleb128 0x3e
	.4byte	0xd27
	.4byte	.LBB83
	.4byte	.LBE83
	.byte	0x1
	.2byte	0x161
	.uleb128 0x30
	.4byte	0xd5d
	.uleb128 0x30
	.4byte	0xd51
	.uleb128 0x30
	.4byte	0xd45
	.uleb128 0x30
	.4byte	0xd39
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x1c8
	.byte	0x1
	.4byte	0x69
	.4byte	.LFB170
	.4byte	.LFE170
	.4byte	.LLST29
	.4byte	0x132c
	.uleb128 0x2c
	.ascii	"str\000"
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x111
	.4byte	.LLST30
	.uleb128 0x3f
	.ascii	"fmt\000"
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x127
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x40
	.uleb128 0x2d
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x3a9
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2d
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x69
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x28
	.4byte	.LASF216
	.byte	0x7
	.2byte	0x12e
	.4byte	0x1338
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2f6
	.uleb128 0x41
	.4byte	.LASF217
	.byte	0xe
	.byte	0x56
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.4byte	.LASF218
	.byte	0xe
	.byte	0x57
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	0x1368
	.4byte	0x1368
	.uleb128 0x18
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x136e
	.uleb128 0x42
	.4byte	0x57
	.uleb128 0x43
	.4byte	.LASF219
	.byte	0x5
	.2byte	0x19c
	.4byte	0x1358
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	0x1e1
	.4byte	0x1391
	.uleb128 0x18
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x43
	.4byte	.LASF220
	.byte	0x5
	.2byte	0x19f
	.4byte	0x1381
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF221
	.byte	0x7
	.2byte	0x12b
	.4byte	0x2f6
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF222
	.byte	0xd
	.2byte	0x149
	.4byte	0x13bc
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd1b
	.uleb128 0x43
	.4byte	.LASF223
	.byte	0xd
	.2byte	0x14d
	.4byte	0xd1b
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.4byte	.LASF224
	.byte	0xf
	.byte	0x2d
	.4byte	0x111
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.uleb128 0x34
	.uleb128 0xc
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
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2c
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x18
	.byte	0x0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
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
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x38
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x13de
	.4byte	0x10a1
	.ascii	"neoVsnprintf\000"
	.4byte	0x12d0
	.ascii	"neoSprintf\000"
	.4byte	0x13ad
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
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB64-.Ltext0
	.4byte	.LBE64-.Ltext0
	.4byte	.LBB87-.Ltext0
	.4byte	.LBE87-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB65-.Ltext0
	.4byte	.LBE65-.Ltext0
	.4byte	.LBB86-.Ltext0
	.4byte	.LBE86-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB70-.Ltext0
	.4byte	.LBE70-.Ltext0
	.4byte	.LBB69-.Ltext0
	.4byte	.LBE69-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	.LBB85-.Ltext0
	.4byte	.LBE85-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB77-.Ltext0
	.4byte	.LBE77-.Ltext0
	.4byte	.LBB80-.Ltext0
	.4byte	.LBE80-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF206:
	.ascii	"caps\000"
.LASF213:
	.ascii	"count\000"
.LASF169:
	.ascii	"irqVectorLatch\000"
.LASF99:
	.ascii	"TNeoADPCMStream\000"
.LASF85:
	.ascii	"ResetCallback\000"
.LASF16:
	.ascii	"true\000"
.LASF75:
	.ascii	"read8\000"
.LASF51:
	.ascii	"OBJMODE_BLENDED\000"
.LASF21:
	.ascii	"size_t\000"
.LASF172:
	.ascii	"sramProtectLatch\000"
.LASF217:
	.ascii	"mosaicShadow\000"
.LASF128:
	.ascii	"pSpriteRam\000"
.LASF173:
	.ascii	"paletteRamLatch\000"
.LASF37:
	.ascii	"GL_POSITION\000"
.LASF114:
	.ascii	"NEOROM_COUNT\000"
.LASF43:
	.ascii	"clearColor\000"
.LASF224:
	.ascii	"__ctype_ptr__\000"
.LASF65:
	.ascii	"va_list\000"
.LASF175:
	.ascii	"debug\000"
.LASF105:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF30:
	.ascii	"type\000"
.LASF125:
	.ascii	"pSram\000"
.LASF197:
	.ascii	"strln\000"
.LASF48:
	.ascii	"nextPBlock\000"
.LASF165:
	.ascii	"ctrl2Reg\000"
.LASF203:
	.ascii	"place\000"
.LASF22:
	.ascii	"angle\000"
.LASF201:
	.ascii	"uvalue\000"
.LASF151:
	.ascii	"cpuClocksPerScanline\000"
.LASF149:
	.ascii	"tileScaleY\000"
.LASF109:
	.ascii	"NEOROM_AUDODATA\000"
.LASF215:
	.ascii	"neoSprintf\000"
.LASF225:
	.ascii	"GNU C 4.4.3\000"
.LASF229:
	.ascii	"fmtint\000"
.LASF137:
	.ascii	"scanline\000"
.LASF191:
	.ascii	"currlen\000"
.LASF45:
	.ascii	"texturePtrs\000"
.LASF103:
	.ascii	"frequency\000"
.LASF126:
	.ascii	"pCard\000"
.LASF157:
	.ascii	"sramProtectCount\000"
.LASF83:
	.ascii	"fetch32\000"
.LASF26:
	.ascii	"scaleY\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF104:
	.ascii	"TNeoADPCMBStream\000"
.LASF10:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF76:
	.ascii	"read16\000"
.LASF108:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF53:
	.ascii	"OBJMODE_BITMAP\000"
.LASF182:
	.ascii	"cpuRead8Table\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF131:
	.ascii	"smaAddr0\000"
.LASF132:
	.ascii	"smaAddr1\000"
.LASF88:
	.ascii	"TCycloneContext\000"
.LASF174:
	.ascii	"active\000"
.LASF121:
	.ascii	"pRom0\000"
.LASF122:
	.ascii	"pRom1\000"
.LASF211:
	.ascii	"state\000"
.LASF19:
	.ascii	"long int\000"
.LASF56:
	.ascii	"OBJSHAPE_TALL\000"
.LASF164:
	.ascii	"ctrl1Reg\000"
.LASF205:
	.ascii	"zpadlen\000"
.LASF15:
	.ascii	"false\000"
.LASF71:
	.ascii	"state_flags\000"
.LASF227:
	.ascii	"__va_list\000"
.LASF46:
	.ascii	"activeTexture\000"
.LASF116:
	.ascii	"spriteCount\000"
.LASF4:
	.ascii	"short int\000"
.LASF144:
	.ascii	"paletteDirty\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF73:
	.ascii	"membase\000"
.LASF14:
	.ascii	"double\000"
.LASF218:
	.ascii	"mosaicShadowSub\000"
.LASF168:
	.ascii	"coinReg\000"
.LASF228:
	.ascii	"_TNeoRomRegion\000"
.LASF12:
	.ascii	"uint32\000"
.LASF196:
	.ascii	"padlen\000"
.LASF110:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF84:
	.ascii	"IrqCallback\000"
.LASF178:
	.ascii	"varEnd\000"
.LASF50:
	.ascii	"OBJMODE_NORMAL\000"
.LASF221:
	.ascii	"glGlobalData\000"
.LASF204:
	.ascii	"spadlen\000"
.LASF124:
	.ascii	"pRam\000"
.LASF39:
	.ascii	"GL_TEXTURE\000"
.LASF136:
	.ascii	"smaRand\000"
.LASF89:
	.ascii	"TRead8Func\000"
.LASF78:
	.ascii	"write8\000"
.LASF195:
	.ascii	"value\000"
.LASF170:
	.ascii	"screenDarkLatch\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF176:
	.ascii	"keyGrid\000"
.LASF162:
	.ascii	"displayControlMask\000"
.LASF156:
	.ascii	"romBankAddress\000"
.LASF222:
	.ascii	"g_neo\000"
.LASF20:
	.ascii	"long unsigned int\000"
.LASF47:
	.ascii	"nextBlock\000"
.LASF52:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF143:
	.ascii	"spriteMask\000"
.LASF130:
	.ascii	"bankTable\000"
.LASF101:
	.ascii	"initOffset\000"
.LASF35:
	.ascii	"cur_size\000"
.LASF33:
	.ascii	"DynamicArray\000"
.LASF29:
	.ascii	"size\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF94:
	.ascii	"TWrite32Func\000"
.LASF154:
	.ascii	"paletteBank\000"
.LASF192:
	.ascii	"maxlen\000"
.LASF118:
	.ascii	"adpcm\000"
.LASF77:
	.ascii	"read32\000"
.LASF74:
	.ascii	"checkpc\000"
.LASF153:
	.ascii	"watchdogCounter\000"
.LASF123:
	.ascii	"pBios\000"
.LASF152:
	.ascii	"irqPending\000"
.LASF214:
	.ascii	"neoVsnprintf\000"
.LASF40:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF198:
	.ascii	"total\000"
.LASF150:
	.ascii	"cpuClockDivide\000"
.LASF25:
	.ascii	"scaleX\000"
.LASF79:
	.ascii	"write16\000"
.LASF92:
	.ascii	"TWrite8Func\000"
.LASF135:
	.ascii	"smaBankbit\000"
.LASF185:
	.ascii	"cpuWrite8Table\000"
.LASF67:
	.ascii	"unused\000"
.LASF148:
	.ascii	"tileScaleX\000"
.LASF160:
	.ascii	"vramMod\000"
.LASF64:
	.ascii	"__gnuc_va_list\000"
.LASF95:
	.ascii	"TCheckPcFunc\000"
.LASF38:
	.ascii	"GL_MODELVIEW\000"
.LASF66:
	.ascii	"Cyclone\000"
.LASF32:
	.ascii	"BgState\000"
.LASF106:
	.ascii	"NEOROM_BIOS\000"
.LASF62:
	.ascii	"OBJCOLOR_16\000"
.LASF120:
	.ascii	"adpcmActive\000"
.LASF117:
	.ascii	"romBankCount\000"
.LASF70:
	.ascii	"reserved\000"
.LASF107:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF140:
	.ascii	"vramBaseMask\000"
.LASF13:
	.ascii	"float\000"
.LASF60:
	.ascii	"OBJSIZE_32\000"
.LASF69:
	.ascii	"prev_pc\000"
.LASF200:
	.ascii	"signvalue\000"
.LASF42:
	.ascii	"matrixMode\000"
.LASF133:
	.ascii	"smaBankAddr\000"
.LASF189:
	.ascii	"TNeoContext\000"
.LASF220:
	.ascii	"bgState\000"
.LASF17:
	.ascii	"bool\000"
.LASF115:
	.ascii	"pVideoWriteTable\000"
.LASF111:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF199:
	.ascii	"base\000"
.LASF31:
	.ascii	"dirty\000"
.LASF41:
	.ascii	"gl_hidden_globals\000"
.LASF194:
	.ascii	"fmtstr\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF139:
	.ascii	"pVramBase\000"
.LASF98:
	.ascii	"step\000"
.LASF216:
	.ascii	"glGlob\000"
.LASF193:
	.ascii	"dopr_outch\000"
.LASF188:
	.ascii	"cpuCheckPcTable\000"
.LASF72:
	.ascii	"cycles\000"
.LASF219:
	.ascii	"bgControl\000"
.LASF180:
	.ascii	"fill\000"
.LASF141:
	.ascii	"displayCounter\000"
.LASF36:
	.ascii	"GL_PROJECTION\000"
.LASF59:
	.ascii	"OBJSIZE_16\000"
.LASF208:
	.ascii	"format\000"
.LASF24:
	.ascii	"centerY\000"
.LASF87:
	.ascii	"internal\000"
.LASF58:
	.ascii	"OBJSIZE_8\000"
.LASF183:
	.ascii	"cpuRead16Table\000"
.LASF207:
	.ascii	"dopr\000"
.LASF80:
	.ascii	"write32\000"
.LASF127:
	.ascii	"pVram\000"
.LASF145:
	.ascii	"pTileBuffer\000"
.LASF18:
	.ascii	"char\000"
.LASF171:
	.ascii	"fixedRomLatch\000"
.LASF86:
	.ascii	"UnrecognizedCallback\000"
.LASF163:
	.ascii	"displayCounterLoad\000"
.LASF100:
	.ascii	"_TNeoADPCMBStream\000"
.LASF190:
	.ascii	"buffer\000"
.LASF138:
	.ascii	"frameCount\000"
.LASF96:
	.ascii	"_TNeoADPCMStream\000"
.LASF142:
	.ascii	"autoAnimationCounter\000"
.LASF81:
	.ascii	"fetch8\000"
.LASF97:
	.ascii	"offset\000"
.LASF202:
	.ascii	"convert\000"
.LASF34:
	.ascii	"data\000"
.LASF179:
	.ascii	"__ap\000"
.LASF57:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF23:
	.ascii	"centerX\000"
.LASF27:
	.ascii	"scrollX\000"
.LASF28:
	.ascii	"scrollY\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF63:
	.ascii	"OBJCOLOR_256\000"
.LASF90:
	.ascii	"TRead16Func\000"
.LASF167:
	.ascii	"ctrl4Reg\000"
.LASF54:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF82:
	.ascii	"fetch16\000"
.LASF112:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF44:
	.ascii	"textures\000"
.LASF187:
	.ascii	"cpuWrite32Table\000"
.LASF155:
	.ascii	"fixedBank\000"
.LASF119:
	.ascii	"adpcmb\000"
.LASF91:
	.ascii	"TRead32Func\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF226:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/Sprintf.c"
	.ascii	"\000"
.LASF113:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF68:
	.ascii	"flags\000"
.LASF93:
	.ascii	"TWrite16Func\000"
.LASF146:
	.ascii	"tileOffsetX\000"
.LASF147:
	.ascii	"tileOffsetY\000"
.LASF223:
	.ascii	"g_neoContext\000"
.LASF55:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF159:
	.ascii	"vramOffset\000"
.LASF61:
	.ascii	"OBJSIZE_64\000"
.LASF49:
	.ascii	"nameCount\000"
.LASF134:
	.ascii	"smaBankoffset\000"
.LASF181:
	.ascii	"_TNeoContext\000"
.LASF186:
	.ascii	"cpuWrite16Table\000"
.LASF129:
	.ascii	"pPalette\000"
.LASF184:
	.ascii	"cpuRead32Table\000"
.LASF209:
	.ascii	"args\000"
.LASF161:
	.ascii	"displayControl\000"
.LASF158:
	.ascii	"sramProtection\000"
.LASF102:
	.ascii	"freqCounter\000"
.LASF166:
	.ascii	"ctrl3Reg\000"
.LASF177:
	.ascii	"frameCounter\000"
.LASF210:
	.ascii	"strvalue\000"
.LASF212:
	.ascii	"cflags\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
