	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"partition.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	_FAT_partition_setDefaultInterface
	.code	16
	.thumb_func
	.type	_FAT_partition_setDefaultInterface, %function
_FAT_partition_setDefaultInterface:
.LFB24:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.c"
	.loc 1 340 0
	push	{lr}
.LCFI0:
.LVL0:
	.loc 1 342 0
	sub	r3, r0, #1
	lsl	r3, r3, #24
	lsr	r3, r3, #24
	cmp	r3, #2
	bhi	.L2
	.loc 1 346 0
	ldr	r3, .L6
	lsl	r0, r0, #2
.LVL1:
	ldr	r2, [r0, r3]
	cmp	r2, #0
	beq	.L2
	.loc 1 350 0
	str	r2, [r3]
	mov	r0, #1
	.loc 1 352 0
	b	.L3
.LVL2:
.L2:
	mov	r0, #0
.LVL3:
.L3:
	.loc 1 353 0
	@ sp needed for prologue
	pop	{pc}
.L7:
	.align	2
.L6:
	.word	.LANCHOR0
.LFE24:
	.size	_FAT_partition_setDefaultInterface, .-_FAT_partition_setDefaultInterface
	.align	2
	.global	_FAT_partition_setDefaultPartition
	.code	16
	.thumb_func
	.type	_FAT_partition_setDefaultPartition, %function
_FAT_partition_setDefaultPartition:
.LFB25:
	.loc 1 355 0
	push	{lr}
