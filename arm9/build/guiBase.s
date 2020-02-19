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
	.code 16
	.thumb_func
	.type	guiFramePush_r, %function
guiFramePush_r:
.LFB110:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiBase.c"
	.loc 1 47 0
.LVL0:
	.loc 1 49 0
	ldr	r3, .L3
	.loc 1 50 0
	ldr	r2, .L3+4
	.loc 1 49 0
	str	r0, [r3]
	.loc 1 50 0
	mov	r3, #1
	.loc 1 47 0
	@ lr needed for prologue
	.loc 1 50 0
	strb	r3, [r2]
	.loc 1 51 0
	@ sp needed for prologue
	bx	lr
.L4:
	.align	2
.L3:
	.word	g_layoutType
	.word	g_command
.LFE110:
	.size	guiFramePush_r, .-guiFramePush_r
	.align	2
	.global	guiFrameNew_r
	.code 16
	.thumb_func
	.type	guiFrameNew_r, %function
guiFrameNew_r:
.LFB111:
	.loc 1 54 0
.LVL1:
	.loc 1 56 0
	ldr	r3, .L7
	.loc 1 57 0
	ldr	r2, .L7+4
	.loc 1 56 0
	str	r0, [r3]
	.loc 1 57 0
	mov	r3, #3
	.loc 1 54 0
	@ lr needed for prologue
	.loc 1 57 0
	strb	r3, [r2]
	.loc 1 58 0
	@ sp needed for prologue
	bx	lr
.L8:
	.align	2
.L7:
	.word	g_layoutType
	.word	g_command
.LFE111:
	.size	guiFrameNew_r, .-guiFrameNew_r
	.align	2
	.global	guiFramePop
	.code 16
	.thumb_func
	.type	guiFramePop, %function
guiFramePop:
.LFB112:
	.loc 1 61 0
	.loc 1 63 0
	ldr	r2, .L11
	mov	r3, #2
	.loc 1 61 0
	@ lr needed for prologue
	.loc 1 63 0
	strb	r3, [r2]
	.loc 1 64 0
	@ sp needed for prologue
	bx	lr
.L12:
	.align	2
.L11:
	.word	g_command
.LFE112:
	.size	guiFramePop, .-guiFramePop
	.align	2
	.global	guiGetRoot
	.code 16
	.thumb_func
	.type	guiGetRoot, %function
guiGetRoot:
.LFB113:
	.loc 1 67 0
	ldr	r3, .L15
	ldr	r2, .L15+4
	ldr	r3, [r3]
	@ lr needed for prologue
	.loc 1 67 0
	lsl	r3, r3, #3
	ldr	r0, [r3, r2]
	.loc 1 70 0
	@ sp needed for prologue
	bx	lr
.L16:
	.align	2
.L15:
	.word	g_stackPos
	.word	g_stack
.LFE113:
	.size	guiGetRoot, .-guiGetRoot
	.align	2
	.global	guiHeapAlloc
	.code 16
	.thumb_func
	.type	guiHeapAlloc, %function
guiHeapAlloc:
.LFB114:
	.loc 1 73 0
.LVL2:
	.loc 1 74 0
	ldr	r1, .L19
	.loc 1 75 0
	mov	r3, #3
	add	r0, r0, #3
.LVL3:
	.loc 1 74 0
	ldr	r2, [r1]
	.loc 1 75 0
	bic	r0, r0, r3
	ldr	r3, .L19+4
	add	r0, r2, r0
	add	r2, r2, r3
	str	r0, [r1]
	.loc 1 78 0
	mov	r0, r2
	.loc 1 73 0
	@ lr needed for prologue
	.loc 1 78 0
	@ sp needed for prologue
	bx	lr
.L20:
	.align	2
.L19:
	.word	g_heapPos
	.word	g_heap
.LFE114:
	.size	guiHeapAlloc, .-guiHeapAlloc
	.align	2
	.global	guiFindObjectAt
	.code 16
	.thumb_func
	.type	guiFindObjectAt, %function
guiFindObjectAt:
.LFB115:
	.loc 1 81 0
	push	{r4, r5, r6, lr}
.LCFI0:
.LVL4:
	.loc 1 84 0
	ldr	r3, .L39
	ldr	r2, .L39+4
	ldr	r3, [r3]
	.loc 1 81 0
	mov	r4, r0
	.loc 1 84 0
	lsl	r3, r3, #3
	ldr	r3, [r3, r2]
	.loc 1 81 0
	mov	r0, r1
