	.file	"NeoVideoFixed.arm.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.type	dmaCopyWords, %function
dmaCopyWords:
.LFB2:
	.file 1 "C:/devkitPro/libnds/include/nds/dma.h"
	.loc 1 93 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	.loc 1 94 0
	mov	ip, #12
	mul	ip, r0, ip
	ldr	r0, .L7
.LVL1:
	.loc 1 96 0
	mov	r3, r3, lsr #2
.LVL2:
	.loc 1 94 0
	str	r1, [ip, r0]
	.loc 1 95 0
	ldr	r1, .L7+4
.LVL3:
	.loc 1 93 0
	str	lr, [sp, #-4]!
.LCFI0:
	.loc 1 95 0
	str	r2, [ip, r1]
	.loc 1 96 0
	ldr	r2, .L7+8
.LVL4:
	orr	r3, r3, #-2080374784
	add	lr, ip, #67108864
	str	r3, [ip, r2]
	add	lr, lr, #184
.L2:
	.loc 1 97 0
	ldr	r3, [lr, #0]
	cmp	r3, #0
	blt	.L2
	.loc 1 98 0
	ldr	pc, [sp], #4
.L8:
	.align	2
.L7:
	.word	67109040
	.word	67109044
	.word	67109048
.LFE2:
	.size	dmaCopyWords, .-dmaCopyWords
	.align	2
	.global	neoFixedExit
	.type	neoFixedExit, %function
neoFixedExit:
.LFB108:
	.file 2 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoVideoFixed.arm.c"
	.loc 2 82 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ lr needed for prologue
	.loc 2 84 0
	bx	lr
.LFE108:
	.size	neoFixedExit, .-neoFixedExit
	.align	2
	.global	neoLoadTiles
	.type	neoLoadTiles, %function
neoLoadTiles:
.LFB110:
	.loc 2 210 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r8, lr}
.LCFI1:
	.loc 2 215 0
	ldr	r3, .L16
	ldr	r6, .L16+4
.LVL5:
	ldr	r8, [r3, #0]
	ldr	r5, .L16+8
	.loc 2 210 0
	sub	sp, sp, #4
.LCFI2:
	.loc 2 215 0
	mov	r4, #0
.LVL6:
	b	.L12
.LVL7:
.L13:
	.loc 2 216 0
	ldr	r2, [r5, #-4]
	bl	dmaCopyWords
.L12:
	mov	r3, #256
	.loc 2 215 0
	cmp	r4, r8
	.loc 2 216 0
	mov	r1, r6
	mov	r0, #3
	.loc 2 217 0
	add	r6, r6, r3
	.loc 2 215 0
	add	r4, r4, #1
	add	r5, r5, #4
	bne	.L13
	.loc 2 221 0
	ldr	r1, [r7, #476]
	ldr	r2, .L16+12
	add	r3, r3, #3840
	.loc 2 222 0
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r8, lr}
	.loc 2 221 0
	b	dmaCopyWords
.L17:
	.align	2
.L16:
	.word	g_tileLoadIndex
	.word	g_tileLoadBuffer
	.word	g_tileLoadAddr
	.word	100720640
.LFE110:
	.size	neoLoadTiles, .-neoLoadTiles
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.align	2
	.global	neoDrawFixed
	.type	neoDrawFixed, %function
neoDrawFixed:
.LFB109:
	.loc 2 87 0
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
.LCFI3:
	.loc 2 89 0
	ldr	r1, .L57
	.loc 2 103 0
	ldr	r3, .L57+4
	mov	r8, #0
	.loc 2 89 0
	ldr	r6, [r1, #0]
	.loc 2 90 0
	ldr	lr, [r1, #8]
	.loc 2 103 0
	str	r8, [r3, #0]
	.loc 2 100 0
	ldr	r3, .L57+8
	.loc 2 113 0
	rsb	r2, r6, lr
	.loc 2 100 0
	ldr	r3, [r3, #16]
	.loc 2 87 0
	sub	sp, sp, #48
.LCFI4:
	.loc 2 111 0
	mov	r0, r6, asl #8
	.loc 2 113 0
	add	r2, r2, #1
	.loc 2 100 0
	str	r3, [sp, #32]
.LVL8:
	.loc 2 91 0
	ldr	r5, [r1, #4]
	.loc 2 92 0
	ldr	ip, [r1, #12]
	.loc 2 113 0
	mov	r2, r2, asl #8
	.loc 2 111 0
	str	r0, [r7, #480]
	.loc 2 112 0
	ldr	r1, [r1, #4]
	.loc 2 113 0
	add	r3, r2, #255
	cmp	r2, r8
	movlt	r2, r3
	.loc 2 105 0
	ldr	r4, [r7, #512]
	.loc 2 114 0
	rsb	r0, r5, ip
	.loc 2 113 0
	mov	r3, #488
	.loc 2 112 0
	mov	r1, r1, asl #4
	.loc 2 113 0
	mov	r2, r2, asr #8
	strh	r2, [r7, r3]	@ movhi
	.loc 2 112 0
	str	r1, [r7, #484]
	.loc 2 114 0
	add	r0, r0, #1
	.loc 2 105 0
	ldr	r2, [sp, #32]
	cmp	r4, r8
	.loc 2 114 0
	mov	r0, r0, asr #4
	.loc 2 90 0
	add	lr, lr, #7
	.loc 2 92 0
	add	ip, ip, #7
	.loc 2 105 0
	moveq	r2, r8
	.loc 2 90 0
	mov	lr, lr, asr #3
	.loc 2 92 0
	mov	ip, ip, asr #7
	.loc 2 114 0
	mov	r0, r0, asl #8
	mov	r1, #192
	.loc 2 91 0
	mov	r5, r5, asr #7
	.loc 2 105 0
	str	r2, [sp, #32]
	.loc 2 90 0
	str	lr, [sp, #16]
.LVL9:
	.loc 2 92 0
	str	ip, [sp, #24]
.LVL10:
	.loc 2 91 0
	str	r5, [sp, #20]
.LVL11:
	.loc 2 114 0
	bl	__aeabi_idiv
	.loc 2 116 0
	ldr	r3, [sp, #32]
	cmp	r3, #1
	.loc 2 114 0
	ldr	r3, .L57+12
	strh	r0, [r7, r3]	@ movhi
	.loc 2 116 0
	bne	.L21
	ldr	r3, [r7, #344]
	mov	r1, r8
.LVL12:
	add	r0, r3, #59904
	mov	lr, r8
.LVL13:
.LVL14:
.L23:
.LBB2:
	.loc 2 121 0
	ldrh	r3, [r0, #0]
	add	r2, r0, #256
	cmp	r3, #512
	.loc 2 127 0
	add	r0, r0, #4
	.loc 2 121 0
	bne	.L24
	ldrh	r2, [r2, #0]
	.loc 2 124 0
	mov	ip, r1, asl #1
	.loc 2 121 0
	and	r3, r2, #65280
	cmp	r3, #65280
	bne	.L24
.LVL15:
	.loc 2 124 0
	add	r1, r1, #1
	ldr	r3, .L57+16
	.loc 2 123 0
	and	lr, r2, #3
	.loc 2 126 0
	cmp	r1, #31
	.loc 2 124 0
	strh	lr, [ip, r3]	@ movhi
	.loc 2 126 0
	bhi	.L21
.LVL16:
.L24:
	.loc 2 127 0
	mov	r2, r1, asl #1
	ldr	r3, .L57+16
	add	r1, r1, #1
	.loc 2 120 0
	cmp	r1, #31
	.loc 2 127 0
	strh	lr, [r2, r3]	@ movhi
	.loc 2 120 0
	bls	.L23
.LVL17:
.L21:
.LBE2:
	.loc 2 89 0
	ldr	lr, [sp, #20]
.LVL18:
	mov	r3, r6, asr #3
.LVL19:
	add	r2, lr, r3, asl #5
	add	r1, r3, lr, asl #6
.LVL20:
	mov	r2, r2, asl #1
	mov	r1, r1, asl #1
	mov	r0, #0
	str	r2, [sp, #40]
	str	r1, [sp, #44]
	str	r3, [sp, #28]
.LVL21:
	str	r0, [sp, #36]
.LVL22:
	b	.L27
.LVL23:
.L28:
.LBB3:
.LBB4:
.LBB5:
	.loc 2 149 0
	mov	r1, #6
	ldr	r0, [sp, #28]
.LBE5:
.LBE4:
	.loc 2 137 0
	mov	r4, r7
.LVL24:
.LBB6:
.LBB7:
	.loc 2 149 0
	bl	__aeabi_idiv
	mov	r0, r0, asl #5
	str	r0, [sp, #8]
	.loc 2 151 0
	mov	r1, #6
	ldr	r0, [sp, #28]
	bl	__aeabi_idivmod
	ldr	r3, [r4, #344]
	ldr	lr, [sp, #40]
	ldr	r2, [r4, #476]
	ldr	r0, [sp, #44]
	add	r3, lr, r3
	rsb	r1, r1, #5
	add	fp, r3, #57344
	add	r2, r0, r2
	ldr	sl, [sp, #20]
	mov	r1, r1, asl #1
	add	fp, fp, #2
	add	r9, r2, #128
	str	r1, [sp, #12]
	b	.L29
.LVL25:
.L30:
.LBE7:
	.loc 2 141 0
	ldrh	r1, [fp, #-2]
	.loc 2 145 0
	ldr	lr, [sp, #32]
	.loc 2 141 0
	str	r1, [sp, #4]
	ldr	r2, [sp, #4]
	.loc 2 145 0
	cmp	lr, #1
	.loc 2 141 0
	mov	r3, r2, asl #20
	ldr	r2, [r7, #512]
	mov	r3, r3, lsr #20
	add	r5, r3, r2
	.loc 2 145 0
	bne	.L31
.LBB8:
	.loc 2 147 0
	sub	r3, sl, #2
	and	r3, r3, #31
	ldr	r2, .L57+16
	mov	r3, r3, asl #1
	ldrh	r3, [r3, r2]
	b	.L56
.L31:
.LBE8:
	.loc 2 148 0
	ldr	r0, [sp, #32]
	cmp	r0, #2
	bne	.L33
.LBB9:
	.loc 2 151 0
	ldr	r2, [sp, #8]
	sub	r3, sl, #1
	and	r3, r3, #31
	add	r3, r3, r2
	add	r3, r3, #29952
	ldr	r2, [r7, #344]
	mov	r3, r3, asl #1
	ldrh	r3, [r3, r2]
	ldr	lr, [sp, #12]
	mov	r3, r3, asr lr
	and	r3, r3, #3
.L56:
	eor	r3, r3, #3
	add	r5, r5, r3, asl #12
.L33:
.LBE9:
	.loc 2 154 0
	ldr	r3, .L57+20
	and	r2, r5, #7
	ldrb	r3, [r3, r5, lsr #3]	@ zero_extendqisi2
	mov	r3, r3, asr r2
	ands	r3, r3, #1
	beq	.L35
.LBB10:
	.loc 2 156 0
	mov	r6, r5, lsr #2
	.loc 2 158 0
	ldr	r3, .L57+24
	mov	r2, r6, asl #1
	ldrh	r4, [r2, r3]
	.loc 2 161 0
	ldr	r0, [sp, #36]
	cmp	r0, #222
	cmpls	r4, #65280
	bne	.L37
	ldr	r3, .L57+4
	ldr	r2, [r3, #0]
	cmp	r2, #15
	bhi	.L37
.LBB11:
	.loc 2 164 0
	ldr	r3, .L57+28
	add	r3, r3, r2, asl #8
	.loc 2 170 0
	ldr	r2, .L57+32
	.loc 2 164 0
	orr	r0, r3, #4194304
	.loc 2 170 0
	ldrh	r1, [r2, #0]
	ldr	r2, .L57+36
	ldr	r4, [r2, #0]
.L40:
	.loc 2 167 0
	add	r4, r4, #1
	.loc 2 169 0
	cmp	r4, #222
	movhi	r4, #0
	.loc 2 170 0
	ldr	r8, .L57+40
.LVL26:
	mov	lr, r4, asl #2
	add	r3, lr, r8
	ldrh	r3, [r3, #2]
	cmp	r3, r1
	beq	.L40
	ldr	r3, .L57+36
	.loc 2 172 0
	cmp	r4, #65280
	.loc 2 170 0
	str	r4, [r3, #0]
	.loc 2 172 0
	beq	.L44
	.loc 2 177 0
	ldrh	r3, [lr, r8]
	ldr	ip, .L57+24
	.loc 2 180 0
	strh	r6, [lr, r8]	@ movhi
	.loc 2 177 0
	mov	r3, r3, asl #1
	.loc 2 179 0
	mov	r2, r6, asl #1
	.loc 2 177 0
	mvn	lr, #255	@ movhi
	strh	lr, [r3, ip]	@ movhi
	.loc 2 182 0
	mov	r1, r6
	.loc 2 179 0
	strh	r4, [r2, ip]	@ movhi
	.loc 2 182 0
	bl	neoSystemLoadTile
	.loc 2 183 0
	ldr	ip, .L57+4
	mov	r3, r4, asl #8
	ldr	r0, [ip, #0]
	add	r3, r3, #100663296
	ldr	r2, .L57+44
	add	r3, r3, #256
	.loc 2 185 0
	add	r1, r0, #1
	.loc 2 183 0
	str	r3, [r2, r0, asl #2]
	.loc 2 185 0
	str	r1, [ip, #0]
	b	.L46
.LVL27:
.L37:
.LBE11:
	.loc 2 188 0
	cmp	r4, #65280
	beq	.L44
.L46:
.LBB12:
	.loc 2 190 0
	ldr	r3, .L57+40
	mov	r2, r4, asl #2
	add	r0, r2, r3
	ldr	r3, .L57+32
	.loc 2 196 0
	add	r2, r2, #4
	.loc 2 190 0
	ldrh	r1, [r3, #0]
	ldrh	r3, [r0, #2]
	cmp	r3, r1
	.loc 2 191 0
	strneh	r1, [r0, #2]	@ movhi
	.loc 2 196 0
	ldr	r1, [sp, #4]
	.loc 2 192 0
	ldrne	r0, [sp, #36]
	.loc 2 196 0
	and	r3, r5, #3
	add	r3, r3, r2
	and	r2, r1, #61440
	.loc 2 192 0
	addne	r0, r0, #1
	.loc 2 196 0
	orr	r3, r3, r2
	.loc 2 192 0
	strne	r0, [sp, #36]
	b	.L35
.L44:
.LBE12:
	.loc 2 198 0
	mov	r2, #0	@ movhi
	strh	r2, [r9, #-128]	@ movhi
	b	.L49
.L35:
.LBE10:
	.loc 2 201 0
	strh	r3, [r9, #-128]	@ movhi
.L49:
.LBE6:
	.loc 2 139 0
	add	sl, sl, #1
	add	fp, fp, #2
	add	r9, r9, #128
.L29:
	ldr	r3, [sp, #24]
	cmp	sl, r3
	ble	.L30
.LBE3:
	.loc 2 136 0
	ldr	lr, [sp, #28]
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #44]
	add	lr, lr, #1
	add	r0, r0, #64
	add	r1, r1, #2
	str	lr, [sp, #28]
	str	r0, [sp, #40]
	str	r1, [sp, #44]
.LVL28:
.L27:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #16]
.LVL29:
	cmp	r2, r3
	ble	.L28
	.loc 2 207 0
	add	sp, sp, #48
	ldmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}
.L58:
	.align	2
.L57:
	.word	g_videoBounds
	.word	g_tileLoadIndex
	.word	g_header
	.word	490
	.word	garouoffsets.5223
	.word	g_tileUsed
	.word	g_tileTable
	.word	g_tileLoadBuffer
	.word	g_frameCount
	.word	g_cacheIndex
	.word	g_tileCache
	.word	g_tileLoadAddr
.LFE109:
	.size	neoDrawFixed, .-neoDrawFixed
	.align	2
	.global	neoFixedInit
	.type	neoFixedInit, %function
neoFixedInit:
.LFB107:
	.loc 2 33 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 37 0
	mov	r2, #67108864
	mov	r3, #39936
	strh	r3, [r2, #12]	@ movhi
	.loc 2 43 0
	ldr	r3, .L69
	.loc 2 33 0
	stmfd	sp!, {r4, r5, r6, r8, sl, lr}
.LCFI5:
	.loc 2 43 0
	strh	r3, [r2, #14]	@ movhi
	.loc 2 50 0
	ldr	r3, .L69+4
	.loc 2 53 0
	mov	r0, #4096
	.loc 2 50 0
	strh	r3, [r2, #80]	@ movhi
	.loc 2 51 0
	sub	r3, r3, #60
	strh	r3, [r2, #82]	@ movhi
	.loc 2 53 0
	mov	r4, r7
	bl	neoSystemVramHAlloc
	ldr	r2, .L69+8
	str	r0, [r4, #476]
.L60:
	.loc 2 56 0
	mvn	r3, #255	@ movhi
	strh	r3, [r2], #2	@ movhi
	.loc 2 55 0
	ldr	r3, .L69+12
	cmp	r2, r3
	bne	.L60
	ldr	r6, .L69+16
	ldr	r8, .L69+20
	sub	sl, r2, #10240
	mov	r5, #0
.LVL30:
.L62:
	mov	r4, r5, asl #16
.LBB13:
	.loc 2 65 0
	mov	r1, r5
	.loc 2 63 0
	mvn	r3, #0	@ movhi
.LBE13:
	.loc 2 55 0
	mov	r4, r4, lsr #16
.LBB14:
	.loc 2 65 0
	ldr	r0, .L69+24
	.loc 2 63 0
	strh	r3, [r6, #2]	@ movhi
	.loc 2 62 0
	strh	r4, [r6, #0]	@ movhi
.LBE14:
	.loc 2 60 0
	add	r5, r5, #1
.LBB15:
	.loc 2 65 0
	bl	neoSystemLoadTile
	.loc 2 66 0
	mov	r0, r8
	ldr	r1, .L69+24
	mov	r2, #256
	bl	memcpy
.LBE15:
	.loc 2 60 0
	cmp	r5, #223
.LBB16:
	.loc 2 67 0
	strh	r4, [sl], #2	@ movhi
.LBE16:
	.loc 2 60 0
	add	r6, r6, #4
	add	r8, r8, #256
	bne	.L62
	.loc 2 70 0
	mov	r1, #0
	mov	r2, #2560
	ldr	r0, .L69+28
	bl	memset
	.loc 2 71 0
	ldr	r1, .L69+28
	mov	r0, #8
	mov	r2, #2560
	.loc 2 79 0
	ldmfd	sp!, {r4, r5, r6, r8, sl, lr}
	.loc 2 71 0
	b	neoSystemLoadRegion
.L70:
	.align	2
.L69:
	.word	-25599
	.word	2116
	.word	g_tileTable
	.word	g_tileTable+10240
	.word	g_tileCache
	.word	100663552
	.word	g_tileLoadBuffer
	.word	g_tileUsed
.LFE107:
	.size	neoFixedInit, .-neoFixedInit
	.bss
	.align	2
g_tileLoadIndex:
	.space	4
	.align	2
g_cacheIndex:
	.space	4
	.align	1
garouoffsets.5223:
	.space	64
	.section	.sbss,"aw",%nobits
	.align	1
	.type	g_tileCache, %object
	.size	g_tileCache, 892
g_tileCache:
	.space	892
	.bss
	.align	5
g_tileTable:
	.space	10240
	.align	5
g_tileUsed:
	.space	2560
	.align	5
g_tileLoadBuffer:
	.space	4096
	.align	5
g_tileLoadAddr:
	.space	64
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x4
	.4byte	.LCFI1-.LFB110
	.byte	0xe
	.uleb128 0x14
	.byte	0x8e
	.uleb128 0x1
	.byte	0x88
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x4
	.byte	0x84
	.uleb128 0x5
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x4
	.4byte	.LCFI3-.LFB109
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
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x50
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x4
	.4byte	.LCFI5-.LFB107
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x1
	.byte	0x8a
	.uleb128 0x2
	.byte	0x88
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x4
	.byte	0x85
	.uleb128 0x5
	.byte	0x84
	.uleb128 0x6
	.align	2
.LEFDE8:
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
.LLST0:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
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
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB110-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB109-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 80
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB107-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x10bf
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF209
	.byte	0x1
	.4byte	.LASF210
	.4byte	.LASF211
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
	.byte	0x4
	.4byte	0x102
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x10a
	.uleb128 0x8
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.4byte	0x13a
	.byte	0x1
	.byte	0x5
	.byte	0x9b
	.uleb128 0xa
	.4byte	.LASF19
	.sleb128 0
	.uleb128 0xa
	.4byte	.LASF20
	.sleb128 1
	.uleb128 0xa
	.4byte	.LASF21
	.sleb128 2
	.uleb128 0xa
	.4byte	.LASF22
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0xa0
	.4byte	0x119
	.uleb128 0xb
	.4byte	0x1bd
	.2byte	0x2018
	.byte	0x5
	.2byte	0x119
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x11a
	.4byte	0x13a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x11d
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x120
	.4byte	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x121
	.4byte	0xad
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x122
	.4byte	0x1ce
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x123
	.4byte	0xad
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x124
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.byte	0x0
	.uleb128 0xd
	.4byte	0x1ce
	.4byte	0xad
	.uleb128 0xe
	.4byte	0x10b
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x126
	.4byte	0x145
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x11
	.4byte	0x378
	.4byte	.LASF61
	.byte	0xb0
	.byte	0x9
	.byte	0x15
	.uleb128 0x12
	.ascii	"d\000"
	.byte	0x9
	.byte	0x16
	.4byte	0x378
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.ascii	"a\000"
	.byte	0x9
	.byte	0x17
	.4byte	0x378
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.ascii	"pc\000"
	.byte	0x9
	.byte	0x18
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.ascii	"srh\000"
	.byte	0x9
	.byte	0x19
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x9
	.byte	0x1a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x9
	.byte	0x1b
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x12
	.ascii	"irq\000"
	.byte	0x9
	.byte	0x1c
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x12
	.ascii	"osp\000"
	.byte	0x9
	.byte	0x1d
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.ascii	"xc\000"
	.byte	0x9
	.byte	0x1e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x9
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0x9
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x9
	.byte	0x21
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x9
	.byte	0x22
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x9
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x13
	.4byte	.LASF39
	.byte	0x9
	.byte	0x24
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x9
	.byte	0x25
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x9
	.byte	0x26
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x9
	.byte	0x27
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x9
	.byte	0x28
	.4byte	0x3af
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x9
	.byte	0x29
	.4byte	0x3c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x9
	.byte	0x2a
	.4byte	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x9
	.byte	0x2b
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x9
	.byte	0x2c
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x9
	.byte	0x2d
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x9
	.byte	0x2e
	.4byte	0x3f3
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x9
	.byte	0x2f
	.4byte	0xfc
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x9
	.byte	0x30
	.4byte	0x3ff
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x9
	.byte	0x31
	.4byte	0x405
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xd
	.4byte	0x388
	.4byte	0x9b
	.uleb128 0x14
	.4byte	0x10b
	.byte	0x7
	.byte	0x0
	.uleb128 0x15
	.4byte	0x398
	.byte	0x1
	.4byte	0x9b
	.uleb128 0x16
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x388
	.uleb128 0x17
	.4byte	0x3af
	.byte	0x1
	.uleb128 0x16
	.4byte	0x9b
	.uleb128 0x16
	.4byte	0x37
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x39e
	.uleb128 0x17
	.4byte	0x3c6
	.byte	0x1
	.uleb128 0x16
	.4byte	0x9b
	.uleb128 0x16
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3b5
	.uleb128 0x17
	.4byte	0x3dd
	.byte	0x1
	.uleb128 0x16
	.4byte	0x9b
	.uleb128 0x16
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3cc
	.uleb128 0x15
	.4byte	0x3f3
	.byte	0x1
	.4byte	0x94
	.uleb128 0x16
	.4byte	0x94
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e3
	.uleb128 0x18
	.byte	0x1
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f9
	.uleb128 0xd
	.4byte	0x415
	.4byte	0x9b
	.uleb128 0x14
	.4byte	0x10b
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x8
	.byte	0x6
	.4byte	0x1e2
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x8
	.byte	0x8
	.4byte	0x42b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x431
	.uleb128 0x15
	.4byte	0x441
	.byte	0x1
	.4byte	0xc6
	.uleb128 0x16
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x8
	.byte	0x9
	.4byte	0x44c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x452
	.uleb128 0x15
	.4byte	0x462
	.byte	0x1
	.4byte	0xd0
	.uleb128 0x16
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x8
	.byte	0xa
	.4byte	0x46d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x473
	.uleb128 0x15
	.4byte	0x483
	.byte	0x1
	.4byte	0xdb
	.uleb128 0x16
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x8
	.byte	0xc
	.4byte	0x48e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x494
	.uleb128 0x17
	.4byte	0x4a5
	.byte	0x1
	.uleb128 0x16
	.4byte	0xdb
	.uleb128 0x16
	.4byte	0xc6
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x8
	.byte	0xd
	.4byte	0x4b0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4b6
	.uleb128 0x17
	.4byte	0x4c7
	.byte	0x1
	.uleb128 0x16
	.4byte	0xdb
	.uleb128 0x16
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x8
	.byte	0xe
	.4byte	0x4d2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4d8
	.uleb128 0x17
	.4byte	0x4e9
	.byte	0x1
	.uleb128 0x16
	.4byte	0xdb
	.uleb128 0x16
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x8
	.byte	0x10
	.4byte	0x46d
	.uleb128 0x11
	.4byte	0x539
	.4byte	.LASF62
	.byte	0xc
	.byte	0xa
	.byte	0x17
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0xa
	.byte	0x18
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.ascii	"end\000"
	.byte	0xa
	.byte	0x19
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.ascii	"acc\000"
	.byte	0xa
	.byte	0x1a
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0xa
	.byte	0x1b
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xa
	.byte	0x1c
	.4byte	0x4f4
	.uleb128 0x11
	.4byte	0x57b
	.4byte	.LASF66
	.byte	0xc
	.byte	0xa
	.byte	0x1f
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0xa
	.byte	0x20
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0xa
	.byte	0x21
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0xa
	.byte	0x22
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xa
	.byte	0x23
	.4byte	0x544
	.uleb128 0x11
	.4byte	0x5af
	.4byte	.LASF71
	.byte	0x8
	.byte	0x7
	.byte	0xa6
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x7
	.byte	0xa7
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x7
	.byte	0xa8
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x7
	.byte	0xa9
	.4byte	0x586
	.uleb128 0x11
	.4byte	0x653
	.4byte	.LASF74
	.byte	0x74
	.byte	0x7
	.byte	0xab
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x7
	.byte	0xac
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x7
	.byte	0xad
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x7
	.byte	0xae
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x7
	.byte	0xaf
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x7
	.byte	0xb0
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x7
	.byte	0xb1
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x7
	.byte	0xb2
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x7
	.byte	0xb3
	.4byte	0x653
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x7
	.byte	0xb4
	.4byte	0x663
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x7
	.byte	0xb5
	.4byte	0x673
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.byte	0x0
	.uleb128 0xd
	.4byte	0x663
	.4byte	0x112
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xf
	.byte	0x0
	.uleb128 0xd
	.4byte	0x673
	.4byte	0x5af
	.uleb128 0x14
	.4byte	0x10b
	.byte	0x8
	.byte	0x0
	.uleb128 0xd
	.4byte	0x682
	.4byte	0xc6
	.uleb128 0x19
	.4byte	0x10b
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x7
	.byte	0xb6
	.4byte	0x5ba
	.uleb128 0x1a
	.4byte	0xa7b
	.2byte	0x248
	.byte	0x7
	.byte	0xc0
	.uleb128 0x12
	.ascii	"cpu\000"
	.byte	0x7
	.byte	0xc1
	.4byte	0x415
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x7
	.byte	0xc4
	.4byte	0xa7b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0x7
	.byte	0xc7
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x7
	.byte	0xc8
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0x7
	.byte	0xcb
	.4byte	0xa8b
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x13
	.4byte	.LASF90
	.byte	0x7
	.byte	0xcc
	.4byte	0x57b
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0x7
	.byte	0xcd
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0x7
	.byte	0xd0
	.4byte	0xa9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0x7
	.byte	0xd1
	.4byte	0xa9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0x7
	.byte	0xd2
	.4byte	0xa9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0x7
	.byte	0xd3
	.4byte	0xa9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x7
	.byte	0xd4
	.4byte	0xa9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0x7
	.byte	0xd5
	.4byte	0xa9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x7
	.byte	0xd6
	.4byte	0xaa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0x7
	.byte	0xd7
	.4byte	0xaa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x13
	.4byte	.LASF100
	.byte	0x7
	.byte	0xd8
	.4byte	0xaa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0x7
	.byte	0xda
	.4byte	0xaa7
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0x7
	.byte	0xdd
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x7
	.byte	0xde
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x7
	.byte	0xdf
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x7
	.byte	0xe0
	.4byte	0xab8
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x7
	.byte	0xe1
	.4byte	0xab8
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x7
	.byte	0xe2
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x7
	.byte	0xe5
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x7
	.byte	0xe6
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x7
	.byte	0xe7
	.4byte	0xaa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0x7
	.byte	0xe8
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x13
	.4byte	.LASF112
	.byte	0x7
	.byte	0xea
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x13
	.4byte	.LASF113
	.byte	0x7
	.byte	0xeb
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x13
	.4byte	.LASF114
	.byte	0x7
	.byte	0xec
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x13
	.4byte	.LASF115
	.byte	0x7
	.byte	0xed
	.4byte	0xac3
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0x7
	.byte	0xee
	.4byte	0xaa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x13
	.4byte	.LASF117
	.byte	0x7
	.byte	0xf1
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x13
	.4byte	.LASF118
	.byte	0x7
	.byte	0xf2
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0x7
	.byte	0xf3
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x13
	.4byte	.LASF120
	.byte	0x7
	.byte	0xf4
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x13
	.4byte	.LASF121
	.byte	0x7
	.byte	0xf7
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x13
	.4byte	.LASF122
	.byte	0x7
	.byte	0xf8
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x13
	.4byte	.LASF123
	.byte	0x7
	.byte	0xf9
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x13
	.4byte	.LASF124
	.byte	0x7
	.byte	0xfa
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x13
	.4byte	.LASF125
	.byte	0x7
	.byte	0xfb
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x13
	.4byte	.LASF126
	.byte	0x7
	.byte	0xfc
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x13
	.4byte	.LASF127
	.byte	0x7
	.byte	0xfd
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0x7
	.2byte	0x102
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x103
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0x7
	.2byte	0x106
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0x7
	.2byte	0x108
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0x7
	.2byte	0x109
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0x7
	.2byte	0x10a
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xc
	.4byte	.LASF133
	.byte	0x7
	.2byte	0x10b
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xc
	.4byte	.LASF134
	.byte	0x7
	.2byte	0x10d
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xc
	.4byte	.LASF135
	.byte	0x7
	.2byte	0x10e
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xc
	.4byte	.LASF136
	.byte	0x7
	.2byte	0x10f
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xc
	.4byte	.LASF137
	.byte	0x7
	.2byte	0x110
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xc
	.4byte	.LASF138
	.byte	0x7
	.2byte	0x111
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xc
	.4byte	.LASF139
	.byte	0x7
	.2byte	0x114
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xc
	.4byte	.LASF140
	.byte	0x7
	.2byte	0x115
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0x7
	.2byte	0x116
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0x7
	.2byte	0x117
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0x7
	.2byte	0x118
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0x7
	.2byte	0x11b
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0x7
	.2byte	0x11c
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0x7
	.2byte	0x11f
	.4byte	0xad3
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xc
	.4byte	.LASF147
	.byte	0x7
	.2byte	0x122
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xc
	.4byte	.LASF148
	.byte	0x7
	.2byte	0x123
	.4byte	0xae3
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xd
	.4byte	0xa8b
	.4byte	0x1e0
	.uleb128 0x14
	.4byte	0x10b
	.byte	0x8
	.byte	0x0
	.uleb128 0xd
	.4byte	0xa9b
	.4byte	0x539
	.uleb128 0x14
	.4byte	0x10b
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
	.4byte	0xaad
	.uleb128 0x6
	.byte	0x4
	.4byte	0xab3
	.uleb128 0x1b
	.4byte	0xc6
	.uleb128 0x6
	.byte	0x4
	.4byte	0xabe
	.uleb128 0x1b
	.4byte	0xdb
	.uleb128 0xd
	.4byte	0xad3
	.4byte	0xdb
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xf
	.byte	0x0
	.uleb128 0xd
	.4byte	0xae3
	.4byte	0xc6
	.uleb128 0x14
	.4byte	0x10b
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.4byte	0xaf2
	.4byte	0xc6
	.uleb128 0x19
	.4byte	0x10b
	.byte	0x0
	.uleb128 0x1c
	.4byte	0xb0d
	.2byte	0x400
	.byte	0x7
	.byte	0xbf
	.uleb128 0x1d
	.4byte	0x68d
	.uleb128 0x1e
	.4byte	.LASF149
	.byte	0x7
	.2byte	0x125
	.4byte	0xb0d
	.byte	0x0
	.uleb128 0xd
	.4byte	0xb1d
	.4byte	0xdb
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xff
	.byte	0x0
	.uleb128 0x1f
	.4byte	0xba3
	.4byte	.LASF150
	.2byte	0x2000
	.byte	0x7
	.byte	0xbe
	.uleb128 0x20
	.4byte	0xaf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF151
	.byte	0x7
	.2byte	0x128
	.4byte	0xba3
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xc
	.4byte	.LASF152
	.byte	0x7
	.2byte	0x129
	.4byte	0xbb3
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xc
	.4byte	.LASF153
	.byte	0x7
	.2byte	0x12a
	.4byte	0xbc3
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xc
	.4byte	.LASF154
	.byte	0x7
	.2byte	0x12b
	.4byte	0xbd3
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xc
	.4byte	.LASF155
	.byte	0x7
	.2byte	0x12c
	.4byte	0xbe3
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xc
	.4byte	.LASF156
	.byte	0x7
	.2byte	0x12d
	.4byte	0xbf3
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xc
	.4byte	.LASF157
	.byte	0x7
	.2byte	0x12e
	.4byte	0xc03
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xd
	.4byte	0xbb3
	.4byte	0x420
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xbc3
	.4byte	0x441
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xbd3
	.4byte	0x462
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xbe3
	.4byte	0x483
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xbf3
	.4byte	0x4a5
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xc03
	.4byte	0x4c7
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xc13
	.4byte	0x4e9
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xff
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF158
	.byte	0x7
	.2byte	0x12f
	.4byte	0xb1d
	.uleb128 0x11
	.4byte	0xc64
	.4byte	.LASF159
	.byte	0x10
	.byte	0xb
	.byte	0x6
	.uleb128 0x13
	.4byte	.LASF160
	.byte	0xb
	.byte	0x7
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF161
	.byte	0xb
	.byte	0x8
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF162
	.byte	0xb
	.byte	0x9
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF163
	.byte	0xb
	.byte	0xa
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF164
	.byte	0xb
	.byte	0xb
	.4byte	0xc1f
	.uleb128 0x11
	.4byte	0xc98
	.4byte	.LASF165
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.uleb128 0x13
	.4byte	.LASF166
	.byte	0x2
	.byte	0xa
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF167
	.byte	0x2
	.byte	0xb
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF168
	.byte	0x2
	.byte	0xc
	.4byte	0xc6f
	.uleb128 0x21
	.4byte	0xcf8
	.4byte	.LASF212
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST0
	.uleb128 0x22
	.4byte	.LASF169
	.byte	0x1
	.byte	0x5d
	.4byte	0xa2
	.4byte	.LLST1
	.uleb128 0x23
	.ascii	"src\000"
	.byte	0x1
	.byte	0x5d
	.4byte	0x104
	.4byte	.LLST2
	.uleb128 0x22
	.4byte	.LASF170
	.byte	0x1
	.byte	0x5d
	.4byte	0x1e0
	.4byte	.LLST3
	.uleb128 0x22
	.4byte	.LASF72
	.byte	0x1
	.byte	0x5d
	.4byte	0xad
	.4byte	.LLST4
	.byte	0x0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF213
	.byte	0x2
	.byte	0x52
	.4byte	.LFB108
	.4byte	.LFE108
	.byte	0x1
	.byte	0x5d
	.uleb128 0x25
	.4byte	0xd3b
	.byte	0x1
	.4byte	.LASF172
	.byte	0x2
	.byte	0xd2
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST6
	.uleb128 0x26
	.4byte	.LASF171
	.byte	0x2
	.byte	0xd3
	.4byte	0xaad
	.byte	0x1
	.byte	0x56
	.uleb128 0x27
	.ascii	"i\000"
	.byte	0x2
	.byte	0xd4
	.4byte	0xdb
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x25
	.4byte	0xef8
	.byte	0x1
	.4byte	.LASF173
	.byte	0x2
	.byte	0x57
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LLST7
	.uleb128 0x28
	.4byte	.LASF160
	.byte	0x2
	.byte	0x59
	.4byte	0xef8
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	.LASF162
	.byte	0x2
	.byte	0x5a
	.4byte	0xef8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.4byte	.LASF161
	.byte	0x2
	.byte	0x5b
	.4byte	0xef8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.4byte	.LASF163
	.byte	0x2
	.byte	0x5c
	.4byte	0xef8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x2
	.byte	0x5d
	.4byte	0xef8
	.uleb128 0x29
	.4byte	.LASF175
	.byte	0x2
	.byte	0x5e
	.4byte	0xef8
	.uleb128 0x26
	.4byte	.LASF176
	.byte	0x2
	.byte	0x62
	.4byte	0xf1
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.4byte	.LASF177
	.byte	0x2
	.byte	0x63
	.4byte	0xf1
	.byte	0x1
	.byte	0x5a
	.uleb128 0x26
	.4byte	.LASF178
	.byte	0x2
	.byte	0x64
	.4byte	0xdb
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.4byte	.LASF179
	.byte	0x2
	.byte	0x65
	.4byte	0xdb
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.4byte	0xe0c
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x28
	.4byte	.LASF180
	.byte	0x2
	.byte	0x75
	.4byte	0xdb
	.4byte	.LLST9
	.uleb128 0x2b
	.ascii	"k\000"
	.byte	0x2
	.byte	0x76
	.4byte	0xdb
	.uleb128 0x2c
	.ascii	"y\000"
	.byte	0x2
	.byte	0x77
	.4byte	0xdb
	.4byte	.LLST10
	.byte	0x0
	.uleb128 0x2a
	.4byte	0xee6
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x2
	.byte	0x89
	.4byte	0xefd
	.uleb128 0x29
	.4byte	.LASF182
	.byte	0x2
	.byte	0x8a
	.4byte	0xaa1
	.uleb128 0x2d
	.4byte	0xe6d
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x29
	.4byte	.LASF166
	.byte	0x2
	.byte	0x8c
	.4byte	0xf03
	.uleb128 0x26
	.4byte	.LASF183
	.byte	0x2
	.byte	0x8d
	.4byte	0xdb
	.byte	0x1
	.byte	0x55
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x29
	.4byte	.LASF129
	.byte	0x2
	.byte	0x95
	.4byte	0xdb
	.uleb128 0x29
	.4byte	.LASF184
	.byte	0x2
	.byte	0x96
	.4byte	0xdb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.4byte	0xe86
	.4byte	.LBB8
	.4byte	.LBE8
	.uleb128 0x29
	.4byte	.LASF63
	.byte	0x2
	.byte	0x92
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LBB10
	.4byte	.LBE10
	.uleb128 0x29
	.4byte	.LASF185
	.byte	0x2
	.byte	0x9b
	.4byte	0xabe
	.uleb128 0x26
	.4byte	.LASF186
	.byte	0x2
	.byte	0x9c
	.4byte	0xabe
	.byte	0x1
	.byte	0x56
	.uleb128 0x28
	.4byte	.LASF187
	.byte	0x2
	.byte	0x9e
	.4byte	0xdb
	.4byte	.LLST11
	.uleb128 0x2a
	.4byte	0xecf
	.4byte	.LBB11
	.4byte	.LBE11
	.uleb128 0x29
	.4byte	.LASF188
	.byte	0x2
	.byte	0xa4
	.4byte	0x1e0
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LBB12
	.4byte	.LBE12
	.uleb128 0x29
	.4byte	.LASF189
	.byte	0x2
	.byte	0xc2
	.4byte	0xabe
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF190
	.byte	0x2
	.byte	0x60
	.4byte	0xf43
	.byte	0x5
	.byte	0x3
	.4byte	garouoffsets.5223
	.byte	0x0
	.uleb128 0x1b
	.4byte	0xf1
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf03
	.uleb128 0x1b
	.4byte	0xd0
	.uleb128 0x25
	.4byte	0xf3d
	.byte	0x1
	.4byte	.LASF191
	.byte	0x2
	.byte	0x21
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LLST12
	.uleb128 0x27
	.ascii	"i\000"
	.byte	0x2
	.byte	0x22
	.4byte	0xf1
	.byte	0x1
	.byte	0x55
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x29
	.4byte	.LASF192
	.byte	0x2
	.byte	0x3d
	.4byte	0xf3d
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc98
	.uleb128 0xd
	.4byte	0xf53
	.4byte	0xd0
	.uleb128 0x14
	.4byte	0x10b
	.byte	0x1f
	.byte	0x0
	.uleb128 0x30
	.4byte	.LASF193
	.byte	0x5
	.2byte	0x129
	.4byte	0xf5f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0xd
	.4byte	0xf75
	.4byte	0xc98
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xde
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF194
	.byte	0x2
	.byte	0x15
	.4byte	0xf65
	.byte	0x5
	.byte	0x3
	.4byte	g_tileCache
	.uleb128 0x26
	.4byte	.LASF195
	.byte	0x2
	.byte	0x16
	.4byte	0xdb
	.byte	0x5
	.byte	0x3
	.4byte	g_cacheIndex
	.uleb128 0xd
	.4byte	0xfa8
	.4byte	0xd0
	.uleb128 0xe
	.4byte	0x10b
	.2byte	0x13ff
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF196
	.byte	0x2
	.byte	0x18
	.4byte	0xf97
	.byte	0x5
	.byte	0x3
	.4byte	g_tileTable
	.uleb128 0xd
	.4byte	0xfca
	.4byte	0xc6
	.uleb128 0xe
	.4byte	0x10b
	.2byte	0x9ff
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF197
	.byte	0x2
	.byte	0x19
	.4byte	0xfb9
	.byte	0x5
	.byte	0x3
	.4byte	g_tileUsed
	.uleb128 0xd
	.4byte	0xfec
	.4byte	0xc6
	.uleb128 0xe
	.4byte	0x10b
	.2byte	0xfff
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF198
	.byte	0x2
	.byte	0x1c
	.4byte	0xfdb
	.byte	0x5
	.byte	0x3
	.4byte	g_tileLoadBuffer
	.uleb128 0xd
	.4byte	0x100d
	.4byte	0x1e0
	.uleb128 0x14
	.4byte	0x10b
	.byte	0xf
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF199
	.byte	0x2
	.byte	0x1d
	.4byte	0xffd
	.byte	0x5
	.byte	0x3
	.4byte	g_tileLoadAddr
	.uleb128 0x26
	.4byte	.LASF200
	.byte	0x2
	.byte	0x1e
	.4byte	0xdb
	.byte	0x5
	.byte	0x3
	.4byte	g_tileLoadIndex
	.uleb128 0xd
	.4byte	0x103a
	.4byte	0x49
	.uleb128 0x31
	.byte	0x0
	.uleb128 0x32
	.4byte	.LASF201
	.byte	0x6
	.byte	0x2c
	.4byte	0x102f
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0x1052
	.4byte	0x49
	.uleb128 0x31
	.byte	0x0
	.uleb128 0x32
	.4byte	.LASF202
	.byte	0x6
	.byte	0x2d
	.4byte	0x1047
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0x106a
	.4byte	0x49
	.uleb128 0x31
	.byte	0x0
	.uleb128 0x32
	.4byte	.LASF203
	.byte	0x6
	.byte	0x2e
	.4byte	0x105f
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF204
	.byte	0x7
	.2byte	0x149
	.4byte	0x1086
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc13
	.uleb128 0x34
	.4byte	.LASF205
	.byte	0x7
	.2byte	0x14d
	.4byte	0xc13
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.4byte	.LASF206
	.byte	0x7
	.2byte	0x14e
	.4byte	0x682
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF207
	.byte	0xb
	.byte	0x52
	.4byte	0xc64
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.4byte	.LASF208
	.byte	0xb
	.byte	0x59
	.4byte	0xd0
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
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x10c3
	.4byte	0xcf8
	.ascii	"neoFixedExit\000"
	.4byte	0xd0a
	.ascii	"neoLoadTiles\000"
	.4byte	0xd3b
	.ascii	"neoDrawFixed\000"
	.4byte	0xf08
	.ascii	"neoFixedInit\000"
	.4byte	0x1077
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
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF25:
	.ascii	"clearColor\000"
.LASF39:
	.ascii	"checkpc\000"
.LASF43:
	.ascii	"write8\000"
.LASF192:
	.ascii	"pEntry\000"
.LASF106:
	.ascii	"smaBankbit\000"
.LASF157:
	.ascii	"cpuCheckPcTable\000"
.LASF114:
	.ascii	"spriteMask\000"
.LASF136:
	.ascii	"ctrl3Reg\000"
.LASF206:
	.ascii	"g_header\000"
.LASF163:
	.ascii	"maxY\000"
.LASF48:
	.ascii	"fetch32\000"
.LASF193:
	.ascii	"glGlob\000"
.LASF122:
	.ascii	"cpuClocksPerScanline\000"
.LASF55:
	.ascii	"TRead16Func\000"
.LASF88:
	.ascii	"romBankCount\000"
.LASF194:
	.ascii	"g_tileCache\000"
.LASF117:
	.ascii	"tileOffsetX\000"
.LASF155:
	.ascii	"cpuWrite16Table\000"
.LASF195:
	.ascii	"g_cacheIndex\000"
.LASF15:
	.ascii	"uint32\000"
.LASF21:
	.ascii	"GL_MODELVIEW\000"
.LASF119:
	.ascii	"tileScaleX\000"
.LASF120:
	.ascii	"tileScaleY\000"
.LASF44:
	.ascii	"write16\000"
.LASF60:
	.ascii	"TCheckPcFunc\000"
.LASF148:
	.ascii	"varEnd\000"
.LASF57:
	.ascii	"TWrite8Func\000"
.LASF40:
	.ascii	"read8\000"
.LASF70:
	.ascii	"TNeoADPCMBStream\000"
.LASF54:
	.ascii	"TRead8Func\000"
.LASF181:
	.ascii	"pMapSrc\000"
.LASF116:
	.ascii	"pTileBuffer\000"
.LASF153:
	.ascii	"cpuRead32Table\000"
.LASF23:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF8:
	.ascii	"long int\000"
.LASF69:
	.ascii	"frequency\000"
.LASF80:
	.ascii	"audio2Offset\000"
.LASF58:
	.ascii	"TWrite16Func\000"
.LASF46:
	.ascii	"fetch8\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF146:
	.ascii	"keyGrid\000"
.LASF45:
	.ascii	"write32\000"
.LASF84:
	.ascii	"data\000"
.LASF190:
	.ascii	"garouoffsets\000"
.LASF49:
	.ascii	"IrqCallback\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF137:
	.ascii	"ctrl4Reg\000"
.LASF185:
	.ascii	"palIndex\000"
.LASF210:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoVideoFixe"
	.ascii	"d.arm.c\000"
.LASF127:
	.ascii	"romBankAddress\000"
.LASF203:
	.ascii	"TAN_bin\000"
.LASF64:
	.ascii	"step\000"
.LASF91:
	.ascii	"adpcmActive\000"
.LASF197:
	.ascii	"g_tileUsed\000"
.LASF111:
	.ascii	"vramBaseMask\000"
.LASF87:
	.ascii	"spriteCount\000"
.LASF182:
	.ascii	"pDst\000"
.LASF51:
	.ascii	"UnrecognizedCallback\000"
.LASF18:
	.ascii	"char\000"
.LASF183:
	.ascii	"tileIndex\000"
.LASF139:
	.ascii	"irqVectorLatch\000"
.LASF98:
	.ascii	"pVram\000"
.LASF140:
	.ascii	"screenDarkLatch\000"
.LASF82:
	.ascii	"name\000"
.LASF34:
	.ascii	"prev_pc\000"
.LASF66:
	.ascii	"_TNeoADPCMBStream\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF33:
	.ascii	"flags\000"
.LASF17:
	.ascii	"double\000"
.LASF113:
	.ascii	"autoAnimationCounter\000"
.LASF26:
	.ascii	"textures\000"
.LASF20:
	.ascii	"GL_POSITION\000"
.LASF158:
	.ascii	"TNeoContext\000"
.LASF121:
	.ascii	"cpuClockDivide\000"
.LASF109:
	.ascii	"frameCount\000"
.LASF129:
	.ascii	"vramOffset\000"
.LASF73:
	.ascii	"TNeoRomEntry\000"
.LASF211:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF196:
	.ascii	"g_tileTable\000"
.LASF149:
	.ascii	"fill\000"
.LASF37:
	.ascii	"cycles\000"
.LASF156:
	.ascii	"cpuWrite32Table\000"
.LASF159:
	.ascii	"_TNeoVideoBounds\000"
.LASF83:
	.ascii	"romEntry\000"
.LASF79:
	.ascii	"fixedBankType\000"
.LASF143:
	.ascii	"paletteRamLatch\000"
.LASF176:
	.ascii	"mapX\000"
.LASF177:
	.ascii	"mapY\000"
.LASF200:
	.ascii	"g_tileLoadIndex\000"
.LASF201:
	.ascii	"COS_bin\000"
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
.LASF10:
	.ascii	"long unsigned int\000"
.LASF198:
	.ascii	"g_tileLoadBuffer\000"
.LASF171:
	.ascii	"pSrc\000"
.LASF152:
	.ascii	"cpuRead16Table\000"
.LASF132:
	.ascii	"displayControlMask\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF144:
	.ascii	"active\000"
.LASF61:
	.ascii	"Cyclone\000"
.LASF94:
	.ascii	"pBios\000"
.LASF169:
	.ascii	"channel\000"
.LASF115:
	.ascii	"paletteDirty\000"
.LASF202:
	.ascii	"SIN_bin\000"
.LASF24:
	.ascii	"matrixMode\000"
.LASF28:
	.ascii	"nextBlock\000"
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
.LASF11:
	.ascii	"long long int\000"
.LASF19:
	.ascii	"GL_PROJECTION\000"
.LASF138:
	.ascii	"coinReg\000"
.LASF67:
	.ascii	"initOffset\000"
.LASF174:
	.ascii	"width\000"
.LASF52:
	.ascii	"internal\000"
.LASF47:
	.ascii	"fetch16\000"
.LASF103:
	.ascii	"smaAddr1\000"
.LASF179:
	.ascii	"tilesUsed\000"
.LASF77:
	.ascii	"protection\000"
.LASF32:
	.ascii	"unused\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF180:
	.ascii	"garoubank\000"
.LASF131:
	.ascii	"displayControl\000"
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
.LASF168:
	.ascii	"TTileCacheEntry\000"
.LASF118:
	.ascii	"tileOffsetY\000"
.LASF154:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF178:
	.ascii	"bankType\000"
.LASF27:
	.ascii	"activeTexture\000"
.LASF81:
	.ascii	"sectionCount\000"
.LASF135:
	.ascii	"ctrl2Reg\000"
.LASF41:
	.ascii	"read16\000"
.LASF184:
	.ascii	"vramShift\000"
.LASF125:
	.ascii	"paletteBank\000"
.LASF205:
	.ascii	"g_neoContext\000"
.LASF38:
	.ascii	"membase\000"
.LASF164:
	.ascii	"TNeoVideoBounds\000"
.LASF209:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF108:
	.ascii	"scanline\000"
.LASF72:
	.ascii	"size\000"
.LASF100:
	.ascii	"pPalette\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF145:
	.ascii	"debug\000"
.LASF213:
	.ascii	"neoFixedExit\000"
.LASF167:
	.ascii	"frame\000"
.LASF93:
	.ascii	"pRom1\000"
.LASF186:
	.ascii	"cacheEntryIndex\000"
.LASF76:
	.ascii	"version\000"
.LASF42:
	.ascii	"read32\000"
.LASF85:
	.ascii	"TNeoRomHeader\000"
.LASF170:
	.ascii	"dest\000"
.LASF99:
	.ascii	"pSpriteRam\000"
.LASF50:
	.ascii	"ResetCallback\000"
.LASF142:
	.ascii	"sramProtectLatch\000"
.LASF126:
	.ascii	"fixedBank\000"
.LASF204:
	.ascii	"g_neo\000"
.LASF75:
	.ascii	"magic\000"
.LASF188:
	.ascii	"pLoadAddr\000"
.LASF165:
	.ascii	"_TTileCacheEntry\000"
.LASF30:
	.ascii	"nameCount\000"
.LASF134:
	.ascii	"ctrl1Reg\000"
.LASF36:
	.ascii	"state_flags\000"
.LASF78:
	.ascii	"sramProtection\000"
.LASF173:
	.ascii	"neoDrawFixed\000"
.LASF14:
	.ascii	"uint8\000"
.LASF96:
	.ascii	"pSram\000"
.LASF68:
	.ascii	"freqCounter\000"
.LASF4:
	.ascii	"short int\000"
.LASF147:
	.ascii	"frameCounter\000"
.LASF90:
	.ascii	"adpcmb\000"
.LASF29:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF162:
	.ascii	"maxX\000"
.LASF166:
	.ascii	"index\000"
.LASF133:
	.ascii	"displayCounterLoad\000"
.LASF123:
	.ascii	"irqPending\000"
.LASF189:
	.ascii	"vramIndex\000"
.LASF212:
	.ascii	"dmaCopyWords\000"
.LASF71:
	.ascii	"_TNeoRomEntry\000"
.LASF74:
	.ascii	"_TNeoRomHeader\000"
.LASF56:
	.ascii	"TRead32Func\000"
.LASF187:
	.ascii	"cacheIndex\000"
.LASF172:
	.ascii	"neoLoadTiles\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF208:
	.ascii	"g_frameCount\000"
.LASF199:
	.ascii	"g_tileLoadAddr\000"
.LASF89:
	.ascii	"adpcm\000"
.LASF191:
	.ascii	"neoFixedInit\000"
.LASF16:
	.ascii	"float\000"
.LASF31:
	.ascii	"gl_hidden_globals\000"
.LASF160:
	.ascii	"minX\000"
.LASF161:
	.ascii	"minY\000"
.LASF207:
	.ascii	"g_videoBounds\000"
.LASF86:
	.ascii	"pVideoWriteTable\000"
.LASF101:
	.ascii	"bankTable\000"
.LASF104:
	.ascii	"smaBankAddr\000"
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
.LASF175:
	.ascii	"height\000"
.LASF130:
	.ascii	"vramMod\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
