	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
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
	.code	16
	.thumb_func
	.type	_M3SD_sendCommand, %function
_M3SD_sendCommand:
.LFB3:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_m3sd.c"
	.loc 1 101 0
	push	{r4, lr}
.LCFI0:
.LVL0:
	.loc 1 102 0
	mov	r3, #152
	mov	r2, #8
	lsl	r3, r3, #20
	.loc 1 103 0
	add	r0, r0, #64
.LVL1:
	.loc 1 102 0
	strh	r2, [r3]
	.loc 1 103 0
	lsl	r0, r0, #16
	mov	r2, #146
	lsr	r0, r0, #16
	lsl	r2, r2, #20
	strh	r0, [r2]
	.loc 1 104 0
	mov	r2, #148
	lsr	r0, r1, #16
	lsl	r2, r2, #20
	strh	r0, [r2]
	.loc 1 105 0
	lsl	r1, r1, #16
.LVL2:
	mov	r2, #150
	lsr	r1, r1, #16
	lsl	r2, r2, #20
	strh	r1, [r2]
	.loc 1 108 0
	mov	r2, #136
	lsl	r2, r2, #20
	mov	r1, #41
	strh	r1, [r2]
.LBB70:
.LBB71:
	.loc 1 80 0
	mov	r0, #1
.LBE71:
.LBE70:
	.loc 1 108 0
	mov	r2, #0
.LVL3:
.LBB73:
.LBB72:
	.loc 1 82 0
	ldr	r1, .L12
	b	.L2
.L4:
	.loc 1 81 0
	add	r2, r2, #1
	.loc 1 82 0
	cmp	r2, r1
	beq	.L3
.L2:
	.loc 1 80 0
	ldrh	r4, [r3]
	tst	r4, r0
	beq	.L4
	b	.L11
.L3:
.LBE72:
.LBE73:
	.loc 1 110 0
	mov	r3, #136
	lsl	r3, r3, #20
	mov	r2, #9
.LVL4:
	strh	r2, [r3]
	mov	r0, #0
.L6:
	.loc 1 115 0
	@ sp needed for prologue
	pop	{r4, pc}
.LVL5:
.L11:
	.loc 1 113 0
	mov	r3, #136
	lsl	r3, r3, #20
	mov	r2, #9
.LVL6:
	strh	r2, [r3]
	mov	r0, #1
	.loc 1 114 0
	b	.L6
.L13:
	.align	2
.L12:
	.word	20000
.LFE3:
	.size	_M3SD_sendCommand, .-_M3SD_sendCommand
	.align	2
	.code	16
	.thumb_func
	.type	_M3SD_getResponse, %function
_M3SD_getResponse:
.LFB6:
	.loc 1 158 0
	push	{r4, r5, r6, r7, lr}
.LCFI1:
.LVL7:
.LBB74:
.LBB75:
	.loc 1 134 0
	mov	r2, #136
	lsl	r2, r2, #20
	.loc 1 135 0
	mov	r3, #152
.LBE75:
.LBE74:
	.loc 1 158 0
	sub	sp, sp, #20
.LCFI2:
	.loc 1 158 0
	mov	r4, #0
.LVL8:
.LBB77:
.LBB76:
	.loc 1 134 0
	mov	r6, #2
	.loc 1 135 0
	lsl	r3, r3, #20
	mov	ip, r2
.LVL9:
.L21:
	.loc 1 134 0
	mov	r2, ip
	strh	r6, [r2]
	.loc 1 135 0
	mov	r5, #0
.LVL10:
	strh	r6, [r3]
	.loc 1 138 0
	mov	r7, #8
	b	.L15
.L17:
	.loc 1 140 0
	ldr	r2, .L57
	.loc 1 139 0
	add	r5, r5, #1
.LVL11:
	.loc 1 140 0
	cmp	r5, r2
	beq	.L16
.L15:
	.loc 1 138 0
	ldrh	r2, [r3]
	tst	r2, r7
	beq	.L17
	mov	r2, #0
.LVL12:
	.loc 1 146 0
	mov	r5, #8
	b	.L18
.L19:
	.loc 1 148 0
	ldr	r7, .L57
	.loc 1 147 0
	add	r2, r2, #1
.LVL13:
	.loc 1 148 0
	cmp	r2, r7
	beq	.L16
.L18:
	.loc 1 146 0
	ldrh	r7, [r3]
	tst	r7, r5
	bne	.L19
	.loc 1 154 0
	mov	r2, #144
.LVL14:
	lsl	r2, r2, #20
	ldrh	r5, [r2]
	lsl	r5, r5, #24
	lsr	r5, r5, #24
.LVL15:
.LBE76:
.LBE77:
	.loc 1 166 0
	cmp	r5, #255
	bne	.L20
.LVL16:
.L16:
	.loc 1 164 0
	mov	r2, #128
	add	r4, r4, #1
.LVL17:
	lsl	r2, r2, #1
	cmp	r4, r2
	bne	.L21
	mov	r5, #255
.LVL18:
.L20:
	.loc 1 171 0
	cmp	r0, #0
	bne	.LCB192
	b	.L56	@long jump
.LCB192:
	.loc 1 176 0
	cmp	r5, #255
	bne	.LCB194
	b	.L24	@long jump
.LCB194:
.LBB78:
.LBB80:
	.loc 1 135 0
	mov	r2, #152
.LBE80:
.LBE78:
	.loc 1 176 0
	mov	r4, #0
.LVL19:
.LBB82:
.LBB79:
	.loc 1 135 0
	lsl	r2, r2, #20
	.loc 1 138 0
	mov	r6, #8
	b	.L25
.LVL20:
.L32:
	.loc 1 134 0
	mov	r3, #136
.LVL21:
.LBE79:
.LBE82:
	.loc 1 182 0
	strb	r5, [r0, r4]
.LBB83:
.LBB81:
	.loc 1 134 0
	lsl	r3, r3, #20
	mov	r5, #2
.LVL22:
	strh	r5, [r3]
	.loc 1 135 0
	strh	r5, [r2]
	mov	r3, #0
.LVL23:
	.loc 1 140 0
	ldr	r5, .L57
	b	.L26
.L28:
	.loc 1 139 0
	add	r3, r3, #1
	.loc 1 140 0
	cmp	r3, r5
	beq	.L27
.L26:
	.loc 1 138 0
	ldrh	r7, [r2]
	tst	r7, r6
	beq	.L28
	mov	r3, #0
.LVL24:
	.loc 1 148 0
	ldr	r5, .L57
	b	.L29
.L30:
	.loc 1 147 0
	add	r3, r3, #1
	.loc 1 148 0
	cmp	r3, r5
	beq	.L27
.L29:
	.loc 1 146 0
	ldrh	r7, [r2]
	tst	r7, r6
	bne	.L30
	.loc 1 154 0
	mov	r3, #144
.LVL25:
	lsl	r3, r3, #20
	ldrh	r5, [r3]
	lsl	r5, r5, #24
	lsr	r5, r5, #24
.LVL26:
	b	.L31
.LVL27:
.L27:
	mov	r5, #255
.LVL28:
.L31:
.LBE81:
.LBE83:
	.loc 1 181 0
	add	r4, r4, #1
.LVL29:
.L25:
	cmp	r4, r1
	bcc	.L32
