	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"NeoCpu.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.global	cpuNullWrite8
	.code	16
	.thumb_func
	.type	cpuNullWrite8, %function
cpuNullWrite8:
.LFB166:
	.file 1 "C:/Users/GRX/NeoDS/arm9/source/NeoCpu.c"
	.loc 1 10 0
.LVL0:
	.loc 1 10 0
	@ sp needed for prologue
	bx	lr
.LFE166:
	.size	cpuNullWrite8, .-cpuNullWrite8
	.align	2
	.global	cpuNullWrite16
	.code	16
	.thumb_func
	.type	cpuNullWrite16, %function
cpuNullWrite16:
.LFB167:
	.loc 1 11 0
.LVL1:
	.loc 1 11 0
	@ sp needed for prologue
	bx	lr
.LFE167:
	.size	cpuNullWrite16, .-cpuNullWrite16
	.align	2
	.global	cpuNullWrite32
	.code	16
	.thumb_func
	.type	cpuNullWrite32, %function
cpuNullWrite32:
.LFB168:
	.loc 1 12 0
.LVL2:
	.loc 1 12 0
	@ sp needed for prologue
	bx	lr
.LFE168:
	.size	cpuNullWrite32, .-cpuNullWrite32
	.align	2
	.global	cpuUnmapped8
	.code	16
	.thumb_func
	.type	cpuUnmapped8, %function
cpuUnmapped8:
.LFB169:
	.loc 1 14 0
	.loc 1 14 0
	mov	r0, #243
	@ sp needed for prologue
	bx	lr
.LFE169:
	.size	cpuUnmapped8, .-cpuUnmapped8
	.align	2
	.global	cpuUnmapped16
	.code	16
	.thumb_func
	.type	cpuUnmapped16, %function
cpuUnmapped16:
.LFB170:
	.loc 1 15 0
	.loc 1 15 0
	ldr	r0, .L11
	@ sp needed for prologue
	bx	lr
.L12:
	.align	2
.L11:
	.word	65343
.LFE170:
	.size	cpuUnmapped16, .-cpuUnmapped16
	.align	2
	.global	cpuUnmapped32
	.code	16
	.thumb_func
	.type	cpuUnmapped32, %function
cpuUnmapped32:
.LFB171:
	.loc 1 16 0
	.loc 1 16 0
	mov	r0, #193
	neg	r0, r0
	@ sp needed for prologue
	bx	lr
.LFE171:
	.size	cpuUnmapped32, .-cpuUnmapped32
	.align	2
	.global	neoCpuInitMemoryTable
	.code	16
	.thumb_func
	.type	neoCpuInitMemoryTable, %function
neoCpuInitMemoryTable:
.LFB173:
	.loc 1 80 0
	push	{r4, r5, r6, lr}
.LCFI0:
	.loc 1 84 0
	mov	r0, #128
	lsl	r0, r0, #3
	add	r1, r7, r0
	ldr	r5, .L30
	mov	r3, r7
	mov	r2, r1
	mov	r0, #0
.LVL3:
.L16:
	.loc 1 85 0
	mov	r4, #128
	lsl	r4, r4, #3
	add	r6, r2, r4
	ldr	r4, .L30+4
	.loc 1 83 0
	add	r0, r0, #1
.LVL4:
	.loc 1 85 0
	str	r4, [r6]
	.loc 1 86 0
	mov	r4, #128
	lsl	r4, r4, #4
	add	r6, r2, r4
	ldr	r4, .L30+8
	.loc 1 84 0
	str	r5, [r2]
	.loc 1 86 0
	str	r4, [r6]
	.loc 1 87 0
	mov	r4, #192
	lsl	r4, r4, #4
	add	r6, r2, r4
	ldr	r4, .L30+12
	str	r4, [r6]
	.loc 1 88 0
	mov	r4, #128
	lsl	r4, r4, #5
	add	r6, r2, r4
	ldr	r4, .L30+16
	str	r4, [r6]
	.loc 1 89 0
	mov	r4, #160
	lsl	r4, r4, #5
	add	r6, r2, r4
	ldr	r4, .L30+20
	str	r4, [r6]
	.loc 1 90 0
	mov	r4, #192
	lsl	r4, r4, #5
	add	r6, r2, r4
	ldr	r4, .L30+24
	.loc 1 83 0
	add	r2, r2, #4
	.loc 1 90 0
	str	r4, [r6]
	.loc 1 83 0
	mov	r6, #128
	lsl	r6, r6, #1
	cmp	r0, r6
	bne	.L16
	.loc 1 94 0
	ldr	r6, .L30+28
	.loc 1 95 0
	ldr	r5, .L30+32
	.loc 1 96 0
	ldr	r4, .L30+36
	.loc 1 83 0
	mov	r0, #0
.LVL5:
	.loc 1 97 0
	mov	ip, r3
.L17:
	.loc 1 95 0
	mov	r2, #128
	lsl	r2, r2, #3
	add	r3, r1, r2
	.loc 1 96 0
	mov	r2, #128
	lsl	r2, r2, #4
	.loc 1 95 0
	str	r5, [r3]
	.loc 1 96 0
	add	r3, r1, r2
	.loc 1 97 0
	mov	r2, #192
	lsl	r2, r2, #5
	.loc 1 96 0
	str	r4, [r3]
	.loc 1 97 0
	add	r3, r1, r2
	ldr	r2, .L30+40
	.loc 1 93 0
	add	r0, r0, #1
.LVL6:
	.loc 1 94 0
	str	r6, [r1]
	.loc 1 97 0
	str	r2, [r3]
	.loc 1 93 0
	add	r1, r1, #4
	cmp	r0, #16
	bne	.L17
	mov	r4, #136
	lsl	r4, r4, #3
	mov	r3, ip
	add	r2, r3, r4
	.loc 1 101 0
	ldr	r5, .L30+44
	.loc 1 102 0
	ldr	r4, .L30+48
	.loc 1 103 0
	ldr	r1, .L30+52
.L18:
	.loc 1 102 0
	mov	r6, #128
	lsl	r6, r6, #3
	add	r3, r2, r6
	.loc 1 103 0
	mov	r6, #128
	lsl	r6, r6, #4
	.loc 1 102 0
	str	r4, [r3]
	.loc 1 103 0
	add	r3, r2, r6
	.loc 1 104 0
	mov	r6, #192
	lsl	r6, r6, #4
	.loc 1 103 0
	str	r1, [r3]
	.loc 1 104 0
	add	r3, r2, r6
	ldr	r6, .L30+56
	.loc 1 100 0
	add	r0, r0, #1
.LVL7:
	.loc 1 104 0
	str	r6, [r3]
	.loc 1 105 0
	mov	r6, #128
	lsl	r6, r6, #5
	add	r3, r2, r6
	ldr	r6, .L30+60
	.loc 1 101 0
	str	r5, [r2]
	.loc 1 105 0
	str	r6, [r3]
	.loc 1 106 0
	mov	r6, #160
	lsl	r6, r6, #5
	add	r3, r2, r6
	ldr	r6, .L30+64
	str	r6, [r3]
	.loc 1 107 0
	mov	r3, #192
	lsl	r3, r3, #5
	add	r6, r2, r3
	ldr	r3, .L30+68
	.loc 1 100 0
	add	r2, r2, #4
	.loc 1 107 0
	str	r3, [r6]
	.loc 1 100 0
	cmp	r0, #32
	bne	.L18
	.loc 1 110 0
	ldr	r2, .L30+72
	ldr	r1, .L30+76
	mov	r3, ip
	str	r2, [r3, r1]
	.loc 1 111 0
	ldr	r1, .L30+80
	.loc 1 120 0
	ldr	r4, .L30+84
	.loc 1 111 0
	str	r2, [r3, r1]
	.loc 1 114 0
	ldr	r1, .L30+88
	mov	r2, #140
	lsl	r2, r2, #4
	str	r1, [r3, r2]
	.loc 1 115 0
	ldr	r1, .L30+92
	mov	r2, #141
	lsl	r2, r2, #4
	str	r1, [r3, r2]
	.loc 1 116 0
	ldr	r1, .L30+96
	ldr	r2, .L30+100
	.loc 1 121 0
	ldr	r0, .L30+104
