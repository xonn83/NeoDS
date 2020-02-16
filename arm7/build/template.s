	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.file	"template.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.type	VcountHandler, %function
VcountHandler:
.LFB28:
	.file 1 "C:/Users/GRX/NeoDS/arm7/source/template.c"
	.loc 1 66 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 68 0
	bx	lr
.LFE28:
	.size	VcountHandler, .-VcountHandler
	.align	2
	.type	VblankHandler, %function
VblankHandler:
.LFB29:
	.loc 1 71 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 73 0
	bx	lr
.LFE29:
	.size	VblankHandler, .-VblankHandler
	.align	2
	.type	IPCSyncHandler, %function
IPCSyncHandler:
.LFB30:
	.loc 1 76 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 78 0
	bx	lr
.LFE30:
	.size	IPCSyncHandler, .-IPCSyncHandler
	.align	2
	.global	main
	.type	main, %function
main:
.LFB31:
	.loc 1 84 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	stmfd	sp!, {r4, lr}
.LCFI0:
	.loc 1 85 0
	bl	neoIPCInit
.LVL1:
	.loc 1 87 0
	bl	rtcReset
	.loc 1 89 0
	bl	irqInit
.LBB6:
.LBB7:
	.file 2 "C:/devkitPro/libnds/include/nds/system.h"
	.loc 2 74 0
	mov	r4, #67108864
.LBE7:
.LBE6:
	.loc 1 90 0
	mov	r0, #1
	ldr	r1, .L9
	bl	irqSet
