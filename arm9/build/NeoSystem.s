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
	.code 16
	.thumb_func
	.type	neoSystemIPCSync, %function
neoSystemIPCSync:
.LFB109:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoSystem.c"
	.loc 1 60 0
	@ lr needed for prologue
	.loc 1 69 0
	@ sp needed for prologue
	bx	lr
.LFE109:
	.size	neoSystemIPCSync, .-neoSystemIPCSync
	.align	2
	.global	neoSystemRegionSize
	.code 16
	.thumb_func
	.type	neoSystemRegionSize, %function
neoSystemRegionSize:
.LFB116:
	.loc 1 125 0
.LVL0:
	ldr	r3, .L5
	lsl	r0, r0, #3
.LVL1:
	add	r0, r0, r3
	ldr	r0, [r0, #4]
	@ lr needed for prologue
	.loc 1 128 0
	@ sp needed for prologue
	bx	lr
.L6:
	.align	2
.L5:
	.word	g_header+44
.LFE116:
	.size	neoSystemRegionSize, .-neoSystemRegionSize
	.global	__aeabi_uidiv
	.align	2
	.global	neoSystemSetClockDivide
	.code 16
	.thumb_func
	.type	neoSystemSetClockDivide, %function
neoSystemSetClockDivide:
.LFB119:
	.loc 1 143 0
	push	{r4, r5, lr}
.LCFI0:
.LVL2:
	.loc 1 144 0
	mov	r3, #246
	lsl	r3, r3, #1
	str	r0, [r7, r3]
	.loc 1 145 0
	mov	r0, #192
.LVL3:
	.loc 1 143 0
	sub	sp, sp, #4
.LCFI1:
	.loc 1 145 0
	ldr	r1, [r7, r3]
	lsl	r0, r0, #3
	mov	r5, r7
	bl	__aeabi_uidiv
	mov	r4, #248
	lsl	r4, r4, #1
	.loc 1 146 0
	add	sp, sp, #4
	.loc 1 145 0
	str	r0, [r5, r4]
	.loc 1 146 0
	@ sp needed for prologue
	pop	{r4, r5, pc}
.LFE119:
	.size	neoSystemSetClockDivide, .-neoSystemSetClockDivide
	.align	2
	.global	neoSystemGetRomCount
	.code 16
	.thumb_func
	.type	neoSystemGetRomCount, %function
neoSystemGetRomCount:
.LFB122:
	.loc 1 235 0
	ldr	r3, .L11
	@ lr needed for prologue
	.loc 1 235 0
	ldr	r0, [r3]
	.loc 1 237 0
	@ sp needed for prologue
	bx	lr
.L12:
	.align	2
.L11:
	.word	g_romCount
.LFE122:
	.size	neoSystemGetRomCount, .-neoSystemGetRomCount
	.align	2
	.global	neoSystemGetRomName
	.code 16
	.thumb_func
	.type	neoSystemGetRomName, %function
neoSystemGetRomName:
.LFB123:
	.loc 1 240 0
.LVL4:
	ldr	r3, .L15
	lsl	r0, r0, #2
.LVL5:
	ldr	r0, [r0, r3]
	@ lr needed for prologue
	.loc 1 243 0
	@ sp needed for prologue
	bx	lr
.L16:
	.align	2
.L15:
	.word	g_romNames
.LFE123:
	.size	neoSystemGetRomName, .-neoSystemGetRomName
	.align	2
	.global	neoSystemSetEnabled
	.code 16
	.thumb_func
	.type	neoSystemSetEnabled, %function
neoSystemSetEnabled:
.LFB130:
	.loc 1 439 0
	push	{lr}
.LCFI2:
.LVL6:
	sub	sp, sp, #4
.LCFI3:
	ldr	r3, .L29
	.loc 1 440 0
	cmp	r0, #0
	beq	.L18
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L20
	.loc 1 442 0
	ldr	r3, .L29+4
	strb	r2, [r7, r3]
	.loc 1 443 0
	ldr	r3, .L29+8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L20
	.loc 1 445 0
	mov	r0, #3
.LVL7:
	bl	neoIPCSendCommand
	b	.L20
.LVL8:
.L18:
	.loc 1 447 0
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L23
	.loc 1 449 0
	ldr	r3, .L29+4
	strb	r2, [r7, r3]
	.loc 1 450 0
	ldr	r3, .L29+8
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L23
	.loc 1 452 0
	mov	r0, #2
.LVL9:
	bl	neoIPCSendCommand
	b	.L23
.LVL10:
.L20:
	.loc 1 456 0
	ldr	r2, .L29
	ldr	r3, [r2]
	sub	r3, r3, #1
	b	.L28
.L23:
	.loc 1 457 0
	ldr	r2, .L29
	ldr	r3, [r2]
	add	r3, r3, #1
.L28:
	.loc 1 468 0
	add	sp, sp, #4
	.loc 1 457 0
	str	r3, [r2]
	.loc 1 468 0
	@ sp needed for prologue
	pop	{pc}
.L30:
	.align	2
.L29:
	.word	g_pauseCount
	.word	573
	.word	41940113
.LFE130:
	.size	neoSystemSetEnabled, .-neoSystemSetEnabled
	.align	2
	.code 16
	.thumb_func
	.type	neoSystemDoKeys, %function
neoSystemDoKeys:
.LFB133:
	.loc 1 522 0
	push	{r4, r5, r6, lr}
.LCFI4:
.LVL11:
	.loc 1 535 0
	ldr	r3, .L67
	mov	r1, r0
	ldr	r3, [r3]
	.loc 1 522 0
	sub	sp, sp, #24
.LCFI5:
	.loc 1 535 0
	bic	r1, r1, r3
	ldr	r3, .L67+4
	mov	r2, #7
	.loc 1 522 0
	str	r0, [sp, #4]
	.loc 1 535 0
	str	r1, [sp, #8]
.LVL12:
	str	r2, [sp, #12]
.LVL13:
	str	r3, [sp, #20]
.LVL14:
.L32:
	.loc 1 539 0
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #4]
	ldr	r0, [r1]
	tst	r2, r0
	beq	.L33
	.loc 1 540 0
	ldr	r1, [sp, #12]
	add	r3, r1, r7
	mov	r1, #142
	lsl	r1, r1, #2
	add	r3, r3, r1
	ldrb	r1, [r3, #7]
.LBB13:
.LBB14:
	.loc 1 473 0
	mov	r3, #137
	lsl	r3, r3, #2
	ldr	r5, [r7, r3]
	.loc 1 474 0
	mov	r3, #139
	lsl	r3, r3, #2
	ldr	r6, [r7, r3]
	.loc 1 475 0
	mov	r3, #141
	lsl	r3, r3, #2
	ldr	r3, [r7, r3]
	str	r3, [sp, #16]
	.loc 1 476 0
	ldr	r3, .L67+8
	ldrb	r3, [r7, r3]
	cmp	r3, #0
	beq	.L35
	.loc 1 477 0
	mov	r2, #1
	tst	r1, r2
	beq	.L37
	ldr	r3, .L67+12
	and	r5, r5, r3
.L37:
	.loc 1 478 0
	lsl	r3, r1, #30
	bpl	.L39
	ldr	r3, .L67+16
	and	r5, r5, r3
.L39:
	.loc 1 479 0
	lsl	r3, r1, #29
	bpl	.L41
	ldr	r3, .L67+20
	and	r5, r5, r3
.L41:
	.loc 1 480 0
	lsl	r3, r1, #28
	bpl	.L43
	ldr	r3, .L67+24
	and	r5, r5, r3
.L43:
	.loc 1 481 0
	lsl	r3, r1, #27
	bpl	.L45
	ldr	r3, .L67+28
	and	r6, r6, r3
.L45:
	.loc 1 482 0
	lsl	r3, r1, #26
	bpl	.L47
	ldr	r3, .L67+32
	and	r6, r6, r3
.L47:
	.loc 1 483 0
	lsl	r3, r1, #25
	bpl	.L35
	ldr	r3, [sp, #16]
	bic	r3, r3, r2
	str	r3, [sp, #16]
.L35:
	.loc 1 487 0
	mov	r3, #128
	tst	r1, r3
	beq	.L50
	ldr	r1, [sp, #8]
	tst	r1, r0
	beq	.L50
.LBB15:
.LBB16:
	.file 2 "C:/devkitPro/libnds/include/nds/system.h"
	.loc 2 137 0
	ldr	r2, .L67+36
	ldr	r1, .L67+40
	ldrh	r3, [r2]
.LBE16:
.LBE15:
	.loc 1 489 0
	ldr	r4, .L67+44
.LBB17:
.LBB18:
	.loc 2 137 0
	lsl	r3, r3, #16
	add	r3, r3, r1
	lsr	r3, r3, #16
	strh	r3, [r2]
.LBE18:
.LBE17:
	.loc 1 489 0
	ldrb	r0, [r4]
	bl	neoSystemSetEnabled
	.loc 1 490 0
	ldrb	r3, [r4]
	mov	r2, #0
	cmp	r3, #0
	bne	.L53
	mov	r2, #1
.L53:
	strb	r2, [r4]
.L50:
	.loc 1 493 0
	mov	r3, #137
	lsl	r3, r3, #2
	str	r5, [r7, r3]
	.loc 1 494 0
	mov	r3, #139
	lsl	r3, r3, #2
	str	r6, [r7, r3]
	.loc 1 495 0
	ldr	r2, [sp, #16]
	mov	r3, #141
	lsl	r3, r3, #2
	str	r2, [r7, r3]
.L33:
.LBE14:
.LBE13:
	.loc 1 538 0
	ldr	r3, [sp, #20]
	ldr	r1, [sp, #12]
	sub	r3, r3, #4
	str	r3, [sp, #20]
	sub	r1, r1, #1
	str	r1, [sp, #12]
	bcs	.L32
	.loc 1 544 0
	ldr	r2, [sp, #4]
	lsl	r2, r2, #18
	bpl	.L55
.LBB19:
.LBB20:
	.loc 1 500 0
	ldr	r3, .L67+48
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L57
	.loc 1 502 0
	mov	r0, #2
	bl	neoIPCSendCommand
.L57:
	.loc 1 504 0
	mov	r0, #7
	bl	neoIPCSendCommand
.L59:
.LBB21:
	.loc 1 506 0
	bl	scanKeys
.LBE21:
.LBE20:
	.loc 1 507 0
	bl	keysHeld
.LVL15:
.LBB22:
.LBB23:
	.loc 1 508 0
	lsl	r3, r0, #18
	bpl	.L60
	.loc 1 511 0
	bl	swiWaitForVBlank
.LVL16:
	b	.L59
.LVL17:
.L60:
.LBE23:
	.loc 1 513 0
	mov	r0, #8
.LVL18:
	bl	neoIPCSendCommand
	.loc 1 514 0
	ldr	r3, .L67+48
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L62
	.loc 1 516 0
	mov	r0, #3
	bl	neoIPCSendCommand
.L62:
	.loc 1 518 0
	bl	neoAudioStreamReset
.L55:
.LBE22:
.LBE19:
	.loc 1 548 0
	ldr	r1, [sp, #4]
	ldr	r3, .L67
	.loc 1 549 0
	add	sp, sp, #24
	.loc 1 548 0
	str	r1, [r3]
	.loc 1 549 0
	@ sp needed for prologue
.LVL19:
.LVL20:
	pop	{r4, r5, r6, pc}
.L68:
	.align	2
.L67:
	.word	lastKeys.6240
	.word	keyMask.6239+28
	.word	573
	.word	-4097
	.word	-8193
	.word	-16385
	.word	-32769
	.word	-257
	.word	-513
	.word	67109636
	.word	-2147483648
	.word	g_paused
	.word	g_pauseCount
.LFE133:
	.size	neoSystemDoKeys, .-neoSystemDoKeys
	.align	2
	.global	neoSystemExecute
	.code 16
	.thumb_func
	.type	neoSystemExecute, %function
neoSystemExecute:
.LFB135:
	.loc 1 611 0
	push	{r4, r5, r6, lr}
.LCFI6:
.LVL21:
.L89:
	.loc 1 614 0
	bl	guiSystemProcess
	.loc 1 615 0
	ldr	r3, .L90
	ldrb	r3, [r7, r3]
	cmp	r3, #0
	beq	.L72
.LBB27:
.LBB28:
	.loc 1 560 0
	mov	r3, #192
	mov	r2, #0
	lsl	r3, r3, #1
	str	r2, [r7, r3]
	.loc 1 561 0
	mov	r3, #246
	lsl	r3, r3, #1
	mov	r0, #192
	ldr	r1, [r7, r3]
	lsl	r0, r0, #3
	bl	__aeabi_uidiv
	bl	cpuExecute
	.loc 1 566 0
	mov	r2, #194
	lsl	r2, r2, #1
	ldr	r3, [r7, r2]
	add	r3, r3, #1
	str	r3, [r7, r2]
	.loc 1 567 0
	bl	pd4990a_addretrace
	.loc 1 568 0
	bl	neoAudioStreamProcess
	.loc 1 570 0
	mov	r2, #252
	lsl	r2, r2, #1
	ldr	r3, [r7, r2]
	add	r3, r3, #1
	str	r3, [r7, r2]
.LBE28:
	.loc 1 578 0
	bl	keysHeld
	mov	r6, r0
.LBB29:
	.loc 1 582 0
	lsl	r3, r0, #25
	bpl	.L74
.LVL22:
	mov	r2, #254
.LVL23:
	b	.L76
.LVL24:
.L74:
	mov	r2, #255
.LVL25:
.L76:
	.loc 1 583 0
	lsl	r3, r6, #24
	bpl	.L77
.LVL26:
	mov	r3, #2
	bic	r2, r2, r3
.L77:
	.loc 1 584 0
	lsl	r3, r6, #26
	bpl	.L79
	mov	r3, #4
	bic	r2, r2, r3
.L79:
	.loc 1 585 0
	lsl	r3, r6, #27
	bpl	.L81
	mov	r3, #8
	bic	r2, r2, r3
.L81:
	.loc 1 586 0
	lsl	r3, r2, #16
	mov	r1, #137
	mov	r2, #255
.LVL27:
	lsr	r3, r3, #8
	lsl	r1, r1, #2
	orr	r3, r3, r2
	str	r3, [r7, r1]
	.loc 1 587 0
	ldr	r2, .L90+4
	mov	r3, #138
	lsl	r3, r3, #2
	str	r2, [r7, r3]
	.loc 1 592 0
	mov	r2, #139
	mov	r3, #207
	lsl	r2, r2, #2
	lsl	r3, r3, #8
	str	r3, [r7, r2]
	.loc 1 597 0
	mov	r5, r7
.LBE29:
	bl	read_4990_testbit
	mov	r4, r0
	bl	read_4990_databit
.LBB30:
	lsl	r4, r4, #6
	mov	r3, #7
	orr	r4, r4, r3
	mov	r2, #141
	lsl	r0, r0, #7
	orr	r0, r0, r4
	lsl	r2, r2, #2
	str	r0, [r5, r2]
	.loc 1 605 0
	mov	r3, #140
	ldr	r2, .L90+8
	lsl	r3, r3, #2
	.loc 1 607 0
	mov	r0, r6
	.loc 1 605 0
	str	r2, [r7, r3]
	.loc 1 607 0
	bl	neoSystemDoKeys
	b	.L89
.L72:
.LBE30:
.LBE27:
.LBB31:
	.loc 1 619 0
	bl	keysHeld
	.loc 1 620 0
	bl	neoSystemDoKeys
	.loc 1 622 0
	bl	neoAudioStreamProcess
	.loc 1 624 0
	bl	swiWaitForVBlank
	.loc 1 626 0
	bl	guiSystemRender
	b	.L89
.L91:
	.align	2
.L90:
	.word	573
	.word	65535
	.word	65408
.LBE31:
.LFE135:
	.size	neoSystemExecute, .-neoSystemExecute
	.align	2
	.code 16
	.thumb_func
	.type	neoSystemUpdateIrq, %function
neoSystemUpdateIrq:
.LFB126:
	.loc 1 386 0
	push	{lr}
.LCFI7:
	.loc 1 387 0
	mov	r3, #250
	lsl	r3, r3, #1
	ldr	r3, [r7, r3]
	.loc 1 386 0
	sub	sp, sp, #4
.LCFI8:
	.loc 1 387 0
	lsl	r2, r3, #29
	bpl	.L93
	.loc 1 388 0
	mov	r0, #3
	b	.L101
.L93:
	.loc 1 389 0
	lsl	r2, r3, #30
	bpl	.L96
	.loc 1 391 0
	mov	r0, #2
	b	.L101
.L96:
	.loc 1 392 0
	lsl	r2, r3, #31
	bpl	.L98
	.loc 1 393 0
	mov	r0, #1
	b	.L101
.L98:
	.loc 1 395 0
	mov	r0, #0
.L101:
	bl	cpuInterrupt
	.loc 1 397 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE126:
	.size	neoSystemUpdateIrq, .-neoSystemUpdateIrq
	.align	2
	.global	neoSystemIrq
	.code 16
	.thumb_func
	.type	neoSystemIrq, %function
neoSystemIrq:
.LFB128:
	.loc 1 415 0
	push	{lr}
.LCFI9:
.LVL28:
	.loc 1 416 0
	mov	r2, #250
	lsl	r2, r2, #1
	ldr	r3, [r7, r2]
	.loc 1 415 0
	sub	sp, sp, #4
.LCFI10:
	.loc 1 416 0
	orr	r3, r3, r0
	str	r3, [r7, r2]
	.loc 1 417 0
	bl	neoSystemUpdateIrq
.LVL29:
	.loc 1 418 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE128:
	.size	neoSystemIrq, .-neoSystemIrq
	.align	2
	.global	neoSystemIrqAk
	.code 16
	.thumb_func
	.type	neoSystemIrqAk, %function
neoSystemIrqAk:
.LFB127:
	.loc 1 400 0
	push	{r4, r5, lr}
.LCFI11:
.LVL30:
	.loc 1 401 0
	mov	r5, #1
	.loc 1 400 0
	sub	sp, sp, #4
.LCFI12:
	.loc 1 400 0
	mov	r4, r0
.LVL31:
	.loc 1 401 0
	tst	r0, r5
	beq	.L105
	.loc 1 402 0
	mov	r2, #250
	lsl	r2, r2, #1
	ldr	r3, [r7, r2]
	mov	r1, #4
	bic	r3, r3, r1
	str	r3, [r7, r2]
.L105:
	.loc 1 404 0
	mov	r0, #2
	tst	r4, r0
	beq	.L107
	.loc 1 406 0
	mov	r2, #250
	lsl	r2, r2, #1
	ldr	r3, [r7, r2]
	bic	r3, r3, r0
	str	r3, [r7, r2]
.L107:
	.loc 1 408 0
	lsl	r3, r4, #29
	bpl	.L109
	.loc 1 409 0
	mov	r2, #250
	lsl	r2, r2, #1
	ldr	r3, [r7, r2]
	bic	r3, r3, r5
	str	r3, [r7, r2]
.L109:
	.loc 1 411 0
	bl	neoSystemUpdateIrq
	.loc 1 412 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{r4, r5, pc}
.LFE127:
	.size	neoSystemIrqAk, .-neoSystemIrqAk
	.align	2
	.global	neoSystemClose
	.code 16
	.thumb_func
	.type	neoSystemClose, %function
neoSystemClose:
.LFB125:
	.loc 1 376 0
	push	{r4, lr}
.LCFI13:
	.loc 1 377 0
	ldr	r4, .L116
	ldr	r0, [r4]
	cmp	r0, #0
	blt	.L115
	.loc 1 378 0
	bl	systemClose
	.loc 1 380 0
	mov	r3, #1
	neg	r3, r3
.LBB32:
.LBB33:
	.file 3 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
	.loc 3 337 0
	ldr	r7, .L116+4
.LBE33:
.LBE32:
	.loc 1 380 0
	str	r3, [r4]
	.loc 1 381 0
	bl	neoSaveConfig
.L115:
	.loc 1 383 0
	@ sp needed for prologue
	pop	{r4, pc}
.L117:
	.align	2
.L116:
	.word	g_rom
	.word	g_neoContext
.LFE125:
	.size	neoSystemClose, .-neoSystemClose
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC11:
	.ascii	"1)ROM: %s\000"
	.align	2
.LC13:
	.ascii	"----\000"
	.align	2
.LC15:
	.ascii	"/neogeo/\000"
	.align	2
.LC17:
	.ascii	"2)PATH: %s\000"
	.align	2
.LC19:
	.ascii	" -> Failed!\000"
	.align	2
.LC21:
	.ascii	" -> invalid rom\000"
	.align	2
.LC23:
	.ascii	" -> magic %08X / %08X\000"
	.align	2
.LC25:
	.ascii	" -> version %d / %d\000"
	.align	2
.LC27:
	.ascii	" -> section %d / %d\000"
	.align	2
.LC33:
	.ascii	"Loaded Game: %s\000"
	.align	2
.LC36:
	.ascii	" -> partial rom bank\000"
	.align	2
.LC38:
	.ascii	" -> sprites: %d\000"
	.align	2
.LC40:
	.ascii	" -> mask: %08X\000"
	.align	2
.LC42:
	.ascii	" -> rom bank(s): %d\000"
	.align	2
.LC44:
	.ascii	" -> sramProtection off\000"
	.align	2
.LC46:
	.ascii	" -> sramProtection: %08X\000"
	.text
	.align	2
	.global	neoSystemOpen
	.code 16
	.thumb_func
	.type	neoSystemOpen, %function
neoSystemOpen:
.LFB124:
	.loc 1 246 0
	push	{r4, r5, r6, lr}
.LCFI14:
.LVL32:
	sub	sp, sp, #384
.LCFI15:
	.loc 1 246 0
	str	r0, [sp, #4]
	.loc 1 254 0
	ldr	r1, [sp, #4]
	ldr	r0, .L145
.LVL33:
	.loc 1 256 0
	add	r4, sp, #12
	.loc 1 254 0
	bl	guiConsoleLogf
.LVL34:
	.loc 1 255 0
	ldr	r0, .L145+4
	bl	guiConsoleLog
	.loc 1 256 0
	ldr	r1, .L145+8
	mov	r0, r4
	bl	strcpy
	.loc 1 257 0
	mov	r0, r4
	ldr	r1, [sp, #4]
	bl	strcat
	.loc 1 258 0
	mov	r1, r4
	ldr	r0, .L145+12
	bl	guiConsoleLogf
	.loc 1 259 0
	bl	guiConsoleDump
	.loc 1 261 0
	mov	r0, r4
	mov	r1, #0
	bl	systemOpen
	mov	r4, r0
	.loc 1 265 0
	cmp	r0, #0
	bge	.L119
	.loc 1 266 0
	ldr	r0, .L145+16
	bl	guiConsoleLogf
	b	.L143
.L119:
	.loc 1 270 0
	mov	r2, #116
	add	r1, sp, #268
	bl	systemRead
	.loc 1 272 0
	ldr	r2, [sp, #268]
	ldr	r3, .L145+20
	cmp	r2, r3
	bne	.L122
	ldr	r6, [sp, #272]
	cmp	r6, #0
	bne	.L122
	ldr	r3, [sp, #292]
	cmp	r3, #9
	beq	.L125
.L122:
	.loc 1 276 0
	mov	r0, r4
	bl	systemClose
	.loc 1 277 0
	ldr	r0, .L145+24
	bl	guiConsoleLogf
	.loc 1 278 0
	ldr	r0, .L145+28
	ldr	r1, [sp, #268]
	ldr	r2, .L145+20
	bl	guiConsoleLogf
	.loc 1 279 0
	ldr	r0, .L145+32
	ldr	r1, [sp, #272]
	mov	r2, #0
	bl	guiConsoleLogf
	.loc 1 280 0
	ldr	r0, .L145+36
	ldr	r1, [sp, #292]
	mov	r2, #9
	bl	guiConsoleLogf
.L143:
	mov	r0, #0
	b	.L121
.L125:
	.loc 1 285 0
	bl	neoSystemClose
	.loc 1 287 0
	mov	r0, r4
	bl	systemFileSize
	ldr	r1, .L145+40
	.loc 1 288 0
	ldr	r5, .L145+44
	.loc 1 287 0
	ldr	r3, .L145+48
	add	r0, r0, r1
	.loc 1 288 0
	mov	r2, #116
	add	r1, sp, #268
	.loc 1 287 0
	str	r0, [r3]
	.loc 1 288 0
	mov	r0, r5
	bl	memcpy
	.loc 1 289 0
	ldr	r3, .L145+52
	str	r4, [r3]
	.loc 1 291 0
	ldr	r4, .L145+56
	mov	r0, r4
	bl	linearHeapReset
	.loc 1 292 0
	mov	r0, r4
	bl	linearHeapClear
	.loc 1 294 0
	mov	r3, #192
	lsl	r3, r3, #1
	str	r6, [r7, r3]
	.loc 1 295 0
	mov	r3, #194
	lsl	r3, r3, #1
	str	r6, [r7, r3]
	.loc 1 296 0
	mov	r3, #250
	lsl	r3, r3, #1
	str	r6, [r7, r3]
	.loc 1 297 0
	mov	r3, #254
	lsl	r3, r3, #1
	str	r6, [r7, r3]
	.loc 1 298 0
	mov	r3, #128
	lsl	r3, r3, #2
	str	r6, [r7, r3]
	.loc 1 299 0
	mov	r3, #130
	lsl	r3, r3, #2
	str	r6, [r7, r3]
	.loc 1 300 0
	ldr	r3, .L145+60
	mov	r2, #1
	strb	r2, [r7, r3]
	.loc 1 302 0
	mov	r3, #142
	lsl	r3, r3, #2
	strb	r6, [r7, r3]
	.loc 1 303 0
	ldr	r3, .L145+64
	.loc 1 307 0
	ldr	r2, .L145+68
	.loc 1 303 0
	strb	r6, [r7, r3]
	.loc 1 304 0
	add	r3, r3, #1
	strb	r6, [r7, r3]
	.loc 1 305 0
	add	r3, r3, #1
	strb	r6, [r7, r3]
	.loc 1 306 0
	mov	r3, #143
	lsl	r3, r3, #2
	strb	r6, [r7, r3]
	.loc 1 307 0
	mov	r3, #190
	lsl	r3, r3, #1
	str	r2, [r7, r3]
	.loc 1 308 0
	ldr	r3, .L145+72
	.loc 1 315 0
	mov	r1, r5
	.loc 1 308 0
	strb	r6, [r3]
	.loc 1 309 0
	sub	r3, r3, #1
	strb	r6, [r3]
	.loc 1 313 0
	ldr	r2, [r5, #12]
	mov	r3, #131
	lsl	r3, r3, #2
	str	r2, [r7, r3]
	.loc 1 315 0
	ldr	r0, .L145+76
	add	r1, r1, #28
	bl	guiConsoleLogf
	.loc 1 317 0
	ldr	r3, [r5, #88]
	mov	r2, r7
	add	r2, r2, #212
	lsr	r3, r3, #7
	str	r3, [r2]
	.loc 1 318 0
	mov	r2, #204
	mov	r3, #1
	lsl	r2, r2, #1
	neg	r3, r3
	ldr	r4, .L145+80
.LVL35:
	str	r3, [r7, r2]
	mov	r0, #0
.L126:
	.loc 1 320 0
	mov	r3, r7
	add	r3, r3, #212
	ldr	r3, [r3]
	sub	r3, r3, #1
	tst	r3, r4
	bne	.L127
	.loc 1 321 0
	mov	r2, #204
	lsl	r2, r2, #1
	ldr	r3, [r7, r2]
	.loc 1 319 0
	add	r0, r0, #1
	.loc 1 321 0
	lsr	r3, r3, #1
	str	r3, [r7, r2]
	.loc 1 319 0
	lsr	r4, r4, #1
	cmp	r0, #32
	bne	.L126
.L127:
	.loc 1 324 0
	mov	r2, r7
	add	r2, r2, #216
	mov	r3, #0
	str	r3, [r2]
	.loc 1 325 0
	ldr	r3, .L145+44
	ldr	r2, .L145+84
	ldr	r3, [r3, #48]
	add	r1, r3, r2
.LVL36:
	.loc 1 326 0
	cmp	r1, #0
	ble	.L129
	.loc 1 327 0
	mov	r3, r7
	add	r3, r3, #216
	asr	r2, r1, #20
	str	r2, [r3]
	.loc 1 328 0
	mov	r0, r3
	lsl	r3, r2, #20
	cmp	r3, r1
	beq	.L129
	.loc 1 329 0
	add	r3, r2, #1
	str	r3, [r0]
	.loc 1 330 0
	ldr	r0, .L145+88
	bl	guiConsoleLogf
.LVL37:
.L129:
	.loc 1 334 0
	mov	r3, r7
	add	r3, r3, #212
	ldr	r1, [r3]
.LVL38:
	ldr	r0, .L145+92
	bl	guiConsoleLogf
	.loc 1 335 0
	mov	r3, #204
	lsl	r3, r3, #1
	ldr	r1, [r7, r3]
	ldr	r0, .L145+96
	bl	guiConsoleLogf
	.loc 1 336 0
	mov	r3, r7
	add	r3, r3, #216
	ldr	r1, [r3]
	ldr	r0, .L145+100
	bl	guiConsoleLogf
	.loc 1 337 0
	mov	r3, #131
	lsl	r3, r3, #2
	ldr	r1, [r7, r3]
	add	r3, r1, #1
	bne	.L132
	.loc 1 338 0
	ldr	r0, .L145+104
	bl	guiConsoleLogf
	b	.L134
.L132:
	.loc 1 340 0
	ldr	r0, .L145+108
	bl	guiConsoleLogf
.L134:
	.loc 1 342 0
	bl	guiConsoleDump
	.loc 1 344 0
	bl	systemRamReset
	.loc 1 345 0
	bl	systemSlot2Reset
	.loc 1 347 0
	bl	cpuInit
	.loc 1 348 0
	bl	neoMemoryInit
	.loc 1 349 0
	bl	neoIOInit
	.loc 1 350 0
	bl	pd4990a_init
	.loc 1 351 0
	bl	neoVideoInit
	.loc 1 352 0
	bl	neoInstallProtection
	.loc 1 354 0
	ldr	r3, .L145+112
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L135
	.loc 1 355 0
	bl	neoAudioStreamInit
	.loc 1 356 0
	mov	r0, #1
	bl	neoIPCSendCommand
	b	.L137
.L135:
	.loc 1 359 0
	ldr	r3, .L145+116
	mov	r2, #1
	strb	r2, [r3]
.L137:
	.loc 1 361 0
	bl	cpuReset
	.loc 1 363 0
	ldr	r0, [sp, #4]
	bl	neoLoadConfig
.LBB38:
.LBB39:
	.loc 2 137 0
	ldr	r2, .L145+120
	ldr	r1, .L145+80
	ldrh	r3, [r2]
.LBE39:
.LBE38:
	.loc 1 368 0
	ldr	r4, .L145+124
.LVL39:
.LBB40:
.LBB41:
	.loc 2 137 0
	lsl	r3, r3, #16
	add	r3, r3, r1
.LBE41:
.LBE40:
	.loc 1 368 0
	ldrb	r0, [r4]
.LBB42:
.LBB43:
	.loc 2 137 0
	lsr	r3, r3, #16
.LBE43:
.LBE42:
.LBB44:
.LBB45:
	.loc 3 337 0
	ldr	r7, .L145+128
.LBE45:
.LBE44:
.LBB46:
.LBB47:
	.loc 2 137 0
	strh	r3, [r2]
.LBE47:
.LBE46:
	.loc 1 368 0
	cmp	r0, #0
	beq	.L144
	.loc 1 369 0
	bl	neoSystemSetEnabled
	.loc 1 370 0
	ldrb	r3, [r4]
	mov	r2, #0
	cmp	r3, #0
	bne	.L140
	mov	r2, #1
.L140:
	strb	r2, [r4]
.L144:
	mov	r0, #1
.L121:
	.loc 1 373 0
	add	sp, sp, #384
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L146:
	.align	2
.L145:
	.word	.LC11
	.word	.LC13
	.word	.LC15
	.word	.LC17
	.word	.LC19
	.word	2114000608
	.word	.LC21
	.word	.LC23
	.word	.LC25
	.word	.LC27
	.word	-512
	.word	g_header
	.word	g_romSize
	.word	g_rom
	.word	g_vramHHeap
	.word	574
	.word	569
	.word	9029
	.word	41940116
	.word	.LC33
	.word	-2147483648
	.word	-1048576
	.word	.LC36
	.word	.LC38
	.word	.LC40
	.word	.LC42
	.word	.LC44
	.word	.LC46
	.word	41940113
	.word	41940115
	.word	67109636
	.word	g_paused
	.word	g_neoContext
.LFE124:
	.size	neoSystemOpen, .-neoSystemOpen
	.align	2
	.global	stringCompare
	.code 16
	.thumb_func
	.type	stringCompare, %function
stringCompare:
.LFB120:
	.loc 1 189 0
	push	{lr}
.LCFI16:
.LVL40:
	sub	sp, sp, #4
.LCFI17:
	.loc 1 190 0
	ldr	r0, [r0]
.LVL41:
	ldr	r1, [r1]
.LVL42:
	bl	strcmp
	.loc 1 191 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE120:
	.size	stringCompare, .-stringCompare
	.align	2
	.global	neoSystemVramHAlloc
	.code 16
	.thumb_func
	.type	neoSystemVramHAlloc, %function
neoSystemVramHAlloc:
.LFB118:
	.loc 1 138 0
	push	{lr}
.LCFI18:
.LVL43:
	sub	sp, sp, #4
.LCFI19:
	.loc 1 138 0
	mov	r1, r0
	.loc 1 139 0
	ldr	r0, .L151
.LVL44:
	bl	linearHeapAlloc
.LVL45:
	.loc 1 140 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L152:
	.align	2
.L151:
	.word	g_vramHHeap
.LFE118:
	.size	neoSystemVramHAlloc, .-neoSystemVramHAlloc
	.align	2
	.global	neoSystemReadRom
	.code 16
	.thumb_func
	.type	neoSystemReadRom, %function
neoSystemReadRom:
.LFB110:
	.loc 1 72 0
	push	{r4, r5, lr}
.LCFI20:
.LVL46:
	mov	r3, r2
	.loc 1 74 0
	ldr	r2, .L155
.LVL47:
	.loc 1 72 0
	mov	r5, r1
	mov	r4, r0
	sub	sp, sp, #4
.LCFI21:
	.loc 1 74 0
	ldr	r0, [r2]
.LVL48:
	mov	r1, r4
.LVL49:
	mov	r2, r5
	bl	systemReadOffset
.LVL50:
	.loc 1 76 0
	add	sp, sp, #4
	@ sp needed for prologue
.LVL51:
.LVL52:
	pop	{r4, r5, pc}
.L156:
	.align	2
.L155:
	.word	g_rom
.LFE110:
	.size	neoSystemReadRom, .-neoSystemReadRom
	.align	2
	.global	neoSystemReadRegion
	.code 16
	.thumb_func
	.type	neoSystemReadRegion, %function
neoSystemReadRegion:
.LFB115:
	.loc 1 118 0
	push	{r4, lr}
.LCFI22:
.LVL53:
	.loc 1 121 0
	ldr	r4, .L159
	lsl	r0, r0, #3
.LVL54:
	ldr	r0, [r0, r4]
	.loc 1 122 0
	@ sp needed for prologue
	.loc 1 121 0
	add	r2, r2, r0
.LVL55:
	mov	r0, r1
	mov	r1, r2
.LVL56:
	mov	r2, r3
	bl	neoSystemReadRom
.LVL57:
	.loc 1 122 0
	pop	{r4, pc}
.L160:
	.align	2
.L159:
	.word	g_header+44
.LFE115:
	.size	neoSystemReadRegion, .-neoSystemReadRegion
	.align	2
	.global	neoSystemLoadRegionEx
	.code 16
	.thumb_func
	.type	neoSystemLoadRegionEx, %function
neoSystemLoadRegionEx:
.LFB114:
	.loc 1 103 0
	push	{r4, r5, lr}
.LCFI23:
.LVL58:
	mov	r5, r1
	mov	r1, r3
.LVL59:
	.loc 1 104 0
	ldr	r3, .L170
.LVL60:
	lsl	r0, r0, #3
.LVL61:
	add	r0, r0, r3
.LVL62:
	.loc 1 105 0
	ldr	r4, [r0]
	.loc 1 107 0
	ldr	r0, [r0, #4]
.LVL63:
	.loc 1 103 0
	sub	sp, sp, #4
.LCFI24:
	.loc 1 107 0
	cmp	r2, r0
	bcs	.L169
	.loc 1 108 0
	add	r3, r2, r1
	cmp	r3, r0
	bhi	.L164
	mov	r3, r1
.LVL64:
	b	.L166
.LVL65:
.L164:
	sub	r3, r0, r2
.LVL66:
.L166:
	.loc 1 110 0
	add	r1, r4, #1
	beq	.L169
.LVL67:
	add	r0, r0, #1
	beq	.L169
	.loc 1 114 0
	add	r1, r4, r2
	mov	r0, r5
	mov	r2, r3
.LVL68:
	bl	neoSystemReadRom
.LVL69:
.LVL70:
.L169:
	.loc 1 115 0
	add	sp, sp, #4
	@ sp needed for prologue
.LVL71:
	pop	{r4, r5, pc}
.L171:
	.align	2
.L170:
	.word	g_header+44
.LFE114:
	.size	neoSystemLoadRegionEx, .-neoSystemLoadRegionEx
	.align	2
	.global	neoSystemLoadRegion
	.code 16
	.thumb_func
	.type	neoSystemLoadRegion, %function
neoSystemLoadRegion:
.LFB117:
	.loc 1 131 0
	push	{lr}
.LCFI25:
.LVL72:
	sub	sp, sp, #4
.LCFI26:
	.loc 1 131 0
	mov	r3, r2
	.loc 1 132 0
	mov	r2, #0
.LVL73:
	bl	neoSystemLoadRegionEx
.LVL74:
	.loc 1 133 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE117:
	.size	neoSystemLoadRegion, .-neoSystemLoadRegion
	.align	2
	.global	neoSystemReset
	.code 16
	.thumb_func
	.type	neoSystemReset, %function
neoSystemReset:
.LFB129:
	.loc 1 421 0
	push	{lr}
.LCFI27:
	sub	sp, sp, #4
.LCFI28:
	.loc 1 424 0
	bl	cpuReset
	.loc 1 426 0
	mov	r2, #142
	lsl	r2, r2, #2
	ldrb	r3, [r7, r2]
	cmp	r3, #0
	beq	.L175
	.loc 1 427 0
	mov	r3, #0
	strb	r3, [r7, r2]
	.loc 1 428 0
	mov	r3, r7
	add	r3, r3, #252
	ldr	r1, [r3, #68]
	mov	r0, #1
	mov	r2, #128
	bl	neoSystemLoadRegion
.L175:
	.loc 1 431 0
	ldr	r3, .L178
	mov	r2, #0
	strb	r2, [r7, r3]
	.loc 1 432 0
	add	r3, r3, #2
	strb	r2, [r7, r3]
	.loc 1 433 0
	mov	r3, #143
	lsl	r3, r3, #2
	strb	r2, [r7, r3]
	.loc 1 434 0
	mov	r3, #254
	lsl	r3, r3, #1
	str	r2, [r7, r3]
	.loc 1 435 0
	mov	r3, #252
	lsl	r3, r3, #1
	.loc 1 436 0
	add	sp, sp, #4
	.loc 1 435 0
	str	r2, [r7, r3]
	.loc 1 436 0
	@ sp needed for prologue
	pop	{pc}
.L179:
	.align	2
.L178:
	.word	569
.LFE129:
	.size	neoSystemReset, .-neoSystemReset
	.align	2
	.global	neoSystemLoadTile
	.code 16
	.thumb_func
	.type	neoSystemLoadTile, %function
neoSystemLoadTile:
.LFB113:
	.loc 1 95 0
	push	{lr}
.LCFI29:
.LVL75:
	.loc 1 99 0
	ldr	r3, .L182
	lsl	r1, r1, #8
.LVL76:
	ldr	r3, [r3, #92]
	mov	r2, #128
	.loc 1 95 0
	sub	sp, sp, #4
.LCFI30:
	.loc 1 99 0
	add	r1, r1, r3
	lsl	r2, r2, #1
	bl	neoSystemReadRom
.LVL77:
	.loc 1 100 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L183:
	.align	2
.L182:
	.word	g_header
.LFE113:
	.size	neoSystemLoadTile, .-neoSystemLoadTile
	.align	2
	.global	neoSystemLoadSprite2
	.code 16
	.thumb_func
	.type	neoSystemLoadSprite2, %function
neoSystemLoadSprite2:
.LFB112:
	.loc 1 87 0
	push	{lr}
.LCFI31:
.LVL78:
	.loc 1 91 0
	ldr	r3, .L186
	lsl	r1, r1, #12
.LVL79:
	ldr	r3, [r3, #84]
	mov	r2, #128
	.loc 1 87 0
	sub	sp, sp, #4
.LCFI32:
	.loc 1 91 0
	add	r1, r1, r3
	lsl	r2, r2, #5
	bl	neoSystemReadRom
.LVL80:
	.loc 1 92 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L187:
	.align	2
.L186:
	.word	g_header
.LFE112:
	.size	neoSystemLoadSprite2, .-neoSystemLoadSprite2
	.align	2
	.global	neoSystemLoadSprite
	.code 16
	.thumb_func
	.type	neoSystemLoadSprite, %function
neoSystemLoadSprite:
.LFB111:
	.loc 1 79 0
	push	{lr}
.LCFI33:
.LVL81:
	.loc 1 83 0
	ldr	r3, .L190
	lsl	r1, r1, #10
.LVL82:
	ldr	r3, [r3, #84]
	mov	r2, #128
	.loc 1 79 0
	sub	sp, sp, #4
.LCFI34:
	.loc 1 83 0
	add	r1, r1, r3
	lsl	r2, r2, #3
	bl	neoSystemReadRom
.LVL83:
	.loc 1 84 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L191:
	.align	2
.L190:
	.word	g_header
.LFE111:
	.size	neoSystemLoadSprite, .-neoSystemLoadSprite
	.section	.rodata.str1.4
	.align	2
.LC62:
	.ascii	".NEO\000"
	.text
	.align	2
	.global	neoSystemInit
	.code 16
	.thumb_func
	.type	neoSystemInit, %function
neoSystemInit:
.LFB121:
	.loc 1 194 0
	push	{r4, r5, r6, lr}
.LCFI35:
	.loc 1 195 0
	mov	r0, #128
	.loc 1 194 0
	sub	sp, sp, #336
.LCFI36:
	.loc 1 195 0
	ldr	r1, .L206
	lsl	r0, r0, #9
	bl	irqSet
	.loc 1 197 0
	mov	r2, #128
	ldr	r0, .L206+4
	ldr	r1, .L206+8
	lsl	r2, r2, #8
	bl	linearHeapInit
	.loc 1 202 0
	ldr	r2, .L206+12
	mov	r3, #0
	str	r3, [r2]
	.loc 1 203 0
	mov	r2, #128
	mov	r1, #0
	lsl	r2, r2, #3
	ldr	r0, .L206+16
	bl	memset
	.loc 1 209 0
	ldr	r0, .L206+20
	bl	diropen
	str	r0, [sp, #4]
.LVL84:
	b	.L205
.L194:
.LBB51:
	.loc 1 212 0
	ldr	r3, [sp, #276]
	lsl	r2, r3, #17
	bmi	.L205
	.loc 1 215 0
	mov	r1, #46
	mov	r0, r6
	bl	strchr
	.loc 1 216 0
	ldr	r4, .L206+24
	.loc 1 215 0
	mov	r1, r0
	mov	r0, r4
	bl	strcasecmp
	cmp	r0, #0
	bne	.L205
	.loc 1 220 0
	ldr	r4, [r5]
	.loc 1 221 0
	mov	r0, r6
	.loc 1 220 0
	add	r4, r4, #1
	str	r4, [r5]
	.loc 1 221 0
	bl	strdup
	ldr	r3, .L206+16
	lsl	r4, r4, #2
	add	r4, r4, r3
	sub	r4, r4, #4
	str	r0, [r4]
.L205:
.LBE51:
	.loc 1 211 0
	ldr	r5, .L206+12
	ldr	r3, [r5]
	cmp	r3, #255
	bhi	.L197
	add	r6, sp, #12
	ldr	r0, [sp, #4]
	mov	r1, r6
	add	r2, sp, #268
	bl	dirnext
	cmp	r0, #0
	beq	.L194
.L197:
	.loc 1 224 0
	ldr	r1, [r5]
	ldr	r3, .L206+28
	mov	r2, #4
	ldr	r0, .L206+16
	bl	qsort
	.loc 1 226 0
	ldr	r0, [sp, #4]
	bl	dirclose
	.loc 1 229 0
	mov	r0, #2
.LBB52:
.LBB53:
	.loc 3 337 0
	ldr	r7, .L206+32
.LBE53:
.LBE52:
	.loc 1 229 0
	bl	neoSystemSetClockDivide
	.loc 1 232 0
	mov	r0, #1
	add	sp, sp, #336
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L207:
	.align	2
.L206:
	.word	neoSystemIPCSync
	.word	g_vramHHeap
	.word	109674496
	.word	g_romCount
	.word	g_romNames
	.word	.LC15
	.word	.LC62
	.word	stringCompare
	.word	g_neoContext
.LFE121:
	.size	neoSystemInit, .-neoSystemInit
	.bss
	.align	2
lastKeys.6240:
	.space	4
	.section	.rodata
	.align	2
	.type	keyMask.6239, %object
	.size	keyMask.6239, 32
keyMask.6239:
	.word	1
	.word	2
	.word	1024
	.word	2048
	.word	512
	.word	256
	.word	8
	.word	4
	.bss
g_paused:
	.space	1
	.align	2
g_pauseCount:
	.space	4
	.data
	.align	2
	.type	g_rom, %object
	.size	g_rom, 4
g_rom:
	.word	-1
	.bss
	.align	2
g_romSize:
	.space	4
	.align	2
g_romCount:
	.space	4
	.align	2
g_vramHHeap:
	.space	12
	.align	2
g_romNames:
	.space	1024
	.global	g_neoContext
	.section	.sbss,"aw",%nobits
	.align	2
	.type	g_neoContext, %object
	.size	g_neoContext, 8192
g_neoContext:
	.space	8192
	.comm	g_header,116,4
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
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.byte	0x4
	.4byte	.LCFI0-.LFB119
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.byte	0x4
	.4byte	.LCFI2-.LFB130
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.byte	0x4
	.4byte	.LCFI4-.LFB133
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
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.byte	0x4
	.4byte	.LCFI6-.LFB135
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
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.byte	0x4
	.4byte	.LCFI7-.LFB126
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.byte	0x4
	.4byte	.LCFI9-.LFB128
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.byte	0x4
	.4byte	.LCFI11-.LFB127
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.byte	0x4
	.4byte	.LCFI13-.LFB125
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
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.byte	0x4
	.4byte	.LCFI14-.LFB124
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
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x190
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.byte	0x4
	.4byte	.LCFI16-.LFB120
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.byte	0x4
	.4byte	.LCFI18-.LFB118
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x4
	.4byte	.LCFI20-.LFB110
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.byte	0x4
	.4byte	.LCFI22-.LFB115
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.byte	0x4
	.4byte	.LCFI23-.LFB114
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.byte	0x4
	.4byte	.LCFI25-.LFB117
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.byte	0x4
	.4byte	.LCFI27-.LFB129
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.byte	0x4
	.4byte	.LCFI29-.LFB113
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI31-.LFB112
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI33-.LFB111
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.byte	0x4
	.4byte	.LCFI35-.LFB121
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
	.4byte	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x160
	.align	2
.LEFDE46:
	.file 4 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 5 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 6 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/dir.h"
	.file 7 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/stat.h"
	.file 8 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/types.h"
	.file 9 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 10 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/LinearHeap.h"
	.file 11 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.file 12 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h"
	.file 13 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h"
	.file 14 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h"
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
	.4byte	.LFB119-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE119-.Ltext0
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
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB130-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE130-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE130-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB133-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE133-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE133-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB135-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE135-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE135-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LFB126-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE126-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB128-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE128-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LFB127-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE127-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LFB125-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE125-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LFB124-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE124-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 400
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL34-.Ltext0
	.4byte	.LFE124-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -380
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LFB120-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LFB118-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LFB110-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LFB115-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LFB114-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL70-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LFB117-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI25-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LFB129-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI28-.Ltext0
	.4byte	.LFE129-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LFB113-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI30-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LFB112-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI31-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI32-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI33-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI34-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LFB121-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI35-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI36-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 352
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x16e1
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF273
	.byte	0x1
	.4byte	.LASF274
	.4byte	.LASF275
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x5
	.byte	0x2e
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x5
	.byte	0x39
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x5
	.byte	0x3a
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x5
	.byte	0x53
	.4byte	0x6d
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x5
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
	.byte	0x4
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
	.byte	0x4
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x4
	.byte	0x60
	.4byte	0x50
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x4
	.byte	0x61
	.4byte	0x74
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x4
	.byte	0x65
	.4byte	0x3e
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x4
	.byte	0x66
	.4byte	0x62
	.uleb128 0x6
	.4byte	0x106
	.byte	0x1
	.byte	0x4
	.byte	0x81
	.uleb128 0x7
	.4byte	.LASF17
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF18
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x81
	.4byte	0xf1
	.uleb128 0x8
	.byte	0x4
	.4byte	0x117
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11f
	.uleb128 0xa
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x1
	.byte	0x8
	.uleb128 0x8
	.byte	0x4
	.4byte	0x127
	.uleb128 0x6
	.4byte	0x155
	.byte	0x1
	.byte	0x9
	.byte	0x9b
	.uleb128 0x7
	.4byte	.LASF21
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF22
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF23
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF24
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x9
	.byte	0xa0
	.4byte	0x134
	.uleb128 0xb
	.4byte	0x1d8
	.2byte	0x2018
	.byte	0x9
	.2byte	0x119
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x9
	.2byte	0x11a
	.4byte	0x155
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x9
	.2byte	0x11d
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x9
	.2byte	0x120
	.4byte	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x9
	.2byte	0x121
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x9
	.2byte	0x122
	.4byte	0x1e9
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x9
	.2byte	0x123
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x9
	.2byte	0x124
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.byte	0x0
	.uleb128 0xd
	.4byte	0x1e9
	.4byte	0xa2
	.uleb128 0xe
	.4byte	0x120
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa2
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x9
	.2byte	0x126
	.4byte	0x160
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x8
	.byte	0x4
	.4byte	0x203
	.uleb128 0x11
	.4byte	0x127
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x8
	.byte	0x6d
	.4byte	0x6d
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x8
	.byte	0x85
	.4byte	0x9b
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0xa6
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x8
	.byte	0xab
	.4byte	0x6d
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x8
	.byte	0xad
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x8
	.byte	0xae
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x8
	.byte	0xc3
	.4byte	0x9b
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x8
	.byte	0xc8
	.4byte	0x5b
	.uleb128 0x12
	.4byte	0x3f6
	.4byte	.LASF71
	.byte	0xb0
	.byte	0xd
	.byte	0x15
	.uleb128 0x13
	.ascii	"d\000"
	.byte	0xd
	.byte	0x16
	.4byte	0x3f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.ascii	"a\000"
	.byte	0xd
	.byte	0x17
	.4byte	0x3f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.ascii	"pc\000"
	.byte	0xd
	.byte	0x18
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x13
	.ascii	"srh\000"
	.byte	0xd
	.byte	0x19
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0xd
	.byte	0x1a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0xd
	.byte	0x1b
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x13
	.ascii	"irq\000"
	.byte	0xd
	.byte	0x1c
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x13
	.ascii	"osp\000"
	.byte	0xd
	.byte	0x1d
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x13
	.ascii	"xc\000"
	.byte	0xd
	.byte	0x1e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0xd
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0xd
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0xd
	.byte	0x21
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0xd
	.byte	0x22
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0xd
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0xd
	.byte	0x24
	.4byte	0x416
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0xd
	.byte	0x25
	.4byte	0x416
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0xd
	.byte	0x26
	.4byte	0x416
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x14
	.4byte	.LASF52
	.byte	0xd
	.byte	0x27
	.4byte	0x416
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0xd
	.byte	0x28
	.4byte	0x42d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0xd
	.byte	0x29
	.4byte	0x444
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0xd
	.byte	0x2a
	.4byte	0x45b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0xd
	.byte	0x2b
	.4byte	0x416
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0xd
	.byte	0x2c
	.4byte	0x416
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0xd
	.byte	0x2d
	.4byte	0x416
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0xd
	.byte	0x2e
	.4byte	0x471
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0xd
	.byte	0x2f
	.4byte	0x111
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0xd
	.byte	0x30
	.4byte	0x47d
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0xd
	.byte	0x31
	.4byte	0x483
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xd
	.4byte	0x406
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x120
	.byte	0x7
	.byte	0x0
	.uleb128 0x16
	.4byte	0x416
	.byte	0x1
	.4byte	0x9b
	.uleb128 0x17
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x406
	.uleb128 0x18
	.4byte	0x42d
	.byte	0x1
	.uleb128 0x17
	.4byte	0x9b
	.uleb128 0x17
	.4byte	0x37
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x41c
	.uleb128 0x18
	.4byte	0x444
	.byte	0x1
	.uleb128 0x17
	.4byte	0x9b
	.uleb128 0x17
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x433
	.uleb128 0x18
	.4byte	0x45b
	.byte	0x1
	.uleb128 0x17
	.4byte	0x9b
	.uleb128 0x17
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x44a
	.uleb128 0x16
	.4byte	0x471
	.byte	0x1
	.4byte	0x94
	.uleb128 0x17
	.4byte	0x94
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x461
	.uleb128 0x19
	.byte	0x1
	.4byte	0x94
	.uleb128 0x8
	.byte	0x4
	.4byte	0x477
	.uleb128 0xd
	.4byte	0x493
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x120
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xc
	.byte	0x6
	.4byte	0x260
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xc
	.byte	0x8
	.4byte	0x4a9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4af
	.uleb128 0x16
	.4byte	0x4bf
	.byte	0x1
	.4byte	0xbb
	.uleb128 0x17
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xc
	.byte	0x9
	.4byte	0x4ca
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4d0
	.uleb128 0x16
	.4byte	0x4e0
	.byte	0x1
	.4byte	0xc5
	.uleb128 0x17
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xc
	.byte	0xa
	.4byte	0x4eb
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4f1
	.uleb128 0x16
	.4byte	0x501
	.byte	0x1
	.4byte	0xd0
	.uleb128 0x17
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xc
	.byte	0xc
	.4byte	0x50c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x512
	.uleb128 0x18
	.4byte	0x523
	.byte	0x1
	.uleb128 0x17
	.4byte	0xd0
	.uleb128 0x17
	.4byte	0xbb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xc
	.byte	0xd
	.4byte	0x52e
	.uleb128 0x8
	.byte	0x4
	.4byte	0x534
	.uleb128 0x18
	.4byte	0x545
	.byte	0x1
	.uleb128 0x17
	.4byte	0xd0
	.uleb128 0x17
	.4byte	0xc5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0xc
	.byte	0xe
	.4byte	0x550
	.uleb128 0x8
	.byte	0x4
	.4byte	0x556
	.uleb128 0x18
	.4byte	0x567
	.byte	0x1
	.uleb128 0x17
	.4byte	0xd0
	.uleb128 0x17
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xc
	.byte	0x10
	.4byte	0x4eb
	.uleb128 0x12
	.4byte	0x5b7
	.4byte	.LASF72
	.byte	0xc
	.byte	0xe
	.byte	0x17
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0xe
	.byte	0x18
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.ascii	"end\000"
	.byte	0xe
	.byte	0x19
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.ascii	"acc\000"
	.byte	0xe
	.byte	0x1a
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0xe
	.byte	0x1b
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0xe
	.byte	0x1c
	.4byte	0x572
	.uleb128 0x12
	.4byte	0x5f9
	.4byte	.LASF76
	.byte	0xc
	.byte	0xe
	.byte	0x1f
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0xe
	.byte	0x20
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0xe
	.byte	0x21
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0xe
	.byte	0x22
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0xe
	.byte	0x23
	.4byte	0x5c2
	.uleb128 0x1a
	.4byte	0x64d
	.4byte	.LASF276
	.byte	0x1
	.byte	0x3
	.byte	0x99
	.uleb128 0x7
	.4byte	.LASF81
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF82
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF83
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF84
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF85
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF86
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF87
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF88
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF89
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF90
	.sleb128 9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x3
	.byte	0xa4
	.4byte	0x604
	.uleb128 0x12
	.4byte	0x681
	.4byte	.LASF92
	.byte	0x8
	.byte	0x3
	.byte	0xa6
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x3
	.byte	0xa7
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x3
	.byte	0xa8
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0x3
	.byte	0xa9
	.4byte	0x658
	.uleb128 0x12
	.4byte	0x725
	.4byte	.LASF95
	.byte	0x74
	.byte	0x3
	.byte	0xab
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x3
	.byte	0xac
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x3
	.byte	0xad
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x3
	.byte	0xae
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x3
	.byte	0xaf
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x3
	.byte	0xb0
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x3
	.byte	0xb1
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x3
	.byte	0xb2
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x3
	.byte	0xb3
	.4byte	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x3
	.byte	0xb4
	.4byte	0x735
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x3
	.byte	0xb5
	.4byte	0x745
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.byte	0x0
	.uleb128 0xd
	.4byte	0x735
	.4byte	0x127
	.uleb128 0x15
	.4byte	0x120
	.byte	0xf
	.byte	0x0
	.uleb128 0xd
	.4byte	0x745
	.4byte	0x681
	.uleb128 0x15
	.4byte	0x120
	.byte	0x8
	.byte	0x0
	.uleb128 0xd
	.4byte	0x754
	.4byte	0xbb
	.uleb128 0x1b
	.4byte	0x120
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0x3
	.byte	0xb6
	.4byte	0x68c
	.uleb128 0x1c
	.4byte	0xb4d
	.2byte	0x248
	.byte	0x3
	.byte	0xc0
	.uleb128 0x13
	.ascii	"cpu\000"
	.byte	0x3
	.byte	0xc1
	.4byte	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x3
	.byte	0xc4
	.4byte	0xb4d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x3
	.byte	0xc7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x3
	.byte	0xc8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x3
	.byte	0xcb
	.4byte	0xb5d
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x3
	.byte	0xcc
	.4byte	0x5f9
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x3
	.byte	0xcd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x3
	.byte	0xd0
	.4byte	0xb6d
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x3
	.byte	0xd1
	.4byte	0xb6d
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x3
	.byte	0xd2
	.4byte	0xb6d
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x3
	.byte	0xd3
	.4byte	0xb6d
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x3
	.byte	0xd4
	.4byte	0xb6d
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x3
	.byte	0xd5
	.4byte	0xb6d
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x3
	.byte	0xd6
	.4byte	0xb73
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x3
	.byte	0xd7
	.4byte	0xb73
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x3
	.byte	0xd8
	.4byte	0xb73
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0x3
	.byte	0xda
	.4byte	0xb79
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x3
	.byte	0xdd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0x3
	.byte	0xde
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0x3
	.byte	0xdf
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x14
	.4byte	.LASF126
	.byte	0x3
	.byte	0xe0
	.4byte	0xb8a
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x14
	.4byte	.LASF127
	.byte	0x3
	.byte	0xe1
	.4byte	0xb8a
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x14
	.4byte	.LASF128
	.byte	0x3
	.byte	0xe2
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x14
	.4byte	.LASF129
	.byte	0x3
	.byte	0xe5
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0x3
	.byte	0xe6
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x14
	.4byte	.LASF131
	.byte	0x3
	.byte	0xe7
	.4byte	0xb73
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x14
	.4byte	.LASF132
	.byte	0x3
	.byte	0xe8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x14
	.4byte	.LASF133
	.byte	0x3
	.byte	0xea
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x14
	.4byte	.LASF134
	.byte	0x3
	.byte	0xeb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x14
	.4byte	.LASF135
	.byte	0x3
	.byte	0xec
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x14
	.4byte	.LASF136
	.byte	0x3
	.byte	0xed
	.4byte	0xb95
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x14
	.4byte	.LASF137
	.byte	0x3
	.byte	0xee
	.4byte	0xb73
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x14
	.4byte	.LASF138
	.byte	0x3
	.byte	0xf1
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x14
	.4byte	.LASF139
	.byte	0x3
	.byte	0xf2
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x14
	.4byte	.LASF140
	.byte	0x3
	.byte	0xf3
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x14
	.4byte	.LASF141
	.byte	0x3
	.byte	0xf4
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x14
	.4byte	.LASF142
	.byte	0x3
	.byte	0xf7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x14
	.4byte	.LASF143
	.byte	0x3
	.byte	0xf8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x14
	.4byte	.LASF144
	.byte	0x3
	.byte	0xf9
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x14
	.4byte	.LASF145
	.byte	0x3
	.byte	0xfa
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x14
	.4byte	.LASF146
	.byte	0x3
	.byte	0xfb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x14
	.4byte	.LASF147
	.byte	0x3
	.byte	0xfc
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x14
	.4byte	.LASF148
	.byte	0x3
	.byte	0xfd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xc
	.4byte	.LASF149
	.byte	0x3
	.2byte	0x102
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x3
	.2byte	0x103
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xc
	.4byte	.LASF150
	.byte	0x3
	.2byte	0x106
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xc
	.4byte	.LASF151
	.byte	0x3
	.2byte	0x108
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xc
	.4byte	.LASF152
	.byte	0x3
	.2byte	0x109
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xc
	.4byte	.LASF153
	.byte	0x3
	.2byte	0x10a
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xc
	.4byte	.LASF154
	.byte	0x3
	.2byte	0x10b
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xc
	.4byte	.LASF155
	.byte	0x3
	.2byte	0x10d
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xc
	.4byte	.LASF156
	.byte	0x3
	.2byte	0x10e
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xc
	.4byte	.LASF157
	.byte	0x3
	.2byte	0x10f
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xc
	.4byte	.LASF158
	.byte	0x3
	.2byte	0x110
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xc
	.4byte	.LASF159
	.byte	0x3
	.2byte	0x111
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xc
	.4byte	.LASF160
	.byte	0x3
	.2byte	0x114
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xc
	.4byte	.LASF161
	.byte	0x3
	.2byte	0x115
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xc
	.4byte	.LASF162
	.byte	0x3
	.2byte	0x116
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xc
	.4byte	.LASF163
	.byte	0x3
	.2byte	0x117
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xc
	.4byte	.LASF164
	.byte	0x3
	.2byte	0x118
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xc
	.4byte	.LASF165
	.byte	0x3
	.2byte	0x11b
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xc
	.4byte	.LASF166
	.byte	0x3
	.2byte	0x11c
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xc
	.4byte	.LASF167
	.byte	0x3
	.2byte	0x11f
	.4byte	0xba5
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xc
	.4byte	.LASF168
	.byte	0x3
	.2byte	0x122
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xc
	.4byte	.LASF169
	.byte	0x3
	.2byte	0x123
	.4byte	0xbb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xd
	.4byte	0xb5d
	.4byte	0x1fb
	.uleb128 0x15
	.4byte	0x120
	.byte	0x8
	.byte	0x0
	.uleb128 0xd
	.4byte	0xb6d
	.4byte	0x5b7
	.uleb128 0x15
	.4byte	0x120
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc5
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb7f
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb85
	.uleb128 0x11
	.4byte	0xbb
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb90
	.uleb128 0x11
	.4byte	0xd0
	.uleb128 0xd
	.4byte	0xba5
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0x120
	.byte	0xf
	.byte	0x0
	.uleb128 0xd
	.4byte	0xbb5
	.4byte	0xbb
	.uleb128 0x15
	.4byte	0x120
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.4byte	0xbc4
	.4byte	0xbb
	.uleb128 0x1b
	.4byte	0x120
	.byte	0x0
	.uleb128 0x1d
	.4byte	0xbdf
	.2byte	0x400
	.byte	0x3
	.byte	0xbf
	.uleb128 0x1e
	.4byte	0x75f
	.uleb128 0x1f
	.4byte	.LASF170
	.byte	0x3
	.2byte	0x125
	.4byte	0xbdf
	.byte	0x0
	.uleb128 0xd
	.4byte	0xbef
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0x120
	.byte	0xff
	.byte	0x0
	.uleb128 0x20
	.4byte	0xc75
	.4byte	.LASF171
	.2byte	0x2000
	.byte	0x3
	.byte	0xbe
	.uleb128 0x21
	.4byte	0xbc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF172
	.byte	0x3
	.2byte	0x128
	.4byte	0xc75
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xc
	.4byte	.LASF173
	.byte	0x3
	.2byte	0x129
	.4byte	0xc85
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xc
	.4byte	.LASF174
	.byte	0x3
	.2byte	0x12a
	.4byte	0xc95
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xc
	.4byte	.LASF175
	.byte	0x3
	.2byte	0x12b
	.4byte	0xca5
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xc
	.4byte	.LASF176
	.byte	0x3
	.2byte	0x12c
	.4byte	0xcb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xc
	.4byte	.LASF177
	.byte	0x3
	.2byte	0x12d
	.4byte	0xcc5
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xc
	.4byte	.LASF178
	.byte	0x3
	.2byte	0x12e
	.4byte	0xcd5
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xd
	.4byte	0xc85
	.4byte	0x49e
	.uleb128 0x15
	.4byte	0x120
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xc95
	.4byte	0x4bf
	.uleb128 0x15
	.4byte	0x120
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xca5
	.4byte	0x4e0
	.uleb128 0x15
	.4byte	0x120
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xcb5
	.4byte	0x501
	.uleb128 0x15
	.4byte	0x120
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xcc5
	.4byte	0x523
	.uleb128 0x15
	.4byte	0x120
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xcd5
	.4byte	0x545
	.uleb128 0x15
	.4byte	0x120
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xce5
	.4byte	0x567
	.uleb128 0x15
	.4byte	0x120
	.byte	0xff
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF179
	.byte	0x3
	.2byte	0x12f
	.4byte	0xbef
	.uleb128 0x12
	.4byte	0xdec
	.4byte	.LASF180
	.byte	0x44
	.byte	0x7
	.byte	0x1a
	.uleb128 0x14
	.4byte	.LASF181
	.byte	0x7
	.byte	0x1b
	.4byte	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF182
	.byte	0x7
	.byte	0x1c
	.4byte	0x213
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF183
	.byte	0x7
	.byte	0x1d
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF184
	.byte	0x7
	.byte	0x1e
	.4byte	0x255
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF185
	.byte	0x7
	.byte	0x1f
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x14
	.4byte	.LASF186
	.byte	0x7
	.byte	0x20
	.4byte	0x23f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.4byte	.LASF187
	.byte	0x7
	.byte	0x21
	.4byte	0x21e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.4byte	.LASF188
	.byte	0x7
	.byte	0x22
	.4byte	0x229
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.4byte	.LASF189
	.byte	0x7
	.byte	0x29
	.4byte	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x14
	.4byte	.LASF190
	.byte	0x7
	.byte	0x2a
	.4byte	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.4byte	.LASF191
	.byte	0x7
	.byte	0x2b
	.4byte	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x14
	.4byte	.LASF192
	.byte	0x7
	.byte	0x2c
	.4byte	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.4byte	.LASF193
	.byte	0x7
	.byte	0x2d
	.4byte	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.4byte	.LASF194
	.byte	0x7
	.byte	0x2e
	.4byte	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x14
	.4byte	.LASF195
	.byte	0x7
	.byte	0x2f
	.4byte	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x14
	.4byte	.LASF196
	.byte	0x7
	.byte	0x30
	.4byte	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x14
	.4byte	.LASF197
	.byte	0x7
	.byte	0x31
	.4byte	0xdec
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0xd
	.4byte	0xdfc
	.4byte	0x6d
	.uleb128 0x15
	.4byte	0x120
	.byte	0x1
	.byte	0x0
	.uleb128 0x22
	.4byte	0xe21
	.byte	0x8
	.byte	0x6
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF198
	.byte	0x6
	.byte	0x11
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF199
	.byte	0x6
	.byte	0x12
	.4byte	0x1fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF200
	.byte	0x6
	.byte	0x13
	.4byte	0xdfc
	.uleb128 0x12
	.4byte	0xe63
	.4byte	.LASF201
	.byte	0xc
	.byte	0xa
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF202
	.byte	0xa
	.byte	0x5
	.4byte	0xb6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF203
	.byte	0xa
	.byte	0x6
	.4byte	0xb6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF204
	.byte	0xa
	.byte	0x7
	.4byte	0xb6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF205
	.byte	0xa
	.byte	0x8
	.4byte	0xe2c
	.uleb128 0x23
	.4byte	.LASF206
	.byte	0x2
	.byte	0x89
	.byte	0x1
	.byte	0x3
	.uleb128 0x24
	.4byte	.LASF207
	.byte	0x3
	.2byte	0x151
	.byte	0x3
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF212
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB109
	.4byte	.LFE109
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.4byte	0xec8
	.byte	0x1
	.4byte	.LASF208
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.4byte	0xd0
	.4byte	.LFB116
	.4byte	.LFE116
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.4byte	.LASF210
	.byte	0x1
	.byte	0x7c
	.4byte	0x64d
	.4byte	.LLST2
	.uleb128 0x28
	.4byte	.LASF219
	.byte	0x1
	.byte	0x7e
	.4byte	0xec8
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xece
	.uleb128 0x11
	.4byte	0x681
	.uleb128 0x29
	.4byte	0xefc
	.byte	0x1
	.4byte	.LASF209
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LLST3
	.uleb128 0x27
	.4byte	.LASF211
	.byte	0x1
	.byte	0x8e
	.4byte	0xd0
	.4byte	.LLST4
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF213
	.byte	0x1
	.byte	0xeb
	.4byte	0xd0
	.4byte	.LFB122
	.4byte	.LFE122
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.4byte	0xf3b
	.byte	0x1
	.4byte	.LASF214
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.4byte	0x1fd
	.4byte	.LFB123
	.4byte	.LFE123
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.ascii	"i\000"
	.byte	0x1
	.byte	0xef
	.4byte	0xd0
	.4byte	.LLST7
	.byte	0x0
	.uleb128 0x2c
	.4byte	0xf66
	.byte	0x1
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x1b7
	.byte	0x1
	.4byte	.LFB130
	.4byte	.LFE130
	.4byte	.LLST8
	.uleb128 0x2d
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x106
	.4byte	.LLST9
	.byte	0x0
	.uleb128 0x2e
	.4byte	0xfb2
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x1d8
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x1d7
	.4byte	0xd0
	.uleb128 0x2f
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x106
	.uleb128 0x30
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x1d9
	.4byte	0xd0
	.uleb128 0x30
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x1da
	.4byte	0xd0
	.uleb128 0x30
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x1db
	.4byte	0xd0
	.uleb128 0x31
	.byte	0x0
	.uleb128 0x32
	.4byte	0xfce
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x1f3
	.byte	0x1
	.uleb128 0x33
	.uleb128 0x30
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x1fb
	.4byte	0xb90
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.4byte	0x10b7
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x20a
	.byte	0x1
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LLST10
	.uleb128 0x2d
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x209
	.4byte	0xd0
	.4byte	.LLST11
	.uleb128 0x30
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x216
	.4byte	0xb90
	.uleb128 0x35
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x217
	.4byte	0xb90
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x36
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x218
	.4byte	0xe6
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x37
	.4byte	0x106e
	.4byte	0xf66
	.4byte	.LBB13
	.4byte	.LBE13
	.byte	0x1
	.2byte	0x21c
	.uleb128 0x38
	.4byte	0xf80
	.uleb128 0x38
	.4byte	0xf74
	.uleb128 0x39
	.4byte	.LBB14
	.4byte	.LBE14
	.uleb128 0x3a
	.4byte	0xf8c
	.4byte	.LLST12
	.uleb128 0x3a
	.4byte	0xf98
	.4byte	.LLST13
	.uleb128 0x3b
	.4byte	0xfa4
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x3c
	.4byte	0xe6e
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x1e8
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.4byte	0x1092
	.4byte	0xfb2
	.4byte	.LBB19
	.4byte	.LBE19
	.byte	0x1
	.2byte	0x221
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x3a
	.4byte	0xfc0
	.4byte	.LLST14
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x215
	.4byte	0xd0
	.byte	0x5
	.byte	0x3
	.4byte	lastKeys.6240
	.uleb128 0x35
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x20b
	.4byte	0x15b9
	.byte	0x5
	.byte	0x3
	.4byte	keyMask.6239
	.byte	0x0
	.uleb128 0x32
	.4byte	0x10dd
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x228
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x229
	.4byte	0xd0
	.uleb128 0x30
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x22a
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3e
	.4byte	0x113c
	.byte	0x1
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x263
	.4byte	.LFB135
	.4byte	.LFE135
	.4byte	.LLST15
	.uleb128 0x37
	.4byte	0x1123
	.4byte	0x10b7
	.4byte	.LBB27
	.4byte	.LBE27
	.byte	0x1
	.2byte	0x268
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x3a
	.4byte	0x10c4
	.4byte	.LLST16
	.uleb128 0x3a
	.4byte	0x10d0
	.4byte	.LLST17
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.4byte	.LBB31
	.4byte	.LBE31
	.uleb128 0x35
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x26b
	.4byte	0xb90
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x182
	.4byte	.LFB126
	.4byte	.LFE126
	.4byte	.LLST18
	.uleb128 0x2c
	.4byte	0x117b
	.byte	0x1
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x19f
	.byte	0x1
	.4byte	.LFB128
	.4byte	.LFE128
	.4byte	.LLST19
	.uleb128 0x40
	.ascii	"irq\000"
	.byte	0x1
	.2byte	0x19e
	.4byte	0xd0
	.4byte	.LLST20
	.byte	0x0
	.uleb128 0x2c
	.4byte	0x11a6
	.byte	0x1
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x190
	.byte	0x1
	.4byte	.LFB127
	.4byte	.LFE127
	.4byte	.LLST21
	.uleb128 0x2d
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x18f
	.4byte	0xc5
	.4byte	.LLST22
	.byte	0x0
	.uleb128 0x3e
	.4byte	0x11d0
	.byte	0x1
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x178
	.4byte	.LFB125
	.4byte	.LFE125
	.4byte	.LLST23
	.uleb128 0x41
	.4byte	0xe77
	.4byte	.LBB32
	.4byte	.LBE32
	.byte	0x1
	.2byte	0x17b
	.byte	0x0
	.uleb128 0x42
	.4byte	0x1261
	.byte	0x1
	.4byte	.LASF235
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.4byte	0x106
	.4byte	.LFB124
	.4byte	.LFE124
	.4byte	.LLST24
	.uleb128 0x27
	.4byte	.LASF236
	.byte	0x1
	.byte	0xf5
	.4byte	0x1fd
	.4byte	.LLST25
	.uleb128 0x43
	.4byte	.LASF237
	.byte	0x1
	.byte	0xf7
	.4byte	0x754
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x44
	.ascii	"rom\000"
	.byte	0x1
	.byte	0xf8
	.4byte	0x94
	.uleb128 0x45
	.ascii	"bit\000"
	.byte	0x1
	.byte	0xf9
	.4byte	0xd0
	.4byte	.LLST26
	.uleb128 0x43
	.4byte	.LASF238
	.byte	0x1
	.byte	0xfa
	.4byte	0x1261
	.byte	0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x46
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x145
	.4byte	0x1271
	.4byte	.LLST27
	.uleb128 0x3c
	.4byte	0xe6e
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.2byte	0x16f
	.uleb128 0x41
	.4byte	0xe77
	.4byte	.LBB44
	.4byte	.LBE44
	.byte	0x1
	.2byte	0x16c
	.byte	0x0
	.uleb128 0xd
	.4byte	0x1271
	.4byte	0x127
	.uleb128 0x15
	.4byte	0x120
	.byte	0xff
	.byte	0x0
	.uleb128 0x11
	.4byte	0xe6
	.uleb128 0x42
	.4byte	0x12ae
	.byte	0x1
	.4byte	.LASF240
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.4byte	0x94
	.4byte	.LFB120
	.4byte	.LFE120
	.4byte	.LLST28
	.uleb128 0x2b
	.ascii	"a\000"
	.byte	0x1
	.byte	0xbc
	.4byte	0x119
	.4byte	.LLST29
	.uleb128 0x2b
	.ascii	"b\000"
	.byte	0x1
	.byte	0xbc
	.4byte	0x119
	.4byte	.LLST30
	.byte	0x0
	.uleb128 0x42
	.4byte	0x12db
	.byte	0x1
	.4byte	.LASF241
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.4byte	0x1fb
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LLST31
	.uleb128 0x27
	.4byte	.LASF93
	.byte	0x1
	.byte	0x89
	.4byte	0xd0
	.4byte	.LLST32
	.byte	0x0
	.uleb128 0x29
	.4byte	0x1322
	.byte	0x1
	.4byte	.LASF242
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST33
	.uleb128 0x27
	.4byte	.LASF243
	.byte	0x1
	.byte	0x47
	.4byte	0xb6d
	.4byte	.LLST34
	.uleb128 0x27
	.4byte	.LASF73
	.byte	0x1
	.byte	0x47
	.4byte	0xd0
	.4byte	.LLST35
	.uleb128 0x27
	.4byte	.LASF93
	.byte	0x1
	.byte	0x47
	.4byte	0xd0
	.4byte	.LLST36
	.byte	0x0
	.uleb128 0x29
	.4byte	0x138e
	.byte	0x1
	.4byte	.LASF244
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LLST37
	.uleb128 0x27
	.4byte	.LASF210
	.byte	0x1
	.byte	0x75
	.4byte	0x64d
	.4byte	.LLST38
	.uleb128 0x27
	.4byte	.LASF243
	.byte	0x1
	.byte	0x75
	.4byte	0x1fb
	.4byte	.LLST39
	.uleb128 0x27
	.4byte	.LASF73
	.byte	0x1
	.byte	0x75
	.4byte	0xd0
	.4byte	.LLST40
	.uleb128 0x27
	.4byte	.LASF93
	.byte	0x1
	.byte	0x75
	.4byte	0xd0
	.4byte	.LLST41
	.uleb128 0x28
	.4byte	.LASF219
	.byte	0x1
	.byte	0x77
	.4byte	0xec8
	.uleb128 0x28
	.4byte	.LASF245
	.byte	0x1
	.byte	0x78
	.4byte	0xb90
	.byte	0x0
	.uleb128 0x29
	.4byte	0x140d
	.byte	0x1
	.4byte	.LASF246
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LLST42
	.uleb128 0x27
	.4byte	.LASF210
	.byte	0x1
	.byte	0x66
	.4byte	0x64d
	.4byte	.LLST43
	.uleb128 0x27
	.4byte	.LASF243
	.byte	0x1
	.byte	0x66
	.4byte	0x1fb
	.4byte	.LLST44
	.uleb128 0x27
	.4byte	.LASF73
	.byte	0x1
	.byte	0x66
	.4byte	0xd0
	.4byte	.LLST45
	.uleb128 0x27
	.4byte	.LASF247
	.byte	0x1
	.byte	0x66
	.4byte	0xd0
	.4byte	.LLST46
	.uleb128 0x47
	.4byte	.LASF219
	.byte	0x1
	.byte	0x68
	.4byte	0xec8
	.4byte	.LLST47
	.uleb128 0x28
	.4byte	.LASF245
	.byte	0x1
	.byte	0x69
	.4byte	0xb90
	.uleb128 0x47
	.4byte	.LASF93
	.byte	0x1
	.byte	0x6a
	.4byte	0xd0
	.4byte	.LLST48
	.byte	0x0
	.uleb128 0x29
	.4byte	0x1454
	.byte	0x1
	.4byte	.LASF248
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LLST49
	.uleb128 0x27
	.4byte	.LASF210
	.byte	0x1
	.byte	0x82
	.4byte	0x64d
	.4byte	.LLST50
	.uleb128 0x27
	.4byte	.LASF243
	.byte	0x1
	.byte	0x82
	.4byte	0x1fb
	.4byte	.LLST51
	.uleb128 0x27
	.4byte	.LASF247
	.byte	0x1
	.byte	0x82
	.4byte	0xd0
	.4byte	.LLST52
	.byte	0x0
	.uleb128 0x48
	.byte	0x1
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x1a5
	.4byte	.LFB129
	.4byte	.LFE129
	.4byte	.LLST53
	.uleb128 0x29
	.4byte	0x14ac
	.byte	0x1
	.4byte	.LASF250
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST54
	.uleb128 0x27
	.4byte	.LASF243
	.byte	0x1
	.byte	0x5e
	.4byte	0xb6d
	.4byte	.LLST55
	.uleb128 0x27
	.4byte	.LASF251
	.byte	0x1
	.byte	0x5e
	.4byte	0xd0
	.4byte	.LLST56
	.uleb128 0x28
	.4byte	.LASF252
	.byte	0x1
	.byte	0x60
	.4byte	0xb90
	.byte	0x0
	.uleb128 0x29
	.4byte	0x14ef
	.byte	0x1
	.4byte	.LASF253
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST57
	.uleb128 0x27
	.4byte	.LASF243
	.byte	0x1
	.byte	0x56
	.4byte	0xb6d
	.4byte	.LLST58
	.uleb128 0x27
	.4byte	.LASF251
	.byte	0x1
	.byte	0x56
	.4byte	0xd0
	.4byte	.LLST59
	.uleb128 0x28
	.4byte	.LASF252
	.byte	0x1
	.byte	0x58
	.4byte	0xb90
	.byte	0x0
	.uleb128 0x29
	.4byte	0x1532
	.byte	0x1
	.4byte	.LASF254
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST60
	.uleb128 0x27
	.4byte	.LASF243
	.byte	0x1
	.byte	0x4e
	.4byte	0xb6d
	.4byte	.LLST61
	.uleb128 0x27
	.4byte	.LASF251
	.byte	0x1
	.byte	0x4e
	.4byte	0xd0
	.4byte	.LLST62
	.uleb128 0x28
	.4byte	.LASF252
	.byte	0x1
	.byte	0x50
	.4byte	0xb90
	.byte	0x0
	.uleb128 0x49
	.4byte	0x15a3
	.byte	0x1
	.4byte	.LASF255
	.byte	0x1
	.byte	0xc2
	.4byte	0x106
	.4byte	.LFB121
	.4byte	.LFE121
	.4byte	.LLST63
	.uleb128 0x4a
	.ascii	"dir\000"
	.byte	0x1
	.byte	0xcd
	.4byte	0x15a3
	.byte	0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x4a
	.ascii	"st\000"
	.byte	0x1
	.byte	0xce
	.4byte	0xcf1
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x43
	.4byte	.LASF256
	.byte	0x1
	.byte	0xcf
	.4byte	0x1261
	.byte	0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x4b
	.4byte	0x1593
	.4byte	.LBB51
	.4byte	.LBE51
	.uleb128 0x28
	.4byte	.LASF257
	.byte	0x1
	.byte	0xd7
	.4byte	0x1fd
	.byte	0x0
	.uleb128 0x4c
	.4byte	0xe77
	.4byte	.LBB52
	.4byte	.LBE52
	.byte	0x1
	.byte	0xe4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe21
	.uleb128 0xd
	.4byte	0x15b9
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0x120
	.byte	0x7
	.byte	0x0
	.uleb128 0x11
	.4byte	0x15a9
	.uleb128 0x30
	.4byte	.LASF258
	.byte	0x9
	.2byte	0x129
	.4byte	0x15ca
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1ef
	.uleb128 0x43
	.4byte	.LASF259
	.byte	0x1
	.byte	0x23
	.4byte	0x94
	.byte	0x5
	.byte	0x3
	.4byte	g_rom
	.uleb128 0x43
	.4byte	.LASF260
	.byte	0x1
	.byte	0x24
	.4byte	0xd0
	.byte	0x5
	.byte	0x3
	.4byte	g_romSize
	.uleb128 0x43
	.4byte	.LASF261
	.byte	0x1
	.byte	0x25
	.4byte	0xe63
	.byte	0x5
	.byte	0x3
	.4byte	g_vramHHeap
	.uleb128 0x43
	.4byte	.LASF262
	.byte	0x1
	.byte	0x27
	.4byte	0xd0
	.byte	0x5
	.byte	0x3
	.4byte	g_romCount
	.uleb128 0xd
	.4byte	0x1624
	.4byte	0x12e
	.uleb128 0x15
	.4byte	0x120
	.byte	0xff
	.byte	0x0
	.uleb128 0x43
	.4byte	.LASF263
	.byte	0x1
	.byte	0x28
	.4byte	0x1614
	.byte	0x5
	.byte	0x3
	.4byte	g_romNames
	.uleb128 0x43
	.4byte	.LASF264
	.byte	0x1
	.byte	0x29
	.4byte	0xe6
	.byte	0x5
	.byte	0x3
	.4byte	g_pauseCount
	.uleb128 0x43
	.4byte	.LASF265
	.byte	0x1
	.byte	0x2a
	.4byte	0x106
	.byte	0x5
	.byte	0x3
	.4byte	g_paused
	.uleb128 0x4d
	.4byte	.LASF266
	.byte	0x1
	.byte	0x2b
	.4byte	0x106
	.byte	0x0
	.uleb128 0xd
	.4byte	0x166e
	.4byte	0x49
	.uleb128 0x4e
	.byte	0x0
	.uleb128 0x4f
	.4byte	.LASF267
	.byte	0xb
	.byte	0x2c
	.4byte	0x1663
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0x1686
	.4byte	0x49
	.uleb128 0x4e
	.byte	0x0
	.uleb128 0x4f
	.4byte	.LASF268
	.byte	0xb
	.byte	0x2d
	.4byte	0x167b
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0x169e
	.4byte	0x49
	.uleb128 0x4e
	.byte	0x0
	.uleb128 0x4f
	.4byte	.LASF269
	.byte	0xb
	.byte	0x2e
	.4byte	0x1693
	.byte	0x1
	.byte	0x1
	.uleb128 0x50
	.4byte	.LASF270
	.byte	0x3
	.2byte	0x149
	.4byte	0x16ba
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0xce5
	.uleb128 0x51
	.4byte	.LASF271
	.byte	0x1
	.byte	0x1f
	.4byte	0xce5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	g_neoContext
	.uleb128 0x51
	.4byte	.LASF272
	.byte	0x1
	.byte	0x22
	.4byte	0x754
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	g_header
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
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x4
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
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.byte	0x0
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x4e
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x50
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
	.uleb128 0x51
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
	.4byte	0x16e5
	.4byte	0xe80
	.ascii	"neoSystemIPCSync\000"
	.4byte	0xe92
	.ascii	"neoSystemRegionSize\000"
	.4byte	0xed3
	.ascii	"neoSystemSetClockDivide\000"
	.4byte	0xefc
	.ascii	"neoSystemGetRomCount\000"
	.4byte	0xf12
	.ascii	"neoSystemGetRomName\000"
	.4byte	0xf3b
	.ascii	"neoSystemSetEnabled\000"
	.4byte	0x10dd
	.ascii	"neoSystemExecute\000"
	.4byte	0x1150
	.ascii	"neoSystemIrq\000"
	.4byte	0x117b
	.ascii	"neoSystemIrqAk\000"
	.4byte	0x11a6
	.ascii	"neoSystemClose\000"
	.4byte	0x11d0
	.ascii	"neoSystemOpen\000"
	.4byte	0x1276
	.ascii	"stringCompare\000"
	.4byte	0x12ae
	.ascii	"neoSystemVramHAlloc\000"
	.4byte	0x12db
	.ascii	"neoSystemReadRom\000"
	.4byte	0x1322
	.ascii	"neoSystemReadRegion\000"
	.4byte	0x138e
	.ascii	"neoSystemLoadRegionEx\000"
	.4byte	0x140d
	.ascii	"neoSystemLoadRegion\000"
	.4byte	0x1454
	.ascii	"neoSystemReset\000"
	.4byte	0x1469
	.ascii	"neoSystemLoadTile\000"
	.4byte	0x14ac
	.ascii	"neoSystemLoadSprite2\000"
	.4byte	0x14ef
	.ascii	"neoSystemLoadSprite\000"
	.4byte	0x1532
	.ascii	"neoSystemInit\000"
	.4byte	0x16ab
	.ascii	"g_neo\000"
	.4byte	0x16c0
	.ascii	"g_neoContext\000"
	.4byte	0x16d2
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
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF27:
	.ascii	"clearColor\000"
.LASF49:
	.ascii	"checkpc\000"
.LASF53:
	.ascii	"write8\000"
.LASF127:
	.ascii	"smaBankbit\000"
.LASF178:
	.ascii	"cpuCheckPcTable\000"
.LASF135:
	.ascii	"spriteMask\000"
.LASF88:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF157:
	.ascii	"ctrl3Reg\000"
.LASF236:
	.ascii	"szFileName\000"
.LASF58:
	.ascii	"fetch32\000"
.LASF143:
	.ascii	"cpuClocksPerScanline\000"
.LASF65:
	.ascii	"TRead16Func\000"
.LASF255:
	.ascii	"neoSystemInit\000"
.LASF109:
	.ascii	"romBankCount\000"
.LASF138:
	.ascii	"tileOffsetX\000"
.LASF176:
	.ascii	"cpuWrite16Table\000"
.LASF14:
	.ascii	"uint32\000"
.LASF259:
	.ascii	"g_rom\000"
.LASF36:
	.ascii	"dev_t\000"
.LASF23:
	.ascii	"GL_MODELVIEW\000"
.LASF140:
	.ascii	"tileScaleX\000"
.LASF141:
	.ascii	"tileScaleY\000"
.LASF34:
	.ascii	"time_t\000"
.LASF256:
	.ascii	"szFilename\000"
.LASF244:
	.ascii	"neoSystemReadRegion\000"
.LASF230:
	.ascii	"neoSystemExecute\000"
.LASF54:
	.ascii	"write16\000"
.LASF70:
	.ascii	"TCheckPcFunc\000"
.LASF169:
	.ascii	"varEnd\000"
.LASF67:
	.ascii	"TWrite8Func\000"
.LASF50:
	.ascii	"read8\000"
.LASF240:
	.ascii	"stringCompare\000"
.LASF215:
	.ascii	"neoSystemSetEnabled\000"
.LASF227:
	.ascii	"keyMask\000"
.LASF221:
	.ascii	"neoSystemLidClose\000"
.LASF226:
	.ascii	"lastKeys\000"
.LASF207:
	.ascii	"neoResetContext\000"
.LASF191:
	.ascii	"st_mtime\000"
.LASF38:
	.ascii	"uid_t\000"
.LASF80:
	.ascii	"TNeoADPCMBStream\000"
.LASF64:
	.ascii	"TRead8Func\000"
.LASF137:
	.ascii	"pTileBuffer\000"
.LASF174:
	.ascii	"cpuRead32Table\000"
.LASF25:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF8:
	.ascii	"long int\000"
.LASF79:
	.ascii	"frequency\000"
.LASF101:
	.ascii	"audio2Offset\000"
.LASF68:
	.ascii	"TWrite16Func\000"
.LASF56:
	.ascii	"fetch8\000"
.LASF234:
	.ascii	"neoSystemClose\000"
.LASF254:
	.ascii	"neoSystemLoadSprite\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF167:
	.ascii	"keyGrid\000"
.LASF229:
	.ascii	"input\000"
.LASF272:
	.ascii	"g_header\000"
.LASF55:
	.ascii	"write32\000"
.LASF105:
	.ascii	"data\000"
.LASF225:
	.ascii	"keysPressed\000"
.LASF59:
	.ascii	"IrqCallback\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF158:
	.ascii	"ctrl4Reg\000"
.LASF233:
	.ascii	"neoSystemIrqAk\000"
.LASF190:
	.ascii	"st_spare1\000"
.LASF185:
	.ascii	"st_uid\000"
.LASF194:
	.ascii	"st_spare3\000"
.LASF197:
	.ascii	"st_spare4\000"
.LASF218:
	.ascii	"pressed\000"
.LASF148:
	.ascii	"romBankAddress\000"
.LASF269:
	.ascii	"TAN_bin\000"
.LASF74:
	.ascii	"step\000"
.LASF112:
	.ascii	"adpcmActive\000"
.LASF87:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF247:
	.ascii	"maxSize\000"
.LASF187:
	.ascii	"st_rdev\000"
.LASF41:
	.ascii	"nlink_t\000"
.LASF89:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF132:
	.ascii	"vramBaseMask\000"
.LASF250:
	.ascii	"neoSystemLoadTile\000"
.LASF108:
	.ascii	"spriteCount\000"
.LASF208:
	.ascii	"neoSystemRegionSize\000"
.LASF243:
	.ascii	"pDst\000"
.LASF61:
	.ascii	"UnrecognizedCallback\000"
.LASF242:
	.ascii	"neoSystemReadRom\000"
.LASF248:
	.ascii	"neoSystemLoadRegion\000"
.LASF204:
	.ascii	"pTop\000"
.LASF245:
	.ascii	"fileOffset\000"
.LASF214:
	.ascii	"neoSystemGetRomName\000"
.LASF20:
	.ascii	"char\000"
.LASF160:
	.ascii	"irqVectorLatch\000"
.LASF119:
	.ascii	"pVram\000"
.LASF224:
	.ascii	"keysChanged\000"
.LASF161:
	.ascii	"screenDarkLatch\000"
.LASF103:
	.ascii	"name\000"
.LASF44:
	.ascii	"prev_pc\000"
.LASF76:
	.ascii	"_TNeoADPCMBStream\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF206:
	.ascii	"lcdSwap\000"
.LASF82:
	.ascii	"NEOROM_BIOS\000"
.LASF43:
	.ascii	"flags\000"
.LASF16:
	.ascii	"double\000"
.LASF134:
	.ascii	"autoAnimationCounter\000"
.LASF28:
	.ascii	"textures\000"
.LASF22:
	.ascii	"GL_POSITION\000"
.LASF270:
	.ascii	"g_neo\000"
.LASF179:
	.ascii	"TNeoContext\000"
.LASF142:
	.ascii	"cpuClockDivide\000"
.LASF130:
	.ascii	"frameCount\000"
.LASF150:
	.ascii	"vramOffset\000"
.LASF260:
	.ascii	"g_romSize\000"
.LASF94:
	.ascii	"TNeoRomEntry\000"
.LASF193:
	.ascii	"st_ctime\000"
.LASF275:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF235:
	.ascii	"neoSystemOpen\000"
.LASF170:
	.ascii	"fill\000"
.LASF266:
	.ascii	"forceunpause\000"
.LASF253:
	.ascii	"neoSystemLoadSprite2\000"
.LASF47:
	.ascii	"cycles\000"
.LASF177:
	.ascii	"cpuWrite32Table\000"
.LASF104:
	.ascii	"romEntry\000"
.LASF100:
	.ascii	"fixedBankType\000"
.LASF164:
	.ascii	"paletteRamLatch\000"
.LASF186:
	.ascii	"st_gid\000"
.LASF196:
	.ascii	"st_blocks\000"
.LASF267:
	.ascii	"COS_bin\000"
.LASF116:
	.ascii	"pRam\000"
.LASF118:
	.ascii	"pCard\000"
.LASF262:
	.ascii	"g_romCount\000"
.LASF133:
	.ascii	"displayCounter\000"
.LASF63:
	.ascii	"TCycloneContext\000"
.LASF241:
	.ascii	"neoSystemVramHAlloc\000"
.LASF145:
	.ascii	"watchdogCounter\000"
.LASF195:
	.ascii	"st_blksize\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF86:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF188:
	.ascii	"st_size\000"
.LASF173:
	.ascii	"cpuRead16Table\000"
.LASF153:
	.ascii	"displayControlMask\000"
.LASF201:
	.ascii	"_TLinearHeap\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF165:
	.ascii	"active\000"
.LASF199:
	.ascii	"dirStruct\000"
.LASF71:
	.ascii	"Cyclone\000"
.LASF115:
	.ascii	"pBios\000"
.LASF219:
	.ascii	"pRegion\000"
.LASF211:
	.ascii	"clock\000"
.LASF136:
	.ascii	"paletteDirty\000"
.LASF220:
	.ascii	"neoDoInput\000"
.LASF268:
	.ascii	"SIN_bin\000"
.LASF26:
	.ascii	"matrixMode\000"
.LASF30:
	.ascii	"nextBlock\000"
.LASF84:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF180:
	.ascii	"stat\000"
.LASF172:
	.ascii	"cpuRead8Table\000"
.LASF238:
	.ascii	"rompath\000"
.LASF128:
	.ascii	"smaRand\000"
.LASF72:
	.ascii	"_TNeoADPCMStream\000"
.LASF69:
	.ascii	"TWrite32Func\000"
.LASF123:
	.ascii	"smaAddr0\000"
.LASF11:
	.ascii	"long long int\000"
.LASF21:
	.ascii	"GL_PROJECTION\000"
.LASF159:
	.ascii	"coinReg\000"
.LASF90:
	.ascii	"NEOROM_COUNT\000"
.LASF77:
	.ascii	"initOffset\000"
.LASF216:
	.ascii	"enable\000"
.LASF264:
	.ascii	"g_pauseCount\000"
.LASF239:
	.ascii	"bankSize\000"
.LASF62:
	.ascii	"internal\000"
.LASF57:
	.ascii	"fetch16\000"
.LASF217:
	.ascii	"mask\000"
.LASF232:
	.ascii	"neoSystemIrq\000"
.LASF124:
	.ascii	"smaAddr1\000"
.LASF98:
	.ascii	"protection\000"
.LASF42:
	.ascii	"unused\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF263:
	.ascii	"g_romNames\000"
.LASF223:
	.ascii	"neoSystemDoKeys\000"
.LASF91:
	.ascii	"TNeoRomRegion\000"
.LASF152:
	.ascii	"displayControl\000"
.LASF126:
	.ascii	"smaBankoffset\000"
.LASF24:
	.ascii	"GL_TEXTURE\000"
.LASF131:
	.ascii	"pVramBase\000"
.LASF73:
	.ascii	"offset\000"
.LASF113:
	.ascii	"pRom0\000"
.LASF139:
	.ascii	"tileOffsetY\000"
.LASF175:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF184:
	.ascii	"st_nlink\000"
.LASF37:
	.ascii	"off_t\000"
.LASF40:
	.ascii	"mode_t\000"
.LASF19:
	.ascii	"bool\000"
.LASF81:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF29:
	.ascii	"activeTexture\000"
.LASF102:
	.ascii	"sectionCount\000"
.LASF156:
	.ascii	"ctrl2Reg\000"
.LASF51:
	.ascii	"read16\000"
.LASF189:
	.ascii	"st_atime\000"
.LASF276:
	.ascii	"_TNeoRomRegion\000"
.LASF146:
	.ascii	"paletteBank\000"
.LASF265:
	.ascii	"g_paused\000"
.LASF271:
	.ascii	"g_neoContext\000"
.LASF181:
	.ascii	"st_dev\000"
.LASF48:
	.ascii	"membase\000"
.LASF273:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF129:
	.ascii	"scanline\000"
.LASF93:
	.ascii	"size\000"
.LASF192:
	.ascii	"st_spare2\000"
.LASF121:
	.ascii	"pPalette\000"
.LASF246:
	.ascii	"neoSystemLoadRegionEx\000"
.LASF228:
	.ascii	"neoSystemDoFrame\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF166:
	.ascii	"debug\000"
.LASF210:
	.ascii	"region\000"
.LASF212:
	.ascii	"neoSystemIPCSync\000"
.LASF114:
	.ascii	"pRom1\000"
.LASF205:
	.ascii	"TLinearHeap\000"
.LASF222:
	.ascii	"keys\000"
.LASF97:
	.ascii	"version\000"
.LASF52:
	.ascii	"read32\000"
.LASF274:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoSystem.c\000"
.LASF106:
	.ascii	"TNeoRomHeader\000"
.LASF120:
	.ascii	"pSpriteRam\000"
.LASF231:
	.ascii	"neoSystemUpdateIrq\000"
.LASF60:
	.ascii	"ResetCallback\000"
.LASF163:
	.ascii	"sramProtectLatch\000"
.LASF147:
	.ascii	"fixedBank\000"
.LASF213:
	.ascii	"neoSystemGetRomCount\000"
.LASF96:
	.ascii	"magic\000"
.LASF32:
	.ascii	"nameCount\000"
.LASF17:
	.ascii	"false\000"
.LASF155:
	.ascii	"ctrl1Reg\000"
.LASF46:
	.ascii	"state_flags\000"
.LASF99:
	.ascii	"sramProtection\000"
.LASF258:
	.ascii	"glGlob\000"
.LASF117:
	.ascii	"pSram\000"
.LASF257:
	.ascii	"szExt\000"
.LASF78:
	.ascii	"freqCounter\000"
.LASF4:
	.ascii	"short int\000"
.LASF168:
	.ascii	"frameCounter\000"
.LASF111:
	.ascii	"adpcmb\000"
.LASF31:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF249:
	.ascii	"neoSystemReset\000"
.LASF251:
	.ascii	"index\000"
.LASF18:
	.ascii	"true\000"
.LASF154:
	.ascii	"displayCounterLoad\000"
.LASF144:
	.ascii	"irqPending\000"
.LASF237:
	.ascii	"header\000"
.LASF200:
	.ascii	"DIR_ITER\000"
.LASF92:
	.ascii	"_TNeoRomEntry\000"
.LASF95:
	.ascii	"_TNeoRomHeader\000"
.LASF198:
	.ascii	"device\000"
.LASF83:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF66:
	.ascii	"TRead32Func\000"
.LASF183:
	.ascii	"st_mode\000"
.LASF203:
	.ascii	"pAlloc\000"
.LASF35:
	.ascii	"ino_t\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF209:
	.ascii	"neoSystemSetClockDivide\000"
.LASF110:
	.ascii	"adpcm\000"
.LASF15:
	.ascii	"float\000"
.LASF33:
	.ascii	"gl_hidden_globals\000"
.LASF261:
	.ascii	"g_vramHHeap\000"
.LASF107:
	.ascii	"pVideoWriteTable\000"
.LASF122:
	.ascii	"bankTable\000"
.LASF125:
	.ascii	"smaBankAddr\000"
.LASF182:
	.ascii	"st_ino\000"
.LASF252:
	.ascii	"romOffset\000"
.LASF171:
	.ascii	"_TNeoContext\000"
.LASF45:
	.ascii	"reserved\000"
.LASF85:
	.ascii	"NEOROM_AUDODATA\000"
.LASF39:
	.ascii	"gid_t\000"
.LASF162:
	.ascii	"fixedRomLatch\000"
.LASF149:
	.ascii	"sramProtectCount\000"
.LASF75:
	.ascii	"TNeoADPCMStream\000"
.LASF202:
	.ascii	"pBase\000"
.LASF151:
	.ascii	"vramMod\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