.LVL8:
	.loc 1 116 0
	str	r1, [r3, r2]
	.loc 1 117 0
	ldr	r1, .L30+108
	mov	r2, #142
	lsl	r2, r2, #4
	str	r1, [r3, r2]
	.loc 1 120 0
	mov	r2, #158
	lsl	r2, r2, #3
	str	r4, [r3, r2]
	.loc 1 121 0
	mov	r2, #143
	lsl	r2, r2, #4
	str	r0, [r3, r2]
	.loc 1 122 0
	ldr	r1, .L30+112
	mov	r2, #207
	lsl	r2, r2, #4
	str	r1, [r3, r2]
	.loc 1 120 0
	ldr	r2, .L30+116
	str	r4, [r3, r2]
	.loc 1 121 0
	ldr	r2, .L30+120
	.loc 1 147 0
	ldr	r4, .L30+124
	.loc 1 121 0
	str	r0, [r3, r2]
	.loc 1 122 0
	ldr	r2, .L30+128
	.loc 1 127 0
	ldr	r0, .L30+132
	.loc 1 122 0
	str	r1, [r3, r2]
	.loc 1 127 0
	mov	r2, #134
	lsl	r2, r2, #5
	str	r0, [r3, r2]
	.loc 1 128 0
	ldr	r1, .L30+136
	mov	r2, #166
	lsl	r2, r2, #5
	str	r1, [r3, r2]
	.loc 1 127 0
	ldr	r2, .L30+140
	str	r0, [r3, r2]
	.loc 1 128 0
	ldr	r2, .L30+144
	.loc 1 133 0
	ldr	r0, .L30+148
	.loc 1 128 0
	str	r1, [r3, r2]
	.loc 1 132 0
	ldr	r1, .L30+152
	ldr	r2, .L30+156
	str	r1, [r3, r2]
	.loc 1 133 0
	ldr	r2, .L30+160
	str	r2, [r3, r0]
	.loc 1 132 0
	ldr	r0, .L30+164
	str	r1, [r3, r0]
	.loc 1 133 0
	ldr	r1, .L30+168
	str	r2, [r3, r1]
	.loc 1 136 0
	ldr	r1, .L30+172
	mov	r2, #135
	lsl	r2, r2, #5
	str	r1, [r3, r2]
	.loc 1 137 0
	mov	r2, #167
	lsl	r2, r2, #5
	str	r1, [r3, r2]
	.loc 1 140 0
	ldr	r2, .L30+176
	ldr	r1, .L30+180
	.loc 1 145 0
	ldr	r0, .L30+184
	.loc 1 140 0
	str	r2, [r3, r1]
	.loc 1 141 0
	ldr	r1, .L30+188
	.loc 1 154 0
	ldr	r6, .L30+192
	.loc 1 141 0
	str	r2, [r3, r1]
	.loc 1 140 0
	ldr	r1, .L30+196
	.loc 1 152 0
	ldr	r5, .L30+200
	.loc 1 140 0
	str	r2, [r3, r1]
	.loc 1 141 0
	ldr	r1, .L30+204
	.loc 1 154 0
	mov	ip, r6
	.loc 1 141 0
	str	r2, [r3, r1]
	.loc 1 145 0
	ldr	r2, .L30+208
	.loc 1 146 0
	ldr	r1, .L30+212
	.loc 1 145 0
	str	r0, [r3, r2]
	.loc 1 146 0
	ldr	r2, .L30+216
	str	r1, [r3, r2]
	.loc 1 147 0
	ldr	r2, .L30+220
	str	r2, [r3, r4]
	.loc 1 145 0
	ldr	r4, .L30+224
	str	r0, [r3, r4]
	.loc 1 146 0
	ldr	r0, .L30+228
	.loc 1 147 0
	mov	r4, #144
	.loc 1 146 0
	str	r1, [r3, r0]
	.loc 1 147 0
	ldr	r1, .L30+232
	lsl	r4, r4, #4
	str	r2, [r3, r1]
	add	r2, r3, r4
	.loc 1 153 0
	ldr	r4, .L30+236
	.loc 1 147 0
	mov	r1, #64
.LVL9:
.L19:
	.loc 1 153 0
	mov	r0, #128
	lsl	r0, r0, #4
	add	r6, r2, r0
	.loc 1 154 0
	mov	r0, #192
	lsl	r0, r0, #4
	.loc 1 153 0
	str	r4, [r6]
	.loc 1 151 0
	add	r1, r1, #1
.LVL10:
	.loc 1 154 0
	add	r6, r2, r0
	mov	r0, ip
	.loc 1 152 0
	str	r5, [r2]
	.loc 1 154 0
	str	r0, [r6]
	.loc 1 151 0
	add	r2, r2, #4
	cmp	r1, #112
	bne	.L19
	.loc 1 158 0
	ldr	r1, .L30+240
.LVL11:
	mov	r2, #160
	lsl	r2, r2, #4
	str	r1, [r3, r2]
	.loc 1 159 0
	ldr	r1, .L30+244
	mov	r2, #144
	lsl	r2, r2, #5
	str	r1, [r3, r2]
	.loc 1 160 0
	ldr	r1, .L30+248
	mov	r2, #176
	lsl	r2, r2, #5
	str	r1, [r3, r2]
	mov	r2, #224
	lsl	r2, r2, #3
	.loc 1 164 0
	ldr	r6, .L30+252
	.loc 1 165 0
	ldr	r5, .L30+256
	.loc 1 166 0
	ldr	r4, .L30+260
	.loc 1 160 0
	add	r1, r3, r2
	.loc 1 167 0
	mov	ip, r3
	.loc 1 160 0
	mov	r2, #192
.LVL12:
.L20:
	.loc 1 165 0
	mov	r0, #128
	lsl	r0, r0, #3
	add	r3, r1, r0
	.loc 1 166 0
	mov	r0, #128
	lsl	r0, r0, #4
	.loc 1 165 0
	str	r5, [r3]
	.loc 1 166 0
	add	r3, r1, r0
	.loc 1 167 0
	mov	r0, #192
	lsl	r0, r0, #5
	.loc 1 166 0
	str	r4, [r3]
	.loc 1 167 0
	add	r3, r1, r0
	ldr	r0, .L30+264
	.loc 1 163 0
	add	r2, r2, #1
.LVL13:
	.loc 1 164 0
	str	r6, [r1]
	.loc 1 167 0
	str	r0, [r3]
	.loc 1 163 0
	add	r1, r1, #4
	cmp	r2, #208
	bne	.L20
	mov	r1, #232
	mov	r3, ip
	lsl	r1, r1, #3
	.loc 1 172 0
	ldr	r5, .L30+268
	.loc 1 173 0
	ldr	r4, .L30+272
	.loc 1 174 0
	ldr	r0, .L30+276
	.loc 1 163 0
	add	r3, r3, r1
