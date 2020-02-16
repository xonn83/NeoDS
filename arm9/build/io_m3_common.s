	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"io_m3_common.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	_M3_changeMode
	.code	16
	.thumb_func
	.type	_M3_changeMode, %function
_M3_changeMode:
.LFB1:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_m3_common.c"
	.loc 1 39 0
	push	{lr}
.LCFI0:
.LVL0:
.LBB32:
.LBB33:
	.loc 1 36 0
	ldr	r3, .L7
.LBE33:
.LBE32:
.LBB35:
.LBB37:
	mov	r1, #128
.LBE37:
.LBE35:
.LBB39:
.LBB34:
	ldrh	r3, [r3]
.LBE34:
.LBE39:
.LBB40:
.LBB41:
	ldr	r3, .L7+4
.LBE41:
.LBE40:
.LBB43:
.LBB36:
	lsl	r1, r1, #20
.LBE36:
.LBE43:
.LBB44:
.LBB42:
	ldrh	r3, [r3]
.LBE42:
.LBE44:
.LBB45:
.LBB46:
	ldr	r3, .L7+8
	ldrh	r3, [r3]
.LBE46:
.LBE45:
.LBB47:
.LBB48:
	ldr	r3, .L7+12
	ldrh	r3, [r3]
.LBE48:
.LBE47:
.LBB49:
.LBB50:
	ldr	r3, .L7+16
	ldrh	r3, [r3]
.LBE50:
.LBE49:
.LBB51:
.LBB52:
	mov	r3, #128
	lsl	r3, r3, #20
	ldrh	r2, [r3]
.LBE52:
.LBE51:
.LBB53:
.LBB54:
	ldr	r2, .L7+20
	ldrh	r2, [r2]
.LBE54:
.LBE53:
.LBB55:
.LBB38:
	lsl	r2, r0, #1
	add	r2, r2, r1
	ldrh	r2, [r2]
.LBE38:
.LBE55:
.LBB56:
.LBB57:
	ldr	r2, .L7+24
	ldrh	r2, [r2]
.LBE57:
.LBE56:
.LBB58:
.LBB59:
	ldrh	r3, [r3]
.LBE59:
.LBE58:
	.loc 1 51 0
	mov	r3, #15
	and	r0, r0, r3
.LVL1:
	cmp	r0, #4
	beq	.L2
.LBB60:
.LBB61:
	.loc 1 36 0
	mov	r3, #144
	lsl	r3, r3, #20
	b	.L5
.L2:
.LBE61:
.LBE60:
.LBB62:
.LBB63:
	ldr	r3, .L7+28
	ldrh	r2, [r3]
.LBE63:
.LBE62:
.LBB64:
.LBB65:
	ldrh	r3, [r3]
.LBE65:
.LBE64:
.LBB66:
.LBB67:
	ldr	r3, .L7+32
	ldrh	r2, [r3]
.L5:
.LBE67:
.LBE66:
.LBB68:
.LBB69:
	ldrh	r3, [r3]
.LBE69:
.LBE68:
	.loc 1 59 0
	@ sp needed for prologue
	pop	{pc}
.L8:
	.align	2
.L7:
	.word	148897794
	.word	134217742
	.word	142614524
	.word	134221898
	.word	142607890
	.word	142613350
	.word	134219790
	.word	134218212
	.word	134218120
.LFE1:
	.size	_M3_changeMode, .-_M3_changeMode
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE0:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB1-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE1-.Ltext0
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
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.section	.debug_info
	.4byte	0x24c
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF12
	.byte	0x1
	.4byte	.LASF13
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x36
	.4byte	0x41
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
	.byte	0x2
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
	.ascii	"u16\000"
	.byte	0x3
	.byte	0x63
	.4byte	0x36
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x64
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	0x7d
	.byte	0x1
	.4byte	0xb7
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x23
	.4byte	0x88
	.byte	0x0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF16
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x27
	.4byte	0x88
	.4byte	.LLST1
	.uleb128 0xa
	.4byte	0x9a
	.4byte	.LBB32
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x28
	.4byte	0xf4
	.uleb128 0xb
	.4byte	0xab
	.byte	0x0
	.uleb128 0xa
	.4byte	0x9a
	.4byte	.LBB35
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x2f
	.4byte	0x10d
	.uleb128 0xb
	.4byte	0xab
	.byte	0x0
	.uleb128 0xa
	.4byte	0x9a
	.4byte	.LBB40
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x29
	.4byte	0x126
	.uleb128 0xb
	.4byte	0xab
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9a
	.4byte	.LBB45
	.4byte	.LBE45
	.byte	0x1
	.byte	0x2a
	.4byte	0x13f
	.uleb128 0xb
	.4byte	0xab
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9a
	.4byte	.LBB47
	.4byte	.LBE47
	.byte	0x1
	.byte	0x2b
	.4byte	0x158
	.uleb128 0xb
	.4byte	0xab
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9a
	.4byte	.LBB49
	.4byte	.LBE49
	.byte	0x1
	.byte	0x2c
	.4byte	0x171
	.uleb128 0xb
	.4byte	0xab
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9a
	.4byte	.LBB51
	.4byte	.LBE51
	.byte	0x1
	.byte	0x2d
	.4byte	0x18a
	.uleb128 0xb
	.4byte	0xab
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9a
	.4byte	.LBB53
	.4byte	.LBE53
	.byte	0x1
	.byte	0x2e
	.4byte	0x1a3
	.uleb128 0xb
	.4byte	0xab
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9a
	.4byte	.LBB56
	.4byte	.LBE56
	.byte	0x1
	.byte	0x30
	.4byte	0x1bc
	.uleb128 0xb
	.4byte	0xab
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9a
	.4byte	.LBB58
	.4byte	.LBE58
	.byte	0x1
	.byte	0x31
	.4byte	0x1d5
	.uleb128 0xb
	.4byte	0xab
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9a
	.4byte	.LBB60
	.4byte	.LBE60
	.byte	0x1
	.byte	0x34
	.4byte	0x1ee
	.uleb128 0xb
	.4byte	0xab
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9a
	.4byte	.LBB62
	.4byte	.LBE62
	.byte	0x1
	.byte	0x36
	.4byte	0x207
	.uleb128 0xb
	.4byte	0xab
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9a
	.4byte	.LBB64
	.4byte	.LBE64
	.byte	0x1
	.byte	0x37
	.4byte	0x220
	.uleb128 0xb
	.4byte	0xab
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9a
	.4byte	.LBB66
	.4byte	.LBE66
	.byte	0x1
	.byte	0x38
	.4byte	0x239
	.uleb128 0xb
	.4byte	0xab
	.byte	0x0
	.uleb128 0xd
	.4byte	0x9a
	.4byte	.LBB68
	.4byte	.LBE68
	.byte	0x1
	.byte	0x39
	.uleb128 0xb
	.4byte	0xab
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.4byte	0x21
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x250
	.4byte	0xb7
	.ascii	"_M3_changeMode\000"
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
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF7:
	.ascii	"long long int\000"
.LASF6:
	.ascii	"unsigned int\000"
.LASF17:
	.ascii	"mode\000"
.LASF14:
	.ascii	"_M3_readHalfword\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF15:
	.ascii	"addr\000"
.LASF16:
	.ascii	"_M3_changeMode\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF5:
	.ascii	"uint32_t\000"
.LASF10:
	.ascii	"double\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"GNU C 4.4.3\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF9:
	.ascii	"float\000"
.LASF2:
	.ascii	"short int\000"
.LASF13:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/di"
	.ascii	"sc_io/io_m3_common.c\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
