	.code	16
	.file	"io_nmmc.c"
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
	.type	_Neo_EnableEEPROM, %function
_Neo_EnableEEPROM:
.LFB6:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_nmmc.c"
	.loc 1 69 0
	push	{lr}
.LCFI0:
.LVL0:
.LBB60:
.LBB61:
	.loc 1 48 0
	ldr	r3, .L15
	ldr	r2, .L15+4
	ldrb	r3, [r3]
	orr	r3, r3, r2
	lsl	r3, r3, #16
	ldr	r2, .L15+8
	lsr	r3, r3, #16
	strh	r3, [r2]
.LBE61:
.LBE60:
	.loc 1 71 0
	cmp	r0, #0
	beq	.L2
.LBB62:
.LBB63:
	.loc 1 53 0
	ldr	r3, .L15+12
	mov	r2, #6
	strb	r2, [r3]
.L4:
	.loc 1 54 0
	ldr	r3, .L15+8
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L4
	b	.L14
.L2:
.LBE63:
.LBE62:
.LBB64:
.LBB65:
	.loc 1 53 0
	ldr	r3, .L15+12
	mov	r2, #14
	strb	r2, [r3]
.L7:
	.loc 1 54 0
	ldr	r3, .L15+8
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L7
.L14:
	.loc 1 55 0
	ldr	r3, .L15+12
.LBE65:
.LBE64:
.LBB66:
.LBB67:
	.loc 1 60 0
	mov	r2, #0
.LBE67:
.LBE66:
.LBB68:
.LBB69:
	.loc 1 55 0
	ldrb	r3, [r3]
.LBE69:
.LBE68:
.LBB70:
.LBB71:
	.loc 1 60 0
	ldr	r3, .L15+8
.LBE71:
.LBE70:
	.loc 1 74 0
	@ sp needed for prologue
.LBB72:
.LBB73:
	.loc 1 60 0
	strh	r2, [r3]
.LBE73:
.LBE72:
	.loc 1 74 0
	pop	{pc}
.L16:
	.align	2
.L15:
	.word	_NMMC_spi_freq
	.word	-24512
	.word	67109280
	.word	67109282
.LFE6:
	.size	_Neo_EnableEEPROM, .-_Neo_EnableEEPROM
	.align	2
	.code 16
	.thumb_func
	.type	_Neo_SendMMCCommand, %function
_Neo_SendMMCCommand:
.LFB11:
	.loc 1 127 0
	push	{lr}
.LCFI1:
.LVL1:
.LBB74:
.LBB75:
	.loc 1 53 0
	mov	r3, #1
	ldr	r2, .L51
	neg	r3, r3
	strb	r3, [r2]
.L18:
	.loc 1 54 0
	ldr	r3, .L51+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L18
	.loc 1 55 0
	ldr	r2, .L51
	ldrb	r3, [r2]
.LBE75:
.LBE74:
	.loc 1 129 0
	mov	r3, #64
	orr	r3, r3, r0
	lsl	r3, r3, #24
	lsr	r3, r3, #24
.LBB76:
.LBB77:
	.loc 1 53 0
	strb	r3, [r2]
.L20:
	.loc 1 54 0
	ldr	r3, .L51+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L20
	.loc 1 55 0
	ldr	r3, .L51
	ldrb	r2, [r3]
.LBE77:
.LBE76:
	.loc 1 130 0
	lsr	r2, r1, #24
.LBB78:
.LBB79:
	.loc 1 53 0
	strb	r2, [r3]
.L22:
	.loc 1 54 0
	ldr	r3, .L51+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L22
	.loc 1 55 0
	ldr	r3, .L51
	ldrb	r2, [r3]
.LBE79:
.LBE78:
	.loc 1 131 0
	lsl	r2, r1, #8
	lsr	r2, r2, #24
.LBB80:
.LBB81:
	.loc 1 53 0
	strb	r2, [r3]
.L24:
	.loc 1 54 0
	ldr	r3, .L51+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L24
	.loc 1 55 0
	ldr	r3, .L51
	ldrb	r2, [r3]
.LBE81:
.LBE80:
	.loc 1 132 0
	lsl	r2, r1, #16
	lsr	r2, r2, #24
.LBB82:
.LBB83:
	.loc 1 53 0
	strb	r2, [r3]
.L26:
	.loc 1 54 0
	ldr	r3, .L51+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L26
	.loc 1 55 0
	ldr	r3, .L51
	ldrb	r2, [r3]
.LBE83:
.LBE82:
	.loc 1 133 0
	lsl	r2, r1, #24
	lsr	r2, r2, #24
.LBB84:
.LBB85:
	.loc 1 53 0
	strb	r2, [r3]
.L28:
	.loc 1 54 0
	ldr	r3, .L51+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L28
	.loc 1 55 0
	ldr	r3, .L51
	ldrb	r2, [r3]
.LBE85:
.LBE84:
.LBB86:
.LBB87:
	.loc 1 53 0
	mov	r2, #107
	neg	r2, r2
	strb	r2, [r3]
.L30:
	.loc 1 54 0
	ldr	r3, .L51+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L30
	.loc 1 55 0
	ldr	r3, .L51
	ldrb	r2, [r3]
.LBE87:
.LBE86:
.LBB88:
.LBB89:
	.loc 1 53 0
	mov	r2, #1
	neg	r2, r2
	strb	r2, [r3]
.L32:
	.loc 1 54 0
	ldr	r3, .L51+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L32
	.loc 1 55 0
	ldr	r3, .L51
.LBE89:
.LBE88:
	.loc 1 137 0
	@ sp needed for prologue
.LBB90:
.LBB91:
	.loc 1 55 0
	ldrb	r3, [r3]
.LBE91:
.LBE90:
	.loc 1 137 0
	pop	{pc}
.L52:
	.align	2
.L51:
	.word	67109282
	.word	67109280
.LFE11:
	.size	_Neo_SendMMCCommand, .-_Neo_SendMMCCommand
	.align	2
	.code 16
	.thumb_func
	.type	_Neo_CheckMMCResponse, %function
_Neo_CheckMMCResponse:
.LFB12:
	.loc 1 139 0
	push	{r4, lr}
.LCFI2:
.LVL2:
	.loc 1 139 0
	mov	r4, r0
	mov	r0, r1
.LVL3:
	mov	r1, #0
.LVL4:
.L54:
.LBB92:
.LBB93:
	.loc 1 53 0
	mov	r3, #1
	ldr	r2, .L66
	neg	r3, r3
	strb	r3, [r2]
.L55:
	.loc 1 54 0
	ldr	r3, .L66+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L55
	.loc 1 55 0
	ldr	r3, .L66
	ldrb	r3, [r3]
.LBE93:
.LBE92:
	.loc 1 142 0
	and	r3, r3, r0
	cmp	r3, r4
	bne	.L57
	mov	r0, #1
.LVL5:
	b	.L59
.LVL6:
.L57:
	.loc 1 141 0
	mov	r3, #128
	add	r1, r1, #1
	lsl	r3, r3, #1
	cmp	r1, r3
	bne	.L54
	mov	r0, #0
.LVL7:
.L59:
	.loc 1 146 0
	@ sp needed for prologue
.LVL8:
	pop	{r4, pc}
.L67:
	.align	2
.L66:
	.word	67109282
	.word	67109280
.LFE12:
	.size	_Neo_CheckMMCResponse, .-_Neo_CheckMMCResponse
	.align	2
	.code 16
	.thumb_func
	.type	_Neo_SelectMMC, %function
_Neo_SelectMMC:
.LFB9:
	.loc 1 104 0
	push	{lr}
.LCFI3:
.LVL9:
	mov	r3, r0
	.loc 1 105 0
	ldr	r0, .L74
