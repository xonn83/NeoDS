	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"fatdir.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	_FAT_link_r
	.code	16
	.thumb_func
	.type	_FAT_link_r, %function
_FAT_link_r:
.LFB19:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/fatdir.c"
	.loc 1 97 0
.LVL0:
	.loc 1 98 0
	mov	r3, #134
	str	r3, [r0]
	mov	r0, #1
.LVL1:
	neg	r0, r0
	.loc 1 100 0
	@ sp needed for prologue
	bx	lr
.LFE19:
	.size	_FAT_link_r, .-_FAT_link_r
	.align	2
	.global	_FAT_dirclose_r
	.code	16
	.thumb_func
	.type	_FAT_dirclose_r, %function
_FAT_dirclose_r:
.LFB27:
	.loc 1 529 0
.LVL2:
	.loc 1 533 0
	ldr	r2, [r1, #4]
	mov	r3, #160
	lsl	r3, r3, #1
	mov	r1, #0
.LVL3:
	.loc 1 536 0
	mov	r0, #0
.LVL4:
	.loc 1 533 0
	strb	r1, [r2, r3]
	.loc 1 536 0
	@ sp needed for prologue
	bx	lr
.LFE27:
	.size	_FAT_dirclose_r, .-_FAT_dirclose_r
	.align	2
	.global	_FAT_dirnext_r
	.code	16
	.thumb_func
	.type	_FAT_dirnext_r, %function
_FAT_dirnext_r:
.LFB26:
	.loc 1 500 0
	push	{r4, r5, r6, lr}
.LCFI0:
.LVL5:
	.loc 1 500 0
	mov	r5, r3
	.loc 1 501 0
	ldr	r4, [r1, #4]
.LVL6:
	.loc 1 504 0
	mov	r3, #160
.LVL7:
	lsl	r3, r3, #1
	ldrb	r3, [r4, r3]
	cmp	r3, #0
	bne	.L6
	.loc 1 505 0
	mov	r3, #9
	b	.L11
.L6:
	.loc 1 510 0
	ldr	r3, .L13
	ldrb	r3, [r4, r3]
	cmp	r3, #0
	bne	.L8
	.loc 1 511 0
	mov	r3, #2
.L11:
	str	r3, [r0]
	mov	r0, #1
.LVL8:
	neg	r0, r0
	.loc 1 512 0
	b	.L7
.LVL9:
.L8:
	.loc 1 516 0
	mov	r1, r4
.LVL10:
	mov	r0, r2
.LVL11:
	mov	r2, #128
.LVL12:
	add	r1, r1, #60
	lsl	r2, r2, #1
	bl	strncpy
	.loc 1 518 0
	cmp	r5, #0
	beq	.L9
	.loc 1 519 0
	mov	r1, r4
	ldmia	r1!, {r0}
	mov	r2, r5
	bl	_FAT_directory_entryStat
.L9:
	.loc 1 524 0
	mov	r1, r4
	ldmia	r1!, {r0}
	bl	_FAT_directory_getNextEntry
	.loc 1 523 0
	ldr	r3, .L13
	strb	r0, [r4, r3]
	mov	r0, #0
.LVL13:
.L7:
	.loc 1 527 0
	@ sp needed for prologue
.LVL14:
.LVL15:
	pop	{r4, r5, r6, pc}
.L14:
	.align	2
.L13:
	.word	321
.LFE26:
	.size	_FAT_dirnext_r, .-_FAT_dirnext_r
	.align	2
	.global	_FAT_dirreset_r
	.code	16
	.thumb_func
	.type	_FAT_dirreset_r, %function
_FAT_dirreset_r:
.LFB25:
	.loc 1 484 0
	push	{r4, lr}
.LCFI1:
.LVL16:
	.loc 1 485 0
	ldr	r4, [r1, #4]
.LVL17:
	.loc 1 488 0
	mov	r3, #160
	lsl	r3, r3, #1
	ldrb	r3, [r4, r3]
	cmp	r3, #0
	bne	.L16
	.loc 1 489 0
	mov	r3, #9
	str	r3, [r0]
	mov	r0, #1
.LVL18:
	neg	r0, r0
	.loc 1 490 0
	b	.L17
.LVL19:
.L16:
	.loc 1 495 0
	mov	r3, r4
	add	r3, r3, #252
	mov	r1, r4
.LVL20:
	ldr	r2, [r3, #64]
	ldmia	r1!, {r0}
.LVL21:
	bl	_FAT_directory_getFirstEntry
	.loc 1 494 0
	ldr	r3, .L19
	strb	r0, [r4, r3]
	mov	r0, #0
.LVL22:
.L17:
	.loc 1 498 0
	@ sp needed for prologue
.LVL23:
	pop	{r4, pc}
.L20:
	.align	2
.L19:
	.word	321
.LFE25:
	.size	_FAT_dirreset_r, .-_FAT_dirreset_r
	.align	2
	.global	_FAT_stat_r
	.code	16
	.thumb_func
	.type	_FAT_stat_r, %function
_FAT_stat_r:
.LFB18:
	.loc 1 63 0
	push	{r4, r5, r6, r7, lr}
.LCFI2:
.LVL24:
	sub	sp, sp, #324
.LCFI3:
	.loc 1 63 0
	mov	r4, r0
	.loc 1 69 0
	mov	r0, r1
.LVL25:
	.loc 1 63 0
	mov	r5, r1
	str	r2, [sp, #4]
	.loc 1 69 0
	bl	_FAT_partition_getPartitionFromPath
.LVL26:
	mov	r6, r0
.LVL27:
	.loc 1 71 0
	cmp	r0, #0
	bne	.L22
.LVL28:
	.loc 1 72 0
	mov	r3, #19
	b	.L28
.L22:
	.loc 1 77 0
	mov	r0, r5
.LVL29:
	mov	r1, #58
	bl	strchr
	cmp	r0, #0
	beq	.L24
	.loc 1 78 0
	add	r5, r0, #1
.L24:
	.loc 1 80 0
	mov	r0, r5
	mov	r1, #58
	bl	strchr
	cmp	r0, #0
	beq	.L25
	.loc 1 81 0
	mov	r3, #22
.LVL30:
.L28:
	mov	r0, #1
	str	r3, [r4]
	neg	r0, r0
	.loc 1 82 0
	b	.L23
.L25:
	.loc 1 86 0
	add	r7, sp, #8
	mov	r0, r6
	mov	r1, r7
	mov	r2, r5
	mov	r3, #0
	bl	_FAT_directory_entryFromPath
	cmp	r0, #0
	bne	.L26
	.loc 1 87 0
	mov	r3, #2
	b	.L28
.L26:
	.loc 1 92 0
	mov	r0, r6
	mov	r1, r7
	ldr	r2, [sp, #4]
	bl	_FAT_directory_entryStat
	mov	r0, #0
.L23:
	.loc 1 95 0
	add	sp, sp, #324
	@ sp needed for prologue
.LVL31:
.LVL32:
.LVL33:
	pop	{r4, r5, r6, r7, pc}
.LFE18:
	.size	_FAT_stat_r, .-_FAT_stat_r
	.align	2
	.global	_FAT_diropen_r
	.code	16
	.thumb_func
	.type	_FAT_diropen_r, %function
_FAT_diropen_r:
.LFB24:
	.loc 1 438 0
	push	{r4, r5, r6, r7, lr}
.LCFI4:
.LVL34:
	sub	sp, sp, #316
.LCFI5:
	.loc 1 438 0
	mov	r4, r0
	.loc 1 443 0
	mov	r0, r2
.LVL35:
	.loc 1 440 0
	ldr	r5, [r1, #4]
.LVL36:
	.loc 1 438 0
	mov	r6, r2
	.loc 1 443 0
	bl	_FAT_partition_getPartitionFromPath
.LVL37:
	mov	r7, r0
	str	r0, [r5]
	.loc 1 445 0
	cmp	r0, #0
	bne	.L30
	.loc 1 446 0
	mov	r3, #19
	b	.L37
.L30:
	.loc 1 451 0
	mov	r0, r6
	mov	r1, #58
	bl	strchr
	cmp	r0, #0
	beq	.L32
	.loc 1 452 0
	add	r6, r0, #1
.L32:
	.loc 1 454 0
	mov	r0, r6
	mov	r1, #58
	bl	strchr
	cmp	r0, #0
	beq	.L33
	.loc 1 455 0
	mov	r3, #22
.L37:
	str	r3, [r4]
	mov	r0, #0
	.loc 1 456 0
	b	.L31
.L33:
	.loc 1 459 0
	mov	r0, r7
	mov	r1, sp
	mov	r2, r6
	mov	r3, #0
	bl	_FAT_directory_entryFromPath
	.loc 1 461 0
	cmp	r0, #0
	bne	.L34
	.loc 1 462 0
	mov	r3, #2
	str	r3, [r4]
	.loc 1 463 0
	b	.L31
.L34:
	.file 2 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/directory.h"
	.loc 2 94 0
	mov	r2, sp
	ldrb	r3, [r2, #11]
	lsl	r2, r3, #27
	bmi	.L35
	.loc 1 468 0
	mov	r3, #20
	b	.L37
.L35:
	.loc 1 473 0
	mov	r0, sp
	bl	_FAT_directory_entryGetCluster
	mov	r3, r5
	add	r3, r3, #252
	.loc 1 477 0
	mov	r1, r5
	.loc 1 473 0
	mov	r2, r0
	str	r0, [r3, #64]
	.loc 1 477 0
	ldmia	r1!, {r0}
	bl	_FAT_directory_getFirstEntry
	.loc 1 476 0
	ldr	r3, .L38
	.loc 1 480 0
	mov	r2, #1
	.loc 1 476 0
	strb	r0, [r5, r3]
	.loc 1 480 0
	mov	r3, #160
	lsl	r3, r3, #1
	strb	r2, [r5, r3]
	.loc 1 481 0
	mov	r0, r5
.L31:
	.loc 1 482 0
	add	sp, sp, #316
	@ sp needed for prologue
.LVL38:
.LVL39:
.LVL40:
	pop	{r4, r5, r6, r7, pc}
.L39:
	.align	2
.L38:
	.word	321
.LFE24:
	.size	_FAT_diropen_r, .-_FAT_diropen_r
	.align	2
	.global	_FAT_mkdir_r
	.code	16
	.thumb_func
	.type	_FAT_mkdir_r, %function
_FAT_mkdir_r:
.LFB23:
	.loc 1 322 0
	push	{r4, r5, r6, r7, lr}
.LCFI6:
.LVL41:
	sub	sp, sp, #380
.LCFI7:
	.loc 1 322 0
	mov	r5, r0
	.loc 1 330 0
	mov	r0, r1
.LVL42:
	.loc 1 322 0
	mov	r6, r1
	.loc 1 330 0
	bl	_FAT_partition_getPartitionFromPath
.LVL43:
	mov	r4, r0
.LVL44:
	.loc 1 332 0
	cmp	r0, #0
	bne	.L41
.LVL45:
	.loc 1 333 0
	mov	r3, #19
	b	.L59
.L41:
	.loc 1 338 0
	mov	r0, r6
.LVL46:
	mov	r1, #58
	bl	strchr
	cmp	r0, #0
	beq	.L43
	.loc 1 339 0
	add	r6, r0, #1
.L43:
	.loc 1 341 0
	mov	r0, r6
	mov	r1, #58
	bl	strchr
	cmp	r0, #0
	beq	.L44
	.loc 1 342 0
	mov	r3, #22
	b	.L59
.L44:
	.loc 1 347 0
	add	r7, sp, #32
	mov	r0, r4
	mov	r1, r7
	mov	r2, r6
	mov	r3, #0
	bl	_FAT_directory_entryFromPath
	.loc 1 350 0
	cmp	r0, #0
	beq	.L45
	.loc 1 351 0
	mov	r3, #17
	b	.L59
.L45:
	.loc 1 355 0
	ldrb	r3, [r4, #8]
	cmp	r3, #0
	beq	.L46
	.loc 1 357 0
	mov	r3, #30
	b	.L59
.L46:
	.loc 1 362 0
	mov	r0, r6
	mov	r1, #47
	bl	strrchr
	str	r0, [sp, #12]
	.loc 1 363 0
	cmp	r0, #0
	bne	.L47
	.loc 1 365 0
	ldr	r1, [r4, #60]
	str	r1, [sp, #16]
	mov	r1, r6
.LVL47:
	b	.L48
.LVL48:
.L47:
	.loc 1 370 0
	mov	r0, r4
	mov	r1, r7
	mov	r2, r6
	ldr	r3, [sp, #12]
	bl	_FAT_directory_entryFromPath
	cmp	r0, #0
	beq	.L49
	.loc 2 94 0
	ldrb	r3, [r7, #11]
	lsl	r2, r3, #27
	bmi	.L50
.L49:
	.loc 1 372 0
	mov	r3, #20
	b	.L59
.L50:
	.loc 1 375 0
	mov	r0, r7
	bl	_FAT_directory_entryGetCluster
	.loc 1 377 0
	ldr	r1, [sp, #12]
.LVL49:
	.loc 1 375 0
	str	r0, [sp, #16]
	.loc 1 377 0
	add	r1, r1, #1
.L48:
	.loc 1 380 0
	add	r6, sp, #32
.LVL50:
	mov	r2, #255
	add	r0, sp, #88
	bl	strncpy
.LVL51:
	.loc 1 381 0
	mov	r1, #0
	mov	r2, #32
	mov	r0, r6
	bl	memset
	.loc 1 385 0
	bl	_FAT_filetime_getTimeFromRTC
.LBB32:
.LBB33:
	.file 3 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/bit_ops.h"
	.loc 3 47 0
	strb	r0, [r6, #14]
	.loc 3 48 0
	lsr	r0, r0, #8
	strb	r0, [r6, #15]
.LBE33:
.LBE32:
	.loc 1 386 0
	bl	_FAT_filetime_getDateFromRTC
	.loc 1 389 0
	mov	r3, #16
.LBB34:
.LBB35:
	.loc 3 47 0
	strb	r0, [r6, #16]
	.loc 3 48 0
	lsr	r0, r0, #8
	strb	r0, [r6, #17]
.LBE35:
.LBE34:
	.loc 1 389 0
	strb	r3, [r6, #11]
	.loc 1 392 0
	mov	r0, r4
	mov	r1, #0
	bl	_FAT_fat_linkFreeClusterCleared
	mov	r7, r0
.LVL52:
	.loc 1 393 0
	cmp	r0, #0
	beq	.L60
.LVL53:
	.loc 1 398 0
	lsl	r3, r0, #16
.LBB36:
.LBB38:
	.loc 3 47 0
	lsl	r2, r3, #8
	.loc 3 48 0
	lsr	r3, r3, #24
	str	r3, [sp, #28]
	strb	r3, [r6, #27]
.LBE38:
.LBE36:
	.loc 1 399 0
	lsr	r3, r0, #16
.LBB40:
.LBB37:
	.loc 3 47 0
	lsr	r2, r2, #24
.LBE37:
.LBE40:
	.loc 1 399 0
	lsl	r3, r3, #16
.LBB41:
.LBB39:
	.loc 3 47 0
	str	r2, [sp, #24]
	strb	r2, [r6, #26]
.LBE39:
.LBE41:
.LBB42:
.LBB43:
	lsl	r2, r3, #8
	lsr	r2, r2, #24
	.loc 3 48 0
	lsr	r3, r3, #24
	.loc 3 47 0
	str	r2, [sp, #12]
	strb	r2, [r6, #20]
	.loc 3 48 0
	strb	r3, [r6, #21]
.LBE43:
.LBE42:
	.loc 1 402 0
	mov	r0, r4
.LVL54:
	mov	r1, r6
	ldr	r2, [sp, #16]
.LBB45:
.LBB44:
	.loc 3 48 0
	str	r3, [sp, #20]
.LBE44:
.LBE45:
	.loc 1 402 0
	bl	_FAT_directory_addEntry
	cmp	r0, #0
	bne	.L52
.LVL55:
.L60:
	.loc 1 403 0
	mov	r3, #28
	b	.L59
.LVL56:
.L52:
	.loc 1 408 0
	add	r6, sp, #344
	mov	r1, #0
	mov	r2, #32
	mov	r0, r6
	bl	memset
	.loc 1 409 0
	mov	r1, #32
	mov	r2, #11
	mov	r0, r6
	bl	memset
	.loc 1 410 0
	mov	r3, #46
	strb	r3, [r6]
	.loc 1 411 0
	mov	r1, #16
.LBB46:
.LBB48:
	.loc 3 47 0
	mov	r3, #24
	mov	r2, sp
	ldrb	r2, [r3, r2]
.LBE48:
.LBE46:
	.loc 1 411 0
	strb	r1, [r6, #11]
.LBB50:
.LBB47:
	.loc 3 48 0
	mov	r3, sp
	mov	r1, #28
	ldrb	r3, [r1, r3]
	.loc 3 47 0
	strb	r2, [r6, #26]
.LBE47:
.LBE50:
.LBB51:
.LBB52:
	mov	r1, sp
	mov	r2, #12
.LBE52:
.LBE51:
.LBB54:
.LBB49:
	.loc 3 48 0
	strb	r3, [r6, #27]
.LBE49:
.LBE54:
.LBB55:
.LBB53:
	.loc 3 47 0
	ldrb	r1, [r2, r1]
	.loc 3 48 0
	mov	r3, #20
	mov	r2, sp
	ldrb	r2, [r3, r2]
	.loc 3 47 0
	strb	r1, [r6, #20]
	.loc 3 48 0
	strb	r2, [r6, #21]
.LBE53:
.LBE55:
	.loc 1 416 0
	ldr	r0, [r4, #4]
.LBB56:
.LBB57:
	.file 4 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/file_allocation_table.h"
	.loc 4 61 0
	cmp	r7, #1
	bls	.L53
	ldr	r1, [r4, #36]
	sub	r3, r7, #2
	mov	r2, r1
	mul	r2, r3
	ldr	r3, [r4, #28]
	add	r2, r2, r3
	b	.L54
.L53:
	ldr	r2, [r4, #16]
.L54:
.LBE57:
.LBE56:
	.loc 1 416 0
	add	r6, sp, #344
	mov	r3, #32
	str	r3, [sp]
	mov	r1, r6
	mov	r3, #0
	bl	_FAT_cache_eraseWritePartialSector
	.loc 1 421 0
	mov	r3, #46
	strb	r3, [r6, #1]
.LBB58:
.LBB59:
	.loc 3 47 0
	mov	r1, #16
	mov	r3, sp
	ldrb	r3, [r1, r3]
	.loc 3 48 0
	ldr	r1, [sp, #16]
	.loc 3 47 0
	strb	r3, [r6, #26]
	.loc 3 48 0
	lsr	r3, r1, #8
	strb	r3, [r6, #27]
.LBE59:
.LBE58:
	.loc 1 423 0
	lsr	r3, r1, #16
.LBB60:
.LBB61:
	.loc 3 47 0
	strb	r3, [r6, #20]
	.loc 3 48 0
	lsr	r3, r3, #8
	strb	r3, [r6, #21]
.LBE61:
.LBE60:
	.loc 1 426 0
	ldr	r0, [r4, #4]
.LBB62:
.LBB63:
	.loc 4 61 0
	cmp	r7, #1
	bls	.L55
	ldr	r3, [r4, #36]
	sub	r7, r7, #2
.LVL57:
	mov	r2, r3
	mul	r2, r7
	ldr	r3, [r4, #28]
	add	r2, r2, r3
	b	.L56
.LVL58:
.L55:
	ldr	r2, [r4, #16]
.L56:
.LBE63:
.LBE62:
	.loc 1 426 0
	mov	r3, #32
	add	r1, sp, #344
	str	r3, [sp]
	bl	_FAT_cache_writePartialSector
	.loc 1 430 0
	ldr	r0, [r4, #4]
	bl	_FAT_cache_flush
	cmp	r0, #0
	beq	.L57
	mov	r0, #0
	b	.L42
.L57:
	.loc 1 431 0
	mov	r3, #5
.LVL59:
.L59:
	mov	r0, #1
	str	r3, [r5]
	neg	r0, r0
.L42:
	.loc 1 436 0
	add	sp, sp, #380
	@ sp needed for prologue
.LVL60:
.LVL61:
.LVL62:
.LVL63:
	pop	{r4, r5, r6, r7, pc}
.LFE23:
	.size	_FAT_mkdir_r, .-_FAT_mkdir_r
	.align	2
	.global	_FAT_rename_r
	.code	16
	.thumb_func
	.type	_FAT_rename_r, %function
_FAT_rename_r:
.LFB22:
	.loc 1 220 0
	push	{r4, r5, r6, r7, lr}
.LCFI8:
.LVL64:
	ldr	r4, .L82
	mov	r7, r1
	add	sp, sp, r4
.LCFI9:
	.loc 1 220 0
	mov	r4, r0
	.loc 1 228 0
	mov	r0, r1
.LVL65:
	.loc 1 220 0
	mov	r6, r2
	.loc 1 228 0
	bl	_FAT_partition_getPartitionFromPath
.LVL66:
	mov	r5, r0
.LVL67:
	.loc 1 230 0
	cmp	r0, #0
	bne	.L62
.LVL68:
	.loc 1 231 0
	mov	r3, #19
	b	.L80
.L62:
	.loc 1 236 0
	mov	r0, r6
.LVL69:
	bl	_FAT_partition_getPartitionFromPath
	cmp	r5, r0
	beq	.L64
	.loc 1 237 0
	mov	r3, #18
	b	.L80
.L64:
	.loc 1 242 0
	ldrb	r3, [r5, #8]
	cmp	r3, #0
	beq	.L65
	.loc 1 243 0
	mov	r3, #30
	b	.L80
.L65:
	.loc 1 248 0
	mov	r0, r7
	mov	r1, #58
	bl	strchr
	cmp	r0, #0
	beq	.L66
	.loc 1 249 0
	add	r7, r0, #1
.L66:
	.loc 1 251 0
	mov	r0, r7
	mov	r1, #58
	bl	strchr
	cmp	r0, #0
	bne	.L81
	.loc 1 255 0
	mov	r0, r6
	mov	r1, #58
	bl	strchr
	cmp	r0, #0
	beq	.L68
	.loc 1 256 0
	add	r6, r0, #1
.L68:
	.loc 1 258 0
	mov	r0, r6
	mov	r1, #58
	bl	strchr
	cmp	r0, #0
	beq	.L69
.L81:
	.loc 1 259 0
	mov	r3, #22
	b	.L80
.L69:
	.loc 1 264 0
	mov	r0, r5
	add	r1, sp, #320
	mov	r2, r7
	mov	r3, #0
	bl	_FAT_directory_entryFromPath
	cmp	r0, #0
	bne	.L70
	.loc 1 265 0
	mov	r3, #2
	b	.L80
.L70:
	.loc 1 270 0
	add	r7, sp, #8
.LVL70:
	mov	r0, r5
	mov	r1, r7
	mov	r2, r6
	mov	r3, #0
	bl	_FAT_directory_entryFromPath
	cmp	r0, #0
	beq	.L71
	.loc 1 271 0
	mov	r3, #17
	b	.L80
.L71:
	.loc 1 277 0
	mov	r0, r6
	mov	r1, #47
	bl	strrchr
	str	r0, [sp]
	.loc 1 278 0
	cmp	r0, #0
	bne	.L72
	.loc 1 280 0
	ldr	r2, [r5, #60]
	str	r2, [sp, #4]
	b	.L73
.L72:
	.loc 1 285 0
	mov	r0, r5
	mov	r1, r7
	mov	r2, r6
	ldr	r3, [sp]
	bl	_FAT_directory_entryFromPath
	cmp	r0, #0
	beq	.L74
	.loc 2 94 0
	ldrb	r3, [r7, #11]
	lsl	r2, r3, #27
	bmi	.L75
.L74:
	.loc 1 287 0
	mov	r3, #20
	b	.L80
.L75:
	.loc 1 290 0
	mov	r0, r7
	bl	_FAT_directory_entryGetCluster
	.loc 1 292 0
	ldr	r6, [sp]
.LVL71:
	.loc 1 290 0
	str	r0, [sp, #4]
	.loc 1 292 0
	add	r6, r6, #1
.LVL72:
.L73:
	.loc 1 296 0
	add	r7, sp, #8
	mov	r2, #156
	add	r1, sp, #320
	lsl	r2, r2, #1
	mov	r0, r7
	bl	memcpy
	.loc 1 299 0
	mov	r1, r6
	mov	r2, #255
	add	r0, sp, #64
	bl	strncpy
	.loc 1 302 0
	mov	r0, r5
	mov	r1, r7
	ldr	r2, [sp, #4]
	bl	_FAT_directory_addEntry
	cmp	r0, #0
	bne	.L76
	.loc 1 303 0
	mov	r3, #28
	b	.L80
.L76:
	.loc 1 308 0
	mov	r0, r5
	add	r1, sp, #320
	bl	_FAT_directory_removeEntry
	cmp	r0, #0
	beq	.L78
	.loc 1 314 0
	ldr	r0, [r5, #4]
	bl	_FAT_cache_flush
	cmp	r0, #0
	beq	.L78
	mov	r0, #0
	b	.L63
.L78:
	.loc 1 315 0
	mov	r3, #5
.LVL73:
.L80:
	mov	r0, #1
	str	r3, [r4]
	neg	r0, r0
.L63:
	.loc 1 320 0
	mov	r3, #159
	lsl	r3, r3, #2
	add	sp, sp, r3
	@ sp needed for prologue
.LVL74:
.LVL75:
.LVL76:
.LVL77:
	pop	{r4, r5, r6, r7, pc}
.L83:
	.align	2
.L82:
	.word	-636
.LFE22:
	.size	_FAT_rename_r, .-_FAT_rename_r
	.align	2
	.global	_FAT_chdir_r
	.code	16
	.thumb_func
	.type	_FAT_chdir_r, %function
_FAT_chdir_r:
.LFB21:
	.loc 1 183 0
	push	{r4, r5, r6, lr}
.LCFI10:
.LVL78:
	.loc 1 183 0
	mov	r4, r0
	.loc 1 187 0
	mov	r0, r1
.LVL79:
	.loc 1 183 0
	mov	r5, r1
	.loc 1 187 0
	bl	_FAT_partition_getPartitionFromPath
.LVL80:
	mov	r6, r0
.LVL81:
	.loc 1 189 0
	cmp	r0, #0
	bne	.L85
.LVL82:
	.loc 1 190 0
	mov	r3, #19
	b	.L92
.L85:
	.loc 1 195 0
	mov	r0, r5
.LVL83:
	mov	r1, #58
	bl	strchr
	cmp	r0, #0
	beq	.L87
	.loc 1 196 0
	add	r5, r0, #1
.L87:
	.loc 1 198 0
	mov	r0, r5
	mov	r1, #58
	bl	strchr
	cmp	r0, #0
	beq	.L88
	.loc 1 199 0
	mov	r3, #22
	b	.L92
.L88:
	.loc 1 204 0
	mov	r0, r6
	bl	_FAT_partition_setDefaultPartition
	cmp	r0, #0
	bne	.L89
	.loc 1 205 0
	mov	r3, #2
	b	.L92
.L89:
	.loc 1 210 0
	mov	r0, r6
	mov	r1, r5
	bl	_FAT_directory_chdir
	cmp	r0, #0
	beq	.L90
	mov	r0, #0
	b	.L86
.L90:
	.loc 1 215 0
	mov	r3, #20
.LVL84:
.L92:
	mov	r0, #1
	str	r3, [r4]
	neg	r0, r0
.L86:
	.loc 1 218 0
	@ sp needed for prologue
.LVL85:
.LVL86:
.LVL87:
	pop	{r4, r5, r6, pc}
.LFE21:
	.size	_FAT_chdir_r, .-_FAT_chdir_r
	.align	2
	.global	_FAT_unlink_r
	.code	16
	.thumb_func
	.type	_FAT_unlink_r, %function
_FAT_unlink_r:
.LFB20:
	.loc 1 102 0
	push	{r4, r5, r6, r7, lr}
.LCFI11:
.LVL88:
	ldr	r4, .L114
	mov	r6, r1
	add	sp, sp, r4
.LCFI12:
	.loc 1 102 0
	mov	r4, r0
	.loc 1 111 0
	mov	r0, r1
.LVL89:
	bl	_FAT_partition_getPartitionFromPath
.LVL90:
	mov	r5, r0
.LVL91:
	.loc 1 113 0
	cmp	r0, #0
	bne	.L94
.LVL92:
	.loc 1 114 0
	mov	r3, #19
	b	.L113
.L94:
	.loc 1 119 0
	ldrb	r3, [r0, #8]
	cmp	r3, #0
	beq	.L96
	.loc 1 120 0
	mov	r3, #30
	b	.L113
.L96:
	.loc 1 125 0
	mov	r0, r6
.LVL93:
	mov	r1, #58
	bl	strchr
	cmp	r0, #0
	beq	.L97
	.loc 1 126 0
	add	r6, r0, #1
.L97:
	.loc 1 128 0
	mov	r0, r6
	mov	r1, #58
	bl	strchr
	cmp	r0, #0
	beq	.L98
	.loc 1 129 0
	mov	r3, #22
	b	.L113
.L98:
	.loc 1 134 0
	add	r7, sp, #320
	mov	r0, r5
	mov	r1, r7
	mov	r2, r6
	mov	r3, #0
	bl	_FAT_directory_entryFromPath
	cmp	r0, #0
	bne	.L99
	.loc 1 135 0
	mov	r3, #2
	b	.L113
.L99:
	.loc 1 139 0
	mov	r0, r7
	bl	_FAT_directory_entryGetCluster
	str	r0, [sp, #4]
	.loc 2 94 0
	ldrb	r3, [r7, #11]
	lsl	r2, r3, #27
	bpl	.L100
	.loc 1 144 0
	add	r6, sp, #8
.LVL94:
	mov	r0, r5
	mov	r1, r6
	ldr	r2, [sp, #4]
	bl	_FAT_directory_getFirstEntry
.LBB64:
.LBB65:
	.loc 2 102 0
	add	r7, sp, #64
.LBE65:
.LBE64:
	.loc 1 146 0
	b	.L101
.LVL95:
.L106:
.LBB67:
.LBB66:
	.loc 2 102 0
	ldrb	r3, [r7]
	cmp	r3, #46
	beq	.L102
	mov	r3, #0
	b	.L103
.L102:
	mov	r2, #65
	add	r2, r2, sp
	ldrb	r3, [r2]
	cmp	r3, #0
	bne	.L104
	mov	r3, #1
	b	.L103
.L104:
	ldr	r3, .L114+4
	ldr	r2, [r6, #56]
	and	r2, r2, r3
	ldr	r3, .L114+8
	add	r2, r2, r3
	neg	r3, r2
	adc	r3, r3, r2
.L103:
.LBE66:
.LBE67:
	.loc 1 147 0
	cmp	r3, #0
	bne	.L105
	.loc 1 149 0
	mov	r3, #1
	b	.L113
.L105:
	.loc 1 152 0
	mov	r0, r5
.LVL96:
	mov	r1, r6
	bl	_FAT_directory_getNextEntry
.L101:
	.loc 1 146 0
	cmp	r0, #0
	bne	.L106
.LVL97:
.L100:
	.loc 1 156 0
	ldr	r2, [sp, #4]
	cmp	r2, #0
	beq	.L107
	.loc 1 158 0
	mov	r0, r5
.LVL98:
	mov	r1, r2
	bl	_FAT_fat_clearLinks
	cmp	r0, #0
	bne	.L107
	.loc 1 159 0
	mov	r3, #5
	str	r3, [r4]
	mov	r6, #1
.LVL99:
	b	.L108
.LVL100:
.L107:
	mov	r6, #0
.LVL101:
.L108:
	.loc 1 165 0
	mov	r0, r5
.LVL102:
	add	r1, sp, #320
	bl	_FAT_directory_removeEntry
	cmp	r0, #0
	bne	.L109
	.loc 1 166 0
	mov	r3, #5
	str	r3, [r4]
	mov	r6, #1
.LVL103:
.L109:
	.loc 1 171 0
	ldr	r0, [r5, #4]
	bl	_FAT_cache_flush
	cmp	r0, #0
	bne	.L110
	.loc 1 172 0
	mov	r3, #5
.LVL104:
.L113:
	str	r3, [r4]
	b	.L111
.LVL105:
.L110:
	.loc 1 176 0
	cmp	r6, #0
	bne	.L111
	mov	r0, #0
	b	.L95
.LVL106:
.L111:
	mov	r0, #1
.LVL107:
	neg	r0, r0
.L95:
	.loc 1 181 0
	mov	r3, #159
	lsl	r3, r3, #2
	add	sp, sp, r3
	@ sp needed for prologue
.LVL108:
.LVL109:
.LVL110:
	pop	{r4, r5, r6, r7, pc}
.L115:
	.align	2
.L114:
	.word	-636
	.word	16776960
	.word	-11776
.LFE20:
	.size	_FAT_unlink_r, .-_FAT_unlink_r
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI0-.LFB26
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
	.4byte	.LCFI1-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI2-.LFB18
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
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x158
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI4-.LFB24
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
	.uleb128 0x150
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI6-.LFB23
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
	.uleb128 0x190
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI8-.LFB22
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
	.uleb128 0x290
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI10-.LFB21
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI11-.LFB20
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
	.uleb128 0x290
	.align	2
.LEFDE18:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB26-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB25-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB18-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 344
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB24-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 336
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LFB23-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 400
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LFB22-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 656
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LFB21-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LFB20-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 656
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
	.file 5 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/lock.h"
	.file 6 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/_types.h"
	.file 7 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h"
	.file 8 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h"
	.file 9 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/types.h"
	.file 10 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/stat.h"
	.file 11 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/dir.h"
	.file 12 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 13 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 14 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc_io.h"
	.file 15 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/cache.h"
	.file 16 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.h"
	.file 17 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/fatdir.h"
	.section	.debug_info
	.4byte	0x1651
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF266
	.byte	0x1
	.4byte	.LASF267
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
	.4byte	.LASF7
	.byte	0x5
	.byte	0x7
	.4byte	0x3d
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x6
	.byte	0x10
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x6
	.byte	0x18
	.4byte	0x3d
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x6
	.byte	0x1d
	.4byte	0x36
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x6
	.byte	0x20
	.4byte	0x36
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x6
	.byte	0x2c
	.4byte	0x6f
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x7
	.2byte	0x160
	.4byte	0x44
	.uleb128 0x6
	.byte	0x4
	.byte	0x6
	.byte	0x47
	.4byte	0xcd
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x6
	.byte	0x48
	.4byte	0xa2
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x6
	.byte	0x49
	.4byte	0xcd
	.byte	0x0
	.uleb128 0x8
	.4byte	0x28
	.4byte	0xdd
	.uleb128 0x9
	.4byte	0xdd
	.byte	0x3
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.uleb128 0xb
	.byte	0x8
	.byte	0x6
	.byte	0x44
	.4byte	0x105
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x6
	.byte	0x45
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x6
	.byte	0x4a
	.4byte	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x6
	.byte	0x4b
	.4byte	0xe0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x6
	.byte	0x4f
	.4byte	0x59
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x8
	.byte	0x15
	.4byte	0x128
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x18
	.byte	0x8
	.byte	0x2d
	.4byte	0x18e
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x8
	.byte	0x2e
	.4byte	0x18e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.ascii	"_k\000"
	.byte	0x8
	.byte	0x2f
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x8
	.byte	0x2f
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x8
	.byte	0x2f
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x8
	.byte	0x2f
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.ascii	"_x\000"
	.byte	0x8
	.byte	0x30
	.4byte	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x12f
	.uleb128 0x8
	.4byte	0x11d
	.4byte	0x1a4
	.uleb128 0x9
	.4byte	0xdd
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x24
	.byte	0x8
	.byte	0x35
	.4byte	0x22f
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x8
	.byte	0x36
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x8
	.byte	0x37
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x8
	.byte	0x38
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x8
	.byte	0x39
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x8
	.byte	0x3a
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x8
	.byte	0x3b
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x8
	.byte	0x3c
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x8
	.byte	0x3d
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x8
	.byte	0x3e
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF38
	.2byte	0x108
	.byte	0x8
	.byte	0x47
	.4byte	0x278
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x8
	.byte	0x48
	.4byte	0x278
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x8
	.byte	0x49
	.4byte	0x278
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x8
	.byte	0x4b
	.4byte	0x11d
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x8
	.byte	0x4e
	.4byte	0x11d
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.byte	0x0
	.uleb128 0x8
	.4byte	0x11b
	.4byte	0x288
	.uleb128 0x9
	.4byte	0xdd
	.byte	0x1f
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF43
	.2byte	0x190
	.byte	0x8
	.byte	0x59
	.4byte	0x2cf
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x8
	.byte	0x5a
	.4byte	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x8
	.byte	0x5b
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x8
	.byte	0x5d
	.4byte	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x8
	.byte	0x5e
	.4byte	0x22f
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x288
	.uleb128 0x8
	.4byte	0x2e7
	.4byte	0x2e5
	.uleb128 0x9
	.4byte	0xdd
	.byte	0x1f
	.byte	0x0
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2e5
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x8
	.byte	0x8
	.byte	0x69
	.4byte	0x316
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x8
	.byte	0x6a
	.4byte	0x316
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x8
	.byte	0x6b
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x28
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x68
	.byte	0x8
	.byte	0xa9
	.4byte	0x476
	.uleb128 0xf
	.ascii	"_p\000"
	.byte	0x8
	.byte	0xaa
	.4byte	0x316
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.ascii	"_r\000"
	.byte	0x8
	.byte	0xab
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.ascii	"_w\000"
	.byte	0x8
	.byte	0xac
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x8
	.byte	0xad
	.4byte	0x2f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x8
	.byte	0xae
	.4byte	0x2f
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.ascii	"_bf\000"
	.byte	0x8
	.byte	0xaf
	.4byte	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x8
	.byte	0xb0
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x8
	.byte	0xb7
	.4byte	0x11b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x8
	.byte	0xb9
	.4byte	0x605
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x8
	.byte	0xbb
	.4byte	0x635
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x8
	.byte	0xbd
	.4byte	0x65a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x8
	.byte	0xbe
	.4byte	0x675
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.ascii	"_ub\000"
	.byte	0x8
	.byte	0xc1
	.4byte	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.ascii	"_up\000"
	.byte	0x8
	.byte	0xc2
	.4byte	0x316
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.ascii	"_ur\000"
	.byte	0x8
	.byte	0xc3
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x8
	.byte	0xc6
	.4byte	0x67b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x8
	.byte	0xc7
	.4byte	0x68b
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0xf
	.ascii	"_lb\000"
	.byte	0x8
	.byte	0xca
	.4byte	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x8
	.byte	0xcd
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x8
	.byte	0xce
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x8
	.byte	0xd1
	.4byte	0x495
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x8
	.byte	0xd5
	.4byte	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x8
	.byte	0xd7
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x8
	.byte	0xd8
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.4byte	0x3d
	.4byte	0x495
	.uleb128 0x14
	.4byte	0x495
	.uleb128 0x14
	.4byte	0x11b
	.uleb128 0x14
	.4byte	0x5f8
	.uleb128 0x14
	.4byte	0x3d
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x49b
	.uleb128 0x11
	.4byte	.LASF66
	.2byte	0x428
	.byte	0x8
	.byte	0x25
	.4byte	0x5f8
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x245
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x8
	.2byte	0x24a
	.4byte	0x6e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x8
	.2byte	0x24a
	.4byte	0x6e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x8
	.2byte	0x24a
	.4byte	0x6e8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x8
	.2byte	0x24c
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x24d
	.4byte	0x903
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x8
	.2byte	0x24f
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x8
	.2byte	0x250
	.4byte	0x62a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x8
	.2byte	0x252
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x8
	.2byte	0x254
	.4byte	0x91f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x8
	.2byte	0x257
	.4byte	0x18e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x8
	.2byte	0x258
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x8
	.2byte	0x259
	.4byte	0x18e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x8
	.2byte	0x25a
	.4byte	0x925
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x8
	.2byte	0x25d
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x8
	.2byte	0x25e
	.4byte	0x5f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x8
	.2byte	0x281
	.4byte	0x8e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x8
	.2byte	0x284
	.4byte	0x2cf
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x8
	.2byte	0x285
	.4byte	0x288
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x8
	.2byte	0x288
	.4byte	0x937
	.byte	0x3
	.byte	0x23
	.uleb128 0x2dc
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x8
	.2byte	0x28d
	.4byte	0x6a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x8
	.2byte	0x28e
	.4byte	0x943
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x5fe
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF88
	.uleb128 0x10
	.byte	0x4
	.4byte	0x476
	.uleb128 0x13
	.byte	0x1
	.4byte	0x3d
	.4byte	0x62a
	.uleb128 0x14
	.4byte	0x495
	.uleb128 0x14
	.4byte	0x11b
	.uleb128 0x14
	.4byte	0x62a
	.uleb128 0x14
	.4byte	0x3d
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x630
	.uleb128 0x16
	.4byte	0x5fe
	.uleb128 0x10
	.byte	0x4
	.4byte	0x60b
	.uleb128 0x13
	.byte	0x1
	.4byte	0x97
	.4byte	0x65a
	.uleb128 0x14
	.4byte	0x495
	.uleb128 0x14
	.4byte	0x11b
	.uleb128 0x14
	.4byte	0x97
	.uleb128 0x14
	.4byte	0x3d
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x63b
	.uleb128 0x13
	.byte	0x1
	.4byte	0x3d
	.4byte	0x675
	.uleb128 0x14
	.4byte	0x495
	.uleb128 0x14
	.4byte	0x11b
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x660
	.uleb128 0x8
	.4byte	0x28
	.4byte	0x68b
	.uleb128 0x9
	.4byte	0xdd
	.byte	0x2
	.byte	0x0
	.uleb128 0x8
	.4byte	0x28
	.4byte	0x69b
	.uleb128 0x9
	.4byte	0xdd
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.4byte	.LASF89
	.byte	0x8
	.2byte	0x111
	.4byte	0x31c
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0xc
	.byte	0x8
	.2byte	0x116
	.4byte	0x6e2
	.uleb128 0x15
	.4byte	.LASF23
	.byte	0x8
	.2byte	0x117
	.4byte	0x6e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x8
	.2byte	0x118
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x119
	.4byte	0x6e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6a7
	.uleb128 0x10
	.byte	0x4
	.4byte	0x69b
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0xe
	.byte	0x8
	.2byte	0x131
	.4byte	0x729
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x132
	.4byte	0x729
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x133
	.4byte	0x729
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x134
	.4byte	0x36
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.4byte	0x36
	.4byte	0x739
	.uleb128 0x9
	.4byte	0xdd
	.byte	0x2
	.byte	0x0
	.uleb128 0x18
	.byte	0xd0
	.byte	0x8
	.2byte	0x263
	.4byte	0x869
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x264
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x265
	.4byte	0x5f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x266
	.4byte	0x869
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x267
	.4byte	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x268
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x269
	.4byte	0x52
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x26a
	.4byte	0x6ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x26b
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x26c
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x26d
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x26e
	.4byte	0x879
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x26f
	.4byte	0x889
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x270
	.4byte	0x3d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x271
	.4byte	0x105
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x272
	.4byte	0x105
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x273
	.4byte	0x105
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x274
	.4byte	0x105
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x275
	.4byte	0x105
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x276
	.4byte	0x3d
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0x0
	.uleb128 0x8
	.4byte	0x5fe
	.4byte	0x879
	.uleb128 0x9
	.4byte	0xdd
	.byte	0x19
	.byte	0x0
	.uleb128 0x8
	.4byte	0x5fe
	.4byte	0x889
	.uleb128 0x9
	.4byte	0xdd
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.4byte	0x5fe
	.4byte	0x899
	.uleb128 0x9
	.4byte	0xdd
	.byte	0x17
	.byte	0x0
	.uleb128 0x18
	.byte	0xf0
	.byte	0x8
	.2byte	0x27c
	.4byte	0x8c1
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x27e
	.4byte	0x8c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x27f
	.4byte	0x8d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x0
	.uleb128 0x8
	.4byte	0x316
	.4byte	0x8d1
	.uleb128 0x9
	.4byte	0xdd
	.byte	0x1d
	.byte	0x0
	.uleb128 0x8
	.4byte	0x44
	.4byte	0x8e1
	.uleb128 0x9
	.4byte	0xdd
	.byte	0x1d
	.byte	0x0
	.uleb128 0x19
	.byte	0xf0
	.byte	0x8
	.2byte	0x261
	.4byte	0x903
	.uleb128 0x1a
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x277
	.4byte	0x739
	.uleb128 0x1a
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x280
	.4byte	0x899
	.byte	0x0
	.uleb128 0x8
	.4byte	0x5fe
	.4byte	0x913
	.uleb128 0x9
	.4byte	0xdd
	.byte	0x18
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x91f
	.uleb128 0x14
	.4byte	0x495
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x913
	.uleb128 0x10
	.byte	0x4
	.4byte	0x18e
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x937
	.uleb128 0x14
	.4byte	0x3d
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x93d
	.uleb128 0x10
	.byte	0x4
	.4byte	0x92b
	.uleb128 0x8
	.4byte	0x69b
	.4byte	0x953
	.uleb128 0x9
	.4byte	0xdd
	.byte	0x2
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0x9
	.byte	0x6d
	.4byte	0x6f
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x9
	.byte	0x85
	.4byte	0x44
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x9
	.byte	0xa2
	.4byte	0x64
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0x9
	.byte	0xa3
	.4byte	0x76
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0x9
	.byte	0xa4
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x9
	.byte	0xa5
	.4byte	0x8c
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0x9
	.byte	0xbf
	.4byte	0x44
	.uleb128 0x4
	.4byte	.LASF126
	.byte	0x9
	.byte	0xc4
	.4byte	0x36
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0x44
	.byte	0xa
	.byte	0x1a
	.4byte	0xaa6
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0xa
	.byte	0x1b
	.4byte	0x974
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0xa
	.byte	0x1c
	.4byte	0x95e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0xa
	.byte	0x1d
	.4byte	0x995
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0xa
	.byte	0x1e
	.4byte	0x9a0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0xa
	.byte	0x1f
	.4byte	0x97f
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.4byte	.LASF133
	.byte	0xa
	.byte	0x20
	.4byte	0x98a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF134
	.byte	0xa
	.byte	0x21
	.4byte	0x974
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF135
	.byte	0xa
	.byte	0x22
	.4byte	0x969
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF136
	.byte	0xa
	.byte	0x30
	.4byte	0x953
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF137
	.byte	0xa
	.byte	0x31
	.4byte	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF138
	.byte	0xa
	.byte	0x32
	.4byte	0x953
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.4byte	.LASF139
	.byte	0xa
	.byte	0x33
	.4byte	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.4byte	.LASF140
	.byte	0xa
	.byte	0x34
	.4byte	0x953
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0xa
	.byte	0x35
	.4byte	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0xa
	.byte	0x36
	.4byte	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0xa
	.byte	0x37
	.4byte	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0xa
	.byte	0x38
	.4byte	0xaa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x8
	.4byte	0x6f
	.4byte	0xab6
	.uleb128 0x9
	.4byte	0xdd
	.byte	0x1
	.byte	0x0
	.uleb128 0xb
	.byte	0x8
	.byte	0xb
	.byte	0x10
	.4byte	0xadb
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0xb
	.byte	0x11
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0xb
	.byte	0x12
	.4byte	0x11b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF147
	.byte	0xb
	.byte	0x13
	.4byte	0xab6
	.uleb128 0x10
	.byte	0x4
	.4byte	0x9ab
	.uleb128 0x10
	.byte	0x4
	.4byte	0xadb
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0xc
	.byte	0x2a
	.4byte	0x28
	.uleb128 0x4
	.4byte	.LASF149
	.byte	0xc
	.byte	0x36
	.4byte	0x36
	.uleb128 0x4
	.4byte	.LASF150
	.byte	0xc
	.byte	0x4f
	.4byte	0x3d
	.uleb128 0x4
	.4byte	.LASF151
	.byte	0xc
	.byte	0x50
	.4byte	0x44
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF152
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF153
	.uleb128 0x1c
	.ascii	"u8\000"
	.byte	0xd
	.byte	0x62
	.4byte	0xaf2
	.uleb128 0x1c
	.ascii	"u16\000"
	.byte	0xd
	.byte	0x63
	.4byte	0xafd
	.uleb128 0x1c
	.ascii	"u32\000"
	.byte	0xd
	.byte	0x64
	.4byte	0xb13
	.uleb128 0x1c
	.ascii	"s32\000"
	.byte	0xd
	.byte	0x69
	.4byte	0xb08
	.uleb128 0x1d
	.byte	0x1
	.byte	0xd
	.byte	0x7d
	.4byte	0xb6c
	.uleb128 0x1e
	.4byte	.LASF154
	.sleb128 0
	.uleb128 0x1e
	.4byte	.LASF155
	.sleb128 1
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF156
	.byte	0xd
	.byte	0x7d
	.4byte	0xb57
	.uleb128 0x4
	.4byte	.LASF157
	.byte	0xe
	.byte	0x3d
	.4byte	0xb82
	.uleb128 0x10
	.byte	0x4
	.4byte	0xb88
	.uleb128 0x1f
	.byte	0x1
	.4byte	0xb6c
	.uleb128 0x4
	.4byte	.LASF158
	.byte	0xe
	.byte	0x3e
	.4byte	0xb82
	.uleb128 0x4
	.4byte	.LASF159
	.byte	0xe
	.byte	0x3f
	.4byte	0xba4
	.uleb128 0x10
	.byte	0x4
	.4byte	0xbaa
	.uleb128 0x13
	.byte	0x1
	.4byte	0xb6c
	.4byte	0xbc4
	.uleb128 0x14
	.4byte	0xb41
	.uleb128 0x14
	.4byte	0xb41
	.uleb128 0x14
	.4byte	0x11b
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF160
	.byte	0xe
	.byte	0x40
	.4byte	0xbcf
	.uleb128 0x10
	.byte	0x4
	.4byte	0xbd5
	.uleb128 0x13
	.byte	0x1
	.4byte	0xb6c
	.4byte	0xbef
	.uleb128 0x14
	.4byte	0xb41
	.uleb128 0x14
	.4byte	0xb41
	.uleb128 0x14
	.4byte	0xbef
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xbf5
	.uleb128 0x20
	.uleb128 0x4
	.4byte	.LASF161
	.byte	0xe
	.byte	0x41
	.4byte	0xb82
	.uleb128 0x4
	.4byte	.LASF162
	.byte	0xe
	.byte	0x42
	.4byte	0xb82
	.uleb128 0xe
	.4byte	.LASF163
	.byte	0x20
	.byte	0xe
	.byte	0x44
	.4byte	0xc89
	.uleb128 0xc
	.4byte	.LASF164
	.byte	0xe
	.byte	0x45
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF165
	.byte	0xe
	.byte	0x46
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF166
	.byte	0xe
	.byte	0x47
	.4byte	0xb77
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF167
	.byte	0xe
	.byte	0x48
	.4byte	0xb8e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF168
	.byte	0xe
	.byte	0x49
	.4byte	0xb99
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF169
	.byte	0xe
	.byte	0x4a
	.4byte	0xbc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF170
	.byte	0xe
	.byte	0x4b
	.4byte	0xbf6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF171
	.byte	0xe
	.byte	0x4c
	.4byte	0xc01
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF172
	.byte	0xe
	.byte	0x4f
	.4byte	0xc0c
	.uleb128 0xb
	.byte	0xc
	.byte	0xf
	.byte	0x2f
	.4byte	0xcc7
	.uleb128 0xc
	.4byte	.LASF173
	.byte	0xf
	.byte	0x30
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF174
	.byte	0xf
	.byte	0x31
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF175
	.byte	0xf
	.byte	0x32
	.4byte	0xb6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF176
	.byte	0xf
	.byte	0x33
	.4byte	0xc94
	.uleb128 0xb
	.byte	0x10
	.byte	0xf
	.byte	0x35
	.4byte	0xd13
	.uleb128 0xc
	.4byte	.LASF177
	.byte	0xf
	.byte	0x36
	.4byte	0xd13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF178
	.byte	0xf
	.byte	0x37
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF179
	.byte	0xf
	.byte	0x38
	.4byte	0xd1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF180
	.byte	0xf
	.byte	0x39
	.4byte	0xd24
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xd19
	.uleb128 0x16
	.4byte	0xc89
	.uleb128 0x10
	.byte	0x4
	.4byte	0xcc7
	.uleb128 0x10
	.byte	0x4
	.4byte	0xb2c
	.uleb128 0x4
	.4byte	.LASF181
	.byte	0xf
	.byte	0x3a
	.4byte	0xcd2
	.uleb128 0x1d
	.byte	0x1
	.byte	0x10
	.byte	0x2d
	.4byte	0xd56
	.uleb128 0x1e
	.4byte	.LASF182
	.sleb128 0
	.uleb128 0x1e
	.4byte	.LASF183
	.sleb128 1
	.uleb128 0x1e
	.4byte	.LASF184
	.sleb128 2
	.uleb128 0x1e
	.4byte	.LASF185
	.sleb128 3
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF186
	.byte	0x10
	.byte	0x2d
	.4byte	0xd35
	.uleb128 0xb
	.byte	0x10
	.byte	0x10
	.byte	0x35
	.4byte	0xda2
	.uleb128 0xc
	.4byte	.LASF187
	.byte	0x10
	.byte	0x36
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF188
	.byte	0x10
	.byte	0x37
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF189
	.byte	0x10
	.byte	0x38
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF190
	.byte	0x10
	.byte	0x39
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x1c
	.ascii	"FAT\000"
	.byte	0x10
	.byte	0x3a
	.4byte	0xd61
	.uleb128 0xb
	.byte	0x44
	.byte	0x10
	.byte	0x3c
	.4byte	0xe88
	.uleb128 0xc
	.4byte	.LASF177
	.byte	0x10
	.byte	0x3d
	.4byte	0xd13
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF191
	.byte	0x10
	.byte	0x3e
	.4byte	0xe88
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF192
	.byte	0x10
	.byte	0x40
	.4byte	0xb6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF193
	.byte	0x10
	.byte	0x41
	.4byte	0xd56
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xc
	.4byte	.LASF194
	.byte	0x10
	.byte	0x42
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF195
	.byte	0x10
	.byte	0x43
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF196
	.byte	0x10
	.byte	0x44
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF197
	.byte	0x10
	.byte	0x45
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF198
	.byte	0x10
	.byte	0x46
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF199
	.byte	0x10
	.byte	0x47
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF200
	.byte	0x10
	.byte	0x48
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.4byte	.LASF201
	.byte	0x10
	.byte	0x49
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.ascii	"fat\000"
	.byte	0x10
	.byte	0x4a
	.4byte	0xda2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.4byte	.LASF202
	.byte	0x10
	.byte	0x4c
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.4byte	.LASF203
	.byte	0x10
	.byte	0x4d
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xd2a
	.uleb128 0x4
	.4byte	.LASF204
	.byte	0x10
	.byte	0x4e
	.4byte	0xdad
	.uleb128 0xb
	.byte	0xc
	.byte	0x2
	.byte	0x3c
	.4byte	0xecc
	.uleb128 0xc
	.4byte	.LASF205
	.byte	0x2
	.byte	0x3d
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF173
	.byte	0x2
	.byte	0x3e
	.4byte	0xb41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF206
	.byte	0x2
	.byte	0x3f
	.4byte	0xb4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF207
	.byte	0x2
	.byte	0x40
	.4byte	0xe99
	.uleb128 0x21
	.2byte	0x138
	.byte	0x2
	.byte	0x42
	.4byte	0xf19
	.uleb128 0xc
	.4byte	.LASF208
	.byte	0x2
	.byte	0x43
	.4byte	0xf19
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF198
	.byte	0x2
	.byte	0x44
	.4byte	0xecc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF209
	.byte	0x2
	.byte	0x45
	.4byte	0xecc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.4byte	.LASF210
	.byte	0x2
	.byte	0x46
	.4byte	0xf29
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x8
	.4byte	0xb2c
	.4byte	0xf29
	.uleb128 0x9
	.4byte	0xdd
	.byte	0x1f
	.byte	0x0
	.uleb128 0x8
	.4byte	0x5fe
	.4byte	0xf39
	.uleb128 0x9
	.4byte	0xdd
	.byte	0xff
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF211
	.byte	0x2
	.byte	0x47
	.4byte	0xed7
	.uleb128 0x22
	.4byte	.LASF268
	.byte	0x1
	.byte	0x2
	.byte	0x4a
	.4byte	0xf9f
	.uleb128 0x1e
	.4byte	.LASF212
	.sleb128 0
	.uleb128 0x1e
	.4byte	.LASF213
	.sleb128 8
	.uleb128 0x1e
	.4byte	.LASF214
	.sleb128 11
	.uleb128 0x1e
	.4byte	.LASF215
	.sleb128 12
	.uleb128 0x1e
	.4byte	.LASF216
	.sleb128 13
	.uleb128 0x1e
	.4byte	.LASF217
	.sleb128 14
	.uleb128 0x1e
	.4byte	.LASF218
	.sleb128 16
	.uleb128 0x1e
	.4byte	.LASF219
	.sleb128 18
	.uleb128 0x1e
	.4byte	.LASF220
	.sleb128 20
	.uleb128 0x1e
	.4byte	.LASF221
	.sleb128 22
	.uleb128 0x1e
	.4byte	.LASF222
	.sleb128 24
	.uleb128 0x1e
	.4byte	.LASF223
	.sleb128 26
	.uleb128 0x1e
	.4byte	.LASF224
	.sleb128 28
	.byte	0x0
	.uleb128 0x21
	.2byte	0x144
	.byte	0x11
	.byte	0x33
	.4byte	0xff2
	.uleb128 0xc
	.4byte	.LASF225
	.byte	0x11
	.byte	0x34
	.4byte	0xff2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF226
	.byte	0x11
	.byte	0x35
	.4byte	0xf39
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF227
	.byte	0x11
	.byte	0x36
	.4byte	0xb41
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0xc
	.4byte	.LASF228
	.byte	0x11
	.byte	0x37
	.4byte	0xb6c
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0xc
	.4byte	.LASF229
	.byte	0x11
	.byte	0x38
	.4byte	0xb6c
	.byte	0x3
	.byte	0x23
	.uleb128 0x141
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xe8e
	.uleb128 0x4
	.4byte	.LASF230
	.byte	0x11
	.byte	0x39
	.4byte	0xf9f
	.uleb128 0x23
	.4byte	.LASF234
	.byte	0x2
	.byte	0x5d
	.byte	0x1
	.4byte	0xb6c
	.byte	0x3
	.4byte	0x1020
	.uleb128 0x24
	.4byte	.LASF231
	.byte	0x2
	.byte	0x5d
	.4byte	0x1020
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xf39
	.uleb128 0x25
	.4byte	.LASF269
	.byte	0x3
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.4byte	0x1055
	.uleb128 0x24
	.4byte	.LASF232
	.byte	0x3
	.byte	0x2e
	.4byte	0xd24
	.uleb128 0x24
	.4byte	.LASF206
	.byte	0x3
	.byte	0x2e
	.4byte	0x3d
	.uleb128 0x24
	.4byte	.LASF233
	.byte	0x3
	.byte	0x2e
	.4byte	0xb36
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF235
	.byte	0x4
	.byte	0x3c
	.byte	0x1
	.4byte	0xb41
	.byte	0x3
	.4byte	0x107d
	.uleb128 0x24
	.4byte	.LASF225
	.byte	0x4
	.byte	0x3c
	.4byte	0xff2
	.uleb128 0x24
	.4byte	.LASF205
	.byte	0x4
	.byte	0x3c
	.4byte	0xb41
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF236
	.byte	0x2
	.byte	0x65
	.byte	0x1
	.4byte	0xb6c
	.byte	0x3
	.4byte	0x109a
	.uleb128 0x24
	.4byte	.LASF231
	.byte	0x2
	.byte	0x65
	.4byte	0x1020
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF239
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB19
	.4byte	.LFE19
	.byte	0x1
	.byte	0x5d
	.4byte	0x10dd
	.uleb128 0x27
	.ascii	"r\000"
	.byte	0x1
	.byte	0x61
	.4byte	0x495
	.4byte	.LLST1
	.uleb128 0x28
	.4byte	.LASF237
	.byte	0x1
	.byte	0x61
	.4byte	0x62a
	.byte	0x1
	.byte	0x51
	.uleb128 0x28
	.4byte	.LASF238
	.byte	0x1
	.byte	0x61
	.4byte	0x62a
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x211
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5d
	.4byte	0x1124
	.uleb128 0x2a
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x211
	.4byte	0x495
	.4byte	.LLST3
	.uleb128 0x2b
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x211
	.4byte	0xaec
	.4byte	.LLST4
	.uleb128 0x2c
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x212
	.4byte	0x1124
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xff8
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x1f4
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST5
	.4byte	0x1197
	.uleb128 0x2a
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x495
	.4byte	.LLST6
	.uleb128 0x2b
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x1f4
	.4byte	0xaec
	.4byte	.LLST7
	.uleb128 0x2b
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x5f8
	.4byte	.LLST8
	.uleb128 0x2b
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x1f4
	.4byte	0xae6
	.4byte	.LLST9
	.uleb128 0x2e
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x1f5
	.4byte	0x1124
	.4byte	.LLST10
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x1e4
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST11
	.4byte	0x11e4
	.uleb128 0x2a
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x495
	.4byte	.LLST12
	.uleb128 0x2b
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x1e4
	.4byte	0xaec
	.4byte	.LLST13
	.uleb128 0x2e
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x1124
	.4byte	.LLST14
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF246
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST15
	.4byte	0x124a
	.uleb128 0x27
	.ascii	"r\000"
	.byte	0x1
	.byte	0x3f
	.4byte	0x495
	.4byte	.LLST16
	.uleb128 0x30
	.4byte	.LASF247
	.byte	0x1
	.byte	0x3f
	.4byte	0x62a
	.4byte	.LLST17
	.uleb128 0x27
	.ascii	"st\000"
	.byte	0x1
	.byte	0x3f
	.4byte	0xae6
	.4byte	.LLST18
	.uleb128 0x31
	.4byte	.LASF225
	.byte	0x1
	.byte	0x40
	.4byte	0xff2
	.4byte	.LLST19
	.uleb128 0x32
	.4byte	.LASF248
	.byte	0x1
	.byte	0x42
	.4byte	0xf39
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x1b6
	.byte	0x1
	.4byte	0xaec
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LLST20
	.4byte	0x12c3
	.uleb128 0x2a
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x495
	.4byte	.LLST21
	.uleb128 0x2b
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xaec
	.4byte	.LLST22
	.uleb128 0x2b
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x62a
	.4byte	.LLST23
	.uleb128 0x33
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x1b7
	.4byte	0xf39
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2e
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x1124
	.4byte	.LLST24
	.uleb128 0x2c
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x1b9
	.4byte	0xb6c
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x142
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST25
	.4byte	0x14d4
	.uleb128 0x2a
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x142
	.4byte	0x495
	.4byte	.LLST26
	.uleb128 0x2b
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x142
	.4byte	0x62a
	.4byte	.LLST27
	.uleb128 0x2b
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x142
	.4byte	0x3d
	.4byte	.LLST28
	.uleb128 0x2e
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x143
	.4byte	0xff2
	.4byte	.LLST29
	.uleb128 0x2c
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x144
	.4byte	0xb6c
	.uleb128 0x33
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x145
	.4byte	0xf39
	.byte	0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x2e
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x146
	.4byte	0x62a
	.4byte	.LLST30
	.uleb128 0x33
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x147
	.4byte	0xb41
	.byte	0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2e
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x147
	.4byte	0xb41
	.4byte	.LLST31
	.uleb128 0x33
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x148
	.4byte	0xf19
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.4byte	0x1026
	.4byte	.LBB32
	.4byte	.LBE32
	.byte	0x1
	.2byte	0x181
	.4byte	0x139d
	.uleb128 0x35
	.4byte	0x1049
	.uleb128 0x35
	.4byte	0x103e
	.uleb128 0x35
	.4byte	0x1033
	.byte	0x0
	.uleb128 0x34
	.4byte	0x1026
	.4byte	.LBB34
	.4byte	.LBE34
	.byte	0x1
	.2byte	0x182
	.4byte	0x13c1
	.uleb128 0x35
	.4byte	0x1049
	.uleb128 0x35
	.4byte	0x103e
	.uleb128 0x35
	.4byte	0x1033
	.byte	0x0
	.uleb128 0x36
	.4byte	0x1026
	.4byte	.LBB36
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x18e
	.4byte	0x13e5
	.uleb128 0x35
	.4byte	0x1049
	.uleb128 0x35
	.4byte	0x103e
	.uleb128 0x35
	.4byte	0x1033
	.byte	0x0
	.uleb128 0x36
	.4byte	0x1026
	.4byte	.LBB42
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x18f
	.4byte	0x1409
	.uleb128 0x35
	.4byte	0x1049
	.uleb128 0x35
	.4byte	0x103e
	.uleb128 0x35
	.4byte	0x1033
	.byte	0x0
	.uleb128 0x36
	.4byte	0x1026
	.4byte	.LBB46
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.2byte	0x19c
	.4byte	0x142d
	.uleb128 0x35
	.4byte	0x1049
	.uleb128 0x35
	.4byte	0x103e
	.uleb128 0x35
	.4byte	0x1033
	.byte	0x0
	.uleb128 0x36
	.4byte	0x1026
	.4byte	.LBB51
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x19d
	.4byte	0x1451
	.uleb128 0x35
	.4byte	0x1049
	.uleb128 0x35
	.4byte	0x103e
	.uleb128 0x35
	.4byte	0x1033
	.byte	0x0
	.uleb128 0x34
	.4byte	0x1055
	.4byte	.LBB56
	.4byte	.LBE56
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x1470
	.uleb128 0x35
	.4byte	0x1071
	.uleb128 0x35
	.4byte	0x1066
	.byte	0x0
	.uleb128 0x34
	.4byte	0x1026
	.4byte	.LBB58
	.4byte	.LBE58
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x1494
	.uleb128 0x35
	.4byte	0x1049
	.uleb128 0x35
	.4byte	0x103e
	.uleb128 0x35
	.4byte	0x1033
	.byte	0x0
	.uleb128 0x34
	.4byte	0x1026
	.4byte	.LBB60
	.4byte	.LBE60
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x14b8
	.uleb128 0x35
	.4byte	0x1049
	.uleb128 0x35
	.4byte	0x103e
	.uleb128 0x35
	.4byte	0x1033
	.byte	0x0
	.uleb128 0x37
	.4byte	0x1055
	.4byte	.LBB62
	.4byte	.LBE62
	.byte	0x1
	.2byte	0x1aa
	.uleb128 0x35
	.4byte	0x1071
	.uleb128 0x35
	.4byte	0x1066
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF257
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LLST32
	.4byte	0x1567
	.uleb128 0x27
	.ascii	"r\000"
	.byte	0x1
	.byte	0xdc
	.4byte	0x495
	.4byte	.LLST33
	.uleb128 0x30
	.4byte	.LASF258
	.byte	0x1
	.byte	0xdc
	.4byte	0x62a
	.4byte	.LLST34
	.uleb128 0x30
	.4byte	.LASF259
	.byte	0x1
	.byte	0xdc
	.4byte	0x62a
	.4byte	.LLST35
	.uleb128 0x31
	.4byte	.LASF225
	.byte	0x1
	.byte	0xdd
	.4byte	0xff2
	.4byte	.LLST36
	.uleb128 0x32
	.4byte	.LASF260
	.byte	0x1
	.byte	0xde
	.4byte	0xf39
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x32
	.4byte	.LASF261
	.byte	0x1
	.byte	0xdf
	.4byte	0xf39
	.byte	0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x31
	.4byte	.LASF253
	.byte	0x1
	.byte	0xe0
	.4byte	0x62a
	.4byte	.LLST37
	.uleb128 0x32
	.4byte	.LASF255
	.byte	0x1
	.byte	0xe1
	.4byte	0xb41
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF262
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LLST38
	.4byte	0x15b0
	.uleb128 0x27
	.ascii	"r\000"
	.byte	0x1
	.byte	0xb7
	.4byte	0x495
	.4byte	.LLST39
	.uleb128 0x30
	.4byte	.LASF247
	.byte	0x1
	.byte	0xb7
	.4byte	0x62a
	.4byte	.LLST40
	.uleb128 0x31
	.4byte	.LASF225
	.byte	0x1
	.byte	0xb8
	.4byte	0xff2
	.4byte	.LLST41
	.byte	0x0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF270
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LLST42
	.uleb128 0x27
	.ascii	"r\000"
	.byte	0x1
	.byte	0x66
	.4byte	0x495
	.4byte	.LLST43
	.uleb128 0x30
	.4byte	.LASF247
	.byte	0x1
	.byte	0x66
	.4byte	0x62a
	.4byte	.LLST44
	.uleb128 0x31
	.4byte	.LASF225
	.byte	0x1
	.byte	0x67
	.4byte	0xff2
	.4byte	.LLST45
	.uleb128 0x32
	.4byte	.LASF248
	.byte	0x1
	.byte	0x68
	.4byte	0xf39
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x32
	.4byte	.LASF263
	.byte	0x1
	.byte	0x69
	.4byte	0xf39
	.byte	0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x32
	.4byte	.LASF205
	.byte	0x1
	.byte	0x6a
	.4byte	0xb41
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x31
	.4byte	.LASF264
	.byte	0x1
	.byte	0x6b
	.4byte	0xb6c
	.4byte	.LLST46
	.uleb128 0x31
	.4byte	.LASF265
	.byte	0x1
	.byte	0x6c
	.4byte	0xb6c
	.4byte	.LLST47
	.uleb128 0x39
	.4byte	0x107d
	.4byte	.LBB64
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x93
	.uleb128 0x35
	.4byte	0x108e
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
	.uleb128 0x6
	.uleb128 0x17
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x19
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x30
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xc2
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1655
	.4byte	0x109a
	.ascii	"_FAT_link_r\000"
	.4byte	0x10dd
	.ascii	"_FAT_dirclose_r\000"
	.4byte	0x112a
	.ascii	"_FAT_dirnext_r\000"
	.4byte	0x1197
	.ascii	"_FAT_dirreset_r\000"
	.4byte	0x11e4
	.ascii	"_FAT_stat_r\000"
	.4byte	0x124a
	.ascii	"_FAT_diropen_r\000"
	.4byte	0x12c3
	.ascii	"_FAT_mkdir_r\000"
	.4byte	0x14d4
	.ascii	"_FAT_rename_r\000"
	.4byte	0x1567
	.ascii	"_FAT_chdir_r\000"
	.4byte	0x15b0
	.ascii	"_FAT_unlink_r\000"
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
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB64-.Ltext0
	.4byte	.LBE64-.Ltext0
	.4byte	.LBB67-.Ltext0
	.4byte	.LBE67-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF224:
	.ascii	"DIR_ENTRY_fileSize\000"
.LASF193:
	.ascii	"filesysType\000"
.LASF266:
	.ascii	"GNU C 4.4.3\000"
.LASF200:
	.ascii	"sectorsPerCluster\000"
.LASF265:
	.ascii	"errorOccured\000"
.LASF215:
	.ascii	"DIR_ENTRY_reserved\000"
.LASF161:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF38:
	.ascii	"_on_exit_args\000"
.LASF146:
	.ascii	"dirStruct\000"
.LASF106:
	.ascii	"_wctomb_state\000"
.LASF229:
	.ascii	"validEntry\000"
.LASF103:
	.ascii	"_r48\000"
.LASF194:
	.ascii	"totalSize\000"
.LASF163:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF168:
	.ascii	"fn_readSectors\000"
.LASF243:
	.ascii	"filestat\000"
.LASF108:
	.ascii	"_signal_buf\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF142:
	.ascii	"st_blksize\000"
.LASF52:
	.ascii	"_lbfsize\000"
.LASF50:
	.ascii	"_flags\000"
.LASF67:
	.ascii	"_errno\000"
.LASF263:
	.ascii	"dirContents\000"
.LASF234:
	.ascii	"_FAT_directory_isDirectory\000"
.LASF216:
	.ascii	"DIR_ENTRY_cTime_ms\000"
.LASF7:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF203:
	.ascii	"openFileCount\000"
.LASF240:
	.ascii	"_FAT_dirclose_r\000"
.LASF54:
	.ascii	"_read\000"
.LASF252:
	.ascii	"mode\000"
.LASF110:
	.ascii	"_mbrlen_state\000"
.LASF209:
	.ascii	"dataEnd\000"
.LASF69:
	.ascii	"_stdout\000"
.LASF256:
	.ascii	"newEntryData\000"
.LASF13:
	.ascii	"_fpos_t\000"
.LASF211:
	.ascii	"DIR_ENTRY\000"
.LASF45:
	.ascii	"_fns\000"
.LASF53:
	.ascii	"_cookie\000"
.LASF260:
	.ascii	"oldDirEntry\000"
.LASF261:
	.ascii	"newDirEntry\000"
.LASF27:
	.ascii	"_Bigint\000"
.LASF35:
	.ascii	"__tm_wday\000"
.LASF77:
	.ascii	"_result\000"
.LASF145:
	.ascii	"device\000"
.LASF120:
	.ascii	"ino_t\000"
.LASF151:
	.ascii	"uint32_t\000"
.LASF31:
	.ascii	"__tm_hour\000"
.LASF207:
	.ascii	"DIR_ENTRY_POSITION\000"
.LASF17:
	.ascii	"__count\000"
.LASF152:
	.ascii	"float\000"
.LASF239:
	.ascii	"_FAT_link_r\000"
.LASF30:
	.ascii	"__tm_min\000"
.LASF116:
	.ascii	"_nextf\000"
.LASF93:
	.ascii	"_rand48\000"
.LASF78:
	.ascii	"_result_k\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF143:
	.ascii	"st_blocks\000"
.LASF99:
	.ascii	"_asctime_buf\000"
.LASF49:
	.ascii	"__sFILE\000"
.LASF26:
	.ascii	"_wds\000"
.LASF238:
	.ascii	"newLink\000"
.LASF208:
	.ascii	"entryData\000"
.LASF138:
	.ascii	"st_mtime\000"
.LASF251:
	.ascii	"_FAT_mkdir_r\000"
.LASF267:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/fa"
	.ascii	"tdir.c\000"
.LASF89:
	.ascii	"__FILE\000"
.LASF61:
	.ascii	"_offset\000"
.LASF236:
	.ascii	"_FAT_directory_isDot\000"
.LASF217:
	.ascii	"DIR_ENTRY_cTime\000"
.LASF169:
	.ascii	"fn_writeSectors\000"
.LASF233:
	.ascii	"value\000"
.LASF127:
	.ascii	"stat\000"
.LASF72:
	.ascii	"_emergency\000"
.LASF171:
	.ascii	"fn_shutdown\000"
.LASF128:
	.ascii	"st_dev\000"
.LASF162:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF189:
	.ascii	"lastCluster\000"
.LASF259:
	.ascii	"newName\000"
.LASF206:
	.ascii	"offset\000"
.LASF29:
	.ascii	"__tm_sec\000"
.LASF248:
	.ascii	"dirEntry\000"
.LASF36:
	.ascii	"__tm_yday\000"
.LASF71:
	.ascii	"_inc\000"
.LASF44:
	.ascii	"_ind\000"
.LASF133:
	.ascii	"st_gid\000"
.LASF227:
	.ascii	"startCluster\000"
.LASF23:
	.ascii	"_next\000"
.LASF130:
	.ascii	"st_mode\000"
.LASF112:
	.ascii	"_mbsrtowcs_state\000"
.LASF183:
	.ascii	"FS_FAT12\000"
.LASF244:
	.ascii	"_FAT_dirreset_r\000"
.LASF184:
	.ascii	"FS_FAT16\000"
.LASF131:
	.ascii	"st_nlink\000"
.LASF247:
	.ascii	"path\000"
.LASF155:
	.ascii	"true\000"
.LASF18:
	.ascii	"__value\000"
.LASF205:
	.ascii	"cluster\000"
.LASF79:
	.ascii	"_p5s\000"
.LASF174:
	.ascii	"count\000"
.LASF198:
	.ascii	"dataStart\000"
.LASF204:
	.ascii	"PARTITION\000"
.LASF114:
	.ascii	"_wcsrtombs_state\000"
.LASF104:
	.ascii	"_mblen_state\000"
.LASF158:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF88:
	.ascii	"char\000"
.LASF32:
	.ascii	"__tm_mday\000"
.LASF85:
	.ascii	"_sig_func\000"
.LASF111:
	.ascii	"_mbrtowc_state\000"
.LASF84:
	.ascii	"_atexit0\000"
.LASF213:
	.ascii	"DIR_ENTRY_extension\000"
.LASF210:
	.ascii	"filename\000"
.LASF132:
	.ascii	"st_uid\000"
.LASF159:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF192:
	.ascii	"readOnly\000"
.LASF197:
	.ascii	"numberOfSectors\000"
.LASF221:
	.ascii	"DIR_ENTRY_mTime\000"
.LASF20:
	.ascii	"_flock_t\000"
.LASF136:
	.ascii	"st_atime\000"
.LASF15:
	.ascii	"__wch\000"
.LASF92:
	.ascii	"_iobs\000"
.LASF148:
	.ascii	"uint8_t\000"
.LASF119:
	.ascii	"time_t\000"
.LASF57:
	.ascii	"_close\000"
.LASF170:
	.ascii	"fn_clearStatus\000"
.LASF147:
	.ascii	"DIR_ITER\000"
.LASF75:
	.ascii	"__sdidinit\000"
.LASF180:
	.ascii	"pages\000"
.LASF181:
	.ascii	"CACHE\000"
.LASF129:
	.ascii	"st_ino\000"
.LASF264:
	.ascii	"nextEntry\000"
.LASF222:
	.ascii	"DIR_ENTRY_mDate\000"
.LASF212:
	.ascii	"DIR_ENTRY_name\000"
.LASF68:
	.ascii	"_stdin\000"
.LASF101:
	.ascii	"_gamma_signgam\000"
.LASF5:
	.ascii	"long long int\000"
.LASF185:
	.ascii	"FS_FAT32\000"
.LASF47:
	.ascii	"_base\000"
.LASF80:
	.ascii	"_freelist\000"
.LASF10:
	.ascii	"__dev_t\000"
.LASF95:
	.ascii	"_mult\000"
.LASF21:
	.ascii	"__ULong\000"
.LASF268:
	.ascii	"DIR_ENTRY_offset\000"
.LASF113:
	.ascii	"_wcrtomb_state\000"
.LASF123:
	.ascii	"uid_t\000"
.LASF122:
	.ascii	"dev_t\000"
.LASF51:
	.ascii	"_file\000"
.LASF164:
	.ascii	"ioType\000"
.LASF214:
	.ascii	"DIR_ENTRY_attributes\000"
.LASF76:
	.ascii	"__cleanup\000"
.LASF188:
	.ascii	"sectorsPerFat\000"
.LASF19:
	.ascii	"_mbstate_t\000"
.LASF237:
	.ascii	"existing\000"
.LASF255:
	.ascii	"dirCluster\000"
.LASF37:
	.ascii	"__tm_isdst\000"
.LASF225:
	.ascii	"partition\000"
.LASF167:
	.ascii	"fn_isInserted\000"
.LASF115:
	.ascii	"_h_errno\000"
.LASF199:
	.ascii	"bytesPerSector\000"
.LASF137:
	.ascii	"st_spare1\000"
.LASF139:
	.ascii	"st_spare2\000"
.LASF141:
	.ascii	"st_spare3\000"
.LASF144:
	.ascii	"st_spare4\000"
.LASF172:
	.ascii	"IO_INTERFACE\000"
.LASF191:
	.ascii	"cache\000"
.LASF165:
	.ascii	"features\000"
.LASF258:
	.ascii	"oldName\000"
.LASF157:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF33:
	.ascii	"__tm_mon\000"
.LASF254:
	.ascii	"parentCluster\000"
.LASF226:
	.ascii	"currentEntry\000"
.LASF175:
	.ascii	"dirty\000"
.LASF12:
	.ascii	"__gid_t\000"
.LASF149:
	.ascii	"uint16_t\000"
.LASF55:
	.ascii	"_write\000"
.LASF124:
	.ascii	"gid_t\000"
.LASF166:
	.ascii	"fn_startup\000"
.LASF201:
	.ascii	"bytesPerCluster\000"
.LASF202:
	.ascii	"cwdCluster\000"
.LASF43:
	.ascii	"_atexit\000"
.LASF64:
	.ascii	"_mbstate\000"
.LASF219:
	.ascii	"DIR_ENTRY_aDate\000"
.LASF2:
	.ascii	"short int\000"
.LASF9:
	.ascii	"long int\000"
.LASF195:
	.ascii	"rootDirStart\000"
.LASF218:
	.ascii	"DIR_ENTRY_cDate\000"
.LASF87:
	.ascii	"__sf\000"
.LASF25:
	.ascii	"_sign\000"
.LASF270:
	.ascii	"_FAT_unlink_r\000"
.LASF74:
	.ascii	"_current_locale\000"
.LASF62:
	.ascii	"_data\000"
.LASF16:
	.ascii	"__wchb\000"
.LASF34:
	.ascii	"__tm_year\000"
.LASF241:
	.ascii	"dirState\000"
.LASF156:
	.ascii	"bool\000"
.LASF100:
	.ascii	"_localtime_buf\000"
.LASF11:
	.ascii	"__uid_t\000"
.LASF140:
	.ascii	"st_ctime\000"
.LASF83:
	.ascii	"_new\000"
.LASF81:
	.ascii	"_cvtlen\000"
.LASF24:
	.ascii	"_maxwds\000"
.LASF107:
	.ascii	"_l64a_buf\000"
.LASF73:
	.ascii	"_current_category\000"
.LASF257:
	.ascii	"_FAT_rename_r\000"
.LASF173:
	.ascii	"sector\000"
.LASF223:
	.ascii	"DIR_ENTRY_cluster\000"
.LASF60:
	.ascii	"_blksize\000"
.LASF28:
	.ascii	"__tm\000"
.LASF186:
	.ascii	"FS_TYPE\000"
.LASF63:
	.ascii	"_lock\000"
.LASF230:
	.ascii	"DIR_STATE_STRUCT\000"
.LASF22:
	.ascii	"long unsigned int\000"
.LASF91:
	.ascii	"_niobs\000"
.LASF14:
	.ascii	"wint_t\000"
.LASF196:
	.ascii	"rootDirCluster\000"
.LASF150:
	.ascii	"int32_t\000"
.LASF269:
	.ascii	"u16_to_u8array\000"
.LASF40:
	.ascii	"_dso_handle\000"
.LASF176:
	.ascii	"CACHE_ENTRY\000"
.LASF245:
	.ascii	"state\000"
.LASF182:
	.ascii	"FS_UNKNOWN\000"
.LASF231:
	.ascii	"entry\000"
.LASF126:
	.ascii	"nlink_t\000"
.LASF82:
	.ascii	"_cvtbuf\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF109:
	.ascii	"_getdate_err\000"
.LASF154:
	.ascii	"false\000"
.LASF179:
	.ascii	"cacheEntries\000"
.LASF96:
	.ascii	"_add\000"
.LASF118:
	.ascii	"_unused\000"
.LASF220:
	.ascii	"DIR_ENTRY_clusterHigh\000"
.LASF249:
	.ascii	"_FAT_diropen_r\000"
.LASF228:
	.ascii	"inUse\000"
.LASF46:
	.ascii	"__sbuf\000"
.LASF135:
	.ascii	"st_size\000"
.LASF90:
	.ascii	"_glue\000"
.LASF187:
	.ascii	"fatStart\000"
.LASF232:
	.ascii	"item\000"
.LASF86:
	.ascii	"__sglue\000"
.LASF98:
	.ascii	"_strtok_last\000"
.LASF105:
	.ascii	"_mbtowc_state\000"
.LASF177:
	.ascii	"disc\000"
.LASF190:
	.ascii	"firstFree\000"
.LASF39:
	.ascii	"_fnargs\000"
.LASF0:
	.ascii	"signed char\000"
.LASF125:
	.ascii	"mode_t\000"
.LASF66:
	.ascii	"_reent\000"
.LASF121:
	.ascii	"off_t\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF262:
	.ascii	"_FAT_chdir_r\000"
.LASF160:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF41:
	.ascii	"_fntypes\000"
.LASF235:
	.ascii	"_FAT_fat_clusterToSector\000"
.LASF48:
	.ascii	"_size\000"
.LASF153:
	.ascii	"double\000"
.LASF8:
	.ascii	"_off_t\000"
.LASF253:
	.ascii	"pathEnd\000"
.LASF59:
	.ascii	"_nbuf\000"
.LASF97:
	.ascii	"_unused_rand\000"
.LASF134:
	.ascii	"st_rdev\000"
.LASF246:
	.ascii	"_FAT_stat_r\000"
.LASF65:
	.ascii	"_flags2\000"
.LASF42:
	.ascii	"_is_cxa\000"
.LASF94:
	.ascii	"_seed\000"
.LASF102:
	.ascii	"_rand_next\000"
.LASF178:
	.ascii	"numberOfPages\000"
.LASF242:
	.ascii	"_FAT_dirnext_r\000"
.LASF56:
	.ascii	"_seek\000"
.LASF250:
	.ascii	"fileExists\000"
.LASF70:
	.ascii	"_stderr\000"
.LASF117:
	.ascii	"_nmalloc\000"
.LASF58:
	.ascii	"_ubuf\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
