	.arch armv5te
	.fpu softvfp
	.eabi_attribute 23, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 18, 4
	.code	16
	.file	"io_efa2.c"
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
	.type	_EFA2_nand_id, %function
_EFA2_nand_id:
.LFB8:
	.file 1 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/io_efa2.c"
	.loc 1 135 0
	push	{r4, r5, r6, r7, lr}
.LCFI0:
.LBB82:
.LBB84:
.LBB85:
.LBB87:
	.loc 1 62 0
	ldr	r2, .L3
	ldr	r6, .L3+4
	.loc 1 64 0
	ldr	r0, .L3+8
	.loc 1 63 0
	mov	r1, #128
	mov	r3, #168
	lsl	r3, r3, #5
	lsl	r1, r1, #20
	.loc 1 65 0
	ldr	r4, .L3+12
.LBE87:
.LBE85:
	.loc 1 89 0
	ldr	r5, .L3+16
.LBE84:
.LBE82:
	.loc 1 135 0
	sub	sp, sp, #12
.LCFI1:
.LBB97:
.LBB95:
.LBB89:
.LBB86:
	.loc 1 62 0
	strh	r2, [r6]
	.loc 1 63 0
	strh	r3, [r1]
	.loc 1 64 0
	strh	r2, [r0]
.LBE86:
.LBE89:
.LBB90:
.LBB91:
	.loc 1 70 0
	ldr	r0, .L3+20
.LBE91:
.LBE90:
.LBB93:
.LBB88:
	.loc 1 65 0
	strh	r3, [r4]
.LBE88:
.LBE93:
.LBE95:
.LBE97:
.LBB98:
.LBB101:
	.loc 1 112 0
	mov	r7, #148
.LBE101:
.LBE98:
.LBB113:
.LBB83:
	.loc 1 89 0
	strh	r3, [r5]
.LBE83:
.LBE113:
.LBB114:
.LBB110:
.LBB106:
.LBB107:
	.loc 1 64 0
	ldr	r4, .L3+8
	.loc 1 65 0
	ldr	r5, .L3+12
.LBE107:
.LBE106:
.LBE110:
.LBE114:
.LBB115:
.LBB96:
.LBB94:
.LBB92:
	.loc 1 70 0
	strh	r3, [r0]
.LBE92:
.LBE94:
.LBE96:
.LBE115:
.LBB116:
.LBB100:
	.loc 1 112 0
	lsl	r7, r7, #20
	mov	r0, #1
.LBB105:
.LBB108:
	.loc 1 62 0
	strh	r2, [r6]
	.loc 1 63 0
	strh	r3, [r1]
	.loc 1 64 0
	strh	r2, [r4]
	.loc 1 65 0
	strh	r3, [r5]
.LBE108:
.LBE105:
.LBE100:
.LBE116:
	.loc 1 142 0
	mov	r4, #112
.LBB117:
.LBB111:
	.loc 1 112 0
	strh	r0, [r7]
.LBE111:
.LBE117:
	.loc 1 142 0
	ldr	r5, .L3+24
.LBB118:
.LBB99:
.LBB102:
.LBB103:
	.loc 1 70 0
	ldr	r0, .L3+20
.LBE103:
.LBE102:
.LBE99:
.LBE118:
	.loc 1 142 0
	neg	r4, r4
.LBB119:
.LBB112:
.LBB109:
.LBB104:
	.loc 1 70 0
	strh	r3, [r0]
.LBE104:
.LBE109:
.LBE112:
.LBE119:
	.loc 1 142 0
	strb	r4, [r5]
	.loc 1 143 0
	ldr	r4, .L3+28
	mov	r0, #0
	strb	r0, [r4]
	.loc 1 144 0
	ldr	r0, .L3+32
	ldrb	r4, [r0]
	.loc 1 146 0
	ldrb	r5, [r0]
	.loc 1 147 0
	lsl	r4, r4, #8
	orr	r4, r4, r5
	mov	ip, r4
.LVL0:
	.loc 1 149 0
	mov	r5, ip
	.loc 1 148 0
	ldrb	r4, [r0]
	.loc 1 149 0
	lsl	r5, r5, #8
	orr	r5, r5, r4
	mov	ip, r5
.LVL1:
	.loc 1 151 0
	mov	r4, ip
	.loc 1 150 0
	ldrb	r5, [r0]
	.loc 1 151 0
	lsl	r0, r4, #8
