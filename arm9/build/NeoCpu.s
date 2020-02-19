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
	.code 16
	.thumb_func
	.type	cpuNullWrite8, %function
cpuNullWrite8:
.LFB107:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoCpu.c"
	.loc 1 10 0
.LVL0:
	@ lr needed for prologue
	.loc 1 10 0
	@ sp needed for prologue
	bx	lr
.LFE107:
	.size	cpuNullWrite8, .-cpuNullWrite8
	.align	2
	.global	cpuNullWrite16
	.code 16
	.thumb_func
	.type	cpuNullWrite16, %function
cpuNullWrite16:
.LFB108:
	.loc 1 11 0
.LVL1:
	@ lr needed for prologue
	.loc 1 11 0
	@ sp needed for prologue
	bx	lr
.LFE108:
	.size	cpuNullWrite16, .-cpuNullWrite16
	.align	2
	.global	cpuNullWrite32
	.code 16
	.thumb_func
	.type	cpuNullWrite32, %function
cpuNullWrite32:
.LFB109:
	.loc 1 12 0
.LVL2:
	@ lr needed for prologue
	.loc 1 12 0
	@ sp needed for prologue
	bx	lr
.LFE109:
	.size	cpuNullWrite32, .-cpuNullWrite32
	.align	2
	.global	cpuUnmapped8
	.code 16
	.thumb_func
	.type	cpuUnmapped8, %function
cpuUnmapped8:
.LFB110:
	.loc 1 14 0
	mov	r0, #243
	@ lr needed for prologue
	.loc 1 14 0
	@ sp needed for prologue
	bx	lr
.LFE110:
	.size	cpuUnmapped8, .-cpuUnmapped8
	.align	2
	.global	cpuUnmapped16
	.code 16
	.thumb_func
	.type	cpuUnmapped16, %function
cpuUnmapped16:
.LFB111:
	.loc 1 15 0
	ldr	r0, .L11
	@ lr needed for prologue
	.loc 1 15 0
	@ sp needed for prologue
	bx	lr
.L12:
	.align	2
.L11:
	.word	65343
.LFE111:
	.size	cpuUnmapped16, .-cpuUnmapped16
	.align	2
	.global	cpuUnmapped32
	.code 16
	.thumb_func
	.type	cpuUnmapped32, %function
cpuUnmapped32:
.LFB112:
	.loc 1 16 0
	mov	r0, #193
	neg	r0, r0
	@ lr needed for prologue
	.loc 1 16 0
	@ sp needed for prologue
	bx	lr
.LFE112:
	.size	cpuUnmapped32, .-cpuUnmapped32
	.align	2
	.global	neoCpuInitMemoryTable
	.code 16
	.thumb_func
	.type	neoCpuInitMemoryTable, %function
neoCpuInitMemoryTable:
.LFB114:
	.loc 1 80 0
	push	{r4, r5, r6, lr}
.LCFI0:
	ldr	r0, .L39
	sub	sp, sp, #32
