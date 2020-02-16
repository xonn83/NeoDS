	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
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
.LFB167:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/NeoVideoSprites.arm.c"
	.loc 1 191 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 193 0
	bx	lr
.LFE167:
	.size	neoSpriteExit, .-neoSpriteExit
	.align	2
	.global	neoLoadSprites
	.type	neoLoadSprites, %function
neoLoadSprites:
.LFB171:
	.loc 1 441 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r0, r1, r4, r5, r6, lr}
.LCFI0:
	.loc 1 448 0
	mov	r0, #0
	mov	r1, r0
	mov	r2, r0
	mov	r3, r0
	bl	vramSetMainBanks
	.loc 1 451 0
	ldr	r3, .L10
	.loc 1 442 0
	ldr	ip, .L10+4
.LVL0:
	.loc 1 451 0
	ldr	r1, [r3, #64]
	.loc 1 453 0
	add	r5, r3, #96
	.loc 1 451 0
	sub	r1, r1, #1
.LVL1:
	mov	r2, #0
	.loc 1 452 0
	mov	r3, #67108864
	.loc 1 454 0
	ldr	r4, .L10+8
	.loc 1 451 0
	b	.L4
.LVL2:
.L6:
	.loc 1 453 0
	ldr	r6, [r5, r2]
	.loc 1 452 0
	str	ip, [r3, #212]
	.loc 1 453 0
	str	r6, [r3, #216]
	.loc 1 454 0
	str	r4, [r3, #220]
	.loc 1 457 0
	ldr	r6, [r3, #220]
.LVL3:
	str	r6, [sp, #4]
	.loc 1 458 0
	ldr	r6, [r3, #220]
.LVL4:
	str	r6, [sp, #4]
.LVL5:
.L5:
	.loc 1 459 0
	ldr	r6, [r3, #220]
	cmp	r6, #0
	blt	.L5
	.loc 1 455 0
	add	ip, ip, #1024
	.loc 1 451 0
	sub	r1, r1, #1
	add	r2, r2, #4
.L4:
	cmp	r1, #0
	bge	.L6
	.loc 1 464 0
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	.loc 1 463 0
	b	vramRestoreMainBanks
.LVL6:
.L11:
	.align	2
.L10:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	-2080374528
.LFE171:
	.size	neoLoadSprites, .-neoLoadSprites
	.align	2
	.global	neoDrawSprites
	.type	neoDrawSprites, %function
neoDrawSprites:
.LFB170:
	.loc 1 227 0
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
.LCFI1:
	.loc 1 228 0
	ldr	r2, .L58
	.loc 1 242 0
	mov	r1, #0
	.loc 1 227 0
	sub	sp, sp, #88
.LCFI2:
	.loc 1 246 0
	ldr	r0, .L58+4
	.loc 1 242 0
	str	r1, [r2, #64]
	.loc 1 228 0
	ldr	r8, [r2, #352]
.LVL7:
	.loc 1 246 0
	ldr	r2, .L58+8
	mov	r5, r1
	.loc 1 245 0
	mov	r3, #67108864
	.loc 1 246 0
	mov	fp, #1
.LVL8:
	mov	ip, r1
.LVL9:
	str	r1, [sp, #44]
	str	r1, [sp, #36]
	str	r1, [sp, #24]
	add	r1, r1, #8192
	.loc 1 245 0
	str	r8, [r3, #212]
	.loc 1 246 0
	str	r0, [sp, #48]
	str	r2, [r3, #216]
	str	r1, [sp, #40]
	str	fp, [sp, #28]
	mov	sl, r5
.LVL10:
	mov	r6, r5
.LVL11:
	str	r5, [sp, #52]
.LBB24:
.LBB25:
.LBB46:
	.loc 1 357 0
	mov	r9, r5
.LVL12:
.L40:
.LBE46:
.LBE25:
	.loc 1 249 0
	ldr	r2, [r7, #348]
.LVL13:
	orr	r3, r9, #512
	mov	r3, r3, asl #1
	ldrh	r3, [r2, r3]
.LVL14:
	mov	r1, r7
	.loc 1 251 0
	ands	r0, r3, #64
	beq	.L13
	.loc 1 253 0
	ldr	r3, [sp, #24]
.LVL15:
	cmp	r3, #0
	beq	.L14
	.loc 1 258 0
	ldrh	r3, [r2, ip]
	.loc 1 257 0
	ldr	r4, [sp, #28]
.LVL16:
	.loc 1 258 0
	and	r3, r3, #3840
	.loc 1 257 0
	add	r6, r4, r6
.LVL17:
	.loc 1 258 0
	add	r3, r3, #256
	.loc 1 257 0
	mov	r6, r6, asl #23
.LVL18:
	.loc 1 258 0
	mov	r3, r3, lsr #8
	.loc 1 257 0
	mov	r6, r6, lsr #23
	.loc 1 258 0
	str	r3, [sp, #28]
	b	.L15
.LVL19:
.L13:
	.loc 1 262 0
	ands	r4, r3, #63
.LVL20:
	str	r4, [sp, #24]
	beq	.L14
	.loc 1 266 0
	ldrh	r4, [r2, ip]
.LVL21:
	.loc 1 267 0
	orr	r5, r9, #1024
.LVL22:
	.loc 1 268 0
	mov	sl, r3, lsr #7
.LVL23:
	.loc 1 267 0
	mov	r5, r5, asl #1
	.loc 1 273 0
	ldr	r3, [sp, #24]
.LVL24:
	.loc 1 267 0
	ldrh	r6, [r2, r5]
.LVL25:
	.loc 1 270 0
	and	r2, r4, #3840
	.loc 1 273 0
	cmp	r3, #32
	.loc 1 269 0
	and	r4, r4, #255
.LVL26:
	.loc 1 270 0
	add	r2, r2, #256
	.loc 1 268 0
	mov	sl, sl, asl #4
	.loc 1 269 0
	str	r4, [sp, #52]
	.loc 1 270 0
	mov	r2, r2, lsr #8
	.loc 1 271 0
	add	fp, r4, #1
.LVL27:
	.loc 1 273 0
	movle	r4, #8192
	.loc 1 267 0
	mov	r6, r6, lsr #7
.LVL28:
	.loc 1 268 0
	rsb	sl, sl, #8192
.LVL29:
	.loc 1 270 0
	str	r2, [sp, #28]
	.loc 1 273 0
	strle	r0, [sp, #36]
	strle	r4, [sp, #40]
	ble	.L15
	.loc 1 279 0
	add	r3, sl, fp
	cmp	r3, #4096
	.loc 1 277 0
	mov	r0, fp, asl #5
	str	r0, [sp, #40]
	.loc 1 280 0
	subge	sl, sl, #8192
	b	.L55
.L18:
	.loc 1 226 0
	ldr	r2, [sp, #40]
	add	sl, sl, r2
.LVL30:
.L55:
	.loc 1 282 0
	cmn	sl, #256
	blt	.L18
	mov	r3, #1
	mov	r4, #32
	str	r3, [sp, #36]
	str	r4, [sp, #24]
.LVL31:
.L15:
	.loc 1 291 0
	ldr	r0, [sp, #28]
	ldr	r2, .L58+12
	add	r3, r0, r6
	cmp	r3, r2
	.loc 1 296 0
	ldr	r3, .L58+16
	ldr	r4, [sp, #28]
	.loc 1 292 0
	subgt	r6, r6, #512
	.loc 1 296 0
	ldr	r2, [r3, #0]
	add	r0, r6, r4
	cmp	r0, r2
	blt	.L14
	ldr	r2, [r3, #8]
	cmp	r6, r2
	bgt	.L14
	.loc 1 312 0
	sub	r2, r9, #4080
	.loc 1 308 0
	mov	r0, r4, asl #10
	.loc 1 312 0
	sub	r2, r2, #15
	.loc 1 309 0
	mov	r4, fp, asl #10
	.loc 1 301 0
	ldr	r1, [r1, #344]
	.loc 1 308 0
	str	r0, [r8, #4]
	.loc 1 309 0
	str	r4, [r8, #20]
	.loc 1 312 0
	str	r2, [r8, #48]
	.loc 1 310 0
	str	r6, [r8, #40]
	.loc 1 311 0
	str	sl, [r8, #44]
	.loc 1 314 0
	ldr	r2, [r3, #8]
	ldr	r3, .L58+20
.LBB50:
.LBB45:
	.loc 1 419 0
	ldr	r4, [sp, #52]
.LBE45:
.LBE50:
	.loc 1 314 0
	cmp	r2, r3
	.loc 1 315 0
	addne	r0, r0, #32
	strne	r0, [r8, #4]
	.loc 1 318 0
	ldr	r0, [sp, #36]
.LBB51:
.LBB47:
	.loc 1 419 0
	rsb	r3, r4, #255
.LBE47:
.LBE51:
	.loc 1 318 0
	cmp	r0, #0
	.loc 1 319 0
	ldrne	r2, [sp, #24]
	.loc 1 321 0
	ldreq	r0, [sp, #24]
	.loc 1 319 0
	mulne	r2, fp, r2
	.loc 1 301 0
	add	r1, r1, r9, asl #7
.LBB52:
.LBB44:
	.loc 1 419 0
	mov	r3, r3, asl #5
.LBE44:
.LBE52:
	.loc 1 321 0
	moveq	r0, r0, asl #8
	.loc 1 319 0
	strne	r2, [sp, #20]
.LBB53:
.LBB48:
	.loc 1 419 0
	mov	r2, #0
.LVL32:
	str	r3, [sp, #60]
	str	r9, [sp, #76]
.LBE48:
.LBE53:
	.loc 1 321 0
	streq	r0, [sp, #20]
	.loc 1 301 0
	str	r1, [sp, #64]
.LBB54:
.LBB43:
	.loc 1 419 0
	mov	r3, sl
.LVL33:
	str	r2, [sp, #32]
	mov	r5, r2
	str	ip, [sp, #72]
	mov	r9, r2
.LVL34:
	str	sl, [sp, #80]
	str	r6, [sp, #84]
	b	.L37
.LVL35:
.L38:
.LBE43:
	.loc 1 327 0
	ldr	r1, .L58+24
	.loc 1 325 0
	ldr	r2, [sp, #64]
	.loc 1 327 0
	cmp	r6, r1
	.loc 1 330 0
	ldrgt	r3, [sp, #40]
	.loc 1 333 0
	ldr	r0, .L58+16
	.loc 1 330 0
	rsbgt	r6, r3, r6
	.loc 1 325 0
	ldr	sl, [r2, r9, asl #2]
.LVL36:
	.loc 1 333 0
	ldr	r2, [r0, #4]
	.loc 1 330 0
	movgt	r4, #1
.LVL37:
	.loc 1 333 0
	add	r3, r6, fp
.LVL38:
	.loc 1 330 0
	strgt	r4, [sp, #32]
	.loc 1 333 0
	cmp	r3, r2
	blt	.L25
	ldr	r2, [r0, #12]
	cmp	r6, r2
	bgt	.L25
.LVL39:
.LBB41:
.LBB42:
	.loc 1 198 0
	ldr	r1, [r7, #536]
	.loc 1 197 0
	mov	ip, sl, asl #16
.LVL40:
	.loc 1 198 0
	tst	r1, #8
	.loc 1 197 0
	mov	ip, ip, lsr #16
	and	r1, sl, #7340032
	.loc 1 198 0
	mov	r2, r7
	.loc 1 197 0
	orr	ip, ip, r1, lsr #4
.LVL41:
	.loc 1 198 0
	bne	.L26
	.loc 1 200 0
	tst	sl, #524288
	.loc 1 201 0
	ldrne	r1, [r7, #404]
	bicne	ip, ip, #7
.LVL42:
	andne	r1, r1, #7
	.loc 1 200 0
	bne	.L57
	.loc 1 202 0
	tst	sl, #262144
	beq	.L26
	.loc 1 203 0
	ldr	r1, [r7, #404]
	bic	ip, ip, #3
.LVL43:
	and	r1, r1, #3
.L57:
	orr	ip, ip, r1
.LVL44:
.L26:
	.loc 1 206 0
	ldr	r4, [r2, #408]
	and	ip, ip, r4
.LVL45:
.LBE42:
.LBE41:
	.loc 1 339 0
	ldr	r4, .L58
	mov	r1, ip, lsr #3
	add	r2, r4, r1
	ldrb	r0, [r2, #384]	@ zero_extendqisi2
	and	r2, ip, #7
	mov	r2, r0, asr r2
	tst	r2, #1
	beq	.L25
	.loc 1 346 0
	ldr	r0, .L58+28
	add	r2, r0, r1, asl #1
	add	r2, r2, #448
	ldrh	r4, [r2, #0]
.LVL46:
	.loc 1 349 0
	ldr	r0, [sp, #44]
	cmp	r4, #65280
	movne	r2, #0
	moveq	r2, #1
	str	r2, [sp, #56]
	ldr	r2, .L58+12
	cmp	r0, r2
	cmpls	r4, #65280
	bne	.L28
	.loc 1 350 0
	ldr	r4, .L58
.LVL47:
	ldr	r2, [r4, #64]
	.loc 1 349 0
	cmp	r2, #63
	bhi	.L25
.LBB40:
	.loc 1 357 0
	ldr	lr, .L58+32
	.loc 1 352 0
	add	r0, r2, #1
	.loc 1 357 0
	ldrh	lr, [lr, #0]
	.loc 1 352 0
	str	r3, [sp, #68]
	.loc 1 357 0
	str	lr, [sp, #56]
	ldr	lr, .L58+36
	ldr	r4, [lr, #0]
.LVL48:
	.loc 1 352 0
	ldr	lr, .L58
	str	r0, [lr, #64]
.LVL49:
.L29:
	.loc 1 356 0
	add	r4, r4, #1
.LVL50:
	.loc 1 357 0
	ldr	r3, .L58+36
.LVL51:
	.loc 1 356 0
	mov	r4, r4, asl #23
.LVL52:
	mov	r4, r4, lsr #23
	.loc 1 357 0
	add	r0, r3, r4, asl #2
	add	r0, r0, #4
	ldrh	lr, [r0, #2]
	ldr	r3, [sp, #56]
	cmp	lr, r3
	beq	.L29
	.loc 1 365 0
	ldr	lr, .L58+28
	ldr	r3, [sp, #68]
.LVL53:
	add	lr, lr, r1, asl #1
	str	lr, [sp, #68]
	str	r0, [sp, #4]
	.loc 1 363 0
	ldr	lr, .L58+28
	ldrh	r0, [r0, #0]
	add	r0, lr, r0, asl #1
	add	r0, r0, #448
	str	r0, [sp, #56]
	.loc 1 365 0
	ldr	r0, [sp, #68]
	.loc 1 363 0
	mvn	lr, #255	@ movhi
	.loc 1 365 0
	add	r0, r0, #448
	str	r0, [sp, #68]
	.loc 1 363 0
	ldr	r0, [sp, #56]
	strh	lr, [r0, #0]	@ movhi
	.loc 1 366 0
	ldr	lr, [sp, #4]
	.loc 1 365 0
	ldr	r0, [sp, #68]
	.loc 1 366 0
	strh	r1, [lr, #0]	@ movhi
	.loc 1 357 0
	ldr	lr, .L58+36
	.loc 1 365 0
	strh	r4, [r0, #0]	@ movhi
	.loc 1 357 0
	str	r4, [lr, #0]
.L30:
	.loc 1 369 0
	mov	lr, #67108864
	ldr	r0, [lr, #212]
	cmp	r0, #0
	blt	.L30
	.loc 1 373 0
	ldr	r0, [sp, #48]
	str	r2, [sp, #8]
	str	r3, [sp, #16]
.LVL54:
	str	ip, [sp, #12]
.LVL55:
	bl	neoSystemLoadSprite
	.loc 1 376 0
	ldr	r1, .L58+40
	ldr	r2, [sp, #8]
	mov	r0, r4, asl #10
	add	r0, r0, #109051904
	str	r0, [r1, r2, asl #2]
	.loc 1 375 0
	ldr	r1, [sp, #48]
	.loc 1 379 0
	ldr	r2, .L58+8
	.loc 1 378 0
	mov	r0, #67108864
	.loc 1 375 0
	add	r1, r1, #1024
	.loc 1 378 0
	str	r8, [r0, #212]
	.loc 1 375 0
	str	r1, [sp, #48]
	.loc 1 379 0
	str	r2, [r0, #216]
	ldr	r3, [sp, #16]
	ldr	ip, [sp, #12]
	b	.L31
.LVL56:
.L28:
.LBE40:
	.loc 1 382 0
	ldr	r2, [sp, #56]
	cmp	r2, #0
	bne	.L25
.L31:
	.loc 1 389 0
	ldr	r2, [sp, #32]
	cmp	r5, #31
	orrhi	r2, r2, #1
	cmp	r2, #0
	beq	.L32
	.loc 1 391 0
	cmp	r5, #0
	beq	.L33
.L47:
.LBB39:
	.loc 1 393 0
	mov	r0, #67108864
	ldr	r2, [r0, #212]
	cmp	r2, #0
	blt	.L47
	.loc 1 395 0
	mov	r1, #36
	mul	r2, r1, r5
	add	r2, r2, #56
	mov	r2, r2, lsr #2
	orr	r2, r2, #-1140850688
	orr	r2, r2, #4194304
	str	r2, [r0, #220]
.L33:
.LBE39:
	.loc 1 399 0
	str	r6, [r8, #44]
	mov	r5, #0
.LVL57:
.L32:
	.loc 1 403 0
	ldr	r1, .L58+36
.LBB32:
.LBB35:
	.loc 1 212 0
	and	ip, ip, #7
.LVL58:
.LBE35:
.LBE32:
	.loc 1 403 0
	add	r2, r1, r4, asl #2
	ldr	r1, .L58+32
	add	r2, r2, #4
	ldrh	r0, [r2, #2]
	ldrh	r1, [r1, #0]
.LBB31:
.LBB36:
	.loc 1 212 0
	add	ip, ip, r4, asl #3
.LBE36:
.LBE31:
	.loc 1 403 0
	cmp	r0, r1
	.loc 1 405 0
	strneh	r1, [r2, #2]	@ movhi
	.loc 1 404 0
	ldrne	r2, [sp, #44]
.LBB30:
.LBB34:
	.loc 1 212 0
	and	r1, sl, #196608
.LBE34:
.LBE30:
	.loc 1 404 0
	addne	r2, r2, #1
.LBB29:
.LBB37:
	.loc 1 212 0
	mov	r0, #36
.LBE37:
.LBE29:
	.loc 1 404 0
	strne	r2, [sp, #44]
.LBB28:
.LBB33:
	.loc 1 212 0
	mov	r1, r1, asl #2
	mla	r2, r0, r5, r8
	orr	r1, r1, #-335544320
	orr	r1, r1, #9633792
	orr	ip, r1, ip, asl #4
	str	ip, [r2, #60]
	.loc 1 222 0
	ldr	r1, .L58+44
	ldrb	r0, [r7, #572]	@ zero_extendqisi2
	mov	sl, sl, lsr #23
.LVL59:
	and	r1, sl, r1
	add	r1, r1, r0, asl #9
.LBE33:
.LBE28:
	.loc 1 412 0
	mov	r4, #0
.LVL60:
.LBB27:
.LBB38:
	.loc 1 222 0
	strh	r1, [r2, #64]	@ movhi
.LBE38:
.LBE27:
	.loc 1 412 0
	add	r5, r5, #1
.LVL61:
	str	r4, [sp, #32]
	b	.L36
.LVL62:
.L25:
	mov	r0, #1
	str	r0, [sp, #32]
.L36:
	.loc 1 415 0
	ldr	r2, [sp, #20]
	.loc 1 418 0
	ldr	r1, [sp, #36]
	.loc 1 415 0
	rsb	r2, fp, r2
	.loc 1 418 0
	cmp	r1, #0
	.loc 1 415 0
	str	r2, [sp, #20]
	.loc 1 416 0
	add	r9, r9, #1
	.loc 1 418 0
	bne	.L37
	cmp	r9, #16
	cmpne	r9, #32
	bne	.L37
.LBB26:
	.loc 1 420 0
	ldr	r4, [sp, #60]
.LVL63:
	.loc 1 421 0
	mov	r0, #1
	rsb	r2, r4, r2
	.loc 1 420 0
	add	r3, r3, r4
	.loc 1 421 0
	str	r2, [sp, #20]
	str	r0, [sp, #32]
.LVL64:
.L37:
.LBE26:
.LBE54:
	.loc 1 324 0
	ldr	r1, [sp, #20]
.LBB55:
.LBB49:
	.loc 1 421 0
	mov	r6, r3
.LVL65:
.LBE49:
.LBE55:
	.loc 1 324 0
	cmp	r1, #0
	bgt	.L38
.LVL66:
	.loc 1 426 0
	cmp	r5, #0
	ldr	ip, [sp, #72]
.LVL67:
	ldr	r9, [sp, #76]
.LVL68:
	ldr	sl, [sp, #80]
.LVL69:
	ldr	r6, [sp, #84]
.LVL70:
	beq	.L14
.L46:
.LBB56:
	.loc 1 428 0
	mov	r2, #67108864
.LVL71:
	ldr	r3, [r2, #212]
.LVL72:
	cmp	r3, #0
	blt	.L46
	.loc 1 430 0
	mov	r2, #36
	mul	r3, r2, r5
	add	r3, r3, #56
	mov	r3, r3, lsr #2
	orr	r3, r3, #-1140850688
	orr	r3, r3, #4194304
	mov	r4, #67108864
.LVL73:
	str	r3, [r4, #220]
.LVL74:
.L14:
.LBE56:
.LBE24:
	.loc 1 248 0
	ldr	r3, .L58+48
.LVL75:
	add	r9, r9, #1
	cmp	r9, r3
	add	ip, ip, #2
	bne	.L40
	.loc 1 435 0
	mov	r3, #67108864
.L45:
	ldr	r2, [r3, #212]
.LVL76:
	cmp	r2, #0
	blt	.L45
	.loc 1 436 0
	mov	r3, #67108864
.L44:
	ldr	r2, [r3, #1536]
	tst	r2, #134217728
	bne	.L44
	.loc 1 437 0
	ldr	r3, .L58+52
	ldrh	r2, [r3, #4]
	ldr	r3, .L58+56
	str	r2, [r3, #0]
	.loc 1 438 0
	add	sp, sp, #88
	ldmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}
.L59:
	.align	2
.L58:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	67109888
	.word	511
	.word	g_videoBounds
	.word	287
	.word	3967
	.word	.LANCHOR2
	.word	g_frameCount
	.word	.LANCHOR3
	.word	.LANCHOR1+96
	.word	510
	.word	381
	.word	67110400
	.word	g_spriteCount
.LFE170:
	.size	neoDrawSprites, .-neoDrawSprites
	.align	2
	.global	neoSpriteInit
	.type	neoSpriteInit, %function
neoSpriteInit:
.LFB166:
	.loc 1 87 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
.LCFI3:
	.loc 1 90 0
	ldr	r0, .L72
	bl	neoSystemVramHAlloc
	ldr	r1, .L72+4
	.loc 1 94 0
	mov	r3, #0
	.loc 1 90 0
	str	r0, [r1, #352]
	.loc 1 92 0
	ldr	r1, .L72+8
	.loc 1 93 0
	mov	r2, #1024
	.loc 1 92 0
	str	r1, [r0, #0]
.LBB57:
	.loc 1 117 0
	ldr	lr, .L72+12
.LBE57:
	.loc 1 109 0
	mov	r1, #1
.LBB58:
	.loc 1 119 0
	ldr	ip, .L72+16
.LBE58:
	.loc 1 103 0
	str	r2, [r0, #36]
	.loc 1 109 0
	str	r1, [r0, #52]
	.loc 1 93 0
	stmib	r0, {r2, r3}	@ phole stm
	.loc 1 95 0
	str	r3, [r0, #12]
	.loc 1 97 0
	str	r3, [r0, #16]
	.loc 1 98 0
	str	r2, [r0, #20]
	.loc 1 99 0
	str	r3, [r0, #24]
	.loc 1 101 0
	str	r3, [r0, #28]
	.loc 1 102 0
	str	r3, [r0, #32]
	.loc 1 105 0
	str	r3, [r0, #40]
	.loc 1 106 0
	str	r3, [r0, #44]
	.loc 1 107 0
	str	r3, [r0, #48]
.LVL77:
.L64:
.LBB59:
	.loc 1 115 0
	add	r2, r3, #1
.LVL78:
	.loc 1 124 0
	tst	r3, #1
	.loc 1 114 0
	mov	r3, r3, asl #18
.LVL79:
	.loc 1 115 0
	mov	r1, r2, asl #18
	.loc 1 129 0
	orr	r4, r3, #4
	.loc 1 124 0
	movne	r6, #0
	moveq	r6, #256
	.loc 1 129 0
	str	r4, [r0, #88]
	.loc 1 128 0
	orr	r5, r1, #4
	.loc 1 122 0
	mov	r4, #256	@ movhi
.LBE59:
	.loc 1 113 0
	cmp	r2, #32
.LBB60:
	.loc 1 124 0
	strh	r6, [r0, #70]	@ movhi
	.loc 1 128 0
	str	r5, [r0, #84]
	.loc 1 117 0
	str	lr, [r0, #56]
	.loc 1 119 0
	str	ip, [r0, #72]
	.loc 1 122 0
	strh	r4, [r0, #68]	@ movhi
	.loc 1 126 0
	str	r3, [r0, #76]
	.loc 1 127 0
	str	r1, [r0, #80]
	.loc 1 129 0
	add	r0, r0, #36
.LBE60:
	.loc 1 113 0
	movne	r3, r2
.LVL80:
	bne	.L64
.LVL81:
.L63:
.LBB61:
.LBB62:
	.file 2 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.loc 2 333 0
	ldr	r3, .L72+20
.LVL82:
	mvn	r2, #124
.LVL83:
	strb	r2, [r3, #64]
.LBE62:
.LBE61:
.LBB63:
.LBB64:
	.loc 2 339 0
	add	r2, r2, #8
	strb	r2, [r3, #65]
.LBE64:
.LBE63:
.LBB65:
.LBB66:
	.loc 2 345 0
	add	r2, r2, #8
	strb	r2, [r3, #66]
.LBE66:
.LBE65:
	.loc 1 138 0
	ldr	r1, .L72+24
.LVL84:
.LBB67:
.LBB68:
	.loc 2 351 0
	add	r2, r2, #8
	strb	r2, [r3, #67]
	mov	r3, #0
.L65:
.LBE68:
.LBE67:
	.loc 1 138 0
	mvn	lr, #255	@ movhi
	strh	lr, [r1, r3]	@ movhi
	add	r3, r3, #2
	.loc 1 137 0
	cmp	r3, #131072
	bne	.L65
	.loc 1 141 0
	ldr	ip, .L72+28
	.loc 1 144 0
	mov	r0, #0
	.loc 1 141 0
	mov	lr, #0	@ movhi
	.loc 1 144 0
	mov	r1, r0
	mov	r2, r0
	mov	r3, r0
	.loc 1 141 0
	strh	lr, [ip, #0]	@ movhi
	.loc 1 144 0
	bl	vramSetMainBanks
.LBB69:
	.loc 1 149 0
	ldr	r4, .L72+32
.LBE69:
	.loc 1 144 0
	mov	fp, r0
.LVL85:
	mov	sl, #109051904
	mov	r6, #0
.LVL86:
.LBB74:
.LBB71:
.LBB72:
	.file 3 "C:/devkitPro/libnds/include/nds/dma.h"
	.loc 3 123 0
	mov	r8, #67108864
.L67:
.LBE72:
.LBE71:
.LBE74:
	.loc 1 144 0
	mov	r9, r6, asl #16
.LBB75:
	.loc 1 149 0
	mov	r3, r6, asl #2
.LBE75:
	.loc 1 144 0
	mov	r9, r9, lsr #16
.LBB76:
	.loc 1 149 0
	strh	r9, [r4, r3]	@ movhi
	.loc 1 151 0
	ldr	r0, .L72+36
	mov	r1, r6
	bl	neoSystemLoadSprite
	.loc 1 153 0
	ldr	r0, .L72+36
	mov	r1, #1024
	bl	DC_FlushRange
.LBB70:
.LBB73:
	.loc 3 123 0
	ldr	r2, .L72+36
	.loc 3 125 0
	ldr	r3, .L72+40
	.loc 3 123 0
	str	r2, [r8, #212]
	.loc 3 124 0
	str	sl, [r8, #216]
	.loc 3 125 0
	str	r3, [r8, #220]
.L66:
	.loc 3 126 0
	ldr	r3, [r8, #220]
	mov	r5, #67108864
	cmp	r3, #0
	blt	.L66
.LBE73:
.LBE70:
	.loc 1 157 0
	mov	r3, r6, asl #1
	ldr	lr, .L72+24
.LBE76:
	.loc 1 147 0
	add	r6, r6, #1
	cmp	r6, #512
.LBB77:
	.loc 1 157 0
	strh	r9, [lr, r3]	@ movhi
.LBE77:
	.loc 1 147 0
	add	sl, sl, #1024
	bne	.L67
	.loc 1 163 0
	mov	r0, fp
	bl	vramRestoreMainBanks
	.loc 1 165 0
	mov	r1, #0
	mov	r2, #65536
	ldr	r0, .L72+44
	bl	memset
	.loc 1 166 0
	ldr	r1, .L72+44
	mov	r2, #65536
	mov	r0, #7
	bl	neoSystemLoadRegion
	.loc 1 172 0
	mov	r3, #0
	.loc 1 171 0
	mov	r2, #1073741824
	.loc 1 169 0
	mov	r1, #3
	str	r1, [r5, #1088]
	.loc 1 171 0
	str	r2, [r5, #1116]
	.loc 1 172 0
	str	r3, [r5, #1116]
	.loc 1 173 0
	str	r3, [r5, #1116]
	.loc 1 175 0
	str	r3, [r5, #1116]
	.loc 1 176 0
	str	r2, [r5, #1116]
	.loc 1 177 0
	str	r3, [r5, #1116]
	.loc 1 179 0
	str	r3, [r5, #1116]
	.loc 1 180 0
	str	r3, [r5, #1116]
	.loc 1 181 0
	str	r3, [r5, #1116]
	.loc 1 183 0
	str	r3, [r5, #1116]
	.loc 1 184 0
	str	r3, [r5, #1116]
	.loc 1 185 0
	str	r3, [r5, #1116]
	.loc 1 187 0
	add	r3, r3, #1
	str	r3, [r5, #1088]
	.loc 1 188 0
	ldmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}
.L73:
	.align	2
.L72:
	.word	1208
	.word	.LANCHOR1
	.word	16407
	.word	2239274
	.word	623191333
	.word	67109376
	.word	.LANCHOR2+448
	.word	g_frameCount
	.word	.LANCHOR3+4
	.word	.LANCHOR0
	.word	-2080374528
	.word	.LANCHOR1+384
.LFE166:
	.size	neoSpriteInit, .-neoSpriteInit
	.comm	g_spriteCount,4,4
	.section	.sbss,"aw",%nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	g_cacheIndex, %object
	.size	g_cacheIndex, 4
g_cacheIndex:
	.space	4
	.type	g_spriteCache, %object
	.size	g_spriteCache, 2048
g_spriteCache:
	.space	2048
	.bss
	.align	9
	.set	.LANCHOR0,. + 0
	.set	.LANCHOR1,. + 65472
	.set	.LANCHOR2,. + 130944
	.type	g_spriteLoadBuffer, %object
	.size	g_spriteLoadBuffer, 65536
g_spriteLoadBuffer:
	.space	65536
	.type	g_spriteTransferIndex, %object
	.size	g_spriteTransferIndex, 4
g_spriteTransferIndex:
	.space	4
	.space	28
	.type	g_spriteTransfer, %object
	.size	g_spriteTransfer, 256
g_spriteTransfer:
	.space	256
	.type	g_spriteList, %object
	.size	g_spriteList, 4
g_spriteList:
	.space	4
	.space	28
	.type	g_spriteUsed, %object
	.size	g_spriteUsed, 65536
g_spriteUsed:
	.space	65536
	.type	g_spriteTable, %object
	.size	g_spriteTable, 131072
g_spriteTable:
	.space	131072
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
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.byte	0x4
	.4byte	.LCFI0-.LFB171
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x6
	.sleb128 2
	.byte	0x11
	.uleb128 0x5
	.sleb128 3
	.byte	0x11
	.uleb128 0x4
	.sleb128 4
	.byte	0x11
	.uleb128 0x1
	.sleb128 5
	.byte	0x11
	.uleb128 0x0
	.sleb128 6
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.byte	0x4
	.4byte	.LCFI1-.LFB170
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x78
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0xb
	.sleb128 2
	.byte	0x11
	.uleb128 0xa
	.sleb128 3
	.byte	0x11
	.uleb128 0x9
	.sleb128 4
	.byte	0x11
	.uleb128 0x8
	.sleb128 5
	.byte	0x11
	.uleb128 0x6
	.sleb128 6
	.byte	0x11
	.uleb128 0x5
	.sleb128 7
	.byte	0x11
	.uleb128 0x4
	.sleb128 8
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.byte	0x4
	.4byte	.LCFI3-.LFB166
	.byte	0xe
	.uleb128 0x20
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0xb
	.sleb128 2
	.byte	0x11
	.uleb128 0xa
	.sleb128 3
	.byte	0x11
	.uleb128 0x9
	.sleb128 4
	.byte	0x11
	.uleb128 0x8
	.sleb128 5
	.byte	0x11
	.uleb128 0x6
	.sleb128 6
	.byte	0x11
	.uleb128 0x5
	.sleb128 7
	.byte	0x11
	.uleb128 0x4
	.sleb128 8
	.align	2
.LEFDE6:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LFB171-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB170-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 120
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL70-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL68-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL31-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL74-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LFB166-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE166-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86-.Ltext0
	.4byte	.LFE166-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
	.file 4 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 5 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 6 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 7 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 8 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 9 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 10 "C:/Users/GRX/NeoDS-master-old/arm9/include/cyclone.h"
	.file 11 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoCpu.h"
	.file 12 "C:/Users/GRX/NeoDS-master-old/arm9/../common/source/NeoAudioStream.h"
	.file 13 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoSystem.h"
	.file 14 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoVideo.h"
	.section	.debug_info
	.4byte	0x16f3
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF341
	.byte	0x1
	.4byte	.LASF342
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x4
	.byte	0x2a
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x4
	.byte	0x35
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
	.byte	0x36
	.4byte	0x57
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4f
	.4byte	0x69
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
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
	.byte	0x5
	.byte	0x46
	.4byte	0x28
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x48
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x5
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x5
	.byte	0x63
	.4byte	0x4c
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x5
	.byte	0x64
	.4byte	0x70
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x5
	.byte	0x68
	.4byte	0x3a
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x5
	.byte	0x69
	.4byte	0x5e
	.uleb128 0x6
	.4byte	0xc9
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0x7d
	.4byte	0x104
	.uleb128 0x8
	.4byte	.LASF16
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF17
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x7d
	.4byte	0xef
	.uleb128 0x9
	.byte	0x4
	.4byte	0x115
	.uleb128 0xa
	.byte	0x1
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF20
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0x94
	.4byte	0x18e
	.uleb128 0x8
	.4byte	.LASF22
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF23
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF24
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF25
	.sleb128 9
	.uleb128 0x8
	.4byte	.LASF26
	.sleb128 17
	.uleb128 0x8
	.4byte	.LASF27
	.sleb128 25
	.uleb128 0x8
	.4byte	.LASF28
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF29
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF30
	.sleb128 10
	.uleb128 0x8
	.4byte	.LASF31
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF32
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF33
	.sleb128 11
	.uleb128 0x8
	.4byte	.LASF34
	.sleb128 19
	.uleb128 0x8
	.4byte	.LASF35
	.sleb128 27
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2
	.byte	0xa3
	.4byte	0x131
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0xa6
	.4byte	0x1f6
	.uleb128 0x8
	.4byte	.LASF37
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF38
	.sleb128 9
	.uleb128 0x8
	.4byte	.LASF39
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF40
	.sleb128 9
	.uleb128 0x8
	.4byte	.LASF41
	.sleb128 17
	.uleb128 0x8
	.4byte	.LASF42
	.sleb128 25
	.uleb128 0x8
	.4byte	.LASF43
	.sleb128 10
	.uleb128 0x8
	.4byte	.LASF44
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF45
	.sleb128 10
	.uleb128 0x8
	.4byte	.LASF46
	.sleb128 11
	.uleb128 0x8
	.4byte	.LASF47
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF48
	.sleb128 11
	.uleb128 0x8
	.4byte	.LASF49
	.sleb128 19
	.uleb128 0x8
	.4byte	.LASF50
	.sleb128 27
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x2
	.byte	0xb5
	.4byte	0x199
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0xb8
	.4byte	0x26a
	.uleb128 0x8
	.4byte	.LASF52
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF53
	.sleb128 17
	.uleb128 0x8
	.4byte	.LASF54
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF55
	.sleb128 9
	.uleb128 0x8
	.4byte	.LASF56
	.sleb128 17
	.uleb128 0x8
	.4byte	.LASF57
	.sleb128 25
	.uleb128 0x8
	.4byte	.LASF58
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF59
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF60
	.sleb128 10
	.uleb128 0x8
	.4byte	.LASF61
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF62
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF63
	.sleb128 19
	.uleb128 0x8
	.4byte	.LASF64
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF65
	.sleb128 11
	.uleb128 0x8
	.4byte	.LASF66
	.sleb128 19
	.uleb128 0x8
	.4byte	.LASF67
	.sleb128 27
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x2
	.byte	0xc9
	.4byte	0x201
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0xcc
	.4byte	0x2d8
	.uleb128 0x8
	.4byte	.LASF69
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF70
	.sleb128 25
	.uleb128 0x8
	.4byte	.LASF71
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF72
	.sleb128 9
	.uleb128 0x8
	.4byte	.LASF73
	.sleb128 17
	.uleb128 0x8
	.4byte	.LASF74
	.sleb128 25
	.uleb128 0x8
	.4byte	.LASF75
	.sleb128 10
	.uleb128 0x8
	.4byte	.LASF76
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF77
	.sleb128 10
	.uleb128 0x8
	.4byte	.LASF78
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF79
	.sleb128 27
	.uleb128 0x8
	.4byte	.LASF80
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF81
	.sleb128 11
	.uleb128 0x8
	.4byte	.LASF82
	.sleb128 19
	.uleb128 0x8
	.4byte	.LASF83
	.sleb128 27
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x2
	.byte	0xdc
	.4byte	0x275
	.uleb128 0xd
	.4byte	.LASF95
	.byte	0x28
	.byte	0x6
	.2byte	0x18c
	.4byte	0x387
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x18d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x18e
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x18f
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x190
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x191
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x192
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x193
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x194
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x195
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x196
	.4byte	0x104
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x198
	.4byte	0x2e3
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x8
	.byte	0x7
	.byte	0x29
	.4byte	0x3bc
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0x7
	.byte	0x2a
	.4byte	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0x7
	.byte	0x2b
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x128
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0x7
	.byte	0x2c
	.4byte	0x393
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.byte	0x9c
	.4byte	0x3ee
	.uleb128 0x8
	.4byte	.LASF99
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF100
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF101
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF102
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0x8
	.byte	0xa1
	.4byte	0x3cd
	.uleb128 0x12
	.4byte	.LASF104
	.2byte	0x2020
	.byte	0x8
	.2byte	0x11a
	.4byte	0x485
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x11b
	.4byte	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x11e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x121
	.4byte	0x485
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x122
	.4byte	0x3c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x123
	.4byte	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x124
	.4byte	0x496
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x125
	.4byte	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x126
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x201c
	.byte	0x0
	.uleb128 0x13
	.4byte	0x9b
	.4byte	0x496
	.uleb128 0x14
	.4byte	0x117
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x9b
	.uleb128 0xf
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x128
	.4byte	0x3f9
	.uleb128 0x9
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x9
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x7
	.byte	0x1
	.byte	0x9
	.byte	0x59
	.4byte	0x4d5
	.uleb128 0x8
	.4byte	.LASF113
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF114
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF115
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF116
	.sleb128 3
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.byte	0x9
	.byte	0x62
	.4byte	0x4f6
	.uleb128 0x8
	.4byte	.LASF117
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF118
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF119
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF120
	.sleb128 3
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.byte	0x9
	.byte	0x6a
	.4byte	0x517
	.uleb128 0x8
	.4byte	.LASF121
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF122
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF123
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF124
	.sleb128 3
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.byte	0x9
	.byte	0x72
	.4byte	0x52c
	.uleb128 0x8
	.4byte	.LASF125
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF126
	.sleb128 1
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0xb0
	.byte	0xa
	.byte	0x15
	.4byte	0x6c2
	.uleb128 0x15
	.ascii	"d\000"
	.byte	0xa
	.byte	0x16
	.4byte	0x6c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.ascii	"a\000"
	.byte	0xa
	.byte	0x17
	.4byte	0x6c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.ascii	"pc\000"
	.byte	0xa
	.byte	0x18
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.ascii	"srh\000"
	.byte	0xa
	.byte	0x19
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF128
	.byte	0xa
	.byte	0x1a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0xa
	.byte	0x1b
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x15
	.ascii	"irq\000"
	.byte	0xa
	.byte	0x1c
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x15
	.ascii	"osp\000"
	.byte	0xa
	.byte	0x1d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.ascii	"xc\000"
	.byte	0xa
	.byte	0x1e
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0xa
	.byte	0x1f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0xa
	.byte	0x20
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0xa
	.byte	0x21
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0xa
	.byte	0x22
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0xa
	.byte	0x23
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0xa
	.byte	0x24
	.4byte	0x6e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0xa
	.byte	0x25
	.4byte	0x6e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0xa
	.byte	0x26
	.4byte	0x6e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xa
	.byte	0x27
	.4byte	0x6e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0xa
	.byte	0x28
	.4byte	0x6f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0xa
	.byte	0x29
	.4byte	0x710
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0xa
	.byte	0x2a
	.4byte	0x727
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0xa
	.byte	0x2b
	.4byte	0x6e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0xa
	.byte	0x2c
	.4byte	0x6e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0xa
	.byte	0x2d
	.4byte	0x6e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0xa
	.byte	0x2e
	.4byte	0x73d
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0xa
	.byte	0x2f
	.4byte	0x10f
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0xa
	.byte	0x30
	.4byte	0x749
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0xa
	.byte	0x31
	.4byte	0x74f
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x13
	.4byte	0x7b
	.4byte	0x6d2
	.uleb128 0x16
	.4byte	0x117
	.byte	0x7
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	0x7b
	.4byte	0x6e2
	.uleb128 0x18
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6d2
	.uleb128 0x19
	.byte	0x1
	.4byte	0x6f9
	.uleb128 0x18
	.4byte	0x7b
	.uleb128 0x18
	.4byte	0x33
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6e8
	.uleb128 0x19
	.byte	0x1
	.4byte	0x710
	.uleb128 0x18
	.4byte	0x7b
	.uleb128 0x18
	.4byte	0x57
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6ff
	.uleb128 0x19
	.byte	0x1
	.4byte	0x727
	.uleb128 0x18
	.4byte	0x7b
	.uleb128 0x18
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x716
	.uleb128 0x17
	.byte	0x1
	.4byte	0x69
	.4byte	0x73d
	.uleb128 0x18
	.4byte	0x69
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x72d
	.uleb128 0x1a
	.byte	0x1
	.4byte	0x69
	.uleb128 0x9
	.byte	0x4
	.4byte	0x743
	.uleb128 0x13
	.4byte	0x7b
	.4byte	0x75f
	.uleb128 0x16
	.4byte	0x117
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0xb
	.byte	0x6
	.4byte	0x52c
	.uleb128 0x3
	.4byte	.LASF150
	.byte	0xb
	.byte	0x8
	.4byte	0x775
	.uleb128 0x9
	.byte	0x4
	.4byte	0x77b
	.uleb128 0x17
	.byte	0x1
	.4byte	0xb4
	.4byte	0x78b
	.uleb128 0x18
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF151
	.byte	0xb
	.byte	0x9
	.4byte	0x796
	.uleb128 0x9
	.byte	0x4
	.4byte	0x79c
	.uleb128 0x17
	.byte	0x1
	.4byte	0xbe
	.4byte	0x7ac
	.uleb128 0x18
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF152
	.byte	0xb
	.byte	0xa
	.4byte	0x7b7
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7bd
	.uleb128 0x17
	.byte	0x1
	.4byte	0xc9
	.4byte	0x7cd
	.uleb128 0x18
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF153
	.byte	0xb
	.byte	0xc
	.4byte	0x7d8
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7de
	.uleb128 0x19
	.byte	0x1
	.4byte	0x7ef
	.uleb128 0x18
	.4byte	0xc9
	.uleb128 0x18
	.4byte	0xb4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF154
	.byte	0xb
	.byte	0xd
	.4byte	0x7fa
	.uleb128 0x9
	.byte	0x4
	.4byte	0x800
	.uleb128 0x19
	.byte	0x1
	.4byte	0x811
	.uleb128 0x18
	.4byte	0xc9
	.uleb128 0x18
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF155
	.byte	0xb
	.byte	0xe
	.4byte	0x81c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x822
	.uleb128 0x19
	.byte	0x1
	.4byte	0x833
	.uleb128 0x18
	.4byte	0xc9
	.uleb128 0x18
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0xb
	.byte	0x10
	.4byte	0x7b7
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0xc
	.byte	0xc
	.byte	0x17
	.4byte	0x883
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0xc
	.byte	0x18
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.ascii	"end\000"
	.byte	0xc
	.byte	0x19
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.ascii	"acc\000"
	.byte	0xc
	.byte	0x1a
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF159
	.byte	0xc
	.byte	0x1b
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF160
	.byte	0xc
	.byte	0x1c
	.4byte	0x83e
	.uleb128 0x10
	.4byte	.LASF161
	.byte	0xc
	.byte	0xc
	.byte	0x1f
	.4byte	0x8c5
	.uleb128 0x11
	.4byte	.LASF162
	.byte	0xc
	.byte	0x20
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0xc
	.byte	0x21
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0xc
	.byte	0x22
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF165
	.byte	0xc
	.byte	0x23
	.4byte	0x88e
	.uleb128 0x1b
	.4byte	.LASF343
	.byte	0x1
	.byte	0xd
	.byte	0x99
	.4byte	0x919
	.uleb128 0x8
	.4byte	.LASF166
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF167
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF168
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF169
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF170
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF171
	.sleb128 5
	.uleb128 0x8
	.4byte	.LASF172
	.sleb128 6
	.uleb128 0x8
	.4byte	.LASF173
	.sleb128 7
	.uleb128 0x8
	.4byte	.LASF174
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF175
	.sleb128 9
	.byte	0x0
	.uleb128 0x1c
	.2byte	0x248
	.byte	0xd
	.byte	0xc0
	.4byte	0xd07
	.uleb128 0x15
	.ascii	"cpu\000"
	.byte	0xd
	.byte	0xc1
	.4byte	0x75f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF176
	.byte	0xd
	.byte	0xc4
	.4byte	0xd07
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x11
	.4byte	.LASF177
	.byte	0xd
	.byte	0xc7
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x11
	.4byte	.LASF178
	.byte	0xd
	.byte	0xc8
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x11
	.4byte	.LASF179
	.byte	0xd
	.byte	0xcb
	.4byte	0xd17
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x11
	.4byte	.LASF180
	.byte	0xd
	.byte	0xcc
	.4byte	0x8c5
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x11
	.4byte	.LASF181
	.byte	0xd
	.byte	0xcd
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x11
	.4byte	.LASF182
	.byte	0xd
	.byte	0xd0
	.4byte	0x4ae
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x11
	.4byte	.LASF183
	.byte	0xd
	.byte	0xd1
	.4byte	0x4ae
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0xd
	.byte	0xd2
	.4byte	0x4ae
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x11
	.4byte	.LASF185
	.byte	0xd
	.byte	0xd3
	.4byte	0x4ae
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x11
	.4byte	.LASF186
	.byte	0xd
	.byte	0xd4
	.4byte	0x4ae
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x11
	.4byte	.LASF187
	.byte	0xd
	.byte	0xd5
	.4byte	0x4ae
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x11
	.4byte	.LASF188
	.byte	0xd
	.byte	0xd6
	.4byte	0x4a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x11
	.4byte	.LASF189
	.byte	0xd
	.byte	0xd7
	.4byte	0x4a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x11
	.4byte	.LASF190
	.byte	0xd
	.byte	0xd8
	.4byte	0x4a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x11
	.4byte	.LASF191
	.byte	0xd
	.byte	0xda
	.4byte	0xd27
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x11
	.4byte	.LASF192
	.byte	0xd
	.byte	0xdd
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x11
	.4byte	.LASF193
	.byte	0xd
	.byte	0xde
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x11
	.4byte	.LASF194
	.byte	0xd
	.byte	0xdf
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x11
	.4byte	.LASF195
	.byte	0xd
	.byte	0xe0
	.4byte	0xd38
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x11
	.4byte	.LASF196
	.byte	0xd
	.byte	0xe1
	.4byte	0xd38
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x11
	.4byte	.LASF197
	.byte	0xd
	.byte	0xe2
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x11
	.4byte	.LASF198
	.byte	0xd
	.byte	0xe5
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x11
	.4byte	.LASF199
	.byte	0xd
	.byte	0xe6
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x11
	.4byte	.LASF200
	.byte	0xd
	.byte	0xe7
	.4byte	0x4a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x11
	.4byte	.LASF201
	.byte	0xd
	.byte	0xe8
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x11
	.4byte	.LASF202
	.byte	0xd
	.byte	0xea
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x11
	.4byte	.LASF203
	.byte	0xd
	.byte	0xeb
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x11
	.4byte	.LASF204
	.byte	0xd
	.byte	0xec
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x11
	.4byte	.LASF205
	.byte	0xd
	.byte	0xed
	.4byte	0xd43
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x11
	.4byte	.LASF206
	.byte	0xd
	.byte	0xee
	.4byte	0x4a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x11
	.4byte	.LASF207
	.byte	0xd
	.byte	0xf1
	.4byte	0xdf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x11
	.4byte	.LASF208
	.byte	0xd
	.byte	0xf2
	.4byte	0xdf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x11
	.4byte	.LASF209
	.byte	0xd
	.byte	0xf3
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x11
	.4byte	.LASF210
	.byte	0xd
	.byte	0xf4
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x11
	.4byte	.LASF211
	.byte	0xd
	.byte	0xf7
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x11
	.4byte	.LASF212
	.byte	0xd
	.byte	0xf8
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x11
	.4byte	.LASF213
	.byte	0xd
	.byte	0xf9
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x11
	.4byte	.LASF214
	.byte	0xd
	.byte	0xfa
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x11
	.4byte	.LASF215
	.byte	0xd
	.byte	0xfb
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x11
	.4byte	.LASF216
	.byte	0xd
	.byte	0xfc
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x11
	.4byte	.LASF217
	.byte	0xd
	.byte	0xfd
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xe
	.4byte	.LASF218
	.byte	0xd
	.2byte	0x102
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xe
	.4byte	.LASF219
	.byte	0xd
	.2byte	0x103
	.4byte	0xdf
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xe
	.4byte	.LASF220
	.byte	0xd
	.2byte	0x106
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xe
	.4byte	.LASF221
	.byte	0xd
	.2byte	0x108
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xe
	.4byte	.LASF222
	.byte	0xd
	.2byte	0x109
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xe
	.4byte	.LASF223
	.byte	0xd
	.2byte	0x10a
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xe
	.4byte	.LASF224
	.byte	0xd
	.2byte	0x10b
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xe
	.4byte	.LASF225
	.byte	0xd
	.2byte	0x10d
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xe
	.4byte	.LASF226
	.byte	0xd
	.2byte	0x10e
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xe
	.4byte	.LASF227
	.byte	0xd
	.2byte	0x10f
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xe
	.4byte	.LASF228
	.byte	0xd
	.2byte	0x110
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xe
	.4byte	.LASF229
	.byte	0xd
	.2byte	0x111
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xe
	.4byte	.LASF230
	.byte	0xd
	.2byte	0x114
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xe
	.4byte	.LASF231
	.byte	0xd
	.2byte	0x115
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xe
	.4byte	.LASF232
	.byte	0xd
	.2byte	0x116
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xe
	.4byte	.LASF233
	.byte	0xd
	.2byte	0x117
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xe
	.4byte	.LASF234
	.byte	0xd
	.2byte	0x118
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xe
	.4byte	.LASF235
	.byte	0xd
	.2byte	0x11b
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xe
	.4byte	.LASF236
	.byte	0xd
	.2byte	0x11c
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xe
	.4byte	.LASF237
	.byte	0xd
	.2byte	0x11f
	.4byte	0xd53
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xe
	.4byte	.LASF238
	.byte	0xd
	.2byte	0x122
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xe
	.4byte	.LASF239
	.byte	0xd
	.2byte	0x123
	.4byte	0xd63
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0x13
	.4byte	0x128
	.4byte	0xd17
	.uleb128 0x16
	.4byte	0x117
	.byte	0x8
	.byte	0x0
	.uleb128 0x13
	.4byte	0x883
	.4byte	0xd27
	.uleb128 0x16
	.4byte	0x117
	.byte	0x6
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xd2d
	.uleb128 0x9
	.byte	0x4
	.4byte	0xd33
	.uleb128 0x1d
	.4byte	0xb4
	.uleb128 0x9
	.byte	0x4
	.4byte	0xd3e
	.uleb128 0x1d
	.4byte	0xc9
	.uleb128 0x13
	.4byte	0xc9
	.4byte	0xd53
	.uleb128 0x16
	.4byte	0x117
	.byte	0xf
	.byte	0x0
	.uleb128 0x13
	.4byte	0xb4
	.4byte	0xd63
	.uleb128 0x16
	.4byte	0x117
	.byte	0x7
	.byte	0x0
	.uleb128 0x13
	.4byte	0xb4
	.4byte	0xd72
	.uleb128 0x1e
	.4byte	0x117
	.byte	0x0
	.uleb128 0x1f
	.2byte	0x400
	.byte	0xd
	.byte	0xbf
	.4byte	0xd8d
	.uleb128 0x20
	.4byte	0x919
	.uleb128 0x21
	.4byte	.LASF344
	.byte	0xd
	.2byte	0x125
	.4byte	0xd8d
	.byte	0x0
	.uleb128 0x13
	.4byte	0xc9
	.4byte	0xd9d
	.uleb128 0x16
	.4byte	0x117
	.byte	0xff
	.byte	0x0
	.uleb128 0x22
	.4byte	.LASF240
	.2byte	0x2000
	.byte	0xd
	.byte	0xbe
	.4byte	0xe23
	.uleb128 0x23
	.4byte	0xd72
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF241
	.byte	0xd
	.2byte	0x128
	.4byte	0xe23
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xe
	.4byte	.LASF242
	.byte	0xd
	.2byte	0x129
	.4byte	0xe33
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xe
	.4byte	.LASF243
	.byte	0xd
	.2byte	0x12a
	.4byte	0xe43
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xe
	.4byte	.LASF244
	.byte	0xd
	.2byte	0x12b
	.4byte	0xe53
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xe
	.4byte	.LASF245
	.byte	0xd
	.2byte	0x12c
	.4byte	0xe63
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xe
	.4byte	.LASF246
	.byte	0xd
	.2byte	0x12d
	.4byte	0xe73
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xe
	.4byte	.LASF247
	.byte	0xd
	.2byte	0x12e
	.4byte	0xe83
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0x13
	.4byte	0x76a
	.4byte	0xe33
	.uleb128 0x16
	.4byte	0x117
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x78b
	.4byte	0xe43
	.uleb128 0x16
	.4byte	0x117
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x7ac
	.4byte	0xe53
	.uleb128 0x16
	.4byte	0x117
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x7cd
	.4byte	0xe63
	.uleb128 0x16
	.4byte	0x117
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x7ef
	.4byte	0xe73
	.uleb128 0x16
	.4byte	0x117
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x811
	.4byte	0xe83
	.uleb128 0x16
	.4byte	0x117
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0x833
	.4byte	0xe93
	.uleb128 0x16
	.4byte	0x117
	.byte	0xff
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF248
	.byte	0xd
	.2byte	0x12f
	.4byte	0xd9d
	.uleb128 0x10
	.4byte	.LASF249
	.byte	0x10
	.byte	0xe
	.byte	0x6
	.4byte	0xee4
	.uleb128 0x11
	.4byte	.LASF250
	.byte	0xe
	.byte	0x7
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF251
	.byte	0xe
	.byte	0x8
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF252
	.byte	0xe
	.byte	0x9
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF253
	.byte	0xe
	.byte	0xa
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF254
	.byte	0xe
	.byte	0xb
	.4byte	0xe9f
	.uleb128 0x10
	.4byte	.LASF255
	.byte	0x24
	.byte	0x1
	.byte	0x9
	.4byte	0xf96
	.uleb128 0x11
	.4byte	.LASF256
	.byte	0x1
	.byte	0xa
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF257
	.byte	0x1
	.byte	0xb
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF258
	.byte	0x1
	.byte	0xc
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF259
	.byte	0x1
	.byte	0xd
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x11
	.4byte	.LASF260
	.byte	0x1
	.byte	0xe
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF261
	.byte	0x1
	.byte	0xf
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x11
	.4byte	.LASF262
	.byte	0x1
	.byte	0x11
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF263
	.byte	0x1
	.byte	0x12
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF264
	.byte	0x1
	.byte	0x13
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF265
	.byte	0x1
	.byte	0x14
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF266
	.byte	0x1
	.byte	0x15
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF267
	.byte	0x1
	.byte	0x16
	.4byte	0xeef
	.uleb128 0x22
	.4byte	.LASF268
	.2byte	0x4b8
	.byte	0x1
	.byte	0x1a
	.4byte	0xfe5
	.uleb128 0x15
	.ascii	"cmd\000"
	.byte	0x1
	.byte	0x1b
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.ascii	"m\000"
	.byte	0x1
	.byte	0x1c
	.4byte	0xfe5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF269
	.byte	0x1
	.byte	0x1d
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF270
	.byte	0x1
	.byte	0x1e
	.4byte	0xff5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x13
	.4byte	0xc9
	.4byte	0xff5
	.uleb128 0x16
	.4byte	0x117
	.byte	0xb
	.byte	0x0
	.uleb128 0x13
	.4byte	0xf96
	.4byte	0x1005
	.uleb128 0x16
	.4byte	0x117
	.byte	0x1f
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF271
	.byte	0x1
	.byte	0x1f
	.4byte	0xfa1
	.uleb128 0x10
	.4byte	.LASF272
	.byte	0x4
	.byte	0x1
	.byte	0x23
	.4byte	0x1039
	.uleb128 0x11
	.4byte	.LASF273
	.byte	0x1
	.byte	0x24
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF274
	.byte	0x1
	.byte	0x25
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF275
	.byte	0x1
	.byte	0x26
	.4byte	0x1010
	.uleb128 0x10
	.4byte	.LASF276
	.byte	0x4
	.byte	0x1
	.byte	0x29
	.4byte	0x105f
	.uleb128 0x11
	.4byte	.LASF277
	.byte	0x1
	.byte	0x2a
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF278
	.byte	0x1
	.byte	0x2b
	.4byte	0x1044
	.uleb128 0x24
	.4byte	.LASF345
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.4byte	0xc9
	.byte	0x3
	.4byte	0x1092
	.uleb128 0x25
	.4byte	.LASF279
	.byte	0x1
	.byte	0xc3
	.4byte	0xc9
	.uleb128 0x26
	.4byte	.LASF273
	.byte	0x1
	.byte	0xc5
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x27
	.4byte	.LASF282
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.byte	0x3
	.4byte	0x10c1
	.uleb128 0x25
	.4byte	.LASF280
	.byte	0x1
	.byte	0xd1
	.4byte	0x10c1
	.uleb128 0x25
	.4byte	.LASF281
	.byte	0x1
	.byte	0xd2
	.4byte	0xc9
	.uleb128 0x25
	.4byte	.LASF279
	.byte	0x1
	.byte	0xd2
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xf96
	.uleb128 0x28
	.4byte	.LASF283
	.byte	0x2
	.2byte	0x14d
	.byte	0x1
	.byte	0x3
	.4byte	0x10e0
	.uleb128 0x29
	.ascii	"a\000"
	.byte	0x2
	.2byte	0x14d
	.4byte	0x18e
	.byte	0x0
	.uleb128 0x28
	.4byte	.LASF284
	.byte	0x2
	.2byte	0x153
	.byte	0x1
	.byte	0x3
	.4byte	0x10f9
	.uleb128 0x29
	.ascii	"b\000"
	.byte	0x2
	.2byte	0x153
	.4byte	0x1f6
	.byte	0x0
	.uleb128 0x28
	.4byte	.LASF285
	.byte	0x2
	.2byte	0x159
	.byte	0x1
	.byte	0x3
	.4byte	0x1112
	.uleb128 0x29
	.ascii	"c\000"
	.byte	0x2
	.2byte	0x159
	.4byte	0x26a
	.byte	0x0
	.uleb128 0x28
	.4byte	.LASF286
	.byte	0x2
	.2byte	0x15f
	.byte	0x1
	.byte	0x3
	.4byte	0x112b
	.uleb128 0x29
	.ascii	"d\000"
	.byte	0x2
	.2byte	0x15f
	.4byte	0x2d8
	.byte	0x0
	.uleb128 0x27
	.4byte	.LASF287
	.byte	0x3
	.byte	0x7a
	.byte	0x1
	.byte	0x3
	.4byte	0x1165
	.uleb128 0x25
	.4byte	.LASF288
	.byte	0x3
	.byte	0x7a
	.4byte	0x90
	.uleb128 0x2a
	.ascii	"src\000"
	.byte	0x3
	.byte	0x7a
	.4byte	0x1165
	.uleb128 0x25
	.4byte	.LASF289
	.byte	0x3
	.byte	0x7a
	.4byte	0x128
	.uleb128 0x25
	.4byte	.LASF92
	.byte	0x3
	.byte	0x7a
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x116b
	.uleb128 0x2b
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF346
	.byte	0x1
	.byte	0xbe
	.4byte	.LFB167
	.4byte	.LFE167
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF294
	.byte	0x1
	.2byte	0x1b8
	.4byte	.LFB171
	.4byte	.LFE171
	.4byte	.LLST1
	.4byte	0x11e0
	.uleb128 0x2e
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x1ba
	.4byte	0xd2d
	.4byte	.LLST2
	.uleb128 0x2f
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x11e0
	.uleb128 0x2e
	.4byte	.LASF292
	.byte	0x1
	.2byte	0x1bc
	.4byte	0xea
	.4byte	.LLST3
	.uleb128 0x30
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xdf
	.4byte	.LLST4
	.uleb128 0x31
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x1c0
	.4byte	0xc9
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x11e6
	.uleb128 0x1d
	.4byte	0x105f
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF295
	.byte	0x1
	.byte	0xe2
	.4byte	.LFB170
	.4byte	.LFE170
	.4byte	.LLST5
	.4byte	0x1439
	.uleb128 0x33
	.4byte	.LASF296
	.byte	0x1
	.byte	0xe4
	.4byte	0x1439
	.byte	0x1
	.byte	0x58
	.uleb128 0x34
	.4byte	.LASF297
	.byte	0x1
	.byte	0xe5
	.4byte	0xc9
	.4byte	.LLST6
	.uleb128 0x33
	.4byte	.LASF298
	.byte	0x1
	.byte	0xe6
	.4byte	0xdf
	.byte	0x2
	.byte	0x7d
	.sleb128 52
	.uleb128 0x34
	.4byte	.LASF299
	.byte	0x1
	.byte	0xe7
	.4byte	0xdf
	.4byte	.LLST7
	.uleb128 0x34
	.4byte	.LASF300
	.byte	0x1
	.byte	0xe8
	.4byte	0xdf
	.4byte	.LLST8
	.uleb128 0x33
	.4byte	.LASF301
	.byte	0x1
	.byte	0xe9
	.4byte	0xdf
	.byte	0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x33
	.4byte	.LASF302
	.byte	0x1
	.byte	0xea
	.4byte	0xdf
	.byte	0x1
	.byte	0x5b
	.uleb128 0x33
	.4byte	.LASF303
	.byte	0x1
	.byte	0xeb
	.4byte	0xdf
	.byte	0x2
	.byte	0x7d
	.sleb128 40
	.uleb128 0x33
	.4byte	.LASF304
	.byte	0x1
	.byte	0xec
	.4byte	0xdf
	.byte	0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x33
	.4byte	.LASF305
	.byte	0x1
	.byte	0xed
	.4byte	0xc9
	.byte	0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x33
	.4byte	.LASF306
	.byte	0x1
	.byte	0xee
	.4byte	0x4ae
	.byte	0x2
	.byte	0x7d
	.sleb128 48
	.uleb128 0x33
	.4byte	.LASF307
	.byte	0x1
	.byte	0xef
	.4byte	0xc9
	.byte	0x2
	.byte	0x7d
	.sleb128 44
	.uleb128 0x35
	.ascii	"i\000"
	.byte	0x1
	.byte	0xf0
	.4byte	0xc9
	.4byte	.LLST9
	.uleb128 0x36
	.4byte	.LASF347
	.byte	0x1
	.2byte	0x19d
	.4byte	.L25
	.uleb128 0x37
	.4byte	.LBB24
	.4byte	.LBE24
	.uleb128 0x34
	.4byte	.LASF308
	.byte	0x1
	.byte	0xf9
	.4byte	0xd3e
	.4byte	.LLST10
	.uleb128 0x31
	.4byte	.LASF309
	.byte	0x1
	.2byte	0x12d
	.4byte	0xd38
	.byte	0x3
	.byte	0x7d
	.sleb128 64
	.uleb128 0x2e
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x12e
	.4byte	0xc9
	.4byte	.LLST11
	.uleb128 0x2e
	.4byte	.LASF311
	.byte	0x1
	.2byte	0x12f
	.4byte	0xdf
	.4byte	.LLST12
	.uleb128 0x31
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x130
	.4byte	0xdf
	.byte	0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x31
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x131
	.4byte	0x104
	.byte	0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x30
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x132
	.4byte	0xdf
	.4byte	.LLST13
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x0
	.4byte	0x1421
	.uleb128 0x2e
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x145
	.4byte	0xd3e
	.4byte	.LLST14
	.uleb128 0x2e
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x152
	.4byte	0xd3e
	.4byte	.LLST15
	.uleb128 0x2f
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x159
	.4byte	0xd3e
	.uleb128 0x2e
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x15a
	.4byte	0xc9
	.4byte	.LLST16
	.uleb128 0x2f
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x198
	.4byte	0xd3e
	.uleb128 0x39
	.4byte	0x1092
	.4byte	.LBB32
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.2byte	0x19b
	.4byte	0x13ae
	.uleb128 0x3a
	.4byte	0x10b5
	.uleb128 0x3a
	.4byte	0x10aa
	.uleb128 0x3a
	.4byte	0x109f
	.byte	0x0
	.uleb128 0x3b
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	0x13c8
	.uleb128 0x2f
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x18a
	.4byte	0xd3e
	.byte	0x0
	.uleb128 0x3c
	.4byte	0x106a
	.4byte	.LBB41
	.4byte	.LBE41
	.byte	0x1
	.2byte	0x152
	.4byte	0x13f5
	.uleb128 0x3a
	.4byte	0x107b
	.uleb128 0x37
	.4byte	.LBB42
	.4byte	.LBE42
	.uleb128 0x3d
	.4byte	0x1086
	.4byte	.LLST17
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0x140e
	.uleb128 0x31
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x1444
	.byte	0x2
	.byte	0x7d
	.sleb128 60
	.byte	0x0
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0xb8
	.uleb128 0x2f
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x160
	.4byte	0x1449
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.4byte	.LBB56
	.4byte	.LBE56
	.uleb128 0x2f
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x1ad
	.4byte	0xd3e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x143e
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1005
	.uleb128 0x1d
	.4byte	0xdf
	.uleb128 0x9
	.byte	0x4
	.4byte	0x105f
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF320
	.byte	0x1
	.byte	0x56
	.4byte	.LFB166
	.4byte	.LFE166
	.4byte	.LLST18
	.4byte	0x1555
	.uleb128 0x35
	.ascii	"i\000"
	.byte	0x1
	.byte	0x58
	.4byte	0xdf
	.4byte	.LLST19
	.uleb128 0x3f
	.ascii	"x0\000"
	.byte	0x1
	.byte	0x6f
	.4byte	0x1444
	.uleb128 0x3f
	.ascii	"x1\000"
	.byte	0x1
	.byte	0x70
	.4byte	0x1444
	.uleb128 0x33
	.4byte	.LASF293
	.byte	0x1
	.byte	0x90
	.4byte	0xc9
	.byte	0x1
	.byte	0x5b
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0xd0
	.4byte	0x14bb
	.uleb128 0x35
	.ascii	"y0\000"
	.byte	0x1
	.byte	0x72
	.4byte	0x1444
	.4byte	.LLST20
	.uleb128 0x35
	.ascii	"y1\000"
	.byte	0x1
	.byte	0x73
	.4byte	0x1444
	.4byte	.LLST21
	.byte	0x0
	.uleb128 0x40
	.4byte	0x10c7
	.4byte	.LBB61
	.4byte	.LBE61
	.byte	0x1
	.byte	0x84
	.4byte	0x14d4
	.uleb128 0x3a
	.4byte	0x10d5
	.byte	0x0
	.uleb128 0x40
	.4byte	0x10e0
	.4byte	.LBB63
	.4byte	.LBE63
	.byte	0x1
	.byte	0x85
	.4byte	0x14ed
	.uleb128 0x3a
	.4byte	0x10ee
	.byte	0x0
	.uleb128 0x40
	.4byte	0x10f9
	.4byte	.LBB65
	.4byte	.LBE65
	.byte	0x1
	.byte	0x86
	.4byte	0x1506
	.uleb128 0x3a
	.4byte	0x1107
	.byte	0x0
	.uleb128 0x40
	.4byte	0x1112
	.4byte	.LBB67
	.4byte	.LBE67
	.byte	0x1
	.byte	0x87
	.4byte	0x151f
	.uleb128 0x3a
	.4byte	0x1120
	.byte	0x0
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0xf8
	.uleb128 0x26
	.4byte	.LASF321
	.byte	0x1
	.byte	0x94
	.4byte	0x1555
	.uleb128 0x41
	.4byte	0x112b
	.4byte	.LBB71
	.4byte	.Ldebug_ranges0+0x128
	.byte	0x1
	.byte	0x9a
	.uleb128 0x3a
	.4byte	0x1159
	.uleb128 0x3a
	.4byte	0x114e
	.uleb128 0x3a
	.4byte	0x1143
	.uleb128 0x3a
	.4byte	0x1138
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1039
	.uleb128 0x2f
	.4byte	.LASF322
	.byte	0x8
	.2byte	0x12e
	.4byte	0x1567
	.uleb128 0x9
	.byte	0x4
	.4byte	0x49c
	.uleb128 0x13
	.4byte	0x1039
	.4byte	0x157e
	.uleb128 0x14
	.4byte	0x117
	.2byte	0x1ff
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF323
	.byte	0x1
	.byte	0x39
	.4byte	0x156d
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteCache
	.uleb128 0x33
	.4byte	.LASF324
	.byte	0x1
	.byte	0x3a
	.4byte	0xc9
	.byte	0x5
	.byte	0x3
	.4byte	g_cacheIndex
	.uleb128 0x13
	.4byte	0xbe
	.4byte	0x15b1
	.uleb128 0x14
	.4byte	0x117
	.2byte	0xffff
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF325
	.byte	0x1
	.byte	0x3e
	.4byte	0x15a0
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteTable
	.uleb128 0x13
	.4byte	0xb4
	.4byte	0x15d3
	.uleb128 0x14
	.4byte	0x117
	.2byte	0xffff
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF326
	.byte	0x1
	.byte	0x3f
	.4byte	0x15c2
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteUsed
	.uleb128 0x33
	.4byte	.LASF327
	.byte	0x1
	.byte	0x41
	.4byte	0x15c2
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteLoadBuffer
	.uleb128 0x13
	.4byte	0x105f
	.4byte	0x1605
	.uleb128 0x16
	.4byte	0x117
	.byte	0x3f
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF328
	.byte	0x1
	.byte	0x42
	.4byte	0x15f5
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteTransfer
	.uleb128 0x33
	.4byte	.LASF329
	.byte	0x1
	.byte	0x43
	.4byte	0xc9
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteTransferIndex
	.uleb128 0x33
	.4byte	.LASF330
	.byte	0x1
	.byte	0x46
	.4byte	0x143e
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteList
	.uleb128 0x42
	.4byte	.LASF331
	.byte	0x2
	.byte	0x56
	.4byte	0xbe
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.4byte	.LASF332
	.byte	0x2
	.byte	0x57
	.4byte	0xbe
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	0x1662
	.4byte	0x1662
	.uleb128 0x16
	.4byte	0x117
	.byte	0x7
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1668
	.uleb128 0x6
	.4byte	0x57
	.uleb128 0x43
	.4byte	.LASF333
	.byte	0x6
	.2byte	0x19c
	.4byte	0x1652
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	0x387
	.4byte	0x168b
	.uleb128 0x16
	.4byte	0x117
	.byte	0x7
	.byte	0x0
	.uleb128 0x43
	.4byte	.LASF334
	.byte	0x6
	.2byte	0x19f
	.4byte	0x167b
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF335
	.byte	0x8
	.2byte	0x12b
	.4byte	0x49c
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF336
	.byte	0xd
	.2byte	0x149
	.4byte	0x16b6
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x9
	.byte	0x4
	.4byte	0xe93
	.uleb128 0x43
	.4byte	.LASF337
	.byte	0xd
	.2byte	0x14d
	.4byte	0xe93
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.4byte	.LASF338
	.byte	0xe
	.byte	0x52
	.4byte	0xee4
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.4byte	.LASF339
	.byte	0xe
	.byte	0x59
	.4byte	0xbe
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.4byte	.LASF340
	.byte	0x1
	.byte	0x44
	.4byte	0xc9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteCount
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
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
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
	.uleb128 0x16
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x30
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
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x45
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
	.4byte	0x16f7
	.4byte	0x116c
	.ascii	"neoSpriteExit\000"
	.4byte	0x117e
	.ascii	"neoLoadSprites\000"
	.4byte	0x11eb
	.ascii	"neoDrawSprites\000"
	.4byte	0x144f
	.ascii	"neoSpriteInit\000"
	.4byte	0x16a7
	.ascii	"g_neo\000"
	.4byte	0x16e4
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
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	.LBB53-.Ltext0
	.4byte	.LBE53-.Ltext0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB57-.Ltext0
	.4byte	.LBE57-.Ltext0
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	.LBB59-.Ltext0
	.4byte	.LBE59-.Ltext0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB69-.Ltext0
	.4byte	.LBE69-.Ltext0
	.4byte	.LBB77-.Ltext0
	.4byte	.LBE77-.Ltext0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	.LBB74-.Ltext0
	.4byte	.LBE74-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB71-.Ltext0
	.4byte	.LBE71-.Ltext0
	.4byte	.LBB70-.Ltext0
	.4byte	.LBE70-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF106:
	.ascii	"clearColor\000"
.LASF311:
	.ascii	"fxTileYPos\000"
.LASF198:
	.ascii	"scanline\000"
.LASF135:
	.ascii	"checkpc\000"
.LASF255:
	.ascii	"_TSpritePacket\000"
.LASF139:
	.ascii	"write8\000"
.LASF321:
	.ascii	"pEntry\000"
.LASF296:
	.ascii	"pDisplayList\000"
.LASF300:
	.ascii	"fxYPos\000"
.LASF225:
	.ascii	"ctrl1Reg\000"
.LASF317:
	.ascii	"vramIndex\000"
.LASF204:
	.ascii	"spriteMask\000"
.LASF312:
	.ascii	"fxHeightToDraw\000"
.LASF227:
	.ascii	"ctrl3Reg\000"
.LASF144:
	.ascii	"fetch32\000"
.LASF322:
	.ascii	"glGlob\000"
.LASF278:
	.ascii	"TSpriteTransferEntry\000"
.LASF212:
	.ascii	"cpuClocksPerScanline\000"
.LASF124:
	.ascii	"OBJSIZE_64\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF246:
	.ascii	"cpuWrite32Table\000"
.LASF245:
	.ascii	"cpuWrite16Table\000"
.LASF324:
	.ascii	"g_cacheIndex\000"
.LASF13:
	.ascii	"uint32\000"
.LASF298:
	.ascii	"zoomY\000"
.LASF282:
	.ascii	"drawSpriteTile\000"
.LASF133:
	.ascii	"cycles\000"
.LASF101:
	.ascii	"GL_MODELVIEW\000"
.LASF22:
	.ascii	"VRAM_A_LCD\000"
.LASF329:
	.ascii	"g_spriteTransferIndex\000"
.LASF310:
	.ascii	"packetCount\000"
.LASF305:
	.ascii	"fullmode\000"
.LASF302:
	.ascii	"fxHeight\000"
.LASF102:
	.ascii	"GL_TEXTURE\000"
.LASF234:
	.ascii	"paletteRamLatch\000"
.LASF93:
	.ascii	"type\000"
.LASF239:
	.ascii	"varEnd\000"
.LASF327:
	.ascii	"g_spriteLoadBuffer\000"
.LASF77:
	.ascii	"VRAM_D_ARM7_0x06020000\000"
.LASF346:
	.ascii	"neoSpriteExit\000"
.LASF153:
	.ascii	"TWrite8Func\000"
.LASF136:
	.ascii	"read8\000"
.LASF41:
	.ascii	"VRAM_B_MAIN_BG_0x06040000\000"
.LASF125:
	.ascii	"OBJCOLOR_16\000"
.LASF293:
	.ascii	"banks\000"
.LASF140:
	.ascii	"write16\000"
.LASF45:
	.ascii	"VRAM_B_MAIN_SPRITE_0x06420000\000"
.LASF165:
	.ascii	"TNeoADPCMBStream\000"
.LASF150:
	.ascii	"TRead8Func\000"
.LASF58:
	.ascii	"VRAM_C_ARM7\000"
.LASF336:
	.ascii	"g_neo\000"
.LASF60:
	.ascii	"VRAM_C_ARM7_0x06020000\000"
.LASF243:
	.ascii	"cpuRead32Table\000"
.LASF103:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF20:
	.ascii	"long int\000"
.LASF339:
	.ascii	"g_frameCount\000"
.LASF291:
	.ascii	"pSrc\000"
.LASF54:
	.ascii	"VRAM_C_MAIN_BG_0x06000000\000"
.LASF142:
	.ascii	"fetch8\000"
.LASF277:
	.ascii	"pDst\000"
.LASF237:
	.ascii	"keyGrid\000"
.LASF68:
	.ascii	"VRAM_C_TYPE\000"
.LASF141:
	.ascii	"write32\000"
.LASF97:
	.ascii	"data\000"
.LASF114:
	.ascii	"OBJMODE_BLENDED\000"
.LASF240:
	.ascii	"_TNeoContext\000"
.LASF145:
	.ascii	"IrqCallback\000"
.LASF156:
	.ascii	"TCheckPcFunc\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF61:
	.ascii	"VRAM_C_SUB_BG\000"
.LASF217:
	.ascii	"romBankAddress\000"
.LASF159:
	.ascii	"step\000"
.LASF181:
	.ascii	"adpcmActive\000"
.LASF172:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF244:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF209:
	.ascii	"tileScaleX\000"
.LASF210:
	.ascii	"tileScaleY\000"
.LASF57:
	.ascii	"VRAM_C_MAIN_BG_0x06060000\000"
.LASF214:
	.ascii	"watchdogCounter\000"
.LASF174:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF201:
	.ascii	"vramBaseMask\000"
.LASF177:
	.ascii	"spriteCount\000"
.LASF276:
	.ascii	"_TSpriteTransferEntry\000"
.LASF47:
	.ascii	"VRAM_B_TEXTURE_SLOT0\000"
.LASF48:
	.ascii	"VRAM_B_TEXTURE_SLOT1\000"
.LASF49:
	.ascii	"VRAM_B_TEXTURE_SLOT2\000"
.LASF50:
	.ascii	"VRAM_B_TEXTURE_SLOT3\000"
.LASF147:
	.ascii	"UnrecognizedCallback\000"
.LASF23:
	.ascii	"VRAM_A_MAIN_BG\000"
.LASF71:
	.ascii	"VRAM_D_MAIN_BG_0x06000000\000"
.LASF191:
	.ascii	"bankTable\000"
.LASF303:
	.ascii	"fxYPosClamp\000"
.LASF19:
	.ascii	"char\000"
.LASF95:
	.ascii	"BgState\000"
.LASF281:
	.ascii	"tileIndex\000"
.LASF79:
	.ascii	"VRAM_D_TEXTURE\000"
.LASF128:
	.ascii	"unused\000"
.LASF231:
	.ascii	"screenDarkLatch\000"
.LASF309:
	.ascii	"pTable\000"
.LASF130:
	.ascii	"prev_pc\000"
.LASF161:
	.ascii	"_TNeoADPCMBStream\000"
.LASF307:
	.ascii	"spritesUsed\000"
.LASF72:
	.ascii	"VRAM_D_MAIN_BG_0x06020000\000"
.LASF24:
	.ascii	"VRAM_A_MAIN_BG_0x06000000\000"
.LASF333:
	.ascii	"bgControl\000"
.LASF304:
	.ascii	"rows\000"
.LASF167:
	.ascii	"NEOROM_BIOS\000"
.LASF129:
	.ascii	"flags\000"
.LASF203:
	.ascii	"autoAnimationCounter\000"
.LASF107:
	.ascii	"textures\000"
.LASF154:
	.ascii	"TWrite16Func\000"
.LASF335:
	.ascii	"glGlobalData\000"
.LASF100:
	.ascii	"GL_POSITION\000"
.LASF211:
	.ascii	"cpuClockDivide\000"
.LASF271:
	.ascii	"TSpriteDisplayList\000"
.LASF199:
	.ascii	"frameCount\000"
.LASF256:
	.ascii	"cmd0\000"
.LASF262:
	.ascii	"cmd1\000"
.LASF344:
	.ascii	"fill\000"
.LASF120:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF16:
	.ascii	"false\000"
.LASF283:
	.ascii	"vramSetBankA\000"
.LASF27:
	.ascii	"VRAM_A_MAIN_BG_0x06060000\000"
.LASF151:
	.ascii	"TRead16Func\000"
.LASF115:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF28:
	.ascii	"VRAM_A_MAIN_SPRITE\000"
.LASF318:
	.ascii	"listSize\000"
.LASF273:
	.ascii	"index\000"
.LASF185:
	.ascii	"pRam\000"
.LASF96:
	.ascii	"DynamicArray\000"
.LASF76:
	.ascii	"VRAM_D_ARM7_0x06000000\000"
.LASF21:
	.ascii	"long unsigned int\000"
.LASF345:
	.ascii	"getSpriteIndex\000"
.LASF171:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF342:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/NeoVideoS"
	.ascii	"prites.arm.c\000"
.LASF113:
	.ascii	"OBJMODE_NORMAL\000"
.LASF279:
	.ascii	"tileControl\000"
.LASF328:
	.ascii	"g_spriteTransfer\000"
.LASF118:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF242:
	.ascii	"cpuRead16Table\000"
.LASF223:
	.ascii	"displayControlMask\000"
.LASF44:
	.ascii	"VRAM_B_MAIN_SPRITE_0x06400000\000"
.LASF149:
	.ascii	"TCycloneContext\000"
.LASF168:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF64:
	.ascii	"VRAM_C_TEXTURE_SLOT0\000"
.LASF65:
	.ascii	"VRAM_C_TEXTURE_SLOT1\000"
.LASF66:
	.ascii	"VRAM_C_TEXTURE_SLOT2\000"
.LASF67:
	.ascii	"VRAM_C_TEXTURE_SLOT3\000"
.LASF235:
	.ascii	"active\000"
.LASF206:
	.ascii	"pTileBuffer\000"
.LASF127:
	.ascii	"Cyclone\000"
.LASF59:
	.ascii	"VRAM_C_ARM7_0x06000000\000"
.LASF184:
	.ascii	"pBios\000"
.LASF62:
	.ascii	"VRAM_C_SUB_BG_0x06200000\000"
.LASF288:
	.ascii	"channel\000"
.LASF297:
	.ascii	"zoomControl\000"
.LASF85:
	.ascii	"angle\000"
.LASF230:
	.ascii	"irqVectorLatch\000"
.LASF205:
	.ascii	"paletteDirty\000"
.LASF105:
	.ascii	"matrixMode\000"
.LASF78:
	.ascii	"VRAM_D_SUB_SPRITE\000"
.LASF247:
	.ascii	"cpuCheckPcTable\000"
.LASF270:
	.ascii	"packet\000"
.LASF63:
	.ascii	"VRAM_C_TEXTURE\000"
.LASF38:
	.ascii	"VRAM_B_MAIN_BG\000"
.LASF290:
	.ascii	"pTransfer\000"
.LASF197:
	.ascii	"smaRand\000"
.LASF157:
	.ascii	"_TNeoADPCMStream\000"
.LASF155:
	.ascii	"TWrite32Func\000"
.LASF341:
	.ascii	"GNU C 4.4.3\000"
.LASF272:
	.ascii	"_TSpriteCacheEntry\000"
.LASF340:
	.ascii	"g_spriteCount\000"
.LASF249:
	.ascii	"_TNeoVideoBounds\000"
.LASF10:
	.ascii	"long long int\000"
.LASF99:
	.ascii	"GL_PROJECTION\000"
.LASF229:
	.ascii	"coinReg\000"
.LASF175:
	.ascii	"NEOROM_COUNT\000"
.LASF162:
	.ascii	"initOffset\000"
.LASF299:
	.ascii	"fxXPos\000"
.LASF334:
	.ascii	"bgState\000"
.LASF90:
	.ascii	"scrollX\000"
.LASF91:
	.ascii	"scrollY\000"
.LASF226:
	.ascii	"ctrl2Reg\000"
.LASF15:
	.ascii	"double\000"
.LASF148:
	.ascii	"internal\000"
.LASF40:
	.ascii	"VRAM_B_MAIN_BG_0x06020000\000"
.LASF228:
	.ascii	"ctrl4Reg\000"
.LASF274:
	.ascii	"frame\000"
.LASF192:
	.ascii	"smaAddr0\000"
.LASF193:
	.ascii	"smaAddr1\000"
.LASF202:
	.ascii	"displayCounter\000"
.LASF319:
	.ascii	"skip\000"
.LASF164:
	.ascii	"frequency\000"
.LASF56:
	.ascii	"VRAM_C_MAIN_BG_0x06040000\000"
.LASF14:
	.ascii	"float\000"
.LASF187:
	.ascii	"pCard\000"
.LASF301:
	.ascii	"fxWidth\000"
.LASF30:
	.ascii	"VRAM_A_MAIN_SPRITE_0x06420000\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF51:
	.ascii	"VRAM_B_TYPE\000"
.LASF119:
	.ascii	"OBJSHAPE_TALL\000"
.LASF257:
	.ascii	"texImage\000"
.LASF258:
	.ascii	"palette\000"
.LASF295:
	.ascii	"neoDrawSprites\000"
.LASF222:
	.ascii	"displayControl\000"
.LASF314:
	.ascii	"actualIndex\000"
.LASF69:
	.ascii	"VRAM_D_LCD\000"
.LASF200:
	.ascii	"pVramBase\000"
.LASF224:
	.ascii	"displayCounterLoad\000"
.LASF316:
	.ascii	"cache1Index\000"
.LASF126:
	.ascii	"OBJCOLOR_256\000"
.LASF158:
	.ascii	"offset\000"
.LASF169:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF31:
	.ascii	"VRAM_A_TEXTURE\000"
.LASF267:
	.ascii	"TSpritePacket\000"
.LASF182:
	.ascii	"pRom0\000"
.LASF183:
	.ascii	"pRom1\000"
.LASF207:
	.ascii	"tileOffsetX\000"
.LASF208:
	.ascii	"tileOffsetY\000"
.LASF36:
	.ascii	"VRAM_A_TYPE\000"
.LASF80:
	.ascii	"VRAM_D_TEXTURE_SLOT0\000"
.LASF81:
	.ascii	"VRAM_D_TEXTURE_SLOT1\000"
.LASF82:
	.ascii	"VRAM_D_TEXTURE_SLOT2\000"
.LASF83:
	.ascii	"VRAM_D_TEXTURE_SLOT3\000"
.LASF18:
	.ascii	"bool\000"
.LASF166:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF109:
	.ascii	"activeTexture\000"
.LASF220:
	.ascii	"vramOffset\000"
.LASF137:
	.ascii	"read16\000"
.LASF275:
	.ascii	"TSpriteCacheEntry\000"
.LASF343:
	.ascii	"_TNeoRomRegion\000"
.LASF252:
	.ascii	"maxX\000"
.LASF253:
	.ascii	"maxY\000"
.LASF233:
	.ascii	"sramProtectLatch\000"
.LASF269:
	.ascii	"begin\000"
.LASF248:
	.ascii	"TNeoContext\000"
.LASF74:
	.ascii	"VRAM_D_MAIN_BG_0x06060000\000"
.LASF26:
	.ascii	"VRAM_A_MAIN_BG_0x06040000\000"
.LASF134:
	.ascii	"membase\000"
.LASF163:
	.ascii	"freqCounter\000"
.LASF254:
	.ascii	"TNeoVideoBounds\000"
.LASF259:
	.ascii	"palettePad\000"
.LASF116:
	.ascii	"OBJMODE_BITMAP\000"
.LASF75:
	.ascii	"VRAM_D_ARM7\000"
.LASF92:
	.ascii	"size\000"
.LASF190:
	.ascii	"pPalette\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF337:
	.ascii	"g_neoContext\000"
.LASF53:
	.ascii	"VRAM_C_MAIN_BG\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF320:
	.ascii	"neoSpriteInit\000"
.LASF323:
	.ascii	"g_spriteCache\000"
.LASF138:
	.ascii	"read32\000"
.LASF284:
	.ascii	"vramSetBankB\000"
.LASF285:
	.ascii	"vramSetBankC\000"
.LASF286:
	.ascii	"vramSetBankD\000"
.LASF263:
	.ascii	"vertex0\000"
.LASF264:
	.ascii	"vertex1\000"
.LASF265:
	.ascii	"vertex2\000"
.LASF266:
	.ascii	"vertex3\000"
.LASF39:
	.ascii	"VRAM_B_MAIN_BG_0x06000000\000"
.LASF268:
	.ascii	"_TSpriteDisplayList\000"
.LASF236:
	.ascii	"debug\000"
.LASF173:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF32:
	.ascii	"VRAM_A_TEXTURE_SLOT0\000"
.LASF33:
	.ascii	"VRAM_A_TEXTURE_SLOT1\000"
.LASF34:
	.ascii	"VRAM_A_TEXTURE_SLOT2\000"
.LASF35:
	.ascii	"VRAM_A_TEXTURE_SLOT3\000"
.LASF98:
	.ascii	"cur_size\000"
.LASF313:
	.ascii	"matrixDirty\000"
.LASF43:
	.ascii	"VRAM_B_MAIN_SPRITE\000"
.LASF315:
	.ascii	"cacheEntryIndex\000"
.LASF241:
	.ascii	"cpuRead8Table\000"
.LASF52:
	.ascii	"VRAM_C_LCD\000"
.LASF180:
	.ascii	"adpcmb\000"
.LASF189:
	.ascii	"pSpriteRam\000"
.LASF289:
	.ascii	"dest\000"
.LASF195:
	.ascii	"smaBankoffset\000"
.LASF216:
	.ascii	"fixedBank\000"
.LASF292:
	.ascii	"dummy\000"
.LASF110:
	.ascii	"nextBlock\000"
.LASF121:
	.ascii	"OBJSIZE_8\000"
.LASF132:
	.ascii	"state_flags\000"
.LASF84:
	.ascii	"VRAM_D_TYPE\000"
.LASF42:
	.ascii	"VRAM_B_MAIN_BG_0x06060000\000"
.LASF219:
	.ascii	"sramProtection\000"
.LASF347:
	.ascii	"skipTile\000"
.LASF12:
	.ascii	"uint8\000"
.LASF186:
	.ascii	"pSram\000"
.LASF4:
	.ascii	"short int\000"
.LASF238:
	.ascii	"frameCounter\000"
.LASF46:
	.ascii	"VRAM_B_TEXTURE\000"
.LASF111:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF146:
	.ascii	"ResetCallback\000"
.LASF17:
	.ascii	"true\000"
.LASF55:
	.ascii	"VRAM_C_MAIN_BG_0x06020000\000"
.LASF108:
	.ascii	"texturePtrs\000"
.LASF280:
	.ascii	"pPacket\000"
.LASF294:
	.ascii	"neoLoadSprites\000"
.LASF29:
	.ascii	"VRAM_A_MAIN_SPRITE_0x06400000\000"
.LASF188:
	.ascii	"pVram\000"
.LASF287:
	.ascii	"dmaCopyWords\000"
.LASF122:
	.ascii	"OBJSIZE_16\000"
.LASF213:
	.ascii	"irqPending\000"
.LASF86:
	.ascii	"centerX\000"
.LASF87:
	.ascii	"centerY\000"
.LASF152:
	.ascii	"TRead32Func\000"
.LASF330:
	.ascii	"g_spriteList\000"
.LASF331:
	.ascii	"mosaicShadow\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF306:
	.ascii	"pLoadDst\000"
.LASF88:
	.ascii	"scaleX\000"
.LASF89:
	.ascii	"scaleY\000"
.LASF37:
	.ascii	"VRAM_B_LCD\000"
.LASF70:
	.ascii	"VRAM_D_MAIN_BG\000"
.LASF131:
	.ascii	"reserved\000"
.LASF179:
	.ascii	"adpcm\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF104:
	.ascii	"gl_hidden_globals\000"
.LASF123:
	.ascii	"OBJSIZE_32\000"
.LASF250:
	.ascii	"minX\000"
.LASF251:
	.ascii	"minY\000"
.LASF332:
	.ascii	"mosaicShadowSub\000"
.LASF338:
	.ascii	"g_videoBounds\000"
.LASF176:
	.ascii	"pVideoWriteTable\000"
.LASF215:
	.ascii	"paletteBank\000"
.LASF260:
	.ascii	"texCoordx\000"
.LASF261:
	.ascii	"texCoordy\000"
.LASF94:
	.ascii	"dirty\000"
.LASF112:
	.ascii	"nameCount\000"
.LASF194:
	.ascii	"smaBankAddr\000"
.LASF143:
	.ascii	"fetch16\000"
.LASF308:
	.ascii	"yControl\000"
.LASF117:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF196:
	.ascii	"smaBankbit\000"
.LASF326:
	.ascii	"g_spriteUsed\000"
.LASF170:
	.ascii	"NEOROM_AUDODATA\000"
.LASF73:
	.ascii	"VRAM_D_MAIN_BG_0x06040000\000"
.LASF25:
	.ascii	"VRAM_A_MAIN_BG_0x06020000\000"
.LASF232:
	.ascii	"fixedRomLatch\000"
.LASF218:
	.ascii	"sramProtectCount\000"
.LASF178:
	.ascii	"romBankCount\000"
.LASF160:
	.ascii	"TNeoADPCMStream\000"
.LASF221:
	.ascii	"vramMod\000"
.LASF325:
	.ascii	"g_spriteTable\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
