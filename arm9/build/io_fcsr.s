	.code	16
	.file	"io_fcsr.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	_FCSR_clearStatus
	.code 16
	.thumb_func
	.type	_FCSR_clearStatus, %function
_FCSR_clearStatus:
.LFB3:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_fcsr.c"
	.loc 1 105 0
	.loc 1 107 0
	mov	r0, #1
	.loc 1 105 0
	@ lr needed for prologue
	.loc 1 107 0
	@ sp needed for prologue
	bx	lr
.LFE3:
	.size	_FCSR_clearStatus, .-_FCSR_clearStatus
	.align	2
	.global	_FCSR_writeSectors
	.code 16
	.thumb_func
	.type	_FCSR_writeSectors, %function
_FCSR_writeSectors:
.LFB5:
	.loc 1 188 0
	push	{r4, r5, r6, r7, lr}
.LCFI0:
.LVL0:
	.loc 1 188 0
	mov	r6, r1
	.loc 1 191 0
	lsl	r7, r1, #9
	ldr	r3, .L15
	ldr	r1, .L15+4
.LVL1:
	.loc 1 188 0
	mov	ip, r2
	.loc 1 191 0
	mov	r5, #0
.LVL2:
.LVL3:
.L4:
	.loc 1 198 0
	ldr	r4, [r1]
	cmp	r0, r4
	bcc	.L5
	ldr	r2, [r3]
	cmp	r0, r2
	bcc	.L7
.LVL4:
.L5:
	.loc 1 196 0
	add	r5, r5, #1
	add	r1, r1, #4
	add	r3, r3, #4
	cmp	r5, #4
	beq	.L8
	b	.L4
.LVL5:
.L7:
	.loc 1 209 0
	add	r3, r0, r6
	cmp	r3, r2
	bhi	.L8
	.loc 1 213 0
	ldr	r1, .L15+8
	lsl	r2, r5, #2
	sub	r3, r0, r4
	ldr	r2, [r2, r1]
	lsl	r3, r3, #9
	add	r0, r3, r2
.LVL6:
	mov	r2, #0
	b	.L10
.L11:
	.loc 1 216 0
	mov	r1, ip
	ldrb	r3, [r2, r1]
	add	r2, r2, #1
	strb	r3, [r0]
	add	r0, r0, #1
.L10:
	.loc 1 214 0
	cmp	r2, r7
	bne	.L11
	mov	r0, #1
.LVL7:
	b	.L13
.LVL8:
.L8:
	mov	r0, #0
.LVL9:
.L13:
	.loc 1 220 0
	@ sp needed for prologue
.LVL10:
.LVL11:
	pop	{r4, r5, r6, r7, pc}
.L16:
	.align	2
.L15:
	.word	_FCSR_SramSectorEnd
	.word	_FCSR_SramSectorStart
	.word	_FCSR_SramSectorPointer
.LFE5:
	.size	_FCSR_writeSectors, .-_FCSR_writeSectors
	.align	2
	.global	_FCSR_startUp
	.code 16
	.thumb_func
	.type	_FCSR_startUp, %function
_FCSR_startUp:
.LFB7:
	.loc 1 249 0
	push	{r4, r5, r6, r7, lr}
.LCFI1:
	ldr	r4, .L60
.LVL12:
	sub	sp, sp, #20
.LCFI2:
	b	.L59
.L19:
	.loc 1 262 0
	mov	r1, #128
	lsl	r1, r1, #1
	add	r4, r4, r1
.L59:
	.loc 1 261 0
	ldr	r2, [r4]
	ldr	r3, .L60+4
	cmp	r2, r3
	beq	.L20
	ldr	r3, .L60+8
	cmp	r4, r3
	bls	.L19
.L20:
	.loc 1 263 0
	ldr	r0, .L60+12
	add	r1, r4, #4
	mov	r2, #12
	bl	strncmp
	cmp	r0, #0
	bne	.L22
	ldr	r3, .L60+8
	cmp	r4, r3
	bls	.L24
.L22:
	.loc 1 267 0
	mov	r2, #128
	lsl	r2, r2, #2
	.loc 1 259 0
	ldr	r3, .L60+8
	.loc 1 267 0
	add	r4, r4, r2
	.loc 1 259 0
	cmp	r4, r3
	bls	.L59
	mov	r0, #0
	b	.L26
