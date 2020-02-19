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
	.code 16
	.thumb_func
	.type	neoPvcProt1, %function
neoPvcProt1:
.LFB109:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoProtection.c"
	.loc 1 20 0
	push	{r4, r5, r6, lr}
.LCFI0:
.LBB26:
.LBB27:
	.loc 1 16 0
	ldr	r6, .L3
.LBE27:
.LBE26:
	.loc 1 23 0
	ldr	r3, .L3+4
.LBB28:
.LBB29:
	.loc 1 10 0
	mov	r5, #1
.LBE29:
.LBE28:
	.loc 1 23 0
	ldrb	r0, [r6, r3]
	.loc 1 24 0
	mov	r3, #255
	lsl	r3, r3, #5
	ldrb	r1, [r6, r3]
.LBB30:
.LBB31:
	.loc 1 10 0
	mov	r3, #15
.LBE31:
.LBE30:
	.loc 1 23 0
	lsl	r0, r0, #24
.LBB32:
.LBB33:
	.loc 1 10 0
	mov	r2, r3
	mov	ip, r3
	and	r2, r2, r1
	lsr	r3, r0, #28
	and	r3, r3, r5
	lsl	r2, r2, #1
	orr	r2, r2, r3
	ldr	r3, .L3+8
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	lsr	r1, r1, #4
.LBE35:
.LBE34:
.LBB36:
.LBB37:
	strb	r2, [r6, r3]
.LBE37:
.LBE36:
.LBB38:
.LBB39:
	lsr	r3, r0, #29
	and	r3, r3, r5
	lsl	r1, r1, #1
	orr	r1, r1, r3
	ldr	r3, .L3+12
.LBE39:
.LBE38:
	.loc 1 23 0
	lsr	r4, r0, #24
.LVL0:
.LBB40:
.LBB41:
	.loc 1 10 0
	strb	r1, [r6, r3]
.LBE41:
.LBE40:
.LBB42:
.LBB43:
	mov	r3, ip
	and	r4, r4, r3
.LVL1:
	lsr	r3, r0, #30
	and	r3, r3, r5
	lsl	r4, r4, #1
	orr	r4, r4, r3
	ldr	r3, .L3+16
.LBE43:
.LBE42:
.LBB44:
.LBB45:
	lsr	r0, r0, #31
.LBE45:
.LBE44:
.LBB46:
.LBB47:
	strb	r4, [r6, r3]
.LBE47:
.LBE46:
.LBB48:
.LBB49:
	add	r3, r3, #1
	strb	r0, [r6, r3]
.LBE49:
.LBE48:
	.loc 1 30 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L4:
	.align	2
.L3:
	.word	g_pvcRam
	.word	8161
	.word	8162
	.word	8163
	.word	8164
.LFE109:
	.size	neoPvcProt1, .-neoPvcProt1
	.align	2
	.code 16
	.thumb_func
	.type	neoPvcProt2, %function
neoPvcProt2:
.LFB110:
	.loc 1 33 0
	push	{r4, r5, r6, lr}
.LCFI1:
.LBB50:
.LBB51:
	.loc 1 16 0
	ldr	r0, .L7
.LBE51:
.LBE50:
	.loc 1 36 0
	ldr	r3, .L7+4
	.loc 1 38 0
	ldr	r2, .L7+8
	.loc 1 36 0
	ldrb	r1, [r0, r3]
	.loc 1 37 0
	sub	r3, r3, #1
	ldrb	r3, [r0, r3]
	.loc 1 38 0
	ldrb	r6, [r0, r2]
.LVL2:
.LBB52:
.LBB53:
	.loc 1 16 0
	mov	ip, r0
.LBE53:
.LBE52:
	.loc 1 36 0
	lsl	r1, r1, #24
	.loc 1 39 0
	ldr	r0, .L7+12
	mov	r2, ip
	.loc 1 36 0
	lsr	r4, r1, #24
.LVL3:
	.loc 1 37 0
	lsl	r3, r3, #24
.LBB54:
.LBB55:
	.loc 1 10 0
	lsr	r1, r1, #25
.LBE55:
.LBE54:
	.loc 1 39 0
	ldrb	r0, [r2, r0]
	.loc 1 37 0
	lsr	r5, r3, #24
.LVL4:
.LBB56:
.LBB57:
	.loc 1 10 0
	lsl	r1, r1, #4
	ldr	r2, .L7+16
	lsr	r3, r3, #25
	orr	r3, r3, r1
	mov	r1, ip
	strb	r3, [r1, r2]
.LBE57:
.LBE56:
.LBB58:
.LBB59:
	mov	r3, #1
	mov	r2, r0
	and	r5, r5, r3
.LVL5:
	lsl	r5, r5, #4
	and	r2, r2, r3
	and	r4, r4, r3
.LVL6:
	and	r6, r6, r3
.LVL7:
	lsr	r0, r0, #1
	orr	r0, r0, r5
	lsl	r6, r6, #7
	lsl	r4, r4, #5
	lsl	r2, r2, #6
	orr	r0, r0, r6
	orr	r2, r2, r4
	ldr	r3, .L7+20
	orr	r2, r2, r0
	strb	r2, [r1, r3]
.LBE59:
.LBE58:
	.loc 1 43 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L8:
	.align	2
.L7:
	.word	g_pvcRam
	.word	8169
	.word	8171
	.word	8170
	.word	8172
	.word	8173
.LFE110:
	.size	neoPvcProt2, .-neoPvcProt2
	.align	2
	.code 16
	.thumb_func
	.type	neoKof98Write16, %function
neoKof98Write16:
.LFB119:
	.loc 1 264 0
	push	{lr}
.LCFI2:
.LVL8:
	.loc 1 265 0
	ldr	r3, .L16
	and	r0, r0, r3
.LVL9:
	ldr	r3, .L16+4
	cmp	r0, r3
	bne	.L14
