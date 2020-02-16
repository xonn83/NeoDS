	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"fatfile.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	_FAT_fstat_r
	.code	16
	.thumb_func
	.type	_FAT_fstat_r, %function
_FAT_fstat_r:
.LFB25:
	.file 1 "C:/Users/GRX/NeoDS/arm9/source/libfat/fatfile.c"
	.loc 1 864 0
	push	{r4, r5, r6, r7, lr}
.LCFI0:
.LVL0:
	sub	sp, sp, #332
.LCFI1:
	.loc 1 864 0
	mov	r6, r0
	mov	r4, r1
	mov	r5, r2
	.loc 1 871 0
	cmp	r1, #0
	beq	.L2
.LVL1:
	ldr	r3, .L9
	ldrb	r3, [r1, r3]
	cmp	r3, #0
	bne	.L3
.L2:
	.loc 1 873 0
	mov	r3, #9
	b	.L7
.L3:
	.loc 1 877 0
	ldr	r3, .L9+4
	.loc 1 880 0
	add	r0, sp, #48
	.loc 1 877 0
	ldr	r3, [r1, r3]
	.loc 1 880 0
	mov	r1, #134
.LVL2:
	lsl	r1, r1, #3
	add	r1, r4, r1
	.loc 1 877 0
	str	r3, [sp, #4]
	.loc 1 880 0
	str	r1, [sp, #12]
	ldmia	r1!, {r2, r3, r7}
	stmia	r0!, {r2, r3, r7}
	.loc 1 881 0
	ldr	r1, .L9+8
	add	r0, sp, #60
	add	r1, r4, r1
	str	r1, [sp, #12]
	ldmia	r1!, {r2, r3, r7}
	stmia	r0!, {r2, r3, r7}
	.loc 1 883 0
	add	r1, sp, #16
	ldr	r0, [sp, #4]
	bl	_FAT_directory_entryFromPosition
	cmp	r0, #0
	bne	.L5
	.loc 1 884 0
	mov	r3, #5
.LVL3:
.L7:
	mov	r0, #1
	str	r3, [r6]
	neg	r0, r0
	.loc 1 885 0
	b	.L4
.LVL4:
.L5:
	.loc 1 889 0
	ldr	r0, [sp, #4]
	add	r1, sp, #16
	mov	r2, r5
	bl	_FAT_directory_entryStat
	.loc 1 892 0
	ldr	r3, [r4, #4]
	.loc 1 893 0
	mov	r0, #0
	.loc 1 892 0
	str	r3, [r5, #4]
	.loc 1 893 0
	ldr	r3, [r4]
	str	r3, [r5, #24]
.LVL5:
.L4:
	.loc 1 896 0
	add	sp, sp, #332
	@ sp needed for prologue
.LVL6:
.LVL7:
.LVL8:
	pop	{r4, r5, r6, r7, pc}
.L10:
	.align	2
.L9:
	.word	1067
	.word	1068
	.word	1084
.LFE25:
	.size	_FAT_fstat_r, .-_FAT_fstat_r
	.align	2
	.global	_FAT_cluster_lookup
	.code	16
	.thumb_func
	.type	_FAT_cluster_lookup, %function
_FAT_cluster_lookup:
.LFB18:
	.loc 1 59 0
	push	{r4, r5, r6, r7, lr}
.LCFI2:
.LVL9:
	.loc 1 60 0
	mov	r3, r1
	add	r3, r3, #8
	lsl	r3, r3, #2
	add	r3, r0, r3
	.loc 1 59 0
	sub	sp, sp, #12
.LCFI3:
	.loc 1 59 0
	mov	r4, r0
	.loc 1 60 0
	ldr	r0, [r3, #4]
.LVL10:
	.loc 1 59 0
	mov	r7, r1
	.loc 1 60 0
	cmp	r0, #0
	bne	.L12
.LVL11:
	.loc 1 65 0
	ldr	r3, .L21
	.loc 1 66 0
	ldr	r1, [r4, #4]
.LVL12:
	.loc 1 65 0
	ldr	r3, [r4, r3]
	.loc 1 66 0
	mov	r5, #1
.LVL13:
	.loc 1 65 0
	str	r3, [sp, #4]
	.loc 1 66 0
	mov	r3, r4
	.loc 1 70 0
	b	.L13
.LVL14:
.L15:
	.loc 1 71 0
	ldr	r2, [r3, #40]
.LVL15:
	add	r3, r3, #4
	cmp	r2, #0
	beq	.L14
	.loc 1 70 0
	add	r5, r5, #1
	mov	r1, r2
.LVL16:
.L13:
	cmp	r5, r7
	bls	.L15
.LVL17:
.L14:
	mov	r6, r5
	add	r6, r6, #8
	lsl	r6, r6, #2
	add	r6, r4, r6
	add	r6, r6, #4
.LVL18:
.L18:
	mov	r2, #0
	str	r2, [sp]
	.loc 1 76 0
	b	.L16
.L17:
	.loc 1 77 0
	ldr	r0, [sp, #4]
	bl	_FAT_fat_nextCluster
.LVL19:
	.loc 1 76 0
	ldr	r3, [sp]
	.loc 1 77 0
	mov	r1, r0
.LVL20:
	.loc 1 76 0
	add	r3, r3, #1
	str	r3, [sp]
.L16:
	ldr	r2, .L21+4
	ldr	r3, [r4, r2]
	ldr	r2, [sp]
	cmp	r2, r3
	bcc	.L17
	.loc 1 80 0
	add	r5, r5, #1
	stmia	r6!, {r1}
	.loc 1 81 0
	cmp	r5, r7
	bls	.L18
	.loc 1 83 0
	add	r7, r7, #8
.LVL21:
	lsl	r7, r7, #2
	add	r4, r4, r7
.LVL22:
	ldr	r0, [r4, #4]
.LVL23:
.L12:
	.loc 1 84 0
	add	sp, sp, #12
	@ sp needed for prologue
.LVL24:
.LVL25:
.LVL26:
	pop	{r4, r5, r6, r7, pc}
.L22:
	.align	2
.L21:
	.word	1068
	.word	1060
.LFE18:
	.size	_FAT_cluster_lookup, .-_FAT_cluster_lookup
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.align	2
	.global	_FAT_seek_r
	.code	16
	.thumb_func
	.type	_FAT_seek_r, %function
_FAT_seek_r:
.LFB24:
	.loc 1 765 0
	push	{r4, r5, r6, r7, lr}
.LCFI4:
.LVL27:
	sub	sp, sp, #12
.LCFI5:
	.loc 1 765 0
	mov	r4, r1
	.loc 1 774 0
	cmp	r1, #0
	beq	.L24
	ldr	r1, .L46
.LVL28:
	ldrb	r1, [r4, r1]
	cmp	r1, #0
	bne	.L25
.LVL29:
.L24:
	.loc 1 776 0
	mov	r3, #9
.LVL30:
	b	.L45
.LVL31:
.L25:
	.loc 1 780 0
	ldr	r1, .L46+4
	ldr	r6, [r4, r1]
.LVL32:
	.loc 1 782 0
	cmp	r3, #1
	beq	.L29
	cmp	r3, #2
	beq	.L30
	cmp	r3, #0
	beq	.L28
	b	.L42
.L29:
	.loc 1 787 0
	ldr	r5, [r4, #8]
	b	.L43
.L30:
	.loc 1 790 0
	ldr	r5, [r4]
.L43:
	add	r5, r2, r5
.LVL33:
	.loc 1 791 0
	b	.L31
.L42:
	.loc 1 793 0
	mov	r3, #22
.LVL34:
.L45:
	mov	r5, #1
	str	r3, [r0]
	neg	r5, r5
	.loc 1 794 0
	b	.L26
.LVL35:
.L28:
	mov	r5, r2
.LVL36:
.L31:
	.loc 1 797 0
	cmp	r5, #0
	bge	.L33
	cmp	r2, #0
	ble	.L42
	.loc 1 798 0
	mov	r3, #139
.LVL37:
	b	.L45
.LVL38:
.L33:
	.loc 1 808 0
	ldr	r3, [r4]
.LVL39:
	cmp	r3, r5
	bls	.L34
.LBB74:
	.loc 1 814 0
	ldr	r7, [r6, #40]
	mov	r0, r5
.LVL40:
	mov	r1, r7
	bl	__aeabi_uidivmod
.LVL41:
	.loc 1 815 0
	ldr	r3, .L46+8
	.loc 1 814 0
	lsr	r1, r1, #9
	.loc 1 815 0
	and	r3, r3, r5
	.loc 1 814 0
	str	r1, [r4, #16]
	.loc 1 815 0
	str	r3, [r4, #20]
	.loc 1 834 0
	mov	r1, r7
	mov	r0, r5
	bl	__aeabi_uidiv
	.loc 1 835 0
	ldr	r3, .L46+12
	.loc 1 834 0
	mov	r7, r0
	.loc 1 835 0
	ldr	r3, [r4, r3]
	.loc 1 836 0
	mov	r1, r3
	.loc 1 835 0
	str	r3, [sp]
	.loc 1 836 0
	bl	__aeabi_uidivmod
	.loc 1 837 0
	mov	r0, r7
	.loc 1 836 0
	str	r1, [sp, #4]
	.loc 1 837 0
	ldr	r1, [sp]
	bl	__aeabi_uidiv
	mov	r1, r0
	mov	r0, r4
	bl	_FAT_cluster_lookup
	str	r0, [sp]
	.loc 1 839 0
	ldr	r1, [sp]
	mov	r0, r6
	bl	_FAT_fat_nextCluster
	b	.L44
.LVL42:
.L37:
	.loc 1 841 0
	ldr	r3, [sp, #4]
	.loc 1 843 0
	mov	r0, r6
.LVL43:
	.loc 1 841 0
	sub	r3, r3, #1
	.loc 1 843 0
	mov	r1, r7
	.loc 1 841 0
	str	r3, [sp, #4]
	.loc 1 843 0
	bl	_FAT_fat_nextCluster
	str	r7, [sp]
.L44:
	mov	r7, r0
	.loc 1 840 0
	cmp	r0, #0
	beq	.L36
.LVL44:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L39
	ldr	r3, .L46+16
	cmp	r0, r3
	bne	.L37
	b	.L38
.L36:
	.loc 1 847 0
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L39
.L38:
	mov	r3, #133
	lsl	r3, r3, #3
	ldr	r3, [r4, r3]
	ldr	r2, .L46+20
	tst	r2, r3
	beq	.L39
	.loc 1 849 0
	ldr	r3, [r6, #36]
	str	r3, [r4, #16]
	.loc 1 850 0
	mov	r3, #0
	str	r3, [r4, #20]
.L39:
	.loc 1 853 0
	ldr	r3, [sp]
	str	r3, [r4, #12]
.LVL45:
.L34:
.LBE74:
	.loc 1 857 0
	str	r5, [r4, #8]
.LVL46:
.L26:
	.loc 1 860 0
	add	sp, sp, #12
	mov	r0, r5
.LVL47:
	@ sp needed for prologue
.LVL48:
.LVL49:
.LVL50:
.LVL51:
	pop	{r4, r5, r6, r7, pc}
.L47:
	.align	2
.L46:
	.word	1067
	.word	1068
	.word	511
	.word	1060
	.word	268435455
	.word	16776960
.LFE24:
	.size	_FAT_seek_r, .-_FAT_seek_r
	.align	2
	.code	16
	.thumb_func
	.type	file_extend_r, %function
file_extend_r:
.LFB22:
	.loc 1 490 0
	push	{r4, r5, r6, r7, lr}
.LCFI6:
.LVL52:
	.loc 1 491 0
	ldr	r3, .L76
	.loc 1 490 0
	ldr	r4, .L76+4
	mov	r5, r1
	add	sp, sp, r4
.LCFI7:
	.loc 1 491 0
	ldr	r4, [r1, r3]
.LVL53:
	.loc 1 498 0
	mov	r2, #128
	.loc 1 492 0
	ldr	r1, [r4, #4]
.LVL54:
	.loc 1 490 0
	str	r0, [sp, #28]
	.loc 1 492 0
	str	r1, [sp, #20]
	.loc 1 498 0
	lsl	r2, r2, #2
	mov	r1, #0
	add	r0, sp, #32
.LVL55:
	bl	memset
	.loc 1 502 0
	ldr	r0, [r5]
	ldr	r2, .L76+8
	.loc 1 503 0
	ldr	r1, [r4, #40]
	.loc 1 502 0
	and	r2, r2, r0
	str	r2, [sp, #16]
	.loc 1 503 0
	bl	__aeabi_uidivmod
	.loc 1 504 0
	mov	r0, r4
	.loc 1 503 0
	lsr	r7, r1, #9
	.loc 1 504 0
	ldr	r1, [r5, #4]
	bl	_FAT_fat_lastCluster
	.loc 1 506 0
	ldr	r2, [r5, #8]
	ldr	r3, [r5]
	.loc 1 510 0
	ldr	r1, [sp, #16]
	.loc 1 506 0
	sub	r3, r2, r3
	.loc 1 510 0
	ldr	r2, .L76+8
	.loc 1 506 0
	str	r3, [sp, #12]
	.loc 1 510 0
	add	r3, r1, r3
	.loc 1 504 0
	mov	r6, r0
	.loc 1 510 0
	str	r3, [sp, #24]
	cmp	r3, r2
	bhi	.L49
.LBB75:
.LBB76:
	.file 2 "C:/Users/GRX/NeoDS/arm9/source/libfat/file_allocation_table.h"
	.loc 2 61 0
	cmp	r0, #1
	bls	.L50
	ldr	r1, [r4, #36]
	sub	r2, r0, #2
	mov	r3, r1
	mul	r3, r2
	ldr	r2, [r4, #28]
	add	r2, r3, r2
	b	.L51
.L50:
	ldr	r2, [r4, #16]
.L51:
.LBE76:
.LBE75:
	.loc 1 511 0
	ldr	r3, [sp, #12]
	add	r2, r2, r7
	str	r3, [sp]
	ldr	r0, [sp, #20]
	ldr	r3, [sp, #16]
	add	r1, sp, #32
	bl	_FAT_cache_writePartialSector
	.loc 1 513 0
	ldr	r3, [sp, #24]
	b	.L52
.L49:
	.loc 1 515 0
	ldr	r1, [sp, #16]
	cmp	r1, #0
	beq	.L74
.LBB77:
.LBB78:
	.loc 2 61 0
	cmp	r0, #1
	bls	.L54
	ldr	r1, [r4, #36]
	sub	r3, r0, #2
	mov	r2, r1
	mul	r2, r3
	ldr	r3, [r4, #28]
	add	r2, r2, r3
	b	.L55
.L54:
	ldr	r2, [r4, #16]
.L55:
.LBE78:
.LBE77:
	.loc 1 516 0
	ldr	r1, [sp, #16]
	mov	r3, #128
	lsl	r3, r3, #2
	sub	r3, r3, r1
	add	r2, r2, r7
	str	r3, [sp]
	ldr	r0, [sp, #20]
	ldr	r3, [sp, #16]
	add	r1, sp, #32
	bl	_FAT_cache_writePartialSector
	.loc 1 519 0
	ldr	r3, .L76+12
	ldr	r2, [sp, #24]
	add	r3, r2, r3
	b	.L75
.L63:
	.loc 1 525 0
	cmp	r7, r3
	bcc	.L56
	.loc 1 527 0
	mov	r0, r4
	mov	r1, r6
	bl	_FAT_fat_nextCluster
	.loc 1 528 0
	cmp	r0, #0
	beq	.L72
.LVL56:
	ldr	r1, .L76+16
	cmp	r0, r1
	bne	.L57
.L72:
	.loc 1 530 0
	mov	r0, r4
.LVL57:
	mov	r1, r6
	bl	_FAT_fat_linkFreeCluster
	.loc 1 532 0
	cmp	r0, #0
	beq	.L67
.LVL58:
.L57:
	.loc 1 535 0
	mov	r6, r0
	mov	r7, #0
.L56:
	.loc 1 541 0
	ldr	r3, [r4]
.LBB79:
.LBB80:
	.loc 2 61 0
	cmp	r6, #1
	bls	.L61
	ldr	r0, [r4, #36]
.LVL59:
	sub	r1, r6, #2
	mov	r2, r0
	mul	r2, r1
	ldr	r0, [r4, #28]
	add	r0, r2, r0
	b	.L62
.LVL60:
.L61:
	ldr	r0, [r4, #16]
.LVL61:
.L62:
.LBE80:
.LBE79:
.LBB81:
.LBB82:
	.file 3 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/disc.h"
	.loc 3 87 0
	ldr	r3, [r3, #20]
	mov	r1, #1
	add	r0, r0, r7
	add	r2, sp, #32
	blx	r3
.LBE82:
.LBE81:
	.loc 1 544 0
	ldr	r3, [sp, #12]
	ldr	r1, .L76+12
	add	r3, r3, r1
.L75:
	str	r3, [sp, #12]
	.loc 1 545 0
	add	r7, r7, #1
.L74:
	.loc 1 524 0
	ldr	r2, [sp, #12]
	ldr	r1, .L76+8
	ldr	r3, [r4, #36]
	cmp	r2, r1
	bhi	.L63
	.loc 1 548 0
	cmp	r7, r3
	bcc	.L64
	.loc 1 550 0
	mov	r0, r4
	mov	r1, r6
	bl	_FAT_fat_nextCluster
	.loc 1 551 0
	cmp	r0, #0
	beq	.L73
.LVL62:
	ldr	r3, .L76+16
	cmp	r0, r3
	bne	.L65
.L73:
	.loc 1 553 0
	mov	r0, r4
.LVL63:
	mov	r1, r6
	bl	_FAT_fat_linkFreeCluster
	.loc 1 555 0
	cmp	r0, #0
	bne	.L65
.LVL64:
.L67:
	.loc 1 557 0
	ldr	r2, [sp, #28]
	mov	r3, #28
	str	r3, [r2]
	mov	r0, #0
.LVL65:
	.loc 1 558 0
	b	.L60
.LVL66:
.L65:
	mov	r6, r0
	mov	r7, #0
.L64:
	.loc 1 564 0
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L52
.LBB83:
.LBB84:
	.loc 2 61 0
	cmp	r6, #1
	bls	.L69
	ldr	r1, [r4, #36]
	sub	r3, r6, #2
	mov	r2, r1
	mul	r2, r3
	ldr	r3, [r4, #28]
	add	r2, r2, r3
	b	.L70
.L69:
	ldr	r2, [r4, #16]
.L70:
.LBE84:
.LBE83:
	.loc 1 565 0
	ldr	r1, [sp, #12]
	mov	r3, #0
	str	r1, [sp]
	add	r2, r2, r7
	ldr	r0, [sp, #20]
.LVL67:
	add	r1, sp, #32
	bl	_FAT_cache_writePartialSector
	.loc 1 567 0
	ldr	r3, [sp, #12]
.LVL68:
.L52:
	.loc 1 571 0
	str	r3, [r5, #20]
	.loc 1 572 0
	ldr	r3, [r5, #8]
	.loc 1 571 0
	str	r6, [r5, #12]
	str	r7, [r5, #16]
	.loc 1 572 0
	str	r3, [r5]
	mov	r0, #1
.LVL69:
.L60:
	.loc 1 574 0
	mov	r3, #137
	lsl	r3, r3, #2
	add	sp, sp, r3
	@ sp needed for prologue
.LVL70:
.LVL71:
	pop	{r4, r5, r6, r7, pc}
.L77:
	.align	2
.L76:
	.word	1068
	.word	-548
	.word	511
	.word	-512
	.word	268435455
.LFE22:
	.size	file_extend_r, .-file_extend_r
	.align	2
	.global	_FAT_write_r
	.code	16
	.thumb_func
	.type	_FAT_write_r, %function
_FAT_write_r:
.LFB23:
	.loc 1 577 0
	push	{r4, r5, r6, r7, lr}
.LCFI8:
.LVL72:
	sub	sp, sp, #52
.LCFI9:
	.loc 1 577 0
	str	r0, [sp, #36]
	mov	r5, r1
	str	r2, [sp, #24]
	str	r3, [sp, #32]
	.loc 1 594 0
	cmp	r1, #0
	beq	.L79
	ldr	r3, .L130
.LVL73:
	ldrb	r3, [r1, r3]
	cmp	r3, #0
	beq	.L79
	ldr	r3, .L130+4
	ldrb	r3, [r1, r3]
	cmp	r3, #0
	bne	.L80
.LVL74:
.L79:
	.loc 1 595 0
	ldr	r0, [sp, #36]
.LVL75:
	mov	r3, #9
.LVL76:
	str	r3, [r0]
	mov	r0, #1
.LVL77:
	neg	r0, r0
	.loc 1 596 0
	b	.L81
.LVL78:
.L80:
	.loc 1 599 0
	ldr	r3, .L130+8
	ldr	r4, [r1, r3]
.LVL79:
	.loc 1 603 0
	sub	r3, r3, #2
	.loc 1 600 0
	ldr	r2, [r4, #4]
.LVL80:
	str	r2, [sp, #40]
	.loc 1 603 0
	ldrb	r3, [r1, r3]
	cmp	r3, #0
	beq	.L82
	.loc 1 604 0
	ldr	r3, [r1, #32]
	mov	r0, #1
.LVL81:
	str	r3, [sp, #28]
	ldr	r6, [r1, #24]
	ldr	r7, [r1, #28]
	str	r0, [sp, #44]
	b	.L83
.LVL82:
.L82:
	.loc 1 608 0
	ldr	r2, [r1, #8]
	ldr	r3, [r1]
	cmp	r2, r3
	bls	.L84
	.loc 1 609 0
	ldr	r0, [sp, #36]
.LVL83:
	bl	file_extend_r
.LVL84:
	cmp	r0, #0
	bne	.LCB768
	b	.L81	@long jump
.LCB768:
.LVL85:
.L84:
	.loc 1 615 0
	ldr	r2, [r5, #20]
	.loc 1 618 0
	ldr	r3, [r5, #8]
	ldr	r0, [sp, #32]
.LVL86:
	.loc 1 615 0
	str	r2, [sp, #28]
	.loc 1 618 0
	ldr	r2, [r5]
	add	r3, r0, r3
	cmp	r2, r3
	sbc	r3, r3, r3
	neg	r3, r3
	.loc 1 615 0
	ldr	r6, [r5, #12]
	ldr	r7, [r5, #16]
	.loc 1 618 0
	str	r3, [sp, #44]
.L83:
	.loc 1 624 0
	ldr	r3, [r4, #36]
	cmp	r7, r3
	bcs	.L86
	mov	r2, #1
	str	r2, [sp, #20]
	b	.L87
.L86:
	.loc 1 626 0
	mov	r0, r4
	mov	r1, r6
	bl	_FAT_fat_nextCluster
	.loc 1 627 0
	cmp	r0, #0
	beq	.L88
.LVL87:
	ldr	r3, .L130+12
	cmp	r0, r3
	beq	.L88
	mov	r3, #1
	mov	r6, r0
	mov	r7, #0
	str	r3, [sp, #20]
	b	.L87
.L88:
	.loc 1 629 0
	mov	r0, r4
.LVL88:
	mov	r1, r6
	bl	_FAT_fat_linkFreeCluster
	.loc 1 631 0
	cmp	r0, #0
	beq	.L89
.LVL89:
	mov	r6, r0
	mov	r0, #1
.LVL90:
	mov	r7, #0
	str	r0, [sp, #20]
	b	.L87
.LVL91:
.L89:
	.loc 1 633 0
	ldr	r2, [sp, #36]
	mov	r3, #28
	mov	r7, #0
	str	r3, [r2]
	str	r7, [sp, #20]
.LVL92:
.L87:
	.loc 1 641 0
	mov	r3, #128
	ldr	r0, [sp, #28]
.LVL93:
	lsl	r3, r3, #2
	.loc 1 642 0
	ldr	r2, [sp, #32]
	.loc 1 641 0
	sub	r3, r3, r0
	str	r3, [sp, #12]
	.loc 1 642 0
	cmp	r3, r2
	bls	.L90
	str	r2, [sp, #12]
.L90:
	.loc 1 646 0
	ldr	r3, .L130+16
	ldr	r0, [sp, #12]
	cmp	r0, r3
	bgt	.L125
	ldr	r2, [sp, #20]
	cmp	r2, #0
	bne	.L91
.L125:
	ldr	r3, [sp, #32]
	str	r3, [sp, #16]
	b	.L93
.L91:
.LBB85:
.LBB86:
	.loc 2 61 0
	cmp	r6, #1
	bls	.L94
	ldr	r2, [r4, #36]
	sub	r3, r6, #2
	mov	r1, r2
	mul	r1, r3
	ldr	r2, [r4, #28]
	add	r2, r1, r2
	b	.L95
.LVL94:
.L94:
	ldr	r2, [r4, #16]
.L95:
.LBE86:
.LBE85:
	.loc 1 648 0
	ldr	r0, [sp, #12]
	add	r2, r2, r7
	str	r0, [sp]
	ldr	r3, [sp, #28]
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #24]
	bl	_FAT_cache_writePartialSector
	.loc 1 651 0
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #32]
	.loc 1 652 0
	ldr	r0, [sp, #24]
	.loc 1 651 0
	sub	r2, r2, r3
	str	r2, [sp, #16]
	.loc 1 653 0
	ldr	r2, [sp, #28]
	.loc 1 652 0
	add	r0, r0, r3
	.loc 1 653 0
	add	r2, r2, r3
	.loc 1 657 0
	ldr	r3, .L130+16
	.loc 1 652 0
	str	r0, [sp, #24]
	.loc 1 653 0
	str	r2, [sp, #28]
	.loc 1 657 0
	cmp	r2, r3
	ble	.L93
	.loc 1 659 0
	mov	r3, #0
	add	r7, r7, #1
	str	r3, [sp, #28]
.LVL95:
.L93:
	.loc 1 665 0
	ldr	r1, [r4, #36]
	ldr	r0, [sp, #16]
	sub	r2, r1, r7
	lsl	r3, r2, #9
	cmp	r0, r3
	bhi	.L128
	.loc 1 668 0
	ldr	r2, [sp, #16]
	lsr	r2, r2, #9
.L128:
	str	r2, [sp, #12]
	.loc 1 671 0
	ldr	r3, [sp, #12]
	cmp	r3, #0
	ble	.L98
	ldr	r0, [sp, #20]
	cmp	r0, #0
	beq	.L98
	.loc 1 672 0
	ldr	r2, [r4]
.LBB87:
.LBB88:
	.loc 2 61 0
	cmp	r6, #1
	bls	.L99
	sub	r3, r6, #2
	mov	r0, r1
	mul	r0, r3
	ldr	r3, [r4, #28]
	add	r3, r0, r3
	b	.L100
.L99:
	ldr	r3, [r4, #16]
.L100:
.LBE88:
.LBE87:
.LBB89:
.LBB90:
	.loc 3 87 0
	add	r0, r3, r7
	ldr	r1, [sp, #12]
	ldr	r3, [r2, #20]
	ldr	r2, [sp, #24]
	blx	r3
.LBE90:
.LBE89:
	.loc 1 674 0
	ldr	r2, [sp, #12]
	ldr	r0, [sp, #24]
	lsl	r3, r2, #9
	.loc 1 675 0
	ldr	r2, [sp, #16]
	.loc 1 674 0
	add	r0, r0, r3
	.loc 1 675 0
	sub	r2, r2, r3
	.loc 1 676 0
	ldr	r3, [sp, #12]
	.loc 1 674 0
	str	r0, [sp, #24]
	.loc 1 675 0
	str	r2, [sp, #16]
	.loc 1 676 0
	add	r7, r7, r3
.L98:
	.loc 1 679 0
	ldr	r3, [r4, #36]
	cmp	r7, r3
	bcc	.L127
	ldr	r0, [sp, #20]
	cmp	r0, #0
	beq	.L127
	ldr	r2, [sp, #16]
	cmp	r2, #0
	bne	.L102
	mov	r3, #1
	str	r3, [sp, #20]
	b	.L127
.L102:
	.loc 1 681 0
	mov	r0, r4
	mov	r1, r6
	bl	_FAT_fat_nextCluster
	.loc 1 682 0
	cmp	r0, #0
	beq	.L103
.LVL96:
	ldr	r3, .L130+12
	cmp	r0, r3
	beq	.L103
	mov	r6, r0
	mov	r0, #1
.LVL97:
	mov	r7, #0
	str	r0, [sp, #20]
	b	.L127
.LVL98:
.L103:
	.loc 1 684 0
	mov	r0, r4
.LVL99:
	mov	r1, r6
	bl	_FAT_fat_linkFreeCluster
	.loc 1 686 0
	cmp	r0, #0
	beq	.L104
.LVL100:
	mov	r2, #1
	mov	r6, r0
	mov	r7, #0
	str	r2, [sp, #20]
	b	.L127
.L104:
	.loc 1 688 0
	ldr	r0, [sp, #36]
.LVL101:
	mov	r3, #28
	mov	r7, #0
	str	r3, [r0]
	str	r7, [sp, #20]
	b	.L127
.L111:
	.loc 1 697 0
	ldr	r3, [r4]
.LBB91:
.LBB92:
	.loc 2 61 0
	cmp	r6, #1
	bls	.L105
	ldr	r0, [r4, #36]
	sub	r1, r6, #2
	mov	r2, r0
	mul	r2, r1
	ldr	r0, [r4, #28]
	add	r0, r2, r0
	b	.L106
.L105:
	ldr	r0, [r4, #16]
.L106:
.LBE92:
.LBE91:
.LBB93:
.LBB94:
	.loc 3 87 0
	ldr	r3, [r3, #20]
	ldr	r2, [sp, #24]
	ldr	r1, [r4, #36]
	blx	r3
.LBE94:
.LBE93:
	.loc 1 699 0
	ldr	r2, [r4, #40]
	.loc 1 700 0
	ldr	r3, [sp, #16]
	.loc 1 699 0
	str	r2, [sp, #12]
	.loc 1 700 0
	sub	r3, r3, r2
	str	r3, [sp, #16]
	.loc 1 701 0
	cmp	r3, #0
	beq	.L107
	.loc 1 702 0
	mov	r0, r4
	mov	r1, r6
	bl	_FAT_fat_nextCluster
	.loc 1 703 0
	cmp	r0, #0
	beq	.L108
.LVL102:
	ldr	r2, .L130+12
	cmp	r0, r2
	bne	.L129
.L108:
	.loc 1 705 0
	mov	r0, r4
.LVL103:
	mov	r1, r6
	bl	_FAT_fat_linkFreeCluster
	.loc 1 707 0
	cmp	r0, #0
	beq	.L110
.LVL104:
.L129:
	mov	r6, r0
	b	.L109
.L110:
	.loc 1 709 0
	ldr	r0, [sp, #36]
.LVL105:
	mov	r3, #28
	mov	r2, #0
	str	r3, [r0]
	str	r2, [sp, #20]
	b	.L109
.L107:
	.loc 1 716 0
	ldr	r7, [r4, #36]
.LVL106:
.L109:
	.loc 1 699 0
	ldr	r3, [sp, #24]
	ldr	r0, [sp, #12]
.LVL107:
	add	r3, r3, r0
	str	r3, [sp, #24]
.LVL108:
.L127:
	.loc 1 696 0
	ldr	r2, [sp, #20]
	cmp	r2, #0
	str	r2, [sp, #12]
	beq	.L126
	ldr	r3, [r4, #40]
	ldr	r0, [sp, #16]
.LVL109:
	cmp	r0, r3
	bcs	.L111
.LVL110:
.L126:
	.loc 1 721 0
	ldr	r2, [sp, #16]
	lsr	r2, r2, #9
	str	r2, [sp, #20]
	.loc 1 722 0
	cmp	r2, #0
	ble	.L113
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L113
	.loc 1 723 0
	ldr	r3, [r4]
.LBB95:
.LBB96:
	.loc 2 61 0
	cmp	r6, #1
	bls	.L114
	ldr	r0, [r4, #36]
.LVL111:
	sub	r2, r6, #2
	mov	r1, r0
	mul	r1, r2
	ldr	r0, [r4, #28]
	add	r0, r1, r0
	b	.L115
.LVL112:
.L114:
	ldr	r0, [r4, #16]
.LVL113:
.L115:
.LBE96:
.LBE95:
.LBB97:
.LBB98:
	.loc 3 87 0
	ldr	r3, [r3, #20]
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #20]
	blx	r3
.LBE98:
.LBE97:
	.loc 1 725 0
	ldr	r0, [sp, #20]
	ldr	r2, [sp, #24]
	lsl	r3, r0, #9
	add	r2, r2, r3
	.loc 1 726 0
	ldr	r0, [sp, #16]
	.loc 1 725 0
	str	r2, [sp, #24]
	.loc 1 727 0
	ldr	r2, [sp, #20]
	.loc 1 726 0
	sub	r0, r0, r3
	str	r0, [sp, #16]
	.loc 1 727 0
	add	r7, r2, r7
.LVL114:
.L113:
	.loc 1 731 0
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L116
	ldr	r0, [sp, #12]
.LVL115:
	cmp	r0, #0
	beq	.L116
	.loc 1 732 0
	ldr	r2, [sp, #44]
	cmp	r2, #0
	beq	.L117
.LBB99:
.LBB100:
	.loc 2 61 0
	cmp	r6, #1
	bls	.L118
	ldr	r1, [r4, #36]
	sub	r2, r6, #2
	mov	r3, r1
	mul	r3, r2
	ldr	r2, [r4, #28]
	add	r2, r3, r2
	b	.L119
.L118:
	ldr	r2, [r4, #16]
.L119:
.LBE100:
.LBE99:
	.loc 1 733 0
	ldr	r3, [sp, #16]
	add	r2, r2, r7
	str	r3, [sp]
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #24]
	mov	r3, #0
	bl	_FAT_cache_eraseWritePartialSector
	b	.L120
.L117:
.LBB101:
.LBB102:
	.loc 2 61 0
	cmp	r6, #1
	bls	.L121
	ldr	r1, [r4, #36]
	sub	r2, r6, #2
	mov	r3, r1
	mul	r3, r2
	ldr	r2, [r4, #28]
	add	r2, r3, r2
	b	.L122
.L121:
	ldr	r2, [r4, #16]
.L122:
.LBE102:
.LBE101:
	.loc 1 736 0
	ldr	r0, [sp, #16]
	add	r2, r2, r7
	str	r0, [sp]
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #40]
	mov	r3, #0
	bl	_FAT_cache_writePartialSector
.L120:
	.loc 1 739 0
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #16]
	mov	r0, #0
	add	r3, r2, r3
	str	r3, [sp, #28]
	str	r0, [sp, #16]
.LVL116:
.L116:
	.loc 1 745 0
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #16]
	sub	r0, r2, r3
.LVL117:
	.loc 1 748 0
	ldr	r3, .L130+20
	ldr	r2, [r5]
	ldrb	r3, [r5, r3]
	cmp	r3, #0
	beq	.L123
	.loc 1 750 0
	ldr	r3, [sp, #28]
	.loc 1 751 0
	add	r2, r2, r0
	.loc 1 750 0
	str	r3, [r5, #32]
	str	r6, [r5, #24]
	str	r7, [r5, #28]
	.loc 1 751 0
	str	r2, [r5]
	b	.L81
.L131:
	.align	2
.L130:
	.word	1067
	.word	1065
	.word	1068
	.word	268435455
	.word	511
	.word	1066
.L123:
	.loc 1 754 0
	ldr	r3, [sp, #28]
	str	r6, [r5, #12]
	str	r3, [r5, #20]
	.loc 1 755 0
	ldr	r3, [r5, #8]
	.loc 1 754 0
	str	r7, [r5, #16]
	.loc 1 755 0
	add	r3, r0, r3
	str	r3, [r5, #8]
	.loc 1 756 0
	cmp	r2, r3
	bcs	.L81
	.loc 1 757 0
	str	r3, [r5]
.LVL118:
.L81:
	.loc 1 762 0
	add	sp, sp, #52
.LVL119:
	@ sp needed for prologue
.LVL120:
.LVL121:
	pop	{r4, r5, r6, r7, pc}
.LFE23:
	.size	_FAT_write_r, .-_FAT_write_r
	.align	2
	.global	_FAT_read_r
	.code	16
	.thumb_func
	.type	_FAT_read_r, %function
_FAT_read_r:
.LFB21:
	.loc 1 349 0
	push	{r4, r5, r6, r7, lr}
.LCFI10:
.LVL122:
	sub	sp, sp, #44
.LCFI11:
	.loc 1 349 0
	str	r0, [sp, #24]
	mov	r5, r1
	str	r2, [sp, #20]
	str	r3, [sp, #32]
	.loc 1 365 0
	cmp	r1, #0
	beq	.L133
	ldr	r3, .L171
.LVL123:
	ldrb	r3, [r1, r3]
	cmp	r3, #0
	beq	.L133
	mov	r3, #133
	lsl	r3, r3, #3
	ldrb	r3, [r1, r3]
	cmp	r3, #0
	bne	.L134
.LVL124:
.L133:
	.loc 1 366 0
	ldr	r0, [sp, #24]
.LVL125:
	mov	r3, #9
.LVL126:
	str	r3, [r0]
	b	.L170
.LVL127:
.L134:
	.loc 1 371 0
	ldr	r2, [r1, #8]
.LVL128:
	ldr	r3, [r1]
	cmp	r2, r3
	bcc	.L136
.LVL129:
.L170:
	mov	r0, #0
.LVL130:
	b	.L135
.LVL131:
.L136:
	.loc 1 376 0
	ldr	r1, [sp, #32]
.LVL132:
	add	r2, r1, r2
	cmp	r2, r3
	bls	.L137
	.loc 1 377 0
	ldr	r2, [sp, #24]
	mov	r3, #139
	str	r3, [r2]
	.loc 1 378 0
	ldr	r6, [r5]
	ldr	r3, [r5, #8]
	sub	r3, r6, r3
	str	r3, [sp, #32]
.L137:
	.loc 1 383 0
	ldr	r3, [r5, #12]
	ldr	r0, [r5, #20]
.LVL133:
	str	r3, [sp, #16]
	.loc 1 385 0
	ldr	r3, .L171+4
	.loc 1 390 0
	ldr	r2, [sp, #32]
	.loc 1 385 0
	ldr	r4, [r5, r3]
.LVL134:
	.loc 1 389 0
	mov	r3, #128
	.loc 1 386 0
	ldr	r1, [r4, #4]
	.loc 1 389 0
	lsl	r3, r3, #2
	sub	r3, r3, r0
	.loc 1 383 0
	ldr	r7, [r5, #16]
	str	r0, [sp, #28]
	.loc 1 386 0
	str	r1, [sp, #36]
	.loc 1 389 0
	str	r3, [sp, #12]
	.loc 1 390 0
	cmp	r3, r2
	bls	.L138
	str	r2, [sp, #12]
.L138:
	.loc 1 394 0
	ldr	r3, .L171+8
	ldr	r0, [sp, #12]
	cmp	r0, r3
	ble	.L139
	ldr	r6, [sp, #32]
.LVL135:
	b	.L140
.LVL136:
.L139:
.LBB103:
.LBB104:
	.loc 2 61 0
	ldr	r1, [sp, #16]
	cmp	r1, #1
	bls	.L141
	mov	r3, r1
	ldr	r2, [r4, #36]
	sub	r3, r3, #2
	mov	r1, r2
	mul	r1, r3
	ldr	r2, [r4, #28]
	add	r2, r1, r2
	b	.L142
.L141:
	ldr	r2, [r4, #16]
.L142:
.LBE104:
.LBE103:
	.loc 1 396 0
	ldr	r3, [sp, #12]
	add	r2, r2, r7
	str	r3, [sp]
	ldr	r1, [sp, #20]
	ldr	r3, [sp, #28]
	ldr	r0, [sp, #36]
	bl	_FAT_cache_readPartialSector
	.loc 1 399 0
	ldr	r1, [sp, #12]
	.loc 1 402 0
	ldr	r3, [sp, #28]
	.loc 1 399 0
	ldr	r0, [sp, #32]
	.loc 1 402 0
	add	r3, r3, r1
	.loc 1 400 0
	ldr	r2, [sp, #20]
	.loc 1 402 0
	str	r3, [sp, #28]
	.loc 1 399 0
	sub	r6, r0, r1
.LVL137:
	.loc 1 403 0
	ldr	r3, .L171+8
	ldr	r0, [sp, #28]
	.loc 1 400 0
	add	r2, r2, r1
	str	r2, [sp, #20]
	.loc 1 403 0
	cmp	r0, r3
	ble	.L140
	.loc 1 405 0
	mov	r1, #0
	add	r7, r7, #1
	str	r1, [sp, #28]
.L140:
	.loc 1 411 0
	ldr	r1, [r4, #36]
	sub	r3, r1, r7
	lsl	r2, r3, #9
	cmp	r6, r2
	bls	.L143
	.loc 1 412 0
	str	r3, [sp, #12]
	b	.L144
.L143:
	.loc 1 414 0
	lsr	r2, r6, #9
	str	r2, [sp, #12]
.L144:
	.loc 1 417 0
	ldr	r3, [sp, #12]
	cmp	r3, #0
	ble	.L145
.LBB105:
.LBB106:
	.loc 2 61 0
	ldr	r0, [sp, #16]
.LBE106:
.LBE105:
	.loc 1 418 0
	ldr	r3, [r4]
.LBB108:
.LBB107:
	.loc 2 61 0
	cmp	r0, #1
	bls	.L146
	mov	r2, r0
	sub	r2, r2, #2
	mov	r0, r1
	mul	r0, r2
	mov	ip, r0
	ldr	r0, [r4, #28]
	add	r0, r0, ip
	b	.L147
.L146:
	ldr	r0, [r4, #16]
.L147:
.LBE107:
.LBE108:
.LBB109:
.LBB110:
	.loc 3 77 0
	add	r0, r0, r7
	ldr	r3, [r3, #16]
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #20]
	blx	r3
.LBE110:
.LBE109:
	.loc 1 420 0
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #20]
	lsl	r3, r1, #9
	add	r2, r2, r3
	str	r2, [sp, #20]
	.loc 1 421 0
	sub	r6, r6, r3
	.loc 1 422 0
	add	r7, r7, r1
.L145:
	.loc 1 427 0
	ldr	r3, [r4, #36]
	cmp	r7, r3
	bcs	.L148
	mov	r3, #1
	b	.L169
.L148:
	.loc 1 428 0
	mov	r0, r4
	ldr	r1, [sp, #16]
	bl	_FAT_fat_nextCluster
	.loc 1 429 0
	ldr	r3, .L171+12
	cmp	r0, r3
	bne	.L150
.LVL138:
	cmp	r6, #0
	bne	.L150
	.loc 1 430 0
	mov	r0, #1
.LVL139:
	ldr	r7, [r4, #36]
	str	r0, [sp, #12]
	b	.L149
.LVL140:
.L150:
	.loc 1 431 0
	cmp	r0, #0
	beq	.L151
	mov	r1, #1
	str	r0, [sp, #16]
	mov	r7, #0
	str	r1, [sp, #12]
	b	.L149
.L151:
	.loc 1 432 0
	ldr	r2, [sp, #24]
	mov	r3, #5
	str	r3, [r2]
	mov	r3, #0
.L169:
	str	r3, [sp, #12]
	b	.L149
.LVL141:
.L157:
.LBB111:
.LBB112:
	.loc 2 61 0
	ldr	r0, [sp, #16]
.LVL142:
.LBE112:
.LBE111:
	.loc 1 442 0
	ldr	r3, [r4]
.LBB114:
.LBB113:
	.loc 2 61 0
	cmp	r0, #1
	bls	.L152
	mov	r1, r0
	ldr	r0, [r4, #36]
	sub	r1, r1, #2
	mov	r2, r0
	mul	r2, r1
.LVL143:
	ldr	r0, [r4, #28]
	add	r0, r2, r0
	b	.L153
.LVL144:
.L152:
	ldr	r0, [r4, #16]
.L153:
.LBE113:
.LBE114:
.LBB115:
.LBB116:
	.loc 3 77 0
	ldr	r2, [sp, #20]
.LVL145:
	ldr	r1, [r4, #36]
	ldr	r3, [r3, #16]
	blx	r3
.LBE116:
.LBE115:
	.loc 1 443 0
	ldr	r1, [r4, #40]
	.loc 1 447 0
	mov	r0, r4
	.loc 1 443 0
	str	r1, [sp, #12]
	.loc 1 444 0
	sub	r6, r6, r1
.LVL146:
	.loc 1 447 0
	ldr	r1, [sp, #16]
	bl	_FAT_fat_nextCluster
	.loc 1 448 0
	ldr	r2, .L171+12
	cmp	r0, r2
	bne	.L154
.LVL147:
	cmp	r6, #0
	bne	.L154
	.loc 1 449 0
	ldr	r7, [r4, #36]
	b	.L168
.L154:
	.loc 1 450 0
	cmp	r0, #0
	beq	.L156
	str	r0, [sp, #16]
	mov	r7, #0
.L168:
	mov	r2, #1
.LVL148:
	b	.L155
.LVL149:
.L156:
	.loc 1 451 0
	ldr	r0, [sp, #24]
.LVL150:
	mov	r3, #5
	str	r3, [r0]
	mov	r2, #0
.LVL151:
.L155:
	.loc 1 443 0
	ldr	r1, [sp, #20]
	ldr	r3, [sp, #12]
	add	r1, r1, r3
	str	r1, [sp, #20]
	b	.L167
.LVL152:
.L149:
	.loc 1 451 0
	ldr	r2, [sp, #12]
.LVL153:
.L167:
	.loc 1 441 0
	cmp	r2, #0
	beq	.L166
	ldr	r3, [r4, #40]
	cmp	r6, r3
	bcs	.L157
.L166:
	.loc 1 460 0
	lsr	r0, r6, #9
.LVL154:
	str	r2, [sp, #12]
	str	r0, [sp, #24]
	.loc 1 461 0
	cmp	r0, #0
	ble	.L159
	cmp	r2, #0
	beq	.L159
.LBB117:
.LBB118:
	.loc 2 61 0
	ldr	r1, [sp, #16]
.LBE118:
.LBE117:
	.loc 1 462 0
	ldr	r3, [r4]
.LBB120:
.LBB119:
	.loc 2 61 0
	cmp	r1, #1
	bls	.L160
	mov	r2, r1
.LVL155:
	ldr	r0, [r4, #36]
	sub	r2, r2, #2
	mov	r1, r0
	mul	r1, r2
	ldr	r0, [r4, #28]
	add	r0, r1, r0
	b	.L161
.LVL156:
.L160:
	ldr	r0, [r4, #16]
.L161:
.LBE119:
.LBE120:
.LBB121:
.LBB122:
	.loc 3 77 0
	ldr	r3, [r3, #16]
	ldr	r2, [sp, #20]
.LVL157:
	ldr	r1, [sp, #24]
	blx	r3
.LBE122:
.LBE121:
	.loc 1 464 0
	ldr	r2, [sp, #24]
	ldr	r0, [sp, #20]
	lsl	r3, r2, #9
	add	r0, r0, r3
	str	r0, [sp, #20]
	.loc 1 465 0
	sub	r6, r6, r3
	.loc 1 466 0
	add	r7, r2, r7
.LVL158:
.L159:
	.loc 1 471 0
	cmp	r6, #0
	beq	.L162
	ldr	r1, [sp, #12]
	cmp	r1, #0
	beq	.L162
.LBB123:
.LBB124:
	.loc 2 61 0
	ldr	r2, [sp, #16]
.LVL159:
	cmp	r2, #1
	bls	.L163
	ldr	r1, [r4, #36]
	sub	r2, r2, #2
	mov	r3, r1
	mul	r3, r2
	ldr	r2, [r4, #28]
	add	r2, r3, r2
	b	.L164
.L163:
	ldr	r2, [r4, #16]
.L164:
.LBE124:
.LBE123:
	.loc 1 472 0
	mov	r3, #0
	add	r2, r2, r7
	ldr	r0, [sp, #36]
	ldr	r1, [sp, #20]
	str	r6, [sp]
	bl	_FAT_cache_readPartialSector
	.loc 1 474 0
	ldr	r3, [sp, #28]
	add	r3, r6, r3
	str	r3, [sp, #28]
	mov	r6, #0
.LVL160:
.L162:
	.loc 1 482 0
	ldr	r3, [sp, #28]
	.loc 1 479 0
	ldr	r1, [sp, #32]
	.loc 1 482 0
	str	r3, [r5, #20]
	.loc 1 483 0
	ldr	r3, [r5, #8]
	.loc 1 479 0
	sub	r0, r1, r6
.LVL161:
	.loc 1 482 0
	ldr	r2, [sp, #16]
.LVL162:
	.loc 1 483 0
	add	r3, r3, r0
	.loc 1 482 0
	str	r7, [r5, #16]
	str	r2, [r5, #12]
	.loc 1 483 0
	str	r3, [r5, #8]
.LVL163:
.L135:
	.loc 1 485 0
	add	sp, sp, #44
.LVL164:
	@ sp needed for prologue
.LVL165:
.LVL166:
.LVL167:
	pop	{r4, r5, r6, r7, pc}
.L172:
	.align	2
.L171:
	.word	1067
	.word	1068
	.word	511
	.word	268435455
.LFE21:
	.size	_FAT_read_r, .-_FAT_read_r
	.align	2
	.global	_FAT_close_r
	.code	16
	.thumb_func
	.type	_FAT_close_r, %function
_FAT_close_r:
.LFB20:
	.loc 1 302 0
	push	{r4, r5, r6, lr}
.LCFI12:
.LVL168:
	.loc 1 306 0
	ldr	r3, .L183
	.loc 1 302 0
	sub	sp, sp, #40
.LCFI13:
	.loc 1 306 0
	ldrb	r3, [r1, r3]
.LVL169:
	.loc 1 302 0
	mov	r6, r0
	mov	r4, r1
.LVL170:
	.loc 1 306 0
	cmp	r3, #0
	bne	.L174
.LVL171:
	.loc 1 307 0
	mov	r3, #9
	b	.L182
.L174:
	.loc 1 310 0
	ldr	r3, .L183+4
	ldrb	r3, [r1, r3]
	cmp	r3, #0
	beq	.L176
.LVL172:
	.loc 1 312 0
	ldr	r3, .L183+8
	ldr	r2, .L183+12
	ldr	r3, [r1, r3]
	ldr	r2, [r1, r2]
	ldr	r0, [r3, #4]
.LBB125:
.LBB126:
	.loc 2 61 0
	cmp	r2, #1
	bls	.L177
	ldr	r5, [r3, #36]
	sub	r1, r2, #2
.LVL173:
	mov	r2, r5
	mul	r2, r1
	ldr	r3, [r3, #28]
	add	r2, r2, r3
	b	.L178
.LVL174:
.L177:
	ldr	r2, [r3, #16]
.LVL175:
.L178:
.LBE126:
.LBE125:
	.loc 1 312 0
	mov	r3, #136
	lsl	r3, r3, #3
	ldr	r3, [r4, r3]
	add	r5, sp, #8
	add	r2, r2, r3
	ldr	r3, .L183+16
	mov	r1, #32
.LVL176:
	ldr	r3, [r4, r3]
	str	r1, [sp]
	lsl	r3, r3, #5
	mov	r1, r5
	bl	_FAT_cache_readPartialSector
	.loc 1 318 0
	ldr	r3, [r4]
.LBB127:
.LBB128:
	.file 4 "C:/Users/GRX/NeoDS/arm9/source/libfat/bit_ops.h"
	.loc 4 53 0
	lsr	r2, r3, #8
	.loc 4 52 0
	strb	r3, [r5, #28]
	.loc 4 53 0
	strb	r2, [r5, #29]
	.loc 4 54 0
	lsr	r2, r3, #16
	.loc 4 55 0
	lsr	r3, r3, #24
	.loc 4 54 0
	strb	r2, [r5, #30]
	.loc 4 55 0
	strb	r3, [r5, #31]
.LBE128:
.LBE127:
	.loc 1 321 0
	ldr	r3, [r4, #4]
.LBB129:
.LBB130:
	.loc 4 48 0
	lsr	r2, r3, #8
	.loc 4 47 0
	strb	r3, [r5, #26]
.LBE130:
.LBE129:
	.loc 1 322 0
	lsr	r3, r3, #16
.LBB132:
.LBB133:
	.loc 4 47 0
	strb	r3, [r5, #20]
	.loc 4 48 0
	lsr	r3, r3, #8
.LBE133:
.LBE132:
.LBB135:
.LBB131:
	strb	r2, [r5, #27]
.LBE131:
.LBE135:
.LBB136:
.LBB134:
	strb	r3, [r5, #21]
.LBE134:
.LBE136:
	.loc 1 325 0
	bl	_FAT_filetime_getTimeFromRTC
.LBB137:
.LBB138:
	.loc 4 47 0
	strb	r0, [r5, #22]
	.loc 4 48 0
	lsr	r0, r0, #8
	strb	r0, [r5, #23]
.LBE138:
.LBE137:
	.loc 1 326 0
	bl	_FAT_filetime_getDateFromRTC
.LBB139:
.LBB140:
	.loc 4 47 0
	strb	r0, [r5, #24]
	.loc 4 48 0
	lsr	r0, r0, #8
	strb	r0, [r5, #25]
.LBE140:
.LBE139:
	.loc 1 329 0
	bl	_FAT_filetime_getDateFromRTC
	.loc 1 332 0
	ldr	r3, .L183+8
.LBB141:
.LBB142:
	.loc 4 47 0
	strb	r0, [r5, #18]
.LBE142:
.LBE141:
	.loc 1 332 0
	ldr	r2, .L183+12
.LBB144:
.LBB143:
	.loc 4 48 0
	lsr	r0, r0, #8
	strb	r0, [r5, #19]
.LBE143:
.LBE144:
	.loc 1 332 0
	ldr	r3, [r4, r3]
	ldr	r2, [r4, r2]
	ldr	r0, [r3, #4]
.LBB145:
.LBB146:
	.loc 2 61 0
	cmp	r2, #1
	bls	.L179
	ldr	r5, [r3, #36]
	sub	r1, r2, #2
	mov	r2, r5
	mul	r2, r1
	ldr	r3, [r3, #28]
	add	r2, r2, r3
	b	.L180
.L179:
	ldr	r2, [r3, #16]
.L180:
.LBE146:
.LBE145:
	.loc 1 332 0
	mov	r3, #136
	lsl	r3, r3, #3
	ldr	r3, [r4, r3]
	mov	r1, #32
	add	r2, r2, r3
	ldr	r3, .L183+16
	str	r1, [sp]
	ldr	r3, [r4, r3]
	add	r1, sp, #8
	lsl	r3, r3, #5
	bl	_FAT_cache_writePartialSector
	.loc 1 337 0
	ldr	r3, .L183+8
	ldr	r3, [r4, r3]
	ldr	r0, [r3, #4]
	bl	_FAT_cache_flush
	cmp	r0, #0
	bne	.L176
	.loc 1 338 0
	mov	r3, #5
.LVL177:
.L182:
	mov	r0, #1
	str	r3, [r6]
	neg	r0, r0
	.loc 1 339 0
	b	.L175
.LVL178:
.L176:
	.loc 1 343 0
	ldr	r3, .L183
	mov	r2, #0
	strb	r2, [r4, r3]
	.loc 1 344 0
	add	r3, r3, #1
	ldr	r3, [r4, r3]
	mov	r0, #0
	ldr	r2, [r3, #64]
	sub	r2, r2, #1
	str	r2, [r3, #64]
.L175:
	.loc 1 347 0
	add	sp, sp, #40
	@ sp needed for prologue
.LVL179:
.LVL180:
	pop	{r4, r5, r6, pc}
.L184:
	.align	2
.L183:
	.word	1067
	.word	1065
	.word	1068
	.word	1084
	.word	1092
.LFE20:
	.size	_FAT_close_r, .-_FAT_close_r
	.align	2
	.global	_FAT_open_r
	.code	16
	.thumb_func
	.type	_FAT_open_r, %function
_FAT_open_r:
.LFB19:
	.loc 1 86 0
	push	{r4, r5, r6, r7, lr}
.LCFI14:
.LVL181:
	sub	sp, sp, #332
.LCFI15:
	.loc 1 86 0
	mov	r6, r0
	.loc 1 93 0
	mov	r0, r2
.LVL182:
	.loc 1 86 0
	mov	r4, r1
	mov	r7, r2
	str	r3, [sp, #4]
	.loc 1 93 0
	bl	_FAT_partition_getPartitionFromPath
.LVL183:
	mov	r5, r0
.LVL184:
	.loc 1 99 0
	cmp	r0, #0
	bne	.L186
.LVL185:
	.loc 1 100 0
	mov	r3, #19
	b	.L214
.L186:
	.loc 1 105 0
	mov	r0, r7
.LVL186:
	mov	r1, #58
	bl	strchr
	cmp	r0, #0
	beq	.L188
	.loc 1 106 0
	add	r7, r0, #1
.L188:
	.loc 1 108 0
	mov	r0, r7
	mov	r1, #58
	bl	strchr
	cmp	r0, #0
	beq	.L189
	.loc 1 109 0
	mov	r3, #22
.LVL187:
.L214:
	mov	r0, #1
	str	r3, [r6]
	neg	r0, r0
	.loc 1 110 0
	b	.L187
.L189:
	.loc 1 114 0
	ldr	r1, [sp, #4]
	mov	r3, #3
	and	r3, r1
	bne	.L190
	.loc 1 116 0
	mov	r2, #133
	lsl	r2, r2, #3
	mov	r1, #1
	strb	r1, [r4, r2]
	.loc 1 117 0
	ldr	r2, .L216
	strb	r3, [r4, r2]
	.loc 1 118 0
	add	r2, r2, #1
	strb	r3, [r4, r2]
	b	.L191
.L190:
	.loc 1 119 0
	cmp	r3, #1
	bne	.L192
	.loc 1 121 0
	mov	r2, #133
	lsl	r2, r2, #3
	strb	r0, [r4, r2]
	.loc 1 122 0
	ldr	r2, .L216
	strb	r3, [r4, r2]
	.loc 1 123 0
	ldr	r3, .L216+4
	b	.L213
.L192:
	.loc 1 124 0
	cmp	r3, #2
	bne	.L193
	.loc 1 126 0
	mov	r3, #133
	lsl	r3, r3, #3
	mov	r2, #1
	strb	r2, [r4, r3]
	.loc 1 127 0
	ldr	r3, .L216
	strb	r2, [r4, r3]
	.loc 1 128 0
	add	r3, r3, #1
.L213:
	strb	r0, [r4, r3]
	b	.L191
.L193:
	.loc 1 130 0
	mov	r3, #13
	b	.L214
.L191:
	.loc 1 135 0
	ldr	r3, .L216
	ldrb	r3, [r4, r3]
	cmp	r3, #0
	beq	.L194
	ldrb	r3, [r5, #8]
	cmp	r3, #0
	bne	.L215
.L194:
	.loc 1 143 0
	mov	r0, r5
	add	r1, sp, #16
	mov	r2, r7
	mov	r3, #0
	bl	_FAT_directory_entryFromPath
	.loc 1 146 0
	cmp	r0, #0
	beq	.L196
	mov	r3, #160
	ldr	r2, [sp, #4]
	lsl	r3, r3, #4
	and	r2, r2, r3
	cmp	r2, r3
	bne	.L211
	.loc 1 147 0
	mov	r3, #17
	b	.L214
.L211:
	.file 5 "C:/Users/GRX/NeoDS/arm9/source/libfat/directory.h"
	.loc 5 94 0
	mov	r2, sp
	ldrb	r3, [r2, #27]
	lsl	r0, r3, #27
	bpl	.L197
	.loc 1 155 0
	mov	r3, #21
	b	.L214
.L196:
	.loc 1 163 0
	ldr	r1, [sp, #4]
	lsl	r1, r1, #22
	bpl	.L198
	.loc 1 164 0
	ldrb	r3, [r5, #8]
	cmp	r3, #0
	bne	.L215
	.loc 1 171 0
	mov	r0, r7
	mov	r1, #47
	bl	strrchr
	str	r0, [sp, #8]
	.loc 1 172 0
	cmp	r0, #0
	bne	.L200
	.loc 1 174 0
	ldr	r2, [r5, #60]
	mov	r1, r7
.LVL188:
	str	r2, [sp, #12]
	b	.L201
.LVL189:
.L200:
	.loc 1 179 0
	mov	r0, r5
	add	r1, sp, #16
	mov	r2, r7
	ldr	r3, [sp, #8]
	bl	_FAT_directory_entryFromPath
	cmp	r0, #0
	beq	.L202
	.loc 5 94 0
	mov	r0, sp
	ldrb	r3, [r0, #27]
	lsl	r1, r3, #27
	bmi	.L203
.L202:
	.loc 1 181 0
	mov	r3, #20
	b	.L214
.L203:
	.loc 1 184 0
	add	r0, sp, #16
	bl	_FAT_directory_entryGetCluster
	.loc 1 186 0
	ldr	r1, [sp, #8]
.LVL190:
	.loc 1 184 0
	str	r0, [sp, #12]
	.loc 1 186 0
	add	r1, r1, #1
.L201:
	.loc 1 189 0
	add	r7, sp, #16
.LVL191:
	mov	r2, #255
	add	r0, sp, #72
	bl	strncpy
.LVL192:
	.loc 1 190 0
	mov	r1, #0
	mov	r2, #32
	mov	r0, r7
	bl	memset
	.loc 1 194 0
	bl	_FAT_filetime_getTimeFromRTC
.LBB147:
.LBB148:
	.loc 4 47 0
	strb	r0, [r7, #14]
	.loc 4 48 0
	lsr	r0, r0, #8
	strb	r0, [r7, #15]
.LBE148:
.LBE147:
	.loc 1 195 0
	bl	_FAT_filetime_getDateFromRTC
.LBB149:
.LBB150:
	.loc 4 47 0
	strb	r0, [r7, #16]
	.loc 4 48 0
	lsr	r0, r0, #8
	strb	r0, [r7, #17]
.LBE150:
.LBE149:
	.loc 1 197 0
	mov	r1, r7
	mov	r0, r5
	ldr	r2, [sp, #12]
	bl	_FAT_directory_addEntry
	cmp	r0, #0
	bne	.L197
	.loc 1 198 0
	mov	r3, #28
	b	.L214
.LVL193:
.L198:
	.loc 1 203 0
	mov	r3, #2
	b	.L214
.L197:
	.loc 1 210 0
	add	r3, sp, #16
	ldrb	r1, [r3, #29]
	ldrb	r2, [r3, #30]
	lsl	r1, r1, #8
	lsl	r2, r2, #16
	orr	r2, r2, r1
	ldrb	r1, [r3, #28]
	orr	r2, r2, r1
	ldrb	r1, [r3, #31]
	lsl	r1, r1, #24
	orr	r2, r2, r1
	str	r2, [r4]
	.loc 1 223 0
	ldr	r2, .L216
	ldrb	r2, [r4, r2]
	cmp	r2, #0
	beq	.L204
	.loc 5 98 0
	ldrb	r3, [r3, #11]
	lsl	r2, r3, #31
	bpl	.L204
.L215:
	.loc 1 224 0
	mov	r3, #30
	b	.L214
.L204:
	.loc 1 229 0
	ldr	r3, .L216+8
	.loc 1 233 0
	add	r0, sp, #16
	.loc 1 229 0
	str	r5, [r4, r3]
	.loc 1 233 0
	bl	_FAT_directory_entryGetCluster
	.loc 1 238 0
	ldr	r3, [sp, #4]
	.loc 1 233 0
	mov	r1, r0
	str	r0, [r4, #4]
	.loc 1 238 0
	lsl	r3, r3, #21
	bpl	.L205
	ldr	r3, .L216
	ldrb	r3, [r4, r3]
	cmp	r3, #0
	beq	.L205
	cmp	r0, #0
	beq	.L205
	.loc 1 239 0
	mov	r0, r5
	bl	_FAT_fat_clearLinks
	.loc 1 240 0
	mov	r3, #0
	str	r3, [r4, #4]
	.loc 1 241 0
	str	r3, [r4]
.L205:
	.loc 1 247 0
	ldr	r3, [r4, #4]
	cmp	r3, #0
	bne	.L206
	.loc 1 248 0
	mov	r0, r5
	mov	r1, #0
	bl	_FAT_fat_linkFreeCluster
	str	r0, [r4, #4]
.L206:
	.loc 1 254 0
	mov	r6, #134
.LVL194:
	lsl	r6, r6, #3
	add	r3, r4, r6
	add	r2, sp, #48
	ldmia	r2!, {r0, r1, r6}
	stmia	r3!, {r0, r1, r6}
	.loc 1 255 0
	ldr	r0, .L216+12
	add	r2, sp, #60
	add	r3, r4, r0
	ldmia	r2!, {r0, r1, r6}
	stmia	r3!, {r0, r1, r6}
	.loc 1 259 0
	ldr	r1, [r4, #4]
	.loc 1 257 0
	mov	r3, #0
	str	r3, [r4, #8]
	.loc 1 260 0
	str	r3, [r4, #16]
	.loc 1 261 0
	str	r3, [r4, #20]
	.loc 1 259 0
	str	r1, [r4, #12]
	.loc 1 265 0
	mov	r0, r5
	bl	_FAT_fat_lastCluster
	.loc 1 266 0
	ldr	r6, [r4]
	.loc 1 265 0
	str	r0, [r4, #24]
	.loc 1 266 0
	ldr	r1, [r5, #40]
	mov	r0, r6
	bl	__aeabi_uidivmod
	.loc 1 267 0
	ldr	r3, .L216+16
	.loc 1 266 0
	lsr	r1, r1, #9
	.loc 1 267 0
	and	r3, r3, r6
	.loc 1 266 0
	str	r1, [r4, #28]
	.loc 1 267 0
	str	r3, [r4, #32]
	.loc 1 272 0
	cmp	r6, #0
	beq	.L207
	mov	r0, r6
	ldr	r1, [r5, #40]
	bl	__aeabi_uidivmod
	cmp	r1, #0
	bne	.L207
	.loc 1 274 0
	ldr	r3, [r5, #36]
	.loc 1 275 0
	str	r1, [r4, #32]
	.loc 1 274 0
	str	r3, [r4, #28]
.L207:
	.loc 1 278 0
	ldr	r1, [sp, #4]
	lsl	r1, r1, #28
	bpl	.L208
	.loc 1 279 0
	ldr	r3, .L216+4
	mov	r2, #1
	strb	r2, [r4, r3]
.L208:
	.loc 1 282 0
	ldr	r3, .L216+20
	mov	r2, #1
	strb	r2, [r4, r3]
	.loc 1 286 0
	ldr	r3, [r5, #64]
	.loc 1 289 0
	ldr	r1, [r5, #40]
	.loc 1 286 0
	add	r3, r3, #1
	str	r3, [r5, #64]
	.loc 1 291 0
	ldr	r0, [r4]
	add	r0, r1, r0
	sub	r0, r0, #1
	bl	__aeabi_uidiv
	ldr	r3, .L216+24
	add	r0, r0, #255
	lsr	r0, r0, #8
	.loc 1 292 0
	mov	r2, #128
	.loc 1 291 0
	str	r0, [r4, r3]
	.loc 1 293 0
	mov	r1, #0
	.loc 1 291 0
	mov	r3, #0
	.loc 1 292 0
	lsl	r2, r2, #3
.L209:
	.loc 1 293 0
	add	r0, r4, r3
	add	r3, r3, #4
	str	r1, [r0, #36]
	.loc 1 292 0
	cmp	r3, r2
	bne	.L209
	.loc 1 295 0
	ldr	r3, [r4, #4]
	.loc 1 299 0
	mov	r0, r4
	.loc 1 295 0
	str	r3, [r4, #36]
.LVL195:
.L187:
	.loc 1 300 0
	add	sp, sp, #332
	@ sp needed for prologue
.LVL196:
.LVL197:
.LVL198:
.LVL199:
	pop	{r4, r5, r6, r7, pc}
.L217:
	.align	2
.L216:
	.word	1065
	.word	1066
	.word	1068
	.word	1084
	.word	511
	.word	1067
	.word	1060
.LFE19:
	.size	_FAT_open_r, .-_FAT_open_r
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI0-.LFB25
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
	.uleb128 0x160
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
	.uleb128 0x20
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
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
	.uleb128 0x20
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI6-.LFB22
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
	.uleb128 0x238
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
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
	.uleb128 0x48
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI10-.LFB21
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
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x40
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI12-.LFB20
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
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x38
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI14-.LFB19
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
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x160
	.align	2
.LEFDE14:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB25-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 352
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL8-.Ltext0
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
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST4:
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
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST9:
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
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB22-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 568
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x50
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
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST22:
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
	.sleb128 72
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL121-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
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
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LFB21-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 64
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL166-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LFB20-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL177-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LFB19-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 352
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
	.file 6 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/lock.h"
	.file 7 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/_types.h"
	.file 8 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h"
	.file 9 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/reent.h"
	.file 10 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/types.h"
	.file 11 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/sys/stat.h"
	.file 12 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 13 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 14 "C:/Users/GRX/NeoDS/arm9/source/libfat/disc_io/disc_io.h"
	.file 15 "C:/Users/GRX/NeoDS/arm9/source/libfat/cache.h"
	.file 16 "C:/Users/GRX/NeoDS/arm9/source/libfat/partition.h"
	.file 17 "C:/Users/GRX/NeoDS/arm9/source/libfat/fatfile.h"
	.section	.debug_info
	.4byte	0x1b8b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF281
	.byte	0x1
	.4byte	.LASF282
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
	.byte	0x6
	.byte	0x7
	.4byte	0x3d
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x7
	.byte	0x10
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x7
	.byte	0x18
	.4byte	0x3d
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x7
	.byte	0x1d
	.4byte	0x36
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x7
	.byte	0x20
	.4byte	0x36
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x7
	.byte	0x2c
	.4byte	0x6f
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x8
	.2byte	0x160
	.4byte	0x44
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.byte	0x47
	.4byte	0xcd
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x7
	.byte	0x48
	.4byte	0xa2
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x7
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
	.byte	0x7
	.byte	0x44
	.4byte	0x105
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x7
	.byte	0x45
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x7
	.byte	0x4a
	.4byte	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x7
	.byte	0x4b
	.4byte	0xe0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x7
	.byte	0x4f
	.4byte	0x59
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x9
	.byte	0x15
	.4byte	0x128
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x18
	.byte	0x9
	.byte	0x2d
	.4byte	0x18e
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x9
	.byte	0x2e
	.4byte	0x18e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.ascii	"_k\000"
	.byte	0x9
	.byte	0x2f
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x9
	.byte	0x2f
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x9
	.byte	0x2f
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x9
	.byte	0x2f
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.ascii	"_x\000"
	.byte	0x9
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
	.byte	0x9
	.byte	0x35
	.4byte	0x22f
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x9
	.byte	0x36
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x9
	.byte	0x37
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x9
	.byte	0x38
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x9
	.byte	0x39
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x9
	.byte	0x3a
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x9
	.byte	0x3b
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x9
	.byte	0x3c
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x9
	.byte	0x3d
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x9
	.byte	0x3e
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF38
	.2byte	0x108
	.byte	0x9
	.byte	0x47
	.4byte	0x278
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x9
	.byte	0x48
	.4byte	0x278
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x9
	.byte	0x49
	.4byte	0x278
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x9
	.byte	0x4b
	.4byte	0x11d
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x9
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
	.byte	0x9
	.byte	0x59
	.4byte	0x2cf
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x9
	.byte	0x5a
	.4byte	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x9
	.byte	0x5b
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x9
	.byte	0x5d
	.4byte	0x2d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x9
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
	.byte	0x9
	.byte	0x69
	.4byte	0x316
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x9
	.byte	0x6a
	.4byte	0x316
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x9
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
	.byte	0x9
	.byte	0xa9
	.4byte	0x476
	.uleb128 0xf
	.ascii	"_p\000"
	.byte	0x9
	.byte	0xaa
	.4byte	0x316
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.ascii	"_r\000"
	.byte	0x9
	.byte	0xab
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.ascii	"_w\000"
	.byte	0x9
	.byte	0xac
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x9
	.byte	0xad
	.4byte	0x2f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x9
	.byte	0xae
	.4byte	0x2f
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.ascii	"_bf\000"
	.byte	0x9
	.byte	0xaf
	.4byte	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x9
	.byte	0xb0
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x9
	.byte	0xb7
	.4byte	0x11b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x9
	.byte	0xb9
	.4byte	0x605
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x9
	.byte	0xbb
	.4byte	0x635
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x9
	.byte	0xbd
	.4byte	0x65a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x9
	.byte	0xbe
	.4byte	0x675
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.ascii	"_ub\000"
	.byte	0x9
	.byte	0xc1
	.4byte	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.ascii	"_up\000"
	.byte	0x9
	.byte	0xc2
	.4byte	0x316
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.ascii	"_ur\000"
	.byte	0x9
	.byte	0xc3
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x9
	.byte	0xc6
	.4byte	0x67b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x9
	.byte	0xc7
	.4byte	0x68b
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0xf
	.ascii	"_lb\000"
	.byte	0x9
	.byte	0xca
	.4byte	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x9
	.byte	0xcd
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x9
	.byte	0xce
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x9
	.byte	0xd1
	.4byte	0x495
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x9
	.byte	0xd5
	.4byte	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x9
	.byte	0xd7
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x9
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
	.byte	0x9
	.byte	0x25
	.4byte	0x5f8
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x9
	.2byte	0x245
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x9
	.2byte	0x24a
	.4byte	0x6e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x9
	.2byte	0x24a
	.4byte	0x6e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x9
	.2byte	0x24a
	.4byte	0x6e8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x9
	.2byte	0x24c
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x9
	.2byte	0x24d
	.4byte	0x903
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x9
	.2byte	0x24f
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x9
	.2byte	0x250
	.4byte	0x62a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x9
	.2byte	0x252
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x9
	.2byte	0x254
	.4byte	0x91f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x9
	.2byte	0x257
	.4byte	0x18e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x9
	.2byte	0x258
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x9
	.2byte	0x259
	.4byte	0x18e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x9
	.2byte	0x25a
	.4byte	0x925
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x9
	.2byte	0x25d
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x9
	.2byte	0x25e
	.4byte	0x5f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x9
	.2byte	0x281
	.4byte	0x8e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x9
	.2byte	0x284
	.4byte	0x2cf
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x9
	.2byte	0x285
	.4byte	0x288
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x9
	.2byte	0x288
	.4byte	0x937
	.byte	0x3
	.byte	0x23
	.uleb128 0x2dc
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x9
	.2byte	0x28d
	.4byte	0x6a7
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x9
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
	.byte	0x9
	.2byte	0x111
	.4byte	0x31c
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0xc
	.byte	0x9
	.2byte	0x116
	.4byte	0x6e2
	.uleb128 0x15
	.4byte	.LASF23
	.byte	0x9
	.2byte	0x117
	.4byte	0x6e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x9
	.2byte	0x118
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x9
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
	.byte	0x9
	.2byte	0x131
	.4byte	0x729
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x9
	.2byte	0x132
	.4byte	0x729
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x133
	.4byte	0x729
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x9
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
	.byte	0x9
	.2byte	0x263
	.4byte	0x869
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x9
	.2byte	0x264
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x9
	.2byte	0x265
	.4byte	0x5f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x266
	.4byte	0x869
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x9
	.2byte	0x267
	.4byte	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x268
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x269
	.4byte	0x52
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x26a
	.4byte	0x6ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x26b
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x26c
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x26d
	.4byte	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x26e
	.4byte	0x879
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x9
	.2byte	0x26f
	.4byte	0x889
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x9
	.2byte	0x270
	.4byte	0x3d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x271
	.4byte	0x105
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x9
	.2byte	0x272
	.4byte	0x105
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x273
	.4byte	0x105
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x9
	.2byte	0x274
	.4byte	0x105
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x275
	.4byte	0x105
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x9
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
	.byte	0x9
	.2byte	0x27c
	.4byte	0x8c1
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x27e
	.4byte	0x8c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x9
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
	.byte	0x9
	.2byte	0x261
	.4byte	0x903
	.uleb128 0x1a
	.4byte	.LASF66
	.byte	0x9
	.2byte	0x277
	.4byte	0x739
	.uleb128 0x1a
	.4byte	.LASF118
	.byte	0x9
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
	.byte	0xa
	.byte	0x6d
	.4byte	0x6f
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0xa
	.byte	0x85
	.4byte	0x44
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0xa
	.byte	0xa2
	.4byte	0x64
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0xa
	.byte	0xa3
	.4byte	0x76
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0xa
	.byte	0xa4
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0xa
	.byte	0xa5
	.4byte	0x8c
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0xa
	.byte	0xbf
	.4byte	0x44
	.uleb128 0x4
	.4byte	.LASF126
	.byte	0xa
	.byte	0xc4
	.4byte	0x36
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0x44
	.byte	0xb
	.byte	0x1a
	.4byte	0xaa6
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0xb
	.byte	0x1b
	.4byte	0x974
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0xb
	.byte	0x1c
	.4byte	0x95e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0xb
	.byte	0x1d
	.4byte	0x995
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0xb
	.byte	0x1e
	.4byte	0x9a0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0xb
	.byte	0x1f
	.4byte	0x97f
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.4byte	.LASF133
	.byte	0xb
	.byte	0x20
	.4byte	0x98a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF134
	.byte	0xb
	.byte	0x21
	.4byte	0x974
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF135
	.byte	0xb
	.byte	0x22
	.4byte	0x969
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF136
	.byte	0xb
	.byte	0x30
	.4byte	0x953
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF137
	.byte	0xb
	.byte	0x31
	.4byte	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF138
	.byte	0xb
	.byte	0x32
	.4byte	0x953
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.4byte	.LASF139
	.byte	0xb
	.byte	0x33
	.4byte	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.4byte	.LASF140
	.byte	0xb
	.byte	0x34
	.4byte	0x953
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0xb
	.byte	0x35
	.4byte	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0xb
	.byte	0x36
	.4byte	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0xb
	.byte	0x37
	.4byte	0x6f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0xb
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
	.uleb128 0x4
	.4byte	.LASF145
	.byte	0xc
	.byte	0x2a
	.4byte	0x28
	.uleb128 0x4
	.4byte	.LASF146
	.byte	0xc
	.byte	0x36
	.4byte	0x36
	.uleb128 0x4
	.4byte	.LASF147
	.byte	0xc
	.byte	0x4f
	.4byte	0x3d
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0xc
	.byte	0x50
	.4byte	0x44
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF149
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF150
	.uleb128 0x1c
	.ascii	"u8\000"
	.byte	0xd
	.byte	0x62
	.4byte	0xab6
	.uleb128 0x1c
	.ascii	"u16\000"
	.byte	0xd
	.byte	0x63
	.4byte	0xac1
	.uleb128 0x1c
	.ascii	"u32\000"
	.byte	0xd
	.byte	0x64
	.4byte	0xad7
	.uleb128 0x1c
	.ascii	"s32\000"
	.byte	0xd
	.byte	0x69
	.4byte	0xacc
	.uleb128 0x1d
	.byte	0x1
	.byte	0xd
	.byte	0x7d
	.4byte	0xb30
	.uleb128 0x1e
	.4byte	.LASF151
	.sleb128 0
	.uleb128 0x1e
	.4byte	.LASF152
	.sleb128 1
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF153
	.byte	0xd
	.byte	0x7d
	.4byte	0xb1b
	.uleb128 0x4
	.4byte	.LASF154
	.byte	0xe
	.byte	0x3d
	.4byte	0xb46
	.uleb128 0x10
	.byte	0x4
	.4byte	0xb4c
	.uleb128 0x1f
	.byte	0x1
	.4byte	0xb30
	.uleb128 0x4
	.4byte	.LASF155
	.byte	0xe
	.byte	0x3e
	.4byte	0xb46
	.uleb128 0x4
	.4byte	.LASF156
	.byte	0xe
	.byte	0x3f
	.4byte	0xb68
	.uleb128 0x10
	.byte	0x4
	.4byte	0xb6e
	.uleb128 0x13
	.byte	0x1
	.4byte	0xb30
	.4byte	0xb88
	.uleb128 0x14
	.4byte	0xb05
	.uleb128 0x14
	.4byte	0xb05
	.uleb128 0x14
	.4byte	0x11b
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF157
	.byte	0xe
	.byte	0x40
	.4byte	0xb93
	.uleb128 0x10
	.byte	0x4
	.4byte	0xb99
	.uleb128 0x13
	.byte	0x1
	.4byte	0xb30
	.4byte	0xbb3
	.uleb128 0x14
	.4byte	0xb05
	.uleb128 0x14
	.4byte	0xb05
	.uleb128 0x14
	.4byte	0xbb3
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xbb9
	.uleb128 0x20
	.uleb128 0x4
	.4byte	.LASF158
	.byte	0xe
	.byte	0x41
	.4byte	0xb46
	.uleb128 0x4
	.4byte	.LASF159
	.byte	0xe
	.byte	0x42
	.4byte	0xb46
	.uleb128 0xe
	.4byte	.LASF160
	.byte	0x20
	.byte	0xe
	.byte	0x44
	.4byte	0xc4d
	.uleb128 0xc
	.4byte	.LASF161
	.byte	0xe
	.byte	0x45
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF162
	.byte	0xe
	.byte	0x46
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF163
	.byte	0xe
	.byte	0x47
	.4byte	0xb3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF164
	.byte	0xe
	.byte	0x48
	.4byte	0xb52
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF165
	.byte	0xe
	.byte	0x49
	.4byte	0xb5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF166
	.byte	0xe
	.byte	0x4a
	.4byte	0xb88
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF167
	.byte	0xe
	.byte	0x4b
	.4byte	0xbba
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF168
	.byte	0xe
	.byte	0x4c
	.4byte	0xbc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF169
	.byte	0xe
	.byte	0x4f
	.4byte	0xbd0
	.uleb128 0xb
	.byte	0xc
	.byte	0xf
	.byte	0x2f
	.4byte	0xc8b
	.uleb128 0xc
	.4byte	.LASF170
	.byte	0xf
	.byte	0x30
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF171
	.byte	0xf
	.byte	0x31
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF172
	.byte	0xf
	.byte	0x32
	.4byte	0xb30
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF173
	.byte	0xf
	.byte	0x33
	.4byte	0xc58
	.uleb128 0xb
	.byte	0x10
	.byte	0xf
	.byte	0x35
	.4byte	0xcd7
	.uleb128 0xc
	.4byte	.LASF174
	.byte	0xf
	.byte	0x36
	.4byte	0xcd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF175
	.byte	0xf
	.byte	0x37
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF176
	.byte	0xf
	.byte	0x38
	.4byte	0xce2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF177
	.byte	0xf
	.byte	0x39
	.4byte	0xce8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xcdd
	.uleb128 0x16
	.4byte	0xc4d
	.uleb128 0x10
	.byte	0x4
	.4byte	0xc8b
	.uleb128 0x10
	.byte	0x4
	.4byte	0xaf0
	.uleb128 0x4
	.4byte	.LASF178
	.byte	0xf
	.byte	0x3a
	.4byte	0xc96
	.uleb128 0x1d
	.byte	0x1
	.byte	0x10
	.byte	0x2d
	.4byte	0xd1a
	.uleb128 0x1e
	.4byte	.LASF179
	.sleb128 0
	.uleb128 0x1e
	.4byte	.LASF180
	.sleb128 1
	.uleb128 0x1e
	.4byte	.LASF181
	.sleb128 2
	.uleb128 0x1e
	.4byte	.LASF182
	.sleb128 3
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF183
	.byte	0x10
	.byte	0x2d
	.4byte	0xcf9
	.uleb128 0xb
	.byte	0x10
	.byte	0x10
	.byte	0x35
	.4byte	0xd66
	.uleb128 0xc
	.4byte	.LASF184
	.byte	0x10
	.byte	0x36
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF185
	.byte	0x10
	.byte	0x37
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF186
	.byte	0x10
	.byte	0x38
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF187
	.byte	0x10
	.byte	0x39
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x1c
	.ascii	"FAT\000"
	.byte	0x10
	.byte	0x3a
	.4byte	0xd25
	.uleb128 0xb
	.byte	0x44
	.byte	0x10
	.byte	0x3c
	.4byte	0xe4c
	.uleb128 0xc
	.4byte	.LASF174
	.byte	0x10
	.byte	0x3d
	.4byte	0xcd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF188
	.byte	0x10
	.byte	0x3e
	.4byte	0xe4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF189
	.byte	0x10
	.byte	0x40
	.4byte	0xb30
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF190
	.byte	0x10
	.byte	0x41
	.4byte	0xd1a
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xc
	.4byte	.LASF191
	.byte	0x10
	.byte	0x42
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF192
	.byte	0x10
	.byte	0x43
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF193
	.byte	0x10
	.byte	0x44
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF194
	.byte	0x10
	.byte	0x45
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF195
	.byte	0x10
	.byte	0x46
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF196
	.byte	0x10
	.byte	0x47
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF197
	.byte	0x10
	.byte	0x48
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.4byte	.LASF198
	.byte	0x10
	.byte	0x49
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.ascii	"fat\000"
	.byte	0x10
	.byte	0x4a
	.4byte	0xd66
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.4byte	.LASF199
	.byte	0x10
	.byte	0x4c
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.4byte	.LASF200
	.byte	0x10
	.byte	0x4d
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xcee
	.uleb128 0x4
	.4byte	.LASF201
	.byte	0x10
	.byte	0x4e
	.4byte	0xd71
	.uleb128 0xb
	.byte	0xc
	.byte	0x5
	.byte	0x3c
	.4byte	0xe90
	.uleb128 0xc
	.4byte	.LASF202
	.byte	0x5
	.byte	0x3d
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF170
	.byte	0x5
	.byte	0x3e
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF203
	.byte	0x5
	.byte	0x3f
	.4byte	0xb10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF204
	.byte	0x5
	.byte	0x40
	.4byte	0xe5d
	.uleb128 0x21
	.2byte	0x138
	.byte	0x5
	.byte	0x42
	.4byte	0xedd
	.uleb128 0xc
	.4byte	.LASF205
	.byte	0x5
	.byte	0x43
	.4byte	0xedd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF195
	.byte	0x5
	.byte	0x44
	.4byte	0xe90
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF206
	.byte	0x5
	.byte	0x45
	.4byte	0xe90
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.4byte	.LASF207
	.byte	0x5
	.byte	0x46
	.4byte	0xeed
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x8
	.4byte	0xaf0
	.4byte	0xeed
	.uleb128 0x9
	.4byte	0xdd
	.byte	0x1f
	.byte	0x0
	.uleb128 0x8
	.4byte	0x5fe
	.4byte	0xefd
	.uleb128 0x9
	.4byte	0xdd
	.byte	0xff
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF208
	.byte	0x5
	.byte	0x47
	.4byte	0xe9b
	.uleb128 0x22
	.4byte	.LASF283
	.byte	0x1
	.byte	0x5
	.byte	0x4a
	.4byte	0xf63
	.uleb128 0x1e
	.4byte	.LASF209
	.sleb128 0
	.uleb128 0x1e
	.4byte	.LASF210
	.sleb128 8
	.uleb128 0x1e
	.4byte	.LASF211
	.sleb128 11
	.uleb128 0x1e
	.4byte	.LASF212
	.sleb128 12
	.uleb128 0x1e
	.4byte	.LASF213
	.sleb128 13
	.uleb128 0x1e
	.4byte	.LASF214
	.sleb128 14
	.uleb128 0x1e
	.4byte	.LASF215
	.sleb128 16
	.uleb128 0x1e
	.4byte	.LASF216
	.sleb128 18
	.uleb128 0x1e
	.4byte	.LASF217
	.sleb128 20
	.uleb128 0x1e
	.4byte	.LASF218
	.sleb128 22
	.uleb128 0x1e
	.4byte	.LASF219
	.sleb128 24
	.uleb128 0x1e
	.4byte	.LASF220
	.sleb128 26
	.uleb128 0x1e
	.4byte	.LASF221
	.sleb128 28
	.byte	0x0
	.uleb128 0xb
	.byte	0xc
	.byte	0x11
	.byte	0x37
	.4byte	0xf96
	.uleb128 0xc
	.4byte	.LASF202
	.byte	0x11
	.byte	0x38
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF170
	.byte	0x11
	.byte	0x39
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF222
	.byte	0x11
	.byte	0x3a
	.4byte	0xb10
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF223
	.byte	0x11
	.byte	0x3b
	.4byte	0xf63
	.uleb128 0x21
	.2byte	0x448
	.byte	0x11
	.byte	0x3d
	.4byte	0x1077
	.uleb128 0xc
	.4byte	.LASF224
	.byte	0x11
	.byte	0x3e
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF225
	.byte	0x11
	.byte	0x3f
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF226
	.byte	0x11
	.byte	0x40
	.4byte	0xb05
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF227
	.byte	0x11
	.byte	0x41
	.4byte	0xf96
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF228
	.byte	0x11
	.byte	0x42
	.4byte	0xf96
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF229
	.byte	0x11
	.byte	0x43
	.4byte	0x1077
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.4byte	.LASF230
	.byte	0x11
	.byte	0x44
	.4byte	0xb05
	.byte	0x3
	.byte	0x23
	.uleb128 0x424
	.uleb128 0xc
	.4byte	.LASF231
	.byte	0x11
	.byte	0x45
	.4byte	0xb30
	.byte	0x3
	.byte	0x23
	.uleb128 0x428
	.uleb128 0xc
	.4byte	.LASF232
	.byte	0x11
	.byte	0x46
	.4byte	0xb30
	.byte	0x3
	.byte	0x23
	.uleb128 0x429
	.uleb128 0xc
	.4byte	.LASF233
	.byte	0x11
	.byte	0x47
	.4byte	0xb30
	.byte	0x3
	.byte	0x23
	.uleb128 0x42a
	.uleb128 0xc
	.4byte	.LASF234
	.byte	0x11
	.byte	0x48
	.4byte	0xb30
	.byte	0x3
	.byte	0x23
	.uleb128 0x42b
	.uleb128 0xc
	.4byte	.LASF235
	.byte	0x11
	.byte	0x49
	.4byte	0x1087
	.byte	0x3
	.byte	0x23
	.uleb128 0x42c
	.uleb128 0xc
	.4byte	.LASF236
	.byte	0x11
	.byte	0x4a
	.4byte	0xe90
	.byte	0x3
	.byte	0x23
	.uleb128 0x430
	.uleb128 0xc
	.4byte	.LASF237
	.byte	0x11
	.byte	0x4b
	.4byte	0xe90
	.byte	0x3
	.byte	0x23
	.uleb128 0x43c
	.byte	0x0
	.uleb128 0x8
	.4byte	0xb05
	.4byte	0x1087
	.uleb128 0x9
	.4byte	0xdd
	.byte	0xff
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xe52
	.uleb128 0x4
	.4byte	.LASF238
	.byte	0x11
	.byte	0x4c
	.4byte	0xfa1
	.uleb128 0x23
	.4byte	.LASF239
	.byte	0x2
	.byte	0x3c
	.byte	0x1
	.4byte	0xb05
	.byte	0x3
	.4byte	0x10c0
	.uleb128 0x24
	.4byte	.LASF235
	.byte	0x2
	.byte	0x3c
	.4byte	0x1087
	.uleb128 0x24
	.4byte	.LASF202
	.byte	0x2
	.byte	0x3c
	.4byte	0xb05
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF240
	.byte	0x3
	.byte	0x56
	.byte	0x1
	.4byte	0xb30
	.byte	0x3
	.4byte	0x10fe
	.uleb128 0x24
	.4byte	.LASF174
	.byte	0x3
	.byte	0x56
	.4byte	0xcd7
	.uleb128 0x24
	.4byte	.LASF170
	.byte	0x3
	.byte	0x56
	.4byte	0xb05
	.uleb128 0x24
	.4byte	.LASF241
	.byte	0x3
	.byte	0x56
	.4byte	0xb05
	.uleb128 0x24
	.4byte	.LASF242
	.byte	0x3
	.byte	0x56
	.4byte	0xbb3
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF243
	.byte	0x3
	.byte	0x4c
	.byte	0x1
	.4byte	0xb30
	.byte	0x3
	.4byte	0x113c
	.uleb128 0x24
	.4byte	.LASF174
	.byte	0x3
	.byte	0x4c
	.4byte	0xcd7
	.uleb128 0x24
	.4byte	.LASF170
	.byte	0x3
	.byte	0x4c
	.4byte	0xb05
	.uleb128 0x24
	.4byte	.LASF241
	.byte	0x3
	.byte	0x4c
	.4byte	0xb05
	.uleb128 0x24
	.4byte	.LASF242
	.byte	0x3
	.byte	0x4c
	.4byte	0x11b
	.byte	0x0
	.uleb128 0x25
	.4byte	.LASF246
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.byte	0x3
	.4byte	0x116b
	.uleb128 0x24
	.4byte	.LASF244
	.byte	0x4
	.byte	0x33
	.4byte	0xce8
	.uleb128 0x24
	.4byte	.LASF203
	.byte	0x4
	.byte	0x33
	.4byte	0x3d
	.uleb128 0x24
	.4byte	.LASF245
	.byte	0x4
	.byte	0x33
	.4byte	0xb05
	.byte	0x0
	.uleb128 0x25
	.4byte	.LASF247
	.byte	0x4
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.4byte	0x119a
	.uleb128 0x24
	.4byte	.LASF244
	.byte	0x4
	.byte	0x2e
	.4byte	0xce8
	.uleb128 0x24
	.4byte	.LASF203
	.byte	0x4
	.byte	0x2e
	.4byte	0x3d
	.uleb128 0x24
	.4byte	.LASF245
	.byte	0x4
	.byte	0x2e
	.4byte	0xafa
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF248
	.byte	0x5
	.byte	0x5d
	.byte	0x1
	.4byte	0xb30
	.byte	0x3
	.4byte	0x11b7
	.uleb128 0x24
	.4byte	.LASF249
	.byte	0x5
	.byte	0x5d
	.4byte	0x11b7
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xefd
	.uleb128 0x23
	.4byte	.LASF250
	.byte	0x4
	.byte	0x2a
	.byte	0x1
	.4byte	0xb05
	.byte	0x3
	.4byte	0x11e5
	.uleb128 0x24
	.4byte	.LASF244
	.byte	0x4
	.byte	0x2a
	.4byte	0x11e5
	.uleb128 0x24
	.4byte	.LASF203
	.byte	0x4
	.byte	0x2a
	.4byte	0x3d
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x11eb
	.uleb128 0x16
	.4byte	0xaf0
	.uleb128 0x23
	.4byte	.LASF251
	.byte	0x5
	.byte	0x61
	.byte	0x1
	.4byte	0xb30
	.byte	0x3
	.4byte	0x120d
	.uleb128 0x24
	.4byte	.LASF249
	.byte	0x5
	.byte	0x61
	.4byte	0x11b7
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x360
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST0
	.4byte	0x1283
	.uleb128 0x27
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x360
	.4byte	0x495
	.4byte	.LLST1
	.uleb128 0x27
	.ascii	"fd\000"
	.byte	0x1
	.2byte	0x360
	.4byte	0x3d
	.4byte	.LLST2
	.uleb128 0x27
	.ascii	"st\000"
	.byte	0x1
	.2byte	0x360
	.4byte	0x1283
	.4byte	.LLST3
	.uleb128 0x28
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x361
	.4byte	0x1289
	.uleb128 0x29
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x363
	.4byte	0x1087
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x29
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x365
	.4byte	0xefd
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x9ab
	.uleb128 0x10
	.byte	0x4
	.4byte	0x108d
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF254
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.4byte	0xb05
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST4
	.4byte	0x1303
	.uleb128 0x2b
	.4byte	.LASF255
	.byte	0x1
	.byte	0x3a
	.4byte	0x1289
	.4byte	.LLST5
	.uleb128 0x2b
	.4byte	.LASF256
	.byte	0x1
	.byte	0x3a
	.4byte	0xb05
	.4byte	.LLST6
	.uleb128 0x2c
	.4byte	.LASF235
	.byte	0x1
	.byte	0x41
	.4byte	0x1087
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2d
	.4byte	.LASF202
	.byte	0x1
	.byte	0x42
	.4byte	0xb05
	.4byte	.LLST7
	.uleb128 0x2c
	.4byte	.LASF171
	.byte	0x1
	.byte	0x43
	.4byte	0xb05
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2e
	.ascii	"i\000"
	.byte	0x1
	.byte	0x44
	.4byte	0xb05
	.4byte	.LLST8
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x2fd
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LLST9
	.4byte	0x13db
	.uleb128 0x27
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x2fd
	.4byte	0x495
	.4byte	.LLST10
	.uleb128 0x27
	.ascii	"fd\000"
	.byte	0x1
	.2byte	0x2fd
	.4byte	0x3d
	.4byte	.LLST11
	.uleb128 0x27
	.ascii	"pos\000"
	.byte	0x1
	.2byte	0x2fd
	.4byte	0x3d
	.4byte	.LLST12
	.uleb128 0x27
	.ascii	"dir\000"
	.byte	0x1
	.2byte	0x2fd
	.4byte	0x3d
	.4byte	.LLST13
	.uleb128 0x28
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x2fe
	.4byte	0x1289
	.uleb128 0x2f
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x300
	.4byte	0x1087
	.4byte	.LLST14
	.uleb128 0x29
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x302
	.4byte	0xb05
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2f
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x302
	.4byte	0xb05
	.4byte	.LLST15
	.uleb128 0x28
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x303
	.4byte	0x3d
	.uleb128 0x2f
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x304
	.4byte	0x3d
	.4byte	.LLST16
	.uleb128 0x30
	.4byte	.LBB74
	.4byte	.LBE74
	.uleb128 0x28
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x329
	.4byte	0xb05
	.uleb128 0x29
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x32a
	.4byte	0xb05
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x1ea
	.byte	0x1
	.4byte	0xb30
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LLST17
	.4byte	0x1512
	.uleb128 0x27
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x495
	.4byte	.LLST18
	.uleb128 0x32
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x1289
	.4byte	.LLST19
	.uleb128 0x2f
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x1087
	.4byte	.LLST20
	.uleb128 0x29
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x1ec
	.4byte	0xe4c
	.byte	0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x28
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x1ee
	.4byte	0xf96
	.uleb128 0x29
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x1f0
	.4byte	0xb05
	.byte	0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x29
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x1512
	.byte	0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x2f
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x1f4
	.4byte	0xb05
	.4byte	.LLST21
	.uleb128 0x33
	.4byte	0x1098
	.4byte	.LBB75
	.4byte	.LBE75
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x148f
	.uleb128 0x34
	.4byte	0x10b4
	.uleb128 0x34
	.4byte	0x10a9
	.byte	0x0
	.uleb128 0x33
	.4byte	0x1098
	.4byte	.LBB77
	.4byte	.LBE77
	.byte	0x1
	.2byte	0x204
	.4byte	0x14ae
	.uleb128 0x34
	.4byte	0x10b4
	.uleb128 0x34
	.4byte	0x10a9
	.byte	0x0
	.uleb128 0x33
	.4byte	0x1098
	.4byte	.LBB79
	.4byte	.LBE79
	.byte	0x1
	.2byte	0x21d
	.4byte	0x14cd
	.uleb128 0x34
	.4byte	0x10b4
	.uleb128 0x34
	.4byte	0x10a9
	.byte	0x0
	.uleb128 0x33
	.4byte	0x10c0
	.4byte	.LBB81
	.4byte	.LBE81
	.byte	0x1
	.2byte	0x21d
	.4byte	0x14f6
	.uleb128 0x34
	.4byte	0x10f2
	.uleb128 0x34
	.4byte	0x10e7
	.uleb128 0x34
	.4byte	0x10dc
	.uleb128 0x34
	.4byte	0x10d1
	.byte	0x0
	.uleb128 0x35
	.4byte	0x1098
	.4byte	.LBB83
	.4byte	.LBE83
	.byte	0x1
	.2byte	0x235
	.uleb128 0x34
	.4byte	0x10b4
	.uleb128 0x34
	.4byte	0x10a9
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.4byte	0xaf0
	.4byte	0x1523
	.uleb128 0x36
	.4byte	0xdd
	.2byte	0x1ff
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST22
	.4byte	0x1733
	.uleb128 0x27
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x241
	.4byte	0x495
	.4byte	.LLST23
	.uleb128 0x27
	.ascii	"fd\000"
	.byte	0x1
	.2byte	0x241
	.4byte	0x3d
	.4byte	.LLST24
	.uleb128 0x27
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x241
	.4byte	0x62a
	.4byte	.LLST25
	.uleb128 0x27
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x241
	.4byte	0x3d
	.4byte	.LLST26
	.uleb128 0x28
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x242
	.4byte	0x1289
	.uleb128 0x2f
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x244
	.4byte	0x1087
	.4byte	.LLST27
	.uleb128 0x29
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x245
	.4byte	0xe4c
	.byte	0x2
	.byte	0x7d
	.sleb128 40
	.uleb128 0x28
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x247
	.4byte	0xf96
	.uleb128 0x2f
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x248
	.4byte	0xb05
	.4byte	.LLST28
	.uleb128 0x29
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x24a
	.4byte	0x3d
	.byte	0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x29
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x24c
	.4byte	0xb05
	.byte	0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x29
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x24e
	.4byte	0xb30
	.byte	0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x29
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x24f
	.4byte	0xb30
	.byte	0x2
	.byte	0x7d
	.sleb128 44
	.uleb128 0x33
	.4byte	0x1098
	.4byte	.LBB85
	.4byte	.LBE85
	.byte	0x1
	.2byte	0x288
	.4byte	0x1620
	.uleb128 0x34
	.4byte	0x10b4
	.uleb128 0x34
	.4byte	0x10a9
	.byte	0x0
	.uleb128 0x33
	.4byte	0x1098
	.4byte	.LBB87
	.4byte	.LBE87
	.byte	0x1
	.2byte	0x2a0
	.4byte	0x163f
	.uleb128 0x34
	.4byte	0x10b4
	.uleb128 0x34
	.4byte	0x10a9
	.byte	0x0
	.uleb128 0x33
	.4byte	0x10c0
	.4byte	.LBB89
	.4byte	.LBE89
	.byte	0x1
	.2byte	0x2a0
	.4byte	0x1668
	.uleb128 0x34
	.4byte	0x10f2
	.uleb128 0x34
	.4byte	0x10e7
	.uleb128 0x34
	.4byte	0x10dc
	.uleb128 0x34
	.4byte	0x10d1
	.byte	0x0
	.uleb128 0x33
	.4byte	0x1098
	.4byte	.LBB91
	.4byte	.LBE91
	.byte	0x1
	.2byte	0x2b9
	.4byte	0x1687
	.uleb128 0x34
	.4byte	0x10b4
	.uleb128 0x34
	.4byte	0x10a9
	.byte	0x0
	.uleb128 0x33
	.4byte	0x10c0
	.4byte	.LBB93
	.4byte	.LBE93
	.byte	0x1
	.2byte	0x2b9
	.4byte	0x16b0
	.uleb128 0x34
	.4byte	0x10f2
	.uleb128 0x34
	.4byte	0x10e7
	.uleb128 0x34
	.4byte	0x10dc
	.uleb128 0x34
	.4byte	0x10d1
	.byte	0x0
	.uleb128 0x33
	.4byte	0x1098
	.4byte	.LBB95
	.4byte	.LBE95
	.byte	0x1
	.2byte	0x2d3
	.4byte	0x16cf
	.uleb128 0x34
	.4byte	0x10b4
	.uleb128 0x34
	.4byte	0x10a9
	.byte	0x0
	.uleb128 0x33
	.4byte	0x10c0
	.4byte	.LBB97
	.4byte	.LBE97
	.byte	0x1
	.2byte	0x2d3
	.4byte	0x16f8
	.uleb128 0x34
	.4byte	0x10f2
	.uleb128 0x34
	.4byte	0x10e7
	.uleb128 0x34
	.4byte	0x10dc
	.uleb128 0x34
	.4byte	0x10d1
	.byte	0x0
	.uleb128 0x33
	.4byte	0x1098
	.4byte	.LBB99
	.4byte	.LBE99
	.byte	0x1
	.2byte	0x2dd
	.4byte	0x1717
	.uleb128 0x34
	.4byte	0x10b4
	.uleb128 0x34
	.4byte	0x10a9
	.byte	0x0
	.uleb128 0x35
	.4byte	0x1098
	.4byte	.LBB101
	.4byte	.LBE101
	.byte	0x1
	.2byte	0x2e0
	.uleb128 0x34
	.4byte	0x10b4
	.uleb128 0x34
	.4byte	0x10a9
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x15d
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LLST29
	.4byte	0x1917
	.uleb128 0x27
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x15d
	.4byte	0x495
	.4byte	.LLST30
	.uleb128 0x27
	.ascii	"fd\000"
	.byte	0x1
	.2byte	0x15d
	.4byte	0x3d
	.4byte	.LLST31
	.uleb128 0x27
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x15d
	.4byte	0x5f8
	.4byte	.LLST32
	.uleb128 0x27
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x15d
	.4byte	0x3d
	.4byte	.LLST33
	.uleb128 0x28
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x15e
	.4byte	0x1289
	.uleb128 0x2f
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x160
	.4byte	0x1087
	.4byte	.LLST34
	.uleb128 0x29
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x161
	.4byte	0xe4c
	.byte	0x2
	.byte	0x7d
	.sleb128 36
	.uleb128 0x28
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x163
	.4byte	0xf96
	.uleb128 0x2f
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x164
	.4byte	0xb05
	.4byte	.LLST35
	.uleb128 0x29
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x166
	.4byte	0x3d
	.byte	0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2f
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x168
	.4byte	0xb05
	.4byte	.LLST36
	.uleb128 0x2f
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x16a
	.4byte	0xb30
	.4byte	.LLST37
	.uleb128 0x33
	.4byte	0x1098
	.4byte	.LBB103
	.4byte	.LBE103
	.byte	0x1
	.2byte	0x18c
	.4byte	0x1823
	.uleb128 0x34
	.4byte	0x10b4
	.uleb128 0x34
	.4byte	0x10a9
	.byte	0x0
	.uleb128 0x37
	.4byte	0x1098
	.4byte	.LBB105
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x1842
	.uleb128 0x34
	.4byte	0x10b4
	.uleb128 0x34
	.4byte	0x10a9
	.byte	0x0
	.uleb128 0x33
	.4byte	0x10fe
	.4byte	.LBB109
	.4byte	.LBE109
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x186b
	.uleb128 0x34
	.4byte	0x1130
	.uleb128 0x34
	.4byte	0x1125
	.uleb128 0x34
	.4byte	0x111a
	.uleb128 0x34
	.4byte	0x110f
	.byte	0x0
	.uleb128 0x37
	.4byte	0x1098
	.4byte	.LBB111
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x188a
	.uleb128 0x34
	.4byte	0x10b4
	.uleb128 0x34
	.4byte	0x10a9
	.byte	0x0
	.uleb128 0x33
	.4byte	0x10fe
	.4byte	.LBB115
	.4byte	.LBE115
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x18b3
	.uleb128 0x34
	.4byte	0x1130
	.uleb128 0x34
	.4byte	0x1125
	.uleb128 0x34
	.4byte	0x111a
	.uleb128 0x34
	.4byte	0x110f
	.byte	0x0
	.uleb128 0x37
	.4byte	0x1098
	.4byte	.LBB117
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x18d2
	.uleb128 0x34
	.4byte	0x10b4
	.uleb128 0x34
	.4byte	0x10a9
	.byte	0x0
	.uleb128 0x33
	.4byte	0x10fe
	.4byte	.LBB121
	.4byte	.LBE121
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x18fb
	.uleb128 0x34
	.4byte	0x1130
	.uleb128 0x34
	.4byte	0x1125
	.uleb128 0x34
	.4byte	0x111a
	.uleb128 0x34
	.4byte	0x110f
	.byte	0x0
	.uleb128 0x35
	.4byte	0x1098
	.4byte	.LBB123
	.4byte	.LBE123
	.byte	0x1
	.2byte	0x1d8
	.uleb128 0x34
	.4byte	0x10b4
	.uleb128 0x34
	.4byte	0x10a9
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x12e
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LLST38
	.4byte	0x1a84
	.uleb128 0x27
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x12e
	.4byte	0x495
	.4byte	.LLST39
	.uleb128 0x27
	.ascii	"fd\000"
	.byte	0x1
	.2byte	0x12e
	.4byte	0x3d
	.4byte	.LLST40
	.uleb128 0x2f
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x12f
	.4byte	0x1289
	.4byte	.LLST41
	.uleb128 0x29
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x130
	.4byte	0xedd
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.4byte	0x1098
	.4byte	.LBB125
	.4byte	.LBE125
	.byte	0x1
	.2byte	0x138
	.4byte	0x1990
	.uleb128 0x34
	.4byte	0x10b4
	.uleb128 0x34
	.4byte	0x10a9
	.byte	0x0
	.uleb128 0x33
	.4byte	0x113c
	.4byte	.LBB127
	.4byte	.LBE127
	.byte	0x1
	.2byte	0x13e
	.4byte	0x19b4
	.uleb128 0x34
	.4byte	0x115f
	.uleb128 0x34
	.4byte	0x1154
	.uleb128 0x34
	.4byte	0x1149
	.byte	0x0
	.uleb128 0x37
	.4byte	0x116b
	.4byte	.LBB129
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x141
	.4byte	0x19d8
	.uleb128 0x34
	.4byte	0x118e
	.uleb128 0x34
	.4byte	0x1183
	.uleb128 0x34
	.4byte	0x1178
	.byte	0x0
	.uleb128 0x37
	.4byte	0x116b
	.4byte	.LBB132
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x142
	.4byte	0x19fc
	.uleb128 0x34
	.4byte	0x118e
	.uleb128 0x34
	.4byte	0x1183
	.uleb128 0x34
	.4byte	0x1178
	.byte	0x0
	.uleb128 0x33
	.4byte	0x116b
	.4byte	.LBB137
	.4byte	.LBE137
	.byte	0x1
	.2byte	0x145
	.4byte	0x1a20
	.uleb128 0x34
	.4byte	0x118e
	.uleb128 0x34
	.4byte	0x1183
	.uleb128 0x34
	.4byte	0x1178
	.byte	0x0
	.uleb128 0x33
	.4byte	0x116b
	.4byte	.LBB139
	.4byte	.LBE139
	.byte	0x1
	.2byte	0x146
	.4byte	0x1a44
	.uleb128 0x34
	.4byte	0x118e
	.uleb128 0x34
	.4byte	0x1183
	.uleb128 0x34
	.4byte	0x1178
	.byte	0x0
	.uleb128 0x37
	.4byte	0x116b
	.4byte	.LBB141
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.2byte	0x149
	.4byte	0x1a68
	.uleb128 0x34
	.4byte	0x118e
	.uleb128 0x34
	.4byte	0x1183
	.uleb128 0x34
	.4byte	0x1178
	.byte	0x0
	.uleb128 0x35
	.4byte	0x1098
	.4byte	.LBB145
	.4byte	.LBE145
	.byte	0x1
	.2byte	0x14c
	.uleb128 0x34
	.4byte	0x10b4
	.uleb128 0x34
	.4byte	0x10a9
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF285
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	0x3d
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST42
	.uleb128 0x39
	.ascii	"r\000"
	.byte	0x1
	.byte	0x56
	.4byte	0x495
	.4byte	.LLST43
	.uleb128 0x2b
	.4byte	.LASF272
	.byte	0x1
	.byte	0x56
	.4byte	0x11b
	.4byte	.LLST44
	.uleb128 0x2b
	.4byte	.LASF273
	.byte	0x1
	.byte	0x56
	.4byte	0x62a
	.4byte	.LLST45
	.uleb128 0x2b
	.4byte	.LASF274
	.byte	0x1
	.byte	0x56
	.4byte	0x3d
	.4byte	.LLST46
	.uleb128 0x3a
	.4byte	.LASF275
	.byte	0x1
	.byte	0x56
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.4byte	.LASF235
	.byte	0x1
	.byte	0x57
	.4byte	0x1087
	.4byte	.LLST47
	.uleb128 0x3b
	.4byte	.LASF276
	.byte	0x1
	.byte	0x58
	.4byte	0xb30
	.uleb128 0x2c
	.4byte	.LASF277
	.byte	0x1
	.byte	0x59
	.4byte	0xefd
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2d
	.4byte	.LASF278
	.byte	0x1
	.byte	0x5a
	.4byte	0x62a
	.4byte	.LLST48
	.uleb128 0x2c
	.4byte	.LASF279
	.byte	0x1
	.byte	0x5b
	.4byte	0xb05
	.byte	0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x3b
	.4byte	.LASF255
	.byte	0x1
	.byte	0x5c
	.4byte	0x1289
	.uleb128 0x3c
	.ascii	"i\000"
	.byte	0x1
	.byte	0x5e
	.4byte	0xb10
	.uleb128 0x28
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x121
	.4byte	0xb05
	.uleb128 0x3d
	.4byte	0x116b
	.4byte	.LBB147
	.4byte	.LBE147
	.byte	0x1
	.byte	0xc2
	.4byte	0x1b6e
	.uleb128 0x34
	.4byte	0x118e
	.uleb128 0x34
	.4byte	0x1183
	.uleb128 0x34
	.4byte	0x1178
	.byte	0x0
	.uleb128 0x3e
	.4byte	0x116b
	.4byte	.LBB149
	.4byte	.LBE149
	.byte	0x1
	.byte	0xc3
	.uleb128 0x34
	.4byte	0x118e
	.uleb128 0x34
	.4byte	0x1183
	.uleb128 0x34
	.4byte	0x1178
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x6
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x89
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1b8f
	.4byte	0x120d
	.ascii	"_FAT_fstat_r\000"
	.4byte	0x128f
	.ascii	"_FAT_cluster_lookup\000"
	.4byte	0x1303
	.ascii	"_FAT_seek_r\000"
	.4byte	0x1523
	.ascii	"_FAT_write_r\000"
	.4byte	0x1733
	.ascii	"_FAT_read_r\000"
	.4byte	0x1917
	.ascii	"_FAT_close_r\000"
	.4byte	0x1a84
	.ascii	"_FAT_open_r\000"
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
	.4byte	.LBB105-.Ltext0
	.4byte	.LBE105-.Ltext0
	.4byte	.LBB108-.Ltext0
	.4byte	.LBE108-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB111-.Ltext0
	.4byte	.LBE111-.Ltext0
	.4byte	.LBB114-.Ltext0
	.4byte	.LBE114-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB117-.Ltext0
	.4byte	.LBE117-.Ltext0
	.4byte	.LBB120-.Ltext0
	.4byte	.LBE120-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB129-.Ltext0
	.4byte	.LBE129-.Ltext0
	.4byte	.LBB135-.Ltext0
	.4byte	.LBE135-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB132-.Ltext0
	.4byte	.LBE132-.Ltext0
	.4byte	.LBB136-.Ltext0
	.4byte	.LBE136-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB141-.Ltext0
	.4byte	.LBE141-.Ltext0
	.4byte	.LBB144-.Ltext0
	.4byte	.LBE144-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF221:
	.ascii	"DIR_ENTRY_fileSize\000"
.LASF190:
	.ascii	"filesysType\000"
.LASF281:
	.ascii	"GNU C 4.4.3\000"
.LASF197:
	.ascii	"sectorsPerCluster\000"
.LASF263:
	.ascii	"zeroBuffer\000"
.LASF212:
	.ascii	"DIR_ENTRY_reserved\000"
.LASF158:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF38:
	.ascii	"_on_exit_args\000"
.LASF285:
	.ascii	"_FAT_open_r\000"
.LASF106:
	.ascii	"_wctomb_state\000"
.LASF274:
	.ascii	"flags\000"
.LASF103:
	.ascii	"_r48\000"
.LASF191:
	.ascii	"totalSize\000"
.LASF160:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF165:
	.ascii	"fn_readSectors\000"
.LASF108:
	.ascii	"_signal_buf\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF267:
	.ascii	"flagNoError\000"
.LASF142:
	.ascii	"st_blksize\000"
.LASF52:
	.ascii	"_lbfsize\000"
.LASF50:
	.ascii	"_flags\000"
.LASF67:
	.ascii	"_errno\000"
.LASF248:
	.ascii	"_FAT_directory_isDirectory\000"
.LASF213:
	.ascii	"DIR_ENTRY_cTime_ms\000"
.LASF268:
	.ascii	"flagAppending\000"
.LASF7:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF200:
	.ascii	"openFileCount\000"
.LASF54:
	.ascii	"_read\000"
.LASF275:
	.ascii	"mode\000"
.LASF110:
	.ascii	"_mbrlen_state\000"
.LASF270:
	.ascii	"_FAT_close_r\000"
.LASF206:
	.ascii	"dataEnd\000"
.LASF284:
	.ascii	"file_extend_r\000"
.LASF69:
	.ascii	"_stdout\000"
.LASF13:
	.ascii	"_fpos_t\000"
.LASF208:
	.ascii	"DIR_ENTRY\000"
.LASF45:
	.ascii	"_fns\000"
.LASF53:
	.ascii	"_cookie\000"
.LASF227:
	.ascii	"rwPosition\000"
.LASF261:
	.ascii	"clusterTableOffset\000"
.LASF282:
	.ascii	"C:/Users/GRX/NeoDS/arm9/source/libfat/fatfile.c\000"
.LASF35:
	.ascii	"__tm_wday\000"
.LASF77:
	.ascii	"_result\000"
.LASF120:
	.ascii	"ino_t\000"
.LASF148:
	.ascii	"uint32_t\000"
.LASF31:
	.ascii	"__tm_hour\000"
.LASF204:
	.ascii	"DIR_ENTRY_POSITION\000"
.LASF250:
	.ascii	"u8array_to_u32\000"
.LASF17:
	.ascii	"__count\000"
.LASF149:
	.ascii	"float\000"
.LASF259:
	.ascii	"clusCount\000"
.LASF233:
	.ascii	"append\000"
.LASF30:
	.ascii	"__tm_min\000"
.LASF226:
	.ascii	"currentPosition\000"
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
.LASF205:
	.ascii	"entryData\000"
.LASF138:
	.ascii	"st_mtime\000"
.LASF89:
	.ascii	"__FILE\000"
.LASF61:
	.ascii	"_offset\000"
.LASF214:
	.ascii	"DIR_ENTRY_cTime\000"
.LASF166:
	.ascii	"fn_writeSectors\000"
.LASF245:
	.ascii	"value\000"
.LASF228:
	.ascii	"appendPosition\000"
.LASF127:
	.ascii	"stat\000"
.LASF72:
	.ascii	"_emergency\000"
.LASF168:
	.ascii	"fn_shutdown\000"
.LASF128:
	.ascii	"st_dev\000"
.LASF159:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF186:
	.ascii	"lastCluster\000"
.LASF203:
	.ascii	"offset\000"
.LASF29:
	.ascii	"__tm_sec\000"
.LASF224:
	.ascii	"filesize\000"
.LASF277:
	.ascii	"dirEntry\000"
.LASF36:
	.ascii	"__tm_yday\000"
.LASF71:
	.ascii	"_inc\000"
.LASF44:
	.ascii	"_ind\000"
.LASF133:
	.ascii	"st_gid\000"
.LASF225:
	.ascii	"startCluster\000"
.LASF23:
	.ascii	"_next\000"
.LASF130:
	.ascii	"st_mode\000"
.LASF112:
	.ascii	"_mbsrtowcs_state\000"
.LASF180:
	.ascii	"FS_FAT12\000"
.LASF238:
	.ascii	"FILE_STRUCT\000"
.LASF181:
	.ascii	"FS_FAT16\000"
.LASF131:
	.ascii	"st_nlink\000"
.LASF273:
	.ascii	"path\000"
.LASF152:
	.ascii	"true\000"
.LASF264:
	.ascii	"tempNextCluster\000"
.LASF258:
	.ascii	"nextCluster\000"
.LASF18:
	.ascii	"__value\000"
.LASF202:
	.ascii	"cluster\000"
.LASF79:
	.ascii	"_p5s\000"
.LASF171:
	.ascii	"count\000"
.LASF195:
	.ascii	"dataStart\000"
.LASF201:
	.ascii	"PARTITION\000"
.LASF114:
	.ascii	"_wcsrtombs_state\000"
.LASF104:
	.ascii	"_mblen_state\000"
.LASF155:
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
.LASF210:
	.ascii	"DIR_ENTRY_extension\000"
.LASF207:
	.ascii	"filename\000"
.LASF132:
	.ascii	"st_uid\000"
.LASF156:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF189:
	.ascii	"readOnly\000"
.LASF194:
	.ascii	"numberOfSectors\000"
.LASF218:
	.ascii	"DIR_ENTRY_mTime\000"
.LASF20:
	.ascii	"_flock_t\000"
.LASF136:
	.ascii	"st_atime\000"
.LASF255:
	.ascii	"file\000"
.LASF15:
	.ascii	"__wch\000"
.LASF92:
	.ascii	"_iobs\000"
.LASF145:
	.ascii	"uint8_t\000"
.LASF119:
	.ascii	"time_t\000"
.LASF57:
	.ascii	"_close\000"
.LASF167:
	.ascii	"fn_clearStatus\000"
.LASF75:
	.ascii	"__sdidinit\000"
.LASF237:
	.ascii	"dirEntryEnd\000"
.LASF177:
	.ascii	"pages\000"
.LASF178:
	.ascii	"CACHE\000"
.LASF129:
	.ascii	"st_ino\000"
.LASF219:
	.ascii	"DIR_ENTRY_mDate\000"
.LASF209:
	.ascii	"DIR_ENTRY_name\000"
.LASF68:
	.ascii	"_stdin\000"
.LASF101:
	.ascii	"_gamma_signgam\000"
.LASF5:
	.ascii	"long long int\000"
.LASF182:
	.ascii	"FS_FAT32\000"
.LASF232:
	.ascii	"write\000"
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
.LASF266:
	.ascii	"tempVar\000"
.LASF283:
	.ascii	"DIR_ENTRY_offset\000"
.LASF113:
	.ascii	"_wcrtomb_state\000"
.LASF123:
	.ascii	"uid_t\000"
.LASF122:
	.ascii	"dev_t\000"
.LASF51:
	.ascii	"_file\000"
.LASF251:
	.ascii	"_FAT_directory_isWritable\000"
.LASF161:
	.ascii	"ioType\000"
.LASF256:
	.ascii	"clusterTableIndex\000"
.LASF211:
	.ascii	"DIR_ENTRY_attributes\000"
.LASF76:
	.ascii	"__cleanup\000"
.LASF185:
	.ascii	"sectorsPerFat\000"
.LASF19:
	.ascii	"_mbstate_t\000"
.LASF242:
	.ascii	"buffer\000"
.LASF240:
	.ascii	"_FAT_disc_writeSectors\000"
.LASF279:
	.ascii	"dirCluster\000"
.LASF37:
	.ascii	"__tm_isdst\000"
.LASF235:
	.ascii	"partition\000"
.LASF257:
	.ascii	"_FAT_seek_r\000"
.LASF164:
	.ascii	"fn_isInserted\000"
.LASF115:
	.ascii	"_h_errno\000"
.LASF196:
	.ascii	"bytesPerSector\000"
.LASF137:
	.ascii	"st_spare1\000"
.LASF139:
	.ascii	"st_spare2\000"
.LASF141:
	.ascii	"st_spare3\000"
.LASF144:
	.ascii	"st_spare4\000"
.LASF169:
	.ascii	"IO_INTERFACE\000"
.LASF188:
	.ascii	"cache\000"
.LASF162:
	.ascii	"features\000"
.LASF265:
	.ascii	"_FAT_write_r\000"
.LASF154:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF33:
	.ascii	"__tm_mon\000"
.LASF246:
	.ascii	"u32_to_u8array\000"
.LASF229:
	.ascii	"clusterTable\000"
.LASF172:
	.ascii	"dirty\000"
.LASF12:
	.ascii	"__gid_t\000"
.LASF146:
	.ascii	"uint16_t\000"
.LASF55:
	.ascii	"_write\000"
.LASF262:
	.ascii	"remain\000"
.LASF124:
	.ascii	"gid_t\000"
.LASF163:
	.ascii	"fn_startup\000"
.LASF198:
	.ascii	"bytesPerCluster\000"
.LASF230:
	.ascii	"clustersPerEntry\000"
.LASF199:
	.ascii	"cwdCluster\000"
.LASF43:
	.ascii	"_atexit\000"
.LASF64:
	.ascii	"_mbstate\000"
.LASF272:
	.ascii	"fileStruct\000"
.LASF216:
	.ascii	"DIR_ENTRY_aDate\000"
.LASF2:
	.ascii	"short int\000"
.LASF27:
	.ascii	"_Bigint\000"
.LASF9:
	.ascii	"long int\000"
.LASF192:
	.ascii	"rootDirStart\000"
.LASF215:
	.ascii	"DIR_ENTRY_cDate\000"
.LASF87:
	.ascii	"__sf\000"
.LASF25:
	.ascii	"_sign\000"
.LASF74:
	.ascii	"_current_locale\000"
.LASF62:
	.ascii	"_data\000"
.LASF16:
	.ascii	"__wchb\000"
.LASF34:
	.ascii	"__tm_year\000"
.LASF253:
	.ascii	"_FAT_fstat_r\000"
.LASF153:
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
.LASF170:
	.ascii	"sector\000"
.LASF220:
	.ascii	"DIR_ENTRY_cluster\000"
.LASF60:
	.ascii	"_blksize\000"
.LASF28:
	.ascii	"__tm\000"
.LASF183:
	.ascii	"FS_TYPE\000"
.LASF63:
	.ascii	"_lock\000"
.LASF22:
	.ascii	"long unsigned int\000"
.LASF91:
	.ascii	"_niobs\000"
.LASF14:
	.ascii	"wint_t\000"
.LASF193:
	.ascii	"rootDirCluster\000"
.LASF147:
	.ascii	"int32_t\000"
.LASF247:
	.ascii	"u16_to_u8array\000"
.LASF40:
	.ascii	"_dso_handle\000"
.LASF173:
	.ascii	"CACHE_ENTRY\000"
.LASF271:
	.ascii	"dirEntryData\000"
.LASF179:
	.ascii	"FS_UNKNOWN\000"
.LASF249:
	.ascii	"entry\000"
.LASF126:
	.ascii	"nlink_t\000"
.LASF82:
	.ascii	"_cvtbuf\000"
.LASF254:
	.ascii	"_FAT_cluster_lookup\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF223:
	.ascii	"FILE_POSITION\000"
.LASF109:
	.ascii	"_getdate_err\000"
.LASF151:
	.ascii	"false\000"
.LASF176:
	.ascii	"cacheEntries\000"
.LASF280:
	.ascii	"clusterCount\000"
.LASF96:
	.ascii	"_add\000"
.LASF118:
	.ascii	"_unused\000"
.LASF217:
	.ascii	"DIR_ENTRY_clusterHigh\000"
.LASF234:
	.ascii	"inUse\000"
.LASF252:
	.ascii	"fileEntry\000"
.LASF46:
	.ascii	"__sbuf\000"
.LASF236:
	.ascii	"dirEntryStart\000"
.LASF243:
	.ascii	"_FAT_disc_readSectors\000"
.LASF135:
	.ascii	"st_size\000"
.LASF90:
	.ascii	"_glue\000"
.LASF184:
	.ascii	"fatStart\000"
.LASF244:
	.ascii	"item\000"
.LASF86:
	.ascii	"__sglue\000"
.LASF98:
	.ascii	"_strtok_last\000"
.LASF105:
	.ascii	"_mbtowc_state\000"
.LASF241:
	.ascii	"numSectors\000"
.LASF174:
	.ascii	"disc\000"
.LASF187:
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
.LASF157:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF41:
	.ascii	"_fntypes\000"
.LASF239:
	.ascii	"_FAT_fat_clusterToSector\000"
.LASF48:
	.ascii	"_size\000"
.LASF150:
	.ascii	"double\000"
.LASF8:
	.ascii	"_off_t\000"
.LASF278:
	.ascii	"pathEnd\000"
.LASF59:
	.ascii	"_nbuf\000"
.LASF97:
	.ascii	"_unused_rand\000"
.LASF269:
	.ascii	"_FAT_read_r\000"
.LASF134:
	.ascii	"st_rdev\000"
.LASF65:
	.ascii	"_flags2\000"
.LASF42:
	.ascii	"_is_cxa\000"
.LASF94:
	.ascii	"_seed\000"
.LASF102:
	.ascii	"_rand_next\000"
.LASF175:
	.ascii	"numberOfPages\000"
.LASF231:
	.ascii	"read\000"
.LASF56:
	.ascii	"_seek\000"
.LASF276:
	.ascii	"fileExists\000"
.LASF260:
	.ascii	"position\000"
.LASF70:
	.ascii	"_stderr\000"
.LASF117:
	.ascii	"_nmalloc\000"
.LASF58:
	.ascii	"_ubuf\000"
.LASF222:
	.ascii	"byte\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