.LCFI1:
.LVL4:
	.loc 1 359 0
	cmp	r0, #0
	beq	.L9
	.loc 1 365 0
	ldr	r3, .L13
	ldr	r2, [r3, #4]
	cmp	r2, r0
	beq	.L10
	ldr	r2, [r3, #8]
	cmp	r2, r0
	beq	.L10
	ldr	r3, [r3, #12]
	cmp	r3, r0
	bne	.L9
.L10:
	.loc 1 376 0
	ldr	r3, .L13
	str	r0, [r3]
	mov	r0, #1
.LVL5:
	.loc 1 379 0
	b	.L11
.LVL6:
.L9:
	mov	r0, #0
.LVL7:
.L11:
	.loc 1 380 0
	@ sp needed for prologue
	pop	{pc}
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
.LFE25:
	.size	_FAT_partition_setDefaultPartition, .-_FAT_partition_setDefaultPartition
	.align	2
	.global	_FAT_partition_getPartitionFromPath
	.code	16
	.thumb_func
	.type	_FAT_partition_getPartitionFromPath, %function
_FAT_partition_getPartitionFromPath:
.LFB28:
	.loc 1 426 0
	push	{r4, r5, r6, lr}
.LCFI2:
.LVL8:
	.loc 1 432 0
	ldr	r3, .L22
	.loc 1 426 0
	mov	r4, r0
	.loc 1 432 0
	ldr	r6, [r3]
	mov	r0, r6
.LVL9:
	bl	strlen
	.loc 1 433 0
	mov	r1, #58
	.loc 1 432 0
	mov	r5, r0
	.loc 1 433 0
	mov	r0, r4
	bl	strchr
	cmp	r0, #0
	beq	.L16
	.loc 1 436 0
	mov	r0, r6
	mov	r1, r4
	mov	r2, r5
	bl	strncmp
	cmp	r0, #0
	bne	.L17
	.loc 1 437 0
	ldrb	r3, [r4, r5]
	cmp	r3, #58
	beq	.L16
	.loc 1 440 0
	ldr	r2, .L22+4
	ldr	r2, [r2]
	add	r2, r2, r3
	ldrb	r2, [r2, #1]
	lsl	r1, r2, #29
	bpl	.L17
	add	r4, r4, r5
.LVL10:
	ldrb	r2, [r4, #1]
	cmp	r2, #58
	bne	.L17
	.loc 1 442 0
	sub	r3, r3, #48
.LVL11:
	.loc 1 452 0
	cmp	r3, #3
	bls	.L21
	b	.L17
.LVL12:
.L16:
	.loc 1 440 0
	mov	r3, #0
.LVL13:
.L21:
	.loc 1 456 0
	ldr	r2, .L22+8
	lsl	r3, r3, #2
.LVL14:
	ldr	r0, [r3, r2]
	b	.L19
.LVL15:
.L17:
	mov	r0, #0
.L19:
	.loc 1 461 0
	@ sp needed for prologue
.LVL16:
	pop	{r4, r5, r6, pc}
.L23:
	.align	2
.L22:
	.word	.LANCHOR1
	.word	__ctype_ptr__
	.word	.LANCHOR0
.LFE28:
	.size	_FAT_partition_getPartitionFromPath, .-_FAT_partition_getPartitionFromPath
	.align	2
	.code	16
	.thumb_func
	.type	_FAT_partition_destructor, %function
_FAT_partition_destructor:
.LFB21:
	.loc 1 231 0
	push	{r4, lr}
.LCFI3:
.LVL17:
	.loc 1 231 0
	mov	r4, r0
	.loc 1 232 0
	ldr	r0, [r0, #4]
.LVL18:
	bl	_FAT_cache_destructor
.LBB32:
.LBB33:
	.file 2 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc.h"
	.loc 2 109 0
	ldr	r3, [r4]
.LBE33:
.LBE32:
	.loc 1 235 0
	@ sp needed for prologue
.LBB35:
.LBB34:
	.loc 2 109 0
	ldr	r3, [r3, #28]
	blx	r3
.LBE34:
.LBE35:
.LBB36:
.LBB37:
	.file 3 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/mem_allocate.h"
	.loc 3 44 0
	mov	r0, r4
	bl	free
.LVL19:
.LBE37:
.LBE36:
	.loc 1 235 0
	pop	{r4, pc}
.LFE21:
	.size	_FAT_partition_destructor, .-_FAT_partition_destructor
	.align	2
	.global	_FAT_partition_unsafeUnmount
	.code	16
	.thumb_func
	.type	_FAT_partition_unsafeUnmount, %function
_FAT_partition_unsafeUnmount:
.LFB27:
	.loc 1 406 0
	push	{r4, lr}
.LCFI4:
.LVL20:
	.loc 1 408 0
	ldr	r3, .L34
	lsl	r0, r0, #2
.LVL21:
	ldr	r4, [r0, r3]
.LVL22:
	.loc 1 410 0
	cmp	r4, #0
	bne	.L27
	mov	r0, #0
	b	.L28
.L27:
	.loc 1 416 0
	ldr	r2, [r3]
	cmp	r2, r4
	bne	.L29
	.loc 1 417 0
	mov	r2, #0
	str	r2, [r3]
.L29:
	.loc 1 416 0
	ldr	r3, .L34
	ldr	r2, [r3, #4]
	cmp	r2, r4
	bne	.L30
	.loc 1 417 0
	mov	r2, #0
	str	r2, [r3, #4]
.L30:
	.loc 1 416 0
	ldr	r3, .L34
	ldr	r2, [r3, #8]
	cmp	r2, r4
	bne	.L31
	.loc 1 417 0
	mov	r2, #0
	str	r2, [r3, #8]
.L31:
	.loc 1 416 0
	ldr	r3, .L34
	ldr	r2, [r3, #12]
	cmp	r2, r4
	bne	.L32
	.loc 1 417 0
	mov	r2, #0
	str	r2, [r3, #12]
.L32:
	.loc 1 421 0
	ldr	r0, [r4, #4]
	bl	_FAT_cache_invalidate
	.loc 1 422 0
	mov	r0, r4
	bl	_FAT_partition_destructor
	mov	r0, #1
.L28:
	.loc 1 424 0
	@ sp needed for prologue
.LVL23:
	pop	{r4, pc}
.L35:
	.align	2
.L34:
	.word	.LANCHOR0
.LFE27:
	.size	_FAT_partition_unsafeUnmount, .-_FAT_partition_unsafeUnmount
	.align	2
	.global	_FAT_partition_unmount
	.code	16
	.thumb_func
	.type	_FAT_partition_unmount, %function
_FAT_partition_unmount:
.LFB26:
	.loc 1 382 0
	push	{r4, lr}
.LCFI5:
.LVL24:
	.loc 1 384 0
	ldr	r3, .L44
	lsl	r0, r0, #2
.LVL25:
	ldr	r0, [r0, r3]
.LVL26:
	.loc 1 386 0
	cmp	r0, #0
	beq	.L37
	.loc 1 390 0
	ldr	r2, [r0, #64]
	cmp	r2, #0
	bne	.L37
	.loc 1 397 0
	ldr	r1, [r3]
	cmp	r1, r0
	bne	.L38
	.loc 1 398 0
	str	r2, [r3]
.L38:
	.loc 1 397 0
	ldr	r3, .L44
	ldr	r2, [r3, #4]
	cmp	r2, r0
	bne	.L39
	.loc 1 398 0
	mov	r2, #0
	str	r2, [r3, #4]
.L39:
	.loc 1 397 0
	ldr	r3, .L44
	ldr	r2, [r3, #8]
	cmp	r2, r0
	bne	.L40
	.loc 1 398 0
	mov	r2, #0
	str	r2, [r3, #8]
.L40:
	.loc 1 397 0
	ldr	r3, .L44
	ldr	r2, [r3, #12]
	cmp	r2, r0
	bne	.L41
	.loc 1 398 0
	mov	r2, #0
	str	r2, [r3, #12]
.L41:
	.loc 1 402 0
	bl	_FAT_partition_destructor
.LVL27:
	mov	r0, #1
	.loc 1 403 0
	b	.L42
.LVL28:
.L37:
	mov	r0, #0
.LVL29:
.L42:
	.loc 1 404 0
	@ sp needed for prologue
	pop	{r4, pc}
.L45:
	.align	2
.L44:
	.word	.LANCHOR0
.LFE26:
	.size	_FAT_partition_unmount, .-_FAT_partition_unmount
	.global	__aeabi_uidiv
	.align	2
	.code	16
	.thumb_func
	.type	_FAT_partition_constructor, %function
_FAT_partition_constructor:
.LFB20:
	.loc 1 117 0
	push	{r4, r5, r6, r7, lr}
.LCFI6:
.LVL30:
	ldr	r4, .L78
	.loc 1 121 0
	mov	r2, #128
	.loc 1 117 0
	add	sp, sp, r4
.LCFI7:
	.loc 1 121 0
	add	r4, sp, #8
	.loc 1 117 0
	mov	r5, r0
	str	r1, [sp, #4]
	.loc 1 121 0
	lsl	r2, r2, #2
	mov	r1, #0
.LVL31:
	mov	r0, r4
.LVL32:
	bl	memset
.LBB38:
.LBB39:
	.loc 2 77 0
	ldr	r3, [r5, #16]
	mov	r0, #0
	mov	r1, #1
	mov	r2, r4
	blx	r3
.LBE39:
.LBE38:
	.loc 1 124 0
	cmp	r0, #0
	bne	.LCB366
	b	.L47	@long jump
.LCB366:
	.loc 1 129 0
	mov	r3, #255
	lsl	r3, r3, #1
	ldrb	r3, [r4, r3]
	cmp	r3, #85
	beq	.LCB371
	b	.L47	@long jump
.LCB371:
	ldr	r3, .L78+4
	ldrb	r3, [r4, r3]
	cmp	r3, #170
	beq	.LCB375
	b	.L47	@long jump
.LCB375:
	.loc 1 134 0
	mov	r3, sp
	add	r3, r3, #62
	ldrb	r3, [r3]
	cmp	r3, #70
	bne	.L48
	mov	r3, sp
	add	r3, r3, #63
	ldrb	r3, [r3]
	cmp	r3, #65
	bne	.L48
	add	r3, sp, #64
	ldrb	r3, [r3]
	cmp	r3, #84
	beq	.L49
.L48:
	.loc 1 136 0
	mov	r3, sp
	add	r3, r3, #90
	ldrb	r3, [r3]
	cmp	r3, #70
	bne	.L50
	mov	r3, sp
	add	r3, r3, #91
	ldrb	r3, [r3]
	cmp	r3, #65
	bne	.L50
	add	r3, sp, #92
	ldrb	r3, [r3]
	cmp	r3, #84
	bne	.L50
	b	.L49
.LVL33:
.L53:
	.loc 1 143 0
	add	r3, r3, #16
	cmp	r3, r1
	bne	.L51
	b	.L76
.LVL34:
.L50:
	mov	r3, #223
.LVL35:
	mov	r1, #255
	lsl	r3, r3, #1
	add	r2, sp, #8
	lsl	r1, r1, #1
.L51:
	ldrb	r0, [r2, r3]
	cmp	r0, #128
	bne	.L53
	b	.L77
.L76:
	.loc 1 146 0
	mov	r3, #225
.LVL36:
	lsl	r3, r3, #1
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L55
	mov	r3, #223
.LVL37:
	b	.L72
.LVL38:
.L55:
	mov	r3, #233
	lsl	r3, r3, #1
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L57
	mov	r3, #231
.LVL39:
	b	.L72
.LVL40:
.L57:
	mov	r3, #241
	lsl	r3, r3, #1
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L58
	mov	r3, #239
.LVL41:
.L72:
	lsl	r3, r3, #1
	b	.L56
.LVL42:
.L58:
	mov	r3, #249
	lsl	r3, r3, #1
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L49
	mov	r3, #247
.LVL43:
	b	.L72
.L77:
	.loc 1 150 0
	mov	r2, #255
	lsl	r2, r2, #1
	cmp	r3, r2
	beq	.L49
.L56:
.LBB40:
.LBB41:
	.file 4 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/bit_ops.h"
	.loc 4 43 0
	add	r3, r3, #8
.LVL44:
	add	r1, sp, #8
	add	r2, r3, r1
	ldrb	r7, [r2, #1]
	ldrb	r0, [r2, #2]
	ldrb	r3, [r1, r3]
	lsl	r7, r7, #8
	lsl	r0, r0, #16
	orr	r7, r7, r0
	orr	r7, r7, r3
	ldrb	r3, [r2, #3]
	lsl	r3, r3, #24
	orr	r7, r7, r3
.LVL45:
	b	.L59
.LVL46:
.L49:
	mov	r7, #0
.LVL47:
.L59:
.LBE41:
.LBE40:
.LBB42:
.LBB43:
	.loc 2 77 0
	add	r6, sp, #8
	ldr	r3, [r5, #16]
.LVL48:
	mov	r0, r7
	mov	r1, #1
	mov	r2, r6
	blx	r3
.LBE43:
.LBE42:
	.loc 1 159 0
	cmp	r0, #0
	bne	.LCB530
	b	.L47	@long jump
.LCB530:
.LBB44:
.LBB45:
	.loc 3 40 0
	mov	r0, #68
	bl	malloc
	mov	r4, r0
.LBE45:
.LBE44:
	.loc 1 163 0
	str	r0, [sp]
	.loc 1 164 0
	cmp	r0, #0
	bne	.LCB540
	b	.L60	@long jump
.LCB540:
	.loc 1 169 0
	str	r5, [r0]
	.loc 1 172 0
	ldrb	r3, [r6, #23]
	ldrb	r2, [r6, #22]
	lsl	r3, r3, #8
	orr	r3, r3, r2
	str	r3, [r0, #48]
	.loc 1 173 0
	cmp	r3, #0
	bne	.L61
	.loc 1 174 0
	mov	r3, sp
	add	r3, r3, #14
	ldrb	r2, [r3, #31]
	add	r3, r3, #1
	ldrb	r3, [r3, #31]
	lsl	r2, r2, #8
	lsl	r3, r3, #16
	orr	r3, r3, r2
	mov	r2, sp
	add	r2, r2, #13
	ldrb	r2, [r2, #31]
	orr	r3, r3, r2
	add	r2, sp, #16
	ldrb	r2, [r2, #31]
	lsl	r2, r2, #24
	orr	r3, r3, r2
	str	r3, [r0, #48]
.L61:
	.loc 1 177 0
	add	r2, sp, #8
	ldrb	r3, [r2, #20]
	ldrb	r2, [r2, #19]
	lsl	r3, r3, #8
	orr	r3, r3, r2
	str	r3, [r4, #24]
	.loc 1 178 0
	cmp	r3, #0
	bne	.L62
	.loc 1 179 0
	mov	r3, sp
	add	r3, r3, #10
	ldrb	r2, [r3, #31]
	add	r3, r3, #1
	ldrb	r3, [r3, #31]
	lsl	r2, r2, #8
	lsl	r3, r3, #16
	orr	r3, r3, r2
	mov	r2, sp
	add	r2, r2, #9
	ldrb	r2, [r2, #31]
	orr	r3, r3, r2
	add	r2, sp, #12
	ldrb	r2, [r2, #31]
	lsl	r2, r2, #24
	orr	r3, r3, r2
	str	r3, [r4, #24]
.L62:
	.loc 1 182 0
	mov	r3, #128
	lsl	r3, r3, #2
	str	r3, [r4, #32]
	.loc 1 183 0
	add	r3, sp, #8
	ldrb	r2, [r3, #12]
	ldrb	r1, [r3, #11]
	ldrb	r0, [r3, #13]
	lsl	r2, r2, #8
	orr	r2, r2, r1
	mov	r1, r0
	mul	r1, r2
	asr	r1, r1, #9
	.loc 1 184 0
	lsl	r2, r1, #9
	.loc 1 183 0
	str	r1, [r4, #36]
	.loc 1 184 0
	str	r2, [r4, #40]
	.loc 1 185 0
	ldrb	r2, [r3, #15]
	ldrb	r0, [r3, #14]
	lsl	r2, r2, #8
	orr	r2, r2, r0
	add	r7, r7, r2
.LVL49:
	str	r7, [r4, #44]
	.loc 1 187 0
	ldrb	r0, [r3, #16]
	ldr	r6, [r4, #48]
	mov	r2, r6
	mul	r2, r0
	add	r2, r7, r2
	str	r2, [r4, #16]
	.loc 1 188 0
	ldrb	r7, [r3, #18]
	ldrb	r3, [r3, #17]
	lsl	r7, r7, #8
	orr	r7, r7, r3
	lsr	r7, r7, #4
	.loc 1 190 0
	ldr	r0, [r4, #24]
	.loc 1 188 0
	add	r7, r2, r7
	.loc 1 190 0
	sub	r0, r0, r7
	lsl	r3, r0, #9
	str	r3, [r4, #12]
	.loc 1 188 0
	str	r7, [r4, #28]
	.loc 1 193 0
	bl	__aeabi_uidiv
	.loc 1 196 0
	ldr	r2, .L78+8
	.loc 1 194 0
	mov	r3, #2
	.loc 1 193 0
	str	r0, [r4, #52]
	.loc 1 194 0
	str	r3, [r4, #56]
	.loc 1 196 0
	cmp	r0, r2
	bhi	.L63
	.loc 1 197 0
	mov	r3, #1
	b	.L73
.L63:
	.loc 1 198 0
	ldr	r2, .L78+12
	cmp	r0, r2
	bls	.L73
	.loc 1 201 0
	mov	r3, #3
.L73:
	strb	r3, [r4, #9]
	.loc 1 204 0
	ldrb	r3, [r4, #9]
	cmp	r3, #3
	beq	.L66
	.loc 1 205 0
	mov	r3, #0
	str	r3, [r4, #20]
	b	.L67
.L66:
	.loc 1 208 0
	mov	r3, sp
	add	r3, r3, #53
	ldrb	r2, [r3]
	add	r3, r3, #1
	ldrb	r3, [r3]
	lsl	r2, r2, #8
	lsl	r3, r3, #16
	orr	r3, r3, r2
	add	r2, sp, #52
	ldrb	r2, [r2]
	orr	r3, r3, r2
	mov	r2, sp
	add	r2, r2, #55
	ldrb	r2, [r2]
	lsl	r2, r2, #24
	orr	r3, r3, r2
	str	r3, [r4, #20]
	.loc 1 210 0
	add	r3, sp, #48
	ldrb	r3, [r3]
	lsl	r2, r3, #24
	cmp	r2, #0
	blt	.L67
	.loc 1 212 0
	mov	r2, #15
	ldr	r1, [r4, #48]
	and	r3, r3, r2
	mov	r2, r1
	mul	r2, r3
	ldr	r3, [r4, #44]
	add	r3, r3, r2
	str	r3, [r4, #44]
.L67:
	.loc 1 217 0
	ldr	r1, [r4]
	ldr	r0, [sp, #4]
	bl	_FAT_cache_constructor
	.loc 1 220 0
	ldr	r3, [r4, #20]
	.loc 1 223 0
	ldr	r2, [r5, #4]
	.loc 1 220 0
	str	r3, [r4, #60]
	.loc 1 223 0
	lsr	r2, r2, #1
	mov	r3, #1
	bic	r3, r3, r2
	strb	r3, [r4, #8]
	.loc 1 226 0
	mov	r3, #0
	.loc 1 217 0
	str	r0, [r4, #4]
	.loc 1 226 0
	str	r3, [r4, #64]
	.loc 1 228 0
	b	.L60
.LVL50:
.L47:
	mov	r3, #0
	str	r3, [sp]
.L60:
	.loc 1 229 0
	mov	r3, #131
	lsl	r3, r3, #2
	ldr	r0, [sp]
	add	sp, sp, r3
	@ sp needed for prologue
.LVL51:
.LVL52:
	pop	{r4, r5, r6, r7, pc}
.L79:
	.align	2
.L78:
	.word	-524
	.word	511
	.word	4084
	.word	65524
.LFE20:
	.size	_FAT_partition_constructor, .-_FAT_partition_constructor
	.align	2
	.global	_FAT_partition_mountCustomInterface
	.code	16
	.thumb_func
	.type	_FAT_partition_mountCustomInterface, %function
_FAT_partition_mountCustomInterface:
.LFB23:
	.loc 1 297 0
	push	{r4, r5, r6, lr}
.LCFI8:
.LVL53:
	.loc 1 301 0
	ldr	r3, .L87
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L81
	.loc 1 305 0
	cmp	r0, #0
	beq	.L81
	.loc 1 297 0
	mov	r4, r3
	add	r4, r4, #16
.L84:
	.loc 1 311 0
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L82
	ldr	r5, [r2]
	cmp	r5, r0
	bne	.L82
	.loc 1 312 0
	ldr	r3, .L87
	mov	r0, #1
.LVL54:
	str	r2, [r3, #12]
	.loc 1 313 0
	b	.L83
.LVL55:
.L82:
	add	r3, r3, #4
	.loc 1 310 0
	cmp	r3, r4
	bne	.L84
	.loc 1 317 0
	bl	_FAT_partition_constructor
.LVL56:
	ldr	r3, .L87
	str	r0, [r3, #12]
	sub	r3, r0, #1
	sbc	r0, r0, r3
	b	.L83
.LVL57:
.L81:
	mov	r0, #0
.LVL58:
.L83:
	.loc 1 338 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L88:
	.align	2
.L87:
	.word	.LANCHOR0
.LFE23:
	.size	_FAT_partition_mountCustomInterface, .-_FAT_partition_mountCustomInterface
	.align	2
	.global	_FAT_partition_mount
	.code	16
	.thumb_func
	.type	_FAT_partition_mount, %function
_FAT_partition_mount:
.LFB22:
	.loc 1 237 0
	push	{r4, r5, r6, lr}
.LCFI9:
.LVL59:
	.loc 1 242 0
	ldr	r3, .L101
	lsl	r2, r0, #2
	ldr	r3, [r2, r3]
	.loc 1 237 0
	mov	r4, r0
	mov	r5, r1
	.loc 1 242 0
	cmp	r3, #0
	bne	.L90
.LVL60:
	.loc 1 246 0
	cmp	r0, #1
	beq	.L91
.LVL61:
	cmp	r0, #2
	bne	.L90
	b	.L100
.L91:
	.loc 1 249 0
	bl	_FAT_disc_dsSlotFindInterface
.LVL62:
	.loc 1 250 0
	b	.L93
.LVL63:
.L100:
	.loc 1 253 0
	bl	_FAT_disc_gbaSlotFindInterface
.LVL64:
.L93:
	.loc 1 263 0
	cmp	r0, #0
	beq	.L90
.LVL65:
	ldr	r3, .L101
	.loc 1 237 0
	mov	r1, r3
	add	r1, r1, #16
.L96:
	.loc 1 269 0
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L94
	ldr	r6, [r2]
	cmp	r6, r0
	bne	.L94
	.loc 1 270 0
	ldr	r3, .L101
	lsl	r4, r4, #2
.LVL66:
	str	r2, [r4, r3]
	mov	r0, #1
.LVL67:
	.loc 1 271 0
	b	.L95
.LVL68:
.L94:
	add	r3, r3, #4
	.loc 1 268 0
	cmp	r3, r1
	bne	.L96
	.loc 1 275 0
	mov	r1, r5
	bl	_FAT_partition_constructor
.LVL69:
	ldr	r3, .L101
	lsl	r4, r4, #2
.LVL70:
	str	r0, [r4, r3]
	sub	r3, r0, #1
	sbc	r0, r0, r3
	b	.L95
.LVL71:
.L90:
	mov	r0, #0
.LVL72:
.L95:
	.loc 1 295 0
	@ sp needed for prologue
.LVL73:
.LVL74:
	pop	{r4, r5, r6, pc}
.L102:
	.align	2
.L101:
	.word	.LANCHOR0
.LFE22:
	.size	_FAT_partition_mount, .-_FAT_partition_mount
	.global	DEVICE_NAME
	.global	_FAT_partitions
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC15:
	.ascii	"fat\000"
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	DEVICE_NAME, %object
	.size	DEVICE_NAME, 4
DEVICE_NAME:
	.word	.LC15
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_FAT_partitions, %object
	.size	_FAT_partitions, 16
_FAT_partitions:
	.space	16
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
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI0-.LFB24
	.byte	0xe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI1-.LFB25
	.byte	0xe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI2-.LFB28
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI3-.LFB21
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI4-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI5-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI6-.LFB20
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
	.uleb128 0x220
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
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI9-.LFB22
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
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB24-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE24-.Ltext0
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
.LLST2:
	.4byte	.LFB25-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB21-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB26-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB20-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 544
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB23-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL57-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LFB22-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST24:
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
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL74-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.file 5 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 6 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 7 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc_io.h"
	.file 8 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/cache.h"
	.file 9 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/partition.h"
	.file 10 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/include/stddef.h"
	.file 11 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/ctype.h"
	.section	.debug_info
	.4byte	0x9c7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x1
	.4byte	.LASF137
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x5
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x5
	.byte	0x36
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x5
	.byte	0x50
	.4byte	0x65
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x6
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x6
	.byte	0x63
	.4byte	0x41
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x6
	.byte	0x64
	.4byte	0x5a
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0x7d
	.4byte	0xbd
	.uleb128 0x7
	.4byte	.LASF12
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF13
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x6
	.byte	0x7d
	.4byte	0xa8
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x7
	.byte	0x3d
	.4byte	0xd3
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x9
	.byte	0x1
	.4byte	0xbd
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x7
	.byte	0x3e
	.4byte	0xd3
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x7
	.byte	0x3f
	.4byte	0xf5
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfb
	.uleb128 0xa
	.byte	0x1
	.4byte	0xbd
	.4byte	0x115
	.uleb128 0xb
	.4byte	0x9d
	.uleb128 0xb
	.4byte	0x9d
	.uleb128 0xb
	.4byte	0x115
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x7
	.byte	0x40
	.4byte	0x122
	.uleb128 0x8
	.byte	0x4
	.4byte	0x128
	.uleb128 0xa
	.byte	0x1
	.4byte	0xbd
	.4byte	0x142
	.uleb128 0xb
	.4byte	0x9d
	.uleb128 0xb
	.4byte	0x9d
	.uleb128 0xb
	.4byte	0x142
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x148
	.uleb128 0xd
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x7
	.byte	0x41
	.4byte	0xd3
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x7
	.byte	0x42
	.4byte	0xd3
	.uleb128 0xe
	.4byte	.LASF138
	.byte	0x20
	.byte	0x7
	.byte	0x44
	.4byte	0x1dc
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x7
	.byte	0x45
	.4byte	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x7
	.byte	0x46
	.4byte	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x7
	.byte	0x47
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x7
	.byte	0x48
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x7
	.byte	0x49
	.4byte	0xea
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x7
	.byte	0x4a
	.4byte	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x7
	.byte	0x4b
	.4byte	0x149
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x7
	.byte	0x4c
	.4byte	0x154
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF29
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x7
	.byte	0x4f
	.4byte	0x15f
	.uleb128 0x10
	.byte	0xc
	.byte	0x8
	.byte	0x2f
	.4byte	0x221
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x8
	.byte	0x30
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x8
	.byte	0x31
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x8
	.byte	0x32
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x8
	.byte	0x33
	.4byte	0x1ee
	.uleb128 0x10
	.byte	0x10
	.byte	0x8
	.byte	0x35
	.4byte	0x26d
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x8
	.byte	0x36
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x8
	.byte	0x37
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x8
	.byte	0x38
	.4byte	0x278
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x8
	.byte	0x39
	.4byte	0x27e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x273
	.uleb128 0x11
	.4byte	0x1e3
	.uleb128 0x8
	.byte	0x4
	.4byte	0x221
	.uleb128 0x8
	.byte	0x4
	.4byte	0x88
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x8
	.byte	0x3a
	.4byte	0x22c
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x2d
	.4byte	0x2b0
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
	.byte	0x9
	.byte	0x2d
	.4byte	0x28f
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.4byte	0x2dc
	.uleb128 0x7
	.4byte	.LASF45
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF46
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF47
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF48
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x9
	.byte	0x30
	.4byte	0x2bb
	.uleb128 0x10
	.byte	0x10
	.byte	0x9
	.byte	0x35
	.4byte	0x328
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x9
	.byte	0x36
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x9
	.byte	0x37
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x9
	.byte	0x38
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x9
	.byte	0x39
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x5
	.ascii	"FAT\000"
	.byte	0x9
	.byte	0x3a
	.4byte	0x2e7
	.uleb128 0x10
	.byte	0x44
	.byte	0x9
	.byte	0x3c
	.4byte	0x40e
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x9
	.byte	0x3d
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x9
	.byte	0x3e
	.4byte	0x40e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x9
	.byte	0x40
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x9
	.byte	0x41
	.4byte	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x9
	.byte	0x42
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x9
	.byte	0x43
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x9
	.byte	0x44
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x9
	.byte	0x45
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x9
	.byte	0x46
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x9
	.byte	0x47
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x9
	.byte	0x48
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x9
	.byte	0x49
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.ascii	"fat\000"
	.byte	0x9
	.byte	0x4a
	.4byte	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x9
	.byte	0x4c
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x9
	.byte	0x4d
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x284
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x9
	.byte	0x4e
	.4byte	0x333
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF68
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x42f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF69
	.uleb128 0x8
	.byte	0x4
	.4byte	0x43c
	.uleb128 0x11
	.4byte	0x42f
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xa
	.byte	0xd3
	.4byte	0x65
	.uleb128 0x14
	.ascii	"BPB\000"
	.byte	0x2
	.byte	0x1
	.byte	0x3c
	.4byte	0x53a
	.uleb128 0x7
	.4byte	.LASF71
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF72
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF73
	.sleb128 11
	.uleb128 0x7
	.4byte	.LASF74
	.sleb128 13
	.uleb128 0x7
	.4byte	.LASF75
	.sleb128 14
	.uleb128 0x7
	.4byte	.LASF76
	.sleb128 16
	.uleb128 0x7
	.4byte	.LASF77
	.sleb128 17
	.uleb128 0x7
	.4byte	.LASF78
	.sleb128 19
	.uleb128 0x7
	.4byte	.LASF79
	.sleb128 21
	.uleb128 0x7
	.4byte	.LASF80
	.sleb128 22
	.uleb128 0x7
	.4byte	.LASF81
	.sleb128 24
	.uleb128 0x7
	.4byte	.LASF82
	.sleb128 26
	.uleb128 0x7
	.4byte	.LASF83
	.sleb128 28
	.uleb128 0x7
	.4byte	.LASF84
	.sleb128 32
	.uleb128 0x7
	.4byte	.LASF85
	.sleb128 36
	.uleb128 0x7
	.4byte	.LASF86
	.sleb128 37
	.uleb128 0x7
	.4byte	.LASF87
	.sleb128 38
	.uleb128 0x7
	.4byte	.LASF88
	.sleb128 39
	.uleb128 0x7
	.4byte	.LASF89
	.sleb128 43
	.uleb128 0x7
	.4byte	.LASF90
	.sleb128 54
	.uleb128 0x7
	.4byte	.LASF91
	.sleb128 62
	.uleb128 0x7
	.4byte	.LASF92
	.sleb128 36
	.uleb128 0x7
	.4byte	.LASF93
	.sleb128 40
	.uleb128 0x7
	.4byte	.LASF94
	.sleb128 42
	.uleb128 0x7
	.4byte	.LASF95
	.sleb128 44
	.uleb128 0x7
	.4byte	.LASF96
	.sleb128 48
	.uleb128 0x7
	.4byte	.LASF97
	.sleb128 50
	.uleb128 0x7
	.4byte	.LASF98
	.sleb128 64
	.uleb128 0x7
	.4byte	.LASF99
	.sleb128 65
	.uleb128 0x7
	.4byte	.LASF100
	.sleb128 66
	.uleb128 0x7
	.4byte	.LASF101
	.sleb128 67
	.uleb128 0x7
	.4byte	.LASF102
	.sleb128 71
	.uleb128 0x7
	.4byte	.LASF103
	.sleb128 82
	.uleb128 0x7
	.4byte	.LASF104
	.sleb128 90
	.uleb128 0x7
	.4byte	.LASF105
	.sleb128 510
	.uleb128 0x7
	.4byte	.LASF106
	.sleb128 511
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x2
	.byte	0x6c
	.byte	0x1
	.4byte	0xbd
	.byte	0x3
	.4byte	0x557
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x2
	.byte	0x6c
	.4byte	0x26d
	.byte	0x0
	.uleb128 0x17
	.4byte	.LASF139
	.byte	0x3
	.byte	0x2b
	.byte	0x1
	.byte	0x3
	.4byte	0x570
	.uleb128 0x18
	.ascii	"mem\000"
	.byte	0x3
	.byte	0x2b
	.4byte	0x115
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x2
	.byte	0x4c
	.byte	0x1
	.4byte	0xbd
	.byte	0x3
	.4byte	0x5ae
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x2
	.byte	0x4c
	.4byte	0x26d
	.uleb128 0x16
	.4byte	.LASF31
	.byte	0x2
	.byte	0x4c
	.4byte	0x9d
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x2
	.byte	0x4c
	.4byte	0x9d
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x2
	.byte	0x4c
	.4byte	0x115
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x4
	.byte	0x2a
	.byte	0x1
	.4byte	0x9d
	.byte	0x3
	.4byte	0x5d6
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x4
	.byte	0x2a
	.4byte	0x5d6
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x4
	.byte	0x2a
	.4byte	0x53
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5dc
	.uleb128 0x11
	.4byte	0x88
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x3
	.byte	0x27
	.byte	0x1
	.4byte	0x115
	.byte	0x3
	.4byte	0x5fe
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x3
	.byte	0x27
	.4byte	0x441
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x4
	.byte	0x26
	.byte	0x1
	.4byte	0x92
	.byte	0x3
	.4byte	0x626
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x4
	.byte	0x26
	.4byte	0x5d6
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x4
	.byte	0x26
	.4byte	0x53
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x2
	.byte	0x7a
	.byte	0x1
	.4byte	0x9d
	.byte	0x3
	.4byte	0x643
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x2
	.byte	0x7a
	.4byte	0x26d
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x154
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LLST0
	.4byte	0x672
	.uleb128 0x1a
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x154
	.4byte	0x2dc
	.4byte	.LLST1
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x163
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST2
	.4byte	0x6ab
	.uleb128 0x1a
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x163
	.4byte	0x6ab
	.4byte	.LLST3
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x165
	.4byte	0x53
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x414
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x1aa
	.byte	0x1
	.4byte	0x6ab
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST4
	.4byte	0x6fc
	.uleb128 0x1a
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x436
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x53
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x53
	.4byte	.LLST6
	.byte	0x0
	.uleb128 0x1e
	.4byte	.LASF140
	.byte	0x1
	.byte	0xe7
	.byte	0x1
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LLST7
	.4byte	0x752
	.uleb128 0x1f
	.4byte	.LASF121
	.byte	0x1
	.byte	0xe7
	.4byte	0x6ab
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	0x53a
	.4byte	.LBB32
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0xe9
	.4byte	0x73c
	.uleb128 0x21
	.4byte	0x54b
	.byte	0x0
	.uleb128 0x22
	.4byte	0x557
	.4byte	.LBB36
	.4byte	.LBE36
	.byte	0x1
	.byte	0xea
	.uleb128 0x21
	.4byte	0x564
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x196
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST9
	.4byte	0x79b
	.uleb128 0x1a
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x196
	.4byte	0x2dc
	.4byte	.LLST10
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x197
	.4byte	0x53
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x198
	.4byte	0x6ab
	.4byte	.LLST11
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x17e
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST12
	.4byte	0x7e4
	.uleb128 0x1a
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x17e
	.4byte	0x2dc
	.4byte	.LLST13
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x17f
	.4byte	0x53
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x180
	.4byte	0x6ab
	.4byte	.LLST14
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF141
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.4byte	0x6ab
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LLST15
	.4byte	0x8db
	.uleb128 0x1f
	.4byte	.LASF35
	.byte	0x1
	.byte	0x75
	.4byte	0x26d
	.4byte	.LLST16
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x1
	.byte	0x75
	.4byte	0x9d
	.4byte	.LLST17
	.uleb128 0x24
	.4byte	.LASF121
	.byte	0x1
	.byte	0x76
	.4byte	0x6ab
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x1
	.byte	0x77
	.4byte	0x53
	.4byte	.LLST18
	.uleb128 0x26
	.4byte	.LASF128
	.byte	0x1
	.byte	0x78
	.4byte	0x9d
	.4byte	.LLST19
	.uleb128 0x24
	.4byte	.LASF129
	.byte	0x1
	.byte	0x79
	.4byte	0x8db
	.byte	0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x27
	.4byte	0x570
	.4byte	.LBB38
	.4byte	.LBE38
	.byte	0x1
	.byte	0x7c
	.4byte	0x87f
	.uleb128 0x21
	.4byte	0x5a2
	.uleb128 0x21
	.4byte	0x597
	.uleb128 0x21
	.4byte	0x58c
	.uleb128 0x21
	.4byte	0x581
	.byte	0x0
	.uleb128 0x27
	.4byte	0x5ae
	.4byte	.LBB40
	.4byte	.LBE40
	.byte	0x1
	.byte	0x98
	.4byte	0x89d
	.uleb128 0x21
	.4byte	0x5ca
	.uleb128 0x21
	.4byte	0x5bf
	.byte	0x0
	.uleb128 0x27
	.4byte	0x570
	.4byte	.LBB42
	.4byte	.LBE42
	.byte	0x1
	.byte	0x9f
	.4byte	0x8c5
	.uleb128 0x21
	.4byte	0x5a2
	.uleb128 0x21
	.4byte	0x597
	.uleb128 0x21
	.4byte	0x58c
	.uleb128 0x21
	.4byte	0x581
	.byte	0x0
	.uleb128 0x22
	.4byte	0x5e1
	.4byte	.LBB44
	.4byte	.LBE44
	.byte	0x1
	.byte	0xa3
	.uleb128 0x21
	.4byte	0x5f2
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	0x88
	.4byte	0x8ec
	.uleb128 0x29
	.4byte	0x426
	.2byte	0x1ff
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x129
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST20
	.4byte	0x935
	.uleb128 0x1a
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x129
	.4byte	0x26d
	.4byte	.LLST21
	.uleb128 0x1a
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x129
	.4byte	0x9d
	.4byte	.LLST22
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x12b
	.4byte	0x53
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF132
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LLST23
	.4byte	0x989
	.uleb128 0x1f
	.4byte	.LASF120
	.byte	0x1
	.byte	0xed
	.4byte	0x2dc
	.4byte	.LLST24
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x1
	.byte	0xed
	.4byte	0x9d
	.4byte	.LLST25
	.uleb128 0x2b
	.ascii	"i\000"
	.byte	0x1
	.byte	0xef
	.4byte	0x53
	.uleb128 0x26
	.4byte	.LASF35
	.byte	0x1
	.byte	0xf0
	.4byte	0x26d
	.4byte	.LLST26
	.byte	0x0
	.uleb128 0x2c
	.4byte	.LASF133
	.byte	0x1
	.byte	0x35
	.4byte	0x436
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	DEVICE_NAME
	.uleb128 0x2d
	.4byte	.LASF134
	.byte	0xb
	.byte	0x2d
	.4byte	0x429
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	0x6ab
	.4byte	0x9b8
	.uleb128 0x2e
	.4byte	0x426
	.byte	0x3
	.byte	0x0
	.uleb128 0x2c
	.4byte	.LASF135
	.byte	0x1
	.byte	0x6c
	.4byte	0x9a8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_FAT_partitions
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.4byte	0x125
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x9cb
	.4byte	0x643
	.ascii	"_FAT_partition_setDefaultInterface\000"
	.4byte	0x672
	.ascii	"_FAT_partition_setDefaultPartition\000"
	.4byte	0x6b1
	.ascii	"_FAT_partition_getPartitionFromPath\000"
	.4byte	0x752
	.ascii	"_FAT_partition_unsafeUnmount\000"
	.4byte	0x79b
	.ascii	"_FAT_partition_unmount\000"
	.4byte	0x8ec
	.ascii	"_FAT_partition_mountCustomInterface\000"
	.4byte	0x935
	.ascii	"_FAT_partition_mount\000"
	.4byte	0x989
	.ascii	"DEVICE_NAME\000"
	.4byte	0x9b8
	.ascii	"_FAT_partitions\000"
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
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF103:
	.ascii	"BPB_FAT32_fileSysType\000"
.LASF136:
	.ascii	"GNU C 4.4.3\000"
.LASF63:
	.ascii	"sectorsPerCluster\000"
.LASF141:
	.ascii	"_FAT_partition_constructor\000"
.LASF114:
	.ascii	"_FAT_mem_allocate\000"
.LASF19:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF110:
	.ascii	"buffer\000"
.LASF57:
	.ascii	"totalSize\000"
.LASF138:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF25:
	.ascii	"fn_readSectors\000"
.LASF7:
	.ascii	"unsigned int\000"
.LASF116:
	.ascii	"u8array_to_u16\000"
.LASF88:
	.ascii	"BPB_FAT16_volumeID\000"
.LASF90:
	.ascii	"BPB_FAT16_fileSysType\000"
.LASF84:
	.ascii	"BPB_numSectors\000"
.LASF66:
	.ascii	"openFileCount\000"
.LASF125:
	.ascii	"_FAT_partition_unsafeUnmount\000"
.LASF89:
	.ascii	"BPB_FAT16_volumeLabel\000"
.LASF73:
	.ascii	"BPB_bytesPerSector\000"
.LASF102:
	.ascii	"BPB_FAT32_volumeLabel\000"
.LASF74:
	.ascii	"BPB_sectorsPerCluster\000"
.LASF122:
	.ascii	"_FAT_partition_getPartitionFromPath\000"
.LASF131:
	.ascii	"device\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF104:
	.ascii	"BPB_FAT32_bootCode\000"
.LASF111:
	.ascii	"u8array_to_u32\000"
.LASF65:
	.ascii	"cwdCluster\000"
.LASF10:
	.ascii	"float\000"
.LASF32:
	.ascii	"count\000"
.LASF107:
	.ascii	"_FAT_disc_shutdown\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF127:
	.ascii	"cacheSize\000"
.LASF118:
	.ascii	"_FAT_partition_setDefaultInterface\000"
.LASF21:
	.ascii	"ioType\000"
.LASF86:
	.ascii	"BPB_FAT16_reserved1\000"
.LASF26:
	.ascii	"fn_writeSectors\000"
.LASF28:
	.ascii	"fn_shutdown\000"
.LASF20:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF52:
	.ascii	"lastCluster\000"
.LASF49:
	.ascii	"PARTITION_INTERFACE\000"
.LASF70:
	.ascii	"size_t\000"
.LASF45:
	.ascii	"PI_DEFAULT\000"
.LASF113:
	.ascii	"offset\000"
.LASF64:
	.ascii	"bytesPerCluster\000"
.LASF81:
	.ascii	"BPB_sectorsPerTrk\000"
.LASF41:
	.ascii	"FS_FAT12\000"
.LASF42:
	.ascii	"FS_FAT16\000"
.LASF123:
	.ascii	"path\000"
.LASF13:
	.ascii	"true\000"
.LASF71:
	.ascii	"BPB_jmpBoot\000"
.LASF61:
	.ascii	"dataStart\000"
.LASF67:
	.ascii	"PARTITION\000"
.LASF139:
	.ascii	"_FAT_mem_free\000"
.LASF16:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF69:
	.ascii	"char\000"
.LASF124:
	.ascii	"namelen\000"
.LASF130:
	.ascii	"_FAT_partition_mountCustomInterface\000"
.LASF137:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/pa"
	.ascii	"rtition.c\000"
.LASF17:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF55:
	.ascii	"readOnly\000"
.LASF85:
	.ascii	"BPB_FAT16_driveNumber\000"
.LASF60:
	.ascii	"numberOfSectors\000"
.LASF31:
	.ascii	"sector\000"
.LASF47:
	.ascii	"PI_SLOT_2\000"
.LASF87:
	.ascii	"BPB_FAT16_extBootSig\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF27:
	.ascii	"fn_clearStatus\000"
.LASF38:
	.ascii	"pages\000"
.LASF39:
	.ascii	"CACHE\000"
.LASF8:
	.ascii	"long long int\000"
.LASF43:
	.ascii	"FS_FAT32\000"
.LASF121:
	.ascii	"partition\000"
.LASF14:
	.ascii	"bool\000"
.LASF72:
	.ascii	"BPB_OEMName\000"
.LASF126:
	.ascii	"_FAT_partition_unmount\000"
.LASF94:
	.ascii	"BPB_FAT32_fsVer\000"
.LASF53:
	.ascii	"firstFree\000"
.LASF51:
	.ascii	"sectorsPerFat\000"
.LASF35:
	.ascii	"disc\000"
.LASF117:
	.ascii	"_FAT_disc_features\000"
.LASF115:
	.ascii	"size\000"
.LASF106:
	.ascii	"BPB_bootSig_AA\000"
.LASF80:
	.ascii	"BPB_sectorsPerFAT\000"
.LASF133:
	.ascii	"DEVICE_NAME\000"
.LASF24:
	.ascii	"fn_isInserted\000"
.LASF140:
	.ascii	"_FAT_partition_destructor\000"
.LASF62:
	.ascii	"bytesPerSector\000"
.LASF30:
	.ascii	"IO_INTERFACE\000"
.LASF54:
	.ascii	"cache\000"
.LASF22:
	.ascii	"features\000"
.LASF134:
	.ascii	"__ctype_ptr__\000"
.LASF15:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF99:
	.ascii	"BPB_FAT32_reserved1\000"
.LASF79:
	.ascii	"BPB_mediaDesc\000"
.LASF33:
	.ascii	"dirty\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF23:
	.ascii	"fn_startup\000"
.LASF83:
	.ascii	"BPB_numHiddenSectors\000"
.LASF46:
	.ascii	"PI_SLOT_1\000"
.LASF2:
	.ascii	"short int\000"
.LASF120:
	.ascii	"partitionNumber\000"
.LASF68:
	.ascii	"long int\000"
.LASF132:
	.ascii	"_FAT_partition_mount\000"
.LASF98:
	.ascii	"BPB_FAT32_driveNumber\000"
.LASF119:
	.ascii	"_FAT_partition_setDefaultPartition\000"
.LASF93:
	.ascii	"BPB_FAT32_extFlags\000"
.LASF96:
	.ascii	"BPB_FAT32_fsInfo\000"
.LASF105:
	.ascii	"BPB_bootSig_55\000"
.LASF76:
	.ascii	"BPB_numFATs\000"
.LASF91:
	.ascii	"BPB_FAT16_bootCode\000"
.LASF44:
	.ascii	"FS_TYPE\000"
.LASF97:
	.ascii	"BPB_FAT32_bkBootSec\000"
.LASF135:
	.ascii	"_FAT_partitions\000"
.LASF29:
	.ascii	"long unsigned int\000"
.LASF59:
	.ascii	"rootDirCluster\000"
.LASF75:
	.ascii	"BPB_reservedSectors\000"
.LASF34:
	.ascii	"CACHE_ENTRY\000"
.LASF40:
	.ascii	"FS_UNKNOWN\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF92:
	.ascii	"BPB_FAT32_sectorsPerFAT32\000"
.LASF129:
	.ascii	"sectorBuffer\000"
.LASF12:
	.ascii	"false\000"
.LASF37:
	.ascii	"cacheEntries\000"
.LASF77:
	.ascii	"BPB_rootEntries\000"
.LASF108:
	.ascii	"_FAT_disc_readSectors\000"
.LASF50:
	.ascii	"fatStart\000"
.LASF112:
	.ascii	"item\000"
.LASF109:
	.ascii	"numSectors\000"
.LASF48:
	.ascii	"PI_CUSTOM\000"
.LASF101:
	.ascii	"BPB_FAT32_volumeID\000"
.LASF0:
	.ascii	"signed char\000"
.LASF78:
	.ascii	"BPB_numSectorsSmall\000"
.LASF56:
	.ascii	"filesysType\000"
.LASF58:
	.ascii	"rootDirStart\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF128:
	.ascii	"bootSector\000"
.LASF95:
	.ascii	"BPB_FAT32_rootClus\000"
.LASF18:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF11:
	.ascii	"double\000"
.LASF36:
	.ascii	"numberOfPages\000"
.LASF100:
	.ascii	"BPB_FAT32_extBootSig\000"
.LASF82:
	.ascii	"BPB_numHeads\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
