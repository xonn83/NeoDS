	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
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
	.global	_sc_unlock
	.code	16
	.thumb_func
	.type	_sc_unlock, %function
_sc_unlock:
.LFB163:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/ram.c"
	.loc 1 18 0
	.loc 1 19 0
	ldr	r3, .L3
	ldr	r2, .L3+4
	.loc 1 22 0
	mov	r0, #128
	.loc 1 19 0
	strh	r2, [r3]
	.loc 1 20 0
	strh	r2, [r3]
	.loc 1 21 0
	mov	r2, #5
	strh	r2, [r3]
	.loc 1 22 0
	lsl	r0, r0, #20
	strh	r2, [r3]
	.loc 1 25 0
	@ sp needed for prologue
	bx	lr
.L4:
	.align	2
.L3:
	.word	167772158
	.word	-23206
.LFE163:
	.size	_sc_unlock, .-_sc_unlock
	.align	2
	.global	_sc_lock
	.code	16
	.thumb_func
	.type	_sc_lock, %function
_sc_lock:
.LFB164:
	.loc 1 30 0
	.loc 1 31 0
	ldr	r3, .L7
	ldr	r2, .L7+4
	.loc 1 35 0
	@ sp needed for prologue
	.loc 1 31 0
	strh	r2, [r3]
	.loc 1 32 0
	strh	r2, [r3]
	.loc 1 33 0
	mov	r2, #3
	strh	r2, [r3]
	.loc 1 34 0
	strh	r2, [r3]
	.loc 1 35 0
	bx	lr
.L8:
	.align	2
.L7:
	.word	167772158
	.word	-23206
.LFE164:
	.size	_sc_lock, .-_sc_lock
	.align	2
	.global	_m3_unlock
	.code	16
	.thumb_func
	.type	_m3_unlock, %function
_m3_unlock:
.LFB165:
	.loc 1 40 0
	.loc 1 43 0
	ldr	r3, .L11
	.loc 1 40 0
	sub	sp, sp, #8
.LCFI0:
	.loc 1 43 0
	ldrh	r2, [r3]
	mov	r3, sp
	add	r3, r3, #6
	strh	r2, [r3]
.LVL0:
	.loc 1 44 0
	ldr	r2, .L11+4
.LVL1:
	.loc 1 48 0
	mov	r0, #128
	.loc 1 44 0
	ldrh	r2, [r2]
	.loc 1 48 0
	lsl	r0, r0, #20
	.loc 1 44 0
	strh	r2, [r3]
	.loc 1 45 0
	ldr	r2, .L11+8
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 46 0
	ldr	r2, .L11+12
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 47 0
	ldr	r2, .L11+16
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 48 0
	ldrh	r2, [r0]
	strh	r2, [r3]
	.loc 1 49 0
	ldr	r2, .L11+20
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 50 0
	ldr	r2, .L11+24
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 51 0
	ldr	r2, .L11+28
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 52 0
	ldrh	r2, [r0]
	strh	r2, [r3]
	.loc 1 53 0
	ldr	r2, .L11+32
	ldrh	r1, [r2]
	strh	r1, [r3]
	.loc 1 54 0
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 55 0
	ldr	r2, .L11+36
	ldrh	r1, [r2]
	strh	r1, [r3]
	.loc 1 56 0
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 59 0
	add	sp, sp, #8
	@ sp needed for prologue
	bx	lr
.L12:
	.align	2
.L11:
	.word	148897794
	.word	134217742
	.word	142614524
	.word	134221898
	.word	142607890
	.word	142613350
	.word	142606348
	.word	134219790
	.word	134218212
	.word	134218120
.LFE165:
	.size	_m3_unlock, .-_m3_unlock
	.align	2
	.global	_m3_lock
	.code	16
	.thumb_func
	.type	_m3_lock, %function
_m3_lock:
.LFB166:
	.loc 1 64 0
	.loc 1 67 0
	ldr	r3, .L15
	.loc 1 64 0
	sub	sp, sp, #8
.LCFI1:
	.loc 1 67 0
	ldrh	r2, [r3]
	mov	r3, sp
	add	r3, r3, #6
	strh	r2, [r3]
.LVL2:
	.loc 1 68 0
	ldr	r2, .L15+4
.LVL3:
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 69 0
	ldr	r2, .L15+8
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 70 0
	ldr	r2, .L15+12
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 71 0
	ldr	r2, .L15+16
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 72 0
	mov	r2, #128
	lsl	r2, r2, #20
	ldrh	r1, [r2]
	strh	r1, [r3]
	.loc 1 73 0
	ldr	r1, .L15+20
	ldrh	r1, [r1]
	strh	r1, [r3]
	.loc 1 74 0
	ldr	r1, .L15+24
	ldrh	r1, [r1]
	strh	r1, [r3]
	.loc 1 75 0
	ldr	r1, .L15+28
	ldrh	r1, [r1]
	strh	r1, [r3]
	.loc 1 76 0
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 77 0
	ldr	r2, .L15+32
	ldrh	r1, [r2]
	strh	r1, [r3]
	.loc 1 78 0
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 79 0
	ldr	r2, .L15+36
	ldrh	r1, [r2]
	strh	r1, [r3]
	.loc 1 80 0
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 81 0
	add	sp, sp, #8
	@ sp needed for prologue
	bx	lr
.L16:
	.align	2
.L15:
	.word	148897794
	.word	134217742
	.word	142614524
	.word	134221898
	.word	142607890
	.word	142613350
	.word	142606342
	.word	134219790
	.word	134218212
	.word	134218120
.LFE166:
	.size	_m3_lock, .-_m3_lock
	.align	2
	.global	_opera_unlock
	.code	16
	.thumb_func
	.type	_opera_unlock, %function
_opera_unlock:
.LFB167:
	.loc 1 86 0
	.loc 1 87 0
	ldr	r3, .L19
	mov	r2, #1
	mov	r0, #144
	lsl	r0, r0, #20
	strh	r2, [r3]
	.loc 1 90 0
	@ sp needed for prologue
	bx	lr
.L20:
	.align	2
.L19:
	.word	136577024
.LFE167:
	.size	_opera_unlock, .-_opera_unlock
	.align	2
	.global	_opera_lock
	.code	16
	.thumb_func
	.type	_opera_lock, %function