.LBB120:
.LBB121:
.LBB122:
.LBB123:
	.loc 1 64 0
	ldr	r4, .L3+8
	.loc 1 62 0
	strh	r2, [r6]
	.loc 1 63 0
	strh	r3, [r1]
	.loc 1 64 0
	strh	r2, [r4]
	.loc 1 65 0
	ldr	r4, .L3+12
.LBE123:
.LBE122:
.LBE121:
.LBE120:
.LBB129:
.LBB130:
.LBB131:
.LBB132:
	.loc 1 70 0
	orr	r0, r0, r5
.LBE132:
.LBE131:
.LBE130:
.LBE129:
.LBB140:
.LBB128:
.LBB125:
.LBB124:
	.loc 1 65 0
	strh	r3, [r4]
.LBE124:
.LBE125:
	.loc 1 112 0
	mov	r4, #0
	strh	r4, [r7]
.LBB126:
.LBB127:
	.loc 1 70 0
	ldr	r4, .L3+20
	strh	r3, [r4]
.LBE127:
.LBE126:
.LBE128:
.LBE140:
.LBB141:
.LBB139:
.LBB134:
.LBB135:
	.loc 1 62 0
	strh	r2, [r6]
	.loc 1 63 0
	strh	r3, [r1]
	.loc 1 64 0
	ldr	r1, .L3+8
	.loc 1 65 0
	ldr	r4, .L3+12
	.loc 1 64 0
	strh	r2, [r1]
.LBE135:
.LBE134:
	.loc 1 96 0
	ldr	r1, .L3+16
.LBB137:
.LBB136:
	.loc 1 65 0
	strh	r3, [r4]
.LBE136:
.LBE137:
	.loc 1 96 0
	strh	r2, [r1]
.LBB138:
.LBB133:
	.loc 1 70 0
	ldr	r2, .L3+20
	strh	r3, [r2]
.LBE133:
.LBE138:
.LBE139:
.LBE141:
	.loc 1 156 0
	add	sp, sp, #12
	@ sp needed for prologue
	pop	{r4, r5, r6, r7, pc}
.L4:
	.align	2
.L3:
	.word	-11776
	.word	167641088
	.word	134348800
	.word	134479872
	.word	163840000
	.word	167510016
	.word	167772130
	.word	167772128
	.word	167755776
.LFE8:
	.size	_EFA2_nand_id, .-_EFA2_nand_id
	.align	2
	.global	_EFA2_clearStatus
	.code	16
	.thumb_func
	.type	_EFA2_clearStatus, %function
_EFA2_clearStatus:
.LFB9:
	.loc 1 168 0
	.loc 1 172 0
	mov	r0, #1
	@ sp needed for prologue
	bx	lr
.LFE9:
	.size	_EFA2_clearStatus, .-_EFA2_clearStatus
	.align	2
	.global	_EFA2_isInserted
	.code	16
	.thumb_func
	.type	_EFA2_isInserted, %function
_EFA2_isInserted:
.LFB10:
	.loc 1 180 0
	push	{r4, lr}
.LCFI2:
	.loc 1 182 0
	bl	_EFA2_nand_id
	ldr	r2, .L9
	.loc 1 183 0
	@ sp needed for prologue
	.loc 1 182 0
	add	r3, r0, r2
	neg	r0, r3
	adc	r0, r0, r3
	.loc 1 183 0
	pop	{r4, pc}
.L10:
	.align	2
.L9:
	.word	327572032
.LFE10:
	.size	_EFA2_isInserted, .-_EFA2_isInserted
	.align	2
	.global	_EFA2_readSectors
	.code	16
	.thumb_func
	.type	_EFA2_readSectors, %function
_EFA2_readSectors:
.LFB11:
	.loc 1 195 0
	push	{r4, r5, r6, r7, lr}
.LCFI3:
.LVL2:
.LBB142:
.LBB143:
.LBB148:
.LBB149:
	.loc 1 62 0
	ldr	r4, .L18
	ldr	r3, .L18+4
	.loc 1 64 0
	ldr	r6, .L18+8
	.loc 1 62 0
	strh	r4, [r3]
	mov	ip, r3
	.loc 1 63 0
	mov	r5, #128
	mov	r3, #168
	lsl	r3, r3, #5
	lsl	r5, r5, #20
	strh	r3, [r5]
	.loc 1 65 0
	ldr	r7, .L18+12
	.loc 1 64 0
	strh	r4, [r6]
.LBE149:
.LBE148:
	.loc 1 89 0
	ldr	r6, .L18+16
.LBB147:
.LBB150:
	.loc 1 65 0
	strh	r3, [r7]
.LBE150:
.LBE147:
	.loc 1 89 0
	strh	r3, [r6]
