	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"guiBase.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	guiFramePush_r
	.code	16
	.thumb_func
	.type	guiFramePush_r, %function
guiFramePush_r:
.LFB169:
	.file 1 "C:/Users/GRX/NeoDS/arm9/source/guiBase.c"
	.loc 1 47 0
.LVL0:
	.loc 1 49 0
	ldr	r3, .L3
	.loc 1 50 0
	mov	r2, #1
	.loc 1 49 0
	str	r0, [r3]
	.loc 1 50 0
	strb	r2, [r3, #4]
	.loc 1 51 0
	@ sp needed for prologue
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
.LFE169:
	.size	guiFramePush_r, .-guiFramePush_r
	.align	2
	.global	guiFrameNew_r
	.code	16
	.thumb_func
	.type	guiFrameNew_r, %function
guiFrameNew_r:
.LFB170:
	.loc 1 54 0
.LVL1:
	.loc 1 56 0
	ldr	r3, .L7
	.loc 1 57 0
	mov	r2, #3
	.loc 1 56 0
	str	r0, [r3]
	.loc 1 57 0
	strb	r2, [r3, #4]
	.loc 1 58 0
	@ sp needed for prologue
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
.LFE170:
	.size	guiFrameNew_r, .-guiFrameNew_r
	.align	2
	.global	guiFramePop
	.code	16
	.thumb_func
	.type	guiFramePop, %function
guiFramePop:
.LFB171:
	.loc 1 61 0
	.loc 1 63 0
	ldr	r3, .L11
	mov	r2, #2
	strb	r2, [r3, #4]
	.loc 1 64 0
	@ sp needed for prologue
	bx	lr
.L12:
	.align	2
.L11:
	.word	.LANCHOR0
.LFE171:
	.size	guiFramePop, .-guiFramePop
	.align	2
	.global	guiGetRoot
	.code	16
	.thumb_func
	.type	guiGetRoot, %function
guiGetRoot:
.LFB172:
	.loc 1 67 0
	.loc 1 67 0
	ldr	r3, .L15
	.loc 1 70 0
	@ sp needed for prologue
	.loc 1 67 0
	mov	r2, r3
	ldr	r3, [r3, #40]
	add	r2, r2, #8
	lsl	r3, r3, #3
	ldr	r0, [r3, r2]
	.loc 1 70 0
	bx	lr
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
.LFE172:
	.size	guiGetRoot, .-guiGetRoot
	.align	2
	.global	guiHeapAlloc
	.code	16
	.thumb_func
	.type	guiHeapAlloc, %function
guiHeapAlloc:
.LFB173:
	.loc 1 73 0
.LVL2:
	.loc 1 74 0
	ldr	r3, .L19
	.loc 1 75 0
	mov	r1, #3
	.loc 1 74 0
	ldr	r2, [r3, #44]
	.loc 1 75 0
	add	r0, r0, #3
.LVL3:
	bic	r0, r0, r1
	add	r0, r0, r2
	str	r0, [r3, #44]
	add	r3, r3, #64
	add	r0, r3, r2
	.loc 1 78 0
	@ sp needed for prologue
	bx	lr
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
.LFE173:
	.size	guiHeapAlloc, .-guiHeapAlloc
	.align	2
	.global	guiFindObjectAt
	.code	16
	.thumb_func
	.type	guiFindObjectAt, %function
guiFindObjectAt:
.LFB174:
	.loc 1 81 0
	push	{r4, r5, r6, lr}
.LCFI0:
.LVL4:
	sub	sp, sp, #16
.LCFI1:
	.loc 1 84 0
	ldr	r2, .L30
	.loc 1 81 0
	mov	r3, r0
	.loc 1 84 0
	mov	r0, r2
.LVL5:
	ldr	r2, [r2, #40]
	add	r0, r0, #8
	lsl	r2, r2, #3
	ldr	r2, [r2, r0]
	mov	r0, #0
.LVL6:
	ldr	r2, [r2, #8]
.LVL7:
	.loc 1 86 0
	b	.L28
.L26:
.LBB6:
.LBB7:
	.file 2 "C:/Users/GRX/NeoDS/arm9/source/Default.h"
	.loc 2 33 0
	ldr	r4, [r2, #24]
	str	r4, [sp, #4]
	cmp	r3, r4
	blt	.L23
	.loc 1 87 0
	ldr	r5, [r2, #28]
	cmp	r1, r5
	blt	.L23
	.loc 2 33 0
	ldr	r5, [r2, #32]
	cmp	r3, r5
	bgt	.L23
	ldr	r6, [r2, #36]
	lsr	r5, r1, #31
	asr	r6, r6, #31
	str	r6, [sp, #12]
	ldr	r4, [r2, #36]
	cmp	r4, r1
	adc	r6, r6, r5
	mov	ip, r6
	b	.L24
.L23:
	mov	r5, #0
	mov	ip, r5
.L24:
.LBE7:
.LBE6:
	.loc 1 87 0
	mov	r6, ip
	lsl	r5, r6, #24
	cmp	r5, #0
	beq	.L25
	.loc 1 89 0
	ldr	r0, [sp, #4]
.LVL8:
	sub	r3, r3, r0
	.loc 1 90 0
	ldr	r0, [r2, #28]
	sub	r1, r1, r0
.LVL9:
	.loc 1 91 0
	mov	r0, r2
.LVL10:
	ldr	r2, [r2, #8]
	b	.L28
.L25:
	.loc 1 93 0
	ldr	r2, [r2, #12]
.L28:
	.loc 1 86 0
	cmp	r2, #0
	bne	.L26
	.loc 1 97 0
	add	sp, sp, #16
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L31:
	.align	2
.L30:
	.word	.LANCHOR0
.LFE174:
	.size	guiFindObjectAt, .-guiFindObjectAt
	.align	2
	.code	16
	.thumb_func
	.type	guiSendEventRecursive, %function
guiSendEventRecursive:
.LFB175:
	.loc 1 100 0
	push	{r4, r5, r6, lr}
.LCFI2:
.LVL11:
	.loc 1 100 0
	mov	r5, r1
	mov	r6, r2
	.loc 1 101 0
	ldr	r4, [r0, #8]
.LVL12:
	.loc 1 102 0
	bl	guiObjSendEvent
.LVL13:
	.loc 1 103 0
	b	.L33
.L34:
	.loc 1 104 0
	mov	r0, r4
	mov	r1, r5
	mov	r2, r6
	bl	guiSendEventRecursive
	.loc 1 105 0
	ldr	r4, [r4, #12]
.L33:
	.loc 1 103 0
	cmp	r4, #0
	bne	.L34
	.loc 1 107 0
	@ sp needed for prologue
.LVL14:
.LVL15:
.LVL16:
	pop	{r4, r5, r6, pc}
.LFE175:
	.size	guiSendEventRecursive, .-guiSendEventRecursive
	.align	2
	.global	guiBroadcastEvent
	.code	16
	.thumb_func
	.type	guiBroadcastEvent, %function
guiBroadcastEvent:
.LFB176:
	.loc 1 110 0
	push	{r4, lr}
.LCFI3:
.LVL17:
	.loc 1 110 0
	mov	r2, r1
	.loc 1 112 0
	ldr	r1, .L39
.LVL18:
	.loc 1 110 0
	mov	r3, r0
	.loc 1 112 0
	mov	r0, r1
.LVL19:
	ldr	r1, [r1, #40]
	add	r0, r0, #8
	lsl	r1, r1, #3
	ldr	r0, [r1, r0]
.LVL20:
	.loc 1 113 0
	cmp	r0, #0
	beq	.L38
	.loc 1 114 0
	mov	r1, r3
	bl	guiSendEventRecursive
.LVL21:
.L38:
	.loc 1 116 0
	@ sp needed for prologue
	pop	{r4, pc}
.L40:
	.align	2
.L39:
	.word	.LANCHOR0
.LFE176:
	.size	guiBroadcastEvent, .-guiBroadcastEvent
	.align	2
	.global	guiSystemRender
	.code	16
	.thumb_func
	.type	guiSystemRender, %function
guiSystemRender:
.LFB177:
	.loc 1 119 0
	push	{r4, lr}
.LCFI4:
	.loc 1 120 0
	mov	r0, #6
	mov	r1, #0
	bl	guiBroadcastEvent
	.loc 1 121 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE177:
	.size	guiSystemRender, .-guiSystemRender
	.align	2
	.global	guiObjAllocChild_r
	.code	16
	.thumb_func
	.type	guiObjAllocChild_r, %function
guiObjAllocChild_r:
.LFB180:
	.loc 1 275 0
	push	{r4, r5, r6, lr}
.LCFI5:
.LVL22:
	sub	sp, sp, #8
.LCFI6:
	.loc 1 275 0
	str	r2, [sp, #4]
	.loc 1 276 0
	ldr	r2, [r0, #8]
.LVL23:
.LBB8:
.LBB11:
	.loc 1 74 0
	ldr	r3, .L47
	.loc 1 75 0
	mov	r4, #3
.LBE11:
.LBE8:
	.loc 1 275 0
	mov	r6, r0
.LBB14:
.LBB10:
	.loc 1 75 0
	add	r0, r2, #3
.LVL24:
.LBE10:
.LBE14:
	.loc 1 275 0
	mov	r5, r1
.LBB15:
.LBB12:
	.loc 1 75 0
	bic	r0, r0, r4
	.loc 1 74 0
	ldr	r1, [r3, #44]
.LVL25:
.LBE12:
.LBE15:
	.loc 1 276 0
	mov	r4, r3
	add	r4, r4, #64
.LBB16:
.LBB9:
	.loc 1 75 0
	add	r0, r0, r1
.LBE9:
.LBE16:
	.loc 1 276 0
	add	r4, r4, r1
.LVL26:
.LBB17:
.LBB13:
	.loc 1 75 0
	str	r0, [r3, #44]
.LBE13:
.LBE17:
	.loc 1 277 0
	mov	r1, #0
	mov	r0, r4
	bl	memset
	.loc 1 278 0
	cmp	r5, #0
	beq	.L44
	.loc 1 280 0
	ldr	r3, [r5, #8]
	.loc 1 281 0
	str	r4, [r5, #8]
	.loc 1 280 0
	str	r3, [r4, #12]
	b	.L45
.L44:
	.loc 1 284 0
	str	r5, [r4, #12]
.L45:
	.loc 1 289 0
	ldr	r2, [sp, #4]
.LVL27:
	mov	r3, r4
	.loc 1 287 0
	str	r5, [r4, #4]
	.loc 1 289 0
	add	r3, r3, #24
	ldmia	r2!, {r0, r1, r5}
	stmia	r3!, {r0, r1, r5}
.LVL28:
	ldr	r2, [r2]
.LVL29:
	.loc 1 295 0
	mov	r0, r4
	.loc 1 289 0
	str	r2, [r3]
	.loc 1 291 0
	mov	r3, #0
	str	r3, [r4, #8]
	.loc 1 293 0
	mov	r3, #1
	.loc 1 290 0
	str	r6, [r4]
	.loc 1 293 0
	str	r3, [r4, #20]
	.loc 1 295 0
	add	sp, sp, #8
	@ sp needed for prologue
.LVL30:
.LVL31:
	pop	{r4, r5, r6, pc}
.L48:
	.align	2
.L47:
	.word	.LANCHOR0
.LFE180:
	.size	guiObjAllocChild_r, .-guiObjAllocChild_r
	.align	2
	.global	guiObjCreateChild_r
	.code	16
	.thumb_func
	.type	guiObjCreateChild_r, %function
guiObjCreateChild_r:
.LFB181:
	.loc 1 299 0
	push	{r4, lr}
.LCFI7:
.LVL32:
	.loc 1 300 0
	bl	guiObjAllocChild_r
.LVL33:
	.loc 1 301 0
	mov	r1, #3
	.loc 1 300 0
	mov	r4, r0
.LVL34:
	.loc 1 301 0
	mov	r2, #0
	bl	guiObjSendEvent
	.loc 1 303 0
	@ sp needed for prologue
	mov	r0, r4
.LVL35:
	pop	{r4, pc}
.LFE181:
	.size	guiObjCreateChild_r, .-guiObjCreateChild_r
	.align	2
	.global	guiSystemProcess
	.code	16
	.thumb_func
	.type	guiSystemProcess, %function
guiSystemProcess:
.LFB179:
	.loc 1 171 0
	push	{r4, r5, r6, lr}
.LCFI8:
	sub	sp, sp, #40
.LCFI9:
.LBB26:
.LBB27:
	.loc 1 127 0
	ldr	r4, .L80
	ldrb	r3, [r4, #4]
	cmp	r3, #1
	beq	.L54
	cmp	r3, #0
	beq	.L53
	cmp	r3, #2
	beq	.L55
	cmp	r3, #3
	bne	.L52
	b	.L79
.L54:
	.loc 1 131 0
	bl	guiRenderClear
	.loc 1 132 0
	mov	r0, #2
	mov	r1, #0
	bl	guiBroadcastEvent
	.loc 1 133 0
	ldr	r3, [r4, #40]
	.loc 1 134 0
	mov	r5, r4
	.loc 1 133 0
	add	r3, r3, #1
	str	r3, [r4, #40]
	.loc 1 134 0
	add	r5, r5, #8
	lsl	r3, r3, #3
	add	r5, r5, r3
.LVL36:
	.loc 1 135 0
	ldr	r3, [r4, #44]
	str	r3, [r5, #4]
	b	.L75
.LVL37:
.L55:
	.loc 1 144 0
	mov	r0, #2
	mov	r1, #0
	bl	guiBroadcastEvent
	.loc 1 146 0
	mov	r0, #4
	mov	r1, #0
	bl	guiBroadcastEvent
	.loc 1 147 0
	bl	guiRenderClear
	.loc 1 148 0
	ldr	r3, [r4, #40]
	.loc 1 151 0
	mov	r0, #1
	.loc 1 149 0
	lsl	r2, r3, #3
	add	r2, r4, r2
	ldr	r2, [r2, #12]
	.loc 1 150 0
	sub	r3, r3, #1
	.loc 1 149 0
	str	r2, [r4, #44]
	.loc 1 150 0
	str	r3, [r4, #40]
	.loc 1 151 0
	mov	r1, #0
	bl	guiBroadcastEvent
	b	.L52
.L79:
	.loc 1 154 0
	mov	r0, #2
	mov	r1, #0
	bl	guiBroadcastEvent
	.loc 1 155 0
	mov	r0, #4
	mov	r1, #0
	bl	guiBroadcastEvent
	.loc 1 156 0
	bl	guiRenderClear
	.loc 1 157 0
	ldr	r5, [r4, #40]
	mov	r3, r4
	add	r3, r3, #8
	lsl	r5, r5, #3
	add	r5, r3, r5
.LVL38:
	.loc 1 158 0
	ldr	r3, [r5, #4]
	str	r3, [r4, #44]
.L75:
	.loc 1 159 0
	mov	r1, #0
	ldr	r2, .L80+4
	ldr	r0, [r4]
	bl	guiObjAllocChild_r
	.loc 1 161 0
	mov	r1, #3
	mov	r2, #0
	.loc 1 159 0
	str	r0, [r5]
	.loc 1 161 0
	bl	guiObjSendEvent
	.loc 1 163 0
	ldr	r0, [r5]
	mov	r1, #1
	mov	r2, #0
	bl	guiObjSendEvent
.L52:
	.loc 1 166 0
	ldr	r3, .L80
	mov	r2, #0
	strb	r2, [r3, #4]
	.loc 1 167 0
	str	r2, [r3]
.L53:
.LBE27:
.LBE26:
	.loc 1 192 0
	add	r4, sp, #16
	.loc 1 191 0
	bl	scanKeys
	.loc 1 192 0
	mov	r0, r4
	bl	touchRead
	.loc 1 193 0
	ldrh	r3, [r4, #4]
	lsr	r3, r3, #3
	str	r3, [sp, #12]
	.loc 1 194 0
	ldrh	r3, [r4, #6]
	lsr	r3, r3, #3
	str	r3, [sp, #8]
	.loc 1 196 0
	bl	keysDown
	mov	r5, r0
.LVL39:
	.loc 1 197 0
	bl	keysDown
	mov	r6, r0
.LVL40:
	.loc 1 198 0
	bl	keysUp
	ldr	r4, .L80+8
	mov	r1, #0
	str	r0, [sp, #4]
	add	r4, r4, #64
	str	r1, [sp]
.L61:
	.loc 1 200 0
	bl	keysHeld
	ldr	r3, [sp]
	mov	r2, #1
	lsl	r2, r2, r3
	and	r0, r2
	beq	.L57
	.loc 1 201 0
	ldr	r3, [r4]
	add	r3, r3, #1
	str	r3, [r4]
	.loc 1 202 0
	cmp	r3, #30
	ble	.L58
	mov	r1, #7
	tst	r3, r1
	beq	.L77
	.loc 1 204 0
	cmp	r3, #90
	ble	.L58
	mov	r1, #3
	tst	r3, r1
	beq	.L77
	.loc 1 206 0
	cmp	r3, #180
	ble	.L58
	mov	r1, #1
	tst	r3, r1
	bne	.L58
.L77:
	.loc 1 207 0
	orr	r5, r5, r2
.LVL41:
	b	.L58
.L57:
	.loc 1 210 0
	str	r0, [r4]
.L58:
	.loc 1 199 0
	ldr	r2, [sp]
	add	r4, r4, #4
	add	r2, r2, #1
	str	r2, [sp]
	cmp	r2, #16
	bne	.L61
	.loc 1 213 0
	ldr	r3, .L80+12
	.loc 1 216 0
	ldr	r0, [sp, #12]
	.loc 1 213 0
	and	r5, r5, r3
	.loc 1 216 0
	ldr	r1, [sp, #8]
	.loc 1 213 0
	str	r5, [sp]
	.loc 1 216 0
	bl	guiFindObjectAt
	mov	r5, r0
.LVL42:
	.loc 1 217 0
	lsl	r3, r6, #19
	bpl	.L62
.LBB28:
	.loc 1 220 0
	ldr	r1, [sp, #12]
	.loc 1 221 0
	ldr	r2, [sp, #8]
	.loc 1 220 0
	add	r3, sp, #28
	str	r1, [sp, #28]
	.loc 1 221 0
	str	r2, [r3, #4]
	mov	r4, r0
.LVL43:
	.loc 1 223 0
	b	.L63
.LVL44:
.L66:
	.loc 1 224 0
	mov	r0, r4
.LVL45:
	mov	r1, #7
	add	r2, sp, #28
	bl	guiObjSendEvent
	.loc 1 225 0
	cmp	r0, #0
	bne	.L64
	.loc 1 226 0
	ldr	r3, .L80+16
	str	r4, [r3]
	.loc 1 227 0
	b	.L65
.L64:
	.loc 1 229 0
	ldr	r4, [r4, #4]
.LVL46:
.L63:
	.loc 1 223 0
	cmp	r4, #0
	bne	.L66
.L65:
	.loc 1 231 0
	ldr	r3, .L80+12
	and	r6, r6, r3
.L62:
.LBE28:
	.loc 1 233 0
	ldr	r3, [sp, #4]
	lsl	r3, r3, #19
	bpl	.L67
	.loc 1 234 0
	ldr	r3, .L80+16
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.L68
.LBB29:
	.loc 1 236 0
	ldr	r1, [sp, #12]
	.loc 1 237 0
	ldr	r3, [sp, #8]
	.loc 1 236 0
	add	r2, sp, #28
	str	r1, [sp, #28]
	.loc 1 237 0
	str	r3, [r2, #4]
	.loc 1 238 0
	mov	r1, #8
	bl	guiObjSendEvent
.L68:
.LBE29:
	.loc 1 240 0
	cmp	r5, #0
	beq	.L69
	ldr	r3, .L80+16
	ldr	r3, [r3]
	cmp	r5, r3
	bne	.L69
.LBB30:
	.loc 1 242 0
	ldr	r1, [sp, #12]
	.loc 1 243 0
	ldr	r3, [sp, #8]
	.loc 1 242 0
	add	r2, sp, #28
	str	r1, [sp, #28]
	.loc 1 243 0
	str	r3, [r2, #4]
	.loc 1 244 0
	mov	r0, r5
	mov	r1, #9
	bl	guiObjSendEvent
.L69:
.LBE30:
	.loc 1 246 0
	ldr	r3, .L80+16
	mov	r2, #0
	.loc 1 247 0
	ldr	r1, [sp, #4]
	.loc 1 246 0
	str	r2, [r3]
	.loc 1 247 0
	ldr	r3, .L80+12
	and	r1, r1, r3
	str	r1, [sp, #4]
.LVL47:
.L67:
	.loc 1 251 0
	cmp	r6, #0
	beq	.L70
.LBB31:
	.loc 1 254 0
	mov	r0, #10
	add	r1, sp, #36
	.loc 1 253 0
	str	r6, [sp, #36]
	.loc 1 254 0
	bl	guiBroadcastEvent
.LVL48:
.L70:
.LBE31:
	.loc 1 256 0
	ldr	r2, [sp, #4]
	cmp	r2, #0
	beq	.L71
.LBB32:
	.loc 1 259 0
	mov	r0, #11
	add	r1, sp, #36
	.loc 1 258 0
	str	r2, [sp, #36]
	.loc 1 259 0
	bl	guiBroadcastEvent
.LVL49:
.L71:
.LBE32:
	.loc 1 261 0
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L72
.LBB33:
	.loc 1 264 0
	mov	r0, #12
	add	r1, sp, #36
	.loc 1 263 0
	str	r3, [sp, #36]
	.loc 1 264 0
	bl	guiBroadcastEvent
.LVL50:
.L72:
.LBE33:
	.loc 1 268 0
	mov	r0, #5
	mov	r1, #0
	bl	guiBroadcastEvent
	.loc 1 271 0
	add	sp, sp, #40
	@ sp needed for prologue
.LVL51:
.LVL52:
.LVL53:
	pop	{r4, r5, r6, pc}
.L81:
	.align	2
.L80:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	-4097
	.word	.LANCHOR3
.LFE179:
	.size	guiSystemProcess, .-guiSystemProcess
	.align	2
	.global	guiSystemInit
	.code	16
	.thumb_func
	.type	guiSystemInit, %function
guiSystemInit:
.LFB168:
	.loc 1 32 0
	push	{r4, lr}
.LCFI10:
	.loc 1 35 0
	ldr	r0, .L84
	mov	r3, #0
	str	r3, [r0, #40]
	.loc 1 36 0
	str	r3, [r0, #44]
	.loc 1 37 0
	mov	r1, #0
	mov	r2, #32
	add	r0, r0, #8
	bl	memset
	.loc 1 42 0
	bl	guiRenderInit
	.loc 1 43 0
	ldr	r0, .L84+4
	bl	guiConsoleLog
	.loc 1 44 0
	@ sp needed for prologue
	pop	{r4, pc}
.L85:
	.align	2
.L84:
	.word	.LANCHOR0
	.word	.LC21
.LFE168:
	.size	guiSystemInit, .-guiSystemInit
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_guiBounds, %object
	.size	g_guiBounds, 16
g_guiBounds:
	.word	0
	.word	0
	.word	31
	.word	23
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC21:
	.ascii	"guiSystemInit complete\000"
	.bss
	.align	5
	.set	.LANCHOR0,. + 0
	.set	.LANCHOR2,. + 16384
	.set	.LANCHOR3,. + 16512
	.type	g_layoutType, %object
	.size	g_layoutType, 4
g_layoutType:
	.space	4
	.type	g_command, %object
	.size	g_command, 1
g_command:
	.space	1
	.space	3
	.type	g_stack, %object
	.size	g_stack, 32
g_stack:
	.space	32
	.type	g_stackPos, %object
	.size	g_stackPos, 4
g_stackPos:
	.space	4
	.type	g_heapPos, %object
	.size	g_heapPos, 4
g_heapPos:
	.space	4
	.space	16
	.type	g_heap, %object
	.size	g_heap, 16384
g_heap:
	.space	16384
	.type	keyTime.7287, %object
	.size	keyTime.7287, 64
keyTime.7287:
	.space	64
	.type	pTouchDownObj.7286, %object
	.size	pTouchDownObj.7286, 4
pTouchDownObj.7286:
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
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.byte	0x4
	.4byte	.LCFI0-.LFB174
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
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.byte	0x4
	.4byte	.LCFI2-.LFB175
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
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.byte	0x4
	.4byte	.LCFI3-.LFB176
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
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.byte	0x4
	.4byte	.LCFI4-.LFB177
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
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.byte	0x4
	.4byte	.LCFI5-.LFB180
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
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.byte	0x4
	.4byte	.LCFI7-.LFB181
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
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.byte	0x4
	.4byte	.LCFI8-.LFB179
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
	.uleb128 0x38
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.byte	0x4
	.4byte	.LCFI10-.LFB168
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE24:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST5:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB174-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB175-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE175-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB176-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE176-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE176-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE176-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE176-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LFB177-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE177-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB180-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE180-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LFB181-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE181-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LFB179-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE179-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LFB168-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE168-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 5 "C:/devkitPro/libnds/include/nds/touch.h"
	.file 6 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 7 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 8 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 9 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 10 "C:/Users/GRX/NeoDS/arm9/include/cyclone.h"
	.file 11 "C:/Users/GRX/NeoDS/arm9/include/NeoCpu.h"
	.file 12 "C:/Users/GRX/NeoDS/arm9/../common/source/NeoAudioStream.h"
	.file 13 "C:/devkitPro/libnds/include/nds/input.h"
	.file 14 "C:/Users/GRX/NeoDS/arm9/include/NeoSystem.h"
	.file 15 "C:/Users/GRX/NeoDS/arm9/source/guiEvent.h"
	.file 16 "C:/Users/GRX/NeoDS/arm9/source/guiObject.h"
	.file 17 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.section	.debug_info
	.4byte	0x1753
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF306
	.byte	0x1
	.4byte	.LASF307
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2a
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x35
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x36
	.4byte	0x57
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4f
	.4byte	0x69
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x4
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x4
	.byte	0x63
	.4byte	0x4c
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x4
	.byte	0x64
	.4byte	0x70
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x4
	.byte	0x68
	.4byte	0x3a
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x4
	.byte	0x69
	.4byte	0x5e
	.uleb128 0x6
	.byte	0x1
	.byte	0x4
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
	.byte	0x4
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF19
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0x8
	.byte	0x4
	.4byte	0x127
	.uleb128 0xc
	.4byte	0x10a
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0xc
	.byte	0x5
	.byte	0x6
	.4byte	0x189
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x5
	.byte	0x7
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x5
	.byte	0x8
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.ascii	"px\000"
	.byte	0x5
	.byte	0x9
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.ascii	"py\000"
	.byte	0x5
	.byte	0xa
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.ascii	"z1\000"
	.byte	0x5
	.byte	0xb
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.ascii	"z2\000"
	.byte	0x5
	.byte	0xc
	.4byte	0xb3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0xd
	.4byte	0x12c
	.uleb128 0x10
	.4byte	.LASF122
	.byte	0x2
	.byte	0xd
	.byte	0x1f
	.4byte	0x1fe
	.uleb128 0x7
	.4byte	.LASF24
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF25
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF27
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF28
	.sleb128 16
	.uleb128 0x7
	.4byte	.LASF29
	.sleb128 32
	.uleb128 0x7
	.4byte	.LASF30
	.sleb128 64
	.uleb128 0x7
	.4byte	.LASF31
	.sleb128 128
	.uleb128 0x7
	.4byte	.LASF32
	.sleb128 256
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 512
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 1024
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 2048
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 4096
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 8192
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x28
	.byte	0x6
	.2byte	0x18c
	.4byte	0x2a2
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x18d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x18e
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x18f
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x190
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x191
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x192
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x193
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x194
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x195
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x196
	.4byte	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x198
	.4byte	0x1fe
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x8
	.byte	0x7
	.byte	0x29
	.4byte	0x2d7
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x7
	.byte	0x2a
	.4byte	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x7
	.byte	0x2b
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x118
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x7
	.byte	0x2c
	.4byte	0x2ae
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x9c
	.4byte	0x309
	.uleb128 0x7
	.4byte	.LASF52
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF53
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF54
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF55
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x8
	.byte	0xa1
	.4byte	0x2e8
	.uleb128 0x14
	.4byte	.LASF57
	.2byte	0x2020
	.byte	0x8
	.2byte	0x11a
	.4byte	0x3a0
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x8
	.2byte	0x11b
	.4byte	0x309
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x8
	.2byte	0x11e
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x8
	.2byte	0x121
	.4byte	0x3a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x122
	.4byte	0x2dd
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x8
	.2byte	0x123
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x8
	.2byte	0x124
	.4byte	0x3b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x125
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x126
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x201c
	.byte	0x0
	.uleb128 0x15
	.4byte	0x90
	.4byte	0x3b1
	.uleb128 0x16
	.4byte	0x107
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x90
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x8
	.2byte	0x128
	.4byte	0x314
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x59
	.4byte	0x3f0
	.uleb128 0x7
	.4byte	.LASF66
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF67
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF68
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF69
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x62
	.4byte	0x411
	.uleb128 0x7
	.4byte	.LASF70
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF71
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF72
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF73
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x6a
	.4byte	0x432
	.uleb128 0x7
	.4byte	.LASF74
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF75
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF76
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF77
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x72
	.4byte	0x447
	.uleb128 0x7
	.4byte	.LASF78
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF79
	.sleb128 1
	.byte	0x0
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.4byte	0x46c
	.uleb128 0xf
	.ascii	"x\000"
	.byte	0x2
	.byte	0xe
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.ascii	"y\000"
	.byte	0x2
	.byte	0xf
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x2
	.byte	0x10
	.4byte	0x447
	.uleb128 0x17
	.byte	0x10
	.byte	0x2
	.byte	0x13
	.4byte	0x4b4
	.uleb128 0xf
	.ascii	"x0\000"
	.byte	0x2
	.byte	0x14
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.ascii	"y0\000"
	.byte	0x2
	.byte	0x15
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.ascii	"x1\000"
	.byte	0x2
	.byte	0x16
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.ascii	"y1\000"
	.byte	0x2
	.byte	0x17
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x17
	.byte	0x10
	.byte	0x2
	.byte	0x19
	.4byte	0x4d7
	.uleb128 0xf
	.ascii	"p0\000"
	.byte	0x2
	.byte	0x1a
	.4byte	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.ascii	"p1\000"
	.byte	0x2
	.byte	0x1b
	.4byte	0x46c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x18
	.4byte	.LASF308
	.byte	0x10
	.byte	0x2
	.byte	0x12
	.4byte	0x4ee
	.uleb128 0x19
	.4byte	0x477
	.uleb128 0x19
	.4byte	0x4b4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x2
	.byte	0x1d
	.4byte	0x4d7
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0xb0
	.byte	0xa
	.byte	0x15
	.4byte	0x68f
	.uleb128 0xf
	.ascii	"d\000"
	.byte	0xa
	.byte	0x16
	.4byte	0x68f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.ascii	"a\000"
	.byte	0xa
	.byte	0x17
	.4byte	0x68f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.ascii	"pc\000"
	.byte	0xa
	.byte	0x18
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xf
	.ascii	"srh\000"
	.byte	0xa
	.byte	0x19
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0xa
	.byte	0x1a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0xa
	.byte	0x1b
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xf
	.ascii	"irq\000"
	.byte	0xa
	.byte	0x1c
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xf
	.ascii	"osp\000"
	.byte	0xa
	.byte	0x1d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xf
	.ascii	"xc\000"
	.byte	0xa
	.byte	0x1e
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0xa
	.byte	0x1f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0xa
	.byte	0x20
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0xa
	.byte	0x21
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0xa
	.byte	0x22
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0xa
	.byte	0x23
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0xa
	.byte	0x24
	.4byte	0x6af
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0xa
	.byte	0x25
	.4byte	0x6af
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0xa
	.byte	0x26
	.4byte	0x6af
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0xa
	.byte	0x27
	.4byte	0x6af
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0xa
	.byte	0x28
	.4byte	0x6c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0xa
	.byte	0x29
	.4byte	0x6dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0xa
	.byte	0x2a
	.4byte	0x6f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0xa
	.byte	0x2b
	.4byte	0x6af
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0xa
	.byte	0x2c
	.4byte	0x6af
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0xa
	.byte	0x2d
	.4byte	0x6af
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0xa
	.byte	0x2e
	.4byte	0x70a
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0xa
	.byte	0x2f
	.4byte	0xff
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0xa
	.byte	0x30
	.4byte	0x716
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0xa
	.byte	0x31
	.4byte	0x71c
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x15
	.4byte	0x7b
	.4byte	0x69f
	.uleb128 0x1a
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x7b
	.4byte	0x6af
	.uleb128 0x1c
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69f
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x6c6
	.uleb128 0x1c
	.4byte	0x7b
	.uleb128 0x1c
	.4byte	0x33
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6b5
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x6dd
	.uleb128 0x1c
	.4byte	0x7b
	.uleb128 0x1c
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6cc
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x6f4
	.uleb128 0x1c
	.4byte	0x7b
	.uleb128 0x1c
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6e3
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x69
	.4byte	0x70a
	.uleb128 0x1c
	.4byte	0x69
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6fa
	.uleb128 0x1e
	.byte	0x1
	.4byte	0x69
	.uleb128 0x8
	.byte	0x4
	.4byte	0x710
	.uleb128 0x15
	.4byte	0x7b
	.4byte	0x72c
	.uleb128 0x1a
	.4byte	0x107
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0xb
	.byte	0x6
	.4byte	0x4f9
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0xb
	.byte	0x8
	.4byte	0x742
	.uleb128 0x8
	.byte	0x4
	.4byte	0x748
	.uleb128 0x1b
	.byte	0x1
	.4byte	0xa9
	.4byte	0x758
	.uleb128 0x1c
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0xb
	.byte	0x9
	.4byte	0x763
	.uleb128 0x8
	.byte	0x4
	.4byte	0x769
	.uleb128 0x1b
	.byte	0x1
	.4byte	0xb3
	.4byte	0x779
	.uleb128 0x1c
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0xb
	.byte	0xa
	.4byte	0x784
	.uleb128 0x8
	.byte	0x4
	.4byte	0x78a
	.uleb128 0x1b
	.byte	0x1
	.4byte	0xbe
	.4byte	0x79a
	.uleb128 0x1c
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0xb
	.byte	0xc
	.4byte	0x7a5
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7ab
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x7bc
	.uleb128 0x1c
	.4byte	0xbe
	.uleb128 0x1c
	.4byte	0xa9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0xb
	.byte	0xd
	.4byte	0x7c7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7cd
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x7de
	.uleb128 0x1c
	.4byte	0xbe
	.uleb128 0x1c
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0xb
	.byte	0xe
	.4byte	0x7e9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7ef
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x800
	.uleb128 0x1c
	.4byte	0xbe
	.uleb128 0x1c
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xb
	.byte	0x10
	.4byte	0x784
	.uleb128 0xd
	.4byte	.LASF113
	.byte	0xc
	.byte	0xc
	.byte	0x17
	.4byte	0x850
	.uleb128 0xe
	.4byte	.LASF114
	.byte	0xc
	.byte	0x18
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.ascii	"end\000"
	.byte	0xc
	.byte	0x19
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.ascii	"acc\000"
	.byte	0xc
	.byte	0x1a
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0xc
	.byte	0x1b
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0xc
	.byte	0x1c
	.4byte	0x80b
	.uleb128 0xd
	.4byte	.LASF117
	.byte	0xc
	.byte	0xc
	.byte	0x1f
	.4byte	0x892
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0xc
	.byte	0x20
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF119
	.byte	0xc
	.byte	0x21
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF120
	.byte	0xc
	.byte	0x22
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0xc
	.byte	0x23
	.4byte	0x85b
	.uleb128 0x10
	.4byte	.LASF123
	.byte	0x1
	.byte	0xe
	.byte	0x99
	.4byte	0x8e6
	.uleb128 0x7
	.4byte	.LASF124
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF125
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF126
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF127
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF128
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF129
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF130
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF131
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF132
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF133
	.sleb128 9
	.byte	0x0
	.uleb128 0x1f
	.2byte	0x248
	.byte	0xe
	.byte	0xc0
	.4byte	0xcd4
	.uleb128 0xf
	.ascii	"cpu\000"
	.byte	0xe
	.byte	0xc1
	.4byte	0x72c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF134
	.byte	0xe
	.byte	0xc4
	.4byte	0xcd4
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xe
	.4byte	.LASF135
	.byte	0xe
	.byte	0xc7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xe
	.4byte	.LASF136
	.byte	0xe
	.byte	0xc8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0xe
	.4byte	.LASF137
	.byte	0xe
	.byte	0xcb
	.4byte	0xce4
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0xe
	.4byte	.LASF138
	.byte	0xe
	.byte	0xcc
	.4byte	0x892
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0xe
	.4byte	.LASF139
	.byte	0xe
	.byte	0xcd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0xe
	.4byte	.LASF140
	.byte	0xe
	.byte	0xd0
	.4byte	0x3c9
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0xe
	.4byte	.LASF141
	.byte	0xe
	.byte	0xd1
	.4byte	0x3c9
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0xe
	.4byte	.LASF142
	.byte	0xe
	.byte	0xd2
	.4byte	0x3c9
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0xe
	.4byte	.LASF143
	.byte	0xe
	.byte	0xd3
	.4byte	0x3c9
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0xe
	.4byte	.LASF144
	.byte	0xe
	.byte	0xd4
	.4byte	0x3c9
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0xe
	.4byte	.LASF145
	.byte	0xe
	.byte	0xd5
	.4byte	0x3c9
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0xe
	.4byte	.LASF146
	.byte	0xe
	.byte	0xd6
	.4byte	0x3c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0xe
	.4byte	.LASF147
	.byte	0xe
	.byte	0xd7
	.4byte	0x3c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0xe
	.4byte	.LASF148
	.byte	0xe
	.byte	0xd8
	.4byte	0x3c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0xe
	.4byte	.LASF149
	.byte	0xe
	.byte	0xda
	.4byte	0xcf4
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0xe
	.4byte	.LASF150
	.byte	0xe
	.byte	0xdd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0xe
	.4byte	.LASF151
	.byte	0xe
	.byte	0xde
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0xe
	.4byte	.LASF152
	.byte	0xe
	.byte	0xdf
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0xe
	.4byte	.LASF153
	.byte	0xe
	.byte	0xe0
	.4byte	0xd05
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0xe
	.4byte	.LASF154
	.byte	0xe
	.byte	0xe1
	.4byte	0xd05
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0xe
	.4byte	.LASF155
	.byte	0xe
	.byte	0xe2
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0xe
	.4byte	.LASF156
	.byte	0xe
	.byte	0xe5
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xe
	.4byte	.LASF157
	.byte	0xe
	.byte	0xe6
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0xe
	.4byte	.LASF158
	.byte	0xe
	.byte	0xe7
	.4byte	0x3c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0xe
	.4byte	.LASF159
	.byte	0xe
	.byte	0xe8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0xe
	.4byte	.LASF160
	.byte	0xe
	.byte	0xea
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0xe
	.4byte	.LASF161
	.byte	0xe
	.byte	0xeb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0xe
	.4byte	.LASF162
	.byte	0xe
	.byte	0xec
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0xe
	.4byte	.LASF163
	.byte	0xe
	.byte	0xed
	.4byte	0xd10
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0xe
	.4byte	.LASF164
	.byte	0xe
	.byte	0xee
	.4byte	0x3c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0xe
	.4byte	.LASF165
	.byte	0xe
	.byte	0xf1
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0xe
	.4byte	.LASF166
	.byte	0xe
	.byte	0xf2
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0xe
	.4byte	.LASF167
	.byte	0xe
	.byte	0xf3
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0xe
	.4byte	.LASF168
	.byte	0xe
	.byte	0xf4
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0xe
	.4byte	.LASF169
	.byte	0xe
	.byte	0xf7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0xe
	.4byte	.LASF170
	.byte	0xe
	.byte	0xf8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0xe
	.4byte	.LASF171
	.byte	0xe
	.byte	0xf9
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0xe
	.4byte	.LASF172
	.byte	0xe
	.byte	0xfa
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0xe
	.4byte	.LASF173
	.byte	0xe
	.byte	0xfb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0xe
	.4byte	.LASF174
	.byte	0xe
	.byte	0xfc
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xe
	.4byte	.LASF175
	.byte	0xe
	.byte	0xfd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0x12
	.4byte	.LASF176
	.byte	0xe
	.2byte	0x102
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x12
	.4byte	.LASF177
	.byte	0xe
	.2byte	0x103
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0x12
	.4byte	.LASF178
	.byte	0xe
	.2byte	0x106
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x12
	.4byte	.LASF179
	.byte	0xe
	.2byte	0x108
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x12
	.4byte	.LASF180
	.byte	0xe
	.2byte	0x109
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0x12
	.4byte	.LASF181
	.byte	0xe
	.2byte	0x10a
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0x12
	.4byte	.LASF182
	.byte	0xe
	.2byte	0x10b
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x12
	.4byte	.LASF183
	.byte	0xe
	.2byte	0x10d
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0x12
	.4byte	.LASF184
	.byte	0xe
	.2byte	0x10e
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x12
	.4byte	.LASF185
	.byte	0xe
	.2byte	0x10f
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x12
	.4byte	.LASF186
	.byte	0xe
	.2byte	0x110
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x12
	.4byte	.LASF187
	.byte	0xe
	.2byte	0x111
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0x12
	.4byte	.LASF188
	.byte	0xe
	.2byte	0x114
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0x12
	.4byte	.LASF189
	.byte	0xe
	.2byte	0x115
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0x12
	.4byte	.LASF190
	.byte	0xe
	.2byte	0x116
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0x12
	.4byte	.LASF191
	.byte	0xe
	.2byte	0x117
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0x12
	.4byte	.LASF192
	.byte	0xe
	.2byte	0x118
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0x12
	.4byte	.LASF193
	.byte	0xe
	.2byte	0x11b
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0x12
	.4byte	.LASF194
	.byte	0xe
	.2byte	0x11c
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0x12
	.4byte	.LASF195
	.byte	0xe
	.2byte	0x11f
	.4byte	0xd20
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0x12
	.4byte	.LASF196
	.byte	0xe
	.2byte	0x122
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0x12
	.4byte	.LASF197
	.byte	0xe
	.2byte	0x123
	.4byte	0xd30
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0x15
	.4byte	0x118
	.4byte	0xce4
	.uleb128 0x1a
	.4byte	0x107
	.byte	0x8
	.byte	0x0
	.uleb128 0x15
	.4byte	0x850
	.4byte	0xcf4
	.uleb128 0x1a
	.4byte	0x107
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xcfa
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd00
	.uleb128 0xc
	.4byte	0xa9
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd0b
	.uleb128 0xc
	.4byte	0xbe
	.uleb128 0x15
	.4byte	0xbe
	.4byte	0xd20
	.uleb128 0x1a
	.4byte	0x107
	.byte	0xf
	.byte	0x0
	.uleb128 0x15
	.4byte	0xa9
	.4byte	0xd30
	.uleb128 0x1a
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x15
	.4byte	0xa9
	.4byte	0xd3f
	.uleb128 0x20
	.4byte	0x107
	.byte	0x0
	.uleb128 0x21
	.2byte	0x400
	.byte	0xe
	.byte	0xbf
	.4byte	0xd5a
	.uleb128 0x19
	.4byte	0x8e6
	.uleb128 0x22
	.4byte	.LASF309
	.byte	0xe
	.2byte	0x125
	.4byte	0xd5a
	.byte	0x0
	.uleb128 0x15
	.4byte	0xbe
	.4byte	0xd6a
	.uleb128 0x1a
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF198
	.2byte	0x2000
	.byte	0xe
	.byte	0xbe
	.4byte	0xdf0
	.uleb128 0x24
	.4byte	0xd3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF199
	.byte	0xe
	.2byte	0x128
	.4byte	0xdf0
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0x12
	.4byte	.LASF200
	.byte	0xe
	.2byte	0x129
	.4byte	0xe00
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0x12
	.4byte	.LASF201
	.byte	0xe
	.2byte	0x12a
	.4byte	0xe10
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0x12
	.4byte	.LASF202
	.byte	0xe
	.2byte	0x12b
	.4byte	0xe20
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0x12
	.4byte	.LASF203
	.byte	0xe
	.2byte	0x12c
	.4byte	0xe30
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0x12
	.4byte	.LASF204
	.byte	0xe
	.2byte	0x12d
	.4byte	0xe40
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0x12
	.4byte	.LASF205
	.byte	0xe
	.2byte	0x12e
	.4byte	0xe50
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0x15
	.4byte	0x737
	.4byte	0xe00
	.uleb128 0x1a
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x15
	.4byte	0x758
	.4byte	0xe10
	.uleb128 0x1a
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x15
	.4byte	0x779
	.4byte	0xe20
	.uleb128 0x1a
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x15
	.4byte	0x79a
	.4byte	0xe30
	.uleb128 0x1a
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x15
	.4byte	0x7bc
	.4byte	0xe40
	.uleb128 0x1a
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x15
	.4byte	0x7de
	.4byte	0xe50
	.uleb128 0x1a
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x15
	.4byte	0x800
	.4byte	0xe60
	.uleb128 0x1a
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x13
	.4byte	.LASF206
	.byte	0xe
	.2byte	0x12f
	.4byte	0xd6a
	.uleb128 0x10
	.4byte	.LASF207
	.byte	0x1
	.byte	0xf
	.byte	0x4
	.4byte	0xecd
	.uleb128 0x7
	.4byte	.LASF208
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF209
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF210
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF211
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF212
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF213
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF214
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF215
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF216
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF217
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF218
	.sleb128 10
	.uleb128 0x7
	.4byte	.LASF219
	.sleb128 11
	.uleb128 0x7
	.4byte	.LASF220
	.sleb128 12
	.uleb128 0x7
	.4byte	.LASF221
	.sleb128 13
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF222
	.byte	0xf
	.byte	0x17
	.4byte	0xe6c
	.uleb128 0x10
	.4byte	.LASF223
	.byte	0x1
	.byte	0xf
	.byte	0x19
	.4byte	0xef1
	.uleb128 0x7
	.4byte	.LASF224
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF225
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF226
	.byte	0xf
	.byte	0x1c
	.4byte	0xed8
	.uleb128 0x3
	.4byte	.LASF227
	.byte	0xf
	.byte	0x30
	.4byte	0xf07
	.uleb128 0xd
	.4byte	.LASF227
	.byte	0x8
	.byte	0xf
	.byte	0x30
	.4byte	0xf30
	.uleb128 0xe
	.4byte	.LASF228
	.byte	0xf
	.byte	0x31
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF229
	.byte	0xf
	.byte	0x32
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF230
	.byte	0xf
	.byte	0x34
	.4byte	0xf07
	.uleb128 0x3
	.4byte	.LASF231
	.byte	0xf
	.byte	0x35
	.4byte	0xf07
	.uleb128 0x3
	.4byte	.LASF232
	.byte	0xf
	.byte	0x37
	.4byte	0xf51
	.uleb128 0xd
	.4byte	.LASF232
	.byte	0x4
	.byte	0xf
	.byte	0x37
	.4byte	0xf6c
	.uleb128 0xe
	.4byte	.LASF233
	.byte	0xf
	.byte	0x38
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF234
	.byte	0xf
	.byte	0x3a
	.4byte	0xf51
	.uleb128 0x3
	.4byte	.LASF235
	.byte	0xf
	.byte	0x3b
	.4byte	0xf51
	.uleb128 0x3
	.4byte	.LASF236
	.byte	0x10
	.byte	0xc
	.4byte	0xf8d
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf93
	.uleb128 0x1b
	.byte	0x1
	.4byte	0xef1
	.4byte	0xfad
	.uleb128 0x1c
	.4byte	0xfad
	.uleb128 0x1c
	.4byte	0xecd
	.uleb128 0x1c
	.4byte	0x118
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfb3
	.uleb128 0xd
	.4byte	.LASF237
	.byte	0x28
	.byte	0x10
	.byte	0x8
	.4byte	0x1022
	.uleb128 0xe
	.4byte	.LASF238
	.byte	0x10
	.byte	0x1b
	.4byte	0x109a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF239
	.byte	0x10
	.byte	0x1c
	.4byte	0xfad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF240
	.byte	0x10
	.byte	0x1d
	.4byte	0xfad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF241
	.byte	0x10
	.byte	0x1e
	.4byte	0xfad
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.4byte	.LASF242
	.byte	0x10
	.byte	0x1f
	.4byte	0xf82
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x10
	.byte	0x20
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.4byte	.LASF243
	.byte	0x10
	.byte	0x21
	.4byte	0x4ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0xd
	.4byte	.LASF244
	.byte	0x10
	.byte	0x10
	.byte	0xe
	.4byte	0x1067
	.uleb128 0xe
	.4byte	.LASF242
	.byte	0x10
	.byte	0xf
	.4byte	0xf82
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF239
	.byte	0x10
	.byte	0x10
	.4byte	0x1067
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x10
	.byte	0x11
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF245
	.byte	0x10
	.byte	0x12
	.4byte	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x106d
	.uleb128 0x25
	.4byte	.LASF244
	.4byte	0x1022
	.uleb128 0x3
	.4byte	.LASF246
	.byte	0x10
	.byte	0x13
	.4byte	0x1022
	.uleb128 0x10
	.4byte	.LASF247
	.byte	0x1
	.byte	0x10
	.byte	0x15
	.4byte	0x109a
	.uleb128 0x7
	.4byte	.LASF248
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF249
	.sleb128 2
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x10a0
	.uleb128 0xc
	.4byte	0x1076
	.uleb128 0x3
	.4byte	.LASF250
	.byte	0x10
	.byte	0x22
	.4byte	0xfb3
	.uleb128 0x8
	.byte	0x4
	.4byte	0x10a5
	.uleb128 0xd
	.4byte	.LASF251
	.byte	0x8
	.byte	0x1
	.byte	0x9
	.4byte	0x10df
	.uleb128 0xe
	.4byte	.LASF252
	.byte	0x1
	.byte	0xa
	.4byte	0x10b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF253
	.byte	0x1
	.byte	0xb
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF254
	.byte	0x1
	.byte	0xc
	.4byte	0x10b6
	.uleb128 0x10
	.4byte	.LASF255
	.byte	0x1
	.byte	0x1
	.byte	0xe
	.4byte	0x110f
	.uleb128 0x7
	.4byte	.LASF256
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF257
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF258
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF259
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF260
	.byte	0x1
	.byte	0x13
	.4byte	0x10ea
	.uleb128 0x26
	.4byte	.LASF310
	.byte	0x2
	.byte	0x1f
	.byte	0x1
	.4byte	0xf4
	.byte	0x3
	.4byte	0x1149
	.uleb128 0x27
	.4byte	.LASF261
	.byte	0x2
	.byte	0x1f
	.4byte	0x1149
	.uleb128 0x28
	.ascii	"x\000"
	.byte	0x2
	.byte	0x1f
	.4byte	0xd4
	.uleb128 0x28
	.ascii	"y\000"
	.byte	0x2
	.byte	0x1f
	.4byte	0xd4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x114f
	.uleb128 0xc
	.4byte	0x4ee
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF276
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.4byte	0x118
	.byte	0x1
	.4byte	0x117d
	.uleb128 0x27
	.4byte	.LASF46
	.byte	0x1
	.byte	0x48
	.4byte	0xbe
	.uleb128 0x2a
	.4byte	.LASF265
	.byte	0x1
	.byte	0x4a
	.4byte	0x118
	.byte	0x0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF262
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.4byte	.LFB169
	.4byte	.LFE169
	.byte	0x1
	.byte	0x5d
	.4byte	0x11a2
	.uleb128 0x2c
	.4byte	.LASF238
	.byte	0x1
	.byte	0x2e
	.4byte	0x109a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF263
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	.LFB170
	.4byte	.LFE170
	.byte	0x1
	.byte	0x5d
	.4byte	0x11c7
	.uleb128 0x2c
	.4byte	.LASF238
	.byte	0x1
	.byte	0x35
	.4byte	0x109a
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF271
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB171
	.4byte	.LFE171
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF264
	.byte	0x1
	.byte	0x42
	.4byte	0x10b0
	.4byte	.LFB172
	.4byte	.LFE172
	.byte	0x1
	.byte	0x5d
	.4byte	0x11ff
	.uleb128 0x2a
	.4byte	.LASF266
	.byte	0x1
	.byte	0x44
	.4byte	0x11ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x10df
	.uleb128 0x2f
	.4byte	0x1154
	.4byte	.LFB173
	.4byte	.LFE173
	.byte	0x1
	.byte	0x5d
	.4byte	0x1227
	.uleb128 0x30
	.4byte	0x1166
	.4byte	.LLST5
	.uleb128 0x31
	.4byte	0x1171
	.byte	0x0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF273
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.4byte	0x10b0
	.4byte	.LFB174
	.4byte	.LFE174
	.4byte	.LLST6
	.4byte	0x12a7
	.uleb128 0x33
	.4byte	.LASF228
	.byte	0x1
	.byte	0x50
	.4byte	0xd4
	.4byte	.LLST7
	.uleb128 0x2c
	.4byte	.LASF229
	.byte	0x1
	.byte	0x50
	.4byte	0xd4
	.byte	0x1
	.byte	0x51
	.uleb128 0x2a
	.4byte	.LASF266
	.byte	0x1
	.byte	0x52
	.4byte	0x11ff
	.uleb128 0x34
	.4byte	.LASF239
	.byte	0x1
	.byte	0x53
	.4byte	0x10b0
	.4byte	.LLST8
	.uleb128 0x35
	.4byte	.LASF267
	.byte	0x1
	.byte	0x54
	.4byte	0x10b0
	.byte	0x1
	.byte	0x52
	.uleb128 0x36
	.4byte	0x111a
	.4byte	.LBB6
	.4byte	.LBE6
	.byte	0x1
	.byte	0x57
	.uleb128 0x37
	.4byte	0x113f
	.uleb128 0x37
	.4byte	0x1136
	.uleb128 0x37
	.4byte	0x112b
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.4byte	.LASF311
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.4byte	.LFB175
	.4byte	.LFE175
	.4byte	.LLST9
	.4byte	0x12fa
	.uleb128 0x33
	.4byte	.LASF268
	.byte	0x1
	.byte	0x63
	.4byte	0x10b0
	.4byte	.LLST10
	.uleb128 0x39
	.ascii	"e\000"
	.byte	0x1
	.byte	0x63
	.4byte	0xecd
	.4byte	.LLST11
	.uleb128 0x39
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x63
	.4byte	0x118
	.4byte	.LLST12
	.uleb128 0x34
	.4byte	.LASF269
	.byte	0x1
	.byte	0x65
	.4byte	0x10b0
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF270
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	.LFB176
	.4byte	.LFE176
	.4byte	.LLST14
	.4byte	0x134a
	.uleb128 0x39
	.ascii	"e\000"
	.byte	0x1
	.byte	0x6d
	.4byte	0xecd
	.4byte	.LLST15
	.uleb128 0x39
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x6d
	.4byte	0x118
	.4byte	.LLST16
	.uleb128 0x2a
	.4byte	.LASF266
	.byte	0x1
	.byte	0x6f
	.4byte	0x11ff
	.uleb128 0x34
	.4byte	.LASF268
	.byte	0x1
	.byte	0x70
	.4byte	0x10b0
	.4byte	.LLST17
	.byte	0x0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF272
	.byte	0x1
	.byte	0x76
	.4byte	.LFB177
	.4byte	.LFE177
	.4byte	.LLST18
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x111
	.byte	0x1
	.4byte	0x10b0
	.4byte	.LFB180
	.4byte	.LFE180
	.4byte	.LLST19
	.4byte	0x13de
	.uleb128 0x3d
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x111
	.4byte	0x109a
	.4byte	.LLST20
	.uleb128 0x3d
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x111
	.4byte	0x10b0
	.4byte	.LLST21
	.uleb128 0x3d
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x112
	.4byte	0x1149
	.4byte	.LLST22
	.uleb128 0x3e
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x114
	.4byte	0x10b0
	.4byte	.LLST23
	.uleb128 0x3f
	.4byte	0x1154
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x114
	.uleb128 0x37
	.4byte	0x1218
	.uleb128 0x40
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x31
	.4byte	0x1171
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x129
	.byte	0x1
	.4byte	0x10b0
	.4byte	.LFB181
	.4byte	.LFE181
	.4byte	.LLST24
	.4byte	0x143d
	.uleb128 0x3d
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x129
	.4byte	0x109a
	.4byte	.LLST25
	.uleb128 0x3d
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x129
	.4byte	0x10b0
	.4byte	.LLST26
	.uleb128 0x3d
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x12a
	.4byte	0x1149
	.4byte	.LLST27
	.uleb128 0x3e
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x12c
	.4byte	0x10b0
	.4byte	.LLST28
	.byte	0x0
	.uleb128 0x41
	.4byte	.LASF312
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.4byte	0x1455
	.uleb128 0x2a
	.4byte	.LASF266
	.byte	0x1
	.byte	0x7d
	.4byte	0x11ff
	.byte	0x0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF277
	.byte	0x1
	.byte	0xaa
	.4byte	.LFB179
	.4byte	.LFE179
	.4byte	.LLST29
	.4byte	0x15e8
	.uleb128 0x35
	.4byte	.LASF278
	.byte	0x1
	.byte	0xac
	.4byte	0x10b0
	.byte	0x5
	.byte	0x3
	.4byte	pTouchDownObj.7286
	.uleb128 0x35
	.4byte	.LASF279
	.byte	0x1
	.byte	0xad
	.4byte	0x15e8
	.byte	0x5
	.byte	0x3
	.4byte	keyTime.7287
	.uleb128 0x43
	.ascii	"ret\000"
	.byte	0x1
	.byte	0xae
	.4byte	0xef1
	.uleb128 0x34
	.4byte	.LASF280
	.byte	0x1
	.byte	0xaf
	.4byte	0x10b0
	.4byte	.LLST30
	.uleb128 0x34
	.4byte	.LASF267
	.byte	0x1
	.byte	0xb0
	.4byte	0x10b0
	.4byte	.LLST31
	.uleb128 0x35
	.4byte	.LASF281
	.byte	0x1
	.byte	0xb1
	.4byte	0x189
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.4byte	.LASF282
	.byte	0x1
	.byte	0xb2
	.4byte	0xbe
	.4byte	.LLST32
	.uleb128 0x34
	.4byte	.LASF283
	.byte	0x1
	.byte	0xb3
	.4byte	0xbe
	.4byte	.LLST33
	.uleb128 0x35
	.4byte	.LASF284
	.byte	0x1
	.byte	0xb4
	.4byte	0xbe
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x35
	.4byte	.LASF285
	.byte	0x1
	.byte	0xb5
	.4byte	0xd4
	.byte	0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x35
	.4byte	.LASF286
	.byte	0x1
	.byte	0xb6
	.4byte	0xd4
	.byte	0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x44
	.ascii	"i\000"
	.byte	0x1
	.byte	0xb7
	.4byte	0xd4
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x45
	.4byte	0x143d
	.4byte	.LBB26
	.4byte	.LBE26
	.byte	0x1
	.byte	0xbc
	.4byte	0x1541
	.uleb128 0x46
	.4byte	.LBB27
	.4byte	.LBE27
	.uleb128 0x47
	.4byte	0x1449
	.4byte	.LLST34
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	0x155d
	.uleb128 0x35
	.4byte	.LASF287
	.byte	0x1
	.byte	0xda
	.4byte	0xf30
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x48
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0x1579
	.uleb128 0x35
	.4byte	.LASF288
	.byte	0x1
	.byte	0xeb
	.4byte	0xf3b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x48
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0x1595
	.uleb128 0x35
	.4byte	.LASF289
	.byte	0x1
	.byte	0xf1
	.4byte	0xefc
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x48
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0x15b1
	.uleb128 0x35
	.4byte	.LASF287
	.byte	0x1
	.byte	0xfc
	.4byte	0xf6c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x48
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	0x15ce
	.uleb128 0x49
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x101
	.4byte	0xf77
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x46
	.4byte	.LBB33
	.4byte	.LBE33
	.uleb128 0x49
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x106
	.4byte	0xf46
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.4byte	0xd4
	.4byte	0x15f8
	.uleb128 0x1a
	.4byte	0x107
	.byte	0xf
	.byte	0x0
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF290
	.byte	0x1
	.byte	0x1f
	.4byte	.LFB168
	.4byte	.LFE168
	.4byte	.LLST35
	.4byte	0x161a
	.uleb128 0x43
	.ascii	"i\000"
	.byte	0x1
	.byte	0x21
	.4byte	0xd4
	.byte	0x0
	.uleb128 0x4a
	.4byte	.LASF291
	.byte	0x8
	.2byte	0x12e
	.4byte	0x1626
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3b7
	.uleb128 0x35
	.4byte	.LASF292
	.byte	0x1
	.byte	0x16
	.4byte	0x114f
	.byte	0x5
	.byte	0x3
	.4byte	g_guiBounds
	.uleb128 0x15
	.4byte	0xa9
	.4byte	0x164e
	.uleb128 0x16
	.4byte	0x107
	.2byte	0x3fff
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF293
	.byte	0x1
	.byte	0x17
	.4byte	0x163d
	.byte	0x5
	.byte	0x3
	.4byte	g_heap
	.uleb128 0x35
	.4byte	.LASF294
	.byte	0x1
	.byte	0x18
	.4byte	0xbe
	.byte	0x5
	.byte	0x3
	.4byte	g_heapPos
	.uleb128 0x15
	.4byte	0x10df
	.4byte	0x1680
	.uleb128 0x1a
	.4byte	0x107
	.byte	0x3
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF295
	.byte	0x1
	.byte	0x19
	.4byte	0x1670
	.byte	0x5
	.byte	0x3
	.4byte	g_stack
	.uleb128 0x35
	.4byte	.LASF296
	.byte	0x1
	.byte	0x1a
	.4byte	0xbe
	.byte	0x5
	.byte	0x3
	.4byte	g_stackPos
	.uleb128 0x35
	.4byte	.LASF297
	.byte	0x1
	.byte	0x1c
	.4byte	0x109a
	.byte	0x5
	.byte	0x3
	.4byte	g_layoutType
	.uleb128 0x35
	.4byte	.LASF298
	.byte	0x1
	.byte	0x1d
	.4byte	0x110f
	.byte	0x5
	.byte	0x3
	.4byte	g_command
	.uleb128 0x4b
	.4byte	.LASF299
	.byte	0x11
	.byte	0x56
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.4byte	.LASF300
	.byte	0x11
	.byte	0x57
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x16ee
	.4byte	0x16ee
	.uleb128 0x1a
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x16f4
	.uleb128 0x4c
	.4byte	0x57
	.uleb128 0x4d
	.4byte	.LASF301
	.byte	0x6
	.2byte	0x19c
	.4byte	0x16de
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x2a2
	.4byte	0x1717
	.uleb128 0x1a
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x4d
	.4byte	.LASF302
	.byte	0x6
	.2byte	0x19f
	.4byte	0x1707
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.4byte	.LASF303
	.byte	0x8
	.2byte	0x12b
	.4byte	0x3b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x4e
	.4byte	.LASF304
	.byte	0xe
	.2byte	0x149
	.4byte	0x1742
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe60
	.uleb128 0x4d
	.4byte	.LASF305
	.byte	0xe
	.2byte	0x14d
	.4byte	0xe60
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x13
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
	.uleb128 0x18
	.uleb128 0x17
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
	.uleb128 0x19
	.uleb128 0xd
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x49
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x5
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x47
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.4byte	0x101
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1757
	.4byte	0x117d
	.ascii	"guiFramePush_r\000"
	.4byte	0x11a2
	.ascii	"guiFrameNew_r\000"
	.4byte	0x11c7
	.ascii	"guiFramePop\000"
	.4byte	0x11d9
	.ascii	"guiGetRoot\000"
	.4byte	0x1205
	.ascii	"guiHeapAlloc\000"
	.4byte	0x1227
	.ascii	"guiFindObjectAt\000"
	.4byte	0x12fa
	.ascii	"guiBroadcastEvent\000"
	.4byte	0x134a
	.ascii	"guiSystemRender\000"
	.4byte	0x135e
	.ascii	"guiObjAllocChild_r\000"
	.4byte	0x13de
	.ascii	"guiObjCreateChild_r\000"
	.4byte	0x1455
	.ascii	"guiSystemProcess\000"
	.4byte	0x15f8
	.ascii	"guiSystemInit\000"
	.4byte	0x1733
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
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF59:
	.ascii	"clearColor\000"
.LASF91:
	.ascii	"checkpc\000"
.LASF95:
	.ascii	"write8\000"
.LASF183:
	.ascii	"ctrl1Reg\000"
.LASF162:
	.ascii	"spriteMask\000"
.LASF221:
	.ascii	"GUIEVENT_SELECTED\000"
.LASF185:
	.ascii	"ctrl3Reg\000"
.LASF230:
	.ascii	"TGUIEVENT_TOUCHDOWNArg\000"
.LASF100:
	.ascii	"fetch32\000"
.LASF291:
	.ascii	"glGlob\000"
.LASF170:
	.ascii	"cpuClocksPerScanline\000"
.LASF77:
	.ascii	"OBJSIZE_64\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF204:
	.ascii	"cpuWrite32Table\000"
.LASF270:
	.ascii	"guiBroadcastEvent\000"
.LASF203:
	.ascii	"cpuWrite16Table\000"
.LASF12:
	.ascii	"uint32\000"
.LASF89:
	.ascii	"cycles\000"
.LASF54:
	.ascii	"GL_MODELVIEW\000"
.LASF23:
	.ascii	"touchPosition\000"
.LASF213:
	.ascii	"GUIEVENT_PROCESS\000"
.LASF279:
	.ascii	"keyTime\000"
.LASF276:
	.ascii	"guiHeapAlloc\000"
.LASF224:
	.ascii	"GUIEVENTRET_HANDLED\000"
.LASF80:
	.ascii	"_TPoint\000"
.LASF55:
	.ascii	"GL_TEXTURE\000"
.LASF192:
	.ascii	"paletteRamLatch\000"
.LASF47:
	.ascii	"type\000"
.LASF197:
	.ascii	"varEnd\000"
.LASF109:
	.ascii	"TWrite8Func\000"
.LASF92:
	.ascii	"read8\000"
.LASF78:
	.ascii	"OBJCOLOR_16\000"
.LASF96:
	.ascii	"write16\000"
.LASF121:
	.ascii	"TNeoADPCMBStream\000"
.LASF106:
	.ascii	"TRead8Func\000"
.LASF65:
	.ascii	"nameCount\000"
.LASF304:
	.ascii	"g_neo\000"
.LASF201:
	.ascii	"cpuRead32Table\000"
.LASF56:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF225:
	.ascii	"GUIEVENTRET_NOTHANDLED\000"
.LASF19:
	.ascii	"long int\000"
.LASF250:
	.ascii	"TGuiObject\000"
.LASF98:
	.ascii	"fetch8\000"
.LASF141:
	.ascii	"pRom1\000"
.LASF195:
	.ascii	"keyGrid\000"
.LASF258:
	.ascii	"GUICOMMAND_POP\000"
.LASF277:
	.ascii	"guiSystemProcess\000"
.LASF97:
	.ascii	"write32\000"
.LASF247:
	.ascii	"_TGuiObjectFlags\000"
.LASF67:
	.ascii	"OBJMODE_BLENDED\000"
.LASF198:
	.ascii	"_TNeoContext\000"
.LASF311:
	.ascii	"guiSendEventRecursive\000"
.LASF282:
	.ascii	"keyRepeat\000"
.LASF101:
	.ascii	"IrqCallback\000"
.LASF112:
	.ascii	"TCheckPcFunc\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF219:
	.ascii	"GUIEVENT_KEYUP\000"
.LASF175:
	.ascii	"romBankAddress\000"
.LASF115:
	.ascii	"step\000"
.LASF139:
	.ascii	"adpcmActive\000"
.LASF130:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF202:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF167:
	.ascii	"tileScaleX\000"
.LASF168:
	.ascii	"tileScaleY\000"
.LASF172:
	.ascii	"watchdogCounter\000"
.LASF132:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF240:
	.ascii	"pChildren\000"
.LASF159:
	.ascii	"vramBaseMask\000"
.LASF292:
	.ascii	"g_guiBounds\000"
.LASF135:
	.ascii	"spriteCount\000"
.LASF254:
	.ascii	"TGuiFrameEntry\000"
.LASF251:
	.ascii	"_TGuiFrameEntry\000"
.LASF103:
	.ascii	"UnrecognizedCallback\000"
.LASF263:
	.ascii	"guiFrameNew_r\000"
.LASF242:
	.ascii	"handler\000"
.LASF36:
	.ascii	"KEY_TOUCH\000"
.LASF264:
	.ascii	"guiGetRoot\000"
.LASF149:
	.ascii	"bankTable\000"
.LASF256:
	.ascii	"GUICOMMAND_NONE\000"
.LASF18:
	.ascii	"char\000"
.LASF38:
	.ascii	"BgState\000"
.LASF84:
	.ascii	"unused\000"
.LASF278:
	.ascii	"pTouchDownObj\000"
.LASF189:
	.ascii	"screenDarkLatch\000"
.LASF86:
	.ascii	"prev_pc\000"
.LASF117:
	.ascii	"_TNeoADPCMBStream\000"
.LASF301:
	.ascii	"bgControl\000"
.LASF212:
	.ascii	"GUIEVENT_DESTROY\000"
.LASF286:
	.ascii	"touchY\000"
.LASF125:
	.ascii	"NEOROM_BIOS\000"
.LASF81:
	.ascii	"TPoint\000"
.LASF85:
	.ascii	"flags\000"
.LASF161:
	.ascii	"autoAnimationCounter\000"
.LASF60:
	.ascii	"textures\000"
.LASF308:
	.ascii	"_TBounds\000"
.LASF273:
	.ascii	"guiFindObjectAt\000"
.LASF303:
	.ascii	"glGlobalData\000"
.LASF53:
	.ascii	"GL_POSITION\000"
.LASF169:
	.ascii	"cpuClockDivide\000"
.LASF157:
	.ascii	"frameCount\000"
.LASF229:
	.ascii	"yPos\000"
.LASF31:
	.ascii	"KEY_DOWN\000"
.LASF299:
	.ascii	"mosaicShadow\000"
.LASF312:
	.ascii	"guiSystemProcessCommand\000"
.LASF309:
	.ascii	"fill\000"
.LASF37:
	.ascii	"KEY_LID\000"
.LASF73:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF15:
	.ascii	"false\000"
.LASF107:
	.ascii	"TRead16Func\000"
.LASF310:
	.ascii	"boundsTest\000"
.LASF68:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF288:
	.ascii	"touchArgs\000"
.LASF298:
	.ascii	"g_command\000"
.LASF207:
	.ascii	"_TGuiEventID\000"
.LASF143:
	.ascii	"pRam\000"
.LASF49:
	.ascii	"DynamicArray\000"
.LASF27:
	.ascii	"KEY_START\000"
.LASF217:
	.ascii	"GUIEVENT_TAP\000"
.LASF82:
	.ascii	"TBounds\000"
.LASF20:
	.ascii	"long unsigned int\000"
.LASF129:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF66:
	.ascii	"OBJMODE_NORMAL\000"
.LASF71:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF208:
	.ascii	"GUIEVENT_NULL\000"
.LASF200:
	.ascii	"cpuRead16Table\000"
.LASF181:
	.ascii	"displayControlMask\000"
.LASF211:
	.ascii	"GUIEVENT_CREATE\000"
.LASF105:
	.ascii	"TCycloneContext\000"
.LASF126:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF268:
	.ascii	"this\000"
.LASF193:
	.ascii	"active\000"
.LASF164:
	.ascii	"pTileBuffer\000"
.LASF235:
	.ascii	"TGUIEVENT_KEYUPArg\000"
.LASF83:
	.ascii	"Cyclone\000"
.LASF243:
	.ascii	"bounds\000"
.LASF259:
	.ascii	"GUICOMMAND_NEW\000"
.LASF142:
	.ascii	"pBios\000"
.LASF261:
	.ascii	"pBounds\000"
.LASF39:
	.ascii	"angle\000"
.LASF188:
	.ascii	"irqVectorLatch\000"
.LASF163:
	.ascii	"paletteDirty\000"
.LASF58:
	.ascii	"matrixMode\000"
.LASF215:
	.ascii	"GUIEVENT_TOUCHDOWN\000"
.LASF246:
	.ascii	"TGuiTypeHeader\000"
.LASF205:
	.ascii	"cpuCheckPcTable\000"
.LASF63:
	.ascii	"nextBlock\000"
.LASF210:
	.ascii	"GUIEVENT_DISABLE\000"
.LASF244:
	.ascii	"_TGuiTypeHeader\000"
.LASF287:
	.ascii	"args\000"
.LASF241:
	.ascii	"pNextChild\000"
.LASF21:
	.ascii	"rawx\000"
.LASF22:
	.ascii	"rawy\000"
.LASF155:
	.ascii	"smaRand\000"
.LASF113:
	.ascii	"_TNeoADPCMStream\000"
.LASF111:
	.ascii	"TWrite32Func\000"
.LASF306:
	.ascii	"GNU C 4.4.3\000"
.LASF294:
	.ascii	"g_heapPos\000"
.LASF233:
	.ascii	"keys\000"
.LASF10:
	.ascii	"long long int\000"
.LASF52:
	.ascii	"GL_PROJECTION\000"
.LASF187:
	.ascii	"coinReg\000"
.LASF133:
	.ascii	"NEOROM_COUNT\000"
.LASF118:
	.ascii	"initOffset\000"
.LASF289:
	.ascii	"tapArgs\000"
.LASF302:
	.ascii	"bgState\000"
.LASF44:
	.ascii	"scrollX\000"
.LASF45:
	.ascii	"scrollY\000"
.LASF184:
	.ascii	"ctrl2Reg\000"
.LASF14:
	.ascii	"double\000"
.LASF283:
	.ascii	"keyDown\000"
.LASF104:
	.ascii	"internal\000"
.LASF296:
	.ascii	"g_stackPos\000"
.LASF209:
	.ascii	"GUIEVENT_ENABLE\000"
.LASF186:
	.ascii	"ctrl4Reg\000"
.LASF30:
	.ascii	"KEY_UP\000"
.LASF150:
	.ascii	"smaAddr0\000"
.LASF151:
	.ascii	"smaAddr1\000"
.LASF160:
	.ascii	"displayCounter\000"
.LASF120:
	.ascii	"frequency\000"
.LASF239:
	.ascii	"pParent\000"
.LASF13:
	.ascii	"float\000"
.LASF145:
	.ascii	"pCard\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF72:
	.ascii	"OBJSHAPE_TALL\000"
.LASF255:
	.ascii	"_TGuiSystemCommand\000"
.LASF180:
	.ascii	"displayControl\000"
.LASF220:
	.ascii	"GUIEVENT_KEYREPEAT\000"
.LASF158:
	.ascii	"pVramBase\000"
.LASF182:
	.ascii	"displayCounterLoad\000"
.LASF79:
	.ascii	"OBJCOLOR_256\000"
.LASF218:
	.ascii	"GUIEVENT_KEYDOWN\000"
.LASF114:
	.ascii	"offset\000"
.LASF127:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF307:
	.ascii	"C:/Users/GRX/NeoDS/arm9/source/guiBase.c\000"
.LASF140:
	.ascii	"pRom0\000"
.LASF122:
	.ascii	"KEYPAD_BITS\000"
.LASF285:
	.ascii	"touchX\000"
.LASF165:
	.ascii	"tileOffsetX\000"
.LASF166:
	.ascii	"tileOffsetY\000"
.LASF17:
	.ascii	"bool\000"
.LASF124:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF62:
	.ascii	"activeTexture\000"
.LASF178:
	.ascii	"vramOffset\000"
.LASF93:
	.ascii	"read16\000"
.LASF257:
	.ascii	"GUICOMMAND_PUSH\000"
.LASF123:
	.ascii	"_TNeoRomRegion\000"
.LASF191:
	.ascii	"sramProtectLatch\000"
.LASF26:
	.ascii	"KEY_SELECT\000"
.LASF305:
	.ascii	"g_neoContext\000"
.LASF206:
	.ascii	"TNeoContext\000"
.LASF295:
	.ascii	"g_stack\000"
.LASF90:
	.ascii	"membase\000"
.LASF119:
	.ascii	"freqCounter\000"
.LASF297:
	.ascii	"g_layoutType\000"
.LASF69:
	.ascii	"OBJMODE_BITMAP\000"
.LASF284:
	.ascii	"keyUp\000"
.LASF156:
	.ascii	"scanline\000"
.LASF46:
	.ascii	"size\000"
.LASF148:
	.ascii	"pPalette\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF262:
	.ascii	"guiFramePush_r\000"
.LASF94:
	.ascii	"read32\000"
.LASF252:
	.ascii	"pRoot\000"
.LASF260:
	.ascii	"TGuiSystemCommand\000"
.LASF194:
	.ascii	"debug\000"
.LASF131:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF110:
	.ascii	"TWrite16Func\000"
.LASF51:
	.ascii	"cur_size\000"
.LASF223:
	.ascii	"_TGuiEventReturn\000"
.LASF199:
	.ascii	"cpuRead8Table\000"
.LASF236:
	.ascii	"TGuiEventHandler\000"
.LASF227:
	.ascii	"TGUIEVENT_TAPArg\000"
.LASF138:
	.ascii	"adpcmb\000"
.LASF238:
	.ascii	"pType\000"
.LASF147:
	.ascii	"pSpriteRam\000"
.LASF153:
	.ascii	"smaBankoffset\000"
.LASF174:
	.ascii	"fixedBank\000"
.LASF275:
	.ascii	"guiObjCreateChild_r\000"
.LASF74:
	.ascii	"OBJSIZE_8\000"
.LASF237:
	.ascii	"_TGuiObject\000"
.LASF232:
	.ascii	"TGUIEVENT_KEYREPEATArg\000"
.LASF88:
	.ascii	"state_flags\000"
.LASF245:
	.ascii	"szName\000"
.LASF249:
	.ascii	"GUIOBJ_RENDERCLEAR\000"
.LASF177:
	.ascii	"sramProtection\000"
.LASF29:
	.ascii	"KEY_LEFT\000"
.LASF253:
	.ascii	"heapPos\000"
.LASF144:
	.ascii	"pSram\000"
.LASF4:
	.ascii	"short int\000"
.LASF196:
	.ascii	"frameCounter\000"
.LASF228:
	.ascii	"xPos\000"
.LASF216:
	.ascii	"GUIEVENT_TOUCHUP\000"
.LASF267:
	.ascii	"pObj\000"
.LASF64:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF102:
	.ascii	"ResetCallback\000"
.LASF16:
	.ascii	"true\000"
.LASF293:
	.ascii	"g_heap\000"
.LASF61:
	.ascii	"texturePtrs\000"
.LASF271:
	.ascii	"guiFramePop\000"
.LASF269:
	.ascii	"pChild\000"
.LASF222:
	.ascii	"TGuiEventID\000"
.LASF281:
	.ascii	"touch\000"
.LASF146:
	.ascii	"pVram\000"
.LASF266:
	.ascii	"pFrame\000"
.LASF75:
	.ascii	"OBJSIZE_16\000"
.LASF171:
	.ascii	"irqPending\000"
.LASF272:
	.ascii	"guiSystemRender\000"
.LASF40:
	.ascii	"centerX\000"
.LASF41:
	.ascii	"centerY\000"
.LASF108:
	.ascii	"TRead32Func\000"
.LASF290:
	.ascii	"guiSystemInit\000"
.LASF28:
	.ascii	"KEY_RIGHT\000"
.LASF24:
	.ascii	"KEY_A\000"
.LASF25:
	.ascii	"KEY_B\000"
.LASF33:
	.ascii	"KEY_L\000"
.LASF274:
	.ascii	"guiObjAllocChild_r\000"
.LASF32:
	.ascii	"KEY_R\000"
.LASF34:
	.ascii	"KEY_X\000"
.LASF35:
	.ascii	"KEY_Y\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF42:
	.ascii	"scaleX\000"
.LASF43:
	.ascii	"scaleY\000"
.LASF234:
	.ascii	"TGUIEVENT_KEYDOWNArg\000"
.LASF87:
	.ascii	"reserved\000"
.LASF226:
	.ascii	"TGuiEventReturn\000"
.LASF137:
	.ascii	"adpcm\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF57:
	.ascii	"gl_hidden_globals\000"
.LASF76:
	.ascii	"OBJSIZE_32\000"
.LASF300:
	.ascii	"mosaicShadowSub\000"
.LASF134:
	.ascii	"pVideoWriteTable\000"
.LASF231:
	.ascii	"TGUIEVENT_TOUCHUPArg\000"
.LASF173:
	.ascii	"paletteBank\000"
.LASF48:
	.ascii	"dirty\000"
.LASF152:
	.ascii	"smaBankAddr\000"
.LASF99:
	.ascii	"fetch16\000"
.LASF214:
	.ascii	"GUIEVENT_RENDER\000"
.LASF70:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF265:
	.ascii	"pData\000"
.LASF154:
	.ascii	"smaBankbit\000"
.LASF128:
	.ascii	"NEOROM_AUDODATA\000"
.LASF50:
	.ascii	"data\000"
.LASF190:
	.ascii	"fixedRomLatch\000"
.LASF176:
	.ascii	"sramProtectCount\000"
.LASF248:
	.ascii	"GUIOBJ_RENDERDIRTY\000"
.LASF136:
	.ascii	"romBankCount\000"
.LASF116:
	.ascii	"TNeoADPCMStream\000"
.LASF280:
	.ascii	"pTouchObj\000"
.LASF179:
	.ascii	"vramMod\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