.LVL10:
	.loc 1 104 0
	sub	sp, sp, #4
.LCFI4:
	.loc 1 105 0
	strb	r3, [r0, #1]
	.loc 1 106 0
	bl	cardWriteCommand
.LVL11:
	.loc 1 107 0
	ldr	r2, .L74+4
	ldr	r3, .L74+8
	str	r2, [r3]
.L69:
	.loc 1 108 0
	ldr	r3, .L74+8
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L69
	.loc 1 110 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L75:
	.align	2
.L74:
	.word	selectMMC_command
	.word	-1610612736
	.word	67109284
.LFE9:
	.size	_Neo_SelectMMC, .-_Neo_SelectMMC
	.align	2
	.code 16
	.thumb_func
	.type	_Neo_EnableMMC, %function
_Neo_EnableMMC:
.LFB10:
	.loc 1 113 0
	push	{lr}
.LCFI5:
.LVL12:
	sub	sp, sp, #4
.LCFI6:
	.loc 1 114 0
	cmp	r0, #0
	bne	.L77
.LBB94:
.LBB95:
	.loc 1 60 0
	ldr	r3, .L81
	strh	r0, [r3]
.LBE95:
.LBE94:
	.loc 1 116 0
	bl	_Neo_SelectMMC
.LVL13:
	.loc 1 117 0
	mov	r0, #0
	bl	_Neo_SelectMMC
	b	.L80
.LVL14:
.L77:
	.loc 1 119 0
	mov	r0, #1
.LVL15:
	bl	_Neo_SelectMMC
	.loc 1 120 0
	mov	r0, #1
	bl	_Neo_SelectMMC
.LBB96:
.LBB97:
	.loc 1 48 0
	ldr	r3, .L81+4
	ldr	r2, .L81+8
	ldrb	r3, [r3]
	orr	r3, r3, r2
	lsl	r3, r3, #16
	ldr	r2, .L81
	lsr	r3, r3, #16
	strh	r3, [r2]
.L80:
.LBE97:
.LBE96:
	.loc 1 124 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L82:
	.align	2
.L81:
	.word	67109280
	.word	_NMMC_spi_freq
	.word	-24512
.LFE10:
	.size	_Neo_EnableMMC, .-_Neo_EnableMMC
	.align	2
	.global	_NMMC_clearStatus
	.code 16
	.thumb_func
	.type	_NMMC_clearStatus, %function
_NMMC_clearStatus:
.LFB15:
	.loc 1 186 0
	push	{r4, lr}
.LCFI7:
	.loc 1 189 0
	mov	r0, #1
	bl	_Neo_EnableMMC
	mov	r1, #0
.LVL16:
.L84:
.LBB98:
.LBB99:
	.loc 1 53 0
	mov	r3, #1
	ldr	r2, .L104
	neg	r3, r3
	strb	r3, [r2]
.L85:
	.loc 1 54 0
	ldr	r3, .L104+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L85
	.loc 1 55 0
	ldr	r3, .L104
.LBE99:
.LBE98:
	.loc 1 190 0
	add	r1, r1, #1
.LBB100:
.LBB101:
	.loc 1 55 0
	ldrb	r3, [r3]
.LBE101:
.LBE100:
	.loc 1 190 0
	cmp	r1, #10
	bne	.L84
	.loc 1 193 0
	mov	r0, #0
	mov	r1, #0
.LVL17:
	bl	_Neo_SendMMCCommand
	.loc 1 194 0
	mov	r0, #1
	mov	r1, #255
	bl	_Neo_CheckMMCResponse
	cmp	r0, #0
	bne	.L88
	b	.L103
.LVL18:
.L96:
	.loc 1 201 0
	mov	r0, #0
	bl	_Neo_EnableMMC
	mov	r0, #1
	b	.L90
.LVL19:
.L88:
	.loc 1 196 0
	mov	r4, #0
.LVL20:
.L91:
	.loc 1 199 0
	mov	r0, #1
	mov	r1, #0
	bl	_Neo_SendMMCCommand
	.loc 1 200 0
	mov	r0, #0
	mov	r1, #1
	bl	_Neo_CheckMMCResponse
	cmp	r0, #1
	beq	.L96
	.loc 1 198 0
	mov	r3, #128
	add	r4, r4, #1
	lsl	r3, r3, #1
	cmp	r4, r3
	bne	.L91
	.loc 1 205 0
	mov	r0, #0
.L103:
	bl	_Neo_EnableMMC
	mov	r0, #0
.L90:
	.loc 1 207 0
	@ sp needed for prologue
.LVL21:
	pop	{r4, pc}
.L105:
	.align	2
.L104:
	.word	67109282
	.word	67109280
.LFE15:
	.size	_NMMC_clearStatus, .-_NMMC_clearStatus
	.align	2
	.global	_NMMC_shutdown
	.code 16
	.thumb_func
	.type	_NMMC_shutdown, %function
_NMMC_shutdown:
.LFB16:
	.loc 1 209 0
	push	{lr}
.LCFI8:
	sub	sp, sp, #4
.LCFI9:
	.loc 1 210 0
	bl	_NMMC_clearStatus
	.loc 1 211 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE16:
	.size	_NMMC_shutdown, .-_NMMC_shutdown
	.align	2
	.global	_NMMC_isInserted
	.code 16
	.thumb_func
	.type	_NMMC_isInserted, %function
_NMMC_isInserted:
.LFB14:
	.loc 1 164 0
	push	{lr}
.LCFI10:
	sub	sp, sp, #4
.LCFI11:
	.loc 1 167 0
	mov	r0, #1
	bl	_Neo_EnableMMC
	.loc 1 168 0
	mov	r0, #9
	mov	r1, #0
	bl	_Neo_SendMMCCommand
	.loc 1 169 0
	mov	r0, #0
	mov	r1, #255
	bl	_Neo_CheckMMCResponse
	cmp	r0, #0
	beq	.L123
	.loc 1 173 0
	mov	r0, #254
	mov	r1, #255
	bl	_Neo_CheckMMCResponse
	cmp	r0, #0
	bne	.L112
.L123:
	.loc 1 174 0
	bl	_Neo_EnableMMC
	mov	r0, #0
	b	.L111
.L112:
	.loc 1 175 0
	mov	r1, #0
.LVL22:
.L114:
.LBB104:
.LBB105:
	.loc 1 53 0
	mov	r3, #1
	ldr	r2, .L124
	neg	r3, r3
	strb	r3, [r2]
.L115:
	.loc 1 54 0
	ldr	r3, .L124+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L115
	.loc 1 55 0
	ldr	r3, .L124
.LBE105:
.LBE104:
	.loc 1 179 0
	add	r1, r1, #1
.LBB106:
.LBB107:
	.loc 1 55 0
	ldrb	r3, [r3]
.LBE107:
.LBE106:
	.loc 1 179 0
	cmp	r1, #28
	bne	.L114
	mov	r0, #1
.L111:
	.loc 1 184 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L125:
	.align	2
.L124:
	.word	67109282
	.word	67109280
.LFE14:
	.size	_NMMC_isInserted, .-_NMMC_isInserted
	.align	2
	.global	_NMMC_readSectors
	.code 16
	.thumb_func
	.type	_NMMC_readSectors, %function
_NMMC_readSectors:
.LFB19:
	.loc 1 306 0
	push	{r4, r5, r6, lr}
.LCFI12:
.LVL23:
	.loc 1 310 0
	lsl	r4, r0, #9
.LVL24:
	.loc 1 312 0
	mov	r0, #1
.LVL25:
	.loc 1 306 0
	mov	r6, r1
	mov	r5, r2
.LVL26:
	.loc 1 312 0
	bl	_Neo_EnableMMC
.LVL27:
	b	.L127
.LVL28:
.L128:
	.loc 1 315 0
	mov	r0, #17
.LVL29:
	mov	r1, r4
.LVL30:
	bl	_Neo_SendMMCCommand
	.loc 1 316 0
	mov	r0, #0
	mov	r1, #255
	bl	_Neo_CheckMMCResponse
	cmp	r0, #0
	beq	.L152
	.loc 1 321 0
	mov	r0, #254
	mov	r1, #255
	bl	_Neo_CheckMMCResponse
	cmp	r0, #0
	bne	.L132
.L152:
	.loc 1 322 0
	bl	_Neo_EnableMMC
	mov	r0, #0
	b	.L131
.L132:
	.loc 1 323 0
	mov	r1, r5
.LVL31:
	mov	r0, #0
.LVL32:
.L134:
.LBB114:
.LBB115:
	.loc 1 53 0
	mov	r3, #1
	ldr	r2, .L153
	neg	r3, r3
	strb	r3, [r2]
.L135:
	.loc 1 54 0
	ldr	r3, .L153+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L135
	.loc 1 55 0
	ldr	r2, .L153
.LBE115:
.LBE114:
	.loc 1 325 0
	add	r0, r0, #1
.LBB116:
.LBB117:
	.loc 1 55 0
	ldrb	r3, [r2]
.LBE117:
.LBE116:
	.loc 1 326 0
	strb	r3, [r1]
	.loc 1 325 0
	mov	r3, #128
	lsl	r3, r3, #2
	.loc 1 326 0
	add	r1, r1, #1
	.loc 1 325 0
	cmp	r0, r3
	bne	.L134
.LBB118:
.LBB119:
	.loc 1 53 0
	mov	r3, #1
	neg	r3, r3
.LBE119:
.LBE118:
	.loc 1 325 0
	add	r5, r5, r0
.LBB120:
.LBB121:
	.loc 1 53 0
	strb	r3, [r2]
.L138:
	.loc 1 54 0
	ldr	r3, .L153+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L138
	.loc 1 55 0
	ldr	r3, .L153
	ldrb	r2, [r3]
.LBE121:
.LBE120:
.LBB122:
.LBB123:
	.loc 1 53 0
	mov	r2, #1
	neg	r2, r2
	strb	r2, [r3]
.L140:
	.loc 1 54 0
	ldr	r3, .L153+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L140
	.loc 1 55 0
	ldr	r3, .L153
	ldrb	r3, [r3]
.LBE123:
.LBE122:
	.loc 1 329 0
	mov	r3, #128
	lsl	r3, r3, #2
	add	r4, r4, r3
.L127:
	.loc 1 314 0
	sub	r6, r6, #1
	bcs	.L128
	.loc 1 332 0
	mov	r0, #0
.LVL33:
	bl	_Neo_EnableMMC
.LVL34:
	mov	r0, #1
.L131:
	.loc 1 334 0
	@ sp needed for prologue
.LVL35:
.LVL36:
.LVL37:
	pop	{r4, r5, r6, pc}
.L154:
	.align	2
.L153:
	.word	67109282
	.word	67109280
.LFE19:
	.size	_NMMC_readSectors, .-_NMMC_readSectors
	.align	2
	.global	_NMMC_writeSectors
	.code 16
	.thumb_func
	.type	_NMMC_writeSectors, %function
_NMMC_writeSectors:
.LFB18:
	.loc 1 259 0
	push	{r4, r5, r6, lr}
.LCFI13:
.LVL38:
	.loc 1 259 0
	mov	r4, r0
	.loc 1 266 0
	lsl	r4, r4, #9
	.loc 1 265 0
	mov	r0, #1
.LVL39:
	.loc 1 259 0
	mov	r6, r1
	mov	r5, r2
	.loc 1 265 0
	bl	_Neo_EnableMMC
.LVL40:
	.loc 1 266 0
	mov	r0, #25
	mov	r1, r4
	bl	_Neo_SendMMCCommand
	.loc 1 267 0
	mov	r0, #0
	mov	r1, #255
	bl	_Neo_CheckMMCResponse
	cmp	r0, #0
	beq	.L236
	.loc 1 261 0
	mov	r4, r5
.LVL41:
	b	.L158
.LVL42:
.L160:
.LBB150:
.LBB151:
	.loc 1 53 0
	mov	r3, #4
	ldr	r2, .L237
	neg	r3, r3
	strb	r3, [r2]
.L161:
	.loc 1 54 0
	ldr	r3, .L237+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L161
	.loc 1 55 0
	ldr	r3, .L237
	mov	r1, r4
	ldrb	r3, [r3]
	mov	r0, #0
.L163:
.LBE151:
.LBE150:
	.loc 1 275 0
	ldrb	r2, [r1]
.LBB152:
.LBB153:
	.loc 1 53 0
	ldr	r3, .L237
.LBE153:
.LBE152:
	.loc 1 275 0
	add	r1, r1, #1
.LBB154:
.LBB155:
	.loc 1 53 0
	strb	r2, [r3]
.L164:
	.loc 1 54 0
	ldr	r3, .L237+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L164
	.loc 1 55 0
	ldr	r2, .L237
.LBE155:
.LBE154:
	.loc 1 274 0
	add	r0, r0, #1
.LBB156:
.LBB157:
	.loc 1 55 0
	ldrb	r3, [r2]
.LBE157:
.LBE156:
	.loc 1 274 0
	mov	r3, #128
	lsl	r3, r3, #2
	cmp	r0, r3
	bne	.L163
.LBB158:
.LBB159:
	.loc 1 53 0
	mov	r3, #1
	neg	r3, r3
.LBE159:
.LBE158:
	.loc 1 274 0
	add	r4, r4, r0
.LBB160:
.LBB161:
	.loc 1 53 0
	strb	r3, [r2]
.L167:
	.loc 1 54 0
	ldr	r3, .L237+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L167
	.loc 1 55 0
	ldr	r3, .L237
	ldrb	r2, [r3]
.LBE161:
.LBE160:
.LBB162:
.LBB163:
	.loc 1 53 0
	mov	r2, #1
	neg	r2, r2
	strb	r2, [r3]
.L169:
	.loc 1 54 0
	ldr	r3, .L237+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L169
	.loc 1 55 0
	ldr	r3, .L237
	ldrb	r2, [r3]
.LBE163:
.LBE162:
.LBB164:
.LBB165:
	.loc 1 53 0
	mov	r2, #1
	neg	r2, r2
	strb	r2, [r3]
.L171:
	.loc 1 54 0
	ldr	r3, .L237+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L171
	.loc 1 55 0
	ldr	r3, .L237
.LBE165:
.LBE164:
	.loc 1 279 0
	mov	r2, #15
.LBB166:
.LBB167:
	.loc 1 55 0
	ldrb	r3, [r3]
.LBE167:
.LBE166:
	.loc 1 279 0
	and	r3, r3, r2
	cmp	r3, #5
	beq	.L199
.L236:
	.loc 1 280 0
	mov	r0, #0
.LVL43:
	bl	_Neo_EnableMMC
.LVL44:
	mov	r0, #0
	b	.L159
.LVL45:
.L199:
.LBB168:
.LBB169:
	.loc 1 53 0
	mov	r3, #1
	ldr	r2, .L237
	neg	r3, r3
	strb	r3, [r2]
.L175:
	.loc 1 54 0
	ldr	r3, .L237+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L175
	.loc 1 55 0
	ldr	r3, .L237
	ldrb	r3, [r3]
.LBE169:
.LBE168:
	.loc 1 283 0
	cmp	r3, #0
	beq	.L199
.L158:
	.loc 1 272 0
	sub	r6, r6, #1
	bcs	.L160
.LBB170:
.LBB171:
	.loc 1 53 0
	mov	r3, #3
	ldr	r2, .L237
	neg	r3, r3
	strb	r3, [r2]
.L178:
	.loc 1 54 0
	ldr	r3, .L237+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L178
	.loc 1 55 0
	ldr	r3, .L237
	mov	r1, #0
.LVL46:
	ldrb	r3, [r3]
.L180:
.LBE171:
.LBE170:
.LBB172:
.LBB173:
	.loc 1 53 0
	mov	r3, #1
	ldr	r2, .L237
	neg	r3, r3
	strb	r3, [r2]
.L181:
	.loc 1 54 0
	ldr	r3, .L237+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L181
	.loc 1 55 0
	ldr	r2, .L237
.LBE173:
.LBE172:
	.loc 1 288 0
	add	r1, r1, #1
.LBB174:
.LBB175:
	.loc 1 55 0
	ldrb	r3, [r2]
.LBE175:
.LBE174:
	.loc 1 288 0
	mov	r3, #128
	lsl	r3, r3, #2
	cmp	r1, r3
	bne	.L180
.LBB176:
.LBB177:
	.loc 1 53 0
	mov	r3, #1
	neg	r3, r3
	strb	r3, [r2]
.L184:
	.loc 1 54 0
	ldr	r3, .L237+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L184
	.loc 1 55 0
	ldr	r3, .L237
	ldrb	r2, [r3]
.LBE177:
.LBE176:
.LBB178:
.LBB179:
	.loc 1 53 0
	mov	r2, #1
	neg	r2, r2
	strb	r2, [r3]
.L186:
	.loc 1 54 0
	ldr	r3, .L237+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L186
	.loc 1 55 0
	ldr	r3, .L237
	ldrb	r2, [r3]
.LBE179:
.LBE178:
.LBB180:
.LBB181:
	.loc 1 53 0
	mov	r2, #1
	neg	r2, r2
	strb	r2, [r3]
.L188:
	.loc 1 54 0
	ldr	r3, .L237+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L188
	.loc 1 55 0
	ldr	r3, .L237
	ldrb	r3, [r3]
.L190:
.LBE181:
.LBE180:
.LBB182:
.LBB183:
	.loc 1 53 0
	mov	r3, #1
	ldr	r2, .L237
	neg	r3, r3
	strb	r3, [r2]
.L191:
	.loc 1 54 0
	ldr	r3, .L237+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L191
	.loc 1 55 0
	ldr	r3, .L237
	ldrb	r3, [r3]
.LBE183:
.LBE182:
	.loc 1 294 0
	cmp	r3, #0
	beq	.L190
	mov	r1, #0
.LVL47:
.L194:
.LBB184:
.LBB185:
	.loc 1 53 0
	mov	r3, #1
	ldr	r2, .L237
	neg	r3, r3
	strb	r3, [r2]
.L195:
	.loc 1 54 0
	ldr	r3, .L237+4
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L195
	.loc 1 55 0
	ldr	r3, .L237
.LBE185:
.LBE184:
	.loc 1 297 0
	add	r1, r1, #1
.LBB186:
.LBB187:
	.loc 1 55 0
	ldrb	r3, [r3]
.LBE187:
.LBE186:
	.loc 1 297 0
	cmp	r1, #16
	bne	.L194
	.loc 1 301 0
	mov	r0, #0
.LVL48:
	bl	_Neo_EnableMMC
.LVL49:
	mov	r0, #1
.L159:
	.loc 1 303 0
	@ sp needed for prologue
.LVL50:
.LVL51:
.LVL52:
	pop	{r4, r5, r6, pc}
.L238:
	.align	2
.L237:
	.word	67109282
	.word	67109280
.LFE18:
	.size	_NMMC_writeSectors, .-_NMMC_writeSectors
	.align	2
	.global	_NMMC_startUp
	.code 16
	.thumb_func
	.type	_NMMC_startUp, %function
_NMMC_startUp:
.LFB17:
	.loc 1 213 0
	push	{r4, r5, lr}
.LCFI14:
.LBB228:
.LBB229:
.LBB230:
.LBB231:
.LBB232:
.LBB233:
	.loc 1 48 0
	ldr	r3, .L305
	ldr	r2, .L305+4
	ldrb	r3, [r3]
.LBE233:
.LBE232:
.LBE231:
.LBE230:
.LBE229:
.LBE228:
	.loc 1 213 0
	sub	sp, sp, #4
.LCFI15:
.LBB234:
.LBB235:
.LBB236:
.LBB237:
.LBB238:
.LBB239:
	.loc 1 48 0
	orr	r3, r3, r2
	lsl	r3, r3, #16
	ldr	r2, .L305+8
	lsr	r3, r3, #16
	strh	r3, [r2]
.LBE239:
.LBE238:
.LBB240:
.LBB241:
	.loc 1 53 0
	mov	r3, #15
	neg	r3, r3
	add	r2, r2, #2
	strb	r3, [r2]
.L240:
	.loc 1 54 0
	ldr	r5, .L305+8
	mov	r3, #128
	ldrh	r2, [r5]
	and	r2, r3
	bne	.L240
	.loc 1 55 0
	ldr	r4, .L305+12
.LBE241:
.LBE240:
.LBE237:
.LBE236:
.LBB242:
.LBB243:
	.loc 1 77 0
	mov	r0, #1
.LBE243:
.LBE242:
.LBB244:
.LBB245:
.LBB246:
.LBB247:
	.loc 1 55 0
	ldrb	r3, [r4]
.LBE247:
.LBE246:
.LBB248:
.LBB249:
	.loc 1 60 0
	strh	r2, [r5]
.LBE249:
.LBE248:
.LBE245:
.LBE244:
.LBB250:
.LBB251:
	.loc 1 77 0
	bl	_Neo_EnableEEPROM
.LBB252:
.LBB253:
	.loc 1 48 0
	ldr	r3, .L305
	ldr	r2, .L305+4
	ldrb	r3, [r3]
	orr	r3, r3, r2
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r5]
.LBE253:
.LBE252:
.LBB254:
.LBB255:
	.loc 1 53 0
	mov	r3, #6
	neg	r3, r3
	strb	r3, [r4]
