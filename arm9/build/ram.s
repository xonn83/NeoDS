	.code	16
	.file	"ram.c"
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
	.type	sysSetBusOwners, %function
sysSetBusOwners:
.LFB16:
	.file 1 "C:/devkitPro/libnds/include/nds/memory.h"
	.loc 1 213 0
	push	{r4, lr}
.LCFI0:
.LVL0:
	.loc 1 214 0
	ldr	r3, .L9
	ldrh	r3, [r3]
	mov	r4, r3
	.loc 1 215 0
	cmp	r1, #0
	beq	.L2
	mov	r2, #0
	b	.L4
.L2:
	mov	r2, #128
	lsl	r2, r2, #4
.L4:
	cmp	r0, #0
	beq	.L5
	mov	r1, #0
.LVL1:
	b	.L7
.LVL2:
.L5:
	mov	r1, #128
.LVL3:
.L7:
	ldr	r3, .L9+4
	.loc 1 218 0
	@ sp needed for prologue
	.loc 1 215 0
	and	r3, r3, r4
	orr	r3, r3, r1
	orr	r2, r2, r3
.LVL4:
	.loc 1 217 0
	ldr	r3, .L9
	strh	r2, [r3]
	.loc 1 218 0
	pop	{r4, pc}
.L10:
	.align	2
.L9:
	.word	67109380
	.word	-2177
.LFE16:
	.size	sysSetBusOwners, .-sysSetBusOwners
	.align	2
	.global	_sc_unlock
	.code 16
	.thumb_func
	.type	_sc_unlock, %function
_sc_unlock:
.LFB104:
	.file 2 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/ram.c"
	.loc 2 18 0
	.loc 2 19 0
	ldr	r3, .L13
	ldr	r2, .L13+4
	.loc 2 22 0
	mov	r0, #128
	.loc 2 19 0
	strh	r2, [r3]
	.loc 2 22 0
	lsl	r0, r0, #20
	.loc 2 20 0
	strh	r2, [r3]
	.loc 2 21 0
	mov	r2, #5
	strh	r2, [r3]
	.loc 2 18 0
	@ lr needed for prologue
	.loc 2 22 0
	strh	r2, [r3]
	.loc 2 25 0
	@ sp needed for prologue
	bx	lr
.L14:
	.align	2
.L13:
	.word	167772158
	.word	-23206
.LFE104:
	.size	_sc_unlock, .-_sc_unlock
	.align	2
	.global	_sc_lock
	.code 16
	.thumb_func
	.type	_sc_lock, %function
_sc_lock:
.LFB105:
	.loc 2 30 0
	.loc 2 31 0
	ldr	r3, .L17
	ldr	r2, .L17+4
	.loc 2 30 0
	@ lr needed for prologue
	.loc 2 31 0
	strh	r2, [r3]
	.loc 2 32 0
	strh	r2, [r3]
	.loc 2 33 0
	mov	r2, #3
	strh	r2, [r3]
	.loc 2 35 0
	@ sp needed for prologue
	.loc 2 34 0
	strh	r2, [r3]
	.loc 2 35 0
	bx	lr
.L18:
	.align	2
.L17:
	.word	167772158
	.word	-23206
.LFE105:
	.size	_sc_lock, .-_sc_lock
	.align	2
	.global	_m3_unlock
	.code 16
	.thumb_func
	.type	_m3_unlock, %function
_m3_unlock:
.LFB106:
	.loc 2 40 0
	.loc 2 43 0
	ldr	r3, .L21
	.loc 2 40 0
	sub	sp, sp, #8
.LCFI1:
	.loc 2 43 0
	ldrh	r3, [r3]
	mov	r2, sp
	add	r2, r2, #6
	strh	r3, [r2]
.LVL5:
	.loc 2 44 0
	ldr	r3, .L21+4
	.loc 2 48 0
	mov	r0, #128
	.loc 2 44 0
	ldrh	r3, [r3]
	.loc 2 48 0
	lsl	r0, r0, #20
	.loc 2 44 0
	strh	r3, [r2]
	.loc 2 45 0
	ldr	r3, .L21+8
	.loc 2 53 0
	ldr	r1, .L21+12
	.loc 2 45 0
	ldrh	r3, [r3]
	.loc 2 59 0
	add	sp, sp, #8
	.loc 2 45 0
	strh	r3, [r2]
	.loc 2 46 0
	ldr	r3, .L21+16
	.loc 2 40 0
	@ lr needed for prologue
	.loc 2 46 0
	ldrh	r3, [r3]
	.loc 2 59 0
	@ sp needed for prologue
	.loc 2 46 0
	strh	r3, [r2]
	.loc 2 47 0
	ldr	r3, .L21+20
	ldrh	r3, [r3]
	strh	r3, [r2]
	.loc 2 48 0
	ldrh	r3, [r0]
	strh	r3, [r2]
	.loc 2 49 0
	ldr	r3, .L21+24
	ldrh	r3, [r3]
	strh	r3, [r2]
	.loc 2 50 0
	ldr	r3, .L21+28
	ldrh	r3, [r3]
	strh	r3, [r2]
	.loc 2 51 0
	ldr	r3, .L21+32
	ldrh	r3, [r3]
	strh	r3, [r2]
	.loc 2 52 0
	ldrh	r3, [r0]
	strh	r3, [r2]
	.loc 2 53 0
	ldrh	r3, [r1]
	strh	r3, [r2]
	.loc 2 54 0
	ldrh	r3, [r1]
	.loc 2 55 0
	sub	r1, r1, #92
	.loc 2 54 0
	strh	r3, [r2]
	.loc 2 55 0
	ldrh	r3, [r1]
	strh	r3, [r2]
	.loc 2 56 0
	ldrh	r3, [r1]
	strh	r3, [r2]
	.loc 2 59 0
	bx	lr
.L22:
	.align	2
.L21:
	.word	148897794
	.word	134217742
	.word	142614524
	.word	134218212
	.word	134221898
	.word	142607890
	.word	142613350
	.word	142606348
	.word	134219790
