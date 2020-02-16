	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"io_nmmc.c"
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
	.type	_Neo_SendMMCCommand, %function
_Neo_SendMMCCommand:
.LFB9:
	.file 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_nmmc.c"
	.loc 1 127 0
	push	{r4, lr}
.LCFI0:
.LVL0:
.LBB310:
.LBB311:
	.loc 1 53 0
	ldr	r2, .L20
	mov	r3, #1
	neg	r3, r3
	strb	r3, [r2]
	.loc 1 54 0
	sub	r2, r2, #2
	mov	r3, #128
.L2:
	ldrh	r4, [r2]
	tst	r4, r3
	bne	.L2
	.loc 1 55 0
	ldr	r3, .L20
	ldrb	r2, [r3]
.LBE311:
.LBE310:
	.loc 1 129 0
	mov	r2, #64
	orr	r0, r0, r2
.LVL1:
	lsl	r0, r0, #24
	lsr	r0, r0, #24
.LBB312:
.LBB313:
	.loc 1 54 0
	ldr	r2, .L20+4
	.loc 1 53 0
	strb	r0, [r3]
	.loc 1 54 0
	mov	r3, #128
.L3:
	ldrh	r0, [r2]
	tst	r0, r3
	bne	.L3
	.loc 1 55 0
	ldr	r3, .L20
	ldrb	r2, [r3]
.LBE313:
.LBE312:
	.loc 1 130 0
	lsr	r2, r1, #24
.LBB314:
.LBB315:
	.loc 1 53 0
	strb	r2, [r3]
	.loc 1 54 0
	ldr	r2, .L20+4
	mov	r3, #128
.L4:
	ldrh	r0, [r2]
	tst	r0, r3
	bne	.L4
	.loc 1 55 0
	ldr	r3, .L20
	ldrb	r2, [r3]
.LBE315:
.LBE314:
	.loc 1 131 0
	lsl	r2, r1, #8
	lsr	r2, r2, #24
.LBB316:
.LBB317:
	.loc 1 53 0
	strb	r2, [r3]
	.loc 1 54 0
	ldr	r2, .L20+4
	mov	r3, #128
.L5:
	ldrh	r0, [r2]
	tst	r0, r3
	bne	.L5
	.loc 1 55 0
	ldr	r3, .L20
	ldrb	r2, [r3]
.LBE317:
.LBE316:
	.loc 1 132 0
	lsl	r2, r1, #16
	lsr	r2, r2, #24
.LBB318:
.LBB319:
	.loc 1 53 0
	strb	r2, [r3]
	.loc 1 54 0
	ldr	r2, .L20+4
	mov	r3, #128
.L6:
	ldrh	r0, [r2]
	tst	r0, r3
	bne	.L6
	.loc 1 55 0
	ldr	r3, .L20
.LBE319:
.LBE318:
	.loc 1 133 0
	lsl	r1, r1, #24
.LVL2:
.LBB321:
.LBB320:
	.loc 1 55 0
	ldrb	r2, [r3]
.LBE320:
.LBE321:
	.loc 1 133 0
	lsr	r1, r1, #24
.LBB322:
.LBB323:
	.loc 1 54 0
	ldr	r2, .L20+4
	.loc 1 53 0
	strb	r1, [r3]
	.loc 1 54 0
	mov	r3, #128
.L7:
	ldrh	r1, [r2]
	tst	r1, r3
	bne	.L7
	.loc 1 55 0
	ldr	r2, .L20
	ldrb	r3, [r2]
.LBE323:
.LBE322:
.LBB324:
.LBB325:
	.loc 1 53 0
	mov	r3, #107
	neg	r3, r3
	strb	r3, [r2]
	.loc 1 54 0
	sub	r2, r2, #2
	mov	r3, #128
.L8:
	ldrh	r1, [r2]
	tst	r1, r3
	bne	.L8
	.loc 1 55 0
	ldr	r2, .L20
	ldrb	r3, [r2]
.LBE325:
.LBE324:
.LBB326:
.LBB327:
	.loc 1 53 0
	mov	r3, #1
	neg	r3, r3
	strb	r3, [r2]
	.loc 1 54 0
	sub	r2, r2, #2
	mov	r3, #128
.L9:
	ldrh	r1, [r2]
	tst	r1, r3
	bne	.L9
	.loc 1 55 0
	ldr	r3, .L20
.LBE327:
.LBE326:
	.loc 1 137 0
	@ sp needed for prologue
.LBB329:
.LBB328:
	.loc 1 55 0
	ldrb	r3, [r3]
.LBE328:
.LBE329:
	.loc 1 137 0
	pop	{r4, pc}
.L21:
	.align	2
.L20:
	.word	67109282
	.word	67109280
.LFE9:
	.size	_Neo_SendMMCCommand, .-_Neo_SendMMCCommand
	.align	2
	.code	16
	.thumb_func
	.type	_Neo_SelectMMC, %function
_Neo_SelectMMC:
.LFB7:
	.loc 1 104 0
	push	{r4, lr}
