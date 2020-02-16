	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"LayoutMain.c"
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.text
.Ltext0:
	.align	2
	.code	16
	.thumb_func
	.type	__TGuiLayoutScreenOffTypeHandler__, %function
__TGuiLayoutScreenOffTypeHandler__:
.LFB181:
	.file 1 "C:/Users/GRX/NeoDS/arm9/source/LayoutMain.c"
	.loc 1 240 0
	push	{r4, r5, lr}
.LCFI0:
.LVL0:
	sub	sp, sp, #20
.LCFI1:
	.loc 1 240 0
	mov	r5, r0
	cmp	r1, #3
	beq	.L3
.LVL1:
	cmp	r1, #4
	beq	.L4
	mov	r0, #1
.LVL2:
	b	.L5
.LVL3:
.L3:
.LBB2:
.LBB3:
	.loc 1 243 0
	mov	r1, #0
.LVL4:
	mov	r2, #16
.LVL5:
	mov	r0, sp
	bl	memset
	mov	r3, #32
	str	r3, [sp, #8]
	mov	r3, #24
	str	r3, [sp, #12]
	.loc 1 244 0
	bl	guiGetRoot
	mov	r2, sp
	mov	r1, r0
	ldr	r0, .L9
	bl	guiObjCreateChild_r
	.loc 1 245 0
	ldr	r1, .L9+4
	bl	guiObjSetHandler
	.loc 1 247 0
	ldr	r2, .L9+8
	.loc 1 249 0
	mov	r0, #5
	.loc 1 247 0
	ldr	r3, [r2]
	str	r3, [r5, #40]
	.loc 1 248 0
	mov	r3, #128
	lsl	r3, r3, #9
	str	r3, [r2]
	b	.L7
.LVL6:
.L4:
.LBE3:
.LBE2:
.LBB4:
	.loc 1 255 0
	ldr	r2, [r0, #40]
.LVL7:
	ldr	r3, .L9+8
	.loc 1 256 0
	mov	r0, #6
	.loc 1 255 0
	str	r2, [r3]
.L7:
	.loc 1 256 0
	bl	neoIPCSendCommand
.LVL8:
	mov	r0, #0
.LVL9:
.L5:
.LBE4:
	.loc 1 260 0
	add	sp, sp, #20
.LVL10:
	@ sp needed for prologue
.LVL11:
	pop	{r4, r5, pc}
.L10:
	.align	2
.L9:
	.word	__TGuiButtonTypeHeader__
	.word	screenOnHandler
	.word	67112960
.LFE181:
	.size	__TGuiLayoutScreenOffTypeHandler__, .-__TGuiLayoutScreenOffTypeHandler__
	.align	2
	.code	16
	.thumb_func
	.type	screenOnHandler, %function
screenOnHandler:
.LFB180:
	.loc 1 232 0
	push	{r4, lr}
.LCFI2:
.LVL12:
	.loc 1 232 0
	cmp	r1, #13
	beq	.L13
	mov	r0, #1
.LVL13:
	b	.L14
.LVL14:
.L13:
.LBB5:
	.loc 1 235 0
	bl	guiFramePop
.LVL15:
	mov	r0, #0
.LVL16:
.L14:
.LVL17:
.LBE5:
	.loc 1 238 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE180:
	.size	screenOnHandler, .-screenOnHandler
	.align	2
	.code	16
	.thumb_func
	.type	__TGuiLayoutMainTypeHandler__, %function
__TGuiLayoutMainTypeHandler__:
.LFB179:
	.loc 1 114 0
	push	{r4, r5, r6, lr}
.LCFI3:
.LVL18:
	sub	sp, sp, #256
.LCFI4:
	.loc 1 114 0
	mov	r5, r0
	str	r1, [sp, #4]
	cmp	r1, #1
	bne	.LCB141
	b	.L18	@long jump
.LCB141:
.LVL19:
	cmp	r1, #3
	beq	.LCB144
	b	.L30	@long jump
.LCB144:
.LBB6:
.LBB7:
	.loc 1 117 0
	mov	r1, #0
.LVL20:
	mov	r2, #16
.LVL21:
	add	r0, sp, #240
	bl	memset
	mov	r3, #9
	str	r3, [sp, #240]
	mov	r3, #22
	mov	r6, #1
	str	r3, [sp, #248]
	.loc 1 118 0
	mov	r1, #0
	.loc 1 117 0
	mov	r3, #5
	.loc 1 118 0
	mov	r2, #16
	add	r0, sp, #224
	.loc 1 117 0
	str	r6, [sp, #244]
	str	r3, [sp, #252]
	.loc 1 118 0
	bl	memset
	mov	r3, #14
	mov	r4, #7
	str	r3, [sp, #232]
	.loc 1 119 0
	mov	r1, #0
	.loc 1 118 0
	mov	r3, #8
	.loc 1 119 0
	mov	r2, #16
	add	r0, sp, #208
	.loc 1 118 0
	str	r6, [sp, #224]
	str	r4, [sp, #228]
	str	r3, [sp, #236]
	.loc 1 119 0
	bl	memset
	mov	r3, #10
	str	r3, [sp, #212]
	mov	r3, #14
	str	r3, [sp, #216]
	.loc 1 120 0
	mov	r1, #0
	.loc 1 119 0
	mov	r3, #11
	.loc 1 120 0
	mov	r2, #16
	add	r0, sp, #192
	.loc 1 119 0
	str	r6, [sp, #208]
	str	r3, [sp, #220]
	.loc 1 120 0
	bl	memset
	mov	r3, #17
	str	r3, [sp, #192]
	mov	r3, #30
	str	r3, [sp, #200]
	.loc 1 121 0
	mov	r1, #0
	.loc 1 120 0
	mov	r3, #8
	.loc 1 121 0
	mov	r2, #16
	add	r0, sp, #176
	.loc 1 120 0
	str	r4, [sp, #196]
	str	r3, [sp, #204]
	.loc 1 121 0
	bl	memset
	mov	r3, #17
	str	r3, [sp, #176]
	mov	r3, #10
	str	r3, [sp, #180]
	mov	r3, #30
	str	r3, [sp, #184]
	.loc 1 122 0
	mov	r1, #0
	.loc 1 121 0
	mov	r3, #11
	.loc 1 122 0
	mov	r2, #16
	add	r0, sp, #160
	.loc 1 121 0
	str	r3, [sp, #188]
	.loc 1 122 0
	bl	memset
	mov	r3, #4
	str	r3, [sp, #164]
	mov	r3, #30
	mov	r4, #25
	str	r3, [sp, #168]
	.loc 1 124 0
	mov	r1, #0
	.loc 1 122 0
	mov	r3, #5
	.loc 1 124 0
	mov	r2, #16
	add	r0, sp, #144
	.loc 1 122 0
	str	r4, [sp, #160]
	str	r3, [sp, #172]
	.loc 1 124 0
	bl	memset
	mov	r3, #30
	str	r4, [sp, #144]
	str	r3, [sp, #152]
	.loc 1 126 0
	add	r4, sp, #128
	.loc 1 124 0
	ldr	r3, [sp, #4]
	.loc 1 126 0
	mov	r0, r4
	mov	r1, #0
	mov	r2, #16
	.loc 1 124 0
	str	r6, [sp, #148]
	str	r3, [sp, #156]
	.loc 1 126 0
	bl	memset
	mov	r3, #14
	str	r3, [r4, #4]
	str	r3, [r4, #8]
	mov	r3, #21
	str	r3, [r4, #12]
	.loc 1 127 0
	add	r4, sp, #112
	mov	r0, r4
	mov	r1, #0
	mov	r2, #16
	.loc 1 126 0
	str	r6, [sp, #128]
	.loc 1 127 0
	bl	memset
	mov	r3, #13
	str	r3, [r4, #8]
	str	r6, [r4, #12]
	.loc 1 128 0
	add	r4, sp, #96
	mov	r0, r4
	mov	r1, #0
	mov	r2, #16
	bl	memset
	ldr	r3, [sp, #4]
	.loc 1 129 0
	mov	r1, #0
	.loc 1 128 0
	str	r3, [r4, #4]
	mov	r3, #11
	str	r3, [r4, #8]
	mov	r3, #4
	str	r3, [r4, #12]
	.loc 1 129 0
	add	r4, sp, #80
	mov	r0, r4
	mov	r2, #16
	.loc 1 128 0
	str	r6, [sp, #96]
	.loc 1 129 0
	bl	memset
	mov	r3, #5
	str	r3, [r4, #4]
	mov	r3, #11
	str	r3, [r4, #8]
	mov	r3, #6
	str	r3, [r4, #12]
	.loc 1 135 0
	add	r4, sp, #64
	mov	r0, r4
	mov	r1, #0
	mov	r2, #16
	.loc 1 129 0
	str	r6, [sp, #80]
	.loc 1 135 0
	bl	memset
	mov	r3, #17
	str	r3, [sp, #64]
	mov	r3, #14
	str	r3, [r4, #4]
	mov	r3, #30
	str	r3, [r4, #8]
	mov	r3, #21
	str	r3, [r4, #12]
	.loc 1 136 0
	add	r4, sp, #48
	mov	r0, r4
	mov	r1, #0
	mov	r2, #16
	bl	memset
	mov	r3, #13
	str	r3, [r4, #8]
	str	r6, [r4, #12]
	.loc 1 137 0
	add	r4, sp, #32
	mov	r0, r4
	mov	r1, #0
	mov	r2, #16
	bl	memset
	ldr	r3, [sp, #4]
	.loc 1 138 0
	mov	r1, #0
	.loc 1 137 0
	str	r3, [r4, #4]
	mov	r3, #11
	str	r3, [r4, #8]
	mov	r3, #4
	str	r3, [r4, #12]
	.loc 1 138 0
	add	r4, sp, #16
	mov	r2, #16
	mov	r0, r4
	.loc 1 137 0
	str	r6, [sp, #32]
	.loc 1 138 0
	bl	memset
	mov	r3, #5
	str	r3, [r4, #4]
	mov	r3, #11
	str	r3, [r4, #8]
	mov	r3, #6
	str	r3, [r4, #12]
	str	r6, [sp, #16]
	.loc 1 140 0
	bl	guiGetRoot
	add	r2, sp, #240
	mov	r1, r0
	ldr	r0, .L34
	bl	guiObjCreateChild_r
	str	r0, [sp, #12]
	.loc 1 141 0
	bl	guiGetRoot
	ldr	r4, .L34+4
	mov	r1, r0
	add	r2, sp, #224
	mov	r0, r4
	bl	guiObjCreateChild_r
	str	r0, [sp, #8]
	.loc 1 142 0
	bl	guiGetRoot
	add	r2, sp, #208
	mov	r1, r0
	mov	r0, r4
	bl	guiObjCreateChild_r
	str	r0, [sp, #4]
	.loc 1 143 0
	bl	guiGetRoot
	add	r2, sp, #192
	mov	r1, r0
	mov	r0, r4
	bl	guiObjCreateChild_r
	mov	r6, r0
.LVL22:
	.loc 1 144 0
	bl	guiGetRoot
	add	r2, sp, #176
	mov	r1, r0
	mov	r0, r4
	bl	guiObjCreateChild_r
	mov	r4, r0
.LVL23:
	.loc 1 145 0
	bl	guiGetRoot
	add	r2, sp, #144
	mov	r1, r0
	ldr	r0, .L34+8
	bl	guiObjCreateChild_r
	.loc 1 147 0
	bl	systemIsSlot2Active
	cmp	r0, #0
	beq	.L21
.LBB8:
	.loc 1 148 0
	bl	guiGetRoot
	add	r2, sp, #160
	mov	r1, r0
	ldr	r0, .L34+12
	bl	guiObjCreateChild_r
	.loc 1 149 0
	ldr	r1, .L34+16
	bl	guiLabelSetText
.L21:
.LBE8:
	.loc 1 152 0
	ldr	r0, [sp, #8]
	ldr	r1, .L34+20
	bl	guiLabelSetText
	.loc 1 153 0
	ldr	r0, [sp, #4]
	ldr	r1, .L34+24
	bl	guiLabelSetText
	.loc 1 154 0
	mov	r0, r6
	ldr	r1, .L34+28
	bl	guiLabelSetText
	.loc 1 155 0
	mov	r0, r4
	ldr	r1, .L34+32
	bl	guiLabelSetText
	.loc 1 157 0
	ldr	r1, .L34+36
	ldr	r0, [sp, #12]
	bl	guiObjSetHandler
	.loc 1 158 0
	ldr	r1, .L34+40
	ldr	r0, [sp, #8]
	bl	guiObjSetHandler
	.loc 1 159 0
	ldr	r1, .L34+44
	ldr	r0, [sp, #4]
	bl	guiObjSetHandler
	.loc 1 160 0
	mov	r0, r6
	ldr	r1, .L34+48
	bl	guiObjSetHandler
	.loc 1 161 0
	ldr	r1, .L34+52
	mov	r0, r4
	bl	guiObjSetHandler
	.loc 1 180 0
	bl	guiGetRoot
	ldr	r4, .L34+12
.LVL24:
	mov	r1, r0
	add	r2, sp, #64
	mov	r0, r4
	bl	guiObjCreateChild_r
	str	r0, [sp, #4]
	.loc 1 181 0
	ldr	r1, [sp, #4]
	mov	r0, r4
	add	r2, sp, #48
	bl	guiObjCreateChild_r
	.loc 1 182 0
	ldr	r6, .L34+56
.LVL25:
	.loc 1 181 0
	str	r0, [sp, #8]
	.loc 1 182 0
	ldr	r1, [sp, #4]
	add	r2, sp, #32
	mov	r0, r6
	bl	guiObjCreateChild_r
	.loc 1 183 0
	add	r2, sp, #16
	.loc 1 182 0
	str	r0, [r5, #48]
	.loc 1 183 0
	ldr	r1, [sp, #4]
	mov	r0, r6
	bl	guiObjCreateChild_r
	.loc 1 185 0
	ldr	r1, .L34+60
	.loc 1 183 0
	str	r0, [r5, #52]
	.loc 1 185 0
	ldr	r0, [sp, #8]
	bl	guiLabelSetText
	.loc 1 186 0
	ldr	r0, [r5, #48]
	ldr	r1, .L34+64
	bl	guiLabelSetText
	.loc 1 187 0
	ldr	r0, [r5, #52]
	ldr	r1, .L34+68
	bl	guiLabelSetText
	.loc 1 188 0
	ldr	r1, .L34+72
	ldr	r0, [r5, #48]
	bl	guiObjSetHandler
	.loc 1 189 0
	ldr	r1, .L34+76
	ldr	r0, [r5, #52]
	bl	guiObjSetHandler
	.loc 1 192 0
	bl	guiGetRoot
	add	r2, sp, #128
	mov	r1, r0
	mov	r0, r4
	bl	guiObjCreateChild_r
	str	r0, [sp, #4]
	.loc 1 193 0
	ldr	r1, [sp, #4]
	mov	r0, r4
	add	r2, sp, #112
	bl	guiObjCreateChild_r
	.loc 1 194 0
	ldr	r1, [sp, #4]
	.loc 1 193 0
	mov	r4, r0
	.loc 1 194 0
	add	r2, sp, #96
	mov	r0, r6
	bl	guiObjCreateChild_r
	.loc 1 195 0
	add	r2, sp, #80
	.loc 1 194 0
	str	r0, [r5, #40]
	.loc 1 195 0
	ldr	r1, [sp, #4]
	mov	r0, r6
	bl	guiObjCreateChild_r
	.loc 1 196 0
	ldr	r1, .L34+80
	.loc 1 195 0
	str	r0, [r5, #44]
	.loc 1 196 0
	mov	r0, r4
	bl	guiLabelSetText
	.loc 1 197 0
	ldr	r0, [r5, #40]
	ldr	r1, .L34+64
	bl	guiLabelSetText
	.loc 1 198 0
	ldr	r0, [r5, #44]
	ldr	r1, .L34+84
	bl	guiLabelSetText
	.loc 1 199 0
	ldr	r1, .L34+88
	ldr	r0, [r5, #40]
	bl	guiObjSetHandler
	.loc 1 200 0
	ldr	r0, [r5, #44]
	ldr	r1, .L34+92
	bl	guiObjSetHandler
	mov	r0, #0
.LVL26:
.LBE7:
	.loc 1 205 0
	b	.L20
.LVL27:
.L18:
.LBE6:
.LBB9:
	.loc 1 207 0
	ldr	r0, [r0, #40]
	mov	r1, #0
.LVL28:
	bl	guiCheckboxSetChecked
.LVL29:
	.loc 1 208 0
	ldr	r0, [r5, #44]
	mov	r1, #0
	bl	guiCheckboxSetChecked
	.loc 1 209 0
	ldr	r0, [r5, #52]
	mov	r1, #0
	bl	guiCheckboxSetChecked
	.loc 1 210 0
	ldr	r0, [r5, #48]
	mov	r1, #0
	bl	guiCheckboxSetChecked
	.loc 1 212 0
	bl	neoVideoGetSize
	cmp	r0, #0
	beq	.L23
	cmp	r0, #1
	bne	.L22
	b	.L33
.L23:
	.loc 1 214 0
	ldr	r0, [r5, #40]
	b	.L29
.L33:
	.loc 1 217 0
	ldr	r0, [r5, #44]
.L29:
	mov	r1, #1
	bl	guiCheckboxSetChecked
.L22:
	.loc 1 222 0
	mov	r3, #246
	lsl	r3, r3, #1
	ldr	r3, [r7, r3]
	cmp	r3, #3
	bne	.L28
	.loc 1 223 0
	ldr	r0, [r5, #52]
	b	.L31
.L28:
	.loc 1 224 0
	ldr	r0, [r5, #48]
.L31:
	mov	r1, #1
	bl	guiCheckboxSetChecked
.LVL30:
.L30:
	mov	r0, #1
.LVL31:
.L20:
.LBE9:
	.loc 1 228 0
	add	sp, sp, #256
.LVL32:
	@ sp needed for prologue
.LVL33:
	pop	{r4, r5, r6, pc}
.L35:
	.align	2
.L34:
	.word	__TGuiObjectTypeHeader__
	.word	__TGuiButtonTypeHeader__
	.word	__TGuiStatusTypeHeader__
	.word	__TGuiLabelTypeHeader__
	.word	.LC6
	.word	.LC8
	.word	.LC10
	.word	.LC12
	.word	.LC14
	.word	logoHandler
	.word	romSelectHandler
	.word	screenOffHandler
	.word	inputHandler
	.word	saveHandler
	.word	__TGuiRadioButtonTypeHeader__
	.word	.LC22
	.word	.LC24
	.word	.LC26
	.word	cpuFastHandler
	.word	cpuMediumHandler
	.word	.LC30
	.word	.LC32
	.word	normalSizeHandler
	.word	scaledSizeHandler
.LFE179:
	.size	__TGuiLayoutMainTypeHandler__, .-__TGuiLayoutMainTypeHandler__
	.align	2
	.code	16
	.thumb_func
	.type	scaledSizeHandler, %function
scaledSizeHandler:
.LFB171:
	.loc 1 33 0
	push	{r4, lr}
.LCFI5:
.LVL34:
	.loc 1 33 0
	cmp	r1, #13
	beq	.L38
	mov	r0, #1
.LVL35:
	b	.L39
.LVL36:
.L38:
.LBB10:
	.loc 1 36 0
	mov	r0, #1
.LVL37:
	bl	neoVideoSetSize
.LVL38:
	mov	r0, #0
.LVL39:
.L39:
.LVL40:
.LBE10:
	.loc 1 39 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE171:
	.size	scaledSizeHandler, .-scaledSizeHandler
	.align	2
	.code	16
	.thumb_func
	.type	normalSizeHandler, %function
normalSizeHandler:
.LFB170:
	.loc 1 25 0
	push	{r4, lr}
.LCFI6:
.LVL41:
	.loc 1 25 0
	cmp	r1, #13
	beq	.L43
	mov	r0, #1
.LVL42:
	b	.L44
.LVL43:
.L43:
.LBB11:
	.loc 1 28 0
	mov	r0, #0
.LVL44:
	bl	neoVideoSetSize
.LVL45:
	mov	r0, #0
.LVL46:
.L44:
.LVL47:
.LBE11:
	.loc 1 31 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE170:
	.size	normalSizeHandler, .-normalSizeHandler
	.align	2
	.code	16
	.thumb_func
	.type	cpuMediumHandler, %function
cpuMediumHandler:
.LFB173:
	.loc 1 49 0
	push	{r4, lr}
.LCFI7:
.LVL48:
	.loc 1 49 0
	cmp	r1, #13
	beq	.L48
	mov	r0, #1
.LVL49:
	b	.L49
.LVL50:
.L48:
.LBB12:
	.loc 1 52 0
	mov	r0, #3
.LVL51:
	bl	neoSystemSetClockDivide
.LVL52:
	mov	r0, #0
.LVL53:
.L49:
.LVL54:
.LBE12:
	.loc 1 55 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE173:
	.size	cpuMediumHandler, .-cpuMediumHandler
	.align	2
	.code	16
	.thumb_func
	.type	cpuFastHandler, %function
cpuFastHandler:
.LFB172:
	.loc 1 41 0
	push	{r4, lr}
.LCFI8:
.LVL55:
	.loc 1 41 0
	cmp	r1, #13
	beq	.L53
	mov	r0, #1
.LVL56:
	b	.L54
.LVL57:
.L53:
.LBB13:
	.loc 1 44 0
	mov	r0, #2
.LVL58:
	bl	neoSystemSetClockDivide
.LVL59:
	mov	r0, #0
.LVL60:
.L54:
.LVL61:
.LBE13:
	.loc 1 47 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE172:
	.size	cpuFastHandler, .-cpuFastHandler
	.align	2
	.code	16
	.thumb_func
	.type	saveHandler, %function
saveHandler:
.LFB178:
	.loc 1 92 0
	push	{r4, lr}
.LCFI9:
.LVL62:
	.loc 1 92 0
	cmp	r1, #13
	beq	.L58
	mov	r0, #1
.LVL63:
	b	.L59
.LVL64:
.L58:
.LBB14:
	.loc 1 96 0
	mov	r0, #0
.LVL65:
	bl	neoSystemSetEnabled
.LVL66:
	.loc 1 97 0
	bl	neoSaveConfig
	.loc 1 98 0
	bl	guiGetRoot
	bl	guiObjRenderDirty
	.loc 1 99 0
	mov	r0, #1
	bl	neoSystemSetEnabled
	mov	r0, #0
.LVL67:
.L59:
.LVL68:
.LBE14:
	.loc 1 102 0
	@ sp needed for prologue
	pop	{r4, pc}
.LFE178:
	.size	saveHandler, .-saveHandler
	.align	2
	.code	16
	.thumb_func
	.type	inputHandler, %function
inputHandler:
.LFB177:
	.loc 1 84 0
	push	{r4, lr}
.LCFI10:
.LVL69:
	.loc 1 84 0
	cmp	r1, #13
	beq	.L63
	mov	r0, #1
.LVL70:
	b	.L64
.LVL71:
.L63:
.LBB15:
	.loc 1 87 0
	ldr	r0, .L66
.LVL72:
	bl	guiFramePush_r
.LVL73:
	mov	r0, #0
.LVL74:
.L64:
.LVL75:
.LBE15:
	.loc 1 90 0
	@ sp needed for prologue
	pop	{r4, pc}
.L67:
	.align	2
.L66:
	.word	__TGuiLayoutInputTypeHeader__
.LFE177:
	.size	inputHandler, .-inputHandler
	.align	2
	.code	16
	.thumb_func
	.type	screenOffHandler, %function
screenOffHandler:
.LFB176:
	.loc 1 76 0
	push	{r4, lr}
.LCFI11:
.LVL76:
	.loc 1 76 0
	cmp	r1, #13
	beq	.L70
	mov	r0, #1
.LVL77:
	b	.L71
.LVL78:
.L70:
.LBB16:
	.loc 1 79 0
	ldr	r0, .L73
.LVL79:
	bl	guiFramePush_r
.LVL80:
	mov	r0, #0
.LVL81:
.L71:
.LVL82:
.LBE16:
	.loc 1 82 0
	@ sp needed for prologue
	pop	{r4, pc}
.L74:
	.align	2
.L73:
	.word	.LANCHOR0
.LFE176:
	.size	screenOffHandler, .-screenOffHandler
	.align	2
	.code	16
	.thumb_func
	.type	romSelectHandler, %function
romSelectHandler:
.LFB175:
	.loc 1 68 0
	push	{r4, lr}
.LCFI12:
.LVL83:
	.loc 1 68 0
	cmp	r1, #13
	beq	.L77
	mov	r0, #1
.LVL84:
	b	.L78
.LVL85:
.L77:
.LBB17:
	.loc 1 71 0
	ldr	r0, .L80
.LVL86:
	bl	guiFramePush_r
.LVL87:
	mov	r0, #0
.LVL88:
.L78:
.LVL89:
.LBE17:
	.loc 1 74 0
	@ sp needed for prologue
	pop	{r4, pc}
.L81:
	.align	2
.L80:
	.word	__TGuiLayoutRomSelectTypeHeader__
.LFE175:
	.size	romSelectHandler, .-romSelectHandler
	.align	2
	.code	16
	.thumb_func
	.type	logoHandler, %function
logoHandler:
.LFB174:
	.loc 1 57 0
	push	{r4, lr}
.LCFI13:
.LVL90:
	sub	sp, sp, #16
.LCFI14:
	.loc 1 57 0
	cmp	r1, #6
	beq	.L84
	mov	r0, #1
.LVL91:
	b	.L85
.LVL92:
.L84:
.LBB18:
.LBB19:
	.loc 1 61 0
	mov	r1, sp
.LVL93:
	bl	guiObjGetGlobalBounds
.LVL94:
	.loc 1 62 0
	mov	r0, sp
	mov	r1, #0
	bl	guiRenderFrameBounds
	.loc 1 63 0
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	add	r0, r0, #1
	add	r1, r1, #1
	bl	guiRenderLogo
	mov	r0, #0
.LVL95:
.L85:
.LBE19:
.LBE18:
	.loc 1 66 0
	add	sp, sp, #16
.LVL96:
	@ sp needed for prologue
	pop	{r4, pc}
.LFE174:
	.size	logoHandler, .-logoHandler
	.global	__TGuiLayoutMainTypeHeader__
	.global	__TGuiLayoutScreenOffTypeHeader__
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	__TGuiLayoutScreenOffTypeHeader__, %object
	.size	__TGuiLayoutScreenOffTypeHeader__, 16
__TGuiLayoutScreenOffTypeHeader__:
	.word	__TGuiLayoutScreenOffTypeHandler__
	.word	__TGuiObjectTypeHeader__
	.word	44
	.word	.LC40
	.type	__TGuiLayoutMainTypeHeader__, %object
	.size	__TGuiLayoutMainTypeHeader__, 16
__TGuiLayoutMainTypeHeader__:
	.word	__TGuiLayoutMainTypeHandler__
	.word	__TGuiObjectTypeHeader__
	.word	56
	.word	.LC39
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC6:
	.ascii	"SLOT2\000"
.LC8:
	.ascii	"Load Rom\000"
.LC10:
	.ascii	"Screen Off\000"
.LC12:
	.ascii	"Input\000"
.LC14:
	.ascii	"Save\000"
.LC22:
	.ascii	"CPU Clock\000"
.LC24:
	.ascii	"Normal\000"
.LC26:
	.ascii	"Slower\000"
.LC30:
	.ascii	"Video\000"
.LC32:
	.ascii	"Scaled\000"
.LC39:
	.ascii	"TGuiLayoutMain\000"
.LC40:
	.ascii	"TGuiLayoutScreenOff\000"
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
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.byte	0x4
	.4byte	.LCFI0-.LFB181
	.byte	0xe
	.uleb128 0xc
	.byte	0x11
	.uleb128 0x4
	.sleb128 3
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.byte	0x4
	.4byte	.LCFI2-.LFB180
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.byte	0x4
	.4byte	.LCFI3-.LFB179
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
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x110
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.byte	0x4
	.4byte	.LCFI5-.LFB171
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.byte	0x4
	.4byte	.LCFI6-.LFB170
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.byte	0x4
	.4byte	.LCFI7-.LFB173
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.byte	0x4
	.4byte	.LCFI8-.LFB172
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
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
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.byte	0x4
	.4byte	.LCFI9-.LFB178
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
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.byte	0x4
	.4byte	.LCFI10-.LFB177
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
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
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.byte	0x4
	.4byte	.LCFI11-.LFB176
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
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
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.byte	0x4
	.4byte	.LCFI12-.LFB175
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
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
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.byte	0x4
	.4byte	.LCFI13-.LFB174
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE22:
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB181-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE181-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE181-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE181-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB180-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE180-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE180-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE180-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB179-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE179-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 272
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL30-.Ltext0
	.4byte	.LFE179-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30-.Ltext0
	.4byte	.LFE179-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB171-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL39-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39-.Ltext0
	.4byte	.LFE171-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB170-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL46-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46-.Ltext0
	.4byte	.LFE170-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LFB173-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE173-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LFB172-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60-.Ltext0
	.4byte	.LFE172-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LFB178-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE178-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE178-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE178-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LFB177-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE177-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL74-.Ltext0
	.4byte	.LFE177-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74-.Ltext0
	.4byte	.LFE177-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LFB176-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE176-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL81-.Ltext0
	.4byte	.LFE176-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81-.Ltext0
	.4byte	.LFE176-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LFB175-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE175-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL88-.Ltext0
	.4byte	.LFE175-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88-.Ltext0
	.4byte	.LFE175-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LFB174-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL95-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95-.Ltext0
	.4byte	.LFE174-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "C:/devkitPro/libnds/include/nds/arm9/video.h"
	.file 5 "C:/devkitPro/libnds/include/nds/arm9/background.h"
	.file 6 "C:/devkitPro/libnds/include/nds/dynamicArray.h"
	.file 7 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 8 "C:/devkitPro/libnds/include/nds/arm9/sprite.h"
	.file 9 "C:/Users/GRX/NeoDS/arm9/source/Default.h"
	.file 10 "C:/Users/GRX/NeoDS/arm9/include/cyclone.h"
	.file 11 "C:/Users/GRX/NeoDS/arm9/include/NeoCpu.h"
	.file 12 "C:/Users/GRX/NeoDS/arm9/../common/source/NeoAudioStream.h"
	.file 13 "C:/Users/GRX/NeoDS/arm9/include/NeoSystem.h"
	.file 14 "C:/Users/GRX/NeoDS/arm9/include/NeoVideo.h"
	.file 15 "C:/Users/GRX/NeoDS/arm9/../common/source/NeoIPC.h"
	.file 16 "C:/Users/GRX/NeoDS/arm9/source/guiEvent.h"
	.file 17 "C:/Users/GRX/NeoDS/arm9/source/guiObject.h"
	.file 18 "C:/Users/GRX/NeoDS/arm9/source/guiRender.h"
	.file 19 "C:/Users/GRX/NeoDS/arm9/source/guiLabel.h"
	.file 20 "C:/Users/GRX/NeoDS/arm9/source/guiButton.h"
	.file 21 "C:/Users/GRX/NeoDS/arm9/source/guiStatus.h"
	.file 22 "C:/Users/GRX/NeoDS/arm9/source/guiCheckbox.h"
	.file 23 "C:/Users/GRX/NeoDS/arm9/source/guiRadioButton.h"
	.file 24 "C:/Users/GRX/NeoDS/arm9/source/LayoutMain.h"
	.file 25 "C:/Users/GRX/NeoDS/arm9/source/LayoutRomSelect.h"
	.file 26 "C:/Users/GRX/NeoDS/arm9/source/LayoutInput.h"
	.section	.debug_info
	.4byte	0x1b99
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF357
	.byte	0x1
	.4byte	.LASF358
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
	.uleb128 0x8
	.byte	0x4
	.4byte	0x127
	.uleb128 0xc
	.4byte	0x10a
	.uleb128 0xd
	.4byte	0x10a
	.4byte	0x13c
	.uleb128 0xe
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.2byte	0x1ad
	.4byte	0x1de
	.uleb128 0x7
	.4byte	.LASF21
	.sleb128 65536
	.uleb128 0x7
	.4byte	.LASF22
	.sleb128 65537
	.uleb128 0x7
	.4byte	.LASF23
	.sleb128 65538
	.uleb128 0x7
	.4byte	.LASF24
	.sleb128 65539
	.uleb128 0x7
	.4byte	.LASF25
	.sleb128 65540
	.uleb128 0x7
	.4byte	.LASF26
	.sleb128 65541
	.uleb128 0x7
	.4byte	.LASF27
	.sleb128 65542
	.uleb128 0x7
	.4byte	.LASF28
	.sleb128 65800
	.uleb128 0x7
	.4byte	.LASF29
	.sleb128 65801
	.uleb128 0x7
	.4byte	.LASF30
	.sleb128 65802
	.uleb128 0x7
	.4byte	.LASF31
	.sleb128 65803
	.uleb128 0x7
	.4byte	.LASF32
	.sleb128 65804
	.uleb128 0x7
	.4byte	.LASF33
	.sleb128 65805
	.uleb128 0x7
	.4byte	.LASF34
	.sleb128 65806
	.uleb128 0x7
	.4byte	.LASF35
	.sleb128 196608
	.uleb128 0x7
	.4byte	.LASF36
	.sleb128 131072
	.uleb128 0x7
	.4byte	.LASF37
	.sleb128 393216
	.uleb128 0x7
	.4byte	.LASF38
	.sleb128 655360
	.uleb128 0x7
	.4byte	.LASF39
	.sleb128 917504
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x28
	.byte	0x5
	.2byte	0x18c
	.4byte	0x282
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x5
	.2byte	0x18d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x18e
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x18f
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x190
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x191
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x5
	.2byte	0x192
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x5
	.2byte	0x193
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x5
	.2byte	0x194
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0x5
	.2byte	0x195
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x5
	.2byte	0x196
	.4byte	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x5
	.2byte	0x198
	.4byte	0x1de
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x8
	.byte	0x6
	.byte	0x29
	.4byte	0x2b7
	.uleb128 0x14
	.4byte	.LASF52
	.byte	0x6
	.byte	0x2a
	.4byte	0x2b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x6
	.byte	0x2b
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x118
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x6
	.byte	0x2c
	.4byte	0x28e
	.uleb128 0x6
	.byte	0x1
	.byte	0x7
	.byte	0x9c
	.4byte	0x2e9
	.uleb128 0x7
	.4byte	.LASF54
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF55
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF56
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF57
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x7
	.byte	0xa1
	.4byte	0x2c8
	.uleb128 0x15
	.4byte	.LASF59
	.2byte	0x2020
	.byte	0x7
	.2byte	0x11a
	.4byte	0x380
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x11b
	.4byte	0x2e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x11e
	.4byte	0x90
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x121
	.4byte	0x380
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x122
	.4byte	0x2bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x123
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x124
	.4byte	0x391
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x125
	.4byte	0x90
	.byte	0x3
	.byte	0x23
	.uleb128 0x2018
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x126
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x201c
	.byte	0x0
	.uleb128 0xd
	.4byte	0x90
	.4byte	0x391
	.uleb128 0x16
	.4byte	0x107
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x90
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x7
	.2byte	0x128
	.4byte	0x2f4
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x59
	.4byte	0x3d0
	.uleb128 0x7
	.4byte	.LASF68
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF69
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF70
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF71
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x62
	.4byte	0x3f1
	.uleb128 0x7
	.4byte	.LASF72
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF73
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF74
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF75
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x6a
	.4byte	0x412
	.uleb128 0x7
	.4byte	.LASF76
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF77
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF78
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF79
	.sleb128 3
	.byte	0x0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.byte	0x72
	.4byte	0x427
	.uleb128 0x7
	.4byte	.LASF80
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF81
	.sleb128 1
	.byte	0x0
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x8
	.byte	0x9
	.byte	0xd
	.4byte	0x44c
	.uleb128 0x17
	.ascii	"x\000"
	.byte	0x9
	.byte	0xe
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.ascii	"y\000"
	.byte	0x9
	.byte	0xf
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x9
	.byte	0x10
	.4byte	0x427
	.uleb128 0x18
	.byte	0x10
	.byte	0x9
	.byte	0x13
	.4byte	0x494
	.uleb128 0x17
	.ascii	"x0\000"
	.byte	0x9
	.byte	0x14
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.ascii	"y0\000"
	.byte	0x9
	.byte	0x15
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.ascii	"x1\000"
	.byte	0x9
	.byte	0x16
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.ascii	"y1\000"
	.byte	0x9
	.byte	0x17
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x18
	.byte	0x10
	.byte	0x9
	.byte	0x19
	.4byte	0x4b7
	.uleb128 0x17
	.ascii	"p0\000"
	.byte	0x9
	.byte	0x1a
	.4byte	0x44c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.ascii	"p1\000"
	.byte	0x9
	.byte	0x1b
	.4byte	0x44c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF359
	.byte	0x10
	.byte	0x9
	.byte	0x12
	.4byte	0x4ce
	.uleb128 0x1a
	.4byte	0x457
	.uleb128 0x1a
	.4byte	0x494
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x9
	.byte	0x1d
	.4byte	0x4b7
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0xb0
	.byte	0xa
	.byte	0x15
	.4byte	0x66f
	.uleb128 0x17
	.ascii	"d\000"
	.byte	0xa
	.byte	0x16
	.4byte	0x66f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.ascii	"a\000"
	.byte	0xa
	.byte	0x17
	.4byte	0x66f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x17
	.ascii	"pc\000"
	.byte	0xa
	.byte	0x18
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x17
	.ascii	"srh\000"
	.byte	0xa
	.byte	0x19
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0xa
	.byte	0x1a
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0xa
	.byte	0x1b
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x17
	.ascii	"irq\000"
	.byte	0xa
	.byte	0x1c
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x17
	.ascii	"osp\000"
	.byte	0xa
	.byte	0x1d
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x17
	.ascii	"xc\000"
	.byte	0xa
	.byte	0x1e
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0xa
	.byte	0x1f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0xa
	.byte	0x20
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0xa
	.byte	0x21
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0xa
	.byte	0x22
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0xa
	.byte	0x23
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0xa
	.byte	0x24
	.4byte	0x68f
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0xa
	.byte	0x25
	.4byte	0x68f
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0xa
	.byte	0x26
	.4byte	0x68f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0xa
	.byte	0x27
	.4byte	0x68f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0xa
	.byte	0x28
	.4byte	0x6a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0xa
	.byte	0x29
	.4byte	0x6bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0xa
	.byte	0x2a
	.4byte	0x6d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0xa
	.byte	0x2b
	.4byte	0x68f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0xa
	.byte	0x2c
	.4byte	0x68f
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0xa
	.byte	0x2d
	.4byte	0x68f
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0xa
	.byte	0x2e
	.4byte	0x6ea
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0xa
	.byte	0x2f
	.4byte	0xff
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0xa
	.byte	0x30
	.4byte	0x6f6
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0xa
	.byte	0x31
	.4byte	0x6fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xd
	.4byte	0x7b
	.4byte	0x67f
	.uleb128 0xe
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x7b
	.4byte	0x68f
	.uleb128 0x1c
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x67f
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x6a6
	.uleb128 0x1c
	.4byte	0x7b
	.uleb128 0x1c
	.4byte	0x33
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x695
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x6bd
	.uleb128 0x1c
	.4byte	0x7b
	.uleb128 0x1c
	.4byte	0x57
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6ac
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x6d4
	.uleb128 0x1c
	.4byte	0x7b
	.uleb128 0x1c
	.4byte	0x7b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6c3
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x69
	.4byte	0x6ea
	.uleb128 0x1c
	.4byte	0x69
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6da
	.uleb128 0x1e
	.byte	0x1
	.4byte	0x69
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6f0
	.uleb128 0xd
	.4byte	0x7b
	.4byte	0x70c
	.uleb128 0xe
	.4byte	0x107
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0xb
	.byte	0x6
	.4byte	0x4d9
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0xb
	.byte	0x8
	.4byte	0x722
	.uleb128 0x8
	.byte	0x4
	.4byte	0x728
	.uleb128 0x1b
	.byte	0x1
	.4byte	0xa9
	.4byte	0x738
	.uleb128 0x1c
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0xb
	.byte	0x9
	.4byte	0x743
	.uleb128 0x8
	.byte	0x4
	.4byte	0x749
	.uleb128 0x1b
	.byte	0x1
	.4byte	0xb3
	.4byte	0x759
	.uleb128 0x1c
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0xb
	.byte	0xa
	.4byte	0x764
	.uleb128 0x8
	.byte	0x4
	.4byte	0x76a
	.uleb128 0x1b
	.byte	0x1
	.4byte	0xbe
	.4byte	0x77a
	.uleb128 0x1c
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0xb
	.byte	0xc
	.4byte	0x785
	.uleb128 0x8
	.byte	0x4
	.4byte	0x78b
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x79c
	.uleb128 0x1c
	.4byte	0xbe
	.uleb128 0x1c
	.4byte	0xa9
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xb
	.byte	0xd
	.4byte	0x7a7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7ad
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x7be
	.uleb128 0x1c
	.4byte	0xbe
	.uleb128 0x1c
	.4byte	0xb3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xb
	.byte	0xe
	.4byte	0x7c9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7cf
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x7e0
	.uleb128 0x1c
	.4byte	0xbe
	.uleb128 0x1c
	.4byte	0xbe
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0xb
	.byte	0x10
	.4byte	0x764
	.uleb128 0x13
	.4byte	.LASF115
	.byte	0xc
	.byte	0xc
	.byte	0x17
	.4byte	0x830
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0xc
	.byte	0x18
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.ascii	"end\000"
	.byte	0xc
	.byte	0x19
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.ascii	"acc\000"
	.byte	0xc
	.byte	0x1a
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0xc
	.byte	0x1b
	.4byte	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0xc
	.byte	0x1c
	.4byte	0x7eb
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0xc
	.byte	0xc
	.byte	0x1f
	.4byte	0x872
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0xc
	.byte	0x20
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0xc
	.byte	0x21
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0xc
	.byte	0x22
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0xc
	.byte	0x23
	.4byte	0x83b
	.uleb128 0x1f
	.4byte	.LASF207
	.byte	0x1
	.byte	0xd
	.byte	0x99
	.4byte	0x8c6
	.uleb128 0x7
	.4byte	.LASF124
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF125
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF126
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF127
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF128
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF129
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF130
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF131
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF132
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF133
	.sleb128 9
	.byte	0x0
	.uleb128 0x20
	.2byte	0x248
	.byte	0xd
	.byte	0xc0
	.4byte	0xcb4
	.uleb128 0x17
	.ascii	"cpu\000"
	.byte	0xd
	.byte	0xc1
	.4byte	0x70c
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF134
	.byte	0xd
	.byte	0xc4
	.4byte	0xcb4
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x14
	.4byte	.LASF135
	.byte	0xd
	.byte	0xc7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x14
	.4byte	.LASF136
	.byte	0xd
	.byte	0xc8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x14
	.4byte	.LASF137
	.byte	0xd
	.byte	0xcb
	.4byte	0xcc4
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x14
	.4byte	.LASF138
	.byte	0xd
	.byte	0xcc
	.4byte	0x872
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x14
	.4byte	.LASF139
	.byte	0xd
	.byte	0xcd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x14
	.4byte	.LASF140
	.byte	0xd
	.byte	0xd0
	.4byte	0x3a9
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x14
	.4byte	.LASF141
	.byte	0xd
	.byte	0xd1
	.4byte	0x3a9
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x14
	.4byte	.LASF142
	.byte	0xd
	.byte	0xd2
	.4byte	0x3a9
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x14
	.4byte	.LASF143
	.byte	0xd
	.byte	0xd3
	.4byte	0x3a9
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x14
	.4byte	.LASF144
	.byte	0xd
	.byte	0xd4
	.4byte	0x3a9
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x14
	.4byte	.LASF145
	.byte	0xd
	.byte	0xd5
	.4byte	0x3a9
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x14
	.4byte	.LASF146
	.byte	0xd
	.byte	0xd6
	.4byte	0x3a3
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x14
	.4byte	.LASF147
	.byte	0xd
	.byte	0xd7
	.4byte	0x3a3
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x14
	.4byte	.LASF148
	.byte	0xd
	.byte	0xd8
	.4byte	0x3a3
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x14
	.4byte	.LASF149
	.byte	0xd
	.byte	0xda
	.4byte	0xcd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x14
	.4byte	.LASF150
	.byte	0xd
	.byte	0xdd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x14
	.4byte	.LASF151
	.byte	0xd
	.byte	0xde
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x14
	.4byte	.LASF152
	.byte	0xd
	.byte	0xdf
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x14
	.4byte	.LASF153
	.byte	0xd
	.byte	0xe0
	.4byte	0xce5
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x14
	.4byte	.LASF154
	.byte	0xd
	.byte	0xe1
	.4byte	0xce5
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x14
	.4byte	.LASF155
	.byte	0xd
	.byte	0xe2
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x14
	.4byte	.LASF156
	.byte	0xd
	.byte	0xe5
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x14
	.4byte	.LASF157
	.byte	0xd
	.byte	0xe6
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x14
	.4byte	.LASF158
	.byte	0xd
	.byte	0xe7
	.4byte	0x3a3
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x14
	.4byte	.LASF159
	.byte	0xd
	.byte	0xe8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x14
	.4byte	.LASF160
	.byte	0xd
	.byte	0xea
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x14
	.4byte	.LASF161
	.byte	0xd
	.byte	0xeb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x14
	.4byte	.LASF162
	.byte	0xd
	.byte	0xec
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x14
	.4byte	.LASF163
	.byte	0xd
	.byte	0xed
	.4byte	0xcf0
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x14
	.4byte	.LASF164
	.byte	0xd
	.byte	0xee
	.4byte	0x3a3
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x14
	.4byte	.LASF165
	.byte	0xd
	.byte	0xf1
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x14
	.4byte	.LASF166
	.byte	0xd
	.byte	0xf2
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x14
	.4byte	.LASF167
	.byte	0xd
	.byte	0xf3
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x14
	.4byte	.LASF168
	.byte	0xd
	.byte	0xf4
	.4byte	0xc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x14
	.4byte	.LASF169
	.byte	0xd
	.byte	0xf7
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x14
	.4byte	.LASF170
	.byte	0xd
	.byte	0xf8
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x14
	.4byte	.LASF171
	.byte	0xd
	.byte	0xf9
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x14
	.4byte	.LASF172
	.byte	0xd
	.byte	0xfa
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x14
	.4byte	.LASF173
	.byte	0xd
	.byte	0xfb
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x14
	.4byte	.LASF174
	.byte	0xd
	.byte	0xfc
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x14
	.4byte	.LASF175
	.byte	0xd
	.byte	0xfd
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0x11
	.4byte	.LASF176
	.byte	0xd
	.2byte	0x102
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x11
	.4byte	.LASF177
	.byte	0xd
	.2byte	0x103
	.4byte	0xd4
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0x11
	.4byte	.LASF178
	.byte	0xd
	.2byte	0x106
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x11
	.4byte	.LASF179
	.byte	0xd
	.2byte	0x108
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x11
	.4byte	.LASF180
	.byte	0xd
	.2byte	0x109
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0x11
	.4byte	.LASF181
	.byte	0xd
	.2byte	0x10a
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0x11
	.4byte	.LASF182
	.byte	0xd
	.2byte	0x10b
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x11
	.4byte	.LASF183
	.byte	0xd
	.2byte	0x10d
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0xd
	.2byte	0x10e
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x11
	.4byte	.LASF185
	.byte	0xd
	.2byte	0x10f
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x11
	.4byte	.LASF186
	.byte	0xd
	.2byte	0x110
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x11
	.4byte	.LASF187
	.byte	0xd
	.2byte	0x111
	.4byte	0xbe
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0x11
	.4byte	.LASF188
	.byte	0xd
	.2byte	0x114
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0x11
	.4byte	.LASF189
	.byte	0xd
	.2byte	0x115
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0x11
	.4byte	.LASF190
	.byte	0xd
	.2byte	0x116
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0x11
	.4byte	.LASF191
	.byte	0xd
	.2byte	0x117
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0x11
	.4byte	.LASF192
	.byte	0xd
	.2byte	0x118
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0x11
	.4byte	.LASF193
	.byte	0xd
	.2byte	0x11b
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0x11
	.4byte	.LASF194
	.byte	0xd
	.2byte	0x11c
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0x11
	.4byte	.LASF195
	.byte	0xd
	.2byte	0x11f
	.4byte	0xd00
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0x11
	.4byte	.LASF196
	.byte	0xd
	.2byte	0x122
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0x11
	.4byte	.LASF197
	.byte	0xd
	.2byte	0x123
	.4byte	0xd10
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xd
	.4byte	0x118
	.4byte	0xcc4
	.uleb128 0xe
	.4byte	0x107
	.byte	0x8
	.byte	0x0
	.uleb128 0xd
	.4byte	0x830
	.4byte	0xcd4
	.uleb128 0xe
	.4byte	0x107
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xcda
	.uleb128 0x8
	.byte	0x4
	.4byte	0xce0
	.uleb128 0xc
	.4byte	0xa9
	.uleb128 0x8
	.byte	0x4
	.4byte	0xceb
	.uleb128 0xc
	.4byte	0xbe
	.uleb128 0xd
	.4byte	0xbe
	.4byte	0xd00
	.uleb128 0xe
	.4byte	0x107
	.byte	0xf
	.byte	0x0
	.uleb128 0xd
	.4byte	0xa9
	.4byte	0xd10
	.uleb128 0xe
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0xd
	.4byte	0xa9
	.4byte	0xd1f
	.uleb128 0x21
	.4byte	0x107
	.byte	0x0
	.uleb128 0x22
	.2byte	0x400
	.byte	0xd
	.byte	0xbf
	.4byte	0xd3a
	.uleb128 0x1a
	.4byte	0x8c6
	.uleb128 0x23
	.4byte	.LASF360
	.byte	0xd
	.2byte	0x125
	.4byte	0xd3a
	.byte	0x0
	.uleb128 0xd
	.4byte	0xbe
	.4byte	0xd4a
	.uleb128 0xe
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x24
	.4byte	.LASF198
	.2byte	0x2000
	.byte	0xd
	.byte	0xbe
	.4byte	0xdd0
	.uleb128 0x25
	.4byte	0xd1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x11
	.4byte	.LASF199
	.byte	0xd
	.2byte	0x128
	.4byte	0xdd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0x11
	.4byte	.LASF200
	.byte	0xd
	.2byte	0x129
	.4byte	0xde0
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0x11
	.4byte	.LASF201
	.byte	0xd
	.2byte	0x12a
	.4byte	0xdf0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0x11
	.4byte	.LASF202
	.byte	0xd
	.2byte	0x12b
	.4byte	0xe00
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0x11
	.4byte	.LASF203
	.byte	0xd
	.2byte	0x12c
	.4byte	0xe10
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0x11
	.4byte	.LASF204
	.byte	0xd
	.2byte	0x12d
	.4byte	0xe20
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0x11
	.4byte	.LASF205
	.byte	0xd
	.2byte	0x12e
	.4byte	0xe30
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xd
	.4byte	0x717
	.4byte	0xde0
	.uleb128 0xe
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0x738
	.4byte	0xdf0
	.uleb128 0xe
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0x759
	.4byte	0xe00
	.uleb128 0xe
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0x77a
	.4byte	0xe10
	.uleb128 0xe
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0x79c
	.4byte	0xe20
	.uleb128 0xe
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0x7be
	.4byte	0xe30
	.uleb128 0xe
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0xd
	.4byte	0x7e0
	.4byte	0xe40
	.uleb128 0xe
	.4byte	0x107
	.byte	0xff
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF206
	.byte	0xd
	.2byte	0x12f
	.4byte	0xd4a
	.uleb128 0x1f
	.4byte	.LASF208
	.byte	0x1
	.byte	0xe
	.byte	0xd
	.4byte	0xe6b
	.uleb128 0x7
	.4byte	.LASF209
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF210
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF211
	.sleb128 2
	.byte	0x0
	.uleb128 0x1f
	.4byte	.LASF212
	.byte	0x1
	.byte	0xf
	.byte	0x73
	.4byte	0xeb4
	.uleb128 0x7
	.4byte	.LASF213
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF214
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF215
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF216
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF217
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF218
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF219
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF220
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF221
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF222
	.sleb128 10
	.byte	0x0
	.uleb128 0x1f
	.4byte	.LASF223
	.byte	0x1
	.byte	0x10
	.byte	0x4
	.4byte	0xf15
	.uleb128 0x7
	.4byte	.LASF224
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF225
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF226
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF227
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF228
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF229
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF230
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF231
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF232
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF233
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF234
	.sleb128 10
	.uleb128 0x7
	.4byte	.LASF235
	.sleb128 11
	.uleb128 0x7
	.4byte	.LASF236
	.sleb128 12
	.uleb128 0x7
	.4byte	.LASF237
	.sleb128 13
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF238
	.byte	0x10
	.byte	0x17
	.4byte	0xeb4
	.uleb128 0x1f
	.4byte	.LASF239
	.byte	0x1
	.byte	0x10
	.byte	0x19
	.4byte	0xf39
	.uleb128 0x7
	.4byte	.LASF240
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF241
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF242
	.byte	0x10
	.byte	0x1c
	.4byte	0xf20
	.uleb128 0x3
	.4byte	.LASF243
	.byte	0x10
	.byte	0x28
	.4byte	0x118
	.uleb128 0x3
	.4byte	.LASF244
	.byte	0x10
	.byte	0x2a
	.4byte	0x118
	.uleb128 0x3
	.4byte	.LASF245
	.byte	0x10
	.byte	0x2b
	.4byte	0x118
	.uleb128 0x3
	.4byte	.LASF246
	.byte	0x10
	.byte	0x2d
	.4byte	0x118
	.uleb128 0x3
	.4byte	.LASF247
	.byte	0x10
	.byte	0x2e
	.4byte	0x118
	.uleb128 0x3
	.4byte	.LASF248
	.byte	0x11
	.byte	0xc
	.4byte	0xf86
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf8c
	.uleb128 0x1b
	.byte	0x1
	.4byte	0xf39
	.4byte	0xfa6
	.uleb128 0x1c
	.4byte	0xfa6
	.uleb128 0x1c
	.4byte	0xf15
	.uleb128 0x1c
	.4byte	0x118
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfac
	.uleb128 0x13
	.4byte	.LASF249
	.byte	0x28
	.byte	0x11
	.byte	0x8
	.4byte	0x101b
	.uleb128 0x14
	.4byte	.LASF250
	.byte	0x11
	.byte	0x1b
	.4byte	0x107a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF251
	.byte	0x11
	.byte	0x1c
	.4byte	0xfa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF252
	.byte	0x11
	.byte	0x1d
	.4byte	0xfa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF253
	.byte	0x11
	.byte	0x1e
	.4byte	0xfa6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.4byte	.LASF254
	.byte	0x11
	.byte	0x1f
	.4byte	0xf7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x11
	.byte	0x20
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.4byte	.LASF255
	.byte	0x11
	.byte	0x21
	.4byte	0x4ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x13
	.4byte	.LASF256
	.byte	0x10
	.byte	0x11
	.byte	0xe
	.4byte	0x1060
	.uleb128 0x14
	.4byte	.LASF254
	.byte	0x11
	.byte	0xf
	.4byte	0xf7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF251
	.byte	0x11
	.byte	0x10
	.4byte	0x1060
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x11
	.byte	0x11
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.4byte	.LASF257
	.byte	0x11
	.byte	0x12
	.4byte	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1066
	.uleb128 0x26
	.4byte	.LASF256
	.4byte	0x101b
	.uleb128 0x3
	.4byte	.LASF258
	.byte	0x11
	.byte	0x13
	.4byte	0x101b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1080
	.uleb128 0xc
	.4byte	0x106f
	.uleb128 0x3
	.4byte	.LASF259
	.byte	0x11
	.byte	0x22
	.4byte	0xfac
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1085
	.uleb128 0x1f
	.4byte	.LASF260
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.4byte	0x10bb
	.uleb128 0x7
	.4byte	.LASF261
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF262
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF263
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF264
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF265
	.byte	0x13
	.byte	0x6
	.4byte	0x10c6
	.uleb128 0x13
	.4byte	.LASF266
	.byte	0x48
	.byte	0x13
	.byte	0x6
	.4byte	0x10ef
	.uleb128 0x14
	.4byte	.LASF267
	.byte	0x13
	.byte	0x6
	.4byte	0x1085
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF268
	.byte	0x13
	.byte	0x7
	.4byte	0x10ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0xd
	.4byte	0x10a
	.4byte	0x10ff
	.uleb128 0xe
	.4byte	0x107
	.byte	0x1f
	.byte	0x0
	.uleb128 0x1f
	.4byte	.LASF269
	.byte	0x1
	.byte	0x14
	.byte	0x6
	.4byte	0x1118
	.uleb128 0x7
	.4byte	.LASF270
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF271
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF272
	.byte	0x14
	.byte	0x9
	.4byte	0x10ff
	.uleb128 0x3
	.4byte	.LASF273
	.byte	0x14
	.byte	0xb
	.4byte	0x112e
	.uleb128 0x13
	.4byte	.LASF274
	.byte	0x4c
	.byte	0x14
	.byte	0xb
	.4byte	0x1157
	.uleb128 0x14
	.4byte	.LASF267
	.byte	0x14
	.byte	0xb
	.4byte	0x10bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF275
	.byte	0x14
	.byte	0xc
	.4byte	0x1118
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF276
	.byte	0x15
	.byte	0x6
	.4byte	0x1162
	.uleb128 0x13
	.4byte	.LASF277
	.byte	0x40
	.byte	0x15
	.byte	0x6
	.4byte	0x11b5
	.uleb128 0x14
	.4byte	.LASF267
	.byte	0x15
	.byte	0x6
	.4byte	0x1085
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF278
	.byte	0x15
	.byte	0x7
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.4byte	.LASF279
	.byte	0x15
	.byte	0x8
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.4byte	.LASF280
	.byte	0x15
	.byte	0x9
	.4byte	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x14
	.4byte	.LASF281
	.byte	0x15
	.byte	0xa
	.4byte	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF282
	.byte	0x16
	.byte	0x6
	.4byte	0x11c0
	.uleb128 0x13
	.4byte	.LASF283
	.byte	0x50
	.byte	0x16
	.byte	0x6
	.4byte	0x11e9
	.uleb128 0x14
	.4byte	.LASF267
	.byte	0x16
	.byte	0x6
	.4byte	0x1123
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF284
	.byte	0x16
	.byte	0x7
	.4byte	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF285
	.byte	0x17
	.byte	0x6
	.4byte	0x11f4
	.uleb128 0x13
	.4byte	.LASF286
	.byte	0x54
	.byte	0x17
	.byte	0x6
	.4byte	0x121d
	.uleb128 0x14
	.4byte	.LASF267
	.byte	0x17
	.byte	0x6
	.4byte	0x11b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF287
	.byte	0x17
	.byte	0x7
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF288
	.byte	0x18
	.byte	0x8
	.4byte	0x1228
	.uleb128 0x13
	.4byte	.LASF289
	.byte	0x38
	.byte	0x18
	.byte	0x8
	.4byte	0x127b
	.uleb128 0x14
	.4byte	.LASF267
	.byte	0x18
	.byte	0x8
	.4byte	0x1085
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF290
	.byte	0x18
	.byte	0x9
	.4byte	0x127b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.4byte	.LASF291
	.byte	0x18
	.byte	0xa
	.4byte	0x127b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.4byte	.LASF292
	.byte	0x18
	.byte	0xb
	.4byte	0x127b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x14
	.4byte	.LASF293
	.byte	0x18
	.byte	0xc
	.4byte	0x127b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11f4
	.uleb128 0x3
	.4byte	.LASF294
	.byte	0x18
	.byte	0xf
	.4byte	0x128c
	.uleb128 0x13
	.4byte	.LASF295
	.byte	0x2c
	.byte	0x18
	.byte	0xf
	.4byte	0x12b5
	.uleb128 0x14
	.4byte	.LASF267
	.byte	0x18
	.byte	0xf
	.4byte	0x1085
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.4byte	.LASF296
	.byte	0x18
	.byte	0x10
	.4byte	0xbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x27
	.4byte	.LASF303
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.4byte	0xf39
	.4byte	.LFB181
	.4byte	.LFE181
	.4byte	.LLST0
	.4byte	0x1368
	.uleb128 0x28
	.4byte	.LASF297
	.byte	0x1
	.byte	0xf0
	.4byte	0xfa6
	.4byte	.LLST1
	.uleb128 0x29
	.ascii	"e\000"
	.byte	0x1
	.byte	0xf0
	.4byte	0xf15
	.4byte	.LLST2
	.uleb128 0x28
	.4byte	.LASF298
	.byte	0x1
	.byte	0xf0
	.4byte	0x118
	.4byte	.LLST3
	.uleb128 0x2a
	.4byte	.LASF299
	.byte	0x1
	.byte	0xf0
	.4byte	0x1368
	.uleb128 0x2b
	.4byte	.LASF300
	.byte	0x1
	.byte	0xf0
	.4byte	0xf39
	.4byte	.LLST4
	.uleb128 0x2c
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	0x1352
	.uleb128 0x2d
	.ascii	"arg\000"
	.byte	0x1
	.byte	0xf1
	.4byte	0x136e
	.uleb128 0x2e
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x2f
	.4byte	.LASF301
	.byte	0x1
	.byte	0xf3
	.4byte	0x1374
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.4byte	.LASF302
	.byte	0x1
	.byte	0xf4
	.4byte	0x1379
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.4byte	.LBB4
	.4byte	.LBE4
	.uleb128 0x2d
	.ascii	"arg\000"
	.byte	0x1
	.byte	0xfd
	.4byte	0x137f
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1281
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf4f
	.uleb128 0xc
	.4byte	0x4ce
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1123
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf5a
	.uleb128 0x27
	.4byte	.LASF304
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.4byte	0xf39
	.4byte	.LFB180
	.4byte	.LFE180
	.4byte	.LLST5
	.4byte	0x13fc
	.uleb128 0x28
	.4byte	.LASF297
	.byte	0x1
	.byte	0xe8
	.4byte	0xfa6
	.4byte	.LLST6
	.uleb128 0x29
	.ascii	"e\000"
	.byte	0x1
	.byte	0xe8
	.4byte	0xf15
	.4byte	.LLST7
	.uleb128 0x28
	.4byte	.LASF298
	.byte	0x1
	.byte	0xe8
	.4byte	0x118
	.4byte	.LLST8
	.uleb128 0x2a
	.4byte	.LASF299
	.byte	0x1
	.byte	0xe8
	.4byte	0x1379
	.uleb128 0x2b
	.4byte	.LASF300
	.byte	0x1
	.byte	0xe8
	.4byte	0xf39
	.4byte	.LLST9
	.uleb128 0x2e
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x2d
	.ascii	"arg\000"
	.byte	0x1
	.byte	0xe9
	.4byte	0x13fc
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf70
	.uleb128 0x27
	.4byte	.LASF305
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.4byte	0xf39
	.4byte	.LFB179
	.4byte	.LFE179
	.4byte	.LLST10
	.4byte	0x160e
	.uleb128 0x28
	.4byte	.LASF297
	.byte	0x1
	.byte	0x72
	.4byte	0xfa6
	.4byte	.LLST11
	.uleb128 0x29
	.ascii	"e\000"
	.byte	0x1
	.byte	0x72
	.4byte	0xf15
	.4byte	.LLST12
	.uleb128 0x28
	.4byte	.LASF298
	.byte	0x1
	.byte	0x72
	.4byte	0x118
	.4byte	.LLST13
	.uleb128 0x2a
	.4byte	.LASF299
	.byte	0x1
	.byte	0x72
	.4byte	0x160e
	.uleb128 0x2b
	.4byte	.LASF300
	.byte	0x1
	.byte	0x72
	.4byte	0xf39
	.4byte	.LLST14
	.uleb128 0x2c
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0x15f8
	.uleb128 0x2d
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x73
	.4byte	0x136e
	.uleb128 0x2e
	.4byte	.LBB7
	.4byte	.LBE7
	.uleb128 0x2f
	.4byte	.LASF306
	.byte	0x1
	.byte	0x75
	.4byte	0x1374
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.4byte	.LASF307
	.byte	0x1
	.byte	0x76
	.4byte	0x1374
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.4byte	.LASF308
	.byte	0x1
	.byte	0x77
	.4byte	0x1374
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.4byte	.LASF309
	.byte	0x1
	.byte	0x78
	.4byte	0x1374
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.4byte	.LASF310
	.byte	0x1
	.byte	0x79
	.4byte	0x1374
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.4byte	.LASF311
	.byte	0x1
	.byte	0x7a
	.4byte	0x1374
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.4byte	.LASF312
	.byte	0x1
	.byte	0x7c
	.4byte	0x1374
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.4byte	.LASF313
	.byte	0x1
	.byte	0x7e
	.4byte	0x1374
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.4byte	.LASF314
	.byte	0x1
	.byte	0x7f
	.4byte	0x1374
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2f
	.4byte	.LASF315
	.byte	0x1
	.byte	0x80
	.4byte	0x1374
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2f
	.4byte	.LASF316
	.byte	0x1
	.byte	0x81
	.4byte	0x1374
	.byte	0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2f
	.4byte	.LASF317
	.byte	0x1
	.byte	0x87
	.4byte	0x1374
	.byte	0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2f
	.4byte	.LASF318
	.byte	0x1
	.byte	0x88
	.4byte	0x1374
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2f
	.4byte	.LASF319
	.byte	0x1
	.byte	0x89
	.4byte	0x1374
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2f
	.4byte	.LASF320
	.byte	0x1
	.byte	0x8a
	.4byte	0x1374
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2f
	.4byte	.LASF321
	.byte	0x1
	.byte	0x8c
	.4byte	0x1090
	.byte	0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2f
	.4byte	.LASF322
	.byte	0x1
	.byte	0x8d
	.4byte	0x1379
	.byte	0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2f
	.4byte	.LASF323
	.byte	0x1
	.byte	0x8e
	.4byte	0x1379
	.byte	0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2b
	.4byte	.LASF324
	.byte	0x1
	.byte	0x8f
	.4byte	0x1379
	.4byte	.LLST15
	.uleb128 0x2b
	.4byte	.LASF325
	.byte	0x1
	.byte	0x90
	.4byte	0x1379
	.4byte	.LLST16
	.uleb128 0x2a
	.4byte	.LASF326
	.byte	0x1
	.byte	0x91
	.4byte	0x1614
	.uleb128 0x2a
	.4byte	.LASF327
	.byte	0x1
	.byte	0xb4
	.4byte	0x161a
	.uleb128 0x2a
	.4byte	.LASF328
	.byte	0x1
	.byte	0xb5
	.4byte	0x161a
	.uleb128 0x2a
	.4byte	.LASF329
	.byte	0x1
	.byte	0xc0
	.4byte	0x161a
	.uleb128 0x2a
	.4byte	.LASF330
	.byte	0x1
	.byte	0xc1
	.4byte	0x161a
	.uleb128 0x2e
	.4byte	.LBB8
	.4byte	.LBE8
	.uleb128 0x2a
	.4byte	.LASF143
	.byte	0x1
	.byte	0x94
	.4byte	0x161a
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.4byte	.LBB9
	.4byte	.LBE9
	.uleb128 0x2d
	.ascii	"arg\000"
	.byte	0x1
	.byte	0xcd
	.4byte	0x1620
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x121d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1157
	.uleb128 0x8
	.byte	0x4
	.4byte	0x10bb
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf44
	.uleb128 0x27
	.4byte	.LASF331
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.4byte	0xf39
	.4byte	.LFB171
	.4byte	.LFE171
	.4byte	.LLST17
	.4byte	0x169d
	.uleb128 0x28
	.4byte	.LASF297
	.byte	0x1
	.byte	0x21
	.4byte	0xfa6
	.4byte	.LLST18
	.uleb128 0x29
	.ascii	"e\000"
	.byte	0x1
	.byte	0x21
	.4byte	0xf15
	.4byte	.LLST19
	.uleb128 0x28
	.4byte	.LASF298
	.byte	0x1
	.byte	0x21
	.4byte	0x118
	.4byte	.LLST20
	.uleb128 0x2a
	.4byte	.LASF299
	.byte	0x1
	.byte	0x21
	.4byte	0x169d
	.uleb128 0x2b
	.4byte	.LASF300
	.byte	0x1
	.byte	0x21
	.4byte	0xf39
	.4byte	.LLST21
	.uleb128 0x2e
	.4byte	.LBB10
	.4byte	.LBE10
	.uleb128 0x2d
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x22
	.4byte	0x13fc
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x11e9
	.uleb128 0x27
	.4byte	.LASF332
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.4byte	0xf39
	.4byte	.LFB170
	.4byte	.LFE170
	.4byte	.LLST22
	.4byte	0x171a
	.uleb128 0x28
	.4byte	.LASF297
	.byte	0x1
	.byte	0x19
	.4byte	0xfa6
	.4byte	.LLST23
	.uleb128 0x29
	.ascii	"e\000"
	.byte	0x1
	.byte	0x19
	.4byte	0xf15
	.4byte	.LLST24
	.uleb128 0x28
	.4byte	.LASF298
	.byte	0x1
	.byte	0x19
	.4byte	0x118
	.4byte	.LLST25
	.uleb128 0x2a
	.4byte	.LASF299
	.byte	0x1
	.byte	0x19
	.4byte	0x169d
	.uleb128 0x2b
	.4byte	.LASF300
	.byte	0x1
	.byte	0x19
	.4byte	0xf39
	.4byte	.LLST26
	.uleb128 0x2e
	.4byte	.LBB11
	.4byte	.LBE11
	.uleb128 0x2d
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x1a
	.4byte	0x13fc
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.4byte	.LASF333
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.4byte	0xf39
	.4byte	.LFB173
	.4byte	.LFE173
	.4byte	.LLST27
	.4byte	0x1791
	.uleb128 0x28
	.4byte	.LASF297
	.byte	0x1
	.byte	0x31
	.4byte	0xfa6
	.4byte	.LLST28
	.uleb128 0x29
	.ascii	"e\000"
	.byte	0x1
	.byte	0x31
	.4byte	0xf15
	.4byte	.LLST29
	.uleb128 0x28
	.4byte	.LASF298
	.byte	0x1
	.byte	0x31
	.4byte	0x118
	.4byte	.LLST30
	.uleb128 0x2a
	.4byte	.LASF299
	.byte	0x1
	.byte	0x31
	.4byte	0x169d
	.uleb128 0x2b
	.4byte	.LASF300
	.byte	0x1
	.byte	0x31
	.4byte	0xf39
	.4byte	.LLST31
	.uleb128 0x2e
	.4byte	.LBB12
	.4byte	.LBE12
	.uleb128 0x2d
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x32
	.4byte	0x13fc
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.4byte	.LASF334
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.4byte	0xf39
	.4byte	.LFB172
	.4byte	.LFE172
	.4byte	.LLST32
	.4byte	0x1808
	.uleb128 0x28
	.4byte	.LASF297
	.byte	0x1
	.byte	0x29
	.4byte	0xfa6
	.4byte	.LLST33
	.uleb128 0x29
	.ascii	"e\000"
	.byte	0x1
	.byte	0x29
	.4byte	0xf15
	.4byte	.LLST34
	.uleb128 0x28
	.4byte	.LASF298
	.byte	0x1
	.byte	0x29
	.4byte	0x118
	.4byte	.LLST35
	.uleb128 0x2a
	.4byte	.LASF299
	.byte	0x1
	.byte	0x29
	.4byte	0x169d
	.uleb128 0x2b
	.4byte	.LASF300
	.byte	0x1
	.byte	0x29
	.4byte	0xf39
	.4byte	.LLST36
	.uleb128 0x2e
	.4byte	.LBB13
	.4byte	.LBE13
	.uleb128 0x2d
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x2a
	.4byte	0x13fc
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.4byte	.LASF335
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.4byte	0xf39
	.4byte	.LFB178
	.4byte	.LFE178
	.4byte	.LLST37
	.4byte	0x187f
	.uleb128 0x28
	.4byte	.LASF297
	.byte	0x1
	.byte	0x5c
	.4byte	0xfa6
	.4byte	.LLST38
	.uleb128 0x29
	.ascii	"e\000"
	.byte	0x1
	.byte	0x5c
	.4byte	0xf15
	.4byte	.LLST39
	.uleb128 0x28
	.4byte	.LASF298
	.byte	0x1
	.byte	0x5c
	.4byte	0x118
	.4byte	.LLST40
	.uleb128 0x2a
	.4byte	.LASF299
	.byte	0x1
	.byte	0x5c
	.4byte	0x1379
	.uleb128 0x2b
	.4byte	.LASF300
	.byte	0x1
	.byte	0x5c
	.4byte	0xf39
	.4byte	.LLST41
	.uleb128 0x2e
	.4byte	.LBB14
	.4byte	.LBE14
	.uleb128 0x2d
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x5d
	.4byte	0x13fc
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.4byte	.LASF336
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	0xf39
	.4byte	.LFB177
	.4byte	.LFE177
	.4byte	.LLST42
	.4byte	0x18f6
	.uleb128 0x28
	.4byte	.LASF297
	.byte	0x1
	.byte	0x54
	.4byte	0xfa6
	.4byte	.LLST43
	.uleb128 0x29
	.ascii	"e\000"
	.byte	0x1
	.byte	0x54
	.4byte	0xf15
	.4byte	.LLST44
	.uleb128 0x28
	.4byte	.LASF298
	.byte	0x1
	.byte	0x54
	.4byte	0x118
	.4byte	.LLST45
	.uleb128 0x2a
	.4byte	.LASF299
	.byte	0x1
	.byte	0x54
	.4byte	0x1379
	.uleb128 0x2b
	.4byte	.LASF300
	.byte	0x1
	.byte	0x54
	.4byte	0xf39
	.4byte	.LLST46
	.uleb128 0x2e
	.4byte	.LBB15
	.4byte	.LBE15
	.uleb128 0x2d
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x55
	.4byte	0x13fc
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.4byte	.LASF337
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0xf39
	.4byte	.LFB176
	.4byte	.LFE176
	.4byte	.LLST47
	.4byte	0x196d
	.uleb128 0x28
	.4byte	.LASF297
	.byte	0x1
	.byte	0x4c
	.4byte	0xfa6
	.4byte	.LLST48
	.uleb128 0x29
	.ascii	"e\000"
	.byte	0x1
	.byte	0x4c
	.4byte	0xf15
	.4byte	.LLST49
	.uleb128 0x28
	.4byte	.LASF298
	.byte	0x1
	.byte	0x4c
	.4byte	0x118
	.4byte	.LLST50
	.uleb128 0x2a
	.4byte	.LASF299
	.byte	0x1
	.byte	0x4c
	.4byte	0x1379
	.uleb128 0x2b
	.4byte	.LASF300
	.byte	0x1
	.byte	0x4c
	.4byte	0xf39
	.4byte	.LLST51
	.uleb128 0x2e
	.4byte	.LBB16
	.4byte	.LBE16
	.uleb128 0x2d
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x4d
	.4byte	0x13fc
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.4byte	.LASF338
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0xf39
	.4byte	.LFB175
	.4byte	.LFE175
	.4byte	.LLST52
	.4byte	0x19e4
	.uleb128 0x28
	.4byte	.LASF297
	.byte	0x1
	.byte	0x44
	.4byte	0xfa6
	.4byte	.LLST53
	.uleb128 0x29
	.ascii	"e\000"
	.byte	0x1
	.byte	0x44
	.4byte	0xf15
	.4byte	.LLST54
	.uleb128 0x28
	.4byte	.LASF298
	.byte	0x1
	.byte	0x44
	.4byte	0x118
	.4byte	.LLST55
	.uleb128 0x2a
	.4byte	.LASF299
	.byte	0x1
	.byte	0x44
	.4byte	0x1379
	.uleb128 0x2b
	.4byte	.LASF300
	.byte	0x1
	.byte	0x44
	.4byte	0xf39
	.4byte	.LLST56
	.uleb128 0x2e
	.4byte	.LBB17
	.4byte	.LBE17
	.uleb128 0x2d
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x45
	.4byte	0x13fc
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.4byte	.LASF339
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.4byte	0xf39
	.4byte	.LFB174
	.4byte	.LFE174
	.4byte	.LLST57
	.4byte	0x1a73
	.uleb128 0x28
	.4byte	.LASF297
	.byte	0x1
	.byte	0x39
	.4byte	0xfa6
	.4byte	.LLST58
	.uleb128 0x29
	.ascii	"e\000"
	.byte	0x1
	.byte	0x39
	.4byte	0xf15
	.4byte	.LLST59
	.uleb128 0x28
	.4byte	.LASF298
	.byte	0x1
	.byte	0x39
	.4byte	0x118
	.4byte	.LLST60
	.uleb128 0x2a
	.4byte	.LASF299
	.byte	0x1
	.byte	0x39
	.4byte	0x1090
	.uleb128 0x2b
	.4byte	.LASF300
	.byte	0x1
	.byte	0x39
	.4byte	0xf39
	.4byte	.LLST61
	.uleb128 0x2e
	.4byte	.LBB18
	.4byte	.LBE18
	.uleb128 0x2d
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x3a
	.4byte	0x1a73
	.uleb128 0x2e
	.4byte	.LBB19
	.4byte	.LBE19
	.uleb128 0x2f
	.4byte	.LASF255
	.byte	0x1
	.byte	0x3c
	.4byte	0x4ce
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf65
	.uleb128 0x30
	.4byte	.LASF340
	.byte	0x7
	.2byte	0x12e
	.4byte	0x1a85
	.uleb128 0x8
	.byte	0x4
	.4byte	0x397
	.uleb128 0x31
	.4byte	.LASF341
	.byte	0x4
	.byte	0x56
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.4byte	.LASF342
	.byte	0x4
	.byte	0x57
	.4byte	0xb3
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0x1ab5
	.4byte	0x1ab5
	.uleb128 0xe
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1abb
	.uleb128 0x32
	.4byte	0x57
	.uleb128 0x33
	.4byte	.LASF343
	.byte	0x5
	.2byte	0x19c
	.4byte	0x1aa5
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0x282
	.4byte	0x1ade
	.uleb128 0xe
	.4byte	0x107
	.byte	0x7
	.byte	0x0
	.uleb128 0x33
	.4byte	.LASF344
	.byte	0x5
	.2byte	0x19f
	.4byte	0x1ace
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF345
	.byte	0x7
	.2byte	0x12b
	.4byte	0x397
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.4byte	.LASF346
	.byte	0xd
	.2byte	0x149
	.4byte	0x1b09
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe40
	.uleb128 0x33
	.4byte	.LASF347
	.byte	0xd
	.2byte	0x14d
	.4byte	0xe40
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.4byte	.LASF348
	.byte	0x13
	.byte	0x6
	.4byte	0x1080
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.4byte	.LASF349
	.byte	0x14
	.byte	0xb
	.4byte	0x1080
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.4byte	.LASF350
	.byte	0x15
	.byte	0x6
	.4byte	0x1080
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.4byte	.LASF351
	.byte	0x17
	.byte	0x6
	.4byte	0x1080
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.4byte	.LASF352
	.byte	0x19
	.byte	0x6
	.4byte	0x1080
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.4byte	.LASF353
	.byte	0x1a
	.byte	0x7
	.4byte	0x1080
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.4byte	.LASF354
	.byte	0x1
	.byte	0x72
	.4byte	0x1080
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__TGuiLayoutMainTypeHeader__
	.uleb128 0x35
	.4byte	.LASF355
	.byte	0x1
	.byte	0xf0
	.4byte	0x1080
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__TGuiLayoutScreenOffTypeHeader__
	.uleb128 0x31
	.4byte	.LASF356
	.byte	0x1
	.byte	0xf0
	.4byte	0x1080
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
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
	.uleb128 0x19
	.uleb128 0x17
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
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x5f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1b9d
	.4byte	0x1afa
	.ascii	"g_neo\000"
	.4byte	0x1b6b
	.ascii	"__TGuiLayoutMainTypeHeader__\000"
	.4byte	0x1b7d
	.ascii	"__TGuiLayoutScreenOffTypeHeader__\000"
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
.LASF187:
	.ascii	"coinReg\000"
.LASF19:
	.ascii	"long int\000"
.LASF165:
	.ascii	"tileOffsetX\000"
.LASF294:
	.ascii	"TGuiLayoutScreenOff\000"
.LASF198:
	.ascii	"_TNeoContext\000"
.LASF120:
	.ascii	"initOffset\000"
.LASF292:
	.ascii	"pFastClock\000"
.LASF194:
	.ascii	"debug\000"
.LASF183:
	.ascii	"ctrl1Reg\000"
.LASF357:
	.ascii	"GNU C 4.4.3\000"
.LASF41:
	.ascii	"centerX\000"
.LASF42:
	.ascii	"centerY\000"
.LASF230:
	.ascii	"GUIEVENT_RENDER\000"
.LASF18:
	.ascii	"char\000"
.LASF333:
	.ascii	"cpuMediumHandler\000"
.LASF72:
	.ascii	"OBJSHAPE_SQUARE\000"
.LASF227:
	.ascii	"GUIEVENT_CREATE\000"
.LASF142:
	.ascii	"pBios\000"
.LASF156:
	.ascii	"scanline\000"
.LASF79:
	.ascii	"OBJSIZE_64\000"
.LASF306:
	.ascii	"logoBounds\000"
.LASF191:
	.ascii	"sramProtectLatch\000"
.LASF87:
	.ascii	"flags\000"
.LASF287:
	.ascii	"group\000"
.LASF125:
	.ascii	"NEOROM_BIOS\000"
.LASF215:
	.ascii	"NEOARM7_RESUME\000"
.LASF108:
	.ascii	"TRead8Func\000"
.LASF63:
	.ascii	"texturePtrs\000"
.LASF252:
	.ascii	"pChildren\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF298:
	.ascii	"__arg__\000"
.LASF222:
	.ascii	"NEOARM9_AUDIORESULT\000"
.LASF144:
	.ascii	"pSram\000"
.LASF273:
	.ascii	"TGuiButton\000"
.LASF220:
	.ascii	"NEOARM7_LIDOPEN\000"
.LASF352:
	.ascii	"__TGuiLayoutRomSelectTypeHeader__\000"
.LASF259:
	.ascii	"TGuiObject\000"
.LASF297:
	.ascii	"__pObj__\000"
.LASF276:
	.ascii	"TGuiStatus\000"
.LASF216:
	.ascii	"NEOARM7_NMI\000"
.LASF97:
	.ascii	"write8\000"
.LASF196:
	.ascii	"frameCounter\000"
.LASF21:
	.ascii	"MODE_0_2D\000"
.LASF100:
	.ascii	"fetch8\000"
.LASF254:
	.ascii	"handler\000"
.LASF325:
	.ascii	"pSave\000"
.LASF92:
	.ascii	"membase\000"
.LASF121:
	.ascii	"freqCounter\000"
.LASF177:
	.ascii	"sramProtection\000"
.LASF209:
	.ascii	"NEOVIDEO_NORMAL\000"
.LASF43:
	.ascii	"scaleX\000"
.LASF305:
	.ascii	"__TGuiLayoutMainTypeHandler__\000"
.LASF262:
	.ascii	"GUIBORDER_PRESSED\000"
.LASF162:
	.ascii	"spriteMask\000"
.LASF161:
	.ascii	"autoAnimationCounter\000"
.LASF130:
	.ascii	"NEOROM_FIXEDDATA\000"
.LASF270:
	.ascii	"GUIBUTTON_NORMAL\000"
.LASF221:
	.ascii	"NEOARM9_READAUDIO\000"
.LASF307:
	.ascii	"romSelectBounds\000"
.LASF304:
	.ascii	"screenOnHandler\000"
.LASF274:
	.ascii	"_TGuiButton\000"
.LASF225:
	.ascii	"GUIEVENT_ENABLE\000"
.LASF249:
	.ascii	"_TGuiObject\000"
.LASF159:
	.ascii	"vramBaseMask\000"
.LASF218:
	.ascii	"NEOARM7_BACKLIGHTON\000"
.LASF193:
	.ascii	"active\000"
.LASF185:
	.ascii	"ctrl3Reg\000"
.LASF28:
	.ascii	"MODE_0_3D\000"
.LASF95:
	.ascii	"read16\000"
.LASF80:
	.ascii	"OBJCOLOR_16\000"
.LASF164:
	.ascii	"pTileBuffer\000"
.LASF133:
	.ascii	"NEOROM_COUNT\000"
.LASF229:
	.ascii	"GUIEVENT_PROCESS\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF258:
	.ascii	"TGuiTypeHeader\000"
.LASF118:
	.ascii	"TNeoADPCMStream\000"
.LASF271:
	.ascii	"GUIBUTTON_PRESSED\000"
.LASF111:
	.ascii	"TWrite8Func\000"
.LASF13:
	.ascii	"float\000"
.LASF244:
	.ascii	"TGUIEVENT_CREATEArg\000"
.LASF146:
	.ascii	"pVram\000"
.LASF172:
	.ascii	"watchdogCounter\000"
.LASF346:
	.ascii	"g_neo\000"
.LASF202:
	.ascii	"cpuWrite8Table\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF355:
	.ascii	"__TGuiLayoutScreenOffTypeHeader__\000"
.LASF67:
	.ascii	"nameCount\000"
.LASF147:
	.ascii	"pSpriteRam\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF190:
	.ascii	"fixedRomLatch\000"
.LASF336:
	.ascii	"inputHandler\000"
.LASF282:
	.ascii	"TGuiCheckbox\000"
.LASF116:
	.ascii	"offset\000"
.LASF206:
	.ascii	"TNeoContext\000"
.LASF360:
	.ascii	"fill\000"
.LASF85:
	.ascii	"Cyclone\000"
.LASF23:
	.ascii	"MODE_2_2D\000"
.LASF319:
	.ascii	"cpuFastBounds\000"
.LASF256:
	.ascii	"_TGuiTypeHeader\000"
.LASF107:
	.ascii	"TCycloneContext\000"
.LASF110:
	.ascii	"TRead32Func\000"
.LASF277:
	.ascii	"_TGuiStatus\000"
.LASF343:
	.ascii	"bgControl\000"
.LASF149:
	.ascii	"bankTable\000"
.LASF117:
	.ascii	"step\000"
.LASF242:
	.ascii	"TGuiEventReturn\000"
.LASF235:
	.ascii	"GUIEVENT_KEYUP\000"
.LASF96:
	.ascii	"read32\000"
.LASF179:
	.ascii	"vramMod\000"
.LASF281:
	.ascii	"szSpriteCount\000"
.LASF203:
	.ascii	"cpuWrite16Table\000"
.LASF285:
	.ascii	"TGuiRadioButton\000"
.LASF195:
	.ascii	"keyGrid\000"
.LASF257:
	.ascii	"szName\000"
.LASF30:
	.ascii	"MODE_2_3D\000"
.LASF269:
	.ascii	"_TGuiButtonState\000"
.LASF231:
	.ascii	"GUIEVENT_TOUCHDOWN\000"
.LASF283:
	.ascii	"_TGuiCheckbox\000"
.LASF76:
	.ascii	"OBJSIZE_8\000"
.LASF74:
	.ascii	"OBJSHAPE_TALL\000"
.LASF115:
	.ascii	"_TNeoADPCMStream\000"
.LASF201:
	.ascii	"cpuRead32Table\000"
.LASF217:
	.ascii	"NEOARM7_BACKLIGHTOFF\000"
.LASF315:
	.ascii	"normalSizeBounds\000"
.LASF347:
	.ascii	"g_neoContext\000"
.LASF243:
	.ascii	"TGUIEVENT_ENABLEArg\000"
.LASF246:
	.ascii	"TGUIEVENT_RENDERArg\000"
.LASF280:
	.ascii	"szFps\000"
.LASF348:
	.ascii	"__TGuiLabelTypeHeader__\000"
.LASF16:
	.ascii	"true\000"
.LASF200:
	.ascii	"cpuRead16Table\000"
.LASF263:
	.ascii	"GUIBORDER_ROUND_NORMAL\000"
.LASF199:
	.ascii	"cpuRead8Table\000"
.LASF84:
	.ascii	"TBounds\000"
.LASF65:
	.ascii	"nextBlock\000"
.LASF176:
	.ascii	"sramProtectCount\000"
.LASF35:
	.ascii	"MODE_FIFO\000"
.LASF302:
	.ascii	"pButton\000"
.LASF170:
	.ascii	"cpuClocksPerScanline\000"
.LASF331:
	.ascii	"scaledSizeHandler\000"
.LASF260:
	.ascii	"_TGuiBorderStyle\000"
.LASF312:
	.ascii	"statusBounds\000"
.LASF169:
	.ascii	"cpuClockDivide\000"
.LASF114:
	.ascii	"TCheckPcFunc\000"
.LASF25:
	.ascii	"MODE_4_2D\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF68:
	.ascii	"OBJMODE_NORMAL\000"
.LASF340:
	.ascii	"glGlob\000"
.LASF60:
	.ascii	"matrixMode\000"
.LASF93:
	.ascii	"checkpc\000"
.LASF286:
	.ascii	"_TGuiRadioButton\000"
.LASF308:
	.ascii	"screenOffBounds\000"
.LASF71:
	.ascii	"OBJMODE_BITMAP\000"
.LASF178:
	.ascii	"vramOffset\000"
.LASF103:
	.ascii	"IrqCallback\000"
.LASF351:
	.ascii	"__TGuiRadioButtonTypeHeader__\000"
.LASF52:
	.ascii	"data\000"
.LASF123:
	.ascii	"TNeoADPCMBStream\000"
.LASF180:
	.ascii	"displayControl\000"
.LASF44:
	.ascii	"scaleY\000"
.LASF140:
	.ascii	"pRom0\000"
.LASF141:
	.ascii	"pRom1\000"
.LASF210:
	.ascii	"NEOVIDEO_SCALED\000"
.LASF211:
	.ascii	"NEOVIDEO_SIZECOUNT\000"
.LASF126:
	.ascii	"NEOROM_AUDIOPROGRAM\000"
.LASF335:
	.ascii	"saveHandler\000"
.LASF64:
	.ascii	"activeTexture\000"
.LASF55:
	.ascii	"GL_POSITION\000"
.LASF309:
	.ascii	"inputBounds\000"
.LASF94:
	.ascii	"read8\000"
.LASF82:
	.ascii	"_TPoint\000"
.LASF61:
	.ascii	"clearColor\000"
.LASF322:
	.ascii	"pRomSelect\000"
.LASF90:
	.ascii	"state_flags\000"
.LASF214:
	.ascii	"NEOARM7_PAUSE\000"
.LASF32:
	.ascii	"MODE_4_3D\000"
.LASF134:
	.ascii	"pVideoWriteTable\000"
.LASF212:
	.ascii	"_TNeoIPCCommand\000"
.LASF10:
	.ascii	"long long int\000"
.LASF136:
	.ascii	"romBankCount\000"
.LASF15:
	.ascii	"false\000"
.LASF129:
	.ascii	"NEOROM_SPRITEDATA\000"
.LASF204:
	.ascii	"cpuWrite32Table\000"
.LASF278:
	.ascii	"lastFps\000"
.LASF104:
	.ascii	"ResetCallback\000"
.LASF326:
	.ascii	"pStatus\000"
.LASF75:
	.ascii	"OBJSHAPE_FORBIDDEN\000"
.LASF17:
	.ascii	"bool\000"
.LASF83:
	.ascii	"TPoint\000"
.LASF98:
	.ascii	"write16\000"
.LASF174:
	.ascii	"fixedBank\000"
.LASF264:
	.ascii	"GUIBORDER_ROUND_PRESSED\000"
.LASF253:
	.ascii	"pNextChild\000"
.LASF223:
	.ascii	"_TGuiEventID\000"
.LASF163:
	.ascii	"paletteDirty\000"
.LASF240:
	.ascii	"GUIEVENTRET_HANDLED\000"
.LASF266:
	.ascii	"_TGuiLabel\000"
.LASF153:
	.ascii	"smaBankoffset\000"
.LASF36:
	.ascii	"MODE_FB0\000"
.LASF37:
	.ascii	"MODE_FB1\000"
.LASF38:
	.ascii	"MODE_FB2\000"
.LASF39:
	.ascii	"MODE_FB3\000"
.LASF47:
	.ascii	"size\000"
.LASF12:
	.ascii	"uint32\000"
.LASF247:
	.ascii	"TGUIEVENT_SELECTEDArg\000"
.LASF295:
	.ascii	"_TGuiLayoutScreenOff\000"
.LASF27:
	.ascii	"MODE_6_2D\000"
.LASF4:
	.ascii	"short int\000"
.LASF261:
	.ascii	"GUIBORDER_NORMAL\000"
.LASF358:
	.ascii	"C:/Users/GRX/NeoDS/arm9/source/LayoutMain.c\000"
.LASF197:
	.ascii	"varEnd\000"
.LASF182:
	.ascii	"displayCounterLoad\000"
.LASF20:
	.ascii	"long unsigned int\000"
.LASF245:
	.ascii	"TGUIEVENT_DESTROYArg\000"
.LASF70:
	.ascii	"OBJMODE_WINDOWED\000"
.LASF342:
	.ascii	"mosaicShadowSub\000"
.LASF62:
	.ascii	"textures\000"
.LASF184:
	.ascii	"ctrl2Reg\000"
.LASF237:
	.ascii	"GUIEVENT_SELECTED\000"
.LASF320:
	.ascii	"cpuMediumBounds\000"
.LASF310:
	.ascii	"saveBounds\000"
.LASF135:
	.ascii	"spriteCount\000"
.LASF300:
	.ascii	"__ret__\000"
.LASF349:
	.ascii	"__TGuiButtonTypeHeader__\000"
.LASF145:
	.ascii	"pCard\000"
.LASF49:
	.ascii	"dirty\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF233:
	.ascii	"GUIEVENT_TAP\000"
.LASF299:
	.ascii	"this\000"
.LASF34:
	.ascii	"MODE_6_3D\000"
.LASF40:
	.ascii	"angle\000"
.LASF317:
	.ascii	"cpuFrameBounds\000"
.LASF81:
	.ascii	"OBJCOLOR_256\000"
.LASF99:
	.ascii	"write32\000"
.LASF166:
	.ascii	"tileOffsetY\000"
.LASF321:
	.ascii	"pLogo\000"
.LASF101:
	.ascii	"fetch16\000"
.LASF303:
	.ascii	"__TGuiLayoutScreenOffTypeHandler__\000"
.LASF248:
	.ascii	"TGuiEventHandler\000"
.LASF341:
	.ascii	"mosaicShadow\000"
.LASF267:
	.ascii	"parent\000"
.LASF131:
	.ascii	"NEOROM_SPRITEUSAGE\000"
.LASF296:
	.ascii	"saveMode\000"
.LASF279:
	.ascii	"lastSpriteCount\000"
.LASF323:
	.ascii	"pScreenOff\000"
.LASF54:
	.ascii	"GL_PROJECTION\000"
.LASF160:
	.ascii	"displayCounter\000"
.LASF213:
	.ascii	"NEOARM7_RESET\000"
.LASF53:
	.ascii	"cur_size\000"
.LASF173:
	.ascii	"paletteBank\000"
.LASF22:
	.ascii	"MODE_1_2D\000"
.LASF284:
	.ascii	"checked\000"
.LASF167:
	.ascii	"tileScaleX\000"
.LASF168:
	.ascii	"tileScaleY\000"
.LASF344:
	.ascii	"bgState\000"
.LASF109:
	.ascii	"TRead16Func\000"
.LASF56:
	.ascii	"GL_MODELVIEW\000"
.LASF73:
	.ascii	"OBJSHAPE_WIDE\000"
.LASF77:
	.ascii	"OBJSIZE_16\000"
.LASF272:
	.ascii	"TGuiButtonState\000"
.LASF251:
	.ascii	"pParent\000"
.LASF138:
	.ascii	"adpcmb\000"
.LASF219:
	.ascii	"NEOARM7_LIDCLOSE\000"
.LASF337:
	.ascii	"screenOffHandler\000"
.LASF50:
	.ascii	"BgState\000"
.LASF132:
	.ascii	"NEOROM_TILEUSAGE\000"
.LASF148:
	.ascii	"pPalette\000"
.LASF186:
	.ascii	"ctrl4Reg\000"
.LASF29:
	.ascii	"MODE_1_3D\000"
.LASF354:
	.ascii	"__TGuiLayoutMainTypeHeader__\000"
.LASF33:
	.ascii	"MODE_5_3D\000"
.LASF192:
	.ascii	"paletteRamLatch\000"
.LASF334:
	.ascii	"cpuFastHandler\000"
.LASF311:
	.ascii	"ramBounds\000"
.LASF152:
	.ascii	"smaBankAddr\000"
.LASF157:
	.ascii	"frameCount\000"
.LASF226:
	.ascii	"GUIEVENT_DISABLE\000"
.LASF59:
	.ascii	"gl_hidden_globals\000"
.LASF113:
	.ascii	"TWrite32Func\000"
.LASF313:
	.ascii	"videoFrameBounds\000"
.LASF69:
	.ascii	"OBJMODE_BLENDED\000"
.LASF86:
	.ascii	"unused\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF293:
	.ascii	"pMediumClock\000"
.LASF289:
	.ascii	"_TGuiLayoutMain\000"
.LASF234:
	.ascii	"GUIEVENT_KEYDOWN\000"
.LASF268:
	.ascii	"szText\000"
.LASF208:
	.ascii	"_TNeoVideoSize\000"
.LASF301:
	.ascii	"buttonBounds\000"
.LASF250:
	.ascii	"pType\000"
.LASF241:
	.ascii	"GUIEVENTRET_NOTHANDLED\000"
.LASF48:
	.ascii	"type\000"
.LASF338:
	.ascii	"romSelectHandler\000"
.LASF353:
	.ascii	"__TGuiLayoutInputTypeHeader__\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF139:
	.ascii	"adpcmActive\000"
.LASF316:
	.ascii	"scaledSizeBounds\000"
.LASF102:
	.ascii	"fetch32\000"
.LASF58:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF24:
	.ascii	"MODE_3_2D\000"
.LASF350:
	.ascii	"__TGuiStatusTypeHeader__\000"
.LASF106:
	.ascii	"internal\000"
.LASF265:
	.ascii	"TGuiLabel\000"
.LASF359:
	.ascii	"_TBounds\000"
.LASF154:
	.ascii	"smaBankbit\000"
.LASF78:
	.ascii	"OBJSIZE_32\000"
.LASF288:
	.ascii	"TGuiLayoutMain\000"
.LASF324:
	.ascii	"pInput\000"
.LASF318:
	.ascii	"cpuLabelBounds\000"
.LASF57:
	.ascii	"GL_TEXTURE\000"
.LASF137:
	.ascii	"adpcm\000"
.LASF232:
	.ascii	"GUIEVENT_TOUCHUP\000"
.LASF51:
	.ascii	"DynamicArray\000"
.LASF122:
	.ascii	"frequency\000"
.LASF275:
	.ascii	"state\000"
.LASF224:
	.ascii	"GUIEVENT_NULL\000"
.LASF290:
	.ascii	"pNormalSize\000"
.LASF291:
	.ascii	"pScaledSize\000"
.LASF45:
	.ascii	"scrollX\000"
.LASF46:
	.ascii	"scrollY\000"
.LASF238:
	.ascii	"TGuiEventID\000"
.LASF356:
	.ascii	"__TGuiObjectTypeHeader__\000"
.LASF127:
	.ascii	"NEOROM_AUDIOBIOS\000"
.LASF143:
	.ascii	"pRam\000"
.LASF339:
	.ascii	"logoHandler\000"
.LASF175:
	.ascii	"romBankAddress\000"
.LASF328:
	.ascii	"pCpuLabel\000"
.LASF239:
	.ascii	"_TGuiEventReturn\000"
.LASF31:
	.ascii	"MODE_3_3D\000"
.LASF0:
	.ascii	"signed char\000"
.LASF119:
	.ascii	"_TNeoADPCMBStream\000"
.LASF207:
	.ascii	"_TNeoRomRegion\000"
.LASF255:
	.ascii	"bounds\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF88:
	.ascii	"prev_pc\000"
.LASF155:
	.ascii	"smaRand\000"
.LASF327:
	.ascii	"pCpuFrame\000"
.LASF330:
	.ascii	"pVideoLabel\000"
.LASF205:
	.ascii	"cpuCheckPcTable\000"
.LASF89:
	.ascii	"reserved\000"
.LASF124:
	.ascii	"NEOROM_MAINPROGRAM\000"
.LASF158:
	.ascii	"pVramBase\000"
.LASF345:
	.ascii	"glGlobalData\000"
.LASF14:
	.ascii	"double\000"
.LASF189:
	.ascii	"screenDarkLatch\000"
.LASF332:
	.ascii	"normalSizeHandler\000"
.LASF329:
	.ascii	"pVideoFrame\000"
.LASF91:
	.ascii	"cycles\000"
.LASF112:
	.ascii	"TWrite16Func\000"
.LASF181:
	.ascii	"displayControlMask\000"
.LASF66:
	.ascii	"nextPBlock\000"
.LASF228:
	.ascii	"GUIEVENT_DESTROY\000"
.LASF128:
	.ascii	"NEOROM_AUDODATA\000"
.LASF236:
	.ascii	"GUIEVENT_KEYREPEAT\000"
.LASF188:
	.ascii	"irqVectorLatch\000"
.LASF171:
	.ascii	"irqPending\000"
.LASF150:
	.ascii	"smaAddr0\000"
.LASF151:
	.ascii	"smaAddr1\000"
.LASF26:
	.ascii	"MODE_5_2D\000"
.LASF314:
	.ascii	"videoLabelBounds\000"
.LASF105:
	.ascii	"UnrecognizedCallback\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
