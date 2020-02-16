	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"io_sd_common.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	_SD_CRC7
	.code	16
	.thumb_func
	.type	_SD_CRC7, %function
_SD_CRC7:
.LFB0:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_sd_common.c"
	.loc 1 50 0
	push	{r4, r5, r6, r7, lr}
.LCFI0:
.LVL0:
	.loc 1 50 0
	mov	r3, #0
.LVL1:
	mov	r2, #0
.LVL2:
	.loc 1 61 0
	mov	r7, #128
	.loc 1 55 0
	b	.L2
.LVL3:
.L6:
	.loc 1 57 0
	ldrb	r5, [r0, r2]
	mov	r4, #0
.L5:
	.loc 1 60 0
	lsl	r3, r3, #25
.LVL4:
	lsr	r3, r3, #24
.LVL5:
	.loc 1 61 0
	mov	r6, r3
	eor	r6, r6, r5
	tst	r6, r7
	beq	.L3
	mov	r6, #9
	eor	r3, r3, r6
.LVL6:
	lsl	r3, r3, #24
	lsr	r3, r3, #24
.LVL7:
.L3:
	.loc 1 58 0
	add	r4, r4, #1
	cmp	r4, #8
	beq	.L4
	.loc 1 62 0
	lsl	r5, r5, #25
.LVL8:
	lsr	r5, r5, #24
.LVL9:
	b	.L5
.L4:
	.loc 1 55 0
	add	r2, r2, #1
.L2:
	cmp	r2, r1
	blt	.L6
	.loc 1 65 0
	lsl	r0, r3, #1
.LVL10:
	mov	r2, #1
.LVL11:
	orr	r0, r0, r2
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	.loc 1 67 0
	@ sp needed for prologue
.LVL12:
.LVL13:
	pop	{r4, r5, r6, r7, pc}
.LFE0:
	.size	_SD_CRC7, .-_SD_CRC7
	.align	2
	.global	_SD_CRC16
	.code	16
	.thumb_func
	.type	_SD_CRC16, %function
_SD_CRC16:
.LFB1:
	.loc 1 74 0
	push	{r4, r5, r6, r7, lr}
.LCFI1:
.LVL14:
	.loc 1 93 0
	mov	r6, #128
	.loc 1 74 0
	sub	sp, sp, #28
.LCFI2:
	.loc 1 86 0
	lsl	r1, r1, #3
.LVL15:
	.loc 1 93 0
	lsl	r6, r6, #9
	.loc 1 86 0
	ldr	r3, .L29
