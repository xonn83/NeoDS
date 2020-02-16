	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
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
	.code	16
	.thumb_func
	.type	_FAT_fat_nextCluster, %function
_FAT_fat_nextCluster:
.LFB11:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/file_allocation_table.c"
	.loc 1 48 0
	push	{r4, r5, r6, r7, lr}
.LCFI0:
.LVL0:
	sub	sp, sp, #20
.LCFI1:
	.loc 1 49 0
	mov	r3, #0
	str	r3, [sp, #12]
.LVL1:
	.loc 1 48 0
	mov	r5, r1
	.loc 1 53 0
	ldrb	r1, [r0, #9]
.LVL2:
	.loc 1 48 0
	mov	r4, r0
	.loc 1 53 0
	cmp	r1, #1
	beq	.L4
.LVL3:
	cmp	r1, #0
	beq	.L3
	cmp	r1, #2
	beq	.L5
	cmp	r1, #3
	bne	.L12
	b	.L19
.L3:
	.loc 1 56 0
	str	r1, [sp, #12]
.LVL4:
	.loc 1 57 0
	b	.L7
.L4:
	.loc 1 60 0
	lsl	r7, r5, #1
	ldr	r3, [r0, #44]
	add	r7, r7, r5
	lsr	r6, r7, #10
	.loc 1 61 0
	lsl	r7, r7, #22
	.loc 1 60 0
	add	r6, r6, r3
.LVL5:
	.loc 1 61 0
	lsr	r7, r7, #23
.LVL6:
	.loc 1 64 0
	ldr	r0, [r0, #4]
	mov	r2, r6
	str	r1, [sp]
	mov	r3, r7
	add	r1, sp, #12
	bl	_FAT_cache_readPartialSector
	.loc 1 68 0
	mov	r2, #128
	.loc 1 66 0
	add	r3, r7, #1
.LVL7:
	.loc 1 68 0
	lsl	r2, r2, #2
	cmp	r3, r2
	bne	.L8
	.loc 1 70 0
	add	r6, r6, #1
	mov	r3, #0
.L8:
	.loc 1 73 0
	mov	r1, sp
	ldr	r0, [r4, #4]
	add	r1, r1, #13
	mov	r4, #1
.LVL8:
	mov	r2, r6
	str	r4, [sp]
	bl	_FAT_cache_readPartialSector
.LVL9:
	ldr	r3, [sp, #12]
	.loc 1 75 0
	tst	r5, r4
	beq	.L9
.LVL10:
	.loc 1 76 0
	lsr	r3, r3, #4
.LVL11:
	b	.L13
.LVL12:
.L9:
	.loc 1 78 0
	ldr	r2, .L20
	and	r3, r3, r2
.LVL13:
.L13:
	str	r3, [sp, #12]
.LVL14:
	.loc 1 81 0
	ldr	r2, [sp, #12]
	ldr	r3, .L20+4
	b	.L16
.LVL15:
.L5:
	.loc 1 92 0
	ldr	r3, [r4, #44]
	lsl	r2, r5, #1
	lsr	r2, r2, #9
	add	r2, r2, r3
	mov	r3, #255
	and	r5, r5, r3
.LVL16:
	ldr	r0, [r0, #4]
	lsl	r3, r5, #1
	str	r1, [sp]
	add	r1, sp, #12
	bl	_FAT_cache_readPartialSector
	.loc 1 94 0
	ldr	r2, [sp, #12]
	ldr	r3, .L20+8
.LVL17:
.L16:
	cmp	r2, r3
	bls	.L7
	.loc 1 96 0
	ldr	r3, .L20+12
	b	.L12
.LVL18:
.L19:
	.loc 1 104 0
	ldr	r3, [r4, #44]
	lsl	r2, r5, #2
	lsr	r2, r2, #9
	add	r2, r2, r3
	mov	r3, #127
	mov	r1, #4
	and	r5, r5, r3
.LVL19:
	ldr	r0, [r0, #4]
	lsl	r3, r5, #2
	str	r1, [sp]
	add	r1, sp, #12
	bl	_FAT_cache_readPartialSector
	.loc 1 106 0
	ldr	r2, [sp, #12]
	ldr	r3, .L20+16
	cmp	r2, r3
	bls	.L7
.LVL20:
	.loc 1 108 0
	add	r3, r3, #9
.LVL21:
.L12:
	.loc 1 113 0
	str	r3, [sp, #12]
.LVL22:
.L7:
	.loc 1 118 0
	ldr	r0, [sp, #12]
	add	sp, sp, #20
	@ sp needed for prologue
.LVL23:
.LVL24:
.LVL25:
	pop	{r4, r5, r6, r7, pc}
.L21:
	.align	2
.L20:
	.word	4095
	.word	4086
	.word	65526
	.word	268435455
	.word	268435446
.LFE11:
	.size	_FAT_fat_nextCluster, .-_FAT_fat_nextCluster
	.align	2
	.global	_FAT_fat_lastCluster
	.code	16
	.thumb_func
	.type	_FAT_fat_lastCluster, %function
_FAT_fat_lastCluster:
.LFB16:
	.loc 1 326 0
	push	{r4, r5, r6, lr}
.LCFI2:
.LVL26:
	.loc 1 326 0
	mov	r5, r0
	mov	r4, r1
	.loc 1 327 0
	ldr	r6, .L27
	b	.L23
.LVL27:
.L25:
	.loc 1 328 0
	mov	r1, r4
	mov	r0, r5
	bl	_FAT_fat_nextCluster
	mov	r4, r0
.LVL28:
.L23:
	.loc 1 327 0
	mov	r0, r5
	mov	r1, r4
	bl	_FAT_fat_nextCluster
	cmp	r0, #0
	beq	.L24
	mov	r0, r5
	mov	r1, r4
	bl	_FAT_fat_nextCluster
	cmp	r0, r6
	bne	.L25
.L24:
	.loc 1 331 0
	mov	r0, r4
	@ sp needed for prologue
.LVL29:
.LVL30:
	pop	{r4, r5, r6, pc}
.L28:
	.align	2
.L27:
	.word	268435455
.LFE16:
	.size	_FAT_fat_lastCluster, .-_FAT_fat_lastCluster
	.align	2
	.code	16
	.thumb_func
	.type	_FAT_fat_writeFatEntry, %function
_FAT_fat_writeFatEntry:
.LFB12:
	.loc 1 124 0
	push	{r4, r5, r6, r7, lr}
.LCFI3:
.LVL31:
	sub	sp, sp, #36
.LCFI4:
	.loc 1 124 0
	mov	r5, r0
	str	r2, [sp, #20]
	.loc 1 129 0
	cmp	r1, #1
	bls	.L30
.LVL32:
	ldr	r3, [r0, #52]
	cmp	r1, r3
	bhi	.L30
.LVL33:
	.loc 1 134 0
	ldrb	r7, [r0, #9]
	cmp	r7, #2
	beq	.L32
	cmp	r7, #3
	beq	.L33
	cmp	r7, #1
	bne	.L30
	.loc 1 141 0
	lsl	r3, r1, #1
	add	r3, r3, r1
	lsr	r6, r3, #10
	.loc 1 142 0
	lsl	r3, r3, #22
	.loc 1 141 0
	ldr	r2, [r0, #44]
	.loc 1 142 0
	lsr	r3, r3, #23
	str	r3, [sp, #12]
	add	r3, r3, #1
	.loc 1 141 0
	add	r6, r6, r2
.LVL34:
	ldr	r0, [r0, #4]
.LVL35:
	str	r3, [sp, #16]
	.loc 1 144 0
	tst	r1, r7
	beq	.L34
	.loc 1 146 0
	mov	r4, sp
	add	r4, r4, #31
	mov	r1, r4
.LVL36:
	mov	r2, r6
	ldr	r3, [sp, #12]
	str	r7, [sp]
	bl	_FAT_cache_readPartialSector
	.loc 1 148 0
	ldrb	r2, [r4]
.LVL37:
	mov	r3, #15
	and	r3, r3, r2
	ldr	r2, [sp, #20]
.LVL38:
	.loc 1 150 0
	ldr	r0, [r5, #4]
	.loc 1 148 0
	lsl	r2, r2, #4
	orr	r3, r3, r2
	str	r3, [sp, #20]
.LVL39:
	.loc 1 150 0
	mov	r2, r6
	ldr	r3, [sp, #12]
	add	r1, sp, #20
	str	r7, [sp]
	bl	_FAT_cache_writePartialSector
	.loc 1 153 0
	mov	r2, #128
	.loc 1 152 0
	ldr	r3, [sp, #16]
.LVL40:
	.loc 1 153 0
	lsl	r2, r2, #2
	cmp	r3, r2
	bne	.L35
	.loc 1 155 0
	add	r6, r6, #1
	mov	r3, #0
.L35:
	.loc 1 158 0
	mov	r2, #1
	mov	r1, sp
	str	r2, [sp]
	ldr	r0, [r5, #4]
	add	r1, r1, #21
	mov	r2, r6
	b	.L39
.LVL41:
.L34:
	.loc 1 162 0
	ldr	r3, [sp, #12]
	add	r1, sp, #20
.LVL42:
	mov	r2, r6
	str	r7, [sp]
	bl	_FAT_cache_writePartialSector
	.loc 1 165 0
	mov	r3, #128
	.loc 1 164 0
	ldr	r4, [sp, #16]
.LVL43:
	.loc 1 165 0
	lsl	r3, r3, #2
	cmp	r4, r3
	bne	.L37
	.loc 1 167 0
	add	r6, r6, #1
	mov	r4, #0
.L37:
	.loc 1 170 0
	mov	r7, sp
	add	r7, r7, #31
	mov	r3, #1
	str	r3, [sp]
	mov	r1, r7
	mov	r2, r6
	mov	r3, r4
	ldr	r0, [r5, #4]
	bl	_FAT_cache_readPartialSector
	.loc 1 172 0
	ldrb	r2, [r7]
.LVL44:
	mov	r3, #240
	and	r3, r3, r2
	ldr	r2, [sp, #20]
.LVL45:
	.loc 1 174 0
	ldr	r0, [r5, #4]
	.loc 1 172 0
	lsl	r2, r2, #20
	lsr	r2, r2, #28
	orr	r3, r3, r2
	str	r3, [sp, #20]
.LVL46:
	.loc 1 174 0
	mov	r3, #1
	str	r3, [sp]
	add	r1, sp, #20
	mov	r2, r6
	mov	r3, r4
	b	.L39
.LVL47:
.L32:
	.loc 1 183 0
	lsl	r2, r1, #1
	ldr	r3, [r5, #44]
	lsr	r2, r2, #9
	add	r2, r2, r3
	mov	r3, #255
	and	r1, r1, r3
.LVL48:
	ldr	r0, [r0, #4]
.LVL49:
	lsl	r3, r1, #1
	str	r7, [sp]
.L40:
	add	r1, sp, #20
.LVL50:
.L39:
	bl	_FAT_cache_writePartialSector
.LVL51:
	mov	r0, #1
	.loc 1 185 0
	b	.L36
.LVL52:
.L33:
	.loc 1 191 0
	lsl	r2, r1, #2
	ldr	r3, [r5, #44]
	lsr	r2, r2, #9
	add	r2, r2, r3
	mov	r3, #127
	and	r1, r1, r3
.LVL53:
	lsl	r3, r1, #2
	mov	r1, #4
	ldr	r0, [r0, #4]
.LVL54:
	str	r1, [sp]
	b	.L40
.LVL55:
.L30:
	.loc 1 193 0
	mov	r0, #0
.LVL56:
.L36:
	.loc 1 201 0
	add	sp, sp, #36
	@ sp needed for prologue
.LVL57:
.LVL58:
.LVL59:
	pop	{r4, r5, r6, r7, pc}
.LFE12:
	.size	_FAT_fat_writeFatEntry, .-_FAT_fat_writeFatEntry
	.align	2
	.global	_FAT_fat_clearLinks
	.code	16
	.thumb_func
	.type	_FAT_fat_clearLinks, %function
_FAT_fat_clearLinks:
.LFB15:
	.loc 1 297 0
	push	{r3, r4, r5, r6, r7, lr}
.LCFI5:
.LVL60:
	.loc 1 297 0
	mov	r4, r0
	mov	r5, r1
	.loc 1 300 0
	cmp	r1, #1
	bls	.L42
.LVL61:
	ldr	r3, [r0, #52]
	cmp	r1, r3
	bhi	.L42
.LVL62:
	.loc 1 304 0
	ldr	r3, [r0, #56]
	cmp	r1, r3
	bcs	.L43
	.loc 1 305 0
	str	r1, [r4, #56]
	b	.L43
.LVL63:
.L44:
	.loc 1 310 0
	mov	r1, r5
	mov	r0, r4
	bl	_FAT_fat_nextCluster
	.loc 1 313 0
	mov	r1, r5
	.loc 1 310 0
	mov	r6, r0
	.loc 1 313 0
	mov	r2, #0
	mov	r0, r4
	bl	_FAT_fat_writeFatEntry
	mov	r5, r6
	b	.L49
.LVL64:
.L43:
	.loc 1 308 0
	ldr	r7, .L50
.LVL65:
.L49:
	cmp	r5, #0
	beq	.L48
	cmp	r5, r7
	bne	.L44
.L48:
	mov	r0, #1
	b	.L46
.LVL66:
.L42:
	mov	r0, #0
.LVL67:
.L46:
	.loc 1 320 0
	@ sp needed for prologue
.LVL68:
.LVL69:
	pop	{r3, r4, r5, r6, r7, pc}
.L51:
	.align	2
.L50:
	.word	268435455
.LFE15:
	.size	_FAT_fat_clearLinks, .-_FAT_fat_clearLinks
	.align	2
	.global	_FAT_fat_linkFreeCluster
	.code	16
	.thumb_func
	.type	_FAT_fat_linkFreeCluster, %function
_FAT_fat_linkFreeCluster:
.LFB13:
	.loc 1 209 0
	push	{r4, r5, r6, r7, lr}
.LCFI6:
.LVL70:
	sub	sp, sp, #12
.LCFI7:
	.loc 1 215 0
	ldr	r7, [r0, #52]
.LVL71:
	.loc 1 209 0
	mov	r4, r0
	mov	r6, r1
	.loc 1 217 0
	cmp	r1, r7
	bhi	.L66
.LVL72:
	.loc 1 222 0
	bl	_FAT_fat_nextCluster
.LVL73:
	.loc 1 223 0
	cmp	r0, r7
	bhi	.L63
.LVL74:
	cmp	r0, #1
	bhi	.L54
.L63:
	.loc 1 228 0
	ldr	r3, [r4, #56]
.LVL75:
	.loc 1 230 0
	cmp	r3, #1
	bhi	.L56
	mov	r3, #2
	b	.L56
.LVL76:
.L60:
	.loc 1 236 0
	add	r5, r5, #1
	.loc 1 237 0
	cmp	r5, r7
	bls	.L57
	.loc 1 238 0
	ldr	r2, [sp, #4]
	.loc 1 237 0
	mov	r3, #2
.LVL77:
	.loc 1 238 0
	cmp	r2, #0
	bne	.L58
	mov	r2, #1
	b	.L65
.L58:
	.loc 1 240 0
	str	r5, [r4, #56]
.LVL78:
.L66:
	mov	r0, #0
.LVL79:
	.loc 1 241 0
	b	.L54
.LVL80:
.L56:
	mov	r2, #0
.L65:
	str	r2, [sp, #4]
	mov	r5, r3
.LVL81:
.L57:
	.loc 1 235 0
	mov	r0, r4
.LVL82:
	mov	r1, r5
	bl	_FAT_fat_nextCluster
	cmp	r0, #0
	bne	.L60
	.loc 1 250 0
	str	r5, [r4, #56]
	.loc 1 252 0
	cmp	r6, r7
	bcs	.L61
	cmp	r6, #1
	bls	.L61
	.loc 1 255 0
	mov	r0, r4
	mov	r1, r6
	mov	r2, r5
	bl	_FAT_fat_writeFatEntry
.L61:
	.loc 1 258 0
	mov	r0, r4
	mov	r1, r5
	ldr	r2, .L67
	bl	_FAT_fat_writeFatEntry
	mov	r0, r5
.LVL83:
.L54:
	.loc 1 261 0
	add	sp, sp, #12
.LVL84:
	@ sp needed for prologue
.LVL85:
.LVL86:
.LVL87:
.LVL88:
	pop	{r4, r5, r6, r7, pc}
.L68:
	.align	2
.L67:
	.word	268435455
.LFE13:
	.size	_FAT_fat_linkFreeCluster, .-_FAT_fat_linkFreeCluster
	.align	2
	.global	_FAT_fat_linkFreeClusterCleared
	.code	16
	.thumb_func
	.type	_FAT_fat_linkFreeClusterCleared, %function
_FAT_fat_linkFreeClusterCleared:
.LFB14:
	.loc 1 269 0
	push	{r4, r5, r6, r7, lr}
.LCFI8:
.LVL89:
	ldr	r4, .L76
	add	sp, sp, r4
.LCFI9:
	.loc 1 269 0
	mov	r4, r0
	.loc 1 275 0
	bl	_FAT_fat_linkFreeCluster
.LVL90:
	mov	r6, r0
.LVL91:
	.loc 1 277 0
	cmp	r0, #0
	beq	.L70
.LVL92:
	.loc 1 282 0
	add	r7, sp, #8
	mov	r2, #128
	mov	r1, #0
	mov	r0, r7
.LVL93:
	lsl	r2, r2, #2
	bl	memset
.LBB6:
.LBB8:
	.file 2 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/file_allocation_table.h"
	.loc 2 61 0
	sub	r1, r6, #2
.LBE8:
.LBE6:
	.loc 1 282 0
	mov	r5, #0
.LVL94:
.LBB10:
.LBB7:
	.loc 2 61 0
	str	r1, [sp, #4]
.LBE7:
.LBE10:
	.loc 1 283 0
	b	.L71
.L74:
	.loc 1 284 0
	ldr	r2, [r4]
.LBB11:
.LBB9:
	.loc 2 61 0
	cmp	r6, #1
	bls	.L72
	ldr	r1, [sp, #4]
	mov	r0, r3
	mul	r0, r1
	ldr	r3, [r4, #28]
	add	r0, r0, r3
	b	.L73
.L72:
	ldr	r0, [r4, #16]
.L73:
.LBE9:
.LBE11:
.LBB12:
.LBB13:
	.file 3 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc.h"
	.loc 3 87 0
	add	r0, r0, r5
	ldr	r3, [r2, #20]
	mov	r1, #1
	mov	r2, r7
	blx	r3
.LBE13:
.LBE12:
	.loc 1 283 0
	add	r5, r5, #1
.L71:
	ldr	r3, [r4, #36]
	cmp	r5, r3
	bcc	.L74
.LVL95:
.L70:
	.loc 1 290 0
	mov	r3, #131
	lsl	r3, r3, #2
	add	sp, sp, r3
	mov	r0, r6
	@ sp needed for prologue
.LVL96:
.LVL97:
.LVL98:
	pop	{r4, r5, r6, r7, pc}
.L77:
	.align	2
.L76:
	.word	-524
.LFE14:
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI0-.LFB11
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
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
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
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI3-.LFB12
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
	.uleb128 0x38
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI5-.LFB15
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
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI6-.LFB13
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
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI8-.LFB14
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
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x220
	.align	2
.LEFDE10:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST7:
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
.LLST8:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL55-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL66-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL87-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL86-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 544
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
	.file 4 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 5 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 6 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc_io.h"
	.file 7 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/cache.h"
	.file 8 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.h"
	.section	.debug_info
	.4byte	0x6fa
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x1
	.4byte	.LASF84
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x5
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x5
	.byte	0x64
	.4byte	0x4f
	.uleb128 0x6
	.byte	0x1
	.byte	0x5
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
	.byte	0x5
	.byte	0x7d
	.4byte	0x92
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x6
	.byte	0x3d
	.4byte	0xbd
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x9
	.byte	0x1
	.4byte	0xa7
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x6
	.byte	0x3e
	.4byte	0xbd
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x3f
	.4byte	0xdf
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe5
	.uleb128 0xa
	.byte	0x1
	.4byte	0xa7
	.4byte	0xff
	.uleb128 0xb
	.4byte	0x87
	.uleb128 0xb
	.4byte	0x87
	.uleb128 0xb
	.4byte	0xff
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x40
	.4byte	0x10c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x112
	.uleb128 0xa
	.byte	0x1
	.4byte	0xa7
	.4byte	0x12c
	.uleb128 0xb
	.4byte	0x87
	.uleb128 0xb
	.4byte	0x87
	.uleb128 0xb
	.4byte	0x12c
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x132
	.uleb128 0xd
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x41
	.4byte	0xbd
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x42
	.4byte	0xbd
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x20
	.byte	0x6
	.byte	0x44
	.4byte	0x1c6
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x6
	.byte	0x45
	.4byte	0x1c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x6
	.byte	0x46
	.4byte	0x1c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x6
	.byte	0x47
	.4byte	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x6
	.byte	0x48
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x6
	.byte	0x49
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x6
	.byte	0x4a
	.4byte	0x101
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x6
	.byte	0x4b
	.4byte	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x6
	.byte	0x4c
	.4byte	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF28
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0x4f
	.4byte	0x149
	.uleb128 0x10
	.byte	0xc
	.byte	0x7
	.byte	0x2f
	.4byte	0x20b
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x7
	.byte	0x30
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x7
	.byte	0x31
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x7
	.byte	0x32
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x7
	.byte	0x33
	.4byte	0x1d8
	.uleb128 0x10
	.byte	0x10
	.byte	0x7
	.byte	0x35
	.4byte	0x257
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x7
	.byte	0x36
	.4byte	0x257
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x7
	.byte	0x37
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x7
	.byte	0x38
	.4byte	0x262
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x7
	.byte	0x39
	.4byte	0x268
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25d
	.uleb128 0x11
	.4byte	0x1cd
	.uleb128 0x8
	.byte	0x4
	.4byte	0x20b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3a
	.4byte	0x216
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x2d
	.4byte	0x29a
	.uleb128 0x7
	.4byte	.LASF39
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF40
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF41
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF42
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x8
	.byte	0x2d
	.4byte	0x279
	.uleb128 0x10
	.byte	0x10
	.byte	0x8
	.byte	0x35
	.4byte	0x2e6
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x8
	.byte	0x36
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x8
	.byte	0x37
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x8
	.byte	0x38
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x8
	.byte	0x39
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x5
	.ascii	"FAT\000"
	.byte	0x8
	.byte	0x3a
	.4byte	0x2a5
	.uleb128 0x10
	.byte	0x44
	.byte	0x8
	.byte	0x3c
	.4byte	0x3cc
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x8
	.byte	0x3d
	.4byte	0x257
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x8
	.byte	0x3e
	.4byte	0x3cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x8
	.byte	0x40
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x8
	.byte	0x41
	.4byte	0x29a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x8
	.byte	0x42
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x8
	.byte	0x43
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x8
	.byte	0x44
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x8
	.byte	0x45
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x8
	.byte	0x46
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x8
	.byte	0x47
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x8
	.byte	0x48
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x8
	.byte	0x49
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.ascii	"fat\000"
	.byte	0x8
	.byte	0x4a
	.4byte	0x2e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x8
	.byte	0x4c
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x8
	.byte	0x4d
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x26e
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x8
	.byte	0x4e
	.4byte	0x2f1
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF62
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF63
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x2
	.byte	0x3c
	.byte	0x1
	.4byte	0x87
	.byte	0x3
	.4byte	0x416
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x2
	.byte	0x3c
	.4byte	0x416
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x2
	.byte	0x3c
	.4byte	0x87
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3d2
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x3
	.byte	0x56
	.byte	0x1
	.4byte	0xa7
	.byte	0x3
	.4byte	0x45a
	.uleb128 0x15
	.4byte	.LASF34
	.byte	0x3
	.byte	0x56
	.4byte	0x257
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x3
	.byte	0x56
	.4byte	0x87
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x3
	.byte	0x56
	.4byte	0x87
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x3
	.byte	0x56
	.4byte	0x12c
	.byte	0x0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF72
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	0x87
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST0
	.4byte	0x4c3
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.byte	0x2f
	.4byte	0x416
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x1
	.byte	0x2f
	.4byte	0x87
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0x1
	.byte	0x31
	.4byte	0x87
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF30
	.byte	0x1
	.byte	0x32
	.4byte	0x87
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x1
	.byte	0x33
	.4byte	0x48
	.4byte	.LLST5
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x146
	.byte	0x1
	.4byte	0x87
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST6
	.4byte	0x502
	.uleb128 0x1a
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x146
	.4byte	0x416
	.4byte	.LLST7
	.uleb128 0x1a
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x146
	.4byte	0x87
	.4byte	.LLST8
	.byte	0x0
	.uleb128 0x1b
	.4byte	.LASF86
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST9
	.4byte	0x579
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.byte	0x7c
	.4byte	0x416
	.4byte	.LLST10
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x1
	.byte	0x7c
	.4byte	0x87
	.4byte	.LLST11
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x1
	.byte	0x7c
	.4byte	0x87
	.4byte	.LLST12
	.uleb128 0x18
	.4byte	.LASF30
	.byte	0x1
	.byte	0x7d
	.4byte	0x87
	.4byte	.LLST13
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x1
	.byte	0x7e
	.4byte	0x48
	.4byte	.LLST14
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x1
	.byte	0x7f
	.4byte	0x7d
	.4byte	.LLST15
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x129
	.byte	0x1
	.4byte	0xa7
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST16
	.4byte	0x5c8
	.uleb128 0x1a
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x129
	.4byte	0x416
	.4byte	.LLST17
	.uleb128 0x1a
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x129
	.4byte	0x87
	.4byte	.LLST18
	.uleb128 0x1c
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x12a
	.4byte	0x87
	.4byte	.LLST19
	.byte	0x0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF77
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.4byte	0x87
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST20
	.4byte	0x63f
	.uleb128 0x17
	.4byte	.LASF64
	.byte	0x1
	.byte	0xd1
	.4byte	0x416
	.4byte	.LLST21
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x1
	.byte	0xd1
	.4byte	0x87
	.4byte	.LLST22
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0xd2
	.4byte	0x87
	.4byte	.LLST23
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x1
	.byte	0xd3
	.4byte	0x87
	.4byte	.LLST24
	.uleb128 0x18
	.4byte	.LASF46
	.byte	0x1
	.byte	0xd4
	.4byte	0x87
	.4byte	.LLST25
	.uleb128 0x1d
	.4byte	.LASF79
	.byte	0x1
	.byte	0xd5
	.4byte	0xa7
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x10d
	.byte	0x1
	.4byte	0x87
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST26
	.4byte	0x6f0
	.uleb128 0x1a
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x10d
	.4byte	0x416
	.4byte	.LLST27
	.uleb128 0x1a
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x10d
	.4byte	0x87
	.4byte	.LLST28
	.uleb128 0x1c
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x10e
	.4byte	0x87
	.4byte	.LLST29
	.uleb128 0x1e
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x48
	.4byte	.LLST30
	.uleb128 0x1f
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x110
	.4byte	0x6f0
	.byte	0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x20
	.4byte	0x3ee
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x11c
	.4byte	0x6ca
	.uleb128 0x21
	.4byte	0x40a
	.uleb128 0x21
	.4byte	0x3ff
	.byte	0x0
	.uleb128 0x22
	.4byte	0x41c
	.4byte	.LBB12
	.4byte	.LBE12
	.byte	0x1
	.2byte	0x11c
	.uleb128 0x21
	.4byte	0x44e
	.uleb128 0x21
	.4byte	0x443
	.uleb128 0x21
	.4byte	0x438
	.uleb128 0x21
	.4byte	0x42d
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	0x7d
	.uleb128 0x24
	.4byte	0x3e4
	.2byte	0x1ff
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.4byte	0x6fe
	.4byte	0x45a
	.ascii	"_FAT_fat_nextCluster\000"
	.4byte	0x4c3
	.ascii	"_FAT_fat_lastCluster\000"
	.4byte	0x579
	.ascii	"_FAT_fat_clearLinks\000"
	.4byte	0x5c8
	.ascii	"_FAT_fat_linkFreeCluster\000"
	.4byte	0x63f
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
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF31:
	.ascii	"count\000"
.LASF12:
	.ascii	"true\000"
.LASF78:
	.ascii	"curLink\000"
.LASF85:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF81:
	.ascii	"newCluster\000"
.LASF37:
	.ascii	"pages\000"
.LASF47:
	.ascii	"firstFree\000"
.LASF64:
	.ascii	"partition\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF39:
	.ascii	"FS_UNKNOWN\000"
.LASF83:
	.ascii	"GNU C 4.4.3\000"
.LASF75:
	.ascii	"oldValue\000"
.LASF54:
	.ascii	"numberOfSectors\000"
.LASF7:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF59:
	.ascii	"cwdCluster\000"
.LASF24:
	.ascii	"fn_readSectors\000"
.LASF50:
	.ascii	"filesysType\000"
.LASF27:
	.ascii	"fn_shutdown\000"
.LASF62:
	.ascii	"long int\000"
.LASF55:
	.ascii	"dataStart\000"
.LASF49:
	.ascii	"readOnly\000"
.LASF43:
	.ascii	"FS_TYPE\000"
.LASF10:
	.ascii	"double\000"
.LASF25:
	.ascii	"fn_writeSectors\000"
.LASF18:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF52:
	.ascii	"rootDirStart\000"
.LASF79:
	.ascii	"loopedAroundFAT\000"
.LASF82:
	.ascii	"emptySector\000"
.LASF61:
	.ascii	"PARTITION\000"
.LASF26:
	.ascii	"fn_clearStatus\000"
.LASF72:
	.ascii	"_FAT_fat_nextCluster\000"
.LASF74:
	.ascii	"value\000"
.LASF6:
	.ascii	"unsigned int\000"
.LASF84:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/fi"
	.ascii	"le_allocation_table.c\000"
.LASF30:
	.ascii	"sector\000"
.LASF28:
	.ascii	"long unsigned int\000"
.LASF40:
	.ascii	"FS_FAT12\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF41:
	.ascii	"FS_FAT16\000"
.LASF80:
	.ascii	"_FAT_fat_linkFreeClusterCleared\000"
.LASF58:
	.ascii	"bytesPerCluster\000"
.LASF70:
	.ascii	"nextCluster\000"
.LASF13:
	.ascii	"bool\000"
.LASF68:
	.ascii	"numSectors\000"
.LASF20:
	.ascii	"ioType\000"
.LASF23:
	.ascii	"fn_isInserted\000"
.LASF46:
	.ascii	"lastCluster\000"
.LASF21:
	.ascii	"features\000"
.LASF66:
	.ascii	"_FAT_fat_clusterToSector\000"
.LASF15:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF45:
	.ascii	"sectorsPerFat\000"
.LASF16:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF9:
	.ascii	"float\000"
.LASF51:
	.ascii	"totalSize\000"
.LASF19:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF86:
	.ascii	"_FAT_fat_writeFatEntry\000"
.LASF32:
	.ascii	"dirty\000"
.LASF73:
	.ascii	"_FAT_fat_lastCluster\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF42:
	.ascii	"FS_FAT32\000"
.LASF2:
	.ascii	"short int\000"
.LASF17:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF76:
	.ascii	"_FAT_fat_clearLinks\000"
.LASF11:
	.ascii	"false\000"
.LASF44:
	.ascii	"fatStart\000"
.LASF14:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF5:
	.ascii	"uint32_t\000"
.LASF56:
	.ascii	"bytesPerSector\000"
.LASF57:
	.ascii	"sectorsPerCluster\000"
.LASF35:
	.ascii	"numberOfPages\000"
.LASF63:
	.ascii	"char\000"
.LASF36:
	.ascii	"cacheEntries\000"
.LASF69:
	.ascii	"buffer\000"
.LASF65:
	.ascii	"cluster\000"
.LASF34:
	.ascii	"disc\000"
.LASF71:
	.ascii	"offset\000"
.LASF29:
	.ascii	"IO_INTERFACE\000"
.LASF22:
	.ascii	"fn_startup\000"
.LASF53:
	.ascii	"rootDirCluster\000"
.LASF60:
	.ascii	"openFileCount\000"
.LASF38:
	.ascii	"CACHE\000"
.LASF4:
	.ascii	"uint8_t\000"
.LASF67:
	.ascii	"_FAT_disc_writeSectors\000"
.LASF33:
	.ascii	"CACHE_ENTRY\000"
.LASF48:
	.ascii	"cache\000"
.LASF77:
	.ascii	"_FAT_fat_linkFreeCluster\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
