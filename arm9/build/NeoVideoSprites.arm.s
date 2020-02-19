	.file	"NeoVideoSprites.arm.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	neoSpriteExit
	.type	neoSpriteExit, %function
neoSpriteExit:
.LFB108:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoVideoSprites.arm.c"
	.loc 1 239 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ lr needed for prologue
	.loc 1 241 0
	bx	lr
.LFE108:
	.size	neoSpriteExit, .-neoSpriteExit
	.align	2
	.global	neoLoadSprites
	.type	neoLoadSprites, %function
neoLoadSprites:
.LFB112:
	.loc 1 553 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI0:
	.loc 1 560 0
	mov	r0, #0
	mov	r1, r0
	mov	r3, r0
	.loc 1 553 0
	sub	sp, sp, #12
.LCFI1:
	.loc 1 560 0
	mov	r2, r0
	bl	vramSetMainBanks
	.loc 1 563 0
	ldr	r3, .L12
	ldr	lr, .L12+4
	ldr	r3, [r3, #0]
	ldr	ip, .L12+8
.LVL0:
	sub	r1, r3, #1
.LVL1:
	b	.L4
.LVL2:
.L5:
	.loc 1 565 0
	ldr	r3, [lr, #-4]
	.loc 1 564 0
	mov	r2, #67108864
	str	ip, [r2, #212]
	.loc 1 565 0
	str	r3, [r2, #216]
	.loc 1 566 0
	ldr	r3, .L12+12
	str	r3, [r2, #220]
	.loc 1 569 0
	ldr	r3, [r2, #220]
	str	r3, [sp, #4]
	.loc 1 570 0
	ldr	r3, [r2, #220]
	str	r3, [sp, #4]
.L6:
	.loc 1 571 0
	mov	r3, #67108864
	ldr	r3, [r3, #220]
	cmp	r3, #0
	blt	.L6
	.loc 1 567 0
	add	ip, ip, #1024
	.loc 1 563 0
	sub	r1, r1, #1
	add	lr, lr, #4
.L4:
	cmp	r1, #0
	bge	.L5
	.loc 1 576 0
	add	sp, sp, #12
	ldr	lr, [sp], #4
	.loc 1 575 0
	b	vramRestoreMainBanks
.LVL3:
.L13:
	.align	2
.L12:
	.word	g_spriteTransferIndex
	.word	g_spriteTransfer+4
	.word	g_spriteLoadBuffer
	.word	-2080374528
.LFE112:
	.size	neoLoadSprites, .-neoLoadSprites
	.align	2
	.global	neoDrawSprites
	.type	neoDrawSprites, %function
neoDrawSprites:
.LFB111:
	.loc 1 275 0
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
.LCFI2:
	.loc 1 276 0
	ldr	r3, .L113
	.loc 1 275 0
	sub	sp, sp, #96
.LCFI3:
	.loc 1 276 0
	ldr	r3, [r3, #0]
	.loc 1 291 0
	mov	r1, #0
	.loc 1 276 0
	str	r3, [sp, #12]
.LVL4:
	.loc 1 295 0
	ldr	r3, .L113+4
	.loc 1 294 0
	ldr	r4, [sp, #12]
	.loc 1 295 0
	str	r3, [sp, #48]
.LVL5:
	.loc 1 291 0
	ldr	r3, .L113+8
	.loc 1 294 0
	mov	r2, #67108864
	.loc 1 291 0
	str	r1, [r3, #0]
	.loc 1 295 0
	ldr	r3, .L113+12
	mov	r0, #1
	mov	lr, #8192
	.loc 1 294 0
	str	r4, [r2, #212]
	.loc 1 295 0
	str	r1, [sp, #16]
.LVL6:
	str	r0, [sp, #32]
.LVL7:
	str	r3, [r2, #216]
	mvn	r5, #0
.LVL8:
	str	r1, [sp, #20]
.LVL9:
	str	r1, [sp, #24]
.LVL10:
	str	r0, [sp, #28]
.LVL11:
	str	lr, [sp, #36]
.LVL12:
	str	r1, [sp, #40]
.LVL13:
	str	r1, [sp, #44]
.LVL14:
	str	r1, [sp, #52]
.LVL15:
	str	r1, [sp, #56]
.LVL16:
.LVL17:
.L15:
.LBB14:
	.loc 1 298 0
	ldr	r1, [sp, #56]
	ldr	r0, [r7, #348]
.LVL18:
	orr	r3, r1, #512
	mov	r3, r3, asl #1
	ldrh	r2, [r3, r0]
	mov	lr, r7
	.loc 1 300 0
	ands	ip, r2, #64
	beq	.L16
	.loc 1 302 0
	ldr	r2, [sp, #40]
.LVL19:
	cmp	r2, #0
	beq	.L18
	.loc 1 307 0
	mov	r3, r1, asl #1
	.loc 1 306 0
	ldr	r4, [sp, #20]
	ldr	ip, [sp, #28]
	.loc 1 307 0
	ldrh	r3, [r3, r0]
	.loc 1 306 0
	add	r2, r4, ip
	.loc 1 307 0
	and	r3, r3, #3840
	.loc 1 306 0
	mov	r2, r2, asl #23
	.loc 1 307 0
	add	r3, r3, #256
	.loc 1 306 0
	mov	r2, r2, lsr #23
	.loc 1 307 0
	mov	r3, r3, lsr #8
	.loc 1 306 0
	str	r2, [sp, #20]
	.loc 1 307 0
	str	r3, [sp, #28]
	b	.L20
.LVL20:
.L16:
	.loc 1 311 0
	ands	r1, r2, #63
	str	r1, [sp, #40]
	beq	.L18
	.loc 1 315 0
	ldr	r4, [sp, #56]
	mov	r3, r4, asl #1
	ldrh	r1, [r3, r0]
.LVL21:
	.loc 1 316 0
	orr	r3, r4, #1024
	mov	r3, r3, asl #1
	ldrh	r0, [r3, r0]
	.loc 1 322 0
	ldr	r4, [sp, #40]
	.loc 1 317 0
	mov	r3, r2, lsr #7
	.loc 1 319 0
	and	r2, r1, #3840
.LVL22:
	.loc 1 322 0
	cmp	r4, #32
	.loc 1 318 0
	and	r1, r1, #255
.LVL23:
	.loc 1 316 0
	mov	r0, r0, lsr #7
	.loc 1 317 0
	mov	r3, r3, asl #4
	.loc 1 319 0
	add	r2, r2, #256
	.loc 1 318 0
	str	r1, [sp, #16]
	.loc 1 316 0
	str	r0, [sp, #20]
	.loc 1 317 0
	rsb	r3, r3, #8192
	.loc 1 320 0
	add	r0, r1, #1
	.loc 1 319 0
	mov	r2, r2, lsr #8
	.loc 1 322 0
	movle	r1, #8192
	.loc 1 317 0
	str	r3, [sp, #24]
	.loc 1 319 0
	str	r2, [sp, #28]
	.loc 1 320 0
	str	r0, [sp, #32]
	.loc 1 322 0
	strle	ip, [sp, #44]
	strle	r1, [sp, #36]
	ble	.L20
	.loc 1 328 0
	ldr	r2, [sp, #24]
	ldr	r4, [sp, #32]
	add	r3, r2, r4
	cmp	r3, #4096
	.loc 1 326 0
	mov	ip, r4, asl #5
	.loc 1 329 0
	subge	r2, r2, #8192
	.loc 1 326 0
	str	ip, [sp, #36]
	.loc 1 329 0
	strge	r2, [sp, #24]
	b	.L104
.L26:
	ldr	r0, [sp, #24]
	ldr	r1, [sp, #36]
	add	r0, r0, r1
	str	r0, [sp, #24]
.L104:
	.loc 1 331 0
	ldr	r2, [sp, #24]
	cmn	r2, #256
	blt	.L26
	mov	r3, #32
	mov	r4, #1
	str	r3, [sp, #40]
	str	r4, [sp, #44]
.L20:
	.loc 1 340 0
	ldr	ip, [sp, #20]
	ldr	r0, [sp, #28]
	add	r3, ip, r0
	cmp	r3, #512
	.loc 1 341 0
	subge	ip, ip, #512
	strge	ip, [sp, #20]
	.loc 1 345 0
	ldr	r3, [sp, #28]
	ldr	r0, .L113+16
	ldr	r1, [sp, #20]
	add	r2, r1, r3
	ldr	r3, [r0, #0]
	cmp	r2, r3
	blt	.L18
	ldr	r3, [r0, #8]
	cmp	r1, r3
	bgt	.L18
	.loc 1 361 0
	ldr	r4, [sp, #56]
	.loc 1 357 0
	ldr	ip, [sp, #28]
	.loc 1 361 0
	sub	r3, r4, #4080
	.loc 1 358 0
	ldr	r4, [sp, #32]
	.loc 1 357 0
	mov	r1, ip, asl #10
	.loc 1 350 0
	ldr	ip, [lr, #344]
	.loc 1 358 0
	ldr	lr, [sp, #12]
	mov	r2, r4, asl #10
	.loc 1 361 0
	sub	r3, r3, #15
	.loc 1 358 0
	str	r2, [lr, #20]
	.loc 1 361 0
	str	r3, [lr, #48]
	.loc 1 359 0
	ldr	r2, [sp, #20]
	.loc 1 360 0
	ldr	r3, [sp, #24]
	.loc 1 357 0
	str	r1, [lr, #4]
	.loc 1 360 0
	str	r3, [lr, #44]
	.loc 1 359 0
	str	r2, [lr, #40]
	.loc 1 363 0
	ldr	r3, .L113+20
	ldr	r2, [r0, #8]
	.loc 1 367 0
	ldr	r4, [sp, #44]
	.loc 1 363 0
	cmp	r2, r3
	.loc 1 364 0
	addne	r3, r1, #32
	strne	r3, [lr, #4]
	.loc 1 367 0
	cmp	r4, #0
	.loc 1 368 0
	ldrne	lr, [sp, #40]
	ldrne	r0, [sp, #32]
	.loc 1 370 0
	ldreq	r3, [sp, #40]
	.loc 1 368 0
	mulne	lr, r0, lr
	.loc 1 350 0
	ldr	r2, [sp, #56]
	ldr	fp, [sp, #24]
	mov	r1, #0
	.loc 1 370 0
	moveq	r3, r3, asl #8
	.loc 1 350 0
	add	ip, ip, r2, asl #7
	.loc 1 370 0
	streq	r3, [sp, #64]
	.loc 1 368 0
	strne	lr, [sp, #64]
	.loc 1 350 0
	str	r1, [sp, #60]
	str	ip, [sp, #4]
	str	r1, [sp, #68]
	str	r1, [sp, #72]
	b	.L37
.LVL24:
.L38:
.LBB15:
	.loc 1 374 0
	ldr	ip, [sp, #4]
	ldr	r4, [sp, #72]
	.loc 1 376 0
	cmp	fp, #3968
	.loc 1 374 0
	ldr	r4, [ip, r4, asl #2]
	.loc 1 382 0
	ldr	r2, .L113+16
	.loc 1 379 0
	ldrge	ip, [sp, #36]
	.loc 1 382 0
	ldr	r0, [sp, #32]
.LVL25:
	.loc 1 379 0
	rsbge	fp, ip, fp
	.loc 1 382 0
	ldr	r3, [r2, #4]
.LVL26:
	.loc 1 379 0
	movge	lr, #1
	.loc 1 382 0
	add	r0, fp, r0
	.loc 1 379 0
	strge	lr, [sp, #68]
	.loc 1 382 0
	cmp	r0, r3
	.loc 1 374 0
	str	r4, [sp, #76]
	.loc 1 382 0
	str	r0, [sp, #84]
	blt	.L41
	ldr	r3, [r2, #12]
	cmp	fp, r3
	bgt	.L41
.LBB16:
.LBB17:
	.loc 1 245 0
	ldr	r4, [sp, #76]
	.loc 1 246 0
	ldr	r3, [r7, #536]
	.loc 1 245 0
	and	r2, r4, #7340032
	.loc 1 246 0
	tst	r3, #8
	.loc 1 245 0
	mov	r2, r2, lsr #4
	mov	r3, r4, asl #16
	.loc 1 246 0
	mov	r1, r7
	.loc 1 245 0
	orr	r2, r2, r3, lsr #16
.LVL27:
	.loc 1 246 0
	bne	.L44
	.loc 1 248 0
	tst	r4, #524288
	.loc 1 249 0
	ldrne	r3, [r7, #404]
	bicne	r2, r2, #7
.LVL28:
	andne	r3, r3, #7
	.loc 1 248 0
	bne	.L112
	.loc 1 250 0
	ldr	ip, [sp, #76]
	tst	ip, #262144
	beq	.L44
	.loc 1 251 0
	ldr	r3, [r7, #404]
.LVL29:
	bic	r2, r2, #3
.LVL30:
	and	r3, r3, #3
.L112:
	orr	r2, r2, r3
.LVL31:
.L44:
	.loc 1 254 0
	ldr	r3, [r1, #408]
	and	r2, r2, r3
.LVL32:
.LBE17:
.LBE16:
	.loc 1 388 0
	ldr	r3, .L113+24
	mov	lr, r2, lsr #3
	ldrb	r3, [r3, lr]	@ zero_extendqisi2
.LBB18:
.LBB19:
	.loc 1 254 0
	str	r2, [sp, #80]
.LBE19:
.LBE18:
	.loc 1 388 0
	and	r2, r2, #7
	mov	r3, r3, asr r2
	tst	r3, #1
	beq	.L41
	.loc 1 395 0
	ldr	r2, .L113+28
	mov	r3, lr, asl #1
	ldrh	r8, [r3, r2]
	.loc 1 398 0
	ldr	r0, [sp, #52]
	cmp	r8, #65280
	movne	r3, #0
	moveq	r3, #1
	cmp	r0, #512
	movcs	r3, #0
	cmp	r3, #0
	beq	.L50
	ldr	r1, .L113+8
	ldr	r2, [r1, #0]
	cmp	r2, #63
	str	r2, [sp, #8]
	bhi	.L50
.LBB20:
	.loc 1 406 0
	ldr	r3, .L113+32
	.loc 1 401 0
	ldr	r4, [sp, #8]
	.loc 1 406 0
	ldrh	r2, [r3, #0]
	ldr	r3, .L113+36
	ldr	r8, [r3, #0]
	.loc 1 401 0
	add	r3, r4, #1
	str	r3, [r1, #0]
.L53:
	.loc 1 405 0
	add	r3, r8, #1
	mov	r8, r3, asl #23
	mov	r8, r8, lsr #23
	.loc 1 406 0
	ldr	ip, .L113+40
	mov	r0, r8, asl #2
	add	r3, r0, ip
	ldrh	r3, [r3, #2]
	cmp	r3, r2
	beq	.L53
	.loc 1 412 0
	ldrh	r3, [r0, ip]
	ldr	r1, .L113+28
	.loc 1 415 0
	strh	lr, [r0, ip]	@ movhi
	.loc 1 412 0
	mov	r3, r3, asl #1
	mvn	ip, #255	@ movhi
	strh	ip, [r3, r1]	@ movhi
	.loc 1 406 0
	ldr	r3, .L113+36
	.loc 1 414 0
	mov	r2, lr, asl #1
	strh	r8, [r2, r1]	@ movhi
	.loc 1 406 0
	str	r8, [r3, #0]
.L55:
	.loc 1 418 0
	mov	r6, #67108864
	ldr	r3, [r6, #212]
	cmp	r3, #0
	blt	.L55
	.loc 1 420 0
	ldr	r4, .L113+44
	ldr	r3, [r4, #0]
	cmp	r3, #0
	beq	.L57
.LBB21:
	.loc 1 421 0
	ldr	lr, [sp, #80]
	mov	sl, lr, lsr #5
	.loc 1 423 0
	and	r3, lr, #31
	.loc 1 426 0
	cmp	r5, sl
	.loc 1 423 0
	mov	r9, r3, lsr #3
	.loc 1 426 0
	bne	.L59
	.loc 1 427 0
	ldr	r3, .L113+48
	.loc 1 428 0
	ldr	r0, [sp, #48]
	.loc 1 427 0
	ldr	r3, [r3, #0]
	add	r3, r3, r9, asl #10
	str	r3, [r6, #212]
	.loc 1 429 0
	ldr	r3, .L113+52
	.loc 1 428 0
	str	r0, [r6, #216]
	.loc 1 429 0
	str	r3, [r6, #220]
	b	.L61
.L59:
	.loc 1 432 0
	bl	systemSlot2Unlock
	.loc 1 433 0
	ldr	r0, [r4, #0]
	mov	ip, sl, asl #1
	ldrh	r3, [r0, ip]
	.loc 1 434 0
	cmp	r3, #65280
	bne	.L62
.LBB22:
	.loc 1 435 0
	ldr	r1, .L113+56
	.loc 1 436 0
	ldr	r2, .L113+60
	.loc 1 435 0
	ldr	r3, [r1, #0]
	.loc 1 436 0
	ldr	r2, [r2, #0]
	.loc 1 435 0
	add	r3, r3, #1
	.loc 1 436 0
	cmp	r3, r2
	.loc 1 435 0
	str	r3, [r1, #0]
	.loc 1 437 0
	movcs	r3, #0
	strcs	r3, [r1, #0]
	.loc 1 442 0
	ldr	r3, .L113+64
	.loc 1 439 0
	ldr	r5, [r1, #0]
.LVL33:
	.loc 1 442 0
	ldr	r1, [r3, #0]
	mov	r2, r5, asl #2
	ldrh	r3, [r2, r1]
	.loc 1 443 0
	cmp	r3, #65280
	.loc 1 446 0
	movne	r3, r3, asl #1
	mvnne	r4, #255	@ movhi
	strneh	r4, [r3, r0]	@ movhi
	.loc 1 456 0
	ldr	r4, .L113+48
	.loc 1 450 0
	strh	r5, [r0, ip]	@ movhi
	.loc 1 451 0
	strh	sl, [r2, r1]	@ movhi
	.loc 1 454 0
	bl	systemSlot2Lock
	.loc 1 456 0
	ldr	r0, [r4, #0]
	mov	r1, sl
	orr	r0, r0, #4194304
	bl	neoSystemLoadSprite2
	.loc 1 458 0
	bl	systemSlot2Unlock
	.loc 1 460 0
	ldr	r3, .L113+68
	.loc 1 459 0
	ldr	r2, [r4, #0]
	.loc 1 460 0
	ldr	r3, [r3, #0]
	.loc 1 459 0
	str	r2, [r6, #212]
	.loc 1 460 0
	add	r3, r3, r5, asl #12
	str	r3, [r6, #216]
	.loc 1 461 0
	ldr	r3, .L113+72
	str	r3, [r6, #220]
	.loc 1 462 0
	ldr	r3, [r6, #220]
	str	r3, [sp, #92]
	.loc 1 463 0
	ldr	r3, [r6, #220]
	str	r3, [sp, #92]
.L68:
	.loc 1 464 0
	mov	r4, #67108864
	ldr	r3, [r4, #212]
	cmp	r3, #0
	blt	.L68
	.loc 1 466 0
	bl	systemSlot2Lock
	.loc 1 468 0
	ldr	r3, .L113+48
	.loc 1 469 0
	ldr	ip, [sp, #48]
	.loc 1 468 0
	ldr	r3, [r3, #0]
	.loc 1 470 0
	mov	r5, sl
.LVL34:
	.loc 1 468 0
	add	r3, r3, r9, asl #10
	str	r3, [r4, #212]
	.loc 1 470 0
	ldr	r3, .L113+52
	.loc 1 469 0
	str	ip, [r4, #216]
	.loc 1 470 0
	str	r3, [r4, #220]
	b	.L61
.L62:
.LBE22:
	.loc 1 474 0
	add	r2, r9, r3, asl #2
	ldr	r3, .L113+68
	.loc 1 475 0
	ldr	lr, [sp, #48]
	.loc 1 474 0
	ldr	r3, [r3, #0]
	add	r3, r3, r2, asl #10
	str	r3, [r6, #212]
	.loc 1 476 0
	ldr	r3, .L113+52
	.loc 1 475 0
	str	lr, [r6, #216]
	.loc 1 476 0
	str	r3, [r6, #220]
.L70:
	.loc 1 477 0
	mov	r3, #67108864
	ldr	r3, [r3, #212]
	cmp	r3, #0
	blt	.L70
	.loc 1 479 0
	bl	systemSlot2Lock
	b	.L61
.L57:
.LBE21:
	.loc 1 484 0
	mov	r1, lr
	ldr	r0, [sp, #48]
	bl	neoSystemLoadSprite
.L61:
	.loc 1 488 0
	ldr	r2, .L113+76
	mov	r3, r8, asl #10
	ldr	r0, [sp, #8]
	add	r3, r3, #109051904
	str	r3, [r2, r0, asl #2]
	.loc 1 491 0
	ldr	r3, .L113+12
	.loc 1 490 0
	ldr	r2, [sp, #12]
	mov	r1, #67108864
	str	r2, [r1, #212]
	.loc 1 491 0
	str	r3, [r1, #216]
	.loc 1 487 0
	ldr	r3, [sp, #48]
	add	r3, r3, #1024
	str	r3, [sp, #48]
.L50:
.LBE20:
	.loc 1 494 0
	cmp	r8, #65280
	beq	.L41
	.loc 1 501 0
	ldr	r3, [sp, #68]
	ldr	r4, [sp, #60]
	cmp	r4, #31
	orrhi	r3, r3, #1
	cmp	r3, #0
	beq	.L73
	.loc 1 503 0
	cmp	r4, #0
	beq	.L75
.L92:
.LBB23:
	.loc 1 505 0
	mov	r2, #67108864
	ldr	r3, [r2, #212]
	cmp	r3, #0
	blt	.L92
	.loc 1 507 0
	ldr	ip, [sp, #60]
	mov	r3, #36
	mul	r3, ip, r3
	add	r3, r3, #56
	mov	r3, r3, lsr #2
	orr	r3, r3, #-1140850688
	orr	r3, r3, #4194304
	str	r3, [r2, #220]
.L75:
.LBE23:
	.loc 1 511 0
	ldr	r0, [sp, #12]
	mov	lr, #0
	str	lr, [sp, #60]
	str	fp, [r0, #44]
	str	lr, [sp, #68]
.L73:
	.loc 1 515 0
	ldr	r3, .L113+40
	.loc 1 517 0
	ldr	r0, [sp, #60]
	.loc 1 515 0
	add	r1, r3, r8, asl #2
	ldr	r3, .L113+32
.LBB24:
.LBB25:
	.loc 1 260 0
	ldr	r4, [sp, #76]
.LBE25:
.LBE24:
	.loc 1 515 0
	ldrh	r2, [r3, #0]
	ldrh	r3, [r1, #2]
	.loc 1 517 0
	ldr	ip, [sp, #12]
	.loc 1 515 0
	cmp	r3, r2
	.loc 1 517 0
	strneh	r2, [r1, #2]	@ movhi
.LBB26:
.LBB27:
	.loc 1 260 0
	ldr	r2, [sp, #80]
.LBE27:
.LBE26:
	.loc 1 517 0
	mov	r3, #36
	mul	r0, r3, r0
.LBB28:
.LBB29:
	.loc 1 260 0
	and	r3, r2, #7
	add	r3, r3, r8, asl #3
	mov	r3, r3, asl #4
.LBE29:
.LBE28:
	.loc 1 516 0
	ldrne	r1, [sp, #52]
.LBB30:
.LBB31:
	.loc 1 260 0
	orr	r3, r3, #-335544320
	and	r2, r4, #196608
.LBE31:
.LBE30:
	.loc 1 517 0
	add	r0, r0, #56
.LBB32:
.LBB33:
	.loc 1 260 0
	orr	r3, r3, #9633792
	orr	r3, r3, r2, asl #2
.LBE33:
.LBE32:
	.loc 1 516 0
	addne	r1, r1, #1
	.loc 1 517 0
	add	r0, ip, r0
.LVL35:
.LBB34:
.LBB35:
	.loc 1 260 0
	str	r3, [r0, #4]
.LBE35:
.LBE34:
	.loc 1 516 0
	strne	r1, [sp, #52]
.LBB36:
.LBB37:
	.loc 1 270 0
	ldr	r3, .L113+80
	ldrb	r1, [r7, #572]	@ zero_extendqisi2
.LBE37:
.LBE36:
	.loc 1 524 0
	ldr	lr, [sp, #60]
.LBB38:
.LBB39:
	.loc 1 270 0
	mov	r2, r4, lsr #23
	and	r3, r2, r3
	add	r3, r3, r1, asl #9
.LBE39:
.LBE38:
	.loc 1 524 0
	add	lr, lr, #1
	str	lr, [sp, #60]
.LBB40:
.LBB41:
	.loc 1 270 0
	strh	r3, [r0, #8]	@ movhi
	b	.L80
.LVL36:
.L41:
.LBE41:
.LBE40:
	.loc 1 525 0
	mov	r0, #1
	str	r0, [sp, #68]
.LVL37:
.L80:
	.loc 1 527 0
	ldr	r2, [sp, #64]
	.loc 1 528 0
	ldr	r4, [sp, #72]
	.loc 1 530 0
	ldr	r1, [sp, #44]
	.loc 1 527 0
	ldr	r3, [sp, #32]
	.loc 1 528 0
	add	r4, r4, #1
	.loc 1 527 0
	rsb	r2, r3, r2
	.loc 1 530 0
	cmp	r1, #0
	.loc 1 527 0
	str	r2, [sp, #64]
	.loc 1 528 0
	str	r4, [sp, #72]
	.loc 1 530 0
	bne	.L81
	cmp	r4, #32
	cmpne	r4, #16
	bne	.L81
.LBB42:
	.loc 1 531 0
	ldr	ip, [sp, #16]
	.loc 1 532 0
	ldr	lr, [sp, #84]
	.loc 1 531 0
	rsb	r3, ip, #255
	mov	r3, r3, asl #5
.LVL38:
	.loc 1 533 0
	rsb	r2, r3, r2
	.loc 1 532 0
	add	lr, lr, r3
	.loc 1 533 0
	mov	r0, #1
.LVL39:
	str	r2, [sp, #64]
	.loc 1 532 0
	str	lr, [sp, #84]
	.loc 1 533 0
	str	r0, [sp, #68]
.LVL40:
.L81:
	ldr	fp, [sp, #84]
.L37:
.LBE42:
.LBE15:
	.loc 1 373 0
	ldr	r1, [sp, #64]
	cmp	r1, #0
	bgt	.L38
	.loc 1 538 0
	ldr	r2, [sp, #60]
	cmp	r2, #0
	beq	.L18
.L91:
.LBB43:
	.loc 1 540 0
	mov	r2, #67108864
	ldr	r3, [r2, #212]
.LVL41:
	cmp	r3, #0
	blt	.L91
	.loc 1 542 0
	ldr	r4, [sp, #60]
	mov	r3, #36
	mul	r3, r4, r3
	add	r3, r3, #56
	mov	r3, r3, lsr #2
	orr	r3, r3, #-1140850688
	orr	r3, r3, #4194304
	str	r3, [r2, #220]
.LVL42:
.L18:
.LBE43:
.LBE14:
	.loc 1 297 0
	ldr	ip, [sp, #56]
	ldr	r3, .L113+84
.LVL43:
	add	ip, ip, #1
	cmp	ip, r3
	str	ip, [sp, #56]
	bne	.L15
.L93:
	.loc 1 547 0
	mov	r3, #67108864
	ldr	r3, [r3, #212]
	cmp	r3, #0
	blt	.L93
.L94:
	.loc 1 548 0
	mov	r3, #67108864
	ldr	r3, [r3, #1536]
	tst	r3, #134217728
	bne	.L94
	.loc 1 549 0
	ldr	r3, .L113+88
	ldrh	r2, [r3, #4]
.LVL44:
	ldr	r3, .L113+92
	str	r2, [r3, #0]
	.loc 1 550 0
	add	sp, sp, #96
	ldmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}
.L114:
	.align	2
.L113:
	.word	g_spriteList
	.word	g_spriteLoadBuffer
	.word	g_spriteTransferIndex
	.word	67109888
	.word	g_videoBounds
	.word	287
	.word	g_spriteUsed
	.word	g_spriteTable
	.word	g_frameCount
	.word	g_cacheIndex
	.word	g_spriteCache
	.word	g_spriteTable2
	.word	g_spriteReadBuffer
	.word	-2080374528
	.word	g_cache2Index
	.word	g_spriteCache2Count
	.word	g_spriteCache2
	.word	g_spriteCache2Ram
	.word	-2080373760
	.word	g_spriteTransfer
	.word	510
	.word	381
	.word	67110400
	.word	g_spriteCount
.LFE111:
	.size	neoDrawSprites, .-neoDrawSprites
	.align	2
	.global	neoSpriteInit
	.type	neoSpriteInit, %function
neoSpriteInit:
.LFB107:
	.loc 1 96 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
.LCFI4:
	.loc 1 99 0
	ldr	r0, .L148
	bl	neoSystemVramHAlloc
	ldr	r3, .L148+4
	.loc 1 103 0
	mov	r2, #0
	.loc 1 99 0
	str	r0, [r3, #0]
	.loc 1 101 0
	ldr	r3, .L148+8
	.loc 1 102 0
	mov	r1, #1024
	.loc 1 101 0
	str	r3, [r0, #0]
	.loc 1 118 0
	mov	r3, #1
	.loc 1 112 0
	str	r1, [r0, #36]
	.loc 1 118 0
	str	r3, [r0, #52]
	.loc 1 102 0
	stmib	r0, {r1, r2}	@ phole stm
	.loc 1 104 0
	str	r2, [r0, #12]
	.loc 1 106 0
	str	r2, [r0, #16]
	.loc 1 107 0
	str	r1, [r0, #20]
	.loc 1 108 0
	str	r2, [r0, #24]
	.loc 1 110 0
	str	r2, [r0, #28]
	.loc 1 111 0
	str	r2, [r0, #32]
	.loc 1 114 0
	str	r2, [r0, #40]
	.loc 1 115 0
	str	r2, [r0, #44]
	.loc 1 116 0
	str	r2, [r0, #48]
	.loc 1 118 0
	mov	r4, r0
	mov	r5, r2
.L116:
.LBB49:
	.loc 1 124 0
	add	r1, r5, #1
	.loc 1 126 0
	ldr	r3, .L148+12
	.loc 1 123 0
	mov	lr, r5, asl #18
.LVL45:
	.loc 1 133 0
	mvn	r2, r5
	.loc 1 138 0
	mov	r5, r1
	.loc 1 124 0
	mov	r1, r1, asl #18
.LVL46:
	.loc 1 137 0
	orr	r0, r1, #4
	.loc 1 126 0
	str	r3, [r4, #56]
	.loc 1 133 0
	and	r2, r2, #1
	.loc 1 128 0
	ldr	r3, .L148+16
	.loc 1 137 0
	str	r0, [r4, #84]
	.loc 1 133 0
	mov	r2, r2, asl #8
	.loc 1 138 0
	orr	ip, lr, #4
	.loc 1 131 0
	mov	r0, #256	@ movhi
.LBE49:
	.loc 1 122 0
	cmp	r5, #32
.LBB50:
	.loc 1 128 0
	str	r3, [r4, #72]
	.loc 1 133 0
	strh	r2, [r4, #70]	@ movhi
	.loc 1 138 0
	str	ip, [r4, #88]
	.loc 1 131 0
	strh	r0, [r4, #68]	@ movhi
	.loc 1 135 0
	str	lr, [r4, #76]
	.loc 1 136 0
	str	r1, [r4, #80]
	.loc 1 138 0
	add	r4, r4, #36
.LBE50:
	.loc 1 122 0
	bne	.L116
	.loc 1 141 0
	mov	r0, #3
	bl	vramSetBankA
.LVL47:
	.loc 1 142 0
	mov	r0, #11
	bl	vramSetBankB
	.loc 1 143 0
	mov	r0, #19
	bl	vramSetBankC
	.loc 1 144 0
	mov	r0, #27
	bl	vramSetBankD
	ldr	r4, .L148+20
.L118:
	.loc 1 147 0
	mvn	r3, #255	@ movhi
	strh	r3, [r4], #2	@ movhi
	.loc 1 146 0
	ldr	r3, .L148+24
	cmp	r4, r3
	bne	.L118
	.loc 1 150 0
	ldr	ip, .L148+28
	.loc 1 153 0
	mov	r0, #0
	.loc 1 150 0
	mov	lr, #0	@ movhi
	.loc 1 153 0
	mov	r1, r0
	mov	r2, r0
	mov	r3, r0
	.loc 1 150 0
	strh	lr, [ip, #0]	@ movhi
	.loc 1 153 0
	bl	vramSetMainBanks
	ldr	sl, .L148+32
	mov	r9, r0
.LVL48:
	sub	fp, r4, #131072
	mov	r5, #0
.LVL49:
	mov	r8, #109051904
.L120:
.LBB51:
	.loc 1 160 0
	ldr	r4, .L148+36
.LBE51:
	.loc 1 153 0
	mov	r3, r5, asl #16
	mov	r6, r3, lsr #16
.LBB52:
	.loc 1 160 0
	mov	r1, r5
	mov	r0, r4
	.loc 1 158 0
	strh	r6, [sl, #0]	@ movhi
	.loc 1 160 0
	bl	neoSystemLoadSprite
	.loc 1 162 0
	mov	r0, r4
	mov	r1, #1024
	bl	DC_FlushRange
.LBB53:
.LBB54:
	.file 2 "C:/devkitPro/libnds/include/nds/dma.h"
	.loc 2 96 0
	ldr	r2, .L148+40
	.loc 2 94 0
	mov	r3, #67108864
	str	r4, [r3, #212]
	.loc 2 95 0
	str	r8, [r3, #216]
	.loc 2 96 0
	str	r2, [r3, #220]
.L121:
	.loc 2 97 0
	mov	r3, #67108864
	ldr	r3, [r3, #220]
	cmp	r3, #0
	blt	.L121
.LBE54:
.LBE53:
.LBE52:
	.loc 1 156 0
	add	r5, r5, #1
	cmp	r5, #512
.LBB55:
	.loc 1 166 0
	strh	r6, [fp], #2	@ movhi
.LBE55:
	.loc 1 156 0
	add	sl, sl, #4
	add	r8, r8, #1024
	bne	.L120
	.loc 1 172 0
	mov	r0, r9
	bl	vramRestoreMainBanks
	.loc 1 174 0
	mov	r1, #0
	mov	r2, #65536
	ldr	r0, .L148+44
	bl	memset
	.loc 1 175 0
	mov	r0, #7
	ldr	r1, .L148+44
	mov	r2, #65536
	bl	neoSystemLoadRegion
	.loc 1 177 0
	bl	systemGetSlot2Free
.LVL50:
	.loc 1 180 0
	cmp	r0, #20971520
	movcs	r4, #16777216
.LVL51:
	bcs	.L126
	.loc 1 182 0
	cmp	r0, #10485760
	movcs	r4, #8388608
	bcs	.L126
	.loc 1 184 0
	cmp	r0, #5242880
	bcc	.L129
	mov	r4, #4194304
.L126:
	.loc 1 190 0
	bl	systemSlot2Unlock
.LVL52:
	.loc 1 191 0
	mov	r3, r4, lsr #12
	ldr	r4, .L148+48
.LVL53:
	.loc 1 192 0
	mov	r0, r3, asl #12
	.loc 1 191 0
	str	r3, [r4, #0]
	.loc 1 192 0
	bl	systemSlot2Alloc
	.loc 1 193 0
	ldr	r2, [r4, #0]
	.loc 1 192 0
	ldr	r3, .L148+52
	str	r0, [r3, #0]
	.loc 1 193 0
	mov	r0, r2, asl #2
	bl	systemSlot2Alloc
	ldr	r3, .L148+56
	str	r0, [r3, #0]
	.loc 1 194 0
	mov	r0, #32768
	bl	systemSlot2Alloc
	ldr	r3, .L148+60
	mov	r2, #0
	str	r0, [r3, #0]
.L131:
	.loc 1 197 0
	mvn	r3, #255	@ movhi
	strh	r3, [r2, r0]	@ movhi
	add	r2, r2, #2
	.loc 1 196 0
	cmp	r2, #32768
	bne	.L131
	.loc 1 199 0
	ldr	r3, .L148+48
.LBB56:
	.loc 1 200 0
	mov	r1, #0
.LVL54:
.LBE56:
	.loc 1 199 0
	ldr	ip, [r3, #0]
.LBB57:
	.loc 1 200 0
	ldr	r3, .L148+56
	mov	r2, r1
	ldr	r3, [r3, #0]
	b	.L133
.L134:
	.loc 1 201 0
	mov	lr, #0	@ movhi
	strh	lr, [r0, #2]	@ movhi
	.loc 1 202 0
	mvn	r0, #255	@ movhi
	strh	r0, [r2, r3]	@ movhi
.LBE57:
	.loc 1 199 0
	add	r2, r2, #4
.L133:
	cmp	r1, ip
.LBB58:
	.loc 1 201 0
	add	r0, r3, r2
.LBE58:
	.loc 1 199 0
	add	r1, r1, #1
	bne	.L134
	.loc 1 204 0
	ldr	r2, .L148+64
	mov	r3, #0
	str	r3, [r2, #0]
	.loc 1 205 0
	mov	r0, #4096
	bl	systemRamAlloc
.LVL55:
	ldr	r3, .L148+68
	str	r0, [r3, #0]
	.loc 1 207 0
	bl	systemSlot2Lock
.LVL56:
.L136:
	.loc 1 217 0
	mov	r3, #67108864
	.loc 1 220 0
	mov	r2, #0
	.loc 1 219 0
	mov	r0, #1073741824
.LVL57:
	.loc 1 217 0
	mov	r1, #3
	str	r1, [r3, #1088]
	.loc 1 219 0
	str	r0, [r3, #1116]
	.loc 1 220 0
	str	r2, [r3, #1116]
	.loc 1 221 0
	str	r2, [r3, #1116]
	.loc 1 223 0
	str	r2, [r3, #1116]
	.loc 1 224 0
	str	r0, [r3, #1116]
	.loc 1 225 0
	str	r2, [r3, #1116]
	.loc 1 227 0
	str	r2, [r3, #1116]
	.loc 1 228 0
	str	r2, [r3, #1116]
	.loc 1 229 0
	str	r2, [r3, #1116]
	.loc 1 231 0
	str	r2, [r3, #1116]
	.loc 1 232 0
	str	r2, [r3, #1116]
	.loc 1 233 0
	str	r2, [r3, #1116]
	.loc 1 235 0
	add	r2, r2, #1
	str	r2, [r3, #1088]
	.loc 1 236 0
	ldmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}
.LVL58:
.L129:
	.loc 1 213 0
	ldr	r3, .L148+68
	.loc 1 209 0
	mov	r2, #0
	.loc 1 213 0
	str	r2, [r3, #0]
	.loc 1 209 0
	ldr	r3, .L148+48
	str	r2, [r3, #0]
	.loc 1 211 0
	ldr	r3, .L148+52
	str	r2, [r3, #0]
	.loc 1 212 0
	ldr	r3, .L148+60
	str	r2, [r3, #0]
	b	.L136
.L149:
	.align	2
.L148:
	.word	1208
	.word	g_spriteList
	.word	16407
	.word	2239274
	.word	623191333
	.word	g_spriteTable
	.word	g_spriteTable+131072
	.word	g_frameCount
	.word	g_spriteCache
	.word	g_spriteLoadBuffer
	.word	-2080374528
	.word	g_spriteUsed
	.word	g_spriteCache2Count
	.word	g_spriteCache2Ram
	.word	g_spriteCache2
	.word	g_spriteTable2
	.word	g_cache2Index
	.word	g_spriteReadBuffer
.LFE107:
	.size	neoSpriteInit, .-neoSpriteInit
	.bss
	.align	2
g_spriteCache2Ram:
	.space	4
	.section	.sbss,"aw",%nobits
	.align	1
	.type	g_spriteCache, %object
	.size	g_spriteCache, 2048
g_spriteCache:
	.space	2048
	.bss
	.align	2
g_spriteCache2:
	.space	4
	.align	2
g_spriteCache2Count:
	.space	4
	.section	.sbss
	.align	2
	.type	g_cacheIndex, %object
	.size	g_cacheIndex, 4
g_cacheIndex:
	.space	4
	.align	2
	.type	g_cache2Index, %object
	.size	g_cache2Index, 4
g_cache2Index:
	.space	4
	.bss
	.align	2
g_spriteReadBuffer:
	.space	4
	.align	5
g_spriteTable:
	.space	131072
	.align	2
g_spriteTable2:
	.space	4
	.align	5
g_spriteUsed:
	.space	65536
	.align	9
g_spriteLoadBuffer:
	.space	65536
	.align	5
g_spriteTransfer:
	.space	256
	.align	5
g_spriteTransferIndex:
	.space	4
	.align	2
g_spriteList:
	.space	4
	.comm	g_spriteCount,4,4
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
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI0-.LFB112
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI2-.LFB111
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x80
	.byte	0x8e
	.uleb128 0x1
	.byte	0x8b
	.uleb128 0x2
	.byte	0x8a
	.uleb128 0x3
	.byte	0x89
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x85
	.uleb128 0x7
	.byte	0x84
	.uleb128 0x8
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x4
	.4byte	.LCFI4-.LFB107
	.byte	0xe
	.uleb128 0x20
	.byte	0x8e
	.uleb128 0x1
	.byte	0x8b
	.uleb128 0x2
	.byte	0x8a
	.uleb128 0x3
	.byte	0x89
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x85
	.uleb128 0x7
	.byte	0x84
	.uleb128 0x8
	.align	2
.LEFDE6:
	.file 3 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 4 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 5 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 6 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
	.file 8 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h"
	.file 9 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h"
	.file 10 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h"
	.file 11 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoVideo.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LFB112-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 128
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL34-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB107-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL58-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL56-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x13b6
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF249
	.byte	0x1
	.4byte	.LASF250
	.4byte	.LASF251
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x4
	.byte	0x2e
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x4
	.byte	0x39
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
	.byte	0x3a
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x53
	.4byte	0x6d
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
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
	.byte	0x3
	.byte	0x43
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x45
	.4byte	0x74
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x8
	.byte	0x4
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x3
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x3
	.byte	0x60
	.4byte	0x50
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x61
	.4byte	0x74
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x3
	.byte	0x65
	.4byte	0x3e
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x3
	.byte	0x66
	.4byte	0x62
	.uleb128 0x6
	.4byte	0xdb
	.uleb128 0x7
	.4byte	0x116
	.byte	0x1
	.byte	0x3
	.byte	0x81
	.uleb128 0x8
	.4byte	.LASF18
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF19
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x3
	.byte	0x81
	.4byte	0x101
	.uleb128 0x9
	.byte	0x4
	.4byte	0x127
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x9
	.byte	0x4
	.4byte	0x12f
	.uleb128 0xb
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x1
	.byte	0x8
	.uleb128 0x7
	.4byte	0x15f
	.byte	0x1
	.byte	0x5
	.byte	0x9b
	.uleb128 0x8
	.4byte	.LASF22
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF23
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF24
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF25
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0xa0
	.4byte	0x13e
	.uleb128 0xc
	.4byte	0x1e2
	.2byte	0x2018
	.byte	0x5
	.2byte	0x119
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x11a
	.4byte	0x15f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x11d
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x120
	.4byte	0x1e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x121
	.4byte	0xad
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x122
	.4byte	0x1f3
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x123
	.4byte	0xad
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x124
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.byte	0x0
	.uleb128 0xe
	.4byte	0x1f3
	.4byte	0xad
	.uleb128 0xf
	.4byte	0x130
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xad
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x126
	.4byte	0x16a
	.uleb128 0x11
	.byte	0x4
	.uleb128 0x12
	.4byte	0x39d
	.4byte	.LASF64
	.byte	0xb0
	.byte	0x9
	.byte	0x15
	.uleb128 0x13
	.ascii	"d\000"
	.byte	0x9
	.byte	0x16
	.4byte	0x39d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.ascii	"a\000"
	.byte	0x9
	.byte	0x17
	.4byte	0x39d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.ascii	"pc\000"
	.byte	0x9
	.byte	0x18
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x13
	.ascii	"srh\000"
	.byte	0x9
	.byte	0x19
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x9
	.byte	0x1a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x9
	.byte	0x1b
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x13
	.ascii	"irq\000"
	.byte	0x9
	.byte	0x1c
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x13
	.ascii	"osp\000"
	.byte	0x9
	.byte	0x1d
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x13
	.ascii	"xc\000"
	.byte	0x9
	.byte	0x1e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x9
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x14
	.4byte	.LASF38
	.byte	0x9
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0x9
	.byte	0x21
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x9
	.byte	0x22
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x9
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x9
	.byte	0x24
	.4byte	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x9
	.byte	0x25
	.4byte	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x9
	.byte	0x26
	.4byte	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x9
	.byte	0x27
	.4byte	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x9
	.byte	0x28
	.4byte	0x3d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x9
	.byte	0x29
	.4byte	0x3eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x9
	.byte	0x2a
	.4byte	0x402
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x9
	.byte	0x2b
	.4byte	0x3bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0x9
	.byte	0x2c
	.4byte	0x3bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0x9
	.byte	0x2d
	.4byte	0x3bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x14
	.4byte	.LASF52
	.byte	0x9
	.byte	0x2e
	.4byte	0x418
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x9
	.byte	0x2f
	.4byte	0x121
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x9
	.byte	0x30
	.4byte	0x424
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x9
	.byte	0x31
	.4byte	0x42a
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xe
	.4byte	0x3ad
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x130
	.byte	0x7
	.byte	0x0
	.uleb128 0x16
	.4byte	0x3bd
	.byte	0x1
	.4byte	0x9b
	.uleb128 0x17
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3ad
	.uleb128 0x18
	.4byte	0x3d4
	.byte	0x1
	.uleb128 0x17
	.4byte	0x9b
	.uleb128 0x17
	.4byte	0x37
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3c3
	.uleb128 0x18
	.4byte	0x3eb
	.byte	0x1
	.uleb128 0x17
	.4byte	0x9b
	.uleb128 0x17
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3da
	.uleb128 0x18
	.4byte	0x402
	.byte	0x1
	.uleb128 0x17
	.4byte	0x9b
	.uleb128 0x17
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3f1
	.uleb128 0x16
	.4byte	0x418
	.byte	0x1
	.4byte	0x94
	.uleb128 0x17
	.4byte	0x94
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x408
	.uleb128 0x19
	.byte	0x1
	.4byte	0x94
	.uleb128 0x9
	.byte	0x4
	.4byte	0x41e
	.uleb128 0xe
	.4byte	0x43a
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x130
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x8
	.byte	0x6
	.4byte	0x207
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x8
	.byte	0x8
	.4byte	0x450
	.uleb128 0x9
	.byte	0x4
	.4byte	0x456
	.uleb128 0x16
	.4byte	0x466
	.byte	0x1
	.4byte	0xc6
	.uleb128 0x17
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x8
	.byte	0x9
	.4byte	0x471
	.uleb128 0x9
	.byte	0x4
	.4byte	0x477
	.uleb128 0x16
	.4byte	0x487
	.byte	0x1
	.4byte	0xd0
	.uleb128 0x17
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x8
	.byte	0xa
	.4byte	0x492
	.uleb128 0x9
	.byte	0x4
	.4byte	0x498
	.uleb128 0x16
	.4byte	0x4a8
	.byte	0x1
	.4byte	0xdb
	.uleb128 0x17
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x8
	.byte	0xc
	.4byte	0x4b3
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4b9
	.uleb128 0x18
	.4byte	0x4ca
	.byte	0x1
	.uleb128 0x17
	.4byte	0xdb
	.uleb128 0x17
	.4byte	0xc6
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x8
	.byte	0xd
	.4byte	0x4d5
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4db
	.uleb128 0x18
	.4byte	0x4ec
	.byte	0x1
	.uleb128 0x17
	.4byte	0xdb
	.uleb128 0x17
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x8
	.byte	0xe
	.4byte	0x4f7
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4fd
	.uleb128 0x18
	.4byte	0x50e
	.byte	0x1
	.uleb128 0x17
	.4byte	0xdb
	.uleb128 0x17
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x8
	.byte	0x10
	.4byte	0x492
	.uleb128 0x12
	.4byte	0x55e
	.4byte	.LASF65
	.byte	0xc
	.byte	0xa
	.byte	0x17
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0xa
	.byte	0x18
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.ascii	"end\000"
	.byte	0xa
	.byte	0x19
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.ascii	"acc\000"
	.byte	0xa
	.byte	0x1a
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0xa
	.byte	0x1b
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xa
	.byte	0x1c
	.4byte	0x519
	.uleb128 0x12
	.4byte	0x5a0
	.4byte	.LASF69
	.byte	0xc
	.byte	0xa
	.byte	0x1f
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0xa
	.byte	0x20
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0xa
	.byte	0x21
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0xa
	.byte	0x22
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xa
	.byte	0x23
	.4byte	0x569
	.uleb128 0x1a
	.4byte	0x999
	.2byte	0x248
	.byte	0x7
	.byte	0xc0
	.uleb128 0x13
	.ascii	"cpu\000"
	.byte	0x7
	.byte	0xc1
	.4byte	0x43a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x7
	.byte	0xc4
	.4byte	0x999
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x7
	.byte	0xc7
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x7
	.byte	0xc8
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x7
	.byte	0xcb
	.4byte	0x9a9
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x7
	.byte	0xcc
	.4byte	0x5a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x7
	.byte	0xcd
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x7
	.byte	0xd0
	.4byte	0x9b9
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x7
	.byte	0xd1
	.4byte	0x9b9
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x7
	.byte	0xd2
	.4byte	0x9b9
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x7
	.byte	0xd3
	.4byte	0x9b9
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x7
	.byte	0xd4
	.4byte	0x9b9
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x7
	.byte	0xd5
	.4byte	0x9b9
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0x7
	.byte	0xd6
	.4byte	0x9bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x7
	.byte	0xd7
	.4byte	0x9bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0x7
	.byte	0xd8
	.4byte	0x9bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0x7
	.byte	0xda
	.4byte	0x9c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x7
	.byte	0xdd
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0x7
	.byte	0xde
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x7
	.byte	0xdf
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x7
	.byte	0xe0
	.4byte	0x9d6
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x7
	.byte	0xe1
	.4byte	0x9d6
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x7
	.byte	0xe2
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x7
	.byte	0xe5
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x7
	.byte	0xe6
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x7
	.byte	0xe7
	.4byte	0x9bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x7
	.byte	0xe8
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x7
	.byte	0xea
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x7
	.byte	0xeb
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x7
	.byte	0xec
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x7
	.byte	0xed
	.4byte	0x9e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x7
	.byte	0xee
	.4byte	0x9bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x7
	.byte	0xf1
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x7
	.byte	0xf2
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x7
	.byte	0xf3
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x7
	.byte	0xf4
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x7
	.byte	0xf7
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x7
	.byte	0xf8
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x7
	.byte	0xf9
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x7
	.byte	0xfa
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x7
	.byte	0xfb
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x7
	.byte	0xfc
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x7
	.byte	0xfd
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x102
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xd
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x103
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xd
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x106
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xd
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x108
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xd
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x109
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x10a
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x10b
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x10d
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x10e
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x10f
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x110
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.4byte	.LASF127
	.byte	0x7
	.2byte	0x111
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xd
	.4byte	.LASF128
	.byte	0x7
	.2byte	0x114
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xd
	.4byte	.LASF129
	.byte	0x7
	.2byte	0x115
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xd
	.4byte	.LASF130
	.byte	0x7
	.2byte	0x116
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xd
	.4byte	.LASF131
	.byte	0x7
	.2byte	0x117
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xd
	.4byte	.LASF132
	.byte	0x7
	.2byte	0x118
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xd
	.4byte	.LASF133
	.byte	0x7
	.2byte	0x11b
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xd
	.4byte	.LASF134
	.byte	0x7
	.2byte	0x11c
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xd
	.4byte	.LASF135
	.byte	0x7
	.2byte	0x11f
	.4byte	0x9f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xd
	.4byte	.LASF136
	.byte	0x7
	.2byte	0x122
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xd
	.4byte	.LASF137
	.byte	0x7
	.2byte	0x123
	.4byte	0xa01
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xe
	.4byte	0x9a9
	.4byte	0x205
	.uleb128 0x15
	.4byte	0x130
	.byte	0x8
	.byte	0x0
	.uleb128 0xe
	.4byte	0x9b9
	.4byte	0x55e
	.uleb128 0x15
	.4byte	0x130
	.byte	0x6
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xc6
	.uleb128 0x9
	.byte	0x4
	.4byte	0xd0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x9cb
	.uleb128 0x9
	.byte	0x4
	.4byte	0x9d1
	.uleb128 0x1b
	.4byte	0xc6
	.uleb128 0x9
	.byte	0x4
	.4byte	0x9dc
	.uleb128 0x1b
	.4byte	0xdb
	.uleb128 0xe
	.4byte	0x9f1
	.4byte	0xdb
	.uleb128 0x15
	.4byte	0x130
	.byte	0xf
	.byte	0x0
	.uleb128 0xe
	.4byte	0xa01
	.4byte	0xc6
	.uleb128 0x15
	.4byte	0x130
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.4byte	0xa10
	.4byte	0xc6
	.uleb128 0x1c
	.4byte	0x130
	.byte	0x0
	.uleb128 0x1d
	.4byte	0xa2b
	.2byte	0x400
	.byte	0x7
	.byte	0xbf
	.uleb128 0x1e
	.4byte	0x5ab
	.uleb128 0x1f
	.4byte	.LASF138
	.byte	0x7
	.2byte	0x125
	.4byte	0xa2b
	.byte	0x0
	.uleb128 0xe
	.4byte	0xa3b
	.4byte	0xdb
	.uleb128 0x15
	.4byte	0x130
	.byte	0xff
	.byte	0x0
	.uleb128 0x20
	.4byte	0xac1
	.4byte	.LASF139
	.2byte	0x2000
	.byte	0x7
	.byte	0xbe
	.uleb128 0x21
	.4byte	0xa10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF140
	.byte	0x7
	.2byte	0x128
	.4byte	0xac1
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xd
	.4byte	.LASF141
	.byte	0x7
	.2byte	0x129
	.4byte	0xad1
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xd
	.4byte	.LASF142
	.byte	0x7
	.2byte	0x12a
	.4byte	0xae1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xd
	.4byte	.LASF143
	.byte	0x7
	.2byte	0x12b
	.4byte	0xaf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xd
	.4byte	.LASF144
	.byte	0x7
	.2byte	0x12c
	.4byte	0xb01
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xd
	.4byte	.LASF145
	.byte	0x7
	.2byte	0x12d
	.4byte	0xb11
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xd
	.4byte	.LASF146
	.byte	0x7
	.2byte	0x12e
	.4byte	0xb21
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xe
	.4byte	0xad1
	.4byte	0x445
	.uleb128 0x15
	.4byte	0x130
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	0xae1
	.4byte	0x466
	.uleb128 0x15
	.4byte	0x130
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	0xaf1
	.4byte	0x487
	.uleb128 0x15
	.4byte	0x130
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	0xb01
	.4byte	0x4a8
	.uleb128 0x15
	.4byte	0x130
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	0xb11
	.4byte	0x4ca
	.uleb128 0x15
	.4byte	0x130
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	0xb21
	.4byte	0x4ec
	.uleb128 0x15
	.4byte	0x130
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	0xb31
	.4byte	0x50e
	.uleb128 0x15
	.4byte	0x130
	.byte	0xff
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF147
	.byte	0x7
	.2byte	0x12f
	.4byte	0xa3b
	.uleb128 0x12
	.4byte	0xb82
	.4byte	.LASF148
	.byte	0x10
	.byte	0xb
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF149
	.byte	0xb
	.byte	0x7
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF150
	.byte	0xb
	.byte	0x8
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF151
	.byte	0xb
	.byte	0x9
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF152
	.byte	0xb
	.byte	0xa
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF153
	.byte	0xb
	.byte	0xb
	.4byte	0xb3d
	.uleb128 0x12
	.4byte	0xc34
	.4byte	.LASF154
	.byte	0x24
	.byte	0x1
	.byte	0x9
	.uleb128 0x14
	.4byte	.LASF155
	.byte	0x1
	.byte	0xa
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF156
	.byte	0x1
	.byte	0xb
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF157
	.byte	0x1
	.byte	0xc
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF158
	.byte	0x1
	.byte	0xd
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x14
	.4byte	.LASF159
	.byte	0x1
	.byte	0xe
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF160
	.byte	0x1
	.byte	0xf
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x14
	.4byte	.LASF161
	.byte	0x1
	.byte	0x11
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.4byte	.LASF162
	.byte	0x1
	.byte	0x12
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.4byte	.LASF163
	.byte	0x1
	.byte	0x13
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.4byte	.LASF164
	.byte	0x1
	.byte	0x14
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x14
	.4byte	.LASF165
	.byte	0x1
	.byte	0x15
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF166
	.byte	0x1
	.byte	0x16
	.4byte	0xb8d
	.uleb128 0x20
	.4byte	0xc83
	.4byte	.LASF167
	.2byte	0x4b8
	.byte	0x1
	.byte	0x1a
	.uleb128 0x13
	.ascii	"cmd\000"
	.byte	0x1
	.byte	0x1b
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.ascii	"m\000"
	.byte	0x1
	.byte	0x1c
	.4byte	0xc83
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF168
	.byte	0x1
	.byte	0x1d
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x14
	.4byte	.LASF169
	.byte	0x1
	.byte	0x1e
	.4byte	0xc93
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0xe
	.4byte	0xc93
	.4byte	0xdb
	.uleb128 0x15
	.4byte	0x130
	.byte	0xb
	.byte	0x0
	.uleb128 0xe
	.4byte	0xca3
	.4byte	0xc34
	.uleb128 0x15
	.4byte	0x130
	.byte	0x1f
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF170
	.byte	0x1
	.byte	0x1f
	.4byte	0xc3f
	.uleb128 0x12
	.4byte	0xcd7
	.4byte	.LASF171
	.byte	0x4
	.byte	0x1
	.byte	0x23
	.uleb128 0x14
	.4byte	.LASF172
	.byte	0x1
	.byte	0x24
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF173
	.byte	0x1
	.byte	0x25
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF174
	.byte	0x1
	.byte	0x26
	.4byte	0xcae
	.uleb128 0x12
	.4byte	0xcfd
	.4byte	.LASF175
	.byte	0x4
	.byte	0x1
	.byte	0x29
	.uleb128 0x14
	.4byte	.LASF176
	.byte	0x1
	.byte	0x2a
	.4byte	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0x1
	.byte	0x2b
	.4byte	0xce2
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF252
	.byte	0x1
	.byte	0xef
	.4byte	.LFB108
	.4byte	.LFE108
	.byte	0x1
	.byte	0x5d
	.uleb128 0x23
	.4byte	0xd7b
	.byte	0x1
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x229
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST1
	.uleb128 0x24
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x22a
	.4byte	0x9cb
	.4byte	.LLST2
	.uleb128 0x25
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x22b
	.4byte	0xd7b
	.uleb128 0x26
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x22c
	.4byte	0xfc
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x27
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x22d
	.4byte	0xf1
	.4byte	.LLST3
	.uleb128 0x26
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x230
	.4byte	0xdb
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xd81
	.uleb128 0x1b
	.4byte	0xcfd
	.uleb128 0x28
	.4byte	0xdae
	.4byte	.LASF182
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.4byte	0xdb
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF184
	.byte	0x1
	.byte	0xf3
	.4byte	0xdb
	.uleb128 0x2a
	.4byte	.LASF172
	.byte	0x1
	.byte	0xf5
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x2b
	.4byte	0xde1
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x103
	.byte	0x1
	.byte	0x3
	.uleb128 0x2c
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x101
	.4byte	0xde1
	.uleb128 0x2c
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x102
	.4byte	0xdb
	.uleb128 0x2c
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x102
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xc34
	.uleb128 0x23
	.4byte	0x10b0
	.byte	0x1
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x113
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST4
	.uleb128 0x26
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x114
	.4byte	0x10b0
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x24
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x115
	.4byte	0xdb
	.4byte	.LLST5
	.uleb128 0x24
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x116
	.4byte	0xdb
	.4byte	.LLST6
	.uleb128 0x26
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x117
	.4byte	0xf1
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x118
	.4byte	0xf1
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x26
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x119
	.4byte	0xf1
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x11a
	.4byte	0xf1
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x11b
	.4byte	0xf1
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x11c
	.4byte	0xf1
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x11d
	.4byte	0xf1
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x11e
	.4byte	0xdb
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x11f
	.4byte	0x9b9
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x120
	.4byte	0xdb
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x121
	.4byte	0xdb
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x20d
	.4byte	.L41
	.uleb128 0x2f
	.4byte	.LBB14
	.4byte	.LBE14
	.uleb128 0x24
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x12a
	.4byte	0x9dc
	.4byte	.LLST7
	.uleb128 0x25
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x15e
	.4byte	0x9d6
	.uleb128 0x26
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x15f
	.4byte	0xdb
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x160
	.4byte	0xf1
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x161
	.4byte	0xf1
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x162
	.4byte	0x116
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x163
	.4byte	0xf1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.4byte	0x1098
	.4byte	.LBB15
	.4byte	.LBE15
	.uleb128 0x26
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x176
	.4byte	0x9dc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x183
	.4byte	0x9dc
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x18a
	.4byte	0x9dc
	.uleb128 0x26
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x18b
	.4byte	0xdb
	.byte	0x1
	.byte	0x58
	.uleb128 0x25
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x208
	.4byte	0x9dc
	.uleb128 0x31
	.4byte	0xfca
	.4byte	0xd86
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x183
	.uleb128 0x32
	.4byte	0xd97
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x34
	.4byte	0xda2
	.4byte	.LLST9
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.4byte	0x103f
	.4byte	.LBB20
	.4byte	.LBE20
	.uleb128 0x25
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x191
	.4byte	0x10bb
	.uleb128 0x2f
	.4byte	.LBB21
	.4byte	.LBE21
	.uleb128 0x26
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x9dc
	.byte	0x1
	.byte	0x5a
	.uleb128 0x26
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x9dc
	.byte	0x1
	.byte	0x59
	.uleb128 0x24
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x1a8
	.4byte	0xdb
	.4byte	.LLST10
	.uleb128 0x2f
	.4byte	.LBB22
	.4byte	.LBE22
	.uleb128 0x25
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x9dc
	.uleb128 0x26
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x1ce
	.4byte	0xfc
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.4byte	0x1059
	.4byte	.LBB23
	.4byte	.LBE23
	.uleb128 0x25
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x9dc
	.byte	0x0
	.uleb128 0x31
	.4byte	0x107d
	.4byte	0xdae
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x20b
	.uleb128 0x32
	.4byte	0xdd4
	.uleb128 0x32
	.4byte	0xdc8
	.uleb128 0x35
	.4byte	0xdbc
	.4byte	.LLST11
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LBB42
	.4byte	.LBE42
	.uleb128 0x24
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x213
	.4byte	0x10c1
	.4byte	.LLST12
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LBB43
	.4byte	.LBE43
	.uleb128 0x25
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x21d
	.4byte	0x9dc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.4byte	0x10b5
	.uleb128 0x9
	.byte	0x4
	.4byte	0xca3
	.uleb128 0x9
	.byte	0x4
	.4byte	0xcfd
	.uleb128 0x1b
	.4byte	0xf1
	.uleb128 0x36
	.4byte	0x1100
	.4byte	.LASF218
	.byte	0x2
	.byte	0x5d
	.byte	0x1
	.byte	0x3
	.uleb128 0x29
	.4byte	.LASF219
	.byte	0x2
	.byte	0x5d
	.4byte	0xa2
	.uleb128 0x37
	.ascii	"src\000"
	.byte	0x2
	.byte	0x5d
	.4byte	0x129
	.uleb128 0x29
	.4byte	.LASF220
	.byte	0x2
	.byte	0x5d
	.4byte	0x205
	.uleb128 0x29
	.4byte	.LASF221
	.byte	0x2
	.byte	0x5d
	.4byte	0xad
	.byte	0x0
	.uleb128 0x38
	.4byte	0x11d9
	.byte	0x1
	.4byte	.LASF222
	.byte	0x1
	.byte	0x60
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LLST13
	.uleb128 0x39
	.ascii	"i\000"
	.byte	0x1
	.byte	0x61
	.4byte	0xf1
	.4byte	.LLST14
	.uleb128 0x3a
	.ascii	"x0\000"
	.byte	0x1
	.byte	0x78
	.4byte	0x10c1
	.uleb128 0x3a
	.ascii	"x1\000"
	.byte	0x1
	.byte	0x79
	.4byte	0x10c1
	.uleb128 0x3b
	.4byte	.LASF181
	.byte	0x1
	.byte	0x99
	.4byte	0xdb
	.byte	0x1
	.byte	0x59
	.uleb128 0x3c
	.4byte	.LASF223
	.byte	0x1
	.byte	0xb1
	.4byte	0x9dc
	.4byte	.LLST15
	.uleb128 0x3c
	.4byte	.LASF224
	.byte	0x1
	.byte	0xb2
	.4byte	0xdb
	.4byte	.LLST16
	.uleb128 0x3d
	.4byte	0x118a
	.4byte	.Ldebug_ranges0+0x80
	.uleb128 0x39
	.ascii	"y0\000"
	.byte	0x1
	.byte	0x7b
	.4byte	0x10c1
	.4byte	.LLST17
	.uleb128 0x39
	.ascii	"y1\000"
	.byte	0x1
	.byte	0x7c
	.4byte	0x10c1
	.4byte	.LLST18
	.byte	0x0
	.uleb128 0x3d
	.4byte	0x119f
	.4byte	.Ldebug_ranges0+0x98
	.uleb128 0x2a
	.4byte	.LASF225
	.byte	0x1
	.byte	0x9d
	.4byte	0x11d9
	.byte	0x0
	.uleb128 0x3e
	.4byte	0x11c7
	.4byte	0x10c6
	.4byte	.LBB53
	.4byte	.LBE53
	.byte	0x1
	.byte	0xa3
	.uleb128 0x32
	.4byte	0x10f4
	.uleb128 0x32
	.4byte	0x10e9
	.uleb128 0x32
	.4byte	0x10de
	.uleb128 0x32
	.4byte	0x10d3
	.byte	0x0
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0xb8
	.uleb128 0x2a
	.4byte	.LASF225
	.byte	0x1
	.byte	0xc8
	.4byte	0x11d9
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xcd7
	.uleb128 0x25
	.4byte	.LASF226
	.byte	0x5
	.2byte	0x129
	.4byte	0x11eb
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1f9
	.uleb128 0x3b
	.4byte	.LASF227
	.byte	0x1
	.byte	0x3c
	.4byte	0x9b9
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteCache2Ram
	.uleb128 0xe
	.4byte	0x1213
	.4byte	0xcd7
	.uleb128 0xf
	.4byte	0x130
	.2byte	0x1ff
	.byte	0x0
	.uleb128 0x3b
	.4byte	.LASF228
	.byte	0x1
	.byte	0x3d
	.4byte	0x1202
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteCache
	.uleb128 0x3b
	.4byte	.LASF229
	.byte	0x1
	.byte	0x3e
	.4byte	0x11d9
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteCache2
	.uleb128 0x3b
	.4byte	.LASF230
	.byte	0x1
	.byte	0x3f
	.4byte	0xdb
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteCache2Count
	.uleb128 0x3b
	.4byte	.LASF231
	.byte	0x1
	.byte	0x40
	.4byte	0xdb
	.byte	0x5
	.byte	0x3
	.4byte	g_cacheIndex
	.uleb128 0x3b
	.4byte	.LASF232
	.byte	0x1
	.byte	0x41
	.4byte	0xdb
	.byte	0x5
	.byte	0x3
	.4byte	g_cache2Index
	.uleb128 0x3b
	.4byte	.LASF233
	.byte	0x1
	.byte	0x42
	.4byte	0x9b9
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteReadBuffer
	.uleb128 0xe
	.4byte	0x128a
	.4byte	0xd0
	.uleb128 0xf
	.4byte	0x130
	.2byte	0xffff
	.byte	0x0
	.uleb128 0x3b
	.4byte	.LASF234
	.byte	0x1
	.byte	0x46
	.4byte	0x1279
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteTable
	.uleb128 0x3b
	.4byte	.LASF235
	.byte	0x1
	.byte	0x47
	.4byte	0x9bf
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteTable2
	.uleb128 0xe
	.4byte	0x12bd
	.4byte	0xc6
	.uleb128 0xf
	.4byte	0x130
	.2byte	0xffff
	.byte	0x0
	.uleb128 0x3b
	.4byte	.LASF236
	.byte	0x1
	.byte	0x48
	.4byte	0x12ac
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteUsed
	.uleb128 0x3b
	.4byte	.LASF237
	.byte	0x1
	.byte	0x4a
	.4byte	0x12ac
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteLoadBuffer
	.uleb128 0xe
	.4byte	0x12ef
	.4byte	0xcfd
	.uleb128 0x15
	.4byte	0x130
	.byte	0x3f
	.byte	0x0
	.uleb128 0x3b
	.4byte	.LASF238
	.byte	0x1
	.byte	0x4b
	.4byte	0x12df
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteTransfer
	.uleb128 0x3b
	.4byte	.LASF239
	.byte	0x1
	.byte	0x4c
	.4byte	0xdb
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteTransferIndex
	.uleb128 0x3b
	.4byte	.LASF240
	.byte	0x1
	.byte	0x4f
	.4byte	0x10b5
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteList
	.uleb128 0xe
	.4byte	0x132d
	.4byte	0x49
	.uleb128 0x3f
	.byte	0x0
	.uleb128 0x40
	.4byte	.LASF241
	.byte	0x6
	.byte	0x2c
	.4byte	0x1322
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x1345
	.4byte	0x49
	.uleb128 0x3f
	.byte	0x0
	.uleb128 0x40
	.4byte	.LASF242
	.byte	0x6
	.byte	0x2d
	.4byte	0x133a
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x135d
	.4byte	0x49
	.uleb128 0x3f
	.byte	0x0
	.uleb128 0x40
	.4byte	.LASF243
	.byte	0x6
	.byte	0x2e
	.4byte	0x1352
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.4byte	.LASF244
	.byte	0x7
	.2byte	0x149
	.4byte	0x1379
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x9
	.byte	0x4
	.4byte	0xb31
	.uleb128 0x42
	.4byte	.LASF245
	.byte	0x7
	.2byte	0x14d
	.4byte	0xb31
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.4byte	.LASF246
	.byte	0xb
	.byte	0x52
	.4byte	0xb82
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.4byte	.LASF247
	.byte	0xb
	.byte	0x59
	.4byte	0xd0
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF248
	.byte	0x1
	.byte	0x4d
	.4byte	0xdb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteCount
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
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
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
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x6
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
	.uleb128 0x2e
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x13ba
	.4byte	0xd08
	.ascii	"neoSpriteExit\000"
	.4byte	0xd1a
	.ascii	"neoLoadSprites\000"
	.4byte	0xde7
	.ascii	"neoDrawSprites\000"
	.4byte	0x1100
	.ascii	"neoSpriteInit\000"
	.4byte	0x136a
	.ascii	"g_neo\000"
	.4byte	0x13a7
	.ascii	"g_spriteCount\000"
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
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB56-.Ltext0
	.4byte	.LBE56-.Ltext0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	.LBB57-.Ltext0
	.4byte	.LBE57-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF28:
	.ascii	"clearColor\000"
.LASF42:
	.ascii	"checkpc\000"
.LASF154:
	.ascii	"_TSpritePacket\000"
.LASF46:
	.ascii	"write8\000"
.LASF225:
	.ascii	"pEntry\000"
.LASF194:
	.ascii	"fxYPos\000"
.LASF94:
	.ascii	"smaBankbit\000"
.LASF167:
	.ascii	"_TSpriteDisplayList\000"
.LASF146:
	.ascii	"cpuCheckPcTable\000"
.LASF102:
	.ascii	"spriteMask\000"
.LASF125:
	.ascii	"ctrl3Reg\000"
.LASF152:
	.ascii	"maxY\000"
.LASF51:
	.ascii	"fetch32\000"
.LASF226:
	.ascii	"glGlob\000"
.LASF177:
	.ascii	"TSpriteTransferEntry\000"
.LASF233:
	.ascii	"g_spriteReadBuffer\000"
.LASF110:
	.ascii	"cpuClocksPerScanline\000"
.LASF58:
	.ascii	"TRead16Func\000"
.LASF76:
	.ascii	"romBankCount\000"
.LASF105:
	.ascii	"tileOffsetX\000"
.LASF144:
	.ascii	"cpuWrite16Table\000"
.LASF231:
	.ascii	"g_cacheIndex\000"
.LASF15:
	.ascii	"uint32\000"
.LASF183:
	.ascii	"drawSpriteTile\000"
.LASF24:
	.ascii	"GL_MODELVIEW\000"
.LASF107:
	.ascii	"tileScaleX\000"
.LASF108:
	.ascii	"tileScaleY\000"
.LASF229:
	.ascii	"g_spriteCache2\000"
.LASF239:
	.ascii	"g_spriteTransferIndex\000"
.LASF204:
	.ascii	"packetCount\000"
.LASF199:
	.ascii	"fullmode\000"
.LASF196:
	.ascii	"fxHeight\000"
.LASF197:
	.ascii	"fxYPosClamp\000"
.LASF47:
	.ascii	"write16\000"
.LASF63:
	.ascii	"TCheckPcFunc\000"
.LASF137:
	.ascii	"varEnd\000"
.LASF237:
	.ascii	"g_spriteLoadBuffer\000"
.LASF60:
	.ascii	"TWrite8Func\000"
.LASF43:
	.ascii	"read8\000"
.LASF210:
	.ascii	"cache1Index\000"
.LASF73:
	.ascii	"TNeoADPCMBStream\000"
.LASF57:
	.ascii	"TRead8Func\000"
.LASF192:
	.ascii	"zoomY\000"
.LASF104:
	.ascii	"pTileBuffer\000"
.LASF142:
	.ascii	"cpuRead32Table\000"
.LASF26:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF8:
	.ascii	"long int\000"
.LASF72:
	.ascii	"frequency\000"
.LASF61:
	.ascii	"TWrite16Func\000"
.LASF49:
	.ascii	"fetch8\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF135:
	.ascii	"keyGrid\000"
.LASF48:
	.ascii	"write32\000"
.LASF52:
	.ascii	"IrqCallback\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF126:
	.ascii	"ctrl4Reg\000"
.LASF250:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoVideoSpri"
	.ascii	"tes.arm.c\000"
.LASF190:
	.ascii	"lastCache2EntryIndex\000"
.LASF115:
	.ascii	"romBankAddress\000"
.LASF243:
	.ascii	"TAN_bin\000"
.LASF67:
	.ascii	"step\000"
.LASF79:
	.ascii	"adpcmActive\000"
.LASF188:
	.ascii	"neoDrawSprites\000"
.LASF215:
	.ascii	"oldCache2EntryIndex\000"
.LASF99:
	.ascii	"vramBaseMask\000"
.LASF75:
	.ascii	"spriteCount\000"
.LASF175:
	.ascii	"_TSpriteTransferEntry\000"
.LASF176:
	.ascii	"pDst\000"
.LASF230:
	.ascii	"g_spriteCache2Count\000"
.LASF54:
	.ascii	"UnrecognizedCallback\000"
.LASF21:
	.ascii	"char\000"
.LASF186:
	.ascii	"tileIndex\000"
.LASF128:
	.ascii	"irqVectorLatch\000"
.LASF86:
	.ascii	"pVram\000"
.LASF129:
	.ascii	"screenDarkLatch\000"
.LASF37:
	.ascii	"prev_pc\000"
.LASF69:
	.ascii	"_TNeoADPCMBStream\000"
.LASF201:
	.ascii	"spritesUsed\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF198:
	.ascii	"rows\000"
.LASF36:
	.ascii	"flags\000"
.LASF17:
	.ascii	"double\000"
.LASF101:
	.ascii	"autoAnimationCounter\000"
.LASF29:
	.ascii	"textures\000"
.LASF23:
	.ascii	"GL_POSITION\000"
.LASF147:
	.ascii	"TNeoContext\000"
.LASF109:
	.ascii	"cpuClockDivide\000"
.LASF170:
	.ascii	"TSpriteDisplayList\000"
.LASF97:
	.ascii	"frameCount\000"
.LASF118:
	.ascii	"vramOffset\000"
.LASF171:
	.ascii	"_TSpriteCacheEntry\000"
.LASF251:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF161:
	.ascii	"cmd1\000"
.LASF138:
	.ascii	"fill\000"
.LASF40:
	.ascii	"cycles\000"
.LASF145:
	.ascii	"cpuWrite32Table\000"
.LASF148:
	.ascii	"_TNeoVideoBounds\000"
.LASF132:
	.ascii	"paletteRamLatch\000"
.LASF216:
	.ascii	"listSize\000"
.LASF174:
	.ascii	"TSpriteCacheEntry\000"
.LASF214:
	.ascii	"cache2Index\000"
.LASF241:
	.ascii	"COS_bin\000"
.LASF83:
	.ascii	"pRam\000"
.LASF85:
	.ascii	"pCard\000"
.LASF100:
	.ascii	"displayCounter\000"
.LASF56:
	.ascii	"TCycloneContext\000"
.LASF112:
	.ascii	"watchdogCounter\000"
.LASF223:
	.ascii	"slot2Free\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF182:
	.ascii	"getSpriteIndex\000"
.LASF184:
	.ascii	"tileControl\000"
.LASF205:
	.ascii	"fxTileYPos\000"
.LASF178:
	.ascii	"pSrc\000"
.LASF141:
	.ascii	"cpuRead16Table\000"
.LASF121:
	.ascii	"displayControlMask\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF133:
	.ascii	"active\000"
.LASF64:
	.ascii	"Cyclone\000"
.LASF82:
	.ascii	"pBios\000"
.LASF219:
	.ascii	"channel\000"
.LASF191:
	.ascii	"zoomControl\000"
.LASF103:
	.ascii	"paletteDirty\000"
.LASF242:
	.ascii	"SIN_bin\000"
.LASF27:
	.ascii	"matrixMode\000"
.LASF31:
	.ascii	"nextBlock\000"
.LASF179:
	.ascii	"pTransfer\000"
.LASF140:
	.ascii	"cpuRead8Table\000"
.LASF95:
	.ascii	"smaRand\000"
.LASF65:
	.ascii	"_TNeoADPCMStream\000"
.LASF62:
	.ascii	"TWrite32Func\000"
.LASF90:
	.ascii	"smaAddr0\000"
.LASF11:
	.ascii	"long long int\000"
.LASF22:
	.ascii	"GL_PROJECTION\000"
.LASF127:
	.ascii	"coinReg\000"
.LASF70:
	.ascii	"initOffset\000"
.LASF193:
	.ascii	"fxXPos\000"
.LASF55:
	.ascii	"internal\000"
.LASF50:
	.ascii	"fetch16\000"
.LASF91:
	.ascii	"smaAddr1\000"
.LASF217:
	.ascii	"skip\000"
.LASF224:
	.ascii	"cache2Size\000"
.LASF35:
	.ascii	"unused\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF156:
	.ascii	"texImage\000"
.LASF157:
	.ascii	"palette\000"
.LASF252:
	.ascii	"neoSpriteExit\000"
.LASF120:
	.ascii	"displayControl\000"
.LASF232:
	.ascii	"g_cache2Index\000"
.LASF93:
	.ascii	"smaBankoffset\000"
.LASF25:
	.ascii	"GL_TEXTURE\000"
.LASF98:
	.ascii	"pVramBase\000"
.LASF66:
	.ascii	"offset\000"
.LASF166:
	.ascii	"TSpritePacket\000"
.LASF80:
	.ascii	"pRom0\000"
.LASF106:
	.ascii	"tileOffsetY\000"
.LASF143:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF228:
	.ascii	"g_spriteCache\000"
.LASF20:
	.ascii	"bool\000"
.LASF30:
	.ascii	"activeTexture\000"
.LASF124:
	.ascii	"ctrl2Reg\000"
.LASF44:
	.ascii	"read16\000"
.LASF113:
	.ascii	"paletteBank\000"
.LASF212:
	.ascii	"cache2EntryIndex\000"
.LASF169:
	.ascii	"packet\000"
.LASF168:
	.ascii	"begin\000"
.LASF41:
	.ascii	"membase\000"
.LASF153:
	.ascii	"TNeoVideoBounds\000"
.LASF158:
	.ascii	"palettePad\000"
.LASF249:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF195:
	.ascii	"fxWidth\000"
.LASF96:
	.ascii	"scanline\000"
.LASF221:
	.ascii	"size\000"
.LASF88:
	.ascii	"pPalette\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF248:
	.ascii	"g_spriteCount\000"
.LASF134:
	.ascii	"debug\000"
.LASF162:
	.ascii	"vertex0\000"
.LASF163:
	.ascii	"vertex1\000"
.LASF164:
	.ascii	"vertex2\000"
.LASF165:
	.ascii	"vertex3\000"
.LASF173:
	.ascii	"frame\000"
.LASF81:
	.ascii	"pRom1\000"
.LASF213:
	.ascii	"cache2Offset\000"
.LASF222:
	.ascii	"neoSpriteInit\000"
.LASF209:
	.ascii	"cacheEntryIndex\000"
.LASF45:
	.ascii	"read32\000"
.LASF220:
	.ascii	"dest\000"
.LASF87:
	.ascii	"pSpriteRam\000"
.LASF235:
	.ascii	"g_spriteTable2\000"
.LASF53:
	.ascii	"ResetCallback\000"
.LASF131:
	.ascii	"sramProtectLatch\000"
.LASF114:
	.ascii	"fixedBank\000"
.LASF244:
	.ascii	"g_neo\000"
.LASF180:
	.ascii	"dummy\000"
.LASF238:
	.ascii	"g_spriteTransfer\000"
.LASF33:
	.ascii	"nameCount\000"
.LASF208:
	.ascii	"actualIndex\000"
.LASF18:
	.ascii	"false\000"
.LASF123:
	.ascii	"ctrl1Reg\000"
.LASF39:
	.ascii	"state_flags\000"
.LASF155:
	.ascii	"cmd0\000"
.LASF117:
	.ascii	"sramProtection\000"
.LASF253:
	.ascii	"skipTile\000"
.LASF14:
	.ascii	"uint8\000"
.LASF84:
	.ascii	"pSram\000"
.LASF71:
	.ascii	"freqCounter\000"
.LASF4:
	.ascii	"short int\000"
.LASF136:
	.ascii	"frameCounter\000"
.LASF78:
	.ascii	"adpcmb\000"
.LASF189:
	.ascii	"pDisplayList\000"
.LASF207:
	.ascii	"matrixDirty\000"
.LASF32:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF151:
	.ascii	"maxX\000"
.LASF203:
	.ascii	"pTable\000"
.LASF172:
	.ascii	"index\000"
.LASF19:
	.ascii	"true\000"
.LASF122:
	.ascii	"displayCounterLoad\000"
.LASF111:
	.ascii	"irqPending\000"
.LASF211:
	.ascii	"vramIndex\000"
.LASF185:
	.ascii	"pPacket\000"
.LASF245:
	.ascii	"g_neoContext\000"
.LASF218:
	.ascii	"dmaCopyWords\000"
.LASF187:
	.ascii	"neoLoadSprites\000"
.LASF59:
	.ascii	"TRead32Func\000"
.LASF240:
	.ascii	"g_spriteList\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF247:
	.ascii	"g_frameCount\000"
.LASF200:
	.ascii	"pLoadDst\000"
.LASF181:
	.ascii	"banks\000"
.LASF77:
	.ascii	"adpcm\000"
.LASF16:
	.ascii	"float\000"
.LASF34:
	.ascii	"gl_hidden_globals\000"
.LASF149:
	.ascii	"minX\000"
.LASF150:
	.ascii	"minY\000"
.LASF246:
	.ascii	"g_videoBounds\000"
.LASF74:
	.ascii	"pVideoWriteTable\000"
.LASF159:
	.ascii	"texCoordx\000"
.LASF160:
	.ascii	"texCoordy\000"
.LASF206:
	.ascii	"fxHeightToDraw\000"
.LASF89:
	.ascii	"bankTable\000"
.LASF92:
	.ascii	"smaBankAddr\000"
.LASF227:
	.ascii	"g_spriteCache2Ram\000"
.LASF202:
	.ascii	"yControl\000"
.LASF139:
	.ascii	"_TNeoContext\000"
.LASF236:
	.ascii	"g_spriteUsed\000"
.LASF38:
	.ascii	"reserved\000"
.LASF130:
	.ascii	"fixedRomLatch\000"
.LASF116:
	.ascii	"sramProtectCount\000"
.LASF68:
	.ascii	"TNeoADPCMStream\000"
.LASF119:
	.ascii	"vramMod\000"
.LASF234:
	.ascii	"g_spriteTable\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
