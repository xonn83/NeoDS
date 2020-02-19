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
	.code 16
	.thumb_func
	.type	__TGuiLayoutScreenOffTypeHandler__, %function
__TGuiLayoutScreenOffTypeHandler__:
.LFB122:
	.file 1 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/LayoutMain.c"
	.loc 1 240 0
	push	{r4, lr}
.LCFI0:
.LVL0:
	.loc 1 240 0
	mov	r4, r0
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
	.loc 1 244 0
	bl	guiGetRoot
.LVL4:
	ldr	r2, .L8
	mov	r1, r0
	ldr	r0, .L8+4
	bl	guiObjCreateChild_r
	.loc 1 245 0
	ldr	r1, .L8+8
	bl	guiObjSetHandler
	.loc 1 247 0
	ldr	r2, .L8+12
	.loc 1 249 0
	mov	r0, #5
	.loc 1 247 0
	ldr	r3, [r2]
	str	r3, [r4, #40]
	.loc 1 248 0
	mov	r3, #128
	lsl	r3, r3, #9
	str	r3, [r2]
	b	.L7
.LVL5:
.L4:
.LBE3:
.LBE2:
.LBB4:
	.loc 1 255 0
	ldr	r2, [r0, #40]
.LVL6:
	ldr	r3, .L8+12
	.loc 1 256 0
	mov	r0, #6
	.loc 1 255 0
	str	r2, [r3]
.L7:
	.loc 1 256 0
	bl	neoIPCSendCommand
.LVL7:
	mov	r0, #0
.LVL8:
.L5:
.LVL9:
.LBE4:
	.loc 1 260 0
	@ sp needed for prologue
.LVL10:
	pop	{r4, pc}
.L9:
	.align	2
.L8:
	.word	buttonBounds.5799
	.word	__TGuiButtonTypeHeader__
	.word	screenOnHandler
	.word	67112960
.LFE122:
	.size	__TGuiLayoutScreenOffTypeHandler__, .-__TGuiLayoutScreenOffTypeHandler__
	.align	2
	.code 16
	.thumb_func
	.type	screenOnHandler, %function
screenOnHandler:
.LFB121:
	.loc 1 232 0
	push	{lr}
.LCFI1:
.LVL11:
	sub	sp, sp, #4
.LCFI2:
	.loc 1 232 0
	cmp	r1, #13
	beq	.L12
	mov	r0, #1
.LVL12:
	b	.L13
.LVL13:
.L12:
.LBB5:
	.loc 1 235 0
	bl	guiFramePop
.LVL14:
	mov	r0, #0
.LVL15:
.L13:
.LBE5:
	.loc 1 238 0
	add	sp, sp, #4
.LVL16:
	@ sp needed for prologue
	pop	{pc}
.LFE121:
	.size	screenOnHandler, .-screenOnHandler
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC14:
	.ascii	"SLOT2\000"
	.align	2
.LC16:
	.ascii	"Load Rom\000"
	.align	2
.LC18:
	.ascii	"Screen Off\000"
	.align	2
.LC20:
	.ascii	"Input\000"
	.align	2
.LC22:
	.ascii	"Save\000"
	.align	2
.LC34:
	.ascii	"CPU Clock\000"
	.align	2
.LC36:
	.ascii	"Normal\000"
	.align	2
.LC38:
	.ascii	"Slower\000"
	.align	2
.LC46:
	.ascii	"Video\000"
	.align	2
.LC48:
	.ascii	"Scaled\000"
	.text
	.align	2
	.code 16
	.thumb_func
	.type	__TGuiLayoutMainTypeHandler__, %function
__TGuiLayoutMainTypeHandler__:
.LFB120:
	.loc 1 114 0
	push	{r4, r5, r6, lr}
.LCFI3:
.LVL17:
	sub	sp, sp, #32
.LCFI4:
	.loc 1 114 0
	mov	r6, r0
	cmp	r1, #1
	bne	.LCB143
	b	.L17	@long jump
.LCB143:
.LVL18:
	cmp	r1, #3
	beq	.LCB146
	b	.L29	@long jump
.LCB146:
.LBB6:
.LBB7:
	.loc 1 140 0
	bl	guiGetRoot
.LVL19:
	ldr	r2, .L31
	mov	r1, r0
	ldr	r0, .L31+4
	bl	guiObjCreateChild_r
	str	r0, [sp, #20]
.LVL20:
	.loc 1 141 0
	bl	guiGetRoot
	ldr	r4, .L31+8
	mov	r1, r0
	ldr	r2, .L31+12
	mov	r0, r4
	bl	guiObjCreateChild_r
	str	r0, [sp, #24]
.LVL21:
	.loc 1 142 0
	bl	guiGetRoot
	ldr	r2, .L31+16
	mov	r1, r0
	mov	r0, r4
	bl	guiObjCreateChild_r
	str	r0, [sp, #28]
.LVL22:
	.loc 1 143 0
	bl	guiGetRoot
	ldr	r2, .L31+20
	mov	r1, r0
	mov	r0, r4
	bl	guiObjCreateChild_r
	mov	r5, r0
.LVL23:
	.loc 1 144 0
	bl	guiGetRoot
	ldr	r2, .L31+24
	mov	r1, r0
	mov	r0, r4
	bl	guiObjCreateChild_r
	mov	r4, r0
.LVL24:
	.loc 1 145 0
	bl	guiGetRoot
	ldr	r2, .L31+28
	mov	r1, r0
	ldr	r0, .L31+32
	bl	guiObjCreateChild_r
	.loc 1 147 0
	bl	systemIsSlot2Active
	cmp	r0, #0
	beq	.L20
.LBB8:
	.loc 1 148 0
	bl	guiGetRoot
	ldr	r2, .L31+36
	mov	r1, r0
	ldr	r0, .L31+40
	bl	guiObjCreateChild_r
	.loc 1 149 0
	ldr	r1, .L31+44
	bl	guiLabelSetText
.L20:
.LBE8:
	.loc 1 152 0
	ldr	r1, .L31+48
	ldr	r0, [sp, #24]
	bl	guiLabelSetText
	.loc 1 153 0
	ldr	r1, .L31+52
	ldr	r0, [sp, #28]
	bl	guiLabelSetText
	.loc 1 154 0
	mov	r0, r5
	ldr	r1, .L31+56
	bl	guiLabelSetText
	.loc 1 155 0
	mov	r0, r4
	ldr	r1, .L31+60
	bl	guiLabelSetText
	.loc 1 157 0
	ldr	r1, .L31+64
	ldr	r0, [sp, #20]
	bl	guiObjSetHandler
	.loc 1 158 0
	ldr	r1, .L31+68
	ldr	r0, [sp, #24]
	bl	guiObjSetHandler
	.loc 1 159 0
	ldr	r1, .L31+72
	ldr	r0, [sp, #28]
	bl	guiObjSetHandler
	.loc 1 160 0
	ldr	r1, .L31+76
	mov	r0, r5
	bl	guiObjSetHandler
	.loc 1 161 0
	ldr	r1, .L31+80
	mov	r0, r4
	bl	guiObjSetHandler
	.loc 1 180 0
	bl	guiGetRoot
	ldr	r3, .L31+40
	mov	r1, r0
	ldr	r2, .L31+84
	mov	r0, r3
	str	r3, [sp, #12]
	bl	guiObjCreateChild_r
	mov	r4, r0
.LVL25:
	.loc 1 181 0
	mov	r1, r4
	ldr	r2, .L31+88
	ldr	r0, [sp, #12]
	bl	guiObjCreateChild_r
	.loc 1 182 0
	ldr	r3, .L31+92
	mov	r1, r4
	.loc 1 181 0
	mov	r5, r0
.LVL26:
	.loc 1 182 0
	ldr	r2, .L31+96
	mov	r0, r3
	str	r3, [sp, #8]
	bl	guiObjCreateChild_r
	.loc 1 183 0
	ldr	r2, .L31+100
	mov	r1, r4
	.loc 1 182 0
	str	r0, [r6, #48]
	.loc 1 183 0
	ldr	r0, [sp, #8]
	bl	guiObjCreateChild_r
	.loc 1 185 0
	ldr	r1, .L31+104
	.loc 1 183 0
	str	r0, [r6, #52]
	.loc 1 185 0
	mov	r0, r5
	bl	guiLabelSetText
	.loc 1 186 0
	ldr	r3, .L31+108
	ldr	r0, [r6, #48]
	mov	r1, r3
	str	r3, [sp, #4]
	bl	guiLabelSetText
	.loc 1 187 0
	ldr	r0, [r6, #52]
	ldr	r1, .L31+112
	bl	guiLabelSetText
	.loc 1 188 0
	ldr	r1, .L31+116
	ldr	r0, [r6, #48]
	bl	guiObjSetHandler
	.loc 1 189 0
	ldr	r1, .L31+120
	ldr	r0, [r6, #52]
	bl	guiObjSetHandler
	.loc 1 192 0
	bl	guiGetRoot
	ldr	r2, .L31+124
	mov	r1, r0
	ldr	r0, [sp, #12]
	bl	guiObjCreateChild_r
	mov	r4, r0
	.loc 1 193 0
	ldr	r2, .L31+128
	mov	r1, r4
	ldr	r0, [sp, #12]
	bl	guiObjCreateChild_r
	.loc 1 194 0
	ldr	r2, .L31+132
	.loc 1 193 0
	str	r0, [sp, #16]
	.loc 1 194 0
	mov	r1, r4
	ldr	r0, [sp, #8]
	bl	guiObjCreateChild_r
	.loc 1 195 0
	ldr	r2, .L31+136
	.loc 1 194 0
	str	r0, [r6, #40]
	.loc 1 195 0
	mov	r1, r4
	ldr	r0, [sp, #8]
	bl	guiObjCreateChild_r
	.loc 1 196 0
	ldr	r1, .L31+140
	.loc 1 195 0
	str	r0, [r6, #44]
	.loc 1 196 0
	ldr	r0, [sp, #16]
	bl	guiLabelSetText
	.loc 1 197 0
	ldr	r0, [r6, #40]
	ldr	r1, [sp, #4]
	bl	guiLabelSetText
	.loc 1 198 0
	ldr	r0, [r6, #44]
	ldr	r1, .L31+144
	bl	guiLabelSetText
	.loc 1 199 0
	ldr	r1, .L31+148
	ldr	r0, [r6, #40]
	bl	guiObjSetHandler
	.loc 1 200 0
	ldr	r0, [r6, #44]
	ldr	r1, .L31+152
	bl	guiObjSetHandler
	mov	r0, #0
.LVL27:
	b	.L19
.LVL28:
.L17:
.LBE7:
.LBE6:
.LBB9:
	.loc 1 207 0
	ldr	r0, [r0, #40]
	mov	r1, #0
.LVL29:
	bl	guiCheckboxSetChecked
.LVL30:
	.loc 1 208 0
	ldr	r0, [r6, #44]
	mov	r1, #0
	bl	guiCheckboxSetChecked
	.loc 1 209 0
	ldr	r0, [r6, #52]
	mov	r1, #0
	bl	guiCheckboxSetChecked
	.loc 1 210 0
	ldr	r0, [r6, #48]
	mov	r1, #0
	bl	guiCheckboxSetChecked
	.loc 1 212 0
	bl	neoVideoGetSize
	cmp	r0, #0
	beq	.L23
	cmp	r0, #1
	bne	.L22
	b	.L24
.L23:
	.loc 1 214 0
	ldr	r0, [r6, #40]
	b	.L28
.L24:
	.loc 1 217 0
	ldr	r0, [r6, #44]
.L28:
	mov	r1, #1
	bl	guiCheckboxSetChecked
.L22:
	.loc 1 222 0
	mov	r3, #246
	lsl	r3, r3, #1
	ldr	r3, [r7, r3]
	cmp	r3, #3
	bne	.L25
	.loc 1 223 0
	ldr	r0, [r6, #52]
	b	.L30
.L25:
	.loc 1 224 0
	ldr	r0, [r6, #48]
.L30:
	mov	r1, #1
	bl	guiCheckboxSetChecked
.LVL31:
.L29:
	mov	r0, #1
.LVL32:
.L19:
.LBE9:
	.loc 1 228 0
	add	sp, sp, #32
.LVL33:
	@ sp needed for prologue
.LVL34:
	pop	{r4, r5, r6, pc}
.L32:
	.align	2
.L31:
	.word	logoBounds.5671
	.word	__TGuiObjectTypeHeader__
	.word	__TGuiButtonTypeHeader__
	.word	romSelectBounds.5672
	.word	screenOffBounds.5673
	.word	inputBounds.5674
	.word	saveBounds.5675
	.word	statusBounds.5677
	.word	__TGuiStatusTypeHeader__
	.word	ramBounds.5676
	.word	__TGuiLabelTypeHeader__
	.word	.LC14
	.word	.LC16
	.word	.LC18
	.word	.LC20
	.word	.LC22
	.word	logoHandler
	.word	romSelectHandler
	.word	screenOffHandler
	.word	inputHandler
	.word	saveHandler
	.word	cpuFrameBounds.5682
	.word	cpuLabelBounds.5683
	.word	__TGuiRadioButtonTypeHeader__
	.word	cpuFastBounds.5684
	.word	cpuMediumBounds.5685
	.word	.LC34
	.word	.LC36
	.word	.LC38
	.word	cpuFastHandler
	.word	cpuMediumHandler
	.word	videoFrameBounds.5678
	.word	videoLabelBounds.5679
	.word	normalSizeBounds.5680
	.word	scaledSizeBounds.5681
	.word	.LC46
	.word	.LC48
	.word	normalSizeHandler
	.word	scaledSizeHandler
.LFE120:
	.size	__TGuiLayoutMainTypeHandler__, .-__TGuiLayoutMainTypeHandler__
	.align	2
	.code 16
	.thumb_func
	.type	scaledSizeHandler, %function
scaledSizeHandler:
.LFB112:
	.loc 1 33 0
	push	{lr}
.LCFI5:
.LVL35:
	sub	sp, sp, #4
.LCFI6:
	.loc 1 33 0
	cmp	r1, #13
	beq	.L35
	mov	r0, #1
.LVL36:
	b	.L36
.LVL37:
.L35:
.LBB10:
	.loc 1 36 0
	mov	r0, #1
.LVL38:
	bl	neoVideoSetSize
.LVL39:
	mov	r0, #0
.LVL40:
.L36:
.LBE10:
	.loc 1 39 0
	add	sp, sp, #4
.LVL41:
	@ sp needed for prologue
	pop	{pc}
.LFE112:
	.size	scaledSizeHandler, .-scaledSizeHandler
	.align	2
	.code 16
	.thumb_func
	.type	normalSizeHandler, %function
normalSizeHandler:
.LFB111:
	.loc 1 25 0
	push	{lr}
.LCFI7:
.LVL42:
	sub	sp, sp, #4
.LCFI8:
	.loc 1 25 0
	cmp	r1, #13
	beq	.L40
	mov	r0, #1
.LVL43:
	b	.L41
.LVL44:
.L40:
.LBB11:
	.loc 1 28 0
	mov	r0, #0
.LVL45:
	bl	neoVideoSetSize
.LVL46:
	mov	r0, #0
.LVL47:
.L41:
.LBE11:
	.loc 1 31 0
	add	sp, sp, #4
.LVL48:
	@ sp needed for prologue
	pop	{pc}
.LFE111:
	.size	normalSizeHandler, .-normalSizeHandler
	.align	2
	.code 16
	.thumb_func
	.type	cpuMediumHandler, %function
cpuMediumHandler:
.LFB114:
	.loc 1 49 0
	push	{lr}
.LCFI9:
.LVL49:
	sub	sp, sp, #4
.LCFI10:
	.loc 1 49 0
	cmp	r1, #13
	beq	.L45
	mov	r0, #1
.LVL50:
	b	.L46
.LVL51:
.L45:
.LBB12:
	.loc 1 52 0
	mov	r0, #3
.LVL52:
	bl	neoSystemSetClockDivide
.LVL53:
	mov	r0, #0
.LVL54:
.L46:
.LBE12:
	.loc 1 55 0
	add	sp, sp, #4
.LVL55:
	@ sp needed for prologue
	pop	{pc}
.LFE114:
	.size	cpuMediumHandler, .-cpuMediumHandler
	.align	2
	.code 16
	.thumb_func
	.type	cpuFastHandler, %function
cpuFastHandler:
.LFB113:
	.loc 1 41 0
	push	{lr}
.LCFI11:
.LVL56:
	sub	sp, sp, #4
.LCFI12:
	.loc 1 41 0
	cmp	r1, #13
	beq	.L50
	mov	r0, #1
.LVL57:
	b	.L51
.LVL58:
.L50:
.LBB13:
	.loc 1 44 0
	mov	r0, #2
.LVL59:
	bl	neoSystemSetClockDivide
.LVL60:
	mov	r0, #0
.LVL61:
.L51:
.LBE13:
	.loc 1 47 0
	add	sp, sp, #4
.LVL62:
	@ sp needed for prologue
	pop	{pc}
.LFE113:
	.size	cpuFastHandler, .-cpuFastHandler
	.align	2
	.code 16
	.thumb_func
	.type	saveHandler, %function
saveHandler:
.LFB119:
	.loc 1 92 0
	push	{lr}
.LCFI13:
.LVL63:
	sub	sp, sp, #4
.LCFI14:
	.loc 1 92 0
	cmp	r1, #13
	beq	.L55
	mov	r0, #1
.LVL64:
	b	.L56
.LVL65:
.L55:
.LBB14:
	.loc 1 96 0
	mov	r0, #0
.LVL66:
	bl	neoSystemSetEnabled
.LVL67:
	.loc 1 97 0
	bl	neoSaveConfig
	.loc 1 98 0
	bl	guiGetRoot
	bl	guiObjRenderDirty
	.loc 1 99 0
	mov	r0, #1
	bl	neoSystemSetEnabled
	mov	r0, #0
.LVL68:
.L56:
.LBE14:
	.loc 1 102 0
	add	sp, sp, #4
.LVL69:
	@ sp needed for prologue
	pop	{pc}
.LFE119:
	.size	saveHandler, .-saveHandler
	.align	2
	.code 16
	.thumb_func
	.type	inputHandler, %function
inputHandler:
.LFB118:
	.loc 1 84 0
	push	{lr}
.LCFI15:
.LVL70:
	sub	sp, sp, #4
.LCFI16:
	.loc 1 84 0
	cmp	r1, #13
	beq	.L60
	mov	r0, #1
.LVL71:
	b	.L61
.LVL72:
.L60:
.LBB15:
	.loc 1 87 0
	ldr	r0, .L63
.LVL73:
	bl	guiFramePush_r
.LVL74:
	mov	r0, #0
.LVL75:
.L61:
.LBE15:
	.loc 1 90 0
	add	sp, sp, #4
.LVL76:
	@ sp needed for prologue
	pop	{pc}
.L64:
	.align	2
.L63:
	.word	__TGuiLayoutInputTypeHeader__
.LFE118:
	.size	inputHandler, .-inputHandler
	.align	2
	.code 16
	.thumb_func
	.type	screenOffHandler, %function
screenOffHandler:
.LFB117:
	.loc 1 76 0
	push	{lr}
.LCFI17:
.LVL77:
	sub	sp, sp, #4
.LCFI18:
	.loc 1 76 0
	cmp	r1, #13
	beq	.L67
	mov	r0, #1
.LVL78:
	b	.L68
.LVL79:
.L67:
.LBB16:
	.loc 1 79 0
	ldr	r0, .L70
.LVL80:
	bl	guiFramePush_r
.LVL81:
	mov	r0, #0
.LVL82:
.L68:
.LBE16:
	.loc 1 82 0
	add	sp, sp, #4
.LVL83:
	@ sp needed for prologue
	pop	{pc}
.L71:
	.align	2
.L70:
	.word	__TGuiLayoutScreenOffTypeHeader__
.LFE117:
	.size	screenOffHandler, .-screenOffHandler
	.align	2
	.code 16
	.thumb_func
	.type	romSelectHandler, %function
romSelectHandler:
.LFB116:
	.loc 1 68 0
	push	{lr}
.LCFI19:
.LVL84:
	sub	sp, sp, #4
.LCFI20:
	.loc 1 68 0
	cmp	r1, #13
	beq	.L74
	mov	r0, #1
.LVL85:
	b	.L75
.LVL86:
.L74:
.LBB17:
	.loc 1 71 0
	ldr	r0, .L77
.LVL87:
	bl	guiFramePush_r
.LVL88:
	mov	r0, #0
.LVL89:
.L75:
.LBE17:
	.loc 1 74 0
	add	sp, sp, #4
.LVL90:
	@ sp needed for prologue
	pop	{pc}
.L78:
	.align	2
.L77:
	.word	__TGuiLayoutRomSelectTypeHeader__
.LFE116:
	.size	romSelectHandler, .-romSelectHandler
	.align	2
	.code 16
	.thumb_func
	.type	logoHandler, %function
logoHandler:
.LFB115:
	.loc 1 57 0
	push	{r4, lr}
.LCFI21:
.LVL91:
	sub	sp, sp, #16
.LCFI22:
	.loc 1 57 0
	cmp	r1, #6
	beq	.L81
	mov	r0, #1
.LVL92:
	b	.L82
.LVL93:
.L81:
.LBB18:
.LBB19:
	.loc 1 61 0
	mov	r1, sp
.LVL94:
	bl	guiObjGetGlobalBounds
.LVL95:
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
.LVL96:
.L82:
.LBE19:
.LBE18:
	.loc 1 66 0
	add	sp, sp, #16
.LVL97:
	@ sp needed for prologue
	pop	{r4, pc}
.LFE115:
	.size	logoHandler, .-logoHandler
	.global	__TGuiLayoutMainTypeHeader__
	.section	.rodata.str1.4
	.align	2
.LC55:
	.ascii	"TGuiLayoutMain\000"
	.section	.rodata
	.align	2
	.type	__TGuiLayoutMainTypeHeader__, %object
	.size	__TGuiLayoutMainTypeHeader__, 16
__TGuiLayoutMainTypeHeader__:
	.word	__TGuiLayoutMainTypeHandler__
	.word	__TGuiObjectTypeHeader__
	.word	56
	.word	.LC55
	.global	__TGuiLayoutScreenOffTypeHeader__
	.section	.rodata.str1.4
	.align	2
.LC56:
	.ascii	"TGuiLayoutScreenOff\000"
	.section	.rodata
	.align	2
	.type	__TGuiLayoutScreenOffTypeHeader__, %object
	.size	__TGuiLayoutScreenOffTypeHeader__, 16
__TGuiLayoutScreenOffTypeHeader__:
	.word	__TGuiLayoutScreenOffTypeHandler__
	.word	__TGuiObjectTypeHeader__
	.word	44
	.word	.LC56
	.align	2
	.type	buttonBounds.5799, %object
	.size	buttonBounds.5799, 16
buttonBounds.5799:
	.word	0
	.word	0
	.word	32
	.word	24
	.align	2
	.type	cpuMediumBounds.5685, %object
	.size	cpuMediumBounds.5685, 16
cpuMediumBounds.5685:
	.word	1
	.word	5
	.word	11
	.word	6
	.align	2
	.type	cpuFastBounds.5684, %object
	.size	cpuFastBounds.5684, 16
cpuFastBounds.5684:
	.word	1
	.word	3
	.word	11
	.word	4
	.align	2
	.type	cpuLabelBounds.5683, %object
	.size	cpuLabelBounds.5683, 16
cpuLabelBounds.5683:
	.word	0
	.word	0
	.word	13
	.word	1
	.align	2
	.type	cpuFrameBounds.5682, %object
	.size	cpuFrameBounds.5682, 16
cpuFrameBounds.5682:
	.word	17
	.word	14
	.word	30
	.word	21
	.align	2
	.type	scaledSizeBounds.5681, %object
	.size	scaledSizeBounds.5681, 16
scaledSizeBounds.5681:
	.word	1
	.word	5
	.word	11
	.word	6
	.align	2
	.type	normalSizeBounds.5680, %object
	.size	normalSizeBounds.5680, 16
normalSizeBounds.5680:
	.word	1
	.word	3
	.word	11
	.word	4
	.align	2
	.type	videoLabelBounds.5679, %object
	.size	videoLabelBounds.5679, 16
videoLabelBounds.5679:
	.word	0
	.word	0
	.word	13
	.word	1
	.align	2
	.type	videoFrameBounds.5678, %object
	.size	videoFrameBounds.5678, 16
videoFrameBounds.5678:
	.word	1
	.word	14
	.word	14
	.word	21
	.align	2
	.type	statusBounds.5677, %object
	.size	statusBounds.5677, 16
statusBounds.5677:
	.word	25
	.word	1
	.word	30
	.word	3
	.align	2
	.type	ramBounds.5676, %object
	.size	ramBounds.5676, 16
ramBounds.5676:
	.word	25
	.word	4
	.word	30
	.word	5
	.align	2
	.type	saveBounds.5675, %object
	.size	saveBounds.5675, 16
saveBounds.5675:
	.word	17
	.word	10
	.word	30
	.word	11
	.align	2
	.type	inputBounds.5674, %object
	.size	inputBounds.5674, 16
inputBounds.5674:
	.word	17
	.word	7
	.word	30
	.word	8
	.align	2
	.type	screenOffBounds.5673, %object
	.size	screenOffBounds.5673, 16
screenOffBounds.5673:
	.word	1
	.word	10
	.word	14
	.word	11
	.align	2
	.type	romSelectBounds.5672, %object
	.size	romSelectBounds.5672, 16
romSelectBounds.5672:
	.word	1
	.word	7
	.word	14
	.word	8
	.align	2
	.type	logoBounds.5671, %object
	.size	logoBounds.5671, 16
logoBounds.5671:
	.word	9
	.word	1
	.word	22
	.word	5
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
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.byte	0x4
	.4byte	.LCFI0-.LFB122
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
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.byte	0x4
	.4byte	.LCFI1-.LFB121
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.byte	0x4
	.4byte	.LCFI3-.LFB120
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
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x30
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI5-.LFB112
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI7-.LFB111
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.byte	0x4
	.4byte	.LCFI9-.LFB114
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.byte	0x4
	.4byte	.LCFI11-.LFB113
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.byte	0x4
	.4byte	.LCFI13-.LFB119
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
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
	.4byte	.LCFI15-.LFB118
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.byte	0x4
	.4byte	.LCFI17-.LFB117
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.byte	0x4
	.4byte	.LCFI19-.LFB116
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.byte	0x4
	.4byte	.LCFI21-.LFB115
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE22:
	.file 2 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiEvent.h"
	.file 3 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiObject.h"
	.file 4 "C:/devkitPro/libnds/include/nds/jtypes.h"
	.file 5 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.1.1/../../../../arm-eabi/include/stdint.h"
	.file 6 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/Default.h"
	.file 7 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/LayoutMain.h"
	.file 8 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiButton.h"
	.file 9 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiLabel.h"
	.file 10 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiRadioButton.h"
	.file 11 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiCheckbox.h"
	.file 12 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/guiStatus.h"
	.file 13 "C:/devkitPro/libnds/include/nds/arm9/videoGL.h"
	.file 14 "C:/devkitPro/libnds/include/nds/arm9/trig_lut.h"
	.file 15 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoSystem.h"
	.file 16 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/NeoCpu.h"
	.file 17 "C:/Users/GRX/NeoDS-GBMacro/arm9/include/cyclone.h"
	.file 18 "C:/Users/GRX/NeoDS-GBMacro/arm9/../common/source/NeoAudioStream.h"
	.file 19 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/LayoutRomSelect.h"
	.file 20 "C:/Users/GRX/NeoDS-GBMacro/arm9/source/LayoutInput.h"
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB122-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8-.Ltext0
	.4byte	.LFE122-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LFB121-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE121-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB120-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL31-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.4byte	.LVL32-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	.LVL32-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	.LVL32-.Ltext0
	.4byte	.LFE120-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LFB112-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE112-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LFB111-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL47-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47-.Ltext0
	.4byte	.LFE111-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LFB114-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL54-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54-.Ltext0
	.4byte	.LFE114-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LFB113-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL61-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61-.Ltext0
	.4byte	.LFE113-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LFB119-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL68-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68-.Ltext0
	.4byte	.LFE119-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LFB118-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL75-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75-.Ltext0
	.4byte	.LFE118-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LFB117-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL82-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82-.Ltext0
	.4byte	.LFE117-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LFB116-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI20-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL89-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89-.Ltext0
	.4byte	.LFE116-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LFB115-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL96-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96-.Ltext0
	.4byte	.LFE115-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST64:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x18b7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.Letext0
	.4byte	.Ltext0
	.4byte	.LASF278
	.byte	0x1
	.4byte	.LASF279
	.4byte	.LASF280
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x5
	.byte	0x2e
	.4byte	0x37
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x5
	.byte	0x39
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x5
	.byte	0x3a
	.4byte	0x5b
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x5
	.byte	0x53
	.4byte	0x6d
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x5
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
	.byte	0x4
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
	.byte	0x4
	.byte	0x5f
	.4byte	0x2c
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x4
	.byte	0x60
	.4byte	0x50
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x4
	.byte	0x61
	.4byte	0x74
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x4
	.byte	0x65
	.4byte	0x3e
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x4
	.byte	0x66
	.4byte	0x62
	.uleb128 0x6
	.4byte	0x106
	.byte	0x1
	.byte	0x4
	.byte	0x81
	.uleb128 0x7
	.4byte	.LASF17
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF18
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x81
	.4byte	0xf1
	.uleb128 0x8
	.byte	0x4
	.4byte	0x117
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.4byte	0x148
	.byte	0x1
	.byte	0xd
	.byte	0x9b
	.uleb128 0x7
	.4byte	.LASF21
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF22
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF23
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF24
	.sleb128 3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0xd
	.byte	0xa0
	.4byte	0x127
	.uleb128 0xa
	.4byte	0x1cb
	.2byte	0x2018
	.byte	0xd
	.2byte	0x119
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0xd
	.2byte	0x11a
	.4byte	0x148
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0xd
	.2byte	0x11d
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0xd
	.2byte	0x120
	.4byte	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0xd
	.2byte	0x121
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2008
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0xd
	.2byte	0x122
	.4byte	0x1dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x200c
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0xd
	.2byte	0x123
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2010
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0xd
	.2byte	0x124
	.4byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x2014
	.byte	0x0
	.uleb128 0xc
	.4byte	0x1dc
	.4byte	0xa2
	.uleb128 0xd
	.4byte	0x119
	.2byte	0x7ff
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa2
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0xd
	.2byte	0x126
	.4byte	0x153
	.uleb128 0xf
	.byte	0x4
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1f6
	.uleb128 0x10
	.4byte	0x120
	.uleb128 0xc
	.4byte	0x20b
	.4byte	0x120
	.uleb128 0x11
	.4byte	0x119
	.byte	0x7
	.byte	0x0
	.uleb128 0x12
	.4byte	0x230
	.4byte	.LASF36
	.byte	0x8
	.byte	0x6
	.byte	0xd
	.uleb128 0x13
	.ascii	"x\000"
	.byte	0x6
	.byte	0xe
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.ascii	"y\000"
	.byte	0x6
	.byte	0xf
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x6
	.byte	0x10
	.4byte	0x20b
	.uleb128 0x14
	.4byte	0x278
	.byte	0x10
	.byte	0x6
	.byte	0x13
	.uleb128 0x13
	.ascii	"x0\000"
	.byte	0x6
	.byte	0x14
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.ascii	"y0\000"
	.byte	0x6
	.byte	0x15
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.ascii	"x1\000"
	.byte	0x6
	.byte	0x16
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x13
	.ascii	"y1\000"
	.byte	0x6
	.byte	0x17
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x14
	.4byte	0x29b
	.byte	0x10
	.byte	0x6
	.byte	0x19
	.uleb128 0x13
	.ascii	"p0\000"
	.byte	0x6
	.byte	0x1a
	.4byte	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.ascii	"p1\000"
	.byte	0x6
	.byte	0x1b
	.4byte	0x230
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x15
	.4byte	0x2b2
	.4byte	.LASF281
	.byte	0x10
	.byte	0x6
	.byte	0x12
	.uleb128 0x16
	.4byte	0x23b
	.uleb128 0x16
	.4byte	0x278
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x6
	.byte	0x1d
	.4byte	0x29b
	.uleb128 0x12
	.4byte	0x453
	.4byte	.LASF37
	.byte	0xb0
	.byte	0x11
	.byte	0x15
	.uleb128 0x13
	.ascii	"d\000"
	.byte	0x11
	.byte	0x16
	.4byte	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.ascii	"a\000"
	.byte	0x11
	.byte	0x17
	.4byte	0x453
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.ascii	"pc\000"
	.byte	0x11
	.byte	0x18
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x13
	.ascii	"srh\000"
	.byte	0x11
	.byte	0x19
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x17
	.4byte	.LASF38
	.byte	0x11
	.byte	0x1a
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x17
	.4byte	.LASF39
	.byte	0x11
	.byte	0x1b
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0x13
	.ascii	"irq\000"
	.byte	0x11
	.byte	0x1c
	.4byte	0x37
	.byte	0x2
	.byte	0x23
	.uleb128 0x47
	.uleb128 0x13
	.ascii	"osp\000"
	.byte	0x11
	.byte	0x1d
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x13
	.ascii	"xc\000"
	.byte	0x11
	.byte	0x1e
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x17
	.4byte	.LASF40
	.byte	0x11
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x17
	.4byte	.LASF41
	.byte	0x11
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x11
	.byte	0x21
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x17
	.4byte	.LASF43
	.byte	0x11
	.byte	0x22
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x17
	.4byte	.LASF44
	.byte	0x11
	.byte	0x23
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x17
	.4byte	.LASF45
	.byte	0x11
	.byte	0x24
	.4byte	0x473
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x17
	.4byte	.LASF46
	.byte	0x11
	.byte	0x25
	.4byte	0x473
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x11
	.byte	0x26
	.4byte	0x473
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x11
	.byte	0x27
	.4byte	0x473
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x17
	.4byte	.LASF49
	.byte	0x11
	.byte	0x28
	.4byte	0x48a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x17
	.4byte	.LASF50
	.byte	0x11
	.byte	0x29
	.4byte	0x4a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x17
	.4byte	.LASF51
	.byte	0x11
	.byte	0x2a
	.4byte	0x4b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x17
	.4byte	.LASF52
	.byte	0x11
	.byte	0x2b
	.4byte	0x473
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x17
	.4byte	.LASF53
	.byte	0x11
	.byte	0x2c
	.4byte	0x473
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x17
	.4byte	.LASF54
	.byte	0x11
	.byte	0x2d
	.4byte	0x473
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x17
	.4byte	.LASF55
	.byte	0x11
	.byte	0x2e
	.4byte	0x4ce
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x17
	.4byte	.LASF56
	.byte	0x11
	.byte	0x2f
	.4byte	0x111
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x17
	.4byte	.LASF57
	.byte	0x11
	.byte	0x30
	.4byte	0x4da
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x17
	.4byte	.LASF58
	.byte	0x11
	.byte	0x31
	.4byte	0x4e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.byte	0x0
	.uleb128 0xc
	.4byte	0x463
	.4byte	0x9b
	.uleb128 0x11
	.4byte	0x119
	.byte	0x7
	.byte	0x0
	.uleb128 0x18
	.4byte	0x473
	.byte	0x1
	.4byte	0x9b
	.uleb128 0x19
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x463
	.uleb128 0x1a
	.4byte	0x48a
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9b
	.uleb128 0x19
	.4byte	0x37
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x479
	.uleb128 0x1a
	.4byte	0x4a1
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9b
	.uleb128 0x19
	.4byte	0x5b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x490
	.uleb128 0x1a
	.4byte	0x4b8
	.byte	0x1
	.uleb128 0x19
	.4byte	0x9b
	.uleb128 0x19
	.4byte	0x9b
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4a7
	.uleb128 0x18
	.4byte	0x4ce
	.byte	0x1
	.4byte	0x94
	.uleb128 0x19
	.4byte	0x94
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4be
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x94
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4d4
	.uleb128 0xc
	.4byte	0x4f0
	.4byte	0x9b
	.uleb128 0x11
	.4byte	0x119
	.byte	0x5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x10
	.byte	0x6
	.4byte	0x2bd
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x10
	.byte	0x8
	.4byte	0x506
	.uleb128 0x8
	.byte	0x4
	.4byte	0x50c
	.uleb128 0x18
	.4byte	0x51c
	.byte	0x1
	.4byte	0xbb
	.uleb128 0x19
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x10
	.byte	0x9
	.4byte	0x527
	.uleb128 0x8
	.byte	0x4
	.4byte	0x52d
	.uleb128 0x18
	.4byte	0x53d
	.byte	0x1
	.4byte	0xc5
	.uleb128 0x19
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x10
	.byte	0xa
	.4byte	0x548
	.uleb128 0x8
	.byte	0x4
	.4byte	0x54e
	.uleb128 0x18
	.4byte	0x55e
	.byte	0x1
	.4byte	0xd0
	.uleb128 0x19
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x10
	.byte	0xc
	.4byte	0x569
	.uleb128 0x8
	.byte	0x4
	.4byte	0x56f
	.uleb128 0x1a
	.4byte	0x580
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd0
	.uleb128 0x19
	.4byte	0xbb
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x10
	.byte	0xd
	.4byte	0x58b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x591
	.uleb128 0x1a
	.4byte	0x5a2
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd0
	.uleb128 0x19
	.4byte	0xc5
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x10
	.byte	0xe
	.4byte	0x5ad
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5b3
	.uleb128 0x1a
	.4byte	0x5c4
	.byte	0x1
	.uleb128 0x19
	.4byte	0xd0
	.uleb128 0x19
	.4byte	0xd0
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x10
	.byte	0x10
	.4byte	0x548
	.uleb128 0x12
	.4byte	0x614
	.4byte	.LASF67
	.byte	0xc
	.byte	0x12
	.byte	0x17
	.uleb128 0x17
	.4byte	.LASF68
	.byte	0x12
	.byte	0x18
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x13
	.ascii	"end\000"
	.byte	0x12
	.byte	0x19
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.ascii	"acc\000"
	.byte	0x12
	.byte	0x1a
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF69
	.byte	0x12
	.byte	0x1b
	.4byte	0xdb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x12
	.byte	0x1c
	.4byte	0x5cf
	.uleb128 0x12
	.4byte	0x656
	.4byte	.LASF71
	.byte	0xc
	.byte	0x12
	.byte	0x1f
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x12
	.byte	0x20
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF73
	.byte	0x12
	.byte	0x21
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x12
	.byte	0x22
	.4byte	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x12
	.byte	0x23
	.4byte	0x61f
	.uleb128 0x1c
	.4byte	0xa4f
	.2byte	0x248
	.byte	0xf
	.byte	0xc0
	.uleb128 0x13
	.ascii	"cpu\000"
	.byte	0xf
	.byte	0xc1
	.4byte	0x4f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF76
	.byte	0xf
	.byte	0xc4
	.4byte	0xa4f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0xf
	.byte	0xc7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0xf
	.byte	0xc8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0xf
	.byte	0xcb
	.4byte	0xa5f
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x17
	.4byte	.LASF80
	.byte	0xf
	.byte	0xcc
	.4byte	0x656
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x17
	.4byte	.LASF81
	.byte	0xf
	.byte	0xcd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x17
	.4byte	.LASF82
	.byte	0xf
	.byte	0xd0
	.4byte	0xa6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x17
	.4byte	.LASF83
	.byte	0xf
	.byte	0xd1
	.4byte	0xa6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0xf
	.byte	0xd2
	.4byte	0xa6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0xf
	.byte	0xd3
	.4byte	0xa6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0xf
	.byte	0xd4
	.4byte	0xa6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0xf
	.byte	0xd5
	.4byte	0xa6f
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0xf
	.byte	0xd6
	.4byte	0xa75
	.byte	0x3
	.byte	0x23
	.uleb128 0x158
	.uleb128 0x17
	.4byte	.LASF89
	.byte	0xf
	.byte	0xd7
	.4byte	0xa75
	.byte	0x3
	.byte	0x23
	.uleb128 0x15c
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0xf
	.byte	0xd8
	.4byte	0xa75
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0xf
	.byte	0xda
	.4byte	0xa7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x17
	.4byte	.LASF92
	.byte	0xf
	.byte	0xdd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0xf
	.byte	0xde
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0xf
	.byte	0xdf
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0xf
	.byte	0xe0
	.4byte	0xa8c
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0xf
	.byte	0xe1
	.4byte	0xa8c
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0xf
	.byte	0xe2
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x17
	.4byte	.LASF98
	.byte	0xf
	.byte	0xe5
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x17
	.4byte	.LASF99
	.byte	0xf
	.byte	0xe6
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x17
	.4byte	.LASF100
	.byte	0xf
	.byte	0xe7
	.4byte	0xa75
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0xf
	.byte	0xe8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x17
	.4byte	.LASF102
	.byte	0xf
	.byte	0xea
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x17
	.4byte	.LASF103
	.byte	0xf
	.byte	0xeb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x17
	.4byte	.LASF104
	.byte	0xf
	.byte	0xec
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x17
	.4byte	.LASF105
	.byte	0xf
	.byte	0xed
	.4byte	0xa97
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x17
	.4byte	.LASF106
	.byte	0xf
	.byte	0xee
	.4byte	0xa75
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x17
	.4byte	.LASF107
	.byte	0xf
	.byte	0xf1
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x17
	.4byte	.LASF108
	.byte	0xf
	.byte	0xf2
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x17
	.4byte	.LASF109
	.byte	0xf
	.byte	0xf3
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x17
	.4byte	.LASF110
	.byte	0xf
	.byte	0xf4
	.4byte	0xdb
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ea
	.uleb128 0x17
	.4byte	.LASF111
	.byte	0xf
	.byte	0xf7
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x17
	.4byte	.LASF112
	.byte	0xf
	.byte	0xf8
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x17
	.4byte	.LASF113
	.byte	0xf
	.byte	0xf9
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f4
	.uleb128 0x17
	.4byte	.LASF114
	.byte	0xf
	.byte	0xfa
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x17
	.4byte	.LASF115
	.byte	0xf
	.byte	0xfb
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x17
	.4byte	.LASF116
	.byte	0xf
	.byte	0xfc
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x17
	.4byte	.LASF117
	.byte	0xf
	.byte	0xfd
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0xf
	.2byte	0x102
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0xf
	.2byte	0x103
	.4byte	0xe6
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0xf
	.2byte	0x106
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0xf
	.2byte	0x108
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0xf
	.2byte	0x109
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0xf
	.2byte	0x10a
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0xf
	.2byte	0x10b
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0xf
	.2byte	0x10d
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0xf
	.2byte	0x10e
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0xf
	.2byte	0x10f
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0xf
	.2byte	0x110
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0xf
	.2byte	0x111
	.4byte	0xd0
	.byte	0x3
	.byte	0x23
	.uleb128 0x234
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0xf
	.2byte	0x114
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0xf
	.2byte	0x115
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x239
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0xf
	.2byte	0x116
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23a
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0xf
	.2byte	0x117
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23b
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0xf
	.2byte	0x118
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xf
	.2byte	0x11b
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23d
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0xf
	.2byte	0x11c
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x23e
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xf
	.2byte	0x11f
	.4byte	0xaa7
	.byte	0x3
	.byte	0x23
	.uleb128 0x23f
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xf
	.2byte	0x122
	.4byte	0xbb
	.byte	0x3
	.byte	0x23
	.uleb128 0x247
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0xf
	.2byte	0x123
	.4byte	0xab7
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa5f
	.4byte	0x1ee
	.uleb128 0x11
	.4byte	0x119
	.byte	0x8
	.byte	0x0
	.uleb128 0xc
	.4byte	0xa6f
	.4byte	0x614
	.uleb128 0x11
	.4byte	0x119
	.byte	0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc5
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa81
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa87
	.uleb128 0x10
	.4byte	0xbb
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa92
	.uleb128 0x10
	.4byte	0xd0
	.uleb128 0xc
	.4byte	0xaa7
	.4byte	0xd0
	.uleb128 0x11
	.4byte	0x119
	.byte	0xf
	.byte	0x0
	.uleb128 0xc
	.4byte	0xab7
	.4byte	0xbb
	.uleb128 0x11
	.4byte	0x119
	.byte	0x7
	.byte	0x0
	.uleb128 0xc
	.4byte	0xac6
	.4byte	0xbb
	.uleb128 0x1d
	.4byte	0x119
	.byte	0x0
	.uleb128 0x1e
	.4byte	0xae1
	.2byte	0x400
	.byte	0xf
	.byte	0xbf
	.uleb128 0x16
	.4byte	0x661
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0xf
	.2byte	0x125
	.4byte	0xae1
	.byte	0x0
	.uleb128 0xc
	.4byte	0xaf1
	.4byte	0xd0
	.uleb128 0x11
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0x20
	.4byte	0xb77
	.4byte	.LASF141
	.2byte	0x2000
	.byte	0xf
	.byte	0xbe
	.uleb128 0x21
	.4byte	0xac6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xf
	.2byte	0x128
	.4byte	0xb77
	.byte	0x3
	.byte	0x23
	.uleb128 0x400
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xf
	.2byte	0x129
	.4byte	0xb87
	.byte	0x3
	.byte	0x23
	.uleb128 0x800
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0xf
	.2byte	0x12a
	.4byte	0xb97
	.byte	0x3
	.byte	0x23
	.uleb128 0xc00
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0xf
	.2byte	0x12b
	.4byte	0xba7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0xf
	.2byte	0x12c
	.4byte	0xbb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1400
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xf
	.2byte	0x12d
	.4byte	0xbc7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1800
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0xf
	.2byte	0x12e
	.4byte	0xbd7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c00
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb87
	.4byte	0x4fb
	.uleb128 0x11
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xb97
	.4byte	0x51c
	.uleb128 0x11
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xba7
	.4byte	0x53d
	.uleb128 0x11
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbb7
	.4byte	0x55e
	.uleb128 0x11
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbc7
	.4byte	0x580
	.uleb128 0x11
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbd7
	.4byte	0x5a2
	.uleb128 0x11
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xc
	.4byte	0xbe7
	.4byte	0x5c4
	.uleb128 0x11
	.4byte	0x119
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF149
	.byte	0xf
	.2byte	0x12f
	.4byte	0xaf1
	.uleb128 0x22
	.4byte	0xc54
	.4byte	.LASF165
	.byte	0x1
	.byte	0x2
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF150
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF151
	.sleb128 1
	.uleb128 0x7
	.4byte	.LASF152
	.sleb128 2
	.uleb128 0x7
	.4byte	.LASF153
	.sleb128 3
	.uleb128 0x7
	.4byte	.LASF154
	.sleb128 4
	.uleb128 0x7
	.4byte	.LASF155
	.sleb128 5
	.uleb128 0x7
	.4byte	.LASF156
	.sleb128 6
	.uleb128 0x7
	.4byte	.LASF157
	.sleb128 7
	.uleb128 0x7
	.4byte	.LASF158
	.sleb128 8
	.uleb128 0x7
	.4byte	.LASF159
	.sleb128 9
	.uleb128 0x7
	.4byte	.LASF160
	.sleb128 10
	.uleb128 0x7
	.4byte	.LASF161
	.sleb128 11
	.uleb128 0x7
	.4byte	.LASF162
	.sleb128 12
	.uleb128 0x7
	.4byte	.LASF163
	.sleb128 13
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF164
	.byte	0x2
	.byte	0x17
	.4byte	0xbf3
	.uleb128 0x22
	.4byte	0xc78
	.4byte	.LASF166
	.byte	0x1
	.byte	0x2
	.byte	0x19
	.uleb128 0x7
	.4byte	.LASF167
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF168
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF169
	.byte	0x2
	.byte	0x1c
	.4byte	0xc5f
	.uleb128 0x3
	.4byte	.LASF170
	.byte	0x2
	.byte	0x28
	.4byte	0x1ee
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0x2
	.byte	0x2a
	.4byte	0x1ee
	.uleb128 0x3
	.4byte	.LASF172
	.byte	0x2
	.byte	0x2b
	.4byte	0x1ee
	.uleb128 0x3
	.4byte	.LASF173
	.byte	0x2
	.byte	0x2d
	.4byte	0x1ee
	.uleb128 0x3
	.4byte	.LASF174
	.byte	0x2
	.byte	0x2e
	.4byte	0x1ee
	.uleb128 0x3
	.4byte	.LASF175
	.byte	0x3
	.byte	0xc
	.4byte	0xcc5
	.uleb128 0x8
	.byte	0x4
	.4byte	0xccb
	.uleb128 0x18
	.4byte	0xce5
	.byte	0x1
	.4byte	0xc78
	.uleb128 0x19
	.4byte	0xce5
	.uleb128 0x19
	.4byte	0xc54
	.uleb128 0x19
	.4byte	0x1ee
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xceb
	.uleb128 0x12
	.4byte	0xd5a
	.4byte	.LASF176
	.byte	0x28
	.byte	0x3
	.byte	0x8
	.uleb128 0x17
	.4byte	.LASF177
	.byte	0x3
	.byte	0x1b
	.4byte	0xdb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF178
	.byte	0x3
	.byte	0x1c
	.4byte	0xce5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF179
	.byte	0x3
	.byte	0x1d
	.4byte	0xce5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF180
	.byte	0x3
	.byte	0x1e
	.4byte	0xce5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x17
	.4byte	.LASF181
	.byte	0x3
	.byte	0x1f
	.4byte	0xcba
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x17
	.4byte	.LASF39
	.byte	0x3
	.byte	0x20
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x17
	.4byte	.LASF182
	.byte	0x3
	.byte	0x21
	.4byte	0x2b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0x0
	.uleb128 0x12
	.4byte	0xd9f
	.4byte	.LASF183
	.byte	0x10
	.byte	0x3
	.byte	0xe
	.uleb128 0x17
	.4byte	.LASF181
	.byte	0x3
	.byte	0xf
	.4byte	0xcba
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF178
	.byte	0x3
	.byte	0x10
	.4byte	0xd9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.4byte	.LASF184
	.byte	0x3
	.byte	0x11
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x17
	.4byte	.LASF185
	.byte	0x3
	.byte	0x12
	.4byte	0x1f0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xda5
	.uleb128 0x10
	.4byte	0xd5a
	.uleb128 0x3
	.4byte	.LASF186
	.byte	0x3
	.byte	0x13
	.4byte	0xd5a
	.uleb128 0x8
	.byte	0x4
	.4byte	0xdbb
	.uleb128 0x10
	.4byte	0xdaa
	.uleb128 0x3
	.4byte	.LASF187
	.byte	0x3
	.byte	0x22
	.4byte	0xceb
	.uleb128 0x8
	.byte	0x4
	.4byte	0xdc0
	.uleb128 0x3
	.4byte	.LASF188
	.byte	0x9
	.byte	0x6
	.4byte	0xddc
	.uleb128 0x12
	.4byte	0xe05
	.4byte	.LASF189
	.byte	0x48
	.byte	0x9
	.byte	0x6
	.uleb128 0x17
	.4byte	.LASF190
	.byte	0x9
	.byte	0x6
	.4byte	0xdc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF191
	.byte	0x9
	.byte	0x7
	.4byte	0xe05
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0xc
	.4byte	0xe15
	.4byte	0x120
	.uleb128 0x11
	.4byte	0x119
	.byte	0x1f
	.byte	0x0
	.uleb128 0x22
	.4byte	0xe2e
	.4byte	.LASF192
	.byte	0x1
	.byte	0x8
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF193
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF194
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF195
	.byte	0x8
	.byte	0x9
	.4byte	0xe15
	.uleb128 0x3
	.4byte	.LASF196
	.byte	0x8
	.byte	0xb
	.4byte	0xe44
	.uleb128 0x12
	.4byte	0xe6d
	.4byte	.LASF197
	.byte	0x4c
	.byte	0x8
	.byte	0xb
	.uleb128 0x17
	.4byte	.LASF190
	.byte	0x8
	.byte	0xb
	.4byte	0xdd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF198
	.byte	0x8
	.byte	0xc
	.4byte	0xe2e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF199
	.byte	0xc
	.byte	0x6
	.4byte	0xe78
	.uleb128 0x12
	.4byte	0xecb
	.4byte	.LASF200
	.byte	0x40
	.byte	0xc
	.byte	0x6
	.uleb128 0x17
	.4byte	.LASF190
	.byte	0xc
	.byte	0x6
	.4byte	0xdc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF201
	.byte	0xc
	.byte	0x7
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x17
	.4byte	.LASF202
	.byte	0xc
	.byte	0x8
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x17
	.4byte	.LASF203
	.byte	0xc
	.byte	0x9
	.4byte	0x1fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x17
	.4byte	.LASF204
	.byte	0xc
	.byte	0xa
	.4byte	0x1fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF205
	.byte	0xb
	.byte	0x6
	.4byte	0xed6
	.uleb128 0x12
	.4byte	0xeff
	.4byte	.LASF206
	.byte	0x50
	.byte	0xb
	.byte	0x6
	.uleb128 0x17
	.4byte	.LASF190
	.byte	0xb
	.byte	0x6
	.4byte	0xe39
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF207
	.byte	0xb
	.byte	0x7
	.4byte	0x106
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF208
	.byte	0xa
	.byte	0x6
	.4byte	0xf0a
	.uleb128 0x12
	.4byte	0xf33
	.4byte	.LASF209
	.byte	0x54
	.byte	0xa
	.byte	0x6
	.uleb128 0x17
	.4byte	.LASF190
	.byte	0xa
	.byte	0x6
	.4byte	0xecb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF210
	.byte	0xa
	.byte	0x7
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF211
	.byte	0x7
	.byte	0x8
	.4byte	0xf3e
	.uleb128 0x12
	.4byte	0xf91
	.4byte	.LASF212
	.byte	0x38
	.byte	0x7
	.byte	0x8
	.uleb128 0x17
	.4byte	.LASF190
	.byte	0x7
	.byte	0x8
	.4byte	0xdc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF213
	.byte	0x7
	.byte	0x9
	.4byte	0xf91
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x17
	.4byte	.LASF214
	.byte	0x7
	.byte	0xa
	.4byte	0xf91
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x17
	.4byte	.LASF215
	.byte	0x7
	.byte	0xb
	.4byte	0xf91
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x17
	.4byte	.LASF216
	.byte	0x7
	.byte	0xc
	.4byte	0xf91
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf0a
	.uleb128 0x3
	.4byte	.LASF217
	.byte	0x7
	.byte	0xf
	.4byte	0xfa2
	.uleb128 0x12
	.4byte	0xfcb
	.4byte	.LASF218
	.byte	0x2c
	.byte	0x7
	.byte	0xf
	.uleb128 0x17
	.4byte	.LASF190
	.byte	0x7
	.byte	0xf
	.4byte	0xdc0
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x17
	.4byte	.LASF219
	.byte	0x7
	.byte	0x10
	.4byte	0xd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x23
	.4byte	0x1085
	.4byte	.LASF226
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.4byte	0xc78
	.4byte	.LFB122
	.4byte	.LFE122
	.4byte	.LLST0
	.uleb128 0x24
	.4byte	.LASF220
	.byte	0x1
	.byte	0xf0
	.4byte	0xce5
	.4byte	.LLST1
	.uleb128 0x25
	.ascii	"e\000"
	.byte	0x1
	.byte	0xf0
	.4byte	0xc54
	.4byte	.LLST2
	.uleb128 0x24
	.4byte	.LASF221
	.byte	0x1
	.byte	0xf0
	.4byte	0x1ee
	.4byte	.LLST3
	.uleb128 0x26
	.4byte	.LASF222
	.byte	0x1
	.byte	0xf0
	.4byte	0x1085
	.uleb128 0x27
	.4byte	.LASF223
	.byte	0x1
	.byte	0xf0
	.4byte	0xc78
	.4byte	.LLST4
	.uleb128 0x28
	.4byte	0x105a
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x29
	.ascii	"arg\000"
	.byte	0x1
	.byte	0xf1
	.4byte	0x108b
	.uleb128 0x2a
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x26
	.4byte	.LASF224
	.byte	0x1
	.byte	0xf4
	.4byte	0x1091
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	0x1073
	.4byte	.LBB4
	.4byte	.LBE4
	.uleb128 0x29
	.ascii	"arg\000"
	.byte	0x1
	.byte	0xfd
	.4byte	0x1097
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF225
	.byte	0x1
	.byte	0xf3
	.4byte	0x17b9
	.byte	0x5
	.byte	0x3
	.4byte	buttonBounds.5799
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf97
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc8e
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe39
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc99
	.uleb128 0x23
	.4byte	0x1114
	.4byte	.LASF227
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.4byte	0xc78
	.4byte	.LFB121
	.4byte	.LFE121
	.4byte	.LLST5
	.uleb128 0x24
	.4byte	.LASF220
	.byte	0x1
	.byte	0xe8
	.4byte	0xce5
	.4byte	.LLST6
	.uleb128 0x25
	.ascii	"e\000"
	.byte	0x1
	.byte	0xe8
	.4byte	0xc54
	.4byte	.LLST7
	.uleb128 0x24
	.4byte	.LASF221
	.byte	0x1
	.byte	0xe8
	.4byte	0x1ee
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	.LASF222
	.byte	0x1
	.byte	0xe8
	.4byte	0x1091
	.uleb128 0x27
	.4byte	.LASF223
	.byte	0x1
	.byte	0xe8
	.4byte	0xc78
	.4byte	.LLST9
	.uleb128 0x2a
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x29
	.ascii	"arg\000"
	.byte	0x1
	.byte	0xe9
	.4byte	0x1114
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xcaf
	.uleb128 0x23
	.4byte	0x134e
	.4byte	.LASF228
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.4byte	0xc78
	.4byte	.LFB120
	.4byte	.LFE120
	.4byte	.LLST10
	.uleb128 0x24
	.4byte	.LASF220
	.byte	0x1
	.byte	0x72
	.4byte	0xce5
	.4byte	.LLST11
	.uleb128 0x25
	.ascii	"e\000"
	.byte	0x1
	.byte	0x72
	.4byte	0xc54
	.4byte	.LLST12
	.uleb128 0x24
	.4byte	.LASF221
	.byte	0x1
	.byte	0x72
	.4byte	0x1ee
	.4byte	.LLST13
	.uleb128 0x26
	.4byte	.LASF222
	.byte	0x1
	.byte	0x72
	.4byte	0x134e
	.uleb128 0x27
	.4byte	.LASF223
	.byte	0x1
	.byte	0x72
	.4byte	0xc78
	.4byte	.LLST14
	.uleb128 0x28
	.4byte	0x1235
	.4byte	.LBB6
	.4byte	.LBE6
	.uleb128 0x29
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x73
	.4byte	0x108b
	.uleb128 0x2a
	.4byte	.LBB7
	.4byte	.LBE7
	.uleb128 0x27
	.4byte	.LASF229
	.byte	0x1
	.byte	0x8c
	.4byte	0xdcb
	.4byte	.LLST15
	.uleb128 0x27
	.4byte	.LASF230
	.byte	0x1
	.byte	0x8d
	.4byte	0x1091
	.4byte	.LLST16
	.uleb128 0x27
	.4byte	.LASF231
	.byte	0x1
	.byte	0x8e
	.4byte	0x1091
	.4byte	.LLST17
	.uleb128 0x27
	.4byte	.LASF232
	.byte	0x1
	.byte	0x8f
	.4byte	0x1091
	.4byte	.LLST18
	.uleb128 0x27
	.4byte	.LASF233
	.byte	0x1
	.byte	0x90
	.4byte	0x1091
	.4byte	.LLST19
	.uleb128 0x26
	.4byte	.LASF234
	.byte	0x1
	.byte	0x91
	.4byte	0x1354
	.uleb128 0x26
	.4byte	.LASF235
	.byte	0x1
	.byte	0xb4
	.4byte	0x135a
	.uleb128 0x26
	.4byte	.LASF236
	.byte	0x1
	.byte	0xb5
	.4byte	0x135a
	.uleb128 0x26
	.4byte	.LASF237
	.byte	0x1
	.byte	0xc0
	.4byte	0x135a
	.uleb128 0x26
	.4byte	.LASF238
	.byte	0x1
	.byte	0xc1
	.4byte	0x135a
	.uleb128 0x2a
	.4byte	.LBB8
	.4byte	.LBE8
	.uleb128 0x26
	.4byte	.LASF85
	.byte	0x1
	.byte	0x94
	.4byte	0x135a
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	0x124e
	.4byte	.LBB9
	.4byte	.LBE9
	.uleb128 0x29
	.ascii	"arg\000"
	.byte	0x1
	.byte	0xcd
	.4byte	0x1360
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF239
	.byte	0x1
	.byte	0x8a
	.4byte	0x17b9
	.byte	0x5
	.byte	0x3
	.4byte	cpuMediumBounds.5685
	.uleb128 0x2b
	.4byte	.LASF240
	.byte	0x1
	.byte	0x89
	.4byte	0x17b9
	.byte	0x5
	.byte	0x3
	.4byte	cpuFastBounds.5684
	.uleb128 0x2b
	.4byte	.LASF241
	.byte	0x1
	.byte	0x88
	.4byte	0x17b9
	.byte	0x5
	.byte	0x3
	.4byte	cpuLabelBounds.5683
	.uleb128 0x2b
	.4byte	.LASF242
	.byte	0x1
	.byte	0x87
	.4byte	0x17b9
	.byte	0x5
	.byte	0x3
	.4byte	cpuFrameBounds.5682
	.uleb128 0x2b
	.4byte	.LASF243
	.byte	0x1
	.byte	0x81
	.4byte	0x17b9
	.byte	0x5
	.byte	0x3
	.4byte	scaledSizeBounds.5681
	.uleb128 0x2b
	.4byte	.LASF244
	.byte	0x1
	.byte	0x80
	.4byte	0x17b9
	.byte	0x5
	.byte	0x3
	.4byte	normalSizeBounds.5680
	.uleb128 0x2b
	.4byte	.LASF245
	.byte	0x1
	.byte	0x7f
	.4byte	0x17b9
	.byte	0x5
	.byte	0x3
	.4byte	videoLabelBounds.5679
	.uleb128 0x2b
	.4byte	.LASF246
	.byte	0x1
	.byte	0x7e
	.4byte	0x17b9
	.byte	0x5
	.byte	0x3
	.4byte	videoFrameBounds.5678
	.uleb128 0x2b
	.4byte	.LASF247
	.byte	0x1
	.byte	0x7c
	.4byte	0x17b9
	.byte	0x5
	.byte	0x3
	.4byte	statusBounds.5677
	.uleb128 0x2b
	.4byte	.LASF248
	.byte	0x1
	.byte	0x7a
	.4byte	0x17b9
	.byte	0x5
	.byte	0x3
	.4byte	ramBounds.5676
	.uleb128 0x2b
	.4byte	.LASF249
	.byte	0x1
	.byte	0x79
	.4byte	0x17b9
	.byte	0x5
	.byte	0x3
	.4byte	saveBounds.5675
	.uleb128 0x2b
	.4byte	.LASF250
	.byte	0x1
	.byte	0x78
	.4byte	0x17b9
	.byte	0x5
	.byte	0x3
	.4byte	inputBounds.5674
	.uleb128 0x2b
	.4byte	.LASF251
	.byte	0x1
	.byte	0x77
	.4byte	0x17b9
	.byte	0x5
	.byte	0x3
	.4byte	screenOffBounds.5673
	.uleb128 0x2b
	.4byte	.LASF252
	.byte	0x1
	.byte	0x76
	.4byte	0x17b9
	.byte	0x5
	.byte	0x3
	.4byte	romSelectBounds.5672
	.uleb128 0x2b
	.4byte	.LASF253
	.byte	0x1
	.byte	0x75
	.4byte	0x17b9
	.byte	0x5
	.byte	0x3
	.4byte	logoBounds.5671
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf33
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe6d
	.uleb128 0x8
	.byte	0x4
	.4byte	0xdd1
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc83
	.uleb128 0x23
	.4byte	0x13dd
	.4byte	.LASF254
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.4byte	0xc78
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST20
	.uleb128 0x24
	.4byte	.LASF220
	.byte	0x1
	.byte	0x21
	.4byte	0xce5
	.4byte	.LLST21
	.uleb128 0x25
	.ascii	"e\000"
	.byte	0x1
	.byte	0x21
	.4byte	0xc54
	.4byte	.LLST22
	.uleb128 0x24
	.4byte	.LASF221
	.byte	0x1
	.byte	0x21
	.4byte	0x1ee
	.4byte	.LLST23
	.uleb128 0x26
	.4byte	.LASF222
	.byte	0x1
	.byte	0x21
	.4byte	0x13dd
	.uleb128 0x27
	.4byte	.LASF223
	.byte	0x1
	.byte	0x21
	.4byte	0xc78
	.4byte	.LLST24
	.uleb128 0x2a
	.4byte	.LBB10
	.4byte	.LBE10
	.uleb128 0x29
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x22
	.4byte	0x1114
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xeff
	.uleb128 0x23
	.4byte	0x145a
	.4byte	.LASF255
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.4byte	0xc78
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LLST25
	.uleb128 0x24
	.4byte	.LASF220
	.byte	0x1
	.byte	0x19
	.4byte	0xce5
	.4byte	.LLST26
	.uleb128 0x25
	.ascii	"e\000"
	.byte	0x1
	.byte	0x19
	.4byte	0xc54
	.4byte	.LLST27
	.uleb128 0x24
	.4byte	.LASF221
	.byte	0x1
	.byte	0x19
	.4byte	0x1ee
	.4byte	.LLST28
	.uleb128 0x26
	.4byte	.LASF222
	.byte	0x1
	.byte	0x19
	.4byte	0x13dd
	.uleb128 0x27
	.4byte	.LASF223
	.byte	0x1
	.byte	0x19
	.4byte	0xc78
	.4byte	.LLST29
	.uleb128 0x2a
	.4byte	.LBB11
	.4byte	.LBE11
	.uleb128 0x29
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x1a
	.4byte	0x1114
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	0x14d1
	.4byte	.LASF256
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.4byte	0xc78
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LLST30
	.uleb128 0x24
	.4byte	.LASF220
	.byte	0x1
	.byte	0x31
	.4byte	0xce5
	.4byte	.LLST31
	.uleb128 0x25
	.ascii	"e\000"
	.byte	0x1
	.byte	0x31
	.4byte	0xc54
	.4byte	.LLST32
	.uleb128 0x24
	.4byte	.LASF221
	.byte	0x1
	.byte	0x31
	.4byte	0x1ee
	.4byte	.LLST33
	.uleb128 0x26
	.4byte	.LASF222
	.byte	0x1
	.byte	0x31
	.4byte	0x13dd
	.uleb128 0x27
	.4byte	.LASF223
	.byte	0x1
	.byte	0x31
	.4byte	0xc78
	.4byte	.LLST34
	.uleb128 0x2a
	.4byte	.LBB12
	.4byte	.LBE12
	.uleb128 0x29
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x32
	.4byte	0x1114
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	0x1548
	.4byte	.LASF257
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.4byte	0xc78
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST35
	.uleb128 0x24
	.4byte	.LASF220
	.byte	0x1
	.byte	0x29
	.4byte	0xce5
	.4byte	.LLST36
	.uleb128 0x25
	.ascii	"e\000"
	.byte	0x1
	.byte	0x29
	.4byte	0xc54
	.4byte	.LLST37
	.uleb128 0x24
	.4byte	.LASF221
	.byte	0x1
	.byte	0x29
	.4byte	0x1ee
	.4byte	.LLST38
	.uleb128 0x26
	.4byte	.LASF222
	.byte	0x1
	.byte	0x29
	.4byte	0x13dd
	.uleb128 0x27
	.4byte	.LASF223
	.byte	0x1
	.byte	0x29
	.4byte	0xc78
	.4byte	.LLST39
	.uleb128 0x2a
	.4byte	.LBB13
	.4byte	.LBE13
	.uleb128 0x29
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x2a
	.4byte	0x1114
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	0x15bf
	.4byte	.LASF258
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.4byte	0xc78
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LLST40
	.uleb128 0x24
	.4byte	.LASF220
	.byte	0x1
	.byte	0x5c
	.4byte	0xce5
	.4byte	.LLST41
	.uleb128 0x25
	.ascii	"e\000"
	.byte	0x1
	.byte	0x5c
	.4byte	0xc54
	.4byte	.LLST42
	.uleb128 0x24
	.4byte	.LASF221
	.byte	0x1
	.byte	0x5c
	.4byte	0x1ee
	.4byte	.LLST43
	.uleb128 0x26
	.4byte	.LASF222
	.byte	0x1
	.byte	0x5c
	.4byte	0x1091
	.uleb128 0x27
	.4byte	.LASF223
	.byte	0x1
	.byte	0x5c
	.4byte	0xc78
	.4byte	.LLST44
	.uleb128 0x2a
	.4byte	.LBB14
	.4byte	.LBE14
	.uleb128 0x29
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x5d
	.4byte	0x1114
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	0x1636
	.4byte	.LASF259
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.4byte	0xc78
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LLST45
	.uleb128 0x24
	.4byte	.LASF220
	.byte	0x1
	.byte	0x54
	.4byte	0xce5
	.4byte	.LLST46
	.uleb128 0x25
	.ascii	"e\000"
	.byte	0x1
	.byte	0x54
	.4byte	0xc54
	.4byte	.LLST47
	.uleb128 0x24
	.4byte	.LASF221
	.byte	0x1
	.byte	0x54
	.4byte	0x1ee
	.4byte	.LLST48
	.uleb128 0x26
	.4byte	.LASF222
	.byte	0x1
	.byte	0x54
	.4byte	0x1091
	.uleb128 0x27
	.4byte	.LASF223
	.byte	0x1
	.byte	0x54
	.4byte	0xc78
	.4byte	.LLST49
	.uleb128 0x2a
	.4byte	.LBB15
	.4byte	.LBE15
	.uleb128 0x29
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x55
	.4byte	0x1114
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	0x16ad
	.4byte	.LASF260
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	0xc78
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LLST50
	.uleb128 0x24
	.4byte	.LASF220
	.byte	0x1
	.byte	0x4c
	.4byte	0xce5
	.4byte	.LLST51
	.uleb128 0x25
	.ascii	"e\000"
	.byte	0x1
	.byte	0x4c
	.4byte	0xc54
	.4byte	.LLST52
	.uleb128 0x24
	.4byte	.LASF221
	.byte	0x1
	.byte	0x4c
	.4byte	0x1ee
	.4byte	.LLST53
	.uleb128 0x26
	.4byte	.LASF222
	.byte	0x1
	.byte	0x4c
	.4byte	0x1091
	.uleb128 0x27
	.4byte	.LASF223
	.byte	0x1
	.byte	0x4c
	.4byte	0xc78
	.4byte	.LLST54
	.uleb128 0x2a
	.4byte	.LBB16
	.4byte	.LBE16
	.uleb128 0x29
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x4d
	.4byte	0x1114
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	0x1724
	.4byte	.LASF261
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0xc78
	.4byte	.LFB116
	.4byte	.LFE116
	.4byte	.LLST55
	.uleb128 0x24
	.4byte	.LASF220
	.byte	0x1
	.byte	0x44
	.4byte	0xce5
	.4byte	.LLST56
	.uleb128 0x25
	.ascii	"e\000"
	.byte	0x1
	.byte	0x44
	.4byte	0xc54
	.4byte	.LLST57
	.uleb128 0x24
	.4byte	.LASF221
	.byte	0x1
	.byte	0x44
	.4byte	0x1ee
	.4byte	.LLST58
	.uleb128 0x26
	.4byte	.LASF222
	.byte	0x1
	.byte	0x44
	.4byte	0x1091
	.uleb128 0x27
	.4byte	.LASF223
	.byte	0x1
	.byte	0x44
	.4byte	0xc78
	.4byte	.LLST59
	.uleb128 0x2a
	.4byte	.LBB17
	.4byte	.LBE17
	.uleb128 0x29
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x45
	.4byte	0x1114
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	0x17b3
	.4byte	.LASF262
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.4byte	0xc78
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LLST60
	.uleb128 0x24
	.4byte	.LASF220
	.byte	0x1
	.byte	0x39
	.4byte	0xce5
	.4byte	.LLST61
	.uleb128 0x25
	.ascii	"e\000"
	.byte	0x1
	.byte	0x39
	.4byte	0xc54
	.4byte	.LLST62
	.uleb128 0x24
	.4byte	.LASF221
	.byte	0x1
	.byte	0x39
	.4byte	0x1ee
	.4byte	.LLST63
	.uleb128 0x26
	.4byte	.LASF222
	.byte	0x1
	.byte	0x39
	.4byte	0xdcb
	.uleb128 0x27
	.4byte	.LASF223
	.byte	0x1
	.byte	0x39
	.4byte	0xc78
	.4byte	.LLST64
	.uleb128 0x2a
	.4byte	.LBB18
	.4byte	.LBE18
	.uleb128 0x29
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x3a
	.4byte	0x17b3
	.uleb128 0x2a
	.4byte	.LBB19
	.4byte	.LBE19
	.uleb128 0x2b
	.4byte	.LASF182
	.byte	0x1
	.byte	0x3c
	.4byte	0x2b2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xca4
	.uleb128 0x10
	.4byte	0x2b2
	.uleb128 0x2c
	.4byte	.LASF263
	.byte	0xd
	.2byte	0x129
	.4byte	0x17ca
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1e2
	.uleb128 0xc
	.4byte	0x17db
	.4byte	0x49
	.uleb128 0x2d
	.byte	0x0
	.uleb128 0x2e
	.4byte	.LASF264
	.byte	0xe
	.byte	0x2c
	.4byte	0x17d0
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x17f3
	.4byte	0x49
	.uleb128 0x2d
	.byte	0x0
	.uleb128 0x2e
	.4byte	.LASF265
	.byte	0xe
	.byte	0x2d
	.4byte	0x17e8
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	0x180b
	.4byte	0x49
	.uleb128 0x2d
	.byte	0x0
	.uleb128 0x2e
	.4byte	.LASF266
	.byte	0xe
	.byte	0x2e
	.4byte	0x1800
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF267
	.byte	0xf
	.2byte	0x149
	.4byte	0x1827
	.byte	0x1
	.byte	0x1
	.byte	0x57
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbe7
	.uleb128 0x30
	.4byte	.LASF268
	.byte	0xf
	.2byte	0x14d
	.4byte	0xbe7
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF269
	.byte	0x9
	.byte	0x6
	.4byte	0xdbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF270
	.byte	0x8
	.byte	0xb
	.4byte	0xdbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF271
	.byte	0xc
	.byte	0x6
	.4byte	0xdbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF272
	.byte	0xa
	.byte	0x6
	.4byte	0xdbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF273
	.byte	0x13
	.byte	0x6
	.4byte	0xdbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF274
	.byte	0x14
	.byte	0x7
	.4byte	0xdbb
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.4byte	.LASF275
	.byte	0x1
	.byte	0x72
	.4byte	0xdbb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__TGuiLayoutMainTypeHeader__
	.uleb128 0x31
	.4byte	.LASF276
	.byte	0x1
	.byte	0xf0
	.4byte	0xdbb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__TGuiLayoutScreenOffTypeHeader__
	.uleb128 0x2e
	.4byte	.LASF277
	.byte	0x1
	.byte	0xf0
	.4byte	0xdbb
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
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x13
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
	.uleb128 0x15
	.uleb128 0x17
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
	.uleb128 0x16
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x4
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.4byte	0x5f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x18bb
	.4byte	0x1818
	.ascii	"g_neo\000"
	.4byte	0x1889
	.ascii	"__TGuiLayoutMainTypeHeader__\000"
	.4byte	0x189b
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
.LASF27:
	.ascii	"clearColor\000"
.LASF191:
	.ascii	"szText\000"
.LASF45:
	.ascii	"checkpc\000"
.LASF49:
	.ascii	"write8\000"
.LASF96:
	.ascii	"smaBankbit\000"
.LASF148:
	.ascii	"cpuCheckPcTable\000"
.LASF104:
	.ascii	"spriteMask\000"
.LASF127:
	.ascii	"ctrl3Reg\000"
.LASF250:
	.ascii	"inputBounds\000"
.LASF54:
	.ascii	"fetch32\000"
.LASF281:
	.ascii	"_TBounds\000"
.LASF112:
	.ascii	"cpuClocksPerScanline\000"
.LASF61:
	.ascii	"TRead16Func\000"
.LASF78:
	.ascii	"romBankCount\000"
.LASF107:
	.ascii	"tileOffsetX\000"
.LASF146:
	.ascii	"cpuWrite16Table\000"
.LASF279:
	.ascii	"C:/Users/GRX/NeoDS-GBMacro/arm9/source/LayoutMain.c"
	.ascii	"\000"
.LASF200:
	.ascii	"_TGuiStatus\000"
.LASF14:
	.ascii	"uint32\000"
.LASF23:
	.ascii	"GL_MODELVIEW\000"
.LASF109:
	.ascii	"tileScaleX\000"
.LASF110:
	.ascii	"tileScaleY\000"
.LASF155:
	.ascii	"GUIEVENT_PROCESS\000"
.LASF156:
	.ascii	"GUIEVENT_RENDER\000"
.LASF194:
	.ascii	"GUIBUTTON_PRESSED\000"
.LASF185:
	.ascii	"szName\000"
.LASF197:
	.ascii	"_TGuiButton\000"
.LASF276:
	.ascii	"__TGuiLayoutScreenOffTypeHeader__\000"
.LASF167:
	.ascii	"GUIEVENTRET_HANDLED\000"
.LASF36:
	.ascii	"_TPoint\000"
.LASF162:
	.ascii	"GUIEVENT_KEYREPEAT\000"
.LASF50:
	.ascii	"write16\000"
.LASF66:
	.ascii	"TCheckPcFunc\000"
.LASF204:
	.ascii	"szSpriteCount\000"
.LASF252:
	.ascii	"romSelectBounds\000"
.LASF139:
	.ascii	"varEnd\000"
.LASF207:
	.ascii	"checked\000"
.LASF63:
	.ascii	"TWrite8Func\000"
.LASF46:
	.ascii	"read8\000"
.LASF196:
	.ascii	"TGuiButton\000"
.LASF199:
	.ascii	"TGuiStatus\000"
.LASF221:
	.ascii	"__arg__\000"
.LASF164:
	.ascii	"TGuiEventID\000"
.LASF274:
	.ascii	"__TGuiLayoutInputTypeHeader__\000"
.LASF220:
	.ascii	"__pObj__\000"
.LASF75:
	.ascii	"TNeoADPCMBStream\000"
.LASF60:
	.ascii	"TRead8Func\000"
.LASF212:
	.ascii	"_TGuiLayoutMain\000"
.LASF106:
	.ascii	"pTileBuffer\000"
.LASF227:
	.ascii	"screenOnHandler\000"
.LASF160:
	.ascii	"GUIEVENT_KEYDOWN\000"
.LASF144:
	.ascii	"cpuRead32Table\000"
.LASF25:
	.ascii	"GL_MATRIX_MODE_ENUM\000"
.LASF168:
	.ascii	"GUIEVENTRET_NOTHANDLED\000"
.LASF8:
	.ascii	"long int\000"
.LASF247:
	.ascii	"statusBounds\000"
.LASF74:
	.ascii	"frequency\000"
.LASF208:
	.ascii	"TGuiRadioButton\000"
.LASF64:
	.ascii	"TWrite16Func\000"
.LASF52:
	.ascii	"fetch8\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF137:
	.ascii	"keyGrid\000"
.LASF210:
	.ascii	"group\000"
.LASF237:
	.ascii	"pVideoFrame\000"
.LASF253:
	.ascii	"logoBounds\000"
.LASF242:
	.ascii	"cpuFrameBounds\000"
.LASF51:
	.ascii	"write32\000"
.LASF270:
	.ascii	"__TGuiButtonTypeHeader__\000"
.LASF238:
	.ascii	"pVideoLabel\000"
.LASF55:
	.ascii	"IrqCallback\000"
.LASF0:
	.ascii	"signed char\000"
.LASF195:
	.ascii	"TGuiButtonState\000"
.LASF2:
	.ascii	"uint8_t\000"
.LASF128:
	.ascii	"ctrl4Reg\000"
.LASF241:
	.ascii	"cpuLabelBounds\000"
.LASF235:
	.ascii	"pCpuFrame\000"
.LASF161:
	.ascii	"GUIEVENT_KEYUP\000"
.LASF193:
	.ascii	"GUIBUTTON_NORMAL\000"
.LASF117:
	.ascii	"romBankAddress\000"
.LASF266:
	.ascii	"TAN_bin\000"
.LASF69:
	.ascii	"step\000"
.LASF81:
	.ascii	"adpcmActive\000"
.LASF158:
	.ascii	"GUIEVENT_TOUCHUP\000"
.LASF179:
	.ascii	"pChildren\000"
.LASF101:
	.ascii	"vramBaseMask\000"
.LASF230:
	.ascii	"pRomSelect\000"
.LASF244:
	.ascii	"normalSizeBounds\000"
.LASF77:
	.ascii	"spriteCount\000"
.LASF226:
	.ascii	"__TGuiLayoutScreenOffTypeHandler__\000"
.LASF57:
	.ascii	"UnrecognizedCallback\000"
.LASF181:
	.ascii	"handler\000"
.LASF20:
	.ascii	"char\000"
.LASF130:
	.ascii	"irqVectorLatch\000"
.LASF88:
	.ascii	"pVram\000"
.LASF240:
	.ascii	"cpuFastBounds\000"
.LASF175:
	.ascii	"TGuiEventHandler\000"
.LASF131:
	.ascii	"screenDarkLatch\000"
.LASF40:
	.ascii	"prev_pc\000"
.LASF71:
	.ascii	"_TNeoADPCMBStream\000"
.LASF154:
	.ascii	"GUIEVENT_DESTROY\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF272:
	.ascii	"__TGuiRadioButtonTypeHeader__\000"
.LASF39:
	.ascii	"flags\000"
.LASF16:
	.ascii	"double\000"
.LASF103:
	.ascii	"autoAnimationCounter\000"
.LASF28:
	.ascii	"textures\000"
.LASF22:
	.ascii	"GL_POSITION\000"
.LASF149:
	.ascii	"TNeoContext\000"
.LASF111:
	.ascii	"cpuClockDivide\000"
.LASF99:
	.ascii	"frameCount\000"
.LASF120:
	.ascii	"vramOffset\000"
.LASF280:
	.ascii	"C:\\\\Users\\\\GRX\\\\NeoDS-GBMacro\\\\arm9\\\\buil"
	.ascii	"d\000"
.LASF140:
	.ascii	"fill\000"
.LASF43:
	.ascii	"cycles\000"
.LASF147:
	.ascii	"cpuWrite32Table\000"
.LASF173:
	.ascii	"TGUIEVENT_RENDERArg\000"
.LASF134:
	.ascii	"paletteRamLatch\000"
.LASF258:
	.ascii	"saveHandler\000"
.LASF219:
	.ascii	"saveMode\000"
.LASF229:
	.ascii	"pLogo\000"
.LASF264:
	.ascii	"COS_bin\000"
.LASF85:
	.ascii	"pRam\000"
.LASF87:
	.ascii	"pCard\000"
.LASF102:
	.ascii	"displayCounter\000"
.LASF59:
	.ascii	"TCycloneContext\000"
.LASF189:
	.ascii	"_TGuiLabel\000"
.LASF114:
	.ascii	"watchdogCounter\000"
.LASF35:
	.ascii	"TBounds\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF170:
	.ascii	"TGUIEVENT_ENABLEArg\000"
.LASF143:
	.ascii	"cpuRead16Table\000"
.LASF123:
	.ascii	"displayControlMask\000"
.LASF153:
	.ascii	"GUIEVENT_CREATE\000"
.LASF234:
	.ascii	"pStatus\000"
.LASF7:
	.ascii	"int32_t\000"
.LASF135:
	.ascii	"active\000"
.LASF37:
	.ascii	"Cyclone\000"
.LASF182:
	.ascii	"bounds\000"
.LASF84:
	.ascii	"pBios\000"
.LASF172:
	.ascii	"TGUIEVENT_DESTROYArg\000"
.LASF105:
	.ascii	"paletteDirty\000"
.LASF265:
	.ascii	"SIN_bin\000"
.LASF213:
	.ascii	"pNormalSize\000"
.LASF187:
	.ascii	"TGuiObject\000"
.LASF26:
	.ascii	"matrixMode\000"
.LASF186:
	.ascii	"TGuiTypeHeader\000"
.LASF30:
	.ascii	"nextBlock\000"
.LASF183:
	.ascii	"_TGuiTypeHeader\000"
.LASF255:
	.ascii	"normalSizeHandler\000"
.LASF180:
	.ascii	"pNextChild\000"
.LASF142:
	.ascii	"cpuRead8Table\000"
.LASF97:
	.ascii	"smaRand\000"
.LASF67:
	.ascii	"_TNeoADPCMStream\000"
.LASF65:
	.ascii	"TWrite32Func\000"
.LASF92:
	.ascii	"smaAddr0\000"
.LASF11:
	.ascii	"long long int\000"
.LASF21:
	.ascii	"GL_PROJECTION\000"
.LASF157:
	.ascii	"GUIEVENT_TOUCHDOWN\000"
.LASF129:
	.ascii	"coinReg\000"
.LASF72:
	.ascii	"initOffset\000"
.LASF225:
	.ascii	"buttonBounds\000"
.LASF58:
	.ascii	"internal\000"
.LASF192:
	.ascii	"_TGuiButtonState\000"
.LASF53:
	.ascii	"fetch16\000"
.LASF151:
	.ascii	"GUIEVENT_ENABLE\000"
.LASF206:
	.ascii	"_TGuiCheckbox\000"
.LASF254:
	.ascii	"scaledSizeHandler\000"
.LASF152:
	.ascii	"GUIEVENT_DISABLE\000"
.LASF93:
	.ascii	"smaAddr1\000"
.LASF223:
	.ascii	"__ret__\000"
.LASF150:
	.ascii	"GUIEVENT_NULL\000"
.LASF38:
	.ascii	"unused\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF122:
	.ascii	"displayControl\000"
.LASF211:
	.ascii	"TGuiLayoutMain\000"
.LASF95:
	.ascii	"smaBankoffset\000"
.LASF24:
	.ascii	"GL_TEXTURE\000"
.LASF277:
	.ascii	"__TGuiObjectTypeHeader__\000"
.LASF100:
	.ascii	"pVramBase\000"
.LASF68:
	.ascii	"offset\000"
.LASF82:
	.ascii	"pRom0\000"
.LASF233:
	.ascii	"pSave\000"
.LASF108:
	.ascii	"tileOffsetY\000"
.LASF169:
	.ascii	"TGuiEventReturn\000"
.LASF145:
	.ascii	"cpuWrite8Table\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF19:
	.ascii	"bool\000"
.LASF29:
	.ascii	"activeTexture\000"
.LASF126:
	.ascii	"ctrl2Reg\000"
.LASF47:
	.ascii	"read16\000"
.LASF115:
	.ascii	"paletteBank\000"
.LASF245:
	.ascii	"videoLabelBounds\000"
.LASF268:
	.ascii	"g_neoContext\000"
.LASF236:
	.ascii	"pCpuLabel\000"
.LASF44:
	.ascii	"membase\000"
.LASF232:
	.ascii	"pInput\000"
.LASF278:
	.ascii	"GNU C 4.1.1 (devkitARM release 20)\000"
.LASF267:
	.ascii	"g_neo\000"
.LASF98:
	.ascii	"scanline\000"
.LASF184:
	.ascii	"size\000"
.LASF239:
	.ascii	"cpuMediumBounds\000"
.LASF90:
	.ascii	"pPalette\000"
.LASF203:
	.ascii	"szFps\000"
.LASF217:
	.ascii	"TGuiLayoutScreenOff\000"
.LASF246:
	.ascii	"videoFrameBounds\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF248:
	.ascii	"ramBounds\000"
.LASF256:
	.ascii	"cpuMediumHandler\000"
.LASF136:
	.ascii	"debug\000"
.LASF198:
	.ascii	"state\000"
.LASF275:
	.ascii	"__TGuiLayoutMainTypeHeader__\000"
.LASF83:
	.ascii	"pRom1\000"
.LASF166:
	.ascii	"_TGuiEventReturn\000"
.LASF48:
	.ascii	"read32\000"
.LASF214:
	.ascii	"pScaledSize\000"
.LASF177:
	.ascii	"pType\000"
.LASF89:
	.ascii	"pSpriteRam\000"
.LASF56:
	.ascii	"ResetCallback\000"
.LASF133:
	.ascii	"sramProtectLatch\000"
.LASF116:
	.ascii	"fixedBank\000"
.LASF216:
	.ascii	"pMediumClock\000"
.LASF188:
	.ascii	"TGuiLabel\000"
.LASF243:
	.ascii	"scaledSizeBounds\000"
.LASF32:
	.ascii	"nameCount\000"
.LASF17:
	.ascii	"false\000"
.LASF176:
	.ascii	"_TGuiObject\000"
.LASF125:
	.ascii	"ctrl1Reg\000"
.LASF42:
	.ascii	"state_flags\000"
.LASF163:
	.ascii	"GUIEVENT_SELECTED\000"
.LASF190:
	.ascii	"parent\000"
.LASF119:
	.ascii	"sramProtection\000"
.LASF249:
	.ascii	"saveBounds\000"
.LASF171:
	.ascii	"TGUIEVENT_CREATEArg\000"
.LASF263:
	.ascii	"glGlob\000"
.LASF86:
	.ascii	"pSram\000"
.LASF201:
	.ascii	"lastFps\000"
.LASF224:
	.ascii	"pButton\000"
.LASF73:
	.ascii	"freqCounter\000"
.LASF4:
	.ascii	"short int\000"
.LASF138:
	.ascii	"frameCounter\000"
.LASF80:
	.ascii	"adpcmb\000"
.LASF31:
	.ascii	"nextPBlock\000"
.LASF3:
	.ascii	"int16_t\000"
.LASF218:
	.ascii	"_TGuiLayoutScreenOff\000"
.LASF257:
	.ascii	"cpuFastHandler\000"
.LASF18:
	.ascii	"true\000"
.LASF124:
	.ascii	"displayCounterLoad\000"
.LASF113:
	.ascii	"irqPending\000"
.LASF269:
	.ascii	"__TGuiLabelTypeHeader__\000"
.LASF215:
	.ascii	"pFastClock\000"
.LASF159:
	.ascii	"GUIEVENT_TAP\000"
.LASF251:
	.ascii	"screenOffBounds\000"
.LASF222:
	.ascii	"this\000"
.LASF228:
	.ascii	"__TGuiLayoutMainTypeHandler__\000"
.LASF62:
	.ascii	"TRead32Func\000"
.LASF262:
	.ascii	"logoHandler\000"
.LASF209:
	.ascii	"_TGuiRadioButton\000"
.LASF231:
	.ascii	"pScreenOff\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF271:
	.ascii	"__TGuiStatusTypeHeader__\000"
.LASF165:
	.ascii	"_TGuiEventID\000"
.LASF260:
	.ascii	"screenOffHandler\000"
.LASF79:
	.ascii	"adpcm\000"
.LASF15:
	.ascii	"float\000"
.LASF33:
	.ascii	"gl_hidden_globals\000"
.LASF202:
	.ascii	"lastSpriteCount\000"
.LASF261:
	.ascii	"romSelectHandler\000"
.LASF76:
	.ascii	"pVideoWriteTable\000"
.LASF91:
	.ascii	"bankTable\000"
.LASF94:
	.ascii	"smaBankAddr\000"
.LASF178:
	.ascii	"pParent\000"
.LASF141:
	.ascii	"_TNeoContext\000"
.LASF174:
	.ascii	"TGUIEVENT_SELECTEDArg\000"
.LASF205:
	.ascii	"TGuiCheckbox\000"
.LASF273:
	.ascii	"__TGuiLayoutRomSelectTypeHeader__\000"
.LASF41:
	.ascii	"reserved\000"
.LASF132:
	.ascii	"fixedRomLatch\000"
.LASF118:
	.ascii	"sramProtectCount\000"
.LASF70:
	.ascii	"TNeoADPCMStream\000"
.LASF259:
	.ascii	"inputHandler\000"
.LASF34:
	.ascii	"TPoint\000"
.LASF121:
	.ascii	"vramMod\000"
	.ident	"GCC: (GNU) 4.1.1 (devkitARM release 20)"
