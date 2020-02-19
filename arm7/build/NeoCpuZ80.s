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
.LFB22:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoCpuZ80.c"
	.loc 1 19 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	mov	r1, r0
	.loc 1 21 0
	mov	r3, r1, lsr #11
	add	r3, r5, r3, asl #2
	ldr	r3, [r3, #112]
	and	r2, r1, #63488
	rsb	r3, r2, r3
	.loc 1 23 0
	add	r0, r1, r3
.LVL1:
	.loc 1 19 0
	@ lr needed for prologue
	.loc 1 21 0
	str	r3, [r5, #28]
	.loc 1 23 0
	bx	lr
.LFE22:
	.size	neoZ80RebasePC, .-neoZ80RebasePC
	.align	2
	.global	neoZ80RebaseSP
	.type	neoZ80RebaseSP, %function
neoZ80RebaseSP:
.LFB23:
	.loc 1 26 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2:
	mov	r1, r0
	.loc 1 28 0
	mov	r3, r1, lsr #11
	add	r3, r5, r3, asl #2
	ldr	r3, [r3, #112]
	and	r2, r1, #63488
	rsb	r3, r2, r3
	.loc 1 30 0
	add	r0, r1, r3
.LVL3:
	.loc 1 26 0
	@ lr needed for prologue
	.loc 1 28 0
	str	r3, [r5, #32]
	.loc 1 30 0
	bx	lr
.LFE23:
	.size	neoZ80RebaseSP, .-neoZ80RebaseSP
	.align	2
	.global	neoZ80Bank
	.type	neoZ80Bank, %function
neoZ80Bank:
.LFB24:
	.loc 1 33 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4:
	.loc 1 36 0
	ldr	r3, .L16
	ldr	r3, [r3, #0]
	sub	r3, r3, #1
	bic	r3, r3, #-16777216
	add	r2, r0, #3
	and	r1, r1, #65280
.LVL5:
	bic	r3, r3, #16515072
	and	r3, r3, r1, asl r2
	ldr	r2, .L16+4
	ldr	r2, [r2, #0]
	.loc 1 33 0
	@ lr needed for prologue
	.loc 1 36 0
	add	ip, r3, r2
.LVL6:
	.loc 1 39 0
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L13
	.p2align 2
.L11:
	.word	.L7
	.word	.L8
	.word	.L9
	.word	.L10
.L10:
	mov	r3, #16
	add	r2, r5, #176
.L12:
	.loc 1 43 0
	add	r3, r3, #1
	.loc 1 41 0
	cmp	r3, #24
	.loc 1 42 0
	str	ip, [r2], #4
	.loc 1 43 0
	add	ip, ip, #2048
	.loc 1 41 0
	bne	.L12
	bx	lr
.L9:
	.loc 1 49 0
	add	r3, ip, #2048
.LVL7:
	add	r1, r3, #2048
.LVL8:
	.loc 1 48 0
	add	r2, r1, #2048
	str	r2, [r5, #220]
	str	ip, [r5, #208]
	str	r3, [r5, #212]
	str	r1, [r5, #216]
	bx	lr
.LVL9:
.L8:
	.loc 1 54 0
	add	r3, ip, #2048
	str	r3, [r5, #228]
	.loc 1 53 0
	str	ip, [r5, #224]
	bx	lr
.L7:
	.loc 1 57 0
	str	ip, [r5, #232]
.L13:
	bx	lr
.L17:
	.align	2
.L16:
	.word	g_audioProgramSize
	.word	g_pAudioProgram
.LFE24:
	.size	neoZ80Bank, .-neoZ80Bank
	.align	2
	.global	neoZ80ClearNmi
	.type	neoZ80ClearNmi, %function
neoZ80ClearNmi:
.LFB29:
	.loc 1 176 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 178 0
	ldrb	r3, [r5, #68]	@ zero_extendqisi2
	bic	r3, r3, #2
	.loc 1 176 0
	@ lr needed for prologue
	.loc 1 178 0
	strb	r3, [r5, #68]
	.loc 1 179 0
	bx	lr
.LFE29:
	.size	neoZ80ClearNmi, .-neoZ80ClearNmi
	.align	2
	.global	neoZ80Nmi
	.type	neoZ80Nmi, %function
neoZ80Nmi:
.LFB30:
	.loc 1 182 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 183 0
	ldr	r3, .L22
	ldrb	r2, [r3, #-109]	@ zero_extendqisi2
	ldr	r3, .L22+4
	strb	r2, [r3, #0]
	.loc 1 185 0
	ldrb	r3, [r5, #68]	@ zero_extendqisi2
	orr	r3, r3, #2
	.loc 1 182 0
	@ lr needed for prologue
	.loc 1 185 0
	strb	r3, [r5, #68]
	.loc 1 186 0
	bx	lr
.L23:
	.align	2
.L22:
	.word	41940223
	.word	g_audioCommand
.LFE30:
	.size	neoZ80Nmi, .-neoZ80Nmi
	.align	2
	.global	neoZ80ClearIrq
	.type	neoZ80ClearIrq, %function
neoZ80ClearIrq:
.LFB31:
	.loc 1 189 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 191 0
	ldrb	r3, [r5, #68]	@ zero_extendqisi2
	bic	r3, r3, #1
	.loc 1 189 0
	@ lr needed for prologue
	.loc 1 191 0
	strb	r3, [r5, #68]
	.loc 1 192 0
	bx	lr
.LFE31:
	.size	neoZ80ClearIrq, .-neoZ80ClearIrq
	.align	2
	.global	neoZ80Irq
	.type	neoZ80Irq, %function
neoZ80Irq:
.LFB32:
	.loc 1 195 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 197 0
	ldrb	r3, [r5, #68]	@ zero_extendqisi2
	orr	r3, r3, #1
	.loc 1 195 0
	@ lr needed for prologue
	.loc 1 197 0
	strb	r3, [r5, #68]
	.loc 1 198 0
	bx	lr
.LFE32:
	.size	neoZ80Irq, .-neoZ80Irq
	.align	2
	.global	neoZ80Execute
	.type	neoZ80Execute, %function
neoZ80Execute:
.LFB33:
	.loc 1 201 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL10:
	stmfd	sp!, {r4, lr}
.LCFI0:
	.loc 1 202 0
	mov	r1, r0
	.loc 1 201 0
	mov	r4, r0
	.loc 1 202 0
	mov	r0, r5
.LVL11:
	bl	DrZ80Run
	.loc 1 204 0
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	bx	lr
.LFE33:
	.size	neoZ80Execute, .-neoZ80Execute
	.align	2
	.global	neoZ80Reset
	.type	neoZ80Reset, %function
neoZ80Reset:
.LFB28:
	.loc 1 148 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 152 0
	ldr	r3, .L40
	.loc 1 148 0
	stmfd	sp!, {r4, lr}
.LCFI1:
	.loc 1 152 0
	ldr	lr, [r3, #-255]
	.loc 1 153 0
	ldr	ip, [r3, #-251]
	ldr	r3, .L40+4
	str	ip, [r3, #0]
	.loc 1 152 0
	ldr	r3, .L40+8
	.loc 1 156 0
	mov	r1, lr
	mov	r2, #32768
	.loc 1 152 0
	str	lr, [r3, #0]
	.loc 1 156 0
	ldr	r0, .L40+12
	bl	memcpy
	ldr	r3, .L40+12
.LVL12:
	mov	r1, #0
.LVL13:
	add	r2, r5, #112
.L31:
	.loc 1 157 0
	add	r1, r1, #1
	cmp	r1, #16
	.loc 1 158 0
	str	r3, [r2], #4
	.loc 1 159 0
	add	r3, r3, #2048
	.loc 1 157 0
	bne	.L31
	.loc 1 162 0
	ldr	r3, .L40+8
.LVL14:
	ldr	r3, [r3, #0]
	add	r2, r5, #176
	add	r3, r3, #32768
.LVL15:
.L33:
	.loc 1 163 0
	add	r1, r1, #1
	cmp	r1, #32
	.loc 1 164 0
	str	r3, [r2], #4
	.loc 1 165 0
	add	r3, r3, #2048
	.loc 1 163 0
	bne	.L33
	.loc 1 169 0
	add	r3, r5, #240
.LVL16:
	str	r3, [r5, #236]
	.loc 1 171 0
	mov	r0, #0
	.loc 1 169 0
	mov	r4, r5
	.loc 1 171 0
	ldr	ip, [r5, #108]
	mov	lr, pc
	bx	ip
.LVL17:
	str	r0, [r4, #0]
	.loc 1 172 0
	ldr	r0, .L40+16
	mov	r4, r5
	ldr	ip, [r5, #104]
	mov	lr, pc
	bx	ip
	str	r0, [r4, #24]
	.loc 1 173 0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	41940223
	.word	g_audioProgramSize
	.word	g_pAudioProgram
	.word	g_z80Rom
	.word	65535
.LFE28:
	.size	neoZ80Reset, .-neoZ80Reset
	.align	2
	.global	neoZ80Init
	.type	neoZ80Init, %function
neoZ80Init:
.LFB27:
	.loc 1 114 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
.LCFI2:
	.loc 1 115 0
	mov	r1, #0
	.loc 1 114 0
	sub	sp, sp, #4
.LCFI3:
	.loc 1 115 0
	mov	r2, #112
	mov	r0, r5
	bl	memset
	.loc 1 116 0
	ldr	r3, .L44
	str	r3, [r5, #108]
	.loc 1 117 0
	ldr	r3, .L44+4
	str	r3, [r5, #104]
	.loc 1 118 0
	ldr	r3, .L44+8
	str	r3, [r5, #96]
	.loc 1 119 0
	ldr	r3, .L44+12
	str	r3, [r5, #100]
	.loc 1 120 0
	ldr	r3, .L44+16
	str	r3, [r5, #80]
	.loc 1 121 0
	ldr	r3, .L44+20
	str	r3, [r5, #84]
	.loc 1 122 0
	ldr	r3, .L44+24
	str	r3, [r5, #88]
	.loc 1 123 0
	ldr	r3, .L44+28
	.loc 1 136 0
	ldr	r0, .L44+32
	.loc 1 123 0
	str	r3, [r5, #92]
	.loc 1 124 0
	mov	r3, #56
	.loc 1 126 0
	mov	r2, #0
	.loc 1 127 0
	mov	r1, #4
	.loc 1 124 0
	str	r3, [r5, #72]
	.loc 1 139 0
	mov	r3, #1
	.loc 1 132 0
	str	r1, [r5, #52]
	.loc 1 137 0
	str	r0, [r5, #40]
	.loc 1 139 0
	strb	r3, [r5, #70]
	.loc 1 141 0
	strb	r2, [r5, #69]
	.loc 1 126 0
	str	r2, [r5, #4]
	.loc 1 127 0
	str	r1, [r5, #8]
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
	str	r0, [r5, #36]
	.loc 1 138 0
	str	r2, [r5, #44]
	.loc 1 140 0
	strb	r2, [r5, #68]
	.loc 1 145 0
	add	sp, sp, #4
	ldr	lr, [sp], #4
	.loc 1 144 0
	b	neoZ80Reset
.L45:
	.align	2
.L44:
	.word	neoZ80RebasePC
	.word	neoZ80RebaseSP
	.word	neoZ80Read8
	.word	neoZ80Read16
	.word	neoZ80Write8
	.word	neoZ80Write16
	.word	neoZ80In
	.word	neoZ80Out
	.word	65535
.LFE27:
	.size	neoZ80Init, .-neoZ80Init
	.align	2
	.global	neoZ80Out
	.type	neoZ80Out, %function
neoZ80Out:
.LFB26:
	.loc 1 93 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL18:
	str	lr, [sp, #-4]!
.LCFI4:
	.loc 1 94 0
	and	r0, r0, #255
.LVL19:
	sub	r0, r0, #4
	.loc 1 93 0
	sub	sp, sp, #4
.LCFI5:
	.loc 1 94 0
	cmp	r0, #8
	ldrls	pc, [pc, r0, asl #2]
	b	.L54
	.p2align 2
.L53:
	.word	.L48
	.word	.L49
	.word	.L50
	.word	.L51
	.word	.L54
	.word	.L54
	.word	.L54
	.word	.L54
	.word	.L52
.L48:
	.loc 1 96 0
	mov	r0, #0
	b	.L55
.L49:
	.loc 1 99 0
	mov	r0, #1
.L55:
	bl	neoYM2610Write
.LVL20:
	b	.L54
.LVL21:
.L50:
	.loc 1 102 0
	mov	r0, #2
	b	.L55
.L51:
	.loc 1 105 0
	mov	r0, #3
	b	.L55
.L52:
	.loc 1 108 0
	ldr	r3, .L56
	strb	r1, [r3, #-108]
.L54:
	.loc 1 111 0
	add	sp, sp, #4
	ldr	lr, [sp], #4
	bx	lr
.L57:
	.align	2
.L56:
	.word	41940223
.LFE26:
	.size	neoZ80Out, .-neoZ80Out
	.align	2
	.global	neoZ80In
	.type	neoZ80In, %function
neoZ80In:
.LFB25:
	.loc 1 63 0
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL22:
	str	lr, [sp, #-4]!
.LCFI6:
	.loc 1 64 0
	and	r3, r0, #255
	.loc 1 63 0
	sub	sp, sp, #4
.LCFI7:
	.loc 1 64 0
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L71
	.p2align 2
.L68:
	.word	.L60
	.word	.L71
	.word	.L71
	.word	.L71
	.word	.L61
	.word	.L62
	.word	.L63
	.word	.L71
	.word	.L64
	.word	.L65
	.word	.L66
	.word	.L67
.L60:
.LBB4:
.LBB5:
	.loc 1 178 0
	ldrb	r3, [r5, #68]	@ zero_extendqisi2
	bic	r3, r3, #2
	strb	r3, [r5, #68]
.LBE5:
.LBE4:
	.loc 1 69 0
	ldr	r3, .L74
	ldrb	r0, [r3, #0]	@ zero_extendqisi2
.LVL23:
	.loc 1 68 0
	ldr	r3, .L74+4
	mov	r2, #0
	strb	r2, [r3, #-107]
	b	.L69
.LVL24:
.L61:
	.loc 1 71 0
	mov	r0, #0
.LVL25:
	b	.L72
.LVL26:
.L62:
	.loc 1 73 0
	mov	r0, #1
.LVL27:
	b	.L72
.LVL28:
.L63:
	.loc 1 75 0
	mov	r0, #2
.LVL29:
.L72:
	bl	neoYM2610Read
	b	.L69
.LVL30:
.L64:
	.loc 1 77 0
	mov	r1, r0
	mov	r0, #0
.LVL31:
	b	.L73
.LVL32:
.L65:
	.loc 1 80 0
	mov	r1, r0
	mov	r0, #1
.LVL33:
	b	.L73
.LVL34:
.L66:
	.loc 1 83 0
	mov	r1, r0
	mov	r0, #2
.LVL35:
	b	.L73
.LVL36:
.L67:
	.loc 1 86 0
	mov	r1, r0
	mov	r0, #3
.LVL37:
.L73:
	bl	neoZ80Bank
.LVL38:
.L71:
	mov	r0, #0
.LVL39:
.L69:
	.loc 1 90 0
	add	sp, sp, #4
	ldr	lr, [sp], #4
	bx	lr
.L75:
	.align	2
.L74:
	.word	g_audioCommand
	.word	41940223
.LFE25:
	.size	neoZ80In, .-neoZ80In
	.bss
g_audioCommand:
	.space	1
	.align	2
g_audioProgramSize:
	.space	4
	.align	2
g_pAudioProgram:
	.space	4
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI0-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.byte	0x84
	.uleb128 0x2
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI1-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.byte	0x84
	.uleb128 0x2
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI2-.LFB27
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI4-.LFB26
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI6-.LFB25
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x8
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE22:
	.file 2 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoSystem7.h"
	.file 5 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoCpuZ80.h"
	.file 6 "C:/Users/GRX/NeoDS-GBMacro/arm7/source/DrZ80.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB33-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE33-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB26-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE26-.Ltext0
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
	.4byte	.LFE26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB25-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE25-.Ltext0
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
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x607
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF76
	.byte	0x1
	.4byte	.LASF77
	.4byte	.LASF78
	.uleb128 0x2
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x8
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x7
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x56
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x1
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2e
	.4byte	0x48
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x3
	.byte	0x3a
	.4byte	0x6c
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x3
	.byte	0x53
	.4byte	0x2c
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x3
	.byte	0x54
	.4byte	0x4f
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x8
	.byte	0x4
	.uleb128 0x7
	.ascii	"u8\000"
	.byte	0x2
	.byte	0x5f
	.4byte	0x81
	.uleb128 0x7
	.ascii	"u16\000"
	.byte	0x2
	.byte	0x60
	.4byte	0x8c
	.uleb128 0x7
	.ascii	"u32\000"
	.byte	0x2
	.byte	0x61
	.4byte	0xa2
	.uleb128 0x7
	.ascii	"s32\000"
	.byte	0x2
	.byte	0x66
	.4byte	0x97
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x8
	.4byte	0x2ab
	.4byte	.LASF48
	.byte	0x70
	.byte	0x6
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x6
	.byte	0x14
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x6
	.byte	0x15
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0x16
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x6
	.byte	0x17
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0x18
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x6
	.byte	0x19
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.byte	0x1a
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.byte	0x1b
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.byte	0x1c
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x6
	.byte	0x1d
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x6
	.byte	0x1e
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x6
	.byte	0x1f
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0x20
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0x21
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0x22
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0x23
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0x24
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0x27
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0x28
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0x29
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x6
	.byte	0x2a
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x6
	.byte	0x2b
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x6
	.byte	0x2c
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x6
	.byte	0x2d
	.4byte	0x2bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x6
	.byte	0x2e
	.4byte	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x6
	.byte	0x2f
	.4byte	0x2e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x6
	.byte	0x30
	.4byte	0x300
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x6
	.byte	0x31
	.4byte	0x2e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x6
	.byte	0x32
	.4byte	0x316
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x6
	.byte	0x33
	.4byte	0x32c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x6
	.byte	0x34
	.4byte	0x32c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.byte	0x0
	.uleb128 0xa
	.4byte	0x2bc
	.byte	0x1
	.uleb128 0xb
	.4byte	0x48
	.uleb128 0xb
	.4byte	0x6c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2ab
	.uleb128 0xa
	.4byte	0x2d3
	.byte	0x1
	.uleb128 0xb
	.4byte	0x6c
	.uleb128 0xb
	.4byte	0x6c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c2
	.uleb128 0xc
	.4byte	0x2e9
	.byte	0x1
	.4byte	0x48
	.uleb128 0xb
	.4byte	0x6c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2d9
	.uleb128 0xa
	.4byte	0x300
	.byte	0x1
	.uleb128 0xb
	.4byte	0x6c
	.uleb128 0xb
	.4byte	0x48
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2ef
	.uleb128 0xc
	.4byte	0x316
	.byte	0x1
	.4byte	0x6c
	.uleb128 0xb
	.4byte	0x6c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x306
	.uleb128 0xc
	.4byte	0x32c
	.byte	0x1
	.4byte	0x3a
	.uleb128 0xb
	.4byte	0x6c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x31c
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x5
	.byte	0xc
	.4byte	0xec
	.uleb128 0xd
	.4byte	0x376
	.4byte	.LASF49
	.2byte	0x8f0
	.byte	0x4
	.byte	0x1f
	.uleb128 0xe
	.ascii	"z80\000"
	.byte	0x4
	.byte	0x20
	.4byte	0x332
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x4
	.byte	0x26
	.4byte	0x376
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x4
	.byte	0x27
	.4byte	0x386
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.byte	0x0
	.uleb128 0xf
	.4byte	0x386
	.4byte	0xe6
	.uleb128 0x10
	.4byte	0x41
	.byte	0x1f
	.byte	0x0
	.uleb128 0xf
	.4byte	0x397
	.4byte	0xbb
	.uleb128 0x11
	.4byte	0x41
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x4
	.byte	0x28
	.4byte	0x33d
	.uleb128 0x12
	.4byte	0x3d6
	.byte	0x1
	.4byte	.LASF53
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.4byte	0x3a
	.4byte	.LFB22
	.4byte	.LFE22
	.byte	0x1
	.byte	0x5d
	.uleb128 0x13
	.ascii	"a\000"
	.byte	0x1
	.byte	0x12
	.4byte	0x6c
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x1
	.byte	0x14
	.4byte	0x3d6
	.byte	0x0
	.uleb128 0x15
	.4byte	0xd0
	.uleb128 0x12
	.4byte	0x40f
	.byte	0x1
	.4byte	.LASF54
	.byte	0x1
	.byte	0x1a
	.byte	0x1
	.4byte	0x3a
	.4byte	.LFB23
	.4byte	.LFE23
	.byte	0x1
	.byte	0x5d
	.uleb128 0x13
	.ascii	"a\000"
	.byte	0x1
	.byte	0x19
	.4byte	0x6c
	.4byte	.LLST3
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x1
	.byte	0x1b
	.4byte	0x3d6
	.byte	0x0
	.uleb128 0x16
	.4byte	0x46f
	.byte	0x1
	.4byte	.LASF56
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x5d
	.uleb128 0x17
	.4byte	.LASF57
	.byte	0x1
	.byte	0x20
	.4byte	0xbb
	.byte	0x1
	.byte	0x50
	.uleb128 0x13
	.ascii	"a\000"
	.byte	0x1
	.byte	0x20
	.4byte	0xc5
	.4byte	.LLST5
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x1
	.byte	0x22
	.4byte	0x3d6
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x1
	.byte	0x23
	.4byte	0x3d6
	.uleb128 0x18
	.4byte	.LASF60
	.byte	0x1
	.byte	0x24
	.4byte	0xe6
	.4byte	.LLST6
	.uleb128 0x19
	.ascii	"i\000"
	.byte	0x1
	.byte	0x25
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.uleb128 0x1b
	.4byte	0x46f
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF62
	.byte	0x1
	.byte	0xb6
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF63
	.byte	0x1
	.byte	0xbd
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF64
	.byte	0x1
	.byte	0xc3
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1d
	.4byte	0x4ea
	.byte	0x1
	.4byte	.LASF65
	.byte	0x1
	.byte	0xc9
	.byte	0x1
	.4byte	0xdb
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LLST11
	.uleb128 0x1e
	.4byte	.LASF66
	.byte	0x1
	.byte	0xc8
	.4byte	0xdb
	.4byte	.LLST12
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x51f
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.byte	0x94
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST13
	.uleb128 0x18
	.4byte	.LASF60
	.byte	0x1
	.byte	0x95
	.4byte	0xe6
	.4byte	.LLST14
	.uleb128 0x20
	.ascii	"i\000"
	.byte	0x1
	.byte	0x96
	.4byte	0xd0
	.4byte	.LLST15
	.byte	0x0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF68
	.byte	0x1
	.byte	0x72
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST16
	.uleb128 0x22
	.4byte	0x567
	.byte	0x1
	.4byte	.LASF69
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST17
	.uleb128 0x13
	.ascii	"a\000"
	.byte	0x1
	.byte	0x5c
	.4byte	0xc5
	.4byte	.LLST18
	.uleb128 0x13
	.ascii	"d\000"
	.byte	0x1
	.byte	0x5c
	.4byte	0xbb
	.4byte	.LLST19
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x5a1
	.byte	0x1
	.4byte	.LASF70
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.4byte	0xbb
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST20
	.uleb128 0x13
	.ascii	"a\000"
	.byte	0x1
	.byte	0x3e
	.4byte	0xc5
	.4byte	.LLST21
	.uleb128 0x23
	.4byte	0x46f
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x1
	.byte	0x43
	.byte	0x0
	.uleb128 0x24
	.4byte	.LASF71
	.byte	0x1
	.byte	0x8
	.4byte	0xd0
	.byte	0x5
	.byte	0x3
	.4byte	g_audioProgramSize
	.uleb128 0x24
	.4byte	.LASF72
	.byte	0x1
	.byte	0x9
	.4byte	0xe6
	.byte	0x5
	.byte	0x3
	.4byte	g_pAudioProgram
	.uleb128 0xf
	.4byte	0x5d4
	.4byte	0xbb
	.uleb128 0x11
	.4byte	0x41
	.2byte	0x7fff
	.byte	0x0
	.uleb128 0x24
	.4byte	.LASF73
	.byte	0x1
	.byte	0xa
	.4byte	0x5c3
	.byte	0x5
	.byte	0x3
	.4byte	g_z80Rom
	.uleb128 0x24
	.4byte	.LASF74
	.byte	0x1
	.byte	0xb
	.4byte	0xbb
	.byte	0x5
	.byte	0x3
	.4byte	g_audioCommand
	.uleb128 0x25
	.4byte	.LASF75
	.byte	0x4
	.byte	0x39
	.4byte	0x604
	.byte	0x1
	.byte	0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0x4
	.4byte	0x397
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
	.uleb128 0x4
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.4byte	0x60b
	.4byte	0x3a2
	.ascii	"neoZ80RebasePC\000"
	.4byte	0x3db
	.ascii	"neoZ80RebaseSP\000"
	.4byte	0x40f
	.ascii	"neoZ80Bank\000"
	.4byte	0x478
	.ascii	"neoZ80ClearNmi\000"
	.4byte	0x487
	.ascii	"neoZ80Nmi\000"
	.4byte	0x499
	.ascii	"neoZ80ClearIrq\000"
	.4byte	0x4ab
	.ascii	"neoZ80Irq\000"
	.4byte	0x4bd
	.ascii	"neoZ80Execute\000"
	.4byte	0x4ea
	.ascii	"neoZ80Reset\000"
	.4byte	0x51f
	.ascii	"neoZ80Init\000"
	.4byte	0x533
	.ascii	"neoZ80Out\000"
	.4byte	0x567
	.ascii	"neoZ80In\000"
	.4byte	0x5f6
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
	.section	.debug_str,"MS",%progbits,1
.LASF49:
	.ascii	"_TNeoContext7\000"
.LASF66:
	.ascii	"cycles\000"
.LASF69:
	.ascii	"neoZ80Out\000"
.LASF63:
	.ascii	"neoZ80ClearIrq\000"
.LASF37:
	.ascii	"z80irqvector\000"
.LASF51:
	.ascii	"z80Ram\000"
.LASF33:
	.ascii	"Z80_IRQ\000"
.LASF71:
	.ascii	"g_audioProgramSize\000"
.LASF45:
	.ascii	"z80_rebaseSP\000"
.LASF47:
	.ascii	"TDrZ80Context\000"
.LASF13:
	.ascii	"uint32_t\000"
.LASF35:
	.ascii	"Z80IM\000"
.LASF39:
	.ascii	"z80_write8\000"
.LASF14:
	.ascii	"float\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF41:
	.ascii	"z80_in\000"
.LASF28:
	.ascii	"Z80A2\000"
.LASF59:
	.ascii	"addr\000"
.LASF43:
	.ascii	"z80_read8\000"
.LASF55:
	.ascii	"offset\000"
.LASF19:
	.ascii	"Z80BC\000"
.LASF42:
	.ascii	"z80_out\000"
.LASF57:
	.ascii	"bank\000"
.LASF31:
	.ascii	"Z80DE2\000"
.LASF44:
	.ascii	"z80_read16\000"
.LASF6:
	.ascii	"char\000"
.LASF36:
	.ascii	"spare\000"
.LASF10:
	.ascii	"uint8_t\000"
.LASF64:
	.ascii	"neoZ80Irq\000"
.LASF22:
	.ascii	"Z80SP\000"
.LASF48:
	.ascii	"DrZ80\000"
.LASF1:
	.ascii	"long long int\000"
.LASF25:
	.ascii	"Z80IX\000"
.LASF26:
	.ascii	"Z80IY\000"
.LASF67:
	.ascii	"neoZ80Reset\000"
.LASF16:
	.ascii	"Z80PC\000"
.LASF29:
	.ascii	"Z80F2\000"
.LASF58:
	.ascii	"mask\000"
.LASF78:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm7\\\\buil"
	.ascii	"d\000"
.LASF23:
	.ascii	"Z80PC_BASE\000"
.LASF24:
	.ascii	"Z80SP_BASE\000"
.LASF62:
	.ascii	"neoZ80Nmi\000"
.LASF11:
	.ascii	"uint16_t\000"
.LASF75:
	.ascii	"g_neo7\000"
.LASF54:
	.ascii	"neoZ80RebaseSP\000"
.LASF53:
	.ascii	"neoZ80RebasePC\000"
.LASF74:
	.ascii	"g_audioCommand\000"
.LASF5:
	.ascii	"short int\000"
.LASF60:
	.ascii	"pSrc\000"
.LASF0:
	.ascii	"long int\000"
.LASF70:
	.ascii	"neoZ80In\000"
.LASF21:
	.ascii	"Z80HL\000"
.LASF2:
	.ascii	"unsigned int\000"
.LASF38:
	.ascii	"z80_irq_callback\000"
.LASF32:
	.ascii	"Z80HL2\000"
.LASF73:
	.ascii	"g_z80Rom\000"
.LASF4:
	.ascii	"long unsigned int\000"
.LASF34:
	.ascii	"Z80IF\000"
.LASF50:
	.ascii	"z80MemTable\000"
.LASF30:
	.ascii	"Z80BC2\000"
.LASF76:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF20:
	.ascii	"Z80DE\000"
.LASF56:
	.ascii	"neoZ80Bank\000"
.LASF65:
	.ascii	"neoZ80Execute\000"
.LASF61:
	.ascii	"neoZ80ClearNmi\000"
.LASF72:
	.ascii	"g_pAudioProgram\000"
.LASF40:
	.ascii	"z80_write16\000"
.LASF52:
	.ascii	"TNeoContext7\000"
.LASF9:
	.ascii	"signed char\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF18:
	.ascii	"Z80F\000"
.LASF17:
	.ascii	"Z80A\000"
.LASF27:
	.ascii	"Z80I\000"
.LASF77:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm7/source/NeoCpuZ80.c\000"
.LASF15:
	.ascii	"double\000"
.LASF12:
	.ascii	"int32_t\000"
.LASF68:
	.ascii	"neoZ80Init\000"
.LASF46:
	.ascii	"z80_rebasePC\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
