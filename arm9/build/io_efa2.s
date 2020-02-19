	.code	16
	.file	"io_efa2.c"
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
	.type	_EFA2_nand_unlock, %function
_EFA2_nand_unlock:
.LFB6:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_efa2.c"
	.loc 1 87 0
.LBB18:
.LBB19:
	.loc 1 62 0
	ldr	r1, .L3
	ldr	r3, .L3+4
	.loc 1 63 0
	mov	r2, #168
	.loc 1 62 0
	strh	r1, [r3]
	.loc 1 63 0
	mov	r3, #128
	lsl	r2, r2, #5
	lsl	r3, r3, #20
	strh	r2, [r3]
	.loc 1 64 0
	ldr	r3, .L3+8
.LBE19:
.LBE18:
	.loc 1 87 0
	@ lr needed for prologue
.LBB20:
.LBB21:
	.loc 1 64 0
	strh	r1, [r3]
	.loc 1 65 0
	ldr	r3, .L3+12
.LBE21:
.LBE20:
	.loc 1 91 0
	@ sp needed for prologue
.LBB22:
.LBB23:
	.loc 1 65 0
	strh	r2, [r3]
.LBE23:
.LBE22:
	.loc 1 89 0
	ldr	r3, .L3+16
	strh	r2, [r3]
.LBB24:
.LBB25:
	.loc 1 70 0
	ldr	r3, .L3+20
	strh	r2, [r3]
.LBE25:
.LBE24:
	.loc 1 91 0
	bx	lr
.L4:
	.align	2
.L3:
	.word	-11776
	.word	167641088
	.word	134348800
	.word	134479872
	.word	163840000
	.word	167510016
.LFE6:
	.size	_EFA2_nand_unlock, .-_EFA2_nand_unlock
	.align	2
	.code 16
	.thumb_func
	.type	_EFA2_nand_lock, %function
_EFA2_nand_lock:
.LFB7:
	.loc 1 94 0
.LBB26:
.LBB27:
	.loc 1 62 0
	ldr	r1, .L7
	ldr	r3, .L7+4
	.loc 1 63 0
	mov	r2, #168
	.loc 1 62 0
	strh	r1, [r3]
	.loc 1 63 0
	mov	r3, #128
	lsl	r2, r2, #5
	lsl	r3, r3, #20
	strh	r2, [r3]
	.loc 1 64 0
	ldr	r3, .L7+8
.LBE27:
.LBE26:
	.loc 1 94 0
	@ lr needed for prologue
.LBB28:
.LBB29:
	.loc 1 64 0
	strh	r1, [r3]
	.loc 1 65 0
	ldr	r3, .L7+12
.LBE29:
.LBE28:
	.loc 1 98 0
	@ sp needed for prologue
.LBB30:
.LBB31:
	.loc 1 65 0
	strh	r2, [r3]
.LBE31:
.LBE30:
	.loc 1 96 0
	ldr	r3, .L7+16
	strh	r1, [r3]
.LBB32:
.LBB33:
	.loc 1 70 0
	ldr	r3, .L7+20
	strh	r2, [r3]
.LBE33:
.LBE32:
	.loc 1 98 0
	bx	lr
.L8:
	.align	2
.L7:
	.word	-11776
	.word	167641088
	.word	134348800
	.word	134479872
	.word	163840000
	.word	167510016
.LFE7:
	.size	_EFA2_nand_lock, .-_EFA2_nand_lock
	.align	2
	.code 16
	.thumb_func
	.type	_EFA2_nand_enable, %function
_EFA2_nand_enable:
.LFB8:
	.loc 1 110 0
.LVL0:
.LBB34:
.LBB35:
	.loc 1 62 0
	ldr	r1, .L11
	ldr	r3, .L11+4
	.loc 1 63 0
	mov	r2, #168
	.loc 1 62 0
	strh	r1, [r3]
	.loc 1 63 0
	mov	r3, #128
	lsl	r2, r2, #5
	lsl	r3, r3, #20
	strh	r2, [r3]
	.loc 1 64 0
	ldr	r3, .L11+8
