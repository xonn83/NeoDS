	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"NeoMemory.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	neoSetRomBankAddr
	.code	16
	.thumb_func
	.type	neoSetRomBankAddr, %function
neoSetRomBankAddr:
.LFB168:
	.file 1 "C:/Users/GRX/NeoDS/arm9/source/NeoMemory.c"
	.loc 1 41 0
.LVL0:
	.loc 1 45 0
	ldr	r2, .L3
	mov	r3, #129
	lsl	r3, r3, #2
	add	r0, r0, r2
.LVL1:
	str	r0, [r7, r3]
	.loc 1 46 0
	@ sp needed for prologue
	bx	lr
.L4:
	.align	2
.L3:
	.word	-2097152
.LFE168:
	.size	neoSetRomBankAddr, .-neoSetRomBankAddr
	.align	2
	.global	neoWriteRomBank
	.code	16
	.thumb_func
	.type	neoWriteRomBank, %function
neoWriteRomBank:
.LFB169:
	.loc 1 50 0
	push	{r4, lr}
.LCFI0:
.LVL2:
	.loc 1 51 0
	mov	r3, r7
	add	r3, r3, #216
	ldr	r3, [r3]
	mov	r2, r7
	cmp	r3, #0
	beq	.L8
	.loc 1 56 0
	ldr	r4, .L10
	and	r0, r0, r4
.LVL3:
	ldr	r4, .L10+4
	cmp	r0, r4
	bls	.L8
.LBB11:
	.loc 1 57 0
	mov	r0, #7
	and	r1, r1, r0
.LVL4:
	.loc 1 58 0
	cmp	r1, r3
	bcc	.L7
	mov	r1, #0
.L7:
.LBB12:
.LBB13:
	.loc 1 45 0
	ldr	r0, .L10+8
	mov	r3, #129
	lsl	r1, r1, #20
.LVL5:
	lsl	r3, r3, #2
	add	r1, r1, r0
	str	r1, [r2, r3]
.LVL6:
.L8:
.LBE13:
.LBE12:
.LBE11:
	.loc 1 64 0
	@ sp needed for prologue
	pop	{r4, pc}
.L11:
	.align	2
.L10:
	.word	16777215
	.word	3145711
	.word	-2097152
.LFE169:
	.size	neoWriteRomBank, .-neoWriteRomBank
	.align	2
	.global	neoReadCard16
	.code	16
	.thumb_func
	.type	neoReadCard16, %function
neoReadCard16:
.LFB170:
	.loc 1 67 0
	push	{lr}
.LCFI1:
.LVL7:
	.loc 1 69 0
	ldr	r2, .L16
	ldr	r3, .L16+4
	and	r2, r2, r0
	cmp	r2, r3
	bls	.L13
	ldr	r0, .L16+8
.LVL8:
	b	.L14
