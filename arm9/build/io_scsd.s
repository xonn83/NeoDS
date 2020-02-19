	.code	16
	.file	"io_scsd.c"
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
	.type	_SCSD_getResponse, %function
_SCSD_getResponse:
.LFB5:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_scsd.c"
	.loc 1 135 0
	push	{r4, lr}
.LCFI0:
.LVL0:
	.loc 1 138 0
	ldr	r2, .L24
.LVL1:
	.loc 1 135 0
	mov	r4, r0
	.loc 1 138 0
	lsl	r1, r1, #3
.LVL2:
.LVL3:
.L2:
	.loc 1 142 0
	mov	r3, #152
	lsl	r3, r3, #20
	ldrh	r3, [r3]
	lsl	r0, r3, #31
	bpl	.L3
	sub	r2, r2, #1
	cmp	r2, #0
	bne	.L2
.L3:
	.loc 1 143 0
	cmp	r4, #0
	beq	.L5
	.loc 1 147 0
	cmp	r2, #0
	bne	.L7
	mov	r0, #0
	b	.L9
.L7:
	.loc 1 154 0
	sub	r0, r1, #1
.LVL4:
	b	.L23
.LVL5:
.L11:
	.loc 1 158 0
	mov	r3, #152
	lsl	r3, r3, #20
	ldrh	r3, [r3]
	mov	r2, #1
.LVL6:
	and	r3, r3, r2
	lsl	r1, r1, #1
.LVL7:
	orr	r1, r1, r3
.LVL8:
	.loc 1 159 0
	mov	r3, #7
	tst	r0, r3
	bne	.L22
	.loc 1 161 0
	strb	r1, [r4]
	add	r4, r4, #1
.LVL9:
.L23:
	mov	r1, #0
.L22:
	.loc 1 157 0
	sub	r0, r0, #1
	bcs	.L11
	mov	r2, #0
.LVL10:
.L14:
	.loc 1 168 0
	mov	r3, #152
	lsl	r3, r3, #20
	.loc 1 167 0
	add	r2, r2, #1
	.loc 1 168 0
	ldrh	r3, [r3]
	.loc 1 167 0
	cmp	r2, #16
	bne	.L14
.LVL11:
.L5:
	mov	r0, #1
.LVL12:
.L9:
	.loc 1 172 0
	@ sp needed for prologue
.LVL13:
	pop	{r4, pc}
.L25:
	.align	2
.L24:
	.word	500000
.LFE5:
	.size	_SCSD_getResponse, .-_SCSD_getResponse
	.align	2
	.code 16
	.thumb_func
	.type	_SCSD_getResponse_R1, %function
_SCSD_getResponse_R1:
.LFB6:
	.loc 1 174 0
	push	{lr}
.LCFI1:
.LVL14:
	sub	sp, sp, #4
.LCFI2:
	.loc 1 175 0
	mov	r1, #6
	bl	_SCSD_getResponse
.LVL15:
	.loc 1 176 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE6:
	.size	_SCSD_getResponse_R1, .-_SCSD_getResponse_R1
	.align	2
	.code 16
	.thumb_func
	.type	_SCSD_readData, %function
_SCSD_readData:
.LFB15:
	.loc 1 235 0
	push	{lr}
.LCFI3:
.LVL16:
	.loc 1 236 0
	ldr	r2, .L48
.LVL17:
	.loc 1 235 0
	sub	sp, sp, #12
.LCFI4:
.L29:
	.loc 1 242 0
	mov	r3, #145
	lsl	r3, r3, #20
	ldrh	r3, [r3]
	lsl	r1, r3, #23
	bpl	.L30
	sub	r2, r2, #1
	cmp	r2, #0
	beq	.L32
	b	.L29
.L30:
	.loc 1 243 0
	cmp	r2, #0
	beq	.L32
	.loc 1 248 0
	lsl	r2, r0, #31
	bpl	.L34
.LVL18:
	mov	r1, #0