_opera_lock:
.LFB168:
	.loc 1 95 0
	.loc 1 96 0
	ldr	r3, .L23
	mov	r2, #0
	strh	r2, [r3]
	.loc 1 97 0
	@ sp needed for prologue
	bx	lr
.L24:
	.align	2
.L23:
	.word	136577024
.LFE168:
	.size	_opera_lock, .-_opera_lock
	.align	2
	.global	_g6_unlock
	.code	16
	.thumb_func
	.type	_g6_unlock, %function
_g6_unlock:
.LFB169:
	.loc 1 103 0
	.loc 1 106 0
	mov	r3, #144
	.loc 1 103 0
	sub	sp, sp, #8
.LCFI2:
	.loc 1 106 0
	lsl	r3, r3, #20
	ldrh	r2, [r3]
	mov	r3, sp
	add	r3, r3, #6
	strh	r2, [r3]
.LVL4:
	.loc 1 107 0
	ldr	r2, .L27
.LVL5:
	.loc 1 119 0
	mov	r0, #128
	.loc 1 107 0
	ldrh	r2, [r2]
	.loc 1 119 0
	lsl	r0, r0, #20
	.loc 1 107 0
	strh	r2, [r3]
	.loc 1 108 0
	ldr	r2, .L27+4
	ldrh	r1, [r2]
	strh	r1, [r3]
	.loc 1 109 0
	ldrh	r1, [r2]
	strh	r1, [r3]
	.loc 1 110 0
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 111 0
	ldr	r2, .L27+8
	ldrh	r1, [r2]
	strh	r1, [r3]
	.loc 1 112 0
	ldrh	r1, [r2]
	strh	r1, [r3]
	.loc 1 113 0
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 114 0
	ldr	r2, .L27+12
	ldrh	r1, [r2]
	strh	r1, [r3]
	.loc 1 115 0
	ldrh	r1, [r2]
	strh	r1, [r3]
	.loc 1 116 0
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 117 0
	ldr	r2, .L27+16
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 118 0
	ldr	r2, .L27+20
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 119 0
	ldr	r2, .L27+24
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 122 0
	add	sp, sp, #8
	@ sp needed for prologue
	bx	lr
.L28:
	.align	2
.L27:
	.word	167772128
	.word	167772140
	.word	167772156
	.word	167771978
	.word	153092108
	.word	167772144
	.word	167772136
.LFE169:
	.size	_g6_unlock, .-_g6_unlock
	.align	2
	.global	_g6_lock
	.code	16
	.thumb_func
	.type	_g6_lock, %function
_g6_lock:
.LFB170:
	.loc 1 127 0
	.loc 1 130 0
	mov	r3, #144
	.loc 1 127 0
	sub	sp, sp, #8
.LCFI3:
	.loc 1 130 0
	lsl	r3, r3, #20
	ldrh	r2, [r3]
	mov	r3, sp
	add	r3, r3, #6
	strh	r2, [r3]
.LVL6:
	.loc 1 131 0
	ldr	r2, .L31
.LVL7:
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 132 0
	ldr	r2, .L31+4
	ldrh	r1, [r2]
	strh	r1, [r3]
	.loc 1 133 0
	ldrh	r1, [r2]
	strh	r1, [r3]
	.loc 1 134 0
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 135 0
	ldr	r2, .L31+8
	ldrh	r1, [r2]
	strh	r1, [r3]
	.loc 1 136 0
	ldrh	r1, [r2]
	strh	r1, [r3]
	.loc 1 137 0
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 138 0
	ldr	r2, .L31+12
	ldrh	r1, [r2]
	strh	r1, [r3]
	.loc 1 139 0
	ldrh	r1, [r2]
	strh	r1, [r3]
	.loc 1 140 0
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 141 0
	ldr	r2, .L31+16
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 142 0
	ldr	r2, .L31+20
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 143 0
	ldr	r2, .L31+24
	ldrh	r2, [r2]
	strh	r2, [r3]
	.loc 1 144 0
	add	sp, sp, #8
	@ sp needed for prologue
	bx	lr
.L32:
	.align	2
.L31:
	.word	167772128
	.word	167772140
	.word	167772156
	.word	167771978
	.word	153092102
	.word	167772144
	.word	167772136
.LFE170:
	.size	_g6_lock, .-_g6_lock
	.align	2
	.global	_ez_unlock
	.code	16
	.thumb_func
	.type	_ez_unlock, %function
_ez_unlock:
.LFB171:
	.loc 1 149 0
	push	{r4, r5, r6, r7, lr}
.LCFI4:
	.loc 1 150 0
	ldr	r2, .L35
	ldr	r6, .L35+4
	.loc 1 152 0
	ldr	r5, .L35+8
	.loc 1 153 0
	ldr	r4, .L35+12
	.loc 1 151 0
	mov	r1, #128
	mov	r3, #168
	.loc 1 154 0
	mov	r0, #148
	.loc 1 151 0
	lsl	r3, r3, #5
	lsl	r1, r1, #20
	.loc 1 154 0
	lsl	r0, r0, #20
	mov	r7, #0
	.loc 1 150 0
	strh	r2, [r6]
	.loc 1 151 0
	strh	r3, [r1]
	.loc 1 152 0
	strh	r2, [r5]
	.loc 1 153 0
	strh	r3, [r4]
	.loc 1 154 0
	strh	r7, [r0]
	.loc 1 155 0
	ldr	r0, .L35+16
	.loc 1 156 0
	ldr	r7, .L35+20
	.loc 1 155 0
	strh	r2, [r0]
	.loc 1 162 0
	ldr	r0, .L35+24
	.loc 1 156 0
	strh	r3, [r7]
	.loc 1 162 0
	mov	ip, r0
	ldr	r0, .L35+28
	mov	r7, ip
	.loc 1 158 0
	strh	r2, [r6]
	.loc 1 159 0
	strh	r3, [r1]
	.loc 1 160 0
	strh	r2, [r5]
	.loc 1 161 0
	strh	r3, [r4]
	.loc 1 162 0
	strh	r0, [r7]
	.loc 1 163 0
	ldr	r7, .L35+20
	.loc 1 169 0
	ldr	r0, .L35+16
	.loc 1 163 0
	strh	r3, [r7]
	.loc 1 165 0
	strh	r2, [r6]
	.loc 1 166 0
	strh	r3, [r1]
	.loc 1 167 0
	strh	r2, [r5]
	.loc 1 168 0
	strh	r3, [r4]
	.loc 1 169 0
	strh	r3, [r0]
	.loc 1 170 0
	mov	r0, #132
	strh	r3, [r7]
	lsl	r0, r0, #20
	.loc 1 173 0
	@ sp needed for prologue
	pop	{r4, r5, r6, r7, pc}
