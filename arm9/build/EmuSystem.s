	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
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
	.code	16
	.thumb_func
	.type	timer0Intr, %function
timer0Intr:
.LFB168:
	.file 1 "C:/Users/GRX/NeoDS/arm9/source/EmuSystem.c"
	.loc 1 37 0
	.loc 1 38 0
	ldr	r3, .L3
	.loc 1 39 0
	@ sp needed for prologue
	.loc 1 38 0
	ldr	r2, [r3]
	add	r2, r2, #1
	str	r2, [r3]
	.loc 1 39 0
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
.LFE168:
	.size	timer0Intr, .-timer0Intr
	.align	2
	.global	systemGetMs
	.code	16
	.thumb_func
	.type	systemGetMs, %function
systemGetMs:
.LFB169:
	.loc 1 42 0
	.loc 1 43 0
	ldr	r3, .L7
	.loc 1 44 0
	@ sp needed for prologue
	.loc 1 43 0
	ldr	r0, [r3]
	.loc 1 44 0
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
.LFE169:
	.size	systemGetMs, .-systemGetMs
	.align	2
	.global	systemWaitKey
	.code	16
	.thumb_func
	.type	systemWaitKey, %function
systemWaitKey:
.LFB185:
	.loc 1 200 0
	push	{r4, lr}
.LCFI0:
.LVL0:
	.loc 1 203 0
	bl	scanKeys
.LVL1:
	.loc 1 204 0
	bl	keysDown
	.loc 1 210 0
	mov	r4, #8
.LVL2:
.L12:
	.loc 1 207 0
	bl	swiWaitForVBlank
.LVL3:
	.loc 1 208 0
	bl	scanKeys
	.loc 1 209 0
	bl	keysDown
	.loc 1 210 0
	tst	r0, r4
	beq	.L10
.LVL4:
	.loc 1 211 0
	ldr	r3, .L16
	mov	r2, #0
	strb	r2, [r7, r3]
	b	.L13
.L10:
	.loc 1 206 0
	cmp	r0, #0
	beq	.L12
.L13:
	.loc 1 215 0
	@ sp needed for prologue
	pop	{r4, pc}
.L17:
	.align	2
.L16:
	.word	574
.LFE185:
	.size	systemWaitKey, .-systemWaitKey
	.align	2
	.global	systemPanic_d
	.code	16
	.thumb_func
	.type	systemPanic_d, %function
systemPanic_d:
.LFB184:
	.loc 1 184 0
	push	{r2, r3}
.LCFI1:
	push	{r4, r5, r6, lr}
.LCFI2:
.LVL5:
	sub	sp, sp, #8
.LCFI3:
	.loc 1 184 0
	add	r4, sp, #24
	ldmia	r4!, {r3}
	mov	r6, r1
	mov	r5, r0
	.loc 1 187 0
	ldr	r0, .L21
