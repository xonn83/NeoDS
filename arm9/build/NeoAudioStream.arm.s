	.file	"NeoAudioStream.arm.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.type	neoAudioCommand, %function
neoAudioCommand:
.LFB114:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoAudioStream.arm.c"
	.loc 1 491 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 493 0
	mov	r3, #12
	mla	r2, r0, r3, r7
	.loc 1 495 0
	ldr	r3, [r1, #0]
	.loc 1 491 0
	@ lr needed for prologue
	.loc 1 495 0
	sub	r3, r3, #1
	.loc 1 493 0
	add	r2, r2, #220
.LVL1:
	.loc 1 495 0
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L13
	.p2align 2
.L7:
	.word	.L3
	.word	.L4
	.word	.L5
	.word	.L6
.L4:
	.loc 1 497 0
	ldr	r3, [r1, #4]
	.loc 1 499 0
	cmp	r0, #5
	.loc 1 497 0
	bic	r3, r3, #-2147483648
	str	r3, [r2, #0]
	.loc 1 498 0
	mov	ip, #0
	.loc 1 504 0
	movhi	r3, #127	@ movhi
	strhih	r3, [r2, #10]	@ movhi
	.loc 1 498 0
	strh	ip, [r2, #8]	@ movhi
	.loc 1 506 0
	ldrhi	r3, [r1, #4]
	.loc 1 507 0
	strhi	ip, [r7, #308]
	.loc 1 506 0
	strhi	r3, [r7, #304]
	.loc 1 501 0
	strlsh	ip, [r2, #10]	@ movhi
	.loc 1 509 0
	ldr	r3, [r2, #0]
	ldr	r2, .L14
.LVL2:
	ldr	r2, [r2, #-247]
	cmp	r3, r2
	bxcs	lr
	.loc 1 511 0
	ldr	r3, [r7, #316]
	mov	r2, #1
	orr	r3, r3, r2, asl r0
	str	r3, [r7, #316]
	.loc 1 512 0
	ldr	r3, .L14+4
	mov	r2, #0
	str	r2, [r3, r0, asl #2]
	bx	lr
.LVL3:
.L5:
	.loc 1 516 0
	ldr	r3, [r1, #4]
	str	r3, [r2, #4]
	bx	lr
.L3:
	.loc 1 519 0
	ldr	r3, [r7, #316]
	mov	r2, #1
.LVL4:
	bic	r3, r3, r2, asl r0
	str	r3, [r7, #316]
	bx	lr
.LVL5:
.L6:
	.loc 1 523 0
	cmp	r0, #6
	bxne	lr
	.loc 1 526 0
	ldr	r3, [r1, #4]
	str	r3, [r7, #312]
.L13:
	bx	lr
.L15:
	.align	2
.L14:
	.word	41940223
	.word	g_zeroFill
.LFE114:
	.size	neoAudioCommand, .-neoAudioCommand
	.align	2
	.type	neoAudioStream, %function
neoAudioStream:
.LFB110:
	.loc 1 217 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6:
	stmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
.LCFI0:
	.loc 1 227 0
	ldr	sl, .L23
	.loc 1 218 0
	mov	r6, r0, lsr #10
.LVL7:
	.loc 1 227 0
	ldrb	r3, [sl, r6]	@ zero_extendqisi2
	.loc 1 220 0
	mov	r8, r0, asl #22
.LVL8:
	.loc 1 228 0
	cmp	r3, #255
	.loc 1 227 0
	mov	r5, r3
.LVL9:
	.loc 1 230 0
	ldr	r9, .L23+4
	.loc 1 239 0
	mov	r2, r6, asl #10
	mov	r0, #4
.LVL10:
	mov	r3, #1024
	.loc 1 217 0
	mov	fp, r1
	.loc 1 220 0
	mov	r8, r8, lsr #22
	.loc 1 228 0
	bne	.L19
.LVL11:
	.loc 1 230 0
	ldrb	r5, [r9, #1002]	@ zero_extendqisi2
	.loc 1 239 0
	ldr	r1, .L23+8
	.loc 1 234 0
	mov	lr, r5, asl #2
	ldrh	r4, [lr, r9]
	mvn	ip, #0
	.loc 1 239 0
	add	r1, r1, r5, asl #10
	.loc 1 234 0
	strb	ip, [sl, r4]
	.loc 1 237 0
	strh	r6, [lr, r9]	@ movhi
	.loc 1 236 0
	strb	r5, [sl, r6]
	.loc 1 239 0
	bl	neoSystemReadRegion
.LVL12:
.L19:
.LBB4:
.LBB5:
	.loc 1 198 0
	ldr	r2, .L23+4
	.loc 1 212 0
	and	lr, r5, #255
	.loc 1 198 0
	add	r0, r2, r5, asl #2
.LVL13:
	.loc 1 206 0
	ldrb	ip, [r0, #2]	@ zero_extendqisi2
	ldrb	r1, [r0, #3]	@ zero_extendqisi2
	add	r3, r2, ip, asl #2
	strb	r1, [r3, #3]
	.loc 1 210 0
	ldrb	r1, [r2, #1007]	@ zero_extendqisi2
	.loc 1 207 0
	ldrb	r3, [r0, #3]	@ zero_extendqisi2
	.loc 1 210 0
	strb	r1, [r0, #3]
	.loc 1 212 0
	ldrb	r1, [r2, #1007]	@ zero_extendqisi2
	.loc 1 207 0
	add	r3, r2, r3, asl #2
	strb	ip, [r3, #2]
	.loc 1 212 0
	add	r1, r2, r1, asl #2
	.loc 1 211 0
	mvn	r3, #4
	strb	r3, [r0, #2]
	.loc 1 213 0
	strb	lr, [r2, #1007]
	.loc 1 212 0
	strb	lr, [r1, #2]
.LBE5:
.LBE4:
	.loc 1 250 0
	ldr	r3, [fp, #0]
	.loc 1 254 0
	ldr	r0, .L23+8
.LVL14:
	.loc 1 250 0
	rsb	r6, r8, #1024
.LVL15:
	.loc 1 251 0
	add	r4, r8, r5, asl #10
	.loc 1 250 0
	cmp	r3, r6
	.loc 1 254 0
	add	r0, r4, r0
	.loc 1 251 0
	strhi	r6, [fp, #0]
	.loc 1 254 0
	ldmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}
.L24:
	.align	2
.L23:
	.word	g_adpcmTable
	.word	g_adpcmEntry
	.word	g_adpcmCache
.LFE110:
	.size	neoAudioStream, .-neoAudioStream
	.align	2
	.type	neoAudioStreamAdpcm, %function
neoAudioStreamAdpcm:
.LFB113:
	.loc 1 484 0
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL16:
	stmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
.LCFI1:
	.loc 1 486 0
	cmp	r0, #5
	.loc 1 484 0
	mov	fp, r1
	sub	sp, sp, #64
.LCFI2:
	.loc 1 484 0
	mov	r6, r0
	mov	r1, r2
.LVL17:
	.loc 1 486 0
	bhi	.L26
.LVL18:
.LBB19:
.LBB20:
	.loc 1 264 0
	cmp	r2, #0
	beq	.L86
.LVL19:
	.loc 1 270 0
	mov	r3, #1
	mov	r3, r3, asl r0
	str	r3, [sp, #12]
	ldr	r3, [r7, #316]
	ldr	r0, [sp, #12]
.LBE20:
.LBE19:
	.loc 1 486 0
	mov	r4, r1
.LVL20:
.LBB21:
.LBB22:
	.loc 1 270 0
	tst	r0, r3
	beq	.L30
.LVL21:
	.loc 1 258 0
	mov	r3, #12
	mul	r3, r6, r3
	add	r3, r3, #216
	add	r3, r7, r3
	add	sl, r3, #4
.LVL22:
.LBB23:
	.loc 1 271 0
	ldr	r2, [sl, #4]
	.loc 1 275 0
	ldrsh	r1, [sl, #10]
.LVL23:
	.loc 1 271 0
	bic	r5, r2, #-16777216
.LVL24:
	.loc 1 275 0
	ldr	r2, .L94
	.loc 1 274 0
	ldr	r8, [r3, #4]
.LVL25:
	.loc 1 273 0
	ldrsh	r9, [sl, #8]
.LVL26:
	.loc 1 275 0
	add	r1, r1, r2
	.loc 1 271 0
	bic	r5, r5, #15728640
	.loc 1 275 0
	str	r1, [sp, #8]
.LVL27:
	b	.L32
.LVL28:
.L33:
.LBB24:
	.loc 1 280 0
	bic	r2, r8, #-16777216
	bic	r2, r2, #15728640
	cmp	r2, r5
	.loc 1 278 0
	str	r4, [sp, #60]
	.loc 1 280 0
	bhi	.L34
	add	r3, r2, r4
	cmp	r3, r5
	bcc	.L34
	.loc 1 281 0
	rsb	r3, r2, r5
	.loc 1 286 0
	cmp	r3, #0
	.loc 1 281 0
	str	r3, [sp, #60]
	.loc 1 286 0
	ble	.L37
.L34:
.LBE24:
.LBE23:
.LBE22:
	.loc 1 287 0
	mov	r0, r8
	add	r1, sp, #60
	bl	neoAudioStream
.LVL29:
.LBB25:
.LBB26:
.LBB27:
.LBB28:
	.loc 1 292 0
	ldr	lr, [sp, #60]
.LVL30:
.LBE28:
.LBE27:
.LBE26:
.LBE25:
	.loc 1 287 0
	str	r0, [sp, #4]
.LBB29:
.LBB30:
.LBB31:
.LBB32:
	.loc 1 292 0
	add	r8, r8, lr
	mov	r0, #0
	mov	ip, lr
.LVL31:
	b	.L38
.L39:
.LBB33:
	.loc 1 296 0
	ldr	r3, [sp, #4]
	.loc 1 299 0
	ldr	r2, [sp, #8]
	.loc 1 296 0
	ldrb	r1, [r0, r3]	@ zero_extendqisi2
.LVL32:
.LBE33:
	.loc 1 295 0
	add	r0, r0, #1
.LBB34:
	.loc 1 299 0
	and	r3, r1, #240
	ldr	r3, [r2, r3, lsr #2]
.LVL33:
	.loc 1 304 0
	and	r1, r1, #15
.LVL34:
	.loc 1 300 0
	mov	r2, r3, asl #16
	add	r2, r9, r2, asr #16
.LVL35:
	.loc 1 304 0
	ldr	r9, .L94
.LVL36:
	.loc 1 302 0
	strh	r2, [fp, #0]	@ movhi
	.loc 1 304 0
	add	r1, r9, r1, asl #2
	ldr	r1, [r1, r3, asr #16]
.LVL37:
	.loc 1 305 0
	mov	r3, r1, asl #16
.LVL38:
	add	r9, r2, r3, asr #16
.LVL39:
	.loc 1 306 0
	ldr	r2, .L94
.LVL40:
	.loc 1 307 0
	strh	r9, [fp, #2]	@ movhi
	.loc 1 306 0
	add	r1, r2, r1, asr #16
.LVL41:
	str	r1, [sp, #8]
	.loc 1 307 0
	add	fp, fp, #4
.L38:
.LBE34:
	.loc 1 295 0
	cmp	ip, #0
	sub	ip, ip, #1
	bgt	.L39
	.loc 1 293 0
	rsb	r4, lr, r4
.L37:
.LBE32:
	.loc 1 311 0
	bic	r3, r8, #-16777216
	bic	r3, r3, #15728640
	cmp	r3, r5
	beq	.L88
.L32:
.LBE31:
	.loc 1 277 0
	cmp	r4, #0
	bgt	.L33
.L42:
	.loc 1 319 0
	ldr	r3, .L94+4
	mov	r2, r4, asl #1
	mov	r1, fp
	str	r2, [r3, r6, asl #2]
	b	.L43
.L44:
	.loc 1 321 0
	mov	r3, #0	@ movhi
	strh	r3, [r1, #-4]	@ movhi
	.loc 1 322 0
	strh	r3, [r1, #-2]	@ movhi
.L43:
	.loc 1 320 0
	cmp	r4, #0
	add	r1, r1, #4
	sub	r4, r4, #1
	bgt	.L44
	.loc 1 325 0
	ldr	ip, [sp, #8]
.LVL42:
	ldr	r0, .L94
	.loc 1 326 0
	str	r8, [sl, #0]
	.loc 1 325 0
	rsb	r3, r0, ip
	.loc 1 324 0
	strh	r9, [sl, #8]	@ movhi
	.loc 1 325 0
	strh	r3, [sl, #10]	@ movhi
	b	.L86
.LVL43:
.L88:
.LBB35:
	.loc 1 312 0
	ldr	r3, [r7, #316]
	ldr	ip, [sp, #12]
.LVL44:
	.loc 1 313 0
	ldr	r2, .L94+8
	.loc 1 312 0
	bic	r3, r3, ip
	str	r3, [r7, #316]
	.loc 1 313 0
	add	r2, r6, r2
	mov	r3, #1
	strb	r3, [r2, #-117]
	b	.L42
.LVL45:
.L30:
.LBE35:
.LBE30:
	.loc 1 327 0
	ldr	r0, .L94+4
	ldr	r2, [r0, r6, asl #2]
	cmp	r2, #2048
	bcs	.L86
	.loc 1 328 0
	add	r3, r2, r1, asl #1
	mov	r1, fp
.LVL46:
	str	r3, [r0, r6, asl #2]
	b	.L47
.L48:
	.loc 1 330 0
	mov	r0, #0	@ movhi
	strh	r0, [r1, #-4]	@ movhi
	.loc 1 331 0
	strh	r0, [r1, #-2]	@ movhi
.L47:
	.loc 1 329 0
	cmp	r4, #0
	add	r1, r1, #4
	sub	r4, r4, #1
	bgt	.L48
	b	.L86
.LVL47:
.L26:
.LBE29:
.LBE21:
.LBB36:
.LBB37:
	.loc 1 344 0
	cmp	r2, #0
	beq	.L86
.LVL48:
	.loc 1 350 0
	ldr	r3, [r7, #316]
.LBE37:
.LBE36:
	.loc 1 487 0
	mov	sl, r2
.LVL49:
.LBB38:
.LBB39:
	.loc 1 350 0
	tst	r3, #64
	beq	.L50
	.loc 1 340 0
	add	r2, r7, #292
.LVL50:
.LBB40:
	.loc 1 359 0
	ldr	r1, [r7, #312]
.LVL51:
	.loc 1 360 0
	ldr	r5, [r7, #308]
.LVL52:
.LBE40:
	.loc 1 340 0
	str	r2, [sp, #44]
.LVL53:
.LBB41:
	.loc 1 351 0
	ldr	r9, [sp, #44]
	.loc 1 359 0
	str	r1, [sp, #28]
.LVL54:
	.loc 1 351 0
	ldr	r3, [r9, #4]
	.loc 1 363 0
	mov	r2, r1
	.loc 1 351 0
	bic	r3, r3, #-16777216
	.loc 1 352 0
	ldr	r1, [r7, #304]
	.loc 1 351 0
	str	r3, [sp, #40]
.LVL55:
	.loc 1 353 0
	ldr	r3, .L94+12
	.loc 1 363 0
	mla	r2, sl, r2, r5
	.loc 1 353 0
	ldr	r3, [r3, #20]
	.loc 1 355 0
	ldrsh	ip, [r9, #8]
	.loc 1 353 0
	str	r3, [sp, #32]
.LVL56:
	.loc 1 365 0
	ldr	r3, .L94+16
	.loc 1 351 0
	ldr	r0, [sp, #40]
	.loc 1 363 0
	mov	r2, r2, lsr #16
	.loc 1 365 0
	ldr	r3, [r3, #0]
	.loc 1 357 0
	ldrsh	r4, [r9, #10]
.LVL57:
	.loc 1 358 0
	ldr	r6, [r7, #292]
.LVL58:
	.loc 1 351 0
	bic	r0, r0, #15728640
	.loc 1 352 0
	mov	r1, r1, lsr #31
	.loc 1 363 0
	add	r2, r2, #1
	.loc 1 365 0
	mov	r8, ip
.LVL59:
	.loc 1 355 0
	str	ip, [sp, #52]
.LVL60:
	.loc 1 365 0
	str	r3, [sp, #20]
.LVL61:
	.loc 1 351 0
	str	r0, [sp, #40]
	.loc 1 352 0
	str	r1, [sp, #36]
.LVL62:
	.loc 1 363 0
	str	r2, [sp, #24]
.LVL63:
	b	.L93
.LVL64:
.L53:
.LBB42:
	.loc 1 376 0
	bic	r2, r6, #-16777216
	ldr	r1, [sp, #40]
	bic	r2, r2, #15728640
	.loc 1 374 0
	ldr	r3, [sp, #24]
	.loc 1 376 0
	cmp	r2, r1
	.loc 1 374 0
	str	r3, [sp, #60]
	.loc 1 376 0
	bhi	.L54
	add	r3, r2, r3
	cmp	r3, r1
	bcc	.L54
	.loc 1 377 0
	rsb	r3, r2, r1
	.loc 1 382 0
	cmp	r3, #0
	.loc 1 377 0
	str	r3, [sp, #60]
	.loc 1 382 0
	ble	.L57
.L54:
.LBE42:
.LBE41:
.LBE39:
	.loc 1 383 0
	ldr	ip, [sp, #32]
	add	r1, sp, #60
	add	r0, ip, r6
	bl	neoAudioStream
.LVL65:
	str	r0, [sp, #16]
.LBB43:
.LBB44:
.LBB45:
.LBB46:
	.loc 1 388 0
	ldr	r0, [sp, #60]
.LVL66:
	mov	r1, #0
	mov	lr, r0
.LVL67:
	str	r1, [sp, #48]
	b	.L58
.LVL68:
.L59:
.LBB47:
	.loc 1 389 0
	ldr	r2, [sp, #48]
	ldr	r3, [sp, #16]
.LVL69:
	ldrb	r9, [r2, r3]	@ zero_extendqisi2
.LVL70:
	.loc 1 392 0
	ldr	r3, .L94+20
	.loc 1 391 0
	mov	r2, r9, lsr #4
.LVL71:
	.loc 1 392 0
	ldrsb	r1, [r3, r2]
	.loc 1 393 0
	ldr	r3, .L94+24
	ldrb	r2, [r3, r2]	@ zero_extendqisi2
.LVL72:
	.loc 1 392 0
	mul	r3, r4, r1
	.loc 1 393 0
	mul	r1, r2, r4
	.loc 1 392 0
	cmp	r3, #0
	add	r2, r3, #7
	movlt	r3, r2
	.loc 1 393 0
	cmp	r1, #0
	add	r2, r1, #63
	movlt	r1, r2
	ldr	r2, .L94+28
	.loc 1 392 0
	add	r3, r8, r3, asr #3
.LVL73:
	.loc 1 393 0
	cmp	r3, r2
	movlt	r3, r2
.LVL74:
	ldr	r2, .L94+32
	mov	ip, r1, asr #6
.LVL75:
	cmp	r3, r2
	movlt	r4, r3
	movge	r4, r2
.LVL76:
	.loc 1 396 0
	cmp	ip, #24576
	movgt	ip, #24576
	bgt	.L62
	.loc 1 397 0
	cmp	ip, #127
	movlt	ip, #127
.L62:
	.loc 1 401 0
	ldr	r3, .L94+20
.LVL77:
	.loc 1 400 0
	and	r2, r9, #15
.LVL78:
	.loc 1 401 0
	ldrsb	r1, [r3, r2]
	.loc 1 402 0
	ldr	r3, .L94+24
	.loc 1 398 0
	ldr	r9, [sp, #20]
.LVL79:
	.loc 1 402 0
	ldrb	r2, [r3, r2]	@ zero_extendqisi2
.LVL80:
	.loc 1 401 0
	mul	r3, ip, r1
	.loc 1 402 0
	mul	r1, r2, ip
	.loc 1 401 0
	cmp	r3, #0
	add	r2, r3, #7
	movlt	r3, r2
	.loc 1 402 0
	cmp	r1, #0
	add	r2, r1, #63
	movlt	r1, r2
	ldr	r2, .L94+28
	.loc 1 401 0
	add	r3, r4, r3, asr #3
.LVL81:
	.loc 1 402 0
	cmp	r3, r2
	movlt	r3, r2
.LVL82:
	ldr	r2, .L94+32
	.loc 1 398 0
	strh	r4, [r9, #0]	@ movhi
	.loc 1 402 0
	mov	r4, r1, asr #6
.LVL83:
	cmp	r3, r2
	movlt	r8, r3
	movge	r8, r2
	.loc 1 405 0
	cmp	r4, #24576
	movgt	r4, #24576
	bgt	.L66
	.loc 1 406 0
	cmp	r4, #127
	movlt	r4, #127
.L66:
	.loc 1 407 0
	ldr	ip, [sp, #20]
.LVL84:
.LBE47:
	.loc 1 388 0
	ldr	r1, [sp, #48]
.LBB48:
	.loc 1 407 0
	strh	r8, [ip, #2]	@ movhi
.LBE48:
	.loc 1 388 0
	add	r1, r1, #1
.LBB49:
	.loc 1 407 0
	add	ip, ip, #4
.LBE49:
	.loc 1 388 0
	sub	lr, lr, #1
.LBB50:
	.loc 1 407 0
	str	ip, [sp, #20]
.LBE50:
	.loc 1 388 0
	str	r1, [sp, #48]
.L58:
	cmp	lr, #0
	bgt	.L59
	.loc 1 411 0
	ldr	r2, [sp, #24]
	.loc 1 410 0
	add	r6, r6, r0
	.loc 1 411 0
	rsb	r2, r0, r2
	str	r2, [sp, #24]
.L57:
.LBE46:
	.loc 1 414 0
	bic	r3, r6, #-16777216
.LVL85:
	ldr	r9, [sp, #40]
	bic	r3, r3, #15728640
	cmp	r3, r9
	bne	.L93
	.loc 1 416 0
	ldr	ip, [sp, #36]
	cmp	ip, #0
	.loc 1 418 0
	ldrne	r3, [r7, #304]
	movne	r8, #0
	bicne	r6, r3, #-2147483648
	movne	r4, #127
	bne	.L93
.L70:
	.loc 1 424 0
	ldr	r3, [r7, #316]
	.loc 1 425 0
	mov	r2, #1
	.loc 1 424 0
	bic	r3, r3, #64
	str	r3, [r7, #316]
	.loc 1 425 0
	ldr	r3, .L94+8
	strb	r2, [r3, #-111]
	b	.L72
.L93:
.LBE45:
	.loc 1 373 0
	ldr	r0, [sp, #24]
.LVL86:
	cmp	r0, #0
	bgt	.L53
.LVL87:
.L72:
	ldr	r3, [sp, #20]
	mov	r2, #0
.LVL88:
	b	.L73
.L74:
	.loc 1 436 0
	mov	r1, #0	@ movhi
	strh	r1, [r3, #-4]	@ movhi
	.loc 1 437 0
	strh	r1, [r3, #-2]	@ movhi
.L73:
	.loc 1 435 0
	ldr	r9, [sp, #24]
	add	r3, r3, #4
	cmp	r2, r9
	add	r2, r2, #1
	blt	.L74
	.loc 1 442 0
	ldr	r3, .L94+16
	ldr	r3, [r3, #0]
.LVL89:
	b	.L76
.LVL90:
.L77:
	.loc 1 447 0
	cmp	r2, r0
	.loc 1 450 0
	ldrgth	ip, [r3, #0]
	.loc 1 452 0
	movgt	r2, r2, asl #16
	.loc 1 451 0
	addgt	r3, r3, r1, asl #1
	.loc 1 455 0
	ldr	r1, [sp, #28]
	.loc 1 452 0
	movgt	r2, r2, lsr #16
	.loc 1 455 0
	add	r5, r2, r1
	.loc 1 450 0
	strgt	ip, [sp, #52]
	.loc 1 456 0
	cmp	r5, r0
	.loc 1 459 0
	ldrgth	ip, [r3, #0]
	.loc 1 454 0
	ldr	r9, [sp, #52]
	.loc 1 459 0
	strgt	ip, [sp, #52]
	.loc 1 463 0
	ldr	r0, [sp, #52]
	.loc 1 460 0
	mov	r2, r5, asr #16
.LVL91:
	.loc 1 461 0
	movgt	r5, r5, asl #16
	.loc 1 454 0
	strh	r9, [fp, #0]	@ movhi
	.loc 1 463 0
	strh	r0, [fp, #2]	@ movhi
	.loc 1 461 0
	movgt	r5, r5, lsr #16
	.loc 1 460 0
	addgt	r3, r3, r2, asl #1
	.loc 1 463 0
	add	fp, fp, #4
.LVL92:
.L76:
	.loc 1 446 0
	ldr	r1, [sp, #28]
	.loc 1 445 0
	cmp	sl, #0
	.loc 1 446 0
	add	r2, r5, r1
.LVL93:
	.loc 1 447 0
	ldr	r0, .L94+36
.LVL94:
	.loc 1 445 0
	sub	sl, sl, #1
	.loc 1 451 0
	mov	r1, r2, asr #16
	.loc 1 445 0
	bgt	.L77
	.loc 1 469 0
	ldr	r2, [sp, #44]
.LVL95:
	.loc 1 467 0
	ldr	r3, [sp, #52]
.LVL96:
	.loc 1 469 0
	str	r6, [r2, #0]
	.loc 1 467 0
	strh	r3, [r2, #8]	@ movhi
	.loc 1 468 0
	strh	r4, [r2, #10]	@ movhi
	.loc 1 470 0
	str	r5, [r7, #308]
	b	.L86
.LVL97:
.L50:
.LBE44:
	.loc 1 471 0
	ldr	r2, .L94+4
.LVL98:
	ldr	r3, [r2, #24]
	cmp	r3, #2048
	bcs	.L86
.LVL99:
.LBB51:
	.loc 1 473 0
	add	r3, r3, r1, asl #1
	mov	r1, fp
	str	r3, [r2, #24]
	b	.L84
.L85:
	.loc 1 475 0
	mov	r9, #0	@ movhi
	strh	r9, [r1, #-4]	@ movhi
	.loc 1 476 0
	strh	r9, [r1, #-2]	@ movhi
.L84:
	.loc 1 474 0
	cmp	sl, #0
	add	r1, r1, #4
	sub	sl, sl, #1
	bgt	.L85
.LVL100:
.L86:
.LBE51:
.LBE43:
.LBE38:
	.loc 1 488 0
	add	sp, sp, #64
	ldmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}
.L95:
	.align	2
.L94:
	.word	g_jediTable
	.word	g_zeroFill
	.word	41940223
	.word	g_header
	.word	g_adpcmbBuffer
	.word	g_adpcmbTable1
	.word	g_adpcmbTable2
	.word	-32768
	.word	32767
	.word	65535
.LFE113:
	.size	neoAudioStreamAdpcm, .-neoAudioStreamAdpcm
	.align	2
	.global	neoAudioStreamProcess
	.type	neoAudioStreamProcess, %function
neoAudioStreamProcess:
.LFB117:
	.loc 1 656 0
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
.LCFI3:
	.loc 1 661 0
	ldr	r2, .L145
	.loc 1 656 0
	sub	sp, sp, #64
.LCFI4:
	.loc 1 661 0
	ldrb	r3, [r2, #-110]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L136
	.loc 1 662 0
	mov	ip, #0
.LVL101:
	mov	r0, r2
	mov	r1, ip
.L99:
	.loc 1 666 0
	ldrh	r2, [r0, #-171]
	add	r3, sp, #36
	strh	r2, [r1, r3]	@ movhi
	.loc 1 667 0
	ldrh	r2, [r0, #-157]
	.loc 1 665 0
	add	ip, ip, #1
	.loc 1 667 0
	add	r3, sp, #50
	.loc 1 665 0
	cmp	ip, #7
	.loc 1 667 0
	strh	r2, [r1, r3]	@ movhi
	.loc 1 665 0
	add	r0, r0, #2
	add	r1, r1, #2
	bne	.L99
	.loc 1 673 0
	ldr	r3, .L145
	ldrh	r2, [r3, #-119]
	.loc 1 675 0
	ldr	r3, .L145+4
	.loc 1 673 0
	str	r2, [sp, #12]
.LVL102:
	.loc 1 675 0
	ldrh	sl, [r3, #0]
	cmp	sl, r2
	beq	.L136
	ldr	r3, .L145+8
	mov	r8, sl
	ldr	r3, [r3, #0]
	str	r3, [sp, #20]
	b	.L102
.LVL103:
.L103:
	ldr	r1, .L145+12
	mov	fp, #0
	str	r1, [sp, #4]
	mov	r9, fp
.L104:
	.loc 1 681 0
	add	r3, sp, #50
	ldrsh	r4, [r9, r3]
.LBB58:
.LBB59:
	.loc 1 535 0
	add	r3, sp, #36
	ldrsh	r3, [r9, r3]
	.loc 1 538 0
	mov	r6, #0
	subs	r5, r3, r4
	addmi	r5, r5, #32
	b	.L107
.LVL104:
.L108:
.LBB60:
	.loc 1 550 0
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #0]
	mov	r3, #12
	mla	r3, r4, r3, r2
.LVL105:
	.loc 1 556 0
	mov	r1, r3
	.loc 1 551 0
	ldrh	r3, [r3, #8]
.LVL106:
	cmp	r3, r8
	bne	.L109
	.loc 1 558 0
	add	r4, r4, #1
	.loc 1 556 0
	bl	neoAudioCommand
.LVL107:
	.loc 1 559 0
	cmp	r4, #31
	movgt	r4, #0
.LVL108:
.L107:
.LBE60:
	.loc 1 549 0
	cmp	r6, r5
.LBB61:
	.loc 1 556 0
	mov	r0, fp
.LBE61:
	.loc 1 549 0
	add	r6, r6, #1
	bne	.L108
.LVL109:
.L109:
.LBE59:
.LBE58:
	.loc 1 680 0
	ldr	r1, [sp, #4]
.LVL110:
	add	fp, fp, #1
	.loc 1 681 0
	add	r3, sp, #50
	.loc 1 680 0
	add	r1, r1, #4
	cmp	fp, #7
	.loc 1 681 0
	strh	r4, [r9, r3]	@ movhi
	.loc 1 680 0
	str	r1, [sp, #4]
	add	r9, r9, #2
	bne	.L104
.LVL111:
	.loc 1 684 0
	ldr	r2, [sp, #20]
	add	r3, r8, #1
	cmp	r2, #0
	mov	r3, r3, asl #16
	moveq	r2, #1024
	movne	r2, #0
	str	r2, [sp, #20]
	mov	r8, r3, lsr #16
.L102:
	.loc 1 656 0
	ldr	r1, [sp, #12]
	rsb	r3, sl, r1
	mov	r3, r3, asl #16
	.loc 1 679 0
	add	r3, sl, r3, lsr #16
	sub	r2, r3, #1
	mov	r3, r2, asl #16
	cmp	r8, r3, lsr #16
	bne	.L103
	ldr	r3, .L145+12
	ldr	r1, [sp, #20]
	str	r3, [sp, #8]
	ldr	r3, .L145+8
	mov	sl, #0
.LVL112:
	str	r1, [r3, #0]
	ldr	r3, .L145+4
	str	sl, [sp, #24]
	strh	r2, [r3, #0]	@ movhi
	str	sl, [sp, #28]
.LVL113:
.L118:
	.loc 1 691 0
	ldr	r2, [sp, #24]
	add	r3, sp, #50
	ldrsh	r4, [r2, r3]
.LVL114:
.LBB62:
.LBB63:
	.loc 1 572 0
	add	r3, sp, #36
	ldrsh	r3, [r2, r3]
	.loc 1 576 0
	mov	fp, #512
.LVL115:
	subs	r8, r3, r4
	.loc 1 574 0
	ldr	r3, .L145+8
	.loc 1 576 0
	addmi	r8, r8, #32
	.loc 1 574 0
	ldr	r6, [r3, #0]
.LVL116:
	.loc 1 576 0
	mov	r3, #0
	mov	lr, r3
	str	r3, [sp, #16]
	b	.L121
.LVL117:
.L122:
.LBB64:
	.loc 1 588 0
	ldr	r3, [sp, #8]
	ldr	r2, [r3, #0]
	.loc 1 589 0
	ldr	r3, .L145+4
	ldrh	ip, [r3, #0]
.LVL118:
	.loc 1 588 0
	mov	r3, #12
	mla	r5, r4, r3, r2
.LVL119:
	.loc 1 589 0
	ldrh	r3, [r5, #8]
	cmp	r3, ip
	bne	.L123
	.loc 1 600 0
	ldrh	r9, [r5, #10]
	.loc 1 619 0
	add	r4, r4, #1
	.loc 1 600 0
	rsb	r3, lr, r9
	.loc 1 604 0
	movs	r3, r3, lsr #1
.LVL120:
	beq	.L125
	cmp	fp, r3
	movcc	r2, fp
	movcs	r2, r3
.LVL121:
	.loc 1 614 0
	add	r6, r6, r2, asl #1
	.loc 1 613 0
	rsb	fp, r2, fp
	.loc 1 612 0
	bl	neoAudioStreamAdpcm
.LVL122:
.L125:
	.loc 1 620 0
	cmp	r4, #31
	.loc 1 617 0
	mov	r1, r5
	mov	r0, sl
	.loc 1 620 0
	movgt	r4, #0
	.loc 1 617 0
	bl	neoAudioCommand
.LVL123:
.LBE64:
	.loc 1 587 0
	mov	lr, r9
.LVL124:
.L121:
.LBB65:
	.loc 1 612 0
	ldr	r1, [sp, #28]
.LBE65:
	.loc 1 587 0
	ldr	r2, [sp, #16]
.LBB66:
	.loc 1 612 0
	add	r3, r1, r6
	ldr	r1, .L145+16
.LBE66:
	.loc 1 587 0
	cmp	r2, r8
	add	r2, r2, #1
.LBB67:
	.loc 1 612 0
	add	r1, r1, r3, asl #1
.LBE67:
	.loc 1 587 0
	str	r2, [sp, #16]
.LBB68:
	.loc 1 612 0
	mov	r0, sl
.LVL125:
.LBE68:
	.loc 1 587 0
	bne	.L122
.LVL126:
.L123:
	.loc 1 626 0
	cmp	fp, #0
	beq	.L129
	.loc 1 629 0
	ldr	r1, [sp, #28]
	mov	r2, fp
	add	r3, r1, r6
	ldr	r1, .L145+16
	mov	r0, sl
	add	r1, r1, r3, asl #1
	bl	neoAudioStreamAdpcm
.LVL127:
.L129:
.LBE63:
.LBE62:
	.loc 1 691 0
	ldr	r2, [sp, #24]
	add	r3, sp, #50
	strh	r4, [r2, r3]	@ movhi
	.loc 1 690 0
	ldr	r1, [sp, #28]
	ldr	r3, [sp, #8]
	add	sl, sl, #1
	add	r3, r3, #4
	add	r2, r2, #2
	add	r1, r1, #2048
	cmp	sl, #7
	str	r3, [sp, #8]
	str	r2, [sp, #24]
	str	r1, [sp, #28]
	bne	.L118
	.loc 1 695 0
	ldr	r2, .L145+8
	ldr	r0, .L145+20
	ldr	r3, [r2, #0]
	.loc 1 697 0
	mov	r1, #0
.LVL128:
	.loc 1 695 0
	cmp	r3, #0
	addeq	r3, r3, #1024
	.loc 1 696 0
	movne	r3, #0
	str	r3, [r2, #0]
	.loc 1 697 0
	ldr	r2, .L145+4
	ldrh	r3, [r2, #0]
	add	r3, r3, #1
	strh	r3, [r2, #0]	@ movhi
.L135:
	.loc 1 701 0
	mov	r3, r1, asl #1
	add	r2, sp, #50
	ldrh	r3, [r3, r2]
	.loc 1 700 0
	add	r1, r1, #1
	cmp	r1, #7
	.loc 1 701 0
	strh	r3, [r0], #2	@ movhi
	.loc 1 700 0
	bne	.L135
.L136:
	.loc 1 706 0
	add	sp, sp, #64
	ldmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}
.L146:
	.align	2
.L145:
	.word	41940223
	.word	g_audioFrame
	.word	g_buffer
	.word	41940024
	.word	g_adpcmaBuffer
	.word	41940066
.LFE117:
	.size	neoAudioStreamProcess, .-neoAudioStreamProcess
	.align	2
	.global	neoAudioStreamReset
	.type	neoAudioStreamReset, %function
neoAudioStreamReset:
.LFB108:
	.loc 1 148 0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
.LCFI5:
	ldr	r3, .L153
	ldr	r6, .L153+4
	sub	sp, sp, #8
.LCFI6:
	.loc 1 148 0
	ldr	sl, .L153+8
	ldr	r8, .L153+12
	ldr	fp, .L153+16
	str	r3, [sp, #4]
	mov	r9, #0
.LVL129:
	mov	r5, r6
.L148:
	.loc 1 153 0
	mov	r4, #0
	.loc 1 151 0
	orr	r3, sl, #4194304
	.loc 1 152 0
	orr	r2, r8, #4194304
	.loc 1 151 0
	str	r3, [r5, #-227]
	.loc 1 156 0
	mov	r0, sl
	.loc 1 152 0
	str	r2, [r5, #-199]
	.loc 1 156 0
	mov	r1, r4
	.loc 1 153 0
	strh	r4, [r6, #-171]	@ movhi
	.loc 1 156 0
	mov	r2, #2048
	.loc 1 154 0
	strh	r4, [r6, #-157]	@ movhi
	.loc 1 155 0
	strb	r4, [fp], #1
	.loc 1 156 0
	bl	memset
	.loc 1 157 0
	mov	r0, r8
	mov	r1, r4
	mov	r2, #384
	bl	memset
	.loc 1 158 0
	ldr	r3, [sp, #4]
	.loc 1 150 0
	add	r9, r9, #1
	.loc 1 158 0
	str	r4, [r3], #4
	.loc 1 150 0
	cmp	r9, #7
	.loc 1 158 0
	str	r3, [sp, #4]
	.loc 1 150 0
	add	r5, r5, #4
	add	r6, r6, #2
	add	sl, sl, #4096
	add	r8, r8, #384
	bne	.L148
	.loc 1 160 0
	bl	DC_FlushAll
	.loc 1 162 0
	ldr	r3, .L153+20
	strh	r4, [r3, #0]	@ movhi
	.loc 1 163 0
	ldr	r3, .L153+24
	str	r4, [r3, #0]
	.loc 1 164 0
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}
.L154:
	.align	2
.L153:
	.word	g_zeroFill
	.word	41940223
	.word	g_adpcmaBuffer
	.word	g_adpcmControl
	.word	41940106
	.word	g_audioFrame
	.word	g_buffer
.LFE108:
	.size	neoAudioStreamReset, .-neoAudioStreamReset
	.align	2
	.global	neoAudioStreamInit
	.type	neoAudioStreamInit, %function
neoAudioStreamInit:
.LFB107:
	.loc 1 98 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
.LCFI7:
	.loc 1 102 0
	bl	neoAudioStreamReset
	.loc 1 104 0
	ldr	r0, .L175
	bl	neoSystemVramHAlloc
	ldr	r2, .L175+4
	.loc 1 107 0
	mov	r3, #0
	ldr	r6, .L175+8
	.loc 1 104 0
	str	r0, [r2, #0]
	.loc 1 107 0
	mov	r5, r3
	.loc 1 106 0
	mov	r2, #18432
	str	r2, [r7, #312]
	.loc 1 107 0
	str	r3, [r7, #308]
	b	.L156
.LVL130:
.L157:
.LBB69:
	.loc 1 113 0
	ldrsh	r3, [r6, #0]
	.loc 1 114 0
	add	lr, lr, #2
	.loc 1 113 0
	mul	r3, r4, r3
	add	r2, r3, #7
	cmp	r3, #0
	movlt	r3, r2
	mov	r2, r3, asr #3
.LVL131:
	.loc 1 114 0
	tst	r0, #8
	mov	r1, r2
	add	ip, ip, #4
	rsbne	r1, r2, #0
.L161:
	.loc 1 115 0
	ldrsh	r3, [lr, #0]
.LBE69:
	.loc 1 112 0
	add	r0, r0, #1
.LBB70:
	.loc 1 115 0
	add	r3, r5, r3
	.loc 1 113 0
	and	r2, r0, #7
.LVL132:
	.loc 1 115 0
	mov	r3, r3, asl #2
.LVL133:
	.loc 1 113 0
	mov	r2, r2, asl #1
	.loc 1 115 0
	cmp	r3, #0
	movlt	r3, #0
.LVL134:
	.loc 1 121 0
	cmp	r3, #3072
	movge	r3, #3072
.LVL135:
	.loc 1 113 0
	add	r4, r2, #1
.LBE70:
	.loc 1 112 0
	cmp	r0, #16
.LBB71:
	.loc 1 120 0
	mov	r2, r1, asl #4
	strh	r2, [ip, #0]	@ movhi
	.loc 1 121 0
	strh	r3, [ip, #2]	@ movhi
.LBE71:
	.loc 1 112 0
	bne	.L157
	add	r5, r5, #16
	.loc 1 110 0
	cmp	r5, #784
	.loc 1 112 0
	add	r6, r6, #2
	.loc 1 110 0
	bne	.L156
	.loc 1 125 0
	mov	r2, #256000
	mov	r0, #4
.LVL136:
	ldr	r1, .L175+12
.LVL137:
	bl	neoSystemLoadRegion
	ldr	r2, .L175+16
.L164:
	.loc 1 127 0
	mvn	r3, #0
	strb	r3, [r2], #1
	.loc 1 126 0
	ldr	r3, .L175+20
	cmp	r2, r3
	bne	.L164
	ldr	ip, .L175+24
	sub	lr, r2, #16384
	mov	r0, #0
.LVL138:
.L166:
	.loc 1 130 0
	and	r3, r0, #255
	strh	r0, [ip, #0]	@ movhi
	.loc 1 129 0
	add	r0, r0, #1
	.loc 1 131 0
	add	r2, r3, #1
	.loc 1 132 0
	sub	r1, r3, #1
	.loc 1 129 0
	cmp	r0, #250
	.loc 1 131 0
	strb	r2, [ip, #2]
	.loc 1 132 0
	strb	r1, [ip, #3]
	.loc 1 134 0
	strb	r3, [lr], #1
	.loc 1 129 0
	add	ip, ip, #4
	bne	.L166
	.loc 1 136 0
	ldr	r2, .L175+24
	.loc 1 142 0
	mvn	r3, #6
	strb	r3, [r2, #1007]
	.loc 1 136 0
	add	r3, r3, #1
	.loc 1 139 0
	mov	r0, #0
.LVL139:
	.loc 1 140 0
	mvn	r1, #0
	.loc 1 136 0
	strb	r3, [r2, #3]
	.loc 1 137 0
	add	r3, r3, #1
	strb	r3, [r2, #998]
	.loc 1 141 0
	strb	r1, [r2, #1006]
	.loc 1 139 0
	strb	r0, [r2, #1002]
	.loc 1 140 0
	strb	r1, [r2, #1003]
	.loc 1 144 0
	str	r0, [r7, #316]
	.loc 1 145 0
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL140:
.L156:
.LBB72:
	.loc 1 113 0
	ldrsh	r3, [r6, #0]
	ldr	lr, .L175+28
	add	r2, r3, #7
	cmp	r3, #0
	movlt	r3, r2
	ldr	r2, .L175+32
	mov	r1, r3, asr #3
	add	ip, r2, r5, asl #2
	mov	r0, #0
	b	.L161
.L176:
	.align	2
.L175:
	.word	6176
	.word	g_adpcmbBuffer
	.word	g_adpcmSteps
	.word	g_adpcmCache
	.word	g_adpcmTable
	.word	g_adpcmTable+16384
	.word	g_adpcmEntry
	.word	g_adpcmStepInc
	.word	g_jediTable
.LBE72:
.LFE107:
	.size	neoAudioStreamInit, .-neoAudioStreamInit
	.bss
	.align	1
g_audioFrame:
	.space	2
	.align	2
g_buffer:
	.space	4
	.align	2
g_zeroFill:
	.space	28
	.section	.dtcm,"a",%progbits
	.type	g_adpcmbTable1, %object
	.size	g_adpcmbTable1, 16
g_adpcmbTable1:
	.byte	1
	.byte	3
	.byte	5
	.byte	7
	.byte	9
	.byte	11
	.byte	13
	.byte	15
	.byte	-1
	.byte	-3
	.byte	-5
	.byte	-7
	.byte	-9
	.byte	-11
	.byte	-13
	.byte	-15
	.type	g_adpcmbTable2, %object
	.size	g_adpcmbTable2, 16
g_adpcmbTable2:
	.byte	57
	.byte	57
	.byte	57
	.byte	57
	.byte	77
	.byte	102
	.byte	-128
	.byte	-103
	.byte	57
	.byte	57
	.byte	57
	.byte	57
	.byte	77
	.byte	102
	.byte	-128
	.byte	-103
	.section	.rodata
	.align	1
	.type	g_adpcmSteps, %object
	.size	g_adpcmSteps, 98
g_adpcmSteps:
	.short	16
	.short	17
	.short	19
	.short	21
	.short	23
	.short	25
	.short	28
	.short	31
	.short	34
	.short	37
	.short	41
	.short	45
	.short	50
	.short	55
	.short	60
	.short	66
	.short	73
	.short	80
	.short	88
	.short	97
	.short	107
	.short	118
	.short	130
	.short	143
	.short	157
	.short	173
	.short	190
	.short	209
	.short	230
	.short	253
	.short	279
	.short	307
	.short	337
	.short	371
	.short	408
	.short	449
	.short	494
	.short	544
	.short	598
	.short	658
	.short	724
	.short	796
	.short	876
	.short	963
	.short	1060
	.short	1166
	.short	1282
	.short	1411
	.short	1552
	.align	1
	.type	g_adpcmStepInc, %object
	.size	g_adpcmStepInc, 32
g_adpcmStepInc:
	.short	-16
	.short	-16
	.short	-16
	.short	-16
	.short	32
	.short	80
	.short	112
	.short	144
	.short	-16
	.short	-16
	.short	-16
	.short	-16
	.short	32
	.short	80
	.short	112
	.short	144
	.bss
	.align	5
g_adpcmControl:
	.space	2688
	.align	5
g_adpcmaBuffer:
	.space	28672
	.align	2
g_adpcmbBuffer:
	.space	4
	.align	5
g_adpcmTable:
	.space	16384
	.align	5
g_adpcmCache:
	.space	256000
	.align	5
g_adpcmEntry:
	.space	1008
	.comm	g_jediTable,3136,32
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
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
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
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.byte	0x4
	.4byte	.LCFI1-.LFB113
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
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x60
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.byte	0x4
	.4byte	.LCFI3-.LFB117
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x60
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
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x4
	.4byte	.LCFI5-.LFB108
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
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x4
	.4byte	.LCFI7-.LFB107
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x1
	.byte	0x86
	.uleb128 0x2
	.byte	0x85
	.uleb128 0x3
	.byte	0x84
	.uleb128 0x4
	.align	2
.LEFDE10:
	.file 2 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoIPC.h"
	.file 5 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h"
	.file 6 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 7 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.file 8 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
	.file 9 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h"
	.file 10 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB110-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB113-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 96
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL97-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL100-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LFB117-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 96
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL124-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL127-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LFB108-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE108-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LFB107-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL140-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL140-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x172e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF241
	.byte	0x1
	.4byte	.LASF242
	.4byte	.LASF243
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x3
	.byte	0x2d
	.4byte	0x30
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2e
	.4byte	0x42
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x39
	.4byte	0x54
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x3a
	.4byte	0x66
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x53
	.4byte	0x78
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x54
	.4byte	0x8a
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x8
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x2
	.byte	0x45
	.4byte	0x7f
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x8
	.byte	0x4
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x2
	.byte	0x5f
	.4byte	0x37
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x2
	.byte	0x60
	.4byte	0x5b
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x2
	.byte	0x61
	.4byte	0x7f
	.uleb128 0x5
	.ascii	"s8\000"
	.byte	0x2
	.byte	0x64
	.4byte	0x25
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x2
	.byte	0x65
	.4byte	0x49
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x2
	.byte	0x66
	.4byte	0x6d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x10c
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x1
	.byte	0x8
	.uleb128 0x8
	.4byte	0x13d
	.byte	0x1
	.byte	0x6
	.byte	0x9b
	.uleb128 0x9
	.4byte	.LASF19
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF20
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF21
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF22
	.sleb128 3
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x6
	.byte	0xa0
	.4byte	0x11c
	.uleb128 0xa
	.4byte	0x1c0
	.2byte	0x2018
	.byte	0x6
	.2byte	0x119
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x11a
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x11d
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x120
	.4byte	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x121
	.4byte	0xad
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x122
	.4byte	0x1d1
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x123
	.4byte	0xad
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x124
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.byte	0x0
	.uleb128 0xc
	.4byte	0x1d1
	.4byte	0xad
	.uleb128 0xd
	.4byte	0x10e
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x126
	.4byte	0x148
	.uleb128 0xf
	.byte	0x4
	.uleb128 0x10
	.4byte	0x37b
	.4byte	.LASF61
	.byte	0xb0
	.byte	0xa
	.byte	0x15
	.uleb128 0x11
	.ascii	"d\000"
	.byte	0xa
	.byte	0x16
	.4byte	0x37b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.ascii	"a\000"
	.byte	0xa
	.byte	0x17
	.4byte	0x37b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.ascii	"pc\000"
	.byte	0xa
	.byte	0x18
	.4byte	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.ascii	"srh\000"
	.byte	0xa
	.byte	0x19
	.4byte	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0xa
	.byte	0x1a
	.4byte	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0xa
	.byte	0x1b
	.4byte	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x11
	.ascii	"irq\000"
	.byte	0xa
	.byte	0x1c
	.4byte	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x11
	.ascii	"osp\000"
	.byte	0xa
	.byte	0x1d
	.4byte	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.ascii	"xc\000"
	.byte	0xa
	.byte	0x1e
	.4byte	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0xa
	.byte	0x1f
	.4byte	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0xa
	.byte	0x20
	.4byte	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0xa
	.byte	0x21
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0xa
	.byte	0x22
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0xa
	.byte	0x23
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0xa
	.byte	0x24
	.4byte	0x39b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0xa
	.byte	0x25
	.4byte	0x39b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0xa
	.byte	0x26
	.4byte	0x39b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0xa
	.byte	0x27
	.4byte	0x39b
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0xa
	.byte	0x28
	.4byte	0x3b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0xa
	.byte	0x29
	.4byte	0x3c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0xa
	.byte	0x2a
	.4byte	0x3e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0xa
	.byte	0x2b
	.4byte	0x39b
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0xa
	.byte	0x2c
	.4byte	0x39b
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0xa
	.byte	0x2d
	.4byte	0x39b
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0xa
	.byte	0x2e
	.4byte	0x3f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0xa
	.byte	0x2f
	.4byte	0x106
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0xa
	.byte	0x30
	.4byte	0x402
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0xa
	.byte	0x31
	.4byte	0x408
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xc
	.4byte	0x38b
	.4byte	0xa6
	.uleb128 0x13
	.4byte	0x10e
	.byte	0x7
	.byte	0x0
	.uleb128 0x14
	.4byte	0x39b
	.byte	0x1
	.4byte	0xa6
	.uleb128 0x15
	.4byte	0xa6
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x38b
	.uleb128 0x16
	.4byte	0x3b2
	.byte	0x1
	.uleb128 0x15
	.4byte	0xa6
	.uleb128 0x15
	.4byte	0x42
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3a1
	.uleb128 0x16
	.4byte	0x3c9
	.byte	0x1
	.uleb128 0x15
	.4byte	0xa6
	.uleb128 0x15
	.4byte	0x66
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3b8
	.uleb128 0x16
	.4byte	0x3e0
	.byte	0x1
	.uleb128 0x15
	.4byte	0xa6
	.uleb128 0x15
	.4byte	0xa6
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3cf
	.uleb128 0x14
	.4byte	0x3f6
	.byte	0x1
	.4byte	0x9f
	.uleb128 0x15
	.4byte	0x9f
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e6
	.uleb128 0x17
	.byte	0x1
	.4byte	0x9f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3fc
	.uleb128 0xc
	.4byte	0x418
	.4byte	0xa6
	.uleb128 0x13
	.4byte	0x10e
	.byte	0x5
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x9
	.byte	0x6
	.4byte	0x1e5
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x9
	.byte	0x8
	.4byte	0x42e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x434
	.uleb128 0x14
	.4byte	0x444
	.byte	0x1
	.4byte	0xc6
	.uleb128 0x15
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x9
	.byte	0x9
	.4byte	0x44f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x455
	.uleb128 0x14
	.4byte	0x465
	.byte	0x1
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x9
	.byte	0xa
	.4byte	0x470
	.uleb128 0x6
	.byte	0x4
	.4byte	0x476
	.uleb128 0x14
	.4byte	0x486
	.byte	0x1
	.4byte	0xdb
	.uleb128 0x15
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x9
	.byte	0xc
	.4byte	0x491
	.uleb128 0x6
	.byte	0x4
	.4byte	0x497
	.uleb128 0x16
	.4byte	0x4a8
	.byte	0x1
	.uleb128 0x15
	.4byte	0xdb
	.uleb128 0x15
	.4byte	0xc6
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0x9
	.byte	0xd
	.4byte	0x4b3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4b9
	.uleb128 0x16
	.4byte	0x4ca
	.byte	0x1
	.uleb128 0x15
	.4byte	0xdb
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x9
	.byte	0xe
	.4byte	0x4d5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4db
	.uleb128 0x16
	.4byte	0x4ec
	.byte	0x1
	.uleb128 0x15
	.4byte	0xdb
	.uleb128 0x15
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF60
	.byte	0x9
	.byte	0x10
	.4byte	0x470
	.uleb128 0x10
	.4byte	0x53c
	.4byte	.LASF62
	.byte	0xc
	.byte	0x5
	.byte	0x17
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x5
	.byte	0x18
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.ascii	"end\000"
	.byte	0x5
	.byte	0x19
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.ascii	"acc\000"
	.byte	0x5
	.byte	0x1a
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0x5
	.byte	0x1b
	.4byte	0xf0
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x5
	.byte	0x1c
	.4byte	0x4f7
	.uleb128 0x10
	.4byte	0x57e
	.4byte	.LASF66
	.byte	0xc
	.byte	0x5
	.byte	0x1f
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x5
	.byte	0x20
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x5
	.byte	0x21
	.4byte	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x5
	.byte	0x22
	.4byte	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0x5
	.byte	0x23
	.4byte	0x547
	.uleb128 0x10
	.4byte	0x5b2
	.4byte	.LASF71
	.byte	0x8
	.byte	0x8
	.byte	0xa6
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x8
	.byte	0xa7
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x8
	.byte	0xa8
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x8
	.byte	0xa9
	.4byte	0x589
	.uleb128 0x10
	.4byte	0x656
	.4byte	.LASF74
	.byte	0x74
	.byte	0x8
	.byte	0xab
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0x8
	.byte	0xac
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x8
	.byte	0xad
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x8
	.byte	0xae
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x8
	.byte	0xaf
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x8
	.byte	0xb0
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x8
	.byte	0xb1
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x8
	.byte	0xb2
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x8
	.byte	0xb3
	.4byte	0x656
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x8
	.byte	0xb4
	.4byte	0x666
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x8
	.byte	0xb5
	.4byte	0x676
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.byte	0x0
	.uleb128 0xc
	.4byte	0x666
	.4byte	0x115
	.uleb128 0x13
	.4byte	0x10e
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.4byte	0x676
	.4byte	0x5b2
	.uleb128 0x13
	.4byte	0x10e
	.byte	0x8
	.byte	0x0
	.uleb128 0xc
	.4byte	0x685
	.4byte	0xc6
	.uleb128 0x18
	.4byte	0x10e
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF85
	.byte	0x8
	.byte	0xb6
	.4byte	0x5bd
	.uleb128 0x19
	.4byte	0xa7e
	.2byte	0x248
	.byte	0x8
	.byte	0xc0
	.uleb128 0x11
	.ascii	"cpu\000"
	.byte	0x8
	.byte	0xc1
	.4byte	0x418
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x8
	.byte	0xc4
	.4byte	0xa7e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x8
	.byte	0xc7
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0x8
	.byte	0xc8
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x12
	.4byte	.LASF89
	.byte	0x8
	.byte	0xcb
	.4byte	0xa8e
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0x8
	.byte	0xcc
	.4byte	0x57e
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x12
	.4byte	.LASF91
	.byte	0x8
	.byte	0xcd
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x12
	.4byte	.LASF92
	.byte	0x8
	.byte	0xd0
	.4byte	0xa9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x8
	.byte	0xd1
	.4byte	0xa9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x8
	.byte	0xd2
	.4byte	0xa9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x8
	.byte	0xd3
	.4byte	0xa9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x8
	.byte	0xd4
	.4byte	0xa9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x8
	.byte	0xd5
	.4byte	0xa9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x8
	.byte	0xd6
	.4byte	0xaa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x8
	.byte	0xd7
	.4byte	0xaa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x8
	.byte	0xd8
	.4byte	0xaa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0x8
	.byte	0xda
	.4byte	0xaaa
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x8
	.byte	0xdd
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x12
	.4byte	.LASF103
	.byte	0x8
	.byte	0xde
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x12
	.4byte	.LASF104
	.byte	0x8
	.byte	0xdf
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x12
	.4byte	.LASF105
	.byte	0x8
	.byte	0xe0
	.4byte	0xabb
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x12
	.4byte	.LASF106
	.byte	0x8
	.byte	0xe1
	.4byte	0xabb
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0x8
	.byte	0xe2
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x8
	.byte	0xe5
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x8
	.byte	0xe6
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0x8
	.byte	0xe7
	.4byte	0xaa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x12
	.4byte	.LASF111
	.byte	0x8
	.byte	0xe8
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x12
	.4byte	.LASF112
	.byte	0x8
	.byte	0xea
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0x8
	.byte	0xeb
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x8
	.byte	0xec
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0x8
	.byte	0xed
	.4byte	0xac6
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x12
	.4byte	.LASF116
	.byte	0x8
	.byte	0xee
	.4byte	0xaa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x12
	.4byte	.LASF117
	.byte	0x8
	.byte	0xf1
	.4byte	0xfb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x12
	.4byte	.LASF118
	.byte	0x8
	.byte	0xf2
	.4byte	0xfb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x12
	.4byte	.LASF119
	.byte	0x8
	.byte	0xf3
	.4byte	0xf0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x12
	.4byte	.LASF120
	.byte	0x8
	.byte	0xf4
	.4byte	0xf0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x12
	.4byte	.LASF121
	.byte	0x8
	.byte	0xf7
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x12
	.4byte	.LASF122
	.byte	0x8
	.byte	0xf8
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0x8
	.byte	0xf9
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x12
	.4byte	.LASF124
	.byte	0x8
	.byte	0xfa
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0x8
	.byte	0xfb
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0x8
	.byte	0xfc
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x12
	.4byte	.LASF127
	.byte	0x8
	.byte	0xfd
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x8
	.2byte	0x102
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x8
	.2byte	0x103
	.4byte	0xfb
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x8
	.2byte	0x106
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x8
	.2byte	0x108
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x8
	.2byte	0x109
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x8
	.2byte	0x10a
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x8
	.2byte	0x10b
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x8
	.2byte	0x10d
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x8
	.2byte	0x10e
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x8
	.2byte	0x10f
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x8
	.2byte	0x110
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x8
	.2byte	0x111
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x8
	.2byte	0x114
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x8
	.2byte	0x115
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x8
	.2byte	0x116
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x8
	.2byte	0x117
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0x8
	.2byte	0x118
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0x8
	.2byte	0x11b
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x8
	.2byte	0x11c
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0x8
	.2byte	0x11f
	.4byte	0xad6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x8
	.2byte	0x122
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0x8
	.2byte	0x123
	.4byte	0xae6
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa8e
	.4byte	0x1e3
	.uleb128 0x13
	.4byte	0x10e
	.byte	0x8
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa9e
	.4byte	0x53c
	.uleb128 0x13
	.4byte	0x10e
	.byte	0x6
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc6
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xab0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xab6
	.uleb128 0x1a
	.4byte	0xc6
	.uleb128 0x6
	.byte	0x4
	.4byte	0xac1
	.uleb128 0x1a
	.4byte	0xdb
	.uleb128 0xc
	.4byte	0xad6
	.4byte	0xdb
	.uleb128 0x13
	.4byte	0x10e
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.4byte	0xae6
	.4byte	0xc6
	.uleb128 0x13
	.4byte	0x10e
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.4byte	0xaf5
	.4byte	0xc6
	.uleb128 0x18
	.4byte	0x10e
	.byte	0x0
	.uleb128 0x1b
	.4byte	0xb10
	.2byte	0x400
	.byte	0x8
	.byte	0xbf
	.uleb128 0x1c
	.4byte	0x690
	.uleb128 0x1d
	.4byte	.LASF149
	.byte	0x8
	.2byte	0x125
	.4byte	0xb10
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb20
	.4byte	0xdb
	.uleb128 0x13
	.4byte	0x10e
	.byte	0xff
	.byte	0x0
	.uleb128 0x1e
	.4byte	0xba6
	.4byte	.LASF150
	.2byte	0x2000
	.byte	0x8
	.byte	0xbe
	.uleb128 0x1f
	.4byte	0xaf5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x8
	.2byte	0x128
	.4byte	0xba6
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0x8
	.2byte	0x129
	.4byte	0xbb6
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0x8
	.2byte	0x12a
	.4byte	0xbc6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0x8
	.2byte	0x12b
	.4byte	0xbd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0x8
	.2byte	0x12c
	.4byte	0xbe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0x8
	.2byte	0x12d
	.4byte	0xbf6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0x8
	.2byte	0x12e
	.4byte	0xc06
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbb6
	.4byte	0x423
	.uleb128 0x13
	.4byte	0x10e
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbc6
	.4byte	0x444
	.uleb128 0x13
	.4byte	0x10e
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbd6
	.4byte	0x465
	.uleb128 0x13
	.4byte	0x10e
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbe6
	.4byte	0x486
	.uleb128 0x13
	.4byte	0x10e
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbf6
	.4byte	0x4a8
	.uleb128 0x13
	.4byte	0x10e
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xc06
	.4byte	0x4ca
	.uleb128 0x13
	.4byte	0x10e
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xc16
	.4byte	0x4ec
	.uleb128 0x13
	.4byte	0x10e
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF158
	.byte	0x8
	.2byte	0x12f
	.4byte	0xb20
	.uleb128 0x20
	.4byte	0xc4c
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.uleb128 0x21
	.4byte	.LASF159
	.byte	0x4
	.byte	0x48
	.4byte	0xdb
	.uleb128 0x21
	.4byte	.LASF160
	.byte	0x4
	.byte	0x49
	.4byte	0xdb
	.uleb128 0x21
	.4byte	.LASF69
	.byte	0x4
	.byte	0x4a
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x10
	.4byte	0xc8b
	.4byte	.LASF161
	.byte	0xc
	.byte	0x4
	.byte	0x45
	.uleb128 0x12
	.4byte	.LASF162
	.byte	0x4
	.byte	0x46
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x1f
	.4byte	0xc22
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF163
	.byte	0x4
	.byte	0x4c
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF164
	.byte	0x4
	.byte	0x4d
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF165
	.byte	0x4
	.byte	0x4e
	.4byte	0xc4c
	.uleb128 0xc
	.4byte	0xca6
	.4byte	0xf0
	.uleb128 0x13
	.4byte	0x10e
	.byte	0x6
	.byte	0x0
	.uleb128 0x10
	.4byte	0xcdd
	.4byte	.LASF166
	.byte	0x4
	.byte	0x1
	.byte	0x49
	.uleb128 0x12
	.4byte	.LASF167
	.byte	0x1
	.byte	0x4a
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF168
	.byte	0x1
	.byte	0x4c
	.4byte	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.4byte	.LASF169
	.byte	0x1
	.byte	0x4d
	.4byte	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF170
	.byte	0x1
	.byte	0x52
	.4byte	0xca6
	.uleb128 0x22
	.4byte	0xd2b
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x1eb
	.byte	0x1
	.4byte	.LFB114
	.4byte	.LFE114
	.byte	0x1
	.byte	0x5d
	.uleb128 0x23
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x1ea
	.4byte	0xdb
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x1ea
	.4byte	0xd2b
	.byte	0x1
	.byte	0x51
	.uleb128 0x25
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x1ed
	.4byte	0xd36
	.4byte	.LLST1
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd31
	.uleb128 0x1a
	.4byte	0xc8b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x53c
	.uleb128 0x26
	.4byte	0xd6b
	.4byte	.LASF173
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.byte	0x3
	.uleb128 0x27
	.4byte	.LASF174
	.byte	0x1
	.byte	0xc4
	.4byte	0xac1
	.uleb128 0x28
	.4byte	.LASF176
	.byte	0x1
	.byte	0xc6
	.4byte	0xd6b
	.uleb128 0x28
	.4byte	.LASF177
	.byte	0x1
	.byte	0xc7
	.4byte	0xd6b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcdd
	.uleb128 0x29
	.4byte	0xe0d
	.4byte	.LASF178
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.4byte	0x1e3
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST2
	.uleb128 0x2a
	.4byte	.LASF179
	.byte	0x1
	.byte	0xd8
	.4byte	0xac1
	.4byte	.LLST3
	.uleb128 0x2a
	.4byte	.LASF180
	.byte	0x1
	.byte	0xd8
	.4byte	0xe0d
	.4byte	.LLST4
	.uleb128 0x2b
	.4byte	.LASF181
	.byte	0x1
	.byte	0xda
	.4byte	0xac1
	.4byte	.LLST5
	.uleb128 0x2c
	.4byte	.LASF182
	.byte	0x1
	.byte	0xdc
	.4byte	0xac1
	.byte	0x1
	.byte	0x58
	.uleb128 0x2c
	.4byte	.LASF183
	.byte	0x1
	.byte	0xe3
	.4byte	0xdb
	.byte	0x1
	.byte	0x55
	.uleb128 0x28
	.4byte	.LASF184
	.byte	0x1
	.byte	0xf9
	.4byte	0xe13
	.uleb128 0x2d
	.4byte	0xd3c
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x1
	.byte	0xf7
	.uleb128 0x2e
	.4byte	0xd49
	.uleb128 0x2f
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x30
	.4byte	0xd54
	.4byte	.LLST6
	.uleb128 0x31
	.4byte	0xd5f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xfb
	.uleb128 0x1a
	.4byte	0xfb
	.uleb128 0x32
	.4byte	0xee0
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x101
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x100
	.4byte	0xdb
	.uleb128 0x34
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x100
	.4byte	0xaa4
	.uleb128 0x34
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x100
	.4byte	0xfb
	.uleb128 0x35
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x102
	.4byte	0xd36
	.uleb128 0x35
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x103
	.4byte	0xaa4
	.uleb128 0x36
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x104
	.4byte	0xfb
	.uleb128 0x37
	.uleb128 0x36
	.ascii	"end\000"
	.byte	0x1
	.2byte	0x10f
	.4byte	0xac1
	.uleb128 0x35
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x110
	.4byte	0xab0
	.uleb128 0x36
	.ascii	"acc\000"
	.byte	0x1
	.2byte	0x111
	.4byte	0xfb
	.uleb128 0x35
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x112
	.4byte	0xdb
	.uleb128 0x35
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x113
	.4byte	0xab0
	.uleb128 0x37
	.uleb128 0x35
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x116
	.4byte	0xfb
	.uleb128 0x37
	.uleb128 0x35
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x11f
	.4byte	0xab0
	.uleb128 0x35
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x120
	.4byte	0xfb
	.uleb128 0x37
	.uleb128 0x35
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x128
	.4byte	0xac1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.4byte	0x1025
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x153
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x152
	.4byte	0xaa4
	.uleb128 0x34
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x152
	.4byte	0xe13
	.uleb128 0x35
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x154
	.4byte	0xd36
	.uleb128 0x36
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x155
	.4byte	0xfb
	.uleb128 0x38
	.4byte	0x1016
	.uleb128 0x36
	.ascii	"end\000"
	.byte	0x1
	.2byte	0x15f
	.4byte	0xac1
	.uleb128 0x35
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x160
	.4byte	0xac1
	.uleb128 0x35
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x161
	.4byte	0xe13
	.uleb128 0x35
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x163
	.4byte	0xe13
	.uleb128 0x36
	.ascii	"acc\000"
	.byte	0x1
	.2byte	0x164
	.4byte	0xfb
	.uleb128 0x35
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x165
	.4byte	0xfb
	.uleb128 0x35
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x166
	.4byte	0xfb
	.uleb128 0x35
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x167
	.4byte	0xe13
	.uleb128 0x35
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x168
	.4byte	0xfb
	.uleb128 0x35
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x16a
	.4byte	0xe13
	.uleb128 0x35
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x16c
	.4byte	0xfb
	.uleb128 0x35
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x16d
	.4byte	0xaa4
	.uleb128 0x35
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x1b9
	.4byte	0xac1
	.uleb128 0x35
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x1025
	.uleb128 0x35
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x1bb
	.4byte	0xaa4
	.uleb128 0x37
	.uleb128 0x35
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x176
	.4byte	0xfb
	.uleb128 0x37
	.uleb128 0x35
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x17f
	.4byte	0xab0
	.uleb128 0x37
	.uleb128 0x35
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x185
	.4byte	0xac1
	.uleb128 0x36
	.ascii	"d0\000"
	.byte	0x1
	.2byte	0x187
	.4byte	0xac1
	.uleb128 0x36
	.ascii	"d1\000"
	.byte	0x1
	.2byte	0x190
	.4byte	0xac1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x35
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x1d8
	.4byte	0xaa4
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x102b
	.uleb128 0x1a
	.4byte	0xd0
	.uleb128 0x39
	.4byte	0x1235
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x1e4
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST7
	.uleb128 0x3a
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x1e3
	.4byte	0xdb
	.4byte	.LLST8
	.uleb128 0x3b
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x1e3
	.4byte	0xaa4
	.4byte	.LLST9
	.uleb128 0x3b
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x1e3
	.4byte	0xdb
	.4byte	.LLST10
	.uleb128 0x3c
	.4byte	0x10b5
	.4byte	0xe18
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x1e6
	.uleb128 0x2e
	.4byte	0xe3d
	.uleb128 0x2e
	.4byte	0xe31
	.uleb128 0x2e
	.4byte	0xe26
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x30
	.4byte	0xe49
	.4byte	.LLST11
	.uleb128 0x31
	.4byte	0xe55
	.uleb128 0x30
	.4byte	0xe61
	.4byte	.LLST12
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.4byte	0x10f7
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x30
	.4byte	0xe6c
	.4byte	.LLST13
	.uleb128 0x31
	.4byte	0xe78
	.uleb128 0x30
	.4byte	0xe84
	.4byte	.LLST14
	.uleb128 0x30
	.4byte	0xe90
	.4byte	.LLST15
	.uleb128 0x30
	.4byte	0xe9c
	.4byte	.LLST16
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x30
	.4byte	0xea9
	.4byte	.LLST17
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.4byte	0x1113
	.4byte	.Ldebug_ranges0+0x88
	.uleb128 0x30
	.4byte	0xeb6
	.4byte	.LLST18
	.uleb128 0x30
	.4byte	0xec2
	.4byte	.LLST19
	.byte	0x0
	.uleb128 0x3e
	.4byte	0x1126
	.4byte	.Ldebug_ranges0+0xa0
	.uleb128 0x30
	.4byte	0xecf
	.4byte	.LLST20
	.byte	0x0
	.uleb128 0x3c
	.4byte	0x1159
	.4byte	0xee0
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.2byte	0x1e7
	.uleb128 0x2e
	.4byte	0xefa
	.uleb128 0x2e
	.4byte	0xeee
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0xd0
	.uleb128 0x30
	.4byte	0xf06
	.4byte	.LLST21
	.uleb128 0x30
	.4byte	0xf12
	.4byte	.LLST22
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.4byte	0x11da
	.4byte	.Ldebug_ranges0+0xf0
	.uleb128 0x30
	.4byte	0xf21
	.4byte	.LLST23
	.uleb128 0x30
	.4byte	0xf2d
	.4byte	.LLST24
	.uleb128 0x30
	.4byte	0xf39
	.4byte	.LLST25
	.uleb128 0x31
	.4byte	0xf45
	.uleb128 0x30
	.4byte	0xf51
	.4byte	.LLST26
	.uleb128 0x30
	.4byte	0xf5d
	.4byte	.LLST27
	.uleb128 0x30
	.4byte	0xf69
	.4byte	.LLST28
	.uleb128 0x30
	.4byte	0xf75
	.4byte	.LLST29
	.uleb128 0x30
	.4byte	0xf81
	.4byte	.LLST30
	.uleb128 0x31
	.4byte	0xf8d
	.uleb128 0x30
	.4byte	0xf99
	.4byte	.LLST31
	.uleb128 0x30
	.4byte	0xfa5
	.4byte	.LLST32
	.uleb128 0x31
	.4byte	0xfb1
	.uleb128 0x30
	.4byte	0xfbd
	.4byte	.LLST33
	.uleb128 0x31
	.4byte	0xfc9
	.byte	0x0
	.uleb128 0x3e
	.4byte	0x11ed
	.4byte	.Ldebug_ranges0+0x110
	.uleb128 0x30
	.4byte	0xfd6
	.4byte	.LLST34
	.byte	0x0
	.uleb128 0x3f
	.4byte	0x1225
	.4byte	.LBB46
	.4byte	.LBE46
	.uleb128 0x30
	.4byte	0xfe3
	.4byte	.LLST35
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x128
	.uleb128 0x30
	.4byte	0xff0
	.4byte	.LLST36
	.uleb128 0x30
	.4byte	0xffc
	.4byte	.LLST37
	.uleb128 0x30
	.4byte	0x1007
	.4byte	.LLST38
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LBB51
	.4byte	.LBE51
	.uleb128 0x31
	.4byte	0x1017
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.4byte	0x129b
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x215
	.byte	0x1
	.4byte	0xfb
	.byte	0x1
	.uleb128 0x33
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x214
	.4byte	0xdb
	.uleb128 0x34
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x214
	.4byte	0xfb
	.uleb128 0x34
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x214
	.4byte	0xfb
	.uleb128 0x35
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x216
	.4byte	0xfb
	.uleb128 0x35
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x217
	.4byte	0xfb
	.uleb128 0x36
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x218
	.4byte	0xdb
	.uleb128 0x37
	.uleb128 0x35
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x226
	.4byte	0xd2b
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.4byte	0x1331
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x238
	.byte	0x1
	.4byte	0xfb
	.byte	0x1
	.uleb128 0x33
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x237
	.4byte	0xdb
	.uleb128 0x34
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x237
	.4byte	0xfb
	.uleb128 0x34
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x237
	.4byte	0xfb
	.uleb128 0x35
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x23a
	.4byte	0xdb
	.uleb128 0x35
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x23b
	.4byte	0xfb
	.uleb128 0x35
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x23c
	.4byte	0xfb
	.uleb128 0x35
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x23d
	.4byte	0xdb
	.uleb128 0x35
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x23e
	.4byte	0xdb
	.uleb128 0x36
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x23f
	.4byte	0xdb
	.uleb128 0x37
	.uleb128 0x35
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x24c
	.4byte	0xd2b
	.uleb128 0x35
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x258
	.4byte	0xdb
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
	.4byte	0x144a
	.byte	0x1
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x290
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LLST39
	.uleb128 0x42
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x291
	.4byte	0xc96
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x42
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x292
	.4byte	0xc96
	.byte	0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x43
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x293
	.4byte	0xdb
	.4byte	.LLST40
	.uleb128 0x42
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x2a1
	.4byte	0x102b
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x44
	.4byte	0x13de
	.4byte	0x1235
	.4byte	.LBB58
	.4byte	.LBE58
	.byte	0x1
	.2byte	0x2a9
	.uleb128 0x2e
	.4byte	0x125e
	.uleb128 0x2e
	.4byte	0x1252
	.uleb128 0x2e
	.4byte	0x1247
	.uleb128 0x2f
	.4byte	.LBB59
	.4byte	.LBE59
	.uleb128 0x30
	.4byte	0x126a
	.4byte	.LLST41
	.uleb128 0x30
	.4byte	0x1276
	.4byte	.LLST42
	.uleb128 0x30
	.4byte	0x1282
	.4byte	.LLST43
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x150
	.uleb128 0x30
	.4byte	0x128d
	.4byte	.LLST44
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
	.4byte	0x129b
	.4byte	.LBB62
	.4byte	.LBE62
	.byte	0x1
	.2byte	0x2b3
	.uleb128 0x2e
	.4byte	0x12c4
	.uleb128 0x2e
	.4byte	0x12b8
	.uleb128 0x2e
	.4byte	0x12ad
	.uleb128 0x2f
	.4byte	.LBB63
	.4byte	.LBE63
	.uleb128 0x30
	.4byte	0x12d0
	.4byte	.LLST45
	.uleb128 0x46
	.4byte	0x12dc
	.byte	0x1
	.byte	0x54
	.uleb128 0x46
	.4byte	0x12e8
	.byte	0x1
	.byte	0x58
	.uleb128 0x30
	.4byte	0x12f4
	.4byte	.LLST46
	.uleb128 0x46
	.4byte	0x1300
	.byte	0x1
	.byte	0x56
	.uleb128 0x46
	.4byte	0x130c
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x168
	.uleb128 0x46
	.4byte	0x1317
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.4byte	0x1323
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x47
	.4byte	0x146e
	.byte	0x1
	.4byte	.LASF215
	.byte	0x1
	.byte	0x94
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LLST47
	.uleb128 0x48
	.ascii	"i\000"
	.byte	0x1
	.byte	0x95
	.4byte	0xdb
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0x47
	.4byte	0x14e1
	.byte	0x1
	.4byte	.LASF216
	.byte	0x1
	.byte	0x62
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LLST48
	.uleb128 0x28
	.4byte	.LASF64
	.byte	0x1
	.byte	0x63
	.4byte	0xfb
	.uleb128 0x49
	.ascii	"nib\000"
	.byte	0x1
	.byte	0x63
	.4byte	0xfb
	.4byte	.LLST49
	.uleb128 0x49
	.ascii	"i\000"
	.byte	0x1
	.byte	0x64
	.4byte	0xdb
	.4byte	.LLST50
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x198
	.uleb128 0x2b
	.4byte	.LASF217
	.byte	0x1
	.byte	0x71
	.4byte	0xe13
	.4byte	.LLST51
	.uleb128 0x2b
	.4byte	.LASF218
	.byte	0x1
	.byte	0x72
	.4byte	0xe13
	.4byte	.LLST52
	.uleb128 0x2b
	.4byte	.LASF219
	.byte	0x1
	.byte	0x73
	.4byte	0xfb
	.4byte	.LLST53
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF220
	.byte	0x6
	.2byte	0x129
	.4byte	0x14ed
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d7
	.uleb128 0xc
	.4byte	0x1509
	.4byte	0xc8b
	.uleb128 0x13
	.4byte	0x10e
	.byte	0x6
	.uleb128 0x13
	.4byte	0x10e
	.byte	0x1f
	.byte	0x0
	.uleb128 0x2c
	.4byte	.LASF221
	.byte	0x1
	.byte	0xb
	.4byte	0x14f3
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmControl
	.uleb128 0xc
	.4byte	0x1531
	.4byte	0xd0
	.uleb128 0x13
	.4byte	0x10e
	.byte	0x6
	.uleb128 0xd
	.4byte	0x10e
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x2c
	.4byte	.LASF222
	.byte	0x1
	.byte	0xf
	.4byte	0x151a
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmaBuffer
	.uleb128 0x2c
	.4byte	.LASF223
	.byte	0x1
	.byte	0x10
	.4byte	0xaa4
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmbBuffer
	.uleb128 0x2c
	.4byte	.LASF224
	.byte	0x1
	.byte	0x11
	.4byte	0xd0
	.byte	0x5
	.byte	0x3
	.4byte	g_audioFrame
	.uleb128 0x2c
	.4byte	.LASF225
	.byte	0x1
	.byte	0x12
	.4byte	0xdb
	.byte	0x5
	.byte	0x3
	.4byte	g_buffer
	.uleb128 0xc
	.4byte	0x1585
	.4byte	0xdb
	.uleb128 0x13
	.4byte	0x10e
	.byte	0x6
	.byte	0x0
	.uleb128 0x2c
	.4byte	.LASF226
	.byte	0x1
	.byte	0x13
	.4byte	0x1575
	.byte	0x5
	.byte	0x3
	.4byte	g_zeroFill
	.uleb128 0xc
	.4byte	0x15a6
	.4byte	0xf0
	.uleb128 0x13
	.4byte	0x10e
	.byte	0x30
	.byte	0x0
	.uleb128 0x2c
	.4byte	.LASF227
	.byte	0x1
	.byte	0x1c
	.4byte	0x15b7
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmSteps
	.uleb128 0x1a
	.4byte	0x1596
	.uleb128 0xc
	.4byte	0x15cc
	.4byte	0xf0
	.uleb128 0x13
	.4byte	0x10e
	.byte	0xf
	.byte	0x0
	.uleb128 0x2c
	.4byte	.LASF228
	.byte	0x1
	.byte	0x27
	.4byte	0x15dd
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmStepInc
	.uleb128 0x1a
	.4byte	0x15bc
	.uleb128 0xc
	.4byte	0x15f2
	.4byte	0xe6
	.uleb128 0x13
	.4byte	0x10e
	.byte	0xf
	.byte	0x0
	.uleb128 0x2c
	.4byte	.LASF229
	.byte	0x1
	.byte	0x2d
	.4byte	0x1603
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmbTable1
	.uleb128 0x1a
	.4byte	0x15e2
	.uleb128 0xc
	.4byte	0x1618
	.4byte	0xc6
	.uleb128 0x13
	.4byte	0x10e
	.byte	0xf
	.byte	0x0
	.uleb128 0x2c
	.4byte	.LASF230
	.byte	0x1
	.byte	0x32
	.4byte	0x1629
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmbTable2
	.uleb128 0x1a
	.4byte	0x1608
	.uleb128 0xc
	.4byte	0x163f
	.4byte	0xc6
	.uleb128 0xd
	.4byte	0x10e
	.2byte	0x3fff
	.byte	0x0
	.uleb128 0x2c
	.4byte	.LASF231
	.byte	0x1
	.byte	0x55
	.4byte	0x162e
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmTable
	.uleb128 0xc
	.4byte	0x1663
	.4byte	0xc6
	.uleb128 0x4a
	.4byte	0x10e
	.4byte	0x3e7ff
	.byte	0x0
	.uleb128 0x2c
	.4byte	.LASF232
	.byte	0x1
	.byte	0x5b
	.4byte	0x1650
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmCache
	.uleb128 0xc
	.4byte	0x1684
	.4byte	0xcdd
	.uleb128 0x13
	.4byte	0x10e
	.byte	0xfb
	.byte	0x0
	.uleb128 0x2c
	.4byte	.LASF233
	.byte	0x1
	.byte	0x5c
	.4byte	0x1674
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmEntry
	.uleb128 0xc
	.4byte	0x16a0
	.4byte	0x54
	.uleb128 0x4b
	.byte	0x0
	.uleb128 0x4c
	.4byte	.LASF234
	.byte	0x7
	.byte	0x2c
	.4byte	0x1695
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x16b8
	.4byte	0x54
	.uleb128 0x4b
	.byte	0x0
	.uleb128 0x4c
	.4byte	.LASF235
	.byte	0x7
	.byte	0x2d
	.4byte	0x16ad
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x16d0
	.4byte	0x54
	.uleb128 0x4b
	.byte	0x0
	.uleb128 0x4c
	.4byte	.LASF236
	.byte	0x7
	.byte	0x2e
	.4byte	0x16c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.4byte	.LASF237
	.byte	0x8
	.2byte	0x149
	.4byte	0x16ec
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc16
	.uleb128 0x4e
	.4byte	.LASF238
	.byte	0x8
	.2byte	0x14d
	.4byte	0xc16
	.byte	0x1
	.byte	0x1
	.uleb128 0x4e
	.4byte	.LASF239
	.byte	0x8
	.2byte	0x14e
	.4byte	0x685
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x171f
	.4byte	0xf0
	.uleb128 0xd
	.4byte	0x10e
	.2byte	0x61f
	.byte	0x0
	.uleb128 0x4f
	.4byte	.LASF240
	.byte	0x1
	.byte	0x39
	.4byte	0x170e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	g_jediTable
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
	.uleb128 0x3
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
	.uleb128 0x17
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
	.uleb128 0x21
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
	.uleb128 0x5
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
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x4b
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.4byte	0x71
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1732
	.4byte	0x1331
	.ascii	"neoAudioStreamProcess\000"
	.4byte	0x144a
	.ascii	"neoAudioStreamReset\000"
	.4byte	0x146e
	.ascii	"neoAudioStreamInit\000"
	.4byte	0x16dd
	.ascii	"g_neo\000"
	.4byte	0x171f
	.ascii	"g_jediTable\000"
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
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	.LBB61-.Ltext0
	.4byte	.LBE61-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB64-.Ltext0
	.4byte	.LBE64-.Ltext0
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	.LBB67-.Ltext0
	.4byte	.LBE67-.Ltext0
	.4byte	.LBB66-.Ltext0
	.4byte	.LBE66-.Ltext0
	.4byte	.LBB65-.Ltext0
	.4byte	.LBE65-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB69-.Ltext0
	.4byte	.LBE69-.Ltext0
	.4byte	.LBB72-.Ltext0
	.4byte	.LBE72-.Ltext0
	.4byte	.LBB71-.Ltext0
	.4byte	.LBE71-.Ltext0
	.4byte	.LBB70-.Ltext0
	.4byte	.LBE70-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF25:
	.ascii	"clearColor\000"
.LASF39:
	.ascii	"checkpc\000"
.LASF0:
	.ascii	"int8_t\000"
.LASF43:
	.ascii	"write8\000"
.LASF176:
	.ascii	"pEntry\000"
.LASF106:
	.ascii	"smaBankbit\000"
.LASF157:
	.ascii	"cpuCheckPcTable\000"
.LASF114:
	.ascii	"spriteMask\000"
.LASF136:
	.ascii	"ctrl3Reg\000"
.LASF170:
	.ascii	"TADPCMCacheEntry\000"
.LASF48:
	.ascii	"fetch32\000"
.LASF163:
	.ascii	"audioFrame\000"
.LASF181:
	.ascii	"entryIndex\000"
.LASF186:
	.ascii	"pBuffer\000"
.LASF122:
	.ascii	"cpuClocksPerScanline\000"
.LASF55:
	.ascii	"TRead16Func\000"
.LASF88:
	.ascii	"romBankCount\000"
.LASF117:
	.ascii	"tileOffsetX\000"
.LASF155:
	.ascii	"cpuWrite16Table\000"
.LASF15:
	.ascii	"uint32\000"
.LASF21:
	.ascii	"GL_MODELVIEW\000"
.LASF119:
	.ascii	"tileScaleX\000"
.LASF120:
	.ascii	"tileScaleY\000"
.LASF223:
	.ascii	"g_adpcmbBuffer\000"
.LASF211:
	.ascii	"lastCommand\000"
.LASF44:
	.ascii	"write16\000"
.LASF60:
	.ascii	"TCheckPcFunc\000"
.LASF215:
	.ascii	"neoAudioStreamReset\000"
.LASF148:
	.ascii	"varEnd\000"
.LASF57:
	.ascii	"TWrite8Func\000"
.LASF40:
	.ascii	"read8\000"
.LASF219:
	.ascii	"newStep\000"
.LASF187:
	.ascii	"baseStreamSize\000"
.LASF70:
	.ascii	"TNeoADPCMBStream\000"
.LASF54:
	.ascii	"TRead8Func\000"
.LASF116:
	.ascii	"pTileBuffer\000"
.LASF228:
	.ascii	"g_adpcmStepInc\000"
.LASF153:
	.ascii	"cpuRead32Table\000"
.LASF23:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF9:
	.ascii	"long int\000"
.LASF69:
	.ascii	"frequency\000"
.LASF80:
	.ascii	"audio2Offset\000"
.LASF58:
	.ascii	"TWrite16Func\000"
.LASF46:
	.ascii	"fetch8\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF146:
	.ascii	"keyGrid\000"
.LASF239:
	.ascii	"g_header\000"
.LASF166:
	.ascii	"_TADPCMCacheEntry\000"
.LASF182:
	.ascii	"entryOffset\000"
.LASF180:
	.ascii	"length\000"
.LASF45:
	.ascii	"write32\000"
.LASF84:
	.ascii	"data\000"
.LASF208:
	.ascii	"commandCount\000"
.LASF49:
	.ascii	"IrqCallback\000"
.LASF2:
	.ascii	"signed char\000"
.LASF1:
	.ascii	"uint8_t\000"
.LASF137:
	.ascii	"ctrl4Reg\000"
.LASF161:
	.ascii	"_TNeoAdpcaControl\000"
.LASF177:
	.ascii	"pTail\000"
.LASF127:
	.ascii	"romBankAddress\000"
.LASF64:
	.ascii	"step\000"
.LASF91:
	.ascii	"adpcmActive\000"
.LASF111:
	.ascii	"vramBaseMask\000"
.LASF87:
	.ascii	"spriteCount\000"
.LASF188:
	.ascii	"pDst\000"
.LASF51:
	.ascii	"UnrecognizedCallback\000"
.LASF18:
	.ascii	"char\000"
.LASF139:
	.ascii	"irqVectorLatch\000"
.LASF175:
	.ascii	"pAdpcm\000"
.LASF98:
	.ascii	"pVram\000"
.LASF200:
	.ascii	"pStreamDst\000"
.LASF140:
	.ascii	"screenDarkLatch\000"
.LASF82:
	.ascii	"name\000"
.LASF34:
	.ascii	"prev_pc\000"
.LASF66:
	.ascii	"_TNeoADPCMBStream\000"
.LASF178:
	.ascii	"neoAudioStream\000"
.LASF193:
	.ascii	"jedi\000"
.LASF13:
	.ascii	"long long unsigned int\000"
.LASF33:
	.ascii	"flags\000"
.LASF198:
	.ascii	"totalBytesRead\000"
.LASF17:
	.ascii	"double\000"
.LASF113:
	.ascii	"autoAnimationCounter\000"
.LASF26:
	.ascii	"textures\000"
.LASF20:
	.ascii	"GL_POSITION\000"
.LASF184:
	.ascii	"transferSize\000"
.LASF158:
	.ascii	"TNeoContext\000"
.LASF121:
	.ascii	"cpuClockDivide\000"
.LASF221:
	.ascii	"g_adpcmControl\000"
.LASF109:
	.ascii	"frameCount\000"
.LASF129:
	.ascii	"vramOffset\000"
.LASF73:
	.ascii	"TNeoRomEntry\000"
.LASF218:
	.ascii	"jediValue\000"
.LASF229:
	.ascii	"g_adpcmbTable1\000"
.LASF243:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF149:
	.ascii	"fill\000"
.LASF159:
	.ascii	"startAddr\000"
.LASF37:
	.ascii	"cycles\000"
.LASF227:
	.ascii	"g_adpcmSteps\000"
.LASF156:
	.ascii	"cpuWrite32Table\000"
.LASF173:
	.ascii	"markEntryAsUsed\000"
.LASF83:
	.ascii	"romEntry\000"
.LASF79:
	.ascii	"fixedBankType\000"
.LASF143:
	.ascii	"paletteRamLatch\000"
.LASF183:
	.ascii	"entry\000"
.LASF234:
	.ascii	"COS_bin\000"
.LASF225:
	.ascii	"g_buffer\000"
.LASF95:
	.ascii	"pRam\000"
.LASF97:
	.ascii	"pCard\000"
.LASF112:
	.ascii	"displayCounter\000"
.LASF53:
	.ascii	"TCycloneContext\000"
.LASF124:
	.ascii	"watchdogCounter\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF222:
	.ascii	"g_adpcmaBuffer\000"
.LASF192:
	.ascii	"pSrc\000"
.LASF152:
	.ascii	"cpuRead16Table\000"
.LASF132:
	.ascii	"displayControlMask\000"
.LASF8:
	.ascii	"int32_t\000"
.LASF144:
	.ascii	"active\000"
.LASF190:
	.ascii	"pJedi\000"
.LASF61:
	.ascii	"Cyclone\000"
.LASF94:
	.ascii	"pBios\000"
.LASF206:
	.ascii	"adpcmQueuePos9\000"
.LASF115:
	.ascii	"paletteDirty\000"
.LASF235:
	.ascii	"SIN_bin\000"
.LASF24:
	.ascii	"matrixMode\000"
.LASF28:
	.ascii	"nextBlock\000"
.LASF216:
	.ascii	"neoAudioStreamInit\000"
.LASF226:
	.ascii	"g_zeroFill\000"
.LASF151:
	.ascii	"cpuRead8Table\000"
.LASF107:
	.ascii	"smaRand\000"
.LASF62:
	.ascii	"_TNeoADPCMStream\000"
.LASF59:
	.ascii	"TWrite32Func\000"
.LASF102:
	.ascii	"smaAddr0\000"
.LASF12:
	.ascii	"long long int\000"
.LASF19:
	.ascii	"GL_PROJECTION\000"
.LASF138:
	.ascii	"coinReg\000"
.LASF67:
	.ascii	"initOffset\000"
.LASF52:
	.ascii	"internal\000"
.LASF47:
	.ascii	"fetch16\000"
.LASF201:
	.ascii	"mask\000"
.LASF242:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoAudioStre"
	.ascii	"am.arm.c\000"
.LASF103:
	.ascii	"smaAddr1\000"
.LASF203:
	.ascii	"neoAudioStreamAdpcm\000"
.LASF179:
	.ascii	"addr\000"
.LASF77:
	.ascii	"protection\000"
.LASF32:
	.ascii	"unused\000"
.LASF14:
	.ascii	"unsigned int\000"
.LASF232:
	.ascii	"g_adpcmCache\000"
.LASF131:
	.ascii	"displayControl\000"
.LASF220:
	.ascii	"glGlob\000"
.LASF105:
	.ascii	"smaBankoffset\000"
.LASF22:
	.ascii	"GL_TEXTURE\000"
.LASF110:
	.ascii	"pVramBase\000"
.LASF63:
	.ascii	"offset\000"
.LASF92:
	.ascii	"pRom0\000"
.LASF118:
	.ascii	"tileOffsetY\000"
.LASF154:
	.ascii	"cpuWrite8Table\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF27:
	.ascii	"activeTexture\000"
.LASF81:
	.ascii	"sectionCount\000"
.LASF135:
	.ascii	"ctrl2Reg\000"
.LASF168:
	.ascii	"next\000"
.LASF41:
	.ascii	"read16\000"
.LASF202:
	.ascii	"bytesRead\000"
.LASF240:
	.ascii	"g_jediTable\000"
.LASF125:
	.ascii	"paletteBank\000"
.LASF171:
	.ascii	"pControl\000"
.LASF238:
	.ascii	"g_neoContext\000"
.LASF204:
	.ascii	"neoAudioSkipCommands\000"
.LASF38:
	.ascii	"membase\000"
.LASF241:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF195:
	.ascii	"loop\000"
.LASF108:
	.ascii	"scanline\000"
.LASF72:
	.ascii	"size\000"
.LASF199:
	.ascii	"bytesToRead\000"
.LASF100:
	.ascii	"pPalette\000"
.LASF191:
	.ascii	"streamSize\000"
.LASF162:
	.ascii	"command\000"
.LASF6:
	.ascii	"uint16_t\000"
.LASF145:
	.ascii	"debug\000"
.LASF217:
	.ascii	"value\000"
.LASF236:
	.ascii	"TAN_bin\000"
.LASF93:
	.ascii	"pRom1\000"
.LASF160:
	.ascii	"endAddr\000"
.LASF76:
	.ascii	"version\000"
.LASF42:
	.ascii	"read32\000"
.LASF85:
	.ascii	"TNeoRomHeader\000"
.LASF99:
	.ascii	"pSpriteRam\000"
.LASF230:
	.ascii	"g_adpcmbTable2\000"
.LASF50:
	.ascii	"ResetCallback\000"
.LASF142:
	.ascii	"sramProtectLatch\000"
.LASF126:
	.ascii	"fixedBank\000"
.LASF224:
	.ascii	"g_audioFrame\000"
.LASF75:
	.ascii	"magic\000"
.LASF30:
	.ascii	"nameCount\000"
.LASF134:
	.ascii	"ctrl1Reg\000"
.LASF36:
	.ascii	"state_flags\000"
.LASF78:
	.ascii	"sramProtection\000"
.LASF209:
	.ascii	"neoAudioProcessChannel\000"
.LASF96:
	.ascii	"pSram\000"
.LASF68:
	.ascii	"freqCounter\000"
.LASF5:
	.ascii	"short int\000"
.LASF147:
	.ascii	"frameCounter\000"
.LASF90:
	.ascii	"adpcmb\000"
.LASF205:
	.ascii	"adpcmQueuePos7\000"
.LASF29:
	.ascii	"nextPBlock\000"
.LASF4:
	.ascii	"int16_t\000"
.LASF233:
	.ascii	"g_adpcmEntry\000"
.LASF167:
	.ascii	"index\000"
.LASF133:
	.ascii	"displayCounterLoad\000"
.LASF123:
	.ascii	"irqPending\000"
.LASF214:
	.ascii	"neoAudioStreamProcess\000"
.LASF164:
	.ascii	"timeStamp\000"
.LASF231:
	.ascii	"g_adpcmTable\000"
.LASF71:
	.ascii	"_TNeoRomEntry\000"
.LASF74:
	.ascii	"_TNeoRomHeader\000"
.LASF207:
	.ascii	"commandIndex\000"
.LASF210:
	.ascii	"sizeToTransfer\000"
.LASF194:
	.ascii	"neoAudioStreamAdpcmb\000"
.LASF56:
	.ascii	"TRead32Func\000"
.LASF174:
	.ascii	"cacheIndex\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF172:
	.ascii	"neoAudioCommand\000"
.LASF165:
	.ascii	"TNeoAdpcmControl\000"
.LASF196:
	.ascii	"initAcc\000"
.LASF89:
	.ascii	"adpcm\000"
.LASF197:
	.ascii	"freq\000"
.LASF16:
	.ascii	"float\000"
.LASF31:
	.ascii	"gl_hidden_globals\000"
.LASF212:
	.ascii	"bufferPos\000"
.LASF189:
	.ascii	"pJediTable\000"
.LASF86:
	.ascii	"pVideoWriteTable\000"
.LASF237:
	.ascii	"g_neo\000"
.LASF101:
	.ascii	"bankTable\000"
.LASF169:
	.ascii	"prev\000"
.LASF104:
	.ascii	"smaBankAddr\000"
.LASF185:
	.ascii	"neoAudioStreamAdpcma\000"
.LASF150:
	.ascii	"_TNeoContext\000"
.LASF35:
	.ascii	"reserved\000"
.LASF141:
	.ascii	"fixedRomLatch\000"
.LASF128:
	.ascii	"sramProtectCount\000"
.LASF65:
	.ascii	"TNeoADPCMStream\000"
.LASF130:
	.ascii	"vramMod\000"
.LASF213:
	.ascii	"arm7StreamCount\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
