	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.file	"NeoYM2610.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	ymFinishChannelControl
	.type	ymFinishChannelControl, %function
ymFinishChannelControl:
.LFB34:
	.file 1 "C:/Users/GRX/NeoDS/arm7/source/NeoYM2610.c"
	.loc 1 213 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 215 0
	add	r1, r0, #46
	ldr	r2, .L3
	mov	ip, r1, asl #2
	ldr	r3, .L3+4
	ldrh	ip, [ip, r2]
	mov	r0, r0, asl #1
.LVL1:
	add	r3, r0, r3
	.loc 1 216 0
	mvn	r0, #0
	str	r0, [r2, r1, asl #2]
	.loc 1 215 0
	strh	ip, [r3, #4]	@ movhi
	.loc 1 217 0
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.word	41940048
.LFE34:
	.size	ymFinishChannelControl, .-ymFinishChannelControl
	.align	2
	.global	neoYM2610Read
	.type	neoYM2610Read, %function
neoYM2610Read:
.LFB47:
	.loc 1 748 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2:
	.loc 1 751 0
	and	r3, r0, #3
	.loc 1 749 0
	ldr	r2, .L18
	.loc 1 751 0
	cmp	r3, #1
	.loc 1 748 0
	str	r4, [sp, #-4]!
.LCFI0:
	.loc 1 749 0
	ldrb	r0, [r2, #725]	@ zero_extendqisi2
.LVL3:
	.loc 1 751 0
	beq	.L8
	cmp	r3, #2
	beq	.L9
	cmp	r3, #0
	.loc 1 754 0
	ldreq	r0, [r2, #180]
	.loc 1 751 0
	movne	r0, #0
	.loc 1 754 0
	andeq	r0, r0, #3
	b	.L10
.L8:
	.loc 1 756 0
	cmp	r0, #15
	addls	r0, r2, r0
	ldrlsb	r0, [r0, #212]	@ zero_extendqisi2
	bls	.L10
	cmp	r0, #255
	movne	r0, #0
	moveq	r0, #1
	b	.L10
.L9:
	mov	r3, #0
.LVL4:
	ldrb	r1, [r2, #728]	@ zero_extendqisi2
.LBB85:
.LBB86:
	.loc 1 117 0
	mov	r0, r3
.L13:
	.loc 1 115 0
	ldr	ip, .L18+4
	add	ip, r3, ip
	ldrb	r4, [ip, #-117]	@ zero_extendqisi2
	cmp	r4, #0
	.loc 1 116 0
	ldrneb	r4, [r2, #10]	@ zero_extendqisi2
	.loc 1 114 0
	add	r3, r3, #1
	.loc 1 117 0
	strneb	r0, [ip, #-117]
	.loc 1 116 0
	orrne	r1, r1, r4
	.loc 1 114 0
	cmp	r3, #6
	add	r2, r2, #12
	bne	.L13
	.loc 1 120 0
	ldr	r2, .L18+4
	ldrb	r0, [r2, #-111]	@ zero_extendqisi2
	.loc 1 114 0
	ldr	r3, .L18
.LVL5:
	.loc 1 120 0
	cmp	r0, #0
	.loc 1 121 0
	ldrneb	r0, [r3, #92]	@ zero_extendqisi2
	.loc 1 114 0
	strb	r1, [r3, #728]
	.loc 1 121 0
	orrne	r1, r1, r0
	strneb	r1, [r3, #728]
	.loc 1 122 0
	movne	r3, #0
	strneb	r3, [r2, #-111]
.LBE86:
.LBE85:
	.loc 1 761 0
	ldr	r3, .L18
	ldrb	r0, [r3, #728]	@ zero_extendqisi2
.L10:
	.loc 1 764 0
	ldmfd	sp!, {r4}
	bx	lr
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
	.word	41940223
.LFE47:
	.size	neoYM2610Read, .-neoYM2610Read
	.global	__aeabi_idiv
	.align	2
	.global	neoYM2610Process
	.type	neoYM2610Process, %function
neoYM2610Process:
.LFB50:
	.loc 1 839 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 840 0
	ldr	r3, .L36
	.loc 1 839 0
	stmfd	sp!, {r4, r6, r7, lr}
.LCFI1:
	.loc 1 840 0
	ldr	r2, [r3, #172]
	cmp	r2, #0
	ble	.L21
	.loc 1 841 0
	sub	r2, r2, #1
	.loc 1 842 0
	cmp	r2, #0
	.loc 1 841 0
	str	r2, [r3, #172]
	.loc 1 842 0
	bne	.L21
	.loc 1 844 0
	ldrb	r2, [r3, #726]	@ zero_extendqisi2
	tst	r2, #4
	beq	.L22
.LBB87:
.LBB88:
	.loc 1 79 0
	ldr	r2, [r3, #180]
	.loc 1 80 0
	ldrb	r1, [r3, #729]	@ zero_extendqisi2
	.loc 1 79 0
	orr	r2, r2, #1
	.loc 1 80 0
	cmp	r1, #0
	.loc 1 79 0
	str	r2, [r3, #180]
	.loc 1 80 0
	.loc 1 81 0
	moveq	r2, #1
	streqb	r2, [r3, #729]
	.loc 1 82 0
	bleq	neoZ80Irq
.L22:
.LBE88:
.LBE87:
.LBB89:
.LBB90:
	.loc 1 97 0
	ldr	r4, .L36
	ldr	r3, [r4, #156]
	.loc 1 99 0
	ldr	r0, .L36+4
	.loc 1 97 0
	rsb	r3, r3, #1024
	.loc 1 99 0
	mul	r0, r3, r0
	ldr	r1, .L36+8
	.loc 1 97 0
	str	r3, [r4, #164]
	.loc 1 99 0
	bl	__aeabi_idiv
	.loc 1 100 0
	cmp	r0, #0
	moveq	r3, #1
	.loc 1 98 0
	str	r0, [r4, #172]
	.loc 1 100 0
	streq	r3, [r4, #172]
.L21:
.LBE90:
.LBE89:
	.loc 1 849 0
	ldr	r3, .L36
	ldr	r2, [r3, #176]
	cmp	r2, #0
	ble	.L23
	.loc 1 850 0
	sub	r2, r2, #1
	.loc 1 851 0
	cmp	r2, #0
	.loc 1 850 0
	str	r2, [r3, #176]
	.loc 1 851 0
	bne	.L23
	.loc 1 853 0
	ldrb	r2, [r3, #726]	@ zero_extendqisi2
	tst	r2, #8
	beq	.L24
.LBB91:
.LBB92:
	.loc 1 79 0
	ldr	r2, [r3, #180]
	.loc 1 80 0
	ldrb	r1, [r3, #729]	@ zero_extendqisi2
	.loc 1 79 0
	orr	r2, r2, #2
	.loc 1 80 0
	cmp	r1, #0
	.loc 1 79 0
	str	r2, [r3, #180]
	.loc 1 80 0
	.loc 1 81 0
	moveq	r2, #1
	streqb	r2, [r3, #729]
	.loc 1 82 0
	bleq	neoZ80Irq
.L24:
.LBE92:
.LBE91:
.LBB93:
.LBB94:
	.loc 1 105 0
	ldr	r4, .L36
	ldr	r3, [r4, #160]
	.loc 1 107 0
	ldr	r0, .L36+4
	.loc 1 105 0
	rsb	r3, r3, #256
	mov	r3, r3, asl #4
	.loc 1 107 0
	mul	r0, r3, r0
	ldr	r1, .L36+8
	.loc 1 105 0
	str	r3, [r4, #168]
	.loc 1 107 0
	bl	__aeabi_idiv
	.loc 1 108 0
	cmp	r0, #0
	moveq	r3, #1
	.loc 1 106 0
	str	r0, [r4, #176]
	.loc 1 108 0
	streq	r3, [r4, #176]
.L23:
.LBE94:
.LBE93:
.LBB95:
.LBB96:
	.loc 1 459 0
	ldr	r3, .L36
	ldrb	r2, [r3, #155]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L33
	.loc 1 462 0
	ldr	r2, [r3, #140]
	sub	r2, r2, #32768
	.loc 1 463 0
	cmp	r2, #0
	.loc 1 462 0
	str	r2, [r3, #140]
	.loc 1 463 0
	bgt	.L33
	.loc 1 466 0
	ldr	r0, [r3, #148]
	ldr	r1, [r3, #136]
	sub	r0, r0, #1
	add	r3, r2, r1
.L26:
	mov	ip, r3
	add	r3, r3, r1
	.loc 1 467 0
	rsb	r2, r1, r3
	cmp	r2, #0
	.loc 1 466 0
	mov	r2, r0
	sub	r0, r0, #1
	.loc 1 467 0
	ble	.L26
	ldr	r3, .L36
	.loc 1 470 0
	cmp	r2, #0
	.loc 1 467 0
	str	ip, [r3, #140]
	str	r2, [r3, #148]
	.loc 1 470 0
	bge	.L27
	.loc 1 471 0
	ldrb	r1, [r3, #154]	@ zero_extendqisi2
	cmp	r1, #0
	ldrb	r1, [r3, #153]	@ zero_extendqisi2
	beq	.L28
	.loc 1 472 0
	cmp	r1, #0
	ldrneb	r2, [r3, #152]	@ zero_extendqisi2
	eorne	r2, r2, #31
	strneb	r2, [r3, #152]
	.loc 1 473 0
	ldr	r3, .L36
	.loc 1 474 0
	mov	r2, #0
	str	r2, [r3, #148]
	.loc 1 473 0
	add	r2, r2, #1
	strb	r2, [r3, #155]
	b	.L27
.L28:
	.loc 1 478 0
	cmp	r1, #0
	beq	.L30
	tst	r2, #32
	ldrneb	r2, [r3, #152]	@ zero_extendqisi2
	eorne	r2, r2, #31
	strneb	r2, [r3, #152]
.L30:
	.loc 1 479 0
	ldr	r3, .L36
	ldr	r2, [r3, #148]
	and	r2, r2, #31
	str	r2, [r3, #148]
.L27:
	.loc 1 483 0
	ldr	r4, .L36
	ldrb	r2, [r4, #152]	@ zero_extendqisi2
	ldr	r3, [r4, #148]
	eor	r3, r2, r3
	ldr	r2, .L36+12
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	str	r3, [r4, #144]
	.loc 1 838 0
	add	r7, r4, #36
.LBB97:
	.loc 1 488 0
	mov	r6, r4
.L32:
	.loc 1 487 0
	ldrb	r3, [r4, #104]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L31
	.loc 1 489 0
	ldrb	r0, [r4, #105]	@ zero_extendqisi2
	.loc 1 488 0
	ldr	r3, [r6, #144]
	.loc 1 489 0
	mov	r0, r0, asl #4
	add	r0, r0, #67108864
	add	r0, r0, #1024
	mov	r1, r3
	mov	r2, #127
	.loc 1 488 0
	str	r3, [r4, #100]
	.loc 1 489 0
	bl	neoAudioBufferWrite32
.L31:
	add	r4, r4, #12
.LBE97:
	.loc 1 485 0
	cmp	r4, r7
	bne	.L32
.L33:
.LBE96:
.LBE95:
	.loc 1 859 0
	ldmfd	sp!, {r4, r6, r7, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	.LANCHOR0
	.word	12000
	.word	55555
	.word	.LANCHOR1
.LFE50:
	.size	neoYM2610Process, .-neoYM2610Process
	.align	2
	.type	ymADPCMBCalculateVolume, %function
ymADPCMBCalculateVolume:
.LFB43:
	.loc 1 524 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 528 0
	ldr	r3, .L43
	.loc 1 524 0
	stmfd	sp!, {r4, lr}
.LCFI2:
	.loc 1 529 0
	ldrb	r1, [r3, #91]	@ zero_extendqisi2
.LVL6:
	.loc 1 536 0
	cmp	r1, #0
	.loc 1 528 0
	ldrb	r3, [r3, #88]	@ zero_extendqisi2
	.loc 1 536 0
	beq	.L42
	.loc 1 541 0
	ldr	r2, .L43+4
	add	r1, r2, r1, asl #2
.LVL7:
	ldr	r1, [r1, #32]
	cmp	r3, #127
	movcs	r3, #127
	orr	r1, r3, r1, asl #16
.LVL8:
.L42:
	ldr	r0, .L43+8
	ldr	r2, .L43+12
	bl	neoAudioBufferWrite32
.LVL9:
	.loc 1 543 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L44:
	.align	2
.L43:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	67109984
	.word	8323199
.LFE43:
	.size	ymADPCMBCalculateVolume, .-ymADPCMBCalculateVolume
	.align	2
	.type	ymADPCMACalculateVolume, %function
ymADPCMACalculateVolume:
.LFB45:
	.loc 1 642 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL10:
	.loc 1 646 0
	ldr	r3, .L50
	mov	r2, #12
	mla	ip, r2, r0, r3
	.loc 1 642 0
	stmfd	sp!, {r4, lr}
.LCFI3:
	.loc 1 646 0
	ldrb	r1, [r3, #727]	@ zero_extendqisi2
	.loc 1 647 0
	ldrb	r2, [ip, #9]	@ zero_extendqisi2
.LVL11:
	.loc 1 646 0
	ldrb	r3, [ip, #8]	@ zero_extendqisi2
	add	r3, r1, r3
.LVL12:
	.loc 1 652 0
	rsbs	r1, r2, #1
	movcc	r1, #0
	cmp	r3, #62
	orrhi	r1, r1, #1
	cmp	r1, #0
	mov	r0, r0, asl #4
.LVL13:
	.loc 1 654 0
	addne	r0, r0, #67108864
	addne	r0, r0, #1024
	movne	r1, #0
	.loc 1 652 0
	bne	.L49
	.loc 1 662 0
	and	r1, r3, #7
	rsb	r1, r1, #15
	mov	r3, r3, lsr #3
.LVL14:
	add	r3, r3, #3
	mov	r1, r1, asl #7
	mov	r1, r1, lsr r3
.LVL15:
	.loc 1 664 0
	ldr	r3, .L50+4
	add	r2, r3, r2, asl #2
.LVL16:
	ldr	r3, [r2, #48]
	add	r0, r0, #67108864
	mov	r3, r3, asl #16
	cmp	r1, #127
	orrls	r1, r3, r1
	orrhi	r1, r3, #127
.LVL17:
	add	r0, r0, #1024
.LVL18:
.L49:
	ldr	r2, .L50+8
.LVL19:
	bl	neoAudioBufferWrite32
.LVL20:
	.loc 1 666 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	8323199
.LFE45:
	.size	ymADPCMACalculateVolume, .-ymADPCMACalculateVolume
	.align	2
	.type	ymOPNModeWrite, %function
ymOPNModeWrite:
.LFB32:
	.loc 1 127 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL21:
	.loc 1 128 0
	sub	r0, r0, #36
.LVL22:
	.loc 1 127 0
	stmfd	sp!, {r4, r5, r6, lr}
.LCFI4:
	.loc 1 127 0
	mov	r6, r1
	.loc 1 128 0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L64
.L58:
	.word	.L54
	.word	.L55
	.word	.L56
	.word	.L57
.LVL23:
.L54:
	.loc 1 132 0
	ldr	r3, .L66
	ldr	r2, [r3, #156]
	and	r2, r2, #3
	orr	r6, r2, r1, asl #2
.LVL24:
	b	.L65
.LVL25:
.L55:
	.loc 1 135 0
	ldr	r3, .L66
	ldr	r2, [r3, #156]
	and	r6, r1, #3
.LVL26:
	and	r2, r2, #1020
	orr	r6, r6, r2
.L65:
	str	r6, [r3, #156]
	.loc 1 136 0
	b	.L64
.LVL27:
.L56:
	.loc 1 138 0
	ldr	r3, .L66
	str	r1, [r3, #160]
	.loc 1 139 0
	b	.L64
.L57:
	.loc 1 149 0
	ldr	r3, .L66
	.loc 1 150 0
	tst	r1, #32
	.loc 1 149 0
	strb	r1, [r3, #726]
	.loc 1 150 0
	beq	.L59
.LVL28:
.LBB98:
.LBB99:
	.loc 1 88 0
	ldr	r2, [r3, #180]
	.loc 1 89 0
	ldrb	r1, [r3, #729]	@ zero_extendqisi2
.LVL29:
	.loc 1 88 0
	bic	r2, r2, #2
	.loc 1 89 0
	cmp	r1, #0
	.loc 1 88 0
	str	r2, [r3, #180]
	.loc 1 89 0
	beq	.L59
	cmp	r2, #0
	.loc 1 90 0
	streqb	r2, [r3, #729]
	.loc 1 91 0
	bleq	neoZ80ClearIrq
.LVL30:
.L59:
.LBE99:
.LBE98:
	.loc 1 151 0
	tst	r6, #16
	beq	.L60
.LBB100:
.LBB101:
	.loc 1 88 0
	ldr	r3, .L66
	ldr	r2, [r3, #180]
	.loc 1 89 0
	ldrb	r1, [r3, #729]	@ zero_extendqisi2
	.loc 1 88 0
	bic	r2, r2, #1
	.loc 1 89 0
	cmp	r1, #0
	.loc 1 88 0
	str	r2, [r3, #180]
	.loc 1 89 0
	beq	.L60
	cmp	r2, #0
	.loc 1 90 0
	streqb	r2, [r3, #729]
	.loc 1 91 0
	bleq	neoZ80ClearIrq
.LVL31:
.L60:
.LBE101:
.LBE100:
	.loc 1 153 0
	ands	r3, r6, #2
	ldr	r4, .L66
	beq	.L61
	.loc 1 155 0
	ldr	r3, [r4, #168]
	cmp	r3, #0
	bne	.L62
.LBB102:
.LBB103:
	.loc 1 105 0
	ldr	r3, [r4, #160]
	.loc 1 107 0
	ldr	r0, .L66+4
	.loc 1 105 0
	rsb	r3, r3, #256
	mov	r3, r3, asl #4
	.loc 1 107 0
	mul	r0, r3, r0
	ldr	r1, .L66+8
	.loc 1 105 0
	str	r3, [r4, #168]
	.loc 1 107 0
	bl	__aeabi_idiv
	.loc 1 108 0
	cmp	r0, #0
	moveq	r3, #1
	.loc 1 106 0
	str	r0, [r4, #176]
	.loc 1 108 0
	streq	r3, [r4, #176]
	b	.L62
.LVL32:
.L61:
.LBE103:
.LBE102:
	.loc 1 160 0
	ldr	r2, [r4, #168]
	cmp	r2, #0
	.loc 1 162 0
	strne	r3, [r4, #176]
	.loc 1 161 0
	strne	r3, [r4, #168]
.L62:
	.loc 1 166 0
	ands	r6, r6, #1
.LVL33:
	ldr	r4, .L66
	beq	.L63
	.loc 1 168 0
	ldr	r3, [r4, #164]
	cmp	r3, #0
	bne	.L64
.LBB104:
.LBB105:
	.loc 1 97 0
	ldr	r3, [r4, #156]
	.loc 1 99 0
	ldr	r0, .L66+4
	.loc 1 97 0
	rsb	r3, r3, #1024
	.loc 1 99 0
	mul	r0, r3, r0
	ldr	r1, .L66+8
.LVL34:
	.loc 1 97 0
	str	r3, [r4, #164]
	.loc 1 99 0
	bl	__aeabi_idiv
	.loc 1 100 0
	cmp	r0, #0
	moveq	r3, #1
	.loc 1 98 0
	str	r0, [r4, #172]
	.loc 1 100 0
	streq	r3, [r4, #172]
	b	.L64
.LVL35:
.L63:
.LBE105:
.LBE104:
	.loc 1 173 0
	ldr	r3, [r4, #164]
	cmp	r3, #0
	.loc 1 175 0
	strne	r6, [r4, #172]
	.loc 1 174 0
	strne	r6, [r4, #164]
.LVL36:
.L64:
	.loc 1 182 0
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L67:
	.align	2
.L66:
	.word	.LANCHOR0
	.word	12000
	.word	55555
.LFE32:
	.size	ymOPNModeWrite, .-ymOPNModeWrite
	.global	__aeabi_uidiv
	.align	2
	.type	ymSSGCalculateFreq, %function
ymSSGCalculateFreq:
.LFB36:
	.loc 1 225 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL37:
	stmfd	sp!, {r4, lr}
.LCFI5:
	.loc 1 227 0
	ldrb	r3, [r0, #10]	@ zero_extendqisi2
	cmp	r3, #2
	.loc 1 225 0
	mov	r4, r0
	.loc 1 227 0
	beq	.L71
.LVL38:
	cmp	r3, #3
	beq	.L72
	cmp	r3, #1
	.loc 1 229 0
	ldreq	r0, .L77
	.loc 1 227 0
	bne	.L74
	b	.L75
.LVL39:
.L71:
	.loc 1 232 0
	ldr	r3, .L77+4
	ldr	r0, .L77+8
	ldr	r1, [r3, #132]
	b	.L76
.LVL40:
.L72:
	.loc 1 235 0
	ldr	r0, .L77+8
.L75:
	ldr	r1, [r4, #0]
.L76:
	bl	__aeabi_uidiv
	.loc 1 242 0
	ldrb	r3, [r4, #9]	@ zero_extendqisi2
	ldr	r4, .L77+12
.LVL41:
	mov	r1, r0
.LVL42:
	mov	r3, r3, asl #4
	mov	r0, #-16777216
.LVL43:
	add	r4, r3, r4
	bl	__aeabi_idiv
	mov	r1, r0, asl #16
	mov	r1, r1, lsr #16
	mov	r0, r4
	ldr	r2, .L77+16
	bl	neoAudioBufferWrite16
.LVL44:
.L74:
	.loc 1 244 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L78:
	.align	2
.L77:
	.word	1000000
	.word	.LANCHOR0
	.word	125000
	.word	67109896
	.word	65535
.LFE36:
	.size	ymSSGCalculateFreq, .-ymSSGCalculateFreq
	.align	2
	.type	ymSSGFreeChannel, %function
ymSSGFreeChannel:
.LFB39:
	.loc 1 264 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL45:
.LBB106:
.LBB107:
	.loc 1 248 0
	sub	r3, r0, #14
.LBE107:
.LBE106:
	.loc 1 265 0
	cmp	r3, #1
	.loc 1 264 0
	stmfd	sp!, {r4, lr}
.LCFI6:
	.loc 1 265 0
	bhi	.L80
.LBB108:
.LBB110:
	.loc 1 270 0
	ldr	r4, .L91
	ldrb	r2, [r4, #106]	@ zero_extendqisi2
	cmp	r2, #3
	addhi	r4, r4, #96
.LVL46:
	bhi	.L82
	ldrb	r2, [r4, #118]	@ zero_extendqisi2
.LVL47:
	cmp	r2, #3
	addhi	r4, r4, #108
.LVL48:
	bhi	.L82
	ldrb	r2, [r4, #130]	@ zero_extendqisi2
.LVL49:
	cmp	r2, #3
	bls	.L84
	add	r4, r4, #120
.LVL50:
.L82:
	.loc 1 272 0
	and	r3, r0, #255
	.loc 1 273 0
	ldr	r1, [r4, #4]
	mov	r0, r3, asl #4
.LVL51:
	add	r0, r0, #67108864
	orr	r1, r1, #-536870912
	.loc 1 272 0
	strb	r3, [r4, #9]
	.loc 1 273 0
	add	r0, r0, #1024
	orr	r1, r1, #4128768
	mvn	r2, #0
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
	.loc 1 281 0
	strb	r3, [r4, #10]
.LBE110:
.LBE108:
	.loc 1 295 0
	ldmfd	sp!, {r4, lr}
.LBB111:
.LBB109:
	.loc 1 283 0
	b	ymSSGCalculateFreq
.LVL52:
.L80:
.LBE109:
.LBE111:
	.loc 1 292 0
	sub	r3, r0, #11
	cmp	r3, #2
	bhi	.L88
	.loc 1 293 0
	mov	r0, r0, asl #4
.LVL53:
	add	r0, r0, #67108864
	add	r0, r0, #1024
	mov	r1, #0
	mvn	r2, #0
	b	.L90
.LVL54:
.L84:
.LBB112:
	.loc 1 289 0
	ldrb	r2, [r4, #730]	@ zero_extendqisi2
	mov	ip, #1
	bic	ip, r2, ip, asl r3
	.loc 1 290 0
	mov	r0, r0, asl #4
.LVL55:
	add	r0, r0, #67108864
	.loc 1 289 0
	strb	ip, [r4, #730]
	.loc 1 290 0
	add	r0, r0, #1024
	mov	r1, #0
	mvn	r2, #0
.L90:
	bl	neoAudioBufferWrite32
.LVL56:
.L88:
.LBE112:
	.loc 1 295 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L92:
	.align	2
.L91:
	.word	.LANCHOR0
.LFE39:
	.size	ymSSGFreeChannel, .-ymSSGFreeChannel
	.align	2
	.type	ymSSGWrite, %function
ymSSGWrite:
.LFB40:
	.loc 1 298 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL57:
	stmfd	sp!, {r0, r1, r4, r6, r7, r8, r9, sl, fp, lr}
.LCFI7:
.LVL58:
	.loc 1 298 0
	str	r1, [sp, #4]
.LVL59:
	.loc 1 303 0
	cmp	r0, #13
	ldrls	pc, [pc, r0, asl #2]
	b	.L130
.LVL60:
.L101:
	.word	.L95
	.word	.L95
	.word	.L95
	.word	.L95
	.word	.L95
	.word	.L95
	.word	.L96
	.word	.L97
	.word	.L98
	.word	.L98
	.word	.L98
	.word	.L99
	.word	.L99
	.word	.L100
.L95:
	.loc 1 309 0
	mov	r2, r0, lsr #1
	mov	r1, #12
.LVL61:
	mul	r3, r1, r2
	.loc 1 308 0
	ldr	r2, .L136
	.loc 1 307 0
	bic	r0, r0, #1
.LVL62:
	.loc 1 308 0
	add	ip, r2, r0
	add	ip, ip, #209
	ldrb	r1, [ip, #4]	@ zero_extendqisi2
	and	r1, r1, #15
	strb	r1, [ip, #4]
	.loc 1 310 0
	add	r0, r2, r0
.LVL63:
	ldrb	r0, [r0, #212]	@ zero_extendqisi2
	add	r1, r0, r1, asl #8
	.loc 1 309 0
	add	r2, r2, #96
	.loc 1 311 0
	cmp	r1, #0
	.loc 1 310 0
	str	r1, [r2, r3]
	.loc 1 309 0
	add	r0, r2, r3
.LVL64:
	.loc 1 312 0
	addeq	r1, r1, #1
	streq	r1, [r2, r3]
	.loc 1 451 0
	add	sp, sp, #8
	ldmfd	sp!, {r4, r6, r7, r8, r9, sl, fp, lr}
	.loc 1 314 0
	b	ymSSGCalculateFreq
.LVL65:
.L96:
	.loc 1 317 0
	ldr	r3, .L136
	ldrb	r2, [r3, #218]	@ zero_extendqisi2
	and	r2, r2, #31
	.loc 1 319 0
	cmp	r2, #0
	.loc 1 318 0
	str	r2, [r3, #132]
	.loc 1 317 0
	strb	r2, [r3, #218]
	.loc 1 320 0
	ldr	r4, .L136+4
	addeq	r2, r2, #1
	streq	r2, [r3, #132]
	.loc 1 297 0
	add	r6, r4, #36
.L105:
	.loc 1 325 0
	ldrb	r3, [r4, #10]	@ zero_extendqisi2
	sub	r3, r3, #2
	cmp	r3, #1
	.loc 1 326 0
	movls	r0, r4
.LVL66:
	blls	ymSSGCalculateFreq
.LVL67:
.L104:
	add	r4, r4, #12
	.loc 1 322 0
	cmp	r4, r6
	bne	.L105
	b	.L130
.L97:
	ldr	r4, .L136+8
.LBB113:
.LBB114:
	.loc 1 253 0
	ldr	r8, .L136
.LBE114:
.LBE113:
	.loc 1 322 0
	mov	r6, #0
.LVL68:
	mov	r7, #11
	.loc 1 383 0
	mvn	fp, #0
.LVL69:
.L119:
	.loc 1 333 0
	ldr	r0, [sp, #4]
.LVL70:
	mov	sl, r0, asr r6
	tst	sl, #8
	.loc 1 322 0
	sub	r9, r4, #4
	.loc 1 333 0
	bne	.L106
	.loc 1 335 0
	ldrb	r0, [r4, #5]	@ zero_extendqisi2
	sub	r3, r0, #14
	cmp	r3, #1
	bls	.L107
	.loc 1 338 0
	bl	ymSSGFreeChannel
.LVL71:
.LBB116:
.LBB115:
	.loc 1 253 0
	ldrb	r3, [r8, #730]	@ zero_extendqisi2
	tst	r3, #1
	.loc 1 254 0
	orreq	r3, r3, #1
	streqb	r3, [r8, #730]
	moveq	r3, #14
	.loc 1 253 0
	beq	.L109
	.loc 1 256 0
	tst	r3, #2
	.loc 1 257 0
	orreq	r3, r3, #2
	streqb	r3, [r8, #730]
	.loc 1 256 0
	movne	r3, #255
	.loc 1 257 0
	moveq	r3, #15
.L109:
.LBE115:
.LBE116:
	.loc 1 339 0
	strb	r3, [r4, #5]
.LVL72:
.L107:
	.loc 1 341 0
	ldrb	r0, [r4, #5]	@ zero_extendqisi2
	sub	r3, r0, #14
	cmp	r3, #1
	and	sl, sl, #1
	bhi	.L111
	.loc 1 344 0
	ldr	r1, [r4, #0]
.LVL73:
	mov	r0, r0, asl #4
	add	r0, r0, #67108864
	orr	r1, r1, #-536870912
	orr	r1, r1, #4128768
	add	r0, r0, #1024
	mvn	r2, #0
	bl	neoAudioBufferWrite32
	.loc 1 348 0
	cmp	sl, #0
	.loc 1 350 0
	moveq	r1, #3
	.loc 1 353 0
	movne	r3, #2
	.loc 1 350 0
	streqb	r1, [r4, #6]
	.loc 1 353 0
	strneb	r3, [r4, #6]
	.loc 1 355 0
	mov	r0, r9
	b	.L134
.LVL74:
.L111:
	.loc 1 358 0
	cmp	sl, #0
	.loc 1 359 0
	moveq	r0, #5
	.loc 1 361 0
	movne	r1, #4
.LVL75:
	.loc 1 359 0
	streqb	r0, [r4, #6]
	.loc 1 361 0
	strneb	r1, [r4, #6]
	.loc 1 363 0
	strb	fp, [r4, #5]
	b	.L114
.LVL76:
.L106:
	.loc 1 365 0
	tst	sl, #1
	ldrb	r0, [r4, #5]	@ zero_extendqisi2
	bne	.L117
	.loc 1 367 0
	sub	r3, r0, #14
	cmp	r3, #1
	.loc 1 369 0
	blls	ymSSGFreeChannel
.LVL77:
.L118:
	.loc 1 373 0
	ldr	r1, [r4, #0]
.LVL78:
	mov	r0, r6, asl #4
	add	r0, r0, #67108864
	orr	r1, r1, #-486539264
	add	r0, r0, #1200
	orr	r1, r1, #4128768
	mvn	r2, #0
	.loc 1 372 0
	strb	r7, [r4, #5]
	.loc 1 373 0
	bl	neoAudioBufferWrite32
	.loc 1 377 0
	mov	r1, #1
	strb	r1, [r4, #6]
	.loc 1 378 0
	mov	r0, r9
.L134:
	bl	ymSSGCalculateFreq
	b	.L114
.LVL79:
.L117:
	.loc 1 381 0
	bl	ymSSGFreeChannel
.LVL80:
	.loc 1 382 0
	mov	r3, #0
	strb	r3, [r4, #6]
	.loc 1 383 0
	strb	fp, [r4, #5]
.L114:
	.loc 1 331 0
	add	r6, r6, #1
.LVL81:
	add	r7, r7, #1
	cmp	r6, #3
	and	r7, r7, #255
	add	r4, r4, #12
	bne	.L119
	b	.L130
.LVL82:
.L98:
	.loc 1 389 0
	ldr	r2, .L136
	.loc 1 390 0
	and	ip, r0, #3
	add	r1, r2, #96
.LVL83:
	mov	lr, #12
	mla	r3, lr, ip, r1
.LVL84:
	.loc 1 389 0
	add	r0, r2, r0
.LVL85:
	add	r0, r0, #208
	ldrb	ip, [r0, #4]	@ zero_extendqisi2
	.loc 1 392 0
	and	r1, ip, #16
	.loc 1 389 0
	and	ip, ip, #31
	strb	ip, [r0, #4]
	.loc 1 392 0
	strb	r1, [r3, #8]
	.loc 1 393 0
	cmp	r1, #0
	.loc 1 395 0
	ldrne	r2, [r2, #144]
	.loc 1 393 0
	bne	.L122
	.loc 1 396 0
	ldrb	r2, [r0, #4]	@ zero_extendqisi2
	cmp	r2, #0
	.loc 1 398 0
	ldrne	r1, .L136+12
	addne	r2, r1, r2, asl #1
	ldrneb	r2, [r2, #1]	@ zero_extendqisi2
.L122:
	.loc 1 403 0
	ldrb	r0, [r3, #9]	@ zero_extendqisi2
	.loc 1 401 0
	str	r2, [r3, #4]
	.loc 1 403 0
	mov	r0, r0, asl #4
	add	r0, r0, #67108864
	add	r0, r0, #1024
	ldr	r1, [r3, #4]
	mov	r2, #127
	bl	neoAudioBufferWrite32
.LVL86:
	.loc 1 405 0
	b	.L130
.LVL87:
.L99:
	.loc 1 408 0
	ldr	r3, .L136
	.loc 1 409 0
	ldrb	r2, [r3, #223]	@ zero_extendqisi2
	ldrb	r1, [r3, #224]	@ zero_extendqisi2
.LVL88:
	mov	r0, #392
.LVL89:
	add	r1, r2, r1, asl #8
	mul	r2, r0, r1
	.loc 1 408 0
	add	r0, r3, #140
	ldmda	r0, {r0, r1}
	sub	r1, r1, r0
	.loc 1 411 0
	cmp	r2, #0
	.loc 1 409 0
	str	r2, [r3, #136]
	.loc 1 412 0
	addeq	r2, r2, #196
	.loc 1 408 0
	str	r1, [r3, #140]
	.loc 1 412 0
	streq	r2, [r3, #136]
	.loc 1 414 0
	ldr	r3, .L136
	add	r1, r3, #140
	ldmda	r1, {r1, r2}
	add	r2, r2, r1
	.loc 1 415 0
	cmp	r2, #0
	.loc 1 414 0
	str	r2, [r3, #140]
	.loc 1 415 0
	movle	r2, #1
	strle	r2, [r3, #140]
	b	.L130
.LVL90:
.L100:
	.loc 1 418 0
	ldr	r3, .L136
	ldrb	r2, [r3, #225]	@ zero_extendqisi2
	.loc 1 419 0
	ands	r1, r2, #4
.LVL91:
	.loc 1 418 0
	and	r2, r2, #15
	strb	r2, [r3, #225]
	.loc 1 420 0
	movne	r2, #31
	strneb	r2, [r3, #152]
	.loc 1 422 0
	streqb	r1, [r3, #152]
	.loc 1 425 0
	ldr	r3, .L136
	ldrb	r2, [r3, #225]	@ zero_extendqisi2
	tst	r2, #8
	.loc 1 428 0
	ldreqb	r2, [r3, #152]	@ zero_extendqisi2
	.loc 1 433 0
	ldr	r4, .L136
	.loc 1 428 0
	streqb	r2, [r3, #153]
	.loc 1 431 0
	andne	r1, r2, #2
	.loc 1 427 0
	moveq	r2, #1
	.loc 1 430 0
	andne	r2, r2, #1
	strb	r2, [r3, #154]
	.loc 1 431 0
	strneb	r1, [r3, #153]
	.loc 1 436 0
	ldrb	r3, [r4, #152]	@ zero_extendqisi2
	ldr	r2, .L136+12
	eor	r3, r3, #31
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 1 433 0
	ldr	r2, [r4, #136]
	str	r2, [r4, #140]
	.loc 1 434 0
	mov	r2, #31
	str	r2, [r4, #148]
	.loc 1 435 0
	mov	r2, #0
	strb	r2, [r4, #155]
	.loc 1 436 0
	str	r3, [r4, #144]
	.loc 1 297 0
	add	r7, r4, #36
	.loc 1 440 0
	mov	r6, r4
.L129:
	ldrb	r3, [r4, #104]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L128
	ldr	r3, [r6, #144]
	ldr	r2, [r4, #100]
	cmp	r2, r3
	.loc 1 442 0
	mov	r1, r3
	mov	r2, #127
	.loc 1 440 0
	beq	.L128
	.loc 1 442 0
	ldrb	r0, [r4, #105]	@ zero_extendqisi2
.LVL92:
	mov	r0, r0, asl #4
	add	r0, r0, #67108864
	add	r0, r0, #1024
	.loc 1 441 0
	str	r3, [r4, #100]
	.loc 1 442 0
	bl	neoAudioBufferWrite32
.LVL93:
.L128:
	add	r4, r4, #12
	.loc 1 438 0
	cmp	r4, r7
	bne	.L129
.LVL94:
.L130:
	.loc 1 451 0
	add	sp, sp, #8
	ldmfd	sp!, {r4, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L137:
	.align	2
.L136:
	.word	.LANCHOR0
	.word	.LANCHOR0+96
	.word	.LANCHOR0+100
	.word	.LANCHOR1
.LFE40:
	.size	ymSSGWrite, .-ymSSGWrite
	.align	2
	.global	neoYM2610Init
	.type	neoYM2610Init, %function
neoYM2610Init:
.LFB49:
	.loc 1 815 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
.LCFI8:
	.loc 1 818 0
	ldr	r4, .L146
	mov	r2, #732
	mov	r1, #0
	mov	r0, r4
	bl	memset
	.loc 1 819 0
	mov	r3, #63
	.loc 1 820 0
	mov	r1, #48
	.loc 1 819 0
	strb	r3, [r4, #727]
	.loc 1 820 0
	mov	r0, #39
	bl	ymOPNModeWrite
	mov	r6, r4
	mov	r2, r4
	mov	r3, #0
.LVL95:
	.loc 1 822 0
	mov	r1, #1
.L139:
	mov	r0, r1, asl r3
	.loc 1 821 0
	add	r3, r3, #1
	cmp	r3, #6
	.loc 1 822 0
	strb	r0, [r2, #10]
	.loc 1 821 0
	add	r2, r2, #12
	bne	.L139
	.loc 1 824 0
	ldr	r3, .L146
.LVL96:
	.loc 1 828 0
	mov	r4, #0
	.loc 1 827 0
	mvn	r2, #0
	.loc 1 824 0
	mvn	r1, #127
	strb	r1, [r3, #92]
	.loc 1 827 0
	strb	r2, [r3, #129]
	.loc 1 828 0
	strb	r4, [r3, #130]
	.loc 1 827 0
	strb	r2, [r3, #105]
	.loc 1 828 0
	strb	r4, [r3, #106]
	.loc 1 827 0
	strb	r2, [r3, #117]
	.loc 1 828 0
	strb	r4, [r3, #118]
.L140:
	.loc 1 831 0
	mov	r0, r4
.LVL97:
	mov	r1, #0
	.loc 1 830 0
	add	r4, r4, #1
	.loc 1 831 0
	bl	ymSSGWrite
	.loc 1 830 0
	cmp	r4, #14
	bne	.L140
	.loc 1 814 0
	ldr	r2, .L146+4
	.loc 1 834 0
	mvn	r3, #0
.L141:
	str	r3, [r6, #184]
	add	r6, r6, #4
	.loc 1 833 0
	cmp	r6, r2
	bne	.L141
	.loc 1 836 0
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L147:
	.align	2
.L146:
	.word	.LANCHOR0
	.word	.LANCHOR0+28
.LFE49:
	.size	neoYM2610Init, .-neoYM2610Init
	.align	2
	.global	ymGetChannelControl
	.type	ymGetChannelControl, %function
ymGetChannelControl:
.LFB33:
	.loc 1 185 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL98:
	.loc 1 186 0
	ldr	r3, .L154
	.loc 1 187 0
	ldr	r2, .L154+4
	.loc 1 185 0
	stmfd	sp!, {r4, r6, r7, r8, sl, lr}
.LCFI9:
	.loc 1 185 0
	mov	r7, r0
	.loc 1 186 0
	mov	r0, r0, asl #1
.LVL99:
	add	r3, r0, r3
	.loc 1 187 0
	add	r2, r0, r2
	.loc 1 186 0
	ldrh	r3, [r3, #2]
	.loc 1 187 0
	ldrh	r6, [r2, #4]
	mov	r6, r6, asl #16
	mov	r6, r6, asr #16
.LVL100:
	.loc 1 188 0
	mov	r3, r3, asl #16
	.loc 1 189 0
	subs	r3, r6, r3, asr #16
.LVL101:
	addmi	r3, r3, #32
	.loc 1 193 0
	cmp	r3, #30
	movgt	r4, #0
.LVL102:
	bgt	.L151
.LBB117:
	.loc 1 194 0
	mov	r3, #12
.LVL103:
	mul	r8, r3, r6
	ldr	r3, .L154+8
	mov	r2, r7, asl #2
	add	r3, r2, r3
	ldr	sl, [r3, #-255]
	.loc 1 200 0
	bl	neoAudioUpdate
	.loc 1 202 0
	ldr	r3, .L154+12
	ldrh	r3, [r3, #-119]
	.loc 1 194 0
	add	r4, sl, r8
	.loc 1 201 0
	mov	r2, #0
	.loc 1 202 0
	strh	r3, [r4, #8]	@ movhi
	.loc 1 201 0
	str	r2, [sl, r8]
	.loc 1 203 0
	bl	neoAudioGetTimestamp
	.loc 1 195 0
	add	r6, r6, #1
.LVL104:
	.loc 1 196 0
	cmp	r6, #31
	.loc 1 205 0
	ldr	r3, .L154+16
	.loc 1 196 0
	movgt	r6, #0
	.loc 1 205 0
	add	r7, r7, #46
.LVL105:
	str	r6, [r3, r7, asl #2]
	.loc 1 203 0
	strh	r0, [r4, #10]	@ movhi
.LVL106:
.L151:
.LBE117:
	.loc 1 210 0
	mov	r0, r4
	ldmfd	sp!, {r4, r6, r7, r8, sl, lr}
	bx	lr
.L155:
	.align	2
.L154:
	.word	41940064
	.word	41940048
	.word	41940279
	.word	41940223
	.word	.LANCHOR0
.LFE33:
	.size	ymGetChannelControl, .-ymGetChannelControl
	.align	2
	.global	neoYM2610Write
	.type	neoYM2610Write, %function
neoYM2610Write:
.LFB48:
	.loc 1 767 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL107:
	stmfd	sp!, {r0, r1, r4, r6, r7, r8, r9, sl, fp, lr}
.LCFI10:
.LVL108:
	.loc 1 770 0
	and	r0, r0, #3
.LVL109:
	cmp	r0, #2
	.loc 1 767 0
	mov	r4, r1
.LVL110:
	.loc 1 770 0
	beq	.L159
.LVL111:
	cmp	r0, #3
	beq	.L160
	ldr	r3, .L219
	cmp	r0, #1
	.loc 1 773 0
	strneb	r1, [r3, #725]
	.loc 1 772 0
	movne	r2, #0
	.loc 1 770 0
	bne	.L214
.LVL112:
	.loc 1 776 0
	ldrb	r2, [r3, #724]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L204
	.loc 1 778 0
	ldrb	r0, [r3, #725]	@ zero_extendqisi2
.LVL113:
	.loc 1 781 0
	and	r2, r0, #240
	.loc 1 779 0
	add	r3, r3, r0
	.loc 1 781 0
	cmp	r2, #16
	.loc 1 779 0
	strb	r1, [r3, #212]
	.loc 1 781 0
	beq	.L163
	cmp	r2, #32
	beq	.L164
	cmp	r2, #0
	bne	.L204
	.loc 1 812 0
	add	sp, sp, #8
	ldmfd	sp!, {r4, r6, r7, r8, r9, sl, fp, lr}
	.loc 1 783 0
	b	ymSSGWrite
.LVL114:
.L163:
.LBB154:
.LBB155:
	.loc 1 553 0
	sub	r0, r0, #16
.LVL115:
	cmp	r0, #12
	ldrls	pc, [pc, r0, asl #2]
	b	.L204
.L172:
	.word	.L165
	.word	.L166
	.word	.L167
	.word	.L167
	.word	.L168
	.word	.L168
	.word	.L204
	.word	.L204
	.word	.L204
	.word	.L169
	.word	.L169
	.word	.L170
	.word	.L171
.L165:
.LBB156:
	.loc 1 556 0
	tst	r1, #1
	movne	r4, #0
.LVL116:
	.loc 1 559 0
	ldr	r3, .L219
	.loc 1 561 0
	tst	r4, #128
	.loc 1 559 0
	bic	r2, r4, #14
	strb	r2, [r3, #89]
.LBB177:
.LBB178:
.LBB179:
.LBB180:
	.loc 1 216 0
	moveq	r2, #0
.LVL117:
	ldreqb	r1, [r3, #728]	@ zero_extendqisi2
.LBE180:
.LBE179:
.LBE178:
.LBE177:
.LBB170:
.LBB171:
.LBB172:
	.loc 1 117 0
	moveq	ip, r2
.LBE172:
.LBE171:
.LBE170:
	.loc 1 561 0
	beq	.L180
	ldr	r2, .L219+4
.LVL118:
	ldr	r1, [r3, #72]
	ldr	r2, [r2, #-247]
	cmp	r1, r2
	bcs	.L204
	mov	r2, #0
.LVL119:
	ldrb	r1, [r3, #728]	@ zero_extendqisi2
.LBB169:
.LBB181:
.LBB182:
	.loc 1 117 0
	mov	ip, r2
.L176:
	.loc 1 115 0
	ldr	r0, .L219+4
	add	r0, r2, r0
	ldrb	lr, [r0, #-117]	@ zero_extendqisi2
	cmp	lr, #0
	.loc 1 116 0
	ldrneb	lr, [r3, #10]	@ zero_extendqisi2
	.loc 1 114 0
	add	r2, r2, #1
	.loc 1 117 0
	strneb	ip, [r0, #-117]
	.loc 1 116 0
	orrne	r1, r1, lr
	.loc 1 114 0
	cmp	r2, #6
	add	r3, r3, #12
	bne	.L176
	.loc 1 120 0
	ldr	r2, .L219+4
.LVL120:
	ldrb	r0, [r2, #-111]	@ zero_extendqisi2
	.loc 1 114 0
	ldr	r3, .L219
	.loc 1 120 0
	cmp	r0, #0
	.loc 1 121 0
	ldrneb	r0, [r3, #92]	@ zero_extendqisi2
	.loc 1 114 0
	strb	r1, [r3, #728]
	.loc 1 121 0
	orrne	r1, r1, r0
	strneb	r1, [r3, #728]
	.loc 1 122 0
	movne	r3, #0
	strneb	r3, [r2, #-111]
.LBE182:
.LBE181:
	.loc 1 564 0
	mov	r0, #6
	bl	ymGetChannelControl
	.loc 1 565 0
	cmp	r0, #0
.LVL121:
	beq	.L204
.LBB183:
	.loc 1 566 0
	ldr	r3, .L219
	ldr	r3, [r3, #72]
.LVL122:
	.loc 1 567 0
	tst	r4, #16
	.loc 1 569 0
	orrne	r3, r3, #-2147483648
	.loc 1 572 0
	mov	r2, #2
	stmia	r0, {r2, r3}	@ phole stm
	b	.L215
.LVL123:
.L180:
.LBE183:
.LBE169:
.LBB168:
.LBB174:
.LBB173:
	.loc 1 115 0
	ldr	r0, .L219+4
	add	r0, r2, r0
	ldrb	lr, [r0, #-117]	@ zero_extendqisi2
	cmp	lr, #0
	.loc 1 116 0
	ldrneb	lr, [r3, #10]	@ zero_extendqisi2
	.loc 1 114 0
	add	r2, r2, #1
	.loc 1 117 0
	strneb	ip, [r0, #-117]
	.loc 1 116 0
	orrne	r1, r1, lr
	.loc 1 114 0
	cmp	r2, #6
	add	r3, r3, #12
	bne	.L180
	.loc 1 120 0
	ldr	r2, .L219+4
.LVL124:
	ldrb	r0, [r2, #-111]	@ zero_extendqisi2
	.loc 1 114 0
	ldr	r3, .L219
	.loc 1 120 0
	cmp	r0, #0
	.loc 1 121 0
	ldrneb	r0, [r3, #92]	@ zero_extendqisi2
	.loc 1 114 0
	strb	r1, [r3, #728]
	.loc 1 121 0
	orrne	r1, r1, r0
	strneb	r1, [r3, #728]
	.loc 1 122 0
	movne	r3, #0
	strneb	r3, [r2, #-111]
.LBE173:
.LBE174:
	.loc 1 578 0
	mov	r0, #6
	bl	ymGetChannelControl
	.loc 1 579 0
	cmp	r0, #0
.LVL125:
	beq	.L204
	.loc 1 580 0
	mov	r3, #1
	str	r3, [r0, #0]
.LVL126:
.L215:
.LBB175:
.LBB176:
	.loc 1 215 0
	ldr	r3, .L219
.LVL127:
	ldr	r2, .L219+4
	ldrh	r1, [r3, #208]
	strh	r1, [r2, #-159]	@ movhi
	.loc 1 216 0
	mvn	r2, #0
	str	r2, [r3, #208]
	b	.L204
.LVL128:
.L166:
.LBE176:
.LBE175:
.LBE168:
	.loc 1 587 0
	ldr	r3, .L219
	mov	r2, r1, lsr #6
	.loc 1 588 0
	strb	r1, [r3, #90]
	.loc 1 587 0
	strb	r2, [r3, #91]
	b	.L216
.L167:
	.loc 1 594 0
	ldr	r3, .L219
	ldrb	r1, [r3, #231]	@ zero_extendqisi2
.LVL129:
	ldrb	r2, [r3, #230]	@ zero_extendqisi2
	orr	r2, r2, r1, asl #8
	mov	r2, r2, asl #8
	str	r2, [r3, #72]
	b	.L204
.LVL130:
.L168:
	.loc 1 601 0
	ldr	r4, .L219
	ldrb	r2, [r4, #233]	@ zero_extendqisi2
	ldrb	r3, [r4, #232]	@ zero_extendqisi2
	orr	r3, r3, r2, asl #8
	mov	r3, r3, asl #8
	add	r3, r3, #255
	.loc 1 602 0
	mov	r0, #6
	.loc 1 601 0
	str	r3, [r4, #76]
	.loc 1 602 0
	bl	ymGetChannelControl
.LVL131:
	.loc 1 603 0
	cmp	r0, #0
.LVL132:
	beq	.L204
	.loc 1 604 0
	ldr	r3, [r4, #76]
	.loc 1 605 0
	mov	r2, #3
	.loc 1 604 0
	stmia	r0, {r2, r3}	@ phole stm
.LBB166:
.LBB167:
	.loc 1 215 0
	ldr	r3, .L219+4
	ldrh	r2, [r4, #208]
	strh	r2, [r3, #-159]	@ movhi
	.loc 1 216 0
	mvn	r3, #0
	str	r3, [r4, #208]
	b	.L204
.LVL133:
.L169:
.LBE167:
.LBE166:
	.loc 1 619 0
	ldr	r3, .L219
	ldrb	r6, [r3, #238]	@ zero_extendqisi2
	ldrb	r1, [r3, #237]	@ zero_extendqisi2
.LVL134:
	ldr	r2, [r3, #80]
	orr	r6, r1, r6, asl #8
	cmp	r6, r2
	beq	.L204
.LBB158:
.LBB159:
	.loc 1 504 0
	ldr	r2, [r3, #84]
	cmp	r6, r2
	.loc 1 505 0
	rsbhi	r2, r2, r6
.LVL135:
	.loc 1 507 0
	rsbls	r2, r6, r2
.LVL136:
	.loc 1 510 0
	cmp	r2, #128
.LBE159:
.LBE158:
	.loc 1 620 0
	str	r6, [r3, #80]
.LBB157:
.LBB165:
	.loc 1 510 0
	bls	.L204
.LBB160:
	.loc 1 513 0
	mov	r0, #6
	bl	ymGetChannelControl
.LVL137:
	.loc 1 514 0
	subs	r4, r0, #0
.LVL138:
	beq	.L204
	.loc 1 511 0
	ldr	r3, .L219+8
	mul	r2, r3, r6
	mov	r2, r2, lsr #16
.LVL139:
	.loc 1 515 0
	cmp	r2, r3
	movcc	r3, r2
	mov	r0, r3, asl #16
	mov	r1, #18432
	bl	__aeabi_uidiv
.LVL140:
	.loc 1 516 0
	mov	r3, #4
	str	r3, [r4, #0]
	.loc 1 515 0
	str	r0, [r4, #4]
	.loc 1 517 0
	ldr	r3, .L219
.LBB161:
.LBB162:
	.loc 1 215 0
	ldr	r1, .L219+4
	ldrh	r0, [r3, #208]
.LBE162:
.LBE161:
	.loc 1 517 0
	ldr	r2, [r3, #80]
.LBB164:
.LBB163:
	.loc 1 215 0
	strh	r0, [r1, #-159]	@ movhi
	.loc 1 216 0
	mvn	r1, #0
	str	r1, [r3, #208]
.LBE163:
.LBE164:
	.loc 1 517 0
	str	r2, [r3, #84]
	b	.L204
.LVL141:
.L170:
.LBE160:
.LBE165:
.LBE157:
	.loc 1 624 0
	ldr	r3, .L219
	strb	r1, [r3, #88]
.L216:
.LBE156:
.LBE155:
.LBE154:
	.loc 1 812 0
	add	sp, sp, #8
	ldmfd	sp!, {r4, r6, r7, r8, r9, sl, fp, lr}
.LBB192:
.LBB191:
.LBB190:
	.loc 1 625 0
	b	ymADPCMBCalculateVolume
.LVL142:
.L171:
	ldr	r1, .L219
.LVL143:
	mov	r3, #0
.LVL144:
	mov	r2, r1
	ldrb	r1, [r1, #728]	@ zero_extendqisi2
	mov	ip, r2
.LBB184:
.LBB186:
	.loc 1 117 0
	mov	r6, r3
.L185:
	.loc 1 115 0
	ldr	r0, .L219+4
	add	r0, r3, r0
	ldrb	r7, [r0, #-117]	@ zero_extendqisi2
	cmp	r7, #0
	.loc 1 116 0
	ldrneb	r7, [ip, #10]	@ zero_extendqisi2
	.loc 1 114 0
	add	r3, r3, #1
	.loc 1 117 0
	strneb	r6, [r0, #-117]
	.loc 1 116 0
	orrne	r1, r1, r7
	.loc 1 114 0
	cmp	r3, #6
	add	ip, ip, #12
	bne	.L185
	.loc 1 120 0
	ldr	r0, .L219+4
	ldrb	ip, [r0, #-111]	@ zero_extendqisi2
	.loc 1 114 0
	ldr	r3, .L219
.LVL145:
	.loc 1 120 0
	cmp	ip, #0
	.loc 1 121 0
	ldrneb	ip, [r3, #92]	@ zero_extendqisi2
	.loc 1 114 0
	strb	r1, [r3, #728]
	.loc 1 121 0
	orrne	r1, r1, ip
	strneb	r1, [r3, #728]
.LBE186:
.LBE184:
	.loc 1 633 0
	mvn	r4, r4
.LVL146:
.LBB188:
.LBB185:
	.loc 1 122 0
	movne	r3, #0
	strneb	r3, [r0, #-111]
.LBE185:
.LBE188:
	.loc 1 633 0
	mov	r1, r4
.LBB189:
.LBB187:
	.loc 1 122 0
	mov	r3, #0
.LVL147:
.LBE187:
.LBE189:
	.loc 1 633 0
	mov	r0, #1
.L187:
	and	ip, r4, r0, asl r3
	.loc 1 632 0
	add	r3, r3, #1
	cmp	r3, #6
	.loc 1 633 0
	strb	ip, [r2, #10]
	.loc 1 632 0
	add	r2, r2, #12
	bne	.L187
	.loc 1 635 0
	ldr	r3, .L219
.LVL148:
	.loc 1 636 0
	ldrb	r2, [r3, #728]	@ zero_extendqisi2
	and	r2, r2, r1
	.loc 1 635 0
	bic	r1, r1, #127
	.loc 1 636 0
	strb	r2, [r3, #728]
	.loc 1 635 0
	strb	r1, [r3, #92]
	b	.L204
.LVL149:
.L164:
.LBE190:
.LBE191:
.LBE192:
	.loc 1 812 0
	add	sp, sp, #8
	ldmfd	sp!, {r4, r6, r7, r8, r9, sl, fp, lr}
	.loc 1 789 0
	b	ymOPNModeWrite
.LVL150:
.L159:
	.loc 1 796 0
	ldr	r3, .L219
	.loc 1 797 0
	strb	r1, [r3, #725]
	.loc 1 796 0
	mov	r2, #1
.LVL151:
.L214:
	strb	r2, [r3, #724]
	.loc 1 798 0
	b	.L204
.LVL152:
.L160:
	.loc 1 800 0
	ldr	r2, .L219
	ldrb	r3, [r2, #724]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L204
	.loc 1 802 0
	ldrb	r3, [r2, #725]	@ zero_extendqisi2
	.loc 1 803 0
	orr	r1, r3, #256
	add	r1, r2, r1
	.loc 1 805 0
	cmp	r3, #47
	.loc 1 803 0
	strb	r4, [r1, #212]
	.loc 1 805 0
	bhi	.L204
.LBB193:
.LBB194:
	.loc 1 673 0
	cmp	r3, #0
	beq	.L189
	cmp	r3, #1
	bne	.L213
	b	.L218
.L189:
	mov	r6, r2
	ldrb	r2, [r2, #728]	@ zero_extendqisi2
	mov	r0, r6
.LBB210:
.LBB211:
	.loc 1 117 0
	mov	ip, r3
.LVL153:
.L192:
	.loc 1 115 0
	ldr	r1, .L219+4
	add	r1, r3, r1
	ldrb	r7, [r1, #-117]	@ zero_extendqisi2
	cmp	r7, #0
	.loc 1 116 0
	ldrneb	r7, [r0, #10]	@ zero_extendqisi2
	.loc 1 114 0
	add	r3, r3, #1
	.loc 1 117 0
	strneb	ip, [r1, #-117]
	.loc 1 116 0
	orrne	r2, r2, r7
	.loc 1 114 0
	cmp	r3, #6
	add	r0, r0, #12
	bne	.L192
	.loc 1 120 0
	ldr	r1, .L219+4
	ldrb	r0, [r1, #-111]	@ zero_extendqisi2
	.loc 1 114 0
	ldr	r3, .L219
.LVL154:
	.loc 1 120 0
	cmp	r0, #0
	.loc 1 121 0
	ldrneb	r0, [r3, #92]	@ zero_extendqisi2
	.loc 1 114 0
	strb	r2, [r3, #728]
	.loc 1 121 0
	orrne	r2, r2, r0
	strneb	r2, [r3, #728]
	.loc 1 122 0
	movne	r3, #0
	strneb	r3, [r1, #-111]
.LBE211:
.LBE210:
	.loc 1 676 0
	tst	r4, #128
	bne	.L194
	mov	r8, #0
	.loc 1 679 0
	ldr	r3, .L219+4
	ldr	sl, .L219
	.loc 1 676 0
	mov	r7, r8
.LVL155:
.LBB205:
	.loc 1 684 0
	mov	fp, #2
.LBB206:
.LBB207:
	.loc 1 216 0
	mvn	r9, #0
.LVL156:
.L196:
.LBE207:
.LBE206:
.LBE205:
	.loc 1 679 0
	mov	r2, r4, asr r7
	tst	r2, #1
	beq	.L195
	ldr	r2, [r3, #-247]
	ldr	r1, [sl, r8]
	cmp	r1, r2
	bcs	.L195
.LBB204:
	.loc 1 681 0
	mov	r0, r7
.LVL157:
	str	r3, [sp, #4]
	bl	ymGetChannelControl
	.loc 1 682 0
	cmp	r0, #0
.LVL158:
	ldr	r3, [sp, #4]
	beq	.L195
	.loc 1 683 0
	ldr	r2, [sl, r8]
	.loc 1 684 0
	str	fp, [r0, #0]
	.loc 1 683 0
	str	r2, [r0, #4]
.LBB209:
.LBB208:
	.loc 1 215 0
	ldr	r2, .L219+12
	ldrh	r1, [r6, #184]
	mov	r0, r7, asl #1
.LVL159:
	add	r2, r0, r2
	strh	r1, [r2, #-251]	@ movhi
	.loc 1 216 0
	str	r9, [r6, #184]
.LVL160:
.L195:
.LBE208:
.LBE209:
.LBE204:
	.loc 1 678 0
	add	r7, r7, #1
	cmp	r7, #6
	add	r8, r8, #12
	add	r6, r6, #4
	bne	.L196
	b	.L204
.LVL161:
.L194:
	mov	r7, #0
.LVL162:
.LBB199:
	.loc 1 696 0
	mov	sl, #1
.LBB200:
.LBB201:
	.loc 1 216 0
	mvn	r8, #0
.LVL163:
.L198:
.LBE201:
.LBE200:
.LBE199:
	.loc 1 692 0
	mov	r3, r4, asr r7
	tst	r3, #1
	beq	.L197
.LBB198:
	.loc 1 694 0
	mov	r0, r7
.LVL164:
	bl	ymGetChannelControl
	.loc 1 695 0
	cmp	r0, #0
.LVL165:
	beq	.L197
	.loc 1 696 0
	str	sl, [r0, #0]
.LBB203:
.LBB202:
	.loc 1 215 0
	ldr	r3, .L219+12
	ldrh	r2, [r6, #184]
	mov	r1, r7, asl #1
	add	r3, r1, r3
	strh	r2, [r3, #-251]	@ movhi
	.loc 1 216 0
	str	r8, [r6, #184]
.L197:
.LBE202:
.LBE203:
.LBE198:
	.loc 1 691 0
	add	r7, r7, #1
	cmp	r7, #6
	add	r6, r6, #4
	bne	.L198
	b	.L204
.LVL166:
.L218:
	.loc 1 704 0
	mvn	r4, r4
.LVL167:
	and	r4, r4, #63
	strb	r4, [r2, #727]
	mov	r4, #0
.LVL168:
.L199:
	.loc 1 706 0
	mov	r0, r4
	.loc 1 705 0
	add	r4, r4, #1
	.loc 1 706 0
	bl	ymADPCMACalculateVolume
	.loc 1 705 0
	cmp	r4, #6
	bne	.L199
	b	.L204
.LVL169:
.L213:
	.loc 1 670 0
	and	r6, r3, #7
.LVL170:
	.loc 1 710 0
	cmp	r6, #5
	bhi	.L204
	.loc 1 714 0
	and	r3, r3, #56
	cmp	r3, #24
	beq	.L201
	bhi	.L203
	cmp	r3, #8
	beq	.L200
	cmp	r3, #16
	bne	.L204
	b	.L201
.L203:
	cmp	r3, #32
	beq	.L202
	cmp	r3, #40
	bne	.L204
	b	.L202
.L200:
.LBB195:
	.loc 1 717 0
	ldr	r2, .L219
	mov	r1, #12
	mla	r3, r1, r6, r2
	mvn	r2, r4
	and	r2, r2, #31
	.loc 1 718 0
	mov	r4, r4, lsr #6
.LVL171:
	.loc 1 719 0
	mov	r0, r6
	.loc 1 718 0
	strb	r4, [r3, #9]
	.loc 1 717 0
	strb	r2, [r3, #8]
.LBE195:
.LBE194:
.LBE193:
	.loc 1 812 0
	add	sp, sp, #8
	ldmfd	sp!, {r4, r6, r7, r8, r9, sl, fp, lr}
.LBB214:
.LBB213:
.LBB212:
	.loc 1 719 0
	b	ymADPCMACalculateVolume
.LVL172:
.L201:
	.loc 1 724 0
	mov	r3, #12
	mul	r2, r3, r6
	ldr	r3, .L219
	add	r6, r3, r6
.LVL173:
	ldrb	r1, [r6, #484]	@ zero_extendqisi2
	ldrb	r0, [r6, #492]	@ zero_extendqisi2
	add	r1, r1, r0, asl #8
	mov	r1, r1, asl #8
	str	r1, [r3, r2]
	b	.L204
.LVL174:
.L202:
	.loc 1 731 0
	ldr	r4, .L219
.LVL175:
	mov	r3, #12
	mla	r7, r3, r6, r4
	add	r2, r4, r6
	ldrb	r3, [r2, #500]	@ zero_extendqisi2
	ldrb	r2, [r2, #508]	@ zero_extendqisi2
	add	r3, r3, r2, asl #8
	mov	r3, r3, asl #8
	add	r3, r3, #255
	.loc 1 735 0
	mov	r0, r6
	.loc 1 731 0
	str	r3, [r7, #4]
	.loc 1 735 0
	bl	ymGetChannelControl
	.loc 1 736 0
	cmp	r0, #0
.LVL176:
	beq	.L204
	.loc 1 737 0
	ldr	r3, [r7, #4]
	.loc 1 738 0
	mov	r2, #3
	.loc 1 737 0
	stmia	r0, {r2, r3}	@ phole stm
.LBB196:
.LBB197:
	.loc 1 215 0
	add	r2, r6, #46
	mov	r1, r2, asl #2
	ldr	r3, .L219+16
	ldrh	r1, [r1, r4]
	mov	r6, r6, asl #1
.LVL177:
	add	r3, r6, r3
	.loc 1 216 0
	mvn	r0, #0
.LVL178:
	str	r0, [r4, r2, asl #2]
	.loc 1 215 0
	strh	r1, [r3, #4]	@ movhi
.LVL179:
.L204:
.LBE197:
.LBE196:
.LBE212:
.LBE213:
.LBE214:
	.loc 1 812 0
	add	sp, sp, #8
	ldmfd	sp!, {r4, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L220:
	.align	2
.L219:
	.word	.LANCHOR0
	.word	41940223
	.word	55500
	.word	41940303
	.word	41940048
.LFE48:
	.size	neoYM2610Write, .-neoYM2610Write
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
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
	.type	panTable.3331, %object
	.size	panTable.3331, 16
panTable.3331:
	.word	0
	.word	0
	.word	127
	.word	64
	.type	panTable.3445, %object
	.size	panTable.3445, 16
panTable.3445:
	.word	0
	.word	127
	.word	0
	.word	64
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_ym2610, %object
	.size	g_ym2610, 732
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI0-.LFB47
	.byte	0xe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x4
	.sleb128 1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI1-.LFB50
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x7
	.sleb128 2
	.byte	0x11
	.uleb128 0x6
	.sleb128 3
	.byte	0x11
	.uleb128 0x4
	.sleb128 4
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI2-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI3-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI4-.LFB32
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
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI5-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI6-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI7-.LFB40
	.byte	0xe
	.uleb128 0x28
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
	.uleb128 0x7
	.sleb128 6
	.byte	0x11
	.uleb128 0x6
	.sleb128 7
	.byte	0x11
	.uleb128 0x4
	.sleb128 8
	.byte	0x11
	.uleb128 0x1
	.sleb128 9
	.byte	0x11
	.uleb128 0x0
	.sleb128 10
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI8-.LFB49
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
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI9-.LFB33
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0xa
	.sleb128 2
	.byte	0x11
	.uleb128 0x8
	.sleb128 3
	.byte	0x11
	.uleb128 0x7
	.sleb128 4
	.byte	0x11
	.uleb128 0x6
	.sleb128 5
	.byte	0x11
	.uleb128 0x4
	.sleb128 6
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI10-.LFB48
	.byte	0xe
	.uleb128 0x28
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
	.uleb128 0x7
	.sleb128 6
	.byte	0x11
	.uleb128 0x6
	.sleb128 7
	.byte	0x11
	.uleb128 0x4
	.sleb128 8
	.byte	0x11
	.uleb128 0x1
	.sleb128 9
	.byte	0x11
	.uleb128 0x0
	.sleb128 10
	.align	2
.LEFDE22:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB47-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB50-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB45-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB32-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LFB36-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL56-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL93-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL94-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL94-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LFB49-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE49-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97-.Ltext0
	.4byte	.LFE49-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LFB33-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL106-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LFB48-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL109-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "C:/Users/GRX/NeoDS/arm7/../common/source/NeoIPC.h"
	.file 5 "C:/Users/GRX/NeoDS/arm7/source/DrZ80.h"
	.file 6 "C:/Users/GRX/NeoDS/arm7/source/NeoCpuZ80.h"
	.file 7 "C:/Users/GRX/NeoDS/arm7/source/NeoSystem7.h"
	.file 8 "C:/Users/GRX/NeoDS/arm7/source/NeoYM2610.h"
	.section	.debug_info
	.4byte	0x12e9
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF185
	.byte	0x1
	.4byte	.LASF186
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2a
	.4byte	0x28
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x35
	.4byte	0x2f
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x2
	.byte	0x36
	.4byte	0x36
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0x4f
	.4byte	0x3d
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x50
	.4byte	0x44
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0x8
	.ascii	"u8\000"
	.byte	0x3
	.byte	0x62
	.4byte	0x79
	.uleb128 0x8
	.ascii	"u16\000"
	.byte	0x3
	.byte	0x63
	.4byte	0x8f
	.uleb128 0x8
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x64
	.4byte	0xa5
	.uleb128 0x8
	.ascii	"s16\000"
	.byte	0x3
	.byte	0x68
	.4byte	0x84
	.uleb128 0x8
	.ascii	"s32\000"
	.byte	0x3
	.byte	0x69
	.4byte	0x9a
	.uleb128 0x9
	.byte	0x1
	.byte	0x3
	.byte	0x7d
	.4byte	0x109
	.uleb128 0xa
	.4byte	.LASF17
	.sleb128 0
	.uleb128 0xa
	.4byte	.LASF18
	.sleb128 1
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x3
	.byte	0x7d
	.4byte	0xf4
	.uleb128 0xb
	.4byte	0xbe
	.4byte	0x124
	.uleb128 0xc
	.4byte	0x60
	.byte	0x6
	.byte	0x0
	.uleb128 0xb
	.4byte	0xbe
	.4byte	0x135
	.uleb128 0xd
	.4byte	0x60
	.2byte	0x1ff
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbe
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x1
	.byte	0x4
	.byte	0x3d
	.4byte	0x166
	.uleb128 0xa
	.4byte	.LASF20
	.sleb128 0
	.uleb128 0xa
	.4byte	.LASF21
	.sleb128 1
	.uleb128 0xa
	.4byte	.LASF22
	.sleb128 2
	.uleb128 0xa
	.4byte	.LASF23
	.sleb128 3
	.uleb128 0xa
	.4byte	.LASF24
	.sleb128 4
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.4byte	0x190
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x4
	.byte	0x48
	.4byte	0xd3
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x4
	.byte	0x49
	.4byte	0xd3
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x4
	.byte	0x4a
	.4byte	0xd3
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0xc
	.byte	0x4
	.byte	0x45
	.4byte	0x1cf
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x4
	.byte	0x46
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF29
	.byte	0x4
	.byte	0x4c
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x4
	.byte	0x4d
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.byte	0x4e
	.4byte	0x190
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x98
	.byte	0x4
	.byte	0x50
	.4byte	0x315
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x4
	.byte	0x52
	.4byte	0x135
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x4
	.byte	0x53
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x4
	.byte	0x54
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x4
	.byte	0x55
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x4
	.byte	0x56
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x4
	.byte	0x57
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x4
	.byte	0x58
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x4
	.byte	0x59
	.4byte	0x315
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x4
	.byte	0x5a
	.4byte	0x32b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x4
	.byte	0x5b
	.4byte	0x341
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x4
	.byte	0x5c
	.4byte	0x341
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x4
	.byte	0x5d
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x4
	.byte	0x60
	.4byte	0x351
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x4
	.byte	0x61
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x4
	.byte	0x63
	.4byte	0xc8
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x4
	.byte	0x65
	.4byte	0x114
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x4
	.byte	0x68
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x91
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x4
	.byte	0x69
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x92
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x4
	.byte	0x6a
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x93
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x4
	.byte	0x6b
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x4
	.byte	0x6c
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x95
	.byte	0x0
	.uleb128 0xb
	.4byte	0x325
	.4byte	0x325
	.uleb128 0xc
	.4byte	0x60
	.byte	0x6
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc8
	.uleb128 0xb
	.4byte	0x33b
	.4byte	0x33b
	.uleb128 0xc
	.4byte	0x60
	.byte	0x6
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1cf
	.uleb128 0xb
	.4byte	0xde
	.4byte	0x351
	.uleb128 0xc
	.4byte	0x60
	.byte	0x6
	.byte	0x0
	.uleb128 0xb
	.4byte	0xd3
	.4byte	0x361
	.uleb128 0xc
	.4byte	0x60
	.byte	0x3
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x70
	.byte	0x5
	.byte	0x13
	.4byte	0x520
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x5
	.byte	0x14
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x5
	.byte	0x15
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x5
	.byte	0x16
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x5
	.byte	0x17
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x5
	.byte	0x18
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0x5
	.byte	0x19
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x5
	.byte	0x1a
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x5
	.byte	0x1b
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0x5
	.byte	0x1c
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x5
	.byte	0x1d
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x5
	.byte	0x1e
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x5
	.byte	0x1f
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x5
	.byte	0x20
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x5
	.byte	0x21
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x5
	.byte	0x22
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x5
	.byte	0x23
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x5
	.byte	0x24
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0x5
	.byte	0x27
	.4byte	0x28
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0x5
	.byte	0x28
	.4byte	0x28
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0x5
	.byte	0x29
	.4byte	0x28
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x5
	.byte	0x2a
	.4byte	0x28
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x5
	.byte	0x2b
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x5
	.byte	0x2c
	.4byte	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x5
	.byte	0x2d
	.4byte	0x531
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x5
	.byte	0x2e
	.4byte	0x548
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x5
	.byte	0x2f
	.4byte	0x55e
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x5
	.byte	0x30
	.4byte	0x575
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x5
	.byte	0x31
	.4byte	0x55e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x5
	.byte	0x32
	.4byte	0x58b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x5
	.byte	0x33
	.4byte	0x5a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x5
	.byte	0x34
	.4byte	0x5a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x14
	.byte	0x1
	.4byte	0x531
	.uleb128 0x15
	.4byte	0x28
	.uleb128 0x15
	.4byte	0x36
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x520
	.uleb128 0x14
	.byte	0x1
	.4byte	0x548
	.uleb128 0x15
	.4byte	0x36
	.uleb128 0x15
	.4byte	0x36
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x537
	.uleb128 0x16
	.byte	0x1
	.4byte	0x28
	.4byte	0x55e
	.uleb128 0x15
	.4byte	0x36
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x54e
	.uleb128 0x14
	.byte	0x1
	.4byte	0x575
	.uleb128 0x15
	.4byte	0x36
	.uleb128 0x15
	.4byte	0x28
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x564
	.uleb128 0x16
	.byte	0x1
	.4byte	0x36
	.4byte	0x58b
	.uleb128 0x15
	.4byte	0x36
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57b
	.uleb128 0x16
	.byte	0x1
	.4byte	0x44
	.4byte	0x5a1
	.uleb128 0x15
	.4byte	0x36
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x591
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x6
	.byte	0xc
	.4byte	0x361
	.uleb128 0x17
	.4byte	.LASF88
	.2byte	0x8f0
	.byte	0x7
	.byte	0x1f
	.4byte	0x5eb
	.uleb128 0x18
	.ascii	"z80\000"
	.byte	0x7
	.byte	0x20
	.4byte	0x5a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF89
	.byte	0x7
	.byte	0x26
	.4byte	0x5eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0x7
	.byte	0x27
	.4byte	0x5fb
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.byte	0x0
	.uleb128 0xb
	.4byte	0x135
	.4byte	0x5fb
	.uleb128 0xc
	.4byte	0x60
	.byte	0x1f
	.byte	0x0
	.uleb128 0xb
	.4byte	0xbe
	.4byte	0x60c
	.uleb128 0xd
	.4byte	0x60
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x7
	.byte	0x28
	.4byte	0x5b2
	.uleb128 0x11
	.4byte	.LASF92
	.byte	0xc
	.byte	0x8
	.byte	0x4
	.4byte	0x66a
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x8
	.byte	0x5
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.ascii	"end\000"
	.byte	0x8
	.byte	0x6
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x8
	.byte	0x7
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x18
	.ascii	"pan\000"
	.byte	0x8
	.byte	0x8
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x8
	.byte	0x9
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0x8
	.byte	0xa
	.4byte	0x617
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0x18
	.byte	0x8
	.byte	0xc
	.4byte	0x700
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x8
	.byte	0xd
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x18
	.ascii	"end\000"
	.byte	0x8
	.byte	0xe
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x8
	.byte	0xf
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x8
	.byte	0x10
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x8
	.byte	0x11
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x8
	.byte	0x12
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0x8
	.byte	0x13
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x18
	.ascii	"pan\000"
	.byte	0x8
	.byte	0x14
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x8
	.byte	0x15
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF102
	.byte	0x8
	.byte	0x16
	.4byte	0x675
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x1
	.byte	0x8
	.byte	0x18
	.4byte	0x73c
	.uleb128 0xa
	.4byte	.LASF105
	.sleb128 0
	.uleb128 0xa
	.4byte	.LASF106
	.sleb128 1
	.uleb128 0xa
	.4byte	.LASF107
	.sleb128 2
	.uleb128 0xa
	.4byte	.LASF108
	.sleb128 3
	.uleb128 0xa
	.4byte	.LASF109
	.sleb128 4
	.uleb128 0xa
	.4byte	.LASF110
	.sleb128 5
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0xc
	.byte	0x8
	.byte	0x21
	.4byte	0x78f
	.uleb128 0x12
	.4byte	.LASF112
	.byte	0x8
	.byte	0x22
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0x8
	.byte	0x23
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x8
	.byte	0x24
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0x8
	.byte	0x25
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x12
	.4byte	.LASF116
	.byte	0x8
	.byte	0x26
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF117
	.byte	0x8
	.byte	0x27
	.4byte	0x73c
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0x4
	.byte	0x8
	.byte	0x29
	.4byte	0x7b5
	.uleb128 0x12
	.4byte	.LASF112
	.byte	0x8
	.byte	0x2a
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF119
	.byte	0x8
	.byte	0x2e
	.4byte	0x79a
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0x14
	.byte	0x8
	.byte	0x30
	.4byte	0x83d
	.uleb128 0x12
	.4byte	.LASF112
	.byte	0x8
	.byte	0x31
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF121
	.byte	0x8
	.byte	0x32
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0x8
	.byte	0x33
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF122
	.byte	0x8
	.byte	0x34
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0x8
	.byte	0x35
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF124
	.byte	0x8
	.byte	0x36
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0x8
	.byte	0x37
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0x8
	.byte	0x38
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF127
	.byte	0x8
	.byte	0x39
	.4byte	0x7c0
	.uleb128 0x17
	.4byte	.LASF128
	.2byte	0x2dc
	.byte	0x8
	.byte	0x3b
	.4byte	0x98e
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0x8
	.byte	0x3d
	.4byte	0x98e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF130
	.byte	0x8
	.byte	0x3e
	.4byte	0x700
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x18
	.ascii	"ssg\000"
	.byte	0x8
	.byte	0x3f
	.4byte	0x99e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF131
	.byte	0x8
	.byte	0x41
	.4byte	0x7b5
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.4byte	.LASF132
	.byte	0x8
	.byte	0x42
	.4byte	0x83d
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.4byte	.LASF133
	.byte	0x8
	.byte	0x44
	.4byte	0xe9
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x12
	.4byte	.LASF134
	.byte	0x8
	.byte	0x45
	.4byte	0xe9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x12
	.4byte	.LASF135
	.byte	0x8
	.byte	0x46
	.4byte	0xe9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x12
	.4byte	.LASF136
	.byte	0x8
	.byte	0x47
	.4byte	0xe9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x12
	.4byte	.LASF137
	.byte	0x8
	.byte	0x48
	.4byte	0xe9
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x12
	.4byte	.LASF138
	.byte	0x8
	.byte	0x49
	.4byte	0xe9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x12
	.4byte	.LASF139
	.byte	0x8
	.byte	0x4a
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x12
	.4byte	.LASF140
	.byte	0x8
	.byte	0x4b
	.4byte	0x9ae
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x18
	.ascii	"reg\000"
	.byte	0x8
	.byte	0x4d
	.4byte	0x124
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x12
	.4byte	.LASF141
	.byte	0x8
	.byte	0x4f
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d4
	.uleb128 0x12
	.4byte	.LASF142
	.byte	0x8
	.byte	0x50
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d5
	.uleb128 0x12
	.4byte	.LASF143
	.byte	0x8
	.byte	0x51
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d6
	.uleb128 0x12
	.4byte	.LASF144
	.byte	0x8
	.byte	0x53
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d7
	.uleb128 0x12
	.4byte	.LASF145
	.byte	0x8
	.byte	0x54
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d8
	.uleb128 0x18
	.ascii	"irq\000"
	.byte	0x8
	.byte	0x55
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x2d9
	.uleb128 0x12
	.4byte	.LASF146
	.byte	0x8
	.byte	0x56
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x2da
	.byte	0x0
	.uleb128 0xb
	.4byte	0x66a
	.4byte	0x99e
	.uleb128 0xc
	.4byte	0x60
	.byte	0x5
	.byte	0x0
	.uleb128 0xb
	.4byte	0x78f
	.4byte	0x9ae
	.uleb128 0xc
	.4byte	0x60
	.byte	0x2
	.byte	0x0
	.uleb128 0xb
	.4byte	0xe9
	.4byte	0x9be
	.uleb128 0xc
	.4byte	0x60
	.byte	0x6
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF147
	.byte	0x8
	.byte	0x57
	.4byte	0x848
	.uleb128 0x19
	.4byte	.LASF152
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.4byte	0x9df
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.byte	0x71
	.4byte	0xd3
	.byte	0x0
	.uleb128 0x1b
	.4byte	.LASF157
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.4byte	0xd3
	.byte	0x1
	.4byte	0x9fc
	.uleb128 0x1c
	.4byte	.LASF148
	.byte	0x1
	.byte	0xdb
	.4byte	0x9fc
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa02
	.uleb128 0x1d
	.4byte	0x78f
	.uleb128 0x1e
	.4byte	.LASF155
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.byte	0x1
	.4byte	0xa20
	.uleb128 0x1c
	.4byte	.LASF149
	.byte	0x1
	.byte	0x4c
	.4byte	0xd3
	.byte	0x0
	.uleb128 0x1f
	.4byte	.LASF150
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF151
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.uleb128 0x20
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x1c5
	.byte	0x1
	.4byte	0xa62
	.uleb128 0x21
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x1c8
	.4byte	0xa62
	.uleb128 0x22
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1c9
	.4byte	0xe9
	.uleb128 0x23
	.uleb128 0x21
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x1e6
	.4byte	0xa68
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x83d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x78f
	.uleb128 0x1e
	.4byte	.LASF156
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x1
	.4byte	0xa87
	.uleb128 0x1c
	.4byte	.LASF149
	.byte	0x1
	.byte	0x56
	.4byte	0xd3
	.byte	0x0
	.uleb128 0x1b
	.4byte	.LASF158
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.4byte	0x109
	.byte	0x1
	.4byte	0xaa4
	.uleb128 0x1c
	.4byte	.LASF159
	.byte	0x1
	.byte	0xf6
	.4byte	0xd3
	.byte	0x0
	.uleb128 0x24
	.4byte	.LASF187
	.byte	0x1
	.byte	0xfb
	.4byte	0xd3
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF188
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.byte	0x1
	.4byte	0xac9
	.uleb128 0x26
	.ascii	"ch\000"
	.byte	0x1
	.byte	0xd4
	.4byte	0xd3
	.byte	0x0
	.uleb128 0x20
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x1f0
	.byte	0x1
	.4byte	0xafd
	.uleb128 0x21
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x1f6
	.4byte	0xd3
	.uleb128 0x23
	.uleb128 0x21
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x1ff
	.4byte	0xd3
	.uleb128 0x21
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x201
	.4byte	0x33b
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.4byte	0xab0
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x5d
	.4byte	0xb1a
	.uleb128 0x28
	.4byte	0xabe
	.4byte	.LLST1
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x2eb
	.byte	0x1
	.4byte	0xbe
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LLST2
	.4byte	0xb77
	.uleb128 0x2a
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x2eb
	.4byte	0xc8
	.4byte	.LLST3
	.uleb128 0x21
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x2ed
	.4byte	0xd3
	.uleb128 0x2b
	.4byte	0x9c9
	.4byte	.LBB85
	.4byte	.LBE85
	.byte	0x1
	.2byte	0x2f8
	.uleb128 0x2c
	.4byte	.LBB86
	.4byte	.LBE86
	.uleb128 0x2d
	.4byte	0x9d5
	.4byte	.LLST4
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x346
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LLST5
	.4byte	0xc19
	.uleb128 0x2f
	.4byte	0xa07
	.4byte	.LBB87
	.4byte	.LBE87
	.byte	0x1
	.2byte	0x34c
	.4byte	0xbaa
	.uleb128 0x30
	.4byte	0xa14
	.byte	0x0
	.uleb128 0x31
	.4byte	0xa20
	.4byte	.LBB89
	.4byte	.LBE89
	.byte	0x1
	.2byte	0x34e
	.uleb128 0x2f
	.4byte	0xa07
	.4byte	.LBB91
	.4byte	.LBE91
	.byte	0x1
	.2byte	0x355
	.4byte	0xbd4
	.uleb128 0x30
	.4byte	0xa14
	.byte	0x0
	.uleb128 0x31
	.4byte	0xa28
	.4byte	.LBB93
	.4byte	.LBE93
	.byte	0x1
	.2byte	0x357
	.uleb128 0x2b
	.4byte	0xa30
	.4byte	.LBB95
	.4byte	.LBE95
	.byte	0x1
	.2byte	0x35a
	.uleb128 0x2c
	.4byte	.LBB96
	.4byte	.LBE96
	.uleb128 0x32
	.4byte	0xa3d
	.uleb128 0x32
	.4byte	0xa49
	.uleb128 0x2c
	.4byte	.LBB97
	.4byte	.LBE97
	.uleb128 0x32
	.4byte	0xa54
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x20b
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST6
	.4byte	0xc60
	.uleb128 0x34
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x20e
	.4byte	0xc60
	.byte	0x5
	.byte	0x3
	.4byte	panTable.3331
	.uleb128 0x21
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x210
	.4byte	0xd3
	.uleb128 0x35
	.ascii	"pan\000"
	.byte	0x1
	.2byte	0x211
	.4byte	0xd3
	.4byte	.LLST7
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x351
	.uleb128 0x36
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x281
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST8
	.4byte	0xce8
	.uleb128 0x2a
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x281
	.4byte	0xe9
	.4byte	.LLST9
	.uleb128 0x34
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x284
	.4byte	0xce8
	.byte	0x5
	.byte	0x3
	.4byte	panTable.3445
	.uleb128 0x37
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x286
	.4byte	0xd3
	.4byte	.LLST10
	.uleb128 0x35
	.ascii	"pan\000"
	.byte	0x1
	.2byte	0x287
	.4byte	0xd3
	.4byte	.LLST11
	.uleb128 0x21
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x291
	.4byte	0xd3
	.uleb128 0x21
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x292
	.4byte	0xd3
	.uleb128 0x37
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x296
	.4byte	0xd3
	.4byte	.LLST12
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x351
	.uleb128 0x38
	.4byte	.LASF171
	.byte	0x1
	.byte	0x7e
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LLST13
	.4byte	0xd70
	.uleb128 0x39
	.ascii	"r\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0xc8
	.4byte	.LLST14
	.uleb128 0x39
	.ascii	"v\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0xbe
	.4byte	.LLST15
	.uleb128 0x3a
	.4byte	0xa6e
	.4byte	.LBB98
	.4byte	.LBE98
	.byte	0x1
	.byte	0x96
	.4byte	0xd38
	.uleb128 0x30
	.4byte	0xa7b
	.byte	0x0
	.uleb128 0x3a
	.4byte	0xa6e
	.4byte	.LBB100
	.4byte	.LBE100
	.byte	0x1
	.byte	0x97
	.4byte	0xd51
	.uleb128 0x30
	.4byte	0xa7b
	.byte	0x0
	.uleb128 0x3b
	.4byte	0xa28
	.4byte	.LBB102
	.4byte	.LBE102
	.byte	0x1
	.byte	0x9c
	.uleb128 0x3b
	.4byte	0xa20
	.4byte	.LBB104
	.4byte	.LBE104
	.byte	0x1
	.byte	0xa9
	.byte	0x0
	.uleb128 0x38
	.4byte	.LASF172
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LLST16
	.4byte	0xda7
	.uleb128 0x3c
	.4byte	.LASF148
	.byte	0x1
	.byte	0xe0
	.4byte	0x9fc
	.4byte	.LLST17
	.uleb128 0x3d
	.4byte	.LASF162
	.byte	0x1
	.byte	0xe2
	.4byte	0xe9
	.4byte	.LLST18
	.byte	0x0
	.uleb128 0x36
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x107
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST19
	.4byte	0xe11
	.uleb128 0x3e
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x107
	.4byte	0xd3
	.4byte	.LLST20
	.uleb128 0x2f
	.4byte	0xa87
	.4byte	.LBB106
	.4byte	.LBE106
	.byte	0x1
	.2byte	0x109
	.4byte	0xdea
	.uleb128 0x30
	.4byte	0xa98
	.byte	0x0
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x22
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x10a
	.4byte	0xe9
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x37
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x10d
	.4byte	0xa68
	.4byte	.LLST21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x129
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST22
	.4byte	0xe80
	.uleb128 0x2a
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x129
	.4byte	0xd3
	.4byte	.LLST23
	.uleb128 0x2a
	.ascii	"v\000"
	.byte	0x1
	.2byte	0x129
	.4byte	0xbe
	.4byte	.LLST24
	.uleb128 0x37
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x12b
	.4byte	0xa68
	.4byte	.LLST25
	.uleb128 0x22
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x12c
	.4byte	0xe9
	.uleb128 0x35
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x12d
	.4byte	0xe9
	.4byte	.LLST26
	.uleb128 0x40
	.4byte	0xaa4
	.4byte	.LBB113
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.2byte	0x153
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x32e
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LLST27
	.4byte	0xea8
	.uleb128 0x35
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x330
	.4byte	0xd3
	.4byte	.LLST28
	.byte	0x0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF178
	.byte	0x1
	.byte	0xb8
	.byte	0x1
	.4byte	0x33b
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LLST29
	.4byte	0xf12
	.uleb128 0x39
	.ascii	"ch\000"
	.byte	0x1
	.byte	0xb8
	.4byte	0xd3
	.4byte	.LLST30
	.uleb128 0x42
	.4byte	.LASF179
	.byte	0x1
	.byte	0xba
	.4byte	0xf12
	.uleb128 0x43
	.ascii	"pos\000"
	.byte	0x1
	.byte	0xbb
	.4byte	0xe9
	.byte	0x1
	.byte	0x56
	.uleb128 0x3d
	.4byte	.LASF180
	.byte	0x1
	.byte	0xbc
	.4byte	0xe9
	.4byte	.LLST31
	.uleb128 0x2c
	.4byte	.LBB117
	.4byte	.LBE117
	.uleb128 0x44
	.4byte	.LASF163
	.byte	0x1
	.byte	0xc2
	.4byte	0x33b
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.4byte	0xe9
	.uleb128 0x45
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x221
	.byte	0x1
	.byte	0x1
	.4byte	0xf8c
	.uleb128 0x46
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x221
	.4byte	0xd3
	.uleb128 0x46
	.ascii	"v\000"
	.byte	0x1
	.2byte	0x221
	.4byte	0xbe
	.uleb128 0x22
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x223
	.4byte	0xd3
	.uleb128 0x22
	.ascii	"v16\000"
	.byte	0x1
	.2byte	0x224
	.4byte	0xc8
	.uleb128 0x23
	.uleb128 0x21
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x25a
	.4byte	0x33b
	.uleb128 0x47
	.4byte	0xf7c
	.uleb128 0x21
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x234
	.4byte	0x33b
	.uleb128 0x23
	.uleb128 0x21
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x236
	.4byte	0xd3
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x21
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x242
	.4byte	0x33b
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x45
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x29c
	.byte	0x1
	.byte	0x1
	.4byte	0xff6
	.uleb128 0x46
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x29c
	.4byte	0xd3
	.uleb128 0x46
	.ascii	"v\000"
	.byte	0x1
	.2byte	0x29c
	.4byte	0xbe
	.uleb128 0x22
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x29e
	.4byte	0xff6
	.uleb128 0x22
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x29f
	.4byte	0xd3
	.uleb128 0x47
	.4byte	0xfd5
	.uleb128 0x21
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x2a9
	.4byte	0x33b
	.byte	0x0
	.uleb128 0x47
	.4byte	0xfe7
	.uleb128 0x21
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x2b6
	.4byte	0x33b
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x21
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x2df
	.4byte	0x33b
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.4byte	0xd3
	.uleb128 0x48
	.byte	0x1
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x2fe
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LLST32
	.4byte	0x12a1
	.uleb128 0x2a
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x2fe
	.4byte	0xc8
	.4byte	.LLST33
	.uleb128 0x2a
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x2fe
	.4byte	0xbe
	.4byte	.LLST34
	.uleb128 0x37
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x300
	.4byte	0xd3
	.4byte	.LLST35
	.uleb128 0x49
	.4byte	0xf17
	.4byte	.LBB154
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.2byte	0x312
	.4byte	0x11c8
	.uleb128 0x30
	.4byte	0xf2f
	.uleb128 0x30
	.4byte	0xf25
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0x68
	.uleb128 0x2d
	.4byte	0xf39
	.4byte	.LLST36
	.uleb128 0x32
	.4byte	0xf43
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0x80
	.uleb128 0x2d
	.4byte	0xf50
	.4byte	.LLST37
	.uleb128 0x49
	.4byte	0xac9
	.4byte	.LBB158
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.2byte	0x26d
	.4byte	0x10d8
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0xb0
	.uleb128 0x2d
	.4byte	0xad6
	.4byte	.LLST38
	.uleb128 0x2c
	.4byte	.LBB160
	.4byte	.LBE160
	.uleb128 0x2d
	.4byte	0xae3
	.4byte	.LLST39
	.uleb128 0x2d
	.4byte	0xaef
	.4byte	.LLST40
	.uleb128 0x4a
	.4byte	0xab0
	.4byte	.LBB161
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.2byte	0x206
	.uleb128 0x4b
	.4byte	0xb10
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0xab0
	.4byte	.LBB166
	.4byte	.LBE166
	.byte	0x1
	.2byte	0x25e
	.4byte	0x10f4
	.uleb128 0x4b
	.4byte	0xb10
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x4c
	.4byte	.Ldebug_ranges0+0xe0
	.4byte	0x1143
	.uleb128 0x2d
	.4byte	0xf7d
	.4byte	.LLST41
	.uleb128 0x49
	.4byte	0x9c9
	.4byte	.LBB171
	.4byte	.Ldebug_ranges0+0xf8
	.byte	0x1
	.2byte	0x241
	.4byte	0x112a
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0x110
	.uleb128 0x2d
	.4byte	0x9d5
	.4byte	.LLST42
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	0xab0
	.4byte	.LBB175
	.4byte	.LBE175
	.byte	0x1
	.2byte	0x245
	.uleb128 0x4b
	.4byte	0xb10
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.4byte	.Ldebug_ranges0+0x128
	.4byte	0x11a5
	.uleb128 0x2d
	.4byte	0xf61
	.4byte	.LLST43
	.uleb128 0x4c
	.4byte	.Ldebug_ranges0+0x140
	.4byte	0x1180
	.uleb128 0x2d
	.4byte	0xf6e
	.4byte	.LLST44
	.uleb128 0x2b
	.4byte	0xab0
	.4byte	.LBB179
	.4byte	.LBE179
	.byte	0x1
	.2byte	0x23d
	.uleb128 0x4b
	.4byte	0xb10
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	0x9c9
	.4byte	.LBB181
	.4byte	.LBE181
	.byte	0x1
	.2byte	0x233
	.uleb128 0x2c
	.4byte	.LBB182
	.4byte	.LBE182
	.uleb128 0x2d
	.4byte	0x9d5
	.4byte	.LLST45
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4a
	.4byte	0x9c9
	.4byte	.LBB184
	.4byte	.Ldebug_ranges0+0x158
	.byte	0x1
	.2byte	0x277
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0x178
	.uleb128 0x2d
	.4byte	0x9d5
	.4byte	.LLST46
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x4a
	.4byte	0xf8c
	.4byte	.LBB193
	.4byte	.Ldebug_ranges0+0x198
	.byte	0x1
	.2byte	0x326
	.uleb128 0x30
	.4byte	0xfa4
	.uleb128 0x30
	.4byte	0xf9a
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0x1b0
	.uleb128 0x2d
	.4byte	0xfae
	.4byte	.LLST47
	.uleb128 0x2d
	.4byte	0xfb9
	.4byte	.LLST48
	.uleb128 0x4c
	.4byte	.Ldebug_ranges0+0x1c8
	.4byte	0x1224
	.uleb128 0x2d
	.4byte	0xfe8
	.4byte	.LLST49
	.uleb128 0x2b
	.4byte	0xab0
	.4byte	.LBB196
	.4byte	.LBE196
	.byte	0x1
	.2byte	0x2e3
	.uleb128 0x4b
	.4byte	0xb10
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.4byte	.Ldebug_ranges0+0x1e0
	.4byte	0x124f
	.uleb128 0x2d
	.4byte	0xfda
	.4byte	.LLST50
	.uleb128 0x4a
	.4byte	0xab0
	.4byte	.LBB200
	.4byte	.Ldebug_ranges0+0x1f8
	.byte	0x1
	.2byte	0x2b9
	.uleb128 0x4b
	.4byte	0xb10
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.4byte	.Ldebug_ranges0+0x210
	.4byte	0x127a
	.uleb128 0x2d
	.4byte	0xfc8
	.4byte	.LLST51
	.uleb128 0x4a
	.4byte	0xab0
	.4byte	.LBB206
	.4byte	.Ldebug_ranges0+0x228
	.byte	0x1
	.2byte	0x2ad
	.uleb128 0x4b
	.4byte	0xb10
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.4byte	0x9c9
	.4byte	.LBB210
	.4byte	.LBE210
	.byte	0x1
	.2byte	0x2a3
	.uleb128 0x2c
	.4byte	.LBB211
	.4byte	.LBE211
	.uleb128 0x2d
	.4byte	0x9d5
	.4byte	.LLST52
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
	.4byte	.LASF183
	.byte	0x1
	.byte	0x37
	.4byte	0x9be
	.byte	0x5
	.byte	0x3
	.4byte	g_ym2610
	.uleb128 0xb
	.4byte	0xbe
	.4byte	0x12c2
	.uleb128 0xc
	.4byte	0x60
	.byte	0x1f
	.byte	0x0
	.uleb128 0x44
	.4byte	.LASF184
	.byte	0x1
	.byte	0x47
	.4byte	0x12d3
	.byte	0x5
	.byte	0x3
	.4byte	g_ssgVolumeTable
	.uleb128 0x1d
	.4byte	0x12b2
	.uleb128 0x4d
	.4byte	.LASF190
	.byte	0x7
	.byte	0x39
	.4byte	0x12e6
	.byte	0x1
	.byte	0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x4
	.4byte	0x60c
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
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x4c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
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
	.4byte	0x12ed
	.4byte	0xafd
	.ascii	"ymFinishChannelControl\000"
	.4byte	0xb1a
	.ascii	"neoYM2610Read\000"
	.4byte	0xb77
	.ascii	"neoYM2610Process\000"
	.4byte	0xe80
	.ascii	"neoYM2610Init\000"
	.4byte	0xea8
	.ascii	"ymGetChannelControl\000"
	.4byte	0xffb
	.ascii	"neoYM2610Write\000"
	.4byte	0x12d8
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
	.4byte	.LBB108-.Ltext0
	.4byte	.LBE108-.Ltext0
	.4byte	.LBB112-.Ltext0
	.4byte	.LBE112-.Ltext0
	.4byte	.LBB111-.Ltext0
	.4byte	.LBE111-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB110-.Ltext0
	.4byte	.LBE110-.Ltext0
	.4byte	.LBB109-.Ltext0
	.4byte	.LBE109-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB113-.Ltext0
	.4byte	.LBE113-.Ltext0
	.4byte	.LBB116-.Ltext0
	.4byte	.LBE116-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB154-.Ltext0
	.4byte	.LBE154-.Ltext0
	.4byte	.LBB192-.Ltext0
	.4byte	.LBE192-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB155-.Ltext0
	.4byte	.LBE155-.Ltext0
	.4byte	.LBB191-.Ltext0
	.4byte	.LBE191-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB156-.Ltext0
	.4byte	.LBE156-.Ltext0
	.4byte	.LBB190-.Ltext0
	.4byte	.LBE190-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB158-.Ltext0
	.4byte	.LBE158-.Ltext0
	.4byte	.LBB157-.Ltext0
	.4byte	.LBE157-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB159-.Ltext0
	.4byte	.LBE159-.Ltext0
	.4byte	.LBB165-.Ltext0
	.4byte	.LBE165-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB161-.Ltext0
	.4byte	.LBE161-.Ltext0
	.4byte	.LBB164-.Ltext0
	.4byte	.LBE164-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB170-.Ltext0
	.4byte	.LBE170-.Ltext0
	.4byte	.LBB168-.Ltext0
	.4byte	.LBE168-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB171-.Ltext0
	.4byte	.LBE171-.Ltext0
	.4byte	.LBB174-.Ltext0
	.4byte	.LBE174-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB172-.Ltext0
	.4byte	.LBE172-.Ltext0
	.4byte	.LBB173-.Ltext0
	.4byte	.LBE173-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB177-.Ltext0
	.4byte	.LBE177-.Ltext0
	.4byte	.LBB169-.Ltext0
	.4byte	.LBE169-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB178-.Ltext0
	.4byte	.LBE178-.Ltext0
	.4byte	.LBB183-.Ltext0
	.4byte	.LBE183-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB184-.Ltext0
	.4byte	.LBE184-.Ltext0
	.4byte	.LBB189-.Ltext0
	.4byte	.LBE189-.Ltext0
	.4byte	.LBB188-.Ltext0
	.4byte	.LBE188-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB186-.Ltext0
	.4byte	.LBE186-.Ltext0
	.4byte	.LBB187-.Ltext0
	.4byte	.LBE187-.Ltext0
	.4byte	.LBB185-.Ltext0
	.4byte	.LBE185-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB193-.Ltext0
	.4byte	.LBE193-.Ltext0
	.4byte	.LBB214-.Ltext0
	.4byte	.LBE214-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB194-.Ltext0
	.4byte	.LBE194-.Ltext0
	.4byte	.LBB213-.Ltext0
	.4byte	.LBE213-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB195-.Ltext0
	.4byte	.LBE195-.Ltext0
	.4byte	.LBB212-.Ltext0
	.4byte	.LBE212-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB199-.Ltext0
	.4byte	.LBE199-.Ltext0
	.4byte	.LBB198-.Ltext0
	.4byte	.LBE198-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB200-.Ltext0
	.4byte	.LBE200-.Ltext0
	.4byte	.LBB203-.Ltext0
	.4byte	.LBE203-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB205-.Ltext0
	.4byte	.LBE205-.Ltext0
	.4byte	.LBB204-.Ltext0
	.4byte	.LBE204-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB206-.Ltext0
	.4byte	.LBE206-.Ltext0
	.4byte	.LBB209-.Ltext0
	.4byte	.LBE209-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF88:
	.ascii	"_TNeoContext7\000"
.LASF29:
	.ascii	"audioFrame\000"
.LASF46:
	.ascii	"arm9Args\000"
.LASF186:
	.ascii	"C:/Users/GRX/NeoDS/arm7/source/NeoYM2610.c\000"
.LASF145:
	.ascii	"adpcmArriveEnd\000"
.LASF37:
	.ascii	"arm9FifoSent\000"
.LASF185:
	.ascii	"GNU C 4.4.3\000"
.LASF104:
	.ascii	"_TSSGChannelState\000"
.LASF172:
	.ascii	"ymSSGCalculateFreq\000"
.LASF31:
	.ascii	"TNeoAdpcmControl\000"
.LASF77:
	.ascii	"z80irqvector\000"
.LASF158:
	.ascii	"ymSSGIsNoiseChannel\000"
.LASF92:
	.ascii	"_TADPCMAChannel\000"
.LASF50:
	.ascii	"globalAudioEnabled\000"
.LASF41:
	.ascii	"pAdpcmBuffer\000"
.LASF95:
	.ascii	"flagMask\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF33:
	.ascii	"_TNeoIPC\000"
.LASF135:
	.ascii	"timerAValue\000"
.LASF73:
	.ascii	"Z80_IRQ\000"
.LASF103:
	.ascii	"_TNeoAdpcmCommand\000"
.LASF176:
	.ascii	"neoYM2610Init\000"
.LASF94:
	.ascii	"level\000"
.LASF87:
	.ascii	"TDrZ80Context\000"
.LASF49:
	.ascii	"adpcmaFinished\000"
.LASF27:
	.ascii	"frequency\000"
.LASF143:
	.ascii	"mode\000"
.LASF132:
	.ascii	"ssgEnvelope\000"
.LASF184:
	.ascii	"g_ssgVolumeTable\000"
.LASF30:
	.ascii	"timeStamp\000"
.LASF139:
	.ascii	"irqStatus\000"
.LASF137:
	.ascii	"timerATicks\000"
.LASF42:
	.ascii	"adpcmControl\000"
.LASF85:
	.ascii	"z80_rebaseSP\000"
.LASF107:
	.ascii	"SSG_CHANNEL_NOISE\000"
.LASF133:
	.ascii	"timerA\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF177:
	.ascii	"neoYM2610Read\000"
.LASF146:
	.ascii	"noiseChannelUsed\000"
.LASF79:
	.ascii	"z80_write8\000"
.LASF113:
	.ascii	"volume\000"
.LASF32:
	.ascii	"_TNeoAdpcaControl\000"
.LASF15:
	.ascii	"float\000"
.LASF168:
	.ascii	"shift\000"
.LASF78:
	.ascii	"z80_irq_callback\000"
.LASF121:
	.ascii	"count\000"
.LASF122:
	.ascii	"index\000"
.LASF11:
	.ascii	"int16_t\000"
.LASF152:
	.ascii	"ymUpdateArriveEnd\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF81:
	.ascii	"z80_in\000"
.LASF181:
	.ascii	"ymADPCMBWrite\000"
.LASF68:
	.ascii	"Z80A2\000"
.LASF56:
	.ascii	"Z80PC\000"
.LASF80:
	.ascii	"z80_write16\000"
.LASF110:
	.ascii	"SSG_CHANNEL_WAIT_NOISETONE\000"
.LASF48:
	.ascii	"audioStreamCount\000"
.LASF22:
	.ascii	"NEOADPCM_START\000"
.LASF83:
	.ascii	"z80_read8\000"
.LASF144:
	.ascii	"adpcmaTotalLevel\000"
.LASF150:
	.ascii	"ymTimerASet\000"
.LASF100:
	.ascii	"portstate\000"
.LASF59:
	.ascii	"Z80BC\000"
.LASF82:
	.ascii	"z80_out\000"
.LASF188:
	.ascii	"ymFinishChannelControl\000"
.LASF153:
	.ascii	"ymSSGEnvelopeProcess\000"
.LASF189:
	.ascii	"neoYM2610Write\000"
.LASF26:
	.ascii	"endAddr\000"
.LASF159:
	.ascii	"hwch\000"
.LASF51:
	.ascii	"audioCommand\000"
.LASF162:
	.ascii	"freq\000"
.LASF18:
	.ascii	"true\000"
.LASF84:
	.ascii	"z80_read16\000"
.LASF167:
	.ascii	"multiply\000"
.LASF123:
	.ascii	"attack\000"
.LASF9:
	.ascii	"char\000"
.LASF179:
	.ascii	"pos9\000"
.LASF45:
	.ascii	"arm7Alive\000"
.LASF170:
	.ascii	"ymADPCMACalculateVolume\000"
.LASF148:
	.ascii	"pChannel\000"
.LASF76:
	.ascii	"spare\000"
.LASF97:
	.ascii	"_TADPCMBChannel\000"
.LASF155:
	.ascii	"ymInterruptSet\000"
.LASF174:
	.ascii	"ymSSGWrite\000"
.LASF39:
	.ascii	"arm7FifoSent\000"
.LASF55:
	.ascii	"DrZ80\000"
.LASF10:
	.ascii	"uint8_t\000"
.LASF62:
	.ascii	"Z80SP\000"
.LASF60:
	.ascii	"Z80DE\000"
.LASF115:
	.ascii	"hwChannel\000"
.LASF140:
	.ascii	"queuePos\000"
.LASF160:
	.ascii	"ymADPCMBCalculateFreq\000"
.LASF118:
	.ascii	"_TSSGNoise\000"
.LASF5:
	.ascii	"long long int\000"
.LASF43:
	.ascii	"adpcmQueuePos7\000"
.LASF44:
	.ascii	"adpcmQueuePos9\000"
.LASF40:
	.ascii	"arm7FifoProcessed\000"
.LASF178:
	.ascii	"ymGetChannelControl\000"
.LASF19:
	.ascii	"bool\000"
.LASF38:
	.ascii	"arm9FifoProcessed\000"
.LASF129:
	.ascii	"adpcma\000"
.LASF130:
	.ascii	"adpcmb\000"
.LASF114:
	.ascii	"envelopeEnable\000"
.LASF105:
	.ascii	"SSG_CHANNEL_DISABLE\000"
.LASF157:
	.ascii	"ymSSGVolume\000"
.LASF90:
	.ascii	"z80Ram\000"
.LASF28:
	.ascii	"command\000"
.LASF69:
	.ascii	"Z80F2\000"
.LASF63:
	.ascii	"Z80PC_BASE\000"
.LASF183:
	.ascii	"g_ym2610\000"
.LASF166:
	.ascii	"panTable\000"
.LASF35:
	.ascii	"audioProgramSize\000"
.LASF171:
	.ascii	"ymOPNModeWrite\000"
.LASF12:
	.ascii	"uint16_t\000"
.LASF111:
	.ascii	"_TSSGChannel\000"
.LASF190:
	.ascii	"g_neo7\000"
.LASF23:
	.ascii	"NEOADPCM_ENDADDR\000"
.LASF134:
	.ascii	"timerB\000"
.LASF25:
	.ascii	"startAddr\000"
.LASF2:
	.ascii	"short int\000"
.LASF7:
	.ascii	"long int\000"
.LASF119:
	.ascii	"TSSGNoise\000"
.LASF36:
	.ascii	"audioRomSize\000"
.LASF24:
	.ascii	"NEOADPCM_FREQUENCY\000"
.LASF156:
	.ascii	"ymInterruptReset\000"
.LASF136:
	.ascii	"timerBValue\000"
.LASF47:
	.ascii	"arm9Return\000"
.LASF53:
	.ascii	"audioCommandPending\000"
.LASF165:
	.ascii	"ymADPCMBCalculateVolume\000"
.LASF182:
	.ascii	"ymADPCMAWrite\000"
.LASF149:
	.ascii	"flag\000"
.LASF126:
	.ascii	"holding\000"
.LASF61:
	.ascii	"Z80HL\000"
.LASF187:
	.ascii	"ymSSGAllocNoiseChannel\000"
.LASF71:
	.ascii	"Z80DE2\000"
.LASF54:
	.ascii	"misc\000"
.LASF93:
	.ascii	"start\000"
.LASF127:
	.ascii	"TSSGEnvelope\000"
.LASF128:
	.ascii	"_TYM2610Context\000"
.LASF125:
	.ascii	"hold\000"
.LASF72:
	.ascii	"Z80HL2\000"
.LASF99:
	.ascii	"lastDelta\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF108:
	.ascii	"SSG_CHANNEL_NOISETONE\000"
.LASF142:
	.ascii	"address\000"
.LASF74:
	.ascii	"Z80IF\000"
.LASF89:
	.ascii	"z80MemTable\000"
.LASF138:
	.ascii	"timerBTicks\000"
.LASF75:
	.ascii	"Z80IM\000"
.LASF13:
	.ascii	"int32_t\000"
.LASF65:
	.ascii	"Z80IX\000"
.LASF66:
	.ascii	"Z80IY\000"
.LASF70:
	.ascii	"Z80BC2\000"
.LASF147:
	.ascii	"TYM2610Context\000"
.LASF101:
	.ascii	"control\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF17:
	.ascii	"false\000"
.LASF124:
	.ascii	"alternate\000"
.LASF163:
	.ascii	"pControl\000"
.LASF161:
	.ascii	"changed\000"
.LASF164:
	.ascii	"addr\000"
.LASF116:
	.ascii	"state\000"
.LASF64:
	.ascii	"Z80SP_BASE\000"
.LASF173:
	.ascii	"ymSSGFreeChannel\000"
.LASF154:
	.ascii	"pEnv\000"
.LASF151:
	.ascii	"ymTimerBSet\000"
.LASF21:
	.ascii	"NEOADPCM_STOP\000"
.LASF91:
	.ascii	"TNeoContext7\000"
.LASF52:
	.ascii	"audioResult\000"
.LASF0:
	.ascii	"signed char\000"
.LASF112:
	.ascii	"period\000"
.LASF98:
	.ascii	"delta\000"
.LASF57:
	.ascii	"Z80A\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF58:
	.ascii	"Z80F\000"
.LASF175:
	.ascii	"neoYM2610Process\000"
.LASF67:
	.ascii	"Z80I\000"
.LASF16:
	.ascii	"double\000"
.LASF131:
	.ascii	"noise\000"
.LASF169:
	.ascii	"hwVolume\000"
.LASF20:
	.ascii	"NEOADPCM_NONE\000"
.LASF106:
	.ascii	"SSG_CHANNEL_TONE\000"
.LASF86:
	.ascii	"z80_rebasePC\000"
.LASF120:
	.ascii	"_TSSGEnvelope\000"
.LASF34:
	.ascii	"pAudioProgram0\000"
.LASF117:
	.ascii	"TSSGChannel\000"
.LASF96:
	.ascii	"TADPCMAChannel\000"
.LASF141:
	.ascii	"addrPort\000"
.LASF109:
	.ascii	"SSG_CHANNEL_WAIT_NOISE\000"
.LASF180:
	.ascii	"pendingCount\000"
.LASF102:
	.ascii	"TADPCMBChannel\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
