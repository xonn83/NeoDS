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
	.code 16
	.thumb_func
	.type	_SD_CRC7, %function
_SD_CRC7:
.LFB2:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_sd_common.c"
	.loc 1 50 0
	push	{r4, r5, r6, r7, lr}
.LCFI0:
.LVL0:
	.loc 1 50 0
	mov	r7, r0
	mov	r6, r1
	mov	r5, #0
.LVL1:
	mov	r0, #0
.LVL2:
	b	.L2
.LVL3:
.L3:
	.loc 1 57 0
	ldrb	r1, [r5, r7]
	mov	r4, #0
.L4:
	.loc 1 60 0
	lsl	r3, r0, #25
	lsr	r0, r3, #24
	.loc 1 61 0
	mov	r2, r1
	mov	r3, #128
	and	r2, r2, r3
	and	r3, r3, r0
	cmp	r2, r3
	beq	.L5
	mov	r3, #9
	eor	r3, r3, r0
	lsl	r3, r3, #24
	lsr	r0, r3, #24
.L5:
	.loc 1 58 0
	add	r4, r4, #1
	cmp	r4, #8
	beq	.L7
	.loc 1 62 0
	lsl	r3, r1, #25
	lsr	r1, r3, #24
	b	.L4
.L7:
	.loc 1 55 0
	add	r5, r5, #1
.LVL4:
.L2:
	cmp	r5, r6
	blt	.L3
	mov	r3, #1
	lsl	r0, r0, #1
.LVL5:
	orr	r0, r0, r3
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	.loc 1 67 0
	@ sp needed for prologue
.LVL6:
.LVL7:
.LVL8:
.LVL9:
	pop	{r4, r5, r6, r7, pc}
.LFE2:
	.size	_SD_CRC7, .-_SD_CRC7
	.align	2
	.global	_SD_CRC16
	.code 16
	.thumb_func
	.type	_SD_CRC16, %function
_SD_CRC16:
.LFB3:
	.loc 1 74 0
	push	{r4, r5, r6, r7, lr}
.LCFI1:
.LVL10:
	sub	sp, sp, #28