.LFE106:
	.size	_m3_unlock, .-_m3_unlock
	.align	2
	.global	_m3_lock
	.code 16
	.thumb_func
	.type	_m3_lock, %function
_m3_lock:
.LFB107:
	.loc 2 64 0
	.loc 2 67 0
	ldr	r3, .L25
	.loc 2 64 0
	sub	sp, sp, #8
.LCFI2:
	.loc 2 67 0
	ldrh	r3, [r3]
	mov	r2, sp
	add	r2, r2, #6
	strh	r3, [r2]
.LVL6:
	.loc 2 68 0
	ldr	r3, .L25+4
	.loc 2 72 0
	mov	r1, #128
	.loc 2 68 0
	ldrh	r3, [r3]
	.loc 2 72 0
	lsl	r1, r1, #20
	.loc 2 68 0
	strh	r3, [r2]
	.loc 2 69 0
	ldr	r3, .L25+8
	.loc 2 81 0
	add	sp, sp, #8
	.loc 2 69 0
	ldrh	r3, [r3]
	.loc 2 64 0
	@ lr needed for prologue
	.loc 2 69 0
	strh	r3, [r2]
	.loc 2 70 0
	ldr	r3, .L25+12
	.loc 2 81 0
	@ sp needed for prologue
	.loc 2 70 0
	ldrh	r3, [r3]
	strh	r3, [r2]
	.loc 2 71 0
	ldr	r3, .L25+16
	ldrh	r3, [r3]
	strh	r3, [r2]
	.loc 2 72 0
	ldrh	r3, [r1]
	strh	r3, [r2]
	.loc 2 73 0
	ldr	r3, .L25+20
	ldrh	r3, [r3]
	strh	r3, [r2]
	.loc 2 74 0
	ldr	r3, .L25+24
	ldrh	r3, [r3]
	strh	r3, [r2]
	.loc 2 75 0
	ldr	r3, .L25+28
	ldrh	r3, [r3]
	strh	r3, [r2]
	.loc 2 76 0
	ldrh	r3, [r1]
	.loc 2 77 0
	ldr	r1, .L25+32
	.loc 2 76 0
	strh	r3, [r2]
	.loc 2 77 0
	ldrh	r3, [r1]
	strh	r3, [r2]
	.loc 2 78 0
	ldrh	r3, [r1]
	.loc 2 79 0
	sub	r1, r1, #92
	.loc 2 78 0
	strh	r3, [r2]
	.loc 2 79 0
	ldrh	r3, [r1]
	strh	r3, [r2]
	.loc 2 80 0
	ldrh	r3, [r1]
	strh	r3, [r2]
	.loc 2 81 0
	bx	lr
.L26:
	.align	2
.L25:
	.word	148897794
	.word	134217742
	.word	142614524
	.word	134221898
	.word	142607890
	.word	142613350
	.word	142606342
	.word	134219790
	.word	134218212
.LFE107:
	.size	_m3_lock, .-_m3_lock
	.align	2
	.global	_opera_unlock
	.code 16
	.thumb_func
	.type	_opera_unlock, %function
_opera_unlock:
.LFB108:
	.loc 2 86 0
	.loc 2 87 0
	ldr	r3, .L29
	mov	r0, #144
	mov	r2, #1
	lsl	r0, r0, #20
	.loc 2 86 0
	@ lr needed for prologue
	.loc 2 87 0
	strh	r2, [r3]
	.loc 2 90 0
	@ sp needed for prologue
	bx	lr
.L30:
	.align	2
.L29:
	.word	136577024
.LFE108:
	.size	_opera_unlock, .-_opera_unlock
	.align	2
	.global	_opera_lock
	.code 16
	.thumb_func
	.type	_opera_lock, %function
_opera_lock:
.LFB109:
	.loc 2 95 0
	.loc 2 96 0
	ldr	r3, .L33
	mov	r2, #0
	.loc 2 95 0
	@ lr needed for prologue
	.loc 2 96 0
	strh	r2, [r3]
	.loc 2 97 0
	@ sp needed for prologue
	bx	lr
.L34:
	.align	2
.L33:
	.word	136577024
.LFE109:
	.size	_opera_lock, .-_opera_lock
	.align	2
	.global	_g6_unlock
	.code 16
	.thumb_func
	.type	_g6_unlock, %function
_g6_unlock:
.LFB110:
	.loc 2 103 0
	.loc 2 106 0
	mov	r3, #144
	.loc 2 103 0
	sub	sp, sp, #8
.LCFI3:
	.loc 2 106 0
	lsl	r3, r3, #20
	ldrh	r3, [r3]
	mov	r1, sp
	add	r1, r1, #6
	strh	r3, [r1]
.LVL7:
	.loc 2 107 0
	ldr	r3, .L37
	.loc 2 108 0
	ldr	r2, .L37+4
	.loc 2 107 0
	ldrh	r3, [r3]
	.loc 2 119 0
	mov	r0, #128
	.loc 2 107 0
	strh	r3, [r1]
	.loc 2 108 0
	ldrh	r3, [r2]
	.loc 2 119 0
	lsl	r0, r0, #20
	.loc 2 108 0
	strh	r3, [r1]
	.loc 2 109 0
	ldrh	r3, [r2]
	.loc 2 122 0
	add	sp, sp, #8
	.loc 2 109 0
	strh	r3, [r1]
	.loc 2 110 0
	ldrh	r3, [r2]
	.loc 2 111 0
	add	r2, r2, #16
	.loc 2 110 0
	strh	r3, [r1]
	.loc 2 111 0
	ldrh	r3, [r2]
	.loc 2 103 0
	@ lr needed for prologue
	.loc 2 111 0
	strh	r3, [r1]
	.loc 2 112 0
	ldrh	r3, [r2]
	.loc 2 122 0
	@ sp needed for prologue
	.loc 2 112 0
	strh	r3, [r1]
	.loc 2 113 0
	ldrh	r3, [r2]
	.loc 2 114 0
	sub	r2, r2, #178
	.loc 2 113 0
	strh	r3, [r1]
	.loc 2 114 0
	ldrh	r3, [r2]
	strh	r3, [r1]
	.loc 2 115 0
	ldrh	r3, [r2]
	strh	r3, [r1]
	.loc 2 116 0
	ldrh	r3, [r2]
	strh	r3, [r1]
	.loc 2 117 0
	ldr	r3, .L37+8
	ldrh	r3, [r3]
	strh	r3, [r1]
	.loc 2 118 0
	ldr	r3, .L37+12
	ldrh	r3, [r3]
	strh	r3, [r1]
	.loc 2 119 0
	ldr	r3, .L37+16
	ldrh	r3, [r3]
	strh	r3, [r1]
	.loc 2 122 0
	bx	lr
