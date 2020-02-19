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
	.type	u8array_to_u16, %function
u8array_to_u16:
.LFB12:
	.file 2 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/bit_ops.h"
	.loc 2 38 0
.LVL5:
	ldrb	r2, [r0, r1]
	add	r0, r0, r1
.LVL6:
	ldrb	r3, [r0, #1]
	@ lr needed for prologue
	.loc 2 38 0
	lsl	r3, r3, #8
	orr	r2, r2, r3
	.loc 2 40 0
	mov	r0, r2
	@ sp needed for prologue
	bx	lr
.LFE12:
	.size	u8array_to_u16, .-u8array_to_u16
	.align	2
	.code 16
	.thumb_func
	.type	u8array_to_u32, %function
u8array_to_u32:
.LFB13:
	.loc 2 42 0
.LVL7:
	.loc 2 43 0
	add	r0, r0, r1
.LVL8:
	ldrb	r3, [r0, #1]
	ldrb	r1, [r0]
.LVL9:
	lsl	r3, r3, #8
	ldrb	r2, [r0, #3]
	orr	r1, r1, r3
	ldrb	r3, [r0, #2]
	lsl	r2, r2, #24
	lsl	r3, r3, #16
	orr	r2, r2, r3
	orr	r1, r1, r2
	.loc 2 44 0
	mov	r0, r1
	.loc 2 42 0
	@ lr needed for prologue
	.loc 2 44 0
	@ sp needed for prologue
	bx	lr
.LFE13:
	.size	u8array_to_u32, .-u8array_to_u32
	.align	2
	.global	_FAT_partition_setDefaultInterface
	.code 16
	.thumb_func
	.type	_FAT_partition_setDefaultInterface, %function
_FAT_partition_setDefaultInterface:
.LFB26:
	.file 3 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/partition.c"
	.loc 3 340 0
	push	{lr}
.LCFI1:
.LVL10:
	.loc 3 342 0
	sub	r3, r0, #1
	lsl	r3, r3, #24
	lsr	r3, r3, #24
	cmp	r3, #2
	bhi	.L8
	.loc 3 346 0
	ldr	r2, .L13
	lsl	r3, r0, #2
	ldr	r0, [r3, r2]
.LVL11:
	cmp	r0, #0
	beq	.L8
	.loc 3 350 0
	str	r0, [r2]
	mov	r0, #1
	b	.L11
.LVL12:
.L8:
	.loc 3 352 0
	mov	r0, #0
.LVL13:
.L11:
	.loc 3 353 0
	@ sp needed for prologue
	pop	{pc}
.L14:
	.align	2
.L13:
	.word	_FAT_partitions
.LFE26:
	.size	_FAT_partition_setDefaultInterface, .-_FAT_partition_setDefaultInterface
	.align	2
	.global	_FAT_partition_setDefaultPartition
	.code 16
	.thumb_func
	.type	_FAT_partition_setDefaultPartition, %function
_FAT_partition_setDefaultPartition:
.LFB27:
	.loc 3 355 0
	push	{lr}
.LCFI2:
.LVL14:
	.loc 3 359 0
	cmp	r0, #0
	beq	.L16
	.loc 3 365 0
	ldr	r2, .L23
	ldr	r3, [r2, #4]
	cmp	r3, r0
	beq	.L18
	ldr	r3, [r2, #8]
	cmp	r3, r0
	beq	.L18
	ldr	r3, [r2, #12]
	cmp	r3, r0
	bne	.L16
.L18:
	.loc 3 376 0
	ldr	r3, .L23
	str	r0, [r3]
	mov	r0, #1
.LVL15:
	b	.L21
.LVL16:
.L16:
	.loc 3 379 0
	mov	r0, #0
.LVL17:
.L21:
	.loc 3 380 0
	@ sp needed for prologue
	pop	{pc}
.L24:
	.align	2
.L23:
	.word	_FAT_partitions
.LFE27:
	.size	_FAT_partition_setDefaultPartition, .-_FAT_partition_setDefaultPartition
	.align	2
	.global	_FAT_partition_getPartitionFromPath
	.code 16
	.thumb_func
	.type	_FAT_partition_getPartitionFromPath, %function
_FAT_partition_getPartitionFromPath:
.LFB30:
	.loc 3 426 0
	push	{r4, r5, r6, lr}
.LCFI3:
.LVL18:
	.loc 3 432 0
	ldr	r3, .L36
	.loc 3 426 0
	mov	r5, r0
	.loc 3 432 0
	ldr	r6, [r3]
	mov	r0, r6
.LVL19:
	bl	strlen
	.loc 3 433 0
	mov	r1, #58
	.loc 3 432 0
	mov	r4, r0
	.loc 3 433 0
	mov	r0, r5
	bl	strchr
	cmp	r0, #0
	beq	.L26
	.loc 3 436 0
	mov	r0, r6
	mov	r1, r5
	mov	r2, r4
	bl	strncmp
	cmp	r0, #0
	bne	.L28
	.loc 3 437 0
	ldrb	r2, [r5, r4]
	cmp	r2, #58
	beq	.L26
	.loc 3 440 0
	ldr	r3, .L36+4
	ldr	r3, [r3]
	ldrb	r3, [r3, r2]
	lsl	r1, r3, #29
	bpl	.L28
	add	r3, r5, r4
	ldrb	r3, [r3, #1]
	cmp	r3, #58
	bne	.L28
	.loc 3 442 0
	mov	r3, r2
.LVL20:
	sub	r3, r3, #48
	.loc 3 452 0
	cmp	r3, #3
	bls	.L33
	b	.L28
.LVL21:
.L26:
	mov	r3, #0
.LVL22:
.L33:
	.loc 3 456 0
	ldr	r2, .L36+8
	lsl	r3, r3, #2
.LVL23:
	ldr	r0, [r3, r2]
	b	.L34
.LVL24:
.L28:
	mov	r0, #0
.L34:
	.loc 3 461 0
	@ sp needed for prologue
.LVL25:
	pop	{r4, r5, r6, pc}
.L37:
	.align	2
.L36:
	.word	DEVICE_NAME
	.word	__ctype_ptr
	.word	_FAT_partitions
.LFE30:
	.size	_FAT_partition_getPartitionFromPath, .-_FAT_partition_getPartitionFromPath
	.align	2
	.code 16
	.thumb_func
	.type	_FAT_partition_destructor, %function
_FAT_partition_destructor:
.LFB23:
	.loc 3 231 0
	push	{r4, lr}
.LCFI4:
.LVL26:
	.loc 3 231 0
	mov	r4, r0
	.loc 3 232 0
	ldr	r0, [r0, #4]
.LVL27:
	bl	_FAT_cache_destructor
.LBB8:
	.loc 1 109 0
	ldr	r3, [r4]
.LBE8:
	.loc 3 235 0
	@ sp needed for prologue
.LBB9:
	.loc 1 109 0
	ldr	r3, [r3, #28]
	blx	r3
.LBE9:
.LBB10:
.LBB11:
	.file 4 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/mem_allocate.h"
	.loc 4 44 0
	mov	r0, r4
	bl	free
.LVL28:
.LBE11:
.LBE10:
	.loc 3 235 0
	pop	{r4, pc}
.LFE23:
	.size	_FAT_partition_destructor, .-_FAT_partition_destructor
	.align	2
	.global	_FAT_partition_unsafeUnmount
	.code 16
	.thumb_func
	.type	_FAT_partition_unsafeUnmount, %function
_FAT_partition_unsafeUnmount:
.LFB29:
	.loc 3 406 0
	push	{r4, lr}
.LCFI5:
.LVL29:
	.loc 3 408 0
	ldr	r2, .L53
	lsl	r0, r0, #2
.LVL30:
	ldr	r4, [r0, r2]
.LVL31:
	.loc 3 410 0
	cmp	r4, #0
	bne	.L41
	mov	r0, #0
	b	.L43
.L41:
	.loc 3 416 0
	ldr	r3, [r2]
	cmp	r3, r4
	bne	.L44
	.loc 3 417 0
	mov	r3, #0
	str	r3, [r2]
.L44:
	.loc 3 416 0
	ldr	r3, [r2, #4]
	cmp	r3, r4
	bne	.L46
	.loc 3 417 0
	mov	r3, #0
	str	r3, [r2, #4]
.L46:
	.loc 3 416 0
	ldr	r3, [r2, #8]
	cmp	r3, r4
	bne	.L48
	.loc 3 417 0
	mov	r3, #0
	str	r3, [r2, #8]
.L48:
	.loc 3 416 0
	ldr	r3, [r2, #12]
	cmp	r3, r4
	bne	.L50
	.loc 3 417 0
	mov	r3, #0
	str	r3, [r2, #12]
.L50:
	.loc 3 421 0
	ldr	r0, [r4, #4]
	bl	_FAT_cache_invalidate
	.loc 3 422 0
	mov	r0, r4
	bl	_FAT_partition_destructor
	mov	r0, #1
.L43:
	.loc 3 424 0
	@ sp needed for prologue
.LVL32:
	pop	{r4, pc}
.L54:
	.align	2
.L53:
	.word	_FAT_partitions
.LFE29:
	.size	_FAT_partition_unsafeUnmount, .-_FAT_partition_unsafeUnmount
	.align	2
	.global	_FAT_partition_unmount
	.code 16
	.thumb_func
	.type	_FAT_partition_unmount, %function
_FAT_partition_unmount:
.LFB28:
	.loc 3 382 0
	push	{lr}
.LCFI6:
.LVL33:
	.loc 3 384 0
	ldr	r2, .L69
	lsl	r0, r0, #2
.LVL34:
	ldr	r0, [r0, r2]
.LVL35:
	.loc 3 382 0
	sub	sp, sp, #4
.LCFI7:
	.loc 3 386 0
	cmp	r0, #0
	beq	.L56
	.loc 3 390 0
	ldr	r1, [r0, #64]
	cmp	r1, #0
	bne	.L56
	.loc 3 397 0
	ldr	r3, [r2]
	cmp	r3, r0
	bne	.L59
	.loc 3 398 0
	str	r1, [r2]
.L59:
	.loc 3 397 0
	ldr	r3, [r2, #4]
	cmp	r3, r0
	bne	.L61
	.loc 3 398 0
	str	r1, [r2, #4]
.L61:
	.loc 3 397 0
	ldr	r3, [r2, #8]
	cmp	r3, r0
	bne	.L63
	.loc 3 398 0
	str	r1, [r2, #8]
.L63:
	.loc 3 397 0
	ldr	r3, [r2, #12]
	cmp	r3, r0
	bne	.L65
	.loc 3 398 0
	str	r1, [r2, #12]
.L65:
	.loc 3 402 0
	bl	_FAT_partition_destructor
.LVL36:
	mov	r0, #1
	b	.L67
.LVL37:
.L56:
	.loc 3 403 0
	mov	r0, #0
.LVL38:
.L67:
	.loc 3 404 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L70:
	.align	2
.L69:
	.word	_FAT_partitions
.LFE28:
	.size	_FAT_partition_unmount, .-_FAT_partition_unmount
	.global	__aeabi_uidiv
	.align	2
	.code 16
	.thumb_func
	.type	_FAT_partition_constructor, %function
_FAT_partition_constructor:
.LFB22:
	.loc 3 117 0
	push	{r4, r5, r6, r7, lr}
.LCFI8:
.LVL39:
	ldr	r4, .L116
	.loc 3 121 0
	mov	r2, #128
	.loc 3 117 0
	add	sp, sp, r4
.LCFI9:
	.loc 3 121 0
	add	r4, sp, #24
	.loc 3 117 0
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	.loc 3 121 0
	lsl	r2, r2, #2
	mov	r1, #0
.LVL40:
	mov	r0, r4
.LVL41:
	bl	memset
	.loc 3 124 0
	ldr	r0, [sp, #12]
	mov	r1, #0
	mov	r2, #1
	mov	r3, r4
	bl	_FAT_disc_readSectors
	cmp	r0, #0
	bne	.LCB479
	b	.L72	@long jump
.LCB479:
	.loc 3 129 0
	mov	r3, #255
	lsl	r3, r3, #1
	ldrb	r3, [r4, r3]
	cmp	r3, #85
	beq	.LCB485
	b	.L72	@long jump
.LCB485:
	ldr	r3, .L116+4
	ldrb	r3, [r4, r3]
	cmp	r3, #170
	beq	.LCB489
	b	.L72	@long jump
.LCB489:
	.loc 3 134 0
	mov	r3, sp
	add	r3, r3, #78
	ldrb	r3, [r3]
	cmp	r3, #70
	bne	.L76
	mov	r3, sp
	add	r3, r3, #79
	ldrb	r3, [r3]
	cmp	r3, #65
	bne	.L76
	add	r3, sp, #80
	ldrb	r3, [r3]
	cmp	r3, #84
	beq	.L79
.L76:
	.loc 3 136 0
	mov	r3, sp
	add	r3, r3, #106
	ldrb	r3, [r3]
	cmp	r3, #70
	bne	.L80
	mov	r3, sp
	add	r3, r3, #107
	ldrb	r3, [r3]
	cmp	r3, #65
	bne	.L80
	add	r3, sp, #108
	ldrb	r3, [r3]
	cmp	r3, #84
	bne	.L80
	b	.L79
.LVL42:
.L83:
	.loc 3 143 0
	mov	r3, #255
	add	r1, r1, #16
	lsl	r3, r3, #1
	cmp	r1, r3
	beq	.L113
	b	.L85
.LVL43:
.L80:
	mov	r1, #223
.LVL44:
	lsl	r1, r1, #1
.L85:
	add	r2, sp, #24
	ldrb	r3, [r1, r2]
	cmp	r3, #128
	bne	.L83
	b	.L114
.L113:
	.loc 3 146 0
	mov	r3, #225
	lsl	r3, r3, #1
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L89
	mov	r1, #223
	b	.L115
.L89:
	mov	r3, #233
	lsl	r3, r3, #1
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L91
	mov	r1, #231
.L115:
	lsl	r1, r1, #1
	b	.L87
.L91:
	mov	r3, #241
	lsl	r3, r3, #1
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L93
	mov	r1, #239
	b	.L115
.L93:
	mov	r3, #249
	lsl	r3, r3, #1
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L79
	mov	r1, #247
	b	.L115
.L114:
	.loc 3 150 0
	mov	r3, #255
	lsl	r3, r3, #1
	cmp	r1, r3
	beq	.L79
.L87:
	.loc 3 152 0
	add	r1, r1, #8
.LVL45:
	add	r0, sp, #24
	bl	u8array_to_u32
	str	r0, [sp, #20]
.LVL46:
	b	.L96
.LVL47:
.L79:
	mov	r2, #0
	str	r2, [sp, #20]
.LVL48:
.L96:
	.loc 3 159 0
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #20]
.LVL49:
	mov	r2, #1
	add	r3, sp, #24
	bl	_FAT_disc_readSectors
	cmp	r0, #0
	bne	.LCB629
	b	.L72	@long jump
.LCB629:
.LBB16:
	.loc 4 40 0
	mov	r0, #68
	bl	malloc
	mov	r7, r0
.LBE16:
	.loc 3 164 0
	cmp	r0, #0
	bne	.LCB638
	b	.L72	@long jump
.LCB638:
	.loc 3 169 0
	ldr	r3, [sp, #12]
	.loc 3 163 0
	mov	r6, r0
.LVL50:
	.loc 3 169 0
	str	r3, [r0]
	.loc 3 172 0
	mov	r1, #22
	add	r0, sp, #24
	bl	u8array_to_u16
	str	r0, [r7, #48]
	.loc 3 173 0
	cmp	r0, #0
	bne	.L99
.LVL51:
	.loc 3 174 0
	add	r0, sp, #24
	mov	r1, #36
	bl	u8array_to_u32
	str	r0, [r7, #48]
.L99:
	.loc 3 177 0
	add	r0, sp, #24
	mov	r1, #19
	bl	u8array_to_u16
	str	r0, [r6, #24]
	.loc 3 178 0
	cmp	r0, #0
	bne	.L101
.LVL52:
	.loc 3 179 0
	add	r0, sp, #24
	mov	r1, #32
	bl	u8array_to_u32
	str	r0, [r6, #24]
.L101:
	.loc 3 182 0
	mov	r3, #128
	lsl	r3, r3, #2
	.loc 3 183 0
	mov	r2, #37
	.loc 3 182 0
	str	r3, [r6, #32]
	.loc 3 183 0
	add	r2, r2, sp
	add	r0, sp, #24
	mov	r1, #11
	ldrb	r4, [r2]
	bl	u8array_to_u16
	mul	r0, r4
	cmp	r0, #0
	bge	.L103
	ldr	r3, .L116+4
	add	r0, r0, r3
.L103:
	asr	r5, r0, #9
	.loc 3 184 0
	lsl	r3, r5, #9
	str	r3, [r6, #40]
	.loc 3 185 0
	mov	r1, #14
	.loc 3 183 0
	str	r5, [r6, #36]
	.loc 3 185 0
	add	r0, sp, #24
	bl	u8array_to_u16
	ldr	r2, [sp, #20]
	.loc 3 188 0
	mov	r1, #17
	.loc 3 185 0
	add	r0, r2, r0
	str	r0, [sp, #16]
	str	r0, [r6, #44]
	.loc 3 187 0
	add	r2, sp, #40
	ldrb	r3, [r2]
	ldr	r2, [r6, #48]
	mov	r4, r2
	mul	r4, r3
	add	r4, r0, r4
	str	r2, [sp, #4]
	str	r4, [r6, #16]
	.loc 3 188 0
	add	r0, sp, #24
	bl	u8array_to_u16
	lsl	r0, r0, #5
	lsr	r0, r0, #9
	add	r4, r4, r0
	.loc 3 190 0
	ldr	r0, [r6, #24]
	.loc 3 188 0
	str	r4, [r6, #28]
	.loc 3 190 0
	sub	r0, r0, r4
	lsl	r3, r0, #9
	str	r3, [r6, #12]
	.loc 3 193 0
	mov	r1, r5
	bl	__aeabi_uidiv
	.loc 3 196 0
	ldr	r3, .L116+8
	.loc 3 194 0
	mov	r2, #2
	.loc 3 193 0
	str	r0, [r6, #52]
	.loc 3 194 0
	str	r2, [r6, #56]
	.loc 3 196 0
	cmp	r0, r3
	bhi	.L104
	.loc 3 197 0
	mov	r3, #1
	strb	r3, [r6, #9]
	b	.L106
.L104:
	.loc 3 198 0
	ldr	r3, .L116+12
	cmp	r0, r3
	bhi	.L107
	.loc 3 199 0
	strb	r2, [r6, #9]
	b	.L106
.L107:
	.loc 3 201 0
	mov	r3, #3
	strb	r3, [r6, #9]
	.loc 3 208 0
	add	r0, sp, #24
	mov	r1, #44
	bl	u8array_to_u32
	.loc 3 210 0
	add	r3, sp, #64
	.loc 3 208 0
	str	r0, [r6, #20]
	.loc 3 210 0
	ldrb	r2, [r3]
	lsl	r3, r2, #24
	cmp	r3, #0
	bge	.L109
	b	.L110
.L106:
	.loc 3 205 0
	mov	r3, #0
	str	r3, [r7, #20]
	b	.L110
.LVL53:
.L109:
	.loc 3 212 0
	mov	r3, #15
	and	r3, r3, r2
	ldr	r2, [sp, #4]
	mul	r3, r2
	ldr	r2, [sp, #16]
	add	r3, r2, r3
	str	r3, [r6, #44]
.L110:
	.loc 3 217 0
	ldr	r1, [r7]
	ldr	r0, [sp, #8]
	bl	_FAT_cache_constructor
	.loc 3 220 0
	ldr	r3, [r7, #20]
	.loc 3 217 0
	str	r0, [r7, #4]
	.loc 3 220 0
	str	r3, [r7, #60]
	.loc 3 223 0
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	mov	r3, #1
	lsr	r2, r2, #1
	bic	r3, r3, r2
	strb	r3, [r7, #8]
	.loc 3 226 0
	mov	r3, #0
	str	r3, [r7, #64]
	b	.L111
.LVL54:
.L72:
	.loc 3 228 0
	mov	r6, #0
.LVL55:
.L111:
	.loc 3 229 0
	mov	r3, #135
	lsl	r3, r3, #2
	mov	r0, r6
	add	sp, sp, r3
	@ sp needed for prologue
.LVL56:
	pop	{r4, r5, r6, r7, pc}
.L117:
	.align	2
.L116:
	.word	-540
	.word	511
	.word	4084
	.word	65524
.LFE22:
	.size	_FAT_partition_constructor, .-_FAT_partition_constructor
	.align	2
	.global	_FAT_partition_mountCustomInterface
	.code 16
	.thumb_func
	.type	_FAT_partition_mountCustomInterface, %function
_FAT_partition_mountCustomInterface:
.LFB25:
	.loc 3 297 0
	push	{r4, lr}
.LCFI10:
.LVL57:
	.loc 3 301 0
	ldr	r2, .L133
	ldr	r3, [r2, #12]
	cmp	r3, #0
	bne	.L119
	.loc 3 305 0
	cmp	r0, #0
	beq	.L119
	mov	r4, r2
.L122:
	.loc 3 311 0
	ldr	r2, [r4]
	cmp	r2, #0
	beq	.L123
	ldr	r3, [r2]
	cmp	r3, r0
	beq	.L130
.L123:
	.loc 3 310 0
	ldr	r3, .L133+4
	.loc 3 313 0
	add	r4, r4, #4
	.loc 3 310 0
	cmp	r4, r3
	bne	.L122
	.loc 3 317 0
	bl	_FAT_partition_constructor
.LVL58:
	mov	r3, r4
	sub	r3, r3, #16
	str	r0, [r3, #12]
	mov	r2, #0
	cmp	r0, #0
	bne	.L128
	mov	r2, #1
.L128:
	mov	r3, #1
	eor	r3, r3, r2
	lsl	r3, r3, #24
	lsr	r0, r3, #24
	b	.L126
.LVL59:
.L130:
	.loc 3 312 0
	ldr	r3, .L133
	mov	r0, #1
.LVL60:
	str	r2, [r3, #12]
	b	.L126
.LVL61:
.L119:
	.loc 3 317 0
	mov	r0, #0
.LVL62:
.L126:
	.loc 3 338 0
	@ sp needed for prologue
	pop	{r4, pc}
.L134:
	.align	2
.L133:
	.word	_FAT_partitions
	.word	_FAT_partitions+16
.LFE25:
	.size	_FAT_partition_mountCustomInterface, .-_FAT_partition_mountCustomInterface
	.align	2
	.global	_FAT_partition_mount
	.code 16
	.thumb_func
	.type	_FAT_partition_mount, %function
_FAT_partition_mount:
.LFB24:
	.loc 3 237 0
	push	{r4, r5, r6, lr}
.LCFI11:
.LVL63:
	.loc 3 242 0
	ldr	r3, .L153
	lsl	r2, r0, #2
	ldr	r3, [r2, r3]
	.loc 3 237 0
	mov	r5, r0
	mov	r6, r1
	.loc 3 242 0
	cmp	r3, #0
	bne	.L136
.LVL64:
	.loc 3 246 0
	cmp	r0, #1
	beq	.L138
.LVL65:
	cmp	r0, #2
	bne	.L136
	b	.L139
.L138:
	.loc 3 249 0
	bl	_FAT_disc_dsSlotFindInterface
.LVL66:
	b	.L140
.LVL67:
.L139:
	.loc 3 253 0
	bl	_FAT_disc_gbaSlotFindInterface
.LVL68:
.L140:
.LVL69:
	.loc 3 263 0
	cmp	r0, #0
	beq	.L136
	ldr	r4, .L153
.L142:
	.loc 3 269 0
	ldr	r1, [r4]
	cmp	r1, #0
	beq	.L143
	ldr	r3, [r1]
	cmp	r3, r0
	beq	.L150
.L143:
	.loc 3 268 0
	ldr	r3, .L153+4
	.loc 3 271 0
	add	r4, r4, #4
	.loc 3 268 0
	cmp	r4, r3
	bne	.L142
	.loc 3 275 0
	mov	r1, r6
	bl	_FAT_partition_constructor
.LVL70:
	mov	r2, r4
	sub	r2, r2, #16
	lsl	r3, r5, #2
	str	r0, [r3, r2]
	mov	r2, #0
	cmp	r0, #0
	bne	.L148
	mov	r2, #1
.L148:
	mov	r3, #1
	eor	r3, r3, r2
	lsl	r3, r3, #24
	lsr	r0, r3, #24
	b	.L146
.LVL71:
.L150:
	.loc 3 270 0
	ldr	r2, .L153
	lsl	r3, r5, #2
	mov	r0, #1
.LVL72:
	str	r1, [r3, r2]
	b	.L146
.LVL73:
.L136:
	.loc 3 275 0
	mov	r0, #0
.LVL74:
.L146:
	.loc 3 295 0
	@ sp needed for prologue
.LVL75:
.LVL76:
	pop	{r4, r5, r6, pc}
.L154:
	.align	2
.L153:
	.word	_FAT_partitions
	.word	_FAT_partitions+16
.LFE24:
	.size	_FAT_partition_mount, .-_FAT_partition_mount
	.global	DEVICE_NAME
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC12:
	.ascii	"fat\000"
	.data
	.align	2
	.type	DEVICE_NAME, %object
	.size	DEVICE_NAME, 4
DEVICE_NAME:
	.word	.LC12
	.global	_FAT_partitions
	.bss
	.align	2
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI1-.LFB26
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI2-.LFB27
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI3-.LFB30
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
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI4-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI5-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI6-.LFB28
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI8-.LFB22
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
	.uleb128 0x230
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI10-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI11-.LFB24
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
	.file 5 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 6 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/disc_io.h"
	.file 8 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/partition.h"
	.file 9 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/cache.h"
	.file 10 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/include/stddef.h"
	.file 11 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/ctype.h"
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
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB26-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE26-.Ltext0
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
.LLST12:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB30-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB23-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB29-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST24:
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
.LLST25:
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
	.sleb128 560
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL41-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 20
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LFB25-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL59-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LFB24-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL76-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x1
	.byte	0x51
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
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x8a5
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF103
	.byte	0x1
	.4byte	.LASF104
	.4byte	.LASF105
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x6
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x6
	.byte	0x3a
	.4byte	0x50
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x6
	.byte	0x54
	.4byte	0x69
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x8
	.byte	0x4
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x5
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x5
	.byte	0x60
	.4byte	0x45
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x5
	.byte	0x61
	.4byte	0x5e
	.uleb128 0x6
	.4byte	0xcf
	.byte	0x1
	.byte	0x5
	.byte	0x81
	.uleb128 0x7
	.4byte	.LASF14
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF15
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x81
	.4byte	0xba
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x7
	.byte	0x3d
	.4byte	0xe5
	.uleb128 0x8
	.byte	0x4
	.4byte	0xeb
	.uleb128 0x9
	.byte	0x1
	.4byte	0xcf
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x7
	.byte	0x3e
	.4byte	0xe5
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x7
	.byte	0x3f
	.4byte	0x107
	.uleb128 0x8
	.byte	0x4
	.4byte	0x10d
	.uleb128 0xa
	.4byte	0x127
	.byte	0x1
	.4byte	0xcf
	.uleb128 0xb
	.4byte	0xaf
	.uleb128 0xb
	.4byte	0xaf
	.uleb128 0xb
	.4byte	0x127
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x7
	.byte	0x40
	.4byte	0x134
	.uleb128 0x8
	.byte	0x4
	.4byte	0x13a
	.uleb128 0xa
	.4byte	0x154
	.byte	0x1
	.4byte	0xcf
	.uleb128 0xb
	.4byte	0xaf
	.uleb128 0xb
	.4byte	0xaf
	.uleb128 0xb
	.4byte	0x154
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x15a
	.uleb128 0xd
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0x41
	.4byte	0xe5
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x42
	.4byte	0xe5
	.uleb128 0xe
	.4byte	0x1ee
	.4byte	.LASF106
	.byte	0x20
	.byte	0x7
	.byte	0x44
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x7
	.byte	0x45
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x7
	.byte	0x46
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x7
	.byte	0x47
	.4byte	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x7
	.byte	0x48
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x7
	.byte	0x49
	.4byte	0xfc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x7
	.byte	0x4a
	.4byte	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x7
	.byte	0x4b
	.4byte	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x7
	.byte	0x4c
	.4byte	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x7
	.byte	0x4f
	.4byte	0x171
	.uleb128 0x10
	.4byte	0x22c
	.byte	0xc
	.byte	0x9
	.byte	0x2f
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x9
	.byte	0x30
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x9
	.byte	0x31
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x9
	.byte	0x32
	.4byte	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x9
	.byte	0x33
	.4byte	0x1f9
	.uleb128 0x10
	.4byte	0x278
	.byte	0x10
	.byte	0x9
	.byte	0x35
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x9
	.byte	0x36
	.4byte	0x278
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x9
	.byte	0x37
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x9
	.byte	0x38
	.4byte	0x283
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x9
	.byte	0x39
	.4byte	0x289
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x27e
	.uleb128 0x11
	.4byte	0x1ee
	.uleb128 0x8
	.byte	0x4
	.4byte	0x22c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9a
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x9
	.byte	0x3a
	.4byte	0x237
	.uleb128 0x6
	.4byte	0x2bb
	.byte	0x1
	.byte	0x8
	.byte	0x2d
	.uleb128 0x7
	.4byte	.LASF41
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF42
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF43
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF44
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x8
	.byte	0x2d
	.4byte	0x29a
	.uleb128 0x6
	.4byte	0x2e7
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF46
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF47
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF48
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF49
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x8
	.byte	0x30
	.4byte	0x2c6
	.uleb128 0x10
	.4byte	0x333
	.byte	0x10
	.byte	0x8
	.byte	0x35
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x8
	.byte	0x36
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x8
	.byte	0x37
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x8
	.byte	0x38
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x8
	.byte	0x39
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x5
	.ascii	"FAT\000"
	.byte	0x8
	.byte	0x3a
	.4byte	0x2f2
	.uleb128 0x10
	.4byte	0x419
	.byte	0x44
	.byte	0x8
	.byte	0x3c
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x8
	.byte	0x3d
	.4byte	0x278
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x8
	.byte	0x3e
	.4byte	0x419
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x8
	.byte	0x40
	.4byte	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x8
	.byte	0x41
	.4byte	0x2bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x8
	.byte	0x42
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x8
	.byte	0x43
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x8
	.byte	0x44
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x8
	.byte	0x45
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x8
	.byte	0x46
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x8
	.byte	0x47
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x8
	.byte	0x48
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x8
	.byte	0x49
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.ascii	"fat\000"
	.byte	0x8
	.byte	0x4a
	.4byte	0x333
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x8
	.byte	0x4c
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x8
	.byte	0x4d
	.4byte	0xaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x28f
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x8
	.byte	0x4e
	.4byte	0x33e
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x1
	.byte	0x8
	.uleb128 0x8
	.byte	0x4
	.4byte	0x43e
	.uleb128 0x11
	.4byte	0x431
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xa
	.byte	0xd6
	.4byte	0x85
	.uleb128 0x13
	.4byte	0x46b
	.4byte	.LASF71
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.4byte	0xaf
	.byte	0x3
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0x7a
	.4byte	0x278
	.byte	0x0
	.uleb128 0x15
	.4byte	0x4c4
	.4byte	.LASF72
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF36
	.byte	0x1
	.byte	0x4c
	.4byte	0x278
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x4c
	.4byte	0xaf
	.4byte	.LLST2
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x1
	.byte	0x4c
	.4byte	0xaf
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0x1
	.byte	0x4c
	.4byte	0x127
	.4byte	.LLST4
	.byte	0x0
	.uleb128 0x17
	.4byte	0x4fb
	.4byte	.LASF75
	.byte	0x2
	.byte	0x26
	.byte	0x1
	.4byte	0xa4
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x5d
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x2
	.byte	0x26
	.4byte	0x4fb
	.4byte	.LLST6
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x2
	.byte	0x26
	.4byte	0x7e
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x501
	.uleb128 0x11
	.4byte	0x9a
	.uleb128 0x17
	.4byte	0x53f
	.4byte	.LASF78
	.byte	0x2
	.byte	0x2a
	.byte	0x1
	.4byte	0xaf
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x1
	.byte	0x5d
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x2
	.byte	0x2a
	.4byte	0x4fb
	.4byte	.LLST8
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x2
	.byte	0x2a
	.4byte	0x7e
	.4byte	.LLST9
	.byte	0x0
	.uleb128 0x19
	.4byte	0x56e
	.byte	0x1
	.4byte	.LASF80
	.byte	0x3
	.2byte	0x154
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST10
	.uleb128 0x1a
	.4byte	.LASF79
	.byte	0x3
	.2byte	0x154
	.4byte	0x2e7
	.4byte	.LLST11
	.byte	0x0
	.uleb128 0x19
	.4byte	0x5a7
	.byte	0x1
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x163
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST12
	.uleb128 0x1a
	.4byte	.LASF82
	.byte	0x3
	.2byte	0x163
	.4byte	0x5a7
	.4byte	.LLST13
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x3
	.2byte	0x165
	.4byte	0x7e
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x41f
	.uleb128 0x19
	.4byte	0x5f8
	.byte	0x1
	.4byte	.LASF83
	.byte	0x3
	.2byte	0x1aa
	.byte	0x1
	.4byte	0x5a7
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LLST14
	.uleb128 0x1a
	.4byte	.LASF84
	.byte	0x3
	.2byte	0x1aa
	.4byte	0x438
	.4byte	.LLST15
	.uleb128 0x1c
	.4byte	.LASF85
	.byte	0x3
	.2byte	0x1ac
	.4byte	0x7e
	.uleb128 0x1d
	.4byte	.LASF79
	.byte	0x3
	.2byte	0x1ad
	.4byte	0x7e
	.4byte	.LLST16
	.byte	0x0
	.uleb128 0x13
	.4byte	0x615
	.4byte	.LASF86
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.4byte	0xcf
	.byte	0x3
	.uleb128 0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0x6c
	.4byte	0x278
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x62e
	.4byte	.LASF87
	.byte	0x4
	.byte	0x2b
	.byte	0x1
	.byte	0x3
	.uleb128 0x1f
	.ascii	"mem\000"
	.byte	0x4
	.byte	0x2b
	.4byte	0x127
	.byte	0x0
	.uleb128 0x20
	.4byte	0x680
	.4byte	.LASF88
	.byte	0x3
	.byte	0xe7
	.byte	0x1
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST17
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x3
	.byte	0xe7
	.4byte	0x5a7
	.4byte	.LLST18
	.uleb128 0x21
	.4byte	0x66a
	.4byte	0x5f8
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x3
	.byte	0xe9
	.uleb128 0x22
	.4byte	0x609
	.byte	0x0
	.uleb128 0x23
	.4byte	0x615
	.4byte	.LBB10
	.4byte	.LBE10
	.byte	0x3
	.byte	0xea
	.uleb128 0x22
	.4byte	0x622
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.4byte	0x6c9
	.byte	0x1
	.4byte	.LASF89
	.byte	0x3
	.2byte	0x196
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LLST19
	.uleb128 0x1a
	.4byte	.LASF79
	.byte	0x3
	.2byte	0x196
	.4byte	0x2e7
	.4byte	.LLST20
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x3
	.2byte	0x197
	.4byte	0x7e
	.uleb128 0x1d
	.4byte	.LASF82
	.byte	0x3
	.2byte	0x198
	.4byte	0x5a7
	.4byte	.LLST21
	.byte	0x0
	.uleb128 0x19
	.4byte	0x712
	.byte	0x1
	.4byte	.LASF90
	.byte	0x3
	.2byte	0x17e
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST22
	.uleb128 0x1a
	.4byte	.LASF79
	.byte	0x3
	.2byte	0x17e
	.4byte	0x2e7
	.4byte	.LLST23
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x3
	.2byte	0x17f
	.4byte	0x7e
	.uleb128 0x1d
	.4byte	.LASF82
	.byte	0x3
	.2byte	0x180
	.4byte	0x5a7
	.4byte	.LLST24
	.byte	0x0
	.uleb128 0x13
	.4byte	0x72f
	.4byte	.LASF91
	.byte	0x4
	.byte	0x27
	.byte	0x1
	.4byte	0x127
	.byte	0x3
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x4
	.byte	0x27
	.4byte	0x443
	.byte	0x0
	.uleb128 0x15
	.4byte	0x7b9
	.4byte	.LASF93
	.byte	0x3
	.byte	0x75
	.byte	0x1
	.4byte	0x5a7
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LLST25
	.uleb128 0x16
	.4byte	.LASF36
	.byte	0x3
	.byte	0x75
	.4byte	0x278
	.4byte	.LLST26
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x3
	.byte	0x75
	.4byte	0xaf
	.4byte	.LLST27
	.uleb128 0x24
	.4byte	.LASF82
	.byte	0x3
	.byte	0x76
	.4byte	0x5a7
	.4byte	.LLST28
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x3
	.byte	0x77
	.4byte	0x7e
	.4byte	.LLST29
	.uleb128 0x24
	.4byte	.LASF95
	.byte	0x3
	.byte	0x78
	.4byte	0xaf
	.4byte	.LLST30
	.uleb128 0x26
	.4byte	.LASF96
	.byte	0x3
	.byte	0x79
	.4byte	0x7b9
	.byte	0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x23
	.4byte	0x712
	.4byte	.LBB16
	.4byte	.LBE16
	.byte	0x3
	.byte	0xa3
	.uleb128 0x22
	.4byte	0x723
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.4byte	0x7ca
	.4byte	0x9a
	.uleb128 0x28
	.4byte	0x42a
	.2byte	0x1ff
	.byte	0x0
	.uleb128 0x19
	.4byte	0x813
	.byte	0x1
	.4byte	.LASF97
	.byte	0x3
	.2byte	0x129
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST31
	.uleb128 0x1a
	.4byte	.LASF98
	.byte	0x3
	.2byte	0x129
	.4byte	0x278
	.4byte	.LLST32
	.uleb128 0x1a
	.4byte	.LASF94
	.byte	0x3
	.2byte	0x129
	.4byte	0xaf
	.4byte	.LLST33
	.uleb128 0x1b
	.ascii	"i\000"
	.byte	0x3
	.2byte	0x12b
	.4byte	0x7e
	.byte	0x0
	.uleb128 0x29
	.4byte	0x867
	.byte	0x1
	.4byte	.LASF99
	.byte	0x3
	.byte	0xed
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LLST34
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x3
	.byte	0xed
	.4byte	0x2e7
	.4byte	.LLST35
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x3
	.byte	0xed
	.4byte	0xaf
	.4byte	.LLST36
	.uleb128 0x2a
	.ascii	"i\000"
	.byte	0x3
	.byte	0xef
	.4byte	0x7e
	.uleb128 0x24
	.4byte	.LASF36
	.byte	0x3
	.byte	0xf0
	.4byte	0x278
	.4byte	.LLST37
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF100
	.byte	0x3
	.byte	0x35
	.4byte	0x438
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	DEVICE_NAME
	.uleb128 0x2c
	.4byte	.LASF101
	.byte	0xb
	.byte	0x27
	.4byte	0x438
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0x896
	.4byte	0x5a7
	.uleb128 0x2d
	.4byte	0x42a
	.byte	0x3
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF102
	.byte	0x3
	.byte	0x6c
	.4byte	0x886
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_FAT_partitions
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.4byte	0x8a9
	.4byte	0x53f
	.ascii	"_FAT_partition_setDefaultInterface\000"
	.4byte	0x56e
	.ascii	"_FAT_partition_setDefaultPartition\000"
	.4byte	0x5ad
	.ascii	"_FAT_partition_getPartitionFromPath\000"
	.4byte	0x680
	.ascii	"_FAT_partition_unsafeUnmount\000"
	.4byte	0x6c9
	.ascii	"_FAT_partition_unmount\000"
	.4byte	0x7ca
	.ascii	"_FAT_partition_mountCustomInterface\000"
	.4byte	0x813
	.ascii	"_FAT_partition_mount\000"
	.4byte	0x867
	.ascii	"DEVICE_NAME\000"
	.4byte	0x896
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
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF64:
	.ascii	"sectorsPerCluster\000"
.LASF103:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF21:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF74:
	.ascii	"buffer\000"
.LASF88:
	.ascii	"_FAT_partition_destructor\000"
.LASF58:
	.ascii	"totalSize\000"
.LASF106:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF27:
	.ascii	"fn_readSectors\000"
.LASF48:
	.ascii	"PI_SLOT_2\000"
.LASF75:
	.ascii	"u8array_to_u16\000"
.LASF67:
	.ascii	"openFileCount\000"
.LASF98:
	.ascii	"device\000"
.LASF7:
	.ascii	"uint32_t\000"
.LASF78:
	.ascii	"u8array_to_u32\000"
.LASF66:
	.ascii	"cwdCluster\000"
.LASF12:
	.ascii	"float\000"
.LASF33:
	.ascii	"count\000"
.LASF86:
	.ascii	"_FAT_disc_shutdown\000"
.LASF91:
	.ascii	"_FAT_mem_allocate\000"
.LASF35:
	.ascii	"CACHE_ENTRY\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF36:
	.ascii	"disc\000"
.LASF94:
	.ascii	"cacheSize\000"
.LASF80:
	.ascii	"_FAT_partition_setDefaultInterface\000"
.LASF23:
	.ascii	"ioType\000"
.LASF100:
	.ascii	"DEVICE_NAME\000"
.LASF28:
	.ascii	"fn_writeSectors\000"
.LASF30:
	.ascii	"fn_shutdown\000"
.LASF22:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF79:
	.ascii	"partitionNumber\000"
.LASF53:
	.ascii	"lastCluster\000"
.LASF70:
	.ascii	"size_t\000"
.LASF77:
	.ascii	"offset\000"
.LASF73:
	.ascii	"numSectors\000"
.LASF18:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF42:
	.ascii	"FS_FAT12\000"
.LASF83:
	.ascii	"_FAT_partition_getPartitionFromPath\000"
.LASF43:
	.ascii	"FS_FAT16\000"
.LASF84:
	.ascii	"path\000"
.LASF15:
	.ascii	"true\000"
.LASF62:
	.ascii	"dataStart\000"
.LASF68:
	.ascii	"PARTITION\000"
.LASF69:
	.ascii	"char\000"
.LASF97:
	.ascii	"_FAT_partition_mountCustomInterface\000"
.LASF19:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF56:
	.ascii	"readOnly\000"
.LASF61:
	.ascii	"numberOfSectors\000"
.LASF32:
	.ascii	"sector\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF101:
	.ascii	"__ctype_ptr\000"
.LASF29:
	.ascii	"fn_clearStatus\000"
.LASF39:
	.ascii	"pages\000"
.LASF40:
	.ascii	"CACHE\000"
.LASF63:
	.ascii	"bytesPerSector\000"
.LASF85:
	.ascii	"namelen\000"
.LASF9:
	.ascii	"long long int\000"
.LASF44:
	.ascii	"FS_FAT32\000"
.LASF105:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF87:
	.ascii	"_FAT_mem_free\000"
.LASF16:
	.ascii	"bool\000"
.LASF90:
	.ascii	"_FAT_partition_unmount\000"
.LASF54:
	.ascii	"firstFree\000"
.LASF52:
	.ascii	"sectorsPerFat\000"
.LASF71:
	.ascii	"_FAT_disc_features\000"
.LASF104:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/parti"
	.ascii	"tion.c\000"
.LASF92:
	.ascii	"size\000"
.LASF89:
	.ascii	"_FAT_partition_unsafeUnmount\000"
.LASF26:
	.ascii	"fn_isInserted\000"
.LASF31:
	.ascii	"IO_INTERFACE\000"
.LASF55:
	.ascii	"cache\000"
.LASF24:
	.ascii	"features\000"
.LASF17:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF34:
	.ascii	"dirty\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF25:
	.ascii	"fn_startup\000"
.LASF65:
	.ascii	"bytesPerCluster\000"
.LASF47:
	.ascii	"PI_SLOT_1\000"
.LASF93:
	.ascii	"_FAT_partition_constructor\000"
.LASF2:
	.ascii	"short int\000"
.LASF14:
	.ascii	"false\000"
.LASF6:
	.ascii	"long int\000"
.LASF82:
	.ascii	"partition\000"
.LASF81:
	.ascii	"_FAT_partition_setDefaultPartition\000"
.LASF99:
	.ascii	"_FAT_partition_mount\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF45:
	.ascii	"FS_TYPE\000"
.LASF102:
	.ascii	"_FAT_partitions\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF60:
	.ascii	"rootDirCluster\000"
.LASF41:
	.ascii	"FS_UNKNOWN\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF96:
	.ascii	"sectorBuffer\000"
.LASF38:
	.ascii	"cacheEntries\000"
.LASF50:
	.ascii	"PARTITION_INTERFACE\000"
.LASF72:
	.ascii	"_FAT_disc_readSectors\000"
.LASF51:
	.ascii	"fatStart\000"
.LASF76:
	.ascii	"item\000"
.LASF49:
	.ascii	"PI_CUSTOM\000"
.LASF0:
	.ascii	"signed char\000"
.LASF57:
	.ascii	"filesysType\000"
.LASF59:
	.ascii	"rootDirStart\000"
.LASF95:
	.ascii	"bootSector\000"
.LASF20:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF13:
	.ascii	"double\000"
.LASF46:
	.ascii	"PI_DEFAULT\000"
.LASF37:
	.ascii	"numberOfPages\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