.LBE35:
.LBE34:
	.loc 1 110 0
	@ lr needed for prologue
.LBB36:
.LBB37:
	.loc 1 64 0
	strh	r1, [r3]
	.loc 1 65 0
	ldr	r3, .L11+12
.LBE37:
.LBE36:
	.loc 1 114 0
	@ sp needed for prologue
.LBB38:
.LBB39:
	.loc 1 65 0
	strh	r2, [r3]
.LBE39:
.LBE38:
	.loc 1 112 0
	mov	r3, #148
	lsl	r3, r3, #20
	strh	r0, [r3]
.LBB40:
.LBB41:
	.loc 1 70 0
	ldr	r3, .L11+16
	strh	r2, [r3]
.LBE41:
.LBE40:
	.loc 1 114 0
	bx	lr
.L12:
	.align	2
.L11:
	.word	-11776
	.word	167641088
	.word	134348800
	.word	134479872
	.word	167510016
.LFE8:
	.size	_EFA2_nand_enable, .-_EFA2_nand_enable
	.align	2
	.code 16
	.thumb_func
	.type	_EFA2_nand_id, %function
_EFA2_nand_id:
.LFB10:
	.loc 1 135 0
	push	{r4, r5, r6, r7, lr}
.LCFI0:
	sub	sp, sp, #4
.LCFI1:
	.loc 1 139 0
	bl	_EFA2_nand_unlock
	.loc 1 140 0
	mov	r0, #1
	bl	_EFA2_nand_enable
	.loc 1 142 0
	ldr	r2, .L15
	mov	r3, #112
	neg	r3, r3
	strb	r3, [r2]
	.loc 1 143 0
	ldr	r3, .L15+4
	mov	r2, #0
	strb	r2, [r3]
	.loc 1 144 0
	ldr	r3, .L15+8
	.loc 1 153 0
	mov	r0, #0
	.loc 1 144 0
	ldrb	r4, [r3]
	.loc 1 146 0
	ldrb	r5, [r3]
	.loc 1 148 0
	ldrb	r6, [r3]
	.loc 1 150 0
	ldrb	r3, [r3]
.LVL1:
	.loc 1 154 0
	lsl	r4, r4, #8
.LVL2:
	.loc 1 150 0
	mov	r7, r3
.LVL3:
	.loc 1 153 0
	bl	_EFA2_nand_enable
	.loc 1 154 0
	bl	_EFA2_nand_lock
.LVL4:
	orr	r4, r4, r5
	lsl	r4, r4, #8
.LVL5:
	orr	r4, r4, r6
	lsl	r4, r4, #8
	orr	r4, r4, r7
	.loc 1 156 0
	mov	r0, r4
	add	sp, sp, #4
	@ sp needed for prologue
.LVL6:
.LVL7:
.LVL8:
	pop	{r4, r5, r6, r7, pc}
.L16:
	.align	2
.L15:
	.word	167772130
	.word	167772128
	.word	167755776
.LFE10:
	.size	_EFA2_nand_id, .-_EFA2_nand_id
	.align	2
	.global	_EFA2_clearStatus
	.code 16
	.thumb_func
	.type	_EFA2_clearStatus, %function
_EFA2_clearStatus:
.LFB11:
	.loc 1 168 0
	.loc 1 172 0
	mov	r0, #1
	.loc 1 168 0
	@ lr needed for prologue
	.loc 1 172 0
	@ sp needed for prologue
	bx	lr
.LFE11:
	.size	_EFA2_clearStatus, .-_EFA2_clearStatus
	.align	2
	.global	_EFA2_writeSectors
	.code 16
	.thumb_func
	.type	_EFA2_writeSectors, %function
_EFA2_writeSectors:
.LFB14:
	.loc 1 269 0