.L36:
	.align	2
.L35:
	.word	-11776
	.word	167641088
	.word	134348800
	.word	134479872
	.word	163840000
	.word	167510016
	.word	159907840
	.word	-32768
.LFE171:
	.size	_ez_unlock, .-_ez_unlock
	.align	2
	.global	_ez_lock
	.code	16
	.thumb_func
	.type	_ez_lock, %function
_ez_lock:
.LFB172:
	.loc 1 178 0
	push	{r4, r5, r6, r7, lr}
.LCFI5:
	.loc 1 179 0
	ldr	r2, .L39
	ldr	r6, .L39+4
	.loc 1 181 0
	ldr	r5, .L39+8
	.loc 1 182 0
	ldr	r4, .L39+12
	.loc 1 183 0
	ldr	r0, .L39+16
	.loc 1 180 0
	mov	r1, #128
	mov	r3, #168
	lsl	r3, r3, #5
	lsl	r1, r1, #20
	.loc 1 179 0
	strh	r2, [r6]
	.loc 1 180 0
	strh	r3, [r1]
	.loc 1 181 0
	strh	r2, [r5]
	.loc 1 182 0
	strh	r3, [r4]
	.loc 1 183 0
	strh	r2, [r0]
	.loc 1 190 0
	ldr	r0, .L39+20
	.loc 1 184 0
	ldr	r7, .L39+24
	.loc 1 190 0
	mov	ip, r0
	.loc 1 184 0
	strh	r3, [r7]
	.loc 1 190 0
	mov	r0, #0
	mov	r7, ip
	.loc 1 186 0
	strh	r2, [r6]
	.loc 1 187 0
	strh	r3, [r1]
	.loc 1 188 0
	strh	r2, [r5]
	.loc 1 189 0
	strh	r3, [r4]
	.loc 1 190 0
	strh	r0, [r7]
	.loc 1 191 0
	ldr	r7, .L39+24
	.loc 1 198 0
	ldr	r0, .L39+16
	.loc 1 191 0
	strh	r3, [r7]
	.loc 1 193 0
	strh	r2, [r6]
	.loc 1 194 0
	strh	r3, [r1]
	.loc 1 195 0
	strh	r2, [r5]
	.loc 1 197 0
	mov	r2, #148
	lsl	r2, r2, #20
	mov	r1, #1
	.loc 1 196 0
	strh	r3, [r4]
	.loc 1 200 0
	@ sp needed for prologue
	.loc 1 197 0
	strh	r1, [r2]
	.loc 1 198 0
	strh	r3, [r0]
	.loc 1 199 0
	strh	r3, [r7]
	.loc 1 200 0
	pop	{r4, r5, r6, r7, pc}
.L40:
	.align	2
.L39:
	.word	-11776
	.word	167641088
	.word	134348800
	.word	134479872
	.word	163840000
	.word	159907840
	.word	167510016
.LFE172:
	.size	_ez_lock, .-_ez_lock
	.align	2
	.code	16
	.thumb_func
	.type	_ram_test, %function
_ram_test:
.LFB173:
	.loc 1 218 0
	push	{r4, r5, r6, lr}
.LCFI6:
	.loc 1 219 0
	ldr	r4, .L46
	ldr	r3, [r4]
	blx	r3
	.loc 1 221 0
	ldr	r3, .L46+4
	.loc 1 219 0
	mov	r5, r0
.LVL8:
	.loc 1 221 0
	strh	r3, [r0]
	.loc 1 222 0
	ldrh	r2, [r0]
	cmp	r2, r3
	beq	.L42
.LVL9:
	mov	r0, #0
.LVL10:
	b	.L43