.L242:
	.loc 1 54 0
	ldr	r3, .L305+8
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L242
	.loc 1 55 0
	ldr	r3, .L305+12
	ldrb	r2, [r3]
.LBE255:
.LBE254:
.LBB256:
.LBB257:
	.loc 1 53 0
	mov	r2, #1
	strb	r2, [r3]
.L244:
	.loc 1 54 0
	ldr	r3, .L305+8
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L244
	.loc 1 55 0
	ldr	r3, .L305+12
	ldrb	r2, [r3]
.LBE257:
.LBE256:
.LBB258:
.LBB259:
	.loc 1 53 0
	mov	r2, #49
	strb	r2, [r3]
.L246:
	.loc 1 54 0
	ldr	r5, .L305+8
	mov	r3, #128
	ldrh	r2, [r5]
	and	r2, r3
	bne	.L246
	.loc 1 55 0
	ldr	r4, .L305+12
.LBE259:
.LBE258:
	.loc 1 83 0
	mov	r0, #0
.LBB260:
.LBB261:
	.loc 1 55 0
	ldrb	r3, [r4]
.LBE261:
.LBE260:
.LBB262:
.LBB263:
	.loc 1 60 0
	strh	r2, [r5]
.LBE263:
.LBE262:
	.loc 1 83 0
	bl	_Neo_EnableEEPROM
