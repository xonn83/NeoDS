	.code	16
	.file	"io_m3sd.c"
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
	.type	_M3SD_sendCommand, %function
_M3SD_sendCommand:
.LFB5:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_m3sd.c"
	.loc 1 101 0
	push	{lr}
.LCFI0:
.LVL0:
	.loc 1 102 0
	mov	r3, #152
	lsl	r3, r3, #20
	mov	r2, #8
	.loc 1 103 0
	add	r0, r0, #64
.LVL1:
	.loc 1 102 0
	strh	r2, [r3]
	.loc 1 103 0
	lsl	r0, r0, #16
	mov	r3, #146
	lsl	r3, r3, #20
	lsr	r0, r0, #16
	strh	r0, [r3]
	.loc 1 104 0
	mov	r3, #148
	lsr	r2, r1, #16
	lsl	r3, r3, #20
	strh	r2, [r3]
	.loc 1 105 0
	lsl	r1, r1, #16
.LVL2:
	mov	r3, #150
	lsl	r3, r3, #20
	lsr	r1, r1, #16
	strh	r1, [r3]
	.loc 1 108 0
	mov	r3, #136
	mov	r2, #41
	lsl	r3, r3, #20
	strh	r2, [r3]
	mov	r2, #0
.LVL3:
	b	.L2
.L3:
.LBB20:
.LBB21:
	.loc 1 82 0
	ldr	r3, .L9
	.loc 1 81 0
	add	r2, r2, #1
	.loc 1 82 0
	cmp	r2, r3
	beq	.L4
.L2:
	.loc 1 80 0
	mov	r3, #152
	lsl	r3, r3, #20
	ldrh	r3, [r3]
	lsl	r1, r3, #31
	bpl	.L3
	b	.L8
.L4:
.LBE21:
.LBE20:
	.loc 1 110 0
	mov	r3, #136
	lsl	r3, r3, #20
	mov	r2, #9
.LVL4:
	mov	r0, #0
	strh	r2, [r3]
	b	.L6
.LVL5:
.L8:
	.loc 1 113 0
	mov	r3, #136
	lsl	r3, r3, #20
	mov	r2, #9
.LVL6:
	strh	r2, [r3]
	mov	r0, #1
.L6:
	.loc 1 115 0
	@ sp needed for prologue
	pop	{pc}
.L10:
	.align	2
.L9:
	.word	20000
.LFE5:
	.size	_M3SD_sendCommand, .-_M3SD_sendCommand
	.align	2
	.code 16
	.thumb_func
	.type	_M3SD_getByte, %function
_M3SD_getByte:
.LFB7:
	.loc 1 131 0
	push	{lr}
.LCFI1:
	.loc 1 134 0
	mov	r3, #136
	mov	r2, #2
	lsl	r3, r3, #20
	strh	r2, [r3]
	.loc 1 135 0
	mov	r3, #152
	lsl	r3, r3, #20
	strh	r2, [r3]
	mov	r2, #0
.LVL7:
	b	.L12
.L13:
	.loc 1 140 0
	ldr	r3, .L21
	.loc 1 139 0
	add	r2, r2, #1
	.loc 1 140 0
	cmp	r2, r3
	beq	.L14
.L12:
	.loc 1 138 0
	mov	r3, #152
	lsl	r3, r3, #20
	ldrh	r3, [r3]
	lsl	r1, r3, #28
	bpl	.L13
	mov	r2, #0
.LVL8:
	b	.L16
.L17:
	.loc 1 148 0
	ldr	r3, .L21
	.loc 1 147 0
	add	r2, r2, #1
	.loc 1 148 0
	cmp	r2, r3
	beq	.L14
.L16:
	.loc 1 146 0
	mov	r3, #152
	lsl	r3, r3, #20
	ldrh	r3, [r3]
	lsl	r1, r3, #28
	bmi	.L17
	.loc 1 154 0
	mov	r3, #144
	lsl	r3, r3, #20
	ldrh	r3, [r3]
	lsl	r3, r3, #24
	lsr	r0, r3, #24
	b	.L19
.LVL9:
.L14:
	mov	r0, #255
.L19:
	.loc 1 155 0
	@ sp needed for prologue
	pop	{pc}
.L22:
	.align	2
.L21:
	.word	20000
.LFE7:
	.size	_M3SD_getByte, .-_M3SD_getByte
	.align	2
	.code 16
	.thumb_func
	.type	_M3SD_getResponse, %function
_M3SD_getResponse:
.LFB8:
	.loc 1 158 0
	push	{r4, r5, r6, r7, lr}
.LCFI2:
.LVL10:
	sub	sp, sp, #12