.LVL9:
	.loc 1 273 0
	mov	r0, #0
.LVL10:
	.loc 1 269 0
	@ lr needed for prologue
	.loc 1 273 0
	@ sp needed for prologue
	bx	lr
.LFE14:
	.size	_EFA2_writeSectors, .-_EFA2_writeSectors
	.align	2
	.global	_EFA2_startUp
	.code 16
	.thumb_func
	.type	_EFA2_startUp, %function
_EFA2_startUp:
.LFB16:
	.loc 1 290 0
	push	{lr}
.LCFI2:
.LBB48:
.LBB49:
.LBB50:
.LBB51:
	.loc 1 62 0
	ldr	r1, .L24
	ldr	r3, .L24+4
	.loc 1 63 0
	mov	r2, #168
	.loc 1 62 0
	strh	r1, [r3]
	.loc 1 63 0
	mov	r3, #128
	lsl	r2, r2, #5
	lsl	r3, r3, #20
	strh	r2, [r3]
	.loc 1 64 0
	ldr	r3, .L24+8
.LBE51:
.LBE50:
.LBE49:
.LBE48:
	.loc 1 290 0
	sub	sp, sp, #4
.LCFI3:
.LBB52:
.LBB53:
.LBB54:
.LBB55:
	.loc 1 64 0
	strh	r1, [r3]
	.loc 1 65 0
	ldr	r3, .L24+12
.LBE55:
.LBE54:
	.loc 1 76 0
	ldr	r1, .L24+16
.LBB56:
.LBB57:
	.loc 1 65 0
	strh	r2, [r3]
.LBE57:
.LBE56:
	.loc 1 76 0
	ldr	r3, .L24+20
	strh	r1, [r3]
.LBB58:
.LBB59:
	.loc 1 70 0
	ldr	r3, .L24+24
	strh	r2, [r3]
.LBE59:
.LBE58:
.LBE53:
.LBE52:
	.loc 1 292 0
	bl	_EFA2_nand_id
	ldr	r3, .L24+28
	mov	r2, #0
	cmp	r0, r3
	bne	.L22
	mov	r2, #1
.L22:
	.loc 1 293 0
	mov	r0, r2
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L25:
	.align	2
.L24:
	.word	-11776
	.word	167641088
	.word	134348800
	.word	134479872
	.word	-32768
	.word	159907840
	.word	167510016
	.word	-327572032
.LFE16:
	.size	_EFA2_startUp, .-_EFA2_startUp
	.align	2
	.global	_EFA2_isInserted
	.code 16
	.thumb_func
	.type	_EFA2_isInserted, %function
_EFA2_isInserted:
.LFB12:
	.loc 1 180 0
	push	{lr}
.LCFI4:
	sub	sp, sp, #4
.LCFI5:
	.loc 1 182 0
	bl	_EFA2_nand_id
	ldr	r3, .L29
	mov	r2, #0
	cmp	r0, r3
	bne	.L27
	mov	r2, #1
.L27:
	.loc 1 183 0
	mov	r0, r2
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L30:
	.align	2
.L29:
	.word	-327572032
.LFE12:
	.size	_EFA2_isInserted, .-_EFA2_isInserted
	.align	2
	.global	_EFA2_shutdown
	.code 16
	.thumb_func
	.type	_EFA2_shutdown, %function
_EFA2_shutdown:
.LFB15:
	.loc 1 280 0
	.loc 1 282 0
	mov	r0, #1
	.loc 1 280 0
	@ lr needed for prologue
	.loc 1 282 0
	@ sp needed for prologue
	bx	lr
.LFE15:
	.size	_EFA2_shutdown, .-_EFA2_shutdown
	.align	2
	.global	_EFA2_readSectors
	.code 16
	.thumb_func
	.type	_EFA2_readSectors, %function
_EFA2_readSectors:
.LFB13:
	.loc 1 195 0
	push	{r4, r5, r6, lr}
