	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
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
	.global	neoVideoSetSize
	.code	16
	.thumb_func
	.type	neoVideoSetSize, %function
neoVideoSetSize:
.LFB168:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/NeoVideo.c"
	.loc 1 47 0
.LVL0:
	.loc 1 49 0
	ldr	r3, .L3
	.loc 1 50 0
	@ sp needed for prologue
	.loc 1 49 0
	strb	r0, [r3]
	.loc 1 50 0
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
.LFE168:
	.size	neoVideoSetSize, .-neoVideoSetSize
	.align	2
	.global	neoVideoGetSize
	.code	16
	.thumb_func
	.type	neoVideoGetSize, %function
neoVideoGetSize:
.LFB169:
	.loc 1 53 0
	.loc 1 53 0
	ldr	r3, .L7
	.loc 1 55 0
	@ sp needed for prologue
	.loc 1 53 0
	ldrb	r0, [r3]
	.loc 1 55 0
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
.LFE169:
	.size	neoVideoGetSize, .-neoVideoGetSize
	.align	2
	.code	16
	.thumb_func
	.type	vcountIntr, %function
vcountIntr:
.LFB171:
	.loc 1 153 0
	push	{lr}
.LCFI0:
	.loc 1 157 0
	ldr	r3, .L13
	.loc 1 154 0
	mov	r2, r7
