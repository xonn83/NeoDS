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
	.type	neoAudioDoWrite, %function
neoAudioDoWrite:
.LFB22:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoAudio.c"
	.loc 1 28 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 38 0
	ldrb	r3, [r0, #9]	@ zero_extendqisi2
	ldr	ip, [r0, #0]
	cmp	r3, #16
.LBB14:
	.loc 1 40 0
	mov	r3, ip, asl #16
	mov	r1, r3, lsr #16
	ldrb	r2, [r0, #8]	@ zero_extendqisi2
	ldreq	r3, .L6
.LBE14:
.LBB15:
	.loc 1 43 0
	ldrne	r3, .L6
.LBE15:
	.loc 1 28 0
	@ lr needed for prologue
.LBB16:
	.loc 1 40 0
	streqh	r1, [r2, r3]	@ movhi
.LBE16:
.LBB17:
	.loc 1 43 0
	strne	ip, [r2, r3]
	bx	lr
.L7:
	.align	2
.L6:
	.word	67109888
.LBE17:
.LFE22:
	.size	neoAudioDoWrite, .-neoAudioDoWrite
	.align	2
	.global	neoAudioEventHandler
	.type	neoAudioEventHandler, %function
neoAudioEventHandler:
.LFB23:
	.loc 1 48 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 49 0
	ldr	r3, .L22
	.loc 1 48 0
	stmfd	sp!, {r4, r6, r7, r8, sl, lr}
.LCFI0:
	.loc 1 49 0
	ldr	r4, [r3, #0]
.LVL1:
	.loc 1 50 0
	ldr	r3, .L22+4
	ldr	r3, [r3, #0]
	.loc 1 54 0
	subs	r7, r3, r4
.LVL2:
	.loc 1 52 0
	ldr	r3, .L22+8
	mov	r2, #0	@ movhi
	strh	r2, [r3, #14]	@ movhi
	.loc 1 54 0
	addmi	r7, r7, #256
.LVL3:
.L19:
.LBB18:
	.loc 1 57 0
	ldr	sl, .L22+12
	mov	r8, #12
	mla	r6, r4, r8, sl
	.loc 1 62 0
	add	r4, r4, #1
	.loc 1 59 0
	mov	r0, r6
.LVL4:
	bl	neoAudioDoWrite
	.loc 1 63 0
	cmp	r4, #255
	movgt	r4, #0
	.loc 1 65 0
	subs	r7, r7, #1
	beq	.L13
	.loc 1 70 0
	mla	r3, r4, r8, sl
.LVL5:
	.loc 1 72 0
	ldrh	r1, [r6, #6]
	ldrh	r2, [r3, #6]
	.loc 1 71 0
	ldrh	r0, [r3, #4]
	ldrh	r3, [r6, #4]
.LVL6:
	.loc 1 72 0
	cmp	r2, r1
	.loc 1 71 0
	rsb	r0, r3, r0
.LVL7:
	.loc 1 73 0
	rsb	ip, r1, r2
	addhi	r0, r0, ip, asl #10
	.loc 1 77 0
	cmp	r0, #0
	ble	.L19
	.loc 1 80 0
	rsb	r3, r0, #0
	ldr	r2, .L22+8
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r2, #12]	@ movhi
	.loc 1 81 0
	mov	r3, #196	@ movhi
	strh	r3, [r2, #14]	@ movhi
.L13:
.LBE18:
	.loc 1 85 0
	ldr	r3, .L22
	str	r4, [r3, #0]
	.loc 1 86 0
	ldmfd	sp!, {r4, r6, r7, r8, sl, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	g_eventProcessed
	.word	g_eventSent
	.word	67109120
	.word	g_audioEvent
.LFE23:
	.size	neoAudioEventHandler, .-neoAudioEventHandler
	.align	2
	.type	neoAudioIOWrite32, %function
neoAudioIOWrite32:
.LFB28:
	.loc 1 109 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL8:
.LBB19:
.LBB20:
	.loc 1 100 0
	ldr	r3, .L26
.LBE20:
.LBE19:
	.loc 1 109 0
	@ lr needed for prologue
.LBB21:
.LBB22:
	.loc 1 100 0
	str	r1, [r0, r3]
.LBE22:
.LBE21:
	.loc 1 111 0
	str	r1, [r0, #0]
	.loc 1 112 0
	bx	lr
.L27:
	.align	2
.L26:
	.word	g_audioIOMap-67109888
.LFE28:
	.size	neoAudioIOWrite32, .-neoAudioIOWrite32
	.align	2
	.type	neoAudioIOWrite16, %function
neoAudioIOWrite16:
.LFB29:
	.loc 1 115 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL9:
.LBB23:
.LBB24:
	.loc 1 105 0
	ldr	r3, .L30
.LBE24:
.LBE23:
	.loc 1 115 0
	@ lr needed for prologue
.LBB25:
.LBB26:
	.loc 1 105 0
	strh	r1, [r0, r3]	@ movhi
.LBE26:
.LBE25:
	.loc 1 117 0
	strh	r1, [r0, #0]	@ movhi
	.loc 1 118 0
	bx	lr
.L31:
	.align	2
.L30:
	.word	g_audioIOMap-67109888
.LFE29:
	.size	neoAudioIOWrite16, .-neoAudioIOWrite16
	.align	2
	.global	neoAudioShutdown
	.type	neoAudioShutdown, %function
neoAudioShutdown:
.LFB31:
	.loc 1 128 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 131 0
	ldr	r3, .L46
	mov	r2, #0
	strh	r2, [r3, #-119]	@ movhi
	.loc 1 132 0
	ldr	r3, .L46+4
	str	r2, [r3, #0]
	.loc 1 133 0
	ldr	r3, .L46+8
	str	r2, [r3, #0]
	.loc 1 134 0
	ldr	r3, .L46+12
	str	r2, [r3, #0]
	.loc 1 128 0
	@ lr needed for prologue
	.loc 1 134 0
	mov	r1, r2
.LVL10:
.L33:
	.loc 1 138 0
	mov	r2, r1, asl #2
	ldr	r3, .L46+16
	.loc 1 137 0
	add	r1, r1, #1
	.loc 1 138 0
	mov	r0, #0	@ movhi
	.loc 1 137 0
	cmp	r1, #4
	.loc 1 138 0
	strh	r0, [r2, r3]	@ movhi
	.loc 1 137 0
	bne	.L33
	mov	r0, #0
.LVL11:
.L35:
	.loc 1 141 0
	ldr	r3, .L46+20
	mov	r2, #0
	str	r2, [r3, r0, asl #4]
	.loc 1 142 0
	add	r3, r3, #4
	str	r2, [r3, r0, asl #4]
	.loc 1 141 0
	mov	r1, r0, asl #4
.LVL12:
	.loc 1 143 0
	add	r3, r3, #4
	strh	r2, [r1, r3]	@ movhi
	.loc 1 144 0
	add	r3, r3, #2
	strh	r2, [r1, r3]	@ movhi
	.loc 1 145 0
	add	r3, r3, #2
	str	r2, [r3, r0, asl #4]
	.loc 1 140 0
	add	r0, r0, #1
	cmp	r0, #16
	bne	.L35
	ldr	r2, .L46+24
.L37:
	.loc 1 148 0
	mov	r3, #0
	strb	r3, [r2], #1
	.loc 1 147 0
	ldr	r3, .L46+28
	cmp	r2, r3
	bne	.L37
	.loc 1 150 0
	bx	lr
.L47:
	.align	2
.L46:
	.word	41940223
	.word	g_eventSent
	.word	g_eventProcessed
	.word	g_lastTimer
	.word	67109122
	.word	67109888
	.word	g_audioIOMap
	.word	g_audioIOMap+256
.LFE31:
	.size	neoAudioShutdown, .-neoAudioShutdown
	.align	2
	.global	neoAudioReset
	.type	neoAudioReset, %function
neoAudioReset:
.LFB32:
	.loc 1 153 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r6, r7, r8, r9, sl, fp, lr}
.LCFI1:
	.loc 1 154 0
	ldr	r3, .L54
	.loc 1 158 0
	mov	r1, #0	@ movhi
	.loc 1 154 0
	ldrh	r2, [r3, #8]
	.loc 1 153 0
	sub	sp, sp, #8
.LCFI2:
	.loc 1 158 0
	strh	r1, [r3, #8]	@ movhi
	.loc 1 154 0
	mov	fp, r2
.LVL13:
	.loc 1 160 0
	bl	neoAudioShutdown
	ldr	r3, .L54+4
	.loc 1 163 0
	ldr	r2, .L54+8
	ldr	r1, .L54+12
	str	r3, [sp, #4]
	.loc 1 164 0
	mov	r3, #128	@ movhi
	.loc 1 163 0
	strh	r1, [r2, #0]	@ movhi
	.loc 1 164 0
	strh	r3, [r2, #2]	@ movhi
	.loc 1 166 0
	mov	r3, #64512
	strh	r3, [r2, #4]	@ movhi
	.loc 1 167 0
	mov	r3, #132	@ movhi
	strh	r3, [r2, #6]	@ movhi
	.loc 1 170 0
	strh	r1, [r2, #8]	@ movhi
	.loc 1 173 0
	mov	r3, #0	@ movhi
	.loc 1 171 0
	mov	r1, #128	@ movhi
	strh	r1, [r2, #10]	@ movhi
	ldr	r9, .L54+16
	.loc 1 173 0
	strh	r3, [r2, #12]	@ movhi
	ldr	sl, .L54+20
	ldr	r8, .L54+24
	ldr	r7, .L54+28
	ldr	r6, .L54+32
	.loc 1 174 0
	strh	r3, [r2, #14]	@ movhi
	mov	r4, #0
.LVL14:
.L49:
	.loc 1 178 0
	ldr	r3, [sp, #4]
	ldr	r1, [r3], #4
	mov	r0, r6
	str	r3, [sp, #4]
	bl	neoAudioIOWrite32
	.loc 1 181 0
	mov	r0, r7
	mov	r1, #1024
	bl	neoAudioIOWrite32
	.loc 1 183 0
	mov	r0, r8
	mov	r1, #0
	bl	neoAudioIOWrite16
	.loc 1 184 0
	mov	r0, sl
	ldr	r1, .L54+36
	bl	neoAudioIOWrite16
	.loc 1 176 0
	add	r4, r4, #1
	.loc 1 186 0
	mov	r0, r9
	ldr	r1, .L54+40
	bl	neoAudioIOWrite32
	.loc 1 176 0
	cmp	r4, #7
	add	r6, r6, #16
	add	r7, r7, #16
	add	r8, r8, #16
	add	sl, sl, #16
	add	r9, r9, #16
	bne	.L49
	.loc 1 194 0
	ldr	r3, .L54
	strh	fp, [r3, #8]	@ movhi
	.loc 1 195 0
	add	sp, sp, #8
	ldmfd	sp!, {r4, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	67109376
	.word	41939996
	.word	67109120
	.word	-1820
	.word	67109888
	.word	67109896
	.word	67109898
	.word	67109900
	.word	67109892
	.word	64626
	.word	-1472200577
.LFE32:
	.size	neoAudioReset, .-neoAudioReset
	.align	2
	.global	neoAudioInit
	.type	neoAudioInit, %function
neoAudioInit:
.LFB30:
	.loc 1 121 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LBB29:
.LBB30:
	.file 2 "C:/devkitPro/libnds/include/nds/system.h"
	.loc 2 89 0
	ldr	r2, .L58
	ldrh	r3, [r2, #4]
	orr	r3, r3, #1
	strh	r3, [r2, #4]	@ movhi
.LBE30:
.LBE29:
	.loc 1 123 0
	ldr	r2, .L58+4
	ldr	r3, .L58+8
	.loc 1 121 0
	@ lr needed for prologue
	.loc 1 123 0
	strh	r2, [r3, #0]	@ movhi
	.loc 1 125 0
	.loc 1 124 0
	b	neoAudioReset
.L59:
	.align	2
.L58:
	.word	67109632
	.word	-32641
	.word	67110144
.LFE30:
	.size	neoAudioInit, .-neoAudioInit
	.align	2
	.global	neoAudioGetTimestamp
	.type	neoAudioGetTimestamp, %function
neoAudioGetTimestamp:
.LFB36:
	.loc 1 262 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 263 0
	ldr	r3, .L62
	ldrh	r0, [r3, #4]
	.loc 1 264 0
	sub	r0, r0, #64512
	.loc 1 262 0
	@ lr needed for prologue
	.loc 1 264 0
	bx	lr
.L63:
	.align	2
.L62:
	.word	67109120
.LFE36:
	.size	neoAudioGetTimestamp, .-neoAudioGetTimestamp
	.align	2
	.global	neoAudioPause
	.type	neoAudioPause, %function
neoAudioPause:
.LFB37:
	.loc 1 267 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ lr needed for prologue
	.loc 1 267 0
	mov	r1, #11
.LVL15:
.L65:
	.loc 1 271 0
	ldr	r3, .L70
	mov	r2, #0
	str	r2, [r3, r1, asl #4]
	.loc 1 270 0
	add	r1, r1, #1
	cmp	r1, #16
	bne	.L65
	.loc 1 273 0
	add	r2, r2, #32768
	add	r3, r3, #256
	strh	r2, [r3, #0]	@ movhi
	.loc 1 274 0
	bx	lr
.L71:
	.align	2
.L70:
	.word	67109888
.LFE37:
	.size	neoAudioPause, .-neoAudioPause
	.align	2
	.global	neoAudioResume
	.type	neoAudioResume, %function
neoAudioResume:
.LFB38:
	.loc 1 277 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 278 0
	ldr	r2, .L74
	ldr	r3, .L74+4
	.loc 1 277 0
	@ lr needed for prologue
	.loc 1 278 0
	strh	r2, [r3, #0]	@ movhi
	.loc 1 279 0
	bx	lr
.L75:
	.align	2
.L74:
	.word	-32641
	.word	67110144
.LFE38:
	.size	neoAudioResume, .-neoAudioResume
	.align	2
	.global	neoAudioUpdate
	.type	neoAudioUpdate, %function
neoAudioUpdate:
.LFB39:
	.loc 1 282 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r6, r7, r8, r9, sl, lr}
.LCFI3:
	.loc 1 283 0
	ldr	ip, .L96
	.loc 1 285 0
	ldr	r2, .L96+4
	.loc 1 283 0
	ldrh	r3, [ip, #4]
	.loc 1 285 0
	ldr	r2, [r2, #0]
.LVL16:
	cmp	r3, r2
	.loc 1 282 0
	sub	sp, sp, #4
.LCFI4:
.LVL17:
	.loc 1 283 0
	mov	sl, r3
.LVL18:
	.loc 1 285 0
	bcs	.L77
.LBB31:
	.loc 1 288 0
	ldr	r2, .L96+8
	.loc 1 286 0
	ldr	r1, .L96+12
	ldrh	r0, [r1, #8]
	.loc 1 288 0
	ldrh	r3, [r2, #-119]
	add	r3, r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r2, #-119]	@ movhi
	.loc 1 291 0
	mov	r3, #0	@ movhi
	strh	r3, [r1, #8]	@ movhi
	.loc 1 295 0
	ldr	r3, .L96+16
	.loc 1 292 0
	ldrh	r2, [r2, #-119]
.LBB32:
.LBB33:
	.loc 1 263 0
	ldrh	r1, [ip, #4]
.LBE33:
.LBE32:
	.loc 1 295 0
	ldr	r6, [r3, #0]
	.loc 1 286 0
	mov	r9, r0
.LVL19:
	.loc 1 292 0
	mov	r7, r2
.LVL20:
.LBB34:
.LBB35:
	.loc 1 263 0
	sub	r8, r1, #64512
	b	.L95
.L80:
.LBE35:
.LBE34:
	.loc 1 298 0
	ldr	r3, [r4, #0]
	mla	r0, r3, r2, r1
	bl	neoAudioDoWrite
	.loc 1 299 0
	ldr	r3, [r4, #0]
	add	r3, r3, #1
	str	r3, [r4, #0]
	.loc 1 300 0
	ldr	r3, [r4, #0]
	cmp	r3, #255
	.loc 1 301 0
	movhi	r3, #0
	strhi	r3, [r4, #0]
.L95:
	.loc 1 295 0
	ldr	r4, .L96+20
	ldr	r3, [r4, #0]
	cmp	r6, r3
	ldr	r1, .L96+24
	mov	r2, #12
	beq	.L82
	ldr	r3, [r4, #0]
	mla	r3, r2, r3, r1
	ldrh	r3, [r3, #6]
	cmp	r3, r7
	bcc	.L80
.L82:
	.loc 1 305 0
	ldr	r0, .L96
	ldrh	r3, [r0, #14]
	ands	r3, r3, #128
	bne	.L84
	.loc 1 307 0
	strh	r3, [r0, #14]	@ movhi
	.loc 1 308 0
	ldr	r3, [r4, #0]
	cmp	r6, r3
	beq	.L84
.LBB36:
	.loc 1 310 0
	ldr	r1, [r4, #0]
	ldr	r3, .L96+24
	mov	r2, #12
	mla	r3, r1, r2, r3
	ldrh	r3, [r3, #4]
	rsb	r3, r8, r3
.LVL21:
	.loc 1 311 0
	cmp	r3, #1
	movlt	r3, #1
	.loc 1 313 0
	rsb	r3, r3, #0
.LVL22:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r0, #12]	@ movhi
	.loc 1 314 0
	mov	r3, #196	@ movhi
	strh	r3, [r0, #14]	@ movhi
.L84:
.LBE36:
	.loc 1 318 0
	ldr	r3, .L96+12
.LVL23:
	strh	r9, [r3, #8]	@ movhi
.L77:
.LBE31:
	.loc 1 320 0
	ldr	r3, .L96+4
	str	sl, [r3, #0]
	.loc 1 321 0
	add	sp, sp, #4
	ldmfd	sp!, {r4, r6, r7, r8, r9, sl, lr}
	bx	lr
.L97:
	.align	2
.L96:
	.word	67109120
	.word	g_lastTimer
	.word	41940223
	.word	67109376
	.word	g_eventSent
	.word	g_eventProcessed
	.word	g_audioEvent
.LFE39:
	.size	neoAudioUpdate, .-neoAudioUpdate
	.align	2
	.type	neoAudioBufferWrite, %function
neoAudioBufferWrite:
.LFB33:
	.loc 1 198 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL24:
	stmfd	sp!, {r4, r6, r7, r8, sl, lr}
.LCFI5:
	.loc 1 199 0
	ldr	r3, .L109
	.loc 1 200 0
	ldr	sl, .L109+4
	.loc 1 199 0
	ldr	r3, [r3, #0]
	.loc 1 200 0
	ldr	ip, [sl, #0]
.LVL25:
	.loc 1 202 0
	subs	r6, ip, r3
.LVL26:
	addmi	r6, r6, #256
	.loc 1 198 0
	sub	sp, sp, #16
.LCFI6:
	.loc 1 204 0
	cmp	r6, #254
	.loc 1 198 0
	mov	lr, r0
.LBB37:
	.loc 1 205 0
	ldr	r8, .L109+8
	.loc 1 206 0
	add	r7, ip, #1
.LVL27:
.LBE37:
.LBB38:
	.loc 1 231 0
	add	r0, sp, #4
.LVL28:
.LBE38:
	.loc 1 204 0
	bgt	.L101
.LBB39:
	.loc 1 205 0
	mov	r3, #12
	mul	r3, ip, r3
	add	r4, r3, r8
.LVL29:
	.loc 1 212 0
	strb	r2, [r4, #9]
	.loc 1 210 0
	strb	lr, [r4, #8]
	.loc 1 211 0
	str	r1, [r3, r8]
	.loc 1 213 0
	bl	neoAudioUpdate
.LVL30:
.LBB40:
.LBB41:
	.loc 1 263 0
	ldr	r2, .L109+12
	ldrh	r3, [r2, #4]
.LBE41:
.LBE40:
	.loc 1 214 0
	sub	r3, r3, #64512
	strh	r3, [r4, #4]	@ movhi
	.loc 1 215 0
	ldr	r3, .L109+16
	ldrh	r3, [r3, #-119]
	.loc 1 207 0
	cmp	r7, #255
	.loc 1 215 0
	add	r3, r3, #2
	.loc 1 207 0
	movgt	r7, #0
	.loc 1 217 0
	cmp	r6, #0
	.loc 1 215 0
	strh	r3, [r4, #6]	@ movhi
	.loc 1 219 0
	moveq	r3, #63488
	streqh	r3, [r2, #12]	@ movhi
	.loc 1 220 0
	moveq	r3, #196	@ movhi
	streqh	r3, [r2, #14]	@ movhi
	.loc 1 223 0
	str	r7, [sl, #0]
	b	.L108
.LVL31:
.L101:
.LBE39:
.LBB42:
	.loc 1 228 0
	strb	r2, [sp, #13]
	.loc 1 229 0
	str	r1, [sp, #4]
	.loc 1 230 0
	strb	lr, [sp, #12]
	.loc 1 231 0
	bl	neoAudioDoWrite
.LVL32:
.LVL33:
.L108:
.LBE42:
	.loc 1 233 0
	add	sp, sp, #16
	ldmfd	sp!, {r4, r6, r7, r8, sl, lr}
	bx	lr
.L110:
	.align	2
.L109:
	.word	g_eventProcessed
	.word	g_eventSent
	.word	g_audioEvent
	.word	67109120
	.word	41940223
.LFE33:
	.size	neoAudioBufferWrite, .-neoAudioBufferWrite
	.align	2
	.global	neoAudioBufferWrite16
	.type	neoAudioBufferWrite16, %function
neoAudioBufferWrite16:
.LFB35:
	.loc 1 249 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL34:
	.loc 1 250 0
	add	r3, r0, #-67108864
	sub	r3, r3, #1024
	cmp	r3, #255
	.loc 1 249 0
	stmfd	sp!, {r4, r6, r7, lr}
.LCFI7:
	.loc 1 254 0
	and	r1, r1, r2
.LVL35:
.LBB47:
.LBB48:
	.loc 1 95 0
	ldr	r7, .L116
.LBE48:
.LBE47:
	.loc 1 249 0
	mov	r6, r0
	.loc 1 250 0
	bhi	.L115
.LVL36:
	.loc 1 253 0
	ldrh	ip, [r0, r7]
.LVL37:
	.loc 1 254 0
	bic	r3, ip, r2
	orr	r4, r3, r1
.LVL38:
	.loc 1 255 0
	cmp	r4, ip
	.loc 1 256 0
	mov	r2, #16
.LVL39:
	mov	r1, r4
	.loc 1 255 0
	beq	.L115
.LVL40:
	.loc 1 256 0
	bl	neoAudioBufferWrite
.LVL41:
.LBB49:
.LBB50:
	.loc 1 105 0
	strh	r4, [r6, r7]	@ movhi
.LVL42:
.L115:
.LBE50:
.LBE49:
	.loc 1 259 0
	ldmfd	sp!, {r4, r6, r7, lr}
	bx	lr
.L117:
	.align	2
.L116:
	.word	g_audioIOMap-67109888
.LFE35:
	.size	neoAudioBufferWrite16, .-neoAudioBufferWrite16
	.align	2
	.global	neoAudioBufferWrite32
	.type	neoAudioBufferWrite32, %function
neoAudioBufferWrite32:
.LFB34:
	.loc 1 236 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL43:
	.loc 1 237 0
	add	r3, r0, #-67108864
	sub	r3, r3, #1024
	cmp	r3, #255
	.loc 1 236 0
	stmfd	sp!, {r4, r6, r7, lr}
.LCFI8:
	.loc 1 241 0
	and	r1, r1, r2
.LVL44:
.LBB55:
.LBB56:
	.loc 1 90 0
	ldr	r7, .L123
.LBE56:
.LBE55:
	.loc 1 236 0
	mov	r6, r0
	.loc 1 237 0
	bhi	.L122
.LVL45:
.LBB57:
.LBB58:
	.loc 1 90 0
	ldr	ip, [r0, r7]
.LVL46:
.LBE58:
.LBE57:
	.loc 1 241 0
	bic	r3, ip, r2
	orr	r4, r3, r1
.LVL47:
	.loc 1 242 0
	cmp	r4, ip
	.loc 1 243 0
	mov	r2, #32
.LVL48:
	mov	r1, r4
	.loc 1 242 0
	beq	.L122
.LVL49:
	.loc 1 243 0
	bl	neoAudioBufferWrite
.LVL50:
.LBB59:
.LBB60:
	.loc 1 100 0
	str	r4, [r6, r7]
.LVL51:
.L122:
.LBE60:
.LBE59:
	.loc 1 246 0
	ldmfd	sp!, {r4, r6, r7, lr}
	bx	lr
.L124:
	.align	2
.L123:
	.word	g_audioIOMap-67109888
.LFE34:
	.size	neoAudioBufferWrite32, .-neoAudioBufferWrite32
	.bss
	.align	2
g_lastTimer:
	.space	4
	.align	2
g_audioEvent:
	.space	3072
	.align	2
g_eventSent:
	.space	4
	.align	2
g_eventProcessed:
	.space	4
	.align	2
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI0-.LFB23
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x1
	.byte	0x8a
	.uleb128 0x2
	.byte	0x88
	.uleb128 0x3
	.byte	0x87
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x84
	.uleb128 0x6
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI1-.LFB32
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x28
	.byte	0x8e
	.uleb128 0x1
	.byte	0x8b
	.uleb128 0x2
	.byte	0x8a
	.uleb128 0x3
	.byte	0x89
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x5
	.byte	0x87
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x7
	.byte	0x84
	.uleb128 0x8
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI3-.LFB39
	.byte	0xe
	.uleb128 0x1c
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x20
	.byte	0x8e
	.uleb128 0x1
	.byte	0x8a
	.uleb128 0x2
	.byte	0x89
	.uleb128 0x3
	.byte	0x88
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x6
	.byte	0x84
	.uleb128 0x7
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI5-.LFB33
	.byte	0xe
	.uleb128 0x18
	.byte	0x8e
	.uleb128 0x1
	.byte	0x8a
	.uleb128 0x2
	.byte	0x88
	.uleb128 0x3
	.byte	0x87
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x5
	.byte	0x84
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI7-.LFB35
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x1
	.byte	0x87
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x84
	.uleb128 0x4
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI8-.LFB34
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x1
	.byte	0x87
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x3
	.byte	0x84
	.uleb128 0x4
	.align	2
.LEFDE26:
	.file 3 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 4 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 5 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoSystem7.h"
	.file 6 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoCpuZ80.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/DrZ80.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LFB23-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB32-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 28
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB33-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LFB35-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LFB34-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x9ce
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF98
	.byte	0x1
	.4byte	.LASF99
	.4byte	.LASF100
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x4
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
	.byte	0x4
	.byte	0x3a
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x4
	.byte	0x53
	.4byte	0x62
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x54
	.4byte	0x74
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x8
	.byte	0x4
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x3
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x3
	.byte	0x60
	.4byte	0x45
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x61
	.4byte	0x69
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x3
	.byte	0x66
	.4byte	0x57
	.uleb128 0x6
	.4byte	0xba
	.uleb128 0x7
	.byte	0x4
	.4byte	0xdb
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x7
	.uleb128 0x6
	.4byte	0x50
	.uleb128 0x6
	.4byte	0x74
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.4byte	0x2b4
	.4byte	.LASF48
	.byte	0x70
	.byte	0x7
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x7
	.byte	0x14
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x7
	.byte	0x15
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x7
	.byte	0x16
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x7
	.byte	0x17
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x7
	.byte	0x18
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x7
	.byte	0x19
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x7
	.byte	0x1a
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x7
	.byte	0x1b
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x7
	.byte	0x1c
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x7
	.byte	0x1d
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x7
	.byte	0x1e
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x7
	.byte	0x1f
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x7
	.byte	0x20
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x7
	.byte	0x21
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x7
	.byte	0x22
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x7
	.byte	0x23
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x7
	.byte	0x24
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x7
	.byte	0x27
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x7
	.byte	0x28
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x7
	.byte	0x29
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x7
	.byte	0x2a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x7
	.byte	0x2b
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x7
	.byte	0x2c
	.4byte	0xd5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x7
	.byte	0x2d
	.4byte	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x7
	.byte	0x2e
	.4byte	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x7
	.byte	0x2f
	.4byte	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x7
	.byte	0x30
	.4byte	0x309
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x7
	.byte	0x31
	.4byte	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x7
	.byte	0x32
	.4byte	0x31f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x7
	.byte	0x33
	.4byte	0x335
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x7
	.byte	0x34
	.4byte	0x335
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xb
	.4byte	0x2c5
	.byte	0x1
	.uleb128 0xc
	.4byte	0x37
	.uleb128 0xc
	.4byte	0x50
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2b4
	.uleb128 0xb
	.4byte	0x2dc
	.byte	0x1
	.uleb128 0xc
	.4byte	0x50
	.uleb128 0xc
	.4byte	0x50
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2cb
	.uleb128 0xd
	.4byte	0x2f2
	.byte	0x1
	.4byte	0x37
	.uleb128 0xc
	.4byte	0x50
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2e2
	.uleb128 0xb
	.4byte	0x309
	.byte	0x1
	.uleb128 0xc
	.4byte	0x50
	.uleb128 0xc
	.4byte	0x37
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2f8
	.uleb128 0xd
	.4byte	0x31f
	.byte	0x1
	.4byte	0x50
	.uleb128 0xc
	.4byte	0x50
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x30f
	.uleb128 0xd
	.4byte	0x335
	.byte	0x1
	.4byte	0x90
	.uleb128 0xc
	.4byte	0x50
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x325
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x6
	.byte	0xc
	.4byte	0xf5
	.uleb128 0xe
	.4byte	0x37f
	.4byte	.LASF49
	.2byte	0x8f0
	.byte	0x5
	.byte	0x1f
	.uleb128 0xf
	.ascii	"z80\000"
	.byte	0x5
	.byte	0x20
	.4byte	0x33b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x5
	.byte	0x26
	.4byte	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x5
	.byte	0x27
	.4byte	0x395
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.byte	0x0
	.uleb128 0x10
	.4byte	0x38f
	.4byte	0x38f
	.uleb128 0x11
	.4byte	0xdd
	.byte	0x1f
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xa5
	.uleb128 0x10
	.4byte	0x3a6
	.4byte	0xa5
	.uleb128 0x12
	.4byte	0xdd
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x5
	.byte	0x28
	.4byte	0x346
	.uleb128 0x9
	.4byte	0x404
	.4byte	.LASF53
	.byte	0xc
	.byte	0x1
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x1
	.byte	0xb
	.4byte	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x1
	.byte	0xc
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x1
	.byte	0xd
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x1
	.byte	0xe
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x1
	.byte	0xf
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x1
	.byte	0x10
	.4byte	0x3b1
	.uleb128 0x13
	.4byte	0x433
	.4byte	.LASF60
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x62
	.4byte	0x433
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x1
	.byte	0x62
	.4byte	0xba
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xe9
	.uleb128 0x13
	.4byte	0x45d
	.4byte	.LASF61
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x67
	.4byte	0x45d
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x1
	.byte	0x67
	.4byte	0xaf
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xe4
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x106
	.4byte	0xba
	.byte	0x1
	.uleb128 0x17
	.4byte	0x4bb
	.4byte	.LASF62
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.4byte	.LFB22
	.4byte	.LFE22
	.byte	0x1
	.byte	0x5d
	.uleb128 0x18
	.4byte	.LASF63
	.byte	0x1
	.byte	0x1b
	.4byte	0x4bb
	.byte	0x1
	.byte	0x50
	.uleb128 0x19
	.4byte	0x4a9
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x1a
	.4byte	.LASF64
	.byte	0x1
	.byte	0x27
	.4byte	0x45d
	.byte	0x0
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x1a
	.4byte	.LASF64
	.byte	0x1
	.byte	0x2a
	.4byte	0x433
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x4c1
	.uleb128 0x1c
	.4byte	0x404
	.uleb128 0x1d
	.4byte	0x52e
	.byte	0x1
	.4byte	.LASF71
	.byte	0x1
	.byte	0x30
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST1
	.uleb128 0x1e
	.4byte	.LASF65
	.byte	0x1
	.byte	0x31
	.4byte	0xc5
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF66
	.byte	0x1
	.byte	0x32
	.4byte	0xc5
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.4byte	.LBB18
	.4byte	.LBE18
	.uleb128 0x1e
	.4byte	.LASF63
	.byte	0x1
	.byte	0x39
	.4byte	0x4bb
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.4byte	.LASF67
	.byte	0x1
	.byte	0x46
	.4byte	0x4bb
	.4byte	.LLST2
	.uleb128 0x20
	.4byte	.LASF68
	.byte	0x1
	.byte	0x47
	.4byte	0xc5
	.4byte	.LLST3
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.4byte	0x575
	.4byte	.LASF69
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5d
	.uleb128 0x21
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x6c
	.4byte	0x433
	.byte	0x1
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x1
	.byte	0x6c
	.4byte	0xba
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.4byte	0x40f
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x6e
	.uleb128 0x23
	.4byte	0x427
	.uleb128 0x23
	.4byte	0x41c
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.4byte	0x5bc
	.4byte	.LASF70
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5d
	.uleb128 0x21
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x72
	.4byte	0x45d
	.byte	0x1
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x1
	.byte	0x72
	.4byte	0xaf
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.4byte	0x439
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x74
	.uleb128 0x23
	.4byte	0x451
	.uleb128 0x23
	.4byte	0x446
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.4byte	0x5e0
	.byte	0x1
	.4byte	.LASF72
	.byte	0x1
	.byte	0x80
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5d
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x1
	.byte	0x81
	.4byte	0xba
	.4byte	.LLST7
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x611
	.byte	0x1
	.4byte	.LASF73
	.byte	0x1
	.byte	0x99
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	.LASF74
	.byte	0x1
	.byte	0x9a
	.4byte	0xaf
	.byte	0x1
	.byte	0x5b
	.uleb128 0x26
	.ascii	"i\000"
	.byte	0x1
	.byte	0x9b
	.4byte	0xba
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x13
	.4byte	0x629
	.4byte	.LASF75
	.byte	0x2
	.byte	0x59
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.ascii	"on\000"
	.byte	0x2
	.byte	0x59
	.4byte	0x89
	.byte	0x0
	.uleb128 0x24
	.4byte	0x655
	.byte	0x1
	.4byte	.LASF76
	.byte	0x1
	.byte	0x79
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.4byte	0x611
	.4byte	.LBB29
	.4byte	.LBE29
	.byte	0x1
	.byte	0x7a
	.uleb128 0x23
	.4byte	0x61e
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	0x463
	.4byte	.LFB36
	.4byte	.LFE36
	.byte	0x1
	.byte	0x5d
	.uleb128 0x29
	.4byte	0x688
	.byte	0x1
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x10b
	.4byte	.LFB37
	.4byte	.LFE37
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x10c
	.4byte	0xc5
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x115
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2c
	.4byte	0x71f
	.byte	0x1
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x11a
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST13
	.uleb128 0x2d
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x11b
	.4byte	0xba
	.4byte	.LLST14
	.uleb128 0x1f
	.4byte	.LBB31
	.4byte	.LBE31
	.uleb128 0x2d
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x11e
	.4byte	0xba
	.4byte	.LLST15
	.uleb128 0x2e
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x124
	.4byte	0x71f
	.byte	0x1
	.byte	0x57
	.uleb128 0x2f
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x125
	.4byte	0x724
	.uleb128 0x30
	.4byte	0x463
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x125
	.uleb128 0x1f
	.4byte	.LBB36
	.4byte	.LBE36
	.uleb128 0x2d
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x135
	.4byte	0xc5
	.4byte	.LLST16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.4byte	0xba
	.uleb128 0x1c
	.4byte	0xc5
	.uleb128 0x31
	.4byte	0x7d4
	.4byte	.LASF82
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LLST17
	.uleb128 0x32
	.ascii	"reg\000"
	.byte	0x1
	.byte	0xc5
	.4byte	0x7d4
	.4byte	.LLST18
	.uleb128 0x33
	.4byte	.LASF54
	.byte	0x1
	.byte	0xc5
	.4byte	0xba
	.4byte	.LLST19
	.uleb128 0x33
	.4byte	.LASF58
	.byte	0x1
	.byte	0xc5
	.4byte	0xba
	.4byte	.LLST20
	.uleb128 0x1a
	.4byte	.LASF83
	.byte	0x1
	.byte	0xc7
	.4byte	0x724
	.uleb128 0x25
	.ascii	"pos\000"
	.byte	0x1
	.byte	0xc8
	.4byte	0xc5
	.4byte	.LLST21
	.uleb128 0x1e
	.4byte	.LASF84
	.byte	0x1
	.byte	0xc9
	.4byte	0xc5
	.byte	0x1
	.byte	0x56
	.uleb128 0x19
	.4byte	0x7ae
	.4byte	.Ldebug_ranges0+0x78
	.uleb128 0x20
	.4byte	.LASF63
	.byte	0x1
	.byte	0xcd
	.4byte	0x7db
	.4byte	.LLST22
	.byte	0x0
	.uleb128 0x19
	.4byte	0x7c4
	.4byte	.Ldebug_ranges0+0x90
	.uleb128 0x26
	.ascii	"e\000"
	.byte	0x1
	.byte	0xe3
	.4byte	0x404
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0x0
	.uleb128 0x34
	.4byte	0x463
	.4byte	.LBB40
	.4byte	.LBE40
	.byte	0x1
	.byte	0xd6
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x7da
	.uleb128 0x35
	.uleb128 0x7
	.byte	0x4
	.4byte	0x404
	.uleb128 0x36
	.4byte	0x7fe
	.4byte	.LASF85
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.4byte	0xaf
	.byte	0x3
	.uleb128 0x14
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x5d
	.4byte	0x45d
	.byte	0x0
	.uleb128 0x37
	.4byte	0x897
	.byte	0x1
	.4byte	.LASF86
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LLST23
	.uleb128 0x32
	.ascii	"reg\000"
	.byte	0x1
	.byte	0xf8
	.4byte	0x45d
	.4byte	.LLST24
	.uleb128 0x33
	.4byte	.LASF54
	.byte	0x1
	.byte	0xf8
	.4byte	0xaf
	.4byte	.LLST25
	.uleb128 0x33
	.4byte	.LASF87
	.byte	0x1
	.byte	0xf8
	.4byte	0xaf
	.4byte	.LLST26
	.uleb128 0x20
	.4byte	.LASF88
	.byte	0x1
	.byte	0xfd
	.4byte	0xaf
	.4byte	.LLST27
	.uleb128 0x20
	.4byte	.LASF89
	.byte	0x1
	.byte	0xfe
	.4byte	0xaf
	.4byte	.LLST28
	.uleb128 0x38
	.4byte	0x87b
	.4byte	0x7e1
	.4byte	.LBB47
	.4byte	.LBE47
	.byte	0x1
	.byte	0xfd
	.uleb128 0x23
	.4byte	0x7f2
	.byte	0x0
	.uleb128 0x39
	.4byte	0x439
	.4byte	.LBB49
	.4byte	.LBE49
	.byte	0x1
	.2byte	0x101
	.uleb128 0x23
	.4byte	0x451
	.uleb128 0x23
	.4byte	0x446
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.4byte	0x8b4
	.4byte	.LASF90
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.4byte	0xba
	.byte	0x3
	.uleb128 0x14
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x58
	.4byte	0x433
	.byte	0x0
	.uleb128 0x37
	.4byte	0x948
	.byte	0x1
	.4byte	.LASF91
	.byte	0x1
	.byte	0xec
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LLST29
	.uleb128 0x32
	.ascii	"reg\000"
	.byte	0x1
	.byte	0xeb
	.4byte	0x433
	.4byte	.LLST30
	.uleb128 0x33
	.4byte	.LASF54
	.byte	0x1
	.byte	0xeb
	.4byte	0xba
	.4byte	.LLST31
	.uleb128 0x33
	.4byte	.LASF87
	.byte	0x1
	.byte	0xeb
	.4byte	0xba
	.4byte	.LLST32
	.uleb128 0x20
	.4byte	.LASF88
	.byte	0x1
	.byte	0xf0
	.4byte	0xba
	.4byte	.LLST33
	.uleb128 0x20
	.4byte	.LASF89
	.byte	0x1
	.byte	0xf1
	.4byte	0xba
	.4byte	.LLST34
	.uleb128 0x3a
	.4byte	0x92d
	.4byte	0x897
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0xf0
	.uleb128 0x23
	.4byte	0x8a8
	.byte	0x0
	.uleb128 0x27
	.4byte	0x40f
	.4byte	.LBB59
	.4byte	.LBE59
	.byte	0x1
	.byte	0xf4
	.uleb128 0x23
	.4byte	0x427
	.uleb128 0x23
	.4byte	0x41c
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.4byte	0x958
	.4byte	0x404
	.uleb128 0x11
	.4byte	0xdd
	.byte	0xff
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF92
	.byte	0x1
	.byte	0x15
	.4byte	0x948
	.byte	0x5
	.byte	0x3
	.4byte	g_audioEvent
	.uleb128 0x1e
	.4byte	.LASF93
	.byte	0x1
	.byte	0x16
	.4byte	0xba
	.byte	0x5
	.byte	0x3
	.4byte	g_eventSent
	.uleb128 0x1e
	.4byte	.LASF94
	.byte	0x1
	.byte	0x17
	.4byte	0xd0
	.byte	0x5
	.byte	0x3
	.4byte	g_eventProcessed
	.uleb128 0x10
	.4byte	0x99b
	.4byte	0xa5
	.uleb128 0x11
	.4byte	0xdd
	.byte	0xff
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF95
	.byte	0x1
	.byte	0x18
	.4byte	0x98b
	.byte	0x5
	.byte	0x3
	.4byte	g_audioIOMap
	.uleb128 0x1e
	.4byte	.LASF96
	.byte	0x1
	.byte	0x19
	.4byte	0xba
	.byte	0x5
	.byte	0x3
	.4byte	g_lastTimer
	.uleb128 0x3b
	.4byte	.LASF97
	.byte	0x5
	.byte	0x39
	.4byte	0x9cb
	.byte	0x1
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3a6
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
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
	.uleb128 0x5
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x35
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x3b
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
	.4byte	0x9d2
	.4byte	0x4c6
	.ascii	"neoAudioEventHandler\000"
	.4byte	0x5bc
	.ascii	"neoAudioShutdown\000"
	.4byte	0x5e0
	.ascii	"neoAudioReset\000"
	.4byte	0x629
	.ascii	"neoAudioInit\000"
	.4byte	0x655
	.ascii	"neoAudioGetTimestamp\000"
	.4byte	0x664
	.ascii	"neoAudioPause\000"
	.4byte	0x688
	.ascii	"neoAudioResume\000"
	.4byte	0x69b
	.ascii	"neoAudioUpdate\000"
	.4byte	0x7fe
	.ascii	"neoAudioBufferWrite16\000"
	.4byte	0x8b4
	.ascii	"neoAudioBufferWrite32\000"
	.4byte	0x9bd
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
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	.LBB57-.Ltext0
	.4byte	.LBE57-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF92:
	.ascii	"g_audioEvent\000"
.LASF49:
	.ascii	"_TNeoContext7\000"
.LASF56:
	.ascii	"audioFrame\000"
.LASF80:
	.ascii	"neoAudioUpdate\000"
.LASF98:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF37:
	.ascii	"z80irqvector\000"
.LASF51:
	.ascii	"z80Ram\000"
.LASF33:
	.ascii	"Z80_IRQ\000"
.LASF60:
	.ascii	"neoAudioIOMapWrite32\000"
.LASF72:
	.ascii	"neoAudioShutdown\000"
.LASF91:
	.ascii	"neoAudioBufferWrite32\000"
.LASF24:
	.ascii	"Z80SP_BASE\000"
.LASF45:
	.ascii	"z80_rebaseSP\000"
.LASF47:
	.ascii	"TDrZ80Context\000"
.LASF42:
	.ascii	"z80_out\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF95:
	.ascii	"g_audioIOMap\000"
.LASF35:
	.ascii	"Z80IM\000"
.LASF83:
	.ascii	"posProcessed\000"
.LASF39:
	.ascii	"z80_write8\000"
.LASF13:
	.ascii	"float\000"
.LASF53:
	.ascii	"_TNeoAudioEvent\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF41:
	.ascii	"z80_in\000"
.LASF28:
	.ascii	"Z80A2\000"
.LASF86:
	.ascii	"neoAudioBufferWrite16\000"
.LASF71:
	.ascii	"neoAudioEventHandler\000"
.LASF61:
	.ascii	"neoAudioIOMapWrite16\000"
.LASF54:
	.ascii	"value\000"
.LASF100:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm7\\\\buil"
	.ascii	"d\000"
.LASF43:
	.ascii	"z80_read8\000"
.LASF90:
	.ascii	"neoAudioIOMapRead32\000"
.LASF46:
	.ascii	"z80_rebasePC\000"
.LASF19:
	.ascii	"Z80BC\000"
.LASF81:
	.ascii	"timerData\000"
.LASF70:
	.ascii	"neoAudioIOWrite16\000"
.LASF89:
	.ascii	"newValue\000"
.LASF76:
	.ascii	"neoAudioInit\000"
.LASF31:
	.ascii	"Z80DE2\000"
.LASF44:
	.ascii	"z80_read16\000"
.LASF64:
	.ascii	"pReg\000"
.LASF73:
	.ascii	"neoAudioReset\000"
.LASF15:
	.ascii	"char\000"
.LASF36:
	.ascii	"spare\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF22:
	.ascii	"Z80SP\000"
.LASF48:
	.ascii	"DrZ80\000"
.LASF62:
	.ascii	"neoAudioDoWrite\000"
.LASF58:
	.ascii	"bits\000"
.LASF10:
	.ascii	"long long int\000"
.LASF88:
	.ascii	"oldValue\000"
.LASF25:
	.ascii	"Z80IX\000"
.LASF26:
	.ascii	"Z80IY\000"
.LASF67:
	.ascii	"pNextEvent\000"
.LASF16:
	.ascii	"Z80PC\000"
.LASF69:
	.ascii	"neoAudioIOWrite32\000"
.LASF29:
	.ascii	"Z80F2\000"
.LASF87:
	.ascii	"mask\000"
.LASF23:
	.ascii	"Z80PC_BASE\000"
.LASF59:
	.ascii	"TNeoAudioEvent\000"
.LASF94:
	.ascii	"g_eventProcessed\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF97:
	.ascii	"g_neo7\000"
.LASF68:
	.ascii	"deltaT\000"
.LASF99:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoAudio.c\000"
.LASF2:
	.ascii	"short int\000"
.LASF7:
	.ascii	"long int\000"
.LASF57:
	.ascii	"offset\000"
.LASF65:
	.ascii	"eventIndex\000"
.LASF21:
	.ascii	"Z80HL\000"
.LASF63:
	.ascii	"pEvent\000"
.LASF66:
	.ascii	"eventCount\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF38:
	.ascii	"z80_irq_callback\000"
.LASF96:
	.ascii	"g_lastTimer\000"
.LASF32:
	.ascii	"Z80HL2\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF34:
	.ascii	"Z80IF\000"
.LASF50:
	.ascii	"z80MemTable\000"
.LASF6:
	.ascii	"int32_t\000"
.LASF30:
	.ascii	"Z80BC2\000"
.LASF77:
	.ascii	"neoAudioPause\000"
.LASF85:
	.ascii	"neoAudioIOMapRead16\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF20:
	.ascii	"Z80DE\000"
.LASF74:
	.ascii	"enabled\000"
.LASF79:
	.ascii	"neoAudioResume\000"
.LASF78:
	.ascii	"neoAudioGetTimestamp\000"
.LASF82:
	.ascii	"neoAudioBufferWrite\000"
.LASF75:
	.ascii	"powerON\000"
.LASF93:
	.ascii	"g_eventSent\000"
.LASF40:
	.ascii	"z80_write16\000"
.LASF52:
	.ascii	"TNeoContext7\000"
.LASF0:
	.ascii	"signed char\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF18:
	.ascii	"Z80F\000"
.LASF17:
	.ascii	"Z80A\000"
.LASF27:
	.ascii	"Z80I\000"
.LASF14:
	.ascii	"double\000"
.LASF55:
	.ascii	"timeStamp\000"
.LASF84:
	.ascii	"pendingCount\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