.LCFI6:
.LVL11:
	.loc 1 195 0
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	.loc 1 217 0
	bl	_EFA2_nand_unlock
.LVL12:
	.loc 1 218 0
	mov	r0, #1
	bl	_EFA2_nand_enable
.LBB70:
.LBB71:
	.loc 1 121 0
	ldr	r2, .L41
	mov	r3, #1
.LBE71:
.LBE70:
	.loc 1 211 0
	add	r4, r4, #64
.LVL13:
.LBB72:
.LBB73:
	.loc 1 121 0
	neg	r3, r3
	strb	r3, [r2]
.LBE73:
.LBE72:
	.loc 1 222 0
	mov	r1, #0
	.loc 1 224 0
	lsl	r3, r4, #24
	.loc 1 222 0
	strb	r1, [r2]
	.loc 1 224 0
	lsr	r3, r3, #24
	.loc 1 223 0
	sub	r2, r2, #2
	strb	r1, [r2]
	.loc 1 224 0
	strb	r3, [r2]
	.loc 1 225 0
	lsl	r3, r4, #16
	lsr	r3, r3, #24
	strb	r3, [r2]
	.loc 1 226 0
	lsl	r4, r4, #8
.LVL14:
.LBB74:
.LBB75:
	.loc 1 57 0
	ldr	r3, .L41+4
.LBE75:
.LBE74:
	.loc 1 226 0
	lsr	r4, r4, #24
	strb	r4, [r2]
.LBB76:
.LBB77:
	.loc 1 57 0
	strh	r1, [r3]
	strh	r1, [r3]
	strh	r1, [r3]
	b	.L34
.LVL15:
.L35:
	mov	r2, #0
.L36:
.LBE77:
.LBE76:
	.loc 1 240 0
	ldr	r3, .L41+8
	ldrb	r3, [r3]
	strb	r3, [r6, r2]
	.loc 1 239 0
	mov	r3, #128
	add	r2, r2, #1
	lsl	r3, r3, #2
	cmp	r2, r3
	bne	.L36
.L34:
	.loc 1 234 0
	sub	r5, r5, #1
	bcs	.L35
	.loc 1 253 0
	mov	r0, #0
	bl	_EFA2_nand_enable
.LVL16:
	.loc 1 254 0
	bl	_EFA2_nand_lock
	.loc 1 256 0
	mov	r0, #1
	@ sp needed for prologue
.LVL17:
.LVL18:
	pop	{r4, r5, r6, pc}
.L42:
	.align	2
.L41:
	.word	167772130
	.word	134217928
	.word	167755776
.LFE13:
	.size	_EFA2_readSectors, .-_EFA2_readSectors
	.global	_io_efa2
	.section	.rodata
	.align	2
	.type	_io_efa2, %object
	.size	_io_efa2, 32