.L38:
	.align	2
.L37:
	.word	167772128
	.word	167772140
	.word	153092108
	.word	167772144
	.word	167772136
.LFE110:
	.size	_g6_unlock, .-_g6_unlock
	.align	2
	.global	_g6_lock
	.code 16
	.thumb_func
	.type	_g6_lock, %function
_g6_lock:
.LFB111:
	.loc 2 127 0
	.loc 2 130 0
	mov	r3, #144
	.loc 2 127 0
	sub	sp, sp, #8
.LCFI4:
	.loc 2 130 0
	lsl	r3, r3, #20
	ldrh	r3, [r3]
	mov	r1, sp
	add	r1, r1, #6
	strh	r3, [r1]
.LVL8:
	.loc 2 131 0
	ldr	r3, .L41
	.loc 2 132 0
	ldr	r2, .L41+4
	.loc 2 131 0
	ldrh	r3, [r3]
	.loc 2 144 0
	add	sp, sp, #8
	.loc 2 131 0
	strh	r3, [r1]
	.loc 2 132 0
	ldrh	r3, [r2]
	.loc 2 127 0
	@ lr needed for prologue
	.loc 2 132 0
	strh	r3, [r1]
	.loc 2 133 0
	ldrh	r3, [r2]
	.loc 2 144 0
	@ sp needed for prologue
	.loc 2 133 0
	strh	r3, [r1]
	.loc 2 134 0
	ldrh	r3, [r2]
	.loc 2 135 0
	add	r2, r2, #16
	.loc 2 134 0
	strh	r3, [r1]
	.loc 2 135 0
	ldrh	r3, [r2]
	strh	r3, [r1]
	.loc 2 136 0
	ldrh	r3, [r2]
	strh	r3, [r1]
	.loc 2 137 0
	ldrh	r3, [r2]
	.loc 2 138 0
	sub	r2, r2, #178
	.loc 2 137 0
	strh	r3, [r1]
	.loc 2 138 0
	ldrh	r3, [r2]
	strh	r3, [r1]
	.loc 2 139 0
	ldrh	r3, [r2]
	strh	r3, [r1]
	.loc 2 140 0
	ldrh	r3, [r2]
	strh	r3, [r1]
	.loc 2 141 0
	ldr	r3, .L41+8
	ldrh	r3, [r3]
	strh	r3, [r1]
	.loc 2 142 0
	ldr	r3, .L41+12
	ldrh	r3, [r3]
	strh	r3, [r1]
	.loc 2 143 0
	ldr	r3, .L41+16
	ldrh	r3, [r3]
	strh	r3, [r1]
	.loc 2 144 0
	bx	lr
.L42:
	.align	2
.L41:
	.word	167772128
	.word	167772140
	.word	153092102
	.word	167772144
	.word	167772136
.LFE111:
	.size	_g6_lock, .-_g6_lock
	.align	2
	.global	_ez_unlock
	.code 16
	.thumb_func
	.type	_ez_unlock, %function
_ez_unlock:
.LFB112:
	.loc 2 149 0
	push	{r4, r5, r6, r7, lr}
.LCFI5:
	.loc 2 150 0
	ldr	r0, .L45
	ldr	r7, .L45+4
	.loc 2 152 0
	ldr	r3, .L45+8
	.loc 2 151 0
	mov	r5, #128
	mov	r1, #168
	lsl	r1, r1, #5
	lsl	r5, r5, #20
	.loc 2 150 0
	strh	r0, [r7]
	.loc 2 153 0
	ldr	r6, .L45+12
	.loc 2 151 0
	strh	r1, [r5]
	.loc 2 152 0
	strh	r0, [r3]
	.loc 2 154 0
	mov	r3, #148
	lsl	r3, r3, #20
	mov	r2, #0
	.loc 2 153 0
	strh	r1, [r6]
	.loc 2 154 0
	strh	r2, [r3]
	.loc 2 155 0
	ldr	r3, .L45+16
	.loc 2 156 0
	ldr	r4, .L45+20
	.loc 2 155 0
	strh	r0, [r3]
	mov	ip, r3
	.loc 2 160 0
	ldr	r3, .L45+8
	.loc 2 156 0
	strh	r1, [r4]
	.loc 2 162 0
	ldr	r2, .L45+24
	.loc 2 158 0
	strh	r0, [r7]
	.loc 2 159 0
	strh	r1, [r5]
	.loc 2 160 0
	strh	r0, [r3]
	.loc 2 162 0
	ldr	r3, .L45+28
	.loc 2 161 0
	strh	r1, [r6]
	.loc 2 162 0
	strh	r2, [r3]
	.loc 2 167 0
	ldr	r3, .L45+8
	.loc 2 163 0
	strh	r1, [r4]
	.loc 2 165 0
	strh	r0, [r7]
	.loc 2 166 0
	strh	r1, [r5]
	.loc 2 167 0
	strh	r0, [r3]
	.loc 2 170 0
	mov	r0, #132
	.loc 2 169 0
	mov	r3, ip
	.loc 2 170 0
	lsl	r0, r0, #20
	.loc 2 168 0
	strh	r1, [r6]
	.loc 2 169 0
	strh	r1, [r3]
	.loc 2 173 0
	@ sp needed for prologue
	.loc 2 170 0
	strh	r1, [r4]
	.loc 2 173 0
	pop	{r4, r5, r6, r7, pc}
.L46:
	.align	2