.LBB144:
.LBB145:
	.loc 1 70 0
	ldr	r6, .L18+20
.LBE145:
.LBE144:
.LBE143:
.LBE142:
.LBB153:
.LBB154:
.LBB155:
.LBB157:
	.loc 1 62 0
	mov	r7, ip
.LBE157:
.LBE155:
.LBE154:
.LBE153:
.LBB164:
.LBB152:
.LBB151:
.LBB146:
	.loc 1 70 0
	strh	r3, [r6]
.LBE146:
.LBE151:
.LBE152:
.LBE164:
.LBB165:
.LBB163:
.LBB159:
.LBB156:
	.loc 1 62 0
	strh	r4, [r7]
	.loc 1 63 0
	strh	r3, [r5]
	.loc 1 64 0
	ldr	r5, .L18+8
	.loc 1 65 0
	ldr	r7, .L18+12
	.loc 1 64 0
	strh	r4, [r5]
.LBE156:
.LBE159:
	.loc 1 112 0
	mov	r4, #148
	lsl	r4, r4, #20
	mov	r5, #1
.LBB160:
.LBB158:
	.loc 1 65 0
	strh	r3, [r7]
.LBE158:
.LBE160:
	.loc 1 112 0
	strh	r5, [r4]
.LBB161:
.LBB162:
	.loc 1 70 0
	strh	r3, [r6]
.LBE162:
.LBE161:
.LBE163:
.LBE165:
.LBB166:
.LBB167:
	.loc 1 121 0
	ldr	r4, .L18+24
	mov	r3, #1
.LBE167:
.LBE166:
	.loc 1 211 0
	add	r0, r0, #64
.LVL3:
.LBB169:
.LBB168:
	.loc 1 121 0
	neg	r3, r3
	strb	r3, [r4]
.LBE168:
.LBE169:
	.loc 1 224 0
	lsl	r5, r0, #24
	.loc 1 222 0
	mov	r3, #0
	strb	r3, [r4]
	.loc 1 224 0
	lsr	r5, r5, #24
	.loc 1 223 0
	sub	r4, r4, #2
	strb	r3, [r4]
	.loc 1 224 0
	strb	r5, [r4]
	.loc 1 225 0
	lsl	r5, r0, #16
	.loc 1 226 0
	lsl	r0, r0, #8
.LVL4:
	lsr	r0, r0, #24
	.loc 1 225 0
	lsr	r5, r5, #24
	strb	r5, [r4]
	.loc 1 226 0
	strb	r0, [r4]
.LBB170:
.LBB171:
	.loc 1 57 0
	ldr	r0, .L18+28
	strh	r3, [r0]
	strh	r3, [r0]
	strh	r3, [r0]
.LBE171:
.LBE170:
	.loc 1 194 0
	mov	r3, #128
	lsl	r3, r3, #2
	add	r4, r2, r3
	.loc 1 240 0
	ldr	r0, .L18+32
	b	.L12
.L13:
	ldrb	r5, [r0]
	strb	r5, [r3]
	add	r3, r3, #1
	.loc 1 239 0
	cmp	r3, r4
	bne	.L13
	sub	r1, r1, #1
.LVL5:
.L12:
	.loc 1 234 0
	cmp	r1, #0
	beq	.L14
	mov	r3, r2
	b	.L13
.L14:
.LBB172:
.LBB173:
.LBB179:
.LBB181:
	.loc 1 62 0
	ldr	r2, .L18
.LVL6:
	ldr	r7, .L18+4
	.loc 1 64 0
	ldr	r6, .L18+8
	.loc 1 65 0
	ldr	r5, .L18+12
	.loc 1 63 0
	mov	r0, #128
	mov	r3, #168
.LBE181:
.LBE179:
	.loc 1 112 0
	mov	r4, #148
.LBB178:
.LBB180:
	.loc 1 63 0
	lsl	r3, r3, #5
	lsl	r0, r0, #20
.LBE180:
.LBE178:
	.loc 1 112 0
	lsl	r4, r4, #20
.LBB177:
.LBB182:
	.loc 1 62 0
	strh	r2, [r7]
	.loc 1 63 0
	strh	r3, [r0]
	.loc 1 64 0
	strh	r2, [r6]
	.loc 1 65 0
	strh	r3, [r5]
.LBE182:
.LBE177:
	.loc 1 112 0
	strh	r1, [r4]
.LBB174:
.LBB175:
	.loc 1 70 0
	ldr	r1, .L18+20
.LVL7:
.LBE175:
.LBE174:
.LBE173:
.LBE172:
	.loc 1 256 0
	@ sp needed for prologue