.LBE251:
.LBE250:
.LBB264:
.LBB265:
	.loc 1 89 0
	mov	r0, #1
	bl	_Neo_EnableEEPROM
.LBB266:
.LBB267:
	.loc 1 48 0
	ldr	r3, .L305
	ldr	r2, .L305+4
	ldrb	r3, [r3]
	orr	r3, r3, r2
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r5]
.LBE267:
.LBE266:
.LBB268:
.LBB269:
	.loc 1 53 0
	mov	r3, #8
	neg	r3, r3
	strb	r3, [r4]
.L248:
	.loc 1 54 0
	ldr	r3, .L305+8
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L248
	.loc 1 55 0
	ldr	r3, .L305+12
	ldrb	r2, [r3]
.LBE269:
.LBE268:
.LBB270:
.LBB271:
	.loc 1 53 0
	mov	r2, #1
	strb	r2, [r3]
.L250:
	.loc 1 54 0
	ldr	r3, .L305+8
	ldrh	r2, [r3]
	mov	r3, #128
	mov	r1, r2
	and	r1, r3
	bne	.L250
	.loc 1 55 0
	ldr	r3, .L305+12
	ldrb	r2, [r3]
.LBE271:
.LBE270:
.LBB272:
.LBB273:
	.loc 1 53 0
	strb	r1, [r3]