.L45:
	.word	-11776
	.word	167641088
	.word	134348800
	.word	134479872
	.word	163840000
	.word	167510016
	.word	-32768
	.word	159907840
.LFE112:
	.size	_ez_unlock, .-_ez_unlock
	.align	2
	.global	_ez_lock
	.code 16
	.thumb_func
	.type	_ez_lock, %function
_ez_lock:
.LFB113:
	.loc 2 178 0
	push	{r4, r5, r6, r7, lr}
.LCFI6:
	.loc 2 179 0
	ldr	r0, .L49
	ldr	r7, .L49+4
	.loc 2 181 0
	ldr	r6, .L49+8
	.loc 2 182 0
	ldr	r5, .L49+12
	.loc 2 183 0
	ldr	r3, .L49+16
	.loc 2 180 0
	mov	r4, #128
	mov	r1, #168
	lsl	r1, r1, #5
	lsl	r4, r4, #20
	.loc 2 179 0
	strh	r0, [r7]
	.loc 2 180 0
	strh	r1, [r4]
	.loc 2 181 0
	strh	r0, [r6]
	.loc 2 182 0
	strh	r1, [r5]
	.loc 2 183 0
	strh	r0, [r3]
	.loc 2 184 0
	ldr	r3, .L49+20
	.loc 2 190 0
	mov	r2, #0
	.loc 2 184 0
	strh	r1, [r3]
	mov	ip, r3
	.loc 2 190 0
	ldr	r3, .L49+24
	.loc 2 186 0
	strh	r0, [r7]
	.loc 2 187 0
	strh	r1, [r4]
	.loc 2 188 0
	strh	r0, [r6]
	.loc 2 189 0
	strh	r1, [r5]
	.loc 2 190 0
	strh	r2, [r3]
	.loc 2 191 0
	mov	r3, ip
	strh	r1, [r3]
	.loc 2 197 0
	mov	r3, #148
	lsl	r3, r3, #20
	mov	r2, #1
	.loc 2 193 0
	strh	r0, [r7]
	.loc 2 194 0
	strh	r1, [r4]
	.loc 2 195 0
	strh	r0, [r6]
	.loc 2 196 0
	strh	r1, [r5]
	.loc 2 197 0
	strh	r2, [r3]
	.loc 2 198 0
	ldr	r3, .L49+16
	.loc 2 200 0
	@ sp needed for prologue
	.loc 2 198 0
	strh	r1, [r3]
	.loc 2 199 0
	mov	r3, ip
	strh	r1, [r3]
	.loc 2 200 0
	pop	{r4, r5, r6, r7, pc}
.L50:
	.align	2
.L49:
	.word	-11776
	.word	167641088
	.word	134348800
	.word	134479872
	.word	163840000
	.word	167510016
	.word	159907840
.LFE113:
	.size	_ez_lock, .-_ez_lock
	.align	2
	.code 16
	.thumb_func
	.type	_ram_test, %function
_ram_test:
.LFB114:
	.loc 2 218 0
	push	{r4, lr}
.LCFI7:
	.loc 2 219 0
	ldr	r3, .L57
	ldr	r3, [r3]
	blx	r3
	.loc 2 221 0
	ldr	r2, .L57+4
	.loc 2 219 0
	mov	r4, r0
.LVL9:
	.loc 2 221 0
	strh	r2, [r0]
	.loc 2 222 0
	ldrh	r3, [r0]
	cmp	r3, r2
	beq	.L52
.LVL10:
	mov	r0, #0
.LVL11:
	b	.L54
.LVL12:
.L52:
	.loc 2 224 0
	ldr	r3, .L57+8
	ldr	r3, [r3]
	blx	r3
.LVL13:
	.loc 2 226 0
	ldr	r2, .L57+12
	strh	r2, [r4]
	.loc 2 227 0
	ldrh	r3, [r4]
	eor	r3, r3, r2
	neg	r3, r3
	lsr	r0, r3, #31
.L54:
	.loc 2 234 0
	@ sp needed for prologue
.LVL14:
	pop	{r4, pc}
.L58:
	.align	2
.L57:
	.word	_unlock
	.word	4660
	.word	_lock
	.word	17185
.LFE114:
	.size	_ram_test, .-_ram_test
	.align	2
	.global	ram_init
	.code 16
	.thumb_func
	.type	ram_init, %function
ram_init:
.LFB116:
	.loc 2 263 0
	push	{r4, r5, r6, lr}
.LCFI8:
.LVL15:
	.loc 2 263 0
	mov	r4, r0
	.loc 2 266 0
	sub	r4, r4, #1
	.loc 2 264 0
	mov	r0, #1
.LVL16:
	mov	r1, #1
	.loc 2 266 0
	lsl	r4, r4, #24
	.loc 2 264 0
	bl	sysSetBusOwners
	.loc 2 266 0
	lsr	r3, r4, #24
	cmp	r3, #4
	bhi	.L60
	ldr	r2, .L83
	lsl	r3, r3, #2
	ldr	r3, [r3, r2]
	ldr	r1, .L83+4
	ldr	r2, .L83+8
	ldr	r0, .L83+12
	mov	pc, r3
	.section	.rodata
	.align	2
	.align	2
.L66:
	.word	.L61
	.word	.L62
	.word	.L63
	.word	.L64
	.word	.L65
	.text
.L61:
	.loc 2 270 0
	ldr	r3, .L83+16
	str	r3, [r2]
	.loc 2 271 0
	ldr	r3, .L83+20
	str	r3, [r1]
	.loc 2 272 0
	mov	r3, #1
	b	.L82
.L62:
	.loc 2 278 0
	ldr	r3, .L83+24
	str	r3, [r2]
	.loc 2 279 0
	ldr	r3, .L83+28
	str	r3, [r1]
	.loc 2 280 0
	mov	r3, #2
	b	.L82
.L63:
	.loc 2 286 0
	ldr	r3, .L83+32
	str	r3, [r2]
	.loc 2 287 0
	ldr	r3, .L83+36
	str	r3, [r1]
	.loc 2 288 0
	mov	r3, #3
	b	.L82
