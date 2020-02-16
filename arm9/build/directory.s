	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
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
	.code	16
	.thumb_func
	.type	_FAT_directory_entryGetAlias, %function
_FAT_directory_entryGetAlias:
.LFB20:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/directory.c"
	.loc 1 155 0
	push	{r4, r5, lr}
.LCFI0:
.LVL0:
	.loc 1 159 0
	mov	r3, #0
	strb	r3, [r1]
	.loc 1 160 0
	ldrb	r2, [r0]
	cmp	r2, #229
	beq	.L2
	.loc 1 161 0
	cmp	r2, #46
	bne	.L4
	.loc 1 162 0
	strb	r2, [r1]
	.loc 1 163 0
	ldrb	r2, [r0, #1]
	cmp	r2, #46
	bne	.L5
	.loc 1 164 0
	strb	r2, [r1, #1]
	.loc 1 165 0
	strb	r3, [r1, #2]
	b	.L2
.L5:
	.loc 1 167 0
	strb	r3, [r1, #1]
	b	.L2
.LVL1:
.L7:
	.loc 1 172 0
	strb	r2, [r1, r3]
	.loc 1 171 0
	add	r3, r3, #1
	cmp	r3, #8
	beq	.L6
.L4:
	ldrb	r2, [r0, r3]
	cmp	r2, #32
	bne	.L7
.L6:
	.loc 1 175 0
	ldrb	r2, [r0, #8]
	mov	r4, r0
	add	r4, r4, #8
	cmp	r2, #32
	beq	.L8
	.loc 1 176 0
	mov	r5, r3
	add	r2, r1, r3
	mov	r0, #46
.LVL2:
	strb	r0, [r2]
	add	r3, r3, #1
	mov	r0, r4
	.loc 1 155 0
	add	r5, r5, #4
.LVL3:
	b	.L9
.LVL4:
.L10:
	.loc 1 178 0
	add	r3, r3, #1
.LVL5:
	strb	r4, [r2, #1]
	add	r0, r0, #1
	add	r2, r2, #1
	.loc 1 177 0
	cmp	r3, r5
	beq	.L8
.LVL6:
.L9:
	ldrb	r4, [r0]
	cmp	r4, #32
	bne	.L10
.LVL7:
.L8:
	.loc 1 181 0
	mov	r2, #0
	strb	r2, [r1, r3]
.L2:
	ldrb	r0, [r1]
.LVL8:
	.loc 1 186 0
	@ sp needed for prologue
	.loc 1 181 0
	sub	r3, r0, #1
	sbc	r0, r0, r3
.LVL9:
.LVL10:
	.loc 1 186 0
	pop	{r4, r5, pc}
.LFE20:
	.size	_FAT_directory_entryGetAlias, .-_FAT_directory_entryGetAlias
	.align	2
	.global	_FAT_directory_entryGetCluster
	.code	16
	.thumb_func
	.type	_FAT_directory_entryGetCluster, %function
_FAT_directory_entryGetCluster:
.LFB21:
	.loc 1 188 0
.LVL11:
	.loc 1 188 0
	ldrb	r3, [r0, #21]
	ldrb	r2, [r0, #20]
	ldrb	r1, [r0, #27]
	lsl	r3, r3, #8
	orr	r3, r3, r2
	lsl	r1, r1, #8
	ldrb	r2, [r0, #26]
	mov	r0, r1
.LVL12:
	lsl	r3, r3, #16
	orr	r0, r0, r2
	orr	r0, r0, r3
	.loc 1 190 0
	@ sp needed for prologue
	bx	lr
.LFE21:
	.size	_FAT_directory_entryGetCluster, .-_FAT_directory_entryGetCluster
	.align	2
	.global	_FAT_directory_entryStat
	.code	16
	.thumb_func
	.type	_FAT_directory_entryStat, %function
_FAT_directory_entryStat:
.LFB33:
	.loc 1 870 0
	push	{r4, r5, r6, lr}
.LCFI1:
.LVL13:
	.loc 1 873 0
	ldr	r3, [r0]
	.loc 1 870 0
	mov	r5, r1
	.loc 1 873 0
	ldr	r3, [r3]
	.loc 1 870 0
	mov	r4, r2
	.loc 1 873 0
	str	r3, [r2]
	.loc 1 874 0
	ldrb	r1, [r1, #21]
.LVL14:
	ldrb	r0, [r5, #20]
.LVL15:
	ldrb	r2, [r5, #27]
.LVL16:
	lsl	r1, r1, #8
	orr	r1, r1, r0
	ldrb	r0, [r5, #26]
	lsl	r2, r2, #8
	lsl	r1, r1, #16
	orr	r2, r2, r0
	orr	r2, r2, r1
	str	r2, [r4, #4]
.LBB70:
.LBB71:
	.file 2 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/directory.h"
	.loc 2 94 0
	ldrb	r1, [r5, #11]
.LBE71:
.LBE70:
	.loc 1 876 0
	lsl	r0, r1, #27
	bmi	.L16
	ldr	r2, .L21
	b	.L17
.L16:
	ldr	r2, .L21+4
.L17:
	.loc 1 875 0
	lsl	r0, r1, #31
	bmi	.L18
	mov	r1, #146
	b	.L19
.L18:
	mov	r1, #0
.L19:
	orr	r2, r2, r1
	str	r2, [r4, #8]
	.loc 1 878 0
	mov	r2, #1
	strh	r2, [r4, #12]
	.loc 1 879 0
	strh	r2, [r4, #14]
	.loc 1 880 0
	mov	r2, #2
	strh	r2, [r4, #16]
	.loc 1 881 0
	str	r3, [r4, #20]
	.loc 1 882 0
	ldrb	r2, [r5, #29]
	ldrb	r3, [r5, #30]
	lsl	r2, r2, #8
	lsl	r3, r3, #16
	orr	r3, r3, r2
	ldrb	r2, [r5, #28]
	.loc 1 883 0
	mov	r0, #0
	.loc 1 882 0
	orr	r3, r3, r2
	ldrb	r2, [r5, #31]
	.loc 1 887 0
	mov	r6, #0
	.loc 1 882 0
	lsl	r2, r2, #24
	orr	r3, r3, r2
	str	r3, [r4, #24]
	.loc 1 883 0
	ldrb	r1, [r5, #19]
	ldrb	r3, [r5, #18]
	lsl	r1, r1, #8
	orr	r1, r1, r3
	bl	_FAT_filetime_to_time_t
	.loc 1 887 0
	str	r6, [r4, #32]
	.loc 1 883 0
	str	r0, [r4, #28]
	.loc 1 888 0
	ldrb	r0, [r5, #23]
	ldrb	r3, [r5, #22]
	ldrb	r1, [r5, #25]
	lsl	r0, r0, #8
	orr	r0, r0, r3
	ldrb	r3, [r5, #24]
	lsl	r1, r1, #8
	orr	r1, r1, r3
	bl	_FAT_filetime_to_time_t
	.loc 1 892 0
	str	r6, [r4, #40]
	.loc 1 888 0
	str	r0, [r4, #36]
	.loc 1 893 0
	ldrb	r0, [r5, #15]
	ldrb	r3, [r5, #14]
	ldrb	r1, [r5, #17]
	lsl	r0, r0, #8
	orr	r0, r0, r3
	ldrb	r3, [r5, #16]
	lsl	r1, r1, #8
	orr	r1, r1, r3
	bl	_FAT_filetime_to_time_t
	.loc 1 898 0
	mov	r3, #128
	lsl	r3, r3, #2
	str	r3, [r4, #52]
	.loc 1 899 0
	ldr	r2, .L21+8
	ldr	r3, [r4, #24]
	.loc 1 897 0
	str	r6, [r4, #48]
	.loc 1 899 0
	add	r3, r3, r2
	asr	r2, r3, #31
	lsr	r2, r2, #23
	add	r3, r2, r3
	asr	r3, r3, #9
	.loc 1 900 0
	str	r6, [r4, #60]
	.loc 1 901 0
	str	r6, [r4, #64]
	.loc 1 893 0
	str	r0, [r4, #44]
	.loc 1 899 0
	str	r3, [r4, #56]
	.loc 1 902 0
	@ sp needed for prologue
.LVL17:
.LVL18:
	pop	{r4, r5, r6, pc}
.L22:
	.align	2
.L21:
	.word	33060
	.word	16676
	.word	511
.LFE33:
	.size	_FAT_directory_entryStat, .-_FAT_directory_entryStat
	.align	2
	.global	_FAT_directory_getRootEntry
	.code	16
	.thumb_func
	.type	_FAT_directory_getRootEntry, %function
_FAT_directory_getRootEntry:
.LFB25:
	.loc 1 339 0
	push	{r3, r4, r5, r6, r7, lr}
.LCFI2:
.LVL19:
	.loc 1 340 0
	mov	r3, #0
	str	r3, [r1, #32]
	.loc 1 341 0
	str	r3, [r1, #36]
	.loc 1 342 0
	str	r3, [r1, #40]
	.loc 1 344 0
	mov	r2, r1
	mov	r3, r1
	.loc 1 339 0
	mov	r4, r1
	.loc 1 344 0
	add	r3, r3, #44
	add	r2, r2, #32
	.loc 1 339 0
	mov	r5, r0
	.loc 1 344 0
	ldmia	r2!, {r0, r1, r6}
	stmia	r3!, {r0, r1, r6}
.LVL20:
	.loc 1 346 0
	mov	r6, r4
	add	r6, r6, #56
	mov	r2, #128
	.loc 1 347 0
	mov	r7, #46
	.loc 1 346 0
	mov	r0, r6
	lsl	r2, r2, #1
	mov	r1, #0
	bl	memset
	.loc 1 347 0
	strb	r7, [r6]
	.loc 1 349 0
	mov	r0, r4
	mov	r1, #0
	mov	r2, #32
	bl	memset
	.loc 1 350 0
	mov	r0, r4
	mov	r1, #32
	mov	r2, #11
	bl	memset
	.loc 1 353 0
	mov	r3, #16
	.loc 1 351 0
	strb	r7, [r4]
	.loc 1 353 0
	strb	r3, [r4, #11]
	.loc 1 355 0
	ldr	r3, [r5, #20]
	.loc 1 359 0
	mov	r0, #1
.LBB72:
.LBB73:
	.file 3 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/bit_ops.h"
	.loc 3 47 0
	strb	r3, [r4, #26]
	.loc 3 48 0
	lsr	r3, r3, #8
	strb	r3, [r4, #27]
.LBE73:
.LBE72:
	.loc 1 356 0
	ldrh	r3, [r5, #22]
	.loc 1 359 0
	@ sp needed for prologue
.LBB74:
.LBB75:
	.loc 3 47 0
	strb	r3, [r4, #20]
	.loc 3 48 0
	lsr	r3, r3, #8
	strb	r3, [r4, #21]
.LVL21:
.LVL22:
.LBE75:
.LBE74:
	.loc 1 359 0
	pop	{r3, r4, r5, r6, r7, pc}
.LFE25:
	.size	_FAT_directory_getRootEntry, .-_FAT_directory_getRootEntry
	.align	2
	.code	16
	.thumb_func
	.type	_FAT_directory_incrementDirEntryPosition, %function
_FAT_directory_incrementDirEntryPosition:
.LFB22:
	.loc 1 192 0
	push	{r3, r4, r5, r6, r7, lr}
.LCFI3:
.LVL23:
	.loc 1 192 0
	mov	r7, r2
	.loc 1 194 0
	ldr	r2, [r1, #8]
.LVL24:
	.loc 1 192 0
	mov	r5, r0
	.loc 1 198 0
	add	r2, r2, #1
	.loc 1 192 0
	mov	r4, r1
	.loc 1 194 0
	ldr	r6, [r1]
	ldr	r3, [r1, #4]
	.loc 1 199 0
	cmp	r2, #16
	bne	.L26
.LVL25:
	.loc 1 204 0
	ldr	r2, [r0, #36]
	.loc 1 202 0
	add	r3, r3, #1
	.loc 1 204 0
	cmp	r3, r2
	bne	.L27
.LVL26:
	cmp	r6, #0
	beq	.L28
	.loc 1 207 0
	mov	r1, r6
.LVL27:
	bl	_FAT_fat_nextCluster
.LVL28:
	.loc 1 208 0
	ldr	r3, .L34
	cmp	r0, r3
	bne	.L33
.LVL29:
	.loc 1 209 0
	cmp	r7, #0
	beq	.L30
	.loc 1 210 0
	mov	r0, r5
.LVL30:
	mov	r1, r6
	bl	_FAT_fat_linkFreeClusterCleared
	.loc 1 211 0
	cmp	r0, #0
	beq	.L30
.LVL31:
.L33:
	mov	r6, r0
	mov	r2, #0
	mov	r3, #0
	b	.L26
.LVL32:
.L27:
	.loc 1 219 0
	cmp	r6, #0
	beq	.L28
	mov	r2, #0
	b	.L26
.L28:
	ldr	r1, [r5, #28]
.LVL33:
	ldr	r2, [r5, #16]
	sub	r2, r1, r2
	cmp	r3, r2
	beq	.L30
.LVL34:
	mov	r2, #0
	mov	r6, #0
.LVL35:
.L26:
	.loc 1 223 0
	str	r6, [r4]
	str	r3, [r4, #4]
	str	r2, [r4, #8]
	mov	r0, #1
.LVL36:
	.loc 1 224 0
	b	.L31
.LVL37:
.L30:
	mov	r0, #0
.LVL38:
.L31:
	.loc 1 225 0
	@ sp needed for prologue
.LVL39:
.LVL40:
.LVL41:
	pop	{r3, r4, r5, r6, r7, pc}
.L35:
	.align	2
.L34:
	.word	268435455
.LFE22:
	.size	_FAT_directory_incrementDirEntryPosition, .-_FAT_directory_incrementDirEntryPosition
	.align	2
	.global	_FAT_directory_removeEntry
	.code	16
	.thumb_func
	.type	_FAT_directory_removeEntry, %function
_FAT_directory_removeEntry:
.LFB28:
	.loc 1 534 0
	push	{r4, r5, r6, r7, lr}
.LCFI4:
.LVL42:
	sub	sp, sp, #76
.LCFI5:
	.loc 1 537 0
	mov	r3, r1
	add	r4, sp, #60
	add	r3, r3, #32
	mov	r2, r4
	.loc 1 534 0
	mov	r5, r0
	.loc 1 537 0
	ldmia	r3!, {r0, r6, r7}
	stmia	r2!, {r0, r6, r7}
.LVL43:
	.loc 1 550 0
	mov	r3, #27
	.loc 1 538 0
	ldr	r0, [r1, #52]
	ldr	r2, [r1, #48]
	ldr	r1, [r1, #44]
.LVL44:
	.loc 1 550 0
	neg	r3, r3
	.loc 1 538 0
	str	r0, [sp, #20]
	str	r2, [sp, #16]
	str	r1, [sp, #12]
	mov	r6, #0
.LVL45:
	mov	r0, #1
.LVL46:
	.loc 1 549 0
	add	r7, sp, #28
	.loc 1 550 0
	str	r3, [sp, #8]
	.loc 1 545 0
	b	.L37
.L44:
	.loc 1 549 0
	ldr	r2, [r4]
	ldr	r0, [r5, #4]
.LVL47:
.LBB76:
.LBB77:
	.file 4 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/file_allocation_table.h"
	.loc 4 61 0
	cmp	r2, #1
	bls	.L38
	ldr	r1, [r5, #36]
	sub	r2, r2, #2
	mov	r3, r1
	mul	r3, r2
	ldr	r2, [r5, #28]
	add	r3, r3, r2
	b	.L39
.L38:
	ldr	r3, [r5, #16]
.L39:
.LBE77:
.LBE76:
	.loc 1 549 0
	ldr	r2, [r4, #4]
	mov	r1, r7
	add	r2, r3, r2
	ldr	r3, [r4, #8]
	mov	r6, #32
.LVL48:
	lsl	r3, r3, #5
	str	r6, [sp]
	bl	_FAT_cache_readPartialSector
	.loc 1 550 0
	mov	r0, sp
	mov	r1, #8
	ldrb	r0, [r1, r0]
	.loc 1 551 0
	ldr	r2, [r4]
	.loc 1 550 0
	strb	r0, [r7]
	.loc 1 551 0
	ldr	r0, [r5, #4]
.LBB78:
.LBB79:
	.loc 4 61 0
	cmp	r2, #1
	bls	.L40
	ldr	r1, [r5, #36]
	sub	r2, r2, #2
	mov	r3, r1
	mul	r3, r2
	ldr	r2, [r5, #28]
	add	r3, r3, r2
	b	.L41
.L40:
	ldr	r3, [r5, #16]
.L41:
.LBE79:
.LBE78:
	.loc 1 551 0
	ldr	r2, [r4, #4]
	mov	r1, #32
	add	r2, r3, r2
	ldr	r3, [r4, #8]
	str	r1, [sp]
	lsl	r3, r3, #5
	mov	r1, r7
	bl	_FAT_cache_writePartialSector
	.loc 1 552 0
	ldr	r3, [r4]
	ldr	r2, [sp, #12]
	cmp	r3, r2
	bne	.L42
	ldr	r3, [r4, #4]
	ldr	r6, [sp, #16]
	cmp	r3, r6
	bne	.L42
	ldr	r3, [r4, #8]
	ldr	r0, [sp, #20]
	sub	r3, r3, r0
	neg	r6, r3
	adc	r6, r6, r3
.LVL49:
	b	.L43
.LVL50:
.L42:
	mov	r6, #0
.LVL51:
.L43:
	.loc 1 547 0
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	bl	_FAT_directory_incrementDirEntryPosition
.LVL52:
.L37:
	.loc 1 545 0
	cmp	r6, #0
	bne	.L47
	cmp	r0, #0
	bne	.L44
.L47:
	.loc 1 562 0
	add	sp, sp, #76
	.loc 1 545 0
	sub	r3, r0, #1
	sbc	r0, r0, r3
.LVL53:
	.loc 1 562 0
	@ sp needed for prologue
.LVL54:
.LVL55:
	pop	{r4, r5, r6, r7, pc}
.LFE28:
	.size	_FAT_directory_removeEntry, .-_FAT_directory_removeEntry
	.align	2
	.global	_FAT_directory_entryFromPosition
	.code	16
	.thumb_func
	.type	_FAT_directory_entryFromPosition, %function
_FAT_directory_entryFromPosition:
.LFB26:
	.loc 1 361 0
	push	{r4, r5, r6, r7, lr}
.LCFI6:
.LVL56:
	sub	sp, sp, #76
.LCFI7:
	.loc 1 364 0
	mov	r3, r1
	add	r4, sp, #60
	add	r3, r3, #32
	mov	r2, r4
	.loc 1 361 0
	mov	r6, r1
	mov	r5, r0
	.loc 1 364 0
	ldmia	r3!, {r0, r1, r7}
	stmia	r2!, {r0, r1, r7}
.LVL57:
	.loc 1 365 0
	ldr	r0, [r6, #52]
	ldr	r2, [r6, #44]
	ldr	r1, [r6, #48]
	str	r0, [sp, #20]
	str	r2, [sp, #12]
	.loc 1 374 0
	mov	r0, r6
	mov	r2, #128
	.loc 1 365 0
	str	r1, [sp, #16]
	.loc 1 374 0
	add	r0, r0, #56
	mov	r1, #0
	lsl	r2, r2, #1
	bl	memset
	.loc 1 389 0
	mov	r3, #0
	str	r3, [sp, #8]
	mov	r0, #1
.LVL58:
	.loc 1 381 0
	add	r7, sp, #28
	.loc 1 377 0
	b	.L49
.L55:
	.loc 1 381 0
	ldr	r2, [r4]
	ldr	r0, [r5, #4]
.LVL59:
.LBB80:
.LBB81:
	.loc 4 61 0
	cmp	r2, #1
	bls	.L50
	ldr	r1, [r5, #36]
	sub	r2, r2, #2
	mov	r3, r1
	mul	r3, r2
	ldr	r2, [r5, #28]
	add	r3, r3, r2
	b	.L51
.L50:
	ldr	r3, [r5, #16]
.L51:
.LBE81:
.LBE80:
	.loc 1 381 0
	ldr	r2, [r4, #4]
	mov	r1, #32
	add	r2, r3, r2
	ldr	r3, [r4, #8]
	str	r1, [sp]
	lsl	r3, r3, #5
	mov	r1, r7
	bl	_FAT_cache_readPartialSector
	.loc 1 385 0
	ldr	r3, [r4]
	ldr	r0, [sp, #12]
	cmp	r3, r0
	bne	.L52
	ldr	r3, [r4, #4]
	ldr	r1, [sp, #16]
	cmp	r3, r1
	bne	.L52
	ldr	r3, [r4, #8]
	ldr	r2, [sp, #20]
	cmp	r3, r2
	bne	.L52
	.loc 1 389 0
	mov	r0, r6
	mov	r1, r7
	mov	r2, #32
	bl	memcpy
	mov	r3, #1
	str	r3, [sp, #8]
	.loc 1 385 0
	b	.L53
.L52:
	ldrb	r2, [r7]
	mov	r3, #64
	bic	r2, r2, r3
	sub	r2, r2, #1
	lsl	r3, r2, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	add	r3, r3, #56
	ldr	r1, .L64
	add	r3, r6, r3
.L54:
	.loc 1 395 0
	ldmia	r1!, {r2}
	.loc 1 394 0
	ldr	r0, .L64+4
	.loc 1 395 0
	ldrb	r2, [r7, r2]
	strb	r2, [r3]
	add	r3, r3, #1
	.loc 1 394 0
	cmp	r1, r0
	bne	.L54
	mov	r1, #0
	str	r1, [sp, #8]
.L53:
	.loc 1 379 0
	mov	r0, r5
	mov	r1, r4
	mov	r2, #0
	bl	_FAT_directory_incrementDirEntryPosition
.LVL60:
.L49:
	.loc 1 377 0
	ldr	r2, [sp, #8]
	cmp	r2, #0
	bne	.L61
	cmp	r0, #0
	bne	.L55
	b	.L63
.L61:
	.loc 1 400 0
	cmp	r0, #0
	bne	.L57
.L63:
	mov	r0, #0
.LVL61:
	b	.L58
.LVL62:
.L57:
	.loc 1 404 0
	ldr	r2, [sp, #60]
	ldr	r7, [sp, #12]
	add	r3, sp, #60
	cmp	r2, r7
	bne	.L59
	ldr	r2, [r3, #4]
	ldr	r0, [sp, #16]
.LVL63:
	cmp	r2, r0
	bne	.L59
	ldr	r3, [r3, #8]
	ldr	r1, [sp, #20]
	cmp	r3, r1
	bne	.L59
	.loc 1 408 0
	mov	r1, r6
	add	r1, r1, #56
	mov	r0, r6
	bl	_FAT_directory_entryGetAlias
	sub	r3, r0, #1
	sbc	r0, r0, r3
	b	.L58
.LVL64:
.L59:
	mov	r0, #1
.LVL65:
.L58:
	.loc 1 414 0
	add	sp, sp, #76
	@ sp needed for prologue
.LVL66:
.LVL67:
	pop	{r4, r5, r6, r7, pc}
.L65:
	.align	2
.L64:
	.word	.LANCHOR0
	.word	.LANCHOR0+52
.LFE26:
	.size	_FAT_directory_entryFromPosition, .-_FAT_directory_entryFromPosition
	.align	2
	.global	_FAT_directory_getNextEntry
	.code	16
	.thumb_func
	.type	_FAT_directory_getNextEntry, %function
_FAT_directory_getNextEntry:
.LFB23:
	.loc 1 227 0
	push	{r4, r5, r6, r7, lr}
.LCFI8:
.LVL68:
	sub	sp, sp, #92
.LCFI9:
	.loc 1 244 0
	mov	r3, r1
	add	r2, sp, #76
	add	r3, r3, #44
	.loc 1 227 0
	mov	r4, r0
	.loc 1 244 0
	ldmia	r3!, {r0, r5, r6}
	stmia	r2!, {r0, r5, r6}
.LVL69:
	ldr	r3, [sp, #76]
	.loc 1 227 0
	mov	r7, r1
	.loc 1 247 0
	cmp	r3, #0
	beq	.L67
.LVL70:
	str	r3, [sp, #8]
	b	.L68
.L67:
	.loc 1 248 0
	ldr	r0, [r4, #20]
	str	r0, [sp, #8]
.L68:
	.loc 1 251 0
	ldr	r1, [sp, #8]
	add	r5, sp, #64
	add	r3, sp, #76
	str	r1, [sp, #76]
	mov	r2, r5
	ldmia	r3!, {r0, r1, r6}
	stmia	r2!, {r0, r1, r6}
	.loc 1 252 0
	mov	r2, r7
	mov	r3, #0
	add	r2, r2, #56
	str	r2, [sp, #28]
	str	r3, [sp, #16]
	str	r3, [sp, #20]
	b	.L96
.LVL71:
.L84:
	.loc 1 267 0
	mov	r1, r5
	mov	r2, #0
	mov	r0, r4
	bl	_FAT_directory_incrementDirEntryPosition
	.loc 1 271 0
	ldr	r2, [r5]
	.loc 1 267 0
	neg	r1, r0
	adc	r1, r1, r0
	str	r1, [sp, #24]
	str	r1, [sp, #20]
	.loc 1 271 0
	ldr	r0, [r4, #4]
.LBB82:
.LBB83:
	.loc 4 61 0
	cmp	r2, #1
	bls	.L70
	ldr	r1, [r4, #36]
	sub	r2, r2, #2
	mov	r3, r1
	mul	r3, r2
	ldr	r2, [r4, #28]
	add	r3, r3, r2
	b	.L71
.L70:
	ldr	r3, [r4, #16]
.L71:
.LBE83:
.LBE82:
	.loc 1 271 0
	ldr	r2, [r5, #4]
	mov	r1, #32
	add	r2, r3, r2
	ldr	r3, [r5, #8]
	str	r1, [sp]
	lsl	r3, r3, #5
	add	r1, sp, #32
	bl	_FAT_cache_readPartialSector
	.loc 1 273 0
	mov	r2, #43
	add	r2, r2, sp
	ldrb	r3, [r2]
	cmp	r3, #15
	bne	.L72
	.loc 1 275 0
	add	r3, sp, #32
	ldrb	r3, [r3]
	str	r3, [sp, #24]
	lsl	r3, r3, #24
	cmp	r3, #0
	bge	.L73
	mov	r6, #0
.LVL72:
	b	.L74
.L73:
	.loc 1 277 0
	ldr	r0, [sp, #24]
	mov	r1, #64
	tst	r0, r1
	beq	.L74
	.loc 1 279 0
	add	r3, sp, #76
	mov	r2, r5
	ldmia	r2!, {r0, r1, r6}
	stmia	r3!, {r0, r1, r6}
.LVL73:
	.loc 1 281 0
	ldr	r2, [sp, #24]
	mov	r6, #64
	bic	r2, r2, r6
	lsl	r1, r2, #1
	add	r1, r1, r2
	lsl	r1, r1, #2
	add	r2, r1, r2
	add	r2, r7, r2
	add	r2, r2, #56
	mov	r1, #0
	.loc 1 282 0
	mov	r0, #45
	.loc 1 279 0
	ldr	r3, [r5]
	.loc 1 282 0
	add	r0, r0, sp
	.loc 1 281 0
	strb	r1, [r2]
	.loc 1 282 0
	ldrb	r0, [r0]
	mov	r6, #1
.LVL74:
	str	r0, [sp, #16]
	str	r3, [sp, #8]
.L74:
	.loc 1 283 0
	mov	r1, #45
	add	r1, r1, sp
	ldrb	r3, [r1]
	ldr	r2, [sp, #16]
	cmp	r3, r2
	beq	.L75
.L96:
	mov	r6, #0
.LVL75:
	b	.L94
.L75:
	.loc 1 286 0
	cmp	r6, #0
	beq	.L94
	add	r3, sp, #32
	ldrb	r2, [r3]
	mov	r3, #64
	bic	r2, r2, r3
	sub	r2, r2, #1
	lsl	r3, r2, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	add	r3, r3, #56
	ldr	r1, .L97
	add	r3, r7, r3
.L77:
	.loc 1 289 0
	ldmia	r1!, {r2}
	add	r0, sp, #32
	ldrb	r2, [r0, r2]
	strb	r2, [r3]
	.loc 1 288 0
	ldr	r2, .L97+4
	.loc 1 289 0
	add	r3, r3, #1
	.loc 1 288 0
	cmp	r1, r2
	bne	.L77
	b	.L94
.L72:
	.loc 1 292 0
	lsl	r0, r3, #28
	bmi	.L94
	.loc 1 294 0
	add	r1, sp, #32
	ldrb	r3, [r1]
	cmp	r3, #0
	beq	.L95
	.loc 1 296 0
	cmp	r3, #32
	bls	.L94
	cmp	r3, #229
	beq	.L94
	.loc 1 297 0
	cmp	r6, #0
	beq	.L79
	mov	r6, r1
.LVL76:
	.loc 1 227 0
	mov	r4, #0
.LVL77:
	add	r1, r1, #11
	.loc 1 302 0
	mov	r2, #1
.L82:
	tst	r4, r2
	bne	.L80
	mov	r3, #0
	b	.L81
.L80:
	mov	r3, #128
.L81:
	ldrb	r0, [r6]
	lsr	r4, r4, #1
.LVL78:
	add	r4, r4, r0
	lsl	r4, r4, #24
	lsr	r4, r4, #24
	add	r4, r4, r3
	lsl	r4, r4, #24
	add	r6, r6, #1
	lsr	r4, r4, #24
.LVL79:
	.loc 1 300 0
	cmp	r6, r1
	bne	.L82
	.loc 1 304 0
	ldr	r2, [sp, #16]
	cmp	r4, r2
	beq	.L89
	.loc 1 306 0
	mov	r3, r7
	add	r3, r3, #56
	mov	r2, #0
	strb	r2, [r3]
.LVL80:
.L79:
	.loc 1 310 0
	add	r3, sp, #64
	mov	r0, r3
	add	r2, sp, #76
	ldmia	r0!, {r4, r5, r6}
	stmia	r2!, {r4, r5, r6}
.LVL81:
	ldr	r4, [r3]
	.loc 1 311 0
	add	r0, sp, #32
	ldr	r1, [sp, #28]
	bl	_FAT_directory_entryGetAlias
	str	r4, [sp, #8]
	b	.L89
.LVL82:
.L94:
	.loc 1 266 0
	ldr	r0, [sp, #20]
	cmp	r0, #0
	bne	.LCB1036
	b	.L84	@long jump
.LCB1036:
	b	.L95
.LVL83:
.L89:
	.loc 1 318 0
	ldr	r1, [sp, #24]
	cmp	r1, #0
	beq	.L86
.LVL84:
.L95:
	mov	r0, #0
	b	.L87
.LVL85:
.L86:
	.loc 1 322 0
	ldr	r3, [sp, #8]
	add	r2, sp, #76
	str	r3, [sp, #76]
	mov	r3, r7
	add	r3, r3, #32
	ldmia	r2!, {r4, r5, r6}
	stmia	r3!, {r4, r5, r6}
.LVL86:
	.loc 1 323 0
	add	r2, sp, #64
	ldmia	r2!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
	.loc 1 324 0
	add	r2, sp, #32
	mov	r3, r7
	ldmia	r2!, {r0, r5, r6}
	stmia	r3!, {r0, r5, r6}
.LVL87:
	ldmia	r2!, {r1, r4, r5}
	stmia	r3!, {r1, r4, r5}
	ldmia	r2!, {r0, r6}
	stmia	r3!, {r0, r6}
	mov	r0, #1
.LVL88:
.L87:
	.loc 1 327 0
	add	sp, sp, #92
	@ sp needed for prologue
.LVL89:
.LVL90:
	pop	{r4, r5, r6, r7, pc}
.L98:
	.align	2
.L97:
	.word	.LANCHOR0
	.word	.LANCHOR0+52
.LFE23:
	.size	_FAT_directory_getNextEntry, .-_FAT_directory_getNextEntry
	.align	2
	.global	_FAT_directory_getFirstEntry
	.code	16
	.thumb_func
	.type	_FAT_directory_getFirstEntry, %function
_FAT_directory_getFirstEntry:
.LFB24:
	.loc 1 329 0
	push	{r4, r5, r6, lr}
.LCFI10:
.LVL91:
	.loc 1 331 0
	mov	r3, #0
	str	r3, [r1, #36]
	.loc 1 332 0
	mov	r3, #1
	neg	r3, r3
	.loc 1 330 0
	str	r2, [r1, #32]
	.loc 1 332 0
	str	r3, [r1, #40]
	.loc 1 334 0
	mov	r2, r1
.LVL92:
	mov	r3, r1
	add	r3, r3, #44
	add	r2, r2, #32
	ldmia	r2!, {r4, r5, r6}
	stmia	r3!, {r4, r5, r6}
	.loc 1 336 0
	bl	_FAT_directory_getNextEntry
.LVL93:
	.loc 1 337 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.LFE24:
	.size	_FAT_directory_getFirstEntry, .-_FAT_directory_getFirstEntry
	.align	2
	.code	16
	.thumb_func
	.type	_FAT_directory_entryExists, %function
_FAT_directory_entryExists:
.LFB30:
	.loc 1 635 0
	push	{r4, r5, r6, r7, lr}
.LCFI11:
.LVL94:
	sub	sp, sp, #340
.LCFI12:
	.loc 1 635 0
	str	r0, [sp, #4]
	mov	r4, r1
	.loc 1 641 0
	mov	r0, r1
.LVL95:
	mov	r1, #128
.LVL96:
	lsl	r1, r1, #1
	.loc 1 635 0
	mov	r7, r2
	.loc 1 641 0
	bl	strnlen
.LVL97:
	mov	r5, r0
.LVL98:
	.loc 1 643 0
	cmp	r0, #255
	bhi	.L102
.LVL99:
	.loc 1 648 0
	add	r6, sp, #8
	mov	r1, r6
	mov	r2, r7
	ldr	r0, [sp, #4]
.LVL100:
	.loc 1 658 0
	mov	r7, r6
.LVL101:
	.loc 1 648 0
	bl	_FAT_directory_getFirstEntry
	.loc 1 658 0
	add	r6, sp, #320
	.loc 1 650 0
	b	.L103
.LVL102:
.L107:
	.loc 1 652 0
	mov	r1, #128
	add	r0, sp, #64
.LVL103:
	lsl	r1, r1, #1
	bl	strnlen
	cmp	r5, r0
	bne	.L104
	.loc 1 653 0
	add	r0, sp, #64
	mov	r1, r4
	bl	strcasecmp
	.loc 1 652 0
	cmp	r0, #0
	beq	.L105
.L104:
	.loc 1 658 0
	mov	r1, r6
	mov	r0, r7
	bl	_FAT_directory_entryGetAlias
	.loc 1 659 0
	mov	r0, r6
	mov	r1, #13
	bl	strnlen
	cmp	r5, r0
	bne	.L106
	.loc 1 660 0
	mov	r0, r6
	mov	r1, r4
	bl	strcasecmp
	.loc 1 659 0
	cmp	r0, #0
	beq	.L105
.L106:
	.loc 1 663 0
	ldr	r0, [sp, #4]
	mov	r1, r7
	bl	_FAT_directory_getNextEntry
.L103:
	.loc 1 650 0
	cmp	r0, #0
	bne	.L107
.LVL104:
.L102:
	mov	r0, #0
.LVL105:
	b	.L108
.LVL106:
.L105:
	mov	r0, #1
.LVL107:
.L108:
	.loc 1 666 0
	add	sp, sp, #340
	@ sp needed for prologue
.LVL108:
.LVL109:
.LVL110:
	pop	{r4, r5, r6, r7, pc}
.LFE30:
	.size	_FAT_directory_entryExists, .-_FAT_directory_entryExists
	.align	2
	.global	_FAT_directory_entryFromPath
	.code	16
	.thumb_func
	.type	_FAT_directory_entryFromPath, %function
_FAT_directory_entryFromPath:
.LFB27:
	.loc 1 418 0
	push	{r4, r5, r6, r7, lr}
.LCFI13:
.LVL111:
	sub	sp, sp, #60
.LCFI14:
	.loc 1 418 0
	mov	r5, r0
	mov	r6, r1
	mov	r4, r2
	str	r3, [sp, #4]
	.loc 1 434 0
	cmp	r3, #0
	bne	.L111
.LVL112:
	.loc 1 436 0
	mov	r0, r2
	mov	r1, #0
	bl	strchr
.LVL113:
	str	r0, [sp, #4]
.LVL114:
.L111:
	.loc 1 439 0
	ldrb	r3, [r4]
.LVL115:
	cmp	r3, #47
	bne	.L112
	.loc 1 441 0
	ldr	r0, [r5, #20]
	str	r0, [sp, #8]
	.loc 1 443 0
	b	.L113
.LVL116:
.L114:
	.loc 1 444 0
	add	r4, r4, #1
.LVL117:
.L113:
	.loc 1 443 0
	ldrb	r3, [r4]
	cmp	r3, #47
	beq	.L114
.LVL118:
	.loc 1 447 0
	ldr	r1, [sp, #4]
	cmp	r4, r1
	bcc	.L144
	.loc 1 448 0
	mov	r0, r5
	mov	r1, r6
	bl	_FAT_directory_getRootEntry
	mov	r7, #1
.LVL119:
	b	.L116
.LVL120:
.L112:
	.loc 1 453 0
	ldr	r2, [r5, #60]
	str	r2, [sp, #8]
.LVL121:
.L144:
	mov	r7, #0
.LVL122:
.L116:
	.loc 1 458 0
	ldr	r3, [r5, #20]
	ldr	r0, [sp, #8]
	cmp	r0, r3
	bne	.L117
	ldr	r0, .L146
	mov	r1, r4
	mov	r2, #2
	bl	strncasecmp
	cmp	r0, #0
	bne	.L117
	.loc 1 459 0
	mov	r0, r5
	mov	r1, r6
	bl	_FAT_directory_getRootEntry
	mov	r7, #1
.LVL123:
.L117:
.LBB84:
.LBB86:
.LBB89:
.LBB91:
	.loc 3 39 0
	mov	r1, r6
	add	r1, r1, #26
	mov	r2, r6
.LBE91:
.LBE89:
.LBB93:
.LBB95:
	mov	r3, r6
	mov	r0, r6
.LBE95:
.LBE93:
.LBB97:
.LBB90:
	str	r1, [sp, #28]
	add	r2, r2, #27
.LBE90:
.LBE97:
.LBB98:
.LBB94:
	add	r3, r3, #20
	add	r0, r0, #21
.LBE94:
.LBE98:
.LBE86:
.LBE84:
	.loc 1 482 0
	add	r1, r1, #30
.LBB100:
.LBB85:
.LBB88:
.LBB92:
	.loc 3 39 0
	str	r2, [sp, #24]
.LBE92:
.LBE88:
.LBB87:
.LBB96:
	str	r3, [sp, #36]
	str	r0, [sp, #32]
.LBE96:
.LBE87:
.LBE85:
.LBE100:
	.loc 1 482 0
	str	r1, [sp, #20]
	b	.L118
.LVL124:
.L137:
	.loc 1 465 0
	mov	r0, r4
	mov	r1, #47
	bl	strchr
.LVL125:
	str	r0, [sp]
	.loc 1 466 0
	cmp	r0, #0
	beq	.L119
	.loc 1 467 0
	sub	r7, r0, r4
.LVL126:
	b	.L120
.LVL127:
.L119:
	.loc 1 469 0
	mov	r0, r4
	bl	strlen
	mov	r7, r0
.LVL128:
.L120:
	.loc 1 472 0
	mov	r3, #128
	lsl	r3, r3, #1
	cmp	r7, r3
	bls	.L121
	mov	r0, #0
	b	.L122
.L121:
	.loc 1 478 0
	mov	r0, r5
	mov	r1, r6
	ldr	r2, [sp, #8]
	bl	_FAT_directory_getFirstEntry
	b	.L145
.LVL129:
.L130:
	.loc 1 482 0
	mov	r1, #128
	ldr	r0, [sp, #20]
	lsl	r1, r1, #1
	bl	strnlen
.LVL130:
	cmp	r7, r0
	beq	.L124
	mov	r2, #0
	str	r2, [sp, #16]
	b	.L125
.L124:
	.loc 1 483 0
	ldr	r0, [sp, #20]
	mov	r1, r4
	mov	r2, r7
	bl	strncasecmp
	neg	r3, r0
	adc	r3, r3, r0
	str	r3, [sp, #16]
.L125:
	.loc 1 488 0
	add	r1, sp, #40
	mov	r0, r6
	bl	_FAT_directory_entryGetAlias
	.loc 1 489 0
	add	r0, sp, #40
	mov	r1, #13
	bl	strnlen
	cmp	r7, r0
	bne	.L126
	.loc 1 490 0
	add	r0, sp, #40
	mov	r1, r4
	mov	r2, r7
	bl	strncasecmp
	.loc 1 489 0
	cmp	r0, #0
	beq	.L127
.L126:
	.loc 1 494 0
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	.L128
.L127:
	ldr	r1, [sp]
	cmp	r1, #0
	beq	.L140
	ldrb	r3, [r6, #11]
	mov	r2, #16
	tst	r3, r2
	beq	.L128
.L140:
	mov	r3, #1
.LVL131:
	b	.L141
.LVL132:
.L128:
	.loc 1 500 0
	mov	r0, r5
	mov	r1, r6
	bl	_FAT_directory_getNextEntry
.L145:
	str	r0, [sp, #12]
	.loc 1 480 0
	ldr	r0, [sp, #12]
	.loc 1 500 0
	mov	r3, #0
.LVL133:
	.loc 1 480 0
	cmp	r0, #0
	bne	.L130
.L141:
	.loc 1 504 0
	ldr	r1, [sp, #12]
	.loc 1 480 0
	mov	r7, #0
.LVL134:
	mov	r2, #1
.LVL135:
	.loc 1 504 0
	cmp	r1, #0
	beq	.L142
	.loc 1 508 0
	ldr	r2, [sp, #4]
.LVL136:
	ldr	r0, [sp]
	cmp	r2, r0
	bls	.L133
	cmp	r0, #0
	beq	.L133
	.loc 1 511 0
	ldrb	r2, [r6, #11]
	lsl	r1, r2, #27
	bpl	.L134
.LBB101:
.LBB99:
	.loc 1 189 0
	ldr	r2, [sp, #32]
	ldr	r0, [sp, #36]
	ldrb	r3, [r2]
	ldrb	r2, [r0]
	lsl	r3, r3, #8
	orr	r3, r3, r2
	ldr	r2, [sp, #24]
	ldr	r0, [sp, #28]
	ldrb	r1, [r2]
	ldrb	r2, [r0]
	lsl	r1, r1, #8
	lsl	r3, r3, #16
	orr	r2, r2, r1
	orr	r3, r3, r2
	str	r3, [sp, #8]
	ldr	r4, [sp]
.LVL137:
.LBE99:
.LBE101:
	.loc 1 515 0
	b	.L135
.L136:
	.loc 1 516 0
	add	r4, r4, #1
.LVL138:
.L135:
	.loc 1 515 0
	ldrb	r3, [r4]
	cmp	r3, #47
	beq	.L136
	.loc 1 519 0
	ldr	r1, [sp, #4]
	cmp	r4, r1
	bcs	.L133
	mov	r3, #0
.LVL139:
	b	.L134
.LVL140:
.L133:
	mov	r3, #1
.LVL141:
.L134:
	mov	r7, r3
.LVL142:
.L118:
	mov	r2, #0
.LVL143:
	.loc 1 463 0
	cmp	r7, #0
	beq	.L137
.L142:
	neg	r0, r2
	adc	r0, r0, r2
.LVL144:
	sub	r3, r7, #1
	sbc	r7, r7, r3
.LVL145:
	and	r0, r0, r7
.LVL146:
.L122:
	.loc 1 532 0
	add	sp, sp, #60
	@ sp needed for prologue
.LVL147:
.LVL148:
.LVL149:
.LVL150:
	pop	{r4, r5, r6, r7, pc}
.L147:
	.align	2
.L146:
	.word	.LC8
.LFE27:
	.size	_FAT_directory_entryFromPath, .-_FAT_directory_entryFromPath
	.align	2
	.global	_FAT_directory_chdir
	.code	16
	.thumb_func
	.type	_FAT_directory_chdir, %function
_FAT_directory_chdir:
.LFB32:
	.loc 1 854 0
	push	{r4, r5, lr}
.LCFI15:
.LVL151:
	sub	sp, sp, #316
.LCFI16:
	.loc 1 854 0
	mov	r2, r1
	.loc 1 857 0
	mov	r3, #0
	mov	r1, sp
.LVL152:
	.loc 1 854 0
	mov	r5, r0
	.loc 1 857 0
	mov	r4, sp
	bl	_FAT_directory_entryFromPath
.LVL153:
	cmp	r0, #0
	beq	.L149
	.loc 1 861 0
	ldrb	r3, [r4, #11]
	lsl	r2, r3, #27
	bpl	.L149
	.loc 1 865 0
	ldrb	r2, [r4, #21]
	ldrb	r1, [r4, #20]
	lsl	r2, r2, #8
	ldrb	r3, [r4, #27]
	orr	r2, r2, r1
	ldrb	r1, [r4, #26]
	lsl	r3, r3, #8
	lsl	r2, r2, #16
	orr	r3, r3, r1
	orr	r3, r3, r2
	str	r3, [r5, #60]
	mov	r0, #1
	.loc 1 867 0
	b	.L150
.L149:
	mov	r0, #0
.L150:
	.loc 1 868 0
	add	sp, sp, #316
	@ sp needed for prologue
.LVL154:
	pop	{r4, r5, pc}
.LFE32:
	.size	_FAT_directory_chdir, .-_FAT_directory_chdir
	.align	2
	.global	_FAT_directory_isValidAlias
	.code	16
	.thumb_func
	.type	_FAT_directory_isValidAlias, %function
_FAT_directory_isValidAlias:
.LFB19:
	.loc 1 108 0
	push	{r4, r5, r6, lr}
.LCFI17:
.LVL155:
	.loc 1 114 0
	mov	r1, #13
	.loc 1 108 0
	mov	r4, r0
	.loc 1 114 0
	bl	strnlen
.LVL156:
	cmp	r0, #12
	bhi	.L153
	.loc 1 118 0
	mov	r0, r4
	ldr	r1, .L159
	bl	strpbrk
	cmp	r0, #0
	bne	.L153
	.loc 1 121 0
	mov	r0, r4
	mov	r1, #13
	bl	strnlen
	mov	r3, #0
.LVL157:
	mov	r6, r0
.LVL158:
	.loc 1 123 0
	b	.L154
.L155:
	.loc 1 124 0
	ldrb	r2, [r4, r3]
	cmp	r2, #31
	bls	.L153
	.loc 1 123 0
	add	r3, r3, #1
.L154:
	cmp	r3, r6
	bcc	.L155
	.loc 1 129 0
	mov	r0, r4
	mov	r1, #46
	bl	strchr
.LVL159:
	mov	r5, r0
	.loc 1 131 0
	cmp	r0, #0
	beq	.L156
	mov	r0, r4
	mov	r1, #46
	bl	strrchr
	cmp	r0, r5
	bne	.L153
	.loc 1 137 0
	sub	r4, r0, r4
.LVL160:
	sub	r4, r4, #2
	cmp	r4, #7
	bhi	.L153
	.loc 1 141 0
	add	r4, r0, #1
	mov	r0, r4
	mov	r1, #13
	bl	strnlen
	cmp	r0, #3
	bhi	.L153
	mov	r0, r4
	mov	r1, #13
	bl	strnlen
	sub	r3, r0, #1
	sbc	r0, r0, r3
	b	.L157
.LVL161:
.L156:
	mov	r0, #7
	sub	r6, r6, #1
.LVL162:
	cmp	r0, r6
	adc	r5, r5, r5
	mov	r0, r5
	b	.L157
.LVL163:
.L153:
	mov	r0, #0
.L157:
	.loc 1 153 0
	@ sp needed for prologue
.LVL164:
.LVL165:
	pop	{r4, r5, r6, pc}
.L160:
	.align	2
.L159:
	.word	.LC10
.LFE19:
	.size	_FAT_directory_isValidAlias, .-_FAT_directory_isValidAlias
	.align	2
	.global	_FAT_directory_isValidLfn
	.code	16
	.thumb_func
	.type	_FAT_directory_isValidLfn, %function
_FAT_directory_isValidLfn:
.LFB18:
	.loc 1 86 0
	push	{r4, lr}
.LCFI18:
.LVL166:
	.loc 1 90 0
	mov	r1, #128
	lsl	r1, r1, #1
	.loc 1 86 0
	mov	r4, r0
	.loc 1 90 0
	bl	strnlen
.LVL167:
	cmp	r0, #255
	bhi	.L162
	.loc 1 94 0
	mov	r0, r4
	ldr	r1, .L167
	bl	strpbrk
	cmp	r0, #0
	bne	.L162
	.loc 1 97 0
	mov	r1, #128
	mov	r0, r4
	lsl	r1, r1, #1
	bl	strnlen
	mov	r3, #0
.LVL168:
	.loc 1 99 0
	b	.L163
.LVL169:
.L164:
	.loc 1 100 0
	ldrb	r2, [r4, r3]
	cmp	r2, #31
	bls	.L162
	.loc 1 99 0
	add	r3, r3, #1
.L163:
	cmp	r3, r0
	bcc	.L164
	mov	r0, #1
.LVL170:
	b	.L165
.LVL171:
.L162:
	mov	r0, #0
.LVL172:
.L165:
	.loc 1 106 0
	@ sp needed for prologue
.LVL173:
	pop	{r4, pc}
.L168:
	.align	2
.L167:
	.word	.LC12
.LFE18:
	.size	_FAT_directory_isValidLfn, .-_FAT_directory_isValidLfn
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.global	__aeabi_uidiv
	.align	2
	.global	_FAT_directory_addEntry
	.code	16
	.thumb_func
	.type	_FAT_directory_addEntry, %function
_FAT_directory_addEntry:
.LFB31:
	.loc 1 670 0
	push	{r4, r5, r6, r7, lr}
.LCFI19:
.LVL174:
	.loc 1 681 0
	mov	r6, r1
	.loc 1 670 0
	mov	r5, r1
	.loc 1 681 0
	add	r6, r6, #56
	mov	r1, #128
.LVL175:
	.loc 1 670 0
	sub	sp, sp, #164
.LCFI20:
	.loc 1 670 0
	mov	r4, r0
	.loc 1 681 0
	lsl	r1, r1, #1
	mov	r0, r6
.LVL176:
	.loc 1 670 0
	str	r2, [sp, #20]
	.loc 1 681 0
	bl	strnlen
.LVL177:
	cmp	r0, #0
	bne	.LCB1843
	b	.L170	@long jump
.LCB1843:
	.loc 1 686 0
	mov	r0, r6
	bl	_FAT_directory_isValidLfn
	cmp	r0, #0
	bne	.LCB1847
	b	.L170	@long jump
.LCB1847:
	.loc 1 691 0
	mov	r0, r6
	bl	strlen
	sub	r3, r0, #1
.LVL178:
	add	r0, r0, #55
	add	r0, r5, r0
	.loc 1 692 0
	mov	r2, #0
	.loc 1 691 0
	b	.L171
.L173:
	.loc 1 692 0
	strb	r2, [r0]
	.loc 1 691 0
	sub	r3, r3, #1
.LVL179:
	sub	r0, r0, #1
.L171:
	cmp	r3, #0
	ble	.L172
	ldrb	r1, [r0]
	cmp	r1, #32
	beq	.L173
.L172:
	.loc 1 695 0
	mov	r0, r6
	bl	strlen
.LVL180:
	mov	r7, #0
.LVL181:
	b	.L174
.L176:
	add	r7, r7, #1
.LVL182:
.L174:
	cmp	r7, r0
	bcs	.L175
	add	r3, r5, r7
	add	r3, r3, #56
	ldrb	r3, [r3]
	cmp	r3, #32
	beq	.L176
.L175:
	.loc 1 696 0
	cmp	r7, #0
	beq	.L177
	.loc 1 697 0
	mov	r0, r5
	add	r0, r0, #56
	str	r0, [sp, #24]
	mov	r0, r7
	add	r0, r0, #56
	add	r0, r5, r0
	bl	strlen
	ldr	r3, [sp, #24]
	mov	r2, r0
	add	r1, r3, r7
	mov	r0, r3
	bl	memmove
.L177:
	.loc 1 701 0
	mov	r0, r6
	bl	strlen
	.loc 1 702 0
	mov	r7, #128
.LVL183:
	mov	r3, r5
	add	r3, r3, #56
	lsl	r7, r7, #1
	sub	r2, r7, r0
	mov	r1, #0
	add	r0, r3, r0
	bl	memset
	.loc 1 705 0
	mov	r0, r4
	mov	r1, r6
	ldr	r2, [sp, #20]
	bl	_FAT_directory_entryExists
	cmp	r0, #0
	beq	.LCB1924
	b	.L170	@long jump
.LCB1924:
	.loc 1 710 0
	mov	r1, #32
	mov	r2, #11
	mov	r0, r5
	bl	memset
	.loc 1 712 0
	mov	r0, r6
	ldr	r1, .L268
	mov	r2, r7
	bl	strncmp
	cmp	r0, #0
	bne	.L178
	.loc 1 714 0
	mov	r3, #46
	mov	r6, #0
	strb	r3, [r5]
	str	r6, [sp, #32]
	b	.L265
.L178:
	.loc 1 716 0
	mov	r0, r6
	ldr	r1, .L268+4
	mov	r2, r7
	bl	strncmp
	cmp	r0, #0
	bne	.L180
	.loc 1 718 0
	mov	r3, #46
	strb	r3, [r5]
	.loc 1 719 0
	strb	r3, [r5, #1]
	str	r0, [sp, #32]
.LVL184:
.L265:
	mov	r7, #1
.LVL185:
	b	.L179
.LVL186:
.L180:
	.loc 1 721 0
	mov	r0, r6
	bl	_FAT_directory_isValidAlias
	cmp	r0, #0
	beq	.L181
	.loc 1 723 0
	mov	r0, r6
	bl	strupr
	mov	r2, #0
.LVL187:
	b	.L182
.L184:
	.loc 1 727 0
	strb	r3, [r5, r2]
	.loc 1 726 0
	add	r2, r2, #1
.LVL188:
	cmp	r2, #8
	beq	.L183
.L182:
	add	r3, r5, r2
	add	r3, r3, #56
	ldrb	r3, [r3]
	cmp	r3, #46
	beq	.L183
	cmp	r3, #0
	bne	.L184
.L183:
	mov	r3, r2
.LVL189:
	add	r1, r5, r2
	.loc 1 730 0
	mov	r0, #32
	b	.L185
.L186:
	strb	r0, [r1]
	.loc 1 731 0
	add	r3, r3, #1
.LVL190:
	add	r1, r1, #1
.L185:
	.loc 1 729 0
	cmp	r3, #7
	ble	.L186
	.loc 1 733 0
	add	r1, r5, r2
	add	r1, r1, #56
	ldrb	r1, [r1]
	cmp	r1, #46
	beq	.L187
.L192:
	add	r2, r5, r3
.LVL191:
	.loc 1 743 0
	mov	r1, #32
	b	.L188
.LVL192:
.L187:
	.loc 1 733 0
	add	r2, r2, #57
.LVL193:
	add	r2, r5, r2
	add	r1, r5, r3
	.loc 1 736 0
	b	.L189
.L190:
	.loc 1 737 0
	strb	r0, [r1]
	.loc 1 739 0
	add	r3, r3, #1
.LVL194:
	add	r1, r1, #1
.L189:
	.loc 1 736 0
	ldrb	r0, [r2]
	add	r2, r2, #1
	cmp	r3, #10
	bgt	.L192
	cmp	r0, #0
	bne	.L190
	b	.L192
.L193:
	.loc 1 743 0
	strb	r1, [r2]
	.loc 1 744 0
	add	r3, r3, #1
.LVL195:
	add	r2, r2, #1
.L188:
	.loc 1 742 0
	cmp	r3, #10
	ble	.L193
	mov	r1, #0
	str	r1, [sp, #32]
	b	.L265
.LVL196:
.L181:
	.loc 1 748 0
	mov	r1, r7
	mov	r0, r6
	bl	strnlen
	.loc 1 750 0
	mov	r1, #46
	.loc 1 748 0
	str	r0, [sp, #24]
	.loc 1 750 0
	mov	r0, r6
	bl	strrchr
	.loc 1 751 0
	cmp	r0, #0
	bne	.L194
.LVL197:
	.loc 1 752 0
	mov	r0, r6
.LVL198:
	mov	r1, #0
	bl	strchr
.LVL199:
.L194:
	.loc 1 755 0
	ldr	r3, .L268+8
	mov	r7, #0
.LVL200:
	ldr	r1, [r3]
	str	r0, [sp, #32]
	mov	r3, #0
.LVL201:
	mov	ip, r1
	b	.L195
.L199:
	add	r2, r5, r3
	add	r2, r2, #56
	ldrb	r2, [r2]
	mov	r1, ip
	add	r0, r1, r2
.LVL202:
	ldrb	r0, [r0, #1]
	mov	r1, #7
	tst	r0, r1
	beq	.L196
	.loc 1 756 0
	add	r0, sp, #108
	strb	r2, [r0, r7]
	.loc 1 757 0
	add	r7, r7, #1
.LVL203:
.L196:
	.loc 1 754 0
	cmp	r7, #5
	ble	.L197
.LVL204:
.L200:
	add	r3, sp, #108
.LVL205:
	add	r3, r3, r7
	.loc 1 761 0
	mov	r2, #95
	b	.L198
.LVL206:
.L197:
	.loc 1 754 0
	add	r3, r3, #1
.LVL207:
.L195:
	mov	r2, r3
	add	r2, r2, #56
	ldr	r1, [sp, #32]
	add	r2, r5, r2
	cmp	r1, r2
	bhi	.L199
	b	.L200
.LVL208:
.L201:
	.loc 1 761 0
	strb	r2, [r3]
	.loc 1 762 0
	add	r7, r7, #1
.LVL209:
	add	r3, r3, #1
.L198:
	.loc 1 760 0
	cmp	r7, #7
	ble	.L201
	.loc 1 764 0
	mov	r0, r6
.LVL210:
	mov	r1, #46
	bl	strrchr
	add	r3, sp, #108
	.loc 1 765 0
	cmp	r0, #0
	beq	.L202
.LVL211:
	.loc 1 766 0
	mov	r2, #46
	strb	r2, [r3, #8]
	add	r3, r3, r7
	.loc 1 768 0
	b	.L203
.L204:
	.loc 1 769 0
	ldrb	r2, [r0]
	.loc 1 771 0
	add	r7, r7, #1
.LVL212:
	.loc 1 769 0
	strb	r2, [r3]
	.loc 1 770 0
	add	r0, r0, #1
.LVL213:
	.loc 1 771 0
	add	r3, r3, #1
.L203:
	.loc 1 768 0
	cmp	r7, #11
	bgt	.L249
	cmp	r0, #0
	bne	.L204
.L249:
	.loc 1 773 0
	mov	r2, #0
	add	r3, sp, #108
	strb	r2, [r3, r7]
	b	.L206
.L202:
	.loc 1 776 0
	strb	r0, [r3, #8]
.LVL214:
	strb	r0, [r3, #9]
	strb	r0, [r3, #10]
	strb	r0, [r3, #11]
	strb	r0, [r3, #12]
.LVL215:
.L206:
	.loc 1 781 0
	add	r7, sp, #108
.LVL216:
	mov	r3, #126
	strb	r3, [r7, #5]
	mov	r6, #0
.LVL217:
.L209:
	.loc 1 784 0
	add	r6, r6, #1
.LVL218:
	.loc 1 785 0
	mov	r1, #10
	mov	r0, r6
.LVL219:
	bl	__aeabi_idiv
	mov	r1, #10
	bl	__aeabi_idivmod
	add	r1, r1, #48
	strb	r1, [r7, #6]
	.loc 1 786 0
	mov	r0, r6
	mov	r1, #10
	bl	__aeabi_idivmod
	add	r1, r1, #48
	strb	r1, [r7, #7]
	.loc 1 787 0
	mov	r0, r4
	mov	r1, r7
	ldr	r2, [sp, #20]
	bl	_FAT_directory_entryExists
	cmp	r0, #0
	bne	.L207
	.loc 1 788 0
	cmp	r6, #100
	bne	.L258
	b	.L170
.L207:
	.loc 1 787 0
	cmp	r6, #100
	bne	.L209
	b	.L170
.L258:
	.loc 1 794 0
	mov	r0, r7
	bl	strupr
	.loc 1 797 0
	mov	r1, r7
	mov	r2, #8
	mov	r0, r5
	bl	memcpy
	.loc 1 798 0
	mov	r0, r5
	mov	r1, sp
	mov	r2, #3
	add	r0, r0, #8
	add	r1, r1, #117
	bl	memcpy
	mov	r3, #0
.LVL220:
	.loc 1 802 0
	mov	r2, #32
.L211:
	.loc 1 800 0
	ldrb	r1, [r5, r3]
	cmp	r1, #31
	bhi	.L210
	.loc 1 802 0
	strb	r2, [r5, r3]
.L210:
	.loc 1 799 0
	add	r3, r3, #1
.LVL221:
	cmp	r3, #10
	bne	.L211
	mov	r2, #0
	str	r2, [sp, #32]
	mov	r3, #0
.LVL222:
	.loc 1 809 0
	mov	r1, #1
.L214:
	ldr	r6, [sp, #32]
	tst	r6, r1
	bne	.L212
	mov	r2, #0
	b	.L213
.L212:
	mov	r2, #128
.L213:
	ldr	r0, [sp, #32]
	lsr	r6, r0, #1
	ldrb	r0, [r5, r3]
	.loc 1 806 0
	add	r3, r3, #1
.LVL223:
	.loc 1 809 0
	add	r0, r6, r0
	lsl	r0, r0, #24
	lsr	r0, r0, #24
	add	r2, r0, r2
	lsl	r2, r2, #24
	lsr	r2, r2, #24
	str	r2, [sp, #32]
	.loc 1 806 0
	cmp	r3, #11
	bne	.L214
	.loc 1 748 0
	ldr	r0, [sp, #24]
	mov	r1, #13
	add	r0, r0, #12
	bl	__aeabi_uidiv
.LVL224:
	add	r7, r0, #1
.LVL225:
.L179:
.LBB120:
.LBB121:
	.loc 1 577 0
	ldr	r2, [sp, #20]
	.loc 1 575 0
	mov	r1, sp
	mov	r3, #0
.LVL226:
	add	r1, r1, #124
	str	r3, [sp, #132]
	.loc 1 576 0
	str	r3, [sp, #128]
	.loc 1 575 0
	str	r1, [sp, #12]
	.loc 1 577 0
	str	r2, [sp, #124]
	.loc 1 579 0
	add	r3, sp, #136
	ldmia	r1!, {r0, r2, r6}
	stmia	r3!, {r0, r2, r6}
	mov	r6, #0
	mov	r3, #1
	str	r6, [sp, #24]
	str	r7, [sp, #20]
	str	r3, [sp, #28]
	.loc 1 586 0
	add	r6, sp, #124
	b	.L252
.L223:
	ldr	r2, [r6]
	ldr	r0, [r4, #4]
.LBB122:
.LBB123:
	.loc 4 61 0
	cmp	r2, #1
	bls	.L216
	ldr	r1, [r4, #36]
	sub	r2, r2, #2
	mov	r3, r1
	mul	r3, r2
	ldr	r2, [r4, #28]
	add	r3, r3, r2
	b	.L217
.L216:
	ldr	r3, [r4, #16]
.L217:
.LBE123:
.LBE122:
	.loc 1 586 0
	ldr	r2, [r6, #4]
	mov	r1, #32
	add	r2, r3, r2
	ldr	r3, [r6, #8]
	str	r1, [sp]
	lsl	r3, r3, #5
	add	r1, sp, #44
	bl	_FAT_cache_readPartialSector
	.loc 1 587 0
	add	r2, sp, #44
	ldrb	r3, [r2]
	cmp	r3, #0
	bne	.L218
	.loc 1 588 0
	add	r3, sp, #136
	mov	r1, r6
	ldmia	r1!, {r0, r2, r5}
	stmia	r3!, {r0, r2, r5}
.LVL227:
	.loc 1 589 0
	ldr	r3, [sp, #20]
	mov	r5, #1
	sub	r3, r3, #1
	str	r3, [sp, #20]
	str	r5, [sp, #24]
	b	.L219
.LVL228:
.L218:
	.loc 1 591 0
	cmp	r3, #229
	beq	.L220
	mov	r0, #0
	str	r7, [sp, #20]
	str	r0, [sp, #24]
	b	.L219
.L220:
	.loc 1 592 0
	ldr	r1, [sp, #20]
	cmp	r1, r7
	bne	.L221
	.loc 1 593 0
	add	r3, sp, #136
	mov	r1, r6
	ldmia	r1!, {r0, r2, r5}
	stmia	r3!, {r0, r2, r5}
.LVL229:
.L221:
	.loc 1 595 0
	ldr	r1, [sp, #20]
	mov	r2, #0
	sub	r1, r1, #1
	str	r1, [sp, #20]
	str	r2, [sp, #24]
.L219:
	.loc 1 600 0
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L261
	ldr	r5, [sp, #24]
.LVL230:
	cmp	r5, #0
	bne	.L264
	.loc 1 601 0
	mov	r0, r4
	add	r1, sp, #124
	mov	r2, #1
	bl	_FAT_directory_incrementDirEntryPosition
	str	r0, [sp, #28]
	b	.L259
.LVL231:
.L261:
	ldr	r5, [sp, #36]
.LVL232:
.L252:
	.loc 1 585 0
	ldr	r0, [sp, #24]
	cmp	r0, #0
	bne	.L222
	.loc 1 586 0
	str	r5, [sp, #36]
.L259:
	.loc 1 585 0
	ldr	r1, [sp, #28]
	cmp	r1, #0
	beq	.L264
	ldr	r2, [sp, #20]
	cmp	r2, #0
	bne	.L223
	mov	r3, #0
	ldr	r5, [sp, #36]
	str	r3, [sp, #24]
	b	.L224
.L264:
	ldr	r5, [sp, #36]
.L222:
	.loc 1 606 0
	ldr	r6, [sp, #28]
	cmp	r6, #0
	bne	.LCB2443
	b	.L170	@long jump
.LCB2443:
.L224:
	.loc 1 611 0
	mov	r3, r5
	add	r2, sp, #136
	add	r3, r3, #32
	ldmia	r2!, {r0, r1, r6}
	stmia	r3!, {r0, r1, r6}
	.loc 1 613 0
	ldr	r0, [sp, #24]
	cmp	r0, #0
	beq	.L225
	.loc 1 614 0
	mov	r1, #0
	mov	r2, #32
	add	r0, sp, #44
	bl	memset
	.loc 1 615 0
	ldr	r1, [sp, #20]
	.loc 1 618 0
	mov	r2, r5
	.loc 1 615 0
	add	r1, r1, #1
	.loc 1 618 0
	add	r2, r2, #44
	.loc 1 615 0
	str	r1, [sp, #24]
	.loc 1 618 0
	add	r6, sp, #124
	str	r2, [sp, #20]
	str	r5, [sp, #36]
	b	.L226
.L229:
	ldr	r3, [sp, #20]
	mov	r2, r6
	ldmia	r2!, {r0, r1, r5}
	stmia	r3!, {r0, r1, r5}
.LVL233:
	.loc 1 620 0
	mov	r2, #1
	mov	r0, r4
	mov	r1, r6
	bl	_FAT_directory_incrementDirEntryPosition
	.loc 1 623 0
	ldr	r2, [r6]
	.loc 1 620 0
	str	r0, [sp, #28]
	.loc 1 623 0
	ldr	r0, [r4, #4]
.LBB124:
.LBB125:
	.loc 4 61 0
	cmp	r2, #1
	bls	.L227
	ldr	r1, [r4, #36]
	sub	r2, r2, #2
	mov	r3, r1
	mul	r3, r2
	ldr	r2, [r4, #28]
	add	r3, r3, r2
	b	.L228
.L269:
	.align	2
.L268:
	.word	.LC8
	.word	.LC15
	.word	__ctype_ptr__
.L227:
	ldr	r3, [r4, #16]
.L228:
.LBE125:
.LBE124:
	.loc 1 621 0
	ldr	r2, [sp, #24]
	.loc 1 623 0
	mov	r5, #32
	.loc 1 621 0
	sub	r2, r2, #1
	str	r2, [sp, #24]
	.loc 1 623 0
	ldr	r2, [r6, #4]
	add	r1, sp, #44
	add	r2, r3, r2
	ldr	r3, [r6, #8]
	str	r5, [sp]
	lsl	r3, r3, #5
	bl	_FAT_cache_writePartialSector
.LVL234:
.L226:
	.loc 1 616 0
	ldr	r0, [sp, #28]
	cmp	r0, #0
	bne	.LCB2524
	b	.L170	@long jump
.LCB2524:
	ldr	r1, [sp, #24]
	cmp	r1, #0
	bne	.L229
	ldr	r5, [sp, #36]
	b	.L231
.L225:
	.loc 1 629 0
	mov	r3, r5
	add	r2, sp, #124
	add	r3, r3, #44
	ldmia	r2!, {r0, r1, r6}
	stmia	r3!, {r0, r1, r6}
	b	.L231
.LVL235:
.L244:
.LBE121:
.LBE120:
	.loc 1 825 0
	cmp	r6, #1
	beq	.L232
	.loc 1 827 0
	cmp	r6, r7
	beq	.L233
	mov	r2, #0
	b	.L234
.L233:
	mov	r2, #64
.L234:
	sub	r1, r6, #1
	ldr	r0, [sp, #24]
.LVL236:
	orr	r2, r2, r1
	add	r3, sp, #76
	strb	r2, [r3]
	add	r0, r0, #56
	ldr	r2, .L270
	add	r0, r5, r0
	mov	r1, #0
.LVL237:
.LBB126:
.LBB127:
	.loc 3 47 0
	mov	ip, r4
	str	r5, [sp, #8]
.LVL238:
.L238:
.LBE127:
.LBE126:
	.loc 1 829 0
	ldrb	r4, [r0, #1]
	str	r4, [sp, #28]
	cmp	r4, #0
	bne	.L235
	.loc 1 830 0
	cmp	r1, #1
	ble	.L236
	ldrb	r4, [r0]
	cmp	r4, #0
	bne	.L236
.LBB129:
.LBB131:
	.loc 3 47 0
	mov	r5, sp
.LVL239:
	mov	r4, #20
	ldrb	r4, [r4, r5]
	ldr	r5, [r2]
	strb	r4, [r3, r5]
	.loc 3 48 0
	add	r5, r5, r3
	str	r5, [sp, #28]
	mov	r4, sp
	mov	r5, #20
	ldrb	r4, [r5, r4]
	ldr	r5, [sp, #28]
	b	.L266
.LVL240:
.L236:
.LBE131:
.LBE129:
.LBB133:
.LBB134:
	.loc 3 47 0
	ldr	r4, [r2]
	mov	r5, #0
.LVL241:
	strb	r5, [r3, r4]
	.loc 3 48 0
	add	r4, r4, r3
	strb	r5, [r4, #1]
	b	.L237
.LVL242:
.L235:
.LBE134:
.LBE133:
.LBB135:
.LBB128:
	.loc 3 47 0
	mov	r4, sp
	mov	r5, #28
.LVL243:
	ldrb	r5, [r5, r4]
	ldr	r4, [r2]
	strb	r5, [r3, r4]
	.loc 3 48 0
	ldr	r5, [sp, #28]
	add	r4, r4, r3
	str	r4, [sp, #36]
	lsr	r4, r5, #8
	ldr	r5, [sp, #36]
.L266:
	strb	r4, [r5, #1]
.L237:
.LBE128:
.LBE135:
	.loc 1 828 0
	add	r1, r1, #1
.LVL244:
	add	r2, r2, #4
	add	r0, r0, #1
	cmp	r1, #13
	bne	.L238
	.loc 1 840 0
	add	r0, sp, #32
	add	r3, sp, #76
	ldrb	r0, [r0]
	.loc 1 841 0
	mov	r2, #15
	.loc 1 842 0
	mov	r1, #0
.LVL245:
	.loc 1 841 0
	strb	r2, [r3, #11]
	.loc 1 844 0
	ldr	r2, [sp, #148]
	mov	r4, ip
	.loc 1 840 0
	strb	r0, [r3, #13]
	.loc 1 842 0
	strb	r1, [r3, #12]
.LBB136:
.LBB137:
	.loc 3 47 0
	strb	r1, [r3, #26]
	.loc 3 48 0
	strb	r1, [r3, #27]
	ldr	r5, [sp, #8]
.LVL246:
.LBE137:
.LBE136:
	.loc 1 844 0
	ldr	r0, [r4, #4]
.LBB138:
.LBB139:
	.loc 4 61 0
	cmp	r2, #1
	bls	.L239
.LVL247:
	ldr	r1, [r4, #36]
	sub	r2, r2, #2
	mov	r3, r1
	mul	r3, r2
	ldr	r2, [r4, #28]
	add	r2, r3, r2
	b	.L240
.L239:
	ldr	r2, [r4, #16]
.L240:
.LBE139:
.LBE138:
	.loc 1 844 0
	add	r3, sp, #148
	ldr	r1, [r3, #4]
	ldr	r3, [r3, #8]
	add	r2, r2, r1
	mov	r1, #32
	str	r1, [sp]
	lsl	r3, r3, #5
	add	r1, sp, #76
	b	.L267
.LVL248:
.L232:
	.loc 1 847 0
	ldr	r2, [sp, #148]
	ldr	r0, [r4, #4]
.LVL249:
.LBB140:
.LBB141:
	.loc 4 61 0
	cmp	r2, #1
	bls	.L242
	ldr	r1, [r4, #36]
	sub	r2, r2, #2
	mov	r3, r1
	mul	r3, r2
	ldr	r2, [r4, #28]
	add	r2, r3, r2
	b	.L243
.L242:
	ldr	r2, [r4, #16]
.L243:
.LBE141:
.LBE140:
	.loc 1 847 0
	add	r3, sp, #148
	ldr	r1, [r3, #4]
	ldr	r3, [r3, #8]
	add	r2, r2, r1
	mov	r1, #32
	str	r1, [sp]
	lsl	r3, r3, #5
	mov	r1, r5
.LVL250:
.L267:
	bl	_FAT_cache_writePartialSector
	.loc 1 823 0
	mov	r2, #0
	mov	r0, r4
	add	r1, sp, #148
	bl	_FAT_directory_incrementDirEntryPosition
	ldr	r2, [sp, #24]
	sub	r6, r6, #1
.LVL251:
	sub	r2, r2, #13
	str	r2, [sp, #24]
.L247:
	.loc 1 822 0
	cmp	r6, #0
	ble	.L251
	cmp	r0, #0
	beq	.LCB2750
	b	.L244	@long jump
.LCB2750:
.LVL252:
.L251:
	mov	r0, #1
.LVL253:
	b	.L246
.L170:
	mov	r0, #0
.L246:
	.loc 1 852 0
	add	sp, sp, #164
	@ sp needed for prologue
.LVL254:
.LVL255:
.LVL256:
.LVL257:
	pop	{r4, r5, r6, r7, pc}
.LVL258:
.L231:
	.loc 1 820 0
	mov	r3, r5
	add	r2, sp, #148
	add	r3, r3, #32
	ldmia	r3!, {r0, r1, r6}
	stmia	r2!, {r0, r1, r6}
	.loc 1 822 0
	lsl	r3, r7, #1
	add	r3, r3, r7
	lsl	r3, r3, #2
	add	r3, r3, r7
	mov	r0, #1
.LVL259:
	sub	r3, r3, #27
.LBB142:
.LBB130:
	.loc 3 47 0
	neg	r2, r0
.LVL260:
.LBE130:
.LBE142:
	.loc 1 822 0
	mov	r6, r7
.LVL261:
	str	r3, [sp, #24]
.LBB143:
.LBB132:
	.loc 3 47 0
	str	r2, [sp, #20]
.LBE132:
.LBE143:
	.loc 1 822 0
	b	.L247
.L271:
	.align	2
.L270:
	.word	.LANCHOR0
.LFE31:
	.size	_FAT_directory_addEntry, .-_FAT_directory_addEntry
	.global	LFN_offset_table
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
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
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC8:
	.ascii	".\000"
.LC10:
	.ascii	"\\/:;*?\"<>|&+,=[]\000"
.LC12:
	.ascii	"\\/:*?\"<>|\000"
.LC15:
	.ascii	"..\000"
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI0-.LFB20
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
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI1-.LFB33
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI2-.LFB25
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI3-.LFB22
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI4-.LFB28
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
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x60
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI6-.LFB26
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
	.uleb128 0x60
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI8-.LFB23
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
	.uleb128 0x70
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI10-.LFB24
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
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI11-.LFB30
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
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x168
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI13-.LFB27
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
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x50
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI15-.LFB32
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
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x148
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI17-.LFB19
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI18-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI19-.LFB31
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
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0xb8
	.align	2
.LEFDE28:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB20-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB33-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB25-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB22-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x50
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
.LLST17:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 96
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB26-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 96
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LFB23-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 112
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL87-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LFB24-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LFB30-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 360
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 80
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LFB32-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 328
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LFB19-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL163-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LFB18-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LFB31-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI20-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 184
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL258-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL258-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST64:
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL258-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST65:
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL261-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST66:
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST67:
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST68:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.file 5 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/_types.h"
	.file 6 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h"
	.file 7 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/types.h"
	.file 8 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/stat.h"
	.file 9 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 10 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 11 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc_io.h"
	.file 12 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/cache.h"
	.file 13 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.h"
	.file 14 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc.h"
	.file 15 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/ctype.h"
	.section	.debug_info
	.4byte	0x12a1
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF201
	.byte	0x1
	.4byte	.LASF202
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
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x5
	.byte	0x10
	.4byte	0x64
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x5
	.byte	0x18
	.4byte	0x3d
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x5
	.byte	0x1d
	.4byte	0x36
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x5
	.byte	0x20
	.4byte	0x36
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x7
	.byte	0x4
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x7
	.byte	0x4
	.4byte	0xab
	.uleb128 0x8
	.4byte	0x9e
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x6
	.byte	0xd3
	.4byte	0x44
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x7
	.byte	0x6d
	.4byte	0x64
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x7
	.byte	0x85
	.4byte	0x44
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x7
	.byte	0xa2
	.4byte	0x59
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x7
	.byte	0xa3
	.4byte	0x6b
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x7
	.byte	0xa4
	.4byte	0x76
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x7
	.byte	0xa5
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x7
	.byte	0xbf
	.4byte	0x44
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x7
	.byte	0xc4
	.4byte	0x36
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x44
	.byte	0x8
	.byte	0x1a
	.4byte	0x20e
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x8
	.byte	0x1b
	.4byte	0xdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x8
	.byte	0x1c
	.4byte	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x8
	.byte	0x1d
	.4byte	0xfd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x8
	.byte	0x1e
	.4byte	0x108
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x8
	.byte	0x1f
	.4byte	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x8
	.byte	0x20
	.4byte	0xf2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x8
	.byte	0x21
	.4byte	0xdc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x8
	.byte	0x22
	.4byte	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x8
	.byte	0x30
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x8
	.byte	0x31
	.4byte	0x64
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x8
	.byte	0x32
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x8
	.byte	0x33
	.4byte	0x64
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x8
	.byte	0x34
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x8
	.byte	0x35
	.4byte	0x64
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x8
	.byte	0x36
	.4byte	0x64
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x8
	.byte	0x37
	.4byte	0x64
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x8
	.byte	0x38
	.4byte	0x20e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0xb
	.4byte	0x64
	.4byte	0x21e
	.uleb128 0xc
	.4byte	0x8c
	.byte	0x1
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x9
	.byte	0x2a
	.4byte	0x28
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x9
	.byte	0x36
	.4byte	0x36
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x9
	.byte	0x4f
	.4byte	0x3d
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x9
	.byte	0x50
	.4byte	0x44
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF44
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF45
	.uleb128 0xd
	.ascii	"u8\000"
	.byte	0xa
	.byte	0x62
	.4byte	0x21e
	.uleb128 0xd
	.ascii	"u16\000"
	.byte	0xa
	.byte	0x63
	.4byte	0x229
	.uleb128 0xd
	.ascii	"u32\000"
	.byte	0xa
	.byte	0x64
	.4byte	0x23f
	.uleb128 0xd
	.ascii	"s32\000"
	.byte	0xa
	.byte	0x69
	.4byte	0x234
	.uleb128 0xe
	.byte	0x1
	.byte	0xa
	.byte	0x7d
	.4byte	0x298
	.uleb128 0xf
	.4byte	.LASF46
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF47
	.sleb128 1
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0xa
	.byte	0x7d
	.4byte	0x283
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0xb
	.byte	0x3d
	.4byte	0x2ae
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2b4
	.uleb128 0x10
	.byte	0x1
	.4byte	0x298
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0xb
	.byte	0x3e
	.4byte	0x2ae
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0xb
	.byte	0x3f
	.4byte	0x2d0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2d6
	.uleb128 0x11
	.byte	0x1
	.4byte	0x298
	.4byte	0x2f0
	.uleb128 0x12
	.4byte	0x26d
	.uleb128 0x12
	.4byte	0x26d
	.uleb128 0x12
	.4byte	0x8f
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0xb
	.byte	0x40
	.4byte	0x2fb
	.uleb128 0x7
	.byte	0x4
	.4byte	0x301
	.uleb128 0x11
	.byte	0x1
	.4byte	0x298
	.4byte	0x31b
	.uleb128 0x12
	.4byte	0x26d
	.uleb128 0x12
	.4byte	0x26d
	.uleb128 0x12
	.4byte	0x31b
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x321
	.uleb128 0x13
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0xb
	.byte	0x41
	.4byte	0x2ae
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0xb
	.byte	0x42
	.4byte	0x2ae
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x20
	.byte	0xb
	.byte	0x44
	.4byte	0x3b5
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0xb
	.byte	0x45
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0xb
	.byte	0x46
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0xb
	.byte	0x47
	.4byte	0x2a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0xb
	.byte	0x48
	.4byte	0x2ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0xb
	.byte	0x49
	.4byte	0x2c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0xb
	.byte	0x4a
	.4byte	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0xb
	.byte	0x4b
	.4byte	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0xb
	.byte	0x4c
	.4byte	0x32d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0xb
	.byte	0x4f
	.4byte	0x338
	.uleb128 0x14
	.byte	0xc
	.byte	0xc
	.byte	0x2f
	.4byte	0x3f3
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xc
	.byte	0x30
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0xc
	.byte	0x31
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0xc
	.byte	0x32
	.4byte	0x298
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0xc
	.byte	0x33
	.4byte	0x3c0
	.uleb128 0x14
	.byte	0x10
	.byte	0xc
	.byte	0x35
	.4byte	0x43f
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0xc
	.byte	0x36
	.4byte	0x43f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0xc
	.byte	0x37
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0xc
	.byte	0x38
	.4byte	0x44a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0xc
	.byte	0x39
	.4byte	0x450
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x445
	.uleb128 0x8
	.4byte	0x3b5
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3f3
	.uleb128 0x7
	.byte	0x4
	.4byte	0x258
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0xc
	.byte	0x3a
	.4byte	0x3fe
	.uleb128 0xe
	.byte	0x1
	.byte	0xd
	.byte	0x2d
	.4byte	0x482
	.uleb128 0xf
	.4byte	.LASF75
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF76
	.sleb128 1
	.uleb128 0xf
	.4byte	.LASF77
	.sleb128 2
	.uleb128 0xf
	.4byte	.LASF78
	.sleb128 3
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0xd
	.byte	0x2d
	.4byte	0x461
	.uleb128 0x14
	.byte	0x10
	.byte	0xd
	.byte	0x35
	.4byte	0x4ce
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0xd
	.byte	0x36
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0xd
	.byte	0x37
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xd
	.byte	0x38
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0xd
	.byte	0x39
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.ascii	"FAT\000"
	.byte	0xd
	.byte	0x3a
	.4byte	0x48d
	.uleb128 0x14
	.byte	0x44
	.byte	0xd
	.byte	0x3c
	.4byte	0x5b4
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0xd
	.byte	0x3d
	.4byte	0x43f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0xd
	.byte	0x3e
	.4byte	0x5b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0xd
	.byte	0x40
	.4byte	0x298
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0xd
	.byte	0x41
	.4byte	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0xd
	.byte	0x42
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0xd
	.byte	0x43
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0xd
	.byte	0x44
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0xd
	.byte	0x45
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0xd
	.byte	0x46
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0xd
	.byte	0x47
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0xd
	.byte	0x48
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0xd
	.byte	0x49
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.ascii	"fat\000"
	.byte	0xd
	.byte	0x4a
	.4byte	0x4ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0xd
	.byte	0x4c
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF96
	.byte	0xd
	.byte	0x4d
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x456
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0xd
	.byte	0x4e
	.4byte	0x4d9
	.uleb128 0x14
	.byte	0xc
	.byte	0x2
	.byte	0x3c
	.4byte	0x5f8
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0x2
	.byte	0x3d
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x2
	.byte	0x3e
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0x2
	.byte	0x3f
	.4byte	0x278
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0x2
	.byte	0x40
	.4byte	0x5c5
	.uleb128 0x16
	.2byte	0x138
	.byte	0x2
	.byte	0x42
	.4byte	0x645
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0x2
	.byte	0x43
	.4byte	0x645
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0x2
	.byte	0x44
	.4byte	0x5f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0x2
	.byte	0x45
	.4byte	0x5f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0x2
	.byte	0x46
	.4byte	0x655
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0xb
	.4byte	0x258
	.4byte	0x655
	.uleb128 0xc
	.4byte	0x8c
	.byte	0x1f
	.byte	0x0
	.uleb128 0xb
	.4byte	0x9e
	.4byte	0x665
	.uleb128 0xc
	.4byte	0x8c
	.byte	0xff
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0x2
	.byte	0x47
	.4byte	0x603
	.uleb128 0x17
	.4byte	.LASF118
	.byte	0x1
	.byte	0x2
	.byte	0x4a
	.4byte	0x6cb
	.uleb128 0xf
	.4byte	.LASF105
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF106
	.sleb128 8
	.uleb128 0xf
	.4byte	.LASF107
	.sleb128 11
	.uleb128 0xf
	.4byte	.LASF108
	.sleb128 12
	.uleb128 0xf
	.4byte	.LASF109
	.sleb128 13
	.uleb128 0xf
	.4byte	.LASF110
	.sleb128 14
	.uleb128 0xf
	.4byte	.LASF111
	.sleb128 16
	.uleb128 0xf
	.4byte	.LASF112
	.sleb128 18
	.uleb128 0xf
	.4byte	.LASF113
	.sleb128 20
	.uleb128 0xf
	.4byte	.LASF114
	.sleb128 22
	.uleb128 0xf
	.4byte	.LASF115
	.sleb128 24
	.uleb128 0xf
	.4byte	.LASF116
	.sleb128 26
	.uleb128 0xf
	.4byte	.LASF117
	.sleb128 28
	.byte	0x0
	.uleb128 0x17
	.4byte	.LASF119
	.byte	0x1
	.byte	0x1
	.byte	0x3d
	.4byte	0x744
	.uleb128 0xf
	.4byte	.LASF120
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF121
	.sleb128 1
	.uleb128 0xf
	.4byte	.LASF122
	.sleb128 3
	.uleb128 0xf
	.4byte	.LASF123
	.sleb128 5
	.uleb128 0xf
	.4byte	.LASF124
	.sleb128 7
	.uleb128 0xf
	.4byte	.LASF125
	.sleb128 9
	.uleb128 0xf
	.4byte	.LASF126
	.sleb128 11
	.uleb128 0xf
	.4byte	.LASF127
	.sleb128 12
	.uleb128 0xf
	.4byte	.LASF128
	.sleb128 13
	.uleb128 0xf
	.4byte	.LASF129
	.sleb128 14
	.uleb128 0xf
	.4byte	.LASF130
	.sleb128 16
	.uleb128 0xf
	.4byte	.LASF131
	.sleb128 18
	.uleb128 0xf
	.4byte	.LASF132
	.sleb128 20
	.uleb128 0xf
	.4byte	.LASF133
	.sleb128 22
	.uleb128 0xf
	.4byte	.LASF134
	.sleb128 24
	.uleb128 0xf
	.4byte	.LASF135
	.sleb128 26
	.uleb128 0xf
	.4byte	.LASF136
	.sleb128 28
	.uleb128 0xf
	.4byte	.LASF137
	.sleb128 30
	.byte	0x0
	.uleb128 0x18
	.4byte	.LASF139
	.byte	0x3
	.byte	0x26
	.byte	0x1
	.4byte	0x262
	.byte	0x3
	.4byte	0x76c
	.uleb128 0x19
	.4byte	.LASF138
	.byte	0x3
	.byte	0x26
	.4byte	0x76c
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x3
	.byte	0x26
	.4byte	0x3d
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x772
	.uleb128 0x8
	.4byte	0x258
	.uleb128 0x18
	.4byte	.LASF140
	.byte	0xe
	.byte	0x73
	.byte	0x1
	.4byte	0x26d
	.byte	0x3
	.4byte	0x794
	.uleb128 0x19
	.4byte	.LASF70
	.byte	0xe
	.byte	0x73
	.4byte	0x43f
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF203
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.4byte	0x26d
	.byte	0x1
	.4byte	0x7b2
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0x1
	.byte	0xbc
	.4byte	0x76c
	.byte	0x0
	.uleb128 0x18
	.4byte	.LASF141
	.byte	0x2
	.byte	0x5d
	.byte	0x1
	.4byte	0x298
	.byte	0x3
	.4byte	0x7cf
	.uleb128 0x19
	.4byte	.LASF142
	.byte	0x2
	.byte	0x5d
	.4byte	0x7cf
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x665
	.uleb128 0x18
	.4byte	.LASF143
	.byte	0x2
	.byte	0x61
	.byte	0x1
	.4byte	0x298
	.byte	0x3
	.4byte	0x7f2
	.uleb128 0x19
	.4byte	.LASF142
	.byte	0x2
	.byte	0x61
	.4byte	0x7cf
	.byte	0x0
	.uleb128 0x18
	.4byte	.LASF144
	.byte	0x3
	.byte	0x2a
	.byte	0x1
	.4byte	0x26d
	.byte	0x3
	.4byte	0x81a
	.uleb128 0x19
	.4byte	.LASF138
	.byte	0x3
	.byte	0x2a
	.4byte	0x76c
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x3
	.byte	0x2a
	.4byte	0x3d
	.byte	0x0
	.uleb128 0x1b
	.4byte	.LASF204
	.byte	0x3
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.4byte	0x849
	.uleb128 0x19
	.4byte	.LASF138
	.byte	0x3
	.byte	0x2e
	.4byte	0x450
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x3
	.byte	0x2e
	.4byte	0x3d
	.uleb128 0x19
	.4byte	.LASF145
	.byte	0x3
	.byte	0x2e
	.4byte	0x262
	.byte	0x0
	.uleb128 0x18
	.4byte	.LASF146
	.byte	0x4
	.byte	0x3c
	.byte	0x1
	.4byte	0x26d
	.byte	0x3
	.4byte	0x871
	.uleb128 0x19
	.4byte	.LASF147
	.byte	0x4
	.byte	0x3c
	.4byte	0x871
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0x4
	.byte	0x3c
	.4byte	0x26d
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5ba
	.uleb128 0x1c
	.4byte	.LASF149
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.4byte	0x298
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LLST0
	.4byte	0x8c6
	.uleb128 0x1d
	.4byte	.LASF101
	.byte	0x1
	.byte	0x9b
	.4byte	0x76c
	.4byte	.LLST1
	.uleb128 0x1e
	.4byte	.LASF148
	.byte	0x1
	.byte	0x9b
	.4byte	0x98
	.byte	0x1
	.byte	0x51
	.uleb128 0x1f
	.ascii	"i\000"
	.byte	0x1
	.byte	0x9c
	.4byte	0x3d
	.4byte	.LLST2
	.uleb128 0x20
	.ascii	"j\000"
	.byte	0x1
	.byte	0x9d
	.4byte	0x3d
	.byte	0x0
	.uleb128 0x21
	.4byte	0x794
	.4byte	.LFB21
	.4byte	.LFE21
	.byte	0x1
	.byte	0x5d
	.4byte	0x8e3
	.uleb128 0x22
	.4byte	0x7a6
	.4byte	.LLST4
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x366
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LLST5
	.4byte	0x943
	.uleb128 0x24
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x366
	.4byte	0x871
	.4byte	.LLST6
	.uleb128 0x24
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x366
	.4byte	0x7cf
	.4byte	.LLST7
	.uleb128 0x25
	.ascii	"st\000"
	.byte	0x1
	.2byte	0x366
	.4byte	0x943
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	0x7b2
	.4byte	.LBB70
	.4byte	.LBE70
	.byte	0x1
	.2byte	0x36b
	.uleb128 0x27
	.4byte	0x7c3
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x113
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x153
	.byte	0x1
	.4byte	0x298
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST9
	.4byte	0x9cc
	.uleb128 0x24
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x153
	.4byte	0x871
	.4byte	.LLST10
	.uleb128 0x24
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x153
	.4byte	0x7cf
	.4byte	.LLST11
	.uleb128 0x29
	.4byte	0x81a
	.4byte	.LBB72
	.4byte	.LBE72
	.byte	0x1
	.2byte	0x163
	.4byte	0x9ab
	.uleb128 0x27
	.4byte	0x83d
	.uleb128 0x27
	.4byte	0x832
	.uleb128 0x27
	.4byte	0x827
	.byte	0x0
	.uleb128 0x26
	.4byte	0x81a
	.4byte	.LBB74
	.4byte	.LBE74
	.byte	0x1
	.2byte	0x164
	.uleb128 0x27
	.4byte	0x83d
	.uleb128 0x27
	.4byte	0x832
	.uleb128 0x27
	.4byte	0x827
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.4byte	.LASF150
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.4byte	0x298
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LLST12
	.4byte	0xa30
	.uleb128 0x1d
	.4byte	.LASF147
	.byte	0x1
	.byte	0xc0
	.4byte	0x871
	.4byte	.LLST13
	.uleb128 0x1d
	.4byte	.LASF151
	.byte	0x1
	.byte	0xc0
	.4byte	0xa30
	.4byte	.LLST14
	.uleb128 0x1d
	.4byte	.LASF152
	.byte	0x1
	.byte	0xc0
	.4byte	0x298
	.4byte	.LLST15
	.uleb128 0x2a
	.4byte	.LASF153
	.byte	0x1
	.byte	0xc1
	.4byte	0x5f8
	.uleb128 0x2b
	.4byte	.LASF154
	.byte	0x1
	.byte	0xc3
	.4byte	0x26d
	.4byte	.LLST16
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5f8
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x216
	.byte	0x1
	.4byte	0x298
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST17
	.4byte	0xafa
	.uleb128 0x24
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x216
	.4byte	0x871
	.4byte	.LLST18
	.uleb128 0x24
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x216
	.4byte	0x7cf
	.4byte	.LLST19
	.uleb128 0x2c
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x217
	.4byte	0x5f8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x218
	.4byte	0x5f8
	.uleb128 0x2e
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x21b
	.4byte	0x298
	.4byte	.LLST20
	.uleb128 0x2e
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x21c
	.4byte	0x298
	.4byte	.LLST21
	.uleb128 0x2c
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x21e
	.4byte	0x645
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.4byte	0x849
	.4byte	.LBB76
	.4byte	.LBE76
	.byte	0x1
	.2byte	0x225
	.4byte	0xade
	.uleb128 0x27
	.4byte	0x865
	.uleb128 0x27
	.4byte	0x85a
	.byte	0x0
	.uleb128 0x26
	.4byte	0x849
	.4byte	.LBB78
	.4byte	.LBE78
	.byte	0x1
	.2byte	0x227
	.uleb128 0x27
	.4byte	0x865
	.uleb128 0x27
	.4byte	0x85a
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x169
	.byte	0x1
	.4byte	0x298
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST22
	.4byte	0xbb4
	.uleb128 0x24
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x169
	.4byte	0x871
	.4byte	.LLST23
	.uleb128 0x24
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x169
	.4byte	0x7cf
	.4byte	.LLST24
	.uleb128 0x2c
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x16a
	.4byte	0x5f8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x16b
	.4byte	0x5f8
	.uleb128 0x2e
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x16e
	.4byte	0x298
	.4byte	.LLST25
	.uleb128 0x2c
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x16f
	.4byte	0x298
	.byte	0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2f
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x171
	.4byte	0x3d
	.uleb128 0x2d
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x172
	.4byte	0x3d
	.uleb128 0x2c
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x174
	.4byte	0x645
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.4byte	0x849
	.4byte	.LBB80
	.4byte	.LBE80
	.byte	0x1
	.2byte	0x17d
	.uleb128 0x27
	.4byte	0x865
	.uleb128 0x27
	.4byte	0x85a
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF163
	.byte	0x1
	.byte	0xe3
	.byte	0x1
	.4byte	0x298
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST26
	.4byte	0xca8
	.uleb128 0x1d
	.4byte	.LASF147
	.byte	0x1
	.byte	0xe3
	.4byte	0x871
	.4byte	.LLST27
	.uleb128 0x1d
	.4byte	.LASF142
	.byte	0x1
	.byte	0xe3
	.4byte	0x7cf
	.4byte	.LLST28
	.uleb128 0x31
	.4byte	.LASF157
	.byte	0x1
	.byte	0xe4
	.4byte	0x5f8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x31
	.4byte	.LASF158
	.byte	0x1
	.byte	0xe5
	.4byte	0x5f8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.4byte	.LASF101
	.byte	0x1
	.byte	0xe7
	.4byte	0x645
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.4byte	.LASF164
	.byte	0x1
	.byte	0xe9
	.4byte	0x298
	.byte	0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2a
	.4byte	.LASF165
	.byte	0x1
	.byte	0xe9
	.4byte	0x298
	.uleb128 0x2a
	.4byte	.LASF166
	.byte	0x1
	.byte	0xea
	.4byte	0x26d
	.uleb128 0x2a
	.4byte	.LASF162
	.byte	0x1
	.byte	0xeb
	.4byte	0x3d
	.uleb128 0x31
	.4byte	.LASF167
	.byte	0x1
	.byte	0xec
	.4byte	0x258
	.byte	0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2b
	.4byte	.LASF168
	.byte	0x1
	.byte	0xec
	.4byte	0x258
	.4byte	.LLST29
	.uleb128 0x31
	.4byte	.LASF103
	.byte	0x1
	.byte	0xed
	.4byte	0x98
	.byte	0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x2b
	.4byte	.LASF169
	.byte	0x1
	.byte	0xee
	.4byte	0x298
	.4byte	.LLST30
	.uleb128 0x20
	.ascii	"i\000"
	.byte	0x1
	.byte	0xf0
	.4byte	0x3d
	.uleb128 0x26
	.4byte	0x849
	.4byte	.LBB82
	.4byte	.LBE82
	.byte	0x1
	.2byte	0x10f
	.uleb128 0x27
	.4byte	0x865
	.uleb128 0x27
	.4byte	0x85a
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x149
	.byte	0x1
	.4byte	0x298
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LLST31
	.4byte	0xcf7
	.uleb128 0x24
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x149
	.4byte	0x871
	.4byte	.LLST32
	.uleb128 0x24
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x149
	.4byte	0x7cf
	.4byte	.LLST33
	.uleb128 0x24
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x149
	.4byte	0x26d
	.4byte	.LLST34
	.byte	0x0
	.uleb128 0x32
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x27b
	.byte	0x1
	.4byte	0x298
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LLST35
	.4byte	0xd84
	.uleb128 0x24
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x27b
	.4byte	0x871
	.4byte	.LLST36
	.uleb128 0x24
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x27b
	.4byte	0xa5
	.4byte	.LLST37
	.uleb128 0x24
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x27b
	.4byte	0x26d
	.4byte	.LLST38
	.uleb128 0x2c
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x27c
	.4byte	0x665
	.byte	0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2e
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x27d
	.4byte	0x298
	.4byte	.LLST39
	.uleb128 0x2c
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x27e
	.4byte	0xd84
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x27f
	.4byte	0x26d
	.4byte	.LLST40
	.byte	0x0
	.uleb128 0xb
	.4byte	0x9e
	.4byte	0xd94
	.uleb128 0xc
	.4byte	0x8c
	.byte	0xc
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x1a2
	.byte	0x1
	.4byte	0x298
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST41
	.4byte	0xeba
	.uleb128 0x24
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x871
	.4byte	.LLST42
	.uleb128 0x24
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x7cf
	.4byte	.LLST43
	.uleb128 0x24
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x1a2
	.4byte	0xa5
	.4byte	.LLST44
	.uleb128 0x24
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x1a2
	.4byte	0xa5
	.4byte	.LLST45
	.uleb128 0x2e
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x1a3
	.4byte	0xb0
	.4byte	.LLST46
	.uleb128 0x2e
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x1a4
	.4byte	0xa5
	.4byte	.LLST47
	.uleb128 0x2d
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x1a5
	.4byte	0xa5
	.uleb128 0x2c
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x26d
	.byte	0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2c
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x298
	.byte	0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2c
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x1a9
	.4byte	0xd84
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x298
	.4byte	.LLST48
	.uleb128 0x2e
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x298
	.4byte	.LLST49
	.uleb128 0x33
	.4byte	0x794
	.4byte	.LBB84
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x200
	.uleb128 0x27
	.4byte	0x8d9
	.uleb128 0x34
	.4byte	0x744
	.4byte	.LBB89
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xbd
	.4byte	0xe9e
	.uleb128 0x27
	.4byte	0x760
	.uleb128 0x27
	.4byte	0x755
	.byte	0x0
	.uleb128 0x35
	.4byte	0x744
	.4byte	.LBB93
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0xbd
	.uleb128 0x27
	.4byte	0x760
	.uleb128 0x27
	.4byte	0x755
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x356
	.byte	0x1
	.4byte	0x298
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LLST50
	.4byte	0xf09
	.uleb128 0x24
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x356
	.4byte	0x871
	.4byte	.LLST51
	.uleb128 0x24
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x356
	.4byte	0xa5
	.4byte	.LLST52
	.uleb128 0x2c
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x357
	.4byte	0x665
	.byte	0x3
	.byte	0x91
	.sleb128 -328
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF184
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.4byte	0x298
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST53
	.4byte	0xf5d
	.uleb128 0x1d
	.4byte	.LASF173
	.byte	0x1
	.byte	0x6c
	.4byte	0xa5
	.4byte	.LLST54
	.uleb128 0x1f
	.ascii	"i\000"
	.byte	0x1
	.byte	0x6d
	.4byte	0x26d
	.4byte	.LLST55
	.uleb128 0x2b
	.4byte	.LASF185
	.byte	0x1
	.byte	0x6e
	.4byte	0x26d
	.4byte	.LLST56
	.uleb128 0x20
	.ascii	"dot\000"
	.byte	0x1
	.byte	0x6f
	.4byte	0xa5
	.byte	0x0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF186
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	0x298
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST57
	.4byte	0xfa4
	.uleb128 0x1d
	.4byte	.LASF173
	.byte	0x1
	.byte	0x56
	.4byte	0xa5
	.4byte	.LLST58
	.uleb128 0x36
	.ascii	"i\000"
	.byte	0x1
	.byte	0x57
	.4byte	0x26d
	.byte	0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	.LASF185
	.byte	0x1
	.byte	0x58
	.4byte	0x26d
	.4byte	.LLST59
	.byte	0x0
	.uleb128 0x37
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x234
	.byte	0x1
	.4byte	0x298
	.byte	0x1
	.4byte	0x102f
	.uleb128 0x38
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x234
	.4byte	0x871
	.uleb128 0x38
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x234
	.4byte	0x7cf
	.uleb128 0x38
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x234
	.4byte	0x26d
	.uleb128 0x38
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x234
	.4byte	0x26d
	.uleb128 0x2d
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x235
	.4byte	0x5f8
	.uleb128 0x2d
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x236
	.4byte	0x5f8
	.uleb128 0x2d
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x238
	.4byte	0x645
	.uleb128 0x2d
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x23a
	.4byte	0x26d
	.uleb128 0x2d
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x23c
	.4byte	0x298
	.uleb128 0x2d
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x23c
	.4byte	0x298
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x29e
	.byte	0x1
	.4byte	0x298
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LLST60
	.4byte	0x1270
	.uleb128 0x24
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x29e
	.4byte	0x871
	.4byte	.LLST61
	.uleb128 0x24
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x29e
	.4byte	0x7cf
	.4byte	.LLST62
	.uleb128 0x24
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x29e
	.4byte	0x26d
	.4byte	.LLST63
	.uleb128 0x2e
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x29f
	.4byte	0x26d
	.4byte	.LLST64
	.uleb128 0x2c
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x2a0
	.4byte	0x645
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x39
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x2a1
	.4byte	0x278
	.4byte	.LLST65
	.uleb128 0x39
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x2a1
	.4byte	0x278
	.4byte	.LLST66
	.uleb128 0x2e
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x2a2
	.4byte	0x98
	.4byte	.LLST67
	.uleb128 0x2c
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x2a3
	.4byte	0x5f8
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x2a4
	.4byte	0x298
	.4byte	.LLST68
	.uleb128 0x2c
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x2a5
	.4byte	0x258
	.byte	0x2
	.byte	0x7d
	.sleb128 32
	.uleb128 0x2c
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x2a6
	.4byte	0xd84
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.4byte	0xfa4
	.4byte	.LBB120
	.4byte	.LBE120
	.byte	0x1
	.2byte	0x32f
	.4byte	0x11a5
	.uleb128 0x27
	.4byte	0xfda
	.uleb128 0x27
	.4byte	0xfce
	.uleb128 0x27
	.4byte	0xfc2
	.uleb128 0x27
	.4byte	0xfb6
	.uleb128 0x3a
	.4byte	.LBB121
	.4byte	.LBE121
	.uleb128 0x3b
	.4byte	0xfe6
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3b
	.4byte	0xff2
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3b
	.4byte	0xffe
	.byte	0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x3b
	.4byte	0x100a
	.byte	0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x3b
	.4byte	0x1016
	.byte	0x2
	.byte	0x7d
	.sleb128 24
	.uleb128 0x3b
	.4byte	0x1022
	.byte	0x2
	.byte	0x7d
	.sleb128 28
	.uleb128 0x29
	.4byte	0x849
	.4byte	.LBB122
	.4byte	.LBE122
	.byte	0x1
	.2byte	0x24a
	.4byte	0x1188
	.uleb128 0x27
	.4byte	0x865
	.uleb128 0x27
	.4byte	0x85a
	.byte	0x0
	.uleb128 0x26
	.4byte	0x849
	.4byte	.LBB124
	.4byte	.LBE124
	.byte	0x1
	.2byte	0x26f
	.uleb128 0x27
	.4byte	0x85a
	.uleb128 0x27
	.4byte	0x865
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.4byte	0x81a
	.4byte	.LBB126
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x344
	.4byte	0x11c9
	.uleb128 0x27
	.4byte	0x83d
	.uleb128 0x27
	.4byte	0x832
	.uleb128 0x27
	.4byte	0x827
	.byte	0x0
	.uleb128 0x3c
	.4byte	0x81a
	.4byte	.LBB129
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.2byte	0x33f
	.4byte	0x11ed
	.uleb128 0x27
	.4byte	0x83d
	.uleb128 0x27
	.4byte	0x832
	.uleb128 0x27
	.4byte	0x827
	.byte	0x0
	.uleb128 0x29
	.4byte	0x81a
	.4byte	.LBB133
	.4byte	.LBE133
	.byte	0x1
	.2byte	0x341
	.4byte	0x1211
	.uleb128 0x27
	.4byte	0x83d
	.uleb128 0x27
	.4byte	0x832
	.uleb128 0x27
	.4byte	0x827
	.byte	0x0
	.uleb128 0x29
	.4byte	0x81a
	.4byte	.LBB136
	.4byte	.LBE136
	.byte	0x1
	.2byte	0x34b
	.4byte	0x1235
	.uleb128 0x27
	.4byte	0x83d
	.uleb128 0x27
	.4byte	0x832
	.uleb128 0x27
	.4byte	0x827
	.byte	0x0
	.uleb128 0x29
	.4byte	0x849
	.4byte	.LBB138
	.4byte	.LBE138
	.byte	0x1
	.2byte	0x34c
	.4byte	0x1254
	.uleb128 0x27
	.4byte	0x865
	.uleb128 0x27
	.4byte	0x85a
	.byte	0x0
	.uleb128 0x26
	.4byte	0x849
	.4byte	.LBB140
	.4byte	.LBE140
	.byte	0x1
	.2byte	0x34f
	.uleb128 0x27
	.4byte	0x865
	.uleb128 0x27
	.4byte	0x85a
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
	.4byte	.LASF199
	.byte	0xf
	.byte	0x2d
	.4byte	0x98
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0x3d
	.4byte	0x128d
	.uleb128 0xc
	.4byte	0x8c
	.byte	0xc
	.byte	0x0
	.uleb128 0x3e
	.4byte	.LASF200
	.byte	0x1
	.byte	0x51
	.4byte	0x129f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	LFN_offset_table
	.uleb128 0x8
	.4byte	0x127d
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
	.uleb128 0x5
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x33
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.4byte	0x12a5
	.4byte	0x8c6
	.ascii	"_FAT_directory_entryGetCluster\000"
	.4byte	0x8e3
	.ascii	"_FAT_directory_entryStat\000"
	.4byte	0x949
	.ascii	"_FAT_directory_getRootEntry\000"
	.4byte	0xa36
	.ascii	"_FAT_directory_removeEntry\000"
	.4byte	0xafa
	.ascii	"_FAT_directory_entryFromPosition\000"
	.4byte	0xbb4
	.ascii	"_FAT_directory_getNextEntry\000"
	.4byte	0xca8
	.ascii	"_FAT_directory_getFirstEntry\000"
	.4byte	0xd94
	.ascii	"_FAT_directory_entryFromPath\000"
	.4byte	0xeba
	.ascii	"_FAT_directory_chdir\000"
	.4byte	0xf09
	.ascii	"_FAT_directory_isValidAlias\000"
	.4byte	0xf5d
	.ascii	"_FAT_directory_isValidLfn\000"
	.4byte	0x102f
	.ascii	"_FAT_directory_addEntry\000"
	.4byte	0x128d
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
	.4byte	.LBB84-.Ltext0
	.4byte	.LBE84-.Ltext0
	.4byte	.LBB101-.Ltext0
	.4byte	.LBE101-.Ltext0
	.4byte	.LBB100-.Ltext0
	.4byte	.LBE100-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB89-.Ltext0
	.4byte	.LBE89-.Ltext0
	.4byte	.LBB88-.Ltext0
	.4byte	.LBE88-.Ltext0
	.4byte	.LBB97-.Ltext0
	.4byte	.LBE97-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB93-.Ltext0
	.4byte	.LBE93-.Ltext0
	.4byte	.LBB87-.Ltext0
	.4byte	.LBE87-.Ltext0
	.4byte	.LBB98-.Ltext0
	.4byte	.LBE98-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB126-.Ltext0
	.4byte	.LBE126-.Ltext0
	.4byte	.LBB135-.Ltext0
	.4byte	.LBE135-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB129-.Ltext0
	.4byte	.LBE129-.Ltext0
	.4byte	.LBB143-.Ltext0
	.4byte	.LBE143-.Ltext0
	.4byte	.LBB142-.Ltext0
	.4byte	.LBE142-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF117:
	.ascii	"DIR_ENTRY_fileSize\000"
.LASF201:
	.ascii	"GNU C 4.4.3\000"
.LASF93:
	.ascii	"sectorsPerCluster\000"
.LASF186:
	.ascii	"_FAT_directory_isValidLfn\000"
.LASF53:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF110:
	.ascii	"DIR_ENTRY_cTime\000"
.LASF87:
	.ascii	"totalSize\000"
.LASF56:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF61:
	.ascii	"fn_readSectors\000"
.LASF194:
	.ascii	"entrySize\000"
.LASF205:
	.ascii	"_FAT_directory_entryStat\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF139:
	.ascii	"u8array_to_u16\000"
.LASF120:
	.ascii	"LFN_offset_ordinal\000"
.LASF37:
	.ascii	"st_blksize\000"
.LASF121:
	.ascii	"LFN_offset_char0\000"
.LASF122:
	.ascii	"LFN_offset_char1\000"
.LASF123:
	.ascii	"LFN_offset_char2\000"
.LASF124:
	.ascii	"LFN_offset_char3\000"
.LASF125:
	.ascii	"LFN_offset_char4\000"
.LASF129:
	.ascii	"LFN_offset_char5\000"
.LASF130:
	.ascii	"LFN_offset_char6\000"
.LASF131:
	.ascii	"LFN_offset_char7\000"
.LASF132:
	.ascii	"LFN_offset_char8\000"
.LASF133:
	.ascii	"LFN_offset_char9\000"
.LASF109:
	.ascii	"DIR_ENTRY_cTime_ms\000"
.LASF178:
	.ascii	"_FAT_directory_entryFromPath\000"
.LASF137:
	.ascii	"LFN_offset_char12\000"
.LASF96:
	.ascii	"openFileCount\000"
.LASF193:
	.ascii	"_FAT_directory_addEntry\000"
.LASF102:
	.ascii	"dataEnd\000"
.LASF140:
	.ascii	"_FAT_disc_hostType\000"
.LASF104:
	.ascii	"DIR_ENTRY\000"
.LASF161:
	.ascii	"_FAT_directory_entryFromPosition\000"
.LASF16:
	.ascii	"ino_t\000"
.LASF195:
	.ascii	"lfnEntry\000"
.LASF43:
	.ascii	"uint32_t\000"
.LASF100:
	.ascii	"DIR_ENTRY_POSITION\000"
.LASF170:
	.ascii	"_FAT_directory_getFirstEntry\000"
.LASF144:
	.ascii	"u8array_to_u32\000"
.LASF95:
	.ascii	"cwdCluster\000"
.LASF44:
	.ascii	"float\000"
.LASF67:
	.ascii	"count\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF38:
	.ascii	"st_blocks\000"
.LASF191:
	.ascii	"dirEntryRemain\000"
.LASF101:
	.ascii	"entryData\000"
.LASF33:
	.ascii	"st_mtime\000"
.LASF57:
	.ascii	"ioType\000"
.LASF169:
	.ascii	"lfnExists\000"
.LASF62:
	.ascii	"fn_writeSectors\000"
.LASF145:
	.ascii	"value\000"
.LASF55:
	.ascii	"stat\000"
.LASF64:
	.ascii	"fn_shutdown\000"
.LASF134:
	.ascii	"LFN_offset_char10\000"
.LASF136:
	.ascii	"LFN_offset_char11\000"
.LASF54:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF82:
	.ascii	"lastCluster\000"
.LASF14:
	.ascii	"size_t\000"
.LASF192:
	.ascii	"endOfDirectory\000"
.LASF155:
	.ascii	"_FAT_directory_getRootEntry\000"
.LASF99:
	.ascii	"offset\000"
.LASF183:
	.ascii	"_FAT_directory_chdir\000"
.LASF160:
	.ascii	"finished\000"
.LASF196:
	.ascii	"tmpCharPtr\000"
.LASF94:
	.ascii	"bytesPerCluster\000"
.LASF28:
	.ascii	"st_gid\000"
.LASF25:
	.ascii	"st_mode\000"
.LASF76:
	.ascii	"FS_FAT12\000"
.LASF158:
	.ascii	"entryEnd\000"
.LASF77:
	.ascii	"FS_FAT16\000"
.LASF26:
	.ascii	"st_nlink\000"
.LASF179:
	.ascii	"path\000"
.LASF190:
	.ascii	"gapEnd\000"
.LASF47:
	.ascii	"true\000"
.LASF156:
	.ascii	"_FAT_directory_removeEntry\000"
.LASF98:
	.ascii	"cluster\000"
.LASF91:
	.ascii	"dataStart\000"
.LASF97:
	.ascii	"PARTITION\000"
.LASF50:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF13:
	.ascii	"char\000"
.LASF184:
	.ascii	"_FAT_directory_isValidAlias\000"
.LASF106:
	.ascii	"DIR_ENTRY_extension\000"
.LASF103:
	.ascii	"filename\000"
.LASF114:
	.ascii	"DIR_ENTRY_mTime\000"
.LASF51:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF85:
	.ascii	"readOnly\000"
.LASF90:
	.ascii	"numberOfSectors\000"
.LASF31:
	.ascii	"st_atime\000"
.LASF40:
	.ascii	"uint8_t\000"
.LASF15:
	.ascii	"time_t\000"
.LASF63:
	.ascii	"fn_clearStatus\000"
.LASF198:
	.ascii	"aliasCheckSum\000"
.LASF73:
	.ascii	"pages\000"
.LASF74:
	.ascii	"CACHE\000"
.LASF24:
	.ascii	"st_ino\000"
.LASF151:
	.ascii	"entryPosition\000"
.LASF165:
	.ascii	"found\000"
.LASF115:
	.ascii	"DIR_ENTRY_mDate\000"
.LASF105:
	.ascii	"DIR_ENTRY_name\000"
.LASF5:
	.ascii	"long long int\000"
.LASF78:
	.ascii	"FS_FAT32\000"
.LASF127:
	.ascii	"LFN_offset_reserved1\000"
.LASF135:
	.ascii	"LFN_offset_reserved2\000"
.LASF9:
	.ascii	"__dev_t\000"
.LASF119:
	.ascii	"LFN_offset\000"
.LASF147:
	.ascii	"partition\000"
.LASF118:
	.ascii	"DIR_ENTRY_offset\000"
.LASF18:
	.ascii	"dev_t\000"
.LASF154:
	.ascii	"tempCluster\000"
.LASF48:
	.ascii	"bool\000"
.LASF143:
	.ascii	"_FAT_directory_isWritable\000"
.LASF177:
	.ascii	"dirnameLength\000"
.LASF83:
	.ascii	"firstFree\000"
.LASF141:
	.ascii	"_FAT_directory_isDirectory\000"
.LASF107:
	.ascii	"DIR_ENTRY_attributes\000"
.LASF81:
	.ascii	"sectorsPerFat\000"
.LASF70:
	.ascii	"disc\000"
.LASF188:
	.ascii	"size\000"
.LASF172:
	.ascii	"_FAT_directory_entryExists\000"
.LASF171:
	.ascii	"dirCluster\000"
.LASF176:
	.ascii	"alias\000"
.LASF60:
	.ascii	"fn_isInserted\000"
.LASF92:
	.ascii	"bytesPerSector\000"
.LASF32:
	.ascii	"st_spare1\000"
.LASF34:
	.ascii	"st_spare2\000"
.LASF36:
	.ascii	"st_spare3\000"
.LASF39:
	.ascii	"st_spare4\000"
.LASF167:
	.ascii	"lfnChkSum\000"
.LASF65:
	.ascii	"IO_INTERFACE\000"
.LASF126:
	.ascii	"LFN_offset_flag\000"
.LASF84:
	.ascii	"cache\000"
.LASF58:
	.ascii	"features\000"
.LASF163:
	.ascii	"_FAT_directory_getNextEntry\000"
.LASF199:
	.ascii	"__ctype_ptr__\000"
.LASF49:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF168:
	.ascii	"chkSum\000"
.LASF68:
	.ascii	"dirty\000"
.LASF11:
	.ascii	"__gid_t\000"
.LASF41:
	.ascii	"uint16_t\000"
.LASF20:
	.ascii	"gid_t\000"
.LASF59:
	.ascii	"fn_startup\000"
.LASF19:
	.ascii	"uid_t\000"
.LASF174:
	.ascii	"tempEntry\000"
.LASF128:
	.ascii	"LFN_offset_checkSum\000"
.LASF112:
	.ascii	"DIR_ENTRY_aDate\000"
.LASF202:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/di"
	.ascii	"rectory.c\000"
.LASF2:
	.ascii	"short int\000"
.LASF7:
	.ascii	"long int\000"
.LASF88:
	.ascii	"rootDirStart\000"
.LASF200:
	.ascii	"LFN_offset_table\000"
.LASF150:
	.ascii	"_FAT_directory_incrementDirEntryPosition\000"
.LASF152:
	.ascii	"extendDirectory\000"
.LASF10:
	.ascii	"__uid_t\000"
.LASF35:
	.ascii	"st_ctime\000"
.LASF175:
	.ascii	"foundFile\000"
.LASF173:
	.ascii	"name\000"
.LASF149:
	.ascii	"_FAT_directory_entryGetAlias\000"
.LASF66:
	.ascii	"sector\000"
.LASF116:
	.ascii	"DIR_ENTRY_cluster\000"
.LASF79:
	.ascii	"FS_TYPE\000"
.LASF12:
	.ascii	"long unsigned int\000"
.LASF89:
	.ascii	"rootDirCluster\000"
.LASF42:
	.ascii	"int32_t\000"
.LASF204:
	.ascii	"u16_to_u8array\000"
.LASF157:
	.ascii	"entryStart\000"
.LASF69:
	.ascii	"CACHE_ENTRY\000"
.LASF189:
	.ascii	"gapStart\000"
.LASF75:
	.ascii	"FS_UNKNOWN\000"
.LASF142:
	.ascii	"entry\000"
.LASF22:
	.ascii	"nlink_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF182:
	.ascii	"nextPathPosition\000"
.LASF46:
	.ascii	"false\000"
.LASF72:
	.ascii	"cacheEntries\000"
.LASF113:
	.ascii	"DIR_ENTRY_clusterHigh\000"
.LASF185:
	.ascii	"nameLength\000"
.LASF164:
	.ascii	"notFound\000"
.LASF30:
	.ascii	"st_size\000"
.LASF80:
	.ascii	"fatStart\000"
.LASF138:
	.ascii	"item\000"
.LASF27:
	.ascii	"st_uid\000"
.LASF203:
	.ascii	"_FAT_directory_entryGetCluster\000"
.LASF162:
	.ascii	"lfnPos\000"
.LASF23:
	.ascii	"st_dev\000"
.LASF0:
	.ascii	"signed char\000"
.LASF21:
	.ascii	"mode_t\000"
.LASF187:
	.ascii	"_FAT_directory_findEntryGap\000"
.LASF86:
	.ascii	"filesysType\000"
.LASF17:
	.ascii	"off_t\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF52:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF146:
	.ascii	"_FAT_fat_clusterToSector\000"
.LASF45:
	.ascii	"double\000"
.LASF8:
	.ascii	"_off_t\000"
.LASF180:
	.ascii	"pathEnd\000"
.LASF166:
	.ascii	"maxSectors\000"
.LASF29:
	.ascii	"st_rdev\000"
.LASF159:
	.ascii	"entryStillValid\000"
.LASF181:
	.ascii	"pathPosition\000"
.LASF108:
	.ascii	"DIR_ENTRY_reserved\000"
.LASF111:
	.ascii	"DIR_ENTRY_cDate\000"
.LASF71:
	.ascii	"numberOfPages\000"
.LASF148:
	.ascii	"destName\000"
.LASF153:
	.ascii	"position\000"
.LASF197:
	.ascii	"curEntryPos\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