.L252:
	.loc 1 54 0
	ldr	r1, .L305+8
	mov	r3, #128
	ldrh	r2, [r1]
	and	r2, r3
	bne	.L252
	.loc 1 55 0
	ldr	r3, .L305+12
.LBE273:
.LBE272:
	.loc 1 95 0
	mov	r0, #0
.LBB274:
.LBB275:
	.loc 1 55 0
	ldrb	r4, [r3]
.LBE275:
.LBE274:
.LBB276:
.LBB277:
	.loc 1 60 0
	strh	r2, [r1]
.LBE277:
.LBE276:
	.loc 1 95 0
	bl	_Neo_EnableEEPROM
.LBE265:
.LBE264:
	.loc 1 155 0
	cmp	r4, #49
	bne	.L254
	b	.L296
.L302:
.LBE235:
.LBE234:
	.loc 1 222 0
	mov	r0, #1
	bl	_Neo_EnableMMC
	.loc 1 225 0
	mov	r1, #128
	mov	r0, #16
	lsl	r1, r1, #2
	bl	_Neo_SendMMCCommand
	.loc 1 226 0
	mov	r0, #0
	mov	r1, #255
	bl	_Neo_CheckMMCResponse
	cmp	r0, #0
	beq	.L304
	.loc 1 232 0
	mov	r0, #9
	mov	r1, #0
	bl	_Neo_SendMMCCommand
	.loc 1 233 0
	mov	r0, #0
	mov	r1, #255
	bl	_Neo_CheckMMCResponse
	cmp	r0, #0
	beq	.L304
	.loc 1 237 0
	mov	r0, #254
	mov	r1, #255
	bl	_Neo_CheckMMCResponse
	cmp	r0, #0
	beq	.L262
	mov	r1, #0
.LVL53:
	b	.L264
.LVL54:
.L262:
	.loc 1 238 0
	mov	r0, #0
.L304:
	bl	_Neo_EnableMMC
	b	.L254
.LVL55:
.L264:
.LBB278:
.LBB279:
	.loc 1 53 0
	mov	r3, #1
	ldr	r2, .L305+12
	neg	r3, r3
	strb	r3, [r2]
.L265:
	.loc 1 54 0
	ldr	r3, .L305+8
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L265
	.loc 1 55 0
	ldr	r2, .L305+12
.LBE279:
.LBE278:
	.loc 1 241 0
	add	r1, r1, #1
.LBB280:
.LBB281:
	.loc 1 55 0
	ldrb	r3, [r2]
.LBE281:
.LBE280:
	.loc 1 241 0
	cmp	r1, #3
	bne	.L264
.LBB282:
.LBB283:
	.loc 1 53 0
	mov	r3, #1
	neg	r3, r3
	strb	r3, [r2]
.L268:
	.loc 1 54 0
	ldr	r3, .L305+8
	ldrh	r3, [r3]
	lsl	r2, r3, #24
	bmi	.L268
	.loc 1 55 0
	ldr	r3, .L305+12
.LBE283:
.LBE282:
	.loc 1 244 0
	mov	r1, #0
.LVL56:
.LBB284:
.LBB285:
	.loc 1 55 0
	ldrb	r3, [r3]
.LBE285:
.LBE284:
	.loc 1 244 0
	mov	r0, r3
.L270:
.LBB286:
.LBB287:
	.loc 1 53 0
	mov	r3, #1
	ldr	r2, .L305+12
	neg	r3, r3
	strb	r3, [r2]
.L271:
	.loc 1 54 0
	ldr	r3, .L305+8
	ldrh	r2, [r3]
	mov	r3, #128
	and	r2, r3
	bne	.L271
	.loc 1 55 0
	ldr	r3, .L305+12
.LBE287:
.LBE286:
	.loc 1 245 0
	add	r1, r1, #1
.LBB288:
.LBB289:
	.loc 1 55 0
	ldrb	r3, [r3]
.LBE289:
.LBE288:
	.loc 1 245 0
	cmp	r1, #24
	bne	.L270
	.loc 1 248 0
	mov	r3, #240
	and	r3, r3, r0
	cmp	r3, #47
	ble	.L274
	.loc 1 249 0
	ldr	r3, .L305
	str	r2, [r3]
.L274:
	.loc 1 252 0
	mov	r0, #0
	bl	_Neo_EnableMMC
.LVL57:
	mov	r0, #1
	b	.L259
.L254:
	.loc 1 254 0
	mov	r0, #0
	b	.L259
.L296:
	.loc 1 219 0
	bl	_NMMC_clearStatus
	cmp	r0, #0
	beq	.L254
	b	.L302
.L259:
	.loc 1 255 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{r4, r5, pc}
.L306:
	.align	2
.L305:
	.word	_NMMC_spi_freq
	.word	-24512
	.word	67109280
	.word	67109282
.LFE17:
	.size	_NMMC_startUp, .-_NMMC_startUp
	.global	_NMMC_spi_freq
	.data
	.align	2
	.type	_NMMC_spi_freq, %object
	.size	_NMMC_spi_freq, 4
_NMMC_spi_freq:
	.word	3
	.global	selectMMC_command
	.type	selectMMC_command, %object
	.size	selectMMC_command, 8
selectMMC_command:
	.byte	-1
	.byte	0
	.byte	106
	.byte	-33
	.byte	55
	.byte	89
	.byte	51
	.byte	-93
	.global	_io_nmmc
	.section	.rodata
	.align	2
	.type	_io_nmmc, %object
	.size	_io_nmmc, 32