.LVL11:
.L42:
	.loc 1 224 0
	ldr	r3, [r4, #4]
	blx	r3
.LVL12:
	.loc 1 226 0
	ldr	r3, .L46+8
	strh	r3, [r5]
	.loc 1 227 0
	ldrh	r0, [r5]
	ldr	r3, .L46+12
	add	r0, r0, r3
	sub	r3, r0, #1
	sbc	r0, r0, r3
.L43:
	.loc 1 234 0
	@ sp needed for prologue
.LVL13:
	pop	{r4, r5, r6, pc}
.L47:
	.align	2
.L46:
	.word	.LANCHOR0
	.word	4660
	.word	17185
	.word	-17185
.LFE173:
	.size	_ram_test, .-_ram_test
	.align	2
	.global	ram_init
	.code	16
	.thumb_func
	.type	ram_init, %function
ram_init:
.LFB175:
	.loc 1 263 0
	push	{r3, r4, r5, r6, r7, lr}
.LCFI7:
.LVL14:
.LBB10:
.LBB12:
	.file 2 "C:/devkitPro/libnds/include/nds/memory.h"
	.loc 2 213 0
	ldr	r3, .L63
	ldr	r2, .L63+4
	ldrh	r1, [r3]
.LBE12:
.LBE10:
	.loc 1 266 0
	sub	r0, r0, #1
.LVL15:
	lsl	r0, r0, #24
.LBB14:
.LBB11:
	.loc 2 213 0
	and	r2, r2, r1
.LBE11:
.LBE14:
	.loc 1 266 0
	lsr	r0, r0, #24
.LBB15:
.LBB13:
	.loc 2 213 0
	strh	r2, [r3]
.LBE13:
.LBE15:
	.loc 1 266 0
	cmp	r0, #4
	bhi	.L49
	ldr	r3, .L63+8
	lsl	r0, r0, #2
	ldr	r2, [r3, r0]
	ldr	r3, .L63+12
	mov	pc, r2
	.section	.rodata
	.align	2
.L55:
	.word	.L50
	.word	.L51
	.word	.L52
	.word	.L53
	.word	.L54
	.text
.L50:
	.loc 1 270 0
	ldr	r2, .L63+16
	str	r2, [r3]
	.loc 1 271 0
	ldr	r2, .L63+20
	str	r2, [r3, #4]
	.loc 1 272 0
	mov	r2, #1
	b	.L62
.L51:
	.loc 1 278 0
	ldr	r2, .L63+24
	str	r2, [r3]
	.loc 1 279 0
	ldr	r2, .L63+28
	str	r2, [r3, #4]
	.loc 1 280 0
	mov	r2, #2
.L62:
	strb	r2, [r3, #8]
	.loc 1 282 0
	b	.L56
.L52:
	.loc 1 286 0
	ldr	r2, .L63+32
	str	r2, [r3]
	.loc 1 287 0
	ldr	r2, .L63+36
	str	r2, [r3, #4]
	.loc 1 288 0
	mov	r2, #3
	b	.L62
.L53:
	.loc 1 294 0
	ldr	r2, .L63+40
	str	r2, [r3]
	.loc 1 295 0
	ldr	r2, .L63+44
	str	r2, [r3, #4]
	.loc 1 296 0
	mov	r2, #4
	b	.L62
.L54:
	.loc 1 302 0
	ldr	r2, .L63+48
	str	r2, [r3]
	.loc 1 303 0
	ldr	r2, .L63+52
	str	r2, [r3, #4]
	.loc 1 304 0
	mov	r2, #5
	b	.L62
.L49:
	.loc 1 312 0
	ldr	r4, .L63+12
	ldr	r3, .L63+48
	str	r3, [r4]
	.loc 1 313 0
	ldr	r3, .L63+52
	str	r3, [r4, #4]
	.loc 1 314 0
	mov	r3, #5
	strb	r3, [r4, #8]
	.loc 1 316 0
	bl	_ram_test
	cmp	r0, #0
	bne	.L56
	.loc 1 322 0
	ldr	r3, .L63+16
	str	r3, [r4]
	.loc 1 323 0
	ldr	r3, .L63+20
	str	r3, [r4, #4]
	.loc 1 324 0
	mov	r3, #1
	strb	r3, [r4, #8]
	.loc 1 326 0
	bl	_ram_test
	cmp	r0, #0
	bne	.L56
	.loc 1 332 0
	ldr	r3, .L63+24
	str	r3, [r4]
	.loc 1 333 0
	ldr	r3, .L63+28
	str	r3, [r4, #4]
	.loc 1 334 0
	mov	r3, #2
	strb	r3, [r4, #8]
	.loc 1 336 0
	bl	_ram_test
	cmp	r0, #0
	bne	.L56
	.loc 1 342 0
	ldr	r3, .L63+32
	str	r3, [r4]
	.loc 1 343 0
	ldr	r3, .L63+36
	str	r3, [r4, #4]
	.loc 1 344 0
	mov	r3, #3
	strb	r3, [r4, #8]
	.loc 1 346 0
	bl	_ram_test
	cmp	r0, #0
	bne	.L56
	.loc 1 352 0
	ldr	r3, .L63+40
	str	r3, [r4]
	.loc 1 353 0
	ldr	r3, .L63+44
	str	r3, [r4, #4]
	.loc 1 354 0
	mov	r3, #4
	strb	r3, [r4, #8]
	.loc 1 356 0
	bl	_ram_test
	cmp	r0, #0
	bne	.L56
	.loc 1 362 0
	str	r0, [r4]
	.loc 1 363 0
	str	r0, [r4, #4]
	.loc 1 364 0
	strb	r0, [r4, #8]
	.loc 1 366 0
	b	.L57
.L56:
.LBB16:
.LBB17:
	.loc 1 241 0
	ldr	r2, .L63+12
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L58
	ldr	r2, [r2, #4]
	cmp	r2, #0
	beq	.L58
	.loc 1 244 0
	blx	r3
	.loc 1 247 0
	mov	r3, #128
	lsl	r3, r3, #3
	ldr	r1, .L63+56
	add	r2, r0, r3
	mov	r3, #0
	strh	r1, [r0]
.LVL16:
	.loc 1 250 0
	mov	ip, r3
	b	.L59
.LVL17:
.L60:
	.loc 1 252 0
	mov	r3, #128
	lsl	r3, r3, #3
	.loc 1 250 0
	mov	r4, ip
	strh	r4, [r7]
	.loc 1 252 0
	strh	r1, [r2]
	add	r2, r2, r3
	mov	r3, r6
.LVL18:
.L59:
	.loc 1 248 0
	mov	r4, #128
	lsl	r4, r4, #2
	ldrh	r5, [r0]
.LVL19:
	add	r6, r3, r4
	mov	r4, #128
	lsl	r4, r4, #3
	.loc 1 252 0
	mov	r7, r0
	.loc 1 248 0
	add	r0, r0, r4
	cmp	r5, r1
	beq	.L60
	.loc 1 254 0
	ldr	r2, .L63+12
	lsl	r3, r3, #1
	str	r3, [r2, #12]
	.loc 1 256 0
	ldr	r3, [r2, #4]
	blx	r3
.L58:
	mov	r0, #1
.L57:
.LBE17:
.LBE16:
	.loc 1 374 0
	@ sp needed for prologue
	pop	{r3, r4, r5, r6, r7, pc}
.L64:
	.align	2
.L63:
	.word	67109380
	.word	-2177
	.word	.L55
	.word	.LANCHOR0
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
	.word	9320
.LFE175:
	.size	ram_init, .-ram_init
	.align	2
	.global	ram_type
	.code	16
	.thumb_func
	.type	ram_type, %function
ram_type:
.LFB176:
	.loc 1 380 0
	.loc 1 380 0
	ldr	r3, .L67
	.loc 1 382 0
	@ sp needed for prologue
	.loc 1 380 0
	ldrb	r0, [r3, #8]
	.loc 1 382 0
	bx	lr
.L68:
	.align	2
.L67:
	.word	.LANCHOR0
.LFE176:
	.size	ram_type, .-ram_type
	.align	2
	.global	ram_type_string
	.code	16
	.thumb_func
	.type	ram_type_string, %function
ram_type_string:
.LFB177:
	.loc 1 388 0
	.loc 1 388 0
	ldr	r3, .L71
	.loc 1 390 0
	@ sp needed for prologue
	.loc 1 388 0
	ldrb	r2, [r3, #8]
	ldr	r3, .L71+4
	lsl	r2, r2, #2
	ldr	r0, [r2, r3]
	.loc 1 390 0
	bx	lr
.L72:
	.align	2
.L71:
	.word	.LANCHOR0
	.word	.LANCHOR1
.LFE177:
	.size	ram_type_string, .-ram_type_string
	.align	2
	.global	ram_size
	.code	16
	.thumb_func
	.type	ram_size, %function
ram_size:
.LFB178:
	.loc 1 396 0
	.loc 1 396 0
	ldr	r3, .L75
	.loc 1 398 0
	@ sp needed for prologue
	.loc 1 396 0
	ldr	r0, [r3, #12]
	.loc 1 398 0
	bx	lr
.L76:
	.align	2
.L75:
	.word	.LANCHOR0
.LFE178:
	.size	ram_size, .-ram_size
	.align	2
	.global	ram_unlock
	.code	16
	.thumb_func
	.type	ram_unlock, %function
ram_unlock:
.LFB179:
	.loc 1 404 0
	push	{r4, lr}
.LCFI8:
.LBB18:
.LBB19:
	.loc 2 213 0
	ldr	r3, .L81
	ldr	r2, .L81+4
	ldrh	r1, [r3]
	and	r2, r2, r1
	strh	r2, [r3]
.LBE19:
.LBE18:
	.loc 1 407 0
	ldr	r3, .L81+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L78
	mov	r0, #0
	b	.L79
.L78:
	.loc 1 408 0
	blx	r3
.L79:
	.loc 1 410 0
	@ sp needed for prologue
	pop	{r4, pc}
.L82:
	.align	2
.L81:
	.word	67109380
	.word	-2177
	.word	.LANCHOR0
.LFE179:
	.size	ram_unlock, .-ram_unlock
	.align	2
	.global	ram_lock
	.code	16
	.thumb_func
	.type	ram_lock, %function
ram_lock:
.LFB180:
	.loc 1 416 0
	push	{r4, lr}
.LCFI9:
.LBB20:
.LBB21:
	.loc 2 213 0
	ldr	r3, .L86
	ldr	r2, .L86+4
	ldrh	r1, [r3]
	and	r2, r2, r1
	strh	r2, [r3]
.LBE21:
.LBE20:
	.loc 1 419 0
	ldr	r3, .L86+8
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L85
	.loc 1 420 0
	blx	r3
.L85:
	.loc 1 421 0
	@ sp needed for prologue
	pop	{r4, pc}
.L87:
	.align	2
.L86:
	.word	67109380
	.word	-2177
	.word	.LANCHOR0
.LFE180:
	.size	ram_lock, .-ram_lock
	.align	2
	.global	ram_turbo
	.code	16
	.thumb_func
	.type	ram_turbo, %function
ram_turbo:
.LFB181:
	.loc 1 427 0
	push	{lr}
.LCFI10:
.LVL20:
	.loc 1 428 0
	cmp	r0, #0
	beq	.L89
	.loc 1 429 0
	ldr	r3, .L93
	mov	r2, #26
	ldrh	r1, [r3]
	orr	r2, r2, r1
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	b	.L92
.L89:
	.loc 1 431 0
	ldr	r3, .L93
	ldr	r2, .L93+4
	ldrh	r1, [r3]
	and	r2, r2, r1
.L92:
	strh	r2, [r3]
	.loc 1 432 0
	@ sp needed for prologue
	pop	{pc}
.L94:
	.align	2
.L93:
	.word	67109380
	.word	65509
.LFE181:
	.size	ram_turbo, .-ram_turbo
	.global	_types
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC21:
	.ascii	"Unknown\000"
.LC22:
	.ascii	"Supercard\000"
.LC23:
	.ascii	"M3\000"
.LC24:
	.ascii	"Opera\000"
.LC25:
	.ascii	"G6\000"
.LC26:
	.ascii	"EZ\000"
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_types, %object
	.size	_types, 24
_types:
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_unlock, %object
	.size	_unlock, 4
_unlock:
	.space	4
	.type	_lock, %object
	.size	_lock, 4
_lock:
	.space	4
	.type	_type, %object
	.size	_type, 1
_type:
	.space	1
	.space	3
	.type	_size, %object
	.size	_size, 4
_size:
	.space	4
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
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.byte	0x4
	.4byte	.LCFI0-.LFB165
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.byte	0x4
	.4byte	.LCFI1-.LFB166
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.byte	0x4
	.4byte	.LCFI2-.LFB169
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.byte	0x4
	.4byte	.LCFI3-.LFB170
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.byte	0x4
	.4byte	.LCFI4-.LFB171
	.byte	0xe
	.uleb128 0x14
	.byte	0x11
	.uleb128 0x4
	.sleb128 5
	.byte	0x11
	.uleb128 0x5
	.sleb128 4
	.byte	0x11
	.uleb128 0x6
	.sleb128 3
	.byte	0x11
	.uleb128 0x7
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
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.byte	0x4
	.4byte	.LCFI5-.LFB172
	.byte	0xe
	.uleb128 0x14
	.byte	0x11
	.uleb128 0x4
	.sleb128 5
	.byte	0x11
	.uleb128 0x5
	.sleb128 4
	.byte	0x11
	.uleb128 0x6
	.sleb128 3
	.byte	0x11
	.uleb128 0x7
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.byte	0x4
	.4byte	.LCFI6-.LFB173
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
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.byte	0x4
	.4byte	.LCFI7-.LFB175
	.byte	0xe
	.uleb128 0x18
	.byte	0x11
	.uleb128 0x3
	.sleb128 6
	.byte	0x11
	.uleb128 0x4
	.sleb128 5
	.byte	0x11
	.uleb128 0x5
	.sleb128 4
	.byte	0x11
	.uleb128 0x6
	.sleb128 3
	.byte	0x11
	.uleb128 0x7
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.byte	0x4
	.4byte	.LCFI8-.LFB179
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.byte	0x4
	.4byte	.LCFI9-.LFB180
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.byte	0x4
	.4byte	.LCFI10-.LFB181
	.byte	0xe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE34:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LFB165-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE165-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1-.Ltext0
	.4byte	.LFE165-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB166-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE166-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3-.Ltext0
	.4byte	.LFE166-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LFB169-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE169-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE169-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB170-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB171-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB172-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB173-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LFB175-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE175-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB179-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE179-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LFB180-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE180-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LFB181-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE181-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0x0
	.4byte	0x0
	.file 3 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 4 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 5 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 6 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 7 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 8 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 9 "C:/Users/GRX/NeoDS-master-old/arm9/source/ram.h"
	.file 10 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.section	.debug_info
	.4byte	0x775
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x1
	.4byte	.LASF100
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
	.byte	0x3
	.byte	0x36
	.4byte	0x41
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4f
	.4byte	0x53
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x50
	.4byte	0x65
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x48
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x4
	.byte	0x63
	.4byte	0x36
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x4
	.byte	0x64
	.4byte	0x5a
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x4
	.byte	0x69
	.4byte	0x48
	.uleb128 0x6
	.byte	0x1
	.byte	0x4
	.byte	0x7d
	.4byte	0xc9
	.uleb128 0x7
	.4byte	.LASF13
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF14
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x7d
	.4byte	0xb4
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF17
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0xa
	.byte	0x4
	.4byte	0xf4
	.uleb128 0xb
	.4byte	0xd7
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x28
	.byte	0x5
	.2byte	0x18c
	.4byte	0x19d
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x18d
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x18e
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x18f
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x190
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x191
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x192
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x193
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x194
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x195
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x196
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x198
	.4byte	0xf9
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x8
	.byte	0x6
	.byte	0x29
	.4byte	0x1d2
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x6
	.byte	0x2a
	.4byte	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x6
	.byte	0x2b
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xe5
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x2c
	.4byte	0x1a9
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x9c
	.4byte	0x204
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x7
	.byte	0xa1
	.4byte	0x1e3
	.uleb128 0x11
	.4byte	.LASF38
	.2byte	0x2020
	.byte	0x7
	.2byte	0x11a
	.4byte	0x29b
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x7
	.2byte	0x11b
	.4byte	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x7
	.2byte	0x11e
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x7
	.2byte	0x121
	.4byte	0x29b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x7
	.2byte	0x122
	.4byte	0x1d8
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x7
	.2byte	0x123
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x7
	.2byte	0x124
	.4byte	0x2ac
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x7
	.2byte	0x125
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x7
	.2byte	0x126
	.4byte	0x53
	.byte	0x3
	.byte	0x23
	.uleb128 0x201c
	.byte	0x0
	.uleb128 0x12
	.4byte	0x7a
	.4byte	0x2ac
	.uleb128 0x13
	.4byte	0xd4
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7a
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x7
	.2byte	0x128
	.4byte	0x20f
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x59
	.4byte	0x2df
	.uleb128 0x7
	.4byte	.LASF47
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF48
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF49
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF50
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x62
	.4byte	0x300
	.uleb128 0x7
	.4byte	.LASF51
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF52
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF53
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF54
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x6a
	.4byte	0x321
	.uleb128 0x7
	.4byte	.LASF55
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF56
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF57
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF58
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x72
	.4byte	0x336
	.uleb128 0x7
	.4byte	.LASF59
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF60
	.sleb128 1
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.4byte	0x363
	.uleb128 0x7
	.4byte	.LASF61
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF62
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF63
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF64
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF65
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF66
	.sleb128 5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x9
	.byte	0x10
	.4byte	0x336
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x2
	.byte	0xd4
	.byte	0x1
	.byte	0x3
	.4byte	0x392
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x2
	.byte	0xd4
	.4byte	0xc9
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x2
	.byte	0xd4
	.4byte	0xc9
	.byte	0x0
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.4byte	0x3aa
	.uleb128 0x17
	.ascii	"ram\000"
	.byte	0x1
	.byte	0xf4
	.4byte	0x3aa
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x3b0
	.uleb128 0x18
	.4byte	0x41
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF71
	.byte	0x1
	.byte	0x10
	.4byte	0x3aa
	.4byte	.LFB163
	.4byte	.LFE163
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF73
	.byte	0x1
	.byte	0x1c
	.4byte	.LFB164
	.4byte	.LFE164
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF75
	.byte	0x1
	.byte	0x26
	.4byte	0x3aa
	.4byte	.LFB165
	.4byte	.LFE165
	.4byte	.LLST2
	.4byte	0x414
	.uleb128 0x1c
	.4byte	.LASF70
	.byte	0x1
	.byte	0x29
	.4byte	0x9e
	.uleb128 0x1d
	.ascii	"tmp\000"
	.byte	0x1
	.byte	0x2a
	.4byte	0x3b0
	.4byte	.LLST3
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF77
	.byte	0x1
	.byte	0x3e
	.4byte	.LFB166
	.4byte	.LFE166
	.4byte	.LLST4
	.4byte	0x447
	.uleb128 0x1c
	.4byte	.LASF70
	.byte	0x1
	.byte	0x41
	.4byte	0x9e
	.uleb128 0x1d
	.ascii	"tmp\000"
	.byte	0x1
	.byte	0x42
	.4byte	0x3b0
	.4byte	.LLST5
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF72
	.byte	0x1
	.byte	0x54
	.4byte	0x3aa
	.4byte	.LFB167
	.4byte	.LFE167
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF74
	.byte	0x1
	.byte	0x5d
	.4byte	.LFB168
	.4byte	.LFE168
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF76
	.byte	0x1
	.byte	0x65
	.4byte	0x3aa
	.4byte	.LFB169
	.4byte	.LFE169
	.4byte	.LLST8
	.4byte	0x4a6
	.uleb128 0x1c
	.4byte	.LASF70
	.byte	0x1
	.byte	0x68
	.4byte	0x9e
	.uleb128 0x1d
	.ascii	"tmp\000"
	.byte	0x1
	.byte	0x69
	.4byte	0x3b0
	.4byte	.LLST9
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF78
	.byte	0x1
	.byte	0x7d
	.4byte	.LFB170
	.4byte	.LFE170
	.4byte	.LLST10
	.4byte	0x4d9
	.uleb128 0x1c
	.4byte	.LASF70
	.byte	0x1
	.byte	0x80
	.4byte	0x9e
	.uleb128 0x1d
	.ascii	"tmp\000"
	.byte	0x1
	.byte	0x81
	.4byte	0x3b0
	.4byte	.LLST11
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF79
	.byte	0x1
	.byte	0x93
	.4byte	0x3aa
	.4byte	.LFB171
	.4byte	.LFE171
	.4byte	.LLST12
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF80
	.byte	0x1
	.byte	0xb0
	.4byte	.LFB172
	.4byte	.LFE172
	.4byte	.LLST13
	.uleb128 0x21
	.4byte	.LASF103
	.byte	0x1
	.byte	0xd8
	.4byte	0xc9
	.4byte	.LFB173
	.4byte	.LFE173
	.4byte	.LLST14
	.4byte	0x530
	.uleb128 0x1d
	.ascii	"ram\000"
	.byte	0x1
	.byte	0xdb
	.4byte	0x3aa
	.4byte	.LLST15
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x105
	.byte	0x1
	.4byte	0xc9
	.4byte	.LFB175
	.4byte	.LFE175
	.4byte	.LLST16
	.4byte	0x5a2
	.uleb128 0x23
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x105
	.4byte	0x363
	.4byte	.LLST17
	.uleb128 0x24
	.4byte	0x36e
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.2byte	0x108
	.4byte	0x57d
	.uleb128 0x25
	.4byte	0x386
	.uleb128 0x25
	.4byte	0x37b
	.byte	0x0
	.uleb128 0x26
	.4byte	0x392
	.4byte	.LBB16
	.4byte	.LBE16
	.byte	0x1
	.2byte	0x173
	.uleb128 0x27
	.4byte	.LBB17
	.4byte	.LBE17
	.uleb128 0x28
	.4byte	0x39e
	.4byte	.LLST18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x17a
	.4byte	0x363
	.4byte	.LFB176
	.4byte	.LFE176
	.byte	0x1
	.byte	0x5d
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x182
	.4byte	0xee
	.4byte	.LFB177
	.4byte	.LFE177
	.byte	0x1
	.byte	0x5d
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x18a
	.4byte	0x9e
	.4byte	.LFB178
	.4byte	.LFE178
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x192
	.4byte	0x3aa
	.4byte	.LFB179
	.4byte	.LFE179
	.4byte	.LLST22
	.4byte	0x620
	.uleb128 0x26
	.4byte	0x36e
	.4byte	.LBB18
	.4byte	.LBE18
	.byte	0x1
	.2byte	0x195
	.uleb128 0x25
	.4byte	0x386
	.uleb128 0x25
	.4byte	0x37b
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x19e
	.4byte	.LFB180
	.4byte	.LFE180
	.4byte	.LLST23
	.4byte	0x655
	.uleb128 0x26
	.4byte	0x36e
	.4byte	.LBB20
	.4byte	.LBE20
	.byte	0x1
	.2byte	0x1a1
	.uleb128 0x25
	.4byte	0x386
	.uleb128 0x25
	.4byte	0x37b
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x1a9
	.byte	0x1
	.4byte	.LFB181
	.4byte	.LFE181
	.4byte	.LLST24
	.4byte	0x67e
	.uleb128 0x2d
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x1a9
	.4byte	0xc9
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2e
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x12e
	.4byte	0x68a
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2b2
	.uleb128 0x2f
	.4byte	0x3aa
	.4byte	0x69b
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x31
	.4byte	.LASF89
	.byte	0x1
	.byte	0xd1
	.4byte	0x6ac
	.byte	0x5
	.byte	0x3
	.4byte	_unlock
	.uleb128 0xa
	.byte	0x4
	.4byte	0x690
	.uleb128 0x32
	.4byte	0x6b9
	.uleb128 0x30
	.byte	0x0
	.uleb128 0x31
	.4byte	.LASF90
	.byte	0x1
	.byte	0xd2
	.4byte	0x6ca
	.byte	0x5
	.byte	0x3
	.4byte	_lock
	.uleb128 0xa
	.byte	0x4
	.4byte	0x6b2
	.uleb128 0x31
	.4byte	.LASF91
	.byte	0x1
	.byte	0xd3
	.4byte	0x9e
	.byte	0x5
	.byte	0x3
	.4byte	_size
	.uleb128 0x31
	.4byte	.LASF92
	.byte	0x1
	.byte	0xd4
	.4byte	0x363
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x33
	.4byte	.LASF93
	.byte	0xa
	.byte	0x56
	.4byte	0x93
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF94
	.byte	0xa
	.byte	0x57
	.4byte	0x93
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0x3aa
	.4byte	0x71c
	.uleb128 0x34
	.4byte	0xd4
	.byte	0x7
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x19c
	.4byte	0x70c
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0x19d
	.4byte	0x73a
	.uleb128 0x34
	.4byte	0xd4
	.byte	0x7
	.byte	0x0
	.uleb128 0x35
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x19f
	.4byte	0x72a
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x12b
	.4byte	0x2b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0xee
	.4byte	0x766
	.uleb128 0x34
	.4byte	0xd4
	.byte	0x5
	.byte	0x0
	.uleb128 0x36
	.4byte	.LASF98
	.byte	0x1
	.byte	0xd5
	.4byte	0x756
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_types
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
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0xa
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x18
	.byte	0x0
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
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
	.4byte	0x779
	.4byte	0x3b5
	.ascii	"_sc_unlock\000"
	.4byte	0x3cb
	.ascii	"_sc_lock\000"
	.4byte	0x3dd
	.ascii	"_m3_unlock\000"
	.4byte	0x414
	.ascii	"_m3_lock\000"
	.4byte	0x447
	.ascii	"_opera_unlock\000"
	.4byte	0x45d
	.ascii	"_opera_lock\000"
	.4byte	0x46f
	.ascii	"_g6_unlock\000"
	.4byte	0x4a6
	.ascii	"_g6_lock\000"
	.4byte	0x4d9
	.ascii	"_ez_unlock\000"
	.4byte	0x4f1
	.ascii	"_ez_lock\000"
	.4byte	0x530
	.ascii	"ram_init\000"
	.4byte	0x5a2
	.ascii	"ram_type\000"
	.4byte	0x5b9
	.ascii	"ram_type_string\000"
	.4byte	0x5d0
	.ascii	"ram_size\000"
	.4byte	0x5e7
	.ascii	"ram_unlock\000"
	.4byte	0x620
	.ascii	"ram_lock\000"
	.4byte	0x655
	.ascii	"ram_turbo\000"
	.4byte	0x766
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
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF42:
	.ascii	"texturePtrs\000"
.LASF67:
	.ascii	"RAM_TYPE\000"
.LASF104:
	.ascii	"ram_init\000"
.LASF62:
	.ascii	"SC_RAM\000"
.LASF60:
	.ascii	"OBJCOLOR_256\000"
.LASF85:
	.ascii	"ram_lock\000"
.LASF97:
	.ascii	"glGlobalData\000"
.LASF82:
	.ascii	"ram_type_string\000"
.LASF80:
	.ascii	"_ez_lock\000"
.LASF56:
	.ascii	"OBJSIZE_16\000"
.LASF61:
	.ascii	"DETECT_RAM\000"
.LASF35:
	.ascii	"GL_MODELVIEW\000"
.LASF65:
	.ascii	"G6_RAM\000"
.LASF94:
	.ascii	"mosaicShadowSub\000"
.LASF78:
	.ascii	"_g6_lock\000"
.LASF98:
	.ascii	"_types\000"
.LASF70:
	.ascii	"mode\000"
.LASF36:
	.ascii	"GL_TEXTURE\000"
.LASF2:
	.ascii	"short int\000"
.LASF66:
	.ascii	"EZ_RAM\000"
.LASF22:
	.ascii	"scaleX\000"
.LASF23:
	.ascii	"scaleY\000"
.LASF101:
	.ascii	"sysSetBusOwners\000"
.LASF44:
	.ascii	"nextBlock\000"
.LASF87:
	.ascii	"enable\000"
.LASF41:
	.ascii	"textures\000"
.LASF20:
	.ascii	"centerX\000"
.LASF21:
	.ascii	"centerY\000"
.LASF72:
	.ascii	"_opera_unlock\000"
.LASF40:
	.ascii	"clearColor\000"
.LASF96:
	.ascii	"bgState\000"
.LASF74:
	.ascii	"_opera_lock\000"
.LASF39:
	.ascii	"matrixMode\000"
.LASF38:
	.ascii	"gl_hidden_globals\000"
.LASF89:
	.ascii	"_unlock\000"
.LASF11:
	.ascii	"float\000"
.LASF59:
	.ascii	"OBJCOLOR_16\000"
.LASF32:
	.ascii	"cur_size\000"
.LASF8:
	.ascii	"long long int\000"
.LASF37:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF73:
	.ascii	"_sc_lock\000"
.LASF90:
	.ascii	"_lock\000"
.LASF17:
	.ascii	"long int\000"
.LASF58:
	.ascii	"OBJSIZE_64\000"
.LASF30:
	.ascii	"DynamicArray\000"
.LASF47:
	.ascii	"OBJMODE_NORMAL\000"
.LASF81:
	.ascii	"ram_type\000"
.LASF88:
	.ascii	"glGlob\000"
.LASF102:
	.ascii	"_ram_precalc_size\000"
.LASF68:
	.ascii	"arm9rom\000"
.LASF86:
	.ascii	"ram_turbo\000"
.LASF76:
	.ascii	"_g6_unlock\000"
.LASF28:
	.ascii	"dirty\000"
.LASF63:
	.ascii	"M3_RAM\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF49:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF0:
	.ascii	"signed char\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF48:
	.ascii	"OBJMODE_BLENDED\000"
.LASF27:
	.ascii	"type\000"
.LASF7:
	.ascii	"unsigned int\000"
.LASF13:
	.ascii	"false\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF57:
	.ascii	"OBJSIZE_32\000"
.LASF95:
	.ascii	"bgControl\000"
.LASF53:
	.ascii	"OBJSHAPE_TALL\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF93:
	.ascii	"mosaicShadow\000"
.LASF16:
	.ascii	"char\000"
.LASF75:
	.ascii	"_m3_unlock\000"
.LASF43:
	.ascii	"activeTexture\000"
.LASF33:
	.ascii	"GL_PROJECTION\000"
.LASF25:
	.ascii	"scrollY\000"
.LASF5:
	.ascii	"int32_t\000"
.LASF83:
	.ascii	"ram_size\000"
.LASF14:
	.ascii	"true\000"
.LASF51:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF31:
	.ascii	"data\000"
.LASF92:
	.ascii	"_type\000"
.LASF10:
	.ascii	"uint32\000"
.LASF18:
	.ascii	"long unsigned int\000"
.LASF79:
	.ascii	"_ez_unlock\000"
.LASF12:
	.ascii	"double\000"
.LASF26:
	.ascii	"size\000"
.LASF45:
	.ascii	"nextPBlock\000"
.LASF15:
	.ascii	"bool\000"
.LASF34:
	.ascii	"GL_POSITION\000"
.LASF71:
	.ascii	"_sc_unlock\000"
.LASF69:
	.ascii	"arm9card\000"
.LASF19:
	.ascii	"angle\000"
.LASF52:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF24:
	.ascii	"scrollX\000"
.LASF46:
	.ascii	"nameCount\000"
.LASF64:
	.ascii	"OPERA_RAM\000"
.LASF50:
	.ascii	"OBJMODE_BITMAP\000"
.LASF99:
	.ascii	"GNU C 4.4.3\000"
.LASF29:
	.ascii	"BgState\000"
.LASF77:
	.ascii	"_m3_lock\000"
.LASF103:
	.ascii	"_ram_test\000"
.LASF55:
	.ascii	"OBJSIZE_8\000"
.LASF100:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/ram.c\000"
.LASF54:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF91:
	.ascii	"_size\000"
.LASF84:
	.ascii	"ram_unlock\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