.LCFI1:
.LVL3:
	.loc 1 105 0
	ldr	r3, .L26
	strb	r0, [r3, #1]
	.loc 1 106 0
	mov	r0, r3
.LVL4:
	bl	cardWriteCommand
	.loc 1 107 0
	ldr	r3, .L26+4
	ldr	r2, .L26+8
	str	r2, [r3]
.L23:
	.loc 1 108 0
	ldr	r2, [r3]
	cmp	r2, #0
	blt	.L23
	.loc 1 110 0
	@ sp needed for prologue
	pop	{r4, pc}
.L27:
	.align	2
.L26:
	.word	.LANCHOR0
	.word	67109284
	.word	-1610612736
.LFE7:
	.size	_Neo_SelectMMC, .-_Neo_SelectMMC
	.align	2
	.code	16
	.thumb_func
	.type	_Neo_EnableMMC, %function
_Neo_EnableMMC:
.LFB8:
	.loc 1 113 0
	push	{r4, lr}
.LCFI2:
.LVL5:
	.loc 1 114 0
	cmp	r0, #0
	bne	.L29
.LBB330:
.LBB331:
	.loc 1 60 0
	ldr	r3, .L32
	strh	r0, [r3]
.LBE331:
.LBE330:
	.loc 1 116 0
	bl	_Neo_SelectMMC
.LVL6:
	.loc 1 117 0
	mov	r0, #0
	bl	_Neo_SelectMMC
	b	.L31
.LVL7:
.L29:
	.loc 1 119 0
	mov	r0, #1
.LVL8:
	bl	_Neo_SelectMMC
	.loc 1 120 0
	mov	r0, #1
	bl	_Neo_SelectMMC
.LBB332:
.LBB333:
	.loc 1 48 0
	ldr	r3, .L32+4
	ldrb	r2, [r3, #8]
	ldr	r3, .L32+8
	orr	r2, r2, r3
	lsl	r2, r2, #16
	ldr	r3, .L32
	lsr	r2, r2, #16
	strh	r2, [r3]
.L31:
.LBE333:
.LBE332:
	.loc 1 124 0
	@ sp needed for prologue
	pop	{r4, pc}
.L33:
	.align	2
.L32:
	.word	67109280
	.word	.LANCHOR0
	.word	-24512
.LFE8:
	.size	_Neo_EnableMMC, .-_Neo_EnableMMC
	.align	2
	.global	_NMMC_readSectors
	.code	16
	.thumb_func
	.type	_NMMC_readSectors, %function
_NMMC_readSectors:
.LFB17:
	.loc 1 306 0
	push	{r3, r4, r5, r6, r7, lr}
.LCFI3:
.LVL9:
	.loc 1 310 0
	lsl	r7, r0, #9
.LVL10:
	.loc 1 312 0
	mov	r0, #1
	.loc 1 306 0
	mov	r5, r1
	mov	r6, r2
.LVL11:
.LBB334:
.LBB336:
.LBB338:
.LBB340:
	.loc 1 54 0
	ldr	r4, .L61
.LBE340:
.LBE338:
.LBE336:
.LBE334:
	.loc 1 312 0
	bl	_Neo_EnableMMC
.LVL12:
	.loc 1 314 0
	b	.L35
.L48:
	.loc 1 315 0
	mov	r0, #17
	mov	r1, r7
	bl	_Neo_SendMMCCommand
.LBB345:
.LBB343:
.LBB342:
.LBB339:
	.loc 1 53 0
	mov	r2, #1
	neg	r2, r2
	ldr	r1, .L61+4
.LBE339:
.LBE342:
.LBE343:
.LBE345:
	.loc 1 315 0
	mov	r3, #0
.LVL13:
.LBB346:
.LBB335:
.LBB337:
.LBB341:
	.loc 1 53 0
	mov	ip, r2
	.loc 1 54 0
	mov	r0, #128
.L38:
	.loc 1 53 0
	mov	r2, ip
	strb	r2, [r1]
.L36:
	.loc 1 54 0
	ldrh	r2, [r4]
	tst	r2, r0
	bne	.L36
	.loc 1 55 0
	ldrb	r2, [r1]
.LBE341:
.LBE337:
	.loc 1 142 0
	cmp	r2, #0
	beq	.L37
	.loc 1 141 0
	mov	r2, #128
	add	r3, r3, #1
	lsl	r2, r2, #1
	cmp	r3, r2
	bne	.L38
	b	.L60
.L37:
.LBE335:
.LBE346:
.LBB347:
.LBB349:
.LBB351:
.LBB352:
	.loc 1 53 0
	mov	r2, #1
	neg	r2, r2
	ldr	r1, .L61+4
.LBE352:
.LBE351:
.LBE349:
.LBE347:
.LBB355:
.LBB344:
	.loc 1 141 0
	mov	r3, #0
.LVL14:
.LBE344:
.LBE355:
.LBB356:
.LBB348:
.LBB350:
.LBB353:
	.loc 1 53 0
	mov	ip, r2
	.loc 1 54 0
	mov	r0, #128
.L42:
	.loc 1 53 0
	mov	r2, ip
	strb	r2, [r1]
.L40:
	.loc 1 54 0
	ldrh	r2, [r4]
	tst	r2, r0
	bne	.L40
	.loc 1 55 0
	ldrb	r2, [r1]
.LBE353:
.LBE350:
	.loc 1 142 0
	cmp	r2, #254
	beq	.L41
	.loc 1 141 0
	mov	r2, #128
	add	r3, r3, #1
	lsl	r2, r2, #1
	cmp	r3, r2
	bne	.L42
	b	.L60
.L41:
.LBE348:
.LBE356:
.LBB357:
.LBB358:
	.loc 1 53 0
	mov	r2, #1
	neg	r2, r2
	ldr	r1, .L61+4
.LBE358:
.LBE357:
.LBB360:
.LBB354:
	.loc 1 141 0
	mov	r3, #0
.LVL15:
.LBE354:
.LBE360:
.LBB361:
.LBB359:
	.loc 1 53 0
	mov	ip, r2
	.loc 1 54 0
	mov	r0, #128
.L45:
	.loc 1 53 0
	mov	r2, ip
	strb	r2, [r1]
.L44:
	.loc 1 54 0
	ldrh	r2, [r4]
	tst	r2, r0
	bne	.L44
	.loc 1 55 0
	ldrb	r2, [r1]
.LBE359:
.LBE361:
	.loc 1 326 0
	strb	r2, [r6, r3]
	.loc 1 325 0
	mov	r2, #128
	add	r3, r3, #1
	lsl	r2, r2, #2
	cmp	r3, r2
	bne	.L45
	add	r6, r6, r3
.LBB362:
.LBB363:
	.loc 1 53 0
	ldr	r2, .L61+4
	mov	r3, #1
.LVL16:
	neg	r3, r3
	strb	r3, [r2]
	.loc 1 54 0
	mov	r3, #128
.L46:
	ldrh	r2, [r4]
	tst	r2, r3
	bne	.L46
	.loc 1 55 0
	ldr	r2, .L61+4
	ldrb	r3, [r2]
.LBE363:
.LBE362:
.LBB364:
.LBB365:
	.loc 1 53 0
	mov	r3, #1
	neg	r3, r3
	strb	r3, [r2]
	.loc 1 54 0
	mov	r3, #128
.L47:
	ldrh	r2, [r4]
	tst	r2, r3
	bne	.L47
	.loc 1 55 0
	ldr	r3, .L61+4
.LBE365:
.LBE364:
	.loc 1 329 0
	sub	r5, r5, #1
.LBB367:
.LBB366:
	.loc 1 55 0
	ldrb	r3, [r3]
.LBE366:
.LBE367:
	.loc 1 329 0
	mov	r3, #128
	lsl	r3, r3, #2
	add	r7, r7, r3
.L35:
	.loc 1 314 0
	cmp	r5, #0
	bne	.L48
	.loc 1 332 0
	mov	r0, #0
	bl	_Neo_EnableMMC
	mov	r0, #1
.L49:
	.loc 1 334 0
	@ sp needed for prologue
.LVL17:
.LVL18:
.LVL19:
	pop	{r3, r4, r5, r6, r7, pc}
.LVL20:
.L60:
	.loc 1 322 0
	mov	r0, #0
	bl	_Neo_EnableMMC
.LVL21:
	mov	r0, #0
	.loc 1 323 0
	b	.L49
.L62:
	.align	2
.L61:
	.word	67109280
	.word	67109282
.LFE17:
	.size	_NMMC_readSectors, .-_NMMC_readSectors
	.align	2
	.global	_NMMC_writeSectors
	.code	16
	.thumb_func
	.type	_NMMC_writeSectors, %function
_NMMC_writeSectors:
.LFB16:
	.loc 1 259 0
	push	{r3, r4, r5, r6, r7, lr}
.LCFI4:
.LVL22:
	.loc 1 259 0
	mov	r5, r0
	.loc 1 265 0
	mov	r0, #1
.LVL23:
	.loc 1 259 0
	mov	r4, r1
	mov	r6, r2
	.loc 1 265 0
	bl	_Neo_EnableMMC
.LVL24:
	.loc 1 266 0
	lsl	r1, r5, #9
	mov	r0, #25
	bl	_Neo_SendMMCCommand
.LBB368:
.LBB370:
.LBB372:
.LBB373:
	.loc 1 53 0
	mov	r7, #1
	ldr	r1, .L112
	.loc 1 54 0
	ldr	r5, .L112+4
.LVL25:
.LBE373:
.LBE372:
.LBE370:
.LBE368:
	.loc 1 266 0
	mov	r3, #0
.LVL26:
.LBB376:
.LBB369:
.LBB371:
.LBB374:
	.loc 1 53 0
	neg	r7, r7
	.loc 1 54 0
	mov	r0, #128
.L67:
	.loc 1 53 0
	strb	r7, [r1]
.L64:
	.loc 1 54 0
	ldrh	r2, [r5]
	tst	r2, r0
	bne	.L64
	.loc 1 55 0
	ldrb	r2, [r1]
.LBE374:
.LBE371:
	.loc 1 142 0
	cmp	r2, #0
	bne	.L65
.LBE369:
.LBE376:
.LBB377:
.LBB379:
	.loc 1 53 0
	ldr	r3, .L112
.LVL27:
	.loc 1 54 0
	ldr	r2, .L112+4
	b	.L66
.LVL28:
.L65:
.LBE379:
.LBE377:
.LBB381:
.LBB375:
	.loc 1 141 0
	mov	r2, #128
	add	r3, r3, #1
	lsl	r2, r2, #1
	cmp	r3, r2
	bne	.L67
	b	.L111
.LVL29:
.L78:
.LBE375:
.LBE381:
.LBB382:
.LBB378:
	.loc 1 53 0
	mov	r1, #4
	neg	r1, r1
	strb	r1, [r3]
	.loc 1 54 0
	mov	r1, #128
.L69:
	ldrh	r0, [r2]
	tst	r0, r1
	bne	.L69
	.loc 1 55 0
	ldrb	r1, [r3]
.LBE378:
.LBE382:
.LBB383:
.LBB384:
	.loc 1 54 0
	mov	r5, #128
.LBE384:
.LBE383:
.LBB386:
.LBB380:
	.loc 1 55 0
	mov	r1, #0
.LVL30:
.L71:
.LBE380:
.LBE386:
	.loc 1 275 0
	ldrb	r0, [r6, r1]
.LBB387:
.LBB385:
	.loc 1 53 0
	strb	r0, [r3]
.L70:
	.loc 1 54 0
	ldrh	r0, [r2]
	tst	r0, r5
	bne	.L70
	.loc 1 55 0
	ldrb	r0, [r3]
.LBE385:
.LBE387:
	.loc 1 274 0
	mov	r0, #128
	add	r1, r1, #1
	lsl	r0, r0, #2
	cmp	r1, r0
	bne	.L71
	add	r6, r6, r1
.LVL31:
.LBB388:
.LBB389:
	.loc 1 53 0
	mov	r1, #1
.LVL32:
	neg	r1, r1
	strb	r1, [r3]
	.loc 1 54 0
	mov	r1, #128
.L72:
	ldrh	r0, [r2]
	tst	r0, r1
	bne	.L72
	.loc 1 55 0
	ldrb	r1, [r3]
.LBE389:
.LBE388:
.LBB390:
.LBB391:
	.loc 1 53 0
	mov	r1, #1
	neg	r1, r1
	strb	r1, [r3]
	.loc 1 54 0
	mov	r1, #128
.L73:
	ldrh	r0, [r2]
	tst	r0, r1
	bne	.L73
	.loc 1 55 0
	ldrb	r1, [r3]
.LBE391:
.LBE390:
.LBB392:
.LBB393:
	.loc 1 53 0
	mov	r1, #1
	neg	r1, r1
	strb	r1, [r3]
	.loc 1 54 0
	mov	r1, #128
.L74:
	ldrh	r0, [r2]
	tst	r0, r1
	bne	.L74
	.loc 1 55 0
	ldrb	r0, [r3]
.LBE393:
.LBE392:
	.loc 1 279 0
	mov	r1, #15
	and	r1, r1, r0
	cmp	r1, #5
	beq	.LCB735
	b	.L111	@long jump
.LCB735:
.LBB394:
.LBB395:
	.loc 1 53 0
	mov	r0, #1
	neg	r0, r0
	.loc 1 54 0
	mov	r1, #128
.L90:
	.loc 1 53 0
	strb	r0, [r3]
.L77:
	.loc 1 54 0
	ldrh	r5, [r2]
	tst	r5, r1
	bne	.L77
	.loc 1 55 0
	ldrb	r5, [r3]
.LBE395:
.LBE394:
	.loc 1 283 0
	cmp	r5, #0
	beq	.L90
	sub	r4, r4, #1
.LVL33:
.L66:
	.loc 1 272 0
	cmp	r4, #0
	bne	.L78
.LBB396:
.LBB398:
	.loc 1 53 0
	ldr	r2, .L112
	mov	r3, #3
	neg	r3, r3
	strb	r3, [r2]
	.loc 1 54 0
	sub	r2, r2, #2
	mov	r3, #128
.L79:
	ldrh	r1, [r2]
	tst	r1, r3
	bne	.L79
	.loc 1 55 0
	ldr	r1, .L112
.LBE398:
.LBE396:
.LBB400:
.LBB402:
	.loc 1 53 0
	mov	r5, #1
	.loc 1 54 0
	ldr	r4, .L112+4
.LVL34:
.LBE402:
.LBE400:
.LBB404:
.LBB397:
	.loc 1 55 0
	ldrb	r3, [r1]
.LBE397:
.LBE404:
.LBB405:
.LBB401:
	.loc 1 53 0
	neg	r5, r5
.LBE401:
.LBE405:
.LBB406:
.LBB399:
	.loc 1 55 0
	mov	r3, #0
.LVL35:
.LBE399:
.LBE406:
.LBB407:
.LBB403:
	.loc 1 54 0
	mov	r0, #128
.L81:
	.loc 1 53 0
	strb	r5, [r1]
.L80:
	.loc 1 54 0
	ldrh	r2, [r4]
	tst	r2, r0
	bne	.L80
	.loc 1 55 0
	ldrb	r2, [r1]
.LBE403:
.LBE407:
	.loc 1 288 0
	mov	r2, #128
	add	r3, r3, #1
	lsl	r2, r2, #2
	cmp	r3, r2
	bne	.L81
.LBB408:
.LBB409:
	.loc 1 53 0
	ldr	r2, .L112
	mov	r3, #1
.LVL36:
	neg	r3, r3
	strb	r3, [r2]
	.loc 1 54 0
	sub	r2, r2, #2
	mov	r3, #128
.L82:
	ldrh	r1, [r2]
	tst	r1, r3
	bne	.L82
	.loc 1 55 0
	ldr	r2, .L112
	ldrb	r3, [r2]
.LBE409:
.LBE408:
.LBB410:
.LBB411:
	.loc 1 53 0
	mov	r3, #1
	neg	r3, r3
	strb	r3, [r2]
	.loc 1 54 0
	sub	r2, r2, #2
	mov	r3, #128
.L83:
	ldrh	r1, [r2]
	tst	r1, r3
	bne	.L83
	.loc 1 55 0
	ldr	r2, .L112
	ldrb	r3, [r2]
.LBE411:
.LBE410:
.LBB412:
.LBB413:
	.loc 1 53 0
	mov	r3, #1
	neg	r3, r3
	strb	r3, [r2]
	.loc 1 54 0
	sub	r2, r2, #2
	mov	r3, #128
.L84:
	ldrh	r1, [r2]
	tst	r1, r3
	bne	.L84
	.loc 1 55 0
	ldr	r3, .L112
.LBE413:
.LBE412:
.LBB415:
.LBB416:
	.loc 1 53 0
	mov	r0, #1
	.loc 1 54 0
	ldr	r1, .L112+4
.LBE416:
.LBE415:
.LBB418:
.LBB414:
	.loc 1 55 0
	ldrb	r2, [r3]
.LBE414:
.LBE418:
.LBB419:
.LBB417:
	.loc 1 53 0
	neg	r0, r0
	.loc 1 54 0
	mov	r2, #128
.L86:
	.loc 1 53 0
	strb	r0, [r3]
.L85:
	.loc 1 54 0
	ldrh	r4, [r1]
	tst	r4, r2
	bne	.L85
	.loc 1 55 0
	ldrb	r4, [r3]
.LBE417:
.LBE419:
	.loc 1 294 0
	cmp	r4, #0
	beq	.L86
.LBB420:
.LBB422:
	.loc 1 53 0
	mov	r4, #1
	ldr	r2, .L112
	.loc 1 54 0
	ldr	r0, .L112+4
.LBE422:
.LBE420:
	.loc 1 294 0
	mov	r3, #0
.LVL37:
.LBB424:
.LBB421:
	.loc 1 53 0
	neg	r4, r4
	.loc 1 54 0
	mov	r1, #128
.L88:
	.loc 1 53 0
	strb	r4, [r2]
.L87:
	.loc 1 54 0
	ldrh	r5, [r0]
	tst	r5, r1
	bne	.L87
.LBE421:
.LBE424:
	.loc 1 297 0
	add	r3, r3, #1
.LBB425:
.LBB423:
	.loc 1 55 0
	ldrb	r5, [r2]
.LBE423:
.LBE425:
	.loc 1 297 0
	cmp	r3, #16
	bne	.L88
	.loc 1 301 0
	mov	r0, #0
	bl	_Neo_EnableMMC
.LVL38:
	mov	r0, #1
.LVL39:
.L76:
	.loc 1 303 0
	@ sp needed for prologue
.LVL40:
.LVL41:
	pop	{r3, r4, r5, r6, r7, pc}
.LVL42:
.L111:
	.loc 1 268 0
	mov	r0, #0
	bl	_Neo_EnableMMC
.LVL43:
	mov	r0, #0
	.loc 1 269 0
	b	.L76
.L113:
	.align	2
.L112:
	.word	67109282
	.word	67109280
.LFE16:
	.size	_NMMC_writeSectors, .-_NMMC_writeSectors
	.align	2
	.global	_NMMC_clearStatus
	.code	16
	.thumb_func
	.type	_NMMC_clearStatus, %function
_NMMC_clearStatus:
.LFB13:
	.loc 1 186 0
	push	{r3, r4, r5, r6, r7, lr}
.LCFI5:
	.loc 1 189 0
	mov	r0, #1
	bl	_Neo_EnableMMC
.LBB426:
.LBB428:
	.loc 1 53 0
	mov	r4, #1
	ldr	r2, .L141
	.loc 1 54 0
	ldr	r0, .L141+4
.LBE428:
.LBE426:
	.loc 1 189 0
	mov	r3, #0
.LVL44:
.LBB430:
.LBB427:
	.loc 1 53 0
	neg	r4, r4
	.loc 1 54 0
	mov	r1, #128
.L116:
	.loc 1 53 0
	strb	r4, [r2]
.L115:
	.loc 1 54 0
	ldrh	r5, [r0]
	tst	r5, r1
	bne	.L115
.LBE427:
.LBE430:
	.loc 1 190 0
	add	r3, r3, #1
.LBB431:
.LBB429:
	.loc 1 55 0
	ldrb	r5, [r2]
.LBE429:
.LBE431:
	.loc 1 190 0
	cmp	r3, #10
	bne	.L116
	.loc 1 193 0
	mov	r0, #0
	mov	r1, #0
	bl	_Neo_SendMMCCommand
.LVL45:
.LBB432:
.LBB434:
.LBB436:
.LBB437:
	.loc 1 53 0
	mov	r5, #1
	ldr	r1, .L141
	.loc 1 54 0
	ldr	r4, .L141+4
.LBE437:
.LBE436:
.LBE434:
.LBE432:
	.loc 1 193 0
	mov	r3, #0
.LVL46:
.LBB440:
.LBB433:
.LBB435:
.LBB438:
	.loc 1 53 0
	neg	r5, r5
	.loc 1 54 0
	mov	r0, #128
.L119:
	.loc 1 53 0
	strb	r5, [r1]
.L117:
	.loc 1 54 0
	ldrh	r2, [r4]
	tst	r2, r0
	bne	.L117
	.loc 1 55 0
	ldrb	r2, [r1]
.LBE438:
.LBE435:
	.loc 1 142 0
	cmp	r2, #1
	beq	.L118
	.loc 1 141 0
	mov	r2, #128
	add	r3, r3, #1
	lsl	r2, r2, #1
	cmp	r3, r2
	bne	.L119
	b	.L138
.L118:
.LBE433:
.LBE440:
.LBB441:
.LBB443:
.LBB445:
.LBB447:
	.loc 1 53 0
	mov	r5, #1
	.loc 1 54 0
	ldr	r6, .L141+4
.LBE447:
.LBE445:
.LBE443:
.LBE441:
.LBB454:
.LBB439:
	.loc 1 141 0
	mov	r4, #0
.LVL47:
.LBE439:
.LBE454:
.LBB455:
.LBB452:
.LBB450:
.LBB448:
	.loc 1 53 0
	neg	r5, r5
.LVL48:
.L126:
.LBE448:
.LBE450:
.LBE452:
.LBE455:
	.loc 1 199 0
	mov	r0, #1
	mov	r1, #0
	bl	_Neo_SendMMCCommand
.LVL49:
.LBB456:
.LBB442:
.LBB444:
.LBB446:
	.loc 1 53 0
	ldr	r1, .L141
.LBE446:
.LBE444:
.LBE442:
.LBE456:
	.loc 1 199 0
	mov	r3, #0
.LVL50:
.LBB457:
.LBB453:
.LBB451:
.LBB449:
	.loc 1 54 0
	mov	r0, #128
.L123:
	.loc 1 53 0
	strb	r5, [r1]
.L121:
	.loc 1 54 0
	ldrh	r2, [r6]
	tst	r2, r0
	bne	.L121
	.loc 1 55 0
	ldrb	r2, [r1]
.LBE449:
.LBE451:
	.loc 1 142 0
	lsl	r7, r2, #31
	bpl	.L122
	.loc 1 141 0
	mov	r2, #128
	add	r3, r3, #1
	lsl	r2, r2, #1
	cmp	r3, r2
	bne	.L123
	b	.L140
.L122:
.LBE453:
.LBE457:
	.loc 1 201 0
	mov	r0, #0
	bl	_Neo_EnableMMC
.LVL51:
	mov	r0, #1
	.loc 1 202 0
	b	.L125
.LVL52:
.L138:
	.loc 1 205 0
	mov	r0, #0
	bl	_Neo_EnableMMC
.LVL53:
	mov	r0, #0
.L125:
	.loc 1 207 0
	@ sp needed for prologue
.LVL54:
	pop	{r3, r4, r5, r6, r7, pc}
.LVL55:
.L140:
	.loc 1 198 0
	add	r4, r4, #1
	cmp	r4, r3
	bne	.L126
	b	.L138
.L142:
	.align	2
.L141:
	.word	67109282
	.word	67109280
.LFE13:
	.size	_NMMC_clearStatus, .-_NMMC_clearStatus
	.align	2
	.global	_NMMC_shutdown
	.code	16
	.thumb_func
	.type	_NMMC_shutdown, %function
_NMMC_shutdown:
.LFB14:
	.loc 1 209 0
	push	{r4, lr}
.LCFI6:
	.loc 1 210 0
	bl	_NMMC_clearStatus
	.loc 1 211 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE14:
	.size	_NMMC_shutdown, .-_NMMC_shutdown
	.align	2
	.global	_NMMC_startUp
	.code	16
	.thumb_func
	.type	_NMMC_startUp, %function
_NMMC_startUp:
.LFB15:
	.loc 1 213 0
	push	{r3, r4, r5, r6, r7, lr}
.LCFI7:
.LBB458:
.LBB459:
.LBB460:
.LBB473:
.LBB475:
	.loc 1 48 0
	ldr	r3, .L211
	ldr	r1, .L211+4
	ldrb	r2, [r3, #8]
	ldr	r3, .L211+8
.LBE475:
.LBE473:
.LBB467:
.LBB470:
	.loc 1 53 0
	ldr	r0, .L211+12
.LBE470:
.LBE467:
.LBB466:
.LBB476:
	.loc 1 48 0
	orr	r3, r3, r2
	lsl	r3, r3, #16
.LBE476:
.LBE466:
.LBB465:
.LBB469:
	.loc 1 53 0
	mov	r2, #15
.LBE469:
.LBE465:
.LBB464:
.LBB474:
	.loc 1 48 0
	lsr	r3, r3, #16
.LBE474:
.LBE464:
.LBB463:
.LBB471:
	.loc 1 53 0
	neg	r2, r2
.LBE471:
.LBE463:
.LBB462:
.LBB477:
	.loc 1 48 0
	strh	r3, [r1]
.LBE477:
.LBE462:
.LBB461:
.LBB468:
	.loc 1 54 0
	mov	r4, r1
	.loc 1 53 0
	strb	r2, [r0]
	.loc 1 54 0
	mov	r1, #128
.L146:
	ldrh	r0, [r4]
	ldr	r2, .L211+4
	and	r0, r1
	bne	.L146
	.loc 1 55 0
	ldr	r1, .L211+12
.LBE468:
.LBE461:
.LBE460:
.LBB481:
.LBB511:
.LBB516:
.LBB518:
	.loc 1 54 0
	mov	r5, r2
.LBE518:
.LBE516:
.LBE511:
.LBE481:
.LBB523:
.LBB478:
.LBB472:
	.loc 1 55 0
	ldrb	r4, [r1]
.LBE472:
.LBE478:
.LBB479:
.LBB480:
	.loc 1 60 0
	strh	r0, [r2]
.LBE480:
.LBE479:
.LBE523:
.LBB524:
.LBB510:
.LBB515:
.LBB517:
	.loc 1 53 0
	mov	r0, #6
.LBE517:
.LBE515:
.LBB513:
.LBB514:
	.loc 1 48 0
	strh	r3, [r2]
.LBE514:
.LBE513:
.LBB512:
.LBB519:
	.loc 1 53 0
	strb	r0, [r1]
	.loc 1 54 0
	mov	r1, #128
.L147:
	ldrh	r0, [r5]
	ldr	r2, .L211+4
	mov	r4, r0
	and	r4, r1
	bne	.L147
	.loc 1 55 0
	ldr	r0, .L211+12
	ldrb	r1, [r0]
.LBE519:
.LBE512:
.LBE510:
.LBB507:
.LBB508:
	.loc 1 53 0
	mov	r1, #6
	neg	r1, r1
.LBE508:
.LBE507:
.LBB506:
.LBB520:
.LBB521:
	.loc 1 60 0
	strh	r4, [r2]
.LBE521:
.LBE520:
.LBE506:
.LBB504:
.LBB505:
	.loc 1 48 0
	strh	r3, [r2]
.LBE505:
.LBE504:
.LBB503:
.LBB509:
	.loc 1 53 0
	strb	r1, [r0]
	.loc 1 54 0
	mov	r1, #128
.L148:
	ldrh	r0, [r2]
	tst	r0, r1
	bne	.L148
	.loc 1 55 0
	ldr	r2, .L211+12
	ldrb	r1, [r2]
.LBE509:
.LBE503:
.LBB500:
.LBB501:
	.loc 1 53 0
	mov	r1, #1
	strb	r1, [r2]
	.loc 1 54 0
	ldr	r1, .L211+4
	mov	r2, #128
.L149:
	ldrh	r0, [r1]
	tst	r0, r2
	bne	.L149
	.loc 1 55 0
	ldr	r2, .L211+12
.LBE501:
.LBE500:
.LBB497:
.LBB498:
	.loc 1 54 0
	ldr	r4, .L211+4
.LBE498:
.LBE497:
.LBB496:
.LBB502:
	.loc 1 55 0
	ldrb	r1, [r2]
.LBE502:
.LBE496:
.LBB495:
.LBB499:
	.loc 1 53 0
	mov	r1, #49
	strb	r1, [r2]
	.loc 1 54 0
	mov	r1, #128
.L150:
	ldrh	r0, [r4]
	ldr	r2, .L211+4
	and	r0, r1
	bne	.L150
	.loc 1 55 0
	ldr	r1, .L211+12
	ldrb	r4, [r1]
.LBE499:
.LBE495:
.LBB493:
.LBB494:
	.loc 1 60 0
	strh	r0, [r2]
.LBE494:
.LBE493:
.LBB482:
.LBB486:
.LBB488:
	.loc 1 53 0
	mov	r0, #14
.LBE488:
.LBE486:
.LBB484:
.LBB485:
	.loc 1 48 0
	strh	r3, [r2]
.LBE485:
.LBE484:
.LBB483:
.LBB487:
	.loc 1 54 0
	mov	r4, r2
	.loc 1 53 0
	strb	r0, [r1]
	.loc 1 54 0
	mov	r1, #128
.L151:
	ldrh	r0, [r4]
	ldr	r2, .L211+4
	and	r0, r1
	bne	.L151
	.loc 1 55 0
	ldr	r1, .L211+12
.LBE487:
.LBE483:
.LBE482:
.LBE524:
.LBB525:
.LBB526:
.LBB527:
.LBB532:
.LBB534:
	.loc 1 54 0
	mov	r5, r2
.LBE534:
.LBE532:
.LBE527:
.LBE526:
.LBE525:
.LBB568:
.LBB522:
.LBB490:
.LBB489:
	.loc 1 55 0
	ldrb	r4, [r1]
.LBE489:
.LBE490:
.LBB491:
.LBB492:
	.loc 1 60 0
	strh	r0, [r2]
.LBE492:
.LBE491:
.LBE522:
.LBE568:
.LBB569:
.LBB567:
.LBB538:
.LBB531:
.LBB533:
	.loc 1 53 0
	mov	r0, #6
.LBE533:
.LBE531:
.LBB529:
.LBB530:
	.loc 1 48 0
	strh	r3, [r2]
.LBE530:
.LBE529:
.LBB528:
.LBB535:
	.loc 1 53 0
	strb	r0, [r1]
	.loc 1 54 0
	mov	r1, #128
.L152:
	ldrh	r0, [r5]
	ldr	r2, .L211+4
	mov	r4, r0
	and	r4, r1
	bne	.L152
	.loc 1 55 0
	ldr	r0, .L211+12
	ldrb	r1, [r0]
.LBE535:
.LBE528:
.LBE538:
.LBB539:
.LBB541:
	.loc 1 53 0
	mov	r1, #8
	neg	r1, r1
.LBE541:
.LBE539:
.LBB543:
.LBB536:
.LBB537:
	.loc 1 60 0
	strh	r4, [r2]
.LBE537:
.LBE536:
.LBE543:
.LBB544:
.LBB545:
	.loc 1 48 0
	strh	r3, [r2]
.LBE545:
.LBE544:
.LBB546:
.LBB540:
	.loc 1 53 0
	strb	r1, [r0]
	.loc 1 54 0
	mov	r1, #128
.L153:
	ldrh	r0, [r2]
	tst	r0, r1
	bne	.L153
	.loc 1 55 0
	ldr	r2, .L211+12
.LBE540:
.LBE546:
.LBB547:
.LBB549:
	.loc 1 54 0
	ldr	r0, .L211+4
.LBE549:
.LBE547:
.LBB551:
.LBB542:
	.loc 1 55 0
	ldrb	r1, [r2]
.LBE542:
.LBE551:
.LBB552:
.LBB548:
	.loc 1 53 0
	mov	r1, #1
	strb	r1, [r2]
	.loc 1 54 0
	mov	r2, #128
.L154:
	ldrh	r1, [r0]
	and	r1, r2
	bne	.L154
	.loc 1 55 0
	ldr	r2, .L211+12
.LBE548:
.LBE552:
.LBB553:
.LBB554:
	.loc 1 54 0
	ldr	r4, .L211+4
.LBE554:
.LBE553:
.LBB556:
.LBB550:
	.loc 1 55 0
	ldrb	r0, [r2]
.LBE550:
.LBE556:
.LBB557:
.LBB555:
	.loc 1 53 0
	strb	r1, [r2]
	.loc 1 54 0
	mov	r1, #128
.L155:
	ldrh	r0, [r4]
	ldr	r2, .L211+4
	and	r0, r1
	bne	.L155
	.loc 1 55 0
	ldr	r1, .L211+12
	ldrb	r6, [r1]
.LBE555:
.LBE557:
.LBB558:
.LBB559:
	.loc 1 60 0
	strh	r0, [r2]
.LBE559:
.LBE558:
.LBB560:
.LBB561:
.LBB562:
	.loc 1 48 0
	strh	r3, [r2]
.LBE562:
.LBE561:
.LBB563:
.LBB564:
	.loc 1 53 0
	mov	r3, #14
	strb	r3, [r1]
	.loc 1 54 0
	mov	r3, #128
.L156:
	ldrh	r1, [r2]
	ldr	r5, .L211+4
	and	r1, r3
	bne	.L156
	.loc 1 55 0
	ldr	r4, .L211+12
	ldrb	r3, [r4]
.LBE564:
.LBE563:
.LBB565:
.LBB566:
	.loc 1 60 0
	strh	r1, [r5]
.LBE566:
.LBE565:
.LBE560:
.LBE567:
.LBE569:
	.loc 1 155 0
	cmp	r6, #49
	bne	.L157
.LVL56:
	b	.L209
.L210:
.LBE459:
.LBE458:
	.loc 1 222 0
	mov	r0, #1
	bl	_Neo_EnableMMC
	.loc 1 225 0
	mov	r1, #128
	mov	r0, #16
	lsl	r1, r1, #2
	bl	_Neo_SendMMCCommand
.LBB570:
.LBB571:
.LBB572:
.LBB573:
	.loc 1 53 0
	mov	r0, #1
.LBE573:
.LBE572:
.LBE571:
.LBE570:
	.loc 1 225 0
	mov	r3, #0
.LVL57:
.LBB577:
.LBB576:
.LBB575:
.LBB574:
	.loc 1 53 0
	neg	r0, r0
	.loc 1 54 0
	mov	r1, #128
.L161:
	.loc 1 53 0
	strb	r0, [r4]
.L159:
	.loc 1 54 0
	ldrh	r2, [r5]
	tst	r2, r1
	bne	.L159
	.loc 1 55 0
	ldrb	r2, [r4]
.LBE574:
.LBE575:
	.loc 1 142 0
	cmp	r2, #0
	beq	.L160
	.loc 1 141 0
	mov	r2, #128
	add	r3, r3, #1
	lsl	r2, r2, #1
	cmp	r3, r2
	bne	.L161
	b	.L205
.L160:
.LBE576:
.LBE577:
	.loc 1 232 0
	mov	r0, #9
	mov	r1, #0
	bl	_Neo_SendMMCCommand
.LVL58:
.LBB578:
.LBB580:
.LBB582:
.LBB583:
	.loc 1 53 0
	mov	r5, #1
	ldr	r1, .L211+12
	.loc 1 54 0
	ldr	r4, .L211+4
.LBE583:
.LBE582:
.LBE580:
.LBE578:
	.loc 1 232 0
	mov	r3, #0
.LVL59:
.LBB586:
.LBB579:
.LBB581:
.LBB584:
	.loc 1 53 0
	neg	r5, r5
	.loc 1 54 0
	mov	r0, #128
.L165:
	.loc 1 53 0
	strb	r5, [r1]
.L163:
	.loc 1 54 0
	ldrh	r2, [r4]
	tst	r2, r0
	bne	.L163
	.loc 1 55 0
	ldrb	r2, [r1]
.LBE584:
.LBE581:
	.loc 1 142 0
	cmp	r2, #0
	beq	.L164
	.loc 1 141 0
	mov	r2, #128
	add	r3, r3, #1
	lsl	r2, r2, #1
	cmp	r3, r2
	bne	.L165
	b	.L205
.L164:
.LBE579:
.LBE586:
.LBB587:
.LBB589:
.LBB591:
.LBB592:
	.loc 1 53 0
	mov	r5, #1
	ldr	r1, .L211+12
	.loc 1 54 0
	ldr	r4, .L211+4
.LBE592:
.LBE591:
.LBE589:
.LBE587:
.LBB595:
.LBB585:
	.loc 1 141 0
	mov	r3, #0
.LVL60:
.LBE585:
.LBE595:
.LBB596:
.LBB588:
.LBB590:
.LBB593:
	.loc 1 53 0
	neg	r5, r5
	.loc 1 54 0
	mov	r0, #128
.L169:
	.loc 1 53 0
	strb	r5, [r1]
.L167:
	.loc 1 54 0
	ldrh	r2, [r4]
	tst	r2, r0
	bne	.L167
	.loc 1 55 0
	ldrb	r2, [r1]
.LBE593:
.LBE590:
	.loc 1 142 0
	cmp	r2, #254
	beq	.L168
	.loc 1 141 0
	mov	r2, #128
	add	r3, r3, #1
	lsl	r2, r2, #1
	cmp	r3, r2
	bne	.L169
	b	.L205
.L168:
.LBE588:
.LBE596:
.LBB597:
.LBB599:
	.loc 1 53 0
	mov	r4, #1
	ldr	r2, .L211+12
	.loc 1 54 0
	ldr	r0, .L211+4
.LBE599:
.LBE597:
.LBB601:
.LBB594:
	.loc 1 141 0
	mov	r3, #0
.LVL61:
.LBE594:
.LBE601:
.LBB602:
.LBB598:
	.loc 1 53 0
	neg	r4, r4
	.loc 1 54 0
	mov	r1, #128
.L172:
	.loc 1 53 0
	strb	r4, [r2]
.L171:
	.loc 1 54 0
	ldrh	r5, [r0]
	tst	r5, r1
	bne	.L171
.LBE598:
.LBE602:
	.loc 1 241 0
	add	r3, r3, #1
.LBB603:
.LBB600:
	.loc 1 55 0
	ldrb	r5, [r2]
.LBE600:
.LBE603:
	.loc 1 241 0
	cmp	r3, #3
	bne	.L172
.LBB604:
.LBB606:
	.loc 1 53 0
	ldr	r2, .L211+12
	mov	r3, #1
.LVL62:
	neg	r3, r3
	strb	r3, [r2]
	.loc 1 54 0
	sub	r2, r2, #2
	mov	r3, #128
.L173:
	ldrh	r1, [r2]
	tst	r1, r3
	bne	.L173
	.loc 1 55 0
	ldr	r1, .L211+12
.LBE606:
.LBE604:
.LBB608:
.LBB610:
	.loc 1 53 0
	mov	r6, #1
.LVL63:
.LBE610:
.LBE608:
.LBB613:
.LBB605:
	.loc 1 55 0
	ldrb	r4, [r1]
.LBE605:
.LBE613:
.LBB614:
.LBB611:
	.loc 1 54 0
	ldr	r5, .L211+4
.LBE611:
.LBE614:
.LBB615:
.LBB607:
	.loc 1 55 0
	mov	r3, #0
.LVL64:
.LBE607:
.LBE615:
.LBB616:
.LBB609:
	.loc 1 53 0
	neg	r6, r6
	.loc 1 54 0
	mov	r2, #128
.L175:
	.loc 1 53 0
	strb	r6, [r1]
.L174:
	.loc 1 54 0
	ldrh	r0, [r5]
	and	r0, r2
	bne	.L174
.LBE609:
.LBE616:
	.loc 1 245 0
	add	r3, r3, #1
.LBB617:
.LBB612:
	.loc 1 55 0
	ldrb	r7, [r1]
.LBE612:
.LBE617:
	.loc 1 245 0
	cmp	r3, #24
	bne	.L175
	.loc 1 248 0
	mov	r2, #240
	mov	r3, r4
.LVL65:
	and	r3, r3, r2
	cmp	r3, #47
	ble	.L176
	.loc 1 249 0
	ldr	r3, .L211
	str	r0, [r3, #8]
.L176:
	.loc 1 252 0
	mov	r0, #0
	bl	_Neo_EnableMMC
	mov	r0, #1
	.loc 1 254 0
	b	.L177
.LVL66:
.L157:
	mov	r0, #0
.L177:
	.loc 1 255 0
	@ sp needed for prologue
.LVL67:
	pop	{r3, r4, r5, r6, r7, pc}
.LVL68:
.L209:
	.loc 1 219 0
	bl	_NMMC_clearStatus
	cmp	r0, #0
	beq	.L157
	b	.L210
.LVL69:
.L205:
	.loc 1 238 0
	mov	r0, #0
	bl	_Neo_EnableMMC
.LVL70:
	b	.L157
.L212:
	.align	2
.L211:
	.word	.LANCHOR0
	.word	67109280
	.word	-24512
	.word	67109282
.LFE15:
	.size	_NMMC_startUp, .-_NMMC_startUp
	.align	2
	.global	_NMMC_isInserted
	.code	16
	.thumb_func
	.type	_NMMC_isInserted, %function
_NMMC_isInserted:
.LFB12:
	.loc 1 164 0
	push	{r4, r5, r6, lr}
.LCFI8:
	.loc 1 167 0
	mov	r0, #1
	bl	_Neo_EnableMMC
	.loc 1 168 0
	mov	r0, #9
	mov	r1, #0
	bl	_Neo_SendMMCCommand
.LBB618:
.LBB620:
.LBB622:
.LBB623:
	.loc 1 53 0
	mov	r5, #1
	ldr	r1, .L234
	.loc 1 54 0
	ldr	r4, .L234+4
.LBE623:
.LBE622:
.LBE620:
.LBE618:
	.loc 1 168 0
	mov	r3, #0
.LVL71:
.LBB626:
.LBB619:
.LBB621:
.LBB624:
	.loc 1 53 0
	neg	r5, r5
	.loc 1 54 0
	mov	r0, #128
.L216:
	.loc 1 53 0
	strb	r5, [r1]
.L214:
	.loc 1 54 0
	ldrh	r2, [r4]
	tst	r2, r0
	bne	.L214
	.loc 1 55 0
	ldrb	r2, [r1]
.LBE624:
.LBE621:
	.loc 1 142 0
	cmp	r2, #0
	beq	.L215
	.loc 1 141 0
	mov	r2, #128
	add	r3, r3, #1
	lsl	r2, r2, #1
	cmp	r3, r2
	bne	.L216
	b	.L233
.L215:
.LBE619:
.LBE626:
.LBB627:
.LBB629:
.LBB631:
.LBB632:
	.loc 1 53 0
	mov	r5, #1
	ldr	r1, .L234
	.loc 1 54 0
	ldr	r4, .L234+4
.LBE632:
.LBE631:
.LBE629:
.LBE627:
.LBB635:
.LBB625:
	.loc 1 141 0
	mov	r3, #0
.LVL72:
.LBE625:
.LBE635:
.LBB636:
.LBB628:
.LBB630:
.LBB633:
	.loc 1 53 0
	neg	r5, r5
	.loc 1 54 0
	mov	r0, #128
.L220:
	.loc 1 53 0
	strb	r5, [r1]
.L218:
	.loc 1 54 0
	ldrh	r2, [r4]
	tst	r2, r0
	bne	.L218
	.loc 1 55 0
	ldrb	r2, [r1]
.LBE633:
.LBE630:
	.loc 1 142 0
	cmp	r2, #254
	beq	.L219
	.loc 1 141 0
	mov	r2, #128
	add	r3, r3, #1
	lsl	r2, r2, #1
	cmp	r3, r2
	bne	.L220
	b	.L233
.L219:
.LBE628:
.LBE636:
.LBB637:
.LBB639:
	.loc 1 53 0
	mov	r4, #1
	ldr	r2, .L234
	.loc 1 54 0
	ldr	r0, .L234+4
.LBE639:
.LBE637:
.LBB641:
.LBB634:
	.loc 1 141 0
	mov	r3, #0
.LVL73:
.LBE634:
.LBE641:
.LBB642:
.LBB638:
	.loc 1 53 0
	neg	r4, r4
	.loc 1 54 0
	mov	r1, #128
.L223:
	.loc 1 53 0
	strb	r4, [r2]
.L222:
	.loc 1 54 0
	ldrh	r5, [r0]
	tst	r5, r1
	bne	.L222
.LBE638:
.LBE642:
	.loc 1 179 0
	add	r3, r3, #1
.LBB643:
.LBB640:
	.loc 1 55 0
	ldrb	r5, [r2]
.LBE640:
.LBE643:
	.loc 1 179 0
	cmp	r3, #28
	bne	.L223
	mov	r0, #1
.L224:
	.loc 1 184 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.LVL74:
.L233:
	.loc 1 174 0
	mov	r0, #0
	bl	_Neo_EnableMMC
.LVL75:
	mov	r0, #0
	.loc 1 175 0
	b	.L224
.L235:
	.align	2
.L234:
	.word	67109282
	.word	67109280
.LFE12:
	.size	_NMMC_isInserted, .-_NMMC_isInserted
	.global	_NMMC_spi_freq
	.global	selectMMC_command
	.global	_io_nmmc
	.section	.rodata
	.align	2
	.type	_io_nmmc, %object
	.size	_io_nmmc, 32
_io_nmmc:
	.word	1129139534
	.word	35
	.word	_NMMC_startUp
	.word	_NMMC_isInserted
	.word	_NMMC_readSectors
	.word	_NMMC_writeSectors
	.word	_NMMC_clearStatus
	.word	_NMMC_shutdown
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	selectMMC_command, %object
	.size	selectMMC_command, 8
selectMMC_command:
	.byte	-1
	.byte	0
	.byte	106
	.byte	-33
	.byte	55
	.byte	89
	.byte	51
	.byte	-93
	.type	_NMMC_spi_freq, %object
	.size	_NMMC_spi_freq, 4
_NMMC_spi_freq:
	.word	3
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI0-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI1-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI2-.LFB8
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0x3
	.sleb128 6
	.byte	0x11
	.uleb128 0x4
	.sleb128 5
	.byte	0x11
	.uleb128 0x5
	.sleb128 4
	.byte	0x11
	.uleb128 0x6
	.sleb128 3
	.byte	0x11
	.uleb128 0x7
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI4-.LFB16
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0x3
	.sleb128 6
	.byte	0x11
	.uleb128 0x4
	.sleb128 5
	.byte	0x11
	.uleb128 0x5
	.sleb128 4
	.byte	0x11
	.uleb128 0x6
	.sleb128 3
	.byte	0x11
	.uleb128 0x7
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI5-.LFB13
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0x3
	.sleb128 6
	.byte	0x11
	.uleb128 0x4
	.sleb128 5
	.byte	0x11
	.uleb128 0x5
	.sleb128 4
	.byte	0x11
	.uleb128 0x6
	.sleb128 3
	.byte	0x11
	.uleb128 0x7
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI6-.LFB14
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI7-.LFB15
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0x3
	.sleb128 6
	.byte	0x11
	.uleb128 0x4
	.sleb128 5
	.byte	0x11
	.uleb128 0x5
	.sleb128 4
	.byte	0x11
	.uleb128 0x6
	.sleb128 3
	.byte	0x11
	.uleb128 0x7
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI8-.LFB12
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
.LEFDE16:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB9-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL55-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL68-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/disc_io.h"
	.section	.debug_info
	.4byte	0xd6e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x1
	.4byte	.LASF62
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2a
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x50
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x3
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x64
	.4byte	0x4f
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0x7d
	.4byte	0xa7
	.uleb128 0x7
	.4byte	.LASF11
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF12
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x7d
	.4byte	0x92
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x3d
	.4byte	0xbd
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x9
	.byte	0x1
	.4byte	0xa7
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3e
	.4byte	0xbd
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3f
	.4byte	0xdf
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe5
	.uleb128 0xa
	.byte	0x1
	.4byte	0xa7
	.4byte	0xff
	.uleb128 0xb
	.4byte	0x87
	.uleb128 0xb
	.4byte	0x87
	.uleb128 0xb
	.4byte	0xff
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x40
	.4byte	0x10c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x112
	.uleb128 0xa
	.byte	0x1
	.4byte	0xa7
	.4byte	0x12c
	.uleb128 0xb
	.4byte	0x87
	.uleb128 0xb
	.4byte	0x87
	.uleb128 0xb
	.4byte	0x12c
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x132
	.uleb128 0xd
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x41
	.4byte	0xbd
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x42
	.4byte	0xbd
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x20
	.byte	0x4
	.byte	0x44
	.4byte	0x1c6
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x4
	.byte	0x45
	.4byte	0x1c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x4
	.byte	0x46
	.4byte	0x1c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x4
	.byte	0x47
	.4byte	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x4
	.byte	0x48
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x4
	.byte	0x49
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x4
	.byte	0x4a
	.4byte	0x101
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x4
	.byte	0x4b
	.4byte	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x4
	.byte	0x4c
	.4byte	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF28
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0x4f
	.4byte	0x149
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.4byte	0x1f1
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2e
	.4byte	0x7d
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.4byte	0x7d
	.byte	0x3
	.4byte	0x20e
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0x33
	.4byte	0x7d
	.byte	0x0
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.byte	0x3
	.4byte	0x230
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x45
	.4byte	0xa7
	.byte	0x0
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.byte	0x3f
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.byte	0x1
	.4byte	0x251
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0x4c
	.4byte	0x7d
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	0x7d
	.byte	0x1
	.4byte	0x26e
	.uleb128 0x15
	.4byte	.LASF36
	.byte	0x1
	.byte	0x58
	.4byte	0x7d
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.4byte	0xa7
	.byte	0x1
	.4byte	0x29f
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.byte	0x8b
	.4byte	0x7d
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x1
	.byte	0x8b
	.4byte	0x7d
	.uleb128 0x16
	.ascii	"i\000"
	.byte	0x1
	.byte	0x8c
	.4byte	0x87
	.byte	0x0
	.uleb128 0x17
	.4byte	.LASF43
	.byte	0x1
	.byte	0x96
	.4byte	0xa7
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF46
	.byte	0x1
	.byte	0x7e
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST0
	.4byte	0x3a6
	.uleb128 0x19
	.4byte	.LASF44
	.byte	0x1
	.byte	0x7e
	.4byte	0x7d
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0x7e
	.4byte	0x87
	.4byte	.LLST2
	.uleb128 0x1a
	.4byte	0x1f1
	.4byte	.LBB310
	.4byte	.LBE310
	.byte	0x1
	.byte	0x80
	.4byte	0x2fa
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x1f1
	.4byte	.LBB312
	.4byte	.LBE312
	.byte	0x1
	.byte	0x81
	.4byte	0x313
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x1f1
	.4byte	.LBB314
	.4byte	.LBE314
	.byte	0x1
	.byte	0x82
	.4byte	0x32c
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x1f1
	.4byte	.LBB316
	.4byte	.LBE316
	.byte	0x1
	.byte	0x83
	.4byte	0x345
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x1f1
	.4byte	.LBB318
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x84
	.4byte	0x35e
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x1f1
	.4byte	.LBB322
	.4byte	.LBE322
	.byte	0x1
	.byte	0x85
	.4byte	0x377
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x1f1
	.4byte	.LBB324
	.4byte	.LBE324
	.byte	0x1
	.byte	0x86
	.4byte	0x390
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x1f1
	.4byte	.LBB326
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x87
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST3
	.4byte	0x3ce
	.uleb128 0x19
	.4byte	.LASF31
	.byte	0x1
	.byte	0x67
	.4byte	0x7d
	.4byte	.LLST4
	.byte	0x0
	.uleb128 0x18
	.4byte	.LASF48
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST5
	.4byte	0x41a
	.uleb128 0x19
	.4byte	.LASF34
	.byte	0x1
	.byte	0x70
	.4byte	0xa7
	.4byte	.LLST6
	.uleb128 0x1e
	.4byte	0x20e
	.4byte	.LBB330
	.4byte	.LBE330
	.byte	0x1
	.byte	0x73
	.uleb128 0x1f
	.4byte	0x1d8
	.4byte	.LBB332
	.4byte	.LBE332
	.byte	0x1
	.byte	0x79
	.uleb128 0x1b
	.4byte	0x1e5
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x131
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST7
	.4byte	0x555
	.uleb128 0x21
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x131
	.4byte	0x87
	.4byte	.LLST8
	.uleb128 0x21
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x131
	.4byte	0x87
	.4byte	.LLST9
	.uleb128 0x21
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x131
	.4byte	0xff
	.4byte	.LLST10
	.uleb128 0x22
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x133
	.4byte	0x87
	.4byte	.LLST11
	.uleb128 0x22
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x134
	.4byte	0x555
	.4byte	.LLST12
	.uleb128 0x23
	.4byte	0x26e
	.4byte	.LBB334
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x13c
	.4byte	0x4c7
	.uleb128 0x1b
	.4byte	0x28a
	.uleb128 0x1b
	.4byte	0x27f
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x58
	.uleb128 0x25
	.4byte	0x295
	.4byte	.LLST13
	.uleb128 0x1d
	.4byte	0x1f1
	.4byte	.LBB338
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x8e
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	0x26e
	.4byte	.LBB347
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x141
	.4byte	0x50a
	.uleb128 0x1b
	.4byte	0x28a
	.uleb128 0x1b
	.4byte	0x27f
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0xc0
	.uleb128 0x25
	.4byte	0x295
	.4byte	.LLST14
	.uleb128 0x1d
	.4byte	0x1f1
	.4byte	.LBB351
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0x8e
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	0x1f1
	.4byte	.LBB357
	.4byte	.Ldebug_ranges0+0xf8
	.byte	0x1
	.2byte	0x146
	.4byte	0x524
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x26
	.4byte	0x1f1
	.4byte	.LBB362
	.4byte	.LBE362
	.byte	0x1
	.2byte	0x147
	.4byte	0x53e
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x27
	.4byte	0x1f1
	.4byte	.LBB364
	.4byte	.Ldebug_ranges0+0x110
	.byte	0x1
	.2byte	0x148
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x102
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST15
	.4byte	0x757
	.uleb128 0x21
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x102
	.4byte	0x87
	.4byte	.LLST16
	.uleb128 0x21
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x102
	.4byte	0x87
	.4byte	.LLST17
	.uleb128 0x21
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x102
	.4byte	0x12c
	.4byte	.LLST18
	.uleb128 0x22
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x104
	.4byte	0x87
	.4byte	.LLST19
	.uleb128 0x22
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x105
	.4byte	0x555
	.4byte	.LLST20
	.uleb128 0x23
	.4byte	0x26e
	.4byte	.LBB368
	.4byte	.Ldebug_ranges0+0x128
	.byte	0x1
	.2byte	0x10b
	.4byte	0x608
	.uleb128 0x1b
	.4byte	0x28a
	.uleb128 0x1b
	.4byte	0x27f
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x148
	.uleb128 0x25
	.4byte	0x295
	.4byte	.LLST21
	.uleb128 0x1d
	.4byte	0x1f1
	.4byte	.LBB372
	.4byte	.Ldebug_ranges0+0x168
	.byte	0x1
	.byte	0x8e
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	0x1f1
	.4byte	.LBB377
	.4byte	.Ldebug_ranges0+0x180
	.byte	0x1
	.2byte	0x111
	.4byte	0x622
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x23
	.4byte	0x1f1
	.4byte	.LBB383
	.4byte	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.2byte	0x113
	.4byte	0x63c
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x26
	.4byte	0x1f1
	.4byte	.LBB388
	.4byte	.LBE388
	.byte	0x1
	.2byte	0x114
	.4byte	0x656
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x26
	.4byte	0x1f1
	.4byte	.LBB390
	.4byte	.LBE390
	.byte	0x1
	.2byte	0x115
	.4byte	0x670
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x26
	.4byte	0x1f1
	.4byte	.LBB392
	.4byte	.LBE392
	.byte	0x1
	.2byte	0x117
	.4byte	0x68a
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x26
	.4byte	0x1f1
	.4byte	.LBB394
	.4byte	.LBE394
	.byte	0x1
	.2byte	0x11b
	.4byte	0x6a4
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x23
	.4byte	0x1f1
	.4byte	.LBB396
	.4byte	.Ldebug_ranges0+0x1b8
	.byte	0x1
	.2byte	0x11f
	.4byte	0x6be
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x23
	.4byte	0x1f1
	.4byte	.LBB400
	.4byte	.Ldebug_ranges0+0x1d8
	.byte	0x1
	.2byte	0x121
	.4byte	0x6d8
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x26
	.4byte	0x1f1
	.4byte	.LBB408
	.4byte	.LBE408
	.byte	0x1
	.2byte	0x122
	.4byte	0x6f2
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x26
	.4byte	0x1f1
	.4byte	.LBB410
	.4byte	.LBE410
	.byte	0x1
	.2byte	0x123
	.4byte	0x70c
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x23
	.4byte	0x1f1
	.4byte	.LBB412
	.4byte	.Ldebug_ranges0+0x1f8
	.byte	0x1
	.2byte	0x125
	.4byte	0x726
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x23
	.4byte	0x1f1
	.4byte	.LBB415
	.4byte	.Ldebug_ranges0+0x210
	.byte	0x1
	.2byte	0x126
	.4byte	0x740
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x27
	.4byte	0x1f1
	.4byte	.LBB420
	.4byte	.Ldebug_ranges0+0x228
	.byte	0x1
	.2byte	0x12a
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF54
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST22
	.4byte	0x81b
	.uleb128 0x29
	.ascii	"i\000"
	.byte	0x1
	.byte	0xbb
	.4byte	0x87
	.4byte	.LLST23
	.uleb128 0x1c
	.4byte	0x1f1
	.4byte	.LBB426
	.4byte	.Ldebug_ranges0+0x248
	.byte	0x1
	.byte	0xbf
	.4byte	0x79a
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x26e
	.4byte	.LBB432
	.4byte	.Ldebug_ranges0+0x268
	.byte	0x1
	.byte	0xc2
	.4byte	0x7dc
	.uleb128 0x1b
	.4byte	0x28a
	.uleb128 0x1b
	.4byte	0x27f
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x288
	.uleb128 0x25
	.4byte	0x295
	.4byte	.LLST24
	.uleb128 0x1d
	.4byte	0x1f1
	.4byte	.LBB436
	.4byte	.Ldebug_ranges0+0x2a8
	.byte	0x1
	.byte	0x8e
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x26e
	.4byte	.LBB441
	.4byte	.Ldebug_ranges0+0x2c0
	.byte	0x1
	.byte	0xc8
	.uleb128 0x1b
	.4byte	0x28a
	.uleb128 0x1b
	.4byte	0x27f
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x2e8
	.uleb128 0x25
	.4byte	0x295
	.4byte	.LLST25
	.uleb128 0x1d
	.4byte	0x1f1
	.4byte	.LBB445
	.4byte	.Ldebug_ranges0+0x310
	.byte	0x1
	.byte	0x8e
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF65
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST26
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF55
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST27
	.4byte	0xc5e
	.uleb128 0x29
	.ascii	"i\000"
	.byte	0x1
	.byte	0xd6
	.4byte	0x48
	.4byte	.LLST28
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x1
	.byte	0xd7
	.4byte	0x48
	.uleb128 0x1a
	.4byte	0x29f
	.4byte	.LBB458
	.4byte	.LBE458
	.byte	0x1
	.byte	0xd8
	.4byte	0xb50
	.uleb128 0x1c
	.4byte	0x230
	.4byte	.LBB460
	.4byte	.Ldebug_ranges0+0x338
	.byte	0x1
	.byte	0x97
	.4byte	0x8d1
	.uleb128 0x1c
	.4byte	0x1f1
	.4byte	.LBB467
	.4byte	.Ldebug_ranges0+0x350
	.byte	0x1
	.byte	0x41
	.4byte	0x8a8
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x1d8
	.4byte	.LBB473
	.4byte	.Ldebug_ranges0+0x380
	.byte	0x1
	.byte	0x40
	.4byte	0x8c1
	.uleb128 0x1b
	.4byte	0x1e5
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x20e
	.4byte	.LBB479
	.4byte	.LBE479
	.byte	0x1
	.byte	0x42
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x238
	.4byte	.LBB481
	.4byte	.Ldebug_ranges0+0x3a8
	.byte	0x1
	.byte	0x98
	.4byte	0xa0d
	.uleb128 0x1b
	.4byte	0x245
	.uleb128 0x1c
	.4byte	0x217
	.4byte	.LBB482
	.4byte	.Ldebug_ranges0+0x3c8
	.byte	0x1
	.byte	0x53
	.4byte	0x943
	.uleb128 0x1b
	.4byte	0x224
	.uleb128 0x1a
	.4byte	0x1d8
	.4byte	.LBB484
	.4byte	.LBE484
	.byte	0x1
	.byte	0x46
	.4byte	0x91a
	.uleb128 0x1b
	.4byte	0x1e5
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x1f1
	.4byte	.LBB486
	.4byte	.Ldebug_ranges0+0x3e0
	.byte	0x1
	.byte	0x48
	.4byte	0x933
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x20e
	.4byte	.LBB491
	.4byte	.LBE491
	.byte	0x1
	.byte	0x49
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x20e
	.4byte	.LBB493
	.4byte	.LBE493
	.byte	0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	0x1f1
	.4byte	.LBB497
	.4byte	.Ldebug_ranges0+0x400
	.byte	0x1
	.byte	0x51
	.4byte	0x96b
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x1f1
	.4byte	.LBB500
	.4byte	.Ldebug_ranges0+0x418
	.byte	0x1
	.byte	0x50
	.4byte	0x984
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x1d8
	.4byte	.LBB504
	.4byte	.LBE504
	.byte	0x1
	.byte	0x4e
	.4byte	0x99d
	.uleb128 0x1b
	.4byte	0x1e5
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x1f1
	.4byte	.LBB507
	.4byte	.Ldebug_ranges0+0x430
	.byte	0x1
	.byte	0x4f
	.4byte	0x9b6
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x217
	.4byte	.LBB511
	.4byte	.Ldebug_ranges0+0x448
	.byte	0x1
	.byte	0x4d
	.uleb128 0x1b
	.4byte	0x224
	.uleb128 0x1a
	.4byte	0x1d8
	.4byte	.LBB513
	.4byte	.LBE513
	.byte	0x1
	.byte	0x46
	.4byte	0x9e3
	.uleb128 0x1b
	.4byte	0x1e5
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x1f1
	.4byte	.LBB516
	.4byte	.Ldebug_ranges0+0x468
	.byte	0x1
	.byte	0x47
	.4byte	0x9fc
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x20e
	.4byte	.LBB520
	.4byte	.LBE520
	.byte	0x1
	.byte	0x49
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x251
	.4byte	.LBB525
	.4byte	.Ldebug_ranges0+0x488
	.byte	0x1
	.byte	0x9b
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x4a0
	.uleb128 0x25
	.4byte	0x262
	.4byte	.LLST29
	.uleb128 0x1c
	.4byte	0x217
	.4byte	.LBB527
	.4byte	.Ldebug_ranges0+0x4b8
	.byte	0x1
	.byte	0x59
	.4byte	0xa84
	.uleb128 0x1b
	.4byte	0x224
	.uleb128 0x1a
	.4byte	0x1d8
	.4byte	.LBB529
	.4byte	.LBE529
	.byte	0x1
	.byte	0x46
	.4byte	0xa5b
	.uleb128 0x1b
	.4byte	0x1e5
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x1f1
	.4byte	.LBB532
	.4byte	.Ldebug_ranges0+0x4d8
	.byte	0x1
	.byte	0x47
	.4byte	0xa74
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x20e
	.4byte	.LBB536
	.4byte	.LBE536
	.byte	0x1
	.byte	0x49
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x1f1
	.4byte	.LBB539
	.4byte	.Ldebug_ranges0+0x4f8
	.byte	0x1
	.byte	0x5b
	.4byte	0xa9d
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x1d8
	.4byte	.LBB544
	.4byte	.LBE544
	.byte	0x1
	.byte	0x5a
	.4byte	0xab6
	.uleb128 0x1b
	.4byte	0x1e5
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x1f1
	.4byte	.LBB547
	.4byte	.Ldebug_ranges0+0x518
	.byte	0x1
	.byte	0x5c
	.4byte	0xacf
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x1f1
	.4byte	.LBB553
	.4byte	.Ldebug_ranges0+0x538
	.byte	0x1
	.byte	0x5d
	.4byte	0xae8
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x20e
	.4byte	.LBB558
	.4byte	.LBE558
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1f
	.4byte	0x217
	.4byte	.LBB560
	.4byte	.LBE560
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1b
	.4byte	0x224
	.uleb128 0x1a
	.4byte	0x1d8
	.4byte	.LBB561
	.4byte	.LBE561
	.byte	0x1
	.byte	0x46
	.4byte	0xb24
	.uleb128 0x1b
	.4byte	0x1e5
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x1f1
	.4byte	.LBB563
	.4byte	.LBE563
	.byte	0x1
	.byte	0x48
	.4byte	0xb3d
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x20e
	.4byte	.LBB565
	.4byte	.LBE565
	.byte	0x1
	.byte	0x49
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x26e
	.4byte	.LBB570
	.4byte	.Ldebug_ranges0+0x550
	.byte	0x1
	.byte	0xe2
	.4byte	0xb92
	.uleb128 0x1b
	.4byte	0x28a
	.uleb128 0x1b
	.4byte	0x27f
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x568
	.uleb128 0x25
	.4byte	0x295
	.4byte	.LLST30
	.uleb128 0x1d
	.4byte	0x1f1
	.4byte	.LBB572
	.4byte	.Ldebug_ranges0+0x580
	.byte	0x1
	.byte	0x8e
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x26e
	.4byte	.LBB578
	.4byte	.Ldebug_ranges0+0x598
	.byte	0x1
	.byte	0xe9
	.4byte	0xbd4
	.uleb128 0x1b
	.4byte	0x28a
	.uleb128 0x1b
	.4byte	0x27f
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x5b8
	.uleb128 0x25
	.4byte	0x295
	.4byte	.LLST31
	.uleb128 0x1d
	.4byte	0x1f1
	.4byte	.LBB582
	.4byte	.Ldebug_ranges0+0x5d8
	.byte	0x1
	.byte	0x8e
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x26e
	.4byte	.LBB587
	.4byte	.Ldebug_ranges0+0x5f0
	.byte	0x1
	.byte	0xed
	.4byte	0xc16
	.uleb128 0x1b
	.4byte	0x28a
	.uleb128 0x1b
	.4byte	0x27f
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x610
	.uleb128 0x25
	.4byte	0x295
	.4byte	.LLST32
	.uleb128 0x1d
	.4byte	0x1f1
	.4byte	.LBB591
	.4byte	.Ldebug_ranges0+0x630
	.byte	0x1
	.byte	0x8e
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x1f1
	.4byte	.LBB597
	.4byte	.Ldebug_ranges0+0x648
	.byte	0x1
	.byte	0xf2
	.4byte	0xc2f
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x1f1
	.4byte	.LBB604
	.4byte	.Ldebug_ranges0+0x668
	.byte	0x1
	.byte	0xf4
	.4byte	0xc48
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x1f1
	.4byte	.LBB608
	.4byte	.Ldebug_ranges0+0x688
	.byte	0x1
	.byte	0xf6
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST33
	.4byte	0xd22
	.uleb128 0x29
	.ascii	"i\000"
	.byte	0x1
	.byte	0xa5
	.4byte	0x48
	.4byte	.LLST34
	.uleb128 0x1c
	.4byte	0x26e
	.4byte	.LBB618
	.4byte	.Ldebug_ranges0+0x6b0
	.byte	0x1
	.byte	0xa9
	.4byte	0xcca
	.uleb128 0x1b
	.4byte	0x28a
	.uleb128 0x1b
	.4byte	0x27f
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x6d0
	.uleb128 0x25
	.4byte	0x295
	.4byte	.LLST35
	.uleb128 0x1d
	.4byte	0x1f1
	.4byte	.LBB622
	.4byte	.Ldebug_ranges0+0x6f0
	.byte	0x1
	.byte	0x8e
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x26e
	.4byte	.LBB627
	.4byte	.Ldebug_ranges0+0x708
	.byte	0x1
	.byte	0xad
	.4byte	0xd0c
	.uleb128 0x1b
	.4byte	0x28a
	.uleb128 0x1b
	.4byte	0x27f
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0x728
	.uleb128 0x25
	.4byte	0x295
	.4byte	.LLST36
	.uleb128 0x1d
	.4byte	0x1f1
	.4byte	.LBB631
	.4byte	.Ldebug_ranges0+0x748
	.byte	0x1
	.byte	0x8e
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x1f1
	.4byte	.LBB637
	.4byte	.Ldebug_ranges0+0x760
	.byte	0x1
	.byte	0xb4
	.uleb128 0x1b
	.4byte	0x202
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x151
	.4byte	0xd35
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_io_nmmc
	.uleb128 0x2c
	.4byte	0x1cd
	.uleb128 0x2d
	.4byte	.LASF59
	.byte	0x1
	.byte	0x1c
	.4byte	0x48
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_NMMC_spi_freq
	.uleb128 0x2e
	.4byte	0x7d
	.4byte	0xd5c
	.uleb128 0x2f
	.4byte	0xd5c
	.byte	0x7
	.byte	0x0
	.uleb128 0x30
	.byte	0x4
	.byte	0x7
	.uleb128 0x2d
	.4byte	.LASF60
	.byte	0x1
	.byte	0x65
	.4byte	0xd4c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	selectMMC_command
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xc1
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xd72
	.4byte	0x41a
	.ascii	"_NMMC_readSectors\000"
	.4byte	0x55b
	.ascii	"_NMMC_writeSectors\000"
	.4byte	0x757
	.ascii	"_NMMC_clearStatus\000"
	.4byte	0x81b
	.ascii	"_NMMC_shutdown\000"
	.4byte	0x834
	.ascii	"_NMMC_startUp\000"
	.4byte	0xc5e
	.ascii	"_NMMC_isInserted\000"
	.4byte	0xd22
	.ascii	"_io_nmmc\000"
	.4byte	0xd3a
	.ascii	"_NMMC_spi_freq\000"
	.4byte	0xd5f
	.ascii	"selectMMC_command\000"
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
	.4byte	.LBB318-.Ltext0
	.4byte	.LBE318-.Ltext0
	.4byte	.LBB321-.Ltext0
	.4byte	.LBE321-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB326-.Ltext0
	.4byte	.LBE326-.Ltext0
	.4byte	.LBB329-.Ltext0
	.4byte	.LBE329-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB334-.Ltext0
	.4byte	.LBE334-.Ltext0
	.4byte	.LBB355-.Ltext0
	.4byte	.LBE355-.Ltext0
	.4byte	.LBB346-.Ltext0
	.4byte	.LBE346-.Ltext0
	.4byte	.LBB345-.Ltext0
	.4byte	.LBE345-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB336-.Ltext0
	.4byte	.LBE336-.Ltext0
	.4byte	.LBB344-.Ltext0
	.4byte	.LBE344-.Ltext0
	.4byte	.LBB335-.Ltext0
	.4byte	.LBE335-.Ltext0
	.4byte	.LBB343-.Ltext0
	.4byte	.LBE343-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB338-.Ltext0
	.4byte	.LBE338-.Ltext0
	.4byte	.LBB337-.Ltext0
	.4byte	.LBE337-.Ltext0
	.4byte	.LBB342-.Ltext0
	.4byte	.LBE342-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB347-.Ltext0
	.4byte	.LBE347-.Ltext0
	.4byte	.LBB360-.Ltext0
	.4byte	.LBE360-.Ltext0
	.4byte	.LBB356-.Ltext0
	.4byte	.LBE356-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB349-.Ltext0
	.4byte	.LBE349-.Ltext0
	.4byte	.LBB354-.Ltext0
	.4byte	.LBE354-.Ltext0
	.4byte	.LBB348-.Ltext0
	.4byte	.LBE348-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB351-.Ltext0
	.4byte	.LBE351-.Ltext0
	.4byte	.LBB350-.Ltext0
	.4byte	.LBE350-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB357-.Ltext0
	.4byte	.LBE357-.Ltext0
	.4byte	.LBB361-.Ltext0
	.4byte	.LBE361-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB364-.Ltext0
	.4byte	.LBE364-.Ltext0
	.4byte	.LBB367-.Ltext0
	.4byte	.LBE367-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB368-.Ltext0
	.4byte	.LBE368-.Ltext0
	.4byte	.LBB381-.Ltext0
	.4byte	.LBE381-.Ltext0
	.4byte	.LBB376-.Ltext0
	.4byte	.LBE376-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB370-.Ltext0
	.4byte	.LBE370-.Ltext0
	.4byte	.LBB375-.Ltext0
	.4byte	.LBE375-.Ltext0
	.4byte	.LBB369-.Ltext0
	.4byte	.LBE369-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB372-.Ltext0
	.4byte	.LBE372-.Ltext0
	.4byte	.LBB371-.Ltext0
	.4byte	.LBE371-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB377-.Ltext0
	.4byte	.LBE377-.Ltext0
	.4byte	.LBB386-.Ltext0
	.4byte	.LBE386-.Ltext0
	.4byte	.LBB382-.Ltext0
	.4byte	.LBE382-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB383-.Ltext0
	.4byte	.LBE383-.Ltext0
	.4byte	.LBB387-.Ltext0
	.4byte	.LBE387-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB396-.Ltext0
	.4byte	.LBE396-.Ltext0
	.4byte	.LBB406-.Ltext0
	.4byte	.LBE406-.Ltext0
	.4byte	.LBB404-.Ltext0
	.4byte	.LBE404-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB400-.Ltext0
	.4byte	.LBE400-.Ltext0
	.4byte	.LBB407-.Ltext0
	.4byte	.LBE407-.Ltext0
	.4byte	.LBB405-.Ltext0
	.4byte	.LBE405-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB412-.Ltext0
	.4byte	.LBE412-.Ltext0
	.4byte	.LBB418-.Ltext0
	.4byte	.LBE418-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB415-.Ltext0
	.4byte	.LBE415-.Ltext0
	.4byte	.LBB419-.Ltext0
	.4byte	.LBE419-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB420-.Ltext0
	.4byte	.LBE420-.Ltext0
	.4byte	.LBB425-.Ltext0
	.4byte	.LBE425-.Ltext0
	.4byte	.LBB424-.Ltext0
	.4byte	.LBE424-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB426-.Ltext0
	.4byte	.LBE426-.Ltext0
	.4byte	.LBB431-.Ltext0
	.4byte	.LBE431-.Ltext0
	.4byte	.LBB430-.Ltext0
	.4byte	.LBE430-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB432-.Ltext0
	.4byte	.LBE432-.Ltext0
	.4byte	.LBB454-.Ltext0
	.4byte	.LBE454-.Ltext0
	.4byte	.LBB440-.Ltext0
	.4byte	.LBE440-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB434-.Ltext0
	.4byte	.LBE434-.Ltext0
	.4byte	.LBB439-.Ltext0
	.4byte	.LBE439-.Ltext0
	.4byte	.LBB433-.Ltext0
	.4byte	.LBE433-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB436-.Ltext0
	.4byte	.LBE436-.Ltext0
	.4byte	.LBB435-.Ltext0
	.4byte	.LBE435-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB441-.Ltext0
	.4byte	.LBE441-.Ltext0
	.4byte	.LBB457-.Ltext0
	.4byte	.LBE457-.Ltext0
	.4byte	.LBB456-.Ltext0
	.4byte	.LBE456-.Ltext0
	.4byte	.LBB455-.Ltext0
	.4byte	.LBE455-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB443-.Ltext0
	.4byte	.LBE443-.Ltext0
	.4byte	.LBB453-.Ltext0
	.4byte	.LBE453-.Ltext0
	.4byte	.LBB442-.Ltext0
	.4byte	.LBE442-.Ltext0
	.4byte	.LBB452-.Ltext0
	.4byte	.LBE452-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB445-.Ltext0
	.4byte	.LBE445-.Ltext0
	.4byte	.LBB451-.Ltext0
	.4byte	.LBE451-.Ltext0
	.4byte	.LBB444-.Ltext0
	.4byte	.LBE444-.Ltext0
	.4byte	.LBB450-.Ltext0
	.4byte	.LBE450-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB460-.Ltext0
	.4byte	.LBE460-.Ltext0
	.4byte	.LBB523-.Ltext0
	.4byte	.LBE523-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB467-.Ltext0
	.4byte	.LBE467-.Ltext0
	.4byte	.LBB478-.Ltext0
	.4byte	.LBE478-.Ltext0
	.4byte	.LBB461-.Ltext0
	.4byte	.LBE461-.Ltext0
	.4byte	.LBB463-.Ltext0
	.4byte	.LBE463-.Ltext0
	.4byte	.LBB465-.Ltext0
	.4byte	.LBE465-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB473-.Ltext0
	.4byte	.LBE473-.Ltext0
	.4byte	.LBB462-.Ltext0
	.4byte	.LBE462-.Ltext0
	.4byte	.LBB464-.Ltext0
	.4byte	.LBE464-.Ltext0
	.4byte	.LBB466-.Ltext0
	.4byte	.LBE466-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB481-.Ltext0
	.4byte	.LBE481-.Ltext0
	.4byte	.LBB568-.Ltext0
	.4byte	.LBE568-.Ltext0
	.4byte	.LBB524-.Ltext0
	.4byte	.LBE524-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB482-.Ltext0
	.4byte	.LBE482-.Ltext0
	.4byte	.LBB522-.Ltext0
	.4byte	.LBE522-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB486-.Ltext0
	.4byte	.LBE486-.Ltext0
	.4byte	.LBB490-.Ltext0
	.4byte	.LBE490-.Ltext0
	.4byte	.LBB483-.Ltext0
	.4byte	.LBE483-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB497-.Ltext0
	.4byte	.LBE497-.Ltext0
	.4byte	.LBB495-.Ltext0
	.4byte	.LBE495-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB500-.Ltext0
	.4byte	.LBE500-.Ltext0
	.4byte	.LBB496-.Ltext0
	.4byte	.LBE496-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB507-.Ltext0
	.4byte	.LBE507-.Ltext0
	.4byte	.LBB503-.Ltext0
	.4byte	.LBE503-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB511-.Ltext0
	.4byte	.LBE511-.Ltext0
	.4byte	.LBB506-.Ltext0
	.4byte	.LBE506-.Ltext0
	.4byte	.LBB510-.Ltext0
	.4byte	.LBE510-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB516-.Ltext0
	.4byte	.LBE516-.Ltext0
	.4byte	.LBB512-.Ltext0
	.4byte	.LBE512-.Ltext0
	.4byte	.LBB515-.Ltext0
	.4byte	.LBE515-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB525-.Ltext0
	.4byte	.LBE525-.Ltext0
	.4byte	.LBB569-.Ltext0
	.4byte	.LBE569-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB526-.Ltext0
	.4byte	.LBE526-.Ltext0
	.4byte	.LBB567-.Ltext0
	.4byte	.LBE567-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB527-.Ltext0
	.4byte	.LBE527-.Ltext0
	.4byte	.LBB543-.Ltext0
	.4byte	.LBE543-.Ltext0
	.4byte	.LBB538-.Ltext0
	.4byte	.LBE538-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB532-.Ltext0
	.4byte	.LBE532-.Ltext0
	.4byte	.LBB528-.Ltext0
	.4byte	.LBE528-.Ltext0
	.4byte	.LBB531-.Ltext0
	.4byte	.LBE531-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB539-.Ltext0
	.4byte	.LBE539-.Ltext0
	.4byte	.LBB551-.Ltext0
	.4byte	.LBE551-.Ltext0
	.4byte	.LBB546-.Ltext0
	.4byte	.LBE546-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB547-.Ltext0
	.4byte	.LBE547-.Ltext0
	.4byte	.LBB556-.Ltext0
	.4byte	.LBE556-.Ltext0
	.4byte	.LBB552-.Ltext0
	.4byte	.LBE552-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB553-.Ltext0
	.4byte	.LBE553-.Ltext0
	.4byte	.LBB557-.Ltext0
	.4byte	.LBE557-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB570-.Ltext0
	.4byte	.LBE570-.Ltext0
	.4byte	.LBB577-.Ltext0
	.4byte	.LBE577-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB571-.Ltext0
	.4byte	.LBE571-.Ltext0
	.4byte	.LBB576-.Ltext0
	.4byte	.LBE576-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB572-.Ltext0
	.4byte	.LBE572-.Ltext0
	.4byte	.LBB575-.Ltext0
	.4byte	.LBE575-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB578-.Ltext0
	.4byte	.LBE578-.Ltext0
	.4byte	.LBB595-.Ltext0
	.4byte	.LBE595-.Ltext0
	.4byte	.LBB586-.Ltext0
	.4byte	.LBE586-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB580-.Ltext0
	.4byte	.LBE580-.Ltext0
	.4byte	.LBB585-.Ltext0
	.4byte	.LBE585-.Ltext0
	.4byte	.LBB579-.Ltext0
	.4byte	.LBE579-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB582-.Ltext0
	.4byte	.LBE582-.Ltext0
	.4byte	.LBB581-.Ltext0
	.4byte	.LBE581-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB587-.Ltext0
	.4byte	.LBE587-.Ltext0
	.4byte	.LBB601-.Ltext0
	.4byte	.LBE601-.Ltext0
	.4byte	.LBB596-.Ltext0
	.4byte	.LBE596-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB589-.Ltext0
	.4byte	.LBE589-.Ltext0
	.4byte	.LBB594-.Ltext0
	.4byte	.LBE594-.Ltext0
	.4byte	.LBB588-.Ltext0
	.4byte	.LBE588-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB591-.Ltext0
	.4byte	.LBE591-.Ltext0
	.4byte	.LBB590-.Ltext0
	.4byte	.LBE590-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB597-.Ltext0
	.4byte	.LBE597-.Ltext0
	.4byte	.LBB603-.Ltext0
	.4byte	.LBE603-.Ltext0
	.4byte	.LBB602-.Ltext0
	.4byte	.LBE602-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB604-.Ltext0
	.4byte	.LBE604-.Ltext0
	.4byte	.LBB615-.Ltext0
	.4byte	.LBE615-.Ltext0
	.4byte	.LBB613-.Ltext0
	.4byte	.LBE613-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB608-.Ltext0
	.4byte	.LBE608-.Ltext0
	.4byte	.LBB617-.Ltext0
	.4byte	.LBE617-.Ltext0
	.4byte	.LBB616-.Ltext0
	.4byte	.LBE616-.Ltext0
	.4byte	.LBB614-.Ltext0
	.4byte	.LBE614-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB618-.Ltext0
	.4byte	.LBE618-.Ltext0
	.4byte	.LBB635-.Ltext0
	.4byte	.LBE635-.Ltext0
	.4byte	.LBB626-.Ltext0
	.4byte	.LBE626-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB620-.Ltext0
	.4byte	.LBE620-.Ltext0
	.4byte	.LBB625-.Ltext0
	.4byte	.LBE625-.Ltext0
	.4byte	.LBB619-.Ltext0
	.4byte	.LBE619-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB622-.Ltext0
	.4byte	.LBE622-.Ltext0
	.4byte	.LBB621-.Ltext0
	.4byte	.LBE621-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB627-.Ltext0
	.4byte	.LBE627-.Ltext0
	.4byte	.LBB641-.Ltext0
	.4byte	.LBE641-.Ltext0
	.4byte	.LBB636-.Ltext0
	.4byte	.LBE636-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB629-.Ltext0
	.4byte	.LBE629-.Ltext0
	.4byte	.LBB634-.Ltext0
	.4byte	.LBE634-.Ltext0
	.4byte	.LBB628-.Ltext0
	.4byte	.LBE628-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB631-.Ltext0
	.4byte	.LBE631-.Ltext0
	.4byte	.LBB630-.Ltext0
	.4byte	.LBE630-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB637-.Ltext0
	.4byte	.LBE637-.Ltext0
	.4byte	.LBB643-.Ltext0
	.4byte	.LBE643-.Ltext0
	.4byte	.LBB642-.Ltext0
	.4byte	.LBE642-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF18:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF16:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF34:
	.ascii	"enable\000"
.LASF55:
	.ascii	"_NMMC_startUp\000"
.LASF2:
	.ascii	"short int\000"
.LASF20:
	.ascii	"ioType\000"
.LASF35:
	.ascii	"_Neo_WriteMK2Config\000"
.LASF23:
	.ascii	"fn_isInserted\000"
.LASF19:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF57:
	.ascii	"_NMMC_isInserted\000"
.LASF36:
	.ascii	"config\000"
.LASF4:
	.ascii	"uint8_t\000"
.LASF48:
	.ascii	"_Neo_EnableMMC\000"
.LASF13:
	.ascii	"bool\000"
.LASF14:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF42:
	.ascii	"_Neo_CloseSPI\000"
.LASF9:
	.ascii	"float\000"
.LASF7:
	.ascii	"long long int\000"
.LASF46:
	.ascii	"_Neo_SendMMCCommand\000"
.LASF31:
	.ascii	"dataByte\000"
.LASF29:
	.ascii	"IO_INTERFACE\000"
.LASF39:
	.ascii	"_Neo_CheckMMCResponse\000"
.LASF24:
	.ascii	"fn_readSectors\000"
.LASF56:
	.ascii	"transSpeed\000"
.LASF38:
	.ascii	"_Neo_ReadMK2Config\000"
.LASF49:
	.ascii	"sector\000"
.LASF26:
	.ascii	"fn_clearStatus\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF50:
	.ascii	"totalSecs\000"
.LASF0:
	.ascii	"signed char\000"
.LASF47:
	.ascii	"_Neo_SelectMMC\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF37:
	.ascii	"_Neo_SPI\000"
.LASF5:
	.ascii	"uint32_t\000"
.LASF6:
	.ascii	"unsigned int\000"
.LASF11:
	.ascii	"false\000"
.LASF45:
	.ascii	"argument\000"
.LASF63:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF21:
	.ascii	"features\000"
.LASF64:
	.ascii	"_Neo_MK2GameMode\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF17:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF62:
	.ascii	"C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/io_nm"
	.ascii	"mc.c\000"
.LASF12:
	.ascii	"true\000"
.LASF22:
	.ascii	"fn_startup\000"
.LASF65:
	.ascii	"_NMMC_shutdown\000"
.LASF51:
	.ascii	"buffer\000"
.LASF58:
	.ascii	"_io_nmmc\000"
.LASF28:
	.ascii	"long unsigned int\000"
.LASF10:
	.ascii	"double\000"
.LASF33:
	.ascii	"_Neo_EnableEEPROM\000"
.LASF40:
	.ascii	"response\000"
.LASF54:
	.ascii	"_NMMC_clearStatus\000"
.LASF41:
	.ascii	"mask\000"
.LASF43:
	.ascii	"_Neo_InitMMC\000"
.LASF32:
	.ascii	"_Neo_OpenSPI\000"
.LASF30:
	.ascii	"frequency\000"
.LASF25:
	.ascii	"fn_writeSectors\000"
.LASF59:
	.ascii	"_NMMC_spi_freq\000"
.LASF15:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF61:
	.ascii	"GNU C 4.4.3\000"
.LASF52:
	.ascii	"_NMMC_readSectors\000"
.LASF44:
	.ascii	"command\000"
.LASF27:
	.ascii	"fn_shutdown\000"
.LASF53:
	.ascii	"_NMMC_writeSectors\000"
.LASF60:
	.ascii	"selectMMC_command\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