.LBB185:
.LBB184:
.LBB183:
.LBB176:
	.loc 1 70 0
	strh	r3, [r1]
.LBE176:
.LBE183:
.LBE184:
.LBE185:
.LBB186:
.LBB187:
.LBB189:
.LBB190:
	.loc 1 62 0
	strh	r2, [r7]
	.loc 1 63 0
	strh	r3, [r0]
.LBE190:
.LBE189:
	.loc 1 96 0
	ldr	r0, .L18+16
.LBB188:
.LBB191:
	.loc 1 64 0
	strh	r2, [r6]
	.loc 1 65 0
	strh	r3, [r5]
.LBE191:
.LBE188:
	.loc 1 96 0
	strh	r2, [r0]
.LBE187:
.LBE186:
	.loc 1 256 0
	mov	r0, #1
.LBB195:
.LBB194:
.LBB192:
.LBB193:
	.loc 1 70 0
	strh	r3, [r1]
.LBE193:
.LBE192:
.LBE194:
.LBE195:
	.loc 1 256 0
	pop	{r4, r5, r6, r7, pc}
.L19:
	.align	2
.L18:
	.word	-11776
	.word	167641088
	.word	134348800
	.word	134479872
	.word	163840000
	.word	167510016
	.word	167772130
	.word	134217928
	.word	167755776
.LFE11:
	.size	_EFA2_readSectors, .-_EFA2_readSectors
	.align	2
	.global	_EFA2_writeSectors
	.code	16
	.thumb_func
	.type	_EFA2_writeSectors, %function
_EFA2_writeSectors:
.LFB12:
	.loc 1 269 0
.LVL8:
	.loc 1 273 0
	mov	r0, #0
.LVL9:
	@ sp needed for prologue
	bx	lr
.LFE12:
	.size	_EFA2_writeSectors, .-_EFA2_writeSectors
	.align	2
	.global	_EFA2_shutdown
	.code	16
	.thumb_func
	.type	_EFA2_shutdown, %function
_EFA2_shutdown:
.LFB13:
	.loc 1 280 0
	.loc 1 282 0
	mov	r0, #1
	@ sp needed for prologue
	bx	lr
.LFE13:
	.size	_EFA2_shutdown, .-_EFA2_shutdown
	.align	2
	.global	_EFA2_startUp
	.code	16
	.thumb_func
	.type	_EFA2_startUp, %function
_EFA2_startUp:
.LFB14:
	.loc 1 290 0
	push	{r4, lr}
.LCFI4:
.LBB196:
.LBB197:
.LBB198:
.LBB200:
	.loc 1 62 0
	ldr	r1, .L26
	ldr	r3, .L26+4
	.loc 1 63 0
	mov	r2, #128
	.loc 1 62 0
	strh	r1, [r3]
	.loc 1 63 0
	mov	r3, #168
	lsl	r3, r3, #5
	lsl	r2, r2, #20
	strh	r3, [r2]
	.loc 1 64 0
	ldr	r2, .L26+8
.LBE200:
.LBE198:
.LBE197:
.LBE196:
	.loc 1 293 0
	@ sp needed for prologue
.LBB207:
.LBB206:
.LBB202:
.LBB199:
	.loc 1 64 0
	strh	r1, [r2]
	.loc 1 65 0
	ldr	r2, .L26+12
.LBE199:
.LBE202:
	.loc 1 76 0
	ldr	r1, .L26+16
.LBB203:
.LBB201:
	.loc 1 65 0
	strh	r3, [r2]
.LBE201:
.LBE203:
	.loc 1 76 0
	ldr	r2, .L26+20
	strh	r1, [r2]
.LBB204:
.LBB205:
	.loc 1 70 0
	ldr	r2, .L26+24
	strh	r3, [r2]
.LBE205:
.LBE204:
.LBE206:
.LBE207:
	.loc 1 292 0
	bl	_EFA2_nand_id
	ldr	r2, .L26+28
	add	r3, r0, r2
	neg	r0, r3
	adc	r0, r0, r3
	.loc 1 293 0
	pop	{r4, pc}
.L27:
	.align	2
.L26:
	.word	-11776
	.word	167641088
	.word	134348800
	.word	134479872
	.word	-32768
	.word	159907840
	.word	167510016
	.word	327572032
.LFE14:
	.size	_EFA2_startUp, .-_EFA2_startUp
	.global	_io_efa2
	.section	.rodata
	.align	2
	.type	_io_efa2, %object
	.size	_io_efa2, 32