.LBB60:
	.loc 1 267 0
	mov	r3, r7
	add	r3, r3, #252
	ldr	r3, [r3, #68]
.LVL10:
	.loc 1 268 0
	cmp	r1, #144
	beq	.L12
	cmp	r1, #240
	bne	.L14
	b	.L13
.L12:
	.loc 1 271 0
	mov	r2, #194
	add	r3, r3, #254
.LVL11:
	strh	r2, [r3, #2]
	.loc 1 272 0
	mov	r2, #253
	b	.L15
.LVL12:
.L13:
	.loc 1 276 0
	ldr	r2, .L16+8
	add	r3, r3, #254
.LVL13:
	strh	r2, [r3, #2]
	.loc 1 277 0
	add	r2, r2, #232
.L15:
	strh	r2, [r3, #4]
.LVL14:
.L14:
.LBE60:
	.loc 1 286 0
	@ sp needed for prologue
	pop	{pc}
.L17:
	.align	2
.L16:
	.word	16777215
	.word	2140842
	.word	20037
.LFE119:
	.size	neoKof98Write16, .-neoKof98Write16
	.align	2
	.code 16
	.thumb_func
	.type	neoKof98Write8, %function
neoKof98Write8:
.LFB120:
	.loc 1 289 0
	push	{lr}
.LCFI3:
.LVL15:
	.loc 1 290 0
	mov	r3, #1
	.loc 1 289 0
	sub	sp, sp, #4
.LCFI4:
	.loc 1 290 0
	tst	r0, r3
	beq	.L19
	.loc 1 291 0
	bic	r0, r0, r3
.LVL16:
	b	.L23
.LVL17:
.L19:
	.loc 1 293 0
	lsl	r1, r1, #8
.LVL18:
.L23:
	bl	neoKof98Write16
.LVL19:
	.loc 1 295 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE120:
	.size	neoKof98Write8, .-neoKof98Write8
	.align	2
	.code 16
	.thumb_func
	.type	neoFatFury2Read16, %function
neoFatFury2Read16:
.LFB121:
	.loc 1 300 0
	push	{lr}
.LCFI5:
.LVL20:
	.loc 1 301 0
	ldr	r3, .L32
	ldrb	r1, [r3, #3]
.LVL21:
	.loc 1 303 0
	ldr	r3, .L32+4
	and	r0, r0, r3
.LVL22:
	ldr	r3, .L32+8
	cmp	r0, r3
	beq	.L26
	cmp	r0, r3
	bhi	.L28
	mov	r3, #216
	lsl	r3, r3, #10
	cmp	r0, r3
	beq	.L26
	ldr	r3, .L32+12
	cmp	r0, r3
	beq	.L27
	cmp	r0, #0
	beq	.L26
	b	.L25
.L28:
	ldr	r3, .L32+16
	cmp	r0, r3
	beq	.L26
	cmp	r0, r3
	bhi	.L29
	ldr	r3, .L32+20
	cmp	r0, r3
	bne	.L25
	b	.L27
.L29:
	mov	r3, #255
	lsl	r3, r3, #12
	cmp	r0, r3
	beq	.L26
	ldr	r3, .L32+24
	cmp	r0, r3
	beq	.L26
.L25:
	mov	r0, #0
	b	.L30
.L26:
	.loc 1 310 0
	mov	r0, r1
	b	.L30
.L27:
	.loc 1 313 0
	mov	r3, #15
	lsr	r2, r1, #4
	and	r3, r3, r1
	lsl	r3, r3, #4
	mov	r0, r2
	orr	r0, r0, r3
.L30:
	.loc 1 317 0
	@ sp needed for prologue
	pop	{pc}
.L33:
	.align	2
.L32:
	.word	g_fatFury2Prot
	.word	1048574
	.word	221192
	.word	221188
	.word	349520
	.word	221196
	.word	1048560
.LFE121:
	.size	neoFatFury2Read16, .-neoFatFury2Read16
	.align	2
	.code 16
	.thumb_func
	.type	neoFatFury2Write16, %function
neoFatFury2Write16:
.LFB122:
	.loc 1 321 0
	push	{lr}
.LCFI6:
.LVL23:
	.loc 1 322 0
	ldr	r3, .L49
	and	r0, r0, r3
.LVL24:
	ldr	r3, .L49+4
	cmp	r0, r3
	beq	.L39
	cmp	r0, r3
	bhi	.L43
	mov	r3, #216
	lsl	r3, r3, #10
	cmp	r0, r3
	beq	.L38
	cmp	r0, r3
	bhi	.L44
	ldr	r3, .L49+8
	cmp	r0, r3
	beq	.L36
	ldr	r3, .L49+12
	cmp	r0, r3
	bne	.L46
	b	.L37
.L44:
	ldr	r3, .L49+16
	cmp	r0, r3
	beq	.L38
	add	r3, r3, #4
	cmp	r0, r3
	beq	.L38
	sub	r3, r3, #8
	b	.L47
.L43:
	ldr	r3, .L49+20
	cmp	r0, r3
	beq	.L41
	cmp	r0, r3
	bhi	.L45
	ldr	r3, .L49+24
	cmp	r0, r3
	beq	.L40
	ldr	r3, .L49+28
.L47:
	cmp	r0, r3
	bne	.L46
	b	.L38
.L45:
	mov	r3, #255
	lsl	r3, r3, #12
	cmp	r0, r3
	beq	.L38
	ldr	r3, .L49+32
	cmp	r0, r3
	beq	.L38
	ldr	r3, .L49+36
	cmp	r0, r3
	bne	.L46
	b	.L42
.L36:
	.loc 1 324 0
	ldr	r2, .L49+40
	ldr	r3, .L49+44
	b	.L48
.L37:
	.loc 1 327 0
	ldr	r2, .L49+40
	ldr	r3, .L49+48
	b	.L48
.L40:
	.loc 1 330 0
	mov	r3, #255
	ldr	r2, .L49+40
	lsl	r3, r3, #16
	b	.L48
.L41:
	.loc 1 333 0
	ldr	r2, .L49+40
	ldr	r3, .L49+52
	b	.L48
.L42:
	.loc 1 336 0
	ldr	r2, .L49+40
	ldr	r3, .L49+56
	b	.L48
.L39:
	.loc 1 339 0
	ldr	r2, .L49+40
	ldr	r3, .L49+60
	b	.L48
.L38:
	.loc 1 348 0
	ldr	r2, .L49+40
	ldr	r3, [r2]
	lsl	r3, r3, #8
.L48:
	str	r3, [r2]
.L46:
	.loc 1 351 0
	@ sp needed for prologue
	pop	{pc}
.L50:
	.align	2
.L49:
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
	.word	g_fatFury2Prot
	.word	-16777216
	.word	65535
	.word	-16711936
	.word	-262523391
	.word	-2126371816
.LFE122:
	.size	neoFatFury2Write16, .-neoFatFury2Write16
	.align	2
	.global	neoInstallProtection
	.code 16
	.thumb_func
	.type	neoInstallProtection, %function
neoInstallProtection:
.LFB123:
	.loc 1 354 0
	push	{r4, r5, lr}
.LCFI7:
	.loc 1 357 0
	mov	r2, r7
	mov	r3, #0
	add	r2, r2, #252
	str	r3, [r2, #108]
	.loc 1 358 0
	str	r3, [r2, #112]
	.loc 1 359 0
	str	r3, [r2, #116]
	.loc 1 361 0
	ldr	r3, .L73
	.loc 1 354 0
	sub	sp, sp, #4
.LCFI8:
	.loc 1 361 0
	ldr	r3, [r3, #8]
	sub	r3, r3, #1
	cmp	r3, #7
	bhi	.L52
	ldr	r2, .L73+4
	lsl	r3, r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.section	.rodata
	.align	2
	.align	2
.L61:
	.word	.L53
	.word	.L54
	.word	.L55
	.word	.L56
	.word	.L57
	.word	.L58
	.word	.L59
	.word	.L60
	.text
.L53:
	.loc 1 363 0
	ldr	r2, .L73+8
	ldr	r3, .L73+12
	.loc 1 369 0
	mov	r1, #0
	.loc 1 363 0
	str	r2, [r7, r3]
	.loc 1 364 0
	ldr	r2, .L73+16
	ldr	r3, .L73+20
	.loc 1 369 0
	ldr	r0, .L73+24
	.loc 1 364 0
	str	r2, [r7, r3]
	.loc 1 365 0
	ldr	r2, .L73+28
	ldr	r3, .L73+32
	str	r2, [r7, r3]
	.loc 1 366 0
	ldr	r2, .L73+36
	ldr	r3, .L73+40
	str	r2, [r7, r3]
	.loc 1 367 0
	ldr	r2, .L73+44
	ldr	r3, .L73+48
	str	r2, [r7, r3]
	.loc 1 368 0
	ldr	r2, .L73+52
	ldr	r3, .L73+56
	str	r2, [r7, r3]
	.loc 1 369 0
	mov	r2, #128
	lsl	r2, r2, #6
	bl	memset
	b	.L52
.L54:
	.loc 1 373 0
	ldr	r3, .L73+60
	mov	r2, r7
	add	r2, r2, #252
	str	r3, [r2, #108]
	.loc 1 374 0
	add	r3, r3, #2
	str	r3, [r2, #112]
	.loc 1 375 0
	add	r3, r3, #18
	str	r3, [r2, #116]
	.loc 1 376 0
	ldr	r3, .L73+64
	str	r3, [r2, #120]
	.loc 1 377 0
	ldr	r3, .L73+68
	b	.L72
.L55:
	.loc 1 380 0
	ldr	r3, .L73+72
	mov	r2, r7
	add	r2, r2, #252
	str	r3, [r2, #116]
	.loc 1 381 0
	ldr	r3, .L73+76
	str	r3, [r2, #120]
	.loc 1 382 0
	ldr	r3, .L73+80
	str	r3, [r2, #124]
	.loc 1 384 0
	mov	r3, #1
	str	r3, [r2, #108]
	b	.L52
.L56:
	.loc 1 387 0
	ldr	r3, .L73+84
	mov	r2, r7
	add	r2, r2, #252
	str	r3, [r2, #108]
	.loc 1 388 0
	add	r3, r3, #36
	str	r3, [r2, #112]
	.loc 1 389 0
	sub	r3, r3, #48
	str	r3, [r2, #116]
	.loc 1 390 0
	ldr	r3, .L73+88
	str	r3, [r2, #120]
	.loc 1 391 0
	ldr	r3, .L73+92
.L72:
	str	r3, [r2, #124]
	b	.L52
.L57:
	.loc 1 394 0
	ldr	r3, .L73+84
	mov	r2, r7
	add	r2, r2, #252
	str	r3, [r2, #108]
	.loc 1 395 0
	add	r3, r3, #36
	str	r3, [r2, #112]
	.loc 1 396 0
	sub	r3, r3, #48
	str	r3, [r2, #116]
	.loc 1 397 0
	ldr	r3, .L73+96
	str	r3, [r2, #120]
	.loc 1 398 0
	ldr	r3, .L73+100
	b	.L72
.L58:
	.loc 1 401 0
	ldr	r3, .L73+104
	mov	r2, r7
	add	r2, r2, #252
	str	r3, [r2, #108]
	.loc 1 402 0
	add	r3, r3, #2
	str	r3, [r2, #112]
	.loc 1 403 0
	sub	r3, r3, #10
	str	r3, [r2, #116]
	.loc 1 404 0
	ldr	r3, .L73+108
	str	r3, [r2, #120]
	.loc 1 405 0
	ldr	r3, .L73+112
	b	.L72
.L59:
	.loc 1 408 0
	ldr	r2, .L73+116
	mov	r3, #132
	lsl	r3, r3, #5
	str	r2, [r7, r3]
	.loc 1 409 0
	mov	r3, #164
	ldr	r2, .L73+120
	lsl	r3, r3, #5
	str	r2, [r7, r3]
	b	.L52
.L60:
	mov	r2, r7
	ldr	r0, .L73+124
	ldr	r4, .L73+128
	.loc 1 411 0
	mov	r1, #32
.LVL25:
	add	r2, r2, #128
.L62:
	.loc 1 414 0
	mov	r5, #128
	lsl	r5, r5, #5
	add	r3, r2, r5
	.loc 1 415 0
	mov	r5, #160
	lsl	r5, r5, #5
	.loc 1 414 0
	str	r0, [r3]
	.loc 1 415 0
	add	r3, r2, r5
	.loc 1 416 0
	mov	r5, #128
	lsl	r5, r5, #4
	.loc 1 415 0
	str	r0, [r3]
	.loc 1 413 0
	add	r1, r1, #1
	.loc 1 416 0
	add	r3, r2, r5
	str	r4, [r3]
	.loc 1 413 0
	add	r2, r2, #4
	cmp	r1, #48
	bne	.L62
	.loc 1 419 0
	ldr	r2, .L73+132
	mov	r3, #0
	str	r3, [r2]
.L52:
	.loc 1 423 0
	mov	r3, r7
	add	r3, r3, #252
	ldr	r3, [r3, #116]
	cmp	r3, #0
	beq	.L64
	.loc 1 424 0
	ldr	r2, .L73+136
	ldr	r3, .L73+40
	str	r2, [r7, r3]
	.loc 1 425 0
	ldr	r2, .L73+140
	ldr	r3, .L73+48
	str	r2, [r7, r3]
.L64:
	.loc 1 428 0
	mov	r2, r7
	add	r2, r2, #252
	ldr	r3, [r2, #108]
	cmp	r3, #0
	beq	.L69
	ldr	r3, [r2, #112]
	cmp	r3, #0
	beq	.L69
	.loc 1 432 0
	ldr	r2, .L73+144
	ldr	r3, .L73+12
	str	r2, [r7, r3]
	.loc 1 433 0
	ldr	r2, .L73+148
	ldr	r3, .L73+20
	str	r2, [r7, r3]
	.loc 1 434 0
	ldr	r2, .L73+28
	ldr	r3, .L73+32
	str	r2, [r7, r3]
.L69:
	.loc 1 436 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{r4, r5, pc}
.L74:
	.align	2
.L73:
	.word	g_header
	.word	.L61
	.word	neoReadPvc8
	.word	1212
	.word	neoReadPvc16
	.word	2236
	.word	g_pvcRam
	.word	neoDefaultRead32
	.word	3260
	.word	neoWritePvc8
	.word	4284
	.word	neoWritePvc16
	.word	5308
	.word	neoDefaultWrite32
	.word	6332
	.word	3145688
	.word	g_kof2000Bankoffset
	.word	g_kof2000Bankbit
	.word	3145700
	.word	g_mslug3Bankoffset
	.word	g_mslug3Bankbit
	.word	3145676
	.word	g_garouoBankoffset
	.word	g_garouoBankbit
	.word	g_garouBankoffset
	.word	g_garouBankbit
	.word	3145720
	.word	g_kof99Bankoffset
	.word	g_kof99Bankbit
	.word	neoKof98Write8
	.word	neoKof98Write16
	.word	neoFatFury2Write16
	.word	neoFatFury2Read16
	.word	g_fatFury2Prot
	.word	neoWriteRomBankSma8
	.word	neoWriteRomBankSma16
	.word	neoDefaultRead8
	.word	neoReadSma16
.LFE123:
	.size	neoInstallProtection, .-neoInstallProtection
	.align	2
	.code 16
	.thumb_func
	.type	neoReadSma16, %function
neoReadSma16:
.LFB118:
	.loc 1 238 0
	push	{r4, r5, r6, lr}
.LCFI9:
.LVL26:
	.loc 1 239 0
	ldr	r3, .L83
	and	r0, r0, r3
.LVL27:
	.loc 1 240 0
	ldr	r3, .L83+4
	cmp	r0, r3
	bne	.L76
	ldr	r0, .L83+8
.LVL28:
	b	.L78
.LVL29:
.L76:
	.loc 1 242 0
	mov	r2, r7
	add	r2, r2, #252
	ldr	r3, [r2, #108]
	mov	r6, r7
	cmp	r0, r3
	beq	.L79
	ldr	r3, [r2, #112]
	cmp	r0, r3
	bne	.L81
.L79:
.LBB61:
	.loc 1 243 0
	mov	r3, #190
	lsl	r3, r3, #1
	ldr	r2, [r6, r3]
	mov	ip, r3
	.loc 1 254 0
	lsr	r1, r2, #2
	lsr	r3, r2, #3
	eor	r1, r1, r3
	lsr	r3, r2, #7
	eor	r1, r1, r3
	lsr	r3, r2, #12
	lsr	r0, r2, #5
.LVL30:
	eor	r1, r1, r3
	lsr	r3, r2, #6
	eor	r3, r3, r0
	lsr	r0, r2, #11
	.loc 1 243 0
	lsl	r5, r2, #16
	.loc 1 254 0
	eor	r3, r3, r0
	lsr	r2, r2, #15
	eor	r3, r3, r2
	.loc 1 243 0
	lsr	r5, r5, #16
.LVL31:
	.loc 1 254 0
	eor	r1, r1, r3
	mov	r3, #1
	and	r1, r1, r3
	lsl	r4, r5, #1
	orr	r4, r4, r1
	lsl	r4, r4, #16
	lsr	r4, r4, #16
	mov	r3, ip
	.loc 1 258 0
	mov	r0, r5
	.loc 1 254 0
	str	r4, [r6, r3]
	b	.L78
.LVL32:
.L81:
.LBE61:
	.loc 1 260 0
	bl	neoReadBankedRom16
.LVL33:
.L78:
	.loc 1 261 0
	@ sp needed for prologue
.LVL34:
	pop	{r4, r5, r6, pc}
.L84:
	.align	2
.L83:
	.word	16777215
	.word	3138630
	.word	39479
.LFE118:
	.size	neoReadSma16, .-neoReadSma16
	.align	2
	.code 16
	.thumb_func
	.type	neoReadPvc16, %function
neoReadPvc16:
.LFB113:
	.loc 1 75 0
	push	{lr}
.LCFI10:
.LVL35:
	.loc 1 76 0
	ldr	r3, .L90
	.loc 1 75 0
	sub	sp, sp, #4
.LCFI11:
	.loc 1 76 0
	and	r0, r0, r3
.LVL36:
	.loc 1 77 0
	ldr	r3, .L90+4
	cmp	r0, r3
	bls	.L86
	.loc 1 78 0
	ldr	r3, .L90+8
	ldr	r2, .L90+12
	add	r3, r0, r3
	add	r3, r3, r2
	ldrh	r0, [r3]
.LVL37:
	b	.L88
.LVL38:
.L86:
	.loc 1 80 0
	bl	neoReadBankedRom16
.LVL39:
.L88:
	.loc 1 81 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L91:
	.align	2
.L90:
	.word	16777215
	.word	3137535
	.word	g_pvcRam
	.word	-3137536
.LFE113:
	.size	neoReadPvc16, .-neoReadPvc16
	.align	2
	.code 16
	.thumb_func
	.type	neoPvcWriteBank, %function
neoPvcWriteBank:
.LFB111:
	.loc 1 46 0
	push	{r4, lr}
.LCFI12:
	.loc 1 47 0
	ldr	r1, .L96
	ldr	r0, .L96+4
	ldr	r3, .L96+8
	ldrh	r2, [r1, r0]
	ldrh	r3, [r1, r3]
	lsr	r2, r2, #8
	lsl	r3, r3, #8
	mov	r4, r2
.LVL40:
	orr	r4, r4, r3
	.loc 1 48 0
	mov	r3, #96
	neg	r3, r3
	strb	r3, [r1, r0]
	.loc 1 49 0
	ldr	r3, .L96+12
	mov	r2, #2
	add	r0, r1, r3
	ldrb	r3, [r0]
	neg	r2, r2
	and	r3, r3, r2
	strb	r3, [r0]
	.loc 1 50 0
	ldr	r3, .L96+16
	mov	r2, #127
	add	r1, r1, r3
	ldrb	r3, [r1]
	and	r3, r3, r2
	strb	r3, [r1]
	.loc 1 52 0
	mov	r3, r7
	add	r3, r3, #216
	ldr	r3, [r3]
	lsl	r3, r3, #20
	cmp	r4, r3
	bcc	.L93
	mov	r4, #0
.L93:
	.loc 1 56 0
	mov	r0, r4
	bl	neoSetRomBankAddr
	.loc 1 63 0
	@ sp needed for prologue
.LVL41:
	pop	{r4, pc}
.L97:
	.align	2
.L96:
	.word	g_pvcRam
	.word	8176
	.word	8178
	.word	8177
	.word	8179
.LFE111:
	.size	neoPvcWriteBank, .-neoPvcWriteBank
	.align	2
	.code 16
	.thumb_func
	.type	neoWritePvc16, %function
neoWritePvc16:
.LFB115:
	.loc 1 106 0
	push	{lr}
.LCFI13:
.LVL42:
	.loc 1 107 0
	ldr	r3, .L107
	.loc 1 106 0
	sub	sp, sp, #4
.LCFI14:
	.loc 1 107 0
	and	r0, r0, r3
.LVL43:
	.loc 1 108 0
	ldr	r3, .L107+4
	cmp	r0, r3
	bls	.L106
.LBB62:
	.loc 1 109 0
	ldr	r2, .L107+8
	add	r3, r0, r2
	lsr	r2, r3, #1
.LVL44:
	.loc 1 110 0
	ldr	r3, .L107+12
	add	r3, r0, r3
	ldr	r0, .L107+8
.LVL45:
	add	r3, r3, r0
	strh	r1, [r3]
	.loc 1 111 0
	mov	r3, #255
	lsl	r3, r3, #4
	cmp	r2, r3
	bne	.L101
	bl	neoPvcProt1
.LVL46:
	b	.L106
.LVL47:
.L101:
	.loc 1 112 0
	ldr	r1, .L107+16
.LVL48:
	add	r3, r2, r1
	cmp	r3, #1
	bhi	.L103
	bl	neoPvcProt2
.LVL49:
	b	.L106
.LVL50:
.L103:
	.loc 1 113 0
	ldr	r3, .L107+20
	cmp	r2, r3
	bls	.L106
	bl	neoPvcWriteBank
.LVL51:
.LVL52:
.L106:
.LBE62:
	.loc 1 117 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L108:
	.align	2
.L107:
	.word	16777215
	.word	3137535
	.word	-3137536
	.word	g_pvcRam
	.word	-4084
	.word	4087
.LFE115:
	.size	neoWritePvc16, .-neoWritePvc16
	.align	2
	.code 16
	.thumb_func
	.type	neoWritePvc8, %function
neoWritePvc8:
.LFB114:
	.loc 1 92 0
	push	{r4, lr}
.LCFI15:
.LVL53:
	.loc 1 93 0
	ldr	r3, .L118
	.loc 1 92 0
	mov	r4, r1
	.loc 1 93 0
	and	r0, r0, r3
.LVL54:
	.loc 1 94 0
	ldr	r3, .L118+4
	cmp	r0, r3
	bls	.L117
.LVL55:
.LBB63:
	.loc 1 95 0
	ldr	r2, .L118+8
	.loc 1 96 0
	ldr	r1, .L118+12
	.loc 1 95 0
	add	r3, r0, r2
	.loc 1 96 0
	mov	r2, #1
	.loc 1 95 0
	lsr	r0, r3, #1
.LVL56:
	.loc 1 96 0
	eor	r3, r3, r2
	strb	r4, [r3, r1]
	.loc 1 97 0
	mov	r3, #255
	lsl	r3, r3, #4
	cmp	r0, r3
	bne	.L112
	bl	neoPvcProt1
.LVL57:
	b	.L117
.LVL58:
.L112:
	.loc 1 98 0
	ldr	r2, .L118+16
	add	r3, r0, r2
	cmp	r3, #1
	bhi	.L114
	bl	neoPvcProt2
.LVL59:
	b	.L117
.LVL60:
.L114:
	.loc 1 99 0
	ldr	r3, .L118+20
	cmp	r0, r3
	bls	.L117
	bl	neoPvcWriteBank
.LVL61:
.LVL62:
.L117:
.LBE63:
	.loc 1 103 0
	@ sp needed for prologue
.LVL63:
	pop	{r4, pc}
.L119:
	.align	2
.L118:
	.word	16777215
	.word	3137535
	.word	-3137536
	.word	g_pvcRam
	.word	-4084
	.word	4087
.LFE114:
	.size	neoWritePvc8, .-neoWritePvc8
	.align	2
	.code 16
	.thumb_func
	.type	neoWriteRomBankSma16, %function
neoWriteRomBankSma16:
.LFB116:
	.loc 1 215 0
	push	{r4, r5, r6, lr}
.LCFI16:
.LVL64:
	.loc 1 216 0
	mov	r6, r7
	add	r6, r6, #252
	ldr	r3, [r6, #116]
	.loc 1 215 0
	sub	sp, sp, #8
.LCFI17:
	.loc 1 215 0
	mov	r5, r1
	.loc 1 216 0
	cmp	r0, r3
	bne	.L121
.LVL65:
	.loc 1 218 0
	ldr	r4, [r6, #124]
	.loc 1 225 0
	mov	r2, r5
	ldr	r1, [r4]
	ldr	r3, [r4, #4]
	asr	r2, r2, r1
	mov	r1, r2
	mov	r2, r5
	asr	r2, r2, r3
	mov	r0, #1
.LVL66:
	mov	r3, r2
	and	r3, r3, r0
	and	r1, r1, r0
	lsl	r3, r3, #1
	add	r1, r1, r3
	ldr	r3, [r4, #16]
	mov	r2, r5
	asr	r2, r2, r3
	mov	r3, r2
	and	r3, r3, r0
	ldr	r2, [r4, #12]
	lsl	r3, r3, #4
	add	r1, r1, r3
	mov	r3, r5
	asr	r3, r3, r2
	mov	r2, r3
	and	r2, r2, r0
	ldr	r3, [r4, #8]
	lsl	r2, r2, #3
	mov	ip, r2
	mov	r2, r5
	asr	r2, r2, r3
	mov	r3, r2
	and	r3, r3, r0
	lsl	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r4, #20]
	add	r2, r2, ip
	asr	r5, r5, r3
	mov	r3, r5
	and	r3, r3, r0
	lsl	r3, r3, #5
	add	r2, r2, r3
	add	r1, r1, r2
	ldr	r3, [r6, #120]
	lsl	r1, r1, #2
	ldr	r0, [r1, r3]
	bl	neoSetRomBankAddr
	b	.L124
.LVL67:
.L121:
	.loc 1 227 0
	bl	neoWriteRomBank
.LVL68:
.L124:
	.loc 1 229 0
	add	sp, sp, #8
	@ sp needed for prologue
.LVL69:
	pop	{r4, r5, r6, pc}
.LFE116:
	.size	neoWriteRomBankSma16, .-neoWriteRomBankSma16
	.align	2
	.code 16
	.thumb_func
	.type	neoWriteRomBankSma8, %function
neoWriteRomBankSma8:
.LFB117:
	.loc 1 232 0
	push	{lr}
.LCFI18:
.LVL70:
	.loc 1 233 0
	mov	r3, #1
	mov	r2, r0
	.loc 1 232 0
	sub	sp, sp, #4
.LCFI19:
	bic	r2, r2, r3
	.loc 1 233 0
	tst	r0, r3
	bne	.L130
	.loc 1 234 0
	lsl	r1, r1, #8
.LVL71:
.L130:
	mov	r0, r2
.LVL72:
	bl	neoWriteRomBankSma16
.LVL73:
	.loc 1 235 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE117:
	.size	neoWriteRomBankSma8, .-neoWriteRomBankSma8
	.align	2
	.code 16
	.thumb_func
	.type	neoReadPvc8, %function
neoReadPvc8:
.LFB112:
	.loc 1 66 0
	push	{lr}
.LCFI20:
.LVL74:
	.loc 1 67 0
	ldr	r3, .L136
	.loc 1 66 0
	sub	sp, sp, #4
.LCFI21:
	.loc 1 67 0
	and	r0, r0, r3
.LVL75:
	.loc 1 68 0
	ldr	r3, .L136+4
	cmp	r0, r3
	bls	.L132
	.loc 1 69 0
	ldr	r1, .L136+8
	ldr	r3, .L136+12
	add	r2, r0, r1
	mov	r1, #1
	eor	r2, r2, r1
	ldrb	r0, [r2, r3]
.LVL76:
	b	.L134
.LVL77:
.L132:
	.loc 1 71 0
	bl	neoReadBankedRom8
.LVL78:
.L134:
	.loc 1 72 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L137:
	.align	2
.L136:
	.word	16777215
	.word	3137535
	.word	-3137536
	.word	g_pvcRam
.LFE112:
	.size	neoReadPvc8, .-neoReadPvc8
	.section	.rodata
	.align	2
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
	.align	2
	.type	g_kof2000Bankbit, %object
	.size	g_kof2000Bankbit, 24
g_kof2000Bankbit:
	.word	15
	.word	14
	.word	7
	.word	3
	.word	10
	.word	5
	.align	2
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
	.align	2
	.type	g_mslug3Bankbit, %object
	.size	g_mslug3Bankbit, 24
g_mslug3Bankbit:
	.word	14
	.word	12
	.word	15
	.word	6
	.word	3
	.word	9
	.align	2
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
	.align	2
	.type	g_garouoBankbit, %object
	.size	g_garouoBankbit, 24
g_garouoBankbit:
	.word	4
	.word	8
	.word	14
	.word	2
	.word	11
	.word	13
	.align	2
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
	.align	2
	.type	g_garouBankbit, %object
	.size	g_garouBankbit, 24
g_garouBankbit:
	.word	5
	.word	9
	.word	7
	.word	6
	.word	14
	.word	12
	.align	2
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
	.align	2
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
g_pvcRam:
	.space	8192
	.align	2
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
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x4
	.4byte	.LCFI0-.LFB109
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
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x4
	.4byte	.LCFI1-.LFB110
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
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.byte	0x4
	.4byte	.LCFI2-.LFB119
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.byte	0x4
	.4byte	.LCFI3-.LFB120
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.byte	0x4
	.4byte	.LCFI5-.LFB121
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.byte	0x4
	.4byte	.LCFI6-.LFB122
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.byte	0x4
	.4byte	.LCFI7-.LFB123
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.byte	0x4
	.4byte	.LCFI9-.LFB118
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
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.byte	0x4
	.4byte	.LCFI10-.LFB113
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI12-.LFB111
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.byte	0x4
	.4byte	.LCFI13-.LFB115
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.byte	0x4
	.4byte	.LCFI15-.LFB114
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.byte	0x4
	.4byte	.LCFI16-.LFB116
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
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
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
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI20-.LFB112
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE28:
	.file 2 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 5 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.file 6 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h"
	.file 8 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h"
	.file 9 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB109-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB110-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB119-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB120-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB121-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB122-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LFB123-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB118-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB113-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LFB115-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL52-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LFB114-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL62-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL62-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LFB116-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST35:
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
.LLST36:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LFB112-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x1227
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF196
	.byte	0x1
	.4byte	.LASF197
	.4byte	.LASF198
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
	.uleb128 0x10
	.4byte	0x59d
	.4byte	.LASF70
	.byte	0x8
	.byte	0x6
	.byte	0xa6
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x6
	.byte	0xa7
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x6
	.byte	0xa8
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x6
	.byte	0xa9
	.4byte	0x574
	.uleb128 0x10
	.4byte	0x641
	.4byte	.LASF73
	.byte	0x74
	.byte	0x6
	.byte	0xab
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0x6
	.byte	0xac
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0x6
	.byte	0xad
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x6
	.byte	0xae
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x6
	.byte	0xaf
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x6
	.byte	0xb0
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x6
	.byte	0xb1
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x6
	.byte	0xb2
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x6
	.byte	0xb3
	.4byte	0x641
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x6
	.byte	0xb4
	.4byte	0x651
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x6
	.byte	0xb5
	.4byte	0x661
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.byte	0x0
	.uleb128 0xc
	.4byte	0x651
	.4byte	0x100
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.4byte	0x661
	.4byte	0x59d
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x8
	.byte	0x0
	.uleb128 0xc
	.4byte	0x670
	.4byte	0xbb
	.uleb128 0x18
	.4byte	0xf9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x6
	.byte	0xb6
	.4byte	0x5a8
	.uleb128 0x19
	.4byte	0xa69
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
	.4byte	.LASF85
	.byte	0x6
	.byte	0xc4
	.4byte	0xa69
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x6
	.byte	0xc7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x6
	.byte	0xc8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0x6
	.byte	0xcb
	.4byte	0xa79
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x12
	.4byte	.LASF89
	.byte	0x6
	.byte	0xcc
	.4byte	0x569
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0x6
	.byte	0xcd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x12
	.4byte	.LASF91
	.byte	0x6
	.byte	0xd0
	.4byte	0xa89
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x12
	.4byte	.LASF92
	.byte	0x6
	.byte	0xd1
	.4byte	0xa89
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x6
	.byte	0xd2
	.4byte	0xa89
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x6
	.byte	0xd3
	.4byte	0xa89
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x6
	.byte	0xd4
	.4byte	0xa89
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x6
	.byte	0xd5
	.4byte	0xa89
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x6
	.byte	0xd6
	.4byte	0xa8f
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x6
	.byte	0xd7
	.4byte	0xa8f
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x6
	.byte	0xd8
	.4byte	0xa8f
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x6
	.byte	0xda
	.4byte	0xa95
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0x6
	.byte	0xdd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x6
	.byte	0xde
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x12
	.4byte	.LASF103
	.byte	0x6
	.byte	0xdf
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x12
	.4byte	.LASF104
	.byte	0x6
	.byte	0xe0
	.4byte	0xaa6
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x12
	.4byte	.LASF105
	.byte	0x6
	.byte	0xe1
	.4byte	0xaa6
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x12
	.4byte	.LASF106
	.byte	0x6
	.byte	0xe2
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0x6
	.byte	0xe5
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x6
	.byte	0xe6
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x6
	.byte	0xe7
	.4byte	0xa8f
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0x6
	.byte	0xe8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x12
	.4byte	.LASF111
	.byte	0x6
	.byte	0xea
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x12
	.4byte	.LASF112
	.byte	0x6
	.byte	0xeb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0x6
	.byte	0xec
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x6
	.byte	0xed
	.4byte	0xab1
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0x6
	.byte	0xee
	.4byte	0xa8f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x12
	.4byte	.LASF116
	.byte	0x6
	.byte	0xf1
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x12
	.4byte	.LASF117
	.byte	0x6
	.byte	0xf2
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x12
	.4byte	.LASF118
	.byte	0x6
	.byte	0xf3
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x12
	.4byte	.LASF119
	.byte	0x6
	.byte	0xf4
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x12
	.4byte	.LASF120
	.byte	0x6
	.byte	0xf7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x12
	.4byte	.LASF121
	.byte	0x6
	.byte	0xf8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x12
	.4byte	.LASF122
	.byte	0x6
	.byte	0xf9
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0x6
	.byte	0xfa
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x12
	.4byte	.LASF124
	.byte	0x6
	.byte	0xfb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0x6
	.byte	0xfc
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0x6
	.byte	0xfd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x6
	.2byte	0x102
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x103
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x6
	.2byte	0x106
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x6
	.2byte	0x108
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x6
	.2byte	0x109
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x6
	.2byte	0x10a
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x6
	.2byte	0x10b
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x6
	.2byte	0x10d
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x6
	.2byte	0x10e
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x6
	.2byte	0x10f
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x6
	.2byte	0x110
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x6
	.2byte	0x111
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x6
	.2byte	0x114
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x6
	.2byte	0x115
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x6
	.2byte	0x116
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x6
	.2byte	0x117
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x6
	.2byte	0x118
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0x6
	.2byte	0x11b
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0x6
	.2byte	0x11c
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x6
	.2byte	0x11f
	.4byte	0xac1
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0x6
	.2byte	0x122
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x6
	.2byte	0x123
	.4byte	0xad1
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa79
	.4byte	0x1ce
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x8
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa89
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
	.4byte	0xa9b
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaa1
	.uleb128 0x1a
	.4byte	0xbb
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaac
	.uleb128 0x1a
	.4byte	0xd0
	.uleb128 0xc
	.4byte	0xac1
	.4byte	0xd0
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.4byte	0xad1
	.4byte	0xbb
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.4byte	0xae0
	.4byte	0xbb
	.uleb128 0x18
	.4byte	0xf9
	.byte	0x0
	.uleb128 0x1b
	.4byte	0xafb
	.2byte	0x400
	.byte	0x6
	.byte	0xbf
	.uleb128 0x1c
	.4byte	0x67b
	.uleb128 0x1d
	.4byte	.LASF148
	.byte	0x6
	.2byte	0x125
	.4byte	0xafb
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb0b
	.4byte	0xd0
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0x1e
	.4byte	0xb91
	.4byte	.LASF149
	.2byte	0x2000
	.byte	0x6
	.byte	0xbe
	.uleb128 0x1f
	.4byte	0xae0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0x6
	.2byte	0x128
	.4byte	0xb91
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x6
	.2byte	0x129
	.4byte	0xba1
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0x6
	.2byte	0x12a
	.4byte	0xbb1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0x6
	.2byte	0x12b
	.4byte	0xbc1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0x6
	.2byte	0x12c
	.4byte	0xbd1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0x6
	.2byte	0x12d
	.4byte	0xbe1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0x6
	.2byte	0x12e
	.4byte	0xbf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xc
	.4byte	0xba1
	.4byte	0x40e
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbb1
	.4byte	0x42f
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbc1
	.4byte	0x450
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbd1
	.4byte	0x471
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbe1
	.4byte	0x493
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbf1
	.4byte	0x4b5
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xc01
	.4byte	0x4d7
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF157
	.byte	0x6
	.2byte	0x12f
	.4byte	0xb0b
	.uleb128 0x20
	.4byte	0xc2a
	.4byte	.LASF158
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.4byte	0xbb
	.byte	0x3
	.uleb128 0x21
	.4byte	.LASF62
	.byte	0x1
	.byte	0xe
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x22
	.4byte	0xc4e
	.4byte	.LASF159
	.byte	0x1
	.byte	0x9
	.byte	0x1
	.byte	0x3
	.uleb128 0x21
	.4byte	.LASF62
	.byte	0x1
	.byte	0x8
	.4byte	0xd0
	.uleb128 0x21
	.4byte	.LASF83
	.byte	0x1
	.byte	0x8
	.4byte	0xbb
	.byte	0x0
	.uleb128 0x23
	.4byte	0xcfb
	.4byte	.LASF160
	.byte	0x1
	.byte	0x14
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LLST0
	.uleb128 0x24
	.ascii	"b1\000"
	.byte	0x1
	.byte	0x15
	.4byte	0xbb
	.4byte	.LLST1
	.uleb128 0x25
	.ascii	"b2\000"
	.byte	0x1
	.byte	0x15
	.4byte	0xbb
	.uleb128 0x26
	.4byte	0xc96
	.4byte	0xc0d
	.4byte	.LBB26
	.4byte	.LBE26
	.byte	0x1
	.byte	0x17
	.uleb128 0x27
	.4byte	0xc1e
	.byte	0x0
	.uleb128 0x28
	.4byte	0xcb0
	.4byte	0xc2a
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x1a
	.uleb128 0x27
	.4byte	0xc42
	.uleb128 0x27
	.4byte	0xc37
	.byte	0x0
	.uleb128 0x28
	.4byte	0xcca
	.4byte	0xc2a
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0x1b
	.uleb128 0x27
	.4byte	0xc42
	.uleb128 0x27
	.4byte	0xc37
	.byte	0x0
	.uleb128 0x28
	.4byte	0xce4
	.4byte	0xc2a
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x1c
	.uleb128 0x27
	.4byte	0xc42
	.uleb128 0x27
	.4byte	0xc37
	.byte	0x0
	.uleb128 0x29
	.4byte	0xc2a
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x1d
	.uleb128 0x27
	.4byte	0xc42
	.uleb128 0x27
	.4byte	0xc37
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	0xd90
	.4byte	.LASF161
	.byte	0x1
	.byte	0x21
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST2
	.uleb128 0x24
	.ascii	"b1\000"
	.byte	0x1
	.byte	0x22
	.4byte	0xbb
	.4byte	.LLST3
	.uleb128 0x24
	.ascii	"b2\000"
	.byte	0x1
	.byte	0x22
	.4byte	0xbb
	.4byte	.LLST4
	.uleb128 0x24
	.ascii	"b3\000"
	.byte	0x1
	.byte	0x22
	.4byte	0xbb
	.4byte	.LLST5
	.uleb128 0x25
	.ascii	"b4\000"
	.byte	0x1
	.byte	0x22
	.4byte	0xbb
	.uleb128 0x28
	.4byte	0xd5b
	.4byte	0xc0d
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0x24
	.uleb128 0x27
	.4byte	0xc1e
	.byte	0x0
	.uleb128 0x28
	.4byte	0xd75
	.4byte	0xc2a
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x29
	.uleb128 0x27
	.4byte	0xc42
	.uleb128 0x27
	.4byte	0xc37
	.byte	0x0
	.uleb128 0x2a
	.4byte	0xc2a
	.4byte	.LBB58
	.4byte	.LBE58
	.byte	0x1
	.byte	0x2a
	.uleb128 0x27
	.4byte	0xc42
	.uleb128 0x27
	.4byte	0xc37
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	0xdde
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x108
	.byte	0x1
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LLST6
	.uleb128 0x2c
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x107
	.4byte	0xd0
	.4byte	.LLST7
	.uleb128 0x2d
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x107
	.4byte	0xc5
	.byte	0x1
	.byte	0x51
	.uleb128 0x2e
	.4byte	.LBB60
	.4byte	.LBE60
	.uleb128 0x2f
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x10b
	.4byte	0xa8f
	.4byte	.LLST8
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	0xe14
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x121
	.byte	0x1
	.4byte	.LFB120
	.4byte	.LFE120
	.4byte	.LLST9
	.uleb128 0x2c
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x120
	.4byte	0xd0
	.4byte	.LLST10
	.uleb128 0x2c
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x120
	.4byte	0xbb
	.4byte	.LLST11
	.byte	0x0
	.uleb128 0x30
	.4byte	0xe4e
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x12c
	.byte	0x1
	.4byte	0xc5
	.4byte	.LFB121
	.4byte	.LFE121
	.4byte	.LLST12
	.uleb128 0x2c
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x12b
	.4byte	0xd0
	.4byte	.LLST13
	.uleb128 0x31
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x12d
	.4byte	0xc5
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x2b
	.4byte	0xe82
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x141
	.byte	0x1
	.4byte	.LFB122
	.4byte	.LFE122
	.4byte	.LLST14
	.uleb128 0x2c
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x140
	.4byte	0xd0
	.4byte	.LLST15
	.uleb128 0x2d
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x140
	.4byte	0xc5
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x32
	.4byte	0xea8
	.byte	0x1
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x162
	.4byte	.LFB123
	.4byte	.LFE123
	.4byte	.LLST16
	.uleb128 0x31
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x163
	.4byte	0xd0
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x33
	.4byte	0xef6
	.4byte	.LASF167
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.4byte	0xc5
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LLST17
	.uleb128 0x34
	.ascii	"a\000"
	.byte	0x1
	.byte	0xed
	.4byte	0xd0
	.4byte	.LLST18
	.uleb128 0x2e
	.4byte	.LBB61
	.4byte	.LBE61
	.uleb128 0x24
	.ascii	"old\000"
	.byte	0x1
	.byte	0xf3
	.4byte	0xc5
	.4byte	.LLST19
	.uleb128 0x35
	.4byte	.LASF168
	.byte	0x1
	.byte	0xf4
	.4byte	0xc5
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.4byte	0xf20
	.4byte	.LASF169
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.4byte	0xc5
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST20
	.uleb128 0x34
	.ascii	"a\000"
	.byte	0x1
	.byte	0x4a
	.4byte	0xd0
	.4byte	.LLST21
	.byte	0x0
	.uleb128 0x23
	.4byte	0xf47
	.4byte	.LASF170
	.byte	0x1
	.byte	0x2e
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST22
	.uleb128 0x36
	.4byte	.LASF171
	.byte	0x1
	.byte	0x2f
	.4byte	0xd0
	.4byte	.LLST23
	.byte	0x0
	.uleb128 0x37
	.4byte	0xf93
	.4byte	.LASF172
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LLST24
	.uleb128 0x34
	.ascii	"a\000"
	.byte	0x1
	.byte	0x69
	.4byte	0xd0
	.4byte	.LLST25
	.uleb128 0x34
	.ascii	"d\000"
	.byte	0x1
	.byte	0x69
	.4byte	0xc5
	.4byte	.LLST26
	.uleb128 0x2e
	.4byte	.LBB62
	.4byte	.LBE62
	.uleb128 0x36
	.4byte	.LASF62
	.byte	0x1
	.byte	0x6d
	.4byte	0xaac
	.4byte	.LLST27
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.4byte	0xfdf
	.4byte	.LASF173
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LLST28
	.uleb128 0x34
	.ascii	"a\000"
	.byte	0x1
	.byte	0x5b
	.4byte	0xd0
	.4byte	.LLST29
	.uleb128 0x34
	.ascii	"d\000"
	.byte	0x1
	.byte	0x5b
	.4byte	0xbb
	.4byte	.LLST30
	.uleb128 0x2e
	.4byte	.LBB63
	.4byte	.LBE63
	.uleb128 0x36
	.4byte	.LASF62
	.byte	0x1
	.byte	0x5f
	.4byte	0xaac
	.4byte	.LLST31
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.4byte	0x1012
	.4byte	.LASF174
	.byte	0x1
	.byte	0xd7
	.byte	0x1
	.4byte	.LFB116
	.4byte	.LFE116
	.4byte	.LLST32
	.uleb128 0x34
	.ascii	"a\000"
	.byte	0x1
	.byte	0xd6
	.4byte	0xd0
	.4byte	.LLST33
	.uleb128 0x34
	.ascii	"d\000"
	.byte	0x1
	.byte	0xd6
	.4byte	0xc5
	.4byte	.LLST34
	.byte	0x0
	.uleb128 0x37
	.4byte	0x1045
	.4byte	.LASF175
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LLST35
	.uleb128 0x34
	.ascii	"a\000"
	.byte	0x1
	.byte	0xe7
	.4byte	0xd0
	.4byte	.LLST36
	.uleb128 0x34
	.ascii	"d\000"
	.byte	0x1
	.byte	0xe7
	.4byte	0xbb
	.4byte	.LLST37
	.byte	0x0
	.uleb128 0x33
	.4byte	0x106f
	.4byte	.LASF176
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.4byte	0xbb
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST38
	.uleb128 0x34
	.ascii	"a\000"
	.byte	0x1
	.byte	0x41
	.4byte	0xd0
	.4byte	.LLST39
	.byte	0x0
	.uleb128 0x38
	.4byte	.LASF177
	.byte	0x4
	.2byte	0x129
	.4byte	0x107b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c2
	.uleb128 0xc
	.4byte	0x1092
	.4byte	0xc5
	.uleb128 0xd
	.4byte	0xf9
	.2byte	0xfff
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF178
	.byte	0x1
	.byte	0x6
	.4byte	0x1081
	.byte	0x5
	.byte	0x3
	.4byte	g_pvcRam
	.uleb128 0xc
	.4byte	0x10b3
	.4byte	0xd0
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x3f
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF179
	.byte	0x1
	.byte	0x7e
	.4byte	0x10c4
	.byte	0x5
	.byte	0x3
	.4byte	g_kof99Bankoffset
	.uleb128 0x1a
	.4byte	0x10a3
	.uleb128 0xc
	.4byte	0x10d9
	.4byte	0xd0
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x5
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF180
	.byte	0x1
	.byte	0x8b
	.4byte	0x10ea
	.byte	0x5
	.byte	0x3
	.4byte	g_kof99Bankbit
	.uleb128 0x1a
	.4byte	0x10c9
	.uleb128 0x39
	.4byte	.LASF181
	.byte	0x1
	.byte	0x8d
	.4byte	0x1100
	.byte	0x5
	.byte	0x3
	.4byte	g_mslug3Bankoffset
	.uleb128 0x1a
	.4byte	0x10a3
	.uleb128 0x39
	.4byte	.LASF182
	.byte	0x1
	.byte	0x9d
	.4byte	0x1116
	.byte	0x5
	.byte	0x3
	.4byte	g_mslug3Bankbit
	.uleb128 0x1a
	.4byte	0x10c9
	.uleb128 0x39
	.4byte	.LASF183
	.byte	0x1
	.byte	0x9f
	.4byte	0x112c
	.byte	0x5
	.byte	0x3
	.4byte	g_kof2000Bankoffset
	.uleb128 0x1a
	.4byte	0x10a3
	.uleb128 0x39
	.4byte	.LASF184
	.byte	0x1
	.byte	0xab
	.4byte	0x1142
	.byte	0x5
	.byte	0x3
	.4byte	g_kof2000Bankbit
	.uleb128 0x1a
	.4byte	0x10c9
	.uleb128 0x39
	.4byte	.LASF185
	.byte	0x1
	.byte	0xae
	.4byte	0x1158
	.byte	0x5
	.byte	0x3
	.4byte	g_garouBankoffset
	.uleb128 0x1a
	.4byte	0x10a3
	.uleb128 0x39
	.4byte	.LASF186
	.byte	0x1
	.byte	0xbf
	.4byte	0x116e
	.byte	0x5
	.byte	0x3
	.4byte	g_garouBankbit
	.uleb128 0x1a
	.4byte	0x10c9
	.uleb128 0x39
	.4byte	.LASF187
	.byte	0x1
	.byte	0xc1
	.4byte	0x1184
	.byte	0x5
	.byte	0x3
	.4byte	g_garouoBankoffset
	.uleb128 0x1a
	.4byte	0x10a3
	.uleb128 0x39
	.4byte	.LASF188
	.byte	0x1
	.byte	0xd4
	.4byte	0x119a
	.byte	0x5
	.byte	0x3
	.4byte	g_garouoBankbit
	.uleb128 0x1a
	.4byte	0x10c9
	.uleb128 0x3a
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x129
	.4byte	0xd0
	.byte	0x5
	.byte	0x3
	.4byte	g_fatFury2Prot
	.uleb128 0xc
	.4byte	0x11bc
	.4byte	0x49
	.uleb128 0x3b
	.byte	0x0
	.uleb128 0x3c
	.4byte	.LASF190
	.byte	0x5
	.byte	0x2c
	.4byte	0x11b1
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x11d4
	.4byte	0x49
	.uleb128 0x3b
	.byte	0x0
	.uleb128 0x3c
	.4byte	.LASF191
	.byte	0x5
	.byte	0x2d
	.4byte	0x11c9
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x11ec
	.4byte	0x49
	.uleb128 0x3b
	.byte	0x0
	.uleb128 0x3c
	.4byte	.LASF192
	.byte	0x5
	.byte	0x2e
	.4byte	0x11e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.4byte	.LASF193
	.byte	0x6
	.2byte	0x149
	.4byte	0x1208
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc01
	.uleb128 0x3e
	.4byte	.LASF194
	.byte	0x6
	.2byte	0x14d
	.4byte	0xc01
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.4byte	.LASF195
	.byte	0x6
	.2byte	0x14e
	.4byte	0x670
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
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0x26
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x1d
	.byte	0x1
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
	.uleb128 0x2a
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
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
	.4byte	0x31
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x122b
	.4byte	0xe82
	.ascii	"neoInstallProtection\000"
	.4byte	0x11f9
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
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	.LBB56-.Ltext0
	.4byte	.LBE56-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF24:
	.ascii	"clearColor\000"
.LASF38:
	.ascii	"checkpc\000"
.LASF42:
	.ascii	"write8\000"
.LASF105:
	.ascii	"smaBankbit\000"
.LASF156:
	.ascii	"cpuCheckPcTable\000"
.LASF113:
	.ascii	"spriteMask\000"
.LASF135:
	.ascii	"ctrl3Reg\000"
.LASF195:
	.ascii	"g_header\000"
.LASF47:
	.ascii	"fetch32\000"
.LASF177:
	.ascii	"glGlob\000"
.LASF121:
	.ascii	"cpuClocksPerScanline\000"
.LASF54:
	.ascii	"TRead16Func\000"
.LASF87:
	.ascii	"romBankCount\000"
.LASF181:
	.ascii	"g_mslug3Bankoffset\000"
.LASF116:
	.ascii	"tileOffsetX\000"
.LASF168:
	.ascii	"newbit\000"
.LASF154:
	.ascii	"cpuWrite16Table\000"
.LASF14:
	.ascii	"uint32\000"
.LASF20:
	.ascii	"GL_MODELVIEW\000"
.LASF118:
	.ascii	"tileScaleX\000"
.LASF119:
	.ascii	"tileScaleY\000"
.LASF166:
	.ascii	"neoFatFury2Write16\000"
.LASF162:
	.ascii	"neoKof98Write16\000"
.LASF43:
	.ascii	"write16\000"
.LASF59:
	.ascii	"TCheckPcFunc\000"
.LASF147:
	.ascii	"varEnd\000"
.LASF56:
	.ascii	"TWrite8Func\000"
.LASF39:
	.ascii	"read8\000"
.LASF188:
	.ascii	"g_garouoBankbit\000"
.LASF174:
	.ascii	"neoWriteRomBankSma16\000"
.LASF197:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoProtectio"
	.ascii	"n.c\000"
.LASF69:
	.ascii	"TNeoADPCMBStream\000"
.LASF53:
	.ascii	"TRead8Func\000"
.LASF115:
	.ascii	"pTileBuffer\000"
.LASF152:
	.ascii	"cpuRead32Table\000"
.LASF22:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF8:
	.ascii	"long int\000"
.LASF68:
	.ascii	"frequency\000"
.LASF79:
	.ascii	"audio2Offset\000"
.LASF175:
	.ascii	"neoWriteRomBankSma8\000"
.LASF57:
	.ascii	"TWrite16Func\000"
.LASF45:
	.ascii	"fetch8\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF145:
	.ascii	"keyGrid\000"
.LASF44:
	.ascii	"write32\000"
.LASF83:
	.ascii	"data\000"
.LASF48:
	.ascii	"IrqCallback\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF136:
	.ascii	"ctrl4Reg\000"
.LASF126:
	.ascii	"romBankAddress\000"
.LASF192:
	.ascii	"TAN_bin\000"
.LASF63:
	.ascii	"step\000"
.LASF90:
	.ascii	"adpcmActive\000"
.LASF176:
	.ascii	"neoReadPvc8\000"
.LASF110:
	.ascii	"vramBaseMask\000"
.LASF86:
	.ascii	"spriteCount\000"
.LASF50:
	.ascii	"UnrecognizedCallback\000"
.LASF17:
	.ascii	"char\000"
.LASF138:
	.ascii	"irqVectorLatch\000"
.LASF97:
	.ascii	"pVram\000"
.LASF139:
	.ascii	"screenDarkLatch\000"
.LASF81:
	.ascii	"name\000"
.LASF33:
	.ascii	"prev_pc\000"
.LASF65:
	.ascii	"_TNeoADPCMBStream\000"
.LASF172:
	.ascii	"neoWritePvc16\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF163:
	.ascii	"mem16\000"
.LASF32:
	.ascii	"flags\000"
.LASF16:
	.ascii	"double\000"
.LASF112:
	.ascii	"autoAnimationCounter\000"
.LASF25:
	.ascii	"textures\000"
.LASF183:
	.ascii	"g_kof2000Bankoffset\000"
.LASF19:
	.ascii	"GL_POSITION\000"
.LASF157:
	.ascii	"TNeoContext\000"
.LASF120:
	.ascii	"cpuClockDivide\000"
.LASF108:
	.ascii	"frameCount\000"
.LASF128:
	.ascii	"vramOffset\000"
.LASF72:
	.ascii	"TNeoRomEntry\000"
.LASF198:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF148:
	.ascii	"fill\000"
.LASF36:
	.ascii	"cycles\000"
.LASF189:
	.ascii	"g_fatFury2Prot\000"
.LASF155:
	.ascii	"cpuWrite32Table\000"
.LASF169:
	.ascii	"neoReadPvc16\000"
.LASF82:
	.ascii	"romEntry\000"
.LASF78:
	.ascii	"fixedBankType\000"
.LASF142:
	.ascii	"paletteRamLatch\000"
.LASF180:
	.ascii	"g_kof99Bankbit\000"
.LASF190:
	.ascii	"COS_bin\000"
.LASF184:
	.ascii	"g_kof2000Bankbit\000"
.LASF171:
	.ascii	"bankaddress\000"
.LASF94:
	.ascii	"pRam\000"
.LASF96:
	.ascii	"pCard\000"
.LASF111:
	.ascii	"displayCounter\000"
.LASF52:
	.ascii	"TCycloneContext\000"
.LASF123:
	.ascii	"watchdogCounter\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF151:
	.ascii	"cpuRead16Table\000"
.LASF131:
	.ascii	"displayControlMask\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF143:
	.ascii	"active\000"
.LASF60:
	.ascii	"Cyclone\000"
.LASF93:
	.ascii	"pBios\000"
.LASF159:
	.ascii	"pvc_w8\000"
.LASF114:
	.ascii	"paletteDirty\000"
.LASF191:
	.ascii	"SIN_bin\000"
.LASF23:
	.ascii	"matrixMode\000"
.LASF27:
	.ascii	"nextBlock\000"
.LASF187:
	.ascii	"g_garouoBankoffset\000"
.LASF150:
	.ascii	"cpuRead8Table\000"
.LASF106:
	.ascii	"smaRand\000"
.LASF61:
	.ascii	"_TNeoADPCMStream\000"
.LASF58:
	.ascii	"TWrite32Func\000"
.LASF101:
	.ascii	"smaAddr0\000"
.LASF11:
	.ascii	"long long int\000"
.LASF18:
	.ascii	"GL_PROJECTION\000"
.LASF137:
	.ascii	"coinReg\000"
.LASF66:
	.ascii	"initOffset\000"
.LASF51:
	.ascii	"internal\000"
.LASF46:
	.ascii	"fetch16\000"
.LASF178:
	.ascii	"g_pvcRam\000"
.LASF102:
	.ascii	"smaAddr1\000"
.LASF76:
	.ascii	"protection\000"
.LASF31:
	.ascii	"unused\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF130:
	.ascii	"displayControl\000"
.LASF104:
	.ascii	"smaBankoffset\000"
.LASF21:
	.ascii	"GL_TEXTURE\000"
.LASF164:
	.ascii	"neoKof98Write8\000"
.LASF109:
	.ascii	"pVramBase\000"
.LASF62:
	.ascii	"offset\000"
.LASF91:
	.ascii	"pRom0\000"
.LASF185:
	.ascii	"g_garouBankoffset\000"
.LASF117:
	.ascii	"tileOffsetY\000"
.LASF153:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF26:
	.ascii	"activeTexture\000"
.LASF80:
	.ascii	"sectionCount\000"
.LASF134:
	.ascii	"ctrl2Reg\000"
.LASF40:
	.ascii	"read16\000"
.LASF124:
	.ascii	"paletteBank\000"
.LASF194:
	.ascii	"g_neoContext\000"
.LASF37:
	.ascii	"membase\000"
.LASF196:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF165:
	.ascii	"neoFatFury2Read16\000"
.LASF107:
	.ascii	"scanline\000"
.LASF71:
	.ascii	"size\000"
.LASF99:
	.ascii	"pPalette\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF144:
	.ascii	"debug\000"
.LASF167:
	.ascii	"neoReadSma16\000"
.LASF173:
	.ascii	"neoWritePvc8\000"
.LASF92:
	.ascii	"pRom1\000"
.LASF158:
	.ascii	"pvc_r8\000"
.LASF75:
	.ascii	"version\000"
.LASF41:
	.ascii	"read32\000"
.LASF84:
	.ascii	"TNeoRomHeader\000"
.LASF182:
	.ascii	"g_mslug3Bankbit\000"
.LASF98:
	.ascii	"pSpriteRam\000"
.LASF49:
	.ascii	"ResetCallback\000"
.LASF141:
	.ascii	"sramProtectLatch\000"
.LASF125:
	.ascii	"fixedBank\000"
.LASF179:
	.ascii	"g_kof99Bankoffset\000"
.LASF193:
	.ascii	"g_neo\000"
.LASF74:
	.ascii	"magic\000"
.LASF186:
	.ascii	"g_garouBankbit\000"
.LASF160:
	.ascii	"neoPvcProt1\000"
.LASF161:
	.ascii	"neoPvcProt2\000"
.LASF29:
	.ascii	"nameCount\000"
.LASF133:
	.ascii	"ctrl1Reg\000"
.LASF35:
	.ascii	"state_flags\000"
.LASF77:
	.ascii	"sramProtection\000"
.LASF95:
	.ascii	"pSram\000"
.LASF67:
	.ascii	"freqCounter\000"
.LASF4:
	.ascii	"short int\000"
.LASF146:
	.ascii	"frameCounter\000"
.LASF89:
	.ascii	"adpcmb\000"
.LASF28:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF132:
	.ascii	"displayCounterLoad\000"
.LASF122:
	.ascii	"irqPending\000"
.LASF170:
	.ascii	"neoPvcWriteBank\000"
.LASF70:
	.ascii	"_TNeoRomEntry\000"
.LASF73:
	.ascii	"_TNeoRomHeader\000"
.LASF55:
	.ascii	"TRead32Func\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF88:
	.ascii	"adpcm\000"
.LASF15:
	.ascii	"float\000"
.LASF30:
	.ascii	"gl_hidden_globals\000"
.LASF199:
	.ascii	"neoInstallProtection\000"
.LASF85:
	.ascii	"pVideoWriteTable\000"
.LASF100:
	.ascii	"bankTable\000"
.LASF103:
	.ascii	"smaBankAddr\000"
.LASF149:
	.ascii	"_TNeoContext\000"
.LASF34:
	.ascii	"reserved\000"
.LASF140:
	.ascii	"fixedRomLatch\000"
.LASF127:
	.ascii	"sramProtectCount\000"
.LASF64:
	.ascii	"TNeoADPCMStream\000"
.LASF129:
	.ascii	"vramMod\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