.LCFI2:
	.loc 1 74 0
	mov	ip, r0
	str	r2, [sp, #16]
	.loc 1 86 0
	lsl	r1, r1, #3
.LVL11:
	mov	r0, #0
.LVL12:
	ldr	r2, .L48
.LVL13:
	str	r1, [sp, #4]
.LVL14:
	mov	r6, #0
.LVL15:
	mov	r5, #0
.LVL16:
	mov	r4, #0
.LVL17:
	str	r0, [sp, #20]
.LVL18:
.L12:
	.loc 1 90 0
	lsl	r1, r2, #24
	bpl	.L13
	mov	r3, ip
	ldrb	r3, [r3]
	mov	r7, #1
	str	r3, [sp, #20]
	add	ip, ip, r7
.L13:
	.loc 1 93 0
	mov	r1, #128
	.loc 1 92 0
	lsl	r6, r6, #1
	.loc 1 93 0
	lsl	r1, r1, #9
	tst	r6, r1
	beq	.L15
	ldr	r3, .L48+4
	eor	r6, r6, r3
.L15:
	.loc 1 94 0
	ldr	r7, [sp, #20]
	lsr	r3, r2, #24
	tst	r7, r3
	beq	.L17
	ldr	r3, .L48+4
	eor	r6, r6, r3
.L17:
	.loc 1 96 0
	lsl	r5, r5, #1
	.loc 1 97 0
	tst	r5, r1
	beq	.L19
	ldr	r3, .L48+4
	eor	r5, r5, r3
.L19:
	.loc 1 98 0
	ldr	r7, [sp, #20]
	lsr	r3, r2, #25
	tst	r7, r3
	beq	.L21
	ldr	r3, .L48+4
	eor	r5, r5, r3
.L21:
	.loc 1 100 0
	lsl	r4, r4, #1
	.loc 1 101 0
	tst	r4, r1
	beq	.L23
	ldr	r3, .L48+4
	eor	r4, r4, r3
.L23:
	.loc 1 102 0
	ldr	r7, [sp, #20]
	lsr	r3, r2, #26
	tst	r7, r3
	beq	.L25
	ldr	r3, .L48+4
	eor	r4, r4, r3
.L25:
	.loc 1 104 0
	lsl	r0, r0, #1
	.loc 1 105 0
	tst	r0, r1
	beq	.L27
	ldr	r3, .L48+4
	eor	r0, r0, r3
.L27:
	.loc 1 106 0
	ldr	r1, [sp, #20]
	lsr	r3, r2, #27
	tst	r1, r3
	beq	.L29
	ldr	r3, .L48+4
	eor	r0, r0, r3
.L29:
	.loc 1 108 0
	mov	r3, #4
	ror	r2, r2, r3
	.loc 1 109 0
	ldr	r3, [sp, #4]
	sub	r3, r3, #4
	str	r3, [sp, #4]
	cmp	r3, #0
	bne	.L12
	mov	r7, #16
.LVL19:
.L32:
	.loc 1 115 0
	mov	r1, #128
	lsl	r1, r1, #8
	.loc 1 114 0
	lsl	r2, r2, #4
	.loc 1 115 0
	tst	r6, r1
	beq	.L33
	mov	r3, #8
	orr	r2, r2, r3
.L33:
	.loc 1 116 0
	tst	r5, r1
	beq	.L35
	mov	r3, #4
	orr	r2, r2, r3
.L35:
	.loc 1 117 0
	tst	r4, r1
	beq	.L37
	mov	r3, #2
	orr	r2, r2, r3
.L37:
	.loc 1 118 0
	tst	r0, r1
	beq	.L39
	mov	r3, #1
	orr	r2, r2, r3
.L39:
	.loc 1 125 0
	sub	r7, r7, #1
	.loc 1 127 0
	lsl	r1, r7, #31
	bmi	.L41
	.loc 1 128 0
	ldr	r3, [sp, #16]
	strb	r2, [r3]
	add	r3, r3, #1
	str	r3, [sp, #16]
.L41:
	.loc 1 130 0
	cmp	r7, #0
	beq	.L45
	.loc 1 120 0
	lsl	r6, r6, #1
	.loc 1 121 0
	lsl	r5, r5, #1
	.loc 1 122 0
	lsl	r4, r4, #1
	.loc 1 123 0
	lsl	r0, r0, #1
	b	.L32
.L45:
	.loc 1 133 0
	add	sp, sp, #28
	@ sp needed for prologue
.LVL20:
.LVL21:
.LVL22:
.LVL23:
	pop	{r4, r5, r6, r7, pc}
.L49:
	.align	2
.L48:
	.word	-2139062144
	.word	4129
.LFE3:
	.size	_SD_CRC16, .-_SD_CRC16
	.align	2
	.global	_SD_InitCard
	.code 16
	.thumb_func
	.type	_SD_InitCard, %function
_SD_InitCard:
.LFB4:
	.loc 1 146 0
	push	{r4, r5, r6, r7, lr}
.LCFI3:
.LVL24:
	sub	sp, sp, #44
.LCFI4:
	.loc 1 146 0
	mov	r6, r0
	.loc 1 147 0
	mov	r0, sp
.LVL25:
	.loc 1 146 0
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	.loc 1 147 0
	add	r0, r0, #23
	mov	r1, #0
.LVL26:
	mov	r2, #17
.LVL27:
	.loc 1 146 0
	str	r3, [sp, #4]
	.loc 1 147 0
	bl	memset
.LVL28:
	mov	r5, #0
.LVL29:
.L51:
	.loc 1 151 0
	mov	r4, sp
	add	r4, r4, #23
	mov	r0, r4
	mov	r1, #55
	mov	r2, #0
	blx	r6
	.loc 1 153 0
	ldrb	r3, [r4]
	cmp	r3, #55
	bne	.L52
	.loc 1 156 0
	mov	r2, #192
	mov	r0, r4
	mov	r1, #41
	lsl	r2, r2, #10
	blx	r6
	cmp	r0, #0
	beq	.L54
	mov	r3, #1
	ldrsb	r3, [r4, r3]
	cmp	r3, #0
	blt	.L56
.L54:
	.loc 1 150 0
	mov	r3, #250
	add	r5, r5, #1
	lsl	r3, r3, #2
	cmp	r5, r3
	beq	.L52
	b	.L51
.L56:
	.loc 1 169 0
	mov	r0, r4
	mov	r1, #2
	mov	r2, #0
	ldr	r3, [sp, #12]
	blx	r3
	mov	r7, #0
.LVL30:
.L57:
	.loc 1 173 0
	mov	r4, sp
	add	r4, r4, #23
	mov	r2, #0
	mov	r0, r4
	mov	r1, #3
	blx	r6
	.loc 1 174 0
	ldrb	r2, [r4, #1]
	ldrb	r3, [r4, #2]
	lsl	r2, r2, #24
	lsl	r3, r3, #16
	mov	r5, r2
.LVL31:
	orr	r5, r5, r3
	ldr	r3, [sp, #4]
	.loc 1 175 0
	mov	r2, #30
	.loc 1 174 0
	str	r5, [r3]
	.loc 1 175 0
	ldrb	r3, [r4, #3]
	and	r3, r3, r2
	cmp	r3, #6
	bne	.L58
	.loc 1 172 0
	mov	r3, #250
	add	r7, r7, #1
	lsl	r3, r3, #2
	cmp	r7, r3
	beq	.L52
	b	.L57
.L58:
	.loc 1 184 0
	mov	r1, #9
	mov	r2, r5
	ldr	r3, [sp, #12]
	mov	r0, r4
	blx	r3
	.loc 1 187 0
	ldr	r3, [sp, #4]
	mov	r0, r4
	ldr	r2, [r3]
	mov	r1, #7
	blx	r6
	.loc 1 189 0
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L60
	.loc 1 191 0
	ldr	r3, [sp, #4]
	mov	r1, #55
	ldr	r2, [r3]
	mov	r0, r4
	blx	r6
	.loc 1 192 0
	mov	r0, r4
	mov	r1, #6
	mov	r2, #2
	blx	r6
.L60:
	.loc 1 196 0
	mov	r2, #128
	mov	r0, r4
	mov	r1, #16
	lsl	r2, r2, #2
	blx	r6
	mov	r4, #0
.LVL32:
	b	.L62
.L63:
	.loc 1 201 0
	mov	r3, #128
	.loc 1 204 0
	add	r4, r4, #1
	.loc 1 201 0
	lsl	r3, r3, #1
	cmp	r4, r3
	beq	.L52
.L62:
	.loc 1 205 0
	mov	r5, sp
	ldr	r3, [sp, #4]
	add	r5, r5, #23
	ldr	r2, [r3]
	mov	r0, r5
	mov	r1, #13
	blx	r6
	cmp	r0, #0
	bne	.L64
	ldrb	r3, [r5, #3]
	mov	r2, #31
	and	r3, r3, r2
	cmp	r3, #9
	bne	.L63
	b	.L64
.LVL33:
.L52:
	mov	r0, #0
	b	.L66
.LVL34:
.L64:
	mov	r0, #1
.LVL35:
.L66:
	.loc 1 208 0
	add	sp, sp, #44
	@ sp needed for prologue
.LVL36:
.LVL37:
.LVL38:
.LVL39:
	pop	{r4, r5, r6, r7, pc}
.LFE4:
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
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
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI1-.LFB3
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
	.uleb128 0x30
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI3-.LFB4
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
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x40
	.align	2
.LEFDE4:
	.file 2 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_sd_common.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 64
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x2af
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF34
	.byte	0x1
	.4byte	.LASF35
	.4byte	.LASF36
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
	.byte	0x66
	.4byte	0xcf
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd5
	.uleb128 0x9
	.4byte	0xef
	.byte	0x1
	.4byte	0xb9
	.uleb128 0xa
	.4byte	0xef
	.uleb128 0xa
	.4byte	0x8f
	.uleb128 0xa
	.4byte	0x99
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x67
	.4byte	0xcf
	.uleb128 0xb
	.4byte	0x172
	.byte	0x1
	.4byte	.LASF20
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.4byte	0x8f
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x32
	.4byte	0xef
	.4byte	.LLST1
	.uleb128 0xd
	.ascii	"cnt\000"
	.byte	0x1
	.byte	0x32
	.4byte	0x73
	.4byte	.LLST2
	.uleb128 0xe
	.ascii	"i\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x73
	.4byte	.LLST3
	.uleb128 0xe
	.ascii	"a\000"
	.byte	0x1
	.byte	0x33
	.4byte	0x73
	.4byte	.LLST4
	.uleb128 0xe
	.ascii	"crc\000"
	.byte	0x1
	.byte	0x34
	.4byte	0x8f
	.4byte	.LLST5
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0x34
	.4byte	0x8f
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x10
	.4byte	0x220
	.byte	0x1
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST6
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4a
	.4byte	0xef
	.4byte	.LLST7
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4a
	.4byte	0x73
	.4byte	.LLST8
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x4a
	.4byte	0xef
	.4byte	.LLST9
	.uleb128 0xe
	.ascii	"a\000"
	.byte	0x1
	.byte	0x4b
	.4byte	0x99
	.4byte	.LLST10
	.uleb128 0xe
	.ascii	"b\000"
	.byte	0x1
	.byte	0x4b
	.4byte	0x99
	.4byte	.LLST11
	.uleb128 0xe
	.ascii	"c\000"
	.byte	0x1
	.byte	0x4b
	.4byte	0x99
	.4byte	.LLST12
	.uleb128 0x11
	.ascii	"d\000"
	.byte	0x1
	.byte	0x4b
	.4byte	0x99
	.byte	0x1
	.byte	0x50
	.uleb128 0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0x4c
	.4byte	0x73
	.4byte	.LLST13
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0x4d
	.4byte	0x99
	.byte	0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4e
	.4byte	0x99
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4f
	.4byte	0x99
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0x0
	.uleb128 0xb
	.4byte	0x295
	.byte	0x1
	.4byte	.LASF29
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.4byte	0xb9
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST14
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0x8e
	.4byte	0xc4
	.4byte	.LLST15
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x8f
	.4byte	0xf5
	.4byte	.LLST16
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x90
	.4byte	0xb9
	.4byte	.LLST17
	.uleb128 0xd
	.ascii	"RCA\000"
	.byte	0x1
	.byte	0x91
	.4byte	0x295
	.4byte	.LLST18
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x93
	.4byte	0x29b
	.byte	0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0xe
	.ascii	"i\000"
	.byte	0x1
	.byte	0x94
	.4byte	0x73
	.4byte	.LLST19
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x99
	.uleb128 0x14
	.4byte	0x2ab
	.4byte	0x8f
	.uleb128 0x15
	.4byte	0x2ab
	.byte	0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x7
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
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
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
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x6
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.4byte	0x3a
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2b3
	.4byte	0x100
	.ascii	"_SD_CRC7\000"
	.4byte	0x172
	.ascii	"_SD_CRC16\000"
	.4byte	0x220
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
.LASF16:
	.ascii	"_SD_FN_CMD_6BYTE_RESPONSE\000"
.LASF32:
	.ascii	"use4bitBus\000"
.LASF31:
	.ascii	"cmd_17byte_response\000"
.LASF19:
	.ascii	"temp\000"
.LASF2:
	.ascii	"short int\000"
.LASF35:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_"
	.ascii	"io/io_sd_common.c\000"
.LASF18:
	.ascii	"data\000"
.LASF22:
	.ascii	"buff\000"
.LASF29:
	.ascii	"_SD_InitCard\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF15:
	.ascii	"bool\000"
.LASF11:
	.ascii	"float\000"
.LASF8:
	.ascii	"long long int\000"
.LASF4:
	.ascii	"long int\000"
.LASF28:
	.ascii	"dataByte\000"
.LASF33:
	.ascii	"responseBuffer\000"
.LASF26:
	.ascii	"bitPattern\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF0:
	.ascii	"signed char\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF13:
	.ascii	"false\000"
.LASF27:
	.ascii	"crcConst\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF14:
	.ascii	"true\000"
.LASF20:
	.ascii	"_SD_CRC7\000"
.LASF30:
	.ascii	"cmd_6byte_response\000"
.LASF36:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF12:
	.ascii	"double\000"
.LASF34:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF24:
	.ascii	"crc16buff\000"
.LASF25:
	.ascii	"count\000"
.LASF21:
	.ascii	"_SD_CRC16\000"
.LASF17:
	.ascii	"_SD_FN_CMD_17BYTE_RESPONSE\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF23:
	.ascii	"buffLength\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
