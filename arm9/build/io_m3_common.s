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
	.code 16
	.thumb_func
	.type	_M3_changeMode, %function
_M3_changeMode:
.LFB3:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_io/io_m3_common.c"
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
.LBB34:
.LBB35:
	mov	r2, #128
.LBE35:
.LBE34:
.LBB36:
.LBB37:
	ldrh	r3, [r3]
.LBE37:
.LBE36:
.LBB38:
.LBB39:
	ldr	r3, .L7+4
.LBE39:
.LBE38:
.LBB40:
.LBB41:
	lsl	r2, r2, #20
.LBE41:
.LBE40:
.LBB42:
.LBB43:
	ldrh	r3, [r3]
.LBE43:
.LBE42:
.LBB44:
.LBB45:
	ldr	r3, .L7+8
.LBE45:
.LBE44:
.LBB46:
.LBB47:
	mov	r1, #128
.LBE47:
.LBE46:
.LBB48:
.LBB49:
	ldrh	r3, [r3]
.LBE49:
.LBE48:
.LBB50:
.LBB51:
	ldr	r3, .L7+12
.LBE51:
.LBE50:
.LBB52:
.LBB53:
	lsl	r1, r1, #20
.LBE53:
.LBE52:
.LBB54:
.LBB55:
	ldrh	r3, [r3]
.LBE55:
.LBE54:
.LBB56:
.LBB57:
	ldr	r3, .L7+16
	ldrh	r3, [r3]
.LBE57:
.LBE56:
.LBB58:
.LBB59:
	ldrh	r3, [r2]
.LBE59:
.LBE58:
.LBB60:
.LBB61:
	ldr	r3, .L7+20
	ldrh	r3, [r3]
.LBE61:
.LBE60:
.LBB62:
.LBB63:
	lsl	r3, r0, #1
	add	r3, r3, r1
	ldrh	r3, [r3]
.LBE63:
.LBE62:
.LBB64:
.LBB65:
	ldr	r3, .L7+24
	ldrh	r3, [r3]
.LBE65:
.LBE64:
.LBB66:
.LBB67:
	ldrh	r3, [r2]
.LBE67:
.LBE66:
	.loc 1 51 0
	mov	r3, #15
	and	r0, r0, r3
.LVL1:
	cmp	r0, #4
	beq	.L2
.LBB68:
.LBB69:
	.loc 1 36 0
	mov	r3, #144
	lsl	r3, r3, #20
	b	.L6
.L2:
.LBE69:
.LBE68:
.LBB70:
.LBB71:
	ldr	r3, .L7+28
	ldrh	r2, [r3]
.LBE71:
.LBE70:
.LBB72:
.LBB73:
	ldrh	r3, [r3]
.LBE73:
.LBE72:
.LBB74:
.LBB75:
	ldr	r3, .L7+32
	ldrh	r2, [r3]
.L6:
.LBE75:
.LBE74:
.LBB76:
.LBB77:
	ldrh	r3, [r3]
