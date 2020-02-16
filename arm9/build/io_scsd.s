	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
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
	.code	16
	.thumb_func
	.type	_SCSD_getResponse, %function
_SCSD_getResponse:
.LFB3:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_scsd.c"
	.loc 1 135 0
	push	{r4, r5, r6, lr}
.LCFI0:
.LVL0:
	.loc 1 142 0
	mov	r2, #152
	.loc 1 135 0
	ldr	r3, .L17
.LVL1:
	.loc 1 142 0
	lsl	r2, r2, #20
	mov	r4, #1
.L3:
	ldrh	r5, [r2]
	tst	r5, r4
	beq	.L2
	sub	r3, r3, #1
	cmp	r3, #0
	bne	.L3
.L2:
	.loc 1 143 0
	cmp	r0, #0
	beq	.L4
	.loc 1 147 0
	cmp	r3, #0
	bne	.L5
	mov	r0, #0
.LVL2:
	b	.L6
.LVL3:
.L5:
	.loc 1 138 0
	lsl	r1, r1, #3
.LVL4:
	.loc 1 158 0
	mov	r2, #152
	.loc 1 154 0
	sub	r1, r1, #1
.LVL5:
	mov	r3, #0
.LVL6:
	.loc 1 158 0
	lsl	r2, r2, #20
	mov	r5, #1
	.loc 1 159 0
	mov	r4, #7
	.loc 1 157 0
	b	.L15
.L8:
	.loc 1 158 0
	lsl	r6, r3, #1
	ldrh	r3, [r2]
.LVL7:
	.loc 1 157 0
	sub	r1, r1, #1
	.loc 1 158 0
	and	r3, r3, r5
	orr	r3, r3, r6
.LVL8:
	.loc 1 159 0
	tst	r1, r4
	bne	.L15
	.loc 1 161 0
	strb	r3, [r0]
	add	r0, r0, #1
.LVL9:
	mov	r3, #0
.L15:
	.loc 1 157 0
	cmp	r1, #0
	bne	.L8
	.loc 1 168 0
	mov	r3, #152
.LVL10:
	.loc 1 157 0
	mov	r2, #0
.LVL11:
	.loc 1 168 0
	lsl	r3, r3, #20
.L9:
	.loc 1 167 0
	add	r2, r2, #1
	.loc 1 168 0
	ldrh	r1, [r3]
.LVL12:
	.loc 1 167 0
	cmp	r2, #16
	bne	.L9
.LVL13:
.L4:
	mov	r0, #1
.LVL14:
.L6:
	.loc 1 172 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L18:
	.align	2
.L17:
	.word	500000
.LFE3:
	.size	_SCSD_getResponse, .-_SCSD_getResponse
	.align	2
	.code	16
	.thumb_func
	.type	_SCSD_readData, %function
_SCSD_readData:
.LFB13:
	.loc 1 235 0
	push	{r4, lr}
.LCFI1:
.LVL15:
	.loc 1 242 0
	mov	r1, #145
	mov	r2, #128
	.loc 1 235 0
	ldr	r3, .L35
.LVL16:
	sub	sp, sp, #8
.LCFI2:
	.loc 1 242 0
	lsl	r1, r1, #20
	lsl	r2, r2, #1
.L21:
	ldrh	r4, [r1]
	tst	r4, r2
	beq	.L20
	sub	r3, r3, #1
	cmp	r3, #0
	bne	.L21
	b	.L22
.L20:
	.loc 1 243 0
	cmp	r3, #0
	beq	.L22
	mov	r2, #128
	lsl	r2, r2, #2
	.loc 1 236 0
	mov	r3, r0
.LVL17:
	add	r1, r0, r2
	.loc 1 248 0
	lsl	r2, r0, #31
	bmi	.L25
	.loc 1 257 0
	mov	r3, #145
.LVL18:
	lsl	r3, r3, #20
	b	.L24
.LVL19:
.L26:
	.loc 1 250 0
	ldr	r0, [r2]
