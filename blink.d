
blink.axf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <__isr_vector>:
   0:	10002000 	.word	0x10002000
   4:	000007b5 	.word	0x000007b5
   8:	000007f5 	.word	0x000007f5
   c:	000007f5 	.word	0x000007f5
  10:	000007f5 	.word	0x000007f5
  14:	000007f5 	.word	0x000007f5
  18:	000007f5 	.word	0x000007f5
	...
  2c:	000007f5 	.word	0x000007f5
  30:	000007f5 	.word	0x000007f5
  34:	00000000 	.word	0x00000000
  38:	000007f5 	.word	0x000007f5
  3c:	000007f5 	.word	0x000007f5
  40:	000007f5 	.word	0x000007f5

00000044 <SystemInit>:
  44:	b480      	push	{r7}
  46:	af00      	add	r7, sp, #0
  48:	bf00      	nop
  4a:	46bd      	mov	sp, r7
  4c:	bc80      	pop	{r7}
  4e:	4770      	bx	lr

00000050 <main>:
  50:	b580      	push	{r7, lr}
  52:	af00      	add	r7, sp, #0
  54:	4b12      	ldr	r3, [pc, #72]	; (a0 <main+0x50>)
  56:	681b      	ldr	r3, [r3, #0]
  58:	b2db      	uxtb	r3, r3
  5a:	2101      	movs	r1, #1
  5c:	4618      	mov	r0, r3
  5e:	f000 f8a5 	bl	1ac <pinMode>
  62:	4b0f      	ldr	r3, [pc, #60]	; (a0 <main+0x50>)
  64:	681b      	ldr	r3, [r3, #0]
  66:	b2db      	uxtb	r3, r3
  68:	2101      	movs	r1, #1
  6a:	4618      	mov	r0, r3
  6c:	f000 f81a 	bl	a4 <digitalWrite>
  70:	4b0b      	ldr	r3, [pc, #44]	; (a0 <main+0x50>)
  72:	681b      	ldr	r3, [r3, #0]
  74:	b2db      	uxtb	r3, r3
  76:	2101      	movs	r1, #1
  78:	4618      	mov	r0, r3
  7a:	f000 f813 	bl	a4 <digitalWrite>
  7e:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
  82:	f000 fb11 	bl	6a8 <delay>
  86:	4b06      	ldr	r3, [pc, #24]	; (a0 <main+0x50>)
  88:	681b      	ldr	r3, [r3, #0]
  8a:	b2db      	uxtb	r3, r3
  8c:	2100      	movs	r1, #0
  8e:	4618      	mov	r0, r3
  90:	f000 f808 	bl	a4 <digitalWrite>
  94:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
  98:	f000 fb06 	bl	6a8 <delay>
  9c:	e7e8      	b.n	70 <main+0x20>
  9e:	bf00      	nop
  a0:	10000000 	.word	0x10000000

000000a4 <digitalWrite>:
  a4:	b480      	push	{r7}
  a6:	b087      	sub	sp, #28
  a8:	af00      	add	r7, sp, #0
  aa:	4603      	mov	r3, r0
  ac:	460a      	mov	r2, r1
  ae:	71fb      	strb	r3, [r7, #7]
  b0:	4613      	mov	r3, r2
  b2:	71bb      	strb	r3, [r7, #6]
  b4:	79fb      	ldrb	r3, [r7, #7]
  b6:	2b36      	cmp	r3, #54	; 0x36
  b8:	d82d      	bhi.n	116 <digitalWrite+0x72>
  ba:	79fb      	ldrb	r3, [r7, #7]
  bc:	011b      	lsls	r3, r3, #4
  be:	4a18      	ldr	r2, [pc, #96]	; (120 <digitalWrite+0x7c>)
  c0:	4413      	add	r3, r2
  c2:	617b      	str	r3, [r7, #20]
  c4:	697b      	ldr	r3, [r7, #20]
  c6:	681b      	ldr	r3, [r3, #0]
  c8:	3304      	adds	r3, #4
  ca:	681b      	ldr	r3, [r3, #0]
  cc:	613b      	str	r3, [r7, #16]
  ce:	697b      	ldr	r3, [r7, #20]
  d0:	68db      	ldr	r3, [r3, #12]
  d2:	60fb      	str	r3, [r7, #12]
  d4:	693a      	ldr	r2, [r7, #16]
  d6:	68fb      	ldr	r3, [r7, #12]
  d8:	4013      	ands	r3, r2
  da:	2b00      	cmp	r3, #0
  dc:	d00e      	beq.n	fc <digitalWrite+0x58>
  de:	79bb      	ldrb	r3, [r7, #6]
  e0:	2b00      	cmp	r3, #0
  e2:	d005      	beq.n	f0 <digitalWrite+0x4c>
  e4:	697b      	ldr	r3, [r7, #20]
  e6:	681b      	ldr	r3, [r3, #0]
  e8:	3384      	adds	r3, #132	; 0x84
  ea:	68fa      	ldr	r2, [r7, #12]
  ec:	601a      	str	r2, [r3, #0]
  ee:	e013      	b.n	118 <digitalWrite+0x74>
  f0:	697b      	ldr	r3, [r7, #20]
  f2:	681b      	ldr	r3, [r3, #0]
  f4:	3388      	adds	r3, #136	; 0x88
  f6:	68fa      	ldr	r2, [r7, #12]
  f8:	601a      	str	r2, [r3, #0]
  fa:	e00d      	b.n	118 <digitalWrite+0x74>
  fc:	79bb      	ldrb	r3, [r7, #6]
  fe:	2b00      	cmp	r3, #0
 100:	d004      	beq.n	10c <digitalWrite+0x68>
 102:	697b      	ldr	r3, [r7, #20]
 104:	689b      	ldr	r3, [r3, #8]
 106:	4a07      	ldr	r2, [pc, #28]	; (124 <digitalWrite+0x80>)
 108:	601a      	str	r2, [r3, #0]
 10a:	e005      	b.n	118 <digitalWrite+0x74>
 10c:	697b      	ldr	r3, [r7, #20]
 10e:	689b      	ldr	r3, [r3, #8]
 110:	4a05      	ldr	r2, [pc, #20]	; (128 <digitalWrite+0x84>)
 112:	601a      	str	r2, [r3, #0]
 114:	e000      	b.n	118 <digitalWrite+0x74>
 116:	bf00      	nop
 118:	371c      	adds	r7, #28
 11a:	46bd      	mov	sp, r7
 11c:	bc80      	pop	{r7}
 11e:	4770      	bx	lr
 120:	000007f8 	.word	0x000007f8
 124:	0001f038 	.word	0x0001f038
 128:	00013038 	.word	0x00013038

0000012c <digitalToggle>:
 12c:	b480      	push	{r7}
 12e:	b085      	sub	sp, #20
 130:	af00      	add	r7, sp, #0
 132:	4603      	mov	r3, r0
 134:	71fb      	strb	r3, [r7, #7]
 136:	79fb      	ldrb	r3, [r7, #7]
 138:	2b36      	cmp	r3, #54	; 0x36
 13a:	d80d      	bhi.n	158 <digitalToggle+0x2c>
 13c:	79fb      	ldrb	r3, [r7, #7]
 13e:	011b      	lsls	r3, r3, #4
 140:	4a08      	ldr	r2, [pc, #32]	; (164 <digitalToggle+0x38>)
 142:	4413      	add	r3, r2
 144:	60fb      	str	r3, [r7, #12]
 146:	68fb      	ldr	r3, [r7, #12]
 148:	68db      	ldr	r3, [r3, #12]
 14a:	60bb      	str	r3, [r7, #8]
 14c:	68fb      	ldr	r3, [r7, #12]
 14e:	681b      	ldr	r3, [r3, #0]
 150:	338c      	adds	r3, #140	; 0x8c
 152:	68ba      	ldr	r2, [r7, #8]
 154:	601a      	str	r2, [r3, #0]
 156:	e000      	b.n	15a <digitalToggle+0x2e>
 158:	bf00      	nop
 15a:	3714      	adds	r7, #20
 15c:	46bd      	mov	sp, r7
 15e:	bc80      	pop	{r7}
 160:	4770      	bx	lr
 162:	bf00      	nop
 164:	000007f8 	.word	0x000007f8

00000168 <digitalRead>:
 168:	b480      	push	{r7}
 16a:	b085      	sub	sp, #20
 16c:	af00      	add	r7, sp, #0
 16e:	4603      	mov	r3, r0
 170:	71fb      	strb	r3, [r7, #7]
 172:	79fb      	ldrb	r3, [r7, #7]
 174:	2b36      	cmp	r3, #54	; 0x36
 176:	d901      	bls.n	17c <digitalRead+0x14>
 178:	2300      	movs	r3, #0
 17a:	e010      	b.n	19e <digitalRead+0x36>
 17c:	79fb      	ldrb	r3, [r7, #7]
 17e:	011b      	lsls	r3, r3, #4
 180:	4a09      	ldr	r2, [pc, #36]	; (1a8 <digitalRead+0x40>)
 182:	4413      	add	r3, r2
 184:	60fb      	str	r3, [r7, #12]
 186:	68fb      	ldr	r3, [r7, #12]
 188:	681b      	ldr	r3, [r3, #0]
 18a:	3308      	adds	r3, #8
 18c:	681a      	ldr	r2, [r3, #0]
 18e:	68fb      	ldr	r3, [r7, #12]
 190:	68db      	ldr	r3, [r3, #12]
 192:	4013      	ands	r3, r2
 194:	2b00      	cmp	r3, #0
 196:	bf14      	ite	ne
 198:	2301      	movne	r3, #1
 19a:	2300      	moveq	r3, #0
 19c:	b2db      	uxtb	r3, r3
 19e:	4618      	mov	r0, r3
 1a0:	3714      	adds	r7, #20
 1a2:	46bd      	mov	sp, r7
 1a4:	bc80      	pop	{r7}
 1a6:	4770      	bx	lr
 1a8:	000007f8 	.word	0x000007f8

000001ac <pinMode>:
 1ac:	b480      	push	{r7}
 1ae:	b085      	sub	sp, #20
 1b0:	af00      	add	r7, sp, #0
 1b2:	4603      	mov	r3, r0
 1b4:	460a      	mov	r2, r1
 1b6:	71fb      	strb	r3, [r7, #7]
 1b8:	4613      	mov	r3, r2
 1ba:	71bb      	strb	r3, [r7, #6]
 1bc:	79fb      	ldrb	r3, [r7, #7]
 1be:	2b36      	cmp	r3, #54	; 0x36
 1c0:	d850      	bhi.n	264 <pinMode+0xb8>
 1c2:	79fb      	ldrb	r3, [r7, #7]
 1c4:	011b      	lsls	r3, r3, #4
 1c6:	4a2a      	ldr	r2, [pc, #168]	; (270 <pinMode+0xc4>)
 1c8:	4413      	add	r3, r2
 1ca:	60fb      	str	r3, [r7, #12]
 1cc:	79bb      	ldrb	r3, [r7, #6]
 1ce:	2b01      	cmp	r3, #1
 1d0:	d002      	beq.n	1d8 <pinMode+0x2c>
 1d2:	79bb      	ldrb	r3, [r7, #6]
 1d4:	2b04      	cmp	r3, #4
 1d6:	d118      	bne.n	20a <pinMode+0x5e>
 1d8:	68fb      	ldr	r3, [r7, #12]
 1da:	681b      	ldr	r3, [r3, #0]
 1dc:	3304      	adds	r3, #4
 1de:	6819      	ldr	r1, [r3, #0]
 1e0:	68fb      	ldr	r3, [r7, #12]
 1e2:	68da      	ldr	r2, [r3, #12]
 1e4:	68fb      	ldr	r3, [r7, #12]
 1e6:	681b      	ldr	r3, [r3, #0]
 1e8:	3304      	adds	r3, #4
 1ea:	430a      	orrs	r2, r1
 1ec:	601a      	str	r2, [r3, #0]
 1ee:	79bb      	ldrb	r3, [r7, #6]
 1f0:	2b01      	cmp	r3, #1
 1f2:	d104      	bne.n	1fe <pinMode+0x52>
 1f4:	68fb      	ldr	r3, [r7, #12]
 1f6:	689b      	ldr	r3, [r3, #8]
 1f8:	2238      	movs	r2, #56	; 0x38
 1fa:	601a      	str	r2, [r3, #0]
 1fc:	e02d      	b.n	25a <pinMode+0xae>
 1fe:	68fb      	ldr	r3, [r7, #12]
 200:	689b      	ldr	r3, [r3, #8]
 202:	f640 0238 	movw	r2, #2104	; 0x838
 206:	601a      	str	r2, [r3, #0]
 208:	e027      	b.n	25a <pinMode+0xae>
 20a:	68fb      	ldr	r3, [r7, #12]
 20c:	681b      	ldr	r3, [r3, #0]
 20e:	3304      	adds	r3, #4
 210:	6819      	ldr	r1, [r3, #0]
 212:	68fb      	ldr	r3, [r7, #12]
 214:	68db      	ldr	r3, [r3, #12]
 216:	43da      	mvns	r2, r3
 218:	68fb      	ldr	r3, [r7, #12]
 21a:	681b      	ldr	r3, [r3, #0]
 21c:	3304      	adds	r3, #4
 21e:	400a      	ands	r2, r1
 220:	601a      	str	r2, [r3, #0]
 222:	79bb      	ldrb	r3, [r7, #6]
 224:	2b00      	cmp	r3, #0
 226:	d104      	bne.n	232 <pinMode+0x86>
 228:	68fb      	ldr	r3, [r7, #12]
 22a:	689b      	ldr	r3, [r3, #8]
 22c:	2238      	movs	r2, #56	; 0x38
 22e:	601a      	str	r2, [r3, #0]
 230:	e013      	b.n	25a <pinMode+0xae>
 232:	79bb      	ldrb	r3, [r7, #6]
 234:	2b02      	cmp	r3, #2
 236:	d104      	bne.n	242 <pinMode+0x96>
 238:	68fb      	ldr	r3, [r7, #12]
 23a:	689b      	ldr	r3, [r3, #8]
 23c:	4a0d      	ldr	r2, [pc, #52]	; (274 <pinMode+0xc8>)
 23e:	601a      	str	r2, [r3, #0]
 240:	e00b      	b.n	25a <pinMode+0xae>
 242:	79bb      	ldrb	r3, [r7, #6]
 244:	2b03      	cmp	r3, #3
 246:	d104      	bne.n	252 <pinMode+0xa6>
 248:	68fb      	ldr	r3, [r7, #12]
 24a:	689b      	ldr	r3, [r3, #8]
 24c:	4a0a      	ldr	r2, [pc, #40]	; (278 <pinMode+0xcc>)
 24e:	601a      	str	r2, [r3, #0]
 250:	e003      	b.n	25a <pinMode+0xae>
 252:	68fb      	ldr	r3, [r7, #12]
 254:	689b      	ldr	r3, [r3, #8]
 256:	4a09      	ldr	r2, [pc, #36]	; (27c <pinMode+0xd0>)
 258:	601a      	str	r2, [r3, #0]
 25a:	68fb      	ldr	r3, [r7, #12]
 25c:	685b      	ldr	r3, [r3, #4]
 25e:	2215      	movs	r2, #21
 260:	601a      	str	r2, [r3, #0]
 262:	e000      	b.n	266 <pinMode+0xba>
 264:	bf00      	nop
 266:	3714      	adds	r7, #20
 268:	46bd      	mov	sp, r7
 26a:	bc80      	pop	{r7}
 26c:	4770      	bx	lr
 26e:	bf00      	nop
 270:	000007f8 	.word	0x000007f8
 274:	0001f038 	.word	0x0001f038
 278:	00013038 	.word	0x00013038
 27c:	00010038 	.word	0x00010038

00000280 <_shiftOut>:
 280:	b590      	push	{r4, r7, lr}
 282:	b083      	sub	sp, #12
 284:	af00      	add	r7, sp, #0
 286:	4604      	mov	r4, r0
 288:	4608      	mov	r0, r1
 28a:	4611      	mov	r1, r2
 28c:	461a      	mov	r2, r3
 28e:	4623      	mov	r3, r4
 290:	71fb      	strb	r3, [r7, #7]
 292:	4603      	mov	r3, r0
 294:	71bb      	strb	r3, [r7, #6]
 296:	460b      	mov	r3, r1
 298:	717b      	strb	r3, [r7, #5]
 29a:	4613      	mov	r3, r2
 29c:	713b      	strb	r3, [r7, #4]
 29e:	797b      	ldrb	r3, [r7, #5]
 2a0:	2b00      	cmp	r3, #0
 2a2:	d106      	bne.n	2b2 <_shiftOut+0x32>
 2a4:	793a      	ldrb	r2, [r7, #4]
 2a6:	79b9      	ldrb	r1, [r7, #6]
 2a8:	79fb      	ldrb	r3, [r7, #7]
 2aa:	4618      	mov	r0, r3
 2ac:	f000 f80b 	bl	2c6 <shiftOut_lsbFirst>
 2b0:	e005      	b.n	2be <_shiftOut+0x3e>
 2b2:	793a      	ldrb	r2, [r7, #4]
 2b4:	79b9      	ldrb	r1, [r7, #6]
 2b6:	79fb      	ldrb	r3, [r7, #7]
 2b8:	4618      	mov	r0, r3
 2ba:	f000 f883 	bl	3c4 <shiftOut_msbFirst>
 2be:	bf00      	nop
 2c0:	370c      	adds	r7, #12
 2c2:	46bd      	mov	sp, r7
 2c4:	bd90      	pop	{r4, r7, pc}

000002c6 <shiftOut_lsbFirst>:
 2c6:	b580      	push	{r7, lr}
 2c8:	b086      	sub	sp, #24
 2ca:	af00      	add	r7, sp, #0
 2cc:	4603      	mov	r3, r0
 2ce:	71fb      	strb	r3, [r7, #7]
 2d0:	460b      	mov	r3, r1
 2d2:	71bb      	strb	r3, [r7, #6]
 2d4:	4613      	mov	r3, r2
 2d6:	717b      	strb	r3, [r7, #5]
 2d8:	4a35      	ldr	r2, [pc, #212]	; (3b0 <shiftOut_lsbFirst+0xea>)
 2da:	4b36      	ldr	r3, [pc, #216]	; (3b4 <shiftOut_lsbFirst+0xee>)
 2dc:	429a      	cmp	r2, r3
 2de:	d847      	bhi.n	370 <shiftOut_lsbFirst+0xaa>
 2e0:	4b35      	ldr	r3, [pc, #212]	; (3b8 <shiftOut_lsbFirst+0xf2>)
 2e2:	4a36      	ldr	r2, [pc, #216]	; (3bc <shiftOut_lsbFirst+0xf6>)
 2e4:	fbb2 f3f3 	udiv	r3, r2, r3
 2e8:	60fb      	str	r3, [r7, #12]
 2ea:	4b35      	ldr	r3, [pc, #212]	; (3c0 <shiftOut_lsbFirst+0xfa>)
 2ec:	681b      	ldr	r3, [r3, #0]
 2ee:	613b      	str	r3, [r7, #16]
 2f0:	2301      	movs	r3, #1
 2f2:	75fb      	strb	r3, [r7, #23]
 2f4:	e038      	b.n	368 <shiftOut_lsbFirst+0xa2>
 2f6:	797a      	ldrb	r2, [r7, #5]
 2f8:	7dfb      	ldrb	r3, [r7, #23]
 2fa:	4013      	ands	r3, r2
 2fc:	b2da      	uxtb	r2, r3
 2fe:	79fb      	ldrb	r3, [r7, #7]
 300:	4611      	mov	r1, r2
 302:	4618      	mov	r0, r3
 304:	f7ff fece 	bl	a4 <digitalWrite>
 308:	4b2d      	ldr	r3, [pc, #180]	; (3c0 <shiftOut_lsbFirst+0xfa>)
 30a:	681a      	ldr	r2, [r3, #0]
 30c:	693b      	ldr	r3, [r7, #16]
 30e:	1ad3      	subs	r3, r2, r3
 310:	68fa      	ldr	r2, [r7, #12]
 312:	429a      	cmp	r2, r3
 314:	d8f8      	bhi.n	308 <shiftOut_lsbFirst+0x42>
 316:	68fb      	ldr	r3, [r7, #12]
 318:	085b      	lsrs	r3, r3, #1
 31a:	693a      	ldr	r2, [r7, #16]
 31c:	4413      	add	r3, r2
 31e:	613b      	str	r3, [r7, #16]
 320:	79bb      	ldrb	r3, [r7, #6]
 322:	2101      	movs	r1, #1
 324:	4618      	mov	r0, r3
 326:	f7ff febd 	bl	a4 <digitalWrite>
 32a:	4b25      	ldr	r3, [pc, #148]	; (3c0 <shiftOut_lsbFirst+0xfa>)
 32c:	681a      	ldr	r2, [r3, #0]
 32e:	693b      	ldr	r3, [r7, #16]
 330:	1ad3      	subs	r3, r2, r3
 332:	68fa      	ldr	r2, [r7, #12]
 334:	429a      	cmp	r2, r3
 336:	d8f8      	bhi.n	32a <shiftOut_lsbFirst+0x64>
 338:	693a      	ldr	r2, [r7, #16]
 33a:	68fb      	ldr	r3, [r7, #12]
 33c:	4413      	add	r3, r2
 33e:	613b      	str	r3, [r7, #16]
 340:	79bb      	ldrb	r3, [r7, #6]
 342:	2100      	movs	r1, #0
 344:	4618      	mov	r0, r3
 346:	f7ff fead 	bl	a4 <digitalWrite>
 34a:	4b1d      	ldr	r3, [pc, #116]	; (3c0 <shiftOut_lsbFirst+0xfa>)
 34c:	681a      	ldr	r2, [r3, #0]
 34e:	693b      	ldr	r3, [r7, #16]
 350:	1ad3      	subs	r3, r2, r3
 352:	68fa      	ldr	r2, [r7, #12]
 354:	429a      	cmp	r2, r3
 356:	d8f8      	bhi.n	34a <shiftOut_lsbFirst+0x84>
 358:	68fb      	ldr	r3, [r7, #12]
 35a:	085b      	lsrs	r3, r3, #1
 35c:	693a      	ldr	r2, [r7, #16]
 35e:	4413      	add	r3, r2
 360:	613b      	str	r3, [r7, #16]
 362:	7dfb      	ldrb	r3, [r7, #23]
 364:	005b      	lsls	r3, r3, #1
 366:	75fb      	strb	r3, [r7, #23]
 368:	7dfb      	ldrb	r3, [r7, #23]
 36a:	2b00      	cmp	r3, #0
 36c:	d1c3      	bne.n	2f6 <shiftOut_lsbFirst+0x30>
 36e:	e01b      	b.n	3a8 <shiftOut_lsbFirst+0xe2>
 370:	2301      	movs	r3, #1
 372:	75fb      	strb	r3, [r7, #23]
 374:	e015      	b.n	3a2 <shiftOut_lsbFirst+0xdc>
 376:	797a      	ldrb	r2, [r7, #5]
 378:	7dfb      	ldrb	r3, [r7, #23]
 37a:	4013      	ands	r3, r2
 37c:	b2da      	uxtb	r2, r3
 37e:	79fb      	ldrb	r3, [r7, #7]
 380:	4611      	mov	r1, r2
 382:	4618      	mov	r0, r3
 384:	f7ff fe8e 	bl	a4 <digitalWrite>
 388:	79bb      	ldrb	r3, [r7, #6]
 38a:	2101      	movs	r1, #1
 38c:	4618      	mov	r0, r3
 38e:	f7ff fe89 	bl	a4 <digitalWrite>
 392:	79bb      	ldrb	r3, [r7, #6]
 394:	2100      	movs	r1, #0
 396:	4618      	mov	r0, r3
 398:	f7ff fe84 	bl	a4 <digitalWrite>
 39c:	7dfb      	ldrb	r3, [r7, #23]
 39e:	005b      	lsls	r3, r3, #1
 3a0:	75fb      	strb	r3, [r7, #23]
 3a2:	7dfb      	ldrb	r3, [r7, #23]
 3a4:	2b00      	cmp	r3, #0
 3a6:	d1e6      	bne.n	376 <shiftOut_lsbFirst+0xb0>
 3a8:	bf00      	nop
 3aa:	3718      	adds	r7, #24
 3ac:	46bd      	mov	sp, r7
 3ae:	bd80      	pop	{r7, pc}
 3b0:	175d7200 	.word	0x175d7200
 3b4:	179a7aff 	.word	0x179a7aff
 3b8:	00989680 	.word	0x00989680
 3bc:	0bcd3d80 	.word	0x0bcd3d80
 3c0:	e0001004 	.word	0xe0001004

000003c4 <shiftOut_msbFirst>:
 3c4:	b580      	push	{r7, lr}
 3c6:	b084      	sub	sp, #16
 3c8:	af00      	add	r7, sp, #0
 3ca:	4603      	mov	r3, r0
 3cc:	71fb      	strb	r3, [r7, #7]
 3ce:	460b      	mov	r3, r1
 3d0:	71bb      	strb	r3, [r7, #6]
 3d2:	4613      	mov	r3, r2
 3d4:	717b      	strb	r3, [r7, #5]
 3d6:	797b      	ldrb	r3, [r7, #5]
 3d8:	fa93 f3a3 	rbit	r3, r3
 3dc:	60fb      	str	r3, [r7, #12]
 3de:	68fb      	ldr	r3, [r7, #12]
 3e0:	0e1b      	lsrs	r3, r3, #24
 3e2:	b2da      	uxtb	r2, r3
 3e4:	79b9      	ldrb	r1, [r7, #6]
 3e6:	79fb      	ldrb	r3, [r7, #7]
 3e8:	4618      	mov	r0, r3
 3ea:	f7ff ff6c 	bl	2c6 <shiftOut_lsbFirst>
 3ee:	bf00      	nop
 3f0:	3710      	adds	r7, #16
 3f2:	46bd      	mov	sp, r7
 3f4:	bd80      	pop	{r7, pc}

000003f6 <_shiftIn>:
 3f6:	b580      	push	{r7, lr}
 3f8:	b082      	sub	sp, #8
 3fa:	af00      	add	r7, sp, #0
 3fc:	4603      	mov	r3, r0
 3fe:	71fb      	strb	r3, [r7, #7]
 400:	460b      	mov	r3, r1
 402:	71bb      	strb	r3, [r7, #6]
 404:	4613      	mov	r3, r2
 406:	717b      	strb	r3, [r7, #5]
 408:	797b      	ldrb	r3, [r7, #5]
 40a:	2b00      	cmp	r3, #0
 40c:	d107      	bne.n	41e <_shiftIn+0x28>
 40e:	79ba      	ldrb	r2, [r7, #6]
 410:	79fb      	ldrb	r3, [r7, #7]
 412:	4611      	mov	r1, r2
 414:	4618      	mov	r0, r3
 416:	f000 f80d 	bl	434 <shiftIn_lsbFirst>
 41a:	4603      	mov	r3, r0
 41c:	e006      	b.n	42c <_shiftIn+0x36>
 41e:	79ba      	ldrb	r2, [r7, #6]
 420:	79fb      	ldrb	r3, [r7, #7]
 422:	4611      	mov	r1, r2
 424:	4618      	mov	r0, r3
 426:	f000 f832 	bl	48e <shiftIn_msbFirst>
 42a:	4603      	mov	r3, r0
 42c:	4618      	mov	r0, r3
 42e:	3708      	adds	r7, #8
 430:	46bd      	mov	sp, r7
 432:	bd80      	pop	{r7, pc}

00000434 <shiftIn_lsbFirst>:
 434:	b580      	push	{r7, lr}
 436:	b084      	sub	sp, #16
 438:	af00      	add	r7, sp, #0
 43a:	4603      	mov	r3, r0
 43c:	460a      	mov	r2, r1
 43e:	71fb      	strb	r3, [r7, #7]
 440:	4613      	mov	r3, r2
 442:	71bb      	strb	r3, [r7, #6]
 444:	2300      	movs	r3, #0
 446:	73bb      	strb	r3, [r7, #14]
 448:	2301      	movs	r3, #1
 44a:	73fb      	strb	r3, [r7, #15]
 44c:	e017      	b.n	47e <shiftIn_lsbFirst+0x4a>
 44e:	79bb      	ldrb	r3, [r7, #6]
 450:	2101      	movs	r1, #1
 452:	4618      	mov	r0, r3
 454:	f7ff fe26 	bl	a4 <digitalWrite>
 458:	79fb      	ldrb	r3, [r7, #7]
 45a:	4618      	mov	r0, r3
 45c:	f7ff fe84 	bl	168 <digitalRead>
 460:	4603      	mov	r3, r0
 462:	2b00      	cmp	r3, #0
 464:	d003      	beq.n	46e <shiftIn_lsbFirst+0x3a>
 466:	7bba      	ldrb	r2, [r7, #14]
 468:	7bfb      	ldrb	r3, [r7, #15]
 46a:	4313      	orrs	r3, r2
 46c:	73bb      	strb	r3, [r7, #14]
 46e:	79bb      	ldrb	r3, [r7, #6]
 470:	2100      	movs	r1, #0
 472:	4618      	mov	r0, r3
 474:	f7ff fe16 	bl	a4 <digitalWrite>
 478:	7bfb      	ldrb	r3, [r7, #15]
 47a:	005b      	lsls	r3, r3, #1
 47c:	73fb      	strb	r3, [r7, #15]
 47e:	7bfb      	ldrb	r3, [r7, #15]
 480:	2b00      	cmp	r3, #0
 482:	d1e4      	bne.n	44e <shiftIn_lsbFirst+0x1a>
 484:	7bbb      	ldrb	r3, [r7, #14]
 486:	4618      	mov	r0, r3
 488:	3710      	adds	r7, #16
 48a:	46bd      	mov	sp, r7
 48c:	bd80      	pop	{r7, pc}

0000048e <shiftIn_msbFirst>:
 48e:	b580      	push	{r7, lr}
 490:	b084      	sub	sp, #16
 492:	af00      	add	r7, sp, #0
 494:	4603      	mov	r3, r0
 496:	460a      	mov	r2, r1
 498:	71fb      	strb	r3, [r7, #7]
 49a:	4613      	mov	r3, r2
 49c:	71bb      	strb	r3, [r7, #6]
 49e:	2300      	movs	r3, #0
 4a0:	73bb      	strb	r3, [r7, #14]
 4a2:	2380      	movs	r3, #128	; 0x80
 4a4:	73fb      	strb	r3, [r7, #15]
 4a6:	e017      	b.n	4d8 <shiftIn_msbFirst+0x4a>
 4a8:	79bb      	ldrb	r3, [r7, #6]
 4aa:	2101      	movs	r1, #1
 4ac:	4618      	mov	r0, r3
 4ae:	f7ff fdf9 	bl	a4 <digitalWrite>
 4b2:	79fb      	ldrb	r3, [r7, #7]
 4b4:	4618      	mov	r0, r3
 4b6:	f7ff fe57 	bl	168 <digitalRead>
 4ba:	4603      	mov	r3, r0
 4bc:	2b00      	cmp	r3, #0
 4be:	d003      	beq.n	4c8 <shiftIn_msbFirst+0x3a>
 4c0:	7bba      	ldrb	r2, [r7, #14]
 4c2:	7bfb      	ldrb	r3, [r7, #15]
 4c4:	4313      	orrs	r3, r2
 4c6:	73bb      	strb	r3, [r7, #14]
 4c8:	79bb      	ldrb	r3, [r7, #6]
 4ca:	2100      	movs	r1, #0
 4cc:	4618      	mov	r0, r3
 4ce:	f7ff fde9 	bl	a4 <digitalWrite>
 4d2:	7bfb      	ldrb	r3, [r7, #15]
 4d4:	085b      	lsrs	r3, r3, #1
 4d6:	73fb      	strb	r3, [r7, #15]
 4d8:	7bfb      	ldrb	r3, [r7, #15]
 4da:	2b00      	cmp	r3, #0
 4dc:	d1e4      	bne.n	4a8 <shiftIn_msbFirst+0x1a>
 4de:	7bbb      	ldrb	r3, [r7, #14]
 4e0:	4618      	mov	r0, r3
 4e2:	3710      	adds	r7, #16
 4e4:	46bd      	mov	sp, r7
 4e6:	bd80      	pop	{r7, pc}

000004e8 <pulseIn_high>:
 4e8:	b580      	push	{r7, lr}
 4ea:	b086      	sub	sp, #24
 4ec:	af00      	add	r7, sp, #0
 4ee:	4603      	mov	r3, r0
 4f0:	6039      	str	r1, [r7, #0]
 4f2:	71fb      	strb	r3, [r7, #7]
 4f4:	79fb      	ldrb	r3, [r7, #7]
 4f6:	011b      	lsls	r3, r3, #4
 4f8:	4a28      	ldr	r2, [pc, #160]	; (59c <pulseIn_high+0xb4>)
 4fa:	4413      	add	r3, r2
 4fc:	617b      	str	r3, [r7, #20]
 4fe:	f000 f8f9 	bl	6f4 <micros>
 502:	6138      	str	r0, [r7, #16]
 504:	e009      	b.n	51a <pulseIn_high+0x32>
 506:	f000 f8f5 	bl	6f4 <micros>
 50a:	4602      	mov	r2, r0
 50c:	693b      	ldr	r3, [r7, #16]
 50e:	1ad3      	subs	r3, r2, r3
 510:	683a      	ldr	r2, [r7, #0]
 512:	429a      	cmp	r2, r3
 514:	d201      	bcs.n	51a <pulseIn_high+0x32>
 516:	2300      	movs	r3, #0
 518:	e03c      	b.n	594 <pulseIn_high+0xac>
 51a:	697b      	ldr	r3, [r7, #20]
 51c:	681b      	ldr	r3, [r3, #0]
 51e:	3308      	adds	r3, #8
 520:	681a      	ldr	r2, [r3, #0]
 522:	697b      	ldr	r3, [r7, #20]
 524:	68db      	ldr	r3, [r3, #12]
 526:	4013      	ands	r3, r2
 528:	2b00      	cmp	r3, #0
 52a:	d1ec      	bne.n	506 <pulseIn_high+0x1e>
 52c:	f000 f8e2 	bl	6f4 <micros>
 530:	6138      	str	r0, [r7, #16]
 532:	e009      	b.n	548 <pulseIn_high+0x60>
 534:	f000 f8de 	bl	6f4 <micros>
 538:	4602      	mov	r2, r0
 53a:	693b      	ldr	r3, [r7, #16]
 53c:	1ad3      	subs	r3, r2, r3
 53e:	683a      	ldr	r2, [r7, #0]
 540:	429a      	cmp	r2, r3
 542:	d201      	bcs.n	548 <pulseIn_high+0x60>
 544:	2300      	movs	r3, #0
 546:	e025      	b.n	594 <pulseIn_high+0xac>
 548:	697b      	ldr	r3, [r7, #20]
 54a:	681b      	ldr	r3, [r3, #0]
 54c:	3308      	adds	r3, #8
 54e:	681a      	ldr	r2, [r3, #0]
 550:	697b      	ldr	r3, [r7, #20]
 552:	68db      	ldr	r3, [r3, #12]
 554:	4013      	ands	r3, r2
 556:	2b00      	cmp	r3, #0
 558:	d0ec      	beq.n	534 <pulseIn_high+0x4c>
 55a:	f000 f8cb 	bl	6f4 <micros>
 55e:	6138      	str	r0, [r7, #16]
 560:	e009      	b.n	576 <pulseIn_high+0x8e>
 562:	f000 f8c7 	bl	6f4 <micros>
 566:	4602      	mov	r2, r0
 568:	693b      	ldr	r3, [r7, #16]
 56a:	1ad3      	subs	r3, r2, r3
 56c:	683a      	ldr	r2, [r7, #0]
 56e:	429a      	cmp	r2, r3
 570:	d201      	bcs.n	576 <pulseIn_high+0x8e>
 572:	2300      	movs	r3, #0
 574:	e00e      	b.n	594 <pulseIn_high+0xac>
 576:	697b      	ldr	r3, [r7, #20]
 578:	681b      	ldr	r3, [r3, #0]
 57a:	3308      	adds	r3, #8
 57c:	681a      	ldr	r2, [r3, #0]
 57e:	697b      	ldr	r3, [r7, #20]
 580:	68db      	ldr	r3, [r3, #12]
 582:	4013      	ands	r3, r2
 584:	2b00      	cmp	r3, #0
 586:	d1ec      	bne.n	562 <pulseIn_high+0x7a>
 588:	f000 f8b4 	bl	6f4 <micros>
 58c:	60f8      	str	r0, [r7, #12]
 58e:	68fa      	ldr	r2, [r7, #12]
 590:	693b      	ldr	r3, [r7, #16]
 592:	1ad3      	subs	r3, r2, r3
 594:	4618      	mov	r0, r3
 596:	3718      	adds	r7, #24
 598:	46bd      	mov	sp, r7
 59a:	bd80      	pop	{r7, pc}
 59c:	000007f8 	.word	0x000007f8

000005a0 <pulseIn_low>:
 5a0:	b580      	push	{r7, lr}
 5a2:	b086      	sub	sp, #24
 5a4:	af00      	add	r7, sp, #0
 5a6:	4603      	mov	r3, r0
 5a8:	6039      	str	r1, [r7, #0]
 5aa:	71fb      	strb	r3, [r7, #7]
 5ac:	79fb      	ldrb	r3, [r7, #7]
 5ae:	011b      	lsls	r3, r3, #4
 5b0:	4a28      	ldr	r2, [pc, #160]	; (654 <pulseIn_low+0xb4>)
 5b2:	4413      	add	r3, r2
 5b4:	617b      	str	r3, [r7, #20]
 5b6:	f000 f89d 	bl	6f4 <micros>
 5ba:	6138      	str	r0, [r7, #16]
 5bc:	e009      	b.n	5d2 <pulseIn_low+0x32>
 5be:	f000 f899 	bl	6f4 <micros>
 5c2:	4602      	mov	r2, r0
 5c4:	693b      	ldr	r3, [r7, #16]
 5c6:	1ad3      	subs	r3, r2, r3
 5c8:	683a      	ldr	r2, [r7, #0]
 5ca:	429a      	cmp	r2, r3
 5cc:	d201      	bcs.n	5d2 <pulseIn_low+0x32>
 5ce:	2300      	movs	r3, #0
 5d0:	e03c      	b.n	64c <pulseIn_low+0xac>
 5d2:	697b      	ldr	r3, [r7, #20]
 5d4:	681b      	ldr	r3, [r3, #0]
 5d6:	3308      	adds	r3, #8
 5d8:	681a      	ldr	r2, [r3, #0]
 5da:	697b      	ldr	r3, [r7, #20]
 5dc:	68db      	ldr	r3, [r3, #12]
 5de:	4013      	ands	r3, r2
 5e0:	2b00      	cmp	r3, #0
 5e2:	d0ec      	beq.n	5be <pulseIn_low+0x1e>
 5e4:	f000 f886 	bl	6f4 <micros>
 5e8:	6138      	str	r0, [r7, #16]
 5ea:	e009      	b.n	600 <pulseIn_low+0x60>
 5ec:	f000 f882 	bl	6f4 <micros>
 5f0:	4602      	mov	r2, r0
 5f2:	693b      	ldr	r3, [r7, #16]
 5f4:	1ad3      	subs	r3, r2, r3
 5f6:	683a      	ldr	r2, [r7, #0]
 5f8:	429a      	cmp	r2, r3
 5fa:	d201      	bcs.n	600 <pulseIn_low+0x60>
 5fc:	2300      	movs	r3, #0
 5fe:	e025      	b.n	64c <pulseIn_low+0xac>
 600:	697b      	ldr	r3, [r7, #20]
 602:	681b      	ldr	r3, [r3, #0]
 604:	3308      	adds	r3, #8
 606:	681a      	ldr	r2, [r3, #0]
 608:	697b      	ldr	r3, [r7, #20]
 60a:	68db      	ldr	r3, [r3, #12]
 60c:	4013      	ands	r3, r2
 60e:	2b00      	cmp	r3, #0
 610:	d1ec      	bne.n	5ec <pulseIn_low+0x4c>
 612:	f000 f86f 	bl	6f4 <micros>
 616:	6138      	str	r0, [r7, #16]
 618:	e009      	b.n	62e <pulseIn_low+0x8e>
 61a:	f000 f86b 	bl	6f4 <micros>
 61e:	4602      	mov	r2, r0
 620:	693b      	ldr	r3, [r7, #16]
 622:	1ad3      	subs	r3, r2, r3
 624:	683a      	ldr	r2, [r7, #0]
 626:	429a      	cmp	r2, r3
 628:	d201      	bcs.n	62e <pulseIn_low+0x8e>
 62a:	2300      	movs	r3, #0
 62c:	e00e      	b.n	64c <pulseIn_low+0xac>
 62e:	697b      	ldr	r3, [r7, #20]
 630:	681b      	ldr	r3, [r3, #0]
 632:	3308      	adds	r3, #8
 634:	681a      	ldr	r2, [r3, #0]
 636:	697b      	ldr	r3, [r7, #20]
 638:	68db      	ldr	r3, [r3, #12]
 63a:	4013      	ands	r3, r2
 63c:	2b00      	cmp	r3, #0
 63e:	d0ec      	beq.n	61a <pulseIn_low+0x7a>
 640:	f000 f858 	bl	6f4 <micros>
 644:	60f8      	str	r0, [r7, #12]
 646:	68fa      	ldr	r2, [r7, #12]
 648:	693b      	ldr	r3, [r7, #16]
 64a:	1ad3      	subs	r3, r2, r3
 64c:	4618      	mov	r0, r3
 64e:	3718      	adds	r7, #24
 650:	46bd      	mov	sp, r7
 652:	bd80      	pop	{r7, pc}
 654:	000007f8 	.word	0x000007f8

00000658 <pulseIn>:
 658:	b580      	push	{r7, lr}
 65a:	b082      	sub	sp, #8
 65c:	af00      	add	r7, sp, #0
 65e:	4603      	mov	r3, r0
 660:	603a      	str	r2, [r7, #0]
 662:	71fb      	strb	r3, [r7, #7]
 664:	460b      	mov	r3, r1
 666:	71bb      	strb	r3, [r7, #6]
 668:	79fb      	ldrb	r3, [r7, #7]
 66a:	2b36      	cmp	r3, #54	; 0x36
 66c:	d901      	bls.n	672 <pulseIn+0x1a>
 66e:	2300      	movs	r3, #0
 670:	e00f      	b.n	692 <pulseIn+0x3a>
 672:	79bb      	ldrb	r3, [r7, #6]
 674:	2b00      	cmp	r3, #0
 676:	d006      	beq.n	686 <pulseIn+0x2e>
 678:	79fb      	ldrb	r3, [r7, #7]
 67a:	6839      	ldr	r1, [r7, #0]
 67c:	4618      	mov	r0, r3
 67e:	f7ff ff33 	bl	4e8 <pulseIn_high>
 682:	4603      	mov	r3, r0
 684:	e005      	b.n	692 <pulseIn+0x3a>
 686:	79fb      	ldrb	r3, [r7, #7]
 688:	6839      	ldr	r1, [r7, #0]
 68a:	4618      	mov	r0, r3
 68c:	f7ff ff88 	bl	5a0 <pulseIn_low>
 690:	4603      	mov	r3, r0
 692:	4618      	mov	r0, r3
 694:	3708      	adds	r7, #8
 696:	46bd      	mov	sp, r7
 698:	bd80      	pop	{r7, pc}
 69a:	bf00      	nop

0000069c <yield>:
 69c:	b480      	push	{r7}
 69e:	af00      	add	r7, sp, #0
 6a0:	bf00      	nop
 6a2:	46bd      	mov	sp, r7
 6a4:	bc80      	pop	{r7}
 6a6:	4770      	bx	lr

000006a8 <delay>:
 6a8:	b580      	push	{r7, lr}
 6aa:	b084      	sub	sp, #16
 6ac:	af00      	add	r7, sp, #0
 6ae:	6078      	str	r0, [r7, #4]
 6b0:	687b      	ldr	r3, [r7, #4]
 6b2:	2b00      	cmp	r3, #0
 6b4:	d018      	beq.n	6e8 <delay+0x40>
 6b6:	f000 f81d 	bl	6f4 <micros>
 6ba:	60f8      	str	r0, [r7, #12]
 6bc:	e009      	b.n	6d2 <delay+0x2a>
 6be:	687b      	ldr	r3, [r7, #4]
 6c0:	3b01      	subs	r3, #1
 6c2:	607b      	str	r3, [r7, #4]
 6c4:	687b      	ldr	r3, [r7, #4]
 6c6:	2b00      	cmp	r3, #0
 6c8:	d010      	beq.n	6ec <delay+0x44>
 6ca:	68fb      	ldr	r3, [r7, #12]
 6cc:	f503 737a 	add.w	r3, r3, #1000	; 0x3e8
 6d0:	60fb      	str	r3, [r7, #12]
 6d2:	f000 f80f 	bl	6f4 <micros>
 6d6:	4602      	mov	r2, r0
 6d8:	68fb      	ldr	r3, [r7, #12]
 6da:	1ad3      	subs	r3, r2, r3
 6dc:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
 6e0:	d2ed      	bcs.n	6be <delay+0x16>
 6e2:	f7ff ffdb 	bl	69c <yield>
 6e6:	e7f4      	b.n	6d2 <delay+0x2a>
 6e8:	bf00      	nop
 6ea:	e000      	b.n	6ee <delay+0x46>
 6ec:	bf00      	nop
 6ee:	3710      	adds	r7, #16
 6f0:	46bd      	mov	sp, r7
 6f2:	bd80      	pop	{r7, pc}

000006f4 <micros>:
 6f4:	e92d 03f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9}
 6f8:	b08c      	sub	sp, #48	; 0x30
 6fa:	af00      	add	r7, sp, #0
 6fc:	4e28      	ldr	r6, [pc, #160]	; (7a0 <micros+0xac>)
 6fe:	60be      	str	r6, [r7, #8]
 700:	68be      	ldr	r6, [r7, #8]
 702:	e856 6f00 	ldrex	r6, [r6]
 706:	607e      	str	r6, [r7, #4]
 708:	4e26      	ldr	r6, [pc, #152]	; (7a4 <micros+0xb0>)
 70a:	6836      	ldr	r6, [r6, #0]
 70c:	62be      	str	r6, [r7, #40]	; 0x28
 70e:	4e26      	ldr	r6, [pc, #152]	; (7a8 <micros+0xb4>)
 710:	6836      	ldr	r6, [r6, #0]
 712:	627e      	str	r6, [r7, #36]	; 0x24
 714:	2601      	movs	r6, #1
 716:	617e      	str	r6, [r7, #20]
 718:	4e21      	ldr	r6, [pc, #132]	; (7a0 <micros+0xac>)
 71a:	613e      	str	r6, [r7, #16]
 71c:	693a      	ldr	r2, [r7, #16]
 71e:	697b      	ldr	r3, [r7, #20]
 720:	e842 3600 	strex	r6, r3, [r2]
 724:	60fe      	str	r6, [r7, #12]
 726:	68fe      	ldr	r6, [r7, #12]
 728:	2e00      	cmp	r6, #0
 72a:	d1e7      	bne.n	6fc <micros+0x8>
 72c:	4e1f      	ldr	r6, [pc, #124]	; (7ac <micros+0xb8>)
 72e:	6836      	ldr	r6, [r6, #0]
 730:	623e      	str	r6, [r7, #32]
 732:	6a3b      	ldr	r3, [r7, #32]
 734:	6a7e      	ldr	r6, [r7, #36]	; 0x24
 736:	1b9e      	subs	r6, r3, r6
 738:	61fe      	str	r6, [r7, #28]
 73a:	69fe      	ldr	r6, [r7, #28]
 73c:	f04f 0c00 	mov.w	ip, #0
 740:	4634      	mov	r4, r6
 742:	4665      	mov	r5, ip
 744:	4e1a      	ldr	r6, [pc, #104]	; (7b0 <micros+0xbc>)
 746:	6836      	ldr	r6, [r6, #0]
 748:	f04f 0c00 	mov.w	ip, #0
 74c:	4630      	mov	r0, r6
 74e:	4661      	mov	r1, ip
 750:	fb00 fc05 	mul.w	ip, r0, r5
 754:	fb04 f601 	mul.w	r6, r4, r1
 758:	4466      	add	r6, ip
 75a:	fba4 8900 	umull	r8, r9, r4, r0
 75e:	eb06 0109 	add.w	r1, r6, r9
 762:	4689      	mov	r9, r1
 764:	f04f 0000 	mov.w	r0, #0
 768:	f04f 0100 	mov.w	r1, #0
 76c:	4648      	mov	r0, r9
 76e:	2100      	movs	r1, #0
 770:	4603      	mov	r3, r0
 772:	62fb      	str	r3, [r7, #44]	; 0x2c
 774:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 776:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
 77a:	d902      	bls.n	782 <micros+0x8e>
 77c:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 780:	62fb      	str	r3, [r7, #44]	; 0x2c
 782:	6abb      	ldr	r3, [r7, #40]	; 0x28
 784:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
 788:	fb02 f303 	mul.w	r3, r2, r3
 78c:	6afa      	ldr	r2, [r7, #44]	; 0x2c
 78e:	4413      	add	r3, r2
 790:	61bb      	str	r3, [r7, #24]
 792:	69bb      	ldr	r3, [r7, #24]
 794:	4618      	mov	r0, r3
 796:	3730      	adds	r7, #48	; 0x30
 798:	46bd      	mov	sp, r7
 79a:	e8bd 03f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9}
 79e:	4770      	bx	lr
 7a0:	10000010 	.word	0x10000010
 7a4:	10000004 	.word	0x10000004
 7a8:	10000008 	.word	0x10000008
 7ac:	e0001004 	.word	0xe0001004
 7b0:	1000000c 	.word	0x1000000c

000007b4 <Reset_Handler>:
 7b4:	490a      	ldr	r1, [pc, #40]	; (7e0 <Reset_Handler+0x2c>)
 7b6:	4a0b      	ldr	r2, [pc, #44]	; (7e4 <Reset_Handler+0x30>)
 7b8:	4b0b      	ldr	r3, [pc, #44]	; (7e8 <Reset_Handler+0x34>)
 7ba:	429a      	cmp	r2, r3
 7bc:	bfbe      	ittt	lt
 7be:	f851 0b04 	ldrlt.w	r0, [r1], #4
 7c2:	f842 0b04 	strlt.w	r0, [r2], #4
 7c6:	e7f8      	blt.n	7ba <Reset_Handler+0x6>
 7c8:	4908      	ldr	r1, [pc, #32]	; (7ec <Reset_Handler+0x38>)
 7ca:	4a09      	ldr	r2, [pc, #36]	; (7f0 <Reset_Handler+0x3c>)
 7cc:	2000      	movs	r0, #0
 7ce:	4291      	cmp	r1, r2
 7d0:	bfbc      	itt	lt
 7d2:	f841 0b04 	strlt.w	r0, [r1], #4
 7d6:	e7fa      	blt.n	7ce <Reset_Handler+0x1a>
 7d8:	f7ff fc34 	bl	44 <SystemInit>
 7dc:	f7ff fc38 	bl	50 <main>
 7e0:	00000b70 	.word	0x00000b70
 7e4:	10000000 	.word	0x10000000
 7e8:	10000004 	.word	0x10000004
 7ec:	10000004 	.word	0x10000004
 7f0:	10000014 	.word	0x10000014

000007f4 <BusFault_Handler>:
 7f4:	e7fe      	b.n	7f4 <BusFault_Handler>
 7f6:	bf00      	nop

000007f8 <digital_pin_to_info_PGM>:
 7f8:	0000 4200 80c8 401f 82b8 401f 0008 0000     ...B...@...@....
 808:	0000 4200 80c4 401f 82b4 401f 0004 0000     ...B...@...@....
 818:	c000 4200 8024 401f 8214 401f 0010 0000     ...B$..@...@....
 828:	c000 4200 8028 401f 8218 401f 0020 0000     ...B(..@...@ ...
 838:	c000 4200 802c 401f 821c 401f 0040 0000     ...B,..@...@@...
 848:	c000 4200 8034 401f 8224 401f 0100 0000     ...B4..@$..@....
 858:	4000 4200 8164 401f 8354 401f 0400 0000     .@.Bd..@T..@....
 868:	4000 4200 8180 401f 8370 401f 0000 0002     .@.B...@p..@....
 878:	4000 4200 817c 401f 836c 401f 0000 0001     .@.B|..@l..@....
 888:	4000 4200 8168 401f 8358 401f 0800 0000     .@.Bh..@X..@....
 898:	4000 4200 813c 401f 832c 401f 0001 0000     .@.B<..@,..@....
 8a8:	4000 4200 8144 401f 8334 401f 0004 0000     .@.BD..@4..@....
 8b8:	4000 4200 8140 401f 8330 401f 0002 0000     .@.B@..@0..@....
 8c8:	4000 4200 8148 401f 8338 401f 0008 0000     .@.BH..@8..@....
 8d8:	0000 4200 8104 401f 82f4 401f 0000 0004     ...B...@...@....
 8e8:	0000 4200 8108 401f 82f8 401f 0000 0008     ...B...@...@....
 8f8:	0000 4200 8118 401f 8308 401f 0000 0080     ...B...@...@....
 908:	0000 4200 8114 401f 8304 401f 0000 0040     ...B...@...@..@.
 918:	0000 4200 8100 401f 82f0 401f 0000 0002     ...B...@...@....
 928:	0000 4200 80fc 401f 82ec 401f 0000 0001     ...B...@...@....
 938:	0000 4200 8124 401f 8314 401f 0000 0400     ...B$..@...@....
 948:	0000 4200 8128 401f 8318 401f 0000 0800     ...B(..@...@....
 958:	0000 4200 811c 401f 830c 401f 0000 0100     ...B...@...@....
 968:	0000 4200 8120 401f 8310 401f 0000 0200     ...B ..@...@....
 978:	0000 4200 80ec 401f 82dc 401f 1000 0000     ...B...@...@....
 988:	0000 4200 80f0 401f 82e0 401f 2000 0000     ...B...@...@. ..
 998:	0000 4200 8134 401f 8324 401f 0000 4000     ...B4..@$..@...@
 9a8:	0000 4200 8138 401f 8328 401f 0000 8000     ...B8..@(..@....
 9b8:	8000 4200 8094 401f 8284 401f 0000 0004     ...B...@...@....
 9c8:	c000 4200 8090 401f 8280 401f 0000 8000     ...B...@...@....
 9d8:	8000 4200 80a8 401f 8298 401f 0000 0080     ...B...@...@....
 9e8:	8000 4200 80a4 401f 8294 401f 0000 0040     ...B...@...@..@.
 9f8:	4000 4200 816c 401f 835c 401f 1000 0000     .@.Bl..@\..@....
 a08:	c000 4200 8030 401f 8220 401f 0080 0000     ...B0..@ ..@....
 a18:	4000 4200 81b0 401f 83a0 401f 0000 2000     .@.B...@...@... 
 a28:	4000 4200 81ac 401f 839c 401f 0000 1000     .@.B...@...@....
 a38:	4000 4200 8184 401f 8374 401f 0000 0004     .@.B...@t..@....
 a48:	4000 4200 8188 401f 8378 401f 0000 0008     .@.B...@x..@....
 a58:	0000 4200 812c 401f 831c 401f 0000 1000     ...B,..@...@....
 a68:	0000 4200 8130 401f 8320 401f 0000 2000     ...B0..@ ..@... 
 a78:	0000 4200 810c 401f 82fc 401f 0000 0010     ...B...@...@....
 a88:	0000 4200 8110 401f 8300 401f 0000 0020     ...B...@...@.. .
 a98:	8000 4200 81c8 401f 83b8 401f 8000 0000     ...B...@...@....
 aa8:	8000 4200 81c4 401f 83b4 401f 4000 0000     ...B...@...@.@..
 ab8:	8000 4200 81c0 401f 83b0 401f 2000 0000     ...B...@...@. ..
 ac8:	8000 4200 81bc 401f 83ac 401f 1000 0000     ...B...@...@....
 ad8:	8000 4200 81d0 401f 83c0 401f 0000 0002     ...B...@...@....
 ae8:	8000 4200 81cc 401f 83bc 401f 0000 0001     ...B...@...@....
 af8:	c000 4200 8074 401f 8264 401f 0000 0100     ...Bt..@d..@....
 b08:	c000 4200 8080 401f 8270 401f 0000 0800     ...B...@p..@....
 b18:	c000 4200 8084 401f 8274 401f 0000 1000     ...B...@t..@....
 b28:	c000 4200 806c 401f 825c 401f 0000 0040     ...Bl..@\..@..@.
 b38:	c000 4200 807c 401f 826c 401f 0000 0400     ...B|..@l..@....
 b48:	c000 4200 8078 401f 8268 401f 0000 0200     ...Bx..@h..@....
 b58:	c000 4200 8088 401f 8278 401f 0000 2000     ...B...@x..@... 

00000b68 <maxSpeed>:
 b68:	9680 0098                                   ....

00000b6c <maxSpeedBeforeDelay>:
 b6c:	7200 175d                                   .r].
