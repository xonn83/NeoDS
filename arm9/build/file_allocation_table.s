	.code	16
	.file	"file_allocation_table.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	_FAT_fat_nextCluster
	.code 16
	.thumb_func
	.type	_FAT_fat_nextCluster, %function
_FAT_fat_nextCluster:
.LFB13:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/file_allocation_table.c"
	.loc 1 48 0
	push	{r4, r5, r6, r7, lr}
.LCFI0:
.LVL0:
	sub	sp, sp, #28
.LCFI1:
	.loc 1 49 0
	mov	r3, #0
	.loc 1 48 0
	str	r1, [sp, #12]
	.loc 1 49 0
	str	r3, [sp, #20]
.LVL1:
	.loc 1 53 0
	ldrb	r7, [r0, #9]
	.loc 1 49 0
	add	r1, sp, #20
.LVL2:
	.loc 1 48 0
	mov	r6, r0
	.loc 1 49 0
	mov	ip, r1
	.loc 1 53 0
	cmp	r7, #1
	beq	.L4
.LVL3:
	cmp	r7, #1
	bcc	.L17
	cmp	r7, #2
	beq	.L5
	cmp	r7, #3
	bne	.L17
	b	.L6
.L4:
	.loc 1 60 0
	ldr	r2, [sp, #12]
	ldr	r3, [r0, #44]
	lsl	r4, r2, #1
	add	r4, r4, r2
	lsr	r2, r4, #10
	add	r5, r2, r3
.LVL4:
	.loc 1 61 0
	ldr	r3, .L21
	lsr	r4, r4, #1
	and	r4, r4, r3
.LVL5:
	.loc 1 64 0
	ldr	r0, [r0, #4]
	mov	r3, r4
	mov	r2, r5
	str	r7, [sp]
	bl	_FAT_cache_readPartialSector
	.loc 1 68 0
	ldr	r1, .L21
	.loc 1 66 0
	add	r3, r4, #1
.LVL6:
	.loc 1 68 0
	cmp	r3, r1
	ble	.L8
	.loc 1 70 0
	add	r5, r5, #1
	mov	r3, #0
.L8:
	.loc 1 73 0
	mov	r1, sp
	mov	r2, r5
	ldr	r0, [r6, #4]
	add	r1, r1, #21
	str	r7, [sp]
	bl	_FAT_cache_readPartialSector
.LVL7:
	.loc 1 75 0
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #20]
	tst	r3, r7
	beq	.L10
.LVL8:
	.loc 1 76 0
	lsr	r3, r2, #4
	b	.L18
.L10:
	.loc 1 78 0
	ldr	r3, .L21+4
	and	r3, r3, r2
.L18:
	str	r3, [sp, #20]
	.loc 1 81 0
	ldr	r2, [sp, #20]
	ldr	r3, .L21+8
.L20:
	cmp	r2, r3
	bls	.L7
	b	.L19
.LVL9:
.L5:
	.loc 1 92 0
	ldr	r1, [sp, #12]
	ldr	r3, [r6, #44]
	lsl	r2, r1, #1
	lsr	r2, r2, #9
	add	r2, r2, r3
	mov	r3, #255
	and	r3, r3, r1
	ldr	r0, [r0, #4]
	lsl	r3, r3, #1
	mov	r1, ip
	str	r7, [sp]
	bl	_FAT_cache_readPartialSector
	.loc 1 94 0
	ldr	r2, [sp, #20]
	ldr	r3, .L21+12
	b	.L20
.LVL10:
.L19:
	.loc 1 96 0
	ldr	r3, .L21+16
	b	.L17
.LVL11:
.L6:
	.loc 1 104 0
	ldr	r3, [sp, #12]
	ldr	r1, [sp, #12]
	lsl	r2, r3, #2
	ldr	r3, [r6, #44]
	lsr	r2, r2, #9
	add	r2, r2, r3
	mov	r3, #127
	and	r3, r3, r1
	mov	r1, #4
	ldr	r0, [r0, #4]
	lsl	r3, r3, #2
	str	r1, [sp]
	mov	r1, ip
	bl	_FAT_cache_readPartialSector
	.loc 1 106 0
	ldr	r2, [sp, #20]
	ldr	r3, .L21+20
	cmp	r2, r3
	bls	.L7
.LVL12:
	.loc 1 108 0
	add	r3, r3, #9
.LVL13:
.L17:
	.loc 1 113 0
	str	r3, [sp, #20]
.L7:
	ldr	r0, [sp, #20]
	.loc 1 118 0
	add	sp, sp, #28
	@ sp needed for prologue
.LVL14:
.LVL15:
.LVL16:
	pop	{r4, r5, r6, r7, pc}
.L22:
	.align	2
.L21:
	.word	511
	.word	4095
	.word	4086
	.word	65526
	.word	268435455
	.word	268435446
.LFE13:
	.size	_FAT_fat_nextCluster, .-_FAT_fat_nextCluster
	.align	2
	.global	_FAT_fat_lastCluster
	.code 16
	.thumb_func
	.type	_FAT_fat_lastCluster, %function
_FAT_fat_lastCluster:
.LFB18:
	.loc 1 326 0
	push	{r4, r5, lr}
.LCFI2:
.LVL17:
	sub	sp, sp, #4
.LCFI3:
	.loc 1 326 0
	mov	r5, r0
	mov	r4, r1
	b	.L24
.LVL18:
.L25:
	.loc 1 328 0
	mov	r1, r4
	mov	r0, r5
	bl	_FAT_fat_nextCluster
	mov	r4, r0
.LVL19:
.L24:
	.loc 1 327 0
	mov	r0, r5
	mov	r1, r4
	bl	_FAT_fat_nextCluster
	cmp	r0, #0
	beq	.L26
	mov	r0, r5
	mov	r1, r4
	bl	_FAT_fat_nextCluster
	ldr	r3, .L29
	cmp	r0, r3
	bne	.L25
.L26:
	.loc 1 331 0
	mov	r0, r4
	add	sp, sp, #4
	@ sp needed for prologue
.LVL20:
.LVL21:
	pop	{r4, r5, pc}
.L30:
	.align	2
.L29:
	.word	268435455
.LFE18:
	.size	_FAT_fat_lastCluster, .-_FAT_fat_lastCluster
	.align	2
	.code 16
	.thumb_func
	.type	_FAT_fat_writeFatEntry, %function
_FAT_fat_writeFatEntry:
.LFB14:
	.loc 1 124 0
	push	{r4, r5, r6, r7, lr}
.LCFI4:
.LVL22:
	sub	sp, sp, #36
.LCFI5:
	.loc 1 124 0
	mov	r5, r0
	mov	r4, r1
	str	r2, [sp, #20]
	.loc 1 129 0
	cmp	r1, #1
	bls	.L32
.LVL23:
	ldr	r3, [r0, #52]
	cmp	r1, r3
	bhi	.L32
.LVL24:
	.loc 1 134 0
	ldrb	r7, [r0, #9]
	cmp	r7, #2
	beq	.L36
	cmp	r7, #3
	beq	.L37
	cmp	r7, #1
	bne	.L32
	.loc 1 141 0
	lsl	r3, r1, #1
	add	r3, r3, r1
	ldr	r2, [r0, #44]
	lsr	r1, r3, #10
.LVL25:
	add	r6, r1, r2
.LVL26:
	.loc 1 142 0
	ldr	r1, .L48
	lsr	r3, r3, #1
	and	r1, r1, r3
	str	r1, [sp, #16]
.LVL27:
	add	r1, r1, #1
	ldr	r0, [r0, #4]
.LVL28:
	str	r1, [sp, #8]
	.loc 1 144 0
	tst	r4, r7
	beq	.L38
	.loc 1 146 0
	mov	r4, sp
.LVL29:
	add	r4, r4, #31
	mov	r1, r4
	mov	r2, r6
	ldr	r3, [sp, #16]
	str	r7, [sp]
	bl	_FAT_cache_readPartialSector
	.loc 1 148 0
	ldr	r2, [sp, #20]
.LVL30:
	ldrb	r3, [r4]
	mov	r1, #15
	and	r3, r3, r1
	lsl	r2, r2, #4
	orr	r2, r2, r3
	str	r2, [sp, #20]
	.loc 1 150 0
	ldr	r3, [sp, #16]
	mov	r2, r6
	ldr	r0, [r5, #4]
	add	r1, sp, #20
	str	r7, [sp]
	bl	_FAT_cache_writePartialSector
	.loc 1 152 0
	ldr	r3, [sp, #8]
.LVL31:
	.loc 1 153 0
	ldr	r2, .L48
	cmp	r3, r2
	ble	.L40
	.loc 1 155 0
	add	r6, r6, #1
	mov	r3, #0
.L40:
	.loc 1 158 0
	mov	r1, sp
	ldr	r0, [r5, #4]
	add	r1, r1, #21
	mov	r2, r6
	str	r7, [sp]
	b	.L46
.LVL32:
.L38:
	.loc 1 162 0
	add	r1, sp, #20
	ldr	r3, [sp, #16]
	mov	r2, r6
	str	r7, [sp]
	bl	_FAT_cache_writePartialSector
	.loc 1 164 0
	ldr	r3, [sp, #8]
	.loc 1 165 0
	ldr	r1, .L48
	.loc 1 164 0
	str	r3, [sp, #12]
.LVL33:
	.loc 1 165 0
	cmp	r3, r1
	ble	.L43
	.loc 1 167 0
	mov	r2, #0
	add	r6, r6, #1
	str	r2, [sp, #12]
.L43:
	.loc 1 170 0
	mov	r4, sp
.LVL34:
	add	r4, r4, #31
	mov	r1, r4
	mov	r2, r6
	ldr	r3, [sp, #12]
	ldr	r0, [r5, #4]
	str	r7, [sp]
	bl	_FAT_cache_readPartialSector
	.loc 1 172 0
	ldr	r3, [sp, #20]
.LVL35:
	ldrb	r2, [r4]
	mov	r1, #240
	lsl	r3, r3, #20
	and	r2, r2, r1
	lsr	r3, r3, #28
	orr	r3, r3, r2
	str	r3, [sp, #20]
	.loc 1 174 0
	ldr	r0, [r5, #4]
	ldr	r3, [sp, #12]
	str	r7, [sp]
	add	r1, sp, #20
	mov	r2, r6
.LVL36:
.L46:
	bl	_FAT_cache_writePartialSector
.LVL37:
	mov	r0, #1
	b	.L42
.LVL38:
.L36:
	.loc 1 183 0
	ldr	r3, [r5, #44]
	lsl	r2, r1, #1
	lsr	r2, r2, #9
	add	r2, r2, r3
	mov	r3, #255
	ldr	r0, [r0, #4]
.LVL39:
	and	r3, r3, r1
	lsl	r3, r3, #1
	str	r7, [sp]
	b	.L47
.LVL40:
.L37:
	.loc 1 191 0
	lsl	r2, r1, #2
	ldr	r3, [r5, #44]
	lsr	r2, r2, #9
	add	r2, r2, r3
	mov	r3, #127
	and	r3, r3, r1
	mov	r1, #4
.LVL41:
	ldr	r0, [r0, #4]
.LVL42:
	lsl	r3, r3, #2
	str	r1, [sp]
.LVL43:
.L47:
	add	r1, sp, #20
	b	.L46
.LVL44:
.L32:
	.loc 1 193 0
	mov	r0, #0
.LVL45:
.L42:
	.loc 1 201 0
	add	sp, sp, #36
	@ sp needed for prologue
.LVL46:
.LVL47:
.LVL48:
	pop	{r4, r5, r6, r7, pc}
.L49:
	.align	2
.L48:
	.word	511
.LFE14:
	.size	_FAT_fat_writeFatEntry, .-_FAT_fat_writeFatEntry
	.align	2
	.global	_FAT_fat_clearLinks
	.code 16
	.thumb_func
	.type	_FAT_fat_clearLinks, %function
_FAT_fat_clearLinks:
.LFB17:
	.loc 1 297 0
	push	{r4, r5, r6, lr}
.LCFI6:
.LVL49:
	.loc 1 297 0
	mov	r6, r0
	mov	r5, r1
	.loc 1 300 0
	cmp	r1, #1
	bls	.L51
.LVL50:
	ldr	r3, [r0, #52]
	cmp	r1, r3
	bhi	.L51
.LVL51:
	.loc 1 304 0
	ldr	r3, [r0, #56]
	cmp	r1, r3
	bcs	.L61
	.loc 1 305 0
	str	r1, [r6, #56]
	b	.L61
.LVL52:
.L56:
	.loc 1 310 0
	mov	r1, r5
	mov	r0, r6
	bl	_FAT_fat_nextCluster
	.loc 1 313 0
	mov	r1, r5
	.loc 1 310 0
	mov	r4, r0
	.loc 1 313 0
	mov	r2, #0
	mov	r0, r6
	bl	_FAT_fat_writeFatEntry
	mov	r5, r4
.LVL53:
.L61:
	.loc 1 308 0
	ldr	r3, .L62
	cmp	r5, r3
	beq	.L57
	cmp	r5, #0
	bne	.L56
	b	.L57
.LVL54:
.L51:
	mov	r0, #0
	b	.L59
.LVL55:
.L57:
	mov	r0, #1
.L59:
	.loc 1 320 0
	@ sp needed for prologue
.LVL56:
.LVL57:
.LVL58:
	pop	{r4, r5, r6, pc}
.L63:
	.align	2
.L62:
	.word	268435455
.LFE17:
	.size	_FAT_fat_clearLinks, .-_FAT_fat_clearLinks
	.align	2
	.global	_FAT_fat_linkFreeCluster
	.code 16
	.thumb_func
	.type	_FAT_fat_linkFreeCluster, %function
_FAT_fat_linkFreeCluster:
.LFB15:
	.loc 1 209 0
	push	{r4, r5, r6, r7, lr}
.LCFI7:
.LVL59:
	.loc 1 215 0
	ldr	r7, [r0, #52]
.LVL60:
	.loc 1 209 0
	sub	sp, sp, #12
.LCFI8:
	.loc 1 209 0
	mov	r5, r0
	mov	r6, r1
	.loc 1 217 0
	cmp	r1, r7
	bhi	.L88
.LVL61:
	.loc 1 222 0
	bl	_FAT_fat_nextCluster
.LVL62:
.LVL63:
	.loc 1 223 0
	cmp	r0, #1
	bls	.L68
	cmp	r0, r7
	bls	.L67
.L68:
	.loc 1 228 0
	ldr	r4, [r5, #56]
.LVL64:
	.loc 1 230 0
	cmp	r4, #1
	bhi	.L70
	mov	r4, #2
	b	.L70
.LVL65:
.L72:
	.loc 1 236 0
	add	r4, r4, #1
	.loc 1 237 0
	cmp	r4, r7
	bls	.L86
	.loc 1 238 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L75
	.loc 1 240 0
	str	r4, [r5, #56]
.LVL66:
.L88:
	mov	r0, #0
.LVL67:
	b	.L67
.LVL68:
.L70:
	.loc 1 241 0
	mov	r3, #0
	b	.L87
.LVL69:
.L75:
	mov	r4, #2
	mov	r3, #1
.LVL70:
.L87:
	str	r3, [sp, #4]
.L86:
	.loc 1 235 0
	mov	r0, r5
.LVL71:
	mov	r1, r4
	bl	_FAT_fat_nextCluster
	cmp	r0, #0
	bne	.L72
	.loc 1 250 0
	str	r4, [r5, #56]
	.loc 1 252 0
	cmp	r6, #1
	bls	.L78
	cmp	r6, r7
	bcs	.L78
	.loc 1 255 0
	mov	r0, r5
	mov	r1, r6
	mov	r2, r4
.LVL72:
	bl	_FAT_fat_writeFatEntry
.LVL73:
.L78:
	.loc 1 258 0
	mov	r0, r5
	mov	r1, r4
.LVL74:
	ldr	r2, .L89
	bl	_FAT_fat_writeFatEntry
.LVL75:
	mov	r0, r4
.LVL76:
.L67:
	.loc 1 261 0
	add	sp, sp, #12
.LVL77:
	@ sp needed for prologue
.LVL78:
.LVL79:
.LVL80:
.LVL81:
	pop	{r4, r5, r6, r7, pc}
.L90:
	.align	2
.L89:
	.word	268435455
.LFE15:
	.size	_FAT_fat_linkFreeCluster, .-_FAT_fat_linkFreeCluster
	.align	2
	.global	_FAT_fat_linkFreeClusterCleared
	.code 16
	.thumb_func
	.type	_FAT_fat_linkFreeClusterCleared, %function
_FAT_fat_linkFreeClusterCleared:
.LFB16:
	.loc 1 269 0
	push	{r4, r5, r6, lr}
.LCFI9:
.LVL82:
	ldr	r4, .L100
	add	sp, sp, r4
.LCFI10:
	.loc 1 269 0
	mov	r4, r0
	.loc 1 275 0
	bl	_FAT_fat_linkFreeCluster
.LVL83:
	mov	r5, r0
.LVL84:
	.loc 1 277 0
	cmp	r0, #0
	beq	.L92
.LVL85:
	.loc 1 282 0
	mov	r2, #128
	mov	r0, sp
.LVL86:
	mov	r1, #0
	lsl	r2, r2, #2
	bl	memset
	mov	r6, #0
.LVL87:
	b	.L94
.L95:
	.loc 1 284 0
	ldr	r1, [r4]
.LVL88:
.LBB6:
.LBB7:
	.file 2 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/file_allocation_table.h"
	.loc 2 61 0
	cmp	r5, #1
	bls	.L96
	sub	r3, r5, #2
	mul	r2, r3
	ldr	r3, [r4, #28]
	add	r0, r2, r3
	b	.L98
.L96:
	ldr	r0, [r4, #16]
.L98:
.LBE7:
.LBE6:
.LBB8:
	.file 3 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/disc.h"
	.loc 3 87 0
	add	r0, r0, r6
	ldr	r3, [r1, #20]
	mov	r2, sp
	mov	r1, #1
.LVL89:
	blx	r3
.LBE8:
	.loc 1 283 0
	add	r6, r6, #1
.L94:
	ldr	r2, [r4, #36]
	cmp	r6, r2
	bcc	.L95
.LVL90:
.L92:
	.loc 1 290 0
	mov	r3, #128
	lsl	r3, r3, #2
	mov	r0, r5
	add	sp, sp, r3
	@ sp needed for prologue
.LVL91:
.LVL92:
.LVL93:
	pop	{r4, r5, r6, pc}
.L101:
	.align	2
.L100:
	.word	-512
.LFE16:
	.size	_FAT_fat_linkFreeClusterCleared, .-_FAT_fat_linkFreeClusterCleared
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI0-.LFB13
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
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x30
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI2-.LFB18
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
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI4-.LFB14
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
	.uleb128 0x38
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI6-.LFB17
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
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI7-.LFB15
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
	.uleb128 0x20
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI9-.LFB16
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
	.uleb128 0x210
	.align	2
.LEFDE10:
	.file 4 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 5 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 6 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/partition.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/disc_io.h"
	.file 8 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/cache.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB18-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL46-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	.LVL45-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL45-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL57-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL80-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	.LVL69-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 528
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x707
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF84
	.byte	0x1
	.4byte	.LASF85
	.4byte	.LASF86
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x4
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x4
	.byte	0x61
	.4byte	0x53
	.uleb128 0x6
	.4byte	0xb9
	.byte	0x1
	.byte	0x4
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
	.byte	0x4
	.byte	0x81
	.4byte	0xa4
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x7
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
	.byte	0x7
	.byte	0x3e
	.4byte	0xcf
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x7
	.byte	0x41
	.4byte	0xcf
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0x42
	.4byte	0xcf
	.uleb128 0xe
	.4byte	0x1d8
	.4byte	.LASF87
	.byte	0x20
	.byte	0x7
	.byte	0x44
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x7
	.byte	0x45
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x7
	.byte	0x46
	.4byte	0x5e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x7
	.byte	0x47
	.4byte	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x7
	.byte	0x48
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x7
	.byte	0x49
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x7
	.byte	0x4a
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x7
	.byte	0x4b
	.4byte	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x7
	.byte	0x4c
	.4byte	0x150
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x7
	.byte	0x4f
	.4byte	0x15b
	.uleb128 0x10
	.4byte	0x216
	.byte	0xc
	.byte	0x8
	.byte	0x2f
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x8
	.byte	0x30
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x8
	.byte	0x31
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x8
	.byte	0x32
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x8
	.byte	0x33
	.4byte	0x1e3
	.uleb128 0x10
	.4byte	0x262
	.byte	0x10
	.byte	0x8
	.byte	0x35
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x8
	.byte	0x36
	.4byte	0x262
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x8
	.byte	0x37
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x8
	.byte	0x38
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x8
	.byte	0x39
	.4byte	0x273
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x268
	.uleb128 0x11
	.4byte	0x1d8
	.uleb128 0x8
	.byte	0x4
	.4byte	0x216
	.uleb128 0x8
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x8
	.byte	0x3a
	.4byte	0x221
	.uleb128 0x6
	.4byte	0x2a5
	.byte	0x1
	.byte	0x6
	.byte	0x2d
	.uleb128 0x7
	.4byte	.LASF40
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF41
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF42
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF43
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x6
	.byte	0x2d
	.4byte	0x284
	.uleb128 0x10
	.4byte	0x2f1
	.byte	0x10
	.byte	0x6
	.byte	0x35
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x6
	.byte	0x36
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x6
	.byte	0x37
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x6
	.byte	0x38
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x6
	.byte	0x39
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x5
	.ascii	"FAT\000"
	.byte	0x6
	.byte	0x3a
	.4byte	0x2b0
	.uleb128 0x10
	.4byte	0x3d7
	.byte	0x44
	.byte	0x6
	.byte	0x3c
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3d
	.4byte	0x262
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x6
	.byte	0x3e
	.4byte	0x3d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x6
	.byte	0x40
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x6
	.byte	0x41
	.4byte	0x2a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x6
	.byte	0x42
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x6
	.byte	0x43
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x6
	.byte	0x44
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x6
	.byte	0x45
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x6
	.byte	0x46
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x6
	.byte	0x47
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x6
	.byte	0x48
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x6
	.byte	0x49
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.ascii	"fat\000"
	.byte	0x6
	.byte	0x4a
	.4byte	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x6
	.byte	0x4c
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x6
	.byte	0x4d
	.4byte	0x99
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x279
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x6
	.byte	0x4e
	.4byte	0x2fc
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF63
	.byte	0x1
	.byte	0x8
	.uleb128 0x13
	.4byte	0x45f
	.byte	0x1
	.4byte	.LASF68
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.4byte	0x99
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.byte	0x2f
	.4byte	0x45f
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x1
	.byte	0x2f
	.4byte	0x99
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x1
	.byte	0x31
	.4byte	0x99
	.4byte	.LLST3
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.byte	0x32
	.4byte	0x99
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x1
	.byte	0x33
	.4byte	0x73
	.4byte	.LLST5
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3dd
	.uleb128 0x16
	.4byte	0x4a4
	.byte	0x1
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x146
	.byte	0x1
	.4byte	0x99
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST6
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x146
	.4byte	0x45f
	.4byte	.LLST7
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x146
	.4byte	0x99
	.4byte	.LLST8
	.byte	0x0
	.uleb128 0x18
	.4byte	0x51b
	.4byte	.LASF76
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.4byte	0xb9
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST9
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.byte	0x7c
	.4byte	0x45f
	.4byte	.LLST10
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x1
	.byte	0x7c
	.4byte	0x99
	.4byte	.LLST11
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x1
	.byte	0x7c
	.4byte	0x99
	.4byte	.LLST12
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.byte	0x7d
	.4byte	0x99
	.4byte	.LLST13
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x1
	.byte	0x7e
	.4byte	0x73
	.4byte	.LLST14
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x1
	.byte	0x7f
	.4byte	0x8f
	.4byte	.LLST15
	.byte	0x0
	.uleb128 0x16
	.4byte	0x56a
	.byte	0x1
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x129
	.byte	0x1
	.4byte	0xb9
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST16
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x129
	.4byte	0x45f
	.4byte	.LLST17
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x129
	.4byte	0x99
	.4byte	.LLST18
	.uleb128 0x19
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x12a
	.4byte	0x99
	.4byte	.LLST19
	.byte	0x0
	.uleb128 0x13
	.4byte	0x5e2
	.byte	0x1
	.4byte	.LASF73
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.4byte	0x99
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST20
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.byte	0xd1
	.4byte	0x45f
	.4byte	.LLST21
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x1
	.byte	0xd1
	.4byte	0x99
	.4byte	.LLST22
	.uleb128 0x15
	.4byte	.LASF48
	.byte	0x1
	.byte	0xd2
	.4byte	0x99
	.4byte	.LLST23
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x1
	.byte	0xd3
	.4byte	0x99
	.4byte	.LLST24
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.byte	0xd4
	.4byte	0x99
	.4byte	.LLST25
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x1
	.byte	0xd5
	.4byte	0xb9
	.4byte	.LLST26
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x60a
	.4byte	.LASF77
	.byte	0x2
	.byte	0x3c
	.byte	0x1
	.4byte	0x99
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF64
	.byte	0x2
	.byte	0x3c
	.4byte	0x45f
	.uleb128 0x1b
	.4byte	.LASF65
	.byte	0x2
	.byte	0x3c
	.4byte	0x99
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x648
	.4byte	.LASF78
	.byte	0x3
	.byte	0x56
	.byte	0x1
	.4byte	0xb9
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF35
	.byte	0x3
	.byte	0x56
	.4byte	0x262
	.uleb128 0x1b
	.4byte	.LASF31
	.byte	0x3
	.byte	0x56
	.4byte	0x99
	.uleb128 0x1b
	.4byte	.LASF79
	.byte	0x3
	.byte	0x56
	.4byte	0x99
	.uleb128 0x1b
	.4byte	.LASF80
	.byte	0x3
	.byte	0x56
	.4byte	0x13e
	.byte	0x0
	.uleb128 0x16
	.4byte	0x6fd
	.byte	0x1
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x10d
	.byte	0x1
	.4byte	0x99
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST27
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x10d
	.4byte	0x45f
	.4byte	.LLST28
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x10d
	.4byte	0x99
	.4byte	.LLST29
	.uleb128 0x19
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x10e
	.4byte	0x99
	.4byte	.LLST30
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x73
	.4byte	.LLST31
	.uleb128 0x1d
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x110
	.4byte	0x6fd
	.byte	0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x1e
	.4byte	0x6d3
	.4byte	0x5e2
	.4byte	.LBB6
	.4byte	.LBE6
	.byte	0x1
	.2byte	0x11c
	.uleb128 0x1f
	.4byte	0x5fe
	.uleb128 0x1f
	.4byte	0x5f3
	.byte	0x0
	.uleb128 0x20
	.4byte	0x60a
	.4byte	.LBB8
	.4byte	.LBE8
	.byte	0x1
	.2byte	0x11c
	.uleb128 0x1f
	.4byte	0x63c
	.uleb128 0x1f
	.4byte	0x631
	.uleb128 0x1f
	.4byte	0x626
	.uleb128 0x21
	.4byte	0x61b
	.4byte	.LLST32
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.4byte	0x8f
	.uleb128 0x23
	.4byte	0x3e8
	.2byte	0x1ff
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
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x99
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x70b
	.4byte	0x3f6
	.ascii	"_FAT_fat_nextCluster\000"
	.4byte	0x465
	.ascii	"_FAT_fat_lastCluster\000"
	.4byte	0x51b
	.ascii	"_FAT_fat_clearLinks\000"
	.4byte	0x56a
	.ascii	"_FAT_fat_linkFreeCluster\000"
	.4byte	0x648
	.ascii	"_FAT_fat_linkFreeClusterCleared\000"
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
.LASF32:
	.ascii	"count\000"
.LASF15:
	.ascii	"bool\000"
.LASF87:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF44:
	.ascii	"FS_TYPE\000"
.LASF48:
	.ascii	"firstFree\000"
.LASF68:
	.ascii	"_FAT_fat_nextCluster\000"
.LASF64:
	.ascii	"partition\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF40:
	.ascii	"FS_UNKNOWN\000"
.LASF8:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF60:
	.ascii	"cwdCluster\000"
.LASF26:
	.ascii	"fn_readSectors\000"
.LASF51:
	.ascii	"filesysType\000"
.LASF29:
	.ascii	"fn_shutdown\000"
.LASF4:
	.ascii	"long int\000"
.LASF56:
	.ascii	"dataStart\000"
.LASF50:
	.ascii	"readOnly\000"
.LASF27:
	.ascii	"fn_writeSectors\000"
.LASF20:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF53:
	.ascii	"rootDirStart\000"
.LASF75:
	.ascii	"loopedAroundFAT\000"
.LASF62:
	.ascii	"PARTITION\000"
.LASF28:
	.ascii	"fn_clearStatus\000"
.LASF74:
	.ascii	"curLink\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF31:
	.ascii	"sector\000"
.LASF43:
	.ascii	"FS_FAT32\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF41:
	.ascii	"FS_FAT12\000"
.LASF42:
	.ascii	"FS_FAT16\000"
.LASF81:
	.ascii	"_FAT_fat_linkFreeClusterCleared\000"
.LASF66:
	.ascii	"nextCluster\000"
.LASF71:
	.ascii	"oldValue\000"
.LASF22:
	.ascii	"ioType\000"
.LASF25:
	.ascii	"fn_isInserted\000"
.LASF47:
	.ascii	"lastCluster\000"
.LASF23:
	.ascii	"features\000"
.LASF77:
	.ascii	"_FAT_fat_clusterToSector\000"
.LASF38:
	.ascii	"pages\000"
.LASF82:
	.ascii	"newCluster\000"
.LASF84:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF18:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF11:
	.ascii	"float\000"
.LASF52:
	.ascii	"totalSize\000"
.LASF79:
	.ascii	"numSectors\000"
.LASF86:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF21:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF76:
	.ascii	"_FAT_fat_writeFatEntry\000"
.LASF33:
	.ascii	"dirty\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF46:
	.ascii	"sectorsPerFat\000"
.LASF2:
	.ascii	"short int\000"
.LASF19:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF72:
	.ascii	"_FAT_fat_clearLinks\000"
.LASF45:
	.ascii	"fatStart\000"
.LASF80:
	.ascii	"buffer\000"
.LASF83:
	.ascii	"emptySector\000"
.LASF16:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF70:
	.ascii	"value\000"
.LASF13:
	.ascii	"false\000"
.LASF57:
	.ascii	"bytesPerSector\000"
.LASF55:
	.ascii	"numberOfSectors\000"
.LASF58:
	.ascii	"sectorsPerCluster\000"
.LASF36:
	.ascii	"numberOfPages\000"
.LASF63:
	.ascii	"char\000"
.LASF69:
	.ascii	"_FAT_fat_lastCluster\000"
.LASF37:
	.ascii	"cacheEntries\000"
.LASF65:
	.ascii	"cluster\000"
.LASF35:
	.ascii	"disc\000"
.LASF67:
	.ascii	"offset\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF30:
	.ascii	"IO_INTERFACE\000"
.LASF17:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF24:
	.ascii	"fn_startup\000"
.LASF54:
	.ascii	"rootDirCluster\000"
.LASF61:
	.ascii	"openFileCount\000"
.LASF39:
	.ascii	"CACHE\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF59:
	.ascii	"bytesPerCluster\000"
.LASF78:
	.ascii	"_FAT_disc_writeSectors\000"
.LASF34:
	.ascii	"CACHE_ENTRY\000"
.LASF49:
	.ascii	"cache\000"
.LASF85:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/file_"
	.ascii	"allocation_table.c\000"
.LASF12:
	.ascii	"double\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF73:
	.ascii	"_FAT_fat_linkFreeCluster\000"
.LASF14:
	.ascii	"true\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