.LVL1:
	.loc 1 157 0
	ldrh	r1, [r3, #2]
	cmp	r1, #1
	bne	.L10
	ldr	r1, .L13+4
	ldrh	r1, [r1]
	cmp	r1, #191
	bhi	.L10
	.loc 1 158 0
	ldr	r1, .L13+8
	mov	r0, #0
	str	r0, [r1]
	.loc 1 159 0
	mov	r1, #2
	strh	r1, [r3, #2]
.L10:
	.loc 1 161 0
	mov	r7, r2
	.loc 1 162 0
	@ sp needed for prologue
	pop	{pc}
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.word	67108870
	.word	67110208
.LFE171:
	.size	vcountIntr, .-vcountIntr
	.align	2
	.global	neoVideoExit
	.code	16
	.thumb_func
	.type	neoVideoExit, %function
neoVideoExit:
.LFB173:
	.loc 1 237 0
	push	{r4, lr}
.LCFI1:
	.loc 1 238 0
	bl	neoFixedExit
	.loc 1 239 0
	bl	neoSpriteExit
	.loc 1 240 0
	bl	neoPaletteExit
	.loc 1 241 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE173:
	.size	neoVideoExit, .-neoVideoExit
	.align	2
	.code	16
	.thumb_func
	.type	vblankIntr, %function
vblankIntr:
.LFB170:
	.loc 1 89 0
	push	{r4, r5, r6, lr}
.LCFI2:
	.loc 1 111 0
	ldr	r4, .L23
	.loc 1 108 0
	mov	r5, r7
.LVL2:
	.loc 1 111 0
	ldrh	r3, [r4, #2]
.LBB66:
.LBB67:
	.file 2 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoSystem.h"
	.loc 2 337 0
	ldr	r7, .L23+4
.LBE67:
.LBE66:
	.loc 1 111 0
	cmp	r3, #2
	bne	.L18
	.loc 1 112 0
	bl	neoLoadSprites
	.loc 1 113 0
	bl	neoLoadPalette
	.loc 1 114 0
	bl	neoLoadTiles
	.loc 1 116 0
	mov	r3, #0
	strh	r3, [r4, #2]
	.loc 1 117 0
	ldr	r3, .L23+8
	ldr	r2, [r3]
	add	r2, r2, #1
	str	r2, [r3]
.L18:
	.loc 1 124 0
	ldr	r2, .L23
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.L19
	.loc 1 125 0
	mov	r3, #240
	lsl	r3, r3, #1
	ldr	r3, [r7, r3]
	ldr	r0, .L23+12
	mov	ip, r3
	ldrh	r3, [r2, #4]
	lsl	r1, r3, #1
	ldrh	r4, [r1, r0]
	ldr	r1, .L23+16
	add	r4, r4, ip
	str	r4, [r1, #32]
	.loc 1 126 0
	add	r6, r3, #1
	mov	r4, #242
	lsl	r4, r4, #1
	lsl	r6, r6, #1
	ldr	r4, [r7, r4]
	ldrh	r6, [r6, r0]
	add	r6, r6, r4
	str	r6, [r1, #36]
	.loc 1 127 0
	add	r6, r3, #2
	lsl	r6, r6, #1
	ldrh	r6, [r6, r0]
	add	r6, r6, ip
	str	r6, [r1, #48]
	.loc 1 128 0
	add	r6, r3, #3
	lsl	r6, r6, #1
	ldrh	r0, [r6, r0]
	.loc 1 129 0
	add	r3, r3, #4
	lsl	r3, r3, #16
	.loc 1 128 0
	add	r4, r0, r4
	.loc 1 129 0
	lsr	r3, r3, #16
	.loc 1 128 0
	str	r4, [r1, #52]
	.loc 1 129 0
	strh	r3, [r2, #4]
	.loc 1 130 0
	cmp	r3, #7
	bls	.L20
	mov	r3, #0
	strh	r3, [r2, #4]
	b	.L20
.L19:
	.loc 1 132 0
	mov	r3, #240
	lsl	r3, r3, #1
	ldr	r1, [r7, r3]
	ldr	r3, .L23+16
	.loc 1 133 0
	mov	r2, #242
	.loc 1 132 0
	str	r1, [r3, #32]
	.loc 1 133 0
	lsl	r2, r2, #1
	ldr	r2, [r7, r2]
	.loc 1 134 0
	str	r1, [r3, #48]
	.loc 1 133 0
	str	r2, [r3, #36]
	.loc 1 135 0
	str	r2, [r3, #52]
.L20:
	.loc 1 138 0
	mov	r3, #244
	lsl	r3, r3, #1
	ldrh	r1, [r7, r3]
	ldr	r3, .L23+16
	.loc 1 139 0
	mov	r2, #245
	.loc 1 138 0
	strh	r1, [r3, #24]
	.loc 1 139 0
	lsl	r2, r2, #1
	ldrh	r2, [r7, r2]
	.loc 1 140 0
	strh	r1, [r3, #40]
	.loc 1 139 0
	strh	r2, [r3, #30]
	.loc 1 141 0
	strh	r2, [r3, #46]
	.loc 1 143 0
	ldr	r3, .L23
	ldrh	r2, [r3, #6]
	add	r2, r2, #1
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	strh	r2, [r3, #6]
	.loc 1 144 0
	cmp	r2, #59
	bls	.L21
	.loc 1 145 0
	mov	r2, #0
	strh	r2, [r3, #6]
	.loc 1 146 0
	ldr	r3, .L23+8
	ldr	r1, .L23+20
	ldr	r0, [r3]
	str	r0, [r1]
	.loc 1 147 0
	str	r2, [r3]
.L21:
	.loc 1 149 0
	mov	r7, r5
	.loc 1 150 0
	@ sp needed for prologue
.LVL3:
	pop	{r4, r5, r6, pc}
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.word	g_neoContext
	.word	g_frames
	.word	.LANCHOR1
	.word	67108872
	.word	g_currentFps
.LFE170:
	.size	vblankIntr, .-vblankIntr
	.align	2
	.code	16
	.thumb_func
	.type	T.110, %function
T.110:
.LFB175:
	.file 3 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.loc 3 861 0
	push	{r4, r5, r6, lr}
.LCFI3:
.LVL4:
	sub	sp, sp, #24
.LCFI4:
	.loc 3 862 0
	sub	r4, r1, r0
	str	r4, [sp, #4]
.LBB68:
.LBB69:
	.file 4 "C:/devkitPro/libnds/include/nds/arm9/math.h"
	.loc 4 83 0
	ldr	r4, .L51+24
	mov	r5, #1
	.loc 4 85 0
	ldr	r6, [sp, #4]
	.loc 4 83 0
	strh	r5, [r4]
.L26:
	.loc 4 85 0
	ldrh	r5, [r4]
	lsl	r5, r5, #16
	cmp	r5, #0
	blt	.L26
	.loc 4 87 0
	ldr	r5, .L51+28
	str	r6, [sp, #4]
	mov	ip, r5
	mov	r6, ip
	ldr	r5, .L51+4
	ldr	r4, .L51
	str	r4, [r6]
	str	r5, [r6, #4]
	.loc 4 88 0
	ldr	r4, .L51+32
	ldr	r5, [sp, #4]
	.loc 4 90 0
	mov	ip, r3
	.loc 4 88 0
	str	r5, [r4]
	.loc 4 90 0
	mov	r6, r5
	sub	r4, r4, #24
.LVL5:
.L27:
	ldrh	r3, [r4]
	lsl	r3, r3, #16
	cmp	r3, #0
	blt	.L27
	.loc 4 92 0
	ldr	r4, .L51+36
	mov	r3, ip
	ldr	r4, [r4]
.LBE69:
.LBE68:
	.loc 3 863 0
	mov	r5, #0
.LBB71:
.LBB70:
	.loc 4 92 0
	mov	ip, r4
.LVL6:
.LBE70:
.LBE71:
	.loc 3 862 0
	ldr	r4, .L51+40
	str	r6, [sp, #4]
	mov	r6, ip
	str	r6, [r4]
	.loc 3 863 0
	str	r5, [r4]
	.loc 3 868 0
	sub	r6, r3, r2
	.loc 3 864 0
	str	r5, [r4]
	.loc 3 865 0
	str	r5, [r4]
	.loc 3 867 0
	str	r5, [r4]
.LBB72:
.LBB73:
	.loc 4 83 0
	ldr	r5, .L51+24
.LBE73:
.LBE72:
	.loc 3 868 0
	str	r6, [sp, #20]
.LBB75:
.LBB74:
	.loc 4 83 0
	mov	r4, #1
	.loc 4 85 0
	ldr	r6, [sp, #4]
	.loc 4 83 0
	strh	r4, [r5]
.L28:
	.loc 4 85 0
	ldrh	r4, [r5]
	lsl	r4, r4, #16
	cmp	r4, #0
	blt	.L28
	str	r6, [sp, #4]
	.loc 4 87 0
	ldr	r6, .L51+28
	ldr	r5, .L51+4
	ldr	r4, .L51
	str	r4, [r6]
	str	r5, [r6, #4]
	.loc 4 88 0
	ldr	r4, .L51+32
	ldr	r5, [sp, #20]
	.loc 4 90 0
	ldr	r6, [sp, #4]
	.loc 4 88 0
	str	r5, [r4]
	.loc 4 90 0
	sub	r4, r4, #24
.L29:
	ldr	r5, .L51+24
	mov	ip, r5
	ldrh	r5, [r4]
	lsl	r5, r5, #16
	cmp	r5, #0
	blt	.L29
	.loc 4 92 0
	ldr	r4, .L51+36
	str	r6, [sp, #4]
	ldr	r5, [r4]
.LBE74:
.LBE75:
	.loc 3 868 0
	ldr	r4, .L51+40
.LBB76:
.LBB77:
	.loc 4 83 0
	mov	r6, ip
.LBE77:
.LBE76:
	.loc 3 868 0
	str	r5, [r4]
	.loc 3 869 0
	mov	r5, #0
	str	r5, [r4]
	.loc 3 870 0
	str	r5, [r4]
	.loc 3 872 0
	str	r5, [r4]
	.loc 3 873 0
	str	r5, [r4]
.LBB79:
.LBB78:
	.loc 4 83 0
	mov	r4, #1
	strh	r4, [r6]
	.loc 4 85 0
	ldr	r6, [sp, #4]
	mov	r4, ip
.L30:
	ldrh	r5, [r4]
	lsl	r5, r5, #16
	cmp	r5, #0
	blt	.L30
	.loc 4 87 0
	ldr	r4, .L51+28
	str	r6, [sp, #4]
	ldr	r5, .L51+8
	ldr	r6, .L51+12
	str	r5, [r4]
	str	r6, [r4, #4]
	.loc 4 88 0
	ldr	r5, .L51+32
	mov	r4, #128
	lsl	r4, r4, #5
	.loc 4 90 0
	ldr	r6, [sp, #4]
	.loc 4 88 0
	str	r4, [r5]
	.loc 4 90 0
	mov	ip, r3
	sub	r5, r5, #24
.LVL7:
.L31:
	ldrh	r3, [r5]
	lsl	r3, r3, #16
	cmp	r3, #0
	blt	.L31
	.loc 4 92 0
	ldr	r5, .L51+36
	mov	r3, ip
	ldr	r5, [r5]
	str	r6, [sp, #4]
	mov	ip, r5
.LVL8:
.LBE78:
.LBE79:
	.loc 3 874 0
	ldr	r5, .L51+40
	mov	r6, ip
	str	r6, [r5]
	.loc 3 875 0
	mov	r4, #0
.LBB80:
.LBB81:
	.loc 4 83 0
	ldr	r6, .L51+24
.LBE81:
.LBE80:
	.loc 3 875 0
	str	r4, [r5]
.LBB83:
.LBB82:
	.loc 4 83 0
	mov	r5, #1
	strh	r5, [r6]
	.loc 4 85 0
	mov	r4, r6
	ldr	r6, [sp, #4]
.L32:
	ldrh	r5, [r4]
	lsl	r5, r5, #16
	cmp	r5, #0
	blt	.L32
	.loc 4 87 0
	add	r0, r1, r0
.LVL9:
	asr	r1, r0, #31
.LVL10:
	str	r6, [sp, #4]
	lsl	r5, r1, #12
	lsr	r6, r0, #20
	ldr	r1, .L51+28
	lsl	r4, r0, #12
	orr	r5, r5, r6
	str	r4, [r1]
	str	r5, [r1, #4]
	.loc 4 88 0
	ldr	r4, [sp, #4]
	add	r1, r1, #8
	.loc 4 90 0
	ldr	r0, .L51+24
	.loc 4 88 0
	str	r4, [r1]
.L33:
	.loc 4 90 0
	ldrh	r4, [r0]
	ldr	r1, .L51+24
	lsl	r4, r4, #16
	cmp	r4, #0
	blt	.L33
	.loc 4 92 0
	ldr	r0, .L51+36
	ldr	r4, [r0]
.LBE82:
.LBE83:
	.loc 3 877 0
	ldr	r0, .L51+40
	neg	r4, r4
	str	r4, [r0]
.LBB84:
.LBB85:
	.loc 4 83 0
	mov	r0, #1
	strh	r0, [r1]
.L34:
	.loc 4 85 0
	ldrh	r0, [r1]
	lsl	r0, r0, #16
	cmp	r0, #0
	blt	.L34
	.loc 4 87 0
	add	r3, r3, r2
.LVL11:
	asr	r4, r3, #31
	lsr	r0, r3, #20
	lsl	r1, r3, #12
	lsl	r2, r4, #12
.LVL12:
	ldr	r3, .L51+28
	orr	r2, r2, r0
	.loc 4 88 0
	ldr	r5, [sp, #20]
	.loc 4 87 0
	str	r1, [r3]
	str	r2, [r3, #4]
	.loc 4 88 0
	add	r3, r3, #8
	.loc 4 90 0
	ldr	r2, .L51+24
	.loc 4 88 0
	str	r5, [r3]
.L35:
	.loc 4 90 0
	ldrh	r1, [r2]
	ldr	r3, .L51+24
	lsl	r1, r1, #16
	cmp	r1, #0
	blt	.L35
	.loc 4 92 0
	ldr	r2, .L51+36
	ldr	r1, [r2]
.LBE85:
.LBE84:
	.loc 3 878 0
	ldr	r2, .L51+40
	neg	r1, r1
	str	r1, [r2]
.LBB86:
.LBB87:
	.loc 4 83 0
	mov	r2, #1
	strh	r2, [r3]
.L36:
	.loc 4 85 0
	ldrh	r2, [r3]
	lsl	r2, r2, #16
	cmp	r2, #0
	blt	.L36
	.loc 4 87 0
	ldr	r3, .L51+28
	ldr	r1, .L51+16
	ldr	r2, .L51+20
	str	r1, [r3]
	str	r2, [r3, #4]
	.loc 4 88 0
	mov	r3, #128
	ldr	r2, .L51+32
	lsl	r3, r3, #5
	str	r3, [r2]
	.loc 4 90 0
	ldr	r3, .L51+24
.L37:
	ldrh	r2, [r3]
	lsl	r2, r2, #16
	cmp	r2, #0
	blt	.L37
	.loc 4 92 0
	ldr	r3, .L51+36
.LBE87:
.LBE86:
	.loc 3 879 0
	ldr	r2, .L51+40
.LBB89:
.LBB88:
	.loc 4 92 0
	ldr	r3, [r3]
.LBE88:
.LBE89:
	.loc 3 879 0
	neg	r3, r3
	str	r3, [r2]
	.loc 3 880 0
	mov	r3, #128
	lsl	r3, r3, #5
	str	r3, [r2]
	.loc 3 881 0
	add	sp, sp, #24
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L52:
	.align	3
.L51:
	.word	33554432
	.word	0
	.word	-33554432
	.word	-1
	.word	16777216
	.word	0
	.word	67109504
	.word	67109520
	.word	67109528
	.word	67109536
	.word	67109984
.LFE175:
	.size	T.110, .-T.110
	.align	2
	.global	neoVideoInit
	.code	16
	.thumb_func
	.type	neoVideoInit, %function
neoVideoInit:
.LFB172:
	.loc 1 165 0
	push	{r4, r5, r6, lr}
.LCFI5:
	.loc 1 166 0
	mov	r2, r7
	add	r2, r2, #252
	.loc 1 165 0
	sub	sp, sp, #8
.LCFI6:
	.loc 1 166 0
	mov	r3, #196
	ldr	r2, [r2, #92]
	lsl	r3, r3, #1
	str	r2, [r7, r3]
	.loc 1 167 0
	ldr	r2, .L55
	mov	r3, #198
	lsl	r3, r3, #1
	str	r2, [r7, r3]
.LBB90:
.LBB91:
	.file 5 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.loc 5 357 0
	ldr	r1, .L55+4
	mov	r3, #127
	neg	r3, r3
	strb	r3, [r1]
.LBE91:
.LBE90:
.LBB92:
.LBB93:
	.loc 5 363 0
	mov	r3, #128
	neg	r3, r3
	add	r1, r1, #1
	strb	r3, [r1]
.LBE93:
.LBE92:
.LBB94:
.LBB95:
	.loc 5 369 0
	add	r1, r1, #1
	strb	r3, [r1]
.LBE95:
.LBE94:
.LBB96:
.LBB97:
	.loc 5 375 0
	add	r1, r1, #2
	strb	r3, [r1]
.LBE97:
.LBE96:
.LBB98:
.LBB99:
	.loc 5 496 0
	ldr	r1, .L55+8
	mov	r3, #128
	lsl	r3, r3, #19
	str	r1, [r3]
.LBE99:
.LBE98:
	.loc 1 183 0
	ldr	r3, .L55+12
	mov	r0, #2
	.loc 1 185 0
	ldr	r1, .L55+16
	.loc 1 183 0
	strh	r0, [r3]
	.loc 1 185 0
	mov	r3, #1
	strh	r3, [r1]
	.loc 1 186 0
	ldr	r0, .L55+20
	ldr	r1, .L55+24
	.loc 1 203 0
	ldr	r4, .L55+28
	.loc 1 186 0
	str	r0, [r1]
	.loc 1 192 0
	ldr	r0, .L55+32
	sub	r1, r1, #220
	str	r0, [r1]
	.loc 1 197 0
	sub	r1, r1, #36
	str	r2, [r1]
	.loc 1 199 0
	ldr	r1, .L55+36
	mov	r5, #0
	str	r5, [r1]
	.loc 1 200 0
	add	r1, r1, #4
	strh	r2, [r1]
	.loc 1 203 0
	str	r5, [r4]
	.loc 1 204 0
	ldr	r5, .L55+40
	mov	r6, #0
	str	r6, [r5]
	.loc 1 207 0
	mov	r0, #2
	.loc 1 205 0
	str	r3, [r4]
	.loc 1 209 0
	mov	r3, #3
	.loc 1 206 0
	str	r6, [r5]
	.loc 1 207 0
	str	r0, [r4]
	.loc 1 208 0
	str	r6, [r5]
	.loc 1 209 0
	str	r3, [r4]
	.loc 1 210 0
	str	r6, [r5]
	.loc 1 212 0
	bl	neoFixedInit
	.loc 1 213 0
	bl	neoSpriteInit
	.loc 1 214 0
	bl	neoPaletteInit
.LBB100:
.LBB102:
	.file 6 "C:/devkitPro/libnds/include/nds/system.h"
	.loc 6 74 0
	ldr	r3, .L55+44
	mov	r2, #127
	ldrh	r1, [r3]
.LBE102:
.LBE100:
	.loc 1 217 0
	mov	r0, #1
.LBB104:
.LBB101:
	.loc 6 74 0
	and	r2, r2, r1
	ldr	r1, .L55+48
.LBE101:
.LBE104:
	.loc 1 223 0
	mov	r6, #4
.LBB105:
.LBB103:
	.loc 6 74 0
	orr	r2, r2, r1
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	strh	r2, [r3]
.LBE103:
.LBE105:
	.loc 1 217 0
	ldr	r1, .L55+52
	bl	irqSet
	.loc 1 218 0
	mov	r0, #4
	ldr	r1, .L55+56
	bl	irqSet
	.loc 1 220 0
	ldr	r1, .L55+60
	ldrh	r2, [r1]
	mov	r3, r1
	add	r2, r2, #1
	strh	r2, [r1]
	.loc 1 223 0
	ldr	r2, .L55+64
	ldr	r1, .L55+68
	ldrb	r2, [r2]
	mov	ip, r3
	lsl	r2, r2, #4
	add	ip, ip, r6
	add	r2, r1, r2
	mov	r0, ip
	add	r2, r2, #16
	ldmia	r2!, {r1, r3, r6}
	stmia	r0!, {r1, r3, r6}
	str	r2, [sp, #4]
	ldr	r2, [r2]
	.loc 1 227 0
	ldr	r1, .L55+60
	.loc 1 223 0
	str	r2, [r0]
.LBB106:
.LBB107:
	.loc 3 600 0
	mov	r0, #0
	str	r0, [r4]
.LBE107:
.LBE106:
.LBB108:
.LBB109:
	.loc 3 593 0
	str	r0, [r5]
.LBE109:
.LBE108:
	.loc 1 227 0
	ldr	r5, .L55+60
	ldr	r0, [r1, #4]
	ldr	r3, [r5, #8]
.LBB110:
.LBB111:
	.loc 3 600 0
	mov	r6, #2
.LBE111:
.LBE110:
	.loc 1 227 0
	ldr	r1, [r1, #12]
	bl	T.110
.LBB113:
.LBB112:
	.loc 3 600 0
	str	r6, [r4]
.LBE112:
.LBE113:
	.loc 1 234 0
	add	sp, sp, #8
	mov	r0, #1
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L56:
	.align	2
.L55:
	.word	32767
	.word	67109444
	.word	1073810701
	.word	67108872
	.word	67108960
	.word	-1073807360
	.word	67110272
	.word	67109952
	.word	2031808
	.word	67109712
	.word	67109972
	.word	67108868
	.word	-16896
	.word	vblankIntr
	.word	vcountIntr
	.word	.LANCHOR2
	.word	.LANCHOR0
	.word	.LANCHOR1
.LFE172:
	.size	neoVideoInit, .-neoVideoInit
	.align	2
	.global	neoVideoDrawFrame
	.code	16
	.thumb_func
	.type	neoVideoDrawFrame, %function
neoVideoDrawFrame:
.LFB174:
	.loc 1 266 0
	push	{r4, r5, r6, lr}
.LCFI7:
	.loc 1 267 0
	ldr	r5, .L76
	ldr	r4, .L76+4
	ldrb	r3, [r5]
	add	r4, r4, #16
	lsl	r3, r3, #4
	add	r4, r4, r3
.LVL13:
	.loc 1 273 0
	ldr	r3, .L76+8
	ldrh	r2, [r3]
	add	r2, r2, #1
	strh	r2, [r3]
	.loc 1 275 0
	b	.L58
.L59:
	.loc 1 279 0
	mov	r0, #0
	mov	r1, #1
	bl	swiIntrWait
.L58:
	.loc 1 275 0
	ldrh	r3, [r5, #2]
	cmp	r3, #0
	bne	.L59
	.loc 1 282 0
	ldr	r3, .L76+8
	ldr	r1, [r4]
	ldr	r2, [r3, #4]
	cmp	r2, r1
	bne	.L60
	ldr	r1, [r3, #12]
	ldr	r2, [r4, #8]
	cmp	r1, r2
	bne	.L61
	.loc 1 283 0
	ldr	r1, [r3, #8]
	ldr	r2, [r4, #4]
	cmp	r1, r2
	bne	.L61
	ldr	r2, [r3, #16]
	ldr	r3, [r4, #12]
	cmp	r2, r3
	bne	.L61
	b	.L62
.L60:
	.loc 1 284 0
	cmp	r2, r1
	bge	.L63
	add	r2, r2, #1
	b	.L72
.L63:
	.loc 1 285 0
	cmp	r2, r1
	ble	.L61
	sub	r2, r2, #1
.L72:
	str	r2, [r3, #4]
.L61:
	.loc 1 287 0
	ldr	r2, .L76+8
	ldr	r1, [r4, #8]
	ldr	r3, [r2, #12]
	cmp	r3, r1
	bge	.L64
	add	r3, r3, #1
	b	.L73
.L64:
	.loc 1 288 0
	ldr	r1, [r4]
	cmp	r3, r1
	ble	.L65
	sub	r3, r3, #1
.L73:
	str	r3, [r2, #12]
.L65:
	.loc 1 290 0
	ldr	r2, .L76+8
	ldr	r1, [r4, #4]
	ldr	r3, [r2, #8]
	cmp	r3, r1
	bge	.L66
	add	r3, r3, #16
	b	.L74
.L66:
	.loc 1 291 0
	cmp	r3, r1
	ble	.L67
	sub	r3, r3, #16
.L74:
	str	r3, [r2, #8]
.L67:
	.loc 1 293 0
	ldr	r2, .L76+8
	ldr	r1, [r4, #12]
	ldr	r3, [r2, #16]
	cmp	r3, r1
	bge	.L68
	add	r3, r3, #16
	b	.L75
.L68:
	.loc 1 294 0
	ldr	r1, [r4, #4]
	cmp	r3, r1
	ble	.L69
	sub	r3, r3, #16
.L75:
	str	r3, [r2, #16]
.L69:
.LBB114:
.LBB115:
	.loc 3 600 0
	ldr	r4, .L76+12
.LVL14:
.LBE115:
.LBE114:
.LBB117:
.LBB118:
	.loc 3 593 0
	ldr	r2, .L76+16
.LBE118:
.LBE117:
.LBB120:
.LBB116:
	.loc 3 600 0
	mov	r3, #0
	str	r3, [r4]
.LBE116:
.LBE120:
.LBB121:
.LBB119:
	.loc 3 593 0
	str	r3, [r2]
.LBE119:
.LBE121:
	.loc 1 298 0
	ldr	r3, .L76+8
	ldr	r0, [r3, #4]
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r3, #8]
	bl	T.110
.LBB122:
.LBB123:
	.loc 3 600 0
	mov	r3, #2
	str	r3, [r4]
.LVL15:
.L62:
.LBE123:
.LBE122:
	.loc 1 307 0
	bl	guiSystemRender
	.loc 1 309 0
	bl	neoUpdatePalette
	.loc 1 311 0
	mov	r3, #130
	lsl	r3, r3, #2
	ldr	r3, [r7, r3]
	cmp	r3, #0
	beq	.L70
	.loc 1 313 0
	bl	neoDrawSprites
.L70:
	.loc 1 318 0
	ldr	r3, .L76+20
	blx	r3
	.loc 1 321 0
	ldr	r3, .L76
	mov	r2, #1
	strh	r2, [r3, #2]
	.loc 1 322 0
	@ sp needed for prologue
.LVL16:
	pop	{r4, r5, r6, pc}
.L77:
	.align	2
.L76:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	67109952
	.word	67109972
	.word	neoDrawFixed
.LFE174:
	.size	neoVideoDrawFrame, .-neoVideoDrawFrame
	.comm	g_currentFps,4,4
	.comm	g_frames,4,4
	.global	g_videoBounds
	.global	g_frameCount
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
	.type	jitter4.7280, %object
	.size	jitter4.7280, 16
jitter4.7280:
	.short	96
	.short	64
	.short	32
	.short	192
	.short	224
	.short	64
	.short	160
	.short	192
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
	.section	.sbss,"aw",%nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	g_frameCount, %object
	.size	g_frameCount, 2
g_frameCount:
	.space	2
	.space	2
	.type	g_videoBounds, %object
	.size	g_videoBounds, 16
g_videoBounds:
	.space	16
	.bss
	.align	1
	.set	.LANCHOR0,. + 0
	.type	g_size, %object
	.size	g_size, 1
g_size:
	.space	1
	.space	1
	.type	g_framePending, %object
	.size	g_framePending, 2
g_framePending:
	.space	2
	.type	sIndex.7282, %object
	.size	sIndex.7282, 2
sIndex.7282:
	.space	2
	.type	sTime.7283, %object
	.size	sTime.7283, 2
sTime.7283:
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
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.byte	0x4
	.4byte	.LCFI0-.LFB171
	.byte	0xe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.byte	0x4
	.4byte	.LCFI1-.LFB173
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
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
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.byte	0x4
	.4byte	.LCFI2-.LFB170
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
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.byte	0x4
	.4byte	.LCFI3-.LFB175
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
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.byte	0x4
	.4byte	.LCFI5-.LFB172
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
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.byte	0x4
	.4byte	.LCFI7-.LFB174
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
.LEFDE14:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LFB171-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB173-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB170-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB175-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE175-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB172-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB174-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
	.file 7 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 8 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 9 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 10 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 11 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 12 "C:/Users/GRX/NeoDS-master-old/arm9/include/cyclone.h"
	.file 13 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoCpu.h"
	.file 14 "C:/Users/GRX/NeoDS-master-old/arm9/../common/source/NeoAudioStream.h"
	.file 15 "C:/devkitPro/libnds/include/nds/interrupts.h"
	.file 16 "C:/Users/GRX/NeoDS-master-old/arm9/include/NeoVideo.h"
	.section	.debug_info
	.4byte	0x17c1
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF364
	.byte	0x1
	.4byte	.LASF365
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x7
	.byte	0x2a
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x7
	.byte	0x35
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x7
	.byte	0x36
	.4byte	0x57
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x7
	.byte	0x4f
	.4byte	0x69
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x7
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
	.byte	0x8
	.byte	0x48
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x8
	.byte	0x4d
	.4byte	0x5e
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
	.byte	0x8
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x8
	.byte	0x63
	.4byte	0x4c
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x8
	.byte	0x64
	.4byte	0x70
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x8
	.byte	0x68
	.4byte	0x3a
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x8
	.byte	0x69
	.4byte	0x5e
	.uleb128 0x6
	.4byte	0xbe
	.uleb128 0x6
	.4byte	0xc9
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.byte	0x7d
	.4byte	0x109
	.uleb128 0x8
	.4byte	.LASF16
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF17
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x8
	.byte	0x7d
	.4byte	0xf4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x11a
	.uleb128 0xa
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF229
	.byte	0x4
	.byte	0xf
	.byte	0x2e
	.4byte	0x1d9
	.uleb128 0x8
	.4byte	.LASF19
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF20
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF21
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF22
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF23
	.sleb128 16
	.uleb128 0x8
	.4byte	.LASF24
	.sleb128 32
	.uleb128 0x8
	.4byte	.LASF25
	.sleb128 64
	.uleb128 0x8
	.4byte	.LASF26
	.sleb128 128
	.uleb128 0x8
	.4byte	.LASF27
	.sleb128 256
	.uleb128 0x8
	.4byte	.LASF28
	.sleb128 512
	.uleb128 0x8
	.4byte	.LASF29
	.sleb128 1024
	.uleb128 0x8
	.4byte	.LASF30
	.sleb128 2048
	.uleb128 0x8
	.4byte	.LASF31
	.sleb128 4096
	.uleb128 0x8
	.4byte	.LASF32
	.sleb128 8192
	.uleb128 0x8
	.4byte	.LASF33
	.sleb128 65536
	.uleb128 0x8
	.4byte	.LASF34
	.sleb128 131072
	.uleb128 0x8
	.4byte	.LASF35
	.sleb128 262144
	.uleb128 0x8
	.4byte	.LASF36
	.sleb128 524288
	.uleb128 0x8
	.4byte	.LASF37
	.sleb128 1048576
	.uleb128 0x8
	.4byte	.LASF38
	.sleb128 2097152
	.uleb128 0x8
	.4byte	.LASF39
	.sleb128 4194304
	.uleb128 0x8
	.4byte	.LASF40
	.sleb128 8388608
	.uleb128 0x8
	.4byte	.LASF41
	.sleb128 16777216
	.uleb128 0x8
	.4byte	.LASF42
	.sleb128 -1
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF43
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF44
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF45
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0xdf
	.4byte	0x21a
	.uleb128 0x8
	.4byte	.LASF46
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF47
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF48
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF49
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF50
	.sleb128 4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x5
	.byte	0xe5
	.4byte	0x1f3
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0xe8
	.4byte	0x28e
	.uleb128 0x8
	.4byte	.LASF52
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF53
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF54
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF55
	.sleb128 9
	.uleb128 0x8
	.4byte	.LASF56
	.sleb128 17
	.uleb128 0x8
	.4byte	.LASF57
	.sleb128 25
	.uleb128 0x8
	.4byte	.LASF58
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF59
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF60
	.sleb128 10
	.uleb128 0x8
	.4byte	.LASF61
	.sleb128 18
	.uleb128 0x8
	.4byte	.LASF62
	.sleb128 26
	.uleb128 0x8
	.4byte	.LASF63
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF64
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF65
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF66
	.sleb128 12
	.uleb128 0x8
	.4byte	.LASF67
	.sleb128 5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x5
	.byte	0xf9
	.4byte	0x225
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0xfc
	.4byte	0x302
	.uleb128 0x8
	.4byte	.LASF69
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF70
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF71
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF72
	.sleb128 9
	.uleb128 0x8
	.4byte	.LASF73
	.sleb128 17
	.uleb128 0x8
	.4byte	.LASF74
	.sleb128 25
	.uleb128 0x8
	.4byte	.LASF75
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF76
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF77
	.sleb128 10
	.uleb128 0x8
	.4byte	.LASF78
	.sleb128 18
	.uleb128 0x8
	.4byte	.LASF79
	.sleb128 26
	.uleb128 0x8
	.4byte	.LASF80
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF81
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF82
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF83
	.sleb128 12
	.uleb128 0x8
	.4byte	.LASF84
	.sleb128 5
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x10d
	.4byte	0x299
	.uleb128 0xf
	.byte	0x1
	.byte	0x5
	.2byte	0x110
	.4byte	0x32a
	.uleb128 0x8
	.4byte	.LASF86
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF87
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF88
	.sleb128 2
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x114
	.4byte	0x30e
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.2byte	0x1ad
	.4byte	0x3d8
	.uleb128 0x8
	.4byte	.LASF90
	.sleb128 65536
	.uleb128 0x8
	.4byte	.LASF91
	.sleb128 65537
	.uleb128 0x8
	.4byte	.LASF92
	.sleb128 65538
	.uleb128 0x8
	.4byte	.LASF93
	.sleb128 65539
	.uleb128 0x8
	.4byte	.LASF94
	.sleb128 65540
	.uleb128 0x8
	.4byte	.LASF95
	.sleb128 65541
	.uleb128 0x8
	.4byte	.LASF96
	.sleb128 65542
	.uleb128 0x8
	.4byte	.LASF97
	.sleb128 65800
	.uleb128 0x8
	.4byte	.LASF98
	.sleb128 65801
	.uleb128 0x8
	.4byte	.LASF99
	.sleb128 65802
	.uleb128 0x8
	.4byte	.LASF100
	.sleb128 65803
	.uleb128 0x8
	.4byte	.LASF101
	.sleb128 65804
	.uleb128 0x8
	.4byte	.LASF102
	.sleb128 65805
	.uleb128 0x8
	.4byte	.LASF103
	.sleb128 65806
	.uleb128 0x8
	.4byte	.LASF104
	.sleb128 196608
	.uleb128 0x8
	.4byte	.LASF105
	.sleb128 131072
	.uleb128 0x8
	.4byte	.LASF106
	.sleb128 393216
	.uleb128 0x8
	.4byte	.LASF107
	.sleb128 655360
	.uleb128 0x8
	.4byte	.LASF108
	.sleb128 917504
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0x4
	.byte	0x9
	.byte	0x6b
	.4byte	0x3fd
	.uleb128 0x11
	.ascii	"x\000"
	.byte	0x9
	.byte	0x6c
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.ascii	"y\000"
	.byte	0x9
	.byte	0x6d
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0x9
	.byte	0x6e
	.4byte	0x3d8
	.uleb128 0x10
	.4byte	.LASF110
	.byte	0x10
	.byte	0x9
	.byte	0x73
	.4byte	0x467
	.uleb128 0x11
	.ascii	"xdx\000"
	.byte	0x9
	.byte	0x74
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.ascii	"ydx\000"
	.byte	0x9
	.byte	0x75
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.ascii	"xdy\000"
	.byte	0x9
	.byte	0x76
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.ascii	"ydy\000"
	.byte	0x9
	.byte	0x77
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x11
	.ascii	"dx\000"
	.byte	0x9
	.byte	0x78
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.ascii	"dy\000"
	.byte	0x9
	.byte	0x79
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0x9
	.byte	0x7a
	.4byte	0x408
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0x38
	.byte	0x9
	.byte	0x7f
	.4byte	0x4b7
	.uleb128 0x12
	.4byte	.LASF112
	.byte	0x9
	.byte	0x80
	.4byte	0x4b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0x9
	.byte	0x81
	.4byte	0x4c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0x9
	.byte	0x82
	.4byte	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0x9
	.byte	0x83
	.4byte	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x13
	.4byte	0xbe
	.4byte	0x4c7
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0x3
	.byte	0x0
	.uleb128 0x13
	.4byte	0x3fd
	.4byte	0x4d7
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0x3
	.byte	0x0
	.uleb128 0x7
	.byte	0x2
	.byte	0x9
	.byte	0x9e
	.4byte	0x5c4
	.uleb128 0x8
	.4byte	.LASF116
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF117
	.sleb128 16384
	.uleb128 0x8
	.4byte	.LASF118
	.sleb128 32768
	.uleb128 0x8
	.4byte	.LASF119
	.sleb128 49152
	.uleb128 0x8
	.4byte	.LASF120
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF121
	.sleb128 16384
	.uleb128 0x8
	.4byte	.LASF122
	.sleb128 32768
	.uleb128 0x8
	.4byte	.LASF123
	.sleb128 49152
	.uleb128 0x8
	.4byte	.LASF124
	.sleb128 128
	.uleb128 0x8
	.4byte	.LASF125
	.sleb128 16512
	.uleb128 0x8
	.4byte	.LASF126
	.sleb128 32896
	.uleb128 0x8
	.4byte	.LASF127
	.sleb128 49280
	.uleb128 0x8
	.4byte	.LASF128
	.sleb128 16384
	.uleb128 0x8
	.4byte	.LASF129
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF130
	.sleb128 132
	.uleb128 0x8
	.4byte	.LASF131
	.sleb128 16516
	.uleb128 0x8
	.4byte	.LASF132
	.sleb128 32900
	.uleb128 0x8
	.4byte	.LASF133
	.sleb128 49284
	.uleb128 0x8
	.4byte	.LASF134
	.sleb128 64
	.uleb128 0x8
	.4byte	.LASF135
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF136
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF137
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF138
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF139
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF140
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF141
	.sleb128 8192
	.uleb128 0x8
	.4byte	.LASF142
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF143
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF144
	.sleb128 8192
	.uleb128 0x8
	.4byte	.LASF145
	.sleb128 8192
	.uleb128 0x8
	.4byte	.LASF146
	.sleb128 128
	.uleb128 0x8
	.4byte	.LASF147
	.sleb128 0
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF148
	.byte	0x28
	.byte	0x9
	.2byte	0x18c
	.4byte	0x668
	.uleb128 0x16
	.4byte	.LASF149
	.byte	0x9
	.2byte	0x18d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF150
	.byte	0x9
	.2byte	0x18e
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF151
	.byte	0x9
	.2byte	0x18f
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF152
	.byte	0x9
	.2byte	0x190
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF153
	.byte	0x9
	.2byte	0x191
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.4byte	.LASF154
	.byte	0x9
	.2byte	0x192
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.4byte	.LASF155
	.byte	0x9
	.2byte	0x193
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.4byte	.LASF156
	.byte	0x9
	.2byte	0x194
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.4byte	.LASF157
	.byte	0x9
	.2byte	0x195
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x16
	.4byte	.LASF158
	.byte	0x9
	.2byte	0x196
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF148
	.byte	0x9
	.2byte	0x198
	.4byte	0x5c4
	.uleb128 0x10
	.4byte	.LASF159
	.byte	0x8
	.byte	0xa
	.byte	0x29
	.4byte	0x69d
	.uleb128 0x12
	.4byte	.LASF160
	.byte	0xa
	.byte	0x2a
	.4byte	0x69d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF161
	.byte	0xa
	.byte	0x2b
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1ea
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0xa
	.byte	0x2c
	.4byte	0x674
	.uleb128 0x7
	.byte	0x1
	.byte	0x3
	.byte	0x9c
	.4byte	0x6cf
	.uleb128 0x8
	.4byte	.LASF162
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF163
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF164
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF165
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF166
	.byte	0x3
	.byte	0xa1
	.4byte	0x6ae
	.uleb128 0x17
	.4byte	.LASF167
	.2byte	0x2020
	.byte	0x3
	.2byte	0x11a
	.4byte	0x766
	.uleb128 0x16
	.4byte	.LASF168
	.byte	0x3
	.2byte	0x11b
	.4byte	0x6cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF169
	.byte	0x3
	.2byte	0x11e
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF170
	.byte	0x3
	.2byte	0x121
	.4byte	0x766
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF171
	.byte	0x3
	.2byte	0x122
	.4byte	0x6a3
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0x16
	.4byte	.LASF172
	.byte	0x3
	.2byte	0x123
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0x16
	.4byte	.LASF173
	.byte	0x3
	.2byte	0x124
	.4byte	0x777
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0x16
	.4byte	.LASF174
	.byte	0x3
	.2byte	0x125
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0x16
	.4byte	.LASF175
	.byte	0x3
	.2byte	0x126
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x201c
	.byte	0x0
	.uleb128 0x13
	.4byte	0x90
	.4byte	0x777
	.uleb128 0x18
	.4byte	0x1d9
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x90
	.uleb128 0xe
	.4byte	.LASF167
	.byte	0x3
	.2byte	0x128
	.4byte	0x6da
	.uleb128 0x9
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x9
	.byte	0x4
	.4byte	0xb4
	.uleb128 0x7
	.byte	0x1
	.byte	0xb
	.byte	0x59
	.4byte	0x7b6
	.uleb128 0x8
	.4byte	.LASF176
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF177
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF178
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF179
	.sleb128 3
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.byte	0xb
	.byte	0x62
	.4byte	0x7d7
	.uleb128 0x8
	.4byte	.LASF180
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF181
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF182
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF183
	.sleb128 3
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.byte	0xb
	.byte	0x6a
	.4byte	0x7f8
	.uleb128 0x8
	.4byte	.LASF184
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF185
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF186
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF187
	.sleb128 3
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.byte	0xb
	.byte	0x72
	.4byte	0x80d
	.uleb128 0x8
	.4byte	.LASF188
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF189
	.sleb128 1
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF190
	.byte	0xb0
	.byte	0xc
	.byte	0x15
	.4byte	0x9a3
	.uleb128 0x11
	.ascii	"d\000"
	.byte	0xc
	.byte	0x16
	.4byte	0x9a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.ascii	"a\000"
	.byte	0xc
	.byte	0x17
	.4byte	0x9a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.ascii	"pc\000"
	.byte	0xc
	.byte	0x18
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.ascii	"srh\000"
	.byte	0xc
	.byte	0x19
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF191
	.byte	0xc
	.byte	0x1a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x12
	.4byte	.LASF192
	.byte	0xc
	.byte	0x1b
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x11
	.ascii	"irq\000"
	.byte	0xc
	.byte	0x1c
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x11
	.ascii	"osp\000"
	.byte	0xc
	.byte	0x1d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.ascii	"xc\000"
	.byte	0xc
	.byte	0x1e
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF193
	.byte	0xc
	.byte	0x1f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF194
	.byte	0xc
	.byte	0x20
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF195
	.byte	0xc
	.byte	0x21
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.4byte	.LASF196
	.byte	0xc
	.byte	0x22
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.4byte	.LASF197
	.byte	0xc
	.byte	0x23
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF198
	.byte	0xc
	.byte	0x24
	.4byte	0x9c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x12
	.4byte	.LASF199
	.byte	0xc
	.byte	0x25
	.4byte	0x9c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x12
	.4byte	.LASF200
	.byte	0xc
	.byte	0x26
	.4byte	0x9c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF201
	.byte	0xc
	.byte	0x27
	.4byte	0x9c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF202
	.byte	0xc
	.byte	0x28
	.4byte	0x9da
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF203
	.byte	0xc
	.byte	0x29
	.4byte	0x9f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x12
	.4byte	.LASF204
	.byte	0xc
	.byte	0x2a
	.4byte	0xa08
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x12
	.4byte	.LASF205
	.byte	0xc
	.byte	0x2b
	.4byte	0x9c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF206
	.byte	0xc
	.byte	0x2c
	.4byte	0x9c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.4byte	.LASF207
	.byte	0xc
	.byte	0x2d
	.4byte	0x9c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.4byte	.LASF208
	.byte	0xc
	.byte	0x2e
	.4byte	0xa1e
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF209
	.byte	0xc
	.byte	0x2f
	.4byte	0x114
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF210
	.byte	0xc
	.byte	0x30
	.4byte	0xa2a
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF211
	.byte	0xc
	.byte	0x31
	.4byte	0xa30
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x13
	.4byte	0x7b
	.4byte	0x9b3
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0x7
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	0x7b
	.4byte	0x9c3
	.uleb128 0x1a
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x9b3
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x9da
	.uleb128 0x1a
	.4byte	0x7b
	.uleb128 0x1a
	.4byte	0x33
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x9c9
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x9f1
	.uleb128 0x1a
	.4byte	0x7b
	.uleb128 0x1a
	.4byte	0x57
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x9e0
	.uleb128 0x1b
	.byte	0x1
	.4byte	0xa08
	.uleb128 0x1a
	.4byte	0x7b
	.uleb128 0x1a
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x9f7
	.uleb128 0x19
	.byte	0x1
	.4byte	0x69
	.4byte	0xa1e
	.uleb128 0x1a
	.4byte	0x69
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa0e
	.uleb128 0x1c
	.byte	0x1
	.4byte	0x69
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa24
	.uleb128 0x13
	.4byte	0x7b
	.4byte	0xa40
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF212
	.byte	0xd
	.byte	0x6
	.4byte	0x80d
	.uleb128 0x3
	.4byte	.LASF213
	.byte	0xd
	.byte	0x8
	.4byte	0xa56
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa5c
	.uleb128 0x19
	.byte	0x1
	.4byte	0xb4
	.4byte	0xa6c
	.uleb128 0x1a
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF214
	.byte	0xd
	.byte	0x9
	.4byte	0xa77
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa7d
	.uleb128 0x19
	.byte	0x1
	.4byte	0xbe
	.4byte	0xa8d
	.uleb128 0x1a
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF215
	.byte	0xd
	.byte	0xa
	.4byte	0xa98
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa9e
	.uleb128 0x19
	.byte	0x1
	.4byte	0xc9
	.4byte	0xaae
	.uleb128 0x1a
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0xd
	.byte	0xc
	.4byte	0xab9
	.uleb128 0x9
	.byte	0x4
	.4byte	0xabf
	.uleb128 0x1b
	.byte	0x1
	.4byte	0xad0
	.uleb128 0x1a
	.4byte	0xc9
	.uleb128 0x1a
	.4byte	0xb4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF217
	.byte	0xd
	.byte	0xd
	.4byte	0xadb
	.uleb128 0x9
	.byte	0x4
	.4byte	0xae1
	.uleb128 0x1b
	.byte	0x1
	.4byte	0xaf2
	.uleb128 0x1a
	.4byte	0xc9
	.uleb128 0x1a
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0xd
	.byte	0xe
	.4byte	0xafd
	.uleb128 0x9
	.byte	0x4
	.4byte	0xb03
	.uleb128 0x1b
	.byte	0x1
	.4byte	0xb14
	.uleb128 0x1a
	.4byte	0xc9
	.uleb128 0x1a
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF219
	.byte	0xd
	.byte	0x10
	.4byte	0xa98
	.uleb128 0x10
	.4byte	.LASF220
	.byte	0xc
	.byte	0xe
	.byte	0x17
	.4byte	0xb64
	.uleb128 0x12
	.4byte	.LASF221
	.byte	0xe
	.byte	0x18
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.ascii	"end\000"
	.byte	0xe
	.byte	0x19
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.ascii	"acc\000"
	.byte	0xe
	.byte	0x1a
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF222
	.byte	0xe
	.byte	0x1b
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF223
	.byte	0xe
	.byte	0x1c
	.4byte	0xb1f
	.uleb128 0x10
	.4byte	.LASF224
	.byte	0xc
	.byte	0xe
	.byte	0x1f
	.4byte	0xba6
	.uleb128 0x12
	.4byte	.LASF225
	.byte	0xe
	.byte	0x20
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF226
	.byte	0xe
	.byte	0x21
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF227
	.byte	0xe
	.byte	0x22
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF228
	.byte	0xe
	.byte	0x23
	.4byte	0xb6f
	.uleb128 0xb
	.4byte	.LASF230
	.byte	0x1
	.byte	0x2
	.byte	0x99
	.4byte	0xbfa
	.uleb128 0x8
	.4byte	.LASF231
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF232
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF233
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF234
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF235
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF236
	.sleb128 5
	.uleb128 0x8
	.4byte	.LASF237
	.sleb128 6
	.uleb128 0x8
	.4byte	.LASF238
	.sleb128 7
	.uleb128 0x8
	.4byte	.LASF239
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF240
	.sleb128 9
	.byte	0x0
	.uleb128 0x1d
	.2byte	0x248
	.byte	0x2
	.byte	0xc0
	.4byte	0xfe8
	.uleb128 0x11
	.ascii	"cpu\000"
	.byte	0x2
	.byte	0xc1
	.4byte	0xa40
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF241
	.byte	0x2
	.byte	0xc4
	.4byte	0xfe8
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x12
	.4byte	.LASF242
	.byte	0x2
	.byte	0xc7
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x12
	.4byte	.LASF243
	.byte	0x2
	.byte	0xc8
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x12
	.4byte	.LASF244
	.byte	0x2
	.byte	0xcb
	.4byte	0xff8
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x12
	.4byte	.LASF245
	.byte	0x2
	.byte	0xcc
	.4byte	0xba6
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x12
	.4byte	.LASF246
	.byte	0x2
	.byte	0xcd
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x12
	.4byte	.LASF247
	.byte	0x2
	.byte	0xd0
	.4byte	0x78f
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x12
	.4byte	.LASF248
	.byte	0x2
	.byte	0xd1
	.4byte	0x78f
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x12
	.4byte	.LASF249
	.byte	0x2
	.byte	0xd2
	.4byte	0x78f
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x12
	.4byte	.LASF250
	.byte	0x2
	.byte	0xd3
	.4byte	0x78f
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x12
	.4byte	.LASF251
	.byte	0x2
	.byte	0xd4
	.4byte	0x78f
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x12
	.4byte	.LASF252
	.byte	0x2
	.byte	0xd5
	.4byte	0x78f
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x12
	.4byte	.LASF253
	.byte	0x2
	.byte	0xd6
	.4byte	0x789
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x12
	.4byte	.LASF254
	.byte	0x2
	.byte	0xd7
	.4byte	0x789
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x12
	.4byte	.LASF255
	.byte	0x2
	.byte	0xd8
	.4byte	0x789
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x12
	.4byte	.LASF256
	.byte	0x2
	.byte	0xda
	.4byte	0x1008
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x12
	.4byte	.LASF257
	.byte	0x2
	.byte	0xdd
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x12
	.4byte	.LASF258
	.byte	0x2
	.byte	0xde
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x12
	.4byte	.LASF259
	.byte	0x2
	.byte	0xdf
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x12
	.4byte	.LASF260
	.byte	0x2
	.byte	0xe0
	.4byte	0x1019
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x12
	.4byte	.LASF261
	.byte	0x2
	.byte	0xe1
	.4byte	0x1019
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x12
	.4byte	.LASF262
	.byte	0x2
	.byte	0xe2
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x12
	.4byte	.LASF263
	.byte	0x2
	.byte	0xe5
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x12
	.4byte	.LASF264
	.byte	0x2
	.byte	0xe6
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x12
	.4byte	.LASF265
	.byte	0x2
	.byte	0xe7
	.4byte	0x789
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x12
	.4byte	.LASF266
	.byte	0x2
	.byte	0xe8
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x12
	.4byte	.LASF267
	.byte	0x2
	.byte	0xea
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x12
	.4byte	.LASF268
	.byte	0x2
	.byte	0xeb
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x12
	.4byte	.LASF269
	.byte	0x2
	.byte	0xec
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x12
	.4byte	.LASF270
	.byte	0x2
	.byte	0xed
	.4byte	0x1024
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x12
	.4byte	.LASF271
	.byte	0x2
	.byte	0xee
	.4byte	0x789
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x12
	.4byte	.LASF272
	.byte	0x2
	.byte	0xf1
	.4byte	0xdf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x12
	.4byte	.LASF273
	.byte	0x2
	.byte	0xf2
	.4byte	0xdf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x12
	.4byte	.LASF274
	.byte	0x2
	.byte	0xf3
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x12
	.4byte	.LASF275
	.byte	0x2
	.byte	0xf4
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x12
	.4byte	.LASF276
	.byte	0x2
	.byte	0xf7
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x12
	.4byte	.LASF277
	.byte	0x2
	.byte	0xf8
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x12
	.4byte	.LASF278
	.byte	0x2
	.byte	0xf9
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x12
	.4byte	.LASF279
	.byte	0x2
	.byte	0xfa
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x12
	.4byte	.LASF280
	.byte	0x2
	.byte	0xfb
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x12
	.4byte	.LASF281
	.byte	0x2
	.byte	0xfc
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x12
	.4byte	.LASF282
	.byte	0x2
	.byte	0xfd
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0x16
	.4byte	.LASF283
	.byte	0x2
	.2byte	0x102
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x16
	.4byte	.LASF284
	.byte	0x2
	.2byte	0x103
	.4byte	0xdf
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0x16
	.4byte	.LASF285
	.byte	0x2
	.2byte	0x106
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x16
	.4byte	.LASF286
	.byte	0x2
	.2byte	0x108
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x16
	.4byte	.LASF287
	.byte	0x2
	.2byte	0x109
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0x16
	.4byte	.LASF288
	.byte	0x2
	.2byte	0x10a
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0x16
	.4byte	.LASF289
	.byte	0x2
	.2byte	0x10b
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x16
	.4byte	.LASF290
	.byte	0x2
	.2byte	0x10d
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0x16
	.4byte	.LASF291
	.byte	0x2
	.2byte	0x10e
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x16
	.4byte	.LASF292
	.byte	0x2
	.2byte	0x10f
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x16
	.4byte	.LASF293
	.byte	0x2
	.2byte	0x110
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x16
	.4byte	.LASF294
	.byte	0x2
	.2byte	0x111
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0x16
	.4byte	.LASF295
	.byte	0x2
	.2byte	0x114
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0x16
	.4byte	.LASF296
	.byte	0x2
	.2byte	0x115
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0x16
	.4byte	.LASF297
	.byte	0x2
	.2byte	0x116
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0x16
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x117
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0x16
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x118
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0x16
	.4byte	.LASF300
	.byte	0x2
	.2byte	0x11b
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0x16
	.4byte	.LASF301
	.byte	0x2
	.2byte	0x11c
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0x16
	.4byte	.LASF302
	.byte	0x2
	.2byte	0x11f
	.4byte	0x1034
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0x16
	.4byte	.LASF303
	.byte	0x2
	.2byte	0x122
	.4byte	0xb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0x16
	.4byte	.LASF304
	.byte	0x2
	.2byte	0x123
	.4byte	0x1044
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0x13
	.4byte	0x1ea
	.4byte	0xff8
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0x8
	.byte	0x0
	.uleb128 0x13
	.4byte	0xb64
	.4byte	0x1008
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0x6
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x100e
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1014
	.uleb128 0x1e
	.4byte	0xb4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x101f
	.uleb128 0x1e
	.4byte	0xc9
	.uleb128 0x13
	.4byte	0xc9
	.4byte	0x1034
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0xf
	.byte	0x0
	.uleb128 0x13
	.4byte	0xb4
	.4byte	0x1044
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0x7
	.byte	0x0
	.uleb128 0x13
	.4byte	0xb4
	.4byte	0x1053
	.uleb128 0x1f
	.4byte	0x1d9
	.byte	0x0
	.uleb128 0x20
	.2byte	0x400
	.byte	0x2
	.byte	0xbf
	.4byte	0x106e
	.uleb128 0x21
	.4byte	0xbfa
	.uleb128 0x22
	.4byte	.LASF366
	.byte	0x2
	.2byte	0x125
	.4byte	0x106e
	.byte	0x0
	.uleb128 0x13
	.4byte	0xc9
	.4byte	0x107e
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0xff
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF305
	.2byte	0x2000
	.byte	0x2
	.byte	0xbe
	.4byte	0x1104
	.uleb128 0x24
	.4byte	0x1053
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF306
	.byte	0x2
	.2byte	0x128
	.4byte	0x1104
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0x16
	.4byte	.LASF307
	.byte	0x2
	.2byte	0x129
	.4byte	0x1114
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0x16
	.4byte	.LASF308
	.byte	0x2
	.2byte	0x12a
	.4byte	0x1124
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0x16
	.4byte	.LASF309
	.byte	0x2
	.2byte	0x12b
	.4byte	0x1134
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0x16
	.4byte	.LASF310
	.byte	0x2
	.2byte	0x12c
	.4byte	0x1144
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0x16
	.4byte	.LASF311
	.byte	0x2
	.2byte	0x12d
	.4byte	0x1154
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0x16
	.4byte	.LASF312
	.byte	0x2
	.2byte	0x12e
	.4byte	0x1164
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0x13
	.4byte	0xa4b
	.4byte	0x1114
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0xa6c
	.4byte	0x1124
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0xa8d
	.4byte	0x1134
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0xaae
	.4byte	0x1144
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0xad0
	.4byte	0x1154
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0xaf2
	.4byte	0x1164
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	0xb14
	.4byte	0x1174
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF313
	.byte	0x2
	.2byte	0x12f
	.4byte	0x107e
	.uleb128 0x10
	.4byte	.LASF314
	.byte	0x10
	.byte	0x10
	.byte	0x6
	.4byte	0x11c5
	.uleb128 0x12
	.4byte	.LASF315
	.byte	0x10
	.byte	0x7
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF316
	.byte	0x10
	.byte	0x8
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF317
	.byte	0x10
	.byte	0x9
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF318
	.byte	0x10
	.byte	0xa
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF319
	.byte	0x10
	.byte	0xb
	.4byte	0x1180
	.uleb128 0xb
	.4byte	.LASF320
	.byte	0x1
	.byte	0x10
	.byte	0xd
	.4byte	0x11ef
	.uleb128 0x8
	.4byte	.LASF321
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF322
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF323
	.sleb128 2
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF324
	.byte	0x10
	.byte	0x11
	.4byte	0x11d0
	.uleb128 0x25
	.4byte	.LASF340
	.byte	0x4
	.byte	0x51
	.byte	0x1
	.4byte	0x9b
	.byte	0x3
	.4byte	0x1222
	.uleb128 0x26
	.ascii	"num\000"
	.byte	0x4
	.byte	0x51
	.4byte	0x9b
	.uleb128 0x26
	.ascii	"den\000"
	.byte	0x4
	.byte	0x51
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x27
	.4byte	.LASF367
	.byte	0x2
	.2byte	0x151
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF326
	.byte	0x3
	.2byte	0x258
	.byte	0x1
	.byte	0x3
	.4byte	0x1246
	.uleb128 0x29
	.4byte	.LASF325
	.byte	0x3
	.2byte	0x258
	.4byte	0x6cf
	.byte	0x0
	.uleb128 0x2a
	.4byte	.LASF368
	.byte	0x3
	.2byte	0x251
	.byte	0x1
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF327
	.byte	0x5
	.2byte	0x165
	.byte	0x1
	.byte	0x3
	.4byte	0x1269
	.uleb128 0x2b
	.ascii	"e\000"
	.byte	0x5
	.2byte	0x165
	.4byte	0x21a
	.byte	0x0
	.uleb128 0x28
	.4byte	.LASF328
	.byte	0x5
	.2byte	0x16b
	.byte	0x1
	.byte	0x3
	.4byte	0x1282
	.uleb128 0x2b
	.ascii	"f\000"
	.byte	0x5
	.2byte	0x16b
	.4byte	0x28e
	.byte	0x0
	.uleb128 0x28
	.4byte	.LASF329
	.byte	0x5
	.2byte	0x171
	.byte	0x1
	.byte	0x3
	.4byte	0x129b
	.uleb128 0x2b
	.ascii	"g\000"
	.byte	0x5
	.2byte	0x171
	.4byte	0x302
	.byte	0x0
	.uleb128 0x28
	.4byte	.LASF330
	.byte	0x5
	.2byte	0x177
	.byte	0x1
	.byte	0x3
	.4byte	0x12b4
	.uleb128 0x2b
	.ascii	"h\000"
	.byte	0x5
	.2byte	0x177
	.4byte	0x32a
	.byte	0x0
	.uleb128 0x28
	.4byte	.LASF331
	.byte	0x5
	.2byte	0x1f0
	.byte	0x1
	.byte	0x3
	.4byte	0x12cf
	.uleb128 0x29
	.4byte	.LASF325
	.byte	0x5
	.2byte	0x1f0
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x2c
	.4byte	.LASF332
	.byte	0x6
	.byte	0x49
	.byte	0x1
	.byte	0x3
	.4byte	0x12e8
	.uleb128 0x2d
	.4byte	.LASF333
	.byte	0x6
	.byte	0x49
	.4byte	0x69
	.byte	0x0
	.uleb128 0x28
	.4byte	.LASF334
	.byte	0x3
	.2byte	0x35d
	.byte	0x1
	.byte	0x3
	.4byte	0x133f
	.uleb128 0x29
	.4byte	.LASF335
	.byte	0x3
	.2byte	0x35d
	.4byte	0x9b
	.uleb128 0x29
	.4byte	.LASF336
	.byte	0x3
	.2byte	0x35d
	.4byte	0x9b
	.uleb128 0x29
	.4byte	.LASF337
	.byte	0x3
	.2byte	0x35d
	.4byte	0x9b
	.uleb128 0x2b
	.ascii	"top\000"
	.byte	0x3
	.2byte	0x35d
	.4byte	0x9b
	.uleb128 0x29
	.4byte	.LASF338
	.byte	0x3
	.2byte	0x35d
	.4byte	0x9b
	.uleb128 0x29
	.4byte	.LASF339
	.byte	0x3
	.2byte	0x35d
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF347
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.4byte	.LFB168
	.4byte	.LFE168
	.byte	0x1
	.byte	0x5d
	.4byte	0x1364
	.uleb128 0x2f
	.4byte	.LASF156
	.byte	0x1
	.byte	0x2e
	.4byte	0x11ef
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF369
	.byte	0x1
	.byte	0x34
	.4byte	0x11ef
	.4byte	.LFB169
	.4byte	.LFE169
	.byte	0x1
	.byte	0x5d
	.uleb128 0x31
	.4byte	.LASF341
	.byte	0x1
	.byte	0x98
	.4byte	.LFB171
	.4byte	.LFE171
	.4byte	.LLST2
	.4byte	0x139f
	.uleb128 0x32
	.4byte	.LASF343
	.byte	0x1
	.byte	0x9a
	.4byte	0x1ea
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF370
	.byte	0x1
	.byte	0xec
	.4byte	.LFB173
	.4byte	.LFE173
	.4byte	.LLST3
	.uleb128 0x31
	.4byte	.LASF342
	.byte	0x1
	.byte	0x58
	.4byte	.LFB170
	.4byte	.LFE170
	.4byte	.LLST4
	.4byte	0x141c
	.uleb128 0x32
	.4byte	.LASF344
	.byte	0x1
	.byte	0x5f
	.4byte	0x142c
	.byte	0x5
	.byte	0x3
	.4byte	jitter4.7280
	.uleb128 0x34
	.4byte	.LASF343
	.byte	0x1
	.byte	0x6c
	.4byte	0x1ea
	.4byte	.LLST5
	.uleb128 0x32
	.4byte	.LASF345
	.byte	0x1
	.byte	0x79
	.4byte	0xbe
	.byte	0x5
	.byte	0x3
	.4byte	sIndex.7282
	.uleb128 0x32
	.4byte	.LASF346
	.byte	0x1
	.byte	0x7a
	.4byte	0xbe
	.byte	0x5
	.byte	0x3
	.4byte	sTime.7283
	.uleb128 0x35
	.4byte	0x1222
	.4byte	.LBB66
	.4byte	.LBE66
	.byte	0x1
	.byte	0x6d
	.byte	0x0
	.uleb128 0x13
	.4byte	0xbe
	.4byte	0x142c
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0x7
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x141c
	.uleb128 0x36
	.4byte	0x12e8
	.4byte	.LFB175
	.4byte	.LFE175
	.4byte	.LLST6
	.4byte	0x152b
	.uleb128 0x37
	.4byte	0x12f6
	.4byte	.LLST7
	.uleb128 0x37
	.4byte	0x1302
	.4byte	.LLST8
	.uleb128 0x37
	.4byte	0x130e
	.4byte	.LLST9
	.uleb128 0x37
	.4byte	0x131a
	.4byte	.LLST10
	.uleb128 0x38
	.4byte	0x1332
	.uleb128 0x38
	.4byte	0x1326
	.uleb128 0x39
	.4byte	0x11fa
	.4byte	.LBB68
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x3
	.2byte	0x35e
	.4byte	0x1493
	.uleb128 0x38
	.4byte	0x1216
	.uleb128 0x38
	.4byte	0x120b
	.byte	0x0
	.uleb128 0x39
	.4byte	0x11fa
	.4byte	.LBB72
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x3
	.2byte	0x364
	.4byte	0x14b2
	.uleb128 0x38
	.4byte	0x1216
	.uleb128 0x38
	.4byte	0x120b
	.byte	0x0
	.uleb128 0x39
	.4byte	0x11fa
	.4byte	.LBB76
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x3
	.2byte	0x36a
	.4byte	0x14d1
	.uleb128 0x38
	.4byte	0x1216
	.uleb128 0x38
	.4byte	0x120b
	.byte	0x0
	.uleb128 0x39
	.4byte	0x11fa
	.4byte	.LBB80
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x3
	.2byte	0x36d
	.4byte	0x14f0
	.uleb128 0x38
	.4byte	0x1216
	.uleb128 0x38
	.4byte	0x120b
	.byte	0x0
	.uleb128 0x3a
	.4byte	0x11fa
	.4byte	.LBB84
	.4byte	.LBE84
	.byte	0x3
	.2byte	0x36e
	.4byte	0x150f
	.uleb128 0x38
	.4byte	0x1216
	.uleb128 0x38
	.4byte	0x120b
	.byte	0x0
	.uleb128 0x3b
	.4byte	0x11fa
	.4byte	.LBB86
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x3
	.2byte	0x36f
	.uleb128 0x38
	.4byte	0x1216
	.uleb128 0x38
	.4byte	0x120b
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF348
	.byte	0x1
	.byte	0xa4
	.4byte	0x109
	.4byte	.LFB172
	.4byte	.LFE172
	.4byte	.LLST11
	.4byte	0x161b
	.uleb128 0x3d
	.4byte	0x1250
	.4byte	.LBB90
	.4byte	.LBE90
	.byte	0x1
	.byte	0xa9
	.4byte	0x1560
	.uleb128 0x38
	.4byte	0x125e
	.byte	0x0
	.uleb128 0x3d
	.4byte	0x1269
	.4byte	.LBB92
	.4byte	.LBE92
	.byte	0x1
	.byte	0xaa
	.4byte	0x1579
	.uleb128 0x38
	.4byte	0x1277
	.byte	0x0
	.uleb128 0x3d
	.4byte	0x1282
	.4byte	.LBB94
	.4byte	.LBE94
	.byte	0x1
	.byte	0xab
	.4byte	0x1592
	.uleb128 0x38
	.4byte	0x1290
	.byte	0x0
	.uleb128 0x3d
	.4byte	0x129b
	.4byte	.LBB96
	.4byte	.LBE96
	.byte	0x1
	.byte	0xac
	.4byte	0x15ab
	.uleb128 0x38
	.4byte	0x12a9
	.byte	0x0
	.uleb128 0x3d
	.4byte	0x12b4
	.4byte	.LBB98
	.4byte	.LBE98
	.byte	0x1
	.byte	0xaf
	.4byte	0x15c4
	.uleb128 0x38
	.4byte	0x12c2
	.byte	0x0
	.uleb128 0x3e
	.4byte	0x12cf
	.4byte	.LBB100
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0xd8
	.4byte	0x15dd
	.uleb128 0x38
	.4byte	0x12dc
	.byte	0x0
	.uleb128 0x3d
	.4byte	0x122b
	.4byte	.LBB106
	.4byte	.LBE106
	.byte	0x1
	.byte	0xe1
	.4byte	0x15f6
	.uleb128 0x38
	.4byte	0x1239
	.byte	0x0
	.uleb128 0x35
	.4byte	0x1246
	.4byte	.LBB108
	.4byte	.LBE108
	.byte	0x1
	.byte	0xe2
	.uleb128 0x3f
	.4byte	0x122b
	.4byte	.LBB110
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0xe7
	.uleb128 0x38
	.4byte	0x1239
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.byte	0x1
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x109
	.4byte	.LFB174
	.4byte	.LFE174
	.4byte	.LLST12
	.4byte	0x1685
	.uleb128 0x41
	.4byte	.LASF349
	.byte	0x1
	.2byte	0x10b
	.4byte	0x1685
	.4byte	.LLST13
	.uleb128 0x39
	.4byte	0x122b
	.4byte	.LBB114
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x1
	.2byte	0x128
	.4byte	0x165e
	.uleb128 0x38
	.4byte	0x1239
	.byte	0x0
	.uleb128 0x42
	.4byte	0x1246
	.4byte	.LBB117
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.2byte	0x129
	.uleb128 0x43
	.4byte	0x122b
	.4byte	.LBB122
	.4byte	.LBE122
	.byte	0x1
	.2byte	0x12e
	.uleb128 0x38
	.4byte	0x1239
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x168b
	.uleb128 0x1e
	.4byte	0x11c5
	.uleb128 0x44
	.4byte	.LASF372
	.byte	0x3
	.2byte	0x12e
	.4byte	0x169c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x77d
	.uleb128 0x32
	.4byte	.LASF350
	.byte	0x1
	.byte	0x23
	.4byte	0xea
	.byte	0x5
	.byte	0x3
	.4byte	g_framePending
	.uleb128 0x13
	.4byte	0x11c5
	.4byte	0x16c3
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0x1
	.byte	0x0
	.uleb128 0x32
	.4byte	.LASF351
	.byte	0x1
	.byte	0x25
	.4byte	0x16d4
	.byte	0x5
	.byte	0x3
	.4byte	g_videoBoundsList
	.uleb128 0x1e
	.4byte	0x16b3
	.uleb128 0x32
	.4byte	.LASF352
	.byte	0x1
	.byte	0x2a
	.4byte	0x11ef
	.byte	0x5
	.byte	0x3
	.4byte	g_size
	.uleb128 0x45
	.4byte	.LASF353
	.byte	0x5
	.byte	0x56
	.4byte	0xbe
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.4byte	.LASF354
	.byte	0x5
	.byte	0x57
	.4byte	0xbe
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	0x1714
	.4byte	0x1714
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0x7
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x171a
	.uleb128 0x6
	.4byte	0x57
	.uleb128 0x46
	.4byte	.LASF355
	.byte	0x9
	.2byte	0x19c
	.4byte	0x1704
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	0x668
	.4byte	0x173d
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0x7
	.byte	0x0
	.uleb128 0x46
	.4byte	.LASF356
	.byte	0x9
	.2byte	0x19f
	.4byte	0x172d
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.4byte	.LASF357
	.byte	0x3
	.2byte	0x12b
	.4byte	0x77d
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.4byte	.LASF358
	.byte	0x1
	.byte	0x1d
	.4byte	0xef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	g_currentFps
	.uleb128 0x47
	.4byte	.LASF359
	.byte	0x1
	.byte	0x1e
	.4byte	0xef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	g_frames
	.uleb128 0x48
	.4byte	.LASF360
	.byte	0x2
	.2byte	0x149
	.4byte	0x178c
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1174
	.uleb128 0x46
	.4byte	.LASF361
	.byte	0x2
	.2byte	0x14d
	.4byte	0x1174
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.4byte	.LASF362
	.byte	0x1
	.byte	0x29
	.4byte	0x11c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	g_videoBounds
	.uleb128 0x47
	.4byte	.LASF363
	.byte	0x1
	.byte	0x22
	.4byte	0xbe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	g_frameCount
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
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0xc
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
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
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x45
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
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
	.4byte	0xb9
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x17c5
	.4byte	0x133f
	.ascii	"neoVideoSetSize\000"
	.4byte	0x1364
	.ascii	"neoVideoGetSize\000"
	.4byte	0x139f
	.ascii	"neoVideoExit\000"
	.4byte	0x152b
	.ascii	"neoVideoInit\000"
	.4byte	0x161b
	.ascii	"neoVideoDrawFrame\000"
	.4byte	0x1759
	.ascii	"g_currentFps\000"
	.4byte	0x176b
	.ascii	"g_frames\000"
	.4byte	0x177d
	.ascii	"g_neo\000"
	.4byte	0x17a0
	.ascii	"g_videoBounds\000"
	.4byte	0x17b2
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
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	.LBB71-.Ltext0
	.4byte	.LBE71-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB72-.Ltext0
	.4byte	.LBE72-.Ltext0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	.LBB79-.Ltext0
	.4byte	.LBE79-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB80-.Ltext0
	.4byte	.LBE80-.Ltext0
	.4byte	.LBB83-.Ltext0
	.4byte	.LBE83-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB86-.Ltext0
	.4byte	.LBE86-.Ltext0
	.4byte	.LBB89-.Ltext0
	.4byte	.LBE89-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB100-.Ltext0
	.4byte	.LBE100-.Ltext0
	.4byte	.LBB105-.Ltext0
	.4byte	.LBE105-.Ltext0
	.4byte	.LBB104-.Ltext0
	.4byte	.LBE104-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB110-.Ltext0
	.4byte	.LBE110-.Ltext0
	.4byte	.LBB113-.Ltext0
	.4byte	.LBE113-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB114-.Ltext0
	.4byte	.LBE114-.Ltext0
	.4byte	.LBB120-.Ltext0
	.4byte	.LBE120-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB117-.Ltext0
	.4byte	.LBE117-.Ltext0
	.4byte	.LBB121-.Ltext0
	.4byte	.LBE121-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF169:
	.ascii	"clearColor\000"
.LASF198:
	.ascii	"checkpc\000"
.LASF202:
	.ascii	"write8\000"
.LASF290:
	.ascii	"ctrl1Reg\000"
.LASF91:
	.ascii	"MODE_1_2D\000"
.LASF269:
	.ascii	"spriteMask\000"
.LASF142:
	.ascii	"BG_PALETTE_SLOT0\000"
.LASF143:
	.ascii	"BG_PALETTE_SLOT1\000"
.LASF144:
	.ascii	"BG_PALETTE_SLOT2\000"
.LASF145:
	.ascii	"BG_PALETTE_SLOT3\000"
.LASF93:
	.ascii	"MODE_3_2D\000"
.LASF367:
	.ascii	"neoResetContext\000"
.LASF207:
	.ascii	"fetch32\000"
.LASF352:
	.ascii	"g_size\000"
.LASF372:
	.ascii	"glGlob\000"
.LASF322:
	.ascii	"NEOVIDEO_SCALED\000"
.LASF95:
	.ascii	"MODE_5_2D\000"
.LASF277:
	.ascii	"cpuClocksPerScanline\000"
.LASF187:
	.ascii	"OBJSIZE_64\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF311:
	.ascii	"cpuWrite32Table\000"
.LASF98:
	.ascii	"MODE_1_3D\000"
.LASF310:
	.ascii	"cpuWrite16Table\000"
.LASF12:
	.ascii	"uint32\000"
.LASF196:
	.ascii	"cycles\000"
.LASF164:
	.ascii	"GL_MODELVIEW\000"
.LASF275:
	.ascii	"tileScaleY\000"
.LASF100:
	.ascii	"MODE_3_3D\000"
.LASF37:
	.ascii	"IRQ_CARD_LINE\000"
.LASF21:
	.ascii	"IRQ_VCOUNT\000"
.LASF110:
	.ascii	"bg_transform\000"
.LASF102:
	.ascii	"MODE_5_3D\000"
.LASF82:
	.ascii	"VRAM_G_BG_EXT_PALETTE_SLOT01\000"
.LASF165:
	.ascii	"GL_TEXTURE\000"
.LASF203:
	.ascii	"write16\000"
.LASF299:
	.ascii	"paletteRamLatch\000"
.LASF157:
	.ascii	"type\000"
.LASF334:
	.ascii	"glOrthof32\000"
.LASF358:
	.ascii	"g_currentFps\000"
.LASF304:
	.ascii	"varEnd\000"
.LASF216:
	.ascii	"TWrite8Func\000"
.LASF199:
	.ascii	"read8\000"
.LASF109:
	.ascii	"bg_scroll\000"
.LASF129:
	.ascii	"BG_BMP8_512x1024\000"
.LASF58:
	.ascii	"VRAM_F_MAIN_SPRITE\000"
.LASF188:
	.ascii	"OBJCOLOR_16\000"
.LASF141:
	.ascii	"BG_WRAP_ON\000"
.LASF26:
	.ascii	"IRQ_NETWORK\000"
.LASF228:
	.ascii	"TNeoADPCMBStream\000"
.LASF213:
	.ascii	"TRead8Func\000"
.LASF69:
	.ascii	"VRAM_G_LCD\000"
.LASF360:
	.ascii	"g_neo\000"
.LASF47:
	.ascii	"VRAM_E_MAIN_BG\000"
.LASF83:
	.ascii	"VRAM_G_BG_EXT_PALETTE_SLOT23\000"
.LASF308:
	.ascii	"cpuRead32Table\000"
.LASF166:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF44:
	.ascii	"long int\000"
.LASF363:
	.ascii	"g_frameCount\000"
.LASF332:
	.ascii	"SetYtrigger\000"
.LASF205:
	.ascii	"fetch8\000"
.LASF123:
	.ascii	"BG_RS_128x128\000"
.LASF302:
	.ascii	"keyGrid\000"
.LASF369:
	.ascii	"neoVideoGetSize\000"
.LASF347:
	.ascii	"neoVideoSetSize\000"
.LASF204:
	.ascii	"write32\000"
.LASF160:
	.ascii	"data\000"
.LASF116:
	.ascii	"BG_32x32\000"
.LASF177:
	.ascii	"OBJMODE_BLENDED\000"
.LASF120:
	.ascii	"BG_RS_16x16\000"
.LASF305:
	.ascii	"_TNeoContext\000"
.LASF342:
	.ascii	"vblankIntr\000"
.LASF208:
	.ascii	"IrqCallback\000"
.LASF219:
	.ascii	"TCheckPcFunc\000"
.LASF0:
	.ascii	"signed char\000"
.LASF84:
	.ascii	"VRAM_G_SPRITE_EXT_PALETTE\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF320:
	.ascii	"_TNeoVideoSize\000"
.LASF282:
	.ascii	"romBankAddress\000"
.LASF222:
	.ascii	"step\000"
.LASF246:
	.ascii	"adpcmActive\000"
.LASF237:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF309:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF274:
	.ascii	"tileScaleX\000"
.LASF127:
	.ascii	"BG_BMP8_512x512\000"
.LASF279:
	.ascii	"watchdogCounter\000"
.LASF343:
	.ascii	"saveR7\000"
.LASF239:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF266:
	.ascii	"vramBaseMask\000"
.LASF242:
	.ascii	"spriteCount\000"
.LASF210:
	.ascii	"UnrecognizedCallback\000"
.LASF341:
	.ascii	"vcountIntr\000"
.LASF256:
	.ascii	"bankTable\000"
.LASF43:
	.ascii	"char\000"
.LASF148:
	.ascii	"BgState\000"
.LASF191:
	.ascii	"unused\000"
.LASF296:
	.ascii	"screenDarkLatch\000"
.LASF140:
	.ascii	"BG_WRAP_OFF\000"
.LASF193:
	.ascii	"prev_pc\000"
.LASF224:
	.ascii	"_TNeoADPCMBStream\000"
.LASF52:
	.ascii	"VRAM_F_LCD\000"
.LASF355:
	.ascii	"bgControl\000"
.LASF118:
	.ascii	"BG_32x64\000"
.LASF182:
	.ascii	"OBJSHAPE_TALL\000"
.LASF232:
	.ascii	"NEOROM_BIOS\000"
.LASF192:
	.ascii	"flags\000"
.LASF268:
	.ascii	"autoAnimationCounter\000"
.LASF170:
	.ascii	"textures\000"
.LASF111:
	.ascii	"bg_attribute\000"
.LASF357:
	.ascii	"glGlobalData\000"
.LASF56:
	.ascii	"VRAM_F_MAIN_BG_0x06010000\000"
.LASF163:
	.ascii	"GL_POSITION\000"
.LASF313:
	.ascii	"TNeoContext\000"
.LASF276:
	.ascii	"cpuClockDivide\000"
.LASF65:
	.ascii	"VRAM_F_BG_EXT_PALETTE_SLOT01\000"
.LASF57:
	.ascii	"VRAM_F_MAIN_BG_0x06014000\000"
.LASF113:
	.ascii	"scroll\000"
.LASF366:
	.ascii	"fill\000"
.LASF68:
	.ascii	"VRAM_F_TYPE\000"
.LASF183:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF16:
	.ascii	"false\000"
.LASF339:
	.ascii	"zFar\000"
.LASF53:
	.ascii	"VRAM_F_MAIN_BG\000"
.LASF214:
	.ascii	"TRead16Func\000"
.LASF48:
	.ascii	"VRAM_E_MAIN_SPRITE\000"
.LASF178:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF335:
	.ascii	"left\000"
.LASF105:
	.ascii	"MODE_FB0\000"
.LASF106:
	.ascii	"MODE_FB1\000"
.LASF107:
	.ascii	"MODE_FB2\000"
.LASF108:
	.ascii	"MODE_FB3\000"
.LASF344:
	.ascii	"jitter4\000"
.LASF66:
	.ascii	"VRAM_F_BG_EXT_PALETTE_SLOT23\000"
.LASF250:
	.ascii	"pRam\000"
.LASF159:
	.ascii	"DynamicArray\000"
.LASF89:
	.ascii	"VRAM_H_TYPE\000"
.LASF212:
	.ascii	"TCycloneContext\000"
.LASF51:
	.ascii	"VRAM_E_TYPE\000"
.LASF365:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/NeoVideo."
	.ascii	"c\000"
.LASF45:
	.ascii	"long unsigned int\000"
.LASF236:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF176:
	.ascii	"OBJMODE_NORMAL\000"
.LASF181:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF40:
	.ascii	"IRQ_SPI\000"
.LASF307:
	.ascii	"cpuRead16Table\000"
.LASF78:
	.ascii	"VRAM_G_MAIN_SPRITE_0x06410000\000"
.LASF49:
	.ascii	"VRAM_E_TEX_PALETTE\000"
.LASF233:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF349:
	.ascii	"pTarget\000"
.LASF300:
	.ascii	"active\000"
.LASF271:
	.ascii	"pTileBuffer\000"
.LASF46:
	.ascii	"VRAM_E_LCD\000"
.LASF190:
	.ascii	"Cyclone\000"
.LASF132:
	.ascii	"BG_BMP16_512x256\000"
.LASF323:
	.ascii	"NEOVIDEO_SIZECOUNT\000"
.LASF79:
	.ascii	"VRAM_G_MAIN_SPRITE_0x06414000\000"
.LASF149:
	.ascii	"angle\000"
.LASF331:
	.ascii	"videoSetMode\000"
.LASF295:
	.ascii	"irqVectorLatch\000"
.LASF136:
	.ascii	"BG_PRIORITY_0\000"
.LASF137:
	.ascii	"BG_PRIORITY_1\000"
.LASF138:
	.ascii	"BG_PRIORITY_2\000"
.LASF139:
	.ascii	"BG_PRIORITY_3\000"
.LASF168:
	.ascii	"matrixMode\000"
.LASF312:
	.ascii	"cpuCheckPcTable\000"
.LASF131:
	.ascii	"BG_BMP16_256x256\000"
.LASF173:
	.ascii	"nextBlock\000"
.LASF54:
	.ascii	"VRAM_F_MAIN_BG_0x06000000\000"
.LASF135:
	.ascii	"BG_MOSAIC_OFF\000"
.LASF234:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF262:
	.ascii	"smaRand\000"
.LASF220:
	.ascii	"_TNeoADPCMStream\000"
.LASF249:
	.ascii	"pBios\000"
.LASF218:
	.ascii	"TWrite32Func\000"
.LASF364:
	.ascii	"GNU C 4.4.3\000"
.LASF55:
	.ascii	"VRAM_F_MAIN_BG_0x06004000\000"
.LASF336:
	.ascii	"right\000"
.LASF314:
	.ascii	"_TNeoVideoBounds\000"
.LASF10:
	.ascii	"long long int\000"
.LASF162:
	.ascii	"GL_PROJECTION\000"
.LASF294:
	.ascii	"coinReg\000"
.LASF240:
	.ascii	"NEOROM_COUNT\000"
.LASF225:
	.ascii	"initOffset\000"
.LASF90:
	.ascii	"MODE_0_2D\000"
.LASF337:
	.ascii	"bottom\000"
.LASF356:
	.ascii	"bgState\000"
.LASF154:
	.ascii	"scrollX\000"
.LASF155:
	.ascii	"scrollY\000"
.LASF291:
	.ascii	"ctrl2Reg\000"
.LASF64:
	.ascii	"VRAM_F_BG_EXT_PALETTE\000"
.LASF92:
	.ascii	"MODE_2_2D\000"
.LASF15:
	.ascii	"double\000"
.LASF211:
	.ascii	"internal\000"
.LASF293:
	.ascii	"ctrl4Reg\000"
.LASF94:
	.ascii	"MODE_4_2D\000"
.LASF370:
	.ascii	"neoVideoExit\000"
.LASF75:
	.ascii	"VRAM_G_MAIN_SPRITE\000"
.LASF257:
	.ascii	"smaAddr0\000"
.LASF258:
	.ascii	"smaAddr1\000"
.LASF348:
	.ascii	"neoVideoInit\000"
.LASF96:
	.ascii	"MODE_6_2D\000"
.LASF267:
	.ascii	"displayCounter\000"
.LASF112:
	.ascii	"control\000"
.LASF97:
	.ascii	"MODE_0_3D\000"
.LASF227:
	.ascii	"frequency\000"
.LASF61:
	.ascii	"VRAM_F_MAIN_SPRITE_0x06410000\000"
.LASF14:
	.ascii	"float\000"
.LASF252:
	.ascii	"pCard\000"
.LASF33:
	.ascii	"IRQ_IPC_SYNC\000"
.LASF99:
	.ascii	"MODE_2_3D\000"
.LASF80:
	.ascii	"VRAM_G_TEX_PALETTE\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF115:
	.ascii	"bg3_rotation\000"
.LASF62:
	.ascii	"VRAM_F_MAIN_SPRITE_0x06414000\000"
.LASF288:
	.ascii	"displayControlMask\000"
.LASF103:
	.ascii	"MODE_6_3D\000"
.LASF128:
	.ascii	"BG_BMP8_1024x512\000"
.LASF122:
	.ascii	"BG_RS_64x64\000"
.LASF287:
	.ascii	"displayControl\000"
.LASF134:
	.ascii	"BG_MOSAIC_ON\000"
.LASF70:
	.ascii	"VRAM_G_MAIN_BG\000"
.LASF76:
	.ascii	"VRAM_G_MAIN_SPRITE_0x06400000\000"
.LASF359:
	.ascii	"g_frames\000"
.LASF264:
	.ascii	"frameCount\000"
.LASF265:
	.ascii	"pVramBase\000"
.LASF289:
	.ascii	"displayCounterLoad\000"
.LASF189:
	.ascii	"OBJCOLOR_256\000"
.LASF221:
	.ascii	"offset\000"
.LASF34:
	.ascii	"IRQ_FIFO_EMPTY\000"
.LASF77:
	.ascii	"VRAM_G_MAIN_SPRITE_0x06404000\000"
.LASF247:
	.ascii	"pRom0\000"
.LASF248:
	.ascii	"pRom1\000"
.LASF272:
	.ascii	"tileOffsetX\000"
.LASF273:
	.ascii	"tileOffsetY\000"
.LASF147:
	.ascii	"BG_COLOR_16\000"
.LASF18:
	.ascii	"bool\000"
.LASF231:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF172:
	.ascii	"activeTexture\000"
.LASF36:
	.ascii	"IRQ_CARD\000"
.LASF130:
	.ascii	"BG_BMP16_128x128\000"
.LASF171:
	.ascii	"texturePtrs\000"
.LASF200:
	.ascii	"read16\000"
.LASF32:
	.ascii	"IRQ_CART\000"
.LASF230:
	.ascii	"_TNeoRomRegion\000"
.LASF317:
	.ascii	"maxX\000"
.LASF318:
	.ascii	"maxY\000"
.LASF298:
	.ascii	"sramProtectLatch\000"
.LASF361:
	.ascii	"g_neoContext\000"
.LASF19:
	.ascii	"IRQ_VBLANK\000"
.LASF42:
	.ascii	"IRQ_ALL\000"
.LASF197:
	.ascii	"membase\000"
.LASF226:
	.ascii	"freqCounter\000"
.LASF319:
	.ascii	"TNeoVideoBounds\000"
.LASF179:
	.ascii	"OBJMODE_BITMAP\000"
.LASF263:
	.ascii	"scanline\000"
.LASF156:
	.ascii	"size\000"
.LASF255:
	.ascii	"pPalette\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF59:
	.ascii	"VRAM_F_MAIN_SPRITE_0x06400000\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF201:
	.ascii	"read32\000"
.LASF327:
	.ascii	"vramSetBankE\000"
.LASF328:
	.ascii	"vramSetBankF\000"
.LASF329:
	.ascii	"vramSetBankG\000"
.LASF330:
	.ascii	"vramSetBankH\000"
.LASF292:
	.ascii	"ctrl3Reg\000"
.LASF88:
	.ascii	"VRAM_H_SUB_BG_EXT_PALETTE\000"
.LASF60:
	.ascii	"VRAM_F_MAIN_SPRITE_0x06404000\000"
.LASF31:
	.ascii	"IRQ_KEYS\000"
.LASF87:
	.ascii	"VRAM_H_SUB_BG\000"
.LASF301:
	.ascii	"debug\000"
.LASF238:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF117:
	.ascii	"BG_64x32\000"
.LASF217:
	.ascii	"TWrite16Func\000"
.LASF161:
	.ascii	"cur_size\000"
.LASF114:
	.ascii	"bg2_rotation\000"
.LASF306:
	.ascii	"cpuRead8Table\000"
.LASF35:
	.ascii	"IRQ_FIFO_NOT_EMPTY\000"
.LASF270:
	.ascii	"paletteDirty\000"
.LASF146:
	.ascii	"BG_COLOR_256\000"
.LASF20:
	.ascii	"IRQ_HBLANK\000"
.LASF73:
	.ascii	"VRAM_G_MAIN_BG_0x06010000\000"
.LASF245:
	.ascii	"adpcmb\000"
.LASF126:
	.ascii	"BG_BMP8_512x256\000"
.LASF254:
	.ascii	"pSpriteRam\000"
.LASF260:
	.ascii	"smaBankoffset\000"
.LASF281:
	.ascii	"fixedBank\000"
.LASF350:
	.ascii	"g_framePending\000"
.LASF67:
	.ascii	"VRAM_F_SPRITE_EXT_PALETTE\000"
.LASF346:
	.ascii	"sTime\000"
.LASF50:
	.ascii	"VRAM_E_BG_EXT_PALETTE\000"
.LASF74:
	.ascii	"VRAM_G_MAIN_BG_0x06014000\000"
.LASF22:
	.ascii	"IRQ_TIMER0\000"
.LASF23:
	.ascii	"IRQ_TIMER1\000"
.LASF24:
	.ascii	"IRQ_TIMER2\000"
.LASF25:
	.ascii	"IRQ_TIMER3\000"
.LASF125:
	.ascii	"BG_BMP8_256x256\000"
.LASF184:
	.ascii	"OBJSIZE_8\000"
.LASF39:
	.ascii	"IRQ_LID\000"
.LASF321:
	.ascii	"NEOVIDEO_NORMAL\000"
.LASF195:
	.ascii	"state_flags\000"
.LASF284:
	.ascii	"sramProtection\000"
.LASF251:
	.ascii	"pSram\000"
.LASF4:
	.ascii	"short int\000"
.LASF303:
	.ascii	"frameCounter\000"
.LASF325:
	.ascii	"mode\000"
.LASF174:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF209:
	.ascii	"ResetCallback\000"
.LASF119:
	.ascii	"BG_64x64\000"
.LASF17:
	.ascii	"true\000"
.LASF101:
	.ascii	"MODE_4_3D\000"
.LASF63:
	.ascii	"VRAM_F_TEX_PALETTE\000"
.LASF340:
	.ascii	"divf32\000"
.LASF244:
	.ascii	"adpcm\000"
.LASF253:
	.ascii	"pVram\000"
.LASF185:
	.ascii	"OBJSIZE_16\000"
.LASF278:
	.ascii	"irqPending\000"
.LASF150:
	.ascii	"centerX\000"
.LASF151:
	.ascii	"centerY\000"
.LASF215:
	.ascii	"TRead32Func\000"
.LASF229:
	.ascii	"IRQ_MASKS\000"
.LASF324:
	.ascii	"TNeoVideoSize\000"
.LASF333:
	.ascii	"Yvalue\000"
.LASF353:
	.ascii	"mosaicShadow\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF345:
	.ascii	"sIndex\000"
.LASF152:
	.ascii	"scaleX\000"
.LASF153:
	.ascii	"scaleY\000"
.LASF71:
	.ascii	"VRAM_G_MAIN_BG_0x06000000\000"
.LASF368:
	.ascii	"glLoadIdentity\000"
.LASF194:
	.ascii	"reserved\000"
.LASF133:
	.ascii	"BG_BMP16_512x512\000"
.LASF72:
	.ascii	"VRAM_G_MAIN_BG_0x06004000\000"
.LASF121:
	.ascii	"BG_RS_32x32\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF167:
	.ascii	"gl_hidden_globals\000"
.LASF186:
	.ascii	"OBJSIZE_32\000"
.LASF315:
	.ascii	"minX\000"
.LASF316:
	.ascii	"minY\000"
.LASF81:
	.ascii	"VRAM_G_BG_EXT_PALETTE\000"
.LASF13:
	.ascii	"int32\000"
.LASF354:
	.ascii	"mosaicShadowSub\000"
.LASF362:
	.ascii	"g_videoBounds\000"
.LASF124:
	.ascii	"BG_BMP8_128x128\000"
.LASF241:
	.ascii	"pVideoWriteTable\000"
.LASF280:
	.ascii	"paletteBank\000"
.LASF158:
	.ascii	"dirty\000"
.LASF41:
	.ascii	"IRQ_WIFI\000"
.LASF175:
	.ascii	"nameCount\000"
.LASF259:
	.ascii	"smaBankAddr\000"
.LASF206:
	.ascii	"fetch16\000"
.LASF351:
	.ascii	"g_videoBoundsList\000"
.LASF85:
	.ascii	"VRAM_G_TYPE\000"
.LASF180:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF261:
	.ascii	"smaBankbit\000"
.LASF235:
	.ascii	"NEOROM_AUDODATA\000"
.LASF38:
	.ascii	"IRQ_GEOMETRY_FIFO\000"
.LASF86:
	.ascii	"VRAM_H_LCD\000"
.LASF297:
	.ascii	"fixedRomLatch\000"
.LASF285:
	.ascii	"vramOffset\000"
.LASF283:
	.ascii	"sramProtectCount\000"
.LASF338:
	.ascii	"zNear\000"
.LASF104:
	.ascii	"MODE_FIFO\000"
.LASF326:
	.ascii	"glMatrixMode\000"
.LASF243:
	.ascii	"romBankCount\000"
.LASF223:
	.ascii	"TNeoADPCMStream\000"
.LASF27:
	.ascii	"IRQ_DMA0\000"
.LASF28:
	.ascii	"IRQ_DMA1\000"
.LASF29:
	.ascii	"IRQ_DMA2\000"
.LASF30:
	.ascii	"IRQ_DMA3\000"
.LASF371:
	.ascii	"neoVideoDrawFrame\000"
.LASF286:
	.ascii	"vramMod\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
