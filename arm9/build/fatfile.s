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
	.code 16
	.thumb_func
	.type	_FAT_disc_readSectors, %function
_FAT_disc_readSectors:
.LFB3:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/disc.h"
	.loc 1 76 0
	push	{r4, lr}
.LCFI0:
.LVL0:
	.loc 1 77 0
	ldr	r4, [r0, #16]
	mov	r0, r1
.LVL1:
	mov	r1, r2
.LVL2:
	mov	r2, r3
.LVL3:
	blx	r4
.LVL4:
	.loc 1 78 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE3:
	.size	_FAT_disc_readSectors, .-_FAT_disc_readSectors
	.align	2
	.code 16
	.thumb_func
	.type	_FAT_disc_writeSectors, %function
_FAT_disc_writeSectors:
.LFB4:
	.loc 1 86 0
	push	{r4, lr}
.LCFI1:
.LVL5:
	.loc 1 87 0
	ldr	r4, [r0, #20]
	mov	r0, r1
.LVL6:
	mov	r1, r2
.LVL7:
	mov	r2, r3
.LVL8:
	blx	r4
.LVL9:
	.loc 1 88 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE4:
	.size	_FAT_disc_writeSectors, .-_FAT_disc_writeSectors
	.align	2
	.code 16
	.thumb_func
	.type	_FAT_fat_clusterToSector, %function
_FAT_fat_clusterToSector:
.LFB15:
	.file 2 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/file_allocation_table.h"
	.loc 2 60 0
	push	{lr}
.LCFI2:
.LVL10:
	.loc 2 61 0
	cmp	r1, #1
	bls	.L6
	ldr	r3, [r0, #36]
	sub	r2, r1, #2
	mul	r2, r3
	ldr	r3, [r0, #28]
	add	r0, r2, r3
.LVL11:
	b	.L8
.LVL12:
.L6:
	ldr	r0, [r0, #16]
.LVL13:
.L8:
	.loc 2 62 0
	@ sp needed for prologue
	pop	{pc}
.LFE15:
	.size	_FAT_fat_clusterToSector, .-_FAT_fat_clusterToSector
	.align	2
	.code 16
	.thumb_func
	.type	u16_to_u8array, %function
u16_to_u8array:
.LFB18:
	.file 3 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/bit_ops.h"
	.loc 3 46 0
.LVL14:
	.loc 3 47 0
	strb	r2, [r0, r1]
	.loc 3 48 0
	add	r0, r0, r1
.LVL15:
	lsr	r2, r2, #8
.LVL16:
	.loc 3 46 0
	@ lr needed for prologue
	.loc 3 48 0
	strb	r2, [r0, #1]
	.loc 3 49 0
	@ sp needed for prologue
	bx	lr
.LFE18:
	.size	u16_to_u8array, .-u16_to_u8array
	.align	2
	.global	_FAT_fstat_r
	.code 16
	.thumb_func
	.type	_FAT_fstat_r, %function
_FAT_fstat_r:
.LFB27:
	.file 4 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/fatfile.c"
	.loc 4 864 0
	push	{r4, r5, r6, r7, lr}
.LCFI3:
.LVL17:
	sub	sp, sp, #324
.LCFI4:
	.loc 4 864 0
	mov	r7, r0
	mov	r4, r1
	mov	r5, r2
	.loc 4 871 0
	cmp	r1, #0
	beq	.L13
.LVL18:
	ldr	r3, .L21
	ldrb	r3, [r1, r3]
	cmp	r3, #0
	bne	.L15
.L13:
	.loc 4 873 0
	mov	r3, #9
	b	.L20
.L15:
	.loc 4 877 0
	ldr	r3, .L21+4
	.loc 4 880 0
	mov	r0, #134
	.loc 4 877 0
	ldr	r3, [r1, r3]
	.loc 4 880 0
	lsl	r0, r0, #3
	.loc 4 877 0
	str	r3, [sp, #4]
.LVL19:
	.loc 4 880 0
	add	r2, sp, #40
	add	r3, r1, r0
	ldmia	r3!, {r0, r1, r6}
	stmia	r2!, {r0, r1, r6}
.LVL20:
	.loc 4 881 0
	ldr	r1, .L21+8
	add	r2, sp, #52
	add	r3, r4, r1
	ldmia	r3!, {r0, r1, r6}
	stmia	r2!, {r0, r1, r6}
	.loc 4 883 0
	add	r1, sp, #8
	ldr	r0, [sp, #4]
	bl	_FAT_directory_entryFromPosition
	cmp	r0, #0
	bne	.L17
	.loc 4 884 0
	mov	r3, #5
.LVL21:
.L20:
	mov	r0, #1
	neg	r0, r0
	str	r3, [r7]
	b	.L16
.LVL22:
.L17:
	.loc 4 889 0
	ldr	r0, [sp, #4]
	add	r1, sp, #8
	mov	r2, r5
	bl	_FAT_directory_entryStat
	.loc 4 892 0
	ldr	r3, [r4, #4]
	.loc 4 893 0
	mov	r0, #0
	.loc 4 892 0
	str	r3, [r5, #4]
	.loc 4 893 0
	ldr	r3, [r4]
	str	r3, [r5, #24]
.LVL23:
.L16:
	.loc 4 896 0
	add	sp, sp, #324
	@ sp needed for prologue
.LVL24:
.LVL25:
.LVL26:
	pop	{r4, r5, r6, r7, pc}
.L22:
	.align	2
.L21:
	.word	1067
	.word	1068
	.word	1084
.LFE27:
	.size	_FAT_fstat_r, .-_FAT_fstat_r
	.align	2
	.global	_FAT_cluster_lookup
	.code 16
	.thumb_func
	.type	_FAT_cluster_lookup, %function
_FAT_cluster_lookup:
.LFB20:
	.loc 4 59 0
	push	{r4, r5, r6, r7, lr}
.LCFI5:
.LVL27:
	.loc 4 60 0
	lsl	r3, r1, #2
	add	r3, r3, r0
	.loc 4 59 0
	mov	r4, r0
	.loc 4 60 0
	ldr	r0, [r3, #36]
.LVL28:
	.loc 4 59 0
	sub	sp, sp, #12
.LCFI6:
	.loc 4 59 0
	mov	r7, r1
	.loc 4 60 0
	cmp	r0, #0
	bne	.L24
.LVL29:
	.loc 4 65 0
	ldr	r3, .L38
	.loc 4 66 0
	mov	r2, r4
	.loc 4 65 0
	ldr	r3, [r4, r3]
	.loc 4 66 0
	ldr	r1, [r4, #4]
.LVL30:
	add	r2, r2, #40
	mov	r5, #1
.LVL31:
	.loc 4 65 0
	str	r3, [sp]
.LVL32:
	b	.L26
.LVL33:
.L27:
	.loc 4 71 0
	ldmia	r2!, {r3}
	cmp	r3, #0
	bne	.L28
.L29:
	lsl	r3, r5, #2
.LVL34:
	add	r3, r3, r4
	add	r3, r3, #36
	str	r3, [sp, #4]
	b	.L30
.LVL35:
.L28:
	.loc 4 70 0
	add	r5, r5, #1
	mov	r1, r3
.L26:
	cmp	r5, r7
	bls	.L27
	b	.L29
.LVL36:
.L30:
	mov	r6, #0
	b	.L31
.L32:
	.loc 4 77 0
	ldr	r0, [sp]
	bl	_FAT_fat_nextCluster
.LVL37:
	.loc 4 76 0
	add	r6, r6, #1
	.loc 4 77 0
	mov	r1, r0
.LVL38:
.L31:
	.loc 4 76 0
	ldr	r3, .L38+4
	ldr	r3, [r4, r3]
	cmp	r6, r3
	bcc	.L32
	.loc 4 80 0
	ldr	r3, [sp, #4]
	add	r5, r5, #1
	stmia	r3!, {r1}
	str	r3, [sp, #4]
	.loc 4 81 0
	cmp	r5, r7
	bls	.L30
	.loc 4 83 0
	lsl	r3, r7, #2
	add	r3, r3, r4
	ldr	r0, [r3, #36]
.LVL39:
.L24:
	.loc 4 84 0
	add	sp, sp, #12
	@ sp needed for prologue
.LVL40:
.LVL41:
.LVL42:
.LVL43:
	pop	{r4, r5, r6, r7, pc}
.L39:
	.align	2
.L38:
	.word	1068
	.word	1060
.LFE20:
	.size	_FAT_cluster_lookup, .-_FAT_cluster_lookup
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.align	2
	.global	_FAT_seek_r
	.code 16
	.thumb_func
	.type	_FAT_seek_r, %function
_FAT_seek_r:
.LFB26:
	.loc 4 765 0
	push	{r4, r5, r6, r7, lr}
.LCFI7:
.LVL44:
	mov	r6, r1
	sub	sp, sp, #12
.LCFI8:
	.loc 4 765 0
	mov	r1, r3
.LVL45:
	.loc 4 774 0
	cmp	r6, #0
	beq	.L41
.LVL46:
	ldr	r3, .L70
	ldrb	r3, [r6, r3]
	cmp	r3, #0
	bne	.L43
.LVL47:
.L41:
	.loc 4 776 0
	mov	r3, #9
	b	.L69
.L43:
	.loc 4 780 0
	ldr	r3, .L70+4
	ldr	r3, [r6, r3]
	str	r3, [sp]
.LVL48:
	.loc 4 782 0
	cmp	r1, #1
	beq	.L47
	cmp	r1, #2
	beq	.L48
	cmp	r1, #0
	beq	.L46
	b	.L66
.L47:
	.loc 4 787 0
	ldr	r3, [r6, #8]
	b	.L67
.L48:
	.loc 4 790 0
	ldr	r3, [r6]
.L67:
	add	r7, r2, r3
.LVL49:
	b	.L49
.L66:
	.loc 4 793 0
	mov	r3, #22
.L69:
	mov	r7, #1
	neg	r7, r7
	str	r3, [r0]
	b	.L44
.LVL50:
.L46:
	.loc 4 794 0
	mov	r7, r2
.LVL51:
.L49:
	.loc 4 797 0
	cmp	r2, #0
	ble	.L50
	cmp	r7, #0
	bge	.L52
	.loc 4 798 0
	mov	r3, #139
	b	.L69
.L50:
	.loc 4 802 0
	cmp	r7, #0
	blt	.L66
.L52:
	.loc 4 808 0
	ldr	r3, [r6]
	cmp	r3, r7
	bls	.L55
.LBB2:
	.loc 4 814 0
	ldr	r2, [sp]
.LVL52:
	mov	r0, r7
.LVL53:
	ldr	r4, [r2, #40]
	mov	r1, r4
.LVL54:
	bl	__aeabi_uidivmod
	.loc 4 815 0
	ldr	r3, .L70+8
	mov	r2, r7
	.loc 4 814 0
	lsr	r1, r1, #9
	.loc 4 815 0
	and	r2, r2, r3
	.loc 4 814 0
	str	r1, [r6, #16]
	.loc 4 815 0
	cmp	r2, #0
	bge	.L57
	ldr	r3, .L70+12
	sub	r2, r2, #1
	orr	r2, r2, r3
	add	r2, r2, #1
.L57:
	str	r2, [r6, #20]
	.loc 4 835 0
	mov	r1, r4
	mov	r0, r7
	bl	__aeabi_uidiv
	ldr	r3, .L70+16
	mov	r5, r0
	ldr	r4, [r6, r3]
	.loc 4 836 0
	mov	r1, r4
	bl	__aeabi_uidivmod
	.loc 4 837 0
	mov	r0, r5
	.loc 4 836 0
	str	r1, [sp, #4]
.LVL55:
	.loc 4 837 0
	mov	r1, r4
	bl	__aeabi_uidiv
	mov	r1, r0
	mov	r0, r6
.LVL56:
	bl	_FAT_cluster_lookup
.LVL57:
	mov	r5, r0
.LVL58:
	.loc 4 839 0
	mov	r1, r5
	ldr	r0, [sp]
	bl	_FAT_fat_nextCluster
	b	.L68
.LVL59:
.L59:
	.loc 4 841 0
	ldr	r3, [sp, #4]
	.loc 4 843 0
	ldr	r0, [sp]
.LVL60:
	.loc 4 841 0
	sub	r3, r3, #1
	.loc 4 843 0
	mov	r1, r4
	.loc 4 841 0
	str	r3, [sp, #4]
	.loc 4 843 0
	bl	_FAT_fat_nextCluster
	mov	r5, r4
.L68:
	.loc 4 840 0
	ldr	r2, [sp, #4]
.LVL61:
	.loc 4 843 0
	mov	r4, r0
	.loc 4 840 0
	cmp	r2, #0
	beq	.L60
.LVL62:
	cmp	r0, #0
	beq	.L62
.LVL63:
	ldr	r3, .L70+20
	cmp	r0, r3
	bne	.L59
.L62:
	.loc 4 847 0
	mov	r3, #133
	lsl	r3, r3, #3
	ldr	r2, [r6, r3]
	ldr	r3, .L70+24
	tst	r2, r3
	beq	.L60
	.loc 4 849 0
	ldr	r2, [sp]
	ldr	r3, [r2, #36]
	str	r3, [r6, #16]
	.loc 4 850 0
	mov	r3, #0
	str	r3, [r6, #20]
.LVL64:
.L60:
	.loc 4 853 0
	str	r5, [r6, #12]
.LVL65:
.L55:
.LBE2:
	.loc 4 857 0
	str	r7, [r6, #8]
.L44:
	.loc 4 860 0
	mov	r0, r7
.LVL66:
	add	sp, sp, #12
	@ sp needed for prologue
.LVL67:
.LVL68:
.LVL69:
.LVL70:
	pop	{r4, r5, r6, r7, pc}
.L71:
	.align	2
.L70:
	.word	1067
	.word	1068
	.word	-2147483137
	.word	-512
	.word	1060
	.word	268435455
	.word	16776960
.LFE26:
	.size	_FAT_seek_r, .-_FAT_seek_r
	.align	2
	.global	_FAT_write_r
	.code 16
	.thumb_func
	.type	_FAT_write_r, %function
_FAT_write_r:
.LFB25:
	.loc 4 577 0
	push	{r4, r5, r6, r7, lr}
.LCFI9:
.LVL71:
	ldr	r4, .L163
	add	sp, sp, r4
.LCFI10:
	.loc 4 577 0
	str	r0, [sp, #24]
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	.loc 4 594 0
	cmp	r1, #0
	beq	.L73
.LVL72:
	ldr	r3, .L163+4
	ldrb	r3, [r1, r3]
	cmp	r3, #0
	beq	.L73
	ldr	r3, .L163+8
	ldrb	r3, [r1, r3]
	cmp	r3, #0
	bne	.L76
.LVL73:
.L73:
	.loc 4 595 0
	ldr	r0, [sp, #24]
	mov	r3, #9
	str	r3, [r0]
	mov	r0, #1
.LVL74:
	neg	r0, r0
	b	.L77
.LVL75:
.L76:
	.loc 4 599 0
	ldr	r3, .L163+12
	ldr	r1, [sp, #20]
.LVL76:
	ldr	r6, [r1, r3]
.LVL77:
	.loc 4 603 0
	sub	r3, r3, #2
	.loc 4 600 0
	ldr	r2, [r6, #4]
	str	r2, [sp, #28]
.LVL78:
	.loc 4 603 0
	ldrb	r3, [r1, r3]
	cmp	r3, #0
	beq	.L78
	.loc 4 604 0
	ldr	r3, [r1, #32]
	ldr	r0, [r1, #24]
	ldr	r1, [r1, #28]
	mov	r2, #1
	str	r3, [sp, #48]
	str	r0, [sp, #52]
	str	r1, [sp, #56]
	b	.L160
.LVL79:
.L78:
	.loc 4 608 0
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	bhi	.LCB684
	b	.L81	@long jump
.LCB684:
.LBB5:
.LBB6:
	.loc 4 498 0
	mov	r0, #128
	lsl	r0, r0, #2
	str	r0, [sp, #8]
	mov	r1, #0
	ldr	r2, [sp, #8]
	add	r0, sp, #64
	bl	memset
	.loc 4 502 0
	ldr	r1, [sp, #20]
	ldr	r4, .L163+16
	ldr	r0, [r1]
	.loc 4 503 0
	ldr	r1, [r6, #40]
	.loc 4 502 0
	mov	r2, r0
	and	r2, r2, r4
	str	r2, [sp, #60]
	.loc 4 503 0
	bl	__aeabi_uidivmod
.LBE6:
	.loc 4 504 0
	ldr	r3, [sp, #20]
.LBB7:
	.loc 4 503 0
	lsr	r7, r1, #9
.LBE7:
	.loc 4 504 0
	mov	r0, r6
	ldr	r1, [r3, #4]
	bl	_FAT_fat_lastCluster
	mov	r5, r0
.LBB8:
	.loc 4 506 0
	ldr	r0, [sp, #20]
	.loc 4 510 0
	ldr	r1, [sp, #60]
	.loc 4 506 0
	ldr	r2, [r0, #8]
	ldr	r3, [r0]
	sub	r2, r2, r3
	.loc 4 510 0
	add	r1, r2, r1
	.loc 4 506 0
	str	r2, [sp, #40]
.LVL80:
	.loc 4 510 0
	str	r1, [sp, #44]
	cmp	r1, r4
	bhi	.L83
.LBE8:
	.loc 4 511 0
	mov	r1, r5
	mov	r0, r6
	bl	_FAT_fat_clusterToSector
	ldr	r3, [sp, #40]
	add	r2, r0, r7
	str	r3, [sp]
	ldr	r0, [sp, #28]
	add	r1, sp, #64
	ldr	r3, [sp, #60]
	bl	_FAT_cache_writePartialSector
.LBB9:
	.loc 4 513 0
	ldr	r0, [sp, #44]
	b	.L159
.L83:
	.loc 4 515 0
	ldr	r1, [sp, #60]
	cmp	r1, #0
	ble	.L157
.LBE9:
	.loc 4 516 0
	mov	r1, r5
	mov	r0, r6
	bl	_FAT_fat_clusterToSector
	ldr	r1, [sp, #60]
	add	r2, r0, r7
	ldr	r0, [sp, #8]
.LBB10:
	.loc 4 521 0
	add	r7, r7, #1
.LBE10:
	.loc 4 516 0
	sub	r3, r0, r1
	str	r3, [sp]
	ldr	r0, [sp, #28]
	ldr	r3, [sp, #60]
	add	r1, sp, #64
	bl	_FAT_cache_writePartialSector
.LBB11:
	.loc 4 519 0
	ldr	r3, .L163+20
	ldr	r2, [sp, #44]
	.loc 4 521 0
	mov	r0, #0
	.loc 4 519 0
	add	r3, r2, r3
	str	r3, [sp, #40]
	.loc 4 521 0
	str	r0, [sp, #60]
	b	.L157
.L88:
	.loc 4 525 0
	cmp	r7, r2
	bcc	.L89
.LBE11:
	.loc 4 527 0
	mov	r0, r6
	mov	r1, r5
	bl	_FAT_fat_nextCluster
.LBB12:
	.loc 4 528 0
	ldr	r3, .L163+24
	cmp	r0, r3
	beq	.L91
	cmp	r0, #0
	bne	.L93
.L91:
.LBE12:
	.loc 4 530 0
	mov	r0, r6
	mov	r1, r5
	bl	_FAT_fat_linkFreeCluster
.LBB13:
	.loc 4 532 0
	cmp	r0, #0
	bne	.LCB819
	b	.L156	@long jump
.LCB819:
.L93:
	.loc 4 534 0
	mov	r5, r0
	mov	r7, #0
.L89:
.LBE13:
	.loc 4 541 0
	mov	r1, r5
	mov	r0, r6
	bl	_FAT_fat_clusterToSector
.LBB14:
	ldr	r4, [r6]
.LBE14:
	add	r1, r0, r7
	mov	r2, #1
	mov	r0, r4
	add	r3, sp, #64
	bl	_FAT_disc_writeSectors
.LBB15:
	.loc 4 544 0
	ldr	r1, [sp, #40]
	ldr	r2, .L163+20
	.loc 4 545 0
	add	r7, r7, #1
	.loc 4 544 0
	add	r1, r1, r2
	str	r1, [sp, #40]
.L157:
	.loc 4 524 0
	ldr	r3, .L163+16
	ldr	r0, [sp, #40]
	ldr	r2, [r6, #36]
	cmp	r0, r3
	bhi	.L88
	mov	r4, r5
	.loc 4 548 0
	cmp	r7, r2
	bcc	.L96
.LBE15:
	.loc 4 550 0
	mov	r1, r5
	mov	r0, r6
	bl	_FAT_fat_nextCluster
.LBB16:
	.loc 4 551 0
	ldr	r3, .L163+24
.LBE16:
	.loc 4 550 0
	mov	r5, r0
.LBB17:
	.loc 4 551 0
	cmp	r0, r3
	beq	.L98
	cmp	r0, #0
	bne	.L100
.L98:
.LBE17:
	.loc 4 553 0
	mov	r0, r6
	mov	r1, r4
	bl	_FAT_fat_linkFreeCluster
	mov	r5, r0
.LBB18:
	.loc 4 555 0
	cmp	r0, #0
	bne	.L100
	.loc 4 557 0
	ldr	r1, [sp, #24]
	mov	r3, #28
	str	r3, [r1]
	b	.L161
.L100:
	mov	r7, #0
.L96:
	.loc 4 564 0
	ldr	r2, [sp, #40]
	cmp	r2, #0
	beq	.L85
.LBE18:
	.loc 4 565 0
	mov	r1, r5
	mov	r0, r6
	bl	_FAT_fat_clusterToSector
	ldr	r3, [sp, #40]
	add	r2, r0, r7
	str	r3, [sp]
	ldr	r0, [sp, #28]
	add	r1, sp, #64
	mov	r3, #0
	bl	_FAT_cache_writePartialSector
.LBB19:
	.loc 4 567 0
	ldr	r0, [sp, #40]
.L159:
	str	r0, [sp, #60]
.L85:
	.loc 4 571 0
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #60]
	.loc 4 572 0
	ldr	r3, [r1, #8]
	.loc 4 571 0
	str	r5, [r1, #12]
	str	r7, [r1, #16]
	str	r2, [r1, #20]
	.loc 4 572 0
	str	r3, [r1]
.LVL81:
.L81:
	.loc 4 615 0
	ldr	r3, [sp, #20]
	ldr	r0, [sp, #20]
	ldr	r3, [r3, #20]
	ldr	r0, [r0, #12]
.LBE19:
.LBE5:
	.loc 4 618 0
	ldr	r2, [sp, #20]
.LBB20:
.LBB21:
	.loc 4 615 0
	ldr	r1, [sp, #20]
	str	r3, [sp, #48]
	str	r0, [sp, #52]
.LBE21:
.LBE20:
	.loc 4 618 0
	ldr	r3, [r2, #8]
	ldr	r0, [sp, #12]
.LBB22:
.LBB23:
	.loc 4 615 0
	ldr	r1, [r1, #16]
.LBE23:
.LBE22:
	.loc 4 618 0
	ldr	r2, [r2]
	add	r3, r0, r3
.LBB24:
.LBB25:
	.loc 4 615 0
	str	r1, [sp, #56]
.LBE25:
.LBE24:
	.loc 4 618 0
	cmp	r3, r2
	bls	.L103
	mov	r1, #1
	str	r1, [sp, #36]
.LVL82:
	b	.L80
.LVL83:
.L103:
	mov	r2, #0
.L160:
	str	r2, [sp, #36]
.LVL84:
.L80:
	.loc 4 624 0
	ldr	r3, [r6, #36]
	ldr	r0, [sp, #56]
	cmp	r0, r3
	bcs	.L105
	mov	r1, #1
	str	r1, [sp, #32]
.LVL85:
	b	.L107
.LVL86:
.L105:
	.loc 4 626 0
	mov	r0, r6
	ldr	r1, [sp, #52]
	bl	_FAT_fat_nextCluster
	.loc 4 627 0
	ldr	r3, .L163+24
.LVL87:
	cmp	r0, r3
	beq	.L108
	cmp	r0, #0
	bne	.L110
.L108:
	.loc 4 629 0
	mov	r0, r6
.LVL88:
	ldr	r1, [sp, #52]
	bl	_FAT_fat_linkFreeCluster
.LVL89:
	.loc 4 631 0
	cmp	r0, #0
	bne	.L110
	.loc 4 633 0
	ldr	r2, [sp, #24]
	mov	r3, #28
	str	r3, [r2]
	mov	r3, #0
	str	r3, [sp, #32]
.LVL90:
	str	r3, [sp, #56]
	b	.L107
.LVL91:
.L110:
	str	r0, [sp, #52]
	mov	r1, #0
	mov	r0, #1
.LVL92:
	str	r0, [sp, #32]
.LVL93:
	str	r1, [sp, #56]
.LVL94:
.L107:
	.loc 4 641 0
	mov	r3, #128
	ldr	r2, [sp, #48]
	lsl	r3, r3, #2
	sub	r4, r3, r2
.LVL95:
	.loc 4 642 0
	ldr	r3, [sp, #12]
	cmp	r4, r3
	bls	.L112
	.loc 4 643 0
	mov	r4, r3
.L112:
	.loc 4 646 0
	ldr	r5, .L163+16
	cmp	r4, r5
	bgt	.L114
	ldr	r0, [sp, #32]
.LVL96:
	cmp	r0, #0
	beq	.L114
	.loc 4 648 0
	ldr	r1, [sp, #52]
	mov	r0, r6
	bl	_FAT_fat_clusterToSector
	ldr	r1, [sp, #56]
	ldr	r3, [sp, #48]
	add	r2, r0, r1
	ldr	r0, [sp, #28]
	ldr	r1, [sp, #16]
	str	r4, [sp]
	bl	_FAT_cache_writePartialSector
	.loc 4 652 0
	ldr	r3, [sp, #16]
	.loc 4 653 0
	ldr	r0, [sp, #48]
	.loc 4 651 0
	ldr	r2, [sp, #12]
	.loc 4 652 0
	add	r3, r3, r4
	.loc 4 653 0
	add	r0, r0, r4
	.loc 4 651 0
	sub	r7, r2, r4
.LVL97:
	.loc 4 652 0
	str	r3, [sp, #16]
	.loc 4 653 0
	str	r0, [sp, #48]
	.loc 4 657 0
	cmp	r0, r5
	ble	.L117
	.loc 4 659 0
	ldr	r1, [sp, #56]
	mov	r2, #0
	add	r1, r1, #1
	str	r1, [sp, #56]
	str	r2, [sp, #48]
	b	.L117
.LVL98:
.L114:
	ldr	r7, [sp, #12]
.LVL99:
.L117:
	.loc 4 665 0
	ldr	r3, [r6, #36]
	ldr	r0, [sp, #56]
.LVL100:
	sub	r2, r3, r0
	lsl	r3, r2, #9
	cmp	r7, r3
	bls	.L119
	.loc 4 666 0
	mov	r5, r2
.LVL101:
	b	.L121
.LVL102:
.L119:
	.loc 4 668 0
	lsr	r5, r7, #9
.LVL103:
.L121:
	.loc 4 671 0
	cmp	r5, #0
	ble	.L122
	ldr	r1, [sp, #32]
	cmp	r1, #0
	beq	.L122
	.loc 4 672 0
	ldr	r1, [sp, #52]
	mov	r0, r6
	bl	_FAT_fat_clusterToSector
	ldr	r4, [r6]
.LVL104:
	ldr	r2, [sp, #56]
	ldr	r3, [sp, #16]
	add	r1, r0, r2
	mov	r0, r4
	mov	r2, r5
	bl	_FAT_disc_writeSectors
	.loc 4 674 0
	ldr	r0, [sp, #16]
	.loc 4 676 0
	ldr	r1, [sp, #56]
	.loc 4 674 0
	lsl	r3, r5, #9
	add	r0, r0, r3
	.loc 4 676 0
	add	r1, r1, r5
	.loc 4 674 0
	str	r0, [sp, #16]
	.loc 4 675 0
	sub	r7, r7, r3
	.loc 4 676 0
	str	r1, [sp, #56]
.LVL105:
.L122:
	.loc 4 679 0
	ldr	r3, [r6, #36]
	ldr	r2, [sp, #56]
	cmp	r2, r3
	bcc	.L158
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L158
	cmp	r7, #0
	beq	.L158
	.loc 4 681 0
	mov	r0, r6
	ldr	r1, [sp, #52]
	bl	_FAT_fat_nextCluster
	.loc 4 682 0
	ldr	r3, .L163+24
.LVL106:
	cmp	r0, r3
	beq	.L129
	cmp	r0, #0
	bne	.L131
.L129:
	.loc 4 684 0
	mov	r0, r6
.LVL107:
	ldr	r1, [sp, #52]
	bl	_FAT_fat_linkFreeCluster
.LVL108:
	.loc 4 686 0
	cmp	r0, #0
	bne	.L131
	.loc 4 688 0
	ldr	r0, [sp, #24]
.LVL109:
	mov	r1, #0
	mov	r3, #28
	str	r3, [r0]
	str	r1, [sp, #32]
	str	r1, [sp, #56]
	b	.L158
.LVL110:
.L131:
	mov	r2, #0
	str	r0, [sp, #52]
	str	r2, [sp, #56]
	b	.L158
.LVL111:
.L133:
	.loc 4 697 0
	ldr	r1, [sp, #52]
	mov	r0, r6
	bl	_FAT_fat_clusterToSector
	ldr	r4, [r6]
.LVL112:
	mov	r1, r0
	ldr	r2, [r6, #36]
	mov	r0, r4
	ldr	r3, [sp, #16]
	bl	_FAT_disc_writeSectors
	.loc 4 699 0
	ldr	r4, [r6, #40]
	.loc 4 700 0
	sub	r7, r7, r4
	.loc 4 701 0
	cmp	r7, #0
	beq	.L134
	.loc 4 702 0
	mov	r0, r6
	ldr	r1, [sp, #52]
	bl	_FAT_fat_nextCluster
	.loc 4 703 0
	ldr	r3, .L163+24
.LVL113:
	cmp	r0, r3
	beq	.L136
	cmp	r0, #0
	bne	.L138
.L136:
	.loc 4 705 0
	mov	r0, r6
.LVL114:
	ldr	r1, [sp, #52]
	bl	_FAT_fat_linkFreeCluster
.LVL115:
	.loc 4 707 0
	cmp	r0, #0
	bne	.L138
	.loc 4 709 0
	ldr	r0, [sp, #24]
.LVL116:
	mov	r3, #28
	mov	r1, #0
	str	r3, [r0]
	str	r1, [sp, #32]
	b	.L140
.LVL117:
.L138:
	str	r0, [sp, #52]
	b	.L140
.L164:
	.align	2
.L163:
	.word	-580
	.word	1067
	.word	1065
	.word	1068
	.word	511
	.word	-512
	.word	268435455
.LVL118:
.L134:
	.loc 4 716 0
	ldr	r2, [r6, #36]
	str	r2, [sp, #56]
.LVL119:
.L140:
	.loc 4 699 0
	ldr	r3, [sp, #16]
	add	r3, r3, r4
	str	r3, [sp, #16]
.LVL120:
.L158:
	.loc 4 696 0
	ldr	r3, [r6, #40]
	cmp	r7, r3
	bcc	.L141
	ldr	r0, [sp, #32]
.LVL121:
	cmp	r0, #0
	bne	.L133
.LVL122:
.L141:
	.loc 4 721 0
	lsr	r5, r7, #9
.LVL123:
	.loc 4 722 0
	cmp	r5, #0
	ble	.L143
	ldr	r1, [sp, #32]
	cmp	r1, #0
	beq	.L143
	.loc 4 723 0
	ldr	r1, [sp, #52]
	mov	r0, r6
.LVL124:
	bl	_FAT_fat_clusterToSector
	ldr	r4, [r6]
.LVL125:
	mov	r1, r0
	mov	r2, r5
	ldr	r3, [sp, #16]
	mov	r0, r4
	bl	_FAT_disc_writeSectors
	.loc 4 725 0
	ldr	r2, [sp, #16]
	lsl	r3, r5, #9
	add	r2, r2, r3
	.loc 4 726 0
	sub	r7, r7, r3
	.loc 4 727 0
	ldr	r3, [sp, #56]
	.loc 4 725 0
	str	r2, [sp, #16]
	.loc 4 727 0
	add	r3, r3, r5
	str	r3, [sp, #56]
.LVL126:
.L143:
	.loc 4 731 0
	cmp	r7, #0
	beq	.L146
	ldr	r0, [sp, #32]
.LVL127:
	cmp	r0, #0
	beq	.L146
	.loc 4 732 0
	ldr	r1, [sp, #36]
	cmp	r1, #0
	beq	.L149
	.loc 4 733 0
	ldr	r1, [sp, #52]
	mov	r0, r6
	bl	_FAT_fat_clusterToSector
	ldr	r3, [sp, #56]
	ldr	r1, [sp, #16]
	add	r2, r0, r3
	ldr	r0, [sp, #28]
	mov	r3, #0
	str	r7, [sp]
	bl	_FAT_cache_eraseWritePartialSector
	b	.L151
.L149:
	.loc 4 736 0
	ldr	r1, [sp, #52]
	mov	r0, r6
	bl	_FAT_fat_clusterToSector
	mov	r2, r0
	ldr	r0, [sp, #56]
	ldr	r1, [sp, #16]
	add	r2, r2, r0
	mov	r3, #0
	ldr	r0, [sp, #28]
	str	r7, [sp]
	bl	_FAT_cache_writePartialSector
.L151:
	.loc 4 739 0
	ldr	r1, [sp, #48]
	add	r1, r1, r7
	str	r1, [sp, #48]
	mov	r7, #0
.LVL128:
.L146:
	.loc 4 748 0
	ldr	r1, [sp, #20]
	ldr	r3, .L165
	.loc 4 745 0
	ldr	r2, [sp, #12]
	.loc 4 748 0
	ldrb	r3, [r1, r3]
	.loc 4 745 0
	sub	r0, r2, r7
.LVL129:
	ldr	r2, [r1]
	.loc 4 748 0
	cmp	r3, #0
	beq	.L152
	.loc 4 750 0
	ldr	r3, [sp, #48]
	str	r3, [r1, #32]
	ldr	r3, [sp, #52]
	str	r3, [r1, #24]
	ldr	r3, [sp, #56]
	str	r3, [r1, #28]
	.loc 4 751 0
	add	r3, r2, r0
	b	.L162
.LVL130:
.L156:
.LBB26:
.LBB27:
	.loc 4 534 0
	ldr	r0, [sp, #24]
	mov	r3, #28
	str	r3, [r0]
.L161:
	mov	r0, #0
.LVL131:
	b	.L77
.LVL132:
.L152:
.LBE27:
.LBE26:
	.loc 4 754 0
	ldr	r3, [sp, #20]
	ldr	r1, [sp, #48]
	str	r1, [r3, #20]
	ldr	r1, [sp, #52]
	str	r1, [r3, #12]
	ldr	r1, [sp, #56]
	str	r1, [r3, #16]
	.loc 4 755 0
	mov	r1, r3
	ldr	r3, [r3, #8]
	add	r3, r3, r0
	str	r3, [r1, #8]
	.loc 4 756 0
	cmp	r2, r3
	bcs	.L77
.L162:
	.loc 4 757 0
	str	r3, [r1]
.LVL133:
.L77:
	.loc 4 762 0
	mov	r3, #145
	lsl	r3, r3, #2
	add	sp, sp, r3
.LVL134:
	@ sp needed for prologue
.LVL135:
.LVL136:
.LVL137:
.LVL138:
	pop	{r4, r5, r6, r7, pc}
.L166:
	.align	2
.L165:
	.word	1066
.LFE25:
	.size	_FAT_write_r, .-_FAT_write_r
	.align	2
	.global	_FAT_read_r
	.code 16
	.thumb_func
	.type	_FAT_read_r, %function
_FAT_read_r:
.LFB23:
	.loc 4 349 0
	push	{r4, r5, r6, r7, lr}
.LCFI11:
.LVL139:
	sub	sp, sp, #52
.LCFI12:
	.loc 4 349 0
	str	r0, [sp, #24]
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	.loc 4 365 0
	cmp	r1, #0
	beq	.L168
.LVL140:
	ldr	r3, .L215
	ldrb	r3, [r1, r3]
	cmp	r3, #0
	beq	.L168
	mov	r3, #133
	lsl	r3, r3, #3
	ldrb	r3, [r1, r3]
	cmp	r3, #0
	bne	.L171
.LVL141:
.L168:
	.loc 4 366 0
	ldr	r0, [sp, #24]
	mov	r3, #9
	str	r3, [r0]
	b	.L214
.LVL142:
.L171:
	.loc 4 371 0
	ldr	r2, [sp, #20]
	ldr	r1, [r2, #8]
.LVL143:
	ldr	r2, [r2]
	cmp	r1, r2
	bcc	.L173
.LVL144:
.L214:
	mov	r0, #0
.LVL145:
	b	.L172
.LVL146:
.L173:
	.loc 4 376 0
	ldr	r0, [sp, #12]
	add	r3, r0, r1
	cmp	r3, r2
	bls	.L175
	.loc 4 377 0
	ldr	r0, [sp, #24]
	mov	r3, #139
	.loc 4 378 0
	sub	r2, r2, r1
	.loc 4 377 0
	str	r3, [r0]
	.loc 4 378 0
	str	r2, [sp, #12]
.L175:
	.loc 4 383 0
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #20]
	ldr	r3, [r3, #20]
	ldr	r2, [r2, #12]
	str	r3, [sp, #44]
	ldr	r1, [sp, #20]
	.loc 4 385 0
	ldr	r3, .L215+4
	ldr	r0, [sp, #20]
	.loc 4 383 0
	ldr	r1, [r1, #16]
	.loc 4 385 0
	ldr	r7, [r0, r3]
.LVL147:
	.loc 4 383 0
	str	r2, [sp, #40]
	.loc 4 389 0
	mov	r3, #128
	ldr	r2, [sp, #44]
	lsl	r3, r3, #2
	.loc 4 383 0
	str	r1, [sp, #36]
	.loc 4 389 0
	sub	r4, r3, r2
.LVL148:
	.loc 4 386 0
	ldr	r1, [r7, #4]
	.loc 4 390 0
	ldr	r3, [sp, #12]
	.loc 4 386 0
	str	r1, [sp, #28]
.LVL149:
	.loc 4 390 0
	cmp	r4, r3
	bls	.L177
	.loc 4 391 0
	mov	r4, r3
.L177:
	.loc 4 394 0
	ldr	r5, .L215+8
	cmp	r4, r5
	ble	.L179
	ldr	r6, [sp, #12]
.LVL150:
	b	.L181
.LVL151:
.L179:
	.loc 4 396 0
	ldr	r1, [sp, #40]
	mov	r0, r7
	bl	_FAT_fat_clusterToSector
	mov	r2, r0
	ldr	r0, [sp, #36]
	ldr	r1, [sp, #16]
	add	r2, r2, r0
	ldr	r3, [sp, #44]
	ldr	r0, [sp, #28]
	str	r4, [sp]
	bl	_FAT_cache_readPartialSector
	.loc 4 400 0
	ldr	r2, [sp, #16]
	.loc 4 402 0
	ldr	r3, [sp, #44]
	.loc 4 399 0
	ldr	r1, [sp, #12]
	.loc 4 400 0
	add	r2, r2, r4
	.loc 4 402 0
	add	r3, r3, r4
	.loc 4 399 0
	sub	r6, r1, r4
.LVL152:
	.loc 4 400 0
	str	r2, [sp, #16]
	.loc 4 402 0
	str	r3, [sp, #44]
	.loc 4 403 0
	cmp	r3, r5
	ble	.L181
	.loc 4 405 0
	ldr	r0, [sp, #36]
	mov	r1, #0
	add	r0, r0, #1
	str	r0, [sp, #36]
	str	r1, [sp, #44]
.L181:
	.loc 4 411 0
	ldr	r3, [r7, #36]
	ldr	r0, [sp, #36]
	sub	r2, r3, r0
	lsl	r3, r2, #9
	cmp	r6, r3
	bls	.L183
	.loc 4 412 0
	mov	r5, r2
.LVL153:
	b	.L185
.LVL154:
.L183:
	.loc 4 414 0
	lsr	r5, r6, #9
.LVL155:
.L185:
	.loc 4 417 0
	cmp	r5, #0
	ble	.L186
	.loc 4 418 0
	ldr	r1, [sp, #40]
	mov	r0, r7
	bl	_FAT_fat_clusterToSector
	ldr	r4, [r7]
.LVL156:
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #16]
	add	r1, r0, r2
	mov	r0, r4
	mov	r2, r5
	bl	_FAT_disc_readSectors
	.loc 4 420 0
	ldr	r0, [sp, #16]
	.loc 4 422 0
	ldr	r1, [sp, #36]
	.loc 4 420 0
	lsl	r3, r5, #9
	add	r0, r0, r3
	.loc 4 422 0
	add	r1, r1, r5
	.loc 4 420 0
	str	r0, [sp, #16]
	.loc 4 421 0
	sub	r6, r6, r3
	.loc 4 422 0
	str	r1, [sp, #36]
.LVL157:
.L186:
	.loc 4 427 0
	ldr	r3, [r7, #36]
	ldr	r2, [sp, #36]
	cmp	r2, r3
	bcs	.L188
	mov	r3, #1
	str	r3, [sp, #32]
.LVL158:
	b	.L212
.LVL159:
.L188:
	.loc 4 428 0
	mov	r0, r7
	ldr	r1, [sp, #40]
	bl	_FAT_fat_nextCluster
	.loc 4 429 0
	cmp	r6, #0
	bne	.L191
	ldr	r3, .L215+12
.LVL160:
	cmp	r0, r3
	bne	.L191
	.loc 4 430 0
	ldr	r0, [r7, #36]
.LVL161:
	mov	r1, #1
	str	r0, [sp, #36]
	b	.L213
.LVL162:
.L191:
	.loc 4 431 0
	cmp	r0, #0
	beq	.L194
	mov	r2, #1
	mov	r3, #0
	str	r0, [sp, #40]
	str	r2, [sp, #32]
.LVL163:
	str	r3, [sp, #36]
	b	.L212
.LVL164:
.L194:
	.loc 4 432 0
	ldr	r0, [sp, #24]
.LVL165:
	mov	r3, #5
	str	r3, [r0]
	mov	r1, #0
.L213:
	str	r1, [sp, #32]
.LVL166:
	b	.L212
.LVL167:
.L196:
	.loc 4 442 0
	ldr	r1, [sp, #40]
	mov	r0, r7
.LVL168:
	bl	_FAT_fat_clusterToSector
	ldr	r4, [r7]
.LVL169:
	mov	r1, r0
	ldr	r2, [r7, #36]
	mov	r0, r4
	ldr	r3, [sp, #16]
	bl	_FAT_disc_readSectors
	.loc 4 443 0
	ldr	r4, [r7, #40]
	.loc 4 447 0
	mov	r0, r7
	.loc 4 444 0
	sub	r6, r6, r4
	.loc 4 447 0
	ldr	r1, [sp, #40]
	bl	_FAT_fat_nextCluster
	.loc 4 448 0
	cmp	r6, #0
	bne	.L197
	ldr	r3, .L215+12
.LVL170:
	cmp	r0, r3
	bne	.L197
	.loc 4 449 0
	ldr	r2, [r7, #36]
	str	r2, [sp, #36]
	b	.L200
.L197:
	.loc 4 450 0
	cmp	r0, #0
	beq	.L201
	mov	r3, #0
	str	r0, [sp, #40]
	str	r3, [sp, #36]
	b	.L200
.L201:
	.loc 4 451 0
	ldr	r0, [sp, #24]
.LVL171:
	mov	r3, #5
	mov	r1, #0
	str	r3, [r0]
	str	r1, [sp, #32]
.LVL172:
.L200:
	.loc 4 443 0
	ldr	r2, [sp, #16]
	add	r2, r2, r4
	str	r2, [sp, #16]
.LVL173:
.L212:
	.loc 4 441 0
	ldr	r3, [r7, #40]
	cmp	r6, r3
	bcc	.L203
	ldr	r3, [sp, #32]
	cmp	r3, #0
	bne	.L196
.L203:
	.loc 4 460 0
	lsr	r5, r6, #9
.LVL174:
	.loc 4 461 0
	cmp	r5, #0
	ble	.L205
	ldr	r0, [sp, #32]
.LVL175:
	cmp	r0, #0
	beq	.L205
	.loc 4 462 0
	ldr	r1, [sp, #40]
	mov	r0, r7
	bl	_FAT_fat_clusterToSector
	ldr	r4, [r7]
.LVL176:
	mov	r1, r0
	mov	r2, r5
	ldr	r3, [sp, #16]
.LVL177:
	mov	r0, r4
	bl	_FAT_disc_readSectors
.LVL178:
	.loc 4 464 0
	ldr	r1, [sp, #16]
	.loc 4 466 0
	ldr	r2, [sp, #36]
	.loc 4 464 0
	lsl	r3, r5, #9
	add	r1, r1, r3
	.loc 4 466 0
	add	r2, r2, r5
	.loc 4 464 0
	str	r1, [sp, #16]
	.loc 4 465 0
	sub	r6, r6, r3
	.loc 4 466 0
	str	r2, [sp, #36]
.LVL179:
.L205:
	.loc 4 471 0
	cmp	r6, #0
	beq	.L208
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L208
	.loc 4 472 0
	ldr	r1, [sp, #40]
	mov	r0, r7
.LVL180:
	bl	_FAT_fat_clusterToSector
	mov	r2, r0
	ldr	r0, [sp, #36]
	ldr	r1, [sp, #16]
	add	r2, r2, r0
	mov	r3, #0
	ldr	r0, [sp, #28]
	str	r6, [sp]
	bl	_FAT_cache_readPartialSector
	.loc 4 474 0
	ldr	r1, [sp, #44]
	add	r1, r1, r6
	str	r1, [sp, #44]
	mov	r6, #0
.LVL181:
.L208:
	.loc 4 482 0
	ldr	r1, [sp, #20]
	ldr	r3, [sp, #36]
	.loc 4 479 0
	ldr	r2, [sp, #12]
	.loc 4 482 0
	str	r3, [r1, #16]
	ldr	r3, [sp, #44]
	.loc 4 479 0
	sub	r0, r2, r6
.LVL182:
	.loc 4 482 0
	str	r3, [r1, #20]
	.loc 4 483 0
	ldr	r3, [r1, #8]
	.loc 4 482 0
	ldr	r2, [sp, #40]
	.loc 4 483 0
	add	r3, r3, r0
	.loc 4 482 0
	str	r2, [r1, #12]
	.loc 4 483 0
	str	r3, [r1, #8]
.LVL183:
.L172:
	.loc 4 485 0
	add	sp, sp, #52
.LVL184:
	@ sp needed for prologue
.LVL185:
.LVL186:
.LVL187:
.LVL188:
	pop	{r4, r5, r6, r7, pc}
.L216:
	.align	2
.L215:
	.word	1067
	.word	1068
	.word	511
	.word	268435455
.LFE23:
	.size	_FAT_read_r, .-_FAT_read_r
	.align	2
	.global	_FAT_close_r
	.code 16
	.thumb_func
	.type	_FAT_close_r, %function
_FAT_close_r:
.LFB22:
	.loc 4 302 0
	push	{r4, r5, r6, r7, lr}
.LCFI13:
.LVL189:
	sub	sp, sp, #52
.LCFI14:
	.loc 4 306 0
	ldr	r3, .L226
	.loc 4 302 0
	str	r0, [sp, #12]
.LVL190:
	.loc 4 306 0
	ldrb	r3, [r1, r3]
.LVL191:
	.loc 4 302 0
	mov	r7, r1
.LVL192:
	.loc 4 306 0
	cmp	r3, #0
	bne	.L218
.LVL193:
	.loc 4 307 0
	mov	r3, #9
	str	r3, [r0]
	b	.L225
.L218:
	.loc 4 310 0
	ldr	r3, .L226+4
.LVL194:
	ldrb	r3, [r1, r3]
	cmp	r3, #0
	beq	.L221
.LVL195:
	.loc 4 312 0
	ldr	r1, .L226+8
.LVL196:
	ldr	r2, .L226+12
	ldr	r0, [r7, r1]
	ldr	r1, [r7, r2]
	ldr	r5, [r0, #4]
	bl	_FAT_fat_clusterToSector
	mov	r6, #136
	lsl	r6, r6, #3
	ldr	r3, [r7, r6]
	ldr	r1, .L226+16
	add	r2, r0, r3
	ldr	r3, [r7, r1]
	add	r4, sp, #16
	mov	r1, #32
	lsl	r3, r3, #5
	str	r1, [sp]
	mov	r0, r5
	mov	r1, r4
	bl	_FAT_cache_readPartialSector
	.loc 4 318 0
	ldr	r3, [r7]
	.loc 4 321 0
	mov	r0, r4
.LBB30:
.LBB31:
	.loc 3 53 0
	lsr	r2, r3, #8
	.loc 3 52 0
	strb	r3, [r4, #28]
	.loc 3 53 0
	strb	r2, [r4, #29]
	.loc 3 54 0
	lsr	r2, r3, #16
	.loc 3 55 0
	lsr	r3, r3, #24
	strb	r3, [r4, #31]
	.loc 3 54 0
	strb	r2, [r4, #30]
.LBE31:
.LBE30:
	.loc 4 321 0
	ldrh	r2, [r7, #4]
	mov	r1, #26
	bl	u16_to_u8array
	.loc 4 322 0
	ldrh	r2, [r7, #6]
	mov	r1, #20
	mov	r0, r4
	bl	u16_to_u8array
	.loc 4 325 0
	bl	_FAT_filetime_getTimeFromRTC
	mov	r1, #22
	mov	r2, r0
	mov	r0, r4
	bl	u16_to_u8array
	.loc 4 326 0
	bl	_FAT_filetime_getDateFromRTC
	mov	r1, #24
	mov	r2, r0
	mov	r0, r4
	bl	u16_to_u8array
	.loc 4 329 0
	bl	_FAT_filetime_getDateFromRTC
	mov	r1, #18
	mov	r2, r0
	mov	r0, r4
	bl	u16_to_u8array
	.loc 4 332 0
	ldr	r2, .L226+8
	ldr	r3, .L226+12
	ldr	r0, [r7, r2]
	ldr	r1, [r7, r3]
	ldr	r5, [r0, #4]
	bl	_FAT_fat_clusterToSector
	ldr	r3, [r7, r6]
	ldr	r1, .L226+16
	add	r2, r0, r3
	ldr	r3, [r7, r1]
	mov	r1, #32
	lsl	r3, r3, #5
	str	r1, [sp]
	mov	r0, r5
	mov	r1, r4
	bl	_FAT_cache_writePartialSector
	.loc 4 337 0
	ldr	r2, .L226+8
	ldr	r3, [r7, r2]
	ldr	r0, [r3, #4]
	bl	_FAT_cache_flush
	cmp	r0, #0
	bne	.L221
	.loc 4 338 0
	ldr	r1, [sp, #12]
	mov	r3, #5
	str	r3, [r1]
.LVL197:
.L225:
	mov	r0, #1
	neg	r0, r0
	b	.L220
.LVL198:
.L221:
	.loc 4 343 0
	ldr	r3, .L226
	mov	r2, #0
	strb	r2, [r7, r3]
	.loc 4 344 0
	add	r3, r3, #1
	ldr	r2, [r7, r3]
	mov	r0, #0
	ldr	r3, [r2, #64]
	sub	r3, r3, #1
	str	r3, [r2, #64]
.LVL199:
.L220:
	.loc 4 347 0
	add	sp, sp, #52
	@ sp needed for prologue
.LVL200:
	pop	{r4, r5, r6, r7, pc}
.L227:
	.align	2
.L226:
	.word	1067
	.word	1065
	.word	1068
	.word	1084
	.word	1092
.LFE22:
	.size	_FAT_close_r, .-_FAT_close_r
	.align	2
	.global	_FAT_open_r
	.code 16
	.thumb_func
	.type	_FAT_open_r, %function
_FAT_open_r:
.LFB21:
	.loc 4 86 0
	push	{r4, r5, r6, r7, lr}
.LCFI15:
.LVL201:
	sub	sp, sp, #332
.LCFI16:
	.loc 4 86 0
	str	r0, [sp, #12]
	.loc 4 93 0
	mov	r0, r2
.LVL202:
	.loc 4 86 0
	mov	r5, r1
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	.loc 4 93 0
	bl	_FAT_partition_getPartitionFromPath
.LVL203:
	mov	r7, r0
.LVL204:
	.loc 4 99 0
	cmp	r0, #0
	bne	.L229
.LVL205:
	.loc 4 100 0
	mov	r3, #19
	b	.L284
.L229:
	.loc 4 105 0
	ldr	r0, [sp, #8]
.LVL206:
	mov	r1, #58
	bl	strchr
	cmp	r0, #0
	beq	.L232
	.loc 4 106 0
	add	r0, r0, #1
	str	r0, [sp, #8]
	.loc 4 108 0
	mov	r1, #58
	bl	strchr
	cmp	r0, #0
	beq	.L232
	.loc 4 109 0
	mov	r3, #22
.LVL207:
.L287:
	ldr	r1, [sp, #12]
	str	r3, [r1]
.LVL208:
.L283:
	mov	r0, #1
.LVL209:
	neg	r0, r0
	b	.L231
.LVL210:
.L232:
	.loc 4 114 0
	ldr	r1, [sp, #4]
	mov	r3, #3
	and	r1, r3
	bne	.L235
	.loc 4 116 0
	mov	r3, #133
	lsl	r3, r3, #3
	mov	r2, #1
	strb	r2, [r5, r3]
	.loc 4 117 0
	ldr	r3, .L289
	strb	r1, [r5, r3]
	.loc 4 118 0
	add	r3, r3, #1
	strb	r1, [r5, r3]
	b	.L237
.L235:
	.loc 4 119 0
	cmp	r1, #1
	bne	.L238
	.loc 4 121 0
	mov	r3, #133
	lsl	r3, r3, #3
	mov	r2, #0
	strb	r2, [r5, r3]
	.loc 4 122 0
	ldr	r3, .L289
	strb	r1, [r5, r3]
	b	.L282
.L238:
	.loc 4 124 0
	cmp	r1, #2
	bne	.L240
	.loc 4 126 0
	mov	r3, #133
	mov	r2, #1
	lsl	r3, r3, #3
	strb	r2, [r5, r3]
	.loc 4 127 0
	ldr	r3, .L289
	strb	r2, [r5, r3]
	.loc 4 128 0
	mov	r2, #0
.L282:
	add	r3, r3, #1
	strb	r2, [r5, r3]
	b	.L237
.L240:
	.loc 4 130 0
	mov	r3, #13
	b	.L285
.L237:
	.loc 4 135 0
	ldr	r3, .L289
	ldrb	r3, [r5, r3]
	cmp	r3, #0
	beq	.L242
	ldrb	r3, [r7, #8]
	cmp	r3, #0
	bne	.L288
.L242:
	.loc 4 143 0
	add	r4, sp, #16
	ldr	r2, [sp, #8]
	mov	r3, #0
	mov	r0, r7
	mov	r1, r4
	bl	_FAT_directory_entryFromPath
	.loc 4 146 0
	mov	r3, #160
	ldr	r2, [sp, #4]
	lsl	r3, r3, #4
	and	r2, r2, r3
	cmp	r2, r3
	bne	.L245
.LVL211:
	cmp	r0, #0
	beq	.L247
	.loc 4 147 0
	mov	r3, #17
.LVL212:
.L284:
	ldr	r0, [sp, #12]
.LVL213:
	str	r3, [r0]
	b	.L283
.L245:
.LVL214:
	.loc 4 154 0
	cmp	r0, #0
	beq	.L247
	ldrb	r3, [r4, #11]
	lsl	r1, r3, #27
	bpl	.L250
	.loc 4 155 0
	mov	r3, #21
	b	.L285
.L247:
	.loc 4 163 0
	ldr	r3, [sp, #4]
	lsl	r3, r3, #22
	bpl	.L252
	.loc 4 164 0
	ldrb	r3, [r7, #8]
	cmp	r3, #0
	beq	.L254
.L288:
	.loc 4 166 0
	mov	r3, #30
	b	.L286
.L254:
	.loc 4 171 0
	ldr	r0, [sp, #8]
.LVL215:
	mov	r1, #47
	bl	strrchr
	mov	r4, r0
.LVL216:
	.loc 4 172 0
	cmp	r0, #0
	bne	.L256
.LVL217:
	.loc 4 174 0
	ldr	r6, [r7, #60]
.LVL218:
	ldr	r1, [sp, #8]
.LVL219:
	b	.L258
.LVL220:
.L256:
	.loc 4 179 0
	add	r6, sp, #16
	mov	r0, r7
.LVL221:
	mov	r1, r6
	ldr	r2, [sp, #8]
	mov	r3, r4
	bl	_FAT_directory_entryFromPath
	cmp	r0, #0
	beq	.L259
	ldrb	r3, [r6, #11]
	lsl	r0, r3, #27
	bmi	.L261
.L259:
	.loc 4 181 0
	mov	r3, #20
	b	.L287
.L261:
	.loc 4 184 0
	mov	r0, r6
	bl	_FAT_directory_entryGetCluster
	.loc 4 186 0
	add	r1, r4, #1
.LVL222:
	.loc 4 184 0
	mov	r6, r0
.LVL223:
.L258:
	.loc 4 189 0
	add	r4, sp, #16
.LVL224:
	mov	r2, #255
	add	r0, sp, #72
.LVL225:
	bl	strncpy
.LVL226:
	.loc 4 190 0
	mov	r1, #0
	mov	r2, #32
	mov	r0, r4
	bl	memset
	.loc 4 193 0
	mov	r3, #0
	strb	r3, [r4, #13]
	.loc 4 194 0
	bl	_FAT_filetime_getTimeFromRTC
	mov	r1, #14
	mov	r2, r0
	mov	r0, r4
	bl	u16_to_u8array
	.loc 4 195 0
	bl	_FAT_filetime_getDateFromRTC
	mov	r1, #16
	mov	r2, r0
	mov	r0, r4
	bl	u16_to_u8array
	.loc 4 197 0
	mov	r0, r7
	mov	r1, r4
	mov	r2, r6
	bl	_FAT_directory_addEntry
	cmp	r0, #0
	bne	.L250
	.loc 4 198 0
	mov	r3, #28
.LVL227:
.L285:
	ldr	r2, [sp, #12]
	str	r3, [r2]
	b	.L283
.LVL228:
.L252:
	.loc 4 203 0
	mov	r3, #2
.L286:
	ldr	r4, [sp, #12]
	str	r3, [r4]
	b	.L283
.LVL229:
.L250:
	.loc 4 210 0
	add	r0, sp, #16
.LVL230:
	ldrb	r3, [r0, #29]
	ldrb	r1, [r0, #28]
	lsl	r3, r3, #8
	orr	r1, r1, r3
	ldrb	r2, [r0, #31]
	ldrb	r3, [r0, #30]
	lsl	r2, r2, #24
	lsl	r3, r3, #16
	orr	r2, r2, r3
	orr	r1, r1, r2
	.loc 4 223 0
	ldr	r3, .L289
	.loc 4 210 0
	str	r1, [r5]
	.loc 4 223 0
	ldrb	r3, [r5, r3]
	cmp	r3, #0
	beq	.L263
	ldrb	r3, [r0, #11]
	lsl	r0, r3, #31
	bpl	.L263
	.loc 4 224 0
	mov	r3, #30
	b	.L287
.L263:
	.loc 4 229 0
	ldr	r3, .L289+4
	.loc 4 233 0
	add	r0, sp, #16
	.loc 4 229 0
	str	r7, [r5, r3]
	.loc 4 233 0
	bl	_FAT_directory_entryGetCluster
	.loc 4 238 0
	ldr	r2, [sp, #4]
	.loc 4 233 0
	mov	r1, r0
	str	r0, [r5, #4]
	.loc 4 238 0
	lsl	r2, r2, #21
	bpl	.L266
	ldr	r3, .L289
	ldrb	r3, [r5, r3]
	cmp	r3, #0
	beq	.L266
	cmp	r0, #0
	beq	.L269
	.loc 4 239 0
	mov	r0, r7
	bl	_FAT_fat_clearLinks
	.loc 4 240 0
	mov	r3, #0
	str	r3, [r5, #4]
	.loc 4 241 0
	str	r3, [r5]
.L266:
	.loc 4 247 0
	ldr	r3, [r5, #4]
	cmp	r3, #0
	bne	.L271
.L269:
	.loc 4 248 0
	mov	r0, r7
	mov	r1, #0
	bl	_FAT_fat_linkFreeCluster
	str	r0, [r5, #4]
.L271:
	.loc 4 254 0
	mov	r3, #134
	lsl	r3, r3, #3
	add	r2, r5, r3
	add	r3, sp, #48
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
	.loc 4 255 0
	ldr	r3, .L289+8
	add	r2, r5, r3
	add	r3, sp, #60
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
	.loc 4 259 0
	ldr	r1, [r5, #4]
	.loc 4 257 0
	mov	r3, #0
	str	r3, [r5, #8]
	.loc 4 260 0
	str	r3, [r5, #16]
	.loc 4 261 0
	str	r3, [r5, #20]
	.loc 4 259 0
	str	r1, [r5, #12]
	.loc 4 265 0
	mov	r0, r7
	bl	_FAT_fat_lastCluster
	.loc 4 266 0
	ldr	r4, [r5]
	.loc 4 265 0
	str	r0, [r5, #24]
	.loc 4 266 0
	ldr	r1, [r7, #40]
	mov	r0, r4
	bl	__aeabi_uidivmod
	.loc 4 267 0
	ldr	r3, .L289+12
	.loc 4 266 0
	lsr	r1, r1, #9
	.loc 4 267 0
	and	r3, r3, r4
	.loc 4 266 0
	str	r1, [r5, #28]
	.loc 4 267 0
	str	r3, [r5, #32]
	.loc 4 272 0
	cmp	r4, #0
	beq	.L272
	mov	r0, r4
	ldr	r1, [r7, #40]
	bl	__aeabi_uidivmod
	cmp	r1, #0
	bne	.L272
	.loc 4 274 0
	ldr	r3, [r7, #36]
	.loc 4 275 0
	str	r1, [r5, #32]
	.loc 4 274 0
	str	r3, [r5, #28]
.L272:
	.loc 4 278 0
	ldr	r2, [sp, #4]
	lsl	r2, r2, #28
	bpl	.L275
	.loc 4 279 0
	ldr	r3, .L289+16
	mov	r2, #1
	strb	r2, [r5, r3]
.L275:
	.loc 4 282 0
	ldr	r3, .L289+20
	mov	r2, #1
	strb	r2, [r5, r3]
	.loc 4 286 0
	ldr	r3, [r7, #64]
	.loc 4 290 0
	ldr	r1, [r7, #40]
	.loc 4 286 0
	add	r3, r3, #1
	str	r3, [r7, #64]
	.loc 4 291 0
	ldr	r0, [r5]
	add	r0, r1, r0
	sub	r0, r0, #1
	bl	__aeabi_uidiv
	ldr	r3, .L289+24
	add	r0, r0, #255
	lsr	r0, r0, #8
	str	r0, [r5, r3]
	mov	r1, #0
.L277:
	.loc 4 293 0
	add	r2, r5, r1
	mov	r3, #0
	str	r3, [r2, #36]
	.loc 4 292 0
	mov	r3, #128
	.loc 4 293 0
	add	r1, r1, #4
	.loc 4 292 0
	lsl	r3, r3, #3
	cmp	r1, r3
	bne	.L277
	.loc 4 295 0
	ldr	r3, [r5, #4]
	.loc 4 299 0
	mov	r0, r5
	.loc 4 295 0
	str	r3, [r5, #36]
.LVL231:
.L231:
	.loc 4 300 0
	add	sp, sp, #332
	@ sp needed for prologue
.LVL232:
.LVL233:
.LVL234:
.LVL235:
	pop	{r4, r5, r6, r7, pc}
.L290:
	.align	2
.L289:
	.word	1065
	.word	1068
	.word	1084
	.word	511
	.word	1066
	.word	1067
	.word	1060
.LFE21:
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI2-.LFB15
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI3-.LFB27
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
	.uleb128 0x158
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI5-.LFB20
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
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI7-.LFB26
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
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI9-.LFB25
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
	.uleb128 0x258
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI11-.LFB23
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
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x48
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI13-.LFB22
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
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x48
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI15-.LFB21
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
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x160
	.align	2
.LEFDE20:
	.file 5 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 6 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/disc_io.h"
	.file 7 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 8 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/partition.h"
	.file 9 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/cache.h"
	.file 10 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/reent.h"
	.file 11 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/_types.h"
	.file 12 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/lock.h"
	.file 13 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stddef.h"
	.file 14 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/stat.h"
	.file 15 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/sys/types.h"
	.file 16 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/fatfile.h"
	.file 17 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/directory.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE3-.Ltext0
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
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 344
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL25-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB20-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL43-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LFB26-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL65-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LFB25-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 600
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL72-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL76-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL100-.Ltext0
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
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 32
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 32
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 32
	.4byte	.LVL132-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 36
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 36
	.4byte	.LVL132-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 36
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LFB23-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 72
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL140-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL143-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL183-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	.LVL166-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LFB22-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 72
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL193-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL199-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL200-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LFB21-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 352
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL202-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -320
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL203-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -324
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL203-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -328
	.4byte	0x0
	.4byte	0x0
.LLST64:
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST65:
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST66:
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST67:
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x173b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF262
	.byte	0x1
	.4byte	.LASF263
	.4byte	.LASF264
	.uleb128 0x2
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0xc
	.byte	0x7
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0x4
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF1
	.byte	0x8
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF3
	.byte	0xd
	.2byte	0x163
	.4byte	0x51
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0x6
	.4byte	0x77
	.byte	0x4
	.byte	0xb
	.byte	0x1f
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0xb
	.byte	0x20
	.4byte	0x45
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0xb
	.byte	0x21
	.4byte	0x77
	.byte	0x0
	.uleb128 0x8
	.4byte	0x87
	.4byte	0x8e
	.uleb128 0x9
	.4byte	0x87
	.byte	0x3
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.4byte	0xba
	.byte	0x8
	.byte	0xb
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF8
	.byte	0xb
	.byte	0x1d
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF9
	.byte	0xb
	.byte	0x22
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0xb
	.byte	0x23
	.4byte	0x95
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0xb
	.byte	0x25
	.4byte	0x2c
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0xa
	.byte	0x15
	.4byte	0xdd
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7
	.uleb128 0xd
	.4byte	0x143
	.4byte	.LASF18
	.byte	0x18
	.byte	0xa
	.byte	0x2b
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0xa
	.byte	0x2c
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.ascii	"_k\000"
	.byte	0xa
	.byte	0x2d
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0xa
	.byte	0x2d
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0xa
	.byte	0x2d
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0xa
	.byte	0x2d
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.ascii	"_x\000"
	.byte	0xa
	.byte	0x2e
	.4byte	0x149
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe4
	.uleb128 0x8
	.4byte	0x159
	.4byte	0xd2
	.uleb128 0x9
	.4byte	0x87
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.4byte	0x1e4
	.4byte	.LASF19
	.byte	0x24
	.byte	0xa
	.byte	0x33
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0xa
	.byte	0x34
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0xa
	.byte	0x35
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0xa
	.byte	0x36
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0xa
	.byte	0x37
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0xa
	.byte	0x38
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0xa
	.byte	0x39
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0xa
	.byte	0x3a
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0xa
	.byte	0x3b
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0xa
	.byte	0x3c
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x0
	.uleb128 0x10
	.4byte	0x22d
	.4byte	.LASF29
	.2byte	0x108
	.byte	0xa
	.byte	0x45
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0xa
	.byte	0x46
	.4byte	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0xa
	.byte	0x47
	.4byte	0x22d
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0xa
	.byte	0x49
	.4byte	0xd2
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0xa
	.byte	0x4c
	.4byte	0xd2
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.byte	0x0
	.uleb128 0x8
	.4byte	0x23d
	.4byte	0xd0
	.uleb128 0x9
	.4byte	0x87
	.byte	0x1f
	.byte	0x0
	.uleb128 0x10
	.4byte	0x284
	.4byte	.LASF34
	.2byte	0x190
	.byte	0xa
	.byte	0x57
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0xa
	.byte	0x58
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0xa
	.byte	0x59
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0xa
	.byte	0x5b
	.4byte	0x28a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0xa
	.byte	0x5c
	.4byte	0x1e4
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x23d
	.uleb128 0x8
	.4byte	0x29a
	.4byte	0x29c
	.uleb128 0x9
	.4byte	0x87
	.byte	0x1f
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x29a
	.uleb128 0xd
	.4byte	0x2cb
	.4byte	.LASF37
	.byte	0x8
	.byte	0xa
	.byte	0x67
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0xa
	.byte	0x68
	.4byte	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0xa
	.byte	0x69
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8e
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0xa
	.byte	0x71
	.4byte	0x37
	.uleb128 0xd
	.4byte	0x41a
	.4byte	.LASF41
	.byte	0x60
	.byte	0xa
	.byte	0xa8
	.uleb128 0xe
	.ascii	"_p\000"
	.byte	0xa
	.byte	0xa9
	.4byte	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.ascii	"_r\000"
	.byte	0xa
	.byte	0xaa
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.ascii	"_w\000"
	.byte	0xa
	.byte	0xab
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0xa
	.byte	0xac
	.4byte	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0xa
	.byte	0xad
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.ascii	"_bf\000"
	.byte	0xa
	.byte	0xae
	.4byte	0x2a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0xa
	.byte	0xaf
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0xa
	.byte	0xb6
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0xa
	.byte	0xb8
	.4byte	0x448
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0xa
	.byte	0xb9
	.4byte	0x473
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0xa
	.byte	0xbb
	.4byte	0x493
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0xa
	.byte	0xbc
	.4byte	0x4a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.ascii	"_ub\000"
	.byte	0xa
	.byte	0xbf
	.4byte	0x2a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.ascii	"_up\000"
	.byte	0xa
	.byte	0xc0
	.4byte	0x2cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.ascii	"_ur\000"
	.byte	0xa
	.byte	0xc1
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0xa
	.byte	0xc4
	.4byte	0x4af
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0xa
	.byte	0xc5
	.4byte	0x4bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.ascii	"_lb\000"
	.byte	0xa
	.byte	0xc8
	.4byte	0x2a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0xa
	.byte	0xcb
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0xa
	.byte	0xcc
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0xa
	.byte	0xcf
	.4byte	0x62c
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0xa
	.byte	0xd3
	.4byte	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x2
	.byte	0x5
	.uleb128 0x12
	.4byte	0x43b
	.byte	0x1
	.4byte	0x25
	.uleb128 0x13
	.4byte	0xd0
	.uleb128 0x13
	.4byte	0x43b
	.uleb128 0x13
	.4byte	0x25
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x441
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x1
	.byte	0x8
	.uleb128 0xf
	.byte	0x4
	.4byte	0x421
	.uleb128 0x12
	.4byte	0x468
	.byte	0x1
	.4byte	0x25
	.uleb128 0x13
	.4byte	0xd0
	.uleb128 0x13
	.4byte	0x468
	.uleb128 0x13
	.4byte	0x25
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x46e
	.uleb128 0x14
	.4byte	0x441
	.uleb128 0xf
	.byte	0x4
	.4byte	0x44e
	.uleb128 0x12
	.4byte	0x493
	.byte	0x1
	.4byte	0x2d1
	.uleb128 0x13
	.4byte	0xd0
	.uleb128 0x13
	.4byte	0x2d1
	.uleb128 0x13
	.4byte	0x25
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x479
	.uleb128 0x12
	.4byte	0x4a9
	.byte	0x1
	.4byte	0x25
	.uleb128 0x13
	.4byte	0xd0
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x499
	.uleb128 0x8
	.4byte	0x4bf
	.4byte	0x8e
	.uleb128 0x9
	.4byte	0x87
	.byte	0x2
	.byte	0x0
	.uleb128 0x8
	.4byte	0x4cf
	.4byte	0x8e
	.uleb128 0x9
	.4byte	0x87
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.4byte	0x62c
	.4byte	.LASF58
	.2byte	0x410
	.byte	0xa
	.byte	0xcf
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0xa
	.2byte	0x233
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0xa
	.2byte	0x238
	.4byte	0x67f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0xa
	.2byte	0x238
	.4byte	0x67f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0xa
	.2byte	0x238
	.4byte	0x67f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0xa
	.2byte	0x23a
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0xa
	.2byte	0x23b
	.4byte	0x898
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0xa
	.2byte	0x23d
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0xa
	.2byte	0x23e
	.4byte	0x468
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0xa
	.2byte	0x240
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0xa
	.2byte	0x242
	.4byte	0x8b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0xa
	.2byte	0x245
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0xa
	.2byte	0x246
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0xa
	.2byte	0x247
	.4byte	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0xa
	.2byte	0x248
	.4byte	0x8ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0xa
	.2byte	0x24b
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0xa
	.2byte	0x24c
	.4byte	0x43b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0xa
	.2byte	0x26e
	.4byte	0x876
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF34
	.byte	0xa
	.2byte	0x271
	.4byte	0x284
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0xa
	.2byte	0x272
	.4byte	0x23d
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0xa
	.2byte	0x275
	.4byte	0x8cc
	.byte	0x3
	.byte	0x23
	.uleb128 0x2dc
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0xa
	.2byte	0x27a
	.4byte	0x63e
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0xa
	.2byte	0x27b
	.4byte	0x8d8
	.byte	0x3
	.byte	0x23
	.uleb128 0x2ec
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4cf
	.uleb128 0x5
	.4byte	.LASF80
	.byte	0xa
	.2byte	0x105
	.4byte	0x2dc
	.uleb128 0x16
	.4byte	0x679
	.4byte	.LASF81
	.byte	0xc
	.byte	0xa
	.2byte	0x109
	.uleb128 0x15
	.4byte	.LASF14
	.byte	0xa
	.2byte	0x10a
	.4byte	0x679
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0xa
	.2byte	0x10b
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0xa
	.2byte	0x10c
	.4byte	0x67f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x63e
	.uleb128 0xf
	.byte	0x4
	.4byte	0x632
	.uleb128 0x16
	.4byte	0x6c0
	.4byte	.LASF84
	.byte	0xe
	.byte	0xa
	.2byte	0x124
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0xa
	.2byte	0x125
	.4byte	0x6c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0xa
	.2byte	0x126
	.4byte	0x6c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0xa
	.2byte	0x127
	.4byte	0x6d0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.4byte	0x6d0
	.4byte	0x6d0
	.uleb128 0x9
	.4byte	0x87
	.byte	0x2
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF88
	.byte	0x2
	.byte	0x7
	.uleb128 0x17
	.4byte	0x7f7
	.byte	0xd0
	.byte	0xa
	.2byte	0x251
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0xa
	.2byte	0x252
	.4byte	0x51
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0xa
	.2byte	0x253
	.4byte	0x43b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0xa
	.2byte	0x254
	.4byte	0x7f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0xa
	.2byte	0x255
	.4byte	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0xa
	.2byte	0x256
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0xa
	.2byte	0x257
	.4byte	0x807
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0xa
	.2byte	0x258
	.4byte	0x685
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0xa
	.2byte	0x259
	.4byte	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0xa
	.2byte	0x25a
	.4byte	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0xa
	.2byte	0x25b
	.4byte	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0xa
	.2byte	0x25c
	.4byte	0x80e
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0xa
	.2byte	0x25d
	.4byte	0x81e
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0xa
	.2byte	0x25e
	.4byte	0x25
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0xa
	.2byte	0x25f
	.4byte	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0xa
	.2byte	0x260
	.4byte	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0xa
	.2byte	0x261
	.4byte	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0xa
	.2byte	0x262
	.4byte	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0xa
	.2byte	0x263
	.4byte	0xba
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0x0
	.uleb128 0x8
	.4byte	0x807
	.4byte	0x441
	.uleb128 0x9
	.4byte	0x87
	.byte	0x19
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0x8
	.byte	0x7
	.uleb128 0x8
	.4byte	0x81e
	.4byte	0x441
	.uleb128 0x9
	.4byte	0x87
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.4byte	0x82e
	.4byte	0x441
	.uleb128 0x9
	.4byte	0x87
	.byte	0x17
	.byte	0x0
	.uleb128 0x17
	.4byte	0x856
	.byte	0xf0
	.byte	0xa
	.2byte	0x269
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0xa
	.2byte	0x26b
	.4byte	0x856
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0xa
	.2byte	0x26c
	.4byte	0x866
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0x0
	.uleb128 0x8
	.4byte	0x866
	.4byte	0x2cb
	.uleb128 0x9
	.4byte	0x87
	.byte	0x1d
	.byte	0x0
	.uleb128 0x8
	.4byte	0x876
	.4byte	0x51
	.uleb128 0x9
	.4byte	0x87
	.byte	0x1d
	.byte	0x0
	.uleb128 0x18
	.4byte	0x898
	.byte	0xf0
	.byte	0xa
	.2byte	0x24f
	.uleb128 0x19
	.4byte	.LASF58
	.byte	0xa
	.2byte	0x264
	.4byte	0x6d7
	.uleb128 0x19
	.4byte	.LASF110
	.byte	0xa
	.2byte	0x26d
	.4byte	0x82e
	.byte	0x0
	.uleb128 0x8
	.4byte	0x8a8
	.4byte	0x441
	.uleb128 0x9
	.4byte	0x87
	.byte	0x18
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x8b4
	.byte	0x1
	.uleb128 0x13
	.4byte	0x62c
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8a8
	.uleb128 0xf
	.byte	0x4
	.4byte	0x143
	.uleb128 0x1a
	.4byte	0x8cc
	.byte	0x1
	.uleb128 0x13
	.4byte	0x25
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8d2
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8c0
	.uleb128 0x8
	.4byte	0x8e8
	.4byte	0x632
	.uleb128 0x9
	.4byte	0x87
	.byte	0x2
	.byte	0x0
	.uleb128 0x4
	.4byte	.LASF111
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xf
	.byte	0x6d
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xf
	.byte	0x85
	.4byte	0x51
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0xf
	.byte	0xa6
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0xf
	.byte	0xab
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0xf
	.byte	0xad
	.4byte	0x6d0
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0xf
	.byte	0xae
	.4byte	0x6d0
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0xf
	.byte	0xc3
	.4byte	0x51
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0xf
	.byte	0xc8
	.4byte	0x6d0
	.uleb128 0xd
	.4byte	0xa42
	.4byte	.LASF120
	.byte	0x44
	.byte	0xe
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0xe
	.byte	0x1b
	.4byte	0x905
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0xe
	.byte	0x1c
	.4byte	0x8fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0xe
	.byte	0x1d
	.4byte	0x931
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0xe
	.byte	0x1e
	.4byte	0x93c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0xe
	.byte	0x1f
	.4byte	0x91b
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0xe
	.byte	0x20
	.4byte	0x926
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0xe
	.byte	0x21
	.4byte	0x905
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0xe
	.byte	0x22
	.4byte	0x910
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0xe
	.byte	0x29
	.4byte	0x8ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0xe
	.byte	0x2a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0xe
	.byte	0x2b
	.4byte	0x8ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0xe
	.byte	0x2c
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0xe
	.byte	0x2d
	.4byte	0x8ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0xe
	.byte	0x2e
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xe
	.byte	0x2f
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0xe
	.byte	0x30
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xe
	.byte	0x31
	.4byte	0xa42
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0x0
	.uleb128 0x8
	.4byte	0xa52
	.4byte	0x37
	.uleb128 0x9
	.4byte	0x87
	.byte	0x1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF138
	.byte	0x7
	.byte	0x2e
	.4byte	0x8e
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0x7
	.byte	0x3a
	.4byte	0x6d0
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0x7
	.byte	0x53
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF141
	.byte	0x7
	.byte	0x54
	.4byte	0xdd
	.uleb128 0x4
	.4byte	.LASF142
	.byte	0x4
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF143
	.byte	0x8
	.byte	0x4
	.uleb128 0x1b
	.ascii	"u8\000"
	.byte	0x5
	.byte	0x5f
	.4byte	0xa52
	.uleb128 0x1b
	.ascii	"u16\000"
	.byte	0x5
	.byte	0x60
	.4byte	0xa5d
	.uleb128 0x1b
	.ascii	"u32\000"
	.byte	0x5
	.byte	0x61
	.4byte	0xa73
	.uleb128 0x1b
	.ascii	"s32\000"
	.byte	0x5
	.byte	0x66
	.4byte	0xa68
	.uleb128 0x1c
	.4byte	0xacc
	.byte	0x1
	.byte	0x5
	.byte	0x81
	.uleb128 0x1d
	.4byte	.LASF144
	.sleb128 0
	.uleb128 0x1d
	.4byte	.LASF145
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0x5
	.byte	0x81
	.4byte	0xab7
	.uleb128 0x3
	.4byte	.LASF147
	.byte	0x6
	.byte	0x3d
	.4byte	0xae2
	.uleb128 0xf
	.byte	0x4
	.4byte	0xae8
	.uleb128 0x1e
	.byte	0x1
	.4byte	0xacc
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0x6
	.byte	0x3e
	.4byte	0xae2
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0x6
	.byte	0x3f
	.4byte	0xb04
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb0a
	.uleb128 0x12
	.4byte	0xb24
	.byte	0x1
	.4byte	0xacc
	.uleb128 0x13
	.4byte	0xaa1
	.uleb128 0x13
	.4byte	0xaa1
	.uleb128 0x13
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF150
	.byte	0x6
	.byte	0x40
	.4byte	0xb2f
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb35
	.uleb128 0x12
	.4byte	0xb4f
	.byte	0x1
	.4byte	0xacc
	.uleb128 0x13
	.4byte	0xaa1
	.uleb128 0x13
	.4byte	0xaa1
	.uleb128 0x13
	.4byte	0xb4f
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb55
	.uleb128 0x1f
	.uleb128 0x3
	.4byte	.LASF151
	.byte	0x6
	.byte	0x41
	.4byte	0xae2
	.uleb128 0x3
	.4byte	.LASF152
	.byte	0x6
	.byte	0x42
	.4byte	0xae2
	.uleb128 0xd
	.4byte	0xbe9
	.4byte	.LASF153
	.byte	0x20
	.byte	0x6
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0x6
	.byte	0x45
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0x6
	.byte	0x46
	.4byte	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0x6
	.byte	0x47
	.4byte	0xad7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0x6
	.byte	0x48
	.4byte	0xaee
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0x6
	.byte	0x49
	.4byte	0xaf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0x6
	.byte	0x4a
	.4byte	0xb24
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0x6
	.byte	0x4b
	.4byte	0xb56
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0x6
	.byte	0x4c
	.4byte	0xb61
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF162
	.byte	0x6
	.byte	0x4f
	.4byte	0xb6c
	.uleb128 0xa
	.4byte	0xc27
	.byte	0xc
	.byte	0x9
	.byte	0x2f
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0x9
	.byte	0x30
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF164
	.byte	0x9
	.byte	0x31
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF165
	.byte	0x9
	.byte	0x32
	.4byte	0xacc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF166
	.byte	0x9
	.byte	0x33
	.4byte	0xbf4
	.uleb128 0xa
	.4byte	0xc73
	.byte	0x10
	.byte	0x9
	.byte	0x35
	.uleb128 0xb
	.4byte	.LASF167
	.byte	0x9
	.byte	0x36
	.4byte	0xc73
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0x9
	.byte	0x37
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF169
	.byte	0x9
	.byte	0x38
	.4byte	0xc7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF170
	.byte	0x9
	.byte	0x39
	.4byte	0xc84
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc79
	.uleb128 0x14
	.4byte	0xbe9
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc27
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa8c
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0x9
	.byte	0x3a
	.4byte	0xc32
	.uleb128 0x1c
	.4byte	0xcb6
	.byte	0x1
	.byte	0x8
	.byte	0x2d
	.uleb128 0x1d
	.4byte	.LASF172
	.sleb128 0
	.uleb128 0x1d
	.4byte	.LASF173
	.sleb128 1
	.uleb128 0x1d
	.4byte	.LASF174
	.sleb128 2
	.uleb128 0x1d
	.4byte	.LASF175
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF176
	.byte	0x8
	.byte	0x2d
	.4byte	0xc95
	.uleb128 0xa
	.4byte	0xd02
	.byte	0x10
	.byte	0x8
	.byte	0x35
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0x8
	.byte	0x36
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0x8
	.byte	0x37
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0x8
	.byte	0x38
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF180
	.byte	0x8
	.byte	0x39
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x1b
	.ascii	"FAT\000"
	.byte	0x8
	.byte	0x3a
	.4byte	0xcc1
	.uleb128 0xa
	.4byte	0xde8
	.byte	0x44
	.byte	0x8
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF167
	.byte	0x8
	.byte	0x3d
	.4byte	0xc73
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF181
	.byte	0x8
	.byte	0x3e
	.4byte	0xde8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF182
	.byte	0x8
	.byte	0x40
	.4byte	0xacc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF183
	.byte	0x8
	.byte	0x41
	.4byte	0xcb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.4byte	.LASF184
	.byte	0x8
	.byte	0x42
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF185
	.byte	0x8
	.byte	0x43
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF186
	.byte	0x8
	.byte	0x44
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF187
	.byte	0x8
	.byte	0x45
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF188
	.byte	0x8
	.byte	0x46
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF189
	.byte	0x8
	.byte	0x47
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF190
	.byte	0x8
	.byte	0x48
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF191
	.byte	0x8
	.byte	0x49
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.ascii	"fat\000"
	.byte	0x8
	.byte	0x4a
	.4byte	0xd02
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF192
	.byte	0x8
	.byte	0x4c
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF193
	.byte	0x8
	.byte	0x4d
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc8a
	.uleb128 0x3
	.4byte	.LASF194
	.byte	0x8
	.byte	0x4e
	.4byte	0xd0d
	.uleb128 0xa
	.4byte	0xe2c
	.byte	0xc
	.byte	0x11
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF195
	.byte	0x11
	.byte	0x3d
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0x11
	.byte	0x3e
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF196
	.byte	0x11
	.byte	0x3f
	.4byte	0xaac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF197
	.byte	0x11
	.byte	0x40
	.4byte	0xdf9
	.uleb128 0x20
	.4byte	0xe79
	.2byte	0x138
	.byte	0x11
	.byte	0x42
	.uleb128 0xb
	.4byte	.LASF198
	.byte	0x11
	.byte	0x43
	.4byte	0xe79
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF188
	.byte	0x11
	.byte	0x44
	.4byte	0xe2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF199
	.byte	0x11
	.byte	0x45
	.4byte	0xe2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF200
	.byte	0x11
	.byte	0x46
	.4byte	0xe89
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x8
	.4byte	0xe89
	.4byte	0xa8c
	.uleb128 0x9
	.4byte	0x87
	.byte	0x1f
	.byte	0x0
	.uleb128 0x8
	.4byte	0xe99
	.4byte	0x441
	.uleb128 0x9
	.4byte	0x87
	.byte	0xff
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF201
	.byte	0x11
	.byte	0x47
	.4byte	0xe37
	.uleb128 0xa
	.4byte	0xed7
	.byte	0xc
	.byte	0x10
	.byte	0x37
	.uleb128 0xb
	.4byte	.LASF195
	.byte	0x10
	.byte	0x38
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0x10
	.byte	0x39
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF202
	.byte	0x10
	.byte	0x3a
	.4byte	0xaac
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF203
	.byte	0x10
	.byte	0x3b
	.4byte	0xea4
	.uleb128 0x20
	.4byte	0xfb8
	.2byte	0x448
	.byte	0x10
	.byte	0x3d
	.uleb128 0xb
	.4byte	.LASF204
	.byte	0x10
	.byte	0x3e
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF205
	.byte	0x10
	.byte	0x3f
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF206
	.byte	0x10
	.byte	0x40
	.4byte	0xaa1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF207
	.byte	0x10
	.byte	0x41
	.4byte	0xed7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF208
	.byte	0x10
	.byte	0x42
	.4byte	0xed7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF209
	.byte	0x10
	.byte	0x43
	.4byte	0xfb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF210
	.byte	0x10
	.byte	0x44
	.4byte	0xaa1
	.byte	0x3
	.byte	0x23
	.uleb128 0x424
	.uleb128 0xb
	.4byte	.LASF211
	.byte	0x10
	.byte	0x45
	.4byte	0xacc
	.byte	0x3
	.byte	0x23
	.uleb128 0x428
	.uleb128 0xb
	.4byte	.LASF212
	.byte	0x10
	.byte	0x46
	.4byte	0xacc
	.byte	0x3
	.byte	0x23
	.uleb128 0x429
	.uleb128 0xb
	.4byte	.LASF213
	.byte	0x10
	.byte	0x47
	.4byte	0xacc
	.byte	0x3
	.byte	0x23
	.uleb128 0x42a
	.uleb128 0xb
	.4byte	.LASF214
	.byte	0x10
	.byte	0x48
	.4byte	0xacc
	.byte	0x3
	.byte	0x23
	.uleb128 0x42b
	.uleb128 0xb
	.4byte	.LASF215
	.byte	0x10
	.byte	0x49
	.4byte	0xfc8
	.byte	0x3
	.byte	0x23
	.uleb128 0x42c
	.uleb128 0xb
	.4byte	.LASF216
	.byte	0x10
	.byte	0x4a
	.4byte	0xe2c
	.byte	0x3
	.byte	0x23
	.uleb128 0x430
	.uleb128 0xb
	.4byte	.LASF217
	.byte	0x10
	.byte	0x4b
	.4byte	0xe2c
	.byte	0x3
	.byte	0x23
	.uleb128 0x43c
	.byte	0x0
	.uleb128 0x8
	.4byte	0xfc8
	.4byte	0xaa1
	.uleb128 0x9
	.4byte	0x87
	.byte	0xff
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xdee
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0x10
	.byte	0x4c
	.4byte	0xee2
	.uleb128 0x21
	.4byte	0x1032
	.4byte	.LASF221
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0xacc
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST0
	.uleb128 0x22
	.4byte	.LASF167
	.byte	0x1
	.byte	0x4c
	.4byte	0xc73
	.4byte	.LLST1
	.uleb128 0x22
	.4byte	.LASF163
	.byte	0x1
	.byte	0x4c
	.4byte	0xaa1
	.4byte	.LLST2
	.uleb128 0x22
	.4byte	.LASF219
	.byte	0x1
	.byte	0x4c
	.4byte	0xaa1
	.4byte	.LLST3
	.uleb128 0x22
	.4byte	.LASF220
	.byte	0x1
	.byte	0x4c
	.4byte	0xd0
	.4byte	.LLST4
	.byte	0x0
	.uleb128 0x21
	.4byte	0x108b
	.4byte	.LASF222
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	0xacc
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST5
	.uleb128 0x22
	.4byte	.LASF167
	.byte	0x1
	.byte	0x56
	.4byte	0xc73
	.4byte	.LLST6
	.uleb128 0x22
	.4byte	.LASF163
	.byte	0x1
	.byte	0x56
	.4byte	0xaa1
	.4byte	.LLST7
	.uleb128 0x22
	.4byte	.LASF219
	.byte	0x1
	.byte	0x56
	.4byte	0xaa1
	.4byte	.LLST8
	.uleb128 0x22
	.4byte	.LASF220
	.byte	0x1
	.byte	0x56
	.4byte	0xb4f
	.4byte	.LLST9
	.byte	0x0
	.uleb128 0x21
	.4byte	0x10c4
	.4byte	.LASF223
	.byte	0x2
	.byte	0x3c
	.byte	0x1
	.4byte	0xaa1
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST10
	.uleb128 0x22
	.4byte	.LASF215
	.byte	0x2
	.byte	0x3c
	.4byte	0xfc8
	.4byte	.LLST11
	.uleb128 0x23
	.4byte	.LASF195
	.byte	0x2
	.byte	0x3c
	.4byte	0xaa1
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x24
	.4byte	0x1106
	.4byte	.LASF224
	.byte	0x3
	.byte	0x2e
	.byte	0x1
	.4byte	.LFB18
	.4byte	.LFE18
	.byte	0x1
	.byte	0x5d
	.uleb128 0x22
	.4byte	.LASF225
	.byte	0x3
	.byte	0x2e
	.4byte	0xc84
	.4byte	.LLST13
	.uleb128 0x23
	.4byte	.LASF196
	.byte	0x3
	.byte	0x2e
	.4byte	0x25
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.4byte	.LASF226
	.byte	0x3
	.byte	0x2e
	.4byte	0xa96
	.4byte	.LLST14
	.byte	0x0
	.uleb128 0x25
	.4byte	0x117d
	.byte	0x1
	.4byte	.LASF229
	.byte	0x4
	.2byte	0x360
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST15
	.uleb128 0x26
	.ascii	"r\000"
	.byte	0x4
	.2byte	0x360
	.4byte	0x62c
	.4byte	.LLST16
	.uleb128 0x26
	.ascii	"fd\000"
	.byte	0x4
	.2byte	0x360
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x26
	.ascii	"st\000"
	.byte	0x4
	.2byte	0x360
	.4byte	0x117d
	.4byte	.LLST18
	.uleb128 0x27
	.4byte	.LASF227
	.byte	0x4
	.2byte	0x361
	.4byte	0x1183
	.uleb128 0x28
	.4byte	.LASF215
	.byte	0x4
	.2byte	0x363
	.4byte	0xfc8
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x28
	.4byte	.LASF228
	.byte	0x4
	.2byte	0x365
	.4byte	0xe99
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x947
	.uleb128 0xf
	.byte	0x4
	.4byte	0xfce
	.uleb128 0x29
	.4byte	0x11fe
	.byte	0x1
	.4byte	.LASF230
	.byte	0x4
	.byte	0x3b
	.byte	0x1
	.4byte	0xaa1
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LLST19
	.uleb128 0x22
	.4byte	.LASF227
	.byte	0x4
	.byte	0x3a
	.4byte	0x1183
	.4byte	.LLST20
	.uleb128 0x22
	.4byte	.LASF231
	.byte	0x4
	.byte	0x3a
	.4byte	0xaa1
	.4byte	.LLST21
	.uleb128 0x2a
	.4byte	.LASF215
	.byte	0x4
	.byte	0x41
	.4byte	0xfc8
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2b
	.4byte	.LASF195
	.byte	0x4
	.byte	0x42
	.4byte	0xaa1
	.4byte	.LLST22
	.uleb128 0x2b
	.4byte	.LASF164
	.byte	0x4
	.byte	0x43
	.4byte	0xaa1
	.4byte	.LLST23
	.uleb128 0x2c
	.ascii	"i\000"
	.byte	0x4
	.byte	0x44
	.4byte	0xaa1
	.4byte	.LLST24
	.byte	0x0
	.uleb128 0x25
	.4byte	0x12da
	.byte	0x1
	.4byte	.LASF232
	.byte	0x4
	.2byte	0x2fd
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST25
	.uleb128 0x26
	.ascii	"r\000"
	.byte	0x4
	.2byte	0x2fd
	.4byte	0x62c
	.4byte	.LLST26
	.uleb128 0x26
	.ascii	"fd\000"
	.byte	0x4
	.2byte	0x2fd
	.4byte	0x25
	.4byte	.LLST27
	.uleb128 0x26
	.ascii	"pos\000"
	.byte	0x4
	.2byte	0x2fd
	.4byte	0x25
	.4byte	.LLST28
	.uleb128 0x26
	.ascii	"dir\000"
	.byte	0x4
	.2byte	0x2fd
	.4byte	0x25
	.4byte	.LLST29
	.uleb128 0x2d
	.4byte	.LASF227
	.byte	0x4
	.2byte	0x2fe
	.4byte	0x1183
	.4byte	.LLST30
	.uleb128 0x28
	.4byte	.LASF215
	.byte	0x4
	.2byte	0x300
	.4byte	0xfc8
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2d
	.4byte	.LASF195
	.byte	0x4
	.2byte	0x302
	.4byte	0xaa1
	.4byte	.LLST31
	.uleb128 0x2d
	.4byte	.LASF233
	.byte	0x4
	.2byte	0x302
	.4byte	0xaa1
	.4byte	.LLST32
	.uleb128 0x27
	.4byte	.LASF234
	.byte	0x4
	.2byte	0x303
	.4byte	0x25
	.uleb128 0x2d
	.4byte	.LASF235
	.byte	0x4
	.2byte	0x304
	.4byte	0x25
	.4byte	.LLST33
	.uleb128 0x2e
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x27
	.4byte	.LASF231
	.byte	0x4
	.2byte	0x329
	.4byte	0xaa1
	.uleb128 0x28
	.4byte	.LASF236
	.byte	0x4
	.2byte	0x32a
	.4byte	0xaa1
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x134b
	.4byte	.LASF237
	.byte	0x4
	.2byte	0x1ea
	.byte	0x1
	.4byte	0xacc
	.byte	0x1
	.uleb128 0x30
	.ascii	"r\000"
	.byte	0x4
	.2byte	0x1ea
	.4byte	0x62c
	.uleb128 0x31
	.4byte	.LASF227
	.byte	0x4
	.2byte	0x1ea
	.4byte	0x1183
	.uleb128 0x27
	.4byte	.LASF215
	.byte	0x4
	.2byte	0x1eb
	.4byte	0xfc8
	.uleb128 0x27
	.4byte	.LASF181
	.byte	0x4
	.2byte	0x1ec
	.4byte	0xde8
	.uleb128 0x27
	.4byte	.LASF235
	.byte	0x4
	.2byte	0x1ee
	.4byte	0xed7
	.uleb128 0x27
	.4byte	.LASF238
	.byte	0x4
	.2byte	0x1f0
	.4byte	0xaa1
	.uleb128 0x27
	.4byte	.LASF239
	.byte	0x4
	.2byte	0x1f2
	.4byte	0x134b
	.uleb128 0x27
	.4byte	.LASF240
	.byte	0x4
	.2byte	0x1f4
	.4byte	0xaa1
	.byte	0x0
	.uleb128 0x8
	.4byte	0x135c
	.4byte	0xa8c
	.uleb128 0x32
	.4byte	0x87
	.2byte	0x1ff
	.byte	0x0
	.uleb128 0x25
	.4byte	0x1481
	.byte	0x1
	.4byte	.LASF241
	.byte	0x4
	.2byte	0x241
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST34
	.uleb128 0x26
	.ascii	"r\000"
	.byte	0x4
	.2byte	0x241
	.4byte	0x62c
	.4byte	.LLST35
	.uleb128 0x26
	.ascii	"fd\000"
	.byte	0x4
	.2byte	0x241
	.4byte	0x25
	.4byte	.LLST36
	.uleb128 0x26
	.ascii	"ptr\000"
	.byte	0x4
	.2byte	0x241
	.4byte	0x468
	.4byte	.LLST37
	.uleb128 0x26
	.ascii	"len\000"
	.byte	0x4
	.2byte	0x241
	.4byte	0x25
	.4byte	.LLST38
	.uleb128 0x27
	.4byte	.LASF227
	.byte	0x4
	.2byte	0x242
	.4byte	0x1183
	.uleb128 0x2d
	.4byte	.LASF215
	.byte	0x4
	.2byte	0x244
	.4byte	0xfc8
	.4byte	.LLST39
	.uleb128 0x28
	.4byte	.LASF181
	.byte	0x4
	.2byte	0x245
	.4byte	0xde8
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x27
	.4byte	.LASF235
	.byte	0x4
	.2byte	0x247
	.4byte	0xed7
	.uleb128 0x2d
	.4byte	.LASF240
	.byte	0x4
	.2byte	0x248
	.4byte	0xaa1
	.4byte	.LLST40
	.uleb128 0x2d
	.4byte	.LASF242
	.byte	0x4
	.2byte	0x24a
	.4byte	0x25
	.4byte	.LLST41
	.uleb128 0x2d
	.4byte	.LASF238
	.byte	0x4
	.2byte	0x24c
	.4byte	0xaa1
	.4byte	.LLST42
	.uleb128 0x2d
	.4byte	.LASF243
	.byte	0x4
	.2byte	0x24e
	.4byte	0xacc
	.4byte	.LLST43
	.uleb128 0x2d
	.4byte	.LASF244
	.byte	0x4
	.2byte	0x24f
	.4byte	0xacc
	.4byte	.LLST44
	.uleb128 0x33
	.4byte	0x12da
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x4
	.2byte	0x261
	.uleb128 0x34
	.4byte	0x12f6
	.uleb128 0x34
	.4byte	0x12ec
	.uleb128 0x35
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x36
	.4byte	0x1302
	.uleb128 0x36
	.4byte	0x130e
	.uleb128 0x36
	.4byte	0x131a
	.uleb128 0x37
	.4byte	0x1326
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x37
	.4byte	0x1332
	.byte	0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x36
	.4byte	0x133e
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.4byte	0x1554
	.byte	0x1
	.4byte	.LASF245
	.byte	0x4
	.2byte	0x15d
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST45
	.uleb128 0x26
	.ascii	"r\000"
	.byte	0x4
	.2byte	0x15d
	.4byte	0x62c
	.4byte	.LLST46
	.uleb128 0x26
	.ascii	"fd\000"
	.byte	0x4
	.2byte	0x15d
	.4byte	0x25
	.4byte	.LLST47
	.uleb128 0x26
	.ascii	"ptr\000"
	.byte	0x4
	.2byte	0x15d
	.4byte	0x43b
	.4byte	.LLST48
	.uleb128 0x26
	.ascii	"len\000"
	.byte	0x4
	.2byte	0x15d
	.4byte	0x25
	.4byte	.LLST49
	.uleb128 0x27
	.4byte	.LASF227
	.byte	0x4
	.2byte	0x15e
	.4byte	0x1183
	.uleb128 0x2d
	.4byte	.LASF215
	.byte	0x4
	.2byte	0x160
	.4byte	0xfc8
	.4byte	.LLST50
	.uleb128 0x28
	.4byte	.LASF181
	.byte	0x4
	.2byte	0x161
	.4byte	0xde8
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.4byte	.LASF235
	.byte	0x4
	.2byte	0x163
	.4byte	0xed7
	.uleb128 0x2d
	.4byte	.LASF240
	.byte	0x4
	.2byte	0x164
	.4byte	0xaa1
	.4byte	.LLST51
	.uleb128 0x2d
	.4byte	.LASF242
	.byte	0x4
	.2byte	0x166
	.4byte	0x25
	.4byte	.LLST52
	.uleb128 0x2d
	.4byte	.LASF238
	.byte	0x4
	.2byte	0x168
	.4byte	0xaa1
	.4byte	.LLST53
	.uleb128 0x2d
	.4byte	.LASF243
	.byte	0x4
	.2byte	0x16a
	.4byte	0xacc
	.4byte	.LLST54
	.byte	0x0
	.uleb128 0x38
	.4byte	0x1583
	.4byte	.LASF246
	.byte	0x3
	.byte	0x33
	.byte	0x1
	.byte	0x3
	.uleb128 0x39
	.4byte	.LASF225
	.byte	0x3
	.byte	0x33
	.4byte	0xc84
	.uleb128 0x39
	.4byte	.LASF196
	.byte	0x3
	.byte	0x33
	.4byte	0x25
	.uleb128 0x39
	.4byte	.LASF226
	.byte	0x3
	.byte	0x33
	.4byte	0xaa1
	.byte	0x0
	.uleb128 0x25
	.4byte	0x15fe
	.byte	0x1
	.4byte	.LASF247
	.byte	0x4
	.2byte	0x12e
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LLST55
	.uleb128 0x26
	.ascii	"r\000"
	.byte	0x4
	.2byte	0x12e
	.4byte	0x62c
	.4byte	.LLST56
	.uleb128 0x26
	.ascii	"fd\000"
	.byte	0x4
	.2byte	0x12e
	.4byte	0x25
	.4byte	.LLST57
	.uleb128 0x2d
	.4byte	.LASF227
	.byte	0x4
	.2byte	0x12f
	.4byte	0x1183
	.4byte	.LLST58
	.uleb128 0x28
	.4byte	.LASF248
	.byte	0x4
	.2byte	0x130
	.4byte	0xe79
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3a
	.4byte	0x1554
	.4byte	.LBB30
	.4byte	.LBE30
	.byte	0x4
	.2byte	0x13e
	.uleb128 0x34
	.4byte	0x1577
	.uleb128 0x34
	.4byte	0x156c
	.uleb128 0x34
	.4byte	0x1561
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.4byte	0x161b
	.4byte	.LASF249
	.byte	0x11
	.byte	0x5d
	.byte	0x1
	.4byte	0xacc
	.byte	0x3
	.uleb128 0x39
	.4byte	.LASF250
	.byte	0x11
	.byte	0x5d
	.4byte	0x161b
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe99
	.uleb128 0x3b
	.4byte	0x1649
	.4byte	.LASF251
	.byte	0x3
	.byte	0x2a
	.byte	0x1
	.4byte	0xaa1
	.byte	0x3
	.uleb128 0x39
	.4byte	.LASF225
	.byte	0x3
	.byte	0x2a
	.4byte	0x1649
	.uleb128 0x39
	.4byte	.LASF196
	.byte	0x3
	.byte	0x2a
	.4byte	0x25
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x164f
	.uleb128 0x14
	.4byte	0xa8c
	.uleb128 0x3b
	.4byte	0x1671
	.4byte	.LASF252
	.byte	0x11
	.byte	0x61
	.byte	0x1
	.4byte	0xacc
	.byte	0x3
	.uleb128 0x39
	.4byte	.LASF250
	.byte	0x11
	.byte	0x61
	.4byte	0x161b
	.byte	0x0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF265
	.byte	0x4
	.byte	0x56
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LLST59
	.uleb128 0x3d
	.ascii	"r\000"
	.byte	0x4
	.byte	0x56
	.4byte	0x62c
	.4byte	.LLST60
	.uleb128 0x22
	.4byte	.LASF253
	.byte	0x4
	.byte	0x56
	.4byte	0xd0
	.4byte	.LLST61
	.uleb128 0x22
	.4byte	.LASF254
	.byte	0x4
	.byte	0x56
	.4byte	0x468
	.4byte	.LLST62
	.uleb128 0x22
	.4byte	.LASF255
	.byte	0x4
	.byte	0x56
	.4byte	0x25
	.4byte	.LLST63
	.uleb128 0x23
	.4byte	.LASF256
	.byte	0x4
	.byte	0x56
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.4byte	.LASF215
	.byte	0x4
	.byte	0x57
	.4byte	0xfc8
	.4byte	.LLST64
	.uleb128 0x2b
	.4byte	.LASF257
	.byte	0x4
	.byte	0x58
	.4byte	0xacc
	.4byte	.LLST65
	.uleb128 0x2a
	.4byte	.LASF258
	.byte	0x4
	.byte	0x59
	.4byte	0xe99
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2b
	.4byte	.LASF259
	.byte	0x4
	.byte	0x5a
	.4byte	0x468
	.4byte	.LLST66
	.uleb128 0x2b
	.4byte	.LASF260
	.byte	0x4
	.byte	0x5b
	.4byte	0xaa1
	.4byte	.LLST67
	.uleb128 0x3e
	.4byte	.LASF227
	.byte	0x4
	.byte	0x5c
	.4byte	0x1183
	.uleb128 0x3f
	.ascii	"i\000"
	.byte	0x4
	.byte	0x5e
	.4byte	0xaac
	.uleb128 0x27
	.4byte	.LASF261
	.byte	0x4
	.2byte	0x121
	.4byte	0xaa1
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
	.uleb128 0xe
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
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x26
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x3f
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
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x89
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x173f
	.4byte	0x1106
	.ascii	"_FAT_fstat_r\000"
	.4byte	0x1189
	.ascii	"_FAT_cluster_lookup\000"
	.4byte	0x11fe
	.ascii	"_FAT_seek_r\000"
	.4byte	0x135c
	.ascii	"_FAT_write_r\000"
	.4byte	0x1481
	.ascii	"_FAT_read_r\000"
	.4byte	0x1583
	.ascii	"_FAT_close_r\000"
	.4byte	0x1671
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
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF190:
	.ascii	"sectorsPerCluster\000"
.LASF160:
	.ascii	"fn_clearStatus\000"
.LASF29:
	.ascii	"_on_exit_args\000"
.LASF265:
	.ascii	"_FAT_open_r\000"
.LASF98:
	.ascii	"_wctomb_state\000"
.LASF255:
	.ascii	"flags\000"
.LASF95:
	.ascii	"_r48\000"
.LASF184:
	.ascii	"totalSize\000"
.LASF153:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF158:
	.ascii	"fn_readSectors\000"
.LASF100:
	.ascii	"_signal_buf\000"
.LASF243:
	.ascii	"flagNoError\000"
.LASF35:
	.ascii	"_ind\000"
.LASF135:
	.ascii	"st_blksize\000"
.LASF44:
	.ascii	"_lbfsize\000"
.LASF42:
	.ascii	"_flags\000"
.LASF59:
	.ascii	"_errno\000"
.LASF249:
	.ascii	"_FAT_directory_isDirectory\000"
.LASF113:
	.ascii	"ino_t\000"
.LASF244:
	.ascii	"flagAppending\000"
.LASF2:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF193:
	.ascii	"openFileCount\000"
.LASF46:
	.ascii	"_read\000"
.LASF12:
	.ascii	"__ULong\000"
.LASF256:
	.ascii	"mode\000"
.LASF102:
	.ascii	"_mbrlen_state\000"
.LASF58:
	.ascii	"_reent\000"
.LASF199:
	.ascii	"dataEnd\000"
.LASF237:
	.ascii	"file_extend_r\000"
.LASF8:
	.ascii	"__count\000"
.LASF61:
	.ascii	"_stdout\000"
.LASF40:
	.ascii	"_fpos_t\000"
.LASF69:
	.ascii	"_result\000"
.LASF201:
	.ascii	"DIR_ENTRY\000"
.LASF36:
	.ascii	"_fns\000"
.LASF45:
	.ascii	"_cookie\000"
.LASF236:
	.ascii	"clusterTableOffset\000"
.LASF18:
	.ascii	"_Bigint\000"
.LASF26:
	.ascii	"__tm_wday\000"
.LASF80:
	.ascii	"__FILE\000"
.LASF141:
	.ascii	"uint32_t\000"
.LASF22:
	.ascii	"__tm_hour\000"
.LASF197:
	.ascii	"DIR_ENTRY_POSITION\000"
.LASF239:
	.ascii	"zeroBuffer\000"
.LASF251:
	.ascii	"u8array_to_u32\000"
.LASF192:
	.ascii	"cwdCluster\000"
.LASF231:
	.ascii	"clusterTableIndex\000"
.LASF142:
	.ascii	"float\000"
.LASF234:
	.ascii	"clusCount\000"
.LASF213:
	.ascii	"append\000"
.LASF84:
	.ascii	"_rand48\000"
.LASF206:
	.ascii	"currentPosition\000"
.LASF164:
	.ascii	"count\000"
.LASF104:
	.ascii	"_mbsrtowcs_state\000"
.LASF166:
	.ascii	"CACHE_ENTRY\000"
.LASF107:
	.ascii	"long long unsigned int\000"
.LASF136:
	.ascii	"st_blocks\000"
.LASF91:
	.ascii	"_asctime_buf\000"
.LASF41:
	.ascii	"__sFILE\000"
.LASF17:
	.ascii	"_wds\000"
.LASF167:
	.ascii	"disc\000"
.LASF154:
	.ascii	"ioType\000"
.LASF53:
	.ascii	"_offset\000"
.LASF159:
	.ascii	"fn_writeSectors\000"
.LASF226:
	.ascii	"value\000"
.LASF208:
	.ascii	"appendPosition\000"
.LASF120:
	.ascii	"stat\000"
.LASF64:
	.ascii	"_emergency\000"
.LASF161:
	.ascii	"fn_shutdown\000"
.LASF121:
	.ascii	"st_dev\000"
.LASF152:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF179:
	.ascii	"lastCluster\000"
.LASF196:
	.ascii	"offset\000"
.LASF20:
	.ascii	"__tm_sec\000"
.LASF204:
	.ascii	"filesize\000"
.LASF86:
	.ascii	"_mult\000"
.LASF63:
	.ascii	"_inc\000"
.LASF47:
	.ascii	"_write\000"
.LASF126:
	.ascii	"st_gid\000"
.LASF205:
	.ascii	"startCluster\000"
.LASF14:
	.ascii	"_next\000"
.LASF123:
	.ascii	"st_mode\000"
.LASF173:
	.ascii	"FS_FAT12\000"
.LASF218:
	.ascii	"FILE_STRUCT\000"
.LASF174:
	.ascii	"FS_FAT16\000"
.LASF124:
	.ascii	"st_nlink\000"
.LASF254:
	.ascii	"path\000"
.LASF145:
	.ascii	"true\000"
.LASF240:
	.ascii	"tempNextCluster\000"
.LASF233:
	.ascii	"nextCluster\000"
.LASF9:
	.ascii	"__value\000"
.LASF195:
	.ascii	"cluster\000"
.LASF71:
	.ascii	"_p5s\000"
.LASF188:
	.ascii	"dataStart\000"
.LASF194:
	.ascii	"PARTITION\000"
.LASF106:
	.ascii	"_wcsrtombs_state\000"
.LASF96:
	.ascii	"_mblen_state\000"
.LASF148:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF57:
	.ascii	"char\000"
.LASF23:
	.ascii	"__tm_mday\000"
.LASF77:
	.ascii	"_sig_func\000"
.LASF103:
	.ascii	"_mbrtowc_state\000"
.LASF149:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF182:
	.ascii	"readOnly\000"
.LASF245:
	.ascii	"_FAT_read_r\000"
.LASF187:
	.ascii	"numberOfSectors\000"
.LASF70:
	.ascii	"_result_k\000"
.LASF163:
	.ascii	"sector\000"
.LASF227:
	.ascii	"file\000"
.LASF5:
	.ascii	"__wch\000"
.LASF83:
	.ascii	"_iobs\000"
.LASF138:
	.ascii	"uint8_t\000"
.LASF112:
	.ascii	"time_t\000"
.LASF49:
	.ascii	"_close\000"
.LASF67:
	.ascii	"__sdidinit\000"
.LASF217:
	.ascii	"dirEntryEnd\000"
.LASF170:
	.ascii	"pages\000"
.LASF171:
	.ascii	"CACHE\000"
.LASF122:
	.ascii	"st_ino\000"
.LASF60:
	.ascii	"_stdin\000"
.LASF93:
	.ascii	"_gamma_signgam\000"
.LASF1:
	.ascii	"long long int\000"
.LASF175:
	.ascii	"FS_FAT32\000"
.LASF108:
	.ascii	"_nextf\000"
.LASF38:
	.ascii	"_base\000"
.LASF264:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF72:
	.ascii	"_freelist\000"
.LASF87:
	.ascii	"_add\000"
.LASF242:
	.ascii	"tempVar\000"
.LASF105:
	.ascii	"_wcrtomb_state\000"
.LASF223:
	.ascii	"_FAT_fat_clusterToSector\000"
.LASF114:
	.ascii	"dev_t\000"
.LASF151:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF146:
	.ascii	"bool\000"
.LASF252:
	.ascii	"_FAT_directory_isWritable\000"
.LASF180:
	.ascii	"firstFree\000"
.LASF68:
	.ascii	"__cleanup\000"
.LASF178:
	.ascii	"sectorsPerFat\000"
.LASF10:
	.ascii	"_mbstate_t\000"
.LASF214:
	.ascii	"inUse\000"
.LASF220:
	.ascii	"buffer\000"
.LASF11:
	.ascii	"_flock_t\000"
.LASF28:
	.ascii	"__tm_isdst\000"
.LASF232:
	.ascii	"_FAT_seek_r\000"
.LASF157:
	.ascii	"fn_isInserted\000"
.LASF189:
	.ascii	"bytesPerSector\000"
.LASF130:
	.ascii	"st_spare1\000"
.LASF132:
	.ascii	"st_spare2\000"
.LASF134:
	.ascii	"st_spare3\000"
.LASF137:
	.ascii	"st_spare4\000"
.LASF162:
	.ascii	"IO_INTERFACE\000"
.LASF181:
	.ascii	"cache\000"
.LASF155:
	.ascii	"features\000"
.LASF241:
	.ascii	"_FAT_write_r\000"
.LASF147:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF24:
	.ascii	"__tm_mon\000"
.LASF246:
	.ascii	"u32_to_u8array\000"
.LASF209:
	.ascii	"clusterTable\000"
.LASF131:
	.ascii	"st_mtime\000"
.LASF165:
	.ascii	"dirty\000"
.LASF139:
	.ascii	"uint16_t\000"
.LASF76:
	.ascii	"_atexit0\000"
.LASF238:
	.ascii	"remain\000"
.LASF117:
	.ascii	"gid_t\000"
.LASF156:
	.ascii	"fn_startup\000"
.LASF94:
	.ascii	"_rand_next\000"
.LASF191:
	.ascii	"bytesPerCluster\000"
.LASF210:
	.ascii	"clustersPerEntry\000"
.LASF34:
	.ascii	"_atexit\000"
.LASF116:
	.ascii	"uid_t\000"
.LASF56:
	.ascii	"short int\000"
.LASF144:
	.ascii	"false\000"
.LASF0:
	.ascii	"long int\000"
.LASF185:
	.ascii	"rootDirStart\000"
.LASF133:
	.ascii	"st_ctime\000"
.LASF79:
	.ascii	"__sf\000"
.LASF16:
	.ascii	"_sign\000"
.LASF66:
	.ascii	"_current_locale\000"
.LASF54:
	.ascii	"_data\000"
.LASF6:
	.ascii	"__wchb\000"
.LASF253:
	.ascii	"fileStruct\000"
.LASF25:
	.ascii	"__tm_year\000"
.LASF229:
	.ascii	"_FAT_fstat_r\000"
.LASF90:
	.ascii	"_strtok_last\000"
.LASF92:
	.ascii	"_localtime_buf\000"
.LASF215:
	.ascii	"partition\000"
.LASF75:
	.ascii	"_new\000"
.LASF73:
	.ascii	"_cvtlen\000"
.LASF15:
	.ascii	"_maxwds\000"
.LASF99:
	.ascii	"_l64a_buf\000"
.LASF65:
	.ascii	"_current_category\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF52:
	.ascii	"_blksize\000"
.LASF19:
	.ascii	"__tm\000"
.LASF247:
	.ascii	"_FAT_close_r\000"
.LASF176:
	.ascii	"FS_TYPE\000"
.LASF55:
	.ascii	"_lock\000"
.LASF212:
	.ascii	"write\000"
.LASF13:
	.ascii	"long unsigned int\000"
.LASF82:
	.ascii	"_niobs\000"
.LASF3:
	.ascii	"wint_t\000"
.LASF258:
	.ascii	"dirEntry\000"
.LASF186:
	.ascii	"rootDirCluster\000"
.LASF140:
	.ascii	"int32_t\000"
.LASF224:
	.ascii	"u16_to_u8array\000"
.LASF21:
	.ascii	"__tm_min\000"
.LASF31:
	.ascii	"_dso_handle\000"
.LASF202:
	.ascii	"byte\000"
.LASF172:
	.ascii	"FS_UNKNOWN\000"
.LASF250:
	.ascii	"entry\000"
.LASF119:
	.ascii	"nlink_t\000"
.LASF262:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF74:
	.ascii	"_cvtbuf\000"
.LASF230:
	.ascii	"_FAT_cluster_lookup\000"
.LASF7:
	.ascii	"unsigned char\000"
.LASF222:
	.ascii	"_FAT_disc_writeSectors\000"
.LASF129:
	.ascii	"st_atime\000"
.LASF101:
	.ascii	"_getdate_err\000"
.LASF198:
	.ascii	"entryData\000"
.LASF169:
	.ascii	"cacheEntries\000"
.LASF261:
	.ascii	"clusterCount\000"
.LASF27:
	.ascii	"__tm_yday\000"
.LASF200:
	.ascii	"filename\000"
.LASF228:
	.ascii	"fileEntry\000"
.LASF37:
	.ascii	"__sbuf\000"
.LASF216:
	.ascii	"dirEntryStart\000"
.LASF221:
	.ascii	"_FAT_disc_readSectors\000"
.LASF128:
	.ascii	"st_size\000"
.LASF81:
	.ascii	"_glue\000"
.LASF203:
	.ascii	"FILE_POSITION\000"
.LASF260:
	.ascii	"dirCluster\000"
.LASF177:
	.ascii	"fatStart\000"
.LASF225:
	.ascii	"item\000"
.LASF78:
	.ascii	"__sglue\000"
.LASF125:
	.ascii	"st_uid\000"
.LASF97:
	.ascii	"_mbtowc_state\000"
.LASF219:
	.ascii	"numSectors\000"
.LASF30:
	.ascii	"_fnargs\000"
.LASF111:
	.ascii	"signed char\000"
.LASF118:
	.ascii	"mode_t\000"
.LASF257:
	.ascii	"fileExists\000"
.LASF183:
	.ascii	"filesysType\000"
.LASF115:
	.ascii	"off_t\000"
.LASF88:
	.ascii	"short unsigned int\000"
.LASF248:
	.ascii	"dirEntryData\000"
.LASF150:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF32:
	.ascii	"_fntypes\000"
.LASF43:
	.ascii	"_file\000"
.LASF39:
	.ascii	"_size\000"
.LASF143:
	.ascii	"double\000"
.LASF259:
	.ascii	"pathEnd\000"
.LASF51:
	.ascii	"_nbuf\000"
.LASF89:
	.ascii	"_unused_rand\000"
.LASF127:
	.ascii	"st_rdev\000"
.LASF263:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/fatfi"
	.ascii	"le.c\000"
.LASF33:
	.ascii	"_is_cxa\000"
.LASF85:
	.ascii	"_seed\000"
.LASF110:
	.ascii	"_unused\000"
.LASF168:
	.ascii	"numberOfPages\000"
.LASF211:
	.ascii	"read\000"
.LASF48:
	.ascii	"_seek\000"
.LASF207:
	.ascii	"rwPosition\000"
.LASF235:
	.ascii	"position\000"
.LASF62:
	.ascii	"_stderr\000"
.LASF109:
	.ascii	"_nmalloc\000"
.LASF50:
	.ascii	"_ubuf\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
