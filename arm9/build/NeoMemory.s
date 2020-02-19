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
	.code 16
	.thumb_func
	.type	neoSetRomBankAddr, %function
neoSetRomBankAddr:
.LFB109:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoMemory.c"
	.loc 1 41 0
.LVL0:
	.loc 1 45 0
	ldr	r2, .L3
	mov	r3, #129
	lsl	r3, r3, #2
	add	r0, r0, r2
.LVL1:
	.loc 1 41 0
	@ lr needed for prologue
	.loc 1 45 0
	str	r0, [r7, r3]
	.loc 1 46 0
	@ sp needed for prologue
	bx	lr
.L4:
	.align	2
.L3:
	.word	-2097152
.LFE109:
	.size	neoSetRomBankAddr, .-neoSetRomBankAddr
	.align	2
	.global	neoReadCard16
	.code 16
	.thumb_func
	.type	neoReadCard16, %function
neoReadCard16:
.LFB111:
	.loc 1 67 0
	push	{lr}
.LCFI0:
.LVL2:
	.loc 1 69 0
	ldr	r3, .L10
	mov	r2, r0
	and	r2, r2, r3
	ldr	r3, .L10+4
	cmp	r2, r3
	bls	.L6
	ldr	r0, .L10+8
.LVL3:
	b	.L8