.L64:
	.loc 2 294 0
	ldr	r3, .L83+40
	str	r3, [r2]
	.loc 2 295 0
	ldr	r3, .L83+44
	str	r3, [r1]
	.loc 2 296 0
	mov	r3, #4
	b	.L82
.L65:
	.loc 2 302 0
	ldr	r3, .L83+48
	str	r3, [r2]
	.loc 2 303 0
	ldr	r3, .L83+52
	str	r3, [r1]
	.loc 2 304 0
	mov	r3, #5
.L82:
	strb	r3, [r0]
.LBB4:
.LBB5:
	.loc 2 241 0
	ldr	r3, .L83+8
	ldr	r2, [r3]
	b	.L76
.L60:
.LBE5:
.LBE4:
	.loc 2 312 0
	ldr	r3, .L83+48
	ldr	r6, .L83+8
	.loc 2 313 0
	ldr	r5, .L83+4
	.loc 2 312 0
	str	r3, [r6]
	.loc 2 313 0
	ldr	r3, .L83+52
	.loc 2 314 0
	ldr	r4, .L83+12
	.loc 2 313 0
	str	r3, [r5]
	.loc 2 314 0
	mov	r3, #5
	strb	r3, [r4]
	.loc 2 316 0
	bl	_ram_test
	cmp	r0, #0
	bne	.L68
	.loc 2 322 0
	ldr	r3, .L83+16
	str	r3, [r6]
	.loc 2 323 0
	ldr	r3, .L83+20
	str	r3, [r5]
	.loc 2 324 0
	mov	r3, #1
	strb	r3, [r4]
	.loc 2 326 0
	bl	_ram_test
	cmp	r0, #0
	bne	.L68
	.loc 2 332 0
	ldr	r3, .L83+24
	str	r3, [r6]
	.loc 2 333 0
	ldr	r3, .L83+28
	str	r3, [r5]
	.loc 2 334 0
	mov	r3, #2
	strb	r3, [r4]
	.loc 2 336 0
	bl	_ram_test
	cmp	r0, #0
	bne	.L68
	.loc 2 342 0
	ldr	r3, .L83+32
	str	r3, [r6]
	.loc 2 343 0
	ldr	r3, .L83+36
	str	r3, [r5]
	.loc 2 344 0
	mov	r3, #3
	strb	r3, [r4]
	.loc 2 346 0
	bl	_ram_test
	cmp	r0, #0
	bne	.L68
	.loc 2 352 0
	ldr	r3, .L83+40
	str	r3, [r6]
	.loc 2 353 0
	ldr	r3, .L83+44
	str	r3, [r5]
	.loc 2 354 0
	mov	r3, #4
	strb	r3, [r4]
	.loc 2 356 0
	bl	_ram_test
	cmp	r0, #0
	bne	.L68
	.loc 2 362 0
	str	r0, [r6]
	.loc 2 363 0
	str	r0, [r5]
	.loc 2 364 0
	strb	r0, [r4]
	b	.L74
.L68:
.LBB6:
.LBB7:
	.loc 2 241 0
	ldr	r3, .L83+8
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L75
.L76:
	ldr	r3, .L83+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L75
.LBE7:
	.loc 2 244 0
	blx	r2
.LBB8:
	.loc 2 245 0
	ldr	r2, .L83+56
	mov	r3, #0
	str	r3, [r2]
	.loc 2 247 0
	ldr	r3, .L83+60
	mov	r1, #0
.LVL17:
	strh	r3, [r0]
	b	.L78
.LVL18:
.L79:
	.loc 2 250 0
	mov	r3, #0
	strh	r3, [r4]
	.loc 2 252 0
	strh	r2, [r0]
.LVL19:
.L78:
.LVL20:
	.loc 2 248 0
	ldrh	r3, [r0]
	.loc 2 252 0
	mov	r4, r0
	.loc 2 248 0
	mov	r2, r3
	mov	r3, #128
	lsl	r3, r3, #2
	add	r1, r1, r3
	mov	r3, #128
	lsl	r3, r3, #3
	add	r0, r0, r3
	ldr	r3, .L83+60
	cmp	r2, r3
	beq	.L79
	.loc 2 254 0
	ldr	r0, .L83+64
	ldr	r2, .L83+56
	add	r3, r1, r0
	lsl	r3, r3, #1
	str	r3, [r2]
	.loc 2 256 0
	ldr	r3, .L83+4
	ldr	r3, [r3]
	blx	r3
.L75:
	mov	r0, #1
.L74:
.LBE8:
.LBE6:
	.loc 2 374 0
	@ sp needed for prologue
	pop	{r4, r5, r6, pc}
.L84:
	.align	2
.L83:
	.word	.L66
	.word	_lock
	.word	_unlock
	.word	_type
	.word	_sc_unlock
	.word	_sc_lock
	.word	_m3_unlock
	.word	_m3_lock
	.word	_opera_unlock
	.word	_opera_lock
	.word	_g6_unlock
	.word	_g6_lock
	.word	_ez_unlock
	.word	_ez_lock
	.word	_size
	.word	9320
	.word	-512
.LFE116:
	.size	ram_init, .-ram_init
	.align	2
	.global	ram_type
	.code 16
	.thumb_func
	.type	ram_type, %function
ram_type:
.LFB117:
	.loc 2 380 0
	ldr	r3, .L87
	@ lr needed for prologue
	.loc 2 380 0
	ldrb	r0, [r3]
	.loc 2 382 0
	@ sp needed for prologue
	bx	lr
.L88:
	.align	2
.L87:
	.word	_type
.LFE117:
	.size	ram_type, .-ram_type
	.align	2
	.global	ram_type_string
	.code 16
	.thumb_func
	.type	ram_type_string, %function
ram_type_string:
.LFB118:
	.loc 2 388 0
	ldr	r3, .L91
	ldr	r2, .L91+4
	ldrb	r3, [r3]
	@ lr needed for prologue
	.loc 2 388 0
	lsl	r3, r3, #2
	ldr	r0, [r3, r2]
	.loc 2 390 0
	@ sp needed for prologue
	bx	lr
.L92:
	.align	2