.LBE77:
.LBE76:
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
.LFE3:
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE0:
	.file 2 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
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
	.section	.debug_info
	.4byte	0x23f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF15
	.byte	0x1
	.4byte	.LASF16
	.4byte	.LASF17
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x3a
	.4byte	0x45
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x54
	.4byte	0x5e
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x8
	.byte	0x4
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x2
	.byte	0x60
	.4byte	0x3a
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x2
	.byte	0x61
	.4byte	0x53
	.uleb128 0x6
	.4byte	0xc2
	.4byte	.LASF18
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	0x8f
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x23
	.4byte	0x9a
	.byte	0x0
	.uleb128 0x8
	.byte	0x1
	.4byte	.LASF19
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST0
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x27
	.4byte	0x9a
	.4byte	.LLST1
	.uleb128 0xa
	.4byte	0xfb
	.4byte	0xa5
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x28
	.uleb128 0xb
	.4byte	0xb6
	.byte	0x0
	.uleb128 0xa
	.4byte	0x110
	.4byte	0xa5
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x2d
	.uleb128 0xb
	.4byte	0xb6
	.byte	0x0
	.uleb128 0xa
	.4byte	0x125
	.4byte	0xa5
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x29
	.uleb128 0xb
	.4byte	0xb6
	.byte	0x0
	.uleb128 0xa
	.4byte	0x13a
	.4byte	0xa5
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x2a
	.uleb128 0xb
	.4byte	0xb6
	.byte	0x0
	.uleb128 0xa
	.4byte	0x14f
	.4byte	0xa5
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0x2f
	.uleb128 0xb
	.4byte	0xb6
	.byte	0x0
	.uleb128 0xa
	.4byte	0x164
	.4byte	0xa5
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0x2b
	.uleb128 0xb
	.4byte	0xb6
	.byte	0x0
	.uleb128 0xc
	.4byte	0x17d
	.4byte	0xa5
	.4byte	.LBB56
	.4byte	.LBE56
	.byte	0x1
	.byte	0x2c
	.uleb128 0xb
	.4byte	0xb6
	.byte	0x0
	.uleb128 0xc
	.4byte	0x196
	.4byte	0xa5
	.4byte	.LBB60
	.4byte	.LBE60
	.byte	0x1
	.byte	0x2e
	.uleb128 0xb
	.4byte	0xb6
	.byte	0x0
	.uleb128 0xc
	.4byte	0x1af
	.4byte	0xa5
	.4byte	.LBB64
	.4byte	.LBE64
	.byte	0x1
	.byte	0x30
	.uleb128 0xb
	.4byte	0xb6
	.byte	0x0
	.uleb128 0xc
	.4byte	0x1c8
	.4byte	0xa5
	.4byte	.LBB66
	.4byte	.LBE66
	.byte	0x1
	.byte	0x31
	.uleb128 0xb
	.4byte	0xb6
	.byte	0x0
	.uleb128 0xc
	.4byte	0x1e1
	.4byte	0xa5
	.4byte	.LBB68
	.4byte	.LBE68
	.byte	0x1
	.byte	0x34
	.uleb128 0xb
	.4byte	0xb6
	.byte	0x0
	.uleb128 0xc
	.4byte	0x1fa
	.4byte	0xa5
	.4byte	.LBB70
	.4byte	.LBE70
	.byte	0x1
	.byte	0x36
	.uleb128 0xb
	.4byte	0xb6
	.byte	0x0
	.uleb128 0xc
	.4byte	0x213
	.4byte	0xa5
	.4byte	.LBB72
	.4byte	.LBE72
	.byte	0x1
	.byte	0x37
	.uleb128 0xb
	.4byte	0xb6
	.byte	0x0
	.uleb128 0xc
	.4byte	0x22c
	.4byte	0xa5
	.4byte	.LBB74
	.4byte	.LBE74
	.byte	0x1
	.byte	0x38
	.uleb128 0xb
	.4byte	0xb6
	.byte	0x0
	.uleb128 0xd
	.4byte	0xa5
	.4byte	.LBB76
	.4byte	.LBE76
	.byte	0x1
	.byte	0x39
	.uleb128 0xb
	.4byte	0xb6
	.byte	0x0
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
	.uleb128 0xb
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
	.4byte	0x243
	.4byte	0xc2
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
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	.LBB62-.Ltext0
	.4byte	.LBE62-.Ltext0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF2:
	.ascii	"short int\000"
.LASF14:
	.ascii	"mode\000"
.LASF11:
	.ascii	"float\000"
.LASF8:
	.ascii	"long long int\000"
.LASF19:
	.ascii	"_M3_changeMode\000"
.LASF4:
	.ascii	"long int\000"
.LASF13:
	.ascii	"addr\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF0:
	.ascii	"signed char\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF18:
	.ascii	"_M3_readHalfword\000"
.LASF16:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/libfat/disc_"
	.ascii	"io/io_m3_common.c\000"
.LASF17:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF12:
	.ascii	"double\000"
.LASF15:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF10:
	.ascii	"unsigned int\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