_io_efa2:
	.word	843138629
	.word	17
	.word	_EFA2_startUp
	.word	_EFA2_isInserted
	.word	_EFA2_readSectors
	.word	_EFA2_writeSectors
	.word	_EFA2_clearStatus
	.word	_EFA2_shutdown
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI0-.LFB10
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
	.uleb128 0x18
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI4-.LFB12
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI6-.LFB13
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
.LEFDE18:
	.file 2 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/disc_io.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST3:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x476
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF53
	.byte	0x1
	.4byte	.LASF54
	.4byte	.LASF55
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x2
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x2
	.byte	0x60
	.4byte	0x45
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x2
	.byte	0x61
	.4byte	0x5e
	.uleb128 0x6
	.4byte	0xcf
	.byte	0x1
	.byte	0x2
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
	.byte	0x2
	.byte	0x81
	.4byte	0xba
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
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
	.byte	0x4
	.byte	0x3e
	.4byte	0xe5
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
	.byte	0x41
	.4byte	0xe5
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x42
	.4byte	0xe5
	.uleb128 0xe
	.4byte	0x1ee
	.4byte	.LASF56
	.byte	0x20
	.byte	0x4
	.byte	0x44
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x4
	.byte	0x45
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x4
	.byte	0x46
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x4
	.byte	0x47
	.4byte	0xda
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x4
	.byte	0x48
	.4byte	0xf1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x4
	.byte	0x49
	.4byte	0xfc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x4
	.byte	0x4a
	.4byte	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x4
	.byte	0x4b
	.4byte	0x15b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x4
	.byte	0x4c
	.4byte	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x4
	.byte	0x4f
	.4byte	0x171
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.byte	0x3
	.uleb128 0x11
	.4byte	0x23c
	.4byte	.LASF34
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x5d
	.uleb128 0x12
	.4byte	0x1f9
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x58
	.uleb128 0x13
	.4byte	0x202
	.4byte	.LBB24
	.4byte	.LBE24
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0x11
	.4byte	0x26d
	.4byte	.LASF35
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x5d
	.uleb128 0x12
	.4byte	0x1f9
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x5f
	.uleb128 0x13
	.4byte	0x202
	.4byte	.LBB32
	.4byte	.LBE32
	.byte	0x1
	.byte	0x61
	.byte	0x0
	.uleb128 0x11
	.4byte	0x2ab
	.4byte	.LASF36
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x5d
	.uleb128 0x14
	.ascii	"val\000"
	.byte	0x1
	.byte	0x6e
	.4byte	0xa4
	.byte	0x1
	.byte	0x50
	.uleb128 0x12
	.4byte	0x1f9
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x6f
	.uleb128 0x13
	.4byte	0x202
	.4byte	.LBB40
	.4byte	.LBE40
	.byte	0x1
	.byte	0x71
	.byte	0x0
	.uleb128 0x15
	.4byte	0x2e1
	.4byte	.LASF37
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.4byte	0xaf
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x1
	.byte	0x88
	.4byte	0x9a
	.4byte	.LLST4
	.uleb128 0x17
	.ascii	"id\000"
	.byte	0x1
	.byte	0x89
	.4byte	0xaf
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF45
	.byte	0x1
	.byte	0xa8
	.byte	0x1
	.4byte	0xcf
	.byte	0x1
	.uleb128 0x19
	.4byte	0x2e1
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1a
	.4byte	0x347
	.byte	0x1
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x10d
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB14
	.4byte	.LFE14
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1b
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x10c
	.4byte	0xaf
	.4byte	.LLST7
	.uleb128 0x1c
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x10c
	.4byte	0x9a
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x10c
	.4byte	0x127
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x357
	.4byte	.LASF42
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.uleb128 0x1e
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x3a1
	.byte	0x1
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x122
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	0x391
	.4byte	0x347
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x123
	.uleb128 0x12
	.4byte	0x1f9
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0x4b
	.byte	0x0
	.uleb128 0x13
	.4byte	0x202
	.4byte	.LBB58
	.4byte	.LBE58
	.byte	0x1
	.byte	0x4d
	.byte	0x0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF46
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST9
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x118
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB15
	.4byte	.LFE15
	.byte	0x1
	.byte	0x5d
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.byte	0x3
	.uleb128 0x23
	.4byte	0x461
	.byte	0x1
	.4byte	.LASF50
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.4byte	0xcf
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST11
	.uleb128 0x24
	.4byte	.LASF39
	.byte	0x1
	.byte	0xc2
	.4byte	0xaf
	.4byte	.LLST12
	.uleb128 0x24
	.4byte	.LASF40
	.byte	0x1
	.byte	0xc2
	.4byte	0xaf
	.4byte	.LLST13
	.uleb128 0x24
	.4byte	.LASF41
	.byte	0x1
	.byte	0xc2
	.4byte	0x127
	.4byte	.LLST14
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x1
	.byte	0xc4
	.4byte	0x7e
	.4byte	.LLST15
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.byte	0xd3
	.4byte	0xaf
	.4byte	.LLST16
	.uleb128 0x12
	.4byte	0x3d2
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0xdb
	.uleb128 0x12
	.4byte	0x3db
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0xe8
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x12a
	.4byte	0x474
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_io_efa2
	.uleb128 0x27
	.4byte	0x1ee
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
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1d
	.byte	0x0
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
	.uleb128 0x13
	.uleb128 0x1d
	.byte	0x0
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
	.uleb128 0x14
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
	.uleb128 0xa
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x98
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x47a
	.4byte	0x2ef
	.ascii	"_EFA2_clearStatus\000"
	.4byte	0x2fe
	.ascii	"_EFA2_writeSectors\000"
	.4byte	0x357
	.ascii	"_EFA2_startUp\000"
	.4byte	0x3a1
	.ascii	"_EFA2_isInserted\000"
	.4byte	0x3ba
	.ascii	"_EFA2_shutdown\000"
	.4byte	0x3e4
	.ascii	"_EFA2_readSectors\000"
	.4byte	0x461
	.ascii	"_io_efa2\000"
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
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	.LBB56-.Ltext0
	.4byte	.LBE56-.Ltext0
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB70-.Ltext0
	.4byte	.LBE70-.Ltext0
	.4byte	.LBB72-.Ltext0
	.4byte	.LBE72-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB74-.Ltext0
	.4byte	.LBE74-.Ltext0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF49:
	.ascii	"_EFA2_rtc_deactivate\000"