.L91:
	.word	_type
	.word	_types
.LFE118:
	.size	ram_type_string, .-ram_type_string
	.align	2
	.global	ram_size
	.code 16
	.thumb_func
	.type	ram_size, %function
ram_size:
.LFB119:
	.loc 2 396 0
	ldr	r3, .L95
	@ lr needed for prologue
	.loc 2 396 0
	ldr	r0, [r3]
	.loc 2 398 0
	@ sp needed for prologue
	bx	lr
.L96:
	.align	2
.L95:
	.word	_size
.LFE119:
	.size	ram_size, .-ram_size
	.align	2
	.global	ram_unlock
	.code 16
	.thumb_func
	.type	ram_unlock, %function
ram_unlock:
.LFB120:
	.loc 2 404 0
	push	{lr}
.LCFI9:
	sub	sp, sp, #4
.LCFI10:
	.loc 2 405 0
	mov	r0, #1
	mov	r1, #1
	bl	sysSetBusOwners
	.loc 2 407 0
	ldr	r3, .L102
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L98
	mov	r0, #0
	b	.L100
.L98:
	.loc 2 408 0
	blx	r3
.L100:
	.loc 2 410 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L103:
	.align	2
.L102:
	.word	_unlock
.LFE120:
	.size	ram_unlock, .-ram_unlock
	.align	2
	.global	ram_lock
	.code 16
	.thumb_func
	.type	ram_lock, %function
ram_lock:
.LFB121:
	.loc 2 416 0
	push	{lr}
.LCFI11:
	sub	sp, sp, #4
.LCFI12:
	.loc 2 417 0
	mov	r0, #1
	mov	r1, #1
	bl	sysSetBusOwners
	.loc 2 419 0
	ldr	r3, .L108
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L107
	.loc 2 420 0
	blx	r3
.L107:
	.loc 2 421 0
	add	sp, sp, #4
	@ sp needed for prologue
	pop	{pc}
.L109:
	.align	2
.L108:
	.word	_lock
.LFE121:
	.size	ram_lock, .-ram_lock
	.align	2
	.global	ram_turbo
	.code 16
	.thumb_func
	.type	ram_turbo, %function
ram_turbo:
.LFB122:
	.loc 2 427 0
	push	{lr}
.LCFI13:
.LVL21:
	.loc 2 428 0
	cmp	r0, #0
	beq	.L111
	.loc 2 429 0
	ldr	r3, .L116
	mov	r1, #26
	ldrh	r2, [r3]
	orr	r2, r2, r1
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	b	.L115
.L111:
	.loc 2 431 0
	ldr	r3, .L116
	ldr	r1, .L116+4
	ldrh	r2, [r3]
	and	r2, r2, r1
.L115:
	strh	r2, [r3]
	.loc 2 432 0
	@ sp needed for prologue
	pop	{pc}
.L117:
	.align	2
.L116:
	.word	67109380
	.word	65509
.LFE122:
	.size	ram_turbo, .-ram_turbo
	.global	_types
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC23:
	.ascii	"Unknown\000"
	.align	2
.LC24:
	.ascii	"Supercard\000"
	.align	2
.LC25:
	.ascii	"M3\000"
	.align	2
.LC26:
	.ascii	"Opera\000"
	.align	2
.LC27:
	.ascii	"G6\000"
	.align	2
.LC28:
	.ascii	"EZ\000"
	.data
	.align	2
	.type	_types, %object
	.size	_types, 24
_types:
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.bss
	.align	2
_lock:
	.space	4
	.align	2
_unlock:
	.space	4
	.align	2
_size:
	.space	4
