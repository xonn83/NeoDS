	.file	"NeoYM2610.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.global	__aeabi_idiv
	.align	2
	.type	ymTimerASet, %function
ymTimerASet:
.LFB24:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoYM2610.c"
	.loc 1 96 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI0:
	.loc 1 97 0
	ldr	r4, .L5
	ldr	r3, [r4, #156]
	.loc 1 98 0
	ldr	r2, .L5+4
	.loc 1 97 0
	rsb	r3, r3, #1024
	.loc 1 98 0
	mul	r0, r3, r2
	ldr	r1, .L5+8
	.loc 1 97 0
	str	r3, [r4, #164]
	.loc 1 98 0
	bl	__aeabi_idiv
	.loc 1 100 0
	cmp	r0, #0
	moveq	r3, #1
	.loc 1 98 0
	str	r0, [r4, #172]
	.loc 1 100 0
	streq	r3, [r4, #172]
	.loc 1 101 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	g_ym2610
	.word	12000
	.word	55555
.LFE24:
	.size	ymTimerASet, .-ymTimerASet
	.align	2
	.type	ymTimerBSet, %function
ymTimerBSet:
.LFB25:
	.loc 1 104 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI1:
	.loc 1 105 0
	ldr	r4, .L11
	ldr	r3, [r4, #160]
	.loc 1 106 0
	ldr	r2, .L11+4
	.loc 1 105 0
	rsb	r3, r3, #256
	mov	r3, r3, asl #4
	.loc 1 106 0
	mul	r0, r3, r2
	ldr	r1, .L11+8
	.loc 1 105 0
	str	r3, [r4, #168]
	.loc 1 106 0
	bl	__aeabi_idiv
	.loc 1 108 0
	cmp	r0, #0
	moveq	r3, #1
	.loc 1 106 0
	str	r0, [r4, #176]
	.loc 1 108 0
	streq	r3, [r4, #176]
	.loc 1 109 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	g_ym2610
	.word	12000
	.word	55555
.LFE25:
	.size	ymTimerBSet, .-ymTimerBSet
	.align	2
	.type	ymUpdateArriveEnd, %function
ymUpdateArriveEnd:
.LFB26:
	.loc 1 112 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI2:
	.loc 1 112 0
	ldr	ip, .L23
	ldr	r1, .L23+4
	mov	r0, #0
.LVL0:
.L14:
	.loc 1 115 0
	ldrb	r3, [r1, #-117]	@ zero_extendqisi2
	cmp	r3, #0
	.loc 1 114 0
	add	r0, r0, #1
	.loc 1 116 0
	ldr	lr, .L23
	.loc 1 115 0
	ldr	r4, .L23+4
	beq	.L15
	.loc 1 116 0
	ldrb	r3, [ip, #10]	@ zero_extendqisi2
	ldrb	r2, [lr, #728]	@ zero_extendqisi2
	orr	r2, r2, r3
	.loc 1 117 0
	mov	r3, #0
	.loc 1 116 0
	strb	r2, [lr, #728]
	.loc 1 117 0
	strb	r3, [r1, #-117]
.L15:
	.loc 1 114 0
	cmp	r0, #6
	add	r1, r1, #1
	add	ip, ip, #12
	bne	.L14
	.loc 1 120 0
	ldrb	r3, [r4, #-111]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L20
	.loc 1 121 0
	ldr	r2, .L23
	ldrb	r3, [r2, #728]	@ zero_extendqisi2
	ldrb	r1, [r2, #92]	@ zero_extendqisi2
	orr	r3, r3, r1
	strb	r3, [r2, #728]
	.loc 1 122 0
	mov	r3, #0
	strb	r3, [r4, #-111]
.L20:
	.loc 1 124 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	g_ym2610
	.word	41940223
.LFE26:
	.size	ymUpdateArriveEnd, .-ymUpdateArriveEnd
	.align	2
	.global	ymFinishChannelControl
	.type	ymFinishChannelControl, %function
ymFinishChannelControl:
.LFB29:
	.loc 1 213 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1:
	.loc 1 215 0
	ldr	r2, .L27
	ldr	r3, .L27+4
	add	r2, r2, r0, asl #2
	ldrh	r1, [r2, #184]
	mov	r0, r0, asl #1
.LVL2:
	add	r3, r0, r3
	strh	r1, [r3, #-171]	@ movhi
	.loc 1 216 0
	mvn	r3, #0
	.loc 1 213 0
	@ lr needed for prologue
	.loc 1 216 0
	str	r3, [r2, #184]
	.loc 1 217 0
	bx	lr
.L28:
	.align	2
.L27:
	.word	g_ym2610
	.word	41940223
.LFE29:
	.size	ymFinishChannelControl, .-ymFinishChannelControl
	.align	2
	.global	neoYM2610Read
	.type	neoYM2610Read, %function
neoYM2610Read:
.LFB42:
	.loc 1 748 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3:
	.loc 1 751 0
	and	r3, r0, #3
	.loc 1 748 0
	stmfd	sp!, {r4, lr}
.LCFI3:
	.loc 1 749 0
	ldr	r4, .L38
	.loc 1 751 0
	cmp	r3, #1
	.loc 1 749 0
	ldrb	r0, [r4, #725]	@ zero_extendqisi2
.LVL4:
	.loc 1 751 0
	beq	.L32
	cmp	r3, #2
	beq	.L33
	cmp	r3, #0
	.loc 1 754 0
	ldreq	r3, [r4, #180]
	.loc 1 751 0
	mov	r0, #0
	.loc 1 754 0
	andeq	r0, r3, #3
	b	.L34
.L32:
	.loc 1 756 0
	add	r3, r0, r4
	cmp	r0, #15
	ldrlsb	r0, [r3, #212]	@ zero_extendqisi2
	bls	.L34
	cmp	r0, #255
	movne	r0, #0
	moveq	r0, #1
	b	.L34
.L33:
	.loc 1 760 0
	bl	ymUpdateArriveEnd
	.loc 1 761 0
	ldrb	r0, [r4, #728]	@ zero_extendqisi2
.L34:
	.loc 1 764 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	g_ym2610
.LFE42:
	.size	neoYM2610Read, .-neoYM2610Read
	.align	2
	.type	ymInterruptSet, %function
ymInterruptSet:
.LFB22:
	.loc 1 77 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5:
	str	lr, [sp, #-4]!
.LCFI4:
	.loc 1 79 0
	ldr	r1, .L45
	ldr	r3, [r1, #180]
	.loc 1 80 0
	ldrb	r2, [r1, #729]	@ zero_extendqisi2
	.loc 1 79 0
	orr	r3, r3, r0
	.loc 1 80 0
	cmp	r2, #0
	.loc 1 77 0
	sub	sp, sp, #4
.LCFI5:
	.loc 1 79 0
	str	r3, [r1, #180]
	.loc 1 80 0
	bne	.L44
	cmp	r3, #0
	.loc 1 81 0
	movne	r3, #1
	strneb	r3, [r1, #729]
	.loc 1 82 0
	blne	neoZ80Irq
.LVL6:
.LVL7:
.L44:
	.loc 1 84 0
	add	sp, sp, #4
	ldr	lr, [sp], #4
	bx	lr
.L46:
	.align	2
.L45:
	.word	g_ym2610
.LFE22:
	.size	ymInterruptSet, .-ymInterruptSet
	.align	2
	.type	ymADPCMACalculateVolume, %function
ymADPCMACalculateVolume:
.LFB40:
	.loc 1 642 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL8:
	.loc 1 646 0
	ldr	ip, .L53
	mov	r3, #12
	mla	r3, r0, r3, ip
	.loc 1 642 0
	stmfd	sp!, {r4, r6, r7, lr}
.LCFI6:
	.loc 1 646 0
	ldrb	r4, [ip, #727]	@ zero_extendqisi2
	.loc 1 647 0
	ldrb	r7, [r3, #9]	@ zero_extendqisi2
.LVL9:
	.loc 1 646 0
	ldrb	ip, [r3, #8]	@ zero_extendqisi2
	.loc 1 654 0
	mov	r1, #0
	.loc 1 646 0
	add	ip, ip, r4
.LVL10:
	.loc 1 652 0
	cmp	r7, r1
	movne	lr, #0
	moveq	lr, #1
	.loc 1 662 0
	and	r3, ip, #7
	mov	r4, ip, lsr #3
	.loc 1 652 0
	cmp	ip, #62
	orrhi	lr, lr, #1
	mov	ip, r0, asl #4
.LVL11:
	.loc 1 662 0
	rsb	r3, r3, #15
	.loc 1 654 0
	add	r0, ip, #67108864
.LVL12:
	.loc 1 652 0
	cmp	lr, r1
	.loc 1 662 0
	mov	r6, r3, asl #7
	.loc 1 654 0
	ldr	r2, .L53+4
	.loc 1 662 0
	add	r3, r4, #3
	.loc 1 654 0
	add	r0, r0, #1024
	.loc 1 652 0
	bne	.L52
	.loc 1 662 0
	mov	r1, r6, lsr r3
.LVL13:
	.loc 1 664 0
	ldr	r3, .L53+8
	ldr	r3, [r3, r7, asl #2]
	add	r0, ip, #67108864
	mov	r3, r3, asl #16
	ldr	r2, .L53+4
	cmp	r1, #127
	orrls	r1, r3, r1
	orrhi	r1, r3, #127
.LVL14:
	add	r0, r0, #1024
.L52:
	bl	neoAudioBufferWrite32
	.loc 1 666 0
	ldmfd	sp!, {r4, r6, r7, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	g_ym2610
	.word	8323199
	.word	panTable.2990
.LFE40:
	.size	ymADPCMACalculateVolume, .-ymADPCMACalculateVolume
	.align	2
	.type	ymADPCMBCalculateVolume, %function
ymADPCMBCalculateVolume:
.LFB38:
	.loc 1 524 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI7:
	.loc 1 528 0
	ldr	r3, .L61
	.loc 1 529 0
	ldrb	ip, [r3, #91]	@ zero_extendqisi2
	.loc 1 536 0
	subs	r1, ip, #0
	.loc 1 524 0
	sub	sp, sp, #4
.LCFI8:
	.loc 1 538 0
	ldr	r0, .L61+4
	ldr	r2, .L61+8
	.loc 1 528 0
	ldrb	lr, [r3, #88]	@ zero_extendqisi2
	.loc 1 536 0
	beq	.L60
	.loc 1 541 0
	ldr	r3, .L61+12
	ldr	r1, [r3, ip, asl #2]
	ldr	r0, .L61+4
	mov	r1, r1, asl #16
	ldr	r2, .L61+8
	cmp	lr, #127
	orrls	r1, r1, lr
	orrhi	r1, r1, #127
.L60:
	bl	neoAudioBufferWrite32
	.loc 1 543 0
	add	sp, sp, #4
	ldr	lr, [sp], #4
	bx	lr
.L62:
	.align	2
.L61:
	.word	g_ym2610
	.word	67109984
	.word	8323199
	.word	panTable.2893
.LFE38:
	.size	ymADPCMBCalculateVolume, .-ymADPCMBCalculateVolume
	.align	2
	.global	neoYM2610Process
	.type	neoYM2610Process, %function
neoYM2610Process:
.LFB45:
	.loc 1 839 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 840 0
	ldr	r2, .L95
	ldr	r3, [r2, #172]
	cmp	r3, #0
	.loc 1 839 0
	stmfd	sp!, {r4, r6, r7, lr}
.LCFI9:
	.loc 1 840 0
	ble	.L64
	.loc 1 841 0
	sub	r3, r3, #1
	.loc 1 842 0
	cmp	r3, #0
	.loc 1 841 0
	str	r3, [r2, #172]
	.loc 1 842 0
	bne	.L64
	.loc 1 844 0
	ldrb	r3, [r2, #726]	@ zero_extendqisi2
	tst	r3, #4
	movne	r0, #1
	blne	ymInterruptSet
.L67:
	.loc 1 846 0
	bl	ymTimerASet
.L64:
	.loc 1 849 0
	ldr	r2, .L95
	ldr	r3, [r2, #176]
	cmp	r3, #0
	ble	.L69
	.loc 1 850 0
	sub	r3, r3, #1
	.loc 1 851 0
	cmp	r3, #0
	.loc 1 850 0
	str	r3, [r2, #176]
	.loc 1 851 0
	bne	.L69
	.loc 1 853 0
	ldrb	r3, [r2, #726]	@ zero_extendqisi2
	tst	r3, #8
	movne	r0, #2
	blne	ymInterruptSet
.L72:
	.loc 1 855 0
	bl	ymTimerBSet
.L69:
.LBB52:
.LBB53:
	.loc 1 459 0
	ldr	r2, .L95
	ldrb	r3, [r2, #155]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L90
	.loc 1 462 0
	ldr	r3, [r2, #140]
	sub	r3, r3, #32768
	.loc 1 463 0
	cmp	r3, #0
	.loc 1 462 0
	str	r3, [r2, #140]
	.loc 1 463 0
	bgt	.L90
.L91:
	.loc 1 465 0
	ldr	r1, .L95
	.loc 1 466 0
	add	r3, r1, #140
	ldmda	r3, {r2, r3}
	add	r2, r3, r2
	.loc 1 465 0
	ldr	r3, [r1, #148]
	.loc 1 467 0
	cmp	r2, #0
	.loc 1 465 0
	sub	r0, r3, #1
	str	r0, [r1, #148]
	.loc 1 466 0
	str	r2, [r1, #140]
	.loc 1 467 0
	ble	.L91
	.loc 1 470 0
	cmp	r0, #0
	bge	.L78
	.loc 1 471 0
	ldrb	r3, [r1, #154]	@ zero_extendqisi2
	cmp	r3, #0
	ldrb	r3, [r1, #153]	@ zero_extendqisi2
	beq	.L80
	.loc 1 472 0
	cmp	r3, #0
	ldrneb	r3, [r1, #152]	@ zero_extendqisi2
	eorne	r3, r3, #31
	strneb	r3, [r1, #152]
	.loc 1 474 0
	mov	r3, #0
	str	r3, [r1, #148]
	.loc 1 473 0
	add	r3, r3, #1
	strb	r3, [r1, #155]
	b	.L78
.L80:
	.loc 1 478 0
	cmp	r3, #0
	beq	.L84
	tst	r0, #32
	ldrneb	r3, [r1, #152]	@ zero_extendqisi2
	eorne	r3, r3, #31
	strneb	r3, [r1, #152]
.L84:
	.loc 1 479 0
	ldr	r2, .L95
	ldr	r3, [r2, #148]
	and	r3, r3, #31
	str	r3, [r2, #148]
.L78:
	.loc 1 483 0
	ldr	r1, .L95
	ldr	r2, [r1, #148]
	ldrb	r3, [r1, #152]	@ zero_extendqisi2
	eor	r3, r3, r2
	ldr	r2, .L95+4
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	str	r3, [r1, #144]
	add	r3, r1, #96
	mov	r4, r1
	add	r7, r1, r3
.L87:
	.loc 1 839 0
	ldr	r6, .L95
	rsb	r1, r6, r7
.LBB54:
	.loc 1 487 0
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	cmp	r3, #0
	add	r7, r7, #12
	.loc 1 489 0
	mov	r2, #127
	.loc 1 487 0
	beq	.L88
	.loc 1 489 0
	ldrb	r0, [r1, #9]	@ zero_extendqisi2
	.loc 1 488 0
	ldr	r3, [r6, #144]
	.loc 1 489 0
	mov	r0, r0, asl #4
	.loc 1 488 0
	str	r3, [r1, #4]
	.loc 1 489 0
	add	r0, r0, #67108864
	add	r0, r0, #1024
	ldr	r1, [r4, #100]
	bl	neoAudioBufferWrite32
.L88:
	add	r4, r4, #12
.LBE54:
	.loc 1 485 0
	add	r3, r6, #36
	cmp	r4, r3
	bne	.L87
.L90:
.LBE53:
.LBE52:
	.loc 1 859 0
	ldmfd	sp!, {r4, r6, r7, lr}
	bx	lr
.L96:
	.align	2
.L95:
	.word	g_ym2610
	.word	g_ssgVolumeTable
.LFE45:
	.size	neoYM2610Process, .-neoYM2610Process
	.align	2
	.type	ymInterruptReset, %function
ymInterruptReset:
.LFB23:
	.loc 1 87 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL15:
	str	lr, [sp, #-4]!
.LCFI10:
	.loc 1 88 0
	ldr	r1, .L102
	ldr	r3, [r1, #180]
	.loc 1 89 0
	ldrb	r2, [r1, #729]	@ zero_extendqisi2
	.loc 1 88 0
	bic	r3, r3, r0
	.loc 1 89 0
	cmp	r2, #0
	.loc 1 87 0
	sub	sp, sp, #4
.LCFI11:
	.loc 1 88 0
	str	r3, [r1, #180]
	.loc 1 89 0
	beq	.L101
	cmp	r3, #0
	.loc 1 90 0
	streqb	r3, [r1, #729]
	.loc 1 91 0
	bleq	neoZ80ClearIrq
.LVL16:
.LVL17:
.L101:
	.loc 1 93 0
	add	sp, sp, #4
	ldr	lr, [sp], #4
	bx	lr
.L103:
	.align	2
.L102:
	.word	g_ym2610
.LFE23:
	.size	ymInterruptReset, .-ymInterruptReset
	.align	2
	.type	ymOPNModeWrite, %function
ymOPNModeWrite:
.LFB27:
	.loc 1 127 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL18:
	stmfd	sp!, {r4, r6, lr}
.LCFI12:
	.loc 1 128 0
	sub	r0, r0, #36
.LVL19:
	.loc 1 127 0
	sub	sp, sp, #4
.LCFI13:
	.loc 1 127 0
	mov	r4, r1
	.loc 1 128 0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L124
	.p2align 2
.L110:
	.word	.L106
	.word	.L107
	.word	.L108
	.word	.L109
.LVL20:
.L106:
	.loc 1 132 0
	ldr	r2, .L125
	ldr	r3, [r2, #156]
	and	r3, r3, #3
	orr	r3, r3, r1, asl #2
	str	r3, [r2, #156]
	b	.L124
.L107:
	.loc 1 135 0
	ldr	r3, .L125
	ldr	r2, [r3, #156]
	and	r1, r1, #3
	and	r2, r2, #1020
	orr	r2, r2, r1
	str	r2, [r3, #156]
	b	.L124
.LVL21:
.L108:
	.loc 1 138 0
	ldr	r3, .L125
	str	r1, [r3, #160]
	b	.L124
.L109:
	.loc 1 149 0
	ldr	r6, .L125
	.loc 1 150 0
	tst	r1, #32
	.loc 1 149 0
	strb	r1, [r6, #726]
	.loc 1 150 0
.LVL22:
	movne	r0, #2
	blne	ymInterruptReset
.LVL23:
.L111:
	.loc 1 151 0
	tst	r4, #16
	movne	r0, #1
	blne	ymInterruptReset
.LVL24:
.L113:
	.loc 1 153 0
	ands	r2, r4, #2
	ldr	r3, [r6, #168]
	beq	.L115
	.loc 1 155 0
	cmp	r3, #0
	bne	.L117
	.loc 1 156 0
	bl	ymTimerBSet
	b	.L117
.LVL25:
.L115:
	.loc 1 160 0
	cmp	r3, #0
	.loc 1 162 0
	strne	r2, [r6, #176]
	.loc 1 161 0
	strne	r2, [r6, #168]
.L117:
	.loc 1 166 0
	ands	r1, r4, #1
	ldr	r2, .L125
	beq	.L120
	.loc 1 168 0
	ldr	r3, [r2, #164]
	cmp	r3, #0
	bne	.L124
	.loc 1 182 0
	add	sp, sp, #4
	ldmfd	sp!, {r4, r6, lr}
	.loc 1 169 0
	b	ymTimerASet
.L120:
	.loc 1 173 0
	ldr	r3, [r2, #164]
	cmp	r3, #0
	.loc 1 175 0
	strne	r1, [r2, #172]
	.loc 1 174 0
	strne	r1, [r2, #164]
.LVL26:
.L124:
	.loc 1 182 0
	add	sp, sp, #4
	ldmfd	sp!, {r4, r6, lr}
	bx	lr
.L126:
	.align	2
.L125:
	.word	g_ym2610
.LFE27:
	.size	ymOPNModeWrite, .-ymOPNModeWrite
	.global	__aeabi_uidiv
	.align	2
	.type	ymSSGCalculateFreq, %function
ymSSGCalculateFreq:
.LFB31:
	.loc 1 225 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL27:
	stmfd	sp!, {r4, lr}
.LCFI14:
	.loc 1 225 0
	mov	r4, r0
	.loc 1 227 0
	ldrb	r3, [r4, #10]	@ zero_extendqisi2
	cmp	r3, #2
	.loc 1 232 0
	ldr	r0, .L135
.LVL28:
	.loc 1 227 0
	beq	.L130
	cmp	r3, #3
	beq	.L131
	cmp	r3, #1
	.loc 1 229 0
	ldr	r0, .L135+4
	.loc 1 227 0
	bne	.L133
	b	.L131
.L130:
	.loc 1 232 0
	ldr	r3, .L135+8
	ldr	r1, [r3, #132]
	b	.L134
.L131:
	.loc 1 235 0
	ldr	r1, [r4, #0]
.L134:
	bl	__aeabi_uidiv
	.loc 1 242 0
	ldrb	r3, [r4, #9]	@ zero_extendqisi2
	ldr	r4, .L135+12
.LVL29:
	mov	r1, r0
	mov	r3, r3, asl #4
	mov	r0, #-16777216
.LVL30:
	add	r4, r3, r4
	bl	__aeabi_idiv
.LVL31:
	mov	r1, r0, asl #16
	mov	r1, r1, lsr #16
	mov	r0, r4
	ldr	r2, .L135+16
	bl	neoAudioBufferWrite16
.LVL32:
.L133:
	.loc 1 244 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L136:
	.align	2
.L135:
	.word	125000
	.word	1000000
	.word	g_ym2610
	.word	67109896
	.word	65535
.LFE31:
	.size	ymSSGCalculateFreq, .-ymSSGCalculateFreq
	.align	2
	.type	ymSSGFreeChannel, %function
ymSSGFreeChannel:
.LFB34:
	.loc 1 264 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL33:
	stmfd	sp!, {r4, lr}
.LCFI15:
.LBB55:
.LBB56:
	.loc 1 248 0
	sub	lr, r0, #14
.LBE56:
.LBE55:
	.loc 1 265 0
	cmp	lr, #1
	bhi	.L138
	ldr	r4, .L154
	add	r2, r4, r4
.L140:
	.loc 1 264 0
	ldr	ip, .L154+4
.LBB57:
.LBB58:
	.loc 1 270 0
	rsb	r3, ip, r2
	ldrb	r3, [r3, #-86]	@ zero_extendqisi2
	cmp	r3, #3
.LBE58:
	.loc 1 268 0
	add	r1, ip, #132
.LBB59:
	.loc 1 270 0
	bls	.L141
	.loc 1 272 0
	and	r3, r0, #255
	.loc 1 273 0
	ldr	r1, [r4, #4]
	mov	r0, r3, asl #4
.LVL34:
	add	r0, r0, #67108864
	orr	r1, r1, #-536870912
	add	r0, r0, #1024
	orr	r1, r1, #4128768
	mvn	r2, #0
	.loc 1 272 0
	strb	r3, [r4, #9]
	.loc 1 273 0
	bl	neoAudioBufferWrite32
	.loc 1 278 0
	ldrb	r3, [r4, #10]	@ zero_extendqisi2
	cmp	r3, #5
	.loc 1 279 0
	moveq	r3, #3
	.loc 1 281 0
	movne	r3, #2
	.loc 1 283 0
	mov	r0, r4
.LVL35:
	.loc 1 281 0
	strb	r3, [r4, #10]
.LBE59:
.LBE57:
	.loc 1 295 0
	ldmfd	sp!, {r4, lr}
.LBB60:
.LBB61:
	.loc 1 283 0
	b	ymSSGCalculateFreq
.LVL36:
.L141:
	add	r4, r4, #12
.LBE61:
	.loc 1 268 0
	cmp	r4, r1
	add	r2, r2, #12
	beq	.L151
	b	.L140
.L138:
.LBE60:
	.loc 1 292 0
	sub	r3, r0, #11
	cmp	r3, #2
	bhi	.L149
	.loc 1 293 0
	mov	r0, r0, asl #4
.LVL37:
	add	r0, r0, #67108864
	add	r0, r0, #1024
	mov	r1, #0
	mvn	r2, #0
	b	.L153
.LVL38:
.L151:
.LBB62:
	.loc 1 289 0
	ldrb	r3, [ip, #730]	@ zero_extendqisi2
	mov	r2, #1
	bic	r3, r3, r2, asl lr
	.loc 1 290 0
	mov	r0, r0, asl #4
.LVL39:
	add	r0, r0, #67108864
	.loc 1 289 0
	strb	r3, [ip, #730]
	.loc 1 290 0
	add	r0, r0, #1024
	mov	r1, #0
	mvn	r2, #0
.L153:
	bl	neoAudioBufferWrite32
.LVL40:
.L149:
.LBE62:
	.loc 1 295 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L155:
	.align	2
.L154:
	.word	g_ym2610+96
	.word	g_ym2610
.LFE34:
	.size	ymSSGFreeChannel, .-ymSSGFreeChannel
	.align	2
	.type	ymSSGWrite, %function
ymSSGWrite:
.LFB35:
	.loc 1 298 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL41:
	stmfd	sp!, {r4, r6, r7, r8, r9, sl, fp, lr}
.LCFI16:
	.loc 1 298 0
	mov	ip, r0
	mov	fp, r1
	.loc 1 303 0
	cmp	r0, #13
	ldrls	pc, [pc, r0, asl #2]
	b	.L211
	.p2align 2
.L164:
	.word	.L158
	.word	.L158
	.word	.L158
	.word	.L158
	.word	.L158
	.word	.L158
	.word	.L159
	.word	.L160
	.word	.L161
	.word	.L161
	.word	.L161
	.word	.L162
	.word	.L162
	.word	.L163
.LVL42:
.L158:
	.loc 1 309 0
	mov	r2, r0, lsr #1
	mov	r3, #12
	mul	lr, r2, r3
	.loc 1 308 0
	ldr	r0, .L220
.LVL43:
	.loc 1 307 0
	bic	r1, ip, #1
.LVL44:
	.loc 1 308 0
	add	r3, r1, r0
	add	r3, r3, #209
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	and	r2, r2, #15
	strb	r2, [r3, #4]
	.loc 1 310 0
	add	r1, r1, r0
.LVL45:
	ldrb	r3, [r1, #212]	@ zero_extendqisi2
	add	r3, r3, r2, asl #8
	.loc 1 309 0
	add	r0, r0, #96
	.loc 1 311 0
	cmp	r3, #0
	.loc 1 310 0
	str	r3, [lr, r0]
	.loc 1 309 0
	add	r2, lr, r0
.LVL46:
	.loc 1 312 0
	addeq	r3, r3, #1
	streq	r3, [lr, r0]
	.loc 1 314 0
	mov	r0, r2
	.loc 1 451 0
	ldmfd	sp!, {r4, r6, r7, r8, r9, sl, fp, lr}
	.loc 1 314 0
	b	ymSSGCalculateFreq
.LVL47:
.L159:
	.loc 1 317 0
	ldr	r0, .L220
.LVL48:
	ldrb	r3, [r0, #218]	@ zero_extendqisi2
	and	r3, r3, #31
	.loc 1 319 0
	cmp	r3, #0
	.loc 1 318 0
	str	r3, [r0, #132]
	.loc 1 317 0
	strb	r3, [r0, #218]
	.loc 1 320 0
	addeq	r3, r3, #1
	add	r4, r0, #96
	streq	r3, [r0, #132]
	add	r6, r4, r4
.LVL49:
.L169:
	.loc 1 298 0
	ldr	r7, .L220
	.loc 1 325 0
	rsb	r3, r7, r6
	ldrb	r3, [r3, #-86]	@ zero_extendqisi2
	sub	r3, r3, #2
	cmp	r3, #1
	.loc 1 326 0
	mov	r0, r4
	add	r4, r4, #12
	.loc 1 325 0
	.loc 1 326 0
	blls	ymSSGCalculateFreq
.LVL50:
.L170:
	.loc 1 322 0
	add	r3, r7, #132
	cmp	r4, r3
	add	r6, r6, #12
	beq	.L211
	b	.L169
.LVL51:
.L160:
	ldr	r8, .L220+4
	mov	sl, #11
.LVL52:
.L172:
	.loc 1 333 0
	sub	r3, sl, #11
	mov	r7, fp, asr r3
	tst	r7, #8
	.loc 1 322 0
	sub	r9, r8, #4
	.loc 1 333 0
	bne	.L173
	.loc 1 298 0
	ldr	r3, .L220+8
	ldr	r6, .L220
	add	r3, r8, r3
	rsb	r4, r6, r3
	.loc 1 335 0
	ldrb	r0, [r4, #-91]	@ zero_extendqisi2
.LVL53:
	sub	r3, r0, #14
	cmp	r3, #1
	bls	.L175
	.loc 1 338 0
	bl	ymSSGFreeChannel
.LVL54:
.LBB79:
.LBB80:
	.loc 1 253 0
	ldrb	r3, [r6, #730]	@ zero_extendqisi2
	tst	r3, #1
	.loc 1 254 0
	orreq	r3, r3, #1
	moveq	r0, #14
	streqb	r3, [r6, #730]
	.loc 1 253 0
	beq	.L179
	.loc 1 256 0
	tst	r3, #2
	bne	.L180
	.loc 1 257 0
	orr	r3, r3, #2
	strb	r3, [r6, #730]
	mov	r0, #15
.L179:
.LBE80:
.LBE79:
	.loc 1 339 0
	and	r0, r0, #255
	strb	r0, [r4, #-91]
.LVL55:
.L175:
	.loc 1 344 0
	ldr	r1, [r8, #0]
	mov	r0, r0, asl #4
	add	r0, r0, #67108864
	orr	r1, r1, #-536870912
	add	r0, r0, #1024
	orr	r1, r1, #4128768
	mvn	r2, #0
	bl	neoAudioBufferWrite32
.LVL56:
	.loc 1 348 0
	tst	r7, #1
	.loc 1 350 0
	moveq	r3, #3
	.loc 1 353 0
	movne	r3, #2
	.loc 1 355 0
	mov	r0, r9
	.loc 1 353 0
	strb	r3, [r4, #-90]
	b	.L218
.LVL57:
.L215:
	.loc 1 361 0
	mov	r3, #4
.L217:
	strb	r3, [r4, #-90]
	.loc 1 363 0
	mvn	r3, #0
	strb	r3, [r4, #-91]
	b	.L185
.LVL58:
.L173:
	ldr	r2, .L220
	.loc 1 365 0
	tst	r7, #1
	add	r3, r2, #96
	bne	.L189
	.loc 1 298 0
	add	r3, r8, r3
	rsb	r4, r2, r3
	.loc 1 367 0
	ldrb	r0, [r4, #-91]	@ zero_extendqisi2
.LVL59:
	sub	r3, r0, #14
	cmp	r3, #1
	.loc 1 369 0
	blls	ymSSGFreeChannel
.LVL60:
.L191:
	.loc 1 373 0
	ldr	r1, [r8, #0]
	mov	r0, sl, asl #4
	add	r0, r0, #67108864
	orr	r1, r1, #-486539264
	add	r0, r0, #1024
	orr	r1, r1, #4128768
	mvn	r2, #0
	.loc 1 372 0
	strb	sl, [r4, #-91]
	.loc 1 373 0
	bl	neoAudioBufferWrite32
.LVL61:
	.loc 1 377 0
	mov	r3, #1
	strb	r3, [r4, #-90]
	.loc 1 378 0
	mov	r0, r9
.LVL62:
.L218:
	bl	ymSSGCalculateFreq
.LVL63:
	b	.L185
.LVL64:
.L189:
	.loc 1 298 0
	add	r4, r8, r3
	rsb	r4, r2, r4
	.loc 1 381 0
	ldrb	r0, [r4, #-91]	@ zero_extendqisi2
.LVL65:
	bl	ymSSGFreeChannel
.LVL66:
	.loc 1 383 0
	mvn	r3, #0
	strb	r3, [r4, #-91]
	.loc 1 382 0
	add	r3, r3, #1
	strb	r3, [r4, #-90]
.L185:
	.loc 1 383 0
	add	sl, sl, #1
	.loc 1 331 0
	cmp	sl, #14
	.loc 1 383 0
	add	r8, r8, #12
	.loc 1 331 0
	beq	.L211
	b	.L172
.LVL67:
.L161:
	.loc 1 389 0
	ldr	r4, .L220
	.loc 1 390 0
	and	r1, r0, #3
	add	r2, r4, #96
	mov	r3, #12
	mla	lr, r1, r3, r2
.LVL68:
	.loc 1 389 0
	add	r3, r0, r4
	add	r0, r3, #208
.LVL69:
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
	.loc 1 392 0
	and	r2, r3, #16
	.loc 1 389 0
	and	r3, r3, #31
	strb	r3, [r0, #4]
	.loc 1 392 0
	strb	r2, [lr, #8]
	.loc 1 393 0
	cmp	r2, #0
	.loc 1 395 0
	ldrne	r3, [r4, #144]
	.loc 1 393 0
	bne	.L219
	.loc 1 396 0
	ldrb	r0, [r0, #4]	@ zero_extendqisi2
	cmp	r0, #0
	.loc 1 401 0
	streq	r0, [lr, #4]
	.loc 1 396 0
	beq	.L195
	.loc 1 398 0
	ldr	r3, .L220+12
	add	r3, r3, r0, asl #1
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
.L219:
	str	r3, [lr, #4]
.L195:
	.loc 1 403 0
	ldrb	r0, [lr, #9]	@ zero_extendqisi2
	mov	r0, r0, asl #4
	add	r0, r0, #67108864
	add	r0, r0, #1024
	ldr	r1, [lr, #4]
	mov	r2, #127
	bl	neoAudioBufferWrite32
.LVL70:
	b	.L211
.LVL71:
.L162:
	.loc 1 408 0
	ldr	r1, .L220
	.loc 1 409 0
	ldrb	r2, [r1, #224]	@ zero_extendqisi2
	ldrb	r3, [r1, #223]	@ zero_extendqisi2
	add	r3, r3, r2, asl #8
	mov	r2, #392
	mul	r2, r3, r2
	.loc 1 408 0
	add	r0, r1, #140
	ldmda	r0, {r0, r3}
	sub	r3, r3, r0
.LVL72:
	.loc 1 411 0
	cmp	r2, #0
	.loc 1 408 0
	str	r3, [r1, #140]
	.loc 1 412 0
	moveq	r3, #196
	.loc 1 409 0
	str	r2, [r1, #136]
	.loc 1 412 0
	streq	r3, [r1, #136]
	.loc 1 414 0
	add	r2, r1, #140
	ldmda	r2, {r2, r3}
	add	r3, r3, r2
	.loc 1 415 0
	cmp	r3, #0
	.loc 1 414 0
	str	r3, [r1, #140]
	.loc 1 415 0
	movle	r3, #1
	strle	r3, [r1, #140]
	b	.L211
.LVL73:
.L163:
	.loc 1 418 0
	ldr	r2, .L220
	ldrb	r3, [r2, #225]	@ zero_extendqisi2
	.loc 1 419 0
	ands	r1, r3, #4
	.loc 1 418 0
	and	r3, r3, #15
	strb	r3, [r2, #225]
	.loc 1 422 0
	streqb	r1, [r2, #152]
	.loc 1 425 0
	ldr	r1, .L220
	.loc 1 420 0
	movne	r3, #31
	strneb	r3, [r2, #152]
	.loc 1 425 0
	ldrb	r2, [r1, #225]	@ zero_extendqisi2
	tst	r2, #8
	.loc 1 428 0
	ldreqb	r3, [r1, #152]	@ zero_extendqisi2
	.loc 1 431 0
	andne	r3, r2, #2
	.loc 1 430 0
	andne	r2, r2, #1
	strneb	r2, [r1, #154]
	.loc 1 433 0
	ldr	r2, .L220
	.loc 1 428 0
	streqb	r3, [r1, #153]
	.loc 1 427 0
	moveq	r3, #1
	streqb	r3, [r1, #154]
	.loc 1 431 0
	strneb	r3, [r1, #153]
	.loc 1 436 0
	ldrb	r3, [r2, #152]	@ zero_extendqisi2
	ldr	r1, .L220+12
	eor	r3, r3, #31
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
	.loc 1 433 0
	ldr	r3, [r2, #136]
	str	r3, [r2, #140]
	.loc 1 434 0
	mov	r3, #31
	str	r3, [r2, #148]
	.loc 1 435 0
	mov	r3, #0
	strb	r3, [r2, #155]
	.loc 1 436 0
	str	r1, [r2, #144]
	add	r3, r2, #96
	mov	r4, r2
	add	r6, r2, r3
.L207:
	.loc 1 298 0
	ldr	r2, .L220
	rsb	r1, r2, r6
	.loc 1 440 0
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L208
	ldr	ip, [r2, #144]
	ldr	r3, [r1, #4]
	cmp	r3, ip
	.loc 1 442 0
	mov	r2, #127
	.loc 1 440 0
	beq	.L208
	.loc 1 442 0
	ldrb	r0, [r1, #9]	@ zero_extendqisi2
.LVL74:
	.loc 1 441 0
	str	ip, [r1, #4]
	.loc 1 442 0
	mov	r0, r0, asl #4
	add	r0, r0, #67108864
	ldr	r1, [r4, #100]
	add	r0, r0, #1024
	bl	neoAudioBufferWrite32
.LVL75:
.L208:
	.loc 1 438 0
	ldr	r3, .L220+16
	.loc 1 442 0
	add	r4, r4, #12
	.loc 1 438 0
	cmp	r4, r3
	add	r6, r6, #12
	beq	.L211
	b	.L207
.LVL76:
.L180:
	.loc 1 339 0
	mvn	r3, #0
	.loc 1 358 0
	tst	r7, #1
	.loc 1 339 0
	strb	r3, [r4, #-91]
	.loc 1 359 0
	moveq	r3, #5
	.loc 1 358 0
	beq	.L217
	b	.L215
.LVL77:
.L211:
	.loc 1 451 0
	ldmfd	sp!, {r4, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L221:
	.align	2
.L220:
	.word	g_ym2610
	.word	g_ym2610+100
	.word	g_ym2610+96
	.word	g_ssgVolumeTable
	.word	g_ym2610+36
.LFE35:
	.size	ymSSGWrite, .-ymSSGWrite
	.align	2
	.global	neoYM2610Init
	.type	neoYM2610Init, %function
neoYM2610Init:
.LFB44:
	.loc 1 815 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI17:
	.loc 1 818 0
	ldr	r4, .L236
	mov	r2, #732
	mov	r1, #0
	mov	r0, r4
	bl	memset
	.loc 1 819 0
	mov	r3, #63
	.loc 1 820 0
	mov	r0, #39
	mov	r1, #48
	.loc 1 819 0
	strb	r3, [r4, #727]
	.loc 1 820 0
	bl	ymOPNModeWrite
	mov	r2, #0
.LVL78:
.L223:
	.loc 1 822 0
	mov	r3, #1
	mov	r3, r3, asl r2
	.loc 1 821 0
	add	r2, r2, #1
	cmp	r2, #6
	.loc 1 822 0
	strb	r3, [r4, #10]
	.loc 1 821 0
	add	r4, r4, #12
	bne	.L223
	.loc 1 824 0
	ldr	r3, .L236
	.loc 1 828 0
	mov	r0, #0
	.loc 1 827 0
	mvn	r1, #0
	.loc 1 824 0
	mvn	r2, #127
.LVL79:
	strb	r2, [r3, #92]
	.loc 1 827 0
	strb	r1, [r3, #129]
	.loc 1 828 0
	strb	r0, [r3, #130]
	.loc 1 827 0
	strb	r1, [r3, #105]
	.loc 1 828 0
	strb	r0, [r3, #106]
	.loc 1 827 0
	strb	r1, [r3, #117]
	.loc 1 828 0
	strb	r0, [r3, #118]
	mov	r4, r0
.LVL80:
.L225:
	.loc 1 831 0
	mov	r0, r4
	mov	r1, #0
	.loc 1 830 0
	add	r4, r4, #1
	.loc 1 831 0
	bl	ymSSGWrite
	.loc 1 830 0
	cmp	r4, #14
	bne	.L225
	ldr	r2, .L236
.L227:
	.loc 1 834 0
	mvn	r3, #0
	str	r3, [r2, #184]
	.loc 1 833 0
	ldr	r3, .L236+4
	.loc 1 834 0
	add	r2, r2, #4
	.loc 1 833 0
	cmp	r2, r3
	bne	.L227
	.loc 1 836 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L237:
	.align	2
.L236:
	.word	g_ym2610
	.word	g_ym2610+28
.LFE44:
	.size	neoYM2610Init, .-neoYM2610Init
	.align	2
	.global	ymGetChannelControl
	.type	ymGetChannelControl, %function
ymGetChannelControl:
.LFB28:
	.loc 1 185 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL81:
	.loc 1 186 0
	ldr	r3, .L247
	.loc 1 185 0
	stmfd	sp!, {r4, r6, r7, r8, sl, lr}
.LCFI18:
.LBB81:
	.loc 1 194 0
	mov	sl, r0, asl #2
.LBE81:
	.loc 1 186 0
	mov	r0, r0, asl #1
.LVL82:
	add	r3, r0, r3
	ldrh	r2, [r3, #-157]
	.loc 1 187 0
	ldrh	r3, [r3, #-171]
	mov	r3, r3, asl #16
	mov	r6, r3, asr #16
.LVL83:
	.loc 1 188 0
	mov	r2, r2, asl #16
	.loc 1 189 0
	subs	r3, r6, r2, asr #16
.LVL84:
.LBB82:
	.loc 1 194 0
	ldr	r1, .L247
.LBE82:
	.loc 1 189 0
	addmi	r3, r3, #32
	.loc 1 193 0
	cmp	r3, #30
.LBB83:
	.loc 1 194 0
	add	r1, sl, r1
	.loc 1 195 0
	add	r7, r6, #1
.LVL85:
.LBE83:
	.loc 1 193 0
	mov	r8, #0
.LVL86:
	bgt	.L243
.LBB84:
	.loc 1 194 0
	mov	r3, #12
.LVL87:
	mul	r6, r3, r6
.LVL88:
	ldr	r4, [r1, #-199]
	.loc 1 200 0
	bl	neoAudioUpdate
	.loc 1 202 0
	ldr	r3, .L247
	ldrh	r2, [r3, #-119]
	.loc 1 194 0
	add	r8, r4, r6
	.loc 1 201 0
	mov	r3, #0
	str	r3, [r4, r6]
	.loc 1 202 0
	strh	r2, [r8, #8]	@ movhi
	.loc 1 203 0
	bl	neoAudioGetTimestamp
	.loc 1 205 0
	ldr	r3, .L247+4
	.loc 1 196 0
	cmp	r7, #31
	movgt	r7, #0
	.loc 1 205 0
	add	r3, sl, r3
	str	r7, [r3, #184]
	.loc 1 203 0
	strh	r0, [r8, #10]	@ movhi
.LVL89:
.L243:
.LBE84:
	.loc 1 210 0
	mov	r0, r8
	ldmfd	sp!, {r4, r6, r7, r8, sl, lr}
	bx	lr
.L248:
	.align	2
.L247:
	.word	41940223
	.word	g_ym2610
.LFE28:
	.size	ymGetChannelControl, .-ymGetChannelControl
	.align	2
	.global	neoYM2610Write
	.type	neoYM2610Write, %function
neoYM2610Write:
.LFB43:
	.loc 1 767 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL90:
	.loc 1 770 0
	and	r0, r0, #3
.LVL91:
	.loc 1 767 0
	stmfd	sp!, {r4, r6, r7, r8, sl, lr}
.LCFI19:
	.loc 1 767 0
	mov	r7, r1
	.loc 1 770 0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L309
	.p2align 2
.L255:
	.word	.L251
	.word	.L252
	.word	.L253
	.word	.L254
.LVL92:
.L251:
	.loc 1 772 0
	ldr	r2, .L318
	mov	r3, #0
	.loc 1 773 0
	strb	r1, [r2, #725]
	b	.L316
.L252:
	.loc 1 776 0
	ldr	r1, .L318
	ldrb	r3, [r1, #724]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L309
	.loc 1 778 0
	ldrb	r0, [r1, #725]	@ zero_extendqisi2
.LVL93:
	.loc 1 781 0
	and	r2, r0, #240
	.loc 1 779 0
	add	r3, r0, r1
	.loc 1 781 0
	cmp	r2, #16
	.loc 1 779 0
	strb	r7, [r3, #212]
	.loc 1 781 0
	beq	.L258
	cmp	r2, #32
	beq	.L259
	cmp	r2, #0
	bne	.L309
	.loc 1 783 0
	mov	r1, r7
	.loc 1 812 0
	ldmfd	sp!, {r4, r6, r7, r8, sl, lr}
	.loc 1 783 0
	b	ymSSGWrite
.LVL94:
.L258:
.LBB113:
.LBB114:
	.loc 1 553 0
	sub	r3, r0, #16
	cmp	r3, #12
	ldrls	pc, [pc, r3, asl #2]
	b	.L309
	.p2align 2
.L267:
	.word	.L260
	.word	.L261
	.word	.L262
	.word	.L262
	.word	.L263
	.word	.L263
	.word	.L309
	.word	.L309
	.word	.L309
	.word	.L264
	.word	.L264
	.word	.L265
	.word	.L266
.L260:
.LBE114:
	.loc 1 556 0
	tst	r7, #1
	ldr	r6, .L318
.LBB115:
.LBB116:
	.loc 1 559 0
	movne	r3, #0
	strneb	r3, [r6, #89]
.LBE116:
.LBE115:
	.loc 1 556 0
	bne	.L270
.LBB117:
.LBB118:
	.loc 1 559 0
	bic	r3, r7, #14
	.loc 1 561 0
	tst	r7, #128
	.loc 1 559 0
	strb	r3, [r6, #89]
	.loc 1 561 0
	beq	.L270
	ldr	r4, .L318+4
	ldr	r2, [r6, #72]
	ldr	r3, [r4, #-247]
	cmp	r2, r3
	bcs	.L309
.LBB119:
	.loc 1 563 0
	bl	ymUpdateArriveEnd
.LVL95:
.LBE119:
.LBE118:
.LBE117:
	.loc 1 564 0
	mov	r0, #6
	bl	ymGetChannelControl
.LBB120:
.LBB121:
.LBB122:
	.loc 1 565 0
	cmp	r0, #0
.LVL96:
	beq	.L309
.LBB123:
	.loc 1 566 0
	ldr	r2, [r6, #72]
.LVL97:
	.loc 1 567 0
	tst	r7, #16
	.loc 1 572 0
	mov	r3, #2
	.loc 1 569 0
	orrne	r2, r2, #-2147483648
	.loc 1 571 0
	str	r2, [r0, #4]
	.loc 1 572 0
	str	r3, [r0, #0]
.LBB124:
.LBB125:
	.loc 1 215 0
	ldrh	r3, [r6, #208]
	strh	r3, [r4, #-159]	@ movhi
	.loc 1 216 0
	mvn	r3, #0
	str	r3, [r6, #208]
	b	.L309
.LVL98:
.L270:
.LBE125:
.LBE124:
.LBE123:
.LBE122:
.LBB126:
	.loc 1 577 0
	bl	ymUpdateArriveEnd
.LVL99:
.LBE126:
.LBE121:
.LBE120:
	.loc 1 578 0
	mov	r0, #6
	bl	ymGetChannelControl
.LBB127:
.LBB128:
.LBB129:
	.loc 1 579 0
	cmp	r0, #0
.LVL100:
	beq	.L309
	.loc 1 580 0
	mov	r3, #1
	str	r3, [r0, #0]
.LBB130:
.LBB131:
	.loc 1 215 0
	ldr	r1, .L318
	ldr	r3, .L318+4
	ldrh	r2, [r1, #208]
	strh	r2, [r3, #-159]	@ movhi
	.loc 1 216 0
	mvn	r3, #0
	str	r3, [r1, #208]
	b	.L309
.LVL101:
.L261:
.LBE131:
.LBE130:
.LBE129:
	.loc 1 587 0
	ldr	r3, .L318
	mov	r2, r7, lsr #6
	.loc 1 588 0
	strb	r7, [r3, #90]
	.loc 1 587 0
	strb	r2, [r3, #91]
	b	.L317
.L262:
	.loc 1 594 0
	ldr	r3, .L318
	ldrb	r1, [r3, #231]	@ zero_extendqisi2
	ldrb	r2, [r3, #230]	@ zero_extendqisi2
	orr	r2, r2, r1, asl #8
	mov	r2, r2, asl #8
	str	r2, [r3, #72]
	b	.L309
.L263:
	.loc 1 601 0
	ldr	r4, .L318
	ldrb	r2, [r4, #233]	@ zero_extendqisi2
	ldrb	r3, [r4, #232]	@ zero_extendqisi2
	orr	r3, r3, r2, asl #8
	mov	r3, r3, asl #8
	add	r3, r3, #255
.LBE128:
.LBE127:
	.loc 1 602 0
	mov	r0, #6
.LVL102:
.LBB132:
.LBB133:
	.loc 1 601 0
	str	r3, [r4, #76]
.LBE133:
.LBE132:
	.loc 1 602 0
	bl	ymGetChannelControl
.LBB134:
.LBB135:
	.loc 1 603 0
	cmp	r0, #0
.LVL103:
	beq	.L309
	.loc 1 604 0
	ldr	r2, [r4, #76]
	.loc 1 605 0
	mov	r3, #3
	str	r3, [r0, #0]
	.loc 1 604 0
	str	r2, [r0, #4]
.LBB136:
.LBB137:
	.loc 1 215 0
	ldr	r3, .L318+4
	ldrh	r2, [r4, #208]
	strh	r2, [r3, #-159]	@ movhi
	.loc 1 216 0
	mvn	r3, #0
	str	r3, [r4, #208]
	b	.L309
.LVL104:
.L264:
.LBE137:
.LBE136:
	.loc 1 619 0
	ldr	ip, .L318
	ldrb	r3, [ip, #238]	@ zero_extendqisi2
	ldrb	r2, [ip, #237]	@ zero_extendqisi2
	ldr	r1, [ip, #80]
	orr	r4, r2, r3, asl #8
	cmp	r4, r1
	beq	.L309
.LBB138:
.LBB139:
	.loc 1 504 0
	ldr	r3, [ip, #84]
	cmp	r4, r3
	.loc 1 505 0
	rsbhi	r3, r3, r4
.LVL105:
.LVL106:
	.loc 1 507 0
	rsbls	r3, r4, r3
.LVL107:
	.loc 1 510 0
	cmp	r3, #128
.LBE139:
.LBE138:
	.loc 1 620 0
	str	r4, [ip, #80]
.LBB140:
.LBB141:
	.loc 1 510 0
	bls	.L309
.LBE141:
	.loc 1 513 0
	mov	r0, #6
.LVL108:
	bl	ymGetChannelControl
.LVL109:
.LBB142:
.LBB143:
	.loc 1 514 0
	subs	r6, r0, #0
.LVL110:
	beq	.L309
	.loc 1 511 0
	ldr	r3, .L318+8
	mul	r0, r4, r3
	mov	r0, r0, lsr #16
.LVL111:
	.loc 1 515 0
	cmp	r0, r3
	movcs	r0, r3
.LVL112:
	mov	r1, #18432
	mov	r0, r0, asl #16
	bl	__aeabi_uidiv
	.loc 1 516 0
	mov	r3, #4
	str	r3, [r6, #0]
	.loc 1 515 0
	str	r0, [r6, #4]
	.loc 1 517 0
	ldr	r2, .L318
.LBB144:
.LBB145:
	.loc 1 215 0
	ldr	r3, .L318+4
	ldrh	r1, [r2, #208]
.LBE145:
.LBE144:
	.loc 1 517 0
	ldr	r0, [r2, #80]
.LBB146:
.LBB147:
	.loc 1 215 0
	strh	r1, [r3, #-159]	@ movhi
	.loc 1 216 0
	mvn	r3, #0
	str	r3, [r2, #208]
.LBE147:
.LBE146:
	.loc 1 517 0
	str	r0, [r2, #84]
	b	.L309
.LVL113:
.L265:
.LBE143:
.LBE142:
.LBE140:
	.loc 1 624 0
	ldr	r3, .L318
	strb	r7, [r3, #88]
.L317:
.LBE135:
.LBE134:
.LBE113:
	.loc 1 812 0
	ldmfd	sp!, {r4, r6, r7, r8, sl, lr}
.LBB148:
.LBB149:
.LBB150:
	.loc 1 625 0
	b	ymADPCMBCalculateVolume
.LVL114:
.L266:
	.loc 1 631 0
	bl	ymUpdateArriveEnd
.LVL115:
	ldr	r0, .L318
	mov	r2, #0
.LVL116:
.L284:
	.loc 1 633 0
	mvn	r1, r7
	mov	r3, #1
	and	r3, r1, r3, asl r2
	.loc 1 632 0
	add	r2, r2, #1
	cmp	r2, #6
	.loc 1 633 0
	strb	r3, [r0, #10]
	.loc 1 632 0
	add	r0, r0, #12
	bne	.L284
	.loc 1 635 0
	ldr	r3, .L318
	.loc 1 636 0
	ldrb	r2, [r3, #728]	@ zero_extendqisi2
.LVL117:
	and	r2, r1, r2
	.loc 1 635 0
	and	r1, r1, #128
	.loc 1 636 0
	strb	r2, [r3, #728]
	.loc 1 635 0
	strb	r1, [r3, #92]
	b	.L309
.LVL118:
.L259:
.LBE150:
.LBE149:
.LBE148:
	.loc 1 789 0
	mov	r1, r7
	.loc 1 812 0
	ldmfd	sp!, {r4, r6, r7, r8, sl, lr}
	.loc 1 789 0
	b	ymOPNModeWrite
.LVL119:
.L253:
	.loc 1 796 0
	ldr	r2, .L318
	.loc 1 797 0
	strb	r1, [r2, #725]
	.loc 1 796 0
	mov	r3, #1
.LVL120:
.L316:
	strb	r3, [r2, #724]
	b	.L309
.LVL121:
.L254:
	.loc 1 800 0
	ldr	r8, .L318
	ldrb	r3, [r8, #724]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L309
	.loc 1 802 0
	ldrb	r4, [r8, #725]	@ zero_extendqisi2
.LVL122:
	.loc 1 803 0
	orr	r3, r4, #256
	add	r3, r3, r8
	.loc 1 805 0
	cmp	r4, #47
	.loc 1 803 0
	strb	r1, [r3, #212]
	.loc 1 805 0
	bhi	.L309
.LVL123:
.LBB151:
.LBB152:
	.loc 1 673 0
	cmp	r4, #0
	beq	.L289
	cmp	r4, #1
	bne	.L315
	b	.L290
.L289:
	.loc 1 675 0
	bl	ymUpdateArriveEnd
.LVL124:
	.loc 1 676 0
	tst	r7, #128
	mov	r6, r8
	bne	.L291
	ldr	sl, .L318+12
.LVL125:
.L293:
.LVL126:
	.loc 1 679 0
	mov	r3, r7, asr r4
	tst	r3, #1
	beq	.L294
	ldr	r3, .L318+4
	ldr	r2, [r3, #-247]
	ldr	r3, [r8, #0]
	cmp	r3, r2
.LBE152:
	.loc 1 681 0
	mov	r0, r4
.LVL127:
.LBB153:
	.loc 1 679 0
	bcs	.L294
.LVL128:
.LBE153:
	.loc 1 681 0
	bl	ymGetChannelControl
.LVL129:
.LBB154:
.LBB155:
	.loc 1 682 0
	cmp	r0, #0
.LVL130:
	beq	.L294
	.loc 1 683 0
	ldr	r2, [r8, #0]
	.loc 1 684 0
	mov	r3, #2
	str	r3, [r0, #0]
	.loc 1 683 0
	str	r2, [r0, #4]
.LBB156:
.LBB157:
	.loc 1 215 0
	ldrh	r2, [r6, #184]
	.loc 1 216 0
	mvn	r3, #0
	str	r3, [r6, #184]
	.loc 1 215 0
	strh	r2, [sl, #0]	@ movhi
.LVL131:
.L294:
.LBE157:
.LBE156:
.LBE155:
	.loc 1 678 0
	add	r4, r4, #1
	cmp	r4, #6
	add	sl, sl, #2
	add	r8, r8, #12
	add	r6, r6, #4
	beq	.L309
	b	.L293
.LVL132:
.L291:
	ldr	r8, .L318+12
.LVL133:
.L298:
.LVL134:
.LBE154:
	.loc 1 692 0
	mov	r3, r7, asr r4
	tst	r3, #1
	.loc 1 694 0
	mov	r0, r4
.LVL135:
.LBB158:
	.loc 1 691 0
	add	r4, r4, #1
.LBE158:
	.loc 1 692 0
	beq	.L299
	.loc 1 694 0
	bl	ymGetChannelControl
.LBB159:
.LBB160:
	.loc 1 695 0
	cmp	r0, #0
.LVL136:
	beq	.L299
	.loc 1 696 0
	mov	r3, #1
	str	r3, [r0, #0]
.LBB161:
.LBB162:
	.loc 1 215 0
	ldrh	r2, [r6, #184]
	.loc 1 216 0
	mvn	r3, #0
	str	r3, [r6, #184]
	.loc 1 215 0
	strh	r2, [r8, #0]	@ movhi
.LVL137:
.L299:
.LBE162:
.LBE161:
.LBE160:
	.loc 1 691 0
	cmp	r4, #6
	add	r8, r8, #2
	add	r6, r6, #4
	beq	.L309
	b	.L298
.LVL138:
.L290:
	.loc 1 704 0
	and	r3, r1, #63
	eor	r3, r3, #63
	strb	r3, [r8, #727]
	mov	r4, #0
.LVL139:
.LVL140:
.L302:
	.loc 1 706 0
	mov	r0, r4
	.loc 1 705 0
	add	r4, r4, #1
	.loc 1 706 0
	bl	ymADPCMACalculateVolume
	.loc 1 705 0
	cmp	r4, #6
	beq	.L309
	b	.L302
.LVL141:
.L315:
	.loc 1 670 0
	and	r6, r4, #7
.LVL142:
	.loc 1 710 0
	cmp	r6, #5
	bhi	.L309
	.loc 1 714 0
	and	r0, r4, #56
	cmp	r0, #24
	beq	.L305
	bhi	.L307
	cmp	r0, #8
	beq	.L304
	cmp	r0, #16
	bne	.L309
	b	.L305
.L307:
	cmp	r0, #32
	beq	.L306
	cmp	r0, #40
	bne	.L309
	b	.L306
.L304:
.LBB163:
	.loc 1 717 0
	mov	r3, #12
	mla	r1, r6, r3, r8
.LVL143:
	and	r3, r7, #31
	eor	r3, r3, #31
	.loc 1 718 0
	mov	r2, r7, lsr #6
	.loc 1 719 0
	mov	r0, r6
	.loc 1 718 0
	strb	r2, [r1, #9]
	.loc 1 717 0
	strb	r3, [r1, #8]
.LBE163:
.LBE159:
.LBE151:
	.loc 1 812 0
	ldmfd	sp!, {r4, r6, r7, r8, sl, lr}
.LBB164:
.LBB165:
.LBB166:
	.loc 1 719 0
	b	ymADPCMACalculateVolume
.LVL144:
.L305:
	.loc 1 724 0
	mov	r3, #12
	mul	r0, r6, r3
	ldr	r1, .L318
.LVL145:
	add	r2, r6, r1
	ldrb	r3, [r2, #484]	@ zero_extendqisi2
	ldrb	r2, [r2, #492]	@ zero_extendqisi2
	add	r3, r3, r2, asl #8
	mov	r3, r3, asl #8
	str	r3, [r0, r1]
	b	.L309
.LVL146:
.L306:
	.loc 1 731 0
	ldr	r7, .L318
	mov	r3, #12
	mla	r4, r6, r3, r7
.LVL147:
	add	r2, r6, r7
	ldrb	r3, [r2, #500]	@ zero_extendqisi2
	ldrb	r2, [r2, #508]	@ zero_extendqisi2
	add	r3, r3, r2, asl #8
	mov	r3, r3, asl #8
	add	r3, r3, #255
.LBE166:
.LBE165:
	.loc 1 735 0
	mov	r0, r6
.LBB167:
.LBB168:
	.loc 1 731 0
	str	r3, [r4, #4]
.LBE168:
.LBE167:
	.loc 1 735 0
	bl	ymGetChannelControl
.LVL148:
.LBB169:
.LBB170:
	.loc 1 736 0
	cmp	r0, #0
.LVL149:
	beq	.L309
	.loc 1 737 0
	ldr	r2, [r4, #4]
	.loc 1 738 0
	mov	r3, #3
	.loc 1 737 0
	str	r2, [r0, #4]
	.loc 1 738 0
	str	r3, [r0, #0]
.LBB171:
.LBB172:
	.loc 1 215 0
	add	r0, r7, r6, asl #2
.LVL150:
	ldr	r3, .L318+4
	ldrh	r1, [r0, #184]
	mov	r2, r6, asl #1
	add	r3, r2, r3
	strh	r1, [r3, #-171]	@ movhi
	.loc 1 216 0
	mvn	r3, #0
	str	r3, [r0, #184]
.LVL151:
.L309:
.LBE172:
.LBE171:
.LBE170:
.LBE169:
.LBE164:
	.loc 1 812 0
	ldmfd	sp!, {r4, r6, r7, r8, sl, lr}
	bx	lr
.L319:
	.align	2
.L318:
	.word	g_ym2610
	.word	41940223
	.word	55500
	.word	41940052
.LFE43:
	.size	neoYM2610Write, .-neoYM2610Write
	.section	.rodata
	.type	g_ssgVolumeTable, %object
	.size	g_ssgVolumeTable, 32
g_ssgVolumeTable:
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	6
	.byte	8
	.byte	9
	.byte	11
	.byte	13
	.byte	15
	.byte	19
	.byte	22
	.byte	26
	.byte	31
	.byte	37
	.byte	45
	.byte	53
	.byte	63
	.byte	75
	.byte	89
	.byte	106
	.byte	127
	.align	2
	.type	panTable.2893, %object
	.size	panTable.2893, 16
panTable.2893:
	.word	0
	.word	0
	.word	127
	.word	64
	.align	2
	.type	panTable.2990, %object
	.size	panTable.2990, 16
panTable.2990:
	.word	0
	.word	127
	.word	0
	.word	64
	.bss
	.align	2
g_ym2610:
	.space	732
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI0-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.byte	0x84
	.uleb128 0x2
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI1-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.byte	0x84
	.uleb128 0x2
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI2-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.byte	0x84
	.uleb128 0x2
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI3-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.byte	0x84
	.uleb128 0x2
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI4-.LFB22
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI6-.LFB40
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x1
	.byte	0x87
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x84
	.uleb128 0x4
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI7-.LFB38
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI9-.LFB45
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x1
	.byte	0x87
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x84
	.uleb128 0x4
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI10-.LFB23
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI12-.LFB27
	.byte	0xe
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x1
	.byte	0x86
	.uleb128 0x2
	.byte	0x84
	.uleb128 0x3
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI14-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.byte	0x84
	.uleb128 0x2
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI15-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.byte	0x84
	.uleb128 0x2
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI16-.LFB35
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
	.byte	0x87
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x7
	.byte	0x84
	.uleb128 0x8
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI17-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.byte	0x84
	.uleb128 0x2
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI18-.LFB28
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x1
	.byte	0x8a
	.uleb128 0x2
	.byte	0x88
	.uleb128 0x3
	.byte	0x87
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x84
	.uleb128 0x6
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI19-.LFB43
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x1
	.byte	0x8a
	.uleb128 0x2
	.byte	0x88
	.uleb128 0x3
	.byte	0x87
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x84
	.uleb128 0x6
	.align	2
.LEFDE32:
	.file 2 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoYM2610.h"
	.file 5 "C:/Users/GRX/NeoDS-GBMacro/arm7/../common/source/NeoIPC.h"
	.file 6 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoSystem7.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoCpuZ80.h"
	.file 8 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/DrZ80.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB24-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LFB25-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB26-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB42-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB22-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB38-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB45-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB23-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB31-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL32-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LFB34-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
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
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LFB35-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL77-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL77-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL89-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL89-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL151-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL151-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL151-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL151-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL151-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL151-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL151-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL151-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL151-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL151-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL151-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL151-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL151-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0xfef
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF153
	.byte	0x1
	.4byte	.LASF154
	.4byte	.LASF155
	.uleb128 0x2
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x8
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x56
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x1
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2e
	.4byte	0x48
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x3
	.byte	0x3a
	.4byte	0x6c
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x3
	.byte	0x53
	.4byte	0x2c
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x3
	.byte	0x54
	.4byte	0x4f
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x8
	.byte	0x4
	.uleb128 0x7
	.ascii	"u8\000"
	.byte	0x2
	.byte	0x5f
	.4byte	0x81
	.uleb128 0x7
	.ascii	"u16\000"
	.byte	0x2
	.byte	0x60
	.4byte	0x8c
	.uleb128 0x7
	.ascii	"u32\000"
	.byte	0x2
	.byte	0x61
	.4byte	0xa2
	.uleb128 0x7
	.ascii	"s32\000"
	.byte	0x2
	.byte	0x66
	.4byte	0x97
	.uleb128 0x8
	.4byte	0xfb
	.byte	0x1
	.byte	0x2
	.byte	0x81
	.uleb128 0x9
	.4byte	.LASF16
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF17
	.sleb128 1
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x2
	.byte	0x81
	.4byte	0xe6
	.uleb128 0xa
	.4byte	0x130
	.byte	0x4
	.byte	0x5
	.byte	0x47
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0x48
	.4byte	0xd0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x5
	.byte	0x49
	.4byte	0xd0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0x4a
	.4byte	0xd0
	.byte	0x0
	.uleb128 0xc
	.4byte	0x16f
	.4byte	.LASF26
	.byte	0xc
	.byte	0x5
	.byte	0x45
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x5
	.byte	0x46
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	0x106
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x5
	.byte	0x4c
	.4byte	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x5
	.byte	0x4d
	.4byte	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x5
	.byte	0x4e
	.4byte	0x130
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x5
	.byte	0x4
	.4byte	0x16f
	.uleb128 0xf
	.4byte	0x196
	.4byte	0xd0
	.uleb128 0x10
	.4byte	0x41
	.byte	0x3
	.byte	0x0
	.uleb128 0xc
	.4byte	0x355
	.4byte	.LASF27
	.byte	0x70
	.byte	0x8
	.byte	0x13
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x8
	.byte	0x14
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x8
	.byte	0x15
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x8
	.byte	0x16
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x8
	.byte	0x17
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x8
	.byte	0x18
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x8
	.byte	0x19
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x8
	.byte	0x1a
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x8
	.byte	0x1b
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x8
	.byte	0x1c
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x8
	.byte	0x1d
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x8
	.byte	0x1e
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x8
	.byte	0x1f
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x8
	.byte	0x20
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x8
	.byte	0x21
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x8
	.byte	0x22
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x8
	.byte	0x23
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x8
	.byte	0x24
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x8
	.byte	0x27
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x8
	.byte	0x28
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x8
	.byte	0x29
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x8
	.byte	0x2a
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x8
	.byte	0x2b
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x8
	.byte	0x2c
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x8
	.byte	0x2d
	.4byte	0x366
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x8
	.byte	0x2e
	.4byte	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x8
	.byte	0x2f
	.4byte	0x393
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x8
	.byte	0x30
	.4byte	0x3aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x8
	.byte	0x31
	.4byte	0x393
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x8
	.byte	0x32
	.4byte	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x8
	.byte	0x33
	.4byte	0x3d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x8
	.byte	0x34
	.4byte	0x3d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x11
	.4byte	0x366
	.byte	0x1
	.uleb128 0x12
	.4byte	0x48
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x355
	.uleb128 0x11
	.4byte	0x37d
	.byte	0x1
	.uleb128 0x12
	.4byte	0x6c
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x36c
	.uleb128 0x13
	.4byte	0x393
	.byte	0x1
	.4byte	0x48
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x383
	.uleb128 0x11
	.4byte	0x3aa
	.byte	0x1
	.uleb128 0x12
	.4byte	0x6c
	.uleb128 0x12
	.4byte	0x48
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x399
	.uleb128 0x13
	.4byte	0x3c0
	.byte	0x1
	.4byte	0x6c
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3b0
	.uleb128 0x13
	.4byte	0x3d6
	.byte	0x1
	.4byte	0x3a
	.uleb128 0x12
	.4byte	0x6c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3c6
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x7
	.byte	0xc
	.4byte	0x196
	.uleb128 0x14
	.4byte	0x420
	.4byte	.LASF60
	.2byte	0x8f0
	.byte	0x6
	.byte	0x1f
	.uleb128 0x15
	.ascii	"z80\000"
	.byte	0x6
	.byte	0x20
	.4byte	0x3dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x6
	.byte	0x26
	.4byte	0x420
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x6
	.byte	0x27
	.4byte	0x430
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.byte	0x0
	.uleb128 0xf
	.4byte	0x430
	.4byte	0x17a
	.uleb128 0x10
	.4byte	0x41
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.4byte	0x441
	.4byte	0xbb
	.uleb128 0x16
	.4byte	0x41
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x6
	.byte	0x28
	.4byte	0x3e7
	.uleb128 0xc
	.4byte	0x49f
	.4byte	.LASF64
	.byte	0xc
	.byte	0x4
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x4
	.byte	0x5
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.ascii	"end\000"
	.byte	0x4
	.byte	0x6
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x4
	.byte	0x7
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.ascii	"pan\000"
	.byte	0x4
	.byte	0x8
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x4
	.byte	0x9
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0x4
	.byte	0xa
	.4byte	0x44c
	.uleb128 0xc
	.4byte	0x535
	.4byte	.LASF69
	.byte	0x18
	.byte	0x4
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x4
	.byte	0xd
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.ascii	"end\000"
	.byte	0x4
	.byte	0xe
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x4
	.byte	0xf
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x4
	.byte	0x10
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x4
	.byte	0x11
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x4
	.byte	0x12
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x4
	.byte	0x13
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x15
	.ascii	"pan\000"
	.byte	0x4
	.byte	0x14
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x4
	.byte	0x15
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0x4
	.byte	0x16
	.4byte	0x4aa
	.uleb128 0xc
	.4byte	0x593
	.4byte	.LASF75
	.byte	0xc
	.byte	0x4
	.byte	0x21
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x4
	.byte	0x22
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x4
	.byte	0x23
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x4
	.byte	0x24
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x4
	.byte	0x25
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x4
	.byte	0x26
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF81
	.byte	0x4
	.byte	0x27
	.4byte	0x540
	.uleb128 0xc
	.4byte	0x5b9
	.4byte	.LASF82
	.byte	0x4
	.byte	0x4
	.byte	0x29
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x4
	.byte	0x2a
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF83
	.byte	0x4
	.byte	0x2e
	.4byte	0x59e
	.uleb128 0xc
	.4byte	0x641
	.4byte	.LASF84
	.byte	0x14
	.byte	0x4
	.byte	0x30
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x4
	.byte	0x31
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0x4
	.byte	0x32
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x4
	.byte	0x33
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x4
	.byte	0x34
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0x4
	.byte	0x35
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0x4
	.byte	0x36
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xd
	.4byte	.LASF89
	.byte	0x4
	.byte	0x37
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xd
	.4byte	.LASF90
	.byte	0x4
	.byte	0x38
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x4
	.byte	0x39
	.4byte	0x5c4
	.uleb128 0x14
	.4byte	0x792
	.4byte	.LASF92
	.2byte	0x2dc
	.byte	0x4
	.byte	0x3b
	.uleb128 0xd
	.4byte	.LASF93
	.byte	0x4
	.byte	0x3d
	.4byte	0x792
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF94
	.byte	0x4
	.byte	0x3e
	.4byte	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.ascii	"ssg\000"
	.byte	0x4
	.byte	0x3f
	.4byte	0x7a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.4byte	.LASF95
	.byte	0x4
	.byte	0x41
	.4byte	0x5b9
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.4byte	.LASF96
	.byte	0x4
	.byte	0x42
	.4byte	0x641
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.4byte	.LASF97
	.byte	0x4
	.byte	0x44
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0x4
	.byte	0x45
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xd
	.4byte	.LASF99
	.byte	0x4
	.byte	0x46
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xd
	.4byte	.LASF100
	.byte	0x4
	.byte	0x47
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xd
	.4byte	.LASF101
	.byte	0x4
	.byte	0x48
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xd
	.4byte	.LASF102
	.byte	0x4
	.byte	0x49
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xd
	.4byte	.LASF103
	.byte	0x4
	.byte	0x4a
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xd
	.4byte	.LASF104
	.byte	0x4
	.byte	0x4b
	.4byte	0x7b2
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x15
	.ascii	"reg\000"
	.byte	0x4
	.byte	0x4d
	.4byte	0x7c2
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xd
	.4byte	.LASF105
	.byte	0x4
	.byte	0x4f
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d4
	.uleb128 0xd
	.4byte	.LASF106
	.byte	0x4
	.byte	0x50
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d5
	.uleb128 0xd
	.4byte	.LASF107
	.byte	0x4
	.byte	0x51
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d6
	.uleb128 0xd
	.4byte	.LASF108
	.byte	0x4
	.byte	0x53
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d7
	.uleb128 0xd
	.4byte	.LASF109
	.byte	0x4
	.byte	0x54
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d8
	.uleb128 0x15
	.ascii	"irq\000"
	.byte	0x4
	.byte	0x55
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d9
	.uleb128 0xd
	.4byte	.LASF110
	.byte	0x4
	.byte	0x56
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x2da
	.byte	0x0
	.uleb128 0xf
	.4byte	0x7a2
	.4byte	0x49f
	.uleb128 0x10
	.4byte	0x41
	.byte	0x5
	.byte	0x0
	.uleb128 0xf
	.4byte	0x7b2
	.4byte	0x593
	.uleb128 0x10
	.4byte	0x41
	.byte	0x2
	.byte	0x0
	.uleb128 0xf
	.4byte	0x7c2
	.4byte	0xdb
	.uleb128 0x10
	.4byte	0x41
	.byte	0x6
	.byte	0x0
	.uleb128 0xf
	.4byte	0x7d3
	.4byte	0xbb
	.uleb128 0x16
	.4byte	0x41
	.2byte	0x1ff
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF111
	.byte	0x4
	.byte	0x57
	.4byte	0x64c
	.uleb128 0x17
	.4byte	0x7fb
	.4byte	.LASF112
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.4byte	0xd0
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x1
	.byte	0xdb
	.4byte	0x7fb
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x801
	.uleb128 0x19
	.4byte	0x593
	.uleb128 0x17
	.4byte	0x823
	.4byte	.LASF113
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.4byte	0xfb
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x1
	.byte	0xf6
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x83c
	.byte	0x1
	.4byte	.LASF119
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.ascii	"ch\000"
	.byte	0x1
	.byte	0xd4
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x1c
	.4byte	.LASF116
	.byte	0x1
	.byte	0x60
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LASF117
	.byte	0x1
	.byte	0x68
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST1
	.uleb128 0x1d
	.4byte	0x885
	.4byte	.LASF118
	.byte	0x1
	.byte	0x70
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST2
	.uleb128 0x1e
	.ascii	"i\000"
	.byte	0x1
	.byte	0x71
	.4byte	0xd0
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x8a2
	.4byte	0x823
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5d
	.uleb128 0x20
	.4byte	0x831
	.4byte	.LLST4
	.byte	0x0
	.uleb128 0x21
	.4byte	0x8db
	.byte	0x1
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x2ec
	.byte	0x1
	.4byte	0xbb
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST5
	.uleb128 0x22
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x2eb
	.4byte	0xc5
	.4byte	.LLST6
	.uleb128 0x23
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x2ed
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x24
	.4byte	0x903
	.4byte	.LASF122
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LLST7
	.uleb128 0x25
	.4byte	.LASF123
	.byte	0x1
	.byte	0x4c
	.4byte	0xd0
	.4byte	.LLST8
	.byte	0x0
	.uleb128 0x26
	.4byte	0x984
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x282
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST9
	.uleb128 0x22
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x281
	.4byte	0xdb
	.4byte	.LLST10
	.uleb128 0x27
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x286
	.4byte	0xd0
	.4byte	.LLST11
	.uleb128 0x28
	.ascii	"pan\000"
	.byte	0x1
	.2byte	0x287
	.4byte	0xd0
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x291
	.4byte	0xd0
	.uleb128 0x23
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x292
	.4byte	0xd0
	.uleb128 0x27
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x296
	.4byte	0xd0
	.4byte	.LLST12
	.uleb128 0x29
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x284
	.4byte	0xfa2
	.byte	0x5
	.byte	0x3
	.4byte	panTable.2990
	.byte	0x0
	.uleb128 0x2a
	.4byte	0x9c7
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x20c
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST13
	.uleb128 0x23
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x210
	.4byte	0xd0
	.uleb128 0x2b
	.ascii	"pan\000"
	.byte	0x1
	.2byte	0x211
	.4byte	0xd0
	.uleb128 0x29
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x20e
	.4byte	0xf9d
	.byte	0x5
	.byte	0x3
	.4byte	panTable.2893
	.byte	0x0
	.uleb128 0x2c
	.4byte	0x9fa
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x1c6
	.byte	0x1
	.uleb128 0x23
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x9fa
	.uleb128 0x2b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1c9
	.4byte	0xdb
	.uleb128 0x2d
	.uleb128 0x23
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x1e6
	.4byte	0xa00
	.uleb128 0x2e
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x641
	.uleb128 0x5
	.byte	0x4
	.4byte	0x593
	.uleb128 0x2f
	.4byte	0xa54
	.byte	0x1
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x347
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST14
	.uleb128 0x30
	.4byte	0x9c7
	.4byte	.LBB52
	.4byte	.LBE52
	.byte	0x1
	.2byte	0x35a
	.uleb128 0x31
	.4byte	.LBB53
	.4byte	.LBE53
	.uleb128 0x32
	.4byte	0x9d4
	.uleb128 0x32
	.4byte	0x9e0
	.uleb128 0x31
	.4byte	.LBB54
	.4byte	.LBE54
	.uleb128 0x32
	.4byte	0x9eb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.4byte	0xa7c
	.4byte	.LASF133
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST15
	.uleb128 0x25
	.4byte	.LASF123
	.byte	0x1
	.byte	0x56
	.4byte	0xd0
	.4byte	.LLST16
	.byte	0x0
	.uleb128 0x24
	.4byte	0xaaf
	.4byte	.LASF134
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST17
	.uleb128 0x33
	.ascii	"r\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0xc5
	.4byte	.LLST18
	.uleb128 0x33
	.ascii	"v\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0xbb
	.4byte	.LLST19
	.byte	0x0
	.uleb128 0x24
	.4byte	0xae6
	.4byte	.LASF135
	.byte	0x1
	.byte	0xe1
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LLST20
	.uleb128 0x25
	.4byte	.LASF114
	.byte	0x1
	.byte	0xe0
	.4byte	0x7fb
	.4byte	.LLST21
	.uleb128 0x34
	.4byte	.LASF136
	.byte	0x1
	.byte	0xe2
	.4byte	0xdb
	.4byte	.LLST22
	.byte	0x0
	.uleb128 0x26
	.4byte	0xb50
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x108
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LLST23
	.uleb128 0x35
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x107
	.4byte	0xd0
	.4byte	.LLST24
	.uleb128 0x36
	.4byte	0xb29
	.4byte	0x806
	.4byte	.LBB55
	.4byte	.LBE55
	.byte	0x1
	.2byte	0x109
	.uleb128 0x37
	.4byte	0x817
	.byte	0x0
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x2b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x10a
	.4byte	0xdb
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x27
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x10d
	.4byte	0xa00
	.4byte	.LLST25
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF138
	.byte	0x1
	.byte	0xfc
	.4byte	0xd0
	.byte	0x1
	.uleb128 0x26
	.4byte	0xbc7
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x12a
	.byte	0x1
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LLST26
	.uleb128 0x22
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x129
	.4byte	0xd0
	.4byte	.LLST27
	.uleb128 0x22
	.ascii	"v\000"
	.byte	0x1
	.2byte	0x129
	.4byte	0xbb
	.4byte	.LLST28
	.uleb128 0x27
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x12b
	.4byte	0xa00
	.4byte	.LLST29
	.uleb128 0x2b
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x12c
	.4byte	0xdb
	.uleb128 0x2b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x12d
	.4byte	0xdb
	.uleb128 0x3a
	.4byte	0xb50
	.4byte	.LBB79
	.4byte	.LBE79
	.byte	0x1
	.2byte	0x153
	.byte	0x0
	.uleb128 0x2f
	.4byte	0xbef
	.byte	0x1
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x32f
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST30
	.uleb128 0x3b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x330
	.4byte	0xd0
	.4byte	.LLST31
	.byte	0x0
	.uleb128 0x3c
	.4byte	0xc57
	.byte	0x1
	.4byte	.LASF141
	.byte	0x1
	.byte	0xb9
	.byte	0x1
	.4byte	0x180
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST32
	.uleb128 0x33
	.ascii	"ch\000"
	.byte	0x1
	.byte	0xb8
	.4byte	0xd0
	.4byte	.LLST33
	.uleb128 0x3d
	.4byte	.LASF142
	.byte	0x1
	.byte	0xba
	.4byte	0xc57
	.uleb128 0x3e
	.ascii	"pos\000"
	.byte	0x1
	.byte	0xbb
	.4byte	0xdb
	.4byte	.LLST34
	.uleb128 0x34
	.4byte	.LASF143
	.byte	0x1
	.byte	0xbc
	.4byte	0xdb
	.4byte	.LLST35
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x3f
	.4byte	.LASF144
	.byte	0x1
	.byte	0xc2
	.4byte	0x180
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.4byte	0xdb
	.uleb128 0x40
	.4byte	0xcd8
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x222
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x221
	.4byte	0xd0
	.uleb128 0x41
	.ascii	"v\000"
	.byte	0x1
	.2byte	0x221
	.4byte	0xbb
	.uleb128 0x2b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x223
	.4byte	0xd0
	.uleb128 0x2b
	.ascii	"v16\000"
	.byte	0x1
	.2byte	0x224
	.4byte	0xc5
	.uleb128 0x2d
	.uleb128 0x23
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x25a
	.4byte	0x180
	.uleb128 0x42
	.4byte	0xcc2
	.uleb128 0x23
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x234
	.4byte	0x180
	.uleb128 0x2d
	.uleb128 0x23
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x236
	.4byte	0xd0
	.uleb128 0x2e
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
	.4byte	0xcd5
	.uleb128 0x23
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x242
	.4byte	0x180
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x2e
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.4byte	0xd0d
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x1f1
	.byte	0x1
	.uleb128 0x23
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x1f6
	.4byte	0xd0
	.uleb128 0x2d
	.uleb128 0x23
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x1ff
	.4byte	0xd0
	.uleb128 0x23
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x201
	.4byte	0x180
	.uleb128 0x2e
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.4byte	0xd7a
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x29d
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x29c
	.4byte	0xd0
	.uleb128 0x41
	.ascii	"v\000"
	.byte	0x1
	.2byte	0x29c
	.4byte	0xbb
	.uleb128 0x2b
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x29e
	.4byte	0xd7a
	.uleb128 0x2b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x29f
	.4byte	0xd0
	.uleb128 0x42
	.4byte	0xd57
	.uleb128 0x23
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x2a9
	.4byte	0x180
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x42
	.4byte	0xd6a
	.uleb128 0x23
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x2b6
	.4byte	0x180
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x23
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x2df
	.4byte	0x180
	.uleb128 0x2e
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.4byte	0xd0
	.uleb128 0x43
	.4byte	0xf9d
	.byte	0x1
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x2ff
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST36
	.uleb128 0x22
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x2fe
	.4byte	0xc5
	.4byte	.LLST37
	.uleb128 0x22
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x2fe
	.4byte	0xbb
	.4byte	.LLST38
	.uleb128 0x27
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x300
	.4byte	0xd0
	.4byte	.LLST39
	.uleb128 0x44
	.4byte	0xee0
	.4byte	0xc5c
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.2byte	0x312
	.uleb128 0x37
	.4byte	0xc74
	.uleb128 0x37
	.4byte	0xc6a
	.uleb128 0x45
	.4byte	0xdf7
	.4byte	.Ldebug_ranges0+0x80
	.uleb128 0x46
	.4byte	0xc7e
	.4byte	.LLST40
	.uleb128 0x32
	.4byte	0xc88
	.byte	0x0
	.uleb128 0x45
	.4byte	0xe0a
	.4byte	.Ldebug_ranges0+0xc8
	.uleb128 0x46
	.4byte	0xc95
	.4byte	.LLST41
	.byte	0x0
	.uleb128 0x45
	.4byte	0xe1d
	.4byte	.Ldebug_ranges0+0x108
	.uleb128 0x46
	.4byte	0xca6
	.4byte	.LLST42
	.byte	0x0
	.uleb128 0x47
	.4byte	0xe4a
	.4byte	.LBB123
	.4byte	.LBE123
	.uleb128 0x46
	.4byte	0xcb3
	.4byte	.LLST43
	.uleb128 0x30
	.4byte	0x823
	.4byte	.LBB124
	.4byte	.LBE124
	.byte	0x1
	.2byte	0x23d
	.uleb128 0x37
	.4byte	0x898
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
	.4byte	0xe5d
	.4byte	.Ldebug_ranges0+0x120
	.uleb128 0x46
	.4byte	0xcc7
	.4byte	.LLST44
	.byte	0x0
	.uleb128 0x36
	.4byte	0xe77
	.4byte	0x823
	.4byte	.LBB130
	.4byte	.LBE130
	.byte	0x1
	.2byte	0x245
	.uleb128 0x37
	.4byte	0x898
	.byte	0x0
	.uleb128 0x36
	.4byte	0xe91
	.4byte	0x823
	.4byte	.LBB136
	.4byte	.LBE136
	.byte	0x1
	.2byte	0x25e
	.uleb128 0x37
	.4byte	0x898
	.byte	0x0
	.uleb128 0x44
	.4byte	0xeb1
	.4byte	0xcd8
	.4byte	.Ldebug_ranges0+0x138
	.byte	0x1
	.2byte	0x26d
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x150
	.uleb128 0x46
	.4byte	0xce5
	.4byte	.LLST45
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.4byte	.LBB143
	.4byte	.LBE143
	.uleb128 0x46
	.4byte	0xcf2
	.4byte	.LLST46
	.uleb128 0x46
	.4byte	0xcfe
	.4byte	.LLST47
	.uleb128 0x48
	.4byte	0x823
	.4byte	.Ldebug_ranges0+0x170
	.byte	0x1
	.2byte	0x206
	.uleb128 0x37
	.4byte	0x898
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
	.4byte	0xf86
	.4byte	0xd0d
	.4byte	.Ldebug_ranges0+0x188
	.byte	0x1
	.2byte	0x326
	.uleb128 0x37
	.4byte	0xd25
	.uleb128 0x37
	.4byte	0xd1b
	.uleb128 0x45
	.4byte	0xf14
	.4byte	.Ldebug_ranges0+0x1a0
	.uleb128 0x49
	.4byte	0xd2f
	.byte	0x1
	.byte	0x56
	.uleb128 0x46
	.4byte	0xd3a
	.4byte	.LLST48
	.byte	0x0
	.uleb128 0x47
	.4byte	0xf45
	.4byte	.LBB155
	.4byte	.LBE155
	.uleb128 0x46
	.4byte	0xd49
	.4byte	.LLST49
	.uleb128 0x30
	.4byte	0x823
	.4byte	.LBB156
	.4byte	.LBE156
	.byte	0x1
	.2byte	0x2ad
	.uleb128 0x20
	.4byte	0x898
	.4byte	.LLST50
	.byte	0x0
	.byte	0x0
	.uleb128 0x47
	.4byte	0xf76
	.4byte	.LBB160
	.4byte	.LBE160
	.uleb128 0x46
	.4byte	0xd5c
	.4byte	.LLST51
	.uleb128 0x30
	.4byte	0x823
	.4byte	.LBB161
	.4byte	.LBE161
	.byte	0x1
	.2byte	0x2b9
	.uleb128 0x20
	.4byte	0x898
	.4byte	.LLST52
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.4byte	.Ldebug_ranges0+0x1e8
	.uleb128 0x46
	.4byte	0xd6b
	.4byte	.LLST53
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.4byte	0x823
	.4byte	.LBB171
	.4byte	.LBE171
	.byte	0x1
	.2byte	0x2e3
	.uleb128 0x37
	.4byte	0x898
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.4byte	0x186
	.uleb128 0x19
	.4byte	0x186
	.uleb128 0x3f
	.4byte	.LASF150
	.byte	0x1
	.byte	0x37
	.4byte	0x7d3
	.byte	0x5
	.byte	0x3
	.4byte	g_ym2610
	.uleb128 0xf
	.4byte	0xfc8
	.4byte	0xbb
	.uleb128 0x10
	.4byte	0x41
	.byte	0x1f
	.byte	0x0
	.uleb128 0x3f
	.4byte	.LASF151
	.byte	0x1
	.byte	0x47
	.4byte	0xfd9
	.byte	0x5
	.byte	0x3
	.4byte	g_ssgVolumeTable
	.uleb128 0x19
	.4byte	0xfb8
	.uleb128 0x4a
	.4byte	.LASF152
	.byte	0x6
	.byte	0x39
	.4byte	0xfec
	.byte	0x1
	.byte	0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x4
	.4byte	0x441
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
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x36
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
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x46
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x47
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
	.uleb128 0x48
	.uleb128 0x1d
	.byte	0x1
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
	.uleb128 0x49
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x98
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xff3
	.4byte	0x885
	.ascii	"ymFinishChannelControl\000"
	.4byte	0x8a2
	.ascii	"neoYM2610Read\000"
	.4byte	0xa06
	.ascii	"neoYM2610Process\000"
	.4byte	0xbc7
	.ascii	"neoYM2610Init\000"
	.4byte	0xbef
	.ascii	"ymGetChannelControl\000"
	.4byte	0xd7f
	.ascii	"neoYM2610Write\000"
	.4byte	0xfde
	.ascii	"g_neo7\000"
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
	.4byte	.LBB57-.Ltext0
	.4byte	.LBE57-.Ltext0
	.4byte	.LBB62-.Ltext0
	.4byte	.LBE62-.Ltext0
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	.LBB61-.Ltext0
	.4byte	.LBE61-.Ltext0
	.4byte	.LBB59-.Ltext0
	.4byte	.LBE59-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB81-.Ltext0
	.4byte	.LBE81-.Ltext0
	.4byte	.LBB84-.Ltext0
	.4byte	.LBE84-.Ltext0
	.4byte	.LBB83-.Ltext0
	.4byte	.LBE83-.Ltext0
	.4byte	.LBB82-.Ltext0
	.4byte	.LBE82-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB113-.Ltext0
	.4byte	.LBE113-.Ltext0
	.4byte	.LBB148-.Ltext0
	.4byte	.LBE148-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB114-.Ltext0
	.4byte	.LBE114-.Ltext0
	.4byte	.LBB149-.Ltext0
	.4byte	.LBE149-.Ltext0
	.4byte	.LBB134-.Ltext0
	.4byte	.LBE134-.Ltext0
	.4byte	.LBB132-.Ltext0
	.4byte	.LBE132-.Ltext0
	.4byte	.LBB127-.Ltext0
	.4byte	.LBE127-.Ltext0
	.4byte	.LBB120-.Ltext0
	.4byte	.LBE120-.Ltext0
	.4byte	.LBB117-.Ltext0
	.4byte	.LBE117-.Ltext0
	.4byte	.LBB115-.Ltext0
	.4byte	.LBE115-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB116-.Ltext0
	.4byte	.LBE116-.Ltext0
	.4byte	.LBB150-.Ltext0
	.4byte	.LBE150-.Ltext0
	.4byte	.LBB135-.Ltext0
	.4byte	.LBE135-.Ltext0
	.4byte	.LBB133-.Ltext0
	.4byte	.LBE133-.Ltext0
	.4byte	.LBB128-.Ltext0
	.4byte	.LBE128-.Ltext0
	.4byte	.LBB121-.Ltext0
	.4byte	.LBE121-.Ltext0
	.4byte	.LBB118-.Ltext0
	.4byte	.LBE118-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB119-.Ltext0
	.4byte	.LBE119-.Ltext0
	.4byte	.LBB122-.Ltext0
	.4byte	.LBE122-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB126-.Ltext0
	.4byte	.LBE126-.Ltext0
	.4byte	.LBB129-.Ltext0
	.4byte	.LBE129-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB138-.Ltext0
	.4byte	.LBE138-.Ltext0
	.4byte	.LBB140-.Ltext0
	.4byte	.LBE140-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB139-.Ltext0
	.4byte	.LBE139-.Ltext0
	.4byte	.LBB142-.Ltext0
	.4byte	.LBE142-.Ltext0
	.4byte	.LBB141-.Ltext0
	.4byte	.LBE141-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB144-.Ltext0
	.4byte	.LBE144-.Ltext0
	.4byte	.LBB146-.Ltext0
	.4byte	.LBE146-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB151-.Ltext0
	.4byte	.LBE151-.Ltext0
	.4byte	.LBB164-.Ltext0
	.4byte	.LBE164-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB152-.Ltext0
	.4byte	.LBE152-.Ltext0
	.4byte	.LBB169-.Ltext0
	.4byte	.LBE169-.Ltext0
	.4byte	.LBB167-.Ltext0
	.4byte	.LBE167-.Ltext0
	.4byte	.LBB165-.Ltext0
	.4byte	.LBE165-.Ltext0
	.4byte	.LBB159-.Ltext0
	.4byte	.LBE159-.Ltext0
	.4byte	.LBB158-.Ltext0
	.4byte	.LBE158-.Ltext0
	.4byte	.LBB154-.Ltext0
	.4byte	.LBE154-.Ltext0
	.4byte	.LBB153-.Ltext0
	.4byte	.LBE153-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB163-.Ltext0
	.4byte	.LBE163-.Ltext0
	.4byte	.LBB170-.Ltext0
	.4byte	.LBE170-.Ltext0
	.4byte	.LBB168-.Ltext0
	.4byte	.LBE168-.Ltext0
	.4byte	.LBB166-.Ltext0
	.4byte	.LBE166-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF60:
	.ascii	"_TNeoContext7\000"
.LASF23:
	.ascii	"audioFrame\000"
.LASF142:
	.ascii	"pos9\000"
.LASF109:
	.ascii	"adpcmArriveEnd\000"
.LASF135:
	.ascii	"ymSSGCalculateFreq\000"
.LASF25:
	.ascii	"TNeoAdpcmControl\000"
.LASF49:
	.ascii	"z80irqvector\000"
.LASF124:
	.ascii	"ymADPCMACalculateVolume\000"
.LASF150:
	.ascii	"g_ym2610\000"
.LASF67:
	.ascii	"flagMask\000"
.LASF62:
	.ascii	"z80Ram\000"
.LASF45:
	.ascii	"Z80_IRQ\000"
.LASF86:
	.ascii	"index\000"
.LASF99:
	.ascii	"timerAValue\000"
.LASF140:
	.ascii	"neoYM2610Init\000"
.LASF66:
	.ascii	"level\000"
.LASF122:
	.ascii	"ymInterruptSet\000"
.LASF107:
	.ascii	"mode\000"
.LASF96:
	.ascii	"ssgEnvelope\000"
.LASF154:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoYM2610.c\000"
.LASF151:
	.ascii	"g_ssgVolumeTable\000"
.LASF24:
	.ascii	"timeStamp\000"
.LASF103:
	.ascii	"irqStatus\000"
.LASF120:
	.ascii	"neoYM2610Read\000"
.LASF136:
	.ascii	"freq\000"
.LASF57:
	.ascii	"z80_rebaseSP\000"
.LASF59:
	.ascii	"TDrZ80Context\000"
.LASF84:
	.ascii	"_TSSGEnvelope\000"
.LASF97:
	.ascii	"timerA\000"
.LASF13:
	.ascii	"uint32_t\000"
.LASF123:
	.ascii	"flag\000"
.LASF47:
	.ascii	"Z80IM\000"
.LASF51:
	.ascii	"z80_write8\000"
.LASF77:
	.ascii	"volume\000"
.LASF14:
	.ascii	"float\000"
.LASF126:
	.ascii	"shift\000"
.LASF85:
	.ascii	"count\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF53:
	.ascii	"z80_in\000"
.LASF145:
	.ascii	"ymADPCMBWrite\000"
.LASF40:
	.ascii	"Z80A2\000"
.LASF98:
	.ascii	"timerB\000"
.LASF117:
	.ascii	"ymTimerBSet\000"
.LASF79:
	.ascii	"hwChannel\000"
.LASF121:
	.ascii	"addr\000"
.LASF127:
	.ascii	"hwVolume\000"
.LASF55:
	.ascii	"z80_read8\000"
.LASF108:
	.ascii	"adpcmaTotalLevel\000"
.LASF116:
	.ascii	"ymTimerASet\000"
.LASF72:
	.ascii	"portstate\000"
.LASF68:
	.ascii	"TADPCMAChannel\000"
.LASF138:
	.ascii	"ymSSGAllocNoiseChannel\000"
.LASF31:
	.ascii	"Z80BC\000"
.LASF54:
	.ascii	"z80_out\000"
.LASF119:
	.ascii	"ymFinishChannelControl\000"
.LASF134:
	.ascii	"ymOPNModeWrite\000"
.LASF71:
	.ascii	"lastDelta\000"
.LASF64:
	.ascii	"_TADPCMAChannel\000"
.LASF130:
	.ascii	"ymSSGEnvelopeProcess\000"
.LASF149:
	.ascii	"neoYM2610Write\000"
.LASF20:
	.ascii	"endAddr\000"
.LASF91:
	.ascii	"TSSGEnvelope\000"
.LASF17:
	.ascii	"true\000"
.LASF43:
	.ascii	"Z80DE2\000"
.LASF26:
	.ascii	"_TNeoAdpcaControl\000"
.LASF56:
	.ascii	"z80_read16\000"
.LASF139:
	.ascii	"ymSSGWrite\000"
.LASF87:
	.ascii	"attack\000"
.LASF65:
	.ascii	"start\000"
.LASF6:
	.ascii	"char\000"
.LASF83:
	.ascii	"TSSGNoise\000"
.LASF114:
	.ascii	"pChannel\000"
.LASF78:
	.ascii	"envelopeEnable\000"
.LASF48:
	.ascii	"spare\000"
.LASF10:
	.ascii	"uint8_t\000"
.LASF34:
	.ascii	"Z80SP\000"
.LASF111:
	.ascii	"TYM2610Context\000"
.LASF27:
	.ascii	"DrZ80\000"
.LASF104:
	.ascii	"queuePos\000"
.LASF110:
	.ascii	"noiseChannelUsed\000"
.LASF125:
	.ascii	"multiply\000"
.LASF1:
	.ascii	"long long int\000"
.LASF141:
	.ascii	"ymGetChannelControl\000"
.LASF106:
	.ascii	"address\000"
.LASF18:
	.ascii	"bool\000"
.LASF37:
	.ascii	"Z80IX\000"
.LASF38:
	.ascii	"Z80IY\000"
.LASF132:
	.ascii	"neoYM2610Process\000"
.LASF93:
	.ascii	"adpcma\000"
.LASF112:
	.ascii	"ymSSGVolume\000"
.LASF28:
	.ascii	"Z80PC\000"
.LASF41:
	.ascii	"Z80F2\000"
.LASF155:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm7\\\\buil"
	.ascii	"d\000"
.LASF73:
	.ascii	"control\000"
.LASF35:
	.ascii	"Z80PC_BASE\000"
.LASF128:
	.ascii	"panTable\000"
.LASF36:
	.ascii	"Z80SP_BASE\000"
.LASF11:
	.ascii	"uint16_t\000"
.LASF152:
	.ascii	"g_neo7\000"
.LASF19:
	.ascii	"startAddr\000"
.LASF5:
	.ascii	"short int\000"
.LASF0:
	.ascii	"long int\000"
.LASF133:
	.ascii	"ymInterruptReset\000"
.LASF100:
	.ascii	"timerBValue\000"
.LASF118:
	.ascii	"ymUpdateArriveEnd\000"
.LASF129:
	.ascii	"ymADPCMBCalculateVolume\000"
.LASF113:
	.ascii	"ymSSGIsNoiseChannel\000"
.LASF148:
	.ascii	"ymADPCMAWrite\000"
.LASF90:
	.ascii	"holding\000"
.LASF89:
	.ascii	"hold\000"
.LASF101:
	.ascii	"timerATicks\000"
.LASF94:
	.ascii	"adpcmb\000"
.LASF33:
	.ascii	"Z80HL\000"
.LASF75:
	.ascii	"_TSSGChannel\000"
.LASF2:
	.ascii	"unsigned int\000"
.LASF50:
	.ascii	"z80_irq_callback\000"
.LASF82:
	.ascii	"_TSSGNoise\000"
.LASF92:
	.ascii	"_TYM2610Context\000"
.LASF144:
	.ascii	"pControl\000"
.LASF44:
	.ascii	"Z80HL2\000"
.LASF4:
	.ascii	"long unsigned int\000"
.LASF46:
	.ascii	"Z80IF\000"
.LASF61:
	.ascii	"z80MemTable\000"
.LASF102:
	.ascii	"timerBTicks\000"
.LASF42:
	.ascii	"Z80BC2\000"
.LASF80:
	.ascii	"state\000"
.LASF153:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF32:
	.ascii	"Z80DE\000"
.LASF16:
	.ascii	"false\000"
.LASF88:
	.ascii	"alternate\000"
.LASF147:
	.ascii	"changed\000"
.LASF69:
	.ascii	"_TADPCMBChannel\000"
.LASF143:
	.ascii	"pendingCount\000"
.LASF21:
	.ascii	"frequency\000"
.LASF137:
	.ascii	"ymSSGFreeChannel\000"
.LASF131:
	.ascii	"pEnv\000"
.LASF22:
	.ascii	"command\000"
.LASF52:
	.ascii	"z80_write16\000"
.LASF63:
	.ascii	"TNeoContext7\000"
.LASF9:
	.ascii	"signed char\000"
.LASF76:
	.ascii	"period\000"
.LASF70:
	.ascii	"delta\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF30:
	.ascii	"Z80F\000"
.LASF29:
	.ascii	"Z80A\000"
.LASF39:
	.ascii	"Z80I\000"
.LASF15:
	.ascii	"double\000"
.LASF146:
	.ascii	"ymADPCMBCalculateFreq\000"
.LASF95:
	.ascii	"noise\000"
.LASF12:
	.ascii	"int32_t\000"
.LASF115:
	.ascii	"hwch\000"
.LASF58:
	.ascii	"z80_rebasePC\000"
.LASF81:
	.ascii	"TSSGChannel\000"
.LASF105:
	.ascii	"addrPort\000"
.LASF74:
	.ascii	"TADPCMBChannel\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