.L27:
	.loc 1 249 0
	add	r1, r4, r0
	.loc 1 280 0
	ldr	r2, [r1, #16]
	ldr	r3, .L60+16
	str	r2, [r0, r3]
	.loc 1 281 0
	ldr	r1, [r1, #32]
	mov	r3, sp
	str	r1, [r0, r3]
	.loc 1 282 0
	ldr	r3, .L60+20
	add	r2, r2, r1
	str	r2, [r0, r3]
	add	r0, r0, #4
	.loc 1 278 0
	cmp	r0, #16
	bne	.L27
	.loc 1 286 0
	ldr	r2, .L60+24
	ldr	r3, .L60+28
	mov	r0, r2
	str	r3, [r2]
	mov	r1, #0
.L29:
	.loc 1 289 0
	mov	r3, sp
	ldr	r2, [r1, r3]
	ldr	r3, [r0]
	lsl	r2, r2, #9
	add	r3, r3, r2
	add	r1, r1, #4
	str	r3, [r0, #4]
	add	r0, r0, #4
	.loc 1 287 0
	cmp	r1, #12
	bne	.L29
	.loc 1 293 0
	mov	r3, #160
	lsl	r3, r3, #20
	ldrb	r3, [r3]
	cmp	r3, #70
	bne	.L31
	ldr	r3, .L60+32
	ldrb	r3, [r3]
	cmp	r3, #67
	bne	.L31
	ldr	r3, .L60+36
	ldrb	r3, [r3]
	cmp	r3, #83
	bne	.L31
	ldr	r3, .L60+40
	ldrb	r3, [r3]
	cmp	r3, #82
	beq	.L35
.L31:
	.loc 1 295 0
	mov	r3, #160
	lsl	r3, r3, #20
	mov	r2, #70
	strb	r2, [r3]
	.loc 1 296 0
	ldr	r3, .L60+32
	mov	r2, #67
	strb	r2, [r3]
	.loc 1 297 0
	mov	r2, #83
	add	r3, r3, #1
	strb	r2, [r3]
	.loc 1 298 0
	add	r3, r3, #1
	mov	r2, #82
	strb	r2, [r3]
	ldr	r3, .L60+16
	ldr	r5, .L60+44
	ldr	r7, .L60+24
	ldr	r6, .L60+20
	mov	r4, #0
.LVL13:
	mov	ip, r3
.LVL14:
.L36:
	.loc 1 302 0
	mov	r1, ip
.LVL15:
	ldr	r3, [r4, r1]
	ldr	r2, [r5]
	lsl	r3, r3, #9
	.loc 1 303 0
	ldr	r0, [r4, r7]
	.loc 1 302 0
	add	r1, r3, r2
.LVL16:
	b	.L37
.L38:
	.loc 1 305 0
	ldrb	r3, [r1]
	add	r1, r1, #1
	strb	r3, [r0]
	add	r0, r0, #1
.L37:
	.loc 1 304 0
	ldr	r3, [r4, r6]
	ldr	r2, [r5]
	lsl	r3, r3, #9
	add	r3, r3, r2
	cmp	r1, r3
	bcc	.L38
	add	r4, r4, #4
	.loc 1 300 0
	cmp	r4, #16
	bne	.L36
.LVL17:
.L35:
	ldr	r0, .L60+16
.LVL18:
	ldr	r1, .L60+20
.LVL19:
	mov	r2, #0
.L40:
	.loc 1 312 0
	mov	r3, sp
	ldr	r3, [r2, r3]
	cmp	r3, #0
	bne	.L41
	.loc 1 314 0
	mov	r3, #1
	neg	r3, r3
	str	r3, [r2, r0]
	.loc 1 315 0
	str	r3, [r2, r1]
.L41:
	add	r2, r2, #4
	.loc 1 310 0
	cmp	r2, #16
	bne	.L40
	mov	r0, #1
	b	.L26
.L24:
	.loc 1 275 0
	ldr	r1, .L60+48
	ldr	r2, .L60+44
	add	r3, r4, r1
	mov	r0, #0
	str	r3, [r2]
	b	.L27
.L26:
	.loc 1 320 0
	add	sp, sp, #20
	@ sp needed for prologue
.LVL20:
	pop	{r4, r5, r6, r7, pc}
.L61:
	.align	2
.L60:
	.word	134217984
	.word	1381188422
	.word	167772159
	.word	_FCSR_LabelString
	.word	_FCSR_SramSectorStart
	.word	_FCSR_SramSectorEnd
	.word	_FCSR_SramSectorPointer
	.word	167772164
	.word	167772161
	.word	167772162
	.word	167772163
	.word	_FCSR_FileSysPointer
	.word	-256
.LFE7:
	.size	_FCSR_startUp, .-_FCSR_startUp
	.align	2
	.global	_FCSR_isInserted
	.code 16
	.thumb_func
	.type	_FCSR_isInserted, %function
_FCSR_isInserted:
.LFB2:
	.loc 1 77 0
	push	{r4, lr}
.LCFI3:
	.loc 1 77 0
	ldr	r4, .L81
.LVL21:
	b	.L80
.L64:
	.loc 1 86 0
	mov	r3, #128
	lsl	r3, r3, #1
	add	r4, r4, r3
.L80:
	.loc 1 85 0
	ldr	r2, [r4]
	ldr	r3, .L81+4
	cmp	r2, r3
	beq	.L65
	ldr	r3, .L81+8
	cmp	r4, r3
	bls	.L64
.L65:
	.loc 1 87 0
	ldr	r0, .L81+12
	add	r1, r4, #4
	mov	r2, #12
	bl	strncmp
	cmp	r0, #0
	bne	.L67
	ldr	r3, .L81+8
	cmp	r4, r3
	bhi	.L67
	mov	r0, #1
.LVL22:
	b	.L73
.LVL23:
.L67:
	.loc 1 91 0
	mov	r3, #128
	lsl	r3, r3, #2
	add	r4, r4, r3
	.loc 1 83 0
	ldr	r3, .L81+8
	cmp	r4, r3
	bls	.L80
	mov	r0, #0
.LVL24:
.L73:
.LVL25:
	.loc 1 96 0
	@ sp needed for prologue
.LVL26:
	pop	{r4, pc}
.L82:
	.align	2
.L81:
	.word	134217984
	.word	1381188422
	.word	167772159
	.word	_FCSR_LabelString
.LFE2:
	.size	_FCSR_isInserted, .-_FCSR_isInserted
	.align	2
	.global	_FCSR_readSectors
	.code 16
	.thumb_func
	.type	_FCSR_readSectors, %function
_FCSR_readSectors:
.LFB4:
	.loc 1 120 0
	push	{r4, r5, r6, r7, lr}
.LCFI4:
.LVL27:
	.loc 1 123 0
	lsl	r3, r1, #9
	.loc 1 120 0
	mov	r4, r0
	mov	r6, r1
	.loc 1 123 0
	ldr	r0, .L97
.LVL28:
	ldr	r1, .L97+4
.LVL29:
	.loc 1 120 0
	sub	sp, sp, #4
.LCFI5:
	.loc 1 120 0
	mov	r7, r2
	.loc 1 123 0
	mov	ip, r3
.LVL30:
	mov	r5, #0
.LVL31:
.LVL32:
.L84:
	.loc 1 130 0
	ldr	r3, [r0]
	cmp	r4, r3
	bcc	.L85
	ldr	r2, [r1]
	cmp	r4, r2
	bcc	.L87
.LVL33:
.L85:
	.loc 1 128 0
	add	r5, r5, #1
	add	r0, r0, #4
	add	r1, r1, #4
	cmp	r5, #4
	beq	.L88
	b	.L84
.LVL34:
.L87:
	.loc 1 138 0
	add	r3, r4, r6
	cmp	r3, r2
	bls	.L89
	mov	r0, #0
	b	.L91
.L89:
	.loc 1 144 0
	ldr	r3, .L97
	lsl	r2, r5, #2
	ldr	r3, [r2, r3]
	ldr	r1, .L97+8
	sub	r3, r4, r3
	ldr	r2, [r2, r1]
	lsl	r3, r3, #9
	add	r0, r3, r2
.LVL35:
	.loc 1 148 0
	mov	r2, #0
	b	.L92
.L93:
	.loc 1 154 0
	ldrb	r3, [r0]
	add	r0, r0, #1
	strb	r3, [r2, r7]
	add	r2, r2, #1
.L92:
	.loc 1 152 0
	cmp	r2, ip
	bne	.L93
	b	.L96
.LVL36:
.L88:
	.loc 1 170 0
	ldr	r3, .L97+12
	lsl	r1, r4, #9
	ldr	r3, [r3]
	mov	r0, r7
	add	r1, r1, r3
	mov	r2, ip
	bl	memcpy
.LVL37:
.L96:
	mov	r0, #1
.LVL38:
.L91:
	.loc 1 176 0
	add	sp, sp, #4
	@ sp needed for prologue
.LVL39:
.LVL40:
.LVL41:
.LVL42:
	pop	{r4, r5, r6, r7, pc}
.L98:
	.align	2
.L97:
	.word	_FCSR_SramSectorStart
	.word	_FCSR_SramSectorEnd
	.word	_FCSR_SramSectorPointer
	.word	_FCSR_FileSysPointer
.LFE4:
	.size	_FCSR_readSectors, .-_FCSR_readSectors
	.align	2
	.global	_FCSR_shutdown
	.code 16
	.thumb_func
	.type	_FCSR_shutdown, %function
_FCSR_shutdown:
.LFB6:
	.loc 1 227 0
	.loc 1 232 0
	ldr	r2, .L101
	mov	r3, #0
	.loc 1 236 0
	ldr	r0, .L101+4
	.loc 1 237 0
	ldr	r1, .L101+8
	.loc 1 232 0
	str	r3, [r2]
	.loc 1 238 0
	ldr	r2, .L101+12
	.loc 1 236 0
	str	r3, [r0]
	str	r3, [r0, #4]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	.loc 1 241 0
	mov	r0, #1
	.loc 1 227 0
	@ lr needed for prologue
	.loc 1 237 0
	str	r3, [r1]
	.loc 1 238 0
	str	r3, [r2]
	.loc 1 237 0
	str	r3, [r1, #4]
	.loc 1 238 0
	str	r3, [r2, #4]
	.loc 1 237 0
	str	r3, [r1, #8]
	.loc 1 238 0
	str	r3, [r2, #8]
	.loc 1 237 0
	str	r3, [r1, #12]
	.loc 1 238 0
	str	r3, [r2, #12]
	.loc 1 241 0
	@ sp needed for prologue
	bx	lr
.L102:
	.align	2
.L101:
	.word	_FCSR_FileSysPointer
	.word	_FCSR_SramSectorPointer
	.word	_FCSR_SramSectorStart
	.word	_FCSR_SramSectorEnd
.LFE6:
	.size	_FCSR_shutdown, .-_FCSR_shutdown
	.global	_FCSR_LabelString
	.section	.rodata
	.align	2
	.type	_FCSR_LabelString, %object
	.size	_FCSR_LabelString, 12
_FCSR_LabelString:
	.ascii	" Chishm FAT\000"
	.global	_FCSR_FileSysPointer
	.bss
	.align	2
	.type	_FCSR_FileSysPointer, %object
	.size	_FCSR_FileSysPointer, 4
_FCSR_FileSysPointer:
	.space	4
	.global	_FCSR_SramSectorPointer
	.align	2
	.type	_FCSR_SramSectorPointer, %object
	.size	_FCSR_SramSectorPointer, 16
_FCSR_SramSectorPointer:
	.space	16
	.global	_FCSR_SramSectorStart
	.align	2
	.type	_FCSR_SramSectorStart, %object
	.size	_FCSR_SramSectorStart, 16
_FCSR_SramSectorStart:
	.space	16
	.global	_FCSR_SramSectorEnd
	.align	2
	.type	_FCSR_SramSectorEnd, %object
	.size	_FCSR_SramSectorEnd, 16
_FCSR_SramSectorEnd:
	.space	16
	.global	_io_fcsr
	.section	.rodata
	.align	2
	.type	_io_fcsr, %object
	.size	_io_fcsr, 32
_io_fcsr:
	.word	1381188422
	.word	19
	.word	_FCSR_startUp
	.word	_FCSR_isInserted
	.word	_FCSR_readSectors
	.word	_FCSR_writeSectors
	.word	_FCSR_clearStatus
	.word	_FCSR_shutdown
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
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
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
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI1-.LFB7
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
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI3-.LFB2
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
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
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.align	2
.LEFDE10:
	.file 2 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/disc_io.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL37-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x4b1
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF54
	.byte	0x1
	.4byte	.LASF55
	.4byte	.LASF56
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
	.4byte	.LASF57
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
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x1
	.byte	0x8
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF58
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.4byte	0xb9
	.byte	0x1
	.uleb128 0x11
	.4byte	0x1f1
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x5d
	.uleb128 0x12
	.4byte	0x296
	.byte	0x1
	.4byte	.LASF37
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.4byte	0xb9
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0xbb
	.4byte	0x99
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0xbb
	.4byte	0x8f
	.4byte	.LLST3
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0xbb
	.4byte	0x111
	.4byte	.LLST4
	.uleb128 0x14
	.ascii	"i\000"
	.byte	0x1
	.byte	0xbd
	.4byte	0x73
	.4byte	.LLST5
	.uleb128 0x15
	.4byte	.LASF35
	.byte	0x1
	.byte	0xbe
	.4byte	0xb9
	.uleb128 0x15
	.4byte	.LASF36
	.byte	0x1
	.byte	0xbf
	.4byte	0x99
	.uleb128 0x16
	.ascii	"src\000"
	.byte	0x1
	.byte	0xc0
	.4byte	0x296
	.uleb128 0x14
	.ascii	"dst\000"
	.byte	0x1
	.byte	0xc1
	.4byte	0x296
	.4byte	.LLST6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x12
	.4byte	0x30a
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.4byte	0xb9
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST7
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x1
	.byte	0xfa
	.4byte	0xb9
	.uleb128 0x16
	.ascii	"i\000"
	.byte	0x1
	.byte	0xfb
	.4byte	0x73
	.uleb128 0x17
	.4byte	.LASF40
	.byte	0x1
	.byte	0xfc
	.4byte	0x30a
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0xfd
	.4byte	0x296
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LASF42
	.byte	0x1
	.byte	0xfe
	.4byte	0x296
	.4byte	.LLST9
	.uleb128 0x19
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x100
	.4byte	0x31a
	.4byte	.LLST10
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x31a
	.4byte	0x73
	.uleb128 0x1b
	.4byte	0x1e3
	.byte	0x3
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x99
	.uleb128 0x12
	.4byte	0x35c
	.byte	0x1
	.4byte	.LASF44
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.4byte	0xb9
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST11
	.uleb128 0x18
	.4byte	.LASF39
	.byte	0x1
	.byte	0x4e
	.4byte	0xb9
	.4byte	.LLST12
	.uleb128 0x18
	.4byte	.LASF43
	.byte	0x1
	.byte	0x50
	.4byte	0x31a
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x12
	.4byte	0x3e8
	.byte	0x1
	.4byte	.LASF45
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.4byte	0xb9
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST14
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x77
	.4byte	0x99
	.4byte	.LLST15
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0x77
	.4byte	0x99
	.4byte	.LLST16
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0x77
	.4byte	0x111
	.4byte	.LLST17
	.uleb128 0x14
	.ascii	"i\000"
	.byte	0x1
	.byte	0x79
	.4byte	0x73
	.4byte	.LLST18
	.uleb128 0x15
	.4byte	.LASF35
	.byte	0x1
	.byte	0x7a
	.4byte	0xb9
	.uleb128 0x18
	.4byte	.LASF46
	.byte	0x1
	.byte	0x7b
	.4byte	0x73
	.4byte	.LLST19
	.uleb128 0x14
	.ascii	"src\000"
	.byte	0x1
	.byte	0x7c
	.4byte	0x296
	.4byte	.LLST20
	.uleb128 0x16
	.ascii	"dst\000"
	.byte	0x1
	.byte	0x7d
	.4byte	0x296
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x40d
	.byte	0x1
	.4byte	.LASF47
	.byte	0x1
	.byte	0xe3
	.byte	0x1
	.4byte	0xb9
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x16
	.ascii	"i\000"
	.byte	0x1
	.byte	0xe4
	.4byte	0x73
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x145
	.4byte	0x420
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_io_fcsr
	.uleb128 0x1e
	.4byte	0x1d8
	.uleb128 0x1a
	.4byte	0x435
	.4byte	0x1ea
	.uleb128 0x1b
	.4byte	0x1e3
	.byte	0xb
	.byte	0x0
	.uleb128 0x1f
	.4byte	.LASF49
	.byte	0x1
	.byte	0x40
	.4byte	0x447
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_FCSR_LabelString
	.uleb128 0x1e
	.4byte	0x425
	.uleb128 0x1f
	.4byte	.LASF50
	.byte	0x1
	.byte	0x42
	.4byte	0x296
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_FCSR_FileSysPointer
	.uleb128 0x1a
	.4byte	0x46e
	.4byte	0x296
	.uleb128 0x1b
	.4byte	0x1e3
	.byte	0x3
	.byte	0x0
	.uleb128 0x1f
	.4byte	.LASF51
	.byte	0x1
	.byte	0x43
	.4byte	0x45e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_FCSR_SramSectorPointer
	.uleb128 0x1a
	.4byte	0x490
	.4byte	0x99
	.uleb128 0x1b
	.4byte	0x1e3
	.byte	0x3
	.byte	0x0
	.uleb128 0x1f
	.4byte	.LASF52
	.byte	0x1
	.byte	0x44
	.4byte	0x480
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_FCSR_SramSectorStart
	.uleb128 0x1f
	.4byte	.LASF53
	.byte	0x1
	.byte	0x45
	.4byte	0x480
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_FCSR_SramSectorEnd
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.4byte	0x115
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x4b5
	.4byte	0x1ff
	.ascii	"_FCSR_clearStatus\000"
	.4byte	0x20e
	.ascii	"_FCSR_writeSectors\000"
	.4byte	0x29c
	.ascii	"_FCSR_startUp\000"
	.4byte	0x320
	.ascii	"_FCSR_isInserted\000"
	.4byte	0x35c
	.ascii	"_FCSR_readSectors\000"
	.4byte	0x3e8
	.ascii	"_FCSR_shutdown\000"
	.4byte	0x40d
	.ascii	"_io_fcsr\000"
	.4byte	0x435
	.ascii	"_FCSR_LabelString\000"
	.4byte	0x44c
	.ascii	"_FCSR_FileSysPointer\000"
	.4byte	0x46e
	.ascii	"_FCSR_SramSectorPointer\000"
	.4byte	0x490
	.ascii	"_FCSR_SramSectorStart\000"
	.4byte	0x4a2
	.ascii	"_FCSR_SramSectorEnd\000"
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
.LASF1:
	.ascii	"unsigned char\000"
.LASF15:
	.ascii	"bool\000"
.LASF57:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF48:
	.ascii	"_io_fcsr\000"
.LASF53:
	.ascii	"_FCSR_SramSectorEnd\000"
.LASF50:
	.ascii	"_FCSR_FileSysPointer\000"
.LASF36:
	.ascii	"writeLength\000"
.LASF51:
	.ascii	"_FCSR_SramSectorPointer\000"
.LASF32:
	.ascii	"sector\000"
.LASF8:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF58:
	.ascii	"_FCSR_clearStatus\000"
.LASF26:
	.ascii	"fn_readSectors\000"
.LASF29:
	.ascii	"fn_shutdown\000"
.LASF4:
	.ascii	"long int\000"
.LASF27:
	.ascii	"fn_writeSectors\000"
.LASF20:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF28:
	.ascii	"fn_clearStatus\000"
.LASF44:
	.ascii	"_FCSR_isInserted\000"
.LASF45:
	.ascii	"_FCSR_readSectors\000"
.LASF47:
	.ascii	"_FCSR_shutdown\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF40:
	.ascii	"SramRegionSize\000"
.LASF49:
	.ascii	"_FCSR_LabelString\000"
.LASF22:
	.ascii	"ioType\000"
.LASF25:
	.ascii	"fn_isInserted\000"
.LASF46:
	.ascii	"readLength\000"
.LASF38:
	.ascii	"_FCSR_startUp\000"
.LASF17:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF54:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF18:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF11:
	.ascii	"float\000"
.LASF33:
	.ascii	"numSectors\000"
.LASF56:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF23:
	.ascii	"features\000"
.LASF21:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF39:
	.ascii	"flagFoundFileSys\000"
.LASF2:
	.ascii	"short int\000"
.LASF19:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF34:
	.ascii	"buffer\000"
.LASF16:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF13:
	.ascii	"false\000"
.LASF35:
	.ascii	"flagSramSector\000"
.LASF31:
	.ascii	"char\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF52:
	.ascii	"_FCSR_SramSectorStart\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF30:
	.ascii	"IO_INTERFACE\000"
.LASF24:
	.ascii	"fn_startup\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF55:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_"
	.ascii	"io/io_fcsr.c\000"
.LASF43:
	.ascii	"fileSysPointer\000"
.LASF42:
	.ascii	"destByte\000"
.LASF37:
	.ascii	"_FCSR_writeSectors\000"
.LASF12:
	.ascii	"double\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF14:
	.ascii	"true\000"
.LASF41:
	.ascii	"srcByte\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