.LCFI1:
	ldr	r6, .L39+4
	str	r0, [sp, #20]
	ldr	r3, .L39+8
	ldr	r0, .L39+12
	mov	ip, r6
	ldr	r5, .L39+16
	ldr	r6, .L39+20
	ldr	r4, .L39+24
	.loc 1 80 0
	mov	r1, #0
.LVL3:
	str	r3, [sp, #16]
	str	r0, [sp, #4]
	mov	r2, r7
.L16:
	.loc 1 84 0
	mov	r3, #128
	ldr	r0, [sp, #20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	str	r0, [r3]
	.loc 1 85 0
	mov	r3, #128
	ldr	r0, [sp, #16]
	lsl	r3, r3, #4
	add	r3, r2, r3
	str	r0, [r3]
	.loc 1 86 0
	mov	r3, #192
	lsl	r3, r3, #4
	add	r3, r2, r3
	mov	r0, ip
	str	r0, [r3]
	.loc 1 87 0
	mov	r3, #128
	lsl	r3, r3, #5
	add	r3, r2, r3
	.loc 1 88 0
	mov	r0, #160
	.loc 1 87 0
	str	r6, [r3]
	.loc 1 88 0
	lsl	r0, r0, #5
	.loc 1 89 0
	mov	r3, #192
	.loc 1 88 0
	add	r0, r2, r0
	.loc 1 89 0
	lsl	r3, r3, #5
	add	r3, r2, r3
	.loc 1 88 0
	str	r5, [r0]
	.loc 1 90 0
	mov	r0, #224
	.loc 1 89 0
	str	r4, [r3]
	.loc 1 90 0
	lsl	r0, r0, #5
	ldr	r3, [sp, #4]
	add	r0, r2, r0
	str	r3, [r0]
	.loc 1 83 0
	mov	r3, #128
	add	r1, r1, #1
	lsl	r3, r3, #1
	.loc 1 90 0
	str	r0, [sp, #12]
	.loc 1 83 0
	add	r2, r2, #4
	cmp	r1, r3
	bne	.L16
	ldr	r6, .L39+28
	ldr	r5, .L39+32
	ldr	r4, .L39+36
	ldr	r0, .L39+40
	mov	r1, #0
.LVL4:
	mov	r2, r7
.L18:
	.loc 1 94 0
	mov	r3, #128
	lsl	r3, r3, #3
	add	r3, r3, r2
	str	r6, [r3]
	.loc 1 95 0
	mov	r3, #128
	lsl	r3, r3, #4
	add	r3, r3, r2
	str	r5, [r3]
	.loc 1 96 0
	mov	r3, #192
	lsl	r3, r3, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 97 0
	mov	r3, #224
	lsl	r3, r3, #5
	add	r3, r3, r2
	.loc 1 93 0
	add	r1, r1, #1
	.loc 1 97 0
	str	r0, [r3]
	.loc 1 93 0
	add	r2, r2, #4
	cmp	r1, #16
	bne	.L18
	ldr	r0, .L39+44
	ldr	r6, .L39+48
	str	r0, [sp, #24]
	ldr	r3, .L39+52
	ldr	r0, .L39+56
	str	r6, [sp, #28]
	mov	r2, r7
	ldr	r6, .L39+60
	ldr	r5, .L39+64
	ldr	r4, .L39+68
	mov	ip, r3
	str	r0, [sp, #4]
	add	r2, r2, #64
.L19:
	.loc 1 101 0
	mov	r3, #128
	ldr	r0, [sp, #28]
	lsl	r3, r3, #3
	add	r3, r2, r3
	str	r0, [r3]
	.loc 1 102 0
	mov	r3, #128
	ldr	r0, [sp, #24]
	lsl	r3, r3, #4
	add	r3, r2, r3
	str	r0, [r3]
	.loc 1 103 0
	mov	r3, #192
	lsl	r3, r3, #4
	add	r3, r2, r3
	mov	r0, ip
	str	r0, [r3]
	.loc 1 104 0
	mov	r3, #128
	lsl	r3, r3, #5
	add	r3, r2, r3
	.loc 1 105 0
	mov	r0, #160
	.loc 1 104 0
	str	r6, [r3]
	.loc 1 105 0
	lsl	r0, r0, #5
	.loc 1 106 0
	mov	r3, #192
	.loc 1 105 0
	add	r0, r2, r0
	.loc 1 106 0
	lsl	r3, r3, #5
	add	r3, r2, r3
	.loc 1 105 0
	str	r5, [r0]
	.loc 1 107 0
	mov	r0, #224
	.loc 1 106 0
	str	r4, [r3]
	.loc 1 107 0
	lsl	r0, r0, #5
	ldr	r3, [sp, #4]
	add	r0, r2, r0
	.loc 1 100 0
	add	r1, r1, #1
	.loc 1 107 0
	str	r0, [sp, #12]
	str	r3, [r0]
	.loc 1 100 0
	add	r2, r2, #4
	cmp	r1, #32
	bne	.L19
	.loc 1 110 0
	ldr	r2, .L39+72
	ldr	r3, .L39+76
	.loc 1 120 0
	ldr	r0, .L39+80
	.loc 1 110 0
	str	r2, [r7, r3]
	.loc 1 111 0
	ldr	r3, .L39+84
	.loc 1 121 0
	ldr	r1, .L39+88
.LVL5:
	.loc 1 111 0
	str	r2, [r7, r3]
	.loc 1 114 0
	ldr	r2, .L39+92
	mov	r3, #140
	lsl	r3, r3, #4
	str	r2, [r7, r3]
	.loc 1 115 0
	ldr	r2, .L39+96
	mov	r3, #141
	lsl	r3, r3, #4
	str	r2, [r7, r3]
	.loc 1 116 0
	ldr	r2, .L39+100
	ldr	r3, .L39+104
	mov	r6, #128
	str	r2, [r7, r3]
	.loc 1 117 0
	ldr	r2, .L39+108
	mov	r3, #142
	lsl	r3, r3, #4
	str	r2, [r7, r3]
	.loc 1 120 0
	mov	r3, #158
	lsl	r3, r3, #3
	str	r0, [r7, r3]
	.loc 1 121 0
	mov	r3, #143
	lsl	r3, r3, #4
	str	r1, [r7, r3]
	.loc 1 122 0
	ldr	r2, .L39+112
	mov	r3, #207
	lsl	r3, r3, #4
	str	r2, [r7, r3]
	.loc 1 120 0
	ldr	r3, .L39+116
	lsl	r6, r6, #1
	str	r0, [r7, r3]
	.loc 1 121 0
	ldr	r3, .L39+120
	str	r1, [r7, r3]
	.loc 1 122 0
	ldr	r3, .L39+124
	.loc 1 127 0
	ldr	r1, .L39+128
	.loc 1 122 0
	str	r2, [r7, r3]
	.loc 1 127 0
	mov	r3, #134
	lsl	r3, r3, #5
	str	r1, [r7, r3]
	.loc 1 128 0
	ldr	r2, .L39+132
	mov	r3, #166
	lsl	r3, r3, #5
	str	r2, [r7, r3]
	.loc 1 127 0
	ldr	r3, .L39+136
	str	r1, [r7, r3]
	.loc 1 128 0
	ldr	r3, .L39+140
	.loc 1 132 0
	ldr	r1, .L39+144
	.loc 1 128 0
	str	r2, [r7, r3]
	.loc 1 132 0
	ldr	r3, .L39+148
	.loc 1 133 0
	ldr	r2, .L39+152
	.loc 1 132 0
	str	r1, [r7, r3]
	.loc 1 133 0
	ldr	r3, .L39+156
	str	r2, [r7, r3]
	.loc 1 132 0
	ldr	r3, .L39+160
	str	r1, [r7, r3]
	.loc 1 133 0
	ldr	r3, .L39+164
	str	r2, [r7, r3]
	.loc 1 136 0
	ldr	r2, .L39+168
	mov	r3, #135
	lsl	r3, r3, #5
	str	r2, [r7, r3]
	.loc 1 137 0
	mov	r3, #167
	lsl	r3, r3, #5
	str	r2, [r7, r3]
	.loc 1 140 0
	ldr	r2, .L39+172
	ldr	r3, .L39+176
	.loc 1 145 0
	ldr	r0, .L39+180
	.loc 1 140 0
	str	r2, [r7, r3]
	.loc 1 141 0
	ldr	r3, .L39+184
	.loc 1 146 0
	ldr	r1, .L39+188
	.loc 1 141 0
	str	r2, [r7, r3]
	.loc 1 140 0
	ldr	r3, .L39+192
	ldr	r5, .L39+196
	str	r2, [r7, r3]
	.loc 1 141 0
	ldr	r3, .L39+200
	ldr	r4, .L39+204
	str	r2, [r7, r3]
	.loc 1 145 0
	ldr	r3, .L39+208
	.loc 1 147 0
	ldr	r2, .L39+212
	.loc 1 145 0
	str	r0, [r7, r3]
	.loc 1 146 0
	ldr	r3, .L39+216
	str	r1, [r7, r3]
	.loc 1 147 0
	ldr	r3, .L39+220
	str	r2, [r7, r3]
	.loc 1 145 0
	ldr	r3, .L39+224
	str	r0, [r7, r3]
	.loc 1 146 0
	ldr	r3, .L39+228
	ldr	r0, .L39+232
	str	r1, [r7, r3]
	.loc 1 147 0
	ldr	r3, .L39+236
	mov	r1, #64
.LVL6:
	str	r2, [r7, r3]
	add	r2, r7, r6
.L21:
	.loc 1 152 0
	mov	r6, #128
	lsl	r6, r6, #4
	add	r3, r2, r6
	.loc 1 153 0
	mov	r6, #128
	lsl	r6, r6, #5
	.loc 1 152 0
	str	r5, [r3]
	.loc 1 153 0
	add	r3, r2, r6
	.loc 1 154 0
	mov	r6, #160
	lsl	r6, r6, #5
	.loc 1 153 0
	str	r4, [r3]
	.loc 1 151 0
	add	r1, r1, #1
	.loc 1 154 0
	add	r3, r2, r6
	str	r0, [r3]
	.loc 1 151 0
	add	r2, r2, #4
	cmp	r1, #112
	bne	.L21
	.loc 1 158 0
	ldr	r2, .L39+240
	mov	r3, #160
	lsl	r3, r3, #4
	str	r2, [r7, r3]
	.loc 1 159 0
	ldr	r2, .L39+244
	mov	r3, #144
	lsl	r3, r3, #5
	str	r2, [r7, r3]
	.loc 1 160 0
	ldr	r2, .L39+248
	mov	r3, #176
	lsl	r3, r3, #5
	str	r2, [r7, r3]
	mov	r3, #192
	lsl	r3, r3, #2
	ldr	r6, .L39+252
	ldr	r5, .L39+256
	ldr	r4, .L39+260
	ldr	r0, .L39+264
	mov	r1, #192
.LVL7:
	add	r2, r7, r3
.L23:
	.loc 1 164 0
	mov	r3, #128
	lsl	r3, r3, #3
	add	r3, r3, r2
	str	r6, [r3]
	.loc 1 165 0
	mov	r3, #128
	lsl	r3, r3, #4
	add	r3, r3, r2
	str	r5, [r3]
	.loc 1 166 0
	mov	r3, #192
	lsl	r3, r3, #4
	add	r3, r3, r2
	str	r4, [r3]
	.loc 1 167 0
	mov	r3, #224
	lsl	r3, r3, #5
	add	r3, r3, r2
	.loc 1 163 0
	add	r1, r1, #1
	.loc 1 167 0
	str	r0, [r3]
	.loc 1 163 0
	add	r2, r2, #4
	cmp	r1, #208
	bne	.L23
	ldr	r6, .L39+268
	ldr	r0, .L39+272
	mov	r3, #208
	mov	ip, r6
	lsl	r3, r3, #2
	ldr	r6, .L39+276
	ldr	r5, .L39+280
	ldr	r4, .L39+284
	str	r0, [sp, #4]
	add	r2, r7, r3
.L24:
	.loc 1 172 0
	mov	r0, #128
	lsl	r0, r0, #3
	add	r0, r2, r0
	mov	r3, ip
	str	r3, [r0]
	.loc 1 173 0
	mov	r0, #128
	lsl	r0, r0, #4
	add	r0, r2, r0
	.loc 1 174 0
	mov	r3, #192
	.loc 1 173 0
	str	r6, [r0]
	.loc 1 174 0
	lsl	r3, r3, #4
	.loc 1 175 0
	mov	r0, #128
	.loc 1 174 0
	add	r3, r2, r3
	.loc 1 175 0
	lsl	r0, r0, #5
	add	r0, r2, r0
	.loc 1 174 0
	str	r5, [r3]
	.loc 1 176 0
	mov	r3, #160
	.loc 1 175 0
	str	r4, [r0]
	.loc 1 176 0
	lsl	r3, r3, #5
	ldr	r0, [sp, #4]
	add	r3, r2, r3
	.loc 1 171 0
	add	r1, r1, #1
	.loc 1 176 0
	str	r3, [sp, #12]
	str	r0, [r3]
	.loc 1 171 0
	add	r2, r2, #4
	cmp	r1, #224
	bne	.L24
	.loc 1 179 0
	add	sp, sp, #32
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L40:
	.align	2
.L39:
	.word	neoDefaultRead8
	.word	neoDefaultRead32
	.word	cpuUnmapped16
	.word	neoInvalidPc
	.word	cpuNullWrite16
	.word	cpuNullWrite8
	.word	neoDefaultWrite32
	.word	neoReadRom8
	.word	neoReadRom16
	.word	neoReadRom32
	.word	neoRomPc
	.word	neoReadRam16
	.word	neoReadRam8
	.word	neoReadRam32
	.word	neoRamPc
	.word	neoWriteRam8
	.word	neoWriteRam16
	.word	neoWriteRam32
	.word	neoWriteRomBank
	.word	4284
	.word	neoReadVideo8
	.word	5308
	.word	neoReadVideo16
	.word	neoReadCtrl116
	.word	neoReadCtrl216
	.word	neoReadCoin16
	.word	2248
	.word	neoReadCtrl316
	.word	neoReadVideo32
	.word	1268
	.word	2292
	.word	3316
	.word	neoWriteWatchdog8
	.word	neoWriteWatchdog16
	.word	4292
	.word	5316
	.word	neoWriteAudioCommand8
	.word	4296
	.word	neoWriteAudioCommand16
	.word	5320
	.word	4300
	.word	5324
	.word	neoWrite4990a16
	.word	neoWriteSystemLatch16
	.word	4328
	.word	neoWriteVideo8
	.word	5352
	.word	neoWriteVideo16
	.word	4332
	.word	neoVideoReadPal16
	.word	5356
	.word	neoVideoWritePal8
	.word	4336
	.word	neoWriteVideo32
	.word	5360
	.word	6384
	.word	4340
	.word	5364
	.word	neoVideoWritePal16
	.word	6388
	.word	neoReadCard16
	.word	neoWriteCard8
	.word	neoWriteCard16
	.word	neoReadBios8
	.word	neoReadBios16
	.word	neoReadBios32
	.word	neoBiosPc
	.word	neoReadSram8
	.word	neoWriteSram16
	.word	neoReadSram16
	.word	neoReadSram32
	.word	neoWriteSram8
.LFE114:
	.size	neoCpuInitMemoryTable, .-neoCpuInitMemoryTable
	.align	2
	.global	neoDebugCpuCheckPc
	.code 16
	.thumb_func
	.type	neoDebugCpuCheckPc, %function
neoDebugCpuCheckPc:
.LFB116:
	.loc 1 198 0
	push	{lr}
.LCFI2:
.LVL8:
	.loc 1 206 0
	ldr	r3, [r7, #96]
	.loc 1 221 0
	mov	r2, #224
	.loc 1 206 0
	sub	r0, r0, r3
.LVL9:
	.loc 1 221 0
	lsl	r3, r0, #8
	lsr	r3, r3, #24
	lsl	r3, r3, #2
	add	r3, r3, r7
	lsl	r2, r2, #5
	add	r3, r3, r2
	.loc 1 198 0
	sub	sp, sp, #4
.LCFI3:
	.loc 1 221 0
	ldr	r3, [r3]
	blx	r3
.LVL10:
	.loc 1 224 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.LFE116:
	.size	neoDebugCpuCheckPc, .-neoDebugCpuCheckPc
	.align	2
	.global	cpuReset
	.code 16
	.thumb_func
	.type	cpuReset, %function
cpuReset:
.LFB118:
	.loc 1 260 0
	push	{r4, r5, lr}
.LCFI4:
	.loc 1 261 0
	mov	r2, r7
	add	r2, r2, #68
	mov	r3, #39
	strb	r3, [r2]
	.loc 1 260 0
	sub	sp, sp, #4
.LCFI5:
	.loc 1 262 0
	ldr	r3, [r7, #112]
	mov	r0, #0
	mov	r4, r7
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
	mov	r4, r7
	blx	r3
	blx	r5
	.loc 1 270 0
	add	sp, sp, #4
	.loc 1 264 0
	str	r0, [r4, #64]
	.loc 1 270 0
	@ sp needed for prologue
	pop	{r4, r5, pc}
.LFE118:
	.size	cpuReset, .-cpuReset
	.align	2
	.global	cpuDisassemble
	.code 16
	.thumb_func
	.type	cpuDisassemble, %function
cpuDisassemble:
.LFB119:
	.loc 1 273 0
.LVL11:
	@ lr needed for prologue
	.loc 1 279 0
	@ sp needed for prologue
	bx	lr
.LFE119:
	.size	cpuDisassemble, .-cpuDisassemble
	.align	2
	.global	cpuInterrupt
	.code 16
	.thumb_func
	.type	cpuInterrupt, %function
cpuInterrupt:
.LFB120:
	.loc 1 282 0
.LVL12:
	.loc 1 283 0
	mov	r3, r7
	add	r3, r3, #71
	.loc 1 282 0
	@ lr needed for prologue
	.loc 1 283 0
	strb	r0, [r3]
	.loc 1 284 0
	@ sp needed for prologue
	bx	lr
.LFE120:
	.size	cpuInterrupt, .-cpuInterrupt
	.align	2
	.global	cpuGetPC
	.code 16
	.thumb_func
	.type	cpuGetPC, %function
cpuGetPC:
.LFB121:
	.loc 1 289 0
	.loc 1 290 0
	ldr	r0, [r7, #64]
	ldr	r3, [r7, #96]
	.loc 1 289 0
	@ lr needed for prologue
	.loc 1 290 0
	sub	r0, r0, r3
	.loc 1 291 0
	@ sp needed for prologue
	bx	lr
.LFE121:
	.size	cpuGetPC, .-cpuGetPC
	.align	2
	.global	cpuExecute
	.code 16
	.thumb_func
	.type	cpuExecute, %function
cpuExecute:
.LFB122:
	.loc 1 294 0
	push	{r4, lr}
.LCFI6:
.LVL13:
	.loc 1 294 0
	mov	r4, r0
	.loc 1 336 0
	str	r0, [r7, #92]
	.loc 1 337 0
	mov	r0, r7
.LVL14:
	bl	CycloneRun
	ldr	r3, [r7, #92]
	.loc 1 342 0
	@ sp needed for prologue
	.loc 1 337 0
	sub	r4, r4, r3
.LVL15:
	.loc 1 342 0
	mov	r0, r4
	pop	{r4, pc}
.LFE122:
	.size	cpuExecute, .-cpuExecute
	.align	2
	.global	cpuInit
	.code 16
	.thumb_func
	.type	cpuInit, %function
cpuInit:
.LFB117:
	.loc 1 227 0
	push	{lr}
.LCFI7:
	sub	sp, sp, #4
.LCFI8:
	.loc 1 228 0
	bl	neoCpuInitMemoryTable
	.loc 1 230 0
	mov	r1, #0
	mov	r2, #176
	mov	r0, r7
	bl	memset
	.loc 1 232 0
	ldr	r3, .L55
	.loc 1 242 0
	ldr	r2, .L55+4
	.loc 1 232 0
	str	r3, [r7, #100]
	.loc 1 245 0
	ldr	r3, .L55+8
	.loc 1 243 0
	ldr	r1, .L55+12
	.loc 1 245 0
	str	r3, [r7, #116]
	.loc 1 246 0
	ldr	r3, .L55+16
	.loc 1 244 0
	ldr	r0, .L55+20
	.loc 1 246 0
	str	r3, [r7, #120]
	.loc 1 247 0
	ldr	r3, .L55+24
	.loc 1 257 0
	add	sp, sp, #4
	.loc 1 247 0
	str	r3, [r7, #124]
	.loc 1 248 0
	add	r3, r7, #4
	str	r2, [r3, #124]
	.loc 1 249 0
	add	r3, r3, #4
	str	r1, [r3, #124]
	.loc 1 250 0
	add	r3, r3, #128
	.loc 1 242 0
	str	r2, [r7, #104]
	.loc 1 243 0
	str	r1, [r7, #108]
	.loc 1 244 0
	str	r0, [r7, #112]
	.loc 1 250 0
	str	r0, [r3]
	.loc 1 257 0
	@ sp needed for prologue
	pop	{pc}
.L56:
	.align	2
.L55:
	.word	neoCpuCheckPc
	.word	neoCpuRead8
	.word	neoCpuWrite8
	.word	neoCpuRead16
	.word	neoCpuWrite16
	.word	neoCpuRead32
	.word	neoCpuWrite32
.LFE117:
	.size	cpuInit, .-cpuInit
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC57:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoCpu.c\000"
	.align	2
.LC59:
	.ascii	"Invalid PC: %08X\000"
	.text
	.align	2
	.code 16
	.thumb_func
	.type	neoInvalidPc, %function
neoInvalidPc:
.LFB113:
	.loc 1 74 0
	push	{lr}
.LCFI9:
.LVL16:
	sub	sp, sp, #4
.LCFI10:
	.loc 1 74 0
	mov	r3, r0
	.loc 1 75 0
	ldr	r2, .L59
	ldr	r0, .L59+4
.LVL17:
	mov	r1, #75
	bl	systemPanic_d
.LVL18:
	.loc 1 77 0
	mov	r0, #0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L60:
	.align	2
.L59:
	.word	.LC59
	.word	.LC57
.LFE113:
	.size	neoInvalidPc, .-neoInvalidPc
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
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.byte	0x4
	.4byte	.LCFI0-.LFB114
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
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x30
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.byte	0x4
	.4byte	.LCFI2-.LFB116
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.byte	0x4
	.4byte	.LCFI4-.LFB118
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.byte	0x4
	.4byte	.LCFI6-.LFB122
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.byte	0x4
	.4byte	.LCFI7-.LFB117
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.byte	0x4
	.4byte	.LCFI9-.LFB113
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE28:
	.file 2 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 5 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.file 6 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h"
	.file 8 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h"
	.file 9 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST6:
	.4byte	.LFB114-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB116-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB118-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB122-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB117-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LFB113-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0xdbf
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF168
	.byte	0x1
	.4byte	.LASF169
	.4byte	.LASF170
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2e
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x39
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x3a
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x53
	.4byte	0x6d
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x54
	.4byte	0x7f
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x8
	.byte	0x7
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x2
	.byte	0x45
	.4byte	0x74
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF16
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
	.4byte	0x50
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x2
	.byte	0x61
	.4byte	0x74
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x2
	.byte	0x65
	.4byte	0x3e
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x2
	.byte	0x66
	.4byte	0x62
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf7
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x100
	.uleb128 0x8
	.4byte	0x12e
	.byte	0x1
	.byte	0x4
	.byte	0x9b
	.uleb128 0x9
	.4byte	.LASF18
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF19
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF20
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF21
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0xa0
	.4byte	0x10d
	.uleb128 0xa
	.4byte	0x1b1
	.2byte	0x2018
	.byte	0x4
	.2byte	0x119
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x11a
	.4byte	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x11d
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x120
	.4byte	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x121
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x122
	.4byte	0x1c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x123
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x124
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.byte	0x0
	.uleb128 0xc
	.4byte	0x1c2
	.4byte	0xa2
	.uleb128 0xd
	.4byte	0xf9
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa2
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x126
	.4byte	0x139
	.uleb128 0xf
	.byte	0x4
	.uleb128 0x10
	.4byte	0x36c
	.4byte	.LASF60
	.byte	0xb0
	.byte	0x8
	.byte	0x15
	.uleb128 0x11
	.ascii	"d\000"
	.byte	0x8
	.byte	0x16
	.4byte	0x36c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.ascii	"a\000"
	.byte	0x8
	.byte	0x17
	.4byte	0x36c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.ascii	"pc\000"
	.byte	0x8
	.byte	0x18
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.ascii	"srh\000"
	.byte	0x8
	.byte	0x19
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x8
	.byte	0x1a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x8
	.byte	0x1b
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x11
	.ascii	"irq\000"
	.byte	0x8
	.byte	0x1c
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x11
	.ascii	"osp\000"
	.byte	0x8
	.byte	0x1d
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.ascii	"xc\000"
	.byte	0x8
	.byte	0x1e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x8
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x8
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x8
	.byte	0x21
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x8
	.byte	0x22
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x8
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x8
	.byte	0x24
	.4byte	0x38c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x8
	.byte	0x25
	.4byte	0x38c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x8
	.byte	0x26
	.4byte	0x38c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x8
	.byte	0x27
	.4byte	0x38c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x8
	.byte	0x28
	.4byte	0x3a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x8
	.byte	0x29
	.4byte	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x8
	.byte	0x2a
	.4byte	0x3d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x8
	.byte	0x2b
	.4byte	0x38c
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x8
	.byte	0x2c
	.4byte	0x38c
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x8
	.byte	0x2d
	.4byte	0x38c
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x8
	.byte	0x2e
	.4byte	0x3e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x8
	.byte	0x2f
	.4byte	0xf1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x8
	.byte	0x30
	.4byte	0x3f3
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x8
	.byte	0x31
	.4byte	0x3f9
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xc
	.4byte	0x37c
	.4byte	0x9b
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x7
	.byte	0x0
	.uleb128 0x14
	.4byte	0x38c
	.byte	0x1
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x37c
	.uleb128 0x16
	.4byte	0x3a3
	.byte	0x1
	.uleb128 0x15
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x37
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x392
	.uleb128 0x16
	.4byte	0x3ba
	.byte	0x1
	.uleb128 0x15
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3a9
	.uleb128 0x16
	.4byte	0x3d1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x9b
	.uleb128 0x15
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3c0
	.uleb128 0x14
	.4byte	0x3e7
	.byte	0x1
	.4byte	0x94
	.uleb128 0x15
	.4byte	0x94
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3d7
	.uleb128 0x17
	.byte	0x1
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ed
	.uleb128 0xc
	.4byte	0x409
	.4byte	0x9b
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x7
	.byte	0x6
	.4byte	0x1d6
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x7
	.byte	0x8
	.4byte	0x41f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x425
	.uleb128 0x14
	.4byte	0x435
	.byte	0x1
	.4byte	0xbb
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x7
	.byte	0x9
	.4byte	0x440
	.uleb128 0x6
	.byte	0x4
	.4byte	0x446
	.uleb128 0x14
	.4byte	0x456
	.byte	0x1
	.4byte	0xc5
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x7
	.byte	0xa
	.4byte	0x461
	.uleb128 0x6
	.byte	0x4
	.4byte	0x467
	.uleb128 0x14
	.4byte	0x477
	.byte	0x1
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x7
	.byte	0xc
	.4byte	0x482
	.uleb128 0x6
	.byte	0x4
	.4byte	0x488
	.uleb128 0x16
	.4byte	0x499
	.byte	0x1
	.uleb128 0x15
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xbb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x7
	.byte	0xd
	.4byte	0x4a4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4aa
	.uleb128 0x16
	.4byte	0x4bb
	.byte	0x1
	.uleb128 0x15
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xc5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x7
	.byte	0xe
	.4byte	0x4c6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4cc
	.uleb128 0x16
	.4byte	0x4dd
	.byte	0x1
	.uleb128 0x15
	.4byte	0xd0
	.uleb128 0x15
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x7
	.byte	0x10
	.4byte	0x461
	.uleb128 0x10
	.4byte	0x52d
	.4byte	.LASF61
	.byte	0xc
	.byte	0x9
	.byte	0x17
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x9
	.byte	0x18
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.ascii	"end\000"
	.byte	0x9
	.byte	0x19
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.ascii	"acc\000"
	.byte	0x9
	.byte	0x1a
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x9
	.byte	0x1b
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x9
	.byte	0x1c
	.4byte	0x4e8
	.uleb128 0x10
	.4byte	0x56f
	.4byte	.LASF65
	.byte	0xc
	.byte	0x9
	.byte	0x1f
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x9
	.byte	0x20
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x9
	.byte	0x21
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x9
	.byte	0x22
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x9
	.byte	0x23
	.4byte	0x538
	.uleb128 0x18
	.4byte	0x968
	.2byte	0x248
	.byte	0x6
	.byte	0xc0
	.uleb128 0x11
	.ascii	"cpu\000"
	.byte	0x6
	.byte	0xc1
	.4byte	0x409
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x6
	.byte	0xc4
	.4byte	0x968
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x6
	.byte	0xc7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x6
	.byte	0xc8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0x6
	.byte	0xcb
	.4byte	0x978
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0x6
	.byte	0xcc
	.4byte	0x56f
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0x6
	.byte	0xcd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x6
	.byte	0xd0
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x6
	.byte	0xd1
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x6
	.byte	0xd2
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x6
	.byte	0xd3
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x6
	.byte	0xd4
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x6
	.byte	0xd5
	.4byte	0x988
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x12
	.4byte	.LASF82
	.byte	0x6
	.byte	0xd6
	.4byte	0x98e
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x6
	.byte	0xd7
	.4byte	0x98e
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x6
	.byte	0xd8
	.4byte	0x98e
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x6
	.byte	0xda
	.4byte	0x994
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x12
	.4byte	.LASF86
	.byte	0x6
	.byte	0xdd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x12
	.4byte	.LASF87
	.byte	0x6
	.byte	0xde
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0x6
	.byte	0xdf
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x12
	.4byte	.LASF89
	.byte	0x6
	.byte	0xe0
	.4byte	0x9a5
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x12
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe1
	.4byte	0x9a5
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x12
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe2
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x12
	.4byte	.LASF92
	.byte	0x6
	.byte	0xe5
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x6
	.byte	0xe6
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x6
	.byte	0xe7
	.4byte	0x98e
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x6
	.byte	0xe8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x6
	.byte	0xea
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x6
	.byte	0xeb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x6
	.byte	0xec
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x6
	.byte	0xed
	.4byte	0x9b0
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x6
	.byte	0xee
	.4byte	0x98e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0x6
	.byte	0xf1
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x6
	.byte	0xf2
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x12
	.4byte	.LASF103
	.byte	0x6
	.byte	0xf3
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x12
	.4byte	.LASF104
	.byte	0x6
	.byte	0xf4
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x12
	.4byte	.LASF105
	.byte	0x6
	.byte	0xf7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x12
	.4byte	.LASF106
	.byte	0x6
	.byte	0xf8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0x6
	.byte	0xf9
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x6
	.byte	0xfa
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x6
	.byte	0xfb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0x6
	.byte	0xfc
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x12
	.4byte	.LASF111
	.byte	0x6
	.byte	0xfd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x102
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x103
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x106
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x108
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x109
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x10a
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x10b
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x10d
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x10e
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x10f
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x110
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x111
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x6
	.2byte	0x114
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x6
	.2byte	0x115
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x6
	.2byte	0x116
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x6
	.2byte	0x117
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x6
	.2byte	0x118
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x6
	.2byte	0x11b
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x6
	.2byte	0x11c
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x6
	.2byte	0x11f
	.4byte	0x9c0
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x6
	.2byte	0x122
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x6
	.2byte	0x123
	.4byte	0x9d0
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xc
	.4byte	0x978
	.4byte	0x1d4
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x8
	.byte	0x0
	.uleb128 0xc
	.4byte	0x988
	.4byte	0x52d
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x6
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x99a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9a0
	.uleb128 0x19
	.4byte	0xbb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9ab
	.uleb128 0x19
	.4byte	0xd0
	.uleb128 0xc
	.4byte	0x9c0
	.4byte	0xd0
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9d0
	.4byte	0xbb
	.uleb128 0x13
	.4byte	0xf9
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.4byte	0x9df
	.4byte	0xbb
	.uleb128 0x1a
	.4byte	0xf9
	.byte	0x0
	.uleb128 0x1b
	.4byte	0x9fa
	.2byte	0x400
	.byte	0x6
	.byte	0xbf
	.uleb128 0x1c
	.4byte	0x57a
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0x6
	.2byte	0x125
	.4byte	0x9fa
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa0a
	.4byte	0xd0
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0x1e
	.4byte	0xa90
	.4byte	.LASF135
	.2byte	0x2000
	.byte	0x6
	.byte	0xbe
	.uleb128 0x1f
	.4byte	0x9df
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x6
	.2byte	0x128
	.4byte	0xa90
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x6
	.2byte	0x129
	.4byte	0xaa0
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x6
	.2byte	0x12a
	.4byte	0xab0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x6
	.2byte	0x12b
	.4byte	0xac0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x6
	.2byte	0x12c
	.4byte	0xad0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x6
	.2byte	0x12d
	.4byte	0xae0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x6
	.2byte	0x12e
	.4byte	0xaf0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xc
	.4byte	0xaa0
	.4byte	0x414
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xab0
	.4byte	0x435
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xac0
	.4byte	0x456
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xad0
	.4byte	0x477
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xae0
	.4byte	0x499
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xaf0
	.4byte	0x4bb
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb00
	.4byte	0x4dd
	.uleb128 0x13
	.4byte	0xf9
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF143
	.byte	0x6
	.2byte	0x12f
	.4byte	0xa0a
	.uleb128 0x20
	.4byte	0xb3a
	.byte	0x1
	.4byte	.LASF144
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.4byte	.LFB107
	.4byte	.LFE107
	.byte	0x1
	.byte	0x5d
	.uleb128 0x21
	.ascii	"a\000"
	.byte	0x1
	.byte	0xa
	.4byte	0xd0
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.ascii	"d\000"
	.byte	0x1
	.byte	0xa
	.4byte	0xbb
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x20
	.4byte	0xb68
	.byte	0x1
	.4byte	.LASF145
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.4byte	.LFB108
	.4byte	.LFE108
	.byte	0x1
	.byte	0x5d
	.uleb128 0x21
	.ascii	"a\000"
	.byte	0x1
	.byte	0xb
	.4byte	0xd0
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.ascii	"d\000"
	.byte	0x1
	.byte	0xb
	.4byte	0xc5
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x20
	.4byte	0xb96
	.byte	0x1
	.4byte	.LASF146
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.4byte	.LFB109
	.4byte	.LFE109
	.byte	0x1
	.byte	0x5d
	.uleb128 0x21
	.ascii	"a\000"
	.byte	0x1
	.byte	0xc
	.4byte	0xd0
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.ascii	"d\000"
	.byte	0x1
	.byte	0xc
	.4byte	0xd0
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF147
	.byte	0x1
	.byte	0xe
	.4byte	0xbb
	.4byte	.LFB110
	.4byte	.LFE110
	.byte	0x1
	.byte	0x5d
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF148
	.byte	0x1
	.byte	0xf
	.4byte	0xc5
	.4byte	.LFB111
	.4byte	.LFE111
	.byte	0x1
	.byte	0x5d
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF149
	.byte	0x1
	.byte	0x10
	.4byte	0xd0
	.4byte	.LFB112
	.4byte	.LFE112
	.byte	0x1
	.byte	0x5d
	.uleb128 0x23
	.4byte	0xbfe
	.byte	0x1
	.4byte	.LASF150
	.byte	0x1
	.byte	0x50
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LLST6
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.byte	0x51
	.4byte	0xd0
	.4byte	.LLST7
	.byte	0x0
	.uleb128 0x25
	.4byte	0xc51
	.byte	0x1
	.4byte	.LASF151
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.4byte	0xd0
	.4byte	.LFB116
	.4byte	.LFE116
	.4byte	.LLST8
	.uleb128 0x26
	.ascii	"pc\000"
	.byte	0x1
	.byte	0xc5
	.4byte	0xd0
	.4byte	.LLST9
	.uleb128 0x27
	.4byte	.LASF152
	.byte	0x1
	.byte	0xce
	.4byte	0x9ab
	.4byte	.LLST10
	.uleb128 0x28
	.4byte	.LASF153
	.byte	0x1
	.byte	0xcf
	.4byte	0x9ab
	.uleb128 0x29
	.ascii	"ret\000"
	.byte	0x1
	.byte	0xdd
	.4byte	0x9ab
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x104
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LLST11
	.uleb128 0x2b
	.4byte	0xc8d
	.byte	0x1
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x111
	.byte	0x1
	.4byte	.LFB119
	.4byte	.LFE119
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2c
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x110
	.4byte	0x107
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2b
	.4byte	0xcb4
	.byte	0x1
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x11a
	.byte	0x1
	.4byte	.LFB120
	.4byte	.LFE120
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.ascii	"irq\000"
	.byte	0x1
	.2byte	0x119
	.4byte	0xd0
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x121
	.4byte	0xd0
	.4byte	.LFB121
	.4byte	.LFE121
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2f
	.4byte	0xd06
	.byte	0x1
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x126
	.byte	0x1
	.4byte	0xd0
	.4byte	.LFB122
	.4byte	.LFE122
	.4byte	.LLST15
	.uleb128 0x30
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x125
	.4byte	0xe6
	.4byte	.LLST16
	.uleb128 0x31
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x152
	.4byte	0x9ab
	.byte	0x0
	.uleb128 0x32
	.byte	0x1
	.4byte	.LASF161
	.byte	0x1
	.byte	0xe3
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LLST17
	.uleb128 0x33
	.4byte	0xd45
	.4byte	.LASF171
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.4byte	0xd0
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST18
	.uleb128 0x26
	.ascii	"pc\000"
	.byte	0x1
	.byte	0x49
	.4byte	0xd0
	.4byte	.LLST19
	.byte	0x0
	.uleb128 0x31
	.4byte	.LASF162
	.byte	0x4
	.2byte	0x129
	.4byte	0xd51
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c8
	.uleb128 0xc
	.4byte	0xd62
	.4byte	0x49
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF163
	.byte	0x5
	.byte	0x2c
	.4byte	0xd57
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0xd7a
	.4byte	0x49
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF164
	.byte	0x5
	.byte	0x2d
	.4byte	0xd6f
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0xd92
	.4byte	0x49
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF165
	.byte	0x5
	.byte	0x2e
	.4byte	0xd87
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.4byte	.LASF166
	.byte	0x6
	.2byte	0x149
	.4byte	0xdae
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb00
	.uleb128 0x37
	.4byte	.LASF167
	.byte	0x6
	.2byte	0x14d
	.4byte	0xb00
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x17
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x10f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xdc3
	.4byte	0xb0c
	.ascii	"cpuNullWrite8\000"
	.4byte	0xb3a
	.ascii	"cpuNullWrite16\000"
	.4byte	0xb68
	.ascii	"cpuNullWrite32\000"
	.4byte	0xb96
	.ascii	"cpuUnmapped8\000"
	.4byte	0xbac
	.ascii	"cpuUnmapped16\000"
	.4byte	0xbc2
	.ascii	"cpuUnmapped32\000"
	.4byte	0xbd8
	.ascii	"neoCpuInitMemoryTable\000"
	.4byte	0xbfe
	.ascii	"neoDebugCpuCheckPc\000"
	.4byte	0xc51
	.ascii	"cpuReset\000"
	.4byte	0xc66
	.ascii	"cpuDisassemble\000"
	.4byte	0xc8d
	.ascii	"cpuInterrupt\000"
	.4byte	0xcb4
	.ascii	"cpuGetPC\000"
	.4byte	0xccb
	.ascii	"cpuExecute\000"
	.4byte	0xd06
	.ascii	"cpuInit\000"
	.4byte	0xd9f
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
.LASF24:
	.ascii	"clearColor\000"
.LASF156:
	.ascii	"szText\000"
.LASF38:
	.ascii	"checkpc\000"
.LASF42:
	.ascii	"write8\000"
.LASF90:
	.ascii	"smaBankbit\000"
.LASF142:
	.ascii	"cpuCheckPcTable\000"
.LASF98:
	.ascii	"spriteMask\000"
.LASF121:
	.ascii	"ctrl3Reg\000"
.LASF47:
	.ascii	"fetch32\000"
.LASF162:
	.ascii	"glGlob\000"
.LASF106:
	.ascii	"cpuClocksPerScanline\000"
.LASF54:
	.ascii	"TRead16Func\000"
.LASF72:
	.ascii	"romBankCount\000"
.LASF101:
	.ascii	"tileOffsetX\000"
.LASF140:
	.ascii	"cpuWrite16Table\000"
.LASF14:
	.ascii	"uint32\000"
.LASF20:
	.ascii	"GL_MODELVIEW\000"
.LASF103:
	.ascii	"tileScaleX\000"
.LASF104:
	.ascii	"tileScaleY\000"
.LASF43:
	.ascii	"write16\000"
.LASF59:
	.ascii	"TCheckPcFunc\000"
.LASF171:
	.ascii	"neoInvalidPc\000"
.LASF133:
	.ascii	"varEnd\000"
.LASF56:
	.ascii	"TWrite8Func\000"
.LASF39:
	.ascii	"read8\000"
.LASF69:
	.ascii	"TNeoADPCMBStream\000"
.LASF53:
	.ascii	"TRead8Func\000"
.LASF100:
	.ascii	"pTileBuffer\000"
.LASF138:
	.ascii	"cpuRead32Table\000"
.LASF22:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF8:
	.ascii	"long int\000"
.LASF68:
	.ascii	"frequency\000"
.LASF57:
	.ascii	"TWrite16Func\000"
.LASF45:
	.ascii	"fetch8\000"
.LASF150:
	.ascii	"neoCpuInitMemoryTable\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF131:
	.ascii	"keyGrid\000"
.LASF44:
	.ascii	"write32\000"
.LASF48:
	.ascii	"IrqCallback\000"
.LASF0:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF122:
	.ascii	"ctrl4Reg\000"
.LASF111:
	.ascii	"romBankAddress\000"
.LASF165:
	.ascii	"TAN_bin\000"
.LASF63:
	.ascii	"step\000"
.LASF75:
	.ascii	"adpcmActive\000"
.LASF95:
	.ascii	"vramBaseMask\000"
.LASF71:
	.ascii	"spriteCount\000"
.LASF50:
	.ascii	"UnrecognizedCallback\000"
.LASF17:
	.ascii	"char\000"
.LASF124:
	.ascii	"irqVectorLatch\000"
.LASF82:
	.ascii	"pVram\000"
.LASF125:
	.ascii	"screenDarkLatch\000"
.LASF33:
	.ascii	"prev_pc\000"
.LASF65:
	.ascii	"_TNeoADPCMBStream\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF32:
	.ascii	"flags\000"
.LASF16:
	.ascii	"double\000"
.LASF97:
	.ascii	"autoAnimationCounter\000"
.LASF25:
	.ascii	"textures\000"
.LASF159:
	.ascii	"cpuExecute\000"
.LASF19:
	.ascii	"GL_POSITION\000"
.LASF143:
	.ascii	"TNeoContext\000"
.LASF105:
	.ascii	"cpuClockDivide\000"
.LASF93:
	.ascii	"frameCount\000"
.LASF114:
	.ascii	"vramOffset\000"
.LASF170:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF134:
	.ascii	"fill\000"
.LASF36:
	.ascii	"cycles\000"
.LASF160:
	.ascii	"ranCycles\000"
.LASF141:
	.ascii	"cpuWrite32Table\000"
.LASF128:
	.ascii	"paletteRamLatch\000"
.LASF154:
	.ascii	"cpuReset\000"
.LASF163:
	.ascii	"COS_bin\000"
.LASF79:
	.ascii	"pRam\000"
.LASF81:
	.ascii	"pCard\000"
.LASF96:
	.ascii	"displayCounter\000"
.LASF52:
	.ascii	"TCycloneContext\000"
.LASF108:
	.ascii	"watchdogCounter\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF137:
	.ascii	"cpuRead16Table\000"
.LASF117:
	.ascii	"displayControlMask\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF129:
	.ascii	"active\000"
.LASF60:
	.ascii	"Cyclone\000"
.LASF78:
	.ascii	"pBios\000"
.LASF99:
	.ascii	"paletteDirty\000"
.LASF164:
	.ascii	"SIN_bin\000"
.LASF23:
	.ascii	"matrixMode\000"
.LASF27:
	.ascii	"nextBlock\000"
.LASF136:
	.ascii	"cpuRead8Table\000"
.LASF91:
	.ascii	"smaRand\000"
.LASF61:
	.ascii	"_TNeoADPCMStream\000"
.LASF58:
	.ascii	"TWrite32Func\000"
.LASF86:
	.ascii	"smaAddr0\000"
.LASF149:
	.ascii	"cpuUnmapped32\000"
.LASF11:
	.ascii	"long long int\000"
.LASF18:
	.ascii	"GL_PROJECTION\000"
.LASF123:
	.ascii	"coinReg\000"
.LASF66:
	.ascii	"initOffset\000"
.LASF51:
	.ascii	"internal\000"
.LASF152:
	.ascii	"actualPc\000"
.LASF46:
	.ascii	"fetch16\000"
.LASF87:
	.ascii	"smaAddr1\000"
.LASF144:
	.ascii	"cpuNullWrite8\000"
.LASF31:
	.ascii	"unused\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF116:
	.ascii	"displayControl\000"
.LASF147:
	.ascii	"cpuUnmapped8\000"
.LASF89:
	.ascii	"smaBankoffset\000"
.LASF21:
	.ascii	"GL_TEXTURE\000"
.LASF94:
	.ascii	"pVramBase\000"
.LASF62:
	.ascii	"offset\000"
.LASF76:
	.ascii	"pRom0\000"
.LASF102:
	.ascii	"tileOffsetY\000"
.LASF139:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF26:
	.ascii	"activeTexture\000"
.LASF120:
	.ascii	"ctrl2Reg\000"
.LASF40:
	.ascii	"read16\000"
.LASF109:
	.ascii	"paletteBank\000"
.LASF167:
	.ascii	"g_neoContext\000"
.LASF37:
	.ascii	"membase\000"
.LASF168:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF92:
	.ascii	"scanline\000"
.LASF84:
	.ascii	"pPalette\000"
.LASF161:
	.ascii	"cpuInit\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF130:
	.ascii	"debug\000"
.LASF77:
	.ascii	"pRom1\000"
.LASF157:
	.ascii	"cpuInterrupt\000"
.LASF41:
	.ascii	"read32\000"
.LASF83:
	.ascii	"pSpriteRam\000"
.LASF49:
	.ascii	"ResetCallback\000"
.LASF127:
	.ascii	"sramProtectLatch\000"
.LASF110:
	.ascii	"fixedBank\000"
.LASF166:
	.ascii	"g_neo\000"
.LASF29:
	.ascii	"nameCount\000"
.LASF119:
	.ascii	"ctrl1Reg\000"
.LASF35:
	.ascii	"state_flags\000"
.LASF113:
	.ascii	"sramProtection\000"
.LASF80:
	.ascii	"pSram\000"
.LASF158:
	.ascii	"cpuGetPC\000"
.LASF67:
	.ascii	"freqCounter\000"
.LASF4:
	.ascii	"short int\000"
.LASF132:
	.ascii	"frameCounter\000"
.LASF74:
	.ascii	"adpcmb\000"
.LASF28:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF153:
	.ascii	"index\000"
.LASF118:
	.ascii	"displayCounterLoad\000"
.LASF107:
	.ascii	"irqPending\000"
.LASF145:
	.ascii	"cpuNullWrite16\000"
.LASF55:
	.ascii	"TRead32Func\000"
.LASF155:
	.ascii	"cpuDisassemble\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF146:
	.ascii	"cpuNullWrite32\000"
.LASF73:
	.ascii	"adpcm\000"
.LASF15:
	.ascii	"float\000"
.LASF30:
	.ascii	"gl_hidden_globals\000"
.LASF70:
	.ascii	"pVideoWriteTable\000"
.LASF85:
	.ascii	"bankTable\000"
.LASF88:
	.ascii	"smaBankAddr\000"
.LASF169:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/NeoCpu.c\000"
.LASF135:
	.ascii	"_TNeoContext\000"
.LASF148:
	.ascii	"cpuUnmapped16\000"
.LASF34:
	.ascii	"reserved\000"
.LASF126:
	.ascii	"fixedRomLatch\000"
.LASF112:
	.ascii	"sramProtectCount\000"
.LASF64:
	.ascii	"TNeoADPCMStream\000"
.LASF151:
	.ascii	"neoDebugCpuCheckPc\000"
.LASF115:
	.ascii	"vramMod\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