_type:
	.space	1
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI0-.LFB16
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
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x4
	.4byte	.LCFI1-.LFB106
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x4
	.4byte	.LCFI2-.LFB107
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x4
	.4byte	.LCFI3-.LFB110
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI4-.LFB111
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI5-.LFB112
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
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.byte	0x4
	.4byte	.LCFI6-.LFB113
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
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.byte	0x4
	.4byte	.LCFI7-.LFB114
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.byte	0x4
	.4byte	.LCFI8-.LFB116
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
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.byte	0x4
	.4byte	.LCFI9-.LFB120
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.byte	0x4
	.4byte	.LCFI11-.LFB121
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.byte	0x4
	.4byte	.LCFI13-.LFB122
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE36:
	.file 3 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 4 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 5 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/ram.h"
	.file 6 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 7 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB106-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE106-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB107-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE107-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB110-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE110-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB112-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB113-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB114-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB116-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB120-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LFB121-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB122-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x586
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF74
	.byte	0x1
	.4byte	.LASF75
	.4byte	.LASF76
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
	.byte	0x4
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
	.byte	0x4
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
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x44
	.4byte	0x3a
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x45
	.4byte	0x53
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x8
	.byte	0x4
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x61
	.4byte	0x53
	.uleb128 0x6
	.4byte	0xc5
	.byte	0x1
	.byte	0x3
	.byte	0x81
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
	.byte	0x81
	.4byte	0xb0
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0x7
	.uleb128 0x8
	.4byte	0x45
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.4byte	0x104
	.byte	0x1
	.byte	0x6
	.byte	0x9b
	.uleb128 0x7
	.4byte	.LASF19
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF20
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF21
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF22
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0xa0
	.4byte	0xe3
	.uleb128 0x9
	.4byte	0x187
	.2byte	0x2018
	.byte	0x6
	.2byte	0x119
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x11a
	.4byte	0x104
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x11d
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x120
	.4byte	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x121
	.4byte	0x8c
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x122
	.4byte	0x198
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x123
	.4byte	0x8c
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x124
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.byte	0x0
	.uleb128 0xb
	.4byte	0x198
	.4byte	0x8c
	.uleb128 0xc
	.4byte	0xd0
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8c
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x126
	.4byte	0x10f
	.uleb128 0x6
	.4byte	0x1d7
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF32
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x5
	.byte	0x10
	.4byte	0x1aa
	.uleb128 0xf
	.4byte	0x224
	.4byte	.LASF53
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x1
	.byte	0xd5
	.4byte	0xc5
	.byte	0x1
	.byte	0x50
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd5
	.4byte	0xc5
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0xd6
	.4byte	0x81
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF41
	.byte	0x2
	.byte	0x12
	.4byte	0x23a
	.4byte	.LFB104
	.4byte	.LFE104
	.byte	0x1
	.byte	0x5d
	.uleb128 0xd
	.byte	0x4
	.4byte	0xd7
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF42
	.byte	0x2
	.byte	0x1e
	.4byte	.LFB105
	.4byte	.LFE105
	.byte	0x1
	.byte	0x5d
	.uleb128 0x15
	.4byte	0x288
	.byte	0x1
	.4byte	.LASF45
	.byte	0x2
	.byte	0x28
	.4byte	0x23a
	.4byte	.LFB106
	.4byte	.LFE106
	.4byte	.LLST4
	.uleb128 0x16
	.4byte	.LASF44
	.byte	0x2
	.byte	0x29
	.4byte	0xa5
	.uleb128 0x17
	.ascii	"tmp\000"
	.byte	0x2
	.byte	0x2a
	.4byte	0xd7
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.byte	0x0
	.uleb128 0x18
	.4byte	0x2ba
	.byte	0x1
	.4byte	.LASF46
	.byte	0x2
	.byte	0x40
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LLST5
	.uleb128 0x16
	.4byte	.LASF44
	.byte	0x2
	.byte	0x41
	.4byte	0xa5
	.uleb128 0x17
	.ascii	"tmp\000"
	.byte	0x2
	.byte	0x42
	.4byte	0xd7
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF47
	.byte	0x2
	.byte	0x56
	.4byte	0x23a
	.4byte	.LFB108
	.4byte	.LFE108
	.byte	0x1
	.byte	0x5d
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF48
	.byte	0x2
	.byte	0x5f
	.4byte	.LFB109
	.4byte	.LFE109
	.byte	0x1
	.byte	0x5d
	.uleb128 0x15
	.4byte	0x318
	.byte	0x1
	.4byte	.LASF49
	.byte	0x2
	.byte	0x67
	.4byte	0x23a
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LLST8
	.uleb128 0x16
	.4byte	.LASF44
	.byte	0x2
	.byte	0x68
	.4byte	0xa5
	.uleb128 0x17
	.ascii	"tmp\000"
	.byte	0x2
	.byte	0x69
	.4byte	0xd7
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.byte	0x0
	.uleb128 0x18
	.4byte	0x34a
	.byte	0x1
	.4byte	.LASF50
	.byte	0x2
	.byte	0x7f
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST9
	.uleb128 0x16
	.4byte	.LASF44
	.byte	0x2
	.byte	0x80
	.4byte	0xa5
	.uleb128 0x17
	.ascii	"tmp\000"
	.byte	0x2
	.byte	0x81
	.4byte	0xd7
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF51
	.byte	0x2
	.byte	0x95
	.4byte	0x23a
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST10
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF52
	.byte	0x2
	.byte	0xb2
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST11
	.uleb128 0x1b
	.4byte	0x3a1
	.4byte	.LASF54
	.byte	0x2
	.byte	0xda
	.4byte	0xc5
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LLST12
	.uleb128 0x1c
	.ascii	"ram\000"
	.byte	0x2
	.byte	0xdb
	.4byte	0x23a
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x3b9
	.4byte	.LASF55
	.byte	0x2
	.byte	0xf0
	.byte	0x1
	.uleb128 0x1e
	.ascii	"ram\000"
	.byte	0x2
	.byte	0xf4
	.4byte	0x23a
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x404
	.byte	0x1
	.4byte	.LASF56
	.byte	0x2
	.2byte	0x107
	.byte	0x1
	.4byte	0xc5
	.4byte	.LFB116
	.4byte	.LFE116
	.4byte	.LLST14
	.uleb128 0x20
	.4byte	.LASF57
	.byte	0x2
	.2byte	0x105
	.4byte	0x1d7
	.4byte	.LLST15
	.uleb128 0x21
	.4byte	0x3a1
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x2
	.2byte	0x173
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x23
	.4byte	0x3ad
	.4byte	.LLST16
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF58
	.byte	0x2
	.2byte	0x17c
	.4byte	0x1d7
	.4byte	.LFB117
	.4byte	.LFE117
	.byte	0x1
	.byte	0x5d
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF59
	.byte	0x2
	.2byte	0x184
	.4byte	0x432
	.4byte	.LFB118
	.4byte	.LFE118
	.byte	0x1
	.byte	0x5d
	.uleb128 0xd
	.byte	0x4
	.4byte	0x438
	.uleb128 0x25
	.4byte	0xdc
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF60
	.byte	0x2
	.2byte	0x18c
	.4byte	0xa5
	.4byte	.LFB119
	.4byte	.LFE119
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF61
	.byte	0x2
	.2byte	0x194
	.4byte	0x23a
	.4byte	.LFB120
	.4byte	.LFE120
	.4byte	.LLST20
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF62
	.byte	0x2
	.2byte	0x1a0
	.4byte	.LFB121
	.4byte	.LFE121
	.4byte	.LLST21
	.uleb128 0x28
	.4byte	0x4ab
	.byte	0x1
	.4byte	.LASF63
	.byte	0x2
	.2byte	0x1ab
	.byte	0x1
	.4byte	.LFB122
	.4byte	.LFE122
	.4byte	.LLST22
	.uleb128 0x29
	.4byte	.LASF64
	.byte	0x2
	.2byte	0x1a9
	.4byte	0xc5
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2a
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x129
	.4byte	0x4b7
	.uleb128 0xd
	.byte	0x4
	.4byte	0x19e
	.uleb128 0x2b
	.4byte	0x4c8
	.4byte	0x23a
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x2
	.byte	0xd1
	.4byte	0x4d9
	.byte	0x5
	.byte	0x3
	.4byte	_unlock
	.uleb128 0xd
	.byte	0x4
	.4byte	0x4bd
	.uleb128 0x2d
	.4byte	0x4e6
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x2
	.byte	0xd2
	.4byte	0x4f7
	.byte	0x5
	.byte	0x3
	.4byte	_lock
	.uleb128 0xd
	.byte	0x4
	.4byte	0x4df
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x2
	.byte	0xd3
	.4byte	0xa5
	.byte	0x5
	.byte	0x3
	.4byte	_size
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x2
	.byte	0xd4
	.4byte	0x1d7
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0xb
	.4byte	0x52a
	.4byte	0x33
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF70
	.byte	0x7
	.byte	0x2c
	.4byte	0x51f
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0x542
	.4byte	0x33
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF71
	.byte	0x7
	.byte	0x2d
	.4byte	0x537
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0x55a
	.4byte	0x33
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF72
	.byte	0x7
	.byte	0x2e
	.4byte	0x54f
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0x577
	.4byte	0x432
	.uleb128 0x30
	.4byte	0xd0
	.byte	0x5
	.byte	0x0
	.uleb128 0x31
	.4byte	.LASF73
	.byte	0x2
	.byte	0xd5
	.4byte	0x567
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_types
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
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x6
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.4byte	0x110
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x58a
	.4byte	0x224
	.ascii	"_sc_unlock\000"
	.4byte	0x240
	.ascii	"_sc_lock\000"
	.4byte	0x252
	.ascii	"_m3_unlock\000"
	.4byte	0x288
	.ascii	"_m3_lock\000"
	.4byte	0x2ba
	.ascii	"_opera_unlock\000"
	.4byte	0x2d0
	.ascii	"_opera_lock\000"
	.4byte	0x2e2
	.ascii	"_g6_unlock\000"
	.4byte	0x318
	.ascii	"_g6_lock\000"
	.4byte	0x34a
	.ascii	"_ez_unlock\000"
	.4byte	0x362
	.ascii	"_ez_lock\000"
	.4byte	0x3b9
	.ascii	"ram_init\000"
	.4byte	0x404
	.ascii	"ram_type\000"
	.4byte	0x41b
	.ascii	"ram_type_string\000"
	.4byte	0x43d
	.ascii	"ram_size\000"
	.4byte	0x454
	.ascii	"ram_unlock\000"
	.4byte	0x46d
	.ascii	"ram_lock\000"
	.4byte	0x482
	.ascii	"ram_turbo\000"
	.4byte	0x577
	.ascii	"_types\000"
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
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF70:
	.ascii	"COS_bin\000"
