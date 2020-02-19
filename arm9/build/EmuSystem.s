	.code	16
	.file	"EmuSystem.c"
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
	.type	timer0Intr, %function
timer0Intr:
.LFB109:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/EmuSystem.c"
	.loc 1 38 0
	.loc 1 39 0
	ldr	r2, .L3
	.loc 1 38 0
	@ lr needed for prologue
	.loc 1 39 0
	ldr	r3, [r2]
	.loc 1 40 0
	@ sp needed for prologue
	.loc 1 39 0
	add	r3, r3, #1
	str	r3, [r2]
	.loc 1 40 0
	bx	lr
.L4:
	.align	2
.L3:
	.word	g_ms
.LFE109:
	.size	timer0Intr, .-timer0Intr
	.align	2
	.global	systemGetMs
	.code 16
	.thumb_func
	.type	systemGetMs, %function
systemGetMs:
.LFB110:
	.loc 1 43 0
	.loc 1 44 0
	ldr	r3, .L7
	.loc 1 43 0
	@ lr needed for prologue
	.loc 1 44 0
	ldr	r0, [r3]
	.loc 1 45 0
	@ sp needed for prologue
	bx	lr
.L8:
	.align	2
.L7:
	.word	g_ms
.LFE110:
	.size	systemGetMs, .-systemGetMs
	.align	2
	.global	systemWaitKey
	.code 16
	.thumb_func
	.type	systemWaitKey, %function
systemWaitKey:
.LFB131:
	.loc 1 239 0
	push	{lr}
.LCFI0:
.LVL0:
	sub	sp, sp, #4
.LCFI1:
	.loc 1 242 0
	bl	scanKeys
.LVL1:
	.loc 1 243 0
	bl	keysDown
.LVL2:
.L10:
	.loc 1 246 0
	bl	swiWaitForVBlank
.LVL3:
	.loc 1 247 0
	bl	scanKeys
	.loc 1 248 0
	bl	keysDown
.LVL4:
	.loc 1 249 0
	lsl	r3, r0, #28
	bpl	.L11
	.loc 1 250 0
	ldr	r3, .L17
	mov	r2, #0
	strb	r2, [r7, r3]
.L11:
	.loc 1 245 0
	cmp	r0, #0
	beq	.L10
	.loc 1 254 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L18:
	.align	2
.L17:
	.word	574
.LFE131:
	.size	systemWaitKey, .-systemWaitKey
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC2:
	.ascii	"*** PANIC ***\000"
	.align	2
.LC4:
	.ascii	"%s: %d\000"
	.text
	.align	2
	.global	systemPanic_d
	.code 16
	.thumb_func
	.type	systemPanic_d, %function
systemPanic_d:
.LFB130:
	.loc 1 223 0
	push	{r2, r3}
.LCFI2:
	push	{r4, r5, r6, lr}
.LCFI3:
.LVL5:
	sub	sp, sp, #8
.LCFI4:
	.loc 1 223 0
	add	r4, sp, #24
	ldmia	r4!, {r3}
	mov	r6, r1
	mov	r5, r0
	.loc 1 226 0
	ldr	r0, .L22