_io_nmmc:
	.word	1129139534
	.word	35
	.word	_NMMC_startUp
	.word	_NMMC_isInserted
	.word	_NMMC_readSectors
	.word	_NMMC_writeSectors
	.word	_NMMC_clearStatus
	.word	_NMMC_shutdown
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI0-.LFB6
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI1-.LFB11
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI2-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI3-.LFB9
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI5-.LFB10
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI7-.LFB15
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI8-.LFB16
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI10-.LFB14
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI12-.LFB19
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
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI13-.LFB18
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
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI14-.LFB17
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
.LEFDE20:
	.file 2 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/disc_io.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE12-.Ltext0
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
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB9-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB19-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB18-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x9c7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF63
	.byte	0x1
	.4byte	.LASF64
	.4byte	.LASF65
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF5
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
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x54
	.4byte	0x5e
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x8
	.byte	0x4
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x2
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x2
	.byte	0x61
	.4byte	0x53
	.uleb128 0x6
	.4byte	0xb9
	.byte	0x1
	.byte	0x2
	.byte	0x81
	.uleb128 0x7
	.4byte	.LASF13
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF14
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x2
	.byte	0x81
	.4byte	0xa4
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3d
	.4byte	0xcf
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd5
	.uleb128 0x9
	.byte	0x1
	.4byte	0xb9
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3e
	.4byte	0xcf
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x3f
	.4byte	0xf1
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf7
	.uleb128 0xa
	.4byte	0x111
	.byte	0x1
	.4byte	0xb9
	.uleb128 0xb
	.4byte	0x99
	.uleb128 0xb
	.4byte	0x99
	.uleb128 0xb
	.4byte	0x111
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x40
	.4byte	0x11e
	.uleb128 0x8
	.byte	0x4
	.4byte	0x124
	.uleb128 0xa
	.4byte	0x13e
	.byte	0x1
	.4byte	0xb9
	.uleb128 0xb
	.4byte	0x99
	.uleb128 0xb
	.4byte	0x99
	.uleb128 0xb
	.4byte	0x13e
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x144
	.uleb128 0xd
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x41
	.4byte	0xcf
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x42
	.4byte	0xcf
	.uleb128 0xe
	.4byte	0x1d8
	.4byte	.LASF66
	.byte	0x20
	.byte	0x4
	.byte	0x44
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x4
	.byte	0x45
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x4
	.byte	0x46
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x4
	.byte	0x47
	.4byte	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x4
	.byte	0x48
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x4
	.byte	0x49
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x4
	.byte	0x4a
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x4
	.byte	0x4b
	.4byte	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x4
	.byte	0x4c
	.4byte	0x150
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x4
	.byte	0x4f
	.4byte	0x15b
	.uleb128 0x10
	.4byte	0x1fc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0x2e
	.4byte	0x8f
	.byte	0x0
	.uleb128 0x12
	.4byte	0x219
	.4byte	.LASF32
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.4byte	0x8f
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0x33
	.4byte	0x8f
	.byte	0x0
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.4byte	0x29a
	.4byte	.LASF35
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST0
	.uleb128 0x15
	.4byte	.LASF36
	.byte	0x1
	.byte	0x45
	.4byte	0xb9
	.byte	0x1
	.byte	0x50
	.uleb128 0x16
	.4byte	0x260
	.4byte	0x1e3
	.4byte	.LBB60
	.4byte	.LBE60
	.byte	0x1
	.byte	0x46
	.uleb128 0x17
	.4byte	0x1f0
	.byte	0x0
	.uleb128 0x16
	.4byte	0x279
	.4byte	0x1fc
	.4byte	.LBB62
	.4byte	.LBE62
	.byte	0x1
	.byte	0x47
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x18
	.4byte	0x28e
	.4byte	0x1fc
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x48
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x19
	.4byte	0x219
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x49
	.byte	0x0
	.uleb128 0x14
	.4byte	0x38d
	.4byte	.LASF37
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LASF38
	.byte	0x1
	.byte	0x7e
	.4byte	0x8f
	.byte	0x1
	.byte	0x50
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x1
	.byte	0x7e
	.4byte	0x99
	.byte	0x1
	.byte	0x51
	.uleb128 0x16
	.4byte	0x2e5
	.4byte	0x1fc
	.4byte	.LBB74
	.4byte	.LBE74
	.byte	0x1
	.byte	0x80
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x16
	.4byte	0x2fe
	.4byte	0x1fc
	.4byte	.LBB76
	.4byte	.LBE76
	.byte	0x1
	.byte	0x81
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x16
	.4byte	0x317
	.4byte	0x1fc
	.4byte	.LBB78
	.4byte	.LBE78
	.byte	0x1
	.byte	0x82
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x16
	.4byte	0x330
	.4byte	0x1fc
	.4byte	.LBB80
	.4byte	.LBE80
	.byte	0x1
	.byte	0x83
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x16
	.4byte	0x349
	.4byte	0x1fc
	.4byte	.LBB82
	.4byte	.LBE82
	.byte	0x1
	.byte	0x84
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x16
	.4byte	0x362
	.4byte	0x1fc
	.4byte	.LBB84
	.4byte	.LBE84
	.byte	0x1
	.byte	0x85
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x16
	.4byte	0x37b
	.4byte	0x1fc
	.4byte	.LBB86
	.4byte	.LBE86
	.byte	0x1
	.byte	0x86
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x1fc
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x87
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.4byte	0x3e8
	.4byte	.LASF40
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.4byte	0xb9
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST2
	.uleb128 0x1c
	.4byte	.LASF41
	.byte	0x1
	.byte	0x8b
	.4byte	0x8f
	.4byte	.LLST3
	.uleb128 0x1c
	.4byte	.LASF42
	.byte	0x1
	.byte	0x8b
	.4byte	0x8f
	.4byte	.LLST4
	.uleb128 0x1d
	.ascii	"i\000"
	.byte	0x1
	.byte	0x8c
	.4byte	0x99
	.byte	0x1
	.byte	0x51
	.uleb128 0x1e
	.4byte	0x1fc
	.4byte	.LBB92
	.4byte	.LBE92
	.byte	0x1
	.byte	0x8e
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.4byte	0x410
	.4byte	.LASF43
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	.LASF34
	.byte	0x1
	.byte	0x67
	.4byte	0x8f
	.4byte	.LLST6
	.byte	0x0
	.uleb128 0x14
	.4byte	0x45c
	.4byte	.LASF44
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST7
	.uleb128 0x1c
	.4byte	.LASF36
	.byte	0x1
	.byte	0x70
	.4byte	0xb9
	.4byte	.LLST8
	.uleb128 0x1f
	.4byte	0x219
	.4byte	.LBB94
	.4byte	.LBE94
	.byte	0x1
	.byte	0x73
	.uleb128 0x1e
	.4byte	0x1e3
	.4byte	.LBB96
	.4byte	.LBE96
	.byte	0x1
	.byte	0x79
	.uleb128 0x17
	.4byte	0x1f0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.4byte	0x498
	.byte	0x1
	.4byte	.LASF45
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.4byte	0xb9
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST9
	.uleb128 0x21
	.ascii	"i\000"
	.byte	0x1
	.byte	0xbb
	.4byte	0x99
	.4byte	.LLST10
	.uleb128 0x1a
	.4byte	0x1fc
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0xbf
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.4byte	0xb9
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	0x4eb
	.byte	0x1
	.4byte	.LASF46
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.4byte	0xb9
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST12
	.uleb128 0x1d
	.ascii	"i\000"
	.byte	0x1
	.byte	0xa5
	.4byte	0x73
	.byte	0x1
	.byte	0x51
	.uleb128 0x1a
	.4byte	0x1fc
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0xb4
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	0x598
	.byte	0x1
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x132
	.byte	0x1
	.4byte	0xb9
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST13
	.uleb128 0x24
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x131
	.4byte	0x99
	.4byte	.LLST14
	.uleb128 0x24
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x131
	.4byte	0x99
	.4byte	.LLST15
	.uleb128 0x24
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x131
	.4byte	0x111
	.4byte	.LLST16
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x133
	.4byte	0x99
	.4byte	.LLST17
	.uleb128 0x25
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x134
	.4byte	0x598
	.4byte	.LLST18
	.uleb128 0x26
	.4byte	0x56b
	.4byte	0x1fc
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.2byte	0x146
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x26
	.4byte	0x581
	.4byte	0x1fc
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.2byte	0x147
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x27
	.4byte	0x1fc
	.4byte	.LBB122
	.4byte	.LBE122
	.byte	0x1
	.2byte	0x148
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x23
	.4byte	0x743
	.byte	0x1
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x103
	.byte	0x1
	.4byte	0xb9
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST19
	.uleb128 0x24
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x102
	.4byte	0x99
	.4byte	.LLST20
	.uleb128 0x24
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x102
	.4byte	0x99
	.4byte	.LLST21
	.uleb128 0x24
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x102
	.4byte	0x13e
	.4byte	.LLST22
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x104
	.4byte	0x99
	.4byte	.LLST23
	.uleb128 0x25
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x105
	.4byte	0x598
	.4byte	.LLST24
	.uleb128 0x28
	.4byte	0x622
	.4byte	0x1fc
	.4byte	.LBB150
	.4byte	.LBE150
	.byte	0x1
	.2byte	0x111
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x26
	.4byte	0x638
	.4byte	0x1fc
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x1
	.2byte	0x113
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x26
	.4byte	0x64e
	.4byte	0x1fc
	.4byte	.Ldebug_ranges0+0xd0
	.byte	0x1
	.2byte	0x114
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x28
	.4byte	0x668
	.4byte	0x1fc
	.4byte	.LBB162
	.4byte	.LBE162
	.byte	0x1
	.2byte	0x115
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x26
	.4byte	0x67e
	.4byte	0x1fc
	.4byte	.Ldebug_ranges0+0xe8
	.byte	0x1
	.2byte	0x117
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x28
	.4byte	0x698
	.4byte	0x1fc
	.4byte	.LBB168
	.4byte	.LBE168
	.byte	0x1
	.2byte	0x11b
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x28
	.4byte	0x6b2
	.4byte	0x1fc
	.4byte	.LBB170
	.4byte	.LBE170
	.byte	0x1
	.2byte	0x11f
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x26
	.4byte	0x6c8
	.4byte	0x1fc
	.4byte	.Ldebug_ranges0+0x100
	.byte	0x1
	.2byte	0x121
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x28
	.4byte	0x6e2
	.4byte	0x1fc
	.4byte	.LBB176
	.4byte	.LBE176
	.byte	0x1
	.2byte	0x122
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x28
	.4byte	0x6fc
	.4byte	0x1fc
	.4byte	.LBB178
	.4byte	.LBE178
	.byte	0x1
	.2byte	0x123
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x28
	.4byte	0x716
	.4byte	0x1fc
	.4byte	.LBB180
	.4byte	.LBE180
	.byte	0x1
	.2byte	0x125
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x28
	.4byte	0x730
	.4byte	0x1fc
	.4byte	.LBB182
	.4byte	.LBE182
	.byte	0x1
	.2byte	0x126
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x29
	.4byte	0x1fc
	.4byte	.Ldebug_ranges0+0x118
	.byte	0x1
	.2byte	0x12a
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.4byte	.LASF53
	.byte	0x1
	.byte	0x96
	.4byte	0xb9
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x75f
	.4byte	.LASF54
	.byte	0x1
	.byte	0x3f
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x10
	.4byte	0x77d
	.4byte	.LASF55
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x1
	.byte	0x4c
	.4byte	0x8f
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x12
	.4byte	0x79f
	.4byte	.LASF57
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.4byte	0x8f
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF56
	.byte	0x1
	.byte	0x58
	.4byte	0x8f
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2c
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x20
	.4byte	0x977
	.byte	0x1
	.4byte	.LASF58
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.4byte	0xb9
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST25
	.uleb128 0x21
	.ascii	"i\000"
	.byte	0x1
	.byte	0xd6
	.4byte	0x73
	.4byte	.LLST26
	.uleb128 0x2d
	.4byte	.LASF59
	.byte	0x1
	.byte	0xd7
	.4byte	0x73
	.uleb128 0x18
	.4byte	0x801
	.4byte	0x743
	.4byte	.Ldebug_ranges0+0x130
	.byte	0x1
	.byte	0xd8
	.uleb128 0x1a
	.4byte	0x74f
	.4byte	.Ldebug_ranges0+0x148
	.byte	0x1
	.byte	0x97
	.uleb128 0x1a
	.4byte	0x1e3
	.4byte	.Ldebug_ranges0+0x168
	.byte	0x1
	.byte	0x40
	.uleb128 0x17
	.4byte	0x1f0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.4byte	0x816
	.4byte	0x1fc
	.4byte	.Ldebug_ranges0+0x180
	.byte	0x1
	.byte	0x41
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x18
	.4byte	0x82b
	.4byte	0x75f
	.4byte	.Ldebug_ranges0+0x198
	.byte	0x1
	.byte	0x98
	.uleb128 0x17
	.4byte	0x76c
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x219
	.4byte	.LBB248
	.4byte	.LBE248
	.byte	0x1
	.byte	0x42
	.uleb128 0x16
	.4byte	0x853
	.4byte	0x1e3
	.4byte	.LBB252
	.4byte	.LBE252
	.byte	0x1
	.byte	0x4e
	.uleb128 0x17
	.4byte	0x1f0
	.byte	0x0
	.uleb128 0x16
	.4byte	0x86c
	.4byte	0x1fc
	.4byte	.LBB254
	.4byte	.LBE254
	.byte	0x1
	.byte	0x4f
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x16
	.4byte	0x885
	.4byte	0x1fc
	.4byte	.LBB256
	.4byte	.LBE256
	.byte	0x1
	.byte	0x50
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x18
	.4byte	0x89a
	.4byte	0x1fc
	.4byte	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x219
	.4byte	.LBB262
	.4byte	.LBE262
	.byte	0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	0x93b
	.4byte	0x77d
	.4byte	.LBB264
	.4byte	.LBE264
	.byte	0x1
	.byte	0x9b
	.uleb128 0x2e
	.4byte	.LBB265
	.4byte	.LBE265
	.uleb128 0x2f
	.4byte	0x78e
	.uleb128 0x16
	.4byte	0x8e3
	.4byte	0x1e3
	.4byte	.LBB266
	.4byte	.LBE266
	.byte	0x1
	.byte	0x5a
	.uleb128 0x17
	.4byte	0x1f0
	.byte	0x0
	.uleb128 0x16
	.4byte	0x8fc
	.4byte	0x1fc
	.4byte	.LBB268
	.4byte	.LBE268
	.byte	0x1
	.byte	0x5b
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x16
	.4byte	0x915
	.4byte	0x1fc
	.4byte	.LBB270
	.4byte	.LBE270
	.byte	0x1
	.byte	0x5c
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x18
	.4byte	0x92a
	.4byte	0x1fc
	.4byte	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.byte	0x5d
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x219
	.4byte	.LBB276
	.4byte	.LBE276
	.byte	0x1
	.byte	0x5e
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.4byte	0x950
	.4byte	0x1fc
	.4byte	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.byte	0xf2
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x18
	.4byte	0x965
	.4byte	0x1fc
	.4byte	.Ldebug_ranges0+0x1f8
	.byte	0x1
	.byte	0xf4
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x1fc
	.4byte	.Ldebug_ranges0+0x210
	.byte	0x1
	.byte	0xf6
	.uleb128 0x17
	.4byte	0x20d
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x151
	.4byte	0x98a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_io_nmmc
	.uleb128 0x31
	.4byte	0x1d8
	.uleb128 0x32
	.4byte	.LASF61
	.byte	0x1
	.byte	0x1c
	.4byte	0x73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_NMMC_spi_freq
	.uleb128 0x33
	.4byte	0x9b1
	.4byte	0x8f
	.uleb128 0x34
	.4byte	0x9b1
	.byte	0x7
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x7
	.uleb128 0x32
	.4byte	.LASF62
	.byte	0x1
	.byte	0x65
	.4byte	0x9a1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	selectMMC_command
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
	.uleb128 0x11
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x1d
	.byte	0x1
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
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x2b
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x0
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xc1
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x9cb
	.4byte	0x45c
	.ascii	"_NMMC_clearStatus\000"
	.4byte	0x498
	.ascii	"_NMMC_shutdown\000"
	.4byte	0x4b1
	.ascii	"_NMMC_isInserted\000"
	.4byte	0x4eb
	.ascii	"_NMMC_readSectors\000"
	.4byte	0x59e
	.ascii	"_NMMC_writeSectors\000"
	.4byte	0x79f
	.ascii	"_NMMC_startUp\000"
	.4byte	0x977
	.ascii	"_io_nmmc\000"
	.4byte	0x98f
	.ascii	"_NMMC_spi_freq\000"
	.4byte	0x9b8
	.ascii	"selectMMC_command\000"
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
	.4byte	.LBB64-.Ltext0
	.4byte	.LBE64-.Ltext0
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB66-.Ltext0
	.4byte	.LBE66-.Ltext0
	.4byte	.LBB72-.Ltext0
	.4byte	.LBE72-.Ltext0
	.4byte	.LBB70-.Ltext0
	.4byte	.LBE70-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB88-.Ltext0
	.4byte	.LBE88-.Ltext0
	.4byte	.LBB90-.Ltext0
	.4byte	.LBE90-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB98-.Ltext0
	.4byte	.LBE98-.Ltext0
	.4byte	.LBB100-.Ltext0
	.4byte	.LBE100-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB104-.Ltext0
	.4byte	.LBE104-.Ltext0
	.4byte	.LBB106-.Ltext0
	.4byte	.LBE106-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB114-.Ltext0
	.4byte	.LBE114-.Ltext0
	.4byte	.LBB116-.Ltext0
	.4byte	.LBE116-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB118-.Ltext0
	.4byte	.LBE118-.Ltext0
	.4byte	.LBB120-.Ltext0
	.4byte	.LBE120-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB152-.Ltext0
	.4byte	.LBE152-.Ltext0
	.4byte	.LBB156-.Ltext0
	.4byte	.LBE156-.Ltext0
	.4byte	.LBB154-.Ltext0
	.4byte	.LBE154-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB158-.Ltext0
	.4byte	.LBE158-.Ltext0
	.4byte	.LBB160-.Ltext0
	.4byte	.LBE160-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB164-.Ltext0
	.4byte	.LBE164-.Ltext0
	.4byte	.LBB166-.Ltext0
	.4byte	.LBE166-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB172-.Ltext0
	.4byte	.LBE172-.Ltext0
	.4byte	.LBB174-.Ltext0
	.4byte	.LBE174-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB184-.Ltext0
	.4byte	.LBE184-.Ltext0
	.4byte	.LBB186-.Ltext0
	.4byte	.LBE186-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB228-.Ltext0
	.4byte	.LBE228-.Ltext0
	.4byte	.LBB234-.Ltext0
	.4byte	.LBE234-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB230-.Ltext0
	.4byte	.LBE230-.Ltext0
	.4byte	.LBB244-.Ltext0
	.4byte	.LBE244-.Ltext0
	.4byte	.LBB236-.Ltext0
	.4byte	.LBE236-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB232-.Ltext0
	.4byte	.LBE232-.Ltext0
	.4byte	.LBB238-.Ltext0
	.4byte	.LBE238-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB240-.Ltext0
	.4byte	.LBE240-.Ltext0
	.4byte	.LBB246-.Ltext0
	.4byte	.LBE246-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB242-.Ltext0
	.4byte	.LBE242-.Ltext0
	.4byte	.LBB250-.Ltext0
	.4byte	.LBE250-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB258-.Ltext0
	.4byte	.LBE258-.Ltext0
	.4byte	.LBB260-.Ltext0
	.4byte	.LBE260-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB272-.Ltext0
	.4byte	.LBE272-.Ltext0
	.4byte	.LBB274-.Ltext0
	.4byte	.LBE274-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB278-.Ltext0
	.4byte	.LBE278-.Ltext0
	.4byte	.LBB280-.Ltext0
	.4byte	.LBE280-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB282-.Ltext0
	.4byte	.LBE282-.Ltext0
	.4byte	.LBB284-.Ltext0
	.4byte	.LBE284-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB286-.Ltext0
	.4byte	.LBE286-.Ltext0
	.4byte	.LBB288-.Ltext0
	.4byte	.LBE288-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF65:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF18:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF36:
	.ascii	"enable\000"