.LVL20:
	str	r0, [sp, #4]
	.loc 1 251 0
	ldr	r0, [r2]
.LVL21:
	lsr	r0, r0, #16
.LVL22:
	str	r0, [sp, #4]
	.loc 1 252 0
	ldr	r0, [sp, #4]
.LVL23:
	strb	r0, [r3]
	.loc 1 253 0
	ldr	r0, [sp, #4]
	lsr	r0, r0, #8
	strb	r0, [r3, #1]
	.loc 1 235 0
	add	r3, r3, #2
	b	.L34
.LVL24:
.L25:
	.loc 1 250 0
	mov	r2, #145
	lsl	r2, r2, #20
.LVL25:
.L34:
	.loc 1 249 0
	cmp	r3, r1
	bne	.L26
.LVL26:
.L29:
	.loc 1 265 0
	mov	r2, #145
	.loc 1 249 0
	mov	r1, #0
.LVL27:
	.loc 1 265 0
	lsl	r2, r2, #20
	b	.L27
.LVL28:
.L28:
	.loc 1 257 0
	ldr	r2, [r3]
.LVL29:
	str	r2, [sp, #4]
	.loc 1 258 0
	ldr	r2, [r3]
.LVL30:
	lsr	r2, r2, #16
.LVL31:
	str	r2, [sp, #4]
	.loc 1 259 0
	ldr	r2, [sp, #4]
.LVL32:
	strh	r2, [r0]
	add	r0, r0, #2
.LVL33:
.L24:
	.loc 1 256 0
	cmp	r0, r1
	bne	.L28
	b	.L29
.LVL34:
.L27:
	.loc 1 265 0
	ldr	r0, [r2]
.LVL35:
	mov	r3, #145
.LVL36:
	.loc 1 264 0
	add	r1, r1, #1
	.loc 1 265 0
	lsl	r3, r3, #20
	str	r0, [sp, #4]
	.loc 1 264 0
	cmp	r1, #8
	bne	.L27
.LVL37:
	.loc 1 268 0
	ldrh	r3, [r3]
	mov	r0, #1
	str	r3, [sp, #4]
.LVL38:
	.loc 1 270 0
	b	.L30
.LVL39:
.L22:
	mov	r0, #0
.LVL40:
.L30:
	.loc 1 271 0
	add	sp, sp, #8
	@ sp needed for prologue
	pop	{r4, pc}
.L36:
	.align	2
.L35:
	.word	500000
.LFE13:
	.size	_SCSD_readData, .-_SCSD_readData
	.align	2
	.global	_SCSD_shutdown
	.code	16
	.thumb_func
	.type	_SCSD_shutdown, %function
_SCSD_shutdown:
.LFB19:
	.loc 1 383 0
	push	{r4, lr}
.LCFI3:
	.loc 1 384 0
	mov	r0, #1
	bl	_SC_changeMode
	.loc 1 386 0
	@ sp needed for prologue
	mov	r0, #1
	pop	{r4, pc}
.LFE19:
	.size	_SCSD_shutdown, .-_SCSD_shutdown
	.align	2
	.code	16
	.thumb_func
	.type	_SCSD_sendCommand, %function
_SCSD_sendCommand:
.LFB2:
	.loc 1 98 0
	push	{r4, lr}
.LCFI4:
.LVL41:
	sub	sp, sp, #8
.LCFI5:
	.loc 1 106 0
	mov	r3, #64
	mov	r4, sp
	orr	r0, r0, r3
.LVL42:
	.loc 1 107 0
	lsr	r3, r1, #24
	strb	r3, [r4, #1]
	.loc 1 108 0
	lsr	r3, r1, #16
	strb	r3, [r4, #2]
	.loc 1 109 0
	lsr	r3, r1, #8
	.loc 1 106 0
	strb	r0, [r4]
	.loc 1 110 0
	strb	r1, [r4, #4]
	.loc 1 109 0
	strb	r3, [r4, #3]
	.loc 1 111 0
	mov	r1, #5
.LVL43:
	mov	r0, sp
	bl	_SD_CRC7
	.loc 1 114 0
	mov	r1, #152
	.loc 1 111 0
	ldr	r2, .L50
.LVL44:
	strb	r0, [r4, #5]
	.loc 1 114 0
	lsl	r1, r1, #20
	mov	r0, #1
.L41:
	ldrh	r4, [r1]
	mov	r3, #152
	lsl	r3, r3, #20
	tst	r4, r0
	bne	.L40
	sub	r2, r2, #1
	cmp	r2, #0
	bne	.L41
	b	.L42
.L40:
	.loc 1 115 0
	cmp	r2, #0
	beq	.L42
	.loc 1 98 0
	mov	r4, sp
	.loc 1 119 0
	ldrh	r2, [r3]
.LVL45:
	.loc 1 98 0
	add	r4, r4, #6
	mov	r2, sp
.LVL46:
	.loc 1 123 0
	b	.L43
.LVL47:
.L45:
	.loc 1 124 0
	ldrb	r0, [r2]
.LVL48:
	mov	r1, #7
.L44:
	.loc 1 126 0
	strh	r0, [r3]
	.loc 1 127 0
	lsl	r0, r0, #17
.LVL49:
	lsr	r0, r0, #16
.LVL50:
	.loc 1 125 0
	sub	r1, r1, #1
	bcs	.L44
	.loc 1 124 0
	add	r2, r2, #1
.L43:
	.loc 1 123 0
	cmp	r2, r4
	bne	.L45
	mov	r0, #1
.LVL51:
	b	.L46
.LVL52:
.L42:
	mov	r0, #0
.LVL53:
.L46:
	.loc 1 132 0
	add	sp, sp, #8
	@ sp needed for prologue
	pop	{r4, pc}
.L51:
	.align	2
.L50:
	.word	500000
.LFE2:
	.size	_SCSD_sendCommand, .-_SCSD_sendCommand
	.align	2
	.code	16
	.thumb_func
	.type	_SCSD_initCard, %function
_SCSD_initCard:
.LFB12:
	.loc 1 212 0
	push	{r4, lr}
.LCFI6:
.LBB22:
.LBB23:
	.loc 1 95 0
	ldr	r3, .L60
	mov	r2, #0
	strh	r2, [r3]
.LBE23:
.LBE22:
.LBB25:
.LBB26:
	.loc 1 197 0
	mov	r3, #152
.LBE26:
.LBE25:
.LBB28:
.LBB24:
	.loc 1 95 0
	mov	r2, #100
.LVL54:
.LBE24:
.LBE28:
.LBB29:
.LBB27:
	.loc 1 197 0
	lsl	r3, r3, #20
.L53:
	ldrh	r1, [r3]
	.loc 1 198 0
	sub	r2, r2, #1
	bcs	.L53
.LBE27:
.LBE29:
	.loc 1 219 0
	mov	r0, #0
	mov	r1, #0
	bl	_SCSD_sendCommand
.LVL55:
	cmp	r0, #0
	beq	.L55
.LBB30:
.LBB31:
	.loc 1 197 0
	mov	r3, #152
.LBE31:
.LBE30:
	.loc 1 219 0
	mov	r2, #100
.LVL56:
.LBB33:
.LBB32:
	.loc 1 197 0
	lsl	r3, r3, #20
.L56:
	ldrh	r1, [r3]
	.loc 1 198 0
	sub	r2, r2, #1
	bcs	.L56
.LBE32:
.LBE33:
	.loc 1 226 0
	ldr	r3, .L60+4
	mov	r2, #0
.LVL57:
	str	r2, [r3]
	.loc 1 229 0
	ldr	r0, .L60+8
	ldr	r1, .L60+12
	mov	r2, #1
	bl	_SD_InitCard
.L55:
	.loc 1 233 0
	@ sp needed for prologue
	pop	{r4, pc}
.L61:
	.align	2
.L60:
	.word	155451392
	.word	.LANCHOR0
	.word	_SCSD_cmd_6byte_response
	.word	_SCSD_cmd_17byte_response
.LFE12:
	.size	_SCSD_initCard, .-_SCSD_initCard
	.align	2
	.global	_SCSD_clearStatus
	.code	16
	.thumb_func
	.type	_SCSD_clearStatus, %function
_SCSD_clearStatus:
.LFB18:
	.loc 1 379 0
	push	{r4, lr}
.LCFI7:
	.loc 1 380 0
	bl	_SCSD_initCard
	.loc 1 381 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE18:
	.size	_SCSD_clearStatus, .-_SCSD_clearStatus
	.align	2
	.global	_SCSD_startUp
	.code	16
	.thumb_func
	.type	_SCSD_startUp, %function
_SCSD_startUp:
.LFB14:
	.loc 1 276 0
	push	{r4, lr}
.LCFI8:
.LBB34:
.LBB35:
	.loc 1 91 0
	mov	r0, #3
	bl	_SC_changeMode
.LBE35:
.LBE34:
	.loc 1 279 0
	@ sp needed for prologue
	.loc 1 278 0
	bl	_SCSD_initCard
	.loc 1 279 0
	pop	{r4, pc}
.LFE14:
	.size	_SCSD_startUp, .-_SCSD_startUp
	.align	2
	.global	_SCSD_readSectors
	.code	16
	.thumb_func
	.type	_SCSD_readSectors, %function
_SCSD_readSectors:
.LFB16:
	.loc 1 299 0
	push	{r4, r5, r6, lr}
.LCFI9:
.LVL58:
	mov	r6, r1
	sub	sp, sp, #8
.LCFI10:
	.loc 1 299 0
	mov	r4, r2
	lsl	r1, r0, #9
.LVL59:
	.loc 1 304 0
	cmp	r6, #1
	bne	.L67
.LVL60:
	.loc 1 306 0
	mov	r0, #17
.LVL61:
	bl	_SCSD_sendCommand
	cmp	r0, #0
	beq	.L68
	.loc 1 310 0
	mov	r0, r4
	bl	_SCSD_readData
	cmp	r0, #0
	bne	.L76
	b	.L68
.LVL62:
.L67:
	.loc 1 316 0
	mov	r0, #18
.LVL63:
	bl	_SCSD_sendCommand
	cmp	r0, #0
	beq	.L68
	.loc 1 301 0
	mov	r5, #0
.LVL64:
	b	.L70
.LVL65:
.L71:
	.loc 1 321 0
	mov	r0, r4
	bl	_SCSD_readData
	cmp	r0, #0
	beq	.L68
	.loc 1 320 0
	mov	r3, #128
	lsl	r3, r3, #2
	add	r5, r5, #1
	add	r4, r4, r3
.LVL66:
.L70:
	cmp	r5, r6
	bcc	.L71
	.loc 1 327 0
	mov	r1, #0
	mov	r0, #12
	bl	_SCSD_sendCommand
.LBB36:
.LBB37:
	.loc 1 179 0
	mov	r0, sp
	mov	r1, #6
	bl	_SCSD_getResponse
.L76:
.LBE37:
.LBE36:
.LBB39:
.LBB40:
	.loc 1 197 0
	mov	r2, #152
.LBE40:
.LBE39:
.LBB42:
.LBB38:
	.loc 1 179 0
	mov	r3, #16
.LVL67:
.LBE38:
.LBE42:
.LBB43:
.LBB41:
	.loc 1 197 0
	lsl	r2, r2, #20
.L74:
	ldrh	r1, [r2]
	.loc 1 198 0
	sub	r3, r3, #1
	bcs	.L74
	mov	r0, #1
	b	.L72
.LVL68:
.L68:
	mov	r0, #0
.LVL69:
.L72:
.LBE41:
.LBE43:
	.loc 1 333 0
	add	sp, sp, #8
	@ sp needed for prologue
.LVL70:
.LVL71:
.LVL72:
	pop	{r4, r5, r6, pc}
.LFE16:
	.size	_SCSD_readSectors, .-_SCSD_readSectors
	.align	2
	.global	_SCSD_isInserted
	.code	16
	.thumb_func
	.type	_SCSD_isInserted, %function
_SCSD_isInserted:
.LFB15:
	.loc 1 281 0
	push	{r4, lr}
.LCFI11:
	sub	sp, sp, #8
.LCFI12:
	.loc 1 285 0
	mov	r0, #13
	mov	r1, #0
	bl	_SCSD_sendCommand
	cmp	r0, #0
	beq	.L78
.LBB44:
.LBB45:
	.loc 1 175 0
	mov	r0, sp
	mov	r1, #6
	mov	r4, sp
	bl	_SCSD_getResponse
.LBE45:
.LBE44:
	.loc 1 289 0
	cmp	r0, #0
	beq	.L78
	ldrb	r3, [r4]
	sub	r3, r3, #13
	neg	r0, r3
	adc	r0, r0, r3
	b	.L79
.L78:
	mov	r0, #0
.L79:
	.loc 1 297 0
	add	sp, sp, #8
	@ sp needed for prologue
	pop	{r4, pc}
.LFE15:
	.size	_SCSD_isInserted, .-_SCSD_isInserted
	.align	2
	.global	_SCSD_cmd_17byte_response
	.code	16
	.thumb_func
	.type	_SCSD_cmd_17byte_response, %function
_SCSD_cmd_17byte_response:
.LFB11:
	.loc 1 206 0
	push	{r4, lr}
.LCFI13:
.LVL73:
	.loc 1 206 0
	mov	r4, r0
	.loc 1 207 0
	mov	r0, r1
.LVL74:
	mov	r1, r2
.LVL75:
	bl	_SCSD_sendCommand
.LVL76:
	.loc 1 208 0
	mov	r0, r4
	mov	r1, #17
	bl	_SCSD_getResponse
	.loc 1 209 0
	@ sp needed for prologue
.LVL77:
	pop	{r4, pc}
.LFE11:
	.size	_SCSD_cmd_17byte_response, .-_SCSD_cmd_17byte_response
	.align	2
	.global	_SCSD_cmd_6byte_response
	.code	16
	.thumb_func
	.type	_SCSD_cmd_6byte_response, %function
_SCSD_cmd_6byte_response:
.LFB10:
	.loc 1 201 0
	push	{r4, lr}
.LCFI14:
.LVL78:
	.loc 1 201 0
	mov	r4, r0
	.loc 1 202 0
	mov	r0, r1
.LVL79:
	mov	r1, r2
.LVL80:
	bl	_SCSD_sendCommand
.LVL81:
	.loc 1 203 0
	mov	r0, r4
	mov	r1, #6
	bl	_SCSD_getResponse
	.loc 1 204 0
	@ sp needed for prologue
.LVL82:
	pop	{r4, pc}
.LFE10:
	.size	_SCSD_cmd_6byte_response, .-_SCSD_cmd_6byte_response
	.align	2
	.global	_SCSD_writeSectors
	.code	16
	.thumb_func
	.type	_SCSD_writeSectors, %function
_SCSD_writeSectors:
.LFB17:
	.loc 1 335 0
	push	{r4, r5, r6, r7, lr}
.LCFI15:
.LVL83:
	mov	r7, r1
.LBB46:
.LBB48:
	.loc 1 197 0
	mov	r1, #152
.LVL84:
.LBE48:
.LBE46:
	.loc 1 335 0
	sub	sp, sp, #28
.LCFI16:
	.loc 1 338 0
	lsl	r0, r0, #9
.LVL85:
.LBB51:
.LBB49:
	.loc 1 197 0
	lsl	r1, r1, #20
.LBE49:
.LBE51:
	.loc 1 338 0
	str	r0, [sp]
	.loc 1 339 0
	mov	r5, r2
.LVL86:
.LBB52:
.LBB47:
	.loc 1 197 0
	str	r1, [sp, #4]
.LBE47:
.LBE52:
	.loc 1 342 0
	b	.L86
.LVL87:
.L90:
	.loc 1 344 0
	mov	r1, #128
	mov	r0, r5
	lsl	r1, r1, #2
	add	r2, sp, #8
.LVL88:
	bl	_SD_CRC16
	.loc 1 347 0
	ldr	r1, [sp]
	mov	r0, #24
	bl	_SCSD_sendCommand
.LBB53:
.LBB54:
	.loc 1 175 0
	add	r0, sp, #16
	mov	r1, #6
	bl	_SCSD_getResponse
.LBE54:
.LBE53:
	.loc 1 348 0
	cmp	r0, #0
	beq	.L87
	.loc 1 353 0
	mov	r0, r5
	add	r1, sp, #8
	bl	_SCSD_writeData_s
	cmp	r0, #0
	beq	.L87
	mov	r3, #16
.LVL89:
.L88:
.LBB55:
.LBB50:
	.loc 1 197 0
	ldr	r1, [sp, #4]
	ldrh	r2, [r1]
	.loc 1 198 0
	sub	r3, r3, #1
	bcs	.L88
.LVL90:
.LBE50:
.LBE55:
	.loc 1 365 0
	add	r3, sp, #16
.LVL91:
	mov	r2, #0
	ldr	r6, .L95
.LVL92:
	.loc 1 367 0
	ldr	r4, .L95+4
	.loc 1 365 0
	strb	r2, [r3, #3]
.L89:
	.loc 1 367 0
	ldr	r1, [r4]
	mov	r0, #13
	bl	_SCSD_sendCommand
	.loc 1 369 0
	sub	r6, r6, #1
.LVL93:
.LBB56:
.LBB57:
	.loc 1 175 0
	add	r0, sp, #16
	mov	r1, #6
	bl	_SCSD_getResponse
.LBE57:
.LBE56:
	.loc 1 370 0
	cmp	r6, #0
	beq	.L87
	.loc 1 373 0
	mov	r2, sp
	ldrb	r3, [r2, #19]
	mov	r1, #31
	and	r3, r3, r1
	cmp	r3, #9
	bne	.L89
	.loc 1 360 0
	ldr	r2, [sp]
	mov	r3, #128
	lsl	r3, r3, #2
	add	r2, r2, r3
	str	r2, [sp]
	.loc 1 361 0
	add	r5, r5, r3
.LVL94:
	sub	r7, r7, #1
.LVL95:
.L86:
	.loc 1 342 0
	cmp	r7, #0
	bne	.L90
	mov	r0, #1
	b	.L91
.LVL96:
.L87:
	mov	r0, #0
.LVL97:
.L91:
	.loc 1 377 0
	add	sp, sp, #28
	@ sp needed for prologue
.LVL98:
.LVL99:
.LVL100:
	pop	{r4, r5, r6, r7, pc}
.L96:
	.align	2
.L95:
	.word	3000
	.word	.LANCHOR0
.LFE17:
	.size	_SCSD_writeSectors, .-_SCSD_writeSectors
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
	.set	.LANCHOR0,. + 0
	.type	_SCSD_relativeCardAddress, %object
	.size	_SCSD_relativeCardAddress, 4
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
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
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI1-.LFB13
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI3-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI4-.LFB2
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI6-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI7-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI8-.LFB14
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI9-.LFB16
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
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI11-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI13-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI14-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI15-.LFB17
	.byte	0xe
	.uleb128 0x14
	.byte	0x11
	.uleb128 0x4
	.sleb128 5
	.byte	0x11
	.uleb128 0x5
	.sleb128 4
	.byte	0x11
	.uleb128 0x6
	.sleb128 3
	.byte	0x11
	.uleb128 0x7
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x30
	.align	2
.LEFDE22:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL39-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB19-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LFB18-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc_io.h"
	.section	.debug_info
	.4byte	0x775
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x1
	.4byte	.LASF68
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2a
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x36
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x50
	.4byte	0x65
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x3
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x3
	.byte	0x63
	.4byte	0x41
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x64
	.4byte	0x5a
	.uleb128 0x6
	.4byte	0x9d
	.uleb128 0x7
	.byte	0x1
	.byte	0x3
	.byte	0x7d
	.4byte	0xc2
	.uleb128 0x8
	.4byte	.LASF12
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF13
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x7d
	.4byte	0xad
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3d
	.4byte	0xd8
	.uleb128 0x9
	.byte	0x4
	.4byte	0xde
	.uleb128 0xa
	.byte	0x1
	.4byte	0xc2
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3e
	.4byte	0xd8
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3f
	.4byte	0xfa
	.uleb128 0x9
	.byte	0x4
	.4byte	0x100
	.uleb128 0xb
	.byte	0x1
	.4byte	0xc2
	.4byte	0x11a
	.uleb128 0xc
	.4byte	0x9d
	.uleb128 0xc
	.4byte	0x9d
	.uleb128 0xc
	.4byte	0x11a
	.byte	0x0
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x40
	.4byte	0x127
	.uleb128 0x9
	.byte	0x4
	.4byte	0x12d
	.uleb128 0xb
	.byte	0x1
	.4byte	0xc2
	.4byte	0x147
	.uleb128 0xc
	.4byte	0x9d
	.uleb128 0xc
	.4byte	0x9d
	.uleb128 0xc
	.4byte	0x147
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x14d
	.uleb128 0xe
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x41
	.4byte	0xd8
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x42
	.4byte	0xd8
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x20
	.byte	0x4
	.byte	0x44
	.4byte	0x1e1
	.uleb128 0x10
	.4byte	.LASF21
	.byte	0x4
	.byte	0x45
	.4byte	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x4
	.byte	0x46
	.4byte	0x1e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x4
	.byte	0x47
	.4byte	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x4
	.byte	0x48
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x4
	.byte	0x49
	.4byte	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x4
	.byte	0x4a
	.4byte	0x11c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x4
	.byte	0x4b
	.4byte	0x14e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x4
	.byte	0x4c
	.4byte	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF29
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x4
	.byte	0x4f
	.4byte	0x164
	.uleb128 0x9
	.byte	0x4
	.4byte	0x88
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.byte	0x1
	.4byte	0x226
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0xc2
	.4byte	0x9d
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0xc3
	.4byte	0x92
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF35
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.4byte	0xc2
	.byte	0x3
	.4byte	0x24c
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0xb2
	.4byte	0x1f3
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF36
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.4byte	0xc2
	.byte	0x3
	.4byte	0x269
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0xae
	.4byte	0x1f3
	.byte	0x0
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.4byte	0xc2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST0
	.4byte	0x2cf
	.uleb128 0x17
	.4byte	.LASF34
	.byte	0x1
	.byte	0x87
	.4byte	0x1f3
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LASF37
	.byte	0x1
	.byte	0x87
	.4byte	0x9d
	.4byte	.LLST2
	.uleb128 0x18
	.ascii	"i\000"
	.byte	0x1
	.byte	0x88
	.4byte	0x9d
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	.LASF38
	.byte	0x1
	.byte	0x89
	.4byte	0x53
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	.LASF39
	.byte	0x1
	.byte	0x8a
	.4byte	0x53
	.4byte	.LLST5
	.byte	0x0
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.4byte	0xc2
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST6
	.4byte	0x335
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x1
	.byte	0xeb
	.4byte	0x11a
	.4byte	.LLST7
	.uleb128 0x19
	.4byte	.LASF43
	.byte	0x1
	.byte	0xec
	.4byte	0x1f3
	.4byte	.LLST8
	.uleb128 0x19
	.4byte	.LASF44
	.byte	0x1
	.byte	0xed
	.4byte	0x335
	.4byte	.LLST9
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0xee
	.4byte	0xa8
	.4byte	.LLST10
	.uleb128 0x18
	.ascii	"i\000"
	.byte	0x1
	.byte	0xef
	.4byte	0x53
	.4byte	.LLST11
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x92
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x17f
	.byte	0x1
	.4byte	0xc2
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST12
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.4byte	0xc2
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST13
	.4byte	0x3e3
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x1
	.byte	0x62
	.4byte	0x88
	.4byte	.LLST14
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x1
	.byte	0x62
	.4byte	0x9d
	.4byte	.LLST15
	.uleb128 0x1b
	.4byte	.LASF49
	.byte	0x1
	.byte	0x63
	.4byte	0x3e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x19
	.4byte	.LASF50
	.byte	0x1
	.byte	0x64
	.4byte	0x1f3
	.4byte	.LLST16
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x1
	.byte	0x65
	.4byte	0x53
	.uleb128 0x19
	.4byte	.LASF38
	.byte	0x1
	.byte	0x66
	.4byte	0x92
	.4byte	.LLST17
	.uleb128 0x19
	.4byte	.LASF51
	.byte	0x1
	.byte	0x67
	.4byte	0x53
	.4byte	.LLST18
	.uleb128 0x18
	.ascii	"i\000"
	.byte	0x1
	.byte	0x68
	.4byte	0x53
	.4byte	.LLST19
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x88
	.4byte	0x3f3
	.uleb128 0x1d
	.4byte	0x3f3
	.byte	0x5
	.byte	0x0
	.uleb128 0x1e
	.byte	0x4
	.byte	0x7
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x1
	.byte	0xd4
	.byte	0x1
	.4byte	0xc2
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST20
	.4byte	0x46e
	.uleb128 0x1f
	.4byte	0x1f9
	.4byte	.LBB22
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0xd5
	.uleb128 0x20
	.4byte	0x202
	.4byte	.LBB25
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xd8
	.4byte	0x449
	.uleb128 0x21
	.4byte	0x20f
	.4byte	.LLST21
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x23
	.4byte	0x21a
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.4byte	0x202
	.4byte	.LBB30
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0xdf
	.uleb128 0x21
	.4byte	0x20f
	.4byte	.LLST22
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x23
	.4byte	0x21a
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x17b
	.byte	0x1
	.4byte	0xc2
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST23
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x114
	.byte	0x1
	.4byte	0xc2
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST24
	.4byte	0x4b7
	.uleb128 0x26
	.4byte	0x226
	.4byte	.LBB34
	.4byte	.LBE34
	.byte	0x1
	.2byte	0x115
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x12b
	.byte	0x1
	.4byte	0xc2
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST25
	.4byte	0x572
	.uleb128 0x27
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x12b
	.4byte	0x9d
	.4byte	.LLST26
	.uleb128 0x27
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x12b
	.4byte	0x9d
	.4byte	.LLST27
	.uleb128 0x27
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x12b
	.4byte	0x11a
	.4byte	.LLST28
	.uleb128 0x28
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x12c
	.4byte	0x9d
	.4byte	.LLST29
	.uleb128 0x29
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x12d
	.4byte	0x1f3
	.4byte	.LLST30
	.uleb128 0x2a
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x12e
	.4byte	0x3e3
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.4byte	0x22f
	.4byte	.LBB36
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.2byte	0x148
	.4byte	0x54c
	.uleb128 0x2c
	.4byte	0x240
	.byte	0x0
	.uleb128 0x2d
	.4byte	0x202
	.4byte	.LBB39
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.2byte	0x14b
	.uleb128 0x21
	.4byte	0x20f
	.4byte	.LLST31
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0xa8
	.uleb128 0x23
	.4byte	0x21a
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x119
	.byte	0x1
	.4byte	0xc2
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST32
	.4byte	0x5b6
	.uleb128 0x2a
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x11a
	.4byte	0x3e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.4byte	0x24c
	.4byte	.LBB44
	.4byte	.LBE44
	.byte	0x1
	.2byte	0x121
	.uleb128 0x2c
	.4byte	0x25d
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.4byte	0xc2
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST33
	.4byte	0x601
	.uleb128 0x17
	.4byte	.LASF59
	.byte	0x1
	.byte	0xce
	.4byte	0x1f3
	.4byte	.LLST34
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x1
	.byte	0xce
	.4byte	0x88
	.4byte	.LLST35
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.byte	0xce
	.4byte	0x9d
	.4byte	.LLST36
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF63
	.byte	0x1
	.byte	0xc9
	.byte	0x1
	.4byte	0xc2
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST37
	.4byte	0x64c
	.uleb128 0x17
	.4byte	.LASF59
	.byte	0x1
	.byte	0xc9
	.4byte	0x1f3
	.4byte	.LLST38
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x1
	.byte	0xc9
	.4byte	0x88
	.4byte	.LLST39
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.byte	0xc9
	.4byte	0x9d
	.4byte	.LLST40
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x14f
	.byte	0x1
	.4byte	0xc2
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST41
	.4byte	0x73f
	.uleb128 0x27
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x14f
	.4byte	0x9d
	.4byte	.LLST42
	.uleb128 0x27
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x14f
	.4byte	0x9d
	.4byte	.LLST43
	.uleb128 0x27
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x14f
	.4byte	0x147
	.4byte	.LLST44
	.uleb128 0x30
	.ascii	"crc\000"
	.byte	0x1
	.2byte	0x150
	.4byte	0x73f
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x151
	.4byte	0x3e3
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x152
	.4byte	0x9d
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x29
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x153
	.4byte	0x1f3
	.4byte	.LLST45
	.uleb128 0x28
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x154
	.4byte	0x53
	.4byte	.LLST46
	.uleb128 0x2b
	.4byte	0x202
	.4byte	.LBB46
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.2byte	0x166
	.4byte	0x70e
	.uleb128 0x21
	.4byte	0x20f
	.4byte	.LLST47
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0xe8
	.uleb128 0x23
	.4byte	0x21a
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.4byte	0x24c
	.4byte	.LBB53
	.4byte	.LBE53
	.byte	0x1
	.2byte	0x15c
	.4byte	0x728
	.uleb128 0x2c
	.4byte	0x25d
	.byte	0x0
	.uleb128 0x2e
	.4byte	0x24c
	.4byte	.LBB56
	.4byte	.LBE56
	.byte	0x1
	.2byte	0x170
	.uleb128 0x2c
	.4byte	0x25d
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x92
	.4byte	0x74f
	.uleb128 0x1d
	.4byte	0x3f3
	.byte	0x3
	.byte	0x0
	.uleb128 0x1b
	.4byte	.LASF66
	.byte	0x1
	.byte	0x53
	.4byte	0x9d
	.byte	0x5
	.byte	0x3
	.4byte	_SCSD_relativeCardAddress
	.uleb128 0x32
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x184
	.4byte	0x773
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_io_scsd
	.uleb128 0x33
	.4byte	0x1e8
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x26
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
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.4byte	0x779
	.4byte	0x33b
	.ascii	"_SCSD_shutdown\000"
	.4byte	0x46e
	.ascii	"_SCSD_clearStatus\000"
	.4byte	0x488
	.ascii	"_SCSD_startUp\000"
	.4byte	0x4b7
	.ascii	"_SCSD_readSectors\000"
	.4byte	0x572
	.ascii	"_SCSD_isInserted\000"
	.4byte	0x5b6
	.ascii	"_SCSD_cmd_17byte_response\000"
	.4byte	0x601
	.ascii	"_SCSD_cmd_6byte_response\000"
	.4byte	0x64c
	.ascii	"_SCSD_writeSectors\000"
	.4byte	0x760
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
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF39:
	.ascii	"numBits\000"
.LASF32:
	.ascii	"_SCSD_unlock\000"
.LASF53:
	.ascii	"_SCSD_shutdown\000"
.LASF19:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF17:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF43:
	.ascii	"buff_u8\000"
.LASF34:
	.ascii	"dest\000"
.LASF62:
	.ascii	"data\000"
.LASF41:
	.ascii	"_SCSD_readData\000"
.LASF56:
	.ascii	"_SCSD_readSectors\000"
.LASF45:
	.ascii	"temp\000"
.LASF2:
	.ascii	"short int\000"
.LASF21:
	.ascii	"ioType\000"
.LASF24:
	.ascii	"fn_isInserted\000"
.LASF46:
	.ascii	"_SCSD_sendCommand\000"
.LASF20:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF55:
	.ascii	"_SCSD_startUp\000"
.LASF44:
	.ascii	"buff\000"
.LASF31:
	.ascii	"_SCSD_enable_lite\000"
.LASF51:
	.ascii	"curBit\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF70:
	.ascii	"_SCSD_sendClocks\000"
.LASF57:
	.ascii	"sector\000"
.LASF14:
	.ascii	"bool\000"
.LASF15:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF10:
	.ascii	"float\000"
.LASF54:
	.ascii	"_SCSD_clearStatus\000"
.LASF61:
	.ascii	"_SCSD_cmd_17byte_response\000"
.LASF8:
	.ascii	"long long int\000"
.LASF63:
	.ascii	"_SCSD_cmd_6byte_response\000"
.LASF38:
	.ascii	"dataByte\000"
.LASF65:
	.ascii	"offset\000"
.LASF30:
	.ascii	"IO_INTERFACE\000"
.LASF49:
	.ascii	"databuff\000"
.LASF25:
	.ascii	"fn_readSectors\000"
.LASF35:
	.ascii	"_SCSD_getResponse_R1b\000"
.LASF37:
	.ascii	"length\000"
.LASF27:
	.ascii	"fn_clearStatus\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF0:
	.ascii	"signed char\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF7:
	.ascii	"unsigned int\000"
.LASF12:
	.ascii	"false\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF66:
	.ascii	"_SCSD_relativeCardAddress\000"
.LASF40:
	.ascii	"_SCSD_getResponse\000"
.LASF48:
	.ascii	"argument\000"
.LASF69:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF22:
	.ascii	"features\000"
.LASF64:
	.ascii	"_SCSD_writeSectors\000"
.LASF60:
	.ascii	"_SCSD_isInserted\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF18:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF50:
	.ascii	"tempDataPtr\000"
.LASF52:
	.ascii	"_SCSD_initCard\000"
.LASF33:
	.ascii	"numClocks\000"
.LASF13:
	.ascii	"true\000"
.LASF59:
	.ascii	"responseBuffer\000"
.LASF23:
	.ascii	"fn_startup\000"
.LASF36:
	.ascii	"_SCSD_getResponse_R1\000"
.LASF42:
	.ascii	"buffer\000"
.LASF58:
	.ascii	"numSectors\000"
.LASF29:
	.ascii	"long unsigned int\000"
.LASF11:
	.ascii	"double\000"
.LASF71:
	.ascii	"_io_scsd\000"
.LASF68:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/di"
	.ascii	"sc_io/io_scsd.c\000"
.LASF26:
	.ascii	"fn_writeSectors\000"
.LASF16:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF67:
	.ascii	"GNU C 4.4.3\000"
.LASF47:
	.ascii	"command\000"
.LASF28:
	.ascii	"fn_shutdown\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
