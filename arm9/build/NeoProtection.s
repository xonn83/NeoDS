	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"NeoProtection.c"
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
	.type	neoPvcProt1, %function
neoPvcProt1:
.LFB168:
	.file 1 "C:/Users/GRX/NeoDS/arm9/source/NeoProtection.c"
	.loc 1 20 0
	push	{r4, r5, r6, lr}
.LCFI0:
.LBB56:
.LBB58:
	.loc 1 16 0
	ldr	r3, .L3
.LBE58:
.LBE56:
.LBB60:
.LBB61:
	mov	r1, #255
	lsl	r1, r1, #5
.LBE61:
.LBE60:
.LBB63:
.LBB57:
	ldr	r2, .L3+4
.LBE57:
.LBE63:
.LBB64:
.LBB62:
	ldrb	r4, [r3, r1]
.LVL0:
.LBE62:
.LBE64:
.LBB65:
.LBB59:
	ldrb	r2, [r3, r2]
.LVL1:
.LBE59:
.LBE65:
.LBB66:
.LBB67:
	.loc 1 10 0
	mov	r0, #15
	mov	r5, r4
	mov	r1, #1
	and	r5, r5, r0
	lsr	r6, r2, #4
	lsl	r5, r5, #1
	and	r6, r6, r1
	orr	r6, r6, r5
	ldr	r5, .L3+8
.LBE67:
.LBE66:
.LBB69:
.LBB71:
	lsr	r4, r4, #4
.LVL2:
.LBE71:
.LBE69:
.LBB73:
.LBB68:
	strb	r6, [r3, r5]
.LBE68:
.LBE73:
.LBB74:
.LBB70:
	lsl	r5, r4, #1
	lsr	r4, r2, #5
	and	r4, r4, r1
	orr	r4, r4, r5
	ldr	r5, .L3+12
.LBE70:
.LBE74:
.LBB75:
.LBB76:
	and	r0, r0, r2
.LBE76:
.LBE75:
.LBB78:
.LBB72:
	strb	r4, [r3, r5]
.LBE72:
.LBE78:
.LBB79:
.LBB77:
	lsr	r4, r2, #6
	lsl	r0, r0, #1
	and	r1, r1, r4
	ldr	r4, .L3+16
	orr	r1, r1, r0
	strb	r1, [r3, r4]
.LBE77:
.LBE79:
.LBB80:
.LBB81:
	ldr	r1, .L3+20
	lsr	r2, r2, #7
.LVL3:
	strb	r2, [r3, r1]
.LBE81:
.LBE80:
	.loc 1 30 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.word	8161
	.word	8162
	.word	8163
	.word	8164
	.word	8165
.LFE168:
	.size	neoPvcProt1, .-neoPvcProt1
	.align	2
	.code	16
	.thumb_func
	.type	neoKof98Write16, %function
neoKof98Write16:
.LFB178:
	.loc 1 264 0
	push	{lr}
.LCFI1:
.LVL4:
	.loc 1 265 0
	ldr	r3, .L14
	and	r0, r0, r3
.LVL5:
	ldr	r3, .L14+4
	cmp	r0, r3
	bne	.L9