.LASF74:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF51:
	.ascii	"_ez_unlock\000"
.LASF56:
	.ascii	"ram_init\000"
.LASF32:
	.ascii	"DETECT_RAM\000"
.LASF46:
	.ascii	"_m3_lock\000"
.LASF41:
	.ascii	"_sc_unlock\000"
.LASF47:
	.ascii	"_opera_unlock\000"
.LASF36:
	.ascii	"G6_RAM\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF58:
	.ascii	"ram_type\000"
.LASF13:
	.ascii	"float\000"
.LASF55:
	.ascii	"_ram_precalc_size\000"
.LASF72:
	.ascii	"TAN_bin\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF24:
	.ascii	"matrixMode\000"
.LASF75:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/ram.c\000"
.LASF62:
	.ascii	"ram_lock\000"
.LASF19:
	.ascii	"GL_PROJECTION\000"
.LASF40:
	.ascii	"arm9card\000"
.LASF29:
	.ascii	"nextPBlock\000"
.LASF16:
	.ascii	"true\000"
.LASF49:
	.ascii	"_g6_unlock\000"
.LASF18:
	.ascii	"char\000"
.LASF65:
	.ascii	"glGlob\000"
.LASF11:
	.ascii	"uint16\000"
.LASF69:
	.ascii	"_type\000"
.LASF25:
	.ascii	"clearColor\000"
.LASF63:
	.ascii	"ram_turbo\000"
.LASF50:
	.ascii	"_g6_lock\000"
.LASF28:
	.ascii	"nextBlock\000"
.LASF8:
	.ascii	"long long int\000"
.LASF71:
	.ascii	"SIN_bin\000"
.LASF68:
	.ascii	"_size\000"
.LASF39:
	.ascii	"arm9rom\000"
.LASF17:
	.ascii	"bool\000"
.LASF73:
	.ascii	"_types\000"
.LASF33:
	.ascii	"SC_RAM\000"
.LASF37:
	.ascii	"EZ_RAM\000"
.LASF53:
	.ascii	"sysSetBusOwners\000"
.LASF12:
	.ascii	"uint32\000"
.LASF38:
	.ascii	"RAM_TYPE\000"
.LASF26:
	.ascii	"textures\000"
.LASF61:
	.ascii	"ram_unlock\000"
.LASF64:
	.ascii	"enable\000"
.LASF76:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF2:
	.ascii	"short int\000"
.LASF15:
	.ascii	"false\000"
.LASF4:
	.ascii	"long int\000"
.LASF31:
	.ascii	"gl_hidden_globals\000"
.LASF43:
	.ascii	"pattern\000"
.LASF22:
	.ascii	"GL_TEXTURE\000"
.LASF21:
	.ascii	"GL_MODELVIEW\000"
.LASF57:
	.ascii	"type\000"
.LASF44:
	.ascii	"mode\000"
.LASF20:
	.ascii	"GL_POSITION\000"
.LASF67:
	.ascii	"_lock\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF66:
	.ascii	"_unlock\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF23:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF42:
	.ascii	"_sc_lock\000"
.LASF30:
	.ascii	"nameCount\000"
.LASF48:
	.ascii	"_opera_lock\000"
.LASF0:
	.ascii	"signed char\000"
.LASF35:
	.ascii	"OPERA_RAM\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF34:
	.ascii	"M3_RAM\000"
.LASF14:
	.ascii	"double\000"
.LASF60:
	.ascii	"ram_size\000"
.LASF27:
	.ascii	"activeTexture\000"
.LASF45:
	.ascii	"_m3_unlock\000"
.LASF52:
	.ascii	"_ez_lock\000"
.LASF59:
	.ascii	"ram_type_string\000"
.LASF54:
	.ascii	"_ram_test\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