.LVL19:
.L36:
	.loc 1 250 0
	mov	r3, #145
	lsl	r3, r3, #20
	ldr	r2, [r3]
	.loc 1 253 0
	add	r1, r1, #2
	.loc 1 250 0
	str	r2, [sp, #4]
	.loc 1 251 0
	ldr	r3, [r3]
	lsr	r3, r3, #16
	str	r3, [sp, #4]
	.loc 1 252 0
	ldr	r3, [sp, #4]
	strb	r3, [r0]
	.loc 1 253 0
	ldr	r3, [sp, #4]
	lsr	r3, r3, #8
	strb	r3, [r0, #1]
	.loc 1 249 0
	mov	r3, #128
	lsl	r3, r3, #2
	add	r0, r0, #2
	cmp	r1, r3
	beq	.L37
	b	.L36
.LVL20:
.L34:
	.loc 1 237 0
	mov	r1, r0
.LVL21:
.L38:
	.loc 1 257 0
	mov	r3, #145
	lsl	r3, r3, #20
	ldr	r2, [r3]
	str	r2, [sp, #4]
.LVL22:
	.loc 1 258 0
	ldr	r3, [r3]
	.loc 1 256 0
	mov	r2, #128
	.loc 1 258 0
	lsr	r3, r3, #16
	str	r3, [sp, #4]
	.loc 1 259 0
	ldr	r3, [sp, #4]
	.loc 1 256 0
	lsl	r2, r2, #2
	.loc 1 259 0
	strh	r3, [r1]
	add	r1, r1, #2
	.loc 1 256 0
	add	r3, r0, r2
	cmp	r1, r3
	bne	.L38
.L37:
	mov	r1, #0
.LVL23:
.L39:
	.loc 1 265 0
	mov	r2, #145
	lsl	r2, r2, #20
	ldr	r3, [r2]
	.loc 1 264 0
	add	r1, r1, #1
	.loc 1 265 0
	str	r3, [sp, #4]
	.loc 1 264 0
	cmp	r1, #8
	bne	.L39
	.loc 1 268 0
	ldrh	r3, [r2]
	mov	r0, #1
.LVL24:
	str	r3, [sp, #4]
	b	.L41
.LVL25:
.L32:
	.loc 1 270 0
	mov	r0, #0
.LVL26:
.L41:
	.loc 1 271 0
	add	sp, sp, #12
	@ sp needed for prologue
	pop	{pc}
.L49:
	.align	2
.L48:
	.word	500000
.LFE15:
	.size	_SCSD_readData, .-_SCSD_readData
	.align	2
	.global	_SCSD_shutdown
	.code 16
	.thumb_func
	.type	_SCSD_shutdown, %function
_SCSD_shutdown:
.LFB21:
	.loc 1 383 0
	push	{lr}
.LCFI5:
	sub	sp, sp, #4
.LCFI6:
	.loc 1 384 0
	mov	r0, #1
	bl	_SC_changeMode
	.loc 1 386 0
	mov	r0, #1
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE21:
	.size	_SCSD_shutdown, .-_SCSD_shutdown
	.align	2
	.code 16
	.thumb_func
	.type	_SCSD_sendCommand, %function
_SCSD_sendCommand:
.LFB4:
	.loc 1 98 0
	push	{r4, lr}
.LCFI7:
.LVL27:
	sub	sp, sp, #8
.LCFI8:
	.loc 1 106 0
	mov	r3, #64
	mov	r2, sp
	add	r2, r2, #2
	orr	r0, r0, r3
.LVL28:
	.loc 1 107 0
	lsr	r3, r1, #24
	strb	r3, [r2, #1]
	.loc 1 108 0
	lsr	r3, r1, #16
	strb	r3, [r2, #2]
	.loc 1 109 0
	lsr	r3, r1, #8
	.loc 1 106 0
	strb	r0, [r2]
	.loc 1 110 0
	strb	r1, [r2, #4]
	.loc 1 109 0
	strb	r3, [r2, #3]
	.loc 1 111 0
	mov	r1, #5
.LVL29:
	mov	r0, r2
	bl	_SD_CRC7
	ldr	r1, .L69
.LVL30:
.L53:
	.loc 1 114 0
	mov	r2, #152
	lsl	r2, r2, #20
	ldrh	r3, [r2]
	lsl	r4, r3, #31
	bmi	.L54
	sub	r1, r1, #1
	cmp	r1, #0
	beq	.L56
	b	.L53
.L54:
	.loc 1 115 0
	cmp	r1, #0
	beq	.L56
	.loc 1 111 0
	mov	r3, sp
	add	r3, r3, #2
	strb	r0, [r3, #5]
	.loc 1 119 0
	ldrh	r2, [r2]
	mov	r0, r3
.LVL31:
.LVL32:
.L58:
	.loc 1 124 0
	ldrb	r2, [r0]
	mov	r1, #7
.LVL33:
	add	r0, r0, #1
.L59:
	.loc 1 126 0
	mov	r3, #152
	lsl	r3, r3, #20
	strh	r2, [r3]
	.loc 1 127 0
	lsl	r3, r2, #17
	lsr	r2, r3, #16
	.loc 1 125 0
	sub	r1, r1, #1
	bcs	.L59
	.loc 1 123 0
	add	r3, sp, #8
	cmp	r0, r3
	bne	.L58
	mov	r0, #1
.LVL34:
	b	.L62
.LVL35:
.L56:
	mov	r0, #0
.LVL36:
.L62:
	.loc 1 132 0
	add	sp, sp, #8
	@ sp needed for prologue
	pop	{r4, pc}
.L70:
	.align	2
.L69:
	.word	500000
.LFE4:
	.size	_SCSD_sendCommand, .-_SCSD_sendCommand
	.align	2
	.global	_SCSD_isInserted
	.code 16
	.thumb_func
	.type	_SCSD_isInserted, %function
_SCSD_isInserted:
.LFB17:
	.loc 1 281 0
	push	{r4, lr}
.LCFI9:
	sub	sp, sp, #8
.LCFI10:
	.loc 1 285 0
	mov	r0, #13
	mov	r1, #0
	bl	_SCSD_sendCommand
	cmp	r0, #0
	beq	.L72
	.loc 1 289 0
	mov	r4, sp
	add	r4, r4, #2
	mov	r0, r4
	bl	_SCSD_getResponse_R1
	cmp	r0, #0
	beq	.L72
	ldrb	r3, [r4]
	mov	r2, #0
	cmp	r3, #13
	beq	.L75
	mov	r2, #1
.L75:
	mov	r3, #1
	eor	r3, r3, r2
	lsl	r3, r3, #24
	lsr	r0, r3, #24
	b	.L76
.L72:
	mov	r0, #0
.L76:
	.loc 1 297 0
	add	sp, sp, #8
	@ sp needed for prologue
	pop	{r4, pc}
.LFE17:
	.size	_SCSD_isInserted, .-_SCSD_isInserted
	.align	2
	.code 16
	.thumb_func
	.type	_SCSD_initCard, %function
_SCSD_initCard:
.LFB14:
	.loc 1 212 0
	push	{lr}
.LCFI11:
.LBB8:
.LBB9:
	.loc 1 95 0
	ldr	r3, .L91
	mov	r2, #0
	strh	r2, [r3]
.LBE9:
.LBE8:
	.loc 1 212 0
	sub	sp, sp, #4
.LCFI12:
.LBB10:
.LBB11:
	.loc 1 95 0
	mov	r2, #100
.LVL37:
.L79:
.LBE11:
.LBE10:
.LBB12:
.LBB13:
	.loc 1 197 0
	mov	r3, #152
	lsl	r3, r3, #20
	ldrh	r3, [r3]
	.loc 1 198 0
	sub	r2, r2, #1
	bcs	.L79
.LBE13:
.LBE12:
	.loc 1 219 0
	mov	r0, #0
	mov	r1, #0
	bl	_SCSD_sendCommand
.LVL38:
	cmp	r0, #0
	beq	.L83
	mov	r2, #100
.LVL39:
.L84:
.LBB14:
.LBB15:
	.loc 1 197 0
	mov	r3, #152
	lsl	r3, r3, #20
	ldrh	r3, [r3]
	.loc 1 198 0
	sub	r2, r2, #1
	bcs	.L84
.LBE15:
.LBE14:
	.loc 1 226 0
	ldr	r3, .L91+4
	mov	r2, #0
.LVL40:
	str	r2, [r3]
	.loc 1 229 0
	ldr	r0, .L91+8
	ldr	r1, .L91+12
	mov	r2, #1
	bl	_SD_InitCard
.L83:
	.loc 1 233 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L92:
	.align	2
.L91:
	.word	155451392
	.word	_SCSD_relativeCardAddress
	.word	_SCSD_cmd_6byte_response
	.word	_SCSD_cmd_17byte_response
.LFE14:
	.size	_SCSD_initCard, .-_SCSD_initCard
	.align	2
	.global	_SCSD_clearStatus
	.code 16
	.thumb_func
	.type	_SCSD_clearStatus, %function
_SCSD_clearStatus:
.LFB20:
	.loc 1 379 0
	push	{lr}
.LCFI13:
	sub	sp, sp, #4
.LCFI14:
	.loc 1 380 0
	bl	_SCSD_initCard
	.loc 1 381 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE20:
	.size	_SCSD_clearStatus, .-_SCSD_clearStatus
	.align	2
	.global	_SCSD_startUp
	.code 16
	.thumb_func
	.type	_SCSD_startUp, %function
_SCSD_startUp:
.LFB16:
	.loc 1 276 0
	push	{lr}
.LCFI15:
	sub	sp, sp, #4
.LCFI16:
.LBB18:
.LBB19:
	.loc 1 91 0
	mov	r0, #3
	bl	_SC_changeMode
.LBE19:
.LBE18:
	.loc 1 278 0
	bl	_SCSD_initCard
	.loc 1 279 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE16:
	.size	_SCSD_startUp, .-_SCSD_startUp
	.align	2
	.global	_SCSD_cmd_17byte_response
	.code 16
	.thumb_func
	.type	_SCSD_cmd_17byte_response, %function
_SCSD_cmd_17byte_response:
.LFB13:
	.loc 1 206 0
	push	{r4, lr}
.LCFI17:
.LVL41:
	.loc 1 206 0
	mov	r4, r0
	.loc 1 207 0
	mov	r0, r1
.LVL42:
	mov	r1, r2
.LVL43:
	bl	_SCSD_sendCommand
.LVL44:
	.loc 1 208 0
	mov	r0, r4
	mov	r1, #17
	bl	_SCSD_getResponse
	.loc 1 209 0
	@ sp needed for prologue
.LVL45:
	pop	{r4, pc}
.LFE13:
	.size	_SCSD_cmd_17byte_response, .-_SCSD_cmd_17byte_response
	.align	2
	.global	_SCSD_cmd_6byte_response
	.code 16
	.thumb_func
	.type	_SCSD_cmd_6byte_response, %function
_SCSD_cmd_6byte_response:
.LFB12:
	.loc 1 201 0
	push	{r4, lr}
.LCFI18:
.LVL46:
	.loc 1 201 0
	mov	r4, r0
	.loc 1 202 0
	mov	r0, r1
.LVL47:
	mov	r1, r2
.LVL48:
	bl	_SCSD_sendCommand
.LVL49:
	.loc 1 203 0
	mov	r0, r4
	mov	r1, #6
	bl	_SCSD_getResponse
	.loc 1 204 0
	@ sp needed for prologue
.LVL50:
	pop	{r4, pc}
.LFE12:
	.size	_SCSD_cmd_6byte_response, .-_SCSD_cmd_6byte_response
	.align	2
	.global	_SCSD_writeSectors
	.code 16
	.thumb_func
	.type	_SCSD_writeSectors, %function
_SCSD_writeSectors:
.LFB19:
	.loc 1 335 0
	push	{r4, r5, r6, r7, lr}
.LCFI19:
.LVL51:
	sub	sp, sp, #28
.LCFI20:
	.loc 1 338 0
	lsl	r6, r0, #9
.LVL52:
	.loc 1 339 0
	mov	r5, r2
.LVL53:
	.loc 1 335 0
	str	r1, [sp, #4]
	b	.L102
.LVL54:
.L103:
	.loc 1 344 0
	mov	r4, sp
.LVL55:
	add	r4, r4, #10
	mov	r1, #128
	mov	r0, r5
.LVL56:
	lsl	r1, r1, #2
	mov	r2, r4
.LVL57:
	bl	_SD_CRC16
	.loc 1 347 0
	mov	r0, #24
	mov	r1, r6
	bl	_SCSD_sendCommand
	.loc 1 348 0
	mov	r0, sp
	add	r0, r0, #18
	bl	_SCSD_getResponse_R1
	cmp	r0, #0
	beq	.L104
	.loc 1 353 0
	mov	r0, r5
	mov	r1, r4
	bl	_SCSD_writeData_s
	cmp	r0, #0
	beq	.L104
	mov	r2, #16
.LVL58:
.L107:
.LBB22:
.LBB23:
	.loc 1 197 0
	mov	r3, #152
	lsl	r3, r3, #20
	ldrh	r3, [r3]
	.loc 1 198 0
	sub	r2, r2, #1
	bcs	.L107
.LBE23:
.LBE22:
	.loc 1 365 0
	mov	r4, sp
	add	r4, r4, #18
	mov	r3, #0
	strb	r3, [r4, #3]
	.loc 1 367 0
	ldr	r3, .L117
	mov	r0, #13
	ldr	r1, [r3]
	bl	_SCSD_sendCommand
.LVL59:
	.loc 1 368 0
	mov	r0, r4
	bl	_SCSD_getResponse_R1
	ldr	r4, .L117+4
.LVL60:
	b	.L109
.L110:
	.loc 1 367 0
	ldr	r3, .L117
	mov	r0, #13
	ldr	r1, [r3]
	bl	_SCSD_sendCommand
	.loc 1 369 0
	sub	r4, r4, #1
	.loc 1 368 0
	mov	r0, r7
	bl	_SCSD_getResponse_R1
	.loc 1 370 0
	cmp	r4, #0
	beq	.L104
.L109:
	.loc 1 373 0
	mov	r7, sp
	add	r7, r7, #18
	ldrb	r3, [r7, #3]
	mov	r2, #31
	and	r3, r3, r2
	cmp	r3, #9
	bne	.L110
	.loc 1 360 0
	mov	r3, #128
	lsl	r3, r3, #2
	add	r6, r6, r3
	.loc 1 361 0
	add	r5, r5, r3
.LVL61:
.L102:
	.loc 1 342 0
	ldr	r3, [sp, #4]
	sub	r3, r3, #1
	str	r3, [sp, #4]
	bcs	.L103
	mov	r0, #1
.LVL62:
	b	.L113
.LVL63:
.L104:
	mov	r0, #0
.LVL64:
.L113:
	.loc 1 377 0
	add	sp, sp, #28
	@ sp needed for prologue
.LVL65:
.LVL66:
.LVL67:
	pop	{r4, r5, r6, r7, pc}
.L118:
	.align	2
.L117:
	.word	_SCSD_relativeCardAddress
	.word	2999
.LFE19:
	.size	_SCSD_writeSectors, .-_SCSD_writeSectors
	.align	2
	.global	_SCSD_readSectors
	.code 16
	.thumb_func
	.type	_SCSD_readSectors, %function
_SCSD_readSectors:
.LFB18:
	.loc 1 299 0
	push	{r4, r5, r6, lr}
.LCFI21:
.LVL68:
	mov	r6, r1
	sub	sp, sp, #8
.LCFI22:
	.loc 1 299 0
	mov	r4, r2
	lsl	r1, r0, #9
.LVL69:
	.loc 1 304 0
	cmp	r6, #1
	bne	.L120
.LVL70:
	.loc 1 306 0
	mov	r0, #17
.LVL71:
	bl	_SCSD_sendCommand
	cmp	r0, #0
	beq	.L122
	.loc 1 310 0
	mov	r0, r4
	bl	_SCSD_readData
	cmp	r0, #0
	beq	.L122
	b	.L137
.LVL72:
.L120:
	.loc 1 316 0
	mov	r0, #18
.LVL73:
	bl	_SCSD_sendCommand
	cmp	r0, #0
	beq	.L122
	.loc 1 301 0
	mov	r5, #0
.LVL74:
	b	.L127
.LVL75:
.L128:
.LVL76:
	.loc 1 321 0
	mov	r0, r4
	bl	_SCSD_readData
	cmp	r0, #0
	beq	.L122
	.loc 1 320 0
	mov	r3, #128
	lsl	r3, r3, #2
	add	r5, r5, #1
	add	r4, r4, r3
.LVL77:
.L127:
	cmp	r5, r6
	bne	.L128
	.loc 1 327 0
	mov	r1, #0
	mov	r0, #12
	bl	_SCSD_sendCommand
.LBB28:
	.loc 1 179 0
	mov	r0, sp
	add	r0, r0, #2
	mov	r1, #6
	bl	_SCSD_getResponse
.L137:
	mov	r2, #16
.LVL78:
.L134:
.LBE28:
.LBB29:
.LBB30:
	.loc 1 197 0
	mov	r3, #152
	lsl	r3, r3, #20
	ldrh	r3, [r3]
	.loc 1 198 0
	sub	r2, r2, #1
	bcs	.L134
	mov	r0, #1
	b	.L132
.LVL79:
.L122:
	mov	r0, #0
.LVL80:
.L132:
.LBE30:
.LBE29:
	.loc 1 333 0
	add	sp, sp, #8
	@ sp needed for prologue
.LVL81:
.LVL82:
.LVL83:
	pop	{r4, r5, r6, pc}
.LFE18:
	.size	_SCSD_readSectors, .-_SCSD_readSectors
	.global	_io_scsd
	.section	.rodata
	.align	2
	.type	_io_scsd, %object
	.size	_io_scsd, 32
_io_scsd:
	.word	1146307411
	.word	19
	.word	_SCSD_startUp
	.word	_SCSD_isInserted
	.word	_SCSD_readSectors
	.word	_SCSD_writeSectors
	.word	_SCSD_clearStatus
	.word	_SCSD_shutdown
	.bss
	.align	2
_SCSD_relativeCardAddress:
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI3-.LFB15
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI5-.LFB21
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI7-.LFB4
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI9-.LFB17
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
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI11-.LFB14
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI13-.LFB20
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI15-.LFB16
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI17-.LFB13
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI18-.LFB12
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI19-.LFB19
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
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x30
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI21-.LFB18
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
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE24:
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
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB21-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LFB20-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LFB19-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI20-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL54-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LFB18-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x752
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF70
	.byte	0x1
	.4byte	.LASF71
	.4byte	.LASF72
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
	.4byte	0xaf
	.uleb128 0x7
	.4byte	0xd4
	.byte	0x1
	.byte	0x2
	.byte	0x81
	.uleb128 0x8
	.4byte	.LASF14
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF15
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x2
	.byte	0x81
	.4byte	0xbf
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3d
	.4byte	0xea
	.uleb128 0x9
	.byte	0x4
	.4byte	0xf0
	.uleb128 0xa
	.byte	0x1
	.4byte	0xd4
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x3e
	.4byte	0xea
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3f
	.4byte	0x10c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x112
	.uleb128 0xb
	.4byte	0x12c
	.byte	0x1
	.4byte	0xd4
	.uleb128 0xc
	.4byte	0xaf
	.uleb128 0xc
	.4byte	0xaf
	.uleb128 0xc
	.4byte	0x12c
	.byte	0x0
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x40
	.4byte	0x139
	.uleb128 0x9
	.byte	0x4
	.4byte	0x13f
	.uleb128 0xb
	.4byte	0x159
	.byte	0x1
	.4byte	0xd4
	.uleb128 0xc
	.4byte	0xaf
	.uleb128 0xc
	.4byte	0xaf
	.uleb128 0xc
	.4byte	0x159
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x15f
	.uleb128 0xe
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x41
	.4byte	0xea
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x42
	.4byte	0xea
	.uleb128 0xf
	.4byte	0x1f3
	.4byte	.LASF73
	.byte	0x20
	.byte	0x4
	.byte	0x44
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x4
	.byte	0x45
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x4
	.byte	0x46
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x4
	.byte	0x47
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x4
	.byte	0x48
	.4byte	0xf6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x4
	.byte	0x49
	.4byte	0x101
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x4
	.byte	0x4a
	.4byte	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x4
	.byte	0x4b
	.4byte	0x160
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x4
	.byte	0x4c
	.4byte	0x16b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x4
	.byte	0x4f
	.4byte	0x176
	.uleb128 0x9
	.byte	0x4
	.4byte	0x9a
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.4byte	0x231
	.4byte	.LASF32
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0xc2
	.4byte	0xaf
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x1
	.byte	0xc3
	.4byte	0xa4
	.byte	0x0
	.uleb128 0x15
	.4byte	0x297
	.4byte	.LASF33
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x1
	.byte	0x87
	.4byte	0x1fe
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LASF36
	.byte	0x1
	.byte	0x87
	.4byte	0xaf
	.4byte	.LLST2
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x1
	.byte	0x88
	.4byte	0xaf
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF38
	.byte	0x1
	.byte	0x89
	.4byte	0x7e
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF39
	.byte	0x1
	.byte	0x8a
	.4byte	0x7e
	.4byte	.LLST5
	.byte	0x0
	.uleb128 0x15
	.4byte	0x2c3
	.4byte	.LASF40
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST6
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x1
	.byte	0xae
	.4byte	0x1fe
	.4byte	.LLST7
	.byte	0x0
	.uleb128 0x15
	.4byte	0x325
	.4byte	.LASF41
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST8
	.uleb128 0x16
	.4byte	.LASF42
	.byte	0x1
	.byte	0xeb
	.4byte	0x12c
	.4byte	.LLST9
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x1
	.byte	0xec
	.4byte	0x1fe
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0x1
	.byte	0xed
	.4byte	0x325
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	.LASF37
	.byte	0x1
	.byte	0xee
	.4byte	0xba
	.4byte	.LLST11
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x1
	.byte	0xef
	.4byte	0x7e
	.4byte	.LLST12
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa4
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x17f
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LLST13
	.uleb128 0x15
	.4byte	0x3d3
	.4byte	.LASF45
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST14
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0x62
	.4byte	0x9a
	.4byte	.LLST15
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0x62
	.4byte	0xaf
	.4byte	.LLST16
	.uleb128 0x1a
	.4byte	.LASF48
	.byte	0x1
	.byte	0x63
	.4byte	0x3d3
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x18
	.4byte	.LASF49
	.byte	0x1
	.byte	0x64
	.4byte	0x1fe
	.4byte	.LLST17
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0x65
	.4byte	0x7e
	.uleb128 0x18
	.4byte	.LASF38
	.byte	0x1
	.byte	0x66
	.4byte	0xa4
	.4byte	.LLST18
	.uleb128 0x18
	.4byte	.LASF50
	.byte	0x1
	.byte	0x67
	.4byte	0x7e
	.4byte	.LLST19
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x1
	.byte	0x68
	.4byte	0x7e
	.4byte	.LLST20
	.byte	0x0
	.uleb128 0x1b
	.4byte	0x3e3
	.4byte	0x9a
	.uleb128 0x1c
	.4byte	0x3e3
	.byte	0x5
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x7
	.uleb128 0x1d
	.4byte	0x418
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x119
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST21
	.uleb128 0x1e
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x11a
	.4byte	0x3d3
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.byte	0x0
	.uleb128 0x15
	.4byte	0x494
	.4byte	.LASF52
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST22
	.uleb128 0x1f
	.4byte	0x204
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0xd5
	.uleb128 0x20
	.4byte	0x46b
	.4byte	0x20d
	.4byte	.LBB12
	.4byte	.LBE12
	.byte	0x1
	.byte	0xd8
	.uleb128 0x21
	.4byte	0x21a
	.4byte	.LLST23
	.uleb128 0x22
	.4byte	.LBB13
	.4byte	.LBE13
	.uleb128 0x23
	.4byte	0x225
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.4byte	0x20d
	.4byte	.LBB14
	.4byte	.LBE14
	.byte	0x1
	.byte	0xdf
	.uleb128 0x21
	.4byte	0x21a
	.4byte	.LLST24
	.uleb128 0x22
	.4byte	.LBB15
	.4byte	.LBE15
	.uleb128 0x23
	.4byte	0x225
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x17b
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LLST25
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3
	.uleb128 0x1d
	.4byte	0x4e6
	.byte	0x1
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x114
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST26
	.uleb128 0x25
	.4byte	0x4ae
	.4byte	.LBB18
	.4byte	.LBE18
	.byte	0x1
	.2byte	0x115
	.byte	0x0
	.uleb128 0x26
	.4byte	0x531
	.byte	0x1
	.4byte	.LASF59
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST27
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.byte	0xce
	.4byte	0x1fe
	.4byte	.LLST28
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0xce
	.4byte	0x9a
	.4byte	.LLST29
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x1
	.byte	0xce
	.4byte	0xaf
	.4byte	.LLST30
	.byte	0x0
	.uleb128 0x26
	.4byte	0x57c
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0xc9
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST31
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.byte	0xc9
	.4byte	0x1fe
	.4byte	.LLST32
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0xc9
	.4byte	0x9a
	.4byte	.LLST33
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x1
	.byte	0xc9
	.4byte	0xaf
	.4byte	.LLST34
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x640
	.byte	0x1
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x14f
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST35
	.uleb128 0x27
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x14f
	.4byte	0xaf
	.4byte	.LLST36
	.uleb128 0x27
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x14f
	.4byte	0xaf
	.4byte	.LLST37
	.uleb128 0x27
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x14f
	.4byte	0x159
	.4byte	.LLST38
	.uleb128 0x28
	.ascii	"crc\000"
	.byte	0x1
	.2byte	0x150
	.4byte	0x640
	.byte	0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1e
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x151
	.4byte	0x3d3
	.byte	0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x29
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x152
	.4byte	0xaf
	.4byte	.LLST39
	.uleb128 0x29
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x153
	.4byte	0x1fe
	.4byte	.LLST40
	.uleb128 0x2a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x154
	.4byte	0x7e
	.4byte	.LLST41
	.uleb128 0x2b
	.4byte	0x20d
	.4byte	.LBB22
	.4byte	.LBE22
	.byte	0x1
	.2byte	0x166
	.uleb128 0x21
	.4byte	0x21a
	.4byte	.LLST42
	.uleb128 0x22
	.4byte	.LBB23
	.4byte	.LBE23
	.uleb128 0x23
	.4byte	0x225
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.4byte	0x650
	.4byte	0xa4
	.uleb128 0x1c
	.4byte	0x3e3
	.byte	0x3
	.byte	0x0
	.uleb128 0x2c
	.4byte	0x66d
	.4byte	.LASF66
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.4byte	0xd4
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0x1
	.byte	0xb2
	.4byte	0x1fe
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x72c
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x12b
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST43
	.uleb128 0x27
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x12b
	.4byte	0xaf
	.4byte	.LLST44
	.uleb128 0x27
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x12b
	.4byte	0xaf
	.4byte	.LLST45
	.uleb128 0x27
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x12b
	.4byte	0x12c
	.4byte	.LLST46
	.uleb128 0x2a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x12c
	.4byte	0xaf
	.4byte	.LLST47
	.uleb128 0x29
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x12d
	.4byte	0x1fe
	.4byte	.LLST48
	.uleb128 0x1e
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x12e
	.4byte	0x3d3
	.byte	0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x2d
	.4byte	0x702
	.4byte	0x650
	.4byte	.LBB28
	.4byte	.LBE28
	.byte	0x1
	.2byte	0x148
	.uleb128 0x2e
	.4byte	0x661
	.byte	0x0
	.uleb128 0x2b
	.4byte	0x20d
	.4byte	.LBB29
	.4byte	.LBE29
	.byte	0x1
	.2byte	0x14b
	.uleb128 0x21
	.4byte	0x21a
	.4byte	.LLST49
	.uleb128 0x22
	.4byte	.LBB30
	.4byte	.LBE30
	.uleb128 0x23
	.4byte	0x225
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LASF68
	.byte	0x1
	.byte	0x53
	.4byte	0xaf
	.byte	0x5
	.byte	0x3
	.4byte	_SCSD_relativeCardAddress
	.uleb128 0x2f
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x184
	.4byte	0x750
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_io_scsd
	.uleb128 0x30
	.4byte	0x1f3
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x6
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.4byte	0x756
	.4byte	0x32b
	.ascii	"_SCSD_shutdown\000"
	.4byte	0x3ea
	.ascii	"_SCSD_isInserted\000"
	.4byte	0x494
	.ascii	"_SCSD_clearStatus\000"
	.4byte	0x4b7
	.ascii	"_SCSD_startUp\000"
	.4byte	0x4e6
	.ascii	"_SCSD_cmd_17byte_response\000"
	.4byte	0x531
	.ascii	"_SCSD_cmd_6byte_response\000"
	.4byte	0x57c
	.ascii	"_SCSD_writeSectors\000"
	.4byte	0x66d
	.ascii	"_SCSD_readSectors\000"
	.4byte	0x73d
	.ascii	"_io_scsd\000"
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
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF39:
	.ascii	"numBits\000"
.LASF53:
	.ascii	"_SCSD_shutdown\000"
.LASF72:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF19:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF50:
	.ascii	"curBit\000"
.LASF35:
	.ascii	"dest\000"
.LASF60:
	.ascii	"data\000"
.LASF67:
	.ascii	"_SCSD_readSectors\000"
.LASF37:
	.ascii	"temp\000"
.LASF2:
	.ascii	"short int\000"
.LASF26:
	.ascii	"fn_isInserted\000"
.LASF21:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF45:
	.ascii	"_SCSD_sendCommand\000"
.LASF25:
	.ascii	"fn_startup\000"
.LASF36:
	.ascii	"length\000"
.LASF22:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF58:
	.ascii	"_SCSD_startUp\000"
.LASF44:
	.ascii	"buff\000"
.LASF55:
	.ascii	"_SCSD_enable_lite\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF32:
	.ascii	"_SCSD_sendClocks\000"
.LASF63:
	.ascii	"sector\000"
.LASF16:
	.ascii	"bool\000"
.LASF73:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF12:
	.ascii	"float\000"
.LASF54:
	.ascii	"_SCSD_clearStatus\000"
.LASF59:
	.ascii	"_SCSD_cmd_17byte_response\000"
.LASF9:
	.ascii	"long long int\000"
.LASF61:
	.ascii	"_SCSD_cmd_6byte_response\000"
.LASF17:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF6:
	.ascii	"long int\000"
.LASF38:
	.ascii	"dataByte\000"
.LASF51:
	.ascii	"responseBuffer\000"
.LASF31:
	.ascii	"IO_INTERFACE\000"
.LASF27:
	.ascii	"fn_readSectors\000"
.LASF23:
	.ascii	"ioType\000"
.LASF66:
	.ascii	"_SCSD_getResponse_R1b\000"
.LASF29:
	.ascii	"fn_clearStatus\000"
.LASF64:
	.ascii	"numSectors\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF34:
	.ascii	"numClocks\000"
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
.LASF68:
	.ascii	"_SCSD_relativeCardAddress\000"
.LASF33:
	.ascii	"_SCSD_getResponse\000"
.LASF47:
	.ascii	"argument\000"
.LASF24:
	.ascii	"features\000"
.LASF62:
	.ascii	"_SCSD_writeSectors\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF20:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF49:
	.ascii	"tempDataPtr\000"
.LASF57:
	.ascii	"_SCSD_isInserted\000"
.LASF52:
	.ascii	"_SCSD_initCard\000"
.LASF15:
	.ascii	"true\000"
.LASF40:
	.ascii	"_SCSD_getResponse_R1\000"
.LASF42:
	.ascii	"buffer\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF13:
	.ascii	"double\000"
.LASF70:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF69:
	.ascii	"_io_scsd\000"
.LASF43:
	.ascii	"buff_u8\000"
.LASF41:
	.ascii	"_SCSD_readData\000"
.LASF65:
	.ascii	"offset\000"
.LASF56:
	.ascii	"_SCSD_unlock\000"
.LASF71:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_"
	.ascii	"io/io_scsd.c\000"
.LASF28:
	.ascii	"fn_writeSectors\000"
.LASF18:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF48:
	.ascii	"databuff\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF46:
	.ascii	"command\000"
.LASF30:
	.ascii	"fn_shutdown\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
