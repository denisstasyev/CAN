
temp.elf:     file format elf32-littlearm

Sections:
Idx Name          Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector   000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text         00002c90  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       000001ac  08002d50  08002d50  00012d50  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array   00000008  08002efc  08002efc  00012efc  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array   00000004  08002f04  08002f04  00012f04  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data         00000430  20000000  08002f08  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss          000003b4  20000430  08003338  00020430  2**2  ALLOC
  7 ._user_heap_stack 00000604  200007e4  08003338  000207e4  2**0  ALLOC
  8 .ARM.attributes 00000028  00000000  00000000  00020430  2**0  CONTENTS, READONLY
  9 .comment      00000070  00000000  00000000  00020458  2**0  CONTENTS, READONLY
 10 .debug_info   00005df5  00000000  00000000  000204c8  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_abbrev 000017df  00000000  00000000  000262bd  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges 00000608  00000000  00000000  00027aa0  2**3  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges 000004f0  00000000  00000000  000280a8  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line   00002120  00000000  00000000  00028598  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str    000023d9  00000000  00000000  0002a6b8  2**0  CONTENTS, READONLY, DEBUGGING
 16 .debug_frame  000011d4  00000000  00000000  0002ca94  2**2  CONTENTS, READONLY, DEBUGGING
 17 .debug_loc    00000a0b  00000000  00000000  0002dc68  2**0  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <deregister_tm_clones>:
 80000c0:	b508      	push	{r3, lr}
 80000c2:	4b05      	ldr	r3, [pc, #20]	; (80000d8 <deregister_tm_clones+0x18>)
 80000c4:	4805      	ldr	r0, [pc, #20]	; (80000dc <deregister_tm_clones+0x1c>)
 80000c6:	3303      	adds	r3, #3
 80000c8:	1a1b      	subs	r3, r3, r0
 80000ca:	2b06      	cmp	r3, #6
 80000cc:	d903      	bls.n	80000d6 <deregister_tm_clones+0x16>
 80000ce:	4b04      	ldr	r3, [pc, #16]	; (80000e0 <deregister_tm_clones+0x20>)
 80000d0:	2b00      	cmp	r3, #0
 80000d2:	d000      	beq.n	80000d6 <deregister_tm_clones+0x16>
 80000d4:	4798      	blx	r3
 80000d6:	bd08      	pop	{r3, pc}
 80000d8:	20000430 	.word	0x20000430
 80000dc:	20000430 	.word	0x20000430
 80000e0:	00000000 	.word	0x00000000

080000e4 <register_tm_clones>:
 80000e4:	4806      	ldr	r0, [pc, #24]	; (8000100 <register_tm_clones+0x1c>)
 80000e6:	4907      	ldr	r1, [pc, #28]	; (8000104 <register_tm_clones+0x20>)
 80000e8:	b508      	push	{r3, lr}
 80000ea:	1a09      	subs	r1, r1, r0
 80000ec:	1089      	asrs	r1, r1, #2
 80000ee:	0fcb      	lsrs	r3, r1, #31
 80000f0:	1859      	adds	r1, r3, r1
 80000f2:	1049      	asrs	r1, r1, #1
 80000f4:	d003      	beq.n	80000fe <register_tm_clones+0x1a>
 80000f6:	4b04      	ldr	r3, [pc, #16]	; (8000108 <register_tm_clones+0x24>)
 80000f8:	2b00      	cmp	r3, #0
 80000fa:	d000      	beq.n	80000fe <register_tm_clones+0x1a>
 80000fc:	4798      	blx	r3
 80000fe:	bd08      	pop	{r3, pc}
 8000100:	20000430 	.word	0x20000430
 8000104:	20000430 	.word	0x20000430
 8000108:	00000000 	.word	0x00000000

0800010c <__do_global_dtors_aux>:
 800010c:	b510      	push	{r4, lr}
 800010e:	4c07      	ldr	r4, [pc, #28]	; (800012c <__do_global_dtors_aux+0x20>)
 8000110:	7823      	ldrb	r3, [r4, #0]
 8000112:	2b00      	cmp	r3, #0
 8000114:	d109      	bne.n	800012a <__do_global_dtors_aux+0x1e>
 8000116:	f7ff ffd3 	bl	80000c0 <deregister_tm_clones>
 800011a:	4b05      	ldr	r3, [pc, #20]	; (8000130 <__do_global_dtors_aux+0x24>)
 800011c:	2b00      	cmp	r3, #0
 800011e:	d002      	beq.n	8000126 <__do_global_dtors_aux+0x1a>
 8000120:	4804      	ldr	r0, [pc, #16]	; (8000134 <__do_global_dtors_aux+0x28>)
 8000122:	e000      	b.n	8000126 <__do_global_dtors_aux+0x1a>
 8000124:	bf00      	nop
 8000126:	2301      	movs	r3, #1
 8000128:	7023      	strb	r3, [r4, #0]
 800012a:	bd10      	pop	{r4, pc}
 800012c:	20000430 	.word	0x20000430
 8000130:	00000000 	.word	0x00000000
 8000134:	08002d38 	.word	0x08002d38

08000138 <frame_dummy>:
 8000138:	b508      	push	{r3, lr}
 800013a:	4b09      	ldr	r3, [pc, #36]	; (8000160 <frame_dummy+0x28>)
 800013c:	2b00      	cmp	r3, #0
 800013e:	d003      	beq.n	8000148 <frame_dummy+0x10>
 8000140:	4808      	ldr	r0, [pc, #32]	; (8000164 <frame_dummy+0x2c>)
 8000142:	4909      	ldr	r1, [pc, #36]	; (8000168 <frame_dummy+0x30>)
 8000144:	e000      	b.n	8000148 <frame_dummy+0x10>
 8000146:	bf00      	nop
 8000148:	4808      	ldr	r0, [pc, #32]	; (800016c <frame_dummy+0x34>)
 800014a:	6803      	ldr	r3, [r0, #0]
 800014c:	2b00      	cmp	r3, #0
 800014e:	d102      	bne.n	8000156 <frame_dummy+0x1e>
 8000150:	f7ff ffc8 	bl	80000e4 <register_tm_clones>
 8000154:	bd08      	pop	{r3, pc}
 8000156:	4b06      	ldr	r3, [pc, #24]	; (8000170 <frame_dummy+0x38>)
 8000158:	2b00      	cmp	r3, #0
 800015a:	d0f9      	beq.n	8000150 <frame_dummy+0x18>
 800015c:	4798      	blx	r3
 800015e:	e7f7      	b.n	8000150 <frame_dummy+0x18>
 8000160:	00000000 	.word	0x00000000
 8000164:	08002d38 	.word	0x08002d38
 8000168:	20000434 	.word	0x20000434
 800016c:	20000430 	.word	0x20000430
 8000170:	00000000 	.word	0x00000000

08000174 <__aeabi_uidiv>:
 8000174:	2200      	movs	r2, #0
 8000176:	0843      	lsrs	r3, r0, #1
 8000178:	428b      	cmp	r3, r1
 800017a:	d374      	bcc.n	8000266 <__aeabi_uidiv+0xf2>
 800017c:	0903      	lsrs	r3, r0, #4
 800017e:	428b      	cmp	r3, r1
 8000180:	d35f      	bcc.n	8000242 <__aeabi_uidiv+0xce>
 8000182:	0a03      	lsrs	r3, r0, #8
 8000184:	428b      	cmp	r3, r1
 8000186:	d344      	bcc.n	8000212 <__aeabi_uidiv+0x9e>
 8000188:	0b03      	lsrs	r3, r0, #12
 800018a:	428b      	cmp	r3, r1
 800018c:	d328      	bcc.n	80001e0 <__aeabi_uidiv+0x6c>
 800018e:	0c03      	lsrs	r3, r0, #16
 8000190:	428b      	cmp	r3, r1
 8000192:	d30d      	bcc.n	80001b0 <__aeabi_uidiv+0x3c>
 8000194:	22ff      	movs	r2, #255	; 0xff
 8000196:	0209      	lsls	r1, r1, #8
 8000198:	ba12      	rev	r2, r2
 800019a:	0c03      	lsrs	r3, r0, #16
 800019c:	428b      	cmp	r3, r1
 800019e:	d302      	bcc.n	80001a6 <__aeabi_uidiv+0x32>
 80001a0:	1212      	asrs	r2, r2, #8
 80001a2:	0209      	lsls	r1, r1, #8
 80001a4:	d065      	beq.n	8000272 <__aeabi_uidiv+0xfe>
 80001a6:	0b03      	lsrs	r3, r0, #12
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d319      	bcc.n	80001e0 <__aeabi_uidiv+0x6c>
 80001ac:	e000      	b.n	80001b0 <__aeabi_uidiv+0x3c>
 80001ae:	0a09      	lsrs	r1, r1, #8
 80001b0:	0bc3      	lsrs	r3, r0, #15
 80001b2:	428b      	cmp	r3, r1
 80001b4:	d301      	bcc.n	80001ba <__aeabi_uidiv+0x46>
 80001b6:	03cb      	lsls	r3, r1, #15
 80001b8:	1ac0      	subs	r0, r0, r3
 80001ba:	4152      	adcs	r2, r2
 80001bc:	0b83      	lsrs	r3, r0, #14
 80001be:	428b      	cmp	r3, r1
 80001c0:	d301      	bcc.n	80001c6 <__aeabi_uidiv+0x52>
 80001c2:	038b      	lsls	r3, r1, #14
 80001c4:	1ac0      	subs	r0, r0, r3
 80001c6:	4152      	adcs	r2, r2
 80001c8:	0b43      	lsrs	r3, r0, #13
 80001ca:	428b      	cmp	r3, r1
 80001cc:	d301      	bcc.n	80001d2 <__aeabi_uidiv+0x5e>
 80001ce:	034b      	lsls	r3, r1, #13
 80001d0:	1ac0      	subs	r0, r0, r3
 80001d2:	4152      	adcs	r2, r2
 80001d4:	0b03      	lsrs	r3, r0, #12
 80001d6:	428b      	cmp	r3, r1
 80001d8:	d301      	bcc.n	80001de <__aeabi_uidiv+0x6a>
 80001da:	030b      	lsls	r3, r1, #12
 80001dc:	1ac0      	subs	r0, r0, r3
 80001de:	4152      	adcs	r2, r2
 80001e0:	0ac3      	lsrs	r3, r0, #11
 80001e2:	428b      	cmp	r3, r1
 80001e4:	d301      	bcc.n	80001ea <__aeabi_uidiv+0x76>
 80001e6:	02cb      	lsls	r3, r1, #11
 80001e8:	1ac0      	subs	r0, r0, r3
 80001ea:	4152      	adcs	r2, r2
 80001ec:	0a83      	lsrs	r3, r0, #10
 80001ee:	428b      	cmp	r3, r1
 80001f0:	d301      	bcc.n	80001f6 <__aeabi_uidiv+0x82>
 80001f2:	028b      	lsls	r3, r1, #10
 80001f4:	1ac0      	subs	r0, r0, r3
 80001f6:	4152      	adcs	r2, r2
 80001f8:	0a43      	lsrs	r3, r0, #9
 80001fa:	428b      	cmp	r3, r1
 80001fc:	d301      	bcc.n	8000202 <__aeabi_uidiv+0x8e>
 80001fe:	024b      	lsls	r3, r1, #9
 8000200:	1ac0      	subs	r0, r0, r3
 8000202:	4152      	adcs	r2, r2
 8000204:	0a03      	lsrs	r3, r0, #8
 8000206:	428b      	cmp	r3, r1
 8000208:	d301      	bcc.n	800020e <__aeabi_uidiv+0x9a>
 800020a:	020b      	lsls	r3, r1, #8
 800020c:	1ac0      	subs	r0, r0, r3
 800020e:	4152      	adcs	r2, r2
 8000210:	d2cd      	bcs.n	80001ae <__aeabi_uidiv+0x3a>
 8000212:	09c3      	lsrs	r3, r0, #7
 8000214:	428b      	cmp	r3, r1
 8000216:	d301      	bcc.n	800021c <__aeabi_uidiv+0xa8>
 8000218:	01cb      	lsls	r3, r1, #7
 800021a:	1ac0      	subs	r0, r0, r3
 800021c:	4152      	adcs	r2, r2
 800021e:	0983      	lsrs	r3, r0, #6
 8000220:	428b      	cmp	r3, r1
 8000222:	d301      	bcc.n	8000228 <__aeabi_uidiv+0xb4>
 8000224:	018b      	lsls	r3, r1, #6
 8000226:	1ac0      	subs	r0, r0, r3
 8000228:	4152      	adcs	r2, r2
 800022a:	0943      	lsrs	r3, r0, #5
 800022c:	428b      	cmp	r3, r1
 800022e:	d301      	bcc.n	8000234 <__aeabi_uidiv+0xc0>
 8000230:	014b      	lsls	r3, r1, #5
 8000232:	1ac0      	subs	r0, r0, r3
 8000234:	4152      	adcs	r2, r2
 8000236:	0903      	lsrs	r3, r0, #4
 8000238:	428b      	cmp	r3, r1
 800023a:	d301      	bcc.n	8000240 <__aeabi_uidiv+0xcc>
 800023c:	010b      	lsls	r3, r1, #4
 800023e:	1ac0      	subs	r0, r0, r3
 8000240:	4152      	adcs	r2, r2
 8000242:	08c3      	lsrs	r3, r0, #3
 8000244:	428b      	cmp	r3, r1
 8000246:	d301      	bcc.n	800024c <__aeabi_uidiv+0xd8>
 8000248:	00cb      	lsls	r3, r1, #3
 800024a:	1ac0      	subs	r0, r0, r3
 800024c:	4152      	adcs	r2, r2
 800024e:	0883      	lsrs	r3, r0, #2
 8000250:	428b      	cmp	r3, r1
 8000252:	d301      	bcc.n	8000258 <__aeabi_uidiv+0xe4>
 8000254:	008b      	lsls	r3, r1, #2
 8000256:	1ac0      	subs	r0, r0, r3
 8000258:	4152      	adcs	r2, r2
 800025a:	0843      	lsrs	r3, r0, #1
 800025c:	428b      	cmp	r3, r1
 800025e:	d301      	bcc.n	8000264 <__aeabi_uidiv+0xf0>
 8000260:	004b      	lsls	r3, r1, #1
 8000262:	1ac0      	subs	r0, r0, r3
 8000264:	4152      	adcs	r2, r2
 8000266:	1a41      	subs	r1, r0, r1
 8000268:	d200      	bcs.n	800026c <__aeabi_uidiv+0xf8>
 800026a:	4601      	mov	r1, r0
 800026c:	4152      	adcs	r2, r2
 800026e:	4610      	mov	r0, r2
 8000270:	4770      	bx	lr
 8000272:	e7ff      	b.n	8000274 <__aeabi_uidiv+0x100>
 8000274:	b501      	push	{r0, lr}
 8000276:	2000      	movs	r0, #0
 8000278:	f000 f80c 	bl	8000294 <__aeabi_idiv0>
 800027c:	bd02      	pop	{r1, pc}
 800027e:	46c0      	nop			; (mov r8, r8)

08000280 <__aeabi_uidivmod>:
 8000280:	2900      	cmp	r1, #0
 8000282:	d0f7      	beq.n	8000274 <__aeabi_uidiv+0x100>
 8000284:	b503      	push	{r0, r1, lr}
 8000286:	f7ff ff75 	bl	8000174 <__aeabi_uidiv>
 800028a:	bc0e      	pop	{r1, r2, r3}
 800028c:	4342      	muls	r2, r0
 800028e:	1a89      	subs	r1, r1, r2
 8000290:	4718      	bx	r3
 8000292:	46c0      	nop			; (mov r8, r8)

08000294 <__aeabi_idiv0>:
 8000294:	4770      	bx	lr
 8000296:	46c0      	nop			; (mov r8, r8)

08000298 <Reset_Handler>:
 8000298:	480d      	ldr	r0, [pc, #52]	; (80002d0 <LoopForever+0x2>)
 800029a:	4685      	mov	sp, r0
 800029c:	480d      	ldr	r0, [pc, #52]	; (80002d4 <LoopForever+0x6>)
 800029e:	490e      	ldr	r1, [pc, #56]	; (80002d8 <LoopForever+0xa>)
 80002a0:	4a0e      	ldr	r2, [pc, #56]	; (80002dc <LoopForever+0xe>)
 80002a2:	2300      	movs	r3, #0
 80002a4:	e002      	b.n	80002ac <LoopCopyDataInit>

080002a6 <CopyDataInit>:
 80002a6:	58d4      	ldr	r4, [r2, r3]
 80002a8:	50c4      	str	r4, [r0, r3]
 80002aa:	3304      	adds	r3, #4

080002ac <LoopCopyDataInit>:
 80002ac:	18c4      	adds	r4, r0, r3
 80002ae:	428c      	cmp	r4, r1
 80002b0:	d3f9      	bcc.n	80002a6 <CopyDataInit>
 80002b2:	4a0b      	ldr	r2, [pc, #44]	; (80002e0 <LoopForever+0x12>)
 80002b4:	4c0b      	ldr	r4, [pc, #44]	; (80002e4 <LoopForever+0x16>)
 80002b6:	2300      	movs	r3, #0
 80002b8:	e001      	b.n	80002be <LoopFillZerobss>

080002ba <FillZerobss>:
 80002ba:	6013      	str	r3, [r2, #0]
 80002bc:	3204      	adds	r2, #4

080002be <LoopFillZerobss>:
 80002be:	42a2      	cmp	r2, r4
 80002c0:	d3fb      	bcc.n	80002ba <FillZerobss>
 80002c2:	f000 fc01 	bl	8000ac8 <SystemInit>
 80002c6:	f002 fc19 	bl	8002afc <__libc_init_array>
 80002ca:	f000 fbef 	bl	8000aac <main>

080002ce <LoopForever>:
 80002ce:	e7fe      	b.n	80002ce <LoopForever>
 80002d0:	20002000 	.word	0x20002000
 80002d4:	20000000 	.word	0x20000000
 80002d8:	20000430 	.word	0x20000430
 80002dc:	08002f08 	.word	0x08002f08
 80002e0:	20000430 	.word	0x20000430
 80002e4:	200007e4 	.word	0x200007e4

080002e8 <ADC1_COMP_IRQHandler>:
 80002e8:	e7fe      	b.n	80002e8 <ADC1_COMP_IRQHandler>
	...

080002ec <NVIC_SetPriority>:
 80002ec:	b5b0      	push	{r4, r5, r7, lr}
 80002ee:	b082      	sub	sp, #8
 80002f0:	af00      	add	r7, sp, #0
 80002f2:	1c02      	adds	r2, r0, #0
 80002f4:	6039      	str	r1, [r7, #0]
 80002f6:	1dfb      	adds	r3, r7, #7
 80002f8:	701a      	strb	r2, [r3, #0]
 80002fa:	1dfb      	adds	r3, r7, #7
 80002fc:	781b      	ldrb	r3, [r3, #0]
 80002fe:	2b7f      	cmp	r3, #127	; 0x7f
 8000300:	d92f      	bls.n	8000362 <NVIC_SetPriority+0x76>
 8000302:	4c2d      	ldr	r4, [pc, #180]	; (80003b8 <NVIC_SetPriority+0xcc>)
 8000304:	1dfb      	adds	r3, r7, #7
 8000306:	781b      	ldrb	r3, [r3, #0]
 8000308:	1c1a      	adds	r2, r3, #0
 800030a:	230f      	movs	r3, #15
 800030c:	4013      	ands	r3, r2
 800030e:	3b08      	subs	r3, #8
 8000310:	0899      	lsrs	r1, r3, #2
 8000312:	4a29      	ldr	r2, [pc, #164]	; (80003b8 <NVIC_SetPriority+0xcc>)
 8000314:	1dfb      	adds	r3, r7, #7
 8000316:	781b      	ldrb	r3, [r3, #0]
 8000318:	1c18      	adds	r0, r3, #0
 800031a:	230f      	movs	r3, #15
 800031c:	4003      	ands	r3, r0
 800031e:	3b08      	subs	r3, #8
 8000320:	089b      	lsrs	r3, r3, #2
 8000322:	3306      	adds	r3, #6
 8000324:	009b      	lsls	r3, r3, #2
 8000326:	18d3      	adds	r3, r2, r3
 8000328:	685b      	ldr	r3, [r3, #4]
 800032a:	1dfa      	adds	r2, r7, #7
 800032c:	7812      	ldrb	r2, [r2, #0]
 800032e:	1c10      	adds	r0, r2, #0
 8000330:	2203      	movs	r2, #3
 8000332:	4002      	ands	r2, r0
 8000334:	00d2      	lsls	r2, r2, #3
 8000336:	1c10      	adds	r0, r2, #0
 8000338:	22ff      	movs	r2, #255	; 0xff
 800033a:	4082      	lsls	r2, r0
 800033c:	43d2      	mvns	r2, r2
 800033e:	401a      	ands	r2, r3
 8000340:	683b      	ldr	r3, [r7, #0]
 8000342:	019b      	lsls	r3, r3, #6
 8000344:	20ff      	movs	r0, #255	; 0xff
 8000346:	4003      	ands	r3, r0
 8000348:	1df8      	adds	r0, r7, #7
 800034a:	7800      	ldrb	r0, [r0, #0]
 800034c:	1c05      	adds	r5, r0, #0
 800034e:	2003      	movs	r0, #3
 8000350:	4028      	ands	r0, r5
 8000352:	00c0      	lsls	r0, r0, #3
 8000354:	4083      	lsls	r3, r0
 8000356:	431a      	orrs	r2, r3
 8000358:	1d8b      	adds	r3, r1, #6
 800035a:	009b      	lsls	r3, r3, #2
 800035c:	18e3      	adds	r3, r4, r3
 800035e:	605a      	str	r2, [r3, #4]
 8000360:	e026      	b.n	80003b0 <NVIC_SetPriority+0xc4>
 8000362:	4c16      	ldr	r4, [pc, #88]	; (80003bc <NVIC_SetPriority+0xd0>)
 8000364:	1dfb      	adds	r3, r7, #7
 8000366:	781b      	ldrb	r3, [r3, #0]
 8000368:	b25b      	sxtb	r3, r3
 800036a:	089b      	lsrs	r3, r3, #2
 800036c:	4913      	ldr	r1, [pc, #76]	; (80003bc <NVIC_SetPriority+0xd0>)
 800036e:	1dfa      	adds	r2, r7, #7
 8000370:	7812      	ldrb	r2, [r2, #0]
 8000372:	b252      	sxtb	r2, r2
 8000374:	0892      	lsrs	r2, r2, #2
 8000376:	32c0      	adds	r2, #192	; 0xc0
 8000378:	0092      	lsls	r2, r2, #2
 800037a:	5852      	ldr	r2, [r2, r1]
 800037c:	1df9      	adds	r1, r7, #7
 800037e:	7809      	ldrb	r1, [r1, #0]
 8000380:	1c08      	adds	r0, r1, #0
 8000382:	2103      	movs	r1, #3
 8000384:	4001      	ands	r1, r0
 8000386:	00c9      	lsls	r1, r1, #3
 8000388:	1c08      	adds	r0, r1, #0
 800038a:	21ff      	movs	r1, #255	; 0xff
 800038c:	4081      	lsls	r1, r0
 800038e:	43c9      	mvns	r1, r1
 8000390:	4011      	ands	r1, r2
 8000392:	683a      	ldr	r2, [r7, #0]
 8000394:	0192      	lsls	r2, r2, #6
 8000396:	20ff      	movs	r0, #255	; 0xff
 8000398:	4002      	ands	r2, r0
 800039a:	1df8      	adds	r0, r7, #7
 800039c:	7800      	ldrb	r0, [r0, #0]
 800039e:	1c05      	adds	r5, r0, #0
 80003a0:	2003      	movs	r0, #3
 80003a2:	4028      	ands	r0, r5
 80003a4:	00c0      	lsls	r0, r0, #3
 80003a6:	4082      	lsls	r2, r0
 80003a8:	430a      	orrs	r2, r1
 80003aa:	33c0      	adds	r3, #192	; 0xc0
 80003ac:	009b      	lsls	r3, r3, #2
 80003ae:	511a      	str	r2, [r3, r4]
 80003b0:	46bd      	mov	sp, r7
 80003b2:	b002      	add	sp, #8
 80003b4:	bdb0      	pop	{r4, r5, r7, pc}
 80003b6:	46c0      	nop			; (mov r8, r8)
 80003b8:	e000ed00 	.word	0xe000ed00
 80003bc:	e000e100 	.word	0xe000e100

080003c0 <SysTick_Config>:
 80003c0:	b580      	push	{r7, lr}
 80003c2:	b082      	sub	sp, #8
 80003c4:	af00      	add	r7, sp, #0
 80003c6:	6078      	str	r0, [r7, #4]
 80003c8:	687b      	ldr	r3, [r7, #4]
 80003ca:	3b01      	subs	r3, #1
 80003cc:	4a0c      	ldr	r2, [pc, #48]	; (8000400 <SysTick_Config+0x40>)
 80003ce:	4293      	cmp	r3, r2
 80003d0:	d901      	bls.n	80003d6 <SysTick_Config+0x16>
 80003d2:	2301      	movs	r3, #1
 80003d4:	e010      	b.n	80003f8 <SysTick_Config+0x38>
 80003d6:	4b0b      	ldr	r3, [pc, #44]	; (8000404 <SysTick_Config+0x44>)
 80003d8:	687a      	ldr	r2, [r7, #4]
 80003da:	3a01      	subs	r2, #1
 80003dc:	605a      	str	r2, [r3, #4]
 80003de:	2301      	movs	r3, #1
 80003e0:	425b      	negs	r3, r3
 80003e2:	1c18      	adds	r0, r3, #0
 80003e4:	2103      	movs	r1, #3
 80003e6:	f7ff ff81 	bl	80002ec <NVIC_SetPriority>
 80003ea:	4b06      	ldr	r3, [pc, #24]	; (8000404 <SysTick_Config+0x44>)
 80003ec:	2200      	movs	r2, #0
 80003ee:	609a      	str	r2, [r3, #8]
 80003f0:	4b04      	ldr	r3, [pc, #16]	; (8000404 <SysTick_Config+0x44>)
 80003f2:	2207      	movs	r2, #7
 80003f4:	601a      	str	r2, [r3, #0]
 80003f6:	2300      	movs	r3, #0
 80003f8:	1c18      	adds	r0, r3, #0
 80003fa:	46bd      	mov	sp, r7
 80003fc:	b002      	add	sp, #8
 80003fe:	bd80      	pop	{r7, pc}
 8000400:	00ffffff 	.word	0x00ffffff
 8000404:	e000e010 	.word	0xe000e010

08000408 <LL_AHB1_GRP1_EnableClock>:
 8000408:	b580      	push	{r7, lr}
 800040a:	b084      	sub	sp, #16
 800040c:	af00      	add	r7, sp, #0
 800040e:	6078      	str	r0, [r7, #4]
 8000410:	4b07      	ldr	r3, [pc, #28]	; (8000430 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000412:	4a07      	ldr	r2, [pc, #28]	; (8000430 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000414:	6951      	ldr	r1, [r2, #20]
 8000416:	687a      	ldr	r2, [r7, #4]
 8000418:	430a      	orrs	r2, r1
 800041a:	615a      	str	r2, [r3, #20]
 800041c:	4b04      	ldr	r3, [pc, #16]	; (8000430 <LL_AHB1_GRP1_EnableClock+0x28>)
 800041e:	695b      	ldr	r3, [r3, #20]
 8000420:	687a      	ldr	r2, [r7, #4]
 8000422:	4013      	ands	r3, r2
 8000424:	60fb      	str	r3, [r7, #12]
 8000426:	68fb      	ldr	r3, [r7, #12]
 8000428:	46bd      	mov	sp, r7
 800042a:	b004      	add	sp, #16
 800042c:	bd80      	pop	{r7, pc}
 800042e:	46c0      	nop			; (mov r8, r8)
 8000430:	40021000 	.word	0x40021000

08000434 <LL_APB1_GRP2_EnableClock>:
 8000434:	b580      	push	{r7, lr}
 8000436:	b084      	sub	sp, #16
 8000438:	af00      	add	r7, sp, #0
 800043a:	6078      	str	r0, [r7, #4]
 800043c:	4b07      	ldr	r3, [pc, #28]	; (800045c <LL_APB1_GRP2_EnableClock+0x28>)
 800043e:	4a07      	ldr	r2, [pc, #28]	; (800045c <LL_APB1_GRP2_EnableClock+0x28>)
 8000440:	6991      	ldr	r1, [r2, #24]
 8000442:	687a      	ldr	r2, [r7, #4]
 8000444:	430a      	orrs	r2, r1
 8000446:	619a      	str	r2, [r3, #24]
 8000448:	4b04      	ldr	r3, [pc, #16]	; (800045c <LL_APB1_GRP2_EnableClock+0x28>)
 800044a:	699b      	ldr	r3, [r3, #24]
 800044c:	687a      	ldr	r2, [r7, #4]
 800044e:	4013      	ands	r3, r2
 8000450:	60fb      	str	r3, [r7, #12]
 8000452:	68fb      	ldr	r3, [r7, #12]
 8000454:	46bd      	mov	sp, r7
 8000456:	b004      	add	sp, #16
 8000458:	bd80      	pop	{r7, pc}
 800045a:	46c0      	nop			; (mov r8, r8)
 800045c:	40021000 	.word	0x40021000

08000460 <LL_GPIO_SetPinMode>:
 8000460:	b580      	push	{r7, lr}
 8000462:	b084      	sub	sp, #16
 8000464:	af00      	add	r7, sp, #0
 8000466:	60f8      	str	r0, [r7, #12]
 8000468:	60b9      	str	r1, [r7, #8]
 800046a:	607a      	str	r2, [r7, #4]
 800046c:	68fb      	ldr	r3, [r7, #12]
 800046e:	6819      	ldr	r1, [r3, #0]
 8000470:	68bb      	ldr	r3, [r7, #8]
 8000472:	68ba      	ldr	r2, [r7, #8]
 8000474:	435a      	muls	r2, r3
 8000476:	1c13      	adds	r3, r2, #0
 8000478:	005b      	lsls	r3, r3, #1
 800047a:	189b      	adds	r3, r3, r2
 800047c:	43db      	mvns	r3, r3
 800047e:	400b      	ands	r3, r1
 8000480:	1c1a      	adds	r2, r3, #0
 8000482:	68bb      	ldr	r3, [r7, #8]
 8000484:	68b9      	ldr	r1, [r7, #8]
 8000486:	434b      	muls	r3, r1
 8000488:	6879      	ldr	r1, [r7, #4]
 800048a:	434b      	muls	r3, r1
 800048c:	431a      	orrs	r2, r3
 800048e:	68fb      	ldr	r3, [r7, #12]
 8000490:	601a      	str	r2, [r3, #0]
 8000492:	46bd      	mov	sp, r7
 8000494:	b004      	add	sp, #16
 8000496:	bd80      	pop	{r7, pc}

08000498 <LL_GPIO_SetPinSpeed>:
 8000498:	b580      	push	{r7, lr}
 800049a:	b084      	sub	sp, #16
 800049c:	af00      	add	r7, sp, #0
 800049e:	60f8      	str	r0, [r7, #12]
 80004a0:	60b9      	str	r1, [r7, #8]
 80004a2:	607a      	str	r2, [r7, #4]
 80004a4:	68fb      	ldr	r3, [r7, #12]
 80004a6:	6899      	ldr	r1, [r3, #8]
 80004a8:	68bb      	ldr	r3, [r7, #8]
 80004aa:	68ba      	ldr	r2, [r7, #8]
 80004ac:	435a      	muls	r2, r3
 80004ae:	1c13      	adds	r3, r2, #0
 80004b0:	005b      	lsls	r3, r3, #1
 80004b2:	189b      	adds	r3, r3, r2
 80004b4:	43db      	mvns	r3, r3
 80004b6:	400b      	ands	r3, r1
 80004b8:	1c1a      	adds	r2, r3, #0
 80004ba:	68bb      	ldr	r3, [r7, #8]
 80004bc:	68b9      	ldr	r1, [r7, #8]
 80004be:	434b      	muls	r3, r1
 80004c0:	6879      	ldr	r1, [r7, #4]
 80004c2:	434b      	muls	r3, r1
 80004c4:	431a      	orrs	r2, r3
 80004c6:	68fb      	ldr	r3, [r7, #12]
 80004c8:	609a      	str	r2, [r3, #8]
 80004ca:	46bd      	mov	sp, r7
 80004cc:	b004      	add	sp, #16
 80004ce:	bd80      	pop	{r7, pc}

080004d0 <LL_GPIO_SetAFPin_8_15>:
 80004d0:	b580      	push	{r7, lr}
 80004d2:	b084      	sub	sp, #16
 80004d4:	af00      	add	r7, sp, #0
 80004d6:	60f8      	str	r0, [r7, #12]
 80004d8:	60b9      	str	r1, [r7, #8]
 80004da:	607a      	str	r2, [r7, #4]
 80004dc:	68fb      	ldr	r3, [r7, #12]
 80004de:	6a59      	ldr	r1, [r3, #36]	; 0x24
 80004e0:	68bb      	ldr	r3, [r7, #8]
 80004e2:	0a1b      	lsrs	r3, r3, #8
 80004e4:	68ba      	ldr	r2, [r7, #8]
 80004e6:	0a12      	lsrs	r2, r2, #8
 80004e8:	4353      	muls	r3, r2
 80004ea:	68ba      	ldr	r2, [r7, #8]
 80004ec:	0a12      	lsrs	r2, r2, #8
 80004ee:	4353      	muls	r3, r2
 80004f0:	68ba      	ldr	r2, [r7, #8]
 80004f2:	0a12      	lsrs	r2, r2, #8
 80004f4:	435a      	muls	r2, r3
 80004f6:	1c13      	adds	r3, r2, #0
 80004f8:	011b      	lsls	r3, r3, #4
 80004fa:	1a9b      	subs	r3, r3, r2
 80004fc:	43db      	mvns	r3, r3
 80004fe:	400b      	ands	r3, r1
 8000500:	1c1a      	adds	r2, r3, #0
 8000502:	68bb      	ldr	r3, [r7, #8]
 8000504:	0a1b      	lsrs	r3, r3, #8
 8000506:	68b9      	ldr	r1, [r7, #8]
 8000508:	0a09      	lsrs	r1, r1, #8
 800050a:	434b      	muls	r3, r1
 800050c:	68b9      	ldr	r1, [r7, #8]
 800050e:	0a09      	lsrs	r1, r1, #8
 8000510:	434b      	muls	r3, r1
 8000512:	68b9      	ldr	r1, [r7, #8]
 8000514:	0a09      	lsrs	r1, r1, #8
 8000516:	434b      	muls	r3, r1
 8000518:	6879      	ldr	r1, [r7, #4]
 800051a:	434b      	muls	r3, r1
 800051c:	431a      	orrs	r2, r3
 800051e:	68fb      	ldr	r3, [r7, #12]
 8000520:	625a      	str	r2, [r3, #36]	; 0x24
 8000522:	46bd      	mov	sp, r7
 8000524:	b004      	add	sp, #16
 8000526:	bd80      	pop	{r7, pc}

08000528 <LL_RCC_HSI_Enable>:
 8000528:	b580      	push	{r7, lr}
 800052a:	af00      	add	r7, sp, #0
 800052c:	4b03      	ldr	r3, [pc, #12]	; (800053c <LL_RCC_HSI_Enable+0x14>)
 800052e:	4a03      	ldr	r2, [pc, #12]	; (800053c <LL_RCC_HSI_Enable+0x14>)
 8000530:	6812      	ldr	r2, [r2, #0]
 8000532:	2101      	movs	r1, #1
 8000534:	430a      	orrs	r2, r1
 8000536:	601a      	str	r2, [r3, #0]
 8000538:	46bd      	mov	sp, r7
 800053a:	bd80      	pop	{r7, pc}
 800053c:	40021000 	.word	0x40021000

08000540 <LL_RCC_HSI_IsReady>:
 8000540:	b580      	push	{r7, lr}
 8000542:	af00      	add	r7, sp, #0
 8000544:	4b04      	ldr	r3, [pc, #16]	; (8000558 <LL_RCC_HSI_IsReady+0x18>)
 8000546:	681b      	ldr	r3, [r3, #0]
 8000548:	2202      	movs	r2, #2
 800054a:	4013      	ands	r3, r2
 800054c:	1e5a      	subs	r2, r3, #1
 800054e:	4193      	sbcs	r3, r2
 8000550:	b2db      	uxtb	r3, r3
 8000552:	1c18      	adds	r0, r3, #0
 8000554:	46bd      	mov	sp, r7
 8000556:	bd80      	pop	{r7, pc}
 8000558:	40021000 	.word	0x40021000

0800055c <LL_RCC_SetSysClkSource>:
 800055c:	b580      	push	{r7, lr}
 800055e:	b082      	sub	sp, #8
 8000560:	af00      	add	r7, sp, #0
 8000562:	6078      	str	r0, [r7, #4]
 8000564:	4b05      	ldr	r3, [pc, #20]	; (800057c <LL_RCC_SetSysClkSource+0x20>)
 8000566:	4a05      	ldr	r2, [pc, #20]	; (800057c <LL_RCC_SetSysClkSource+0x20>)
 8000568:	6852      	ldr	r2, [r2, #4]
 800056a:	2103      	movs	r1, #3
 800056c:	438a      	bics	r2, r1
 800056e:	1c11      	adds	r1, r2, #0
 8000570:	687a      	ldr	r2, [r7, #4]
 8000572:	430a      	orrs	r2, r1
 8000574:	605a      	str	r2, [r3, #4]
 8000576:	46bd      	mov	sp, r7
 8000578:	b002      	add	sp, #8
 800057a:	bd80      	pop	{r7, pc}
 800057c:	40021000 	.word	0x40021000

08000580 <LL_RCC_GetSysClkSource>:
 8000580:	b580      	push	{r7, lr}
 8000582:	af00      	add	r7, sp, #0
 8000584:	4b03      	ldr	r3, [pc, #12]	; (8000594 <LL_RCC_GetSysClkSource+0x14>)
 8000586:	685b      	ldr	r3, [r3, #4]
 8000588:	220c      	movs	r2, #12
 800058a:	4013      	ands	r3, r2
 800058c:	1c18      	adds	r0, r3, #0
 800058e:	46bd      	mov	sp, r7
 8000590:	bd80      	pop	{r7, pc}
 8000592:	46c0      	nop			; (mov r8, r8)
 8000594:	40021000 	.word	0x40021000

08000598 <LL_RCC_SetAHBPrescaler>:
 8000598:	b580      	push	{r7, lr}
 800059a:	b082      	sub	sp, #8
 800059c:	af00      	add	r7, sp, #0
 800059e:	6078      	str	r0, [r7, #4]
 80005a0:	4b05      	ldr	r3, [pc, #20]	; (80005b8 <LL_RCC_SetAHBPrescaler+0x20>)
 80005a2:	4a05      	ldr	r2, [pc, #20]	; (80005b8 <LL_RCC_SetAHBPrescaler+0x20>)
 80005a4:	6852      	ldr	r2, [r2, #4]
 80005a6:	21f0      	movs	r1, #240	; 0xf0
 80005a8:	438a      	bics	r2, r1
 80005aa:	1c11      	adds	r1, r2, #0
 80005ac:	687a      	ldr	r2, [r7, #4]
 80005ae:	430a      	orrs	r2, r1
 80005b0:	605a      	str	r2, [r3, #4]
 80005b2:	46bd      	mov	sp, r7
 80005b4:	b002      	add	sp, #8
 80005b6:	bd80      	pop	{r7, pc}
 80005b8:	40021000 	.word	0x40021000

080005bc <LL_RCC_SetAPB1Prescaler>:
 80005bc:	b580      	push	{r7, lr}
 80005be:	b082      	sub	sp, #8
 80005c0:	af00      	add	r7, sp, #0
 80005c2:	6078      	str	r0, [r7, #4]
 80005c4:	4b05      	ldr	r3, [pc, #20]	; (80005dc <LL_RCC_SetAPB1Prescaler+0x20>)
 80005c6:	4a05      	ldr	r2, [pc, #20]	; (80005dc <LL_RCC_SetAPB1Prescaler+0x20>)
 80005c8:	6852      	ldr	r2, [r2, #4]
 80005ca:	4905      	ldr	r1, [pc, #20]	; (80005e0 <LL_RCC_SetAPB1Prescaler+0x24>)
 80005cc:	4011      	ands	r1, r2
 80005ce:	687a      	ldr	r2, [r7, #4]
 80005d0:	430a      	orrs	r2, r1
 80005d2:	605a      	str	r2, [r3, #4]
 80005d4:	46bd      	mov	sp, r7
 80005d6:	b002      	add	sp, #8
 80005d8:	bd80      	pop	{r7, pc}
 80005da:	46c0      	nop			; (mov r8, r8)
 80005dc:	40021000 	.word	0x40021000
 80005e0:	fffff8ff 	.word	0xfffff8ff

080005e4 <LL_RCC_SetUSARTClockSource>:
 80005e4:	b580      	push	{r7, lr}
 80005e6:	b082      	sub	sp, #8
 80005e8:	af00      	add	r7, sp, #0
 80005ea:	6078      	str	r0, [r7, #4]
 80005ec:	4b08      	ldr	r3, [pc, #32]	; (8000610 <LL_RCC_SetUSARTClockSource+0x2c>)
 80005ee:	4a08      	ldr	r2, [pc, #32]	; (8000610 <LL_RCC_SetUSARTClockSource+0x2c>)
 80005f0:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80005f2:	6879      	ldr	r1, [r7, #4]
 80005f4:	0e09      	lsrs	r1, r1, #24
 80005f6:	1c08      	adds	r0, r1, #0
 80005f8:	2103      	movs	r1, #3
 80005fa:	4081      	lsls	r1, r0
 80005fc:	43c9      	mvns	r1, r1
 80005fe:	4011      	ands	r1, r2
 8000600:	687a      	ldr	r2, [r7, #4]
 8000602:	0212      	lsls	r2, r2, #8
 8000604:	0a12      	lsrs	r2, r2, #8
 8000606:	430a      	orrs	r2, r1
 8000608:	631a      	str	r2, [r3, #48]	; 0x30
 800060a:	46bd      	mov	sp, r7
 800060c:	b002      	add	sp, #8
 800060e:	bd80      	pop	{r7, pc}
 8000610:	40021000 	.word	0x40021000

08000614 <LL_RCC_PLL_Enable>:
 8000614:	b580      	push	{r7, lr}
 8000616:	af00      	add	r7, sp, #0
 8000618:	4b04      	ldr	r3, [pc, #16]	; (800062c <LL_RCC_PLL_Enable+0x18>)
 800061a:	4a04      	ldr	r2, [pc, #16]	; (800062c <LL_RCC_PLL_Enable+0x18>)
 800061c:	6812      	ldr	r2, [r2, #0]
 800061e:	2180      	movs	r1, #128	; 0x80
 8000620:	0449      	lsls	r1, r1, #17
 8000622:	430a      	orrs	r2, r1
 8000624:	601a      	str	r2, [r3, #0]
 8000626:	46bd      	mov	sp, r7
 8000628:	bd80      	pop	{r7, pc}
 800062a:	46c0      	nop			; (mov r8, r8)
 800062c:	40021000 	.word	0x40021000

08000630 <LL_RCC_PLL_IsReady>:
 8000630:	b580      	push	{r7, lr}
 8000632:	af00      	add	r7, sp, #0
 8000634:	4b05      	ldr	r3, [pc, #20]	; (800064c <LL_RCC_PLL_IsReady+0x1c>)
 8000636:	681a      	ldr	r2, [r3, #0]
 8000638:	2380      	movs	r3, #128	; 0x80
 800063a:	049b      	lsls	r3, r3, #18
 800063c:	4013      	ands	r3, r2
 800063e:	1e5a      	subs	r2, r3, #1
 8000640:	4193      	sbcs	r3, r2
 8000642:	b2db      	uxtb	r3, r3
 8000644:	1c18      	adds	r0, r3, #0
 8000646:	46bd      	mov	sp, r7
 8000648:	bd80      	pop	{r7, pc}
 800064a:	46c0      	nop			; (mov r8, r8)
 800064c:	40021000 	.word	0x40021000

08000650 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000650:	b580      	push	{r7, lr}
 8000652:	b082      	sub	sp, #8
 8000654:	af00      	add	r7, sp, #0
 8000656:	6078      	str	r0, [r7, #4]
 8000658:	6039      	str	r1, [r7, #0]
 800065a:	4b0d      	ldr	r3, [pc, #52]	; (8000690 <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 800065c:	4a0c      	ldr	r2, [pc, #48]	; (8000690 <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 800065e:	6852      	ldr	r2, [r2, #4]
 8000660:	490c      	ldr	r1, [pc, #48]	; (8000694 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000662:	4011      	ands	r1, r2
 8000664:	6878      	ldr	r0, [r7, #4]
 8000666:	2280      	movs	r2, #128	; 0x80
 8000668:	0252      	lsls	r2, r2, #9
 800066a:	4010      	ands	r0, r2
 800066c:	683a      	ldr	r2, [r7, #0]
 800066e:	4302      	orrs	r2, r0
 8000670:	430a      	orrs	r2, r1
 8000672:	605a      	str	r2, [r3, #4]
 8000674:	4b06      	ldr	r3, [pc, #24]	; (8000690 <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 8000676:	4a06      	ldr	r2, [pc, #24]	; (8000690 <LL_RCC_PLL_ConfigDomain_SYS+0x40>)
 8000678:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 800067a:	210f      	movs	r1, #15
 800067c:	438a      	bics	r2, r1
 800067e:	1c11      	adds	r1, r2, #0
 8000680:	687a      	ldr	r2, [r7, #4]
 8000682:	200f      	movs	r0, #15
 8000684:	4002      	ands	r2, r0
 8000686:	430a      	orrs	r2, r1
 8000688:	62da      	str	r2, [r3, #44]	; 0x2c
 800068a:	46bd      	mov	sp, r7
 800068c:	b002      	add	sp, #8
 800068e:	bd80      	pop	{r7, pc}
 8000690:	40021000 	.word	0x40021000
 8000694:	ffc2ffff 	.word	0xffc2ffff

08000698 <LL_FLASH_SetLatency>:
 8000698:	b580      	push	{r7, lr}
 800069a:	b082      	sub	sp, #8
 800069c:	af00      	add	r7, sp, #0
 800069e:	6078      	str	r0, [r7, #4]
 80006a0:	4b05      	ldr	r3, [pc, #20]	; (80006b8 <LL_FLASH_SetLatency+0x20>)
 80006a2:	4a05      	ldr	r2, [pc, #20]	; (80006b8 <LL_FLASH_SetLatency+0x20>)
 80006a4:	6812      	ldr	r2, [r2, #0]
 80006a6:	2101      	movs	r1, #1
 80006a8:	438a      	bics	r2, r1
 80006aa:	1c11      	adds	r1, r2, #0
 80006ac:	687a      	ldr	r2, [r7, #4]
 80006ae:	430a      	orrs	r2, r1
 80006b0:	601a      	str	r2, [r3, #0]
 80006b2:	46bd      	mov	sp, r7
 80006b4:	b002      	add	sp, #8
 80006b6:	bd80      	pop	{r7, pc}
 80006b8:	40022000 	.word	0x40022000

080006bc <LL_USART_Enable>:
 80006bc:	b580      	push	{r7, lr}
 80006be:	b082      	sub	sp, #8
 80006c0:	af00      	add	r7, sp, #0
 80006c2:	6078      	str	r0, [r7, #4]
 80006c4:	687b      	ldr	r3, [r7, #4]
 80006c6:	681b      	ldr	r3, [r3, #0]
 80006c8:	2201      	movs	r2, #1
 80006ca:	431a      	orrs	r2, r3
 80006cc:	687b      	ldr	r3, [r7, #4]
 80006ce:	601a      	str	r2, [r3, #0]
 80006d0:	46bd      	mov	sp, r7
 80006d2:	b002      	add	sp, #8
 80006d4:	bd80      	pop	{r7, pc}
 80006d6:	46c0      	nop			; (mov r8, r8)

080006d8 <LL_USART_SetTransferDirection>:
 80006d8:	b580      	push	{r7, lr}
 80006da:	b082      	sub	sp, #8
 80006dc:	af00      	add	r7, sp, #0
 80006de:	6078      	str	r0, [r7, #4]
 80006e0:	6039      	str	r1, [r7, #0]
 80006e2:	687b      	ldr	r3, [r7, #4]
 80006e4:	681b      	ldr	r3, [r3, #0]
 80006e6:	220c      	movs	r2, #12
 80006e8:	4393      	bics	r3, r2
 80006ea:	1c1a      	adds	r2, r3, #0
 80006ec:	683b      	ldr	r3, [r7, #0]
 80006ee:	431a      	orrs	r2, r3
 80006f0:	687b      	ldr	r3, [r7, #4]
 80006f2:	601a      	str	r2, [r3, #0]
 80006f4:	46bd      	mov	sp, r7
 80006f6:	b002      	add	sp, #8
 80006f8:	bd80      	pop	{r7, pc}
 80006fa:	46c0      	nop			; (mov r8, r8)

080006fc <LL_USART_SetParity>:
 80006fc:	b580      	push	{r7, lr}
 80006fe:	b082      	sub	sp, #8
 8000700:	af00      	add	r7, sp, #0
 8000702:	6078      	str	r0, [r7, #4]
 8000704:	6039      	str	r1, [r7, #0]
 8000706:	687b      	ldr	r3, [r7, #4]
 8000708:	681b      	ldr	r3, [r3, #0]
 800070a:	4a04      	ldr	r2, [pc, #16]	; (800071c <LL_USART_SetParity+0x20>)
 800070c:	401a      	ands	r2, r3
 800070e:	683b      	ldr	r3, [r7, #0]
 8000710:	431a      	orrs	r2, r3
 8000712:	687b      	ldr	r3, [r7, #4]
 8000714:	601a      	str	r2, [r3, #0]
 8000716:	46bd      	mov	sp, r7
 8000718:	b002      	add	sp, #8
 800071a:	bd80      	pop	{r7, pc}
 800071c:	fffff9ff 	.word	0xfffff9ff

08000720 <LL_USART_SetDataWidth>:
 8000720:	b580      	push	{r7, lr}
 8000722:	b082      	sub	sp, #8
 8000724:	af00      	add	r7, sp, #0
 8000726:	6078      	str	r0, [r7, #4]
 8000728:	6039      	str	r1, [r7, #0]
 800072a:	687b      	ldr	r3, [r7, #4]
 800072c:	681b      	ldr	r3, [r3, #0]
 800072e:	4a04      	ldr	r2, [pc, #16]	; (8000740 <LL_USART_SetDataWidth+0x20>)
 8000730:	401a      	ands	r2, r3
 8000732:	683b      	ldr	r3, [r7, #0]
 8000734:	431a      	orrs	r2, r3
 8000736:	687b      	ldr	r3, [r7, #4]
 8000738:	601a      	str	r2, [r3, #0]
 800073a:	46bd      	mov	sp, r7
 800073c:	b002      	add	sp, #8
 800073e:	bd80      	pop	{r7, pc}
 8000740:	ffffefff 	.word	0xffffefff

08000744 <LL_USART_SetStopBitsLength>:
 8000744:	b580      	push	{r7, lr}
 8000746:	b082      	sub	sp, #8
 8000748:	af00      	add	r7, sp, #0
 800074a:	6078      	str	r0, [r7, #4]
 800074c:	6039      	str	r1, [r7, #0]
 800074e:	687b      	ldr	r3, [r7, #4]
 8000750:	685b      	ldr	r3, [r3, #4]
 8000752:	4a04      	ldr	r2, [pc, #16]	; (8000764 <LL_USART_SetStopBitsLength+0x20>)
 8000754:	401a      	ands	r2, r3
 8000756:	683b      	ldr	r3, [r7, #0]
 8000758:	431a      	orrs	r2, r3
 800075a:	687b      	ldr	r3, [r7, #4]
 800075c:	605a      	str	r2, [r3, #4]
 800075e:	46bd      	mov	sp, r7
 8000760:	b002      	add	sp, #8
 8000762:	bd80      	pop	{r7, pc}
 8000764:	ffffcfff 	.word	0xffffcfff

08000768 <LL_USART_SetTransferBitOrder>:
 8000768:	b580      	push	{r7, lr}
 800076a:	b082      	sub	sp, #8
 800076c:	af00      	add	r7, sp, #0
 800076e:	6078      	str	r0, [r7, #4]
 8000770:	6039      	str	r1, [r7, #0]
 8000772:	687b      	ldr	r3, [r7, #4]
 8000774:	685b      	ldr	r3, [r3, #4]
 8000776:	4a04      	ldr	r2, [pc, #16]	; (8000788 <LL_USART_SetTransferBitOrder+0x20>)
 8000778:	401a      	ands	r2, r3
 800077a:	683b      	ldr	r3, [r7, #0]
 800077c:	431a      	orrs	r2, r3
 800077e:	687b      	ldr	r3, [r7, #4]
 8000780:	605a      	str	r2, [r3, #4]
 8000782:	46bd      	mov	sp, r7
 8000784:	b002      	add	sp, #8
 8000786:	bd80      	pop	{r7, pc}
 8000788:	fff7ffff 	.word	0xfff7ffff

0800078c <LL_USART_SetBaudRate>:
 800078c:	b5b0      	push	{r4, r5, r7, lr}
 800078e:	b084      	sub	sp, #16
 8000790:	af00      	add	r7, sp, #0
 8000792:	60f8      	str	r0, [r7, #12]
 8000794:	60b9      	str	r1, [r7, #8]
 8000796:	607a      	str	r2, [r7, #4]
 8000798:	603b      	str	r3, [r7, #0]
 800079a:	2500      	movs	r5, #0
 800079c:	2400      	movs	r4, #0
 800079e:	687a      	ldr	r2, [r7, #4]
 80007a0:	2380      	movs	r3, #128	; 0x80
 80007a2:	021b      	lsls	r3, r3, #8
 80007a4:	429a      	cmp	r2, r3
 80007a6:	d116      	bne.n	80007d6 <LL_USART_SetBaudRate+0x4a>
 80007a8:	68bb      	ldr	r3, [r7, #8]
 80007aa:	005a      	lsls	r2, r3, #1
 80007ac:	683b      	ldr	r3, [r7, #0]
 80007ae:	085b      	lsrs	r3, r3, #1
 80007b0:	18d3      	adds	r3, r2, r3
 80007b2:	1c18      	adds	r0, r3, #0
 80007b4:	6839      	ldr	r1, [r7, #0]
 80007b6:	f7ff fcdd 	bl	8000174 <__aeabi_uidiv>
 80007ba:	1c03      	adds	r3, r0, #0
 80007bc:	b29b      	uxth	r3, r3
 80007be:	1c1d      	adds	r5, r3, #0
 80007c0:	4b0d      	ldr	r3, [pc, #52]	; (80007f8 <LL_USART_SetBaudRate+0x6c>)
 80007c2:	402b      	ands	r3, r5
 80007c4:	1c1c      	adds	r4, r3, #0
 80007c6:	230f      	movs	r3, #15
 80007c8:	402b      	ands	r3, r5
 80007ca:	085b      	lsrs	r3, r3, #1
 80007cc:	b29b      	uxth	r3, r3
 80007ce:	431c      	orrs	r4, r3
 80007d0:	68fb      	ldr	r3, [r7, #12]
 80007d2:	60dc      	str	r4, [r3, #12]
 80007d4:	e00c      	b.n	80007f0 <LL_USART_SetBaudRate+0x64>
 80007d6:	683b      	ldr	r3, [r7, #0]
 80007d8:	085a      	lsrs	r2, r3, #1
 80007da:	68bb      	ldr	r3, [r7, #8]
 80007dc:	18d3      	adds	r3, r2, r3
 80007de:	1c18      	adds	r0, r3, #0
 80007e0:	6839      	ldr	r1, [r7, #0]
 80007e2:	f7ff fcc7 	bl	8000174 <__aeabi_uidiv>
 80007e6:	1c03      	adds	r3, r0, #0
 80007e8:	b29b      	uxth	r3, r3
 80007ea:	1c1a      	adds	r2, r3, #0
 80007ec:	68fb      	ldr	r3, [r7, #12]
 80007ee:	60da      	str	r2, [r3, #12]
 80007f0:	46bd      	mov	sp, r7
 80007f2:	b004      	add	sp, #16
 80007f4:	bdb0      	pop	{r4, r5, r7, pc}
 80007f6:	46c0      	nop			; (mov r8, r8)
 80007f8:	0000fff0 	.word	0x0000fff0

080007fc <LL_USART_IsActiveFlag_RXNE>:
 80007fc:	b580      	push	{r7, lr}
 80007fe:	b082      	sub	sp, #8
 8000800:	af00      	add	r7, sp, #0
 8000802:	6078      	str	r0, [r7, #4]
 8000804:	687b      	ldr	r3, [r7, #4]
 8000806:	69db      	ldr	r3, [r3, #28]
 8000808:	2220      	movs	r2, #32
 800080a:	4013      	ands	r3, r2
 800080c:	1e5a      	subs	r2, r3, #1
 800080e:	4193      	sbcs	r3, r2
 8000810:	b2db      	uxtb	r3, r3
 8000812:	1c18      	adds	r0, r3, #0
 8000814:	46bd      	mov	sp, r7
 8000816:	b002      	add	sp, #8
 8000818:	bd80      	pop	{r7, pc}
 800081a:	46c0      	nop			; (mov r8, r8)

0800081c <LL_USART_IsActiveFlag_TC>:
 800081c:	b580      	push	{r7, lr}
 800081e:	b082      	sub	sp, #8
 8000820:	af00      	add	r7, sp, #0
 8000822:	6078      	str	r0, [r7, #4]
 8000824:	687b      	ldr	r3, [r7, #4]
 8000826:	69db      	ldr	r3, [r3, #28]
 8000828:	2240      	movs	r2, #64	; 0x40
 800082a:	4013      	ands	r3, r2
 800082c:	1e5a      	subs	r2, r3, #1
 800082e:	4193      	sbcs	r3, r2
 8000830:	b2db      	uxtb	r3, r3
 8000832:	1c18      	adds	r0, r3, #0
 8000834:	46bd      	mov	sp, r7
 8000836:	b002      	add	sp, #8
 8000838:	bd80      	pop	{r7, pc}
 800083a:	46c0      	nop			; (mov r8, r8)

0800083c <LL_USART_IsActiveFlag_TEACK>:
 800083c:	b580      	push	{r7, lr}
 800083e:	b082      	sub	sp, #8
 8000840:	af00      	add	r7, sp, #0
 8000842:	6078      	str	r0, [r7, #4]
 8000844:	687b      	ldr	r3, [r7, #4]
 8000846:	69da      	ldr	r2, [r3, #28]
 8000848:	2380      	movs	r3, #128	; 0x80
 800084a:	039b      	lsls	r3, r3, #14
 800084c:	4013      	ands	r3, r2
 800084e:	1e5a      	subs	r2, r3, #1
 8000850:	4193      	sbcs	r3, r2
 8000852:	b2db      	uxtb	r3, r3
 8000854:	1c18      	adds	r0, r3, #0
 8000856:	46bd      	mov	sp, r7
 8000858:	b002      	add	sp, #8
 800085a:	bd80      	pop	{r7, pc}

0800085c <LL_USART_IsActiveFlag_REACK>:
 800085c:	b580      	push	{r7, lr}
 800085e:	b082      	sub	sp, #8
 8000860:	af00      	add	r7, sp, #0
 8000862:	6078      	str	r0, [r7, #4]
 8000864:	687b      	ldr	r3, [r7, #4]
 8000866:	69da      	ldr	r2, [r3, #28]
 8000868:	2380      	movs	r3, #128	; 0x80
 800086a:	03db      	lsls	r3, r3, #15
 800086c:	4013      	ands	r3, r2
 800086e:	1e5a      	subs	r2, r3, #1
 8000870:	4193      	sbcs	r3, r2
 8000872:	b2db      	uxtb	r3, r3
 8000874:	1c18      	adds	r0, r3, #0
 8000876:	46bd      	mov	sp, r7
 8000878:	b002      	add	sp, #8
 800087a:	bd80      	pop	{r7, pc}

0800087c <LL_USART_ReceiveData8>:
 800087c:	b580      	push	{r7, lr}
 800087e:	b082      	sub	sp, #8
 8000880:	af00      	add	r7, sp, #0
 8000882:	6078      	str	r0, [r7, #4]
 8000884:	687b      	ldr	r3, [r7, #4]
 8000886:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
 8000888:	b29b      	uxth	r3, r3
 800088a:	b2db      	uxtb	r3, r3
 800088c:	1c18      	adds	r0, r3, #0
 800088e:	46bd      	mov	sp, r7
 8000890:	b002      	add	sp, #8
 8000892:	bd80      	pop	{r7, pc}

08000894 <LL_USART_TransmitData8>:
 8000894:	b580      	push	{r7, lr}
 8000896:	b082      	sub	sp, #8
 8000898:	af00      	add	r7, sp, #0
 800089a:	6078      	str	r0, [r7, #4]
 800089c:	1c0a      	adds	r2, r1, #0
 800089e:	1cfb      	adds	r3, r7, #3
 80008a0:	701a      	strb	r2, [r3, #0]
 80008a2:	1cfb      	adds	r3, r7, #3
 80008a4:	781b      	ldrb	r3, [r3, #0]
 80008a6:	b29a      	uxth	r2, r3
 80008a8:	687b      	ldr	r3, [r7, #4]
 80008aa:	851a      	strh	r2, [r3, #40]	; 0x28
 80008ac:	46bd      	mov	sp, r7
 80008ae:	b002      	add	sp, #8
 80008b0:	bd80      	pop	{r7, pc}
 80008b2:	46c0      	nop			; (mov r8, r8)

080008b4 <usart_getc>:
 80008b4:	b590      	push	{r4, r7, lr}
 80008b6:	b083      	sub	sp, #12
 80008b8:	af00      	add	r7, sp, #0
 80008ba:	e006      	b.n	80008ca <usart_getc+0x16>
 80008bc:	1dfc      	adds	r4, r7, #7
 80008be:	4b09      	ldr	r3, [pc, #36]	; (80008e4 <usart_getc+0x30>)
 80008c0:	1c18      	adds	r0, r3, #0
 80008c2:	f7ff ffdb 	bl	800087c <LL_USART_ReceiveData8>
 80008c6:	1c03      	adds	r3, r0, #0
 80008c8:	7023      	strb	r3, [r4, #0]
 80008ca:	4b06      	ldr	r3, [pc, #24]	; (80008e4 <usart_getc+0x30>)
 80008cc:	1c18      	adds	r0, r3, #0
 80008ce:	f7ff ff95 	bl	80007fc <LL_USART_IsActiveFlag_RXNE>
 80008d2:	1e03      	subs	r3, r0, #0
 80008d4:	d0f2      	beq.n	80008bc <usart_getc+0x8>
 80008d6:	1dfb      	adds	r3, r7, #7
 80008d8:	781b      	ldrb	r3, [r3, #0]
 80008da:	1c18      	adds	r0, r3, #0
 80008dc:	46bd      	mov	sp, r7
 80008de:	b003      	add	sp, #12
 80008e0:	bd90      	pop	{r4, r7, pc}
 80008e2:	46c0      	nop			; (mov r8, r8)
 80008e4:	40013800 	.word	0x40013800

080008e8 <usart_putc>:
 80008e8:	b580      	push	{r7, lr}
 80008ea:	b082      	sub	sp, #8
 80008ec:	af00      	add	r7, sp, #0
 80008ee:	1c02      	adds	r2, r0, #0
 80008f0:	1dfb      	adds	r3, r7, #7
 80008f2:	701a      	strb	r2, [r3, #0]
 80008f4:	4a08      	ldr	r2, [pc, #32]	; (8000918 <usart_putc+0x30>)
 80008f6:	1dfb      	adds	r3, r7, #7
 80008f8:	781b      	ldrb	r3, [r3, #0]
 80008fa:	1c10      	adds	r0, r2, #0
 80008fc:	1c19      	adds	r1, r3, #0
 80008fe:	f7ff ffc9 	bl	8000894 <LL_USART_TransmitData8>
 8000902:	46c0      	nop			; (mov r8, r8)
 8000904:	4b04      	ldr	r3, [pc, #16]	; (8000918 <usart_putc+0x30>)
 8000906:	1c18      	adds	r0, r3, #0
 8000908:	f7ff ff88 	bl	800081c <LL_USART_IsActiveFlag_TC>
 800090c:	1e03      	subs	r3, r0, #0
 800090e:	d0f9      	beq.n	8000904 <usart_putc+0x1c>
 8000910:	46bd      	mov	sp, r7
 8000912:	b002      	add	sp, #8
 8000914:	bd80      	pop	{r7, pc}
 8000916:	46c0      	nop			; (mov r8, r8)
 8000918:	40013800 	.word	0x40013800

0800091c <config_USART>:
 800091c:	b580      	push	{r7, lr}
 800091e:	af00      	add	r7, sp, #0
 8000920:	2380      	movs	r3, #128	; 0x80
 8000922:	029b      	lsls	r3, r3, #10
 8000924:	1c18      	adds	r0, r3, #0
 8000926:	f7ff fd6f 	bl	8000408 <LL_AHB1_GRP1_EnableClock>
 800092a:	2390      	movs	r3, #144	; 0x90
 800092c:	05da      	lsls	r2, r3, #23
 800092e:	2380      	movs	r3, #128	; 0x80
 8000930:	009b      	lsls	r3, r3, #2
 8000932:	1c10      	adds	r0, r2, #0
 8000934:	1c19      	adds	r1, r3, #0
 8000936:	2202      	movs	r2, #2
 8000938:	f7ff fd92 	bl	8000460 <LL_GPIO_SetPinMode>
 800093c:	2390      	movs	r3, #144	; 0x90
 800093e:	05da      	lsls	r2, r3, #23
 8000940:	2380      	movs	r3, #128	; 0x80
 8000942:	009b      	lsls	r3, r3, #2
 8000944:	1c10      	adds	r0, r2, #0
 8000946:	1c19      	adds	r1, r3, #0
 8000948:	2201      	movs	r2, #1
 800094a:	f7ff fdc1 	bl	80004d0 <LL_GPIO_SetAFPin_8_15>
 800094e:	2390      	movs	r3, #144	; 0x90
 8000950:	05da      	lsls	r2, r3, #23
 8000952:	2380      	movs	r3, #128	; 0x80
 8000954:	009b      	lsls	r3, r3, #2
 8000956:	1c10      	adds	r0, r2, #0
 8000958:	1c19      	adds	r1, r3, #0
 800095a:	2203      	movs	r2, #3
 800095c:	f7ff fd9c 	bl	8000498 <LL_GPIO_SetPinSpeed>
 8000960:	2390      	movs	r3, #144	; 0x90
 8000962:	05da      	lsls	r2, r3, #23
 8000964:	2380      	movs	r3, #128	; 0x80
 8000966:	00db      	lsls	r3, r3, #3
 8000968:	1c10      	adds	r0, r2, #0
 800096a:	1c19      	adds	r1, r3, #0
 800096c:	2202      	movs	r2, #2
 800096e:	f7ff fd77 	bl	8000460 <LL_GPIO_SetPinMode>
 8000972:	2390      	movs	r3, #144	; 0x90
 8000974:	05da      	lsls	r2, r3, #23
 8000976:	2380      	movs	r3, #128	; 0x80
 8000978:	00db      	lsls	r3, r3, #3
 800097a:	1c10      	adds	r0, r2, #0
 800097c:	1c19      	adds	r1, r3, #0
 800097e:	2201      	movs	r2, #1
 8000980:	f7ff fda6 	bl	80004d0 <LL_GPIO_SetAFPin_8_15>
 8000984:	2390      	movs	r3, #144	; 0x90
 8000986:	05da      	lsls	r2, r3, #23
 8000988:	2380      	movs	r3, #128	; 0x80
 800098a:	00db      	lsls	r3, r3, #3
 800098c:	1c10      	adds	r0, r2, #0
 800098e:	1c19      	adds	r1, r3, #0
 8000990:	2203      	movs	r2, #3
 8000992:	f7ff fd81 	bl	8000498 <LL_GPIO_SetPinSpeed>
 8000996:	2380      	movs	r3, #128	; 0x80
 8000998:	01db      	lsls	r3, r3, #7
 800099a:	1c18      	adds	r0, r3, #0
 800099c:	f7ff fd4a 	bl	8000434 <LL_APB1_GRP2_EnableClock>
 80009a0:	2000      	movs	r0, #0
 80009a2:	f7ff fe1f 	bl	80005e4 <LL_RCC_SetUSARTClockSource>
 80009a6:	4b1e      	ldr	r3, [pc, #120]	; (8000a20 <config_USART+0x104>)
 80009a8:	1c18      	adds	r0, r3, #0
 80009aa:	210c      	movs	r1, #12
 80009ac:	f7ff fe94 	bl	80006d8 <LL_USART_SetTransferDirection>
 80009b0:	4b1b      	ldr	r3, [pc, #108]	; (8000a20 <config_USART+0x104>)
 80009b2:	1c18      	adds	r0, r3, #0
 80009b4:	2100      	movs	r1, #0
 80009b6:	f7ff fea1 	bl	80006fc <LL_USART_SetParity>
 80009ba:	4b19      	ldr	r3, [pc, #100]	; (8000a20 <config_USART+0x104>)
 80009bc:	1c18      	adds	r0, r3, #0
 80009be:	2100      	movs	r1, #0
 80009c0:	f7ff feae 	bl	8000720 <LL_USART_SetDataWidth>
 80009c4:	4b16      	ldr	r3, [pc, #88]	; (8000a20 <config_USART+0x104>)
 80009c6:	1c18      	adds	r0, r3, #0
 80009c8:	2100      	movs	r1, #0
 80009ca:	f7ff febb 	bl	8000744 <LL_USART_SetStopBitsLength>
 80009ce:	4b14      	ldr	r3, [pc, #80]	; (8000a20 <config_USART+0x104>)
 80009d0:	1c18      	adds	r0, r3, #0
 80009d2:	2100      	movs	r1, #0
 80009d4:	f7ff fec8 	bl	8000768 <LL_USART_SetTransferBitOrder>
 80009d8:	4b12      	ldr	r3, [pc, #72]	; (8000a24 <config_USART+0x108>)
 80009da:	681a      	ldr	r2, [r3, #0]
 80009dc:	4910      	ldr	r1, [pc, #64]	; (8000a20 <config_USART+0x104>)
 80009de:	23e1      	movs	r3, #225	; 0xe1
 80009e0:	025b      	lsls	r3, r3, #9
 80009e2:	1c08      	adds	r0, r1, #0
 80009e4:	1c11      	adds	r1, r2, #0
 80009e6:	2200      	movs	r2, #0
 80009e8:	f7ff fed0 	bl	800078c <LL_USART_SetBaudRate>
 80009ec:	4b0c      	ldr	r3, [pc, #48]	; (8000a20 <config_USART+0x104>)
 80009ee:	1c18      	adds	r0, r3, #0
 80009f0:	f7ff fe64 	bl	80006bc <LL_USART_Enable>
 80009f4:	46c0      	nop			; (mov r8, r8)
 80009f6:	4b0a      	ldr	r3, [pc, #40]	; (8000a20 <config_USART+0x104>)
 80009f8:	1c18      	adds	r0, r3, #0
 80009fa:	f7ff ff1f 	bl	800083c <LL_USART_IsActiveFlag_TEACK>
 80009fe:	1e03      	subs	r3, r0, #0
 8000a00:	d0f9      	beq.n	80009f6 <config_USART+0xda>
 8000a02:	4b07      	ldr	r3, [pc, #28]	; (8000a20 <config_USART+0x104>)
 8000a04:	1c18      	adds	r0, r3, #0
 8000a06:	f7ff ff29 	bl	800085c <LL_USART_IsActiveFlag_REACK>
 8000a0a:	1e03      	subs	r3, r0, #0
 8000a0c:	d0f3      	beq.n	80009f6 <config_USART+0xda>
 8000a0e:	4b06      	ldr	r3, [pc, #24]	; (8000a28 <config_USART+0x10c>)
 8000a10:	4a06      	ldr	r2, [pc, #24]	; (8000a2c <config_USART+0x110>)
 8000a12:	601a      	str	r2, [r3, #0]
 8000a14:	4b06      	ldr	r3, [pc, #24]	; (8000a30 <config_USART+0x114>)
 8000a16:	4a07      	ldr	r2, [pc, #28]	; (8000a34 <config_USART+0x118>)
 8000a18:	601a      	str	r2, [r3, #0]
 8000a1a:	46c0      	nop			; (mov r8, r8)
 8000a1c:	46bd      	mov	sp, r7
 8000a1e:	bd80      	pop	{r7, pc}
 8000a20:	40013800 	.word	0x40013800
 8000a24:	20000000 	.word	0x20000000
 8000a28:	200007e0 	.word	0x200007e0
 8000a2c:	080008e9 	.word	0x080008e9
 8000a30:	200007dc 	.word	0x200007dc
 8000a34:	080008b5 	.word	0x080008b5

08000a38 <config_RCC>:
 8000a38:	b580      	push	{r7, lr}
 8000a3a:	af00      	add	r7, sp, #0
 8000a3c:	2001      	movs	r0, #1
 8000a3e:	f7ff fe2b 	bl	8000698 <LL_FLASH_SetLatency>
 8000a42:	f7ff fd71 	bl	8000528 <LL_RCC_HSI_Enable>
 8000a46:	46c0      	nop			; (mov r8, r8)
 8000a48:	f7ff fd7a 	bl	8000540 <LL_RCC_HSI_IsReady>
 8000a4c:	1e03      	subs	r3, r0, #0
 8000a4e:	2b01      	cmp	r3, #1
 8000a50:	d1fa      	bne.n	8000a48 <config_RCC+0x10>
 8000a52:	23a0      	movs	r3, #160	; 0xa0
 8000a54:	039b      	lsls	r3, r3, #14
 8000a56:	2000      	movs	r0, #0
 8000a58:	1c19      	adds	r1, r3, #0
 8000a5a:	f7ff fdf9 	bl	8000650 <LL_RCC_PLL_ConfigDomain_SYS>
 8000a5e:	f7ff fdd9 	bl	8000614 <LL_RCC_PLL_Enable>
 8000a62:	46c0      	nop			; (mov r8, r8)
 8000a64:	f7ff fde4 	bl	8000630 <LL_RCC_PLL_IsReady>
 8000a68:	1e03      	subs	r3, r0, #0
 8000a6a:	2b01      	cmp	r3, #1
 8000a6c:	d1fa      	bne.n	8000a64 <config_RCC+0x2c>
 8000a6e:	2000      	movs	r0, #0
 8000a70:	f7ff fd92 	bl	8000598 <LL_RCC_SetAHBPrescaler>
 8000a74:	2002      	movs	r0, #2
 8000a76:	f7ff fd71 	bl	800055c <LL_RCC_SetSysClkSource>
 8000a7a:	46c0      	nop			; (mov r8, r8)
 8000a7c:	f7ff fd80 	bl	8000580 <LL_RCC_GetSysClkSource>
 8000a80:	1e03      	subs	r3, r0, #0
 8000a82:	2b08      	cmp	r3, #8
 8000a84:	d1fa      	bne.n	8000a7c <config_RCC+0x44>
 8000a86:	2000      	movs	r0, #0
 8000a88:	f7ff fd98 	bl	80005bc <LL_RCC_SetAPB1Prescaler>
 8000a8c:	4b04      	ldr	r3, [pc, #16]	; (8000aa0 <config_RCC+0x68>)
 8000a8e:	1c18      	adds	r0, r3, #0
 8000a90:	f7ff fc96 	bl	80003c0 <SysTick_Config>
 8000a94:	4b03      	ldr	r3, [pc, #12]	; (8000aa4 <config_RCC+0x6c>)
 8000a96:	4a04      	ldr	r2, [pc, #16]	; (8000aa8 <config_RCC+0x70>)
 8000a98:	601a      	str	r2, [r3, #0]
 8000a9a:	46bd      	mov	sp, r7
 8000a9c:	bd80      	pop	{r7, pc}
 8000a9e:	46c0      	nop			; (mov r8, r8)
 8000aa0:	0000bb80 	.word	0x0000bb80
 8000aa4:	20000000 	.word	0x20000000
 8000aa8:	02dc6c00 	.word	0x02dc6c00

08000aac <main>:
 8000aac:	b580      	push	{r7, lr}
 8000aae:	af00      	add	r7, sp, #0
 8000ab0:	f7ff ffc2 	bl	8000a38 <config_RCC>
 8000ab4:	f7ff ff32 	bl	800091c <config_USART>
 8000ab8:	4b02      	ldr	r3, [pc, #8]	; (8000ac4 <main+0x18>)
 8000aba:	1c18      	adds	r0, r3, #0
 8000abc:	f001 f8ac 	bl	8001c18 <can_do_setup>
 8000ac0:	e7fe      	b.n	8000ac0 <main+0x14>
 8000ac2:	46c0      	nop			; (mov r8, r8)
 8000ac4:	08001bf1 	.word	0x08001bf1

08000ac8 <SystemInit>:
 8000ac8:	b580      	push	{r7, lr}
 8000aca:	af00      	add	r7, sp, #0
 8000acc:	4b1a      	ldr	r3, [pc, #104]	; (8000b38 <SystemInit+0x70>)
 8000ace:	4a1a      	ldr	r2, [pc, #104]	; (8000b38 <SystemInit+0x70>)
 8000ad0:	6812      	ldr	r2, [r2, #0]
 8000ad2:	2101      	movs	r1, #1
 8000ad4:	430a      	orrs	r2, r1
 8000ad6:	601a      	str	r2, [r3, #0]
 8000ad8:	4b17      	ldr	r3, [pc, #92]	; (8000b38 <SystemInit+0x70>)
 8000ada:	4a17      	ldr	r2, [pc, #92]	; (8000b38 <SystemInit+0x70>)
 8000adc:	6852      	ldr	r2, [r2, #4]
 8000ade:	4917      	ldr	r1, [pc, #92]	; (8000b3c <SystemInit+0x74>)
 8000ae0:	400a      	ands	r2, r1
 8000ae2:	605a      	str	r2, [r3, #4]
 8000ae4:	4b14      	ldr	r3, [pc, #80]	; (8000b38 <SystemInit+0x70>)
 8000ae6:	4a14      	ldr	r2, [pc, #80]	; (8000b38 <SystemInit+0x70>)
 8000ae8:	6812      	ldr	r2, [r2, #0]
 8000aea:	4915      	ldr	r1, [pc, #84]	; (8000b40 <SystemInit+0x78>)
 8000aec:	400a      	ands	r2, r1
 8000aee:	601a      	str	r2, [r3, #0]
 8000af0:	4b11      	ldr	r3, [pc, #68]	; (8000b38 <SystemInit+0x70>)
 8000af2:	4a11      	ldr	r2, [pc, #68]	; (8000b38 <SystemInit+0x70>)
 8000af4:	6812      	ldr	r2, [r2, #0]
 8000af6:	4913      	ldr	r1, [pc, #76]	; (8000b44 <SystemInit+0x7c>)
 8000af8:	400a      	ands	r2, r1
 8000afa:	601a      	str	r2, [r3, #0]
 8000afc:	4b0e      	ldr	r3, [pc, #56]	; (8000b38 <SystemInit+0x70>)
 8000afe:	4a0e      	ldr	r2, [pc, #56]	; (8000b38 <SystemInit+0x70>)
 8000b00:	6852      	ldr	r2, [r2, #4]
 8000b02:	4911      	ldr	r1, [pc, #68]	; (8000b48 <SystemInit+0x80>)
 8000b04:	400a      	ands	r2, r1
 8000b06:	605a      	str	r2, [r3, #4]
 8000b08:	4b0b      	ldr	r3, [pc, #44]	; (8000b38 <SystemInit+0x70>)
 8000b0a:	4a0b      	ldr	r2, [pc, #44]	; (8000b38 <SystemInit+0x70>)
 8000b0c:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 8000b0e:	210f      	movs	r1, #15
 8000b10:	438a      	bics	r2, r1
 8000b12:	62da      	str	r2, [r3, #44]	; 0x2c
 8000b14:	4b08      	ldr	r3, [pc, #32]	; (8000b38 <SystemInit+0x70>)
 8000b16:	4a08      	ldr	r2, [pc, #32]	; (8000b38 <SystemInit+0x70>)
 8000b18:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8000b1a:	490c      	ldr	r1, [pc, #48]	; (8000b4c <SystemInit+0x84>)
 8000b1c:	400a      	ands	r2, r1
 8000b1e:	631a      	str	r2, [r3, #48]	; 0x30
 8000b20:	4b05      	ldr	r3, [pc, #20]	; (8000b38 <SystemInit+0x70>)
 8000b22:	4a05      	ldr	r2, [pc, #20]	; (8000b38 <SystemInit+0x70>)
 8000b24:	6b52      	ldr	r2, [r2, #52]	; 0x34
 8000b26:	2101      	movs	r1, #1
 8000b28:	438a      	bics	r2, r1
 8000b2a:	635a      	str	r2, [r3, #52]	; 0x34
 8000b2c:	4b02      	ldr	r3, [pc, #8]	; (8000b38 <SystemInit+0x70>)
 8000b2e:	2200      	movs	r2, #0
 8000b30:	609a      	str	r2, [r3, #8]
 8000b32:	46bd      	mov	sp, r7
 8000b34:	bd80      	pop	{r7, pc}
 8000b36:	46c0      	nop			; (mov r8, r8)
 8000b38:	40021000 	.word	0x40021000
 8000b3c:	f8ffb80c 	.word	0xf8ffb80c
 8000b40:	fef6ffff 	.word	0xfef6ffff
 8000b44:	fffbffff 	.word	0xfffbffff
 8000b48:	ffc0ffff 	.word	0xffc0ffff
 8000b4c:	fffffeac 	.word	0xfffffeac

08000b50 <LL_SPI_Enable>:
 8000b50:	b580      	push	{r7, lr}
 8000b52:	b082      	sub	sp, #8
 8000b54:	af00      	add	r7, sp, #0
 8000b56:	6078      	str	r0, [r7, #4]
 8000b58:	687b      	ldr	r3, [r7, #4]
 8000b5a:	681b      	ldr	r3, [r3, #0]
 8000b5c:	2240      	movs	r2, #64	; 0x40
 8000b5e:	431a      	orrs	r2, r3
 8000b60:	687b      	ldr	r3, [r7, #4]
 8000b62:	601a      	str	r2, [r3, #0]
 8000b64:	46bd      	mov	sp, r7
 8000b66:	b002      	add	sp, #8
 8000b68:	bd80      	pop	{r7, pc}
 8000b6a:	46c0      	nop			; (mov r8, r8)

08000b6c <LL_SPI_SetMode>:
 8000b6c:	b580      	push	{r7, lr}
 8000b6e:	b082      	sub	sp, #8
 8000b70:	af00      	add	r7, sp, #0
 8000b72:	6078      	str	r0, [r7, #4]
 8000b74:	6039      	str	r1, [r7, #0]
 8000b76:	687b      	ldr	r3, [r7, #4]
 8000b78:	681b      	ldr	r3, [r3, #0]
 8000b7a:	4a04      	ldr	r2, [pc, #16]	; (8000b8c <LL_SPI_SetMode+0x20>)
 8000b7c:	401a      	ands	r2, r3
 8000b7e:	683b      	ldr	r3, [r7, #0]
 8000b80:	431a      	orrs	r2, r3
 8000b82:	687b      	ldr	r3, [r7, #4]
 8000b84:	601a      	str	r2, [r3, #0]
 8000b86:	46bd      	mov	sp, r7
 8000b88:	b002      	add	sp, #8
 8000b8a:	bd80      	pop	{r7, pc}
 8000b8c:	fffffefb 	.word	0xfffffefb

08000b90 <LL_SPI_SetBaudRatePrescaler>:
 8000b90:	b580      	push	{r7, lr}
 8000b92:	b082      	sub	sp, #8
 8000b94:	af00      	add	r7, sp, #0
 8000b96:	6078      	str	r0, [r7, #4]
 8000b98:	6039      	str	r1, [r7, #0]
 8000b9a:	687b      	ldr	r3, [r7, #4]
 8000b9c:	681b      	ldr	r3, [r3, #0]
 8000b9e:	2238      	movs	r2, #56	; 0x38
 8000ba0:	4393      	bics	r3, r2
 8000ba2:	1c1a      	adds	r2, r3, #0
 8000ba4:	683b      	ldr	r3, [r7, #0]
 8000ba6:	431a      	orrs	r2, r3
 8000ba8:	687b      	ldr	r3, [r7, #4]
 8000baa:	601a      	str	r2, [r3, #0]
 8000bac:	46bd      	mov	sp, r7
 8000bae:	b002      	add	sp, #8
 8000bb0:	bd80      	pop	{r7, pc}
 8000bb2:	46c0      	nop			; (mov r8, r8)

08000bb4 <LL_SPI_SetTransferBitOrder>:
 8000bb4:	b580      	push	{r7, lr}
 8000bb6:	b082      	sub	sp, #8
 8000bb8:	af00      	add	r7, sp, #0
 8000bba:	6078      	str	r0, [r7, #4]
 8000bbc:	6039      	str	r1, [r7, #0]
 8000bbe:	687b      	ldr	r3, [r7, #4]
 8000bc0:	681b      	ldr	r3, [r3, #0]
 8000bc2:	2280      	movs	r2, #128	; 0x80
 8000bc4:	4393      	bics	r3, r2
 8000bc6:	1c1a      	adds	r2, r3, #0
 8000bc8:	683b      	ldr	r3, [r7, #0]
 8000bca:	431a      	orrs	r2, r3
 8000bcc:	687b      	ldr	r3, [r7, #4]
 8000bce:	601a      	str	r2, [r3, #0]
 8000bd0:	46bd      	mov	sp, r7
 8000bd2:	b002      	add	sp, #8
 8000bd4:	bd80      	pop	{r7, pc}
 8000bd6:	46c0      	nop			; (mov r8, r8)

08000bd8 <LL_SPI_SetDataWidth>:
 8000bd8:	b580      	push	{r7, lr}
 8000bda:	b082      	sub	sp, #8
 8000bdc:	af00      	add	r7, sp, #0
 8000bde:	6078      	str	r0, [r7, #4]
 8000be0:	6039      	str	r1, [r7, #0]
 8000be2:	687b      	ldr	r3, [r7, #4]
 8000be4:	685b      	ldr	r3, [r3, #4]
 8000be6:	4a04      	ldr	r2, [pc, #16]	; (8000bf8 <LL_SPI_SetDataWidth+0x20>)
 8000be8:	401a      	ands	r2, r3
 8000bea:	683b      	ldr	r3, [r7, #0]
 8000bec:	431a      	orrs	r2, r3
 8000bee:	687b      	ldr	r3, [r7, #4]
 8000bf0:	605a      	str	r2, [r3, #4]
 8000bf2:	46bd      	mov	sp, r7
 8000bf4:	b002      	add	sp, #8
 8000bf6:	bd80      	pop	{r7, pc}
 8000bf8:	fffff0ff 	.word	0xfffff0ff

08000bfc <LL_SPI_SetRxFIFOThreshold>:
 8000bfc:	b580      	push	{r7, lr}
 8000bfe:	b082      	sub	sp, #8
 8000c00:	af00      	add	r7, sp, #0
 8000c02:	6078      	str	r0, [r7, #4]
 8000c04:	6039      	str	r1, [r7, #0]
 8000c06:	687b      	ldr	r3, [r7, #4]
 8000c08:	685b      	ldr	r3, [r3, #4]
 8000c0a:	4a04      	ldr	r2, [pc, #16]	; (8000c1c <LL_SPI_SetRxFIFOThreshold+0x20>)
 8000c0c:	401a      	ands	r2, r3
 8000c0e:	683b      	ldr	r3, [r7, #0]
 8000c10:	431a      	orrs	r2, r3
 8000c12:	687b      	ldr	r3, [r7, #4]
 8000c14:	605a      	str	r2, [r3, #4]
 8000c16:	46bd      	mov	sp, r7
 8000c18:	b002      	add	sp, #8
 8000c1a:	bd80      	pop	{r7, pc}
 8000c1c:	ffffefff 	.word	0xffffefff

08000c20 <LL_SPI_SetNSSMode>:
 8000c20:	b580      	push	{r7, lr}
 8000c22:	b082      	sub	sp, #8
 8000c24:	af00      	add	r7, sp, #0
 8000c26:	6078      	str	r0, [r7, #4]
 8000c28:	6039      	str	r1, [r7, #0]
 8000c2a:	687b      	ldr	r3, [r7, #4]
 8000c2c:	681b      	ldr	r3, [r3, #0]
 8000c2e:	4a09      	ldr	r2, [pc, #36]	; (8000c54 <LL_SPI_SetNSSMode+0x34>)
 8000c30:	401a      	ands	r2, r3
 8000c32:	683b      	ldr	r3, [r7, #0]
 8000c34:	431a      	orrs	r2, r3
 8000c36:	687b      	ldr	r3, [r7, #4]
 8000c38:	601a      	str	r2, [r3, #0]
 8000c3a:	687b      	ldr	r3, [r7, #4]
 8000c3c:	685b      	ldr	r3, [r3, #4]
 8000c3e:	2204      	movs	r2, #4
 8000c40:	4393      	bics	r3, r2
 8000c42:	1c1a      	adds	r2, r3, #0
 8000c44:	683b      	ldr	r3, [r7, #0]
 8000c46:	0c1b      	lsrs	r3, r3, #16
 8000c48:	431a      	orrs	r2, r3
 8000c4a:	687b      	ldr	r3, [r7, #4]
 8000c4c:	605a      	str	r2, [r3, #4]
 8000c4e:	46bd      	mov	sp, r7
 8000c50:	b002      	add	sp, #8
 8000c52:	bd80      	pop	{r7, pc}
 8000c54:	fffffdff 	.word	0xfffffdff

08000c58 <LL_SPI_IsActiveFlag_RXNE>:
 8000c58:	b580      	push	{r7, lr}
 8000c5a:	b082      	sub	sp, #8
 8000c5c:	af00      	add	r7, sp, #0
 8000c5e:	6078      	str	r0, [r7, #4]
 8000c60:	687b      	ldr	r3, [r7, #4]
 8000c62:	689b      	ldr	r3, [r3, #8]
 8000c64:	2201      	movs	r2, #1
 8000c66:	4013      	ands	r3, r2
 8000c68:	1e5a      	subs	r2, r3, #1
 8000c6a:	4193      	sbcs	r3, r2
 8000c6c:	b2db      	uxtb	r3, r3
 8000c6e:	1c18      	adds	r0, r3, #0
 8000c70:	46bd      	mov	sp, r7
 8000c72:	b002      	add	sp, #8
 8000c74:	bd80      	pop	{r7, pc}
 8000c76:	46c0      	nop			; (mov r8, r8)

08000c78 <LL_SPI_IsActiveFlag_TXE>:
 8000c78:	b580      	push	{r7, lr}
 8000c7a:	b082      	sub	sp, #8
 8000c7c:	af00      	add	r7, sp, #0
 8000c7e:	6078      	str	r0, [r7, #4]
 8000c80:	687b      	ldr	r3, [r7, #4]
 8000c82:	689b      	ldr	r3, [r3, #8]
 8000c84:	2202      	movs	r2, #2
 8000c86:	4013      	ands	r3, r2
 8000c88:	1e5a      	subs	r2, r3, #1
 8000c8a:	4193      	sbcs	r3, r2
 8000c8c:	b2db      	uxtb	r3, r3
 8000c8e:	1c18      	adds	r0, r3, #0
 8000c90:	46bd      	mov	sp, r7
 8000c92:	b002      	add	sp, #8
 8000c94:	bd80      	pop	{r7, pc}
 8000c96:	46c0      	nop			; (mov r8, r8)

08000c98 <LL_SPI_IsActiveFlag_BSY>:
 8000c98:	b580      	push	{r7, lr}
 8000c9a:	b082      	sub	sp, #8
 8000c9c:	af00      	add	r7, sp, #0
 8000c9e:	6078      	str	r0, [r7, #4]
 8000ca0:	687b      	ldr	r3, [r7, #4]
 8000ca2:	689b      	ldr	r3, [r3, #8]
 8000ca4:	2280      	movs	r2, #128	; 0x80
 8000ca6:	4013      	ands	r3, r2
 8000ca8:	1e5a      	subs	r2, r3, #1
 8000caa:	4193      	sbcs	r3, r2
 8000cac:	b2db      	uxtb	r3, r3
 8000cae:	1c18      	adds	r0, r3, #0
 8000cb0:	46bd      	mov	sp, r7
 8000cb2:	b002      	add	sp, #8
 8000cb4:	bd80      	pop	{r7, pc}
 8000cb6:	46c0      	nop			; (mov r8, r8)

08000cb8 <LL_SPI_ReceiveData8>:
 8000cb8:	b580      	push	{r7, lr}
 8000cba:	b082      	sub	sp, #8
 8000cbc:	af00      	add	r7, sp, #0
 8000cbe:	6078      	str	r0, [r7, #4]
 8000cc0:	687b      	ldr	r3, [r7, #4]
 8000cc2:	68db      	ldr	r3, [r3, #12]
 8000cc4:	b2db      	uxtb	r3, r3
 8000cc6:	1c18      	adds	r0, r3, #0
 8000cc8:	46bd      	mov	sp, r7
 8000cca:	b002      	add	sp, #8
 8000ccc:	bd80      	pop	{r7, pc}
 8000cce:	46c0      	nop			; (mov r8, r8)

08000cd0 <LL_SPI_TransmitData8>:
 8000cd0:	b580      	push	{r7, lr}
 8000cd2:	b082      	sub	sp, #8
 8000cd4:	af00      	add	r7, sp, #0
 8000cd6:	6078      	str	r0, [r7, #4]
 8000cd8:	1c0a      	adds	r2, r1, #0
 8000cda:	1cfb      	adds	r3, r7, #3
 8000cdc:	701a      	strb	r2, [r3, #0]
 8000cde:	687b      	ldr	r3, [r7, #4]
 8000ce0:	330c      	adds	r3, #12
 8000ce2:	1cfa      	adds	r2, r7, #3
 8000ce4:	7812      	ldrb	r2, [r2, #0]
 8000ce6:	701a      	strb	r2, [r3, #0]
 8000ce8:	46bd      	mov	sp, r7
 8000cea:	b002      	add	sp, #8
 8000cec:	bd80      	pop	{r7, pc}
 8000cee:	46c0      	nop			; (mov r8, r8)

08000cf0 <LL_AHB1_GRP1_EnableClock>:
 8000cf0:	b580      	push	{r7, lr}
 8000cf2:	b084      	sub	sp, #16
 8000cf4:	af00      	add	r7, sp, #0
 8000cf6:	6078      	str	r0, [r7, #4]
 8000cf8:	4b07      	ldr	r3, [pc, #28]	; (8000d18 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000cfa:	4a07      	ldr	r2, [pc, #28]	; (8000d18 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000cfc:	6951      	ldr	r1, [r2, #20]
 8000cfe:	687a      	ldr	r2, [r7, #4]
 8000d00:	430a      	orrs	r2, r1
 8000d02:	615a      	str	r2, [r3, #20]
 8000d04:	4b04      	ldr	r3, [pc, #16]	; (8000d18 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000d06:	695b      	ldr	r3, [r3, #20]
 8000d08:	687a      	ldr	r2, [r7, #4]
 8000d0a:	4013      	ands	r3, r2
 8000d0c:	60fb      	str	r3, [r7, #12]
 8000d0e:	68fb      	ldr	r3, [r7, #12]
 8000d10:	46bd      	mov	sp, r7
 8000d12:	b004      	add	sp, #16
 8000d14:	bd80      	pop	{r7, pc}
 8000d16:	46c0      	nop			; (mov r8, r8)
 8000d18:	40021000 	.word	0x40021000

08000d1c <LL_APB1_GRP2_EnableClock>:
 8000d1c:	b580      	push	{r7, lr}
 8000d1e:	b084      	sub	sp, #16
 8000d20:	af00      	add	r7, sp, #0
 8000d22:	6078      	str	r0, [r7, #4]
 8000d24:	4b07      	ldr	r3, [pc, #28]	; (8000d44 <LL_APB1_GRP2_EnableClock+0x28>)
 8000d26:	4a07      	ldr	r2, [pc, #28]	; (8000d44 <LL_APB1_GRP2_EnableClock+0x28>)
 8000d28:	6991      	ldr	r1, [r2, #24]
 8000d2a:	687a      	ldr	r2, [r7, #4]
 8000d2c:	430a      	orrs	r2, r1
 8000d2e:	619a      	str	r2, [r3, #24]
 8000d30:	4b04      	ldr	r3, [pc, #16]	; (8000d44 <LL_APB1_GRP2_EnableClock+0x28>)
 8000d32:	699b      	ldr	r3, [r3, #24]
 8000d34:	687a      	ldr	r2, [r7, #4]
 8000d36:	4013      	ands	r3, r2
 8000d38:	60fb      	str	r3, [r7, #12]
 8000d3a:	68fb      	ldr	r3, [r7, #12]
 8000d3c:	46bd      	mov	sp, r7
 8000d3e:	b004      	add	sp, #16
 8000d40:	bd80      	pop	{r7, pc}
 8000d42:	46c0      	nop			; (mov r8, r8)
 8000d44:	40021000 	.word	0x40021000

08000d48 <LL_GPIO_SetPinMode>:
 8000d48:	b580      	push	{r7, lr}
 8000d4a:	b084      	sub	sp, #16
 8000d4c:	af00      	add	r7, sp, #0
 8000d4e:	60f8      	str	r0, [r7, #12]
 8000d50:	60b9      	str	r1, [r7, #8]
 8000d52:	607a      	str	r2, [r7, #4]
 8000d54:	68fb      	ldr	r3, [r7, #12]
 8000d56:	6819      	ldr	r1, [r3, #0]
 8000d58:	68bb      	ldr	r3, [r7, #8]
 8000d5a:	68ba      	ldr	r2, [r7, #8]
 8000d5c:	435a      	muls	r2, r3
 8000d5e:	1c13      	adds	r3, r2, #0
 8000d60:	005b      	lsls	r3, r3, #1
 8000d62:	189b      	adds	r3, r3, r2
 8000d64:	43db      	mvns	r3, r3
 8000d66:	400b      	ands	r3, r1
 8000d68:	1c1a      	adds	r2, r3, #0
 8000d6a:	68bb      	ldr	r3, [r7, #8]
 8000d6c:	68b9      	ldr	r1, [r7, #8]
 8000d6e:	434b      	muls	r3, r1
 8000d70:	6879      	ldr	r1, [r7, #4]
 8000d72:	434b      	muls	r3, r1
 8000d74:	431a      	orrs	r2, r3
 8000d76:	68fb      	ldr	r3, [r7, #12]
 8000d78:	601a      	str	r2, [r3, #0]
 8000d7a:	46bd      	mov	sp, r7
 8000d7c:	b004      	add	sp, #16
 8000d7e:	bd80      	pop	{r7, pc}

08000d80 <LL_GPIO_SetPinSpeed>:
 8000d80:	b580      	push	{r7, lr}
 8000d82:	b084      	sub	sp, #16
 8000d84:	af00      	add	r7, sp, #0
 8000d86:	60f8      	str	r0, [r7, #12]
 8000d88:	60b9      	str	r1, [r7, #8]
 8000d8a:	607a      	str	r2, [r7, #4]
 8000d8c:	68fb      	ldr	r3, [r7, #12]
 8000d8e:	6899      	ldr	r1, [r3, #8]
 8000d90:	68bb      	ldr	r3, [r7, #8]
 8000d92:	68ba      	ldr	r2, [r7, #8]
 8000d94:	435a      	muls	r2, r3
 8000d96:	1c13      	adds	r3, r2, #0
 8000d98:	005b      	lsls	r3, r3, #1
 8000d9a:	189b      	adds	r3, r3, r2
 8000d9c:	43db      	mvns	r3, r3
 8000d9e:	400b      	ands	r3, r1
 8000da0:	1c1a      	adds	r2, r3, #0
 8000da2:	68bb      	ldr	r3, [r7, #8]
 8000da4:	68b9      	ldr	r1, [r7, #8]
 8000da6:	434b      	muls	r3, r1
 8000da8:	6879      	ldr	r1, [r7, #4]
 8000daa:	434b      	muls	r3, r1
 8000dac:	431a      	orrs	r2, r3
 8000dae:	68fb      	ldr	r3, [r7, #12]
 8000db0:	609a      	str	r2, [r3, #8]
 8000db2:	46bd      	mov	sp, r7
 8000db4:	b004      	add	sp, #16
 8000db6:	bd80      	pop	{r7, pc}

08000db8 <LL_GPIO_SetAFPin_0_7>:
 8000db8:	b580      	push	{r7, lr}
 8000dba:	b084      	sub	sp, #16
 8000dbc:	af00      	add	r7, sp, #0
 8000dbe:	60f8      	str	r0, [r7, #12]
 8000dc0:	60b9      	str	r1, [r7, #8]
 8000dc2:	607a      	str	r2, [r7, #4]
 8000dc4:	68fb      	ldr	r3, [r7, #12]
 8000dc6:	6a19      	ldr	r1, [r3, #32]
 8000dc8:	68bb      	ldr	r3, [r7, #8]
 8000dca:	68ba      	ldr	r2, [r7, #8]
 8000dcc:	4353      	muls	r3, r2
 8000dce:	68ba      	ldr	r2, [r7, #8]
 8000dd0:	4353      	muls	r3, r2
 8000dd2:	68ba      	ldr	r2, [r7, #8]
 8000dd4:	435a      	muls	r2, r3
 8000dd6:	1c13      	adds	r3, r2, #0
 8000dd8:	011b      	lsls	r3, r3, #4
 8000dda:	1a9b      	subs	r3, r3, r2
 8000ddc:	43db      	mvns	r3, r3
 8000dde:	400b      	ands	r3, r1
 8000de0:	1c1a      	adds	r2, r3, #0
 8000de2:	68bb      	ldr	r3, [r7, #8]
 8000de4:	68b9      	ldr	r1, [r7, #8]
 8000de6:	434b      	muls	r3, r1
 8000de8:	68b9      	ldr	r1, [r7, #8]
 8000dea:	434b      	muls	r3, r1
 8000dec:	68b9      	ldr	r1, [r7, #8]
 8000dee:	434b      	muls	r3, r1
 8000df0:	6879      	ldr	r1, [r7, #4]
 8000df2:	434b      	muls	r3, r1
 8000df4:	431a      	orrs	r2, r3
 8000df6:	68fb      	ldr	r3, [r7, #12]
 8000df8:	621a      	str	r2, [r3, #32]
 8000dfa:	46bd      	mov	sp, r7
 8000dfc:	b004      	add	sp, #16
 8000dfe:	bd80      	pop	{r7, pc}

08000e00 <LL_GPIO_SetOutputPin>:
 8000e00:	b580      	push	{r7, lr}
 8000e02:	b082      	sub	sp, #8
 8000e04:	af00      	add	r7, sp, #0
 8000e06:	6078      	str	r0, [r7, #4]
 8000e08:	6039      	str	r1, [r7, #0]
 8000e0a:	687b      	ldr	r3, [r7, #4]
 8000e0c:	683a      	ldr	r2, [r7, #0]
 8000e0e:	619a      	str	r2, [r3, #24]
 8000e10:	46bd      	mov	sp, r7
 8000e12:	b002      	add	sp, #8
 8000e14:	bd80      	pop	{r7, pc}
 8000e16:	46c0      	nop			; (mov r8, r8)

08000e18 <LL_GPIO_ResetOutputPin>:
 8000e18:	b580      	push	{r7, lr}
 8000e1a:	b082      	sub	sp, #8
 8000e1c:	af00      	add	r7, sp, #0
 8000e1e:	6078      	str	r0, [r7, #4]
 8000e20:	6039      	str	r1, [r7, #0]
 8000e22:	687b      	ldr	r3, [r7, #4]
 8000e24:	683a      	ldr	r2, [r7, #0]
 8000e26:	629a      	str	r2, [r3, #40]	; 0x28
 8000e28:	46bd      	mov	sp, r7
 8000e2a:	b002      	add	sp, #8
 8000e2c:	bd80      	pop	{r7, pc}
 8000e2e:	46c0      	nop			; (mov r8, r8)

08000e30 <spi_start_cs>:
 8000e30:	b580      	push	{r7, lr}
 8000e32:	af00      	add	r7, sp, #0
 8000e34:	2390      	movs	r3, #144	; 0x90
 8000e36:	05db      	lsls	r3, r3, #23
 8000e38:	1c18      	adds	r0, r3, #0
 8000e3a:	2110      	movs	r1, #16
 8000e3c:	f7ff ffec 	bl	8000e18 <LL_GPIO_ResetOutputPin>
 8000e40:	46c0      	nop			; (mov r8, r8)
 8000e42:	46bd      	mov	sp, r7
 8000e44:	bd80      	pop	{r7, pc}
 8000e46:	46c0      	nop			; (mov r8, r8)

08000e48 <spi_end_cs>:
 8000e48:	b580      	push	{r7, lr}
 8000e4a:	af00      	add	r7, sp, #0
 8000e4c:	2390      	movs	r3, #144	; 0x90
 8000e4e:	05db      	lsls	r3, r3, #23
 8000e50:	1c18      	adds	r0, r3, #0
 8000e52:	2110      	movs	r1, #16
 8000e54:	f7ff ffd4 	bl	8000e00 <LL_GPIO_SetOutputPin>
 8000e58:	46c0      	nop			; (mov r8, r8)
 8000e5a:	46bd      	mov	sp, r7
 8000e5c:	bd80      	pop	{r7, pc}
 8000e5e:	46c0      	nop			; (mov r8, r8)

08000e60 <spi_send>:
 8000e60:	b590      	push	{r4, r7, lr}
 8000e62:	b085      	sub	sp, #20
 8000e64:	af00      	add	r7, sp, #0
 8000e66:	1c02      	adds	r2, r0, #0
 8000e68:	1dfb      	adds	r3, r7, #7
 8000e6a:	701a      	strb	r2, [r3, #0]
 8000e6c:	4a15      	ldr	r2, [pc, #84]	; (8000ec4 <spi_send+0x64>)
 8000e6e:	1dfb      	adds	r3, r7, #7
 8000e70:	781b      	ldrb	r3, [r3, #0]
 8000e72:	1c10      	adds	r0, r2, #0
 8000e74:	1c19      	adds	r1, r3, #0
 8000e76:	f7ff ff2b 	bl	8000cd0 <LL_SPI_TransmitData8>
 8000e7a:	46c0      	nop			; (mov r8, r8)
 8000e7c:	4b11      	ldr	r3, [pc, #68]	; (8000ec4 <spi_send+0x64>)
 8000e7e:	1c18      	adds	r0, r3, #0
 8000e80:	f7ff fefa 	bl	8000c78 <LL_SPI_IsActiveFlag_TXE>
 8000e84:	1e03      	subs	r3, r0, #0
 8000e86:	d0f9      	beq.n	8000e7c <spi_send+0x1c>
 8000e88:	46c0      	nop			; (mov r8, r8)
 8000e8a:	4b0e      	ldr	r3, [pc, #56]	; (8000ec4 <spi_send+0x64>)
 8000e8c:	1c18      	adds	r0, r3, #0
 8000e8e:	f7ff ff03 	bl	8000c98 <LL_SPI_IsActiveFlag_BSY>
 8000e92:	1e03      	subs	r3, r0, #0
 8000e94:	d1f9      	bne.n	8000e8a <spi_send+0x2a>
 8000e96:	e007      	b.n	8000ea8 <spi_send+0x48>
 8000e98:	230f      	movs	r3, #15
 8000e9a:	18fc      	adds	r4, r7, r3
 8000e9c:	4b09      	ldr	r3, [pc, #36]	; (8000ec4 <spi_send+0x64>)
 8000e9e:	1c18      	adds	r0, r3, #0
 8000ea0:	f7ff ff0a 	bl	8000cb8 <LL_SPI_ReceiveData8>
 8000ea4:	1c03      	adds	r3, r0, #0
 8000ea6:	7023      	strb	r3, [r4, #0]
 8000ea8:	4b06      	ldr	r3, [pc, #24]	; (8000ec4 <spi_send+0x64>)
 8000eaa:	1c18      	adds	r0, r3, #0
 8000eac:	f7ff fed4 	bl	8000c58 <LL_SPI_IsActiveFlag_RXNE>
 8000eb0:	1e03      	subs	r3, r0, #0
 8000eb2:	d1f1      	bne.n	8000e98 <spi_send+0x38>
 8000eb4:	230f      	movs	r3, #15
 8000eb6:	18fb      	adds	r3, r7, r3
 8000eb8:	781b      	ldrb	r3, [r3, #0]
 8000eba:	1c18      	adds	r0, r3, #0
 8000ebc:	46bd      	mov	sp, r7
 8000ebe:	b005      	add	sp, #20
 8000ec0:	bd90      	pop	{r4, r7, pc}
 8000ec2:	46c0      	nop			; (mov r8, r8)
 8000ec4:	40013000 	.word	0x40013000

08000ec8 <can_set_reg>:
 8000ec8:	b580      	push	{r7, lr}
 8000eca:	b082      	sub	sp, #8
 8000ecc:	af00      	add	r7, sp, #0
 8000ece:	1c02      	adds	r2, r0, #0
 8000ed0:	1dfb      	adds	r3, r7, #7
 8000ed2:	701a      	strb	r2, [r3, #0]
 8000ed4:	1dbb      	adds	r3, r7, #6
 8000ed6:	1c0a      	adds	r2, r1, #0
 8000ed8:	701a      	strb	r2, [r3, #0]
 8000eda:	f7ff ffa9 	bl	8000e30 <spi_start_cs>
 8000ede:	2002      	movs	r0, #2
 8000ee0:	f7ff ffbe 	bl	8000e60 <spi_send>
 8000ee4:	1dfb      	adds	r3, r7, #7
 8000ee6:	781b      	ldrb	r3, [r3, #0]
 8000ee8:	1c18      	adds	r0, r3, #0
 8000eea:	f7ff ffb9 	bl	8000e60 <spi_send>
 8000eee:	1dbb      	adds	r3, r7, #6
 8000ef0:	781b      	ldrb	r3, [r3, #0]
 8000ef2:	1c18      	adds	r0, r3, #0
 8000ef4:	f7ff ffb4 	bl	8000e60 <spi_send>
 8000ef8:	f7ff ffa6 	bl	8000e48 <spi_end_cs>
 8000efc:	46c0      	nop			; (mov r8, r8)
 8000efe:	46bd      	mov	sp, r7
 8000f00:	b002      	add	sp, #8
 8000f02:	bd80      	pop	{r7, pc}

08000f04 <can_set_regs>:
 8000f04:	b580      	push	{r7, lr}
 8000f06:	b084      	sub	sp, #16
 8000f08:	af00      	add	r7, sp, #0
 8000f0a:	6039      	str	r1, [r7, #0]
 8000f0c:	1c11      	adds	r1, r2, #0
 8000f0e:	1dfb      	adds	r3, r7, #7
 8000f10:	1c02      	adds	r2, r0, #0
 8000f12:	701a      	strb	r2, [r3, #0]
 8000f14:	1dbb      	adds	r3, r7, #6
 8000f16:	1c0a      	adds	r2, r1, #0
 8000f18:	701a      	strb	r2, [r3, #0]
 8000f1a:	f7ff ff89 	bl	8000e30 <spi_start_cs>
 8000f1e:	2002      	movs	r0, #2
 8000f20:	f7ff ff9e 	bl	8000e60 <spi_send>
 8000f24:	1dfb      	adds	r3, r7, #7
 8000f26:	781b      	ldrb	r3, [r3, #0]
 8000f28:	1c18      	adds	r0, r3, #0
 8000f2a:	f7ff ff99 	bl	8000e60 <spi_send>
 8000f2e:	230f      	movs	r3, #15
 8000f30:	18fb      	adds	r3, r7, r3
 8000f32:	2200      	movs	r2, #0
 8000f34:	701a      	strb	r2, [r3, #0]
 8000f36:	e00f      	b.n	8000f58 <can_set_regs+0x54>
 8000f38:	230f      	movs	r3, #15
 8000f3a:	18fb      	adds	r3, r7, r3
 8000f3c:	781b      	ldrb	r3, [r3, #0]
 8000f3e:	683a      	ldr	r2, [r7, #0]
 8000f40:	18d3      	adds	r3, r2, r3
 8000f42:	781b      	ldrb	r3, [r3, #0]
 8000f44:	1c18      	adds	r0, r3, #0
 8000f46:	f7ff ff8b 	bl	8000e60 <spi_send>
 8000f4a:	230f      	movs	r3, #15
 8000f4c:	18fb      	adds	r3, r7, r3
 8000f4e:	781a      	ldrb	r2, [r3, #0]
 8000f50:	230f      	movs	r3, #15
 8000f52:	18fb      	adds	r3, r7, r3
 8000f54:	3201      	adds	r2, #1
 8000f56:	701a      	strb	r2, [r3, #0]
 8000f58:	230f      	movs	r3, #15
 8000f5a:	18fa      	adds	r2, r7, r3
 8000f5c:	1dbb      	adds	r3, r7, #6
 8000f5e:	7812      	ldrb	r2, [r2, #0]
 8000f60:	781b      	ldrb	r3, [r3, #0]
 8000f62:	429a      	cmp	r2, r3
 8000f64:	d3e8      	bcc.n	8000f38 <can_set_regs+0x34>
 8000f66:	f7ff ff6f 	bl	8000e48 <spi_end_cs>
 8000f6a:	46c0      	nop			; (mov r8, r8)
 8000f6c:	46bd      	mov	sp, r7
 8000f6e:	b004      	add	sp, #16
 8000f70:	bd80      	pop	{r7, pc}
 8000f72:	46c0      	nop			; (mov r8, r8)

08000f74 <can_modify_reg>:
 8000f74:	b590      	push	{r4, r7, lr}
 8000f76:	b083      	sub	sp, #12
 8000f78:	af00      	add	r7, sp, #0
 8000f7a:	1c04      	adds	r4, r0, #0
 8000f7c:	1c08      	adds	r0, r1, #0
 8000f7e:	1c11      	adds	r1, r2, #0
 8000f80:	1dfb      	adds	r3, r7, #7
 8000f82:	1c22      	adds	r2, r4, #0
 8000f84:	701a      	strb	r2, [r3, #0]
 8000f86:	1dbb      	adds	r3, r7, #6
 8000f88:	1c02      	adds	r2, r0, #0
 8000f8a:	701a      	strb	r2, [r3, #0]
 8000f8c:	1d7b      	adds	r3, r7, #5
 8000f8e:	1c0a      	adds	r2, r1, #0
 8000f90:	701a      	strb	r2, [r3, #0]
 8000f92:	f7ff ff4d 	bl	8000e30 <spi_start_cs>
 8000f96:	2005      	movs	r0, #5
 8000f98:	f7ff ff62 	bl	8000e60 <spi_send>
 8000f9c:	1dfb      	adds	r3, r7, #7
 8000f9e:	781b      	ldrb	r3, [r3, #0]
 8000fa0:	1c18      	adds	r0, r3, #0
 8000fa2:	f7ff ff5d 	bl	8000e60 <spi_send>
 8000fa6:	1dbb      	adds	r3, r7, #6
 8000fa8:	781b      	ldrb	r3, [r3, #0]
 8000faa:	1c18      	adds	r0, r3, #0
 8000fac:	f7ff ff58 	bl	8000e60 <spi_send>
 8000fb0:	1d7b      	adds	r3, r7, #5
 8000fb2:	781b      	ldrb	r3, [r3, #0]
 8000fb4:	1c18      	adds	r0, r3, #0
 8000fb6:	f7ff ff53 	bl	8000e60 <spi_send>
 8000fba:	f7ff ff45 	bl	8000e48 <spi_end_cs>
 8000fbe:	46c0      	nop			; (mov r8, r8)
 8000fc0:	46bd      	mov	sp, r7
 8000fc2:	b003      	add	sp, #12
 8000fc4:	bd90      	pop	{r4, r7, pc}
 8000fc6:	46c0      	nop			; (mov r8, r8)

08000fc8 <can_read_reg>:
 8000fc8:	b590      	push	{r4, r7, lr}
 8000fca:	b085      	sub	sp, #20
 8000fcc:	af00      	add	r7, sp, #0
 8000fce:	1c02      	adds	r2, r0, #0
 8000fd0:	1dfb      	adds	r3, r7, #7
 8000fd2:	701a      	strb	r2, [r3, #0]
 8000fd4:	f7ff ff2c 	bl	8000e30 <spi_start_cs>
 8000fd8:	2003      	movs	r0, #3
 8000fda:	f7ff ff41 	bl	8000e60 <spi_send>
 8000fde:	1dfb      	adds	r3, r7, #7
 8000fe0:	781b      	ldrb	r3, [r3, #0]
 8000fe2:	1c18      	adds	r0, r3, #0
 8000fe4:	f7ff ff3c 	bl	8000e60 <spi_send>
 8000fe8:	230f      	movs	r3, #15
 8000fea:	18fc      	adds	r4, r7, r3
 8000fec:	2000      	movs	r0, #0
 8000fee:	f7ff ff37 	bl	8000e60 <spi_send>
 8000ff2:	1c03      	adds	r3, r0, #0
 8000ff4:	7023      	strb	r3, [r4, #0]
 8000ff6:	f7ff ff27 	bl	8000e48 <spi_end_cs>
 8000ffa:	230f      	movs	r3, #15
 8000ffc:	18fb      	adds	r3, r7, r3
 8000ffe:	781b      	ldrb	r3, [r3, #0]
 8001000:	1c18      	adds	r0, r3, #0
 8001002:	46bd      	mov	sp, r7
 8001004:	b005      	add	sp, #20
 8001006:	bd90      	pop	{r4, r7, pc}

08001008 <can_read_regs>:
 8001008:	b590      	push	{r4, r7, lr}
 800100a:	b085      	sub	sp, #20
 800100c:	af00      	add	r7, sp, #0
 800100e:	6039      	str	r1, [r7, #0]
 8001010:	1c11      	adds	r1, r2, #0
 8001012:	1dfb      	adds	r3, r7, #7
 8001014:	1c02      	adds	r2, r0, #0
 8001016:	701a      	strb	r2, [r3, #0]
 8001018:	1dbb      	adds	r3, r7, #6
 800101a:	1c0a      	adds	r2, r1, #0
 800101c:	701a      	strb	r2, [r3, #0]
 800101e:	f7ff ff07 	bl	8000e30 <spi_start_cs>
 8001022:	2003      	movs	r0, #3
 8001024:	f7ff ff1c 	bl	8000e60 <spi_send>
 8001028:	1dfb      	adds	r3, r7, #7
 800102a:	781b      	ldrb	r3, [r3, #0]
 800102c:	1c18      	adds	r0, r3, #0
 800102e:	f7ff ff17 	bl	8000e60 <spi_send>
 8001032:	230f      	movs	r3, #15
 8001034:	18fb      	adds	r3, r7, r3
 8001036:	2200      	movs	r2, #0
 8001038:	701a      	strb	r2, [r3, #0]
 800103a:	e010      	b.n	800105e <can_read_regs+0x56>
 800103c:	230f      	movs	r3, #15
 800103e:	18fb      	adds	r3, r7, r3
 8001040:	781b      	ldrb	r3, [r3, #0]
 8001042:	683a      	ldr	r2, [r7, #0]
 8001044:	18d4      	adds	r4, r2, r3
 8001046:	2000      	movs	r0, #0
 8001048:	f7ff ff0a 	bl	8000e60 <spi_send>
 800104c:	1c03      	adds	r3, r0, #0
 800104e:	7023      	strb	r3, [r4, #0]
 8001050:	230f      	movs	r3, #15
 8001052:	18fb      	adds	r3, r7, r3
 8001054:	781a      	ldrb	r2, [r3, #0]
 8001056:	230f      	movs	r3, #15
 8001058:	18fb      	adds	r3, r7, r3
 800105a:	3201      	adds	r2, #1
 800105c:	701a      	strb	r2, [r3, #0]
 800105e:	230f      	movs	r3, #15
 8001060:	18fa      	adds	r2, r7, r3
 8001062:	1dbb      	adds	r3, r7, #6
 8001064:	7812      	ldrb	r2, [r2, #0]
 8001066:	781b      	ldrb	r3, [r3, #0]
 8001068:	429a      	cmp	r2, r3
 800106a:	d3e7      	bcc.n	800103c <can_read_regs+0x34>
 800106c:	f7ff feec 	bl	8000e48 <spi_end_cs>
 8001070:	46bd      	mov	sp, r7
 8001072:	b005      	add	sp, #20
 8001074:	bd90      	pop	{r4, r7, pc}
 8001076:	46c0      	nop			; (mov r8, r8)

08001078 <can_reset>:
 8001078:	b580      	push	{r7, lr}
 800107a:	b086      	sub	sp, #24
 800107c:	af00      	add	r7, sp, #0
 800107e:	1d3b      	adds	r3, r7, #4
 8001080:	2200      	movs	r2, #0
 8001082:	601a      	str	r2, [r3, #0]
 8001084:	2200      	movs	r2, #0
 8001086:	605a      	str	r2, [r3, #4]
 8001088:	2200      	movs	r2, #0
 800108a:	609a      	str	r2, [r3, #8]
 800108c:	2200      	movs	r2, #0
 800108e:	819a      	strh	r2, [r3, #12]
 8001090:	f7ff fece 	bl	8000e30 <spi_start_cs>
 8001094:	20c0      	movs	r0, #192	; 0xc0
 8001096:	f7ff fee3 	bl	8000e60 <spi_send>
 800109a:	f7ff fed5 	bl	8000e48 <spi_end_cs>
 800109e:	2300      	movs	r3, #0
 80010a0:	617b      	str	r3, [r7, #20]
 80010a2:	e002      	b.n	80010aa <can_reset+0x32>
 80010a4:	697b      	ldr	r3, [r7, #20]
 80010a6:	3301      	adds	r3, #1
 80010a8:	617b      	str	r3, [r7, #20]
 80010aa:	697b      	ldr	r3, [r7, #20]
 80010ac:	4a1b      	ldr	r2, [pc, #108]	; (800111c <can_reset+0xa4>)
 80010ae:	4293      	cmp	r3, r2
 80010b0:	ddf8      	ble.n	80010a4 <can_reset+0x2c>
 80010b2:	1d3b      	adds	r3, r7, #4
 80010b4:	2030      	movs	r0, #48	; 0x30
 80010b6:	1c19      	adds	r1, r3, #0
 80010b8:	220e      	movs	r2, #14
 80010ba:	f7ff ff23 	bl	8000f04 <can_set_regs>
 80010be:	1d3b      	adds	r3, r7, #4
 80010c0:	2040      	movs	r0, #64	; 0x40
 80010c2:	1c19      	adds	r1, r3, #0
 80010c4:	220e      	movs	r2, #14
 80010c6:	f7ff ff1d 	bl	8000f04 <can_set_regs>
 80010ca:	1d3b      	adds	r3, r7, #4
 80010cc:	2050      	movs	r0, #80	; 0x50
 80010ce:	1c19      	adds	r1, r3, #0
 80010d0:	220e      	movs	r2, #14
 80010d2:	f7ff ff17 	bl	8000f04 <can_set_regs>
 80010d6:	2060      	movs	r0, #96	; 0x60
 80010d8:	2100      	movs	r1, #0
 80010da:	f7ff fef5 	bl	8000ec8 <can_set_reg>
 80010de:	2070      	movs	r0, #112	; 0x70
 80010e0:	2100      	movs	r1, #0
 80010e2:	f7ff fef1 	bl	8000ec8 <can_set_reg>
 80010e6:	202b      	movs	r0, #43	; 0x2b
 80010e8:	21a3      	movs	r1, #163	; 0xa3
 80010ea:	f7ff feed 	bl	8000ec8 <can_set_reg>
 80010ee:	2260      	movs	r2, #96	; 0x60
 80010f0:	2304      	movs	r3, #4
 80010f2:	4313      	orrs	r3, r2
 80010f4:	b2d9      	uxtb	r1, r3
 80010f6:	2200      	movs	r2, #0
 80010f8:	2304      	movs	r3, #4
 80010fa:	4313      	orrs	r3, r2
 80010fc:	b2db      	uxtb	r3, r3
 80010fe:	2060      	movs	r0, #96	; 0x60
 8001100:	1c1a      	adds	r2, r3, #0
 8001102:	f7ff ff37 	bl	8000f74 <can_modify_reg>
 8001106:	2260      	movs	r2, #96	; 0x60
 8001108:	2300      	movs	r3, #0
 800110a:	2070      	movs	r0, #112	; 0x70
 800110c:	1c11      	adds	r1, r2, #0
 800110e:	1c1a      	adds	r2, r3, #0
 8001110:	f7ff ff30 	bl	8000f74 <can_modify_reg>
 8001114:	46c0      	nop			; (mov r8, r8)
 8001116:	46bd      	mov	sp, r7
 8001118:	b006      	add	sp, #24
 800111a:	bd80      	pop	{r7, pc}
 800111c:	000f423f 	.word	0x000f423f

08001120 <can_set_mode>:
 8001120:	b590      	push	{r4, r7, lr}
 8001122:	b087      	sub	sp, #28
 8001124:	af00      	add	r7, sp, #0
 8001126:	1c02      	adds	r2, r0, #0
 8001128:	1dfb      	adds	r3, r7, #7
 800112a:	701a      	strb	r2, [r3, #0]
 800112c:	2317      	movs	r3, #23
 800112e:	18fb      	adds	r3, r7, r3
 8001130:	2200      	movs	r2, #0
 8001132:	701a      	strb	r2, [r3, #0]
 8001134:	2300      	movs	r3, #0
 8001136:	613b      	str	r3, [r7, #16]
 8001138:	2300      	movs	r3, #0
 800113a:	60fb      	str	r3, [r7, #12]
 800113c:	230b      	movs	r3, #11
 800113e:	18fb      	adds	r3, r7, r3
 8001140:	2200      	movs	r2, #0
 8001142:	701a      	strb	r2, [r3, #0]
 8001144:	22e0      	movs	r2, #224	; 0xe0
 8001146:	1dfb      	adds	r3, r7, #7
 8001148:	781b      	ldrb	r3, [r3, #0]
 800114a:	200f      	movs	r0, #15
 800114c:	1c11      	adds	r1, r2, #0
 800114e:	1c1a      	adds	r2, r3, #0
 8001150:	f7ff ff10 	bl	8000f74 <can_modify_reg>
 8001154:	2300      	movs	r3, #0
 8001156:	613b      	str	r3, [r7, #16]
 8001158:	e02d      	b.n	80011b6 <can_set_mode+0x96>
 800115a:	2300      	movs	r3, #0
 800115c:	60fb      	str	r3, [r7, #12]
 800115e:	e002      	b.n	8001166 <can_set_mode+0x46>
 8001160:	68fb      	ldr	r3, [r7, #12]
 8001162:	3301      	adds	r3, #1
 8001164:	60fb      	str	r3, [r7, #12]
 8001166:	68fb      	ldr	r3, [r7, #12]
 8001168:	4a19      	ldr	r2, [pc, #100]	; (80011d0 <can_set_mode+0xb0>)
 800116a:	4293      	cmp	r3, r2
 800116c:	d9f8      	bls.n	8001160 <can_set_mode+0x40>
 800116e:	230b      	movs	r3, #11
 8001170:	18fc      	adds	r4, r7, r3
 8001172:	200e      	movs	r0, #14
 8001174:	f7ff ff28 	bl	8000fc8 <can_read_reg>
 8001178:	1c03      	adds	r3, r0, #0
 800117a:	7023      	strb	r3, [r4, #0]
 800117c:	21e0      	movs	r1, #224	; 0xe0
 800117e:	230b      	movs	r3, #11
 8001180:	18fb      	adds	r3, r7, r3
 8001182:	220b      	movs	r2, #11
 8001184:	18ba      	adds	r2, r7, r2
 8001186:	7812      	ldrb	r2, [r2, #0]
 8001188:	400a      	ands	r2, r1
 800118a:	701a      	strb	r2, [r3, #0]
 800118c:	230b      	movs	r3, #11
 800118e:	18fa      	adds	r2, r7, r3
 8001190:	1dfb      	adds	r3, r7, #7
 8001192:	7812      	ldrb	r2, [r2, #0]
 8001194:	781b      	ldrb	r3, [r3, #0]
 8001196:	1ad3      	subs	r3, r2, r3
 8001198:	425a      	negs	r2, r3
 800119a:	4153      	adcs	r3, r2
 800119c:	b2da      	uxtb	r2, r3
 800119e:	2317      	movs	r3, #23
 80011a0:	18fb      	adds	r3, r7, r3
 80011a2:	701a      	strb	r2, [r3, #0]
 80011a4:	2317      	movs	r3, #23
 80011a6:	18fb      	adds	r3, r7, r3
 80011a8:	781b      	ldrb	r3, [r3, #0]
 80011aa:	2b00      	cmp	r3, #0
 80011ac:	d000      	beq.n	80011b0 <can_set_mode+0x90>
 80011ae:	e005      	b.n	80011bc <can_set_mode+0x9c>
 80011b0:	693b      	ldr	r3, [r7, #16]
 80011b2:	3301      	adds	r3, #1
 80011b4:	613b      	str	r3, [r7, #16]
 80011b6:	693b      	ldr	r3, [r7, #16]
 80011b8:	2b09      	cmp	r3, #9
 80011ba:	d9ce      	bls.n	800115a <can_set_mode+0x3a>
 80011bc:	2317      	movs	r3, #23
 80011be:	18fb      	adds	r3, r7, r3
 80011c0:	781b      	ldrb	r3, [r3, #0]
 80011c2:	425a      	negs	r2, r3
 80011c4:	4153      	adcs	r3, r2
 80011c6:	b2db      	uxtb	r3, r3
 80011c8:	1c18      	adds	r0, r3, #0
 80011ca:	46bd      	mov	sp, r7
 80011cc:	b007      	add	sp, #28
 80011ce:	bd90      	pop	{r4, r7, pc}
 80011d0:	000f423f 	.word	0x000f423f

080011d4 <can_set_bitrate>:
 80011d4:	b580      	push	{r7, lr}
 80011d6:	b084      	sub	sp, #16
 80011d8:	af00      	add	r7, sp, #0
 80011da:	1c02      	adds	r2, r0, #0
 80011dc:	1dfb      	adds	r3, r7, #7
 80011de:	701a      	strb	r2, [r3, #0]
 80011e0:	2080      	movs	r0, #128	; 0x80
 80011e2:	f7ff ff9d 	bl	8001120 <can_set_mode>
 80011e6:	230f      	movs	r3, #15
 80011e8:	18fb      	adds	r3, r7, r3
 80011ea:	2201      	movs	r2, #1
 80011ec:	701a      	strb	r2, [r3, #0]
 80011ee:	1dfb      	adds	r3, r7, #7
 80011f0:	781b      	ldrb	r3, [r3, #0]
 80011f2:	2b0f      	cmp	r3, #15
 80011f4:	d900      	bls.n	80011f8 <can_set_bitrate+0x24>
 80011f6:	e0ba      	b.n	800136e <can_set_bitrate+0x19a>
 80011f8:	009a      	lsls	r2, r3, #2
 80011fa:	4b70      	ldr	r3, [pc, #448]	; (80013bc <can_set_bitrate+0x1e8>)
 80011fc:	18d3      	adds	r3, r2, r3
 80011fe:	681b      	ldr	r3, [r3, #0]
 8001200:	469f      	mov	pc, r3
 8001202:	230e      	movs	r3, #14
 8001204:	18fb      	adds	r3, r7, r3
 8001206:	221f      	movs	r2, #31
 8001208:	701a      	strb	r2, [r3, #0]
 800120a:	230d      	movs	r3, #13
 800120c:	18fb      	adds	r3, r7, r3
 800120e:	22bf      	movs	r2, #191	; 0xbf
 8001210:	701a      	strb	r2, [r3, #0]
 8001212:	230c      	movs	r3, #12
 8001214:	18fb      	adds	r3, r7, r3
 8001216:	2287      	movs	r2, #135	; 0x87
 8001218:	701a      	strb	r2, [r3, #0]
 800121a:	e0ad      	b.n	8001378 <can_set_bitrate+0x1a4>
 800121c:	230e      	movs	r3, #14
 800121e:	18fb      	adds	r3, r7, r3
 8001220:	220f      	movs	r2, #15
 8001222:	701a      	strb	r2, [r3, #0]
 8001224:	230d      	movs	r3, #13
 8001226:	18fb      	adds	r3, r7, r3
 8001228:	22bf      	movs	r2, #191	; 0xbf
 800122a:	701a      	strb	r2, [r3, #0]
 800122c:	230c      	movs	r3, #12
 800122e:	18fb      	adds	r3, r7, r3
 8001230:	2287      	movs	r2, #135	; 0x87
 8001232:	701a      	strb	r2, [r3, #0]
 8001234:	e0a0      	b.n	8001378 <can_set_bitrate+0x1a4>
 8001236:	230e      	movs	r3, #14
 8001238:	18fb      	adds	r3, r7, r3
 800123a:	2207      	movs	r2, #7
 800123c:	701a      	strb	r2, [r3, #0]
 800123e:	230d      	movs	r3, #13
 8001240:	18fb      	adds	r3, r7, r3
 8001242:	22bf      	movs	r2, #191	; 0xbf
 8001244:	701a      	strb	r2, [r3, #0]
 8001246:	230c      	movs	r3, #12
 8001248:	18fb      	adds	r3, r7, r3
 800124a:	2287      	movs	r2, #135	; 0x87
 800124c:	701a      	strb	r2, [r3, #0]
 800124e:	e093      	b.n	8001378 <can_set_bitrate+0x1a4>
 8001250:	230e      	movs	r3, #14
 8001252:	18fb      	adds	r3, r7, r3
 8001254:	2207      	movs	r2, #7
 8001256:	701a      	strb	r2, [r3, #0]
 8001258:	230d      	movs	r3, #13
 800125a:	18fb      	adds	r3, r7, r3
 800125c:	22a4      	movs	r2, #164	; 0xa4
 800125e:	701a      	strb	r2, [r3, #0]
 8001260:	230c      	movs	r3, #12
 8001262:	18fb      	adds	r3, r7, r3
 8001264:	2284      	movs	r2, #132	; 0x84
 8001266:	701a      	strb	r2, [r3, #0]
 8001268:	e086      	b.n	8001378 <can_set_bitrate+0x1a4>
 800126a:	230e      	movs	r3, #14
 800126c:	18fb      	adds	r3, r7, r3
 800126e:	2247      	movs	r2, #71	; 0x47
 8001270:	701a      	strb	r2, [r3, #0]
 8001272:	230d      	movs	r3, #13
 8001274:	18fb      	adds	r3, r7, r3
 8001276:	22e2      	movs	r2, #226	; 0xe2
 8001278:	701a      	strb	r2, [r3, #0]
 800127a:	230c      	movs	r3, #12
 800127c:	18fb      	adds	r3, r7, r3
 800127e:	2285      	movs	r2, #133	; 0x85
 8001280:	701a      	strb	r2, [r3, #0]
 8001282:	e079      	b.n	8001378 <can_set_bitrate+0x1a4>
 8001284:	230e      	movs	r3, #14
 8001286:	18fb      	adds	r3, r7, r3
 8001288:	2203      	movs	r2, #3
 800128a:	701a      	strb	r2, [r3, #0]
 800128c:	230d      	movs	r3, #13
 800128e:	18fb      	adds	r3, r7, r3
 8001290:	22bf      	movs	r2, #191	; 0xbf
 8001292:	701a      	strb	r2, [r3, #0]
 8001294:	230c      	movs	r3, #12
 8001296:	18fb      	adds	r3, r7, r3
 8001298:	2287      	movs	r2, #135	; 0x87
 800129a:	701a      	strb	r2, [r3, #0]
 800129c:	e06c      	b.n	8001378 <can_set_bitrate+0x1a4>
 800129e:	230e      	movs	r3, #14
 80012a0:	18fb      	adds	r3, r7, r3
 80012a2:	2203      	movs	r2, #3
 80012a4:	701a      	strb	r2, [r3, #0]
 80012a6:	230d      	movs	r3, #13
 80012a8:	18fb      	adds	r3, r7, r3
 80012aa:	22b4      	movs	r2, #180	; 0xb4
 80012ac:	701a      	strb	r2, [r3, #0]
 80012ae:	230c      	movs	r3, #12
 80012b0:	18fb      	adds	r3, r7, r3
 80012b2:	2286      	movs	r2, #134	; 0x86
 80012b4:	701a      	strb	r2, [r3, #0]
 80012b6:	e05f      	b.n	8001378 <can_set_bitrate+0x1a4>
 80012b8:	230e      	movs	r3, #14
 80012ba:	18fb      	adds	r3, r7, r3
 80012bc:	2201      	movs	r2, #1
 80012be:	701a      	strb	r2, [r3, #0]
 80012c0:	230d      	movs	r3, #13
 80012c2:	18fb      	adds	r3, r7, r3
 80012c4:	22bf      	movs	r2, #191	; 0xbf
 80012c6:	701a      	strb	r2, [r3, #0]
 80012c8:	230c      	movs	r3, #12
 80012ca:	18fb      	adds	r3, r7, r3
 80012cc:	2287      	movs	r2, #135	; 0x87
 80012ce:	701a      	strb	r2, [r3, #0]
 80012d0:	e052      	b.n	8001378 <can_set_bitrate+0x1a4>
 80012d2:	230e      	movs	r3, #14
 80012d4:	18fb      	adds	r3, r7, r3
 80012d6:	2201      	movs	r2, #1
 80012d8:	701a      	strb	r2, [r3, #0]
 80012da:	230d      	movs	r3, #13
 80012dc:	18fb      	adds	r3, r7, r3
 80012de:	22b4      	movs	r2, #180	; 0xb4
 80012e0:	701a      	strb	r2, [r3, #0]
 80012e2:	230c      	movs	r3, #12
 80012e4:	18fb      	adds	r3, r7, r3
 80012e6:	2286      	movs	r2, #134	; 0x86
 80012e8:	701a      	strb	r2, [r3, #0]
 80012ea:	e045      	b.n	8001378 <can_set_bitrate+0x1a4>
 80012ec:	230e      	movs	r3, #14
 80012ee:	18fb      	adds	r3, r7, r3
 80012f0:	2201      	movs	r2, #1
 80012f2:	701a      	strb	r2, [r3, #0]
 80012f4:	230d      	movs	r3, #13
 80012f6:	18fb      	adds	r3, r7, r3
 80012f8:	22b1      	movs	r2, #177	; 0xb1
 80012fa:	701a      	strb	r2, [r3, #0]
 80012fc:	230c      	movs	r3, #12
 80012fe:	18fb      	adds	r3, r7, r3
 8001300:	2285      	movs	r2, #133	; 0x85
 8001302:	701a      	strb	r2, [r3, #0]
 8001304:	e038      	b.n	8001378 <can_set_bitrate+0x1a4>
 8001306:	230e      	movs	r3, #14
 8001308:	18fb      	adds	r3, r7, r3
 800130a:	2200      	movs	r2, #0
 800130c:	701a      	strb	r2, [r3, #0]
 800130e:	230d      	movs	r3, #13
 8001310:	18fb      	adds	r3, r7, r3
 8001312:	22b4      	movs	r2, #180	; 0xb4
 8001314:	701a      	strb	r2, [r3, #0]
 8001316:	230c      	movs	r3, #12
 8001318:	18fb      	adds	r3, r7, r3
 800131a:	2286      	movs	r2, #134	; 0x86
 800131c:	701a      	strb	r2, [r3, #0]
 800131e:	e02b      	b.n	8001378 <can_set_bitrate+0x1a4>
 8001320:	230e      	movs	r3, #14
 8001322:	18fb      	adds	r3, r7, r3
 8001324:	2200      	movs	r2, #0
 8001326:	701a      	strb	r2, [r3, #0]
 8001328:	230d      	movs	r3, #13
 800132a:	18fb      	adds	r3, r7, r3
 800132c:	22b1      	movs	r2, #177	; 0xb1
 800132e:	701a      	strb	r2, [r3, #0]
 8001330:	230c      	movs	r3, #12
 8001332:	18fb      	adds	r3, r7, r3
 8001334:	2285      	movs	r2, #133	; 0x85
 8001336:	701a      	strb	r2, [r3, #0]
 8001338:	e01e      	b.n	8001378 <can_set_bitrate+0x1a4>
 800133a:	230e      	movs	r3, #14
 800133c:	18fb      	adds	r3, r7, r3
 800133e:	2200      	movs	r2, #0
 8001340:	701a      	strb	r2, [r3, #0]
 8001342:	230d      	movs	r3, #13
 8001344:	18fb      	adds	r3, r7, r3
 8001346:	2290      	movs	r2, #144	; 0x90
 8001348:	701a      	strb	r2, [r3, #0]
 800134a:	230c      	movs	r3, #12
 800134c:	18fb      	adds	r3, r7, r3
 800134e:	2282      	movs	r2, #130	; 0x82
 8001350:	701a      	strb	r2, [r3, #0]
 8001352:	e011      	b.n	8001378 <can_set_bitrate+0x1a4>
 8001354:	230e      	movs	r3, #14
 8001356:	18fb      	adds	r3, r7, r3
 8001358:	2200      	movs	r2, #0
 800135a:	701a      	strb	r2, [r3, #0]
 800135c:	230d      	movs	r3, #13
 800135e:	18fb      	adds	r3, r7, r3
 8001360:	2280      	movs	r2, #128	; 0x80
 8001362:	701a      	strb	r2, [r3, #0]
 8001364:	230c      	movs	r3, #12
 8001366:	18fb      	adds	r3, r7, r3
 8001368:	2280      	movs	r2, #128	; 0x80
 800136a:	701a      	strb	r2, [r3, #0]
 800136c:	e004      	b.n	8001378 <can_set_bitrate+0x1a4>
 800136e:	230f      	movs	r3, #15
 8001370:	18fb      	adds	r3, r7, r3
 8001372:	2200      	movs	r2, #0
 8001374:	701a      	strb	r2, [r3, #0]
 8001376:	46c0      	nop			; (mov r8, r8)
 8001378:	230f      	movs	r3, #15
 800137a:	18fb      	adds	r3, r7, r3
 800137c:	781b      	ldrb	r3, [r3, #0]
 800137e:	2b00      	cmp	r3, #0
 8001380:	d016      	beq.n	80013b0 <can_set_bitrate+0x1dc>
 8001382:	230e      	movs	r3, #14
 8001384:	18fb      	adds	r3, r7, r3
 8001386:	781b      	ldrb	r3, [r3, #0]
 8001388:	202a      	movs	r0, #42	; 0x2a
 800138a:	1c19      	adds	r1, r3, #0
 800138c:	f7ff fd9c 	bl	8000ec8 <can_set_reg>
 8001390:	230d      	movs	r3, #13
 8001392:	18fb      	adds	r3, r7, r3
 8001394:	781b      	ldrb	r3, [r3, #0]
 8001396:	2029      	movs	r0, #41	; 0x29
 8001398:	1c19      	adds	r1, r3, #0
 800139a:	f7ff fd95 	bl	8000ec8 <can_set_reg>
 800139e:	230c      	movs	r3, #12
 80013a0:	18fb      	adds	r3, r7, r3
 80013a2:	781b      	ldrb	r3, [r3, #0]
 80013a4:	2028      	movs	r0, #40	; 0x28
 80013a6:	1c19      	adds	r1, r3, #0
 80013a8:	f7ff fd8e 	bl	8000ec8 <can_set_reg>
 80013ac:	2300      	movs	r3, #0
 80013ae:	e000      	b.n	80013b2 <can_set_bitrate+0x1de>
 80013b0:	2301      	movs	r3, #1
 80013b2:	1c18      	adds	r0, r3, #0
 80013b4:	46bd      	mov	sp, r7
 80013b6:	b004      	add	sp, #16
 80013b8:	bd80      	pop	{r7, pc}
 80013ba:	46c0      	nop			; (mov r8, r8)
 80013bc:	08002e0c 	.word	0x08002e0c

080013c0 <can_prepare_id>:
 80013c0:	b580      	push	{r7, lr}
 80013c2:	b086      	sub	sp, #24
 80013c4:	af00      	add	r7, sp, #0
 80013c6:	60f8      	str	r0, [r7, #12]
 80013c8:	607a      	str	r2, [r7, #4]
 80013ca:	230b      	movs	r3, #11
 80013cc:	18fb      	adds	r3, r7, r3
 80013ce:	1c0a      	adds	r2, r1, #0
 80013d0:	701a      	strb	r2, [r3, #0]
 80013d2:	2316      	movs	r3, #22
 80013d4:	18fb      	adds	r3, r7, r3
 80013d6:	687a      	ldr	r2, [r7, #4]
 80013d8:	801a      	strh	r2, [r3, #0]
 80013da:	230b      	movs	r3, #11
 80013dc:	18fb      	adds	r3, r7, r3
 80013de:	781b      	ldrb	r3, [r3, #0]
 80013e0:	2b00      	cmp	r3, #0
 80013e2:	d052      	beq.n	800148a <can_prepare_id+0xca>
 80013e4:	2303      	movs	r3, #3
 80013e6:	1c1a      	adds	r2, r3, #0
 80013e8:	68fb      	ldr	r3, [r7, #12]
 80013ea:	189b      	adds	r3, r3, r2
 80013ec:	2216      	movs	r2, #22
 80013ee:	18ba      	adds	r2, r7, r2
 80013f0:	8812      	ldrh	r2, [r2, #0]
 80013f2:	b2d2      	uxtb	r2, r2
 80013f4:	701a      	strb	r2, [r3, #0]
 80013f6:	2302      	movs	r3, #2
 80013f8:	1c1a      	adds	r2, r3, #0
 80013fa:	68fb      	ldr	r3, [r7, #12]
 80013fc:	189b      	adds	r3, r3, r2
 80013fe:	2216      	movs	r2, #22
 8001400:	18ba      	adds	r2, r7, r2
 8001402:	8812      	ldrh	r2, [r2, #0]
 8001404:	0a12      	lsrs	r2, r2, #8
 8001406:	b292      	uxth	r2, r2
 8001408:	b2d2      	uxtb	r2, r2
 800140a:	701a      	strb	r2, [r3, #0]
 800140c:	687b      	ldr	r3, [r7, #4]
 800140e:	0c1a      	lsrs	r2, r3, #16
 8001410:	2316      	movs	r3, #22
 8001412:	18fb      	adds	r3, r7, r3
 8001414:	801a      	strh	r2, [r3, #0]
 8001416:	2301      	movs	r3, #1
 8001418:	1c1a      	adds	r2, r3, #0
 800141a:	68fb      	ldr	r3, [r7, #12]
 800141c:	189b      	adds	r3, r3, r2
 800141e:	2216      	movs	r2, #22
 8001420:	18ba      	adds	r2, r7, r2
 8001422:	8812      	ldrh	r2, [r2, #0]
 8001424:	b2d2      	uxtb	r2, r2
 8001426:	2103      	movs	r1, #3
 8001428:	400a      	ands	r2, r1
 800142a:	b2d2      	uxtb	r2, r2
 800142c:	701a      	strb	r2, [r3, #0]
 800142e:	2301      	movs	r3, #1
 8001430:	1c1a      	adds	r2, r3, #0
 8001432:	68fb      	ldr	r3, [r7, #12]
 8001434:	189b      	adds	r3, r3, r2
 8001436:	2201      	movs	r2, #1
 8001438:	1c11      	adds	r1, r2, #0
 800143a:	68fa      	ldr	r2, [r7, #12]
 800143c:	1852      	adds	r2, r2, r1
 800143e:	7811      	ldrb	r1, [r2, #0]
 8001440:	2216      	movs	r2, #22
 8001442:	18ba      	adds	r2, r7, r2
 8001444:	8812      	ldrh	r2, [r2, #0]
 8001446:	b2d2      	uxtb	r2, r2
 8001448:	201c      	movs	r0, #28
 800144a:	4002      	ands	r2, r0
 800144c:	b2d2      	uxtb	r2, r2
 800144e:	00d2      	lsls	r2, r2, #3
 8001450:	b2d2      	uxtb	r2, r2
 8001452:	188a      	adds	r2, r1, r2
 8001454:	b2d2      	uxtb	r2, r2
 8001456:	701a      	strb	r2, [r3, #0]
 8001458:	2301      	movs	r3, #1
 800145a:	1c1a      	adds	r2, r3, #0
 800145c:	68fb      	ldr	r3, [r7, #12]
 800145e:	189b      	adds	r3, r3, r2
 8001460:	2201      	movs	r2, #1
 8001462:	1c11      	adds	r1, r2, #0
 8001464:	68fa      	ldr	r2, [r7, #12]
 8001466:	1852      	adds	r2, r2, r1
 8001468:	7812      	ldrb	r2, [r2, #0]
 800146a:	2108      	movs	r1, #8
 800146c:	430a      	orrs	r2, r1
 800146e:	b2d2      	uxtb	r2, r2
 8001470:	701a      	strb	r2, [r3, #0]
 8001472:	2300      	movs	r3, #0
 8001474:	1c1a      	adds	r2, r3, #0
 8001476:	68fb      	ldr	r3, [r7, #12]
 8001478:	189b      	adds	r3, r3, r2
 800147a:	2216      	movs	r2, #22
 800147c:	18ba      	adds	r2, r7, r2
 800147e:	8812      	ldrh	r2, [r2, #0]
 8001480:	0952      	lsrs	r2, r2, #5
 8001482:	b292      	uxth	r2, r2
 8001484:	b2d2      	uxtb	r2, r2
 8001486:	701a      	strb	r2, [r3, #0]
 8001488:	e021      	b.n	80014ce <can_prepare_id+0x10e>
 800148a:	2300      	movs	r3, #0
 800148c:	1c1a      	adds	r2, r3, #0
 800148e:	68fb      	ldr	r3, [r7, #12]
 8001490:	189b      	adds	r3, r3, r2
 8001492:	2216      	movs	r2, #22
 8001494:	18ba      	adds	r2, r7, r2
 8001496:	8812      	ldrh	r2, [r2, #0]
 8001498:	08d2      	lsrs	r2, r2, #3
 800149a:	b292      	uxth	r2, r2
 800149c:	b2d2      	uxtb	r2, r2
 800149e:	701a      	strb	r2, [r3, #0]
 80014a0:	2301      	movs	r3, #1
 80014a2:	1c1a      	adds	r2, r3, #0
 80014a4:	68fb      	ldr	r3, [r7, #12]
 80014a6:	189b      	adds	r3, r3, r2
 80014a8:	2216      	movs	r2, #22
 80014aa:	18ba      	adds	r2, r7, r2
 80014ac:	8812      	ldrh	r2, [r2, #0]
 80014ae:	b2d2      	uxtb	r2, r2
 80014b0:	0152      	lsls	r2, r2, #5
 80014b2:	b2d2      	uxtb	r2, r2
 80014b4:	701a      	strb	r2, [r3, #0]
 80014b6:	2303      	movs	r3, #3
 80014b8:	1c1a      	adds	r2, r3, #0
 80014ba:	68fb      	ldr	r3, [r7, #12]
 80014bc:	189b      	adds	r3, r3, r2
 80014be:	2200      	movs	r2, #0
 80014c0:	701a      	strb	r2, [r3, #0]
 80014c2:	2302      	movs	r3, #2
 80014c4:	1c1a      	adds	r2, r3, #0
 80014c6:	68fb      	ldr	r3, [r7, #12]
 80014c8:	189b      	adds	r3, r3, r2
 80014ca:	2200      	movs	r2, #0
 80014cc:	701a      	strb	r2, [r3, #0]
 80014ce:	46c0      	nop			; (mov r8, r8)
 80014d0:	46bd      	mov	sp, r7
 80014d2:	b006      	add	sp, #24
 80014d4:	bd80      	pop	{r7, pc}
 80014d6:	46c0      	nop			; (mov r8, r8)

080014d8 <_can_send_msg>:
 80014d8:	b580      	push	{r7, lr}
 80014da:	b08a      	sub	sp, #40	; 0x28
 80014dc:	af00      	add	r7, sp, #0
 80014de:	1c02      	adds	r2, r0, #0
 80014e0:	6039      	str	r1, [r7, #0]
 80014e2:	1dfb      	adds	r3, r7, #7
 80014e4:	701a      	strb	r2, [r3, #0]
 80014e6:	1dfb      	adds	r3, r7, #7
 80014e8:	781a      	ldrb	r2, [r3, #0]
 80014ea:	1c13      	adds	r3, r2, #0
 80014ec:	005b      	lsls	r3, r3, #1
 80014ee:	189b      	adds	r3, r3, r2
 80014f0:	4a32      	ldr	r2, [pc, #200]	; (80015bc <_can_send_msg+0xe4>)
 80014f2:	189b      	adds	r3, r3, r2
 80014f4:	627b      	str	r3, [r7, #36]	; 0x24
 80014f6:	2323      	movs	r3, #35	; 0x23
 80014f8:	18fb      	adds	r3, r7, r3
 80014fa:	2200      	movs	r2, #0
 80014fc:	701a      	strb	r2, [r3, #0]
 80014fe:	2322      	movs	r3, #34	; 0x22
 8001500:	18fb      	adds	r3, r7, r3
 8001502:	2200      	movs	r2, #0
 8001504:	701a      	strb	r2, [r3, #0]
 8001506:	683b      	ldr	r3, [r7, #0]
 8001508:	781a      	ldrb	r2, [r3, #0]
 800150a:	7859      	ldrb	r1, [r3, #1]
 800150c:	0209      	lsls	r1, r1, #8
 800150e:	430a      	orrs	r2, r1
 8001510:	7899      	ldrb	r1, [r3, #2]
 8001512:	0409      	lsls	r1, r1, #16
 8001514:	430a      	orrs	r2, r1
 8001516:	78db      	ldrb	r3, [r3, #3]
 8001518:	061b      	lsls	r3, r3, #24
 800151a:	4313      	orrs	r3, r2
 800151c:	1c1a      	adds	r2, r3, #0
 800151e:	2323      	movs	r3, #35	; 0x23
 8001520:	18fb      	adds	r3, r7, r3
 8001522:	781b      	ldrb	r3, [r3, #0]
 8001524:	2b00      	cmp	r3, #0
 8001526:	d001      	beq.n	800152c <_can_send_msg+0x54>
 8001528:	4b25      	ldr	r3, [pc, #148]	; (80015c0 <_can_send_msg+0xe8>)
 800152a:	e000      	b.n	800152e <_can_send_msg+0x56>
 800152c:	4b25      	ldr	r3, [pc, #148]	; (80015c4 <_can_send_msg+0xec>)
 800152e:	4013      	ands	r3, r2
 8001530:	61fb      	str	r3, [r7, #28]
 8001532:	230c      	movs	r3, #12
 8001534:	18f9      	adds	r1, r7, r3
 8001536:	2323      	movs	r3, #35	; 0x23
 8001538:	18fb      	adds	r3, r7, r3
 800153a:	781a      	ldrb	r2, [r3, #0]
 800153c:	69fb      	ldr	r3, [r7, #28]
 800153e:	1c08      	adds	r0, r1, #0
 8001540:	1c11      	adds	r1, r2, #0
 8001542:	1c1a      	adds	r2, r3, #0
 8001544:	f7ff ff3c 	bl	80013c0 <can_prepare_id>
 8001548:	2304      	movs	r3, #4
 800154a:	1c19      	adds	r1, r3, #0
 800154c:	2322      	movs	r3, #34	; 0x22
 800154e:	18fb      	adds	r3, r7, r3
 8001550:	781b      	ldrb	r3, [r3, #0]
 8001552:	2b00      	cmp	r3, #0
 8001554:	d005      	beq.n	8001562 <_can_send_msg+0x8a>
 8001556:	683b      	ldr	r3, [r7, #0]
 8001558:	791b      	ldrb	r3, [r3, #4]
 800155a:	2240      	movs	r2, #64	; 0x40
 800155c:	4313      	orrs	r3, r2
 800155e:	b2db      	uxtb	r3, r3
 8001560:	e001      	b.n	8001566 <_can_send_msg+0x8e>
 8001562:	683b      	ldr	r3, [r7, #0]
 8001564:	791b      	ldrb	r3, [r3, #4]
 8001566:	220c      	movs	r2, #12
 8001568:	18ba      	adds	r2, r7, r2
 800156a:	5453      	strb	r3, [r2, r1]
 800156c:	2305      	movs	r3, #5
 800156e:	1c1a      	adds	r2, r3, #0
 8001570:	230c      	movs	r3, #12
 8001572:	18fb      	adds	r3, r7, r3
 8001574:	1899      	adds	r1, r3, r2
 8001576:	683b      	ldr	r3, [r7, #0]
 8001578:	1d5a      	adds	r2, r3, #5
 800157a:	683b      	ldr	r3, [r7, #0]
 800157c:	791b      	ldrb	r3, [r3, #4]
 800157e:	1c08      	adds	r0, r1, #0
 8001580:	1c11      	adds	r1, r2, #0
 8001582:	1c1a      	adds	r2, r3, #0
 8001584:	f001 fade 	bl	8002b44 <memcpy>
 8001588:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800158a:	7859      	ldrb	r1, [r3, #1]
 800158c:	683b      	ldr	r3, [r7, #0]
 800158e:	791b      	ldrb	r3, [r3, #4]
 8001590:	3305      	adds	r3, #5
 8001592:	b2db      	uxtb	r3, r3
 8001594:	220c      	movs	r2, #12
 8001596:	18ba      	adds	r2, r7, r2
 8001598:	1c08      	adds	r0, r1, #0
 800159a:	1c11      	adds	r1, r2, #0
 800159c:	1c1a      	adds	r2, r3, #0
 800159e:	f7ff fcb1 	bl	8000f04 <can_set_regs>
 80015a2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80015a4:	781b      	ldrb	r3, [r3, #0]
 80015a6:	1c18      	adds	r0, r3, #0
 80015a8:	2108      	movs	r1, #8
 80015aa:	2208      	movs	r2, #8
 80015ac:	f7ff fce2 	bl	8000f74 <can_modify_reg>
 80015b0:	2300      	movs	r3, #0
 80015b2:	1c18      	adds	r0, r3, #0
 80015b4:	46bd      	mov	sp, r7
 80015b6:	b00a      	add	sp, #40	; 0x28
 80015b8:	bd80      	pop	{r7, pc}
 80015ba:	46c0      	nop			; (mov r8, r8)
 80015bc:	08002df8 	.word	0x08002df8
 80015c0:	1fffffff 	.word	0x1fffffff
 80015c4:	000007ff 	.word	0x000007ff

080015c8 <can_send_msg>:
 80015c8:	b590      	push	{r4, r7, lr}
 80015ca:	b087      	sub	sp, #28
 80015cc:	af00      	add	r7, sp, #0
 80015ce:	6078      	str	r0, [r7, #4]
 80015d0:	230c      	movs	r3, #12
 80015d2:	18fa      	adds	r2, r7, r3
 80015d4:	4b26      	ldr	r3, [pc, #152]	; (8001670 <can_send_msg+0xa8>)
 80015d6:	1c11      	adds	r1, r2, #0
 80015d8:	1c1a      	adds	r2, r3, #0
 80015da:	2303      	movs	r3, #3
 80015dc:	1c08      	adds	r0, r1, #0
 80015de:	1c11      	adds	r1, r2, #0
 80015e0:	1c1a      	adds	r2, r3, #0
 80015e2:	f001 faaf 	bl	8002b44 <memcpy>
 80015e6:	687b      	ldr	r3, [r7, #4]
 80015e8:	791b      	ldrb	r3, [r3, #4]
 80015ea:	2b08      	cmp	r3, #8
 80015ec:	d901      	bls.n	80015f2 <can_send_msg+0x2a>
 80015ee:	2304      	movs	r3, #4
 80015f0:	e03a      	b.n	8001668 <can_send_msg+0xa0>
 80015f2:	2317      	movs	r3, #23
 80015f4:	18fb      	adds	r3, r7, r3
 80015f6:	2200      	movs	r2, #0
 80015f8:	701a      	strb	r2, [r3, #0]
 80015fa:	e02f      	b.n	800165c <can_send_msg+0x94>
 80015fc:	2317      	movs	r3, #23
 80015fe:	18fb      	adds	r3, r7, r3
 8001600:	781b      	ldrb	r3, [r3, #0]
 8001602:	220c      	movs	r2, #12
 8001604:	18ba      	adds	r2, r7, r2
 8001606:	5cd3      	ldrb	r3, [r2, r3]
 8001608:	1c1a      	adds	r2, r3, #0
 800160a:	1c13      	adds	r3, r2, #0
 800160c:	005b      	lsls	r3, r3, #1
 800160e:	189b      	adds	r3, r3, r2
 8001610:	4a18      	ldr	r2, [pc, #96]	; (8001674 <can_send_msg+0xac>)
 8001612:	189b      	adds	r3, r3, r2
 8001614:	613b      	str	r3, [r7, #16]
 8001616:	693b      	ldr	r3, [r7, #16]
 8001618:	781b      	ldrb	r3, [r3, #0]
 800161a:	220f      	movs	r2, #15
 800161c:	18bc      	adds	r4, r7, r2
 800161e:	1c18      	adds	r0, r3, #0
 8001620:	f7ff fcd2 	bl	8000fc8 <can_read_reg>
 8001624:	1c03      	adds	r3, r0, #0
 8001626:	7023      	strb	r3, [r4, #0]
 8001628:	230f      	movs	r3, #15
 800162a:	18fb      	adds	r3, r7, r3
 800162c:	781b      	ldrb	r3, [r3, #0]
 800162e:	2208      	movs	r2, #8
 8001630:	4013      	ands	r3, r2
 8001632:	d10c      	bne.n	800164e <can_send_msg+0x86>
 8001634:	2317      	movs	r3, #23
 8001636:	18fb      	adds	r3, r7, r3
 8001638:	781b      	ldrb	r3, [r3, #0]
 800163a:	220c      	movs	r2, #12
 800163c:	18ba      	adds	r2, r7, r2
 800163e:	5cd2      	ldrb	r2, [r2, r3]
 8001640:	687b      	ldr	r3, [r7, #4]
 8001642:	1c10      	adds	r0, r2, #0
 8001644:	1c19      	adds	r1, r3, #0
 8001646:	f7ff ff47 	bl	80014d8 <_can_send_msg>
 800164a:	1c03      	adds	r3, r0, #0
 800164c:	e00c      	b.n	8001668 <can_send_msg+0xa0>
 800164e:	2317      	movs	r3, #23
 8001650:	18fb      	adds	r3, r7, r3
 8001652:	781a      	ldrb	r2, [r3, #0]
 8001654:	2317      	movs	r3, #23
 8001656:	18fb      	adds	r3, r7, r3
 8001658:	3201      	adds	r2, #1
 800165a:	701a      	strb	r2, [r3, #0]
 800165c:	2317      	movs	r3, #23
 800165e:	18fb      	adds	r3, r7, r3
 8001660:	781b      	ldrb	r3, [r3, #0]
 8001662:	2b02      	cmp	r3, #2
 8001664:	d9ca      	bls.n	80015fc <can_send_msg+0x34>
 8001666:	2304      	movs	r3, #4
 8001668:	1c18      	adds	r0, r3, #0
 800166a:	46bd      	mov	sp, r7
 800166c:	b007      	add	sp, #28
 800166e:	bd90      	pop	{r4, r7, pc}
 8001670:	08002d50 	.word	0x08002d50
 8001674:	08002df8 	.word	0x08002df8

08001678 <can_get_status>:
 8001678:	b590      	push	{r4, r7, lr}
 800167a:	b083      	sub	sp, #12
 800167c:	af00      	add	r7, sp, #0
 800167e:	f7ff fbd7 	bl	8000e30 <spi_start_cs>
 8001682:	20a0      	movs	r0, #160	; 0xa0
 8001684:	f7ff fbec 	bl	8000e60 <spi_send>
 8001688:	1dfc      	adds	r4, r7, #7
 800168a:	2000      	movs	r0, #0
 800168c:	f7ff fbe8 	bl	8000e60 <spi_send>
 8001690:	1c03      	adds	r3, r0, #0
 8001692:	7023      	strb	r3, [r4, #0]
 8001694:	f7ff fbd8 	bl	8000e48 <spi_end_cs>
 8001698:	1dfb      	adds	r3, r7, #7
 800169a:	781b      	ldrb	r3, [r3, #0]
 800169c:	1c18      	adds	r0, r3, #0
 800169e:	46bd      	mov	sp, r7
 80016a0:	b003      	add	sp, #12
 80016a2:	bd90      	pop	{r4, r7, pc}

080016a4 <_can_read_msg>:
 80016a4:	b590      	push	{r4, r7, lr}
 80016a6:	b087      	sub	sp, #28
 80016a8:	af00      	add	r7, sp, #0
 80016aa:	1c02      	adds	r2, r0, #0
 80016ac:	6039      	str	r1, [r7, #0]
 80016ae:	1dfb      	adds	r3, r7, #7
 80016b0:	701a      	strb	r2, [r3, #0]
 80016b2:	1dfb      	adds	r3, r7, #7
 80016b4:	781b      	ldrb	r3, [r3, #0]
 80016b6:	009a      	lsls	r2, r3, #2
 80016b8:	4b5a      	ldr	r3, [pc, #360]	; (8001824 <_can_read_msg+0x180>)
 80016ba:	18d3      	adds	r3, r2, r3
 80016bc:	613b      	str	r3, [r7, #16]
 80016be:	693b      	ldr	r3, [r7, #16]
 80016c0:	785a      	ldrb	r2, [r3, #1]
 80016c2:	2308      	movs	r3, #8
 80016c4:	18fb      	adds	r3, r7, r3
 80016c6:	1c10      	adds	r0, r2, #0
 80016c8:	1c19      	adds	r1, r3, #0
 80016ca:	2205      	movs	r2, #5
 80016cc:	f7ff fc9c 	bl	8001008 <can_read_regs>
 80016d0:	2300      	movs	r3, #0
 80016d2:	1c1a      	adds	r2, r3, #0
 80016d4:	2308      	movs	r3, #8
 80016d6:	18fb      	adds	r3, r7, r3
 80016d8:	5c9b      	ldrb	r3, [r3, r2]
 80016da:	00db      	lsls	r3, r3, #3
 80016dc:	2201      	movs	r2, #1
 80016de:	1c11      	adds	r1, r2, #0
 80016e0:	2208      	movs	r2, #8
 80016e2:	18ba      	adds	r2, r7, r2
 80016e4:	5c52      	ldrb	r2, [r2, r1]
 80016e6:	0952      	lsrs	r2, r2, #5
 80016e8:	b2d2      	uxtb	r2, r2
 80016ea:	189b      	adds	r3, r3, r2
 80016ec:	617b      	str	r3, [r7, #20]
 80016ee:	2301      	movs	r3, #1
 80016f0:	1c1a      	adds	r2, r3, #0
 80016f2:	2308      	movs	r3, #8
 80016f4:	18fb      	adds	r3, r7, r3
 80016f6:	5c9b      	ldrb	r3, [r3, r2]
 80016f8:	2208      	movs	r2, #8
 80016fa:	4013      	ands	r3, r2
 80016fc:	b2db      	uxtb	r3, r3
 80016fe:	2208      	movs	r2, #8
 8001700:	4293      	cmp	r3, r2
 8001702:	d122      	bne.n	800174a <_can_read_msg+0xa6>
 8001704:	697b      	ldr	r3, [r7, #20]
 8001706:	009a      	lsls	r2, r3, #2
 8001708:	2301      	movs	r3, #1
 800170a:	1c19      	adds	r1, r3, #0
 800170c:	2308      	movs	r3, #8
 800170e:	18fb      	adds	r3, r7, r3
 8001710:	5c5b      	ldrb	r3, [r3, r1]
 8001712:	1c19      	adds	r1, r3, #0
 8001714:	2303      	movs	r3, #3
 8001716:	400b      	ands	r3, r1
 8001718:	18d3      	adds	r3, r2, r3
 800171a:	617b      	str	r3, [r7, #20]
 800171c:	697b      	ldr	r3, [r7, #20]
 800171e:	021b      	lsls	r3, r3, #8
 8001720:	2202      	movs	r2, #2
 8001722:	1c11      	adds	r1, r2, #0
 8001724:	2208      	movs	r2, #8
 8001726:	18ba      	adds	r2, r7, r2
 8001728:	5c52      	ldrb	r2, [r2, r1]
 800172a:	189b      	adds	r3, r3, r2
 800172c:	617b      	str	r3, [r7, #20]
 800172e:	697b      	ldr	r3, [r7, #20]
 8001730:	021b      	lsls	r3, r3, #8
 8001732:	2203      	movs	r2, #3
 8001734:	1c11      	adds	r1, r2, #0
 8001736:	2208      	movs	r2, #8
 8001738:	18ba      	adds	r2, r7, r2
 800173a:	5c52      	ldrb	r2, [r2, r1]
 800173c:	189b      	adds	r3, r3, r2
 800173e:	617b      	str	r3, [r7, #20]
 8001740:	697b      	ldr	r3, [r7, #20]
 8001742:	2280      	movs	r2, #128	; 0x80
 8001744:	0612      	lsls	r2, r2, #24
 8001746:	4313      	orrs	r3, r2
 8001748:	617b      	str	r3, [r7, #20]
 800174a:	2304      	movs	r3, #4
 800174c:	1c1a      	adds	r2, r3, #0
 800174e:	2308      	movs	r3, #8
 8001750:	18fb      	adds	r3, r7, r3
 8001752:	5c9a      	ldrb	r2, [r3, r2]
 8001754:	210f      	movs	r1, #15
 8001756:	230f      	movs	r3, #15
 8001758:	18fb      	adds	r3, r7, r3
 800175a:	400a      	ands	r2, r1
 800175c:	701a      	strb	r2, [r3, #0]
 800175e:	230f      	movs	r3, #15
 8001760:	18fb      	adds	r3, r7, r3
 8001762:	781b      	ldrb	r3, [r3, #0]
 8001764:	2b08      	cmp	r3, #8
 8001766:	d901      	bls.n	800176c <_can_read_msg+0xc8>
 8001768:	2301      	movs	r3, #1
 800176a:	e057      	b.n	800181c <_can_read_msg+0x178>
 800176c:	693b      	ldr	r3, [r7, #16]
 800176e:	781b      	ldrb	r3, [r3, #0]
 8001770:	220e      	movs	r2, #14
 8001772:	18bc      	adds	r4, r7, r2
 8001774:	1c18      	adds	r0, r3, #0
 8001776:	f7ff fc27 	bl	8000fc8 <can_read_reg>
 800177a:	1c03      	adds	r3, r0, #0
 800177c:	7023      	strb	r3, [r4, #0]
 800177e:	2208      	movs	r2, #8
 8001780:	230e      	movs	r3, #14
 8001782:	18fb      	adds	r3, r7, r3
 8001784:	781b      	ldrb	r3, [r3, #0]
 8001786:	4013      	ands	r3, r2
 8001788:	b2db      	uxtb	r3, r3
 800178a:	2b00      	cmp	r3, #0
 800178c:	d004      	beq.n	8001798 <_can_read_msg+0xf4>
 800178e:	697b      	ldr	r3, [r7, #20]
 8001790:	2280      	movs	r2, #128	; 0x80
 8001792:	05d2      	lsls	r2, r2, #23
 8001794:	4313      	orrs	r3, r2
 8001796:	617b      	str	r3, [r7, #20]
 8001798:	683b      	ldr	r3, [r7, #0]
 800179a:	2214      	movs	r2, #20
 800179c:	18ba      	adds	r2, r7, r2
 800179e:	7810      	ldrb	r0, [r2, #0]
 80017a0:	781a      	ldrb	r2, [r3, #0]
 80017a2:	2100      	movs	r1, #0
 80017a4:	400a      	ands	r2, r1
 80017a6:	1c11      	adds	r1, r2, #0
 80017a8:	1c02      	adds	r2, r0, #0
 80017aa:	430a      	orrs	r2, r1
 80017ac:	701a      	strb	r2, [r3, #0]
 80017ae:	2215      	movs	r2, #21
 80017b0:	18ba      	adds	r2, r7, r2
 80017b2:	7810      	ldrb	r0, [r2, #0]
 80017b4:	785a      	ldrb	r2, [r3, #1]
 80017b6:	2100      	movs	r1, #0
 80017b8:	400a      	ands	r2, r1
 80017ba:	1c11      	adds	r1, r2, #0
 80017bc:	1c02      	adds	r2, r0, #0
 80017be:	430a      	orrs	r2, r1
 80017c0:	705a      	strb	r2, [r3, #1]
 80017c2:	2216      	movs	r2, #22
 80017c4:	18ba      	adds	r2, r7, r2
 80017c6:	7810      	ldrb	r0, [r2, #0]
 80017c8:	789a      	ldrb	r2, [r3, #2]
 80017ca:	2100      	movs	r1, #0
 80017cc:	400a      	ands	r2, r1
 80017ce:	1c11      	adds	r1, r2, #0
 80017d0:	1c02      	adds	r2, r0, #0
 80017d2:	430a      	orrs	r2, r1
 80017d4:	709a      	strb	r2, [r3, #2]
 80017d6:	2217      	movs	r2, #23
 80017d8:	18ba      	adds	r2, r7, r2
 80017da:	7810      	ldrb	r0, [r2, #0]
 80017dc:	78da      	ldrb	r2, [r3, #3]
 80017de:	2100      	movs	r1, #0
 80017e0:	400a      	ands	r2, r1
 80017e2:	1c11      	adds	r1, r2, #0
 80017e4:	1c02      	adds	r2, r0, #0
 80017e6:	430a      	orrs	r2, r1
 80017e8:	70da      	strb	r2, [r3, #3]
 80017ea:	683b      	ldr	r3, [r7, #0]
 80017ec:	220f      	movs	r2, #15
 80017ee:	18ba      	adds	r2, r7, r2
 80017f0:	7812      	ldrb	r2, [r2, #0]
 80017f2:	711a      	strb	r2, [r3, #4]
 80017f4:	693b      	ldr	r3, [r7, #16]
 80017f6:	7899      	ldrb	r1, [r3, #2]
 80017f8:	683b      	ldr	r3, [r7, #0]
 80017fa:	1d5a      	adds	r2, r3, #5
 80017fc:	230f      	movs	r3, #15
 80017fe:	18fb      	adds	r3, r7, r3
 8001800:	781b      	ldrb	r3, [r3, #0]
 8001802:	1c08      	adds	r0, r1, #0
 8001804:	1c11      	adds	r1, r2, #0
 8001806:	1c1a      	adds	r2, r3, #0
 8001808:	f7ff fbfe 	bl	8001008 <can_read_regs>
 800180c:	693b      	ldr	r3, [r7, #16]
 800180e:	78db      	ldrb	r3, [r3, #3]
 8001810:	202c      	movs	r0, #44	; 0x2c
 8001812:	1c19      	adds	r1, r3, #0
 8001814:	2200      	movs	r2, #0
 8001816:	f7ff fbad 	bl	8000f74 <can_modify_reg>
 800181a:	2300      	movs	r3, #0
 800181c:	1c18      	adds	r0, r3, #0
 800181e:	46bd      	mov	sp, r7
 8001820:	b007      	add	sp, #28
 8001822:	bd90      	pop	{r4, r7, pc}
 8001824:	08002e04 	.word	0x08002e04

08001828 <can_read_msg>:
 8001828:	b590      	push	{r4, r7, lr}
 800182a:	b085      	sub	sp, #20
 800182c:	af00      	add	r7, sp, #0
 800182e:	6078      	str	r0, [r7, #4]
 8001830:	230e      	movs	r3, #14
 8001832:	18fc      	adds	r4, r7, r3
 8001834:	f7ff ff20 	bl	8001678 <can_get_status>
 8001838:	1c03      	adds	r3, r0, #0
 800183a:	7023      	strb	r3, [r4, #0]
 800183c:	230e      	movs	r3, #14
 800183e:	18fb      	adds	r3, r7, r3
 8001840:	781b      	ldrb	r3, [r3, #0]
 8001842:	2201      	movs	r2, #1
 8001844:	4013      	ands	r3, r2
 8001846:	d009      	beq.n	800185c <can_read_msg+0x34>
 8001848:	230f      	movs	r3, #15
 800184a:	18fc      	adds	r4, r7, r3
 800184c:	687b      	ldr	r3, [r7, #4]
 800184e:	2000      	movs	r0, #0
 8001850:	1c19      	adds	r1, r3, #0
 8001852:	f7ff ff27 	bl	80016a4 <_can_read_msg>
 8001856:	1c03      	adds	r3, r0, #0
 8001858:	7023      	strb	r3, [r4, #0]
 800185a:	e013      	b.n	8001884 <can_read_msg+0x5c>
 800185c:	230e      	movs	r3, #14
 800185e:	18fb      	adds	r3, r7, r3
 8001860:	781b      	ldrb	r3, [r3, #0]
 8001862:	2202      	movs	r2, #2
 8001864:	4013      	ands	r3, r2
 8001866:	d009      	beq.n	800187c <can_read_msg+0x54>
 8001868:	230f      	movs	r3, #15
 800186a:	18fc      	adds	r4, r7, r3
 800186c:	687b      	ldr	r3, [r7, #4]
 800186e:	2001      	movs	r0, #1
 8001870:	1c19      	adds	r1, r3, #0
 8001872:	f7ff ff17 	bl	80016a4 <_can_read_msg>
 8001876:	1c03      	adds	r3, r0, #0
 8001878:	7023      	strb	r3, [r4, #0]
 800187a:	e003      	b.n	8001884 <can_read_msg+0x5c>
 800187c:	230f      	movs	r3, #15
 800187e:	18fb      	adds	r3, r7, r3
 8001880:	2205      	movs	r2, #5
 8001882:	701a      	strb	r2, [r3, #0]
 8001884:	230f      	movs	r3, #15
 8001886:	18fb      	adds	r3, r7, r3
 8001888:	781b      	ldrb	r3, [r3, #0]
 800188a:	1c18      	adds	r0, r3, #0
 800188c:	46bd      	mov	sp, r7
 800188e:	b005      	add	sp, #20
 8001890:	bd90      	pop	{r4, r7, pc}
 8001892:	46c0      	nop			; (mov r8, r8)

08001894 <can_check_new_msg>:
 8001894:	b590      	push	{r4, r7, lr}
 8001896:	b083      	sub	sp, #12
 8001898:	af00      	add	r7, sp, #0
 800189a:	1dfc      	adds	r4, r7, #7
 800189c:	f7ff feec 	bl	8001678 <can_get_status>
 80018a0:	1c03      	adds	r3, r0, #0
 80018a2:	7023      	strb	r3, [r4, #0]
 80018a4:	2203      	movs	r2, #3
 80018a6:	1dfb      	adds	r3, r7, #7
 80018a8:	781b      	ldrb	r3, [r3, #0]
 80018aa:	4013      	ands	r3, r2
 80018ac:	b2db      	uxtb	r3, r3
 80018ae:	2b00      	cmp	r3, #0
 80018b0:	d001      	beq.n	80018b6 <can_check_new_msg+0x22>
 80018b2:	2301      	movs	r3, #1
 80018b4:	e000      	b.n	80018b8 <can_check_new_msg+0x24>
 80018b6:	2300      	movs	r3, #0
 80018b8:	1c18      	adds	r0, r3, #0
 80018ba:	46bd      	mov	sp, r7
 80018bc:	b003      	add	sp, #12
 80018be:	bd90      	pop	{r4, r7, pc}

080018c0 <_can_set_filter>:
 80018c0:	b580      	push	{r7, lr}
 80018c2:	b084      	sub	sp, #16
 80018c4:	af00      	add	r7, sp, #0
 80018c6:	603a      	str	r2, [r7, #0]
 80018c8:	1dfb      	adds	r3, r7, #7
 80018ca:	1c02      	adds	r2, r0, #0
 80018cc:	701a      	strb	r2, [r3, #0]
 80018ce:	1dbb      	adds	r3, r7, #6
 80018d0:	1c0a      	adds	r2, r1, #0
 80018d2:	701a      	strb	r2, [r3, #0]
 80018d4:	1dfb      	adds	r3, r7, #7
 80018d6:	781b      	ldrb	r3, [r3, #0]
 80018d8:	2b05      	cmp	r3, #5
 80018da:	d822      	bhi.n	8001922 <_can_set_filter+0x62>
 80018dc:	009a      	lsls	r2, r3, #2
 80018de:	4b1e      	ldr	r3, [pc, #120]	; (8001958 <_can_set_filter+0x98>)
 80018e0:	18d3      	adds	r3, r2, r3
 80018e2:	681b      	ldr	r3, [r3, #0]
 80018e4:	469f      	mov	pc, r3
 80018e6:	230f      	movs	r3, #15
 80018e8:	18fb      	adds	r3, r7, r3
 80018ea:	2200      	movs	r2, #0
 80018ec:	701a      	strb	r2, [r3, #0]
 80018ee:	e01a      	b.n	8001926 <_can_set_filter+0x66>
 80018f0:	230f      	movs	r3, #15
 80018f2:	18fb      	adds	r3, r7, r3
 80018f4:	2204      	movs	r2, #4
 80018f6:	701a      	strb	r2, [r3, #0]
 80018f8:	e015      	b.n	8001926 <_can_set_filter+0x66>
 80018fa:	230f      	movs	r3, #15
 80018fc:	18fb      	adds	r3, r7, r3
 80018fe:	2208      	movs	r2, #8
 8001900:	701a      	strb	r2, [r3, #0]
 8001902:	e010      	b.n	8001926 <_can_set_filter+0x66>
 8001904:	230f      	movs	r3, #15
 8001906:	18fb      	adds	r3, r7, r3
 8001908:	2210      	movs	r2, #16
 800190a:	701a      	strb	r2, [r3, #0]
 800190c:	e00b      	b.n	8001926 <_can_set_filter+0x66>
 800190e:	230f      	movs	r3, #15
 8001910:	18fb      	adds	r3, r7, r3
 8001912:	2214      	movs	r2, #20
 8001914:	701a      	strb	r2, [r3, #0]
 8001916:	e006      	b.n	8001926 <_can_set_filter+0x66>
 8001918:	230f      	movs	r3, #15
 800191a:	18fb      	adds	r3, r7, r3
 800191c:	2218      	movs	r2, #24
 800191e:	701a      	strb	r2, [r3, #0]
 8001920:	e001      	b.n	8001926 <_can_set_filter+0x66>
 8001922:	2301      	movs	r3, #1
 8001924:	e014      	b.n	8001950 <_can_set_filter+0x90>
 8001926:	2308      	movs	r3, #8
 8001928:	18f9      	adds	r1, r7, r3
 800192a:	1dbb      	adds	r3, r7, #6
 800192c:	781a      	ldrb	r2, [r3, #0]
 800192e:	683b      	ldr	r3, [r7, #0]
 8001930:	1c08      	adds	r0, r1, #0
 8001932:	1c11      	adds	r1, r2, #0
 8001934:	1c1a      	adds	r2, r3, #0
 8001936:	f7ff fd43 	bl	80013c0 <can_prepare_id>
 800193a:	230f      	movs	r3, #15
 800193c:	18fb      	adds	r3, r7, r3
 800193e:	781a      	ldrb	r2, [r3, #0]
 8001940:	2308      	movs	r3, #8
 8001942:	18fb      	adds	r3, r7, r3
 8001944:	1c10      	adds	r0, r2, #0
 8001946:	1c19      	adds	r1, r3, #0
 8001948:	2204      	movs	r2, #4
 800194a:	f7ff fadb 	bl	8000f04 <can_set_regs>
 800194e:	2300      	movs	r3, #0
 8001950:	1c18      	adds	r0, r3, #0
 8001952:	46bd      	mov	sp, r7
 8001954:	b004      	add	sp, #16
 8001956:	bd80      	pop	{r7, pc}
 8001958:	08002e4c 	.word	0x08002e4c

0800195c <_can_set_mask>:
 800195c:	b580      	push	{r7, lr}
 800195e:	b084      	sub	sp, #16
 8001960:	af00      	add	r7, sp, #0
 8001962:	603a      	str	r2, [r7, #0]
 8001964:	1dfb      	adds	r3, r7, #7
 8001966:	1c02      	adds	r2, r0, #0
 8001968:	701a      	strb	r2, [r3, #0]
 800196a:	1dbb      	adds	r3, r7, #6
 800196c:	1c0a      	adds	r2, r1, #0
 800196e:	701a      	strb	r2, [r3, #0]
 8001970:	1dfb      	adds	r3, r7, #7
 8001972:	781b      	ldrb	r3, [r3, #0]
 8001974:	2b00      	cmp	r3, #0
 8001976:	d002      	beq.n	800197e <_can_set_mask+0x22>
 8001978:	2b01      	cmp	r3, #1
 800197a:	d005      	beq.n	8001988 <_can_set_mask+0x2c>
 800197c:	e009      	b.n	8001992 <_can_set_mask+0x36>
 800197e:	230f      	movs	r3, #15
 8001980:	18fb      	adds	r3, r7, r3
 8001982:	2220      	movs	r2, #32
 8001984:	701a      	strb	r2, [r3, #0]
 8001986:	e006      	b.n	8001996 <_can_set_mask+0x3a>
 8001988:	230f      	movs	r3, #15
 800198a:	18fb      	adds	r3, r7, r3
 800198c:	2224      	movs	r2, #36	; 0x24
 800198e:	701a      	strb	r2, [r3, #0]
 8001990:	e001      	b.n	8001996 <_can_set_mask+0x3a>
 8001992:	2301      	movs	r3, #1
 8001994:	e014      	b.n	80019c0 <_can_set_mask+0x64>
 8001996:	2308      	movs	r3, #8
 8001998:	18f9      	adds	r1, r7, r3
 800199a:	1dbb      	adds	r3, r7, #6
 800199c:	781a      	ldrb	r2, [r3, #0]
 800199e:	683b      	ldr	r3, [r7, #0]
 80019a0:	1c08      	adds	r0, r1, #0
 80019a2:	1c11      	adds	r1, r2, #0
 80019a4:	1c1a      	adds	r2, r3, #0
 80019a6:	f7ff fd0b 	bl	80013c0 <can_prepare_id>
 80019aa:	230f      	movs	r3, #15
 80019ac:	18fb      	adds	r3, r7, r3
 80019ae:	781a      	ldrb	r2, [r3, #0]
 80019b0:	2308      	movs	r3, #8
 80019b2:	18fb      	adds	r3, r7, r3
 80019b4:	1c10      	adds	r0, r2, #0
 80019b6:	1c19      	adds	r1, r3, #0
 80019b8:	2204      	movs	r2, #4
 80019ba:	f7ff faa3 	bl	8000f04 <can_set_regs>
 80019be:	2300      	movs	r3, #0
 80019c0:	1c18      	adds	r0, r3, #0
 80019c2:	46bd      	mov	sp, r7
 80019c4:	b004      	add	sp, #16
 80019c6:	bd80      	pop	{r7, pc}

080019c8 <can_set_id>:
 80019c8:	b580      	push	{r7, lr}
 80019ca:	b082      	sub	sp, #8
 80019cc:	af00      	add	r7, sp, #0
 80019ce:	6078      	str	r0, [r7, #4]
 80019d0:	6039      	str	r1, [r7, #0]
 80019d2:	2080      	movs	r0, #128	; 0x80
 80019d4:	f7ff fba4 	bl	8001120 <can_set_mode>
 80019d8:	1e03      	subs	r3, r0, #0
 80019da:	d001      	beq.n	80019e0 <can_set_id+0x18>
 80019dc:	2301      	movs	r3, #1
 80019de:	e037      	b.n	8001a50 <can_set_id+0x88>
 80019e0:	683b      	ldr	r3, [r7, #0]
 80019e2:	2000      	movs	r0, #0
 80019e4:	2100      	movs	r1, #0
 80019e6:	1c1a      	adds	r2, r3, #0
 80019e8:	f7ff ff6a 	bl	80018c0 <_can_set_filter>
 80019ec:	687b      	ldr	r3, [r7, #4]
 80019ee:	2001      	movs	r0, #1
 80019f0:	2100      	movs	r1, #0
 80019f2:	1c1a      	adds	r2, r3, #0
 80019f4:	f7ff ff64 	bl	80018c0 <_can_set_filter>
 80019f8:	687b      	ldr	r3, [r7, #4]
 80019fa:	2002      	movs	r0, #2
 80019fc:	2100      	movs	r1, #0
 80019fe:	1c1a      	adds	r2, r3, #0
 8001a00:	f7ff ff5e 	bl	80018c0 <_can_set_filter>
 8001a04:	687b      	ldr	r3, [r7, #4]
 8001a06:	2003      	movs	r0, #3
 8001a08:	2100      	movs	r1, #0
 8001a0a:	1c1a      	adds	r2, r3, #0
 8001a0c:	f7ff ff58 	bl	80018c0 <_can_set_filter>
 8001a10:	683b      	ldr	r3, [r7, #0]
 8001a12:	2004      	movs	r0, #4
 8001a14:	2100      	movs	r1, #0
 8001a16:	1c1a      	adds	r2, r3, #0
 8001a18:	f7ff ff52 	bl	80018c0 <_can_set_filter>
 8001a1c:	687b      	ldr	r3, [r7, #4]
 8001a1e:	2005      	movs	r0, #5
 8001a20:	2100      	movs	r1, #0
 8001a22:	1c1a      	adds	r2, r3, #0
 8001a24:	f7ff ff4c 	bl	80018c0 <_can_set_filter>
 8001a28:	4b0b      	ldr	r3, [pc, #44]	; (8001a58 <can_set_id+0x90>)
 8001a2a:	2000      	movs	r0, #0
 8001a2c:	2100      	movs	r1, #0
 8001a2e:	1c1a      	adds	r2, r3, #0
 8001a30:	f7ff ff94 	bl	800195c <_can_set_mask>
 8001a34:	4b08      	ldr	r3, [pc, #32]	; (8001a58 <can_set_id+0x90>)
 8001a36:	2001      	movs	r0, #1
 8001a38:	2100      	movs	r1, #0
 8001a3a:	1c1a      	adds	r2, r3, #0
 8001a3c:	f7ff ff8e 	bl	800195c <_can_set_mask>
 8001a40:	2000      	movs	r0, #0
 8001a42:	f7ff fb6d 	bl	8001120 <can_set_mode>
 8001a46:	1e03      	subs	r3, r0, #0
 8001a48:	d001      	beq.n	8001a4e <can_set_id+0x86>
 8001a4a:	2301      	movs	r3, #1
 8001a4c:	e000      	b.n	8001a50 <can_set_id+0x88>
 8001a4e:	2300      	movs	r3, #0
 8001a50:	1c18      	adds	r0, r3, #0
 8001a52:	46bd      	mov	sp, r7
 8001a54:	b002      	add	sp, #8
 8001a56:	bd80      	pop	{r7, pc}
 8001a58:	0000ffff 	.word	0x0000ffff

08001a5c <can_core_config>:
 8001a5c:	b580      	push	{r7, lr}
 8001a5e:	b082      	sub	sp, #8
 8001a60:	af00      	add	r7, sp, #0
 8001a62:	1c02      	adds	r2, r0, #0
 8001a64:	1dfb      	adds	r3, r7, #7
 8001a66:	701a      	strb	r2, [r3, #0]
 8001a68:	2380      	movs	r3, #128	; 0x80
 8001a6a:	029b      	lsls	r3, r3, #10
 8001a6c:	1c18      	adds	r0, r3, #0
 8001a6e:	f7ff f93f 	bl	8000cf0 <LL_AHB1_GRP1_EnableClock>
 8001a72:	2390      	movs	r3, #144	; 0x90
 8001a74:	05db      	lsls	r3, r3, #23
 8001a76:	1c18      	adds	r0, r3, #0
 8001a78:	2180      	movs	r1, #128	; 0x80
 8001a7a:	2202      	movs	r2, #2
 8001a7c:	f7ff f964 	bl	8000d48 <LL_GPIO_SetPinMode>
 8001a80:	2390      	movs	r3, #144	; 0x90
 8001a82:	05db      	lsls	r3, r3, #23
 8001a84:	1c18      	adds	r0, r3, #0
 8001a86:	2180      	movs	r1, #128	; 0x80
 8001a88:	2200      	movs	r2, #0
 8001a8a:	f7ff f995 	bl	8000db8 <LL_GPIO_SetAFPin_0_7>
 8001a8e:	2390      	movs	r3, #144	; 0x90
 8001a90:	05db      	lsls	r3, r3, #23
 8001a92:	1c18      	adds	r0, r3, #0
 8001a94:	2180      	movs	r1, #128	; 0x80
 8001a96:	2203      	movs	r2, #3
 8001a98:	f7ff f972 	bl	8000d80 <LL_GPIO_SetPinSpeed>
 8001a9c:	2390      	movs	r3, #144	; 0x90
 8001a9e:	05db      	lsls	r3, r3, #23
 8001aa0:	1c18      	adds	r0, r3, #0
 8001aa2:	2140      	movs	r1, #64	; 0x40
 8001aa4:	2202      	movs	r2, #2
 8001aa6:	f7ff f94f 	bl	8000d48 <LL_GPIO_SetPinMode>
 8001aaa:	2390      	movs	r3, #144	; 0x90
 8001aac:	05db      	lsls	r3, r3, #23
 8001aae:	1c18      	adds	r0, r3, #0
 8001ab0:	2140      	movs	r1, #64	; 0x40
 8001ab2:	2200      	movs	r2, #0
 8001ab4:	f7ff f980 	bl	8000db8 <LL_GPIO_SetAFPin_0_7>
 8001ab8:	2390      	movs	r3, #144	; 0x90
 8001aba:	05db      	lsls	r3, r3, #23
 8001abc:	1c18      	adds	r0, r3, #0
 8001abe:	2120      	movs	r1, #32
 8001ac0:	2202      	movs	r2, #2
 8001ac2:	f7ff f941 	bl	8000d48 <LL_GPIO_SetPinMode>
 8001ac6:	2390      	movs	r3, #144	; 0x90
 8001ac8:	05db      	lsls	r3, r3, #23
 8001aca:	1c18      	adds	r0, r3, #0
 8001acc:	2120      	movs	r1, #32
 8001ace:	2200      	movs	r2, #0
 8001ad0:	f7ff f972 	bl	8000db8 <LL_GPIO_SetAFPin_0_7>
 8001ad4:	2390      	movs	r3, #144	; 0x90
 8001ad6:	05db      	lsls	r3, r3, #23
 8001ad8:	1c18      	adds	r0, r3, #0
 8001ada:	2120      	movs	r1, #32
 8001adc:	2203      	movs	r2, #3
 8001ade:	f7ff f94f 	bl	8000d80 <LL_GPIO_SetPinSpeed>
 8001ae2:	2390      	movs	r3, #144	; 0x90
 8001ae4:	05db      	lsls	r3, r3, #23
 8001ae6:	1c18      	adds	r0, r3, #0
 8001ae8:	2110      	movs	r1, #16
 8001aea:	2201      	movs	r2, #1
 8001aec:	f7ff f92c 	bl	8000d48 <LL_GPIO_SetPinMode>
 8001af0:	2390      	movs	r3, #144	; 0x90
 8001af2:	05db      	lsls	r3, r3, #23
 8001af4:	1c18      	adds	r0, r3, #0
 8001af6:	2110      	movs	r1, #16
 8001af8:	2203      	movs	r2, #3
 8001afa:	f7ff f941 	bl	8000d80 <LL_GPIO_SetPinSpeed>
 8001afe:	2390      	movs	r3, #144	; 0x90
 8001b00:	05db      	lsls	r3, r3, #23
 8001b02:	1c18      	adds	r0, r3, #0
 8001b04:	2110      	movs	r1, #16
 8001b06:	f7ff f97b 	bl	8000e00 <LL_GPIO_SetOutputPin>
 8001b0a:	2380      	movs	r3, #128	; 0x80
 8001b0c:	015b      	lsls	r3, r3, #5
 8001b0e:	1c18      	adds	r0, r3, #0
 8001b10:	f7ff f904 	bl	8000d1c <LL_APB1_GRP2_EnableClock>
 8001b14:	4a1c      	ldr	r2, [pc, #112]	; (8001b88 <can_core_config+0x12c>)
 8001b16:	2382      	movs	r3, #130	; 0x82
 8001b18:	005b      	lsls	r3, r3, #1
 8001b1a:	1c10      	adds	r0, r2, #0
 8001b1c:	1c19      	adds	r1, r3, #0
 8001b1e:	f7ff f825 	bl	8000b6c <LL_SPI_SetMode>
 8001b22:	4b19      	ldr	r3, [pc, #100]	; (8001b88 <can_core_config+0x12c>)
 8001b24:	1c18      	adds	r0, r3, #0
 8001b26:	2110      	movs	r1, #16
 8001b28:	f7ff f832 	bl	8000b90 <LL_SPI_SetBaudRatePrescaler>
 8001b2c:	4b16      	ldr	r3, [pc, #88]	; (8001b88 <can_core_config+0x12c>)
 8001b2e:	1c18      	adds	r0, r3, #0
 8001b30:	2100      	movs	r1, #0
 8001b32:	f7ff f83f 	bl	8000bb4 <LL_SPI_SetTransferBitOrder>
 8001b36:	4a14      	ldr	r2, [pc, #80]	; (8001b88 <can_core_config+0x12c>)
 8001b38:	23e0      	movs	r3, #224	; 0xe0
 8001b3a:	00db      	lsls	r3, r3, #3
 8001b3c:	1c10      	adds	r0, r2, #0
 8001b3e:	1c19      	adds	r1, r3, #0
 8001b40:	f7ff f84a 	bl	8000bd8 <LL_SPI_SetDataWidth>
 8001b44:	4a10      	ldr	r2, [pc, #64]	; (8001b88 <can_core_config+0x12c>)
 8001b46:	2380      	movs	r3, #128	; 0x80
 8001b48:	009b      	lsls	r3, r3, #2
 8001b4a:	1c10      	adds	r0, r2, #0
 8001b4c:	1c19      	adds	r1, r3, #0
 8001b4e:	f7ff f867 	bl	8000c20 <LL_SPI_SetNSSMode>
 8001b52:	4a0d      	ldr	r2, [pc, #52]	; (8001b88 <can_core_config+0x12c>)
 8001b54:	2380      	movs	r3, #128	; 0x80
 8001b56:	015b      	lsls	r3, r3, #5
 8001b58:	1c10      	adds	r0, r2, #0
 8001b5a:	1c19      	adds	r1, r3, #0
 8001b5c:	f7ff f84e 	bl	8000bfc <LL_SPI_SetRxFIFOThreshold>
 8001b60:	4b09      	ldr	r3, [pc, #36]	; (8001b88 <can_core_config+0x12c>)
 8001b62:	1c18      	adds	r0, r3, #0
 8001b64:	f7fe fff4 	bl	8000b50 <LL_SPI_Enable>
 8001b68:	f7ff fa86 	bl	8001078 <can_reset>
 8001b6c:	1dfb      	adds	r3, r7, #7
 8001b6e:	781b      	ldrb	r3, [r3, #0]
 8001b70:	1c18      	adds	r0, r3, #0
 8001b72:	f7ff fb2f 	bl	80011d4 <can_set_bitrate>
 8001b76:	1e03      	subs	r3, r0, #0
 8001b78:	d001      	beq.n	8001b7e <can_core_config+0x122>
 8001b7a:	2301      	movs	r3, #1
 8001b7c:	e000      	b.n	8001b80 <can_core_config+0x124>
 8001b7e:	2300      	movs	r3, #0
 8001b80:	1c18      	adds	r0, r3, #0
 8001b82:	46bd      	mov	sp, r7
 8001b84:	b002      	add	sp, #8
 8001b86:	bd80      	pop	{r7, pc}
 8001b88:	40013000 	.word	0x40013000

08001b8c <LL_GPIO_SetPinMode>:
 8001b8c:	b580      	push	{r7, lr}
 8001b8e:	b084      	sub	sp, #16
 8001b90:	af00      	add	r7, sp, #0
 8001b92:	60f8      	str	r0, [r7, #12]
 8001b94:	60b9      	str	r1, [r7, #8]
 8001b96:	607a      	str	r2, [r7, #4]
 8001b98:	68fb      	ldr	r3, [r7, #12]
 8001b9a:	6819      	ldr	r1, [r3, #0]
 8001b9c:	68bb      	ldr	r3, [r7, #8]
 8001b9e:	68ba      	ldr	r2, [r7, #8]
 8001ba0:	435a      	muls	r2, r3
 8001ba2:	1c13      	adds	r3, r2, #0
 8001ba4:	005b      	lsls	r3, r3, #1
 8001ba6:	189b      	adds	r3, r3, r2
 8001ba8:	43db      	mvns	r3, r3
 8001baa:	400b      	ands	r3, r1
 8001bac:	1c1a      	adds	r2, r3, #0
 8001bae:	68bb      	ldr	r3, [r7, #8]
 8001bb0:	68b9      	ldr	r1, [r7, #8]
 8001bb2:	434b      	muls	r3, r1
 8001bb4:	6879      	ldr	r1, [r7, #4]
 8001bb6:	434b      	muls	r3, r1
 8001bb8:	431a      	orrs	r2, r3
 8001bba:	68fb      	ldr	r3, [r7, #12]
 8001bbc:	601a      	str	r2, [r3, #0]
 8001bbe:	46bd      	mov	sp, r7
 8001bc0:	b004      	add	sp, #16
 8001bc2:	bd80      	pop	{r7, pc}

08001bc4 <LL_AHB1_GRP1_EnableClock>:
 8001bc4:	b580      	push	{r7, lr}
 8001bc6:	b084      	sub	sp, #16
 8001bc8:	af00      	add	r7, sp, #0
 8001bca:	6078      	str	r0, [r7, #4]
 8001bcc:	4b07      	ldr	r3, [pc, #28]	; (8001bec <LL_AHB1_GRP1_EnableClock+0x28>)
 8001bce:	4a07      	ldr	r2, [pc, #28]	; (8001bec <LL_AHB1_GRP1_EnableClock+0x28>)
 8001bd0:	6951      	ldr	r1, [r2, #20]
 8001bd2:	687a      	ldr	r2, [r7, #4]
 8001bd4:	430a      	orrs	r2, r1
 8001bd6:	615a      	str	r2, [r3, #20]
 8001bd8:	4b04      	ldr	r3, [pc, #16]	; (8001bec <LL_AHB1_GRP1_EnableClock+0x28>)
 8001bda:	695b      	ldr	r3, [r3, #20]
 8001bdc:	687a      	ldr	r2, [r7, #4]
 8001bde:	4013      	ands	r3, r2
 8001be0:	60fb      	str	r3, [r7, #12]
 8001be2:	68fb      	ldr	r3, [r7, #12]
 8001be4:	46bd      	mov	sp, r7
 8001be6:	b004      	add	sp, #16
 8001be8:	bd80      	pop	{r7, pc}
 8001bea:	46c0      	nop			; (mov r8, r8)
 8001bec:	40021000 	.word	0x40021000

08001bf0 <my_setup>:
 8001bf0:	b580      	push	{r7, lr}
 8001bf2:	af00      	add	r7, sp, #0
 8001bf4:	2380      	movs	r3, #128	; 0x80
 8001bf6:	031b      	lsls	r3, r3, #12
 8001bf8:	1c18      	adds	r0, r3, #0
 8001bfa:	f7ff ffe3 	bl	8001bc4 <LL_AHB1_GRP1_EnableClock>
 8001bfe:	4a05      	ldr	r2, [pc, #20]	; (8001c14 <my_setup+0x24>)
 8001c00:	2380      	movs	r3, #128	; 0x80
 8001c02:	005b      	lsls	r3, r3, #1
 8001c04:	1c10      	adds	r0, r2, #0
 8001c06:	1c19      	adds	r1, r3, #0
 8001c08:	2201      	movs	r2, #1
 8001c0a:	f7ff ffbf 	bl	8001b8c <LL_GPIO_SetPinMode>
 8001c0e:	46c0      	nop			; (mov r8, r8)
 8001c10:	46bd      	mov	sp, r7
 8001c12:	bd80      	pop	{r7, pc}
 8001c14:	48000800 	.word	0x48000800

08001c18 <can_do_setup>:
 8001c18:	b580      	push	{r7, lr}
 8001c1a:	b082      	sub	sp, #8
 8001c1c:	af00      	add	r7, sp, #0
 8001c1e:	6078      	str	r0, [r7, #4]
 8001c20:	b672      	cpsid	i
 8001c22:	687b      	ldr	r3, [r7, #4]
 8001c24:	2b00      	cmp	r3, #0
 8001c26:	d100      	bne.n	8001c2a <can_do_setup+0x12>
 8001c28:	e7fe      	b.n	8001c28 <can_do_setup+0x10>
 8001c2a:	b662      	cpsie	i
 8001c2c:	4a0f      	ldr	r2, [pc, #60]	; (8001c6c <can_do_setup+0x54>)
 8001c2e:	23bd      	movs	r3, #189	; 0xbd
 8001c30:	009b      	lsls	r3, r3, #2
 8001c32:	1c10      	adds	r0, r2, #0
 8001c34:	2100      	movs	r1, #0
 8001c36:	1c1a      	adds	r2, r3, #0
 8001c38:	f000 ffc2 	bl	8002bc0 <memset>
 8001c3c:	f000 fb4c 	bl	80022d8 <net_init>
 8001c40:	f000 fb32 	bl	80022a8 <net_start>
 8001c44:	f000 fb3a 	bl	80022bc <net_wait_join>
 8001c48:	1e03      	subs	r3, r0, #0
 8001c4a:	d008      	beq.n	8001c5e <can_do_setup+0x46>
 8001c4c:	f000 fb22 	bl	8002294 <net_node_num>
 8001c50:	1c03      	adds	r3, r0, #0
 8001c52:	1c1a      	adds	r2, r3, #0
 8001c54:	4b06      	ldr	r3, [pc, #24]	; (8001c70 <can_do_setup+0x58>)
 8001c56:	1c18      	adds	r0, r3, #0
 8001c58:	1c11      	adds	r1, r2, #0
 8001c5a:	f000 fa43 	bl	80020e4 <xprintf>
 8001c5e:	4b03      	ldr	r3, [pc, #12]	; (8001c6c <can_do_setup+0x54>)
 8001c60:	687a      	ldr	r2, [r7, #4]
 8001c62:	601a      	str	r2, [r3, #0]
 8001c64:	46bd      	mov	sp, r7
 8001c66:	b002      	add	sp, #8
 8001c68:	bd80      	pop	{r7, pc}
 8001c6a:	46c0      	nop			; (mov r8, r8)
 8001c6c:	200004e8 	.word	0x200004e8
 8001c70:	08002d54 	.word	0x08002d54

08001c74 <LL_GPIO_SetPinMode>:
 8001c74:	b580      	push	{r7, lr}
 8001c76:	b084      	sub	sp, #16
 8001c78:	af00      	add	r7, sp, #0
 8001c7a:	60f8      	str	r0, [r7, #12]
 8001c7c:	60b9      	str	r1, [r7, #8]
 8001c7e:	607a      	str	r2, [r7, #4]
 8001c80:	68fb      	ldr	r3, [r7, #12]
 8001c82:	6819      	ldr	r1, [r3, #0]
 8001c84:	68bb      	ldr	r3, [r7, #8]
 8001c86:	68ba      	ldr	r2, [r7, #8]
 8001c88:	435a      	muls	r2, r3
 8001c8a:	1c13      	adds	r3, r2, #0
 8001c8c:	005b      	lsls	r3, r3, #1
 8001c8e:	189b      	adds	r3, r3, r2
 8001c90:	43db      	mvns	r3, r3
 8001c92:	400b      	ands	r3, r1
 8001c94:	1c1a      	adds	r2, r3, #0
 8001c96:	68bb      	ldr	r3, [r7, #8]
 8001c98:	68b9      	ldr	r1, [r7, #8]
 8001c9a:	434b      	muls	r3, r1
 8001c9c:	6879      	ldr	r1, [r7, #4]
 8001c9e:	434b      	muls	r3, r1
 8001ca0:	431a      	orrs	r2, r3
 8001ca2:	68fb      	ldr	r3, [r7, #12]
 8001ca4:	601a      	str	r2, [r3, #0]
 8001ca6:	46bd      	mov	sp, r7
 8001ca8:	b004      	add	sp, #16
 8001caa:	bd80      	pop	{r7, pc}

08001cac <LL_GPIO_SetOutputPin>:
 8001cac:	b580      	push	{r7, lr}
 8001cae:	b082      	sub	sp, #8
 8001cb0:	af00      	add	r7, sp, #0
 8001cb2:	6078      	str	r0, [r7, #4]
 8001cb4:	6039      	str	r1, [r7, #0]
 8001cb6:	687b      	ldr	r3, [r7, #4]
 8001cb8:	683a      	ldr	r2, [r7, #0]
 8001cba:	619a      	str	r2, [r3, #24]
 8001cbc:	46bd      	mov	sp, r7
 8001cbe:	b002      	add	sp, #8
 8001cc0:	bd80      	pop	{r7, pc}
 8001cc2:	46c0      	nop			; (mov r8, r8)

08001cc4 <LL_AHB1_GRP1_EnableClock>:
 8001cc4:	b580      	push	{r7, lr}
 8001cc6:	b084      	sub	sp, #16
 8001cc8:	af00      	add	r7, sp, #0
 8001cca:	6078      	str	r0, [r7, #4]
 8001ccc:	4b07      	ldr	r3, [pc, #28]	; (8001cec <LL_AHB1_GRP1_EnableClock+0x28>)
 8001cce:	4a07      	ldr	r2, [pc, #28]	; (8001cec <LL_AHB1_GRP1_EnableClock+0x28>)
 8001cd0:	6951      	ldr	r1, [r2, #20]
 8001cd2:	687a      	ldr	r2, [r7, #4]
 8001cd4:	430a      	orrs	r2, r1
 8001cd6:	615a      	str	r2, [r3, #20]
 8001cd8:	4b04      	ldr	r3, [pc, #16]	; (8001cec <LL_AHB1_GRP1_EnableClock+0x28>)
 8001cda:	695b      	ldr	r3, [r3, #20]
 8001cdc:	687a      	ldr	r2, [r7, #4]
 8001cde:	4013      	ands	r3, r2
 8001ce0:	60fb      	str	r3, [r7, #12]
 8001ce2:	68fb      	ldr	r3, [r7, #12]
 8001ce4:	46bd      	mov	sp, r7
 8001ce6:	b004      	add	sp, #16
 8001ce8:	bd80      	pop	{r7, pc}
 8001cea:	46c0      	nop			; (mov r8, r8)
 8001cec:	40021000 	.word	0x40021000

08001cf0 <NMI_Handler>:
 8001cf0:	b580      	push	{r7, lr}
 8001cf2:	af00      	add	r7, sp, #0
 8001cf4:	46bd      	mov	sp, r7
 8001cf6:	bd80      	pop	{r7, pc}

08001cf8 <HardFault_Handler>:
 8001cf8:	b580      	push	{r7, lr}
 8001cfa:	af00      	add	r7, sp, #0
 8001cfc:	2380      	movs	r3, #128	; 0x80
 8001cfe:	031b      	lsls	r3, r3, #12
 8001d00:	1c18      	adds	r0, r3, #0
 8001d02:	f7ff ffdf 	bl	8001cc4 <LL_AHB1_GRP1_EnableClock>
 8001d06:	4a08      	ldr	r2, [pc, #32]	; (8001d28 <HardFault_Handler+0x30>)
 8001d08:	2380      	movs	r3, #128	; 0x80
 8001d0a:	009b      	lsls	r3, r3, #2
 8001d0c:	1c10      	adds	r0, r2, #0
 8001d0e:	1c19      	adds	r1, r3, #0
 8001d10:	2201      	movs	r2, #1
 8001d12:	f7ff ffaf 	bl	8001c74 <LL_GPIO_SetPinMode>
 8001d16:	4a04      	ldr	r2, [pc, #16]	; (8001d28 <HardFault_Handler+0x30>)
 8001d18:	2380      	movs	r3, #128	; 0x80
 8001d1a:	009b      	lsls	r3, r3, #2
 8001d1c:	1c10      	adds	r0, r2, #0
 8001d1e:	1c19      	adds	r1, r3, #0
 8001d20:	f7ff ffc4 	bl	8001cac <LL_GPIO_SetOutputPin>
 8001d24:	e7fe      	b.n	8001d24 <HardFault_Handler+0x2c>
 8001d26:	46c0      	nop			; (mov r8, r8)
 8001d28:	48000800 	.word	0x48000800

08001d2c <SVC_Handler>:
 8001d2c:	b580      	push	{r7, lr}
 8001d2e:	af00      	add	r7, sp, #0
 8001d30:	46bd      	mov	sp, r7
 8001d32:	bd80      	pop	{r7, pc}

08001d34 <PendSV_Handler>:
 8001d34:	b580      	push	{r7, lr}
 8001d36:	af00      	add	r7, sp, #0
 8001d38:	46bd      	mov	sp, r7
 8001d3a:	bd80      	pop	{r7, pc}

08001d3c <SysTick_Handler>:
 8001d3c:	b580      	push	{r7, lr}
 8001d3e:	af00      	add	r7, sp, #0
 8001d40:	f000 fc6e 	bl	8002620 <net_poll>
 8001d44:	46bd      	mov	sp, r7
 8001d46:	bd80      	pop	{r7, pc}

08001d48 <xputc>:
 8001d48:	b580      	push	{r7, lr}
 8001d4a:	b082      	sub	sp, #8
 8001d4c:	af00      	add	r7, sp, #0
 8001d4e:	1c02      	adds	r2, r0, #0
 8001d50:	1dfb      	adds	r3, r7, #7
 8001d52:	701a      	strb	r2, [r3, #0]
 8001d54:	1dfb      	adds	r3, r7, #7
 8001d56:	781b      	ldrb	r3, [r3, #0]
 8001d58:	2b0a      	cmp	r3, #10
 8001d5a:	d102      	bne.n	8001d62 <xputc+0x1a>
 8001d5c:	200d      	movs	r0, #13
 8001d5e:	f7ff fff3 	bl	8001d48 <xputc>
 8001d62:	4b0d      	ldr	r3, [pc, #52]	; (8001d98 <xputc+0x50>)
 8001d64:	681b      	ldr	r3, [r3, #0]
 8001d66:	2b00      	cmp	r3, #0
 8001d68:	d008      	beq.n	8001d7c <xputc+0x34>
 8001d6a:	4b0b      	ldr	r3, [pc, #44]	; (8001d98 <xputc+0x50>)
 8001d6c:	681b      	ldr	r3, [r3, #0]
 8001d6e:	1c59      	adds	r1, r3, #1
 8001d70:	4a09      	ldr	r2, [pc, #36]	; (8001d98 <xputc+0x50>)
 8001d72:	6011      	str	r1, [r2, #0]
 8001d74:	1dfa      	adds	r2, r7, #7
 8001d76:	7812      	ldrb	r2, [r2, #0]
 8001d78:	701a      	strb	r2, [r3, #0]
 8001d7a:	e009      	b.n	8001d90 <xputc+0x48>
 8001d7c:	4b07      	ldr	r3, [pc, #28]	; (8001d9c <xputc+0x54>)
 8001d7e:	681b      	ldr	r3, [r3, #0]
 8001d80:	2b00      	cmp	r3, #0
 8001d82:	d005      	beq.n	8001d90 <xputc+0x48>
 8001d84:	4b05      	ldr	r3, [pc, #20]	; (8001d9c <xputc+0x54>)
 8001d86:	681b      	ldr	r3, [r3, #0]
 8001d88:	1dfa      	adds	r2, r7, #7
 8001d8a:	7812      	ldrb	r2, [r2, #0]
 8001d8c:	1c10      	adds	r0, r2, #0
 8001d8e:	4798      	blx	r3
 8001d90:	46bd      	mov	sp, r7
 8001d92:	b002      	add	sp, #8
 8001d94:	bd80      	pop	{r7, pc}
 8001d96:	46c0      	nop			; (mov r8, r8)
 8001d98:	2000044c 	.word	0x2000044c
 8001d9c:	200007e0 	.word	0x200007e0

08001da0 <xputs>:
 8001da0:	b580      	push	{r7, lr}
 8001da2:	b082      	sub	sp, #8
 8001da4:	af00      	add	r7, sp, #0
 8001da6:	6078      	str	r0, [r7, #4]
 8001da8:	e006      	b.n	8001db8 <xputs+0x18>
 8001daa:	687b      	ldr	r3, [r7, #4]
 8001dac:	1c5a      	adds	r2, r3, #1
 8001dae:	607a      	str	r2, [r7, #4]
 8001db0:	781b      	ldrb	r3, [r3, #0]
 8001db2:	1c18      	adds	r0, r3, #0
 8001db4:	f7ff ffc8 	bl	8001d48 <xputc>
 8001db8:	687b      	ldr	r3, [r7, #4]
 8001dba:	781b      	ldrb	r3, [r3, #0]
 8001dbc:	2b00      	cmp	r3, #0
 8001dbe:	d1f4      	bne.n	8001daa <xputs+0xa>
 8001dc0:	46bd      	mov	sp, r7
 8001dc2:	b002      	add	sp, #8
 8001dc4:	bd80      	pop	{r7, pc}
 8001dc6:	46c0      	nop			; (mov r8, r8)

08001dc8 <xvprintf>:
 8001dc8:	b580      	push	{r7, lr}
 8001dca:	b092      	sub	sp, #72	; 0x48
 8001dcc:	af00      	add	r7, sp, #0
 8001dce:	6078      	str	r0, [r7, #4]
 8001dd0:	6039      	str	r1, [r7, #0]
 8001dd2:	687b      	ldr	r3, [r7, #4]
 8001dd4:	1c5a      	adds	r2, r3, #1
 8001dd6:	607a      	str	r2, [r7, #4]
 8001dd8:	2233      	movs	r2, #51	; 0x33
 8001dda:	18ba      	adds	r2, r7, r2
 8001ddc:	781b      	ldrb	r3, [r3, #0]
 8001dde:	7013      	strb	r3, [r2, #0]
 8001de0:	2333      	movs	r3, #51	; 0x33
 8001de2:	18fb      	adds	r3, r7, r3
 8001de4:	781b      	ldrb	r3, [r3, #0]
 8001de6:	2b00      	cmp	r3, #0
 8001de8:	d100      	bne.n	8001dec <xvprintf+0x24>
 8001dea:	e175      	b.n	80020d8 <xvprintf+0x310>
 8001dec:	2333      	movs	r3, #51	; 0x33
 8001dee:	18fb      	adds	r3, r7, r3
 8001df0:	781b      	ldrb	r3, [r3, #0]
 8001df2:	2b25      	cmp	r3, #37	; 0x25
 8001df4:	d006      	beq.n	8001e04 <xvprintf+0x3c>
 8001df6:	2333      	movs	r3, #51	; 0x33
 8001df8:	18fb      	adds	r3, r7, r3
 8001dfa:	781b      	ldrb	r3, [r3, #0]
 8001dfc:	1c18      	adds	r0, r3, #0
 8001dfe:	f7ff ffa3 	bl	8001d48 <xputc>
 8001e02:	e168      	b.n	80020d6 <xvprintf+0x30e>
 8001e04:	2300      	movs	r3, #0
 8001e06:	637b      	str	r3, [r7, #52]	; 0x34
 8001e08:	687b      	ldr	r3, [r7, #4]
 8001e0a:	1c5a      	adds	r2, r3, #1
 8001e0c:	607a      	str	r2, [r7, #4]
 8001e0e:	2233      	movs	r2, #51	; 0x33
 8001e10:	18ba      	adds	r2, r7, r2
 8001e12:	781b      	ldrb	r3, [r3, #0]
 8001e14:	7013      	strb	r3, [r2, #0]
 8001e16:	2333      	movs	r3, #51	; 0x33
 8001e18:	18fb      	adds	r3, r7, r3
 8001e1a:	781b      	ldrb	r3, [r3, #0]
 8001e1c:	2b30      	cmp	r3, #48	; 0x30
 8001e1e:	d109      	bne.n	8001e34 <xvprintf+0x6c>
 8001e20:	2301      	movs	r3, #1
 8001e22:	637b      	str	r3, [r7, #52]	; 0x34
 8001e24:	687b      	ldr	r3, [r7, #4]
 8001e26:	1c5a      	adds	r2, r3, #1
 8001e28:	607a      	str	r2, [r7, #4]
 8001e2a:	2233      	movs	r2, #51	; 0x33
 8001e2c:	18ba      	adds	r2, r7, r2
 8001e2e:	781b      	ldrb	r3, [r3, #0]
 8001e30:	7013      	strb	r3, [r2, #0]
 8001e32:	e00d      	b.n	8001e50 <xvprintf+0x88>
 8001e34:	2333      	movs	r3, #51	; 0x33
 8001e36:	18fb      	adds	r3, r7, r3
 8001e38:	781b      	ldrb	r3, [r3, #0]
 8001e3a:	2b2d      	cmp	r3, #45	; 0x2d
 8001e3c:	d108      	bne.n	8001e50 <xvprintf+0x88>
 8001e3e:	2302      	movs	r3, #2
 8001e40:	637b      	str	r3, [r7, #52]	; 0x34
 8001e42:	687b      	ldr	r3, [r7, #4]
 8001e44:	1c5a      	adds	r2, r3, #1
 8001e46:	607a      	str	r2, [r7, #4]
 8001e48:	2233      	movs	r2, #51	; 0x33
 8001e4a:	18ba      	adds	r2, r7, r2
 8001e4c:	781b      	ldrb	r3, [r3, #0]
 8001e4e:	7013      	strb	r3, [r2, #0]
 8001e50:	2300      	movs	r3, #0
 8001e52:	63bb      	str	r3, [r7, #56]	; 0x38
 8001e54:	e012      	b.n	8001e7c <xvprintf+0xb4>
 8001e56:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8001e58:	1c13      	adds	r3, r2, #0
 8001e5a:	009b      	lsls	r3, r3, #2
 8001e5c:	189b      	adds	r3, r3, r2
 8001e5e:	005b      	lsls	r3, r3, #1
 8001e60:	1c1a      	adds	r2, r3, #0
 8001e62:	2333      	movs	r3, #51	; 0x33
 8001e64:	18fb      	adds	r3, r7, r3
 8001e66:	781b      	ldrb	r3, [r3, #0]
 8001e68:	18d3      	adds	r3, r2, r3
 8001e6a:	3b30      	subs	r3, #48	; 0x30
 8001e6c:	63bb      	str	r3, [r7, #56]	; 0x38
 8001e6e:	687b      	ldr	r3, [r7, #4]
 8001e70:	1c5a      	adds	r2, r3, #1
 8001e72:	607a      	str	r2, [r7, #4]
 8001e74:	2233      	movs	r2, #51	; 0x33
 8001e76:	18ba      	adds	r2, r7, r2
 8001e78:	781b      	ldrb	r3, [r3, #0]
 8001e7a:	7013      	strb	r3, [r2, #0]
 8001e7c:	2333      	movs	r3, #51	; 0x33
 8001e7e:	18fb      	adds	r3, r7, r3
 8001e80:	781b      	ldrb	r3, [r3, #0]
 8001e82:	2b2f      	cmp	r3, #47	; 0x2f
 8001e84:	d904      	bls.n	8001e90 <xvprintf+0xc8>
 8001e86:	2333      	movs	r3, #51	; 0x33
 8001e88:	18fb      	adds	r3, r7, r3
 8001e8a:	781b      	ldrb	r3, [r3, #0]
 8001e8c:	2b39      	cmp	r3, #57	; 0x39
 8001e8e:	d9e2      	bls.n	8001e56 <xvprintf+0x8e>
 8001e90:	2333      	movs	r3, #51	; 0x33
 8001e92:	18fb      	adds	r3, r7, r3
 8001e94:	781b      	ldrb	r3, [r3, #0]
 8001e96:	2b6c      	cmp	r3, #108	; 0x6c
 8001e98:	d004      	beq.n	8001ea4 <xvprintf+0xdc>
 8001e9a:	2333      	movs	r3, #51	; 0x33
 8001e9c:	18fb      	adds	r3, r7, r3
 8001e9e:	781b      	ldrb	r3, [r3, #0]
 8001ea0:	2b4c      	cmp	r3, #76	; 0x4c
 8001ea2:	d10a      	bne.n	8001eba <xvprintf+0xf2>
 8001ea4:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001ea6:	2204      	movs	r2, #4
 8001ea8:	4313      	orrs	r3, r2
 8001eaa:	637b      	str	r3, [r7, #52]	; 0x34
 8001eac:	687b      	ldr	r3, [r7, #4]
 8001eae:	1c5a      	adds	r2, r3, #1
 8001eb0:	607a      	str	r2, [r7, #4]
 8001eb2:	2233      	movs	r2, #51	; 0x33
 8001eb4:	18ba      	adds	r2, r7, r2
 8001eb6:	781b      	ldrb	r3, [r3, #0]
 8001eb8:	7013      	strb	r3, [r2, #0]
 8001eba:	2333      	movs	r3, #51	; 0x33
 8001ebc:	18fb      	adds	r3, r7, r3
 8001ebe:	781b      	ldrb	r3, [r3, #0]
 8001ec0:	2b00      	cmp	r3, #0
 8001ec2:	d100      	bne.n	8001ec6 <xvprintf+0xfe>
 8001ec4:	e108      	b.n	80020d8 <xvprintf+0x310>
 8001ec6:	2332      	movs	r3, #50	; 0x32
 8001ec8:	18fb      	adds	r3, r7, r3
 8001eca:	2233      	movs	r2, #51	; 0x33
 8001ecc:	18ba      	adds	r2, r7, r2
 8001ece:	7812      	ldrb	r2, [r2, #0]
 8001ed0:	701a      	strb	r2, [r3, #0]
 8001ed2:	2332      	movs	r3, #50	; 0x32
 8001ed4:	18fb      	adds	r3, r7, r3
 8001ed6:	781b      	ldrb	r3, [r3, #0]
 8001ed8:	2b60      	cmp	r3, #96	; 0x60
 8001eda:	d906      	bls.n	8001eea <xvprintf+0x122>
 8001edc:	2332      	movs	r3, #50	; 0x32
 8001ede:	18fb      	adds	r3, r7, r3
 8001ee0:	2232      	movs	r2, #50	; 0x32
 8001ee2:	18ba      	adds	r2, r7, r2
 8001ee4:	7812      	ldrb	r2, [r2, #0]
 8001ee6:	3a20      	subs	r2, #32
 8001ee8:	701a      	strb	r2, [r3, #0]
 8001eea:	2332      	movs	r3, #50	; 0x32
 8001eec:	18fb      	adds	r3, r7, r3
 8001eee:	781b      	ldrb	r3, [r3, #0]
 8001ef0:	3b42      	subs	r3, #66	; 0x42
 8001ef2:	2b16      	cmp	r3, #22
 8001ef4:	d847      	bhi.n	8001f86 <xvprintf+0x1be>
 8001ef6:	009a      	lsls	r2, r3, #2
 8001ef8:	4b79      	ldr	r3, [pc, #484]	; (80020e0 <xvprintf+0x318>)
 8001efa:	18d3      	adds	r3, r2, r3
 8001efc:	681b      	ldr	r3, [r3, #0]
 8001efe:	469f      	mov	pc, r3
 8001f00:	683b      	ldr	r3, [r7, #0]
 8001f02:	1d1a      	adds	r2, r3, #4
 8001f04:	603a      	str	r2, [r7, #0]
 8001f06:	681b      	ldr	r3, [r3, #0]
 8001f08:	627b      	str	r3, [r7, #36]	; 0x24
 8001f0a:	2300      	movs	r3, #0
 8001f0c:	63fb      	str	r3, [r7, #60]	; 0x3c
 8001f0e:	e002      	b.n	8001f16 <xvprintf+0x14e>
 8001f10:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001f12:	3301      	adds	r3, #1
 8001f14:	63fb      	str	r3, [r7, #60]	; 0x3c
 8001f16:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8001f18:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001f1a:	18d3      	adds	r3, r2, r3
 8001f1c:	781b      	ldrb	r3, [r3, #0]
 8001f1e:	2b00      	cmp	r3, #0
 8001f20:	d1f6      	bne.n	8001f10 <xvprintf+0x148>
 8001f22:	e002      	b.n	8001f2a <xvprintf+0x162>
 8001f24:	2020      	movs	r0, #32
 8001f26:	f7ff ff0f 	bl	8001d48 <xputc>
 8001f2a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001f2c:	2202      	movs	r2, #2
 8001f2e:	4013      	ands	r3, r2
 8001f30:	d105      	bne.n	8001f3e <xvprintf+0x176>
 8001f32:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001f34:	1c5a      	adds	r2, r3, #1
 8001f36:	63fa      	str	r2, [r7, #60]	; 0x3c
 8001f38:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8001f3a:	4293      	cmp	r3, r2
 8001f3c:	d3f2      	bcc.n	8001f24 <xvprintf+0x15c>
 8001f3e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001f40:	1c18      	adds	r0, r3, #0
 8001f42:	f7ff ff2d 	bl	8001da0 <xputs>
 8001f46:	e002      	b.n	8001f4e <xvprintf+0x186>
 8001f48:	2020      	movs	r0, #32
 8001f4a:	f7ff fefd 	bl	8001d48 <xputc>
 8001f4e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001f50:	1c5a      	adds	r2, r3, #1
 8001f52:	63fa      	str	r2, [r7, #60]	; 0x3c
 8001f54:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8001f56:	4293      	cmp	r3, r2
 8001f58:	d3f6      	bcc.n	8001f48 <xvprintf+0x180>
 8001f5a:	e0bc      	b.n	80020d6 <xvprintf+0x30e>
 8001f5c:	683b      	ldr	r3, [r7, #0]
 8001f5e:	1d1a      	adds	r2, r3, #4
 8001f60:	603a      	str	r2, [r7, #0]
 8001f62:	681b      	ldr	r3, [r3, #0]
 8001f64:	b2db      	uxtb	r3, r3
 8001f66:	1c18      	adds	r0, r3, #0
 8001f68:	f7ff feee 	bl	8001d48 <xputc>
 8001f6c:	e0b3      	b.n	80020d6 <xvprintf+0x30e>
 8001f6e:	2302      	movs	r3, #2
 8001f70:	647b      	str	r3, [r7, #68]	; 0x44
 8001f72:	e00f      	b.n	8001f94 <xvprintf+0x1cc>
 8001f74:	2308      	movs	r3, #8
 8001f76:	647b      	str	r3, [r7, #68]	; 0x44
 8001f78:	e00c      	b.n	8001f94 <xvprintf+0x1cc>
 8001f7a:	230a      	movs	r3, #10
 8001f7c:	647b      	str	r3, [r7, #68]	; 0x44
 8001f7e:	e009      	b.n	8001f94 <xvprintf+0x1cc>
 8001f80:	2310      	movs	r3, #16
 8001f82:	647b      	str	r3, [r7, #68]	; 0x44
 8001f84:	e006      	b.n	8001f94 <xvprintf+0x1cc>
 8001f86:	2333      	movs	r3, #51	; 0x33
 8001f88:	18fb      	adds	r3, r7, r3
 8001f8a:	781b      	ldrb	r3, [r3, #0]
 8001f8c:	1c18      	adds	r0, r3, #0
 8001f8e:	f7ff fedb 	bl	8001d48 <xputc>
 8001f92:	e0a0      	b.n	80020d6 <xvprintf+0x30e>
 8001f94:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001f96:	2204      	movs	r2, #4
 8001f98:	4013      	ands	r3, r2
 8001f9a:	d005      	beq.n	8001fa8 <xvprintf+0x1e0>
 8001f9c:	683b      	ldr	r3, [r7, #0]
 8001f9e:	1d1a      	adds	r2, r3, #4
 8001fa0:	603a      	str	r2, [r7, #0]
 8001fa2:	681b      	ldr	r3, [r3, #0]
 8001fa4:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001fa6:	e00e      	b.n	8001fc6 <xvprintf+0x1fe>
 8001fa8:	2332      	movs	r3, #50	; 0x32
 8001faa:	18fb      	adds	r3, r7, r3
 8001fac:	781b      	ldrb	r3, [r3, #0]
 8001fae:	2b44      	cmp	r3, #68	; 0x44
 8001fb0:	d104      	bne.n	8001fbc <xvprintf+0x1f4>
 8001fb2:	683b      	ldr	r3, [r7, #0]
 8001fb4:	1d1a      	adds	r2, r3, #4
 8001fb6:	603a      	str	r2, [r7, #0]
 8001fb8:	681b      	ldr	r3, [r3, #0]
 8001fba:	e003      	b.n	8001fc4 <xvprintf+0x1fc>
 8001fbc:	683b      	ldr	r3, [r7, #0]
 8001fbe:	1d1a      	adds	r2, r3, #4
 8001fc0:	603a      	str	r2, [r7, #0]
 8001fc2:	681b      	ldr	r3, [r3, #0]
 8001fc4:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001fc6:	2332      	movs	r3, #50	; 0x32
 8001fc8:	18fb      	adds	r3, r7, r3
 8001fca:	781b      	ldrb	r3, [r3, #0]
 8001fcc:	2b44      	cmp	r3, #68	; 0x44
 8001fce:	d109      	bne.n	8001fe4 <xvprintf+0x21c>
 8001fd0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001fd2:	2b00      	cmp	r3, #0
 8001fd4:	da06      	bge.n	8001fe4 <xvprintf+0x21c>
 8001fd6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001fd8:	425b      	negs	r3, r3
 8001fda:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001fdc:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001fde:	2210      	movs	r2, #16
 8001fe0:	4313      	orrs	r3, r2
 8001fe2:	637b      	str	r3, [r7, #52]	; 0x34
 8001fe4:	2300      	movs	r3, #0
 8001fe6:	643b      	str	r3, [r7, #64]	; 0x40
 8001fe8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001fea:	62bb      	str	r3, [r7, #40]	; 0x28
 8001fec:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8001fee:	1c18      	adds	r0, r3, #0
 8001ff0:	6c79      	ldr	r1, [r7, #68]	; 0x44
 8001ff2:	f7fe f945 	bl	8000280 <__aeabi_uidivmod>
 8001ff6:	1c0b      	adds	r3, r1, #0
 8001ff8:	1c1a      	adds	r2, r3, #0
 8001ffa:	2332      	movs	r3, #50	; 0x32
 8001ffc:	18fb      	adds	r3, r7, r3
 8001ffe:	701a      	strb	r2, [r3, #0]
 8002000:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8002002:	6c79      	ldr	r1, [r7, #68]	; 0x44
 8002004:	f7fe f8b6 	bl	8000174 <__aeabi_uidiv>
 8002008:	1c03      	adds	r3, r0, #0
 800200a:	62bb      	str	r3, [r7, #40]	; 0x28
 800200c:	2332      	movs	r3, #50	; 0x32
 800200e:	18fb      	adds	r3, r7, r3
 8002010:	781b      	ldrb	r3, [r3, #0]
 8002012:	2b09      	cmp	r3, #9
 8002014:	d90e      	bls.n	8002034 <xvprintf+0x26c>
 8002016:	2333      	movs	r3, #51	; 0x33
 8002018:	18fb      	adds	r3, r7, r3
 800201a:	781b      	ldrb	r3, [r3, #0]
 800201c:	2b78      	cmp	r3, #120	; 0x78
 800201e:	d101      	bne.n	8002024 <xvprintf+0x25c>
 8002020:	2327      	movs	r3, #39	; 0x27
 8002022:	e000      	b.n	8002026 <xvprintf+0x25e>
 8002024:	2307      	movs	r3, #7
 8002026:	2232      	movs	r2, #50	; 0x32
 8002028:	18ba      	adds	r2, r7, r2
 800202a:	2132      	movs	r1, #50	; 0x32
 800202c:	1879      	adds	r1, r7, r1
 800202e:	7809      	ldrb	r1, [r1, #0]
 8002030:	185b      	adds	r3, r3, r1
 8002032:	7013      	strb	r3, [r2, #0]
 8002034:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002036:	1c5a      	adds	r2, r3, #1
 8002038:	643a      	str	r2, [r7, #64]	; 0x40
 800203a:	2232      	movs	r2, #50	; 0x32
 800203c:	18ba      	adds	r2, r7, r2
 800203e:	7812      	ldrb	r2, [r2, #0]
 8002040:	3230      	adds	r2, #48	; 0x30
 8002042:	b2d1      	uxtb	r1, r2
 8002044:	220c      	movs	r2, #12
 8002046:	18ba      	adds	r2, r7, r2
 8002048:	54d1      	strb	r1, [r2, r3]
 800204a:	6abb      	ldr	r3, [r7, #40]	; 0x28
 800204c:	2b00      	cmp	r3, #0
 800204e:	d002      	beq.n	8002056 <xvprintf+0x28e>
 8002050:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002052:	2b17      	cmp	r3, #23
 8002054:	d9ca      	bls.n	8001fec <xvprintf+0x224>
 8002056:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002058:	2210      	movs	r2, #16
 800205a:	4013      	ands	r3, r2
 800205c:	d006      	beq.n	800206c <xvprintf+0x2a4>
 800205e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002060:	1c5a      	adds	r2, r3, #1
 8002062:	643a      	str	r2, [r7, #64]	; 0x40
 8002064:	220c      	movs	r2, #12
 8002066:	18ba      	adds	r2, r7, r2
 8002068:	212d      	movs	r1, #45	; 0x2d
 800206a:	54d1      	strb	r1, [r2, r3]
 800206c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800206e:	63fb      	str	r3, [r7, #60]	; 0x3c
 8002070:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002072:	2201      	movs	r2, #1
 8002074:	4013      	ands	r3, r2
 8002076:	d001      	beq.n	800207c <xvprintf+0x2b4>
 8002078:	2230      	movs	r2, #48	; 0x30
 800207a:	e000      	b.n	800207e <xvprintf+0x2b6>
 800207c:	2220      	movs	r2, #32
 800207e:	2332      	movs	r3, #50	; 0x32
 8002080:	18fb      	adds	r3, r7, r3
 8002082:	701a      	strb	r2, [r3, #0]
 8002084:	e005      	b.n	8002092 <xvprintf+0x2ca>
 8002086:	2332      	movs	r3, #50	; 0x32
 8002088:	18fb      	adds	r3, r7, r3
 800208a:	781b      	ldrb	r3, [r3, #0]
 800208c:	1c18      	adds	r0, r3, #0
 800208e:	f7ff fe5b 	bl	8001d48 <xputc>
 8002092:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002094:	2202      	movs	r2, #2
 8002096:	4013      	ands	r3, r2
 8002098:	d105      	bne.n	80020a6 <xvprintf+0x2de>
 800209a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800209c:	1c5a      	adds	r2, r3, #1
 800209e:	63fa      	str	r2, [r7, #60]	; 0x3c
 80020a0:	6bba      	ldr	r2, [r7, #56]	; 0x38
 80020a2:	4293      	cmp	r3, r2
 80020a4:	d3ef      	bcc.n	8002086 <xvprintf+0x2be>
 80020a6:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80020a8:	3b01      	subs	r3, #1
 80020aa:	643b      	str	r3, [r7, #64]	; 0x40
 80020ac:	230c      	movs	r3, #12
 80020ae:	18fa      	adds	r2, r7, r3
 80020b0:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80020b2:	18d3      	adds	r3, r2, r3
 80020b4:	781b      	ldrb	r3, [r3, #0]
 80020b6:	1c18      	adds	r0, r3, #0
 80020b8:	f7ff fe46 	bl	8001d48 <xputc>
 80020bc:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80020be:	2b00      	cmp	r3, #0
 80020c0:	d1f1      	bne.n	80020a6 <xvprintf+0x2de>
 80020c2:	e002      	b.n	80020ca <xvprintf+0x302>
 80020c4:	2020      	movs	r0, #32
 80020c6:	f7ff fe3f 	bl	8001d48 <xputc>
 80020ca:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80020cc:	1c5a      	adds	r2, r3, #1
 80020ce:	63fa      	str	r2, [r7, #60]	; 0x3c
 80020d0:	6bba      	ldr	r2, [r7, #56]	; 0x38
 80020d2:	4293      	cmp	r3, r2
 80020d4:	d3f6      	bcc.n	80020c4 <xvprintf+0x2fc>
 80020d6:	e67c      	b.n	8001dd2 <xvprintf+0xa>
 80020d8:	46bd      	mov	sp, r7
 80020da:	b012      	add	sp, #72	; 0x48
 80020dc:	bd80      	pop	{r7, pc}
 80020de:	46c0      	nop			; (mov r8, r8)
 80020e0:	08002e64 	.word	0x08002e64

080020e4 <xprintf>:
 80020e4:	b40f      	push	{r0, r1, r2, r3}
 80020e6:	b580      	push	{r7, lr}
 80020e8:	b082      	sub	sp, #8
 80020ea:	af00      	add	r7, sp, #0
 80020ec:	b672      	cpsid	i
 80020ee:	2314      	movs	r3, #20
 80020f0:	18fb      	adds	r3, r7, r3
 80020f2:	607b      	str	r3, [r7, #4]
 80020f4:	693a      	ldr	r2, [r7, #16]
 80020f6:	687b      	ldr	r3, [r7, #4]
 80020f8:	1c10      	adds	r0, r2, #0
 80020fa:	1c19      	adds	r1, r3, #0
 80020fc:	f7ff fe64 	bl	8001dc8 <xvprintf>
 8002100:	b662      	cpsie	i
 8002102:	46bd      	mov	sp, r7
 8002104:	b002      	add	sp, #8
 8002106:	bc80      	pop	{r7}
 8002108:	bc08      	pop	{r3}
 800210a:	b004      	add	sp, #16
 800210c:	4718      	bx	r3
 800210e:	46c0      	nop			; (mov r8, r8)

08002110 <LL_GetUID_Word0>:
 8002110:	b580      	push	{r7, lr}
 8002112:	af00      	add	r7, sp, #0
 8002114:	4b02      	ldr	r3, [pc, #8]	; (8002120 <LL_GetUID_Word0+0x10>)
 8002116:	681b      	ldr	r3, [r3, #0]
 8002118:	1c18      	adds	r0, r3, #0
 800211a:	46bd      	mov	sp, r7
 800211c:	bd80      	pop	{r7, pc}
 800211e:	46c0      	nop			; (mov r8, r8)
 8002120:	1ffff7ac 	.word	0x1ffff7ac

08002124 <embed_net_pack>:
 8002124:	b580      	push	{r7, lr}
 8002126:	b082      	sub	sp, #8
 8002128:	af00      	add	r7, sp, #0
 800212a:	1c02      	adds	r2, r0, #0
 800212c:	1dbb      	adds	r3, r7, #6
 800212e:	801a      	strh	r2, [r3, #0]
 8002130:	1dbb      	adds	r3, r7, #6
 8002132:	881a      	ldrh	r2, [r3, #0]
 8002134:	4b08      	ldr	r3, [pc, #32]	; (8002158 <embed_net_pack+0x34>)
 8002136:	601a      	str	r2, [r3, #0]
 8002138:	4b07      	ldr	r3, [pc, #28]	; (8002158 <embed_net_pack+0x34>)
 800213a:	2208      	movs	r2, #8
 800213c:	711a      	strb	r2, [r3, #4]
 800213e:	4b06      	ldr	r3, [pc, #24]	; (8002158 <embed_net_pack+0x34>)
 8002140:	2205      	movs	r2, #5
 8002142:	4906      	ldr	r1, [pc, #24]	; (800215c <embed_net_pack+0x38>)
 8002144:	189b      	adds	r3, r3, r2
 8002146:	2208      	movs	r2, #8
 8002148:	1c18      	adds	r0, r3, #0
 800214a:	f000 fcfb 	bl	8002b44 <memcpy>
 800214e:	46c0      	nop			; (mov r8, r8)
 8002150:	46bd      	mov	sp, r7
 8002152:	b002      	add	sp, #8
 8002154:	bd80      	pop	{r7, pc}
 8002156:	46c0      	nop			; (mov r8, r8)
 8002158:	20000450 	.word	0x20000450
 800215c:	20000460 	.word	0x20000460

08002160 <unload_net_pack>:
 8002160:	b580      	push	{r7, lr}
 8002162:	af00      	add	r7, sp, #0
 8002164:	4906      	ldr	r1, [pc, #24]	; (8002180 <unload_net_pack+0x20>)
 8002166:	4b07      	ldr	r3, [pc, #28]	; (8002184 <unload_net_pack+0x24>)
 8002168:	2205      	movs	r2, #5
 800216a:	189b      	adds	r3, r3, r2
 800216c:	2208      	movs	r2, #8
 800216e:	1c08      	adds	r0, r1, #0
 8002170:	1c19      	adds	r1, r3, #0
 8002172:	f000 fce7 	bl	8002b44 <memcpy>
 8002176:	4b02      	ldr	r3, [pc, #8]	; (8002180 <unload_net_pack+0x20>)
 8002178:	881b      	ldrh	r3, [r3, #0]
 800217a:	1c18      	adds	r0, r3, #0
 800217c:	46bd      	mov	sp, r7
 800217e:	bd80      	pop	{r7, pc}
 8002180:	20000460 	.word	0x20000460
 8002184:	20000450 	.word	0x20000450

08002188 <net_header_fill>:
 8002188:	b590      	push	{r4, r7, lr}
 800218a:	b083      	sub	sp, #12
 800218c:	af00      	add	r7, sp, #0
 800218e:	1c04      	adds	r4, r0, #0
 8002190:	1c08      	adds	r0, r1, #0
 8002192:	1c11      	adds	r1, r2, #0
 8002194:	1dbb      	adds	r3, r7, #6
 8002196:	1c22      	adds	r2, r4, #0
 8002198:	801a      	strh	r2, [r3, #0]
 800219a:	1d7b      	adds	r3, r7, #5
 800219c:	1c02      	adds	r2, r0, #0
 800219e:	701a      	strb	r2, [r3, #0]
 80021a0:	1d3b      	adds	r3, r7, #4
 80021a2:	1c0a      	adds	r2, r1, #0
 80021a4:	701a      	strb	r2, [r3, #0]
 80021a6:	4b08      	ldr	r3, [pc, #32]	; (80021c8 <net_header_fill+0x40>)
 80021a8:	1dba      	adds	r2, r7, #6
 80021aa:	8812      	ldrh	r2, [r2, #0]
 80021ac:	801a      	strh	r2, [r3, #0]
 80021ae:	4b06      	ldr	r3, [pc, #24]	; (80021c8 <net_header_fill+0x40>)
 80021b0:	1d7a      	adds	r2, r7, #5
 80021b2:	7812      	ldrb	r2, [r2, #0]
 80021b4:	709a      	strb	r2, [r3, #2]
 80021b6:	4b04      	ldr	r3, [pc, #16]	; (80021c8 <net_header_fill+0x40>)
 80021b8:	1d3a      	adds	r2, r7, #4
 80021ba:	7812      	ldrb	r2, [r2, #0]
 80021bc:	70da      	strb	r2, [r3, #3]
 80021be:	46c0      	nop			; (mov r8, r8)
 80021c0:	46bd      	mov	sp, r7
 80021c2:	b003      	add	sp, #12
 80021c4:	bd90      	pop	{r4, r7, pc}
 80021c6:	46c0      	nop			; (mov r8, r8)
 80021c8:	20000460 	.word	0x20000460

080021cc <net_add_id>:
 80021cc:	b580      	push	{r7, lr}
 80021ce:	b084      	sub	sp, #16
 80021d0:	af00      	add	r7, sp, #0
 80021d2:	6078      	str	r0, [r7, #4]
 80021d4:	2300      	movs	r3, #0
 80021d6:	60fb      	str	r3, [r7, #12]
 80021d8:	e024      	b.n	8002224 <net_add_id+0x58>
 80021da:	4a16      	ldr	r2, [pc, #88]	; (8002234 <net_add_id+0x68>)
 80021dc:	68fb      	ldr	r3, [r7, #12]
 80021de:	005b      	lsls	r3, r3, #1
 80021e0:	18d3      	adds	r3, r2, r3
 80021e2:	885b      	ldrh	r3, [r3, #2]
 80021e4:	2b00      	cmp	r3, #0
 80021e6:	d10f      	bne.n	8002208 <net_add_id+0x3c>
 80021e8:	687b      	ldr	r3, [r7, #4]
 80021ea:	b299      	uxth	r1, r3
 80021ec:	4a11      	ldr	r2, [pc, #68]	; (8002234 <net_add_id+0x68>)
 80021ee:	68fb      	ldr	r3, [r7, #12]
 80021f0:	005b      	lsls	r3, r3, #1
 80021f2:	18d3      	adds	r3, r2, r3
 80021f4:	1c0a      	adds	r2, r1, #0
 80021f6:	805a      	strh	r2, [r3, #2]
 80021f8:	4b0e      	ldr	r3, [pc, #56]	; (8002234 <net_add_id+0x68>)
 80021fa:	781b      	ldrb	r3, [r3, #0]
 80021fc:	3301      	adds	r3, #1
 80021fe:	b2da      	uxtb	r2, r3
 8002200:	4b0c      	ldr	r3, [pc, #48]	; (8002234 <net_add_id+0x68>)
 8002202:	701a      	strb	r2, [r3, #0]
 8002204:	2300      	movs	r3, #0
 8002206:	e011      	b.n	800222c <net_add_id+0x60>
 8002208:	4a0a      	ldr	r2, [pc, #40]	; (8002234 <net_add_id+0x68>)
 800220a:	68fb      	ldr	r3, [r7, #12]
 800220c:	005b      	lsls	r3, r3, #1
 800220e:	18d3      	adds	r3, r2, r3
 8002210:	885b      	ldrh	r3, [r3, #2]
 8002212:	1e1a      	subs	r2, r3, #0
 8002214:	687b      	ldr	r3, [r7, #4]
 8002216:	429a      	cmp	r2, r3
 8002218:	d101      	bne.n	800221e <net_add_id+0x52>
 800221a:	2301      	movs	r3, #1
 800221c:	e006      	b.n	800222c <net_add_id+0x60>
 800221e:	68fb      	ldr	r3, [r7, #12]
 8002220:	3301      	adds	r3, #1
 8002222:	60fb      	str	r3, [r7, #12]
 8002224:	68fb      	ldr	r3, [r7, #12]
 8002226:	2b1f      	cmp	r3, #31
 8002228:	ddd7      	ble.n	80021da <net_add_id+0xe>
 800222a:	2301      	movs	r3, #1
 800222c:	1c18      	adds	r0, r3, #0
 800222e:	46bd      	mov	sp, r7
 8002230:	b004      	add	sp, #16
 8002232:	bd80      	pop	{r7, pc}
 8002234:	2000046c 	.word	0x2000046c

08002238 <net_del_id>:
 8002238:	b580      	push	{r7, lr}
 800223a:	b084      	sub	sp, #16
 800223c:	af00      	add	r7, sp, #0
 800223e:	6078      	str	r0, [r7, #4]
 8002240:	2300      	movs	r3, #0
 8002242:	60fb      	str	r3, [r7, #12]
 8002244:	2300      	movs	r3, #0
 8002246:	60fb      	str	r3, [r7, #12]
 8002248:	e019      	b.n	800227e <net_del_id+0x46>
 800224a:	4a11      	ldr	r2, [pc, #68]	; (8002290 <net_del_id+0x58>)
 800224c:	68fb      	ldr	r3, [r7, #12]
 800224e:	005b      	lsls	r3, r3, #1
 8002250:	18d3      	adds	r3, r2, r3
 8002252:	885b      	ldrh	r3, [r3, #2]
 8002254:	1e1a      	subs	r2, r3, #0
 8002256:	687b      	ldr	r3, [r7, #4]
 8002258:	429a      	cmp	r2, r3
 800225a:	d10d      	bne.n	8002278 <net_del_id+0x40>
 800225c:	4a0c      	ldr	r2, [pc, #48]	; (8002290 <net_del_id+0x58>)
 800225e:	68fb      	ldr	r3, [r7, #12]
 8002260:	005b      	lsls	r3, r3, #1
 8002262:	18d3      	adds	r3, r2, r3
 8002264:	2200      	movs	r2, #0
 8002266:	805a      	strh	r2, [r3, #2]
 8002268:	4b09      	ldr	r3, [pc, #36]	; (8002290 <net_del_id+0x58>)
 800226a:	781b      	ldrb	r3, [r3, #0]
 800226c:	3b01      	subs	r3, #1
 800226e:	b2da      	uxtb	r2, r3
 8002270:	4b07      	ldr	r3, [pc, #28]	; (8002290 <net_del_id+0x58>)
 8002272:	701a      	strb	r2, [r3, #0]
 8002274:	2300      	movs	r3, #0
 8002276:	e006      	b.n	8002286 <net_del_id+0x4e>
 8002278:	68fb      	ldr	r3, [r7, #12]
 800227a:	3301      	adds	r3, #1
 800227c:	60fb      	str	r3, [r7, #12]
 800227e:	68fb      	ldr	r3, [r7, #12]
 8002280:	2b1f      	cmp	r3, #31
 8002282:	dde2      	ble.n	800224a <net_del_id+0x12>
 8002284:	2301      	movs	r3, #1
 8002286:	1c18      	adds	r0, r3, #0
 8002288:	46bd      	mov	sp, r7
 800228a:	b004      	add	sp, #16
 800228c:	bd80      	pop	{r7, pc}
 800228e:	46c0      	nop			; (mov r8, r8)
 8002290:	2000046c 	.word	0x2000046c

08002294 <net_node_num>:
 8002294:	b580      	push	{r7, lr}
 8002296:	af00      	add	r7, sp, #0
 8002298:	4b02      	ldr	r3, [pc, #8]	; (80022a4 <net_node_num+0x10>)
 800229a:	781b      	ldrb	r3, [r3, #0]
 800229c:	1c18      	adds	r0, r3, #0
 800229e:	46bd      	mov	sp, r7
 80022a0:	bd80      	pop	{r7, pc}
 80022a2:	46c0      	nop			; (mov r8, r8)
 80022a4:	2000046c 	.word	0x2000046c

080022a8 <net_start>:
 80022a8:	b580      	push	{r7, lr}
 80022aa:	af00      	add	r7, sp, #0
 80022ac:	4b02      	ldr	r3, [pc, #8]	; (80022b8 <net_start+0x10>)
 80022ae:	2201      	movs	r2, #1
 80022b0:	645a      	str	r2, [r3, #68]	; 0x44
 80022b2:	46c0      	nop			; (mov r8, r8)
 80022b4:	46bd      	mov	sp, r7
 80022b6:	bd80      	pop	{r7, pc}
 80022b8:	2000046c 	.word	0x2000046c

080022bc <net_wait_join>:
 80022bc:	b580      	push	{r7, lr}
 80022be:	af00      	add	r7, sp, #0
 80022c0:	46c0      	nop			; (mov r8, r8)
 80022c2:	4b04      	ldr	r3, [pc, #16]	; (80022d4 <net_wait_join+0x18>)
 80022c4:	785b      	ldrb	r3, [r3, #1]
 80022c6:	2b04      	cmp	r3, #4
 80022c8:	d1fb      	bne.n	80022c2 <net_wait_join+0x6>
 80022ca:	4b02      	ldr	r3, [pc, #8]	; (80022d4 <net_wait_join+0x18>)
 80022cc:	781b      	ldrb	r3, [r3, #0]
 80022ce:	1c18      	adds	r0, r3, #0
 80022d0:	46bd      	mov	sp, r7
 80022d2:	bd80      	pop	{r7, pc}
 80022d4:	2000046c 	.word	0x2000046c

080022d8 <net_init>:
 80022d8:	b580      	push	{r7, lr}
 80022da:	b082      	sub	sp, #8
 80022dc:	af00      	add	r7, sp, #0
 80022de:	f7ff ff17 	bl	8002110 <LL_GetUID_Word0>
 80022e2:	1c02      	adds	r2, r0, #0
 80022e4:	4b1f      	ldr	r3, [pc, #124]	; (8002364 <net_init+0x8c>)
 80022e6:	601a      	str	r2, [r3, #0]
 80022e8:	4b1e      	ldr	r3, [pc, #120]	; (8002364 <net_init+0x8c>)
 80022ea:	681b      	ldr	r3, [r3, #0]
 80022ec:	0a1a      	lsrs	r2, r3, #8
 80022ee:	4b1d      	ldr	r3, [pc, #116]	; (8002364 <net_init+0x8c>)
 80022f0:	681b      	ldr	r3, [r3, #0]
 80022f2:	431a      	orrs	r2, r3
 80022f4:	4b1b      	ldr	r3, [pc, #108]	; (8002364 <net_init+0x8c>)
 80022f6:	601a      	str	r2, [r3, #0]
 80022f8:	4b1a      	ldr	r3, [pc, #104]	; (8002364 <net_init+0x8c>)
 80022fa:	681b      	ldr	r3, [r3, #0]
 80022fc:	041b      	lsls	r3, r3, #16
 80022fe:	0c1a      	lsrs	r2, r3, #16
 8002300:	4b18      	ldr	r3, [pc, #96]	; (8002364 <net_init+0x8c>)
 8002302:	601a      	str	r2, [r3, #0]
 8002304:	4b17      	ldr	r3, [pc, #92]	; (8002364 <net_init+0x8c>)
 8002306:	681b      	ldr	r3, [r3, #0]
 8002308:	4a17      	ldr	r2, [pc, #92]	; (8002368 <net_init+0x90>)
 800230a:	1c10      	adds	r0, r2, #0
 800230c:	1c19      	adds	r1, r3, #0
 800230e:	f7ff fee9 	bl	80020e4 <xprintf>
 8002312:	2006      	movs	r0, #6
 8002314:	f7ff fba2 	bl	8001a5c <can_core_config>
 8002318:	4b12      	ldr	r3, [pc, #72]	; (8002364 <net_init+0x8c>)
 800231a:	681b      	ldr	r3, [r3, #0]
 800231c:	1c18      	adds	r0, r3, #0
 800231e:	2100      	movs	r1, #0
 8002320:	f7ff fb52 	bl	80019c8 <can_set_id>
 8002324:	4b11      	ldr	r3, [pc, #68]	; (800236c <net_init+0x94>)
 8002326:	2200      	movs	r2, #0
 8002328:	701a      	strb	r2, [r3, #0]
 800232a:	4b10      	ldr	r3, [pc, #64]	; (800236c <net_init+0x94>)
 800232c:	2200      	movs	r2, #0
 800232e:	705a      	strb	r2, [r3, #1]
 8002330:	4b0e      	ldr	r3, [pc, #56]	; (800236c <net_init+0x94>)
 8002332:	2200      	movs	r2, #0
 8002334:	649a      	str	r2, [r3, #72]	; 0x48
 8002336:	4b0d      	ldr	r3, [pc, #52]	; (800236c <net_init+0x94>)
 8002338:	2200      	movs	r2, #0
 800233a:	64da      	str	r2, [r3, #76]	; 0x4c
 800233c:	2300      	movs	r3, #0
 800233e:	607b      	str	r3, [r7, #4]
 8002340:	e008      	b.n	8002354 <net_init+0x7c>
 8002342:	4a0a      	ldr	r2, [pc, #40]	; (800236c <net_init+0x94>)
 8002344:	687b      	ldr	r3, [r7, #4]
 8002346:	005b      	lsls	r3, r3, #1
 8002348:	18d3      	adds	r3, r2, r3
 800234a:	2200      	movs	r2, #0
 800234c:	805a      	strh	r2, [r3, #2]
 800234e:	687b      	ldr	r3, [r7, #4]
 8002350:	3301      	adds	r3, #1
 8002352:	607b      	str	r3, [r7, #4]
 8002354:	687b      	ldr	r3, [r7, #4]
 8002356:	2b1f      	cmp	r3, #31
 8002358:	ddf3      	ble.n	8002342 <net_init+0x6a>
 800235a:	2300      	movs	r3, #0
 800235c:	1c18      	adds	r0, r3, #0
 800235e:	46bd      	mov	sp, r7
 8002360:	b002      	add	sp, #8
 8002362:	bd80      	pop	{r7, pc}
 8002364:	20000468 	.word	0x20000468
 8002368:	08002dac 	.word	0x08002dac
 800236c:	2000046c 	.word	0x2000046c

08002370 <net_fsm>:
 8002370:	b580      	push	{r7, lr}
 8002372:	b082      	sub	sp, #8
 8002374:	af00      	add	r7, sp, #0
 8002376:	f7ff fa8d 	bl	8001894 <can_check_new_msg>
 800237a:	1e03      	subs	r3, r0, #0
 800237c:	d101      	bne.n	8002382 <net_fsm+0x12>
 800237e:	2300      	movs	r3, #0
 8002380:	e048      	b.n	8002414 <net_fsm+0xa4>
 8002382:	4b26      	ldr	r3, [pc, #152]	; (800241c <net_fsm+0xac>)
 8002384:	1c18      	adds	r0, r3, #0
 8002386:	f7ff fa4f 	bl	8001828 <can_read_msg>
 800238a:	f7ff fee9 	bl	8002160 <unload_net_pack>
 800238e:	1c03      	adds	r3, r0, #0
 8002390:	607b      	str	r3, [r7, #4]
 8002392:	4b23      	ldr	r3, [pc, #140]	; (8002420 <net_fsm+0xb0>)
 8002394:	789b      	ldrb	r3, [r3, #2]
 8002396:	603b      	str	r3, [r7, #0]
 8002398:	683b      	ldr	r3, [r7, #0]
 800239a:	2b02      	cmp	r3, #2
 800239c:	d103      	bne.n	80023a6 <net_fsm+0x36>
 800239e:	687b      	ldr	r3, [r7, #4]
 80023a0:	1c18      	adds	r0, r3, #0
 80023a2:	f7ff ff13 	bl	80021cc <net_add_id>
 80023a6:	683b      	ldr	r3, [r7, #0]
 80023a8:	2b01      	cmp	r3, #1
 80023aa:	d110      	bne.n	80023ce <net_fsm+0x5e>
 80023ac:	4b1d      	ldr	r3, [pc, #116]	; (8002424 <net_fsm+0xb4>)
 80023ae:	681b      	ldr	r3, [r3, #0]
 80023b0:	b29b      	uxth	r3, r3
 80023b2:	1c18      	adds	r0, r3, #0
 80023b4:	2102      	movs	r1, #2
 80023b6:	2200      	movs	r2, #0
 80023b8:	f7ff fee6 	bl	8002188 <net_header_fill>
 80023bc:	687b      	ldr	r3, [r7, #4]
 80023be:	b29b      	uxth	r3, r3
 80023c0:	1c18      	adds	r0, r3, #0
 80023c2:	f7ff feaf 	bl	8002124 <embed_net_pack>
 80023c6:	4b15      	ldr	r3, [pc, #84]	; (800241c <net_fsm+0xac>)
 80023c8:	1c18      	adds	r0, r3, #0
 80023ca:	f7ff f8fd 	bl	80015c8 <can_send_msg>
 80023ce:	683b      	ldr	r3, [r7, #0]
 80023d0:	2b03      	cmp	r3, #3
 80023d2:	d109      	bne.n	80023e8 <net_fsm+0x78>
 80023d4:	687b      	ldr	r3, [r7, #4]
 80023d6:	1c18      	adds	r0, r3, #0
 80023d8:	f7ff fef8 	bl	80021cc <net_add_id>
 80023dc:	4a12      	ldr	r2, [pc, #72]	; (8002428 <net_fsm+0xb8>)
 80023de:	687b      	ldr	r3, [r7, #4]
 80023e0:	1c10      	adds	r0, r2, #0
 80023e2:	1c19      	adds	r1, r3, #0
 80023e4:	f7ff fe7e 	bl	80020e4 <xprintf>
 80023e8:	683b      	ldr	r3, [r7, #0]
 80023ea:	2b04      	cmp	r3, #4
 80023ec:	d110      	bne.n	8002410 <net_fsm+0xa0>
 80023ee:	4b0d      	ldr	r3, [pc, #52]	; (8002424 <net_fsm+0xb4>)
 80023f0:	681b      	ldr	r3, [r3, #0]
 80023f2:	b29b      	uxth	r3, r3
 80023f4:	1c18      	adds	r0, r3, #0
 80023f6:	2105      	movs	r1, #5
 80023f8:	2200      	movs	r2, #0
 80023fa:	f7ff fec5 	bl	8002188 <net_header_fill>
 80023fe:	687b      	ldr	r3, [r7, #4]
 8002400:	b29b      	uxth	r3, r3
 8002402:	1c18      	adds	r0, r3, #0
 8002404:	f7ff fe8e 	bl	8002124 <embed_net_pack>
 8002408:	4b04      	ldr	r3, [pc, #16]	; (800241c <net_fsm+0xac>)
 800240a:	1c18      	adds	r0, r3, #0
 800240c:	f7ff f8dc 	bl	80015c8 <can_send_msg>
 8002410:	683b      	ldr	r3, [r7, #0]
 8002412:	b2db      	uxtb	r3, r3
 8002414:	1c18      	adds	r0, r3, #0
 8002416:	46bd      	mov	sp, r7
 8002418:	b002      	add	sp, #8
 800241a:	bd80      	pop	{r7, pc}
 800241c:	20000450 	.word	0x20000450
 8002420:	20000460 	.word	0x20000460
 8002424:	20000468 	.word	0x20000468
 8002428:	08002dbc 	.word	0x08002dbc

0800242c <net_ping_check>:
 800242c:	b580      	push	{r7, lr}
 800242e:	b084      	sub	sp, #16
 8002430:	af00      	add	r7, sp, #0
 8002432:	1c02      	adds	r2, r0, #0
 8002434:	1dfb      	adds	r3, r7, #7
 8002436:	701a      	strb	r2, [r3, #0]
 8002438:	230f      	movs	r3, #15
 800243a:	18fb      	adds	r3, r7, r3
 800243c:	2200      	movs	r2, #0
 800243e:	701a      	strb	r2, [r3, #0]
 8002440:	4b71      	ldr	r3, [pc, #452]	; (8002608 <net_ping_check+0x1dc>)
 8002442:	781b      	ldrb	r3, [r3, #0]
 8002444:	2b00      	cmp	r3, #0
 8002446:	d101      	bne.n	800244c <net_ping_check+0x20>
 8002448:	2300      	movs	r3, #0
 800244a:	e0d9      	b.n	8002600 <net_ping_check+0x1d4>
 800244c:	4b6e      	ldr	r3, [pc, #440]	; (8002608 <net_ping_check+0x1dc>)
 800244e:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8002450:	2b00      	cmp	r3, #0
 8002452:	d126      	bne.n	80024a2 <net_ping_check+0x76>
 8002454:	230f      	movs	r3, #15
 8002456:	18fb      	adds	r3, r7, r3
 8002458:	2200      	movs	r2, #0
 800245a:	701a      	strb	r2, [r3, #0]
 800245c:	e019      	b.n	8002492 <net_ping_check+0x66>
 800245e:	230f      	movs	r3, #15
 8002460:	18fb      	adds	r3, r7, r3
 8002462:	781b      	ldrb	r3, [r3, #0]
 8002464:	4a68      	ldr	r2, [pc, #416]	; (8002608 <net_ping_check+0x1dc>)
 8002466:	005b      	lsls	r3, r3, #1
 8002468:	18d3      	adds	r3, r2, r3
 800246a:	885b      	ldrh	r3, [r3, #2]
 800246c:	2b00      	cmp	r3, #0
 800246e:	d009      	beq.n	8002484 <net_ping_check+0x58>
 8002470:	230f      	movs	r3, #15
 8002472:	18fb      	adds	r3, r7, r3
 8002474:	781b      	ldrb	r3, [r3, #0]
 8002476:	4a64      	ldr	r2, [pc, #400]	; (8002608 <net_ping_check+0x1dc>)
 8002478:	005b      	lsls	r3, r3, #1
 800247a:	18d3      	adds	r3, r2, r3
 800247c:	885b      	ldrh	r3, [r3, #2]
 800247e:	1c1a      	adds	r2, r3, #0
 8002480:	4b61      	ldr	r3, [pc, #388]	; (8002608 <net_ping_check+0x1dc>)
 8002482:	64da      	str	r2, [r3, #76]	; 0x4c
 8002484:	230f      	movs	r3, #15
 8002486:	18fb      	adds	r3, r7, r3
 8002488:	781a      	ldrb	r2, [r3, #0]
 800248a:	230f      	movs	r3, #15
 800248c:	18fb      	adds	r3, r7, r3
 800248e:	3201      	adds	r2, #1
 8002490:	701a      	strb	r2, [r3, #0]
 8002492:	230f      	movs	r3, #15
 8002494:	18fb      	adds	r3, r7, r3
 8002496:	781b      	ldrb	r3, [r3, #0]
 8002498:	2b1f      	cmp	r3, #31
 800249a:	d9e0      	bls.n	800245e <net_ping_check+0x32>
 800249c:	4b5b      	ldr	r3, [pc, #364]	; (800260c <net_ping_check+0x1e0>)
 800249e:	2201      	movs	r2, #1
 80024a0:	701a      	strb	r2, [r3, #0]
 80024a2:	1dfb      	adds	r3, r7, #7
 80024a4:	781b      	ldrb	r3, [r3, #0]
 80024a6:	2b05      	cmp	r3, #5
 80024a8:	d143      	bne.n	8002532 <net_ping_check+0x106>
 80024aa:	4b57      	ldr	r3, [pc, #348]	; (8002608 <net_ping_check+0x1dc>)
 80024ac:	2200      	movs	r2, #0
 80024ae:	649a      	str	r2, [r3, #72]	; 0x48
 80024b0:	e006      	b.n	80024c0 <net_ping_check+0x94>
 80024b2:	230f      	movs	r3, #15
 80024b4:	18fb      	adds	r3, r7, r3
 80024b6:	781a      	ldrb	r2, [r3, #0]
 80024b8:	230f      	movs	r3, #15
 80024ba:	18fb      	adds	r3, r7, r3
 80024bc:	3201      	adds	r2, #1
 80024be:	701a      	strb	r2, [r3, #0]
 80024c0:	230f      	movs	r3, #15
 80024c2:	18fb      	adds	r3, r7, r3
 80024c4:	781b      	ldrb	r3, [r3, #0]
 80024c6:	4a50      	ldr	r2, [pc, #320]	; (8002608 <net_ping_check+0x1dc>)
 80024c8:	005b      	lsls	r3, r3, #1
 80024ca:	18d3      	adds	r3, r2, r3
 80024cc:	885b      	ldrh	r3, [r3, #2]
 80024ce:	1e1a      	subs	r2, r3, #0
 80024d0:	4b4d      	ldr	r3, [pc, #308]	; (8002608 <net_ping_check+0x1dc>)
 80024d2:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 80024d4:	429a      	cmp	r2, r3
 80024d6:	d1ec      	bne.n	80024b2 <net_ping_check+0x86>
 80024d8:	230f      	movs	r3, #15
 80024da:	18fb      	adds	r3, r7, r3
 80024dc:	781a      	ldrb	r2, [r3, #0]
 80024de:	230f      	movs	r3, #15
 80024e0:	18fb      	adds	r3, r7, r3
 80024e2:	3201      	adds	r2, #1
 80024e4:	701a      	strb	r2, [r3, #0]
 80024e6:	e00e      	b.n	8002506 <net_ping_check+0xda>
 80024e8:	230f      	movs	r3, #15
 80024ea:	18fb      	adds	r3, r7, r3
 80024ec:	781b      	ldrb	r3, [r3, #0]
 80024ee:	2b20      	cmp	r3, #32
 80024f0:	d005      	beq.n	80024fe <net_ping_check+0xd2>
 80024f2:	230f      	movs	r3, #15
 80024f4:	18fb      	adds	r3, r7, r3
 80024f6:	781b      	ldrb	r3, [r3, #0]
 80024f8:	3301      	adds	r3, #1
 80024fa:	b2da      	uxtb	r2, r3
 80024fc:	e000      	b.n	8002500 <net_ping_check+0xd4>
 80024fe:	2200      	movs	r2, #0
 8002500:	230f      	movs	r3, #15
 8002502:	18fb      	adds	r3, r7, r3
 8002504:	701a      	strb	r2, [r3, #0]
 8002506:	230f      	movs	r3, #15
 8002508:	18fb      	adds	r3, r7, r3
 800250a:	781b      	ldrb	r3, [r3, #0]
 800250c:	4a3e      	ldr	r2, [pc, #248]	; (8002608 <net_ping_check+0x1dc>)
 800250e:	005b      	lsls	r3, r3, #1
 8002510:	18d3      	adds	r3, r2, r3
 8002512:	885b      	ldrh	r3, [r3, #2]
 8002514:	2b00      	cmp	r3, #0
 8002516:	d0e7      	beq.n	80024e8 <net_ping_check+0xbc>
 8002518:	230f      	movs	r3, #15
 800251a:	18fb      	adds	r3, r7, r3
 800251c:	781b      	ldrb	r3, [r3, #0]
 800251e:	4a3a      	ldr	r2, [pc, #232]	; (8002608 <net_ping_check+0x1dc>)
 8002520:	005b      	lsls	r3, r3, #1
 8002522:	18d3      	adds	r3, r2, r3
 8002524:	885b      	ldrh	r3, [r3, #2]
 8002526:	1c1a      	adds	r2, r3, #0
 8002528:	4b37      	ldr	r3, [pc, #220]	; (8002608 <net_ping_check+0x1dc>)
 800252a:	64da      	str	r2, [r3, #76]	; 0x4c
 800252c:	4b37      	ldr	r3, [pc, #220]	; (800260c <net_ping_check+0x1e0>)
 800252e:	2201      	movs	r2, #1
 8002530:	701a      	strb	r2, [r3, #0]
 8002532:	4b35      	ldr	r3, [pc, #212]	; (8002608 <net_ping_check+0x1dc>)
 8002534:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 8002536:	4a36      	ldr	r2, [pc, #216]	; (8002610 <net_ping_check+0x1e4>)
 8002538:	4293      	cmp	r3, r2
 800253a:	d93e      	bls.n	80025ba <net_ping_check+0x18e>
 800253c:	4b32      	ldr	r3, [pc, #200]	; (8002608 <net_ping_check+0x1dc>)
 800253e:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8002540:	4a34      	ldr	r2, [pc, #208]	; (8002614 <net_ping_check+0x1e8>)
 8002542:	1c10      	adds	r0, r2, #0
 8002544:	1c19      	adds	r1, r3, #0
 8002546:	f7ff fdcd 	bl	80020e4 <xprintf>
 800254a:	4b2f      	ldr	r3, [pc, #188]	; (8002608 <net_ping_check+0x1dc>)
 800254c:	2200      	movs	r2, #0
 800254e:	649a      	str	r2, [r3, #72]	; 0x48
 8002550:	4b2d      	ldr	r3, [pc, #180]	; (8002608 <net_ping_check+0x1dc>)
 8002552:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8002554:	1c18      	adds	r0, r3, #0
 8002556:	f7ff fe6f 	bl	8002238 <net_del_id>
 800255a:	4b2b      	ldr	r3, [pc, #172]	; (8002608 <net_ping_check+0x1dc>)
 800255c:	781b      	ldrb	r3, [r3, #0]
 800255e:	2b00      	cmp	r3, #0
 8002560:	d104      	bne.n	800256c <net_ping_check+0x140>
 8002562:	4b29      	ldr	r3, [pc, #164]	; (8002608 <net_ping_check+0x1dc>)
 8002564:	2200      	movs	r2, #0
 8002566:	64da      	str	r2, [r3, #76]	; 0x4c
 8002568:	2300      	movs	r3, #0
 800256a:	e049      	b.n	8002600 <net_ping_check+0x1d4>
 800256c:	230f      	movs	r3, #15
 800256e:	18fb      	adds	r3, r7, r3
 8002570:	2200      	movs	r2, #0
 8002572:	701a      	strb	r2, [r3, #0]
 8002574:	e019      	b.n	80025aa <net_ping_check+0x17e>
 8002576:	230f      	movs	r3, #15
 8002578:	18fb      	adds	r3, r7, r3
 800257a:	781b      	ldrb	r3, [r3, #0]
 800257c:	4a22      	ldr	r2, [pc, #136]	; (8002608 <net_ping_check+0x1dc>)
 800257e:	005b      	lsls	r3, r3, #1
 8002580:	18d3      	adds	r3, r2, r3
 8002582:	885b      	ldrh	r3, [r3, #2]
 8002584:	2b00      	cmp	r3, #0
 8002586:	d009      	beq.n	800259c <net_ping_check+0x170>
 8002588:	230f      	movs	r3, #15
 800258a:	18fb      	adds	r3, r7, r3
 800258c:	781b      	ldrb	r3, [r3, #0]
 800258e:	4a1e      	ldr	r2, [pc, #120]	; (8002608 <net_ping_check+0x1dc>)
 8002590:	005b      	lsls	r3, r3, #1
 8002592:	18d3      	adds	r3, r2, r3
 8002594:	885b      	ldrh	r3, [r3, #2]
 8002596:	1c1a      	adds	r2, r3, #0
 8002598:	4b1b      	ldr	r3, [pc, #108]	; (8002608 <net_ping_check+0x1dc>)
 800259a:	64da      	str	r2, [r3, #76]	; 0x4c
 800259c:	230f      	movs	r3, #15
 800259e:	18fb      	adds	r3, r7, r3
 80025a0:	781a      	ldrb	r2, [r3, #0]
 80025a2:	230f      	movs	r3, #15
 80025a4:	18fb      	adds	r3, r7, r3
 80025a6:	3201      	adds	r2, #1
 80025a8:	701a      	strb	r2, [r3, #0]
 80025aa:	230f      	movs	r3, #15
 80025ac:	18fb      	adds	r3, r7, r3
 80025ae:	781b      	ldrb	r3, [r3, #0]
 80025b0:	2b1f      	cmp	r3, #31
 80025b2:	d9e0      	bls.n	8002576 <net_ping_check+0x14a>
 80025b4:	4b15      	ldr	r3, [pc, #84]	; (800260c <net_ping_check+0x1e0>)
 80025b6:	2201      	movs	r2, #1
 80025b8:	701a      	strb	r2, [r3, #0]
 80025ba:	4b14      	ldr	r3, [pc, #80]	; (800260c <net_ping_check+0x1e0>)
 80025bc:	781b      	ldrb	r3, [r3, #0]
 80025be:	2b00      	cmp	r3, #0
 80025c0:	d018      	beq.n	80025f4 <net_ping_check+0x1c8>
 80025c2:	4b11      	ldr	r3, [pc, #68]	; (8002608 <net_ping_check+0x1dc>)
 80025c4:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 80025c6:	2b64      	cmp	r3, #100	; 0x64
 80025c8:	d914      	bls.n	80025f4 <net_ping_check+0x1c8>
 80025ca:	4b13      	ldr	r3, [pc, #76]	; (8002618 <net_ping_check+0x1ec>)
 80025cc:	681b      	ldr	r3, [r3, #0]
 80025ce:	b29b      	uxth	r3, r3
 80025d0:	1c18      	adds	r0, r3, #0
 80025d2:	2104      	movs	r1, #4
 80025d4:	2200      	movs	r2, #0
 80025d6:	f7ff fdd7 	bl	8002188 <net_header_fill>
 80025da:	4b0b      	ldr	r3, [pc, #44]	; (8002608 <net_ping_check+0x1dc>)
 80025dc:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 80025de:	b29b      	uxth	r3, r3
 80025e0:	1c18      	adds	r0, r3, #0
 80025e2:	f7ff fd9f 	bl	8002124 <embed_net_pack>
 80025e6:	4b0d      	ldr	r3, [pc, #52]	; (800261c <net_ping_check+0x1f0>)
 80025e8:	1c18      	adds	r0, r3, #0
 80025ea:	f7fe ffed 	bl	80015c8 <can_send_msg>
 80025ee:	4b07      	ldr	r3, [pc, #28]	; (800260c <net_ping_check+0x1e0>)
 80025f0:	2200      	movs	r2, #0
 80025f2:	701a      	strb	r2, [r3, #0]
 80025f4:	4b04      	ldr	r3, [pc, #16]	; (8002608 <net_ping_check+0x1dc>)
 80025f6:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 80025f8:	1c5a      	adds	r2, r3, #1
 80025fa:	4b03      	ldr	r3, [pc, #12]	; (8002608 <net_ping_check+0x1dc>)
 80025fc:	649a      	str	r2, [r3, #72]	; 0x48
 80025fe:	2300      	movs	r3, #0
 8002600:	1c18      	adds	r0, r3, #0
 8002602:	46bd      	mov	sp, r7
 8002604:	b004      	add	sp, #16
 8002606:	bd80      	pop	{r7, pc}
 8002608:	2000046c 	.word	0x2000046c
 800260c:	200004e4 	.word	0x200004e4
 8002610:	000003e7 	.word	0x000003e7
 8002614:	08002ddc 	.word	0x08002ddc
 8002618:	20000468 	.word	0x20000468
 800261c:	20000450 	.word	0x20000450

08002620 <net_poll>:
 8002620:	b590      	push	{r4, r7, lr}
 8002622:	b083      	sub	sp, #12
 8002624:	af00      	add	r7, sp, #0
 8002626:	1dfb      	adds	r3, r7, #7
 8002628:	2200      	movs	r2, #0
 800262a:	701a      	strb	r2, [r3, #0]
 800262c:	4bdd      	ldr	r3, [pc, #884]	; (80029a4 <net_poll+0x384>)
 800262e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8002630:	2b00      	cmp	r3, #0
 8002632:	d101      	bne.n	8002638 <net_poll+0x18>
 8002634:	2300      	movs	r3, #0
 8002636:	e230      	b.n	8002a9a <net_poll+0x47a>
 8002638:	4bda      	ldr	r3, [pc, #872]	; (80029a4 <net_poll+0x384>)
 800263a:	785b      	ldrb	r3, [r3, #1]
 800263c:	2b0c      	cmp	r3, #12
 800263e:	d900      	bls.n	8002642 <net_poll+0x22>
 8002640:	e22a      	b.n	8002a98 <net_poll+0x478>
 8002642:	009a      	lsls	r2, r3, #2
 8002644:	4bd8      	ldr	r3, [pc, #864]	; (80029a8 <net_poll+0x388>)
 8002646:	18d3      	adds	r3, r2, r3
 8002648:	681b      	ldr	r3, [r3, #0]
 800264a:	469f      	mov	pc, r3
 800264c:	4bd7      	ldr	r3, [pc, #860]	; (80029ac <net_poll+0x38c>)
 800264e:	681b      	ldr	r3, [r3, #0]
 8002650:	b29b      	uxth	r3, r3
 8002652:	1c18      	adds	r0, r3, #0
 8002654:	2101      	movs	r1, #1
 8002656:	2200      	movs	r2, #0
 8002658:	f7ff fd96 	bl	8002188 <net_header_fill>
 800265c:	2000      	movs	r0, #0
 800265e:	f7ff fd61 	bl	8002124 <embed_net_pack>
 8002662:	4bd3      	ldr	r3, [pc, #844]	; (80029b0 <net_poll+0x390>)
 8002664:	1c18      	adds	r0, r3, #0
 8002666:	f7fe ffaf 	bl	80015c8 <can_send_msg>
 800266a:	4bce      	ldr	r3, [pc, #824]	; (80029a4 <net_poll+0x384>)
 800266c:	2201      	movs	r2, #1
 800266e:	705a      	strb	r2, [r3, #1]
 8002670:	e212      	b.n	8002a98 <net_poll+0x478>
 8002672:	1dfc      	adds	r4, r7, #7
 8002674:	f7ff fe7c 	bl	8002370 <net_fsm>
 8002678:	1c03      	adds	r3, r0, #0
 800267a:	7023      	strb	r3, [r4, #0]
 800267c:	1dfb      	adds	r3, r7, #7
 800267e:	781b      	ldrb	r3, [r3, #0]
 8002680:	2b02      	cmp	r3, #2
 8002682:	d103      	bne.n	800268c <net_poll+0x6c>
 8002684:	4bc7      	ldr	r3, [pc, #796]	; (80029a4 <net_poll+0x384>)
 8002686:	2202      	movs	r2, #2
 8002688:	705a      	strb	r2, [r3, #1]
 800268a:	e205      	b.n	8002a98 <net_poll+0x478>
 800268c:	e204      	b.n	8002a98 <net_poll+0x478>
 800268e:	1dfc      	adds	r4, r7, #7
 8002690:	f7ff fe6e 	bl	8002370 <net_fsm>
 8002694:	1c03      	adds	r3, r0, #0
 8002696:	7023      	strb	r3, [r4, #0]
 8002698:	1dfb      	adds	r3, r7, #7
 800269a:	781b      	ldrb	r3, [r3, #0]
 800269c:	2b02      	cmp	r3, #2
 800269e:	d004      	beq.n	80026aa <net_poll+0x8a>
 80026a0:	4bc0      	ldr	r3, [pc, #768]	; (80029a4 <net_poll+0x384>)
 80026a2:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 80026a4:	1c5a      	adds	r2, r3, #1
 80026a6:	4bbf      	ldr	r3, [pc, #764]	; (80029a4 <net_poll+0x384>)
 80026a8:	649a      	str	r2, [r3, #72]	; 0x48
 80026aa:	4bbe      	ldr	r3, [pc, #760]	; (80029a4 <net_poll+0x384>)
 80026ac:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 80026ae:	4ac1      	ldr	r2, [pc, #772]	; (80029b4 <net_poll+0x394>)
 80026b0:	4293      	cmp	r3, r2
 80026b2:	d906      	bls.n	80026c2 <net_poll+0xa2>
 80026b4:	4bbb      	ldr	r3, [pc, #748]	; (80029a4 <net_poll+0x384>)
 80026b6:	2203      	movs	r2, #3
 80026b8:	705a      	strb	r2, [r3, #1]
 80026ba:	4bba      	ldr	r3, [pc, #744]	; (80029a4 <net_poll+0x384>)
 80026bc:	2200      	movs	r2, #0
 80026be:	649a      	str	r2, [r3, #72]	; 0x48
 80026c0:	e1ea      	b.n	8002a98 <net_poll+0x478>
 80026c2:	e1e9      	b.n	8002a98 <net_poll+0x478>
 80026c4:	1dfc      	adds	r4, r7, #7
 80026c6:	f7ff fe53 	bl	8002370 <net_fsm>
 80026ca:	1c03      	adds	r3, r0, #0
 80026cc:	7023      	strb	r3, [r4, #0]
 80026ce:	4bb7      	ldr	r3, [pc, #732]	; (80029ac <net_poll+0x38c>)
 80026d0:	681b      	ldr	r3, [r3, #0]
 80026d2:	b29b      	uxth	r3, r3
 80026d4:	1c18      	adds	r0, r3, #0
 80026d6:	2103      	movs	r1, #3
 80026d8:	2200      	movs	r2, #0
 80026da:	f7ff fd55 	bl	8002188 <net_header_fill>
 80026de:	2000      	movs	r0, #0
 80026e0:	f7ff fd20 	bl	8002124 <embed_net_pack>
 80026e4:	4bb2      	ldr	r3, [pc, #712]	; (80029b0 <net_poll+0x390>)
 80026e6:	1c18      	adds	r0, r3, #0
 80026e8:	f7fe ff6e 	bl	80015c8 <can_send_msg>
 80026ec:	4bad      	ldr	r3, [pc, #692]	; (80029a4 <net_poll+0x384>)
 80026ee:	2204      	movs	r2, #4
 80026f0:	705a      	strb	r2, [r3, #1]
 80026f2:	e1d1      	b.n	8002a98 <net_poll+0x478>
 80026f4:	1dfc      	adds	r4, r7, #7
 80026f6:	f7ff fe3b 	bl	8002370 <net_fsm>
 80026fa:	1c03      	adds	r3, r0, #0
 80026fc:	7023      	strb	r3, [r4, #0]
 80026fe:	1dfb      	adds	r3, r7, #7
 8002700:	781b      	ldrb	r3, [r3, #0]
 8002702:	1c18      	adds	r0, r3, #0
 8002704:	f7ff fe92 	bl	800242c <net_ping_check>
 8002708:	e1c6      	b.n	8002a98 <net_poll+0x478>
 800270a:	1dfc      	adds	r4, r7, #7
 800270c:	f7ff fe30 	bl	8002370 <net_fsm>
 8002710:	1c03      	adds	r3, r0, #0
 8002712:	7023      	strb	r3, [r4, #0]
 8002714:	1dfb      	adds	r3, r7, #7
 8002716:	781b      	ldrb	r3, [r3, #0]
 8002718:	1c18      	adds	r0, r3, #0
 800271a:	f7ff fe87 	bl	800242c <net_ping_check>
 800271e:	1dfb      	adds	r3, r7, #7
 8002720:	781b      	ldrb	r3, [r3, #0]
 8002722:	2b06      	cmp	r3, #6
 8002724:	d11e      	bne.n	8002764 <net_poll+0x144>
 8002726:	4ba4      	ldr	r3, [pc, #656]	; (80029b8 <net_poll+0x398>)
 8002728:	78da      	ldrb	r2, [r3, #3]
 800272a:	4ba4      	ldr	r3, [pc, #656]	; (80029bc <net_poll+0x39c>)
 800272c:	71da      	strb	r2, [r3, #7]
 800272e:	4ba2      	ldr	r3, [pc, #648]	; (80029b8 <net_poll+0x398>)
 8002730:	881b      	ldrh	r3, [r3, #0]
 8002732:	1c1a      	adds	r2, r3, #0
 8002734:	4ba1      	ldr	r3, [pc, #644]	; (80029bc <net_poll+0x39c>)
 8002736:	601a      	str	r2, [r3, #0]
 8002738:	4ba0      	ldr	r3, [pc, #640]	; (80029bc <net_poll+0x39c>)
 800273a:	689b      	ldr	r3, [r3, #8]
 800273c:	4a9f      	ldr	r2, [pc, #636]	; (80029bc <net_poll+0x39c>)
 800273e:	7b12      	ldrb	r2, [r2, #12]
 8002740:	189a      	adds	r2, r3, r2
 8002742:	4b9d      	ldr	r3, [pc, #628]	; (80029b8 <net_poll+0x398>)
 8002744:	1c11      	adds	r1, r2, #0
 8002746:	3304      	adds	r3, #4
 8002748:	2204      	movs	r2, #4
 800274a:	1c08      	adds	r0, r1, #0
 800274c:	1c19      	adds	r1, r3, #0
 800274e:	f000 f9f9 	bl	8002b44 <memcpy>
 8002752:	4b9a      	ldr	r3, [pc, #616]	; (80029bc <net_poll+0x39c>)
 8002754:	2204      	movs	r2, #4
 8002756:	731a      	strb	r2, [r3, #12]
 8002758:	4b92      	ldr	r3, [pc, #584]	; (80029a4 <net_poll+0x384>)
 800275a:	2206      	movs	r2, #6
 800275c:	705a      	strb	r2, [r3, #1]
 800275e:	4b91      	ldr	r3, [pc, #580]	; (80029a4 <net_poll+0x384>)
 8002760:	2200      	movs	r2, #0
 8002762:	651a      	str	r2, [r3, #80]	; 0x50
 8002764:	4b8f      	ldr	r3, [pc, #572]	; (80029a4 <net_poll+0x384>)
 8002766:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 8002768:	1c5a      	adds	r2, r3, #1
 800276a:	4b8e      	ldr	r3, [pc, #568]	; (80029a4 <net_poll+0x384>)
 800276c:	651a      	str	r2, [r3, #80]	; 0x50
 800276e:	4b8d      	ldr	r3, [pc, #564]	; (80029a4 <net_poll+0x384>)
 8002770:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 8002772:	2b63      	cmp	r3, #99	; 0x63
 8002774:	d912      	bls.n	800279c <net_poll+0x17c>
 8002776:	4b91      	ldr	r3, [pc, #580]	; (80029bc <net_poll+0x39c>)
 8002778:	2201      	movs	r2, #1
 800277a:	711a      	strb	r2, [r3, #4]
 800277c:	4b8f      	ldr	r3, [pc, #572]	; (80029bc <net_poll+0x39c>)
 800277e:	2200      	movs	r2, #0
 8002780:	715a      	strb	r2, [r3, #5]
 8002782:	4b8e      	ldr	r3, [pc, #568]	; (80029bc <net_poll+0x39c>)
 8002784:	2200      	movs	r2, #0
 8002786:	731a      	strb	r2, [r3, #12]
 8002788:	4b8c      	ldr	r3, [pc, #560]	; (80029bc <net_poll+0x39c>)
 800278a:	2201      	movs	r2, #1
 800278c:	719a      	strb	r2, [r3, #6]
 800278e:	4b85      	ldr	r3, [pc, #532]	; (80029a4 <net_poll+0x384>)
 8002790:	2200      	movs	r2, #0
 8002792:	651a      	str	r2, [r3, #80]	; 0x50
 8002794:	4b83      	ldr	r3, [pc, #524]	; (80029a4 <net_poll+0x384>)
 8002796:	2204      	movs	r2, #4
 8002798:	705a      	strb	r2, [r3, #1]
 800279a:	e17d      	b.n	8002a98 <net_poll+0x478>
 800279c:	e17c      	b.n	8002a98 <net_poll+0x478>
 800279e:	1dfc      	adds	r4, r7, #7
 80027a0:	f7ff fde6 	bl	8002370 <net_fsm>
 80027a4:	1c03      	adds	r3, r0, #0
 80027a6:	7023      	strb	r3, [r4, #0]
 80027a8:	1dfb      	adds	r3, r7, #7
 80027aa:	781b      	ldrb	r3, [r3, #0]
 80027ac:	1c18      	adds	r0, r3, #0
 80027ae:	f7ff fe3d 	bl	800242c <net_ping_check>
 80027b2:	4b7e      	ldr	r3, [pc, #504]	; (80029ac <net_poll+0x38c>)
 80027b4:	681b      	ldr	r3, [r3, #0]
 80027b6:	b29b      	uxth	r3, r3
 80027b8:	1c18      	adds	r0, r3, #0
 80027ba:	2107      	movs	r1, #7
 80027bc:	2200      	movs	r2, #0
 80027be:	f7ff fce3 	bl	8002188 <net_header_fill>
 80027c2:	4b7e      	ldr	r3, [pc, #504]	; (80029bc <net_poll+0x39c>)
 80027c4:	681b      	ldr	r3, [r3, #0]
 80027c6:	b29b      	uxth	r3, r3
 80027c8:	1c18      	adds	r0, r3, #0
 80027ca:	f7ff fcab 	bl	8002124 <embed_net_pack>
 80027ce:	4b78      	ldr	r3, [pc, #480]	; (80029b0 <net_poll+0x390>)
 80027d0:	1c18      	adds	r0, r3, #0
 80027d2:	f7fe fef9 	bl	80015c8 <can_send_msg>
 80027d6:	4b73      	ldr	r3, [pc, #460]	; (80029a4 <net_poll+0x384>)
 80027d8:	2207      	movs	r2, #7
 80027da:	705a      	strb	r2, [r3, #1]
 80027dc:	e15c      	b.n	8002a98 <net_poll+0x478>
 80027de:	1dfc      	adds	r4, r7, #7
 80027e0:	f7ff fdc6 	bl	8002370 <net_fsm>
 80027e4:	1c03      	adds	r3, r0, #0
 80027e6:	7023      	strb	r3, [r4, #0]
 80027e8:	1dfb      	adds	r3, r7, #7
 80027ea:	781b      	ldrb	r3, [r3, #0]
 80027ec:	1c18      	adds	r0, r3, #0
 80027ee:	f7ff fe1d 	bl	800242c <net_ping_check>
 80027f2:	1dfb      	adds	r3, r7, #7
 80027f4:	781b      	ldrb	r3, [r3, #0]
 80027f6:	2b08      	cmp	r3, #8
 80027f8:	d11f      	bne.n	800283a <net_poll+0x21a>
 80027fa:	4b6f      	ldr	r3, [pc, #444]	; (80029b8 <net_poll+0x398>)
 80027fc:	881b      	ldrh	r3, [r3, #0]
 80027fe:	1e1a      	subs	r2, r3, #0
 8002800:	4b6e      	ldr	r3, [pc, #440]	; (80029bc <net_poll+0x39c>)
 8002802:	681b      	ldr	r3, [r3, #0]
 8002804:	429a      	cmp	r2, r3
 8002806:	d118      	bne.n	800283a <net_poll+0x21a>
 8002808:	4b66      	ldr	r3, [pc, #408]	; (80029a4 <net_poll+0x384>)
 800280a:	2200      	movs	r2, #0
 800280c:	651a      	str	r2, [r3, #80]	; 0x50
 800280e:	4b6b      	ldr	r3, [pc, #428]	; (80029bc <net_poll+0x39c>)
 8002810:	689b      	ldr	r3, [r3, #8]
 8002812:	4a6a      	ldr	r2, [pc, #424]	; (80029bc <net_poll+0x39c>)
 8002814:	7b12      	ldrb	r2, [r2, #12]
 8002816:	189a      	adds	r2, r3, r2
 8002818:	4b67      	ldr	r3, [pc, #412]	; (80029b8 <net_poll+0x398>)
 800281a:	1c11      	adds	r1, r2, #0
 800281c:	3304      	adds	r3, #4
 800281e:	2204      	movs	r2, #4
 8002820:	1c08      	adds	r0, r1, #0
 8002822:	1c19      	adds	r1, r3, #0
 8002824:	f000 f98e 	bl	8002b44 <memcpy>
 8002828:	4b64      	ldr	r3, [pc, #400]	; (80029bc <net_poll+0x39c>)
 800282a:	7b1b      	ldrb	r3, [r3, #12]
 800282c:	3304      	adds	r3, #4
 800282e:	b2da      	uxtb	r2, r3
 8002830:	4b62      	ldr	r3, [pc, #392]	; (80029bc <net_poll+0x39c>)
 8002832:	731a      	strb	r2, [r3, #12]
 8002834:	4b5b      	ldr	r3, [pc, #364]	; (80029a4 <net_poll+0x384>)
 8002836:	2208      	movs	r2, #8
 8002838:	705a      	strb	r2, [r3, #1]
 800283a:	4b5a      	ldr	r3, [pc, #360]	; (80029a4 <net_poll+0x384>)
 800283c:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 800283e:	1c5a      	adds	r2, r3, #1
 8002840:	4b58      	ldr	r3, [pc, #352]	; (80029a4 <net_poll+0x384>)
 8002842:	651a      	str	r2, [r3, #80]	; 0x50
 8002844:	4b57      	ldr	r3, [pc, #348]	; (80029a4 <net_poll+0x384>)
 8002846:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 8002848:	2b63      	cmp	r3, #99	; 0x63
 800284a:	d915      	bls.n	8002878 <net_poll+0x258>
 800284c:	4b5b      	ldr	r3, [pc, #364]	; (80029bc <net_poll+0x39c>)
 800284e:	2201      	movs	r2, #1
 8002850:	711a      	strb	r2, [r3, #4]
 8002852:	4b5a      	ldr	r3, [pc, #360]	; (80029bc <net_poll+0x39c>)
 8002854:	2200      	movs	r2, #0
 8002856:	715a      	strb	r2, [r3, #5]
 8002858:	4b58      	ldr	r3, [pc, #352]	; (80029bc <net_poll+0x39c>)
 800285a:	2200      	movs	r2, #0
 800285c:	731a      	strb	r2, [r3, #12]
 800285e:	4b57      	ldr	r3, [pc, #348]	; (80029bc <net_poll+0x39c>)
 8002860:	2200      	movs	r2, #0
 8002862:	601a      	str	r2, [r3, #0]
 8002864:	4b55      	ldr	r3, [pc, #340]	; (80029bc <net_poll+0x39c>)
 8002866:	2201      	movs	r2, #1
 8002868:	719a      	strb	r2, [r3, #6]
 800286a:	4b4e      	ldr	r3, [pc, #312]	; (80029a4 <net_poll+0x384>)
 800286c:	2200      	movs	r2, #0
 800286e:	651a      	str	r2, [r3, #80]	; 0x50
 8002870:	4b4c      	ldr	r3, [pc, #304]	; (80029a4 <net_poll+0x384>)
 8002872:	2204      	movs	r2, #4
 8002874:	705a      	strb	r2, [r3, #1]
 8002876:	e10f      	b.n	8002a98 <net_poll+0x478>
 8002878:	e10e      	b.n	8002a98 <net_poll+0x478>
 800287a:	1dfc      	adds	r4, r7, #7
 800287c:	f7ff fd78 	bl	8002370 <net_fsm>
 8002880:	1c03      	adds	r3, r0, #0
 8002882:	7023      	strb	r3, [r4, #0]
 8002884:	1dfb      	adds	r3, r7, #7
 8002886:	781b      	ldrb	r3, [r3, #0]
 8002888:	1c18      	adds	r0, r3, #0
 800288a:	f7ff fdcf 	bl	800242c <net_ping_check>
 800288e:	4b47      	ldr	r3, [pc, #284]	; (80029ac <net_poll+0x38c>)
 8002890:	681b      	ldr	r3, [r3, #0]
 8002892:	b29b      	uxth	r3, r3
 8002894:	1c18      	adds	r0, r3, #0
 8002896:	2109      	movs	r1, #9
 8002898:	2200      	movs	r2, #0
 800289a:	f7ff fc75 	bl	8002188 <net_header_fill>
 800289e:	4b47      	ldr	r3, [pc, #284]	; (80029bc <net_poll+0x39c>)
 80028a0:	681b      	ldr	r3, [r3, #0]
 80028a2:	b29b      	uxth	r3, r3
 80028a4:	1c18      	adds	r0, r3, #0
 80028a6:	f7ff fc3d 	bl	8002124 <embed_net_pack>
 80028aa:	4b41      	ldr	r3, [pc, #260]	; (80029b0 <net_poll+0x390>)
 80028ac:	1c18      	adds	r0, r3, #0
 80028ae:	f7fe fe8b 	bl	80015c8 <can_send_msg>
 80028b2:	4b3c      	ldr	r3, [pc, #240]	; (80029a4 <net_poll+0x384>)
 80028b4:	2207      	movs	r2, #7
 80028b6:	705a      	strb	r2, [r3, #1]
 80028b8:	4b40      	ldr	r3, [pc, #256]	; (80029bc <net_poll+0x39c>)
 80028ba:	7b1a      	ldrb	r2, [r3, #12]
 80028bc:	4b3f      	ldr	r3, [pc, #252]	; (80029bc <net_poll+0x39c>)
 80028be:	79db      	ldrb	r3, [r3, #7]
 80028c0:	429a      	cmp	r2, r3
 80028c2:	d30f      	bcc.n	80028e4 <net_poll+0x2c4>
 80028c4:	4b3d      	ldr	r3, [pc, #244]	; (80029bc <net_poll+0x39c>)
 80028c6:	2201      	movs	r2, #1
 80028c8:	711a      	strb	r2, [r3, #4]
 80028ca:	4b3c      	ldr	r3, [pc, #240]	; (80029bc <net_poll+0x39c>)
 80028cc:	2200      	movs	r2, #0
 80028ce:	715a      	strb	r2, [r3, #5]
 80028d0:	4b3a      	ldr	r3, [pc, #232]	; (80029bc <net_poll+0x39c>)
 80028d2:	2200      	movs	r2, #0
 80028d4:	731a      	strb	r2, [r3, #12]
 80028d6:	4b33      	ldr	r3, [pc, #204]	; (80029a4 <net_poll+0x384>)
 80028d8:	2200      	movs	r2, #0
 80028da:	651a      	str	r2, [r3, #80]	; 0x50
 80028dc:	4b31      	ldr	r3, [pc, #196]	; (80029a4 <net_poll+0x384>)
 80028de:	2204      	movs	r2, #4
 80028e0:	705a      	strb	r2, [r3, #1]
 80028e2:	e0d9      	b.n	8002a98 <net_poll+0x478>
 80028e4:	e0d8      	b.n	8002a98 <net_poll+0x478>
 80028e6:	1dfc      	adds	r4, r7, #7
 80028e8:	f7ff fd42 	bl	8002370 <net_fsm>
 80028ec:	1c03      	adds	r3, r0, #0
 80028ee:	7023      	strb	r3, [r4, #0]
 80028f0:	1dfb      	adds	r3, r7, #7
 80028f2:	781b      	ldrb	r3, [r3, #0]
 80028f4:	1c18      	adds	r0, r3, #0
 80028f6:	f7ff fd99 	bl	800242c <net_ping_check>
 80028fa:	4b31      	ldr	r3, [pc, #196]	; (80029c0 <net_poll+0x3a0>)
 80028fc:	689a      	ldr	r2, [r3, #8]
 80028fe:	4b2e      	ldr	r3, [pc, #184]	; (80029b8 <net_poll+0x398>)
 8002900:	3304      	adds	r3, #4
 8002902:	1c11      	adds	r1, r2, #0
 8002904:	2204      	movs	r2, #4
 8002906:	1c18      	adds	r0, r3, #0
 8002908:	f000 f91c 	bl	8002b44 <memcpy>
 800290c:	4b27      	ldr	r3, [pc, #156]	; (80029ac <net_poll+0x38c>)
 800290e:	681b      	ldr	r3, [r3, #0]
 8002910:	b29a      	uxth	r2, r3
 8002912:	4b2b      	ldr	r3, [pc, #172]	; (80029c0 <net_poll+0x3a0>)
 8002914:	799b      	ldrb	r3, [r3, #6]
 8002916:	1c10      	adds	r0, r2, #0
 8002918:	2106      	movs	r1, #6
 800291a:	1c1a      	adds	r2, r3, #0
 800291c:	f7ff fc34 	bl	8002188 <net_header_fill>
 8002920:	4b27      	ldr	r3, [pc, #156]	; (80029c0 <net_poll+0x3a0>)
 8002922:	681b      	ldr	r3, [r3, #0]
 8002924:	b29b      	uxth	r3, r3
 8002926:	1c18      	adds	r0, r3, #0
 8002928:	f7ff fbfc 	bl	8002124 <embed_net_pack>
 800292c:	4b20      	ldr	r3, [pc, #128]	; (80029b0 <net_poll+0x390>)
 800292e:	1c18      	adds	r0, r3, #0
 8002930:	f7fe fe4a 	bl	80015c8 <can_send_msg>
 8002934:	4b22      	ldr	r3, [pc, #136]	; (80029c0 <net_poll+0x3a0>)
 8002936:	2200      	movs	r2, #0
 8002938:	715a      	strb	r2, [r3, #5]
 800293a:	4b21      	ldr	r3, [pc, #132]	; (80029c0 <net_poll+0x3a0>)
 800293c:	2204      	movs	r2, #4
 800293e:	731a      	strb	r2, [r3, #12]
 8002940:	4b18      	ldr	r3, [pc, #96]	; (80029a4 <net_poll+0x384>)
 8002942:	220a      	movs	r2, #10
 8002944:	705a      	strb	r2, [r3, #1]
 8002946:	4b17      	ldr	r3, [pc, #92]	; (80029a4 <net_poll+0x384>)
 8002948:	2200      	movs	r2, #0
 800294a:	655a      	str	r2, [r3, #84]	; 0x54
 800294c:	e0a4      	b.n	8002a98 <net_poll+0x478>
 800294e:	1dfc      	adds	r4, r7, #7
 8002950:	f7ff fd0e 	bl	8002370 <net_fsm>
 8002954:	1c03      	adds	r3, r0, #0
 8002956:	7023      	strb	r3, [r4, #0]
 8002958:	1dfb      	adds	r3, r7, #7
 800295a:	781b      	ldrb	r3, [r3, #0]
 800295c:	1c18      	adds	r0, r3, #0
 800295e:	f7ff fd65 	bl	800242c <net_ping_check>
 8002962:	1dfb      	adds	r3, r7, #7
 8002964:	781b      	ldrb	r3, [r3, #0]
 8002966:	2b07      	cmp	r3, #7
 8002968:	d105      	bne.n	8002976 <net_poll+0x356>
 800296a:	4b0e      	ldr	r3, [pc, #56]	; (80029a4 <net_poll+0x384>)
 800296c:	2200      	movs	r2, #0
 800296e:	655a      	str	r2, [r3, #84]	; 0x54
 8002970:	4b0c      	ldr	r3, [pc, #48]	; (80029a4 <net_poll+0x384>)
 8002972:	220b      	movs	r2, #11
 8002974:	705a      	strb	r2, [r3, #1]
 8002976:	4b0b      	ldr	r3, [pc, #44]	; (80029a4 <net_poll+0x384>)
 8002978:	6d5b      	ldr	r3, [r3, #84]	; 0x54
 800297a:	1c5a      	adds	r2, r3, #1
 800297c:	4b09      	ldr	r3, [pc, #36]	; (80029a4 <net_poll+0x384>)
 800297e:	655a      	str	r2, [r3, #84]	; 0x54
 8002980:	4b08      	ldr	r3, [pc, #32]	; (80029a4 <net_poll+0x384>)
 8002982:	6d5b      	ldr	r3, [r3, #84]	; 0x54
 8002984:	2b63      	cmp	r3, #99	; 0x63
 8002986:	d90c      	bls.n	80029a2 <net_poll+0x382>
 8002988:	4b0d      	ldr	r3, [pc, #52]	; (80029c0 <net_poll+0x3a0>)
 800298a:	2201      	movs	r2, #1
 800298c:	711a      	strb	r2, [r3, #4]
 800298e:	4b0c      	ldr	r3, [pc, #48]	; (80029c0 <net_poll+0x3a0>)
 8002990:	2201      	movs	r2, #1
 8002992:	715a      	strb	r2, [r3, #5]
 8002994:	4b03      	ldr	r3, [pc, #12]	; (80029a4 <net_poll+0x384>)
 8002996:	2200      	movs	r2, #0
 8002998:	655a      	str	r2, [r3, #84]	; 0x54
 800299a:	4b02      	ldr	r3, [pc, #8]	; (80029a4 <net_poll+0x384>)
 800299c:	2204      	movs	r2, #4
 800299e:	705a      	strb	r2, [r3, #1]
 80029a0:	e07a      	b.n	8002a98 <net_poll+0x478>
 80029a2:	e079      	b.n	8002a98 <net_poll+0x478>
 80029a4:	2000046c 	.word	0x2000046c
 80029a8:	08002ec0 	.word	0x08002ec0
 80029ac:	20000468 	.word	0x20000468
 80029b0:	20000450 	.word	0x20000450
 80029b4:	00000bb7 	.word	0x00000bb7
 80029b8:	20000460 	.word	0x20000460
 80029bc:	200004c4 	.word	0x200004c4
 80029c0:	200004d4 	.word	0x200004d4
 80029c4:	1dfc      	adds	r4, r7, #7
 80029c6:	f7ff fcd3 	bl	8002370 <net_fsm>
 80029ca:	1c03      	adds	r3, r0, #0
 80029cc:	7023      	strb	r3, [r4, #0]
 80029ce:	1dfb      	adds	r3, r7, #7
 80029d0:	781b      	ldrb	r3, [r3, #0]
 80029d2:	1c18      	adds	r0, r3, #0
 80029d4:	f7ff fd2a 	bl	800242c <net_ping_check>
 80029d8:	4b32      	ldr	r3, [pc, #200]	; (8002aa4 <net_poll+0x484>)
 80029da:	689b      	ldr	r3, [r3, #8]
 80029dc:	4a31      	ldr	r2, [pc, #196]	; (8002aa4 <net_poll+0x484>)
 80029de:	7b12      	ldrb	r2, [r2, #12]
 80029e0:	189a      	adds	r2, r3, r2
 80029e2:	4b31      	ldr	r3, [pc, #196]	; (8002aa8 <net_poll+0x488>)
 80029e4:	3304      	adds	r3, #4
 80029e6:	1c11      	adds	r1, r2, #0
 80029e8:	2204      	movs	r2, #4
 80029ea:	1c18      	adds	r0, r3, #0
 80029ec:	f000 f8aa 	bl	8002b44 <memcpy>
 80029f0:	4b2c      	ldr	r3, [pc, #176]	; (8002aa4 <net_poll+0x484>)
 80029f2:	7b1b      	ldrb	r3, [r3, #12]
 80029f4:	3304      	adds	r3, #4
 80029f6:	b2da      	uxtb	r2, r3
 80029f8:	4b2a      	ldr	r3, [pc, #168]	; (8002aa4 <net_poll+0x484>)
 80029fa:	731a      	strb	r2, [r3, #12]
 80029fc:	4b2b      	ldr	r3, [pc, #172]	; (8002aac <net_poll+0x48c>)
 80029fe:	681b      	ldr	r3, [r3, #0]
 8002a00:	b29b      	uxth	r3, r3
 8002a02:	1c18      	adds	r0, r3, #0
 8002a04:	2108      	movs	r1, #8
 8002a06:	2204      	movs	r2, #4
 8002a08:	f7ff fbbe 	bl	8002188 <net_header_fill>
 8002a0c:	4b25      	ldr	r3, [pc, #148]	; (8002aa4 <net_poll+0x484>)
 8002a0e:	681b      	ldr	r3, [r3, #0]
 8002a10:	b29b      	uxth	r3, r3
 8002a12:	1c18      	adds	r0, r3, #0
 8002a14:	f7ff fb86 	bl	8002124 <embed_net_pack>
 8002a18:	4b25      	ldr	r3, [pc, #148]	; (8002ab0 <net_poll+0x490>)
 8002a1a:	1c18      	adds	r0, r3, #0
 8002a1c:	f7fe fdd4 	bl	80015c8 <can_send_msg>
 8002a20:	4b24      	ldr	r3, [pc, #144]	; (8002ab4 <net_poll+0x494>)
 8002a22:	220c      	movs	r2, #12
 8002a24:	705a      	strb	r2, [r3, #1]
 8002a26:	e037      	b.n	8002a98 <net_poll+0x478>
 8002a28:	1dfc      	adds	r4, r7, #7
 8002a2a:	f7ff fca1 	bl	8002370 <net_fsm>
 8002a2e:	1c03      	adds	r3, r0, #0
 8002a30:	7023      	strb	r3, [r4, #0]
 8002a32:	1dfb      	adds	r3, r7, #7
 8002a34:	781b      	ldrb	r3, [r3, #0]
 8002a36:	1c18      	adds	r0, r3, #0
 8002a38:	f7ff fcf8 	bl	800242c <net_ping_check>
 8002a3c:	1dfb      	adds	r3, r7, #7
 8002a3e:	781b      	ldrb	r3, [r3, #0]
 8002a40:	2b09      	cmp	r3, #9
 8002a42:	d112      	bne.n	8002a6a <net_poll+0x44a>
 8002a44:	4b17      	ldr	r3, [pc, #92]	; (8002aa4 <net_poll+0x484>)
 8002a46:	7b1a      	ldrb	r2, [r3, #12]
 8002a48:	4b16      	ldr	r3, [pc, #88]	; (8002aa4 <net_poll+0x484>)
 8002a4a:	799b      	ldrb	r3, [r3, #6]
 8002a4c:	429a      	cmp	r2, r3
 8002a4e:	d309      	bcc.n	8002a64 <net_poll+0x444>
 8002a50:	4b18      	ldr	r3, [pc, #96]	; (8002ab4 <net_poll+0x494>)
 8002a52:	2200      	movs	r2, #0
 8002a54:	655a      	str	r2, [r3, #84]	; 0x54
 8002a56:	4b13      	ldr	r3, [pc, #76]	; (8002aa4 <net_poll+0x484>)
 8002a58:	2201      	movs	r2, #1
 8002a5a:	711a      	strb	r2, [r3, #4]
 8002a5c:	4b15      	ldr	r3, [pc, #84]	; (8002ab4 <net_poll+0x494>)
 8002a5e:	2204      	movs	r2, #4
 8002a60:	705a      	strb	r2, [r3, #1]
 8002a62:	e002      	b.n	8002a6a <net_poll+0x44a>
 8002a64:	4b13      	ldr	r3, [pc, #76]	; (8002ab4 <net_poll+0x494>)
 8002a66:	220b      	movs	r2, #11
 8002a68:	705a      	strb	r2, [r3, #1]
 8002a6a:	4b12      	ldr	r3, [pc, #72]	; (8002ab4 <net_poll+0x494>)
 8002a6c:	6d5b      	ldr	r3, [r3, #84]	; 0x54
 8002a6e:	1c5a      	adds	r2, r3, #1
 8002a70:	4b10      	ldr	r3, [pc, #64]	; (8002ab4 <net_poll+0x494>)
 8002a72:	655a      	str	r2, [r3, #84]	; 0x54
 8002a74:	4b0f      	ldr	r3, [pc, #60]	; (8002ab4 <net_poll+0x494>)
 8002a76:	6d5b      	ldr	r3, [r3, #84]	; 0x54
 8002a78:	2b63      	cmp	r3, #99	; 0x63
 8002a7a:	d90c      	bls.n	8002a96 <net_poll+0x476>
 8002a7c:	4b09      	ldr	r3, [pc, #36]	; (8002aa4 <net_poll+0x484>)
 8002a7e:	2201      	movs	r2, #1
 8002a80:	711a      	strb	r2, [r3, #4]
 8002a82:	4b08      	ldr	r3, [pc, #32]	; (8002aa4 <net_poll+0x484>)
 8002a84:	2201      	movs	r2, #1
 8002a86:	715a      	strb	r2, [r3, #5]
 8002a88:	4b0a      	ldr	r3, [pc, #40]	; (8002ab4 <net_poll+0x494>)
 8002a8a:	2200      	movs	r2, #0
 8002a8c:	655a      	str	r2, [r3, #84]	; 0x54
 8002a8e:	4b09      	ldr	r3, [pc, #36]	; (8002ab4 <net_poll+0x494>)
 8002a90:	2204      	movs	r2, #4
 8002a92:	705a      	strb	r2, [r3, #1]
 8002a94:	e7ff      	b.n	8002a96 <net_poll+0x476>
 8002a96:	46c0      	nop			; (mov r8, r8)
 8002a98:	2300      	movs	r3, #0
 8002a9a:	1c18      	adds	r0, r3, #0
 8002a9c:	46bd      	mov	sp, r7
 8002a9e:	b003      	add	sp, #12
 8002aa0:	bd90      	pop	{r4, r7, pc}
 8002aa2:	46c0      	nop			; (mov r8, r8)
 8002aa4:	200004d4 	.word	0x200004d4
 8002aa8:	20000460 	.word	0x20000460
 8002aac:	20000468 	.word	0x20000468
 8002ab0:	20000450 	.word	0x20000450
 8002ab4:	2000046c 	.word	0x2000046c

08002ab8 <atexit>:
 8002ab8:	b508      	push	{r3, lr}
 8002aba:	1c01      	adds	r1, r0, #0
 8002abc:	2200      	movs	r2, #0
 8002abe:	2000      	movs	r0, #0
 8002ac0:	2300      	movs	r3, #0
 8002ac2:	f000 f8c3 	bl	8002c4c <__register_exitproc>
 8002ac6:	bd08      	pop	{r3, pc}

08002ac8 <__libc_fini_array>:
 8002ac8:	b538      	push	{r3, r4, r5, lr}
 8002aca:	4b09      	ldr	r3, [pc, #36]	; (8002af0 <__libc_fini_array+0x28>)
 8002acc:	4c09      	ldr	r4, [pc, #36]	; (8002af4 <__libc_fini_array+0x2c>)
 8002ace:	1ae4      	subs	r4, r4, r3
 8002ad0:	10a4      	asrs	r4, r4, #2
 8002ad2:	d009      	beq.n	8002ae8 <__libc_fini_array+0x20>
 8002ad4:	4a08      	ldr	r2, [pc, #32]	; (8002af8 <__libc_fini_array+0x30>)
 8002ad6:	18a5      	adds	r5, r4, r2
 8002ad8:	00ad      	lsls	r5, r5, #2
 8002ada:	18ed      	adds	r5, r5, r3
 8002adc:	682b      	ldr	r3, [r5, #0]
 8002ade:	3c01      	subs	r4, #1
 8002ae0:	4798      	blx	r3
 8002ae2:	3d04      	subs	r5, #4
 8002ae4:	2c00      	cmp	r4, #0
 8002ae6:	d1f9      	bne.n	8002adc <__libc_fini_array+0x14>
 8002ae8:	f000 f92c 	bl	8002d44 <_fini>
 8002aec:	bd38      	pop	{r3, r4, r5, pc}
 8002aee:	46c0      	nop			; (mov r8, r8)
 8002af0:	08002f04 	.word	0x08002f04
 8002af4:	08002f08 	.word	0x08002f08
 8002af8:	3fffffff 	.word	0x3fffffff

08002afc <__libc_init_array>:
 8002afc:	b570      	push	{r4, r5, r6, lr}
 8002afe:	4e0d      	ldr	r6, [pc, #52]	; (8002b34 <__libc_init_array+0x38>)
 8002b00:	4d0d      	ldr	r5, [pc, #52]	; (8002b38 <__libc_init_array+0x3c>)
 8002b02:	2400      	movs	r4, #0
 8002b04:	1bad      	subs	r5, r5, r6
 8002b06:	10ad      	asrs	r5, r5, #2
 8002b08:	d005      	beq.n	8002b16 <__libc_init_array+0x1a>
 8002b0a:	00a3      	lsls	r3, r4, #2
 8002b0c:	58f3      	ldr	r3, [r6, r3]
 8002b0e:	3401      	adds	r4, #1
 8002b10:	4798      	blx	r3
 8002b12:	42a5      	cmp	r5, r4
 8002b14:	d1f9      	bne.n	8002b0a <__libc_init_array+0xe>
 8002b16:	f000 f90f 	bl	8002d38 <_init>
 8002b1a:	4e08      	ldr	r6, [pc, #32]	; (8002b3c <__libc_init_array+0x40>)
 8002b1c:	4d08      	ldr	r5, [pc, #32]	; (8002b40 <__libc_init_array+0x44>)
 8002b1e:	2400      	movs	r4, #0
 8002b20:	1bad      	subs	r5, r5, r6
 8002b22:	10ad      	asrs	r5, r5, #2
 8002b24:	d005      	beq.n	8002b32 <__libc_init_array+0x36>
 8002b26:	00a3      	lsls	r3, r4, #2
 8002b28:	58f3      	ldr	r3, [r6, r3]
 8002b2a:	3401      	adds	r4, #1
 8002b2c:	4798      	blx	r3
 8002b2e:	42a5      	cmp	r5, r4
 8002b30:	d1f9      	bne.n	8002b26 <__libc_init_array+0x2a>
 8002b32:	bd70      	pop	{r4, r5, r6, pc}
 8002b34:	08002efc 	.word	0x08002efc
 8002b38:	08002efc 	.word	0x08002efc
 8002b3c:	08002efc 	.word	0x08002efc
 8002b40:	08002f04 	.word	0x08002f04

08002b44 <memcpy>:
 8002b44:	b570      	push	{r4, r5, r6, lr}
 8002b46:	2a0f      	cmp	r2, #15
 8002b48:	d932      	bls.n	8002bb0 <memcpy+0x6c>
 8002b4a:	1c04      	adds	r4, r0, #0
 8002b4c:	430c      	orrs	r4, r1
 8002b4e:	1c0b      	adds	r3, r1, #0
 8002b50:	07a4      	lsls	r4, r4, #30
 8002b52:	d131      	bne.n	8002bb8 <memcpy+0x74>
 8002b54:	1c15      	adds	r5, r2, #0
 8002b56:	1c04      	adds	r4, r0, #0
 8002b58:	3d10      	subs	r5, #16
 8002b5a:	092d      	lsrs	r5, r5, #4
 8002b5c:	3501      	adds	r5, #1
 8002b5e:	012d      	lsls	r5, r5, #4
 8002b60:	1949      	adds	r1, r1, r5
 8002b62:	681e      	ldr	r6, [r3, #0]
 8002b64:	6026      	str	r6, [r4, #0]
 8002b66:	685e      	ldr	r6, [r3, #4]
 8002b68:	6066      	str	r6, [r4, #4]
 8002b6a:	689e      	ldr	r6, [r3, #8]
 8002b6c:	60a6      	str	r6, [r4, #8]
 8002b6e:	68de      	ldr	r6, [r3, #12]
 8002b70:	3310      	adds	r3, #16
 8002b72:	60e6      	str	r6, [r4, #12]
 8002b74:	3410      	adds	r4, #16
 8002b76:	4299      	cmp	r1, r3
 8002b78:	d1f3      	bne.n	8002b62 <memcpy+0x1e>
 8002b7a:	230f      	movs	r3, #15
 8002b7c:	1945      	adds	r5, r0, r5
 8002b7e:	4013      	ands	r3, r2
 8002b80:	2b03      	cmp	r3, #3
 8002b82:	d91b      	bls.n	8002bbc <memcpy+0x78>
 8002b84:	1f1c      	subs	r4, r3, #4
 8002b86:	2300      	movs	r3, #0
 8002b88:	08a4      	lsrs	r4, r4, #2
 8002b8a:	3401      	adds	r4, #1
 8002b8c:	00a4      	lsls	r4, r4, #2
 8002b8e:	58ce      	ldr	r6, [r1, r3]
 8002b90:	50ee      	str	r6, [r5, r3]
 8002b92:	3304      	adds	r3, #4
 8002b94:	42a3      	cmp	r3, r4
 8002b96:	d1fa      	bne.n	8002b8e <memcpy+0x4a>
 8002b98:	18ed      	adds	r5, r5, r3
 8002b9a:	18c9      	adds	r1, r1, r3
 8002b9c:	2303      	movs	r3, #3
 8002b9e:	401a      	ands	r2, r3
 8002ba0:	d005      	beq.n	8002bae <memcpy+0x6a>
 8002ba2:	2300      	movs	r3, #0
 8002ba4:	5ccc      	ldrb	r4, [r1, r3]
 8002ba6:	54ec      	strb	r4, [r5, r3]
 8002ba8:	3301      	adds	r3, #1
 8002baa:	4293      	cmp	r3, r2
 8002bac:	d1fa      	bne.n	8002ba4 <memcpy+0x60>
 8002bae:	bd70      	pop	{r4, r5, r6, pc}
 8002bb0:	1c05      	adds	r5, r0, #0
 8002bb2:	2a00      	cmp	r2, #0
 8002bb4:	d1f5      	bne.n	8002ba2 <memcpy+0x5e>
 8002bb6:	e7fa      	b.n	8002bae <memcpy+0x6a>
 8002bb8:	1c05      	adds	r5, r0, #0
 8002bba:	e7f2      	b.n	8002ba2 <memcpy+0x5e>
 8002bbc:	1c1a      	adds	r2, r3, #0
 8002bbe:	e7f8      	b.n	8002bb2 <memcpy+0x6e>

08002bc0 <memset>:
 8002bc0:	b570      	push	{r4, r5, r6, lr}
 8002bc2:	0783      	lsls	r3, r0, #30
 8002bc4:	d03f      	beq.n	8002c46 <memset+0x86>
 8002bc6:	1e54      	subs	r4, r2, #1
 8002bc8:	2a00      	cmp	r2, #0
 8002bca:	d03b      	beq.n	8002c44 <memset+0x84>
 8002bcc:	b2ce      	uxtb	r6, r1
 8002bce:	1c03      	adds	r3, r0, #0
 8002bd0:	2503      	movs	r5, #3
 8002bd2:	e003      	b.n	8002bdc <memset+0x1c>
 8002bd4:	1e62      	subs	r2, r4, #1
 8002bd6:	2c00      	cmp	r4, #0
 8002bd8:	d034      	beq.n	8002c44 <memset+0x84>
 8002bda:	1c14      	adds	r4, r2, #0
 8002bdc:	3301      	adds	r3, #1
 8002bde:	1e5a      	subs	r2, r3, #1
 8002be0:	7016      	strb	r6, [r2, #0]
 8002be2:	422b      	tst	r3, r5
 8002be4:	d1f6      	bne.n	8002bd4 <memset+0x14>
 8002be6:	2c03      	cmp	r4, #3
 8002be8:	d924      	bls.n	8002c34 <memset+0x74>
 8002bea:	25ff      	movs	r5, #255	; 0xff
 8002bec:	400d      	ands	r5, r1
 8002bee:	022a      	lsls	r2, r5, #8
 8002bf0:	4315      	orrs	r5, r2
 8002bf2:	042a      	lsls	r2, r5, #16
 8002bf4:	4315      	orrs	r5, r2
 8002bf6:	2c0f      	cmp	r4, #15
 8002bf8:	d911      	bls.n	8002c1e <memset+0x5e>
 8002bfa:	1c26      	adds	r6, r4, #0
 8002bfc:	3e10      	subs	r6, #16
 8002bfe:	0936      	lsrs	r6, r6, #4
 8002c00:	3601      	adds	r6, #1
 8002c02:	0136      	lsls	r6, r6, #4
 8002c04:	1c1a      	adds	r2, r3, #0
 8002c06:	199b      	adds	r3, r3, r6
 8002c08:	6015      	str	r5, [r2, #0]
 8002c0a:	6055      	str	r5, [r2, #4]
 8002c0c:	6095      	str	r5, [r2, #8]
 8002c0e:	60d5      	str	r5, [r2, #12]
 8002c10:	3210      	adds	r2, #16
 8002c12:	4293      	cmp	r3, r2
 8002c14:	d1f8      	bne.n	8002c08 <memset+0x48>
 8002c16:	220f      	movs	r2, #15
 8002c18:	4014      	ands	r4, r2
 8002c1a:	2c03      	cmp	r4, #3
 8002c1c:	d90a      	bls.n	8002c34 <memset+0x74>
 8002c1e:	1f26      	subs	r6, r4, #4
 8002c20:	08b6      	lsrs	r6, r6, #2
 8002c22:	3601      	adds	r6, #1
 8002c24:	00b6      	lsls	r6, r6, #2
 8002c26:	1c1a      	adds	r2, r3, #0
 8002c28:	199b      	adds	r3, r3, r6
 8002c2a:	c220      	stmia	r2!, {r5}
 8002c2c:	4293      	cmp	r3, r2
 8002c2e:	d1fc      	bne.n	8002c2a <memset+0x6a>
 8002c30:	2203      	movs	r2, #3
 8002c32:	4014      	ands	r4, r2
 8002c34:	2c00      	cmp	r4, #0
 8002c36:	d005      	beq.n	8002c44 <memset+0x84>
 8002c38:	b2c9      	uxtb	r1, r1
 8002c3a:	191c      	adds	r4, r3, r4
 8002c3c:	7019      	strb	r1, [r3, #0]
 8002c3e:	3301      	adds	r3, #1
 8002c40:	42a3      	cmp	r3, r4
 8002c42:	d1fb      	bne.n	8002c3c <memset+0x7c>
 8002c44:	bd70      	pop	{r4, r5, r6, pc}
 8002c46:	1c14      	adds	r4, r2, #0
 8002c48:	1c03      	adds	r3, r0, #0
 8002c4a:	e7cc      	b.n	8002be6 <memset+0x26>

08002c4c <__register_exitproc>:
 8002c4c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002c4e:	4644      	mov	r4, r8
 8002c50:	465f      	mov	r7, fp
 8002c52:	4656      	mov	r6, sl
 8002c54:	464d      	mov	r5, r9
 8002c56:	469b      	mov	fp, r3
 8002c58:	4b2f      	ldr	r3, [pc, #188]	; (8002d18 <__register_exitproc+0xcc>)
 8002c5a:	b4f0      	push	{r4, r5, r6, r7}
 8002c5c:	681c      	ldr	r4, [r3, #0]
 8002c5e:	23a4      	movs	r3, #164	; 0xa4
 8002c60:	005b      	lsls	r3, r3, #1
 8002c62:	1c05      	adds	r5, r0, #0
 8002c64:	58e0      	ldr	r0, [r4, r3]
 8002c66:	1c0e      	adds	r6, r1, #0
 8002c68:	4690      	mov	r8, r2
 8002c6a:	2800      	cmp	r0, #0
 8002c6c:	d04b      	beq.n	8002d06 <__register_exitproc+0xba>
 8002c6e:	6843      	ldr	r3, [r0, #4]
 8002c70:	2b1f      	cmp	r3, #31
 8002c72:	dc0d      	bgt.n	8002c90 <__register_exitproc+0x44>
 8002c74:	1c5c      	adds	r4, r3, #1
 8002c76:	2d00      	cmp	r5, #0
 8002c78:	d121      	bne.n	8002cbe <__register_exitproc+0x72>
 8002c7a:	3302      	adds	r3, #2
 8002c7c:	009b      	lsls	r3, r3, #2
 8002c7e:	6044      	str	r4, [r0, #4]
 8002c80:	501e      	str	r6, [r3, r0]
 8002c82:	2000      	movs	r0, #0
 8002c84:	bc3c      	pop	{r2, r3, r4, r5}
 8002c86:	4690      	mov	r8, r2
 8002c88:	4699      	mov	r9, r3
 8002c8a:	46a2      	mov	sl, r4
 8002c8c:	46ab      	mov	fp, r5
 8002c8e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8002c90:	4b22      	ldr	r3, [pc, #136]	; (8002d1c <__register_exitproc+0xd0>)
 8002c92:	2b00      	cmp	r3, #0
 8002c94:	d03c      	beq.n	8002d10 <__register_exitproc+0xc4>
 8002c96:	20c8      	movs	r0, #200	; 0xc8
 8002c98:	0040      	lsls	r0, r0, #1
 8002c9a:	e000      	b.n	8002c9e <__register_exitproc+0x52>
 8002c9c:	bf00      	nop
 8002c9e:	2800      	cmp	r0, #0
 8002ca0:	d036      	beq.n	8002d10 <__register_exitproc+0xc4>
 8002ca2:	22a4      	movs	r2, #164	; 0xa4
 8002ca4:	2300      	movs	r3, #0
 8002ca6:	0052      	lsls	r2, r2, #1
 8002ca8:	58a1      	ldr	r1, [r4, r2]
 8002caa:	6043      	str	r3, [r0, #4]
 8002cac:	6001      	str	r1, [r0, #0]
 8002cae:	50a0      	str	r0, [r4, r2]
 8002cb0:	3240      	adds	r2, #64	; 0x40
 8002cb2:	5083      	str	r3, [r0, r2]
 8002cb4:	3204      	adds	r2, #4
 8002cb6:	5083      	str	r3, [r0, r2]
 8002cb8:	2401      	movs	r4, #1
 8002cba:	2d00      	cmp	r5, #0
 8002cbc:	d0dd      	beq.n	8002c7a <__register_exitproc+0x2e>
 8002cbe:	009a      	lsls	r2, r3, #2
 8002cc0:	4691      	mov	r9, r2
 8002cc2:	4481      	add	r9, r0
 8002cc4:	4642      	mov	r2, r8
 8002cc6:	2188      	movs	r1, #136	; 0x88
 8002cc8:	464f      	mov	r7, r9
 8002cca:	507a      	str	r2, [r7, r1]
 8002ccc:	22c4      	movs	r2, #196	; 0xc4
 8002cce:	0052      	lsls	r2, r2, #1
 8002cd0:	4690      	mov	r8, r2
 8002cd2:	4480      	add	r8, r0
 8002cd4:	4642      	mov	r2, r8
 8002cd6:	3987      	subs	r1, #135	; 0x87
 8002cd8:	4099      	lsls	r1, r3
 8002cda:	6812      	ldr	r2, [r2, #0]
 8002cdc:	468a      	mov	sl, r1
 8002cde:	430a      	orrs	r2, r1
 8002ce0:	4694      	mov	ip, r2
 8002ce2:	4642      	mov	r2, r8
 8002ce4:	4661      	mov	r1, ip
 8002ce6:	6011      	str	r1, [r2, #0]
 8002ce8:	2284      	movs	r2, #132	; 0x84
 8002cea:	4649      	mov	r1, r9
 8002cec:	465f      	mov	r7, fp
 8002cee:	0052      	lsls	r2, r2, #1
 8002cf0:	508f      	str	r7, [r1, r2]
 8002cf2:	2d02      	cmp	r5, #2
 8002cf4:	d1c1      	bne.n	8002c7a <__register_exitproc+0x2e>
 8002cf6:	1c02      	adds	r2, r0, #0
 8002cf8:	4655      	mov	r5, sl
 8002cfa:	328d      	adds	r2, #141	; 0x8d
 8002cfc:	32ff      	adds	r2, #255	; 0xff
 8002cfe:	6811      	ldr	r1, [r2, #0]
 8002d00:	430d      	orrs	r5, r1
 8002d02:	6015      	str	r5, [r2, #0]
 8002d04:	e7b9      	b.n	8002c7a <__register_exitproc+0x2e>
 8002d06:	1c20      	adds	r0, r4, #0
 8002d08:	304d      	adds	r0, #77	; 0x4d
 8002d0a:	30ff      	adds	r0, #255	; 0xff
 8002d0c:	50e0      	str	r0, [r4, r3]
 8002d0e:	e7ae      	b.n	8002c6e <__register_exitproc+0x22>
 8002d10:	2001      	movs	r0, #1
 8002d12:	4240      	negs	r0, r0
 8002d14:	e7b6      	b.n	8002c84 <__register_exitproc+0x38>
 8002d16:	46c0      	nop			; (mov r8, r8)
 8002d18:	08002ef8 	.word	0x08002ef8
 8002d1c:	00000000 	.word	0x00000000

08002d20 <register_fini>:
 8002d20:	b508      	push	{r3, lr}
 8002d22:	4b03      	ldr	r3, [pc, #12]	; (8002d30 <register_fini+0x10>)
 8002d24:	2b00      	cmp	r3, #0
 8002d26:	d002      	beq.n	8002d2e <register_fini+0xe>
 8002d28:	4802      	ldr	r0, [pc, #8]	; (8002d34 <register_fini+0x14>)
 8002d2a:	f7ff fec5 	bl	8002ab8 <atexit>
 8002d2e:	bd08      	pop	{r3, pc}
 8002d30:	00000000 	.word	0x00000000
 8002d34:	08002ac9 	.word	0x08002ac9

08002d38 <_init>:
 8002d38:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002d3a:	46c0      	nop			; (mov r8, r8)
 8002d3c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002d3e:	bc08      	pop	{r3}
 8002d40:	469e      	mov	lr, r3
 8002d42:	4770      	bx	lr

08002d44 <_fini>:
 8002d44:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002d46:	46c0      	nop			; (mov r8, r8)
 8002d48:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002d4a:	bc08      	pop	{r3}
 8002d4c:	469e      	mov	lr, r3
 8002d4e:	4770      	bx	lr