.LASF58:
	.ascii	"_NMMC_startUp\000"
.LASF59:
	.ascii	"transSpeed\000"
.LASF2:
	.ascii	"short int\000"
.LASF55:
	.ascii	"_Neo_WriteMK2Config\000"
.LASF25:
	.ascii	"fn_isInserted\000"
.LASF20:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF24:
	.ascii	"fn_startup\000"
.LASF21:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF67:
	.ascii	"_NMMC_shutdown\000"
.LASF46:
	.ascii	"_NMMC_isInserted\000"
.LASF56:
	.ascii	"config\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF44:
	.ascii	"_Neo_EnableMMC\000"
.LASF15:
	.ascii	"bool\000"
.LASF66:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF52:
	.ascii	"_Neo_CloseSPI\000"
.LASF11:
	.ascii	"float\000"
.LASF8:
	.ascii	"long long int\000"
.LASF37:
	.ascii	"_Neo_SendMMCCommand\000"
.LASF16:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF4:
	.ascii	"long int\000"
.LASF34:
	.ascii	"dataByte\000"
.LASF64:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_"
	.ascii	"io/io_nmmc.c\000"
.LASF30:
	.ascii	"IO_INTERFACE\000"
.LASF40:
	.ascii	"_Neo_CheckMMCResponse\000"