_io_efa2:
	.word	843138629
	.word	17
	.word	_EFA2_startUp
	.word	_EFA2_isInserted
	.word	_EFA2_readSectors
	.word	_EFA2_writeSectors
	.word	_EFA2_clearStatus
	.word	_EFA2_shutdown
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI0-.LFB8
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI2-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x4
	.sleb128 2
	.byte	0x11
	.uleb128 0xe
	.sleb128 1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI3-.LFB11
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
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI4-.LFB14
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
	.text
.Letext0:
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x1
	.byte	0x5d
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\devkitpro\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.4.3/../../../../arm-eabi/include/stdint.h"
	.file 3 "C:/devkitPro/libnds/include/nds/ndstypes.h"
	.file 4 "C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/disc_io/disc_io.h"
	.section	.debug_info
	.4byte	0x591
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x1
	.4byte	.LASF49
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x36
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x3
	.byte	0x62
	.4byte	0x28
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x3
	.byte	0x63
	.4byte	0x41
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x3
	.byte	0x64
	.4byte	0x5a
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0x7d
	.4byte	0xbd
	.uleb128 0x7
	.4byte	.LASF12
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF13
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x7d
	.4byte	0xa8
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3d
	.4byte	0xd3
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x9
	.byte	0x1
	.4byte	0xbd
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3e
	.4byte	0xd3
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3f
	.4byte	0xf5
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfb
	.uleb128 0xa
	.byte	0x1
	.4byte	0xbd
	.4byte	0x115
	.uleb128 0xb
	.4byte	0x9d
	.uleb128 0xb
	.4byte	0x9d
	.uleb128 0xb
	.4byte	0x115
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x40
	.4byte	0x122
	.uleb128 0x8
	.byte	0x4
	.4byte	0x128
	.uleb128 0xa
	.byte	0x1
	.4byte	0xbd
	.4byte	0x142
	.uleb128 0xb
	.4byte	0x9d
	.uleb128 0xb
	.4byte	0x9d
	.uleb128 0xb
	.4byte	0x142
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x148
	.uleb128 0xd
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x41
	.4byte	0xd3
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x42
	.4byte	0xd3
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x20
	.byte	0x4
	.byte	0x44
	.4byte	0x1dc
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x4
	.byte	0x45
	.4byte	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x4
	.byte	0x46
	.4byte	0x1dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x4
	.byte	0x47
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x4
	.byte	0x48
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x4
	.byte	0x49
	.4byte	0xea
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x4
	.byte	0x4a
	.4byte	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x4
	.byte	0x4b
	.4byte	0x149
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x4
	.byte	0x4c
	.4byte	0x154
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF29
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x4
	.byte	0x4f
	.4byte	0x15f
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.byte	0x1
	.4byte	0x222
	.uleb128 0x12
	.ascii	"val\000"
	.byte	0x1
	.byte	0x6e
	.4byte	0x92
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF52
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.4byte	0xbd
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.4byte	0x9d
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST0
	.4byte	0x356
	.uleb128 0x15
	.4byte	.LASF41
	.byte	0x1
	.byte	0x88
	.4byte	0x88
	.uleb128 0x16
	.ascii	"id\000"
	.byte	0x1
	.byte	0x89
	.4byte	0x9d
	.byte	0x1
	.byte	0x5c
	.uleb128 0x17
	.4byte	0x200
	.4byte	.LBB82
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x8b
	.4byte	0x2b9
	.uleb128 0x18
	.4byte	0x1ee
	.4byte	.LBB85
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0x58
	.uleb128 0x18
	.4byte	0x1f7
	.4byte	.LBB90
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x5a
	.byte	0x0
	.uleb128 0x17
	.4byte	0x209
	.4byte	.LBB98
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x8c
	.4byte	0x2f0
	.uleb128 0x19
	.4byte	0x216
	.uleb128 0x18
	.4byte	0x1f7
	.4byte	.LBB102
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0x71
	.uleb128 0x18
	.4byte	0x1ee
	.4byte	.LBB106
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0x6f
	.byte	0x0
	.uleb128 0x17
	.4byte	0x209
	.4byte	.LBB120
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.byte	0x99
	.4byte	0x327
	.uleb128 0x19
	.4byte	0x216
	.uleb128 0x18
	.4byte	0x1ee
	.4byte	.LBB122
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1a
	.4byte	0x1f7
	.4byte	.LBB126
	.4byte	.LBE126
	.byte	0x1
	.byte	0x71
	.byte	0x0
	.uleb128 0x1b
	.4byte	0x222
	.4byte	.LBB129
	.4byte	.Ldebug_ranges0+0xf8
	.byte	0x1
	.byte	0x9a
	.uleb128 0x18
	.4byte	0x1f7
	.4byte	.LBB131
	.4byte	.Ldebug_ranges0+0x110
	.byte	0x1
	.byte	0x61
	.uleb128 0x18
	.4byte	0x1ee
	.4byte	.LBB134
	.4byte	.Ldebug_ranges0+0x128
	.byte	0x1
	.byte	0x5f
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x22b
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x5d
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF45
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST2
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF43
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST3
	.4byte	0x4cd
	.uleb128 0x1f
	.4byte	.LASF38
	.byte	0x1
	.byte	0xc2
	.4byte	0x9d
	.4byte	.LLST4
	.uleb128 0x1f
	.4byte	.LASF39
	.byte	0x1
	.byte	0xc2
	.4byte	0x9d
	.4byte	.LLST5
	.uleb128 0x1f
	.4byte	.LASF40
	.byte	0x1
	.byte	0xc2
	.4byte	0x115
	.4byte	.LLST6
	.uleb128 0x20
	.ascii	"i\000"
	.byte	0x1
	.byte	0xc4
	.4byte	0x53
	.uleb128 0x21
	.4byte	.LASF42
	.byte	0x1
	.byte	0xd3
	.4byte	0x9d
	.4byte	.LLST7
	.uleb128 0x17
	.4byte	0x200
	.4byte	.LBB142
	.4byte	.Ldebug_ranges0+0x140
	.byte	0x1
	.byte	0xd9
	.4byte	0x412
	.uleb128 0x18
	.4byte	0x1f7
	.4byte	.LBB144
	.4byte	.Ldebug_ranges0+0x158
	.byte	0x1
	.byte	0x5a
	.uleb128 0x18
	.4byte	0x1ee
	.4byte	.LBB148
	.4byte	.Ldebug_ranges0+0x170
	.byte	0x1
	.byte	0x58
	.byte	0x0
	.uleb128 0x17
	.4byte	0x209
	.4byte	.LBB153
	.4byte	.Ldebug_ranges0+0x188
	.byte	0x1
	.byte	0xda
	.4byte	0x449
	.uleb128 0x19
	.4byte	0x216
	.uleb128 0x18
	.4byte	0x1ee
	.4byte	.LBB155
	.4byte	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1a
	.4byte	0x1f7
	.4byte	.LBB161
	.4byte	.LBE161
	.byte	0x1
	.byte	0x71
	.byte	0x0
	.uleb128 0x18
	.4byte	0x239
	.4byte	.LBB166
	.4byte	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.byte	0xdb
	.uleb128 0x1a
	.4byte	0x242
	.4byte	.LBB170
	.4byte	.LBE170
	.byte	0x1
	.byte	0xe8
	.uleb128 0x17
	.4byte	0x209
	.4byte	.LBB172
	.4byte	.Ldebug_ranges0+0x1d8
	.byte	0x1
	.byte	0xfd
	.4byte	0x49e
	.uleb128 0x19
	.4byte	0x216
	.uleb128 0x18
	.4byte	0x1f7
	.4byte	.LBB174
	.4byte	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.byte	0x71
	.uleb128 0x18
	.4byte	0x1ee
	.4byte	.LBB179
	.4byte	.Ldebug_ranges0+0x208
	.byte	0x1
	.byte	0x6f
	.byte	0x0
	.uleb128 0x1b
	.4byte	0x222
	.4byte	.LBB186
	.4byte	.Ldebug_ranges0+0x228
	.byte	0x1
	.byte	0xfe
	.uleb128 0x18
	.4byte	0x1ee
	.4byte	.LBB189
	.4byte	.Ldebug_ranges0+0x240
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1a
	.4byte	0x1f7
	.4byte	.LBB192
	.4byte	.LBE192
	.byte	0x1
	.byte	0x61
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x10c
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x5d
	.4byte	0x516
	.uleb128 0x23
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x10c
	.4byte	0x9d
	.4byte	.LLST9
	.uleb128 0x24
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x10c
	.4byte	0x88
	.byte	0x1
	.byte	0x51
	.uleb128 0x24
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x10c
	.4byte	0x115
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x117
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x1
	.byte	0x5d
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x121
	.byte	0x1
	.4byte	0xbd
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST11
	.4byte	0x57c
	.uleb128 0x27
	.4byte	0x24b
	.4byte	.LBB196
	.4byte	.Ldebug_ranges0+0x258
	.byte	0x1
	.2byte	0x123
	.uleb128 0x18
	.4byte	0x1ee
	.4byte	.LBB198
	.4byte	.Ldebug_ranges0+0x270
	.byte	0x1
	.byte	0x4b
	.uleb128 0x1a
	.4byte	0x1f7
	.4byte	.LBB204
	.4byte	.LBE204
	.byte	0x1
	.byte	0x4d
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x12a
	.4byte	0x58f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_io_efa2
	.uleb128 0x29
	.4byte	0x1e3
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
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
	.uleb128 0x1d
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
	.uleb128 0x1f
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0xa
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
	.uleb128 0x27
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x98
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x595
	.4byte	0x356
	.ascii	"_EFA2_clearStatus\000"
	.4byte	0x365
	.ascii	"_EFA2_isInserted\000"
	.4byte	0x37e
	.ascii	"_EFA2_readSectors\000"
	.4byte	0x4cd
	.ascii	"_EFA2_writeSectors\000"
	.4byte	0x516
	.ascii	"_EFA2_shutdown\000"
	.4byte	0x52e
	.ascii	"_EFA2_startUp\000"
	.4byte	0x57c
	.ascii	"_io_efa2\000"
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
	.4byte	.LBB82-.Ltext0
	.4byte	.LBE82-.Ltext0
	.4byte	.LBB115-.Ltext0
	.4byte	.LBE115-.Ltext0
	.4byte	.LBB113-.Ltext0
	.4byte	.LBE113-.Ltext0
	.4byte	.LBB97-.Ltext0
	.4byte	.LBE97-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB85-.Ltext0
	.4byte	.LBE85-.Ltext0
	.4byte	.LBB93-.Ltext0
	.4byte	.LBE93-.Ltext0
	.4byte	.LBB89-.Ltext0
	.4byte	.LBE89-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB90-.Ltext0
	.4byte	.LBE90-.Ltext0
	.4byte	.LBB94-.Ltext0
	.4byte	.LBE94-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB98-.Ltext0
	.4byte	.LBE98-.Ltext0
	.4byte	.LBB119-.Ltext0
	.4byte	.LBE119-.Ltext0
	.4byte	.LBB118-.Ltext0
	.4byte	.LBE118-.Ltext0
	.4byte	.LBB117-.Ltext0
	.4byte	.LBE117-.Ltext0
	.4byte	.LBB116-.Ltext0
	.4byte	.LBE116-.Ltext0
	.4byte	.LBB114-.Ltext0
	.4byte	.LBE114-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB102-.Ltext0
	.4byte	.LBE102-.Ltext0
	.4byte	.LBB109-.Ltext0
	.4byte	.LBE109-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB106-.Ltext0
	.4byte	.LBE106-.Ltext0
	.4byte	.LBB105-.Ltext0
	.4byte	.LBE105-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB120-.Ltext0
	.4byte	.LBE120-.Ltext0
	.4byte	.LBB140-.Ltext0
	.4byte	.LBE140-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB122-.Ltext0
	.4byte	.LBE122-.Ltext0
	.4byte	.LBB125-.Ltext0
	.4byte	.LBE125-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB129-.Ltext0
	.4byte	.LBE129-.Ltext0
	.4byte	.LBB141-.Ltext0
	.4byte	.LBE141-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB131-.Ltext0
	.4byte	.LBE131-.Ltext0
	.4byte	.LBB138-.Ltext0
	.4byte	.LBE138-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB134-.Ltext0
	.4byte	.LBE134-.Ltext0
	.4byte	.LBB137-.Ltext0
	.4byte	.LBE137-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB142-.Ltext0
	.4byte	.LBE142-.Ltext0
	.4byte	.LBB164-.Ltext0
	.4byte	.LBE164-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB144-.Ltext0
	.4byte	.LBE144-.Ltext0
	.4byte	.LBB151-.Ltext0
	.4byte	.LBE151-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB148-.Ltext0
	.4byte	.LBE148-.Ltext0
	.4byte	.LBB147-.Ltext0
	.4byte	.LBE147-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB153-.Ltext0
	.4byte	.LBE153-.Ltext0
	.4byte	.LBB165-.Ltext0
	.4byte	.LBE165-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB155-.Ltext0
	.4byte	.LBE155-.Ltext0
	.4byte	.LBB160-.Ltext0
	.4byte	.LBE160-.Ltext0
	.4byte	.LBB159-.Ltext0
	.4byte	.LBE159-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB166-.Ltext0
	.4byte	.LBE166-.Ltext0
	.4byte	.LBB169-.Ltext0
	.4byte	.LBE169-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB172-.Ltext0
	.4byte	.LBE172-.Ltext0
	.4byte	.LBB185-.Ltext0
	.4byte	.LBE185-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB174-.Ltext0
	.4byte	.LBE174-.Ltext0
	.4byte	.LBB183-.Ltext0
	.4byte	.LBE183-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB179-.Ltext0
	.4byte	.LBE179-.Ltext0
	.4byte	.LBB177-.Ltext0
	.4byte	.LBE177-.Ltext0
	.4byte	.LBB178-.Ltext0
	.4byte	.LBE178-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB186-.Ltext0
	.4byte	.LBE186-.Ltext0
	.4byte	.LBB195-.Ltext0
	.4byte	.LBE195-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB189-.Ltext0
	.4byte	.LBE189-.Ltext0
	.4byte	.LBB188-.Ltext0
	.4byte	.LBE188-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB196-.Ltext0
	.4byte	.LBE196-.Ltext0
	.4byte	.LBB207-.Ltext0
	.4byte	.LBE207-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB198-.Ltext0
	.4byte	.LBE198-.Ltext0
	.4byte	.LBB203-.Ltext0
	.4byte	.LBE203-.Ltext0
	.4byte	.LBB202-.Ltext0
	.4byte	.LBE202-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",%progbits,1
