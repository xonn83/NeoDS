	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"NeoSystem.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	neoSystemIPCSync
	.code	16
	.thumb_func
	.type	neoSystemIPCSync, %function
neoSystemIPCSync:
.LFB168:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/NeoSystem.c"
	.loc 1 59 0
	.loc 1 68 0
	@ sp needed for prologue
	bx	lr
.LFE168:
	.size	neoSystemIPCSync, .-neoSystemIPCSync
	.align	2
	.global	neoSystemRegionSize
	.code	16
	.thumb_func
	.type	neoSystemRegionSize, %function
neoSystemRegionSize:
.LFB175:
	.loc 1 124 0
.LVL0:
	.loc 1 124 0
	ldr	r3, .L5
	lsl	r0, r0, #3
.LVL1:
	add	r0, r3, r0
	ldr	r0, [r0, #4]
	.loc 1 127 0
	@ sp needed for prologue
	bx	lr
.L6:
	.align	2
.L5:
	.word	g_header+44
.LFE175:
	.size	neoSystemRegionSize, .-neoSystemRegionSize
	.global	__aeabi_uidiv
	.align	2
	.global	neoSystemSetClockDivide
	.code	16
	.thumb_func
	.type	neoSystemSetClockDivide, %function
neoSystemSetClockDivide:
.LFB178:
	.loc 1 142 0
	push	{r4, r5, r6, lr}
.LCFI0:
.LVL2:
	.loc 1 143 0
	mov	r3, #246
	mov	r5, r7
	lsl	r3, r3, #1
	str	r0, [r5, r3]
	.loc 1 142 0
	mov	r1, r0
	.loc 1 144 0
	mov	r0, #192
.LVL3:
	lsl	r0, r0, #3
	bl	__aeabi_uidiv
.LVL4:
	mov	r4, #248
	lsl	r4, r4, #1
	str	r0, [r5, r4]
	.loc 1 145 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.LFE178:
	.size	neoSystemSetClockDivide, .-neoSystemSetClockDivide
	.align	2
	.global	neoSystemGetRomCount
	.code	16
	.thumb_func
	.type	neoSystemGetRomCount, %function
neoSystemGetRomCount:
.LFB181:
	.loc 1 237 0
	.loc 1 237 0
	ldr	r3, .L11
	.loc 1 239 0
	@ sp needed for prologue
	.loc 1 237 0
	ldr	r0, [r3]
	.loc 1 239 0
	bx	lr
.L12:
	.align	2
.L11:
	.word	.LANCHOR0
.LFE181:
	.size	neoSystemGetRomCount, .-neoSystemGetRomCount
	.align	2
	.global	neoSystemGetRomName
	.code	16
	.thumb_func
	.type	neoSystemGetRomName, %function
neoSystemGetRomName:
.LFB182:
	.loc 1 242 0
.LVL5:
	.loc 1 242 0
	ldr	r3, .L15
	lsl	r0, r0, #2
.LVL6:
	add	r0, r3, r0
	ldr	r0, [r0, #4]
	.loc 1 245 0
	@ sp needed for prologue
	bx	lr
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
.LFE182:
	.size	neoSystemGetRomName, .-neoSystemGetRomName
	.align	2
	.global	neoSystemSetEnabled
	.code	16
	.thumb_func
	.type	neoSystemSetEnabled, %function
neoSystemSetEnabled:
.LFB189:
	.loc 1 434 0
	push	{r4, lr}
.LCFI1:
.LVL7:
	ldr	r3, .L25
	.loc 1 435 0
	cmp	r0, #0
	beq	.L18
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L19
	.loc 1 437 0
	ldr	r2, .L25+4
	strb	r3, [r7, r2]
	.loc 1 438 0
	ldr	r3, .L25+8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L19
	.loc 1 440 0
	mov	r0, #3
.LVL8:
	bl	neoIPCSendCommand
	b	.L19
.LVL9:
.L18:
	.loc 1 442 0
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L20
	.loc 1 444 0
	ldr	r2, .L25+4
	strb	r3, [r7, r2]
	.loc 1 445 0
	ldr	r3, .L25+8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L20
	.loc 1 447 0
	mov	r0, #2
.LVL10:
	bl	neoIPCSendCommand
	b	.L20
.LVL11:
.L19:
	.loc 1 451 0
	ldr	r3, .L25
	ldr	r2, [r3, #4]
	sub	r2, r2, #1
	b	.L23
.L20:
	.loc 1 452 0
	ldr	r3, .L25
	ldr	r2, [r3, #4]
	add	r2, r2, #1
.L23:
	str	r2, [r3, #4]
	.loc 1 463 0
	@ sp needed for prologue
	pop	{r4, pc}
.L26:
	.align	2
.L25:
	.word	.LANCHOR1
	.word	573
	.word	41940113
.LFE189:
	.size	neoSystemSetEnabled, .-neoSystemSetEnabled
	.align	2
	.code	16
	.thumb_func
	.type	neoSystemDoKeys, %function
neoSystemDoKeys:
.LFB192:
	.loc 1 517 0
	push	{r4, r5, r6, lr}
.LCFI2:
.LVL12:
	sub	sp, sp, #32
.LCFI3:
	.loc 1 530 0
	ldr	r3, .L45
	.loc 1 517 0
	str	r0, [sp, #8]
	.loc 1 530 0
	ldr	r3, [r3, #8]
	ldr	r6, .L45+4
	bic	r0, r0, r3
.LBB26:
.LBB29:
	.loc 1 468 0
	mov	r1, #137
	.loc 1 469 0
	mov	r2, #139
	.loc 1 470 0
	mov	r3, #141
.LBE29:
.LBE26:
	.loc 1 530 0
	str	r0, [sp, #28]
.LBB37:
.LBB34:
	.loc 1 468 0
	lsl	r1, r1, #2
.LBE34:
.LBE37:
	.loc 1 530 0
	mov	r0, #7
.LVL13:
.LBB38:
.LBB28:
	.loc 1 469 0
	lsl	r2, r2, #2
	.loc 1 470 0
	lsl	r3, r3, #2
.LBE28:
.LBE38:
	.loc 1 530 0
	add	r6, r6, #28
	str	r0, [sp, #4]
.LBB39:
.LBB35:
	.loc 1 468 0
	str	r1, [sp, #12]
	.loc 1 469 0
	str	r2, [sp, #16]
	.loc 1 470 0
	str	r3, [sp, #20]
.LVL14:
.L37:
.LBE35:
.LBE39:
	.loc 1 534 0
	ldr	r1, [r6]
	ldr	r0, [sp, #8]
	tst	r0, r1
	beq	.L28
	.loc 1 535 0
	ldr	r0, [sp, #4]
	add	r3, r7, r0
	mov	r0, #142
	lsl	r0, r0, #2
	add	r3, r3, r0
.LBB40:
.LBB27:
	.loc 1 468 0
	ldr	r0, [sp, #12]
.LBE27:
.LBE40:
	.loc 1 535 0
	ldrb	r3, [r3, #7]
.LBB41:
.LBB36:
	.loc 1 468 0
	ldr	r4, [r7, r0]
	.loc 1 469 0
	ldr	r0, [sp, #16]
	ldr	r5, [r7, r0]
	.loc 1 470 0
	ldr	r0, [sp, #20]
	ldr	r0, [r7, r0]
	str	r0, [sp, #24]
	.loc 1 471 0
	ldr	r0, .L45+8
	ldrb	r2, [r7, r0]
	cmp	r2, #0
	beq	.L29
	.loc 1 472 0
	lsl	r2, r3, #31
	bpl	.L30
	ldr	r2, .L45+12
	and	r4, r4, r2
.L30:
	.loc 1 473 0
	lsl	r0, r3, #30
	bpl	.L31
	ldr	r2, .L45+16
	and	r4, r4, r2
.L31:
	.loc 1 474 0
	lsl	r2, r3, #29
	bpl	.L32
	ldr	r2, .L45+20
	and	r4, r4, r2
.L32:
	.loc 1 475 0
	lsl	r0, r3, #28
	bpl	.L33
	ldr	r2, .L45+24
	and	r4, r4, r2
.L33:
	.loc 1 476 0
	lsl	r2, r3, #27
	bpl	.L34
	ldr	r2, .L45+28
	and	r5, r5, r2
.L34:
	.loc 1 477 0
	lsl	r0, r3, #26
	bpl	.L35
	ldr	r2, .L45+32
	and	r5, r5, r2
.L35:
	.loc 1 478 0
	lsl	r2, r3, #25
	bpl	.L29
	ldr	r0, [sp, #24]
	mov	r2, #1
	bic	r0, r0, r2
	str	r0, [sp, #24]
.L29:
	.loc 1 482 0
	mov	r2, #128
	tst	r3, r2
	beq	.L36
	ldr	r2, [sp, #28]
	tst	r2, r1
	beq	.L36
.LBB30:
.LBB31:
	.file 2 "C:/devkitPro/libnds/include/nds/system.h"
	.loc 2 136 0
	ldr	r3, .L45+36
	ldr	r0, .L45+40
	ldrh	r2, [r3]
.LBE31:
.LBE30:
	.loc 1 484 0
	ldr	r1, .L45
.LBB33:
.LBB32:
	.loc 2 136 0
	lsl	r2, r2, #16
	add	r2, r2, r0
	lsr	r2, r2, #16
	strh	r2, [r3]
.LBE32:
.LBE33:
	.loc 1 484 0
	ldrb	r0, [r1, #12]
	bl	neoSystemSetEnabled
	.loc 1 485 0
	ldr	r3, .L45
	ldr	r0, .L45
	ldrb	r2, [r3, #12]
	neg	r3, r2
	adc	r3, r3, r2
	strb	r3, [r0, #12]
.L36:
	.loc 1 488 0
	ldr	r1, [sp, #12]
	.loc 1 489 0
	ldr	r2, [sp, #16]
	.loc 1 488 0
	str	r4, [r7, r1]
	.loc 1 490 0
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #24]
	.loc 1 489 0
	str	r5, [r7, r2]
	.loc 1 490 0
	str	r1, [r7, r0]
.L28:
.LBE36:
.LBE41:
	.loc 1 533 0
	ldr	r2, [sp, #4]
	sub	r6, r6, #4
	sub	r2, r2, #1
	str	r2, [sp, #4]
	bcs	.L37
	.loc 1 539 0
	ldr	r3, [sp, #8]
	lsl	r3, r3, #18
	bmi	.L38
.LBB42:
.LBB43:
	.loc 1 495 0
	ldr	r3, .L45
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bgt	.L39
	.loc 1 497 0
	mov	r0, #2
	bl	neoIPCSendCommand
.L39:
	.loc 1 499 0
	mov	r0, #7
	bl	neoIPCSendCommand
.LBB44:
	.loc 1 503 0
	mov	r4, #128
.LVL15:
	lsl	r4, r4, #6
.L41:
	.loc 1 501 0
	bl	scanKeys
	.loc 1 502 0
	bl	keysHeld
	.loc 1 503 0
	tst	r0, r4
	beq	.L40
.LVL16:
	.loc 1 506 0
	bl	swiWaitForVBlank
.LVL17:
	b	.L41
.LVL18:
.L40:
.LBE44:
	.loc 1 508 0
	mov	r0, #8
.LVL19:
	bl	neoIPCSendCommand
	.loc 1 509 0
	ldr	r3, .L45
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bgt	.L42
	.loc 1 511 0
	mov	r0, #3
	bl	neoIPCSendCommand
.L42:
	.loc 1 513 0
	bl	neoAudioStreamReset
.LVL20:
.L38:
.LBE43:
.LBE42:
	.loc 1 543 0
	ldr	r3, .L45
	ldr	r0, [sp, #8]
	str	r0, [r3, #8]
	.loc 1 544 0
	add	sp, sp, #32
	@ sp needed for prologue
.LVL21:
.LVL22:
	pop	{r4, r5, r6, pc}
.L46:
	.align	2
.L45:
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	573
	.word	-4097
	.word	-8193
	.word	-16385
	.word	-32769
	.word	-257
	.word	-513
	.word	67109636
	.word	-2147483648
.LFE192:
	.size	neoSystemDoKeys, .-neoSystemDoKeys
	.align	2
	.global	neoSystemExecute
	.code	16
	.thumb_func
	.type	neoSystemExecute, %function
neoSystemExecute:
.LFB194:
	.loc 1 606 0
	push	{r4, r5, r6, lr}
.LCFI4:
.LBB48:
.LBB50:
	.loc 1 555 0
	mov	r6, #192
.LBE50:
.LBE48:
	.loc 1 606 0
	sub	sp, sp, #8
.LCFI5:
.LBB52:
.LBB49:
	.loc 1 555 0
	lsl	r6, r6, #1
.LVL23:
.L56:
.LBE49:
.LBE52:
	.loc 1 609 0
	bl	guiSystemProcess
	.loc 1 610 0
	ldr	r1, .L57
	ldrb	r3, [r7, r1]
	cmp	r3, #0
	beq	.L48
.LBB53:
.LBB51:
	.loc 1 555 0
	mov	r3, #0
	str	r3, [r7, r6]
	.loc 1 556 0
	mov	r3, #246
	lsl	r3, r3, #1
	mov	r0, #192
	ldr	r1, [r7, r3]
	lsl	r0, r0, #3
	bl	__aeabi_uidiv
	bl	cpuExecute
	.loc 1 561 0
	mov	r3, #194
	lsl	r3, r3, #1
	ldr	r1, [r7, r3]
	add	r1, r1, #1
	str	r1, [r7, r3]
	.loc 1 562 0
	bl	pd4990a_addretrace
	.loc 1 563 0
	bl	neoAudioStreamProcess
	.loc 1 565 0
	mov	r3, #252
	lsl	r3, r3, #1
	ldr	r1, [r7, r3]
	add	r1, r1, #1
	str	r1, [r7, r3]
	.loc 1 573 0
	bl	keysHeld
	mov	r4, r0
	.loc 1 577 0
	lsl	r1, r0, #25
	bmi	.L49
.LVL24:
	mov	r3, #255
.LVL25:
	b	.L50
.LVL26:
.L49:
	mov	r3, #254
.LVL27:
.L50:
	.loc 1 578 0
	lsl	r2, r4, #24
	bpl	.L51
.LVL28:
	mov	r2, #2
	bic	r3, r3, r2
.L51:
	.loc 1 579 0
	lsl	r1, r4, #26
	bpl	.L52
	mov	r2, #4
	bic	r3, r3, r2
.L52:
	.loc 1 580 0
	lsl	r2, r4, #27
	bpl	.L53
	mov	r2, #8
	bic	r3, r3, r2
.L53:
	.loc 1 581 0
	lsl	r3, r3, #16
.LVL29:
	mov	r1, #255
	mov	r2, #137
	lsr	r3, r3, #8
	orr	r3, r3, r1
	lsl	r2, r2, #2
	str	r3, [r7, r2]
	.loc 1 582 0
	ldr	r2, .L57+4
	mov	r3, #138
	lsl	r3, r3, #2
	str	r2, [r7, r3]
	.loc 1 587 0
	mov	r3, #139
	mov	r2, #207
	lsl	r3, r3, #2
	lsl	r2, r2, #8
	str	r2, [r7, r3]
	.loc 1 581 0
	mov	r5, r7
	.loc 1 593 0
	bl	read_4990_testbit
	str	r0, [sp, #4]
	bl	read_4990_databit
	.loc 1 592 0
	ldr	r1, [sp, #4]
	lsl	r0, r0, #7
	lsl	r2, r1, #6
	orr	r0, r0, r2
	mov	r3, #141
	mov	r2, #7
	orr	r0, r0, r2
	lsl	r3, r3, #2
	str	r0, [r5, r3]
	.loc 1 600 0
	ldr	r2, .L57+8
	mov	r3, #140
	lsl	r3, r3, #2
	.loc 1 602 0
	mov	r0, r4
	.loc 1 600 0
	str	r2, [r7, r3]
	.loc 1 602 0
	bl	neoSystemDoKeys
	b	.L56
.L48:
.LBE51:
.LBE53:
.LBB54:
	.loc 1 614 0
	bl	keysHeld
	.loc 1 615 0
	bl	neoSystemDoKeys
	.loc 1 617 0
	bl	neoAudioStreamProcess
	.loc 1 619 0
	bl	swiWaitForVBlank
	.loc 1 621 0
	bl	guiSystemRender
	b	.L56
.L58:
	.align	2
.L57:
	.word	573
	.word	65535
	.word	65408
.LBE54:
.LFE194:
	.size	neoSystemExecute, .-neoSystemExecute
	.align	2
	.code	16
	.thumb_func
	.type	neoSystemUpdateIrq, %function
neoSystemUpdateIrq:
.LFB185:
	.loc 1 381 0
	push	{r4, lr}
.LCFI6:
	.loc 1 382 0
	mov	r3, #250
	lsl	r3, r3, #1
	ldr	r3, [r7, r3]
	lsl	r2, r3, #29
	bpl	.L60
	.loc 1 383 0
	mov	r0, #3
	b	.L65
.L60:
	.loc 1 384 0
	lsl	r2, r3, #30
	bpl	.L62
	.loc 1 386 0
	mov	r0, #2
	b	.L65
.L62:
	.loc 1 387 0
	lsl	r2, r3, #31
	bpl	.L63
	.loc 1 388 0
	mov	r0, #1
	b	.L65
.L63:
	.loc 1 390 0
	mov	r0, #0
.L65:
	bl	cpuInterrupt
	.loc 1 392 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE185:
	.size	neoSystemUpdateIrq, .-neoSystemUpdateIrq
	.align	2
	.global	neoSystemIrq
	.code	16
	.thumb_func
	.type	neoSystemIrq, %function
neoSystemIrq:
.LFB187:
	.loc 1 410 0
	push	{r4, lr}
.LCFI7:
.LVL30:
	.loc 1 411 0
	mov	r3, #250
	lsl	r3, r3, #1
	ldr	r1, [r7, r3]
	.loc 1 413 0
	@ sp needed for prologue
	.loc 1 411 0
	orr	r0, r0, r1
.LVL31:
	str	r0, [r7, r3]
	.loc 1 412 0
	bl	neoSystemUpdateIrq
	.loc 1 413 0
	pop	{r4, pc}
.LFE187:
	.size	neoSystemIrq, .-neoSystemIrq
	.align	2
	.global	neoSystemIrqAk
	.code	16
	.thumb_func
	.type	neoSystemIrqAk, %function
neoSystemIrqAk:
.LFB186:
	.loc 1 395 0
	push	{r4, lr}
.LCFI8:
.LVL32:
	.loc 1 396 0
	lsl	r3, r0, #31
	bpl	.L69
.LVL33:
	.loc 1 397 0
	mov	r3, #250
	lsl	r3, r3, #1
	ldr	r1, [r7, r3]
	mov	r4, #4
	bic	r1, r1, r4
	str	r1, [r7, r3]
.L69:
	.loc 1 399 0
	mov	r1, #2
	tst	r0, r1
	beq	.L70
	.loc 1 401 0
	mov	r3, #250
	lsl	r3, r3, #1
	ldr	r4, [r7, r3]
	mov	r2, r7
	bic	r4, r4, r1
	str	r4, [r2, r3]
.L70:
	.loc 1 403 0
	lsl	r3, r0, #29
	bpl	.L71
	.loc 1 404 0
	mov	r3, #250
	lsl	r3, r3, #1
	ldr	r1, [r7, r3]
	mov	r0, #1
	bic	r1, r1, r0
	str	r1, [r7, r3]
.L71:
	.loc 1 406 0
	bl	neoSystemUpdateIrq
	.loc 1 407 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE186:
	.size	neoSystemIrqAk, .-neoSystemIrqAk
	.align	2
	.global	neoSystemClose
	.code	16
	.thumb_func
	.type	neoSystemClose, %function
neoSystemClose:
.LFB184:
	.loc 1 371 0
	push	{r4, lr}
.LCFI9:
	.loc 1 372 0
	ldr	r4, .L76
	ldr	r0, [r4]
	cmp	r0, #0
	blt	.L75
	.loc 1 373 0
	bl	systemClose
	.loc 1 375 0
	mov	r3, #1
	neg	r3, r3
.LBB55:
.LBB56:
	.file 3 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoSystem.h"
	.loc 3 337 0
	ldr	r7, .L76+4
.LBE56:
.LBE55:
	.loc 1 375 0
	str	r3, [r4]
	.loc 1 376 0
	bl	neoSaveConfig
.L75:
	.loc 1 378 0
	@ sp needed for prologue
	pop	{r4, pc}
.L77:
	.align	2
.L76:
	.word	.LANCHOR3
	.word	.LANCHOR4
.LFE184:
	.size	neoSystemClose, .-neoSystemClose
	.align	2
	.global	neoSystemOpen
	.code	16
	.thumb_func
	.type	neoSystemOpen, %function
neoSystemOpen:
.LFB183:
	.loc 1 248 0
	push	{r4, r5, r6, lr}
.LCFI10:
.LVL34:
	sub	sp, sp, #128
.LCFI11:
	.loc 1 248 0
	str	r0, [sp, #4]
	.loc 1 255 0
	ldr	r1, [sp, #4]
	ldr	r0, .L93
.LVL35:
	bl	guiConsoleLogf
	.loc 1 256 0
	bl	guiConsoleDump
	.loc 1 258 0
	ldr	r0, [sp, #4]
	mov	r1, #0
	bl	systemOpen
	str	r0, [sp]
	.loc 1 262 0
	cmp	r0, #0
	bge	.L79
	.loc 1 263 0
	ldr	r0, .L93+4
	bl	guiConsoleLogf
	b	.L92
.L79:
	.loc 1 267 0
	add	r4, sp, #12
	mov	r2, #116
	ldr	r0, [sp]
	mov	r1, r4
	bl	systemRead
	.loc 1 269 0
	ldr	r2, [sp, #12]
	ldr	r3, .L93+8
	cmp	r2, r3
	bne	.L81
	ldr	r5, [r4, #4]
	cmp	r5, #0
	bne	.L81
	ldr	r3, [r4, #24]
	cmp	r3, #9
	beq	.L82
.L81:
	.loc 1 273 0
	ldr	r0, [sp]
	bl	systemClose
	.loc 1 274 0
	ldr	r0, .L93+12
	bl	guiConsoleLogf
	.loc 1 275 0
	add	r4, sp, #12
	ldr	r0, .L93+16
	ldr	r1, [sp, #12]
	ldr	r2, .L93+8
	bl	guiConsoleLogf
	.loc 1 276 0
	ldr	r1, [r4, #4]
	ldr	r0, .L93+20
	mov	r2, #0
	bl	guiConsoleLogf
	.loc 1 277 0
	ldr	r1, [r4, #24]
	ldr	r0, .L93+24
	mov	r2, #9
	bl	guiConsoleLogf
.L92:
	mov	r0, #0
	.loc 1 279 0
	b	.L80
.L82:
	.loc 1 282 0
	bl	neoSystemClose
	.loc 1 284 0
	ldr	r0, [sp]
	bl	systemFileSize
	ldr	r1, .L93+28
	.loc 1 285 0
	ldr	r6, .L93+32
	.loc 1 284 0
	ldr	r2, .L93+36
	add	r0, r0, r1
	str	r0, [r2, #16]
	.loc 1 285 0
	mov	r1, r4
	mov	r2, #116
	mov	r0, r6
	bl	memcpy
	.loc 1 288 0
	ldr	r4, .L93+36
	.loc 1 286 0
	ldr	r3, .L93+40
	ldr	r1, [sp]
	.loc 1 288 0
	add	r4, r4, #20
	.loc 1 286 0
	str	r1, [r3]
	.loc 1 288 0
	mov	r0, r4
	bl	linearHeapReset
	.loc 1 289 0
	mov	r0, r4
	bl	linearHeapClear
	.loc 1 291 0
	mov	r2, #192
	lsl	r2, r2, #1
	str	r5, [r7, r2]
	.loc 1 292 0
	mov	r2, #194
	lsl	r2, r2, #1
	str	r5, [r7, r2]
	.loc 1 293 0
	mov	r2, #250
	lsl	r2, r2, #1
	str	r5, [r7, r2]
	.loc 1 294 0
	mov	r2, #254
	lsl	r2, r2, #1
	str	r5, [r7, r2]
	.loc 1 295 0
	mov	r2, #128
	lsl	r2, r2, #2
	str	r5, [r7, r2]
	.loc 1 296 0
	mov	r2, #130
	lsl	r2, r2, #2
	str	r5, [r7, r2]
	.loc 1 297 0
	ldr	r2, .L93+44
	mov	r1, #1
	strb	r1, [r7, r2]
	.loc 1 299 0
	mov	r2, #142
	lsl	r2, r2, #2
	strb	r5, [r7, r2]
	.loc 1 300 0
	ldr	r2, .L93+48
	.loc 1 304 0
	ldr	r1, .L93+52
	.loc 1 300 0
	strb	r5, [r7, r2]
	.loc 1 301 0
	add	r2, r2, #1
	strb	r5, [r7, r2]
	.loc 1 302 0
	add	r2, r2, #1
	strb	r5, [r7, r2]
	.loc 1 303 0
	mov	r2, #143
	lsl	r2, r2, #2
	strb	r5, [r7, r2]
	.loc 1 304 0
	mov	r2, #190
	lsl	r2, r2, #1
	str	r1, [r7, r2]
	.loc 1 305 0
	ldr	r2, .L93+56
	.loc 1 312 0
	ldr	r0, .L93+60
	.loc 1 305 0
	strb	r5, [r2]
	.loc 1 306 0
	sub	r2, r2, #1
	strb	r5, [r2]
	.loc 1 310 0
	ldr	r1, [r6, #12]
	mov	r2, #131
	lsl	r2, r2, #2
	str	r1, [r7, r2]
	.loc 1 312 0
	mov	r1, r6
	add	r1, r1, #28
	bl	guiConsoleLogf
	.loc 1 314 0
	ldr	r0, [r6, #88]
	mov	r2, r7
	lsr	r0, r0, #7
	add	r2, r2, #212
	str	r0, [r2]
	.loc 1 315 0
	mov	r1, #1
	mov	r2, #204
	neg	r1, r1
	lsl	r2, r2, #1
	str	r1, [r7, r2]
	.loc 1 317 0
	ldr	r1, .L93+64
.LVL36:
	sub	r4, r0, #1
	.loc 1 314 0
	mov	r3, r7
	.loc 1 317 0
	mov	r0, #0
.L84:
	tst	r1, r4
	bne	.L83
	.loc 1 318 0
	ldr	r5, [r3, r2]
	.loc 1 316 0
	add	r0, r0, #1
	.loc 1 318 0
	lsr	r5, r5, #1
	str	r5, [r3, r2]
	.loc 1 316 0
	lsr	r1, r1, #1
	cmp	r0, #32
	bne	.L84
.L83:
	.loc 1 321 0
	mov	r2, #0
	add	r3, r3, #216
	str	r2, [r3]
	.loc 1 322 0
	ldr	r2, .L93+32
	ldr	r1, [r2, #48]
.LVL37:
	ldr	r2, .L93+68
	add	r1, r1, r2
.LVL38:
	.loc 1 323 0
	cmp	r1, #0
	ble	.L85
	.loc 1 324 0
	asr	r2, r1, #20
	.loc 1 325 0
	lsl	r0, r2, #20
	.loc 1 324 0
	str	r2, [r3]
	.loc 1 325 0
	cmp	r0, r1
	beq	.L85
	.loc 1 326 0
	add	r2, r2, #1
	str	r2, [r3]
	.loc 1 327 0
	ldr	r0, .L93+72
	bl	guiConsoleLogf
.LVL39:
.L85:
	.loc 1 331 0
	mov	r3, r7
	add	r3, r3, #212
	ldr	r1, [r3]
.LVL40:
	ldr	r0, .L93+76
	bl	guiConsoleLogf
	.loc 1 332 0
	mov	r3, #204
	lsl	r3, r3, #1
	ldr	r1, [r7, r3]
	ldr	r0, .L93+80
	bl	guiConsoleLogf
	.loc 1 333 0
	mov	r3, r7
	add	r3, r3, #216
	ldr	r1, [r3]
	ldr	r0, .L93+84
	bl	guiConsoleLogf
	.loc 1 334 0
	mov	r3, #131
	lsl	r3, r3, #2
	ldr	r1, [r7, r3]
	add	r3, r1, #1
	bne	.L86
	.loc 1 335 0
	ldr	r0, .L93+88
	bl	guiConsoleLogf
	b	.L87
.L86:
	.loc 1 337 0
	ldr	r0, .L93+92
	bl	guiConsoleLogf
.L87:
	.loc 1 339 0
	bl	guiConsoleDump
	.loc 1 341 0
	bl	systemRamReset
	.loc 1 343 0
	bl	cpuInit
	.loc 1 344 0
	bl	neoMemoryInit
	.loc 1 345 0
	bl	neoIOInit
	.loc 1 346 0
	bl	pd4990a_init
	.loc 1 347 0
	bl	neoVideoInit
	.loc 1 348 0
	bl	neoInstallProtection
	.loc 1 350 0
	ldr	r3, .L93+96
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L88
	.loc 1 351 0
	bl	neoAudioStreamInit
	.loc 1 352 0
	mov	r0, #1
	bl	neoIPCSendCommand
	b	.L89
.L88:
	.loc 1 355 0
	ldr	r3, .L93+100
	mov	r2, #1
	strb	r2, [r3]
.L89:
	.loc 1 357 0
	bl	cpuReset
	.loc 1 359 0
	ldr	r0, [sp, #4]
	bl	neoLoadConfig
.LBB57:
.LBB58:
	.loc 2 136 0
	ldr	r3, .L93+104
	ldr	r1, .L93+64
	ldrh	r2, [r3]
.LBE58:
.LBE57:
.LBB60:
.LBB61:
	.loc 3 337 0
	ldr	r7, .L93+108
.LBE61:
.LBE60:
.LBB62:
.LBB59:
	.loc 2 136 0
	lsl	r2, r2, #16
	add	r2, r2, r1
	lsr	r2, r2, #16
	strh	r2, [r3]
	mov	r0, #1
.L80:
.LBE59:
.LBE62:
	.loc 1 368 0
	add	sp, sp, #128
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L94:
	.align	2
.L93:
	.word	.LC10
	.word	.LC12
	.word	2114000608
	.word	.LC14
	.word	.LC16
	.word	.LC18
	.word	.LC20
	.word	-512
	.word	g_header
	.word	.LANCHOR1
	.word	.LANCHOR3
	.word	574
	.word	569
	.word	9029
	.word	41940116
	.word	.LC25
	.word	-2147483648
	.word	-1048576
	.word	.LC28
	.word	.LC30
	.word	.LC32
	.word	.LC34
	.word	.LC36
	.word	.LC38
	.word	41940113
	.word	41940115
	.word	67109636
	.word	.LANCHOR4
.LFE183:
	.size	neoSystemOpen, .-neoSystemOpen
	.align	2
	.global	neoSystemInit
	.code	16
	.thumb_func
	.type	neoSystemInit, %function
neoSystemInit:
.LFB180:
	.loc 1 193 0
	push	{r4, r5, r6, lr}
.LCFI12:
	.loc 1 194 0
	mov	r0, #128
	.loc 1 193 0
	sub	sp, sp, #344
.LCFI13:
	.loc 1 194 0
	lsl	r0, r0, #9
	ldr	r1, .L105
	bl	irqSet
	.loc 1 196 0
	ldr	r0, .L105+4
	mov	r2, #128
	add	r0, r0, #20
	ldr	r1, .L105+8
	lsl	r2, r2, #8
	bl	linearHeapInit
	.loc 1 201 0
	ldr	r4, .L105+12
	mov	r3, #0
	mov	r0, r4
	.loc 1 202 0
	mov	r2, #128
	.loc 1 201 0
	stmia	r0!, {r3}
	.loc 1 202 0
	mov	r1, #0
	lsl	r2, r2, #1
	bl	memset
	.loc 1 208 0
	ldr	r0, .L105+16
	bl	diropen
	str	r0, [sp, #4]
	.loc 1 209 0
	cmp	r0, #0
	bne	.L102
	b	.L97
.L99:
.LBB63:
	.loc 1 214 0
	ldr	r3, [r5, #8]
	ldr	r2, [sp, #8]
	tst	r2, r3
	bne	.L104
	.loc 1 217 0
	mov	r1, #46
	mov	r0, r6
	bl	strchr
	mov	r1, r0
	.loc 1 218 0
	ldr	r0, .L105+20
	bl	strcasecmp
	cmp	r0, #0
	bne	.L104
	.loc 1 222 0
	ldr	r3, [r4]
	.loc 1 223 0
	mov	r0, r6
	.loc 1 222 0
	str	r3, [sp, #12]
	add	r3, r3, #1
	str	r3, [r4]
	.loc 1 223 0
	bl	strdup
	ldr	r2, [sp, #12]
	lsl	r3, r2, #2
	add	r3, r4, r3
	str	r0, [r3, #4]
	b	.L104
.L102:
	.loc 1 214 0
	mov	r3, #128
	lsl	r3, r3, #7
.LBE63:
	.loc 1 213 0
	add	r6, sp, #20
	add	r5, sp, #276
.LBB64:
	.loc 1 214 0
	str	r3, [sp, #8]
.L104:
.LBE64:
	.loc 1 213 0
	ldr	r3, [r4]
	cmp	r3, #63
	bhi	.L98
	ldr	r0, [sp, #4]
	mov	r1, r6
	mov	r2, r5
	bl	dirnext
	cmp	r0, #0
	beq	.L99
.L98:
	.loc 1 226 0
	ldr	r3, .L105+12
	mov	r2, #4
	ldr	r1, [r3]
	add	r0, r3, #4
	ldr	r3, .L105+24
	bl	qsort
	.loc 1 228 0
	ldr	r0, [sp, #4]
	bl	dirclose
.LBB65:
.LBB66:
	.loc 3 337 0
	ldr	r2, .L105+28
.LBE66:
.LBE65:
.LBB68:
.LBB69:
	.loc 1 143 0
	mov	r3, #246
	lsl	r3, r3, #1
	mov	r1, #2
	str	r1, [r2, r3]
	.loc 1 144 0
	mov	r3, #248
	mov	r1, #192
	lsl	r3, r3, #1
	lsl	r1, r1, #2
.LBE69:
.LBE68:
.LBB71:
.LBB67:
	.loc 3 337 0
	mov	r7, r2
.LBE67:
.LBE71:
.LBB72:
.LBB70:
	.loc 1 144 0
	str	r1, [r2, r3]
	mov	r0, #1
.L97:
.LBE70:
.LBE72:
	.loc 1 234 0
	add	sp, sp, #344
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L106:
	.align	2
.L105:
	.word	neoSystemIPCSync
	.word	.LANCHOR1
	.word	109674496
	.word	.LANCHOR0
	.word	.LC45
	.word	.LC47
	.word	stringCompare
	.word	.LANCHOR4
.LFE180:
	.size	neoSystemInit, .-neoSystemInit
	.align	2
	.global	stringCompare
	.code	16
	.thumb_func
	.type	stringCompare, %function
stringCompare:
.LFB179:
	.loc 1 188 0
	push	{r4, lr}
.LCFI14:
.LVL41:
	.loc 1 189 0
	ldr	r0, [r0]
.LVL42:
	ldr	r1, [r1]
.LVL43:
	bl	strcmp
	.loc 1 190 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE179:
	.size	stringCompare, .-stringCompare
	.align	2
	.global	neoSystemVramHAlloc
	.code	16
	.thumb_func
	.type	neoSystemVramHAlloc, %function
neoSystemVramHAlloc:
.LFB177:
	.loc 1 137 0
	push	{r4, lr}
.LCFI15:
.LVL44:
	.loc 1 137 0
	mov	r1, r0
	.loc 1 138 0
	ldr	r0, .L111
.LVL45:
	.loc 1 139 0
	@ sp needed for prologue
	.loc 1 138 0
	add	r0, r0, #20
	bl	linearHeapAlloc
.LVL46:
	.loc 1 139 0
	pop	{r4, pc}
.L112:
	.align	2
.L111:
	.word	.LANCHOR1
.LFE177:
	.size	neoSystemVramHAlloc, .-neoSystemVramHAlloc
	.align	2
	.global	neoSystemReadRom
	.code	16
	.thumb_func
	.type	neoSystemReadRom, %function
neoSystemReadRom:
.LFB169:
	.loc 1 71 0
	push	{r4, r5, r6, lr}
.LCFI16:
.LVL47:
	.loc 1 71 0
	mov	r5, r2
	.loc 1 73 0
	ldr	r2, .L115
.LVL48:
	.loc 1 71 0
	mov	r4, r0
	mov	r3, r1
	.loc 1 73 0
	ldr	r0, [r2]
.LVL49:
	mov	r1, r4
.LVL50:
	mov	r2, r3
	mov	r3, r5
.LVL51:
	bl	systemReadOffset
	.loc 1 75 0
	@ sp needed for prologue
.LVL52:
.LVL53:
	pop	{r4, r5, r6, pc}
.L116:
	.align	2
.L115:
	.word	.LANCHOR3
.LFE169:
	.size	neoSystemReadRom, .-neoSystemReadRom
	.align	2
	.global	neoSystemReadRegion
	.code	16
	.thumb_func
	.type	neoSystemReadRegion, %function
neoSystemReadRegion:
.LFB174:
	.loc 1 117 0
	push	{r4, lr}
.LCFI17:
.LVL54:
	.loc 1 117 0
	mov	r4, r1
	.loc 1 120 0
	ldr	r1, .L119
.LVL55:
	lsl	r0, r0, #3
.LVL56:
	ldr	r1, [r1, r0]
	mov	r0, r4
	add	r1, r2, r1
	mov	r2, r3
.LVL57:
	bl	neoSystemReadRom
.LVL58:
	.loc 1 121 0
	@ sp needed for prologue
.LVL59:
	pop	{r4, pc}
.L120:
	.align	2
.L119:
	.word	g_header+44
.LFE174:
	.size	neoSystemReadRegion, .-neoSystemReadRegion
	.align	2
	.global	neoSystemLoadRegionEx
	.code	16
	.thumb_func
	.type	neoSystemLoadRegionEx, %function
neoSystemLoadRegionEx:
.LFB173:
	.loc 1 102 0
	push	{r4, r5, r6, lr}
.LCFI18:
.LVL60:
	.loc 1 102 0
	mov	r4, r1
	.loc 1 103 0
	ldr	r1, .L126
.LVL61:
	lsl	r0, r0, #3
.LVL62:
	add	r0, r1, r0
.LVL63:
	.loc 1 104 0
	ldr	r1, [r0]
	.loc 1 106 0
	ldr	r0, [r0, #4]
.LVL64:
	cmp	r2, r0
	bcs	.L125
	.loc 1 107 0
	add	r5, r3, r2
	cmp	r5, r0
	bls	.L124
	sub	r3, r0, r2
.LVL65:
.L124:
	.loc 1 109 0
	add	r5, r1, #1
	beq	.L125
	add	r0, r0, #1
	beq	.L125
	.loc 1 113 0
	add	r1, r2, r1
	mov	r0, r4
	mov	r2, r3
.LVL66:
	bl	neoSystemReadRom
.LVL67:
.L125:
	.loc 1 114 0
	@ sp needed for prologue
.LVL68:
	pop	{r4, r5, r6, pc}
.L127:
	.align	2
.L126:
	.word	g_header+44
.LFE173:
	.size	neoSystemLoadRegionEx, .-neoSystemLoadRegionEx
	.align	2
	.global	neoSystemLoadRegion
	.code	16
	.thumb_func
	.type	neoSystemLoadRegion, %function
neoSystemLoadRegion:
.LFB176:
	.loc 1 130 0
	push	{r4, lr}
.LCFI19:
.LVL69:
	.loc 1 130 0
	mov	r3, r2
	.loc 1 131 0
	mov	r2, #0
.LVL70:
	bl	neoSystemLoadRegionEx
.LVL71:
	.loc 1 132 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE176:
	.size	neoSystemLoadRegion, .-neoSystemLoadRegion
	.align	2
	.global	neoSystemReset
	.code	16
	.thumb_func
	.type	neoSystemReset, %function
neoSystemReset:
.LFB188:
	.loc 1 416 0
	push	{r4, lr}
.LCFI20:
	.loc 1 419 0
	bl	cpuReset
	.loc 1 421 0
	mov	r3, #142
	lsl	r3, r3, #2
	ldrb	r1, [r7, r3]
	mov	r2, r7
	cmp	r1, #0
	beq	.L131
	.loc 1 422 0
	mov	r1, #0
	.loc 1 423 0
	add	r2, r2, #252
	.loc 1 422 0
	strb	r1, [r7, r3]
	.loc 1 423 0
	mov	r0, #1
	ldr	r1, [r2, #68]
	mov	r2, #128
	bl	neoSystemLoadRegion
.L131:
	.loc 1 426 0
	ldr	r1, .L133
	mov	r2, #0
	strb	r2, [r7, r1]
	.loc 1 427 0
	add	r1, r1, #2
	strb	r2, [r7, r1]
	.loc 1 428 0
	mov	r1, #143
	lsl	r1, r1, #2
	strb	r2, [r7, r1]
	.loc 1 429 0
	mov	r1, #254
	lsl	r1, r1, #1
	str	r2, [r7, r1]
	.loc 1 430 0
	mov	r1, #252
	lsl	r1, r1, #1
	str	r2, [r7, r1]
	.loc 1 431 0
	@ sp needed for prologue
	pop	{r4, pc}
.L134:
	.align	2
.L133:
	.word	569
.LFE188:
	.size	neoSystemReset, .-neoSystemReset
	.align	2
	.global	neoSystemLoadTile
	.code	16
	.thumb_func
	.type	neoSystemLoadTile, %function
neoSystemLoadTile:
.LFB172:
	.loc 1 94 0
	push	{r4, lr}
.LCFI21:
.LVL72:
	.loc 1 98 0
	ldr	r3, .L137
	lsl	r1, r1, #8
.LVL73:
	ldr	r3, [r3, #92]
	mov	r2, #128
	add	r1, r1, r3
	lsl	r2, r2, #1
	bl	neoSystemReadRom
.LVL74:
	.loc 1 99 0
	@ sp needed for prologue
	pop	{r4, pc}
.L138:
	.align	2
.L137:
	.word	g_header
.LFE172:
	.size	neoSystemLoadTile, .-neoSystemLoadTile
	.align	2
	.global	neoSystemLoadSprite2
	.code	16
	.thumb_func
	.type	neoSystemLoadSprite2, %function
neoSystemLoadSprite2:
.LFB171:
	.loc 1 86 0
	push	{r4, lr}
.LCFI22:
.LVL75:
	.loc 1 90 0
	ldr	r3, .L141
	lsl	r1, r1, #12
.LVL76:
	ldr	r3, [r3, #84]
	mov	r2, #128
	add	r1, r1, r3
	lsl	r2, r2, #5
	bl	neoSystemReadRom
.LVL77:
	.loc 1 91 0
	@ sp needed for prologue
	pop	{r4, pc}
.L142:
	.align	2
.L141:
	.word	g_header
.LFE171:
	.size	neoSystemLoadSprite2, .-neoSystemLoadSprite2
	.align	2
	.global	neoSystemLoadSprite
	.code	16
	.thumb_func
	.type	neoSystemLoadSprite, %function
neoSystemLoadSprite:
.LFB170:
	.loc 1 78 0
	push	{r4, lr}
.LCFI23:
.LVL78:
	.loc 1 82 0
	ldr	r3, .L145
	lsl	r1, r1, #10
.LVL79:
	ldr	r3, [r3, #84]
	mov	r2, #128
	add	r1, r1, r3
	lsl	r2, r2, #3
	bl	neoSystemReadRom
.LVL80:
	.loc 1 83 0
	@ sp needed for prologue
	pop	{r4, pc}
.L146:
	.align	2
.L145:
	.word	g_header
.LFE170:
	.size	neoSystemLoadSprite, .-neoSystemLoadSprite
	.global	g_neoContext
	.comm	g_header,116,4
	.section	.rodata
	.align	2
	.set	.LANCHOR2,. + 0
	.type	keyMask.7863, %object
	.size	keyMask.7863, 32
keyMask.7863:
	.word	1
	.word	2
	.word	1024
	.word	2048
	.word	512
	.word	256
	.word	8
	.word	4
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC10:
	.ascii	"Loading %s...\000"
.LC12:
	.ascii	" -> Failed!\000"
.LC14:
	.ascii	" -> invalid rom\000"
.LC16:
	.ascii	" -> magic %08X / %08X\000"
.LC18:
	.ascii	" -> version %d / %d\000"
.LC20:
	.ascii	" -> section %d / %d\000"
.LC25:
	.ascii	"Loaded Game: %s\000"
.LC28:
	.ascii	" -> partial rom bank\000"
.LC30:
	.ascii	" -> sprites: %d\000"
.LC32:
	.ascii	" -> mask: %08X\000"
.LC34:
	.ascii	" -> rom bank(s): %d\000"
.LC36:
	.ascii	" -> sramProtection off\000"
.LC38:
	.ascii	" -> sramProtection: %08X\000"
.LC45:
	.ascii	"/\000"
.LC47:
	.ascii	".NEO\000"
	.data
	.align	2
	.set	.LANCHOR3,. + 0
	.type	g_rom, %object
	.size	g_rom, 4
g_rom:
	.word	-1
	.section	.sbss,"aw",%nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	g_neoContext, %object
	.size	g_neoContext, 8192
g_neoContext:
	.space	8192
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.set	.LANCHOR1,. + 256
	.type	g_romCount, %object
	.size	g_romCount, 4
g_romCount:
	.space	4
	.type	g_romNames, %object
	.size	g_romNames, 256
g_romNames:
	.space	256
	.type	g_pauseCount, %object
	.size	g_pauseCount, 4
g_pauseCount:
	.space	4
	.type	lastKeys.7864, %object
	.size	lastKeys.7864, 4
lastKeys.7864:
	.space	4
	.type	g_paused, %object
	.size	g_paused, 1
g_paused:
	.space	1
	.space	3
	.type	g_romSize, %object
	.size	g_romSize, 4
g_romSize:
	.space	4
	.type	g_vramHHeap, %object
	.size	g_vramHHeap, 12
g_vramHHeap:
	.space	12
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
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.byte	0x4
	.4byte	.LCFI0-.LFB178
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
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB182
	.4byte	.LFE182-.LFB182
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB189
	.4byte	.LFE189-.LFB189
	.byte	0x4
	.4byte	.LCFI1-.LFB189
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
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
	.4byte	.LFB192
	.4byte	.LFE192-.LFB192
	.byte	0x4
	.4byte	.LCFI2-.LFB192
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
	.uleb128 0x30
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB194
	.4byte	.LFE194-.LFB194
	.byte	0x4
	.4byte	.LCFI4-.LFB194
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
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB185
	.4byte	.LFE185-.LFB185
	.byte	0x4
	.4byte	.LCFI6-.LFB185
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
	.4byte	.LFB187
	.4byte	.LFE187-.LFB187
	.byte	0x4
	.4byte	.LCFI7-.LFB187
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
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB186
	.4byte	.LFE186-.LFB186
	.byte	0x4
	.4byte	.LCFI8-.LFB186
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB184
	.4byte	.LFE184-.LFB184
	.byte	0x4
	.4byte	.LCFI9-.LFB184
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
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
	.4byte	.LFB183
	.4byte	.LFE183-.LFB183
	.byte	0x4
	.4byte	.LCFI10-.LFB183
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
	.uleb128 0x90
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.byte	0x4
	.4byte	.LCFI12-.LFB180
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
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x168
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.byte	0x4
	.4byte	.LCFI14-.LFB179
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.byte	0x4
	.4byte	.LCFI15-.LFB177
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.byte	0x4
	.4byte	.LCFI16-.LFB169
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
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.byte	0x4
	.4byte	.LCFI17-.LFB174
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.byte	0x4
	.4byte	.LCFI18-.LFB173
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
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.byte	0x4
	.4byte	.LCFI19-.LFB176
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB188
	.4byte	.LFE188-.LFB188
	.byte	0x4
	.4byte	.LCFI20-.LFB188
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.byte	0x4
	.4byte	.LCFI21-.LFB172
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.byte	0x4
	.4byte	.LCFI22-.LFB171
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.byte	0x4
	.4byte	.LCFI23-.LFB170
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE46:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB178-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE178-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB189-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE189-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE189-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB192-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE192-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB194-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE194-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-.Ltext0
	.4byte	.LFE194-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LFB185-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE185-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB187-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE187-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LFB186-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE186-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LFB184-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE184-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LFB183-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE183-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 144
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LFB180-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE180-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 360
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LFB179-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE179-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LFB177-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE177-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LFB169-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE169-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LFB174-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LFB173-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LFB176-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE176-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LFB188-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI20-.Ltext0
	.4byte	.LFE188-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LFB172-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LFB171-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LFB170-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI23-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
	.file 4 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 5 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 6 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/_types.h"
	.file 7 "C:/devkitPro/libnds/include/nds/interrupts.h"
	.file 8 "C:/devkitPro/libnds/include/nds/input.h"
	.file 9 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 10 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 11 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 12 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 13 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/types.h"
	.file 14 "C:/Users/GRX/NeoDS-master-old/arm9/include/cyclone.h"
	.file 15 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoCpu.h"
	.file 16 "C:/Users/GRX/NeoDS-master-old/arm9/../common/source/NeoAudioStream.h"
	.file 17 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/stat.h"
	.file 18 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/dir.h"
	.file 19 "C:/Users/GRX/NeoDS-master-old/arm9/../common/source/NeoIPC.h"
	.file 20 "C:/Users/GRX/NeoDS-master-old/arm9/source/LinearHeap.h"
	.file 21 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.section	.debug_info
	.4byte	0x1ca9
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF395
	.byte	0x1
	.4byte	.LASF396
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
	.byte	0x1
	.byte	0x5
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
	.byte	0x5
	.byte	0x7d
	.4byte	0xdf
	.uleb128 0x8
	.byte	0x4
	.4byte	0x105
	.uleb128 0x9
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x4
	.byte	0x7
	.byte	0x2e
	.4byte	0x1c4
	.uleb128 0x7
	.4byte	.LASF18
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF19
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF20
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF21
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF22
	.sleb128 16
	.uleb128 0x7
	.4byte	.LASF23
	.sleb128 32
	.uleb128 0x7
	.4byte	.LASF24
	.sleb128 64
	.uleb128 0x7
	.4byte	.LASF25
	.sleb128 128
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 256
	.uleb128 0x7
	.4byte	.LASF27
	.sleb128 512
	.uleb128 0x7
	.4byte	.LASF28
	.sleb128 1024
	.uleb128 0x7
	.4byte	.LASF29
	.sleb128 2048
	.uleb128 0x7
	.4byte	.LASF30
	.sleb128 4096
	.uleb128 0x7
	.4byte	.LASF31
	.sleb128 8192
	.uleb128 0x7
	.4byte	.LASF32
	.sleb128 65536
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 131072
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 262144
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 524288
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 1048576
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 2097152
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 4194304
	.uleb128 0x7
	.4byte	.LASF39
	.sleb128 8388608
	.uleb128 0x7
	.4byte	.LASF40
	.sleb128 16777216
	.uleb128 0x7
	.4byte	.LASF41
	.sleb128 -1
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF42
	.uleb128 0xc
	.4byte	0xa9
	.4byte	0x1de
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0x6
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.byte	0x2
	.byte	0x52
	.4byte	0x246
	.uleb128 0x7
	.4byte	.LASF43
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF44
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF45
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF46
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF47
	.sleb128 64
	.uleb128 0x7
	.4byte	.LASF48
	.sleb128 65537
	.uleb128 0x7
	.4byte	.LASF49
	.sleb128 65538
	.uleb128 0x7
	.4byte	.LASF50
	.sleb128 65540
	.uleb128 0x7
	.4byte	.LASF51
	.sleb128 65544
	.uleb128 0x7
	.4byte	.LASF52
	.sleb128 66048
	.uleb128 0x7
	.4byte	.LASF53
	.sleb128 98304
	.uleb128 0x7
	.4byte	.LASF54
	.sleb128 66051
	.uleb128 0x7
	.4byte	.LASF55
	.sleb128 66063
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x6
	.byte	0x10
	.4byte	0x257
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF57
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x6
	.byte	0x18
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x6
	.byte	0x1d
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x6
	.byte	0x20
	.4byte	0x57
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF61
	.uleb128 0x8
	.byte	0x4
	.4byte	0x28e
	.uleb128 0xf
	.4byte	0x1c7
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x2
	.byte	0x8
	.byte	0x1f
	.4byte	0x2fd
	.uleb128 0x7
	.4byte	.LASF64
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF65
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF66
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF67
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF68
	.sleb128 16
	.uleb128 0x7
	.4byte	.LASF69
	.sleb128 32
	.uleb128 0x7
	.4byte	.LASF70
	.sleb128 64
	.uleb128 0x7
	.4byte	.LASF71
	.sleb128 128
	.uleb128 0x7
	.4byte	.LASF72
	.sleb128 256
	.uleb128 0x7
	.4byte	.LASF73
	.sleb128 512
	.uleb128 0x7
	.4byte	.LASF74
	.sleb128 1024
	.uleb128 0x7
	.4byte	.LASF75
	.sleb128 2048
	.uleb128 0x7
	.4byte	.LASF76
	.sleb128 4096
	.uleb128 0x7
	.4byte	.LASF77
	.sleb128 8192
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x28
	.byte	0x9
	.2byte	0x18c
	.4byte	0x3a1
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x9
	.2byte	0x18d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x9
	.2byte	0x18e
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x9
	.2byte	0x18f
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0x9
	.2byte	0x190
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x9
	.2byte	0x191
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x9
	.2byte	0x192
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0x9
	.2byte	0x193
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF85
	.byte	0x9
	.2byte	0x194
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0x9
	.2byte	0x195
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0x9
	.2byte	0x196
	.4byte	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0x9
	.2byte	0x198
	.4byte	0x2fd
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0x8
	.byte	0xa
	.byte	0x29
	.4byte	0x3d6
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0xa
	.byte	0x2a
	.4byte	0x3d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0xa
	.byte	0x2b
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x27f
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0xa
	.byte	0x2c
	.4byte	0x3ad
	.uleb128 0x6
	.byte	0x1
	.byte	0xb
	.byte	0x9c
	.4byte	0x408
	.uleb128 0x7
	.4byte	.LASF92
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF93
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF94
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF95
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xb
	.byte	0xa1
	.4byte	0x3e7
	.uleb128 0x15
	.4byte	.LASF97
	.2byte	0x2020
	.byte	0xb
	.2byte	0x11a
	.4byte	0x49f
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0xb
	.2byte	0x11b
	.4byte	0x408
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0xb
	.2byte	0x11e
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF100
	.byte	0xb
	.2byte	0x121
	.4byte	0x49f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0xb
	.2byte	0x122
	.4byte	0x3dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0xb
	.2byte	0x123
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0xb
	.2byte	0x124
	.4byte	0x4b0
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0xb
	.2byte	0x125
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0xb
	.2byte	0x126
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x201c
	.byte	0x0
	.uleb128 0xc
	.4byte	0x90
	.4byte	0x4b0
	.uleb128 0x16
	.4byte	0x1c4
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x90
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0xb
	.2byte	0x128
	.4byte	0x413
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x6
	.byte	0x1
	.byte	0xc
	.byte	0x59
	.4byte	0x4ef
	.uleb128 0x7
	.4byte	.LASF106
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF107
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF108
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF109
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0xc
	.byte	0x62
	.4byte	0x510
	.uleb128 0x7
	.4byte	.LASF110
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF111
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF112
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF113
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0xc
	.byte	0x6a
	.4byte	0x531
	.uleb128 0x7
	.4byte	.LASF114
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF115
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF116
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF117
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0xc
	.byte	0x72
	.4byte	0x546
	.uleb128 0x7
	.4byte	.LASF118
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF119
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0xd
	.byte	0x6d
	.4byte	0x257
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0xd
	.byte	0x85
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0xd
	.byte	0xa2
	.4byte	0x24c
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0xd
	.byte	0xa3
	.4byte	0x25e
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0xd
	.byte	0xa4
	.4byte	0x269
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0xd
	.byte	0xa5
	.4byte	0x274
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0xd
	.byte	0xbf
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0xd
	.byte	0xc4
	.4byte	0x57
	.uleb128 0x13
	.4byte	.LASF128
	.byte	0xb0
	.byte	0xe
	.byte	0x15
	.4byte	0x734
	.uleb128 0x17
	.ascii	"d\000"
	.byte	0xe
	.byte	0x16
	.4byte	0x734
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.ascii	"a\000"
	.byte	0xe
	.byte	0x17
	.4byte	0x734
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.ascii	"pc\000"
	.byte	0xe
	.byte	0x18
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x17
	.ascii	"srh\000"
	.byte	0xe
	.byte	0x19
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x14
	.4byte	.LASF129
	.byte	0xe
	.byte	0x1a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0xe
	.byte	0x1b
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x17
	.ascii	"irq\000"
	.byte	0xe
	.byte	0x1c
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x17
	.ascii	"osp\000"
	.byte	0xe
	.byte	0x1d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x17
	.ascii	"xc\000"
	.byte	0xe
	.byte	0x1e
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x14
	.4byte	.LASF131
	.byte	0xe
	.byte	0x1f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x14
	.4byte	.LASF132
	.byte	0xe
	.byte	0x20
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x14
	.4byte	.LASF133
	.byte	0xe
	.byte	0x21
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x14
	.4byte	.LASF134
	.byte	0xe
	.byte	0x22
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x14
	.4byte	.LASF135
	.byte	0xe
	.byte	0x23
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x14
	.4byte	.LASF136
	.byte	0xe
	.byte	0x24
	.4byte	0x754
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x14
	.4byte	.LASF137
	.byte	0xe
	.byte	0x25
	.4byte	0x754
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x14
	.4byte	.LASF138
	.byte	0xe
	.byte	0x26
	.4byte	0x754
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x14
	.4byte	.LASF139
	.byte	0xe
	.byte	0x27
	.4byte	0x754
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x14
	.4byte	.LASF140
	.byte	0xe
	.byte	0x28
	.4byte	0x76b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x14
	.4byte	.LASF141
	.byte	0xe
	.byte	0x29
	.4byte	0x782
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x14
	.4byte	.LASF142
	.byte	0xe
	.byte	0x2a
	.4byte	0x799
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x14
	.4byte	.LASF143
	.byte	0xe
	.byte	0x2b
	.4byte	0x754
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x14
	.4byte	.LASF144
	.byte	0xe
	.byte	0x2c
	.4byte	0x754
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x14
	.4byte	.LASF145
	.byte	0xe
	.byte	0x2d
	.4byte	0x754
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x14
	.4byte	.LASF146
	.byte	0xe
	.byte	0x2e
	.4byte	0x7af
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x14
	.4byte	.LASF147
	.byte	0xe
	.byte	0x2f
	.4byte	0xff
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x14
	.4byte	.LASF148
	.byte	0xe
	.byte	0x30
	.4byte	0x7bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x14
	.4byte	.LASF149
	.byte	0xe
	.byte	0x31
	.4byte	0x7c1
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xc
	.4byte	0x7b
	.4byte	0x744
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0x7
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	0x7b
	.4byte	0x754
	.uleb128 0x19
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x744
	.uleb128 0x1a
	.byte	0x1
	.4byte	0x76b
	.uleb128 0x19
	.4byte	0x7b
	.uleb128 0x19
	.4byte	0x33
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x75a
	.uleb128 0x1a
	.byte	0x1
	.4byte	0x782
	.uleb128 0x19
	.4byte	0x7b
	.uleb128 0x19
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x771
	.uleb128 0x1a
	.byte	0x1
	.4byte	0x799
	.uleb128 0x19
	.4byte	0x7b
	.uleb128 0x19
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x788
	.uleb128 0x18
	.byte	0x1
	.4byte	0x69
	.4byte	0x7af
	.uleb128 0x19
	.4byte	0x69
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x79f
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x69
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7b5
	.uleb128 0xc
	.4byte	0x7b
	.4byte	0x7d1
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF150
	.byte	0xf
	.byte	0x6
	.4byte	0x59e
	.uleb128 0x3
	.4byte	.LASF151
	.byte	0xf
	.byte	0x8
	.4byte	0x7e7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7ed
	.uleb128 0x18
	.byte	0x1
	.4byte	0xa9
	.4byte	0x7fd
	.uleb128 0x19
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF152
	.byte	0xf
	.byte	0x9
	.4byte	0x808
	.uleb128 0x8
	.byte	0x4
	.4byte	0x80e
	.uleb128 0x18
	.byte	0x1
	.4byte	0xb3
	.4byte	0x81e
	.uleb128 0x19
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF153
	.byte	0xf
	.byte	0xa
	.4byte	0x829
	.uleb128 0x8
	.byte	0x4
	.4byte	0x82f
	.uleb128 0x18
	.byte	0x1
	.4byte	0xbe
	.4byte	0x83f
	.uleb128 0x19
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF154
	.byte	0xf
	.byte	0xc
	.4byte	0x84a
	.uleb128 0x8
	.byte	0x4
	.4byte	0x850
	.uleb128 0x1a
	.byte	0x1
	.4byte	0x861
	.uleb128 0x19
	.4byte	0xbe
	.uleb128 0x19
	.4byte	0xa9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF155
	.byte	0xf
	.byte	0xd
	.4byte	0x86c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x872
	.uleb128 0x1a
	.byte	0x1
	.4byte	0x883
	.uleb128 0x19
	.4byte	0xbe
	.uleb128 0x19
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0xf
	.byte	0xe
	.4byte	0x88e
	.uleb128 0x8
	.byte	0x4
	.4byte	0x894
	.uleb128 0x1a
	.byte	0x1
	.4byte	0x8a5
	.uleb128 0x19
	.4byte	0xbe
	.uleb128 0x19
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF157
	.byte	0xf
	.byte	0x10
	.4byte	0x829
	.uleb128 0x13
	.4byte	.LASF158
	.byte	0xc
	.byte	0x10
	.byte	0x17
	.4byte	0x8f5
	.uleb128 0x14
	.4byte	.LASF159
	.byte	0x10
	.byte	0x18
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.ascii	"end\000"
	.byte	0x10
	.byte	0x19
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.ascii	"acc\000"
	.byte	0x10
	.byte	0x1a
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF160
	.byte	0x10
	.byte	0x1b
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF161
	.byte	0x10
	.byte	0x1c
	.4byte	0x8b0
	.uleb128 0x13
	.4byte	.LASF162
	.byte	0xc
	.byte	0x10
	.byte	0x1f
	.4byte	0x937
	.uleb128 0x14
	.4byte	.LASF163
	.byte	0x10
	.byte	0x20
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF164
	.byte	0x10
	.byte	0x21
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF165
	.byte	0x10
	.byte	0x22
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF166
	.byte	0x10
	.byte	0x23
	.4byte	0x900
	.uleb128 0xa
	.4byte	.LASF167
	.byte	0x1
	.byte	0x3
	.byte	0x99
	.4byte	0x98b
	.uleb128 0x7
	.4byte	.LASF168
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF169
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF170
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF171
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF172
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF173
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF174
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF175
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF176
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF177
	.sleb128 9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0x3
	.byte	0xa4
	.4byte	0x942
	.uleb128 0x13
	.4byte	.LASF179
	.byte	0x8
	.byte	0x3
	.byte	0xa6
	.4byte	0x9bf
	.uleb128 0x14
	.4byte	.LASF159
	.byte	0x3
	.byte	0xa7
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x3
	.byte	0xa8
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF180
	.byte	0x3
	.byte	0xa9
	.4byte	0x996
	.uleb128 0x13
	.4byte	.LASF181
	.byte	0x74
	.byte	0x3
	.byte	0xab
	.4byte	0xa63
	.uleb128 0x14
	.4byte	.LASF182
	.byte	0x3
	.byte	0xac
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF183
	.byte	0x3
	.byte	0xad
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF184
	.byte	0x3
	.byte	0xae
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF185
	.byte	0x3
	.byte	0xaf
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF186
	.byte	0x3
	.byte	0xb0
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.4byte	.LASF187
	.byte	0x3
	.byte	0xb1
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.4byte	.LASF188
	.byte	0x3
	.byte	0xb2
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.4byte	.LASF189
	.byte	0x3
	.byte	0xb3
	.4byte	0xa63
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x14
	.4byte	.LASF190
	.byte	0x3
	.byte	0xb4
	.4byte	0xa73
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x3
	.byte	0xb5
	.4byte	0xa83
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.byte	0x0
	.uleb128 0xc
	.4byte	0x1c7
	.4byte	0xa73
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9bf
	.4byte	0xa83
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0x8
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa9
	.4byte	0xa92
	.uleb128 0x1c
	.4byte	0x1c4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF191
	.byte	0x3
	.byte	0xb6
	.4byte	0x9ca
	.uleb128 0xa
	.4byte	.LASF192
	.byte	0x1
	.byte	0x3
	.byte	0xb8
	.4byte	0xabc
	.uleb128 0x7
	.4byte	.LASF193
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF194
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF195
	.sleb128 4
	.byte	0x0
	.uleb128 0x1d
	.2byte	0x248
	.byte	0x3
	.byte	0xc0
	.4byte	0xeaa
	.uleb128 0x17
	.ascii	"cpu\000"
	.byte	0x3
	.byte	0xc1
	.4byte	0x7d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF196
	.byte	0x3
	.byte	0xc4
	.4byte	0xeaa
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x14
	.4byte	.LASF197
	.byte	0x3
	.byte	0xc7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x14
	.4byte	.LASF198
	.byte	0x3
	.byte	0xc8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x14
	.4byte	.LASF199
	.byte	0x3
	.byte	0xcb
	.4byte	0xeba
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x14
	.4byte	.LASF200
	.byte	0x3
	.byte	0xcc
	.4byte	0x937
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x14
	.4byte	.LASF201
	.byte	0x3
	.byte	0xcd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x14
	.4byte	.LASF202
	.byte	0x3
	.byte	0xd0
	.4byte	0x4c8
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x14
	.4byte	.LASF203
	.byte	0x3
	.byte	0xd1
	.4byte	0x4c8
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x14
	.4byte	.LASF204
	.byte	0x3
	.byte	0xd2
	.4byte	0x4c8
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x14
	.4byte	.LASF205
	.byte	0x3
	.byte	0xd3
	.4byte	0x4c8
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x14
	.4byte	.LASF206
	.byte	0x3
	.byte	0xd4
	.4byte	0x4c8
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x14
	.4byte	.LASF207
	.byte	0x3
	.byte	0xd5
	.4byte	0x4c8
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x14
	.4byte	.LASF208
	.byte	0x3
	.byte	0xd6
	.4byte	0x4c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x14
	.4byte	.LASF209
	.byte	0x3
	.byte	0xd7
	.4byte	0x4c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x14
	.4byte	.LASF210
	.byte	0x3
	.byte	0xd8
	.4byte	0x4c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x14
	.4byte	.LASF211
	.byte	0x3
	.byte	0xda
	.4byte	0xeca
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x14
	.4byte	.LASF212
	.byte	0x3
	.byte	0xdd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x14
	.4byte	.LASF213
	.byte	0x3
	.byte	0xde
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x14
	.4byte	.LASF214
	.byte	0x3
	.byte	0xdf
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x14
	.4byte	.LASF215
	.byte	0x3
	.byte	0xe0
	.4byte	0xedb
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x14
	.4byte	.LASF216
	.byte	0x3
	.byte	0xe1
	.4byte	0xedb
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x14
	.4byte	.LASF217
	.byte	0x3
	.byte	0xe2
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x14
	.4byte	.LASF218
	.byte	0x3
	.byte	0xe5
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x14
	.4byte	.LASF219
	.byte	0x3
	.byte	0xe6
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x14
	.4byte	.LASF220
	.byte	0x3
	.byte	0xe7
	.4byte	0x4c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x14
	.4byte	.LASF221
	.byte	0x3
	.byte	0xe8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x14
	.4byte	.LASF222
	.byte	0x3
	.byte	0xea
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x14
	.4byte	.LASF223
	.byte	0x3
	.byte	0xeb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x14
	.4byte	.LASF224
	.byte	0x3
	.byte	0xec
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x14
	.4byte	.LASF225
	.byte	0x3
	.byte	0xed
	.4byte	0xee6
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x14
	.4byte	.LASF226
	.byte	0x3
	.byte	0xee
	.4byte	0x4c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x14
	.4byte	.LASF227
	.byte	0x3
	.byte	0xf1
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x14
	.4byte	.LASF228
	.byte	0x3
	.byte	0xf2
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x14
	.4byte	.LASF229
	.byte	0x3
	.byte	0xf3
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x14
	.4byte	.LASF230
	.byte	0x3
	.byte	0xf4
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x14
	.4byte	.LASF231
	.byte	0x3
	.byte	0xf7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x14
	.4byte	.LASF232
	.byte	0x3
	.byte	0xf8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x14
	.4byte	.LASF233
	.byte	0x3
	.byte	0xf9
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x14
	.4byte	.LASF234
	.byte	0x3
	.byte	0xfa
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x14
	.4byte	.LASF235
	.byte	0x3
	.byte	0xfb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x14
	.4byte	.LASF236
	.byte	0x3
	.byte	0xfc
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x14
	.4byte	.LASF237
	.byte	0x3
	.byte	0xfd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0x11
	.4byte	.LASF238
	.byte	0x3
	.2byte	0x102
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x11
	.4byte	.LASF185
	.byte	0x3
	.2byte	0x103
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0x11
	.4byte	.LASF239
	.byte	0x3
	.2byte	0x106
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x11
	.4byte	.LASF240
	.byte	0x3
	.2byte	0x108
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x11
	.4byte	.LASF241
	.byte	0x3
	.2byte	0x109
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0x11
	.4byte	.LASF242
	.byte	0x3
	.2byte	0x10a
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0x11
	.4byte	.LASF243
	.byte	0x3
	.2byte	0x10b
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x11
	.4byte	.LASF244
	.byte	0x3
	.2byte	0x10d
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0x11
	.4byte	.LASF245
	.byte	0x3
	.2byte	0x10e
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x11
	.4byte	.LASF246
	.byte	0x3
	.2byte	0x10f
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x11
	.4byte	.LASF247
	.byte	0x3
	.2byte	0x110
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x11
	.4byte	.LASF248
	.byte	0x3
	.2byte	0x111
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0x11
	.4byte	.LASF249
	.byte	0x3
	.2byte	0x114
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0x11
	.4byte	.LASF250
	.byte	0x3
	.2byte	0x115
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0x11
	.4byte	.LASF251
	.byte	0x3
	.2byte	0x116
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0x11
	.4byte	.LASF252
	.byte	0x3
	.2byte	0x117
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0x11
	.4byte	.LASF253
	.byte	0x3
	.2byte	0x118
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0x11
	.4byte	.LASF254
	.byte	0x3
	.2byte	0x11b
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0x11
	.4byte	.LASF255
	.byte	0x3
	.2byte	0x11c
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0x11
	.4byte	.LASF256
	.byte	0x3
	.2byte	0x11f
	.4byte	0xef6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0x11
	.4byte	.LASF257
	.byte	0x3
	.2byte	0x122
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0x11
	.4byte	.LASF258
	.byte	0x3
	.2byte	0x123
	.4byte	0xf06
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xc
	.4byte	0x27f
	.4byte	0xeba
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0x8
	.byte	0x0
	.uleb128 0xc
	.4byte	0x8f5
	.4byte	0xeca
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xed0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xed6
	.uleb128 0xf
	.4byte	0xa9
	.uleb128 0x8
	.byte	0x4
	.4byte	0xee1
	.uleb128 0xf
	.4byte	0xbe
	.uleb128 0xc
	.4byte	0xbe
	.4byte	0xef6
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa9
	.4byte	0xf06
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa9
	.4byte	0xf15
	.uleb128 0x1c
	.4byte	0x1c4
	.byte	0x0
	.uleb128 0x1e
	.2byte	0x400
	.byte	0x3
	.byte	0xbf
	.4byte	0xf30
	.uleb128 0x1f
	.4byte	0xabc
	.uleb128 0x20
	.4byte	.LASF289
	.byte	0x3
	.2byte	0x125
	.4byte	0xf30
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbe
	.4byte	0xf40
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0xff
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF259
	.2byte	0x2000
	.byte	0x3
	.byte	0xbe
	.4byte	0xfc6
	.uleb128 0x22
	.4byte	0xf15
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF260
	.byte	0x3
	.2byte	0x128
	.4byte	0xfc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0x11
	.4byte	.LASF261
	.byte	0x3
	.2byte	0x129
	.4byte	0xfd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0x11
	.4byte	.LASF262
	.byte	0x3
	.2byte	0x12a
	.4byte	0xfe6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0x11
	.4byte	.LASF263
	.byte	0x3
	.2byte	0x12b
	.4byte	0xff6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0x11
	.4byte	.LASF264
	.byte	0x3
	.2byte	0x12c
	.4byte	0x1006
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0x11
	.4byte	.LASF265
	.byte	0x3
	.2byte	0x12d
	.4byte	0x1016
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0x11
	.4byte	.LASF266
	.byte	0x3
	.2byte	0x12e
	.4byte	0x1026
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xc
	.4byte	0x7dc
	.4byte	0xfd6
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0x7fd
	.4byte	0xfe6
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0x81e
	.4byte	0xff6
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0x83f
	.4byte	0x1006
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0x861
	.4byte	0x1016
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0x883
	.4byte	0x1026
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0x8a5
	.4byte	0x1036
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF267
	.byte	0x3
	.2byte	0x12f
	.4byte	0xf40
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1048
	.uleb128 0x23
	.uleb128 0x13
	.4byte	.LASF268
	.byte	0x44
	.byte	0x11
	.byte	0x1a
	.4byte	0x1144
	.uleb128 0x14
	.4byte	.LASF269
	.byte	0x11
	.byte	0x1b
	.4byte	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF270
	.byte	0x11
	.byte	0x1c
	.4byte	0x551
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF271
	.byte	0x11
	.byte	0x1d
	.4byte	0x588
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF272
	.byte	0x11
	.byte	0x1e
	.4byte	0x593
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF273
	.byte	0x11
	.byte	0x1f
	.4byte	0x572
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x14
	.4byte	.LASF274
	.byte	0x11
	.byte	0x20
	.4byte	0x57d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.4byte	.LASF275
	.byte	0x11
	.byte	0x21
	.4byte	0x567
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.4byte	.LASF276
	.byte	0x11
	.byte	0x22
	.4byte	0x55c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.4byte	.LASF277
	.byte	0x11
	.byte	0x30
	.4byte	0x546
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x14
	.4byte	.LASF278
	.byte	0x11
	.byte	0x31
	.4byte	0x257
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.4byte	.LASF279
	.byte	0x11
	.byte	0x32
	.4byte	0x546
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x14
	.4byte	.LASF280
	.byte	0x11
	.byte	0x33
	.4byte	0x257
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.4byte	.LASF281
	.byte	0x11
	.byte	0x34
	.4byte	0x546
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.4byte	.LASF282
	.byte	0x11
	.byte	0x35
	.4byte	0x257
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x14
	.4byte	.LASF283
	.byte	0x11
	.byte	0x36
	.4byte	0x257
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x14
	.4byte	.LASF284
	.byte	0x11
	.byte	0x37
	.4byte	0x257
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x14
	.4byte	.LASF285
	.byte	0x11
	.byte	0x38
	.4byte	0x1144
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0xc
	.4byte	0x257
	.4byte	0x1154
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0x1
	.byte	0x0
	.uleb128 0x24
	.byte	0x8
	.byte	0x12
	.byte	0x10
	.4byte	0x1179
	.uleb128 0x14
	.4byte	.LASF286
	.byte	0x12
	.byte	0x11
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF287
	.byte	0x12
	.byte	0x12
	.4byte	0x27f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF288
	.byte	0x12
	.byte	0x13
	.4byte	0x1154
	.uleb128 0x25
	.byte	0x4
	.byte	0x13
	.byte	0x47
	.4byte	0x11ae
	.uleb128 0x26
	.4byte	.LASF290
	.byte	0x13
	.byte	0x48
	.4byte	0xbe
	.uleb128 0x26
	.4byte	.LASF291
	.byte	0x13
	.byte	0x49
	.4byte	0xbe
	.uleb128 0x26
	.4byte	.LASF165
	.byte	0x13
	.byte	0x4a
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x13
	.4byte	.LASF292
	.byte	0xc
	.byte	0x13
	.byte	0x45
	.4byte	0x11ed
	.uleb128 0x14
	.4byte	.LASF293
	.byte	0x13
	.byte	0x46
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.4byte	0x1184
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF294
	.byte	0x13
	.byte	0x4c
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF295
	.byte	0x13
	.byte	0x4d
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF296
	.byte	0x13
	.byte	0x4e
	.4byte	0x11ae
	.uleb128 0x13
	.4byte	.LASF297
	.byte	0x98
	.byte	0x13
	.byte	0x50
	.4byte	0x1333
	.uleb128 0x14
	.4byte	.LASF298
	.byte	0x13
	.byte	0x52
	.4byte	0x4c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF299
	.byte	0x13
	.byte	0x53
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF300
	.byte	0x13
	.byte	0x54
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF301
	.byte	0x13
	.byte	0x55
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF302
	.byte	0x13
	.byte	0x56
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.4byte	.LASF303
	.byte	0x13
	.byte	0x57
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.4byte	.LASF304
	.byte	0x13
	.byte	0x58
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.4byte	.LASF305
	.byte	0x13
	.byte	0x59
	.4byte	0x1333
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x14
	.4byte	.LASF306
	.byte	0x13
	.byte	0x5a
	.4byte	0x1343
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x14
	.4byte	.LASF307
	.byte	0x13
	.byte	0x5b
	.4byte	0x1359
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x14
	.4byte	.LASF308
	.byte	0x13
	.byte	0x5c
	.4byte	0x1359
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0x14
	.4byte	.LASF309
	.byte	0x13
	.byte	0x5d
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x14
	.4byte	.LASF310
	.byte	0x13
	.byte	0x60
	.4byte	0x1369
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x14
	.4byte	.LASF311
	.byte	0x13
	.byte	0x61
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x14
	.4byte	.LASF312
	.byte	0x13
	.byte	0x63
	.4byte	0xb3
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x14
	.4byte	.LASF313
	.byte	0x13
	.byte	0x65
	.4byte	0x1ce
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0x14
	.4byte	.LASF314
	.byte	0x13
	.byte	0x68
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x91
	.uleb128 0x14
	.4byte	.LASF315
	.byte	0x13
	.byte	0x69
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x92
	.uleb128 0x14
	.4byte	.LASF316
	.byte	0x13
	.byte	0x6a
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x93
	.uleb128 0x14
	.4byte	.LASF317
	.byte	0x13
	.byte	0x6b
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x14
	.4byte	.LASF318
	.byte	0x13
	.byte	0x6c
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x95
	.byte	0x0
	.uleb128 0xc
	.4byte	0x4c2
	.4byte	0x1343
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0x6
	.byte	0x0
	.uleb128 0xc
	.4byte	0x1353
	.4byte	0x1353
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11ed
	.uleb128 0xc
	.4byte	0xc9
	.4byte	0x1369
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0x6
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbe
	.4byte	0x1379
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.4byte	.LASF319
	.byte	0x1
	.byte	0x13
	.byte	0x73
	.4byte	0x13c2
	.uleb128 0x7
	.4byte	.LASF320
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF321
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF322
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF323
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF324
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF325
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF326
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF327
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF328
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF329
	.sleb128 10
	.byte	0x0
	.uleb128 0x13
	.4byte	.LASF330
	.byte	0xc
	.byte	0x14
	.byte	0x4
	.4byte	0x13f9
	.uleb128 0x14
	.4byte	.LASF331
	.byte	0x14
	.byte	0x5
	.4byte	0x4c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF332
	.byte	0x14
	.byte	0x6
	.4byte	0x4c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF333
	.byte	0x14
	.byte	0x7
	.4byte	0x4c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF334
	.byte	0x14
	.byte	0x8
	.4byte	0x13c2
	.uleb128 0x27
	.4byte	.LASF397
	.byte	0x2
	.byte	0x88
	.byte	0x1
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF398
	.byte	0x1
	.2byte	0x1d2
	.byte	0x1
	.byte	0x1
	.4byte	0x1458
	.uleb128 0x29
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x1d2
	.4byte	0xbe
	.uleb128 0x29
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x1d2
	.4byte	0xf4
	.uleb128 0x2a
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x1d4
	.4byte	0xbe
	.uleb128 0x2a
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x1d5
	.4byte	0xbe
	.uleb128 0x2a
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x1d6
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF399
	.byte	0x3
	.2byte	0x151
	.byte	0x3
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF400
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.byte	0x1
	.4byte	0x147b
	.uleb128 0x2d
	.4byte	.LASF337
	.byte	0x1
	.byte	0x8d
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF372
	.byte	0x1
	.byte	0x3a
	.4byte	.LFB168
	.4byte	.LFE168
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF339
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.4byte	0xbe
	.4byte	.LFB175
	.4byte	.LFE175
	.byte	0x1
	.byte	0x5d
	.4byte	0x14c3
	.uleb128 0x30
	.4byte	.LASF341
	.byte	0x1
	.byte	0x7b
	.4byte	0x98b
	.4byte	.LLST2
	.uleb128 0x31
	.4byte	.LASF338
	.byte	0x1
	.byte	0x7d
	.4byte	0x14c3
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x14c9
	.uleb128 0xf
	.4byte	0x9bf
	.uleb128 0x32
	.4byte	0x1461
	.4byte	.LFB178
	.4byte	.LFE178
	.4byte	.LLST3
	.4byte	0x14ed
	.uleb128 0x33
	.4byte	0x146f
	.4byte	.LLST4
	.byte	0x0
	.uleb128 0x34
	.byte	0x1
	.4byte	.LASF401
	.byte	0x1
	.byte	0xec
	.4byte	0xbe
	.4byte	.LFB181
	.4byte	.LFE181
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF340
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.4byte	0x288
	.4byte	.LFB182
	.4byte	.LFE182
	.byte	0x1
	.byte	0x5d
	.4byte	0x152c
	.uleb128 0x35
	.ascii	"i\000"
	.byte	0x1
	.byte	0xf1
	.4byte	0xbe
	.4byte	.LLST7
	.byte	0x0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x1b1
	.byte	0x1
	.4byte	.LFB189
	.4byte	.LFE189
	.4byte	.LLST8
	.4byte	0x1557
	.uleb128 0x37
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x1b1
	.4byte	0xf4
	.4byte	.LLST9
	.byte	0x0
	.uleb128 0x38
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x1ed
	.byte	0x1
	.4byte	0x1573
	.uleb128 0x39
	.uleb128 0x2a
	.4byte	.LASF343
	.byte	0x1
	.2byte	0x1f6
	.4byte	0xee1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF402
	.byte	0x1
	.2byte	0x204
	.byte	0x1
	.4byte	.LFB192
	.4byte	.LFE192
	.4byte	.LLST10
	.4byte	0x165c
	.uleb128 0x37
	.4byte	.LASF343
	.byte	0x1
	.2byte	0x204
	.4byte	0xbe
	.4byte	.LLST11
	.uleb128 0x3b
	.4byte	.LASF344
	.byte	0x1
	.2byte	0x206
	.4byte	0x166c
	.byte	0x5
	.byte	0x3
	.4byte	keyMask.7863
	.uleb128 0x3b
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x210
	.4byte	0xbe
	.byte	0x5
	.byte	0x3
	.4byte	lastKeys.7864
	.uleb128 0x2a
	.4byte	.LASF346
	.byte	0x1
	.2byte	0x211
	.4byte	0xee1
	.uleb128 0x3b
	.4byte	.LASF347
	.byte	0x1
	.2byte	0x212
	.4byte	0xee1
	.byte	0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x3c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x213
	.4byte	0xd4
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x3d
	.4byte	0x140d
	.4byte	.LBB26
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x217
	.4byte	0x1637
	.uleb128 0x3e
	.4byte	0x1427
	.uleb128 0x3e
	.4byte	0x141b
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x40
	.4byte	0x1433
	.4byte	.LLST12
	.uleb128 0x40
	.4byte	0x143f
	.4byte	.LLST13
	.uleb128 0x41
	.4byte	0x144b
	.byte	0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x42
	.4byte	0x1404
	.4byte	.LBB30
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.2byte	0x1e3
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
	.4byte	0x1557
	.4byte	.LBB42
	.4byte	.LBE42
	.byte	0x1
	.2byte	0x21c
	.uleb128 0x44
	.4byte	.LBB44
	.4byte	.LBE44
	.uleb128 0x40
	.4byte	0x1565
	.4byte	.LLST14
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbe
	.4byte	0x166c
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.4byte	0x165c
	.uleb128 0x38
	.4byte	.LASF349
	.byte	0x1
	.2byte	0x222
	.byte	0x1
	.4byte	0x1697
	.uleb128 0x2a
	.4byte	.LASF343
	.byte	0x1
	.2byte	0x224
	.4byte	0xbe
	.uleb128 0x2a
	.4byte	.LASF350
	.byte	0x1
	.2byte	0x225
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x45
	.byte	0x1
	.4byte	.LASF354
	.byte	0x1
	.2byte	0x25d
	.4byte	.LFB194
	.4byte	.LFE194
	.4byte	.LLST15
	.4byte	0x16f6
	.uleb128 0x3d
	.4byte	0x1671
	.4byte	.LBB48
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.2byte	0x263
	.4byte	0x16dd
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0xa8
	.uleb128 0x40
	.4byte	0x167e
	.4byte	.LLST16
	.uleb128 0x40
	.4byte	0x168a
	.4byte	.LLST17
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
	.4byte	.LBB54
	.4byte	.LBE54
	.uleb128 0x3b
	.4byte	.LASF343
	.byte	0x1
	.2byte	0x266
	.4byte	0xee1
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x46
	.4byte	.LASF403
	.byte	0x1
	.2byte	0x17c
	.4byte	.LFB185
	.4byte	.LFE185
	.4byte	.LLST18
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF352
	.byte	0x1
	.2byte	0x199
	.byte	0x1
	.4byte	.LFB187
	.4byte	.LFE187
	.4byte	.LLST19
	.4byte	0x1735
	.uleb128 0x47
	.ascii	"irq\000"
	.byte	0x1
	.2byte	0x199
	.4byte	0xbe
	.4byte	.LLST20
	.byte	0x0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF353
	.byte	0x1
	.2byte	0x18a
	.byte	0x1
	.4byte	.LFB186
	.4byte	.LFE186
	.4byte	.LLST21
	.4byte	0x1760
	.uleb128 0x37
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x18a
	.4byte	0xb3
	.4byte	.LLST22
	.byte	0x0
	.uleb128 0x45
	.byte	0x1
	.4byte	.LASF355
	.byte	0x1
	.2byte	0x172
	.4byte	.LFB184
	.4byte	.LFE184
	.4byte	.LLST23
	.4byte	0x178a
	.uleb128 0x48
	.4byte	0x1458
	.4byte	.LBB55
	.4byte	.LBE55
	.byte	0x1
	.2byte	0x176
	.byte	0x0
	.uleb128 0x49
	.byte	0x1
	.4byte	.LASF356
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.4byte	0xf4
	.4byte	.LFB183
	.4byte	.LFE183
	.4byte	.LLST24
	.4byte	0x1813
	.uleb128 0x30
	.4byte	.LASF357
	.byte	0x1
	.byte	0xf7
	.4byte	0x288
	.4byte	.LLST25
	.uleb128 0x4a
	.4byte	.LASF358
	.byte	0x1
	.byte	0xf9
	.4byte	0xa92
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x4b
	.ascii	"rom\000"
	.byte	0x1
	.byte	0xfa
	.4byte	0x69
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x4c
	.ascii	"bit\000"
	.byte	0x1
	.byte	0xfb
	.4byte	0xbe
	.4byte	.LLST26
	.uleb128 0x4d
	.4byte	.LASF359
	.byte	0x1
	.2byte	0x142
	.4byte	0x1813
	.4byte	.LLST27
	.uleb128 0x42
	.4byte	0x1404
	.4byte	.LBB57
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.2byte	0x16d
	.uleb128 0x48
	.4byte	0x1458
	.4byte	.LBB60
	.4byte	.LBE60
	.byte	0x1
	.2byte	0x168
	.byte	0x0
	.uleb128 0xf
	.4byte	0xd4
	.uleb128 0x4e
	.byte	0x1
	.4byte	.LASF360
	.byte	0x1
	.byte	0xc0
	.4byte	0xf4
	.4byte	.LFB180
	.4byte	.LFE180
	.4byte	.LLST28
	.4byte	0x1899
	.uleb128 0x4b
	.ascii	"dir\000"
	.byte	0x1
	.byte	0xcc
	.4byte	0x1899
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x4b
	.ascii	"st\000"
	.byte	0x1
	.byte	0xcd
	.4byte	0x1049
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x4a
	.4byte	.LASF361
	.byte	0x1
	.byte	0xce
	.4byte	0x189f
	.byte	0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x4f
	.4byte	.Ldebug_ranges0+0xe0
	.4byte	0x1874
	.uleb128 0x31
	.4byte	.LASF362
	.byte	0x1
	.byte	0xd9
	.4byte	0x288
	.byte	0x0
	.uleb128 0x50
	.4byte	0x1458
	.4byte	.LBB65
	.4byte	.Ldebug_ranges0+0xf8
	.byte	0x1
	.byte	0xe6
	.uleb128 0x51
	.4byte	0x1461
	.4byte	.LBB68
	.4byte	.Ldebug_ranges0+0x110
	.byte	0x1
	.byte	0xe7
	.uleb128 0x3e
	.4byte	0x14e3
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1179
	.uleb128 0xc
	.4byte	0x1c7
	.4byte	0x18af
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0xff
	.byte	0x0
	.uleb128 0x49
	.byte	0x1
	.4byte	.LASF363
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.4byte	0x69
	.4byte	.LFB179
	.4byte	.LFE179
	.4byte	.LLST29
	.4byte	0x18e7
	.uleb128 0x35
	.ascii	"a\000"
	.byte	0x1
	.byte	0xbb
	.4byte	0x1042
	.4byte	.LLST30
	.uleb128 0x35
	.ascii	"b\000"
	.byte	0x1
	.byte	0xbb
	.4byte	0x1042
	.4byte	.LLST31
	.byte	0x0
	.uleb128 0x49
	.byte	0x1
	.4byte	.LASF364
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.4byte	0x27f
	.4byte	.LFB177
	.4byte	.LFE177
	.4byte	.LLST32
	.4byte	0x1914
	.uleb128 0x30
	.4byte	.LASF85
	.byte	0x1
	.byte	0x88
	.4byte	0xbe
	.4byte	.LLST33
	.byte	0x0
	.uleb128 0x52
	.byte	0x1
	.4byte	.LASF365
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.4byte	.LFB169
	.4byte	.LFE169
	.4byte	.LLST34
	.4byte	0x195b
	.uleb128 0x30
	.4byte	.LASF366
	.byte	0x1
	.byte	0x46
	.4byte	0x4c8
	.4byte	.LLST35
	.uleb128 0x30
	.4byte	.LASF159
	.byte	0x1
	.byte	0x46
	.4byte	0xbe
	.4byte	.LLST36
	.uleb128 0x30
	.4byte	.LASF85
	.byte	0x1
	.byte	0x46
	.4byte	0xbe
	.4byte	.LLST37
	.byte	0x0
	.uleb128 0x52
	.byte	0x1
	.4byte	.LASF367
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.4byte	.LFB174
	.4byte	.LFE174
	.4byte	.LLST38
	.4byte	0x19c7
	.uleb128 0x30
	.4byte	.LASF341
	.byte	0x1
	.byte	0x74
	.4byte	0x98b
	.4byte	.LLST39
	.uleb128 0x30
	.4byte	.LASF366
	.byte	0x1
	.byte	0x74
	.4byte	0x27f
	.4byte	.LLST40
	.uleb128 0x30
	.4byte	.LASF159
	.byte	0x1
	.byte	0x74
	.4byte	0xbe
	.4byte	.LLST41
	.uleb128 0x30
	.4byte	.LASF85
	.byte	0x1
	.byte	0x74
	.4byte	0xbe
	.4byte	.LLST42
	.uleb128 0x31
	.4byte	.LASF338
	.byte	0x1
	.byte	0x76
	.4byte	0x14c3
	.uleb128 0x31
	.4byte	.LASF368
	.byte	0x1
	.byte	0x77
	.4byte	0xee1
	.byte	0x0
	.uleb128 0x52
	.byte	0x1
	.4byte	.LASF369
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.4byte	.LFB173
	.4byte	.LFE173
	.4byte	.LLST43
	.4byte	0x1a46
	.uleb128 0x30
	.4byte	.LASF341
	.byte	0x1
	.byte	0x65
	.4byte	0x98b
	.4byte	.LLST44
	.uleb128 0x30
	.4byte	.LASF366
	.byte	0x1
	.byte	0x65
	.4byte	0x27f
	.4byte	.LLST45
	.uleb128 0x30
	.4byte	.LASF159
	.byte	0x1
	.byte	0x65
	.4byte	0xbe
	.4byte	.LLST46
	.uleb128 0x30
	.4byte	.LASF370
	.byte	0x1
	.byte	0x65
	.4byte	0xbe
	.4byte	.LLST47
	.uleb128 0x53
	.4byte	.LASF338
	.byte	0x1
	.byte	0x67
	.4byte	0x14c3
	.4byte	.LLST48
	.uleb128 0x31
	.4byte	.LASF368
	.byte	0x1
	.byte	0x68
	.4byte	0xee1
	.uleb128 0x53
	.4byte	.LASF85
	.byte	0x1
	.byte	0x69
	.4byte	0xbe
	.4byte	.LLST49
	.byte	0x0
	.uleb128 0x52
	.byte	0x1
	.4byte	.LASF371
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.4byte	.LFB176
	.4byte	.LFE176
	.4byte	.LLST50
	.4byte	0x1a8d
	.uleb128 0x30
	.4byte	.LASF341
	.byte	0x1
	.byte	0x81
	.4byte	0x98b
	.4byte	.LLST51
	.uleb128 0x30
	.4byte	.LASF366
	.byte	0x1
	.byte	0x81
	.4byte	0x27f
	.4byte	.LLST52
	.uleb128 0x30
	.4byte	.LASF370
	.byte	0x1
	.byte	0x81
	.4byte	0xbe
	.4byte	.LLST53
	.byte	0x0
	.uleb128 0x54
	.byte	0x1
	.4byte	.LASF373
	.byte	0x1
	.2byte	0x19f
	.4byte	.LFB188
	.4byte	.LFE188
	.4byte	.LLST54
	.uleb128 0x52
	.byte	0x1
	.4byte	.LASF374
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.4byte	.LFB172
	.4byte	.LFE172
	.4byte	.LLST55
	.4byte	0x1ae5
	.uleb128 0x30
	.4byte	.LASF366
	.byte	0x1
	.byte	0x5d
	.4byte	0x4c8
	.4byte	.LLST56
	.uleb128 0x30
	.4byte	.LASF375
	.byte	0x1
	.byte	0x5d
	.4byte	0xbe
	.4byte	.LLST57
	.uleb128 0x31
	.4byte	.LASF376
	.byte	0x1
	.byte	0x5f
	.4byte	0xee1
	.byte	0x0
	.uleb128 0x52
	.byte	0x1
	.4byte	.LASF377
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.4byte	.LFB171
	.4byte	.LFE171
	.4byte	.LLST58
	.4byte	0x1b28
	.uleb128 0x30
	.4byte	.LASF366
	.byte	0x1
	.byte	0x55
	.4byte	0x4c8
	.4byte	.LLST59
	.uleb128 0x30
	.4byte	.LASF375
	.byte	0x1
	.byte	0x55
	.4byte	0xbe
	.4byte	.LLST60
	.uleb128 0x31
	.4byte	.LASF376
	.byte	0x1
	.byte	0x57
	.4byte	0xee1
	.byte	0x0
	.uleb128 0x52
	.byte	0x1
	.4byte	.LASF378
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.4byte	.LFB170
	.4byte	.LFE170
	.4byte	.LLST61
	.4byte	0x1b6b
	.uleb128 0x30
	.4byte	.LASF366
	.byte	0x1
	.byte	0x4d
	.4byte	0x4c8
	.4byte	.LLST62
	.uleb128 0x30
	.4byte	.LASF375
	.byte	0x1
	.byte	0x4d
	.4byte	0xbe
	.4byte	.LLST63
	.uleb128 0x31
	.4byte	.LASF376
	.byte	0x1
	.byte	0x4f
	.4byte	0xee1
	.byte	0x0
	.uleb128 0x2a
	.4byte	.LASF379
	.byte	0xb
	.2byte	0x12e
	.4byte	0x1b77
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4b6
	.uleb128 0x4a
	.4byte	.LASF380
	.byte	0x1
	.byte	0x23
	.4byte	0x69
	.byte	0x5
	.byte	0x3
	.4byte	g_rom
	.uleb128 0x4a
	.4byte	.LASF381
	.byte	0x1
	.byte	0x24
	.4byte	0xbe
	.byte	0x5
	.byte	0x3
	.4byte	g_romSize
	.uleb128 0x4a
	.4byte	.LASF382
	.byte	0x1
	.byte	0x25
	.4byte	0x13f9
	.byte	0x5
	.byte	0x3
	.4byte	g_vramHHeap
	.uleb128 0x4a
	.4byte	.LASF383
	.byte	0x1
	.byte	0x27
	.4byte	0xbe
	.byte	0x5
	.byte	0x3
	.4byte	g_romCount
	.uleb128 0xc
	.4byte	0x246
	.4byte	0x1bd1
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0x3f
	.byte	0x0
	.uleb128 0x4a
	.4byte	.LASF384
	.byte	0x1
	.byte	0x28
	.4byte	0x1bc1
	.byte	0x5
	.byte	0x3
	.4byte	g_romNames
	.uleb128 0x4a
	.4byte	.LASF385
	.byte	0x1
	.byte	0x29
	.4byte	0xd4
	.byte	0x5
	.byte	0x3
	.4byte	g_pauseCount
	.uleb128 0x4a
	.4byte	.LASF386
	.byte	0x1
	.byte	0x2a
	.4byte	0xf4
	.byte	0x5
	.byte	0x3
	.4byte	g_paused
	.uleb128 0x55
	.4byte	.LASF387
	.byte	0x15
	.byte	0x56
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x55
	.4byte	.LASF388
	.byte	0x15
	.byte	0x57
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x1c2e
	.4byte	0x1c2e
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1c34
	.uleb128 0x56
	.4byte	0x57
	.uleb128 0x57
	.4byte	.LASF389
	.byte	0x9
	.2byte	0x19c
	.4byte	0x1c1e
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x3a1
	.4byte	0x1c57
	.uleb128 0xd
	.4byte	0x1c4
	.byte	0x7
	.byte	0x0
	.uleb128 0x57
	.4byte	.LASF390
	.byte	0x9
	.2byte	0x19f
	.4byte	0x1c47
	.byte	0x1
	.byte	0x1
	.uleb128 0x57
	.4byte	.LASF391
	.byte	0xb
	.2byte	0x12b
	.4byte	0x4b6
	.byte	0x1
	.byte	0x1
	.uleb128 0x58
	.4byte	.LASF392
	.byte	0x3
	.2byte	0x149
	.4byte	0x1c82
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1036
	.uleb128 0x59
	.4byte	.LASF393
	.byte	0x1
	.byte	0x1f
	.4byte	0x1036
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	g_neoContext
	.uleb128 0x59
	.4byte	.LASF394
	.byte	0x1
	.byte	0x22
	.4byte	0xa92
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	g_header
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x13
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x4e
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
	.uleb128 0x4f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x50
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x54
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x55
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
	.uleb128 0x56
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
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
	.4byte	0x21b
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1cad
	.4byte	0x147b
	.ascii	"neoSystemIPCSync\000"
	.4byte	0x148d
	.ascii	"neoSystemRegionSize\000"
	.4byte	0x14ce
	.ascii	"neoSystemSetClockDivide\000"
	.4byte	0x14ed
	.ascii	"neoSystemGetRomCount\000"
	.4byte	0x1503
	.ascii	"neoSystemGetRomName\000"
	.4byte	0x152c
	.ascii	"neoSystemSetEnabled\000"
	.4byte	0x1697
	.ascii	"neoSystemExecute\000"
	.4byte	0x170a
	.ascii	"neoSystemIrq\000"
	.4byte	0x1735
	.ascii	"neoSystemIrqAk\000"
	.4byte	0x1760
	.ascii	"neoSystemClose\000"
	.4byte	0x178a
	.ascii	"neoSystemOpen\000"
	.4byte	0x1818
	.ascii	"neoSystemInit\000"
	.4byte	0x18af
	.ascii	"stringCompare\000"
	.4byte	0x18e7
	.ascii	"neoSystemVramHAlloc\000"
	.4byte	0x1914
	.ascii	"neoSystemReadRom\000"
	.4byte	0x195b
	.ascii	"neoSystemReadRegion\000"
	.4byte	0x19c7
	.ascii	"neoSystemLoadRegionEx\000"
	.4byte	0x1a46
	.ascii	"neoSystemLoadRegion\000"
	.4byte	0x1a8d
	.ascii	"neoSystemReset\000"
	.4byte	0x1aa2
	.ascii	"neoSystemLoadTile\000"
	.4byte	0x1ae5
	.ascii	"neoSystemLoadSprite2\000"
	.4byte	0x1b28
	.ascii	"neoSystemLoadSprite\000"
	.4byte	0x1c73
	.ascii	"g_neo\000"
	.4byte	0x1c88
	.ascii	"g_neoContext\000"
	.4byte	0x1c9a
	.ascii	"g_header\000"
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
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB53-.Ltext0
	.4byte	.LBE53-.Ltext0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB57-.Ltext0
	.4byte	.LBE57-.Ltext0
	.4byte	.LBB62-.Ltext0
	.4byte	.LBE62-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB63-.Ltext0
	.4byte	.LBE63-.Ltext0
	.4byte	.LBB64-.Ltext0
	.4byte	.LBE64-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB65-.Ltext0
	.4byte	.LBE65-.Ltext0
	.4byte	.LBB71-.Ltext0
	.4byte	.LBE71-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	.LBB72-.Ltext0
	.4byte	.LBE72-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF248:
	.ascii	"coinReg\000"
.LASF369:
	.ascii	"neoSystemLoadRegionEx\000"
.LASF190:
	.ascii	"romEntry\000"
.LASF284:
	.ascii	"st_blocks\000"
.LASF294:
	.ascii	"audioFrame\000"
.LASF310:
	.ascii	"arm9Args\000"
.LASF259:
	.ascii	"_TNeoContext\000"
.LASF163:
	.ascii	"initOffset\000"
.LASF301:
	.ascii	"arm9FifoSent\000"
.LASF255:
	.ascii	"debug\000"
.LASF244:
	.ascii	"ctrl1Reg\000"
.LASF395:
	.ascii	"GNU C 4.4.3\000"
.LASF79:
	.ascii	"centerX\000"
.LASF80:
	.ascii	"centerY\000"
.LASF42:
	.ascii	"char\000"
.LASF110:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF296:
	.ascii	"TNeoAdpcmControl\000"
.LASF204:
	.ascii	"pBios\000"
.LASF287:
	.ascii	"dirStruct\000"
.LASF359:
	.ascii	"bankSize\000"
.LASF55:
	.ascii	"POWER_ALL\000"
.LASF218:
	.ascii	"scanline\000"
.LASF117:
	.ascii	"OBJSIZE_64\000"
.LASF62:
	.ascii	"IRQ_MASKS\000"
.LASF252:
	.ascii	"sramProtectLatch\000"
.LASF367:
	.ascii	"neoSystemReadRegion\000"
.LASF130:
	.ascii	"flags\000"
.LASF314:
	.ascii	"globalAudioEnabled\000"
.LASF44:
	.ascii	"PM_SOUND_MUTE\000"
.LASF322:
	.ascii	"NEOARM7_RESUME\000"
.LASF184:
	.ascii	"protection\000"
.LASF151:
	.ascii	"TRead8Func\000"
.LASF94:
	.ascii	"GL_MODELVIEW\000"
.LASF101:
	.ascii	"texturePtrs\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF297:
	.ascii	"_TNeoIPC\000"
.LASF183:
	.ascii	"version\000"
.LASF34:
	.ascii	"IRQ_FIFO_NOT_EMPTY\000"
.LASF354:
	.ascii	"neoSystemExecute\000"
.LASF372:
	.ascii	"neoSystemIPCSync\000"
.LASF329:
	.ascii	"NEOARM9_AUDIORESULT\000"
.LASF283:
	.ascii	"st_blksize\000"
.LASF206:
	.ascii	"pSram\000"
.LASF169:
	.ascii	"NEOROM_BIOS\000"
.LASF327:
	.ascii	"NEOARM7_LIDOPEN\000"
.LASF265:
	.ascii	"cpuWrite32Table\000"
.LASF32:
	.ascii	"IRQ_IPC_SYNC\000"
.LASF373:
	.ascii	"neoSystemReset\000"
.LASF323:
	.ascii	"NEOARM7_NMI\000"
.LASF140:
	.ascii	"write8\000"
.LASF257:
	.ascii	"frameCounter\000"
.LASF331:
	.ascii	"pBase\000"
.LASF135:
	.ascii	"membase\000"
.LASF164:
	.ascii	"freqCounter\000"
.LASF185:
	.ascii	"sramProtection\000"
.LASF21:
	.ascii	"IRQ_TIMER0\000"
.LASF22:
	.ascii	"IRQ_TIMER1\000"
.LASF23:
	.ascii	"IRQ_TIMER2\000"
.LASF24:
	.ascii	"IRQ_TIMER3\000"
.LASF81:
	.ascii	"scaleX\000"
.LASF313:
	.ascii	"adpcmaFinished\000"
.LASF177:
	.ascii	"NEOROM_COUNT\000"
.LASF224:
	.ascii	"spriteMask\000"
.LASF187:
	.ascii	"audio2Offset\000"
.LASF143:
	.ascii	"fetch8\000"
.LASF223:
	.ascii	"autoAnimationCounter\000"
.LASF174:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF328:
	.ascii	"NEOARM9_READAUDIO\000"
.LASF295:
	.ascii	"timeStamp\000"
.LASF278:
	.ascii	"st_spare1\000"
.LASF349:
	.ascii	"neoSystemDoFrame\000"
.LASF306:
	.ascii	"adpcmControl\000"
.LASF285:
	.ascii	"st_spare4\000"
.LASF64:
	.ascii	"KEY_A\000"
.LASF48:
	.ascii	"POWER_LCD\000"
.LASF258:
	.ascii	"varEnd\000"
.LASF221:
	.ascii	"vramBaseMask\000"
.LASF325:
	.ascii	"NEOARM7_BACKLIGHTON\000"
.LASF254:
	.ascii	"active\000"
.LASF246:
	.ascii	"ctrl3Reg\000"
.LASF378:
	.ascii	"neoSystemLoadSprite\000"
.LASF138:
	.ascii	"read16\000"
.LASF118:
	.ascii	"OBJCOLOR_16\000"
.LASF226:
	.ascii	"pTileBuffer\000"
.LASF332:
	.ascii	"pAlloc\000"
.LASF286:
	.ascii	"device\000"
.LASF121:
	.ascii	"ino_t\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF154:
	.ascii	"TWrite8Func\000"
.LASF374:
	.ascii	"neoSystemLoadTile\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF292:
	.ascii	"_TNeoAdpcaControl\000"
.LASF13:
	.ascii	"float\000"
.LASF262:
	.ascii	"cpuRead32Table\000"
.LASF208:
	.ascii	"pVram\000"
.LASF281:
	.ascii	"st_ctime\000"
.LASF234:
	.ascii	"watchdogCounter\000"
.LASF65:
	.ascii	"KEY_B\000"
.LASF375:
	.ascii	"index\000"
.LASF392:
	.ascii	"g_neo\000"
.LASF263:
	.ascii	"cpuWrite8Table\000"
.LASF318:
	.ascii	"misc\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF73:
	.ascii	"KEY_L\000"
.LASF105:
	.ascii	"nameCount\000"
.LASF72:
	.ascii	"KEY_R\000"
.LASF209:
	.ascii	"pSpriteRam\000"
.LASF37:
	.ascii	"IRQ_GEOMETRY_FIFO\000"
.LASF251:
	.ascii	"fixedRomLatch\000"
.LASF74:
	.ascii	"KEY_X\000"
.LASF75:
	.ascii	"KEY_Y\000"
.LASF267:
	.ascii	"TNeoContext\000"
.LASF289:
	.ascii	"fill\000"
.LASF128:
	.ascii	"Cyclone\000"
.LASF279:
	.ascii	"st_mtime\000"
.LASF76:
	.ascii	"KEY_TOUCH\000"
.LASF71:
	.ascii	"KEY_DOWN\000"
.LASF150:
	.ascii	"TCycloneContext\000"
.LASF153:
	.ascii	"TRead32Func\000"
.LASF291:
	.ascii	"endAddr\000"
.LASF25:
	.ascii	"IRQ_NETWORK\000"
.LASF41:
	.ascii	"IRQ_ALL\000"
.LASF53:
	.ascii	"POWER_SWAP_LCDS\000"
.LASF68:
	.ascii	"KEY_RIGHT\000"
.LASF342:
	.ascii	"enable\000"
.LASF312:
	.ascii	"audioStreamCount\000"
.LASF346:
	.ascii	"keysChanged\000"
.LASF211:
	.ascii	"bankTable\000"
.LASF268:
	.ascii	"stat\000"
.LASF139:
	.ascii	"read32\000"
.LASF240:
	.ascii	"vramMod\000"
.LASF264:
	.ascii	"cpuWrite16Table\000"
.LASF45:
	.ascii	"PM_BACKLIGHT_BOTTOM\000"
.LASF364:
	.ascii	"neoSystemVramHAlloc\000"
.LASF256:
	.ascii	"keyGrid\000"
.LASF57:
	.ascii	"long int\000"
.LASF397:
	.ascii	"lcdSwap\000"
.LASF242:
	.ascii	"displayControlMask\000"
.LASF159:
	.ascii	"offset\000"
.LASF376:
	.ascii	"romOffset\000"
.LASF274:
	.ascii	"st_gid\000"
.LASF114:
	.ascii	"OBJSIZE_8\000"
.LASF112:
	.ascii	"OBJSHAPE_TALL\000"
.LASF158:
	.ascii	"_TNeoADPCMStream\000"
.LASF271:
	.ascii	"st_mode\000"
.LASF340:
	.ascii	"neoSystemGetRomName\000"
.LASF324:
	.ascii	"NEOARM7_BACKLIGHTOFF\000"
.LASF393:
	.ascii	"g_neoContext\000"
.LASF315:
	.ascii	"audioCommand\000"
.LASF272:
	.ascii	"st_nlink\000"
.LASF361:
	.ascii	"szFilename\000"
.LASF98:
	.ascii	"matrixMode\000"
.LASF16:
	.ascii	"true\000"
.LASF179:
	.ascii	"_TNeoRomEntry\000"
.LASF260:
	.ascii	"cpuRead8Table\000"
.LASF337:
	.ascii	"clock\000"
.LASF36:
	.ascii	"IRQ_CARD_LINE\000"
.LASF10:
	.ascii	"long long int\000"
.LASF103:
	.ascii	"nextBlock\000"
.LASF345:
	.ascii	"lastKeys\000"
.LASF389:
	.ascii	"bgControl\000"
.LASF238:
	.ascii	"sramProtectCount\000"
.LASF30:
	.ascii	"IRQ_KEYS\000"
.LASF336:
	.ascii	"pressed\000"
.LASF399:
	.ascii	"neoResetContext\000"
.LASF232:
	.ascii	"cpuClocksPerScanline\000"
.LASF298:
	.ascii	"pAudioProgram0\000"
.LASF343:
	.ascii	"keys\000"
.LASF385:
	.ascii	"g_pauseCount\000"
.LASF231:
	.ascii	"cpuClockDivide\000"
.LASF157:
	.ascii	"TCheckPcFunc\000"
.LASF40:
	.ascii	"IRQ_WIFI\000"
.LASF106:
	.ascii	"OBJMODE_NORMAL\000"
.LASF379:
	.ascii	"glGlob\000"
.LASF195:
	.ascii	"INTR_COLDBOOT\000"
.LASF136:
	.ascii	"checkpc\000"
.LASF109:
	.ascii	"OBJMODE_BITMAP\000"
.LASF239:
	.ascii	"vramOffset\000"
.LASF87:
	.ascii	"dirty\000"
.LASF146:
	.ascii	"IrqCallback\000"
.LASF38:
	.ascii	"IRQ_LID\000"
.LASF166:
	.ascii	"TNeoADPCMBStream\000"
.LASF241:
	.ascii	"displayControl\000"
.LASF277:
	.ascii	"st_atime\000"
.LASF18:
	.ascii	"IRQ_VBLANK\000"
.LASF82:
	.ascii	"scaleY\000"
.LASF202:
	.ascii	"pRom0\000"
.LASF203:
	.ascii	"pRom1\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF170:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF120:
	.ascii	"time_t\000"
.LASF102:
	.ascii	"activeTexture\000"
.LASF93:
	.ascii	"GL_POSITION\000"
.LASF380:
	.ascii	"g_rom\000"
.LASF137:
	.ascii	"read8\000"
.LASF270:
	.ascii	"st_ino\000"
.LASF381:
	.ascii	"g_romSize\000"
.LASF99:
	.ascii	"clearColor\000"
.LASF133:
	.ascii	"state_flags\000"
.LASF321:
	.ascii	"NEOARM7_PAUSE\000"
.LASF196:
	.ascii	"pVideoWriteTable\000"
.LASF319:
	.ascii	"_TNeoIPCCommand\000"
.LASF309:
	.ascii	"arm7Alive\000"
.LASF198:
	.ascii	"romBankCount\000"
.LASF305:
	.ascii	"pAdpcmBuffer\000"
.LASF191:
	.ascii	"TNeoRomHeader\000"
.LASF307:
	.ascii	"adpcmQueuePos7\000"
.LASF173:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF308:
	.ascii	"adpcmQueuePos9\000"
.LASF31:
	.ascii	"IRQ_CART\000"
.LASF304:
	.ascii	"arm7FifoProcessed\000"
.LASF363:
	.ascii	"stringCompare\000"
.LASF147:
	.ascii	"ResetCallback\000"
.LASF362:
	.ascii	"szExt\000"
.LASF113:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF17:
	.ascii	"bool\000"
.LASF141:
	.ascii	"write16\000"
.LASF236:
	.ascii	"fixedBank\000"
.LASF402:
	.ascii	"neoSystemDoKeys\000"
.LASF54:
	.ascii	"POWER_ALL_2D\000"
.LASF225:
	.ascii	"paletteDirty\000"
.LASF391:
	.ascii	"glGlobalData\000"
.LASF302:
	.ascii	"arm9FifoProcessed\000"
.LASF311:
	.ascii	"arm9Return\000"
.LASF200:
	.ascii	"adpcmb\000"
.LASF215:
	.ascii	"smaBankoffset\000"
.LASF227:
	.ascii	"tileOffsetX\000"
.LASF160:
	.ascii	"step\000"
.LASF67:
	.ascii	"KEY_START\000"
.LASF85:
	.ascii	"size\000"
.LASF178:
	.ascii	"TNeoRomRegion\000"
.LASF371:
	.ascii	"neoSystemLoadRegion\000"
.LASF293:
	.ascii	"command\000"
.LASF4:
	.ascii	"short int\000"
.LASF335:
	.ascii	"mask\000"
.LASF353:
	.ascii	"neoSystemIrqAk\000"
.LASF358:
	.ascii	"header\000"
.LASF243:
	.ascii	"displayCounterLoad\000"
.LASF61:
	.ascii	"long unsigned int\000"
.LASF108:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF46:
	.ascii	"PM_BACKLIGHT_TOP\000"
.LASF50:
	.ascii	"POWER_MATRIX\000"
.LASF280:
	.ascii	"st_spare2\000"
.LASF282:
	.ascii	"st_spare3\000"
.LASF70:
	.ascii	"KEY_UP\000"
.LASF245:
	.ascii	"ctrl2Reg\000"
.LASF49:
	.ascii	"POWER_2D_A\000"
.LASF52:
	.ascii	"POWER_2D_B\000"
.LASF43:
	.ascii	"PM_SOUND_AMP\000"
.LASF299:
	.ascii	"audioProgramSize\000"
.LASF205:
	.ascii	"pRam\000"
.LASF194:
	.ascii	"INTR_DISPLAYPOS\000"
.LASF197:
	.ascii	"spriteCount\000"
.LASF368:
	.ascii	"fileOffset\000"
.LASF100:
	.ascii	"textures\000"
.LASF207:
	.ascii	"pCard\000"
.LASF339:
	.ascii	"neoSystemRegionSize\000"
.LASF60:
	.ascii	"__gid_t\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF161:
	.ascii	"TNeoADPCMStream\000"
.LASF383:
	.ascii	"g_romCount\000"
.LASF341:
	.ascii	"region\000"
.LASF125:
	.ascii	"gid_t\000"
.LASF317:
	.ascii	"audioCommandPending\000"
.LASF78:
	.ascii	"angle\000"
.LASF386:
	.ascii	"g_paused\000"
.LASF142:
	.ascii	"write32\000"
.LASF228:
	.ascii	"tileOffsetY\000"
.LASF124:
	.ascii	"uid_t\000"
.LASF168:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF144:
	.ascii	"fetch16\000"
.LASF387:
	.ascii	"mosaicShadow\000"
.LASF290:
	.ascii	"startAddr\000"
.LASF175:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF261:
	.ascii	"cpuRead16Table\000"
.LASF39:
	.ascii	"IRQ_SPI\000"
.LASF92:
	.ascii	"GL_PROJECTION\000"
.LASF222:
	.ascii	"displayCounter\000"
.LASF365:
	.ascii	"neoSystemReadRom\000"
.LASF320:
	.ascii	"NEOARM7_RESET\000"
.LASF91:
	.ascii	"cur_size\000"
.LASF355:
	.ascii	"neoSystemClose\000"
.LASF27:
	.ascii	"IRQ_DMA1\000"
.LASF28:
	.ascii	"IRQ_DMA2\000"
.LASF29:
	.ascii	"IRQ_DMA3\000"
.LASF235:
	.ascii	"paletteBank\000"
.LASF356:
	.ascii	"neoSystemOpen\000"
.LASF344:
	.ascii	"keyMask\000"
.LASF58:
	.ascii	"__dev_t\000"
.LASF216:
	.ascii	"smaBankbit\000"
.LASF229:
	.ascii	"tileScaleX\000"
.LASF230:
	.ascii	"tileScaleY\000"
.LASF390:
	.ascii	"bgState\000"
.LASF152:
	.ascii	"TRead16Func\000"
.LASF180:
	.ascii	"TNeoRomEntry\000"
.LASF35:
	.ascii	"IRQ_CARD\000"
.LASF360:
	.ascii	"neoSystemInit\000"
.LASF186:
	.ascii	"fixedBankType\000"
.LASF111:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF115:
	.ascii	"OBJSIZE_16\000"
.LASF12:
	.ascii	"uint32\000"
.LASF334:
	.ascii	"TLinearHeap\000"
.LASF326:
	.ascii	"NEOARM7_LIDCLOSE\000"
.LASF88:
	.ascii	"BgState\000"
.LASF59:
	.ascii	"__uid_t\000"
.LASF181:
	.ascii	"_TNeoRomHeader\000"
.LASF247:
	.ascii	"ctrl4Reg\000"
.LASF189:
	.ascii	"name\000"
.LASF253:
	.ascii	"paletteRamLatch\000"
.LASF377:
	.ascii	"neoSystemLoadSprite2\000"
.LASF182:
	.ascii	"magic\000"
.LASF171:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF338:
	.ascii	"pRegion\000"
.LASF20:
	.ascii	"IRQ_VCOUNT\000"
.LASF214:
	.ascii	"smaBankAddr\000"
.LASF219:
	.ascii	"frameCount\000"
.LASF90:
	.ascii	"data\000"
.LASF97:
	.ascii	"gl_hidden_globals\000"
.LASF156:
	.ascii	"TWrite32Func\000"
.LASF107:
	.ascii	"OBJMODE_BLENDED\000"
.LASF129:
	.ascii	"unused\000"
.LASF26:
	.ascii	"IRQ_DMA0\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF119:
	.ascii	"OBJCOLOR_256\000"
.LASF382:
	.ascii	"g_vramHHeap\000"
.LASF350:
	.ascii	"input\000"
.LASF69:
	.ascii	"KEY_LEFT\000"
.LASF366:
	.ascii	"pDst\000"
.LASF63:
	.ascii	"KEYPAD_BITS\000"
.LASF370:
	.ascii	"maxSize\000"
.LASF330:
	.ascii	"_TLinearHeap\000"
.LASF176:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF403:
	.ascii	"neoSystemUpdateIrq\000"
.LASF86:
	.ascii	"type\000"
.LASF348:
	.ascii	"neoSystemLidClose\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF201:
	.ascii	"adpcmActive\000"
.LASF210:
	.ascii	"pPalette\000"
.LASF347:
	.ascii	"keysPressed\000"
.LASF145:
	.ascii	"fetch32\000"
.LASF96:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF33:
	.ascii	"IRQ_FIFO_EMPTY\000"
.LASF149:
	.ascii	"internal\000"
.LASF15:
	.ascii	"false\000"
.LASF66:
	.ascii	"KEY_SELECT\000"
.LASF116:
	.ascii	"OBJSIZE_32\000"
.LASF95:
	.ascii	"GL_TEXTURE\000"
.LASF199:
	.ascii	"adpcm\000"
.LASF352:
	.ascii	"neoSystemIrq\000"
.LASF89:
	.ascii	"DynamicArray\000"
.LASF165:
	.ascii	"frequency\000"
.LASF83:
	.ascii	"scrollX\000"
.LASF276:
	.ascii	"st_size\000"
.LASF351:
	.ascii	"neoSystemSetEnabled\000"
.LASF401:
	.ascii	"neoSystemGetRomCount\000"
.LASF303:
	.ascii	"arm7FifoSent\000"
.LASF333:
	.ascii	"pTop\000"
.LASF388:
	.ascii	"mosaicShadowSub\000"
.LASF273:
	.ascii	"st_uid\000"
.LASF237:
	.ascii	"romBankAddress\000"
.LASF188:
	.ascii	"sectionCount\000"
.LASF84:
	.ascii	"scrollY\000"
.LASF77:
	.ascii	"KEY_LID\000"
.LASF126:
	.ascii	"mode_t\000"
.LASF127:
	.ascii	"nlink_t\000"
.LASF316:
	.ascii	"audioResult\000"
.LASF269:
	.ascii	"st_dev\000"
.LASF0:
	.ascii	"signed char\000"
.LASF162:
	.ascii	"_TNeoADPCMBStream\000"
.LASF167:
	.ascii	"_TNeoRomRegion\000"
.LASF122:
	.ascii	"off_t\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF131:
	.ascii	"prev_pc\000"
.LASF217:
	.ascii	"smaRand\000"
.LASF266:
	.ascii	"cpuCheckPcTable\000"
.LASF19:
	.ascii	"IRQ_HBLANK\000"
.LASF132:
	.ascii	"reserved\000"
.LASF396:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/NeoSystem"
	.ascii	".c\000"
.LASF220:
	.ascii	"pVramBase\000"
.LASF192:
	.ascii	"_TNeoInterrups\000"
.LASF400:
	.ascii	"neoSystemSetClockDivide\000"
.LASF14:
	.ascii	"double\000"
.LASF250:
	.ascii	"screenDarkLatch\000"
.LASF123:
	.ascii	"dev_t\000"
.LASF357:
	.ascii	"szFileName\000"
.LASF56:
	.ascii	"_off_t\000"
.LASF288:
	.ascii	"DIR_ITER\000"
.LASF134:
	.ascii	"cycles\000"
.LASF275:
	.ascii	"st_rdev\000"
.LASF155:
	.ascii	"TWrite16Func\000"
.LASF384:
	.ascii	"g_romNames\000"
.LASF104:
	.ascii	"nextPBlock\000"
.LASF300:
	.ascii	"audioRomSize\000"
.LASF398:
	.ascii	"neoDoInput\000"
.LASF51:
	.ascii	"POWER_3D_CORE\000"
.LASF193:
	.ascii	"INTR_VBLANK\000"
.LASF172:
	.ascii	"NEOROM_AUDODATA\000"
.LASF47:
	.ascii	"PM_SYSTEM_PWR\000"
.LASF249:
	.ascii	"irqVectorLatch\000"
.LASF233:
	.ascii	"irqPending\000"
.LASF394:
	.ascii	"g_header\000"
.LASF212:
	.ascii	"smaAddr0\000"
.LASF213:
	.ascii	"smaAddr1\000"
.LASF148:
	.ascii	"UnrecognizedCallback\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