.LVL16:
	.loc 1 93 0
	ldr	r5, .L29+4
	.loc 1 74 0
	str	r0, [sp, #16]
	str	r2, [sp, #20]
	.loc 1 86 0
	str	r1, [sp, #12]
	mov	r7, #0
.LVL17:
	mov	r2, #0
.LVL18:
	mov	r1, #0
.LVL19:
	mov	r0, #0
.LVL20:
	mov	r4, #0
.LVL21:
	.loc 1 108 0
	str	r6, [sp, #4]
.L19:
	.loc 1 90 0
	mov	r6, #128
	tst	r3, r6
	beq	.L10
	ldr	r6, [sp, #16]
	ldrb	r7, [r6]
.LVL22:
	add	r6, r6, #1
	str	r6, [sp, #16]
.L10:
	.loc 1 93 0
	ldr	r6, [sp, #4]
	.loc 1 92 0
	lsl	r4, r4, #1
.LVL23:
	.loc 1 93 0
	tst	r4, r6
	beq	.L11
	eor	r4, r4, r5
.L11:
	.loc 1 94 0
	lsr	r6, r3, #24
	tst	r7, r6
	beq	.L12
	eor	r4, r4, r5
.L12:
	.loc 1 97 0
	ldr	r6, [sp, #4]
	.loc 1 96 0
	lsl	r0, r0, #1
.LVL24:
	.loc 1 97 0
	tst	r0, r6
	beq	.L13
	eor	r0, r0, r5
.L13:
	.loc 1 98 0
	lsr	r6, r3, #25
	tst	r7, r6
	beq	.L14
	eor	r0, r0, r5
.L14:
	.loc 1 101 0
	ldr	r6, [sp, #4]
	.loc 1 100 0
	lsl	r1, r1, #1
.LVL25:
	.loc 1 101 0
	tst	r1, r6
	beq	.L15
	eor	r1, r1, r5
.L15:
	.loc 1 102 0
	lsr	r6, r3, #26
	tst	r7, r6
	beq	.L16
	eor	r1, r1, r5
.L16:
	.loc 1 105 0
	ldr	r6, [sp, #4]
	.loc 1 104 0
	lsl	r2, r2, #1
.LVL26:
	.loc 1 105 0
	tst	r2, r6
	beq	.L17
	eor	r2, r2, r5
.L17:
	.loc 1 106 0
	lsr	r6, r3, #27
	tst	r7, r6
	beq	.L18
	eor	r2, r2, r5
.L18:
	.loc 1 108 0
	mov	r6, #4
	ror	r3, r3, r6
.LVL27:
	.loc 1 109 0
	ldr	r6, [sp, #12]
	sub	r6, r6, #4
	str	r6, [sp, #12]
	cmp	r6, #0
	bne	.L19
	.loc 1 115 0
	mov	r5, #128
	mov	r7, #8
.LVL28:
	.loc 1 109 0
	mov	r6, #16
.LVL29:
	.loc 1 115 0
	lsl	r5, r5, #8
	mov	ip, r7
.L26:
	.loc 1 114 0
	lsl	r3, r3, #4
.LVL30:
	.loc 1 115 0
	tst	r4, r5
	beq	.L20
	mov	r7, ip
	orr	r3, r3, r7
.L20:
	.loc 1 116 0
	tst	r0, r5
	beq	.L21
	mov	r7, #4
	orr	r3, r3, r7
.L21:
	.loc 1 117 0
	tst	r1, r5
	beq	.L22
	mov	r7, #2
	orr	r3, r3, r7
.L22:
	.loc 1 118 0
	tst	r2, r5
	beq	.L23
	mov	r7, #1
	orr	r3, r3, r7
.L23:
	.loc 1 125 0
	sub	r6, r6, #1
.LVL31:
	.loc 1 127 0
	lsl	r7, r6, #31
	bmi	.L24
	.loc 1 128 0
	ldr	r7, [sp, #20]
	strb	r3, [r7]
	add	r7, r7, #1
	str	r7, [sp, #20]
.L24:
	.loc 1 130 0
	cmp	r6, #0
	beq	.L27
	.loc 1 120 0
	lsl	r4, r4, #1
.LVL32:
	.loc 1 121 0
	lsl	r0, r0, #1
.LVL33:
	.loc 1 122 0
	lsl	r1, r1, #1
.LVL34:
	.loc 1 123 0
	lsl	r2, r2, #1
.LVL35:
	b	.L26
.L27:
	.loc 1 133 0
	add	sp, sp, #28
	@ sp needed for prologue
.LVL36:
.LVL37:
	pop	{r4, r5, r6, r7, pc}
.L30:
	.align	2
.L29:
	.word	-2139062144
	.word	4129
.LFE1:
	.size	_SD_CRC16, .-_SD_CRC16
	.align	2
	.global	_SD_InitCard
	.code	16
	.thumb_func
	.type	_SD_InitCard, %function
_SD_InitCard:
.LFB2:
	.loc 1 146 0
	push	{r4, r5, r6, r7, lr}
.LCFI3:
.LVL38:
	sub	sp, sp, #44
.LCFI4:
	.loc 1 147 0
	add	r5, sp, #20
	.loc 1 146 0
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	.loc 1 147 0
	mov	r1, #0
.LVL39:
	.loc 1 146 0
	mov	r6, r0
	.loc 1 147 0
	mov	r2, #17
.LVL40:
	mov	r0, r5
.LVL41:
	.loc 1 146 0
	mov	r4, r3
	.loc 1 147 0
	bl	memset
.LVL42:
	.loc 1 150 0
	mov	r1, #250
	lsl	r1, r1, #2
	.loc 1 147 0
	mov	r7, #0
.LVL43:
	.loc 1 150 0
	str	r1, [sp, #4]
.L35:
	.loc 1 151 0
	mov	r0, r5
	mov	r1, #55
	mov	r2, #0
	blx	r6
	.loc 1 153 0
	ldrb	r3, [r5]
	cmp	r3, #55
	bne	.L32
	.loc 1 157 0
	mov	r2, #192
	mov	r0, r5
	mov	r1, #41
	lsl	r2, r2, #10
	blx	r6
	.loc 1 156 0
	cmp	r0, #0
	beq	.L33
	.loc 1 158 0
	mov	r3, #1
	ldrsb	r3, [r5, r3]
	cmp	r3, #0
	blt	.L34
.L33:
	.loc 1 150 0
	ldr	r2, [sp, #4]
	add	r7, r7, #1
.LVL44:
	cmp	r7, r2
	bne	.L35
	b	.L32
.L34:
	.loc 1 169 0
	mov	r0, r5
	mov	r1, #2
	mov	r2, #0
	ldr	r3, [sp, #8]
	blx	r3
	.loc 1 172 0
	mov	r1, #250
	lsl	r1, r1, #2
	.loc 1 169 0
	mov	r7, #0
.LVL45:
	.loc 1 173 0
	add	r5, sp, #20
	.loc 1 172 0
	str	r1, [sp, #4]
.L37:
	.loc 1 173 0
	mov	r1, #3
	mov	r2, #0
	mov	r0, r5
	blx	r6
	.loc 1 174 0
	ldrb	r2, [r5, #2]
	ldrb	r3, [r5, #1]
	lsl	r2, r2, #16
	lsl	r3, r3, #24
	orr	r2, r2, r3
	str	r2, [r4]
	.loc 1 175 0
	ldrb	r3, [r5, #3]
	mov	r1, #30
	and	r3, r3, r1
	cmp	r3, #6
	bne	.L36
	.loc 1 172 0
	ldr	r2, [sp, #4]
	add	r7, r7, #1
.LVL46:
	cmp	r7, r2
	bne	.L37
	b	.L32
.L36:
	.loc 1 184 0
	mov	r1, #9
	ldr	r3, [sp, #8]
	mov	r0, r5
	blx	r3
	.loc 1 187 0
	mov	r1, #7
	ldr	r2, [r4]
	mov	r0, r5
	blx	r6
	.loc 1 189 0
	ldr	r1, [sp, #12]
	cmp	r1, #0
	beq	.L38
	.loc 1 191 0
	ldr	r2, [r4]
	mov	r1, #55
	mov	r0, r5
	blx	r6
	.loc 1 192 0
	mov	r0, r5
	mov	r1, #6
	mov	r2, #2
	blx	r6
.L38:
	.loc 1 196 0
	add	r7, sp, #20
.LVL47:
	mov	r2, #128
	mov	r0, r7
	mov	r1, #16
	lsl	r2, r2, #2
	.loc 1 201 0
	mov	r7, #128
	.loc 1 196 0
	blx	r6
	mov	r5, #0
.LVL48:
	.loc 1 201 0
	lsl	r7, r7, #1
	b	.L39
.L41:
	.loc 1 204 0
	add	r5, r5, #1
.LVL49:
	.loc 1 201 0
	cmp	r5, r7
	beq	.L32
.L39:
	.loc 1 205 0
	ldr	r2, [r4]
	add	r0, sp, #20
	mov	r1, #13
	blx	r6
	cmp	r0, #0
	bne	.L40
	mov	r2, sp
	ldrb	r3, [r2, #23]
	mov	r1, #31
	and	r3, r3, r1
	cmp	r3, #9
	bne	.L41
	b	.L40
.LVL50:
.L32:
	mov	r0, #0
	b	.L42
.LVL51:
.L40:
	mov	r0, #1
.LVL52:
.L42:
	.loc 1 208 0
	add	sp, sp, #44
	@ sp needed for prologue
.LVL53:
.LVL54:
.LVL55:
.LVL56:
	pop	{r4, r5, r6, r7, pc}
.LFE2:
	.size	_SD_InitCard, .-_SD_InitCard
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
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
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
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
	.uleb128 0x30
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI3-.LFB2
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
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x40
	.align	2
.LEFDE4:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB0-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB1-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 64
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_sd_common.h"
	.section	.debug_info
	.4byte	0x29d
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x1
	.4byte	.LASF32
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x50
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x3
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x64
	.4byte	0x4f
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0x7d
	.4byte	0xa7
	.uleb128 0x7
	.4byte	.LASF11
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF12
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x7d
	.4byte	0x92
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x66
	.4byte	0xc4
	.uleb128 0x8
	.byte	0x4
	.4byte	0xca
	.uleb128 0x9
	.byte	0x1
	.4byte	0xa7
	.4byte	0xe4
	.uleb128 0xa
	.4byte	0xe4
	.uleb128 0xa
	.4byte	0x7d
	.uleb128 0xa
	.4byte	0x87
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x67
	.4byte	0xc4
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF25
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.4byte	0x7d
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.4byte	0x167
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x32
	.4byte	0xe4
	.4byte	.LLST1
	.uleb128 0xd
	.ascii	"cnt\000"
	.byte	0x1
	.byte	0x32
	.4byte	0x48
	.byte	0x1
	.byte	0x51
	.uleb128 0xe
	.ascii	"i\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x48
	.4byte	.LLST2
	.uleb128 0xe
	.ascii	"a\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x48
	.4byte	.LLST3
	.uleb128 0xe
	.ascii	"crc\000"
	.byte	0x1
	.byte	0x34
	.4byte	0x7d
	.4byte	.LLST4
	.uleb128 0xf
	.4byte	.LASF18
	.byte	0x1
	.byte	0x34
	.4byte	0x7d
	.4byte	.LLST5
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST6
	.4byte	0x212
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x4a
	.4byte	0xe4
	.4byte	.LLST7
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x4a
	.4byte	0x48
	.4byte	.LLST8
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4a
	.4byte	0xe4
	.4byte	.LLST9
	.uleb128 0xe
	.ascii	"a\000"
	.byte	0x1
	.byte	0x4b
	.4byte	0x87
	.4byte	.LLST10
	.uleb128 0x11
	.ascii	"b\000"
	.byte	0x1
	.byte	0x4b
	.4byte	0x87
	.byte	0x1
	.byte	0x50
	.uleb128 0x11
	.ascii	"c\000"
	.byte	0x1
	.byte	0x4b
	.4byte	0x87
	.byte	0x1
	.byte	0x51
	.uleb128 0x11
	.ascii	"d\000"
	.byte	0x1
	.byte	0x4b
	.4byte	0x87
	.byte	0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4c
	.4byte	0x48
	.4byte	.LLST11
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4d
	.4byte	0x87
	.byte	0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0x4e
	.4byte	0x87
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x4f
	.4byte	0x87
	.4byte	.LLST12
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF26
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST13
	.4byte	0x287
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x8e
	.4byte	0xb9
	.4byte	.LLST14
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0x8f
	.4byte	0xea
	.4byte	.LLST15
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x90
	.4byte	0xa7
	.4byte	.LLST16
	.uleb128 0x14
	.ascii	"RCA\000"
	.byte	0x1
	.byte	0x91
	.4byte	0x287
	.4byte	.LLST17
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x93
	.4byte	0x28d
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.ascii	"i\000"
	.byte	0x1
	.byte	0x94
	.4byte	0x48
	.4byte	.LLST18
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x87
	.uleb128 0x15
	.4byte	0x7d
	.4byte	0x29d
	.uleb128 0x16
	.4byte	0x29d
	.byte	0x10
	.byte	0x0
	.uleb128 0x17
	.byte	0x4
	.byte	0x7
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
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x3a
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2a1
	.4byte	0xf5
	.ascii	"_SD_CRC7\000"
	.4byte	0x167
	.ascii	"_SD_CRC16\000"
	.4byte	0x212
	.ascii	"_SD_InitCard\000"
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
.LASF15:
	.ascii	"_SD_FN_CMD_6BYTE_RESPONSE\000"
.LASF30:
	.ascii	"responseBuffer\000"
.LASF29:
	.ascii	"use4bitBus\000"
.LASF33:
	.ascii	"_SD_CRC16\000"
.LASF18:
	.ascii	"temp\000"
.LASF2:
	.ascii	"short int\000"
.LASF19:
	.ascii	"buff\000"
.LASF4:
	.ascii	"uint8_t\000"
.LASF13:
	.ascii	"bool\000"
.LASF9:
	.ascii	"float\000"
.LASF7:
	.ascii	"long long int\000"
.LASF24:
	.ascii	"dataByte\000"
.LASF23:
	.ascii	"bitPattern\000"
.LASF26:
	.ascii	"_SD_InitCard\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF0:
	.ascii	"signed char\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF5:
	.ascii	"uint32_t\000"
.LASF6:
	.ascii	"unsigned int\000"
.LASF11:
	.ascii	"false\000"
.LASF34:
	.ascii	"crcConst\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF32:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/di"
	.ascii	"sc_io/io_sd_common.c\000"
.LASF27:
	.ascii	"cmd_6byte_response\000"
.LASF21:
	.ascii	"crc16buff\000"
.LASF12:
	.ascii	"true\000"
.LASF25:
	.ascii	"_SD_CRC7\000"
.LASF17:
	.ascii	"data\000"
.LASF14:
	.ascii	"long unsigned int\000"
.LASF10:
	.ascii	"double\000"
.LASF22:
	.ascii	"count\000"
.LASF28:
	.ascii	"cmd_17byte_response\000"
.LASF31:
	.ascii	"GNU C 4.4.3\000"
.LASF16:
	.ascii	"_SD_FN_CMD_17BYTE_RESPONSE\000"
.LASF20:
	.ascii	"buffLength\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
