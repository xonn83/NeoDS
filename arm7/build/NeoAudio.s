	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.file	"NeoAudio.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	neoAudioEventHandler
	.type	neoAudioEventHandler, %function
neoAudioEventHandler:
.LFB28:
	.file 1 "C:/Users/GRX/NeoDS/arm7/source/NeoAudio.c"
	.loc 1 48 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 49 0
	ldr	r3, .L12
	.loc 1 48 0
	stmfd	sp!, {r4, r6, r7, r8}
.LCFI0:
	.loc 1 52 0
	ldr	r1, .L12+4
	.loc 1 50 0
	ldr	r2, [r3, #4]
	.loc 1 49 0
	ldr	r3, [r3, #0]
.LVL0:
	.loc 1 52 0
	mov	r0, #0	@ movhi
	.loc 1 54 0
	subs	r2, r2, r3
.LVL1:
	.loc 1 52 0
	strh	r0, [r1, #14]	@ movhi
.LBB55:
	.loc 1 57 0
	ldr	ip, .L12+8
.LBE55:
	.loc 1 54 0
	addmi	r2, r2, #256
.LBB66:
	.loc 1 57 0
	mov	r4, #12
.LVL2:
.L9:
	mul	r1, r4, r3
.LVL3:
	add	r0, ip, r1
.LBB56:
.LBB57:
	.loc 1 38 0
	ldrb	r6, [r0, #9]	@ zero_extendqisi2
	cmp	r6, #16
	ldr	r6, [ip, r1]
	ldrb	r1, [r0, #8]	@ zero_extendqisi2
.LBB61:
	.loc 1 40 0
	moveq	r6, r6, asl #16
	.loc 1 39 0
	addeq	r1, r1, #67108864
.LVL4:
.LBE61:
.LBB60:
	.loc 1 42 0
	addne	r1, r1, #67108864
.LVL5:
.LBE60:
.LBB59:
	.loc 1 39 0
	addeq	r1, r1, #1024
.LVL6:
	.loc 1 40 0
	moveq	r6, r6, lsr #16
.LBE59:
.LBB58:
	.loc 1 42 0
	addne	r1, r1, #1024
.LVL7:
.LBE58:
.LBE57:
.LBE56:
	.loc 1 62 0
	add	r3, r3, #1
.LBB65:
.LBB64:
.LBB62:
	.loc 1 40 0
	streqh	r6, [r1, #0]	@ movhi
.LVL8:
.LBE62:
.LBB63:
	.loc 1 43 0
	strne	r6, [r1, #0]
.LBE63:
.LBE64:
.LBE65:
	.loc 1 63 0
	cmp	r3, #255
	movgt	r3, #0
	.loc 1 65 0
	subs	r2, r2, #1
	beq	.L6
	.loc 1 70 0
	mla	r1, r4, r3, ip
.LVL9:
	.loc 1 72 0
	ldrh	r6, [r0, #6]
	ldrh	r7, [r1, #6]
	.loc 1 71 0
	ldrh	r8, [r1, #4]
	ldrh	r1, [r0, #4]
.LVL10:
	.loc 1 72 0
	cmp	r7, r6
	.loc 1 71 0
	rsb	r1, r1, r8
.LVL11:
	.loc 1 73 0
	rsbhi	r6, r6, r7
	addhi	r1, r1, r6, asl #10
	.loc 1 77 0
	cmp	r1, #0
	ble	.L9
	.loc 1 80 0
	rsb	r1, r1, #0
.LVL12:
	ldr	r2, .L12+4
.LVL13:
	mov	r1, r1, asl #16
	mov	r1, r1, lsr #16
	strh	r1, [r2, #12]	@ movhi
	.loc 1 81 0
	mov	r1, #196	@ movhi
	strh	r1, [r2, #14]	@ movhi
.LVL14:
.L6:
.LBE66:
	.loc 1 85 0
	ldr	r2, .L12
.LVL15:
	str	r3, [r2, #0]
	.loc 1 86 0
	ldmfd	sp!, {r4, r6, r7, r8}
	bx	lr
.L13:
	.align	2
.L12:
	.word	.LANCHOR0
	.word	67109120
	.word	.LANCHOR0+8
.LFE28:
	.size	neoAudioEventHandler, .-neoAudioEventHandler
	.align	2
	.global	neoAudioShutdown
	.type	neoAudioShutdown, %function
neoAudioShutdown:
.LFB36:
	.loc 1 128 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 132 0
	ldr	r0, .L20
	.loc 1 131 0
	mov	r3, #0
	.loc 1 138 0
	ldr	r1, .L20+4
	.loc 1 131 0
	ldr	r2, .L20+8
	.loc 1 128 0
	stmfd	sp!, {r4, r6, r7}
.LCFI1:
	.loc 1 134 0
	str	r3, [r0, #3080]
	.loc 1 132 0
	str	r3, [r0, #4]
	.loc 1 131 0
	strh	r3, [r2, #-119]	@ movhi
	.loc 1 133 0
	str	r3, [r0, #0]
	.loc 1 138 0
	mov	r2, r3
.LVL16:
	strh	r3, [r1, #2]	@ movhi
	strh	r3, [r1, #6]	@ movhi
	strh	r3, [r1, #10]	@ movhi
	strh	r3, [r1, #14]	@ movhi
	.loc 1 141 0
	mov	r1, r3
.LVL17:
.L15:
	mov	r3, r2, asl #4
.LVL18:
	.loc 1 142 0
	ldr	r6, .L20+12
	.loc 1 143 0
	ldr	r4, .L20+16
	.loc 1 144 0
	ldr	ip, .L20+20
	.loc 1 145 0
	ldr	r0, .L20+24
	.loc 1 141 0
	add	r7, r3, #67108864
	.loc 1 140 0
	add	r2, r2, #1
	.loc 1 145 0
	add	r0, r3, r0
	.loc 1 142 0
	add	r6, r3, r6
	.loc 1 143 0
	add	r4, r3, r4
	.loc 1 144 0
	add	ip, r3, ip
	.loc 1 141 0
	add	r7, r7, #1024
	.loc 1 143 0
	mov	r3, #0	@ movhi
	.loc 1 140 0
	cmp	r2, #16
	.loc 1 141 0
	str	r1, [r7, #0]
	.loc 1 142 0
	str	r1, [r6, #0]
	.loc 1 143 0
	strh	r3, [r4, #0]	@ movhi
	.loc 1 144 0
	strh	r3, [ip, #0]	@ movhi
	.loc 1 145 0
	str	r1, [r0, #0]
	.loc 1 140 0
	bne	.L15
	mov	r3, #0
.LVL19:
	.loc 1 148 0
	ldr	r1, .L20+28
	mov	r2, r3
.L16:
	strb	r2, [r1, r3]
	.loc 1 147 0
	add	r3, r3, #1
	cmp	r3, #256
	bne	.L16
	.loc 1 150 0
	ldmfd	sp!, {r4, r6, r7}
	bx	lr
.L21:
	.align	2
.L20:
	.word	.LANCHOR0
	.word	67109120
	.word	41940223
	.word	67109892
	.word	67109896
	.word	67109898
	.word	67109900
	.word	.LANCHOR0+3084
.LFE36:
	.size	neoAudioShutdown, .-neoAudioShutdown
	.align	2
	.global	neoAudioReset
	.type	neoAudioReset, %function
neoAudioReset:
.LFB37:
	.loc 1 153 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r0, r1, r2, r3, r4, r6, r7, r8, r9, sl, fp, lr}
.LCFI2:
	.loc 1 154 0
	mov	r3, #67108864
	ldr	r1, [r3, #520]
	.loc 1 158 0
	mov	r4, #0
	str	r4, [r3, #520]
	.loc 1 154 0
	str	r1, [sp, #8]
	.loc 1 160 0
	bl	neoAudioShutdown
	.loc 1 163 0
	ldr	r2, .L26
	ldr	r3, .L26+4
	.loc 1 164 0
	mov	r6, #128	@ movhi
	.loc 1 166 0
	mov	r1, #64512
	.loc 1 167 0
	mov	r7, #132	@ movhi
	.loc 1 163 0
	strh	r3, [r2, #0]	@ movhi
.LBB67:
.LBB69:
.LBB71:
.LBB72:
	.loc 1 100 0
	ldr	fp, .L26+8
.LBE72:
.LBE71:
.LBE69:
.LBE67:
	.loc 1 164 0
	strh	r6, [r2, #2]	@ movhi
	.loc 1 166 0
	strh	r1, [r2, #4]	@ movhi
	.loc 1 167 0
	strh	r7, [r2, #6]	@ movhi
	.loc 1 170 0
	strh	r3, [r2, #8]	@ movhi
	.loc 1 171 0
	strh	r6, [r2, #10]	@ movhi
	.loc 1 173 0
	strh	r4, [r2, #12]	@ movhi
	.loc 1 174 0
	strh	r4, [r2, #14]	@ movhi
.LBB75:
.LBB78:
.LBB81:
.LBB83:
	.loc 1 100 0
	ldr	r2, .L26+12
.LBE83:
.LBE81:
.LBE78:
.LBE75:
	.loc 1 174 0
	mov	r3, r4
.LVL20:
.L23:
	.loc 1 181 0
	ldr	r4, .L26+16
	.loc 1 178 0
	mov	r1, r3, asl #4
	.loc 1 181 0
	add	r4, r1, r4
	.loc 1 178 0
	ldr	r6, .L26+20
.LBB89:
.LBB93:
.LBB97:
.LBB100:
	.loc 1 100 0
	add	r9, r4, r2
.LBE100:
.LBE97:
.LBE93:
.LBE89:
	.loc 1 178 0
	ldr	r7, .L26+24
	add	r6, r1, r6
.LBB109:
.LBB92:
.LBB96:
.LBB101:
	.loc 1 100 0
	str	r9, [sp, #4]
.LBE101:
.LBE96:
.LBE92:
.LBE109:
	.loc 1 178 0
	mov	r8, r3, asl #2
	.loc 1 183 0
	ldr	ip, .L26+28
	.loc 1 178 0
	add	r7, r8, r7
.LBB110:
.LBB106:
.LBB104:
.LBB99:
	.loc 1 100 0
	ldr	sl, [sp, #4]
.LBE99:
.LBE104:
.LBE106:
.LBE110:
.LBB111:
.LBB77:
.LBB80:
.LBB84:
	add	r8, r6, r2
.LBE84:
.LBE80:
.LBE77:
.LBE111:
	.loc 1 178 0
	ldr	r9, [r7, #-251]
	.loc 1 183 0
	add	ip, r1, ip
.LBB112:
.LBB87:
.LBB86:
.LBB82:
	.loc 1 100 0
	add	r8, r8, #-67108864
.LBE82:
.LBE86:
.LBE87:
.LBE112:
.LBB113:
.LBB91:
.LBB95:
.LBB102:
	add	r7, sl, #-67108864
.LBE102:
.LBE95:
.LBE91:
.LBE113:
	.loc 1 184 0
	ldr	r0, .L26+32
.LBB114:
.LBB117:
.LBB120:
.LBB123:
	.loc 1 105 0
	add	sl, ip, r2
.LBE123:
.LBE120:
.LBE117:
.LBE114:
.LBB133:
.LBB76:
.LBB79:
.LBB85:
	.loc 1 100 0
	sub	r8, r8, #1024
	str	r9, [r8, #0]
.LBE85:
.LBE79:
.LBE76:
.LBE133:
.LBB134:
.LBB107:
.LBB105:
.LBB98:
	sub	r7, r7, #1024
.LBE98:
.LBE105:
.LBE107:
.LBE134:
.LBB135:
.LBB88:
	.loc 1 111 0
	str	r9, [r6, #0]
.LBE88:
.LBE135:
.LBB136:
.LBB130:
.LBB127:
.LBB124:
	.loc 1 105 0
	str	sl, [sp, #4]
.LBE124:
.LBE127:
.LBE130:
.LBE136:
.LBB137:
.LBB90:
.LBB94:
.LBB103:
	.loc 1 100 0
	mov	r6, #1024
	str	r6, [r7, #0]
.LBE103:
.LBE94:
.LBE90:
.LBE137:
	.loc 1 184 0
	add	r0, r1, r0
.LBB138:
.LBB116:
.LBB119:
.LBB122:
	.loc 1 105 0
	ldr	r7, [sp, #4]
.LBE122:
.LBE119:
.LBE116:
.LBE138:
.LBB139:
.LBB142:
.LBB145:
.LBB148:
	add	sl, r0, r2
.LBE148:
.LBE145:
.LBE142:
.LBE139:
.LBB155:
.LBB108:
	.loc 1 111 0
	str	r6, [r4, #0]
.LBE108:
.LBE155:
	.loc 1 186 0
	add	r1, r1, #67108864
.LBB156:
.LBB68:
.LBB70:
.LBB73:
	.loc 1 100 0
	str	fp, [r2, r3, asl #4]
.LBE73:
.LBE70:
.LBE68:
.LBE156:
.LBB157:
.LBB141:
.LBB144:
.LBB147:
	.loc 1 105 0
	add	r6, sl, #-67108864
.LBE147:
.LBE144:
.LBE141:
.LBE157:
.LBB158:
.LBB131:
.LBB128:
.LBB125:
	add	r4, r7, #-67108864
.LBE125:
.LBE128:
.LBE131:
.LBE158:
.LBB159:
.LBB153:
.LBB151:
.LBB149:
	ldr	sl, .L26+36
.LBE149:
.LBE151:
.LBE153:
.LBE159:
	.loc 1 176 0
	add	r3, r3, #1
.LVL21:
.LBB160:
.LBB115:
.LBB118:
.LBB121:
	.loc 1 105 0
	mov	r9, #0	@ movhi
	sub	r4, r4, #1024
.LBE121:
.LBE118:
.LBE115:
.LBE160:
.LBB161:
.LBB140:
.LBB143:
.LBB146:
	sub	r6, r6, #1024
.LBE146:
.LBE143:
.LBE140:
.LBE161:
	.loc 1 186 0
	add	r1, r1, #1024
	.loc 1 176 0
	cmp	r3, #7
.LBB162:
.LBB132:
.LBB129:
.LBB126:
	.loc 1 105 0
	strh	r9, [r4, #0]	@ movhi
.LBE126:
.LBE129:
	.loc 1 117 0
	strh	r9, [ip, #0]	@ movhi
.LBE132:
.LBE162:
.LBB163:
.LBB154:
.LBB152:
.LBB150:
	.loc 1 105 0
	strh	sl, [r6, #0]	@ movhi
.LBE150:
.LBE152:
	.loc 1 117 0
	strh	sl, [r0, #0]	@ movhi
.LBE154:
.LBE163:
.LBB164:
.LBB74:
	.loc 1 111 0
	str	fp, [r1, #0]
.LBE74:
.LBE164:
	.loc 1 176 0
	bne	.L23
	.loc 1 194 0
	ldr	r1, [sp, #8]
	mov	r2, r1, asl #16
	mov	r2, r2, lsr #16
	mov	r3, #67108864
.LVL22:
	str	r2, [r3, #520]
	.loc 1 195 0
	ldmfd	sp!, {r0, r1, r2, r3, r4, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	67109120
	.word	-1820
	.word	-1472200577
	.word	.LANCHOR0+3084
	.word	67109900
	.word	67109892
	.word	41940247
	.word	67109898
	.word	67109896
	.word	-910
.LFE37:
	.size	neoAudioReset, .-neoAudioReset
	.align	2
	.global	neoAudioInit
	.type	neoAudioInit, %function
neoAudioInit:
.LFB35:
	.loc 1 121 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 123 0
	ldr	r2, .L30
	ldr	r3, .L30+4
	strh	r2, [r3, #0]	@ movhi
	.loc 1 125 0
	.loc 1 124 0
	b	neoAudioReset
.L31:
	.align	2
.L30:
	.word	-32641
	.word	67110144
.LFE35:
	.size	neoAudioInit, .-neoAudioInit
	.align	2
	.global	neoAudioGetTimestamp
	.type	neoAudioGetTimestamp, %function
neoAudioGetTimestamp:
.LFB41:
	.loc 1 262 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 263 0
	ldr	r3, .L34
	ldrh	r0, [r3, #4]
	.loc 1 264 0
	sub	r0, r0, #64512
	bx	lr
.L35:
	.align	2
.L34:
	.word	67109120
.LFE41:
	.size	neoAudioGetTimestamp, .-neoAudioGetTimestamp
	.align	2
	.global	neoAudioPause
	.type	neoAudioPause, %function
neoAudioPause:
.LFB42:
	.loc 1 267 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 267 0
	mov	r3, #11
.LVL23:
	.loc 1 271 0
	mov	r1, #0
.L37:
	mov	r2, r3, asl #4
	add	r2, r2, #67108864
	.loc 1 270 0
	add	r3, r3, #1
	.loc 1 271 0
	add	r2, r2, #1024
	.loc 1 270 0
	cmp	r3, #16
	.loc 1 271 0
	str	r1, [r2, #0]
	.loc 1 270 0
	bne	.L37
	.loc 1 273 0
	ldr	r3, .L40
.LVL24:
	mov	r2, #32768
	strh	r2, [r3, #0]	@ movhi
	.loc 1 274 0
	bx	lr
.L41:
	.align	2
.L40:
	.word	67110144
.LFE42:
	.size	neoAudioPause, .-neoAudioPause
	.align	2
	.global	neoAudioResume
	.type	neoAudioResume, %function
neoAudioResume:
.LFB43:
	.loc 1 277 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 278 0
	ldr	r2, .L44
	ldr	r3, .L44+4
	strh	r2, [r3, #0]	@ movhi
	.loc 1 279 0
	bx	lr
.L45:
	.align	2
.L44:
	.word	-32641
	.word	67110144
.LFE43:
	.size	neoAudioResume, .-neoAudioResume
	.align	2
	.global	neoAudioUpdate
	.type	neoAudioUpdate, %function
neoAudioUpdate:
.LFB44:
	.loc 1 282 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 283 0
	ldr	r0, .L59
	.loc 1 285 0
	ldr	r1, .L59+4
	.loc 1 282 0
	stmfd	sp!, {r4, r6, r7, r8, r9, sl, fp}
.LCFI3:
	.loc 1 283 0
	ldrh	r2, [r0, #4]
	.loc 1 285 0
	ldr	r3, [r1, #3080]
	cmp	r2, r3
.LVL25:
	bcs	.L47
.LBB165:
	.loc 1 288 0
	ldr	r3, .L59+8
	.loc 1 286 0
	mov	ip, #67108864
	ldr	fp, [ip, #520]
.LVL26:
	.loc 1 288 0
	ldrh	r4, [r3, #-119]
	add	r4, r4, #1
	mov	r4, r4, asl #16
	mov	r4, r4, lsr #16
	.loc 1 291 0
	mov	r8, #0
	.loc 1 288 0
	strh	r4, [r3, #-119]	@ movhi
	.loc 1 291 0
	str	r8, [ip, #520]
	.loc 1 292 0
	ldrh	sl, [r3, #-119]
	.loc 1 295 0
	mov	r3, r1
.LBB166:
.LBB167:
	.loc 1 263 0
	ldrh	r7, [r0, #4]
.LBE167:
.LBE166:
	.loc 1 295 0
	ldr	r1, [r1, #4]
	mov	ip, #12
	.loc 1 298 0
	add	r0, r3, #8
	.loc 1 295 0
	b	.L58
.LVL27:
.L52:
	.loc 1 298 0
	ldr	r6, [r3, #0]
	mul	r4, ip, r6
	add	r6, r0, r4
.LBB168:
.LBB169:
	.loc 1 38 0
	ldrb	r9, [r6, #9]	@ zero_extendqisi2
	ldr	r4, [r0, r4]
	ldrb	r6, [r6, #8]	@ zero_extendqisi2
	cmp	r9, #16
.LBB170:
	.loc 1 40 0
	moveq	r4, r4, asl #16
	.loc 1 39 0
	addeq	r6, r6, #67108864
.LVL28:
.LBE170:
.LBB171:
	.loc 1 42 0
	addne	r6, r6, #67108864
.LVL29:
.LBE171:
.LBB172:
	.loc 1 40 0
	moveq	r4, r4, lsr #16
	.loc 1 39 0
	addeq	r6, r6, #1024
.LVL30:
.LBE172:
.LBB173:
	.loc 1 42 0
	addne	r6, r6, #1024
.LVL31:
.LBE173:
.LBB174:
	.loc 1 40 0
	streqh	r4, [r6, #0]	@ movhi
.LVL32:
.LBE174:
.LBB175:
	.loc 1 43 0
	strne	r4, [r6, #0]
.LBE175:
.LBE169:
.LBE168:
	.loc 1 299 0
	ldr	r4, [r3, #0]
	add	r4, r4, #1
	str	r4, [r3, #0]
	.loc 1 300 0
	ldr	r4, [r3, #0]
	cmp	r4, #255
	.loc 1 301 0
	strhi	r8, [r3, #0]
.L58:
	.loc 1 295 0
	ldr	r4, [r3, #0]
	cmp	r1, r4
	beq	.L51
	.loc 1 296 0
	ldr	r6, [r3, #0]
.LVL33:
	.loc 1 295 0
	mla	r4, ip, r6, r3
	ldrh	r4, [r4, #14]
	cmp	r4, sl
	bcc	.L52
.LVL34:
.L51:
	.loc 1 305 0
	ldr	r3, .L59
	ldrh	r0, [r3, #14]
	ands	r0, r0, #128
	bne	.L53
	.loc 1 307 0
	strh	r0, [r3, #14]	@ movhi
	.loc 1 308 0
	ldr	r0, .L59+4
	ldr	ip, [r0, #0]
	cmp	r1, ip
	beq	.L53
.LBB176:
	.loc 1 310 0
	ldr	ip, [r0, #0]
	mov	r4, #12
	mla	r1, r4, ip, r0
	ldrh	r1, [r1, #12]
	add	r1, r1, #64512
	rsb	r7, r7, r1
.LVL35:
	.loc 1 311 0
	cmp	r7, #1
	movlt	r7, #1
	.loc 1 313 0
	rsb	r7, r7, #0
.LVL36:
	mov	r7, r7, asl #16
	mov	r7, r7, lsr #16
	.loc 1 314 0
	mov	r1, #196	@ movhi
	.loc 1 313 0
	strh	r7, [r3, #12]	@ movhi
	.loc 1 314 0
	strh	r1, [r3, #14]	@ movhi
.L53:
.LBE176:
	.loc 1 318 0
	mov	r3, #67108864
	str	fp, [r3, #520]
.L47:
.LBE165:
	.loc 1 320 0
	ldr	r3, .L59+4
	str	r2, [r3, #3080]
	.loc 1 321 0
	ldmfd	sp!, {r4, r6, r7, r8, r9, sl, fp}
	bx	lr
.L60:
	.align	2
.L59:
	.word	67109120
	.word	.LANCHOR0
	.word	41940223
.LFE44:
	.size	neoAudioUpdate, .-neoAudioUpdate
	.align	2
	.type	neoAudioBufferWrite, %function
neoAudioBufferWrite:
.LFB38:
	.loc 1 198 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL37:
	.loc 1 199 0
	ldr	ip, .L69
	.loc 1 198 0
	stmfd	sp!, {r4, r6, r7, lr}
.LCFI4:
	.loc 1 200 0
	ldr	r3, [ip, #4]
	.loc 1 199 0
	ldr	r4, [ip, #0]
	.loc 1 202 0
	subs	r4, r3, r4
.LVL38:
	addmi	r4, r4, #256
	.loc 1 204 0
	cmp	r4, #254
	bgt	.L63
.LBB177:
	.loc 1 205 0
	mov	lr, #12
	mul	ip, lr, r3
	ldr	lr, .L69+4
	add	r7, lr, ip
.LVL39:
	.loc 1 212 0
	strb	r2, [r7, #9]
	.loc 1 211 0
	str	r1, [lr, ip]
	.loc 1 210 0
	strb	r0, [r7, #8]
	.loc 1 206 0
	add	r6, r3, #1
.LVL40:
	.loc 1 213 0
	bl	neoAudioUpdate
.LVL41:
.LBB178:
.LBB179:
	.loc 1 263 0
	ldr	r3, .L69+8
	ldrh	r2, [r3, #4]
.LBE179:
.LBE178:
	.loc 1 214 0
	sub	r2, r2, #64512
	strh	r2, [r7, #4]	@ movhi
	.loc 1 215 0
	ldr	r2, .L69+12
	ldrh	r2, [r2, #-119]
	.loc 1 207 0
	cmp	r6, #255
	.loc 1 215 0
	add	r2, r2, #2
	.loc 1 207 0
	movgt	r6, #0
	.loc 1 217 0
	cmp	r4, #0
	.loc 1 215 0
	strh	r2, [r7, #6]	@ movhi
	.loc 1 219 0
	moveq	r2, #63488
	streqh	r2, [r3, #12]	@ movhi
	.loc 1 220 0
	moveq	r2, #196	@ movhi
	streqh	r2, [r3, #14]	@ movhi
	.loc 1 223 0
	ldr	r3, .L69
	str	r6, [r3, #4]
	b	.L68
.LVL42:
.L63:
.LBE177:
.LBB180:
.LBB181:
.LBB182:
	.loc 1 38 0
	and	r2, r2, #255
.LVL43:
	cmp	r2, #16
.LBB184:
	.loc 1 40 0
	moveq	r1, r1, asl #16
.LVL44:
	ldreq	r3, .L69+16
.LBE184:
.LBB183:
	.loc 1 42 0
	ldrne	r3, .L69+16
.LBE183:
.LBE182:
.LBE181:
	.loc 1 230 0
	and	r0, r0, #255
.LVL45:
.LBB188:
.LBB187:
.LBB185:
	.loc 1 40 0
	moveq	r1, r1, lsr #16
	streqh	r1, [r0, r3]	@ movhi
.LBE185:
.LBB186:
	.loc 1 43 0
	strne	r1, [r0, r3]
.LVL46:
.L68:
.LBE186:
.LBE187:
.LBE188:
.LBE180:
	.loc 1 233 0
	ldmfd	sp!, {r4, r6, r7, lr}
	bx	lr
.L70:
	.align	2
.L69:
	.word	.LANCHOR0
	.word	.LANCHOR0+8
	.word	67109120
	.word	41940223
	.word	67109888
.LFE38:
	.size	neoAudioBufferWrite, .-neoAudioBufferWrite
	.align	2
	.global	neoAudioBufferWrite16
	.type	neoAudioBufferWrite16, %function
neoAudioBufferWrite16:
.LFB40:
	.loc 1 249 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL47:
	stmfd	sp!, {r4, r6, r7, lr}
.LCFI5:
	.loc 1 250 0
	add	r4, r0, #-67108864
	sub	r4, r4, #1024
	cmp	r4, #255
	bhi	.L73
.LBB189:
.LBB190:
	.loc 1 95 0
	ldr	r7, .L74
	ldrh	r3, [r7, r4]
.LVL48:
.LBE190:
.LBE189:
	.loc 1 254 0
	and	r1, r2, r1
.LVL49:
	bic	r6, r3, r2
	orr	r6, r6, r1
.LVL50:
	.loc 1 255 0
	cmp	r6, r3
	beq	.L73
	.loc 1 256 0
	mov	r1, r6
	mov	r2, #16
.LVL51:
	bl	neoAudioBufferWrite
.LVL52:
.LBB191:
.LBB192:
	.loc 1 105 0
	strh	r6, [r7, r4]	@ movhi
.LVL53:
.L73:
.LBE192:
.LBE191:
	.loc 1 259 0
	ldmfd	sp!, {r4, r6, r7, lr}
	bx	lr
.L75:
	.align	2
.L74:
	.word	.LANCHOR0+3084
.LFE40:
	.size	neoAudioBufferWrite16, .-neoAudioBufferWrite16
	.align	2
	.global	neoAudioBufferWrite32
	.type	neoAudioBufferWrite32, %function
neoAudioBufferWrite32:
.LFB39:
	.loc 1 236 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL54:
	stmfd	sp!, {r4, r6, r7, lr}
.LCFI6:
	.loc 1 237 0
	add	r4, r0, #-67108864
	sub	r4, r4, #1024
	cmp	r4, #255
	bhi	.L78
.LBB193:
.LBB194:
	.loc 1 90 0
	ldr	r7, .L79
	ldr	r3, [r7, r4]
.LVL55:
.LBE194:
.LBE193:
	.loc 1 241 0
	and	r1, r2, r1
.LVL56:
	bic	r6, r3, r2
	orr	r6, r6, r1
.LVL57:
	.loc 1 242 0
	cmp	r6, r3
	beq	.L78
	.loc 1 243 0
	mov	r1, r6
	mov	r2, #32
.LVL58:
	bl	neoAudioBufferWrite
.LVL59:
.LBB195:
.LBB196:
	.loc 1 100 0
	str	r6, [r7, r4]
.LVL60:
.L78:
.LBE196:
.LBE195:
	.loc 1 246 0
	ldmfd	sp!, {r4, r6, r7, lr}
	bx	lr
.L80:
	.align	2
.L79:
	.word	.LANCHOR0+3084
.LFE39:
	.size	neoAudioBufferWrite32, .-neoAudioBufferWrite32
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_eventProcessed, %object
	.size	g_eventProcessed, 4
g_eventProcessed:
	.space	4
	.type	g_eventSent, %object
	.size	g_eventSent, 4
g_eventSent:
	.space	4
	.type	g_audioEvent, %object
	.size	g_audioEvent, 3072
g_audioEvent:
	.space	3072
	.type	g_lastTimer, %object
	.size	g_lastTimer, 4
g_lastTimer:
	.space	4
	.type	g_audioIOMap, %object
	.size	g_audioIOMap, 256
g_audioIOMap:
	.space	256
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI0-.LFB28
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0x8
	.sleb128 1
	.byte	0x11
	.uleb128 0x7
	.sleb128 2
	.byte	0x11
	.uleb128 0x6
	.sleb128 3
	.byte	0x11
	.uleb128 0x4
	.sleb128 4
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI1-.LFB36
	.byte	0xe
	.uleb128 0xc
	.byte	0x11
	.uleb128 0x7
	.sleb128 1
	.byte	0x11
	.uleb128 0x6
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
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI2-.LFB37
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x7
	.sleb128 6
	.byte	0x11
	.uleb128 0x6
	.sleb128 7
	.byte	0x11
	.uleb128 0x4
	.sleb128 8
	.byte	0x11
	.uleb128 0x3
	.sleb128 9
	.byte	0x11
	.uleb128 0x2
	.sleb128 10
	.byte	0x11
	.uleb128 0x1
	.sleb128 11
	.byte	0x11
	.uleb128 0x0
	.sleb128 12
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI3-.LFB44
	.byte	0xe
	.uleb128 0x1c
	.byte	0x11
	.uleb128 0xb
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
	.uleb128 0x4
	.sleb128 7
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI4-.LFB38
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x7
	.sleb128 2
	.byte	0x11
	.uleb128 0x6
	.sleb128 3
	.byte	0x11
	.uleb128 0x4
	.sleb128 4
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI5-.LFB40
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x7
	.sleb128 2
	.byte	0x11
	.uleb128 0x6
	.sleb128 3
	.byte	0x11
	.uleb128 0x4
	.sleb128 4
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI6-.LFB39
	.byte	0xe
	.uleb128 0x10
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x7
	.sleb128 2
	.byte	0x11
	.uleb128 0x6
	.sleb128 3
	.byte	0x11
	.uleb128 0x4
	.sleb128 4
	.align	2
.LEFDE20:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB36-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB37-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE37-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 28
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL34-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL34-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB38-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE38-.Ltext0
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
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL46-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL46-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL46-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "C:/Users/GRX/NeoDS/arm7/source/DrZ80.h"
	.file 5 "C:/Users/GRX/NeoDS/arm7/source/NeoCpuZ80.h"
	.file 6 "C:/Users/GRX/NeoDS/arm7/source/NeoSystem7.h"
	.file 7 "C:/Users/GRX/NeoDS/arm7/../common/source/NeoIPC.h"
	.section	.debug_info
	.4byte	0xd15
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x1
	.4byte	.LASF124
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
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
	.4byte	0xb3
	.uleb128 0x7
	.byte	0x4
	.4byte	0xdf
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0xa
	.4byte	0x9e
	.4byte	0xfb
	.uleb128 0xb
	.4byte	0xe1
	.byte	0x6
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x7
	.byte	0x4
	.4byte	0x9e
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x70
	.byte	0x4
	.byte	0x13
	.4byte	0x2ce
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x4
	.byte	0x14
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x4
	.byte	0x15
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x4
	.byte	0x16
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x4
	.byte	0x17
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x4
	.byte	0x18
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x4
	.byte	0x19
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x4
	.byte	0x1a
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x4
	.byte	0x1b
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x4
	.byte	0x1c
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x4
	.byte	0x1d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x4
	.byte	0x1e
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x4
	.byte	0x1f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x4
	.byte	0x20
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x4
	.byte	0x21
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x4
	.byte	0x22
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x4
	.byte	0x23
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x4
	.byte	0x24
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x4
	.byte	0x27
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x4
	.byte	0x28
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x4
	.byte	0x29
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x4
	.byte	0x2a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x4
	.byte	0x2b
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x4
	.byte	0x2c
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x4
	.byte	0x2d
	.4byte	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x4
	.byte	0x2e
	.4byte	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x4
	.byte	0x2f
	.4byte	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x4
	.byte	0x30
	.4byte	0x323
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x4
	.byte	0x31
	.4byte	0x30c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x4
	.byte	0x32
	.4byte	0x339
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x4
	.byte	0x33
	.4byte	0x34f
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x4
	.byte	0x34
	.4byte	0x34f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.4byte	0x2df
	.uleb128 0xf
	.4byte	0x33
	.uleb128 0xf
	.4byte	0x57
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2ce
	.uleb128 0xe
	.byte	0x1
	.4byte	0x2f6
	.uleb128 0xf
	.4byte	0x57
	.uleb128 0xf
	.4byte	0x57
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2e5
	.uleb128 0x10
	.byte	0x1
	.4byte	0x33
	.4byte	0x30c
	.uleb128 0xf
	.4byte	0x57
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2fc
	.uleb128 0xe
	.byte	0x1
	.4byte	0x323
	.uleb128 0xf
	.4byte	0x57
	.uleb128 0xf
	.4byte	0x33
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x312
	.uleb128 0x10
	.byte	0x1
	.4byte	0x57
	.4byte	0x339
	.uleb128 0xf
	.4byte	0x57
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x329
	.uleb128 0x10
	.byte	0x1
	.4byte	0x7b
	.4byte	0x34f
	.uleb128 0xf
	.4byte	0x57
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x33f
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x5
	.byte	0xc
	.4byte	0x10f
	.uleb128 0x11
	.4byte	.LASF50
	.2byte	0x8f0
	.byte	0x6
	.byte	0x1f
	.4byte	0x399
	.uleb128 0x12
	.ascii	"z80\000"
	.byte	0x6
	.byte	0x20
	.4byte	0x355
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x6
	.byte	0x26
	.4byte	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x6
	.byte	0x27
	.4byte	0x3a9
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.byte	0x0
	.uleb128 0xa
	.4byte	0x109
	.4byte	0x3a9
	.uleb128 0xb
	.4byte	0xe1
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.4byte	0x9e
	.4byte	0x3ba
	.uleb128 0x13
	.4byte	0xe1
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x6
	.byte	0x28
	.4byte	0x360
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.byte	0x47
	.4byte	0x3ef
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x7
	.byte	0x48
	.4byte	0xb3
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0x7
	.byte	0x49
	.4byte	0xb3
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0x7
	.byte	0x4a
	.4byte	0xb3
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0xc
	.byte	0x7
	.byte	0x45
	.4byte	0x42e
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x7
	.byte	0x46
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	0x3c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x7
	.byte	0x4c
	.4byte	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x7
	.byte	0x4d
	.4byte	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x7
	.byte	0x4e
	.4byte	0x3ef
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x98
	.byte	0x7
	.byte	0x50
	.4byte	0x574
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x7
	.byte	0x52
	.4byte	0x109
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x7
	.byte	0x53
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x7
	.byte	0x54
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x7
	.byte	0x55
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x7
	.byte	0x56
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x7
	.byte	0x57
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x7
	.byte	0x58
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x7
	.byte	0x59
	.4byte	0x574
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x7
	.byte	0x5a
	.4byte	0x58a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x7
	.byte	0x5b
	.4byte	0x5a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x7
	.byte	0x5c
	.4byte	0x5a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x7
	.byte	0x5d
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x7
	.byte	0x60
	.4byte	0x5b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x7
	.byte	0x61
	.4byte	0xb3
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x7
	.byte	0x63
	.4byte	0xa8
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x7
	.byte	0x65
	.4byte	0xeb
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x7
	.byte	0x68
	.4byte	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x91
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x7
	.byte	0x69
	.4byte	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x92
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x7
	.byte	0x6a
	.4byte	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x93
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x7
	.byte	0x6b
	.4byte	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x7
	.byte	0x6c
	.4byte	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x95
	.byte	0x0
	.uleb128 0xa
	.4byte	0x584
	.4byte	0x584
	.uleb128 0xb
	.4byte	0xe1
	.byte	0x6
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xa8
	.uleb128 0xa
	.4byte	0x59a
	.4byte	0x59a
	.uleb128 0xb
	.4byte	0xe1
	.byte	0x6
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x42e
	.uleb128 0xa
	.4byte	0xbe
	.4byte	0x5b0
	.uleb128 0xb
	.4byte	0xe1
	.byte	0x6
	.byte	0x0
	.uleb128 0xa
	.4byte	0xb3
	.4byte	0x5c0
	.uleb128 0xb
	.4byte	0xe1
	.byte	0x3
	.byte	0x0
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0xc
	.byte	0x1
	.byte	0xa
	.4byte	0x613
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0x1
	.byte	0xb
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x1
	.byte	0xc
	.4byte	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x1
	.byte	0xd
	.4byte	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x1
	.byte	0xe
	.4byte	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0x1
	.byte	0xf
	.4byte	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x1
	.byte	0x10
	.4byte	0x5c0
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.byte	0x1
	.4byte	0x655
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x1
	.byte	0x1b
	.4byte	0x655
	.uleb128 0x19
	.4byte	0x647
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x1
	.byte	0x27
	.4byte	0x660
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x1
	.byte	0x2a
	.4byte	0x66b
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x65b
	.uleb128 0x1c
	.4byte	0x613
	.uleb128 0x7
	.byte	0x4
	.4byte	0x666
	.uleb128 0x6
	.4byte	0x57
	.uleb128 0x7
	.byte	0x4
	.4byte	0x671
	.uleb128 0x6
	.4byte	0x7b
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x3
	.4byte	0x69a
	.uleb128 0x1d
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x62
	.4byte	0x66b
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x1
	.byte	0x62
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.byte	0x3
	.4byte	0x6be
	.uleb128 0x1d
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x67
	.4byte	0x660
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x1
	.byte	0x67
	.4byte	0xa8
	.byte	0x0
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.byte	0x3
	.4byte	0x6e2
	.uleb128 0x1d
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x6c
	.4byte	0x66b
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x1
	.byte	0x6c
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.byte	0x3
	.4byte	0x706
	.uleb128 0x1d
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x72
	.4byte	0x660
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x1
	.byte	0x72
	.4byte	0xa8
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x105
	.4byte	0xb3
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF96
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.4byte	0xa8
	.byte	0x3
	.4byte	0x731
	.uleb128 0x1d
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x5d
	.4byte	0x660
	.byte	0x0
	.uleb128 0x1f
	.4byte	.LASF97
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.4byte	0xb3
	.byte	0x3
	.4byte	0x74e
	.uleb128 0x1d
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x58
	.4byte	0x66b
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF102
	.byte	0x1
	.byte	0x2f
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST0
	.4byte	0x7eb
	.uleb128 0x21
	.4byte	.LASF98
	.byte	0x1
	.byte	0x31
	.4byte	0xc9
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF99
	.byte	0x1
	.byte	0x32
	.4byte	0xc9
	.4byte	.LLST1
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x21
	.4byte	.LASF92
	.byte	0x1
	.byte	0x39
	.4byte	0x655
	.byte	0x1
	.byte	0x50
	.uleb128 0x22
	.4byte	.LASF100
	.byte	0x1
	.byte	0x46
	.4byte	0x655
	.4byte	.LLST2
	.uleb128 0x22
	.4byte	.LASF101
	.byte	0x1
	.byte	0x47
	.4byte	0xc9
	.4byte	.LLST3
	.uleb128 0x24
	.4byte	0x61e
	.4byte	.LBB56
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x3b
	.uleb128 0x25
	.4byte	0x62b
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x7d9
	.uleb128 0x27
	.4byte	0x648
	.4byte	.LLST4
	.byte	0x0
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x50
	.uleb128 0x27
	.4byte	0x63b
	.4byte	.LLST5
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF103
	.byte	0x1
	.byte	0x7f
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LLST6
	.4byte	0x811
	.uleb128 0x28
	.ascii	"i\000"
	.byte	0x1
	.byte	0x81
	.4byte	0xb3
	.4byte	.LLST7
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF104
	.byte	0x1
	.byte	0x98
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LLST8
	.4byte	0x956
	.uleb128 0x1a
	.4byte	.LASF105
	.byte	0x1
	.byte	0x9a
	.4byte	0xa8
	.uleb128 0x28
	.ascii	"i\000"
	.byte	0x1
	.byte	0x9b
	.4byte	0xb3
	.4byte	.LLST9
	.uleb128 0x29
	.4byte	0x6be
	.4byte	.LBB67
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0xba
	.4byte	0x879
	.uleb128 0x25
	.4byte	0x6d6
	.uleb128 0x25
	.4byte	0x6cb
	.uleb128 0x24
	.4byte	0x676
	.4byte	.LBB71
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x6e
	.uleb128 0x25
	.4byte	0x68e
	.uleb128 0x25
	.4byte	0x683
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.4byte	0x6be
	.4byte	.LBB75
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0xb2
	.4byte	0x8b1
	.uleb128 0x25
	.4byte	0x6d6
	.uleb128 0x25
	.4byte	0x6cb
	.uleb128 0x24
	.4byte	0x676
	.4byte	.LBB81
	.4byte	.Ldebug_ranges0+0xd8
	.byte	0x1
	.byte	0x6e
	.uleb128 0x25
	.4byte	0x68e
	.uleb128 0x25
	.4byte	0x683
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.4byte	0x6be
	.4byte	.LBB89
	.4byte	.Ldebug_ranges0+0x100
	.byte	0x1
	.byte	0xb5
	.4byte	0x8e9
	.uleb128 0x25
	.4byte	0x6d6
	.uleb128 0x25
	.4byte	0x6cb
	.uleb128 0x24
	.4byte	0x676
	.4byte	.LBB97
	.4byte	.Ldebug_ranges0+0x140
	.byte	0x1
	.byte	0x6e
	.uleb128 0x25
	.4byte	0x68e
	.uleb128 0x25
	.4byte	0x683
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.4byte	0x6e2
	.4byte	.LBB114
	.4byte	.Ldebug_ranges0+0x178
	.byte	0x1
	.byte	0xb7
	.4byte	0x921
	.uleb128 0x25
	.4byte	0x6fa
	.uleb128 0x25
	.4byte	0x6ef
	.uleb128 0x24
	.4byte	0x69a
	.4byte	.LBB120
	.4byte	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.byte	0x74
	.uleb128 0x25
	.4byte	0x6b2
	.uleb128 0x25
	.4byte	0x6a7
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.4byte	0x6e2
	.4byte	.LBB139
	.4byte	.Ldebug_ranges0+0x1e8
	.byte	0x1
	.byte	0xb8
	.uleb128 0x25
	.4byte	0x6fa
	.uleb128 0x25
	.4byte	0x6ef
	.uleb128 0x24
	.4byte	0x69a
	.4byte	.LBB145
	.4byte	.Ldebug_ranges0+0x218
	.byte	0x1
	.byte	0x74
	.uleb128 0x25
	.4byte	0x6b2
	.uleb128 0x25
	.4byte	0x6a7
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF107
	.byte	0x1
	.byte	0x78
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2b
	.4byte	0x706
	.4byte	.LFB41
	.4byte	.LFE41
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x10a
	.4byte	.LFB42
	.4byte	.LFE42
	.byte	0x1
	.byte	0x5d
	.4byte	0x99d
	.uleb128 0x2d
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x10c
	.4byte	0xc9
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x114
	.4byte	.LFB43
	.4byte	.LFE43
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x119
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST15
	.4byte	0xa70
	.uleb128 0x30
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x11b
	.4byte	0xb3
	.byte	0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LBB165
	.4byte	.LBE165
	.uleb128 0x30
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x11e
	.4byte	0xb3
	.byte	0x1
	.byte	0x5b
	.uleb128 0x30
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x124
	.4byte	0xa70
	.byte	0x1
	.byte	0x5a
	.uleb128 0x32
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x125
	.4byte	0xa75
	.uleb128 0x33
	.4byte	0x706
	.4byte	.LBB166
	.4byte	.LBE166
	.byte	0x1
	.2byte	0x125
	.uleb128 0x34
	.4byte	0x61e
	.4byte	.LBB168
	.4byte	.LBE168
	.byte	0x1
	.2byte	0x12a
	.4byte	0xa54
	.uleb128 0x25
	.4byte	0x62b
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0x248
	.4byte	0xa44
	.uleb128 0x27
	.4byte	0x63b
	.4byte	.LLST16
	.byte	0x0
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x268
	.uleb128 0x27
	.4byte	0x648
	.4byte	.LLST17
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.4byte	.LBB176
	.4byte	.LBE176
	.uleb128 0x35
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x135
	.4byte	0xc9
	.4byte	.LLST18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.4byte	0xb3
	.uleb128 0x1c
	.4byte	0xc9
	.uleb128 0x36
	.4byte	.LASF126
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST19
	.4byte	0xb55
	.uleb128 0x37
	.ascii	"reg\000"
	.byte	0x1
	.byte	0xc5
	.4byte	0xb55
	.4byte	.LLST20
	.uleb128 0x38
	.4byte	.LASF85
	.byte	0x1
	.byte	0xc5
	.4byte	0xb3
	.4byte	.LLST21
	.uleb128 0x38
	.4byte	.LASF87
	.byte	0x1
	.byte	0xc5
	.4byte	0xb3
	.4byte	.LLST22
	.uleb128 0x1a
	.4byte	.LASF111
	.byte	0x1
	.byte	0xc7
	.4byte	0xa75
	.uleb128 0x28
	.ascii	"pos\000"
	.byte	0x1
	.byte	0xc8
	.4byte	0xc9
	.4byte	.LLST23
	.uleb128 0x21
	.4byte	.LASF112
	.byte	0x1
	.byte	0xc9
	.4byte	0xc9
	.byte	0x1
	.byte	0x54
	.uleb128 0x39
	.4byte	.LBB177
	.4byte	.LBE177
	.4byte	0xb12
	.uleb128 0x22
	.4byte	.LASF92
	.byte	0x1
	.byte	0xcd
	.4byte	0xb5c
	.4byte	.LLST24
	.uleb128 0x3a
	.4byte	0x706
	.4byte	.LBB178
	.4byte	.LBE178
	.byte	0x1
	.byte	0xd6
	.byte	0x0
	.uleb128 0x31
	.4byte	.LBB180
	.4byte	.LBE180
	.uleb128 0x3b
	.ascii	"e\000"
	.byte	0x1
	.byte	0xe3
	.4byte	0x613
	.uleb128 0x24
	.4byte	0x61e
	.4byte	.LBB181
	.4byte	.Ldebug_ranges0+0x288
	.byte	0x1
	.byte	0xe7
	.uleb128 0x25
	.4byte	0x62b
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0x2a0
	.4byte	0xb47
	.uleb128 0x3c
	.4byte	0x648
	.byte	0x0
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x2b8
	.uleb128 0x3c
	.4byte	0x63b
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb5b
	.uleb128 0x3d
	.uleb128 0x7
	.byte	0x4
	.4byte	0x613
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF116
	.byte	0x1
	.byte	0xf8
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST25
	.4byte	0xbf9
	.uleb128 0x37
	.ascii	"reg\000"
	.byte	0x1
	.byte	0xf8
	.4byte	0x660
	.4byte	.LLST26
	.uleb128 0x38
	.4byte	.LASF85
	.byte	0x1
	.byte	0xf8
	.4byte	0xa8
	.4byte	.LLST27
	.uleb128 0x38
	.4byte	.LASF113
	.byte	0x1
	.byte	0xf8
	.4byte	0xa8
	.4byte	.LLST28
	.uleb128 0x22
	.4byte	.LASF114
	.byte	0x1
	.byte	0xfd
	.4byte	0xa8
	.4byte	.LLST29
	.uleb128 0x21
	.4byte	.LASF115
	.byte	0x1
	.byte	0xfe
	.4byte	0xa8
	.byte	0x1
	.byte	0x56
	.uleb128 0x3f
	.4byte	0x714
	.4byte	.LBB189
	.4byte	.LBE189
	.byte	0x1
	.byte	0xfd
	.4byte	0xbdd
	.uleb128 0x25
	.4byte	0x725
	.byte	0x0
	.uleb128 0x40
	.4byte	0x69a
	.4byte	.LBB191
	.4byte	.LBE191
	.byte	0x1
	.2byte	0x101
	.uleb128 0x25
	.4byte	0x6b2
	.uleb128 0x25
	.4byte	0x6a7
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
	.byte	0x1
	.4byte	.LASF117
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST30
	.4byte	0xc8f
	.uleb128 0x37
	.ascii	"reg\000"
	.byte	0x1
	.byte	0xeb
	.4byte	0x66b
	.4byte	.LLST31
	.uleb128 0x38
	.4byte	.LASF85
	.byte	0x1
	.byte	0xeb
	.4byte	0xb3
	.4byte	.LLST32
	.uleb128 0x38
	.4byte	.LASF113
	.byte	0x1
	.byte	0xeb
	.4byte	0xb3
	.4byte	.LLST33
	.uleb128 0x22
	.4byte	.LASF114
	.byte	0x1
	.byte	0xf0
	.4byte	0xb3
	.4byte	.LLST34
	.uleb128 0x21
	.4byte	.LASF115
	.byte	0x1
	.byte	0xf1
	.4byte	0xb3
	.byte	0x1
	.byte	0x56
	.uleb128 0x3f
	.4byte	0x731
	.4byte	.LBB193
	.4byte	.LBE193
	.byte	0x1
	.byte	0xf0
	.4byte	0xc74
	.uleb128 0x25
	.4byte	0x742
	.byte	0x0
	.uleb128 0x41
	.4byte	0x676
	.4byte	.LBB195
	.4byte	.LBE195
	.byte	0x1
	.byte	0xf4
	.uleb128 0x25
	.4byte	0x68e
	.uleb128 0x25
	.4byte	0x683
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.4byte	0x613
	.4byte	0xc9f
	.uleb128 0xb
	.4byte	0xe1
	.byte	0xff
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF118
	.byte	0x1
	.byte	0x15
	.4byte	0xc8f
	.byte	0x5
	.byte	0x3
	.4byte	g_audioEvent
	.uleb128 0x21
	.4byte	.LASF119
	.byte	0x1
	.byte	0x16
	.4byte	0xb3
	.byte	0x5
	.byte	0x3
	.4byte	g_eventSent
	.uleb128 0x21
	.4byte	.LASF120
	.byte	0x1
	.byte	0x17
	.4byte	0xd4
	.byte	0x5
	.byte	0x3
	.4byte	g_eventProcessed
	.uleb128 0xa
	.4byte	0x9e
	.4byte	0xce2
	.uleb128 0xb
	.4byte	0xe1
	.byte	0xff
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF121
	.byte	0x1
	.byte	0x18
	.4byte	0xcd2
	.byte	0x5
	.byte	0x3
	.4byte	g_audioIOMap
	.uleb128 0x21
	.4byte	.LASF122
	.byte	0x1
	.byte	0x19
	.4byte	0xb3
	.byte	0x5
	.byte	0x3
	.4byte	g_lastTimer
	.uleb128 0x42
	.4byte	.LASF127
	.byte	0x6
	.byte	0x39
	.4byte	0xd12
	.byte	0x1
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3ba
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x1e
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x2c
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.uleb128 0x35
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xef
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xd19
	.4byte	0x74e
	.ascii	"neoAudioEventHandler\000"
	.4byte	0x7eb
	.ascii	"neoAudioShutdown\000"
	.4byte	0x811
	.ascii	"neoAudioReset\000"
	.4byte	0x956
	.ascii	"neoAudioInit\000"
	.4byte	0x968
	.ascii	"neoAudioGetTimestamp\000"
	.4byte	0x977
	.ascii	"neoAudioPause\000"
	.4byte	0x99d
	.ascii	"neoAudioResume\000"
	.4byte	0x9b0
	.ascii	"neoAudioUpdate\000"
	.4byte	0xb62
	.ascii	"neoAudioBufferWrite16\000"
	.4byte	0xbf9
	.ascii	"neoAudioBufferWrite32\000"
	.4byte	0xd04
	.ascii	"g_neo7\000"
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
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	.LBB66-.Ltext0
	.4byte	.LBE66-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB56-.Ltext0
	.4byte	.LBE56-.Ltext0
	.4byte	.LBB65-.Ltext0
	.4byte	.LBE65-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	.LBB63-.Ltext0
	.4byte	.LBE63-.Ltext0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB61-.Ltext0
	.4byte	.LBE61-.Ltext0
	.4byte	.LBB62-.Ltext0
	.4byte	.LBE62-.Ltext0
	.4byte	.LBB59-.Ltext0
	.4byte	.LBE59-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB67-.Ltext0
	.4byte	.LBE67-.Ltext0
	.4byte	.LBB164-.Ltext0
	.4byte	.LBE164-.Ltext0
	.4byte	.LBB156-.Ltext0
	.4byte	.LBE156-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB71-.Ltext0
	.4byte	.LBE71-.Ltext0
	.4byte	.LBB70-.Ltext0
	.4byte	.LBE70-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	.LBB135-.Ltext0
	.4byte	.LBE135-.Ltext0
	.4byte	.LBB133-.Ltext0
	.4byte	.LBE133-.Ltext0
	.4byte	.LBB112-.Ltext0
	.4byte	.LBE112-.Ltext0
	.4byte	.LBB111-.Ltext0
	.4byte	.LBE111-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB81-.Ltext0
	.4byte	.LBE81-.Ltext0
	.4byte	.LBB79-.Ltext0
	.4byte	.LBE79-.Ltext0
	.4byte	.LBB86-.Ltext0
	.4byte	.LBE86-.Ltext0
	.4byte	.LBB80-.Ltext0
	.4byte	.LBE80-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB89-.Ltext0
	.4byte	.LBE89-.Ltext0
	.4byte	.LBB155-.Ltext0
	.4byte	.LBE155-.Ltext0
	.4byte	.LBB137-.Ltext0
	.4byte	.LBE137-.Ltext0
	.4byte	.LBB134-.Ltext0
	.4byte	.LBE134-.Ltext0
	.4byte	.LBB113-.Ltext0
	.4byte	.LBE113-.Ltext0
	.4byte	.LBB110-.Ltext0
	.4byte	.LBE110-.Ltext0
	.4byte	.LBB109-.Ltext0
	.4byte	.LBE109-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB97-.Ltext0
	.4byte	.LBE97-.Ltext0
	.4byte	.LBB94-.Ltext0
	.4byte	.LBE94-.Ltext0
	.4byte	.LBB105-.Ltext0
	.4byte	.LBE105-.Ltext0
	.4byte	.LBB95-.Ltext0
	.4byte	.LBE95-.Ltext0
	.4byte	.LBB104-.Ltext0
	.4byte	.LBE104-.Ltext0
	.4byte	.LBB96-.Ltext0
	.4byte	.LBE96-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB114-.Ltext0
	.4byte	.LBE114-.Ltext0
	.4byte	.LBB162-.Ltext0
	.4byte	.LBE162-.Ltext0
	.4byte	.LBB160-.Ltext0
	.4byte	.LBE160-.Ltext0
	.4byte	.LBB158-.Ltext0
	.4byte	.LBE158-.Ltext0
	.4byte	.LBB138-.Ltext0
	.4byte	.LBE138-.Ltext0
	.4byte	.LBB136-.Ltext0
	.4byte	.LBE136-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB120-.Ltext0
	.4byte	.LBE120-.Ltext0
	.4byte	.LBB129-.Ltext0
	.4byte	.LBE129-.Ltext0
	.4byte	.LBB118-.Ltext0
	.4byte	.LBE118-.Ltext0
	.4byte	.LBB128-.Ltext0
	.4byte	.LBE128-.Ltext0
	.4byte	.LBB119-.Ltext0
	.4byte	.LBE119-.Ltext0
	.4byte	.LBB127-.Ltext0
	.4byte	.LBE127-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB139-.Ltext0
	.4byte	.LBE139-.Ltext0
	.4byte	.LBB163-.Ltext0
	.4byte	.LBE163-.Ltext0
	.4byte	.LBB161-.Ltext0
	.4byte	.LBE161-.Ltext0
	.4byte	.LBB159-.Ltext0
	.4byte	.LBE159-.Ltext0
	.4byte	.LBB157-.Ltext0
	.4byte	.LBE157-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB145-.Ltext0
	.4byte	.LBE145-.Ltext0
	.4byte	.LBB152-.Ltext0
	.4byte	.LBE152-.Ltext0
	.4byte	.LBB143-.Ltext0
	.4byte	.LBE143-.Ltext0
	.4byte	.LBB151-.Ltext0
	.4byte	.LBE151-.Ltext0
	.4byte	.LBB144-.Ltext0
	.4byte	.LBE144-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB170-.Ltext0
	.4byte	.LBE170-.Ltext0
	.4byte	.LBB174-.Ltext0
	.4byte	.LBE174-.Ltext0
	.4byte	.LBB172-.Ltext0
	.4byte	.LBE172-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB171-.Ltext0
	.4byte	.LBE171-.Ltext0
	.4byte	.LBB175-.Ltext0
	.4byte	.LBE175-.Ltext0
	.4byte	.LBB173-.Ltext0
	.4byte	.LBE173-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB181-.Ltext0
	.4byte	.LBE181-.Ltext0
	.4byte	.LBB188-.Ltext0
	.4byte	.LBE188-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB183-.Ltext0
	.4byte	.LBE183-.Ltext0
	.4byte	.LBB186-.Ltext0
	.4byte	.LBE186-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB184-.Ltext0
	.4byte	.LBE184-.Ltext0
	.4byte	.LBB185-.Ltext0
	.4byte	.LBE185-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF118:
	.ascii	"g_audioEvent\000"
.LASF50:
	.ascii	"_TNeoContext7\000"
.LASF59:
	.ascii	"audioFrame\000"
.LASF75:
	.ascii	"arm9Args\000"
.LASF116:
	.ascii	"neoAudioBufferWrite16\000"
.LASF66:
	.ascii	"arm9FifoSent\000"
.LASF123:
	.ascii	"GNU C 4.4.3\000"
.LASF96:
	.ascii	"neoAudioIOMapRead16\000"
.LASF61:
	.ascii	"TNeoAdpcmControl\000"
.LASF38:
	.ascii	"z80irqvector\000"
.LASF79:
	.ascii	"globalAudioEnabled\000"
.LASF70:
	.ascii	"pAdpcmBuffer\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF62:
	.ascii	"_TNeoIPC\000"
.LASF119:
	.ascii	"g_eventSent\000"
.LASF107:
	.ascii	"neoAudioInit\000"
.LASF34:
	.ascii	"Z80_IRQ\000"
.LASF91:
	.ascii	"neoAudioIOMapWrite32\000"
.LASF84:
	.ascii	"_TNeoAudioEvent\000"
.LASF114:
	.ascii	"oldValue\000"
.LASF103:
	.ascii	"neoAudioShutdown\000"
.LASF48:
	.ascii	"TDrZ80Context\000"
.LASF78:
	.ascii	"adpcmaFinished\000"
.LASF56:
	.ascii	"frequency\000"
.LASF117:
	.ascii	"neoAudioBufferWrite32\000"
.LASF25:
	.ascii	"Z80SP_BASE\000"
.LASF71:
	.ascii	"adpcmControl\000"
.LASF46:
	.ascii	"z80_rebaseSP\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF90:
	.ascii	"neoAudioDoWrite\000"
.LASF111:
	.ascii	"posProcessed\000"
.LASF40:
	.ascii	"z80_write8\000"
.LASF57:
	.ascii	"_TNeoAdpcaControl\000"
.LASF12:
	.ascii	"float\000"
.LASF39:
	.ascii	"z80_irq_callback\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF97:
	.ascii	"neoAudioIOMapRead32\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF42:
	.ascii	"z80_in\000"
.LASF29:
	.ascii	"Z80A2\000"
.LASF17:
	.ascii	"Z80PC\000"
.LASF102:
	.ascii	"neoAudioEventHandler\000"
.LASF41:
	.ascii	"z80_write16\000"
.LASF77:
	.ascii	"audioStreamCount\000"
.LASF85:
	.ascii	"value\000"
.LASF44:
	.ascii	"z80_read8\000"
.LASF86:
	.ascii	"offset\000"
.LASF20:
	.ascii	"Z80BC\000"
.LASF43:
	.ascii	"z80_out\000"
.LASF88:
	.ascii	"TNeoAudioEvent\000"
.LASF55:
	.ascii	"endAddr\000"
.LASF80:
	.ascii	"audioCommand\000"
.LASF122:
	.ascii	"g_lastTimer\000"
.LASF45:
	.ascii	"z80_read16\000"
.LASF115:
	.ascii	"newValue\000"
.LASF104:
	.ascii	"neoAudioReset\000"
.LASF14:
	.ascii	"char\000"
.LASF74:
	.ascii	"arm7Alive\000"
.LASF37:
	.ascii	"spare\000"
.LASF89:
	.ascii	"pReg\000"
.LASF68:
	.ascii	"arm7FifoSent\000"
.LASF95:
	.ascii	"neoAudioIOWrite16\000"
.LASF49:
	.ascii	"DrZ80\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF23:
	.ascii	"Z80SP\000"
.LASF21:
	.ascii	"Z80DE\000"
.LASF100:
	.ascii	"pNextEvent\000"
.LASF87:
	.ascii	"bits\000"
.LASF10:
	.ascii	"long long int\000"
.LASF72:
	.ascii	"adpcmQueuePos7\000"
.LASF73:
	.ascii	"adpcmQueuePos9\000"
.LASF69:
	.ascii	"arm7FifoProcessed\000"
.LASF67:
	.ascii	"arm9FifoProcessed\000"
.LASF52:
	.ascii	"z80Ram\000"
.LASF58:
	.ascii	"command\000"
.LASF94:
	.ascii	"neoAudioIOWrite32\000"
.LASF30:
	.ascii	"Z80F2\000"
.LASF113:
	.ascii	"mask\000"
.LASF24:
	.ascii	"Z80PC_BASE\000"
.LASF64:
	.ascii	"audioProgramSize\000"
.LASF126:
	.ascii	"neoAudioBufferWrite\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF127:
	.ascii	"g_neo7\000"
.LASF125:
	.ascii	"neoAudioGetTimestamp\000"
.LASF101:
	.ascii	"deltaT\000"
.LASF105:
	.ascii	"enabled\000"
.LASF54:
	.ascii	"startAddr\000"
.LASF4:
	.ascii	"short int\000"
.LASF15:
	.ascii	"long int\000"
.LASF65:
	.ascii	"audioRomSize\000"
.LASF76:
	.ascii	"arm9Return\000"
.LASF99:
	.ascii	"eventCount\000"
.LASF98:
	.ascii	"eventIndex\000"
.LASF82:
	.ascii	"audioCommandPending\000"
.LASF121:
	.ascii	"g_audioIOMap\000"
.LASF22:
	.ascii	"Z80HL\000"
.LASF32:
	.ascii	"Z80DE2\000"
.LASF92:
	.ascii	"pEvent\000"
.LASF83:
	.ascii	"misc\000"
.LASF33:
	.ascii	"Z80HL2\000"
.LASF16:
	.ascii	"long unsigned int\000"
.LASF109:
	.ascii	"neoAudioUpdate\000"
.LASF35:
	.ascii	"Z80IF\000"
.LASF51:
	.ascii	"z80MemTable\000"
.LASF36:
	.ascii	"Z80IM\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF26:
	.ascii	"Z80IX\000"
.LASF27:
	.ascii	"Z80IY\000"
.LASF31:
	.ascii	"Z80BC2\000"
.LASF106:
	.ascii	"neoAudioPause\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF124:
	.ascii	"C:/Users/GRX/NeoDS/arm7/source/NeoAudio.c\000"
.LASF120:
	.ascii	"g_eventProcessed\000"
.LASF53:
	.ascii	"TNeoContext7\000"
.LASF81:
	.ascii	"audioResult\000"
.LASF0:
	.ascii	"signed char\000"
.LASF18:
	.ascii	"Z80A\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF19:
	.ascii	"Z80F\000"
.LASF28:
	.ascii	"Z80I\000"
.LASF108:
	.ascii	"neoAudioResume\000"
.LASF13:
	.ascii	"double\000"
.LASF60:
	.ascii	"timeStamp\000"
.LASF93:
	.ascii	"neoAudioIOMapWrite16\000"
.LASF47:
	.ascii	"z80_rebasePC\000"
.LASF63:
	.ascii	"pAudioProgram0\000"
.LASF110:
	.ascii	"timerData\000"
.LASF112:
	.ascii	"pendingCount\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