.LASF26:
	.ascii	"fn_readSectors\000"
.LASF22:
	.ascii	"ioType\000"
.LASF57:
	.ascii	"_Neo_ReadMK2Config\000"
.LASF28:
	.ascii	"fn_clearStatus\000"
.LASF48:
	.ascii	"sector\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF49:
	.ascii	"totalSecs\000"
.LASF0:
	.ascii	"signed char\000"
.LASF43:
	.ascii	"_Neo_SelectMMC\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF13:
	.ascii	"false\000"
.LASF60:
	.ascii	"_io_nmmc\000"
.LASF39:
	.ascii	"argument\000"
.LASF23:
	.ascii	"features\000"
.LASF54:
	.ascii	"_Neo_MK2GameMode\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF19:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF14:
	.ascii	"true\000"
.LASF32:
	.ascii	"_Neo_SPI\000"
.LASF50:
	.ascii	"buffer\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF12:
	.ascii	"double\000"
.LASF35:
	.ascii	"_Neo_EnableEEPROM\000"
.LASF63:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF41:
	.ascii	"response\000"
.LASF45:
	.ascii	"_NMMC_clearStatus\000"
.LASF42:
	.ascii	"mask\000"
.LASF53:
	.ascii	"_Neo_InitMMC\000"
.LASF31:
	.ascii	"_Neo_OpenSPI\000"
.LASF33:
	.ascii	"frequency\000"
.LASF27:
	.ascii	"fn_writeSectors\000"
.LASF61:
	.ascii	"_NMMC_spi_freq\000"
.LASF17:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF47:
	.ascii	"_NMMC_readSectors\000"
.LASF38:
	.ascii	"command\000"
.LASF29:
	.ascii	"fn_shutdown\000"
.LASF51:
	.ascii	"_NMMC_writeSectors\000"
.LASF62:
	.ascii	"selectMMC_command\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
