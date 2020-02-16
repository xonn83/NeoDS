	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
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
	.code	16
	.thumb_func
	.type	_FAT_cache_getSector, %function
_FAT_cache_getSector:
.LFB14:
	.file 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/cache.c"
	.loc 1 105 0
	push	{r3, r4, r5, r6, r7, lr}
.LCFI0:
.LVL0:
	.loc 1 108 0
	ldr	r3, [r0, #4]
	.loc 1 105 0
	mov	r7, r1
	.loc 1 107 0
	ldr	r1, [r0, #8]
.LVL1:
	.loc 1 108 0
	mov	r2, #1
.LVL2:
	.loc 1 105 0
	mov	r4, r0
	.loc 1 108 0
	mov	ip, r3
.LVL3:
	neg	r2, r2
	mov	r3, r1
	mov	r6, #0
.LVL4:
	mov	r0, #0
.LVL5:
	.loc 1 113 0
	b	.L2
.L6:
	.loc 1 115 0
	add	r5, r5, #1
	beq	.L3
	ldr	r5, [r3, #4]
	cmp	r5, r2
	bcs	.L4
.L3:
	.loc 1 117 0
	ldr	r2, [r3, #4]
	mov	r6, r0
.L4:
	.loc 1 113 0
	add	r0, r0, #1
	add	r3, r3, #12
.L2:
	cmp	r0, ip
	bcs	.L5
	ldr	r5, [r3]
	cmp	r5, r7
	bne	.L6
	.loc 1 122 0
	lsl	r3, r0, #1
	add	r3, r3, r0
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldr	r2, [r3]
.LVL6:
	cmp	r2, r7
	bne	.L5
	.loc 1 124 0
	ldr	r2, [r3, #4]
	add	r2, r2, #1
	str	r2, [r3, #4]
	.loc 1 125 0
	b	.L7
.LVL7:
.L5:
	.loc 1 129 0
	lsl	r5, r6, #1
	add	r5, r5, r6
	lsl	r5, r5, #2
	add	r5, r1, r5
	ldr	r0, [r5]
.LVL8:
	add	r3, r0, #1
	beq	.L8
	ldrb	r3, [r5, #8]
	cmp	r3, #1
	bne	.L8
.LBB14:
.LBB15:
	.file 2 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/disc.h"
	.loc 2 87 0
	ldr	r1, [r4, #12]
.LVL9:
	ldr	r3, [r4]
	lsl	r2, r6, #9
.LVL10:
	add	r2, r1, r2
	ldr	r3, [r3, #20]
	mov	r1, #1
	blx	r3
.LVL11:
.LBE15:
.LBE14:
	.loc 1 131 0
	cmp	r0, #0
	beq	.L9
	.loc 1 134 0
	mov	r3, #0
	strb	r3, [r5, #8]
.LVL12:
.L8:
.LBB16:
.LBB17:
	.loc 2 77 0
	ldr	r1, [r4, #12]
.LVL13:
	ldr	r3, [r4]
	lsl	r2, r6, #9
.LVL14:
	add	r2, r1, r2
	ldr	r3, [r3, #16]
	mov	r0, r7
	mov	r1, #1
	blx	r3
.LVL15:
.LBE17:
.LBE16:
	.loc 1 138 0
	cmp	r0, #0
	beq	.L9
	.loc 1 144 0
	ldr	r3, [r5, #4]
	.loc 1 141 0
	str	r7, [r5]
	.loc 1 144 0
	add	r3, r3, #1
	str	r3, [r5, #4]
	mov	r0, r6
.LVL16:
	.loc 1 145 0
	b	.L7
.LVL17:
.L9:
	mov	r0, #1
.LVL18:
	neg	r0, r0
.LVL19:
.L7:
.LVL20:
	.loc 1 146 0
	@ sp needed for prologue
.LVL21:
.LVL22:
.LVL23:
	pop	{r3, r4, r5, r6, r7, pc}
.LFE14:
	.size	_FAT_cache_getSector, .-_FAT_cache_getSector
	.align	2
	.global	_FAT_cache_flush
	.code	16
	.thumb_func
	.type	_FAT_cache_flush, %function
_FAT_cache_flush:
.LFB18:
	.loc 1 214 0
	push	{r3, r4, r5, r6, r7, lr}
.LCFI1:
.LVL24:
	.loc 1 214 0
	mov	r4, r0
	mov	r5, #0
	mov	r6, #0
.LVL25:
	.loc 1 223 0
	mov	r7, #0
	.loc 1 217 0
	b	.L13
.LVL26:
.L16:
	.loc 1 218 0
	ldr	r3, [r4, #8]
	add	r3, r3, r5
	ldrb	r2, [r3, #8]
	cmp	r2, #0
	beq	.L14
.LBB18:
.LBB19:
	.loc 2 87 0
	ldr	r1, [r4]
	ldr	r2, [r4, #12]
	ldr	r0, [r3]
	lsl	r3, r6, #9
	add	r2, r2, r3
	ldr	r3, [r1, #20]
	mov	r1, #1
	blx	r3
.LBE19:
.LBE18:
	.loc 1 219 0
	cmp	r0, #0
	bne	.L14
	mov	r0, #255
	b	.L15
.LVL27:
.L14:
	.loc 1 223 0
	ldr	r3, [r4, #8]
	.loc 1 217 0
	add	r6, r6, #1
	.loc 1 223 0
	add	r3, r3, r5
	str	r7, [r3, #4]
	.loc 1 224 0
	strb	r7, [r3, #8]
	.loc 1 217 0
	add	r5, r5, #12
.L13:
	ldr	r3, [r4, #4]
	cmp	r6, r3
	bcc	.L16
	mov	r0, #1
.L15:
	.loc 1 228 0
	@ sp needed for prologue
.LVL28:
.LVL29:
	pop	{r3, r4, r5, r6, r7, pc}
.LFE18:
	.size	_FAT_cache_flush, .-_FAT_cache_flush
	.align	2
	.global	_FAT_cache_invalidate
	.code	16
	.thumb_func
	.type	_FAT_cache_invalidate, %function
_FAT_cache_invalidate:
.LFB19:
	.loc 1 230 0
	push	{r4, r5, r6, lr}
.LCFI2:
.LVL30:
	.loc 1 233 0
	mov	r3, #1
	.loc 1 230 0
	ldr	r6, [r0, #4]
	mov	r1, #0
	mov	r2, #0
.LVL31:
	.loc 1 233 0
	neg	r3, r3
	.loc 1 234 0
	mov	r5, #0
	.loc 1 232 0
	b	.L19
.L20:
	.loc 1 233 0
	ldr	r4, [r0, #8]
	.loc 1 232 0
	add	r2, r2, #1
	.loc 1 233 0
	add	r4, r4, r1
	str	r3, [r4]
	.loc 1 234 0
	str	r5, [r4, #4]
	.loc 1 235 0
	strb	r5, [r4, #8]
	.loc 1 232 0
	add	r1, r1, #12
.L19:
	cmp	r2, r6
	bne	.L20
	.loc 1 237 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.LFE19:
	.size	_FAT_cache_invalidate, .-_FAT_cache_invalidate
	.align	2
	.global	_FAT_cache_eraseWritePartialSector
	.code	16
	.thumb_func
	.type	_FAT_cache_eraseWritePartialSector, %function
_FAT_cache_eraseWritePartialSector:
.LFB17:
	.loc 1 190 0
	push	{r4, r5, r6, r7, lr}
.LCFI3:
.LVL32:
	sub	sp, sp, #12
.LCFI4:
	.loc 1 190 0
	mov	r4, r0
	.loc 1 193 0
	ldr	r0, [sp, #32]
.LVL33:
	mov	r5, #128
	.loc 1 190 0
	str	r3, [sp]
	.loc 1 193 0
	lsl	r5, r5, #2
	add	r3, r0, r3
.LVL34:
	.loc 1 190 0
	str	r1, [sp, #4]
	.loc 1 193 0
	cmp	r3, r5
	bhi	.L23
.LVL35:
	.loc 1 197 0
	mov	r0, r4
	mov	r1, r2
.LVL36:
	bl	_FAT_cache_getSector
.LVL37:
	mov	r6, r0
.LVL38:
	.loc 1 198 0
	add	r1, r0, #1
	beq	.L23
.LVL39:
	.loc 1 202 0
	lsl	r7, r0, #9
	ldr	r0, [r4, #12]
.LVL40:
	mov	r1, #0
	add	r0, r0, r7
	mov	r2, r5
	bl	memset
	.loc 1 203 0
	ldr	r3, [sp]
	ldr	r0, [r4, #12]
	add	r7, r7, r3
	ldr	r2, [sp, #32]
	add	r0, r0, r7
	ldr	r1, [sp, #4]
	bl	memcpy
	.loc 1 204 0
	lsl	r2, r6, #1
	ldr	r3, [r4, #8]
	add	r6, r2, r6
.LVL41:
	lsl	r6, r6, #2
	add	r6, r3, r6
	mov	r3, #1
	strb	r3, [r6, #8]
	mov	r0, #1
	.loc 1 206 0
	b	.L24
.LVL42:
.L23:
	mov	r0, #0
.LVL43:
.L24:
	.loc 1 207 0
	add	sp, sp, #12
	@ sp needed for prologue
.LVL44:
.LVL45:
	pop	{r4, r5, r6, r7, pc}
.LFE17:
	.size	_FAT_cache_eraseWritePartialSector, .-_FAT_cache_eraseWritePartialSector
	.align	2
	.global	_FAT_cache_writePartialSector
	.code	16
	.thumb_func
	.type	_FAT_cache_writePartialSector, %function
_FAT_cache_writePartialSector:
.LFB16:
	.loc 1 169 0
	push	{r3, r4, r5, r6, r7, lr}
.LCFI5:
.LVL46:
	.loc 1 169 0
	mov	r6, r3
	.loc 1 172 0
	ldr	r3, [sp, #24]
.LVL47:
	.loc 1 169 0
	mov	r7, r1
	.loc 1 172 0
	add	r1, r3, r6
.LVL48:
	mov	r3, #128
	lsl	r3, r3, #2
	.loc 1 169 0
	mov	r4, r0
	.loc 1 172 0
	cmp	r1, r3
	bhi	.L27
.LVL49:
	.loc 1 176 0
	mov	r1, r2
	bl	_FAT_cache_getSector
.LVL50:
	mov	r5, r0
.LVL51:
	.loc 1 177 0
	add	r3, r0, #1
	beq	.L27
.LVL52:
	.loc 1 181 0
	lsl	r0, r0, #9
.LVL53:
	add	r6, r0, r6
.LVL54:
	ldr	r0, [r4, #12]
	ldr	r2, [sp, #24]
	add	r0, r0, r6
	mov	r1, r7
	bl	memcpy
	.loc 1 182 0
	lsl	r2, r5, #1
	ldr	r3, [r4, #8]
	add	r5, r2, r5
.LVL55:
	lsl	r5, r5, #2
	add	r5, r3, r5
	mov	r3, #1
	strb	r3, [r5, #8]
	mov	r0, #1
	.loc 1 184 0
	b	.L28
.LVL56:
.L27:
	mov	r0, #0
.LVL57:
.L28:
	.loc 1 185 0
	@ sp needed for prologue
.LVL58:
.LVL59:
.LVL60:
.LVL61:
	pop	{r3, r4, r5, r6, r7, pc}
.LFE16:
	.size	_FAT_cache_writePartialSector, .-_FAT_cache_writePartialSector
	.align	2
	.global	_FAT_cache_readPartialSector
	.code	16
	.thumb_func
	.type	_FAT_cache_readPartialSector, %function
_FAT_cache_readPartialSector:
.LFB15:
	.loc 1 151 0
	push	{r3, r4, r5, r6, r7, lr}
.LCFI6:
.LVL62:
	.loc 1 151 0
	ldr	r7, [sp, #24]
	mov	r6, r1
	mov	r5, r3
	.loc 1 154 0
	add	r1, r7, r3
.LVL63:
	mov	r3, #128
.LVL64:
	lsl	r3, r3, #2
	.loc 1 151 0
	mov	r4, r0
	.loc 1 154 0
	cmp	r1, r3
	bhi	.L31
.LVL65:
	.loc 1 158 0
	mov	r1, r2
	bl	_FAT_cache_getSector
.LVL66:
	.loc 1 159 0
	add	r3, r0, #1
	beq	.L31
.LVL67:
	.loc 1 162 0
	lsl	r0, r0, #9
.LVL68:
	ldr	r1, [r4, #12]
	add	r5, r0, r5
.LVL69:
	add	r1, r1, r5
	mov	r0, r6
	mov	r2, r7
	bl	memcpy
	mov	r0, #1
	.loc 1 163 0
	b	.L32
.LVL70:
.L31:
	mov	r0, #0
.LVL71:
.L32:
	.loc 1 164 0
	@ sp needed for prologue
.LVL72:
.LVL73:
.LVL74:
.LVL75:
	pop	{r3, r4, r5, r6, r7, pc}
.LFE15:
	.size	_FAT_cache_readPartialSector, .-_FAT_cache_readPartialSector
	.align	2
	.code	16
	.thumb_func
	.type	_FAT_mem_free, %function
_FAT_mem_free:
.LFB11:
	.file 3 "C:/Users/GRX/NeoDS/arm9/source/libfat/mem_allocate.h"
	.loc 3 43 0
	push	{r4, lr}
.LCFI7:
.LVL76:
	.loc 3 44 0
	bl	free
.LVL77:
	.loc 3 45 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE11:
	.size	_FAT_mem_free, .-_FAT_mem_free
	.align	2
	.global	_FAT_cache_destructor
	.code	16
	.thumb_func
	.type	_FAT_cache_destructor, %function
_FAT_cache_destructor:
.LFB13:
	.loc 1 88 0
	push	{r4, lr}
.LCFI8:
.LVL78:
	.loc 1 88 0
	mov	r4, r0
	.loc 1 90 0
	bl	_FAT_cache_flush
.LVL79:
	.loc 1 93 0
	ldr	r0, [r4, #12]
	bl	_FAT_mem_free
	.loc 1 94 0
	ldr	r0, [r4, #8]
	bl	_FAT_mem_free
	.loc 1 95 0
	mov	r0, r4
	bl	_FAT_mem_free
	.loc 1 98 0
	@ sp needed for prologue
.LVL80:
	pop	{r4, pc}
.LFE13:
	.size	_FAT_cache_destructor, .-_FAT_cache_destructor
	.align	2
	.global	_FAT_cache_constructor
	.code	16
	.thumb_func
	.type	_FAT_cache_constructor, %function
_FAT_cache_constructor:
.LFB12:
	.loc 1 46 0
	push	{r3, r4, r5, r6, r7, lr}
.LCFI9:
.LVL81:
	.loc 1 46 0
	mov	r6, r0
	mov	r7, r1
	.loc 1 51 0
	cmp	r0, #1
	bhi	.L39
.LVL82:
	mov	r6, #2
.LVL83:
.L39:
.LBB20:
.LBB21:
	.loc 3 40 0
	mov	r0, #16
	bl	malloc
	mov	r4, r0
.LVL84:
.LBE21:
.LBE20:
	.loc 1 55 0
	mov	r5, r0
	.loc 1 56 0
	cmp	r0, #0
	beq	.L40
.LVL85:
	.loc 1 60 0
	str	r7, [r0]
	.loc 1 61 0
	str	r6, [r0, #4]
.LBB22:
.LBB23:
	.loc 3 40 0
	lsl	r0, r6, #1
.LVL86:
	add	r0, r0, r6
	lsl	r0, r0, #2
	bl	malloc
.LBE23:
.LBE22:
	.loc 1 65 0
	cmp	r0, #0
	bne	.L41
	.loc 1 66 0
	mov	r0, r4
	b	.L45
.L41:
	.loc 1 67 0
	mov	r1, #0
.LVL87:
	.loc 1 71 0
	mov	r2, #1
	.loc 1 67 0
	mov	r3, r0
	.loc 1 71 0
	neg	r2, r2
	.loc 1 72 0
	mov	ip, r1
.L42:
	mov	r7, ip
.LVL88:
	.loc 1 70 0
	add	r1, r1, #1
	.loc 1 71 0
	str	r2, [r3]
	.loc 1 72 0
	str	r7, [r3, #4]
	.loc 1 73 0
	strb	r7, [r3, #8]
	.loc 1 70 0
	add	r3, r3, #12
	cmp	r1, r6
	bcc	.L42
	.loc 1 76 0
	str	r0, [r5, #8]
.LBB24:
.LBB25:
	.loc 3 40 0
	lsl	r0, r6, #9
	bl	malloc
.LVL89:
.LBE25:
.LBE24:
	.loc 1 78 0
	str	r0, [r5, #12]
	.loc 1 79 0
	cmp	r0, #0
	bne	.L40
	.loc 1 80 0
	ldr	r0, [r5, #8]
	bl	_FAT_mem_free
	.loc 1 81 0
	mov	r0, r5
.LVL90:
.L45:
	bl	_FAT_mem_free
	mov	r4, #0
.LVL91:
.L40:
	.loc 1 86 0
	mov	r0, r4
	@ sp needed for prologue
.LVL92:
.LVL93:
.LVL94:
	pop	{r3, r4, r5, r6, r7, pc}
.LFE12:
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0x3
	.sleb128 6
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI1-.LFB18
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0x3
	.sleb128 6
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
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI2-.LFB19
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
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
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
	.uleb128 0x20
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI5-.LFB16
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0x3
	.sleb128 6
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
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI6-.LFB15
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0x3
	.sleb128 6
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
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI7-.LFB11
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI8-.LFB13
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI9-.LFB12
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0x3
	.sleb128 6
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
.LEFDE16:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL19-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB18-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB19-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL49-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL75-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
	.file 4 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h"
	.file 5 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 6 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 7 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/disc_io.h"
	.file 8 "C:/Users/GRX/NeoDS/arm9/source/libfat/cache.h"
	.section	.debug_info
	.4byte	0x6f0
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x1
	.4byte	.LASF62
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x4
	.byte	0xd3
	.4byte	0x44
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x5
	.byte	0x2a
	.4byte	0x28
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x5
	.byte	0x50
	.4byte	0x44
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x7
	.ascii	"u8\000"
	.byte	0x6
	.byte	0x62
	.4byte	0x7e
	.uleb128 0x7
	.ascii	"u32\000"
	.byte	0x6
	.byte	0x64
	.4byte	0x89
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0x7d
	.4byte	0xcc
	.uleb128 0x9
	.4byte	.LASF15
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF16
	.sleb128 1
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x6
	.byte	0x7d
	.4byte	0xb7
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x7
	.byte	0x3d
	.4byte	0xe2
	.uleb128 0xa
	.byte	0x4
	.4byte	0xe8
	.uleb128 0xb
	.byte	0x1
	.4byte	0xcc
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x7
	.byte	0x3e
	.4byte	0xe2
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x7
	.byte	0x3f
	.4byte	0x104
	.uleb128 0xa
	.byte	0x4
	.4byte	0x10a
	.uleb128 0xc
	.byte	0x1
	.4byte	0xcc
	.4byte	0x124
	.uleb128 0xd
	.4byte	0xac
	.uleb128 0xd
	.4byte	0xac
	.uleb128 0xd
	.4byte	0x63
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x7
	.byte	0x40
	.4byte	0x12f
	.uleb128 0xa
	.byte	0x4
	.4byte	0x135
	.uleb128 0xc
	.byte	0x1
	.4byte	0xcc
	.4byte	0x14f
	.uleb128 0xd
	.4byte	0xac
	.uleb128 0xd
	.4byte	0xac
	.uleb128 0xd
	.4byte	0x14f
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x155
	.uleb128 0xe
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x7
	.byte	0x41
	.4byte	0xe2
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x7
	.byte	0x42
	.4byte	0xe2
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x20
	.byte	0x7
	.byte	0x44
	.4byte	0x1e9
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x7
	.byte	0x45
	.4byte	0x65
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x7
	.byte	0x46
	.4byte	0x65
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x7
	.byte	0x47
	.4byte	0xd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x7
	.byte	0x48
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x7
	.byte	0x49
	.4byte	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x7
	.byte	0x4a
	.4byte	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x7
	.byte	0x4b
	.4byte	0x156
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x7
	.byte	0x4c
	.4byte	0x161
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x7
	.byte	0x4f
	.4byte	0x16c
	.uleb128 0x11
	.byte	0xc
	.byte	0x8
	.byte	0x2f
	.4byte	0x227
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x8
	.byte	0x30
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x8
	.byte	0x31
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x8
	.byte	0x32
	.4byte	0xcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x8
	.byte	0x33
	.4byte	0x1f4
	.uleb128 0x11
	.byte	0x10
	.byte	0x8
	.byte	0x35
	.4byte	0x273
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x8
	.byte	0x36
	.4byte	0x273
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x8
	.byte	0x37
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x8
	.byte	0x38
	.4byte	0x27e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x8
	.byte	0x39
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x279
	.uleb128 0x12
	.4byte	0x1e9
	.uleb128 0xa
	.byte	0x4
	.4byte	0x227
	.uleb128 0xa
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x8
	.byte	0x3a
	.4byte	0x232
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x2
	.byte	0x56
	.byte	0x1
	.4byte	0xcc
	.byte	0x3
	.4byte	0x2d3
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x2
	.byte	0x56
	.4byte	0x273
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x2
	.byte	0x56
	.4byte	0xac
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x2
	.byte	0x56
	.4byte	0xac
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x2
	.byte	0x56
	.4byte	0x14f
	.byte	0x0
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x2
	.byte	0x4c
	.byte	0x1
	.4byte	0xcc
	.byte	0x3
	.4byte	0x311
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x2
	.byte	0x4c
	.4byte	0x273
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x2
	.byte	0x4c
	.4byte	0xac
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x2
	.byte	0x4c
	.4byte	0xac
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x2
	.byte	0x4c
	.4byte	0x63
	.byte	0x0
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x3
	.byte	0x27
	.byte	0x1
	.4byte	0x63
	.byte	0x3
	.4byte	0x32e
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x3
	.byte	0x27
	.4byte	0x73
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.4byte	0xac
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST0
	.4byte	0x3fe
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x1
	.byte	0x69
	.4byte	0x3fe
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0x69
	.4byte	0xac
	.4byte	.LLST2
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x1
	.byte	0x6a
	.4byte	0xac
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF39
	.byte	0x1
	.byte	0x6b
	.4byte	0x27e
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF38
	.byte	0x1
	.byte	0x6c
	.4byte	0xac
	.4byte	.LLST5
	.uleb128 0x18
	.4byte	.LASF49
	.byte	0x1
	.byte	0x6e
	.4byte	0xac
	.4byte	.LLST6
	.uleb128 0x18
	.4byte	.LASF50
	.byte	0x1
	.byte	0x6f
	.4byte	0xac
	.4byte	.LLST7
	.uleb128 0x19
	.4byte	0x295
	.4byte	.LBB14
	.4byte	.LBE14
	.byte	0x1
	.byte	0x83
	.4byte	0x3d9
	.uleb128 0x1a
	.4byte	0x2c7
	.uleb128 0x1a
	.4byte	0x2bc
	.uleb128 0x1a
	.4byte	0x2b1
	.uleb128 0x1a
	.4byte	0x2a6
	.byte	0x0
	.uleb128 0x1b
	.4byte	0x2d3
	.4byte	.LBB16
	.4byte	.LBE16
	.byte	0x1
	.byte	0x8a
	.uleb128 0x1a
	.4byte	0x305
	.uleb128 0x1a
	.4byte	0x2fa
	.uleb128 0x1a
	.4byte	0x2ef
	.uleb128 0x1a
	.4byte	0x2e4
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x28a
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF51
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.4byte	0xcc
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST8
	.4byte	0x462
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x1
	.byte	0xd6
	.4byte	0x3fe
	.4byte	.LLST9
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x1
	.byte	0xd7
	.4byte	0xac
	.4byte	.LLST10
	.uleb128 0x1b
	.4byte	0x295
	.4byte	.LBB18
	.4byte	.LBE18
	.byte	0x1
	.byte	0xdb
	.uleb128 0x1a
	.4byte	0x2c7
	.uleb128 0x1a
	.4byte	0x2bc
	.uleb128 0x1a
	.4byte	0x2b1
	.uleb128 0x1a
	.4byte	0x2a6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST11
	.4byte	0x494
	.uleb128 0x1e
	.4byte	.LASF48
	.byte	0x1
	.byte	0xe6
	.4byte	0x3fe
	.byte	0x1
	.byte	0x50
	.uleb128 0x1f
	.ascii	"i\000"
	.byte	0x1
	.byte	0xe7
	.4byte	0x3d
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF52
	.byte	0x1
	.byte	0xbe
	.byte	0x1
	.4byte	0xcc
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST12
	.4byte	0x50c
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x1
	.byte	0xbe
	.4byte	0x3fe
	.4byte	.LLST13
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x1
	.byte	0xbe
	.4byte	0x14f
	.4byte	.LLST14
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0xbe
	.4byte	0xac
	.4byte	.LLST15
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x1
	.byte	0xbe
	.4byte	0xac
	.4byte	.LLST16
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0xbe
	.4byte	0xac
	.4byte	.LLST17
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x1
	.byte	0xbf
	.4byte	0xac
	.4byte	.LLST18
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF55
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.4byte	0xcc
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST19
	.4byte	0x584
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x1
	.byte	0xa9
	.4byte	0x3fe
	.4byte	.LLST20
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x1
	.byte	0xa9
	.4byte	0x14f
	.4byte	.LLST21
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0xa9
	.4byte	0xac
	.4byte	.LLST22
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x1
	.byte	0xa9
	.4byte	0xac
	.4byte	.LLST23
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0xa9
	.4byte	0xac
	.4byte	.LLST24
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x1
	.byte	0xaa
	.4byte	0xac
	.4byte	.LLST25
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF56
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.4byte	0xcc
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST26
	.4byte	0x5fc
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x1
	.byte	0x97
	.4byte	0x3fe
	.4byte	.LLST27
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x1
	.byte	0x97
	.4byte	0x63
	.4byte	.LLST28
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0x97
	.4byte	0xac
	.4byte	.LLST29
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x1
	.byte	0x97
	.4byte	0xac
	.4byte	.LLST30
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0x97
	.4byte	0xac
	.4byte	.LLST31
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x1
	.byte	0x98
	.4byte	0xac
	.4byte	.LLST32
	.byte	0x0
	.uleb128 0x20
	.4byte	.LASF65
	.byte	0x3
	.byte	0x2b
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST33
	.4byte	0x624
	.uleb128 0x21
	.ascii	"mem\000"
	.byte	0x3
	.byte	0x2b
	.4byte	0x63
	.4byte	.LLST34
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF58
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST35
	.4byte	0x64d
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x1
	.byte	0x58
	.4byte	0x3fe
	.4byte	.LLST36
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF59
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.4byte	0x3fe
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST37
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x1
	.byte	0x2e
	.4byte	0xac
	.4byte	.LLST38
	.uleb128 0x16
	.4byte	.LASF60
	.byte	0x1
	.byte	0x2e
	.4byte	0x273
	.4byte	.LLST39
	.uleb128 0x18
	.4byte	.LASF48
	.byte	0x1
	.byte	0x2f
	.4byte	0x3fe
	.4byte	.LLST40
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x1
	.byte	0x30
	.4byte	0xac
	.4byte	.LLST41
	.uleb128 0x23
	.4byte	.LASF39
	.byte	0x1
	.byte	0x31
	.4byte	0x27e
	.uleb128 0x19
	.4byte	0x311
	.4byte	.LBB20
	.4byte	.LBE20
	.byte	0x1
	.byte	0x37
	.4byte	0x6c4
	.uleb128 0x1a
	.4byte	0x322
	.byte	0x0
	.uleb128 0x19
	.4byte	0x311
	.4byte	.LBB22
	.4byte	.LBE22
	.byte	0x1
	.byte	0x40
	.4byte	0x6dd
	.uleb128 0x1a
	.4byte	0x322
	.byte	0x0
	.uleb128 0x1b
	.4byte	0x311
	.4byte	.LBB24
	.4byte	.LBE24
	.byte	0x1
	.byte	0x4e
	.uleb128 0x1a
	.4byte	0x322
	.byte	0x0
	.byte	0x0
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
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xdc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x6f4
	.4byte	0x404
	.ascii	"_FAT_cache_flush\000"
	.4byte	0x462
	.ascii	"_FAT_cache_invalidate\000"
	.4byte	0x494
	.ascii	"_FAT_cache_eraseWritePartialSector\000"
	.4byte	0x50c
	.ascii	"_FAT_cache_writePartialSector\000"
	.4byte	0x584
	.ascii	"_FAT_cache_readPartialSector\000"
	.4byte	0x624
	.ascii	"_FAT_cache_destructor\000"
	.4byte	0x64d
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
.LASF16:
	.ascii	"true\000"
.LASF10:
	.ascii	"size_t\000"
.LASF63:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF40:
	.ascii	"pages\000"
.LASF58:
	.ascii	"_FAT_cache_destructor\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF61:
	.ascii	"GNU C 4.4.3\000"
.LASF5:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF28:
	.ascii	"fn_readSectors\000"
.LASF31:
	.ascii	"fn_shutdown\000"
.LASF7:
	.ascii	"long int\000"
.LASF60:
	.ascii	"discInterface\000"
.LASF14:
	.ascii	"double\000"
.LASF29:
	.ascii	"fn_writeSectors\000"
.LASF22:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF65:
	.ascii	"_FAT_mem_free\000"
.LASF50:
	.ascii	"lowestCount\000"
.LASF49:
	.ascii	"leastUsed\000"
.LASF30:
	.ascii	"fn_clearStatus\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF33:
	.ascii	"sector\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF54:
	.ascii	"page\000"
.LASF47:
	.ascii	"size\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF52:
	.ascii	"_FAT_cache_eraseWritePartialSector\000"
.LASF17:
	.ascii	"bool\000"
.LASF42:
	.ascii	"numSectors\000"
.LASF24:
	.ascii	"ioType\000"
.LASF27:
	.ascii	"fn_isInserted\000"
.LASF25:
	.ascii	"features\000"
.LASF45:
	.ascii	"_FAT_disc_readSectors\000"
.LASF19:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF56:
	.ascii	"_FAT_cache_readPartialSector\000"
.LASF59:
	.ascii	"_FAT_cache_constructor\000"
.LASF51:
	.ascii	"_FAT_cache_flush\000"
.LASF20:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF64:
	.ascii	"_FAT_cache_getSector\000"
.LASF13:
	.ascii	"float\000"
.LASF23:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF35:
	.ascii	"dirty\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF2:
	.ascii	"short int\000"
.LASF21:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF15:
	.ascii	"false\000"
.LASF18:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF55:
	.ascii	"_FAT_cache_writePartialSector\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF38:
	.ascii	"numberOfPages\000"
.LASF9:
	.ascii	"char\000"
.LASF39:
	.ascii	"cacheEntries\000"
.LASF43:
	.ascii	"buffer\000"
.LASF37:
	.ascii	"disc\000"
.LASF53:
	.ascii	"offset\000"
.LASF32:
	.ascii	"IO_INTERFACE\000"
.LASF26:
	.ascii	"fn_startup\000"
.LASF41:
	.ascii	"CACHE\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF44:
	.ascii	"_FAT_disc_writeSectors\000"
.LASF36:
	.ascii	"CACHE_ENTRY\000"
.LASF46:
	.ascii	"_FAT_mem_allocate\000"
.LASF62:
	.ascii	"C:/Users/GRX/NeoDS/arm9/source/libfat/cache.c\000"
.LASF48:
	.ascii	"cache\000"
.LASF57:
	.ascii	"_FAT_cache_invalidate\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