.LASF19:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF50:
	.ascii	"_EFA2_readSectors\000"
.LASF2:
	.ascii	"short int\000"
.LASF26:
	.ascii	"fn_isInserted\000"
.LASF21:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF46:
	.ascii	"_EFA2_isInserted\000"
.LASF25:
	.ascii	"fn_startup\000"
.LASF22:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF39:
	.ascii	"sector\000"
.LASF16:
	.ascii	"bool\000"
.LASF35:
	.ascii	"_EFA2_nand_lock\000"
.LASF56:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF12:
	.ascii	"float\000"
.LASF9:
	.ascii	"long long int\000"
.LASF17:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF51:
	.ascii	"page\000"
.LASF6:
	.ascii	"long int\000"
.LASF31:
	.ascii	"IO_INTERFACE\000"
.LASF27:
	.ascii	"fn_readSectors\000"
.LASF47:
	.ascii	"_EFA2_shutdown\000"
.LASF38:
	.ascii	"byte\000"
.LASF23:
	.ascii	"ioType\000"
.LASF29:
	.ascii	"fn_clearStatus\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF40:
	.ascii	"numSecs\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF7:
	.ascii	"uint32_t\000"
.LASF14:
	.ascii	"false\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF32:
	.ascii	"_EFA2_reg_unlock\000"
.LASF24:
	.ascii	"features\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF20:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF37:
	.ascii	"_EFA2_nand_id\000"
.LASF45:
	.ascii	"_EFA2_clearStatus\000"
.LASF15:
	.ascii	"true\000"
.LASF55:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF41:
	.ascii	"buffer\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF13:
	.ascii	"double\000"
.LASF53:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF44:
	.ascii	"_EFA2_startUp\000"
.LASF52:
	.ascii	"_io_efa2\000"
.LASF54:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_"
	.ascii	"io/io_efa2.c\000"
.LASF43:
	.ascii	"_EFA2_writeSectors\000"
.LASF33:
	.ascii	"_EFA2_reg_lock\000"
.LASF28:
	.ascii	"fn_writeSectors\000"
.LASF48:
	.ascii	"_EFA2_nand_reset\000"
.LASF18:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF36:
	.ascii	"_EFA2_nand_enable\000"
.LASF42:
	.ascii	"_EFA2_global_unlock\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF34:
	.ascii	"_EFA2_nand_unlock\000"
.LASF30:
	.ascii	"fn_shutdown\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
