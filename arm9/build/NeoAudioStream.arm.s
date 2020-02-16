	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
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
.LFB173:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/NeoAudioStream.arm.c"
	.loc 1 491 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	.loc 1 493 0
	mov	r3, #12
	mul	ip, r3, r0
	.loc 1 491 0
	stmfd	sp!, {r4, r5, r6, lr}
.LCFI0:
	.loc 1 495 0
	ldr	r5, [r1, #0]
	.loc 1 493 0
	add	r4, r7, #220
	.loc 1 495 0
	sub	r5, r5, #1
	.loc 1 493 0
	add	r2, r4, ip
.LVL1:
	.loc 1 495 0
	cmp	r5, #3
	ldrls	pc, [pc, r5, asl #2]
	b	.L10
.L7:
	.word	.L3
	.word	.L4
	.word	.L5
	.word	.L6
.L4:
	.loc 1 497 0
	ldr	r6, [r1, #4]
	.loc 1 499 0
	cmp	r0, #5
	.loc 1 497 0
	bic	r6, r6, #-2147483648
	str	r6, [r4, ip]
	.loc 1 498 0
	mov	r5, #0
	.loc 1 504 0
	movhi	r6, #127	@ movhi
	strhih	r6, [r2, #10]	@ movhi
	.loc 1 498 0
	strh	r5, [r2, #8]	@ movhi
	.loc 1 506 0
	ldrhi	r2, [r1, #4]
.LVL2:
	.loc 1 501 0
	strlsh	r5, [r2, #10]	@ movhi
.LVL3:
	.loc 1 506 0
	strhi	r2, [r7, #304]
.LVL4:
	.loc 1 509 0
	ldr	r2, .L12
	.loc 1 507 0
	strhi	r5, [r7, #308]
	.loc 1 509 0
	ldr	r1, [r4, ip]
.LVL5:
	ldr	r2, [r2, #-247]
	cmp	r1, r2
	ldmcsfd	sp!, {r4, r5, r6, pc}
	.loc 1 511 0
	ldr	r2, [r7, #316]
	mov	r1, #1
	orr	r2, r2, r1, asl r0
	.loc 1 512 0
	ldr	r3, .L12+4
	.loc 1 511 0
	str	r2, [r7, #316]
	.loc 1 512 0
	mov	r2, #0
	str	r2, [r3, r0, asl #2]
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL6:
.L5:
	.loc 1 516 0
	ldr	r3, [r1, #4]
	str	r3, [r2, #4]
	.loc 1 517 0
	ldmfd	sp!, {r4, r5, r6, pc}
.L3:
	.loc 1 519 0
	ldr	r2, [r7, #316]
.LVL7:
	mov	r1, #1
.LVL8:
	bic	r0, r2, r1, asl r0
.LVL9:
	str	r0, [r7, #316]
	.loc 1 520 0
	ldmfd	sp!, {r4, r5, r6, pc}
.LVL10:
.L6:
	.loc 1 523 0
	cmp	r0, #6
	ldmnefd	sp!, {r4, r5, r6, pc}
	.loc 1 526 0
	ldr	r2, [r1, #4]
.LVL11:
	str	r2, [r7, #312]
.LVL12:
.L10:
	ldmfd	sp!, {r4, r5, r6, pc}
.L13:
	.align	2
.L12:
	.word	41940223
	.word	.LANCHOR0
.LFE173:
	.size	neoAudioCommand, .-neoAudioCommand
	.align	2
	.type	neoAudioStream, %function
neoAudioStream:
.LFB169:
	.loc 1 217 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL13:
	.loc 1 227 0
	ldr	r3, .L18
	.loc 1 218 0
	mov	ip, r0, lsr #10
.LVL14:
	.loc 1 217 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
.LCFI1:
	.loc 1 227 0
	add	r8, r3, ip
	ldrb	r4, [r8, #32]	@ zero_extendqisi2
.LVL15:
	.loc 1 220 0
	mov	r5, r0, asl #22
.LVL16:
	.loc 1 228 0
	cmp	r4, #255
	.loc 1 217 0
	mov	r6, r1
	.loc 1 220 0
	mov	r5, r5, lsr #22
	.loc 1 228 0
	bne	.L15
.LVL17:
	.loc 1 230 0
	ldr	lr, .L18+4
	.loc 1 234 0
	mvn	sl, #0
	.loc 1 230 0
	ldrb	r4, [lr, #1050]	@ zero_extendqisi2
	.loc 1 239 0
	add	r1, lr, #1072
	.loc 1 234 0
	add	lr, lr, r4, asl #2
	ldrh	r9, [lr, #48]
	.loc 1 239 0
	mov	r2, ip, asl #10
	.loc 1 234 0
	add	r9, r3, r9
	strb	sl, [r9, #32]
	.loc 1 239 0
	add	r1, r1, r4, asl #10
	.loc 1 237 0
	strh	ip, [lr, #48]	@ movhi
	.loc 1 239 0
	mov	r0, #4
.LVL18:
	mov	r3, #1024
	.loc 1 236 0
	strb	r4, [r8, #32]
	.loc 1 239 0
	bl	neoSystemReadRegion
.LVL19:
.L15:
.LBB10:
.LBB11:
	.loc 1 198 0
	ldr	r3, .L18+4
	.loc 1 212 0
	and	r1, r4, #255
	.loc 1 198 0
	add	r2, r3, #48
	add	r2, r2, r4, asl #2
.LVL20:
	.loc 1 206 0
	ldrb	r0, [r2, #2]	@ zero_extendqisi2
.LVL21:
	ldrb	r8, [r2, #3]	@ zero_extendqisi2
	add	ip, r3, r0, asl #2
.LVL22:
	strb	r8, [ip, #51]
	.loc 1 210 0
	ldrb	ip, [r3, #1055]	@ zero_extendqisi2
	.loc 1 207 0
	ldrb	r8, [r2, #3]	@ zero_extendqisi2
	.loc 1 210 0
	strb	ip, [r2, #3]
	.loc 1 212 0
	ldrb	ip, [r3, #1055]	@ zero_extendqisi2
	.loc 1 207 0
	add	r8, r3, r8, asl #2
	.loc 1 213 0
	strb	r1, [r3, #1055]
	.loc 1 212 0
	add	ip, r3, ip, asl #2
	.loc 1 211 0
	mvn	r3, #4
	.loc 1 207 0
	strb	r0, [r8, #50]
	.loc 1 211 0
	strb	r3, [r2, #2]
	.loc 1 212 0
	strb	r1, [ip, #50]
.LBE11:
.LBE10:
	.loc 1 249 0
	ldr	r2, [r6, #0]
.LVL23:
	.loc 1 250 0
	rsb	r3, r5, #1024
	.loc 1 254 0
	ldr	r0, .L18+8
	.loc 1 249 0
	cmp	r2, r3
	.loc 1 251 0
	add	r4, r5, r4, asl #10
.LVL24:
	strhi	r3, [r6, #0]
	.loc 1 254 0
	add	r0, r0, r4
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR1+1072
.LFE169:
	.size	neoAudioStream, .-neoAudioStream
	.align	2
	.type	neoAudioStreamAdpcm, %function
neoAudioStreamAdpcm:
.LFB172:
	.loc 1 484 0
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL25:
	stmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
.LCFI2:
	.loc 1 486 0
	cmp	r0, #5
	.loc 1 484 0
	sub	sp, sp, #48
.LCFI3:
	.loc 1 484 0
	mov	r5, r0
	mov	r4, r1
	.loc 1 486 0
	bhi	.L21
.LVL26:
.LBB25:
.LBB26:
	.loc 1 264 0
	subs	r8, r2, #0
.LVL27:
	beq	.L56
	.loc 1 270 0
	mov	r1, #1
	mov	r1, r1, asl r0
	str	r1, [sp, #12]
	ldr	r2, [r7, #316]
.LVL28:
	tst	r1, r2
	beq	.L23
.LVL29:
	.loc 1 258 0
	mov	r2, #12
	mul	r2, r0, r2
	add	r3, r7, #220
	add	r9, r3, r2
.LVL30:
	str	r3, [sp, #4]
.LBB27:
	.loc 1 271 0
	ldr	sl, [r9, #4]
	.loc 1 275 0
	ldrsh	r3, [r9, #10]
	ldr	r0, .L59
.LVL31:
	.loc 1 274 0
	ldr	r1, [sp, #4]
	.loc 1 271 0
	bic	sl, sl, #-16777216
.LVL32:
	.loc 1 275 0
	add	r3, r0, r3
.LBE27:
	.loc 1 258 0
	str	r2, [sp, #8]
.LBB33:
	.loc 1 271 0
	bic	sl, sl, #15728640
	.loc 1 275 0
	str	r3, [sp, #0]
	.loc 1 273 0
	ldrsh	fp, [r9, #8]
.LVL33:
	.loc 1 274 0
	ldr	r6, [r1, r2]
.LVL34:
	b	.L24
.LVL35:
.L30:
.LBB28:
	.loc 1 280 0
	bic	r3, r6, #-16777216
	bic	r3, r3, #15728640
	cmp	r3, sl
	.loc 1 278 0
	str	r8, [sp, #44]
.LVL36:
	.loc 1 280 0
	bhi	.L25
	add	r2, r8, r3
	cmp	r2, sl
	.loc 1 281 0
	rsbcs	r3, r3, sl
	strcs	r3, [sp, #44]
.LVL37:
.L25:
	.loc 1 286 0
	ldr	r3, [sp, #44]
	cmp	r3, #0
	ble	.L26
.LVL38:
.LBB29:
	.loc 1 287 0
	add	r1, sp, #44
	mov	r0, r6
	bl	neoAudioStream
.LVL39:
	.loc 1 292 0
	ldr	r2, [sp, #44]
.LVL40:
	.loc 1 287 0
	str	r0, [sp, #16]
	.loc 1 292 0
	mov	r3, r4
	mov	r0, r2
	mov	r1, #0
	str	r2, [sp, #20]
	str	r5, [sp, #24]
	b	.L27
.LVL41:
.L28:
.LBB30:
	.loc 1 296 0
	ldr	r2, [sp, #16]
	.loc 1 299 0
	ldr	r5, [sp, #0]
.LVL42:
	.loc 1 296 0
	ldrb	r4, [r2, r1]	@ zero_extendqisi2
.LVL43:
	.loc 1 304 0
	ldr	r2, .L59
	.loc 1 299 0
	and	ip, r4, #240
	ldr	ip, [r5, ip, lsr #2]
	.loc 1 304 0
	and	r4, r4, #15
.LVL44:
	.loc 1 299 0
	str	ip, [sp, #0]
	.loc 1 304 0
	ldr	r5, [sp, #0]
	.loc 1 300 0
	mov	ip, ip, asl #16
	add	fp, fp, ip, asr #16
.LVL45:
	.loc 1 302 0
	strh	fp, [r3, #-4]	@ movhi
.LVL46:
	.loc 1 304 0
	add	ip, r2, r5, asr #16
	ldr	r4, [ip, r4, asl #2]
.LVL47:
.LBE30:
	.loc 1 295 0
	sub	r0, r0, #1
.LBB31:
	.loc 1 305 0
	mov	ip, r4, asl #16
	add	fp, fp, ip, asr #16
.LVL48:
	.loc 1 306 0
	add	r4, r2, r4, asr #16
.LVL49:
.LBE31:
	.loc 1 295 0
	add	r1, r1, #1
.LBB32:
	.loc 1 306 0
	str	r4, [sp, #0]
	.loc 1 307 0
	strh	fp, [r3, #-2]	@ movhi
.LVL50:
.L27:
.LBE32:
	.loc 1 295 0
	cmp	r0, #0
	mov	r4, r3
.LVL51:
	add	r3, r3, #4
	bgt	.L28
	ldr	r2, [sp, #20]
.LVL52:
	ldr	r5, [sp, #24]
.LVL53:
	.loc 1 293 0
	rsb	r8, r2, r8
.LVL54:
	.loc 1 292 0
	add	r6, r6, r2
.LVL55:
.L26:
.LBE29:
	.loc 1 311 0
	bic	r3, r6, #-16777216
	bic	r3, r3, #15728640
	cmp	r3, sl
	bne	.L24
	.loc 1 312 0
	ldr	r1, [r7, #316]
	ldr	r0, [sp, #12]
	.loc 1 313 0
	ldr	r3, .L59+4
	.loc 1 312 0
	bic	r1, r1, r0
	.loc 1 313 0
	add	r3, r5, r3
	mov	r2, #1
	.loc 1 312 0
	str	r1, [r7, #316]
	.loc 1 313 0
	strb	r2, [r3, #2]
	b	.L29
.LVL56:
.L24:
.LBE28:
	.loc 1 277 0
	cmp	r8, #0
	bgt	.L30
.L29:
	.loc 1 319 0
	ldr	r3, .L59+8
	mov	r2, r8, asl #1
	str	r2, [r3, r5, asl #2]
	b	.L31
.LVL57:
.L32:
	.loc 1 321 0
	mov	r1, #0	@ movhi
	strh	r1, [r4, #-4]	@ movhi
	.loc 1 322 0
	strh	r1, [r4, #-2]	@ movhi
	.loc 1 320 0
	sub	r8, r8, #1
.LVL58:
.L31:
	cmp	r8, #0
	add	r4, r4, #4
.LVL59:
	bgt	.L32
	.loc 1 326 0
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	.loc 1 325 0
	ldr	r5, [sp, #0]
.LVL60:
	.loc 1 326 0
	str	r6, [r3, r2]
	.loc 1 325 0
	ldr	r3, .L59
	.loc 1 324 0
	strh	fp, [r9, #8]	@ movhi
.LVL61:
	.loc 1 325 0
	rsb	r3, r3, r5
	strh	r3, [r9, #10]	@ movhi
	b	.L56
.LVL62:
.L23:
.LBE33:
	.loc 1 327 0
	ldr	r3, .L59+8
	ldr	r2, [r3, r0, asl #2]
	cmp	r2, #2048
	.loc 1 328 0
	addcc	r2, r2, r8, asl #1
	strcc	r2, [r3, r0, asl #2]
	.loc 1 327 0
	bcc	.L33
	b	.L56
.LVL63:
.L34:
	.loc 1 330 0
	mov	sl, #0	@ movhi
	strh	sl, [r4, #-4]	@ movhi
	.loc 1 331 0
	strh	sl, [r4, #-2]	@ movhi
	.loc 1 329 0
	sub	r8, r8, #1
.LVL64:
.L33:
	cmp	r8, #0
	add	r4, r4, #4
.LVL65:
	bgt	.L34
	b	.L56
.LVL66:
.L21:
.LBE26:
.LBE25:
.LBB34:
.LBB35:
	.loc 1 344 0
	subs	r8, r2, #0
.LVL67:
	.loc 1 340 0
	mov	sl, r7
	.loc 1 344 0
	beq	.L56
	.loc 1 350 0
	ldr	r3, [r7, #316]
	tst	r3, #64
	beq	.L35
.LBB36:
	.loc 1 359 0
	ldr	fp, [r7, #312]
	.loc 1 353 0
	ldr	r0, .L59+12
	.loc 1 359 0
	str	fp, [sp, #8]
	.loc 1 360 0
	ldr	r5, [r7, #308]
.LVL68:
	.loc 1 363 0
	mov	r3, fp
	mla	r3, r8, r3, r5
	.loc 1 353 0
	ldr	r0, [r0, #20]
	.loc 1 352 0
	ldr	r1, [r7, #304]
.LBE36:
	.loc 1 340 0
	add	ip, r7, #292
.LVL69:
.LBB45:
	.loc 1 353 0
	str	r0, [sp, #36]
	.loc 1 365 0
	ldr	r0, .L59+16
	.loc 1 351 0
	ldr	fp, [ip, #4]
	.loc 1 355 0
	ldrsh	r2, [ip, #8]
.LVL70:
	.loc 1 363 0
	mov	r3, r3, lsr #16
	.loc 1 365 0
	ldr	r0, [r0, #3368]
	.loc 1 351 0
	bic	fp, fp, #-16777216
.LVL71:
	.loc 1 352 0
	mov	r1, r1, lsr #31
	.loc 1 363 0
	add	r3, r3, #1
.LVL72:
	.loc 1 357 0
	ldrsh	r6, [ip, #10]
.LVL73:
	.loc 1 358 0
	ldr	r9, [r7, #292]
.LVL74:
.LBB37:
.LBB38:
	.loc 1 383 0
	str	r8, [sp, #20]
.LBE38:
.LBE37:
	.loc 1 365 0
	str	r0, [sp, #0]
	.loc 1 351 0
	bic	fp, fp, #15728640
	.loc 1 352 0
	str	r1, [sp, #32]
	.loc 1 365 0
	str	r2, [sp, #4]
.LBB44:
.LBB42:
	.loc 1 383 0
	str	r7, [sp, #12]
	str	ip, [sp, #16]
	str	r2, [sp, #24]
	mov	r8, r3
.LVL75:
.L47:
.LBE42:
	.loc 1 376 0
	bic	r3, r9, #-16777216
	bic	r3, r3, #15728640
	cmp	r3, fp
	.loc 1 374 0
	str	r8, [sp, #44]
.LVL76:
	.loc 1 376 0
	bhi	.L36
	add	r2, r3, r8
.LVL77:
	cmp	r2, fp
	.loc 1 377 0
	rsbcs	r3, r3, fp
	strcs	r3, [sp, #44]
.LVL78:
.L36:
	.loc 1 382 0
	ldr	r3, [sp, #44]
	cmp	r3, #0
	ble	.L37
.LVL79:
.LBB43:
	.loc 1 383 0
	ldr	ip, [sp, #36]
.LVL80:
	add	r1, sp, #44
.LVL81:
	add	r0, r9, ip
	bl	neoAudioStream
.LVL82:
	.loc 1 388 0
	ldr	r1, [sp, #44]
.LVL83:
	.loc 1 383 0
	str	r0, [sp, #28]
	.loc 1 388 0
	mov	r2, #0
	b	.L38
.L43:
.LBB39:
	.loc 1 389 0
	ldr	r3, [sp, #28]
	ldrb	ip, [r3, r2]	@ zero_extendqisi2
.LVL84:
	.loc 1 391 0
	mov	r3, ip, lsr #4
.LVL85:
	.loc 1 392 0
	ldrsb	r3, [r0, r3]!
.LVL86:
	.loc 1 393 0
	ldrb	sl, [r0, #16]	@ zero_extendqisi2
	.loc 1 392 0
	mul	r0, r3, r6
	.loc 1 393 0
	mul	r3, sl, r6
	.loc 1 392 0
	cmp	r0, #0
	add	r6, r0, #7
.LVL87:
	ldr	sl, [sp, #4]
	movlt	r0, r6
	.loc 1 393 0
	cmp	r3, #0
	add	r6, r3, #63
	movlt	r3, r6
	.loc 1 392 0
	add	r6, sl, r0, asr #3
.LVL88:
	.loc 1 393 0
	ldr	r0, .L59+20
	ldr	sl, .L59+24
	cmp	r6, r0
	movlt	r6, r0
.LVL89:
	mov	r3, r3, asr #6
.LVL90:
	cmp	r6, sl
	movge	r6, sl
.LVL91:
	.loc 1 396 0
	cmp	r3, #24576
	movgt	r3, #24576
	bgt	.L40
	.loc 1 397 0
	cmp	r3, #127
	movlt	r3, #127
.L40:
	.loc 1 400 0
	and	r0, ip, #15
.LVL92:
	.loc 1 401 0
	ldr	ip, .L59+28
.LVL93:
	ldrsb	sl, [ip, r0]!
	.loc 1 398 0
	ldr	r0, [sp, #0]
.LVL94:
	.loc 1 402 0
	ldrb	ip, [ip, #16]	@ zero_extendqisi2
	.loc 1 398 0
	strh	r6, [r0, #0]	@ movhi
	.loc 1 401 0
	mul	r0, sl, r3
	.loc 1 402 0
	mul	r3, ip, r3
	.loc 1 401 0
	cmp	r0, #0
	add	sl, r0, #7
	.loc 1 402 0
	str	r3, [sp, #4]
	.loc 1 401 0
	movlt	r0, sl
	.loc 1 402 0
	ldr	r3, .L59+20
.LVL95:
	ldr	sl, [sp, #4]
	.loc 1 401 0
	add	r0, r6, r0, asr #3
.LVL96:
	.loc 1 402 0
	ldr	ip, .L59+24
	cmp	r0, r3
	movlt	r0, r3
.LVL97:
	mov	r6, sl, asr #6
.LVL98:
	cmp	ip, r0
	movge	ip, r0
	.loc 1 405 0
	cmp	r6, #24576
	.loc 1 402 0
	str	ip, [sp, #4]
	.loc 1 405 0
	movgt	r6, #24576
	bgt	.L42
	.loc 1 406 0
	cmp	r6, #127
	movlt	r6, #127
.L42:
	.loc 1 407 0
	ldr	r3, [sp, #0]
	ldr	r0, [sp, #4]
.LVL99:
.LBE39:
	.loc 1 388 0
	sub	r1, r1, #1
.LVL100:
.LBB40:
	.loc 1 407 0
	strh	r0, [r3, #2]	@ movhi
	.loc 1 483 0
	add	r3, r3, #4
	str	r3, [sp, #0]
.LBE40:
	.loc 1 388 0
	add	r2, r2, #1
.L38:
	cmp	r1, #0
.LBB41:
	.loc 1 392 0
	ldr	r0, .L59+28
.LBE41:
	.loc 1 388 0
	bgt	.L43
	.loc 1 410 0
	ldr	r3, [sp, #44]
	.loc 1 411 0
	rsb	r8, r3, r8
	.loc 1 410 0
	add	r9, r9, r3
.LVL101:
.L37:
.LBE43:
	.loc 1 414 0
	bic	r3, r9, #-16777216
	bic	r3, r3, #15728640
	cmp	r3, fp
	bne	.L44
	.loc 1 416 0
	ldr	sl, [sp, #32]
	cmp	sl, #0
	beq	.L45
	.loc 1 418 0
	ldr	r9, [r7, #304]
.LVL102:
	mov	ip, #0
.LVL103:
	mov	r6, #127
.LVL104:
	bic	r9, r9, #-2147483648
.LVL105:
	str	ip, [sp, #4]
	b	.L44
.LVL106:
.L45:
	.loc 1 424 0
	ldr	r0, [r7, #316]
	.loc 1 425 0
	ldr	r1, .L59+32
.LVL107:
	.loc 1 424 0
	bic	r0, r0, #64
	ldr	sl, [sp, #12]
	ldr	ip, [sp, #16]
	ldr	r2, [sp, #24]
	mov	r3, r8
	ldr	r8, [sp, #20]
.LVL108:
	str	r0, [r7, #316]
	.loc 1 425 0
	mov	r0, #1
	strb	r0, [r1, #-111]
	b	.L46
.LVL109:
.L44:
.LBE44:
	.loc 1 373 0
	cmp	r8, #0
	bgt	.L47
	mov	r3, r8
	ldr	sl, [sp, #12]
	ldr	ip, [sp, #16]
	ldr	r2, [sp, #24]
	ldr	r8, [sp, #20]
.LVL110:
.L46:
	ldr	r1, [sp, #0]
	mov	r0, #0
.LVL111:
	b	.L48
.L49:
	.loc 1 436 0
	mov	fp, #0	@ movhi
.LVL112:
	strh	fp, [r1, #-4]	@ movhi
	.loc 1 437 0
	strh	fp, [r1, #-2]	@ movhi
	.loc 1 435 0
	add	r0, r0, #1
.LVL113:
.L48:
	cmp	r0, r3
	add	r1, r1, #4
	blt	.L49
	.loc 1 442 0
	ldr	r3, .L59+16
.LVL114:
	.loc 1 447 0
	ldr	r0, .L59+36
.LVL115:
	.loc 1 442 0
	ldr	r1, [r3, #3368]
.LVL116:
	ldr	fp, [sp, #8]
.LVL117:
	b	.L50
.LVL118:
.L53:
	.loc 1 447 0
	cmp	r3, r0
	.loc 1 451 0
	movgt	r5, r3, asr #16
	.loc 1 452 0
	movgt	r3, r3, asl #16
	movgt	r3, r3, lsr #16
	.loc 1 450 0
	ldrgth	r2, [r1, #0]
.LVL119:
	.loc 1 451 0
	addgt	r1, r1, r5, asl #1
.LVL120:
	.loc 1 455 0
	add	r5, r3, fp
.LVL121:
	.loc 1 456 0
	cmp	r5, r0
	.loc 1 454 0
	strh	r2, [r4, #0]	@ movhi
	.loc 1 459 0
	ldrgth	r2, [r1, #0]
	.loc 1 460 0
	movgt	r3, r5, asr #16
	.loc 1 461 0
	movgt	r5, r5, asl #16
	.loc 1 463 0
	strh	r2, [r4, #2]	@ movhi
	.loc 1 461 0
	movgt	r5, r5, lsr #16
	.loc 1 460 0
	addgt	r1, r1, r3, asl #1
	.loc 1 445 0
	sub	r8, r8, #1
	.loc 1 483 0
	add	r4, r4, #4
.LVL122:
.L50:
	.loc 1 445 0
	cmp	r8, #0
	.loc 1 446 0
	add	r3, r5, fp
.LVL123:
	.loc 1 445 0
	bgt	.L53
	.loc 1 468 0
	strh	r6, [ip, #10]	@ movhi
	.loc 1 469 0
	str	r9, [sl, #292]
	.loc 1 467 0
	strh	r2, [ip, #8]	@ movhi
	.loc 1 470 0
	str	r5, [r7, #308]
	b	.L56
.LVL124:
.L35:
.LBE45:
	.loc 1 471 0
	ldr	r3, .L59+8
	ldr	r2, [r3, #24]
.LVL125:
	cmp	r2, #2048
.LBB46:
	.loc 1 473 0
	addcc	r2, r2, r8, asl #1
	strcc	r2, [r3, #24]
.LBE46:
	.loc 1 471 0
	bcc	.L54
	b	.L56
.LVL126:
.L55:
.LBB47:
	.loc 1 475 0
	mov	ip, #0	@ movhi
	strh	ip, [r4, #-4]	@ movhi
	.loc 1 476 0
	strh	ip, [r4, #-2]	@ movhi
	.loc 1 474 0
	sub	r8, r8, #1
.LVL127:
.L54:
	cmp	r8, #0
	add	r4, r4, #4
	bgt	.L55
.LVL128:
.L56:
.LBE47:
.LBE35:
.LBE34:
	.loc 1 488 0
	add	sp, sp, #48
	ldmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}
.L60:
	.align	2
.L59:
	.word	g_jediTable
	.word	41940104
	.word	.LANCHOR0
	.word	g_header
	.word	.LANCHOR2
	.word	-32768
	.word	32767
	.word	.LANCHOR3
	.word	41940223
	.word	65535
.LFE172:
	.size	neoAudioStreamAdpcm, .-neoAudioStreamAdpcm
	.align	2
	.global	neoAudioStreamProcess
	.type	neoAudioStreamProcess, %function
neoAudioStreamProcess:
.LFB176:
	.loc 1 656 0
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
.LCFI4:
	.loc 1 661 0
	ldr	r3, .L91
	.loc 1 656 0
	sub	sp, sp, #56
.LCFI5:
	.loc 1 661 0
	ldrb	r3, [r3, #-110]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L85
	mov	r2, #0
	mov	r3, r2
.LVL129:
	.loc 1 666 0
	add	ip, sp, #40
	.loc 1 667 0
	add	r0, sp, #24
.L63:
	.loc 1 666 0
	ldr	r1, .L91+4
	mov	r4, r3, asl #1
	add	r1, r4, r1
	ldrh	r5, [r1, #-251]
	.loc 1 667 0
	ldr	r1, .L91+8
	.loc 1 666 0
	strh	r5, [ip, r2]	@ movhi
	.loc 1 667 0
	add	r1, r4, r1
	ldrh	r1, [r1, #-253]
	.loc 1 665 0
	add	r3, r3, #1
.LVL130:
	cmp	r3, #7
	.loc 1 667 0
	strh	r1, [r0, r2]	@ movhi
	.loc 1 665 0
	add	r2, r2, #2
	bne	.L63
	.loc 1 673 0
	ldr	r2, .L91
	.loc 1 675 0
	ldr	r3, .L91+12
.LVL131:
	.loc 1 673 0
	ldrh	ip, [r2, #-119]
	.loc 1 675 0
	ldr	r2, .L91+16
	ldrh	r8, [r3, r2]
	cmp	r8, ip
.LVL132:
	beq	.L85
	ldr	r3, [r3, #3376]
	mov	r9, ip
	str	r3, [sp, #8]
	mov	sl, r8
	mov	ip, r8
.LVL133:
	b	.L64
.LVL134:
.L73:
	mov	r5, #0
	mov	r6, r5
.LVL135:
	mov	r2, r9
.LVL136:
.L70:
.LBB48:
.LBB50:
	.loc 1 535 0
	add	r3, sp, #40
.LBE50:
.LBE48:
	.loc 1 682 0
	add	r1, sp, #24
.LBB58:
.LBB49:
	.loc 1 535 0
	ldrsh	r9, [r3, r5]
.LVL137:
.LBE49:
.LBE58:
	.loc 1 682 0
	ldrsh	r4, [r1, r5]
.LBB59:
.LBB57:
.LBB51:
	.loc 1 550 0
	ldr	r8, .L91+20
.LBE51:
	.loc 1 538 0
	subs	r9, r9, r4
.LVL138:
.LBB52:
	.loc 1 550 0
	mov	r3, r6, asl #2
.LBE52:
	.loc 1 538 0
	addmi	r9, r9, #32
.LBB53:
	.loc 1 550 0
	add	r8, r3, r8
.LBE53:
	.loc 1 538 0
	mov	fp, #0
.LVL139:
	b	.L66
.L69:
.LBB54:
	.loc 1 550 0
	ldr	r3, [r8, #0]
	mov	r1, #12
.LVL140:
	mla	r1, r4, r1, r3
	.loc 1 551 0
	ldrh	r3, [r1, #8]
.LBE54:
	.loc 1 549 0
	add	fp, fp, #1
.LVL141:
.LBB55:
	.loc 1 551 0
	cmp	r3, sl
	bne	.L67
	.loc 1 558 0
	add	r4, r4, #1
.LVL142:
	.loc 1 556 0
	str	r2, [sp, #4]
.LVL143:
	str	ip, [sp, #0]
	bl	neoAudioCommand
.LVL144:
	.loc 1 559 0
	cmp	r4, #31
	ldr	ip, [sp, #0]
	ldr	r2, [sp, #4]
	movgt	r4, #0
.LVL145:
.L66:
.LBE55:
	.loc 1 549 0
	cmp	fp, r9
.LBB56:
	.loc 1 556 0
	mov	r0, r6
.LBE56:
	.loc 1 549 0
	bcc	.L69
.LVL146:
.L67:
.LBE57:
.LBE59:
	.loc 1 680 0
	add	r6, r6, #1
.LVL147:
	.loc 1 681 0
	add	r1, sp, #24
.LVL148:
	.loc 1 680 0
	cmp	r6, #7
	.loc 1 681 0
	strh	r4, [r1, r5]	@ movhi
	.loc 1 680 0
	add	r5, r5, #2
	bne	.L70
	mov	r9, r2
.LVL149:
	.loc 1 684 0
	ldr	r2, [sp, #8]
.LVL150:
	ldr	sl, [sp, #12]
	cmp	r2, #0
	moveq	r2, #1024
	movne	r2, #0
	str	r2, [sp, #8]
.L64:
	add	r3, sl, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	.loc 1 679 0
	cmp	r3, r9
	.loc 1 684 0
	str	r3, [sp, #12]
	.loc 1 679 0
	bne	.L73
	mov	r8, ip
	add	ip, r8, r9
	ldr	r3, .L91+12
	mvn	r8, r8
	ldr	r2, .L91+16
	ldr	r1, [sp, #8]
	mov	r6, #0
.LVL151:
	add	ip, ip, r8
	str	r1, [r3, #3376]
	strh	ip, [r3, r2]	@ movhi
	mov	r9, r6
.LVL152:
	mov	r5, r6
.LVL153:
.LVL154:
.L81:
	.loc 1 692 0
	add	r3, sp, #24
	ldrsh	r4, [r3, r9]
.LVL155:
.LBB60:
.LBB61:
	.loc 1 572 0
	add	r3, sp, #40
	ldrsh	r3, [r3, r9]
	.loc 1 574 0
	ldr	r2, .L91+12
	.loc 1 576 0
	subs	r3, r3, r4
	str	r3, [sp, #8]
.LBB62:
	.loc 1 588 0
	ldr	r1, .L91+20
.LBE62:
	.loc 1 576 0
	addmi	r3, r3, #32
	.loc 1 574 0
	ldr	ip, [r2, #3376]
	.loc 1 576 0
	strmi	r3, [sp, #8]
.LBB63:
	.loc 1 588 0
	mov	r3, r5, asl #2
.LBE63:
	.loc 1 576 0
	mov	fp, #0
.LVL156:
.LBB64:
	.loc 1 588 0
	add	r1, r3, r1
	str	r9, [sp, #20]
	str	r1, [sp, #12]
	mov	r9, r6
.LBE64:
	.loc 1 576 0
	mov	r8, fp
	mov	r6, r5
	mov	sl, #512
	mov	r5, ip
.LVL157:
	b	.L75
.LVL158:
.L79:
.LBB65:
	.loc 1 588 0
	ldr	r2, [sp, #12]
	.loc 1 589 0
	ldr	ip, .L91+12
	.loc 1 588 0
	ldr	r2, [r2, #0]
	.loc 1 589 0
	ldr	r3, .L91+16
	.loc 1 588 0
	str	r2, [sp, #16]
	.loc 1 589 0
	ldrh	r2, [ip, r3]
	.loc 1 588 0
	ldr	r3, [sp, #16]
	mov	ip, #12
.LVL159:
	mla	ip, r4, ip, r3
	.loc 1 589 0
	ldrh	r3, [ip, #8]
.LBE65:
	.loc 1 587 0
	add	fp, fp, #1
.LVL160:
.LBB66:
	.loc 1 589 0
	cmp	r3, r2
	bne	.L76
	.loc 1 600 0
	ldrh	r2, [ip, #10]
	.loc 1 619 0
	add	r4, r4, #1
.LVL161:
	.loc 1 600 0
	rsb	r8, r8, r2
.LVL162:
	.loc 1 604 0
	movs	r8, r8, lsr #1
.LVL163:
	.loc 1 600 0
	str	r2, [sp, #16]
	.loc 1 604 0
	beq	.L77
	cmp	r8, sl
	movcs	r8, sl
.LVL164:
	.loc 1 612 0
	mov	r2, r8
	str	ip, [sp, #0]
.LVL165:
	bl	neoAudioStreamAdpcm
	.loc 1 613 0
	ldr	ip, [sp, #0]
	.loc 1 614 0
	add	r5, r5, r8, asl #1
	.loc 1 613 0
	rsb	sl, r8, sl
.LVL166:
.L77:
	.loc 1 617 0
	mov	r1, ip
	mov	r0, r6
	bl	neoAudioCommand
.LVL167:
	.loc 1 620 0
	cmp	r4, #31
.LBE66:
	.loc 1 587 0
	ldr	r8, [sp, #16]
.LVL168:
.LBB67:
	.loc 1 620 0
	movgt	r4, #0
.LVL169:
.L75:
.LBE67:
	.loc 1 587 0
	ldr	r3, [sp, #8]
.LBB68:
	.loc 1 612 0
	ldr	ip, .L91+24
	add	r1, r5, r9
.LBE68:
	.loc 1 587 0
	cmp	fp, r3
.LBB69:
	.loc 1 612 0
	add	r1, ip, r1, asl #1
	mov	r0, r6
.LBE69:
	.loc 1 587 0
	bcc	.L79
.LVL170:
.L76:
	.loc 1 626 0
	cmp	sl, #0
	mov	ip, r5
.LVL171:
	mov	r5, r6
.LVL172:
	mov	r6, r9
.LVL173:
	ldr	r9, [sp, #20]
	beq	.L80
	.loc 1 629 0
	ldr	r2, .L91+24
	add	r1, ip, r6
	add	r1, r2, r1, asl #1
	mov	r0, r5
	mov	r2, sl
	bl	neoAudioStreamAdpcm
.LVL174:
.L80:
.LBE61:
.LBE60:
	.loc 1 690 0
	add	r5, r5, #1
	.loc 1 691 0
	add	r3, sp, #24
	.loc 1 690 0
	cmp	r5, #7
	.loc 1 691 0
	strh	r4, [r3, r9]	@ movhi
	.loc 1 690 0
	add	r6, r6, #2048
	add	r9, r9, #2
	bne	.L81
	.loc 1 695 0
	ldr	r3, .L91+12
	.loc 1 697 0
	ldr	r1, .L91+12
	.loc 1 695 0
	ldr	r2, [r3, #3376]
	.loc 1 701 0
	add	ip, sp, #24
.LVL175:
	.loc 1 695 0
	cmp	r2, #0
	addeq	r2, r2, #1024
	.loc 1 696 0
	movne	r2, #0
	str	r2, [r3, #3376]
	.loc 1 697 0
	ldr	r2, .L91+16
	mov	r3, #0
.LVL176:
	ldrh	r0, [r1, r2]
	add	r0, r0, #1
	strh	r0, [r1, r2]	@ movhi
.L84:
	.loc 1 701 0
	mov	r1, r3, asl #1
	ldr	r2, .L91+8
	mov	r0, r3, asl #1
	ldrh	r1, [ip, r1]
	.loc 1 700 0
	add	r3, r3, #1
.LVL177:
	.loc 1 701 0
	add	r2, r0, r2
	.loc 1 700 0
	cmp	r3, #7
	.loc 1 701 0
	strh	r1, [r2, #-253]	@ movhi
	.loc 1 700 0
	bne	.L84
.LVL178:
.L85:
	.loc 1 706 0
	add	sp, sp, #56
	ldmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}
.L92:
	.align	2
.L91:
	.word	41940223
	.word	41940303
	.word	41940319
	.word	.LANCHOR2
	.word	3372
	.word	41940024
	.word	.LANCHOR2+3400
.LFE176:
	.size	neoAudioStreamProcess, .-neoAudioStreamProcess
	.align	2
	.global	neoAudioStreamReset
	.type	neoAudioStreamReset, %function
neoAudioStreamReset:
.LFB167:
	.loc 1 148 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
.LCFI6:
	.loc 1 148 0
	mov	r4, #0
.LVL179:
	ldr	r6, .L97
	ldr	r5, .L97+4
	.loc 1 153 0
	mov	sl, r4
.L94:
	.loc 1 151 0
	ldr	ip, .L97+8
	.loc 1 152 0
	ldr	r0, .L97+12
	.loc 1 153 0
	ldr	r1, .L97+16
	.loc 1 154 0
	ldr	r2, .L97+20
	.loc 1 153 0
	mov	r8, r4, asl #1
	.loc 1 151 0
	mov	fp, r4, asl #2
	.loc 1 155 0
	ldr	r3, .L97+24
	.loc 1 152 0
	orr	lr, r5, #4194304
	.loc 1 151 0
	add	ip, fp, ip
	.loc 1 153 0
	add	r1, r8, r1
	.loc 1 154 0
	add	r2, r8, r2
	.loc 1 152 0
	add	r0, fp, r0
	.loc 1 153 0
	mov	r8, #0
	.loc 1 151 0
	orr	r9, r6, #4194304
	str	r9, [ip, #-251]
	.loc 1 155 0
	add	r3, r4, r3
	.loc 1 152 0
	str	lr, [r0, #-255]
	.loc 1 153 0
	strh	r8, [r1, #-251]	@ movhi
	.loc 1 154 0
	strh	r8, [r2, #-253]	@ movhi
	.loc 1 155 0
	mov	r2, #0
	strb	r2, [r3, #-117]
	.loc 1 156 0
	mov	r0, r6
	mov	r2, #2048
	mov	r1, r8
	bl	memset
	.loc 1 157 0
	mov	r0, r5
	mov	r1, r8
	mov	r2, #384
	bl	memset
	.loc 1 158 0
	ldr	r3, .L97+28
	.loc 1 150 0
	add	r6, r6, #4096
	.loc 1 158 0
	str	sl, [r3, r4, asl #2]
	.loc 1 150 0
	add	r4, r4, #1
.LVL180:
	cmp	r4, #7
	add	r5, r5, #384
	bne	.L94
	.loc 1 160 0
	bl	DC_FlushAll
	.loc 1 162 0
	ldr	r3, .L97+32
	ldr	r2, .L97+36
	.loc 1 163 0
	str	sl, [r3, #3376]
	.loc 1 162 0
	strh	sl, [r3, r2]	@ movhi
	.loc 1 164 0
	ldmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}
.L98:
	.align	2
.L97:
	.word	.LANCHOR2+3400
	.word	.LANCHOR4-664
	.word	41940247
	.word	41940279
	.word	41940303
	.word	41940319
	.word	41940223
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	3372
.LFE167:
	.size	neoAudioStreamReset, .-neoAudioStreamReset
	.align	2
	.global	neoAudioStreamInit
	.type	neoAudioStreamInit, %function
neoAudioStreamInit:
.LFB166:
	.loc 1 98 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
.LCFI7:
	.loc 1 102 0
	bl	neoAudioStreamReset
	.loc 1 104 0
	ldr	r0, .L111
	bl	neoSystemVramHAlloc
	ldr	r1, .L111+4
	.loc 1 107 0
	mov	r3, #0
	.loc 1 104 0
	str	r0, [r1, #3368]
	.loc 1 106 0
	mov	r1, #18432
	str	r1, [r7, #312]
	.loc 1 107 0
	str	r3, [r7, #308]
.LBB70:
	.loc 1 113 0
	ldr	r4, .L111+8
	ldr	lr, .L111+12
	.loc 1 115 0
	ldr	ip, .L111+16
	b	.L100
.LVL181:
.L103:
	.loc 1 113 0
	and	r8, r2, #7
	mov	r8, r8, asl #1
	add	r8, r8, #1
	mul	r0, r6, r8
	add	r8, r0, #7
	cmp	r0, #0
	movlt	r0, r8
	.loc 1 115 0
	mov	r8, r2, asl #1
	ldrsh	r8, [ip, r8]
	.loc 1 114 0
	tst	r2, #8
	.loc 1 115 0
	add	r8, r5, r8
	.loc 1 113 0
	mov	r0, r0, asr #3
	.loc 1 115 0
	mov	r8, r8, asl #2
.LVL182:
	.loc 1 114 0
	rsbne	r0, r0, #0
.LVL183:
.LBE70:
	.loc 1 112 0
	add	r2, r2, #1
.LBB71:
	.loc 1 115 0
	bic	r8, r8, r8, asr #31
.LVL184:
	.loc 1 121 0
	cmp	r8, #3072
	movge	r8, #3072
.LVL185:
	.loc 1 120 0
	mov	r0, r0, asl #4
.LVL186:
.LBE71:
	.loc 1 112 0
	cmp	r2, #16
.LBB72:
	.loc 1 120 0
	strh	r0, [r1, #0]	@ movhi
	.loc 1 121 0
	strh	r8, [r1, #2]	@ movhi
.LBE72:
	.loc 1 112 0
	add	r1, r1, #4
	bne	.L103
	add	r3, r3, #2
	.loc 1 110 0
	cmp	r3, #98
	beq	.L104
.L100:
.LBB73:
	.loc 1 113 0
	ldrsh	r6, [r4, r3]
	mov	r5, r3, asl #3
	add	r1, lr, r3, asl #5
	mov	r2, #0
	b	.L103
.L104:
.LBE73:
	.loc 1 125 0
	ldr	r1, .L111+20
	mov	r2, #256000
.LVL187:
	mov	r0, #4
	bl	neoSystemLoadRegion
	.loc 1 127 0
	ldr	r1, .L111+24
	.loc 1 125 0
	mov	r3, #0
.LVL188:
	.loc 1 127 0
	mvn	r2, #0
.L105:
	strb	r2, [r1, r3]
	.loc 1 126 0
	add	r3, r3, #1
	cmp	r3, #16384
	bne	.L105
	mov	r0, #0
	.loc 1 130 0
	ldr	r4, .L111+28
	.loc 1 134 0
	ldr	ip, .L111+24
	.loc 1 126 0
	mov	r1, #255
	mov	r2, r0
.LVL189:
.L106:
	.loc 1 130 0
	mov	r3, r4
	strh	r2, [r3, r0]!	@ movhi
	.loc 1 134 0
	strb	r2, [ip, r2]
	.loc 1 129 0
	add	r2, r2, #1
	.loc 1 131 0
	add	r6, r1, #2
	.loc 1 129 0
	add	r5, r1, #1
	cmp	r2, #250
	.loc 1 132 0
	strb	r1, [r3, #3]
	.loc 1 131 0
	strb	r6, [r3, #2]
	.loc 1 129 0
	add	r0, r0, #4
	and	r1, r5, #255
	.loc 1 130 0
	ldr	r3, .L111+32
	.loc 1 129 0
	bne	.L106
	.loc 1 142 0
	mvn	r0, #6
	strb	r0, [r3, #1055]
	.loc 1 136 0
	add	r0, r0, #1
	.loc 1 139 0
	mov	r2, #0
.LVL190:
	.loc 1 140 0
	mvn	r1, #0
	.loc 1 136 0
	strb	r0, [r3, #51]
	.loc 1 137 0
	add	r0, r0, #1
	strb	r0, [r3, #1046]
	.loc 1 141 0
	strb	r1, [r3, #1054]
	.loc 1 139 0
	strb	r2, [r3, #1050]
	.loc 1 140 0
	strb	r1, [r3, #1051]
	.loc 1 144 0
	str	r2, [r7, #316]
	.loc 1 145 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L112:
	.align	2
.L111:
	.word	6176
	.word	.LANCHOR2
	.word	.LANCHOR5+32
	.word	g_jediTable
	.word	.LANCHOR5
	.word	.LANCHOR1+1072
	.word	.LANCHOR0+32
	.word	.LANCHOR1+48
	.word	.LANCHOR1
.LFE166:
	.size	neoAudioStreamInit, .-neoAudioStreamInit
	.comm	g_jediTable,3136,32
	.section	.rodata
	.align	2
	.set	.LANCHOR5,. + 0
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
	.bss
	.align	5
	.set	.LANCHOR0,. + 0
	.set	.LANCHOR1,. + 16368
	.set	.LANCHOR2,. + 270072
	.set	.LANCHOR4,. + 302808
	.type	g_zeroFill, %object
	.size	g_zeroFill, 28
g_zeroFill:
	.space	28
	.space	4
	.type	g_adpcmTable, %object
	.size	g_adpcmTable, 16384
g_adpcmTable:
	.space	16384
	.type	g_adpcmEntry, %object
	.size	g_adpcmEntry, 1008
g_adpcmEntry:
	.space	1008
	.space	16
	.type	g_adpcmCache, %object
	.size	g_adpcmCache, 256000
g_adpcmCache:
	.space	256000
	.type	g_adpcmbBuffer, %object
	.size	g_adpcmbBuffer, 4
g_adpcmbBuffer:
	.space	4
	.type	g_audioFrame, %object
	.size	g_audioFrame, 2
g_audioFrame:
	.space	2
	.space	2
	.type	g_buffer, %object
	.size	g_buffer, 4
g_buffer:
	.space	4
	.space	20
	.type	g_adpcmaBuffer, %object
	.size	g_adpcmaBuffer, 28672
g_adpcmaBuffer:
	.space	28672
	.type	g_adpcmControl, %object
	.size	g_adpcmControl, 2688
g_adpcmControl:
	.space	2688
	.section	.dtcm,"a",%progbits
	.align	2
	.set	.LANCHOR3,. + 0
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
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.byte	0x4
	.4byte	.LCFI0-.LFB173
	.byte	0xe
	.uleb128 0x10
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
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.byte	0x4
	.4byte	.LCFI1-.LFB169
	.byte	0xe
	.uleb128 0x20
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0xa
	.sleb128 2
	.byte	0x11
	.uleb128 0x9
	.sleb128 3
	.byte	0x11
	.uleb128 0x8
	.sleb128 4
	.byte	0x11
	.uleb128 0x7
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
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.byte	0x4
	.4byte	.LCFI2-.LFB172
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x50
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
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.byte	0x4
	.4byte	.LCFI4-.LFB176
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x58
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
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.byte	0x4
	.4byte	.LCFI6-.LFB167
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
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.byte	0x4
	.4byte	.LCFI7-.LFB166
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x8
	.sleb128 2
	.byte	0x11
	.uleb128 0x7
	.sleb128 3
	.byte	0x11
	.uleb128 0x6
	.sleb128 4
	.byte	0x11
	.uleb128 0x5
	.sleb128 5
	.byte	0x11
	.uleb128 0x4
	.sleb128 6
	.align	2
.LEFDE10:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB173-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB169-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE169-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE169-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB172-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 80
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL124-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 44
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL118-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 44
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LFB176-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE176-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 88
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL176-.Ltext0
	.4byte	.LFE176-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL178-.Ltext0
	.4byte	.LFE176-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL168-.Ltext0
	.4byte	.LFE176-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL168-.Ltext0
	.4byte	.LFE176-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LFB167-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE167-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LFB166-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE166-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x58
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
	.file 12 "C:/Users/GRX/NeoDS-master-old/arm9/../common/source/NeoIPC.h"
	.file 13 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.section	.debug_info
	.4byte	0x1ac9
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF309
	.byte	0x1
	.4byte	.LASF310
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x29
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2a
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x35
	.4byte	0x50
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x36
	.4byte	0x62
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.4byte	0x74
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0x50
	.4byte	0x86
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x48
	.4byte	0x7b
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x3
	.byte	0x62
	.4byte	0x33
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x3
	.byte	0x63
	.4byte	0x57
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x64
	.4byte	0x7b
	.uleb128 0x5
	.ascii	"s8\000"
	.byte	0x3
	.byte	0x67
	.4byte	0x21
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x3
	.byte	0x68
	.4byte	0x45
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x3
	.byte	0x69
	.4byte	0x69
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0x7d
	.4byte	0x109
	.uleb128 0x7
	.4byte	.LASF16
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF17
	.sleb128 1
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7d
	.4byte	0xf4
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11a
	.uleb128 0x9
	.byte	0x1
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0xb
	.4byte	0xb4
	.4byte	0x136
	.uleb128 0xc
	.4byte	0x11c
	.byte	0x6
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF20
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x28
	.byte	0x4
	.2byte	0x18c
	.4byte	0x1ea
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x18d
	.4byte	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x18e
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x18f
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x190
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x191
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x192
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x193
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x194
	.4byte	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x195
	.4byte	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x196
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x198
	.4byte	0x146
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x8
	.byte	0x5
	.byte	0x29
	.4byte	0x21f
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x5
	.byte	0x2a
	.4byte	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x5
	.byte	0x2b
	.4byte	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x13d
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x5
	.byte	0x2c
	.4byte	0x1f6
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0x9c
	.4byte	0x251
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
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x6
	.byte	0xa1
	.4byte	0x230
	.uleb128 0x13
	.4byte	.LASF41
	.2byte	0x2020
	.byte	0x6
	.2byte	0x11a
	.4byte	0x2e8
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x11b
	.4byte	0x251
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x11e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x121
	.4byte	0x2e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x122
	.4byte	0x225
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x123
	.4byte	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x124
	.4byte	0x2f9
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x125
	.4byte	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x126
	.4byte	0x74
	.byte	0x3
	.byte	0x23
	.uleb128 0x201c
	.byte	0x0
	.uleb128 0xb
	.4byte	0x9b
	.4byte	0x2f9
	.uleb128 0x14
	.4byte	0x11c
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9b
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x128
	.4byte	0x25c
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x8
	.byte	0x4
	.4byte	0x317
	.uleb128 0x15
	.4byte	0xbe
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x59
	.4byte	0x343
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
	.byte	0x7
	.byte	0x62
	.4byte	0x364
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
	.byte	0x7
	.byte	0x6a
	.4byte	0x385
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
	.byte	0x7
	.byte	0x72
	.4byte	0x39a
	.uleb128 0x7
	.4byte	.LASF62
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF63
	.sleb128 1
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0xb0
	.byte	0x8
	.byte	0x15
	.4byte	0x530
	.uleb128 0x16
	.ascii	"d\000"
	.byte	0x8
	.byte	0x16
	.4byte	0x530
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.ascii	"a\000"
	.byte	0x8
	.byte	0x17
	.4byte	0x530
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.ascii	"pc\000"
	.byte	0x8
	.byte	0x18
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x16
	.ascii	"srh\000"
	.byte	0x8
	.byte	0x19
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x8
	.byte	0x1a
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x8
	.byte	0x1b
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x16
	.ascii	"irq\000"
	.byte	0x8
	.byte	0x1c
	.4byte	0x3e
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x16
	.ascii	"osp\000"
	.byte	0x8
	.byte	0x1d
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x16
	.ascii	"xc\000"
	.byte	0x8
	.byte	0x1e
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x8
	.byte	0x1f
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x8
	.byte	0x20
	.4byte	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x8
	.byte	0x21
	.4byte	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x8
	.byte	0x22
	.4byte	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x8
	.byte	0x23
	.4byte	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x8
	.byte	0x24
	.4byte	0x550
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0x8
	.byte	0x25
	.4byte	0x550
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0x8
	.byte	0x26
	.4byte	0x550
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0x8
	.byte	0x27
	.4byte	0x550
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x8
	.byte	0x28
	.4byte	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x8
	.byte	0x29
	.4byte	0x57e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x8
	.byte	0x2a
	.4byte	0x595
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x8
	.byte	0x2b
	.4byte	0x550
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x8
	.byte	0x2c
	.4byte	0x550
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x8
	.byte	0x2d
	.4byte	0x550
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x8
	.byte	0x2e
	.4byte	0x5ab
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x8
	.byte	0x2f
	.4byte	0x114
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x8
	.byte	0x30
	.4byte	0x5b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x8
	.byte	0x31
	.4byte	0x5bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xb
	.4byte	0x86
	.4byte	0x540
	.uleb128 0xc
	.4byte	0x11c
	.byte	0x7
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	0x86
	.4byte	0x550
	.uleb128 0x18
	.4byte	0x86
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x540
	.uleb128 0x19
	.byte	0x1
	.4byte	0x567
	.uleb128 0x18
	.4byte	0x86
	.uleb128 0x18
	.4byte	0x3e
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x556
	.uleb128 0x19
	.byte	0x1
	.4byte	0x57e
	.uleb128 0x18
	.4byte	0x86
	.uleb128 0x18
	.4byte	0x62
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x56d
	.uleb128 0x19
	.byte	0x1
	.4byte	0x595
	.uleb128 0x18
	.4byte	0x86
	.uleb128 0x18
	.4byte	0x86
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x584
	.uleb128 0x17
	.byte	0x1
	.4byte	0x74
	.4byte	0x5ab
	.uleb128 0x18
	.4byte	0x74
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x59b
	.uleb128 0x1a
	.byte	0x1
	.4byte	0x74
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5b1
	.uleb128 0xb
	.4byte	0x86
	.4byte	0x5cd
	.uleb128 0xc
	.4byte	0x11c
	.byte	0x5
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0x9
	.byte	0x6
	.4byte	0x39a
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x9
	.byte	0x8
	.4byte	0x5e3
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e9
	.uleb128 0x17
	.byte	0x1
	.4byte	0xb4
	.4byte	0x5f9
	.uleb128 0x18
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0x9
	.byte	0x9
	.4byte	0x604
	.uleb128 0x8
	.byte	0x4
	.4byte	0x60a
	.uleb128 0x17
	.byte	0x1
	.4byte	0xbe
	.4byte	0x61a
	.uleb128 0x18
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0x9
	.byte	0xa
	.4byte	0x625
	.uleb128 0x8
	.byte	0x4
	.4byte	0x62b
	.uleb128 0x17
	.byte	0x1
	.4byte	0xc9
	.4byte	0x63b
	.uleb128 0x18
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0x9
	.byte	0xc
	.4byte	0x646
	.uleb128 0x8
	.byte	0x4
	.4byte	0x64c
	.uleb128 0x19
	.byte	0x1
	.4byte	0x65d
	.uleb128 0x18
	.4byte	0xc9
	.uleb128 0x18
	.4byte	0xb4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0x9
	.byte	0xd
	.4byte	0x668
	.uleb128 0x8
	.byte	0x4
	.4byte	0x66e
	.uleb128 0x19
	.byte	0x1
	.4byte	0x67f
	.uleb128 0x18
	.4byte	0xc9
	.uleb128 0x18
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF92
	.byte	0x9
	.byte	0xe
	.4byte	0x68a
	.uleb128 0x8
	.byte	0x4
	.4byte	0x690
	.uleb128 0x19
	.byte	0x1
	.4byte	0x6a1
	.uleb128 0x18
	.4byte	0xc9
	.uleb128 0x18
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0x9
	.byte	0x10
	.4byte	0x625
	.uleb128 0x11
	.4byte	.LASF94
	.byte	0xc
	.byte	0xa
	.byte	0x17
	.4byte	0x6f1
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0xa
	.byte	0x18
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.ascii	"end\000"
	.byte	0xa
	.byte	0x19
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.ascii	"acc\000"
	.byte	0xa
	.byte	0x1a
	.4byte	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0xa
	.byte	0x1b
	.4byte	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0xa
	.byte	0x1c
	.4byte	0x6ac
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0xc
	.byte	0xa
	.byte	0x1f
	.4byte	0x733
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0xa
	.byte	0x20
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0xa
	.byte	0x21
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0xa
	.byte	0x22
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0xa
	.byte	0x23
	.4byte	0x6fc
	.uleb128 0x1b
	.4byte	.LASF198
	.byte	0x1
	.byte	0xb
	.byte	0x99
	.4byte	0x787
	.uleb128 0x7
	.4byte	.LASF103
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF104
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF105
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF106
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF107
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF108
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF109
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF110
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF111
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF112
	.sleb128 9
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0x8
	.byte	0xb
	.byte	0xa6
	.4byte	0x7b0
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0xb
	.byte	0xa7
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0xb
	.byte	0xa8
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0xb
	.byte	0xa9
	.4byte	0x787
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0x74
	.byte	0xb
	.byte	0xab
	.4byte	0x854
	.uleb128 0x12
	.4byte	.LASF116
	.byte	0xb
	.byte	0xac
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF117
	.byte	0xb
	.byte	0xad
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF118
	.byte	0xb
	.byte	0xae
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF119
	.byte	0xb
	.byte	0xaf
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF120
	.byte	0xb
	.byte	0xb0
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF121
	.byte	0xb
	.byte	0xb1
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF122
	.byte	0xb
	.byte	0xb2
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0xb
	.byte	0xb3
	.4byte	0x854
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF124
	.byte	0xb
	.byte	0xb4
	.4byte	0x864
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0xb
	.byte	0xb5
	.4byte	0x874
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.byte	0x0
	.uleb128 0xb
	.4byte	0x11f
	.4byte	0x864
	.uleb128 0xc
	.4byte	0x11c
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.4byte	0x7b0
	.4byte	0x874
	.uleb128 0xc
	.4byte	0x11c
	.byte	0x8
	.byte	0x0
	.uleb128 0xb
	.4byte	0xb4
	.4byte	0x883
	.uleb128 0x1c
	.4byte	0x11c
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0xb
	.byte	0xb6
	.4byte	0x7bb
	.uleb128 0x1d
	.2byte	0x248
	.byte	0xb
	.byte	0xc0
	.4byte	0xc7c
	.uleb128 0x16
	.ascii	"cpu\000"
	.byte	0xb
	.byte	0xc1
	.4byte	0x5cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0xb
	.byte	0xc4
	.4byte	0xc7c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x12
	.4byte	.LASF127
	.byte	0xb
	.byte	0xc7
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x12
	.4byte	.LASF128
	.byte	0xb
	.byte	0xc8
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0xb
	.byte	0xcb
	.4byte	0xc8c
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x12
	.4byte	.LASF130
	.byte	0xb
	.byte	0xcc
	.4byte	0x733
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x12
	.4byte	.LASF131
	.byte	0xb
	.byte	0xcd
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x12
	.4byte	.LASF132
	.byte	0xb
	.byte	0xd0
	.4byte	0x31c
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x12
	.4byte	.LASF133
	.byte	0xb
	.byte	0xd1
	.4byte	0x31c
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x12
	.4byte	.LASF134
	.byte	0xb
	.byte	0xd2
	.4byte	0x31c
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x12
	.4byte	.LASF135
	.byte	0xb
	.byte	0xd3
	.4byte	0x31c
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x12
	.4byte	.LASF136
	.byte	0xb
	.byte	0xd4
	.4byte	0x31c
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x12
	.4byte	.LASF137
	.byte	0xb
	.byte	0xd5
	.4byte	0x31c
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x12
	.4byte	.LASF138
	.byte	0xb
	.byte	0xd6
	.4byte	0x30b
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x12
	.4byte	.LASF139
	.byte	0xb
	.byte	0xd7
	.4byte	0x30b
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x12
	.4byte	.LASF140
	.byte	0xb
	.byte	0xd8
	.4byte	0x30b
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x12
	.4byte	.LASF141
	.byte	0xb
	.byte	0xda
	.4byte	0xc9c
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x12
	.4byte	.LASF142
	.byte	0xb
	.byte	0xdd
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x12
	.4byte	.LASF143
	.byte	0xb
	.byte	0xde
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x12
	.4byte	.LASF144
	.byte	0xb
	.byte	0xdf
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x12
	.4byte	.LASF145
	.byte	0xb
	.byte	0xe0
	.4byte	0xcad
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x12
	.4byte	.LASF146
	.byte	0xb
	.byte	0xe1
	.4byte	0xcad
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x12
	.4byte	.LASF147
	.byte	0xb
	.byte	0xe2
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x12
	.4byte	.LASF148
	.byte	0xb
	.byte	0xe5
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x12
	.4byte	.LASF149
	.byte	0xb
	.byte	0xe6
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x12
	.4byte	.LASF150
	.byte	0xb
	.byte	0xe7
	.4byte	0x30b
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x12
	.4byte	.LASF151
	.byte	0xb
	.byte	0xe8
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x12
	.4byte	.LASF152
	.byte	0xb
	.byte	0xea
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x12
	.4byte	.LASF153
	.byte	0xb
	.byte	0xeb
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x12
	.4byte	.LASF154
	.byte	0xb
	.byte	0xec
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x12
	.4byte	.LASF155
	.byte	0xb
	.byte	0xed
	.4byte	0xcb8
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x12
	.4byte	.LASF156
	.byte	0xb
	.byte	0xee
	.4byte	0x30b
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x12
	.4byte	.LASF157
	.byte	0xb
	.byte	0xf1
	.4byte	0xe9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x12
	.4byte	.LASF158
	.byte	0xb
	.byte	0xf2
	.4byte	0xe9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x12
	.4byte	.LASF159
	.byte	0xb
	.byte	0xf3
	.4byte	0xde
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x12
	.4byte	.LASF160
	.byte	0xb
	.byte	0xf4
	.4byte	0xde
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x12
	.4byte	.LASF161
	.byte	0xb
	.byte	0xf7
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x12
	.4byte	.LASF162
	.byte	0xb
	.byte	0xf8
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x12
	.4byte	.LASF163
	.byte	0xb
	.byte	0xf9
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x12
	.4byte	.LASF164
	.byte	0xb
	.byte	0xfa
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x12
	.4byte	.LASF165
	.byte	0xb
	.byte	0xfb
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x12
	.4byte	.LASF166
	.byte	0xb
	.byte	0xfc
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x12
	.4byte	.LASF167
	.byte	0xb
	.byte	0xfd
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xf
	.4byte	.LASF168
	.byte	0xb
	.2byte	0x102
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xf
	.4byte	.LASF119
	.byte	0xb
	.2byte	0x103
	.4byte	0xe9
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xf
	.4byte	.LASF169
	.byte	0xb
	.2byte	0x106
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xf
	.4byte	.LASF170
	.byte	0xb
	.2byte	0x108
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xf
	.4byte	.LASF171
	.byte	0xb
	.2byte	0x109
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xf
	.4byte	.LASF172
	.byte	0xb
	.2byte	0x10a
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xf
	.4byte	.LASF173
	.byte	0xb
	.2byte	0x10b
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xf
	.4byte	.LASF174
	.byte	0xb
	.2byte	0x10d
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xf
	.4byte	.LASF175
	.byte	0xb
	.2byte	0x10e
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xf
	.4byte	.LASF176
	.byte	0xb
	.2byte	0x10f
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xf
	.4byte	.LASF177
	.byte	0xb
	.2byte	0x110
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xf
	.4byte	.LASF178
	.byte	0xb
	.2byte	0x111
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xf
	.4byte	.LASF179
	.byte	0xb
	.2byte	0x114
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xf
	.4byte	.LASF180
	.byte	0xb
	.2byte	0x115
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xf
	.4byte	.LASF181
	.byte	0xb
	.2byte	0x116
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xf
	.4byte	.LASF182
	.byte	0xb
	.2byte	0x117
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xf
	.4byte	.LASF183
	.byte	0xb
	.2byte	0x118
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xf
	.4byte	.LASF184
	.byte	0xb
	.2byte	0x11b
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xf
	.4byte	.LASF185
	.byte	0xb
	.2byte	0x11c
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xf
	.4byte	.LASF186
	.byte	0xb
	.2byte	0x11f
	.4byte	0xcc8
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xf
	.4byte	.LASF187
	.byte	0xb
	.2byte	0x122
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xf
	.4byte	.LASF188
	.byte	0xb
	.2byte	0x123
	.4byte	0xcd8
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xb
	.4byte	0x13d
	.4byte	0xc8c
	.uleb128 0xc
	.4byte	0x11c
	.byte	0x8
	.byte	0x0
	.uleb128 0xb
	.4byte	0x6f1
	.4byte	0xc9c
	.uleb128 0xc
	.4byte	0x11c
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xca2
	.uleb128 0x8
	.byte	0x4
	.4byte	0xca8
	.uleb128 0x15
	.4byte	0xb4
	.uleb128 0x8
	.byte	0x4
	.4byte	0xcb3
	.uleb128 0x15
	.4byte	0xc9
	.uleb128 0xb
	.4byte	0xc9
	.4byte	0xcc8
	.uleb128 0xc
	.4byte	0x11c
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.4byte	0xb4
	.4byte	0xcd8
	.uleb128 0xc
	.4byte	0x11c
	.byte	0x7
	.byte	0x0
	.uleb128 0xb
	.4byte	0xb4
	.4byte	0xce7
	.uleb128 0x1c
	.4byte	0x11c
	.byte	0x0
	.uleb128 0x1e
	.2byte	0x400
	.byte	0xb
	.byte	0xbf
	.4byte	0xd02
	.uleb128 0x1f
	.4byte	0x88e
	.uleb128 0x20
	.4byte	.LASF205
	.byte	0xb
	.2byte	0x125
	.4byte	0xd02
	.byte	0x0
	.uleb128 0xb
	.4byte	0xc9
	.4byte	0xd12
	.uleb128 0xc
	.4byte	0x11c
	.byte	0xff
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF189
	.2byte	0x2000
	.byte	0xb
	.byte	0xbe
	.4byte	0xd98
	.uleb128 0x22
	.4byte	0xce7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF190
	.byte	0xb
	.2byte	0x128
	.4byte	0xd98
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xf
	.4byte	.LASF191
	.byte	0xb
	.2byte	0x129
	.4byte	0xda8
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xf
	.4byte	.LASF192
	.byte	0xb
	.2byte	0x12a
	.4byte	0xdb8
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xf
	.4byte	.LASF193
	.byte	0xb
	.2byte	0x12b
	.4byte	0xdc8
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xf
	.4byte	.LASF194
	.byte	0xb
	.2byte	0x12c
	.4byte	0xdd8
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xf
	.4byte	.LASF195
	.byte	0xb
	.2byte	0x12d
	.4byte	0xde8
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xf
	.4byte	.LASF196
	.byte	0xb
	.2byte	0x12e
	.4byte	0xdf8
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xb
	.4byte	0x5d8
	.4byte	0xda8
	.uleb128 0xc
	.4byte	0x11c
	.byte	0xff
	.byte	0x0
	.uleb128 0xb
	.4byte	0x5f9
	.4byte	0xdb8
	.uleb128 0xc
	.4byte	0x11c
	.byte	0xff
	.byte	0x0
	.uleb128 0xb
	.4byte	0x61a
	.4byte	0xdc8
	.uleb128 0xc
	.4byte	0x11c
	.byte	0xff
	.byte	0x0
	.uleb128 0xb
	.4byte	0x63b
	.4byte	0xdd8
	.uleb128 0xc
	.4byte	0x11c
	.byte	0xff
	.byte	0x0
	.uleb128 0xb
	.4byte	0x65d
	.4byte	0xde8
	.uleb128 0xc
	.4byte	0x11c
	.byte	0xff
	.byte	0x0
	.uleb128 0xb
	.4byte	0x67f
	.4byte	0xdf8
	.uleb128 0xc
	.4byte	0x11c
	.byte	0xff
	.byte	0x0
	.uleb128 0xb
	.4byte	0x6a1
	.4byte	0xe08
	.uleb128 0xc
	.4byte	0x11c
	.byte	0xff
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF197
	.byte	0xb
	.2byte	0x12f
	.4byte	0xd12
	.uleb128 0x1b
	.4byte	.LASF199
	.byte	0x1
	.byte	0xc
	.byte	0x3d
	.4byte	0xe3f
	.uleb128 0x7
	.4byte	.LASF200
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF201
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF202
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF203
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF204
	.sleb128 4
	.byte	0x0
	.uleb128 0x23
	.byte	0x4
	.byte	0xc
	.byte	0x47
	.4byte	0xe69
	.uleb128 0x24
	.4byte	.LASF206
	.byte	0xc
	.byte	0x48
	.4byte	0xc9
	.uleb128 0x24
	.4byte	.LASF207
	.byte	0xc
	.byte	0x49
	.4byte	0xc9
	.uleb128 0x24
	.4byte	.LASF101
	.byte	0xc
	.byte	0x4a
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF208
	.byte	0xc
	.byte	0xc
	.byte	0x45
	.4byte	0xea8
	.uleb128 0x12
	.4byte	.LASF209
	.byte	0xc
	.byte	0x46
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.4byte	0xe3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF210
	.byte	0xc
	.byte	0x4c
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF211
	.byte	0xc
	.byte	0x4d
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF212
	.byte	0xc
	.byte	0x4e
	.4byte	0xe69
	.uleb128 0x11
	.4byte	.LASF213
	.byte	0x98
	.byte	0xc
	.byte	0x50
	.4byte	0xfee
	.uleb128 0x12
	.4byte	.LASF214
	.byte	0xc
	.byte	0x52
	.4byte	0x31c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF215
	.byte	0xc
	.byte	0x53
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF216
	.byte	0xc
	.byte	0x54
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF217
	.byte	0xc
	.byte	0x55
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF218
	.byte	0xc
	.byte	0x56
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF219
	.byte	0xc
	.byte	0x57
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF220
	.byte	0xc
	.byte	0x58
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF221
	.byte	0xc
	.byte	0x59
	.4byte	0xfee
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF222
	.byte	0xc
	.byte	0x5a
	.4byte	0xffe
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.4byte	.LASF223
	.byte	0xc
	.byte	0x5b
	.4byte	0x1014
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF224
	.byte	0xc
	.byte	0x5c
	.4byte	0x1014
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0x12
	.4byte	.LASF225
	.byte	0xc
	.byte	0x5d
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF226
	.byte	0xc
	.byte	0x60
	.4byte	0x1024
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF227
	.byte	0xc
	.byte	0x61
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.4byte	.LASF228
	.byte	0xc
	.byte	0x63
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.4byte	.LASF229
	.byte	0xc
	.byte	0x65
	.4byte	0x126
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0x12
	.4byte	.LASF230
	.byte	0xc
	.byte	0x68
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x91
	.uleb128 0x12
	.4byte	.LASF231
	.byte	0xc
	.byte	0x69
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x92
	.uleb128 0x12
	.4byte	.LASF232
	.byte	0xc
	.byte	0x6a
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x93
	.uleb128 0x12
	.4byte	.LASF233
	.byte	0xc
	.byte	0x6b
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF234
	.byte	0xc
	.byte	0x6c
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x95
	.byte	0x0
	.uleb128 0xb
	.4byte	0x30b
	.4byte	0xffe
	.uleb128 0xc
	.4byte	0x11c
	.byte	0x6
	.byte	0x0
	.uleb128 0xb
	.4byte	0x100e
	.4byte	0x100e
	.uleb128 0xc
	.4byte	0x11c
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xea8
	.uleb128 0xb
	.4byte	0xde
	.4byte	0x1024
	.uleb128 0xc
	.4byte	0x11c
	.byte	0x6
	.byte	0x0
	.uleb128 0xb
	.4byte	0xc9
	.4byte	0x1034
	.uleb128 0xc
	.4byte	0x11c
	.byte	0x3
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF235
	.byte	0x4
	.byte	0x1
	.byte	0x49
	.4byte	0x106b
	.uleb128 0x12
	.4byte	.LASF236
	.byte	0x1
	.byte	0x4a
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF237
	.byte	0x1
	.byte	0x4c
	.4byte	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.4byte	.LASF238
	.byte	0x1
	.byte	0x4d
	.4byte	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF239
	.byte	0x1
	.byte	0x52
	.4byte	0x1034
	.uleb128 0x25
	.4byte	.LASF258
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.byte	0x3
	.4byte	0x10a5
	.uleb128 0x26
	.4byte	.LASF242
	.byte	0x1
	.byte	0xc4
	.4byte	0xcb3
	.uleb128 0x27
	.4byte	.LASF240
	.byte	0x1
	.byte	0xc6
	.4byte	0x10a5
	.uleb128 0x27
	.4byte	.LASF241
	.byte	0x1
	.byte	0xc7
	.4byte	0x10a5
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x106b
	.uleb128 0x28
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x214
	.byte	0x1
	.4byte	0xe9
	.byte	0x1
	.4byte	0x1111
	.uleb128 0x29
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x214
	.4byte	0xc9
	.uleb128 0x2a
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x214
	.4byte	0xe9
	.uleb128 0x2a
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x214
	.4byte	0xe9
	.uleb128 0x2b
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x216
	.4byte	0xe9
	.uleb128 0x2b
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x217
	.4byte	0xe9
	.uleb128 0x2c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x218
	.4byte	0xc9
	.uleb128 0x2d
	.uleb128 0x2b
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x226
	.4byte	0x1111
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1117
	.uleb128 0x15
	.4byte	0xea8
	.uleb128 0x28
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x237
	.byte	0x1
	.4byte	0xe9
	.byte	0x1
	.4byte	0x11b2
	.uleb128 0x29
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x237
	.4byte	0xc9
	.uleb128 0x2a
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x237
	.4byte	0xe9
	.uleb128 0x2a
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x237
	.4byte	0xe9
	.uleb128 0x2b
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x23a
	.4byte	0xc9
	.uleb128 0x2b
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x23b
	.4byte	0xe9
	.uleb128 0x2b
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x23c
	.4byte	0xe9
	.uleb128 0x2b
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x23d
	.4byte	0xc9
	.uleb128 0x2b
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x23e
	.4byte	0xc9
	.uleb128 0x2c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x23f
	.4byte	0xc9
	.uleb128 0x2d
	.uleb128 0x2b
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x24c
	.4byte	0x1111
	.uleb128 0x2b
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x258
	.4byte	0xc9
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x1ea
	.byte	0x1
	.4byte	.LFB173
	.4byte	.LFE173
	.4byte	.LLST0
	.4byte	0x11fb
	.uleb128 0x2f
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x1ea
	.4byte	0xc9
	.4byte	.LLST1
	.uleb128 0x30
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x1111
	.4byte	.LLST2
	.uleb128 0x31
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x11fb
	.4byte	.LLST3
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6f1
	.uleb128 0x32
	.4byte	.LASF311
	.byte	0x1
	.byte	0xd8
	.byte	0x1
	.4byte	0x13d
	.4byte	.LFB169
	.4byte	.LFE169
	.4byte	.LLST4
	.4byte	0x129f
	.uleb128 0x33
	.4byte	.LASF252
	.byte	0x1
	.byte	0xd8
	.4byte	0xcb3
	.4byte	.LLST5
	.uleb128 0x33
	.4byte	.LASF253
	.byte	0x1
	.byte	0xd8
	.4byte	0x129f
	.4byte	.LLST6
	.uleb128 0x34
	.4byte	.LASF255
	.byte	0x1
	.byte	0xda
	.4byte	0xcb3
	.4byte	.LLST7
	.uleb128 0x35
	.4byte	.LASF256
	.byte	0x1
	.byte	0xdc
	.4byte	0xcb3
	.byte	0x1
	.byte	0x55
	.uleb128 0x34
	.4byte	.LASF257
	.byte	0x1
	.byte	0xe3
	.4byte	0xc9
	.4byte	.LLST8
	.uleb128 0x27
	.4byte	.LASF251
	.byte	0x1
	.byte	0xf9
	.4byte	0x12a5
	.uleb128 0x36
	.4byte	0x1076
	.4byte	.LBB10
	.4byte	.LBE10
	.byte	0x1
	.byte	0xf7
	.uleb128 0x37
	.4byte	0x1083
	.uleb128 0x38
	.4byte	.LBB11
	.4byte	.LBE11
	.uleb128 0x39
	.4byte	0x108e
	.4byte	.LLST9
	.uleb128 0x3a
	.4byte	0x1099
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe9
	.uleb128 0x15
	.4byte	0xe9
	.uleb128 0x3b
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x100
	.byte	0x1
	.byte	0x1
	.4byte	0x1372
	.uleb128 0x29
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x100
	.4byte	0xc9
	.uleb128 0x2a
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x100
	.4byte	0x30b
	.uleb128 0x2a
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x100
	.4byte	0xe9
	.uleb128 0x2b
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x102
	.4byte	0x11fb
	.uleb128 0x2b
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x103
	.4byte	0x30b
	.uleb128 0x2c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x104
	.4byte	0xe9
	.uleb128 0x2d
	.uleb128 0x2c
	.ascii	"end\000"
	.byte	0x1
	.2byte	0x10f
	.4byte	0xcb3
	.uleb128 0x2b
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x110
	.4byte	0xca2
	.uleb128 0x2c
	.ascii	"acc\000"
	.byte	0x1
	.2byte	0x111
	.4byte	0xe9
	.uleb128 0x2b
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x112
	.4byte	0xc9
	.uleb128 0x2b
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x113
	.4byte	0xca2
	.uleb128 0x2d
	.uleb128 0x2b
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x116
	.4byte	0xe9
	.uleb128 0x2d
	.uleb128 0x2b
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x11f
	.4byte	0xca2
	.uleb128 0x2b
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x120
	.4byte	0xe9
	.uleb128 0x2d
	.uleb128 0x2b
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x128
	.4byte	0xcb3
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x152
	.byte	0x1
	.byte	0x1
	.4byte	0x14b7
	.uleb128 0x2a
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x152
	.4byte	0x30b
	.uleb128 0x2a
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x152
	.4byte	0x12a5
	.uleb128 0x2b
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x154
	.4byte	0x11fb
	.uleb128 0x2c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x155
	.4byte	0xe9
	.uleb128 0x3c
	.4byte	0x14a8
	.uleb128 0x2c
	.ascii	"end\000"
	.byte	0x1
	.2byte	0x15f
	.4byte	0xcb3
	.uleb128 0x2b
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x160
	.4byte	0xcb3
	.uleb128 0x2b
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x161
	.4byte	0x12a5
	.uleb128 0x2b
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x163
	.4byte	0x12a5
	.uleb128 0x2c
	.ascii	"acc\000"
	.byte	0x1
	.2byte	0x164
	.4byte	0xe9
	.uleb128 0x2b
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x165
	.4byte	0xe9
	.uleb128 0x2b
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x166
	.4byte	0xe9
	.uleb128 0x2b
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x167
	.4byte	0x12a5
	.uleb128 0x2b
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x168
	.4byte	0xe9
	.uleb128 0x2b
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x16a
	.4byte	0x12a5
	.uleb128 0x2b
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x16c
	.4byte	0xe9
	.uleb128 0x2b
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x16d
	.4byte	0x30b
	.uleb128 0x2b
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x1b9
	.4byte	0xcb3
	.uleb128 0x2b
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x311
	.uleb128 0x2b
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x30b
	.uleb128 0x2d
	.uleb128 0x2b
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x176
	.4byte	0xe9
	.uleb128 0x2d
	.uleb128 0x2b
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x17f
	.4byte	0xca2
	.uleb128 0x2d
	.uleb128 0x2b
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x185
	.4byte	0xcb3
	.uleb128 0x2c
	.ascii	"d0\000"
	.byte	0x1
	.2byte	0x187
	.4byte	0xcb3
	.uleb128 0x2c
	.ascii	"d1\000"
	.byte	0x1
	.2byte	0x190
	.4byte	0xcb3
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x2b
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x30b
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x1e3
	.byte	0x1
	.4byte	.LFB172
	.4byte	.LFE172
	.4byte	.LLST10
	.4byte	0x16a8
	.uleb128 0x2f
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x1e3
	.4byte	0xc9
	.4byte	.LLST11
	.uleb128 0x30
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x30b
	.4byte	.LLST12
	.uleb128 0x30
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x1e3
	.4byte	0xc9
	.4byte	.LLST13
	.uleb128 0x3d
	.4byte	0x12aa
	.4byte	.LBB25
	.4byte	.LBE25
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x15ac
	.uleb128 0x37
	.4byte	0x12cf
	.uleb128 0x37
	.4byte	0x12c3
	.uleb128 0x37
	.4byte	0x12b8
	.uleb128 0x38
	.4byte	.LBB26
	.4byte	.LBE26
	.uleb128 0x39
	.4byte	0x12db
	.4byte	.LLST14
	.uleb128 0x3a
	.4byte	0x12e7
	.uleb128 0x39
	.4byte	0x12f3
	.4byte	.LLST15
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x39
	.4byte	0x12fe
	.4byte	.LLST16
	.uleb128 0x3a
	.4byte	0x130a
	.uleb128 0x39
	.4byte	0x1316
	.4byte	.LLST17
	.uleb128 0x39
	.4byte	0x1322
	.4byte	.LLST18
	.uleb128 0x3f
	.4byte	0x132e
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x38
	.4byte	.LBB28
	.4byte	.LBE28
	.uleb128 0x39
	.4byte	0x133b
	.4byte	.LLST19
	.uleb128 0x38
	.4byte	.LBB29
	.4byte	.LBE29
	.uleb128 0x3a
	.4byte	0x1348
	.uleb128 0x39
	.4byte	0x1354
	.4byte	.LLST20
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x39
	.4byte	0x1361
	.4byte	.LLST21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.4byte	0x1372
	.4byte	.LBB34
	.4byte	.LBE34
	.byte	0x1
	.2byte	0x1e7
	.uleb128 0x37
	.4byte	0x138c
	.uleb128 0x37
	.4byte	0x1380
	.uleb128 0x38
	.4byte	.LBB35
	.4byte	.LBE35
	.uleb128 0x39
	.4byte	0x1398
	.4byte	.LLST22
	.uleb128 0x39
	.4byte	0x13a4
	.4byte	.LLST23
	.uleb128 0x41
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0x169a
	.uleb128 0x39
	.4byte	0x13b3
	.4byte	.LLST24
	.uleb128 0x3f
	.4byte	0x13bf
	.byte	0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x3f
	.4byte	0x13cb
	.byte	0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x3a
	.4byte	0x13d7
	.uleb128 0x39
	.4byte	0x13e3
	.4byte	.LLST25
	.uleb128 0x39
	.4byte	0x13ef
	.4byte	.LLST26
	.uleb128 0x39
	.4byte	0x13fb
	.4byte	.LLST27
	.uleb128 0x39
	.4byte	0x1407
	.4byte	.LLST28
	.uleb128 0x39
	.4byte	0x1413
	.4byte	.LLST29
	.uleb128 0x3a
	.4byte	0x141f
	.uleb128 0x39
	.4byte	0x142b
	.4byte	.LLST30
	.uleb128 0x3f
	.4byte	0x1437
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x39
	.4byte	0x144f
	.4byte	.LLST31
	.uleb128 0x3a
	.4byte	0x145b
	.uleb128 0x3a
	.4byte	0x1443
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x50
	.uleb128 0x39
	.4byte	0x1468
	.4byte	.LLST32
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x68
	.uleb128 0x3a
	.4byte	0x1475
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x88
	.uleb128 0x39
	.4byte	0x1482
	.4byte	.LLST33
	.uleb128 0x39
	.4byte	0x148e
	.4byte	.LLST34
	.uleb128 0x39
	.4byte	0x1499
	.4byte	.LLST35
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0xa8
	.uleb128 0x3a
	.4byte	0x14a9
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x28f
	.4byte	.LFB176
	.4byte	.LFE176
	.4byte	.LLST36
	.4byte	0x17c2
	.uleb128 0x43
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x291
	.4byte	0x1014
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x43
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x292
	.4byte	0x1014
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x44
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x293
	.4byte	0xc9
	.4byte	.LLST37
	.uleb128 0x31
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x2a1
	.4byte	0x317
	.4byte	.LLST38
	.uleb128 0x45
	.4byte	0x10ab
	.4byte	.LBB48
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.2byte	0x2aa
	.4byte	0x1752
	.uleb128 0x37
	.4byte	0x10d4
	.uleb128 0x37
	.4byte	0x10c8
	.uleb128 0x37
	.4byte	0x10bd
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0xe0
	.uleb128 0x39
	.4byte	0x10e0
	.4byte	.LLST39
	.uleb128 0x39
	.4byte	0x10ec
	.4byte	.LLST40
	.uleb128 0x39
	.4byte	0x10f8
	.4byte	.LLST41
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x100
	.uleb128 0x39
	.4byte	0x1103
	.4byte	.LLST42
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.4byte	0x111c
	.4byte	.LBB60
	.4byte	.LBE60
	.byte	0x1
	.2byte	0x2b4
	.uleb128 0x37
	.4byte	0x1145
	.uleb128 0x37
	.4byte	0x1139
	.uleb128 0x37
	.4byte	0x112e
	.uleb128 0x38
	.4byte	.LBB61
	.4byte	.LBE61
	.uleb128 0x39
	.4byte	0x1151
	.4byte	.LLST43
	.uleb128 0x3f
	.4byte	0x115d
	.byte	0x1
	.byte	0x54
	.uleb128 0x3f
	.4byte	0x1169
	.byte	0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x39
	.4byte	0x1175
	.4byte	.LLST44
	.uleb128 0x39
	.4byte	0x1181
	.4byte	.LLST45
	.uleb128 0x3f
	.4byte	0x118d
	.byte	0x1
	.byte	0x5b
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x138
	.uleb128 0x39
	.4byte	0x1198
	.4byte	.LLST46
	.uleb128 0x3a
	.4byte	0x11a4
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x46
	.byte	0x1
	.4byte	.LASF281
	.byte	0x1
	.byte	0x93
	.4byte	.LFB167
	.4byte	.LFE167
	.4byte	.LLST47
	.4byte	0x17e6
	.uleb128 0x47
	.ascii	"i\000"
	.byte	0x1
	.byte	0x95
	.4byte	0xc9
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x46
	.byte	0x1
	.4byte	.LASF282
	.byte	0x1
	.byte	0x61
	.4byte	.LFB166
	.4byte	.LFE166
	.4byte	.LLST48
	.4byte	0x1855
	.uleb128 0x27
	.4byte	.LASF96
	.byte	0x1
	.byte	0x63
	.4byte	0xe9
	.uleb128 0x48
	.ascii	"nib\000"
	.byte	0x1
	.byte	0x63
	.4byte	0xe9
	.4byte	.LLST49
	.uleb128 0x48
	.ascii	"i\000"
	.byte	0x1
	.byte	0x64
	.4byte	0xc9
	.4byte	.LLST50
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x180
	.uleb128 0x27
	.4byte	.LASF283
	.byte	0x1
	.byte	0x71
	.4byte	0x12a5
	.uleb128 0x34
	.4byte	.LASF284
	.byte	0x1
	.byte	0x72
	.4byte	0x12a5
	.4byte	.LLST51
	.uleb128 0x34
	.4byte	.LASF285
	.byte	0x1
	.byte	0x73
	.4byte	0xe9
	.4byte	.LLST52
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF286
	.byte	0x6
	.2byte	0x12e
	.4byte	0x1861
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2ff
	.uleb128 0xb
	.4byte	0xea8
	.4byte	0x187d
	.uleb128 0xc
	.4byte	0x11c
	.byte	0x6
	.uleb128 0xc
	.4byte	0x11c
	.byte	0x1f
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF287
	.byte	0x1
	.byte	0xb
	.4byte	0x1867
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmControl
	.uleb128 0xb
	.4byte	0xbe
	.4byte	0x18a5
	.uleb128 0xc
	.4byte	0x11c
	.byte	0x6
	.uleb128 0x14
	.4byte	0x11c
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF288
	.byte	0x1
	.byte	0xf
	.4byte	0x188e
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmaBuffer
	.uleb128 0x35
	.4byte	.LASF289
	.byte	0x1
	.byte	0x10
	.4byte	0x30b
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmbBuffer
	.uleb128 0x35
	.4byte	.LASF290
	.byte	0x1
	.byte	0x11
	.4byte	0xbe
	.byte	0x5
	.byte	0x3
	.4byte	g_audioFrame
	.uleb128 0x35
	.4byte	.LASF291
	.byte	0x1
	.byte	0x12
	.4byte	0xc9
	.byte	0x5
	.byte	0x3
	.4byte	g_buffer
	.uleb128 0xb
	.4byte	0xc9
	.4byte	0x18f9
	.uleb128 0xc
	.4byte	0x11c
	.byte	0x6
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF292
	.byte	0x1
	.byte	0x13
	.4byte	0x18e9
	.byte	0x5
	.byte	0x3
	.4byte	g_zeroFill
	.uleb128 0xb
	.4byte	0xde
	.4byte	0x191a
	.uleb128 0xc
	.4byte	0x11c
	.byte	0x30
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF293
	.byte	0x1
	.byte	0x1c
	.4byte	0x192b
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmSteps
	.uleb128 0x15
	.4byte	0x190a
	.uleb128 0xb
	.4byte	0xde
	.4byte	0x1940
	.uleb128 0xc
	.4byte	0x11c
	.byte	0xf
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF294
	.byte	0x1
	.byte	0x27
	.4byte	0x1951
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmStepInc
	.uleb128 0x15
	.4byte	0x1930
	.uleb128 0xb
	.4byte	0xd4
	.4byte	0x1966
	.uleb128 0xc
	.4byte	0x11c
	.byte	0xf
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF295
	.byte	0x1
	.byte	0x2d
	.4byte	0x1977
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmbTable1
	.uleb128 0x15
	.4byte	0x1956
	.uleb128 0xb
	.4byte	0xb4
	.4byte	0x198c
	.uleb128 0xc
	.4byte	0x11c
	.byte	0xf
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF296
	.byte	0x1
	.byte	0x32
	.4byte	0x199d
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmbTable2
	.uleb128 0x15
	.4byte	0x197c
	.uleb128 0xb
	.4byte	0xb4
	.4byte	0x19b3
	.uleb128 0x14
	.4byte	0x11c
	.2byte	0x3fff
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF297
	.byte	0x1
	.byte	0x55
	.4byte	0x19a2
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmTable
	.uleb128 0xb
	.4byte	0xb4
	.4byte	0x19d7
	.uleb128 0x49
	.4byte	0x11c
	.4byte	0x3e7ff
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF298
	.byte	0x1
	.byte	0x5b
	.4byte	0x19c4
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmCache
	.uleb128 0xb
	.4byte	0x106b
	.4byte	0x19f8
	.uleb128 0xc
	.4byte	0x11c
	.byte	0xfb
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF299
	.byte	0x1
	.byte	0x5c
	.4byte	0x19e8
	.byte	0x5
	.byte	0x3
	.4byte	g_adpcmEntry
	.uleb128 0x4a
	.4byte	.LASF300
	.byte	0xd
	.byte	0x56
	.4byte	0xbe
	.byte	0x1
	.byte	0x1
	.uleb128 0x4a
	.4byte	.LASF301
	.byte	0xd
	.byte	0x57
	.4byte	0xbe
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0x1a33
	.4byte	0x1a33
	.uleb128 0xc
	.4byte	0x11c
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1a39
	.uleb128 0x4b
	.4byte	0x62
	.uleb128 0x4c
	.4byte	.LASF302
	.byte	0x4
	.2byte	0x19c
	.4byte	0x1a23
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0x1ea
	.4byte	0x1a5c
	.uleb128 0xc
	.4byte	0x11c
	.byte	0x7
	.byte	0x0
	.uleb128 0x4c
	.4byte	.LASF303
	.byte	0x4
	.2byte	0x19f
	.4byte	0x1a4c
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.4byte	.LASF304
	.byte	0x6
	.2byte	0x12b
	.4byte	0x2ff
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.4byte	.LASF305
	.byte	0xb
	.2byte	0x149
	.4byte	0x1a87
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe08
	.uleb128 0x4c
	.4byte	.LASF306
	.byte	0xb
	.2byte	0x14d
	.4byte	0xe08
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.4byte	.LASF307
	.byte	0xb
	.2byte	0x14e
	.4byte	0x883
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0xde
	.4byte	0x1aba
	.uleb128 0x14
	.4byte	0x11c
	.2byte	0x61f
	.byte	0x0
	.uleb128 0x4e
	.4byte	.LASF308
	.byte	0x1
	.byte	0x39
	.4byte	0x1aa9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	g_jediTable
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x17
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
	.uleb128 0x24
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
	.uleb128 0x27
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x6
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
	.uleb128 0x33
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x4a
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
	.uleb128 0x4b
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.4byte	0x1acd
	.4byte	0x16a8
	.ascii	"neoAudioStreamProcess\000"
	.4byte	0x17c2
	.ascii	"neoAudioStreamReset\000"
	.4byte	0x17e6
	.ascii	"neoAudioStreamInit\000"
	.4byte	0x1a78
	.ascii	"g_neo\000"
	.4byte	0x1aba
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
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB59-.Ltext0
	.4byte	.LBE59-.Ltext0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	.LBB57-.Ltext0
	.4byte	.LBE57-.Ltext0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	.LBB56-.Ltext0
	.4byte	.LBE56-.Ltext0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	.LBB53-.Ltext0
	.4byte	.LBE53-.Ltext0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB62-.Ltext0
	.4byte	.LBE62-.Ltext0
	.4byte	.LBB69-.Ltext0
	.4byte	.LBE69-.Ltext0
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	.LBB67-.Ltext0
	.4byte	.LBE67-.Ltext0
	.4byte	.LBB66-.Ltext0
	.4byte	.LBE66-.Ltext0
	.4byte	.LBB65-.Ltext0
	.4byte	.LBE65-.Ltext0
	.4byte	.LBB64-.Ltext0
	.4byte	.LBE64-.Ltext0
	.4byte	.LBB63-.Ltext0
	.4byte	.LBE63-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB70-.Ltext0
	.4byte	.LBE70-.Ltext0
	.4byte	.LBB73-.Ltext0
	.4byte	.LBE73-.Ltext0
	.4byte	.LBB72-.Ltext0
	.4byte	.LBE72-.Ltext0
	.4byte	.LBB71-.Ltext0
	.4byte	.LBE71-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF43:
	.ascii	"clearColor\000"
.LASF230:
	.ascii	"globalAudioEnabled\000"
.LASF148:
	.ascii	"scanline\000"
.LASF72:
	.ascii	"checkpc\000"
.LASF0:
	.ascii	"int8_t\000"
.LASF76:
	.ascii	"write8\000"
.LASF240:
	.ascii	"pEntry\000"
.LASF174:
	.ascii	"ctrl1Reg\000"
.LASF154:
	.ascii	"spriteMask\000"
.LASF176:
	.ascii	"ctrl3Reg\000"
.LASF239:
	.ascii	"TADPCMCacheEntry\000"
.LASF81:
	.ascii	"fetch32\000"
.LASF244:
	.ascii	"commandCount\000"
.LASF210:
	.ascii	"audioFrame\000"
.LASF255:
	.ascii	"entryIndex\000"
.LASF162:
	.ascii	"cpuClocksPerScanline\000"
.LASF61:
	.ascii	"OBJSIZE_64\000"
.LASF8:
	.ascii	"int32_t\000"
.LASF195:
	.ascii	"cpuWrite32Table\000"
.LASF194:
	.ascii	"cpuWrite16Table\000"
.LASF13:
	.ascii	"uint32\000"
.LASF70:
	.ascii	"cycles\000"
.LASF38:
	.ascii	"GL_MODELVIEW\000"
.LASF289:
	.ascii	"g_adpcmbBuffer\000"
.LASF261:
	.ascii	"baseStreamSize\000"
.LASF39:
	.ascii	"GL_TEXTURE\000"
.LASF183:
	.ascii	"paletteRamLatch\000"
.LASF281:
	.ascii	"neoAudioStreamReset\000"
.LASF30:
	.ascii	"type\000"
.LASF188:
	.ascii	"varEnd\000"
.LASF202:
	.ascii	"NEOADPCM_START\000"
.LASF90:
	.ascii	"TWrite8Func\000"
.LASF73:
	.ascii	"read8\000"
.LASF234:
	.ascii	"misc\000"
.LASF285:
	.ascii	"newStep\000"
.LASF62:
	.ascii	"OBJCOLOR_16\000"
.LASF77:
	.ascii	"write16\000"
.LASF219:
	.ascii	"arm7FifoSent\000"
.LASF102:
	.ascii	"TNeoADPCMBStream\000"
.LASF87:
	.ascii	"TRead8Func\000"
.LASF49:
	.ascii	"nameCount\000"
.LASF305:
	.ascii	"g_neo\000"
.LASF294:
	.ascii	"g_adpcmStepInc\000"
.LASF192:
	.ascii	"cpuRead32Table\000"
.LASF40:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF122:
	.ascii	"sectionCount\000"
.LASF20:
	.ascii	"long int\000"
.LASF266:
	.ascii	"pSrc\000"
.LASF121:
	.ascii	"audio2Offset\000"
.LASF79:
	.ascii	"fetch8\000"
.LASF262:
	.ascii	"pDst\000"
.LASF186:
	.ascii	"keyGrid\000"
.LASF307:
	.ascii	"g_header\000"
.LASF235:
	.ascii	"_TADPCMCacheEntry\000"
.LASF256:
	.ascii	"entryOffset\000"
.LASF78:
	.ascii	"write32\000"
.LASF51:
	.ascii	"OBJMODE_BLENDED\000"
.LASF189:
	.ascii	"_TNeoContext\000"
.LASF82:
	.ascii	"IrqCallback\000"
.LASF93:
	.ascii	"TCheckPcFunc\000"
.LASF2:
	.ascii	"signed char\000"
.LASF1:
	.ascii	"uint8_t\000"
.LASF167:
	.ascii	"romBankAddress\000"
.LASF96:
	.ascii	"step\000"
.LASF131:
	.ascii	"adpcmActive\000"
.LASF109:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF193:
	.ascii	"cpuWrite8Table\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF159:
	.ascii	"tileScaleX\000"
.LASF160:
	.ascii	"tileScaleY\000"
.LASF214:
	.ascii	"pAudioProgram0\000"
.LASF164:
	.ascii	"watchdogCounter\000"
.LASF111:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF151:
	.ascii	"vramBaseMask\000"
.LASF127:
	.ascii	"spriteCount\000"
.LASF84:
	.ascii	"UnrecognizedCallback\000"
.LASF141:
	.ascii	"bankTable\000"
.LASF250:
	.ascii	"bufferPos\000"
.LASF19:
	.ascii	"char\000"
.LASF32:
	.ascii	"BgState\000"
.LASF268:
	.ascii	"neoAudioStreamAdpcmb\000"
.LASF254:
	.ascii	"pAdpcm\000"
.LASF65:
	.ascii	"unused\000"
.LASF274:
	.ascii	"pStreamDst\000"
.LASF180:
	.ascii	"screenDarkLatch\000"
.LASF264:
	.ascii	"pJedi\000"
.LASF67:
	.ascii	"prev_pc\000"
.LASF98:
	.ascii	"_TNeoADPCMBStream\000"
.LASF302:
	.ascii	"bgControl\000"
.LASF311:
	.ascii	"neoAudioStream\000"
.LASF267:
	.ascii	"jedi\000"
.LASF242:
	.ascii	"cacheIndex\000"
.LASF104:
	.ascii	"NEOROM_BIOS\000"
.LASF272:
	.ascii	"totalBytesRead\000"
.LASF66:
	.ascii	"flags\000"
.LASF153:
	.ascii	"autoAnimationCounter\000"
.LASF44:
	.ascii	"textures\000"
.LASF258:
	.ascii	"markEntryAsUsed\000"
.LASF91:
	.ascii	"TWrite16Func\000"
.LASF304:
	.ascii	"glGlobalData\000"
.LASF37:
	.ascii	"GL_POSITION\000"
.LASF161:
	.ascii	"cpuClockDivide\000"
.LASF216:
	.ascii	"audioRomSize\000"
.LASF190:
	.ascii	"cpuRead8Table\000"
.LASF287:
	.ascii	"g_adpcmControl\000"
.LASF149:
	.ascii	"frameCount\000"
.LASF114:
	.ascii	"TNeoRomEntry\000"
.LASF223:
	.ascii	"adpcmQueuePos7\000"
.LASF224:
	.ascii	"adpcmQueuePos9\000"
.LASF295:
	.ascii	"g_adpcmbTable1\000"
.LASF205:
	.ascii	"fill\000"
.LASF57:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF16:
	.ascii	"false\000"
.LASF293:
	.ascii	"g_adpcmSteps\000"
.LASF203:
	.ascii	"NEOADPCM_ENDADDR\000"
.LASF260:
	.ascii	"pBuffer\000"
.LASF88:
	.ascii	"TRead16Func\000"
.LASF124:
	.ascii	"romEntry\000"
.LASF52:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF213:
	.ascii	"_TNeoIPC\000"
.LASF231:
	.ascii	"audioCommand\000"
.LASF220:
	.ascii	"arm7FifoProcessed\000"
.LASF204:
	.ascii	"NEOADPCM_FREQUENCY\000"
.LASF236:
	.ascii	"index\000"
.LASF135:
	.ascii	"pRam\000"
.LASF33:
	.ascii	"DynamicArray\000"
.LASF310:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/NeoAudioS"
	.ascii	"tream.arm.c\000"
.LASF233:
	.ascii	"audioCommandPending\000"
.LASF21:
	.ascii	"long unsigned int\000"
.LASF108:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF50:
	.ascii	"OBJMODE_NORMAL\000"
.LASF226:
	.ascii	"arm9Args\000"
.LASF288:
	.ascii	"g_adpcmaBuffer\000"
.LASF55:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF191:
	.ascii	"cpuRead16Table\000"
.LASF172:
	.ascii	"displayControlMask\000"
.LASF86:
	.ascii	"TCycloneContext\000"
.LASF105:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF184:
	.ascii	"active\000"
.LASF156:
	.ascii	"pTileBuffer\000"
.LASF64:
	.ascii	"Cyclone\000"
.LASF134:
	.ascii	"pBios\000"
.LASF291:
	.ascii	"g_buffer\000"
.LASF22:
	.ascii	"angle\000"
.LASF179:
	.ascii	"irqVectorLatch\000"
.LASF155:
	.ascii	"paletteDirty\000"
.LASF42:
	.ascii	"matrixMode\000"
.LASF196:
	.ascii	"cpuCheckPcTable\000"
.LASF232:
	.ascii	"audioResult\000"
.LASF47:
	.ascii	"nextBlock\000"
.LASF282:
	.ascii	"neoAudioStreamInit\000"
.LASF147:
	.ascii	"smaRand\000"
.LASF94:
	.ascii	"_TNeoADPCMStream\000"
.LASF92:
	.ascii	"TWrite32Func\000"
.LASF309:
	.ascii	"GNU C 4.4.3\000"
.LASF11:
	.ascii	"long long int\000"
.LASF36:
	.ascii	"GL_PROJECTION\000"
.LASF225:
	.ascii	"arm7Alive\000"
.LASF277:
	.ascii	"neoAudioCommand\000"
.LASF178:
	.ascii	"coinReg\000"
.LASF112:
	.ascii	"NEOROM_COUNT\000"
.LASF99:
	.ascii	"initOffset\000"
.LASF303:
	.ascii	"bgState\000"
.LASF27:
	.ascii	"scrollX\000"
.LASF28:
	.ascii	"scrollY\000"
.LASF175:
	.ascii	"ctrl2Reg\000"
.LASF15:
	.ascii	"double\000"
.LASF85:
	.ascii	"internal\000"
.LASF177:
	.ascii	"ctrl4Reg\000"
.LASF275:
	.ascii	"mask\000"
.LASF142:
	.ascii	"smaAddr0\000"
.LASF143:
	.ascii	"smaAddr1\000"
.LASF152:
	.ascii	"displayCounter\000"
.LASF101:
	.ascii	"frequency\000"
.LASF14:
	.ascii	"float\000"
.LASF278:
	.ascii	"neoAudioStreamAdpcm\000"
.LASF137:
	.ascii	"pCard\000"
.LASF252:
	.ascii	"addr\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF56:
	.ascii	"OBJSHAPE_TALL\000"
.LASF298:
	.ascii	"g_adpcmCache\000"
.LASF201:
	.ascii	"NEOADPCM_STOP\000"
.LASF217:
	.ascii	"arm9FifoSent\000"
.LASF171:
	.ascii	"displayControl\000"
.LASF286:
	.ascii	"glGlob\000"
.LASF299:
	.ascii	"g_adpcmEntry\000"
.LASF218:
	.ascii	"arm9FifoProcessed\000"
.LASF150:
	.ascii	"pVramBase\000"
.LASF118:
	.ascii	"protection\000"
.LASF63:
	.ascii	"OBJCOLOR_256\000"
.LASF95:
	.ascii	"offset\000"
.LASF106:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF132:
	.ascii	"pRom0\000"
.LASF133:
	.ascii	"pRom1\000"
.LASF157:
	.ascii	"tileOffsetX\000"
.LASF158:
	.ascii	"tileOffsetY\000"
.LASF207:
	.ascii	"endAddr\000"
.LASF18:
	.ascii	"bool\000"
.LASF103:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF46:
	.ascii	"activeTexture\000"
.LASF169:
	.ascii	"vramOffset\000"
.LASF237:
	.ascii	"next\000"
.LASF74:
	.ascii	"read16\000"
.LASF276:
	.ascii	"bytesRead\000"
.LASF308:
	.ascii	"g_jediTable\000"
.LASF198:
	.ascii	"_TNeoRomRegion\000"
.LASF182:
	.ascii	"sramProtectLatch\000"
.LASF273:
	.ascii	"bytesToRead\000"
.LASF245:
	.ascii	"pControl\000"
.LASF306:
	.ascii	"g_neoContext\000"
.LASF197:
	.ascii	"TNeoContext\000"
.LASF257:
	.ascii	"entry\000"
.LASF71:
	.ascii	"membase\000"
.LASF100:
	.ascii	"freqCounter\000"
.LASF215:
	.ascii	"audioProgramSize\000"
.LASF53:
	.ascii	"OBJMODE_BITMAP\000"
.LASF269:
	.ascii	"loop\000"
.LASF227:
	.ascii	"arm9Return\000"
.LASF29:
	.ascii	"size\000"
.LASF140:
	.ascii	"pPalette\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF265:
	.ascii	"streamSize\000"
.LASF209:
	.ascii	"command\000"
.LASF241:
	.ascii	"pTail\000"
.LASF253:
	.ascii	"length\000"
.LASF6:
	.ascii	"uint16_t\000"
.LASF292:
	.ascii	"g_zeroFill\000"
.LASF75:
	.ascii	"read32\000"
.LASF283:
	.ascii	"value\000"
.LASF270:
	.ascii	"initAcc\000"
.LASF185:
	.ascii	"debug\000"
.LASF110:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF35:
	.ascii	"cur_size\000"
.LASF117:
	.ascii	"version\000"
.LASF125:
	.ascii	"TNeoRomHeader\000"
.LASF130:
	.ascii	"adpcmb\000"
.LASF139:
	.ascii	"pSpriteRam\000"
.LASF145:
	.ascii	"smaBankoffset\000"
.LASF166:
	.ascii	"fixedBank\000"
.LASF290:
	.ascii	"g_audioFrame\000"
.LASF58:
	.ascii	"OBJSIZE_8\000"
.LASF249:
	.ascii	"lastCommand\000"
.LASF69:
	.ascii	"state_flags\000"
.LASF229:
	.ascii	"adpcmaFinished\000"
.LASF119:
	.ascii	"sramProtection\000"
.LASF123:
	.ascii	"name\000"
.LASF221:
	.ascii	"pAdpcmBuffer\000"
.LASF208:
	.ascii	"_TNeoAdpcaControl\000"
.LASF247:
	.ascii	"neoAudioProcessChannel\000"
.LASF136:
	.ascii	"pSram\000"
.LASF5:
	.ascii	"short int\000"
.LASF187:
	.ascii	"frameCounter\000"
.LASF48:
	.ascii	"nextPBlock\000"
.LASF4:
	.ascii	"int16_t\000"
.LASF83:
	.ascii	"ResetCallback\000"
.LASF228:
	.ascii	"audioStreamCount\000"
.LASF17:
	.ascii	"true\000"
.LASF173:
	.ascii	"displayCounterLoad\000"
.LASF284:
	.ascii	"jediValue\000"
.LASF280:
	.ascii	"neoAudioStreamProcess\000"
.LASF45:
	.ascii	"texturePtrs\000"
.LASF211:
	.ascii	"timeStamp\000"
.LASF246:
	.ascii	"neoAudioSkipCommands\000"
.LASF297:
	.ascii	"g_adpcmTable\000"
.LASF113:
	.ascii	"_TNeoRomEntry\000"
.LASF222:
	.ascii	"adpcmControl\000"
.LASF115:
	.ascii	"_TNeoRomHeader\000"
.LASF138:
	.ascii	"pVram\000"
.LASF59:
	.ascii	"OBJSIZE_16\000"
.LASF163:
	.ascii	"irqPending\000"
.LASF243:
	.ascii	"commandIndex\000"
.LASF248:
	.ascii	"sizeToTransfer\000"
.LASF23:
	.ascii	"centerX\000"
.LASF24:
	.ascii	"centerY\000"
.LASF89:
	.ascii	"TRead32Func\000"
.LASF300:
	.ascii	"mosaicShadow\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF25:
	.ascii	"scaleX\000"
.LASF26:
	.ascii	"scaleY\000"
.LASF251:
	.ascii	"transferSize\000"
.LASF68:
	.ascii	"reserved\000"
.LASF199:
	.ascii	"_TNeoAdpcmCommand\000"
.LASF129:
	.ascii	"adpcm\000"
.LASF271:
	.ascii	"freq\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF116:
	.ascii	"magic\000"
.LASF212:
	.ascii	"TNeoAdpcmControl\000"
.LASF41:
	.ascii	"gl_hidden_globals\000"
.LASF60:
	.ascii	"OBJSIZE_32\000"
.LASF120:
	.ascii	"fixedBankType\000"
.LASF296:
	.ascii	"g_adpcmbTable2\000"
.LASF301:
	.ascii	"mosaicShadowSub\000"
.LASF263:
	.ascii	"pJediTable\000"
.LASF126:
	.ascii	"pVideoWriteTable\000"
.LASF165:
	.ascii	"paletteBank\000"
.LASF31:
	.ascii	"dirty\000"
.LASF144:
	.ascii	"smaBankAddr\000"
.LASF80:
	.ascii	"fetch16\000"
.LASF259:
	.ascii	"neoAudioStreamAdpcma\000"
.LASF54:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF146:
	.ascii	"smaBankbit\000"
.LASF107:
	.ascii	"NEOROM_AUDODATA\000"
.LASF34:
	.ascii	"data\000"
.LASF181:
	.ascii	"fixedRomLatch\000"
.LASF168:
	.ascii	"sramProtectCount\000"
.LASF238:
	.ascii	"prev\000"
.LASF128:
	.ascii	"romBankCount\000"
.LASF97:
	.ascii	"TNeoADPCMStream\000"
.LASF206:
	.ascii	"startAddr\000"
.LASF200:
	.ascii	"NEOADPCM_NONE\000"
.LASF170:
	.ascii	"vramMod\000"
.LASF279:
	.ascii	"arm7StreamCount\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