.LBB82:
	.loc 1 267 0
	mov	r3, r7
	add	r3, r3, #252
	ldr	r3, [r3, #68]
.LVL6:
	.loc 1 268 0
	cmp	r1, #144
	beq	.L7
	cmp	r1, #240
	bne	.L9
	b	.L13
.L7:
	.loc 1 271 0
	mov	r2, #194
	add	r3, r3, #254
.LVL7:
	strh	r2, [r3, #2]
	.loc 1 272 0
	mov	r2, #253
	b	.L10
.LVL8:
.L13:
	.loc 1 276 0
	ldr	r2, .L14+8
	add	r3, r3, #254
.LVL9:
	strh	r2, [r3, #2]
	.loc 1 277 0
	add	r2, r2, #232
.L10:
	strh	r2, [r3, #4]
.LVL10:
.L9:
.LBE82:
	.loc 1 286 0
	@ sp needed for prologue
	pop	{pc}
.L15:
	.align	2
.L14:
	.word	16777215
	.word	2140842
	.word	20037
.LFE178:
	.size	neoKof98Write16, .-neoKof98Write16
	.align	2
	.code	16
	.thumb_func
	.type	neoKof98Write8, %function
neoKof98Write8:
.LFB179:
	.loc 1 289 0
	push	{r4, lr}
.LCFI2:
.LVL11:
	.loc 1 290 0
	mov	r3, #1
	tst	r0, r3
	beq	.L17
	.loc 1 291 0
	bic	r0, r0, r3
.LVL12:
	b	.L20
.LVL13:
.L17:
	.loc 1 293 0
	lsl	r1, r1, #8
.LVL14:
.L20:
	bl	neoKof98Write16
.LVL15:
	.loc 1 295 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE179:
	.size	neoKof98Write8, .-neoKof98Write8
	.align	2
	.code	16
	.thumb_func
	.type	neoFatFury2Read16, %function
neoFatFury2Read16:
.LFB180:
	.loc 1 300 0
	push	{lr}
.LCFI3:
.LVL16:
	.loc 1 301 0
	ldr	r3, .L28
	.loc 1 300 0
	mov	r2, r0
	.loc 1 301 0
	ldrb	r0, [r3, #3]
.LVL17:
	.loc 1 303 0
	ldr	r3, .L28+4
	and	r3, r3, r2
	ldr	r2, .L28+8
.LVL18:
	cmp	r3, r2
	beq	.L23
	cmp	r3, r2
	bhi	.L25
	mov	r2, #216
	lsl	r2, r2, #10
	cmp	r3, r2
	beq	.L23
	ldr	r2, .L28+12
	cmp	r3, r2
	beq	.L24
	cmp	r3, #0
	beq	.L23
	b	.L22
.L25:
	ldr	r2, .L28+16
	cmp	r3, r2
	beq	.L23
	cmp	r3, r2
	bhi	.L26
	ldr	r2, .L28+20
	cmp	r3, r2
	bne	.L22
	b	.L24
.L26:
	mov	r2, #255
	lsl	r2, r2, #12
	cmp	r3, r2
	beq	.L23
	ldr	r2, .L28+24
	cmp	r3, r2
	beq	.L23
.L22:
	mov	r0, #0
.LVL19:
	b	.L23
.L24:
	.loc 1 313 0
	lsl	r2, r0, #4
	mov	r3, #255
	and	r3, r3, r2
	lsr	r0, r0, #4
.LVL20:
	orr	r0, r0, r3
.LVL21:
.L23:
.LVL22:
	.loc 1 317 0
	@ sp needed for prologue
	pop	{pc}
.L29:
	.align	2
.L28:
	.word	.LANCHOR1
	.word	1048574
	.word	221192
	.word	221188
	.word	349520
	.word	221196
	.word	1048560
.LFE180:
	.size	neoFatFury2Read16, .-neoFatFury2Read16
	.align	2
	.code	16
	.thumb_func
	.type	neoFatFury2Write16, %function
neoFatFury2Write16:
.LFB181:
	.loc 1 321 0
	push	{lr}
.LCFI4:
.LVL23:
	.loc 1 322 0
	ldr	r3, .L51
	and	r0, r0, r3
.LVL24:
	ldr	r3, .L51+4
	cmp	r0, r3
	beq	.L35
	cmp	r0, r3
	bhi	.L39
	mov	r3, #216
	lsl	r3, r3, #10
	cmp	r0, r3
	beq	.L34
	cmp	r0, r3
	bhi	.L40
	ldr	r3, .L51+8
	cmp	r0, r3
	beq	.L32
	ldr	r3, .L51+12
	cmp	r0, r3
	bne	.L42
	b	.L49
.L40:
	ldr	r3, .L51+16
	cmp	r0, r3
	beq	.L34
	add	r3, r3, #4
	cmp	r0, r3
	beq	.L34
	sub	r3, r3, #8
	b	.L44
.L39:
	ldr	r3, .L51+20
	cmp	r0, r3
	beq	.L37
	cmp	r0, r3
	bhi	.L41
	ldr	r3, .L51+24
	cmp	r0, r3
	beq	.L36
	ldr	r3, .L51+28
.L44:
	cmp	r0, r3
	bne	.L42
	b	.L34
.L41:
	mov	r3, #255
	lsl	r3, r3, #12
	cmp	r0, r3
	beq	.L34
	ldr	r3, .L51+32
	cmp	r0, r3
	beq	.L34
	ldr	r3, .L51+36
	cmp	r0, r3
	bne	.L42
	b	.L50
.L32:
	.loc 1 324 0
	ldr	r2, .L51+40
	b	.L46
.L49:
	.loc 1 327 0
	ldr	r2, .L51+44
	b	.L46
.L36:
	.loc 1 330 0
	mov	r3, #255
	ldr	r2, .L51+48
	lsl	r3, r3, #16
	str	r3, [r2]
	.loc 1 331 0
	b	.L42
.L37:
	.loc 1 333 0
	ldr	r2, .L51+52
	b	.L46
.L50:
	.loc 1 336 0
	ldr	r2, .L51+56
	b	.L46
.L35:
	.loc 1 339 0
	ldr	r2, .L51+60
.L46:
	ldr	r3, .L51+48
	b	.L45
.L34:
	.loc 1 348 0
	ldr	r3, .L51+48
	ldr	r2, [r3]
	lsl	r2, r2, #8
.L45:
	str	r2, [r3]
.L42:
	.loc 1 351 0
	@ sp needed for prologue
	pop	{pc}
.L52:
	.align	2
.L51:
	.word	1048574
	.word	272402
	.word	69906
	.word	209714
	.word	221192
	.word	349522
	.word	279618
	.word	349520
	.word	1048560
	.word	354178
	.word	-16777216
	.word	65535
	.word	.LANCHOR1
	.word	-16711936
	.word	-262523391
	.word	-2126371816
.LFE181:
	.size	neoFatFury2Write16, .-neoFatFury2Write16
	.align	2
	.global	neoInstallProtection
	.code	16
	.thumb_func
	.type	neoInstallProtection, %function
neoInstallProtection:
.LFB182:
	.loc 1 354 0
	push	{r4, r5, r6, lr}
.LCFI5:
	.loc 1 357 0
	mov	r2, r7
	add	r2, r2, #252
	mov	r1, #0
	str	r1, [r2, #108]
	.loc 1 358 0
	str	r1, [r2, #112]
	.loc 1 359 0
	str	r1, [r2, #116]
	.loc 1 361 0
	ldr	r2, .L70
	.loc 1 357 0
	mov	r3, r7
	.loc 1 361 0
	ldr	r2, [r2, #8]
	sub	r2, r2, #1
	cmp	r2, #7
	bhi	.L54
	ldr	r1, .L70+4
	lsl	r2, r2, #2
	ldr	r2, [r1, r2]
	mov	pc, r2
	.section	.rodata
	.align	2
.L63:
	.word	.L55
	.word	.L56
	.word	.L57
	.word	.L58
	.word	.L59
	.word	.L60
	.word	.L61
	.word	.L62
	.text
.L55:
	.loc 1 363 0
	ldr	r1, .L70+8
	ldr	r2, .L70+12
	.loc 1 369 0
	ldr	r0, .L70+16
	.loc 1 363 0
	str	r1, [r7, r2]
	.loc 1 364 0
	ldr	r1, .L70+20
	ldr	r2, .L70+24
	str	r1, [r7, r2]
	.loc 1 365 0
	ldr	r1, .L70+28
	ldr	r2, .L70+32
	str	r1, [r7, r2]
	.loc 1 366 0
	ldr	r1, .L70+36
	ldr	r2, .L70+40
	str	r1, [r7, r2]
	.loc 1 367 0
	ldr	r1, .L70+44
	ldr	r2, .L70+48
	str	r1, [r7, r2]
	.loc 1 368 0
	ldr	r1, .L70+52
	ldr	r2, .L70+56
	str	r1, [r7, r2]
	.loc 1 369 0
	mov	r2, #128
	mov	r1, #0
	lsl	r2, r2, #6
	bl	memset
	.loc 1 371 0
	b	.L54
.L56:
	.loc 1 373 0
	ldr	r2, .L70+60
	add	r3, r3, #252
	str	r2, [r3, #108]
	.loc 1 374 0
	add	r2, r2, #2
	str	r2, [r3, #112]
	.loc 1 375 0
	add	r2, r2, #18
	str	r2, [r3, #116]
	.loc 1 376 0
	ldr	r2, .L70+64
	str	r2, [r3, #120]
	.loc 1 377 0
	ldr	r2, .L70+68
	b	.L69
.L57:
	.loc 1 380 0
	ldr	r2, .L70+72
	add	r3, r3, #252
	str	r2, [r3, #116]
	.loc 1 381 0
	ldr	r2, .L70+68
	add	r2, r2, #24
	str	r2, [r3, #120]
	.loc 1 382 0
	ldr	r2, .L70+76
	add	r2, r2, #24
	str	r2, [r3, #124]
	.loc 1 384 0
	mov	r2, #1
	str	r2, [r3, #108]
	.loc 1 385 0
	b	.L54
.L58:
	.loc 1 387 0
	ldr	r2, .L70+80
	add	r3, r3, #252
	str	r2, [r3, #108]
	.loc 1 388 0
	add	r2, r2, #36
	str	r2, [r3, #112]
	.loc 1 389 0
	sub	r2, r2, #48
	str	r2, [r3, #116]
	.loc 1 390 0
	ldr	r2, .L70+76
	add	r2, r2, #48
	str	r2, [r3, #120]
	.loc 1 391 0
	ldr	r2, .L70+84
	add	r2, r2, #48
.L69:
	str	r2, [r3, #124]
	.loc 1 392 0
	b	.L54
.L59:
	.loc 1 394 0
	ldr	r2, .L70+80
	add	r3, r3, #252
	str	r2, [r3, #108]
	.loc 1 395 0
	add	r2, r2, #36
	str	r2, [r3, #112]
	.loc 1 396 0
	sub	r2, r2, #48
	str	r2, [r3, #116]
	.loc 1 397 0
	ldr	r2, .L70+84
	add	r2, r2, #72
	str	r2, [r3, #120]
	.loc 1 398 0
	ldr	r2, .L70+88
	add	r2, r2, #72
	b	.L69
.L60:
	.loc 1 401 0
	ldr	r2, .L70+92
	add	r3, r3, #252
	str	r2, [r3, #108]
	.loc 1 402 0
	add	r2, r2, #2
	str	r2, [r3, #112]
	.loc 1 403 0
	sub	r2, r2, #10
	str	r2, [r3, #116]
	.loc 1 404 0
	ldr	r2, .L70+88
	add	r2, r2, #96
	str	r2, [r3, #120]
	.loc 1 405 0
	ldr	r2, .L70+96
	add	r2, r2, #96
	b	.L69
.L61:
	.loc 1 408 0
	ldr	r1, .L70+100
	mov	r2, #132
	lsl	r2, r2, #5
	str	r1, [r7, r2]
	.loc 1 409 0
	mov	r2, #164
	ldr	r1, .L70+104
	lsl	r2, r2, #5
	str	r1, [r7, r2]
	.loc 1 411 0
	b	.L54
.L62:
	mov	r2, #132
	lsl	r2, r2, #5
	.loc 1 414 0
	ldr	r1, .L70+108
	.loc 1 416 0
	ldr	r0, .L70+112
	.loc 1 411 0
	add	r3, r7, r2
	mov	r2, #32
.LVL25:
.L64:
	.loc 1 415 0
	mov	r5, #128
	lsl	r5, r5, #3
	add	r4, r3, r5
	.loc 1 416 0
	ldr	r5, .L70+116
	.loc 1 415 0
	str	r1, [r4]
	.loc 1 413 0
	add	r2, r2, #1
	.loc 1 416 0
	add	r4, r3, r5
	.loc 1 414 0
	str	r1, [r3]
	.loc 1 416 0
	str	r0, [r4]
	.loc 1 413 0
	add	r3, r3, #4
	cmp	r2, #48
	bne	.L64
	.loc 1 419 0
	ldr	r3, .L70+120
	mov	r2, #0
.LVL26:
	str	r2, [r3]
.L54:
	.loc 1 423 0
	mov	r2, r7
	add	r2, r2, #252
	ldr	r2, [r2, #116]
	mov	r3, r7
	cmp	r2, #0
	beq	.L65
	.loc 1 424 0
	ldr	r1, .L70+124
	ldr	r2, .L70+40
	str	r1, [r7, r2]
	.loc 1 425 0
	ldr	r1, .L70+128
	ldr	r2, .L70+48
	str	r1, [r7, r2]
.L65:
	.loc 1 428 0
	mov	r2, r3
	add	r2, r2, #252
	ldr	r1, [r2, #108]
	cmp	r1, #0
	beq	.L67
	ldr	r2, [r2, #112]
	cmp	r2, #0
	beq	.L67
	.loc 1 432 0
	ldr	r1, .L70+132
	ldr	r2, .L70+12
	str	r1, [r3, r2]
	.loc 1 433 0
	ldr	r1, .L70+136
	ldr	r2, .L70+24
	str	r1, [r3, r2]
	.loc 1 434 0
	ldr	r1, .L70+28
	ldr	r2, .L70+32
	str	r1, [r3, r2]
.L67:
	.loc 1 436 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L71:
	.align	2
.L70:
	.word	g_header
	.word	.L63
	.word	neoReadPvc8
	.word	1212
	.word	.LANCHOR0
	.word	neoReadPvc16
	.word	2236
	.word	neoDefaultRead32
	.word	3260
	.word	neoWritePvc8
	.word	4284
	.word	neoWritePvc16
	.word	5308
	.word	neoDefaultWrite32
	.word	6332
	.word	3145688
	.word	.LANCHOR2
	.word	.LANCHOR3
	.word	3145700
	.word	.LANCHOR4
	.word	3145676
	.word	.LANCHOR5
	.word	.LANCHOR6
	.word	3145720
	.word	.LANCHOR7
	.word	neoKof98Write8
	.word	neoKof98Write16
	.word	neoFatFury2Write16
	.word	neoFatFury2Read16
	.word	-2048
	.word	.LANCHOR1
	.word	neoWriteRomBankSma8
	.word	neoWriteRomBankSma16
	.word	neoDefaultRead8
	.word	neoReadSma16
.LFE182:
	.size	neoInstallProtection, .-neoInstallProtection
	.align	2
	.code	16
	.thumb_func
	.type	neoReadSma16, %function
neoReadSma16:
.LFB177:
	.loc 1 238 0
	push	{r4, r5, r6, lr}
.LCFI6:
.LVL27:
	.loc 1 239 0
	ldr	r3, .L78
	and	r0, r0, r3
.LVL28:
	.loc 1 240 0
	ldr	r3, .L78+4
	cmp	r0, r3
	bne	.L73
	ldr	r0, .L78+8
.LVL29:
	b	.L74
.LVL30:
.L73:
	.loc 1 242 0
	mov	r3, r7
	add	r3, r3, #252
	ldr	r2, [r3, #108]
	mov	r1, r7
	cmp	r0, r2
	beq	.L75
	ldr	r3, [r3, #112]
	cmp	r0, r3
	bne	.L76
.L75:
.LBB83:
	.loc 1 243 0
	mov	r2, #190
	lsl	r2, r2, #1
	ldr	r3, [r1, r2]
	.loc 1 254 0
	lsr	r4, r3, #2
	lsr	r5, r3, #3
	eor	r5, r5, r4
	lsr	r4, r3, #5
	eor	r5, r5, r4
	lsr	r4, r3, #6
	eor	r5, r5, r4
	lsr	r4, r3, #7
	eor	r5, r5, r4
	lsr	r4, r3, #11
	eor	r5, r5, r4
	lsr	r4, r3, #12
	eor	r5, r5, r4
	.loc 1 243 0
	lsl	r0, r3, #16
.LVL31:
	.loc 1 254 0
	lsr	r4, r3, #15
	mov	r3, r5
	eor	r3, r3, r4
	.loc 1 243 0
	lsr	r0, r0, #16
.LVL32:
	.loc 1 254 0
	mov	r4, #1
	and	r3, r3, r4
	lsl	r4, r0, #1
	orr	r3, r3, r4
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	str	r3, [r1, r2]
	.loc 1 258 0
	b	.L74
.LVL33:
.L76:
.LBE83:
	.loc 1 260 0
	bl	neoReadBankedRom16
.LVL34:
.L74:
.LVL35:
	.loc 1 261 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L79:
	.align	2
.L78:
	.word	16777215
	.word	3138630
	.word	39479
.LFE177:
	.size	neoReadSma16, .-neoReadSma16
	.align	2
	.code	16
	.thumb_func
	.type	neoReadPvc16, %function
neoReadPvc16:
.LFB172:
	.loc 1 75 0
	push	{r4, lr}
.LCFI7:
.LVL36:
	.loc 1 76 0
	ldr	r3, .L84
	and	r0, r0, r3
.LVL37:
	.loc 1 77 0
	ldr	r3, .L84+4
	cmp	r0, r3
	bls	.L81
	.loc 1 78 0
	ldr	r3, .L84+8
	add	r0, r3, r0
.LVL38:
	ldr	r3, .L84+12
	add	r0, r0, r3
	ldrh	r0, [r0]
	b	.L82
.LVL39:
.L81:
	.loc 1 80 0
	bl	neoReadBankedRom16
.LVL40:
.L82:
	.loc 1 81 0
	@ sp needed for prologue
	pop	{r4, pc}
.L85:
	.align	2
.L84:
	.word	16777215
	.word	3137535
	.word	.LANCHOR0
	.word	-3137536
.LFE172:
	.size	neoReadPvc16, .-neoReadPvc16
	.align	2
	.code	16
	.thumb_func
	.type	neoPvcWriteBank, %function
neoPvcWriteBank:
.LFB170:
	.loc 1 46 0
	push	{r4, lr}
.LCFI8:
	.loc 1 47 0
	ldr	r3, .L89
	ldr	r1, .L89+4
	ldr	r2, .L89+8
	.loc 1 49 0
	mov	r4, #1
	.loc 1 47 0
	ldrh	r0, [r3, r2]
	ldrh	r2, [r3, r1]
	lsl	r0, r0, #8
	lsr	r2, r2, #8
	orr	r0, r0, r2
.LVL41:
	.loc 1 48 0
	mov	r2, #96
	neg	r2, r2
	strb	r2, [r3, r1]
	.loc 1 49 0
	add	r1, r1, #1
	add	r2, r3, r1
	ldrb	r1, [r2]
	bic	r1, r1, r4
	strb	r1, [r2]
	.loc 1 50 0
	ldr	r2, .L89+12
	add	r3, r3, r2
	ldrb	r1, [r3]
	mov	r2, #127
	and	r2, r2, r1
	strb	r2, [r3]
	.loc 1 52 0
	mov	r3, r7
	add	r3, r3, #216
	ldr	r3, [r3]
	lsl	r3, r3, #20
	cmp	r0, r3
	bcc	.L87
	mov	r0, #0
.L87:
	.loc 1 56 0
	bl	neoSetRomBankAddr
.LVL42:
	.loc 1 63 0
	@ sp needed for prologue
	pop	{r4, pc}
.L90:
	.align	2
.L89:
	.word	.LANCHOR0
	.word	8176
	.word	8178
	.word	8179
.LFE170:
	.size	neoPvcWriteBank, .-neoPvcWriteBank
	.align	2
	.code	16
	.thumb_func
	.type	neoWritePvc16, %function
neoWritePvc16:
.LFB174:
	.loc 1 106 0
	push	{r4, r5, r6, lr}
.LCFI9:
.LVL43:
	.loc 1 107 0
	ldr	r3, .L96
	and	r0, r0, r3
.LVL44:
	.loc 1 108 0
	ldr	r3, .L96+4
	cmp	r0, r3
	bls	.L95
.LBB84:
	.loc 1 109 0
	ldr	r3, .L96+8
	.loc 1 110 0
	ldr	r4, .L96+8
	.loc 1 109 0
	add	r2, r0, r3
	.loc 1 110 0
	ldr	r3, .L96+12
	.loc 1 109 0
	lsr	r2, r2, #1
.LVL45:
	.loc 1 110 0
	add	r0, r3, r0
.LVL46:
	add	r0, r0, r4
	strh	r1, [r0]
	.loc 1 111 0
	mov	r1, #255
.LVL47:
	lsl	r1, r1, #4
	cmp	r2, r1
	bne	.L93
	bl	neoPvcProt1
.LVL48:
	b	.L95
.LVL49:
.L93:
	.loc 1 112 0
	ldr	r0, .L96+16
	add	r1, r2, r0
	cmp	r1, #1
	bhi	.L94
.LBB85:
.LBB86:
.LBB87:
.LBB88:
	.loc 1 16 0
	ldr	r2, .L96+20
.LVL50:
	ldrb	r0, [r3, r2]
.LVL51:
.LBE88:
.LBE87:
.LBB89:
.LBB90:
	sub	r2, r2, #1
	ldrb	r4, [r3, r2]
.LVL52:
.LBE90:
.LBE89:
.LBB91:
.LBB92:
	add	r2, r2, #3
	ldrb	r6, [r3, r2]
.LVL53:
.LBE92:
.LBE91:
.LBB93:
.LBB95:
	.loc 1 10 0
	lsr	r5, r0, #1
.LBE95:
.LBE93:
.LBB97:
.LBB98:
	.loc 1 16 0
	sub	r2, r2, #1
	ldrb	r1, [r3, r2]
.LVL54:
.LBE98:
.LBE97:
.LBB99:
.LBB94:
	.loc 1 10 0
	lsl	r5, r5, #4
	lsr	r2, r4, #1
	orr	r5, r5, r2
	ldr	r2, .L96+24
.LBE94:
.LBE99:
.LBB100:
.LBB101:
	lsl	r6, r6, #7
.LVL55:
.LBE101:
.LBE100:
.LBB103:
.LBB96:
	strb	r5, [r3, r2]
.LBE96:
.LBE103:
.LBB104:
.LBB102:
	lsr	r2, r1, #1
	orr	r6, r6, r2
	mov	r2, #1
	and	r4, r4, r2
.LVL56:
	lsl	r5, r4, #4
	mov	r4, r6
	and	r0, r0, r2
.LVL57:
	orr	r4, r4, r5
	lsl	r5, r0, #5
	mov	r0, r4
	orr	r0, r0, r5
	and	r1, r1, r2
.LVL58:
	lsl	r1, r1, #6
	mov	r2, r0
	ldr	r5, .L96+28
	orr	r2, r2, r1
	strb	r2, [r3, r5]
	b	.L95
.LVL59:
.L94:
.LBE102:
.LBE104:
.LBE86:
.LBE85:
	.loc 1 113 0
	ldr	r3, .L96+32
	cmp	r2, r3
	bls	.L95
	bl	neoPvcWriteBank
.LVL60:
.L95:
.LBE84:
	.loc 1 117 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L97:
	.align	2
.L96:
	.word	16777215
	.word	3137535
	.word	-3137536
	.word	.LANCHOR0
	.word	-4084
	.word	8169
	.word	8172
	.word	8173
	.word	4087
.LFE174:
	.size	neoWritePvc16, .-neoWritePvc16
	.align	2
	.code	16
	.thumb_func
	.type	neoWritePvc8, %function
neoWritePvc8:
.LFB173:
	.loc 1 92 0
	push	{r4, r5, r6, lr}
.LCFI10:
.LVL61:
	.loc 1 93 0
	ldr	r3, .L103
	.loc 1 92 0
	sub	sp, sp, #16
.LCFI11:
	.loc 1 93 0
	and	r0, r0, r3
.LVL62:
	.loc 1 94 0
	ldr	r3, .L103+4
	cmp	r0, r3
	bls	.L102
.LBB105:
	.loc 1 95 0
	ldr	r3, .L103+8
	.loc 1 96 0
	mov	r2, #1
	.loc 1 95 0
	add	r0, r0, r3
.LVL63:
	.loc 1 96 0
	ldr	r3, .L103+12
	.loc 1 95 0
	lsr	r4, r0, #1
.LVL64:
	.loc 1 96 0
	eor	r0, r0, r2
	strb	r1, [r3, r0]
	.loc 1 97 0
	mov	r1, #255
.LVL65:
	lsl	r1, r1, #4
	cmp	r4, r1
	bne	.L100
	bl	neoPvcProt1
	b	.L102
.L100:
	.loc 1 98 0
	ldr	r5, .L103+16
	add	r1, r4, r5
	cmp	r1, #1
	bhi	.L101
.LBB106:
.LBB107:
.LBB108:
.LBB109:
	.loc 1 16 0
	ldr	r1, .L103+20
	ldrb	r0, [r3, r1]
.LVL66:
.LBE109:
.LBE108:
.LBB110:
.LBB111:
	sub	r1, r1, #1
	ldrb	r4, [r3, r1]
.LVL67:
.LBE111:
.LBE110:
.LBB112:
.LBB113:
	add	r1, r1, #3
	ldrb	r1, [r3, r1]
.LBE113:
.LBE112:
.LBB115:
.LBB117:
	.loc 1 10 0
	lsr	r5, r0, #1
	lsr	r6, r4, #1
	lsl	r5, r5, #4
.LBE117:
.LBE115:
.LBB120:
.LBB114:
	.loc 1 16 0
	str	r1, [sp, #4]
.LBE114:
.LBE120:
.LBB121:
.LBB118:
	.loc 1 10 0
	orr	r5, r5, r6
.LBE118:
.LBE121:
.LBB122:
.LBB123:
	.loc 1 16 0
	ldr	r1, .L103+24
.LBE123:
.LBE122:
.LBB125:
.LBB116:
	.loc 1 10 0
	ldr	r6, .L103+28
.LBE116:
.LBE125:
.LBB126:
.LBB124:
	.loc 1 16 0
	ldrb	r1, [r3, r1]
.LVL68:
.LBE124:
.LBE126:
.LBB127:
.LBB119:
	.loc 1 10 0
	strb	r5, [r3, r6]
.LBE119:
.LBE127:
.LBB128:
.LBB129:
	ldr	r5, [sp, #4]
	and	r4, r4, r2
.LVL69:
	lsl	r6, r5, #7
	lsr	r5, r1, #1
	orr	r6, r6, r5
	lsl	r5, r4, #4
	mov	r4, r6
	and	r0, r0, r2
.LVL70:
	orr	r4, r4, r5
	lsl	r5, r0, #5
	mov	r0, r4
	orr	r0, r0, r5
	and	r1, r1, r2
.LVL71:
	lsl	r1, r1, #6
	mov	r2, r0
	ldr	r5, .L103+32
	orr	r2, r2, r1
	strb	r2, [r3, r5]
	b	.L102
.LVL72:
.L101:
.LBE129:
.LBE128:
.LBE107:
.LBE106:
	.loc 1 99 0
	ldr	r3, .L103+36
	cmp	r4, r3
	bls	.L102
	bl	neoPvcWriteBank
.LVL73:
.L102:
.LBE105:
	.loc 1 103 0
	add	sp, sp, #16
	@ sp needed for prologue
.LVL74:
	pop	{r4, r5, r6, pc}
.L104:
	.align	2
.L103:
	.word	16777215
	.word	3137535
	.word	-3137536
	.word	.LANCHOR0
	.word	-4084
	.word	8169
	.word	8170
	.word	8172
	.word	8173
	.word	4087
.LFE173:
	.size	neoWritePvc8, .-neoWritePvc8
	.align	2
	.code	16
	.thumb_func
	.type	neoWriteRomBankSma16, %function
neoWriteRomBankSma16:
.LFB175:
	.loc 1 215 0
	push	{r4, r5, r6, lr}
.LCFI12:
.LVL75:
	.loc 1 216 0
	mov	r4, r7
	add	r4, r4, #252
	ldr	r3, [r4, #116]
	cmp	r0, r3
	bne	.L106
	.loc 1 218 0
	ldr	r2, [r4, #124]
	.loc 1 225 0
	mov	r3, r1
	ldr	r5, [r2, #4]
	ldr	r0, [r2, #8]
.LVL76:
	mov	r6, r1
	asr	r3, r3, r5
	asr	r6, r6, r0
	mov	r5, r3
	mov	r0, r6
	mov	r3, #1
	and	r5, r5, r3
	and	r0, r0, r3
	lsl	r0, r0, #2
	lsl	r5, r5, #1
	add	r5, r5, r0
	ldr	r0, [r2]
	mov	r6, r1
	asr	r6, r6, r0
	mov	r0, r6
	and	r0, r0, r3
	add	r0, r5, r0
	ldr	r5, [r2, #12]
	mov	r6, r1
	asr	r6, r6, r5
	mov	r5, r6
	and	r5, r5, r3
	lsl	r5, r5, #3
	add	r0, r0, r5
	ldr	r5, [r2, #16]
	mov	r6, r1
	asr	r6, r6, r5
	ldr	r2, [r2, #20]
	mov	r5, r6
	asr	r1, r1, r2
.LVL77:
	and	r5, r5, r3
	lsl	r5, r5, #4
	and	r3, r3, r1
	add	r0, r0, r5
	lsl	r3, r3, #5
	add	r3, r0, r3
	ldr	r2, [r4, #120]
	lsl	r3, r3, #2
	ldr	r0, [r3, r2]
	bl	neoSetRomBankAddr
	b	.L108
.LVL78:
.L106:
	.loc 1 227 0
	bl	neoWriteRomBank
.LVL79:
.L108:
	.loc 1 229 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.LFE175:
	.size	neoWriteRomBankSma16, .-neoWriteRomBankSma16
	.align	2
	.code	16
	.thumb_func
	.type	neoWriteRomBankSma8, %function
neoWriteRomBankSma8:
.LFB176:
	.loc 1 232 0
	push	{r4, lr}
.LCFI13:
.LVL80:
	.loc 1 232 0
	mov	r3, r0
	.loc 1 233 0
	mov	r2, #1
	bic	r0, r0, r2
.LVL81:
	tst	r3, r2
	bne	.L113
	.loc 1 234 0
	lsl	r1, r1, #8
.LVL82:
.L113:
	bl	neoWriteRomBankSma16
.LVL83:
	.loc 1 235 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE176:
	.size	neoWriteRomBankSma8, .-neoWriteRomBankSma8
	.align	2
	.code	16
	.thumb_func
	.type	neoReadPvc8, %function
neoReadPvc8:
.LFB171:
	.loc 1 66 0
	push	{r4, lr}
.LCFI14:
.LVL84:
	.loc 1 67 0
	ldr	r3, .L118
	and	r0, r0, r3
.LVL85:
	.loc 1 68 0
	ldr	r3, .L118+4
	cmp	r0, r3
	bls	.L115
	.loc 1 69 0
	ldr	r3, .L118+8
	add	r0, r0, r3
.LVL86:
	mov	r3, #1
	eor	r0, r0, r3
	ldr	r3, .L118+12
	ldrb	r0, [r3, r0]
	b	.L116
.LVL87:
.L115:
	.loc 1 71 0
	bl	neoReadBankedRom8
.LVL88:
.L116:
	.loc 1 72 0
	@ sp needed for prologue
	pop	{r4, pc}
.L119:
	.align	2
.L118:
	.word	16777215
	.word	3137535
	.word	-3137536
	.word	.LANCHOR0
.LFE171:
	.size	neoReadPvc8, .-neoReadPvc8
	.section	.rodata
	.align	2
	.set	.LANCHOR2,. + 0
	.set	.LANCHOR3,. + 256
	.set	.LANCHOR4,. + 512
	.set	.LANCHOR5,. + 768
	.set	.LANCHOR6,. + 1024
	.set	.LANCHOR7,. + 1280
	.type	g_kof2000Bankoffset, %object
	.size	g_kof2000Bankoffset, 256
g_kof2000Bankoffset:
	.word	0
	.word	1048576
	.word	2097152
	.word	3145728
	.word	4159488
	.word	5208064
	.word	4192256
	.word	5240832
	.word	4225024
	.word	5273600
	.word	4257792
	.word	5306368
	.word	4286464
	.word	5335040
	.word	4315136
	.word	5363712
	.word	4341760
	.word	5390336
	.word	5388288
	.word	6436864
	.word	5398528
	.word	6447104
	.word	5406720
	.word	6455296
	.word	5414912
	.word	6463488
	.word	5421056
	.word	6469632
	.word	5427200
	.word	6475776
	.word	5433344
	.word	6481920
	.word	6389760
	.word	6393856
	.word	6397952
	.word	6400000
	.space	112
	.type	g_kof2000Bankbit, %object
	.size	g_kof2000Bankbit, 24
g_kof2000Bankbit:
	.word	15
	.word	14
	.word	7
	.word	3
	.word	10
	.word	5
	.type	g_mslug3Bankoffset, %object
	.size	g_mslug3Bankoffset, 256
g_mslug3Bankoffset:
	.word	0
	.word	131072
	.word	262144
	.word	393216
	.word	458752
	.word	589824
	.word	720896
	.word	851968
	.word	917504
	.word	983040
	.word	1179648
	.word	1245184
	.word	1310720
	.word	1376256
	.word	1572864
	.word	1638400
	.word	1703936
	.word	1769472
	.word	1966080
	.word	2031616
	.word	2097152
	.word	2162688
	.word	2359296
	.word	2424832
	.word	2490368
	.word	2555904
	.word	2752512
	.word	2818048
	.word	2883584
	.word	2949120
	.word	3145728
	.word	3211264
	.word	3276800
	.word	3342336
	.word	3538944
	.word	3604480
	.word	3670016
	.word	3735552
	.word	3932160
	.word	3997696
	.word	4194304
	.word	4259840
	.word	4456448
	.word	4521984
	.word	4587520
	.word	4653056
	.word	4849664
	.word	4915200
	.word	4980736
	.space	60
	.type	g_mslug3Bankbit, %object
	.size	g_mslug3Bankbit, 24
g_mslug3Bankbit:
	.word	14
	.word	12
	.word	15
	.word	6
	.word	3
	.word	9
	.type	g_garouoBankoffset, %object
	.size	g_garouoBankoffset, 256
g_garouoBankoffset:
	.word	0
	.word	1048576
	.word	2097152
	.word	3145728
	.word	2621440
	.word	3670016
	.word	2949120
	.word	3997696
	.word	2916352
	.word	3964928
	.word	4194304
	.word	5242880
	.word	4325376
	.word	5373952
	.word	4456448
	.word	5505024
	.word	5865472
	.word	6914048
	.word	5898240
	.word	6946816
	.word	5931008
	.word	6979584
	.word	5963776
	.word	7012352
	.word	5996544
	.word	7045120
	.word	6029312
	.word	7077888
	.word	6062080
	.word	7110656
	.word	6094848
	.word	7143424
	.word	4554752
	.word	5603328
	.word	4587520
	.word	5636096
	.word	4620288
	.word	5668864
	.word	4653056
	.word	5701632
	.word	4685824
	.word	5734400
	.word	4718592
	.word	5767168
	.word	4751360
	.word	5799936
	.word	4784128
	.word	5832704
	.word	6127616
	.word	7176192
	.word	6160384
	.word	7208960
	.word	6193152
	.word	7241728
	.word	7241728
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.type	g_garouoBankbit, %object
	.size	g_garouoBankbit, 24
g_garouoBankbit:
	.word	4
	.word	8
	.word	14
	.word	2
	.word	11
	.word	13
	.type	g_garouBankoffset, %object
	.size	g_garouBankoffset, 256
g_garouBankoffset:
	.word	0
	.word	1048576
	.word	2097152
	.word	3145728
	.word	2621440
	.word	3670016
	.word	2949120
	.word	3997696
	.word	3080192
	.word	4128768
	.word	4194304
	.word	5242880
	.word	4325376
	.word	5373952
	.word	4456448
	.word	5505024
	.word	4816896
	.word	5865472
	.word	4849664
	.word	5898240
	.word	4882432
	.word	5931008
	.word	4915200
	.word	5963776
	.word	4947968
	.word	5996544
	.word	4980736
	.word	6029312
	.word	5013504
	.word	6062080
	.word	5046272
	.word	6094848
	.word	4554752
	.word	5603328
	.word	4587520
	.word	5636096
	.word	4620288
	.word	5668864
	.word	4653056
	.word	5701632
	.word	4685824
	.word	5734400
	.word	4718592
	.word	5767168
	.word	4751360
	.word	5799936
	.word	4784128
	.word	5832704
	.word	6094848
	.word	6127616
	.word	6160384
	.word	6193152
	.word	6225920
	.word	6258688
	.word	6291456
	.space	36
	.type	g_garouBankbit, %object
	.size	g_garouBankbit, 24
g_garouBankbit:
	.word	5
	.word	9
	.word	7
	.word	6
	.word	14
	.word	12
	.type	g_kof99Bankoffset, %object
	.size	g_kof99Bankoffset, 256
g_kof99Bankoffset:
	.word	0
	.word	1048576
	.word	2097152
	.word	3145728
	.word	3981312
	.word	5029888
	.word	4136960
	.word	5185536
	.word	4225024
	.word	5273600
	.word	4247552
	.word	5296128
	.word	4290560
	.word	5339136
	.word	4327424
	.word	5376000
	.word	4343808
	.word	5392384
	.word	4362240
	.word	5410816
	.word	4384768
	.word	5433344
	.word	4397056
	.word	5445632
	.word	5558272
	.word	5574656
	.word	5664768
	.word	5842944
	.word	5801984
	.word	5773312
	.word	5871616
	.word	5851136
	.word	5865472
	.space	124
	.type	g_kof99Bankbit, %object
	.size	g_kof99Bankbit, 24
g_kof99Bankbit:
	.word	14
	.word	6
	.word	8
	.word	10
	.word	12
	.word	5
	.bss
	.align	5
	.set	.LANCHOR0,. + 0
	.set	.LANCHOR1,. + 8192
	.type	g_pvcRam, %object
	.size	g_pvcRam, 8192
g_pvcRam:
	.space	8192
	.type	g_fatFury2Prot, %object
	.size	g_fatFury2Prot, 4
g_fatFury2Prot:
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
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.byte	0x4
	.4byte	.LCFI1-.LFB178
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
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.byte	0x4
	.4byte	.LCFI2-.LFB179
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
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.byte	0x4
	.4byte	.LCFI3-.LFB180
	.byte	0xe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.byte	0x4
	.4byte	.LCFI4-.LFB181
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
	.4byte	.LFB182
	.4byte	.LFE182-.LFB182
	.byte	0x4
	.4byte	.LCFI5-.LFB182
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
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.byte	0x4
	.4byte	.LCFI6-.LFB177
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
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.byte	0x4
	.4byte	.LCFI7-.LFB172
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.byte	0x4
	.4byte	.LCFI8-.LFB170
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
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.byte	0x4
	.4byte	.LCFI9-.LFB174
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
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.byte	0x4
	.4byte	.LCFI10-.LFB173
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
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.byte	0x4
	.4byte	.LCFI12-.LFB175
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
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.byte	0x4
	.4byte	.LCFI13-.LFB176
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.byte	0x4
	.4byte	.LCFI14-.LFB171
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE26:
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
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB178-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE178-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE178-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB179-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE179-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB180-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE180-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB181-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE181-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB182-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE182-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LFB177-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE177-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB172-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LFB170-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LFB174-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LFB173-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL73-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL73-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LFB175-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE175-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LFB176-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE176-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LFB171-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 5 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 6 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 7 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 8 "C:/Users/GRX/NeoDS/arm9/include/cyclone.h"
	.file 9 "C:/Users/GRX/NeoDS/arm9/include/NeoCpu.h"
	.file 10 "C:/Users/GRX/NeoDS/arm9/../common/source/NeoAudioStream.h"
	.file 11 "C:/Users/GRX/NeoDS/arm9/include/NeoSystem.h"
	.file 12 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.section	.debug_info
	.4byte	0x15ec
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF246
	.byte	0x1
	.4byte	.LASF247
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
	.4byte	.LASF111
	.byte	0x1
	.byte	0xb
	.byte	0x8d
	.4byte	0x751
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
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LASF112
	.byte	0x1
	.byte	0xb
	.byte	0x99
	.4byte	0x79a
	.uleb128 0x7
	.4byte	.LASF113
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF114
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF115
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF116
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF117
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF118
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF119
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF120
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF121
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF122
	.sleb128 9
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF123
	.byte	0x8
	.byte	0xb
	.byte	0xa6
	.4byte	0x7c3
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0xb
	.byte	0xa7
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0xb
	.byte	0xa8
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0xb
	.byte	0xa9
	.4byte	0x79a
	.uleb128 0xf
	.4byte	.LASF125
	.byte	0x74
	.byte	0xb
	.byte	0xab
	.4byte	0x867
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0xb
	.byte	0xac
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0xb
	.byte	0xad
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0xb
	.byte	0xae
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0xb
	.byte	0xaf
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0xb
	.byte	0xb0
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0xb
	.byte	0xb1
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF132
	.byte	0xb
	.byte	0xb2
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0xb
	.byte	0xb3
	.4byte	0x867
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.4byte	.LASF134
	.byte	0xb
	.byte	0xb4
	.4byte	0x877
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0xb
	.byte	0xb5
	.4byte	0x887
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.byte	0x0
	.uleb128 0x12
	.4byte	0x10a
	.4byte	0x877
	.uleb128 0x15
	.4byte	0x107
	.byte	0xf
	.byte	0x0
	.uleb128 0x12
	.4byte	0x7c3
	.4byte	0x887
	.uleb128 0x15
	.4byte	0x107
	.byte	0x8
	.byte	0x0
	.uleb128 0x12
	.4byte	0xa9
	.4byte	0x896
	.uleb128 0x1b
	.4byte	0x107
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0xb
	.byte	0xb6
	.4byte	0x7ce
	.uleb128 0x1c
	.2byte	0x248
	.byte	0xb
	.byte	0xc0
	.4byte	0xc8f
	.uleb128 0x14
	.ascii	"cpu\000"
	.byte	0xb
	.byte	0xc1
	.4byte	0x59d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF136
	.byte	0xb
	.byte	0xc4
	.4byte	0xc8f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x10
	.4byte	.LASF137
	.byte	0xb
	.byte	0xc7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x10
	.4byte	.LASF138
	.byte	0xb
	.byte	0xc8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x10
	.4byte	.LASF139
	.byte	0xb
	.byte	0xcb
	.4byte	0xc9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x10
	.4byte	.LASF140
	.byte	0xb
	.byte	0xcc
	.4byte	0x703
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x10
	.4byte	.LASF141
	.byte	0xb
	.byte	0xcd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x10
	.4byte	.LASF142
	.byte	0xb
	.byte	0xd0
	.4byte	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x10
	.4byte	.LASF143
	.byte	0xb
	.byte	0xd1
	.4byte	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x10
	.4byte	.LASF144
	.byte	0xb
	.byte	0xd2
	.4byte	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x10
	.4byte	.LASF145
	.byte	0xb
	.byte	0xd3
	.4byte	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x10
	.4byte	.LASF146
	.byte	0xb
	.byte	0xd4
	.4byte	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x10
	.4byte	.LASF147
	.byte	0xb
	.byte	0xd5
	.4byte	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x10
	.4byte	.LASF148
	.byte	0xb
	.byte	0xd6
	.4byte	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0xb
	.byte	0xd7
	.4byte	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x10
	.4byte	.LASF150
	.byte	0xb
	.byte	0xd8
	.4byte	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x10
	.4byte	.LASF151
	.byte	0xb
	.byte	0xda
	.4byte	0xcaf
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0xb
	.byte	0xdd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x10
	.4byte	.LASF153
	.byte	0xb
	.byte	0xde
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x10
	.4byte	.LASF154
	.byte	0xb
	.byte	0xdf
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x10
	.4byte	.LASF155
	.byte	0xb
	.byte	0xe0
	.4byte	0xcc0
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x10
	.4byte	.LASF156
	.byte	0xb
	.byte	0xe1
	.4byte	0xcc0
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0xb
	.byte	0xe2
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x10
	.4byte	.LASF158
	.byte	0xb
	.byte	0xe5
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x10
	.4byte	.LASF159
	.byte	0xb
	.byte	0xe6
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x10
	.4byte	.LASF160
	.byte	0xb
	.byte	0xe7
	.4byte	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x10
	.4byte	.LASF161
	.byte	0xb
	.byte	0xe8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0xb
	.byte	0xea
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x10
	.4byte	.LASF163
	.byte	0xb
	.byte	0xeb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x10
	.4byte	.LASF164
	.byte	0xb
	.byte	0xec
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x10
	.4byte	.LASF165
	.byte	0xb
	.byte	0xed
	.4byte	0xccb
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x10
	.4byte	.LASF166
	.byte	0xb
	.byte	0xee
	.4byte	0x2e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x10
	.4byte	.LASF167
	.byte	0xb
	.byte	0xf1
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x10
	.4byte	.LASF168
	.byte	0xb
	.byte	0xf2
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x10
	.4byte	.LASF169
	.byte	0xb
	.byte	0xf3
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x10
	.4byte	.LASF170
	.byte	0xb
	.byte	0xf4
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x10
	.4byte	.LASF171
	.byte	0xb
	.byte	0xf7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x10
	.4byte	.LASF172
	.byte	0xb
	.byte	0xf8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x10
	.4byte	.LASF173
	.byte	0xb
	.byte	0xf9
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x10
	.4byte	.LASF174
	.byte	0xb
	.byte	0xfa
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x10
	.4byte	.LASF175
	.byte	0xb
	.byte	0xfb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x10
	.4byte	.LASF176
	.byte	0xb
	.byte	0xfc
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x10
	.4byte	.LASF177
	.byte	0xb
	.byte	0xfd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.4byte	.LASF178
	.byte	0xb
	.2byte	0x102
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xd
	.4byte	.LASF129
	.byte	0xb
	.2byte	0x103
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xd
	.4byte	.LASF179
	.byte	0xb
	.2byte	0x106
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xd
	.4byte	.LASF180
	.byte	0xb
	.2byte	0x108
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xd
	.4byte	.LASF181
	.byte	0xb
	.2byte	0x109
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.4byte	.LASF182
	.byte	0xb
	.2byte	0x10a
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.4byte	.LASF183
	.byte	0xb
	.2byte	0x10b
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.4byte	.LASF184
	.byte	0xb
	.2byte	0x10d
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.4byte	.LASF185
	.byte	0xb
	.2byte	0x10e
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.4byte	.LASF186
	.byte	0xb
	.2byte	0x10f
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.4byte	.LASF187
	.byte	0xb
	.2byte	0x110
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.4byte	.LASF188
	.byte	0xb
	.2byte	0x111
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xd
	.4byte	.LASF189
	.byte	0xb
	.2byte	0x114
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xd
	.4byte	.LASF190
	.byte	0xb
	.2byte	0x115
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xd
	.4byte	.LASF191
	.byte	0xb
	.2byte	0x116
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xd
	.4byte	.LASF192
	.byte	0xb
	.2byte	0x117
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xd
	.4byte	.LASF193
	.byte	0xb
	.2byte	0x118
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xd
	.4byte	.LASF194
	.byte	0xb
	.2byte	0x11b
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xd
	.4byte	.LASF195
	.byte	0xb
	.2byte	0x11c
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xd
	.4byte	.LASF196
	.byte	0xb
	.2byte	0x11f
	.4byte	0xcdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xd
	.4byte	.LASF197
	.byte	0xb
	.2byte	0x122
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xd
	.4byte	.LASF198
	.byte	0xb
	.2byte	0x123
	.4byte	0xceb
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0x12
	.4byte	0x118
	.4byte	0xc9f
	.uleb128 0x15
	.4byte	0x107
	.byte	0x8
	.byte	0x0
	.uleb128 0x12
	.4byte	0x6c1
	.4byte	0xcaf
	.uleb128 0x15
	.4byte	0x107
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xcb5
	.uleb128 0x8
	.byte	0x4
	.4byte	0xcbb
	.uleb128 0x1d
	.4byte	0xa9
	.uleb128 0x8
	.byte	0x4
	.4byte	0xcc6
	.uleb128 0x1d
	.4byte	0xbe
	.uleb128 0x12
	.4byte	0xbe
	.4byte	0xcdb
	.uleb128 0x15
	.4byte	0x107
	.byte	0xf
	.byte	0x0
	.uleb128 0x12
	.4byte	0xa9
	.4byte	0xceb
	.uleb128 0x15
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x12
	.4byte	0xa9
	.4byte	0xcfa
	.uleb128 0x1b
	.4byte	0x107
	.byte	0x0
	.uleb128 0x1e
	.2byte	0x400
	.byte	0xb
	.byte	0xbf
	.4byte	0xd15
	.uleb128 0x1f
	.4byte	0x8a1
	.uleb128 0x20
	.4byte	.LASF248
	.byte	0xb
	.2byte	0x125
	.4byte	0xd15
	.byte	0x0
	.uleb128 0x12
	.4byte	0xbe
	.4byte	0xd25
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF199
	.2byte	0x2000
	.byte	0xb
	.byte	0xbe
	.4byte	0xdab
	.uleb128 0x22
	.4byte	0xcfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF200
	.byte	0xb
	.2byte	0x128
	.4byte	0xdab
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xd
	.4byte	.LASF201
	.byte	0xb
	.2byte	0x129
	.4byte	0xdbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xd
	.4byte	.LASF202
	.byte	0xb
	.2byte	0x12a
	.4byte	0xdcb
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xd
	.4byte	.LASF203
	.byte	0xb
	.2byte	0x12b
	.4byte	0xddb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xd
	.4byte	.LASF204
	.byte	0xb
	.2byte	0x12c
	.4byte	0xdeb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xd
	.4byte	.LASF205
	.byte	0xb
	.2byte	0x12d
	.4byte	0xdfb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xd
	.4byte	.LASF206
	.byte	0xb
	.2byte	0x12e
	.4byte	0xe0b
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0x12
	.4byte	0x5a8
	.4byte	0xdbb
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x5c9
	.4byte	0xdcb
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x5ea
	.4byte	0xddb
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x60b
	.4byte	0xdeb
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x62d
	.4byte	0xdfb
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x64f
	.4byte	0xe0b
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x671
	.4byte	0xe1b
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF207
	.byte	0xb
	.2byte	0x12f
	.4byte	0xd25
	.uleb128 0x23
	.4byte	.LASF208
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.4byte	0xa9
	.byte	0x3
	.4byte	0xe44
	.uleb128 0x24
	.4byte	.LASF94
	.byte	0x1
	.byte	0xe
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x25
	.4byte	.LASF249
	.byte	0x1
	.byte	0x8
	.byte	0x1
	.byte	0x3
	.4byte	0xe68
	.uleb128 0x24
	.4byte	.LASF94
	.byte	0x1
	.byte	0x8
	.4byte	0xbe
	.uleb128 0x24
	.4byte	.LASF33
	.byte	0x1
	.byte	0x8
	.4byte	0xa9
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF250
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.4byte	0xe9d
	.uleb128 0x27
	.ascii	"b1\000"
	.byte	0x1
	.byte	0x22
	.4byte	0xa9
	.uleb128 0x27
	.ascii	"b2\000"
	.byte	0x1
	.byte	0x22
	.4byte	0xa9
	.uleb128 0x27
	.ascii	"b3\000"
	.byte	0x1
	.byte	0x22
	.4byte	0xa9
	.uleb128 0x27
	.ascii	"b4\000"
	.byte	0x1
	.byte	0x22
	.4byte	0xa9
	.byte	0x0
	.uleb128 0x28
	.4byte	.LASF209
	.byte	0x1
	.byte	0x13
	.4byte	.LFB168
	.4byte	.LFE168
	.4byte	.LLST0
	.4byte	0xf77
	.uleb128 0x29
	.ascii	"b1\000"
	.byte	0x1
	.byte	0x15
	.4byte	0xa9
	.4byte	.LLST1
	.uleb128 0x29
	.ascii	"b2\000"
	.byte	0x1
	.byte	0x15
	.4byte	0xa9
	.4byte	.LLST2
	.uleb128 0x2a
	.4byte	0xe27
	.4byte	.LBB56
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x17
	.4byte	0xee9
	.uleb128 0x2b
	.4byte	0xe38
	.byte	0x0
	.uleb128 0x2a
	.4byte	0xe27
	.4byte	.LBB60
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x18
	.4byte	0xf02
	.uleb128 0x2b
	.4byte	0xe38
	.byte	0x0
	.uleb128 0x2a
	.4byte	0xe44
	.4byte	.LBB66
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x1a
	.4byte	0xf20
	.uleb128 0x2b
	.4byte	0xe5c
	.uleb128 0x2b
	.4byte	0xe51
	.byte	0x0
	.uleb128 0x2a
	.4byte	0xe44
	.4byte	.LBB69
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x1b
	.4byte	0xf3e
	.uleb128 0x2b
	.4byte	0xe5c
	.uleb128 0x2b
	.4byte	0xe51
	.byte	0x0
	.uleb128 0x2a
	.4byte	0xe44
	.4byte	.LBB75
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x1c
	.4byte	0xf5c
	.uleb128 0x2b
	.4byte	0xe5c
	.uleb128 0x2b
	.4byte	0xe51
	.byte	0x0
	.uleb128 0x2c
	.4byte	0xe44
	.4byte	.LBB80
	.4byte	.LBE80
	.byte	0x1
	.byte	0x1d
	.uleb128 0x2b
	.4byte	0xe5c
	.uleb128 0x2b
	.4byte	0xe51
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x107
	.byte	0x1
	.4byte	.LFB178
	.4byte	.LFE178
	.4byte	.LLST3
	.4byte	0xfc5
	.uleb128 0x2e
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x107
	.4byte	0xbe
	.4byte	.LLST4
	.uleb128 0x2f
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x107
	.4byte	0xb3
	.byte	0x1
	.byte	0x51
	.uleb128 0x30
	.4byte	.LBB82
	.4byte	.LBE82
	.uleb128 0x31
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x10b
	.4byte	0x2e6
	.4byte	.LLST5
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x120
	.byte	0x1
	.4byte	.LFB179
	.4byte	.LFE179
	.4byte	.LLST6
	.4byte	0xffb
	.uleb128 0x2e
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x120
	.4byte	0xbe
	.4byte	.LLST7
	.uleb128 0x2e
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x120
	.4byte	0xa9
	.4byte	.LLST8
	.byte	0x0
	.uleb128 0x32
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x12b
	.byte	0x1
	.4byte	0xb3
	.4byte	.LFB180
	.4byte	.LFE180
	.4byte	.LLST9
	.4byte	0x1037
	.uleb128 0x2e
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x12b
	.4byte	0xbe
	.4byte	.LLST10
	.uleb128 0x33
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x12d
	.4byte	0xb3
	.4byte	.LLST11
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x140
	.byte	0x1
	.4byte	.LFB181
	.4byte	.LFE181
	.4byte	.LLST12
	.4byte	0x106b
	.uleb128 0x2e
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x140
	.4byte	0xbe
	.4byte	.LLST13
	.uleb128 0x2f
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x140
	.4byte	0xb3
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x161
	.4byte	.LFB182
	.4byte	.LFE182
	.4byte	.LLST14
	.4byte	0x1093
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x163
	.4byte	0xbe
	.4byte	.LLST15
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF215
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.4byte	0xb3
	.4byte	.LFB177
	.4byte	.LFE177
	.4byte	.LLST16
	.4byte	0x10e1
	.uleb128 0x36
	.ascii	"a\000"
	.byte	0x1
	.byte	0xed
	.4byte	0xbe
	.4byte	.LLST17
	.uleb128 0x30
	.4byte	.LBB83
	.4byte	.LBE83
	.uleb128 0x29
	.ascii	"old\000"
	.byte	0x1
	.byte	0xf3
	.4byte	0xb3
	.4byte	.LLST18
	.uleb128 0x37
	.4byte	.LASF216
	.byte	0x1
	.byte	0xf4
	.4byte	0xb3
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF217
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.4byte	0xb3
	.4byte	.LFB172
	.4byte	.LFE172
	.4byte	.LLST19
	.4byte	0x110b
	.uleb128 0x36
	.ascii	"a\000"
	.byte	0x1
	.byte	0x4a
	.4byte	0xbe
	.4byte	.LLST20
	.byte	0x0
	.uleb128 0x28
	.4byte	.LASF218
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB170
	.4byte	.LFE170
	.4byte	.LLST21
	.4byte	0x1132
	.uleb128 0x38
	.4byte	.LASF219
	.byte	0x1
	.byte	0x2f
	.4byte	0xbe
	.4byte	.LLST22
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF220
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.4byte	.LFB174
	.4byte	.LFE174
	.4byte	.LLST23
	.4byte	0x1258
	.uleb128 0x36
	.ascii	"a\000"
	.byte	0x1
	.byte	0x69
	.4byte	0xbe
	.4byte	.LLST24
	.uleb128 0x36
	.ascii	"d\000"
	.byte	0x1
	.byte	0x69
	.4byte	0xb3
	.4byte	.LLST25
	.uleb128 0x30
	.4byte	.LBB84
	.4byte	.LBE84
	.uleb128 0x38
	.4byte	.LASF94
	.byte	0x1
	.byte	0x6d
	.4byte	0xcc6
	.4byte	.LLST26
	.uleb128 0x2c
	.4byte	0xe68
	.4byte	.LBB85
	.4byte	.LBE85
	.byte	0x1
	.byte	0x70
	.uleb128 0x30
	.4byte	.LBB86
	.4byte	.LBE86
	.uleb128 0x3a
	.4byte	0xe74
	.4byte	.LLST27
	.uleb128 0x3a
	.4byte	0xe7e
	.4byte	.LLST28
	.uleb128 0x3a
	.4byte	0xe88
	.4byte	.LLST29
	.uleb128 0x3a
	.4byte	0xe92
	.4byte	.LLST30
	.uleb128 0x3b
	.4byte	0xe27
	.4byte	.LBB87
	.4byte	.LBE87
	.byte	0x1
	.byte	0x24
	.4byte	0x11d1
	.uleb128 0x2b
	.4byte	0xe38
	.byte	0x0
	.uleb128 0x3b
	.4byte	0xe27
	.4byte	.LBB89
	.4byte	.LBE89
	.byte	0x1
	.byte	0x25
	.4byte	0x11ea
	.uleb128 0x2b
	.4byte	0xe38
	.byte	0x0
	.uleb128 0x3b
	.4byte	0xe27
	.4byte	.LBB91
	.4byte	.LBE91
	.byte	0x1
	.byte	0x26
	.4byte	0x1203
	.uleb128 0x2b
	.4byte	0xe38
	.byte	0x0
	.uleb128 0x2a
	.4byte	0xe44
	.4byte	.LBB93
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0x29
	.4byte	0x1221
	.uleb128 0x2b
	.4byte	0xe5c
	.uleb128 0x2b
	.4byte	0xe51
	.byte	0x0
	.uleb128 0x3b
	.4byte	0xe27
	.4byte	.LBB97
	.4byte	.LBE97
	.byte	0x1
	.byte	0x27
	.4byte	0x123a
	.uleb128 0x2b
	.4byte	0xe38
	.byte	0x0
	.uleb128 0x3c
	.4byte	0xe44
	.4byte	.LBB100
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0x2a
	.uleb128 0x2b
	.4byte	0xe51
	.uleb128 0x2b
	.4byte	0xe5c
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF221
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.4byte	.LFB173
	.4byte	.LFE173
	.4byte	.LLST31
	.4byte	0x137d
	.uleb128 0x36
	.ascii	"a\000"
	.byte	0x1
	.byte	0x5b
	.4byte	0xbe
	.4byte	.LLST32
	.uleb128 0x36
	.ascii	"d\000"
	.byte	0x1
	.byte	0x5b
	.4byte	0xa9
	.4byte	.LLST33
	.uleb128 0x30
	.4byte	.LBB105
	.4byte	.LBE105
	.uleb128 0x38
	.4byte	.LASF94
	.byte	0x1
	.byte	0x5f
	.4byte	0xcc6
	.4byte	.LLST34
	.uleb128 0x2c
	.4byte	0xe68
	.4byte	.LBB106
	.4byte	.LBE106
	.byte	0x1
	.byte	0x62
	.uleb128 0x30
	.4byte	.LBB107
	.4byte	.LBE107
	.uleb128 0x3a
	.4byte	0xe74
	.4byte	.LLST35
	.uleb128 0x3a
	.4byte	0xe7e
	.4byte	.LLST36
	.uleb128 0x3d
	.4byte	0xe88
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x3a
	.4byte	0xe92
	.4byte	.LLST37
	.uleb128 0x3b
	.4byte	0xe27
	.4byte	.LBB108
	.4byte	.LBE108
	.byte	0x1
	.byte	0x24
	.4byte	0x12f6
	.uleb128 0x2b
	.4byte	0xe38
	.byte	0x0
	.uleb128 0x3b
	.4byte	0xe27
	.4byte	.LBB110
	.4byte	.LBE110
	.byte	0x1
	.byte	0x25
	.4byte	0x130f
	.uleb128 0x2b
	.4byte	0xe38
	.byte	0x0
	.uleb128 0x2a
	.4byte	0xe27
	.4byte	.LBB112
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0x26
	.4byte	0x1328
	.uleb128 0x2b
	.4byte	0xe38
	.byte	0x0
	.uleb128 0x2a
	.4byte	0xe44
	.4byte	.LBB115
	.4byte	.Ldebug_ranges0+0xd8
	.byte	0x1
	.byte	0x29
	.4byte	0x1346
	.uleb128 0x2b
	.4byte	0xe5c
	.uleb128 0x2b
	.4byte	0xe51
	.byte	0x0
	.uleb128 0x2a
	.4byte	0xe27
	.4byte	.LBB122
	.4byte	.Ldebug_ranges0+0x100
	.byte	0x1
	.byte	0x27
	.4byte	0x135f
	.uleb128 0x2b
	.4byte	0xe38
	.byte	0x0
	.uleb128 0x2c
	.4byte	0xe44
	.4byte	.LBB128
	.4byte	.LBE128
	.byte	0x1
	.byte	0x2a
	.uleb128 0x2b
	.4byte	0xe51
	.uleb128 0x2b
	.4byte	0xe5c
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF222
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.4byte	.LFB175
	.4byte	.LFE175
	.4byte	.LLST38
	.4byte	0x13b0
	.uleb128 0x36
	.ascii	"a\000"
	.byte	0x1
	.byte	0xd6
	.4byte	0xbe
	.4byte	.LLST39
	.uleb128 0x36
	.ascii	"d\000"
	.byte	0x1
	.byte	0xd6
	.4byte	0xb3
	.4byte	.LLST40
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF223
	.byte	0x1
	.byte	0xe7
	.byte	0x1
	.4byte	.LFB176
	.4byte	.LFE176
	.4byte	.LLST41
	.4byte	0x13e3
	.uleb128 0x36
	.ascii	"a\000"
	.byte	0x1
	.byte	0xe7
	.4byte	0xbe
	.4byte	.LLST42
	.uleb128 0x36
	.ascii	"d\000"
	.byte	0x1
	.byte	0xe7
	.4byte	0xa9
	.4byte	.LLST43
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF224
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.4byte	0xa9
	.4byte	.LFB171
	.4byte	.LFE171
	.4byte	.LLST44
	.4byte	0x140d
	.uleb128 0x36
	.ascii	"a\000"
	.byte	0x1
	.byte	0x41
	.4byte	0xbe
	.4byte	.LLST45
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF225
	.byte	0x6
	.2byte	0x12e
	.4byte	0x1419
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2da
	.uleb128 0x12
	.4byte	0xb3
	.4byte	0x1430
	.uleb128 0x13
	.4byte	0x107
	.2byte	0xfff
	.byte	0x0
	.uleb128 0x3f
	.4byte	.LASF226
	.byte	0x1
	.byte	0x6
	.4byte	0x141f
	.byte	0x5
	.byte	0x3
	.4byte	g_pvcRam
	.uleb128 0x12
	.4byte	0xbe
	.4byte	0x1451
	.uleb128 0x15
	.4byte	0x107
	.byte	0x3f
	.byte	0x0
	.uleb128 0x3f
	.4byte	.LASF227
	.byte	0x1
	.byte	0x7e
	.4byte	0x1462
	.byte	0x5
	.byte	0x3
	.4byte	g_kof99Bankoffset
	.uleb128 0x1d
	.4byte	0x1441
	.uleb128 0x12
	.4byte	0xbe
	.4byte	0x1477
	.uleb128 0x15
	.4byte	0x107
	.byte	0x5
	.byte	0x0
	.uleb128 0x3f
	.4byte	.LASF228
	.byte	0x1
	.byte	0x8b
	.4byte	0x1488
	.byte	0x5
	.byte	0x3
	.4byte	g_kof99Bankbit
	.uleb128 0x1d
	.4byte	0x1467
	.uleb128 0x3f
	.4byte	.LASF229
	.byte	0x1
	.byte	0x8d
	.4byte	0x149e
	.byte	0x5
	.byte	0x3
	.4byte	g_mslug3Bankoffset
	.uleb128 0x1d
	.4byte	0x1441
	.uleb128 0x3f
	.4byte	.LASF230
	.byte	0x1
	.byte	0x9d
	.4byte	0x14b4
	.byte	0x5
	.byte	0x3
	.4byte	g_mslug3Bankbit
	.uleb128 0x1d
	.4byte	0x1467
	.uleb128 0x3f
	.4byte	.LASF231
	.byte	0x1
	.byte	0x9f
	.4byte	0x14ca
	.byte	0x5
	.byte	0x3
	.4byte	g_kof2000Bankoffset
	.uleb128 0x1d
	.4byte	0x1441
	.uleb128 0x3f
	.4byte	.LASF232
	.byte	0x1
	.byte	0xab
	.4byte	0x14e0
	.byte	0x5
	.byte	0x3
	.4byte	g_kof2000Bankbit
	.uleb128 0x1d
	.4byte	0x1467
	.uleb128 0x3f
	.4byte	.LASF233
	.byte	0x1
	.byte	0xae
	.4byte	0x14f6
	.byte	0x5
	.byte	0x3
	.4byte	g_garouBankoffset
	.uleb128 0x1d
	.4byte	0x1441
	.uleb128 0x3f
	.4byte	.LASF234
	.byte	0x1
	.byte	0xbf
	.4byte	0x150c
	.byte	0x5
	.byte	0x3
	.4byte	g_garouBankbit
	.uleb128 0x1d
	.4byte	0x1467
	.uleb128 0x3f
	.4byte	.LASF235
	.byte	0x1
	.byte	0xc1
	.4byte	0x1522
	.byte	0x5
	.byte	0x3
	.4byte	g_garouoBankoffset
	.uleb128 0x1d
	.4byte	0x1441
	.uleb128 0x3f
	.4byte	.LASF236
	.byte	0x1
	.byte	0xd4
	.4byte	0x1538
	.byte	0x5
	.byte	0x3
	.4byte	g_garouoBankbit
	.uleb128 0x1d
	.4byte	0x1467
	.uleb128 0x40
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x129
	.4byte	0xbe
	.byte	0x5
	.byte	0x3
	.4byte	g_fatFury2Prot
	.uleb128 0x41
	.4byte	.LASF238
	.byte	0xc
	.byte	0x56
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.4byte	.LASF239
	.byte	0xc
	.byte	0x57
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0x1579
	.4byte	0x1579
	.uleb128 0x15
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x157f
	.uleb128 0x42
	.4byte	0x57
	.uleb128 0x43
	.4byte	.LASF240
	.byte	0x4
	.2byte	0x19c
	.4byte	0x1569
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0x1c5
	.4byte	0x15a2
	.uleb128 0x15
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x43
	.4byte	.LASF241
	.byte	0x4
	.2byte	0x19f
	.4byte	0x1592
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF242
	.byte	0x6
	.2byte	0x12b
	.4byte	0x2da
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF243
	.byte	0xb
	.2byte	0x149
	.4byte	0x15cd
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe1b
	.uleb128 0x43
	.4byte	.LASF244
	.byte	0xb
	.2byte	0x14d
	.4byte	0xe1b
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF245
	.byte	0xb
	.2byte	0x14e
	.4byte	0x896
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
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x26
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
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
	.4byte	0x31
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x15f0
	.4byte	0x106b
	.ascii	"neoInstallProtection\000"
	.4byte	0x15be
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
	.4byte	.LBB56-.Ltext0
	.4byte	.LBE56-.Ltext0
	.4byte	.LBB65-.Ltext0
	.4byte	.LBE65-.Ltext0
	.4byte	.LBB63-.Ltext0
	.4byte	.LBE63-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	.LBB64-.Ltext0
	.4byte	.LBE64-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB66-.Ltext0
	.4byte	.LBE66-.Ltext0
	.4byte	.LBB73-.Ltext0
	.4byte	.LBE73-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB69-.Ltext0
	.4byte	.LBE69-.Ltext0
	.4byte	.LBB78-.Ltext0
	.4byte	.LBE78-.Ltext0
	.4byte	.LBB74-.Ltext0
	.4byte	.LBE74-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	.LBB79-.Ltext0
	.4byte	.LBE79-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB93-.Ltext0
	.4byte	.LBE93-.Ltext0
	.4byte	.LBB103-.Ltext0
	.4byte	.LBE103-.Ltext0
	.4byte	.LBB99-.Ltext0
	.4byte	.LBE99-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB100-.Ltext0
	.4byte	.LBE100-.Ltext0
	.4byte	.LBB104-.Ltext0
	.4byte	.LBE104-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB112-.Ltext0
	.4byte	.LBE112-.Ltext0
	.4byte	.LBB120-.Ltext0
	.4byte	.LBE120-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB115-.Ltext0
	.4byte	.LBE115-.Ltext0
	.4byte	.LBB127-.Ltext0
	.4byte	.LBE127-.Ltext0
	.4byte	.LBB125-.Ltext0
	.4byte	.LBE125-.Ltext0
	.4byte	.LBB121-.Ltext0
	.4byte	.LBE121-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB122-.Ltext0
	.4byte	.LBE122-.Ltext0
	.4byte	.LBB126-.Ltext0
	.4byte	.LBE126-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF42:
	.ascii	"clearColor\000"
.LASF158:
	.ascii	"scanline\000"
.LASF71:
	.ascii	"checkpc\000"
.LASF212:
	.ascii	"neoKof98Write8\000"
.LASF75:
	.ascii	"write8\000"
.LASF184:
	.ascii	"ctrl1Reg\000"
.LASF164:
	.ascii	"spriteMask\000"
.LASF186:
	.ascii	"ctrl3Reg\000"
.LASF245:
	.ascii	"g_header\000"
.LASF222:
	.ascii	"neoWriteRomBankSma16\000"
.LASF80:
	.ascii	"fetch32\000"
.LASF225:
	.ascii	"glGlob\000"
.LASF172:
	.ascii	"cpuClocksPerScanline\000"
.LASF60:
	.ascii	"OBJSIZE_64\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF205:
	.ascii	"cpuWrite32Table\000"
.LASF229:
	.ascii	"g_mslug3Bankoffset\000"
.LASF204:
	.ascii	"cpuWrite16Table\000"
.LASF12:
	.ascii	"uint32\000"
.LASF69:
	.ascii	"cycles\000"
.LASF37:
	.ascii	"GL_MODELVIEW\000"
.LASF38:
	.ascii	"GL_TEXTURE\000"
.LASF193:
	.ascii	"paletteRamLatch\000"
.LASF29:
	.ascii	"type\000"
.LASF198:
	.ascii	"varEnd\000"
.LASF89:
	.ascii	"TWrite8Func\000"
.LASF72:
	.ascii	"read8\000"
.LASF236:
	.ascii	"g_garouoBankbit\000"
.LASF61:
	.ascii	"OBJCOLOR_16\000"
.LASF76:
	.ascii	"write16\000"
.LASF101:
	.ascii	"TNeoADPCMBStream\000"
.LASF86:
	.ascii	"TRead8Func\000"
.LASF48:
	.ascii	"nameCount\000"
.LASF243:
	.ascii	"g_neo\000"
.LASF202:
	.ascii	"cpuRead32Table\000"
.LASF39:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF132:
	.ascii	"sectionCount\000"
.LASF19:
	.ascii	"long int\000"
.LASF131:
	.ascii	"audio2Offset\000"
.LASF78:
	.ascii	"fetch8\000"
.LASF110:
	.ascii	"NEOPROT_FATFURY2\000"
.LASF196:
	.ascii	"keyGrid\000"
.LASF77:
	.ascii	"write32\000"
.LASF50:
	.ascii	"OBJMODE_BLENDED\000"
.LASF199:
	.ascii	"_TNeoContext\000"
.LASF81:
	.ascii	"IrqCallback\000"
.LASF92:
	.ascii	"TCheckPcFunc\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF177:
	.ascii	"romBankAddress\000"
.LASF95:
	.ascii	"step\000"
.LASF141:
	.ascii	"adpcmActive\000"
.LASF119:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF203:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF169:
	.ascii	"tileScaleX\000"
.LASF170:
	.ascii	"tileScaleY\000"
.LASF174:
	.ascii	"watchdogCounter\000"
.LASF121:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF224:
	.ascii	"neoReadPvc8\000"
.LASF161:
	.ascii	"vramBaseMask\000"
.LASF137:
	.ascii	"spriteCount\000"
.LASF231:
	.ascii	"g_kof2000Bankoffset\000"
.LASF83:
	.ascii	"UnrecognizedCallback\000"
.LASF151:
	.ascii	"bankTable\000"
.LASF102:
	.ascii	"NEOPROT_NONE\000"
.LASF18:
	.ascii	"char\000"
.LASF31:
	.ascii	"BgState\000"
.LASF64:
	.ascii	"unused\000"
.LASF190:
	.ascii	"screenDarkLatch\000"
.LASF213:
	.ascii	"neoFatFury2Write16\000"
.LASF66:
	.ascii	"prev_pc\000"
.LASF97:
	.ascii	"_TNeoADPCMBStream\000"
.LASF240:
	.ascii	"bgControl\000"
.LASF220:
	.ascii	"neoWritePvc16\000"
.LASF228:
	.ascii	"g_kof99Bankbit\000"
.LASF210:
	.ascii	"mem16\000"
.LASF114:
	.ascii	"NEOROM_BIOS\000"
.LASF65:
	.ascii	"flags\000"
.LASF163:
	.ascii	"autoAnimationCounter\000"
.LASF43:
	.ascii	"textures\000"
.LASF90:
	.ascii	"TWrite16Func\000"
.LASF242:
	.ascii	"glGlobalData\000"
.LASF36:
	.ascii	"GL_POSITION\000"
.LASF171:
	.ascii	"cpuClockDivide\000"
.LASF200:
	.ascii	"cpuRead8Table\000"
.LASF159:
	.ascii	"frameCount\000"
.LASF124:
	.ascii	"TNeoRomEntry\000"
.LASF248:
	.ascii	"fill\000"
.LASF56:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF15:
	.ascii	"false\000"
.LASF106:
	.ascii	"NEOPROT_GAROUO\000"
.LASF227:
	.ascii	"g_kof99Bankoffset\000"
.LASF87:
	.ascii	"TRead16Func\000"
.LASF134:
	.ascii	"romEntry\000"
.LASF51:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF221:
	.ascii	"neoWritePvc8\000"
.LASF145:
	.ascii	"pRam\000"
.LASF32:
	.ascii	"DynamicArray\000"
.LASF237:
	.ascii	"g_fatFury2Prot\000"
.LASF20:
	.ascii	"long unsigned int\000"
.LASF118:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF49:
	.ascii	"OBJMODE_NORMAL\000"
.LASF107:
	.ascii	"NEOPROT_GAROU\000"
.LASF54:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF201:
	.ascii	"cpuRead16Table\000"
.LASF182:
	.ascii	"displayControlMask\000"
.LASF85:
	.ascii	"TCycloneContext\000"
.LASF115:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF216:
	.ascii	"newbit\000"
.LASF194:
	.ascii	"active\000"
.LASF166:
	.ascii	"pTileBuffer\000"
.LASF63:
	.ascii	"Cyclone\000"
.LASF144:
	.ascii	"pBios\000"
.LASF21:
	.ascii	"angle\000"
.LASF189:
	.ascii	"irqVectorLatch\000"
.LASF165:
	.ascii	"paletteDirty\000"
.LASF41:
	.ascii	"matrixMode\000"
.LASF206:
	.ascii	"cpuCheckPcTable\000"
.LASF46:
	.ascii	"nextBlock\000"
.LASF157:
	.ascii	"smaRand\000"
.LASF93:
	.ascii	"_TNeoADPCMStream\000"
.LASF91:
	.ascii	"TWrite32Func\000"
.LASF246:
	.ascii	"GNU C 4.4.3\000"
.LASF10:
	.ascii	"long long int\000"
.LASF35:
	.ascii	"GL_PROJECTION\000"
.LASF188:
	.ascii	"coinReg\000"
.LASF122:
	.ascii	"NEOROM_COUNT\000"
.LASF98:
	.ascii	"initOffset\000"
.LASF241:
	.ascii	"bgState\000"
.LASF26:
	.ascii	"scrollX\000"
.LASF27:
	.ascii	"scrollY\000"
.LASF185:
	.ascii	"ctrl2Reg\000"
.LASF14:
	.ascii	"double\000"
.LASF84:
	.ascii	"internal\000"
.LASF187:
	.ascii	"ctrl4Reg\000"
.LASF226:
	.ascii	"g_pvcRam\000"
.LASF152:
	.ascii	"smaAddr0\000"
.LASF153:
	.ascii	"smaAddr1\000"
.LASF162:
	.ascii	"displayCounter\000"
.LASF100:
	.ascii	"frequency\000"
.LASF13:
	.ascii	"float\000"
.LASF147:
	.ascii	"pCard\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF55:
	.ascii	"OBJSHAPE_TALL\000"
.LASF181:
	.ascii	"displayControl\000"
.LASF208:
	.ascii	"pvc_r8\000"
.LASF160:
	.ascii	"pVramBase\000"
.LASF128:
	.ascii	"protection\000"
.LASF62:
	.ascii	"OBJCOLOR_256\000"
.LASF94:
	.ascii	"offset\000"
.LASF116:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF142:
	.ascii	"pRom0\000"
.LASF143:
	.ascii	"pRom1\000"
.LASF233:
	.ascii	"g_garouBankoffset\000"
.LASF167:
	.ascii	"tileOffsetX\000"
.LASF168:
	.ascii	"tileOffsetY\000"
.LASF105:
	.ascii	"NEOPROT_MSLUG3\000"
.LASF17:
	.ascii	"bool\000"
.LASF113:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF45:
	.ascii	"activeTexture\000"
.LASF179:
	.ascii	"vramOffset\000"
.LASF73:
	.ascii	"read16\000"
.LASF112:
	.ascii	"_TNeoRomRegion\000"
.LASF192:
	.ascii	"sramProtectLatch\000"
.LASF244:
	.ascii	"g_neoContext\000"
.LASF207:
	.ascii	"TNeoContext\000"
.LASF70:
	.ascii	"membase\000"
.LASF99:
	.ascii	"freqCounter\000"
.LASF52:
	.ascii	"OBJMODE_BITMAP\000"
.LASF214:
	.ascii	"neoFatFury2Read16\000"
.LASF28:
	.ascii	"size\000"
.LASF150:
	.ascii	"pPalette\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF235:
	.ascii	"g_garouoBankoffset\000"
.LASF74:
	.ascii	"read32\000"
.LASF215:
	.ascii	"neoReadSma16\000"
.LASF109:
	.ascii	"NEOPROT_KOF98\000"
.LASF108:
	.ascii	"NEOPROT_KOF99\000"
.LASF103:
	.ascii	"NEOPROT_PVC\000"
.LASF195:
	.ascii	"debug\000"
.LASF120:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF217:
	.ascii	"neoReadPvc16\000"
.LASF34:
	.ascii	"cur_size\000"
.LASF127:
	.ascii	"version\000"
.LASF232:
	.ascii	"g_kof2000Bankbit\000"
.LASF135:
	.ascii	"TNeoRomHeader\000"
.LASF230:
	.ascii	"g_mslug3Bankbit\000"
.LASF140:
	.ascii	"adpcmb\000"
.LASF149:
	.ascii	"pSpriteRam\000"
.LASF155:
	.ascii	"smaBankoffset\000"
.LASF176:
	.ascii	"fixedBank\000"
.LASF57:
	.ascii	"OBJSIZE_8\000"
.LASF234:
	.ascii	"g_garouBankbit\000"
.LASF209:
	.ascii	"neoPvcProt1\000"
.LASF250:
	.ascii	"neoPvcProt2\000"
.LASF247:
	.ascii	"C:/Users/GRX/NeoDS/arm9/source/NeoProtection.c\000"
.LASF68:
	.ascii	"state_flags\000"
.LASF129:
	.ascii	"sramProtection\000"
.LASF133:
	.ascii	"name\000"
.LASF211:
	.ascii	"neoKof98Write16\000"
.LASF146:
	.ascii	"pSram\000"
.LASF4:
	.ascii	"short int\000"
.LASF197:
	.ascii	"frameCounter\000"
.LASF47:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF82:
	.ascii	"ResetCallback\000"
.LASF219:
	.ascii	"bankaddress\000"
.LASF16:
	.ascii	"true\000"
.LASF183:
	.ascii	"displayCounterLoad\000"
.LASF111:
	.ascii	"_TNeoRomProtection\000"
.LASF44:
	.ascii	"texturePtrs\000"
.LASF218:
	.ascii	"neoPvcWriteBank\000"
.LASF123:
	.ascii	"_TNeoRomEntry\000"
.LASF125:
	.ascii	"_TNeoRomHeader\000"
.LASF148:
	.ascii	"pVram\000"
.LASF58:
	.ascii	"OBJSIZE_16\000"
.LASF173:
	.ascii	"irqPending\000"
.LASF22:
	.ascii	"centerX\000"
.LASF23:
	.ascii	"centerY\000"
.LASF88:
	.ascii	"TRead32Func\000"
.LASF104:
	.ascii	"NEOPROT_KOF2000\000"
.LASF238:
	.ascii	"mosaicShadow\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF24:
	.ascii	"scaleX\000"
.LASF25:
	.ascii	"scaleY\000"
.LASF67:
	.ascii	"reserved\000"
.LASF139:
	.ascii	"adpcm\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF126:
	.ascii	"magic\000"
.LASF40:
	.ascii	"gl_hidden_globals\000"
.LASF59:
	.ascii	"OBJSIZE_32\000"
.LASF251:
	.ascii	"neoInstallProtection\000"
.LASF130:
	.ascii	"fixedBankType\000"
.LASF239:
	.ascii	"mosaicShadowSub\000"
.LASF136:
	.ascii	"pVideoWriteTable\000"
.LASF175:
	.ascii	"paletteBank\000"
.LASF30:
	.ascii	"dirty\000"
.LASF154:
	.ascii	"smaBankAddr\000"
.LASF79:
	.ascii	"fetch16\000"
.LASF53:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF156:
	.ascii	"smaBankbit\000"
.LASF117:
	.ascii	"NEOROM_AUDODATA\000"
.LASF33:
	.ascii	"data\000"
.LASF191:
	.ascii	"fixedRomLatch\000"
.LASF178:
	.ascii	"sramProtectCount\000"
.LASF138:
	.ascii	"romBankCount\000"
.LASF96:
	.ascii	"TNeoADPCMStream\000"
.LASF249:
	.ascii	"pvc_w8\000"
.LASF223:
	.ascii	"neoWriteRomBankSma8\000"
.LASF180:
	.ascii	"vramMod\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