.L21:
	.loc 1 173 0
	mov	r1, #128
	lsl	r1, r1, #3
	add	r6, r3, r1
	.loc 1 174 0
	mov	r1, #128
	lsl	r1, r1, #4
	.loc 1 173 0
	str	r4, [r6]
	.loc 1 174 0
	add	r6, r3, r1
	.loc 1 175 0
	mov	r1, #192
	lsl	r1, r1, #4
	.loc 1 174 0
	str	r0, [r6]
	.loc 1 175 0
	add	r6, r3, r1
	ldr	r1, .L30+280
	.loc 1 171 0
	add	r2, r2, #1
.LVL14:
	.loc 1 175 0
	str	r1, [r6]
	.loc 1 176 0
	mov	r1, #128
	lsl	r1, r1, #5
	add	r6, r3, r1
	ldr	r1, .L30+284
	.loc 1 172 0
	str	r5, [r3]
	.loc 1 176 0
	str	r1, [r6]
	.loc 1 171 0
	add	r3, r3, #4
	cmp	r2, #224
	bne	.L21
	.loc 1 179 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L31:
	.align	2
.L30:
	.word	neoDefaultRead8
	.word	cpuUnmapped16
	.word	neoDefaultRead32
	.word	cpuNullWrite8
	.word	cpuNullWrite16
	.word	neoDefaultWrite32
	.word	neoInvalidPc
	.word	neoReadRom8
	.word	neoReadRom16
	.word	neoReadRom32
	.word	neoRomPc
	.word	neoReadRam8
	.word	neoReadRam16
	.word	neoReadRam32
	.word	neoWriteRam8
	.word	neoWriteRam16
	.word	neoWriteRam32
	.word	neoRamPc
	.word	neoWriteRomBank
	.word	4284
	.word	5308
	.word	neoReadVideo8
	.word	neoReadCtrl116
	.word	neoReadCtrl216
	.word	neoReadCoin16
	.word	2248
	.word	neoReadVideo16
	.word	neoReadCtrl316
	.word	neoReadVideo32
	.word	1268
	.word	2292
	.word	6384
	.word	3316
	.word	neoWriteWatchdog8
	.word	neoWriteWatchdog16
	.word	4292
	.word	5316
	.word	5320
	.word	neoWriteAudioCommand8
	.word	4296
	.word	neoWriteAudioCommand16
	.word	4300
	.word	5324
	.word	neoWrite4990a16
	.word	neoWriteSystemLatch16
	.word	4328
	.word	neoWriteVideo8
	.word	5352
	.word	neoVideoWritePal16
	.word	4332
	.word	neoVideoReadPal16
	.word	5356
	.word	4336
	.word	neoWriteVideo16
	.word	5360
	.word	neoWriteVideo32
	.word	4340
	.word	5364
	.word	6388
	.word	neoVideoWritePal8
	.word	neoReadCard16
	.word	neoWriteCard8
	.word	neoWriteCard16
	.word	neoReadBios8
	.word	neoReadBios16
	.word	neoReadBios32
	.word	neoBiosPc
	.word	neoReadSram8
	.word	neoReadSram16
	.word	neoReadSram32
	.word	neoWriteSram8
	.word	neoWriteSram16
.LFE173:
	.size	neoCpuInitMemoryTable, .-neoCpuInitMemoryTable
	.align	2
	.global	neoDebugCpuCheckPc
	.code	16
	.thumb_func
	.type	neoDebugCpuCheckPc, %function
neoDebugCpuCheckPc:
.LFB174:
	.loc 1 198 0
	push	{r4, lr}
