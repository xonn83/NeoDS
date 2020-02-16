	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
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
	.global	neoFixedExit
	.type	neoFixedExit, %function
neoFixedExit:
.LFB167:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/NeoVideoFixed.arm.c"
	.loc 1 82 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 84 0
	bx	lr
.LFE167:
	.size	neoFixedExit, .-neoFixedExit
	.align	2
	.global	neoLoadTiles
	.type	neoLoadTiles, %function
neoLoadTiles:
.LFB169:
	.loc 1 210 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 209 0
	ldr	r3, .L12
	.loc 1 210 0
	stmfd	sp!, {r4, r5, lr}
.LCFI0:
	.loc 1 209 0
	ldr	r4, [r3, #-4088]
	.loc 1 211 0
	ldr	r1, .L12+4
.LVL0:
	.loc 1 209 0
	mov	r2, #0
	mov	r4, r4, asl #2
.LBB6:
.LBB7:
	.file 2 "C:/devkitPro/libnds/include/nds/dma.h"
	.loc 2 123 0
	mov	r3, #67108864
	.loc 2 124 0
	ldr	ip, .L12+8
	.loc 2 125 0
	ldr	r0, .L12+12
.LBE7:
.LBE6:
	.loc 1 215 0
	b	.L4
.L6:
.LBB9:
.LBB8:
	.loc 2 124 0
	ldr	r5, [ip, r2]
	.loc 2 123 0
	str	r1, [r3, #212]
	.loc 2 124 0
	str	r5, [r3, #216]
	.loc 2 125 0
	str	r0, [r3, #220]
.L5:
	.loc 2 126 0
	ldr	r5, [r3, #220]
	cmp	r5, #0
	blt	.L5
.LBE8:
.LBE9:
	.loc 1 217 0
	add	r1, r1, #256
	add	r2, r2, #4
.L4:
	.loc 1 215 0
	cmp	r2, r4
	bne	.L6
.LBB10:
.LBB11:
	.loc 2 123 0
	ldr	r2, [r7, #476]
	mov	r3, #67108864
	str	r2, [r3, #212]
	.loc 2 124 0
	ldr	r2, .L12+16
	str	r2, [r3, #216]
	.loc 2 125 0
	ldr	r2, .L12+20
	str	r2, [r3, #220]
.L7:
	.loc 2 126 0
	ldr	r2, [r3, #220]
	cmp	r2, #0
	blt	.L7
.LBE11:
.LBE10:
	.loc 1 222 0
	ldmfd	sp!, {r4, r5, pc}
.L13:
	.align	2
.L12:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	.LANCHOR1-4056
	.word	-2080374720
	.word	100720640
	.word	-2080373760
.LFE169:
	.size	neoLoadTiles, .-neoLoadTiles
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.align	2
	.global	neoDrawFixed
	.type	neoDrawFixed, %function
neoDrawFixed:
.LFB168:
	.loc 1 87 0
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, lr}
.LCFI1:
	.loc 1 89 0
	ldr	r3, .L38
	.loc 1 87 0
	sub	sp, sp, #56
.LCFI2:
	.loc 1 90 0
	ldr	r1, [r3, #8]
	.loc 1 89 0
	ldr	sl, [r3, #0]
	.loc 1 113 0
	add	fp, r1, #1
	rsb	fp, sl, fp
	mov	fp, fp, asl #8
	.loc 1 103 0
	mov	r6, #0
	.loc 1 92 0
	ldr	r2, [r3, #12]
	.loc 1 113 0
	add	ip, fp, #255
	cmp	fp, r6
	.loc 1 103 0
	ldr	r5, .L38+4
	.loc 1 91 0
	ldr	r3, [r3, #4]
	.loc 1 113 0
	movlt	fp, ip
	.loc 1 100 0
	ldr	ip, .L38+8
	.loc 1 103 0
	str	r6, [r5, #-4088]
	.loc 1 114 0
	add	r0, r2, #1
	.loc 1 111 0
	mov	lr, sl, asl #8
	.loc 1 100 0
	ldr	r9, [ip, #16]
.LVL1:
	.loc 1 114 0
	rsb	r0, r3, r0
	.loc 1 111 0
	str	lr, [r7, #480]
	.loc 1 112 0
	mov	ip, r3, asl #4
	.loc 1 105 0
	ldr	lr, [r7, #512]
	.loc 1 112 0
	str	ip, [r7, #484]
	.loc 1 113 0
	mov	fp, fp, asr #8
	.loc 1 90 0
	add	ip, r1, #7
	.loc 1 114 0
	mov	r0, r0, asr #4
	.loc 1 113 0
	mov	r8, #488
	.loc 1 92 0
	add	r2, r2, #7
	.loc 1 113 0
	strh	fp, [r7, r8]	@ movhi
	.loc 1 105 0
	cmp	lr, r6
	.loc 1 91 0
	mov	r3, r3, asr #7
	.loc 1 90 0
	mov	ip, ip, asr #3
	.loc 1 92 0
	mov	r2, r2, asr #7
	.loc 1 114 0
	mov	r0, r0, asl #8
	mov	r1, #192
	.loc 1 105 0
	mov	r4, r7
	moveq	r9, r6
	.loc 1 91 0
	str	r3, [sp, #24]
	.loc 1 90 0
	str	ip, [sp, #40]
	.loc 1 92 0
	str	r2, [sp, #36]
	.loc 1 114 0
	bl	__aeabi_idiv
	ldr	r3, .L38+12
	.loc 1 116 0
	cmp	r9, #1
	.loc 1 114 0
	strh	r0, [r4, r3]	@ movhi
	.loc 1 116 0
	bne	.L16
	ldr	r3, [r4, #344]
	mov	r2, r6
.LVL2:
	add	r3, r3, #59904
.L18:
.LBB12:
	.loc 1 121 0
	ldrh	r1, [r3, #0]
	cmp	r1, #512
	bne	.L17
	.loc 1 122 0
	add	r1, r3, #256
	ldrh	r0, [r1, #0]
	.loc 1 121 0
	and	r1, r0, #65280
	cmp	r1, #65280
	bne	.L17
	.loc 1 124 0
	add	r1, r5, r6, asl #1
	sub	r1, r1, #3984
	add	r6, r6, #1
.LVL3:
	.loc 1 123 0
	and	r2, r0, #3
.LVL4:
	.loc 1 124 0
	sub	r1, r1, #8
	.loc 1 126 0
	cmp	r6, #31
	.loc 1 124 0
	strh	r2, [r1, #0]	@ movhi
	.loc 1 126 0
	bhi	.L16
.L17:
	.loc 1 127 0
	add	r1, r5, r6, asl #1
	sub	r1, r1, #3984
	add	r6, r6, #1
	sub	r1, r1, #8
	.loc 1 120 0
	cmp	r6, #31
	.loc 1 127 0
	strh	r2, [r1, #0]	@ movhi
	add	r3, r3, #4
	.loc 1 120 0
	bls	.L18
.L16:
.LBE12:
	.loc 1 89 0
	mov	sl, sl, asr #3
.LVL5:
	ldr	r1, [sp, #24]
	add	r2, sl, #896
.LVL6:
	add	r2, r1, r2, asl #5
	mov	r2, r2, asl #1
	add	r3, sl, r1, asl #6
	str	r2, [sp, #8]
	mov	r3, r3, asl #1
	mov	r2, #0
	str	r3, [sp, #4]
	str	r2, [sp, #20]
.LBB13:
.LBB14:
.LBB16:
	.loc 1 147 0
	ldr	r5, .L38+4
	b	.L19
.LVL7:
.L32:
.LBE16:
.LBE14:
	.loc 1 138 0
	ldr	r3, [r7, #476]
	.loc 1 137 0
	ldr	r2, [r7, #344]
	ldr	ip, [sp, #8]
	.loc 1 138 0
	ldr	lr, [sp, #4]
	.loc 1 137 0
	add	r2, r2, ip
	.loc 1 138 0
	add	r3, r3, lr
.LBB23:
.LBB17:
	.loc 1 149 0
	mov	r1, #6
	mov	r0, sl
.LBE17:
.LBE23:
	.loc 1 137 0
	str	r2, [sp, #32]
	.loc 1 138 0
	str	r3, [sp, #16]
.LBB24:
.LBB15:
	.loc 1 149 0
	bl	__aeabi_idiv
	mov	r3, r0, asl #5
	add	r3, r3, #29952
	.loc 1 151 0
	mov	r1, #6
	mov	r0, sl
	.loc 1 149 0
	str	r3, [sp, #48]
	.loc 1 151 0
	bl	__aeabi_idivmod
	rsb	r1, r1, #5
	mov	r8, #0
	mov	r1, r1, asl #1
	str	r1, [sp, #44]
	ldr	fp, [sp, #24]
.LVL8:
	str	r8, [sp, #12]
	str	sl, [sp, #52]
.LBE15:
.LBE24:
	.loc 1 139 0
	b	.L20
.L31:
.LBB25:
	.loc 1 141 0
	ldr	r2, [sp, #32]
	ldr	r1, [sp, #12]
	.loc 1 145 0
	cmp	r9, #1
	.loc 1 141 0
	ldrh	r1, [r2, r1]
	str	r1, [sp, #28]
	mov	r3, r1, asl #20
	ldr	r6, [r7, #512]
.LVL9:
	mov	r3, r3, lsr #20
	add	r6, r3, r6
.LVL10:
	.loc 1 145 0
	bne	.L21
.LBB18:
	.loc 1 147 0
	sub	r3, fp, #2
	and	r3, r3, #31
	add	r3, r5, r3, asl #1
	sub	r3, r3, #3984
	sub	r3, r3, #8
	ldrh	r3, [r3, #0]
	eor	r3, r3, #3
	b	.L37
.L21:
.LBE18:
	.loc 1 148 0
	cmp	r9, #2
	bne	.L22
.LBB19:
	.loc 1 151 0
	sub	r3, fp, #1
	ldr	ip, [sp, #48]
	and	r3, r3, #31
	add	r3, r3, ip
	ldr	r2, [r7, #344]
	mov	r3, r3, asl #1
	ldrh	r3, [r2, r3]
	ldr	r1, [sp, #44]
	mvn	r3, r3, asr r1
	and	r3, r3, #3
.L37:
	add	r6, r6, r3, asl #12
.L22:
.LBE19:
	.loc 1 154 0
	add	r3, r5, r6, lsr #3
	ldrb	r2, [r3, #-3928]	@ zero_extendqisi2
	and	r3, r6, #7
	mov	r3, r2, asr r3
	ands	r3, r3, #1
	.loc 1 201 0
	ldreq	r2, [sp, #16]
	streqh	r3, [r2, r8]	@ movhi
	.loc 1 154 0
	beq	.L30
.LBB20:
	.loc 1 156 0
	mov	r3, r6, lsr #2
.LVL11:
	.loc 1 158 0
	add	r2, r5, r3, asl #1
	sub	r2, r2, #1360
	sub	r2, r2, #8
	ldrh	r4, [r2, #0]
	.loc 1 161 0
	ldr	r2, [sp, #20]
	cmp	r2, #222
	cmpls	r4, #65280
	bne	.L24
	.loc 1 162 0
	ldr	r0, [r5, #-4088]
	.loc 1 161 0
	cmp	r0, #15
	bhi	.L25
.LBB21:
	.loc 1 170 0
	ldr	ip, .L38+16
	ldr	r2, .L38+20
	ldrh	r1, [ip, #0]
	ldr	r4, [r2, #688]
.L27:
	.loc 1 167 0
	add	r4, r4, #1
.LVL12:
	.loc 1 169 0
	cmp	r4, #222
	.loc 1 170 0
	ldr	ip, .L38+24
	.loc 1 169 0
	movhi	r4, #0
	.loc 1 170 0
	add	sl, ip, r4, asl #2
.LVL13:
	ldrh	r2, [sl, #2]
	cmp	r2, r1
	beq	.L27
	ldr	r1, .L38+20
	.loc 1 172 0
	cmp	r4, #65280
	.loc 1 170 0
	str	r4, [r1, #688]
	.loc 1 172 0
	beq	.L25
	.loc 1 177 0
	ldrh	ip, [sl, #0]
	.loc 1 179 0
	add	r2, r5, r3, asl #1
	.loc 1 182 0
	ldr	lr, .L38+28
	.loc 1 177 0
	add	ip, r5, ip, asl #1
	sub	ip, ip, #1360
	.loc 1 179 0
	sub	r2, r2, #1360
	sub	r2, r2, #8
	.loc 1 182 0
	add	r0, lr, r0, asl #8
	.loc 1 177 0
	sub	ip, ip, #8
	mvn	lr, #255	@ movhi
	.loc 1 182 0
	mov	r1, r3
	.loc 1 177 0
	strh	lr, [ip, #0]	@ movhi
	.loc 1 182 0
	orr	r0, r0, #4194304
	.loc 1 180 0
	strh	r3, [sl, #0]	@ movhi
	.loc 1 179 0
	strh	r4, [r2, #0]	@ movhi
	.loc 1 182 0
	bl	neoSystemLoadTile
.LVL14:
	.loc 1 183 0
	ldr	r2, [r5, #-4088]
	mov	r3, r4, asl #8
	add	r3, r3, #100663296
	.loc 1 185 0
	add	r1, r2, #1
	.loc 1 183 0
	add	r3, r3, #256
	add	r2, r5, r2, asl #2
	str	r3, [r2, #-4056]
	.loc 1 185 0
	str	r1, [r5, #-4088]
	b	.L28
.LVL15:
.L24:
.LBE21:
	.loc 1 188 0
	cmp	r4, #65280
	beq	.L25
.L28:
.LBB22:
	.loc 1 190 0
	ldr	r1, .L38+24
	ldr	ip, .L38+16
	add	r3, r1, r4, asl #2
.LVL16:
	ldrh	r1, [r3, #2]
	ldrh	r2, [ip, #0]
	.loc 1 196 0
	and	r6, r6, #3
.LVL17:
	.loc 1 190 0
	cmp	r1, r2
	.loc 1 191 0
	strneh	r2, [r3, #2]	@ movhi
	.loc 1 196 0
	ldr	r2, [sp, #28]
	.loc 1 192 0
	ldrne	r1, [sp, #20]
	.loc 1 196 0
	add	r6, r6, #4
	add	r4, r6, r4, asl #2
.LVL18:
	ldr	r3, [sp, #16]
	and	r6, r2, #61440
	.loc 1 192 0
	addne	r1, r1, #1
	.loc 1 196 0
	orr	r4, r4, r6
	.loc 1 192 0
	strne	r1, [sp, #20]
	.loc 1 196 0
	strh	r4, [r3, r8]	@ movhi
	b	.L30
.LVL19:
.L25:
.LBE22:
	.loc 1 198 0
	ldr	r1, [sp, #16]
	mov	ip, #0	@ movhi
	strh	ip, [r1, r8]	@ movhi
.L30:
.LBE20:
.LBE25:
	.loc 1 139 0
	ldr	r3, [sp, #12]
.LVL20:
	add	fp, fp, #1
.LVL21:
	add	r3, r3, #2
	str	r3, [sp, #12]
	add	r8, r8, #128
.LVL22:
.L20:
	ldr	ip, [sp, #36]
	cmp	fp, ip
	ble	.L31
.LBE13:
	.loc 1 136 0
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #4]
	ldr	sl, [sp, #52]
.LVL23:
	add	r1, r1, #64
	add	r2, r2, #2
	add	sl, sl, #1
	str	r1, [sp, #8]
	str	r2, [sp, #4]
.LVL24:
.L19:
	ldr	r3, [sp, #40]
	cmp	sl, r3
	ble	.L32
	.loc 1 207 0
	add	sp, sp, #56
	ldmfd	sp!, {r4, r5, r6, r8, r9, sl, fp, pc}
.L39:
	.align	2
.L38:
	.word	g_videoBounds
	.word	.LANCHOR1
	.word	g_header
	.word	490
	.word	g_frameCount
	.word	.LANCHOR2
	.word	.LANCHOR3
	.word	.LANCHOR0
.LFE168:
	.size	neoDrawFixed, .-neoDrawFixed
	.align	2
	.global	neoFixedInit
	.type	neoFixedInit, %function
neoFixedInit:
.LFB166:
	.loc 1 33 0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 37 0
	mov	r3, #67108864
	mov	r2, #39936
	.loc 1 33 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
.LCFI3:
	.loc 1 37 0
	strh	r2, [r3, #12]	@ movhi
	.loc 1 43 0
	ldr	r2, .L46
	.loc 1 53 0
	mov	r0, #4096
	.loc 1 43 0
	strh	r2, [r3, #14]	@ movhi
	.loc 1 50 0
	ldr	r2, .L46+4
	.loc 1 53 0
	mov	r4, r7
	.loc 1 50 0
	strh	r2, [r3, #80]	@ movhi
	.loc 1 51 0
	sub	r2, r2, #60
	strh	r2, [r3, #82]	@ movhi
	.loc 1 53 0
	bl	neoSystemVramHAlloc
	.loc 1 56 0
	ldr	r3, .L46+8
	.loc 1 53 0
	str	r0, [r4, #476]
	mov	r2, #0
.L41:
	.loc 1 56 0
	mvn	r1, #255	@ movhi
	strh	r1, [r3, r2]	@ movhi
	add	r2, r2, #2
	.loc 1 55 0
	cmp	r2, #10240
	bne	.L41
	mov	r5, #0
	ldr	r6, .L46+12
.LBB26:
	.loc 1 62 0
	ldr	sl, .L46+16
	.loc 1 67 0
	ldr	r9, .L46+8
.LBE26:
	.loc 1 55 0
	mov	r4, r5
.LVL25:
.L42:
	mov	r8, r4, asl #16
.LBB27:
	.loc 1 62 0
	mov	r3, sl
.LBE27:
	.loc 1 55 0
	mov	r8, r8, lsr #16
.LBB28:
	.loc 1 62 0
	strh	r8, [r3, r5]!	@ movhi
	.loc 1 63 0
	mvn	r2, #0	@ movhi
	strh	r2, [r3, #2]	@ movhi
	.loc 1 65 0
	mov	r1, r4
	ldr	r0, .L46+20
	bl	neoSystemLoadTile
	.loc 1 66 0
	mov	r0, r6
	ldr	r1, .L46+20
	mov	r2, #256
	bl	memcpy
	.loc 1 67 0
	mov	r3, r4, asl #1
.LBE28:
	.loc 1 60 0
	add	r4, r4, #1
	cmp	r4, #223
.LBB29:
	.loc 1 67 0
	strh	r8, [r9, r3]	@ movhi
.LBE29:
	.loc 1 60 0
	add	r5, r5, #4
	add	r6, r6, #256
	bne	.L42
	.loc 1 70 0
	mov	r1, #0
	mov	r2, #2560
	ldr	r0, .L46+24
	bl	memset
	.loc 1 71 0
	ldr	r1, .L46+24
	mov	r0, #8
	mov	r2, #2560
	.loc 1 79 0
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	.loc 1 71 0
	b	neoSystemLoadRegion
.L47:
	.align	2
.L46:
	.word	-25599
	.word	2116
	.word	.LANCHOR1-1368
	.word	100663552
	.word	.LANCHOR3
	.word	.LANCHOR0
	.word	.LANCHOR1-3928
.LFE166:
	.size	neoFixedInit, .-neoFixedInit
	.section	.sbss,"aw",%nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	g_tileCache, %object
	.size	g_tileCache, 892
g_tileCache:
	.space	892
	.bss
	.align	5
	.set	.LANCHOR0,. + 0
	.set	.LANCHOR1,. + 8184
	.set	.LANCHOR2,. + 16368
	.type	g_tileLoadBuffer, %object
	.size	g_tileLoadBuffer, 4096
g_tileLoadBuffer:
	.space	4096
	.type	g_tileLoadIndex, %object
	.size	g_tileLoadIndex, 4
g_tileLoadIndex:
	.space	4
	.space	28
	.type	g_tileLoadAddr, %object
	.size	g_tileLoadAddr, 64
g_tileLoadAddr:
	.space	64
	.type	garouoffsets.7096, %object
	.size	garouoffsets.7096, 64
garouoffsets.7096:
	.space	64
	.type	g_tileUsed, %object
	.size	g_tileUsed, 2560
g_tileUsed:
	.space	2560
	.type	g_tileTable, %object
	.size	g_tileTable, 10240
g_tileTable:
	.space	10240
	.type	g_cacheIndex, %object
	.size	g_cacheIndex, 4
g_cacheIndex:
	.space	4
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
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.byte	0x4
	.4byte	.LCFI0-.LFB169
	.byte	0xe
	.uleb128 0xc
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x11
	.uleb128 0x4
	.sleb128 3
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.byte	0x4
	.4byte	.LCFI1-.LFB168
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
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
.LEFDE6:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LFB169-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE169-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB168-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 88
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST10:
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
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 5 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 6 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 7 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 8 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 9 "C:/Users/GRX/NeoDS-master-old/arm9/include/cyclone.h"
	.file 10 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoCpu.h"
	.file 11 "C:/Users/GRX/NeoDS-master-old/arm9/../common/source/NeoAudioStream.h"
	.file 12 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoSystem.h"
	.file 13 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoVideo.h"
	.file 14 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.section	.debug_info
	.4byte	0x13db
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF282
	.byte	0x1
	.4byte	.LASF283
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2a
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x35
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x36
	.4byte	0x57
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4f
	.4byte	0x69
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
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
	.byte	0x4
	.byte	0x46
	.4byte	0x28
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
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
	.byte	0x4
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x4
	.byte	0x63
	.4byte	0x4c
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x4
	.byte	0x64
	.4byte	0x70
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x4
	.byte	0x68
	.4byte	0x3a
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x4
	.byte	0x69
	.4byte	0x5e
	.uleb128 0x6
	.byte	0x1
	.byte	0x4
	.byte	0x7d
	.4byte	0xff
	.uleb128 0x7
	.4byte	.LASF16
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF17
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7d
	.4byte	0xea
	.uleb128 0x8
	.byte	0x4
	.4byte	0x110
	.uleb128 0x9
	.byte	0x1
	.uleb128 0xa
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
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.byte	0x9e
	.4byte	0x219
	.uleb128 0x7
	.4byte	.LASF22
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF23
	.sleb128 16384
	.uleb128 0x7
	.4byte	.LASF24
	.sleb128 32768
	.uleb128 0x7
	.4byte	.LASF25
	.sleb128 49152
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF27
	.sleb128 16384
	.uleb128 0x7
	.4byte	.LASF28
	.sleb128 32768
	.uleb128 0x7
	.4byte	.LASF29
	.sleb128 49152
	.uleb128 0x7
	.4byte	.LASF30
	.sleb128 128
	.uleb128 0x7
	.4byte	.LASF31
	.sleb128 16512
	.uleb128 0x7
	.4byte	.LASF32
	.sleb128 32896
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 49280
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 16384
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 132
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 16516
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 32900
	.uleb128 0x7
	.4byte	.LASF39
	.sleb128 49284
	.uleb128 0x7
	.4byte	.LASF40
	.sleb128 64
	.uleb128 0x7
	.4byte	.LASF41
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF42
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF43
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF44
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF45
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF46
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF47
	.sleb128 8192
	.uleb128 0x7
	.4byte	.LASF48
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF49
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF50
	.sleb128 8192
	.uleb128 0x7
	.4byte	.LASF51
	.sleb128 8192
	.uleb128 0x7
	.4byte	.LASF52
	.sleb128 128
	.uleb128 0x7
	.4byte	.LASF53
	.sleb128 0
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x28
	.byte	0x5
	.2byte	0x18c
	.4byte	0x2bd
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x18d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x18e
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x18f
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x190
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x191
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x192
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x193
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x194
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x195
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x196
	.4byte	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x198
	.4byte	0x219
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x8
	.byte	0x6
	.byte	0x29
	.4byte	0x2f2
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x6
	.byte	0x2a
	.4byte	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x6
	.byte	0x2b
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x123
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x6
	.byte	0x2c
	.4byte	0x2c9
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x9c
	.4byte	0x324
	.uleb128 0x7
	.4byte	.LASF68
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF69
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF70
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF71
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x7
	.byte	0xa1
	.4byte	0x303
	.uleb128 0x11
	.4byte	.LASF73
	.2byte	0x2020
	.byte	0x7
	.2byte	0x11a
	.4byte	0x3bb
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x11b
	.4byte	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x11e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x121
	.4byte	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x122
	.4byte	0x2f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x123
	.4byte	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x124
	.4byte	0x3cc
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x125
	.4byte	0x9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x126
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x201c
	.byte	0x0
	.uleb128 0x12
	.4byte	0x9b
	.4byte	0x3cc
	.uleb128 0x13
	.4byte	0x112
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9b
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x128
	.4byte	0x32f
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3ea
	.uleb128 0x14
	.4byte	0xbe
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x59
	.4byte	0x416
	.uleb128 0x7
	.4byte	.LASF82
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF83
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF84
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF85
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x62
	.4byte	0x437
	.uleb128 0x7
	.4byte	.LASF86
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF87
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF88
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF89
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x6a
	.4byte	0x458
	.uleb128 0x7
	.4byte	.LASF90
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF91
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF92
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF93
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x72
	.4byte	0x46d
	.uleb128 0x7
	.4byte	.LASF94
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF95
	.sleb128 1
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF96
	.byte	0xb0
	.byte	0x9
	.byte	0x15
	.4byte	0x603
	.uleb128 0x15
	.ascii	"d\000"
	.byte	0x9
	.byte	0x16
	.4byte	0x603
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.ascii	"a\000"
	.byte	0x9
	.byte	0x17
	.4byte	0x603
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.ascii	"pc\000"
	.byte	0x9
	.byte	0x18
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.ascii	"srh\000"
	.byte	0x9
	.byte	0x19
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0x9
	.byte	0x1a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0x9
	.byte	0x1b
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x15
	.ascii	"irq\000"
	.byte	0x9
	.byte	0x1c
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x15
	.ascii	"osp\000"
	.byte	0x9
	.byte	0x1d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.ascii	"xc\000"
	.byte	0x9
	.byte	0x1e
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0x9
	.byte	0x1f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x9
	.byte	0x20
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0x9
	.byte	0x21
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0x9
	.byte	0x22
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0x9
	.byte	0x23
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0x9
	.byte	0x24
	.4byte	0x623
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.4byte	.LASF105
	.byte	0x9
	.byte	0x25
	.4byte	0x623
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x9
	.byte	0x26
	.4byte	0x623
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0x9
	.byte	0x27
	.4byte	0x623
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0x9
	.byte	0x28
	.4byte	0x63a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0x9
	.byte	0x29
	.4byte	0x651
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.4byte	.LASF110
	.byte	0x9
	.byte	0x2a
	.4byte	0x668
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0x9
	.byte	0x2b
	.4byte	0x623
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0x9
	.byte	0x2c
	.4byte	0x623
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0x9
	.byte	0x2d
	.4byte	0x623
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x9
	.byte	0x2e
	.4byte	0x67e
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0x9
	.byte	0x2f
	.4byte	0x10a
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0x9
	.byte	0x30
	.4byte	0x68a
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0x9
	.byte	0x31
	.4byte	0x690
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x12
	.4byte	0x7b
	.4byte	0x613
	.uleb128 0x16
	.4byte	0x112
	.byte	0x7
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	0x7b
	.4byte	0x623
	.uleb128 0x18
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x613
	.uleb128 0x19
	.byte	0x1
	.4byte	0x63a
	.uleb128 0x18
	.4byte	0x7b
	.uleb128 0x18
	.4byte	0x33
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x629
	.uleb128 0x19
	.byte	0x1
	.4byte	0x651
	.uleb128 0x18
	.4byte	0x7b
	.uleb128 0x18
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x640
	.uleb128 0x19
	.byte	0x1
	.4byte	0x668
	.uleb128 0x18
	.4byte	0x7b
	.uleb128 0x18
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x657
	.uleb128 0x17
	.byte	0x1
	.4byte	0x69
	.4byte	0x67e
	.uleb128 0x18
	.4byte	0x69
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x66e
	.uleb128 0x1a
	.byte	0x1
	.4byte	0x69
	.uleb128 0x8
	.byte	0x4
	.4byte	0x684
	.uleb128 0x12
	.4byte	0x7b
	.4byte	0x6a0
	.uleb128 0x16
	.4byte	0x112
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0xa
	.byte	0x6
	.4byte	0x46d
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0xa
	.byte	0x8
	.4byte	0x6b6
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6bc
	.uleb128 0x17
	.byte	0x1
	.4byte	0xb4
	.4byte	0x6cc
	.uleb128 0x18
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0xa
	.byte	0x9
	.4byte	0x6d7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6dd
	.uleb128 0x17
	.byte	0x1
	.4byte	0xbe
	.4byte	0x6ed
	.uleb128 0x18
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0xa
	.byte	0xa
	.4byte	0x6f8
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6fe
	.uleb128 0x17
	.byte	0x1
	.4byte	0xc9
	.4byte	0x70e
	.uleb128 0x18
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0xa
	.byte	0xc
	.4byte	0x719
	.uleb128 0x8
	.byte	0x4
	.4byte	0x71f
	.uleb128 0x19
	.byte	0x1
	.4byte	0x730
	.uleb128 0x18
	.4byte	0xc9
	.uleb128 0x18
	.4byte	0xb4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0xa
	.byte	0xd
	.4byte	0x73b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x741
	.uleb128 0x19
	.byte	0x1
	.4byte	0x752
	.uleb128 0x18
	.4byte	0xc9
	.uleb128 0x18
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0xa
	.byte	0xe
	.4byte	0x75d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x763
	.uleb128 0x19
	.byte	0x1
	.4byte	0x774
	.uleb128 0x18
	.4byte	0xc9
	.uleb128 0x18
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0xa
	.byte	0x10
	.4byte	0x6f8
	.uleb128 0xf
	.4byte	.LASF126
	.byte	0xc
	.byte	0xb
	.byte	0x17
	.4byte	0x7c4
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0xb
	.byte	0x18
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.ascii	"end\000"
	.byte	0xb
	.byte	0x19
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.ascii	"acc\000"
	.byte	0xb
	.byte	0x1a
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0xb
	.byte	0x1b
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0xb
	.byte	0x1c
	.4byte	0x77f
	.uleb128 0xf
	.4byte	.LASF130
	.byte	0xc
	.byte	0xb
	.byte	0x1f
	.4byte	0x806
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0xb
	.byte	0x20
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF132
	.byte	0xb
	.byte	0x21
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0xb
	.byte	0x22
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0xb
	.byte	0x23
	.4byte	0x7cf
	.uleb128 0x1b
	.4byte	.LASF284
	.byte	0x1
	.byte	0xc
	.byte	0x99
	.4byte	0x85a
	.uleb128 0x7
	.4byte	.LASF135
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF136
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF137
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF138
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF139
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF140
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF141
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF142
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF143
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF144
	.sleb128 9
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF145
	.byte	0x8
	.byte	0xc
	.byte	0xa6
	.4byte	0x883
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0xc
	.byte	0xa7
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0xc
	.byte	0xa8
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0xc
	.byte	0xa9
	.4byte	0x85a
	.uleb128 0xf
	.4byte	.LASF147
	.byte	0x74
	.byte	0xc
	.byte	0xab
	.4byte	0x927
	.uleb128 0x10
	.4byte	.LASF148
	.byte	0xc
	.byte	0xac
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0xc
	.byte	0xad
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF150
	.byte	0xc
	.byte	0xae
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF151
	.byte	0xc
	.byte	0xaf
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0xc
	.byte	0xb0
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF153
	.byte	0xc
	.byte	0xb1
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF154
	.byte	0xc
	.byte	0xb2
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.4byte	.LASF155
	.byte	0xc
	.byte	0xb3
	.4byte	0x927
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.4byte	.LASF156
	.byte	0xc
	.byte	0xb4
	.4byte	0x937
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0xc
	.byte	0xb5
	.4byte	0x947
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.byte	0x0
	.uleb128 0x12
	.4byte	0x115
	.4byte	0x937
	.uleb128 0x16
	.4byte	0x112
	.byte	0xf
	.byte	0x0
	.uleb128 0x12
	.4byte	0x883
	.4byte	0x947
	.uleb128 0x16
	.4byte	0x112
	.byte	0x8
	.byte	0x0
	.uleb128 0x12
	.4byte	0xb4
	.4byte	0x956
	.uleb128 0x1c
	.4byte	0x112
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF157
	.byte	0xc
	.byte	0xb6
	.4byte	0x88e
	.uleb128 0x1d
	.2byte	0x248
	.byte	0xc
	.byte	0xc0
	.4byte	0xd4f
	.uleb128 0x15
	.ascii	"cpu\000"
	.byte	0xc
	.byte	0xc1
	.4byte	0x6a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF158
	.byte	0xc
	.byte	0xc4
	.4byte	0xd4f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x10
	.4byte	.LASF159
	.byte	0xc
	.byte	0xc7
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x10
	.4byte	.LASF160
	.byte	0xc
	.byte	0xc8
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x10
	.4byte	.LASF161
	.byte	0xc
	.byte	0xcb
	.4byte	0xd5f
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0xc
	.byte	0xcc
	.4byte	0x806
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x10
	.4byte	.LASF163
	.byte	0xc
	.byte	0xcd
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x10
	.4byte	.LASF164
	.byte	0xc
	.byte	0xd0
	.4byte	0x3ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x10
	.4byte	.LASF165
	.byte	0xc
	.byte	0xd1
	.4byte	0x3ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x10
	.4byte	.LASF166
	.byte	0xc
	.byte	0xd2
	.4byte	0x3ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x10
	.4byte	.LASF167
	.byte	0xc
	.byte	0xd3
	.4byte	0x3ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x10
	.4byte	.LASF168
	.byte	0xc
	.byte	0xd4
	.4byte	0x3ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x10
	.4byte	.LASF169
	.byte	0xc
	.byte	0xd5
	.4byte	0x3ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x10
	.4byte	.LASF170
	.byte	0xc
	.byte	0xd6
	.4byte	0x3de
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x10
	.4byte	.LASF171
	.byte	0xc
	.byte	0xd7
	.4byte	0x3de
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x10
	.4byte	.LASF172
	.byte	0xc
	.byte	0xd8
	.4byte	0x3de
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x10
	.4byte	.LASF173
	.byte	0xc
	.byte	0xda
	.4byte	0xd6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x10
	.4byte	.LASF174
	.byte	0xc
	.byte	0xdd
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x10
	.4byte	.LASF175
	.byte	0xc
	.byte	0xde
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x10
	.4byte	.LASF176
	.byte	0xc
	.byte	0xdf
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x10
	.4byte	.LASF177
	.byte	0xc
	.byte	0xe0
	.4byte	0xd80
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x10
	.4byte	.LASF178
	.byte	0xc
	.byte	0xe1
	.4byte	0xd80
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x10
	.4byte	.LASF179
	.byte	0xc
	.byte	0xe2
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x10
	.4byte	.LASF180
	.byte	0xc
	.byte	0xe5
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x10
	.4byte	.LASF181
	.byte	0xc
	.byte	0xe6
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x10
	.4byte	.LASF182
	.byte	0xc
	.byte	0xe7
	.4byte	0x3de
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x10
	.4byte	.LASF183
	.byte	0xc
	.byte	0xe8
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x10
	.4byte	.LASF184
	.byte	0xc
	.byte	0xea
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x10
	.4byte	.LASF185
	.byte	0xc
	.byte	0xeb
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x10
	.4byte	.LASF186
	.byte	0xc
	.byte	0xec
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x10
	.4byte	.LASF187
	.byte	0xc
	.byte	0xed
	.4byte	0xd8b
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x10
	.4byte	.LASF188
	.byte	0xc
	.byte	0xee
	.4byte	0x3de
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x10
	.4byte	.LASF189
	.byte	0xc
	.byte	0xf1
	.4byte	0xdf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x10
	.4byte	.LASF190
	.byte	0xc
	.byte	0xf2
	.4byte	0xdf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x10
	.4byte	.LASF191
	.byte	0xc
	.byte	0xf3
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x10
	.4byte	.LASF192
	.byte	0xc
	.byte	0xf4
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x10
	.4byte	.LASF193
	.byte	0xc
	.byte	0xf7
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x10
	.4byte	.LASF194
	.byte	0xc
	.byte	0xf8
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x10
	.4byte	.LASF195
	.byte	0xc
	.byte	0xf9
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x10
	.4byte	.LASF196
	.byte	0xc
	.byte	0xfa
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x10
	.4byte	.LASF197
	.byte	0xc
	.byte	0xfb
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x10
	.4byte	.LASF198
	.byte	0xc
	.byte	0xfc
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x10
	.4byte	.LASF199
	.byte	0xc
	.byte	0xfd
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.4byte	.LASF200
	.byte	0xc
	.2byte	0x102
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xd
	.4byte	.LASF151
	.byte	0xc
	.2byte	0x103
	.4byte	0xdf
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xd
	.4byte	.LASF201
	.byte	0xc
	.2byte	0x106
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xd
	.4byte	.LASF202
	.byte	0xc
	.2byte	0x108
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xd
	.4byte	.LASF203
	.byte	0xc
	.2byte	0x109
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.4byte	.LASF204
	.byte	0xc
	.2byte	0x10a
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.4byte	.LASF205
	.byte	0xc
	.2byte	0x10b
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.4byte	.LASF206
	.byte	0xc
	.2byte	0x10d
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.4byte	.LASF207
	.byte	0xc
	.2byte	0x10e
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.4byte	.LASF208
	.byte	0xc
	.2byte	0x10f
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.4byte	.LASF209
	.byte	0xc
	.2byte	0x110
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.4byte	.LASF210
	.byte	0xc
	.2byte	0x111
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xd
	.4byte	.LASF211
	.byte	0xc
	.2byte	0x114
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xd
	.4byte	.LASF212
	.byte	0xc
	.2byte	0x115
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xd
	.4byte	.LASF213
	.byte	0xc
	.2byte	0x116
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xd
	.4byte	.LASF214
	.byte	0xc
	.2byte	0x117
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xd
	.4byte	.LASF215
	.byte	0xc
	.2byte	0x118
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xd
	.4byte	.LASF216
	.byte	0xc
	.2byte	0x11b
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xd
	.4byte	.LASF217
	.byte	0xc
	.2byte	0x11c
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xd
	.4byte	.LASF218
	.byte	0xc
	.2byte	0x11f
	.4byte	0xd9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xd
	.4byte	.LASF219
	.byte	0xc
	.2byte	0x122
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xd
	.4byte	.LASF220
	.byte	0xc
	.2byte	0x123
	.4byte	0xdab
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0x12
	.4byte	0x123
	.4byte	0xd5f
	.uleb128 0x16
	.4byte	0x112
	.byte	0x8
	.byte	0x0
	.uleb128 0x12
	.4byte	0x7c4
	.4byte	0xd6f
	.uleb128 0x16
	.4byte	0x112
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd75
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd7b
	.uleb128 0x14
	.4byte	0xb4
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd86
	.uleb128 0x14
	.4byte	0xc9
	.uleb128 0x12
	.4byte	0xc9
	.4byte	0xd9b
	.uleb128 0x16
	.4byte	0x112
	.byte	0xf
	.byte	0x0
	.uleb128 0x12
	.4byte	0xb4
	.4byte	0xdab
	.uleb128 0x16
	.4byte	0x112
	.byte	0x7
	.byte	0x0
	.uleb128 0x12
	.4byte	0xb4
	.4byte	0xdba
	.uleb128 0x1c
	.4byte	0x112
	.byte	0x0
	.uleb128 0x1e
	.2byte	0x400
	.byte	0xc
	.byte	0xbf
	.4byte	0xdd5
	.uleb128 0x1f
	.4byte	0x961
	.uleb128 0x20
	.4byte	.LASF285
	.byte	0xc
	.2byte	0x125
	.4byte	0xdd5
	.byte	0x0
	.uleb128 0x12
	.4byte	0xc9
	.4byte	0xde5
	.uleb128 0x16
	.4byte	0x112
	.byte	0xff
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF221
	.2byte	0x2000
	.byte	0xc
	.byte	0xbe
	.4byte	0xe6b
	.uleb128 0x22
	.4byte	0xdba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF222
	.byte	0xc
	.2byte	0x128
	.4byte	0xe6b
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xd
	.4byte	.LASF223
	.byte	0xc
	.2byte	0x129
	.4byte	0xe7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xd
	.4byte	.LASF224
	.byte	0xc
	.2byte	0x12a
	.4byte	0xe8b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xd
	.4byte	.LASF225
	.byte	0xc
	.2byte	0x12b
	.4byte	0xe9b
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xd
	.4byte	.LASF226
	.byte	0xc
	.2byte	0x12c
	.4byte	0xeab
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xd
	.4byte	.LASF227
	.byte	0xc
	.2byte	0x12d
	.4byte	0xebb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xd
	.4byte	.LASF228
	.byte	0xc
	.2byte	0x12e
	.4byte	0xecb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0x12
	.4byte	0x6ab
	.4byte	0xe7b
	.uleb128 0x16
	.4byte	0x112
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x6cc
	.4byte	0xe8b
	.uleb128 0x16
	.4byte	0x112
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x6ed
	.4byte	0xe9b
	.uleb128 0x16
	.4byte	0x112
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x70e
	.4byte	0xeab
	.uleb128 0x16
	.4byte	0x112
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x730
	.4byte	0xebb
	.uleb128 0x16
	.4byte	0x112
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x752
	.4byte	0xecb
	.uleb128 0x16
	.4byte	0x112
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x774
	.4byte	0xedb
	.uleb128 0x16
	.4byte	0x112
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF229
	.byte	0xc
	.2byte	0x12f
	.4byte	0xde5
	.uleb128 0xf
	.4byte	.LASF230
	.byte	0x10
	.byte	0xd
	.byte	0x6
	.4byte	0xf2c
	.uleb128 0x10
	.4byte	.LASF231
	.byte	0xd
	.byte	0x7
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF232
	.byte	0xd
	.byte	0x8
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF233
	.byte	0xd
	.byte	0x9
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF234
	.byte	0xd
	.byte	0xa
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF235
	.byte	0xd
	.byte	0xb
	.4byte	0xee7
	.uleb128 0xf
	.4byte	.LASF236
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.4byte	0xf60
	.uleb128 0x10
	.4byte	.LASF237
	.byte	0x1
	.byte	0xa
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF238
	.byte	0x1
	.byte	0xb
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF239
	.byte	0x1
	.byte	0xc
	.4byte	0xf37
	.uleb128 0x23
	.4byte	.LASF286
	.byte	0x2
	.byte	0x7a
	.byte	0x1
	.byte	0x3
	.4byte	0xfa5
	.uleb128 0x24
	.4byte	.LASF240
	.byte	0x2
	.byte	0x7a
	.4byte	0x90
	.uleb128 0x25
	.ascii	"src\000"
	.byte	0x2
	.byte	0x7a
	.4byte	0xfa5
	.uleb128 0x24
	.4byte	.LASF241
	.byte	0x2
	.byte	0x7a
	.4byte	0x123
	.uleb128 0x24
	.4byte	.LASF61
	.byte	0x2
	.byte	0x7a
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfab
	.uleb128 0x26
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF287
	.byte	0x1
	.byte	0x51
	.4byte	.LFB167
	.4byte	.LFE167
	.byte	0x1
	.byte	0x5d
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF242
	.byte	0x1
	.byte	0xd1
	.4byte	.LFB169
	.4byte	.LFE169
	.4byte	.LLST1
	.4byte	0x1039
	.uleb128 0x29
	.4byte	.LASF244
	.byte	0x1
	.byte	0xd3
	.4byte	0xd75
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.ascii	"i\000"
	.byte	0x1
	.byte	0xd4
	.4byte	0xc9
	.uleb128 0x2b
	.4byte	0xf6b
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0xd8
	.4byte	0x1014
	.uleb128 0x2c
	.4byte	0xf99
	.uleb128 0x2c
	.4byte	0xf8e
	.uleb128 0x2c
	.4byte	0xf83
	.uleb128 0x2c
	.4byte	0xf78
	.byte	0x0
	.uleb128 0x2d
	.4byte	0xf6b
	.4byte	.LBB10
	.4byte	.LBE10
	.byte	0x1
	.byte	0xdd
	.uleb128 0x2c
	.4byte	0xf99
	.uleb128 0x2c
	.4byte	0xf8e
	.uleb128 0x2c
	.4byte	0xf83
	.uleb128 0x2c
	.4byte	0xf78
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF243
	.byte	0x1
	.byte	0x56
	.4byte	.LFB168
	.4byte	.LFE168
	.4byte	.LLST2
	.4byte	0x11f8
	.uleb128 0x2e
	.4byte	.LASF231
	.byte	0x1
	.byte	0x59
	.4byte	0x11f8
	.4byte	.LLST3
	.uleb128 0x29
	.4byte	.LASF233
	.byte	0x1
	.byte	0x5a
	.4byte	0x11f8
	.byte	0x2
	.byte	0x7d
	.sleb128 40
	.uleb128 0x29
	.4byte	.LASF232
	.byte	0x1
	.byte	0x5b
	.4byte	0x11f8
	.byte	0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x29
	.4byte	.LASF234
	.byte	0x1
	.byte	0x5c
	.4byte	0x11f8
	.byte	0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x2f
	.4byte	.LASF245
	.byte	0x1
	.byte	0x5d
	.4byte	0x11f8
	.uleb128 0x2f
	.4byte	.LASF246
	.byte	0x1
	.byte	0x5e
	.4byte	0x11f8
	.uleb128 0x29
	.4byte	.LASF247
	.byte	0x1
	.byte	0x60
	.4byte	0x11fd
	.byte	0x5
	.byte	0x3
	.4byte	garouoffsets.7096
	.uleb128 0x2e
	.4byte	.LASF248
	.byte	0x1
	.byte	0x62
	.4byte	0xdf
	.4byte	.LLST4
	.uleb128 0x29
	.4byte	.LASF249
	.byte	0x1
	.byte	0x63
	.4byte	0xdf
	.byte	0x1
	.byte	0x5b
	.uleb128 0x29
	.4byte	.LASF250
	.byte	0x1
	.byte	0x64
	.4byte	0xc9
	.byte	0x1
	.byte	0x59
	.uleb128 0x29
	.4byte	.LASF251
	.byte	0x1
	.byte	0x65
	.4byte	0xc9
	.byte	0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x30
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0x111b
	.uleb128 0x2e
	.4byte	.LASF252
	.byte	0x1
	.byte	0x75
	.4byte	0xc9
	.4byte	.LLST5
	.uleb128 0x2a
	.ascii	"k\000"
	.byte	0x1
	.byte	0x76
	.4byte	0xc9
	.uleb128 0x31
	.ascii	"y\000"
	.byte	0x1
	.byte	0x77
	.4byte	0xc9
	.4byte	.LLST6
	.byte	0x0
	.uleb128 0x32
	.4byte	.LBB13
	.4byte	.LBE13
	.uleb128 0x29
	.4byte	.LASF253
	.byte	0x1
	.byte	0x89
	.4byte	0x3e4
	.byte	0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x29
	.4byte	.LASF254
	.byte	0x1
	.byte	0x8a
	.4byte	0x3de
	.byte	0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2f
	.4byte	.LASF237
	.byte	0x1
	.byte	0x8c
	.4byte	0x3ea
	.uleb128 0x2e
	.4byte	.LASF255
	.byte	0x1
	.byte	0x8d
	.4byte	0xc9
	.4byte	.LLST7
	.uleb128 0x34
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0x1174
	.uleb128 0x2f
	.4byte	.LASF127
	.byte	0x1
	.byte	0x92
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x34
	.4byte	.Ldebug_ranges0+0x58
	.4byte	0x1194
	.uleb128 0x2f
	.4byte	.LASF201
	.byte	0x1
	.byte	0x95
	.4byte	0xc9
	.uleb128 0x2f
	.4byte	.LASF256
	.byte	0x1
	.byte	0x96
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x32
	.4byte	.LBB20
	.4byte	.LBE20
	.uleb128 0x2f
	.4byte	.LASF257
	.byte	0x1
	.byte	0x9b
	.4byte	0xd86
	.uleb128 0x2e
	.4byte	.LASF258
	.byte	0x1
	.byte	0x9c
	.4byte	0xd86
	.4byte	.LLST8
	.uleb128 0x2e
	.4byte	.LASF259
	.byte	0x1
	.byte	0x9e
	.4byte	0xc9
	.4byte	.LLST9
	.uleb128 0x30
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0x11df
	.uleb128 0x2f
	.4byte	.LASF260
	.byte	0x1
	.byte	0xa4
	.4byte	0x123
	.byte	0x0
	.uleb128 0x32
	.4byte	.LBB22
	.4byte	.LBE22
	.uleb128 0x2f
	.4byte	.LASF261
	.byte	0x1
	.byte	0xc2
	.4byte	0xd86
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.4byte	0xdf
	.uleb128 0x12
	.4byte	0xbe
	.4byte	0x120d
	.uleb128 0x16
	.4byte	0x112
	.byte	0x1f
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF262
	.byte	0x1
	.byte	0x20
	.4byte	.LFB166
	.4byte	.LFE166
	.4byte	.LLST10
	.4byte	0x1242
	.uleb128 0x35
	.ascii	"i\000"
	.byte	0x1
	.byte	0x22
	.4byte	0xdf
	.byte	0x1
	.byte	0x54
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x78
	.uleb128 0x2f
	.4byte	.LASF263
	.byte	0x1
	.byte	0x3d
	.4byte	0x1242
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf60
	.uleb128 0x36
	.4byte	.LASF264
	.byte	0x7
	.2byte	0x12e
	.4byte	0x1254
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3d2
	.uleb128 0x12
	.4byte	0xf60
	.4byte	0x126a
	.uleb128 0x16
	.4byte	0x112
	.byte	0xde
	.byte	0x0
	.uleb128 0x29
	.4byte	.LASF265
	.byte	0x1
	.byte	0x15
	.4byte	0x125a
	.byte	0x5
	.byte	0x3
	.4byte	g_tileCache
	.uleb128 0x29
	.4byte	.LASF266
	.byte	0x1
	.byte	0x16
	.4byte	0xc9
	.byte	0x5
	.byte	0x3
	.4byte	g_cacheIndex
	.uleb128 0x12
	.4byte	0xbe
	.4byte	0x129d
	.uleb128 0x13
	.4byte	0x112
	.2byte	0x13ff
	.byte	0x0
	.uleb128 0x29
	.4byte	.LASF267
	.byte	0x1
	.byte	0x18
	.4byte	0x128c
	.byte	0x5
	.byte	0x3
	.4byte	g_tileTable
	.uleb128 0x12
	.4byte	0xb4
	.4byte	0x12bf
	.uleb128 0x13
	.4byte	0x112
	.2byte	0x9ff
	.byte	0x0
	.uleb128 0x29
	.4byte	.LASF268
	.byte	0x1
	.byte	0x19
	.4byte	0x12ae
	.byte	0x5
	.byte	0x3
	.4byte	g_tileUsed
	.uleb128 0x12
	.4byte	0xb4
	.4byte	0x12e1
	.uleb128 0x13
	.4byte	0x112
	.2byte	0xfff
	.byte	0x0
	.uleb128 0x29
	.4byte	.LASF269
	.byte	0x1
	.byte	0x1c
	.4byte	0x12d0
	.byte	0x5
	.byte	0x3
	.4byte	g_tileLoadBuffer
	.uleb128 0x12
	.4byte	0x123
	.4byte	0x1302
	.uleb128 0x16
	.4byte	0x112
	.byte	0xf
	.byte	0x0
	.uleb128 0x29
	.4byte	.LASF270
	.byte	0x1
	.byte	0x1d
	.4byte	0x12f2
	.byte	0x5
	.byte	0x3
	.4byte	g_tileLoadAddr
	.uleb128 0x29
	.4byte	.LASF271
	.byte	0x1
	.byte	0x1e
	.4byte	0xc9
	.byte	0x5
	.byte	0x3
	.4byte	g_tileLoadIndex
	.uleb128 0x37
	.4byte	.LASF272
	.byte	0xe
	.byte	0x56
	.4byte	0xbe
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF273
	.byte	0xe
	.byte	0x57
	.4byte	0xbe
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0x134e
	.4byte	0x134e
	.uleb128 0x16
	.4byte	0x112
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1354
	.uleb128 0x38
	.4byte	0x57
	.uleb128 0x39
	.4byte	.LASF274
	.byte	0x5
	.2byte	0x19c
	.4byte	0x133e
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0x2bd
	.4byte	0x1377
	.uleb128 0x16
	.4byte	0x112
	.byte	0x7
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF275
	.byte	0x5
	.2byte	0x19f
	.4byte	0x1367
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.4byte	.LASF276
	.byte	0x7
	.2byte	0x12b
	.4byte	0x3d2
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.4byte	.LASF277
	.byte	0xc
	.2byte	0x149
	.4byte	0x13a2
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0xedb
	.uleb128 0x39
	.4byte	.LASF278
	.byte	0xc
	.2byte	0x14d
	.4byte	0xedb
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.4byte	.LASF279
	.byte	0xc
	.2byte	0x14e
	.4byte	0x956
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF280
	.byte	0xd
	.byte	0x52
	.4byte	0xf2c
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF281
	.byte	0xd
	.byte	0x59
	.4byte	0xbe
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x13df
	.4byte	0xfac
	.ascii	"neoFixedExit\000"
	.4byte	0xfbe
	.ascii	"neoLoadTiles\000"
	.4byte	0x1039
	.ascii	"neoDrawFixed\000"
	.4byte	0x120d
	.ascii	"neoFixedInit\000"
	.4byte	0x1393
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
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	0x0
	.4byte	0x0
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
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF75:
	.ascii	"clearColor\000"
.LASF180:
	.ascii	"scanline\000"
.LASF104:
	.ascii	"checkpc\000"
.LASF108:
	.ascii	"write8\000"
.LASF263:
	.ascii	"pEntry\000"
.LASF206:
	.ascii	"ctrl1Reg\000"
.LASF261:
	.ascii	"vramIndex\000"
.LASF186:
	.ascii	"spriteMask\000"
.LASF287:
	.ascii	"neoFixedExit\000"
.LASF48:
	.ascii	"BG_PALETTE_SLOT0\000"
.LASF49:
	.ascii	"BG_PALETTE_SLOT1\000"
.LASF50:
	.ascii	"BG_PALETTE_SLOT2\000"
.LASF51:
	.ascii	"BG_PALETTE_SLOT3\000"
.LASF279:
	.ascii	"g_header\000"
.LASF262:
	.ascii	"neoFixedInit\000"
.LASF113:
	.ascii	"fetch32\000"
.LASF264:
	.ascii	"glGlob\000"
.LASF194:
	.ascii	"cpuClocksPerScanline\000"
.LASF93:
	.ascii	"OBJSIZE_64\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF227:
	.ascii	"cpuWrite32Table\000"
.LASF265:
	.ascii	"g_tileCache\000"
.LASF226:
	.ascii	"cpuWrite16Table\000"
.LASF266:
	.ascii	"g_cacheIndex\000"
.LASF13:
	.ascii	"uint32\000"
.LASF102:
	.ascii	"cycles\000"
.LASF70:
	.ascii	"GL_MODELVIEW\000"
.LASF192:
	.ascii	"tileScaleY\000"
.LASF71:
	.ascii	"GL_TEXTURE\000"
.LASF215:
	.ascii	"paletteRamLatch\000"
.LASF62:
	.ascii	"type\000"
.LASF220:
	.ascii	"varEnd\000"
.LASF122:
	.ascii	"TWrite8Func\000"
.LASF105:
	.ascii	"read8\000"
.LASF35:
	.ascii	"BG_BMP8_512x1024\000"
.LASF94:
	.ascii	"OBJCOLOR_16\000"
.LASF47:
	.ascii	"BG_WRAP_ON\000"
.LASF109:
	.ascii	"write16\000"
.LASF134:
	.ascii	"TNeoADPCMBStream\000"
.LASF119:
	.ascii	"TRead8Func\000"
.LASF81:
	.ascii	"nameCount\000"
.LASF277:
	.ascii	"g_neo\000"
.LASF224:
	.ascii	"cpuRead32Table\000"
.LASF72:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF154:
	.ascii	"sectionCount\000"
.LASF20:
	.ascii	"long int\000"
.LASF281:
	.ascii	"g_frameCount\000"
.LASF244:
	.ascii	"pSrc\000"
.LASF153:
	.ascii	"audio2Offset\000"
.LASF111:
	.ascii	"fetch8\000"
.LASF29:
	.ascii	"BG_RS_128x128\000"
.LASF254:
	.ascii	"pDst\000"
.LASF218:
	.ascii	"keyGrid\000"
.LASF110:
	.ascii	"write32\000"
.LASF247:
	.ascii	"garouoffsets\000"
.LASF270:
	.ascii	"g_tileLoadAddr\000"
.LASF257:
	.ascii	"palIndex\000"
.LASF242:
	.ascii	"neoLoadTiles\000"
.LASF22:
	.ascii	"BG_32x32\000"
.LASF83:
	.ascii	"OBJMODE_BLENDED\000"
.LASF26:
	.ascii	"BG_RS_16x16\000"
.LASF221:
	.ascii	"_TNeoContext\000"
.LASF114:
	.ascii	"IrqCallback\000"
.LASF125:
	.ascii	"TCheckPcFunc\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF199:
	.ascii	"romBankAddress\000"
.LASF128:
	.ascii	"step\000"
.LASF163:
	.ascii	"adpcmActive\000"
.LASF141:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF225:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF191:
	.ascii	"tileScaleX\000"
.LASF33:
	.ascii	"BG_BMP8_512x512\000"
.LASF196:
	.ascii	"watchdogCounter\000"
.LASF143:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF183:
	.ascii	"vramBaseMask\000"
.LASF159:
	.ascii	"spriteCount\000"
.LASF116:
	.ascii	"UnrecognizedCallback\000"
.LASF173:
	.ascii	"bankTable\000"
.LASF19:
	.ascii	"char\000"
.LASF64:
	.ascii	"BgState\000"
.LASF97:
	.ascii	"unused\000"
.LASF212:
	.ascii	"screenDarkLatch\000"
.LASF46:
	.ascii	"BG_WRAP_OFF\000"
.LASF99:
	.ascii	"prev_pc\000"
.LASF130:
	.ascii	"_TNeoADPCMBStream\000"
.LASF239:
	.ascii	"TTileCacheEntry\000"
.LASF274:
	.ascii	"bgControl\000"
.LASF24:
	.ascii	"BG_32x64\000"
.LASF259:
	.ascii	"cacheIndex\000"
.LASF136:
	.ascii	"NEOROM_BIOS\000"
.LASF98:
	.ascii	"flags\000"
.LASF185:
	.ascii	"autoAnimationCounter\000"
.LASF76:
	.ascii	"textures\000"
.LASF123:
	.ascii	"TWrite16Func\000"
.LASF276:
	.ascii	"glGlobalData\000"
.LASF69:
	.ascii	"GL_POSITION\000"
.LASF193:
	.ascii	"cpuClockDivide\000"
.LASF222:
	.ascii	"cpuRead8Table\000"
.LASF181:
	.ascii	"frameCount\000"
.LASF146:
	.ascii	"TNeoRomEntry\000"
.LASF267:
	.ascii	"g_tileTable\000"
.LASF285:
	.ascii	"fill\000"
.LASF89:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF16:
	.ascii	"false\000"
.LASF258:
	.ascii	"cacheEntryIndex\000"
.LASF120:
	.ascii	"TRead16Func\000"
.LASF156:
	.ascii	"romEntry\000"
.LASF84:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF248:
	.ascii	"mapX\000"
.LASF249:
	.ascii	"mapY\000"
.LASF237:
	.ascii	"index\000"
.LASF271:
	.ascii	"g_tileLoadIndex\000"
.LASF167:
	.ascii	"pRam\000"
.LASF65:
	.ascii	"DynamicArray\000"
.LASF21:
	.ascii	"long unsigned int\000"
.LASF140:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF82:
	.ascii	"OBJMODE_NORMAL\000"
.LASF87:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF269:
	.ascii	"g_tileLoadBuffer\000"
.LASF223:
	.ascii	"cpuRead16Table\000"
.LASF204:
	.ascii	"displayControlMask\000"
.LASF118:
	.ascii	"TCycloneContext\000"
.LASF137:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF216:
	.ascii	"active\000"
.LASF188:
	.ascii	"pTileBuffer\000"
.LASF96:
	.ascii	"Cyclone\000"
.LASF38:
	.ascii	"BG_BMP16_512x256\000"
.LASF240:
	.ascii	"channel\000"
.LASF54:
	.ascii	"angle\000"
.LASF211:
	.ascii	"irqVectorLatch\000"
.LASF42:
	.ascii	"BG_PRIORITY_0\000"
.LASF43:
	.ascii	"BG_PRIORITY_1\000"
.LASF44:
	.ascii	"BG_PRIORITY_2\000"
.LASF45:
	.ascii	"BG_PRIORITY_3\000"
.LASF74:
	.ascii	"matrixMode\000"
.LASF228:
	.ascii	"cpuCheckPcTable\000"
.LASF37:
	.ascii	"BG_BMP16_256x256\000"
.LASF79:
	.ascii	"nextBlock\000"
.LASF41:
	.ascii	"BG_MOSAIC_OFF\000"
.LASF179:
	.ascii	"smaRand\000"
.LASF126:
	.ascii	"_TNeoADPCMStream\000"
.LASF166:
	.ascii	"pBios\000"
.LASF124:
	.ascii	"TWrite32Func\000"
.LASF282:
	.ascii	"GNU C 4.4.3\000"
.LASF230:
	.ascii	"_TNeoVideoBounds\000"
.LASF10:
	.ascii	"long long int\000"
.LASF68:
	.ascii	"GL_PROJECTION\000"
.LASF210:
	.ascii	"coinReg\000"
.LASF144:
	.ascii	"NEOROM_COUNT\000"
.LASF131:
	.ascii	"initOffset\000"
.LASF245:
	.ascii	"width\000"
.LASF275:
	.ascii	"bgState\000"
.LASF59:
	.ascii	"scrollX\000"
.LASF60:
	.ascii	"scrollY\000"
.LASF207:
	.ascii	"ctrl2Reg\000"
.LASF15:
	.ascii	"double\000"
.LASF117:
	.ascii	"internal\000"
.LASF209:
	.ascii	"ctrl4Reg\000"
.LASF238:
	.ascii	"frame\000"
.LASF174:
	.ascii	"smaAddr0\000"
.LASF175:
	.ascii	"smaAddr1\000"
.LASF184:
	.ascii	"displayCounter\000"
.LASF133:
	.ascii	"frequency\000"
.LASF14:
	.ascii	"float\000"
.LASF251:
	.ascii	"tilesUsed\000"
.LASF169:
	.ascii	"pCard\000"
.LASF243:
	.ascii	"neoDrawFixed\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF88:
	.ascii	"OBJSHAPE_TALL\000"
.LASF34:
	.ascii	"BG_BMP8_1024x512\000"
.LASF28:
	.ascii	"BG_RS_64x64\000"
.LASF252:
	.ascii	"garoubank\000"
.LASF203:
	.ascii	"displayControl\000"
.LASF40:
	.ascii	"BG_MOSAIC_ON\000"
.LASF182:
	.ascii	"pVramBase\000"
.LASF150:
	.ascii	"protection\000"
.LASF95:
	.ascii	"OBJCOLOR_256\000"
.LASF127:
	.ascii	"offset\000"
.LASF138:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF164:
	.ascii	"pRom0\000"
.LASF165:
	.ascii	"pRom1\000"
.LASF189:
	.ascii	"tileOffsetX\000"
.LASF190:
	.ascii	"tileOffsetY\000"
.LASF53:
	.ascii	"BG_COLOR_16\000"
.LASF250:
	.ascii	"bankType\000"
.LASF18:
	.ascii	"bool\000"
.LASF135:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF78:
	.ascii	"activeTexture\000"
.LASF201:
	.ascii	"vramOffset\000"
.LASF36:
	.ascii	"BG_BMP16_128x128\000"
.LASF106:
	.ascii	"read16\000"
.LASF256:
	.ascii	"vramShift\000"
.LASF268:
	.ascii	"g_tileUsed\000"
.LASF284:
	.ascii	"_TNeoRomRegion\000"
.LASF233:
	.ascii	"maxX\000"
.LASF234:
	.ascii	"maxY\000"
.LASF214:
	.ascii	"sramProtectLatch\000"
.LASF283:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/NeoVideoF"
	.ascii	"ixed.arm.c\000"
.LASF278:
	.ascii	"g_neoContext\000"
.LASF229:
	.ascii	"TNeoContext\000"
.LASF255:
	.ascii	"tileIndex\000"
.LASF103:
	.ascii	"membase\000"
.LASF132:
	.ascii	"freqCounter\000"
.LASF235:
	.ascii	"TNeoVideoBounds\000"
.LASF85:
	.ascii	"OBJMODE_BITMAP\000"
.LASF61:
	.ascii	"size\000"
.LASF172:
	.ascii	"pPalette\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF107:
	.ascii	"read32\000"
.LASF208:
	.ascii	"ctrl3Reg\000"
.LASF217:
	.ascii	"debug\000"
.LASF142:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF23:
	.ascii	"BG_64x32\000"
.LASF67:
	.ascii	"cur_size\000"
.LASF149:
	.ascii	"version\000"
.LASF187:
	.ascii	"paletteDirty\000"
.LASF52:
	.ascii	"BG_COLOR_256\000"
.LASF157:
	.ascii	"TNeoRomHeader\000"
.LASF162:
	.ascii	"adpcmb\000"
.LASF32:
	.ascii	"BG_BMP8_512x256\000"
.LASF171:
	.ascii	"pSpriteRam\000"
.LASF241:
	.ascii	"dest\000"
.LASF177:
	.ascii	"smaBankoffset\000"
.LASF198:
	.ascii	"fixedBank\000"
.LASF260:
	.ascii	"pLoadAddr\000"
.LASF31:
	.ascii	"BG_BMP8_256x256\000"
.LASF90:
	.ascii	"OBJSIZE_8\000"
.LASF236:
	.ascii	"_TTileCacheEntry\000"
.LASF101:
	.ascii	"state_flags\000"
.LASF151:
	.ascii	"sramProtection\000"
.LASF155:
	.ascii	"name\000"
.LASF12:
	.ascii	"uint8\000"
.LASF168:
	.ascii	"pSram\000"
.LASF4:
	.ascii	"short int\000"
.LASF219:
	.ascii	"frameCounter\000"
.LASF80:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF115:
	.ascii	"ResetCallback\000"
.LASF25:
	.ascii	"BG_64x64\000"
.LASF17:
	.ascii	"true\000"
.LASF205:
	.ascii	"displayCounterLoad\000"
.LASF77:
	.ascii	"texturePtrs\000"
.LASF253:
	.ascii	"pMapSrc\000"
.LASF145:
	.ascii	"_TNeoRomEntry\000"
.LASF147:
	.ascii	"_TNeoRomHeader\000"
.LASF161:
	.ascii	"adpcm\000"
.LASF170:
	.ascii	"pVram\000"
.LASF286:
	.ascii	"dmaCopyWords\000"
.LASF91:
	.ascii	"OBJSIZE_16\000"
.LASF195:
	.ascii	"irqPending\000"
.LASF55:
	.ascii	"centerX\000"
.LASF56:
	.ascii	"centerY\000"
.LASF121:
	.ascii	"TRead32Func\000"
.LASF272:
	.ascii	"mosaicShadow\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF57:
	.ascii	"scaleX\000"
.LASF58:
	.ascii	"scaleY\000"
.LASF100:
	.ascii	"reserved\000"
.LASF39:
	.ascii	"BG_BMP16_512x512\000"
.LASF27:
	.ascii	"BG_RS_32x32\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF148:
	.ascii	"magic\000"
.LASF73:
	.ascii	"gl_hidden_globals\000"
.LASF92:
	.ascii	"OBJSIZE_32\000"
.LASF231:
	.ascii	"minX\000"
.LASF232:
	.ascii	"minY\000"
.LASF152:
	.ascii	"fixedBankType\000"
.LASF273:
	.ascii	"mosaicShadowSub\000"
.LASF280:
	.ascii	"g_videoBounds\000"
.LASF30:
	.ascii	"BG_BMP8_128x128\000"
.LASF158:
	.ascii	"pVideoWriteTable\000"
.LASF197:
	.ascii	"paletteBank\000"
.LASF63:
	.ascii	"dirty\000"
.LASF176:
	.ascii	"smaBankAddr\000"
.LASF112:
	.ascii	"fetch16\000"
.LASF86:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF178:
	.ascii	"smaBankbit\000"
.LASF139:
	.ascii	"NEOROM_AUDODATA\000"
.LASF66:
	.ascii	"data\000"
.LASF213:
	.ascii	"fixedRomLatch\000"
.LASF200:
	.ascii	"sramProtectCount\000"
.LASF160:
	.ascii	"romBankCount\000"
.LASF129:
	.ascii	"TNeoADPCMStream\000"
.LASF246:
	.ascii	"height\000"
.LASF202:
	.ascii	"vramMod\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
