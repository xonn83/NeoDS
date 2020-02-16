	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.file	"NeoCpuZ80.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	neoZ80RebasePC
	.type	neoZ80RebasePC, %function
neoZ80RebasePC:
.LFB27:
	.file 1 "C:/Users/GRX/NeoDS/arm7/source/NeoCpuZ80.c"
	.loc 1 19 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 21 0
	mov	r3, r0, lsr #11
	add	r3, r3, #28
	ldr	r1, [r5, r3, asl #2]
	and	r3, r0, #63488
	rsb	r3, r3, r1
	str	r3, [r5, #28]
	.loc 1 23 0
	add	r0, r3, r0
.LVL1:
	bx	lr
.LFE27:
	.size	neoZ80RebasePC, .-neoZ80RebasePC
	.align	2
	.global	neoZ80RebaseSP
	.type	neoZ80RebaseSP, %function
neoZ80RebaseSP:
.LFB28:
	.loc 1 26 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2:
	.loc 1 28 0
	mov	r3, r0, lsr #11
	add	r3, r3, #28
	ldr	r1, [r5, r3, asl #2]
	and	r3, r0, #63488
	rsb	r3, r3, r1
	str	r3, [r5, #32]
	.loc 1 30 0
	add	r0, r3, r0
.LVL3:
	bx	lr
.LFE28:
	.size	neoZ80RebaseSP, .-neoZ80RebaseSP
	.align	2
	.global	neoZ80Bank
	.type	neoZ80Bank, %function
neoZ80Bank:
.LFB29:
	.loc 1 33 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4:
	.loc 1 36 0
	ldr	r3, .L16
	ldr	r2, [r3, #4]
	sub	r2, r2, #1
	bic	r2, r2, #-16777216
	bic	r2, r2, #16515072
	and	r1, r1, #65280
.LVL5:
	add	ip, r0, #3
	and	r2, r2, r1, asl ip
	ldr	r3, [r3, #0]
	add	r2, r3, r2
.LVL6:
	.loc 1 39 0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L13
.L11:
	.word	.L7
	.word	.L8
	.word	.L9
	.word	.L10
.L10:
	mov	r1, r5
	mov	r3, #0
.L12:
	.loc 1 32 0
	add	r0, r2, r3
.LVL7:
	.loc 1 42 0
	add	r3, r3, #2048
	.loc 1 41 0
	cmp	r3, #16384
	.loc 1 42 0
	str	r0, [r1, #176]
	add	r1, r1, #4
	.loc 1 41 0
	bne	.L12
	bx	lr
.LVL8:
.L9:
	.loc 1 49 0
	add	r0, r2, #2048
.LVL9:
	add	r1, r0, #2048
.LVL10:
	.loc 1 48 0
	add	ip, r1, #2048
	str	ip, [r5, #220]
	str	r2, [r5, #208]
	str	r0, [r5, #212]
	str	r1, [r5, #216]
	bx	lr
.LVL11:
.L8:
	.loc 1 54 0
	add	r1, r2, #2048
	str	r1, [r5, #228]
	.loc 1 53 0
	str	r2, [r5, #224]
	.loc 1 55 0
	bx	lr
.L7:
	.loc 1 57 0
	str	r2, [r5, #232]
.L13:
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
.LFE29:
	.size	neoZ80Bank, .-neoZ80Bank
	.align	2
	.global	neoZ80ClearNmi
	.type	neoZ80ClearNmi, %function
neoZ80ClearNmi:
.LFB34:
	.loc 1 176 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 178 0
	ldrb	r2, [r5, #68]	@ zero_extendqisi2
	bic	r2, r2, #2
	strb	r2, [r5, #68]
	.loc 1 179 0
	bx	lr
.LFE34:
	.size	neoZ80ClearNmi, .-neoZ80ClearNmi
	.align	2
	.global	neoZ80Nmi
	.type	neoZ80Nmi, %function
neoZ80Nmi:
.LFB35:
	.loc 1 182 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 183 0
	ldr	r3, .L22
	ldrb	r2, [r3, #-109]	@ zero_extendqisi2
	ldr	r3, .L22+4
	strb	r2, [r3, #8]
	.loc 1 185 0
	ldrb	r2, [r5, #68]	@ zero_extendqisi2
	orr	r2, r2, #2
	strb	r2, [r5, #68]
	.loc 1 186 0
	bx	lr
.L23:
	.align	2
.L22:
	.word	41940223
	.word	.LANCHOR0
.LFE35:
	.size	neoZ80Nmi, .-neoZ80Nmi
	.align	2
	.global	neoZ80ClearIrq
	.type	neoZ80ClearIrq, %function
neoZ80ClearIrq:
.LFB36:
	.loc 1 189 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 191 0
	ldrb	r2, [r5, #68]	@ zero_extendqisi2
	bic	r2, r2, #1
	strb	r2, [r5, #68]
	.loc 1 192 0
	bx	lr
.LFE36:
	.size	neoZ80ClearIrq, .-neoZ80ClearIrq
	.align	2
	.global	neoZ80Irq
	.type	neoZ80Irq, %function
neoZ80Irq:
.LFB37:
	.loc 1 195 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 197 0
	ldrb	r2, [r5, #68]	@ zero_extendqisi2
	orr	r2, r2, #1
	strb	r2, [r5, #68]
	.loc 1 198 0
	bx	lr
.LFE37:
	.size	neoZ80Irq, .-neoZ80Irq
	.align	2
	.global	neoZ80Execute
	.type	neoZ80Execute, %function
neoZ80Execute:
.LFB38:
	.loc 1 201 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL12:
	stmfd	sp!, {r4, lr}
.LCFI0:
	.loc 1 202 0
	mov	r1, r0
	.loc 1 201 0
	mov	r4, r0
	.loc 1 202 0
	mov	r0, r5
.LVL13:
	bl	DrZ80Run
	.loc 1 204 0
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	bx	lr
.LFE38:
	.size	neoZ80Execute, .-neoZ80Execute
	.align	2
	.global	neoZ80Reset
	.type	neoZ80Reset, %function
neoZ80Reset:
.LFB33:
	.loc 1 148 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 152 0
	ldr	r2, .L36
	.loc 1 148 0
	stmfd	sp!, {r4, lr}
.LCFI1:
	.loc 1 152 0
	ldr	r3, .L36+4
	ldr	ip, [r2, #-255]
	.loc 1 153 0
	ldr	lr, [r2, #-251]
	.loc 1 156 0
	add	r0, r3, #12
	mov	r1, ip
	mov	r2, #32768
	.loc 1 153 0
	stmia	r3, {ip, lr}	@ phole stm
	.loc 1 156 0
	bl	memcpy
	.loc 1 147 0
	ldr	r0, .L36+8
	.loc 1 158 0
	mov	r4, r5
	mov	r2, r5
	.loc 1 147 0
	mov	r1, r5
	sub	r3, r0, #32768
.LVL14:
.L31:
	.loc 1 158 0
	str	r3, [r1, #112]
	.loc 1 159 0
	add	r3, r3, #2048
	.loc 1 157 0
	cmp	r3, r0
	.loc 1 159 0
	add	r1, r1, #4
	.loc 1 157 0
	bne	.L31
	.loc 1 162 0
	ldr	r3, .L36+4
.LVL15:
	ldr	r3, [r3, #0]
	.loc 1 147 0
	add	r1, r3, #65536
	.loc 1 162 0
	add	r3, r3, #32768
.LVL16:
.L32:
	.loc 1 164 0
	str	r3, [r2, #176]
	.loc 1 165 0
	add	r3, r3, #2048
	.loc 1 163 0
	cmp	r3, r1
	.loc 1 165 0
	add	r2, r2, #4
	.loc 1 163 0
	bne	.L32
	.loc 1 169 0
	add	r3, r4, #240
.LVL17:
	str	r3, [r4, #236]
	.loc 1 171 0
	mov	r0, #0
	ldr	ip, [r4, #108]
	mov	lr, pc
	bx	ip
	str	r0, [r4, #0]
	.loc 1 172 0
	ldr	r0, .L36+12
	mov	r4, r5
	ldr	ip, [r5, #104]
	mov	lr, pc
	bx	ip
	str	r0, [r4, #24]
	.loc 1 173 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	41940223
	.word	.LANCHOR0
	.word	.LANCHOR0+32780
	.word	65535
.LFE33:
	.size	neoZ80Reset, .-neoZ80Reset
	.align	2
	.global	neoZ80Init
	.type	neoZ80Init, %function
neoZ80Init:
.LFB32:
	.loc 1 114 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
.LCFI2:
	.loc 1 115 0
	mov	r1, #0
	mov	r2, #112
	mov	r0, r5
	bl	memset
	.loc 1 116 0
	ldr	ip, .L40
	str	ip, [r5, #108]
	.loc 1 117 0
	ldr	ip, .L40+4
	str	ip, [r5, #104]
	.loc 1 118 0
	ldr	ip, .L40+8
	str	ip, [r5, #96]
	.loc 1 119 0
	ldr	ip, .L40+12
	str	ip, [r5, #100]
	.loc 1 120 0
	ldr	ip, .L40+16
	str	ip, [r5, #80]
	.loc 1 121 0
	ldr	ip, .L40+20
	str	ip, [r5, #84]
	.loc 1 122 0
	ldr	ip, .L40+24
	str	ip, [r5, #88]
	.loc 1 123 0
	ldr	ip, .L40+28
	.loc 1 136 0
	ldr	r1, .L40+32
	.loc 1 123 0
	str	ip, [r5, #92]
	.loc 1 124 0
	mov	ip, #56
	.loc 1 126 0
	mov	r2, #0
	.loc 1 127 0
	mov	r0, #4
	.loc 1 124 0
	str	ip, [r5, #72]
	.loc 1 139 0
	mov	ip, #1
	.loc 1 141 0
	strb	r2, [r5, #69]
	.loc 1 132 0
	str	r0, [r5, #52]
	.loc 1 137 0
	str	r1, [r5, #40]
	.loc 1 139 0
	strb	ip, [r5, #70]
	.loc 1 126 0
	str	r2, [r5, #4]
	.loc 1 127 0
	str	r0, [r5, #8]
	.loc 1 128 0
	str	r2, [r5, #12]
	.loc 1 129 0
	str	r2, [r5, #16]
	.loc 1 130 0
	str	r2, [r5, #20]
	.loc 1 131 0
	str	r2, [r5, #48]
	.loc 1 133 0
	str	r2, [r5, #56]
	.loc 1 134 0
	str	r2, [r5, #60]
	.loc 1 135 0
	str	r2, [r5, #64]
	.loc 1 136 0
	str	r1, [r5, #36]
	.loc 1 138 0
	str	r2, [r5, #44]
	.loc 1 140 0
	strb	r2, [r5, #68]
	.loc 1 145 0
	ldmfd	sp!, {r4, lr}
	.loc 1 144 0
	b	neoZ80Reset
.L41:
	.align	2
.L40:
	.word	neoZ80RebasePC
	.word	neoZ80RebaseSP
	.word	neoZ80Read8
	.word	neoZ80Read16
	.word	neoZ80Write8
	.word	neoZ80Write16
	.word	neoZ80In
	.word	neoZ80Out
	.word	65535
.LFE32:
	.size	neoZ80Init, .-neoZ80Init
	.align	2
	.global	neoZ80Out
	.type	neoZ80Out, %function
neoZ80Out:
.LFB31:
	.loc 1 93 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL18:
	.loc 1 94 0
	and	r0, r0, #255
.LVL19:
	sub	r0, r0, #4
	.loc 1 93 0
	stmfd	sp!, {r4, lr}
.LCFI3:
	.loc 1 94 0
	cmp	r0, #8
	ldrls	pc, [pc, r0, asl #2]
	b	.L50
.L49:
	.word	.L44
	.word	.L45
	.word	.L46
	.word	.L47
	.word	.L50
	.word	.L50
	.word	.L50
	.word	.L50
	.word	.L48
.L44:
	.loc 1 96 0
	mov	r0, #0
	b	.L51
.L45:
	.loc 1 99 0
	mov	r0, #1
	b	.L51
.L46:
	.loc 1 102 0
	mov	r0, #2
	b	.L51
.L47:
	.loc 1 105 0
	mov	r0, #3
.L51:
	bl	neoYM2610Write
.LVL20:
	.loc 1 106 0
	b	.L50
.LVL21:
.L48:
	.loc 1 108 0
	ldr	r3, .L52
	strb	r1, [r3, #-108]
.L50:
	.loc 1 111 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	41940223
.LFE31:
	.size	neoZ80Out, .-neoZ80Out
	.align	2
	.global	neoZ80In
	.type	neoZ80In, %function
neoZ80In:
.LFB30:
	.loc 1 63 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL22:
	.loc 1 64 0
	and	r3, r0, #255
	.loc 1 63 0
	stmfd	sp!, {r4, lr}
.LCFI4:
	.loc 1 63 0
	mov	r1, r0
	.loc 1 64 0
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L67
.L64:
	.word	.L56
	.word	.L67
	.word	.L67
	.word	.L67
	.word	.L57
	.word	.L58
	.word	.L59
	.word	.L67
	.word	.L60
	.word	.L61
	.word	.L62
	.word	.L63
.LVL23:
.L56:
.LBB4:
.LBB5:
	.loc 1 178 0
	ldrb	r2, [r5, #68]	@ zero_extendqisi2
.LBE5:
.LBE4:
	.loc 1 68 0
	ldr	r3, .L70
.LBB7:
.LBB6:
	.loc 1 178 0
	bic	r2, r2, #2
	strb	r2, [r5, #68]
.LBE6:
.LBE7:
	.loc 1 68 0
	mov	r2, #0
	strb	r2, [r3, #-107]
	.loc 1 69 0
	ldr	r3, .L70+4
	ldrb	r0, [r3, #8]	@ zero_extendqisi2
	b	.L65
.LVL24:
.L57:
	.loc 1 71 0
	mov	r0, #0
	b	.L68
.LVL25:
.L58:
	.loc 1 73 0
	mov	r0, #1
.L68:
	bl	neoYM2610Read
.LVL26:
	b	.L65
.LVL27:
.L59:
	.loc 1 75 0
	mov	r0, #2
	b	.L68
.LVL28:
.L60:
	.loc 1 77 0
	mov	r0, #0
	b	.L69
.LVL29:
.L61:
	.loc 1 80 0
	mov	r0, #1
	b	.L69
.LVL30:
.L62:
	.loc 1 83 0
	mov	r0, #2
	b	.L69
.LVL31:
.L63:
	.loc 1 86 0
	mov	r0, #3
.L69:
	bl	neoZ80Bank
.LVL32:
.L67:
	mov	r0, #0
.L65:
	.loc 1 90 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L71:
	.align	2
.L70:
	.word	41940223
	.word	.LANCHOR0
.LFE30:
	.size	neoZ80In, .-neoZ80In
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_pAudioProgram, %object
	.size	g_pAudioProgram, 4
g_pAudioProgram:
	.space	4
	.type	g_audioProgramSize, %object
	.size	g_audioProgramSize, 4
g_audioProgramSize:
	.space	4
	.type	g_audioCommand, %object
	.size	g_audioCommand, 1
g_audioCommand:
	.space	1
	.space	3
	.type	g_z80Rom, %object
	.size	g_z80Rom, 32768
g_z80Rom:
	.space	32768
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI0-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI1-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI2-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI3-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI4-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.align	2
.LEFDE22:
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
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB38-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB33-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LFB32-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB31-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB30-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL32-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "C:/Users/GRX/NeoDS/arm7/../common/source/NeoIPC.h"
	.file 5 "C:/Users/GRX/NeoDS/arm7/source/DrZ80.h"
	.file 6 "C:/Users/GRX/NeoDS/arm7/source/NeoCpuZ80.h"
	.file 7 "C:/Users/GRX/NeoDS/arm7/source/NeoSystem7.h"
	.section	.debug_info
	.4byte	0x81e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0x1
	.4byte	.LASF105
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2a
	.4byte	0x28
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x35
	.4byte	0x2f
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x2
	.byte	0x36
	.4byte	0x36
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0x4f
	.4byte	0x3d
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x50
	.4byte	0x44
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0x8
	.ascii	"u8\000"
	.byte	0x3
	.byte	0x62
	.4byte	0x79
	.uleb128 0x8
	.ascii	"u16\000"
	.byte	0x3
	.byte	0x63
	.4byte	0x8f
	.uleb128 0x8
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x64
	.4byte	0xa5
	.uleb128 0x8
	.ascii	"s16\000"
	.byte	0x3
	.byte	0x68
	.4byte	0x84
	.uleb128 0x8
	.ascii	"s32\000"
	.byte	0x3
	.byte	0x69
	.4byte	0x9a
	.uleb128 0x9
	.4byte	0xbe
	.4byte	0x104
	.uleb128 0xa
	.4byte	0x60
	.byte	0x6
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbe
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.byte	0x47
	.4byte	0x134
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x4
	.byte	0x48
	.4byte	0xd3
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x4
	.byte	0x49
	.4byte	0xd3
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x4
	.byte	0x4a
	.4byte	0xd3
	.byte	0x0
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0xc
	.byte	0x4
	.byte	0x45
	.4byte	0x173
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x4
	.byte	0x46
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	0x10a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x4
	.byte	0x4c
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x4
	.byte	0x4d
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x4
	.byte	0x4e
	.4byte	0x134
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x98
	.byte	0x4
	.byte	0x50
	.4byte	0x2b9
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x4
	.byte	0x52
	.4byte	0x104
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x4
	.byte	0x53
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x4
	.byte	0x54
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x4
	.byte	0x55
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x4
	.byte	0x56
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x4
	.byte	0x57
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x4
	.byte	0x58
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x4
	.byte	0x59
	.4byte	0x2b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x4
	.byte	0x5a
	.4byte	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x4
	.byte	0x5b
	.4byte	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x4
	.byte	0x5c
	.4byte	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x4
	.byte	0x5d
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x4
	.byte	0x60
	.4byte	0x2f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x4
	.byte	0x61
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x4
	.byte	0x63
	.4byte	0xc8
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x4
	.byte	0x65
	.4byte	0xf4
	.byte	0x3
	.byte	0x23
	.uleb128 0x8a
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x4
	.byte	0x68
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x91
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x4
	.byte	0x69
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x92
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x4
	.byte	0x6a
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x93
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x4
	.byte	0x6b
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x4
	.byte	0x6c
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x95
	.byte	0x0
	.uleb128 0x9
	.4byte	0x2c9
	.4byte	0x2c9
	.uleb128 0xa
	.4byte	0x60
	.byte	0x6
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc8
	.uleb128 0x9
	.4byte	0x2df
	.4byte	0x2df
	.uleb128 0xa
	.4byte	0x60
	.byte	0x6
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x173
	.uleb128 0x9
	.4byte	0xde
	.4byte	0x2f5
	.uleb128 0xa
	.4byte	0x60
	.byte	0x6
	.byte	0x0
	.uleb128 0x9
	.4byte	0xd3
	.4byte	0x305
	.uleb128 0xa
	.4byte	0x60
	.byte	0x3
	.byte	0x0
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x70
	.byte	0x5
	.byte	0x13
	.4byte	0x4c4
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x5
	.byte	0x14
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x5
	.byte	0x15
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x5
	.byte	0x16
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x5
	.byte	0x17
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.4byte	.LASF52
	.byte	0x5
	.byte	0x18
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0x5
	.byte	0x19
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x5
	.byte	0x1a
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x5
	.byte	0x1b
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x5
	.byte	0x1c
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.byte	0x1d
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x5
	.byte	0x1e
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x5
	.byte	0x1f
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x5
	.byte	0x20
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x5
	.byte	0x21
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x5
	.byte	0x22
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x5
	.byte	0x23
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x5
	.byte	0x24
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x5
	.byte	0x27
	.4byte	0x28
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x5
	.byte	0x28
	.4byte	0x28
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x5
	.byte	0x29
	.4byte	0x28
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x5
	.byte	0x2a
	.4byte	0x28
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x5
	.byte	0x2b
	.4byte	0x44
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x5
	.byte	0x2c
	.4byte	0x6c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x5
	.byte	0x2d
	.4byte	0x4d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x5
	.byte	0x2e
	.4byte	0x4ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x5
	.byte	0x2f
	.4byte	0x502
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x5
	.byte	0x30
	.4byte	0x519
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x5
	.byte	0x31
	.4byte	0x502
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x5
	.byte	0x32
	.4byte	0x52f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x5
	.byte	0x33
	.4byte	0x545
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x5
	.byte	0x34
	.4byte	0x545
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0x10
	.byte	0x1
	.4byte	0x4d5
	.uleb128 0x11
	.4byte	0x28
	.uleb128 0x11
	.4byte	0x36
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c4
	.uleb128 0x10
	.byte	0x1
	.4byte	0x4ec
	.uleb128 0x11
	.4byte	0x36
	.uleb128 0x11
	.4byte	0x36
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4db
	.uleb128 0x12
	.byte	0x1
	.4byte	0x28
	.4byte	0x502
	.uleb128 0x11
	.4byte	0x36
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4f2
	.uleb128 0x10
	.byte	0x1
	.4byte	0x519
	.uleb128 0x11
	.4byte	0x36
	.uleb128 0x11
	.4byte	0x28
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x508
	.uleb128 0x12
	.byte	0x1
	.4byte	0x36
	.4byte	0x52f
	.uleb128 0x11
	.4byte	0x36
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x51f
	.uleb128 0x12
	.byte	0x1
	.4byte	0x44
	.4byte	0x545
	.uleb128 0x11
	.4byte	0x36
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x535
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x6
	.byte	0xc
	.4byte	0x305
	.uleb128 0x13
	.4byte	.LASF80
	.2byte	0x8f0
	.byte	0x7
	.byte	0x1f
	.4byte	0x58f
	.uleb128 0x14
	.ascii	"z80\000"
	.byte	0x7
	.byte	0x20
	.4byte	0x54b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x7
	.byte	0x26
	.4byte	0x58f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0x7
	.byte	0x27
	.4byte	0x59f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.byte	0x0
	.uleb128 0x9
	.4byte	0x104
	.4byte	0x59f
	.uleb128 0xa
	.4byte	0x60
	.byte	0x1f
	.byte	0x0
	.uleb128 0x9
	.4byte	0xbe
	.4byte	0x5b0
	.uleb128 0x15
	.4byte	0x60
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x7
	.byte	0x28
	.4byte	0x556
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF106
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF84
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.4byte	0x44
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x5d
	.4byte	0x5f8
	.uleb128 0x18
	.ascii	"a\000"
	.byte	0x1
	.byte	0x12
	.4byte	0x36
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x1
	.byte	0x14
	.4byte	0x5f8
	.byte	0x0
	.uleb128 0x1a
	.4byte	0xd3
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF85
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.4byte	0x44
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x5d
	.4byte	0x631
	.uleb128 0x18
	.ascii	"a\000"
	.byte	0x1
	.byte	0x19
	.4byte	0x36
	.4byte	.LLST3
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x1
	.byte	0x1b
	.4byte	0x5f8
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF97
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5d
	.4byte	0x693
	.uleb128 0x1c
	.4byte	.LASF87
	.byte	0x1
	.byte	0x20
	.4byte	0xbe
	.4byte	.LLST5
	.uleb128 0x18
	.ascii	"a\000"
	.byte	0x1
	.byte	0x20
	.4byte	0xc8
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x1
	.byte	0x22
	.4byte	0x5f8
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x1
	.byte	0x23
	.4byte	0x5f8
	.uleb128 0x1d
	.4byte	.LASF95
	.byte	0x1
	.byte	0x24
	.4byte	0x104
	.4byte	.LLST7
	.uleb128 0x1e
	.ascii	"i\000"
	.byte	0x1
	.byte	0x25
	.4byte	0xd3
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x5bb
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x5d
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF90
	.byte	0x1
	.byte	0xb5
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x5d
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF91
	.byte	0x1
	.byte	0xbc
	.4byte	.LFB36
	.4byte	.LFE36
	.byte	0x1
	.byte	0x5d
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF92
	.byte	0x1
	.byte	0xc2
	.4byte	.LFB37
	.4byte	.LFE37
	.byte	0x1
	.byte	0x5d
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF93
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.4byte	0xe9
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST12
	.4byte	0x705
	.uleb128 0x1c
	.4byte	.LASF94
	.byte	0x1
	.byte	0xc8
	.4byte	0xe9
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF107
	.byte	0x1
	.byte	0x93
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LLST14
	.4byte	0x736
	.uleb128 0x1d
	.4byte	.LASF95
	.byte	0x1
	.byte	0x95
	.4byte	0x104
	.4byte	.LLST15
	.uleb128 0x1e
	.ascii	"i\000"
	.byte	0x1
	.byte	0x96
	.4byte	0xd3
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF96
	.byte	0x1
	.byte	0x71
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LLST16
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF98
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LLST17
	.4byte	0x77e
	.uleb128 0x18
	.ascii	"a\000"
	.byte	0x1
	.byte	0x5c
	.4byte	0xc8
	.4byte	.LLST18
	.uleb128 0x18
	.ascii	"d\000"
	.byte	0x1
	.byte	0x5c
	.4byte	0xbe
	.4byte	.LLST19
	.byte	0x0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF99
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.4byte	0xbe
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LLST20
	.4byte	0x7b8
	.uleb128 0x18
	.ascii	"a\000"
	.byte	0x1
	.byte	0x3e
	.4byte	0xc8
	.4byte	.LLST21
	.uleb128 0x25
	.4byte	0x5bb
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x43
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF100
	.byte	0x1
	.byte	0x8
	.4byte	0xd3
	.byte	0x5
	.byte	0x3
	.4byte	g_audioProgramSize
	.uleb128 0x26
	.4byte	.LASF101
	.byte	0x1
	.byte	0x9
	.4byte	0x104
	.byte	0x5
	.byte	0x3
	.4byte	g_pAudioProgram
	.uleb128 0x9
	.4byte	0xbe
	.4byte	0x7eb
	.uleb128 0x15
	.4byte	0x60
	.2byte	0x7fff
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF102
	.byte	0x1
	.byte	0xa
	.4byte	0x7da
	.byte	0x5
	.byte	0x3
	.4byte	g_z80Rom
	.uleb128 0x26
	.4byte	.LASF103
	.byte	0x1
	.byte	0xb
	.4byte	0xbe
	.byte	0x5
	.byte	0x3
	.4byte	g_audioCommand
	.uleb128 0x27
	.4byte	.LASF108
	.byte	0x7
	.byte	0x39
	.4byte	0x81b
	.byte	0x1
	.byte	0x1
	.byte	0x55
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5b0
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
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x0
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
	.4byte	0xdc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x822
	.4byte	0x5c4
	.ascii	"neoZ80RebasePC\000"
	.4byte	0x5fd
	.ascii	"neoZ80RebaseSP\000"
	.4byte	0x631
	.ascii	"neoZ80Bank\000"
	.4byte	0x693
	.ascii	"neoZ80ClearNmi\000"
	.4byte	0x6a2
	.ascii	"neoZ80Nmi\000"
	.4byte	0x6b4
	.ascii	"neoZ80ClearIrq\000"
	.4byte	0x6c6
	.ascii	"neoZ80Irq\000"
	.4byte	0x6d8
	.ascii	"neoZ80Execute\000"
	.4byte	0x705
	.ascii	"neoZ80Reset\000"
	.4byte	0x736
	.ascii	"neoZ80Init\000"
	.4byte	0x74a
	.ascii	"neoZ80Out\000"
	.4byte	0x77e
	.ascii	"neoZ80In\000"
	.4byte	0x80d
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
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF69:
	.ascii	"z80irqvector\000"
.LASF15:
	.ascii	"float\000"
.LASF83:
	.ascii	"TNeoContext7\000"
.LASF89:
	.ascii	"addr\000"
.LASF93:
	.ascii	"neoZ80Execute\000"
.LASF54:
	.ascii	"Z80SP\000"
.LASF95:
	.ascii	"pSrc\000"
.LASF42:
	.ascii	"globalAudioEnabled\000"
.LASF18:
	.ascii	"endAddr\000"
.LASF17:
	.ascii	"startAddr\000"
.LASF39:
	.ascii	"arm9Return\000"
.LASF53:
	.ascii	"Z80HL\000"
.LASF94:
	.ascii	"cycles\000"
.LASF2:
	.ascii	"short int\000"
.LASF27:
	.ascii	"audioProgramSize\000"
.LASF60:
	.ascii	"Z80A2\000"
.LASF78:
	.ascii	"z80_rebasePC\000"
.LASF97:
	.ascii	"neoZ80Bank\000"
.LASF70:
	.ascii	"z80_irq_callback\000"
.LASF47:
	.ascii	"DrZ80\000"
.LASF55:
	.ascii	"Z80PC_BASE\000"
.LASF65:
	.ascii	"Z80_IRQ\000"
.LASF48:
	.ascii	"Z80PC\000"
.LASF56:
	.ascii	"Z80SP_BASE\000"
.LASF24:
	.ascii	"_TNeoAdpcaControl\000"
.LASF38:
	.ascii	"arm9Args\000"
.LASF25:
	.ascii	"_TNeoIPC\000"
.LASF40:
	.ascii	"audioStreamCount\000"
.LASF10:
	.ascii	"uint8_t\000"
.LASF105:
	.ascii	"C:/Users/GRX/NeoDS/arm7/source/NeoCpuZ80.c\000"
.LASF31:
	.ascii	"arm7FifoSent\000"
.LASF91:
	.ascii	"neoZ80ClearIrq\000"
.LASF85:
	.ascii	"neoZ80RebaseSP\000"
.LASF102:
	.ascii	"g_z80Rom\000"
.LASF22:
	.ascii	"timeStamp\000"
.LASF33:
	.ascii	"pAdpcmBuffer\000"
.LASF100:
	.ascii	"g_audioProgramSize\000"
.LASF29:
	.ascii	"arm9FifoSent\000"
.LASF32:
	.ascii	"arm7FifoProcessed\000"
.LASF66:
	.ascii	"Z80IF\000"
.LASF5:
	.ascii	"long long int\000"
.LASF9:
	.ascii	"char\000"
.LASF7:
	.ascii	"long int\000"
.LASF67:
	.ascii	"Z80IM\000"
.LASF86:
	.ascii	"offset\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF71:
	.ascii	"z80_write8\000"
.LASF92:
	.ascii	"neoZ80Irq\000"
.LASF58:
	.ascii	"Z80IY\000"
.LASF84:
	.ascii	"neoZ80RebasePC\000"
.LASF64:
	.ascii	"Z80HL2\000"
.LASF51:
	.ascii	"Z80BC\000"
.LASF90:
	.ascii	"neoZ80Nmi\000"
.LASF99:
	.ascii	"neoZ80In\000"
.LASF75:
	.ascii	"z80_read8\000"
.LASF72:
	.ascii	"z80_write16\000"
.LASF98:
	.ascii	"neoZ80Out\000"
.LASF0:
	.ascii	"signed char\000"
.LASF6:
	.ascii	"long long unsigned int\000"
.LASF80:
	.ascii	"_TNeoContext7\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF73:
	.ascii	"z80_in\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF61:
	.ascii	"Z80F2\000"
.LASF12:
	.ascii	"uint16_t\000"
.LASF79:
	.ascii	"TDrZ80Context\000"
.LASF37:
	.ascii	"arm7Alive\000"
.LASF81:
	.ascii	"z80MemTable\000"
.LASF108:
	.ascii	"g_neo7\000"
.LASF50:
	.ascii	"Z80F\000"
.LASF57:
	.ascii	"Z80IX\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF107:
	.ascii	"neoZ80Reset\000"
.LASF49:
	.ascii	"Z80A\000"
.LASF96:
	.ascii	"neoZ80Init\000"
.LASF74:
	.ascii	"z80_out\000"
.LASF52:
	.ascii	"Z80DE\000"
.LASF23:
	.ascii	"TNeoAdpcmControl\000"
.LASF77:
	.ascii	"z80_rebaseSP\000"
.LASF103:
	.ascii	"g_audioCommand\000"
.LASF13:
	.ascii	"int32_t\000"
.LASF11:
	.ascii	"int16_t\000"
.LASF59:
	.ascii	"Z80I\000"
.LASF106:
	.ascii	"neoZ80ClearNmi\000"
.LASF62:
	.ascii	"Z80BC2\000"
.LASF87:
	.ascii	"bank\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF16:
	.ascii	"double\000"
.LASF28:
	.ascii	"audioRomSize\000"
.LASF76:
	.ascii	"z80_read16\000"
.LASF68:
	.ascii	"spare\000"
.LASF63:
	.ascii	"Z80DE2\000"
.LASF30:
	.ascii	"arm9FifoProcessed\000"
.LASF88:
	.ascii	"mask\000"
.LASF21:
	.ascii	"audioFrame\000"
.LASF46:
	.ascii	"misc\000"
.LASF19:
	.ascii	"frequency\000"
.LASF41:
	.ascii	"adpcmaFinished\000"
.LASF82:
	.ascii	"z80Ram\000"
.LASF104:
	.ascii	"GNU C 4.4.3\000"
.LASF35:
	.ascii	"adpcmQueuePos7\000"
.LASF36:
	.ascii	"adpcmQueuePos9\000"
.LASF26:
	.ascii	"pAudioProgram0\000"
.LASF44:
	.ascii	"audioResult\000"
.LASF34:
	.ascii	"adpcmControl\000"
.LASF45:
	.ascii	"audioCommandPending\000"
.LASF20:
	.ascii	"command\000"
.LASF43:
	.ascii	"audioCommand\000"
.LASF101:
	.ascii	"g_pAudioProgram\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