.LCFI3:
	.loc 1 158 0
	mov	r6, r0
	str	r1, [sp, #4]
	mov	r4, #0
.LVL11:
.LVL12:
.L24:
	.loc 1 165 0
	bl	_M3SD_getByte
.LVL13:
	mov	r7, r0
	.loc 1 166 0
	cmp	r0, #255
	bne	.L25
.LVL14:
	.loc 1 164 0
	mov	r3, #128
	add	r4, r4, #1
	lsl	r3, r3, #1
	cmp	r4, r3
	bne	.L24
.L25:
	.loc 1 171 0
	cmp	r6, #0
	beq	.L44
	.loc 1 176 0
	cmp	r7, #255
	beq	.L30
.LVL15:
	mov	r4, #0
.LVL16:
	b	.L32
.L33:
	.loc 1 182 0
	strb	r7, [r4, r6]
	.loc 1 183 0
	bl	_M3SD_getByte
	.loc 1 181 0
	add	r4, r4, #1
	.loc 1 183 0
	mov	r7, r0
.LVL17:
.L32:
	.loc 1 181 0
	ldr	r1, [sp, #4]
	cmp	r4, r1
	bne	.L33
	.loc 1 188 0
	bl	_M3SD_getByte
	.loc 1 189 0
	bl	_M3SD_getByte
	.loc 1 193 0
	ldrb	r2, [r6]
	mov	r4, #0
.LVL18:
	b	.L35
.L36:
	.loc 1 194 0
	cmp	r4, #7
	beq	.L30
	.loc 1 193 0
	add	r4, r4, #1
.L35:
	mov	r3, r2
	lsl	r3, r3, r4
	lsl	r1, r3, #24
	bmi	.L36
	mov	r0, r6
	mov	r5, #0
	b	.L39
.LVL19:
.L40:
	.loc 1 200 0
	ldrb	r1, [r0]
.LVL20:
	ldrb	r2, [r5, r6]
	mov	r3, #8
	sub	r3, r3, r4
	lsl	r1, r1, r4
	asr	r2, r2, r3
	orr	r1, r1, r2
	strb	r1, [r0]
	add	r0, r0, #1
.L39:
	.loc 1 199 0
	ldr	r1, [sp, #4]
.LVL21:
	ldr	r3, [sp, #4]
	add	r5, r5, #1
	sub	r1, r1, #1
	cmp	r5, r3
	bne	.L40
	.loc 1 203 0
	add	r1, r6, r1
.LVL22:
	ldrb	r2, [r1]
	mov	r3, #8
	sub	r3, r3, r4
	lsl	r2, r2, r4
	asr	r7, r7, r3
.LVL23:
	orr	r2, r2, r7
	strb	r2, [r1]
.LVL24:
.L44:
	mov	r0, #1
.LVL25:
	b	.L29
.LVL26:
.L30:
	.loc 1 205 0
	mov	r0, #0
.L29:
	.loc 1 206 0
	add	sp, sp, #12
	@ sp needed for prologue
.LVL27:
.LVL28:
.LVL29:
	pop	{r4, r5, r6, r7, pc}
.LFE8:
	.size	_M3SD_getResponse, .-_M3SD_getResponse
	.align	2
	.code 16
	.thumb_func
	.type	_M3SD_getResponse_R1, %function
_M3SD_getResponse_R1:
.LFB9:
	.loc 1 209 0
	push	{lr}
.LCFI4:
.LVL30:
	sub	sp, sp, #4
.LCFI5:
	.loc 1 210 0
	mov	r1, #6
	bl	_M3SD_getResponse
.LVL31:
	.loc 1 211 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE9:
	.size	_M3SD_getResponse_R1, .-_M3SD_getResponse_R1
	.align	2
	.global	_M3SD_cmd_6byte_response
	.code 16
	.thumb_func
	.type	_M3SD_cmd_6byte_response, %function
_M3SD_cmd_6byte_response:
.LFB16:
	.loc 1 241 0
	push	{r4, lr}
.LCFI6:
.LVL32:
	.loc 1 241 0
	mov	r4, r0
.LVL33:
	.loc 1 242 0
	mov	r0, r1
.LVL34:
	mov	r1, r2
	bl	_M3SD_sendCommand
.LVL35:
	.loc 1 243 0
	mov	r0, r4
	mov	r1, #6
	bl	_M3SD_getResponse
	.loc 1 244 0
	@ sp needed for prologue
.LVL36:
	pop	{r4, pc}
.LFE16:
	.size	_M3SD_cmd_6byte_response, .-_M3SD_cmd_6byte_response
	.align	2
	.global	_M3SD_cmd_17byte_response
	.code 16
	.thumb_func
	.type	_M3SD_cmd_17byte_response, %function
_M3SD_cmd_17byte_response:
.LFB17:
	.loc 1 246 0
	push	{r4, lr}
.LCFI7:
.LVL37:
	.loc 1 246 0
	mov	r4, r0
.LVL38:
	.loc 1 247 0
	mov	r0, r1
.LVL39:
	mov	r1, r2
	bl	_M3SD_sendCommand
.LVL40:
	.loc 1 248 0
	mov	r0, r4
	mov	r1, #17
	bl	_M3SD_getResponse
	.loc 1 249 0
	@ sp needed for prologue
.LVL41:
	pop	{r4, pc}
.LFE17:
	.size	_M3SD_cmd_17byte_response, .-_M3SD_cmd_17byte_response
	.align	2
	.code 16
	.thumb_func
	.type	_M3SD_readData, %function
_M3SD_readData:
.LFB19:
	.loc 1 272 0
	push	{lr}
.LCFI8:
.LVL42:
	.loc 1 278 0
	mov	r3, #136
	mov	r2, #73
	lsl	r3, r3, #20
	strh	r2, [r3]
	mov	r2, #0
.LVL43:
	b	.L52
.L53:
.LBB24:
.LBB25:
	.loc 1 93 0
	ldr	r3, .L66
	.loc 1 92 0
	add	r2, r2, #1
	.loc 1 93 0
	cmp	r2, r3
	beq	.L54
.L52:
	.loc 1 91 0
	mov	r3, #152
	lsl	r3, r3, #20
	ldrh	r3, [r3]
	lsl	r1, r3, #25
	bpl	.L53
	b	.L65
.L54:
.LBE25:
.LBE24:
	.loc 1 280 0
	mov	r3, #136
	lsl	r3, r3, #20
	mov	r2, #9
.LVL44:
	mov	r0, #0
.LVL45:
	strh	r2, [r3]
	b	.L56
.LVL46:
.L57:
	.loc 1 281 0
	mov	r2, #0
.L58:
	.loc 1 294 0
	mov	r3, #136
	lsl	r3, r3, #20
	ldrh	r3, [r3]
	.loc 1 296 0
	add	r2, r2, #2
	.loc 1 295 0
	strb	r3, [r0]
	.loc 1 296 0
	lsr	r3, r3, #8
	strb	r3, [r0, #1]
	.loc 1 292 0
	mov	r3, #128
	lsl	r3, r3, #2
	add	r0, r0, #2
	cmp	r2, r3
	beq	.L59
	b	.L58
.LVL47:
.L60:
	.loc 1 300 0
	mov	r3, #136
	lsl	r3, r3, #20
	ldrh	r3, [r3]
	.loc 1 299 0
	mov	r1, #128
	lsl	r1, r1, #2
	.loc 1 300 0
	strh	r3, [r2]
	add	r2, r2, #2
	.loc 1 299 0
	add	r3, r0, r1
	cmp	r2, r3
	bne	.L60
.L59:
	.loc 1 303 0
	mov	r3, #136
	lsl	r3, r3, #20
	ldrh	r2, [r3]
.LVL48:
	ldrh	r2, [r3]
	ldrh	r2, [r3]
	ldrh	r3, [r3]
	mov	r0, #1
.LVL49:
	b	.L56
.LVL50:
.L65:
	.loc 1 283 0
	mov	r1, #136
	lsl	r1, r1, #20
	mov	r3, #9
	strh	r3, [r1]
	.loc 1 285 0
	mov	r3, #8
	strh	r3, [r1]
	.loc 1 286 0
	mov	r3, #152
	lsl	r3, r3, #20
	mov	r2, #4
.LVL51:
	strh	r2, [r3]
	.loc 1 288 0
	ldrh	r3, [r1]
	.loc 1 291 0
	lsl	r3, r0, #31
	bmi	.L57
	.loc 1 275 0
	mov	r2, r0
.LVL52:
	b	.L60
.LVL53:
.L56:
	.loc 1 306 0
	@ sp needed for prologue
	pop	{pc}
.L67:
	.align	2
.L66:
	.word	20000
.LFE19:
	.size	_M3SD_readData, .-_M3SD_readData
	.align	2
	.global	_M3SD_isInserted
	.code 16
	.thumb_func
	.type	_M3SD_isInserted, %function
_M3SD_isInserted:
.LFB24:
	.loc 1 397 0
	push	{r4, lr}
.LCFI9:
	sub	sp, sp, #8
.LCFI10:
	.loc 1 400 0
	mov	r0, #13
	mov	r1, #0
	bl	_M3SD_sendCommand
	cmp	r0, #0
	beq	.L69
	.loc 1 404 0
	mov	r4, sp
	add	r4, r4, #2
	mov	r0, r4
	bl	_M3SD_getResponse_R1
	cmp	r0, #0
	beq	.L69
	ldrb	r3, [r4]
	mov	r2, #0
	cmp	r3, #13
	beq	.L72
	mov	r2, #1
.L72:
	mov	r3, #1
	eor	r3, r3, r2
	lsl	r3, r3, #24
	lsr	r0, r3, #24
	b	.L73
.L69:
	mov	r0, #0
.L73:
	.loc 1 412 0
	add	sp, sp, #8
	@ sp needed for prologue
	pop	{r4, pc}
.LFE24:
	.size	_M3SD_isInserted, .-_M3SD_isInserted
	.align	2
	.global	_M3SD_readSectors
	.code 16
	.thumb_func
	.type	_M3SD_readSectors, %function
_M3SD_readSectors:
.LFB25:
	.loc 1 414 0
	push	{r4, r5, r6, lr}
.LCFI11:
.LVL54:
	mov	r6, r1
	sub	sp, sp, #8
.LCFI12:
	.loc 1 414 0
	mov	r4, r2
	lsl	r1, r0, #9
.LVL55:
	.loc 1 419 0
	cmp	r6, #1
	bne	.L76
.LVL56:
	.loc 1 421 0
	mov	r0, #17
.LVL57:
	bl	_M3SD_sendCommand
	cmp	r0, #0
	beq	.L78
	.loc 1 425 0
	mov	r0, r4
	bl	_M3SD_readData
	mov	r2, #0
	cmp	r0, #0
	bne	.L80
	mov	r2, #1
.L80:
	mov	r3, #1
	eor	r3, r3, r2
	lsl	r3, r3, #24
	lsr	r0, r3, #24
	b	.L81
.LVL58:
.L76:
	.loc 1 431 0
	mov	r0, #18
.LVL59:
	bl	_M3SD_sendCommand
	cmp	r0, #0
	beq	.L78
	.loc 1 416 0
	mov	r5, #0
.LVL60:
	b	.L83
.LVL61:
.L84:
.LVL62:
	.loc 1 436 0
	mov	r0, r4
	bl	_M3SD_readData
	cmp	r0, #0
	beq	.L78
	.loc 1 439 0
	mov	r3, #152
	lsl	r3, r3, #20
	mov	r2, #8
	strh	r2, [r3]
	.loc 1 435 0
	mov	r3, #128
	lsl	r3, r3, #2
	add	r5, r5, #1
	add	r4, r4, r3
.LVL63:
.L83:
	cmp	r5, r6
	bne	.L84
	.loc 1 443 0
	mov	r1, #0
	mov	r0, #12
	bl	_M3SD_sendCommand
.LBB28:
	.loc 1 214 0
	mov	r0, sp
	add	r0, r0, #2
	mov	r1, #6
	bl	_M3SD_getResponse
	mov	r0, #1
	b	.L81
.L78:
	mov	r0, #0
.L81:
.LBE28:
	.loc 1 448 0
	add	sp, sp, #8
	@ sp needed for prologue
.LVL64:
.LVL65:
.LVL66:
	pop	{r4, r5, r6, pc}
.LFE25:
	.size	_M3SD_readSectors, .-_M3SD_readSectors
	.align	2
	.global	_M3SD_shutdown
	.code 16
	.thumb_func
	.type	_M3SD_shutdown, %function
_M3SD_shutdown:
.LFB28:
	.loc 1 502 0
	push	{lr}
.LCFI13:
	sub	sp, sp, #4
.LCFI14:
	.loc 1 503 0
	ldr	r0, .L90
	bl	_M3_changeMode
	.loc 1 505 0
	mov	r0, #1
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L91:
	.align	2
.L90:
	.word	4194308
.LFE28:
	.size	_M3SD_shutdown, .-_M3SD_shutdown
	.align	2
	.code 16
	.thumb_func
	.type	_M3SD_initCard, %function
_M3SD_initCard:
.LFB18:
	.loc 1 251 0
	push	{r4, lr}
.LCFI15:
	.loc 1 251 0
	mov	r1, #99
.LVL67:
.LVL68:
.L93:
.LBB35:
.LBB36:
.LBB37:
.LBB38:
	.loc 1 119 0
	mov	r3, #144
	lsl	r3, r3, #20
	mov	r2, #255
.LVL69:
	strh	r2, [r3]
	.loc 1 120 0
	mov	r3, #136
	lsl	r3, r3, #20
	mov	r2, #3
	strh	r2, [r3]
	.loc 1 121 0
	mov	r3, #152
	mov	r2, #1
	lsl	r3, r3, #20
	strh	r2, [r3]
	mov	r2, #0
.LVL70:
	b	.L94
.L95:
	.loc 1 124 0
	ldr	r3, .L108
	.loc 1 123 0
	add	r2, r2, #1
	.loc 1 124 0
	cmp	r2, r3
	beq	.L96
.L94:
	.loc 1 122 0
	mov	r3, #152
	lsl	r3, r3, #20
	ldrh	r3, [r3]
	lsl	r0, r3, #29
	bpl	.L95
.L96:
.LBE38:
.LBE37:
	.loc 1 230 0
	sub	r1, r1, #1
	bcs	.L93
.LBE36:
.LBE35:
	.loc 1 256 0
	mov	r0, #0
	mov	r1, #0
.LVL71:
	bl	_M3SD_sendCommand
.LVL72:
	cmp	r0, #0
	beq	.L100
	mov	r4, #99
.LVL73:
.L101:
.LBB39:
.LBB40:
	.loc 1 237 0
	bl	_M3SD_getByte
	.loc 1 236 0
	sub	r4, r4, #1
	bcs	.L101
.LBE40:
.LBE39:
	.loc 1 263 0
	ldr	r3, .L108+4
	mov	r2, #0
	str	r2, [r3]
	.loc 1 266 0
	ldr	r0, .L108+8
	ldr	r1, .L108+12
	mov	r2, #1
	bl	_SD_InitCard
.L100:
	.loc 1 270 0
	@ sp needed for prologue
.LVL74:
	pop	{r4, pc}
.L109:
	.align	2
.L108:
	.word	20000
	.word	_M3SD_relativeCardAddress
	.word	_M3SD_cmd_6byte_response
	.word	_M3SD_cmd_17byte_response
.LFE18:
	.size	_M3SD_initCard, .-_M3SD_initCard
	.align	2
	.global	_M3SD_clearStatus
	.code 16
	.thumb_func
	.type	_M3SD_clearStatus, %function
_M3SD_clearStatus:
.LFB27:
	.loc 1 498 0
	push	{lr}
.LCFI16:
	sub	sp, sp, #4
.LCFI17:
	.loc 1 499 0
	bl	_M3SD_initCard
	.loc 1 500 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE27:
	.size	_M3SD_clearStatus, .-_M3SD_clearStatus
	.align	2
	.global	_M3SD_startUp
	.code 16
	.thumb_func
	.type	_M3SD_startUp, %function
_M3SD_startUp:
.LFB23:
	.loc 1 392 0
	push	{lr}
.LCFI18:
	sub	sp, sp, #4
.LCFI19:
.LBB43:
.LBB44:
	.loc 1 75 0
	ldr	r0, .L114
	bl	_M3_changeMode
.LBE44:
.LBE43:
	.loc 1 394 0
	bl	_M3SD_initCard
	.loc 1 395 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L115:
	.align	2
.L114:
	.word	4194307
.LFE23:
	.size	_M3SD_startUp, .-_M3SD_startUp
	.align	2
	.global	_M3SD_writeSectors
	.code 16
	.thumb_func
	.type	_M3SD_writeSectors, %function
_M3SD_writeSectors:
.LFB26:
	.loc 1 450 0
	push	{r4, r5, r6, r7, lr}
.LCFI20:
.LVL75:
	sub	sp, sp, #28
.LCFI21:
	.loc 1 453 0
	lsl	r0, r0, #9
.LVL76:
	.loc 1 450 0
	str	r1, [sp]
	.loc 1 453 0
	str	r0, [sp, #4]
.LVL77:
	.loc 1 454 0
	mov	r7, r2
.LVL78:
.LVL79:
	.loc 1 457 0
	mov	r0, r2
	mov	r1, #128
.LVL80:
	mov	r2, sp
	lsl	r1, r1, #2
	add	r2, r2, #10
	bl	_SD_CRC16
	b	.L117
.LVL81:
.L118:
	.loc 1 461 0
	mov	r0, #24
	ldr	r1, [sp, #4]
	bl	_M3SD_sendCommand
	.loc 1 462 0
	mov	r0, sp
	add	r0, r0, #18
	bl	_M3SD_getResponse_R1
	cmp	r0, #0
	bne	.LCB949
	b	.L119	@long jump
.LCB949:
	.loc 1 466 0
	mov	r3, #136
	lsl	r3, r3, #20
	mov	r2, #4
	strh	r2, [r3]
	.loc 1 467 0
	mov	r3, #152
	lsl	r3, r3, #20
	mov	r2, #0
	strh	r2, [r3]
.L121:
.LBB63:
.LBB64:
.LBB65:
.LBB66:
	.loc 1 326 0
	mov	r1, #136
	lsl	r1, r1, #20
	.loc 1 327 0
	mov	r3, #8
	.loc 1 326 0
	mov	r0, #0
.LBE66:
.LBE65:
	.loc 1 348 0
	mov	r2, #144
.LBB67:
.LBB68:
	.loc 1 326 0
	strh	r0, [r1]
.LBE68:
.LBE67:
	.loc 1 348 0
	lsl	r2, r2, #20
.LBB69:
.LBB70:
	.loc 1 327 0
	strh	r3, [r1]
.LBE70:
.LBE69:
	.loc 1 348 0
	ldrh	r3, [r2]
	lsl	r4, r3, #23
	bpl	.L121
.LVL82:
.LBB71:
.LBB72:
	.loc 1 309 0
	mov	r3, #4
.LBE72:
.LBE71:
	.loc 1 350 0
	strh	r0, [r2]
.LBB73:
.LBB74:
	.loc 1 309 0
	strh	r3, [r1]
	.loc 1 310 0
	mov	r3, #12
	strh	r3, [r1]
	mov	r5, r7
.LVL83:
	mov	r6, #0
.L123:
.LBE74:
.LBE73:
	.loc 1 355 0
	ldrb	r4, [r5]
.LVL84:
	.loc 1 356 0
	mov	r2, #144
	lsr	r3, r4, #4
	lsl	r2, r2, #20
	strh	r3, [r2]
.LBB75:
.LBB76:
	.loc 1 309 0
	mov	r3, #136
	lsl	r3, r3, #20
	mov	r0, #4
	.loc 1 310 0
	mov	r1, #12
	.loc 1 309 0
	strh	r0, [r3]
	.loc 1 310 0
	strh	r1, [r3]
.LBE76:
.LBE75:
	.loc 1 358 0
	strh	r4, [r2]
.LBB77:
.LBB78:
	.loc 1 309 0
	strh	r0, [r3]
	.loc 1 310 0
	strh	r1, [r3]
.LBE78:
.LBE77:
	.loc 1 354 0
	mov	r3, #128
	add	r6, r6, #1
	lsl	r3, r3, #2
	.loc 1 355 0
	add	r5, r5, #1
	.loc 1 354 0
	cmp	r6, r3
	bne	.L123
	mov	r5, sp
.LVL85:
	add	r5, r5, #10
.L125:
	.loc 1 364 0
	ldrb	r4, [r5]
.LVL86:
	.loc 1 365 0
	mov	r2, #144
	lsr	r3, r4, #4
	lsl	r2, r2, #20
	strh	r3, [r2]
.LBB79:
.LBB80:
	.loc 1 309 0
	mov	r3, #136
	lsl	r3, r3, #20
	mov	r0, #4
	.loc 1 310 0
	mov	r1, #12
	.loc 1 309 0
	strh	r0, [r3]
	.loc 1 310 0
	strh	r1, [r3]
.LBE80:
.LBE79:
	.loc 1 367 0
	strh	r4, [r2]
.LBB81:
.LBB82:
	.loc 1 309 0
	strh	r0, [r3]
	.loc 1 310 0
	strh	r1, [r3]
.LBE82:
.LBE81:
	.loc 1 363 0
	mov	r3, sp
	.loc 1 364 0
	add	r5, r5, #1
	.loc 1 363 0
	add	r3, r3, #18
	cmp	r5, r3
	bne	.L125
	mov	r1, #0
.LVL87:
.L127:
	.loc 1 378 0
	mov	r3, #144
	lsl	r3, r3, #20
	mov	r2, #255
	strh	r2, [r3]
.LBB83:
.LBB84:
	.loc 1 309 0
	mov	r3, #136
	lsl	r3, r3, #20
	mov	r2, #4
	strh	r2, [r3]
.LBE84:
.LBE83:
	.loc 1 377 0
	add	r1, r1, #1
.LBB85:
.LBB86:
	.loc 1 310 0
	mov	r2, #12
	strh	r2, [r3]
.LBE86:
.LBE85:
	.loc 1 377 0
	cmp	r1, #32
	bne	.L127
.L137:
.LBB87:
.LBB88:
	.loc 1 326 0
	mov	r3, #136
	lsl	r3, r3, #20
	mov	r2, #0
	strh	r2, [r3]
	.loc 1 327 0
	mov	r2, #8
	strh	r2, [r3]
.LBE88:
.LBE87:
	.loc 1 384 0
	mov	r3, #144
	lsl	r3, r3, #20
	ldrh	r3, [r3]
	lsl	r2, r3, #23
	bpl	.L137
.LBE64:
.LBE63:
	.loc 1 474 0
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L130
	.loc 1 475 0
	ldr	r4, [sp, #4]
.LVL88:
	mov	r2, #128
	lsl	r2, r2, #2
	add	r4, r4, r2
	.loc 1 476 0
	add	r7, r7, r2
	.loc 1 478 0
	mov	r1, #128
.LVL89:
	mov	r2, sp
	mov	r0, r7
	lsl	r1, r1, #2
	add	r2, r2, #10
	.loc 1 475 0
	str	r4, [sp, #4]
	.loc 1 478 0
	bl	_SD_CRC16
.LVL90:
.L130:
	.loc 1 483 0
	mov	r4, sp
.LVL91:
	add	r4, r4, #18
	mov	r3, #0
	strb	r3, [r4, #3]
	.loc 1 485 0
	ldr	r3, .L147
	mov	r0, #13
	ldr	r1, [r3]
.LVL92:
	bl	_M3SD_sendCommand
	.loc 1 486 0
	mov	r0, r4
	bl	_M3SD_getResponse_R1
	ldr	r4, .L147+4
.LVL93:
	b	.L132
.LVL94:
.L133:
	.loc 1 485 0
	ldr	r3, .L147
	mov	r0, #13
	ldr	r1, [r3]
	bl	_M3SD_sendCommand
	.loc 1 487 0
	sub	r4, r4, #1
	.loc 1 486 0
	mov	r0, r5
	bl	_M3SD_getResponse_R1
	.loc 1 488 0
	cmp	r4, #0
	beq	.L119
.LVL95:
.L132:
	.loc 1 491 0
	mov	r5, sp
.LVL96:
	add	r5, r5, #18
	ldrb	r3, [r5, #3]
	mov	r2, #31
	and	r3, r3, r2
	cmp	r3, #9
	bne	.L133
.L117:
	.loc 1 459 0
	ldr	r3, [sp]
	sub	r3, r3, #1
	str	r3, [sp]
	bcc	.LCB1247
	b	.L118	@long jump
.LCB1247:
	mov	r0, #1
	b	.L135
.L119:
	mov	r0, #0
.L135:
	.loc 1 496 0
	add	sp, sp, #28
	@ sp needed for prologue
.LVL97:
.LVL98:
.LVL99:
	pop	{r4, r5, r6, r7, pc}
.L148:
	.align	2
.L147:
	.word	_M3SD_relativeCardAddress
	.word	2999
.LFE26:
	.size	_M3SD_writeSectors, .-_M3SD_writeSectors
	.global	_io_m3sd
	.section	.rodata
	.align	2
	.type	_io_m3sd, %object
	.size	_io_m3sd, 32
_io_m3sd:
	.word	1146303309
	.word	19
	.word	_M3SD_startUp
	.word	_M3SD_isInserted
	.word	_M3SD_readSectors
	.word	_M3SD_writeSectors
	.word	_M3SD_clearStatus
	.word	_M3SD_shutdown
	.bss
	.align	2
_M3SD_relativeCardAddress:
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI1-.LFB7
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI2-.LFB8
	.byte	0xe
	.uleb128 0x14
	.byte	0x84
	.uleb128 0x5
	.byte	0x85
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x87
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI4-.LFB9
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI6-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI7-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI8-.LFB19
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI9-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI11-.LFB25
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
	.uleb128 0x18
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI13-.LFB28
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI15-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI16-.LFB27
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI18-.LFB23
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI20-.LFB26
	.byte	0xe
	.uleb128 0x14
	.byte	0x84
	.uleb128 0x5
	.byte	0x85
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x87
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x30
	.align	2
.LEFDE26:
	.file 2 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/disc_io.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE5-.Ltext0
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
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB9-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB19-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LFB24-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LFB25-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LFB18-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LFB23-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LFB26-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL80-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x87f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF75
	.byte	0x1
	.4byte	.LASF76
	.4byte	.LASF77
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2e
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x3a
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x54
	.4byte	0x69
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF13
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
	.4byte	0x45
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x2
	.byte	0x61
	.4byte	0x5e
	.uleb128 0x6
	.4byte	0xcf
	.byte	0x1
	.byte	0x2
	.byte	0x81
	.uleb128 0x7
	.4byte	.LASF14
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF15
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x2
	.byte	0x81
	.4byte	0xba
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3d
	.4byte	0xe5
	.uleb128 0x8
	.byte	0x4
	.4byte	0xeb
	.uleb128 0x9
	.byte	0x1
	.4byte	0xcf
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x3e
	.4byte	0xe5
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3f
	.4byte	0x107
	.uleb128 0x8
	.byte	0x4
	.4byte	0x10d
	.uleb128 0xa
	.4byte	0x127
	.byte	0x1
	.4byte	0xcf
	.uleb128 0xb
	.4byte	0xaf
	.uleb128 0xb
	.4byte	0xaf
	.uleb128 0xb
	.4byte	0x127
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x40
	.4byte	0x134
	.uleb128 0x8
	.byte	0x4
	.4byte	0x13a
	.uleb128 0xa
	.4byte	0x154
	.byte	0x1
	.4byte	0xcf
	.uleb128 0xb
	.4byte	0xaf
	.uleb128 0xb
	.4byte	0xaf
	.uleb128 0xb
	.4byte	0x154
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x15a
	.uleb128 0xd
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x41
	.4byte	0xe5
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x42
	.4byte	0xe5
	.uleb128 0xe
	.4byte	0x1ee
	.4byte	.LASF78
	.byte	0x20
	.byte	0x4
	.byte	0x44
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x4
	.byte	0x45
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x4
	.byte	0x46
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x4
	.byte	0x47
	.4byte	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x4
	.byte	0x48
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x4
	.byte	0x49
	.4byte	0xfc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x4
	.byte	0x4a
	.4byte	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x4
	.byte	0x4b
	.4byte	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x4
	.byte	0x4c
	.4byte	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x4
	.byte	0x4f
	.4byte	0x171
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9a
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x145
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x134
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	0x22e
	.4byte	.LASF34
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.4byte	0xcf
	.byte	0x3
	.uleb128 0x12
	.ascii	"i\000"
	.byte	0x1
	.byte	0x4f
	.4byte	0x7e
	.byte	0x0
	.uleb128 0x13
	.4byte	0x28c
	.4byte	.LASF35
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0x65
	.4byte	0xa4
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x1
	.byte	0x65
	.4byte	0xaf
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	0x213
	.4byte	.LBB20
	.4byte	.LBE20
	.byte	0x1
	.byte	0x6d
	.uleb128 0x16
	.4byte	.LBB21
	.4byte	.LBE21
	.uleb128 0x17
	.4byte	0x224
	.4byte	.LLST3
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.4byte	0x2b6
	.4byte	.LASF38
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.4byte	0x9a
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST4
	.uleb128 0x18
	.ascii	"i\000"
	.byte	0x1
	.byte	0x84
	.4byte	0x7e
	.4byte	.LLST5
	.byte	0x0
	.uleb128 0x13
	.4byte	0x31c
	.4byte	.LASF39
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST6
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x1
	.byte	0x9e
	.4byte	0x1f9
	.4byte	.LLST7
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x1
	.byte	0x9e
	.4byte	0xaf
	.4byte	.LLST8
	.uleb128 0x18
	.ascii	"i\000"
	.byte	0x1
	.byte	0x9f
	.4byte	0xaf
	.4byte	.LLST9
	.uleb128 0x19
	.4byte	.LASF42
	.byte	0x1
	.byte	0xa0
	.4byte	0x9a
	.4byte	.LLST10
	.uleb128 0x19
	.4byte	.LASF43
	.byte	0x1
	.byte	0xa1
	.4byte	0x7e
	.4byte	.LLST11
	.byte	0x0
	.uleb128 0x13
	.4byte	0x348
	.4byte	.LASF44
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST12
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd1
	.4byte	0x1f9
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x393
	.byte	0x1
	.4byte	.LASF47
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST14
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0xf1
	.4byte	0x1f9
	.4byte	.LLST15
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0xf1
	.4byte	0x9a
	.4byte	.LLST16
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x1
	.byte	0xf1
	.4byte	0xaf
	.4byte	.LLST17
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x3de
	.byte	0x1
	.4byte	.LASF48
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST18
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0xf6
	.4byte	0x1f9
	.4byte	.LLST19
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0xf6
	.4byte	0x9a
	.4byte	.LLST20
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x1
	.byte	0xf6
	.4byte	0xaf
	.4byte	.LLST21
	.byte	0x0
	.uleb128 0x11
	.4byte	0x3f9
	.4byte	.LASF49
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.4byte	0xcf
	.byte	0x3
	.uleb128 0x12
	.ascii	"i\000"
	.byte	0x1
	.byte	0x5a
	.4byte	0x7e
	.byte	0x0
	.uleb128 0x1b
	.4byte	0x47d
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x110
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST22
	.uleb128 0x1c
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x110
	.4byte	0x127
	.4byte	.LLST23
	.uleb128 0x1d
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x111
	.4byte	0xaf
	.uleb128 0x1e
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x112
	.4byte	0x1f9
	.uleb128 0x1f
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x113
	.4byte	0x47d
	.4byte	.LLST24
	.uleb128 0x1e
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x114
	.4byte	0xa4
	.uleb128 0x20
	.4byte	0x3de
	.4byte	.LBB24
	.4byte	.LBE24
	.byte	0x1
	.2byte	0x117
	.uleb128 0x16
	.4byte	.LBB25
	.4byte	.LBE25
	.uleb128 0x17
	.4byte	0x3ef
	.4byte	.LLST25
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa4
	.uleb128 0x21
	.4byte	0x4b1
	.byte	0x1
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x18d
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LLST26
	.uleb128 0x22
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x18e
	.4byte	0x4b1
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.byte	0x0
	.uleb128 0x23
	.4byte	0x4c1
	.4byte	0x9a
	.uleb128 0x24
	.4byte	0x4c1
	.byte	0x5
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.4byte	0x4e5
	.4byte	.LASF56
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.4byte	0xcf
	.byte	0x3
	.uleb128 0x25
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd5
	.4byte	0x1f9
	.byte	0x0
	.uleb128 0x21
	.4byte	0x577
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x19e
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST27
	.uleb128 0x1c
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x19e
	.4byte	0xaf
	.4byte	.LLST28
	.uleb128 0x1c
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x19e
	.4byte	0xaf
	.4byte	.LLST29
	.uleb128 0x1c
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x19e
	.4byte	0x127
	.4byte	.LLST30
	.uleb128 0x26
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x19f
	.4byte	0xaf
	.4byte	.LLST31
	.uleb128 0x1f
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x1f9
	.4byte	.LLST32
	.uleb128 0x22
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x4b1
	.byte	0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x20
	.4byte	0x4c8
	.4byte	.LBB28
	.4byte	.LBE28
	.byte	0x1
	.2byte	0x1bc
	.uleb128 0x27
	.4byte	0x4d9
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1f6
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST33
	.uleb128 0x29
	.4byte	0x5aa
	.4byte	.LASF60
	.byte	0x1
	.byte	0xe5
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	.LASF61
	.byte	0x1
	.byte	0xe5
	.4byte	0xaf
	.byte	0x0
	.uleb128 0x11
	.4byte	0x5d0
	.4byte	.LASF62
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.4byte	0xcf
	.byte	0x1
	.uleb128 0x25
	.4byte	.LASF63
	.byte	0x1
	.byte	0x75
	.4byte	0x9a
	.uleb128 0x12
	.ascii	"i\000"
	.byte	0x1
	.byte	0x76
	.4byte	0x7e
	.byte	0x0
	.uleb128 0x29
	.4byte	0x5e9
	.4byte	.LASF64
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.4byte	.LASF61
	.byte	0x1
	.byte	0xeb
	.4byte	0xaf
	.byte	0x0
	.uleb128 0x13
	.4byte	0x665
	.4byte	.LASF65
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST34
	.uleb128 0x2a
	.4byte	0x64a
	.4byte	0x591
	.4byte	.LBB35
	.4byte	.LBE35
	.byte	0x1
	.byte	0xfd
	.uleb128 0x2b
	.4byte	0x59e
	.4byte	.LLST35
	.uleb128 0x15
	.4byte	0x5aa
	.4byte	.LBB37
	.4byte	.LBE37
	.byte	0x1
	.byte	0xe7
	.uleb128 0x27
	.4byte	0x5bb
	.uleb128 0x16
	.4byte	.LBB38
	.4byte	.LBE38
	.uleb128 0x17
	.4byte	0x5c6
	.4byte	.LLST36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.4byte	0x5d0
	.4byte	.LBB39
	.4byte	.LBE39
	.byte	0x1
	.2byte	0x104
	.uleb128 0x2b
	.4byte	0x5dd
	.4byte	.LLST37
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1f2
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST38
	.uleb128 0x2c
	.4byte	.LASF68
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.byte	0x3
	.uleb128 0x21
	.4byte	0x6b7
	.byte	0x1
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x188
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST39
	.uleb128 0x2d
	.4byte	0x67f
	.4byte	.LBB43
	.4byte	.LBE43
	.byte	0x1
	.2byte	0x189
	.byte	0x0
	.uleb128 0x2e
	.4byte	0x700
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x156
	.byte	0x1
	.4byte	0xcf
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x156
	.4byte	0x1f9
	.uleb128 0x30
	.ascii	"crc\000"
	.byte	0x1
	.2byte	0x156
	.4byte	0x1f9
	.uleb128 0x1d
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x157
	.4byte	0x7e
	.uleb128 0x1e
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x158
	.4byte	0x9a
	.uleb128 0x31
	.uleb128 0x31
	.uleb128 0x31
	.uleb128 0x31
	.uleb128 0x31
	.uleb128 0x31
	.uleb128 0x31
	.uleb128 0x31
	.byte	0x0
	.uleb128 0x21
	.4byte	0x849
	.byte	0x1
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1c2
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST40
	.uleb128 0x1c
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x1c2
	.4byte	0xaf
	.4byte	.LLST41
	.uleb128 0x1c
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x1c2
	.4byte	0xaf
	.4byte	.LLST42
	.uleb128 0x1c
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x154
	.4byte	.LLST43
	.uleb128 0x32
	.ascii	"crc\000"
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x849
	.byte	0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x22
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x4b1
	.byte	0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x22
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1c5
	.4byte	0xaf
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x1f9
	.4byte	.LLST44
	.uleb128 0x26
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x7e
	.4byte	.LLST45
	.uleb128 0x20
	.4byte	0x6b7
	.4byte	.LBB63
	.4byte	.LBE63
	.byte	0x1
	.2byte	0x1d6
	.uleb128 0x2b
	.4byte	0x6d5
	.4byte	.LLST46
	.uleb128 0x27
	.4byte	0x6c9
	.uleb128 0x16
	.4byte	.LBB64
	.4byte	.LBE64
	.uleb128 0x17
	.4byte	0x6e1
	.4byte	.LLST47
	.uleb128 0x17
	.4byte	0x6eb
	.4byte	.LLST48
	.uleb128 0x33
	.4byte	0x1ff
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x15b
	.uleb128 0x33
	.4byte	0x209
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x160
	.uleb128 0x2d
	.4byte	0x209
	.4byte	.LBB75
	.4byte	.LBE75
	.byte	0x1
	.2byte	0x165
	.uleb128 0x2d
	.4byte	0x209
	.4byte	.LBB77
	.4byte	.LBE77
	.byte	0x1
	.2byte	0x167
	.uleb128 0x2d
	.4byte	0x209
	.4byte	.LBB79
	.4byte	.LBE79
	.byte	0x1
	.2byte	0x16e
	.uleb128 0x2d
	.4byte	0x209
	.4byte	.LBB81
	.4byte	.LBE81
	.byte	0x1
	.2byte	0x170
	.uleb128 0x33
	.4byte	0x209
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.2byte	0x17b
	.uleb128 0x2d
	.4byte	0x1ff
	.4byte	.LBB87
	.4byte	.LBE87
	.byte	0x1
	.2byte	0x17f
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	0x859
	.4byte	0x9a
	.uleb128 0x24
	.4byte	0x4c1
	.byte	0x7
	.byte	0x0
	.uleb128 0x34
	.4byte	.LASF73
	.byte	0x1
	.byte	0x45
	.4byte	0xaf
	.byte	0x5
	.byte	0x3
	.4byte	_M3SD_relativeCardAddress
	.uleb128 0x35
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x87d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_io_m3sd
	.uleb128 0x36
	.4byte	0x1ee
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0xa
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xd3
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x883
	.4byte	0x348
	.ascii	"_M3SD_cmd_6byte_response\000"
	.4byte	0x393
	.ascii	"_M3SD_cmd_17byte_response\000"
	.4byte	0x483
	.ascii	"_M3SD_isInserted\000"
	.4byte	0x4e5
	.ascii	"_M3SD_readSectors\000"
	.4byte	0x577
	.ascii	"_M3SD_shutdown\000"
	.4byte	0x665
	.ascii	"_M3SD_clearStatus\000"
	.4byte	0x688
	.ascii	"_M3SD_startUp\000"
	.4byte	0x700
	.ascii	"_M3SD_writeSectors\000"
	.4byte	0x86a
	.ascii	"_io_m3sd\000"
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
	.4byte	.LBB65-.Ltext0
	.4byte	.LBE65-.Ltext0
	.4byte	.LBB69-.Ltext0
	.4byte	.LBE69-.Ltext0
	.4byte	.LBB67-.Ltext0
	.4byte	.LBE67-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB71-.Ltext0
	.4byte	.LBE71-.Ltext0
	.4byte	.LBB73-.Ltext0
	.4byte	.LBE73-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB83-.Ltext0
	.4byte	.LBE83-.Ltext0
	.4byte	.LBB85-.Ltext0
	.4byte	.LBE85-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF55:
	.ascii	"_M3SD_isInserted\000"
.LASF69:
	.ascii	"_M3SD_startUp\000"
.LASF43:
	.ascii	"shiftAmount\000"
.LASF19:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF40:
	.ascii	"dest\000"
.LASF72:
	.ascii	"offset\000"
.LASF54:
	.ascii	"temp\000"
.LASF2:
	.ascii	"short int\000"
.LASF26:
	.ascii	"fn_isInserted\000"
.LASF21:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF25:
	.ascii	"fn_startup\000"
.LASF41:
	.ascii	"length\000"
.LASF22:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF46:
	.ascii	"data\000"
.LASF53:
	.ascii	"buff\000"
.LASF32:
	.ascii	"_M3SD_clkin\000"
.LASF67:
	.ascii	"_M3SD_clearStatus\000"
.LASF57:
	.ascii	"_M3SD_readSectors\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF58:
	.ascii	"sector\000"
.LASF16:
	.ascii	"bool\000"
.LASF78:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF74:
	.ascii	"_io_m3sd\000"
.LASF12:
	.ascii	"float\000"
.LASF9:
	.ascii	"long long int\000"
.LASF17:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF61:
	.ascii	"numClocks\000"
.LASF6:
	.ascii	"long int\000"
.LASF42:
	.ascii	"dataByte\000"
.LASF45:
	.ascii	"responseBuffer\000"
.LASF31:
	.ascii	"IO_INTERFACE\000"
.LASF27:
	.ascii	"fn_readSectors\000"
.LASF50:
	.ascii	"_M3SD_readData\000"
.LASF63:
	.ascii	"byte\000"
.LASF23:
	.ascii	"ioType\000"
.LASF29:
	.ascii	"fn_clearStatus\000"
.LASF48:
	.ascii	"_M3SD_cmd_17byte_response\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF47:
	.ascii	"_M3SD_cmd_6byte_response\000"
.LASF34:
	.ascii	"_M3SD_waitOnBusy\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF7:
	.ascii	"uint32_t\000"
.LASF14:
	.ascii	"false\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF37:
	.ascii	"argument\000"
.LASF24:
	.ascii	"features\000"
.LASF68:
	.ascii	"_M3SD_unlock\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF20:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF56:
	.ascii	"_M3SD_getResponse_R1b\000"
.LASF15:
	.ascii	"true\000"
.LASF51:
	.ascii	"buffer\000"
.LASF39:
	.ascii	"_M3SD_getResponse\000"
.LASF77:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF33:
	.ascii	"_M3SD_clkout\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF13:
	.ascii	"double\000"
.LASF73:
	.ascii	"_M3SD_relativeCardAddress\000"
.LASF75:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF60:
	.ascii	"_M3SD_sendClocks\000"
.LASF35:
	.ascii	"_M3SD_sendCommand\000"
.LASF52:
	.ascii	"buff_u8\000"
.LASF49:
	.ascii	"_M3SD_waitForDataReady\000"
.LASF59:
	.ascii	"numSectors\000"
.LASF44:
	.ascii	"_M3SD_getResponse_R1\000"
.LASF66:
	.ascii	"_M3SD_shutdown\000"
.LASF28:
	.ascii	"fn_writeSectors\000"
.LASF62:
	.ascii	"_M3SD_sendByte\000"
.LASF18:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF71:
	.ascii	"_M3SD_writeSectors\000"
.LASF64:
	.ascii	"_M3SD_getClocks\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF70:
	.ascii	"_M3SD_writeData\000"
.LASF76:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_"
	.ascii	"io/io_m3sd.c\000"
.LASF36:
	.ascii	"command\000"
.LASF38:
	.ascii	"_M3SD_getByte\000"
.LASF65:
	.ascii	"_M3SD_initCard\000"
.LASF30:
	.ascii	"fn_shutdown\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