.LCFI1:
.LVL15:
	.loc 1 206 0
	ldr	r2, [r7, #96]
	.loc 1 221 0
	mov	r1, #224
	.loc 1 206 0
	sub	r0, r0, r2
.LVL16:
	.loc 1 221 0
	lsl	r2, r0, #8
	lsl	r1, r1, #3
	lsr	r2, r2, #24
	add	r2, r2, r1
	lsl	r2, r2, #2
	ldr	r3, [r2, r7]
	blx	r3
.LVL17:
	.loc 1 224 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE174:
	.size	neoDebugCpuCheckPc, .-neoDebugCpuCheckPc
	.align	2
	.global	cpuReset
	.code	16
	.thumb_func
	.type	cpuReset, %function
cpuReset:
.LFB176:
	.loc 1 260 0
	push	{r4, r5, r6, lr}
.LCFI2:
	.loc 1 261 0
	mov	r3, r7
	mov	r2, #39
	add	r3, r3, #68
	strb	r2, [r3]
	.loc 1 262 0
	mov	r0, #0
	ldr	r3, [r7, #112]
	.loc 1 261 0
	mov	r4, r7
	.loc 1 262 0
	blx	r3
	.loc 1 263 0
	mov	r3, #0
	.loc 1 262 0
	str	r0, [r4, #60]
	.loc 1 263 0
	str	r3, [r7, #96]
	.loc 1 264 0
	mov	r0, #4
	ldr	r3, [r7, #112]
	ldr	r5, [r7, #100]
	.loc 1 263 0
	mov	r4, r7
	.loc 1 264 0
	blx	r3
	blx	r5
	.loc 1 270 0
	@ sp needed for prologue
	.loc 1 264 0
	str	r0, [r4, #64]
	.loc 1 270 0
	pop	{r4, r5, r6, pc}
.LFE176:
	.size	cpuReset, .-cpuReset
	.align	2
	.global	cpuDisassemble
	.code	16
	.thumb_func
	.type	cpuDisassemble, %function
cpuDisassemble:
.LFB177:
	.loc 1 273 0
.LVL18:
	.loc 1 279 0
	@ sp needed for prologue
	bx	lr
.LFE177:
	.size	cpuDisassemble, .-cpuDisassemble
	.align	2
	.global	cpuInterrupt
	.code	16
	.thumb_func
	.type	cpuInterrupt, %function
cpuInterrupt:
.LFB178:
	.loc 1 282 0
.LVL19:
	.loc 1 283 0
	mov	r3, r7
	add	r3, r3, #71
	strb	r0, [r3]
	.loc 1 284 0
	@ sp needed for prologue
	bx	lr
.LFE178:
	.size	cpuInterrupt, .-cpuInterrupt
	.align	2
	.global	cpuGetPC
	.code	16
	.thumb_func
	.type	cpuGetPC, %function
cpuGetPC:
.LFB179:
	.loc 1 289 0
	.loc 1 290 0
	ldr	r0, [r7, #64]
	ldr	r3, [r7, #96]
	.loc 1 291 0
	@ sp needed for prologue
	.loc 1 290 0
	sub	r0, r0, r3
	.loc 1 291 0
	bx	lr
.LFE179:
	.size	cpuGetPC, .-cpuGetPC
	.align	2
	.global	cpuExecute
	.code	16
	.thumb_func
	.type	cpuExecute, %function
cpuExecute:
.LFB180:
	.loc 1 294 0
	push	{r4, lr}
.LCFI3:
.LVL20:
	.loc 1 294 0
	mov	r4, r0
	.loc 1 336 0
	mov	r0, r7
.LVL21:
	str	r4, [r7, #92]
	.loc 1 337 0
	bl	CycloneRun
	ldr	r0, [r7, #92]
	.loc 1 342 0
	@ sp needed for prologue
	.loc 1 337 0
	sub	r0, r4, r0
.LVL22:
	.loc 1 342 0
	pop	{r4, pc}
.LFE180:
	.size	cpuExecute, .-cpuExecute
	.align	2
	.global	cpuInit
	.code	16
	.thumb_func
	.type	cpuInit, %function
cpuInit:
.LFB175:
	.loc 1 227 0
	push	{r4, lr}
.LCFI4:
	.loc 1 228 0
	bl	neoCpuInitMemoryTable
	.loc 1 230 0
	mov	r1, #0
	mov	r2, #176
	mov	r0, r7
	bl	memset
	.loc 1 245 0
	ldr	r4, .L46
	.loc 1 242 0
	ldr	r0, .L46+4
	.loc 1 245 0
	str	r4, [r7, #116]
	.loc 1 246 0
	ldr	r4, .L46+8
	.loc 1 232 0
	ldr	r2, .L46+12
	.loc 1 246 0
	str	r4, [r7, #120]
	.loc 1 247 0
	ldr	r4, .L46+16
	.loc 1 243 0
	ldr	r1, .L46+20
	.loc 1 247 0
	str	r4, [r7, #124]
	.loc 1 248 0
	add	r4, r7, #4
	.loc 1 232 0
	mov	r3, r7
	str	r2, [r7, #100]
	.loc 1 242 0
	str	r0, [r7, #104]
	.loc 1 244 0
	ldr	r2, .L46+24
	.loc 1 248 0
	str	r0, [r4, #124]
	.loc 1 249 0
	mov	r0, r7
	add	r0, r0, #8
	.loc 1 250 0
	add	r3, r3, #136
	.loc 1 243 0
	str	r1, [r7, #108]
	.loc 1 244 0
	str	r2, [r7, #112]
	.loc 1 249 0
	str	r1, [r0, #124]
	.loc 1 250 0
	str	r2, [r3]
	.loc 1 257 0
	@ sp needed for prologue
	pop	{r4, pc}
.L47:
	.align	2
.L46:
	.word	neoCpuWrite8
	.word	neoCpuRead8
	.word	neoCpuWrite16
	.word	neoCpuCheckPc
	.word	neoCpuWrite32
	.word	neoCpuRead16
	.word	neoCpuRead32
.LFE175:
	.size	cpuInit, .-cpuInit
	.align	2
	.code	16
	.thumb_func
	.type	neoInvalidPc, %function
neoInvalidPc:
.LFB172:
	.loc 1 74 0
	push	{r4, lr}
.LCFI5:
.LVL23:
	.loc 1 74 0
	mov	r3, r0
	.loc 1 75 0
	mov	r1, #75
	ldr	r0, .L50
.LVL24:
	ldr	r2, .L50+4
	bl	systemPanic_d
.LVL25:
	.loc 1 77 0
	@ sp needed for prologue
	mov	r0, #0
	pop	{r4, pc}
.L51:
	.align	2
.L50:
	.word	.LC59
	.word	.LC61
.LFE172:
	.size	neoInvalidPc, .-neoInvalidPc
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC59:
	.ascii	"C:/Users/GRX/NeoDS/arm9/source/NeoCpu.c\000"
.LC61:
	.ascii	"Invalid PC: %08X\000"
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
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.byte	0x4
	.4byte	.LCFI0-.LFB173
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
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.byte	0x4
	.4byte	.LCFI1-.LFB174
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
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
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.byte	0x4
	.4byte	.LCFI2-.LFB176
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
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.byte	0x4
	.4byte	.LCFI3-.LFB180
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.byte	0x4
	.4byte	.LCFI4-.LFB175
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.byte	0x4
	.4byte	.LCFI5-.LFB172
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE28:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST6:
	.4byte	.LFB173-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB174-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB176-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE176-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB180-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE180-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB175-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE175-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LFB172-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 5 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 6 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 7 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 8 "C:/Users/GRX/NeoDS/arm9/include/cyclone.h"
	.file 9 "C:/Users/GRX/NeoDS/arm9/include/NeoCpu.h"
	.file 10 "C:/Users/GRX/NeoDS/arm9/../common/source/NeoAudioStream.h"
	.file 11 "C:/Users/GRX/NeoDS/arm9/include/NeoSystem.h"
	.file 12 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.section	.debug_info
	.4byte	0xfbd
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF210
	.byte	0x1
	.4byte	.LASF211
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2a
	.4byte	0x33
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x35
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x36
	.4byte	0x57
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.4byte	0x69
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x50
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x48
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x3
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x3
	.byte	0x63
	.4byte	0x4c
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x64
	.4byte	0x70
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x3
	.byte	0x68
	.4byte	0x3a
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x3
	.byte	0x69
	.4byte	0x5e
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0x7d
	.4byte	0xf4
	.uleb128 0x7
	.4byte	.LASF15
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF16
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x7d
	.4byte	0xdf
	.uleb128 0x8
	.byte	0x4
	.4byte	0x105
	.uleb128 0x9
	.byte	0x1
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x8
	.byte	0x4
	.4byte	0x10a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF19
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x28
	.byte	0x4
	.2byte	0x18c
	.4byte	0x1cb
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x18d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x18e
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x18f
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x190
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x191
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x192
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x193
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x194
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x195
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x196
	.4byte	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x198
	.4byte	0x127
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x8
	.byte	0x5
	.byte	0x29
	.4byte	0x200
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x5
	.byte	0x2a
	.4byte	0x200
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x5
	.byte	0x2b
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11e
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x5
	.byte	0x2c
	.4byte	0x1d7
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.byte	0x9c
	.4byte	0x232
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x6
	.byte	0xa1
	.4byte	0x211
	.uleb128 0x11
	.4byte	.LASF40
	.2byte	0x2020
	.byte	0x6
	.2byte	0x11a
	.4byte	0x2c9
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x11b
	.4byte	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x11e
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x121
	.4byte	0x2c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x122
	.4byte	0x206
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x123
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x124
	.4byte	0x2da
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x125
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x126
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x201c
	.byte	0x0
	.uleb128 0x12
	.4byte	0x90
	.4byte	0x2da
	.uleb128 0x13
	.4byte	0x107
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x90
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x128
	.4byte	0x23d
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x59
	.4byte	0x319
	.uleb128 0x7
	.4byte	.LASF49
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF50
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF51
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF52
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x62
	.4byte	0x33a
	.uleb128 0x7
	.4byte	.LASF53
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF54
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF55
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF56
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x6a
	.4byte	0x35b
	.uleb128 0x7
	.4byte	.LASF57
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF58
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF59
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF60
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x72
	.4byte	0x370
	.uleb128 0x7
	.4byte	.LASF61
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF62
	.sleb128 1
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0xb0
	.byte	0x8
	.byte	0x15
	.4byte	0x506
	.uleb128 0x14
	.ascii	"d\000"
	.byte	0x8
	.byte	0x16
	.4byte	0x506
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.ascii	"a\000"
	.byte	0x8
	.byte	0x17
	.4byte	0x506
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.ascii	"pc\000"
	.byte	0x8
	.byte	0x18
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x14
	.ascii	"srh\000"
	.byte	0x8
	.byte	0x19
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0x8
	.byte	0x1a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x8
	.byte	0x1b
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x14
	.ascii	"irq\000"
	.byte	0x8
	.byte	0x1c
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x14
	.ascii	"osp\000"
	.byte	0x8
	.byte	0x1d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x14
	.ascii	"xc\000"
	.byte	0x8
	.byte	0x1e
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x8
	.byte	0x1f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.4byte	.LASF67
	.byte	0x8
	.byte	0x20
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x8
	.byte	0x21
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x8
	.byte	0x22
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x8
	.byte	0x23
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x8
	.byte	0x24
	.4byte	0x526
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x8
	.byte	0x25
	.4byte	0x526
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x8
	.byte	0x26
	.4byte	0x526
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x8
	.byte	0x27
	.4byte	0x526
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x8
	.byte	0x28
	.4byte	0x53d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x8
	.byte	0x29
	.4byte	0x554
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x8
	.byte	0x2a
	.4byte	0x56b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x8
	.byte	0x2b
	.4byte	0x526
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x8
	.byte	0x2c
	.4byte	0x526
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x8
	.byte	0x2d
	.4byte	0x526
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x8
	.byte	0x2e
	.4byte	0x581
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x8
	.byte	0x2f
	.4byte	0xff
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x8
	.byte	0x30
	.4byte	0x58d
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x8
	.byte	0x31
	.4byte	0x593
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0x12
	.4byte	0x7b
	.4byte	0x516
	.uleb128 0x15
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x16
	.byte	0x1
	.4byte	0x7b
	.4byte	0x526
	.uleb128 0x17
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x516
	.uleb128 0x18
	.byte	0x1
	.4byte	0x53d
	.uleb128 0x17
	.4byte	0x7b
	.uleb128 0x17
	.4byte	0x33
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x52c
	.uleb128 0x18
	.byte	0x1
	.4byte	0x554
	.uleb128 0x17
	.4byte	0x7b
	.uleb128 0x17
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x543
	.uleb128 0x18
	.byte	0x1
	.4byte	0x56b
	.uleb128 0x17
	.4byte	0x7b
	.uleb128 0x17
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x55a
	.uleb128 0x16
	.byte	0x1
	.4byte	0x69
	.4byte	0x581
	.uleb128 0x17
	.4byte	0x69
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x571
	.uleb128 0x19
	.byte	0x1
	.4byte	0x69
	.uleb128 0x8
	.byte	0x4
	.4byte	0x587
	.uleb128 0x12
	.4byte	0x7b
	.4byte	0x5a3
	.uleb128 0x15
	.4byte	0x107
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x9
	.byte	0x6
	.4byte	0x370
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x9
	.byte	0x8
	.4byte	0x5b9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5bf
	.uleb128 0x16
	.byte	0x1
	.4byte	0xa9
	.4byte	0x5cf
	.uleb128 0x17
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x9
	.byte	0x9
	.4byte	0x5da
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5e0
	.uleb128 0x16
	.byte	0x1
	.4byte	0xb3
	.4byte	0x5f0
	.uleb128 0x17
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x9
	.byte	0xa
	.4byte	0x5fb
	.uleb128 0x8
	.byte	0x4
	.4byte	0x601
	.uleb128 0x16
	.byte	0x1
	.4byte	0xbe
	.4byte	0x611
	.uleb128 0x17
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x9
	.byte	0xc
	.4byte	0x61c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x622
	.uleb128 0x18
	.byte	0x1
	.4byte	0x633
	.uleb128 0x17
	.4byte	0xbe
	.uleb128 0x17
	.4byte	0xa9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0x9
	.byte	0xd
	.4byte	0x63e
	.uleb128 0x8
	.byte	0x4
	.4byte	0x644
	.uleb128 0x18
	.byte	0x1
	.4byte	0x655
	.uleb128 0x17
	.4byte	0xbe
	.uleb128 0x17
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x9
	.byte	0xe
	.4byte	0x660
	.uleb128 0x8
	.byte	0x4
	.4byte	0x666
	.uleb128 0x18
	.byte	0x1
	.4byte	0x677
	.uleb128 0x17
	.4byte	0xbe
	.uleb128 0x17
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0x9
	.byte	0x10
	.4byte	0x5fb
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0xc
	.byte	0xa
	.byte	0x17
	.4byte	0x6c7
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0xa
	.byte	0x18
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.ascii	"end\000"
	.byte	0xa
	.byte	0x19
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.ascii	"acc\000"
	.byte	0xa
	.byte	0x1a
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0xa
	.byte	0x1b
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xa
	.byte	0x1c
	.4byte	0x682
	.uleb128 0xf
	.4byte	.LASF97
	.byte	0xc
	.byte	0xa
	.byte	0x1f
	.4byte	0x709
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0xa
	.byte	0x20
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0xa
	.byte	0x21
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0xa
	.byte	0x22
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0xa
	.byte	0x23
	.4byte	0x6d2
	.uleb128 0x1a
	.4byte	.LASF212
	.byte	0x1
	.byte	0xb
	.byte	0x99
	.4byte	0x75d
	.uleb128 0x7
	.4byte	.LASF102
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF103
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF104
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF105
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF106
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF107
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF108
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF109
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF110
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF111
	.sleb128 9
	.byte	0x0
	.uleb128 0x1b
	.2byte	0x248
	.byte	0xb
	.byte	0xc0
	.4byte	0xb4b
	.uleb128 0x14
	.ascii	"cpu\000"
	.byte	0xb
	.byte	0xc1
	.4byte	0x5a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0xb
	.byte	0xc4
	.4byte	0xb4b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0xb
	.byte	0xc7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0xb
	.byte	0xc8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0xb
	.byte	0xcb
	.4byte	0xb5b
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0xb
	.byte	0xcc
	.4byte	0x709
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0xb
	.byte	0xcd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0xb
	.byte	0xd0
	.4byte	0x2f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0xb
	.byte	0xd1
	.4byte	0x2f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x10
	.4byte	.LASF120
	.byte	0xb
	.byte	0xd2
	.4byte	0x2f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0xb
	.byte	0xd3
	.4byte	0x2f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x10
	.4byte	.LASF122
	.byte	0xb
	.byte	0xd4
	.4byte	0x2f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x10
	.4byte	.LASF123
	.byte	0xb
	.byte	0xd5
	.4byte	0x2f2
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x10
	.4byte	.LASF124
	.byte	0xb
	.byte	0xd6
	.4byte	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0xb
	.byte	0xd7
	.4byte	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0xb
	.byte	0xd8
	.4byte	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0xb
	.byte	0xda
	.4byte	0xb6b
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0xb
	.byte	0xdd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0xb
	.byte	0xde
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0xb
	.byte	0xdf
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0xb
	.byte	0xe0
	.4byte	0xb7c
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x10
	.4byte	.LASF132
	.byte	0xb
	.byte	0xe1
	.4byte	0xb7c
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0xb
	.byte	0xe2
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x10
	.4byte	.LASF134
	.byte	0xb
	.byte	0xe5
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x10
	.4byte	.LASF135
	.byte	0xb
	.byte	0xe6
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x10
	.4byte	.LASF136
	.byte	0xb
	.byte	0xe7
	.4byte	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x10
	.4byte	.LASF137
	.byte	0xb
	.byte	0xe8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x10
	.4byte	.LASF138
	.byte	0xb
	.byte	0xea
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x10
	.4byte	.LASF139
	.byte	0xb
	.byte	0xeb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x10
	.4byte	.LASF140
	.byte	0xb
	.byte	0xec
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x10
	.4byte	.LASF141
	.byte	0xb
	.byte	0xed
	.4byte	0xb87
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x10
	.4byte	.LASF142
	.byte	0xb
	.byte	0xee
	.4byte	0x2ec
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x10
	.4byte	.LASF143
	.byte	0xb
	.byte	0xf1
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x10
	.4byte	.LASF144
	.byte	0xb
	.byte	0xf2
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x10
	.4byte	.LASF145
	.byte	0xb
	.byte	0xf3
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x10
	.4byte	.LASF146
	.byte	0xb
	.byte	0xf4
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x10
	.4byte	.LASF147
	.byte	0xb
	.byte	0xf7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x10
	.4byte	.LASF148
	.byte	0xb
	.byte	0xf8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0xb
	.byte	0xf9
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x10
	.4byte	.LASF150
	.byte	0xb
	.byte	0xfa
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x10
	.4byte	.LASF151
	.byte	0xb
	.byte	0xfb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0xb
	.byte	0xfc
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x10
	.4byte	.LASF153
	.byte	0xb
	.byte	0xfd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xd
	.4byte	.LASF154
	.byte	0xb
	.2byte	0x102
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xd
	.4byte	.LASF155
	.byte	0xb
	.2byte	0x103
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xd
	.4byte	.LASF156
	.byte	0xb
	.2byte	0x106
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xd
	.4byte	.LASF157
	.byte	0xb
	.2byte	0x108
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xd
	.4byte	.LASF158
	.byte	0xb
	.2byte	0x109
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xd
	.4byte	.LASF159
	.byte	0xb
	.2byte	0x10a
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xd
	.4byte	.LASF160
	.byte	0xb
	.2byte	0x10b
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xd
	.4byte	.LASF161
	.byte	0xb
	.2byte	0x10d
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xd
	.4byte	.LASF162
	.byte	0xb
	.2byte	0x10e
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xd
	.4byte	.LASF163
	.byte	0xb
	.2byte	0x10f
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xd
	.4byte	.LASF164
	.byte	0xb
	.2byte	0x110
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xd
	.4byte	.LASF165
	.byte	0xb
	.2byte	0x111
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xd
	.4byte	.LASF166
	.byte	0xb
	.2byte	0x114
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xd
	.4byte	.LASF167
	.byte	0xb
	.2byte	0x115
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xd
	.4byte	.LASF168
	.byte	0xb
	.2byte	0x116
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xd
	.4byte	.LASF169
	.byte	0xb
	.2byte	0x117
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xd
	.4byte	.LASF170
	.byte	0xb
	.2byte	0x118
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xd
	.4byte	.LASF171
	.byte	0xb
	.2byte	0x11b
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xd
	.4byte	.LASF172
	.byte	0xb
	.2byte	0x11c
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xd
	.4byte	.LASF173
	.byte	0xb
	.2byte	0x11f
	.4byte	0xb97
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xd
	.4byte	.LASF174
	.byte	0xb
	.2byte	0x122
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xd
	.4byte	.LASF175
	.byte	0xb
	.2byte	0x123
	.4byte	0xba7
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0x12
	.4byte	0x11e
	.4byte	0xb5b
	.uleb128 0x15
	.4byte	0x107
	.byte	0x8
	.byte	0x0
	.uleb128 0x12
	.4byte	0x6c7
	.4byte	0xb6b
	.uleb128 0x15
	.4byte	0x107
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb71
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb77
	.uleb128 0x1c
	.4byte	0xa9
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb82
	.uleb128 0x1c
	.4byte	0xbe
	.uleb128 0x12
	.4byte	0xbe
	.4byte	0xb97
	.uleb128 0x15
	.4byte	0x107
	.byte	0xf
	.byte	0x0
	.uleb128 0x12
	.4byte	0xa9
	.4byte	0xba7
	.uleb128 0x15
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x12
	.4byte	0xa9
	.4byte	0xbb6
	.uleb128 0x1d
	.4byte	0x107
	.byte	0x0
	.uleb128 0x1e
	.2byte	0x400
	.byte	0xb
	.byte	0xbf
	.4byte	0xbd1
	.uleb128 0x1f
	.4byte	0x75d
	.uleb128 0x20
	.4byte	.LASF213
	.byte	0xb
	.2byte	0x125
	.4byte	0xbd1
	.byte	0x0
	.uleb128 0x12
	.4byte	0xbe
	.4byte	0xbe1
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF176
	.2byte	0x2000
	.byte	0xb
	.byte	0xbe
	.4byte	0xc67
	.uleb128 0x22
	.4byte	0xbb6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF177
	.byte	0xb
	.2byte	0x128
	.4byte	0xc67
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xd
	.4byte	.LASF178
	.byte	0xb
	.2byte	0x129
	.4byte	0xc77
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xd
	.4byte	.LASF179
	.byte	0xb
	.2byte	0x12a
	.4byte	0xc87
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xd
	.4byte	.LASF180
	.byte	0xb
	.2byte	0x12b
	.4byte	0xc97
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xd
	.4byte	.LASF181
	.byte	0xb
	.2byte	0x12c
	.4byte	0xca7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xd
	.4byte	.LASF182
	.byte	0xb
	.2byte	0x12d
	.4byte	0xcb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xd
	.4byte	.LASF183
	.byte	0xb
	.2byte	0x12e
	.4byte	0xcc7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0x12
	.4byte	0x5ae
	.4byte	0xc77
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x5cf
	.4byte	0xc87
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x5f0
	.4byte	0xc97
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x611
	.4byte	0xca7
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x633
	.4byte	0xcb7
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x655
	.4byte	0xcc7
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	0x677
	.4byte	0xcd7
	.uleb128 0x15
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF184
	.byte	0xb
	.2byte	0x12f
	.4byte	0xbe1
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF185
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.4byte	.LFB166
	.4byte	.LFE166
	.byte	0x1
	.byte	0x5d
	.4byte	0xd11
	.uleb128 0x24
	.ascii	"a\000"
	.byte	0x1
	.byte	0xa
	.4byte	0xbe
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.ascii	"d\000"
	.byte	0x1
	.byte	0xa
	.4byte	0xa9
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF186
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.4byte	.LFB167
	.4byte	.LFE167
	.byte	0x1
	.byte	0x5d
	.4byte	0xd3f
	.uleb128 0x24
	.ascii	"a\000"
	.byte	0x1
	.byte	0xb
	.4byte	0xbe
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.ascii	"d\000"
	.byte	0x1
	.byte	0xb
	.4byte	0xb3
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF187
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.4byte	.LFB168
	.4byte	.LFE168
	.byte	0x1
	.byte	0x5d
	.4byte	0xd6d
	.uleb128 0x24
	.ascii	"a\000"
	.byte	0x1
	.byte	0xc
	.4byte	0xbe
	.byte	0x1
	.byte	0x50
	.uleb128 0x24
	.ascii	"d\000"
	.byte	0x1
	.byte	0xc
	.4byte	0xbe
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF188
	.byte	0x1
	.byte	0xe
	.4byte	0xa9
	.4byte	.LFB169
	.4byte	.LFE169
	.byte	0x1
	.byte	0x5d
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF189
	.byte	0x1
	.byte	0xf
	.4byte	0xb3
	.4byte	.LFB170
	.4byte	.LFE170
	.byte	0x1
	.byte	0x5d
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF190
	.byte	0x1
	.byte	0x10
	.4byte	0xbe
	.4byte	.LFB171
	.4byte	.LFE171
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF214
	.byte	0x1
	.byte	0x4f
	.4byte	.LFB173
	.4byte	.LFE173
	.4byte	.LLST6
	.4byte	0xdd5
	.uleb128 0x27
	.ascii	"i\000"
	.byte	0x1
	.byte	0x51
	.4byte	0xbe
	.4byte	.LLST7
	.byte	0x0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF196
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.4byte	0xbe
	.4byte	.LFB174
	.4byte	.LFE174
	.4byte	.LLST8
	.4byte	0xe28
	.uleb128 0x29
	.ascii	"pc\000"
	.byte	0x1
	.byte	0xc5
	.4byte	0xbe
	.4byte	.LLST9
	.uleb128 0x2a
	.4byte	.LASF191
	.byte	0x1
	.byte	0xce
	.4byte	0xb82
	.4byte	.LLST10
	.uleb128 0x2b
	.4byte	.LASF198
	.byte	0x1
	.byte	0xcf
	.4byte	0xb82
	.uleb128 0x2c
	.ascii	"ret\000"
	.byte	0x1
	.byte	0xdd
	.4byte	0xb82
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x103
	.4byte	.LFB176
	.4byte	.LFE176
	.4byte	.LLST11
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x110
	.byte	0x1
	.4byte	.LFB177
	.4byte	.LFE177
	.byte	0x1
	.byte	0x5d
	.4byte	0xe64
	.uleb128 0x2f
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x110
	.4byte	0x111
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x119
	.byte	0x1
	.4byte	.LFB178
	.4byte	.LFE178
	.byte	0x1
	.byte	0x5d
	.4byte	0xe8b
	.uleb128 0x30
	.ascii	"irq\000"
	.byte	0x1
	.2byte	0x119
	.4byte	0xbe
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x120
	.4byte	0xbe
	.4byte	.LFB179
	.4byte	.LFE179
	.byte	0x1
	.byte	0x5d
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x125
	.byte	0x1
	.4byte	0xbe
	.4byte	.LFB180
	.4byte	.LFE180
	.4byte	.LLST15
	.4byte	0xedd
	.uleb128 0x33
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x125
	.4byte	0xd4
	.4byte	.LLST16
	.uleb128 0x34
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x152
	.4byte	0xb82
	.byte	0x0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF201
	.byte	0x1
	.byte	0xe2
	.4byte	.LFB175
	.4byte	.LFE175
	.4byte	.LLST17
	.uleb128 0x36
	.4byte	.LASF215
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.4byte	0xbe
	.4byte	.LFB172
	.4byte	.LFE172
	.4byte	.LLST18
	.4byte	0xf1c
	.uleb128 0x29
	.ascii	"pc\000"
	.byte	0x1
	.byte	0x49
	.4byte	0xbe
	.4byte	.LLST19
	.byte	0x0
	.uleb128 0x34
	.4byte	.LASF202
	.byte	0x6
	.2byte	0x12e
	.4byte	0xf28
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2e0
	.uleb128 0x37
	.4byte	.LASF203
	.byte	0xc
	.byte	0x56
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF204
	.byte	0xc
	.byte	0x57
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0xf58
	.4byte	0xf58
	.uleb128 0x15
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf5e
	.uleb128 0x38
	.4byte	0x57
	.uleb128 0x39
	.4byte	.LASF205
	.byte	0x4
	.2byte	0x19c
	.4byte	0xf48
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0x1cb
	.4byte	0xf81
	.uleb128 0x15
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x39
	.4byte	.LASF206
	.byte	0x4
	.2byte	0x19f
	.4byte	0xf71
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.4byte	.LASF207
	.byte	0x6
	.2byte	0x12b
	.4byte	0x2e0
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.4byte	.LASF208
	.byte	0xb
	.2byte	0x149
	.4byte	0xfac
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0xcd7
	.uleb128 0x39
	.4byte	.LASF209
	.byte	0xb
	.2byte	0x14d
	.4byte	0xcd7
	.byte	0x1
	.byte	0x1
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x17
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
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
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
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x10f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xfc1
	.4byte	0xce3
	.ascii	"cpuNullWrite8\000"
	.4byte	0xd11
	.ascii	"cpuNullWrite16\000"
	.4byte	0xd3f
	.ascii	"cpuNullWrite32\000"
	.4byte	0xd6d
	.ascii	"cpuUnmapped8\000"
	.4byte	0xd83
	.ascii	"cpuUnmapped16\000"
	.4byte	0xd99
	.ascii	"cpuUnmapped32\000"
	.4byte	0xdaf
	.ascii	"neoCpuInitMemoryTable\000"
	.4byte	0xdd5
	.ascii	"neoDebugCpuCheckPc\000"
	.4byte	0xe28
	.ascii	"cpuReset\000"
	.4byte	0xe3d
	.ascii	"cpuDisassemble\000"
	.4byte	0xe64
	.ascii	"cpuInterrupt\000"
	.4byte	0xe8b
	.ascii	"cpuGetPC\000"
	.4byte	0xea2
	.ascii	"cpuExecute\000"
	.4byte	0xedd
	.ascii	"cpuInit\000"
	.4byte	0xf9d
	.ascii	"g_neo\000"
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
.LASF166:
	.ascii	"irqVectorLatch\000"
.LASF96:
	.ascii	"TNeoADPCMStream\000"
.LASF82:
	.ascii	"ResetCallback\000"
.LASF16:
	.ascii	"true\000"
.LASF72:
	.ascii	"read8\000"
.LASF50:
	.ascii	"OBJMODE_BLENDED\000"
.LASF17:
	.ascii	"bool\000"
.LASF169:
	.ascii	"sramProtectLatch\000"
.LASF203:
	.ascii	"mosaicShadow\000"
.LASF125:
	.ascii	"pSpriteRam\000"
.LASF170:
	.ascii	"paletteRamLatch\000"
.LASF36:
	.ascii	"GL_POSITION\000"
.LASF111:
	.ascii	"NEOROM_COUNT\000"
.LASF42:
	.ascii	"clearColor\000"
.LASF155:
	.ascii	"sramProtection\000"
.LASF172:
	.ascii	"debug\000"
.LASF119:
	.ascii	"pRom1\000"
.LASF29:
	.ascii	"type\000"
.LASF122:
	.ascii	"pSram\000"
.LASF47:
	.ascii	"nextPBlock\000"
.LASF162:
	.ascii	"ctrl2Reg\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF21:
	.ascii	"angle\000"
.LASF187:
	.ascii	"cpuNullWrite32\000"
.LASF33:
	.ascii	"data\000"
.LASF148:
	.ascii	"cpuClocksPerScanline\000"
.LASF146:
	.ascii	"tileScaleY\000"
.LASF106:
	.ascii	"NEOROM_AUDODATA\000"
.LASF210:
	.ascii	"GNU C 4.4.3\000"
.LASF134:
	.ascii	"scanline\000"
.LASF194:
	.ascii	"cpuInterrupt\000"
.LASF100:
	.ascii	"frequency\000"
.LASF123:
	.ascii	"pCard\000"
.LASF154:
	.ascii	"sramProtectCount\000"
.LASF80:
	.ascii	"fetch32\000"
.LASF25:
	.ascii	"scaleY\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF101:
	.ascii	"TNeoADPCMBStream\000"
.LASF10:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF73:
	.ascii	"read16\000"
.LASF105:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF52:
	.ascii	"OBJMODE_BITMAP\000"
.LASF177:
	.ascii	"cpuRead8Table\000"
.LASF128:
	.ascii	"smaAddr0\000"
.LASF129:
	.ascii	"smaAddr1\000"
.LASF85:
	.ascii	"TCycloneContext\000"
.LASF171:
	.ascii	"active\000"
.LASF118:
	.ascii	"pRom0\000"
.LASF193:
	.ascii	"szText\000"
.LASF19:
	.ascii	"long int\000"
.LASF55:
	.ascii	"OBJSHAPE_TALL\000"
.LASF161:
	.ascii	"ctrl1Reg\000"
.LASF15:
	.ascii	"false\000"
.LASF45:
	.ascii	"activeTexture\000"
.LASF113:
	.ascii	"spriteCount\000"
.LASF4:
	.ascii	"short int\000"
.LASF141:
	.ascii	"paletteDirty\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF70:
	.ascii	"membase\000"
.LASF14:
	.ascii	"double\000"
.LASF204:
	.ascii	"mosaicShadowSub\000"
.LASF165:
	.ascii	"coinReg\000"
.LASF212:
	.ascii	"_TNeoRomRegion\000"
.LASF12:
	.ascii	"uint32\000"
.LASF107:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF81:
	.ascii	"IrqCallback\000"
.LASF175:
	.ascii	"varEnd\000"
.LASF49:
	.ascii	"OBJMODE_NORMAL\000"
.LASF207:
	.ascii	"glGlobalData\000"
.LASF157:
	.ascii	"vramMod\000"
.LASF121:
	.ascii	"pRam\000"
.LASF38:
	.ascii	"GL_TEXTURE\000"
.LASF133:
	.ascii	"smaRand\000"
.LASF86:
	.ascii	"TRead8Func\000"
.LASF75:
	.ascii	"write8\000"
.LASF167:
	.ascii	"screenDarkLatch\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF173:
	.ascii	"keyGrid\000"
.LASF190:
	.ascii	"cpuUnmapped32\000"
.LASF159:
	.ascii	"displayControlMask\000"
.LASF153:
	.ascii	"romBankAddress\000"
.LASF208:
	.ascii	"g_neo\000"
.LASF20:
	.ascii	"long unsigned int\000"
.LASF200:
	.ascii	"cpuReset\000"
.LASF46:
	.ascii	"nextBlock\000"
.LASF51:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF138:
	.ascii	"displayCounter\000"
.LASF140:
	.ascii	"spriteMask\000"
.LASF127:
	.ascii	"bankTable\000"
.LASF215:
	.ascii	"neoInvalidPc\000"
.LASF34:
	.ascii	"cur_size\000"
.LASF32:
	.ascii	"DynamicArray\000"
.LASF28:
	.ascii	"size\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF91:
	.ascii	"TWrite32Func\000"
.LASF151:
	.ascii	"paletteBank\000"
.LASF115:
	.ascii	"adpcm\000"
.LASF74:
	.ascii	"read32\000"
.LASF71:
	.ascii	"checkpc\000"
.LASF150:
	.ascii	"watchdogCounter\000"
.LASF102:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF120:
	.ascii	"pBios\000"
.LASF149:
	.ascii	"irqPending\000"
.LASF39:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF185:
	.ascii	"cpuNullWrite8\000"
.LASF147:
	.ascii	"cpuClockDivide\000"
.LASF201:
	.ascii	"cpuInit\000"
.LASF76:
	.ascii	"write16\000"
.LASF89:
	.ascii	"TWrite8Func\000"
.LASF132:
	.ascii	"smaBankbit\000"
.LASF180:
	.ascii	"cpuWrite8Table\000"
.LASF64:
	.ascii	"unused\000"
.LASF145:
	.ascii	"tileScaleX\000"
.LASF196:
	.ascii	"neoDebugCpuCheckPc\000"
.LASF92:
	.ascii	"TCheckPcFunc\000"
.LASF37:
	.ascii	"GL_MODELVIEW\000"
.LASF63:
	.ascii	"Cyclone\000"
.LASF31:
	.ascii	"BgState\000"
.LASF103:
	.ascii	"NEOROM_BIOS\000"
.LASF61:
	.ascii	"OBJCOLOR_16\000"
.LASF117:
	.ascii	"adpcmActive\000"
.LASF214:
	.ascii	"neoCpuInitMemoryTable\000"
.LASF114:
	.ascii	"romBankCount\000"
.LASF67:
	.ascii	"reserved\000"
.LASF192:
	.ascii	"cpuDisassemble\000"
.LASF104:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF137:
	.ascii	"vramBaseMask\000"
.LASF13:
	.ascii	"float\000"
.LASF199:
	.ascii	"ranCycles\000"
.LASF211:
	.ascii	"C:/Users/GRX/NeoDS/arm9/source/NeoCpu.c\000"
.LASF66:
	.ascii	"prev_pc\000"
.LASF41:
	.ascii	"matrixMode\000"
.LASF130:
	.ascii	"smaBankAddr\000"
.LASF184:
	.ascii	"TNeoContext\000"
.LASF206:
	.ascii	"bgState\000"
.LASF30:
	.ascii	"dirty\000"
.LASF40:
	.ascii	"gl_hidden_globals\000"
.LASF68:
	.ascii	"state_flags\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF136:
	.ascii	"pVramBase\000"
.LASF95:
	.ascii	"step\000"
.LASF202:
	.ascii	"glGlob\000"
.LASF108:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF183:
	.ascii	"cpuCheckPcTable\000"
.LASF69:
	.ascii	"cycles\000"
.LASF205:
	.ascii	"bgControl\000"
.LASF213:
	.ascii	"fill\000"
.LASF35:
	.ascii	"GL_PROJECTION\000"
.LASF58:
	.ascii	"OBJSIZE_16\000"
.LASF23:
	.ascii	"centerY\000"
.LASF84:
	.ascii	"internal\000"
.LASF178:
	.ascii	"cpuRead16Table\000"
.LASF59:
	.ascii	"OBJSIZE_32\000"
.LASF77:
	.ascii	"write32\000"
.LASF197:
	.ascii	"cpuExecute\000"
.LASF124:
	.ascii	"pVram\000"
.LASF142:
	.ascii	"pTileBuffer\000"
.LASF191:
	.ascii	"actualPc\000"
.LASF18:
	.ascii	"char\000"
.LASF168:
	.ascii	"fixedRomLatch\000"
.LASF83:
	.ascii	"UnrecognizedCallback\000"
.LASF160:
	.ascii	"displayCounterLoad\000"
.LASF198:
	.ascii	"index\000"
.LASF24:
	.ascii	"scaleX\000"
.LASF188:
	.ascii	"cpuUnmapped8\000"
.LASF97:
	.ascii	"_TNeoADPCMBStream\000"
.LASF135:
	.ascii	"frameCount\000"
.LASF93:
	.ascii	"_TNeoADPCMStream\000"
.LASF139:
	.ascii	"autoAnimationCounter\000"
.LASF78:
	.ascii	"fetch8\000"
.LASF94:
	.ascii	"offset\000"
.LASF57:
	.ascii	"OBJSIZE_8\000"
.LASF56:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF62:
	.ascii	"OBJCOLOR_256\000"
.LASF186:
	.ascii	"cpuNullWrite16\000"
.LASF195:
	.ascii	"cpuGetPC\000"
.LASF189:
	.ascii	"cpuUnmapped16\000"
.LASF22:
	.ascii	"centerX\000"
.LASF26:
	.ascii	"scrollX\000"
.LASF27:
	.ascii	"scrollY\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF44:
	.ascii	"texturePtrs\000"
.LASF112:
	.ascii	"pVideoWriteTable\000"
.LASF87:
	.ascii	"TRead16Func\000"
.LASF164:
	.ascii	"ctrl4Reg\000"
.LASF53:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF79:
	.ascii	"fetch16\000"
.LASF109:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF43:
	.ascii	"textures\000"
.LASF182:
	.ascii	"cpuWrite32Table\000"
.LASF152:
	.ascii	"fixedBank\000"
.LASF116:
	.ascii	"adpcmb\000"
.LASF88:
	.ascii	"TRead32Func\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF110:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF65:
	.ascii	"flags\000"
.LASF90:
	.ascii	"TWrite16Func\000"
.LASF143:
	.ascii	"tileOffsetX\000"
.LASF144:
	.ascii	"tileOffsetY\000"
.LASF209:
	.ascii	"g_neoContext\000"
.LASF54:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF156:
	.ascii	"vramOffset\000"
.LASF60:
	.ascii	"OBJSIZE_64\000"
.LASF48:
	.ascii	"nameCount\000"
.LASF131:
	.ascii	"smaBankoffset\000"
.LASF176:
	.ascii	"_TNeoContext\000"
.LASF181:
	.ascii	"cpuWrite16Table\000"
.LASF126:
	.ascii	"pPalette\000"
.LASF179:
	.ascii	"cpuRead32Table\000"
.LASF158:
	.ascii	"displayControl\000"
.LASF99:
	.ascii	"freqCounter\000"
.LASF163:
	.ascii	"ctrl3Reg\000"
.LASF174:
	.ascii	"frameCounter\000"
.LASF98:
	.ascii	"initOffset\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