.LVL4:
.L6:
.LBB2:
	.loc 1 72 0
	mov	r2, r7
	add	r2, r2, #252
	lsl	r3, r0, #20
	ldr	r2, [r2, #88]
	lsr	r3, r3, #21
	ldrb	r2, [r2, r3]
	mov	r3, #255
	lsl	r3, r3, #8
	mov	r0, r2
.LVL5:
	orr	r0, r0, r3
.L8:
.LBE2:
	.loc 1 75 0
	@ sp needed for prologue
	pop	{pc}
.L11:
	.align	2
.L10:
	.word	16777215
	.word	8392704
	.word	65535
.LFE111:
	.size	neoReadCard16, .-neoReadCard16
	.align	2
	.global	neoWriteCard8
	.code 16
	.thumb_func
	.type	neoWriteCard8, %function
neoWriteCard8:
.LFB112:
	.loc 1 78 0
	push	{lr}
.LCFI1:
.LVL6:
	.loc 1 80 0
	ldr	r3, .L17
	mov	r2, r0
	and	r2, r2, r3
	ldr	r3, .L17+4
	cmp	r2, r3
	bhi	.L16
	lsl	r3, r0, #31
	bmi	.L16
	.loc 1 81 0
	mov	r2, r7
	add	r2, r2, #252
	lsl	r3, r0, #20
	ldr	r2, [r2, #88]
	lsr	r3, r3, #21
	strb	r1, [r2, r3]
.L16:
	.loc 1 83 0
	@ sp needed for prologue
	pop	{pc}
.L18:
	.align	2
.L17:
	.word	16777215
	.word	8392704
.LFE112:
	.size	neoWriteCard8, .-neoWriteCard8
	.align	2
	.global	neoWriteCard16
	.code 16
	.thumb_func
	.type	neoWriteCard16, %function
neoWriteCard16:
.LFB113:
	.loc 1 86 0
	push	{lr}
.LCFI2:
.LVL7:
	.loc 1 88 0
	ldr	r3, .L23
	mov	r2, r0
	and	r2, r2, r3
	ldr	r3, .L23+4
	cmp	r2, r3
	bhi	.L22
	.loc 1 89 0
	mov	r2, r7
	add	r2, r2, #252
	lsl	r3, r0, #20
	ldr	r2, [r2, #88]
	lsr	r3, r3, #21
	strb	r1, [r2, r3]
.L22:
	.loc 1 91 0
	@ sp needed for prologue
	pop	{pc}
.L24:
	.align	2
.L23:
	.word	16777215
	.word	8392704
.LFE113:
	.size	neoWriteCard16, .-neoWriteCard16
	.align	2
	.global	neoEvictBank
	.code 16
	.thumb_func
	.type	neoEvictBank, %function
neoEvictBank:
.LFB116:
	.loc 1 173 0
	push	{lr}
.LCFI3:
	.loc 1 174 0
	ldr	r0, .L29
	.loc 1 175 0
	ldr	r2, .L29+4
	.loc 1 174 0
	ldr	r3, [r0]
	.loc 1 175 0
	ldr	r2, [r2]
	.loc 1 174 0
	add	r3, r3, #1
	str	r3, [r0]
	.loc 1 175 0
	cmp	r3, r2
	bcc	.L26
	mov	r3, #0
	str	r3, [r0]
.L26:
	ldr	r0, [r0]
	.loc 1 178 0
	@ sp needed for prologue
	pop	{pc}
.L30:
	.align	2
.L29:
	.word	g_bankEntry
	.word	g_bankCacheCount
.LFE116:
	.size	neoEvictBank, .-neoEvictBank
	.align	2
	.global	neoEvictBank2
	.code 16
	.thumb_func
	.type	neoEvictBank2, %function
neoEvictBank2:
.LFB117:
	.loc 1 181 0
	push	{lr}
.LCFI4:
	.loc 1 182 0
	ldr	r0, .L35
	.loc 1 183 0
	ldr	r3, .L35+4
	.loc 1 182 0
	ldr	r2, [r0]
	.loc 1 183 0
	ldr	r3, [r3]
	.loc 1 182 0
	add	r2, r2, #1
	.loc 1 183 0
	sub	r3, r3, #1
	.loc 1 182 0
	str	r2, [r0]
	.loc 1 183 0
	cmp	r2, r3
	bcc	.L32
	mov	r3, #0
	str	r3, [r0]
.L32:
	ldr	r0, [r0]
	.loc 1 186 0
	@ sp needed for prologue
	pop	{pc}
.L36:
	.align	2
.L35:
	.word	g_bankEntry
	.word	g_bankCacheCount
.LFE117:
	.size	neoEvictBank2, .-neoEvictBank2
	.align	2
	.global	neoMemoryLoadProgramVector
	.code 16
	.thumb_func
	.type	neoMemoryLoadProgramVector, %function
neoMemoryLoadProgramVector:
.LFB121:
	.loc 1 232 0
	push	{lr}
.LCFI5:
	.loc 1 234 0
	mov	r3, r7
	add	r3, r3, #252
	.loc 1 232 0
	sub	sp, sp, #4
.LCFI6:
	.loc 1 234 0
	ldr	r0, [r3, #68]
	mov	r2, #128
	ldr	r1, .L39
	bl	memcpy
	.loc 1 236 0
	mov	r2, #130
	lsl	r2, r2, #2
	ldr	r3, [r7, r2]
	.loc 1 237 0
	add	sp, sp, #4
	.loc 1 236 0
	add	r3, r3, #1
	str	r3, [r7, r2]
	.loc 1 237 0
	@ sp needed for prologue
	pop	{pc}
.L40:
	.align	2
.L39:
	.word	g_programVector
.LFE121:
	.size	neoMemoryLoadProgramVector, .-neoMemoryLoadProgramVector
	.align	2
	.global	neoMemoryLoadBiosVector
	.code 16
	.thumb_func
	.type	neoMemoryLoadBiosVector, %function
neoMemoryLoadBiosVector:
.LFB120:
	.loc 1 226 0
	push	{lr}
.LCFI7:
	.loc 1 228 0
	mov	r3, r7
	add	r3, r3, #252
	.loc 1 226 0
	sub	sp, sp, #4
.LCFI8:
	.loc 1 228 0
	ldr	r0, [r3, #68]
	ldr	r1, [r3, #76]
	mov	r2, #128
	bl	memcpy
	.loc 1 229 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE120:
	.size	neoMemoryLoadBiosVector, .-neoMemoryLoadBiosVector
	.align	2
	.global	neoLoadBank
	.code 16
	.thumb_func
	.type	neoLoadBank, %function
neoLoadBank:
.LFB114:
	.loc 1 96 0
	push	{r4, r5, lr}
.LCFI9:
.LVL8:
	.loc 1 100 0
	mov	r2, r7
	add	r2, r2, #252
	ldr	r3, [r2, #72]
	lsl	r5, r1, #12
	add	r5, r5, r3
.LVL9:
	.loc 1 101 0
	ldr	r3, .L45
	lsl	r1, r1, #2
.LVL10:
	ldr	r3, [r3]
	.loc 1 96 0
	mov	r4, r0
	.loc 1 101 0
	add	r1, r1, r3
.LVL11:
	.loc 1 105 0
	ldr	r3, [r1]
	ldr	r0, [r2, #104]
.LVL12:
	ldr	r2, .L45+4
	lsl	r3, r3, #2
	str	r2, [r3, r0]
	.loc 1 109 0
	mov	r3, r7
	add	r3, r3, #252
	ldr	r2, [r3, #104]
	lsl	r3, r4, #2
	str	r5, [r3, r2]
	.loc 1 96 0
	sub	sp, sp, #4
.LCFI10:
	.loc 1 111 0
	str	r4, [r1]
	.loc 1 115 0
	bl	neoAudioStreamProcess
.LVL13:
	.loc 1 118 0
	mov	r3, #128
	lsl	r3, r3, #13
	lsl	r4, r4, #12
.LVL14:
	add	r4, r4, r3
	mov	r3, #128
	mov	r1, r5
	lsl	r3, r3, #5
	mov	r0, #0
	mov	r2, r4
	bl	neoSystemReadRegion
	.loc 1 122 0
	mov	r0, r5
	add	sp, sp, #4
	@ sp needed for prologue
.LVL15:
	pop	{r4, r5, pc}
.L46:
	.align	2
.L45:
	.word	g_cacheOwner
	.word	-16777216
.LFE114:
	.size	neoLoadBank, .-neoLoadBank
	.align	2
	.global	neoLoadBank2
	.code 16
	.thumb_func
	.type	neoLoadBank2, %function
neoLoadBank2:
.LFB115:
	.loc 1 127 0
	push	{r4, r5, r6, lr}
.LCFI11:
.LVL16:
	sub	sp, sp, #24
.LCFI12:
	.loc 1 127 0
	mov	r6, r0
	.loc 1 128 0
	add	r0, r1, #1
.LVL17:
	str	r0, [sp, #12]
.LVL18:
	.loc 1 133 0
	mov	r0, r7
	add	r0, r0, #252
	ldr	r3, [r0, #72]
	.loc 1 129 0
	add	r2, r6, #1
	.loc 1 133 0
	str	r3, [sp, #8]
	.loc 1 135 0
	ldr	r3, .L52
	.loc 1 136 0
	ldr	r4, [sp, #12]
	.loc 1 129 0
	mov	ip, r2
.LVL19:
	.loc 1 135 0
	ldr	r2, [r3]
	.loc 1 136 0
	lsl	r3, r4, #2
	add	r3, r2, r3
	.loc 1 138 0
	ldr	r5, [r3]
	.loc 1 136 0
	str	r3, [sp, #20]
.LVL20:
	.loc 1 138 0
	cmp	r5, ip
	bne	.L48
	.loc 1 142 0
	mov	r0, r6
	bl	neoLoadBank
.LVL21:
	b	.L50
.LVL22:
.L48:
	.loc 1 133 0
	ldr	r4, [sp, #8]
	lsl	r3, r1, #12
	add	r4, r4, r3
	str	r4, [sp, #16]
.LVL23:
	.loc 1 135 0
	lsl	r4, r1, #2
	add	r4, r2, r4
.LVL24:
	.loc 1 148 0
	ldr	r3, [r4]
	ldr	r2, [r0, #104]
	ldr	r0, .L52+4
	lsl	r3, r3, #2
	str	r0, [r3, r2]
	.loc 1 149 0
	mov	r2, r7
	add	r2, r2, #252
	ldr	r1, [r2, #104]
.LVL25:
	lsl	r3, r5, #2
	str	r0, [r3, r1]
	.loc 1 155 0
	ldr	r1, [r2, #104]
	ldr	r0, [sp, #16]
	lsl	r3, r6, #2
	str	r0, [r3, r1]
	.loc 1 156 0
	ldr	r0, [sp, #12]
	mov	r3, ip
	ldr	r1, [r2, #104]
	lsl	r2, r3, #2
	lsl	r3, r0, #12
	ldr	r0, [sp, #8]
	.loc 1 158 0
	str	r6, [r4]
	.loc 1 156 0
	add	r3, r0, r3
	str	r3, [r2, r1]
	.loc 1 159 0
	ldr	r3, [sp, #20]
	mov	r2, ip
	str	r2, [r3]
	.loc 1 166 0
	mov	r4, #128
.LVL26:
	.loc 1 163 0
	bl	neoAudioStreamProcess
.LVL27:
	.loc 1 166 0
	lsl	r4, r4, #13
	lsl	r2, r6, #12
	mov	r3, #128
	mov	r0, #0
	add	r2, r2, r4
	ldr	r1, [sp, #16]
	lsl	r3, r3, #6
	bl	neoSystemReadRegion
	.loc 1 169 0
	ldr	r0, [sp, #16]
.L50:
	.loc 1 170 0
	add	sp, sp, #24
	@ sp needed for prologue
.LVL28:
	pop	{r4, r5, r6, pc}
.L53:
	.align	2
.L52:
	.word	g_cacheOwner
	.word	-16777216
.LFE115:
	.size	neoLoadBank2, .-neoLoadBank2
	.align	2
	.global	neoBankPC
	.code 16
	.thumb_func
	.type	neoBankPC, %function
neoBankPC:
.LFB118:
	.loc 1 189 0
	push	{r4, r5, r6, lr}
.LCFI13:
.LVL29:
	.loc 1 192 0
	ldr	r3, .L61
	mov	r2, r0
	and	r2, r2, r3
	mov	r3, #129
	lsl	r3, r3, #2
	ldr	r3, [r7, r3]
	.loc 1 190 0
	mov	r1, r7
	.loc 1 192 0
	add	r2, r2, r3
	lsl	r2, r2, #9
	.loc 1 193 0
	add	r1, r1, #252
	.loc 1 192 0
	lsr	r4, r2, #21
.LVL30:
	.loc 1 193 0
	ldr	r2, [r1, #104]
	lsl	r3, r4, #2
	ldr	r5, [r3, r2]
.LVL31:
	.loc 1 198 0
	ldr	r3, .L61+4
	.loc 1 189 0
	mov	r6, r0
	.loc 1 194 0
	ldr	r2, [r1, #72]
	.loc 1 198 0
	cmp	r5, r3
	beq	.L55
.LVL32:
	.loc 1 194 0
	sub	r3, r5, r2
	lsr	r1, r3, #12
.LVL33:
	.loc 1 198 0
	ldr	r3, .L61+8
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r1, r3
	bne	.L57
.L55:
	.loc 1 201 0
	bl	neoEvictBank2
.LVL34:
	mov	r1, r0
.LVL35:
	.loc 1 204 0
	mov	r0, r4
	bl	neoLoadBank2
.LVL36:
	mov	r5, r0
	b	.L58
.LVL37:
.L57:
.LBB3:
	.loc 1 209 0
	ldr	r3, .L61+12
	.loc 1 206 0
	add	r1, r1, #1
.LVL38:
	.loc 1 209 0
	ldr	r2, [r3]
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	.loc 1 207 0
	add	r0, r4, #1
.LVL39:
	.loc 1 209 0
	cmp	r3, r0
	beq	.L58
	.loc 1 213 0
	bl	neoLoadBank
.LVL40:
.L58:
	ldr	r3, .L61+16
	mov	r0, r6
.LVL41:
	and	r0, r0, r3
	sub	r0, r5, r0
.LBE3:
	.loc 1 217 0
	@ sp needed for prologue
.LVL42:
.LVL43:
.LVL44:
	pop	{r4, r5, r6, pc}
.L62:
	.align	2
.L61:
	.word	16777215
	.word	-16777216
	.word	g_bankCacheCount
	.word	g_cacheOwner
	.word	-4096
.LFE118:
	.size	neoBankPC, .-neoBankPC
	.align	2
	.global	neoBankedRomPc
	.code 16
	.thumb_func
	.type	neoBankedRomPc, %function
neoBankedRomPc:
.LFB119:
	.loc 1 220 0
	push	{r4, r5, lr}
.LCFI14:
.LVL45:
	sub	sp, sp, #4
.LCFI15:
	.loc 1 221 0
	mov	r5, r7
	.loc 1 220 0
	mov	r4, r0
	.loc 1 221 0
	bl	neoBankPC
.LVL46:
	str	r0, [r5, #96]
	ldr	r3, [r7, #96]
	.loc 1 223 0
	add	sp, sp, #4
	.loc 1 221 0
	add	r4, r4, r3
.LVL47:
	.loc 1 223 0
	mov	r0, r4
	@ sp needed for prologue
	pop	{r4, r5, pc}
.LFE119:
	.size	neoBankedRomPc, .-neoBankedRomPc
	.align	2
	.global	neoWriteRomBank
	.code 16
	.thumb_func
	.type	neoWriteRomBank, %function
neoWriteRomBank:
.LFB110:
	.loc 1 50 0
	push	{r4, lr}
.LCFI16:
.LVL48:
	.loc 1 51 0
	mov	r3, r7
	add	r3, r3, #216
	.loc 1 50 0
	mov	r2, r0
	.loc 1 51 0
	ldr	r0, [r3]
.LVL49:
	mov	r4, r7
	cmp	r0, #0
	beq	.L71
	.loc 1 56 0
	ldr	r3, .L72
	and	r2, r2, r3
.LVL50:
	ldr	r3, .L72+4
	cmp	r2, r3
	bls	.L71
.LBB7:
	.loc 1 57 0
	mov	r3, #7
	and	r1, r1, r3
.LVL51:
	.loc 1 58 0
	cmp	r1, r0
	bcc	.L69
	mov	r1, #0
.L69:
.LBB8:
.LBB9:
	.loc 1 45 0
	lsl	r3, r1, #20
	ldr	r1, .L72+8
.LVL52:
	mov	r2, #129
	lsl	r2, r2, #2
	add	r3, r3, r1
	str	r3, [r4, r2]
.LVL53:
.L71:
.LBE9:
.LBE8:
.LBE7:
	.loc 1 64 0
	@ sp needed for prologue
	pop	{r4, pc}
.L73:
	.align	2
.L72:
	.word	16777215
	.word	3145711
	.word	-2097152
.LFE110:
	.size	neoWriteRomBank, .-neoWriteRomBank
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC20:
	.ascii	"No rom banks...\000"
	.align	2
.LC28:
	.ascii	"Allocate %d bank cache entries\000"
	.align	2
.LC30:
	.ascii	"Loading banks into main ram...\000"
	.align	2
.LC32:
	.ascii	" -> no banking needed\000"
	.text
	.align	2
	.global	neoMemoryInit
	.code 16
	.thumb_func
	.type	neoMemoryInit, %function
neoMemoryInit:
.LFB122:
	.loc 1 240 0
	push	{r4, r5, r6, lr}
.LCFI17:
	.loc 1 248 0
	ldr	r2, .L106
	.loc 1 247 0
	mov	r1, r7
	add	r1, r1, #252
	ldr	r3, .L106+4
	.loc 1 248 0
	str	r2, [r1, #76]
	.loc 1 249 0
	mov	r2, #128
	lsl	r2, r2, #13
	.loc 1 247 0
	str	r3, [r1, #68]
	.loc 1 249 0
	add	r3, r3, r2
	str	r3, [r1, #80]
	.loc 1 250 0
	ldr	r3, .L106+8
	.loc 1 240 0
	sub	sp, sp, #8
.LCFI18:
	.loc 1 250 0
	str	r3, [r1, #84]
	.loc 1 251 0
	ldr	r3, .L106+12
	.loc 1 259 0
	mov	r0, r7
	.loc 1 251 0
	str	r3, [r1, #88]
	.loc 1 252 0
	ldr	r3, .L106+16
	str	r3, [r1, #92]
	.loc 1 253 0
	ldr	r3, .L106+20
	str	r3, [r1, #96]
	.loc 1 254 0
	ldr	r3, .L106+24
	str	r3, [r1, #100]
	.loc 1 256 0
	ldr	r3, .L106+28
	str	r3, [r1, #104]
	.loc 1 259 0
	mov	r1, #0
.L75:
	mov	r3, r0
	add	r3, r3, #252
	ldr	r2, [r3, #104]
	ldr	r3, .L106+32
	str	r3, [r2, r1]
	.loc 1 258 0
	mov	r3, #128
	.loc 1 259 0
	add	r1, r1, #4
	.loc 1 258 0
	lsl	r3, r3, #6
	cmp	r1, r3
	bne	.L75
	mov	r1, #0
.LVL54:
.L77:
	.loc 1 263 0
	mov	r3, r7
	add	r3, r3, #252
	ldr	r2, [r3, #80]
	mov	r3, #0
	strb	r3, [r2, r1]
	.loc 1 262 0
	mov	r3, #128
	add	r1, r1, #1
	lsl	r3, r3, #9
	cmp	r1, r3
	bne	.L77
	.loc 1 267 0
	mov	r0, #2
	bl	neoSystemRegionSize
.LVL55:
	mov	r6, r0
.LVL56:
	.loc 1 268 0
	bl	systemRamAlloc
	.loc 1 269 0
	mov	r4, #128
	.loc 1 268 0
	ldr	r5, .L106+36
	mov	r1, r0
	.loc 1 269 0
	lsl	r4, r4, #15
	.loc 1 268 0
	str	r0, [r5]
	.loc 1 269 0
	orr	r1, r1, r4
	mov	r0, #2
	mov	r2, r6
	bl	neoSystemLoadRegion
	.loc 1 270 0
	ldr	r3, .L106+40
	.loc 1 271 0
	ldr	r2, .L106+40
	.loc 1 270 0
	str	r6, [r3, #4]
	.loc 1 271 0
	ldr	r3, [r5]
	.loc 1 272 0
	mov	r0, #4
	.loc 1 271 0
	orr	r3, r3, r4
	str	r3, [r2]
	.loc 1 272 0
	bl	neoSystemRegionSize
	ldr	r3, .L106+40
	str	r0, [r3, #8]
	.loc 1 274 0
	mov	r3, r7
	add	r3, r3, #216
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L79
	.loc 1 275 0
	ldr	r0, .L106+44
	bl	guiConsoleLog
	ldr	r6, .L106+48
.LVL57:
	mov	r2, r7
	ldr	r5, .L106+52
	ldr	r4, .L106+56
	ldr	r0, .L106+60
	mov	r1, #32
.LVL58:
	add	r2, r2, #128
.L81:
	.loc 1 277 0
	mov	r3, #128
	lsl	r3, r3, #3
	add	r3, r3, r2
	str	r6, [r3]
	.loc 1 278 0
	mov	r3, #128
	lsl	r3, r3, #4
	add	r3, r3, r2
	str	r5, [r3]
	.loc 1 279 0
	mov	r3, #192
	lsl	r3, r3, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 280 0
	mov	r3, #224
	lsl	r3, r3, #5
	add	r3, r3, r2
	.loc 1 276 0
	add	r1, r1, #1
	.loc 1 280 0
	str	r0, [r3]
	.loc 1 276 0
	add	r2, r2, #4
	cmp	r1, #48
	bne	.L81
	.loc 1 282 0
	ldr	r3, .L106+64
	mov	r2, #0
	str	r2, [r3]
	.loc 1 283 0
	mov	r3, r7
	add	r3, r3, #252
	str	r2, [r3, #72]
	.loc 1 284 0
	ldr	r3, .L106+68
	str	r2, [r3]
	b	.L83
.LVL59:
.L79:
.LBB13:
	.loc 1 286 0
	lsl	r3, r3, #20
	lsr	r6, r3, #12
.LVL60:
	b	.L84
.L85:
	.loc 1 288 0
	bl	systemGetRamFree
	lsl	r3, r6, #10
	add	r3, r3, r6
	lsl	r3, r3, #2
	cmp	r0, r3
	bcs	.L86
	.loc 1 291 0
	lsr	r6, r6, #1
.L84:
	.loc 1 287 0
	cmp	r6, #63
	bhi	.L85
.L86:
	.loc 1 293 0
	mov	r1, r6
	ldr	r0, .L106+72
	bl	guiConsoleLogf
	.loc 1 294 0
	ldr	r2, .L106+64
	.loc 1 295 0
	lsl	r3, r6, #12
	.loc 1 294 0
	str	r6, [r2]
	.loc 1 295 0
	mov	r0, r3
	.loc 1 294 0
	str	r2, [sp]
	.loc 1 295 0
	str	r3, [sp, #4]
	mov	r4, r7
	bl	systemRamAlloc
	add	r4, r4, #252
	str	r0, [r4, #72]
	.loc 1 296 0
	lsl	r0, r6, #2
	bl	systemRamAlloc
	.loc 1 298 0
	ldr	r2, [sp]
	.loc 1 296 0
	ldr	r3, .L106+68
	.loc 1 298 0
	ldr	r5, [r2]
	.loc 1 299 0
	ldr	r4, .L106+28
	mov	r6, r7
.LVL61:
	mov	r1, #0
.LVL62:
	.loc 1 296 0
	str	r0, [r3]
	b	.L88
.L89:
	.loc 1 299 0
	mov	r3, r6
	add	r3, r3, #252
	ldr	r3, [r3, #72]
	lsl	r2, r1, #12
	add	r3, r3, r2
	.loc 1 300 0
	stmia	r0!, {r1}
	.loc 1 299 0
	stmia	r4!, {r3}
	.loc 1 298 0
	add	r1, r1, #1
.L88:
	cmp	r1, r5
	bne	.L89
	.loc 1 303 0
	ldr	r0, .L106+76
	bl	guiConsoleLogf
.LVL63:
	.loc 1 304 0
	mov	r3, r7
	add	r3, r3, #252
	ldr	r1, [r3, #72]
	ldr	r3, .L106+64
	mov	r2, #128
	ldr	r3, [r3]
	lsl	r2, r2, #13
	lsl	r3, r3, #12
	mov	r0, #0
	bl	neoSystemLoadRegionEx
	.loc 1 306 0
	mov	r3, r7
	add	r3, r3, #216
	ldr	r3, [r3]
	ldr	r2, [sp, #4]
	lsl	r3, r3, #20
	cmp	r2, r3
	bne	.L91
	.loc 1 307 0
	ldr	r0, .L106+80
	bl	guiConsoleLogf
	ldr	r6, .L106+84
	mov	r2, r7
	ldr	r5, .L106+88
	ldr	r4, .L106+92
	ldr	r0, .L106+96
	mov	r1, #32
.LVL64:
	add	r2, r2, #128
.L93:
	.loc 1 309 0
	mov	r3, #128
	lsl	r3, r3, #3
	add	r3, r3, r2
	str	r6, [r3]
	.loc 1 310 0
	mov	r3, #128
	lsl	r3, r3, #4
	add	r3, r3, r2
	str	r5, [r3]
	.loc 1 311 0
	mov	r3, #192
	lsl	r3, r3, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 312 0
	mov	r3, #224
	lsl	r3, r3, #5
	add	r3, r3, r2
	.loc 1 308 0
	add	r1, r1, #1
	.loc 1 312 0
	str	r0, [r3]
	.loc 1 308 0
	add	r2, r2, #4
	cmp	r1, #48
	beq	.L83
	b	.L93
.LVL65:
.L91:
	mov	r2, r7
	ldr	r6, .L106+100
	ldr	r5, .L106+104
	ldr	r4, .L106+108
	ldr	r0, .L106+112
	mov	r1, #32
.LVL66:
	add	r2, r2, #128
.L94:
	.loc 1 316 0
	mov	r3, #128
	lsl	r3, r3, #3
	add	r3, r3, r2
	str	r6, [r3]
	.loc 1 317 0
	mov	r3, #128
	lsl	r3, r3, #4
	add	r3, r3, r2
	str	r5, [r3]
	.loc 1 318 0
	mov	r3, #192
	lsl	r3, r3, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 319 0
	mov	r3, #224
	lsl	r3, r3, #5
	add	r3, r3, r2
	.loc 1 315 0
	add	r1, r1, #1
	.loc 1 319 0
	str	r0, [r3]
	.loc 1 315 0
	add	r2, r2, #4
	cmp	r1, #48
	bne	.L94
.LVL67:
.L83:
.LBE13:
	.loc 1 324 0
	mov	r3, r7
	add	r3, r3, #252
	mov	r2, #128
	ldr	r1, [r3, #68]
.LVL68:
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
	mov	r3, r7
	add	r3, r3, #252
	ldr	r1, [r3, #68]
	mov	r2, #128
	ldr	r0, .L106+116
	bl	memcpy
	.loc 1 327 0
	bl	neoMemoryLoadBiosVector
	.loc 1 335 0
	mov	r3, r7
	add	r3, r3, #216
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L95
.LBB14:
.LBB15:
	.loc 1 45 0
	mov	r3, #129
	ldr	r2, .L106+120
	lsl	r3, r3, #2
	str	r2, [r7, r3]
.L95:
.LBE15:
.LBE14:
	.loc 1 342 0
	bl	guiConsoleDump
	.loc 1 343 0
	add	sp, sp, #8
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L107:
	.align	2
.L106:
	.word	g_bios
	.word	g_mainProgram
	.word	g_sram
	.word	g_card
	.word	g_vram
	.word	g_spriteRam
	.word	g_palette
	.word	g_bankTable
	.word	-16777216
	.word	g_audioProgram
	.word	41939968
	.word	.LC20
	.word	neoReadRom08
	.word	neoReadRom016
	.word	neoReadRom032
	.word	neoRom0Pc
	.word	g_bankCacheCount
	.word	g_cacheOwner
	.word	.LC28
	.word	.LC30
	.word	.LC32
	.word	neoReadRom18
	.word	neoReadRom116
	.word	neoReadRom132
	.word	neoRom1Pc
	.word	neoReadBankedRom8
	.word	neoReadBankedRom16
	.word	neoReadBankedRom32
	.word	neoBankedRomPc
	.word	g_programVector
	.word	-2097152
.LFE122:
	.size	neoMemoryInit, .-neoMemoryInit
	.bss
	.align	2
g_bankCacheCount:
	.space	4
	.align	2
g_bankEntry:
	.space	4
	.align	2
g_bankTable:
	.space	8192
	.align	2
g_cacheOwner:
	.space	4
	.align	5
g_mainProgram:
	.space	1114112
	.align	5
g_bios:
	.space	131072
	.align	5
g_vram:
	.space	65536
	.align	5
g_spriteRam:
	.space	4096
	.align	5
g_palette:
	.space	16384
	.align	5
g_sram:
	.space	65536
	.align	5
g_card:
	.space	2048
	.align	2
g_audioProgram:
	.space	4
	.align	5
g_programVector:
	.space	128
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
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI0-.LFB111
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI1-.LFB112
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.byte	0x4
	.4byte	.LCFI2-.LFB113
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.byte	0x4
	.4byte	.LCFI3-.LFB116
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.byte	0x4
	.4byte	.LCFI4-.LFB117
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.byte	0x4
	.4byte	.LCFI5-.LFB121
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.byte	0x4
	.4byte	.LCFI7-.LFB120
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.byte	0x4
	.4byte	.LCFI9-.LFB114
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.byte	0x4
	.4byte	.LCFI11-.LFB115
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
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.byte	0x4
	.4byte	.LCFI13-.LFB118
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
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.byte	0x4
	.4byte	.LCFI14-.LFB119
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x4
	.4byte	.LCFI16-.LFB110
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.byte	0x4
	.4byte	.LCFI17-.LFB122
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
	.4byte	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE26:
	.file 2 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 5 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.file 6 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h"
	.file 8 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h"
	.file 9 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h"
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
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE111-.Ltext0
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
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB112-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB113-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB116-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB117-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB121-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB120-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB114-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB115-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB118-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LFB119-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LFB110-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LFB122-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x10d4
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
	.byte	0x3
	.byte	0x2e
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x39
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x3a
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x53
	.4byte	0x6d
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
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
	.byte	0x2
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
	.byte	0x2
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x2
	.byte	0x60
	.4byte	0x50
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x2
	.byte	0x61
	.4byte	0x74
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x2
	.byte	0x65
	.4byte	0x3e
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x2
	.byte	0x66
	.4byte	0x62
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf7
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x1
	.byte	0x8
	.uleb128 0x8
	.4byte	0x128
	.byte	0x1
	.byte	0x4
	.byte	0x9b
	.uleb128 0x9
	.4byte	.LASF18
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF19
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF20
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF21
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0xa0
	.4byte	0x107
	.uleb128 0xa
	.4byte	0x1ab
	.2byte	0x2018
	.byte	0x4
	.2byte	0x119
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x11a
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x11d
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x120
	.4byte	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x121
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x122
	.4byte	0x1bc
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x123
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x124
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.byte	0x0
	.uleb128 0xc
	.4byte	0x1bc
	.4byte	0xa2
	.uleb128 0xd
	.4byte	0xf9
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa2
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x126
	.4byte	0x133
	.uleb128 0xf
	.byte	0x4
	.uleb128 0x10
	.4byte	0x366
	.4byte	.LASF60
	.byte	0xb0
	.byte	0x8
	.byte	0x15
	.uleb128 0x11
	.ascii	"d\000"
	.byte	0x8
	.byte	0x16
	.4byte	0x366
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.ascii	"a\000"
	.byte	0x8
	.byte	0x17
	.4byte	0x366
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.ascii	"pc\000"
	.byte	0x8
	.byte	0x18
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.ascii	"srh\000"
	.byte	0x8
	.byte	0x19
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x8
	.byte	0x1a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x8
	.byte	0x1b
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x11
	.ascii	"irq\000"
	.byte	0x8
	.byte	0x1c
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x11
	.ascii	"osp\000"
	.byte	0x8
	.byte	0x1d
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.ascii	"xc\000"
	.byte	0x8
	.byte	0x1e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x8
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x8
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x8
	.byte	0x21
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x8
	.byte	0x22
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x8
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x8
	.byte	0x24
	.4byte	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x8
	.byte	0x25
	.4byte	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x8
	.byte	0x26
	.4byte	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x8
	.byte	0x27
	.4byte	0x386
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x8
	.byte	0x28
	.4byte	0x39d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x8
	.byte	0x29
	.4byte	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x8
	.byte	0x2a
	.4byte	0x3cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x8
	.byte	0x2b
	.4byte	0x386
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x8
	.byte	0x2c
	.4byte	0x386
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x8
	.byte	0x2d
	.4byte	0x386
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x8
	.byte	0x2e
	.4byte	0x3e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x8
	.byte	0x2f
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x8
	.byte	0x30
	.4byte	0x3ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x8
	.byte	0x31
	.4byte	0x3f3
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xc
	.4byte	0x376
	.4byte	0x9b
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x7
	.byte	0x0
	.uleb128 0x14
	.4byte	0x386
	.byte	0x1
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x376
	.uleb128 0x16
	.4byte	0x39d
	.byte	0x1
	.uleb128 0x15
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x37
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x38c
	.uleb128 0x16
	.4byte	0x3b4
	.byte	0x1
	.uleb128 0x15
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3a3
	.uleb128 0x16
	.4byte	0x3cb
	.byte	0x1
	.uleb128 0x15
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ba
	.uleb128 0x14
	.4byte	0x3e1
	.byte	0x1
	.4byte	0x94
	.uleb128 0x15
	.4byte	0x94
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3d1
	.uleb128 0x17
	.byte	0x1
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e7
	.uleb128 0xc
	.4byte	0x403
	.4byte	0x9b
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x7
	.byte	0x6
	.4byte	0x1d0
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x7
	.byte	0x8
	.4byte	0x419
	.uleb128 0x6
	.byte	0x4
	.4byte	0x41f
	.uleb128 0x14
	.4byte	0x42f
	.byte	0x1
	.4byte	0xbb
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x7
	.byte	0x9
	.4byte	0x43a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x440
	.uleb128 0x14
	.4byte	0x450
	.byte	0x1
	.4byte	0xc5
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x7
	.byte	0xa
	.4byte	0x45b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x461
	.uleb128 0x14
	.4byte	0x471
	.byte	0x1
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x7
	.byte	0xc
	.4byte	0x47c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x482
	.uleb128 0x16
	.4byte	0x493
	.byte	0x1
	.uleb128 0x15
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xbb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x7
	.byte	0xd
	.4byte	0x49e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4a4
	.uleb128 0x16
	.4byte	0x4b5
	.byte	0x1
	.uleb128 0x15
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xc5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x7
	.byte	0xe
	.4byte	0x4c0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c6
	.uleb128 0x16
	.4byte	0x4d7
	.byte	0x1
	.uleb128 0x15
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x7
	.byte	0x10
	.4byte	0x45b
	.uleb128 0x10
	.4byte	0x527
	.4byte	.LASF61
	.byte	0xc
	.byte	0x9
	.byte	0x17
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x9
	.byte	0x18
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.ascii	"end\000"
	.byte	0x9
	.byte	0x19
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.ascii	"acc\000"
	.byte	0x9
	.byte	0x1a
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x9
	.byte	0x1b
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x9
	.byte	0x1c
	.4byte	0x4e2
	.uleb128 0x10
	.4byte	0x569
	.4byte	.LASF65
	.byte	0xc
	.byte	0x9
	.byte	0x1f
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x9
	.byte	0x20
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x9
	.byte	0x21
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x9
	.byte	0x22
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x9
	.byte	0x23
	.4byte	0x532
	.uleb128 0x18
	.4byte	0x962
	.2byte	0x248
	.byte	0x6
	.byte	0xc0
	.uleb128 0x11
	.ascii	"cpu\000"
	.byte	0x6
	.byte	0xc1
	.4byte	0x403
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x6
	.byte	0xc4
	.4byte	0x962
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x6
	.byte	0xc7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x6
	.byte	0xc8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0x6
	.byte	0xcb
	.4byte	0x972
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0x6
	.byte	0xcc
	.4byte	0x569
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0x6
	.byte	0xcd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x6
	.byte	0xd0
	.4byte	0x982
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x6
	.byte	0xd1
	.4byte	0x982
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x6
	.byte	0xd2
	.4byte	0x982
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x6
	.byte	0xd3
	.4byte	0x982
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x6
	.byte	0xd4
	.4byte	0x982
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x6
	.byte	0xd5
	.4byte	0x982
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x6
	.byte	0xd6
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x6
	.byte	0xd7
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x6
	.byte	0xd8
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x6
	.byte	0xda
	.4byte	0x98e
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x6
	.byte	0xdd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x6
	.byte	0xde
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0x6
	.byte	0xdf
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x12
	.4byte	.LASF89
	.byte	0x6
	.byte	0xe0
	.4byte	0x99f
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe1
	.4byte	0x99f
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x12
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe2
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x12
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe5
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x6
	.byte	0xe6
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x6
	.byte	0xe7
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x6
	.byte	0xe8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x6
	.byte	0xea
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x6
	.byte	0xeb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x6
	.byte	0xec
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x6
	.byte	0xed
	.4byte	0x9aa
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x6
	.byte	0xee
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0x6
	.byte	0xf1
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x6
	.byte	0xf2
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x12
	.4byte	.LASF103
	.byte	0x6
	.byte	0xf3
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x12
	.4byte	.LASF104
	.byte	0x6
	.byte	0xf4
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x12
	.4byte	.LASF105
	.byte	0x6
	.byte	0xf7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x12
	.4byte	.LASF106
	.byte	0x6
	.byte	0xf8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0x6
	.byte	0xf9
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x6
	.byte	0xfa
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x6
	.byte	0xfb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0x6
	.byte	0xfc
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x12
	.4byte	.LASF111
	.byte	0x6
	.byte	0xfd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x102
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x103
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x106
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x108
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x109
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x10a
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x10b
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x10d
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x10e
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x10f
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x110
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x111
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x6
	.2byte	0x114
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x6
	.2byte	0x115
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x6
	.2byte	0x116
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x6
	.2byte	0x117
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x6
	.2byte	0x118
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x6
	.2byte	0x11b
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x6
	.2byte	0x11c
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x6
	.2byte	0x11f
	.4byte	0x9ba
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x6
	.2byte	0x122
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x6
	.2byte	0x123
	.4byte	0x9ca
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xc
	.4byte	0x972
	.4byte	0x1ce
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x8
	.byte	0x0
	.uleb128 0xc
	.4byte	0x982
	.4byte	0x527
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x6
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x994
	.uleb128 0x6
	.byte	0x4
	.4byte	0x99a
	.uleb128 0x19
	.4byte	0xbb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9a5
	.uleb128 0x19
	.4byte	0xd0
	.uleb128 0xc
	.4byte	0x9ba
	.4byte	0xd0
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9ca
	.4byte	0xbb
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9d9
	.4byte	0xbb
	.uleb128 0x1a
	.4byte	0xf9
	.byte	0x0
	.uleb128 0x1b
	.4byte	0x9f4
	.2byte	0x400
	.byte	0x6
	.byte	0xbf
	.uleb128 0x1c
	.4byte	0x574
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0x6
	.2byte	0x125
	.4byte	0x9f4
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa04
	.4byte	0xd0
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0x1e
	.4byte	0xa8a
	.4byte	.LASF135
	.2byte	0x2000
	.byte	0x6
	.byte	0xbe
	.uleb128 0x1f
	.4byte	0x9d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x6
	.2byte	0x128
	.4byte	0xa8a
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x6
	.2byte	0x129
	.4byte	0xa9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x6
	.2byte	0x12a
	.4byte	0xaaa
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x6
	.2byte	0x12b
	.4byte	0xaba
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x6
	.2byte	0x12c
	.4byte	0xaca
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x6
	.2byte	0x12d
	.4byte	0xada
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x6
	.2byte	0x12e
	.4byte	0xaea
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa9a
	.4byte	0x40e
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xaaa
	.4byte	0x42f
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xaba
	.4byte	0x450
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xaca
	.4byte	0x471
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xada
	.4byte	0x493
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xaea
	.4byte	0x4b5
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xafa
	.4byte	0x4d7
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF143
	.byte	0x6
	.2byte	0x12f
	.4byte	0xa04
	.uleb128 0x10
	.4byte	0xb21
	.4byte	.LASF144
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF145
	.byte	0x1
	.byte	0x12
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0x1
	.byte	0x13
	.4byte	0xb06
	.uleb128 0x20
	.4byte	0xb46
	.byte	0x1
	.4byte	.LASF147
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF149
	.byte	0x1
	.byte	0x28
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x22
	.4byte	0xb63
	.4byte	0xb2c
	.4byte	.LFB109
	.4byte	.LFE109
	.byte	0x1
	.byte	0x5d
	.uleb128 0x23
	.4byte	0xb3a
	.4byte	.LLST1
	.byte	0x0
	.uleb128 0x24
	.4byte	0xba1
	.byte	0x1
	.4byte	.LASF148
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.4byte	0xc5
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST2
	.uleb128 0x25
	.ascii	"a\000"
	.byte	0x1
	.byte	0x42
	.4byte	0xd0
	.4byte	.LLST3
	.uleb128 0x26
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x27
	.ascii	"d\000"
	.byte	0x1
	.byte	0x46
	.4byte	0x9a5
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	0xbd1
	.byte	0x1
	.4byte	.LASF150
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST4
	.uleb128 0x29
	.ascii	"a\000"
	.byte	0x1
	.byte	0x4d
	.4byte	0xd0
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.ascii	"d\000"
	.byte	0x1
	.byte	0x4d
	.4byte	0xbb
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x28
	.4byte	0xc01
	.byte	0x1
	.4byte	.LASF151
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST5
	.uleb128 0x29
	.ascii	"a\000"
	.byte	0x1
	.byte	0x55
	.4byte	0xd0
	.byte	0x1
	.byte	0x50
	.uleb128 0x29
	.ascii	"d\000"
	.byte	0x1
	.byte	0x55
	.4byte	0xc5
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF152
	.byte	0x1
	.byte	0xad
	.4byte	0xd0
	.4byte	.LFB116
	.4byte	.LFE116
	.4byte	.LLST6
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF153
	.byte	0x1
	.byte	0xb5
	.4byte	0xd0
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LLST7
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF154
	.byte	0x1
	.byte	0xe8
	.4byte	.LFB121
	.4byte	.LFE121
	.4byte	.LLST8
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF155
	.byte	0x1
	.byte	0xe2
	.4byte	.LFB120
	.4byte	.LFE120
	.4byte	.LLST9
	.uleb128 0x24
	.4byte	0xcbe
	.byte	0x1
	.4byte	.LASF156
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.4byte	0x994
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LLST10
	.uleb128 0x2c
	.4byte	.LASF157
	.byte	0x1
	.byte	0x5f
	.4byte	0xd0
	.4byte	.LLST11
	.uleb128 0x2c
	.4byte	.LASF158
	.byte	0x1
	.byte	0x5f
	.4byte	0xd0
	.4byte	.LLST12
	.uleb128 0x2d
	.4byte	.LASF159
	.byte	0x1
	.byte	0x61
	.4byte	0x9a5
	.uleb128 0x2e
	.4byte	.LASF160
	.byte	0x1
	.byte	0x64
	.4byte	0x982
	.4byte	.LLST13
	.uleb128 0x2e
	.4byte	.LASF161
	.byte	0x1
	.byte	0x65
	.4byte	0xcbe
	.4byte	.LLST14
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb21
	.uleb128 0x24
	.4byte	0xd5e
	.byte	0x1
	.4byte	.LASF162
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.4byte	0x994
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LLST15
	.uleb128 0x2c
	.4byte	.LASF163
	.byte	0x1
	.byte	0x7e
	.4byte	0xd0
	.4byte	.LLST16
	.uleb128 0x2c
	.4byte	.LASF164
	.byte	0x1
	.byte	0x7e
	.4byte	0xd0
	.4byte	.LLST17
	.uleb128 0x2f
	.4byte	.LASF165
	.byte	0x1
	.byte	0x80
	.4byte	0x9a5
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2e
	.4byte	.LASF166
	.byte	0x1
	.byte	0x81
	.4byte	0x9a5
	.4byte	.LLST18
	.uleb128 0x2d
	.4byte	.LASF159
	.byte	0x1
	.byte	0x82
	.4byte	0x9a5
	.uleb128 0x2f
	.4byte	.LASF167
	.byte	0x1
	.byte	0x85
	.4byte	0x982
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2d
	.4byte	.LASF168
	.byte	0x1
	.byte	0x86
	.4byte	0x982
	.uleb128 0x2e
	.4byte	.LASF169
	.byte	0x1
	.byte	0x87
	.4byte	0xcbe
	.4byte	.LLST19
	.uleb128 0x2f
	.4byte	.LASF170
	.byte	0x1
	.byte	0x88
	.4byte	0xcbe
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0x0
	.uleb128 0x24
	.4byte	0xde9
	.byte	0x1
	.4byte	.LASF171
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.4byte	0xd0
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LLST20
	.uleb128 0x25
	.ascii	"a\000"
	.byte	0x1
	.byte	0xbc
	.4byte	0xd0
	.4byte	.LLST21
	.uleb128 0x2d
	.4byte	.LASF172
	.byte	0x1
	.byte	0xbe
	.4byte	0x9a5
	.uleb128 0x2e
	.4byte	.LASF163
	.byte	0x1
	.byte	0xbf
	.4byte	0x9a5
	.4byte	.LLST22
	.uleb128 0x2e
	.4byte	.LASF167
	.byte	0x1
	.byte	0xc1
	.4byte	0x994
	.4byte	.LLST23
	.uleb128 0x2e
	.4byte	.LASF164
	.byte	0x1
	.byte	0xc2
	.4byte	0xd0
	.4byte	.LLST24
	.uleb128 0x26
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x2e
	.4byte	.LASF165
	.byte	0x1
	.byte	0xce
	.4byte	0x9a5
	.4byte	.LLST25
	.uleb128 0x2e
	.4byte	.LASF166
	.byte	0x1
	.byte	0xcf
	.4byte	0x9a5
	.4byte	.LLST26
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.4byte	0xe15
	.byte	0x1
	.4byte	.LASF173
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.4byte	0xd0
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LLST27
	.uleb128 0x25
	.ascii	"pc\000"
	.byte	0x1
	.byte	0xdb
	.4byte	0xd0
	.4byte	.LLST28
	.byte	0x0
	.uleb128 0x28
	.4byte	0xe77
	.byte	0x1
	.4byte	.LASF174
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST29
	.uleb128 0x25
	.ascii	"a\000"
	.byte	0x1
	.byte	0x31
	.4byte	0xd0
	.4byte	.LLST30
	.uleb128 0x25
	.ascii	"d\000"
	.byte	0x1
	.byte	0x31
	.4byte	0xc5
	.4byte	.LLST31
	.uleb128 0x26
	.4byte	.LBB7
	.4byte	.LBE7
	.uleb128 0x2e
	.4byte	.LASF175
	.byte	0x1
	.byte	0x39
	.4byte	0xd0
	.4byte	.LLST32
	.uleb128 0x30
	.4byte	0xb2c
	.4byte	.LBB8
	.4byte	.LBE8
	.byte	0x1
	.byte	0x3e
	.uleb128 0x31
	.4byte	0xb59
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.4byte	0xee1
	.byte	0x1
	.4byte	.LASF176
	.byte	0x1
	.byte	0xf0
	.4byte	.LFB122
	.4byte	.LFE122
	.4byte	.LLST33
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x1
	.byte	0xf1
	.4byte	0xd0
	.4byte	.LLST34
	.uleb128 0x34
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x10b
	.4byte	0x9a5
	.4byte	.LLST35
	.uleb128 0x35
	.4byte	0xeca
	.4byte	.LBB13
	.4byte	.LBE13
	.uleb128 0x34
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x11e
	.4byte	0xd0
	.4byte	.LLST36
	.byte	0x0
	.uleb128 0x36
	.4byte	0xb2c
	.4byte	.LBB14
	.4byte	.LBE14
	.byte	0x1
	.2byte	0x150
	.uleb128 0x31
	.4byte	0xb59
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.4byte	.LASF179
	.byte	0x4
	.2byte	0x129
	.4byte	0xeed
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c2
	.uleb128 0xc
	.4byte	0xf04
	.4byte	0x994
	.uleb128 0xd
	.4byte	0xf9
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF180
	.byte	0x1
	.byte	0x15
	.4byte	0xef3
	.byte	0x5
	.byte	0x3
	.4byte	g_bankTable
	.uleb128 0x2f
	.4byte	.LASF181
	.byte	0x1
	.byte	0x16
	.4byte	0xcbe
	.byte	0x5
	.byte	0x3
	.4byte	g_cacheOwner
	.uleb128 0x2f
	.4byte	.LASF182
	.byte	0x1
	.byte	0x17
	.4byte	0xd0
	.byte	0x5
	.byte	0x3
	.4byte	g_bankEntry
	.uleb128 0x2f
	.4byte	.LASF183
	.byte	0x1
	.byte	0x18
	.4byte	0xd0
	.byte	0x5
	.byte	0x3
	.4byte	g_bankCacheCount
	.uleb128 0xc
	.4byte	0xf5b
	.4byte	0xbb
	.uleb128 0x38
	.4byte	0xf9
	.4byte	0x10ffff
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF184
	.byte	0x1
	.byte	0x1b
	.4byte	0xf48
	.byte	0x5
	.byte	0x3
	.4byte	g_mainProgram
	.uleb128 0xc
	.4byte	0xf7f
	.4byte	0xbb
	.uleb128 0x38
	.4byte	0xf9
	.4byte	0x1ffff
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF185
	.byte	0x1
	.byte	0x1c
	.4byte	0xf6c
	.byte	0x5
	.byte	0x3
	.4byte	g_bios
	.uleb128 0xc
	.4byte	0xfa1
	.4byte	0xc5
	.uleb128 0xd
	.4byte	0xf9
	.2byte	0x7fff
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF186
	.byte	0x1
	.byte	0x1d
	.4byte	0xf90
	.byte	0x5
	.byte	0x3
	.4byte	g_vram
	.uleb128 0xc
	.4byte	0xfc3
	.4byte	0xc5
	.uleb128 0xd
	.4byte	0xf9
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF187
	.byte	0x1
	.byte	0x1e
	.4byte	0xfb2
	.byte	0x5
	.byte	0x3
	.4byte	g_spriteRam
	.uleb128 0xc
	.4byte	0xfe5
	.4byte	0xc5
	.uleb128 0xd
	.4byte	0xf9
	.2byte	0x1fff
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF188
	.byte	0x1
	.byte	0x1f
	.4byte	0xfd4
	.byte	0x5
	.byte	0x3
	.4byte	g_palette
	.uleb128 0xc
	.4byte	0x1007
	.4byte	0xbb
	.uleb128 0xd
	.4byte	0xf9
	.2byte	0xffff
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF189
	.byte	0x1
	.byte	0x20
	.4byte	0xff6
	.byte	0x5
	.byte	0x3
	.4byte	g_sram
	.uleb128 0xc
	.4byte	0x1029
	.4byte	0xbb
	.uleb128 0xd
	.4byte	0xf9
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF190
	.byte	0x1
	.byte	0x21
	.4byte	0x1018
	.byte	0x5
	.byte	0x3
	.4byte	g_card
	.uleb128 0x2f
	.4byte	.LASF191
	.byte	0x1
	.byte	0x22
	.4byte	0x982
	.byte	0x5
	.byte	0x3
	.4byte	g_audioProgram
	.uleb128 0xc
	.4byte	0x105b
	.4byte	0xbb
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x7f
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF192
	.byte	0x1
	.byte	0x24
	.4byte	0x104b
	.byte	0x5
	.byte	0x3
	.4byte	g_programVector
	.uleb128 0xc
	.4byte	0x1077
	.4byte	0x49
	.uleb128 0x39
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF193
	.byte	0x5
	.byte	0x2c
	.4byte	0x106c
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x108f
	.4byte	0x49
	.uleb128 0x39
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF194
	.byte	0x5
	.byte	0x2d
	.4byte	0x1084
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x10a7
	.4byte	0x49
	.uleb128 0x39
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF195
	.byte	0x5
	.byte	0x2e
	.4byte	0x109c
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.4byte	.LASF196
	.byte	0x6
	.2byte	0x149
	.4byte	0x10c3
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x6
	.byte	0x4
	.4byte	0xafa
	.uleb128 0x3c
	.4byte	.LASF197
	.byte	0x6
	.2byte	0x14d
	.4byte	0xafa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x6
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
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
	.4byte	0x12b
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x10d8
	.4byte	0xb46
	.ascii	"neoSetRomBankAddr\000"
	.4byte	0xb63
	.ascii	"neoReadCard16\000"
	.4byte	0xba1
	.ascii	"neoWriteCard8\000"
	.4byte	0xbd1
	.ascii	"neoWriteCard16\000"
	.4byte	0xc01
	.ascii	"neoEvictBank\000"
	.4byte	0xc19
	.ascii	"neoEvictBank2\000"
	.4byte	0xc31
	.ascii	"neoMemoryLoadProgramVector\000"
	.4byte	0xc45
	.ascii	"neoMemoryLoadBiosVector\000"
	.4byte	0xc59
	.ascii	"neoLoadBank\000"
	.4byte	0xcc4
	.ascii	"neoLoadBank2\000"
	.4byte	0xd5e
	.ascii	"neoBankPC\000"
	.4byte	0xde9
	.ascii	"neoBankedRomPc\000"
	.4byte	0xe15
	.ascii	"neoWriteRomBank\000"
	.4byte	0xe77
	.ascii	"neoMemoryInit\000"
	.4byte	0x10b4
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
	.section	.debug_str,"MS",%progbits,1
.LASF24:
	.ascii	"clearColor\000"
.LASF38:
	.ascii	"checkpc\000"
.LASF42:
	.ascii	"write8\000"
.LASF147:
	.ascii	"neoSetRomBankAddr\000"
.LASF155:
	.ascii	"neoMemoryLoadBiosVector\000"
.LASF90:
	.ascii	"smaBankbit\000"
.LASF142:
	.ascii	"cpuCheckPcTable\000"
.LASF98:
	.ascii	"spriteMask\000"
.LASF121:
	.ascii	"ctrl3Reg\000"
.LASF47:
	.ascii	"fetch32\000"
.LASF106:
	.ascii	"cpuClocksPerScanline\000"
.LASF54:
	.ascii	"TRead16Func\000"
.LASF189:
	.ascii	"g_sram\000"
.LASF153:
	.ascii	"neoEvictBank2\000"
.LASF72:
	.ascii	"romBankCount\000"
.LASF101:
	.ascii	"tileOffsetX\000"
.LASF140:
	.ascii	"cpuWrite16Table\000"
.LASF14:
	.ascii	"uint32\000"
.LASF20:
	.ascii	"GL_MODELVIEW\000"
.LASF103:
	.ascii	"tileScaleX\000"
.LASF104:
	.ascii	"tileScaleY\000"
.LASF176:
	.ascii	"neoMemoryInit\000"
.LASF190:
	.ascii	"g_card\000"
.LASF159:
	.ascii	"loadOffset\000"
.LASF43:
	.ascii	"write16\000"
.LASF185:
	.ascii	"g_bios\000"
.LASF148:
	.ascii	"neoReadCard16\000"
.LASF59:
	.ascii	"TCheckPcFunc\000"
.LASF133:
	.ascii	"varEnd\000"
.LASF56:
	.ascii	"TWrite8Func\000"
.LASF39:
	.ascii	"read8\000"
.LASF152:
	.ascii	"neoEvictBank\000"
.LASF69:
	.ascii	"TNeoADPCMBStream\000"
.LASF53:
	.ascii	"TRead8Func\000"
.LASF100:
	.ascii	"pTileBuffer\000"
.LASF138:
	.ascii	"cpuRead32Table\000"
.LASF22:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF8:
	.ascii	"long int\000"
.LASF68:
	.ascii	"frequency\000"
.LASF57:
	.ascii	"TWrite16Func\000"
.LASF45:
	.ascii	"fetch8\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF131:
	.ascii	"keyGrid\000"
.LASF44:
	.ascii	"write32\000"
.LASF48:
	.ascii	"IrqCallback\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF122:
	.ascii	"ctrl4Reg\000"
.LASF165:
	.ascii	"cacheIndex1\000"
.LASF111:
	.ascii	"romBankAddress\000"
.LASF195:
	.ascii	"TAN_bin\000"
.LASF63:
	.ascii	"step\000"
.LASF75:
	.ascii	"adpcmActive\000"
.LASF154:
	.ascii	"neoMemoryLoadProgramVector\000"
.LASF95:
	.ascii	"vramBaseMask\000"
.LASF71:
	.ascii	"spriteCount\000"
.LASF50:
	.ascii	"UnrecognizedCallback\000"
.LASF188:
	.ascii	"g_palette\000"
.LASF182:
	.ascii	"g_bankEntry\000"
.LASF149:
	.ascii	"bankAddr\000"
.LASF17:
	.ascii	"char\000"
.LASF124:
	.ascii	"irqVectorLatch\000"
.LASF187:
	.ascii	"g_spriteRam\000"
.LASF82:
	.ascii	"pVram\000"
.LASF199:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoMemory.c\000"
.LASF125:
	.ascii	"screenDarkLatch\000"
.LASF33:
	.ascii	"prev_pc\000"
.LASF65:
	.ascii	"_TNeoADPCMBStream\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF167:
	.ascii	"pEntry0\000"
.LASF32:
	.ascii	"flags\000"
.LASF16:
	.ascii	"double\000"
.LASF97:
	.ascii	"autoAnimationCounter\000"
.LASF25:
	.ascii	"textures\000"
.LASF19:
	.ascii	"GL_POSITION\000"
.LASF143:
	.ascii	"TNeoContext\000"
.LASF105:
	.ascii	"cpuClockDivide\000"
.LASF93:
	.ascii	"frameCount\000"
.LASF114:
	.ascii	"vramOffset\000"
.LASF161:
	.ascii	"pCacheEntry\000"
.LASF200:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF171:
	.ascii	"neoBankPC\000"
.LASF134:
	.ascii	"fill\000"
.LASF36:
	.ascii	"cycles\000"
.LASF150:
	.ascii	"neoWriteCard8\000"
.LASF141:
	.ascii	"cpuWrite32Table\000"
.LASF128:
	.ascii	"paletteRamLatch\000"
.LASF193:
	.ascii	"COS_bin\000"
.LASF79:
	.ascii	"pRam\000"
.LASF81:
	.ascii	"pCard\000"
.LASF96:
	.ascii	"displayCounter\000"
.LASF52:
	.ascii	"TCycloneContext\000"
.LASF108:
	.ascii	"watchdogCounter\000"
.LASF168:
	.ascii	"pEntry1\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF172:
	.ascii	"address\000"
.LASF137:
	.ascii	"cpuRead16Table\000"
.LASF117:
	.ascii	"displayControlMask\000"
.LASF180:
	.ascii	"g_bankTable\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF129:
	.ascii	"active\000"
.LASF173:
	.ascii	"neoBankedRomPc\000"
.LASF60:
	.ascii	"Cyclone\000"
.LASF78:
	.ascii	"pBios\000"
.LASF99:
	.ascii	"paletteDirty\000"
.LASF194:
	.ascii	"SIN_bin\000"
.LASF23:
	.ascii	"matrixMode\000"
.LASF186:
	.ascii	"g_vram\000"
.LASF27:
	.ascii	"nextBlock\000"
.LASF136:
	.ascii	"cpuRead8Table\000"
.LASF91:
	.ascii	"smaRand\000"
.LASF61:
	.ascii	"_TNeoADPCMStream\000"
.LASF58:
	.ascii	"TWrite32Func\000"
.LASF86:
	.ascii	"smaAddr0\000"
.LASF11:
	.ascii	"long long int\000"
.LASF18:
	.ascii	"GL_PROJECTION\000"
.LASF123:
	.ascii	"coinReg\000"
.LASF66:
	.ascii	"initOffset\000"
.LASF51:
	.ascii	"internal\000"
.LASF46:
	.ascii	"fetch16\000"
.LASF163:
	.ascii	"cacheEntryIndex0\000"
.LASF166:
	.ascii	"cacheEntryIndex1\000"
.LASF87:
	.ascii	"smaAddr1\000"
.LASF31:
	.ascii	"unused\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF116:
	.ascii	"displayControl\000"
.LASF160:
	.ascii	"pEntry\000"
.LASF89:
	.ascii	"smaBankoffset\000"
.LASF21:
	.ascii	"GL_TEXTURE\000"
.LASF94:
	.ascii	"pVramBase\000"
.LASF62:
	.ascii	"offset\000"
.LASF76:
	.ascii	"pRom0\000"
.LASF102:
	.ascii	"tileOffsetY\000"
.LASF139:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF183:
	.ascii	"g_bankCacheCount\000"
.LASF26:
	.ascii	"activeTexture\000"
.LASF120:
	.ascii	"ctrl2Reg\000"
.LASF40:
	.ascii	"read16\000"
.LASF191:
	.ascii	"g_audioProgram\000"
.LASF109:
	.ascii	"paletteBank\000"
.LASF197:
	.ascii	"g_neoContext\000"
.LASF37:
	.ascii	"membase\000"
.LASF177:
	.ascii	"audioProgramSize\000"
.LASF198:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF196:
	.ascii	"g_neo\000"
.LASF92:
	.ascii	"scanline\000"
.LASF84:
	.ascii	"pPalette\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF130:
	.ascii	"debug\000"
.LASF162:
	.ascii	"neoLoadBank2\000"
.LASF146:
	.ascii	"TCacheOwnerEntry\000"
.LASF77:
	.ascii	"pRom1\000"
.LASF192:
	.ascii	"g_programVector\000"
.LASF178:
	.ascii	"bankCount\000"
.LASF151:
	.ascii	"neoWriteCard16\000"
.LASF157:
	.ascii	"cacheEntryIndex\000"
.LASF41:
	.ascii	"read32\000"
.LASF181:
	.ascii	"g_cacheOwner\000"
.LASF83:
	.ascii	"pSpriteRam\000"
.LASF49:
	.ascii	"ResetCallback\000"
.LASF127:
	.ascii	"sramProtectLatch\000"
.LASF110:
	.ascii	"fixedBank\000"
.LASF184:
	.ascii	"g_mainProgram\000"
.LASF144:
	.ascii	"_TCacheOwnerEntry\000"
.LASF29:
	.ascii	"nameCount\000"
.LASF119:
	.ascii	"ctrl1Reg\000"
.LASF35:
	.ascii	"state_flags\000"
.LASF113:
	.ascii	"sramProtection\000"
.LASF179:
	.ascii	"glGlob\000"
.LASF80:
	.ascii	"pSram\000"
.LASF67:
	.ascii	"freqCounter\000"
.LASF4:
	.ascii	"short int\000"
.LASF132:
	.ascii	"frameCounter\000"
.LASF74:
	.ascii	"adpcmb\000"
.LASF28:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF145:
	.ascii	"index\000"
.LASF118:
	.ascii	"displayCounterLoad\000"
.LASF107:
	.ascii	"irqPending\000"
.LASF55:
	.ascii	"TRead32Func\000"
.LASF158:
	.ascii	"cacheIndex\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF169:
	.ascii	"pCacheEntry0\000"
.LASF170:
	.ascii	"pCacheEntry1\000"
.LASF175:
	.ascii	"bank\000"
.LASF73:
	.ascii	"adpcm\000"
.LASF15:
	.ascii	"float\000"
.LASF30:
	.ascii	"gl_hidden_globals\000"
.LASF70:
	.ascii	"pVideoWriteTable\000"
.LASF85:
	.ascii	"bankTable\000"
.LASF88:
	.ascii	"smaBankAddr\000"
.LASF135:
	.ascii	"_TNeoContext\000"
.LASF174:
	.ascii	"neoWriteRomBank\000"
.LASF164:
	.ascii	"cacheIndex0\000"
.LASF34:
	.ascii	"reserved\000"
.LASF126:
	.ascii	"fixedRomLatch\000"
.LASF112:
	.ascii	"sramProtectCount\000"
.LASF64:
	.ascii	"TNeoADPCMStream\000"
.LASF115:
	.ascii	"vramMod\000"
.LASF156:
	.ascii	"neoLoadBank\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
