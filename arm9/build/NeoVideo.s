	.code	16
	.file	"NeoVideo.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.code 16
	.thumb_func
	.type	divf32, %function
divf32:
.LFB26:
	.file 1 "C:/devkitPro/libnds/include/nds/arm9/math.h"
	.loc 1 95 0
	push	{r4, lr}
.LCFI0:
.LVL0:
	.loc 1 96 0
	ldr	r3, .L11
	mov	r2, #1
	strh	r2, [r3]
.L2:
	.loc 1 98 0
	ldr	r3, .L11
	ldrh	r3, [r3]
	lsl	r3, r3, #16
	cmp	r3, #0
	blt	.L2
	.loc 1 100 0
	asr	r4, r0, #31
.LVL1:
	lsr	r2, r0, #20
	lsl	r4, r4, #12
.LVL2:
	orr	r4, r4, r2
	ldr	r2, .L11+4
	lsl	r3, r0, #12
	str	r3, [r2]
	str	r4, [r2, #4]
	.loc 1 101 0
	ldr	r3, .L11+8
	str	r1, [r3]
.L4:
	.loc 1 103 0
	ldr	r3, .L11
	ldrh	r3, [r3]
	lsl	r3, r3, #16
	cmp	r3, #0
	blt	.L4
	.loc 1 105 0
	ldr	r3, .L11+12
	.loc 1 106 0
	@ sp needed for prologue
	.loc 1 105 0
	ldr	r0, [r3]
.LVL3:
	.loc 1 106 0
	pop	{r4, pc}
.L12:
	.align	2
.L11:
	.word	67109504
	.word	67109520
	.word	67109528
	.word	67109536
.LFE26:
	.size	divf32, .-divf32
	.align	2
	.code 16
	.thumb_func
	.type	glOrthof32, %function
glOrthof32:
.LFB73:
	.file 2 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.loc 2 820 0
	push	{r4, r5, r6, lr}
.LCFI1:
.LVL4:
	sub	sp, sp, #24
.LCFI2:
	.loc 2 821 0
	mov	r6, #128
	.loc 2 820 0
	str	r2, [sp, #4]
	.loc 2 821 0
	lsl	r6, r6, #6
	sub	r2, r1, r0
.LVL5:
	.loc 2 820 0
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	.loc 2 821 0
	mov	r0, r6
.LVL6:
	mov	r1, r2
.LVL7:
	.loc 2 820 0
	str	r3, [sp]
	.loc 2 821 0
	str	r2, [sp, #16]
	bl	divf32
.LVL8:
	.loc 2 827 0
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	.loc 2 821 0
	ldr	r4, .L15
	.loc 2 822 0
	mov	r5, #0
	.loc 2 827 0
	sub	r3, r3, r2
	.loc 2 821 0
	str	r0, [r4]
	.loc 2 827 0
	mov	r1, r3
	.loc 2 822 0
	str	r5, [r4]
	.loc 2 827 0
	mov	r0, r6
	.loc 2 823 0
	str	r5, [r4]
	.loc 2 824 0
	str	r5, [r4]
	.loc 2 826 0
	str	r5, [r4]
	.loc 2 827 0
	str	r3, [sp, #20]
	bl	divf32
	str	r0, [r4]
	.loc 2 828 0
	str	r5, [r4]
	.loc 2 829 0
	str	r5, [r4]
	.loc 2 831 0
	str	r5, [r4]
	.loc 2 832 0
	str	r5, [r4]
	.loc 2 833 0
	ldr	r3, [sp, #44]
	ldr	r2, [sp, #40]
	ldr	r0, .L15+4
	sub	r6, r3, r2
	mov	r1, r6
	bl	divf32
	.loc 2 836 0
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	.loc 2 833 0
	str	r0, [r4]
	.loc 2 836 0
	ldr	r1, [sp, #16]
	.loc 2 834 0
	str	r5, [r4]
	.loc 2 836 0
	add	r0, r3, r2
	bl	divf32
	.loc 2 837 0
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
	.loc 2 836 0
	neg	r0, r0
	str	r0, [r4]
	.loc 2 837 0
	ldr	r1, [sp, #20]
	add	r0, r3, r2
	bl	divf32
	neg	r0, r0
	str	r0, [r4]
	.loc 2 838 0
	ldr	r3, [sp, #44]
	ldr	r2, [sp, #40]
	mov	r1, r6
	add	r0, r3, r2
	bl	divf32
	.loc 2 839 0
	mov	r3, #128
	.loc 2 838 0
	neg	r0, r0
	.loc 2 839 0
	lsl	r3, r3, #5
	.loc 2 840 0
	add	sp, sp, #24
	.loc 2 838 0
	str	r0, [r4]
	.loc 2 840 0
	@ sp needed for prologue
	.loc 2 839 0
	str	r3, [r4]
	.loc 2 840 0
	pop	{r4, r5, r6, pc}
.L16:
	.align	2
.L15:
	.word	67109984
	.word	-8192
.LFE73:
	.size	glOrthof32, .-glOrthof32
	.align	2
	.global	neoVideoSetSize
	.code 16
	.thumb_func
	.type	neoVideoSetSize, %function
neoVideoSetSize:
.LFB109:
	.file 3 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoVideo.c"
	.loc 3 47 0
.LVL9:
	.loc 3 49 0
	ldr	r3, .L19
	.loc 3 47 0
	@ lr needed for prologue
	.loc 3 49 0
	strb	r0, [r3]
	.loc 3 50 0
	@ sp needed for prologue
	bx	lr
.L20:
	.align	2
.L19:
	.word	g_size
.LFE109:
	.size	neoVideoSetSize, .-neoVideoSetSize
	.align	2
	.global	neoVideoGetSize
	.code 16
	.thumb_func
	.type	neoVideoGetSize, %function
neoVideoGetSize:
.LFB110:
	.loc 3 53 0
	ldr	r3, .L23
	@ lr needed for prologue
	.loc 3 53 0
	ldrb	r0, [r3]
	.loc 3 55 0
	@ sp needed for prologue
	bx	lr
.L24:
	.align	2
.L23:
	.word	g_size
.LFE110:
	.size	neoVideoGetSize, .-neoVideoGetSize
	.align	2
	.global	neoVideoExit
	.code 16
	.thumb_func
	.type	neoVideoExit, %function
neoVideoExit:
.LFB114:
	.loc 3 236 0
	push	{lr}
.LCFI3:
	sub	sp, sp, #4
.LCFI4:
	.loc 3 237 0
	bl	neoFixedExit
	.loc 3 238 0
	bl	neoSpriteExit
	.loc 3 239 0
	bl	neoPaletteExit
	.loc 3 240 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE114:
	.size	neoVideoExit, .-neoVideoExit
	.align	2
	.code 16
	.thumb_func
	.type	vblankIntr, %function
vblankIntr:
.LFB111:
	.loc 3 89 0
	push	{r4, r5, r6, lr}
.LCFI5:
	.loc 3 111 0
	ldr	r4, .L37
	.loc 3 89 0
	sub	sp, sp, #8
.LCFI6:
	.loc 3 111 0
	ldrh	r3, [r4]
	.loc 3 108 0
	str	r7, [sp, #4]
.LVL10:
.LBB4:
.LBB5:
	.file 4 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
	.loc 4 337 0
	ldr	r7, .L37+4
.LBE5:
.LBE4:
	.loc 3 111 0
	cmp	r3, #2
	bne	.L28
	.loc 3 112 0
	bl	neoLoadSprites
	.loc 3 113 0
	bl	neoLoadPalette
	.loc 3 114 0
	bl	neoLoadTiles
	.loc 3 116 0
	mov	r3, #0
	.loc 3 117 0
	ldr	r2, .L37+8
	.loc 3 116 0
	strh	r3, [r4]
	.loc 3 117 0
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
.L28:
	.loc 3 124 0
	ldr	r3, .L37+12
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L30
	.loc 3 125 0
	ldr	r2, .L37+16
	ldr	r6, .L37+20
	ldrh	r1, [r2]
	mov	r3, #240
	lsl	r0, r1, #1
	lsl	r3, r3, #1
	ldr	r5, [r7, r3]
	ldrh	r3, [r0, r6]
	mov	ip, r2
	ldr	r2, .L37+24
	add	r3, r5, r3
	str	r3, [r2]
	.loc 3 126 0
	mov	r3, #242
	add	r0, r0, r6
	lsl	r3, r3, #1
	ldr	r4, [r7, r3]
	ldrh	r3, [r0, #2]
	add	r2, r2, #4
	add	r3, r4, r3
	str	r3, [r2]
	.loc 3 127 0
	ldrh	r3, [r0, #4]
	.loc 3 129 0
	add	r1, r1, #4
	.loc 3 127 0
	add	r5, r5, r3
	ldr	r3, .L37+28
	.loc 3 129 0
	lsl	r1, r1, #16
	.loc 3 127 0
	str	r5, [r3]
	.loc 3 128 0
	ldrh	r3, [r0, #6]
	.loc 3 129 0
	lsr	r1, r1, #16
	.loc 3 128 0
	add	r4, r4, r3
	ldr	r3, .L37+32
	str	r4, [r3]
	.loc 3 129 0
	mov	r3, ip
	strh	r1, [r3]
	.loc 3 130 0
	cmp	r1, #7
	bls	.L32
	mov	r3, #0
	mov	r2, ip
	strh	r3, [r2]
	b	.L32
.L30:
	.loc 3 132 0
	mov	r3, #240
	lsl	r3, r3, #1
	ldr	r1, [r7, r3]
	ldr	r3, .L37+24
	str	r1, [r3]
	.loc 3 133 0
	mov	r3, #242
	lsl	r3, r3, #1
	ldr	r2, [r7, r3]
	ldr	r3, .L37+36
	str	r2, [r3]
	.loc 3 134 0
	add	r3, r3, #12
	str	r1, [r3]
	.loc 3 135 0
	add	r3, r3, #4
	str	r2, [r3]
.L32:
	.loc 3 138 0
	mov	r3, #244
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	ldr	r3, .L37+40
	strh	r1, [r3]
	.loc 3 139 0
	mov	r3, #245
	lsl	r3, r3, #1
	ldrh	r2, [r7, r3]
	ldr	r3, .L37+44
	strh	r2, [r3]
	.loc 3 140 0
	add	r3, r3, #10
	strh	r1, [r3]
	.loc 3 141 0
	add	r3, r3, #6
	strh	r2, [r3]
	.loc 3 143 0
	ldr	r2, .L37+48
	ldrh	r3, [r2]
	add	r3, r3, #1
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r2]
	.loc 3 144 0
	cmp	r3, #59
	bls	.L34
	.loc 3 146 0
	ldr	r1, .L37+8
	.loc 3 145 0
	mov	r0, #0
	strh	r0, [r2]
	.loc 3 146 0
	ldr	r3, .L37+52
	ldr	r2, [r1]
	str	r2, [r3]
	.loc 3 147 0
	str	r0, [r1]
.L34:
	.loc 3 149 0
	ldr	r7, [sp, #4]
	.loc 3 150 0
	add	sp, sp, #8
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L38:
	.align	2
.L37:
	.word	g_framePending
	.word	g_neoContext
	.word	g_frames
	.word	g_size
	.word	sIndex.5407
	.word	jitter4.5405
	.word	67108904
	.word	67108920
	.word	67108924
	.word	67108908
	.word	67108896
	.word	67108902
	.word	sTime.5408
	.word	g_currentFps
.LFE111:
	.size	vblankIntr, .-vblankIntr
	.align	2
	.global	neoVideoDrawFrame
	.code 16
	.thumb_func
	.type	neoVideoDrawFrame, %function
neoVideoDrawFrame:
.LFB115:
	.loc 3 265 0
	push	{r4, r5, lr}
.LCFI7:
	.loc 3 266 0
	ldr	r3, .L71
	ldr	r2, .L71+4
	ldrb	r3, [r3]
	.loc 3 265 0
	sub	sp, sp, #12
.LCFI8:
	.loc 3 266 0
	lsl	r3, r3, #4
	add	r4, r3, r2
.LVL11:
	.loc 3 272 0
	ldr	r2, .L71+8
	ldrh	r3, [r2]
	add	r3, r3, #1
	strh	r3, [r2]
	b	.L40
.L41:
	.loc 3 278 0
	mov	r0, #0
	mov	r1, #1
	bl	swiIntrWait
.L40:
	.loc 3 274 0
	ldr	r3, .L71+12
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L41
	.loc 3 281 0
	ldr	r0, .L71+16
	ldr	r2, [r4]
	ldr	r3, [r0]
	cmp	r3, r2
	bne	.L43
	ldr	r1, [r0, #8]
	ldr	r3, [r4, #8]
	cmp	r1, r3
	bne	.L45
	ldr	r2, [r0, #4]
	ldr	r3, [r4, #4]
	cmp	r2, r3
	bne	.L47
	ldr	r2, [r0, #12]
	ldr	r3, [r4, #12]
	cmp	r2, r3
	bne	.L47
	b	.L49
.L43:
	.loc 3 283 0
	cmp	r3, r2
	bge	.L50
	add	r3, r3, #1
	b	.L67
.L50:
	.loc 3 284 0
	cmp	r3, r2
	ble	.L45
	sub	r3, r3, #1
.L67:
	str	r3, [r0]
.L45:
	.loc 3 286 0
	ldr	r2, .L71+16
	ldr	r3, [r4, #8]
	ldr	r1, [r2, #8]
	cmp	r1, r3
	bge	.L47
	add	r3, r1, #1
	b	.L68
.L47:
	.loc 3 287 0
	ldr	r3, [r4]
	cmp	r1, r3
	ble	.L54
	ldr	r2, .L71+16
	sub	r3, r1, #1
.L68:
	str	r3, [r2, #8]
.L54:
	.loc 3 289 0
	ldr	r1, .L71+16
	ldr	r2, [r4, #4]
	ldr	r3, [r1, #4]
	cmp	r3, r2
	bge	.L56
	add	r3, r3, #16
	b	.L69
.L56:
	.loc 3 290 0
	cmp	r3, r2
	ble	.L58
	sub	r3, r3, #16
.L69:
	str	r3, [r1, #4]
.L58:
	.loc 3 292 0
	ldr	r1, .L71+16
	ldr	r3, [r4, #12]
	ldr	r2, [r1, #12]
	cmp	r2, r3
	bge	.L60
	mov	r3, r2
	add	r3, r3, #16
	b	.L70
.L60:
	.loc 3 293 0
	ldr	r3, [r4, #4]
	cmp	r2, r3
	ble	.L62
	mov	r3, r2
	sub	r3, r3, #16
.L70:
	str	r3, [r1, #12]
.L62:
.LBB12:
.LBB13:
	.loc 2 588 0
	ldr	r5, .L71+20
.LBE13:
.LBE12:
.LBB14:
.LBB15:
	.loc 2 583 0
	ldr	r3, .L71+24
.LBE15:
.LBE14:
.LBB16:
.LBB17:
	.loc 2 588 0
	mov	r4, #0
.LVL12:
	str	r4, [r5]
.LBE17:
.LBE16:
.LBB18:
.LBB19:
	.loc 2 583 0
	str	r4, [r3]
.LBE19:
.LBE18:
	.loc 3 297 0
	ldr	r3, .L71+16
	ldr	r0, [r3]
	ldr	r1, [r3, #8]
	ldr	r2, [r3, #12]
	ldr	r3, [r3, #4]
	str	r4, [sp]
	mov	r4, #128
	lsl	r4, r4, #5
	str	r4, [sp, #4]
	bl	glOrthof32
.LBB20:
.LBB21:
	.loc 2 588 0
	mov	r3, #2
	str	r3, [r5]
.LVL13:
.L49:
.LBE21:
.LBE20:
	.loc 3 306 0
	bl	guiSystemRender
	.loc 3 308 0
	bl	neoUpdatePalette
	.loc 3 310 0
	mov	r3, #130
	lsl	r3, r3, #2
	ldr	r3, [r7, r3]
	cmp	r3, #0
	beq	.L64
	.loc 3 312 0
	bl	neoDrawSprites
.L64:
	.loc 3 317 0
	ldr	r3, .L71+28
	blx	r3
	.loc 3 320 0
	ldr	r2, .L71+12
	mov	r3, #1
	.loc 3 321 0
	add	sp, sp, #12
	.loc 3 320 0
	strh	r3, [r2]
	.loc 3 321 0
	@ sp needed for prologue
.LVL14:
	pop	{r4, r5, pc}
.L72:
	.align	2
.L71:
	.word	g_size
	.word	g_videoBoundsList
	.word	g_frameCount
	.word	g_framePending
	.word	g_videoBounds
	.word	67109952
	.word	67109972
	.word	neoDrawFixed
.LFE115:
	.size	neoVideoDrawFrame, .-neoVideoDrawFrame
	.align	2
	.global	neoVideoInit
	.code 16
	.thumb_func
	.type	neoVideoInit, %function
neoVideoInit:
.LFB113:
	.loc 3 165 0
	push	{r4, r5, r6, lr}
.LCFI9:
	.loc 3 166 0
	mov	r2, r7
	add	r2, r2, #252
	ldr	r2, [r2, #92]
	mov	r3, #196
	lsl	r3, r3, #1
	str	r2, [r7, r3]
	.loc 3 167 0
	ldr	r4, .L75
	mov	r3, #198
	.loc 3 165 0
	sub	sp, sp, #8
.LCFI10:
	.loc 3 167 0
	lsl	r3, r3, #1
	.loc 3 169 0
	mov	r0, #1
	.loc 3 167 0
	str	r4, [r7, r3]
	.loc 3 169 0
	bl	vramSetBankE
	.loc 3 170 0
	mov	r0, #0
	bl	vramSetBankF
	.loc 3 171 0
	mov	r0, #0
	bl	vramSetBankG
	.loc 3 172 0
	mov	r0, #0
	bl	vramSetBankH
.LBB32:
.LBB33:
	.file 5 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.loc 5 292 0
	ldr	r2, .L75+4
	mov	r3, #128
	lsl	r3, r3, #19
	str	r2, [r3]
.LBE33:
.LBE32:
	.loc 3 183 0
	ldr	r3, .L75+8
	mov	r0, #2
	strh	r0, [r3]
	.loc 3 185 0
	mov	r1, #1
	add	r3, r3, #88
	strh	r1, [r3]
	.loc 3 186 0
	ldr	r2, .L75+12
	ldr	r3, .L75+16
	.loc 3 199 0
	mov	r5, #0
	.loc 3 186 0
	str	r2, [r3]
	.loc 3 192 0
	ldr	r2, .L75+20
	sub	r3, r3, #220
	str	r2, [r3]
	.loc 3 197 0
	sub	r3, r3, #36
	str	r4, [r3]
	.loc 3 199 0
	ldr	r3, .L75+24
	.loc 3 203 0
	ldr	r2, .L75+28
	.loc 3 199 0
	str	r5, [r3]
	.loc 3 200 0
	add	r3, r3, #4
	strh	r4, [r3]
	.loc 3 204 0
	ldr	r3, .L75+32
	.loc 3 210 0
	ldr	r0, .L75+32
	.loc 3 207 0
	mov	r6, #2
	.loc 3 203 0
	str	r5, [r2]
	.loc 3 204 0
	str	r5, [r3]
	.loc 3 205 0
	str	r1, [r2]
	.loc 3 206 0
	str	r5, [r3]
	.loc 3 207 0
	str	r6, [r2]
	.loc 3 208 0
	str	r5, [r3]
	.loc 3 209 0
	mov	r3, #3
	str	r3, [r2]
	.loc 3 210 0
	str	r5, [r0]
	.loc 3 212 0
	bl	neoFixedInit
	.loc 3 213 0
	bl	neoSpriteInit
	.loc 3 214 0
	bl	neoPaletteInit
.LBB34:
.LBB35:
	.file 6 "C:/devkitPro/libnds/include/nds/system.h"
	.loc 6 64 0
	ldr	r1, .L75+36
	mov	r2, #127
	ldrh	r3, [r1]
.LBE35:
.LBE34:
	.loc 3 217 0
	mov	r0, #1
.LBB36:
.LBB37:
	.loc 6 64 0
	and	r3, r3, r2
	ldr	r2, .L75+40
	orr	r3, r3, r2
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r1]
.LBE37:
.LBE36:
	.loc 3 217 0
	ldr	r1, .L75+44
	bl	irqSet
	.loc 3 218 0
	ldr	r1, .L75+48
	mov	r0, #4
	bl	irqSet
	.loc 3 220 0
	ldr	r2, .L75+52
	.loc 3 223 0
	ldr	r4, .L75+56
	.loc 3 220 0
	ldrh	r3, [r2]
	add	r3, r3, #1
	strh	r3, [r2]
	.loc 3 223 0
	ldr	r3, .L75+60
	ldr	r2, .L75+64
	ldrb	r3, [r3]
	lsl	r3, r3, #4
	add	r3, r3, r2
	mov	r2, r4
	ldmia	r3!, {r0, r1, r6}
	stmia	r2!, {r0, r1, r6}
.LBB38:
.LBB39:
	.loc 2 588 0
	ldr	r1, .L75+28
.LBE39:
.LBE38:
	.loc 3 223 0
	ldr	r2, [r3]
.LBB40:
.LBB41:
	.loc 2 583 0
	ldr	r3, .L75+32
.LBE41:
.LBE40:
	.loc 3 223 0
	str	r2, [r4, #12]
.LBB42:
.LBB43:
	.loc 2 588 0
	str	r5, [r1]
.LBE43:
.LBE42:
.LBB44:
.LBB45:
	.loc 2 583 0
	str	r5, [r3]
.LBE45:
.LBE44:
	.loc 3 227 0
	ldr	r0, [r4]
	ldr	r1, [r4, #8]
	ldr	r3, [r4, #4]
	mov	r4, #128
	lsl	r4, r4, #5
	str	r5, [sp]
	str	r4, [sp, #4]
	bl	glOrthof32
.LBB46:
.LBB47:
	.loc 2 588 0
	ldr	r0, .L75+28
	mov	r6, #2
	str	r6, [r0]
.LBE47:
.LBE46:
	.loc 3 233 0
	add	sp, sp, #8
	mov	r0, #1
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L76:
	.align	2
.L75:
	.word	32767
	.word	1073810701
	.word	67108872
	.word	-1073807360
	.word	67110272
	.word	2031808
	.word	67109712
	.word	67109952
	.word	67109972
	.word	67108868
	.word	-16896
	.word	vblankIntr
	.word	vcountIntr
	.word	g_frameCount
	.word	g_videoBounds
	.word	g_size
	.word	g_videoBoundsList
.LFE113:
	.size	neoVideoInit, .-neoVideoInit
	.align	2
	.code 16
	.thumb_func
	.type	vcountIntr, %function
vcountIntr:
.LFB112:
	.loc 3 153 0
	push	{lr}
.LCFI11:
	.loc 3 157 0
	ldr	r1, .L82
	.loc 3 154 0
	mov	r0, r7
.LVL15:
	.loc 3 157 0
	ldrh	r3, [r1]
	cmp	r3, #1
	bne	.L78
	ldr	r3, .L82+4
	ldrh	r3, [r3]
	cmp	r3, #191
	bhi	.L78
	.loc 3 158 0
	ldr	r2, .L82+8
	mov	r3, #0
	str	r3, [r2]
	.loc 3 159 0
	mov	r3, #2
	strh	r3, [r1]
.L78:
	.loc 3 161 0
	mov	r7, r0
	.loc 3 162 0
	@ sp needed for prologue
	pop	{pc}
.L83:
	.align	2
.L82:
	.word	g_framePending
	.word	67108870
	.word	67110208
.LFE112:
	.size	vcountIntr, .-vcountIntr
	.bss
g_size:
	.space	1
	.section	.rodata
	.align	2
	.type	g_videoBoundsList, %object
	.size	g_videoBoundsList, 32
g_videoBoundsList:
	.word	32
	.word	512
	.word	287
	.word	3568
	.word	8
	.word	256
	.word	311
	.word	3824
	.bss
	.align	1
g_framePending:
	.space	2
	.align	1
sTime.5408:
	.space	2
	.align	1
sIndex.5407:
	.space	2
	.section	.rodata
	.align	1
	.type	jitter4.5405, %object
	.size	jitter4.5405, 16
jitter4.5405:
	.short	96
	.short	64
	.short	32
	.short	192
	.short	224
	.short	64
	.short	160
	.short	192
	.comm	g_currentFps,4,4
	.comm	g_frames,4,4
	.global	g_videoBounds
	.section	.sbss,"aw",%nobits
	.align	2
	.type	g_videoBounds, %object
	.size	g_videoBounds, 16
g_videoBounds:
	.space	16
	.global	g_frameCount
	.align	1
	.type	g_frameCount, %object
	.size	g_frameCount, 2
g_frameCount:
	.space	2
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI0-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x4
	.4byte	.LCFI1-.LFB73
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
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.byte	0x4
	.4byte	.LCFI3-.LFB114
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI5-.LFB111
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
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.byte	0x4
	.4byte	.LCFI7-.LFB115
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.byte	0x4
	.4byte	.LCFI9-.LFB113
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
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI11-.LFB112
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE16:
	.file 7 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 8 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 9 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoVideo.h"
	.file 10 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.file 11 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h"
	.file 12 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h"
	.file 13 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB26-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE26-.Ltext0
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
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB73-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB114-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB115-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB113-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB112-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0xfb0
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF198
	.byte	0x1
	.4byte	.LASF199
	.4byte	.LASF200
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x8
	.byte	0x2e
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x8
	.byte	0x39
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x8
	.byte	0x3a
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x8
	.byte	0x53
	.4byte	0x6d
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x8
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
	.byte	0x7
	.byte	0x45
	.4byte	0x74
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x7
	.byte	0x4a
	.4byte	0x62
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
	.byte	0x7
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x7
	.byte	0x60
	.4byte	0x50
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x7
	.byte	0x61
	.4byte	0x74
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x7
	.byte	0x65
	.4byte	0x3e
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x7
	.byte	0x66
	.4byte	0x62
	.uleb128 0x6
	.4byte	0xd0
	.uleb128 0x6
	.4byte	0xdb
	.uleb128 0x7
	.4byte	0x11b
	.byte	0x1
	.byte	0x7
	.byte	0x81
	.uleb128 0x8
	.4byte	.LASF18
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF19
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x7
	.byte	0x81
	.4byte	0x106
	.uleb128 0x9
	.byte	0x4
	.4byte	0x12c
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x1
	.byte	0x8
	.uleb128 0x7
	.4byte	0x15d
	.byte	0x1
	.byte	0x2
	.byte	0x9b
	.uleb128 0x8
	.4byte	.LASF22
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF23
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF24
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF25
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x2
	.byte	0xa0
	.4byte	0x13c
	.uleb128 0xb
	.4byte	0x1e0
	.2byte	0x2018
	.byte	0x2
	.2byte	0x119
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x2
	.2byte	0x11a
	.4byte	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x2
	.2byte	0x11d
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x2
	.2byte	0x120
	.4byte	0x1e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x2
	.2byte	0x121
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x122
	.4byte	0x1f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x2
	.2byte	0x123
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x2
	.2byte	0x124
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.byte	0x0
	.uleb128 0xd
	.4byte	0x1f1
	.4byte	0xa2
	.uleb128 0xe
	.4byte	0x12e
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa2
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x2
	.2byte	0x126
	.4byte	0x168
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x11
	.4byte	0x39b
	.4byte	.LASF64
	.byte	0xb0
	.byte	0xc
	.byte	0x15
	.uleb128 0x12
	.ascii	"d\000"
	.byte	0xc
	.byte	0x16
	.4byte	0x39b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.ascii	"a\000"
	.byte	0xc
	.byte	0x17
	.4byte	0x39b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.ascii	"pc\000"
	.byte	0xc
	.byte	0x18
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.ascii	"srh\000"
	.byte	0xc
	.byte	0x19
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0xc
	.byte	0x1a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0xc
	.byte	0x1b
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x12
	.ascii	"irq\000"
	.byte	0xc
	.byte	0x1c
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x12
	.ascii	"osp\000"
	.byte	0xc
	.byte	0x1d
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.ascii	"xc\000"
	.byte	0xc
	.byte	0x1e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0xc
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0xc
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x13
	.4byte	.LASF39
	.byte	0xc
	.byte	0x21
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0xc
	.byte	0x22
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0xc
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0xc
	.byte	0x24
	.4byte	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0xc
	.byte	0x25
	.4byte	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0xc
	.byte	0x26
	.4byte	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0xc
	.byte	0x27
	.4byte	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0xc
	.byte	0x28
	.4byte	0x3d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0xc
	.byte	0x29
	.4byte	0x3e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0xc
	.byte	0x2a
	.4byte	0x400
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0xc
	.byte	0x2b
	.4byte	0x3bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0xc
	.byte	0x2c
	.4byte	0x3bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0xc
	.byte	0x2d
	.4byte	0x3bb
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0xc
	.byte	0x2e
	.4byte	0x416
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0xc
	.byte	0x2f
	.4byte	0x126
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0xc
	.byte	0x30
	.4byte	0x422
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0xc
	.byte	0x31
	.4byte	0x428
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xd
	.4byte	0x3ab
	.4byte	0x9b
	.uleb128 0x14
	.4byte	0x12e
	.byte	0x7
	.byte	0x0
	.uleb128 0x15
	.4byte	0x3bb
	.byte	0x1
	.4byte	0x9b
	.uleb128 0x16
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3ab
	.uleb128 0x17
	.4byte	0x3d2
	.byte	0x1
	.uleb128 0x16
	.4byte	0x9b
	.uleb128 0x16
	.4byte	0x37
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3c1
	.uleb128 0x17
	.4byte	0x3e9
	.byte	0x1
	.uleb128 0x16
	.4byte	0x9b
	.uleb128 0x16
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3d8
	.uleb128 0x17
	.4byte	0x400
	.byte	0x1
	.uleb128 0x16
	.4byte	0x9b
	.uleb128 0x16
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3ef
	.uleb128 0x15
	.4byte	0x416
	.byte	0x1
	.4byte	0x94
	.uleb128 0x16
	.4byte	0x94
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x406
	.uleb128 0x18
	.byte	0x1
	.4byte	0x94
	.uleb128 0x9
	.byte	0x4
	.4byte	0x41c
	.uleb128 0xd
	.4byte	0x438
	.4byte	0x9b
	.uleb128 0x14
	.4byte	0x12e
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0xb
	.byte	0x6
	.4byte	0x205
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0xb
	.byte	0x8
	.4byte	0x44e
	.uleb128 0x9
	.byte	0x4
	.4byte	0x454
	.uleb128 0x15
	.4byte	0x464
	.byte	0x1
	.4byte	0xc6
	.uleb128 0x16
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0xb
	.byte	0x9
	.4byte	0x46f
	.uleb128 0x9
	.byte	0x4
	.4byte	0x475
	.uleb128 0x15
	.4byte	0x485
	.byte	0x1
	.4byte	0xd0
	.uleb128 0x16
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0xb
	.byte	0xa
	.4byte	0x490
	.uleb128 0x9
	.byte	0x4
	.4byte	0x496
	.uleb128 0x15
	.4byte	0x4a6
	.byte	0x1
	.4byte	0xdb
	.uleb128 0x16
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xb
	.byte	0xc
	.4byte	0x4b1
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4b7
	.uleb128 0x17
	.4byte	0x4c8
	.byte	0x1
	.uleb128 0x16
	.4byte	0xdb
	.uleb128 0x16
	.4byte	0xc6
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xb
	.byte	0xd
	.4byte	0x4d3
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4d9
	.uleb128 0x17
	.4byte	0x4ea
	.byte	0x1
	.uleb128 0x16
	.4byte	0xdb
	.uleb128 0x16
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xb
	.byte	0xe
	.4byte	0x4f5
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4fb
	.uleb128 0x17
	.4byte	0x50c
	.byte	0x1
	.uleb128 0x16
	.4byte	0xdb
	.uleb128 0x16
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xb
	.byte	0x10
	.4byte	0x490
	.uleb128 0x11
	.4byte	0x55c
	.4byte	.LASF65
	.byte	0xc
	.byte	0xd
	.byte	0x17
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0xd
	.byte	0x18
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.ascii	"end\000"
	.byte	0xd
	.byte	0x19
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.ascii	"acc\000"
	.byte	0xd
	.byte	0x1a
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0xd
	.byte	0x1b
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xd
	.byte	0x1c
	.4byte	0x517
	.uleb128 0x11
	.4byte	0x59e
	.4byte	.LASF69
	.byte	0xc
	.byte	0xd
	.byte	0x1f
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0xd
	.byte	0x20
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0xd
	.byte	0x21
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0xd
	.byte	0x22
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xd
	.byte	0x23
	.4byte	0x567
	.uleb128 0x19
	.4byte	0x997
	.2byte	0x248
	.byte	0x4
	.byte	0xc0
	.uleb128 0x12
	.ascii	"cpu\000"
	.byte	0x4
	.byte	0xc1
	.4byte	0x438
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0x4
	.byte	0xc4
	.4byte	0x997
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x4
	.byte	0xc7
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x4
	.byte	0xc8
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x4
	.byte	0xcb
	.4byte	0x9a7
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x4
	.byte	0xcc
	.4byte	0x59e
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x4
	.byte	0xcd
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x4
	.byte	0xd0
	.4byte	0x9b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x4
	.byte	0xd1
	.4byte	0x9b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x4
	.byte	0xd2
	.4byte	0x9b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x4
	.byte	0xd3
	.4byte	0x9b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x4
	.byte	0xd4
	.4byte	0x9b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x4
	.byte	0xd5
	.4byte	0x9b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x4
	.byte	0xd6
	.4byte	0x9bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0x4
	.byte	0xd7
	.4byte	0x9bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x4
	.byte	0xd8
	.4byte	0x9bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0x4
	.byte	0xda
	.4byte	0x9c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x13
	.4byte	.LASF90
	.byte	0x4
	.byte	0xdd
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0x4
	.byte	0xde
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0x4
	.byte	0xdf
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0x4
	.byte	0xe0
	.4byte	0x9d4
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0x4
	.byte	0xe1
	.4byte	0x9d4
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0x4
	.byte	0xe2
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x4
	.byte	0xe5
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0x4
	.byte	0xe6
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x4
	.byte	0xe7
	.4byte	0x9bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0x4
	.byte	0xe8
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x13
	.4byte	.LASF100
	.byte	0x4
	.byte	0xea
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0x4
	.byte	0xeb
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0x4
	.byte	0xec
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x4
	.byte	0xed
	.4byte	0x9df
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x4
	.byte	0xee
	.4byte	0x9bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x4
	.byte	0xf1
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x4
	.byte	0xf2
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x4
	.byte	0xf3
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x4
	.byte	0xf4
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x4
	.byte	0xf7
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x4
	.byte	0xf8
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0x4
	.byte	0xf9
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x13
	.4byte	.LASF112
	.byte	0x4
	.byte	0xfa
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x13
	.4byte	.LASF113
	.byte	0x4
	.byte	0xfb
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x13
	.4byte	.LASF114
	.byte	0x4
	.byte	0xfc
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x13
	.4byte	.LASF115
	.byte	0x4
	.byte	0xfd
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0x4
	.2byte	0x102
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0x4
	.2byte	0x103
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0x4
	.2byte	0x106
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0x4
	.2byte	0x108
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xc
	.4byte	.LASF120
	.byte	0x4
	.2byte	0x109
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0x4
	.2byte	0x10a
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0x4
	.2byte	0x10b
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xc
	.4byte	.LASF123
	.byte	0x4
	.2byte	0x10d
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0x4
	.2byte	0x10e
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0x4
	.2byte	0x10f
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0x4
	.2byte	0x110
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0x4
	.2byte	0x111
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0x4
	.2byte	0x114
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0x4
	.2byte	0x115
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0x4
	.2byte	0x116
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0x4
	.2byte	0x117
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0x4
	.2byte	0x118
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xc
	.4byte	.LASF133
	.byte	0x4
	.2byte	0x11b
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xc
	.4byte	.LASF134
	.byte	0x4
	.2byte	0x11c
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xc
	.4byte	.LASF135
	.byte	0x4
	.2byte	0x11f
	.4byte	0x9ef
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xc
	.4byte	.LASF136
	.byte	0x4
	.2byte	0x122
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xc
	.4byte	.LASF137
	.byte	0x4
	.2byte	0x123
	.4byte	0x9ff
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xd
	.4byte	0x9a7
	.4byte	0x203
	.uleb128 0x14
	.4byte	0x12e
	.byte	0x8
	.byte	0x0
	.uleb128 0xd
	.4byte	0x9b7
	.4byte	0x55c
	.uleb128 0x14
	.4byte	0x12e
	.byte	0x6
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xc6
	.uleb128 0x9
	.byte	0x4
	.4byte	0xd0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x9c9
	.uleb128 0x9
	.byte	0x4
	.4byte	0x9cf
	.uleb128 0x1a
	.4byte	0xc6
	.uleb128 0x9
	.byte	0x4
	.4byte	0x9da
	.uleb128 0x1a
	.4byte	0xdb
	.uleb128 0xd
	.4byte	0x9ef
	.4byte	0xdb
	.uleb128 0x14
	.4byte	0x12e
	.byte	0xf
	.byte	0x0
	.uleb128 0xd
	.4byte	0x9ff
	.4byte	0xc6
	.uleb128 0x14
	.4byte	0x12e
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.4byte	0xa0e
	.4byte	0xc6
	.uleb128 0x1b
	.4byte	0x12e
	.byte	0x0
	.uleb128 0x1c
	.4byte	0xa29
	.2byte	0x400
	.byte	0x4
	.byte	0xbf
	.uleb128 0x1d
	.4byte	0x5a9
	.uleb128 0x1e
	.4byte	.LASF138
	.byte	0x4
	.2byte	0x125
	.4byte	0xa29
	.byte	0x0
	.uleb128 0xd
	.4byte	0xa39
	.4byte	0xdb
	.uleb128 0x14
	.4byte	0x12e
	.byte	0xff
	.byte	0x0
	.uleb128 0x1f
	.4byte	0xabf
	.4byte	.LASF139
	.2byte	0x2000
	.byte	0x4
	.byte	0xbe
	.uleb128 0x20
	.4byte	0xa0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF140
	.byte	0x4
	.2byte	0x128
	.4byte	0xabf
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0x4
	.2byte	0x129
	.4byte	0xacf
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0x4
	.2byte	0x12a
	.4byte	0xadf
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0x4
	.2byte	0x12b
	.4byte	0xaef
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0x4
	.2byte	0x12c
	.4byte	0xaff
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0x4
	.2byte	0x12d
	.4byte	0xb0f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0x4
	.2byte	0x12e
	.4byte	0xb1f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xd
	.4byte	0xacf
	.4byte	0x443
	.uleb128 0x14
	.4byte	0x12e
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xadf
	.4byte	0x464
	.uleb128 0x14
	.4byte	0x12e
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xaef
	.4byte	0x485
	.uleb128 0x14
	.4byte	0x12e
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xaff
	.4byte	0x4a6
	.uleb128 0x14
	.4byte	0x12e
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xb0f
	.4byte	0x4c8
	.uleb128 0x14
	.4byte	0x12e
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xb1f
	.4byte	0x4ea
	.uleb128 0x14
	.4byte	0x12e
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0xb2f
	.4byte	0x50c
	.uleb128 0x14
	.4byte	0x12e
	.byte	0xff
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF147
	.byte	0x4
	.2byte	0x12f
	.4byte	0xa39
	.uleb128 0x11
	.4byte	0xb80
	.4byte	.LASF148
	.byte	0x10
	.byte	0x9
	.byte	0x6
	.uleb128 0x13
	.4byte	.LASF149
	.byte	0x9
	.byte	0x7
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF150
	.byte	0x9
	.byte	0x8
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF151
	.byte	0x9
	.byte	0x9
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF152
	.byte	0x9
	.byte	0xa
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF153
	.byte	0x9
	.byte	0xb
	.4byte	0xb3b
	.uleb128 0x21
	.4byte	0xbaa
	.4byte	.LASF201
	.byte	0x1
	.byte	0x9
	.byte	0xd
	.uleb128 0x8
	.4byte	.LASF154
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF155
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF156
	.sleb128 2
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF157
	.byte	0x9
	.byte	0x11
	.4byte	0xb8b
	.uleb128 0x22
	.4byte	0xbee
	.4byte	.LASF158
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.4byte	0xad
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST0
	.uleb128 0x23
	.ascii	"num\000"
	.byte	0x1
	.byte	0x5e
	.4byte	0xad
	.4byte	.LLST1
	.uleb128 0x24
	.ascii	"den\000"
	.byte	0x1
	.byte	0x5e
	.4byte	0xad
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x25
	.4byte	0xc66
	.4byte	.LASF159
	.byte	0x2
	.2byte	0x334
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST2
	.uleb128 0x26
	.4byte	.LASF160
	.byte	0x2
	.2byte	0x334
	.4byte	0xad
	.4byte	.LLST3
	.uleb128 0x26
	.4byte	.LASF161
	.byte	0x2
	.2byte	0x334
	.4byte	0xad
	.4byte	.LLST4
	.uleb128 0x26
	.4byte	.LASF162
	.byte	0x2
	.2byte	0x334
	.4byte	0xad
	.4byte	.LLST5
	.uleb128 0x27
	.ascii	"top\000"
	.byte	0x2
	.2byte	0x334
	.4byte	0xad
	.4byte	.LLST6
	.uleb128 0x28
	.4byte	.LASF163
	.byte	0x2
	.2byte	0x334
	.4byte	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.4byte	.LASF164
	.byte	0x2
	.2byte	0x334
	.4byte	0xad
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x29
	.4byte	0xc8b
	.byte	0x1
	.4byte	.LASF177
	.byte	0x3
	.byte	0x2f
	.byte	0x1
	.4byte	.LFB109
	.4byte	.LFE109
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2a
	.4byte	.LASF165
	.byte	0x3
	.byte	0x2e
	.4byte	0xbaa
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF166
	.byte	0x3
	.byte	0x35
	.4byte	0xbaa
	.4byte	.LFB110
	.4byte	.LFE110
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF167
	.byte	0x3
	.byte	0xec
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LLST9
	.uleb128 0x2d
	.4byte	.LASF175
	.byte	0x4
	.2byte	0x151
	.byte	0x3
	.uleb128 0x2e
	.4byte	0xd26
	.4byte	.LASF168
	.byte	0x3
	.byte	0x59
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST10
	.uleb128 0x2f
	.4byte	.LASF169
	.byte	0x3
	.byte	0x6c
	.4byte	0x203
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x30
	.4byte	0xcb5
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x3
	.byte	0x6d
	.uleb128 0x2f
	.4byte	.LASF170
	.byte	0x3
	.byte	0x7a
	.4byte	0xd0
	.byte	0x5
	.byte	0x3
	.4byte	sTime.5408
	.uleb128 0x2f
	.4byte	.LASF171
	.byte	0x3
	.byte	0x79
	.4byte	0xd0
	.byte	0x5
	.byte	0x3
	.4byte	sIndex.5407
	.uleb128 0x2f
	.4byte	.LASF172
	.byte	0x3
	.byte	0x5f
	.4byte	0xea1
	.byte	0x5
	.byte	0x3
	.4byte	jitter4.5405
	.byte	0x0
	.uleb128 0x31
	.4byte	0xd41
	.4byte	.LASF173
	.byte	0x2
	.2byte	0x24c
	.byte	0x1
	.byte	0x3
	.uleb128 0x32
	.4byte	.LASF174
	.byte	0x2
	.2byte	0x24c
	.4byte	0x15d
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF176
	.byte	0x2
	.2byte	0x247
	.byte	0x1
	.byte	0x3
	.uleb128 0x34
	.4byte	0xdad
	.byte	0x1
	.4byte	.LASF178
	.byte	0x3
	.2byte	0x109
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LLST11
	.uleb128 0x35
	.4byte	.LASF179
	.byte	0x3
	.2byte	0x10a
	.4byte	0xdad
	.4byte	.LLST12
	.uleb128 0x36
	.4byte	0xd8a
	.4byte	0xd26
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x3
	.2byte	0x127
	.uleb128 0x37
	.4byte	0xd34
	.byte	0x0
	.uleb128 0x38
	.4byte	0xd41
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x3
	.2byte	0x128
	.uleb128 0x39
	.4byte	0xd26
	.4byte	.LBB20
	.4byte	.LBE20
	.byte	0x3
	.2byte	0x12d
	.uleb128 0x37
	.4byte	0xd34
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xdb3
	.uleb128 0x1a
	.4byte	0xb80
	.uleb128 0x31
	.4byte	0xdd3
	.4byte	.LASF180
	.byte	0x5
	.2byte	0x124
	.byte	0x1
	.byte	0x3
	.uleb128 0x32
	.4byte	.LASF174
	.byte	0x5
	.2byte	0x124
	.4byte	0xa2
	.byte	0x0
	.uleb128 0x3a
	.4byte	0xdec
	.4byte	.LASF181
	.byte	0x6
	.byte	0x3f
	.byte	0x1
	.byte	0x3
	.uleb128 0x3b
	.4byte	.LASF182
	.byte	0x6
	.byte	0x3f
	.4byte	0x94
	.byte	0x0
	.uleb128 0x3c
	.4byte	0xe6c
	.byte	0x1
	.4byte	.LASF183
	.byte	0x3
	.byte	0xa5
	.4byte	0x11b
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST13
	.uleb128 0x3d
	.4byte	0xe21
	.4byte	0xdb8
	.4byte	.LBB32
	.4byte	.LBE32
	.byte	0x3
	.byte	0xaf
	.uleb128 0x37
	.4byte	0xdc6
	.byte	0x0
	.uleb128 0x3e
	.4byte	0xe36
	.4byte	0xdd3
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x3
	.byte	0xd8
	.uleb128 0x37
	.4byte	0xde0
	.byte	0x0
	.uleb128 0x3e
	.4byte	0xe4b
	.4byte	0xd26
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x3
	.byte	0xe1
	.uleb128 0x37
	.4byte	0xd34
	.byte	0x0
	.uleb128 0x3f
	.4byte	0xd41
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x3
	.byte	0xe2
	.uleb128 0x40
	.4byte	0xd26
	.4byte	.LBB46
	.4byte	.LBE46
	.byte	0x3
	.byte	0xe7
	.uleb128 0x37
	.4byte	0xd34
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.4byte	0xe91
	.4byte	.LASF184
	.byte	0x3
	.byte	0x99
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST14
	.uleb128 0x2f
	.4byte	.LASF169
	.byte	0x3
	.byte	0x9a
	.4byte	0x203
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0xd
	.4byte	0xea1
	.4byte	0xd0
	.uleb128 0x14
	.4byte	0x12e
	.byte	0x7
	.byte	0x0
	.uleb128 0x1a
	.4byte	0xe91
	.uleb128 0x41
	.4byte	.LASF185
	.byte	0x2
	.2byte	0x129
	.4byte	0xeb2
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1f7
	.uleb128 0x2f
	.4byte	.LASF186
	.byte	0x3
	.byte	0x23
	.4byte	0xfc
	.byte	0x5
	.byte	0x3
	.4byte	g_framePending
	.uleb128 0xd
	.4byte	0xed9
	.4byte	0xb80
	.uleb128 0x14
	.4byte	0x12e
	.byte	0x1
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF187
	.byte	0x3
	.byte	0x25
	.4byte	0xeea
	.byte	0x5
	.byte	0x3
	.4byte	g_videoBoundsList
	.uleb128 0x1a
	.4byte	0xec9
	.uleb128 0x2f
	.4byte	.LASF188
	.byte	0x3
	.byte	0x2a
	.4byte	0xbaa
	.byte	0x5
	.byte	0x3
	.4byte	g_size
	.uleb128 0xd
	.4byte	0xf0b
	.4byte	0x49
	.uleb128 0x42
	.byte	0x0
	.uleb128 0x43
	.4byte	.LASF189
	.byte	0xa
	.byte	0x2c
	.4byte	0xf00
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0xf23
	.4byte	0x49
	.uleb128 0x42
	.byte	0x0
	.uleb128 0x43
	.4byte	.LASF190
	.byte	0xa
	.byte	0x2d
	.4byte	0xf18
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0xf3b
	.4byte	0x49
	.uleb128 0x42
	.byte	0x0
	.uleb128 0x43
	.4byte	.LASF191
	.byte	0xa
	.byte	0x2e
	.4byte	0xf30
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF192
	.byte	0x3
	.byte	0x1d
	.4byte	0x101
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	g_currentFps
	.uleb128 0x44
	.4byte	.LASF193
	.byte	0x3
	.byte	0x1e
	.4byte	0x101
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	g_frames
	.uleb128 0x45
	.4byte	.LASF194
	.byte	0x4
	.2byte	0x149
	.4byte	0xf7b
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x9
	.byte	0x4
	.4byte	0xb2f
	.uleb128 0x46
	.4byte	.LASF195
	.byte	0x4
	.2byte	0x14d
	.4byte	0xb2f
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF196
	.byte	0x3
	.byte	0x29
	.4byte	0xb80
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	g_videoBounds
	.uleb128 0x44
	.4byte	.LASF197
	.byte	0x3
	.byte	0x22
	.4byte	0xd0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	g_frameCount
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
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x21
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x34
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
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0x1d
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xb9
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xfb4
	.4byte	0xc66
	.ascii	"neoVideoSetSize\000"
	.4byte	0xc8b
	.ascii	"neoVideoGetSize\000"
	.4byte	0xca1
	.ascii	"neoVideoExit\000"
	.4byte	0xd4b
	.ascii	"neoVideoDrawFrame\000"
	.4byte	0xdec
	.ascii	"neoVideoInit\000"
	.4byte	0xf48
	.ascii	"g_currentFps\000"
	.4byte	0xf5a
	.ascii	"g_frames\000"
	.4byte	0xf6c
	.ascii	"g_neo\000"
	.4byte	0xf8f
	.ascii	"g_videoBounds\000"
	.4byte	0xfa1
	.ascii	"g_frameCount\000"
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
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF28:
	.ascii	"clearColor\000"
.LASF42:
	.ascii	"checkpc\000"
.LASF46:
	.ascii	"write8\000"
.LASF94:
	.ascii	"smaBankbit\000"
.LASF146:
	.ascii	"cpuCheckPcTable\000"
.LASF102:
	.ascii	"spriteMask\000"
.LASF125:
	.ascii	"ctrl3Reg\000"
.LASF152:
	.ascii	"maxY\000"
.LASF188:
	.ascii	"g_size\000"
.LASF51:
	.ascii	"fetch32\000"
.LASF199:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoVideo.c\000"
.LASF110:
	.ascii	"cpuClocksPerScanline\000"
.LASF58:
	.ascii	"TRead16Func\000"
.LASF76:
	.ascii	"romBankCount\000"
.LASF105:
	.ascii	"tileOffsetX\000"
.LASF144:
	.ascii	"cpuWrite16Table\000"
.LASF14:
	.ascii	"uint32\000"
.LASF24:
	.ascii	"GL_MODELVIEW\000"
.LASF107:
	.ascii	"tileScaleX\000"
.LASF108:
	.ascii	"tileScaleY\000"
.LASF155:
	.ascii	"NEOVIDEO_SCALED\000"
.LASF201:
	.ascii	"_TNeoVideoSize\000"
.LASF47:
	.ascii	"write16\000"
.LASF63:
	.ascii	"TCheckPcFunc\000"
.LASF159:
	.ascii	"glOrthof32\000"
.LASF137:
	.ascii	"varEnd\000"
.LASF60:
	.ascii	"TWrite8Func\000"
.LASF43:
	.ascii	"read8\000"
.LASF175:
	.ascii	"neoResetContext\000"
.LASF182:
	.ascii	"Yvalue\000"
.LASF73:
	.ascii	"TNeoADPCMBStream\000"
.LASF57:
	.ascii	"TRead8Func\000"
.LASF104:
	.ascii	"pTileBuffer\000"
.LASF142:
	.ascii	"cpuRead32Table\000"
.LASF26:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF160:
	.ascii	"left\000"
.LASF8:
	.ascii	"long int\000"
.LASF72:
	.ascii	"frequency\000"
.LASF192:
	.ascii	"g_currentFps\000"
.LASF61:
	.ascii	"TWrite16Func\000"
.LASF49:
	.ascii	"fetch8\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF135:
	.ascii	"keyGrid\000"
.LASF166:
	.ascii	"neoVideoGetSize\000"
.LASF177:
	.ascii	"neoVideoSetSize\000"
.LASF48:
	.ascii	"write32\000"
.LASF52:
	.ascii	"IrqCallback\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF126:
	.ascii	"ctrl4Reg\000"
.LASF174:
	.ascii	"mode\000"
.LASF181:
	.ascii	"SetYtrigger\000"
.LASF154:
	.ascii	"NEOVIDEO_NORMAL\000"
.LASF115:
	.ascii	"romBankAddress\000"
.LASF191:
	.ascii	"TAN_bin\000"
.LASF67:
	.ascii	"step\000"
.LASF79:
	.ascii	"adpcmActive\000"
.LASF99:
	.ascii	"vramBaseMask\000"
.LASF75:
	.ascii	"spriteCount\000"
.LASF54:
	.ascii	"UnrecognizedCallback\000"
.LASF184:
	.ascii	"vcountIntr\000"
.LASF21:
	.ascii	"char\000"
.LASF128:
	.ascii	"irqVectorLatch\000"
.LASF86:
	.ascii	"pVram\000"
.LASF173:
	.ascii	"glMatrixMode\000"
.LASF129:
	.ascii	"screenDarkLatch\000"
.LASF37:
	.ascii	"prev_pc\000"
.LASF69:
	.ascii	"_TNeoADPCMBStream\000"
.LASF170:
	.ascii	"sTime\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF36:
	.ascii	"flags\000"
.LASF17:
	.ascii	"double\000"
.LASF101:
	.ascii	"autoAnimationCounter\000"
.LASF29:
	.ascii	"textures\000"
.LASF23:
	.ascii	"GL_POSITION\000"
.LASF194:
	.ascii	"g_neo\000"
.LASF147:
	.ascii	"TNeoContext\000"
.LASF109:
	.ascii	"cpuClockDivide\000"
.LASF97:
	.ascii	"frameCount\000"
.LASF118:
	.ascii	"vramOffset\000"
.LASF200:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF138:
	.ascii	"fill\000"
.LASF40:
	.ascii	"cycles\000"
.LASF164:
	.ascii	"zFar\000"
.LASF145:
	.ascii	"cpuWrite32Table\000"
.LASF148:
	.ascii	"_TNeoVideoBounds\000"
.LASF132:
	.ascii	"paletteRamLatch\000"
.LASF172:
	.ascii	"jitter4\000"
.LASF189:
	.ascii	"COS_bin\000"
.LASF83:
	.ascii	"pRam\000"
.LASF85:
	.ascii	"pCard\000"
.LASF100:
	.ascii	"displayCounter\000"
.LASF56:
	.ascii	"TCycloneContext\000"
.LASF112:
	.ascii	"watchdogCounter\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF141:
	.ascii	"cpuRead16Table\000"
.LASF121:
	.ascii	"displayControlMask\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF133:
	.ascii	"active\000"
.LASF64:
	.ascii	"Cyclone\000"
.LASF82:
	.ascii	"pBios\000"
.LASF180:
	.ascii	"videoSetMode\000"
.LASF103:
	.ascii	"paletteDirty\000"
.LASF190:
	.ascii	"SIN_bin\000"
.LASF171:
	.ascii	"sIndex\000"
.LASF27:
	.ascii	"matrixMode\000"
.LASF157:
	.ascii	"TNeoVideoSize\000"
.LASF31:
	.ascii	"nextBlock\000"
.LASF140:
	.ascii	"cpuRead8Table\000"
.LASF95:
	.ascii	"smaRand\000"
.LASF65:
	.ascii	"_TNeoADPCMStream\000"
.LASF62:
	.ascii	"TWrite32Func\000"
.LASF179:
	.ascii	"pTarget\000"
.LASF90:
	.ascii	"smaAddr0\000"
.LASF161:
	.ascii	"right\000"
.LASF11:
	.ascii	"long long int\000"
.LASF22:
	.ascii	"GL_PROJECTION\000"
.LASF127:
	.ascii	"coinReg\000"
.LASF70:
	.ascii	"initOffset\000"
.LASF162:
	.ascii	"bottom\000"
.LASF55:
	.ascii	"internal\000"
.LASF50:
	.ascii	"fetch16\000"
.LASF167:
	.ascii	"neoVideoExit\000"
.LASF91:
	.ascii	"smaAddr1\000"
.LASF35:
	.ascii	"unused\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF120:
	.ascii	"displayControl\000"
.LASF187:
	.ascii	"g_videoBoundsList\000"
.LASF93:
	.ascii	"smaBankoffset\000"
.LASF25:
	.ascii	"GL_TEXTURE\000"
.LASF193:
	.ascii	"g_frames\000"
.LASF98:
	.ascii	"pVramBase\000"
.LASF66:
	.ascii	"offset\000"
.LASF80:
	.ascii	"pRom0\000"
.LASF106:
	.ascii	"tileOffsetY\000"
.LASF143:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF168:
	.ascii	"vblankIntr\000"
.LASF20:
	.ascii	"bool\000"
.LASF30:
	.ascii	"activeTexture\000"
.LASF124:
	.ascii	"ctrl2Reg\000"
.LASF44:
	.ascii	"read16\000"
.LASF113:
	.ascii	"paletteBank\000"
.LASF195:
	.ascii	"g_neoContext\000"
.LASF41:
	.ascii	"membase\000"
.LASF153:
	.ascii	"TNeoVideoBounds\000"
.LASF198:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF96:
	.ascii	"scanline\000"
.LASF165:
	.ascii	"size\000"
.LASF88:
	.ascii	"pPalette\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF134:
	.ascii	"debug\000"
.LASF81:
	.ascii	"pRom1\000"
.LASF45:
	.ascii	"read32\000"
.LASF87:
	.ascii	"pSpriteRam\000"
.LASF53:
	.ascii	"ResetCallback\000"
.LASF131:
	.ascii	"sramProtectLatch\000"
.LASF183:
	.ascii	"neoVideoInit\000"
.LASF114:
	.ascii	"fixedBank\000"
.LASF176:
	.ascii	"glLoadIdentity\000"
.LASF169:
	.ascii	"saveR7\000"
.LASF33:
	.ascii	"nameCount\000"
.LASF18:
	.ascii	"false\000"
.LASF123:
	.ascii	"ctrl1Reg\000"
.LASF39:
	.ascii	"state_flags\000"
.LASF117:
	.ascii	"sramProtection\000"
.LASF185:
	.ascii	"glGlob\000"
.LASF84:
	.ascii	"pSram\000"
.LASF71:
	.ascii	"freqCounter\000"
.LASF4:
	.ascii	"short int\000"
.LASF136:
	.ascii	"frameCounter\000"
.LASF78:
	.ascii	"adpcmb\000"
.LASF32:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF151:
	.ascii	"maxX\000"
.LASF19:
	.ascii	"true\000"
.LASF122:
	.ascii	"displayCounterLoad\000"
.LASF111:
	.ascii	"irqPending\000"
.LASF158:
	.ascii	"divf32\000"
.LASF59:
	.ascii	"TRead32Func\000"
.LASF156:
	.ascii	"NEOVIDEO_SIZECOUNT\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF197:
	.ascii	"g_frameCount\000"
.LASF186:
	.ascii	"g_framePending\000"
.LASF77:
	.ascii	"adpcm\000"
.LASF16:
	.ascii	"float\000"
.LASF34:
	.ascii	"gl_hidden_globals\000"
.LASF149:
	.ascii	"minX\000"
.LASF150:
	.ascii	"minY\000"
.LASF15:
	.ascii	"int32\000"
.LASF196:
	.ascii	"g_videoBounds\000"
.LASF74:
	.ascii	"pVideoWriteTable\000"
.LASF89:
	.ascii	"bankTable\000"
.LASF92:
	.ascii	"smaBankAddr\000"
.LASF139:
	.ascii	"_TNeoContext\000"
.LASF38:
	.ascii	"reserved\000"
.LASF130:
	.ascii	"fixedRomLatch\000"
.LASF116:
	.ascii	"sramProtectCount\000"
.LASF163:
	.ascii	"zNear\000"
.LASF68:
	.ascii	"TNeoADPCMStream\000"
.LASF178:
	.ascii	"neoVideoDrawFrame\000"
.LASF119:
	.ascii	"vramMod\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