.LBB84:
.LBB85:
	.loc 1 134 0
	mov	r3, #136
.LVL30:
	mov	r2, #2
	lsl	r3, r3, #20
	strh	r2, [r3]
	.loc 1 135 0
	mov	r3, #152
	lsl	r3, r3, #20
	strh	r2, [r3]
	.loc 1 138 0
	mov	r6, #8
	.loc 1 135 0
	mov	r2, #0
.LVL31:
	.loc 1 140 0
	ldr	r4, .L57
.LVL32:
	b	.L33
.L35:
	.loc 1 139 0
	add	r2, r2, #1
.LVL33:
	.loc 1 140 0
	cmp	r2, r4
	beq	.L34
.L33:
	.loc 1 138 0
	ldrh	r7, [r3]
	tst	r7, r6
	beq	.L35
	.loc 1 146 0
	mov	r3, #152
	.loc 1 138 0
	mov	r2, #0
.LVL34:
	.loc 1 146 0
	lsl	r3, r3, #20
	mov	r6, #8
	.loc 1 148 0
	ldr	r4, .L57
	b	.L36
.L37:
	.loc 1 147 0
	add	r2, r2, #1
.LVL35:
	.loc 1 148 0
	cmp	r2, r4
	beq	.L34
.L36:
	.loc 1 146 0
	ldrh	r7, [r3]
	tst	r7, r6
	bne	.L37
	.loc 1 154 0
	mov	r3, #144
	lsl	r3, r3, #20
	ldrh	r3, [r3]
.L34:
.LBE85:
.LBE84:
.LBB86:
.LBB87:
	.loc 1 134 0
	mov	r3, #136
	mov	r2, #2
.LVL36:
	lsl	r3, r3, #20
	strh	r2, [r3]
	.loc 1 135 0
	mov	r3, #152
	lsl	r3, r3, #20
	strh	r2, [r3]
	.loc 1 138 0
	mov	r6, #8
	.loc 1 135 0
	mov	r2, #0
.LVL37:
	.loc 1 140 0
	ldr	r4, .L57
	b	.L38
.L40:
	.loc 1 139 0
	add	r2, r2, #1
.LVL38:
	.loc 1 140 0
	cmp	r2, r4
	beq	.L39
.L38:
	.loc 1 138 0
	ldrh	r7, [r3]
	tst	r7, r6
	beq	.L40
	.loc 1 146 0
	mov	r3, #152
	.loc 1 138 0
	mov	r2, #0
.LVL39:
	.loc 1 146 0
	lsl	r3, r3, #20
	mov	r6, #8
	.loc 1 148 0
	ldr	r4, .L57
	b	.L41
.L42:
	.loc 1 147 0
	add	r2, r2, #1
.LVL40:
	.loc 1 148 0
	cmp	r2, r4
	beq	.L39
.L41:
	.loc 1 146 0
	ldrh	r7, [r3]
	tst	r7, r6
	bne	.L42
	.loc 1 154 0
	mov	r3, #144
	lsl	r3, r3, #20
	ldrh	r3, [r3]
.L39:
.LBE87:
.LBE86:
	.loc 1 193 0
	ldrb	r4, [r0]
	mov	r3, #0
.LVL41:
	mov	r2, #128
.LVL42:
	b	.L43
.L44:
	.loc 1 194 0
	cmp	r3, #7
	beq	.L24
	.loc 1 193 0
	add	r3, r3, #1
.LVL43:
.L43:
	mov	r6, r4
	lsl	r6, r6, r3
	tst	r6, r2
	bne	.L44
	.loc 1 200 0
	mov	r6, #8
	sub	r6, r6, r3
	.loc 1 193 0
	mov	r2, r0
	mov	r4, #0
.LVL44:
	.loc 1 199 0
	sub	r1, r1, #1
