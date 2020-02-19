	.code	16
	.file	"cache.c"
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
	.type	_FAT_disc_writeSectors, %function
_FAT_disc_writeSectors:
.LFB6:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/disc.h"
	.loc 1 86 0
	push	{r4, lr}
.LCFI0:
.LVL0:
	.loc 1 87 0
	ldr	r4, [r0, #20]
	mov	r0, r1
.LVL1:
	mov	r1, r2
.LVL2:
	mov	r2, r3
.LVL3:
	blx	r4
.LVL4:
	.loc 1 88 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE6:
	.size	_FAT_disc_writeSectors, .-_FAT_disc_writeSectors
	.align	2
	.code 16
	.thumb_func
	.type	_FAT_cache_getSector, %function
_FAT_cache_getSector:
.LFB16:
	.file 2 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/cache.c"
	.loc 2 105 0
	push	{r4, r5, r6, r7, lr}
.LCFI1:
.LVL5:
	.loc 2 108 0
	ldr	r2, [r0, #4]
	.loc 2 107 0
	ldr	r4, [r0, #8]
.LVL6:
	.loc 2 105 0
	mov	r7, r1
	.loc 2 108 0
	mov	r1, #1
.LVL7:
	.loc 2 105 0
	sub	sp, sp, #12
.LCFI2:
	.loc 2 105 0
	mov	r5, r0
	.loc 2 108 0
	mov	ip, r2
.LVL8:
	mov	r0, #0
.LVL9:
	add	r2, r4, #4
	neg	r1, r1
	mov	r6, #0
	str	r0, [sp, #4]
.LVL10:
	b	.L4
.L5:
	.loc 2 115 0
	add	r3, r3, #1
	beq	.L6
	ldr	r3, [r2]
	cmp	r3, r1
	bcs	.L8
.L6:
	.loc 2 117 0
	ldr	r1, [r2]
	str	r0, [sp, #4]
.L8:
	.loc 2 113 0
	add	r0, r0, #1
	add	r6, r6, #12
	add	r2, r2, #12
.L4:
	cmp	r0, ip
	beq	.L9
	sub	r3, r2, #4
	ldr	r3, [r3]
	cmp	r3, r7
	bne	.L5
	.loc 2 122 0
	add	r2, r4, r6
	ldr	r3, [r2]
	cmp	r3, r7
	bne	.L9
	.loc 2 124 0
	ldr	r3, [r2, #4]
	add	r3, r3, #1
	str	r3, [r2, #4]
	b	.L13
.L9:
	.loc 2 129 0
	ldr	r2, [sp, #4]
	lsl	r3, r2, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r4, r4, r3
.LVL11:
	ldr	r1, [r4]
.LVL12:
	add	r3, r1, #1
	beq	.L14
	ldrb	r3, [r4, #8]
	cmp	r3, #1
	bne	.L14
	.loc 2 131 0
	lsl	r3, r2, #9
	ldr	r2, [r5, #12]
	ldr	r0, [r5]
.LVL13:
	add	r3, r3, r2
	mov	r2, #1
	bl	_FAT_disc_writeSectors
.LVL14:
	cmp	r0, #0
	beq	.L17
	.loc 2 134 0
	mov	r3, #0
	strb	r3, [r4, #8]
.LVL15:
.L14:
.LBB4:
	.loc 1 77 0
	ldr	r3, [sp, #4]
	ldr	r1, [r5]
	lsl	r2, r3, #9
	ldr	r3, [r5, #12]
	mov	r0, r7
.LVL16:
	add	r2, r2, r3
	ldr	r3, [r1, #16]
	mov	r1, #1
	blx	r3
.LVL17:
.LBE4:
	.loc 2 138 0
	lsl	r0, r0, #24
	cmp	r0, #0
	beq	.L17
	.loc 2 144 0
	ldr	r3, [r4, #4]
	ldr	r0, [sp, #4]
.LVL18:
	add	r3, r3, #1
	.loc 2 141 0
	str	r7, [r4]
	.loc 2 144 0
	str	r3, [r4, #4]
	b	.L13
.LVL19:
.L17:
	.loc 2 145 0
	mov	r0, #1
.LVL20:
	neg	r0, r0
.LVL21:
.L13:
	.loc 2 146 0
	add	sp, sp, #12
.LVL22:
	@ sp needed for prologue
.LVL23:
.LVL24:
.LVL25:
	pop	{r4, r5, r6, r7, pc}
.LFE16:
	.size	_FAT_cache_getSector, .-_FAT_cache_getSector
	.align	2
	.global	_FAT_cache_flush
	.code 16
	.thumb_func
	.type	_FAT_cache_flush, %function
_FAT_cache_flush:
.LFB20:
	.loc 2 214 0
	push	{r4, r5, r6, lr}
.LCFI3:
.LVL26:
	.loc 2 214 0
	mov	r4, r0
	mov	r6, #0
.LVL27:
	mov	r5, #0
	b	.L22
.LVL28:
.L23:
	.loc 2 218 0
	ldr	r3, [r4, #8]
	add	r1, r5, r3
	ldrb	r3, [r1, #8]
	cmp	r3, #0
	beq	.L24
	.loc 2 219 0
	ldr	r2, [r4, #12]
	lsl	r3, r6, #9
	add	r3, r3, r2
	ldr	r0, [r4]
	ldr	r1, [r1]
	mov	r2, #1
	bl	_FAT_disc_writeSectors
	cmp	r0, #0
	bne	.L24
	mov	r0, #255
	b	.L27
.LVL29:
.L24:
	.loc 2 223 0
	ldr	r3, [r4, #8]
	mov	r2, #0
	add	r3, r5, r3
	str	r2, [r3, #4]
	.loc 2 224 0
	strb	r2, [r3, #8]
	.loc 2 217 0
	add	r6, r6, #1
	add	r5, r5, #12
.L22:
	ldr	r3, [r4, #4]
	cmp	r6, r3
	bcc	.L23
	mov	r0, #1
.L27:
	.loc 2 228 0
	@ sp needed for prologue
.LVL30:
.LVL31:
	pop	{r4, r5, r6, pc}
.LFE20:
	.size	_FAT_cache_flush, .-_FAT_cache_flush
	.align	2
	.global	_FAT_cache_invalidate
	.code 16
	.thumb_func
	.type	_FAT_cache_invalidate, %function
_FAT_cache_invalidate:
.LFB21:
	.loc 2 230 0
	push	{r4, r5, lr}
.LCFI4:
.LVL32:
	.loc 2 232 0
	ldr	r5, [r0, #4]
	.loc 2 230 0
	mov	r4, r0
	.loc 2 232 0
	mov	r1, #0
	mov	r0, #0
.LVL33:
	b	.L31
.L32:
	.loc 2 233 0
	ldr	r3, [r4, #8]
	mov	r2, #1
	add	r3, r1, r3
	neg	r2, r2
	str	r2, [r3]
	.loc 2 234 0
	mov	r2, #0
	str	r2, [r3, #4]
	.loc 2 235 0
	strb	r2, [r3, #8]
	.loc 2 232 0
	add	r0, r0, #1
	add	r1, r1, #12
.L31:
	cmp	r0, r5
	bne	.L32
	.loc 2 237 0
	@ sp needed for prologue
.LVL34:
	pop	{r4, r5, pc}
.LFE21:
	.size	_FAT_cache_invalidate, .-_FAT_cache_invalidate
	.align	2
	.global	_FAT_cache_eraseWritePartialSector
	.code 16
	.thumb_func
	.type	_FAT_cache_eraseWritePartialSector, %function
_FAT_cache_eraseWritePartialSector:
.LFB19:
	.loc 2 190 0
	push	{r4, r5, r6, r7, lr}
.LCFI5:
.LVL35:
	sub	sp, sp, #12
.LCFI6:
	.loc 2 190 0
	mov	r6, r0
	.loc 2 193 0
	ldr	r0, [sp, #32]
.LVL36:
	mov	r7, #128
	.loc 2 190 0
	str	r3, [sp]
	.loc 2 193 0
	lsl	r7, r7, #2
	add	r3, r3, r0
.LVL37:
	.loc 2 190 0
	str	r1, [sp, #4]
	mov	r1, r2
.LVL38:
	.loc 2 193 0
	cmp	r3, r7
	bhi	.L36
.LVL39:
	.loc 2 197 0
	mov	r0, r6
	bl	_FAT_cache_getSector
.LVL40:
	mov	r5, r0
.LVL41:
	.loc 2 198 0
	add	r2, r0, #1
	beq	.L36
.LVL42:
	.loc 2 202 0
	lsl	r4, r0, #9
	ldr	r0, [r6, #12]
.LVL43:
	mov	r1, #0
	add	r0, r4, r0
	mov	r2, r7
	bl	memset
	.loc 2 203 0
	ldr	r3, [r6, #12]
	ldr	r2, [sp, #32]
	add	r4, r4, r3
	ldr	r3, [sp]
	ldr	r1, [sp, #4]
	add	r4, r4, r3
	mov	r0, r4
	bl	memcpy
	.loc 2 204 0
	lsl	r3, r5, #1
	ldr	r2, [r6, #8]
	add	r3, r3, r5
	lsl	r3, r3, #2
	add	r3, r3, r2
	mov	r0, #1
	mov	r2, #1
	strb	r2, [r3, #8]
	b	.L39
.LVL44:
.L36:
	.loc 2 206 0
	mov	r0, #0
.LVL45:
.L39:
	.loc 2 207 0
	add	sp, sp, #12
	@ sp needed for prologue
.LVL46:
.LVL47:
	pop	{r4, r5, r6, r7, pc}
.LFE19:
	.size	_FAT_cache_eraseWritePartialSector, .-_FAT_cache_eraseWritePartialSector
	.align	2
	.global	_FAT_cache_writePartialSector
	.code 16
	.thumb_func
	.type	_FAT_cache_writePartialSector, %function
_FAT_cache_writePartialSector:
.LFB18:
	.loc 2 169 0
	push	{r4, r5, r6, r7, lr}
.LCFI7:
.LVL48:
	sub	sp, sp, #4
.LCFI8:
	.loc 2 169 0
	mov	r6, r3
	.loc 2 172 0
	ldr	r3, [sp, #24]
.LVL49:
	.loc 2 169 0
	mov	r7, r1
	mov	r1, r2
.LVL50:
	.loc 2 172 0
	add	r2, r6, r3
.LVL51:
	mov	r3, #128
	lsl	r3, r3, #2
	.loc 2 169 0
	mov	r5, r0
	.loc 2 172 0
	cmp	r2, r3
	bhi	.L42
.LVL52:
	.loc 2 176 0
	bl	_FAT_cache_getSector
.LVL53:
	mov	r4, r0
.LVL54:
	.loc 2 177 0
	add	r3, r0, #1
	beq	.L42
.LVL55:
	.loc 2 181 0
	ldr	r3, [r5, #12]
	lsl	r0, r0, #9
.LVL56:
	add	r0, r0, r3
	ldr	r2, [sp, #24]
	add	r0, r0, r6
	mov	r1, r7
	bl	memcpy
	.loc 2 182 0
	lsl	r3, r4, #1
	ldr	r2, [r5, #8]
	add	r3, r3, r4
	lsl	r3, r3, #2
	add	r3, r3, r2
	mov	r0, #1
	mov	r2, #1
	strb	r2, [r3, #8]
	b	.L45
.LVL57:
.L42:
	.loc 2 184 0
	mov	r0, #0
.LVL58:
.L45:
	.loc 2 185 0
	add	sp, sp, #4
	@ sp needed for prologue
.LVL59:
.LVL60:
.LVL61:
.LVL62:
	pop	{r4, r5, r6, r7, pc}
.LFE18:
	.size	_FAT_cache_writePartialSector, .-_FAT_cache_writePartialSector
	.align	2
	.global	_FAT_cache_readPartialSector
	.code 16
	.thumb_func
	.type	_FAT_cache_readPartialSector, %function
_FAT_cache_readPartialSector:
.LFB17:
	.loc 2 151 0
	push	{r4, r5, r6, r7, lr}
.LCFI9:
.LVL63:
	sub	sp, sp, #4
.LCFI10:
	.loc 2 151 0
	ldr	r7, [sp, #24]
	mov	r6, r1
	mov	r4, r3
	mov	r1, r2
.LVL64:
	.loc 2 154 0
	add	r2, r3, r7
.LVL65:
	mov	r3, #128
.LVL66:
	lsl	r3, r3, #2
	.loc 2 151 0
	mov	r5, r0
	.loc 2 154 0
	cmp	r2, r3
	bhi	.L48
.LVL67:
	.loc 2 158 0
	bl	_FAT_cache_getSector
.LVL68:
.LVL69:
	.loc 2 159 0
	add	r3, r0, #1
	beq	.L48
	.loc 2 162 0
	ldr	r3, [r5, #12]
	lsl	r1, r0, #9
	add	r1, r1, r3
	add	r1, r1, r4
	mov	r0, r6
.LVL70:
	mov	r2, r7
	bl	memcpy
	mov	r0, #1
	b	.L51
.LVL71:
.L48:
	.loc 2 163 0
	mov	r0, #0
.LVL72:
.L51:
	.loc 2 164 0
	add	sp, sp, #4
	@ sp needed for prologue
.LVL73:
.LVL74:
.LVL75:
.LVL76:
	pop	{r4, r5, r6, r7, pc}
.LFE17:
	.size	_FAT_cache_readPartialSector, .-_FAT_cache_readPartialSector
	.align	2
	.code 16
	.thumb_func
	.type	_FAT_mem_free, %function
_FAT_mem_free:
.LFB13:
	.file 3 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/mem_allocate.h"
	.loc 3 43 0
	push	{lr}
.LCFI11:
.LVL77:
	sub	sp, sp, #4
.LCFI12:
	.loc 3 44 0
	bl	free
.LVL78:
	.loc 3 45 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE13:
	.size	_FAT_mem_free, .-_FAT_mem_free
	.align	2
	.global	_FAT_cache_destructor
	.code 16
	.thumb_func
	.type	_FAT_cache_destructor, %function
_FAT_cache_destructor:
.LFB15:
	.loc 2 88 0
	push	{r4, lr}
.LCFI13:
.LVL79:
	.loc 2 88 0
	mov	r4, r0
	.loc 2 90 0
	bl	_FAT_cache_flush
.LVL80:
	.loc 2 93 0
	ldr	r0, [r4, #12]
	bl	_FAT_mem_free
	.loc 2 94 0
	ldr	r0, [r4, #8]
	bl	_FAT_mem_free
	.loc 2 95 0
	mov	r0, r4
	bl	_FAT_mem_free
	.loc 2 98 0
	@ sp needed for prologue
.LVL81:
	pop	{r4, pc}
.LFE15:
	.size	_FAT_cache_destructor, .-_FAT_cache_destructor
	.align	2
	.code 16
	.thumb_func
	.type	_FAT_mem_allocate, %function
_FAT_mem_allocate:
.LFB12:
	.loc 3 39 0
	push	{lr}
.LCFI14:
.LVL82:
	sub	sp, sp, #4
.LCFI15:
	.loc 3 40 0
	bl	malloc
.LVL83:
	.loc 3 41 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE12:
	.size	_FAT_mem_allocate, .-_FAT_mem_allocate
	.align	2
	.global	_FAT_cache_constructor
	.code 16
	.thumb_func
	.type	_FAT_cache_constructor, %function
_FAT_cache_constructor:
.LFB14:
	.loc 2 46 0
	push	{r4, r5, r6, r7, lr}
.LCFI16:
.LVL84:
	sub	sp, sp, #4
.LCFI17:
	.loc 2 46 0
	mov	r4, r0
	mov	r7, r1
	.loc 2 51 0
	cmp	r0, #1
	bhi	.L60
.LVL85:
	mov	r4, #2
.L60:
	.loc 2 55 0
	mov	r0, #16
.LVL86:
	bl	_FAT_mem_allocate
	mov	r5, r0
	.loc 2 56 0
	cmp	r0, #0
	beq	.L72
.LVL87:
	.loc 2 60 0
	str	r7, [r0]
	.loc 2 61 0
	str	r4, [r0, #4]
.LVL88:
	.loc 2 55 0
	mov	r6, r0
.LVL89:
	.loc 2 64 0
	lsl	r0, r4, #1
	add	r0, r0, r4
	lsl	r0, r0, #2
	bl	_FAT_mem_allocate
.LVL90:
	mov	r2, r0
	.loc 2 65 0
	cmp	r0, #0
	beq	.L65
	mov	r1, #0
.LVL91:
	b	.L67
.LVL92:
.L65:
	.loc 2 66 0
	mov	r0, r5
.LVL93:
	b	.L73
.LVL94:
.L68:
	.loc 2 71 0
	mov	r3, #1
	neg	r3, r3
	str	r3, [r2]
	.loc 2 72 0
	mov	r3, #0
	str	r3, [r2, #4]
	.loc 2 73 0
	strb	r3, [r2, #8]
	.loc 2 70 0
	add	r1, r1, #1
	add	r2, r2, #12
.L67:
	cmp	r1, r4
	bne	.L68
	.loc 2 76 0
	str	r0, [r5, #8]
	.loc 2 78 0
	lsl	r0, r4, #9
.LVL95:
	bl	_FAT_mem_allocate
.LVL96:
	str	r0, [r5, #12]
	.loc 2 79 0
	cmp	r0, #0
	bne	.L64
	.loc 2 80 0
	ldr	r0, [r5, #8]
	bl	_FAT_mem_free
	.loc 2 81 0
	mov	r0, r5
.LVL97:
.L73:
	bl	_FAT_mem_free
.LVL98:
.L72:
	mov	r6, #0
.L64:
	.loc 2 86 0
	mov	r0, r6
	add	sp, sp, #4
	@ sp needed for prologue
.LVL99:
.LVL100:
.LVL101:
	pop	{r4, r5, r6, r7, pc}
.LFE14:
	.size	_FAT_cache_constructor, .-_FAT_cache_constructor
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
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI1-.LFB16
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
	.uleb128 0x20
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI3-.LFB20
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
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI4-.LFB21
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI5-.LFB19
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
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI7-.LFB18
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
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI9-.LFB17
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
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI11-.LFB13
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI13-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI14-.LFB12
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI16-.LFB14
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
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE20:
	.file 4 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 5 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/disc_io.h"
	.file 6 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/cache.h"
	.file 8 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stddef.h"
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
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL24-.Ltext0
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
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB20-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB21-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB19-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL44-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL39-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LFB18-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL57-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL52-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL71-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL76-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x694
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF62
	.byte	0x1
	.4byte	.LASF63
	.4byte	.LASF64
	.uleb128 0x2
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x8
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x8
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x8
	.byte	0xd6
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x1
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x6
	.byte	0x2e
	.4byte	0x48
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x6
	.byte	0x54
	.4byte	0x51
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x8
	.byte	0x4
	.uleb128 0x6
	.ascii	"u8\000"
	.byte	0x4
	.byte	0x5f
	.4byte	0x86
	.uleb128 0x6
	.ascii	"u32\000"
	.byte	0x4
	.byte	0x61
	.4byte	0x91
	.uleb128 0x7
	.4byte	0xd4
	.byte	0x1
	.byte	0x4
	.byte	0x81
	.uleb128 0x8
	.4byte	.LASF15
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF16
	.sleb128 1
	.byte	0x0
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x4
	.byte	0x81
	.4byte	0xbf
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x5
	.byte	0x3d
	.4byte	0xea
	.uleb128 0x9
	.byte	0x4
	.4byte	0xf0
	.uleb128 0xa
	.byte	0x1
	.4byte	0xd4
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x5
	.byte	0x3e
	.4byte	0xea
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x5
	.byte	0x3f
	.4byte	0x10c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x112
	.uleb128 0xb
	.4byte	0x12c
	.byte	0x1
	.4byte	0xd4
	.uleb128 0xc
	.4byte	0xb4
	.uleb128 0xc
	.4byte	0xb4
	.uleb128 0xc
	.4byte	0x4f
	.byte	0x0
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x5
	.byte	0x40
	.4byte	0x137
	.uleb128 0x9
	.byte	0x4
	.4byte	0x13d
	.uleb128 0xb
	.4byte	0x157
	.byte	0x1
	.4byte	0xd4
	.uleb128 0xc
	.4byte	0xb4
	.uleb128 0xc
	.4byte	0xb4
	.uleb128 0xc
	.4byte	0x157
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x15d
	.uleb128 0xd
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x5
	.byte	0x41
	.4byte	0xea
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x5
	.byte	0x42
	.4byte	0xea
	.uleb128 0xe
	.4byte	0x1f1
	.4byte	.LASF65
	.byte	0x20
	.byte	0x5
	.byte	0x44
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x5
	.byte	0x45
	.4byte	0x51
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x5
	.byte	0x46
	.4byte	0x51
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x5
	.byte	0x47
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x5
	.byte	0x48
	.4byte	0xf6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x5
	.byte	0x49
	.4byte	0x101
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x5
	.byte	0x4a
	.4byte	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x5
	.byte	0x4b
	.4byte	0x15e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x5
	.byte	0x4c
	.4byte	0x169
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0x5
	.byte	0x4f
	.4byte	0x174
	.uleb128 0x10
	.4byte	0x22f
	.byte	0xc
	.byte	0x7
	.byte	0x2f
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x7
	.byte	0x30
	.4byte	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x7
	.byte	0x31
	.4byte	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x7
	.byte	0x32
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x5
	.4byte	.LASF36
	.byte	0x7
	.byte	0x33
	.4byte	0x1fc
	.uleb128 0x10
	.4byte	0x27b
	.byte	0x10
	.byte	0x7
	.byte	0x35
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x7
	.byte	0x36
	.4byte	0x27b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x7
	.byte	0x37
	.4byte	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x7
	.byte	0x38
	.4byte	0x286
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x7
	.byte	0x39
	.4byte	0x28c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x281
	.uleb128 0x11
	.4byte	0x1f1
	.uleb128 0x9
	.byte	0x4
	.4byte	0x22f
	.uleb128 0x9
	.byte	0x4
	.4byte	0xaa
	.uleb128 0x5
	.4byte	.LASF41
	.byte	0x7
	.byte	0x3a
	.4byte	0x23a
	.uleb128 0x12
	.4byte	0x2f6
	.4byte	.LASF44
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x1
	.byte	0x56
	.4byte	0x27b
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0x56
	.4byte	0xb4
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x56
	.4byte	0xb4
	.4byte	.LLST3
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0x56
	.4byte	0x157
	.4byte	.LLST4
	.byte	0x0
	.uleb128 0x14
	.4byte	0x334
	.4byte	.LASF45
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0xd4
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4c
	.4byte	0x27b
	.uleb128 0x15
	.4byte	.LASF33
	.byte	0x1
	.byte	0x4c
	.4byte	0xb4
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x1
	.byte	0x4c
	.4byte	0xb4
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x1
	.byte	0x4c
	.4byte	0x4f
	.byte	0x0
	.uleb128 0x12
	.4byte	0x3db
	.4byte	.LASF46
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.4byte	0xb4
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST5
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x2
	.byte	0x69
	.4byte	0x3db
	.4byte	.LLST6
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x2
	.byte	0x69
	.4byte	0xb4
	.4byte	.LLST7
	.uleb128 0x16
	.ascii	"i\000"
	.byte	0x2
	.byte	0x6a
	.4byte	0xb4
	.4byte	.LLST8
	.uleb128 0x17
	.4byte	.LASF39
	.byte	0x2
	.byte	0x6b
	.4byte	0x286
	.4byte	.LLST9
	.uleb128 0x17
	.4byte	.LASF38
	.byte	0x2
	.byte	0x6c
	.4byte	0xb4
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	.LASF48
	.byte	0x2
	.byte	0x6e
	.4byte	0xb4
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x17
	.4byte	.LASF49
	.byte	0x2
	.byte	0x6f
	.4byte	0xb4
	.4byte	.LLST11
	.uleb128 0x19
	.4byte	0x2f6
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x2
	.byte	0x8a
	.uleb128 0x1a
	.4byte	0x328
	.uleb128 0x1a
	.4byte	0x31d
	.uleb128 0x1a
	.4byte	0x312
	.uleb128 0x1a
	.4byte	0x307
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x292
	.uleb128 0x1b
	.4byte	0x41b
	.byte	0x1
	.4byte	.LASF50
	.byte	0x2
	.byte	0xd6
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LLST12
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x2
	.byte	0xd6
	.4byte	0x3db
	.4byte	.LLST13
	.uleb128 0x16
	.ascii	"i\000"
	.byte	0x2
	.byte	0xd7
	.4byte	0xb4
	.4byte	.LLST14
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x44f
	.byte	0x1
	.4byte	.LASF51
	.byte	0x2
	.byte	0xe6
	.byte	0x1
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LLST15
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x2
	.byte	0xe6
	.4byte	0x3db
	.4byte	.LLST16
	.uleb128 0x1d
	.ascii	"i\000"
	.byte	0x2
	.byte	0xe7
	.4byte	0x25
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.4byte	0x4c7
	.byte	0x1
	.4byte	.LASF52
	.byte	0x2
	.byte	0xbe
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST17
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x2
	.byte	0xbe
	.4byte	0x3db
	.4byte	.LLST18
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x2
	.byte	0xbe
	.4byte	0x157
	.4byte	.LLST19
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x2
	.byte	0xbe
	.4byte	0xb4
	.4byte	.LLST20
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x2
	.byte	0xbe
	.4byte	0xb4
	.4byte	.LLST21
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x2
	.byte	0xbe
	.4byte	0xb4
	.4byte	.LLST22
	.uleb128 0x17
	.4byte	.LASF55
	.byte	0x2
	.byte	0xbf
	.4byte	0xb4
	.4byte	.LLST23
	.byte	0x0
	.uleb128 0x1b
	.4byte	0x53f
	.byte	0x1
	.4byte	.LASF56
	.byte	0x2
	.byte	0xa9
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST24
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x2
	.byte	0xa9
	.4byte	0x3db
	.4byte	.LLST25
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x2
	.byte	0xa9
	.4byte	0x157
	.4byte	.LLST26
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x2
	.byte	0xa9
	.4byte	0xb4
	.4byte	.LLST27
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x2
	.byte	0xa9
	.4byte	0xb4
	.4byte	.LLST28
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x2
	.byte	0xa9
	.4byte	0xb4
	.4byte	.LLST29
	.uleb128 0x17
	.4byte	.LASF55
	.byte	0x2
	.byte	0xaa
	.4byte	0xb4
	.4byte	.LLST30
	.byte	0x0
	.uleb128 0x1b
	.4byte	0x5b7
	.byte	0x1
	.4byte	.LASF57
	.byte	0x2
	.byte	0x97
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST31
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x2
	.byte	0x97
	.4byte	0x3db
	.4byte	.LLST32
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x2
	.byte	0x97
	.4byte	0x4f
	.4byte	.LLST33
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x2
	.byte	0x97
	.4byte	0xb4
	.4byte	.LLST34
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x2
	.byte	0x97
	.4byte	0xb4
	.4byte	.LLST35
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x2
	.byte	0x97
	.4byte	0xb4
	.4byte	.LLST36
	.uleb128 0x17
	.4byte	.LASF55
	.byte	0x2
	.byte	0x98
	.4byte	0xb4
	.4byte	.LLST37
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x5df
	.4byte	.LASF58
	.byte	0x3
	.byte	0x2b
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST38
	.uleb128 0x1f
	.ascii	"mem\000"
	.byte	0x3
	.byte	0x2b
	.4byte	0x4f
	.4byte	.LLST39
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x608
	.byte	0x1
	.4byte	.LASF59
	.byte	0x2
	.byte	0x58
	.byte	0x1
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST40
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x2
	.byte	0x58
	.4byte	0x3db
	.4byte	.LLST41
	.byte	0x0
	.uleb128 0x12
	.4byte	0x634
	.4byte	.LASF60
	.byte	0x3
	.byte	0x27
	.byte	0x1
	.4byte	0x4f
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST42
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x3
	.byte	0x27
	.4byte	0x74
	.4byte	.LLST43
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF66
	.byte	0x2
	.byte	0x2e
	.byte	0x1
	.4byte	0x3db
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST44
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x2
	.byte	0x2e
	.4byte	0xb4
	.4byte	.LLST45
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x2
	.byte	0x2e
	.4byte	0x27b
	.4byte	.LLST46
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x2
	.byte	0x2f
	.4byte	0x3db
	.4byte	.LLST47
	.uleb128 0x16
	.ascii	"i\000"
	.byte	0x2
	.byte	0x30
	.4byte	0xb4
	.4byte	.LLST48
	.uleb128 0x17
	.4byte	.LASF39
	.byte	0x2
	.byte	0x31
	.4byte	0x286
	.4byte	.LLST49
	.byte	0x0
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
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
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
	.uleb128 0x1f
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
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xdc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x698
	.4byte	0x3e1
	.ascii	"_FAT_cache_flush\000"
	.4byte	0x41b
	.ascii	"_FAT_cache_invalidate\000"
	.4byte	0x44f
	.ascii	"_FAT_cache_eraseWritePartialSector\000"
	.4byte	0x4c7
	.ascii	"_FAT_cache_writePartialSector\000"
	.4byte	0x53f
	.ascii	"_FAT_cache_readPartialSector\000"
	.4byte	0x5df
	.ascii	"_FAT_cache_destructor\000"
	.4byte	0x634
	.ascii	"_FAT_cache_constructor\000"
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
.LASF34:
	.ascii	"count\000"
.LASF10:
	.ascii	"size_t\000"
.LASF16:
	.ascii	"true\000"
.LASF25:
	.ascii	"features\000"
.LASF65:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF59:
	.ascii	"_FAT_cache_destructor\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF46:
	.ascii	"_FAT_cache_getSector\000"
.LASF1:
	.ascii	"long long int\000"
.LASF9:
	.ascii	"signed char\000"
.LASF32:
	.ascii	"IO_INTERFACE\000"
.LASF31:
	.ascii	"fn_shutdown\000"
.LASF0:
	.ascii	"long int\000"
.LASF29:
	.ascii	"fn_writeSectors\000"
.LASF58:
	.ascii	"_FAT_mem_free\000"
.LASF49:
	.ascii	"lowestCount\000"
.LASF15:
	.ascii	"false\000"
.LASF30:
	.ascii	"fn_clearStatus\000"
.LASF2:
	.ascii	"unsigned int\000"
.LASF33:
	.ascii	"sector\000"
.LASF27:
	.ascii	"fn_isInserted\000"
.LASF4:
	.ascii	"long unsigned int\000"
.LASF55:
	.ascii	"page\000"
.LASF54:
	.ascii	"size\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF52:
	.ascii	"_FAT_cache_eraseWritePartialSector\000"
.LASF45:
	.ascii	"_FAT_disc_readSectors\000"
.LASF24:
	.ascii	"ioType\000"
.LASF20:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF40:
	.ascii	"pages\000"
.LASF19:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF57:
	.ascii	"_FAT_cache_readPartialSector\000"
.LASF66:
	.ascii	"_FAT_cache_constructor\000"
.LASF50:
	.ascii	"_FAT_cache_flush\000"
.LASF62:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF13:
	.ascii	"float\000"
.LASF48:
	.ascii	"leastUsed\000"
.LASF42:
	.ascii	"numSectors\000"
.LASF64:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF17:
	.ascii	"bool\000"
.LASF23:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF35:
	.ascii	"dirty\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF5:
	.ascii	"short int\000"
.LASF21:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF43:
	.ascii	"buffer\000"
.LASF61:
	.ascii	"discInterface\000"
.LASF53:
	.ascii	"offset\000"
.LASF18:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF56:
	.ascii	"_FAT_cache_writePartialSector\000"
.LASF6:
	.ascii	"char\000"
.LASF39:
	.ascii	"cacheEntries\000"
.LASF63:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/cache"
	.ascii	".c\000"
.LASF37:
	.ascii	"disc\000"
.LASF28:
	.ascii	"fn_readSectors\000"
.LASF26:
	.ascii	"fn_startup\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF41:
	.ascii	"CACHE\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF51:
	.ascii	"_FAT_cache_invalidate\000"
.LASF44:
	.ascii	"_FAT_disc_writeSectors\000"
.LASF36:
	.ascii	"CACHE_ENTRY\000"
.LASF60:
	.ascii	"_FAT_mem_allocate\000"
.LASF38:
	.ascii	"numberOfPages\000"
.LASF22:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF47:
	.ascii	"cache\000"
.LASF14:
	.ascii	"double\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