.LVL9:
.L13:
.LBB14:
	.loc 1 72 0
	mov	r3, r7
	add	r3, r3, #252
	ldr	r3, [r3, #88]
	lsl	r0, r0, #20
.LVL10:
	lsr	r0, r0, #21
	ldrb	r0, [r3, r0]
	mov	r3, #255
	lsl	r3, r3, #8
	orr	r0, r0, r3
.L14:
.LBE14:
	.loc 1 75 0
	@ sp needed for prologue
	pop	{pc}
.L17:
	.align	2
.L16:
	.word	16777215
	.word	8392704
	.word	65535
.LFE170:
	.size	neoReadCard16, .-neoReadCard16
	.align	2
	.global	neoWriteCard8
	.code	16
	.thumb_func
	.type	neoWriteCard8, %function
neoWriteCard8:
.LFB171:
	.loc 1 78 0
	push	{lr}
.LCFI2:
.LVL11:
	.loc 1 80 0
	ldr	r2, .L21
	ldr	r3, .L21+4
	and	r2, r2, r0
	cmp	r2, r3
	bhi	.L20
	lsl	r3, r0, #31
	bmi	.L20
	.loc 1 81 0
	mov	r3, r7
	add	r3, r3, #252
	lsl	r0, r0, #20
.LVL12:
	ldr	r3, [r3, #88]
	lsr	r0, r0, #21
	strb	r1, [r3, r0]
.LVL13:
.L20:
	.loc 1 83 0
	@ sp needed for prologue
	pop	{pc}
.L22:
	.align	2
.L21:
	.word	16777215
	.word	8392704
.LFE171:
	.size	neoWriteCard8, .-neoWriteCard8
	.align	2
	.global	neoWriteCard16
	.code	16
	.thumb_func
	.type	neoWriteCard16, %function
neoWriteCard16:
.LFB172:
	.loc 1 86 0
	push	{lr}
.LCFI3:
.LVL14:
	.loc 1 88 0
	ldr	r2, .L26
	ldr	r3, .L26+4
	and	r2, r2, r0
	cmp	r2, r3
	bhi	.L25
	.loc 1 89 0
	mov	r3, r7
	add	r3, r3, #252
	lsl	r0, r0, #20
.LVL15:
	ldr	r3, [r3, #88]
	lsr	r0, r0, #21
	strb	r1, [r3, r0]
.LVL16:
.L25:
	.loc 1 91 0
	@ sp needed for prologue
	pop	{pc}
.L27:
	.align	2
.L26:
	.word	16777215
	.word	8392704
.LFE172:
	.size	neoWriteCard16, .-neoWriteCard16
	.align	2
	.global	neoEvictBank
	.code	16
	.thumb_func
	.type	neoEvictBank, %function
neoEvictBank:
.LFB175:
	.loc 1 173 0
	push	{lr}
.LCFI4:
	.loc 1 174 0
	ldr	r3, .L31
	ldr	r2, [r3]
	.loc 1 175 0
	ldr	r1, [r3, #4]
	.loc 1 174 0
	add	r2, r2, #1
	str	r2, [r3]
	.loc 1 175 0
	cmp	r2, r1
	bcc	.L29
	mov	r2, #0
	str	r2, [r3]
.L29:
	ldr	r3, .L31
	.loc 1 178 0
	@ sp needed for prologue
	.loc 1 175 0
	ldr	r0, [r3]
	.loc 1 178 0
	pop	{pc}
.L32:
	.align	2
.L31:
	.word	.LANCHOR0
.LFE175:
	.size	neoEvictBank, .-neoEvictBank
	.align	2
	.global	neoEvictBank2
	.code	16
	.thumb_func
	.type	neoEvictBank2, %function
neoEvictBank2:
.LFB176:
	.loc 1 181 0
	push	{lr}
.LCFI5:
	.loc 1 182 0
	ldr	r3, .L36
	ldr	r2, [r3]
	.loc 1 183 0
	ldr	r1, [r3, #4]
	.loc 1 182 0
	add	r2, r2, #1
	.loc 1 183 0
	sub	r1, r1, #1
	.loc 1 182 0
	str	r2, [r3]
	.loc 1 183 0
	cmp	r2, r1
	bcc	.L34
	mov	r2, #0
	str	r2, [r3]
.L34:
	ldr	r3, .L36
	.loc 1 186 0
	@ sp needed for prologue
	.loc 1 183 0
	ldr	r0, [r3]
	.loc 1 186 0
	pop	{pc}
.L37:
	.align	2
.L36:
	.word	.LANCHOR0
.LFE176:
	.size	neoEvictBank2, .-neoEvictBank2
	.align	2
	.global	neoMemoryLoadProgramVector
	.code	16
	.thumb_func
	.type	neoMemoryLoadProgramVector, %function
neoMemoryLoadProgramVector:
.LFB180:
	.loc 1 232 0
	push	{r4, lr}
.LCFI6:
	.loc 1 234 0
	mov	r3, r7
	ldr	r1, .L40
	add	r3, r3, #252
	ldr	r0, [r3, #68]
	add	r1, r1, #32
	mov	r2, #128
	bl	memcpy
	.loc 1 236 0
	mov	r3, #130
	lsl	r3, r3, #2
	ldr	r1, [r7, r3]
	.loc 1 237 0
	@ sp needed for prologue
	.loc 1 236 0
	add	r1, r1, #1
	str	r1, [r7, r3]
	.loc 1 237 0
	pop	{r4, pc}
.L41:
	.align	2
.L40:
	.word	.LANCHOR0
.LFE180:
	.size	neoMemoryLoadProgramVector, .-neoMemoryLoadProgramVector
	.align	2
	.global	neoMemoryLoadBiosVector
	.code	16
	.thumb_func
	.type	neoMemoryLoadBiosVector, %function
neoMemoryLoadBiosVector:
.LFB179:
	.loc 1 226 0
	push	{r4, lr}
.LCFI7:
	.loc 1 228 0
	mov	r3, r7
	add	r3, r3, #252
	ldr	r0, [r3, #68]
	ldr	r1, [r3, #76]
	mov	r2, #128
	bl	memcpy
	.loc 1 229 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE179:
	.size	neoMemoryLoadBiosVector, .-neoMemoryLoadBiosVector
	.align	2
	.global	neoMemoryInit
	.code	16
	.thumb_func
	.type	neoMemoryInit, %function
neoMemoryInit:
.LFB181:
	.loc 1 240 0
	push	{r4, r5, r6, lr}
.LCFI8:
	sub	sp, sp, #8
.LCFI9:
	.loc 1 249 0
	ldr	r0, .L65
	.loc 1 247 0
	ldr	r2, .L65+4
	mov	r3, r7
	add	r3, r3, #252
	mov	r1, r2
	.loc 1 249 0
	add	r2, r2, r0
	str	r2, [r3, #80]
	.loc 1 250 0
	ldr	r2, .L65+8
	.loc 1 247 0
	add	r1, r1, #32
	.loc 1 250 0
	add	r2, r2, #32
	str	r2, [r3, #84]
	.loc 1 251 0
	ldr	r2, .L65+12
	.loc 1 247 0
	str	r1, [r3, #68]
	.loc 1 251 0
	add	r2, r2, #32
	str	r2, [r3, #88]
	.loc 1 252 0
	ldr	r2, .L65+16
	.loc 1 248 0
	ldr	r1, .L65+20
	.loc 1 252 0
	add	r2, r2, #32
	str	r2, [r3, #92]
	.loc 1 253 0
	ldr	r2, .L65+24
	.loc 1 248 0
	add	r1, r1, #32
	.loc 1 253 0
	add	r2, r2, #32
	str	r2, [r3, #96]
	.loc 1 254 0
	ldr	r2, .L65+28
	.loc 1 248 0
	str	r1, [r3, #76]
	.loc 1 254 0
	add	r2, r2, #32
	str	r2, [r3, #100]
	.loc 1 256 0
	ldr	r2, .L65+32
	.loc 1 258 0
	mov	r1, #128
	.loc 1 256 0
	add	r2, r2, #32
	.loc 1 259 0
	ldr	r0, .L65+36
	.loc 1 256 0
	str	r2, [r3, #104]
	.loc 1 258 0
	lsl	r1, r1, #6
	.loc 1 256 0
	mov	r2, #0
.L45:
	.loc 1 259 0
	ldr	r4, [r3, #104]
	str	r0, [r4, r2]
	add	r2, r2, #4
	.loc 1 258 0
	cmp	r2, r1
	bne	.L45
	.loc 1 263 0
	mov	r0, r7
	.loc 1 262 0
	mov	r2, #128
	.loc 1 258 0
	mov	r3, #0
.LVL17:
	.loc 1 263 0
	add	r0, r0, #252
	mov	r1, #0
	.loc 1 262 0
	lsl	r2, r2, #9
.L46:
	.loc 1 263 0
	ldr	r4, [r0, #80]
	strb	r1, [r4, r3]
	.loc 1 262 0
	add	r3, r3, #1
.LVL18:
	cmp	r3, r2
	bne	.L46
	.loc 1 267 0
	mov	r0, #2
	bl	neoSystemRegionSize
.LVL19:
	str	r0, [sp, #4]
	.loc 1 268 0
	bl	systemRamAlloc
	.loc 1 269 0
	mov	r6, #128
	.loc 1 268 0
	ldr	r5, .L65+40
	.loc 1 269 0
	lsl	r6, r6, #15
	mov	r1, r0
	orr	r1, r1, r6
	.loc 1 268 0
	str	r0, [r5, #32]
	.loc 1 269 0
	ldr	r2, [sp, #4]
	mov	r0, #2
	bl	neoSystemLoadRegion
	.loc 1 271 0
	ldr	r3, [r5, #32]
	.loc 1 270 0
	ldr	r4, .L65+44
	ldr	r1, [sp, #4]
	.loc 1 271 0
	orr	r6, r6, r3
	.loc 1 270 0
	str	r1, [r4, #4]
	.loc 1 272 0
	mov	r0, #4
	.loc 1 271 0
	str	r6, [r4]
	.loc 1 272 0
	bl	neoSystemRegionSize
	.loc 1 274 0
	mov	r3, r7
	.loc 1 272 0
	str	r0, [r4, #8]
	.loc 1 274 0
	add	r3, r3, #216
	ldr	r4, [r3]
	cmp	r4, #0
	bne	.L47
	.loc 1 275 0
	ldr	r0, .L65+48
	bl	guiConsoleLog
	.loc 1 277 0
	mov	r2, #144
	lsl	r2, r2, #3
	ldr	r6, .L65+52
	.loc 1 278 0
	ldr	r5, .L65+56
	.loc 1 279 0
	ldr	r4, .L65+60
	.loc 1 277 0
	add	r3, r7, r2
	.loc 1 280 0
	mov	ip, r7
	.loc 1 277 0
	mov	r2, #32
.LVL20:
.L48:
	.loc 1 278 0
	mov	r0, #128
	lsl	r0, r0, #3
	add	r1, r3, r0
	.loc 1 279 0
	mov	r0, #128
	lsl	r0, r0, #4
	.loc 1 278 0
	str	r5, [r1]
	.loc 1 279 0
	add	r1, r3, r0
	.loc 1 280 0
	mov	r0, #192
	lsl	r0, r0, #5
	.loc 1 279 0
	str	r4, [r1]
	.loc 1 280 0
	add	r1, r3, r0
	ldr	r0, .L65+64
	.loc 1 276 0
	add	r2, r2, #1
.LVL21:
	.loc 1 277 0
	str	r6, [r3]
	.loc 1 280 0
	str	r0, [r1]
	.loc 1 276 0
	add	r3, r3, #4
	cmp	r2, #48
	bne	.L48
	.loc 1 282 0
	ldr	r2, .L65+68
.LVL22:
	mov	r3, #0
	str	r3, [r2, #4]
	mov	r1, ip
	.loc 1 284 0
	ldr	r2, .L65+40
	.loc 1 283 0
	add	r1, r1, #252
	str	r3, [r1, #72]
	.loc 1 284 0
	str	r3, [r2, #36]
	b	.L49
.L47:
.LBB15:
	.loc 1 286 0
	lsl	r4, r4, #20
	lsr	r4, r4, #12
.LVL23:
	.loc 1 287 0
	b	.L50
.L52:
	.loc 1 288 0
	bl	systemGetRamFree
	lsl	r3, r4, #10
	add	r3, r3, r4
	lsl	r3, r3, #2
	cmp	r0, r3
	bcs	.L51
	.loc 1 291 0
	lsr	r4, r4, #1
.LVL24:
.L50:
	.loc 1 287 0
	cmp	r4, #63
	bhi	.L52
.L51:
	.loc 1 293 0
	ldr	r0, .L65+72
	mov	r1, r4
	bl	guiConsoleLogf
	.loc 1 294 0
	ldr	r5, .L65+68
	.loc 1 295 0
	lsl	r1, r4, #12
	mov	r0, r1
	.loc 1 294 0
	str	r4, [r5, #4]
	.loc 1 295 0
	str	r1, [sp, #4]
	mov	r6, r7
	bl	systemRamAlloc
	add	r6, r6, #252
	str	r0, [r6, #72]
	.loc 1 296 0
	lsl	r0, r4, #2
	bl	systemRamAlloc
	ldr	r3, .L65+40
	.loc 1 299 0
	mov	r1, r7
	add	r1, r1, #252
	.loc 1 296 0
	str	r0, [r3, #36]
	.loc 1 298 0
	ldr	r5, [r5, #4]
	.loc 1 299 0
	mov	r2, #0
	mov	r3, #0
.LVL25:
	mov	ip, r1
	.loc 1 298 0
	b	.L53
.L54:
	.loc 1 299 0
	mov	r4, ip
.LVL26:
	ldr	r4, [r4, #72]
	lsl	r6, r3, #12
	ldr	r1, .L65+76
	add	r6, r4, r6
	.loc 1 300 0
	str	r3, [r0, r2]
	.loc 1 299 0
	str	r6, [r1, r2]
	.loc 1 298 0
	add	r3, r3, #1
.LVL27:
	add	r2, r2, #4
.LVL28:
.L53:
	cmp	r3, r5
	bne	.L54
	.loc 1 303 0
	ldr	r0, .L65+80
	bl	guiConsoleLogf
.LVL29:
	.loc 1 304 0
	mov	r3, r7
	add	r3, r3, #252
	ldr	r1, [r3, #72]
	ldr	r3, .L65+68
	mov	r2, #128
	ldr	r3, [r3, #4]
	lsl	r2, r2, #13
	lsl	r3, r3, #12
	mov	r0, #0
	bl	neoSystemLoadRegionEx
	.loc 1 306 0
	mov	r2, r7
	add	r2, r2, #216
	ldr	r2, [r2]
	ldr	r4, [sp, #4]
.LVL30:
	lsl	r2, r2, #20
	cmp	r4, r2
	bne	.L55
	.loc 1 307 0
	ldr	r0, .L65+84
	bl	guiConsoleLogf
	mov	r0, #144
	lsl	r0, r0, #3
	.loc 1 312 0
	ldr	r1, .L65+88
	.loc 1 307 0
	add	r3, r7, r0
	.loc 1 309 0
	ldr	r5, .L65+92
	.loc 1 310 0
	ldr	r4, .L65+96
	.loc 1 311 0
	ldr	r0, .L65+100
	.loc 1 307 0
	mov	r2, #32
.LVL31:
	.loc 1 312 0
	mov	ip, r1
.L56:
	.loc 1 310 0
	mov	r1, #128
	lsl	r1, r1, #3
	add	r6, r3, r1
	.loc 1 311 0
	mov	r1, #128
	lsl	r1, r1, #4
	.loc 1 310 0
	str	r4, [r6]
	.loc 1 311 0
	add	r6, r3, r1
	.loc 1 312 0
	mov	r1, #192
	lsl	r1, r1, #5
	.loc 1 311 0
	str	r0, [r6]
	.loc 1 308 0
	add	r2, r2, #1
.LVL32:
	.loc 1 312 0
	add	r6, r3, r1
	mov	r1, ip
	.loc 1 309 0
	str	r5, [r3]
	.loc 1 312 0
	str	r1, [r6]
	.loc 1 308 0
	add	r3, r3, #4
	cmp	r2, #48
	bne	.L56
	b	.L49
.LVL33:
.L55:
	mov	r2, #144
	.loc 1 319 0
	ldr	r1, .L65+104
	.loc 1 308 0
	lsl	r2, r2, #3
	.loc 1 316 0
	ldr	r5, .L65+108
	.loc 1 317 0
	ldr	r4, .L65+112
	.loc 1 318 0
	ldr	r0, .L65+116
	.loc 1 308 0
	add	r3, r7, r2
	.loc 1 319 0
	mov	ip, r1
	.loc 1 308 0
	mov	r2, #32
.LVL34:
.L57:
	.loc 1 317 0
	mov	r1, #128
	lsl	r1, r1, #3
	add	r6, r3, r1
	.loc 1 318 0
	mov	r1, #128
	lsl	r1, r1, #4
	.loc 1 317 0
	str	r4, [r6]
	.loc 1 318 0
	add	r6, r3, r1
	.loc 1 319 0
	mov	r1, #192
	lsl	r1, r1, #5
	.loc 1 318 0
	str	r0, [r6]
	.loc 1 315 0
	add	r2, r2, #1
.LVL35:
	.loc 1 319 0
	add	r6, r3, r1
	mov	r1, ip
	.loc 1 316 0
	str	r5, [r3]
	.loc 1 319 0
	str	r1, [r6]
	.loc 1 315 0
	add	r3, r3, #4
	cmp	r2, #48
	bne	.L57
.L49:
.LBE15:
	.loc 1 324 0
	mov	r3, r7
	add	r3, r3, #252
	mov	r2, #128
.LVL36:
	ldr	r1, [r3, #68]
	mov	r0, #0
	lsl	r2, r2, #13
	bl	neoSystemLoadRegion
	.loc 1 325 0
	mov	r3, r7
	add	r3, r3, #252
	mov	r2, #128
	ldr	r1, [r3, #76]
	mov	r0, #1
	lsl	r2, r2, #10
	bl	neoSystemLoadRegion
	.loc 1 326 0
	ldr	r0, .L65+68
	mov	r3, r7
	add	r3, r3, #252
	ldr	r1, [r3, #68]
	mov	r2, #128
	add	r0, r0, #32
	bl	memcpy
	.loc 1 327 0
	bl	neoMemoryLoadBiosVector
	.loc 1 335 0
	mov	r3, r7
	add	r3, r3, #216
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L58
.LBB16:
.LBB17:
	.loc 1 45 0
	mov	r3, #129
	ldr	r1, .L65+120
	lsl	r3, r3, #2
	str	r1, [r7, r3]
.L58:
.LBE17:
.LBE16:
	.loc 1 342 0
	bl	guiConsoleDump
	.loc 1 343 0
	add	sp, sp, #8
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L66:
	.align	2
.L65:
	.word	1048608
	.word	.LANCHOR1
	.word	.LANCHOR3
	.word	.LANCHOR4
	.word	.LANCHOR5
	.word	.LANCHOR2
	.word	.LANCHOR6
	.word	.LANCHOR7
	.word	.LANCHOR8
	.word	-16777216
	.word	.LANCHOR9
	.word	41939968
	.word	.LC14
	.word	neoReadRom08
	.word	neoReadRom016
	.word	neoReadRom032
	.word	neoRom0Pc
	.word	.LANCHOR0
	.word	.LC21
	.word	.LANCHOR8+32
	.word	.LC23
	.word	.LC25
	.word	neoRom1Pc
	.word	neoReadRom18
	.word	neoReadRom116
	.word	neoReadRom132
	.word	neoBankedRomPc
	.word	neoReadBankedRom8
	.word	neoReadBankedRom16
	.word	neoReadBankedRom32
	.word	-2097152
.LFE181:
	.size	neoMemoryInit, .-neoMemoryInit
	.align	2
	.global	neoLoadBank
	.code	16
	.thumb_func
	.type	neoLoadBank, %function
neoLoadBank:
.LFB173:
	.loc 1 96 0
	push	{r4, r5, r6, lr}
.LCFI10:
.LVL37:
	.loc 1 100 0
	mov	r3, r7
	add	r3, r3, #252
	ldr	r5, [r3, #72]
	lsl	r2, r1, #12
	add	r5, r5, r2
.LVL38:
	.loc 1 101 0
	ldr	r2, .L69
	lsl	r1, r1, #2
.LVL39:
	ldr	r2, [r2, #36]
	.loc 1 96 0
	mov	r4, r0
	.loc 1 101 0
	add	r1, r2, r1
.LVL40:
	.loc 1 105 0
	ldr	r0, [r1]
.LVL41:
	ldr	r2, [r3, #104]
	ldr	r6, .L69+4
	lsl	r0, r0, #2
	str	r6, [r0, r2]
	.loc 1 109 0
	ldr	r3, [r3, #104]
	lsl	r2, r4, #2
	str	r5, [r2, r3]
	.loc 1 111 0
	str	r4, [r1]
	.loc 1 115 0
	bl	neoAudioStreamProcess
.LVL42:
	.loc 1 118 0
	mov	r3, #128
	lsl	r3, r3, #1
	add	r4, r4, r3
.LVL43:
	mov	r3, #128
	mov	r1, r5
	lsl	r2, r4, #12
	lsl	r3, r3, #5
	mov	r0, #0
	bl	neoSystemReadRegion
	.loc 1 122 0
	@ sp needed for prologue
	mov	r0, r5
.LVL44:
	pop	{r4, r5, r6, pc}
.L70:
	.align	2
.L69:
	.word	.LANCHOR9
	.word	-16777216
.LFE173:
	.size	neoLoadBank, .-neoLoadBank
	.align	2
	.global	neoLoadBank2
	.code	16
	.thumb_func
	.type	neoLoadBank2, %function
neoLoadBank2:
.LFB174:
	.loc 1 127 0
	push	{r4, r5, r6, lr}
.LCFI11:
.LVL45:
	sub	sp, sp, #32
.LCFI12:
	.loc 1 127 0
	mov	r4, r0
	.loc 1 128 0
	add	r0, r1, #1
.LVL46:
	str	r0, [sp, #20]
	.loc 1 135 0
	ldr	r0, .L75
	.loc 1 129 0
	add	r2, r4, #1
	.loc 1 135 0
	ldr	r0, [r0, #36]
	.loc 1 133 0
	mov	r3, r7
	.loc 1 136 0
	ldr	r6, [sp, #20]
	.loc 1 129 0
	str	r2, [sp, #8]
	.loc 1 133 0
	add	r3, r3, #252
	ldr	r5, [r3, #72]
	.loc 1 135 0
	mov	ip, r0
	.loc 1 136 0
	lsl	r0, r6, #2
	add	r0, r0, ip
.LVL47:
	.loc 1 133 0
	str	r5, [sp, #24]
	.loc 1 138 0
	ldr	r2, [r0]
	ldr	r5, [sp, #8]
	str	r2, [sp, #4]
	cmp	r2, r5
	bne	.L72
	.loc 1 142 0
	mov	r0, r4
.LVL48:
	bl	neoLoadBank
.LVL49:
	str	r0, [sp, #12]
	b	.L73
.LVL50:
.L72:
	.loc 1 133 0
	ldr	r6, [sp, #24]
	lsl	r2, r1, #12
	.loc 1 135 0
	lsl	r1, r1, #2
.LVL51:
	add	r1, r1, ip
.LVL52:
	.loc 1 133 0
	add	r2, r6, r2
	str	r2, [sp, #12]
	.loc 1 148 0
	ldr	r2, [r1]
	ldr	r6, .L75+4
	lsl	r5, r2, #2
	ldr	r2, [r3, #104]
	mov	ip, r6
	str	r6, [r5, r2]
	.loc 1 149 0
	ldr	r5, [sp, #4]
	ldr	r2, [r3, #104]
	lsl	r6, r5, #2
	mov	r5, ip
	str	r5, [r6, r2]
	.loc 1 155 0
	ldr	r6, [r3, #104]
	ldr	r5, [sp, #12]
	mov	ip, r6
	mov	r2, ip
	lsl	r6, r4, #2
	str	r5, [r6, r2]
	.loc 1 156 0
	ldr	r2, [sp, #8]
	ldr	r5, [sp, #20]
	lsl	r6, r2, #2
	lsl	r5, r5, #12
	ldr	r2, [sp, #24]
	mov	ip, r5
	ldr	r3, [r3, #104]
	add	ip, ip, r2
	mov	r5, ip
	str	r5, [r6, r3]
	.loc 1 159 0
	ldr	r6, [sp, #8]
	.loc 1 158 0
	str	r4, [r1]
	.loc 1 159 0
	str	r6, [r0]
	.loc 1 163 0
	bl	neoAudioStreamProcess
.LVL53:
	.loc 1 166 0
	mov	r0, #128
	lsl	r0, r0, #1
	add	r4, r4, r0
.LVL54:
	mov	r3, #128
	lsl	r2, r4, #12
	mov	r0, #0
	ldr	r1, [sp, #12]
	lsl	r3, r3, #6
	bl	neoSystemReadRegion
.LVL55:
.L73:
	.loc 1 170 0
	ldr	r0, [sp, #12]
	add	sp, sp, #32
	@ sp needed for prologue
.LVL56:
	pop	{r4, r5, r6, pc}
.L76:
	.align	2
.L75:
	.word	.LANCHOR9
	.word	-16777216
.LFE174:
	.size	neoLoadBank2, .-neoLoadBank2
	.align	2
	.global	neoBankPC
	.code	16
	.thumb_func
	.type	neoBankPC, %function
neoBankPC:
.LFB177:
	.loc 1 189 0
	push	{r4, r5, r6, lr}
.LCFI13:
.LVL57:
	.loc 1 192 0
	mov	r3, #129
	.loc 1 189 0
	mov	r5, r0
	.loc 1 192 0
	lsl	r3, r3, #2
	ldr	r0, .L83
.LVL58:
	ldr	r3, [r7, r3]
	and	r0, r0, r5
	add	r0, r0, r3
	.loc 1 193 0
	mov	r3, r7
	add	r3, r3, #252
	.loc 1 192 0
	lsl	r0, r0, #9
	.loc 1 193 0
	ldr	r2, [r3, #104]
	.loc 1 192 0
	lsr	r0, r0, #21
.LVL59:
	.loc 1 193 0
	lsl	r1, r0, #2
	ldr	r4, [r1, r2]
.LVL60:
	.loc 1 194 0
	ldr	r1, [r3, #72]
	.loc 1 198 0
	ldr	r3, .L83+4
	cmp	r4, r3
	beq	.L78
	ldr	r3, .L83+8
	.loc 1 194 0
	sub	r1, r4, r1
	.loc 1 198 0
	ldr	r3, [r3, #4]
	.loc 1 194 0
	lsr	r1, r1, #12
.LVL61:
	.loc 1 198 0
	sub	r3, r3, #1
	cmp	r1, r3
	bne	.L79
.L78:
.LBB18:
.LBB19:
	.loc 1 182 0
	ldr	r3, .L83+8
	ldr	r2, [r3]
	.loc 1 183 0
	ldr	r1, [r3, #4]
.LVL62:
	.loc 1 182 0
	add	r2, r2, #1
	.loc 1 183 0
	sub	r1, r1, #1
	.loc 1 182 0
	str	r2, [r3]
	.loc 1 183 0
	cmp	r2, r1
	bcc	.L80
	mov	r2, #0
	str	r2, [r3]
.L80:
.LBE19:
.LBE18:
	.loc 1 204 0
	ldr	r3, .L83+8
	ldr	r1, [r3]
	bl	neoLoadBank2
.LVL63:
	mov	r4, r0
	.loc 1 198 0
	b	.L81
.LVL64:
.L79:
.LBB20:
	.loc 1 209 0
	ldr	r3, .L83+12
	.loc 1 206 0
	add	r1, r1, #1
.LVL65:
	.loc 1 209 0
	ldr	r3, [r3, #36]
	lsl	r2, r1, #2
	ldr	r3, [r2, r3]
	.loc 1 207 0
	add	r0, r0, #1
.LVL66:
	.loc 1 209 0
	cmp	r3, r0
	beq	.L81
	.loc 1 213 0
	bl	neoLoadBank
.LVL67:
.L81:
	ldr	r0, .L83+16
.LVL68:
.LBE20:
	.loc 1 217 0
	@ sp needed for prologue
.LBB21:
	.loc 1 213 0
	and	r5, r5, r0
.LVL69:
	sub	r0, r4, r5
.LVL70:
.LBE21:
	.loc 1 217 0
	pop	{r4, r5, r6, pc}
.L84:
	.align	2
.L83:
	.word	16777215
	.word	-16777216
	.word	.LANCHOR0
	.word	.LANCHOR9
	.word	-4096
.LFE177:
	.size	neoBankPC, .-neoBankPC
	.align	2
	.global	neoBankedRomPc
	.code	16
	.thumb_func
	.type	neoBankedRomPc, %function
neoBankedRomPc:
.LFB178:
	.loc 1 220 0
	push	{r4, r5, r6, lr}
.LCFI14:
.LVL71:
	.loc 1 220 0
	mov	r5, r0
	.loc 1 221 0
	mov	r4, r7
	bl	neoBankPC
.LVL72:
	str	r0, [r4, #96]
	ldr	r0, [r7, #96]
	.loc 1 223 0
	@ sp needed for prologue
	.loc 1 221 0
	add	r0, r5, r0
.LVL73:
	.loc 1 223 0
	pop	{r4, r5, r6, pc}
.LFE178:
	.size	neoBankedRomPc, .-neoBankedRomPc
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC14:
	.ascii	"No rom banks...\000"
.LC21:
	.ascii	"Allocate %d bank cache entries\000"
.LC23:
	.ascii	"Loading banks into main ram...\000"
.LC25:
	.ascii	" -> no banking needed\000"
	.bss
	.align	5
	.set	.LANCHOR0,. + 0
	.set	.LANCHOR1,. + 128
	.set	.LANCHOR2,. + 1114240
	.set	.LANCHOR3,. + 1245312
	.set	.LANCHOR4,. + 1310848
	.set	.LANCHOR5,. + 1312896
	.set	.LANCHOR6,. + 1378432
	.set	.LANCHOR7,. + 1382528
	.set	.LANCHOR8,. + 1398912
	.set	.LANCHOR9,. + 1407104
	.type	g_bankEntry, %object
	.size	g_bankEntry, 4
g_bankEntry:
	.space	4
	.type	g_bankCacheCount, %object
	.size	g_bankCacheCount, 4
g_bankCacheCount:
	.space	4
	.space	24
	.type	g_programVector, %object
	.size	g_programVector, 128
g_programVector:
	.space	128
	.type	g_mainProgram, %object
	.size	g_mainProgram, 1114112
g_mainProgram:
	.space	1114112
	.type	g_bios, %object
	.size	g_bios, 131072
g_bios:
	.space	131072
	.type	g_sram, %object
	.size	g_sram, 65536
g_sram:
	.space	65536
	.type	g_card, %object
	.size	g_card, 2048
g_card:
	.space	2048
	.type	g_vram, %object
	.size	g_vram, 65536
g_vram:
	.space	65536
	.type	g_spriteRam, %object
	.size	g_spriteRam, 4096
g_spriteRam:
	.space	4096
	.type	g_palette, %object
	.size	g_palette, 16384
g_palette:
	.space	16384
	.type	g_bankTable, %object
	.size	g_bankTable, 8192
g_bankTable:
	.space	8192
	.type	g_audioProgram, %object
	.size	g_audioProgram, 4
g_audioProgram:
	.space	4
	.type	g_cacheOwner, %object
	.size	g_cacheOwner, 4
g_cacheOwner:
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
	.byte	0x4
	.4byte	.LCFI0-.LFB169
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
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.byte	0x4
	.4byte	.LCFI1-.LFB170
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
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.byte	0x4
	.4byte	.LCFI2-.LFB171
	.byte	0xe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.byte	0x4
	.4byte	.LCFI3-.LFB172
	.byte	0xe
	.uleb128 0x4
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
	.4byte	.LCFI4-.LFB175
	.byte	0xe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.byte	0x4
	.4byte	.LCFI5-.LFB176
	.byte	0xe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.byte	0x4
	.4byte	.LCFI6-.LFB180
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
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
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.byte	0x4
	.4byte	.LCFI7-.LFB179
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
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.byte	0x4
	.4byte	.LCFI8-.LFB181
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
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.byte	0x4
	.4byte	.LCFI10-.LFB173
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
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.byte	0x4
	.4byte	.LCFI11-.LFB174
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
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x30
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.byte	0x4
	.4byte	.LCFI13-.LFB177
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
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.byte	0x4
	.4byte	.LCFI14-.LFB178
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
.LEFDE26:
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
	.4byte	.LFB169-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE169-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE169-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE169-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB170-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB171-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB172-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB175-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE175-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB176-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE176-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB180-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE180-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB179-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE179-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LFB181-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE181-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB173-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LFB174-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LFB177-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE177-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE177-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LFB178-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE178-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 5 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 6 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 7 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 8 "C:/Users/GRX/NeoDS/arm9/include/cyclone.h"
	.file 9 "C:/Users/GRX/NeoDS/arm9/include/NeoCpu.h"
	.file 10 "C:/Users/GRX/NeoDS/arm9/../common/source/NeoAudioStream.h"
	.file 11 "C:/Users/GRX/NeoDS/arm9/include/NeoSystem.h"
	.file 12 "C:/Users/GRX/NeoDS/arm9/../common/source/NeoIPC.h"
	.file 13 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.section	.debug_info
	.4byte	0x14eb
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF265
	.byte	0x1
	.4byte	.LASF266
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2a
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x35
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x36
	.4byte	0x57
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.4byte	0x69
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
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
	.byte	0x3
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
	.byte	0x3
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x3
	.byte	0x63
	.4byte	0x4c
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x64
	.4byte	0x70
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x3
	.byte	0x68
	.4byte	0x3a
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x3
	.byte	0x69
	.4byte	0x5e
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
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
	.byte	0x3
	.byte	0x7d
	.4byte	0xdf
	.uleb128 0x8
	.byte	0x4
	.4byte	0x105
	.uleb128 0x9
	.byte	0x1
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0xb
	.4byte	0xa9
	.4byte	0x121
	.uleb128 0xc
	.4byte	0x107
	.byte	0x6
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF19
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x28
	.byte	0x4
	.2byte	0x18c
	.4byte	0x1d5
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x18d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x18e
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x18f
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x190
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x191
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x192
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x193
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x194
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x195
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x196
	.4byte	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x198
	.4byte	0x131
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x8
	.byte	0x5
	.byte	0x29
	.4byte	0x20a
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x5
	.byte	0x2a
	.4byte	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x5
	.byte	0x2b
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x128
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x5
	.byte	0x2c
	.4byte	0x1e1
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0x9c
	.4byte	0x23c
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x6
	.byte	0xa1
	.4byte	0x21b
	.uleb128 0x13
	.4byte	.LASF40
	.2byte	0x2020
	.byte	0x6
	.2byte	0x11a
	.4byte	0x2d3
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x11b
	.4byte	0x23c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x11e
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x121
	.4byte	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x122
	.4byte	0x210
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x123
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x124
	.4byte	0x2e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x125
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x126
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x201c
	.byte	0x0
	.uleb128 0xb
	.4byte	0x90
	.4byte	0x2e4
	.uleb128 0x14
	.4byte	0x107
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x90
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x128
	.4byte	0x247
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x59
	.4byte	0x323
	.uleb128 0x7
	.4byte	.LASF49
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF50
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF51
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF52
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x62
	.4byte	0x344
	.uleb128 0x7
	.4byte	.LASF53
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF54
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF55
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF56
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x6a
	.4byte	0x365
	.uleb128 0x7
	.4byte	.LASF57
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF58
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF59
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF60
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x72
	.4byte	0x37a
	.uleb128 0x7
	.4byte	.LASF61
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF62
	.sleb128 1
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0xb0
	.byte	0x8
	.byte	0x15
	.4byte	0x510
	.uleb128 0x15
	.ascii	"d\000"
	.byte	0x8
	.byte	0x16
	.4byte	0x510
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.ascii	"a\000"
	.byte	0x8
	.byte	0x17
	.4byte	0x510
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.ascii	"pc\000"
	.byte	0x8
	.byte	0x18
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.ascii	"srh\000"
	.byte	0x8
	.byte	0x19
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0x8
	.byte	0x1a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x8
	.byte	0x1b
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x15
	.ascii	"irq\000"
	.byte	0x8
	.byte	0x1c
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x15
	.ascii	"osp\000"
	.byte	0x8
	.byte	0x1d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.ascii	"xc\000"
	.byte	0x8
	.byte	0x1e
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x8
	.byte	0x1f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x8
	.byte	0x20
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x8
	.byte	0x21
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x8
	.byte	0x22
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x8
	.byte	0x23
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x8
	.byte	0x24
	.4byte	0x530
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x8
	.byte	0x25
	.4byte	0x530
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0x8
	.byte	0x26
	.4byte	0x530
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0x8
	.byte	0x27
	.4byte	0x530
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0x8
	.byte	0x28
	.4byte	0x547
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x8
	.byte	0x29
	.4byte	0x55e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x8
	.byte	0x2a
	.4byte	0x575
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x8
	.byte	0x2b
	.4byte	0x530
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x8
	.byte	0x2c
	.4byte	0x530
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x8
	.byte	0x2d
	.4byte	0x530
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x8
	.byte	0x2e
	.4byte	0x58b
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x8
	.byte	0x2f
	.4byte	0xff
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x8
	.byte	0x30
	.4byte	0x597
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x8
	.byte	0x31
	.4byte	0x59d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xb
	.4byte	0x7b
	.4byte	0x520
	.uleb128 0xc
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x16
	.byte	0x1
	.4byte	0x7b
	.4byte	0x530
	.uleb128 0x17
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x520
	.uleb128 0x18
	.byte	0x1
	.4byte	0x547
	.uleb128 0x17
	.4byte	0x7b
	.uleb128 0x17
	.4byte	0x33
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x536
	.uleb128 0x18
	.byte	0x1
	.4byte	0x55e
	.uleb128 0x17
	.4byte	0x7b
	.uleb128 0x17
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x54d
	.uleb128 0x18
	.byte	0x1
	.4byte	0x575
	.uleb128 0x17
	.4byte	0x7b
	.uleb128 0x17
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x564
	.uleb128 0x16
	.byte	0x1
	.4byte	0x69
	.4byte	0x58b
	.uleb128 0x17
	.4byte	0x69
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x57b
	.uleb128 0x19
	.byte	0x1
	.4byte	0x69
	.uleb128 0x8
	.byte	0x4
	.4byte	0x591
	.uleb128 0xb
	.4byte	0x7b
	.4byte	0x5ad
	.uleb128 0xc
	.4byte	0x107
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x9
	.byte	0x6
	.4byte	0x37a
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x9
	.byte	0x8
	.4byte	0x5c3
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5c9
	.uleb128 0x16
	.byte	0x1
	.4byte	0xa9
	.4byte	0x5d9
	.uleb128 0x17
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x9
	.byte	0x9
	.4byte	0x5e4
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5ea
	.uleb128 0x16
	.byte	0x1
	.4byte	0xb3
	.4byte	0x5fa
	.uleb128 0x17
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x9
	.byte	0xa
	.4byte	0x605
	.uleb128 0x8
	.byte	0x4
	.4byte	0x60b
	.uleb128 0x16
	.byte	0x1
	.4byte	0xbe
	.4byte	0x61b
	.uleb128 0x17
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x9
	.byte	0xc
	.4byte	0x626
	.uleb128 0x8
	.byte	0x4
	.4byte	0x62c
	.uleb128 0x18
	.byte	0x1
	.4byte	0x63d
	.uleb128 0x17
	.4byte	0xbe
	.uleb128 0x17
	.4byte	0xa9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0x9
	.byte	0xd
	.4byte	0x648
	.uleb128 0x8
	.byte	0x4
	.4byte	0x64e
	.uleb128 0x18
	.byte	0x1
	.4byte	0x65f
	.uleb128 0x17
	.4byte	0xbe
	.uleb128 0x17
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x9
	.byte	0xe
	.4byte	0x66a
	.uleb128 0x8
	.byte	0x4
	.4byte	0x670
	.uleb128 0x18
	.byte	0x1
	.4byte	0x681
	.uleb128 0x17
	.4byte	0xbe
	.uleb128 0x17
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0x9
	.byte	0x10
	.4byte	0x605
	.uleb128 0x11
	.4byte	.LASF93
	.byte	0xc
	.byte	0xa
	.byte	0x17
	.4byte	0x6d1
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0xa
	.byte	0x18
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.ascii	"end\000"
	.byte	0xa
	.byte	0x19
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.ascii	"acc\000"
	.byte	0xa
	.byte	0x1a
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0xa
	.byte	0x1b
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xa
	.byte	0x1c
	.4byte	0x68c
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0xc
	.byte	0xa
	.byte	0x1f
	.4byte	0x713
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0xa
	.byte	0x20
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0xa
	.byte	0x21
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0xa
	.byte	0x22
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0xa
	.byte	0x23
	.4byte	0x6dc
	.uleb128 0x1a
	.4byte	.LASF267
	.byte	0x1
	.byte	0xb
	.byte	0x99
	.4byte	0x767
	.uleb128 0x7
	.4byte	.LASF102
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF103
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF104
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF105
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF106
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF107
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF108
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF109
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF110
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF111
	.sleb128 9
	.byte	0x0
	.uleb128 0x1b
	.2byte	0x248
	.byte	0xb
	.byte	0xc0
	.4byte	0xb55
	.uleb128 0x15
	.ascii	"cpu\000"
	.byte	0xb
	.byte	0xc1
	.4byte	0x5ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF112
	.byte	0xb
	.byte	0xc4
	.4byte	0xb55
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0xb
	.byte	0xc7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0xb
	.byte	0xc8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0xb
	.byte	0xcb
	.4byte	0xb65
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x12
	.4byte	.LASF116
	.byte	0xb
	.byte	0xcc
	.4byte	0x713
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x12
	.4byte	.LASF117
	.byte	0xb
	.byte	0xcd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x12
	.4byte	.LASF118
	.byte	0xb
	.byte	0xd0
	.4byte	0x2fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x12
	.4byte	.LASF119
	.byte	0xb
	.byte	0xd1
	.4byte	0x2fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x12
	.4byte	.LASF120
	.byte	0xb
	.byte	0xd2
	.4byte	0x2fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x12
	.4byte	.LASF121
	.byte	0xb
	.byte	0xd3
	.4byte	0x2fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x12
	.4byte	.LASF122
	.byte	0xb
	.byte	0xd4
	.4byte	0x2fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0xb
	.byte	0xd5
	.4byte	0x2fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x12
	.4byte	.LASF124
	.byte	0xb
	.byte	0xd6
	.4byte	0x2f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0xb
	.byte	0xd7
	.4byte	0x2f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0xb
	.byte	0xd8
	.4byte	0x2f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x12
	.4byte	.LASF127
	.byte	0xb
	.byte	0xda
	.4byte	0xb75
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x12
	.4byte	.LASF128
	.byte	0xb
	.byte	0xdd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0xb
	.byte	0xde
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x12
	.4byte	.LASF130
	.byte	0xb
	.byte	0xdf
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x12
	.4byte	.LASF131
	.byte	0xb
	.byte	0xe0
	.4byte	0xb86
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x12
	.4byte	.LASF132
	.byte	0xb
	.byte	0xe1
	.4byte	0xb86
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x12
	.4byte	.LASF133
	.byte	0xb
	.byte	0xe2
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x12
	.4byte	.LASF134
	.byte	0xb
	.byte	0xe5
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x12
	.4byte	.LASF135
	.byte	0xb
	.byte	0xe6
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x12
	.4byte	.LASF136
	.byte	0xb
	.byte	0xe7
	.4byte	0x2f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x12
	.4byte	.LASF137
	.byte	0xb
	.byte	0xe8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x12
	.4byte	.LASF138
	.byte	0xb
	.byte	0xea
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x12
	.4byte	.LASF139
	.byte	0xb
	.byte	0xeb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x12
	.4byte	.LASF140
	.byte	0xb
	.byte	0xec
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x12
	.4byte	.LASF141
	.byte	0xb
	.byte	0xed
	.4byte	0xb91
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x12
	.4byte	.LASF142
	.byte	0xb
	.byte	0xee
	.4byte	0x2f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x12
	.4byte	.LASF143
	.byte	0xb
	.byte	0xf1
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x12
	.4byte	.LASF144
	.byte	0xb
	.byte	0xf2
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x12
	.4byte	.LASF145
	.byte	0xb
	.byte	0xf3
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x12
	.4byte	.LASF146
	.byte	0xb
	.byte	0xf4
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x12
	.4byte	.LASF147
	.byte	0xb
	.byte	0xf7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x12
	.4byte	.LASF148
	.byte	0xb
	.byte	0xf8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x12
	.4byte	.LASF149
	.byte	0xb
	.byte	0xf9
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x12
	.4byte	.LASF150
	.byte	0xb
	.byte	0xfa
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x12
	.4byte	.LASF151
	.byte	0xb
	.byte	0xfb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x12
	.4byte	.LASF152
	.byte	0xb
	.byte	0xfc
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x12
	.4byte	.LASF153
	.byte	0xb
	.byte	0xfd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xf
	.4byte	.LASF154
	.byte	0xb
	.2byte	0x102
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xf
	.4byte	.LASF155
	.byte	0xb
	.2byte	0x103
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xf
	.4byte	.LASF156
	.byte	0xb
	.2byte	0x106
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xf
	.4byte	.LASF157
	.byte	0xb
	.2byte	0x108
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xf
	.4byte	.LASF158
	.byte	0xb
	.2byte	0x109
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xf
	.4byte	.LASF159
	.byte	0xb
	.2byte	0x10a
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xf
	.4byte	.LASF160
	.byte	0xb
	.2byte	0x10b
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xf
	.4byte	.LASF161
	.byte	0xb
	.2byte	0x10d
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xf
	.4byte	.LASF162
	.byte	0xb
	.2byte	0x10e
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xf
	.4byte	.LASF163
	.byte	0xb
	.2byte	0x10f
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xf
	.4byte	.LASF164
	.byte	0xb
	.2byte	0x110
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xf
	.4byte	.LASF165
	.byte	0xb
	.2byte	0x111
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xf
	.4byte	.LASF166
	.byte	0xb
	.2byte	0x114
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xf
	.4byte	.LASF167
	.byte	0xb
	.2byte	0x115
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xf
	.4byte	.LASF168
	.byte	0xb
	.2byte	0x116
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xf
	.4byte	.LASF169
	.byte	0xb
	.2byte	0x117
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xf
	.4byte	.LASF170
	.byte	0xb
	.2byte	0x118
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xf
	.4byte	.LASF171
	.byte	0xb
	.2byte	0x11b
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xf
	.4byte	.LASF172
	.byte	0xb
	.2byte	0x11c
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xf
	.4byte	.LASF173
	.byte	0xb
	.2byte	0x11f
	.4byte	0xba1
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xf
	.4byte	.LASF174
	.byte	0xb
	.2byte	0x122
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xf
	.4byte	.LASF175
	.byte	0xb
	.2byte	0x123
	.4byte	0xbb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xb
	.4byte	0x128
	.4byte	0xb65
	.uleb128 0xc
	.4byte	0x107
	.byte	0x8
	.byte	0x0
	.uleb128 0xb
	.4byte	0x6d1
	.4byte	0xb75
	.uleb128 0xc
	.4byte	0x107
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb7b
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb81
	.uleb128 0x1c
	.4byte	0xa9
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb8c
	.uleb128 0x1c
	.4byte	0xbe
	.uleb128 0xb
	.4byte	0xbe
	.4byte	0xba1
	.uleb128 0xc
	.4byte	0x107
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.4byte	0xa9
	.4byte	0xbb1
	.uleb128 0xc
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0xb
	.4byte	0xa9
	.4byte	0xbc0
	.uleb128 0x1d
	.4byte	0x107
	.byte	0x0
	.uleb128 0x1e
	.2byte	0x400
	.byte	0xb
	.byte	0xbf
	.4byte	0xbdb
	.uleb128 0x1f
	.4byte	0x767
	.uleb128 0x20
	.4byte	.LASF185
	.byte	0xb
	.2byte	0x125
	.4byte	0xbdb
	.byte	0x0
	.uleb128 0xb
	.4byte	0xbe
	.4byte	0xbeb
	.uleb128 0xc
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF176
	.2byte	0x2000
	.byte	0xb
	.byte	0xbe
	.4byte	0xc71
	.uleb128 0x22
	.4byte	0xbc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF177
	.byte	0xb
	.2byte	0x128
	.4byte	0xc71
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xf
	.4byte	.LASF178
	.byte	0xb
	.2byte	0x129
	.4byte	0xc81
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xf
	.4byte	.LASF179
	.byte	0xb
	.2byte	0x12a
	.4byte	0xc91
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xf
	.4byte	.LASF180
	.byte	0xb
	.2byte	0x12b
	.4byte	0xca1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xf
	.4byte	.LASF181
	.byte	0xb
	.2byte	0x12c
	.4byte	0xcb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xf
	.4byte	.LASF182
	.byte	0xb
	.2byte	0x12d
	.4byte	0xcc1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xf
	.4byte	.LASF183
	.byte	0xb
	.2byte	0x12e
	.4byte	0xcd1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xb
	.4byte	0x5b8
	.4byte	0xc81
	.uleb128 0xc
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xb
	.4byte	0x5d9
	.4byte	0xc91
	.uleb128 0xc
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xb
	.4byte	0x5fa
	.4byte	0xca1
	.uleb128 0xc
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xb
	.4byte	0x61b
	.4byte	0xcb1
	.uleb128 0xc
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xb
	.4byte	0x63d
	.4byte	0xcc1
	.uleb128 0xc
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xb
	.4byte	0x65f
	.4byte	0xcd1
	.uleb128 0xc
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xb
	.4byte	0x681
	.4byte	0xce1
	.uleb128 0xc
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF184
	.byte	0xb
	.2byte	0x12f
	.4byte	0xbeb
	.uleb128 0x23
	.byte	0x4
	.byte	0xc
	.byte	0x47
	.4byte	0xd17
	.uleb128 0x24
	.4byte	.LASF186
	.byte	0xc
	.byte	0x48
	.4byte	0xbe
	.uleb128 0x24
	.4byte	.LASF187
	.byte	0xc
	.byte	0x49
	.4byte	0xbe
	.uleb128 0x24
	.4byte	.LASF100
	.byte	0xc
	.byte	0x4a
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF188
	.byte	0xc
	.byte	0xc
	.byte	0x45
	.4byte	0xd56
	.uleb128 0x12
	.4byte	.LASF189
	.byte	0xc
	.byte	0x46
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x22
	.4byte	0xced
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF190
	.byte	0xc
	.byte	0x4c
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF191
	.byte	0xc
	.byte	0x4d
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF192
	.byte	0xc
	.byte	0x4e
	.4byte	0xd17
	.uleb128 0x11
	.4byte	.LASF193
	.byte	0x98
	.byte	0xc
	.byte	0x50
	.4byte	0xe9c
	.uleb128 0x12
	.4byte	.LASF194
	.byte	0xc
	.byte	0x52
	.4byte	0x2fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF195
	.byte	0xc
	.byte	0x53
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF196
	.byte	0xc
	.byte	0x54
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF197
	.byte	0xc
	.byte	0x55
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF198
	.byte	0xc
	.byte	0x56
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF199
	.byte	0xc
	.byte	0x57
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF200
	.byte	0xc
	.byte	0x58
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF201
	.byte	0xc
	.byte	0x59
	.4byte	0xe9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF202
	.byte	0xc
	.byte	0x5a
	.4byte	0xeac
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.4byte	.LASF203
	.byte	0xc
	.byte	0x5b
	.4byte	0xec2
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF204
	.byte	0xc
	.byte	0x5c
	.4byte	0xec2
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0x12
	.4byte	.LASF205
	.byte	0xc
	.byte	0x5d
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF206
	.byte	0xc
	.byte	0x60
	.4byte	0xed2
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF207
	.byte	0xc
	.byte	0x61
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.4byte	.LASF208
	.byte	0xc
	.byte	0x63
	.4byte	0xb3
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.4byte	.LASF209
	.byte	0xc
	.byte	0x65
	.4byte	0x111
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0x12
	.4byte	.LASF210
	.byte	0xc
	.byte	0x68
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x91
	.uleb128 0x12
	.4byte	.LASF211
	.byte	0xc
	.byte	0x69
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x92
	.uleb128 0x12
	.4byte	.LASF212
	.byte	0xc
	.byte	0x6a
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x93
	.uleb128 0x12
	.4byte	.LASF213
	.byte	0xc
	.byte	0x6b
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF214
	.byte	0xc
	.byte	0x6c
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x95
	.byte	0x0
	.uleb128 0xb
	.4byte	0x2f6
	.4byte	0xeac
	.uleb128 0xc
	.4byte	0x107
	.byte	0x6
	.byte	0x0
	.uleb128 0xb
	.4byte	0xebc
	.4byte	0xebc
	.uleb128 0xc
	.4byte	0x107
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd56
	.uleb128 0xb
	.4byte	0xc9
	.4byte	0xed2
	.uleb128 0xc
	.4byte	0x107
	.byte	0x6
	.byte	0x0
	.uleb128 0xb
	.4byte	0xbe
	.4byte	0xee2
	.uleb128 0xc
	.4byte	0x107
	.byte	0x3
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF215
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.4byte	0xefd
	.uleb128 0x12
	.4byte	.LASF216
	.byte	0x1
	.byte	0x12
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF217
	.byte	0x1
	.byte	0x13
	.4byte	0xee2
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF268
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.4byte	0xf22
	.uleb128 0x26
	.4byte	.LASF269
	.byte	0x1
	.byte	0x28
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF270
	.byte	0x1
	.byte	0xb4
	.4byte	0xbe
	.byte	0x1
	.uleb128 0x28
	.4byte	0xf08
	.4byte	.LFB168
	.4byte	.LFE168
	.byte	0x1
	.byte	0x5d
	.4byte	0xf4c
	.uleb128 0x29
	.4byte	0xf16
	.4byte	.LLST1
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF218
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.4byte	.LFB169
	.4byte	.LFE169
	.4byte	.LLST2
	.4byte	0xfae
	.uleb128 0x2b
	.ascii	"a\000"
	.byte	0x1
	.byte	0x31
	.4byte	0xbe
	.4byte	.LLST3
	.uleb128 0x2b
	.ascii	"d\000"
	.byte	0x1
	.byte	0x31
	.4byte	0xb3
	.4byte	.LLST4
	.uleb128 0x2c
	.4byte	.LBB11
	.4byte	.LBE11
	.uleb128 0x2d
	.4byte	.LASF223
	.byte	0x1
	.byte	0x39
	.4byte	0xbe
	.4byte	.LLST5
	.uleb128 0x2e
	.4byte	0xf08
	.4byte	.LBB12
	.4byte	.LBE12
	.byte	0x1
	.byte	0x3e
	.uleb128 0x2f
	.4byte	0xf42
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF225
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.4byte	0xb3
	.4byte	.LFB170
	.4byte	.LFE170
	.4byte	.LLST6
	.4byte	0xfec
	.uleb128 0x2b
	.ascii	"a\000"
	.byte	0x1
	.byte	0x42
	.4byte	0xbe
	.4byte	.LLST7
	.uleb128 0x2c
	.4byte	.LBB14
	.4byte	.LBE14
	.uleb128 0x31
	.ascii	"d\000"
	.byte	0x1
	.byte	0x46
	.4byte	0xb8c
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF219
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.4byte	.LFB171
	.4byte	.LFE171
	.4byte	.LLST8
	.4byte	0x101e
	.uleb128 0x2b
	.ascii	"a\000"
	.byte	0x1
	.byte	0x4d
	.4byte	0xbe
	.4byte	.LLST9
	.uleb128 0x32
	.ascii	"d\000"
	.byte	0x1
	.byte	0x4d
	.4byte	0xa9
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF220
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.4byte	.LFB172
	.4byte	.LFE172
	.4byte	.LLST10
	.4byte	0x1050
	.uleb128 0x2b
	.ascii	"a\000"
	.byte	0x1
	.byte	0x55
	.4byte	0xbe
	.4byte	.LLST11
	.uleb128 0x32
	.ascii	"d\000"
	.byte	0x1
	.byte	0x55
	.4byte	0xb3
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF271
	.byte	0x1
	.byte	0xac
	.4byte	0xbe
	.4byte	.LFB175
	.4byte	.LFE175
	.4byte	.LLST12
	.uleb128 0x34
	.4byte	0xf22
	.4byte	.LFB176
	.4byte	.LFE176
	.4byte	.LLST13
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF221
	.byte	0x1
	.byte	0xe7
	.4byte	.LFB180
	.4byte	.LFE180
	.4byte	.LLST14
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF222
	.byte	0x1
	.byte	0xe1
	.4byte	.LFB179
	.4byte	.LFE179
	.4byte	.LLST15
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF272
	.byte	0x1
	.byte	0xef
	.4byte	.LFB181
	.4byte	.LFE181
	.4byte	.LLST16
	.4byte	0x110a
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.byte	0xf1
	.4byte	0xbe
	.4byte	.LLST17
	.uleb128 0x38
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x10b
	.4byte	0xb8c
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x39
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0x10f3
	.uleb128 0x3a
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x11e
	.4byte	0xbe
	.4byte	.LLST18
	.byte	0x0
	.uleb128 0x3b
	.4byte	0xf08
	.4byte	.LBB16
	.4byte	.LBE16
	.byte	0x1
	.2byte	0x150
	.uleb128 0x2f
	.4byte	0xf42
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF226
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.4byte	0xb7b
	.4byte	.LFB173
	.4byte	.LFE173
	.4byte	.LLST19
	.4byte	0x116f
	.uleb128 0x3c
	.4byte	.LASF227
	.byte	0x1
	.byte	0x5f
	.4byte	0xbe
	.4byte	.LLST20
	.uleb128 0x3c
	.4byte	.LASF228
	.byte	0x1
	.byte	0x5f
	.4byte	0xbe
	.4byte	.LLST21
	.uleb128 0x3d
	.4byte	.LASF229
	.byte	0x1
	.byte	0x61
	.4byte	0xb8c
	.uleb128 0x2d
	.4byte	.LASF230
	.byte	0x1
	.byte	0x64
	.4byte	0x2fc
	.4byte	.LLST22
	.uleb128 0x2d
	.4byte	.LASF231
	.byte	0x1
	.byte	0x65
	.4byte	0x116f
	.4byte	.LLST23
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xefd
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF232
	.byte	0x1
	.byte	0x7e
	.byte	0x1
	.4byte	0xb7b
	.4byte	.LFB174
	.4byte	.LFE174
	.4byte	.LLST24
	.4byte	0x120f
	.uleb128 0x3c
	.4byte	.LASF233
	.byte	0x1
	.byte	0x7e
	.4byte	0xbe
	.4byte	.LLST25
	.uleb128 0x3c
	.4byte	.LASF234
	.byte	0x1
	.byte	0x7e
	.4byte	0xbe
	.4byte	.LLST26
	.uleb128 0x3e
	.4byte	.LASF235
	.byte	0x1
	.byte	0x80
	.4byte	0xb8c
	.byte	0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x3e
	.4byte	.LASF236
	.byte	0x1
	.byte	0x81
	.4byte	0xb8c
	.byte	0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x3d
	.4byte	.LASF229
	.byte	0x1
	.byte	0x82
	.4byte	0xb8c
	.uleb128 0x3e
	.4byte	.LASF237
	.byte	0x1
	.byte	0x85
	.4byte	0x2fc
	.byte	0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x3d
	.4byte	.LASF238
	.byte	0x1
	.byte	0x86
	.4byte	0x2fc
	.uleb128 0x2d
	.4byte	.LASF239
	.byte	0x1
	.byte	0x87
	.4byte	0x116f
	.4byte	.LLST27
	.uleb128 0x2d
	.4byte	.LASF240
	.byte	0x1
	.byte	0x88
	.4byte	0x116f
	.4byte	.LLST28
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF241
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.4byte	0xbe
	.4byte	.LFB177
	.4byte	.LFE177
	.4byte	.LLST29
	.4byte	0x12a5
	.uleb128 0x2b
	.ascii	"a\000"
	.byte	0x1
	.byte	0xbc
	.4byte	0xbe
	.4byte	.LLST30
	.uleb128 0x3d
	.4byte	.LASF242
	.byte	0x1
	.byte	0xbe
	.4byte	0xb8c
	.uleb128 0x2d
	.4byte	.LASF233
	.byte	0x1
	.byte	0xbf
	.4byte	0xb8c
	.4byte	.LLST31
	.uleb128 0x2d
	.4byte	.LASF237
	.byte	0x1
	.byte	0xc1
	.4byte	0xb7b
	.4byte	.LLST32
	.uleb128 0x2d
	.4byte	.LASF234
	.byte	0x1
	.byte	0xc2
	.4byte	0xbe
	.4byte	.LLST33
	.uleb128 0x3f
	.4byte	0xf22
	.4byte	.LBB18
	.4byte	.LBE18
	.byte	0x1
	.byte	0xc9
	.uleb128 0x40
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x2d
	.4byte	.LASF235
	.byte	0x1
	.byte	0xce
	.4byte	0xb8c
	.4byte	.LLST34
	.uleb128 0x2d
	.4byte	.LASF236
	.byte	0x1
	.byte	0xcf
	.4byte	0xb8c
	.4byte	.LLST35
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF243
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.4byte	0xbe
	.4byte	.LFB178
	.4byte	.LFE178
	.4byte	.LLST36
	.4byte	0x12d1
	.uleb128 0x2b
	.ascii	"pc\000"
	.byte	0x1
	.byte	0xdb
	.4byte	0xbe
	.4byte	.LLST37
	.byte	0x0
	.uleb128 0x41
	.4byte	.LASF244
	.byte	0x6
	.2byte	0x12e
	.4byte	0x12dd
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2ea
	.uleb128 0xb
	.4byte	0xb7b
	.4byte	0x12f4
	.uleb128 0x14
	.4byte	0x107
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF245
	.byte	0x1
	.byte	0x15
	.4byte	0x12e3
	.byte	0x5
	.byte	0x3
	.4byte	g_bankTable
	.uleb128 0x3e
	.4byte	.LASF246
	.byte	0x1
	.byte	0x16
	.4byte	0x116f
	.byte	0x5
	.byte	0x3
	.4byte	g_cacheOwner
	.uleb128 0x3e
	.4byte	.LASF247
	.byte	0x1
	.byte	0x17
	.4byte	0xbe
	.byte	0x5
	.byte	0x3
	.4byte	g_bankEntry
	.uleb128 0x3e
	.4byte	.LASF248
	.byte	0x1
	.byte	0x18
	.4byte	0xbe
	.byte	0x5
	.byte	0x3
	.4byte	g_bankCacheCount
	.uleb128 0xb
	.4byte	0xa9
	.4byte	0x134b
	.uleb128 0x42
	.4byte	0x107
	.4byte	0x10ffff
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF249
	.byte	0x1
	.byte	0x1b
	.4byte	0x1338
	.byte	0x5
	.byte	0x3
	.4byte	g_mainProgram
	.uleb128 0xb
	.4byte	0xa9
	.4byte	0x136f
	.uleb128 0x42
	.4byte	0x107
	.4byte	0x1ffff
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF250
	.byte	0x1
	.byte	0x1c
	.4byte	0x135c
	.byte	0x5
	.byte	0x3
	.4byte	g_bios
	.uleb128 0xb
	.4byte	0xb3
	.4byte	0x1391
	.uleb128 0x14
	.4byte	0x107
	.2byte	0x7fff
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF251
	.byte	0x1
	.byte	0x1d
	.4byte	0x1380
	.byte	0x5
	.byte	0x3
	.4byte	g_vram
	.uleb128 0xb
	.4byte	0xb3
	.4byte	0x13b3
	.uleb128 0x14
	.4byte	0x107
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF252
	.byte	0x1
	.byte	0x1e
	.4byte	0x13a2
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteRam
	.uleb128 0xb
	.4byte	0xb3
	.4byte	0x13d5
	.uleb128 0x14
	.4byte	0x107
	.2byte	0x1fff
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF253
	.byte	0x1
	.byte	0x1f
	.4byte	0x13c4
	.byte	0x5
	.byte	0x3
	.4byte	g_palette
	.uleb128 0xb
	.4byte	0xa9
	.4byte	0x13f7
	.uleb128 0x14
	.4byte	0x107
	.2byte	0xffff
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF254
	.byte	0x1
	.byte	0x20
	.4byte	0x13e6
	.byte	0x5
	.byte	0x3
	.4byte	g_sram
	.uleb128 0xb
	.4byte	0xa9
	.4byte	0x1419
	.uleb128 0x14
	.4byte	0x107
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF255
	.byte	0x1
	.byte	0x21
	.4byte	0x1408
	.byte	0x5
	.byte	0x3
	.4byte	g_card
	.uleb128 0x3e
	.4byte	.LASF256
	.byte	0x1
	.byte	0x22
	.4byte	0x2fc
	.byte	0x5
	.byte	0x3
	.4byte	g_audioProgram
	.uleb128 0xb
	.4byte	0xa9
	.4byte	0x144b
	.uleb128 0xc
	.4byte	0x107
	.byte	0x7f
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF257
	.byte	0x1
	.byte	0x24
	.4byte	0x143b
	.byte	0x5
	.byte	0x3
	.4byte	g_programVector
	.uleb128 0x43
	.4byte	.LASF258
	.byte	0xd
	.byte	0x56
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF259
	.byte	0xd
	.byte	0x57
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0x1486
	.4byte	0x1486
	.uleb128 0xc
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x148c
	.uleb128 0x44
	.4byte	0x57
	.uleb128 0x45
	.4byte	.LASF260
	.byte	0x4
	.2byte	0x19c
	.4byte	0x1476
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0x1d5
	.4byte	0x14af
	.uleb128 0xc
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x45
	.4byte	.LASF261
	.byte	0x4
	.2byte	0x19f
	.4byte	0x149f
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.4byte	.LASF262
	.byte	0x6
	.2byte	0x12b
	.4byte	0x2ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.4byte	.LASF263
	.byte	0xb
	.2byte	0x149
	.4byte	0x14da
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0xce1
	.uleb128 0x45
	.4byte	.LASF264
	.byte	0xb
	.2byte	0x14d
	.4byte	0xce1
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
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x44
	.uleb128 0x35
	.byte	0x0
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
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x12b
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x14ef
	.4byte	0xf2f
	.ascii	"neoSetRomBankAddr\000"
	.4byte	0xf4c
	.ascii	"neoWriteRomBank\000"
	.4byte	0xfae
	.ascii	"neoReadCard16\000"
	.4byte	0xfec
	.ascii	"neoWriteCard8\000"
	.4byte	0x101e
	.ascii	"neoWriteCard16\000"
	.4byte	0x1050
	.ascii	"neoEvictBank\000"
	.4byte	0x1068
	.ascii	"neoEvictBank2\000"
	.4byte	0x1079
	.ascii	"neoMemoryLoadProgramVector\000"
	.4byte	0x108d
	.ascii	"neoMemoryLoadBiosVector\000"
	.4byte	0x10a1
	.ascii	"neoMemoryInit\000"
	.4byte	0x110a
	.ascii	"neoLoadBank\000"
	.4byte	0x1175
	.ascii	"neoLoadBank2\000"
	.4byte	0x120f
	.ascii	"neoBankPC\000"
	.4byte	0x12a5
	.ascii	"neoBankedRomPc\000"
	.4byte	0x14cb
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
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF42:
	.ascii	"clearColor\000"
.LASF210:
	.ascii	"globalAudioEnabled\000"
.LASF134:
	.ascii	"scanline\000"
.LASF71:
	.ascii	"checkpc\000"
.LASF75:
	.ascii	"write8\000"
.LASF222:
	.ascii	"neoMemoryLoadBiosVector\000"
.LASF161:
	.ascii	"ctrl1Reg\000"
.LASF140:
	.ascii	"spriteMask\000"
.LASF243:
	.ascii	"neoBankedRomPc\000"
.LASF163:
	.ascii	"ctrl3Reg\000"
.LASF254:
	.ascii	"g_sram\000"
.LASF80:
	.ascii	"fetch32\000"
.LASF190:
	.ascii	"audioFrame\000"
.LASF148:
	.ascii	"cpuClocksPerScanline\000"
.LASF60:
	.ascii	"OBJSIZE_64\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF182:
	.ascii	"cpuWrite32Table\000"
.LASF270:
	.ascii	"neoEvictBank2\000"
.LASF181:
	.ascii	"cpuWrite16Table\000"
.LASF12:
	.ascii	"uint32\000"
.LASF69:
	.ascii	"cycles\000"
.LASF37:
	.ascii	"GL_MODELVIEW\000"
.LASF272:
	.ascii	"neoMemoryInit\000"
.LASF255:
	.ascii	"g_card\000"
.LASF38:
	.ascii	"GL_TEXTURE\000"
.LASF250:
	.ascii	"g_bios\000"
.LASF225:
	.ascii	"neoReadCard16\000"
.LASF170:
	.ascii	"paletteRamLatch\000"
.LASF29:
	.ascii	"type\000"
.LASF175:
	.ascii	"varEnd\000"
.LASF89:
	.ascii	"TWrite8Func\000"
.LASF72:
	.ascii	"read8\000"
.LASF214:
	.ascii	"misc\000"
.LASF247:
	.ascii	"g_bankEntry\000"
.LASF61:
	.ascii	"OBJCOLOR_16\000"
.LASF76:
	.ascii	"write16\000"
.LASF199:
	.ascii	"arm7FifoSent\000"
.LASF101:
	.ascii	"TNeoADPCMBStream\000"
.LASF86:
	.ascii	"TRead8Func\000"
.LASF48:
	.ascii	"nameCount\000"
.LASF263:
	.ascii	"g_neo\000"
.LASF179:
	.ascii	"cpuRead32Table\000"
.LASF39:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF19:
	.ascii	"long int\000"
.LASF269:
	.ascii	"bankAddr\000"
.LASF78:
	.ascii	"fetch8\000"
.LASF173:
	.ascii	"keyGrid\000"
.LASF77:
	.ascii	"write32\000"
.LASF50:
	.ascii	"OBJMODE_BLENDED\000"
.LASF176:
	.ascii	"_TNeoContext\000"
.LASF81:
	.ascii	"IrqCallback\000"
.LASF92:
	.ascii	"TCheckPcFunc\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF153:
	.ascii	"romBankAddress\000"
.LASF95:
	.ascii	"step\000"
.LASF117:
	.ascii	"adpcmActive\000"
.LASF108:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF180:
	.ascii	"cpuWrite8Table\000"
.LASF221:
	.ascii	"neoMemoryLoadProgramVector\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF145:
	.ascii	"tileScaleX\000"
.LASF146:
	.ascii	"tileScaleY\000"
.LASF194:
	.ascii	"pAudioProgram0\000"
.LASF150:
	.ascii	"watchdogCounter\000"
.LASF110:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF137:
	.ascii	"vramBaseMask\000"
.LASF113:
	.ascii	"spriteCount\000"
.LASF83:
	.ascii	"UnrecognizedCallback\000"
.LASF253:
	.ascii	"g_palette\000"
.LASF127:
	.ascii	"bankTable\000"
.LASF18:
	.ascii	"char\000"
.LASF31:
	.ascii	"BgState\000"
.LASF64:
	.ascii	"unused\000"
.LASF167:
	.ascii	"screenDarkLatch\000"
.LASF66:
	.ascii	"prev_pc\000"
.LASF97:
	.ascii	"_TNeoADPCMBStream\000"
.LASF260:
	.ascii	"bgControl\000"
.LASF228:
	.ascii	"cacheIndex\000"
.LASF103:
	.ascii	"NEOROM_BIOS\000"
.LASF65:
	.ascii	"flags\000"
.LASF139:
	.ascii	"autoAnimationCounter\000"
.LASF43:
	.ascii	"textures\000"
.LASF90:
	.ascii	"TWrite16Func\000"
.LASF262:
	.ascii	"glGlobalData\000"
.LASF36:
	.ascii	"GL_POSITION\000"
.LASF147:
	.ascii	"cpuClockDivide\000"
.LASF196:
	.ascii	"audioRomSize\000"
.LASF135:
	.ascii	"frameCount\000"
.LASF229:
	.ascii	"loadOffset\000"
.LASF219:
	.ascii	"neoWriteCard8\000"
.LASF203:
	.ascii	"adpcmQueuePos7\000"
.LASF204:
	.ascii	"adpcmQueuePos9\000"
.LASF231:
	.ascii	"pCacheEntry\000"
.LASF185:
	.ascii	"fill\000"
.LASF56:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF15:
	.ascii	"false\000"
.LASF227:
	.ascii	"cacheEntryIndex\000"
.LASF87:
	.ascii	"TRead16Func\000"
.LASF51:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF193:
	.ascii	"_TNeoIPC\000"
.LASF211:
	.ascii	"audioCommand\000"
.LASF200:
	.ascii	"arm7FifoProcessed\000"
.LASF245:
	.ascii	"g_bankTable\000"
.LASF216:
	.ascii	"index\000"
.LASF121:
	.ascii	"pRam\000"
.LASF32:
	.ascii	"DynamicArray\000"
.LASF213:
	.ascii	"audioCommandPending\000"
.LASF20:
	.ascii	"long unsigned int\000"
.LASF107:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF49:
	.ascii	"OBJMODE_NORMAL\000"
.LASF206:
	.ascii	"arm9Args\000"
.LASF54:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF242:
	.ascii	"address\000"
.LASF178:
	.ascii	"cpuRead16Table\000"
.LASF159:
	.ascii	"displayControlMask\000"
.LASF85:
	.ascii	"TCycloneContext\000"
.LASF104:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF171:
	.ascii	"active\000"
.LASF142:
	.ascii	"pTileBuffer\000"
.LASF63:
	.ascii	"Cyclone\000"
.LASF120:
	.ascii	"pBios\000"
.LASF21:
	.ascii	"angle\000"
.LASF166:
	.ascii	"irqVectorLatch\000"
.LASF141:
	.ascii	"paletteDirty\000"
.LASF41:
	.ascii	"matrixMode\000"
.LASF183:
	.ascii	"cpuCheckPcTable\000"
.LASF212:
	.ascii	"audioResult\000"
.LASF46:
	.ascii	"nextBlock\000"
.LASF133:
	.ascii	"smaRand\000"
.LASF93:
	.ascii	"_TNeoADPCMStream\000"
.LASF91:
	.ascii	"TWrite32Func\000"
.LASF265:
	.ascii	"GNU C 4.4.3\000"
.LASF10:
	.ascii	"long long int\000"
.LASF35:
	.ascii	"GL_PROJECTION\000"
.LASF205:
	.ascii	"arm7Alive\000"
.LASF165:
	.ascii	"coinReg\000"
.LASF111:
	.ascii	"NEOROM_COUNT\000"
.LASF98:
	.ascii	"initOffset\000"
.LASF251:
	.ascii	"g_vram\000"
.LASF232:
	.ascii	"neoLoadBank2\000"
.LASF261:
	.ascii	"bgState\000"
.LASF26:
	.ascii	"scrollX\000"
.LASF27:
	.ascii	"scrollY\000"
.LASF162:
	.ascii	"ctrl2Reg\000"
.LASF14:
	.ascii	"double\000"
.LASF84:
	.ascii	"internal\000"
.LASF164:
	.ascii	"ctrl4Reg\000"
.LASF233:
	.ascii	"cacheEntryIndex0\000"
.LASF236:
	.ascii	"cacheEntryIndex1\000"
.LASF128:
	.ascii	"smaAddr0\000"
.LASF129:
	.ascii	"smaAddr1\000"
.LASF138:
	.ascii	"displayCounter\000"
.LASF100:
	.ascii	"frequency\000"
.LASF13:
	.ascii	"float\000"
.LASF123:
	.ascii	"pCard\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF55:
	.ascii	"OBJSHAPE_TALL\000"
.LASF197:
	.ascii	"arm9FifoSent\000"
.LASF158:
	.ascii	"displayControl\000"
.LASF249:
	.ascii	"g_mainProgram\000"
.LASF198:
	.ascii	"arm9FifoProcessed\000"
.LASF136:
	.ascii	"pVramBase\000"
.LASF160:
	.ascii	"displayCounterLoad\000"
.LASF62:
	.ascii	"OBJCOLOR_256\000"
.LASF94:
	.ascii	"offset\000"
.LASF105:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF118:
	.ascii	"pRom0\000"
.LASF119:
	.ascii	"pRom1\000"
.LASF143:
	.ascii	"tileOffsetX\000"
.LASF144:
	.ascii	"tileOffsetY\000"
.LASF268:
	.ascii	"neoSetRomBankAddr\000"
.LASF271:
	.ascii	"neoEvictBank\000"
.LASF248:
	.ascii	"g_bankCacheCount\000"
.LASF187:
	.ascii	"endAddr\000"
.LASF17:
	.ascii	"bool\000"
.LASF102:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF45:
	.ascii	"activeTexture\000"
.LASF156:
	.ascii	"vramOffset\000"
.LASF73:
	.ascii	"read16\000"
.LASF256:
	.ascii	"g_audioProgram\000"
.LASF267:
	.ascii	"_TNeoRomRegion\000"
.LASF169:
	.ascii	"sramProtectLatch\000"
.LASF264:
	.ascii	"g_neoContext\000"
.LASF184:
	.ascii	"TNeoContext\000"
.LASF230:
	.ascii	"pEntry\000"
.LASF70:
	.ascii	"membase\000"
.LASF99:
	.ascii	"freqCounter\000"
.LASF195:
	.ascii	"audioProgramSize\000"
.LASF246:
	.ascii	"g_cacheOwner\000"
.LASF52:
	.ascii	"OBJMODE_BITMAP\000"
.LASF207:
	.ascii	"arm9Return\000"
.LASF28:
	.ascii	"size\000"
.LASF126:
	.ascii	"pPalette\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF189:
	.ascii	"command\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF74:
	.ascii	"read32\000"
.LASF217:
	.ascii	"TCacheOwnerEntry\000"
.LASF257:
	.ascii	"g_programVector\000"
.LASF172:
	.ascii	"debug\000"
.LASF109:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF34:
	.ascii	"cur_size\000"
.LASF237:
	.ascii	"pEntry0\000"
.LASF238:
	.ascii	"pEntry1\000"
.LASF177:
	.ascii	"cpuRead8Table\000"
.LASF116:
	.ascii	"adpcmb\000"
.LASF125:
	.ascii	"pSpriteRam\000"
.LASF131:
	.ascii	"smaBankoffset\000"
.LASF152:
	.ascii	"fixedBank\000"
.LASF223:
	.ascii	"bank\000"
.LASF57:
	.ascii	"OBJSIZE_8\000"
.LASF68:
	.ascii	"state_flags\000"
.LASF209:
	.ascii	"adpcmaFinished\000"
.LASF155:
	.ascii	"sramProtection\000"
.LASF201:
	.ascii	"pAdpcmBuffer\000"
.LASF244:
	.ascii	"glGlob\000"
.LASF188:
	.ascii	"_TNeoAdpcaControl\000"
.LASF122:
	.ascii	"pSram\000"
.LASF241:
	.ascii	"neoBankPC\000"
.LASF4:
	.ascii	"short int\000"
.LASF174:
	.ascii	"frameCounter\000"
.LASF47:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF82:
	.ascii	"ResetCallback\000"
.LASF208:
	.ascii	"audioStreamCount\000"
.LASF16:
	.ascii	"true\000"
.LASF44:
	.ascii	"texturePtrs\000"
.LASF191:
	.ascii	"timeStamp\000"
.LASF202:
	.ascii	"adpcmControl\000"
.LASF252:
	.ascii	"g_spriteRam\000"
.LASF220:
	.ascii	"neoWriteCard16\000"
.LASF124:
	.ascii	"pVram\000"
.LASF224:
	.ascii	"bankCount\000"
.LASF58:
	.ascii	"OBJSIZE_16\000"
.LASF149:
	.ascii	"irqPending\000"
.LASF22:
	.ascii	"centerX\000"
.LASF23:
	.ascii	"centerY\000"
.LASF215:
	.ascii	"_TCacheOwnerEntry\000"
.LASF88:
	.ascii	"TRead32Func\000"
.LASF258:
	.ascii	"mosaicShadow\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF239:
	.ascii	"pCacheEntry0\000"
.LASF240:
	.ascii	"pCacheEntry1\000"
.LASF24:
	.ascii	"scaleX\000"
.LASF25:
	.ascii	"scaleY\000"
.LASF67:
	.ascii	"reserved\000"
.LASF115:
	.ascii	"adpcm\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF192:
	.ascii	"TNeoAdpcmControl\000"
.LASF40:
	.ascii	"gl_hidden_globals\000"
.LASF59:
	.ascii	"OBJSIZE_32\000"
.LASF259:
	.ascii	"mosaicShadowSub\000"
.LASF112:
	.ascii	"pVideoWriteTable\000"
.LASF151:
	.ascii	"paletteBank\000"
.LASF30:
	.ascii	"dirty\000"
.LASF130:
	.ascii	"smaBankAddr\000"
.LASF79:
	.ascii	"fetch16\000"
.LASF53:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF132:
	.ascii	"smaBankbit\000"
.LASF218:
	.ascii	"neoWriteRomBank\000"
.LASF234:
	.ascii	"cacheIndex0\000"
.LASF235:
	.ascii	"cacheIndex1\000"
.LASF106:
	.ascii	"NEOROM_AUDODATA\000"
.LASF33:
	.ascii	"data\000"
.LASF168:
	.ascii	"fixedRomLatch\000"
.LASF154:
	.ascii	"sramProtectCount\000"
.LASF114:
	.ascii	"romBankCount\000"
.LASF96:
	.ascii	"TNeoADPCMStream\000"
.LASF186:
	.ascii	"startAddr\000"
.LASF266:
	.ascii	"C:/Users/GRX/NeoDS/arm9/source/NeoMemory.c\000"
.LASF157:
	.ascii	"vramMod\000"
.LASF226:
	.ascii	"neoLoadBank\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
