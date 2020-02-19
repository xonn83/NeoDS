	.code	16
	.file	"directory.c"
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
	.type	_FAT_fat_clusterToSector, %function
_FAT_fat_clusterToSector:
.LFB15:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/file_allocation_table.h"
	.loc 1 60 0
	push	{lr}
.LCFI0:
.LVL0:
	.loc 1 61 0
	cmp	r1, #1
	bls	.L2
	ldr	r3, [r0, #36]
	sub	r2, r1, #2
	mul	r2, r3
	ldr	r3, [r0, #28]
	add	r0, r2, r3
.LVL1:
	b	.L4
.LVL2:
.L2:
	ldr	r0, [r0, #16]
.LVL3:
.L4:
	.loc 1 62 0
	@ sp needed for prologue
	pop	{pc}
.LFE15:
	.size	_FAT_fat_clusterToSector, .-_FAT_fat_clusterToSector
	.align	2
	.code 16
	.thumb_func
	.type	u8array_to_u16, %function
u8array_to_u16:
.LFB16:
	.file 2 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/bit_ops.h"
	.loc 2 38 0
.LVL4:
	ldrb	r2, [r0, r1]
	add	r0, r0, r1
.LVL5:
	ldrb	r3, [r0, #1]
	@ lr needed for prologue
	.loc 2 38 0
	lsl	r3, r3, #8
	orr	r2, r2, r3
	.loc 2 40 0
	mov	r0, r2
	@ sp needed for prologue
	bx	lr
.LFE16:
	.size	u8array_to_u16, .-u8array_to_u16
	.align	2
	.code 16
	.thumb_func
	.type	u16_to_u8array, %function
u16_to_u8array:
.LFB18:
	.loc 2 46 0
.LVL6:
	.loc 2 47 0
	strb	r2, [r0, r1]
	.loc 2 48 0
	add	r0, r0, r1
.LVL7:
	lsr	r2, r2, #8
.LVL8:
	.loc 2 46 0
	@ lr needed for prologue
	.loc 2 48 0
	strb	r2, [r0, #1]
	.loc 2 49 0
	@ sp needed for prologue
	bx	lr
.LFE18:
	.size	u16_to_u8array, .-u16_to_u8array
	.align	2
	.code 16
	.thumb_func
	.type	_FAT_directory_entryGetAlias, %function
_FAT_directory_entryGetAlias:
.LFB22:
	.file 3 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/directory.c"
	.loc 3 155 0
	push	{r4, r5, lr}
.LCFI1:
.LVL9:
	.loc 3 159 0
	mov	r2, #0
	strb	r2, [r1]
	.loc 3 160 0
	ldrb	r3, [r0]
	cmp	r3, #229
	beq	.L11
	.loc 3 161 0
	cmp	r3, #46
	bne	.L15
	.loc 3 162 0
	strb	r3, [r1]
	.loc 3 163 0
	ldrb	r0, [r0, #1]
.LVL10:
	cmp	r0, #46
	bne	.L16
	.loc 3 164 0
	strb	r0, [r1, #1]
	.loc 3 165 0
	strb	r2, [r1, #2]
	b	.L11
.L16:
	.loc 3 167 0
	strb	r2, [r1, #1]
	b	.L11
.LVL11:
.L18:
	.loc 3 172 0
	strb	r3, [r2, r1]
	.loc 3 171 0
	add	r2, r2, #1
	cmp	r2, #8
	beq	.L19
.L15:
	ldrb	r3, [r2, r0]
	cmp	r3, #32
	bne	.L18
.L19:
	.loc 3 175 0
	ldrb	r3, [r0, #8]
	mov	r4, r0
	add	r4, r4, #8
	cmp	r3, #32
	beq	.L20
	.loc 3 176 0
	mov	r3, #46
	strb	r3, [r1, r2]
	add	r3, r1, r2
	mov	r5, r2
	add	r0, r3, #1
.LVL12:
	add	r2, r2, #1
	b	.L22
.L23:
	.loc 3 178 0
	strb	r3, [r0]
	add	r2, r2, #1
	.loc 3 177 0
	add	r3, r5, #4
	.loc 3 178 0
	add	r4, r4, #1
	add	r0, r0, #1
	.loc 3 177 0
	cmp	r2, r3
	beq	.L20
.L22:
	ldrb	r3, [r4]
	cmp	r3, #32
	bne	.L23
.LVL13:
.L20:
	.loc 3 181 0
	mov	r3, #0
	strb	r3, [r1, r2]
.L11:
	ldrb	r3, [r1]
	mov	r0, #0
.LVL14:
	cmp	r3, #0
	beq	.L24
	mov	r0, #1
.L24:
	.loc 3 186 0
	@ sp needed for prologue
	pop	{r4, r5, pc}
.LFE22:
	.size	_FAT_directory_entryGetAlias, .-_FAT_directory_entryGetAlias
	.align	2
	.global	_FAT_directory_entryGetCluster
	.code 16
	.thumb_func
	.type	_FAT_directory_entryGetCluster, %function
_FAT_directory_entryGetCluster:
.LFB23:
	.loc 3 188 0
	push	{r4, r5, lr}
.LCFI2:
.LVL15:
	sub	sp, sp, #4
.LCFI3:
	.loc 3 189 0
	mov	r1, #26
	.loc 3 188 0
	mov	r5, r0
	.loc 3 189 0
	bl	u8array_to_u16
.LVL16:
	mov	r1, #20
	mov	r4, r0
	mov	r0, r5
	bl	u8array_to_u16
	lsl	r0, r0, #16
	orr	r4, r4, r0
	.loc 3 190 0
	mov	r0, r4
	add	sp, sp, #4
	@ sp needed for prologue
.LVL17:
	pop	{r4, r5, pc}
.LFE23:
	.size	_FAT_directory_entryGetCluster, .-_FAT_directory_entryGetCluster
	.align	2
	.global	_FAT_directory_entryStat
	.code 16
	.thumb_func
	.type	_FAT_directory_entryStat, %function
_FAT_directory_entryStat:
.LFB35:
	.loc 3 870 0
	push	{r4, r5, r6, r7, lr}
.LCFI4:
.LVL18:
	.loc 3 873 0
	ldr	r3, [r0]
	.loc 3 870 0
	sub	sp, sp, #4
.LCFI5:
	.loc 3 873 0
	ldr	r3, [r3]
	.loc 3 874 0
	mov	r0, r1
.LVL19:
	.loc 3 873 0
	str	r3, [r2]
	.loc 3 870 0
	mov	r5, r2
	mov	r6, r1
	.loc 3 874 0
	bl	_FAT_directory_entryGetCluster
.LVL20:
	str	r0, [r5, #4]
.LBB10:
.LBB11:
	.file 4 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/directory.h"
	.loc 4 94 0
	ldrb	r2, [r6, #11]
.LBE11:
.LBE10:
	.loc 3 875 0
	lsl	r1, r2, #27
	bpl	.L29
	ldr	r1, .L37
	b	.L31
.L29:
	ldr	r1, .L37+4
.L31:
	lsl	r3, r2, #31
	bmi	.L32
	mov	r3, #146
	b	.L34
.L32:
	mov	r3, #0
.L34:
	orr	r3, r3, r1
	str	r3, [r5, #8]
	.loc 3 878 0
	mov	r3, #1
	strh	r3, [r5, #12]
	.loc 3 879 0
	strh	r3, [r5, #14]
	.loc 3 880 0
	mov	r3, #2
	strh	r3, [r5, #16]
	.loc 3 881 0
	ldr	r3, [r5]
.LBB12:
.LBB13:
	.loc 2 43 0
	mov	r0, r6
.LBE13:
.LBE12:
	.loc 3 881 0
	str	r3, [r5, #20]
.LBB14:
.LBB15:
	.loc 2 43 0
	add	r0, r0, #28
.LBE15:
.LBE14:
	.loc 3 882 0
	ldrb	r3, [r0, #1]
	ldrb	r1, [r6, #28]
	lsl	r3, r3, #8
	ldrb	r2, [r0, #3]
	orr	r1, r1, r3
	ldrb	r3, [r0, #2]
	lsl	r2, r2, #24
	lsl	r3, r3, #16
	orr	r2, r2, r3
	orr	r1, r1, r2
	str	r1, [r5, #24]
	.loc 3 883 0
	mov	r0, r6
	mov	r1, #18
	bl	u8array_to_u16
	mov	r1, r0
	mov	r0, #0
	bl	_FAT_filetime_to_time_t
	.loc 3 887 0
	mov	r7, #0
	.loc 3 883 0
	str	r0, [r5, #28]
	.loc 3 888 0
	mov	r1, #22
	.loc 3 887 0
	str	r7, [r5, #32]
	.loc 3 888 0
	mov	r0, r6
	bl	u8array_to_u16
	mov	r1, #24
	mov	r4, r0
	mov	r0, r6
	bl	u8array_to_u16
	mov	r1, r0
	mov	r0, r4
	bl	_FAT_filetime_to_time_t
	.loc 3 893 0
	mov	r1, #14
	.loc 3 888 0
	str	r0, [r5, #36]
	.loc 3 892 0
	str	r7, [r5, #40]
	.loc 3 893 0
	mov	r0, r6
	bl	u8array_to_u16
	mov	r1, #16
	mov	r4, r0
	mov	r0, r6
	bl	u8array_to_u16
	mov	r1, r0
	mov	r0, r4
	bl	_FAT_filetime_to_time_t
	.loc 3 898 0
	mov	r3, #128
	.loc 3 899 0
	ldr	r2, [r5, #24]
	ldr	r1, .L37+8
	.loc 3 898 0
	lsl	r3, r3, #2
	.loc 3 893 0
	str	r0, [r5, #44]
	.loc 3 897 0
	str	r7, [r5, #48]
	.loc 3 898 0
	str	r3, [r5, #52]
	.loc 3 899 0
	add	r3, r2, r1
	bpl	.L35
	ldr	r1, .L37+12
	add	r3, r2, r1
.L35:
	asr	r3, r3, #9
	.loc 3 902 0
	add	sp, sp, #4
	.loc 3 900 0
	str	r7, [r5, #60]
	.loc 3 901 0
	str	r7, [r5, #64]
	.loc 3 899 0
	str	r3, [r5, #56]
	.loc 3 902 0
	@ sp needed for prologue
.LVL21:
.LVL22:
	pop	{r4, r5, r6, r7, pc}
.L38:
	.align	2
.L37:
	.word	16676
	.word	33060
	.word	511
	.word	1022
.LFE35:
	.size	_FAT_directory_entryStat, .-_FAT_directory_entryStat
	.align	2
	.global	_FAT_directory_getRootEntry
	.code 16
	.thumb_func
	.type	_FAT_directory_getRootEntry, %function
_FAT_directory_getRootEntry:
.LFB27:
	.loc 3 339 0
	push	{r4, r5, r6, r7, lr}
.LCFI6:
.LVL23:
	.loc 3 340 0
	mov	r3, #0
	str	r3, [r1, #32]
	.loc 3 341 0
	str	r3, [r1, #36]
	.loc 3 342 0
	str	r3, [r1, #40]
	.loc 3 344 0
	mov	r2, r1
	mov	r3, r1
	.loc 3 339 0
	mov	r4, r1
	.loc 3 344 0
	add	r2, r2, #44
	add	r3, r3, #32
	.loc 3 339 0
	mov	r7, r0
	.loc 3 344 0
	ldmia	r3!, {r0, r1, r5}
	stmia	r2!, {r0, r1, r5}
.LVL24:
	.loc 3 346 0
	mov	r5, r4
	add	r5, r5, #56
	mov	r2, #128
	.loc 3 339 0
	sub	sp, sp, #4
.LCFI7:
	.loc 3 347 0
	mov	r6, #46
	.loc 3 346 0
	mov	r0, r5
	lsl	r2, r2, #1
	mov	r1, #0
	bl	memset
	.loc 3 347 0
	strb	r6, [r5]
	.loc 3 349 0
	mov	r0, r4
	mov	r1, #0
	mov	r2, #32
	bl	memset
	.loc 3 350 0
	mov	r0, r4
	mov	r1, #32
	mov	r2, #11
	bl	memset
	.loc 3 353 0
	mov	r3, #16
	.loc 3 351 0
	strb	r6, [r4]
	.loc 3 353 0
	strb	r3, [r4, #11]
	.loc 3 355 0
	ldrh	r2, [r7, #20]
	mov	r0, r4
	mov	r1, #26
	bl	u16_to_u8array
	.loc 3 356 0
	ldrh	r2, [r7, #22]
	mov	r0, r4
	mov	r1, #20
	bl	u16_to_u8array
	.loc 3 359 0
	mov	r0, #1
	add	sp, sp, #4
	@ sp needed for prologue
.LVL25:
.LVL26:
	pop	{r4, r5, r6, r7, pc}
.LFE27:
	.size	_FAT_directory_getRootEntry, .-_FAT_directory_getRootEntry
	.align	2
	.code 16
	.thumb_func
	.type	_FAT_directory_incrementDirEntryPosition, %function
_FAT_directory_incrementDirEntryPosition:
.LFB24:
	.loc 3 192 0
	push	{r4, r5, r6, r7, lr}
.LCFI8:
.LVL27:
	mov	r6, r1
	.loc 3 194 0
	ldr	r3, [r6, #8]
	ldr	r5, [r1]
	.loc 3 198 0
	add	r3, r3, #1
	.loc 3 192 0
	sub	sp, sp, #4
.LCFI9:
	.loc 3 192 0
	mov	r4, r0
	mov	r7, r2
	.loc 3 194 0
	ldr	r1, [r1, #4]
.LVL28:
	.loc 3 199 0
	cmp	r3, #16
	bne	.L42
.LVL29:
	.loc 3 204 0
	ldr	r3, [r0, #36]
	.loc 3 202 0
	add	r1, r1, #1
	.loc 3 204 0
	cmp	r1, r3
	bne	.L44
.LVL30:
	cmp	r5, #0
	beq	.L46
	.loc 3 207 0
	mov	r1, r5
	bl	_FAT_fat_nextCluster
.LVL31:
	.loc 3 208 0
	ldr	r3, .L55
.LVL32:
	cmp	r0, r3
	bne	.L48
	.loc 3 209 0
	cmp	r7, #0
	beq	.L50
	.loc 3 210 0
	mov	r0, r4
.LVL33:
	mov	r1, r5
	bl	_FAT_fat_linkFreeClusterCleared
.LVL34:
	.loc 3 211 0
	cmp	r0, #0
	beq	.L50
.L48:
	mov	r5, r0
	mov	r1, #0
	b	.L52
.LVL35:
.L44:
	.loc 3 219 0
	cmp	r5, #0
	bne	.L52
.L46:
	ldr	r3, [r4, #28]
	ldr	r2, [r4, #16]
	sub	r3, r3, r2
	cmp	r1, r3
	beq	.L50
.LVL36:
.L52:
	mov	r3, #0
.L42:
	.loc 3 223 0
	mov	r0, #1
.LVL37:
	str	r5, [r6]
	str	r1, [r6, #4]
	str	r3, [r6, #8]
	b	.L53
.LVL38:
.L50:
	.loc 3 224 0
	mov	r0, #0
.LVL39:
.L53:
	.loc 3 225 0
	add	sp, sp, #4
	@ sp needed for prologue
.LVL40:
.LVL41:
.LVL42:
	pop	{r4, r5, r6, r7, pc}
.L56:
	.align	2
.L55:
	.word	268435455
.LFE24:
	.size	_FAT_directory_incrementDirEntryPosition, .-_FAT_directory_incrementDirEntryPosition
	.align	2
	.global	_FAT_directory_removeEntry
	.code 16
	.thumb_func
	.type	_FAT_directory_removeEntry, %function
_FAT_directory_removeEntry:
.LFB30:
	.loc 3 534 0
	push	{r4, r5, r6, r7, lr}
.LCFI10:
.LVL43:
	sub	sp, sp, #76
.LCFI11:
	.loc 3 537 0
	mov	r3, r1
	add	r2, sp, #60
	add	r3, r3, #32
	.loc 3 534 0
	mov	r7, r0
	.loc 3 537 0
	ldmia	r3!, {r0, r4, r5}
	stmia	r2!, {r0, r4, r5}
.LVL44:
	.loc 3 538 0
	ldr	r0, [r1, #52]
	ldr	r2, [r1, #48]
	ldr	r1, [r1, #44]
.LVL45:
	str	r0, [sp, #12]
	str	r2, [sp, #16]
	str	r1, [sp, #20]
.LVL46:
.L58:
	.loc 3 549 0
	ldr	r1, [sp, #60]
	mov	r0, r7
	bl	_FAT_fat_clusterToSector
	ldr	r3, [sp, #64]
	ldr	r5, [r7, #4]
	add	r2, r0, r3
	ldr	r3, [sp, #68]
	add	r4, sp, #28
.LVL47:
	mov	r1, r4
	lsl	r3, r3, #5
	mov	r6, #32
	mov	r0, r5
	str	r6, [sp]
	bl	_FAT_cache_readPartialSector
	.loc 3 550 0
	mov	r3, #27
	neg	r3, r3
	strb	r3, [r4]
	.loc 3 551 0
	ldr	r1, [sp, #60]
	mov	r0, r7
	bl	_FAT_fat_clusterToSector
	ldr	r3, [sp, #64]
	ldr	r5, [r7, #4]
	add	r2, r0, r3
	ldr	r3, [sp, #68]
	mov	r1, r4
	lsl	r3, r3, #5
	mov	r0, r5
	str	r6, [sp]
	bl	_FAT_cache_writePartialSector
	.loc 3 552 0
	ldr	r3, [sp, #60]
	ldr	r4, [sp, #20]
	cmp	r3, r4
	bne	.L59
	ldr	r3, [sp, #64]
	ldr	r5, [sp, #16]
	cmp	r3, r5
	bne	.L59
	ldr	r3, [sp, #68]
	ldr	r0, [sp, #12]
	mov	r2, #0
	cmp	r3, r0
	bne	.L62
	mov	r2, #1
.L62:
	mov	r4, r2
.LVL48:
	b	.L63
.LVL49:
.L59:
	mov	r4, #0
.LVL50:
.L63:
	.loc 3 547 0
	mov	r0, r7
	add	r1, sp, #60
	mov	r2, #0
	bl	_FAT_directory_incrementDirEntryPosition
	.loc 3 546 0
	cmp	r0, #0
	beq	.L66
	cmp	r4, #0
	beq	.L58
	mov	r0, #1
.L66:
	.loc 3 562 0
	add	sp, sp, #76
	@ sp needed for prologue
.LVL51:
.LVL52:
	pop	{r4, r5, r6, r7, pc}
.LFE30:
	.size	_FAT_directory_removeEntry, .-_FAT_directory_removeEntry
	.align	2
	.global	_FAT_directory_entryFromPosition
	.code 16
	.thumb_func
	.type	_FAT_directory_entryFromPosition, %function
_FAT_directory_entryFromPosition:
.LFB28:
	.loc 3 361 0
	push	{r4, r5, r6, r7, lr}
.LCFI12:
.LVL53:
	sub	sp, sp, #76
.LCFI13:
	.loc 3 364 0
	mov	r3, r1
	add	r2, sp, #60
	add	r3, r3, #32
	.loc 3 361 0
	mov	r5, r1
	mov	r6, r0
	.loc 3 364 0
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
.LVL54:
	.loc 3 365 0
	ldr	r2, [r5, #44]
	ldr	r0, [r5, #52]
	ldr	r1, [r5, #48]
	.loc 3 374 0
	add	r3, r3, #12
	.loc 3 365 0
	str	r2, [sp, #20]
	.loc 3 374 0
	mov	r2, #128
	.loc 3 365 0
	str	r0, [sp, #12]
	str	r1, [sp, #16]
	.loc 3 374 0
	mov	r0, r3
	mov	r1, #0
	lsl	r2, r2, #1
	str	r3, [sp, #8]
	bl	memset
.LVL55:
.L72:
	.loc 3 381 0
	ldr	r1, [sp, #60]
	mov	r0, r6
	bl	_FAT_fat_clusterToSector
	ldr	r3, [sp, #64]
	ldr	r4, [r6, #4]
.LVL56:
	add	r2, r0, r3
	ldr	r3, [sp, #68]
	mov	r1, #32
	add	r7, sp, #28
	lsl	r3, r3, #5
	str	r1, [sp]
	mov	r0, r4
	mov	r1, r7
	bl	_FAT_cache_readPartialSector
	.loc 3 385 0
	ldr	r3, [sp, #60]
	ldr	r4, [sp, #20]
	cmp	r3, r4
	bne	.L73
	ldr	r3, [sp, #64]
	ldr	r0, [sp, #16]
	cmp	r3, r0
	bne	.L73
	ldr	r3, [sp, #68]
	ldr	r1, [sp, #12]
	cmp	r3, r1
	bne	.L73
	.loc 3 389 0
	mov	r0, r5
	mov	r1, r7
	mov	r2, #32
	bl	memcpy
	mov	r4, #1
.LVL57:
	b	.L77
.LVL58:
.L73:
	.loc 3 385 0
	add	r3, sp, #28
	ldrb	r2, [r3]
	mov	r3, #64
	bic	r2, r2, r3
	lsl	r3, r2, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	ldr	r1, .L95
	add	r3, r3, r2
	add	r3, r3, #43
	mov	r4, r1
	add	r0, r5, r3
	add	r4, r4, #52
.L78:
	.loc 3 395 0
	ldmia	r1!, {r3}
	add	r2, sp, #28
	ldrb	r3, [r2, r3]
	strb	r3, [r0]
	add	r0, r0, #1
	.loc 3 394 0
	cmp	r1, r4
	bne	.L78
	mov	r4, #0
.LVL59:
.L77:
	.loc 3 379 0
	mov	r0, r6
	add	r1, sp, #60
	mov	r2, #0
	bl	_FAT_directory_incrementDirEntryPosition
	.loc 3 378 0
	cmp	r0, #0
	beq	.L90
	cmp	r4, #0
	beq	.L72
	.loc 3 404 0
	ldr	r3, [sp, #60]
	ldr	r2, [sp, #20]
	cmp	r3, r2
	bne	.L84
	ldr	r3, [sp, #64]
	ldr	r4, [sp, #16]
.LVL60:
	cmp	r3, r4
	bne	.L84
	ldr	r3, [sp, #68]
	ldr	r0, [sp, #12]
	cmp	r3, r0
	bne	.L84
	.loc 3 408 0
	mov	r0, r5
	ldr	r1, [sp, #8]
	bl	_FAT_directory_entryGetAlias
	mov	r2, #0
	cmp	r0, #0
	bne	.L88
	mov	r2, #1
.L88:
	mov	r3, #1
	eor	r3, r3, r2
	lsl	r3, r3, #24
	lsr	r0, r3, #24
	b	.L82
.LVL61:
.L90:
	.loc 3 378 0
	mov	r0, #0
	b	.L82
.L84:
	.loc 3 408 0
	mov	r0, #1
.L82:
	.loc 3 414 0
	add	sp, sp, #76
	@ sp needed for prologue
.LVL62:
.LVL63:
.LVL64:
	pop	{r4, r5, r6, r7, pc}
.L96:
	.align	2
.L95:
	.word	LFN_offset_table
.LFE28:
	.size	_FAT_directory_entryFromPosition, .-_FAT_directory_entryFromPosition
	.align	2
	.global	_FAT_directory_getNextEntry
	.code 16
	.thumb_func
	.type	_FAT_directory_getNextEntry, %function
_FAT_directory_getNextEntry:
.LFB25:
	.loc 3 227 0
	push	{r4, r5, r6, r7, lr}
.LCFI14:
.LVL65:
	sub	sp, sp, #92
.LCFI15:
	.loc 3 227 0
	str	r1, [sp, #12]
	.loc 3 244 0
	ldr	r3, [sp, #12]
	add	r1, sp, #64
.LVL66:
	.loc 3 227 0
	str	r0, [sp, #16]
	.loc 3 244 0
	add	r3, r3, #44
	mov	r2, r1
	ldmia	r3!, {r0, r4, r5}
	stmia	r2!, {r0, r4, r5}
.LVL67:
	ldr	r7, [sp, #64]
	.loc 3 247 0
	cmp	r7, #0
	bne	.L98
	.loc 3 248 0
	ldr	r0, [sp, #16]
	ldr	r7, [r0, #20]
.L98:
	.loc 3 251 0
	str	r7, [sp, #64]
	add	r3, sp, #76
	ldmia	r1!, {r0, r4, r5}
	stmia	r3!, {r0, r4, r5}
	.loc 3 252 0
	ldr	r1, [sp, #12]
	mov	r2, #0
	add	r1, r1, #56
	str	r1, [sp, #24]
.LVL68:
	str	r2, [sp, #20]
.LVL69:
	str	r2, [sp, #28]
.LVL70:
.LVL71:
.L100:
	.loc 3 267 0
	add	r5, sp, #76
	ldr	r0, [sp, #16]
	mov	r1, r5
.LVL72:
	mov	r2, #0
	bl	_FAT_directory_incrementDirEntryPosition
	mov	r3, #0
	str	r3, [sp, #8]
	cmp	r0, #0
	bne	.L101
	mov	r4, #1
	str	r4, [sp, #8]
.L101:
	.loc 3 271 0
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #76]
	ldr	r4, [r0, #4]
	bl	_FAT_fat_clusterToSector
	ldr	r3, [sp, #80]
	add	r6, sp, #32
	add	r2, r0, r3
	ldr	r3, [sp, #84]
	mov	r1, #32
	lsl	r3, r3, #5
	str	r1, [sp]
	mov	r0, r4
	mov	r1, r6
	bl	_FAT_cache_readPartialSector
	.loc 3 273 0
	ldrb	r3, [r6, #11]
	cmp	r3, #15
	bne	.L102
	.loc 3 275 0
	ldrb	r1, [r6]
	lsl	r3, r1, #24
	cmp	r3, #0
	blt	.L104
	.loc 3 277 0
	mov	r0, #64
	tst	r1, r0
	beq	.L106
	.loc 3 279 0
	add	r3, sp, #64
	ldmia	r5!, {r2, r4, r7}
	stmia	r3!, {r2, r4, r7}
	.loc 3 281 0
	mov	r2, r1
	bic	r2, r2, r0
	lsl	r3, r2, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	ldr	r0, [sp, #24]
	add	r3, r3, r2
	mov	r2, #0
	.loc 3 279 0
	ldr	r7, [sp, #64]
	.loc 3 281 0
	strb	r2, [r3, r0]
	.loc 3 282 0
	ldrb	r6, [r6, #13]
	mov	r1, #1
	str	r6, [sp, #20]
	str	r1, [sp, #28]
	b	.L108
.L104:
	mov	r2, #0
	str	r2, [sp, #28]
.L106:
	.loc 3 283 0
	add	r3, sp, #32
	ldrb	r3, [r3, #13]
	ldr	r4, [sp, #20]
	cmp	r3, r4
	bne	.L109
	.loc 3 286 0
	ldr	r5, [sp, #28]
	cmp	r5, #0
	beq	.L111
.L108:
	add	r3, sp, #32
	ldrb	r2, [r3]
	mov	r3, #64
	bic	r2, r2, r3
	lsl	r3, r2, #1
	add	r3, r3, r2
	ldr	r0, [sp, #24]
	lsl	r3, r3, #2
	add	r3, r3, r2
	ldr	r1, .L135
	add	r3, r0, r3
	mov	r0, r3
	mov	r4, r1
	sub	r0, r0, #13
	add	r4, r4, #52
.L112:
	.loc 3 289 0
	ldmia	r1!, {r3}
	add	r2, sp, #32
	ldrb	r3, [r2, r3]
	strb	r3, [r0]
	add	r0, r0, #1
	.loc 3 288 0
	cmp	r1, r4
	beq	.L111
	b	.L112
.L102:
	.loc 3 292 0
	lsl	r1, r3, #28
	bmi	.L111
	.loc 3 294 0
	ldrb	r1, [r6]
.LVL73:
	cmp	r1, #0
	beq	.L114
	.loc 3 296 0
	cmp	r1, #229
	beq	.L111
	cmp	r1, #32
	bls	.L111
	.loc 3 297 0
	ldr	r2, [sp, #28]
	cmp	r2, #0
	beq	.L118
	mov	r0, #1
.LVL74:
.L120:
	.loc 3 302 0
	lsl	r3, r1, #31
	bpl	.L121
	mov	r2, #128
	b	.L123
.L121:
	mov	r2, #0
.L123:
	lsr	r3, r1, #1
	add	r3, r2, r3
	add	r2, sp, #32
	ldrb	r2, [r0, r2]
	.loc 3 300 0
	add	r0, r0, #1
	.loc 3 302 0
	add	r3, r3, r2
	lsl	r3, r3, #24
	lsr	r1, r3, #24
	.loc 3 300 0
	cmp	r0, #11
	bne	.L120
	.loc 3 304 0
	ldr	r4, [sp, #20]
	cmp	r1, r4
	beq	.L125
	.loc 3 306 0
	ldr	r5, [sp, #24]
	mov	r3, #0
	strb	r3, [r5]
.L118:
	.loc 3 310 0
	add	r3, sp, #64
	add	r2, sp, #76
	ldmia	r2!, {r0, r1, r7}
	stmia	r3!, {r0, r1, r7}
.LVL75:
	.loc 3 311 0
	add	r0, sp, #32
	ldr	r1, [sp, #24]
	.loc 3 310 0
	ldr	r7, [sp, #64]
	.loc 3 311 0
	bl	_FAT_directory_entryGetAlias
	b	.L125
.L109:
	mov	r2, #0
	str	r2, [sp, #28]
.LVL76:
.L111:
	.loc 3 266 0
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L114
	b	.L100
.LVL77:
.L134:
	.loc 3 322 0
	ldr	r3, [sp, #12]
	str	r7, [sp, #64]
	add	r2, sp, #64
	add	r3, r3, #32
	ldmia	r2!, {r4, r5, r7}
	stmia	r3!, {r4, r5, r7}
	.loc 3 323 0
	ldr	r3, [sp, #12]
	add	r2, sp, #76
	add	r3, r3, #44
	ldmia	r2!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
.LVL78:
	.loc 3 324 0
	add	r1, sp, #32
	ldr	r0, [sp, #12]
	mov	r2, #32
	bl	memcpy
	mov	r0, #1
	b	.L128
.LVL79:
.L114:
	.loc 3 325 0
	mov	r0, #0
.LVL80:
	b	.L128
.LVL81:
.L125:
	.loc 3 318 0
	ldr	r5, [sp, #8]
	cmp	r5, #0
	bne	.L114
	b	.L134
.LVL82:
.L128:
	.loc 3 327 0
	add	sp, sp, #92
	@ sp needed for prologue
	pop	{r4, r5, r6, r7, pc}
.L136:
	.align	2
.L135:
	.word	LFN_offset_table
.LFE25:
	.size	_FAT_directory_getNextEntry, .-_FAT_directory_getNextEntry
	.align	2
	.global	_FAT_directory_getFirstEntry
	.code 16
	.thumb_func
	.type	_FAT_directory_getFirstEntry, %function
_FAT_directory_getFirstEntry:
.LFB26:
	.loc 3 329 0
	push	{r4, r5, r6, lr}
.LCFI16:
.LVL83:
	.loc 3 331 0
	mov	r3, #0
	str	r3, [r1, #36]
	.loc 3 332 0
	mov	r3, #1
	neg	r3, r3
	.loc 3 330 0
	str	r2, [r1, #32]
	.loc 3 332 0
	str	r3, [r1, #40]
	.loc 3 334 0
	mov	r2, r1
.LVL84:
	mov	r3, r1
	add	r2, r2, #44
	add	r3, r3, #32
	ldmia	r3!, {r4, r5, r6}
	stmia	r2!, {r4, r5, r6}
	.loc 3 336 0
	bl	_FAT_directory_getNextEntry
.LVL85:
	.loc 3 337 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.LFE26:
	.size	_FAT_directory_getFirstEntry, .-_FAT_directory_getFirstEntry
	.align	2
	.code 16
	.thumb_func
	.type	_FAT_directory_entryExists, %function
_FAT_directory_entryExists:
.LFB32:
	.loc 3 635 0
	push	{r4, r5, r6, r7, lr}
.LCFI17:
.LVL86:
	mov	r7, r0
	mov	r6, r1
	.loc 3 641 0
	mov	r0, r1
.LVL87:
	mov	r1, #128
.LVL88:
	.loc 3 635 0
	sub	sp, sp, #332
.LCFI18:
	.loc 3 641 0
	lsl	r1, r1, #1
	.loc 3 635 0
	mov	r4, r2
	.loc 3 641 0
	bl	strnlen
.LVL89:
	mov	r5, r0
	.loc 3 643 0
	cmp	r0, #255
	bhi	.L140
	.loc 3 648 0
	mov	r0, r7
	mov	r1, sp
	mov	r2, r4
	bl	_FAT_directory_getFirstEntry
	b	.L142
.LVL90:
.L143:
	.loc 3 652 0
	add	r4, sp, #56
.LVL91:
	mov	r1, #128
	mov	r0, r4
.LVL92:
	lsl	r1, r1, #1
	bl	strnlen
	cmp	r5, r0
	bne	.L144
	mov	r0, r4
	mov	r1, r6
	bl	strcasecmp
	cmp	r0, #0
	beq	.L146
.L144:
	.loc 3 658 0
	ldr	r4, .L151
	mov	r0, sp
	add	r4, r4, sp
	mov	r1, r4
	bl	_FAT_directory_entryGetAlias
	.loc 3 659 0
	mov	r0, r4
	mov	r1, #13
	bl	strnlen
	cmp	r5, r0
	bne	.L147
	mov	r0, r4
	mov	r1, r6
	bl	strcasecmp
	cmp	r0, #0
	beq	.L146
.L147:
	.loc 3 663 0
	mov	r0, r7
	mov	r1, sp
	bl	_FAT_directory_getNextEntry
.LVL93:
.L142:
.LVL94:
	.loc 3 650 0
	cmp	r0, #0
	bne	.L143
.L140:
	mov	r0, #0
.LVL95:
	b	.L149
.LVL96:
.L146:
	mov	r0, #1
.LVL97:
.L149:
	.loc 3 666 0
	add	sp, sp, #332
	@ sp needed for prologue
.LVL98:
.LVL99:
.LVL100:
	pop	{r4, r5, r6, r7, pc}
.L152:
	.align	2
.L151:
	.word	315
.LFE32:
	.size	_FAT_directory_entryExists, .-_FAT_directory_entryExists
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC5:
	.ascii	".\000"
	.text
	.align	2
	.global	_FAT_directory_entryFromPath
	.code 16
	.thumb_func
	.type	_FAT_directory_entryFromPath, %function
_FAT_directory_entryFromPath:
.LFB29:
	.loc 3 418 0
	push	{r4, r5, r6, r7, lr}
.LCFI19:
.LVL101:
	sub	sp, sp, #52
.LCFI20:
	.loc 3 418 0
	str	r0, [sp, #8]
	mov	r6, r1
	mov	r4, r2
	str	r3, [sp, #4]
	.loc 3 434 0
	cmp	r3, #0
	bne	.L154
.LVL102:
	.loc 3 436 0
	mov	r0, r2
	mov	r1, #0
	bl	strchr
.LVL103:
	str	r0, [sp, #4]
.LVL104:
.L154:
	.loc 3 439 0
	ldrb	r3, [r4]
	cmp	r3, #47
	bne	.L156
	.loc 3 441 0
	ldr	r1, [sp, #8]
	ldr	r1, [r1, #20]
	str	r1, [sp, #16]
.LVL105:
.L158:
.LVL106:
	.loc 3 444 0
	add	r4, r4, #1
	.loc 3 443 0
	ldrb	r3, [r4]
	cmp	r3, #47
	beq	.L158
	.loc 3 447 0
	ldr	r2, [sp, #4]
.LVL107:
	cmp	r4, r2
	bcs	.L160
	mov	r5, #0
.LVL108:
	b	.L162
.LVL109:
.L160:
	.loc 3 448 0
	ldr	r0, [sp, #8]
	mov	r1, r6
	bl	_FAT_directory_getRootEntry
	mov	r5, #1
.LVL110:
	b	.L163
.LVL111:
.L156:
	.loc 3 453 0
	ldr	r3, [sp, #8]
	mov	r5, #0
.LVL112:
	ldr	r3, [r3, #60]
	str	r3, [sp, #16]
.LVL113:
.L163:
	.loc 3 458 0
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #16]
	ldr	r3, [r1, #20]
	cmp	r2, r3
	bne	.L164
.L162:
	ldr	r0, .L212
.LVL114:
	mov	r1, r4
	mov	r2, #2
	bl	strncasecmp
	cmp	r0, #0
	bne	.L164
	.loc 3 459 0
	ldr	r0, [sp, #8]
	mov	r1, r6
	bl	_FAT_directory_getRootEntry
	mov	r5, #1
.LVL115:
.L164:
	mov	r3, #0
	str	r3, [sp, #24]
.LVL116:
	b	.L203
.LVL117:
.L206:
.LVL118:
	.loc 3 465 0
	mov	r0, r4
	mov	r1, #47
	bl	strchr
.LVL119:
	str	r0, [sp, #12]
	.loc 3 466 0
	cmp	r0, #0
	beq	.L168
	.loc 3 467 0
	sub	r7, r0, r4
	b	.L170
.L168:
	.loc 3 469 0
	mov	r0, r4
	bl	strlen
	mov	r7, r0
.L170:
	.loc 3 472 0
	mov	r3, #128
	lsl	r3, r3, #1
	cmp	r7, r3
	bhi	.L171
	.loc 3 478 0
	ldr	r2, [sp, #16]
	ldr	r0, [sp, #8]
	mov	r1, r6
	bl	_FAT_directory_getFirstEntry
	mov	r2, #0
.LVL120:
	str	r0, [sp, #20]
	b	.L173
.L174:
	.loc 3 482 0
	mov	r5, r6
.LVL121:
	add	r5, r5, #56
	mov	r1, #128
	mov	r0, r5
	lsl	r1, r1, #1
	bl	strnlen
.LVL122:
	cmp	r7, r0
	beq	.L175
	mov	r1, #0
	b	.L211
.L175:
	mov	r2, #0
	str	r2, [sp]
	mov	r0, r5
	mov	r1, r4
	mov	r2, r7
	bl	strncasecmp
	cmp	r0, #0
	bne	.L178
	mov	r3, #1
	str	r3, [sp]
.L178:
	ldr	r1, [sp]
.L211:
	.loc 3 488 0
	mov	r5, sp
	add	r5, r5, #35
	.loc 3 482 0
	str	r1, [sp, #28]
	.loc 3 488 0
	mov	r0, r6
	mov	r1, r5
	bl	_FAT_directory_entryGetAlias
	.loc 3 489 0
	mov	r0, r5
	mov	r1, #13
	bl	strnlen
	cmp	r7, r0
	bne	.L179
	mov	r0, r5
	mov	r1, r4
	mov	r2, r7
	bl	strncasecmp
	cmp	r0, #0
	bne	.L179
	mov	r2, #1
	str	r2, [sp, #28]
	b	.L182
.L179:
	.loc 3 494 0
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L184
.L182:
	ldrb	r3, [r6, #11]
	lsl	r1, r3, #27
	bmi	.L185
	ldr	r2, [sp, #12]
	cmp	r2, #0
	beq	.L185
.L184:
	.loc 3 500 0
	ldr	r0, [sp, #8]
	mov	r1, r6
	bl	_FAT_directory_getNextEntry
	mov	r3, #0
	str	r0, [sp, #20]
	str	r3, [sp, #28]
.L185:
	ldr	r2, [sp, #28]
.LVL123:
.L173:
	.loc 3 480 0
	ldr	r1, [sp, #20]
	cmp	r1, #0
	beq	.L204
	cmp	r2, #0
	beq	.L174
	.loc 3 508 0
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L198
	ldr	r1, [sp, #4]
	cmp	r3, r1
	bcs	.L198
	.loc 3 511 0
	ldrb	r3, [r6, #11]
	lsl	r1, r3, #27
	bmi	.L193
	mov	r5, r2
	b	.L203
.L204:
	.loc 3 480 0
	mov	r2, #1
.LVL124:
	str	r2, [sp, #24]
	b	.L210
.LVL125:
.L193:
	.loc 3 512 0
	mov	r0, r6
	bl	_FAT_directory_entryGetCluster
.LVL126:
	ldr	r4, [sp, #12]
	str	r0, [sp, #16]
	b	.L195
.L196:
	.loc 3 516 0
	add	r4, r4, #1
.L195:
	.loc 3 515 0
	ldrb	r3, [r4]
	cmp	r3, #47
	beq	.L196
	.loc 3 519 0
	ldr	r3, [sp, #4]
	cmp	r4, r3
	bcc	.L206
	b	.L198
.LVL127:
.L203:
	.loc 3 463 0
	cmp	r5, #0
	bne	.L198
.L210:
	ldr	r1, [sp, #24]
	cmp	r1, #0
	beq	.L206
	b	.L171
.L198:
	ldr	r2, [sp, #24]
.LVL128:
	mov	r3, #1
	eor	r3, r3, r2
	lsl	r3, r3, #24
	lsr	r0, r3, #24
	b	.L201
.LVL129:
.L171:
	.loc 3 527 0
	mov	r0, #0
.L201:
	.loc 3 532 0
	add	sp, sp, #52
	@ sp needed for prologue
.LVL130:
.LVL131:
.LVL132:
.LVL133:
	pop	{r4, r5, r6, r7, pc}
.L213:
	.align	2
.L212:
	.word	.LC5
.LFE29:
	.size	_FAT_directory_entryFromPath, .-_FAT_directory_entryFromPath
	.align	2
	.global	_FAT_directory_chdir
	.code 16
	.thumb_func
	.type	_FAT_directory_chdir, %function
_FAT_directory_chdir:
.LFB34:
	.loc 3 854 0
	push	{r4, r5, lr}
.LCFI21:
.LVL134:
	sub	sp, sp, #316
.LCFI22:
	.loc 3 854 0
	mov	r2, r1
	.loc 3 857 0
	mov	r3, #0
	mov	r1, sp
.LVL135:
	.loc 3 854 0
	mov	r5, r0
	.loc 3 857 0
	mov	r4, sp
	bl	_FAT_directory_entryFromPath
.LVL136:
	cmp	r0, #0
	beq	.L215
	.loc 3 861 0
	ldrb	r3, [r4, #11]
	lsl	r2, r3, #27
	bpl	.L215
	.loc 3 865 0
	mov	r0, sp
	bl	_FAT_directory_entryGetCluster
	str	r0, [r5, #60]
	mov	r0, #1
	b	.L218
.L215:
	.loc 3 867 0
	mov	r0, #0
.L218:
	.loc 3 868 0
	add	sp, sp, #316
	@ sp needed for prologue
.LVL137:
	pop	{r4, r5, pc}
.LFE34:
	.size	_FAT_directory_chdir, .-_FAT_directory_chdir
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"\\/:;*?\"<>|&+,=[]\000"
	.text
	.align	2
	.global	_FAT_directory_isValidAlias
	.code 16
	.thumb_func
	.type	_FAT_directory_isValidAlias, %function
_FAT_directory_isValidAlias:
.LFB21:
	.loc 3 108 0
	push	{r4, r5, r6, lr}
.LCFI23:
.LVL138:
	.loc 3 114 0
	mov	r1, #13
	.loc 3 108 0
	mov	r4, r0
	.loc 3 114 0
	bl	strnlen
.LVL139:
	cmp	r0, #12
	bhi	.L221
	.loc 3 118 0
	ldr	r1, .L238
	mov	r0, r4
	bl	strpbrk
	cmp	r0, #0
	bne	.L221
	.loc 3 121 0
	mov	r0, r4
	mov	r1, #13
	bl	strnlen
	mov	r2, #0
.LVL140:
	mov	r6, r0
	b	.L224
.L225:
	.loc 3 124 0
	ldrb	r3, [r2, r4]
	cmp	r3, #31
	bls	.L221
	.loc 3 123 0
	add	r2, r2, #1
.L224:
	cmp	r2, r6
	bne	.L225
	.loc 3 129 0
	mov	r0, r4
	mov	r1, #46
	bl	strchr
.LVL141:
	mov	r5, r0
	.loc 3 131 0
	cmp	r0, #0
	beq	.L228
	mov	r0, r4
	mov	r1, #46
	bl	strrchr
	cmp	r0, r5
	bne	.L221
	.loc 3 137 0
	sub	r3, r0, r4
	sub	r3, r3, #2
	cmp	r3, #7
	bhi	.L221
	.loc 3 141 0
	add	r4, r0, #1
.LVL142:
	mov	r0, r4
	mov	r1, #13
	bl	strnlen
	cmp	r0, #3
	bhi	.L221
	mov	r0, r4
	mov	r1, #13
	bl	strnlen
	mov	r2, #0
	cmp	r0, #0
	bne	.L235
	b	.L237
.LVL143:
.L228:
	sub	r3, r6, #1
	mov	r2, #0
	cmp	r3, #7
	bls	.L235
.L237:
	mov	r2, #1
.L235:
	mov	r3, #1
	eor	r3, r3, r2
	lsl	r3, r3, #24
	lsr	r0, r3, #24
	b	.L234
.LVL144:
.L221:
	mov	r0, #0
.L234:
	.loc 3 153 0
	@ sp needed for prologue
.LVL145:
	pop	{r4, r5, r6, pc}
.L239:
	.align	2
.L238:
	.word	.LC7
.LFE21:
	.size	_FAT_directory_isValidAlias, .-_FAT_directory_isValidAlias
	.section	.rodata.str1.4
	.align	2
.LC9:
	.ascii	"\\/:*?\"<>|\000"
	.text
	.align	2
	.global	_FAT_directory_isValidLfn
	.code 16
	.thumb_func
	.type	_FAT_directory_isValidLfn, %function
_FAT_directory_isValidLfn:
.LFB20:
	.loc 3 86 0
	push	{r4, lr}
.LCFI24:
.LVL146:
	.loc 3 90 0
	mov	r1, #128
	lsl	r1, r1, #1
	.loc 3 86 0
	mov	r4, r0
	.loc 3 90 0
	bl	strnlen
.LVL147:
	cmp	r0, #255
	bhi	.L241
	.loc 3 94 0
	ldr	r1, .L250
	mov	r0, r4
	bl	strpbrk
	cmp	r0, #0
	bne	.L241
	.loc 3 97 0
	mov	r1, #128
	mov	r0, r4
	lsl	r1, r1, #1
	bl	strnlen
	mov	r2, #0
.LVL148:
	b	.L244
.L245:
	.loc 3 100 0
	ldrb	r3, [r2, r4]
	cmp	r3, #31
	bls	.L241
	.loc 3 99 0
	add	r2, r2, #1
.L244:
	cmp	r2, r0
	bne	.L245
	mov	r0, #1
	b	.L248
.L241:
	mov	r0, #0
.L248:
	.loc 3 106 0
	@ sp needed for prologue
.LVL149:
	pop	{r4, pc}
.L251:
	.align	2
.L250:
	.word	.LC9
.LFE20:
	.size	_FAT_directory_isValidLfn, .-_FAT_directory_isValidLfn
	.section	.rodata.str1.4
	.align	2
.LC12:
	.ascii	"..\000"
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.global	__aeabi_uidiv
	.text
	.align	2
	.global	_FAT_directory_addEntry
	.code 16
	.thumb_func
	.type	_FAT_directory_addEntry, %function
_FAT_directory_addEntry:
.LFB33:
	.loc 3 670 0
	push	{r4, r5, r6, r7, lr}
.LCFI25:
.LVL150:
	sub	sp, sp, #164
.LCFI26:
	.loc 3 681 0
	mov	r5, r1
	.loc 3 670 0
	str	r1, [sp, #12]
	.loc 3 681 0
	add	r5, r5, #56
	mov	r1, #128
.LVL151:
	.loc 3 670 0
	str	r0, [sp, #16]
	.loc 3 681 0
	lsl	r1, r1, #1
	mov	r0, r5
.LVL152:
	.loc 3 670 0
	str	r2, [sp, #8]
	.loc 3 681 0
	bl	strnlen
.LVL153:
	cmp	r0, #0
	bne	.LCB1987
	b	.L253	@long jump
.LCB1987:
	.loc 3 686 0
	mov	r0, r5
	bl	_FAT_directory_isValidLfn
	cmp	r0, #0
	bne	.LCB1992
	b	.L253	@long jump
.LCB1992:
	.loc 3 691 0
	mov	r0, r5
	bl	strlen
	ldr	r3, [sp, #12]
	sub	r1, r0, #1
.LVL154:
	add	r0, r0, #55
	add	r2, r3, r0
	b	.L256
.L257:
	.loc 3 692 0
	mov	r3, #0
	strb	r3, [r2]
	.loc 3 691 0
	sub	r1, r1, #1
	sub	r2, r2, #1
.L256:
	cmp	r1, #0
	ble	.L258
	ldrb	r3, [r2]
	cmp	r3, #32
	beq	.L257
.L258:
	.loc 3 695 0
	mov	r0, r5
	bl	strlen
.LVL155:
	ldr	r2, [sp, #12]
	mov	r1, #0
.LVL156:
	add	r2, r2, #56
	b	.L260
.L261:
	add	r1, r1, #1
	add	r2, r2, #1
.L260:
	cmp	r1, r0
	beq	.L262
	ldrb	r3, [r2]
	cmp	r3, #32
	beq	.L261
.L262:
	.loc 3 696 0
	cmp	r1, #0
	ble	.L264
	.loc 3 697 0
	add	r4, r5, r1
	mov	r0, r4
	bl	strlen
.LVL157:
	mov	r1, r4
	mov	r2, r0
	mov	r0, r5
	bl	memmove
.LVL158:
.L264:
	.loc 3 701 0
	mov	r0, r5
	bl	strlen
.LVL159:
	.loc 3 702 0
	mov	r4, #128
	lsl	r4, r4, #1
	sub	r2, r4, r0
	mov	r1, #0
	add	r0, r5, r0
	bl	memset
	.loc 3 705 0
	ldr	r0, [sp, #16]
	mov	r1, r5
	ldr	r2, [sp, #8]
	bl	_FAT_directory_entryExists
	cmp	r0, #0
	beq	.LCB2077
	b	.L253	@long jump
.LCB2077:
	.loc 3 710 0
	mov	r1, #32
	mov	r2, #11
	ldr	r0, [sp, #12]
	bl	memset
	.loc 3 712 0
	ldr	r1, .L372
	mov	r0, r5
	mov	r2, r4
	bl	strncmp
	cmp	r0, #0
	bne	.L267
	.loc 3 714 0
	ldr	r4, [sp, #12]
	mov	r3, #46
	mov	r7, #1
	strb	r3, [r4]
	str	r7, [sp, #24]
.LVL160:
	str	r0, [sp, #28]
.LVL161:
	b	.L269
.LVL162:
.L267:
	.loc 3 716 0
	ldr	r1, .L372+4
	mov	r0, r5
	mov	r2, r4
	bl	strncmp
	cmp	r0, #0
	bne	.L270
	.loc 3 718 0
	ldr	r1, [sp, #12]
	mov	r3, #46
	strb	r3, [r1]
	.loc 3 719 0
	strb	r3, [r1, #1]
	mov	r2, #1
	mov	r3, #0
	str	r2, [sp, #24]
.LVL163:
	str	r3, [sp, #28]
.LVL164:
	b	.L269
.LVL165:
.L270:
	.loc 3 721 0
	mov	r0, r5
	bl	_FAT_directory_isValidAlias
	cmp	r0, #0
	beq	.L272
	.loc 3 723 0
	mov	r0, r5
	bl	strupr
	mov	r0, #0
.LVL166:
	b	.L274
.L275:
	.loc 3 726 0
	add	r0, r0, #1
	.loc 3 727 0
	strb	r3, [r2]
	.loc 3 726 0
	cmp	r0, #8
	bne	.L274
.L276:
	ldr	r4, [sp, #12]
	mov	r2, r0
.LVL167:
	add	r1, r4, r0
	b	.L277
.LVL168:
.L274:
	ldr	r7, [sp, #12]
	add	r2, r7, r0
	mov	r3, r2
	add	r3, r3, #56
	ldrb	r3, [r3]
	cmp	r3, #46
	beq	.L276
	cmp	r3, #0
	bne	.L275
	b	.L276
.LVL169:
.L279:
	.loc 3 730 0
	mov	r3, #32
	strb	r3, [r1]
	.loc 3 731 0
	add	r2, r2, #1
	add	r1, r1, #1
.L277:
	.loc 3 729 0
	cmp	r2, #7
	ble	.L279
	.loc 3 733 0
	ldr	r1, [sp, #12]
.LVL170:
	add	r3, r0, r1
	add	r3, r3, #56
	ldrb	r3, [r3]
	cmp	r3, #46
	bne	.L281
	mov	r3, r0
	add	r3, r3, #57
	add	r3, r1, r3
	add	r1, r1, r2
	b	.L283
.LVL171:
.L284:
	.loc 3 737 0
	strb	r0, [r1]
	.loc 3 739 0
	add	r2, r2, #1
	add	r1, r1, #1
.LVL172:
.L283:
	.loc 3 736 0
	ldrb	r0, [r3]
.LVL173:
	cmp	r0, #0
	bne	.L285
.LVL174:
.L281:
	ldr	r3, [sp, #12]
	add	r1, r3, r2
	b	.L286
.LVL175:
.L285:
	add	r3, r3, #1
	cmp	r2, #10
	ble	.L284
	b	.L281
.LVL176:
.L287:
	.loc 3 743 0
	mov	r3, #32
	strb	r3, [r1]
	.loc 3 744 0
	add	r2, r2, #1
	add	r1, r1, #1
.L286:
	.loc 3 742 0
	cmp	r2, #10
	ble	.L287
	mov	r4, #1
	mov	r7, #0
	str	r4, [sp, #24]
.LVL177:
	str	r7, [sp, #28]
.LVL178:
	b	.L269
.LVL179:
.L272:
	.loc 3 748 0
	mov	r1, r4
	mov	r0, r5
	bl	strnlen
	.loc 3 750 0
	mov	r1, #46
	.loc 3 748 0
	str	r0, [sp, #20]
	.loc 3 750 0
	mov	r0, r5
	bl	strrchr
.LVL180:
	.loc 3 751 0
	cmp	r0, #0
	bne	.L289
	.loc 3 752 0
	mov	r0, r5
.LVL181:
	mov	r1, #0
	bl	strchr
.LVL182:
.L289:
	.loc 3 755 0
	ldr	r3, .L372+8
	mov	r6, #0
.LVL183:
	ldr	r7, [r3]
	mov	r4, #0
.LVL184:
	b	.L291
.L292:
	ldr	r1, [sp, #12]
	add	r3, r1, r6
	add	r3, r3, #56
	ldrb	r1, [r3]
	mov	r3, #7
	ldrb	r2, [r7, r1]
	tst	r2, r3
	beq	.L293
	.loc 3 756 0
	mov	r3, sp
	add	r3, r3, #111
	strb	r1, [r3, r4]
	.loc 3 757 0
	add	r4, r4, #1
.L293:
	.loc 3 754 0
	cmp	r4, #5
	ble	.L295
.L296:
	mov	r3, sp
	add	r3, r3, #111
	add	r2, r3, r4
	b	.L297
.L295:
	add	r6, r6, #1
.L291:
	add	r3, r5, r6
	cmp	r3, r0
	bcc	.L292
	b	.L296
.L298:
	.loc 3 761 0
	mov	r3, #95
	strb	r3, [r2]
	.loc 3 762 0
	add	r4, r4, #1
	add	r2, r2, #1
.L297:
	.loc 3 760 0
	cmp	r4, #7
	ble	.L298
	.loc 3 764 0
	mov	r0, r5
.LVL185:
	mov	r1, #46
	bl	strrchr
	mov	r2, sp
	add	r2, r2, #111
.LVL186:
	.loc 3 765 0
	cmp	r0, #0
	beq	.L300
	.loc 3 766 0
	mov	r3, #46
	strb	r3, [r2, #8]
	add	r2, r2, r4
	b	.L302
.L303:
	.loc 3 769 0
	ldrb	r3, [r0]
	.loc 3 770 0
	add	r0, r0, #1
	.loc 3 769 0
	strb	r3, [r2]
	.loc 3 771 0
	add	r4, r4, #1
	add	r2, r2, #1
	.loc 3 768 0
	cmp	r0, #0
	beq	.L304
.L302:
	cmp	r4, #11
	ble	.L303
.L304:
	.loc 3 773 0
	mov	r3, sp
	mov	r2, #0
	add	r3, r3, #111
	strb	r2, [r3, r4]
	b	.L305
.L300:
	.loc 3 776 0
	strb	r0, [r2, #8]
	strb	r0, [r2, #9]
	strb	r0, [r2, #10]
	strb	r0, [r2, #11]
	strb	r0, [r2, #12]
.L305:
	.loc 3 781 0
	mov	r3, sp
	mov	r2, #126
	add	r3, r3, #111
	strb	r2, [r3, #5]
	mov	r4, #0
.LVL187:
.L306:
	.loc 3 784 0
	add	r4, r4, #1
	.loc 3 785 0
	mov	r1, #10
	mov	r0, r4
.LVL188:
	bl	__aeabi_idiv
	mov	r1, #10
	bl	__aeabi_idivmod
	mov	r5, sp
	add	r5, r5, #111
	add	r1, r1, #48
	strb	r1, [r5, #6]
	.loc 3 786 0
	mov	r0, r4
	mov	r1, #10
	bl	__aeabi_idivmod
	add	r1, r1, #48
	strb	r1, [r5, #7]
	.loc 3 787 0
	ldr	r0, [sp, #16]
	mov	r1, r5
	ldr	r2, [sp, #8]
	bl	_FAT_directory_entryExists
	cmp	r0, #0
	bne	.L307
	.loc 3 788 0
	cmp	r4, #100
	bne	.L364
	b	.L253
.L307:
	.loc 3 787 0
	cmp	r4, #100
	bne	.LCB2456
	b	.L253	@long jump
.LCB2456:
	b	.L306
.L364:
	.loc 3 794 0
	mov	r0, r5
	bl	strupr
	.loc 3 797 0
	mov	r1, r5
	mov	r2, #8
	ldr	r0, [sp, #12]
	bl	memcpy
	.loc 3 798 0
	ldr	r0, [sp, #12]
	mov	r2, #3
	add	r0, r0, #8
	add	r1, sp, #120
	bl	memcpy
	mov	r2, #0
.LVL189:
.L310:
	.loc 3 800 0
	ldr	r4, [sp, #12]
.LVL190:
	ldrb	r3, [r2, r4]
	cmp	r3, #31
	bhi	.L311
	.loc 3 802 0
	mov	r3, #32
	strb	r3, [r2, r4]
.L311:
	.loc 3 799 0
	add	r2, r2, #1
	cmp	r2, #10
	bne	.LCB2495
	b	.L365	@long jump
.LCB2495:
	b	.L310
.LVL191:
.L314:
	.loc 3 809 0
	ldr	r7, [sp, #28]
	lsl	r7, r7, #31
	bpl	.L315
	mov	r2, #128
.LVL192:
	b	.L317
.LVL193:
.L315:
	mov	r2, #0
.LVL194:
.L317:
	ldr	r0, [sp, #28]
	ldr	r4, [sp, #12]
	lsr	r3, r0, #1
	add	r3, r2, r3
	ldrb	r2, [r1, r4]
	.loc 3 806 0
	add	r1, r1, #1
	.loc 3 809 0
	add	r3, r3, r2
	lsl	r3, r3, #24
	lsr	r3, r3, #24
	str	r3, [sp, #28]
	.loc 3 806 0
	cmp	r1, #11
	bne	.L314
	.loc 3 748 0
	ldr	r0, [sp, #20]
	mov	r1, #13
.LVL195:
	add	r0, r0, #12
	bl	__aeabi_uidiv
	add	r0, r0, #1
	str	r0, [sp, #24]
.LVL196:
.L269:
.LBB18:
.LBB19:
	.loc 3 577 0
	ldr	r7, [sp, #8]
	.loc 3 575 0
	mov	r3, #0
	str	r3, [sp, #132]
	.loc 3 576 0
	str	r3, [sp, #128]
	.loc 3 577 0
	str	r7, [sp, #124]
	.loc 3 575 0
	add	r2, sp, #124
.LVL197:
	.loc 3 579 0
	add	r3, sp, #136
	ldmia	r2!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
.LVL198:
	ldr	r7, [sp, #24]
.LVL199:
	mov	r0, #1
	str	r0, [sp, #32]
.LVL200:
	b	.L319
.LVL201:
.L320:
	.loc 3 586 0
	ldr	r1, [sp, #16]
.LBE19:
	ldr	r0, [sp, #16]
.LBB20:
	ldr	r5, [r1, #4]
.LBE20:
	ldr	r1, [sp, #124]
	bl	_FAT_fat_clusterToSector
.LVL202:
	ldr	r3, [sp, #128]
.LBB21:
	mov	r4, sp
.LBE21:
	add	r2, r0, r3
	ldr	r3, [sp, #132]
.LBB22:
	add	r4, r4, #79
.LBE22:
	mov	r1, #32
	lsl	r3, r3, #5
	str	r1, [sp]
	mov	r0, r5
	mov	r1, r4
	bl	_FAT_cache_readPartialSector
.LBB23:
	.loc 3 587 0
	ldrb	r3, [r4]
.LBE23:
	.loc 3 586 0
	add	r6, sp, #124
.LVL203:
.LBB24:
	.loc 3 587 0
	cmp	r3, #0
	bne	.L321
	.loc 3 588 0
	add	r3, sp, #136
	ldmia	r6!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
	.loc 3 589 0
	sub	r7, r7, #1
	mov	r3, #1
.LVL204:
	b	.L323
.LVL205:
.L321:
	.loc 3 591 0
	cmp	r3, #229
	beq	.LCB2627
	b	.L324	@long jump
.LCB2627:
	.loc 3 592 0
	ldr	r2, [sp, #24]
	cmp	r7, r2
	bne	.L326
	.loc 3 593 0
	add	r3, sp, #136
	ldmia	r6!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
.L326:
	.loc 3 595 0
	sub	r7, r7, #1
	b	.L328
.L329:
.LBE24:
	.loc 3 601 0
	ldr	r0, [sp, #16]
	add	r1, sp, #124
	mov	r2, #1
	bl	_FAT_directory_incrementDirEntryPosition
	str	r0, [sp, #32]
.L369:
	mov	r3, #0
.LVL206:
.L323:
.LBB25:
	.loc 3 585 0
	ldr	r2, [sp, #32]
	cmp	r2, #0
	bne	.LCB2660
	b	.L253	@long jump
.LCB2660:
	cmp	r3, #0
	bne	.L331
.LVL207:
.L319:
	cmp	r7, #0
	bne	.L320
	b	.L367
.LVL208:
.L331:
	.loc 3 611 0
	ldr	r2, [sp, #12]
	add	r3, sp, #136
.LVL209:
	add	r2, r2, #32
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
	.loc 3 614 0
	mov	r0, sp
	add	r0, r0, #79
	mov	r1, #0
	mov	r2, #32
	bl	memset
	.loc 3 615 0
	add	r6, r7, #1
.LVL210:
	mov	r5, #0
	b	.L333
.L334:
	.loc 3 618 0
	ldr	r3, [sp, #12]
	add	r1, sp, #124
	mov	r2, r1
	add	r3, r3, #44
	ldmia	r2!, {r0, r4, r7}
	stmia	r3!, {r0, r4, r7}
.LVL211:
.LBE25:
	.loc 3 620 0
	mov	r2, #1
	ldr	r0, [sp, #16]
	bl	_FAT_directory_incrementDirEntryPosition
.LBB26:
	.loc 3 623 0
	ldr	r1, [sp, #16]
.LBE26:
	.loc 3 620 0
	str	r0, [sp, #32]
.LBB27:
	.loc 3 623 0
	ldr	r4, [r1, #4]
.LBE27:
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #124]
	bl	_FAT_fat_clusterToSector
	ldr	r3, [sp, #128]
	mov	r1, #32
	add	r2, r0, r3
	ldr	r3, [sp, #132]
	str	r1, [sp]
	mov	r1, sp
	lsl	r3, r3, #5
	mov	r0, r4
	add	r1, r1, #79
	bl	_FAT_cache_writePartialSector
.LVL212:
.L333:
.LBB28:
	.loc 3 616 0
	cmp	r5, r6
	beq	.L335
	ldr	r2, [sp, #32]
	add	r5, r5, #1
	cmp	r2, #0
	bne	.L334
	b	.L253
.L335:
	.loc 3 625 0
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L253
	b	.L337
.LVL213:
.L338:
.LBE28:
.LBE18:
	.loc 3 825 0
	cmp	r7, #1
	beq	.L339
	.loc 3 827 0
	ldr	r4, [sp, #24]
	cmp	r7, r4
	bne	.L341
	mov	r2, #64
	b	.L343
.L373:
	.align	2
.L372:
	.word	.LC5
	.word	.LC12
	.word	__ctype_ptr
.L341:
	mov	r2, #0
.L343:
	sub	r3, r7, #1
	orr	r3, r3, r2
	mov	r2, sp
	add	r2, r2, #47
	strb	r3, [r2]
	ldr	r3, [sp, #36]
	ldr	r0, [sp, #12]
	add	r3, r3, #56
	ldr	r4, .L374
	add	r5, r0, r3
	mov	r6, #0
.LVL214:
.L344:
	.loc 3 829 0
	ldrb	r2, [r5]
	cmp	r2, #0
	bne	.L345
	.loc 3 830 0
	cmp	r6, #1
	ble	.L347
	sub	r3, r5, #1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L347
	.loc 3 831 0
	mov	r0, sp
	ldr	r1, [r4]
	ldr	r2, .L374+4
	add	r0, r0, #47
	b	.L370
.L347:
	.loc 3 833 0
	mov	r0, sp
	ldr	r1, [r4]
	add	r0, r0, #47
	mov	r2, #0
	b	.L370
.L345:
	.loc 3 836 0
	mov	r0, sp
	ldr	r1, [r4]
	add	r0, r0, #47
.L370:
	.loc 3 828 0
	add	r6, r6, #1
	.loc 3 836 0
	bl	u16_to_u8array
	.loc 3 828 0
	add	r5, r5, #1
	add	r4, r4, #4
	cmp	r6, #13
	bne	.L344
	.loc 3 840 0
	mov	r4, sp
	mov	r1, sp
	add	r4, r4, #47
	ldrb	r1, [r1, #28]
	.loc 3 841 0
	mov	r3, #15
	strb	r3, [r4, #11]
	.loc 3 842 0
	mov	r3, #0
	strb	r3, [r4, #12]
	.loc 3 840 0
	strb	r1, [r4, #13]
	.loc 3 843 0
	mov	r0, r4
	mov	r1, #26
	mov	r2, #0
	bl	u16_to_u8array
	.loc 3 844 0
	ldr	r2, [sp, #16]
	ldr	r1, [sp, #148]
	mov	r0, r2
	ldr	r5, [r2, #4]
	bl	_FAT_fat_clusterToSector
	ldr	r3, [sp, #152]
	mov	r1, #32
	add	r2, r0, r3
	ldr	r3, [sp, #156]
	str	r1, [sp]
	lsl	r3, r3, #5
	mov	r0, r5
	mov	r1, r4
	b	.L371
.LVL215:
.L339:
	.loc 3 847 0
	ldr	r3, [sp, #16]
	ldr	r1, [sp, #148]
	mov	r0, r3
	ldr	r4, [r3, #4]
	bl	_FAT_fat_clusterToSector
	ldr	r3, [sp, #152]
	mov	r1, #32
	add	r2, r0, r3
	ldr	r3, [sp, #156]
	str	r1, [sp]
	ldr	r1, [sp, #12]
	lsl	r3, r3, #5
	mov	r0, r4
.L371:
	bl	_FAT_cache_writePartialSector
	.loc 3 823 0
	ldr	r0, [sp, #16]
	add	r1, sp, #148
	mov	r2, #0
	bl	_FAT_directory_incrementDirEntryPosition
	ldr	r4, [sp, #36]
	sub	r4, r4, #13
	str	r4, [sp, #36]
	.loc 3 822 0
	cmp	r0, #0
	beq	.L353
	.loc 3 823 0
	sub	r7, r7, #1
.L355:
	.loc 3 822 0
	cmp	r7, #0
	bgt	.L338
	b	.L353
.LVL216:
.L253:
	mov	r0, #0
	b	.L356
.LVL217:
.L353:
	mov	r0, #1
	b	.L356
.LVL218:
.L324:
	ldr	r7, [sp, #24]
.L328:
.LBB29:
.LBB30:
	.loc 3 600 0
	cmp	r7, #0
	beq	.LCB2957
	b	.L329	@long jump
.LCB2957:
	b	.L369
.LVL219:
.L337:
.LBE30:
.LBE29:
	.loc 3 820 0
	ldr	r2, [sp, #12]
	add	r3, sp, #148
	add	r2, r2, #32
	ldmia	r2!, {r0, r1, r7}
	stmia	r3!, {r0, r1, r7}
.LVL220:
	.loc 3 822 0
	ldr	r7, [sp, #24]
.LVL221:
	lsl	r3, r7, #1
	add	r3, r3, r7
	lsl	r3, r3, #2
	add	r3, r3, r7
	sub	r3, r3, #26
	str	r3, [sp, #36]
	b	.L355
.LVL222:
.L367:
.LBB31:
.LBB32:
	.loc 3 611 0
	ldr	r3, [sp, #12]
.LVL223:
	add	r2, sp, #136
	add	r3, r3, #32
	ldmia	r2!, {r0, r4, r7}
	stmia	r3!, {r0, r4, r7}
.LVL224:
	.loc 3 629 0
	ldr	r3, [sp, #12]
	add	r2, sp, #124
	add	r3, r3, #44
	ldmia	r2!, {r1, r4, r7}
	stmia	r3!, {r1, r4, r7}
	b	.L337
.LVL225:
.L365:
.LBE32:
.LBE31:
	.loc 3 809 0
	ldr	r0, [sp, #12]
	.loc 3 806 0
	mov	r1, #1
.LVL226:
	.loc 3 809 0
	ldrb	r0, [r0]
	str	r0, [sp, #28]
.LVL227:
	b	.L314
.LVL228:
.L356:
	.loc 3 852 0
	add	sp, sp, #164
	@ sp needed for prologue
.LVL229:
.LVL230:
.LVL231:
	pop	{r4, r5, r6, r7, pc}
.L375:
	.align	2
.L374:
	.word	LFN_offset_table
	.word	65535
.LFE33:
	.size	_FAT_directory_addEntry, .-_FAT_directory_addEntry
	.global	LFN_offset_table
	.section	.rodata
	.align	2
	.type	LFN_offset_table, %object
	.size	LFN_offset_table, 52
LFN_offset_table:
	.word	1
	.word	3
	.word	5
	.word	7
	.word	9
	.word	14
	.word	16
	.word	18
	.word	20
	.word	22
	.word	24
	.word	28
	.word	30
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x4
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
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI1-.LFB22
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI2-.LFB23
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
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI4-.LFB35
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
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI6-.LFB27
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
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI8-.LFB24
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
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI10-.LFB30
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
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x60
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI12-.LFB28
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
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x60
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI14-.LFB25
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
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x70
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI16-.LFB26
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
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI17-.LFB32
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
	.4byte	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x160
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI19-.LFB29
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
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x48
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI21-.LFB34
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x148
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI23-.LFB21
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
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI24-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI25-.LFB33
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
	.4byte	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0xb8
	.align	2
.LEFDE34:
	.file 5 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 6 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/partition.h"
	.file 8 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/disc_io.h"
	.file 9 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/cache.h"
	.file 10 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/disc.h"
	.file 11 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/stat.h"
	.file 12 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/types.h"
	.file 13 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stddef.h"
	.file 14 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/ctype.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB22-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB23-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB35-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE35-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LFB24-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LFB30-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 96
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 96
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LFB25-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 112
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL66-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL79-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LFB26-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LFB32-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 352
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LFB29-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI20-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 72
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL102-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL103-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	.LVL113-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LFB34-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE34-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 328
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LFB21-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI23-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LFB20-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LFB33-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI25-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 184
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL152-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -148
	.4byte	0x0
	.4byte	0x0
.LLST64:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL151-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -152
	.4byte	0x0
	.4byte	0x0
.LLST65:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -156
	.4byte	0x0
	.4byte	0x0
.LLST66:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -140
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -140
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -140
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -140
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -140
	.4byte	0x0
	.4byte	0x0
.LLST67:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST68:
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST69:
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST70:
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -136
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -136
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -136
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -136
	.4byte	.LVL227-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -136
	.4byte	0x0
	.4byte	0x0
.LLST71:
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST72:
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL228-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST73:
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -132
	.4byte	.LVL228-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -132
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0xfc7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF167
	.byte	0x1
	.4byte	.LASF168
	.4byte	.LASF169
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x1
	.byte	0x8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x72
	.uleb128 0x6
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x8
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0xd
	.byte	0xd6
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x1
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0xc
	.byte	0x6d
	.4byte	0x2c
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0xc
	.byte	0x85
	.4byte	0x3a
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0xc
	.byte	0xa6
	.4byte	0x25
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0xc
	.byte	0xab
	.4byte	0x2c
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0xc
	.byte	0xad
	.4byte	0x77
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0xc
	.byte	0xae
	.4byte	0x77
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0xc
	.byte	0xc3
	.4byte	0x3a
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0xc
	.byte	0xc8
	.4byte	0x77
	.uleb128 0x8
	.4byte	0x1ea
	.4byte	.LASF51
	.byte	0x44
	.byte	0xb
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0xb
	.byte	0x1b
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0xb
	.byte	0x1c
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0xb
	.byte	0x1d
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0xb
	.byte	0x1e
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0xb
	.byte	0x1f
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0xb
	.byte	0x20
	.4byte	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0xb
	.byte	0x21
	.4byte	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0xb
	.byte	0x22
	.4byte	0xb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0xb
	.byte	0x29
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0xb
	.byte	0x2a
	.4byte	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0xb
	.byte	0x2b
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0xb
	.byte	0x2c
	.4byte	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0xb
	.byte	0x2d
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0xb
	.byte	0x2e
	.4byte	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0xb
	.byte	0x2f
	.4byte	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0xb
	.byte	0x30
	.4byte	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0xb
	.byte	0x31
	.4byte	0x1ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0xa
	.4byte	0x1fa
	.4byte	0x2c
	.uleb128 0xb
	.4byte	0x41
	.byte	0x1
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x6
	.byte	0x2e
	.4byte	0x48
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3a
	.4byte	0x77
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x6
	.byte	0x53
	.4byte	0x2c
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x6
	.byte	0x54
	.4byte	0x51
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x8
	.byte	0x4
	.uleb128 0xc
	.ascii	"u8\000"
	.byte	0x5
	.byte	0x5f
	.4byte	0x1fa
	.uleb128 0xc
	.ascii	"u16\000"
	.byte	0x5
	.byte	0x60
	.4byte	0x205
	.uleb128 0xc
	.ascii	"u32\000"
	.byte	0x5
	.byte	0x61
	.4byte	0x21b
	.uleb128 0xc
	.ascii	"s32\000"
	.byte	0x5
	.byte	0x66
	.4byte	0x210
	.uleb128 0xd
	.4byte	0x274
	.byte	0x1
	.byte	0x5
	.byte	0x81
	.uleb128 0xe
	.4byte	.LASF42
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF43
	.sleb128 1
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x5
	.byte	0x81
	.4byte	0x25f
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x8
	.byte	0x3d
	.4byte	0x28a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x290
	.uleb128 0xf
	.byte	0x1
	.4byte	0x274
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x8
	.byte	0x3e
	.4byte	0x28a
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x8
	.byte	0x3f
	.4byte	0x2ac
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2b2
	.uleb128 0x10
	.4byte	0x2cc
	.byte	0x1
	.4byte	0x274
	.uleb128 0x11
	.4byte	0x249
	.uleb128 0x11
	.4byte	0x249
	.uleb128 0x11
	.4byte	0x4f
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x8
	.byte	0x40
	.4byte	0x2d7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2dd
	.uleb128 0x10
	.4byte	0x2f7
	.byte	0x1
	.4byte	0x274
	.uleb128 0x11
	.4byte	0x249
	.uleb128 0x11
	.4byte	0x249
	.uleb128 0x11
	.4byte	0x2f7
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2fd
	.uleb128 0x12
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x8
	.byte	0x41
	.4byte	0x28a
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x8
	.byte	0x42
	.4byte	0x28a
	.uleb128 0x8
	.4byte	0x391
	.4byte	.LASF52
	.byte	0x20
	.byte	0x8
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x8
	.byte	0x45
	.4byte	0x51
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x8
	.byte	0x46
	.4byte	0x51
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x8
	.byte	0x47
	.4byte	0x27f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x8
	.byte	0x48
	.4byte	0x296
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x8
	.byte	0x49
	.4byte	0x2a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x8
	.byte	0x4a
	.4byte	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x8
	.byte	0x4b
	.4byte	0x2fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x8
	.byte	0x4c
	.4byte	0x309
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x8
	.byte	0x4f
	.4byte	0x314
	.uleb128 0x13
	.4byte	0x3cf
	.byte	0xc
	.byte	0x9
	.byte	0x2f
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x9
	.byte	0x30
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x9
	.byte	0x31
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x9
	.byte	0x32
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x9
	.byte	0x33
	.4byte	0x39c
	.uleb128 0x13
	.4byte	0x41b
	.byte	0x10
	.byte	0x9
	.byte	0x35
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x9
	.byte	0x36
	.4byte	0x41b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x9
	.byte	0x37
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x9
	.byte	0x38
	.4byte	0x426
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x9
	.byte	0x39
	.4byte	0x42c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x421
	.uleb128 0x6
	.4byte	0x391
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3cf
	.uleb128 0x5
	.byte	0x4
	.4byte	0x234
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x9
	.byte	0x3a
	.4byte	0x3da
	.uleb128 0xd
	.4byte	0x45e
	.byte	0x1
	.byte	0x7
	.byte	0x2d
	.uleb128 0xe
	.4byte	.LASF71
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF72
	.sleb128 1
	.uleb128 0xe
	.4byte	.LASF73
	.sleb128 2
	.uleb128 0xe
	.4byte	.LASF74
	.sleb128 3
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x7
	.byte	0x2d
	.4byte	0x43d
	.uleb128 0x13
	.4byte	0x4aa
	.byte	0x10
	.byte	0x7
	.byte	0x35
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x7
	.byte	0x36
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x7
	.byte	0x37
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x7
	.byte	0x38
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x7
	.byte	0x39
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.ascii	"FAT\000"
	.byte	0x7
	.byte	0x3a
	.4byte	0x469
	.uleb128 0x13
	.4byte	0x590
	.byte	0x44
	.byte	0x7
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x7
	.byte	0x3d
	.4byte	0x41b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x7
	.byte	0x3e
	.4byte	0x590
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x7
	.byte	0x40
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x7
	.byte	0x41
	.4byte	0x45e
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x7
	.byte	0x42
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x7
	.byte	0x43
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x7
	.byte	0x44
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x7
	.byte	0x45
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x7
	.byte	0x46
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x7
	.byte	0x47
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x7
	.byte	0x48
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x7
	.byte	0x49
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.ascii	"fat\000"
	.byte	0x7
	.byte	0x4a
	.4byte	0x4aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x7
	.byte	0x4c
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x7
	.byte	0x4d
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x432
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0x7
	.byte	0x4e
	.4byte	0x4b5
	.uleb128 0x13
	.4byte	0x5d4
	.byte	0xc
	.byte	0x4
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x4
	.byte	0x3d
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x4
	.byte	0x3e
	.4byte	0x249
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x4
	.byte	0x3f
	.4byte	0x254
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0x4
	.byte	0x40
	.4byte	0x5a1
	.uleb128 0x15
	.4byte	0x621
	.2byte	0x138
	.byte	0x4
	.byte	0x42
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x4
	.byte	0x43
	.4byte	0x621
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x4
	.byte	0x44
	.4byte	0x5d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x4
	.byte	0x45
	.4byte	0x5d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x4
	.byte	0x46
	.4byte	0x631
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0xa
	.4byte	0x631
	.4byte	0x234
	.uleb128 0xb
	.4byte	0x41
	.byte	0x1f
	.byte	0x0
	.uleb128 0xa
	.4byte	0x641
	.4byte	0x65
	.uleb128 0xb
	.4byte	0x41
	.byte	0xff
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0x4
	.byte	0x47
	.4byte	0x5df
	.uleb128 0x16
	.4byte	0x685
	.4byte	.LASF102
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.4byte	0x249
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x1
	.byte	0x3c
	.4byte	0x685
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x1
	.byte	0x3c
	.4byte	0x249
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x596
	.uleb128 0x19
	.4byte	0x6c2
	.4byte	.LASF103
	.byte	0x2
	.byte	0x26
	.byte	0x1
	.4byte	0x23e
	.4byte	.LFB16
	.4byte	.LFE16
	.byte	0x1
	.byte	0x5d
	.uleb128 0x17
	.4byte	.LASF104
	.byte	0x2
	.byte	0x26
	.4byte	0x6c2
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x2
	.byte	0x26
	.4byte	0x25
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6c8
	.uleb128 0x6
	.4byte	0x234
	.uleb128 0x1a
	.4byte	0x70f
	.4byte	.LASF105
	.byte	0x2
	.byte	0x2e
	.byte	0x1
	.4byte	.LFB18
	.4byte	.LFE18
	.byte	0x1
	.byte	0x5d
	.uleb128 0x17
	.4byte	.LASF104
	.byte	0x2
	.byte	0x2e
	.4byte	0x42c
	.4byte	.LLST5
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x2
	.byte	0x2e
	.4byte	0x25
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.4byte	.LASF106
	.byte	0x2
	.byte	0x2e
	.4byte	0x23e
	.4byte	.LLST6
	.byte	0x0
	.uleb128 0x16
	.4byte	0x75c
	.4byte	.LASF107
	.byte	0x3
	.byte	0x9b
	.byte	0x1
	.4byte	0x274
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LLST7
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0x3
	.byte	0x9b
	.4byte	0x6c2
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x3
	.byte	0x9b
	.4byte	0x5f
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x3
	.byte	0x9c
	.4byte	0x25
	.byte	0x1
	.byte	0x52
	.uleb128 0x1c
	.ascii	"j\000"
	.byte	0x3
	.byte	0x9d
	.4byte	0x25
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x789
	.byte	0x1
	.4byte	.LASF114
	.byte	0x3
	.byte	0xbc
	.byte	0x1
	.4byte	0x249
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST9
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0x3
	.byte	0xbc
	.4byte	0x6c2
	.4byte	.LLST10
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x7a6
	.4byte	.LASF109
	.byte	0xa
	.byte	0x73
	.byte	0x1
	.4byte	0x249
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF66
	.byte	0xa
	.byte	0x73
	.4byte	0x41b
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x7c3
	.4byte	.LASF110
	.byte	0x4
	.byte	0x5d
	.byte	0x1
	.4byte	0x274
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF111
	.byte	0x4
	.byte	0x5d
	.4byte	0x7c3
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x641
	.uleb128 0x1e
	.4byte	0x7e6
	.4byte	.LASF112
	.byte	0x4
	.byte	0x61
	.byte	0x1
	.4byte	0x274
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF111
	.byte	0x4
	.byte	0x61
	.4byte	0x7c3
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x80e
	.4byte	.LASF113
	.byte	0x2
	.byte	0x2a
	.byte	0x1
	.4byte	0x249
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF104
	.byte	0x2
	.byte	0x2a
	.4byte	0x6c2
	.uleb128 0x1f
	.4byte	.LASF95
	.byte	0x2
	.byte	0x2a
	.4byte	0x25
	.byte	0x0
	.uleb128 0x20
	.4byte	0x889
	.byte	0x1
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x366
	.byte	0x1
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LLST11
	.uleb128 0x21
	.4byte	.LASF101
	.byte	0x3
	.2byte	0x366
	.4byte	0x685
	.4byte	.LLST12
	.uleb128 0x21
	.4byte	.LASF111
	.byte	0x3
	.2byte	0x366
	.4byte	0x7c3
	.4byte	.LLST13
	.uleb128 0x22
	.ascii	"st\000"
	.byte	0x3
	.2byte	0x366
	.4byte	0x889
	.4byte	.LLST14
	.uleb128 0x23
	.4byte	0x871
	.4byte	0x7a6
	.4byte	.LBB10
	.4byte	.LBE10
	.byte	0x3
	.2byte	0x36b
	.uleb128 0x24
	.4byte	0x7b7
	.byte	0x0
	.uleb128 0x25
	.4byte	0x7e6
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x3
	.2byte	0x372
	.uleb128 0x24
	.4byte	0x802
	.uleb128 0x24
	.4byte	0x7f7
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xef
	.uleb128 0x26
	.4byte	0x8ce
	.byte	0x1
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x153
	.byte	0x1
	.4byte	0x274
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST15
	.uleb128 0x21
	.4byte	.LASF101
	.byte	0x3
	.2byte	0x153
	.4byte	0x685
	.4byte	.LLST16
	.uleb128 0x21
	.4byte	.LASF111
	.byte	0x3
	.2byte	0x153
	.4byte	0x7c3
	.4byte	.LLST17
	.byte	0x0
	.uleb128 0x16
	.4byte	0x932
	.4byte	.LASF117
	.byte	0x3
	.byte	0xc0
	.byte	0x1
	.4byte	0x274
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LLST18
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x3
	.byte	0xc0
	.4byte	0x685
	.4byte	.LLST19
	.uleb128 0x17
	.4byte	.LASF118
	.byte	0x3
	.byte	0xc0
	.4byte	0x932
	.4byte	.LLST20
	.uleb128 0x17
	.4byte	.LASF119
	.byte	0x3
	.byte	0xc0
	.4byte	0x274
	.4byte	.LLST21
	.uleb128 0x27
	.4byte	.LASF120
	.byte	0x3
	.byte	0xc1
	.4byte	0x5d4
	.uleb128 0x28
	.4byte	.LASF121
	.byte	0x3
	.byte	0xc3
	.4byte	0x249
	.4byte	.LLST22
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5d4
	.uleb128 0x26
	.4byte	0x9be
	.byte	0x1
	.4byte	.LASF122
	.byte	0x3
	.2byte	0x216
	.byte	0x1
	.4byte	0x274
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LLST23
	.uleb128 0x21
	.4byte	.LASF101
	.byte	0x3
	.2byte	0x216
	.4byte	0x685
	.4byte	.LLST24
	.uleb128 0x21
	.4byte	.LASF111
	.byte	0x3
	.2byte	0x216
	.4byte	0x7c3
	.4byte	.LLST25
	.uleb128 0x29
	.4byte	.LASF123
	.byte	0x3
	.2byte	0x217
	.4byte	0x5d4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.4byte	.LASF124
	.byte	0x3
	.2byte	0x218
	.4byte	0x5d4
	.uleb128 0x2a
	.4byte	.LASF125
	.byte	0x3
	.2byte	0x21b
	.4byte	0x274
	.uleb128 0x2b
	.4byte	.LASF126
	.byte	0x3
	.2byte	0x21c
	.4byte	0x274
	.4byte	.LLST26
	.uleb128 0x29
	.4byte	.LASF97
	.byte	0x3
	.2byte	0x21e
	.4byte	0x621
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x26
	.4byte	0xa5a
	.byte	0x1
	.4byte	.LASF127
	.byte	0x3
	.2byte	0x169
	.byte	0x1
	.4byte	0x274
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST27
	.uleb128 0x21
	.4byte	.LASF101
	.byte	0x3
	.2byte	0x169
	.4byte	0x685
	.4byte	.LLST28
	.uleb128 0x21
	.4byte	.LASF111
	.byte	0x3
	.2byte	0x169
	.4byte	0x7c3
	.4byte	.LLST29
	.uleb128 0x29
	.4byte	.LASF123
	.byte	0x3
	.2byte	0x16a
	.4byte	0x5d4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.4byte	.LASF124
	.byte	0x3
	.2byte	0x16b
	.4byte	0x5d4
	.uleb128 0x2a
	.4byte	.LASF125
	.byte	0x3
	.2byte	0x16e
	.4byte	0x274
	.uleb128 0x2b
	.4byte	.LASF126
	.byte	0x3
	.2byte	0x16f
	.4byte	0x274
	.4byte	.LLST30
	.uleb128 0x2c
	.ascii	"i\000"
	.byte	0x3
	.2byte	0x171
	.4byte	0x25
	.uleb128 0x2a
	.4byte	.LASF128
	.byte	0x3
	.2byte	0x172
	.4byte	0x25
	.uleb128 0x29
	.4byte	.LASF97
	.byte	0x3
	.2byte	0x174
	.4byte	0x621
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x0
	.uleb128 0x1d
	.4byte	0xb35
	.byte	0x1
	.4byte	.LASF129
	.byte	0x3
	.byte	0xe3
	.byte	0x1
	.4byte	0x274
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST31
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x3
	.byte	0xe3
	.4byte	0x685
	.4byte	.LLST32
	.uleb128 0x17
	.4byte	.LASF111
	.byte	0x3
	.byte	0xe3
	.4byte	0x7c3
	.4byte	.LLST33
	.uleb128 0x2d
	.4byte	.LASF123
	.byte	0x3
	.byte	0xe4
	.4byte	0x5d4
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.4byte	.LASF124
	.byte	0x3
	.byte	0xe5
	.4byte	0x5d4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.4byte	.LASF97
	.byte	0x3
	.byte	0xe7
	.4byte	0x621
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.4byte	.LASF130
	.byte	0x3
	.byte	0xe9
	.4byte	0x274
	.uleb128 0x27
	.4byte	.LASF131
	.byte	0x3
	.byte	0xe9
	.4byte	0x274
	.uleb128 0x27
	.4byte	.LASF132
	.byte	0x3
	.byte	0xea
	.4byte	0x249
	.uleb128 0x27
	.4byte	.LASF128
	.byte	0x3
	.byte	0xeb
	.4byte	0x25
	.uleb128 0x2d
	.4byte	.LASF133
	.byte	0x3
	.byte	0xec
	.4byte	0x234
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.4byte	.LASF134
	.byte	0x3
	.byte	0xec
	.4byte	0x234
	.4byte	.LLST34
	.uleb128 0x2d
	.4byte	.LASF99
	.byte	0x3
	.byte	0xed
	.4byte	0x5f
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.4byte	.LASF135
	.byte	0x3
	.byte	0xee
	.4byte	0x274
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.ascii	"i\000"
	.byte	0x3
	.byte	0xf0
	.4byte	0x25
	.4byte	.LLST35
	.byte	0x0
	.uleb128 0x26
	.4byte	0xb84
	.byte	0x1
	.4byte	.LASF136
	.byte	0x3
	.2byte	0x149
	.byte	0x1
	.4byte	0x274
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST36
	.uleb128 0x21
	.4byte	.LASF101
	.byte	0x3
	.2byte	0x149
	.4byte	0x685
	.4byte	.LLST37
	.uleb128 0x21
	.4byte	.LASF111
	.byte	0x3
	.2byte	0x149
	.4byte	0x7c3
	.4byte	.LLST38
	.uleb128 0x21
	.4byte	.LASF137
	.byte	0x3
	.2byte	0x149
	.4byte	0x249
	.4byte	.LLST39
	.byte	0x0
	.uleb128 0x2f
	.4byte	0xc0d
	.4byte	.LASF138
	.byte	0x3
	.2byte	0x27b
	.byte	0x1
	.4byte	0x274
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LLST40
	.uleb128 0x21
	.4byte	.LASF101
	.byte	0x3
	.2byte	0x27b
	.4byte	0x685
	.4byte	.LLST41
	.uleb128 0x21
	.4byte	.LASF139
	.byte	0x3
	.2byte	0x27b
	.4byte	0x6c
	.4byte	.LLST42
	.uleb128 0x21
	.4byte	.LASF137
	.byte	0x3
	.2byte	0x27b
	.4byte	0x249
	.4byte	.LLST43
	.uleb128 0x29
	.4byte	.LASF140
	.byte	0x3
	.2byte	0x27c
	.4byte	0x641
	.byte	0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2b
	.4byte	.LASF141
	.byte	0x3
	.2byte	0x27d
	.4byte	0x274
	.4byte	.LLST44
	.uleb128 0x29
	.4byte	.LASF142
	.byte	0x3
	.2byte	0x27e
	.4byte	0xc0d
	.byte	0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2a
	.4byte	.LASF143
	.byte	0x3
	.2byte	0x27f
	.4byte	0x249
	.byte	0x0
	.uleb128 0xa
	.4byte	0xc1d
	.4byte	0x65
	.uleb128 0xb
	.4byte	0x41
	.byte	0xc
	.byte	0x0
	.uleb128 0x26
	.4byte	0xcf8
	.byte	0x1
	.4byte	.LASF144
	.byte	0x3
	.2byte	0x1a2
	.byte	0x1
	.4byte	0x274
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LLST45
	.uleb128 0x21
	.4byte	.LASF101
	.byte	0x3
	.2byte	0x1a2
	.4byte	0x685
	.4byte	.LLST46
	.uleb128 0x21
	.4byte	.LASF111
	.byte	0x3
	.2byte	0x1a2
	.4byte	0x7c3
	.4byte	.LLST47
	.uleb128 0x21
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x1a2
	.4byte	0x6c
	.4byte	.LLST48
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0x3
	.2byte	0x1a2
	.4byte	0x6c
	.4byte	.LLST49
	.uleb128 0x2b
	.4byte	.LASF143
	.byte	0x3
	.2byte	0x1a3
	.4byte	0x85
	.4byte	.LLST50
	.uleb128 0x2b
	.4byte	.LASF147
	.byte	0x3
	.2byte	0x1a4
	.4byte	0x6c
	.4byte	.LLST51
	.uleb128 0x29
	.4byte	.LASF148
	.byte	0x3
	.2byte	0x1a5
	.4byte	0x6c
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.4byte	.LASF137
	.byte	0x3
	.2byte	0x1a6
	.4byte	0x249
	.4byte	.LLST52
	.uleb128 0x29
	.4byte	.LASF141
	.byte	0x3
	.2byte	0x1a7
	.4byte	0x274
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.4byte	.LASF142
	.byte	0x3
	.2byte	0x1a9
	.4byte	0xc0d
	.byte	0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2b
	.4byte	.LASF131
	.byte	0x3
	.2byte	0x1ab
	.4byte	0x274
	.4byte	.LLST53
	.uleb128 0x29
	.4byte	.LASF130
	.byte	0x3
	.2byte	0x1ab
	.4byte	0x274
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x0
	.uleb128 0x26
	.4byte	0xd47
	.byte	0x1
	.4byte	.LASF149
	.byte	0x3
	.2byte	0x356
	.byte	0x1
	.4byte	0x274
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LLST54
	.uleb128 0x21
	.4byte	.LASF101
	.byte	0x3
	.2byte	0x356
	.4byte	0x685
	.4byte	.LLST55
	.uleb128 0x21
	.4byte	.LASF145
	.byte	0x3
	.2byte	0x356
	.4byte	0x6c
	.4byte	.LLST56
	.uleb128 0x29
	.4byte	.LASF111
	.byte	0x3
	.2byte	0x357
	.4byte	0x641
	.byte	0x3
	.byte	0x91
	.sleb128 -328
	.byte	0x0
	.uleb128 0x1d
	.4byte	0xd97
	.byte	0x1
	.4byte	.LASF150
	.byte	0x3
	.byte	0x6c
	.byte	0x1
	.4byte	0x274
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LLST57
	.uleb128 0x17
	.4byte	.LASF139
	.byte	0x3
	.byte	0x6c
	.4byte	0x6c
	.4byte	.LLST58
	.uleb128 0x2e
	.ascii	"i\000"
	.byte	0x3
	.byte	0x6d
	.4byte	0x249
	.4byte	.LLST59
	.uleb128 0x27
	.4byte	.LASF151
	.byte	0x3
	.byte	0x6e
	.4byte	0x249
	.uleb128 0x1c
	.ascii	"dot\000"
	.byte	0x3
	.byte	0x6f
	.4byte	0x6c
	.byte	0x0
	.uleb128 0x1d
	.4byte	0xdda
	.byte	0x1
	.4byte	.LASF152
	.byte	0x3
	.byte	0x56
	.byte	0x1
	.4byte	0x274
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LLST60
	.uleb128 0x17
	.4byte	.LASF139
	.byte	0x3
	.byte	0x56
	.4byte	0x6c
	.4byte	.LLST61
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x3
	.byte	0x57
	.4byte	0x249
	.byte	0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	.LASF151
	.byte	0x3
	.byte	0x58
	.4byte	0x249
	.byte	0x0
	.uleb128 0x30
	.4byte	0xe65
	.4byte	.LASF153
	.byte	0x3
	.2byte	0x234
	.byte	0x1
	.4byte	0x274
	.byte	0x1
	.uleb128 0x31
	.4byte	.LASF101
	.byte	0x3
	.2byte	0x234
	.4byte	0x685
	.uleb128 0x31
	.4byte	.LASF111
	.byte	0x3
	.2byte	0x234
	.4byte	0x7c3
	.uleb128 0x31
	.4byte	.LASF137
	.byte	0x3
	.2byte	0x234
	.4byte	0x249
	.uleb128 0x31
	.4byte	.LASF154
	.byte	0x3
	.2byte	0x234
	.4byte	0x249
	.uleb128 0x2a
	.4byte	.LASF155
	.byte	0x3
	.2byte	0x235
	.4byte	0x5d4
	.uleb128 0x2a
	.4byte	.LASF156
	.byte	0x3
	.2byte	0x236
	.4byte	0x5d4
	.uleb128 0x2a
	.4byte	.LASF97
	.byte	0x3
	.2byte	0x238
	.4byte	0x621
	.uleb128 0x2a
	.4byte	.LASF157
	.byte	0x3
	.2byte	0x23a
	.4byte	0x249
	.uleb128 0x2a
	.4byte	.LASF158
	.byte	0x3
	.2byte	0x23c
	.4byte	0x274
	.uleb128 0x2a
	.4byte	.LASF125
	.byte	0x3
	.2byte	0x23c
	.4byte	0x274
	.byte	0x0
	.uleb128 0x26
	.4byte	0xf96
	.byte	0x1
	.4byte	.LASF159
	.byte	0x3
	.2byte	0x29e
	.byte	0x1
	.4byte	0x274
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LLST62
	.uleb128 0x21
	.4byte	.LASF101
	.byte	0x3
	.2byte	0x29e
	.4byte	0x685
	.4byte	.LLST63
	.uleb128 0x21
	.4byte	.LASF111
	.byte	0x3
	.2byte	0x29e
	.4byte	0x7c3
	.4byte	.LLST64
	.uleb128 0x21
	.4byte	.LASF137
	.byte	0x3
	.2byte	0x29e
	.4byte	0x249
	.4byte	.LLST65
	.uleb128 0x2b
	.4byte	.LASF160
	.byte	0x3
	.2byte	0x29f
	.4byte	0x249
	.4byte	.LLST66
	.uleb128 0x29
	.4byte	.LASF161
	.byte	0x3
	.2byte	0x2a0
	.4byte	0x621
	.byte	0x3
	.byte	0x91
	.sleb128 -137
	.uleb128 0x32
	.ascii	"i\000"
	.byte	0x3
	.2byte	0x2a1
	.4byte	0x254
	.4byte	.LLST67
	.uleb128 0x32
	.ascii	"j\000"
	.byte	0x3
	.2byte	0x2a1
	.4byte	0x254
	.4byte	.LLST68
	.uleb128 0x2b
	.4byte	.LASF162
	.byte	0x3
	.2byte	0x2a2
	.4byte	0x5f
	.4byte	.LLST69
	.uleb128 0x29
	.4byte	.LASF163
	.byte	0x3
	.2byte	0x2a3
	.4byte	0x5d4
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.4byte	.LASF125
	.byte	0x3
	.2byte	0x2a4
	.4byte	0x274
	.uleb128 0x2b
	.4byte	.LASF164
	.byte	0x3
	.2byte	0x2a5
	.4byte	0x234
	.4byte	.LLST70
	.uleb128 0x29
	.4byte	.LASF142
	.byte	0x3
	.2byte	0x2a6
	.4byte	0xc0d
	.byte	0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x25
	.4byte	0xdda
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x3
	.2byte	0x32f
	.uleb128 0x24
	.4byte	0xe10
	.uleb128 0x24
	.4byte	0xe04
	.uleb128 0x24
	.4byte	0xdf8
	.uleb128 0x24
	.4byte	0xdec
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x38
	.uleb128 0x34
	.4byte	0xe1c
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.4byte	0xe28
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.4byte	0xe34
	.byte	0x3
	.byte	0x91
	.sleb128 -105
	.uleb128 0x35
	.4byte	0xe40
	.4byte	.LLST71
	.uleb128 0x35
	.4byte	0xe4c
	.4byte	.LLST72
	.uleb128 0x35
	.4byte	0xe58
	.4byte	.LLST73
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.4byte	.LASF165
	.byte	0xe
	.byte	0x27
	.4byte	0x6c
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0xfb3
	.4byte	0x25
	.uleb128 0xb
	.4byte	0x41
	.byte	0xc
	.byte	0x0
	.uleb128 0x37
	.4byte	.LASF166
	.byte	0x3
	.byte	0x51
	.4byte	0xfc5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	LFN_offset_table
	.uleb128 0x6
	.4byte	0xfa3
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0x0
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
	.uleb128 0x16
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
	.uleb128 0x19
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
	.uleb128 0xa
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x19c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xfcb
	.4byte	0x75c
	.ascii	"_FAT_directory_entryGetCluster\000"
	.4byte	0x80e
	.ascii	"_FAT_directory_entryStat\000"
	.4byte	0x88f
	.ascii	"_FAT_directory_getRootEntry\000"
	.4byte	0x938
	.ascii	"_FAT_directory_removeEntry\000"
	.4byte	0x9be
	.ascii	"_FAT_directory_entryFromPosition\000"
	.4byte	0xa5a
	.ascii	"_FAT_directory_getNextEntry\000"
	.4byte	0xb35
	.ascii	"_FAT_directory_getFirstEntry\000"
	.4byte	0xc1d
	.ascii	"_FAT_directory_entryFromPath\000"
	.4byte	0xcf8
	.ascii	"_FAT_directory_chdir\000"
	.4byte	0xd47
	.ascii	"_FAT_directory_isValidAlias\000"
	.4byte	0xd97
	.ascii	"_FAT_directory_isValidLfn\000"
	.4byte	0xe65
	.ascii	"_FAT_directory_addEntry\000"
	.4byte	0xfb3
	.ascii	"LFN_offset_table\000"
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
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF139:
	.ascii	"name\000"
.LASF89:
	.ascii	"sectorsPerCluster\000"
.LASF152:
	.ascii	"_FAT_directory_isValidLfn\000"
.LASF59:
	.ascii	"fn_clearStatus\000"
.LASF83:
	.ascii	"totalSize\000"
.LASF52:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF57:
	.ascii	"fn_readSectors\000"
.LASF160:
	.ascii	"entrySize\000"
.LASF103:
	.ascii	"u8array_to_u16\000"
.LASF33:
	.ascii	"st_blksize\000"
.LASF12:
	.ascii	"ino_t\000"
.LASF144:
	.ascii	"_FAT_directory_entryFromPath\000"
.LASF92:
	.ascii	"openFileCount\000"
.LASF159:
	.ascii	"_FAT_directory_addEntry\000"
.LASF98:
	.ascii	"dataEnd\000"
.LASF109:
	.ascii	"_FAT_disc_hostType\000"
.LASF100:
	.ascii	"DIR_ENTRY\000"
.LASF127:
	.ascii	"_FAT_directory_entryFromPosition\000"
.LASF39:
	.ascii	"uint32_t\000"
.LASF96:
	.ascii	"DIR_ENTRY_POSITION\000"
.LASF113:
	.ascii	"u8array_to_u32\000"
.LASF91:
	.ascii	"cwdCluster\000"
.LASF40:
	.ascii	"float\000"
.LASF63:
	.ascii	"count\000"
.LASF141:
	.ascii	"foundFile\000"
.LASF65:
	.ascii	"CACHE_ENTRY\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF34:
	.ascii	"st_blocks\000"
.LASF132:
	.ascii	"maxSectors\000"
.LASF66:
	.ascii	"disc\000"
.LASF157:
	.ascii	"dirEntryRemain\000"
.LASF53:
	.ascii	"ioType\000"
.LASF126:
	.ascii	"finished\000"
.LASF135:
	.ascii	"lfnExists\000"
.LASF58:
	.ascii	"fn_writeSectors\000"
.LASF106:
	.ascii	"value\000"
.LASF115:
	.ascii	"_FAT_directory_entryStat\000"
.LASF51:
	.ascii	"stat\000"
.LASF60:
	.ascii	"fn_shutdown\000"
.LASF19:
	.ascii	"st_dev\000"
.LASF50:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF78:
	.ascii	"lastCluster\000"
.LASF10:
	.ascii	"size_t\000"
.LASF158:
	.ascii	"endOfDirectory\000"
.LASF116:
	.ascii	"_FAT_directory_getRootEntry\000"
.LASF95:
	.ascii	"offset\000"
.LASF149:
	.ascii	"_FAT_directory_chdir\000"
.LASF24:
	.ascii	"st_gid\000"
.LASF21:
	.ascii	"st_mode\000"
.LASF72:
	.ascii	"FS_FAT12\000"
.LASF124:
	.ascii	"entryEnd\000"
.LASF73:
	.ascii	"FS_FAT16\000"
.LASF22:
	.ascii	"st_nlink\000"
.LASF145:
	.ascii	"path\000"
.LASF156:
	.ascii	"gapEnd\000"
.LASF43:
	.ascii	"true\000"
.LASF121:
	.ascii	"tempCluster\000"
.LASF122:
	.ascii	"_FAT_directory_removeEntry\000"
.LASF94:
	.ascii	"cluster\000"
.LASF87:
	.ascii	"dataStart\000"
.LASF93:
	.ascii	"PARTITION\000"
.LASF46:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF6:
	.ascii	"char\000"
.LASF150:
	.ascii	"_FAT_directory_isValidAlias\000"
.LASF47:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF81:
	.ascii	"readOnly\000"
.LASF134:
	.ascii	"chkSum\000"
.LASF86:
	.ascii	"numberOfSectors\000"
.LASF62:
	.ascii	"sector\000"
.LASF36:
	.ascii	"uint8_t\000"
.LASF128:
	.ascii	"lfnPos\000"
.LASF165:
	.ascii	"__ctype_ptr\000"
.LASF11:
	.ascii	"time_t\000"
.LASF162:
	.ascii	"tmpCharPtr\000"
.LASF164:
	.ascii	"aliasCheckSum\000"
.LASF69:
	.ascii	"pages\000"
.LASF70:
	.ascii	"CACHE\000"
.LASF20:
	.ascii	"st_ino\000"
.LASF118:
	.ascii	"entryPosition\000"
.LASF131:
	.ascii	"found\000"
.LASF1:
	.ascii	"long long int\000"
.LASF74:
	.ascii	"FS_FAT32\000"
.LASF169:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF102:
	.ascii	"_FAT_fat_clusterToSector\000"
.LASF13:
	.ascii	"dev_t\000"
.LASF49:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF44:
	.ascii	"bool\000"
.LASF112:
	.ascii	"_FAT_directory_isWritable\000"
.LASF161:
	.ascii	"lfnEntry\000"
.LASF143:
	.ascii	"dirnameLength\000"
.LASF79:
	.ascii	"firstFree\000"
.LASF110:
	.ascii	"_FAT_directory_isDirectory\000"
.LASF77:
	.ascii	"sectorsPerFat\000"
.LASF154:
	.ascii	"size\000"
.LASF142:
	.ascii	"alias\000"
.LASF56:
	.ascii	"fn_isInserted\000"
.LASF88:
	.ascii	"bytesPerSector\000"
.LASF28:
	.ascii	"st_spare1\000"
.LASF30:
	.ascii	"st_spare2\000"
.LASF32:
	.ascii	"st_spare3\000"
.LASF35:
	.ascii	"st_spare4\000"
.LASF133:
	.ascii	"lfnChkSum\000"
.LASF61:
	.ascii	"IO_INTERFACE\000"
.LASF80:
	.ascii	"cache\000"
.LASF54:
	.ascii	"features\000"
.LASF129:
	.ascii	"_FAT_directory_getNextEntry\000"
.LASF45:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF29:
	.ascii	"st_mtime\000"
.LASF64:
	.ascii	"dirty\000"
.LASF37:
	.ascii	"uint16_t\000"
.LASF114:
	.ascii	"_FAT_directory_entryGetCluster\000"
.LASF16:
	.ascii	"gid_t\000"
.LASF55:
	.ascii	"fn_startup\000"
.LASF90:
	.ascii	"bytesPerCluster\000"
.LASF15:
	.ascii	"uid_t\000"
.LASF140:
	.ascii	"tempEntry\000"
.LASF5:
	.ascii	"short int\000"
.LASF42:
	.ascii	"false\000"
.LASF0:
	.ascii	"long int\000"
.LASF84:
	.ascii	"rootDirStart\000"
.LASF31:
	.ascii	"st_ctime\000"
.LASF166:
	.ascii	"LFN_offset_table\000"
.LASF107:
	.ascii	"_FAT_directory_entryGetAlias\000"
.LASF117:
	.ascii	"_FAT_directory_incrementDirEntryPosition\000"
.LASF119:
	.ascii	"extendDirectory\000"
.LASF123:
	.ascii	"entryStart\000"
.LASF101:
	.ascii	"partition\000"
.LASF2:
	.ascii	"unsigned int\000"
.LASF75:
	.ascii	"FS_TYPE\000"
.LASF4:
	.ascii	"long unsigned int\000"
.LASF85:
	.ascii	"rootDirCluster\000"
.LASF38:
	.ascii	"int32_t\000"
.LASF105:
	.ascii	"u16_to_u8array\000"
.LASF155:
	.ascii	"gapStart\000"
.LASF71:
	.ascii	"FS_UNKNOWN\000"
.LASF111:
	.ascii	"entry\000"
.LASF18:
	.ascii	"nlink_t\000"
.LASF167:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF27:
	.ascii	"st_atime\000"
.LASF148:
	.ascii	"nextPathPosition\000"
.LASF97:
	.ascii	"entryData\000"
.LASF68:
	.ascii	"cacheEntries\000"
.LASF99:
	.ascii	"filename\000"
.LASF151:
	.ascii	"nameLength\000"
.LASF130:
	.ascii	"notFound\000"
.LASF26:
	.ascii	"st_size\000"
.LASF137:
	.ascii	"dirCluster\000"
.LASF76:
	.ascii	"fatStart\000"
.LASF104:
	.ascii	"item\000"
.LASF168:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/direc"
	.ascii	"tory.c\000"
.LASF23:
	.ascii	"st_uid\000"
.LASF9:
	.ascii	"signed char\000"
.LASF17:
	.ascii	"mode_t\000"
.LASF153:
	.ascii	"_FAT_directory_findEntryGap\000"
.LASF82:
	.ascii	"filesysType\000"
.LASF14:
	.ascii	"off_t\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF138:
	.ascii	"_FAT_directory_entryExists\000"
.LASF48:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF41:
	.ascii	"double\000"
.LASF146:
	.ascii	"pathEnd\000"
.LASF25:
	.ascii	"st_rdev\000"
.LASF125:
	.ascii	"entryStillValid\000"
.LASF147:
	.ascii	"pathPosition\000"
.LASF136:
	.ascii	"_FAT_directory_getFirstEntry\000"
.LASF67:
	.ascii	"numberOfPages\000"
.LASF108:
	.ascii	"destName\000"
.LASF120:
	.ascii	"position\000"
.LASF163:
	.ascii	"curEntryPos\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