.LVL45:
	str	r6, [sp, #4]
	b	.L45
.LVL46:
.L46:
	.loc 1 200 0
	ldr	r6, [sp, #4]
	ldrb	r7, [r2, #1]
	add	r4, r4, #1
.LVL47:
	asr	r7, r7, r6
	mov	ip, r7
	ldrb	r7, [r2]
	mov	r6, ip
	lsl	r7, r7, r3
	orr	r7, r7, r6
	strb	r7, [r2]
	add	r2, r2, #1
.LVL48:
.L45:
	.loc 1 199 0
	cmp	r4, r1
	bcc	.L46
.LVL49:
	.loc 1 203 0
	mov	r2, #8
	sub	r2, r2, r3
	add	r0, r0, r1
.LVL50:
	asr	r5, r5, r2
.LVL51:
	ldrb	r2, [r0]
	lsl	r2, r2, r3
	mov	r3, r2
.LVL52:
	orr	r3, r3, r5
	strb	r3, [r0]
.LVL53:
.L56:
	mov	r0, #1
.LVL54:
	.loc 1 205 0
	b	.L23
.LVL55:
.L24:
	mov	r0, #0
.LVL56:
.L23:
	.loc 1 206 0
	add	sp, sp, #20
	@ sp needed for prologue
.LVL57:
.LVL58:
	pop	{r4, r5, r6, r7, pc}
.L58:
	.align	2
.L57:
	.word	20000
.LFE6:
	.size	_M3SD_getResponse, .-_M3SD_getResponse
	.align	2
	.global	_M3SD_cmd_6byte_response
	.code	16
	.thumb_func
	.type	_M3SD_cmd_6byte_response, %function
_M3SD_cmd_6byte_response:
.LFB14:
	.loc 1 241 0
	push	{r4, lr}
.LCFI3:
.LVL59:
	.loc 1 241 0
	mov	r4, r0
	.loc 1 242 0
	mov	r0, r1
.LVL60:
	mov	r1, r2
.LVL61:
	bl	_M3SD_sendCommand
.LVL62:
	.loc 1 243 0
	mov	r0, r4
	mov	r1, #6
	bl	_M3SD_getResponse
	.loc 1 244 0
	@ sp needed for prologue
.LVL63:
	pop	{r4, pc}
.LFE14:
	.size	_M3SD_cmd_6byte_response, .-_M3SD_cmd_6byte_response
	.align	2
	.global	_M3SD_cmd_17byte_response
	.code	16
	.thumb_func
	.type	_M3SD_cmd_17byte_response, %function
_M3SD_cmd_17byte_response:
.LFB15:
	.loc 1 246 0
	push	{r4, lr}
.LCFI4:
.LVL64:
	.loc 1 246 0
	mov	r4, r0
	.loc 1 247 0
	mov	r0, r1
.LVL65:
	mov	r1, r2
.LVL66:
	bl	_M3SD_sendCommand
.LVL67:
	.loc 1 248 0
	mov	r0, r4
	mov	r1, #17
	bl	_M3SD_getResponse
	.loc 1 249 0
	@ sp needed for prologue
.LVL68:
	pop	{r4, pc}
.LFE15:
	.size	_M3SD_cmd_17byte_response, .-_M3SD_cmd_17byte_response
	.align	2
	.code	16
	.thumb_func
	.type	_M3SD_readData, %function
_M3SD_readData:
.LFB17:
	.loc 1 272 0
	push	{r4, r5, r6, lr}
.LCFI5:
.LVL69:
	.loc 1 278 0
	mov	r3, #136
	lsl	r3, r3, #20
	mov	r2, #73
	strh	r2, [r3]
.LBB88:
.LBB89:
	.loc 1 91 0
	mov	r3, #152
.LBE89:
.LBE88:
	.loc 1 278 0
	mov	r2, #0
.LVL70:
.LBB91:
.LBB90:
	.loc 1 91 0
	lsl	r3, r3, #20
	mov	r5, #64
	.loc 1 93 0
	ldr	r4, .L80
	b	.L64
.L66:
	.loc 1 92 0
	add	r2, r2, #1
	.loc 1 93 0
	cmp	r2, r4
	beq	.L65
.L64:
	.loc 1 91 0
	ldrh	r6, [r3]
	mov	r1, #152
	lsl	r1, r1, #20
	tst	r6, r5
	beq	.L66
	b	.L79
.L65:
.LBE90:
.LBE91:
	.loc 1 280 0
	mov	r3, #136
	lsl	r3, r3, #20
	mov	r2, #9
.LVL71:
	strh	r2, [r3]
	mov	r0, #0
.LVL72:
	.loc 1 281 0
	b	.L68
.LVL73:
.L69:
	.loc 1 294 0
	ldrh	r0, [r3]
.LVL74:
	.loc 1 295 0
	strb	r0, [r2]
	.loc 1 296 0
	lsr	r0, r0, #8
	strb	r0, [r2, #1]
	.loc 1 272 0
	add	r2, r2, #2
.LVL75:
.L77:
	.loc 1 292 0
	cmp	r2, r1
	bne	.L69
	b	.L70
.LVL76:
.L71:
	.loc 1 300 0
	ldrh	r2, [r3]
.LVL77:
	strh	r2, [r0]
	add	r0, r0, #2
.LVL78:
.L73:
	.loc 1 299 0
	cmp	r0, r1
	bne	.L71
.L70:
	.loc 1 303 0
	mov	r3, #136
	lsl	r3, r3, #20
	ldrh	r2, [r3]
.LVL79:
	ldrh	r2, [r3]
	ldrh	r2, [r3]
	ldrh	r3, [r3]
	mov	r0, #1
.LVL80:
.L68:
	.loc 1 306 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.LVL81:
.L79:
	.loc 1 283 0
	mov	r3, #136
	lsl	r3, r3, #20
	mov	r4, #9
	strh	r4, [r3]
	.loc 1 285 0
	mov	r4, #8
	strh	r4, [r3]
	.loc 1 286 0
	mov	r4, #4
	strh	r4, [r1]
	mov	r4, #128
	lsl	r4, r4, #2
	.loc 1 288 0
	ldrh	r1, [r3]
	.loc 1 274 0
	mov	r2, r0
.LVL82:
	add	r1, r0, r4
	.loc 1 291 0
	lsl	r4, r0, #31
	bmi	.L77
	b	.L73
.L81:
	.align	2
.L80:
	.word	20000
.LFE17:
	.size	_M3SD_readData, .-_M3SD_readData
	.align	2
	.global	_M3SD_isInserted
	.code	16
	.thumb_func
	.type	_M3SD_isInserted, %function
_M3SD_isInserted:
.LFB22:
	.loc 1 397 0
	push	{r4, lr}
.LCFI6:
	sub	sp, sp, #8
.LCFI7:
	.loc 1 400 0
	mov	r0, #13
	mov	r1, #0
	bl	_M3SD_sendCommand
	cmp	r0, #0
	beq	.L83
.LBB92:
.LBB93:
	.loc 1 210 0
	mov	r0, sp
	mov	r1, #6
	mov	r4, sp
	bl	_M3SD_getResponse
.LBE93:
.LBE92:
	.loc 1 404 0
	cmp	r0, #0
	beq	.L83
	ldrb	r3, [r4]
	sub	r3, r3, #13
	neg	r0, r3
	adc	r0, r0, r3
	b	.L84
.L83:
	mov	r0, #0
.L84:
	.loc 1 412 0
	add	sp, sp, #8
	@ sp needed for prologue
	pop	{r4, pc}
.LFE22:
	.size	_M3SD_isInserted, .-_M3SD_isInserted
	.align	2
	.global	_M3SD_readSectors
	.code	16
	.thumb_func
	.type	_M3SD_readSectors, %function
_M3SD_readSectors:
.LFB23:
	.loc 1 414 0
	push	{r4, r5, r6, r7, lr}
.LCFI8:
.LVL83:
	mov	r7, r1
	sub	sp, sp, #12
.LCFI9:
	.loc 1 414 0
	mov	r4, r2
	lsl	r1, r0, #9
.LVL84:
	.loc 1 419 0
	cmp	r7, #1
	bne	.L87
.LVL85:
	.loc 1 421 0
	mov	r0, #17
.LVL86:
	bl	_M3SD_sendCommand
	cmp	r0, #0
	beq	.L88
	.loc 1 425 0
	mov	r0, r4
	bl	_M3SD_readData
	sub	r3, r0, #1
	sbc	r0, r0, r3
	b	.L89
.LVL87:
.L87:
	.loc 1 431 0
	mov	r0, #18
.LVL88:
	bl	_M3SD_sendCommand
	cmp	r0, #0
	beq	.L88
	.loc 1 439 0
	mov	r6, #152
	.loc 1 416 0
	mov	r5, #0
.LVL89:
	.loc 1 439 0
	lsl	r6, r6, #20
	b	.L90
.LVL90:
.L91:
	.loc 1 436 0
	mov	r0, r4
	bl	_M3SD_readData
	cmp	r0, #0
	beq	.L88
	.loc 1 439 0
	mov	r3, #8
	strh	r3, [r6]
	.loc 1 435 0
	mov	r3, #128
	lsl	r3, r3, #2
	add	r5, r5, #1
	add	r4, r4, r3
.LVL91:
.L90:
	cmp	r5, r7
	bcc	.L91
	.loc 1 443 0
	mov	r1, #0
	mov	r0, #12
	bl	_M3SD_sendCommand
.LBB94:
.LBB95:
	.loc 1 214 0
	mov	r0, sp
	mov	r1, #6
	bl	_M3SD_getResponse
	mov	r0, #1
	b	.L89
.L88:
	mov	r0, #0
.L89:
.LBE95:
.LBE94:
	.loc 1 448 0
	add	sp, sp, #12
	@ sp needed for prologue
.LVL92:
.LVL93:
.LVL94:
	pop	{r4, r5, r6, r7, pc}
.LFE23:
	.size	_M3SD_readSectors, .-_M3SD_readSectors
	.align	2
	.global	_M3SD_shutdown
	.code	16
	.thumb_func
	.type	_M3SD_shutdown, %function
_M3SD_shutdown:
.LFB26:
	.loc 1 502 0
	push	{r4, lr}
.LCFI10:
	.loc 1 503 0
	ldr	r0, .L95
	bl	_M3_changeMode
	.loc 1 505 0
	@ sp needed for prologue
	mov	r0, #1
	pop	{r4, pc}
.L96:
	.align	2
.L95:
	.word	4194308
.LFE26:
	.size	_M3SD_shutdown, .-_M3SD_shutdown
	.align	2
	.code	16
	.thumb_func
	.type	_M3SD_initCard, %function
_M3SD_initCard:
.LFB16:
	.loc 1 251 0
	push	{r4, r5, r6, lr}
.LCFI11:
.LBB96:
.LBB97:
.LBB98:
.LBB99:
	.loc 1 121 0
	mov	r3, #152
.LBE99:
.LBE98:
.LBE97:
.LBE96:
	.loc 1 251 0
	mov	r2, #100
.LVL95:
.LBB103:
.LBB102:
.LBB101:
.LBB100:
	.loc 1 121 0
	lsl	r3, r3, #20
	.loc 1 122 0
	mov	r0, #4
	b	.L115
.LVL96:
.L101:
	.loc 1 119 0
	mov	r1, #144
.LVL97:
	lsl	r1, r1, #20
	mov	r4, #255
	strh	r4, [r1]
	.loc 1 120 0
	mov	r1, #136
	lsl	r1, r1, #20
	mov	r4, #3
	strh	r4, [r1]
	.loc 1 121 0
	mov	r1, #1
	strh	r1, [r3]
	.loc 1 124 0
	ldr	r4, .L117
	.loc 1 121 0
	mov	r1, #0
.LVL98:
	b	.L99
.L100:
	.loc 1 123 0
	add	r1, r1, #1
	.loc 1 124 0
	cmp	r1, r4
	beq	.L115
.L99:
	.loc 1 122 0
	ldrh	r5, [r3]
	tst	r5, r0
	beq	.L100
.L115:
.LBE100:
.LBE101:
	.loc 1 230 0
	sub	r2, r2, #1
	bcs	.L101
.LBE102:
.LBE103:
	.loc 1 256 0
	mov	r0, #0
	mov	r1, #0
.LVL99:
	bl	_M3SD_sendCommand
.LVL100:
	cmp	r0, #0
	beq	.L103
.LBB104:
.LBB105:
.LBB106:
.LBB107:
	.loc 1 135 0
	mov	r3, #152
.LBE107:
.LBE106:
.LBE105:
.LBE104:
	.loc 1 256 0
	mov	r2, #100
.LVL101:
.LBB111:
.LBB110:
.LBB109:
.LBB108:
	.loc 1 135 0
	lsl	r3, r3, #20
	.loc 1 138 0
	mov	r0, #8
	b	.L116
.LVL102:
.L109:
	.loc 1 134 0
	mov	r1, #136
.LVL103:
	mov	r4, #2
	lsl	r1, r1, #20
	strh	r4, [r1]
	.loc 1 135 0
	strh	r4, [r3]
	mov	r1, #0
.LVL104:
	.loc 1 140 0
	ldr	r4, .L117
	b	.L105
.L106:
	.loc 1 139 0
	add	r1, r1, #1
	.loc 1 140 0
	cmp	r1, r4
	beq	.L116
.L105:
	.loc 1 138 0
	ldrh	r5, [r3]
	tst	r5, r0
	beq	.L106
	mov	r1, #0
.LVL105:
	.loc 1 148 0
	ldr	r4, .L117
	b	.L107
.L108:
	.loc 1 147 0
	add	r1, r1, #1
	.loc 1 148 0
	cmp	r1, r4
	beq	.L116
.L107:
	.loc 1 146 0
	ldrh	r5, [r3]
	tst	r5, r0
	bne	.L108
	.loc 1 154 0
	mov	r1, #144
.LVL106:
	lsl	r1, r1, #20
	ldrh	r1, [r1]
.LVL107:
.L116:
.LBE108:
.LBE109:
	.loc 1 236 0
	sub	r2, r2, #1
	bcs	.L109
.LBE110:
.LBE111:
	.loc 1 263 0
	ldr	r3, .L117+4
	mov	r2, #0
.LVL108:
	str	r2, [r3]
	.loc 1 266 0
	ldr	r0, .L117+8
	ldr	r1, .L117+12
.LVL109:
	mov	r2, #1
	bl	_SD_InitCard
.L103:
	.loc 1 270 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L118:
	.align	2
.L117:
	.word	20000
	.word	.LANCHOR0
	.word	_M3SD_cmd_6byte_response
	.word	_M3SD_cmd_17byte_response
.LFE16:
	.size	_M3SD_initCard, .-_M3SD_initCard
	.align	2
	.global	_M3SD_clearStatus
	.code	16
	.thumb_func
	.type	_M3SD_clearStatus, %function
_M3SD_clearStatus:
.LFB25:
	.loc 1 498 0
	push	{r4, lr}
.LCFI12:
	.loc 1 499 0
	bl	_M3SD_initCard
	.loc 1 500 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE25:
	.size	_M3SD_clearStatus, .-_M3SD_clearStatus
	.align	2
	.global	_M3SD_startUp
	.code	16
	.thumb_func
	.type	_M3SD_startUp, %function
_M3SD_startUp:
.LFB21:
	.loc 1 392 0
	push	{r4, lr}
.LCFI13:
.LBB112:
.LBB113:
	.loc 1 75 0
	ldr	r0, .L123
	bl	_M3_changeMode
.LBE113:
.LBE112:
	.loc 1 395 0
	@ sp needed for prologue
	.loc 1 394 0
	bl	_M3SD_initCard
	.loc 1 395 0
	pop	{r4, pc}
.L124:
	.align	2
.L123:
	.word	4194307
.LFE21:
	.size	_M3SD_startUp, .-_M3SD_startUp
	.align	2
	.global	_M3SD_writeSectors
	.code	16
	.thumb_func
	.type	_M3SD_writeSectors, %function
_M3SD_writeSectors:
.LFB24:
	.loc 1 450 0
	push	{r4, r5, r6, r7, lr}
.LCFI14:
.LVL110:
	sub	sp, sp, #28
.LCFI15:
	.loc 1 453 0
	lsl	r0, r0, #9
.LVL111:
	.loc 1 450 0
	mov	r7, r1
	.loc 1 457 0
	mov	r1, #128
.LVL112:
	.loc 1 453 0
	str	r0, [sp, #4]
	.loc 1 454 0
	mov	r5, r2
.LVL113:
	.loc 1 457 0
	mov	r0, r2
	lsl	r1, r1, #2
	add	r2, sp, #8
.LVL114:
	.loc 1 466 0
	mov	r4, #136
	.loc 1 457 0
	bl	_SD_CRC16
	.loc 1 466 0
	lsl	r4, r4, #20
	.loc 1 459 0
	b	.L126
.L135:
	.loc 1 461 0
	ldr	r1, [sp, #4]
	mov	r0, #24
	bl	_M3SD_sendCommand
.LBB114:
.LBB115:
	.loc 1 210 0
	add	r0, sp, #16
	mov	r1, #6
	bl	_M3SD_getResponse
.LBE115:
.LBE114:
	.loc 1 462 0
	cmp	r0, #0
	beq	.L127
	.loc 1 466 0
	mov	r3, #4
	strh	r3, [r4]
	.loc 1 467 0
	mov	r3, #152
	lsl	r3, r3, #20
	mov	r0, #0
.LBB116:
.LBB117:
	.loc 1 348 0
	mov	r2, #144
.LBE117:
.LBE116:
	.loc 1 467 0
	strh	r0, [r3]
.LBB147:
.LBB146:
.LBB118:
.LBB119:
	.loc 1 327 0
	mov	r1, #8
.LBE119:
.LBE118:
	.loc 1 348 0
	lsl	r2, r2, #20
.L128:
.LBB121:
.LBB120:
	.loc 1 326 0
	mov	r3, #0
	strh	r3, [r4]
	.loc 1 327 0
	strh	r1, [r4]
.LBE120:
.LBE121:
	.loc 1 348 0
	ldrh	r0, [r2]
	mov	r3, #144
	lsl	r3, r3, #20
	lsl	r6, r0, #23
	bpl	.L128
	.loc 1 350 0
	mov	r2, #0
.LBB122:
.LBB123:
	.loc 1 309 0
	mov	r0, #136
.LBE123:
.LBE122:
	.loc 1 350 0
	strh	r2, [r3]
.LBB125:
.LBB124:
	.loc 1 309 0
	lsl	r0, r0, #20
	mov	r2, #4
	strh	r2, [r0]
	.loc 1 310 0
	mov	r2, #12
	strh	r2, [r0]
	mov	r2, #0
.LVL115:
.LBE124:
.LBE125:
.LBB126:
.LBB127:
	.loc 1 309 0
	mov	r0, #4
.L129:
.LBE127:
.LBE126:
	.loc 1 355 0
	ldrb	r6, [r5, r2]
.LVL116:
	.loc 1 354 0
	add	r2, r2, #1
.LVL117:
	.loc 1 356 0
	lsr	r1, r6, #4
	strh	r1, [r3]
.LBB129:
.LBB128:
	.loc 1 310 0
	mov	r1, #12
	.loc 1 309 0
	strh	r0, [r4]
	.loc 1 310 0
	strh	r1, [r4]
.LBE128:
.LBE129:
	.loc 1 358 0
	strh	r6, [r3]
.LBB130:
.LBB131:
	.loc 1 309 0
	strh	r0, [r4]
	.loc 1 310 0
	strh	r1, [r4]
.LBE131:
.LBE130:
	.loc 1 354 0
	mov	r1, #128
	lsl	r1, r1, #2
	cmp	r2, r1
	bne	.L129
	.loc 1 450 0
	add	r2, sp, #16
.LVL118:
	.loc 1 365 0
	mov	r3, #144
	.loc 1 450 0
	mov	ip, r2
	.loc 1 365 0
	lsl	r3, r3, #20
	.loc 1 450 0
	add	r2, sp, #8
.LVL119:
.LBB132:
.LBB133:
	.loc 1 309 0
	mov	r1, #4
.L130:
.LBE133:
.LBE132:
	.loc 1 364 0
	ldrb	r6, [r2]
.LVL120:
	add	r2, r2, #1
.LVL121:
	.loc 1 365 0
	lsr	r0, r6, #4
	strh	r0, [r3]
.LBB135:
.LBB134:
	.loc 1 310 0
	mov	r0, #12
	.loc 1 309 0
	strh	r1, [r4]
	.loc 1 310 0
	strh	r0, [r4]
.LBE134:
.LBE135:
	.loc 1 367 0
	strh	r6, [r3]
.LBB136:
.LBB137:
	.loc 1 309 0
	strh	r1, [r4]
	.loc 1 310 0
	strh	r0, [r4]
.LBE137:
.LBE136:
	.loc 1 363 0
	cmp	r2, ip
	bne	.L130
	.loc 1 378 0
	mov	r3, #144
	.loc 1 363 0
	mov	r2, #0
.LVL122:
	.loc 1 378 0
	lsl	r3, r3, #20
	mov	r6, #255
.LVL123:
.LBB138:
.LBB139:
	.loc 1 309 0
	mov	r0, #4
	.loc 1 310 0
	mov	r1, #12
.L131:
.LBE139:
.LBE138:
	.loc 1 377 0
	add	r2, r2, #1
.LVL124:
	.loc 1 378 0
	strh	r6, [r3]
.LBB141:
.LBB140:
	.loc 1 309 0
	strh	r0, [r4]
	.loc 1 310 0
	strh	r1, [r4]
.LBE140:
.LBE141:
	.loc 1 377 0
	cmp	r2, #32
	bne	.L131
	.loc 1 384 0
	mov	r3, #144
.LBB142:
.LBB143:
	.loc 1 327 0
	mov	r2, #8
.LVL125:
.LBE143:
.LBE142:
	.loc 1 384 0
	lsl	r3, r3, #20
.L138:
.LBB145:
.LBB144:
	.loc 1 326 0
	mov	r6, #0
	strh	r6, [r4]
	.loc 1 327 0
	strh	r2, [r4]
.LBE144:
.LBE145:
	.loc 1 384 0
	ldrh	r1, [r3]
	lsl	r0, r1, #23
	bpl	.L138
.LBE146:
.LBE147:
	.loc 1 459 0
	sub	r7, r7, #1
.LVL126:
	.loc 1 474 0
	cmp	r7, #0
	beq	.L133
	.loc 1 475 0
	ldr	r1, [sp, #4]
	mov	r2, #128
	lsl	r2, r2, #2
	add	r1, r1, r2
	.loc 1 476 0
	add	r5, r5, r2
.LVL127:
	.loc 1 475 0
	str	r1, [sp, #4]
	.loc 1 478 0
	mov	r1, #128
	mov	r0, r5
	lsl	r1, r1, #2
	add	r2, sp, #8
	bl	_SD_CRC16
.L133:
	.loc 1 483 0
	mov	r6, #0
	add	r3, sp, #16
	ldr	r0, .L145
	strb	r6, [r3, #3]
	.loc 1 485 0
	ldr	r6, .L145+4
	.loc 1 483 0
	str	r0, [sp]
.L134:
	.loc 1 485 0
	ldr	r1, [r6]
	mov	r0, #13
	bl	_M3SD_sendCommand
.LBB148:
.LBB149:
	.loc 1 210 0
	mov	r1, #6
	add	r0, sp, #16
	bl	_M3SD_getResponse
.LBE149:
.LBE148:
	.loc 1 487 0
	ldr	r1, [sp]
	sub	r1, r1, #1
	str	r1, [sp]
	.loc 1 488 0
	cmp	r1, #0
	beq	.L127
	.loc 1 491 0
	mov	r2, sp
	ldrb	r3, [r2, #19]
	mov	r0, #31
	and	r3, r3, r0
	cmp	r3, #9
	bne	.L134
.L126:
	.loc 1 459 0
	cmp	r7, #0
	beq	.LCB1325
	b	.L135	@long jump
.LCB1325:
	mov	r0, #1
	b	.L136
.L127:
	mov	r0, #0
.L136:
	.loc 1 496 0
	add	sp, sp, #28
	@ sp needed for prologue
.LVL128:
.LVL129:
	pop	{r4, r5, r6, r7, pc}
.L146:
	.align	2
.L145:
	.word	3000
	.word	.LANCHOR0
.LFE24:
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
	.set	.LANCHOR0,. + 0
	.type	_M3SD_relativeCardAddress, %object
	.size	_M3SD_relativeCardAddress, 4
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
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
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI3-.LFB14
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI4-.LFB15
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI5-.LFB17
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI6-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI8-.LFB23
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
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI10-.LFB26
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI11-.LFB16
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
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI12-.LFB25
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI13-.LFB21
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI14-.LFB24
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
	.4byte	.LCFI15-.LCFI14
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
	.sleb128 8
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
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL57-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL81-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LFB22-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LFB23-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LFB26-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LFB25-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LFB21-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LFB24-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc_io.h"
	.section	.debug_info
	.4byte	0x942
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x1
	.4byte	.LASF74
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
	.byte	0x1
	.byte	0x3
	.byte	0x7d
	.4byte	0xbd
	.uleb128 0x7
	.4byte	.LASF12
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF13
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x7d
	.4byte	0xa8
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3d
	.4byte	0xd3
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x9
	.byte	0x1
	.4byte	0xbd
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3e
	.4byte	0xd3
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3f
	.4byte	0xf5
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfb
	.uleb128 0xa
	.byte	0x1
	.4byte	0xbd
	.4byte	0x115
	.uleb128 0xb
	.4byte	0x9d
	.uleb128 0xb
	.4byte	0x9d
	.uleb128 0xb
	.4byte	0x115
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x40
	.4byte	0x122
	.uleb128 0x8
	.byte	0x4
	.4byte	0x128
	.uleb128 0xa
	.byte	0x1
	.4byte	0xbd
	.4byte	0x142
	.uleb128 0xb
	.4byte	0x9d
	.uleb128 0xb
	.4byte	0x9d
	.uleb128 0xb
	.4byte	0x142
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x148
	.uleb128 0xd
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x41
	.4byte	0xd3
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x42
	.4byte	0xd3
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x20
	.byte	0x4
	.byte	0x44
	.4byte	0x1dc
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x4
	.byte	0x45
	.4byte	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x4
	.byte	0x46
	.4byte	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x4
	.byte	0x47
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x4
	.byte	0x48
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x4
	.byte	0x49
	.4byte	0xea
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x4
	.byte	0x4a
	.4byte	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x4
	.byte	0x4b
	.4byte	0x149
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x4
	.byte	0x4c
	.4byte	0x154
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
	.4byte	0x15f
	.uleb128 0x8
	.byte	0x4
	.4byte	0x88
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.4byte	0xbd
	.byte	0x3
	.4byte	0x20f
	.uleb128 0x11
	.ascii	"i\000"
	.byte	0x1
	.byte	0x4f
	.4byte	0x53
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.4byte	0x88
	.byte	0x1
	.4byte	0x22a
	.uleb128 0x11
	.ascii	"i\000"
	.byte	0x1
	.byte	0x84
	.4byte	0x53
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.4byte	0xbd
	.byte	0x1
	.4byte	0x250
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.byte	0x75
	.4byte	0x88
	.uleb128 0x11
	.ascii	"i\000"
	.byte	0x1
	.byte	0x76
	.4byte	0x53
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.4byte	0xbd
	.byte	0x3
	.4byte	0x26b
	.uleb128 0x11
	.ascii	"i\000"
	.byte	0x1
	.byte	0x5a
	.4byte	0x53
	.byte	0x0
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x145
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x134
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.4byte	0xbd
	.byte	0x3
	.4byte	0x29c
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0xd1
	.4byte	0x1ee
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.4byte	0xbd
	.byte	0x3
	.4byte	0x2b9
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0xd5
	.4byte	0x1ee
	.byte	0x0
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x1
	.byte	0xe5
	.byte	0x1
	.byte	0x1
	.4byte	0x2d2
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x1
	.byte	0xe5
	.4byte	0x9d
	.byte	0x0
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.byte	0x1
	.4byte	0x2eb
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x1
	.byte	0xeb
	.4byte	0x9d
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.byte	0x3
	.uleb128 0x16
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x156
	.byte	0x1
	.4byte	0xbd
	.byte	0x1
	.4byte	0x335
	.uleb128 0x17
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x156
	.4byte	0x1ee
	.uleb128 0x18
	.ascii	"crc\000"
	.byte	0x1
	.2byte	0x156
	.4byte	0x1ee
	.uleb128 0x19
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x157
	.4byte	0x53
	.uleb128 0x1a
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x158
	.4byte	0x88
	.byte	0x0
	.uleb128 0x1b
	.4byte	.LASF50
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST0
	.4byte	0x38f
	.uleb128 0x1c
	.4byte	.LASF48
	.byte	0x1
	.byte	0x65
	.4byte	0x92
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	.LASF49
	.byte	0x1
	.byte	0x65
	.4byte	0x9d
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	0x1f4
	.4byte	.LBB70
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x6d
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x1f
	.4byte	0x205
	.4byte	.LLST3
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.4byte	.LASF51
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST4
	.4byte	0x485
	.uleb128 0x1c
	.4byte	.LASF39
	.byte	0x1
	.byte	0x9e
	.4byte	0x1ee
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	.LASF52
	.byte	0x1
	.byte	0x9e
	.4byte	0x9d
	.4byte	.LLST6
	.uleb128 0x20
	.ascii	"i\000"
	.byte	0x1
	.byte	0x9f
	.4byte	0x9d
	.4byte	.LLST7
	.uleb128 0x21
	.4byte	.LASF53
	.byte	0x1
	.byte	0xa0
	.4byte	0x88
	.4byte	.LLST8
	.uleb128 0x21
	.4byte	.LASF54
	.byte	0x1
	.byte	0xa1
	.4byte	0x53
	.4byte	.LLST9
	.uleb128 0x22
	.4byte	0x20f
	.4byte	.LBB74
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xa5
	.4byte	0x417
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x1f
	.4byte	0x220
	.4byte	.LLST10
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.4byte	0x20f
	.4byte	.LBB78
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xb7
	.4byte	0x43a
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x80
	.uleb128 0x1f
	.4byte	0x220
	.4byte	.LLST11
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	0x20f
	.4byte	.LBB84
	.4byte	.LBE84
	.byte	0x1
	.byte	0xbc
	.4byte	0x461
	.uleb128 0x24
	.4byte	.LBB85
	.4byte	.LBE85
	.uleb128 0x1f
	.4byte	0x220
	.4byte	.LLST12
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.4byte	0x20f
	.4byte	.LBB86
	.4byte	.LBE86
	.byte	0x1
	.byte	0xbd
	.uleb128 0x24
	.4byte	.LBB87
	.4byte	.LBE87
	.uleb128 0x1f
	.4byte	0x220
	.4byte	.LLST13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF56
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST14
	.4byte	0x4d0
	.uleb128 0x1c
	.4byte	.LASF55
	.byte	0x1
	.byte	0xf1
	.4byte	0x1ee
	.4byte	.LLST15
	.uleb128 0x1c
	.4byte	.LASF48
	.byte	0x1
	.byte	0xf1
	.4byte	0x88
	.4byte	.LLST16
	.uleb128 0x1c
	.4byte	.LASF46
	.byte	0x1
	.byte	0xf1
	.4byte	0x9d
	.4byte	.LLST17
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST18
	.4byte	0x51b
	.uleb128 0x1c
	.4byte	.LASF55
	.byte	0x1
	.byte	0xf6
	.4byte	0x1ee
	.4byte	.LLST19
	.uleb128 0x1c
	.4byte	.LASF48
	.byte	0x1
	.byte	0xf6
	.4byte	0x88
	.4byte	.LLST20
	.uleb128 0x1c
	.4byte	.LASF46
	.byte	0x1
	.byte	0xf6
	.4byte	0x9d
	.4byte	.LLST21
	.byte	0x0
	.uleb128 0x27
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x110
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST22
	.4byte	0x59f
	.uleb128 0x28
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x110
	.4byte	0x115
	.4byte	.LLST23
	.uleb128 0x19
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x111
	.4byte	0x9d
	.uleb128 0x29
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x112
	.4byte	0x1ee
	.4byte	.LLST24
	.uleb128 0x29
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x113
	.4byte	0x59f
	.4byte	.LLST25
	.uleb128 0x1a
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x114
	.4byte	0x92
	.uleb128 0x2a
	.4byte	0x250
	.4byte	.LBB88
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x117
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0xb8
	.uleb128 0x1f
	.4byte	0x261
	.4byte	.LLST26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x92
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x18d
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LLST27
	.4byte	0x5e9
	.uleb128 0x2c
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x18e
	.4byte	0x5e9
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.4byte	0x27f
	.4byte	.LBB92
	.4byte	.LBE92
	.byte	0x1
	.2byte	0x194
	.uleb128 0x2e
	.4byte	0x290
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x88
	.4byte	0x5f9
	.uleb128 0x30
	.4byte	0x5f9
	.byte	0x5
	.byte	0x0
	.uleb128 0x31
	.byte	0x4
	.byte	0x7
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x19e
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST28
	.4byte	0x68e
	.uleb128 0x28
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x19e
	.4byte	0x9d
	.4byte	.LLST29
	.uleb128 0x28
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x19e
	.4byte	0x9d
	.4byte	.LLST30
	.uleb128 0x28
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x19e
	.4byte	0x115
	.4byte	.LLST31
	.uleb128 0x32
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x19f
	.4byte	0x9d
	.4byte	.LLST32
	.uleb128 0x29
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x1ee
	.4byte	.LLST33
	.uleb128 0x2c
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x5e9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.4byte	0x29c
	.4byte	.LBB94
	.4byte	.LBE94
	.byte	0x1
	.2byte	0x1bc
	.uleb128 0x2e
	.4byte	0x2ad
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1f6
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST34
	.uleb128 0x1b
	.4byte	.LASF66
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST35
	.4byte	0x73f
	.uleb128 0x22
	.4byte	0x2b9
	.4byte	.LBB96
	.4byte	.Ldebug_ranges0+0xd0
	.byte	0x1
	.byte	0xfd
	.4byte	0x705
	.uleb128 0x34
	.4byte	0x2c6
	.4byte	.LLST36
	.uleb128 0x1d
	.4byte	0x22a
	.4byte	.LBB98
	.4byte	.Ldebug_ranges0+0xe8
	.byte	0x1
	.byte	0xe7
	.uleb128 0x2e
	.4byte	0x23b
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x100
	.uleb128 0x1f
	.4byte	0x246
	.4byte	.LLST37
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.4byte	0x2d2
	.4byte	.LBB104
	.4byte	.Ldebug_ranges0+0x118
	.byte	0x1
	.2byte	0x104
	.uleb128 0x34
	.4byte	0x2df
	.4byte	.LLST38
	.uleb128 0x1d
	.4byte	0x20f
	.4byte	.LBB106
	.4byte	.Ldebug_ranges0+0x130
	.byte	0x1
	.byte	0xed
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x148
	.uleb128 0x1f
	.4byte	0x220
	.4byte	.LLST39
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.byte	0x1
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1f2
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST40
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x188
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LLST41
	.4byte	0x788
	.uleb128 0x35
	.4byte	0x2eb
	.4byte	.LBB112
	.4byte	.LBE112
	.byte	0x1
	.2byte	0x189
	.byte	0x0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1c2
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LLST42
	.4byte	0x90c
	.uleb128 0x28
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x9d
	.4byte	.LLST43
	.uleb128 0x28
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x9d
	.4byte	.LLST44
	.uleb128 0x28
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x142
	.4byte	.LLST45
	.uleb128 0x36
	.ascii	"crc\000"
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x90c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x5e9
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x9d
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x29
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x1ee
	.4byte	.LLST46
	.uleb128 0x36
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x53
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x37
	.4byte	0x27f
	.4byte	.LBB114
	.4byte	.LBE114
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x83a
	.uleb128 0x2e
	.4byte	0x290
	.byte	0x0
	.uleb128 0x38
	.4byte	0x2f4
	.4byte	.LBB116
	.4byte	.Ldebug_ranges0+0x160
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x8f5
	.uleb128 0x34
	.4byte	0x312
	.4byte	.LLST47
	.uleb128 0x2e
	.4byte	0x306
	.uleb128 0x1e
	.4byte	.Ldebug_ranges0+0x178
	.uleb128 0x1f
	.4byte	0x31e
	.4byte	.LLST48
	.uleb128 0x1f
	.4byte	0x328
	.4byte	.LLST49
	.uleb128 0x39
	.4byte	0x26b
	.4byte	.LBB118
	.4byte	.Ldebug_ranges0+0x190
	.byte	0x1
	.2byte	0x15b
	.uleb128 0x39
	.4byte	0x275
	.4byte	.LBB122
	.4byte	.Ldebug_ranges0+0x1a8
	.byte	0x1
	.2byte	0x160
	.uleb128 0x39
	.4byte	0x275
	.4byte	.LBB126
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.2byte	0x165
	.uleb128 0x35
	.4byte	0x275
	.4byte	.LBB130
	.4byte	.LBE130
	.byte	0x1
	.2byte	0x167
	.uleb128 0x39
	.4byte	0x275
	.4byte	.LBB132
	.4byte	.Ldebug_ranges0+0x1d8
	.byte	0x1
	.2byte	0x16e
	.uleb128 0x35
	.4byte	0x275
	.4byte	.LBB136
	.4byte	.LBE136
	.byte	0x1
	.2byte	0x170
	.uleb128 0x39
	.4byte	0x275
	.4byte	.LBB138
	.4byte	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.2byte	0x17b
	.uleb128 0x39
	.4byte	0x26b
	.4byte	.LBB142
	.4byte	.Ldebug_ranges0+0x208
	.byte	0x1
	.2byte	0x17f
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.4byte	0x27f
	.4byte	.LBB148
	.4byte	.LBE148
	.byte	0x1
	.2byte	0x1e6
	.uleb128 0x2e
	.4byte	0x290
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x88
	.4byte	0x91c
	.uleb128 0x30
	.4byte	0x5f9
	.byte	0x7
	.byte	0x0
	.uleb128 0x3a
	.4byte	.LASF72
	.byte	0x1
	.byte	0x45
	.4byte	0x9d
	.byte	0x5
	.byte	0x3
	.4byte	_M3SD_relativeCardAddress
	.uleb128 0x3b
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x940
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_io_m3sd
	.uleb128 0x3c
	.4byte	0x1e3
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
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
	.uleb128 0x6
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x2
	.uleb128 0xa
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
	.4byte	0x946
	.4byte	0x485
	.ascii	"_M3SD_cmd_6byte_response\000"
	.4byte	0x4d0
	.ascii	"_M3SD_cmd_17byte_response\000"
	.4byte	0x5a5
	.ascii	"_M3SD_isInserted\000"
	.4byte	0x5fc
	.ascii	"_M3SD_readSectors\000"
	.4byte	0x68e
	.ascii	"_M3SD_shutdown\000"
	.4byte	0x73f
	.ascii	"_M3SD_clearStatus\000"
	.4byte	0x759
	.ascii	"_M3SD_startUp\000"
	.4byte	0x788
	.ascii	"_M3SD_writeSectors\000"
	.4byte	0x92d
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
	.4byte	.LBB70-.Ltext0
	.4byte	.LBE70-.Ltext0
	.4byte	.LBB73-.Ltext0
	.4byte	.LBE73-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB71-.Ltext0
	.4byte	.LBE71-.Ltext0
	.4byte	.LBB72-.Ltext0
	.4byte	.LBE72-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB74-.Ltext0
	.4byte	.LBE74-.Ltext0
	.4byte	.LBB77-.Ltext0
	.4byte	.LBE77-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB78-.Ltext0
	.4byte	.LBE78-.Ltext0
	.4byte	.LBB83-.Ltext0
	.4byte	.LBE83-.Ltext0
	.4byte	.LBB82-.Ltext0
	.4byte	.LBE82-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB80-.Ltext0
	.4byte	.LBE80-.Ltext0
	.4byte	.LBB81-.Ltext0
	.4byte	.LBE81-.Ltext0
	.4byte	.LBB79-.Ltext0
	.4byte	.LBE79-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB88-.Ltext0
	.4byte	.LBE88-.Ltext0
	.4byte	.LBB91-.Ltext0
	.4byte	.LBE91-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB89-.Ltext0
	.4byte	.LBE89-.Ltext0
	.4byte	.LBB90-.Ltext0
	.4byte	.LBE90-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB96-.Ltext0
	.4byte	.LBE96-.Ltext0
	.4byte	.LBB103-.Ltext0
	.4byte	.LBE103-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB98-.Ltext0
	.4byte	.LBE98-.Ltext0
	.4byte	.LBB101-.Ltext0
	.4byte	.LBE101-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB99-.Ltext0
	.4byte	.LBE99-.Ltext0
	.4byte	.LBB100-.Ltext0
	.4byte	.LBE100-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB104-.Ltext0
	.4byte	.LBE104-.Ltext0
	.4byte	.LBB111-.Ltext0
	.4byte	.LBE111-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB106-.Ltext0
	.4byte	.LBE106-.Ltext0
	.4byte	.LBB109-.Ltext0
	.4byte	.LBE109-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB107-.Ltext0
	.4byte	.LBE107-.Ltext0
	.4byte	.LBB108-.Ltext0
	.4byte	.LBE108-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB116-.Ltext0
	.4byte	.LBE116-.Ltext0
	.4byte	.LBB147-.Ltext0
	.4byte	.LBE147-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB117-.Ltext0
	.4byte	.LBE117-.Ltext0
	.4byte	.LBB146-.Ltext0
	.4byte	.LBE146-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB118-.Ltext0
	.4byte	.LBE118-.Ltext0
	.4byte	.LBB121-.Ltext0
	.4byte	.LBE121-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB122-.Ltext0
	.4byte	.LBE122-.Ltext0
	.4byte	.LBB125-.Ltext0
	.4byte	.LBE125-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB126-.Ltext0
	.4byte	.LBE126-.Ltext0
	.4byte	.LBB129-.Ltext0
	.4byte	.LBE129-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB132-.Ltext0
	.4byte	.LBE132-.Ltext0
	.4byte	.LBB135-.Ltext0
	.4byte	.LBE135-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB138-.Ltext0
	.4byte	.LBE138-.Ltext0
	.4byte	.LBB141-.Ltext0
	.4byte	.LBE141-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB142-.Ltext0
	.4byte	.LBE142-.Ltext0
	.4byte	.LBB145-.Ltext0
	.4byte	.LBE145-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF69:
	.ascii	"_M3SD_startUp\000"
.LASF19:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF17:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF74:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/di"
	.ascii	"sc_io/io_m3sd.c\000"
.LASF60:
	.ascii	"buff_u8\000"
.LASF39:
	.ascii	"dest\000"
.LASF34:
	.ascii	"_M3SD_waitForDataReady\000"
.LASF47:
	.ascii	"temp\000"
.LASF2:
	.ascii	"short int\000"
.LASF21:
	.ascii	"ioType\000"
.LASF24:
	.ascii	"fn_isInserted\000"
.LASF50:
	.ascii	"_M3SD_sendCommand\000"
.LASF63:
	.ascii	"_M3SD_readSectors\000"
.LASF20:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF70:
	.ascii	"_M3SD_writeSectors\000"
.LASF46:
	.ascii	"data\000"
.LASF61:
	.ascii	"buff\000"
.LASF68:
	.ascii	"_M3SD_clearStatus\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF31:
	.ascii	"_M3SD_waitOnBusy\000"
.LASF64:
	.ascii	"sector\000"
.LASF14:
	.ascii	"bool\000"
.LASF15:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF35:
	.ascii	"_M3SD_clkin\000"
.LASF10:
	.ascii	"float\000"
.LASF8:
	.ascii	"long long int\000"
.LASF62:
	.ascii	"_M3SD_isInserted\000"
.LASF53:
	.ascii	"dataByte\000"
.LASF67:
	.ascii	"_M3SD_shutdown\000"
.LASF30:
	.ascii	"IO_INTERFACE\000"
.LASF25:
	.ascii	"fn_readSectors\000"
.LASF58:
	.ascii	"_M3SD_readData\000"
.LASF38:
	.ascii	"byte\000"
.LASF52:
	.ascii	"length\000"
.LASF57:
	.ascii	"_M3SD_cmd_17byte_response\000"
.LASF27:
	.ascii	"fn_clearStatus\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF56:
	.ascii	"_M3SD_cmd_6byte_response\000"
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
.LASF49:
	.ascii	"argument\000"
.LASF75:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF22:
	.ascii	"features\000"
.LASF44:
	.ascii	"_M3SD_unlock\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF18:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF40:
	.ascii	"_M3SD_getResponse_R1b\000"
.LASF45:
	.ascii	"_M3SD_writeData\000"
.LASF41:
	.ascii	"numClocks\000"
.LASF13:
	.ascii	"true\000"
.LASF55:
	.ascii	"responseBuffer\000"
.LASF23:
	.ascii	"fn_startup\000"
.LASF54:
	.ascii	"shiftAmount\000"
.LASF59:
	.ascii	"buffer\000"
.LASF65:
	.ascii	"numSectors\000"
.LASF36:
	.ascii	"_M3SD_clkout\000"
.LASF29:
	.ascii	"long unsigned int\000"
.LASF11:
	.ascii	"double\000"
.LASF72:
	.ascii	"_M3SD_relativeCardAddress\000"
.LASF76:
	.ascii	"_io_m3sd\000"
.LASF42:
	.ascii	"_M3SD_sendClocks\000"
.LASF71:
	.ascii	"offset\000"
.LASF37:
	.ascii	"_M3SD_getResponse_R1\000"
.LASF26:
	.ascii	"fn_writeSectors\000"
.LASF33:
	.ascii	"_M3SD_sendByte\000"
.LASF16:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF73:
	.ascii	"GNU C 4.4.3\000"
.LASF43:
	.ascii	"_M3SD_getClocks\000"
.LASF51:
	.ascii	"_M3SD_getResponse\000"
.LASF48:
	.ascii	"command\000"
.LASF32:
	.ascii	"_M3SD_getByte\000"
.LASF66:
	.ascii	"_M3SD_initCard\000"
.LASF28:
	.ascii	"fn_shutdown\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