.LASF36:
	.ascii	"_EFA2_rtc_deactivate\000"
.LASF19:
	.ascii	"FN_MEDIUM_CLEARSTATUS\000"
.LASF17:
	.ascii	"FN_MEDIUM_READSECTORS\000"
.LASF51:
	.ascii	"_EFA2_nand_enable\000"
.LASF43:
	.ascii	"_EFA2_readSectors\000"
.LASF2:
	.ascii	"short int\000"
.LASF49:
	.ascii	"C:/Users/GRX/NeoDS-master-old/arm9/source/libfat/di"
	.ascii	"sc_io/io_efa2.c\000"
.LASF24:
	.ascii	"fn_isInserted\000"
.LASF45:
	.ascii	"_EFA2_isInserted\000"
.LASF20:
	.ascii	"FN_MEDIUM_SHUTDOWN\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF38:
	.ascii	"sector\000"
.LASF44:
	.ascii	"_EFA2_writeSectors\000"
.LASF14:
	.ascii	"bool\000"
.LASF34:
	.ascii	"_EFA2_nand_lock\000"
.LASF15:
	.ascii	"FN_MEDIUM_STARTUP\000"
.LASF35:
	.ascii	"_EFA2_nand_reset\000"
.LASF10:
	.ascii	"float\000"