.LVL6:
	.loc 1 184 0
	str	r3, [sp, #24]
.LVL7:
	.loc 1 187 0
	bl	guiConsoleLog
.LVL8:
	.loc 1 188 0
	mov	r2, r6
	ldr	r0, .L21+4
	mov	r1, r5
	bl	guiConsoleLogf
	.loc 1 190 0
	ldr	r0, [sp, #24]
	mov	r1, r4
	.loc 1 189 0
	str	r4, [sp, #4]
	.loc 1 190 0
	bl	guiConsoleLogfv
	.loc 1 193 0
	bl	guiConsoleDump
	.loc 1 195 0
	ldr	r3, .L21+8
	mov	r2, #0
	str	r2, [r3]
.LVL9:
.L19:
	b	.L19
.L22:
	.align	2
.L21:
	.word	.LC2
	.word	.LC4
	.word	67109384
.LFE184:
	.size	systemPanic_d, .-systemPanic_d
	.align	2
	.global	systemRamReset
	.code	16
	.thumb_func
	.type	systemRamReset, %function
systemRamReset:
.LFB183:
	.loc 1 167 0
	push	{r4, lr}
.LCFI4:
	.loc 1 168 0
	ldr	r0, .L25
	.loc 1 169 0
	@ sp needed for prologue
	.loc 1 168 0
	add	r0, r0, #4
	bl	linearHeapReset
	.loc 1 169 0
	pop	{r4, pc}
.L26:
	.align	2
.L25:
	.word	.LANCHOR0
.LFE183:
	.size	systemRamReset, .-systemRamReset
	.align	2
	.global	systemGetRamFree
	.code	16
	.thumb_func
	.type	systemGetRamFree, %function
systemGetRamFree:
.LFB182:
	.loc 1 162 0
	push	{r4, lr}
.LCFI5:
	.loc 1 163 0
	ldr	r0, .L29
	.loc 1 164 0
	@ sp needed for prologue
	.loc 1 163 0
	add	r0, r0, #4
	bl	linearHeapGetFree
	.loc 1 164 0
	pop	{r4, pc}
.L30:
	.align	2
.L29:
	.word	.LANCHOR0
.LFE182:
	.size	systemGetRamFree, .-systemGetRamFree
	.align	2
	.global	systemRamAlloc
	.code	16
	.thumb_func
	.type	systemRamAlloc, %function
systemRamAlloc:
.LFB181:
	.loc 1 157 0
	push	{r4, lr}
.LCFI6:
.LVL10:
	.loc 1 157 0
	mov	r1, r0
	.loc 1 158 0
	ldr	r0, .L33
.LVL11:
	.loc 1 159 0
	@ sp needed for prologue
	.loc 1 158 0
	add	r0, r0, #4
	bl	linearHeapAlloc
.LVL12:
	.loc 1 159 0
	pop	{r4, pc}
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
.LFE181:
	.size	systemRamAlloc, .-systemRamAlloc
	.align	2
	.global	systemIsSlot2Active
	.code	16
	.thumb_func
	.type	systemIsSlot2Active, %function
systemIsSlot2Active:
.LFB180:
	.loc 1 152 0
	push	{r4, lr}
.LCFI7:
	.loc 1 153 0
	bl	ram_size
	.loc 1 154 0
	@ sp needed for prologue
	.loc 1 153 0
	sub	r3, r0, #1
	sbc	r0, r0, r3
	.loc 1 154 0
	pop	{r4, pc}
.LFE180:
	.size	systemIsSlot2Active, .-systemIsSlot2Active
	.align	2
	.global	systemInit
	.code	16
	.thumb_func
	.type	systemInit, %function
systemInit:
.LFB179:
	.loc 1 129 0
	push	{r4, lr}
.LCFI8:
	.loc 1 130 0
	bl	irqInit
	.loc 1 131 0
	ldr	r1, .L41
	mov	r0, #8
	bl	irqSet
	.loc 1 132 0
	ldr	r0, .L41+4
	bl	irqEnable
	.loc 1 134 0
	ldr	r2, .L41+8
	mov	r3, #32
	neg	r3, r3
	strh	r3, [r2]
	.loc 1 135 0
	ldr	r3, .L41+12
	mov	r2, #195
	strh	r2, [r3]
	.loc 1 140 0
	mov	r0, #8
	mov	r1, #1
	bl	fatInit
	.loc 1 141 0
	cmp	r0, #0
	bne	.L38
	.loc 1 142 0
	ldr	r0, .L41+16
	bl	guiConsoleLog
	mov	r0, #0
	.loc 1 143 0
	b	.L39
.L38:
	.loc 1 146 0
	ldr	r1, .L41+20
	mov	r2, #203
	add	r0, r1, #4
	lsl	r2, r2, #13
	add	r1, r1, #32
	bl	linearHeapInit
	mov	r0, #1
.L39:
	.loc 1 149 0
	@ sp needed for prologue
	pop	{r4, pc}
.L42:
	.align	2
.L41:
	.word	timer0Intr
	.word	67597
	.word	67109120
	.word	67109122
	.word	.LC10
	.word	.LANCHOR0
.LFE179:
	.size	systemInit, .-systemInit
	.align	2
	.global	systemFileSize
	.code	16
	.thumb_func
	.type	systemFileSize, %function
systemFileSize:
.LFB178:
	.loc 1 119 0
	push	{r4, r5, lr}
.LCFI9:
.LVL13:
	sub	sp, sp, #76
.LCFI10:
	.loc 1 119 0
	mov	r5, r0
	.loc 1 122 0
	add	r4, sp, #4
	.loc 1 121 0
	mov	r0, #5
.LVL14:
	bl	irqDisable
	.loc 1 122 0
	mov	r0, r5
	mov	r1, r4
	bl	fstat
	.loc 1 123 0
	mov	r0, #5
	bl	irqEnable
.LBB17:
.LBB18:
	.file 2 "C:/Users/GRX/NeoDS/arm9/include/NeoSystem.h"
	.loc 2 337 0
	ldr	r0, [r4, #24]
	ldr	r7, .L45
.LBE18:
.LBE17:
	.loc 1 126 0
	add	sp, sp, #76
	@ sp needed for prologue
.LVL15:
	pop	{r4, r5, pc}
.L46:
	.align	2
.L45:
	.word	g_neoContext
.LFE178:
	.size	systemFileSize, .-systemFileSize
	.align	2
	.global	systemClose
	.code	16
	.thumb_func
	.type	systemClose, %function
systemClose:
.LFB177:
	.loc 1 111 0
	push	{r4, lr}
.LCFI11:
.LVL16:
	.loc 1 111 0
	mov	r4, r0
	.loc 1 112 0
	mov	r0, #5
.LVL17:
	bl	irqDisable
	.loc 1 113 0
	mov	r0, r4
	bl	close
	.loc 1 114 0
	mov	r0, #5
	bl	irqEnable
	.loc 1 116 0
	@ sp needed for prologue
.LBB19:
.LBB20:
	.loc 2 337 0
	ldr	r7, .L49
.LVL18:
.LBE20:
.LBE19:
	.loc 1 116 0
	pop	{r4, pc}
.L50:
	.align	2
.L49:
	.word	g_neoContext
.LFE177:
	.size	systemClose, .-systemClose
	.align	2
	.global	systemWrite
	.code	16
	.thumb_func
	.type	systemWrite, %function
systemWrite:
.LFB176:
	.loc 1 96 0
	push	{r4, r5, r6, lr}
.LCFI12:
.LVL19:
	sub	sp, sp, #8
.LCFI13:
	.loc 1 96 0
	str	r0, [sp, #4]
	.loc 1 97 0
	mov	r0, #5
.LVL20:
	.loc 1 96 0
	mov	r6, r1
	mov	r5, r2
	.loc 1 97 0
	bl	irqDisable
.LVL21:
	.loc 1 98 0
	mov	r3, #128
	lsl	r3, r3, #2
	str	r3, [sp]
	b	.L52
.LVL22:
.L54:
	ldr	r3, [sp]
	mov	r4, r5
	cmp	r5, r3
	bls	.L53
	mov	r4, #128
	lsl	r4, r4, #2
.L53:
.LBB21:
	.loc 1 101 0
	mov	r1, r6
	ldr	r0, [sp, #4]
	mov	r2, r4
	bl	write
	.loc 1 102 0
	sub	r5, r5, r4
	.loc 1 103 0
	add	r6, r6, r4
.L52:
.LBE21:
	.loc 1 98 0
	cmp	r5, #0
	bne	.L54
	.loc 1 105 0
	mov	r0, #5
	bl	irqEnable
.LBB22:
.LBB23:
	.loc 2 337 0
	ldr	r7, .L56
.LBE23:
.LBE22:
	.loc 1 108 0
	add	sp, sp, #8
	@ sp needed for prologue
.LVL23:
.LVL24:
.LVL25:
	pop	{r4, r5, r6, pc}
.L57:
	.align	2
.L56:
	.word	g_neoContext
.LFE176:
	.size	systemWrite, .-systemWrite
	.align	2
	.global	systemSeek
	.code	16
	.thumb_func
	.type	systemSeek, %function
systemSeek:
.LFB175:
	.loc 1 88 0
	push	{r4, r5, r6, lr}
.LCFI14:
.LVL26:
	.loc 1 88 0
	mov	r5, r0
	mov	r4, r2
	.loc 1 89 0
	mov	r0, #5
.LVL27:
	.loc 1 88 0
	mov	r6, r1
	.loc 1 89 0
	bl	irqDisable
.LVL28:
	.loc 1 90 0
	mov	r2, r4
	mov	r1, r6
	sub	r3, r2, #1
	sbc	r2, r2, r3
	mov	r0, r5
	bl	lseek
	.loc 1 91 0
	mov	r0, #5
	bl	irqEnable
	.loc 1 93 0
	@ sp needed for prologue
.LBB24:
.LBB25:
	.loc 2 337 0
	ldr	r7, .L60
.LVL29:
.LVL30:
.LVL31:
.LBE25:
.LBE24:
	.loc 1 93 0
	pop	{r4, r5, r6, pc}
.L61:
	.align	2
.L60:
	.word	g_neoContext
.LFE175:
	.size	systemSeek, .-systemSeek
	.align	2
	.global	systemRead
	.code	16
	.thumb_func
	.type	systemRead, %function
systemRead:
.LFB174:
	.loc 1 80 0
	push	{r4, r5, r6, lr}
.LCFI15:
.LVL32:
	.loc 1 80 0
	mov	r5, r1
	mov	r6, r2
	mov	r4, r0
	.loc 1 81 0
	mov	r0, #5
.LVL33:
	bl	irqDisable
.LVL34:
	.loc 1 82 0
	mov	r1, r5
	mov	r2, r6
	mov	r0, r4
	bl	read
	.loc 1 83 0
	mov	r0, #5
	bl	irqEnable
	.loc 1 85 0
	@ sp needed for prologue
.LBB26:
.LBB27:
	.loc 2 337 0
	ldr	r7, .L64
.LVL35:
.LVL36:
.LVL37:
.LBE27:
.LBE26:
	.loc 1 85 0
	pop	{r4, r5, r6, pc}
.L65:
	.align	2
.L64:
	.word	g_neoContext
.LFE174:
	.size	systemRead, .-systemRead
	.align	2
	.global	systemReadOffset
	.code	16
	.thumb_func
	.type	systemReadOffset, %function
systemReadOffset:
.LFB173:
	.loc 1 71 0
	push	{r4, r5, r6, lr}
.LCFI16:
.LVL38:
	sub	sp, sp, #8
.LCFI17:
	.loc 1 71 0
	mov	r5, r2
	mov	r4, r0
	.loc 1 72 0
	mov	r0, #5
.LVL39:
	.loc 1 71 0
	str	r3, [sp, #4]
	mov	r6, r1
	.loc 1 72 0
	bl	irqDisable
.LVL40:
	.loc 1 73 0
	mov	r1, r5
	mov	r0, r4
	mov	r2, #0
	bl	lseek
	.loc 1 74 0
	mov	r1, r6
	ldr	r2, [sp, #4]
	mov	r0, r4
	bl	read
	.loc 1 75 0
	mov	r0, #5
	bl	irqEnable
.LBB28:
.LBB29:
	.loc 2 337 0
	ldr	r7, .L68
.LBE29:
.LBE28:
	.loc 1 77 0
	add	sp, sp, #8
	@ sp needed for prologue
.LVL41:
.LVL42:
.LVL43:
	pop	{r4, r5, r6, pc}
.L69:
	.align	2
.L68:
	.word	g_neoContext
.LFE173:
	.size	systemReadOffset, .-systemReadOffset
	.align	2
	.global	systemOpen
	.code	16
	.thumb_func
	.type	systemOpen, %function
systemOpen:
.LFB172:
	.loc 1 61 0
	push	{r4, r5, r6, lr}
.LCFI18:
.LVL44:
	.loc 1 61 0
	mov	r5, r0
	.loc 1 62 0
	cmp	r1, #0
	bne	.L71
.LVL45:
	mov	r4, #0
.LVL46:
	b	.L72
.LVL47:
.L71:
	ldr	r4, .L74
.LVL48:
.L72:
	.loc 1 63 0
	mov	r0, #5
	bl	irqDisable
.LVL49:
	.loc 1 64 0
	mov	r1, r4
	mov	r0, r5
	bl	open
	mov	r4, r0
.LVL50:
	.loc 1 65 0
	mov	r0, #5
	bl	irqEnable
	.loc 1 68 0
	@ sp needed for prologue
	mov	r0, r4
.LBB30:
.LBB31:
	.loc 2 337 0
	ldr	r7, .L74+4
.LVL51:
.LVL52:
.LBE31:
.LBE30:
	.loc 1 68 0
	pop	{r4, r5, r6, pc}
.L75:
	.align	2
.L74:
	.word	1537
	.word	g_neoContext
.LFE172:
	.size	systemOpen, .-systemOpen
	.align	2
	.global	systemRealloc
	.code	16
	.thumb_func
	.type	systemRealloc, %function
systemRealloc:
.LFB171:
	.loc 1 54 0
	push	{r4, lr}
.LCFI19:
.LVL53:
	.loc 1 55 0
	bl	realloc
.LVL54:
	.loc 1 58 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE171:
	.size	systemRealloc, .-systemRealloc
	.align	2
	.global	systemAlloc
	.code	16
	.thumb_func
	.type	systemAlloc, %function
systemAlloc:
.LFB170:
	.loc 1 47 0
	push	{r4, lr}
.LCFI20:
.LVL55:
	.loc 1 48 0
	bl	malloc
.LVL56:
	.loc 1 51 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE170:
	.size	systemAlloc, .-systemAlloc
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC2:
	.ascii	"*** PANIC ***\000"
.LC4:
	.ascii	"%s: %d\000"
.LC10:
	.ascii	"fatInit failed!\000"
	.bss
	.align	5
	.set	.LANCHOR0,. + 0
	.type	g_ms, %object
	.size	g_ms, 4
g_ms:
	.space	4
	.type	g_ramHeap, %object
	.size	g_ramHeap, 12
g_ramHeap:
	.space	12
	.space	16
	.type	g_mainRam, %object
	.size	g_mainRam, 1662976
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
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB185
	.4byte	.LFE185-.LFB185
	.byte	0x4
	.4byte	.LCFI0-.LFB185
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
	.4byte	.LFB184
	.4byte	.LFE184-.LFB184
	.byte	0x4
	.4byte	.LCFI1-.LFB184
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0x4
	.sleb128 6
	.byte	0x11
	.uleb128 0x5
	.sleb128 5
	.byte	0x11
	.uleb128 0x6
	.sleb128 4
	.byte	0x11
	.uleb128 0xe
	.sleb128 3
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB183
	.4byte	.LFE183-.LFB183
	.byte	0x4
	.4byte	.LCFI4-.LFB183
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
	.4byte	.LFB182
	.4byte	.LFE182-.LFB182
	.byte	0x4
	.4byte	.LCFI5-.LFB182
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
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.byte	0x4
	.4byte	.LCFI6-.LFB181
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
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.byte	0x4
	.4byte	.LCFI7-.LFB180
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
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.byte	0x4
	.4byte	.LCFI8-.LFB179
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
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.byte	0x4
	.4byte	.LCFI9-.LFB178
	.byte	0xe
	.uleb128 0xc
	.byte	0x11
	.uleb128 0x4
	.sleb128 3
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x58
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.byte	0x4
	.4byte	.LCFI11-.LFB177
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
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.byte	0x4
	.4byte	.LCFI12-.LFB176
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
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.byte	0x4
	.4byte	.LCFI14-.LFB175
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
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.byte	0x4
	.4byte	.LCFI15-.LFB174
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
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.byte	0x4
	.4byte	.LCFI16-.LFB173
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
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.byte	0x4
	.4byte	.LCFI18-.LFB172
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
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.byte	0x4
	.4byte	.LCFI19-.LFB171
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.byte	0x4
	.4byte	.LCFI20-.LFB170
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE34:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LFB185-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE185-.Ltext0
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
	.4byte	.LFE185-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB184-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE184-.Ltext0
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
	.4byte	.LFE184-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE184-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE184-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB183-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE183-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB182-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE182-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB181-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE181-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB180-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE180-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB179-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE179-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB178-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE178-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 88
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB177-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE177-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB176-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE176-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LFB175-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE175-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LFB174-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LFB173-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LFB172-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST38:
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
.LLST39:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LFB171-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LFB170-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI20-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 5 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/_types.h"
	.file 6 "C:/devkitPro/libnds/include/nds/interrupts.h"
	.file 7 "C:/devkitPro/libnds/include/nds/input.h"
	.file 8 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 9 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 10 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 11 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 12 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stdarg.h"
	.file 13 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/types.h"
	.file 14 "C:/Users/GRX/NeoDS/arm9/include/cyclone.h"
	.file 15 "C:/Users/GRX/NeoDS/arm9/include/NeoCpu.h"
	.file 16 "C:/Users/GRX/NeoDS/arm9/../common/source/NeoAudioStream.h"
	.file 17 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/stat.h"
	.file 18 "C:/Users/GRX/NeoDS/arm9/source/LinearHeap.h"
	.file 19 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.section	.debug_info
	.4byte	0x1544
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF308
	.byte	0x1
	.4byte	.LASF309
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
	.4byte	0xbe
	.uleb128 0x7
	.byte	0x1
	.byte	0x4
	.byte	0x7d
	.4byte	0xf9
	.uleb128 0x8
	.4byte	.LASF15
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF16
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x7d
	.4byte	0xe4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x10a
	.uleb128 0xa
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x4
	.byte	0x6
	.byte	0x2e
	.4byte	0x1c9
	.uleb128 0x8
	.4byte	.LASF18
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF19
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF20
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF21
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF22
	.sleb128 16
	.uleb128 0x8
	.4byte	.LASF23
	.sleb128 32
	.uleb128 0x8
	.4byte	.LASF24
	.sleb128 64
	.uleb128 0x8
	.4byte	.LASF25
	.sleb128 128
	.uleb128 0x8
	.4byte	.LASF26
	.sleb128 256
	.uleb128 0x8
	.4byte	.LASF27
	.sleb128 512
	.uleb128 0x8
	.4byte	.LASF28
	.sleb128 1024
	.uleb128 0x8
	.4byte	.LASF29
	.sleb128 2048
	.uleb128 0x8
	.4byte	.LASF30
	.sleb128 4096
	.uleb128 0x8
	.4byte	.LASF31
	.sleb128 8192
	.uleb128 0x8
	.4byte	.LASF32
	.sleb128 65536
	.uleb128 0x8
	.4byte	.LASF33
	.sleb128 131072
	.uleb128 0x8
	.4byte	.LASF34
	.sleb128 262144
	.uleb128 0x8
	.4byte	.LASF35
	.sleb128 524288
	.uleb128 0x8
	.4byte	.LASF36
	.sleb128 1048576
	.uleb128 0x8
	.4byte	.LASF37
	.sleb128 2097152
	.uleb128 0x8
	.4byte	.LASF38
	.sleb128 4194304
	.uleb128 0x8
	.4byte	.LASF39
	.sleb128 8388608
	.uleb128 0x8
	.4byte	.LASF40
	.sleb128 16777216
	.uleb128 0x8
	.4byte	.LASF41
	.sleb128 -1
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF42
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x5
	.byte	0x10
	.4byte	0x1de
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF44
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x5
	.byte	0x18
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x5
	.byte	0x1d
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x5
	.byte	0x20
	.4byte	0x57
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF48
	.uleb128 0x9
	.byte	0x4
	.4byte	0x215
	.uleb128 0xe
	.4byte	0x1cc
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x2
	.byte	0x7
	.byte	0x1f
	.4byte	0x284
	.uleb128 0x8
	.4byte	.LASF51
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF52
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF53
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF54
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF55
	.sleb128 16
	.uleb128 0x8
	.4byte	.LASF56
	.sleb128 32
	.uleb128 0x8
	.4byte	.LASF57
	.sleb128 64
	.uleb128 0x8
	.4byte	.LASF58
	.sleb128 128
	.uleb128 0x8
	.4byte	.LASF59
	.sleb128 256
	.uleb128 0x8
	.4byte	.LASF60
	.sleb128 512
	.uleb128 0x8
	.4byte	.LASF61
	.sleb128 1024
	.uleb128 0x8
	.4byte	.LASF62
	.sleb128 2048
	.uleb128 0x8
	.4byte	.LASF63
	.sleb128 4096
	.uleb128 0x8
	.4byte	.LASF64
	.sleb128 8192
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0x28
	.byte	0x8
	.2byte	0x18c
	.4byte	0x328
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x18d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x18e
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x18f
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x8
	.2byte	0x190
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x8
	.2byte	0x191
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x8
	.2byte	0x192
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x8
	.2byte	0x193
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x194
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x8
	.2byte	0x195
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x8
	.2byte	0x196
	.4byte	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x8
	.2byte	0x198
	.4byte	0x284
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x8
	.byte	0x9
	.byte	0x29
	.4byte	0x35d
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x9
	.byte	0x2a
	.4byte	0x35d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x9
	.byte	0x2b
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x206
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x9
	.byte	0x2c
	.4byte	0x334
	.uleb128 0x7
	.byte	0x1
	.byte	0xa
	.byte	0x9c
	.4byte	0x38f
	.uleb128 0x8
	.4byte	.LASF79
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF80
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF81
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF82
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0xa
	.byte	0xa1
	.4byte	0x36e
	.uleb128 0x14
	.4byte	.LASF84
	.2byte	0x2020
	.byte	0xa
	.2byte	0x11a
	.4byte	0x426
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0xa
	.2byte	0x11b
	.4byte	0x38f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0xa
	.2byte	0x11e
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0xa
	.2byte	0x121
	.4byte	0x426
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0xa
	.2byte	0x122
	.4byte	0x363
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0x10
	.4byte	.LASF89
	.byte	0xa
	.2byte	0x123
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0xa
	.2byte	0x124
	.4byte	0x437
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0x10
	.4byte	.LASF91
	.byte	0xa
	.2byte	0x125
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0xa
	.2byte	0x126
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x201c
	.byte	0x0
	.uleb128 0x15
	.4byte	0x90
	.4byte	0x437
	.uleb128 0x16
	.4byte	0x1c9
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x90
	.uleb128 0x11
	.4byte	.LASF84
	.byte	0xa
	.2byte	0x128
	.4byte	0x39a
	.uleb128 0x9
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x7
	.byte	0x1
	.byte	0xb
	.byte	0x59
	.4byte	0x476
	.uleb128 0x8
	.4byte	.LASF93
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF94
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF95
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF96
	.sleb128 3
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.byte	0xb
	.byte	0x62
	.4byte	0x497
	.uleb128 0x8
	.4byte	.LASF97
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF98
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF99
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF100
	.sleb128 3
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.byte	0xb
	.byte	0x6a
	.4byte	0x4b8
	.uleb128 0x8
	.4byte	.LASF101
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF102
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF103
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF104
	.sleb128 3
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.byte	0xb
	.byte	0x72
	.4byte	0x4cd
	.uleb128 0x8
	.4byte	.LASF105
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF106
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0xc
	.byte	0x28
	.4byte	0x4d8
	.uleb128 0x17
	.4byte	.LASF310
	.byte	0x4
	.4byte	0x4f0
	.uleb128 0x18
	.4byte	.LASF231
	.4byte	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0xd
	.byte	0x6d
	.4byte	0x1de
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0xd
	.byte	0x85
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0xd
	.byte	0xa2
	.4byte	0x1d3
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0xd
	.byte	0xa3
	.4byte	0x1e5
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xd
	.byte	0xa4
	.4byte	0x1f0
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xd
	.byte	0xa5
	.4byte	0x1fb
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0xd
	.byte	0xbf
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0xd
	.byte	0xc4
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0xc
	.byte	0x66
	.4byte	0x4cd
	.uleb128 0x12
	.4byte	.LASF117
	.byte	0xb0
	.byte	0xe
	.byte	0x15
	.4byte	0x6e9
	.uleb128 0x19
	.ascii	"d\000"
	.byte	0xe
	.byte	0x16
	.4byte	0x6e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.ascii	"a\000"
	.byte	0xe
	.byte	0x17
	.4byte	0x6e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x19
	.ascii	"pc\000"
	.byte	0xe
	.byte	0x18
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x19
	.ascii	"srh\000"
	.byte	0xe
	.byte	0x19
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x13
	.4byte	.LASF118
	.byte	0xe
	.byte	0x1a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0xe
	.byte	0x1b
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x19
	.ascii	"irq\000"
	.byte	0xe
	.byte	0x1c
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x19
	.ascii	"osp\000"
	.byte	0xe
	.byte	0x1d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x19
	.ascii	"xc\000"
	.byte	0xe
	.byte	0x1e
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x13
	.4byte	.LASF120
	.byte	0xe
	.byte	0x1f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x13
	.4byte	.LASF121
	.byte	0xe
	.byte	0x20
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x13
	.4byte	.LASF122
	.byte	0xe
	.byte	0x21
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x13
	.4byte	.LASF123
	.byte	0xe
	.byte	0x22
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x13
	.4byte	.LASF124
	.byte	0xe
	.byte	0x23
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x13
	.4byte	.LASF125
	.byte	0xe
	.byte	0x24
	.4byte	0x709
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x13
	.4byte	.LASF126
	.byte	0xe
	.byte	0x25
	.4byte	0x709
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x13
	.4byte	.LASF127
	.byte	0xe
	.byte	0x26
	.4byte	0x709
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x13
	.4byte	.LASF128
	.byte	0xe
	.byte	0x27
	.4byte	0x709
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x13
	.4byte	.LASF129
	.byte	0xe
	.byte	0x28
	.4byte	0x720
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x13
	.4byte	.LASF130
	.byte	0xe
	.byte	0x29
	.4byte	0x737
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x13
	.4byte	.LASF131
	.byte	0xe
	.byte	0x2a
	.4byte	0x74e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x13
	.4byte	.LASF132
	.byte	0xe
	.byte	0x2b
	.4byte	0x709
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x13
	.4byte	.LASF133
	.byte	0xe
	.byte	0x2c
	.4byte	0x709
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x13
	.4byte	.LASF134
	.byte	0xe
	.byte	0x2d
	.4byte	0x709
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x13
	.4byte	.LASF135
	.byte	0xe
	.byte	0x2e
	.4byte	0x764
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x13
	.4byte	.LASF136
	.byte	0xe
	.byte	0x2f
	.4byte	0x104
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x13
	.4byte	.LASF137
	.byte	0xe
	.byte	0x30
	.4byte	0x770
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x13
	.4byte	.LASF138
	.byte	0xe
	.byte	0x31
	.4byte	0x776
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x15
	.4byte	0x7b
	.4byte	0x6f9
	.uleb128 0x1a
	.4byte	0x1c9
	.byte	0x7
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x7b
	.4byte	0x709
	.uleb128 0x1c
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6f9
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x720
	.uleb128 0x1c
	.4byte	0x7b
	.uleb128 0x1c
	.4byte	0x33
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x70f
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x737
	.uleb128 0x1c
	.4byte	0x7b
	.uleb128 0x1c
	.4byte	0x57
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x726
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x74e
	.uleb128 0x1c
	.4byte	0x7b
	.uleb128 0x1c
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x73d
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x69
	.4byte	0x764
	.uleb128 0x1c
	.4byte	0x69
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x754
	.uleb128 0x1e
	.byte	0x1
	.4byte	0x69
	.uleb128 0x9
	.byte	0x4
	.4byte	0x76a
	.uleb128 0x15
	.4byte	0x7b
	.4byte	0x786
	.uleb128 0x1a
	.4byte	0x1c9
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0xf
	.byte	0x6
	.4byte	0x553
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0xf
	.byte	0x8
	.4byte	0x79c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7a2
	.uleb128 0x1b
	.byte	0x1
	.4byte	0xa9
	.4byte	0x7b2
	.uleb128 0x1c
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF141
	.byte	0xf
	.byte	0x9
	.4byte	0x7bd
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7c3
	.uleb128 0x1b
	.byte	0x1
	.4byte	0xb3
	.4byte	0x7d3
	.uleb128 0x1c
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0xf
	.byte	0xa
	.4byte	0x7de
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7e4
	.uleb128 0x1b
	.byte	0x1
	.4byte	0xbe
	.4byte	0x7f4
	.uleb128 0x1c
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0xf
	.byte	0xc
	.4byte	0x7ff
	.uleb128 0x9
	.byte	0x4
	.4byte	0x805
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x816
	.uleb128 0x1c
	.4byte	0xbe
	.uleb128 0x1c
	.4byte	0xa9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0xf
	.byte	0xd
	.4byte	0x821
	.uleb128 0x9
	.byte	0x4
	.4byte	0x827
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x838
	.uleb128 0x1c
	.4byte	0xbe
	.uleb128 0x1c
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF145
	.byte	0xf
	.byte	0xe
	.4byte	0x843
	.uleb128 0x9
	.byte	0x4
	.4byte	0x849
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x85a
	.uleb128 0x1c
	.4byte	0xbe
	.uleb128 0x1c
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0xf
	.byte	0x10
	.4byte	0x7de
	.uleb128 0x12
	.4byte	.LASF147
	.byte	0xc
	.byte	0x10
	.byte	0x17
	.4byte	0x8aa
	.uleb128 0x13
	.4byte	.LASF148
	.byte	0x10
	.byte	0x18
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.ascii	"end\000"
	.byte	0x10
	.byte	0x19
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.ascii	"acc\000"
	.byte	0x10
	.byte	0x1a
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF149
	.byte	0x10
	.byte	0x1b
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF150
	.byte	0x10
	.byte	0x1c
	.4byte	0x865
	.uleb128 0x12
	.4byte	.LASF151
	.byte	0xc
	.byte	0x10
	.byte	0x1f
	.4byte	0x8ec
	.uleb128 0x13
	.4byte	.LASF152
	.byte	0x10
	.byte	0x20
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF153
	.byte	0x10
	.byte	0x21
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF154
	.byte	0x10
	.byte	0x22
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF155
	.byte	0x10
	.byte	0x23
	.4byte	0x8b5
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0x1
	.byte	0x2
	.byte	0x99
	.4byte	0x940
	.uleb128 0x8
	.4byte	.LASF157
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF158
	.sleb128 1
	.uleb128 0x8
	.4byte	.LASF159
	.sleb128 2
	.uleb128 0x8
	.4byte	.LASF160
	.sleb128 3
	.uleb128 0x8
	.4byte	.LASF161
	.sleb128 4
	.uleb128 0x8
	.4byte	.LASF162
	.sleb128 5
	.uleb128 0x8
	.4byte	.LASF163
	.sleb128 6
	.uleb128 0x8
	.4byte	.LASF164
	.sleb128 7
	.uleb128 0x8
	.4byte	.LASF165
	.sleb128 8
	.uleb128 0x8
	.4byte	.LASF166
	.sleb128 9
	.byte	0x0
	.uleb128 0x1f
	.2byte	0x248
	.byte	0x2
	.byte	0xc0
	.4byte	0xd2e
	.uleb128 0x19
	.ascii	"cpu\000"
	.byte	0x2
	.byte	0xc1
	.4byte	0x786
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF167
	.byte	0x2
	.byte	0xc4
	.4byte	0xd2e
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x13
	.4byte	.LASF168
	.byte	0x2
	.byte	0xc7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x13
	.4byte	.LASF169
	.byte	0x2
	.byte	0xc8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x13
	.4byte	.LASF170
	.byte	0x2
	.byte	0xcb
	.4byte	0xd3e
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x13
	.4byte	.LASF171
	.byte	0x2
	.byte	0xcc
	.4byte	0x8ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x13
	.4byte	.LASF172
	.byte	0x2
	.byte	0xcd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x13
	.4byte	.LASF173
	.byte	0x2
	.byte	0xd0
	.4byte	0x44f
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x13
	.4byte	.LASF174
	.byte	0x2
	.byte	0xd1
	.4byte	0x44f
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x13
	.4byte	.LASF175
	.byte	0x2
	.byte	0xd2
	.4byte	0x44f
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x13
	.4byte	.LASF176
	.byte	0x2
	.byte	0xd3
	.4byte	0x44f
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x13
	.4byte	.LASF177
	.byte	0x2
	.byte	0xd4
	.4byte	0x44f
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x13
	.4byte	.LASF178
	.byte	0x2
	.byte	0xd5
	.4byte	0x44f
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x13
	.4byte	.LASF179
	.byte	0x2
	.byte	0xd6
	.4byte	0x449
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x13
	.4byte	.LASF180
	.byte	0x2
	.byte	0xd7
	.4byte	0x449
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x13
	.4byte	.LASF181
	.byte	0x2
	.byte	0xd8
	.4byte	0x449
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x13
	.4byte	.LASF182
	.byte	0x2
	.byte	0xda
	.4byte	0xd4e
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x13
	.4byte	.LASF183
	.byte	0x2
	.byte	0xdd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x13
	.4byte	.LASF184
	.byte	0x2
	.byte	0xde
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x13
	.4byte	.LASF185
	.byte	0x2
	.byte	0xdf
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x13
	.4byte	.LASF186
	.byte	0x2
	.byte	0xe0
	.4byte	0xd5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x13
	.4byte	.LASF187
	.byte	0x2
	.byte	0xe1
	.4byte	0xd5f
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x13
	.4byte	.LASF188
	.byte	0x2
	.byte	0xe2
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x13
	.4byte	.LASF189
	.byte	0x2
	.byte	0xe5
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x13
	.4byte	.LASF190
	.byte	0x2
	.byte	0xe6
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x13
	.4byte	.LASF191
	.byte	0x2
	.byte	0xe7
	.4byte	0x449
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x13
	.4byte	.LASF192
	.byte	0x2
	.byte	0xe8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x13
	.4byte	.LASF193
	.byte	0x2
	.byte	0xea
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x13
	.4byte	.LASF194
	.byte	0x2
	.byte	0xeb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x13
	.4byte	.LASF195
	.byte	0x2
	.byte	0xec
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x13
	.4byte	.LASF196
	.byte	0x2
	.byte	0xed
	.4byte	0xd6a
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x13
	.4byte	.LASF197
	.byte	0x2
	.byte	0xee
	.4byte	0x449
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x13
	.4byte	.LASF198
	.byte	0x2
	.byte	0xf1
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x13
	.4byte	.LASF199
	.byte	0x2
	.byte	0xf2
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x13
	.4byte	.LASF200
	.byte	0x2
	.byte	0xf3
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x13
	.4byte	.LASF201
	.byte	0x2
	.byte	0xf4
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x13
	.4byte	.LASF202
	.byte	0x2
	.byte	0xf7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x13
	.4byte	.LASF203
	.byte	0x2
	.byte	0xf8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x13
	.4byte	.LASF204
	.byte	0x2
	.byte	0xf9
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x13
	.4byte	.LASF205
	.byte	0x2
	.byte	0xfa
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x13
	.4byte	.LASF206
	.byte	0x2
	.byte	0xfb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x13
	.4byte	.LASF207
	.byte	0x2
	.byte	0xfc
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x13
	.4byte	.LASF208
	.byte	0x2
	.byte	0xfd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0x10
	.4byte	.LASF209
	.byte	0x2
	.2byte	0x102
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x10
	.4byte	.LASF210
	.byte	0x2
	.2byte	0x103
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0x10
	.4byte	.LASF211
	.byte	0x2
	.2byte	0x106
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x10
	.4byte	.LASF212
	.byte	0x2
	.2byte	0x108
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x10
	.4byte	.LASF213
	.byte	0x2
	.2byte	0x109
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0x10
	.4byte	.LASF214
	.byte	0x2
	.2byte	0x10a
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0x10
	.4byte	.LASF215
	.byte	0x2
	.2byte	0x10b
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x10
	.4byte	.LASF216
	.byte	0x2
	.2byte	0x10d
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0x10
	.4byte	.LASF217
	.byte	0x2
	.2byte	0x10e
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x10
	.4byte	.LASF218
	.byte	0x2
	.2byte	0x10f
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x10
	.4byte	.LASF219
	.byte	0x2
	.2byte	0x110
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x10
	.4byte	.LASF220
	.byte	0x2
	.2byte	0x111
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0x10
	.4byte	.LASF221
	.byte	0x2
	.2byte	0x114
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0x10
	.4byte	.LASF222
	.byte	0x2
	.2byte	0x115
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0x10
	.4byte	.LASF223
	.byte	0x2
	.2byte	0x116
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0x10
	.4byte	.LASF224
	.byte	0x2
	.2byte	0x117
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0x10
	.4byte	.LASF225
	.byte	0x2
	.2byte	0x118
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0x10
	.4byte	.LASF226
	.byte	0x2
	.2byte	0x11b
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0x10
	.4byte	.LASF227
	.byte	0x2
	.2byte	0x11c
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0x10
	.4byte	.LASF228
	.byte	0x2
	.2byte	0x11f
	.4byte	0xd7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0x10
	.4byte	.LASF229
	.byte	0x2
	.2byte	0x122
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0x10
	.4byte	.LASF230
	.byte	0x2
	.2byte	0x123
	.4byte	0xd8a
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0x15
	.4byte	0x206
	.4byte	0xd3e
	.uleb128 0x1a
	.4byte	0x1c9
	.byte	0x8
	.byte	0x0
	.uleb128 0x15
	.4byte	0x8aa
	.4byte	0xd4e
	.uleb128 0x1a
	.4byte	0x1c9
	.byte	0x6
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xd54
	.uleb128 0x9
	.byte	0x4
	.4byte	0xd5a
	.uleb128 0xe
	.4byte	0xa9
	.uleb128 0x9
	.byte	0x4
	.4byte	0xd65
	.uleb128 0xe
	.4byte	0xbe
	.uleb128 0x15
	.4byte	0xbe
	.4byte	0xd7a
	.uleb128 0x1a
	.4byte	0x1c9
	.byte	0xf
	.byte	0x0
	.uleb128 0x15
	.4byte	0xa9
	.4byte	0xd8a
	.uleb128 0x1a
	.4byte	0x1c9
	.byte	0x7
	.byte	0x0
	.uleb128 0x15
	.4byte	0xa9
	.4byte	0xd99
	.uleb128 0x20
	.4byte	0x1c9
	.byte	0x0
	.uleb128 0x21
	.2byte	0x400
	.byte	0x2
	.byte	0xbf
	.4byte	0xdb4
	.uleb128 0x22
	.4byte	0x940
	.uleb128 0x23
	.4byte	.LASF232
	.byte	0x2
	.2byte	0x125
	.4byte	0xdb4
	.byte	0x0
	.uleb128 0x15
	.4byte	0xbe
	.4byte	0xdc4
	.uleb128 0x1a
	.4byte	0x1c9
	.byte	0xff
	.byte	0x0
	.uleb128 0x24
	.4byte	.LASF233
	.2byte	0x2000
	.byte	0x2
	.byte	0xbe
	.4byte	0xe4a
	.uleb128 0x25
	.4byte	0xd99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF234
	.byte	0x2
	.2byte	0x128
	.4byte	0xe4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0x10
	.4byte	.LASF235
	.byte	0x2
	.2byte	0x129
	.4byte	0xe5a
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0x10
	.4byte	.LASF236
	.byte	0x2
	.2byte	0x12a
	.4byte	0xe6a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0x10
	.4byte	.LASF237
	.byte	0x2
	.2byte	0x12b
	.4byte	0xe7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0x10
	.4byte	.LASF238
	.byte	0x2
	.2byte	0x12c
	.4byte	0xe8a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0x10
	.4byte	.LASF239
	.byte	0x2
	.2byte	0x12d
	.4byte	0xe9a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0x10
	.4byte	.LASF240
	.byte	0x2
	.2byte	0x12e
	.4byte	0xeaa
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0x15
	.4byte	0x791
	.4byte	0xe5a
	.uleb128 0x1a
	.4byte	0x1c9
	.byte	0xff
	.byte	0x0
	.uleb128 0x15
	.4byte	0x7b2
	.4byte	0xe6a
	.uleb128 0x1a
	.4byte	0x1c9
	.byte	0xff
	.byte	0x0
	.uleb128 0x15
	.4byte	0x7d3
	.4byte	0xe7a
	.uleb128 0x1a
	.4byte	0x1c9
	.byte	0xff
	.byte	0x0
	.uleb128 0x15
	.4byte	0x7f4
	.4byte	0xe8a
	.uleb128 0x1a
	.4byte	0x1c9
	.byte	0xff
	.byte	0x0
	.uleb128 0x15
	.4byte	0x816
	.4byte	0xe9a
	.uleb128 0x1a
	.4byte	0x1c9
	.byte	0xff
	.byte	0x0
	.uleb128 0x15
	.4byte	0x838
	.4byte	0xeaa
	.uleb128 0x1a
	.4byte	0x1c9
	.byte	0xff
	.byte	0x0
	.uleb128 0x15
	.4byte	0x85a
	.4byte	0xeba
	.uleb128 0x1a
	.4byte	0x1c9
	.byte	0xff
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF241
	.byte	0x2
	.2byte	0x12f
	.4byte	0xdc4
	.uleb128 0x9
	.byte	0x4
	.4byte	0xecc
	.uleb128 0x26
	.uleb128 0x12
	.4byte	.LASF242
	.byte	0x44
	.byte	0x11
	.byte	0x1a
	.4byte	0xfc8
	.uleb128 0x13
	.4byte	.LASF243
	.byte	0x11
	.byte	0x1b
	.4byte	0x511
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF244
	.byte	0x11
	.byte	0x1c
	.4byte	0x4fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF245
	.byte	0x11
	.byte	0x1d
	.4byte	0x532
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.4byte	.LASF246
	.byte	0x11
	.byte	0x1e
	.4byte	0x53d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x13
	.4byte	.LASF247
	.byte	0x11
	.byte	0x1f
	.4byte	0x51c
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x13
	.4byte	.LASF248
	.byte	0x11
	.byte	0x20
	.4byte	0x527
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x13
	.4byte	.LASF249
	.byte	0x11
	.byte	0x21
	.4byte	0x511
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x13
	.4byte	.LASF250
	.byte	0x11
	.byte	0x22
	.4byte	0x506
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x13
	.4byte	.LASF251
	.byte	0x11
	.byte	0x30
	.4byte	0x4f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x13
	.4byte	.LASF252
	.byte	0x11
	.byte	0x31
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.4byte	.LASF253
	.byte	0x11
	.byte	0x32
	.4byte	0x4f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x13
	.4byte	.LASF254
	.byte	0x11
	.byte	0x33
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x13
	.4byte	.LASF255
	.byte	0x11
	.byte	0x34
	.4byte	0x4f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x13
	.4byte	.LASF256
	.byte	0x11
	.byte	0x35
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x13
	.4byte	.LASF257
	.byte	0x11
	.byte	0x36
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x13
	.4byte	.LASF258
	.byte	0x11
	.byte	0x37
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x13
	.4byte	.LASF259
	.byte	0x11
	.byte	0x38
	.4byte	0xfc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x15
	.4byte	0x1de
	.4byte	0xfd8
	.uleb128 0x1a
	.4byte	0x1c9
	.byte	0x1
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF260
	.byte	0xc
	.byte	0x12
	.byte	0x4
	.4byte	0x100f
	.uleb128 0x13
	.4byte	.LASF261
	.byte	0x12
	.byte	0x5
	.4byte	0x44f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.4byte	.LASF262
	.byte	0x12
	.byte	0x6
	.4byte	0x44f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.4byte	.LASF263
	.byte	0x12
	.byte	0x7
	.4byte	0x44f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF264
	.byte	0x12
	.byte	0x8
	.4byte	0xfd8
	.uleb128 0x27
	.4byte	.LASF311
	.byte	0x2
	.2byte	0x151
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF312
	.byte	0x1
	.byte	0x24
	.4byte	.LFB168
	.4byte	.LFE168
	.byte	0x1
	.byte	0x5d
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF272
	.byte	0x1
	.byte	0x29
	.4byte	0xbe
	.4byte	.LFB169
	.4byte	.LFE169
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF265
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.4byte	.LFB185
	.4byte	.LFE185
	.4byte	.LLST2
	.4byte	0x1082
	.uleb128 0x2b
	.4byte	.LASF267
	.byte	0x1
	.byte	0xc7
	.4byte	0x20f
	.4byte	.LLST3
	.uleb128 0x2c
	.4byte	.LASF271
	.byte	0x1
	.byte	0xc9
	.4byte	0xbe
	.4byte	.LLST4
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF266
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.4byte	.LFB184
	.4byte	.LFE184
	.4byte	.LLST5
	.4byte	0x10d6
	.uleb128 0x2b
	.4byte	.LASF268
	.byte	0x1
	.byte	0xb7
	.4byte	0x20f
	.4byte	.LLST6
	.uleb128 0x2b
	.4byte	.LASF269
	.byte	0x1
	.byte	0xb7
	.4byte	0xbe
	.4byte	.LLST7
	.uleb128 0x2b
	.4byte	.LASF270
	.byte	0x1
	.byte	0xb7
	.4byte	0x20f
	.4byte	.LLST8
	.uleb128 0x2d
	.uleb128 0x2e
	.ascii	"v\000"
	.byte	0x1
	.byte	0xb9
	.4byte	0x548
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF313
	.byte	0x1
	.byte	0xa6
	.4byte	.LFB183
	.4byte	.LFE183
	.4byte	.LLST9
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF273
	.byte	0x1
	.byte	0xa1
	.4byte	0xbe
	.4byte	.LFB182
	.4byte	.LFE182
	.4byte	.LLST10
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF276
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.4byte	0x206
	.4byte	.LFB181
	.4byte	.LFE181
	.4byte	.LLST11
	.4byte	0x112f
	.uleb128 0x2b
	.4byte	.LASF72
	.byte	0x1
	.byte	0x9c
	.4byte	0xbe
	.4byte	.LLST12
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF274
	.byte	0x1
	.byte	0x97
	.4byte	0xf9
	.4byte	.LFB180
	.4byte	.LFE180
	.4byte	.LLST13
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF275
	.byte	0x1
	.byte	0x80
	.4byte	0xf9
	.4byte	.LFB179
	.4byte	.LFE179
	.4byte	.LLST14
	.4byte	0x116f
	.uleb128 0x33
	.4byte	.LASF296
	.byte	0x1
	.byte	0x8c
	.4byte	0xf9
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF277
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.4byte	0xbe
	.4byte	.LFB178
	.4byte	.LFE178
	.4byte	.LLST15
	.4byte	0x11ba
	.uleb128 0x2b
	.4byte	.LASF278
	.byte	0x1
	.byte	0x76
	.4byte	0xd4
	.4byte	.LLST16
	.uleb128 0x34
	.4byte	.LASF279
	.byte	0x1
	.byte	0x78
	.4byte	0xecd
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x35
	.4byte	0x101a
	.4byte	.LBB17
	.4byte	.LBE17
	.byte	0x1
	.byte	0x7c
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF280
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	.LFB177
	.4byte	.LFE177
	.4byte	.LLST17
	.4byte	0x11f2
	.uleb128 0x2b
	.4byte	.LASF278
	.byte	0x1
	.byte	0x6e
	.4byte	0xd4
	.4byte	.LLST18
	.uleb128 0x35
	.4byte	0x101a
	.4byte	.LBB19
	.4byte	.LBE19
	.byte	0x1
	.byte	0x73
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF281
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.4byte	.LFB176
	.4byte	.LFE176
	.4byte	.LLST19
	.4byte	0x1265
	.uleb128 0x2b
	.4byte	.LASF278
	.byte	0x1
	.byte	0x5f
	.4byte	0xd4
	.4byte	.LLST20
	.uleb128 0x2b
	.4byte	.LASF282
	.byte	0x1
	.byte	0x5f
	.4byte	0xec6
	.4byte	.LLST21
	.uleb128 0x2b
	.4byte	.LASF72
	.byte	0x1
	.byte	0x5f
	.4byte	0xbe
	.4byte	.LLST22
	.uleb128 0x36
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0x1255
	.uleb128 0x2c
	.4byte	.LASF283
	.byte	0x1
	.byte	0x63
	.4byte	0xbe
	.4byte	.LLST23
	.byte	0x0
	.uleb128 0x35
	.4byte	0x101a
	.4byte	.LBB22
	.4byte	.LBE22
	.byte	0x1
	.byte	0x6b
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF284
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.4byte	.LFB175
	.4byte	.LFE175
	.4byte	.LLST24
	.4byte	0x12bb
	.uleb128 0x2b
	.4byte	.LASF278
	.byte	0x1
	.byte	0x57
	.4byte	0xd4
	.4byte	.LLST25
	.uleb128 0x2b
	.4byte	.LASF148
	.byte	0x1
	.byte	0x57
	.4byte	0xd4
	.4byte	.LLST26
	.uleb128 0x2b
	.4byte	.LASF285
	.byte	0x1
	.byte	0x57
	.4byte	0xf9
	.4byte	.LLST27
	.uleb128 0x35
	.4byte	0x101a
	.4byte	.LBB24
	.4byte	.LBE24
	.byte	0x1
	.byte	0x5c
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF286
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.4byte	.LFB174
	.4byte	.LFE174
	.4byte	.LLST28
	.4byte	0x1311
	.uleb128 0x2b
	.4byte	.LASF278
	.byte	0x1
	.byte	0x4f
	.4byte	0xd4
	.4byte	.LLST29
	.uleb128 0x2b
	.4byte	.LASF287
	.byte	0x1
	.byte	0x4f
	.4byte	0x206
	.4byte	.LLST30
	.uleb128 0x2b
	.4byte	.LASF72
	.byte	0x1
	.byte	0x4f
	.4byte	0xbe
	.4byte	.LLST31
	.uleb128 0x35
	.4byte	0x101a
	.4byte	.LBB26
	.4byte	.LBE26
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF288
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.4byte	.LFB173
	.4byte	.LFE173
	.4byte	.LLST32
	.4byte	0x1376
	.uleb128 0x2b
	.4byte	.LASF278
	.byte	0x1
	.byte	0x46
	.4byte	0xd4
	.4byte	.LLST33
	.uleb128 0x2b
	.4byte	.LASF287
	.byte	0x1
	.byte	0x46
	.4byte	0x206
	.4byte	.LLST34
	.uleb128 0x2b
	.4byte	.LASF148
	.byte	0x1
	.byte	0x46
	.4byte	0xbe
	.4byte	.LLST35
	.uleb128 0x2b
	.4byte	.LASF72
	.byte	0x1
	.byte	0x46
	.4byte	0xbe
	.4byte	.LLST36
	.uleb128 0x35
	.4byte	0x101a
	.4byte	.LBB28
	.4byte	.LBE28
	.byte	0x1
	.byte	0x4c
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF289
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB172
	.4byte	.LFE172
	.4byte	.LLST37
	.4byte	0x13de
	.uleb128 0x2b
	.4byte	.LASF290
	.byte	0x1
	.byte	0x3c
	.4byte	0x20f
	.4byte	.LLST38
	.uleb128 0x2b
	.4byte	.LASF291
	.byte	0x1
	.byte	0x3c
	.4byte	0xf9
	.4byte	.LLST39
	.uleb128 0x2c
	.4byte	.LASF292
	.byte	0x1
	.byte	0x3e
	.4byte	0x69
	.4byte	.LLST40
	.uleb128 0x37
	.ascii	"fd\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x69
	.4byte	.LLST41
	.uleb128 0x35
	.4byte	0x101a
	.4byte	.LBB30
	.4byte	.LBE30
	.byte	0x1
	.byte	0x42
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF293
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	0x206
	.4byte	.LFB171
	.4byte	.LFE171
	.4byte	.LLST42
	.4byte	0x1425
	.uleb128 0x38
	.ascii	"p\000"
	.byte	0x1
	.byte	0x35
	.4byte	0x206
	.4byte	.LLST43
	.uleb128 0x2b
	.4byte	.LASF72
	.byte	0x1
	.byte	0x35
	.4byte	0xbe
	.4byte	.LLST44
	.uleb128 0x34
	.4byte	.LASF294
	.byte	0x1
	.byte	0x37
	.4byte	0x206
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF295
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.4byte	0x206
	.4byte	.LFB170
	.4byte	.LFE170
	.4byte	.LLST45
	.4byte	0x145d
	.uleb128 0x2b
	.4byte	.LASF72
	.byte	0x1
	.byte	0x2e
	.4byte	0xbe
	.4byte	.LLST46
	.uleb128 0x33
	.4byte	.LASF294
	.byte	0x1
	.byte	0x30
	.4byte	0x206
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF297
	.byte	0xa
	.2byte	0x12e
	.4byte	0x1469
	.uleb128 0x9
	.byte	0x4
	.4byte	0x43d
	.uleb128 0x34
	.4byte	.LASF298
	.byte	0x1
	.byte	0x15
	.4byte	0xdf
	.byte	0x5
	.byte	0x3
	.4byte	g_ms
	.uleb128 0x34
	.4byte	.LASF299
	.byte	0x1
	.byte	0x16
	.4byte	0x100f
	.byte	0x5
	.byte	0x3
	.4byte	g_ramHeap
	.uleb128 0x15
	.4byte	0xa9
	.4byte	0x14a4
	.uleb128 0x3a
	.4byte	0x1c9
	.4byte	0x195fff
	.byte	0x0
	.uleb128 0x34
	.4byte	.LASF300
	.byte	0x1
	.byte	0x17
	.4byte	0x1491
	.byte	0x5
	.byte	0x3
	.4byte	g_mainRam
	.uleb128 0x3b
	.4byte	.LASF301
	.byte	0x13
	.byte	0x56
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.4byte	.LASF302
	.byte	0x13
	.byte	0x57
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x14df
	.4byte	0x14df
	.uleb128 0x1a
	.4byte	0x1c9
	.byte	0x7
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x14e5
	.uleb128 0x6
	.4byte	0x57
	.uleb128 0x3c
	.4byte	.LASF303
	.byte	0x8
	.2byte	0x19c
	.4byte	0x14cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x328
	.4byte	0x1508
	.uleb128 0x1a
	.4byte	0x1c9
	.byte	0x7
	.byte	0x0
	.uleb128 0x3c
	.4byte	.LASF304
	.byte	0x8
	.2byte	0x19f
	.4byte	0x14f8
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF305
	.byte	0xa
	.2byte	0x12b
	.4byte	0x43d
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.4byte	.LASF306
	.byte	0x2
	.2byte	0x149
	.4byte	0x1533
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x9
	.byte	0x4
	.4byte	0xeba
	.uleb128 0x3c
	.4byte	.LASF307
	.byte	0x2
	.2byte	0x14d
	.4byte	0xeba
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.uleb128 0x34
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2a
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x3c
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
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x145
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1548
	.4byte	0x1034
	.ascii	"systemGetMs\000"
	.4byte	0x104a
	.ascii	"systemWaitKey\000"
	.4byte	0x1082
	.ascii	"systemPanic_d\000"
	.4byte	0x10d6
	.ascii	"systemRamReset\000"
	.4byte	0x10ea
	.ascii	"systemGetRamFree\000"
	.4byte	0x1102
	.ascii	"systemRamAlloc\000"
	.4byte	0x112f
	.ascii	"systemIsSlot2Active\000"
	.4byte	0x1147
	.ascii	"systemInit\000"
	.4byte	0x116f
	.ascii	"systemFileSize\000"
	.4byte	0x11ba
	.ascii	"systemClose\000"
	.4byte	0x11f2
	.ascii	"systemWrite\000"
	.4byte	0x1265
	.ascii	"systemSeek\000"
	.4byte	0x12bb
	.ascii	"systemRead\000"
	.4byte	0x1311
	.ascii	"systemReadOffset\000"
	.4byte	0x1376
	.ascii	"systemOpen\000"
	.4byte	0x13de
	.ascii	"systemRealloc\000"
	.4byte	0x1425
	.ascii	"systemAlloc\000"
	.4byte	0x1524
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
	.section	.debug_str,"MS",%progbits,1
.LASF220:
	.ascii	"coinReg\000"
.LASF44:
	.ascii	"long int\000"
.LASF233:
	.ascii	"_TNeoContext\000"
.LASF152:
	.ascii	"initOffset\000"
.LASF82:
	.ascii	"GL_TEXTURE\000"
.LASF227:
	.ascii	"debug\000"
.LASF216:
	.ascii	"ctrl1Reg\000"
.LASF308:
	.ascii	"GNU C 4.4.3\000"
.LASF310:
	.ascii	"__va_list\000"
.LASF66:
	.ascii	"centerX\000"
.LASF67:
	.ascii	"centerY\000"
.LASF97:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF175:
	.ascii	"pBios\000"
.LASF283:
	.ascii	"sizeToWrite\000"
.LASF189:
	.ascii	"scanline\000"
.LASF104:
	.ascii	"OBJSIZE_64\000"
.LASF49:
	.ascii	"IRQ_MASKS\000"
.LASF224:
	.ascii	"sramProtectLatch\000"
.LASF119:
	.ascii	"flags\000"
.LASF158:
	.ascii	"NEOROM_BIOS\000"
.LASF140:
	.ascii	"TRead8Func\000"
.LASF88:
	.ascii	"texturePtrs\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF34:
	.ascii	"IRQ_FIFO_NOT_EMPTY\000"
.LASF53:
	.ascii	"KEY_SELECT\000"
.LASF257:
	.ascii	"st_blksize\000"
.LASF177:
	.ascii	"pSram\000"
.LASF237:
	.ascii	"cpuWrite8Table\000"
.LASF239:
	.ascii	"cpuWrite32Table\000"
.LASF288:
	.ascii	"systemReadOffset\000"
.LASF32:
	.ascii	"IRQ_IPC_SYNC\000"
.LASF129:
	.ascii	"write8\000"
.LASF229:
	.ascii	"frameCounter\000"
.LASF267:
	.ascii	"szText\000"
.LASF261:
	.ascii	"pBase\000"
.LASF124:
	.ascii	"membase\000"
.LASF153:
	.ascii	"freqCounter\000"
.LASF210:
	.ascii	"sramProtection\000"
.LASF21:
	.ascii	"IRQ_TIMER0\000"
.LASF22:
	.ascii	"IRQ_TIMER1\000"
.LASF23:
	.ascii	"IRQ_TIMER2\000"
.LASF24:
	.ascii	"IRQ_TIMER3\000"
.LASF68:
	.ascii	"scaleX\000"
.LASF69:
	.ascii	"scaleY\000"
.LASF166:
	.ascii	"NEOROM_COUNT\000"
.LASF292:
	.ascii	"mode\000"
.LASF132:
	.ascii	"fetch8\000"
.LASF194:
	.ascii	"autoAnimationCounter\000"
.LASF163:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF252:
	.ascii	"st_spare1\000"
.LASF273:
	.ascii	"systemGetRamFree\000"
.LASF51:
	.ascii	"KEY_A\000"
.LASF192:
	.ascii	"vramBaseMask\000"
.LASF226:
	.ascii	"active\000"
.LASF218:
	.ascii	"ctrl3Reg\000"
.LASF61:
	.ascii	"KEY_X\000"
.LASF127:
	.ascii	"read16\000"
.LASF285:
	.ascii	"relative\000"
.LASF105:
	.ascii	"OBJCOLOR_16\000"
.LASF309:
	.ascii	"C:/Users/GRX/NeoDS/arm9/source/EmuSystem.c\000"
.LASF197:
	.ascii	"pTileBuffer\000"
.LASF262:
	.ascii	"pAlloc\000"
.LASF109:
	.ascii	"ino_t\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF143:
	.ascii	"TWrite8Func\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF13:
	.ascii	"float\000"
.LASF179:
	.ascii	"pVram\000"
.LASF205:
	.ascii	"watchdogCounter\000"
.LASF52:
	.ascii	"KEY_B\000"
.LASF270:
	.ascii	"szMessage\000"
.LASF306:
	.ascii	"g_neo\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF60:
	.ascii	"KEY_L\000"
.LASF92:
	.ascii	"nameCount\000"
.LASF59:
	.ascii	"KEY_R\000"
.LASF180:
	.ascii	"pSpriteRam\000"
.LASF37:
	.ascii	"IRQ_GEOMETRY_FIFO\000"
.LASF223:
	.ascii	"fixedRomLatch\000"
.LASF278:
	.ascii	"file\000"
.LASF62:
	.ascii	"KEY_Y\000"
.LASF241:
	.ascii	"TNeoContext\000"
.LASF232:
	.ascii	"fill\000"
.LASF117:
	.ascii	"Cyclone\000"
.LASF253:
	.ascii	"st_mtime\000"
.LASF63:
	.ascii	"KEY_TOUCH\000"
.LASF58:
	.ascii	"KEY_DOWN\000"
.LASF139:
	.ascii	"TCycloneContext\000"
.LASF274:
	.ascii	"systemIsSlot2Active\000"
.LASF142:
	.ascii	"TRead32Func\000"
.LASF25:
	.ascii	"IRQ_NETWORK\000"
.LASF41:
	.ascii	"IRQ_ALL\000"
.LASF55:
	.ascii	"KEY_RIGHT\000"
.LASF182:
	.ascii	"bankTable\000"
.LASF242:
	.ascii	"stat\000"
.LASF293:
	.ascii	"systemRealloc\000"
.LASF128:
	.ascii	"read32\000"
.LASF212:
	.ascii	"vramMod\000"
.LASF107:
	.ascii	"__gnuc_va_list\000"
.LASF238:
	.ascii	"cpuWrite16Table\000"
.LASF228:
	.ascii	"keyGrid\000"
.LASF148:
	.ascii	"offset\000"
.LASF248:
	.ascii	"st_gid\000"
.LASF101:
	.ascii	"OBJSIZE_8\000"
.LASF99:
	.ascii	"OBJSHAPE_TALL\000"
.LASF147:
	.ascii	"_TNeoADPCMStream\000"
.LASF245:
	.ascii	"st_mode\000"
.LASF276:
	.ascii	"systemRamAlloc\000"
.LASF236:
	.ascii	"cpuRead32Table\000"
.LASF307:
	.ascii	"g_neoContext\000"
.LASF246:
	.ascii	"st_nlink\000"
.LASF16:
	.ascii	"true\000"
.LASF234:
	.ascii	"cpuRead8Table\000"
.LASF258:
	.ascii	"st_blocks\000"
.LASF36:
	.ascii	"IRQ_CARD_LINE\000"
.LASF90:
	.ascii	"nextBlock\000"
.LASF277:
	.ascii	"systemFileSize\000"
.LASF303:
	.ascii	"bgControl\000"
.LASF209:
	.ascii	"sramProtectCount\000"
.LASF30:
	.ascii	"IRQ_KEYS\000"
.LASF311:
	.ascii	"neoResetContext\000"
.LASF203:
	.ascii	"cpuClocksPerScanline\000"
.LASF42:
	.ascii	"char\000"
.LASF271:
	.ascii	"keys\000"
.LASF202:
	.ascii	"cpuClockDivide\000"
.LASF146:
	.ascii	"TCheckPcFunc\000"
.LASF40:
	.ascii	"IRQ_WIFI\000"
.LASF93:
	.ascii	"OBJMODE_NORMAL\000"
.LASF297:
	.ascii	"glGlob\000"
.LASF85:
	.ascii	"matrixMode\000"
.LASF125:
	.ascii	"checkpc\000"
.LASF96:
	.ascii	"OBJMODE_BITMAP\000"
.LASF211:
	.ascii	"vramOffset\000"
.LASF135:
	.ascii	"IrqCallback\000"
.LASF38:
	.ascii	"IRQ_LID\000"
.LASF155:
	.ascii	"TNeoADPCMBStream\000"
.LASF213:
	.ascii	"displayControl\000"
.LASF251:
	.ascii	"st_atime\000"
.LASF18:
	.ascii	"IRQ_VBLANK\000"
.LASF294:
	.ascii	"pRet\000"
.LASF173:
	.ascii	"pRom0\000"
.LASF174:
	.ascii	"pRom1\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF300:
	.ascii	"g_mainRam\000"
.LASF108:
	.ascii	"time_t\000"
.LASF89:
	.ascii	"activeTexture\000"
.LASF80:
	.ascii	"GL_POSITION\000"
.LASF126:
	.ascii	"read8\000"
.LASF244:
	.ascii	"st_ino\000"
.LASF86:
	.ascii	"clearColor\000"
.LASF122:
	.ascii	"state_flags\000"
.LASF116:
	.ascii	"va_list\000"
.LASF167:
	.ascii	"pVideoWriteTable\000"
.LASF284:
	.ascii	"systemSeek\000"
.LASF10:
	.ascii	"long long int\000"
.LASF169:
	.ascii	"romBankCount\000"
.LASF291:
	.ascii	"write\000"
.LASF299:
	.ascii	"g_ramHeap\000"
.LASF162:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF31:
	.ascii	"IRQ_CART\000"
.LASF136:
	.ascii	"ResetCallback\000"
.LASF100:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF17:
	.ascii	"bool\000"
.LASF195:
	.ascii	"spriteMask\000"
.LASF130:
	.ascii	"write16\000"
.LASF207:
	.ascii	"fixedBank\000"
.LASF313:
	.ascii	"systemRamReset\000"
.LASF196:
	.ascii	"paletteDirty\000"
.LASF171:
	.ascii	"adpcmb\000"
.LASF186:
	.ascii	"smaBankoffset\000"
.LASF289:
	.ascii	"systemOpen\000"
.LASF198:
	.ascii	"tileOffsetX\000"
.LASF149:
	.ascii	"step\000"
.LASF54:
	.ascii	"KEY_START\000"
.LASF72:
	.ascii	"size\000"
.LASF275:
	.ascii	"systemInit\000"
.LASF312:
	.ascii	"timer0Intr\000"
.LASF12:
	.ascii	"uint32\000"
.LASF4:
	.ascii	"short int\000"
.LASF230:
	.ascii	"varEnd\000"
.LASF215:
	.ascii	"displayCounterLoad\000"
.LASF48:
	.ascii	"long unsigned int\000"
.LASF95:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF302:
	.ascii	"mosaicShadowSub\000"
.LASF87:
	.ascii	"textures\000"
.LASF254:
	.ascii	"st_spare2\000"
.LASF256:
	.ascii	"st_spare3\000"
.LASF57:
	.ascii	"KEY_UP\000"
.LASF217:
	.ascii	"ctrl2Reg\000"
.LASF280:
	.ascii	"systemClose\000"
.LASF176:
	.ascii	"pRam\000"
.LASF279:
	.ascii	"fileStat\000"
.LASF168:
	.ascii	"spriteCount\000"
.LASF178:
	.ascii	"pCard\000"
.LASF74:
	.ascii	"dirty\000"
.LASF47:
	.ascii	"__gid_t\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF150:
	.ascii	"TNeoADPCMStream\000"
.LASF286:
	.ascii	"systemRead\000"
.LASF113:
	.ascii	"gid_t\000"
.LASF65:
	.ascii	"angle\000"
.LASF131:
	.ascii	"write32\000"
.LASF199:
	.ascii	"tileOffsetY\000"
.LASF112:
	.ascii	"uid_t\000"
.LASF157:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF133:
	.ascii	"fetch16\000"
.LASF296:
	.ascii	"fatOk\000"
.LASF301:
	.ascii	"mosaicShadow\000"
.LASF164:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF272:
	.ascii	"systemGetMs\000"
.LASF235:
	.ascii	"cpuRead16Table\000"
.LASF282:
	.ascii	"pSrc\000"
.LASF39:
	.ascii	"IRQ_SPI\000"
.LASF79:
	.ascii	"GL_PROJECTION\000"
.LASF193:
	.ascii	"displayCounter\000"
.LASF78:
	.ascii	"cur_size\000"
.LASF26:
	.ascii	"IRQ_DMA0\000"
.LASF27:
	.ascii	"IRQ_DMA1\000"
.LASF28:
	.ascii	"IRQ_DMA2\000"
.LASF29:
	.ascii	"IRQ_DMA3\000"
.LASF206:
	.ascii	"paletteBank\000"
.LASF45:
	.ascii	"__dev_t\000"
.LASF200:
	.ascii	"tileScaleX\000"
.LASF201:
	.ascii	"tileScaleY\000"
.LASF304:
	.ascii	"bgState\000"
.LASF141:
	.ascii	"TRead16Func\000"
.LASF35:
	.ascii	"IRQ_CARD\000"
.LASF81:
	.ascii	"GL_MODELVIEW\000"
.LASF98:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF102:
	.ascii	"OBJSIZE_16\000"
.LASF259:
	.ascii	"st_spare4\000"
.LASF264:
	.ascii	"TLinearHeap\000"
.LASF75:
	.ascii	"BgState\000"
.LASF46:
	.ascii	"__uid_t\000"
.LASF255:
	.ascii	"st_ctime\000"
.LASF219:
	.ascii	"ctrl4Reg\000"
.LASF225:
	.ascii	"paletteRamLatch\000"
.LASF160:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF20:
	.ascii	"IRQ_VCOUNT\000"
.LASF265:
	.ascii	"systemWaitKey\000"
.LASF281:
	.ascii	"systemWrite\000"
.LASF185:
	.ascii	"smaBankAddr\000"
.LASF190:
	.ascii	"frameCount\000"
.LASF77:
	.ascii	"data\000"
.LASF84:
	.ascii	"gl_hidden_globals\000"
.LASF145:
	.ascii	"TWrite32Func\000"
.LASF94:
	.ascii	"OBJMODE_BLENDED\000"
.LASF118:
	.ascii	"unused\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF106:
	.ascii	"OBJCOLOR_256\000"
.LASF260:
	.ascii	"_TLinearHeap\000"
.LASF56:
	.ascii	"KEY_LEFT\000"
.LASF287:
	.ascii	"pDst\000"
.LASF50:
	.ascii	"KEYPAD_BITS\000"
.LASF268:
	.ascii	"szFile\000"
.LASF165:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF73:
	.ascii	"type\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF172:
	.ascii	"adpcmActive\000"
.LASF181:
	.ascii	"pPalette\000"
.LASF134:
	.ascii	"fetch32\000"
.LASF269:
	.ascii	"line\000"
.LASF83:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF33:
	.ascii	"IRQ_FIFO_EMPTY\000"
.LASF138:
	.ascii	"internal\000"
.LASF295:
	.ascii	"systemAlloc\000"
.LASF15:
	.ascii	"false\000"
.LASF187:
	.ascii	"smaBankbit\000"
.LASF103:
	.ascii	"OBJSIZE_32\000"
.LASF170:
	.ascii	"adpcm\000"
.LASF159:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF76:
	.ascii	"DynamicArray\000"
.LASF154:
	.ascii	"frequency\000"
.LASF70:
	.ascii	"scrollX\000"
.LASF250:
	.ascii	"st_size\000"
.LASF231:
	.ascii	"__ap\000"
.LASF263:
	.ascii	"pTop\000"
.LASF247:
	.ascii	"st_uid\000"
.LASF208:
	.ascii	"romBankAddress\000"
.LASF71:
	.ascii	"scrollY\000"
.LASF64:
	.ascii	"KEY_LID\000"
.LASF114:
	.ascii	"mode_t\000"
.LASF115:
	.ascii	"nlink_t\000"
.LASF243:
	.ascii	"st_dev\000"
.LASF0:
	.ascii	"signed char\000"
.LASF151:
	.ascii	"_TNeoADPCMBStream\000"
.LASF156:
	.ascii	"_TNeoRomRegion\000"
.LASF110:
	.ascii	"off_t\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF120:
	.ascii	"prev_pc\000"
.LASF188:
	.ascii	"smaRand\000"
.LASF240:
	.ascii	"cpuCheckPcTable\000"
.LASF19:
	.ascii	"IRQ_HBLANK\000"
.LASF121:
	.ascii	"reserved\000"
.LASF298:
	.ascii	"g_ms\000"
.LASF191:
	.ascii	"pVramBase\000"
.LASF305:
	.ascii	"glGlobalData\000"
.LASF14:
	.ascii	"double\000"
.LASF222:
	.ascii	"screenDarkLatch\000"
.LASF111:
	.ascii	"dev_t\000"
.LASF290:
	.ascii	"szFileName\000"
.LASF266:
	.ascii	"systemPanic_d\000"
.LASF43:
	.ascii	"_off_t\000"
.LASF123:
	.ascii	"cycles\000"
.LASF249:
	.ascii	"st_rdev\000"
.LASF144:
	.ascii	"TWrite16Func\000"
.LASF214:
	.ascii	"displayControlMask\000"
.LASF91:
	.ascii	"nextPBlock\000"
.LASF161:
	.ascii	"NEOROM_AUDODATA\000"
.LASF221:
	.ascii	"irqVectorLatch\000"
.LASF204:
	.ascii	"irqPending\000"
.LASF183:
	.ascii	"smaAddr0\000"
.LASF184:
	.ascii	"smaAddr1\000"
.LASF137:
	.ascii	"UnrecognizedCallback\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