.LVL6:
	.loc 1 223 0
	str	r3, [sp, #24]
	.loc 1 226 0
	bl	guiConsoleLog
.LVL7:
	.loc 1 227 0
	mov	r2, r6
	ldr	r0, .L22+4
	mov	r1, r5
	bl	guiConsoleLogf
	.loc 1 229 0
	ldr	r0, [sp, #24]
	mov	r1, r4
.LVL8:
	.loc 1 228 0
	str	r4, [sp, #4]
	.loc 1 229 0
	bl	guiConsoleLogfv
.LVL9:
	.loc 1 232 0
	bl	guiConsoleDump
	.loc 1 234 0
	ldr	r3, .L22+8
	mov	r2, #0
	strh	r2, [r3]
.LVL10:
.L20:
	b	.L20
.L23:
	.align	2
.L22:
	.word	.LC2
	.word	.LC4
	.word	67109384
.LFE130:
	.size	systemPanic_d, .-systemPanic_d
	.align	2
	.global	systemSlot2Lock
	.code 16
	.thumb_func
	.type	systemSlot2Lock, %function
systemSlot2Lock:
.LFB129:
	.loc 1 207 0
	push	{lr}
.LCFI5:
	sub	sp, sp, #4
.LCFI6:
	.loc 1 208 0
	bl	ram_lock
	.loc 1 209 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE129:
	.size	systemSlot2Lock, .-systemSlot2Lock
	.align	2
	.global	systemSlot2Unlock
	.code 16
	.thumb_func
	.type	systemSlot2Unlock, %function
systemSlot2Unlock:
.LFB128:
	.loc 1 202 0
	push	{lr}
.LCFI7:
	sub	sp, sp, #4
.LCFI8:
	.loc 1 203 0
	bl	ram_unlock
	.loc 1 204 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE128:
	.size	systemSlot2Unlock, .-systemSlot2Unlock
	.align	2
	.global	systemSlot2Reset
	.code 16
	.thumb_func
	.type	systemSlot2Reset, %function
systemSlot2Reset:
.LFB127:
	.loc 1 196 0
	push	{lr}
.LCFI9:
	sub	sp, sp, #4
.LCFI10:
	.loc 1 197 0
	ldr	r0, .L30
	bl	linearHeapReset
	.loc 1 199 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L31:
	.align	2
.L30:
	.word	g_slot2Heap
.LFE127:
	.size	systemSlot2Reset, .-systemSlot2Reset
	.align	2
	.global	systemRamReset
	.code 16
	.thumb_func
	.type	systemRamReset, %function
systemRamReset:
.LFB124:
	.loc 1 181 0
	push	{lr}
.LCFI11:
	sub	sp, sp, #4
.LCFI12:
	.loc 1 182 0
	ldr	r0, .L34
	bl	linearHeapReset
	.loc 1 183 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L35:
	.align	2
.L34:
	.word	g_ramHeap
.LFE124:
	.size	systemRamReset, .-systemRamReset
	.align	2
	.global	systemGetSlot2Free
	.code 16
	.thumb_func
	.type	systemGetSlot2Free, %function
systemGetSlot2Free:
.LFB126:
	.loc 1 191 0
	push	{lr}
.LCFI13:
	sub	sp, sp, #4
.LCFI14:
	.loc 1 192 0
	ldr	r0, .L38
	bl	linearHeapGetFree
	.loc 1 193 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L39:
	.align	2
.L38:
	.word	g_slot2Heap
.LFE126:
	.size	systemGetSlot2Free, .-systemGetSlot2Free
	.align	2
	.global	systemGetRamFree
	.code 16
	.thumb_func
	.type	systemGetRamFree, %function
systemGetRamFree:
.LFB123:
	.loc 1 176 0
	push	{lr}
.LCFI15:
	sub	sp, sp, #4
.LCFI16:
	.loc 1 177 0
	ldr	r0, .L42
	bl	linearHeapGetFree
	.loc 1 178 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L43:
	.align	2
.L42:
	.word	g_ramHeap
.LFE123:
	.size	systemGetRamFree, .-systemGetRamFree
	.align	2
	.global	systemSlot2Alloc
	.code 16
	.thumb_func
	.type	systemSlot2Alloc, %function
systemSlot2Alloc:
.LFB125:
	.loc 1 186 0
	push	{lr}
.LCFI17:
.LVL11:
	sub	sp, sp, #4
.LCFI18:
	.loc 1 186 0
	mov	r1, r0
	.loc 1 187 0
	ldr	r0, .L46
.LVL12:
	bl	linearHeapAlloc
.LVL13:
	.loc 1 188 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L47:
	.align	2
.L46:
	.word	g_slot2Heap
.LFE125:
	.size	systemSlot2Alloc, .-systemSlot2Alloc
	.align	2
	.global	systemRamAlloc
	.code 16
	.thumb_func
	.type	systemRamAlloc, %function
systemRamAlloc:
.LFB122:
	.loc 1 171 0
	push	{lr}
.LCFI19:
.LVL14:
	sub	sp, sp, #4
.LCFI20:
	.loc 1 171 0
	mov	r1, r0
	.loc 1 172 0
	ldr	r0, .L50
.LVL15:
	bl	linearHeapAlloc
.LVL16:
	.loc 1 173 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L51:
	.align	2
.L50:
	.word	g_ramHeap
.LFE122:
	.size	systemRamAlloc, .-systemRamAlloc
	.align	2
	.global	systemIsSlot2Active
	.code 16
	.thumb_func
	.type	systemIsSlot2Active, %function
systemIsSlot2Active:
.LFB121:
	.loc 1 166 0
	push	{lr}
.LCFI21:
	sub	sp, sp, #4
.LCFI22:
	.loc 1 167 0
	bl	ram_size
	cmp	r0, #0
	beq	.L53
	mov	r0, #1
.L53:
	.loc 1 168 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE121:
	.size	systemIsSlot2Active, .-systemIsSlot2Active
	.section	.rodata.str1.4
	.align	2
.LC13:
	.ascii	"fatInit failed!\000"
	.text
	.align	2
	.global	systemInit
	.code 16
	.thumb_func
	.type	systemInit, %function
systemInit:
.LFB120:
	.loc 1 130 0
	push	{r4, r5, lr}
.LCFI23:
	sub	sp, sp, #4
.LCFI24:
	.loc 1 131 0
	bl	irqInit
	.loc 1 132 0
	ldr	r1, .L63
	mov	r0, #8
	bl	irqSet
	.loc 1 133 0
	ldr	r0, .L63+4
	bl	irqEnable
	.loc 1 135 0
	ldr	r2, .L63+8
	mov	r3, #32
	neg	r3, r3
	strh	r3, [r2]
	.loc 1 136 0
	ldr	r3, .L63+12
.LBB5:
.LBB6:
	.file 2 "C:/devkitPro/libnds/include/nds/system.h"
	.loc 2 89 0
	ldr	r1, .L63+16
.LBE6:
.LBE5:
	.loc 1 136 0
	mov	r2, #195
	strh	r2, [r3]
.LBB7:
.LBB8:
	.loc 2 89 0
	ldrh	r3, [r1]
	ldr	r2, .L63+20
.LBE8:
.LBE7:
	.loc 1 141 0
	mov	r0, #8
.LBB9:
.LBB10:
	.loc 2 89 0
	orr	r3, r3, r2
	strh	r3, [r1]
.LBE10:
.LBE9:
	.loc 1 141 0
	mov	r1, #1
	bl	fatInit
	.loc 1 142 0
	cmp	r0, #0
	bne	.L56
	.loc 1 143 0
	ldr	r0, .L63+24
	bl	guiConsoleLog
	mov	r0, #0
	b	.L58
.L56:
	.loc 1 147 0
	mov	r0, #0
	bl	ram_init
	ldr	r5, .L63+28
	.loc 1 148 0
	cmp	r0, #0
	beq	.L59
.LBB11:
	.loc 1 149 0
	bl	ram_unlock
	mov	r4, r0
	.loc 1 150 0
	bl	ram_size
	.loc 1 151 0
	mov	r1, r4
	.loc 1 150 0
	mov	r2, r0
.LVL17:
	.loc 1 151 0
	mov	r0, r5
	bl	linearHeapInit
.LVL18:
	.loc 1 154 0
	bl	ram_lock
	b	.L61
.L59:
.LBE11:
	.loc 1 157 0
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	linearHeapInit
.L61:
	.loc 1 160 0
	mov	r2, #203
	ldr	r0, .L63+32
	ldr	r1, .L63+36
	lsl	r2, r2, #13
	bl	linearHeapInit
	mov	r0, #1
.L58:
	.loc 1 163 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{r4, r5, pc}
.L64:
	.align	2
.L63:
	.word	timer0Intr
	.word	67597
	.word	67109120
	.word	67109122
	.word	67109636
	.word	527
	.word	.LC13
	.word	g_slot2Heap
	.word	g_ramHeap
	.word	g_mainRam
.LFE120:
	.size	systemInit, .-systemInit
	.align	2
	.global	systemReadOffset
	.code 16
	.thumb_func
	.type	systemReadOffset, %function
systemReadOffset:
.LFB114:
	.loc 1 72 0
	push	{r4, r5, r6, lr}
.LCFI25:
.LVL19:
	sub	sp, sp, #8
.LCFI26:
	.loc 1 72 0
	mov	r5, r0
	mov	r4, r2
	.loc 1 73 0
	mov	r0, #5
.LVL20:
	.loc 1 72 0
	mov	r6, r3
	str	r1, [sp, #4]
	.loc 1 73 0
	bl	irqDisable
.LVL21:
	.loc 1 74 0
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	bl	lseek
	.loc 1 75 0
	ldr	r1, [sp, #4]
	mov	r2, r6
	mov	r0, r5
	bl	read
	.loc 1 76 0
	mov	r0, #5
	bl	irqEnable
.LBB14:
.LBB15:
	.file 3 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
	.loc 3 337 0
	ldr	r7, .L67
.LBE15:
.LBE14:
	.loc 1 78 0
	add	sp, sp, #8
	@ sp needed for prologue
.LVL22:
.LVL23:
.LVL24:
	pop	{r4, r5, r6, pc}
.L68:
	.align	2
.L67:
	.word	g_neoContext
.LFE114:
	.size	systemReadOffset, .-systemReadOffset
	.align	2
	.global	systemRealloc
	.code 16
	.thumb_func
	.type	systemRealloc, %function
systemRealloc:
.LFB112:
	.loc 1 55 0
	push	{lr}
.LCFI27:
.LVL25:
	sub	sp, sp, #4
.LCFI28:
	.loc 1 56 0
	bl	realloc
.LVL26:
	.loc 1 59 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE112:
	.size	systemRealloc, .-systemRealloc
	.align	2
	.global	systemAlloc
	.code 16
	.thumb_func
	.type	systemAlloc, %function
systemAlloc:
.LFB111:
	.loc 1 48 0
	push	{lr}
.LCFI29:
.LVL27:
	sub	sp, sp, #4
.LCFI30:
	.loc 1 49 0
	bl	malloc
.LVL28:
	.loc 1 52 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE111:
	.size	systemAlloc, .-systemAlloc
	.align	2
	.global	systemOpen
	.code 16
	.thumb_func
	.type	systemOpen, %function
systemOpen:
.LFB113:
	.loc 1 62 0
	push	{r4, r5, lr}
.LCFI31:
.LVL29:
	sub	sp, sp, #4
.LCFI32:
	.loc 1 62 0
	mov	r4, r0
	.loc 1 63 0
	cmp	r1, #0
	beq	.L74
.LVL30:
	ldr	r5, .L78
.LVL31:
	b	.L76
.LVL32:
.L74:
	mov	r5, #0
.LVL33:
.L76:
	.loc 1 64 0
	mov	r0, #5
	bl	irqDisable
.LVL34:
	.loc 1 65 0
	mov	r1, r5
	mov	r0, r4
	bl	open
	mov	r4, r0
.LVL35:
	.loc 1 66 0
	mov	r0, #5
	bl	irqEnable
.LBB18:
.LBB19:
	.loc 3 337 0
	ldr	r7, .L78+4
.LBE19:
.LBE18:
	.loc 1 69 0
	mov	r0, r4
	add	sp, sp, #4
	@ sp needed for prologue
.LVL36:
.LVL37:
	pop	{r4, r5, pc}
.L79:
	.align	2
.L78:
	.word	1537
	.word	g_neoContext
.LFE113:
	.size	systemOpen, .-systemOpen
	.align	2
	.global	systemFileSize
	.code 16
	.thumb_func
	.type	systemFileSize, %function
systemFileSize:
.LFB119:
	.loc 1 120 0
	push	{r4, lr}
.LCFI33:
.LVL38:
	sub	sp, sp, #72
.LCFI34:
	.loc 1 120 0
	mov	r4, r0
	.loc 1 122 0
	mov	r0, #5
.LVL39:
	bl	irqDisable
	.loc 1 123 0
	add	r1, sp, #4
	mov	r0, r4
	bl	fstat
	.loc 1 124 0
	mov	r0, #5
	bl	irqEnable
.LBB22:
.LBB23:
	.loc 3 337 0
	ldr	r0, [sp, #28]
	ldr	r7, .L82
.LBE23:
.LBE22:
	.loc 1 127 0
	add	sp, sp, #72
	@ sp needed for prologue
.LVL40:
	pop	{r4, pc}
.L83:
	.align	2
.L82:
	.word	g_neoContext
.LFE119:
	.size	systemFileSize, .-systemFileSize
	.align	2
	.global	systemClose
	.code 16
	.thumb_func
	.type	systemClose, %function
systemClose:
.LFB118:
	.loc 1 112 0
	push	{r4, lr}
.LCFI35:
.LVL41:
	.loc 1 112 0
	mov	r4, r0
	.loc 1 113 0
	mov	r0, #5
.LVL42:
	bl	irqDisable
	.loc 1 114 0
	mov	r0, r4
	bl	close
	.loc 1 115 0
	mov	r0, #5
	bl	irqEnable
.LBB26:
.LBB27:
	.loc 3 337 0
	ldr	r7, .L86
.LBE27:
.LBE26:
	.loc 1 117 0
	@ sp needed for prologue
.LVL43:
	pop	{r4, pc}
.L87:
	.align	2
.L86:
	.word	g_neoContext
.LFE118:
	.size	systemClose, .-systemClose
	.align	2
	.global	systemWrite
	.code 16
	.thumb_func
	.type	systemWrite, %function
systemWrite:
.LFB117:
	.loc 1 97 0
	push	{r4, r5, r6, lr}
.LCFI36:
.LVL44:
	sub	sp, sp, #8
.LCFI37:
	.loc 1 97 0
	str	r0, [sp, #4]
	.loc 1 98 0
	mov	r0, #5
.LVL45:
	.loc 1 97 0
	mov	r6, r1
	mov	r5, r2
	.loc 1 98 0
	bl	irqDisable
.LVL46:
	b	.L89
.LVL47:
.L90:
	.loc 1 99 0
	mov	r3, #128
	lsl	r3, r3, #2
	mov	r4, r5
	cmp	r5, r3
	bls	.L91
	mov	r4, r3
.L91:
.LBB31:
	.loc 1 102 0
	mov	r1, r6
	ldr	r0, [sp, #4]
	mov	r2, r4
	bl	write
	.loc 1 103 0
	sub	r5, r5, r4
	.loc 1 104 0
	add	r6, r6, r4
.L89:
.LBE31:
	.loc 1 99 0
	cmp	r5, #0
	bne	.L90
	.loc 1 106 0
	mov	r0, #5
	bl	irqEnable
.LBB32:
.LBB33:
	.loc 3 337 0
	ldr	r7, .L94
.LBE33:
.LBE32:
	.loc 1 109 0
	add	sp, sp, #8
	@ sp needed for prologue
.LVL48:
.LVL49:
.LVL50:
	pop	{r4, r5, r6, pc}
.L95:
	.align	2
.L94:
	.word	g_neoContext
.LFE117:
	.size	systemWrite, .-systemWrite
	.align	2
	.global	systemSeek
	.code 16
	.thumb_func
	.type	systemSeek, %function
systemSeek:
.LFB116:
	.loc 1 89 0
	push	{r4, r5, r6, lr}
.LCFI38:
.LVL51:
	.loc 1 89 0
	mov	r5, r2
	.loc 1 91 0
	neg	r5, r5
	.loc 1 89 0
	mov	r6, r1
	mov	r4, r0
	.loc 1 91 0
	lsr	r5, r5, #31
	.loc 1 90 0
	mov	r0, #5
.LVL52:
	bl	irqDisable
.LVL53:
	.loc 1 91 0
	mov	r1, r6
	mov	r2, r5
	mov	r0, r4
	bl	lseek
	.loc 1 92 0
	mov	r0, #5
	bl	irqEnable
.LBB36:
.LBB37:
	.loc 3 337 0
	ldr	r7, .L99
.LBE37:
.LBE36:
	.loc 1 94 0
	@ sp needed for prologue
.LVL54:
.LVL55:
	pop	{r4, r5, r6, pc}
.L100:
	.align	2
.L99:
	.word	g_neoContext
.LFE116:
	.size	systemSeek, .-systemSeek
	.align	2
	.global	systemRead
	.code 16
	.thumb_func
	.type	systemRead, %function
systemRead:
.LFB115:
	.loc 1 81 0
	push	{r4, r5, r6, lr}
.LCFI39:
.LVL56:
	.loc 1 81 0
	mov	r5, r1
	mov	r6, r2
	mov	r4, r0
	.loc 1 82 0
	mov	r0, #5
.LVL57:
	bl	irqDisable
.LVL58:
	.loc 1 83 0
	mov	r1, r5
	mov	r2, r6
	mov	r0, r4
	bl	read
	.loc 1 84 0
	mov	r0, #5
	bl	irqEnable
.LBB40:
.LBB41:
	.loc 3 337 0
	ldr	r7, .L103
.LBE41:
.LBE40:
	.loc 1 86 0
	@ sp needed for prologue
.LVL59:
.LVL60:
.LVL61:
	pop	{r4, r5, r6, pc}
.L104:
	.align	2
.L103:
	.word	g_neoContext
.LFE115:
	.size	systemRead, .-systemRead
	.bss
	.align	2
g_ms:
	.space	4
	.align	2
g_slot2Heap:
	.space	12
	.align	2
g_ramHeap:
	.space	12
	.align	5
g_mainRam:
	.space	1662976
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
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.byte	0x4
	.4byte	.LCFI0-.LFB131
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.byte	0x4
	.4byte	.LCFI2-.LFB130
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x18
	.byte	0x84
	.uleb128 0x6
	.byte	0x85
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.byte	0x4
	.4byte	.LCFI5-.LFB129
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
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.byte	0x4
	.4byte	.LCFI7-.LFB128
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.byte	0x4
	.4byte	.LCFI9-.LFB127
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.byte	0x4
	.4byte	.LCFI11-.LFB124
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.byte	0x4
	.4byte	.LCFI13-.LFB126
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.byte	0x4
	.4byte	.LCFI15-.LFB123
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.byte	0x4
	.4byte	.LCFI17-.LFB125
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.byte	0x4
	.4byte	.LCFI19-.LFB122
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.byte	0x4
	.4byte	.LCFI21-.LFB121
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.byte	0x4
	.4byte	.LCFI23-.LFB120
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.byte	0x4
	.4byte	.LCFI25-.LFB114
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
	.4byte	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI27-.LFB112
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI29-.LFB111
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.byte	0x4
	.4byte	.LCFI31-.LFB113
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.byte	0x4
	.4byte	.LCFI33-.LFB119
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x50
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.byte	0x4
	.4byte	.LCFI35-.LFB118
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.byte	0x4
	.4byte	.LCFI36-.LFB117
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
	.4byte	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.byte	0x4
	.4byte	.LCFI38-.LFB116
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
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.byte	0x4
	.4byte	.LCFI39-.LFB115
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
.LEFDE44:
	.file 4 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 5 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 6 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stdarg.h"
	.file 7 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/stat.h"
	.file 8 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/types.h"
	.file 9 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 10 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/LinearHeap.h"
	.file 11 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.file 12 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h"
	.file 13 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h"
	.file 14 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LFB131-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE131-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE131-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB130-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE130-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE130-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE130-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE130-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE130-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB129-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE129-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB128-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE128-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB127-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE127-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB124-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE124-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB126-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE126-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB123-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE123-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LFB125-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE125-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LFB122-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI20-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB121-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LFB120-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LFB114-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI25-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LFB112-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI28-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI30-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LFB113-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI31-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI32-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LFB119-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI33-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI34-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 80
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LFB118-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI35-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LFB117-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI37-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL45-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LFB116-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI38-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LFB115-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x12f3
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF234
	.byte	0x1
	.4byte	.LASF235
	.4byte	.LASF236
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x5
	.byte	0x2e
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x5
	.byte	0x39
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x5
	.byte	0x3a
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x5
	.byte	0x53
	.4byte	0x6d
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x5
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
	.byte	0x4
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
	.byte	0x4
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x4
	.byte	0x60
	.4byte	0x50
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x4
	.byte	0x61
	.4byte	0x74
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x4
	.byte	0x65
	.4byte	0x3e
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x4
	.byte	0x66
	.4byte	0x62
	.uleb128 0x6
	.4byte	0xd0
	.uleb128 0x7
	.4byte	0x10b
	.byte	0x1
	.byte	0x4
	.byte	0x81
	.uleb128 0x8
	.4byte	.LASF17
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF18
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x81
	.4byte	0xf6
	.uleb128 0x9
	.byte	0x4
	.4byte	0x11c
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x9
	.byte	0x4
	.4byte	0x124
	.uleb128 0xb
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x1
	.byte	0x8
	.uleb128 0x7
	.4byte	0x154
	.byte	0x1
	.byte	0x9
	.byte	0x9b
	.uleb128 0x8
	.4byte	.LASF21
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF22
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF23
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF24
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x9
	.byte	0xa0
	.4byte	0x133
	.uleb128 0xc
	.4byte	0x1d7
	.2byte	0x2018
	.byte	0x9
	.2byte	0x119
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x9
	.2byte	0x11a
	.4byte	0x154
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x9
	.2byte	0x11d
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x9
	.2byte	0x120
	.4byte	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x9
	.2byte	0x121
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x9
	.2byte	0x122
	.4byte	0x1e8
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x9
	.2byte	0x123
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x9
	.2byte	0x124
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.byte	0x0
	.uleb128 0xe
	.4byte	0x1e8
	.4byte	0xa2
	.uleb128 0xf
	.4byte	0x125
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x9
	.2byte	0x126
	.4byte	0x15f
	.uleb128 0x11
	.byte	0x4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x202
	.uleb128 0x12
	.4byte	0x12c
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x6
	.byte	0x2b
	.4byte	0x212
	.uleb128 0x11
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x8
	.byte	0x6d
	.4byte	0x6d
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0x85
	.4byte	0x9b
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x8
	.byte	0xa6
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x8
	.byte	0xab
	.4byte	0x6d
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x8
	.byte	0xad
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x8
	.byte	0xae
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x8
	.byte	0xc3
	.4byte	0x9b
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x8
	.byte	0xc8
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x6
	.byte	0x69
	.4byte	0x207
	.uleb128 0x13
	.4byte	0x40d
	.4byte	.LASF73
	.byte	0xb0
	.byte	0xd
	.byte	0x15
	.uleb128 0x14
	.ascii	"d\000"
	.byte	0xd
	.byte	0x16
	.4byte	0x40d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.ascii	"a\000"
	.byte	0xd
	.byte	0x17
	.4byte	0x40d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.ascii	"pc\000"
	.byte	0xd
	.byte	0x18
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x14
	.ascii	"srh\000"
	.byte	0xd
	.byte	0x19
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF44
	.byte	0xd
	.byte	0x1a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x15
	.4byte	.LASF45
	.byte	0xd
	.byte	0x1b
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x14
	.ascii	"irq\000"
	.byte	0xd
	.byte	0x1c
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x14
	.ascii	"osp\000"
	.byte	0xd
	.byte	0x1d
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x14
	.ascii	"xc\000"
	.byte	0xd
	.byte	0x1e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0xd
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0xd
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0xd
	.byte	0x21
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0xd
	.byte	0x22
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0xd
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0xd
	.byte	0x24
	.4byte	0x42d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0xd
	.byte	0x25
	.4byte	0x42d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0xd
	.byte	0x26
	.4byte	0x42d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0xd
	.byte	0x27
	.4byte	0x42d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF55
	.byte	0xd
	.byte	0x28
	.4byte	0x444
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x15
	.4byte	.LASF56
	.byte	0xd
	.byte	0x29
	.4byte	0x45b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0xd
	.byte	0x2a
	.4byte	0x472
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0xd
	.byte	0x2b
	.4byte	0x42d
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0xd
	.byte	0x2c
	.4byte	0x42d
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0xd
	.byte	0x2d
	.4byte	0x42d
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0xd
	.byte	0x2e
	.4byte	0x488
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0xd
	.byte	0x2f
	.4byte	0x116
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0xd
	.byte	0x30
	.4byte	0x494
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0xd
	.byte	0x31
	.4byte	0x49a
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xe
	.4byte	0x41d
	.4byte	0x9b
	.uleb128 0x16
	.4byte	0x125
	.byte	0x7
	.byte	0x0
	.uleb128 0x17
	.4byte	0x42d
	.byte	0x1
	.4byte	0x9b
	.uleb128 0x18
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x41d
	.uleb128 0x19
	.4byte	0x444
	.byte	0x1
	.uleb128 0x18
	.4byte	0x9b
	.uleb128 0x18
	.4byte	0x37
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x433
	.uleb128 0x19
	.4byte	0x45b
	.byte	0x1
	.uleb128 0x18
	.4byte	0x9b
	.uleb128 0x18
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x44a
	.uleb128 0x19
	.4byte	0x472
	.byte	0x1
	.uleb128 0x18
	.4byte	0x9b
	.uleb128 0x18
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x461
	.uleb128 0x17
	.4byte	0x488
	.byte	0x1
	.4byte	0x94
	.uleb128 0x18
	.4byte	0x94
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x478
	.uleb128 0x1a
	.byte	0x1
	.4byte	0x94
	.uleb128 0x9
	.byte	0x4
	.4byte	0x48e
	.uleb128 0xe
	.4byte	0x4aa
	.4byte	0x9b
	.uleb128 0x16
	.4byte	0x125
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xc
	.byte	0x6
	.4byte	0x277
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xc
	.byte	0x8
	.4byte	0x4c0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4c6
	.uleb128 0x17
	.4byte	0x4d6
	.byte	0x1
	.4byte	0xbb
	.uleb128 0x18
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xc
	.byte	0x9
	.4byte	0x4e1
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4e7
	.uleb128 0x17
	.4byte	0x4f7
	.byte	0x1
	.4byte	0xc5
	.uleb128 0x18
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xc
	.byte	0xa
	.4byte	0x502
	.uleb128 0x9
	.byte	0x4
	.4byte	0x508
	.uleb128 0x17
	.4byte	0x518
	.byte	0x1
	.4byte	0xd0
	.uleb128 0x18
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0xc
	.byte	0xc
	.4byte	0x523
	.uleb128 0x9
	.byte	0x4
	.4byte	0x529
	.uleb128 0x19
	.4byte	0x53a
	.byte	0x1
	.uleb128 0x18
	.4byte	0xd0
	.uleb128 0x18
	.4byte	0xbb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xc
	.byte	0xd
	.4byte	0x545
	.uleb128 0x9
	.byte	0x4
	.4byte	0x54b
	.uleb128 0x19
	.4byte	0x55c
	.byte	0x1
	.uleb128 0x18
	.4byte	0xd0
	.uleb128 0x18
	.4byte	0xc5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xc
	.byte	0xe
	.4byte	0x567
	.uleb128 0x9
	.byte	0x4
	.4byte	0x56d
	.uleb128 0x19
	.4byte	0x57e
	.byte	0x1
	.uleb128 0x18
	.4byte	0xd0
	.uleb128 0x18
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xc
	.byte	0x10
	.4byte	0x502
	.uleb128 0x13
	.4byte	0x5ce
	.4byte	.LASF74
	.byte	0xc
	.byte	0xe
	.byte	0x17
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0xe
	.byte	0x18
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.ascii	"end\000"
	.byte	0xe
	.byte	0x19
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.ascii	"acc\000"
	.byte	0xe
	.byte	0x1a
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0xe
	.byte	0x1b
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xe
	.byte	0x1c
	.4byte	0x589
	.uleb128 0x13
	.4byte	0x610
	.4byte	.LASF78
	.byte	0xc
	.byte	0xe
	.byte	0x1f
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0xe
	.byte	0x20
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0xe
	.byte	0x21
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0xe
	.byte	0x22
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0xe
	.byte	0x23
	.4byte	0x5d9
	.uleb128 0x1b
	.4byte	0xa09
	.2byte	0x248
	.byte	0x3
	.byte	0xc0
	.uleb128 0x14
	.ascii	"cpu\000"
	.byte	0x3
	.byte	0xc1
	.4byte	0x4aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x3
	.byte	0xc4
	.4byte	0xa09
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x3
	.byte	0xc7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x3
	.byte	0xc8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x3
	.byte	0xcb
	.4byte	0xa19
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x3
	.byte	0xcc
	.4byte	0x610
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x3
	.byte	0xcd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x3
	.byte	0xd0
	.4byte	0xa29
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x3
	.byte	0xd1
	.4byte	0xa29
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x3
	.byte	0xd2
	.4byte	0xa29
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x3
	.byte	0xd3
	.4byte	0xa29
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x3
	.byte	0xd4
	.4byte	0xa29
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x3
	.byte	0xd5
	.4byte	0xa29
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x3
	.byte	0xd6
	.4byte	0xa2f
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x3
	.byte	0xd7
	.4byte	0xa2f
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x3
	.byte	0xd8
	.4byte	0xa2f
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x3
	.byte	0xda
	.4byte	0xa35
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x3
	.byte	0xdd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x3
	.byte	0xde
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x3
	.byte	0xdf
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x3
	.byte	0xe0
	.4byte	0xa46
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x3
	.byte	0xe1
	.4byte	0xa46
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x3
	.byte	0xe2
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x3
	.byte	0xe5
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x3
	.byte	0xe6
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x3
	.byte	0xe7
	.4byte	0xa2f
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x3
	.byte	0xe8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x3
	.byte	0xea
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x3
	.byte	0xeb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x3
	.byte	0xec
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x3
	.byte	0xed
	.4byte	0xa51
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x3
	.byte	0xee
	.4byte	0xa2f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x3
	.byte	0xf1
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x3
	.byte	0xf2
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x3
	.byte	0xf3
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x3
	.byte	0xf4
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x3
	.byte	0xf7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x3
	.byte	0xf8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x3
	.byte	0xf9
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x15
	.4byte	.LASF121
	.byte	0x3
	.byte	0xfa
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x15
	.4byte	.LASF122
	.byte	0x3
	.byte	0xfb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x15
	.4byte	.LASF123
	.byte	0x3
	.byte	0xfc
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x15
	.4byte	.LASF124
	.byte	0x3
	.byte	0xfd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.4byte	.LASF125
	.byte	0x3
	.2byte	0x102
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0x3
	.2byte	0x103
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xd
	.4byte	.LASF127
	.byte	0x3
	.2byte	0x106
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xd
	.4byte	.LASF128
	.byte	0x3
	.2byte	0x108
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xd
	.4byte	.LASF129
	.byte	0x3
	.2byte	0x109
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.4byte	.LASF130
	.byte	0x3
	.2byte	0x10a
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.4byte	.LASF131
	.byte	0x3
	.2byte	0x10b
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.4byte	.LASF132
	.byte	0x3
	.2byte	0x10d
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.4byte	.LASF133
	.byte	0x3
	.2byte	0x10e
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.4byte	.LASF134
	.byte	0x3
	.2byte	0x10f
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.4byte	.LASF135
	.byte	0x3
	.2byte	0x110
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.4byte	.LASF136
	.byte	0x3
	.2byte	0x111
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xd
	.4byte	.LASF137
	.byte	0x3
	.2byte	0x114
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xd
	.4byte	.LASF138
	.byte	0x3
	.2byte	0x115
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xd
	.4byte	.LASF139
	.byte	0x3
	.2byte	0x116
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xd
	.4byte	.LASF140
	.byte	0x3
	.2byte	0x117
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xd
	.4byte	.LASF141
	.byte	0x3
	.2byte	0x118
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xd
	.4byte	.LASF142
	.byte	0x3
	.2byte	0x11b
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xd
	.4byte	.LASF143
	.byte	0x3
	.2byte	0x11c
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xd
	.4byte	.LASF144
	.byte	0x3
	.2byte	0x11f
	.4byte	0xa61
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xd
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x122
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xd
	.4byte	.LASF146
	.byte	0x3
	.2byte	0x123
	.4byte	0xa71
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xe
	.4byte	0xa19
	.4byte	0x1fa
	.uleb128 0x16
	.4byte	0x125
	.byte	0x8
	.byte	0x0
	.uleb128 0xe
	.4byte	0xa29
	.4byte	0x5ce
	.uleb128 0x16
	.4byte	0x125
	.byte	0x6
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x9
	.byte	0x4
	.4byte	0xc5
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa3b
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa41
	.uleb128 0x12
	.4byte	0xbb
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa4c
	.uleb128 0x12
	.4byte	0xd0
	.uleb128 0xe
	.4byte	0xa61
	.4byte	0xd0
	.uleb128 0x16
	.4byte	0x125
	.byte	0xf
	.byte	0x0
	.uleb128 0xe
	.4byte	0xa71
	.4byte	0xbb
	.uleb128 0x16
	.4byte	0x125
	.byte	0x7
	.byte	0x0
	.uleb128 0xe
	.4byte	0xa80
	.4byte	0xbb
	.uleb128 0x1c
	.4byte	0x125
	.byte	0x0
	.uleb128 0x1d
	.4byte	0xa9b
	.2byte	0x400
	.byte	0x3
	.byte	0xbf
	.uleb128 0x1e
	.4byte	0x61b
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0x3
	.2byte	0x125
	.4byte	0xa9b
	.byte	0x0
	.uleb128 0xe
	.4byte	0xaab
	.4byte	0xd0
	.uleb128 0x16
	.4byte	0x125
	.byte	0xff
	.byte	0x0
	.uleb128 0x20
	.4byte	0xb31
	.4byte	.LASF148
	.2byte	0x2000
	.byte	0x3
	.byte	0xbe
	.uleb128 0x21
	.4byte	0xa80
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF149
	.byte	0x3
	.2byte	0x128
	.4byte	0xb31
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xd
	.4byte	.LASF150
	.byte	0x3
	.2byte	0x129
	.4byte	0xb41
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xd
	.4byte	.LASF151
	.byte	0x3
	.2byte	0x12a
	.4byte	0xb51
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xd
	.4byte	.LASF152
	.byte	0x3
	.2byte	0x12b
	.4byte	0xb61
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xd
	.4byte	.LASF153
	.byte	0x3
	.2byte	0x12c
	.4byte	0xb71
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xd
	.4byte	.LASF154
	.byte	0x3
	.2byte	0x12d
	.4byte	0xb81
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xd
	.4byte	.LASF155
	.byte	0x3
	.2byte	0x12e
	.4byte	0xb91
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xe
	.4byte	0xb41
	.4byte	0x4b5
	.uleb128 0x16
	.4byte	0x125
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	0xb51
	.4byte	0x4d6
	.uleb128 0x16
	.4byte	0x125
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	0xb61
	.4byte	0x4f7
	.uleb128 0x16
	.4byte	0x125
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	0xb71
	.4byte	0x518
	.uleb128 0x16
	.4byte	0x125
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	0xb81
	.4byte	0x53a
	.uleb128 0x16
	.4byte	0x125
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	0xb91
	.4byte	0x55c
	.uleb128 0x16
	.4byte	0x125
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	0xba1
	.4byte	0x57e
	.uleb128 0x16
	.4byte	0x125
	.byte	0xff
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF156
	.byte	0x3
	.2byte	0x12f
	.4byte	0xaab
	.uleb128 0x13
	.4byte	0xca8
	.4byte	.LASF157
	.byte	0x44
	.byte	0x7
	.byte	0x1a
	.uleb128 0x15
	.4byte	.LASF158
	.byte	0x7
	.byte	0x1b
	.4byte	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF159
	.byte	0x7
	.byte	0x1c
	.4byte	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF160
	.byte	0x7
	.byte	0x1d
	.4byte	0x256
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF161
	.byte	0x7
	.byte	0x1e
	.4byte	0x261
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF162
	.byte	0x7
	.byte	0x1f
	.4byte	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x15
	.4byte	.LASF163
	.byte	0x7
	.byte	0x20
	.4byte	0x24b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF164
	.byte	0x7
	.byte	0x21
	.4byte	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF165
	.byte	0x7
	.byte	0x22
	.4byte	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.4byte	.LASF166
	.byte	0x7
	.byte	0x29
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x15
	.4byte	.LASF167
	.byte	0x7
	.byte	0x2a
	.4byte	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.4byte	.LASF168
	.byte	0x7
	.byte	0x2b
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF169
	.byte	0x7
	.byte	0x2c
	.4byte	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.4byte	.LASF170
	.byte	0x7
	.byte	0x2d
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x15
	.4byte	.LASF171
	.byte	0x7
	.byte	0x2e
	.4byte	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF172
	.byte	0x7
	.byte	0x2f
	.4byte	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF173
	.byte	0x7
	.byte	0x30
	.4byte	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.4byte	.LASF174
	.byte	0x7
	.byte	0x31
	.4byte	0xca8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0xe
	.4byte	0xcb8
	.4byte	0x6d
	.uleb128 0x16
	.4byte	0x125
	.byte	0x1
	.byte	0x0
	.uleb128 0x13
	.4byte	0xcef
	.4byte	.LASF175
	.byte	0xc
	.byte	0xa
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF176
	.byte	0xa
	.byte	0x5
	.4byte	0xa29
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF177
	.byte	0xa
	.byte	0x6
	.4byte	0xa29
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF178
	.byte	0xa
	.byte	0x7
	.4byte	0xa29
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF179
	.byte	0xa
	.byte	0x8
	.4byte	0xcb8
	.uleb128 0x22
	.4byte	.LASF203
	.byte	0x1
	.byte	0x26
	.4byte	.LFB109
	.4byte	.LFE109
	.byte	0x1
	.byte	0x5d
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF187
	.byte	0x1
	.byte	0x2b
	.4byte	0xd0
	.4byte	.LFB110
	.4byte	.LFE110
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.4byte	0xd59
	.byte	0x1
	.4byte	.LASF180
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.4byte	.LFB131
	.4byte	.LFE131
	.4byte	.LLST2
	.uleb128 0x25
	.4byte	.LASF182
	.byte	0x1
	.byte	0xee
	.4byte	0x1fc
	.4byte	.LLST3
	.uleb128 0x26
	.4byte	.LASF186
	.byte	0x1
	.byte	0xf0
	.4byte	0xd0
	.4byte	.LLST4
	.byte	0x0
	.uleb128 0x24
	.4byte	0xdae
	.byte	0x1
	.4byte	.LASF181
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.4byte	.LFB130
	.4byte	.LFE130
	.4byte	.LLST5
	.uleb128 0x25
	.4byte	.LASF183
	.byte	0x1
	.byte	0xde
	.4byte	0x1fc
	.4byte	.LLST6
	.uleb128 0x25
	.4byte	.LASF184
	.byte	0x1
	.byte	0xde
	.4byte	0xd0
	.4byte	.LLST7
	.uleb128 0x25
	.4byte	.LASF185
	.byte	0x1
	.byte	0xde
	.4byte	0x1fc
	.4byte	.LLST8
	.uleb128 0x27
	.uleb128 0x28
	.ascii	"v\000"
	.byte	0x1
	.byte	0xe0
	.4byte	0x26c
	.4byte	.LLST9
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF188
	.byte	0x1
	.byte	0xcf
	.4byte	.LFB129
	.4byte	.LFE129
	.4byte	.LLST10
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF189
	.byte	0x1
	.byte	0xca
	.4byte	.LFB128
	.4byte	.LFE128
	.4byte	.LLST11
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF190
	.byte	0x1
	.byte	0xc4
	.4byte	.LFB127
	.4byte	.LFE127
	.4byte	.LLST12
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF191
	.byte	0x1
	.byte	0xb5
	.4byte	.LFB124
	.4byte	.LFE124
	.4byte	.LLST13
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF192
	.byte	0x1
	.byte	0xbf
	.4byte	0xd0
	.4byte	.LFB126
	.4byte	.LFE126
	.4byte	.LLST14
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF193
	.byte	0x1
	.byte	0xb0
	.4byte	0xd0
	.4byte	.LFB123
	.4byte	.LFE123
	.4byte	.LLST15
	.uleb128 0x2b
	.4byte	0xe5b
	.byte	0x1
	.4byte	.LASF194
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.4byte	0x1fa
	.4byte	.LFB125
	.4byte	.LFE125
	.4byte	.LLST16
	.uleb128 0x25
	.4byte	.LASF195
	.byte	0x1
	.byte	0xb9
	.4byte	0xd0
	.4byte	.LLST17
	.byte	0x0
	.uleb128 0x2b
	.4byte	0xe88
	.byte	0x1
	.4byte	.LASF196
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.4byte	0x1fa
	.4byte	.LFB122
	.4byte	.LFE122
	.4byte	.LLST18
	.uleb128 0x25
	.4byte	.LASF195
	.byte	0x1
	.byte	0xaa
	.4byte	0xd0
	.4byte	.LLST19
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF197
	.byte	0x1
	.byte	0xa6
	.4byte	0x10b
	.4byte	.LFB121
	.4byte	.LFE121
	.4byte	.LLST20
	.uleb128 0x2c
	.4byte	0xeb8
	.4byte	.LASF237
	.byte	0x2
	.byte	0x59
	.byte	0x1
	.byte	0x3
	.uleb128 0x2d
	.ascii	"on\000"
	.byte	0x2
	.byte	0x59
	.4byte	0x94
	.byte	0x0
	.uleb128 0x2e
	.4byte	0xf24
	.byte	0x1
	.4byte	.LASF198
	.byte	0x1
	.byte	0x82
	.4byte	0x10b
	.4byte	.LFB120
	.4byte	.LFE120
	.4byte	.LLST21
	.uleb128 0x2f
	.4byte	.LASF199
	.byte	0x1
	.byte	0x8d
	.4byte	0x10b
	.uleb128 0x2f
	.4byte	.LASF200
	.byte	0x1
	.byte	0x93
	.4byte	0x10b
	.uleb128 0x30
	.4byte	0xeff
	.4byte	0xea0
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x8a
	.uleb128 0x31
	.4byte	0xead
	.byte	0x0
	.uleb128 0x32
	.4byte	.LBB11
	.4byte	.LBE11
	.uleb128 0x2f
	.4byte	.LASF201
	.byte	0x1
	.byte	0x95
	.4byte	0xf24
	.uleb128 0x26
	.4byte	.LASF202
	.byte	0x1
	.byte	0x96
	.4byte	0xd0
	.4byte	.LLST22
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xf2a
	.uleb128 0x33
	.uleb128 0x34
	.4byte	.LASF204
	.byte	0x3
	.2byte	0x151
	.byte	0x3
	.uleb128 0x24
	.4byte	0xf99
	.byte	0x1
	.4byte	.LASF205
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LLST23
	.uleb128 0x25
	.4byte	.LASF206
	.byte	0x1
	.byte	0x47
	.4byte	0xe6
	.4byte	.LLST24
	.uleb128 0x25
	.4byte	.LASF207
	.byte	0x1
	.byte	0x47
	.4byte	0x1fa
	.4byte	.LLST25
	.uleb128 0x25
	.4byte	.LASF75
	.byte	0x1
	.byte	0x47
	.4byte	0xd0
	.4byte	.LLST26
	.uleb128 0x25
	.4byte	.LASF195
	.byte	0x1
	.byte	0x47
	.4byte	0xd0
	.4byte	.LLST27
	.uleb128 0x35
	.4byte	0xf2b
	.4byte	.LBB14
	.4byte	.LBE14
	.byte	0x1
	.byte	0x4d
	.byte	0x0
	.uleb128 0x2b
	.4byte	0xfe0
	.byte	0x1
	.4byte	.LASF208
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.4byte	0x1fa
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST28
	.uleb128 0x36
	.ascii	"p\000"
	.byte	0x1
	.byte	0x36
	.4byte	0x1fa
	.4byte	.LLST29
	.uleb128 0x25
	.4byte	.LASF195
	.byte	0x1
	.byte	0x36
	.4byte	0xd0
	.4byte	.LLST30
	.uleb128 0x37
	.4byte	.LASF209
	.byte	0x1
	.byte	0x38
	.4byte	0x1fa
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2b
	.4byte	0x1018
	.byte	0x1
	.4byte	.LASF210
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.4byte	0x1fa
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST31
	.uleb128 0x25
	.4byte	.LASF195
	.byte	0x1
	.byte	0x2f
	.4byte	0xd0
	.4byte	.LLST32
	.uleb128 0x2f
	.4byte	.LASF209
	.byte	0x1
	.byte	0x31
	.4byte	0x1fa
	.byte	0x0
	.uleb128 0x2b
	.4byte	0x1080
	.byte	0x1
	.4byte	.LASF211
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.4byte	0xe6
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST33
	.uleb128 0x25
	.4byte	.LASF212
	.byte	0x1
	.byte	0x3d
	.4byte	0x1fc
	.4byte	.LLST34
	.uleb128 0x25
	.4byte	.LASF213
	.byte	0x1
	.byte	0x3d
	.4byte	0x10b
	.4byte	.LLST35
	.uleb128 0x26
	.4byte	.LASF214
	.byte	0x1
	.byte	0x3f
	.4byte	0x94
	.4byte	.LLST36
	.uleb128 0x28
	.ascii	"fd\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x94
	.4byte	.LLST37
	.uleb128 0x35
	.4byte	0xf2b
	.4byte	.LBB18
	.4byte	.LBE18
	.byte	0x1
	.byte	0x43
	.byte	0x0
	.uleb128 0x2b
	.4byte	0x10cb
	.byte	0x1
	.4byte	.LASF215
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.4byte	0xd0
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LLST38
	.uleb128 0x25
	.4byte	.LASF206
	.byte	0x1
	.byte	0x77
	.4byte	0xe6
	.4byte	.LLST39
	.uleb128 0x37
	.4byte	.LASF216
	.byte	0x1
	.byte	0x79
	.4byte	0xbad
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x35
	.4byte	0xf2b
	.4byte	.LBB22
	.4byte	.LBE22
	.byte	0x1
	.byte	0x7d
	.byte	0x0
	.uleb128 0x24
	.4byte	0x1103
	.byte	0x1
	.4byte	.LASF217
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LLST40
	.uleb128 0x25
	.4byte	.LASF206
	.byte	0x1
	.byte	0x6f
	.4byte	0xe6
	.4byte	.LLST41
	.uleb128 0x35
	.4byte	0xf2b
	.4byte	.LBB26
	.4byte	.LBE26
	.byte	0x1
	.byte	0x74
	.byte	0x0
	.uleb128 0x24
	.4byte	0x1176
	.byte	0x1
	.4byte	.LASF218
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LLST42
	.uleb128 0x25
	.4byte	.LASF206
	.byte	0x1
	.byte	0x60
	.4byte	0xe6
	.4byte	.LLST43
	.uleb128 0x25
	.4byte	.LASF219
	.byte	0x1
	.byte	0x60
	.4byte	0x11e
	.4byte	.LLST44
	.uleb128 0x25
	.4byte	.LASF195
	.byte	0x1
	.byte	0x60
	.4byte	0xd0
	.4byte	.LLST45
	.uleb128 0x38
	.4byte	0x1166
	.4byte	.LBB31
	.4byte	.LBE31
	.uleb128 0x26
	.4byte	.LASF220
	.byte	0x1
	.byte	0x64
	.4byte	0xd0
	.4byte	.LLST46
	.byte	0x0
	.uleb128 0x35
	.4byte	0xf2b
	.4byte	.LBB32
	.4byte	.LBE32
	.byte	0x1
	.byte	0x6c
	.byte	0x0
	.uleb128 0x24
	.4byte	0x11cc
	.byte	0x1
	.4byte	.LASF221
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.4byte	.LFB116
	.4byte	.LFE116
	.4byte	.LLST47
	.uleb128 0x25
	.4byte	.LASF206
	.byte	0x1
	.byte	0x58
	.4byte	0xe6
	.4byte	.LLST48
	.uleb128 0x25
	.4byte	.LASF75
	.byte	0x1
	.byte	0x58
	.4byte	0xe6
	.4byte	.LLST49
	.uleb128 0x25
	.4byte	.LASF222
	.byte	0x1
	.byte	0x58
	.4byte	0x10b
	.4byte	.LLST50
	.uleb128 0x35
	.4byte	0xf2b
	.4byte	.LBB36
	.4byte	.LBE36
	.byte	0x1
	.byte	0x5d
	.byte	0x0
	.uleb128 0x24
	.4byte	0x1222
	.byte	0x1
	.4byte	.LASF223
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LLST51
	.uleb128 0x25
	.4byte	.LASF206
	.byte	0x1
	.byte	0x50
	.4byte	0xe6
	.4byte	.LLST52
	.uleb128 0x25
	.4byte	.LASF207
	.byte	0x1
	.byte	0x50
	.4byte	0x1fa
	.4byte	.LLST53
	.uleb128 0x25
	.4byte	.LASF195
	.byte	0x1
	.byte	0x50
	.4byte	0xd0
	.4byte	.LLST54
	.uleb128 0x35
	.4byte	0xf2b
	.4byte	.LBB40
	.4byte	.LBE40
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF224
	.byte	0x9
	.2byte	0x129
	.4byte	0x122e
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1ee
	.uleb128 0x37
	.4byte	.LASF225
	.byte	0x1
	.byte	0x15
	.4byte	0xf1
	.byte	0x5
	.byte	0x3
	.4byte	g_ms
	.uleb128 0x37
	.4byte	.LASF226
	.byte	0x1
	.byte	0x16
	.4byte	0xcef
	.byte	0x5
	.byte	0x3
	.4byte	g_slot2Heap
	.uleb128 0x37
	.4byte	.LASF227
	.byte	0x1
	.byte	0x17
	.4byte	0xcef
	.byte	0x5
	.byte	0x3
	.4byte	g_ramHeap
	.uleb128 0xe
	.4byte	0x127a
	.4byte	0xbb
	.uleb128 0x3a
	.4byte	0x125
	.4byte	0x195fff
	.byte	0x0
	.uleb128 0x37
	.4byte	.LASF228
	.byte	0x1
	.byte	0x18
	.4byte	0x1267
	.byte	0x5
	.byte	0x3
	.4byte	g_mainRam
	.uleb128 0xe
	.4byte	0x1296
	.4byte	0x49
	.uleb128 0x3b
	.byte	0x0
	.uleb128 0x3c
	.4byte	.LASF229
	.byte	0xb
	.byte	0x2c
	.4byte	0x128b
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x12ae
	.4byte	0x49
	.uleb128 0x3b
	.byte	0x0
	.uleb128 0x3c
	.4byte	.LASF230
	.byte	0xb
	.byte	0x2d
	.4byte	0x12a3
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x12c6
	.4byte	0x49
	.uleb128 0x3b
	.byte	0x0
	.uleb128 0x3c
	.4byte	.LASF231
	.byte	0xb
	.byte	0x2e
	.4byte	0x12bb
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.4byte	.LASF232
	.byte	0x3
	.2byte	0x149
	.4byte	0x12e2
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x9
	.byte	0x4
	.4byte	0xba1
	.uleb128 0x3e
	.4byte	.LASF233
	.byte	0x3
	.2byte	0x14d
	.4byte	0xba1
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x14
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x23
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
	.uleb128 0xa
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x18
	.byte	0x0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0x35
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x1b0
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x12f7
	.4byte	0xd0b
	.ascii	"systemGetMs\000"
	.4byte	0xd21
	.ascii	"systemWaitKey\000"
	.4byte	0xd59
	.ascii	"systemPanic_d\000"
	.4byte	0xdae
	.ascii	"systemSlot2Lock\000"
	.4byte	0xdc2
	.ascii	"systemSlot2Unlock\000"
	.4byte	0xdd6
	.ascii	"systemSlot2Reset\000"
	.4byte	0xdea
	.ascii	"systemRamReset\000"
	.4byte	0xdfe
	.ascii	"systemGetSlot2Free\000"
	.4byte	0xe16
	.ascii	"systemGetRamFree\000"
	.4byte	0xe2e
	.ascii	"systemSlot2Alloc\000"
	.4byte	0xe5b
	.ascii	"systemRamAlloc\000"
	.4byte	0xe88
	.ascii	"systemIsSlot2Active\000"
	.4byte	0xeb8
	.ascii	"systemInit\000"
	.4byte	0xf34
	.ascii	"systemReadOffset\000"
	.4byte	0xf99
	.ascii	"systemRealloc\000"
	.4byte	0xfe0
	.ascii	"systemAlloc\000"
	.4byte	0x1018
	.ascii	"systemOpen\000"
	.4byte	0x1080
	.ascii	"systemFileSize\000"
	.4byte	0x10cb
	.ascii	"systemClose\000"
	.4byte	0x1103
	.ascii	"systemWrite\000"
	.4byte	0x1176
	.ascii	"systemSeek\000"
	.4byte	0x11cc
	.ascii	"systemRead\000"
	.4byte	0x12d3
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
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF209:
	.ascii	"pRet\000"
.LASF27:
	.ascii	"clearColor\000"
.LASF182:
	.ascii	"szText\000"
.LASF51:
	.ascii	"checkpc\000"
.LASF55:
	.ascii	"write8\000"
.LASF103:
	.ascii	"smaBankbit\000"
.LASF155:
	.ascii	"cpuCheckPcTable\000"
.LASF111:
	.ascii	"spriteMask\000"
.LASF134:
	.ascii	"ctrl3Reg\000"
.LASF212:
	.ascii	"szFileName\000"
.LASF60:
	.ascii	"fetch32\000"
.LASF187:
	.ascii	"systemGetMs\000"
.LASF119:
	.ascii	"cpuClocksPerScanline\000"
.LASF67:
	.ascii	"TRead16Func\000"
.LASF85:
	.ascii	"romBankCount\000"
.LASF114:
	.ascii	"tileOffsetX\000"
.LASF153:
	.ascii	"cpuWrite16Table\000"
.LASF14:
	.ascii	"uint32\000"
.LASF200:
	.ascii	"ramOk\000"
.LASF37:
	.ascii	"dev_t\000"
.LASF23:
	.ascii	"GL_MODELVIEW\000"
.LASF116:
	.ascii	"tileScaleX\000"
.LASF117:
	.ascii	"tileScaleY\000"
.LASF35:
	.ascii	"time_t\000"
.LASF222:
	.ascii	"relative\000"
.LASF216:
	.ascii	"fileStat\000"
.LASF56:
	.ascii	"write16\000"
.LASF72:
	.ascii	"TCheckPcFunc\000"
.LASF146:
	.ascii	"varEnd\000"
.LASF69:
	.ascii	"TWrite8Func\000"
.LASF225:
	.ascii	"g_ms\000"
.LASF52:
	.ascii	"read8\000"
.LASF181:
	.ascii	"systemPanic_d\000"
.LASF204:
	.ascii	"neoResetContext\000"
.LASF168:
	.ascii	"st_mtime\000"
.LASF235:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/EmuSystem.c\000"
.LASF39:
	.ascii	"uid_t\000"
.LASF82:
	.ascii	"TNeoADPCMBStream\000"
.LASF66:
	.ascii	"TRead8Func\000"
.LASF113:
	.ascii	"pTileBuffer\000"
.LASF151:
	.ascii	"cpuRead32Table\000"
.LASF25:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF8:
	.ascii	"long int\000"
.LASF81:
	.ascii	"frequency\000"
.LASF223:
	.ascii	"systemRead\000"
.LASF70:
	.ascii	"TWrite16Func\000"
.LASF58:
	.ascii	"fetch8\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF144:
	.ascii	"keyGrid\000"
.LASF188:
	.ascii	"systemSlot2Lock\000"
.LASF218:
	.ascii	"systemWrite\000"
.LASF201:
	.ascii	"pSlot2Ram\000"
.LASF57:
	.ascii	"write32\000"
.LASF208:
	.ascii	"systemRealloc\000"
.LASF220:
	.ascii	"sizeToWrite\000"
.LASF197:
	.ascii	"systemIsSlot2Active\000"
.LASF61:
	.ascii	"IrqCallback\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF135:
	.ascii	"ctrl4Reg\000"
.LASF214:
	.ascii	"mode\000"
.LASF167:
	.ascii	"st_spare1\000"
.LASF162:
	.ascii	"st_uid\000"
.LASF171:
	.ascii	"st_spare3\000"
.LASF174:
	.ascii	"st_spare4\000"
.LASF124:
	.ascii	"romBankAddress\000"
.LASF231:
	.ascii	"TAN_bin\000"
.LASF76:
	.ascii	"step\000"
.LASF88:
	.ascii	"adpcmActive\000"
.LASF164:
	.ascii	"st_rdev\000"
.LASF42:
	.ascii	"nlink_t\000"
.LASF108:
	.ascii	"vramBaseMask\000"
.LASF84:
	.ascii	"spriteCount\000"
.LASF207:
	.ascii	"pDst\000"
.LASF63:
	.ascii	"UnrecognizedCallback\000"
.LASF34:
	.ascii	"__gnuc_va_list\000"
.LASF203:
	.ascii	"timer0Intr\000"
.LASF178:
	.ascii	"pTop\000"
.LASF20:
	.ascii	"char\000"
.LASF211:
	.ascii	"systemOpen\000"
.LASF137:
	.ascii	"irqVectorLatch\000"
.LASF95:
	.ascii	"pVram\000"
.LASF184:
	.ascii	"line\000"
.LASF138:
	.ascii	"screenDarkLatch\000"
.LASF46:
	.ascii	"prev_pc\000"
.LASF78:
	.ascii	"_TNeoADPCMBStream\000"
.LASF193:
	.ascii	"systemGetRamFree\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF45:
	.ascii	"flags\000"
.LASF16:
	.ascii	"double\000"
.LASF110:
	.ascii	"autoAnimationCounter\000"
.LASF28:
	.ascii	"textures\000"
.LASF190:
	.ascii	"systemSlot2Reset\000"
.LASF22:
	.ascii	"GL_POSITION\000"
.LASF156:
	.ascii	"TNeoContext\000"
.LASF118:
	.ascii	"cpuClockDivide\000"
.LASF106:
	.ascii	"frameCount\000"
.LASF127:
	.ascii	"vramOffset\000"
.LASF170:
	.ascii	"st_ctime\000"
.LASF236:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF206:
	.ascii	"file\000"
.LASF147:
	.ascii	"fill\000"
.LASF49:
	.ascii	"cycles\000"
.LASF154:
	.ascii	"cpuWrite32Table\000"
.LASF141:
	.ascii	"paletteRamLatch\000"
.LASF163:
	.ascii	"st_gid\000"
.LASF173:
	.ascii	"st_blocks\000"
.LASF229:
	.ascii	"COS_bin\000"
.LASF92:
	.ascii	"pRam\000"
.LASF94:
	.ascii	"pCard\000"
.LASF109:
	.ascii	"displayCounter\000"
.LASF65:
	.ascii	"TCycloneContext\000"
.LASF121:
	.ascii	"watchdogCounter\000"
.LASF172:
	.ascii	"st_blksize\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF219:
	.ascii	"pSrc\000"
.LASF165:
	.ascii	"st_size\000"
.LASF150:
	.ascii	"cpuRead16Table\000"
.LASF130:
	.ascii	"displayControlMask\000"
.LASF175:
	.ascii	"_TLinearHeap\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF142:
	.ascii	"active\000"
.LASF73:
	.ascii	"Cyclone\000"
.LASF91:
	.ascii	"pBios\000"
.LASF213:
	.ascii	"write\000"
.LASF112:
	.ascii	"paletteDirty\000"
.LASF230:
	.ascii	"SIN_bin\000"
.LASF26:
	.ascii	"matrixMode\000"
.LASF30:
	.ascii	"nextBlock\000"
.LASF237:
	.ascii	"powerON\000"
.LASF157:
	.ascii	"stat\000"
.LASF215:
	.ascii	"systemFileSize\000"
.LASF149:
	.ascii	"cpuRead8Table\000"
.LASF180:
	.ascii	"systemWaitKey\000"
.LASF104:
	.ascii	"smaRand\000"
.LASF74:
	.ascii	"_TNeoADPCMStream\000"
.LASF71:
	.ascii	"TWrite32Func\000"
.LASF226:
	.ascii	"g_slot2Heap\000"
.LASF186:
	.ascii	"keys\000"
.LASF99:
	.ascii	"smaAddr0\000"
.LASF11:
	.ascii	"long long int\000"
.LASF21:
	.ascii	"GL_PROJECTION\000"
.LASF43:
	.ascii	"va_list\000"
.LASF136:
	.ascii	"coinReg\000"
.LASF79:
	.ascii	"initOffset\000"
.LASF210:
	.ascii	"systemAlloc\000"
.LASF64:
	.ascii	"internal\000"
.LASF59:
	.ascii	"fetch16\000"
.LASF100:
	.ascii	"smaAddr1\000"
.LASF44:
	.ascii	"unused\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF129:
	.ascii	"displayControl\000"
.LASF102:
	.ascii	"smaBankoffset\000"
.LASF24:
	.ascii	"GL_TEXTURE\000"
.LASF107:
	.ascii	"pVramBase\000"
.LASF75:
	.ascii	"offset\000"
.LASF196:
	.ascii	"systemRamAlloc\000"
.LASF89:
	.ascii	"pRom0\000"
.LASF115:
	.ascii	"tileOffsetY\000"
.LASF152:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF217:
	.ascii	"systemClose\000"
.LASF161:
	.ascii	"st_nlink\000"
.LASF38:
	.ascii	"off_t\000"
.LASF41:
	.ascii	"mode_t\000"
.LASF19:
	.ascii	"bool\000"
.LASF29:
	.ascii	"activeTexture\000"
.LASF133:
	.ascii	"ctrl2Reg\000"
.LASF53:
	.ascii	"read16\000"
.LASF166:
	.ascii	"st_atime\000"
.LASF122:
	.ascii	"paletteBank\000"
.LASF233:
	.ascii	"g_neoContext\000"
.LASF158:
	.ascii	"st_dev\000"
.LASF50:
	.ascii	"membase\000"
.LASF234:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF194:
	.ascii	"systemSlot2Alloc\000"
.LASF232:
	.ascii	"g_neo\000"
.LASF105:
	.ascii	"scanline\000"
.LASF228:
	.ascii	"g_mainRam\000"
.LASF195:
	.ascii	"size\000"
.LASF169:
	.ascii	"st_spare2\000"
.LASF97:
	.ascii	"pPalette\000"
.LASF198:
	.ascii	"systemInit\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF143:
	.ascii	"debug\000"
.LASF90:
	.ascii	"pRom1\000"
.LASF179:
	.ascii	"TLinearHeap\000"
.LASF54:
	.ascii	"read32\000"
.LASF96:
	.ascii	"pSpriteRam\000"
.LASF62:
	.ascii	"ResetCallback\000"
.LASF140:
	.ascii	"sramProtectLatch\000"
.LASF123:
	.ascii	"fixedBank\000"
.LASF191:
	.ascii	"systemRamReset\000"
.LASF189:
	.ascii	"systemSlot2Unlock\000"
.LASF199:
	.ascii	"fatOk\000"
.LASF32:
	.ascii	"nameCount\000"
.LASF17:
	.ascii	"false\000"
.LASF132:
	.ascii	"ctrl1Reg\000"
.LASF48:
	.ascii	"state_flags\000"
.LASF126:
	.ascii	"sramProtection\000"
.LASF221:
	.ascii	"systemSeek\000"
.LASF224:
	.ascii	"glGlob\000"
.LASF93:
	.ascii	"pSram\000"
.LASF80:
	.ascii	"freqCounter\000"
.LASF4:
	.ascii	"short int\000"
.LASF145:
	.ascii	"frameCounter\000"
.LASF87:
	.ascii	"adpcmb\000"
.LASF31:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF18:
	.ascii	"true\000"
.LASF131:
	.ascii	"displayCounterLoad\000"
.LASF120:
	.ascii	"irqPending\000"
.LASF68:
	.ascii	"TRead32Func\000"
.LASF160:
	.ascii	"st_mode\000"
.LASF177:
	.ascii	"pAlloc\000"
.LASF36:
	.ascii	"ino_t\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF227:
	.ascii	"g_ramHeap\000"
.LASF192:
	.ascii	"systemGetSlot2Free\000"
.LASF185:
	.ascii	"szMessage\000"
.LASF86:
	.ascii	"adpcm\000"
.LASF15:
	.ascii	"float\000"
.LASF33:
	.ascii	"gl_hidden_globals\000"
.LASF205:
	.ascii	"systemReadOffset\000"
.LASF83:
	.ascii	"pVideoWriteTable\000"
.LASF98:
	.ascii	"bankTable\000"
.LASF101:
	.ascii	"smaBankAddr\000"
.LASF159:
	.ascii	"st_ino\000"
.LASF148:
	.ascii	"_TNeoContext\000"
.LASF202:
	.ascii	"slot2Size\000"
.LASF47:
	.ascii	"reserved\000"
.LASF40:
	.ascii	"gid_t\000"
.LASF139:
	.ascii	"fixedRomLatch\000"
.LASF125:
	.ascii	"sramProtectCount\000"
.LASF77:
	.ascii	"TNeoADPCMStream\000"
.LASF176:
	.ascii	"pBase\000"
.LASF128:
	.ascii	"vramMod\000"
.LASF183:
	.ascii	"szFile\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