.LASF8:
	.ascii	"long long int\000"
.LASF42:
	.ascii	"page\000"
.LASF30:
	.ascii	"IO_INTERFACE\000"
.LASF32:
	.ascii	"_EFA2_reg_lock\000"
.LASF25:
	.ascii	"fn_readSectors\000"
.LASF46:
	.ascii	"_EFA2_shutdown\000"
.LASF41:
	.ascii	"byte\000"
.LASF21:
	.ascii	"ioType\000"
.LASF39:
	.ascii	"numSecs\000"
.LASF27:
	.ascii	"fn_clearStatus\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF0:
	.ascii	"signed char\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF7:
	.ascii	"unsigned int\000"
.LASF12:
	.ascii	"false\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF50:
	.ascii	"IO_INTERFACE_STRUCT\000"
.LASF31:
	.ascii	"_EFA2_reg_unlock\000"
.LASF22:
	.ascii	"features\000"
.LASF53:
	.ascii	"_EFA2_nand_id\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF18:
	.ascii	"FN_MEDIUM_WRITESECTORS\000"
.LASF52:
	.ascii	"_EFA2_clearStatus\000"
.LASF13:
	.ascii	"true\000"
.LASF23:
	.ascii	"fn_startup\000"
.LASF40:
	.ascii	"buffer\000"
.LASF29:
	.ascii	"long unsigned int\000"
.LASF11:
	.ascii	"double\000"
.LASF47:
	.ascii	"_EFA2_startUp\000"
.LASF54:
	.ascii	"_io_efa2\000"
.LASF26:
	.ascii	"fn_writeSectors\000"
.LASF16:
	.ascii	"FN_MEDIUM_ISINSERTED\000"
.LASF48:
	.ascii	"GNU C 4.4.3\000"
.LASF37:
	.ascii	"_EFA2_global_unlock\000"
.LASF33:
	.ascii	"_EFA2_nand_unlock\000"
.LASF28:
	.ascii	"fn_shutdown\000"
	.ident	"GCC: (devkitARM release 30) 4.4.3"