.LBB9:
.LBB8:
	.loc 2 74 0
	ldrh	r3, [r4, #4]
	and	r3, r3, #127
	strh	r3, [r4, #4]	@ movhi
.LBE8:
.LBE9:
	.loc 1 92 0
	mov	r0, #4
	ldr	r1, .L9+4
	bl	irqSet
	.loc 1 93 0
	mov	r0, #65536
	ldr	r1, .L9+8
	bl	irqSet
	.loc 1 94 0
	ldr	r1, .L9+12
	mov	r0, #64
	bl	irqSet
	.loc 1 95 0
	ldr	r0, .L9+16
	bl	irqEnable
	.loc 1 96 0
	mov	r3, #1
	.loc 1 99 0
	mov	r0, r3
	.loc 1 96 0
	str	r3, [r4, #520]
	.loc 1 99 0
	bl	neoIPCWaitCommand
	.loc 1 105 0
	bl	neoSystem7Init
	.loc 1 107 0
	bl	neoIPCAckCommand
	.loc 1 109 0
	bl	neoSystem7Execute
	.loc 1 112 0
	mov	r0, #0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L10:
	.align	2
.L9:
	.word	VblankHandler
	.word	VcountHandler
	.word	IPCSyncHandler
	.word	neoAudioEventHandler
	.word	65605
.LFE31:
	.size	main, .-main
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI0-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE6:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST3:
	.4byte	.LFB31-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
	.file 3 "C:/Users/GRX/NeoDS/arm7/source/DrZ80.h"
	.file 4 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 5 "C:/Users/GRX/NeoDS/arm7/source/NeoCpuZ80.h"
	.file 6 "C:/Users/GRX/NeoDS/arm7/source/NeoSystem7.h"
	.file 7 "C:/devkitPro/libnds/include/nds/interrupts.h"
	.file 8 "C:/Users/GRX/NeoDS/arm7/../common/source/NeoIPC.h"
	.file 9 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.section	.debug_info
	.4byte	0x520
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x1
	.4byte	.LASF92
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF8
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x9
	.byte	0x62
	.4byte	0x28
	.uleb128 0x6
	.byte	0x4
	.4byte	0x82
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x4
	.byte	0x7
	.byte	0x2e
	.4byte	0x141
	.uleb128 0x9
	.4byte	.LASF10
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF11
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF12
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF13
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF14
	.sleb128 16
	.uleb128 0x9
	.4byte	.LASF15
	.sleb128 32
	.uleb128 0x9
	.4byte	.LASF16
	.sleb128 64
	.uleb128 0x9
	.4byte	.LASF17
	.sleb128 128
	.uleb128 0x9
	.4byte	.LASF18
	.sleb128 256
	.uleb128 0x9
	.4byte	.LASF19
	.sleb128 512
	.uleb128 0x9
	.4byte	.LASF20
	.sleb128 1024
	.uleb128 0x9
	.4byte	.LASF21
	.sleb128 2048
	.uleb128 0x9
	.4byte	.LASF22
	.sleb128 4096
	.uleb128 0x9
	.4byte	.LASF23
	.sleb128 8192
	.uleb128 0x9
	.4byte	.LASF24
	.sleb128 65536
	.uleb128 0x9
	.4byte	.LASF25
	.sleb128 131072
	.uleb128 0x9
	.4byte	.LASF26
	.sleb128 262144
	.uleb128 0x9
	.4byte	.LASF27
	.sleb128 524288
	.uleb128 0x9
	.4byte	.LASF28
	.sleb128 1048576
	.uleb128 0x9
	.4byte	.LASF29
	.sleb128 2097152
	.uleb128 0x9
	.4byte	.LASF30
	.sleb128 4194304
	.uleb128 0x9
	.4byte	.LASF31
	.sleb128 8388608
	.uleb128 0x9
	.4byte	.LASF32
	.sleb128 16777216
	.uleb128 0x9
	.4byte	.LASF33
	.sleb128 -1
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF34
	.uleb128 0x6
	.byte	0x4
	.4byte	0x144
	.uleb128 0x6
	.byte	0x4
	.4byte	0x14b
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF35
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF36
	.uleb128 0x6
	.byte	0x4
	.4byte	0x72
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x70
	.byte	0x3
	.byte	0x13
	.4byte	0x32a
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x3
	.byte	0x14
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x3
	.byte	0x15
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x3
	.byte	0x16
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x3
	.byte	0x17
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x3
	.byte	0x18
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x3
	.byte	0x19
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x3
	.byte	0x1a
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x3
	.byte	0x1b
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x3
	.byte	0x1c
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x3
	.byte	0x1d
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x3
	.byte	0x1e
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x3
	.byte	0x1f
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x3
	.byte	0x20
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x3
	.byte	0x21
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x3
	.byte	0x22
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x3
	.byte	0x23
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x3
	.byte	0x24
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x3
	.byte	0x27
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x3
	.byte	0x28
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x3
	.byte	0x29
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x3
	.byte	0x2a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x3
	.byte	0x2b
	.4byte	0x4f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x3
	.byte	0x2c
	.4byte	0x7c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x3
	.byte	0x2d
	.4byte	0x33b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x3
	.byte	0x2e
	.4byte	0x352
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x3
	.byte	0x2f
	.4byte	0x368
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x3
	.byte	0x30
	.4byte	0x37f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x3
	.byte	0x31
	.4byte	0x368
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x3
	.byte	0x32
	.4byte	0x395
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x3
	.byte	0x33
	.4byte	0x3ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x3
	.byte	0x34
	.4byte	0x3ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xd
	.byte	0x1
	.4byte	0x33b
	.uleb128 0xe
	.4byte	0x33
	.uleb128 0xe
	.4byte	0x41
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x32a
	.uleb128 0xd
	.byte	0x1
	.4byte	0x352
	.uleb128 0xe
	.4byte	0x41
	.uleb128 0xe
	.4byte	0x41
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x341
	.uleb128 0xf
	.byte	0x1
	.4byte	0x33
	.4byte	0x368
	.uleb128 0xe
	.4byte	0x41
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x358
	.uleb128 0xd
	.byte	0x1
	.4byte	0x37f
	.uleb128 0xe
	.4byte	0x41
	.uleb128 0xe
	.4byte	0x33
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x36e
	.uleb128 0xf
	.byte	0x1
	.4byte	0x41
	.4byte	0x395
	.uleb128 0xe
	.4byte	0x41
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x385
	.uleb128 0xf
	.byte	0x1
	.4byte	0x4f
	.4byte	0x3ab
	.uleb128 0xe
	.4byte	0x41
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x39b
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x5
	.byte	0xc
	.4byte	0x16b
	.uleb128 0x10
	.4byte	.LASF70
	.2byte	0x8f0
	.byte	0x6
	.byte	0x1f
	.4byte	0x3f5
	.uleb128 0x11
	.ascii	"z80\000"
	.byte	0x6
	.byte	0x20
	.4byte	0x3b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x6
	.byte	0x26
	.4byte	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x6
	.byte	0x27
	.4byte	0x405
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.byte	0x0
	.uleb128 0x12
	.4byte	0x165
	.4byte	0x405
	.uleb128 0x13
	.4byte	0x141
	.byte	0x1f
	.byte	0x0
	.uleb128 0x12
	.4byte	0x72
	.4byte	0x416
	.uleb128 0x14
	.4byte	0x141
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x6
	.byte	0x28
	.4byte	0x3bc
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x1
	.byte	0x8
	.byte	0x73
	.4byte	0x46a
	.uleb128 0x9
	.4byte	.LASF76
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF77
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF78
	.sleb128 3
	.uleb128 0x9
	.4byte	.LASF79
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF80
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF81
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF82
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF83
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF84
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF85
	.sleb128 10
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x2
	.byte	0x49
	.byte	0x1
	.byte	0x3
	.4byte	0x48b
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0x2
	.byte	0x49
	.4byte	0x48
	.byte	0x0
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0x1
	.byte	0x41
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5d
	.uleb128 0x18
	.4byte	.LASF87
	.byte	0x1
	.byte	0x46
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5d
	.uleb128 0x18
	.4byte	.LASF88
	.byte	0x1
	.byte	0x4b
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5d
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF96
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.4byte	0x48
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LLST3
	.4byte	0x50f
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x1
	.byte	0x53
	.4byte	0x48
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	.LASF90
	.byte	0x1
	.byte	0x53
	.4byte	0x151
	.4byte	.LLST5
	.uleb128 0x1b
	.4byte	0x472
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x5b
	.uleb128 0x1c
	.4byte	0x47f
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.4byte	.LASF97
	.byte	0x6
	.byte	0x39
	.4byte	0x51d
	.byte	0x1
	.byte	0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x4
	.4byte	0x416
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
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
	.4byte	0x22
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x524
	.4byte	0x4be
	.ascii	"main\000"
	.4byte	0x50f
	.ascii	"g_neo7\000"
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
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF87:
	.ascii	"VblankHandler\000"
.LASF58:
	.ascii	"z80irqvector\000"
.LASF27:
	.ascii	"IRQ_CARD\000"
.LASF43:
	.ascii	"Z80SP\000"
.LASF30:
	.ascii	"IRQ_LID\000"
.LASF88:
	.ascii	"IPCSyncHandler\000"
.LASF23:
	.ascii	"IRQ_CART\000"
.LASF42:
	.ascii	"Z80HL\000"
.LASF32:
	.ascii	"IRQ_WIFI\000"
.LASF14:
	.ascii	"IRQ_TIMER1\000"
.LASF94:
	.ascii	"SetYtrigger\000"
.LASF92:
	.ascii	"C:/Users/GRX/NeoDS/arm7/source/template.c\000"
.LASF31:
	.ascii	"IRQ_SPI\000"
.LASF85:
	.ascii	"NEOARM9_AUDIORESULT\000"
.LASF69:
	.ascii	"DrZ80\000"
.LASF44:
	.ascii	"Z80PC_BASE\000"
.LASF81:
	.ascii	"NEOARM7_BACKLIGHTON\000"
.LASF54:
	.ascii	"Z80_IRQ\000"
.LASF82:
	.ascii	"NEOARM7_LIDCLOSE\000"
.LASF37:
	.ascii	"Z80PC\000"
.LASF79:
	.ascii	"NEOARM7_NMI\000"
.LASF45:
	.ascii	"Z80SP_BASE\000"
.LASF10:
	.ascii	"IRQ_VBLANK\000"
.LASF9:
	.ascii	"uint8_t\000"
.LASF18:
	.ascii	"IRQ_DMA0\000"
.LASF19:
	.ascii	"IRQ_DMA1\000"
.LASF20:
	.ascii	"IRQ_DMA2\000"
.LASF21:
	.ascii	"IRQ_DMA3\000"
.LASF65:
	.ascii	"z80_read16\000"
.LASF2:
	.ascii	"short int\000"
.LASF7:
	.ascii	"float\000"
.LASF84:
	.ascii	"NEOARM9_READAUDIO\000"
.LASF55:
	.ascii	"Z80IF\000"
.LASF5:
	.ascii	"long long int\000"
.LASF56:
	.ascii	"Z80IM\000"
.LASF78:
	.ascii	"NEOARM7_RESUME\000"
.LASF86:
	.ascii	"VcountHandler\000"
.LASF60:
	.ascii	"z80_write8\000"
.LASF46:
	.ascii	"Z80IX\000"
.LASF29:
	.ascii	"IRQ_GEOMETRY_FIFO\000"
.LASF59:
	.ascii	"z80_irq_callback\000"
.LASF77:
	.ascii	"NEOARM7_PAUSE\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF53:
	.ascii	"Z80HL2\000"
.LASF40:
	.ascii	"Z80BC\000"
.LASF67:
	.ascii	"z80_rebasePC\000"
.LASF13:
	.ascii	"IRQ_TIMER0\000"
.LASF24:
	.ascii	"IRQ_IPC_SYNC\000"
.LASF15:
	.ascii	"IRQ_TIMER2\000"
.LASF16:
	.ascii	"IRQ_TIMER3\000"
.LASF47:
	.ascii	"Z80IY\000"
.LASF64:
	.ascii	"z80_read8\000"
.LASF17:
	.ascii	"IRQ_NETWORK\000"
.LASF80:
	.ascii	"NEOARM7_BACKLIGHTOFF\000"
.LASF89:
	.ascii	"argc\000"
.LASF61:
	.ascii	"z80_write16\000"
.LASF0:
	.ascii	"signed char\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF70:
	.ascii	"_TNeoContext7\000"
.LASF26:
	.ascii	"IRQ_FIFO_NOT_EMPTY\000"
.LASF62:
	.ascii	"z80_in\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF22:
	.ascii	"IRQ_KEYS\000"
.LASF68:
	.ascii	"TDrZ80Context\000"
.LASF38:
	.ascii	"Z80A\000"
.LASF90:
	.ascii	"argv\000"
.LASF71:
	.ascii	"z80MemTable\000"
.LASF97:
	.ascii	"g_neo7\000"
.LASF83:
	.ascii	"NEOARM7_LIDOPEN\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF12:
	.ascii	"IRQ_VCOUNT\000"
.LASF93:
	.ascii	"handleInput\000"
.LASF63:
	.ascii	"z80_out\000"
.LASF34:
	.ascii	"char\000"
.LASF75:
	.ascii	"_TNeoIPCCommand\000"
.LASF66:
	.ascii	"z80_rebaseSP\000"
.LASF96:
	.ascii	"main\000"
.LASF39:
	.ascii	"Z80F\000"
.LASF50:
	.ascii	"Z80F2\000"
.LASF48:
	.ascii	"Z80I\000"
.LASF28:
	.ascii	"IRQ_CARD_LINE\000"
.LASF76:
	.ascii	"NEOARM7_RESET\000"
.LASF51:
	.ascii	"Z80BC2\000"
.LASF36:
	.ascii	"long unsigned int\000"
.LASF8:
	.ascii	"double\000"
.LASF33:
	.ascii	"IRQ_ALL\000"
.LASF57:
	.ascii	"spare\000"
.LASF95:
	.ascii	"Yvalue\000"
.LASF74:
	.ascii	"IRQ_MASKS\000"
.LASF25:
	.ascii	"IRQ_FIFO_EMPTY\000"
.LASF49:
	.ascii	"Z80A2\000"
.LASF73:
	.ascii	"TNeoContext7\000"
.LASF72:
	.ascii	"z80Ram\000"
.LASF91:
	.ascii	"GNU C 4.4.3\000"
.LASF52:
	.ascii	"Z80DE2\000"
.LASF35:
	.ascii	"long int\000"
.LASF11:
	.ascii	"IRQ_HBLANK\000"
.LASF41:
	.ascii	"Z80DE\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