.LVL5:
	.loc 1 84 0
	ldr	r2, [r3, #8]
.LVL6:
	mov	r6, #0
.LVL7:
	b	.L38
.LVL8:
.L23:
.LBB4:
.LBB5:
	.file 2 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/Default.h"
	.loc 2 33 0
	ldr	r5, [r2, #24]
.LBE5:
.LBE4:
	.loc 1 86 0
	mov	r1, r2
	add	r1, r1, #24
.LBB6:
.LBB7:
	.loc 2 33 0
	cmp	r4, r5
	blt	.L24
	ldr	r3, [r1, #4]
	cmp	r0, r3
	blt	.L24
	ldr	r3, [r1, #8]
	cmp	r4, r3
	bgt	.L24
	ldr	r3, [r1, #12]
	cmp	r0, r3
	bgt	.L24
.LBE7:
.LBE6:
	.loc 1 90 0
	ldr	r3, [r2, #28]
	.loc 1 91 0
	mov	r6, r2
	ldr	r2, [r2, #8]
	.loc 1 89 0
	sub	r4, r4, r5
	.loc 1 90 0
	sub	r0, r0, r3
.LVL9:
.L38:
	.loc 1 86 0
	cmp	r2, #0
	bne	.L23
	b	.L35
.LVL10:
.L24:
	.loc 1 93 0
	ldr	r2, [r2, #12]
	b	.L38
.LVL11:
.L35:
	.loc 1 97 0
	mov	r0, r6
.LVL12:
	@ sp needed for prologue
.LVL13:
.LVL14:
	pop	{r4, r5, r6, pc}
.L40:
	.align	2
.L39:
	.word	g_stackPos
	.word	g_stack
.LFE115:
	.size	guiFindObjectAt, .-guiFindObjectAt
	.align	2
	.code 16
	.thumb_func
	.type	guiSendEventRecursive, %function
guiSendEventRecursive:
.LFB116:
	.loc 1 100 0
	push	{r4, r5, r6, lr}
.LCFI1:
.LVL15:
	.loc 1 100 0
	mov	r6, r1
	mov	r5, r2
	.loc 1 101 0
	ldr	r4, [r0, #8]
.LVL16:
	.loc 1 102 0
	bl	guiObjSendEvent
.LVL17:
	b	.L42
.L43:
	.loc 1 104 0
	mov	r0, r4
	mov	r1, r6
	mov	r2, r5
	bl	guiSendEventRecursive
	.loc 1 105 0
	ldr	r4, [r4, #12]
.L42:
	.loc 1 103 0
	cmp	r4, #0
	bne	.L43
	.loc 1 107 0
	@ sp needed for prologue
.LVL18:
.LVL19:
.LVL20:
	pop	{r4, r5, r6, pc}
.LFE116:
	.size	guiSendEventRecursive, .-guiSendEventRecursive
	.align	2
	.global	guiBroadcastEvent
	.code 16
	.thumb_func
	.type	guiBroadcastEvent, %function
guiBroadcastEvent:
.LFB117:
	.loc 1 110 0
	push	{r4, r5, lr}
.LCFI2:
.LVL21:
	.loc 1 112 0
	ldr	r3, .L50
	ldr	r2, .L50+4
	ldr	r3, [r3]
	.loc 1 110 0
	mov	r4, r0
	.loc 1 112 0
	lsl	r3, r3, #3
	ldr	r0, [r3, r2]
.LVL22:
	.loc 1 110 0
	sub	sp, sp, #4
.LCFI3:
	.loc 1 110 0
	mov	r5, r1
	.loc 1 113 0
	cmp	r0, #0
	beq	.L49
.LVL23:
	.loc 1 114 0
	mov	r1, r4
	mov	r2, r5
	bl	guiSendEventRecursive
.LVL24:
.LVL25:
.L49:
	.loc 1 116 0
	add	sp, sp, #4
	@ sp needed for prologue
.LVL26:
.LVL27:
	pop	{r4, r5, pc}
.L51:
	.align	2
.L50:
	.word	g_stackPos
	.word	g_stack
.LFE117:
	.size	guiBroadcastEvent, .-guiBroadcastEvent
	.align	2
	.global	guiSystemRender
	.code 16
	.thumb_func
	.type	guiSystemRender, %function
guiSystemRender:
.LFB118:
	.loc 1 119 0
	push	{lr}
.LCFI4:
	sub	sp, sp, #4
.LCFI5:
	.loc 1 120 0
	mov	r0, #6
	mov	r1, #0
	bl	guiBroadcastEvent
	.loc 1 121 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE118:
	.size	guiSystemRender, .-guiSystemRender
	.align	2
	.global	guiObjAllocChild_r
	.code 16
	.thumb_func
	.type	guiObjAllocChild_r, %function
guiObjAllocChild_r:
.LFB121:
	.loc 1 275 0
	push	{r4, r5, r6, lr}
.LCFI6:
.LVL28:
	sub	sp, sp, #8
.LCFI7:
	.loc 1 275 0
	str	r0, [sp, #4]
	.loc 1 276 0
	ldr	r0, [r0, #8]
.LVL29:
	.loc 1 275 0
	mov	r5, r1
	mov	r6, r2
	.loc 1 276 0
	bl	guiHeapAlloc
.LVL30:
	mov	r4, r0
.LVL31:
	.loc 1 277 0
	ldr	r0, [sp, #4]
	mov	r1, #0
	ldr	r2, [r0, #8]
	mov	r0, r4
	bl	memset
	.loc 1 278 0
	cmp	r5, #0
	beq	.L55
	.loc 1 280 0
	ldr	r3, [r5, #8]
	.loc 1 281 0
	str	r4, [r5, #8]
	.loc 1 280 0
	str	r3, [r4, #12]
	b	.L57
.L55:
	.loc 1 284 0
	str	r5, [r4, #12]
.L57:
	.loc 1 289 0
	mov	r3, r4
	.loc 1 287 0
	str	r5, [r4, #4]
	.loc 1 289 0
	mov	r2, r6
	add	r3, r3, #24
	ldmia	r2!, {r0, r1, r5}
	stmia	r3!, {r0, r1, r5}
.LVL32:
	ldr	r2, [r6, #12]
	.loc 1 295 0
	mov	r0, r4
	.loc 1 289 0
	str	r2, [r3]
	.loc 1 290 0
	ldr	r1, [sp, #4]
	.loc 1 291 0
	mov	r3, #0
	str	r3, [r4, #8]
	.loc 1 295 0
	add	sp, sp, #8
	.loc 1 293 0
	mov	r3, #1
	.loc 1 290 0
	str	r1, [r4]
	.loc 1 293 0
	str	r3, [r4, #20]
	.loc 1 295 0
	@ sp needed for prologue
.LVL33:
.LVL34:
	pop	{r4, r5, r6, pc}
.LFE121:
	.size	guiObjAllocChild_r, .-guiObjAllocChild_r
	.align	2
	.global	guiObjCreateChild_r
	.code 16
	.thumb_func
	.type	guiObjCreateChild_r, %function
guiObjCreateChild_r:
.LFB122:
	.loc 1 299 0
	push	{r4, lr}
.LCFI8:
.LVL35:
	.loc 1 300 0
	bl	guiObjAllocChild_r
.LVL36:
	.loc 1 301 0
	mov	r1, #3
	mov	r2, #0
	.loc 1 300 0
	mov	r4, r0
.LVL37:
	.loc 1 301 0
	bl	guiObjSendEvent
	.loc 1 303 0
	mov	r0, r4
	@ sp needed for prologue
.LVL38:
	pop	{r4, pc}
.LFE122:
	.size	guiObjCreateChild_r, .-guiObjCreateChild_r
	.align	2
	.global	guiSystemProcess
	.code 16
	.thumb_func
	.type	guiSystemProcess, %function
guiSystemProcess:
.LFB120:
	.loc 1 171 0
	push	{r4, r5, r6, lr}
.LCFI9:
.LBB16:
.LBB17:
	.loc 1 127 0
	ldr	r3, .L109
.LBE17:
.LBE16:
	.loc 1 171 0
	sub	sp, sp, #40
.LCFI10:
.LBB18:
.LBB19:
	.loc 1 127 0
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.L64
	cmp	r3, #1
	bcc	.L63
	cmp	r3, #2
	beq	.L65
	cmp	r3, #3
	bne	.L62
	b	.L66
.L64:
	.loc 1 131 0
	bl	guiRenderClear
	.loc 1 132 0
	mov	r0, #2
	mov	r1, #0
	bl	guiBroadcastEvent
	.loc 1 133 0
	ldr	r3, .L109+4
	ldr	r4, [r3]
	add	r4, r4, #1
	str	r4, [r3]
	.loc 1 134 0
	ldr	r3, .L109+8
	lsl	r4, r4, #3
	add	r4, r4, r3
.LVL39:
	.loc 1 135 0
	ldr	r3, .L109+12
	ldr	r3, [r3]
	str	r3, [r4, #4]
	b	.L106
.LVL40:
.L65:
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
	ldr	r4, .L109+4
	.loc 1 149 0
	ldr	r2, .L109+8
	.loc 1 148 0
	ldr	r1, [r4]
	.loc 1 149 0
	ldr	r0, .L109+12
	lsl	r3, r1, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	.loc 1 150 0
	sub	r1, r1, #1
	.loc 1 149 0
	str	r3, [r0]
	.loc 1 150 0
	str	r1, [r4]
	.loc 1 151 0
	mov	r0, #1
	mov	r1, #0
	bl	guiBroadcastEvent
	b	.L62
.LVL41:
.L103:
.LBE19:
.LBE18:
.LBB20:
	.loc 1 226 0
	ldr	r3, .L109+16
	str	r4, [r3]
	b	.L88
.LVL42:
.L66:
.LBE20:
.LBB21:
.LBB22:
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
	ldr	r3, .L109+4
	.loc 1 158 0
	ldr	r2, .L109+12
	.loc 1 157 0
	ldr	r4, [r3]
	ldr	r3, .L109+8
	lsl	r4, r4, #3
	add	r4, r4, r3
.LVL43:
	.loc 1 158 0
	ldr	r3, [r4, #4]
	str	r3, [r2]
.LVL44:
.L106:
.LBE22:
	.loc 1 159 0
	ldr	r3, .L109+20
	ldr	r2, .L109+24
	ldr	r0, [r3]
	mov	r1, #0
	bl	guiObjAllocChild_r
.LBB23:
	.loc 1 161 0
	mov	r1, #3
	mov	r2, #0
.LVL45:
	.loc 1 159 0
	str	r0, [r4]
	.loc 1 161 0
	bl	guiObjSendEvent
	.loc 1 163 0
	ldr	r0, [r4]
	mov	r1, #1
	mov	r2, #0
	bl	guiObjSendEvent
.L62:
	.loc 1 166 0
	ldr	r3, .L109
	mov	r2, #0
	strb	r2, [r3]
	.loc 1 167 0
	ldr	r3, .L109+20
	str	r2, [r3]
.L63:
.LBE23:
.LBE21:
	.loc 1 192 0
	add	r4, sp, #16
.LVL46:
	.loc 1 191 0
	bl	scanKeys
	.loc 1 192 0
	mov	r0, r4
	bl	touchReadXY
	.loc 1 193 0
	mov	r2, #4
	ldrsh	r0, [r4, r2]
	cmp	r0, #0
	bge	.L67
	add	r0, r0, #7
.L67:
	asr	r0, r0, #3
	str	r0, [sp, #8]
.LVL47:
	.loc 1 194 0
	mov	r3, #6
	ldrsh	r0, [r4, r3]
	cmp	r0, #0
	bge	.L68
	add	r0, r0, #7
.L68:
	asr	r0, r0, #3
	str	r0, [sp, #12]
.LVL48:
	.loc 1 196 0
	bl	keysDown
	mov	r4, r0
.LVL49:
	.loc 1 197 0
	bl	keysDown
	str	r0, [sp]
.LVL50:
	.loc 1 198 0
	bl	keysUp
	ldr	r5, .L109+28
	str	r0, [sp, #4]
.LVL51:
	mov	r6, #0
.LVL52:
.L69:
	.loc 1 200 0
	bl	keysHeld
	mov	r3, #1
	mov	r1, r3
	lsl	r1, r1, r6
	and	r0, r1
	beq	.L70
	.loc 1 201 0
	ldr	r3, [r5]
	add	r2, r3, #1
	str	r2, [r5]
	.loc 1 202 0
	cmp	r2, #30
	ble	.L72
	mov	r3, #7
	tst	r2, r3
	beq	.L108
.L72:
	.loc 1 204 0
	cmp	r2, #90
	ble	.L76
	mov	r3, #3
	tst	r2, r3
	beq	.L108
.L76:
	.loc 1 206 0
	cmp	r2, #180
	ble	.L75
	lsl	r3, r2, #31
	bmi	.L75
.L108:
	.loc 1 207 0
	orr	r4, r4, r1
	b	.L75
.L70:
	.loc 1 210 0
	str	r0, [r5]
.L75:
	.loc 1 199 0
	add	r6, r6, #1
	add	r5, r5, #4
	cmp	r6, #16
	bne	.L69
	.loc 1 213 0
	ldr	r3, .L109+32
	mov	r6, r4
.LVL53:
	.loc 1 216 0
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	.loc 1 213 0
	and	r6, r6, r3
	.loc 1 216 0
	bl	guiFindObjectAt
	.loc 1 217 0
	ldr	r2, [sp]
	.loc 1 216 0
	mov	r5, r0
.LVL54:
	.loc 1 217 0
	lsl	r2, r2, #19
	bpl	.L82
.LBB24:
	.loc 1 220 0
	ldr	r3, [sp, #8]
	.loc 1 221 0
	ldr	r2, [sp, #12]
	mov	r4, r0
.LVL55:
	.loc 1 220 0
	str	r3, [sp, #28]
	.loc 1 221 0
	str	r2, [sp, #32]
	b	.L84
.LVL56:
.L85:
	.loc 1 224 0
	mov	r0, r4
.LVL57:
	mov	r1, #7
	add	r2, sp, #28
	bl	guiObjSendEvent
	.loc 1 225 0
	cmp	r0, #0
	bne	.LCB792
	b	.L103	@long jump
.LCB792:
	.loc 1 229 0
	ldr	r4, [r4, #4]
.LVL58:
.L84:
	.loc 1 223 0
	cmp	r4, #0
	bne	.L85
.L88:
	.loc 1 231 0
	ldr	r2, [sp]
	ldr	r3, .L109+32
	and	r2, r2, r3
	str	r2, [sp]
.LVL59:
.L82:
.LBE24:
	.loc 1 233 0
	ldr	r3, [sp, #4]
	lsl	r3, r3, #19
	bpl	.L89
	.loc 1 234 0
	ldr	r4, .L109+16
.LVL60:
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.L91
.LBB25:
	.loc 1 236 0
	ldr	r2, [sp, #8]
	.loc 1 237 0
	ldr	r3, [sp, #12]
	.loc 1 236 0
	str	r2, [sp, #28]
	.loc 1 238 0
	mov	r1, #8
	add	r2, sp, #28
	.loc 1 237 0
	str	r3, [sp, #32]
	.loc 1 238 0
	bl	guiObjSendEvent
.L91:
.LBE25:
	.loc 1 240 0
	cmp	r5, #0
	beq	.L93
	ldr	r3, [r4]
	cmp	r5, r3
	bne	.L93
.LBB26:
	.loc 1 242 0
	ldr	r2, [sp, #8]
	.loc 1 243 0
	ldr	r3, [sp, #12]
	.loc 1 242 0
	str	r2, [sp, #28]
	.loc 1 244 0
	mov	r0, r5
	mov	r1, #9
	add	r2, sp, #28
	.loc 1 243 0
	str	r3, [sp, #32]
	.loc 1 244 0
	bl	guiObjSendEvent
.L93:
.LBE26:
	.loc 1 246 0
	ldr	r3, .L109+16
	mov	r2, #0
	str	r2, [r3]
	.loc 1 247 0
	ldr	r2, [sp, #4]
	ldr	r3, .L109+32
	and	r2, r2, r3
	str	r2, [sp, #4]
.LVL61:
.L89:
	.loc 1 251 0
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L96
.LBB27:
	.loc 1 254 0
	mov	r0, #10
	add	r1, sp, #36
	.loc 1 253 0
	str	r3, [sp, #36]
	.loc 1 254 0
	bl	guiBroadcastEvent
.LVL62:
.L96:
.LBE27:
	.loc 1 256 0
	ldr	r2, [sp, #4]
	cmp	r2, #0
	beq	.L98
.LBB28:
	.loc 1 259 0
	mov	r0, #11
	add	r1, sp, #36
	.loc 1 258 0
	str	r2, [sp, #36]
	.loc 1 259 0
	bl	guiBroadcastEvent
.LVL63:
.L98:
.LBE28:
	.loc 1 261 0
	cmp	r6, #0
	beq	.L100
.LBB29:
	.loc 1 264 0
	mov	r0, #12
	add	r1, sp, #36
	.loc 1 263 0
	str	r6, [sp, #36]
	.loc 1 264 0
	bl	guiBroadcastEvent
.LVL64:
.L100:
.LBE29:
	.loc 1 268 0
	mov	r0, #5
	mov	r1, #0
	bl	guiBroadcastEvent
	.loc 1 271 0
	add	sp, sp, #40
	@ sp needed for prologue
.LVL65:
.LVL66:
.LVL67:
	pop	{r4, r5, r6, pc}
.L110:
	.align	2
.L109:
	.word	g_command
	.word	g_stackPos
	.word	g_stack
	.word	g_heapPos
	.word	pTouchDownObj.5410
	.word	g_layoutType
	.word	g_guiBounds
	.word	keyTime.5411
	.word	-4097
.LFE120:
	.size	guiSystemProcess, .-guiSystemProcess
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC26:
	.ascii	"guiSystemInit complete\000"
	.text
	.align	2
	.global	guiSystemInit
	.code 16
	.thumb_func
	.type	guiSystemInit, %function
guiSystemInit:
.LFB109:
	.loc 1 32 0
	push	{r4, lr}
.LCFI11:
	.loc 1 35 0
	ldr	r3, .L117
	mov	r2, #0
	str	r2, [r3]
	.loc 1 37 0
	ldr	r4, .L117+4
	.loc 1 36 0
	ldr	r3, .L117+8
	.loc 1 37 0
	mov	r0, r4
	.loc 1 36 0
	str	r2, [r3]
	.loc 1 37 0
	mov	r1, #0
	mov	r2, #32
	bl	memset
	mov	r2, r4
	add	r2, r2, #32
.L112:
	.loc 1 39 0
	mov	r3, #0
	str	r3, [r4]
	.loc 1 40 0
	str	r3, [r4, #4]
	add	r4, r4, #8
	.loc 1 38 0
	cmp	r4, r2
	bne	.L112
	.loc 1 42 0
	bl	guiRenderInit
	.loc 1 43 0
	ldr	r0, .L117+12
	bl	guiConsoleLog
	.loc 1 44 0
	@ sp needed for prologue
	pop	{r4, pc}
.L118:
	.align	2
.L117:
	.word	g_stackPos
	.word	g_stack
	.word	g_heapPos
	.word	.LC26
.LFE109:
	.size	guiSystemInit, .-guiSystemInit
	.bss
	.align	2
keyTime.5411:
	.space	64
	.align	2
pTouchDownObj.5410:
	.space	4
g_command:
	.space	1
	.align	2
g_stackPos:
	.space	4
	.align	2
g_heapPos:
	.space	4
	.align	2
g_layoutType:
	.space	4
	.section	.rodata
	.align	2
	.type	g_guiBounds, %object
	.size	g_guiBounds, 16
g_guiBounds:
	.word	0
	.word	0
	.word	31
	.word	23
	.bss
	.align	5
g_heap:
	.space	16384
	.align	2
g_stack:
	.space	32
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
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.byte	0x4
	.4byte	.LCFI0-.LFB115
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
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.byte	0x4
	.4byte	.LCFI1-.LFB116
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
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.byte	0x4
	.4byte	.LCFI2-.LFB117
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.byte	0x4
	.4byte	.LCFI4-.LFB118
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.byte	0x4
	.4byte	.LCFI6-.LFB121
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
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.byte	0x4
	.4byte	.LCFI8-.LFB122
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
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.byte	0x4
	.4byte	.LCFI9-.LFB120
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
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x38
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x4
	.4byte	.LCFI11-.LFB109
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE24:
	.file 3 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiObject.h"
	.file 4 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiEvent.h"
	.file 5 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 6 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 7 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 8 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.file 9 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
	.file 10 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h"
	.file 11 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h"
	.file 12 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h"
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
	.4byte	.LFB115-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB116-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB117-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB118-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB121-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LFB122-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LFB120-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	.LVL47-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LFB109-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE109-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x14bb
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF250
	.byte	0x1
	.4byte	.LASF251
	.4byte	.LASF252
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x6
	.byte	0x2e
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x6
	.byte	0x39
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x6
	.byte	0x3a
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x6
	.byte	0x53
	.4byte	0x6d
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x6
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
	.byte	0x5
	.byte	0x45
	.4byte	0x74
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x49
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x8
	.byte	0x4
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x5
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x5
	.byte	0x60
	.4byte	0x50
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x5
	.byte	0x61
	.4byte	0x74
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x5
	.byte	0x65
	.4byte	0x3e
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x5
	.byte	0x66
	.4byte	0x62
	.uleb128 0x6
	.4byte	0x155
	.4byte	.LASF18
	.byte	0xc
	.byte	0x5
	.byte	0x73
	.uleb128 0x7
	.ascii	"x\000"
	.byte	0x5
	.byte	0x74
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.ascii	"y\000"
	.byte	0x5
	.byte	0x75
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.ascii	"px\000"
	.byte	0x5
	.byte	0x76
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.ascii	"py\000"
	.byte	0x5
	.byte	0x77
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.ascii	"z1\000"
	.byte	0x5
	.byte	0x78
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.ascii	"z2\000"
	.byte	0x5
	.byte	0x79
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x7a
	.4byte	0xfc
	.uleb128 0x8
	.4byte	0x175
	.byte	0x1
	.byte	0x5
	.byte	0x81
	.uleb128 0x9
	.4byte	.LASF19
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF20
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x81
	.4byte	0x160
	.uleb128 0xa
	.byte	0x4
	.4byte	0x186
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x1
	.byte	0x8
	.uleb128 0x8
	.4byte	0x1b7
	.byte	0x1
	.byte	0x7
	.byte	0x9b
	.uleb128 0x9
	.4byte	.LASF23
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF24
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF25
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF26
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x7
	.byte	0xa0
	.4byte	0x196
	.uleb128 0xc
	.4byte	0x23a
	.2byte	0x2018
	.byte	0x7
	.2byte	0x119
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x7
	.2byte	0x11a
	.4byte	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x7
	.2byte	0x11d
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x7
	.2byte	0x120
	.4byte	0x23a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x7
	.2byte	0x121
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x7
	.2byte	0x122
	.4byte	0x24b
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x7
	.2byte	0x123
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x7
	.2byte	0x124
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.byte	0x0
	.uleb128 0xe
	.4byte	0x24b
	.4byte	0xa2
	.uleb128 0xf
	.4byte	0x188
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x7
	.2byte	0x126
	.4byte	0x1c2
	.uleb128 0x11
	.byte	0x4
	.uleb128 0xa
	.byte	0x4
	.4byte	0x265
	.uleb128 0x12
	.4byte	0x18f
	.uleb128 0x6
	.4byte	0x28f
	.4byte	.LASF36
	.byte	0x8
	.byte	0x2
	.byte	0xd
	.uleb128 0x7
	.ascii	"x\000"
	.byte	0x2
	.byte	0xe
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.ascii	"y\000"
	.byte	0x2
	.byte	0xf
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x2
	.byte	0x10
	.4byte	0x26a
	.uleb128 0x13
	.4byte	0x2d7
	.byte	0x10
	.byte	0x2
	.byte	0x13
	.uleb128 0x7
	.ascii	"x0\000"
	.byte	0x2
	.byte	0x14
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.ascii	"y0\000"
	.byte	0x2
	.byte	0x15
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.ascii	"x1\000"
	.byte	0x2
	.byte	0x16
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.ascii	"y1\000"
	.byte	0x2
	.byte	0x17
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x13
	.4byte	0x2fa
	.byte	0x10
	.byte	0x2
	.byte	0x19
	.uleb128 0x7
	.ascii	"p0\000"
	.byte	0x2
	.byte	0x1a
	.4byte	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.ascii	"p1\000"
	.byte	0x2
	.byte	0x1b
	.4byte	0x28f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x14
	.4byte	0x311
	.4byte	.LASF253
	.byte	0x10
	.byte	0x2
	.byte	0x12
	.uleb128 0x15
	.4byte	0x29a
	.uleb128 0x15
	.4byte	0x2d7
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x2
	.byte	0x1d
	.4byte	0x2fa
	.uleb128 0x6
	.4byte	0x4b2
	.4byte	.LASF39
	.byte	0xb0
	.byte	0xb
	.byte	0x15
	.uleb128 0x7
	.ascii	"d\000"
	.byte	0xb
	.byte	0x16
	.4byte	0x4b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.ascii	"a\000"
	.byte	0xb
	.byte	0x17
	.4byte	0x4b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.ascii	"pc\000"
	.byte	0xb
	.byte	0x18
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.ascii	"srh\000"
	.byte	0xb
	.byte	0x19
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0xb
	.byte	0x1a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0xb
	.byte	0x1b
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x7
	.ascii	"irq\000"
	.byte	0xb
	.byte	0x1c
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x7
	.ascii	"osp\000"
	.byte	0xb
	.byte	0x1d
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.ascii	"xc\000"
	.byte	0xb
	.byte	0x1e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x16
	.4byte	.LASF42
	.byte	0xb
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0xb
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x16
	.4byte	.LASF44
	.byte	0xb
	.byte	0x21
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x16
	.4byte	.LASF45
	.byte	0xb
	.byte	0x22
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x16
	.4byte	.LASF46
	.byte	0xb
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0xb
	.byte	0x24
	.4byte	0x4d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0xb
	.byte	0x25
	.4byte	0x4d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x16
	.4byte	.LASF49
	.byte	0xb
	.byte	0x26
	.4byte	0x4d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0xb
	.byte	0x27
	.4byte	0x4d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0xb
	.byte	0x28
	.4byte	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0xb
	.byte	0x29
	.4byte	0x500
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0xb
	.byte	0x2a
	.4byte	0x517
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0xb
	.byte	0x2b
	.4byte	0x4d2
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x16
	.4byte	.LASF55
	.byte	0xb
	.byte	0x2c
	.4byte	0x4d2
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x16
	.4byte	.LASF56
	.byte	0xb
	.byte	0x2d
	.4byte	0x4d2
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x16
	.4byte	.LASF57
	.byte	0xb
	.byte	0x2e
	.4byte	0x52d
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x16
	.4byte	.LASF58
	.byte	0xb
	.byte	0x2f
	.4byte	0x180
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0xb
	.byte	0x30
	.4byte	0x539
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0xb
	.byte	0x31
	.4byte	0x53f
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xe
	.4byte	0x4c2
	.4byte	0x9b
	.uleb128 0x17
	.4byte	0x188
	.byte	0x7
	.byte	0x0
	.uleb128 0x18
	.4byte	0x4d2
	.byte	0x1
	.4byte	0x9b
	.uleb128 0x19
	.4byte	0x9b
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x4c2
	.uleb128 0x1a
	.4byte	0x4e9
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9b
	.uleb128 0x19
	.4byte	0x37
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x4d8
	.uleb128 0x1a
	.4byte	0x500
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9b
	.uleb128 0x19
	.4byte	0x5b
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x4ef
	.uleb128 0x1a
	.4byte	0x517
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9b
	.uleb128 0x19
	.4byte	0x9b
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x506
	.uleb128 0x18
	.4byte	0x52d
	.byte	0x1
	.4byte	0x94
	.uleb128 0x19
	.4byte	0x94
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x51d
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x94
	.uleb128 0xa
	.byte	0x4
	.4byte	0x533
	.uleb128 0xe
	.4byte	0x54f
	.4byte	0x9b
	.uleb128 0x17
	.4byte	0x188
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xa
	.byte	0x6
	.4byte	0x31c
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xa
	.byte	0x8
	.4byte	0x565
	.uleb128 0xa
	.byte	0x4
	.4byte	0x56b
	.uleb128 0x18
	.4byte	0x57b
	.byte	0x1
	.4byte	0xc6
	.uleb128 0x19
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xa
	.byte	0x9
	.4byte	0x586
	.uleb128 0xa
	.byte	0x4
	.4byte	0x58c
	.uleb128 0x18
	.4byte	0x59c
	.byte	0x1
	.4byte	0xd0
	.uleb128 0x19
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xa
	.byte	0xa
	.4byte	0x5a7
	.uleb128 0xa
	.byte	0x4
	.4byte	0x5ad
	.uleb128 0x18
	.4byte	0x5bd
	.byte	0x1
	.4byte	0xdb
	.uleb128 0x19
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xa
	.byte	0xc
	.4byte	0x5c8
	.uleb128 0xa
	.byte	0x4
	.4byte	0x5ce
	.uleb128 0x1a
	.4byte	0x5df
	.byte	0x1
	.uleb128 0x19
	.4byte	0xdb
	.uleb128 0x19
	.4byte	0xc6
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xa
	.byte	0xd
	.4byte	0x5ea
	.uleb128 0xa
	.byte	0x4
	.4byte	0x5f0
	.uleb128 0x1a
	.4byte	0x601
	.byte	0x1
	.uleb128 0x19
	.4byte	0xdb
	.uleb128 0x19
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xa
	.byte	0xe
	.4byte	0x60c
	.uleb128 0xa
	.byte	0x4
	.4byte	0x612
	.uleb128 0x1a
	.4byte	0x623
	.byte	0x1
	.uleb128 0x19
	.4byte	0xdb
	.uleb128 0x19
	.4byte	0xdb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xa
	.byte	0x10
	.4byte	0x5a7
	.uleb128 0x6
	.4byte	0x673
	.4byte	.LASF69
	.byte	0xc
	.byte	0xc
	.byte	0x17
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0xc
	.byte	0x18
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.ascii	"end\000"
	.byte	0xc
	.byte	0x19
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.ascii	"acc\000"
	.byte	0xc
	.byte	0x1a
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0xc
	.byte	0x1b
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xc
	.byte	0x1c
	.4byte	0x62e
	.uleb128 0x6
	.4byte	0x6b5
	.4byte	.LASF73
	.byte	0xc
	.byte	0xc
	.byte	0x1f
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0xc
	.byte	0x20
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0xc
	.byte	0x21
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0xc
	.byte	0x22
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xc
	.byte	0x23
	.4byte	0x67e
	.uleb128 0x1c
	.4byte	0xaae
	.2byte	0x248
	.byte	0x9
	.byte	0xc0
	.uleb128 0x7
	.ascii	"cpu\000"
	.byte	0x9
	.byte	0xc1
	.4byte	0x54f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x9
	.byte	0xc4
	.4byte	0xaae
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x9
	.byte	0xc7
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x9
	.byte	0xc8
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x9
	.byte	0xcb
	.4byte	0xabe
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x9
	.byte	0xcc
	.4byte	0x6b5
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x9
	.byte	0xcd
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x9
	.byte	0xd0
	.4byte	0xace
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x9
	.byte	0xd1
	.4byte	0xace
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x9
	.byte	0xd2
	.4byte	0xace
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x9
	.byte	0xd3
	.4byte	0xace
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x9
	.byte	0xd4
	.4byte	0xace
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x9
	.byte	0xd5
	.4byte	0xace
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x9
	.byte	0xd6
	.4byte	0xad4
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x9
	.byte	0xd7
	.4byte	0xad4
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x9
	.byte	0xd8
	.4byte	0xad4
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x9
	.byte	0xda
	.4byte	0xada
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x9
	.byte	0xdd
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x9
	.byte	0xde
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x9
	.byte	0xdf
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0x9
	.byte	0xe0
	.4byte	0xaeb
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x16
	.4byte	.LASF98
	.byte	0x9
	.byte	0xe1
	.4byte	0xaeb
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x16
	.4byte	.LASF99
	.byte	0x9
	.byte	0xe2
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x16
	.4byte	.LASF100
	.byte	0x9
	.byte	0xe5
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x16
	.4byte	.LASF101
	.byte	0x9
	.byte	0xe6
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x9
	.byte	0xe7
	.4byte	0xad4
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x9
	.byte	0xe8
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x9
	.byte	0xea
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x16
	.4byte	.LASF105
	.byte	0x9
	.byte	0xeb
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0x9
	.byte	0xec
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0x9
	.byte	0xed
	.4byte	0xaf6
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x9
	.byte	0xee
	.4byte	0xad4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x9
	.byte	0xf1
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x9
	.byte	0xf2
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0x9
	.byte	0xf3
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x9
	.byte	0xf4
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x9
	.byte	0xf7
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x9
	.byte	0xf8
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x9
	.byte	0xf9
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x16
	.4byte	.LASF116
	.byte	0x9
	.byte	0xfa
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x9
	.byte	0xfb
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x16
	.4byte	.LASF118
	.byte	0x9
	.byte	0xfc
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x9
	.byte	0xfd
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x102
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xd
	.4byte	.LASF121
	.byte	0x9
	.2byte	0x103
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xd
	.4byte	.LASF122
	.byte	0x9
	.2byte	0x106
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xd
	.4byte	.LASF123
	.byte	0x9
	.2byte	0x108
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xd
	.4byte	.LASF124
	.byte	0x9
	.2byte	0x109
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.4byte	.LASF125
	.byte	0x9
	.2byte	0x10a
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x10b
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.4byte	.LASF127
	.byte	0x9
	.2byte	0x10d
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.4byte	.LASF128
	.byte	0x9
	.2byte	0x10e
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x10f
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.4byte	.LASF130
	.byte	0x9
	.2byte	0x110
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.4byte	.LASF131
	.byte	0x9
	.2byte	0x111
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xd
	.4byte	.LASF132
	.byte	0x9
	.2byte	0x114
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xd
	.4byte	.LASF133
	.byte	0x9
	.2byte	0x115
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xd
	.4byte	.LASF134
	.byte	0x9
	.2byte	0x116
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xd
	.4byte	.LASF135
	.byte	0x9
	.2byte	0x117
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xd
	.4byte	.LASF136
	.byte	0x9
	.2byte	0x118
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xd
	.4byte	.LASF137
	.byte	0x9
	.2byte	0x11b
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xd
	.4byte	.LASF138
	.byte	0x9
	.2byte	0x11c
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xd
	.4byte	.LASF139
	.byte	0x9
	.2byte	0x11f
	.4byte	0xb06
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xd
	.4byte	.LASF140
	.byte	0x9
	.2byte	0x122
	.4byte	0xc6
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xd
	.4byte	.LASF141
	.byte	0x9
	.2byte	0x123
	.4byte	0xb16
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xe
	.4byte	0xabe
	.4byte	0x25d
	.uleb128 0x17
	.4byte	0x188
	.byte	0x8
	.byte	0x0
	.uleb128 0xe
	.4byte	0xace
	.4byte	0x673
	.uleb128 0x17
	.4byte	0x188
	.byte	0x6
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xc6
	.uleb128 0xa
	.byte	0x4
	.4byte	0xd0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xae0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xae6
	.uleb128 0x12
	.4byte	0xc6
	.uleb128 0xa
	.byte	0x4
	.4byte	0xaf1
	.uleb128 0x12
	.4byte	0xdb
	.uleb128 0xe
	.4byte	0xb06
	.4byte	0xdb
	.uleb128 0x17
	.4byte	0x188
	.byte	0xf
	.byte	0x0
	.uleb128 0xe
	.4byte	0xb16
	.4byte	0xc6
	.uleb128 0x17
	.4byte	0x188
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.4byte	0xb25
	.4byte	0xc6
	.uleb128 0x1d
	.4byte	0x188
	.byte	0x0
	.uleb128 0x1e
	.4byte	0xb40
	.2byte	0x400
	.byte	0x9
	.byte	0xbf
	.uleb128 0x15
	.4byte	0x6c0
	.uleb128 0x1f
	.4byte	.LASF142
	.byte	0x9
	.2byte	0x125
	.4byte	0xb40
	.byte	0x0
	.uleb128 0xe
	.4byte	0xb50
	.4byte	0xdb
	.uleb128 0x17
	.4byte	0x188
	.byte	0xff
	.byte	0x0
	.uleb128 0x20
	.4byte	0xbd6
	.4byte	.LASF143
	.2byte	0x2000
	.byte	0x9
	.byte	0xbe
	.uleb128 0x21
	.4byte	0xb25
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF144
	.byte	0x9
	.2byte	0x128
	.4byte	0xbd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xd
	.4byte	.LASF145
	.byte	0x9
	.2byte	0x129
	.4byte	0xbe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xd
	.4byte	.LASF146
	.byte	0x9
	.2byte	0x12a
	.4byte	0xbf6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xd
	.4byte	.LASF147
	.byte	0x9
	.2byte	0x12b
	.4byte	0xc06
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xd
	.4byte	.LASF148
	.byte	0x9
	.2byte	0x12c
	.4byte	0xc16
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xd
	.4byte	.LASF149
	.byte	0x9
	.2byte	0x12d
	.4byte	0xc26
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xd
	.4byte	.LASF150
	.byte	0x9
	.2byte	0x12e
	.4byte	0xc36
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xe
	.4byte	0xbe6
	.4byte	0x55a
	.uleb128 0x17
	.4byte	0x188
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	0xbf6
	.4byte	0x57b
	.uleb128 0x17
	.4byte	0x188
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	0xc06
	.4byte	0x59c
	.uleb128 0x17
	.4byte	0x188
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	0xc16
	.4byte	0x5bd
	.uleb128 0x17
	.4byte	0x188
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	0xc26
	.4byte	0x5df
	.uleb128 0x17
	.4byte	0x188
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	0xc36
	.4byte	0x601
	.uleb128 0x17
	.4byte	0x188
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	0xc46
	.4byte	0x623
	.uleb128 0x17
	.4byte	0x188
	.byte	0xff
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF151
	.byte	0x9
	.2byte	0x12f
	.4byte	0xb50
	.uleb128 0x22
	.4byte	0xcb3
	.4byte	.LASF167
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF152
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF153
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF154
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF155
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF156
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF157
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF158
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF159
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF160
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF161
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF162
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF163
	.sleb128 11
	.uleb128 0x9
	.4byte	.LASF164
	.sleb128 12
	.uleb128 0x9
	.4byte	.LASF165
	.sleb128 13
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF166
	.byte	0x4
	.byte	0x17
	.4byte	0xc52
	.uleb128 0x22
	.4byte	0xcd7
	.4byte	.LASF168
	.byte	0x1
	.byte	0x4
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF169
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF170
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0x4
	.byte	0x1c
	.4byte	0xcbe
	.uleb128 0x3
	.4byte	.LASF172
	.byte	0x4
	.byte	0x30
	.4byte	0xced
	.uleb128 0x6
	.4byte	0xd16
	.4byte	.LASF172
	.byte	0x8
	.byte	0x4
	.byte	0x30
	.uleb128 0x16
	.4byte	.LASF173
	.byte	0x4
	.byte	0x31
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF174
	.byte	0x4
	.byte	0x32
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF175
	.byte	0x4
	.byte	0x34
	.4byte	0xced
	.uleb128 0x3
	.4byte	.LASF176
	.byte	0x4
	.byte	0x35
	.4byte	0xced
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0x4
	.byte	0x37
	.4byte	0xd37
	.uleb128 0x6
	.4byte	0xd52
	.4byte	.LASF177
	.byte	0x4
	.byte	0x4
	.byte	0x37
	.uleb128 0x16
	.4byte	.LASF178
	.byte	0x4
	.byte	0x38
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF179
	.byte	0x4
	.byte	0x3a
	.4byte	0xd37
	.uleb128 0x3
	.4byte	.LASF180
	.byte	0x4
	.byte	0x3b
	.4byte	0xd37
	.uleb128 0x3
	.4byte	.LASF181
	.byte	0x3
	.byte	0xc
	.4byte	0xd73
	.uleb128 0xa
	.byte	0x4
	.4byte	0xd79
	.uleb128 0x18
	.4byte	0xd93
	.byte	0x1
	.4byte	0xcd7
	.uleb128 0x19
	.4byte	0xd93
	.uleb128 0x19
	.4byte	0xcb3
	.uleb128 0x19
	.4byte	0x25d
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xd99
	.uleb128 0x6
	.4byte	0xe08
	.4byte	.LASF182
	.byte	0x28
	.byte	0x3
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF183
	.byte	0x3
	.byte	0x1b
	.4byte	0xe63
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF184
	.byte	0x3
	.byte	0x1c
	.4byte	0xd93
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF185
	.byte	0x3
	.byte	0x1d
	.4byte	0xd93
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF186
	.byte	0x3
	.byte	0x1e
	.4byte	0xd93
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.4byte	.LASF187
	.byte	0x3
	.byte	0x1f
	.4byte	0xd68
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.4byte	.LASF41
	.byte	0x3
	.byte	0x20
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.4byte	.LASF188
	.byte	0x3
	.byte	0x21
	.4byte	0x311
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x6
	.4byte	0xe4d
	.4byte	.LASF189
	.byte	0x10
	.byte	0x3
	.byte	0xe
	.uleb128 0x16
	.4byte	.LASF187
	.byte	0x3
	.byte	0xf
	.4byte	0xd68
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF184
	.byte	0x3
	.byte	0x10
	.4byte	0xe4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.4byte	.LASF190
	.byte	0x3
	.byte	0x11
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.4byte	.LASF191
	.byte	0x3
	.byte	0x12
	.4byte	0x25f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xe53
	.uleb128 0x12
	.4byte	0xe08
	.uleb128 0x3
	.4byte	.LASF192
	.byte	0x3
	.byte	0x13
	.4byte	0xe08
	.uleb128 0xa
	.byte	0x4
	.4byte	0xe69
	.uleb128 0x12
	.4byte	0xe58
	.uleb128 0x3
	.4byte	.LASF193
	.byte	0x3
	.byte	0x22
	.4byte	0xd99
	.uleb128 0xa
	.byte	0x4
	.4byte	0xe6e
	.uleb128 0x6
	.4byte	0xea8
	.4byte	.LASF194
	.byte	0x8
	.byte	0x1
	.byte	0x9
	.uleb128 0x16
	.4byte	.LASF195
	.byte	0x1
	.byte	0xa
	.4byte	0xe79
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x16
	.4byte	.LASF196
	.byte	0x1
	.byte	0xb
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF197
	.byte	0x1
	.byte	0xc
	.4byte	0xe7f
	.uleb128 0x22
	.4byte	0xed8
	.4byte	.LASF198
	.byte	0x1
	.byte	0x1
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF199
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF200
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF201
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF202
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF203
	.byte	0x1
	.byte	0x13
	.4byte	0xeb3
	.uleb128 0x23
	.4byte	0xf08
	.byte	0x1
	.4byte	.LASF204
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	.LFB110
	.4byte	.LFE110
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.4byte	.LASF183
	.byte	0x1
	.byte	0x2e
	.4byte	0xe63
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x23
	.4byte	0xf2d
	.byte	0x1
	.4byte	.LASF205
	.byte	0x1
	.byte	0x36
	.byte	0x1
	.4byte	.LFB111
	.4byte	.LFE111
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.4byte	.LASF183
	.byte	0x1
	.byte	0x35
	.4byte	0xe63
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF218
	.byte	0x1
	.byte	0x3d
	.4byte	.LFB112
	.4byte	.LFE112
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.4byte	0xf65
	.byte	0x1
	.4byte	.LASF206
	.byte	0x1
	.byte	0x43
	.4byte	0xe79
	.4byte	.LFB113
	.4byte	.LFE113
	.byte	0x1
	.byte	0x5d
	.uleb128 0x27
	.4byte	.LASF208
	.byte	0x1
	.byte	0x44
	.4byte	0xf65
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xea8
	.uleb128 0x28
	.4byte	0xfa1
	.byte	0x1
	.4byte	.LASF207
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.4byte	0x25d
	.4byte	.LFB114
	.4byte	.LFE114
	.byte	0x1
	.byte	0x5d
	.uleb128 0x29
	.4byte	.LASF190
	.byte	0x1
	.byte	0x48
	.4byte	0xdb
	.4byte	.LLST5
	.uleb128 0x27
	.4byte	.LASF209
	.byte	0x1
	.byte	0x4a
	.4byte	0x25d
	.byte	0x0
	.uleb128 0x2a
	.4byte	0xfd0
	.4byte	.LASF213
	.byte	0x2
	.byte	0x20
	.byte	0x1
	.4byte	0x175
	.byte	0x3
	.uleb128 0x2b
	.4byte	.LASF210
	.byte	0x2
	.byte	0x1f
	.4byte	0xfd0
	.uleb128 0x2c
	.ascii	"x\000"
	.byte	0x2
	.byte	0x1f
	.4byte	0xf1
	.uleb128 0x2c
	.ascii	"y\000"
	.byte	0x2
	.byte	0x1f
	.4byte	0xf1
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xfd6
	.uleb128 0x12
	.4byte	0x311
	.uleb128 0x2d
	.4byte	0x105b
	.byte	0x1
	.4byte	.LASF211
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.4byte	0xe79
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LLST6
	.uleb128 0x29
	.4byte	.LASF173
	.byte	0x1
	.byte	0x50
	.4byte	0xf1
	.4byte	.LLST7
	.uleb128 0x29
	.4byte	.LASF174
	.byte	0x1
	.byte	0x50
	.4byte	0xf1
	.4byte	.LLST8
	.uleb128 0x27
	.4byte	.LASF208
	.byte	0x1
	.byte	0x52
	.4byte	0xf65
	.uleb128 0x2e
	.4byte	.LASF184
	.byte	0x1
	.byte	0x53
	.4byte	0xe79
	.4byte	.LLST9
	.uleb128 0x2f
	.4byte	.LASF212
	.byte	0x1
	.byte	0x54
	.4byte	0xe79
	.byte	0x1
	.byte	0x52
	.uleb128 0x30
	.4byte	0xfa1
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x57
	.uleb128 0x31
	.4byte	0xfc6
	.uleb128 0x31
	.4byte	0xfbd
	.uleb128 0x32
	.4byte	0xfb2
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.4byte	0x10ae
	.4byte	.LASF214
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.4byte	.LFB116
	.4byte	.LFE116
	.4byte	.LLST10
	.uleb128 0x29
	.4byte	.LASF215
	.byte	0x1
	.byte	0x63
	.4byte	0xe79
	.4byte	.LLST11
	.uleb128 0x34
	.ascii	"e\000"
	.byte	0x1
	.byte	0x63
	.4byte	0xcb3
	.4byte	.LLST12
	.uleb128 0x34
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x63
	.4byte	0x25d
	.4byte	.LLST13
	.uleb128 0x2e
	.4byte	.LASF216
	.byte	0x1
	.byte	0x65
	.4byte	0xe79
	.4byte	.LLST14
	.byte	0x0
	.uleb128 0x35
	.4byte	0x10fe
	.byte	0x1
	.4byte	.LASF217
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LLST15
	.uleb128 0x34
	.ascii	"e\000"
	.byte	0x1
	.byte	0x6d
	.4byte	0xcb3
	.4byte	.LLST16
	.uleb128 0x34
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x6d
	.4byte	0x25d
	.4byte	.LLST17
	.uleb128 0x27
	.4byte	.LASF208
	.byte	0x1
	.byte	0x6f
	.4byte	0xf65
	.uleb128 0x2e
	.4byte	.LASF215
	.byte	0x1
	.byte	0x70
	.4byte	0xe79
	.4byte	.LLST18
	.byte	0x0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF219
	.byte	0x1
	.byte	0x77
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LLST19
	.uleb128 0x37
	.4byte	0x1171
	.byte	0x1
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x113
	.byte	0x1
	.4byte	0xe79
	.4byte	.LFB121
	.4byte	.LFE121
	.4byte	.LLST20
	.uleb128 0x38
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x111
	.4byte	0xe63
	.4byte	.LLST21
	.uleb128 0x38
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x111
	.4byte	0xe79
	.4byte	.LLST22
	.uleb128 0x38
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x112
	.4byte	0xfd0
	.4byte	.LLST23
	.uleb128 0x39
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x114
	.4byte	0xe79
	.4byte	.LLST24
	.byte	0x0
	.uleb128 0x37
	.4byte	0x11d0
	.byte	0x1
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x12b
	.byte	0x1
	.4byte	0xe79
	.4byte	.LFB122
	.4byte	.LFE122
	.4byte	.LLST25
	.uleb128 0x38
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x129
	.4byte	0xe63
	.4byte	.LLST26
	.uleb128 0x38
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x129
	.4byte	0xe79
	.4byte	.LLST27
	.uleb128 0x38
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x12a
	.4byte	0xfd0
	.4byte	.LLST28
	.uleb128 0x39
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x12c
	.4byte	0xe79
	.4byte	.LLST29
	.byte	0x0
	.uleb128 0x3a
	.4byte	0x11e8
	.4byte	.LASF222
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF208
	.byte	0x1
	.byte	0x7d
	.4byte	0xf65
	.byte	0x0
	.uleb128 0x3b
	.4byte	0x1377
	.byte	0x1
	.4byte	.LASF223
	.byte	0x1
	.byte	0xab
	.4byte	.LFB120
	.4byte	.LFE120
	.4byte	.LLST30
	.uleb128 0x3c
	.ascii	"ret\000"
	.byte	0x1
	.byte	0xae
	.4byte	0xcd7
	.uleb128 0x2e
	.4byte	.LASF224
	.byte	0x1
	.byte	0xaf
	.4byte	0xe79
	.4byte	.LLST31
	.uleb128 0x2e
	.4byte	.LASF212
	.byte	0x1
	.byte	0xb0
	.4byte	0xe79
	.4byte	.LLST32
	.uleb128 0x2f
	.4byte	.LASF225
	.byte	0x1
	.byte	0xb1
	.4byte	0x155
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.4byte	.LASF226
	.byte	0x1
	.byte	0xb2
	.4byte	0xdb
	.4byte	.LLST33
	.uleb128 0x2e
	.4byte	.LASF227
	.byte	0x1
	.byte	0xb3
	.4byte	0xdb
	.4byte	.LLST34
	.uleb128 0x2e
	.4byte	.LASF228
	.byte	0x1
	.byte	0xb4
	.4byte	0xdb
	.4byte	.LLST35
	.uleb128 0x2e
	.4byte	.LASF229
	.byte	0x1
	.byte	0xb5
	.4byte	0xf1
	.4byte	.LLST36
	.uleb128 0x2e
	.4byte	.LASF230
	.byte	0x1
	.byte	0xb6
	.4byte	0xf1
	.4byte	.LLST37
	.uleb128 0x3d
	.ascii	"i\000"
	.byte	0x1
	.byte	0xb7
	.4byte	0xf1
	.4byte	.LLST38
	.uleb128 0x3e
	.4byte	0x12ae
	.4byte	0x11d0
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xbc
	.uleb128 0x3f
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x40
	.4byte	0x11dc
	.4byte	.LLST39
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
	.4byte	0x12c6
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x2f
	.4byte	.LASF231
	.byte	0x1
	.byte	0xda
	.4byte	0xd16
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x42
	.4byte	0x12e2
	.4byte	.LBB25
	.4byte	.LBE25
	.uleb128 0x2f
	.4byte	.LASF232
	.byte	0x1
	.byte	0xeb
	.4byte	0xd21
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x42
	.4byte	0x12fe
	.4byte	.LBB26
	.4byte	.LBE26
	.uleb128 0x2f
	.4byte	.LASF233
	.byte	0x1
	.byte	0xf1
	.4byte	0xce2
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x42
	.4byte	0x131a
	.4byte	.LBB27
	.4byte	.LBE27
	.uleb128 0x2f
	.4byte	.LASF231
	.byte	0x1
	.byte	0xfc
	.4byte	0xd52
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x42
	.4byte	0x1337
	.4byte	.LBB28
	.4byte	.LBE28
	.uleb128 0x43
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x101
	.4byte	0xd5d
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x42
	.4byte	0x1354
	.4byte	.LBB29
	.4byte	.LBE29
	.uleb128 0x43
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x106
	.4byte	0xd2c
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF234
	.byte	0x1
	.byte	0xad
	.4byte	0x1399
	.byte	0x5
	.byte	0x3
	.4byte	keyTime.5411
	.uleb128 0x2f
	.4byte	.LASF235
	.byte	0x1
	.byte	0xac
	.4byte	0xe79
	.byte	0x5
	.byte	0x3
	.4byte	pTouchDownObj.5410
	.byte	0x0
	.uleb128 0x3b
	.4byte	0x1399
	.byte	0x1
	.4byte	.LASF236
	.byte	0x1
	.byte	0x20
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LLST40
	.uleb128 0x3c
	.ascii	"i\000"
	.byte	0x1
	.byte	0x21
	.4byte	0xf1
	.byte	0x0
	.uleb128 0xe
	.4byte	0x13a9
	.4byte	0xf1
	.uleb128 0x17
	.4byte	0x188
	.byte	0xf
	.byte	0x0
	.uleb128 0x44
	.4byte	.LASF237
	.byte	0x7
	.2byte	0x129
	.4byte	0x13b5
	.uleb128 0xa
	.byte	0x4
	.4byte	0x251
	.uleb128 0x2f
	.4byte	.LASF238
	.byte	0x1
	.byte	0x16
	.4byte	0xfd6
	.byte	0x5
	.byte	0x3
	.4byte	g_guiBounds
	.uleb128 0xe
	.4byte	0x13dd
	.4byte	0xc6
	.uleb128 0xf
	.4byte	0x188
	.2byte	0x3fff
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF239
	.byte	0x1
	.byte	0x17
	.4byte	0x13cc
	.byte	0x5
	.byte	0x3
	.4byte	g_heap
	.uleb128 0x2f
	.4byte	.LASF240
	.byte	0x1
	.byte	0x18
	.4byte	0xdb
	.byte	0x5
	.byte	0x3
	.4byte	g_heapPos
	.uleb128 0xe
	.4byte	0x140f
	.4byte	0xea8
	.uleb128 0x17
	.4byte	0x188
	.byte	0x3
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF241
	.byte	0x1
	.byte	0x19
	.4byte	0x13ff
	.byte	0x5
	.byte	0x3
	.4byte	g_stack
	.uleb128 0x2f
	.4byte	.LASF242
	.byte	0x1
	.byte	0x1a
	.4byte	0xdb
	.byte	0x5
	.byte	0x3
	.4byte	g_stackPos
	.uleb128 0x2f
	.4byte	.LASF243
	.byte	0x1
	.byte	0x1c
	.4byte	0xe63
	.byte	0x5
	.byte	0x3
	.4byte	g_layoutType
	.uleb128 0x2f
	.4byte	.LASF244
	.byte	0x1
	.byte	0x1d
	.4byte	0xed8
	.byte	0x5
	.byte	0x3
	.4byte	g_command
	.uleb128 0xe
	.4byte	0x145e
	.4byte	0x49
	.uleb128 0x45
	.byte	0x0
	.uleb128 0x46
	.4byte	.LASF245
	.byte	0x8
	.byte	0x2c
	.4byte	0x1453
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x1476
	.4byte	0x49
	.uleb128 0x45
	.byte	0x0
	.uleb128 0x46
	.4byte	.LASF246
	.byte	0x8
	.byte	0x2d
	.4byte	0x146b
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x148e
	.4byte	0x49
	.uleb128 0x45
	.byte	0x0
	.uleb128 0x46
	.4byte	.LASF247
	.byte	0x8
	.byte	0x2e
	.4byte	0x1483
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.4byte	.LASF248
	.byte	0x9
	.2byte	0x149
	.4byte	0x14aa
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0xa
	.byte	0x4
	.4byte	0xc46
	.uleb128 0x48
	.4byte	.LASF249
	.byte	0x9
	.2byte	0x14d
	.4byte	0xc46
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
	.uleb128 0x7
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x17
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
	.uleb128 0x15
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x4
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x49
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x41
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.4byte	0x101
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x14bf
	.4byte	0xee3
	.ascii	"guiFramePush_r\000"
	.4byte	0xf08
	.ascii	"guiFrameNew_r\000"
	.4byte	0xf2d
	.ascii	"guiFramePop\000"
	.4byte	0xf3f
	.ascii	"guiGetRoot\000"
	.4byte	0xf6b
	.ascii	"guiHeapAlloc\000"
	.4byte	0xfdb
	.ascii	"guiFindObjectAt\000"
	.4byte	0x10ae
	.ascii	"guiBroadcastEvent\000"
	.4byte	0x10fe
	.ascii	"guiSystemRender\000"
	.4byte	0x1112
	.ascii	"guiObjAllocChild_r\000"
	.4byte	0x1171
	.ascii	"guiObjCreateChild_r\000"
	.4byte	0x11e8
	.ascii	"guiSystemProcess\000"
	.4byte	0x1377
	.ascii	"guiSystemInit\000"
	.4byte	0x149b
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
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF29:
	.ascii	"clearColor\000"
.LASF47:
	.ascii	"checkpc\000"
.LASF51:
	.ascii	"write8\000"
.LASF98:
	.ascii	"smaBankbit\000"
.LASF150:
	.ascii	"cpuCheckPcTable\000"
.LASF106:
	.ascii	"spriteMask\000"
.LASF129:
	.ascii	"ctrl3Reg\000"
.LASF56:
	.ascii	"fetch32\000"
.LASF253:
	.ascii	"_TBounds\000"
.LASF237:
	.ascii	"glGlob\000"
.LASF114:
	.ascii	"cpuClocksPerScanline\000"
.LASF63:
	.ascii	"TRead16Func\000"
.LASF217:
	.ascii	"guiBroadcastEvent\000"
.LASF80:
	.ascii	"romBankCount\000"
.LASF109:
	.ascii	"tileOffsetX\000"
.LASF148:
	.ascii	"cpuWrite16Table\000"
.LASF14:
	.ascii	"uint32\000"
.LASF229:
	.ascii	"touchX\000"
.LASF25:
	.ascii	"GL_MODELVIEW\000"
.LASF111:
	.ascii	"tileScaleX\000"
.LASF18:
	.ascii	"touchPosition\000"
.LASF112:
	.ascii	"tileScaleY\000"
.LASF157:
	.ascii	"GUIEVENT_PROCESS\000"
.LASF234:
	.ascii	"keyTime\000"
.LASF158:
	.ascii	"GUIEVENT_RENDER\000"
.LASF207:
	.ascii	"guiHeapAlloc\000"
.LASF169:
	.ascii	"GUIEVENTRET_HANDLED\000"
.LASF36:
	.ascii	"_TPoint\000"
.LASF164:
	.ascii	"GUIEVENT_KEYREPEAT\000"
.LASF52:
	.ascii	"write16\000"
.LASF68:
	.ascii	"TCheckPcFunc\000"
.LASF141:
	.ascii	"varEnd\000"
.LASF65:
	.ascii	"TWrite8Func\000"
.LASF48:
	.ascii	"read8\000"
.LASF166:
	.ascii	"TGuiEventID\000"
.LASF176:
	.ascii	"TGUIEVENT_TOUCHUPArg\000"
.LASF241:
	.ascii	"g_stack\000"
.LASF77:
	.ascii	"TNeoADPCMBStream\000"
.LASF62:
	.ascii	"TRead8Func\000"
.LASF220:
	.ascii	"guiObjAllocChild_r\000"
.LASF108:
	.ascii	"pTileBuffer\000"
.LASF146:
	.ascii	"cpuRead32Table\000"
.LASF27:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF170:
	.ascii	"GUIEVENTRET_NOTHANDLED\000"
.LASF8:
	.ascii	"long int\000"
.LASF174:
	.ascii	"yPos\000"
.LASF76:
	.ascii	"frequency\000"
.LASF66:
	.ascii	"TWrite16Func\000"
.LASF54:
	.ascii	"fetch8\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF139:
	.ascii	"keyGrid\000"
.LASF201:
	.ascii	"GUICOMMAND_POP\000"
.LASF223:
	.ascii	"guiSystemProcess\000"
.LASF53:
	.ascii	"write32\000"
.LASF214:
	.ascii	"guiSendEventRecursive\000"
.LASF226:
	.ascii	"keyRepeat\000"
.LASF57:
	.ascii	"IrqCallback\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF130:
	.ascii	"ctrl4Reg\000"
.LASF163:
	.ascii	"GUIEVENT_KEYUP\000"
.LASF119:
	.ascii	"romBankAddress\000"
.LASF247:
	.ascii	"TAN_bin\000"
.LASF71:
	.ascii	"step\000"
.LASF83:
	.ascii	"adpcmActive\000"
.LASF160:
	.ascii	"GUIEVENT_TOUCHUP\000"
.LASF185:
	.ascii	"pChildren\000"
.LASF103:
	.ascii	"vramBaseMask\000"
.LASF79:
	.ascii	"spriteCount\000"
.LASF197:
	.ascii	"TGuiFrameEntry\000"
.LASF59:
	.ascii	"UnrecognizedCallback\000"
.LASF251:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiBase.c\000"
.LASF187:
	.ascii	"handler\000"
.LASF206:
	.ascii	"guiGetRoot\000"
.LASF199:
	.ascii	"GUICOMMAND_NONE\000"
.LASF22:
	.ascii	"char\000"
.LASF132:
	.ascii	"irqVectorLatch\000"
.LASF90:
	.ascii	"pVram\000"
.LASF181:
	.ascii	"TGuiEventHandler\000"
.LASF235:
	.ascii	"pTouchDownObj\000"
.LASF133:
	.ascii	"screenDarkLatch\000"
.LASF42:
	.ascii	"prev_pc\000"
.LASF73:
	.ascii	"_TNeoADPCMBStream\000"
.LASF216:
	.ascii	"pChild\000"
.LASF156:
	.ascii	"GUIEVENT_DESTROY\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF41:
	.ascii	"flags\000"
.LASF17:
	.ascii	"double\000"
.LASF105:
	.ascii	"autoAnimationCounter\000"
.LASF30:
	.ascii	"textures\000"
.LASF211:
	.ascii	"guiFindObjectAt\000"
.LASF24:
	.ascii	"GL_POSITION\000"
.LASF151:
	.ascii	"TNeoContext\000"
.LASF113:
	.ascii	"cpuClockDivide\000"
.LASF101:
	.ascii	"frameCount\000"
.LASF122:
	.ascii	"vramOffset\000"
.LASF222:
	.ascii	"guiSystemProcessCommand\000"
.LASF252:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF142:
	.ascii	"fill\000"
.LASF45:
	.ascii	"cycles\000"
.LASF149:
	.ascii	"cpuWrite32Table\000"
.LASF232:
	.ascii	"touchArgs\000"
.LASF136:
	.ascii	"paletteRamLatch\000"
.LASF244:
	.ascii	"g_command\000"
.LASF208:
	.ascii	"pFrame\000"
.LASF245:
	.ascii	"COS_bin\000"
.LASF87:
	.ascii	"pRam\000"
.LASF89:
	.ascii	"pCard\000"
.LASF104:
	.ascii	"displayCounter\000"
.LASF61:
	.ascii	"TCycloneContext\000"
.LASF238:
	.ascii	"g_guiBounds\000"
.LASF116:
	.ascii	"watchdogCounter\000"
.LASF38:
	.ascii	"TBounds\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF152:
	.ascii	"GUIEVENT_NULL\000"
.LASF145:
	.ascii	"cpuRead16Table\000"
.LASF125:
	.ascii	"displayControlMask\000"
.LASF155:
	.ascii	"GUIEVENT_CREATE\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF137:
	.ascii	"active\000"
.LASF180:
	.ascii	"TGUIEVENT_KEYUPArg\000"
.LASF39:
	.ascii	"Cyclone\000"
.LASF188:
	.ascii	"bounds\000"
.LASF198:
	.ascii	"_TGuiSystemCommand\000"
.LASF86:
	.ascii	"pBios\000"
.LASF210:
	.ascii	"pBounds\000"
.LASF107:
	.ascii	"paletteDirty\000"
.LASF246:
	.ascii	"SIN_bin\000"
.LASF193:
	.ascii	"TGuiObject\000"
.LASF28:
	.ascii	"matrixMode\000"
.LASF192:
	.ascii	"TGuiTypeHeader\000"
.LASF32:
	.ascii	"nextBlock\000"
.LASF189:
	.ascii	"_TGuiTypeHeader\000"
.LASF186:
	.ascii	"pNextChild\000"
.LASF144:
	.ascii	"cpuRead8Table\000"
.LASF99:
	.ascii	"smaRand\000"
.LASF69:
	.ascii	"_TNeoADPCMStream\000"
.LASF67:
	.ascii	"TWrite32Func\000"
.LASF94:
	.ascii	"smaAddr0\000"
.LASF11:
	.ascii	"long long int\000"
.LASF23:
	.ascii	"GL_PROJECTION\000"
.LASF159:
	.ascii	"GUIEVENT_TOUCHDOWN\000"
.LASF131:
	.ascii	"coinReg\000"
.LASF74:
	.ascii	"initOffset\000"
.LASF227:
	.ascii	"keyDown\000"
.LASF60:
	.ascii	"internal\000"
.LASF55:
	.ascii	"fetch16\000"
.LASF153:
	.ascii	"GUIEVENT_ENABLE\000"
.LASF200:
	.ascii	"GUICOMMAND_PUSH\000"
.LASF154:
	.ascii	"GUIEVENT_DISABLE\000"
.LASF95:
	.ascii	"smaAddr1\000"
.LASF233:
	.ascii	"tapArgs\000"
.LASF40:
	.ascii	"unused\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF225:
	.ascii	"touch\000"
.LASF124:
	.ascii	"displayControl\000"
.LASF212:
	.ascii	"pObj\000"
.LASF204:
	.ascii	"guiFramePush_r\000"
.LASF97:
	.ascii	"smaBankoffset\000"
.LASF26:
	.ascii	"GL_TEXTURE\000"
.LASF177:
	.ascii	"TGUIEVENT_KEYREPEATArg\000"
.LASF242:
	.ascii	"g_stackPos\000"
.LASF224:
	.ascii	"pTouchObj\000"
.LASF102:
	.ascii	"pVramBase\000"
.LASF70:
	.ascii	"offset\000"
.LASF84:
	.ascii	"pRom0\000"
.LASF230:
	.ascii	"touchY\000"
.LASF110:
	.ascii	"tileOffsetY\000"
.LASF147:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF205:
	.ascii	"guiFrameNew_r\000"
.LASF21:
	.ascii	"bool\000"
.LASF31:
	.ascii	"activeTexture\000"
.LASF128:
	.ascii	"ctrl2Reg\000"
.LASF49:
	.ascii	"read16\000"
.LASF117:
	.ascii	"paletteBank\000"
.LASF249:
	.ascii	"g_neoContext\000"
.LASF46:
	.ascii	"membase\000"
.LASF243:
	.ascii	"g_layoutType\000"
.LASF250:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF228:
	.ascii	"keyUp\000"
.LASF100:
	.ascii	"scanline\000"
.LASF190:
	.ascii	"size\000"
.LASF92:
	.ascii	"pPalette\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF138:
	.ascii	"debug\000"
.LASF195:
	.ascii	"pRoot\000"
.LASF240:
	.ascii	"g_heapPos\000"
.LASF203:
	.ascii	"TGuiSystemCommand\000"
.LASF85:
	.ascii	"pRom1\000"
.LASF178:
	.ascii	"keys\000"
.LASF168:
	.ascii	"_TGuiEventReturn\000"
.LASF50:
	.ascii	"read32\000"
.LASF172:
	.ascii	"TGUIEVENT_TAPArg\000"
.LASF183:
	.ascii	"pType\000"
.LASF91:
	.ascii	"pSpriteRam\000"
.LASF58:
	.ascii	"ResetCallback\000"
.LASF135:
	.ascii	"sramProtectLatch\000"
.LASF118:
	.ascii	"fixedBank\000"
.LASF202:
	.ascii	"GUICOMMAND_NEW\000"
.LASF248:
	.ascii	"g_neo\000"
.LASF231:
	.ascii	"args\000"
.LASF221:
	.ascii	"guiObjCreateChild_r\000"
.LASF34:
	.ascii	"nameCount\000"
.LASF19:
	.ascii	"false\000"
.LASF182:
	.ascii	"_TGuiObject\000"
.LASF127:
	.ascii	"ctrl1Reg\000"
.LASF44:
	.ascii	"state_flags\000"
.LASF165:
	.ascii	"GUIEVENT_SELECTED\000"
.LASF191:
	.ascii	"szName\000"
.LASF121:
	.ascii	"sramProtection\000"
.LASF196:
	.ascii	"heapPos\000"
.LASF88:
	.ascii	"pSram\000"
.LASF75:
	.ascii	"freqCounter\000"
.LASF4:
	.ascii	"short int\000"
.LASF140:
	.ascii	"frameCounter\000"
.LASF82:
	.ascii	"adpcmb\000"
.LASF173:
	.ascii	"xPos\000"
.LASF209:
	.ascii	"pData\000"
.LASF33:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF20:
	.ascii	"true\000"
.LASF126:
	.ascii	"displayCounterLoad\000"
.LASF115:
	.ascii	"irqPending\000"
.LASF239:
	.ascii	"g_heap\000"
.LASF175:
	.ascii	"TGUIEVENT_TOUCHDOWNArg\000"
.LASF161:
	.ascii	"GUIEVENT_TAP\000"
.LASF215:
	.ascii	"this\000"
.LASF15:
	.ascii	"int16\000"
.LASF219:
	.ascii	"guiSystemRender\000"
.LASF64:
	.ascii	"TRead32Func\000"
.LASF236:
	.ascii	"guiSystemInit\000"
.LASF162:
	.ascii	"GUIEVENT_KEYDOWN\000"
.LASF213:
	.ascii	"boundsTest\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF167:
	.ascii	"_TGuiEventID\000"
.LASF179:
	.ascii	"TGUIEVENT_KEYDOWNArg\000"
.LASF171:
	.ascii	"TGuiEventReturn\000"
.LASF81:
	.ascii	"adpcm\000"
.LASF16:
	.ascii	"float\000"
.LASF35:
	.ascii	"gl_hidden_globals\000"
.LASF194:
	.ascii	"_TGuiFrameEntry\000"
.LASF78:
	.ascii	"pVideoWriteTable\000"
.LASF218:
	.ascii	"guiFramePop\000"
.LASF93:
	.ascii	"bankTable\000"
.LASF96:
	.ascii	"smaBankAddr\000"
.LASF184:
	.ascii	"pParent\000"
.LASF143:
	.ascii	"_TNeoContext\000"
.LASF43:
	.ascii	"reserved\000"
.LASF134:
	.ascii	"fixedRomLatch\000"
.LASF120:
	.ascii	"sramProtectCount\000"
.LASF72:
	.ascii	"TNeoADPCMStream\000"
.LASF37:
	.ascii	"TPoint\000"
.LASF123:
	.ascii	"vramMod\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
