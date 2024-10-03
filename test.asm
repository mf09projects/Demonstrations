
test.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <__isr_vector>:
       0:	20002000 	.word	0x20002000
       4:	000001c9 	.word	0x000001c9
       8:	00000205 	.word	0x00000205
       c:	00000205 	.word	0x00000205
      10:	00000205 	.word	0x00000205
      14:	00000205 	.word	0x00000205
      18:	00000205 	.word	0x00000205
	...
      2c:	00000205 	.word	0x00000205
      30:	00000205 	.word	0x00000205
      34:	00000000 	.word	0x00000000
      38:	00000205 	.word	0x00000205
      3c:	00000205 	.word	0x00000205
      40:	00000205 	.word	0x00000205

00000044 <deregister_tm_clones>:
      44:	4803      	ldr	r0, [pc, #12]	@ (54 <deregister_tm_clones+0x10>)
      46:	4b04      	ldr	r3, [pc, #16]	@ (58 <deregister_tm_clones+0x14>)
      48:	4283      	cmp	r3, r0
      4a:	d002      	beq.n	52 <deregister_tm_clones+0xe>
      4c:	4b03      	ldr	r3, [pc, #12]	@ (5c <deregister_tm_clones+0x18>)
      4e:	b103      	cbz	r3, 52 <deregister_tm_clones+0xe>
      50:	4718      	bx	r3
      52:	4770      	bx	lr
      54:	20000300 	.word	0x20000300
      58:	20000300 	.word	0x20000300
      5c:	00000000 	.word	0x00000000

00000060 <register_tm_clones>:
      60:	4805      	ldr	r0, [pc, #20]	@ (78 <register_tm_clones+0x18>)
      62:	4b06      	ldr	r3, [pc, #24]	@ (7c <register_tm_clones+0x1c>)
      64:	1a1b      	subs	r3, r3, r0
      66:	0fd9      	lsrs	r1, r3, #31
      68:	eb01 01a3 	add.w	r1, r1, r3, asr #2
      6c:	1049      	asrs	r1, r1, #1
      6e:	d002      	beq.n	76 <register_tm_clones+0x16>
      70:	4b03      	ldr	r3, [pc, #12]	@ (80 <register_tm_clones+0x20>)
      72:	b103      	cbz	r3, 76 <register_tm_clones+0x16>
      74:	4718      	bx	r3
      76:	4770      	bx	lr
      78:	20000300 	.word	0x20000300
      7c:	20000300 	.word	0x20000300
      80:	00000000 	.word	0x00000000

00000084 <__do_global_dtors_aux>:
      84:	b510      	push	{r4, lr}
      86:	4c06      	ldr	r4, [pc, #24]	@ (a0 <__do_global_dtors_aux+0x1c>)
      88:	7823      	ldrb	r3, [r4, #0]
      8a:	b943      	cbnz	r3, 9e <__do_global_dtors_aux+0x1a>
      8c:	f7ff ffda 	bl	44 <deregister_tm_clones>
      90:	4b04      	ldr	r3, [pc, #16]	@ (a4 <__do_global_dtors_aux+0x20>)
      92:	b113      	cbz	r3, 9a <__do_global_dtors_aux+0x16>
      94:	4804      	ldr	r0, [pc, #16]	@ (a8 <__do_global_dtors_aux+0x24>)
      96:	f3af 8000 	nop.w
      9a:	2301      	movs	r3, #1
      9c:	7023      	strb	r3, [r4, #0]
      9e:	bd10      	pop	{r4, pc}
      a0:	20000308 	.word	0x20000308
      a4:	00000000 	.word	0x00000000
      a8:	00001fd0 	.word	0x00001fd0

000000ac <frame_dummy>:
      ac:	b508      	push	{r3, lr}
      ae:	4b05      	ldr	r3, [pc, #20]	@ (c4 <frame_dummy+0x18>)
      b0:	b11b      	cbz	r3, ba <frame_dummy+0xe>
      b2:	4905      	ldr	r1, [pc, #20]	@ (c8 <frame_dummy+0x1c>)
      b4:	4805      	ldr	r0, [pc, #20]	@ (cc <frame_dummy+0x20>)
      b6:	f3af 8000 	nop.w
      ba:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
      be:	f7ff bfcf 	b.w	60 <register_tm_clones>
      c2:	bf00      	nop
      c4:	00000000 	.word	0x00000000
      c8:	2000030c 	.word	0x2000030c
      cc:	00001fd0 	.word	0x00001fd0

000000d0 <_stack_init>:
      d0:	2a00      	cmp	r2, #0
      d2:	d001      	beq.n	d8 <_stack_init+0x8>
      d4:	f502 7a80 	add.w	sl, r2, #256	@ 0x100
      d8:	4770      	bx	lr
      da:	bf00      	nop

000000dc <_mainCRTStartup>:
      dc:	2016      	movs	r0, #22
      de:	a131      	add	r1, pc, #196	@ (adr r1, 1a4 <_mainCRTStartup+0xc8>)
      e0:	beab      	bkpt	0x00ab
      e2:	4830      	ldr	r0, [pc, #192]	@ (1a4 <_mainCRTStartup+0xc8>)
      e4:	6841      	ldr	r1, [r0, #4]
      e6:	2900      	cmp	r1, #0
      e8:	d001      	beq.n	ee <_mainCRTStartup+0x12>
      ea:	4a36      	ldr	r2, [pc, #216]	@ (1c4 <_mainCRTStartup+0xe8>)
      ec:	6011      	str	r1, [r2, #0]
      ee:	6801      	ldr	r1, [r0, #0]
      f0:	2900      	cmp	r1, #0
      f2:	d101      	bne.n	f8 <_mainCRTStartup+0x1c>
      f4:	4932      	ldr	r1, [pc, #200]	@ (1c0 <_mainCRTStartup+0xe4>)
      f6:	6001      	str	r1, [r0, #0]
      f8:	6881      	ldr	r1, [r0, #8]
      fa:	68c2      	ldr	r2, [r0, #12]
      fc:	4b2a      	ldr	r3, [pc, #168]	@ (1a8 <_mainCRTStartup+0xcc>)
      fe:	2900      	cmp	r1, #0
     100:	d000      	beq.n	104 <_mainCRTStartup+0x28>
     102:	460b      	mov	r3, r1
     104:	469d      	mov	sp, r3
     106:	f7ff ffe3 	bl	d0 <_stack_init>
     10a:	2100      	movs	r1, #0
     10c:	468b      	mov	fp, r1
     10e:	460f      	mov	r7, r1
     110:	4826      	ldr	r0, [pc, #152]	@ (1ac <_mainCRTStartup+0xd0>)
     112:	4a27      	ldr	r2, [pc, #156]	@ (1b0 <_mainCRTStartup+0xd4>)
     114:	1a12      	subs	r2, r2, r0
     116:	f001 f84d 	bl	11b4 <memset>
     11a:	f001 fdb9 	bl	1c90 <initialise_monitor_handles>
     11e:	2015      	movs	r0, #21
     120:	4926      	ldr	r1, [pc, #152]	@ (1bc <_mainCRTStartup+0xe0>)
     122:	beab      	bkpt	0x00ab
     124:	4925      	ldr	r1, [pc, #148]	@ (1bc <_mainCRTStartup+0xe0>)
     126:	6809      	ldr	r1, [r1, #0]
     128:	2000      	movs	r0, #0
     12a:	b401      	push	{r0}
     12c:	780b      	ldrb	r3, [r1, #0]
     12e:	3101      	adds	r1, #1
     130:	2b00      	cmp	r3, #0
     132:	d015      	beq.n	160 <_mainCRTStartup+0x84>
     134:	2b20      	cmp	r3, #32
     136:	d0f9      	beq.n	12c <_mainCRTStartup+0x50>
     138:	2b22      	cmp	r3, #34	@ 0x22
     13a:	d001      	beq.n	140 <_mainCRTStartup+0x64>
     13c:	2b27      	cmp	r3, #39	@ 0x27
     13e:	d101      	bne.n	144 <_mainCRTStartup+0x68>
     140:	001a      	movs	r2, r3
     142:	e001      	b.n	148 <_mainCRTStartup+0x6c>
     144:	2220      	movs	r2, #32
     146:	3901      	subs	r1, #1
     148:	b402      	push	{r1}
     14a:	3001      	adds	r0, #1
     14c:	780b      	ldrb	r3, [r1, #0]
     14e:	3101      	adds	r1, #1
     150:	2b00      	cmp	r3, #0
     152:	d005      	beq.n	160 <_mainCRTStartup+0x84>
     154:	429a      	cmp	r2, r3
     156:	d1f9      	bne.n	14c <_mainCRTStartup+0x70>
     158:	2200      	movs	r2, #0
     15a:	1e4b      	subs	r3, r1, #1
     15c:	701a      	strb	r2, [r3, #0]
     15e:	e7e5      	b.n	12c <_mainCRTStartup+0x50>
     160:	4669      	mov	r1, sp
     162:	0002      	movs	r2, r0
     164:	0092      	lsls	r2, r2, #2
     166:	446a      	add	r2, sp
     168:	466b      	mov	r3, sp
     16a:	429a      	cmp	r2, r3
     16c:	d906      	bls.n	17c <_mainCRTStartup+0xa0>
     16e:	3a04      	subs	r2, #4
     170:	6814      	ldr	r4, [r2, #0]
     172:	681d      	ldr	r5, [r3, #0]
     174:	6015      	str	r5, [r2, #0]
     176:	601c      	str	r4, [r3, #0]
     178:	3304      	adds	r3, #4
     17a:	e7f6      	b.n	16a <_mainCRTStartup+0x8e>
     17c:	466c      	mov	r4, sp
     17e:	2507      	movs	r5, #7
     180:	43ac      	bics	r4, r5
     182:	46a5      	mov	sp, r4
     184:	0004      	movs	r4, r0
     186:	000d      	movs	r5, r1
     188:	480a      	ldr	r0, [pc, #40]	@ (1b4 <_mainCRTStartup+0xd8>)
     18a:	2800      	cmp	r0, #0
     18c:	d002      	beq.n	194 <_mainCRTStartup+0xb8>
     18e:	480a      	ldr	r0, [pc, #40]	@ (1b8 <_mainCRTStartup+0xdc>)
     190:	f3af 8000 	nop.w
     194:	f001 f8c2 	bl	131c <__libc_init_array>
     198:	0020      	movs	r0, r4
     19a:	0029      	movs	r1, r5
     19c:	f000 f96c 	bl	478 <main>
     1a0:	f000 fbf8 	bl	994 <exit>
     1a4:	20000004 	.word	0x20000004
     1a8:	20002000 	.word	0x20002000
     1ac:	20000308 	.word	0x20000308
     1b0:	200005f0 	.word	0x200005f0
	...
     1bc:	20000114 	.word	0x20000114
     1c0:	200005f0 	.word	0x200005f0
     1c4:	200002ec 	.word	0x200002ec

000001c8 <Reset_Handler>:
 *    __data_start__: VMA of start of the section to copy to
 *    __data_end__: VMA of end of the section to copy to
 *
 *  All addresses must be aligned to 4 bytes boundary.
 */
	ldr	r1, =__etext
     1c8:	4909      	ldr	r1, [pc, #36]	@ (1f0 <Reset_Handler+0x28>)
	ldr	r2, =__data_start__
     1ca:	4a0a      	ldr	r2, [pc, #40]	@ (1f4 <Reset_Handler+0x2c>)
	ldr	r3, =__data_end__
     1cc:	4b0a      	ldr	r3, [pc, #40]	@ (1f8 <Reset_Handler+0x30>)

.L_loop1:
	cmp	r2, r3
     1ce:	429a      	cmp	r2, r3
	ittt	lt
     1d0:	bfbe      	ittt	lt
	ldrlt	r0, [r1], #4
     1d2:	f851 0b04 	ldrlt.w	r0, [r1], #4
	strlt	r0, [r2], #4
     1d6:	f842 0b04 	strlt.w	r0, [r2], #4
	blt	.L_loop1
     1da:	e7f8      	blt.n	1ce <Reset_Handler+0x6>
 *    __bss_start__: start of the BSS section.
 *    __bss_end__: end of the BSS section.
 *
 *  Both addresses must be aligned to 4 bytes boundary.
 */
	ldr	r1, =__bss_start__
     1dc:	4907      	ldr	r1, [pc, #28]	@ (1fc <Reset_Handler+0x34>)
	ldr	r2, =__bss_end__
     1de:	4a08      	ldr	r2, [pc, #32]	@ (200 <Reset_Handler+0x38>)

	movs	r0, 0
     1e0:	2000      	movs	r0, #0
.L_loop3:
	cmp	r1, r2
     1e2:	4291      	cmp	r1, r2
	itt	lt
     1e4:	bfbc      	itt	lt
	strlt	r0, [r1], #4
     1e6:	f841 0b04 	strlt.w	r0, [r1], #4
	blt	.L_loop3
     1ea:	e7fa      	blt.n	1e2 <Reset_Handler+0x1a>
#endif

#ifndef __START
#define __START _start
#endif
	bl	__START
     1ec:	f7ff ff76 	bl	dc <_mainCRTStartup>
	ldr	r1, =__etext
     1f0:	00002004 	.word	0x00002004
	ldr	r2, =__data_start__
     1f4:	20000000 	.word	0x20000000
	ldr	r3, =__data_end__
     1f8:	20000308 	.word	0x20000308
	ldr	r1, =__bss_start__
     1fc:	20000308 	.word	0x20000308
	ldr	r2, =__bss_end__
     200:	200005f0 	.word	0x200005f0

00000204 <BusFault_Handler>:
	.align	1
	.thumb_func
	.weak	Default_Handler
	.type	Default_Handler, %function
Default_Handler:
	b	.
     204:	e7fe      	b.n	204 <BusFault_Handler>
     206:	bf00      	nop

00000208 <encode>:
static const unsigned char a = 'a';

static inline unsigned char *
encode (unsigned char c, unsigned char buf[2])
{
     208:	b4b0      	push	{r4, r5, r7}
     20a:	b083      	sub	sp, #12
     20c:	af00      	add	r7, sp, #0
     20e:	4603      	mov	r3, r0
     210:	6039      	str	r1, [r7, #0]
     212:	71fb      	strb	r3, [r7, #7]
     214:	4b11      	ldr	r3, [pc, #68]	@ (25c <encode+0x54>)
     216:	e9d3 2300 	ldrd	r2, r3, [r3]
     21a:	1c54      	adds	r4, r2, #1
     21c:	f143 0500 	adc.w	r5, r3, #0
     220:	4b0e      	ldr	r3, [pc, #56]	@ (25c <encode+0x54>)
     222:	e9c3 4500 	strd	r4, r5, [r3]
  buf[0] = c % 16 + a;
     226:	79fb      	ldrb	r3, [r7, #7]
     228:	f003 030f 	and.w	r3, r3, #15
     22c:	b2db      	uxtb	r3, r3
     22e:	2261      	movs	r2, #97	@ 0x61
     230:	4413      	add	r3, r2
     232:	b2da      	uxtb	r2, r3
     234:	683b      	ldr	r3, [r7, #0]
     236:	701a      	strb	r2, [r3, #0]
  buf[1] = (c / 16) % 16 + a;
     238:	79fb      	ldrb	r3, [r7, #7]
     23a:	091b      	lsrs	r3, r3, #4
     23c:	b2db      	uxtb	r3, r3
     23e:	f003 030f 	and.w	r3, r3, #15
     242:	b2da      	uxtb	r2, r3
     244:	2161      	movs	r1, #97	@ 0x61
     246:	683b      	ldr	r3, [r7, #0]
     248:	3301      	adds	r3, #1
     24a:	440a      	add	r2, r1
     24c:	b2d2      	uxtb	r2, r2
     24e:	701a      	strb	r2, [r3, #0]
  return buf;
     250:	683b      	ldr	r3, [r7, #0]
}
     252:	4618      	mov	r0, r3
     254:	370c      	adds	r7, #12
     256:	46bd      	mov	sp, r7
     258:	bcb0      	pop	{r4, r5, r7}
     25a:	4770      	bx	lr
     25c:	200003a0 	.word	0x200003a0

00000260 <__gcov_filename_to_gcfn>:
#include <stdlib.h>

void __gcov_filename_to_gcfn(const char *filename,
			 void (*dump_fn) (const void *, unsigned, void *),
			 void *arg)
{
     260:	b4b0      	push	{r4, r5, r7}
     262:	b085      	sub	sp, #20
     264:	af00      	add	r7, sp, #0
     266:	60f8      	str	r0, [r7, #12]
     268:	60b9      	str	r1, [r7, #8]
     26a:	607a      	str	r2, [r7, #4]
     26c:	4b06      	ldr	r3, [pc, #24]	@ (288 <__gcov_filename_to_gcfn+0x28>)
     26e:	e9d3 2300 	ldrd	r2, r3, [r3]
     272:	1c54      	adds	r4, r2, #1
     274:	f143 0500 	adc.w	r5, r3, #0
     278:	4b03      	ldr	r3, [pc, #12]	@ (288 <__gcov_filename_to_gcfn+0x28>)
     27a:	e9c3 4500 	strd	r4, r5, [r3]
}
     27e:	bf00      	nop
     280:	3714      	adds	r7, #20
     282:	46bd      	mov	sp, r7
     284:	bcb0      	pop	{r4, r5, r7}
     286:	4770      	bx	lr
     288:	20000398 	.word	0x20000398

0000028c <dump>:
/* This function shall produce a reliable in order byte stream to transfer the
   gcov information from the target to the host system.  */

static void
dump (const void *d, unsigned n, void *arg)
{
     28c:	e92d 4fb0 	stmdb	sp!, {r4, r5, r7, r8, r9, sl, fp, lr}
     290:	b08a      	sub	sp, #40	@ 0x28
     292:	af00      	add	r7, sp, #0
     294:	6178      	str	r0, [r7, #20]
     296:	6139      	str	r1, [r7, #16]
     298:	60fa      	str	r2, [r7, #12]
     29a:	4b26      	ldr	r3, [pc, #152]	@ (334 <dump+0xa8>)
     29c:	e9d3 2300 	ldrd	r2, r3, [r3]
     2a0:	1c51      	adds	r1, r2, #1
     2a2:	6039      	str	r1, [r7, #0]
     2a4:	f143 0300 	adc.w	r3, r3, #0
     2a8:	607b      	str	r3, [r7, #4]
     2aa:	4b22      	ldr	r3, [pc, #136]	@ (334 <dump+0xa8>)
     2ac:	e9d7 1200 	ldrd	r1, r2, [r7]
     2b0:	e9c3 1200 	strd	r1, r2, [r3]
  (void)arg;
  const unsigned char *c = d;
     2b4:	697b      	ldr	r3, [r7, #20]
     2b6:	623b      	str	r3, [r7, #32]
  unsigned char buf[2];

  for (unsigned i = 0; i < n; ++i)
     2b8:	2300      	movs	r3, #0
     2ba:	627b      	str	r3, [r7, #36]	@ 0x24
     2bc:	e027      	b.n	30e <dump+0x82>
     2be:	4b1d      	ldr	r3, [pc, #116]	@ (334 <dump+0xa8>)
     2c0:	e9d3 2304 	ldrd	r2, r3, [r3, #16]
     2c4:	f112 0a01 	adds.w	sl, r2, #1
     2c8:	f143 0b00 	adc.w	fp, r3, #0
     2cc:	4b19      	ldr	r3, [pc, #100]	@ (334 <dump+0xa8>)
     2ce:	e9c3 ab04 	strd	sl, fp, [r3, #16]
    fwrite (encode (c[i], buf), sizeof (buf), 1, stderr);
     2d2:	6a3a      	ldr	r2, [r7, #32]
     2d4:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
     2d6:	4413      	add	r3, r2
     2d8:	781b      	ldrb	r3, [r3, #0]
     2da:	f107 021c 	add.w	r2, r7, #28
     2de:	4611      	mov	r1, r2
     2e0:	4618      	mov	r0, r3
     2e2:	f7ff ff91 	bl	208 <encode>
     2e6:	4b13      	ldr	r3, [pc, #76]	@ (334 <dump+0xa8>)
     2e8:	e9d3 2302 	ldrd	r2, r3, [r3, #8]
     2ec:	f112 0801 	adds.w	r8, r2, #1
     2f0:	f143 0900 	adc.w	r9, r3, #0
     2f4:	4b0f      	ldr	r3, [pc, #60]	@ (334 <dump+0xa8>)
     2f6:	e9c3 8902 	strd	r8, r9, [r3, #8]
     2fa:	4b0f      	ldr	r3, [pc, #60]	@ (338 <dump+0xac>)
     2fc:	681b      	ldr	r3, [r3, #0]
     2fe:	68db      	ldr	r3, [r3, #12]
     300:	2201      	movs	r2, #1
     302:	2102      	movs	r1, #2
     304:	f000 fe0a 	bl	f1c <fwrite>
  for (unsigned i = 0; i < n; ++i)
     308:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
     30a:	3301      	adds	r3, #1
     30c:	627b      	str	r3, [r7, #36]	@ 0x24
     30e:	6a7a      	ldr	r2, [r7, #36]	@ 0x24
     310:	693b      	ldr	r3, [r7, #16]
     312:	429a      	cmp	r2, r3
     314:	d3d3      	bcc.n	2be <dump+0x32>
     316:	4b07      	ldr	r3, [pc, #28]	@ (334 <dump+0xa8>)
     318:	e9d3 2306 	ldrd	r2, r3, [r3, #24]
     31c:	1c54      	adds	r4, r2, #1
     31e:	f143 0500 	adc.w	r5, r3, #0
     322:	4b04      	ldr	r3, [pc, #16]	@ (334 <dump+0xa8>)
     324:	e9c3 4506 	strd	r4, r5, [r3, #24]
}
     328:	bf00      	nop
     32a:	3728      	adds	r7, #40	@ 0x28
     32c:	46bd      	mov	sp, r7
     32e:	e8bd 8fb0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, sl, fp, pc}
     332:	bf00      	nop
     334:	20000378 	.word	0x20000378
     338:	2000029c 	.word	0x2000029c

0000033c <filename>:
   "merge-stream" subcommand of the "gcov-tool" to figure out the filename
   associated with the gcov information. */

static void
filename (const char *f, void *arg)
{
     33c:	e92d 43b0 	stmdb	sp!, {r4, r5, r7, r8, r9, lr}
     340:	b082      	sub	sp, #8
     342:	af00      	add	r7, sp, #0
     344:	6078      	str	r0, [r7, #4]
     346:	6039      	str	r1, [r7, #0]
     348:	4b0e      	ldr	r3, [pc, #56]	@ (384 <filename+0x48>)
     34a:	e9d3 2300 	ldrd	r2, r3, [r3]
     34e:	f112 0801 	adds.w	r8, r2, #1
     352:	f143 0900 	adc.w	r9, r3, #0
     356:	4b0b      	ldr	r3, [pc, #44]	@ (384 <filename+0x48>)
     358:	e9c3 8900 	strd	r8, r9, [r3]
  __gcov_filename_to_gcfn (f, dump, arg);
     35c:	683a      	ldr	r2, [r7, #0]
     35e:	490a      	ldr	r1, [pc, #40]	@ (388 <filename+0x4c>)
     360:	6878      	ldr	r0, [r7, #4]
     362:	f7ff ff7d 	bl	260 <__gcov_filename_to_gcfn>
     366:	4b07      	ldr	r3, [pc, #28]	@ (384 <filename+0x48>)
     368:	e9d3 2302 	ldrd	r2, r3, [r3, #8]
     36c:	1c54      	adds	r4, r2, #1
     36e:	f143 0500 	adc.w	r5, r3, #0
     372:	4b04      	ldr	r3, [pc, #16]	@ (384 <filename+0x48>)
     374:	e9c3 4502 	strd	r4, r5, [r3, #8]
}
     378:	bf00      	nop
     37a:	3708      	adds	r7, #8
     37c:	46bd      	mov	sp, r7
     37e:	e8bd 83b0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, pc}
     382:	bf00      	nop
     384:	20000368 	.word	0x20000368
     388:	0000028d 	.word	0x0000028d

0000038c <allocate>:
   certain conditions.  Simply try it out if it is needed for your application
   or not.  */

static void *
allocate (unsigned length, void *arg)
{
     38c:	b5b0      	push	{r4, r5, r7, lr}
     38e:	b082      	sub	sp, #8
     390:	af00      	add	r7, sp, #0
     392:	6078      	str	r0, [r7, #4]
     394:	6039      	str	r1, [r7, #0]
     396:	4b08      	ldr	r3, [pc, #32]	@ (3b8 <allocate+0x2c>)
     398:	e9d3 2300 	ldrd	r2, r3, [r3]
     39c:	1c54      	adds	r4, r2, #1
     39e:	f143 0500 	adc.w	r5, r3, #0
     3a2:	4b05      	ldr	r3, [pc, #20]	@ (3b8 <allocate+0x2c>)
     3a4:	e9c3 4500 	strd	r4, r5, [r3]
  (void)arg;
  return malloc (length);
     3a8:	6878      	ldr	r0, [r7, #4]
     3aa:	f000 fb05 	bl	9b8 <malloc>
     3ae:	4603      	mov	r3, r0
}
     3b0:	4618      	mov	r0, r3
     3b2:	3708      	adds	r7, #8
     3b4:	46bd      	mov	sp, r7
     3b6:	bdb0      	pop	{r4, r5, r7, pc}
     3b8:	20000360 	.word	0x20000360

000003bc <dump_gcov_info>:

/* Dump the gcov information of all translation units.  */

static void
dump_gcov_info (void)
{
     3bc:	e92d 4fb0 	stmdb	sp!, {r4, r5, r7, r8, r9, sl, fp, lr}
     3c0:	b086      	sub	sp, #24
     3c2:	af02      	add	r7, sp, #8
     3c4:	4b25      	ldr	r3, [pc, #148]	@ (45c <dump_gcov_info+0xa0>)
     3c6:	e9d3 2300 	ldrd	r2, r3, [r3]
     3ca:	1c50      	adds	r0, r2, #1
     3cc:	f143 0100 	adc.w	r1, r3, #0
     3d0:	4b22      	ldr	r3, [pc, #136]	@ (45c <dump_gcov_info+0xa0>)
     3d2:	e9c3 0100 	strd	r0, r1, [r3]
  const struct gcov_info *const *info = __gcov_info_start;
     3d6:	4b22      	ldr	r3, [pc, #136]	@ (460 <dump_gcov_info+0xa4>)
     3d8:	60fb      	str	r3, [r7, #12]
  const struct gcov_info *const *end = __gcov_info_end;
     3da:	4b22      	ldr	r3, [pc, #136]	@ (464 <dump_gcov_info+0xa8>)
     3dc:	60bb      	str	r3, [r7, #8]

  /* Obfuscate variable to prevent compiler optimizations.  */
  __asm__ ("" : "+r" (info));
     3de:	68fb      	ldr	r3, [r7, #12]
     3e0:	60fb      	str	r3, [r7, #12]

  while (info != end)
     3e2:	e028      	b.n	436 <dump_gcov_info+0x7a>
     3e4:	4b1d      	ldr	r3, [pc, #116]	@ (45c <dump_gcov_info+0xa0>)
     3e6:	e9d3 2304 	ldrd	r2, r3, [r3, #16]
     3ea:	f112 0a01 	adds.w	sl, r2, #1
     3ee:	f143 0b00 	adc.w	fp, r3, #0
     3f2:	4b1a      	ldr	r3, [pc, #104]	@ (45c <dump_gcov_info+0xa0>)
     3f4:	e9c3 ab04 	strd	sl, fp, [r3, #16]
  {
    void *arg = NULL;
     3f8:	2300      	movs	r3, #0
     3fa:	607b      	str	r3, [r7, #4]
    __gcov_info_to_gcda (*info, filename, dump, allocate, arg);
     3fc:	68fb      	ldr	r3, [r7, #12]
     3fe:	6818      	ldr	r0, [r3, #0]
     400:	687b      	ldr	r3, [r7, #4]
     402:	9300      	str	r3, [sp, #0]
     404:	4b18      	ldr	r3, [pc, #96]	@ (468 <dump_gcov_info+0xac>)
     406:	4a19      	ldr	r2, [pc, #100]	@ (46c <dump_gcov_info+0xb0>)
     408:	4919      	ldr	r1, [pc, #100]	@ (470 <dump_gcov_info+0xb4>)
     40a:	f000 fab1 	bl	970 <__gcov_info_to_gcda>
     40e:	4b13      	ldr	r3, [pc, #76]	@ (45c <dump_gcov_info+0xa0>)
     410:	e9d3 2302 	ldrd	r2, r3, [r3, #8]
     414:	f112 0801 	adds.w	r8, r2, #1
     418:	f143 0900 	adc.w	r9, r3, #0
     41c:	4b0f      	ldr	r3, [pc, #60]	@ (45c <dump_gcov_info+0xa0>)
     41e:	e9c3 8902 	strd	r8, r9, [r3, #8]
    fputc ('\n', stderr);
     422:	4b14      	ldr	r3, [pc, #80]	@ (474 <dump_gcov_info+0xb8>)
     424:	681b      	ldr	r3, [r3, #0]
     426:	68db      	ldr	r3, [r3, #12]
     428:	4619      	mov	r1, r3
     42a:	200a      	movs	r0, #10
     42c:	f000 fd04 	bl	e38 <fputc>
    ++info;
     430:	68fb      	ldr	r3, [r7, #12]
     432:	3304      	adds	r3, #4
     434:	60fb      	str	r3, [r7, #12]
  while (info != end)
     436:	68fa      	ldr	r2, [r7, #12]
     438:	68bb      	ldr	r3, [r7, #8]
     43a:	429a      	cmp	r2, r3
     43c:	d1d2      	bne.n	3e4 <dump_gcov_info+0x28>
     43e:	4b07      	ldr	r3, [pc, #28]	@ (45c <dump_gcov_info+0xa0>)
     440:	e9d3 2306 	ldrd	r2, r3, [r3, #24]
     444:	1c54      	adds	r4, r2, #1
     446:	f143 0500 	adc.w	r5, r3, #0
     44a:	4b04      	ldr	r3, [pc, #16]	@ (45c <dump_gcov_info+0xa0>)
     44c:	e9c3 4506 	strd	r4, r5, [r3, #24]
  }
}
     450:	bf00      	nop
     452:	3710      	adds	r7, #16
     454:	46bd      	mov	sp, r7
     456:	e8bd 8fb0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, sl, fp, pc}
     45a:	bf00      	nop
     45c:	20000340 	.word	0x20000340
     460:	20000300 	.word	0x20000300
     464:	20000308 	.word	0x20000308
     468:	0000038d 	.word	0x0000038d
     46c:	0000028d 	.word	0x0000028d
     470:	0000033d 	.word	0x0000033d
     474:	2000029c 	.word	0x2000029c

00000478 <main>:
/* The main() function just runs the application and then dumps the gcov
   information to stderr.  */

int
main (void)
{
     478:	e92d 43b0 	stmdb	sp!, {r4, r5, r7, r8, r9, lr}
     47c:	af00      	add	r7, sp, #0
     47e:	4b12      	ldr	r3, [pc, #72]	@ (4c8 <main+0x50>)
     480:	e9d3 2300 	ldrd	r2, r3, [r3]
     484:	1c50      	adds	r0, r2, #1
     486:	f143 0100 	adc.w	r1, r3, #0
     48a:	4b0f      	ldr	r3, [pc, #60]	@ (4c8 <main+0x50>)
     48c:	e9c3 0100 	strd	r0, r1, [r3]
  application ();
     490:	f000 f83a 	bl	508 <application>
     494:	4b0c      	ldr	r3, [pc, #48]	@ (4c8 <main+0x50>)
     496:	e9d3 2302 	ldrd	r2, r3, [r3, #8]
     49a:	f112 0801 	adds.w	r8, r2, #1
     49e:	f143 0900 	adc.w	r9, r3, #0
     4a2:	4b09      	ldr	r3, [pc, #36]	@ (4c8 <main+0x50>)
     4a4:	e9c3 8902 	strd	r8, r9, [r3, #8]
  dump_gcov_info ();
     4a8:	f7ff ff88 	bl	3bc <dump_gcov_info>
  return 0;
     4ac:	2100      	movs	r1, #0
     4ae:	4b06      	ldr	r3, [pc, #24]	@ (4c8 <main+0x50>)
     4b0:	e9d3 2304 	ldrd	r2, r3, [r3, #16]
     4b4:	1c54      	adds	r4, r2, #1
     4b6:	f143 0500 	adc.w	r5, r3, #0
     4ba:	4b03      	ldr	r3, [pc, #12]	@ (4c8 <main+0x50>)
     4bc:	e9c3 4504 	strd	r4, r5, [r3, #16]
     4c0:	460b      	mov	r3, r1
     4c2:	4618      	mov	r0, r3
     4c4:	e8bd 83b0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, pc}
     4c8:	20000328 	.word	0x20000328

000004cc <can_decode>:
/* The application reads a character stream encoded by encode() from stdin,
   decodes it, and writes the decoded characters to stdout.  Characters other
   than the 16 characters 'a' to 'p' are ignored.  */

static int can_decode (unsigned char c)
{
     4cc:	b4b0      	push	{r4, r5, r7}
     4ce:	b083      	sub	sp, #12
     4d0:	af00      	add	r7, sp, #0
     4d2:	4603      	mov	r3, r0
     4d4:	71fb      	strb	r3, [r7, #7]
     4d6:	4b0b      	ldr	r3, [pc, #44]	@ (504 <can_decode+0x38>)
     4d8:	e9d3 2300 	ldrd	r2, r3, [r3]
     4dc:	1c54      	adds	r4, r2, #1
     4de:	f143 0500 	adc.w	r5, r3, #0
     4e2:	4b08      	ldr	r3, [pc, #32]	@ (504 <can_decode+0x38>)
     4e4:	e9c3 4500 	strd	r4, r5, [r3]
  return (unsigned char)(c - a) < 16;
     4e8:	2261      	movs	r2, #97	@ 0x61
     4ea:	79fb      	ldrb	r3, [r7, #7]
     4ec:	1a9b      	subs	r3, r3, r2
     4ee:	b2db      	uxtb	r3, r3
     4f0:	2b0f      	cmp	r3, #15
     4f2:	bf94      	ite	ls
     4f4:	2301      	movls	r3, #1
     4f6:	2300      	movhi	r3, #0
     4f8:	b2db      	uxtb	r3, r3
}
     4fa:	4618      	mov	r0, r3
     4fc:	370c      	adds	r7, #12
     4fe:	46bd      	mov	sp, r7
     500:	bcb0      	pop	{r4, r5, r7}
     502:	4770      	bx	lr
     504:	200003e0 	.word	0x200003e0

00000508 <application>:

void
application (void)
{
     508:	e92d 4fb0 	stmdb	sp!, {r4, r5, r7, r8, r9, sl, fp, lr}
     50c:	b08a      	sub	sp, #40	@ 0x28
     50e:	af00      	add	r7, sp, #0
     510:	4b45      	ldr	r3, [pc, #276]	@ (628 <application+0x120>)
     512:	e9d3 2300 	ldrd	r2, r3, [r3]
     516:	1c50      	adds	r0, r2, #1
     518:	f143 0100 	adc.w	r1, r3, #0
     51c:	4b42      	ldr	r3, [pc, #264]	@ (628 <application+0x120>)
     51e:	e9c3 0100 	strd	r0, r1, [r3]
  int first = 1;
     522:	2301      	movs	r3, #1
     524:	627b      	str	r3, [r7, #36]	@ 0x24
  int i;
  unsigned char c;

  while ((i = fgetc (stdin)) != EOF)
     526:	e064      	b.n	5f2 <application+0xea>
     528:	4b3f      	ldr	r3, [pc, #252]	@ (628 <application+0x120>)
     52a:	e9d3 230c 	ldrd	r2, r3, [r3, #48]	@ 0x30
     52e:	1c51      	adds	r1, r2, #1
     530:	6039      	str	r1, [r7, #0]
     532:	f143 0300 	adc.w	r3, r3, #0
     536:	607b      	str	r3, [r7, #4]
     538:	4b3b      	ldr	r3, [pc, #236]	@ (628 <application+0x120>)
     53a:	e9d7 1200 	ldrd	r1, r2, [r7]
     53e:	e9c3 120c 	strd	r1, r2, [r3, #48]	@ 0x30
    {
      unsigned char x = (unsigned char)i;
     542:	69fb      	ldr	r3, [r7, #28]
     544:	76fb      	strb	r3, [r7, #27]

      if (can_decode (x))
     546:	7efb      	ldrb	r3, [r7, #27]
     548:	4618      	mov	r0, r3
     54a:	f7ff ffbf 	bl	4cc <can_decode>
     54e:	4601      	mov	r1, r0
     550:	4b35      	ldr	r3, [pc, #212]	@ (628 <application+0x120>)
     552:	e9d3 2302 	ldrd	r2, r3, [r3, #8]
     556:	f112 0801 	adds.w	r8, r2, #1
     55a:	f143 0900 	adc.w	r9, r3, #0
     55e:	4b32      	ldr	r3, [pc, #200]	@ (628 <application+0x120>)
     560:	e9c3 8902 	strd	r8, r9, [r3, #8]
     564:	2900      	cmp	r1, #0
     566:	d042      	beq.n	5ee <application+0xe6>
        {
          if (first)
     568:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
     56a:	2b00      	cmp	r3, #0
     56c:	d00f      	beq.n	58e <application+0x86>
     56e:	4b2e      	ldr	r3, [pc, #184]	@ (628 <application+0x120>)
     570:	e9d3 2304 	ldrd	r2, r3, [r3, #16]
     574:	f112 0a01 	adds.w	sl, r2, #1
     578:	f143 0b00 	adc.w	fp, r3, #0
     57c:	4b2a      	ldr	r3, [pc, #168]	@ (628 <application+0x120>)
     57e:	e9c3 ab04 	strd	sl, fp, [r3, #16]
            c = x - a;
     582:	2261      	movs	r2, #97	@ 0x61
     584:	7efb      	ldrb	r3, [r7, #27]
     586:	1a9b      	subs	r3, r3, r2
     588:	f887 3023 	strb.w	r3, [r7, #35]	@ 0x23
     58c:	e01a      	b.n	5c4 <application+0xbc>
     58e:	4b26      	ldr	r3, [pc, #152]	@ (628 <application+0x120>)
     590:	e9d3 2306 	ldrd	r2, r3, [r3, #24]
     594:	1c51      	adds	r1, r2, #1
     596:	6139      	str	r1, [r7, #16]
     598:	f143 0300 	adc.w	r3, r3, #0
     59c:	617b      	str	r3, [r7, #20]
     59e:	4b22      	ldr	r3, [pc, #136]	@ (628 <application+0x120>)
     5a0:	e9d7 1204 	ldrd	r1, r2, [r7, #16]
     5a4:	e9c3 1206 	strd	r1, r2, [r3, #24]
          else
            fputc (c + 16 * (x - a), stdout);
     5a8:	f897 1023 	ldrb.w	r1, [r7, #35]	@ 0x23
     5ac:	7efa      	ldrb	r2, [r7, #27]
     5ae:	2361      	movs	r3, #97	@ 0x61
     5b0:	1ad3      	subs	r3, r2, r3
     5b2:	011b      	lsls	r3, r3, #4
     5b4:	18ca      	adds	r2, r1, r3
     5b6:	4b1d      	ldr	r3, [pc, #116]	@ (62c <application+0x124>)
     5b8:	681b      	ldr	r3, [r3, #0]
     5ba:	689b      	ldr	r3, [r3, #8]
     5bc:	4619      	mov	r1, r3
     5be:	4610      	mov	r0, r2
     5c0:	f000 fc3a 	bl	e38 <fputc>
          first = !first;
     5c4:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
     5c6:	2b00      	cmp	r3, #0
     5c8:	bf0c      	ite	eq
     5ca:	2301      	moveq	r3, #1
     5cc:	2300      	movne	r3, #0
     5ce:	b2db      	uxtb	r3, r3
     5d0:	627b      	str	r3, [r7, #36]	@ 0x24
     5d2:	4b15      	ldr	r3, [pc, #84]	@ (628 <application+0x120>)
     5d4:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
     5d8:	1c51      	adds	r1, r2, #1
     5da:	60b9      	str	r1, [r7, #8]
     5dc:	f143 0300 	adc.w	r3, r3, #0
     5e0:	60fb      	str	r3, [r7, #12]
     5e2:	4b11      	ldr	r3, [pc, #68]	@ (628 <application+0x120>)
     5e4:	e9d7 1202 	ldrd	r1, r2, [r7, #8]
     5e8:	e9c3 1208 	strd	r1, r2, [r3, #32]
     5ec:	e001      	b.n	5f2 <application+0xea>
        }
      else
        first = 1;
     5ee:	2301      	movs	r3, #1
     5f0:	627b      	str	r3, [r7, #36]	@ 0x24
  while ((i = fgetc (stdin)) != EOF)
     5f2:	4b0e      	ldr	r3, [pc, #56]	@ (62c <application+0x124>)
     5f4:	681b      	ldr	r3, [r3, #0]
     5f6:	685b      	ldr	r3, [r3, #4]
     5f8:	4618      	mov	r0, r3
     5fa:	f000 fac7 	bl	b8c <fgetc>
     5fe:	61f8      	str	r0, [r7, #28]
     600:	4b09      	ldr	r3, [pc, #36]	@ (628 <application+0x120>)
     602:	e9d3 230a 	ldrd	r2, r3, [r3, #40]	@ 0x28
     606:	1c54      	adds	r4, r2, #1
     608:	f143 0500 	adc.w	r5, r3, #0
     60c:	4b06      	ldr	r3, [pc, #24]	@ (628 <application+0x120>)
     60e:	e9c3 450a 	strd	r4, r5, [r3, #40]	@ 0x28
     612:	69fb      	ldr	r3, [r7, #28]
     614:	f1b3 3fff 	cmp.w	r3, #4294967295
     618:	d186      	bne.n	528 <application+0x20>
    }
     61a:	bf00      	nop
     61c:	bf00      	nop
     61e:	3728      	adds	r7, #40	@ 0x28
     620:	46bd      	mov	sp, r7
     622:	e8bd 8fb0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, sl, fp, pc}
     626:	bf00      	nop
     628:	200003a8 	.word	0x200003a8
     62c:	2000029c 	.word	0x2000029c

00000630 <__gcov_merge_add>:
     630:	4770      	bx	lr
     632:	bf00      	nop

00000634 <are_all_counters_zero>:
     634:	b410      	push	{r4}
     636:	6804      	ldr	r4, [r0, #0]
     638:	b17c      	cbz	r4, 65a <are_all_counters_zero+0x26>
     63a:	6843      	ldr	r3, [r0, #4]
     63c:	2200      	movs	r2, #0
     63e:	3b08      	subs	r3, #8
     640:	e001      	b.n	646 <are_all_counters_zero+0x12>
     642:	42a2      	cmp	r2, r4
     644:	d009      	beq.n	65a <are_all_counters_zero+0x26>
     646:	f853 1f08 	ldr.w	r1, [r3, #8]!
     64a:	6858      	ldr	r0, [r3, #4]
     64c:	4301      	orrs	r1, r0
     64e:	f102 0201 	add.w	r2, r2, #1
     652:	d0f6      	beq.n	642 <are_all_counters_zero+0xe>
     654:	2000      	movs	r0, #0
     656:	bc10      	pop	{r4}
     658:	4770      	bx	lr
     65a:	2001      	movs	r0, #1
     65c:	bc10      	pop	{r4}
     65e:	4770      	bx	lr

00000660 <dump_unsigned>:
     660:	b500      	push	{lr}
     662:	b083      	sub	sp, #12
     664:	460b      	mov	r3, r1
     666:	9001      	str	r0, [sp, #4]
     668:	2104      	movs	r1, #4
     66a:	a801      	add	r0, sp, #4
     66c:	4798      	blx	r3
     66e:	b003      	add	sp, #12
     670:	f85d fb04 	ldr.w	pc, [sp], #4

00000674 <dump_counter>:
     674:	b570      	push	{r4, r5, r6, lr}
     676:	4614      	mov	r4, r2
     678:	461d      	mov	r5, r3
     67a:	460e      	mov	r6, r1
     67c:	461a      	mov	r2, r3
     67e:	4621      	mov	r1, r4
     680:	f7ff ffee 	bl	660 <dump_unsigned>
     684:	462a      	mov	r2, r5
     686:	4621      	mov	r1, r4
     688:	4630      	mov	r0, r6
     68a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
     68e:	f7ff bfe7 	b.w	660 <dump_unsigned>
     692:	bf00      	nop

00000694 <write_topn_counters>:
     694:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
     698:	461e      	mov	r6, r3
     69a:	4b59      	ldr	r3, [pc, #356]	@ (800 <write_topn_counters+0x16c>)
     69c:	4615      	mov	r5, r2
     69e:	fba3 2305 	umull	r2, r3, r3, r5
     6a2:	4683      	mov	fp, r0
     6a4:	f023 0001 	bic.w	r0, r3, #1
     6a8:	b083      	sub	sp, #12
     6aa:	eb00 0253 	add.w	r2, r0, r3, lsr #1
     6ae:	4295      	cmp	r5, r2
     6b0:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
     6b2:	9f0d      	ldr	r7, [sp, #52]	@ 0x34
     6b4:	f040 80a3 	bne.w	7fe <write_topn_counters+0x16a>
     6b8:	f8df 8148 	ldr.w	r8, [pc, #328]	@ 804 <write_topn_counters+0x170>
     6bc:	f8d8 2000 	ldr.w	r2, [r8]
     6c0:	4689      	mov	r9, r1
     6c2:	085b      	lsrs	r3, r3, #1
     6c4:	b152      	cbz	r2, 6dc <write_topn_counters+0x48>
     6c6:	4c50      	ldr	r4, [pc, #320]	@ (808 <write_topn_counters+0x174>)
     6c8:	6821      	ldr	r1, [r4, #0]
     6ca:	4299      	cmp	r1, r3
     6cc:	d214      	bcs.n	6f8 <write_topn_counters+0x64>
     6ce:	f5b0 5f80 	cmp.w	r0, #4096	@ 0x1000
     6d2:	bf38      	it	cc
     6d4:	f44f 5080 	movcc.w	r0, #4096	@ 0x1000
     6d8:	6020      	str	r0, [r4, #0]
     6da:	e011      	b.n	700 <write_topn_counters+0x6c>
     6dc:	f5b0 5f80 	cmp.w	r0, #4096	@ 0x1000
     6e0:	4a49      	ldr	r2, [pc, #292]	@ (808 <write_topn_counters+0x174>)
     6e2:	9300      	str	r3, [sp, #0]
     6e4:	bf38      	it	cc
     6e6:	f44f 5080 	movcc.w	r0, #4096	@ 0x1000
     6ea:	6010      	str	r0, [r2, #0]
     6ec:	4639      	mov	r1, r7
     6ee:	0080      	lsls	r0, r0, #2
     6f0:	47a0      	blx	r4
     6f2:	9b00      	ldr	r3, [sp, #0]
     6f4:	f8c8 0000 	str.w	r0, [r8]
     6f8:	2d02      	cmp	r5, #2
     6fa:	d96e      	bls.n	7da <write_topn_counters+0x146>
     6fc:	f8d8 2000 	ldr.w	r2, [r8]
     700:	f8db 1004 	ldr.w	r1, [fp, #4]
     704:	f1a2 0c04 	sub.w	ip, r2, #4
     708:	2200      	movs	r2, #0
     70a:	4696      	mov	lr, r2
     70c:	6908      	ldr	r0, [r1, #16]
     70e:	2800      	cmp	r0, #0
     710:	d061      	beq.n	7d6 <write_topn_counters+0x142>
     712:	2400      	movs	r4, #0
     714:	6900      	ldr	r0, [r0, #16]
     716:	3401      	adds	r4, #1
     718:	2800      	cmp	r0, #0
     71a:	d1fb      	bne.n	714 <write_topn_counters+0x80>
     71c:	44a6      	add	lr, r4
     71e:	3201      	adds	r2, #1
     720:	4293      	cmp	r3, r2
     722:	f84c 4f04 	str.w	r4, [ip, #4]!
     726:	f101 0118 	add.w	r1, r1, #24
     72a:	d8ef      	bhi.n	70c <write_topn_counters+0x78>
     72c:	ea4f 4049 	mov.w	r0, r9, lsl #17
     730:	f100 70d0 	add.w	r0, r0, #27262976	@ 0x1a00000
     734:	eb03 040e 	add.w	r4, r3, lr
     738:	f500 3080 	add.w	r0, r0, #65536	@ 0x10000
     73c:	463a      	mov	r2, r7
     73e:	4631      	mov	r1, r6
     740:	9301      	str	r3, [sp, #4]
     742:	f7ff ff8d 	bl	660 <dump_unsigned>
     746:	463a      	mov	r2, r7
     748:	4631      	mov	r1, r6
     74a:	0120      	lsls	r0, r4, #4
     74c:	f7ff ff88 	bl	660 <dump_unsigned>
     750:	2d02      	cmp	r5, #2
     752:	d93d      	bls.n	7d0 <write_topn_counters+0x13c>
     754:	2300      	movs	r3, #0
     756:	9300      	str	r3, [sp, #0]
     758:	4699      	mov	r9, r3
     75a:	9c00      	ldr	r4, [sp, #0]
     75c:	f8db 2004 	ldr.w	r2, [fp, #4]
     760:	4422      	add	r2, r4
     762:	e9d2 0100 	ldrd	r0, r1, [r2]
     766:	463b      	mov	r3, r7
     768:	4632      	mov	r2, r6
     76a:	f7ff ff83 	bl	674 <dump_counter>
     76e:	f8d8 2000 	ldr.w	r2, [r8]
     772:	463b      	mov	r3, r7
     774:	f852 0029 	ldr.w	r0, [r2, r9, lsl #2]
     778:	2100      	movs	r1, #0
     77a:	4632      	mov	r2, r6
     77c:	f7ff ff7a 	bl	674 <dump_counter>
     780:	f8db 3004 	ldr.w	r3, [fp, #4]
     784:	f8d8 2000 	ldr.w	r2, [r8]
     788:	4423      	add	r3, r4
     78a:	f852 1029 	ldr.w	r1, [r2, r9, lsl #2]
     78e:	691c      	ldr	r4, [r3, #16]
     790:	ea4f 0a89 	mov.w	sl, r9, lsl #2
     794:	2500      	movs	r5, #0
     796:	b199      	cbz	r1, 7c0 <write_topn_counters+0x12c>
     798:	e9d4 0100 	ldrd	r0, r1, [r4]
     79c:	463b      	mov	r3, r7
     79e:	4632      	mov	r2, r6
     7a0:	f7ff ff68 	bl	674 <dump_counter>
     7a4:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
     7a8:	463b      	mov	r3, r7
     7aa:	4632      	mov	r2, r6
     7ac:	f7ff ff62 	bl	674 <dump_counter>
     7b0:	f8d8 3000 	ldr.w	r3, [r8]
     7b4:	6924      	ldr	r4, [r4, #16]
     7b6:	f853 300a 	ldr.w	r3, [r3, sl]
     7ba:	3501      	adds	r5, #1
     7bc:	42ab      	cmp	r3, r5
     7be:	d8eb      	bhi.n	798 <write_topn_counters+0x104>
     7c0:	9b00      	ldr	r3, [sp, #0]
     7c2:	3318      	adds	r3, #24
     7c4:	9300      	str	r3, [sp, #0]
     7c6:	9b01      	ldr	r3, [sp, #4]
     7c8:	f109 0901 	add.w	r9, r9, #1
     7cc:	454b      	cmp	r3, r9
     7ce:	d8c4      	bhi.n	75a <write_topn_counters+0xc6>
     7d0:	b003      	add	sp, #12
     7d2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
     7d6:	4604      	mov	r4, r0
     7d8:	e7a1      	b.n	71e <write_topn_counters+0x8a>
     7da:	ea4f 4049 	mov.w	r0, r9, lsl #17
     7de:	f100 70d0 	add.w	r0, r0, #27262976	@ 0x1a00000
     7e2:	463a      	mov	r2, r7
     7e4:	4631      	mov	r1, r6
     7e6:	f500 3080 	add.w	r0, r0, #65536	@ 0x10000
     7ea:	f7ff ff39 	bl	660 <dump_unsigned>
     7ee:	463a      	mov	r2, r7
     7f0:	4631      	mov	r1, r6
     7f2:	2000      	movs	r0, #0
     7f4:	b003      	add	sp, #12
     7f6:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
     7fa:	f7ff bf31 	b.w	660 <dump_unsigned>
     7fe:	deff      	udf	#255	@ 0xff
     800:	aaaaaaab 	.word	0xaaaaaaab
     804:	200003ec 	.word	0x200003ec
     808:	200003e8 	.word	0x200003e8

0000080c <write_one_data.constprop.0>:
     80c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
     810:	b085      	sub	sp, #20
     812:	461f      	mov	r7, r3
     814:	4606      	mov	r6, r0
     816:	4688      	mov	r8, r1
     818:	4853      	ldr	r0, [pc, #332]	@ (968 <write_one_data.constprop.0+0x15c>)
     81a:	9203      	str	r2, [sp, #12]
     81c:	461a      	mov	r2, r3
     81e:	f7ff ff1f 	bl	660 <dump_unsigned>
     822:	4852      	ldr	r0, [pc, #328]	@ (96c <write_one_data.constprop.0+0x160>)
     824:	463a      	mov	r2, r7
     826:	4641      	mov	r1, r8
     828:	f7ff ff1a 	bl	660 <dump_unsigned>
     82c:	68b0      	ldr	r0, [r6, #8]
     82e:	463a      	mov	r2, r7
     830:	4641      	mov	r1, r8
     832:	f7ff ff15 	bl	660 <dump_unsigned>
     836:	68f0      	ldr	r0, [r6, #12]
     838:	463a      	mov	r2, r7
     83a:	4641      	mov	r1, r8
     83c:	f7ff ff10 	bl	660 <dump_unsigned>
     840:	6b73      	ldr	r3, [r6, #52]	@ 0x34
     842:	2b00      	cmp	r3, #0
     844:	d07b      	beq.n	93e <write_one_data.constprop.0+0x132>
     846:	f04f 0b00 	mov.w	fp, #0
     84a:	e00f      	b.n	86c <write_one_data.constprop.0+0x60>
     84c:	463a      	mov	r2, r7
     84e:	4641      	mov	r1, r8
     850:	f04f 7080 	mov.w	r0, #16777216	@ 0x1000000
     854:	f7ff ff04 	bl	660 <dump_unsigned>
     858:	463a      	mov	r2, r7
     85a:	4641      	mov	r1, r8
     85c:	2000      	movs	r0, #0
     85e:	f7ff feff 	bl	660 <dump_unsigned>
     862:	6b73      	ldr	r3, [r6, #52]	@ 0x34
     864:	f10b 0b01 	add.w	fp, fp, #1
     868:	459b      	cmp	fp, r3
     86a:	d068      	beq.n	93e <write_one_data.constprop.0+0x132>
     86c:	6bb3      	ldr	r3, [r6, #56]	@ 0x38
     86e:	f853 502b 	ldr.w	r5, [r3, fp, lsl #2]
     872:	2d00      	cmp	r5, #0
     874:	d0ea      	beq.n	84c <write_one_data.constprop.0+0x40>
     876:	682b      	ldr	r3, [r5, #0]
     878:	429e      	cmp	r6, r3
     87a:	d1e7      	bne.n	84c <write_one_data.constprop.0+0x40>
     87c:	f04f 7080 	mov.w	r0, #16777216	@ 0x1000000
     880:	463a      	mov	r2, r7
     882:	4641      	mov	r1, r8
     884:	f7ff feec 	bl	660 <dump_unsigned>
     888:	463a      	mov	r2, r7
     88a:	4641      	mov	r1, r8
     88c:	200c      	movs	r0, #12
     88e:	f7ff fee7 	bl	660 <dump_unsigned>
     892:	6868      	ldr	r0, [r5, #4]
     894:	463a      	mov	r2, r7
     896:	4641      	mov	r1, r8
     898:	f7ff fee2 	bl	660 <dump_unsigned>
     89c:	68a8      	ldr	r0, [r5, #8]
     89e:	463a      	mov	r2, r7
     8a0:	4641      	mov	r1, r8
     8a2:	f7ff fedd 	bl	660 <dump_unsigned>
     8a6:	68e8      	ldr	r0, [r5, #12]
     8a8:	463a      	mov	r2, r7
     8aa:	4641      	mov	r1, r8
     8ac:	f7ff fed8 	bl	660 <dump_unsigned>
     8b0:	3510      	adds	r5, #16
     8b2:	f106 0a10 	add.w	sl, r6, #16
     8b6:	f04f 0900 	mov.w	r9, #0
     8ba:	9602      	str	r6, [sp, #8]
     8bc:	e00c      	b.n	8d8 <write_one_data.constprop.0+0xcc>
     8be:	ebc6 7646 	rsb	r6, r6, r6, lsl #29
     8c2:	463a      	mov	r2, r7
     8c4:	4641      	mov	r1, r8
     8c6:	00f0      	lsls	r0, r6, #3
     8c8:	f7ff feca 	bl	660 <dump_unsigned>
     8cc:	3508      	adds	r5, #8
     8ce:	f109 0901 	add.w	r9, r9, #1
     8d2:	f1b9 0f08 	cmp.w	r9, #8
     8d6:	d02c      	beq.n	932 <write_one_data.constprop.0+0x126>
     8d8:	f85a 3f04 	ldr.w	r3, [sl, #4]!
     8dc:	2b00      	cmp	r3, #0
     8de:	d0f6      	beq.n	8ce <write_one_data.constprop.0+0xc2>
     8e0:	f1a9 0203 	sub.w	r2, r9, #3
     8e4:	2a01      	cmp	r2, #1
     8e6:	682e      	ldr	r6, [r5, #0]
     8e8:	d931      	bls.n	94e <write_one_data.constprop.0+0x142>
     8ea:	ea4f 4049 	mov.w	r0, r9, lsl #17
     8ee:	f100 70d0 	add.w	r0, r0, #27262976	@ 0x1a00000
     8f2:	463a      	mov	r2, r7
     8f4:	4641      	mov	r1, r8
     8f6:	f500 3080 	add.w	r0, r0, #65536	@ 0x10000
     8fa:	f7ff feb1 	bl	660 <dump_unsigned>
     8fe:	4628      	mov	r0, r5
     900:	f7ff fe98 	bl	634 <are_all_counters_zero>
     904:	4604      	mov	r4, r0
     906:	2800      	cmp	r0, #0
     908:	d1d9      	bne.n	8be <write_one_data.constprop.0+0xb2>
     90a:	463a      	mov	r2, r7
     90c:	4641      	mov	r1, r8
     90e:	00f0      	lsls	r0, r6, #3
     910:	f7ff fea6 	bl	660 <dump_unsigned>
     914:	2e00      	cmp	r6, #0
     916:	d0d9      	beq.n	8cc <write_one_data.constprop.0+0xc0>
     918:	686a      	ldr	r2, [r5, #4]
     91a:	eb02 01c4 	add.w	r1, r2, r4, lsl #3
     91e:	e9d1 0100 	ldrd	r0, r1, [r1]
     922:	463b      	mov	r3, r7
     924:	4642      	mov	r2, r8
     926:	3401      	adds	r4, #1
     928:	f7ff fea4 	bl	674 <dump_counter>
     92c:	42a6      	cmp	r6, r4
     92e:	d1f3      	bne.n	918 <write_one_data.constprop.0+0x10c>
     930:	e7cc      	b.n	8cc <write_one_data.constprop.0+0xc0>
     932:	9e02      	ldr	r6, [sp, #8]
     934:	6b73      	ldr	r3, [r6, #52]	@ 0x34
     936:	f10b 0b01 	add.w	fp, fp, #1
     93a:	459b      	cmp	fp, r3
     93c:	d196      	bne.n	86c <write_one_data.constprop.0+0x60>
     93e:	463a      	mov	r2, r7
     940:	4641      	mov	r1, r8
     942:	2000      	movs	r0, #0
     944:	b005      	add	sp, #20
     946:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
     94a:	f7ff be89 	b.w	660 <dump_unsigned>
     94e:	9b03      	ldr	r3, [sp, #12]
     950:	9300      	str	r3, [sp, #0]
     952:	4649      	mov	r1, r9
     954:	4628      	mov	r0, r5
     956:	9701      	str	r7, [sp, #4]
     958:	4632      	mov	r2, r6
     95a:	4643      	mov	r3, r8
     95c:	f109 0901 	add.w	r9, r9, #1
     960:	3508      	adds	r5, #8
     962:	f7ff fe97 	bl	694 <write_topn_counters>
     966:	e7b7      	b.n	8d8 <write_one_data.constprop.0+0xcc>
     968:	67636461 	.word	0x67636461
     96c:	4232332a 	.word	0x4232332a

00000970 <__gcov_info_to_gcda>:
     970:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
     974:	9f06      	ldr	r7, [sp, #24]
     976:	4615      	mov	r5, r2
     978:	461e      	mov	r6, r3
     97a:	4604      	mov	r4, r0
     97c:	4688      	mov	r8, r1
     97e:	6900      	ldr	r0, [r0, #16]
     980:	4639      	mov	r1, r7
     982:	47c0      	blx	r8
     984:	463b      	mov	r3, r7
     986:	4632      	mov	r2, r6
     988:	4629      	mov	r1, r5
     98a:	4620      	mov	r0, r4
     98c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
     990:	f7ff bf3c 	b.w	80c <write_one_data.constprop.0>

00000994 <exit>:
     994:	b508      	push	{r3, lr}
     996:	4b06      	ldr	r3, [pc, #24]	@ (9b0 <exit+0x1c>)
     998:	4604      	mov	r4, r0
     99a:	b113      	cbz	r3, 9a2 <exit+0xe>
     99c:	2100      	movs	r1, #0
     99e:	f3af 8000 	nop.w
     9a2:	4b04      	ldr	r3, [pc, #16]	@ (9b4 <exit+0x20>)
     9a4:	681b      	ldr	r3, [r3, #0]
     9a6:	b103      	cbz	r3, 9aa <exit+0x16>
     9a8:	4798      	blx	r3
     9aa:	4620      	mov	r0, r4
     9ac:	f000 fef2 	bl	1794 <_exit>
     9b0:	00000000 	.word	0x00000000
     9b4:	20000530 	.word	0x20000530

000009b8 <malloc>:
     9b8:	4b02      	ldr	r3, [pc, #8]	@ (9c4 <malloc+0xc>)
     9ba:	4601      	mov	r1, r0
     9bc:	6818      	ldr	r0, [r3, #0]
     9be:	f000 b82d 	b.w	a1c <_malloc_r>
     9c2:	bf00      	nop
     9c4:	2000029c 	.word	0x2000029c

000009c8 <free>:
     9c8:	4b02      	ldr	r3, [pc, #8]	@ (9d4 <free+0xc>)
     9ca:	4601      	mov	r1, r0
     9cc:	6818      	ldr	r0, [r3, #0]
     9ce:	f000 bcd5 	b.w	137c <_free_r>
     9d2:	bf00      	nop
     9d4:	2000029c 	.word	0x2000029c

000009d8 <sbrk_aligned>:
     9d8:	b570      	push	{r4, r5, r6, lr}
     9da:	4e0f      	ldr	r6, [pc, #60]	@ (a18 <sbrk_aligned+0x40>)
     9dc:	460c      	mov	r4, r1
     9de:	6831      	ldr	r1, [r6, #0]
     9e0:	4605      	mov	r5, r0
     9e2:	b911      	cbnz	r1, 9ea <sbrk_aligned+0x12>
     9e4:	f000 fc78 	bl	12d8 <_sbrk_r>
     9e8:	6030      	str	r0, [r6, #0]
     9ea:	4621      	mov	r1, r4
     9ec:	4628      	mov	r0, r5
     9ee:	f000 fc73 	bl	12d8 <_sbrk_r>
     9f2:	1c43      	adds	r3, r0, #1
     9f4:	d103      	bne.n	9fe <sbrk_aligned+0x26>
     9f6:	f04f 34ff 	mov.w	r4, #4294967295
     9fa:	4620      	mov	r0, r4
     9fc:	bd70      	pop	{r4, r5, r6, pc}
     9fe:	1cc4      	adds	r4, r0, #3
     a00:	f024 0403 	bic.w	r4, r4, #3
     a04:	42a0      	cmp	r0, r4
     a06:	d0f8      	beq.n	9fa <sbrk_aligned+0x22>
     a08:	1a21      	subs	r1, r4, r0
     a0a:	4628      	mov	r0, r5
     a0c:	f000 fc64 	bl	12d8 <_sbrk_r>
     a10:	3001      	adds	r0, #1
     a12:	d1f2      	bne.n	9fa <sbrk_aligned+0x22>
     a14:	e7ef      	b.n	9f6 <sbrk_aligned+0x1e>
     a16:	bf00      	nop
     a18:	200003f0 	.word	0x200003f0

00000a1c <_malloc_r>:
     a1c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
     a20:	1ccd      	adds	r5, r1, #3
     a22:	f025 0503 	bic.w	r5, r5, #3
     a26:	3508      	adds	r5, #8
     a28:	2d0c      	cmp	r5, #12
     a2a:	bf38      	it	cc
     a2c:	250c      	movcc	r5, #12
     a2e:	2d00      	cmp	r5, #0
     a30:	4606      	mov	r6, r0
     a32:	db01      	blt.n	a38 <_malloc_r+0x1c>
     a34:	42a9      	cmp	r1, r5
     a36:	d904      	bls.n	a42 <_malloc_r+0x26>
     a38:	230c      	movs	r3, #12
     a3a:	6033      	str	r3, [r6, #0]
     a3c:	2000      	movs	r0, #0
     a3e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
     a42:	f8df 80d4 	ldr.w	r8, [pc, #212]	@ b18 <_malloc_r+0xfc>
     a46:	f000 f869 	bl	b1c <__malloc_lock>
     a4a:	f8d8 3000 	ldr.w	r3, [r8]
     a4e:	461c      	mov	r4, r3
     a50:	bb44      	cbnz	r4, aa4 <_malloc_r+0x88>
     a52:	4629      	mov	r1, r5
     a54:	4630      	mov	r0, r6
     a56:	f7ff ffbf 	bl	9d8 <sbrk_aligned>
     a5a:	1c43      	adds	r3, r0, #1
     a5c:	4604      	mov	r4, r0
     a5e:	d158      	bne.n	b12 <_malloc_r+0xf6>
     a60:	f8d8 4000 	ldr.w	r4, [r8]
     a64:	4627      	mov	r7, r4
     a66:	2f00      	cmp	r7, #0
     a68:	d143      	bne.n	af2 <_malloc_r+0xd6>
     a6a:	2c00      	cmp	r4, #0
     a6c:	d04b      	beq.n	b06 <_malloc_r+0xea>
     a6e:	6823      	ldr	r3, [r4, #0]
     a70:	4639      	mov	r1, r7
     a72:	4630      	mov	r0, r6
     a74:	eb04 0903 	add.w	r9, r4, r3
     a78:	f000 fc2e 	bl	12d8 <_sbrk_r>
     a7c:	4581      	cmp	r9, r0
     a7e:	d142      	bne.n	b06 <_malloc_r+0xea>
     a80:	6821      	ldr	r1, [r4, #0]
     a82:	1a6d      	subs	r5, r5, r1
     a84:	4629      	mov	r1, r5
     a86:	4630      	mov	r0, r6
     a88:	f7ff ffa6 	bl	9d8 <sbrk_aligned>
     a8c:	3001      	adds	r0, #1
     a8e:	d03a      	beq.n	b06 <_malloc_r+0xea>
     a90:	6823      	ldr	r3, [r4, #0]
     a92:	442b      	add	r3, r5
     a94:	6023      	str	r3, [r4, #0]
     a96:	f8d8 3000 	ldr.w	r3, [r8]
     a9a:	685a      	ldr	r2, [r3, #4]
     a9c:	bb62      	cbnz	r2, af8 <_malloc_r+0xdc>
     a9e:	f8c8 7000 	str.w	r7, [r8]
     aa2:	e00f      	b.n	ac4 <_malloc_r+0xa8>
     aa4:	6822      	ldr	r2, [r4, #0]
     aa6:	1b52      	subs	r2, r2, r5
     aa8:	d420      	bmi.n	aec <_malloc_r+0xd0>
     aaa:	2a0b      	cmp	r2, #11
     aac:	d917      	bls.n	ade <_malloc_r+0xc2>
     aae:	1961      	adds	r1, r4, r5
     ab0:	42a3      	cmp	r3, r4
     ab2:	6025      	str	r5, [r4, #0]
     ab4:	bf18      	it	ne
     ab6:	6059      	strne	r1, [r3, #4]
     ab8:	6863      	ldr	r3, [r4, #4]
     aba:	bf08      	it	eq
     abc:	f8c8 1000 	streq.w	r1, [r8]
     ac0:	5162      	str	r2, [r4, r5]
     ac2:	604b      	str	r3, [r1, #4]
     ac4:	4630      	mov	r0, r6
     ac6:	f000 f82f 	bl	b28 <__malloc_unlock>
     aca:	f104 000b 	add.w	r0, r4, #11
     ace:	1d23      	adds	r3, r4, #4
     ad0:	f020 0007 	bic.w	r0, r0, #7
     ad4:	1ac2      	subs	r2, r0, r3
     ad6:	bf1c      	itt	ne
     ad8:	1a1b      	subne	r3, r3, r0
     ada:	50a3      	strne	r3, [r4, r2]
     adc:	e7af      	b.n	a3e <_malloc_r+0x22>
     ade:	6862      	ldr	r2, [r4, #4]
     ae0:	42a3      	cmp	r3, r4
     ae2:	bf0c      	ite	eq
     ae4:	f8c8 2000 	streq.w	r2, [r8]
     ae8:	605a      	strne	r2, [r3, #4]
     aea:	e7eb      	b.n	ac4 <_malloc_r+0xa8>
     aec:	4623      	mov	r3, r4
     aee:	6864      	ldr	r4, [r4, #4]
     af0:	e7ae      	b.n	a50 <_malloc_r+0x34>
     af2:	463c      	mov	r4, r7
     af4:	687f      	ldr	r7, [r7, #4]
     af6:	e7b6      	b.n	a66 <_malloc_r+0x4a>
     af8:	461a      	mov	r2, r3
     afa:	685b      	ldr	r3, [r3, #4]
     afc:	42a3      	cmp	r3, r4
     afe:	d1fb      	bne.n	af8 <_malloc_r+0xdc>
     b00:	2300      	movs	r3, #0
     b02:	6053      	str	r3, [r2, #4]
     b04:	e7de      	b.n	ac4 <_malloc_r+0xa8>
     b06:	230c      	movs	r3, #12
     b08:	6033      	str	r3, [r6, #0]
     b0a:	4630      	mov	r0, r6
     b0c:	f000 f80c 	bl	b28 <__malloc_unlock>
     b10:	e794      	b.n	a3c <_malloc_r+0x20>
     b12:	6005      	str	r5, [r0, #0]
     b14:	e7d6      	b.n	ac4 <_malloc_r+0xa8>
     b16:	bf00      	nop
     b18:	200003f4 	.word	0x200003f4

00000b1c <__malloc_lock>:
     b1c:	4801      	ldr	r0, [pc, #4]	@ (b24 <__malloc_lock+0x8>)
     b1e:	f000 bc26 	b.w	136e <__retarget_lock_acquire_recursive>
     b22:	bf00      	nop
     b24:	2000053c 	.word	0x2000053c

00000b28 <__malloc_unlock>:
     b28:	4801      	ldr	r0, [pc, #4]	@ (b30 <__malloc_unlock+0x8>)
     b2a:	f000 bc26 	b.w	137a <__retarget_lock_release_recursive>
     b2e:	bf00      	nop
     b30:	2000053c 	.word	0x2000053c

00000b34 <_fgetc_r>:
     b34:	b538      	push	{r3, r4, r5, lr}
     b36:	460c      	mov	r4, r1
     b38:	4605      	mov	r5, r0
     b3a:	b118      	cbz	r0, b44 <_fgetc_r+0x10>
     b3c:	6a03      	ldr	r3, [r0, #32]
     b3e:	b90b      	cbnz	r3, b44 <_fgetc_r+0x10>
     b40:	f000 f922 	bl	d88 <__sinit>
     b44:	6e63      	ldr	r3, [r4, #100]	@ 0x64
     b46:	07d8      	lsls	r0, r3, #31
     b48:	d405      	bmi.n	b56 <_fgetc_r+0x22>
     b4a:	89a3      	ldrh	r3, [r4, #12]
     b4c:	0599      	lsls	r1, r3, #22
     b4e:	d402      	bmi.n	b56 <_fgetc_r+0x22>
     b50:	6da0      	ldr	r0, [r4, #88]	@ 0x58
     b52:	f000 fc0c 	bl	136e <__retarget_lock_acquire_recursive>
     b56:	6863      	ldr	r3, [r4, #4]
     b58:	3b01      	subs	r3, #1
     b5a:	2b00      	cmp	r3, #0
     b5c:	6063      	str	r3, [r4, #4]
     b5e:	da0f      	bge.n	b80 <_fgetc_r+0x4c>
     b60:	4628      	mov	r0, r5
     b62:	4621      	mov	r1, r4
     b64:	f000 fa24 	bl	fb0 <__srget_r>
     b68:	4605      	mov	r5, r0
     b6a:	6e63      	ldr	r3, [r4, #100]	@ 0x64
     b6c:	07da      	lsls	r2, r3, #31
     b6e:	d405      	bmi.n	b7c <_fgetc_r+0x48>
     b70:	89a3      	ldrh	r3, [r4, #12]
     b72:	059b      	lsls	r3, r3, #22
     b74:	d402      	bmi.n	b7c <_fgetc_r+0x48>
     b76:	6da0      	ldr	r0, [r4, #88]	@ 0x58
     b78:	f000 fbff 	bl	137a <__retarget_lock_release_recursive>
     b7c:	4628      	mov	r0, r5
     b7e:	bd38      	pop	{r3, r4, r5, pc}
     b80:	6823      	ldr	r3, [r4, #0]
     b82:	1c5a      	adds	r2, r3, #1
     b84:	6022      	str	r2, [r4, #0]
     b86:	781d      	ldrb	r5, [r3, #0]
     b88:	e7ef      	b.n	b6a <_fgetc_r+0x36>
	...

00000b8c <fgetc>:
     b8c:	4b02      	ldr	r3, [pc, #8]	@ (b98 <fgetc+0xc>)
     b8e:	4601      	mov	r1, r0
     b90:	6818      	ldr	r0, [r3, #0]
     b92:	f7ff bfcf 	b.w	b34 <_fgetc_r>
     b96:	bf00      	nop
     b98:	2000029c 	.word	0x2000029c

00000b9c <std>:
     b9c:	2300      	movs	r3, #0
     b9e:	b510      	push	{r4, lr}
     ba0:	4604      	mov	r4, r0
     ba2:	e9c0 3300 	strd	r3, r3, [r0]
     ba6:	e9c0 3304 	strd	r3, r3, [r0, #16]
     baa:	6083      	str	r3, [r0, #8]
     bac:	8181      	strh	r1, [r0, #12]
     bae:	6643      	str	r3, [r0, #100]	@ 0x64
     bb0:	81c2      	strh	r2, [r0, #14]
     bb2:	6183      	str	r3, [r0, #24]
     bb4:	4619      	mov	r1, r3
     bb6:	2208      	movs	r2, #8
     bb8:	305c      	adds	r0, #92	@ 0x5c
     bba:	f000 fafb 	bl	11b4 <memset>
     bbe:	4b0d      	ldr	r3, [pc, #52]	@ (bf4 <std+0x58>)
     bc0:	6263      	str	r3, [r4, #36]	@ 0x24
     bc2:	4b0d      	ldr	r3, [pc, #52]	@ (bf8 <std+0x5c>)
     bc4:	62a3      	str	r3, [r4, #40]	@ 0x28
     bc6:	4b0d      	ldr	r3, [pc, #52]	@ (bfc <std+0x60>)
     bc8:	62e3      	str	r3, [r4, #44]	@ 0x2c
     bca:	4b0d      	ldr	r3, [pc, #52]	@ (c00 <Stack_Size>)
     bcc:	6323      	str	r3, [r4, #48]	@ 0x30
     bce:	4b0d      	ldr	r3, [pc, #52]	@ (c04 <Stack_Size+0x4>)
     bd0:	6224      	str	r4, [r4, #32]
     bd2:	429c      	cmp	r4, r3
     bd4:	d006      	beq.n	be4 <std+0x48>
     bd6:	f103 0268 	add.w	r2, r3, #104	@ 0x68
     bda:	4294      	cmp	r4, r2
     bdc:	d002      	beq.n	be4 <std+0x48>
     bde:	33d0      	adds	r3, #208	@ 0xd0
     be0:	429c      	cmp	r4, r3
     be2:	d105      	bne.n	bf0 <std+0x54>
     be4:	f104 0058 	add.w	r0, r4, #88	@ 0x58
     be8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
     bec:	f000 bbbb 	b.w	1366 <__retarget_lock_init_recursive>
     bf0:	bd10      	pop	{r4, pc}
     bf2:	bf00      	nop
     bf4:	00000ff1 	.word	0x00000ff1
     bf8:	00001017 	.word	0x00001017
     bfc:	0000104f 	.word	0x0000104f
     c00:	00001073 	.word	0x00001073
     c04:	200003f8 	.word	0x200003f8

00000c08 <stdio_exit_handler>:
     c08:	4a02      	ldr	r2, [pc, #8]	@ (c14 <stdio_exit_handler+0xc>)
     c0a:	4903      	ldr	r1, [pc, #12]	@ (c18 <stdio_exit_handler+0x10>)
     c0c:	4803      	ldr	r0, [pc, #12]	@ (c1c <stdio_exit_handler+0x14>)
     c0e:	f000 b91b 	b.w	e48 <_fwalk_sglue>
     c12:	bf00      	nop
     c14:	20000290 	.word	0x20000290
     c18:	00001511 	.word	0x00001511
     c1c:	200002a0 	.word	0x200002a0

00000c20 <cleanup_stdio>:
     c20:	6841      	ldr	r1, [r0, #4]
     c22:	4b0c      	ldr	r3, [pc, #48]	@ (c54 <cleanup_stdio+0x34>)
     c24:	4299      	cmp	r1, r3
     c26:	b510      	push	{r4, lr}
     c28:	4604      	mov	r4, r0
     c2a:	d001      	beq.n	c30 <cleanup_stdio+0x10>
     c2c:	f000 fc70 	bl	1510 <_fflush_r>
     c30:	68a1      	ldr	r1, [r4, #8]
     c32:	4b09      	ldr	r3, [pc, #36]	@ (c58 <cleanup_stdio+0x38>)
     c34:	4299      	cmp	r1, r3
     c36:	d002      	beq.n	c3e <cleanup_stdio+0x1e>
     c38:	4620      	mov	r0, r4
     c3a:	f000 fc69 	bl	1510 <_fflush_r>
     c3e:	68e1      	ldr	r1, [r4, #12]
     c40:	4b06      	ldr	r3, [pc, #24]	@ (c5c <cleanup_stdio+0x3c>)
     c42:	4299      	cmp	r1, r3
     c44:	d004      	beq.n	c50 <cleanup_stdio+0x30>
     c46:	4620      	mov	r0, r4
     c48:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
     c4c:	f000 bc60 	b.w	1510 <_fflush_r>
     c50:	bd10      	pop	{r4, pc}
     c52:	bf00      	nop
     c54:	200003f8 	.word	0x200003f8
     c58:	20000460 	.word	0x20000460
     c5c:	200004c8 	.word	0x200004c8

00000c60 <__fp_lock>:
     c60:	b508      	push	{r3, lr}
     c62:	6e4b      	ldr	r3, [r1, #100]	@ 0x64
     c64:	07da      	lsls	r2, r3, #31
     c66:	d405      	bmi.n	c74 <__fp_lock+0x14>
     c68:	898b      	ldrh	r3, [r1, #12]
     c6a:	059b      	lsls	r3, r3, #22
     c6c:	d402      	bmi.n	c74 <__fp_lock+0x14>
     c6e:	6d88      	ldr	r0, [r1, #88]	@ 0x58
     c70:	f000 fb7d 	bl	136e <__retarget_lock_acquire_recursive>
     c74:	2000      	movs	r0, #0
     c76:	bd08      	pop	{r3, pc}

00000c78 <__fp_unlock>:
     c78:	b508      	push	{r3, lr}
     c7a:	6e4b      	ldr	r3, [r1, #100]	@ 0x64
     c7c:	07da      	lsls	r2, r3, #31
     c7e:	d405      	bmi.n	c8c <__fp_unlock+0x14>
     c80:	898b      	ldrh	r3, [r1, #12]
     c82:	059b      	lsls	r3, r3, #22
     c84:	d402      	bmi.n	c8c <__fp_unlock+0x14>
     c86:	6d88      	ldr	r0, [r1, #88]	@ 0x58
     c88:	f000 fb77 	bl	137a <__retarget_lock_release_recursive>
     c8c:	2000      	movs	r0, #0
     c8e:	bd08      	pop	{r3, pc}

00000c90 <global_stdio_init.part.0>:
     c90:	b510      	push	{r4, lr}
     c92:	4b0b      	ldr	r3, [pc, #44]	@ (cc0 <global_stdio_init.part.0+0x30>)
     c94:	4c0b      	ldr	r4, [pc, #44]	@ (cc4 <global_stdio_init.part.0+0x34>)
     c96:	4a0c      	ldr	r2, [pc, #48]	@ (cc8 <global_stdio_init.part.0+0x38>)
     c98:	601a      	str	r2, [r3, #0]
     c9a:	4620      	mov	r0, r4
     c9c:	2200      	movs	r2, #0
     c9e:	2104      	movs	r1, #4
     ca0:	f7ff ff7c 	bl	b9c <std>
     ca4:	f104 0068 	add.w	r0, r4, #104	@ 0x68
     ca8:	2201      	movs	r2, #1
     caa:	2109      	movs	r1, #9
     cac:	f7ff ff76 	bl	b9c <std>
     cb0:	f104 00d0 	add.w	r0, r4, #208	@ 0xd0
     cb4:	2202      	movs	r2, #2
     cb6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
     cba:	2112      	movs	r1, #18
     cbc:	f7ff bf6e 	b.w	b9c <std>
     cc0:	20000530 	.word	0x20000530
     cc4:	200003f8 	.word	0x200003f8
     cc8:	00000c09 	.word	0x00000c09

00000ccc <__sfp_lock_acquire>:
     ccc:	4801      	ldr	r0, [pc, #4]	@ (cd4 <__sfp_lock_acquire+0x8>)
     cce:	f000 bb4e 	b.w	136e <__retarget_lock_acquire_recursive>
     cd2:	bf00      	nop
     cd4:	2000053f 	.word	0x2000053f

00000cd8 <__sfp_lock_release>:
     cd8:	4801      	ldr	r0, [pc, #4]	@ (ce0 <__sfp_lock_release+0x8>)
     cda:	f000 bb4e 	b.w	137a <__retarget_lock_release_recursive>
     cde:	bf00      	nop
     ce0:	2000053f 	.word	0x2000053f

00000ce4 <__sfp>:
     ce4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
     ce6:	4607      	mov	r7, r0
     ce8:	f7ff fff0 	bl	ccc <__sfp_lock_acquire>
     cec:	4b23      	ldr	r3, [pc, #140]	@ (d7c <__sfp+0x98>)
     cee:	681b      	ldr	r3, [r3, #0]
     cf0:	b90b      	cbnz	r3, cf6 <__sfp+0x12>
     cf2:	f7ff ffcd 	bl	c90 <global_stdio_init.part.0>
     cf6:	4e22      	ldr	r6, [pc, #136]	@ (d80 <__sfp+0x9c>)
     cf8:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
     cfc:	3b01      	subs	r3, #1
     cfe:	d50f      	bpl.n	d20 <__sfp+0x3c>
     d00:	6835      	ldr	r5, [r6, #0]
     d02:	2d00      	cmp	r5, #0
     d04:	d137      	bne.n	d76 <__sfp+0x92>
     d06:	f44f 71d6 	mov.w	r1, #428	@ 0x1ac
     d0a:	4638      	mov	r0, r7
     d0c:	f7ff fe86 	bl	a1c <_malloc_r>
     d10:	4604      	mov	r4, r0
     d12:	bb28      	cbnz	r0, d60 <__sfp+0x7c>
     d14:	6030      	str	r0, [r6, #0]
     d16:	f7ff ffdf 	bl	cd8 <__sfp_lock_release>
     d1a:	230c      	movs	r3, #12
     d1c:	603b      	str	r3, [r7, #0]
     d1e:	e01b      	b.n	d58 <__sfp+0x74>
     d20:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
     d24:	b9d5      	cbnz	r5, d5c <__sfp+0x78>
     d26:	4b17      	ldr	r3, [pc, #92]	@ (d84 <__sfp+0xa0>)
     d28:	60e3      	str	r3, [r4, #12]
     d2a:	f104 0058 	add.w	r0, r4, #88	@ 0x58
     d2e:	6665      	str	r5, [r4, #100]	@ 0x64
     d30:	f000 fb19 	bl	1366 <__retarget_lock_init_recursive>
     d34:	f7ff ffd0 	bl	cd8 <__sfp_lock_release>
     d38:	e9c4 5501 	strd	r5, r5, [r4, #4]
     d3c:	e9c4 5504 	strd	r5, r5, [r4, #16]
     d40:	6025      	str	r5, [r4, #0]
     d42:	61a5      	str	r5, [r4, #24]
     d44:	2208      	movs	r2, #8
     d46:	4629      	mov	r1, r5
     d48:	f104 005c 	add.w	r0, r4, #92	@ 0x5c
     d4c:	f000 fa32 	bl	11b4 <memset>
     d50:	e9c4 550d 	strd	r5, r5, [r4, #52]	@ 0x34
     d54:	e9c4 5512 	strd	r5, r5, [r4, #72]	@ 0x48
     d58:	4620      	mov	r0, r4
     d5a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
     d5c:	3468      	adds	r4, #104	@ 0x68
     d5e:	e7cd      	b.n	cfc <__sfp+0x18>
     d60:	2304      	movs	r3, #4
     d62:	6005      	str	r5, [r0, #0]
     d64:	6043      	str	r3, [r0, #4]
     d66:	300c      	adds	r0, #12
     d68:	60a0      	str	r0, [r4, #8]
     d6a:	f44f 72d0 	mov.w	r2, #416	@ 0x1a0
     d6e:	4629      	mov	r1, r5
     d70:	f000 fa20 	bl	11b4 <memset>
     d74:	6034      	str	r4, [r6, #0]
     d76:	6836      	ldr	r6, [r6, #0]
     d78:	e7be      	b.n	cf8 <__sfp+0x14>
     d7a:	bf00      	nop
     d7c:	20000530 	.word	0x20000530
     d80:	20000290 	.word	0x20000290
     d84:	ffff0001 	.word	0xffff0001

00000d88 <__sinit>:
     d88:	b510      	push	{r4, lr}
     d8a:	4604      	mov	r4, r0
     d8c:	f7ff ff9e 	bl	ccc <__sfp_lock_acquire>
     d90:	6a23      	ldr	r3, [r4, #32]
     d92:	b11b      	cbz	r3, d9c <__sinit+0x14>
     d94:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
     d98:	f7ff bf9e 	b.w	cd8 <__sfp_lock_release>
     d9c:	4b04      	ldr	r3, [pc, #16]	@ (db0 <__sinit+0x28>)
     d9e:	6223      	str	r3, [r4, #32]
     da0:	4b04      	ldr	r3, [pc, #16]	@ (db4 <__sinit+0x2c>)
     da2:	681b      	ldr	r3, [r3, #0]
     da4:	2b00      	cmp	r3, #0
     da6:	d1f5      	bne.n	d94 <__sinit+0xc>
     da8:	f7ff ff72 	bl	c90 <global_stdio_init.part.0>
     dac:	e7f2      	b.n	d94 <__sinit+0xc>
     dae:	bf00      	nop
     db0:	00000c21 	.word	0x00000c21
     db4:	20000530 	.word	0x20000530

00000db8 <__fp_lock_all>:
     db8:	b508      	push	{r3, lr}
     dba:	f7ff ff87 	bl	ccc <__sfp_lock_acquire>
     dbe:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
     dc2:	4a02      	ldr	r2, [pc, #8]	@ (dcc <__fp_lock_all+0x14>)
     dc4:	4902      	ldr	r1, [pc, #8]	@ (dd0 <__fp_lock_all+0x18>)
     dc6:	2000      	movs	r0, #0
     dc8:	f000 b83e 	b.w	e48 <_fwalk_sglue>
     dcc:	20000290 	.word	0x20000290
     dd0:	00000c61 	.word	0x00000c61

00000dd4 <__fp_unlock_all>:
     dd4:	b508      	push	{r3, lr}
     dd6:	4a04      	ldr	r2, [pc, #16]	@ (de8 <__fp_unlock_all+0x14>)
     dd8:	4904      	ldr	r1, [pc, #16]	@ (dec <__fp_unlock_all+0x18>)
     dda:	2000      	movs	r0, #0
     ddc:	f000 f834 	bl	e48 <_fwalk_sglue>
     de0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
     de4:	f7ff bf78 	b.w	cd8 <__sfp_lock_release>
     de8:	20000290 	.word	0x20000290
     dec:	00000c79 	.word	0x00000c79

00000df0 <_fputc_r>:
     df0:	b570      	push	{r4, r5, r6, lr}
     df2:	460e      	mov	r6, r1
     df4:	4614      	mov	r4, r2
     df6:	4605      	mov	r5, r0
     df8:	b118      	cbz	r0, e02 <_fputc_r+0x12>
     dfa:	6a03      	ldr	r3, [r0, #32]
     dfc:	b90b      	cbnz	r3, e02 <_fputc_r+0x12>
     dfe:	f7ff ffc3 	bl	d88 <__sinit>
     e02:	6e63      	ldr	r3, [r4, #100]	@ 0x64
     e04:	07d8      	lsls	r0, r3, #31
     e06:	d405      	bmi.n	e14 <_fputc_r+0x24>
     e08:	89a3      	ldrh	r3, [r4, #12]
     e0a:	0599      	lsls	r1, r3, #22
     e0c:	d402      	bmi.n	e14 <_fputc_r+0x24>
     e0e:	6da0      	ldr	r0, [r4, #88]	@ 0x58
     e10:	f000 faad 	bl	136e <__retarget_lock_acquire_recursive>
     e14:	4622      	mov	r2, r4
     e16:	4628      	mov	r0, r5
     e18:	4631      	mov	r1, r6
     e1a:	f000 f88d 	bl	f38 <_putc_r>
     e1e:	6e63      	ldr	r3, [r4, #100]	@ 0x64
     e20:	07da      	lsls	r2, r3, #31
     e22:	4605      	mov	r5, r0
     e24:	d405      	bmi.n	e32 <_fputc_r+0x42>
     e26:	89a3      	ldrh	r3, [r4, #12]
     e28:	059b      	lsls	r3, r3, #22
     e2a:	d402      	bmi.n	e32 <_fputc_r+0x42>
     e2c:	6da0      	ldr	r0, [r4, #88]	@ 0x58
     e2e:	f000 faa4 	bl	137a <__retarget_lock_release_recursive>
     e32:	4628      	mov	r0, r5
     e34:	bd70      	pop	{r4, r5, r6, pc}
	...

00000e38 <fputc>:
     e38:	4b02      	ldr	r3, [pc, #8]	@ (e44 <fputc+0xc>)
     e3a:	460a      	mov	r2, r1
     e3c:	4601      	mov	r1, r0
     e3e:	6818      	ldr	r0, [r3, #0]
     e40:	f7ff bfd6 	b.w	df0 <_fputc_r>
     e44:	2000029c 	.word	0x2000029c

00000e48 <_fwalk_sglue>:
     e48:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
     e4c:	4607      	mov	r7, r0
     e4e:	4688      	mov	r8, r1
     e50:	4614      	mov	r4, r2
     e52:	2600      	movs	r6, #0
     e54:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
     e58:	f1b9 0901 	subs.w	r9, r9, #1
     e5c:	d505      	bpl.n	e6a <_fwalk_sglue+0x22>
     e5e:	6824      	ldr	r4, [r4, #0]
     e60:	2c00      	cmp	r4, #0
     e62:	d1f7      	bne.n	e54 <_fwalk_sglue+0xc>
     e64:	4630      	mov	r0, r6
     e66:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
     e6a:	89ab      	ldrh	r3, [r5, #12]
     e6c:	2b01      	cmp	r3, #1
     e6e:	d907      	bls.n	e80 <_fwalk_sglue+0x38>
     e70:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
     e74:	3301      	adds	r3, #1
     e76:	d003      	beq.n	e80 <_fwalk_sglue+0x38>
     e78:	4629      	mov	r1, r5
     e7a:	4638      	mov	r0, r7
     e7c:	47c0      	blx	r8
     e7e:	4306      	orrs	r6, r0
     e80:	3568      	adds	r5, #104	@ 0x68
     e82:	e7e9      	b.n	e58 <_fwalk_sglue+0x10>

00000e84 <_fwrite_r>:
     e84:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
     e88:	9c08      	ldr	r4, [sp, #32]
     e8a:	468a      	mov	sl, r1
     e8c:	4690      	mov	r8, r2
     e8e:	fb02 f903 	mul.w	r9, r2, r3
     e92:	4606      	mov	r6, r0
     e94:	b118      	cbz	r0, e9e <_fwrite_r+0x1a>
     e96:	6a03      	ldr	r3, [r0, #32]
     e98:	b90b      	cbnz	r3, e9e <_fwrite_r+0x1a>
     e9a:	f7ff ff75 	bl	d88 <__sinit>
     e9e:	6e63      	ldr	r3, [r4, #100]	@ 0x64
     ea0:	07dd      	lsls	r5, r3, #31
     ea2:	d405      	bmi.n	eb0 <_fwrite_r+0x2c>
     ea4:	89a3      	ldrh	r3, [r4, #12]
     ea6:	0598      	lsls	r0, r3, #22
     ea8:	d402      	bmi.n	eb0 <_fwrite_r+0x2c>
     eaa:	6da0      	ldr	r0, [r4, #88]	@ 0x58
     eac:	f000 fa5f 	bl	136e <__retarget_lock_acquire_recursive>
     eb0:	89a3      	ldrh	r3, [r4, #12]
     eb2:	0719      	lsls	r1, r3, #28
     eb4:	d516      	bpl.n	ee4 <_fwrite_r+0x60>
     eb6:	6923      	ldr	r3, [r4, #16]
     eb8:	b1a3      	cbz	r3, ee4 <_fwrite_r+0x60>
     eba:	2500      	movs	r5, #0
     ebc:	454d      	cmp	r5, r9
     ebe:	d01f      	beq.n	f00 <_fwrite_r+0x7c>
     ec0:	68a7      	ldr	r7, [r4, #8]
     ec2:	f81a 1005 	ldrb.w	r1, [sl, r5]
     ec6:	3f01      	subs	r7, #1
     ec8:	2f00      	cmp	r7, #0
     eca:	60a7      	str	r7, [r4, #8]
     ecc:	da04      	bge.n	ed8 <_fwrite_r+0x54>
     ece:	69a3      	ldr	r3, [r4, #24]
     ed0:	429f      	cmp	r7, r3
     ed2:	db0f      	blt.n	ef4 <_fwrite_r+0x70>
     ed4:	290a      	cmp	r1, #10
     ed6:	d00d      	beq.n	ef4 <_fwrite_r+0x70>
     ed8:	6823      	ldr	r3, [r4, #0]
     eda:	1c5a      	adds	r2, r3, #1
     edc:	6022      	str	r2, [r4, #0]
     ede:	7019      	strb	r1, [r3, #0]
     ee0:	3501      	adds	r5, #1
     ee2:	e7eb      	b.n	ebc <_fwrite_r+0x38>
     ee4:	4621      	mov	r1, r4
     ee6:	4630      	mov	r0, r6
     ee8:	f000 f90e 	bl	1108 <__swsetup_r>
     eec:	2800      	cmp	r0, #0
     eee:	d0e4      	beq.n	eba <_fwrite_r+0x36>
     ef0:	2500      	movs	r5, #0
     ef2:	e005      	b.n	f00 <_fwrite_r+0x7c>
     ef4:	4622      	mov	r2, r4
     ef6:	4630      	mov	r0, r6
     ef8:	f000 f8bf 	bl	107a <__swbuf_r>
     efc:	3001      	adds	r0, #1
     efe:	d1ef      	bne.n	ee0 <_fwrite_r+0x5c>
     f00:	6e63      	ldr	r3, [r4, #100]	@ 0x64
     f02:	07da      	lsls	r2, r3, #31
     f04:	d405      	bmi.n	f12 <_fwrite_r+0x8e>
     f06:	89a3      	ldrh	r3, [r4, #12]
     f08:	059b      	lsls	r3, r3, #22
     f0a:	d402      	bmi.n	f12 <_fwrite_r+0x8e>
     f0c:	6da0      	ldr	r0, [r4, #88]	@ 0x58
     f0e:	f000 fa34 	bl	137a <__retarget_lock_release_recursive>
     f12:	fbb5 f0f8 	udiv	r0, r5, r8
     f16:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	...

00000f1c <fwrite>:
     f1c:	b507      	push	{r0, r1, r2, lr}
     f1e:	9300      	str	r3, [sp, #0]
     f20:	4613      	mov	r3, r2
     f22:	460a      	mov	r2, r1
     f24:	4601      	mov	r1, r0
     f26:	4803      	ldr	r0, [pc, #12]	@ (f34 <fwrite+0x18>)
     f28:	6800      	ldr	r0, [r0, #0]
     f2a:	f7ff ffab 	bl	e84 <_fwrite_r>
     f2e:	b003      	add	sp, #12
     f30:	f85d fb04 	ldr.w	pc, [sp], #4
     f34:	2000029c 	.word	0x2000029c

00000f38 <_putc_r>:
     f38:	b570      	push	{r4, r5, r6, lr}
     f3a:	460d      	mov	r5, r1
     f3c:	4614      	mov	r4, r2
     f3e:	4606      	mov	r6, r0
     f40:	b118      	cbz	r0, f4a <_putc_r+0x12>
     f42:	6a03      	ldr	r3, [r0, #32]
     f44:	b90b      	cbnz	r3, f4a <_putc_r+0x12>
     f46:	f7ff ff1f 	bl	d88 <__sinit>
     f4a:	6e63      	ldr	r3, [r4, #100]	@ 0x64
     f4c:	07d8      	lsls	r0, r3, #31
     f4e:	d405      	bmi.n	f5c <_putc_r+0x24>
     f50:	89a3      	ldrh	r3, [r4, #12]
     f52:	0599      	lsls	r1, r3, #22
     f54:	d402      	bmi.n	f5c <_putc_r+0x24>
     f56:	6da0      	ldr	r0, [r4, #88]	@ 0x58
     f58:	f000 fa09 	bl	136e <__retarget_lock_acquire_recursive>
     f5c:	68a3      	ldr	r3, [r4, #8]
     f5e:	3b01      	subs	r3, #1
     f60:	2b00      	cmp	r3, #0
     f62:	60a3      	str	r3, [r4, #8]
     f64:	da05      	bge.n	f72 <_putc_r+0x3a>
     f66:	69a2      	ldr	r2, [r4, #24]
     f68:	4293      	cmp	r3, r2
     f6a:	db12      	blt.n	f92 <_putc_r+0x5a>
     f6c:	b2eb      	uxtb	r3, r5
     f6e:	2b0a      	cmp	r3, #10
     f70:	d00f      	beq.n	f92 <_putc_r+0x5a>
     f72:	6823      	ldr	r3, [r4, #0]
     f74:	1c5a      	adds	r2, r3, #1
     f76:	6022      	str	r2, [r4, #0]
     f78:	701d      	strb	r5, [r3, #0]
     f7a:	b2ed      	uxtb	r5, r5
     f7c:	6e63      	ldr	r3, [r4, #100]	@ 0x64
     f7e:	07da      	lsls	r2, r3, #31
     f80:	d405      	bmi.n	f8e <_putc_r+0x56>
     f82:	89a3      	ldrh	r3, [r4, #12]
     f84:	059b      	lsls	r3, r3, #22
     f86:	d402      	bmi.n	f8e <_putc_r+0x56>
     f88:	6da0      	ldr	r0, [r4, #88]	@ 0x58
     f8a:	f000 f9f6 	bl	137a <__retarget_lock_release_recursive>
     f8e:	4628      	mov	r0, r5
     f90:	bd70      	pop	{r4, r5, r6, pc}
     f92:	4629      	mov	r1, r5
     f94:	4622      	mov	r2, r4
     f96:	4630      	mov	r0, r6
     f98:	f000 f86f 	bl	107a <__swbuf_r>
     f9c:	4605      	mov	r5, r0
     f9e:	e7ed      	b.n	f7c <_putc_r+0x44>

00000fa0 <putc>:
     fa0:	4b02      	ldr	r3, [pc, #8]	@ (fac <putc+0xc>)
     fa2:	460a      	mov	r2, r1
     fa4:	4601      	mov	r1, r0
     fa6:	6818      	ldr	r0, [r3, #0]
     fa8:	f7ff bfc6 	b.w	f38 <_putc_r>
     fac:	2000029c 	.word	0x2000029c

00000fb0 <__srget_r>:
     fb0:	b538      	push	{r3, r4, r5, lr}
     fb2:	460c      	mov	r4, r1
     fb4:	4605      	mov	r5, r0
     fb6:	b118      	cbz	r0, fc0 <__srget_r+0x10>
     fb8:	6a03      	ldr	r3, [r0, #32]
     fba:	b90b      	cbnz	r3, fc0 <__srget_r+0x10>
     fbc:	f7ff fee4 	bl	d88 <__sinit>
     fc0:	4621      	mov	r1, r4
     fc2:	4628      	mov	r0, r5
     fc4:	f000 fb50 	bl	1668 <__srefill_r>
     fc8:	b938      	cbnz	r0, fda <__srget_r+0x2a>
     fca:	6863      	ldr	r3, [r4, #4]
     fcc:	3b01      	subs	r3, #1
     fce:	6063      	str	r3, [r4, #4]
     fd0:	6823      	ldr	r3, [r4, #0]
     fd2:	1c5a      	adds	r2, r3, #1
     fd4:	6022      	str	r2, [r4, #0]
     fd6:	7818      	ldrb	r0, [r3, #0]
     fd8:	bd38      	pop	{r3, r4, r5, pc}
     fda:	f04f 30ff 	mov.w	r0, #4294967295
     fde:	e7fb      	b.n	fd8 <__srget_r+0x28>

00000fe0 <__srget>:
     fe0:	4b02      	ldr	r3, [pc, #8]	@ (fec <__srget+0xc>)
     fe2:	4601      	mov	r1, r0
     fe4:	6818      	ldr	r0, [r3, #0]
     fe6:	f7ff bfe3 	b.w	fb0 <__srget_r>
     fea:	bf00      	nop
     fec:	2000029c 	.word	0x2000029c

00000ff0 <__sread>:
     ff0:	b510      	push	{r4, lr}
     ff2:	460c      	mov	r4, r1
     ff4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
     ff8:	f000 f95c 	bl	12b4 <_read_r>
     ffc:	2800      	cmp	r0, #0
     ffe:	bfab      	itete	ge
    1000:	6d63      	ldrge	r3, [r4, #84]	@ 0x54
    1002:	89a3      	ldrhlt	r3, [r4, #12]
    1004:	181b      	addge	r3, r3, r0
    1006:	f423 5380 	biclt.w	r3, r3, #4096	@ 0x1000
    100a:	bfac      	ite	ge
    100c:	6563      	strge	r3, [r4, #84]	@ 0x54
    100e:	81a3      	strhlt	r3, [r4, #12]
    1010:	bd10      	pop	{r4, pc}

00001012 <__seofread>:
    1012:	2000      	movs	r0, #0
    1014:	4770      	bx	lr

00001016 <__swrite>:
    1016:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    101a:	461f      	mov	r7, r3
    101c:	898b      	ldrh	r3, [r1, #12]
    101e:	05db      	lsls	r3, r3, #23
    1020:	4605      	mov	r5, r0
    1022:	460c      	mov	r4, r1
    1024:	4616      	mov	r6, r2
    1026:	d505      	bpl.n	1034 <__swrite+0x1e>
    1028:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    102c:	2302      	movs	r3, #2
    102e:	2200      	movs	r2, #0
    1030:	f000 f92e 	bl	1290 <_lseek_r>
    1034:	89a3      	ldrh	r3, [r4, #12]
    1036:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
    103a:	f423 5380 	bic.w	r3, r3, #4096	@ 0x1000
    103e:	81a3      	strh	r3, [r4, #12]
    1040:	4632      	mov	r2, r6
    1042:	463b      	mov	r3, r7
    1044:	4628      	mov	r0, r5
    1046:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
    104a:	f000 b955 	b.w	12f8 <_write_r>

0000104e <__sseek>:
    104e:	b510      	push	{r4, lr}
    1050:	460c      	mov	r4, r1
    1052:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    1056:	f000 f91b 	bl	1290 <_lseek_r>
    105a:	1c43      	adds	r3, r0, #1
    105c:	89a3      	ldrh	r3, [r4, #12]
    105e:	bf15      	itete	ne
    1060:	6560      	strne	r0, [r4, #84]	@ 0x54
    1062:	f423 5380 	biceq.w	r3, r3, #4096	@ 0x1000
    1066:	f443 5380 	orrne.w	r3, r3, #4096	@ 0x1000
    106a:	81a3      	strheq	r3, [r4, #12]
    106c:	bf18      	it	ne
    106e:	81a3      	strhne	r3, [r4, #12]
    1070:	bd10      	pop	{r4, pc}

00001072 <__sclose>:
    1072:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    1076:	f000 b8a5 	b.w	11c4 <_close_r>

0000107a <__swbuf_r>:
    107a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    107c:	460e      	mov	r6, r1
    107e:	4614      	mov	r4, r2
    1080:	4605      	mov	r5, r0
    1082:	b118      	cbz	r0, 108c <__swbuf_r+0x12>
    1084:	6a03      	ldr	r3, [r0, #32]
    1086:	b90b      	cbnz	r3, 108c <__swbuf_r+0x12>
    1088:	f7ff fe7e 	bl	d88 <__sinit>
    108c:	69a3      	ldr	r3, [r4, #24]
    108e:	60a3      	str	r3, [r4, #8]
    1090:	89a3      	ldrh	r3, [r4, #12]
    1092:	071a      	lsls	r2, r3, #28
    1094:	d501      	bpl.n	109a <__swbuf_r+0x20>
    1096:	6923      	ldr	r3, [r4, #16]
    1098:	b943      	cbnz	r3, 10ac <__swbuf_r+0x32>
    109a:	4621      	mov	r1, r4
    109c:	4628      	mov	r0, r5
    109e:	f000 f833 	bl	1108 <__swsetup_r>
    10a2:	b118      	cbz	r0, 10ac <__swbuf_r+0x32>
    10a4:	f04f 37ff 	mov.w	r7, #4294967295
    10a8:	4638      	mov	r0, r7
    10aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    10ac:	6823      	ldr	r3, [r4, #0]
    10ae:	6922      	ldr	r2, [r4, #16]
    10b0:	1a98      	subs	r0, r3, r2
    10b2:	6963      	ldr	r3, [r4, #20]
    10b4:	b2f6      	uxtb	r6, r6
    10b6:	4283      	cmp	r3, r0
    10b8:	4637      	mov	r7, r6
    10ba:	dc05      	bgt.n	10c8 <__swbuf_r+0x4e>
    10bc:	4621      	mov	r1, r4
    10be:	4628      	mov	r0, r5
    10c0:	f000 fa26 	bl	1510 <_fflush_r>
    10c4:	2800      	cmp	r0, #0
    10c6:	d1ed      	bne.n	10a4 <__swbuf_r+0x2a>
    10c8:	68a3      	ldr	r3, [r4, #8]
    10ca:	3b01      	subs	r3, #1
    10cc:	60a3      	str	r3, [r4, #8]
    10ce:	6823      	ldr	r3, [r4, #0]
    10d0:	1c5a      	adds	r2, r3, #1
    10d2:	6022      	str	r2, [r4, #0]
    10d4:	701e      	strb	r6, [r3, #0]
    10d6:	6962      	ldr	r2, [r4, #20]
    10d8:	1c43      	adds	r3, r0, #1
    10da:	429a      	cmp	r2, r3
    10dc:	d004      	beq.n	10e8 <__swbuf_r+0x6e>
    10de:	89a3      	ldrh	r3, [r4, #12]
    10e0:	07db      	lsls	r3, r3, #31
    10e2:	d5e1      	bpl.n	10a8 <__swbuf_r+0x2e>
    10e4:	2e0a      	cmp	r6, #10
    10e6:	d1df      	bne.n	10a8 <__swbuf_r+0x2e>
    10e8:	4621      	mov	r1, r4
    10ea:	4628      	mov	r0, r5
    10ec:	f000 fa10 	bl	1510 <_fflush_r>
    10f0:	2800      	cmp	r0, #0
    10f2:	d0d9      	beq.n	10a8 <__swbuf_r+0x2e>
    10f4:	e7d6      	b.n	10a4 <__swbuf_r+0x2a>
	...

000010f8 <__swbuf>:
    10f8:	4b02      	ldr	r3, [pc, #8]	@ (1104 <__swbuf+0xc>)
    10fa:	460a      	mov	r2, r1
    10fc:	4601      	mov	r1, r0
    10fe:	6818      	ldr	r0, [r3, #0]
    1100:	f7ff bfbb 	b.w	107a <__swbuf_r>
    1104:	2000029c 	.word	0x2000029c

00001108 <__swsetup_r>:
    1108:	b538      	push	{r3, r4, r5, lr}
    110a:	4b29      	ldr	r3, [pc, #164]	@ (11b0 <__swsetup_r+0xa8>)
    110c:	4605      	mov	r5, r0
    110e:	6818      	ldr	r0, [r3, #0]
    1110:	460c      	mov	r4, r1
    1112:	b118      	cbz	r0, 111c <__swsetup_r+0x14>
    1114:	6a03      	ldr	r3, [r0, #32]
    1116:	b90b      	cbnz	r3, 111c <__swsetup_r+0x14>
    1118:	f7ff fe36 	bl	d88 <__sinit>
    111c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    1120:	0719      	lsls	r1, r3, #28
    1122:	d422      	bmi.n	116a <__swsetup_r+0x62>
    1124:	06da      	lsls	r2, r3, #27
    1126:	d407      	bmi.n	1138 <__swsetup_r+0x30>
    1128:	2209      	movs	r2, #9
    112a:	602a      	str	r2, [r5, #0]
    112c:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
    1130:	81a3      	strh	r3, [r4, #12]
    1132:	f04f 30ff 	mov.w	r0, #4294967295
    1136:	e033      	b.n	11a0 <__swsetup_r+0x98>
    1138:	0758      	lsls	r0, r3, #29
    113a:	d512      	bpl.n	1162 <__swsetup_r+0x5a>
    113c:	6b61      	ldr	r1, [r4, #52]	@ 0x34
    113e:	b141      	cbz	r1, 1152 <__swsetup_r+0x4a>
    1140:	f104 0344 	add.w	r3, r4, #68	@ 0x44
    1144:	4299      	cmp	r1, r3
    1146:	d002      	beq.n	114e <__swsetup_r+0x46>
    1148:	4628      	mov	r0, r5
    114a:	f000 f917 	bl	137c <_free_r>
    114e:	2300      	movs	r3, #0
    1150:	6363      	str	r3, [r4, #52]	@ 0x34
    1152:	89a3      	ldrh	r3, [r4, #12]
    1154:	f023 0324 	bic.w	r3, r3, #36	@ 0x24
    1158:	81a3      	strh	r3, [r4, #12]
    115a:	2300      	movs	r3, #0
    115c:	6063      	str	r3, [r4, #4]
    115e:	6923      	ldr	r3, [r4, #16]
    1160:	6023      	str	r3, [r4, #0]
    1162:	89a3      	ldrh	r3, [r4, #12]
    1164:	f043 0308 	orr.w	r3, r3, #8
    1168:	81a3      	strh	r3, [r4, #12]
    116a:	6923      	ldr	r3, [r4, #16]
    116c:	b94b      	cbnz	r3, 1182 <__swsetup_r+0x7a>
    116e:	89a3      	ldrh	r3, [r4, #12]
    1170:	f403 7320 	and.w	r3, r3, #640	@ 0x280
    1174:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
    1178:	d003      	beq.n	1182 <__swsetup_r+0x7a>
    117a:	4621      	mov	r1, r4
    117c:	4628      	mov	r0, r5
    117e:	f000 fa29 	bl	15d4 <__smakebuf_r>
    1182:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    1186:	f013 0201 	ands.w	r2, r3, #1
    118a:	d00a      	beq.n	11a2 <__swsetup_r+0x9a>
    118c:	2200      	movs	r2, #0
    118e:	60a2      	str	r2, [r4, #8]
    1190:	6962      	ldr	r2, [r4, #20]
    1192:	4252      	negs	r2, r2
    1194:	61a2      	str	r2, [r4, #24]
    1196:	6922      	ldr	r2, [r4, #16]
    1198:	b942      	cbnz	r2, 11ac <__swsetup_r+0xa4>
    119a:	f013 0080 	ands.w	r0, r3, #128	@ 0x80
    119e:	d1c5      	bne.n	112c <__swsetup_r+0x24>
    11a0:	bd38      	pop	{r3, r4, r5, pc}
    11a2:	0799      	lsls	r1, r3, #30
    11a4:	bf58      	it	pl
    11a6:	6962      	ldrpl	r2, [r4, #20]
    11a8:	60a2      	str	r2, [r4, #8]
    11aa:	e7f4      	b.n	1196 <__swsetup_r+0x8e>
    11ac:	2000      	movs	r0, #0
    11ae:	e7f7      	b.n	11a0 <__swsetup_r+0x98>
    11b0:	2000029c 	.word	0x2000029c

000011b4 <memset>:
    11b4:	4402      	add	r2, r0
    11b6:	4603      	mov	r3, r0
    11b8:	4293      	cmp	r3, r2
    11ba:	d100      	bne.n	11be <memset+0xa>
    11bc:	4770      	bx	lr
    11be:	f803 1b01 	strb.w	r1, [r3], #1
    11c2:	e7f9      	b.n	11b8 <memset+0x4>

000011c4 <_close_r>:
    11c4:	b538      	push	{r3, r4, r5, lr}
    11c6:	4d06      	ldr	r5, [pc, #24]	@ (11e0 <_close_r+0x1c>)
    11c8:	2300      	movs	r3, #0
    11ca:	4604      	mov	r4, r0
    11cc:	4608      	mov	r0, r1
    11ce:	602b      	str	r3, [r5, #0]
    11d0:	f000 fbdc 	bl	198c <_close>
    11d4:	1c43      	adds	r3, r0, #1
    11d6:	d102      	bne.n	11de <_close_r+0x1a>
    11d8:	682b      	ldr	r3, [r5, #0]
    11da:	b103      	cbz	r3, 11de <_close_r+0x1a>
    11dc:	6023      	str	r3, [r4, #0]
    11de:	bd38      	pop	{r3, r4, r5, pc}
    11e0:	20000534 	.word	0x20000534

000011e4 <_reclaim_reent>:
    11e4:	4b29      	ldr	r3, [pc, #164]	@ (128c <_reclaim_reent+0xa8>)
    11e6:	681b      	ldr	r3, [r3, #0]
    11e8:	4283      	cmp	r3, r0
    11ea:	b570      	push	{r4, r5, r6, lr}
    11ec:	4604      	mov	r4, r0
    11ee:	d04b      	beq.n	1288 <_reclaim_reent+0xa4>
    11f0:	69c3      	ldr	r3, [r0, #28]
    11f2:	b1ab      	cbz	r3, 1220 <_reclaim_reent+0x3c>
    11f4:	68db      	ldr	r3, [r3, #12]
    11f6:	b16b      	cbz	r3, 1214 <_reclaim_reent+0x30>
    11f8:	2500      	movs	r5, #0
    11fa:	69e3      	ldr	r3, [r4, #28]
    11fc:	68db      	ldr	r3, [r3, #12]
    11fe:	5959      	ldr	r1, [r3, r5]
    1200:	2900      	cmp	r1, #0
    1202:	d13b      	bne.n	127c <_reclaim_reent+0x98>
    1204:	3504      	adds	r5, #4
    1206:	2d80      	cmp	r5, #128	@ 0x80
    1208:	d1f7      	bne.n	11fa <_reclaim_reent+0x16>
    120a:	69e3      	ldr	r3, [r4, #28]
    120c:	4620      	mov	r0, r4
    120e:	68d9      	ldr	r1, [r3, #12]
    1210:	f000 f8b4 	bl	137c <_free_r>
    1214:	69e3      	ldr	r3, [r4, #28]
    1216:	6819      	ldr	r1, [r3, #0]
    1218:	b111      	cbz	r1, 1220 <_reclaim_reent+0x3c>
    121a:	4620      	mov	r0, r4
    121c:	f000 f8ae 	bl	137c <_free_r>
    1220:	6961      	ldr	r1, [r4, #20]
    1222:	b111      	cbz	r1, 122a <_reclaim_reent+0x46>
    1224:	4620      	mov	r0, r4
    1226:	f000 f8a9 	bl	137c <_free_r>
    122a:	69e1      	ldr	r1, [r4, #28]
    122c:	b111      	cbz	r1, 1234 <_reclaim_reent+0x50>
    122e:	4620      	mov	r0, r4
    1230:	f000 f8a4 	bl	137c <_free_r>
    1234:	6b21      	ldr	r1, [r4, #48]	@ 0x30
    1236:	b111      	cbz	r1, 123e <_reclaim_reent+0x5a>
    1238:	4620      	mov	r0, r4
    123a:	f000 f89f 	bl	137c <_free_r>
    123e:	6b61      	ldr	r1, [r4, #52]	@ 0x34
    1240:	b111      	cbz	r1, 1248 <_reclaim_reent+0x64>
    1242:	4620      	mov	r0, r4
    1244:	f000 f89a 	bl	137c <_free_r>
    1248:	6ba1      	ldr	r1, [r4, #56]	@ 0x38
    124a:	b111      	cbz	r1, 1252 <_reclaim_reent+0x6e>
    124c:	4620      	mov	r0, r4
    124e:	f000 f895 	bl	137c <_free_r>
    1252:	6ca1      	ldr	r1, [r4, #72]	@ 0x48
    1254:	b111      	cbz	r1, 125c <_reclaim_reent+0x78>
    1256:	4620      	mov	r0, r4
    1258:	f000 f890 	bl	137c <_free_r>
    125c:	6c61      	ldr	r1, [r4, #68]	@ 0x44
    125e:	b111      	cbz	r1, 1266 <_reclaim_reent+0x82>
    1260:	4620      	mov	r0, r4
    1262:	f000 f88b 	bl	137c <_free_r>
    1266:	6ae1      	ldr	r1, [r4, #44]	@ 0x2c
    1268:	b111      	cbz	r1, 1270 <_reclaim_reent+0x8c>
    126a:	4620      	mov	r0, r4
    126c:	f000 f886 	bl	137c <_free_r>
    1270:	6a23      	ldr	r3, [r4, #32]
    1272:	b14b      	cbz	r3, 1288 <_reclaim_reent+0xa4>
    1274:	4620      	mov	r0, r4
    1276:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    127a:	4718      	bx	r3
    127c:	680e      	ldr	r6, [r1, #0]
    127e:	4620      	mov	r0, r4
    1280:	f000 f87c 	bl	137c <_free_r>
    1284:	4631      	mov	r1, r6
    1286:	e7bb      	b.n	1200 <_reclaim_reent+0x1c>
    1288:	bd70      	pop	{r4, r5, r6, pc}
    128a:	bf00      	nop
    128c:	2000029c 	.word	0x2000029c

00001290 <_lseek_r>:
    1290:	b538      	push	{r3, r4, r5, lr}
    1292:	4d07      	ldr	r5, [pc, #28]	@ (12b0 <_lseek_r+0x20>)
    1294:	4604      	mov	r4, r0
    1296:	4608      	mov	r0, r1
    1298:	4611      	mov	r1, r2
    129a:	2200      	movs	r2, #0
    129c:	602a      	str	r2, [r5, #0]
    129e:	461a      	mov	r2, r3
    12a0:	f000 fb35 	bl	190e <_lseek>
    12a4:	1c43      	adds	r3, r0, #1
    12a6:	d102      	bne.n	12ae <_lseek_r+0x1e>
    12a8:	682b      	ldr	r3, [r5, #0]
    12aa:	b103      	cbz	r3, 12ae <_lseek_r+0x1e>
    12ac:	6023      	str	r3, [r4, #0]
    12ae:	bd38      	pop	{r3, r4, r5, pc}
    12b0:	20000534 	.word	0x20000534

000012b4 <_read_r>:
    12b4:	b538      	push	{r3, r4, r5, lr}
    12b6:	4d07      	ldr	r5, [pc, #28]	@ (12d4 <_read_r+0x20>)
    12b8:	4604      	mov	r4, r0
    12ba:	4608      	mov	r0, r1
    12bc:	4611      	mov	r1, r2
    12be:	2200      	movs	r2, #0
    12c0:	602a      	str	r2, [r5, #0]
    12c2:	461a      	mov	r2, r3
    12c4:	f000 facd 	bl	1862 <_read>
    12c8:	1c43      	adds	r3, r0, #1
    12ca:	d102      	bne.n	12d2 <_read_r+0x1e>
    12cc:	682b      	ldr	r3, [r5, #0]
    12ce:	b103      	cbz	r3, 12d2 <_read_r+0x1e>
    12d0:	6023      	str	r3, [r4, #0]
    12d2:	bd38      	pop	{r3, r4, r5, pc}
    12d4:	20000534 	.word	0x20000534

000012d8 <_sbrk_r>:
    12d8:	b538      	push	{r3, r4, r5, lr}
    12da:	4d06      	ldr	r5, [pc, #24]	@ (12f4 <_sbrk_r+0x1c>)
    12dc:	2300      	movs	r3, #0
    12de:	4604      	mov	r4, r0
    12e0:	4608      	mov	r0, r1
    12e2:	602b      	str	r3, [r5, #0]
    12e4:	f000 fb76 	bl	19d4 <_sbrk>
    12e8:	1c43      	adds	r3, r0, #1
    12ea:	d102      	bne.n	12f2 <_sbrk_r+0x1a>
    12ec:	682b      	ldr	r3, [r5, #0]
    12ee:	b103      	cbz	r3, 12f2 <_sbrk_r+0x1a>
    12f0:	6023      	str	r3, [r4, #0]
    12f2:	bd38      	pop	{r3, r4, r5, pc}
    12f4:	20000534 	.word	0x20000534

000012f8 <_write_r>:
    12f8:	b538      	push	{r3, r4, r5, lr}
    12fa:	4d07      	ldr	r5, [pc, #28]	@ (1318 <_write_r+0x20>)
    12fc:	4604      	mov	r4, r0
    12fe:	4608      	mov	r0, r1
    1300:	4611      	mov	r1, r2
    1302:	2200      	movs	r2, #0
    1304:	602a      	str	r2, [r5, #0]
    1306:	461a      	mov	r2, r3
    1308:	f000 fb13 	bl	1932 <_write>
    130c:	1c43      	adds	r3, r0, #1
    130e:	d102      	bne.n	1316 <_write_r+0x1e>
    1310:	682b      	ldr	r3, [r5, #0]
    1312:	b103      	cbz	r3, 1316 <_write_r+0x1e>
    1314:	6023      	str	r3, [r4, #0]
    1316:	bd38      	pop	{r3, r4, r5, pc}
    1318:	20000534 	.word	0x20000534

0000131c <__libc_init_array>:
    131c:	b570      	push	{r4, r5, r6, lr}
    131e:	4d0d      	ldr	r5, [pc, #52]	@ (1354 <__libc_init_array+0x38>)
    1320:	4c0d      	ldr	r4, [pc, #52]	@ (1358 <__libc_init_array+0x3c>)
    1322:	1b64      	subs	r4, r4, r5
    1324:	10a4      	asrs	r4, r4, #2
    1326:	2600      	movs	r6, #0
    1328:	42a6      	cmp	r6, r4
    132a:	d109      	bne.n	1340 <__libc_init_array+0x24>
    132c:	4d0b      	ldr	r5, [pc, #44]	@ (135c <__libc_init_array+0x40>)
    132e:	4c0c      	ldr	r4, [pc, #48]	@ (1360 <__libc_init_array+0x44>)
    1330:	f000 fdb6 	bl	1ea0 <_init>
    1334:	1b64      	subs	r4, r4, r5
    1336:	10a4      	asrs	r4, r4, #2
    1338:	2600      	movs	r6, #0
    133a:	42a6      	cmp	r6, r4
    133c:	d105      	bne.n	134a <__libc_init_array+0x2e>
    133e:	bd70      	pop	{r4, r5, r6, pc}
    1340:	f855 3b04 	ldr.w	r3, [r5], #4
    1344:	4798      	blx	r3
    1346:	3601      	adds	r6, #1
    1348:	e7ee      	b.n	1328 <__libc_init_array+0xc>
    134a:	f855 3b04 	ldr.w	r3, [r5], #4
    134e:	4798      	blx	r3
    1350:	3601      	adds	r6, #1
    1352:	e7f2      	b.n	133a <__libc_init_array+0x1e>
    1354:	200002f8 	.word	0x200002f8
    1358:	200002f8 	.word	0x200002f8
    135c:	200002f8 	.word	0x200002f8
    1360:	200002fc 	.word	0x200002fc

00001364 <__retarget_lock_init>:
    1364:	4770      	bx	lr

00001366 <__retarget_lock_init_recursive>:
    1366:	4770      	bx	lr

00001368 <__retarget_lock_close>:
    1368:	4770      	bx	lr

0000136a <__retarget_lock_close_recursive>:
    136a:	4770      	bx	lr

0000136c <__retarget_lock_acquire>:
    136c:	4770      	bx	lr

0000136e <__retarget_lock_acquire_recursive>:
    136e:	4770      	bx	lr

00001370 <__retarget_lock_try_acquire>:
    1370:	2001      	movs	r0, #1
    1372:	4770      	bx	lr

00001374 <__retarget_lock_try_acquire_recursive>:
    1374:	2001      	movs	r0, #1
    1376:	4770      	bx	lr

00001378 <__retarget_lock_release>:
    1378:	4770      	bx	lr

0000137a <__retarget_lock_release_recursive>:
    137a:	4770      	bx	lr

0000137c <_free_r>:
    137c:	b538      	push	{r3, r4, r5, lr}
    137e:	4605      	mov	r5, r0
    1380:	2900      	cmp	r1, #0
    1382:	d041      	beq.n	1408 <_free_r+0x8c>
    1384:	f851 3c04 	ldr.w	r3, [r1, #-4]
    1388:	1f0c      	subs	r4, r1, #4
    138a:	2b00      	cmp	r3, #0
    138c:	bfb8      	it	lt
    138e:	18e4      	addlt	r4, r4, r3
    1390:	f7ff fbc4 	bl	b1c <__malloc_lock>
    1394:	4a1d      	ldr	r2, [pc, #116]	@ (140c <_free_r+0x90>)
    1396:	6813      	ldr	r3, [r2, #0]
    1398:	b933      	cbnz	r3, 13a8 <_free_r+0x2c>
    139a:	6063      	str	r3, [r4, #4]
    139c:	6014      	str	r4, [r2, #0]
    139e:	4628      	mov	r0, r5
    13a0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    13a4:	f7ff bbc0 	b.w	b28 <__malloc_unlock>
    13a8:	42a3      	cmp	r3, r4
    13aa:	d908      	bls.n	13be <_free_r+0x42>
    13ac:	6820      	ldr	r0, [r4, #0]
    13ae:	1821      	adds	r1, r4, r0
    13b0:	428b      	cmp	r3, r1
    13b2:	bf01      	itttt	eq
    13b4:	6819      	ldreq	r1, [r3, #0]
    13b6:	685b      	ldreq	r3, [r3, #4]
    13b8:	1809      	addeq	r1, r1, r0
    13ba:	6021      	streq	r1, [r4, #0]
    13bc:	e7ed      	b.n	139a <_free_r+0x1e>
    13be:	461a      	mov	r2, r3
    13c0:	685b      	ldr	r3, [r3, #4]
    13c2:	b10b      	cbz	r3, 13c8 <_free_r+0x4c>
    13c4:	42a3      	cmp	r3, r4
    13c6:	d9fa      	bls.n	13be <_free_r+0x42>
    13c8:	6811      	ldr	r1, [r2, #0]
    13ca:	1850      	adds	r0, r2, r1
    13cc:	42a0      	cmp	r0, r4
    13ce:	d10b      	bne.n	13e8 <_free_r+0x6c>
    13d0:	6820      	ldr	r0, [r4, #0]
    13d2:	4401      	add	r1, r0
    13d4:	1850      	adds	r0, r2, r1
    13d6:	4283      	cmp	r3, r0
    13d8:	6011      	str	r1, [r2, #0]
    13da:	d1e0      	bne.n	139e <_free_r+0x22>
    13dc:	6818      	ldr	r0, [r3, #0]
    13de:	685b      	ldr	r3, [r3, #4]
    13e0:	6053      	str	r3, [r2, #4]
    13e2:	4408      	add	r0, r1
    13e4:	6010      	str	r0, [r2, #0]
    13e6:	e7da      	b.n	139e <_free_r+0x22>
    13e8:	d902      	bls.n	13f0 <_free_r+0x74>
    13ea:	230c      	movs	r3, #12
    13ec:	602b      	str	r3, [r5, #0]
    13ee:	e7d6      	b.n	139e <_free_r+0x22>
    13f0:	6820      	ldr	r0, [r4, #0]
    13f2:	1821      	adds	r1, r4, r0
    13f4:	428b      	cmp	r3, r1
    13f6:	bf04      	itt	eq
    13f8:	6819      	ldreq	r1, [r3, #0]
    13fa:	685b      	ldreq	r3, [r3, #4]
    13fc:	6063      	str	r3, [r4, #4]
    13fe:	bf04      	itt	eq
    1400:	1809      	addeq	r1, r1, r0
    1402:	6021      	streq	r1, [r4, #0]
    1404:	6054      	str	r4, [r2, #4]
    1406:	e7ca      	b.n	139e <_free_r+0x22>
    1408:	bd38      	pop	{r3, r4, r5, pc}
    140a:	bf00      	nop
    140c:	200003f4 	.word	0x200003f4

00001410 <__sflush_r>:
    1410:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
    1414:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1416:	0717      	lsls	r7, r2, #28
    1418:	4605      	mov	r5, r0
    141a:	460c      	mov	r4, r1
    141c:	d456      	bmi.n	14cc <__sflush_r+0xbc>
    141e:	684b      	ldr	r3, [r1, #4]
    1420:	2b00      	cmp	r3, #0
    1422:	dc02      	bgt.n	142a <__sflush_r+0x1a>
    1424:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
    1426:	2b00      	cmp	r3, #0
    1428:	dd3d      	ble.n	14a6 <__sflush_r+0x96>
    142a:	6ae6      	ldr	r6, [r4, #44]	@ 0x2c
    142c:	2e00      	cmp	r6, #0
    142e:	d03a      	beq.n	14a6 <__sflush_r+0x96>
    1430:	2300      	movs	r3, #0
    1432:	f412 5280 	ands.w	r2, r2, #4096	@ 0x1000
    1436:	682f      	ldr	r7, [r5, #0]
    1438:	6a21      	ldr	r1, [r4, #32]
    143a:	602b      	str	r3, [r5, #0]
    143c:	d025      	beq.n	148a <__sflush_r+0x7a>
    143e:	6d62      	ldr	r2, [r4, #84]	@ 0x54
    1440:	89a3      	ldrh	r3, [r4, #12]
    1442:	0758      	lsls	r0, r3, #29
    1444:	d505      	bpl.n	1452 <__sflush_r+0x42>
    1446:	6863      	ldr	r3, [r4, #4]
    1448:	1ad2      	subs	r2, r2, r3
    144a:	6b63      	ldr	r3, [r4, #52]	@ 0x34
    144c:	b10b      	cbz	r3, 1452 <__sflush_r+0x42>
    144e:	6c23      	ldr	r3, [r4, #64]	@ 0x40
    1450:	1ad2      	subs	r2, r2, r3
    1452:	6a21      	ldr	r1, [r4, #32]
    1454:	6ae6      	ldr	r6, [r4, #44]	@ 0x2c
    1456:	2300      	movs	r3, #0
    1458:	4628      	mov	r0, r5
    145a:	47b0      	blx	r6
    145c:	1c41      	adds	r1, r0, #1
    145e:	d024      	beq.n	14aa <__sflush_r+0x9a>
    1460:	2300      	movs	r3, #0
    1462:	6063      	str	r3, [r4, #4]
    1464:	6923      	ldr	r3, [r4, #16]
    1466:	6023      	str	r3, [r4, #0]
    1468:	89a3      	ldrh	r3, [r4, #12]
    146a:	04da      	lsls	r2, r3, #19
    146c:	d500      	bpl.n	1470 <__sflush_r+0x60>
    146e:	6560      	str	r0, [r4, #84]	@ 0x54
    1470:	6b61      	ldr	r1, [r4, #52]	@ 0x34
    1472:	602f      	str	r7, [r5, #0]
    1474:	b1b9      	cbz	r1, 14a6 <__sflush_r+0x96>
    1476:	f104 0344 	add.w	r3, r4, #68	@ 0x44
    147a:	4299      	cmp	r1, r3
    147c:	d002      	beq.n	1484 <__sflush_r+0x74>
    147e:	4628      	mov	r0, r5
    1480:	f7ff ff7c 	bl	137c <_free_r>
    1484:	2300      	movs	r3, #0
    1486:	6363      	str	r3, [r4, #52]	@ 0x34
    1488:	e00d      	b.n	14a6 <__sflush_r+0x96>
    148a:	2301      	movs	r3, #1
    148c:	4628      	mov	r0, r5
    148e:	47b0      	blx	r6
    1490:	1c46      	adds	r6, r0, #1
    1492:	4602      	mov	r2, r0
    1494:	d1d4      	bne.n	1440 <__sflush_r+0x30>
    1496:	682b      	ldr	r3, [r5, #0]
    1498:	2b00      	cmp	r3, #0
    149a:	d0d1      	beq.n	1440 <__sflush_r+0x30>
    149c:	2b1d      	cmp	r3, #29
    149e:	d001      	beq.n	14a4 <__sflush_r+0x94>
    14a0:	2b16      	cmp	r3, #22
    14a2:	d12a      	bne.n	14fa <__sflush_r+0xea>
    14a4:	602f      	str	r7, [r5, #0]
    14a6:	2000      	movs	r0, #0
    14a8:	e02e      	b.n	1508 <__sflush_r+0xf8>
    14aa:	682a      	ldr	r2, [r5, #0]
    14ac:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    14b0:	b142      	cbz	r2, 14c4 <__sflush_r+0xb4>
    14b2:	2a1d      	cmp	r2, #29
    14b4:	d001      	beq.n	14ba <__sflush_r+0xaa>
    14b6:	2a16      	cmp	r2, #22
    14b8:	d121      	bne.n	14fe <__sflush_r+0xee>
    14ba:	2300      	movs	r3, #0
    14bc:	6063      	str	r3, [r4, #4]
    14be:	6923      	ldr	r3, [r4, #16]
    14c0:	6023      	str	r3, [r4, #0]
    14c2:	e7d5      	b.n	1470 <__sflush_r+0x60>
    14c4:	6062      	str	r2, [r4, #4]
    14c6:	6922      	ldr	r2, [r4, #16]
    14c8:	6022      	str	r2, [r4, #0]
    14ca:	e7ce      	b.n	146a <__sflush_r+0x5a>
    14cc:	690f      	ldr	r7, [r1, #16]
    14ce:	2f00      	cmp	r7, #0
    14d0:	d0e9      	beq.n	14a6 <__sflush_r+0x96>
    14d2:	0793      	lsls	r3, r2, #30
    14d4:	680e      	ldr	r6, [r1, #0]
    14d6:	bf08      	it	eq
    14d8:	694b      	ldreq	r3, [r1, #20]
    14da:	600f      	str	r7, [r1, #0]
    14dc:	bf18      	it	ne
    14de:	2300      	movne	r3, #0
    14e0:	1bf6      	subs	r6, r6, r7
    14e2:	608b      	str	r3, [r1, #8]
    14e4:	2e00      	cmp	r6, #0
    14e6:	ddde      	ble.n	14a6 <__sflush_r+0x96>
    14e8:	6a21      	ldr	r1, [r4, #32]
    14ea:	f8d4 c028 	ldr.w	ip, [r4, #40]	@ 0x28
    14ee:	4633      	mov	r3, r6
    14f0:	463a      	mov	r2, r7
    14f2:	4628      	mov	r0, r5
    14f4:	47e0      	blx	ip
    14f6:	2800      	cmp	r0, #0
    14f8:	dc07      	bgt.n	150a <__sflush_r+0xfa>
    14fa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    14fe:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
    1502:	81a3      	strh	r3, [r4, #12]
    1504:	f04f 30ff 	mov.w	r0, #4294967295
    1508:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    150a:	4407      	add	r7, r0
    150c:	1a36      	subs	r6, r6, r0
    150e:	e7e9      	b.n	14e4 <__sflush_r+0xd4>

00001510 <_fflush_r>:
    1510:	b538      	push	{r3, r4, r5, lr}
    1512:	690b      	ldr	r3, [r1, #16]
    1514:	4605      	mov	r5, r0
    1516:	460c      	mov	r4, r1
    1518:	b913      	cbnz	r3, 1520 <_fflush_r+0x10>
    151a:	2500      	movs	r5, #0
    151c:	4628      	mov	r0, r5
    151e:	bd38      	pop	{r3, r4, r5, pc}
    1520:	b118      	cbz	r0, 152a <_fflush_r+0x1a>
    1522:	6a03      	ldr	r3, [r0, #32]
    1524:	b90b      	cbnz	r3, 152a <_fflush_r+0x1a>
    1526:	f7ff fc2f 	bl	d88 <__sinit>
    152a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    152e:	2b00      	cmp	r3, #0
    1530:	d0f3      	beq.n	151a <_fflush_r+0xa>
    1532:	6e62      	ldr	r2, [r4, #100]	@ 0x64
    1534:	07d0      	lsls	r0, r2, #31
    1536:	d404      	bmi.n	1542 <_fflush_r+0x32>
    1538:	0599      	lsls	r1, r3, #22
    153a:	d402      	bmi.n	1542 <_fflush_r+0x32>
    153c:	6da0      	ldr	r0, [r4, #88]	@ 0x58
    153e:	f7ff ff16 	bl	136e <__retarget_lock_acquire_recursive>
    1542:	4628      	mov	r0, r5
    1544:	4621      	mov	r1, r4
    1546:	f7ff ff63 	bl	1410 <__sflush_r>
    154a:	6e63      	ldr	r3, [r4, #100]	@ 0x64
    154c:	07da      	lsls	r2, r3, #31
    154e:	4605      	mov	r5, r0
    1550:	d4e4      	bmi.n	151c <_fflush_r+0xc>
    1552:	89a3      	ldrh	r3, [r4, #12]
    1554:	059b      	lsls	r3, r3, #22
    1556:	d4e1      	bmi.n	151c <_fflush_r+0xc>
    1558:	6da0      	ldr	r0, [r4, #88]	@ 0x58
    155a:	f7ff ff0e 	bl	137a <__retarget_lock_release_recursive>
    155e:	e7dd      	b.n	151c <_fflush_r+0xc>

00001560 <fflush>:
    1560:	4601      	mov	r1, r0
    1562:	b920      	cbnz	r0, 156e <fflush+0xe>
    1564:	4a04      	ldr	r2, [pc, #16]	@ (1578 <fflush+0x18>)
    1566:	4905      	ldr	r1, [pc, #20]	@ (157c <fflush+0x1c>)
    1568:	4805      	ldr	r0, [pc, #20]	@ (1580 <fflush+0x20>)
    156a:	f7ff bc6d 	b.w	e48 <_fwalk_sglue>
    156e:	4b05      	ldr	r3, [pc, #20]	@ (1584 <fflush+0x24>)
    1570:	6818      	ldr	r0, [r3, #0]
    1572:	f7ff bfcd 	b.w	1510 <_fflush_r>
    1576:	bf00      	nop
    1578:	20000290 	.word	0x20000290
    157c:	00001511 	.word	0x00001511
    1580:	200002a0 	.word	0x200002a0
    1584:	2000029c 	.word	0x2000029c

00001588 <__swhatbuf_r>:
    1588:	b570      	push	{r4, r5, r6, lr}
    158a:	460c      	mov	r4, r1
    158c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    1590:	2900      	cmp	r1, #0
    1592:	b096      	sub	sp, #88	@ 0x58
    1594:	4615      	mov	r5, r2
    1596:	461e      	mov	r6, r3
    1598:	da0d      	bge.n	15b6 <__swhatbuf_r+0x2e>
    159a:	89a3      	ldrh	r3, [r4, #12]
    159c:	f013 0f80 	tst.w	r3, #128	@ 0x80
    15a0:	f04f 0100 	mov.w	r1, #0
    15a4:	bf14      	ite	ne
    15a6:	2340      	movne	r3, #64	@ 0x40
    15a8:	f44f 6380 	moveq.w	r3, #1024	@ 0x400
    15ac:	2000      	movs	r0, #0
    15ae:	6031      	str	r1, [r6, #0]
    15b0:	602b      	str	r3, [r5, #0]
    15b2:	b016      	add	sp, #88	@ 0x58
    15b4:	bd70      	pop	{r4, r5, r6, pc}
    15b6:	466a      	mov	r2, sp
    15b8:	f000 f8ca 	bl	1750 <_fstat_r>
    15bc:	2800      	cmp	r0, #0
    15be:	dbec      	blt.n	159a <__swhatbuf_r+0x12>
    15c0:	9901      	ldr	r1, [sp, #4]
    15c2:	f401 4170 	and.w	r1, r1, #61440	@ 0xf000
    15c6:	f5a1 5300 	sub.w	r3, r1, #8192	@ 0x2000
    15ca:	4259      	negs	r1, r3
    15cc:	4159      	adcs	r1, r3
    15ce:	f44f 6380 	mov.w	r3, #1024	@ 0x400
    15d2:	e7eb      	b.n	15ac <__swhatbuf_r+0x24>

000015d4 <__smakebuf_r>:
    15d4:	898b      	ldrh	r3, [r1, #12]
    15d6:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
    15d8:	079d      	lsls	r5, r3, #30
    15da:	4606      	mov	r6, r0
    15dc:	460c      	mov	r4, r1
    15de:	d507      	bpl.n	15f0 <__smakebuf_r+0x1c>
    15e0:	f104 0347 	add.w	r3, r4, #71	@ 0x47
    15e4:	6023      	str	r3, [r4, #0]
    15e6:	6123      	str	r3, [r4, #16]
    15e8:	2301      	movs	r3, #1
    15ea:	6163      	str	r3, [r4, #20]
    15ec:	b003      	add	sp, #12
    15ee:	bdf0      	pop	{r4, r5, r6, r7, pc}
    15f0:	ab01      	add	r3, sp, #4
    15f2:	466a      	mov	r2, sp
    15f4:	f7ff ffc8 	bl	1588 <__swhatbuf_r>
    15f8:	9f00      	ldr	r7, [sp, #0]
    15fa:	4605      	mov	r5, r0
    15fc:	4639      	mov	r1, r7
    15fe:	4630      	mov	r0, r6
    1600:	f7ff fa0c 	bl	a1c <_malloc_r>
    1604:	b948      	cbnz	r0, 161a <__smakebuf_r+0x46>
    1606:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    160a:	059a      	lsls	r2, r3, #22
    160c:	d4ee      	bmi.n	15ec <__smakebuf_r+0x18>
    160e:	f023 0303 	bic.w	r3, r3, #3
    1612:	f043 0302 	orr.w	r3, r3, #2
    1616:	81a3      	strh	r3, [r4, #12]
    1618:	e7e2      	b.n	15e0 <__smakebuf_r+0xc>
    161a:	89a3      	ldrh	r3, [r4, #12]
    161c:	6020      	str	r0, [r4, #0]
    161e:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
    1622:	81a3      	strh	r3, [r4, #12]
    1624:	9b01      	ldr	r3, [sp, #4]
    1626:	e9c4 0704 	strd	r0, r7, [r4, #16]
    162a:	b15b      	cbz	r3, 1644 <__smakebuf_r+0x70>
    162c:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
    1630:	4630      	mov	r0, r6
    1632:	f000 f89f 	bl	1774 <_isatty_r>
    1636:	b128      	cbz	r0, 1644 <__smakebuf_r+0x70>
    1638:	89a3      	ldrh	r3, [r4, #12]
    163a:	f023 0303 	bic.w	r3, r3, #3
    163e:	f043 0301 	orr.w	r3, r3, #1
    1642:	81a3      	strh	r3, [r4, #12]
    1644:	89a3      	ldrh	r3, [r4, #12]
    1646:	431d      	orrs	r5, r3
    1648:	81a5      	strh	r5, [r4, #12]
    164a:	e7cf      	b.n	15ec <__smakebuf_r+0x18>

0000164c <lflush>:
    164c:	898b      	ldrh	r3, [r1, #12]
    164e:	f003 0309 	and.w	r3, r3, #9
    1652:	2b09      	cmp	r3, #9
    1654:	d103      	bne.n	165e <lflush+0x12>
    1656:	4b03      	ldr	r3, [pc, #12]	@ (1664 <lflush+0x18>)
    1658:	6818      	ldr	r0, [r3, #0]
    165a:	f7ff bf59 	b.w	1510 <_fflush_r>
    165e:	2000      	movs	r0, #0
    1660:	4770      	bx	lr
    1662:	bf00      	nop
    1664:	2000029c 	.word	0x2000029c

00001668 <__srefill_r>:
    1668:	b570      	push	{r4, r5, r6, lr}
    166a:	460c      	mov	r4, r1
    166c:	4605      	mov	r5, r0
    166e:	b118      	cbz	r0, 1678 <__srefill_r+0x10>
    1670:	6a03      	ldr	r3, [r0, #32]
    1672:	b90b      	cbnz	r3, 1678 <__srefill_r+0x10>
    1674:	f7ff fb88 	bl	d88 <__sinit>
    1678:	2300      	movs	r3, #0
    167a:	6063      	str	r3, [r4, #4]
    167c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    1680:	069e      	lsls	r6, r3, #26
    1682:	d408      	bmi.n	1696 <__srefill_r+0x2e>
    1684:	0758      	lsls	r0, r3, #29
    1686:	d445      	bmi.n	1714 <__srefill_r+0xac>
    1688:	06d9      	lsls	r1, r3, #27
    168a:	d407      	bmi.n	169c <__srefill_r+0x34>
    168c:	2209      	movs	r2, #9
    168e:	602a      	str	r2, [r5, #0]
    1690:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
    1694:	81a3      	strh	r3, [r4, #12]
    1696:	f04f 30ff 	mov.w	r0, #4294967295
    169a:	bd70      	pop	{r4, r5, r6, pc}
    169c:	071a      	lsls	r2, r3, #28
    169e:	d50b      	bpl.n	16b8 <__srefill_r+0x50>
    16a0:	4621      	mov	r1, r4
    16a2:	4628      	mov	r0, r5
    16a4:	f7ff ff34 	bl	1510 <_fflush_r>
    16a8:	2800      	cmp	r0, #0
    16aa:	d1f4      	bne.n	1696 <__srefill_r+0x2e>
    16ac:	89a3      	ldrh	r3, [r4, #12]
    16ae:	60a0      	str	r0, [r4, #8]
    16b0:	f023 0308 	bic.w	r3, r3, #8
    16b4:	81a3      	strh	r3, [r4, #12]
    16b6:	61a0      	str	r0, [r4, #24]
    16b8:	89a3      	ldrh	r3, [r4, #12]
    16ba:	f043 0304 	orr.w	r3, r3, #4
    16be:	81a3      	strh	r3, [r4, #12]
    16c0:	6923      	ldr	r3, [r4, #16]
    16c2:	b91b      	cbnz	r3, 16cc <__srefill_r+0x64>
    16c4:	4621      	mov	r1, r4
    16c6:	4628      	mov	r0, r5
    16c8:	f7ff ff84 	bl	15d4 <__smakebuf_r>
    16cc:	f9b4 600c 	ldrsh.w	r6, [r4, #12]
    16d0:	07b3      	lsls	r3, r6, #30
    16d2:	d00f      	beq.n	16f4 <__srefill_r+0x8c>
    16d4:	2301      	movs	r3, #1
    16d6:	4a1b      	ldr	r2, [pc, #108]	@ (1744 <__srefill_r+0xdc>)
    16d8:	491b      	ldr	r1, [pc, #108]	@ (1748 <__srefill_r+0xe0>)
    16da:	481c      	ldr	r0, [pc, #112]	@ (174c <__srefill_r+0xe4>)
    16dc:	81a3      	strh	r3, [r4, #12]
    16de:	f7ff fbb3 	bl	e48 <_fwalk_sglue>
    16e2:	81a6      	strh	r6, [r4, #12]
    16e4:	f006 0609 	and.w	r6, r6, #9
    16e8:	2e09      	cmp	r6, #9
    16ea:	d103      	bne.n	16f4 <__srefill_r+0x8c>
    16ec:	4621      	mov	r1, r4
    16ee:	4628      	mov	r0, r5
    16f0:	f7ff fe8e 	bl	1410 <__sflush_r>
    16f4:	6922      	ldr	r2, [r4, #16]
    16f6:	6a66      	ldr	r6, [r4, #36]	@ 0x24
    16f8:	6963      	ldr	r3, [r4, #20]
    16fa:	6a21      	ldr	r1, [r4, #32]
    16fc:	6022      	str	r2, [r4, #0]
    16fe:	4628      	mov	r0, r5
    1700:	47b0      	blx	r6
    1702:	2800      	cmp	r0, #0
    1704:	6060      	str	r0, [r4, #4]
    1706:	dc17      	bgt.n	1738 <__srefill_r+0xd0>
    1708:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    170c:	d116      	bne.n	173c <__srefill_r+0xd4>
    170e:	f043 0320 	orr.w	r3, r3, #32
    1712:	e7bf      	b.n	1694 <__srefill_r+0x2c>
    1714:	6b61      	ldr	r1, [r4, #52]	@ 0x34
    1716:	2900      	cmp	r1, #0
    1718:	d0d2      	beq.n	16c0 <__srefill_r+0x58>
    171a:	f104 0344 	add.w	r3, r4, #68	@ 0x44
    171e:	4299      	cmp	r1, r3
    1720:	d002      	beq.n	1728 <__srefill_r+0xc0>
    1722:	4628      	mov	r0, r5
    1724:	f7ff fe2a 	bl	137c <_free_r>
    1728:	2300      	movs	r3, #0
    172a:	6363      	str	r3, [r4, #52]	@ 0x34
    172c:	6c23      	ldr	r3, [r4, #64]	@ 0x40
    172e:	6063      	str	r3, [r4, #4]
    1730:	2b00      	cmp	r3, #0
    1732:	d0c5      	beq.n	16c0 <__srefill_r+0x58>
    1734:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
    1736:	6023      	str	r3, [r4, #0]
    1738:	2000      	movs	r0, #0
    173a:	e7ae      	b.n	169a <__srefill_r+0x32>
    173c:	2200      	movs	r2, #0
    173e:	6062      	str	r2, [r4, #4]
    1740:	e7a6      	b.n	1690 <__srefill_r+0x28>
    1742:	bf00      	nop
    1744:	20000290 	.word	0x20000290
    1748:	0000164d 	.word	0x0000164d
    174c:	200002a0 	.word	0x200002a0

00001750 <_fstat_r>:
    1750:	b538      	push	{r3, r4, r5, lr}
    1752:	4d07      	ldr	r5, [pc, #28]	@ (1770 <_fstat_r+0x20>)
    1754:	2300      	movs	r3, #0
    1756:	4604      	mov	r4, r0
    1758:	4608      	mov	r0, r1
    175a:	4611      	mov	r1, r2
    175c:	602b      	str	r3, [r5, #0]
    175e:	f000 f97e 	bl	1a5e <_fstat>
    1762:	1c43      	adds	r3, r0, #1
    1764:	d102      	bne.n	176c <_fstat_r+0x1c>
    1766:	682b      	ldr	r3, [r5, #0]
    1768:	b103      	cbz	r3, 176c <_fstat_r+0x1c>
    176a:	6023      	str	r3, [r4, #0]
    176c:	bd38      	pop	{r3, r4, r5, pc}
    176e:	bf00      	nop
    1770:	20000534 	.word	0x20000534

00001774 <_isatty_r>:
    1774:	b538      	push	{r3, r4, r5, lr}
    1776:	4d06      	ldr	r5, [pc, #24]	@ (1790 <_isatty_r+0x1c>)
    1778:	2300      	movs	r3, #0
    177a:	4604      	mov	r4, r0
    177c:	4608      	mov	r0, r1
    177e:	602b      	str	r3, [r5, #0]
    1780:	f000 fb2a 	bl	1dd8 <_isatty>
    1784:	1c43      	adds	r3, r0, #1
    1786:	d102      	bne.n	178e <_isatty_r+0x1a>
    1788:	682b      	ldr	r3, [r5, #0]
    178a:	b103      	cbz	r3, 178e <_isatty_r+0x1a>
    178c:	6023      	str	r3, [r4, #0]
    178e:	bd38      	pop	{r3, r4, r5, pc}
    1790:	20000534 	.word	0x20000534

00001794 <_exit>:
    1794:	4601      	mov	r1, r0
    1796:	b508      	push	{r3, lr}
    1798:	4a02      	ldr	r2, [pc, #8]	@ (17a4 <_exit+0x10>)
    179a:	f04f 30ff 	mov.w	r0, #4294967295
    179e:	f000 f803 	bl	17a8 <_kill_shared>
    17a2:	bf00      	nop
    17a4:	00020026 	.word	0x00020026

000017a8 <_kill_shared>:
    17a8:	b507      	push	{r0, r1, r2, lr}
    17aa:	e9cd 2100 	strd	r2, r1, [sp]
    17ae:	f000 fa57 	bl	1c60 <_has_ext_exit_extended>
    17b2:	2800      	cmp	r0, #0
    17b4:	bf0c      	ite	eq
    17b6:	2418      	moveq	r4, #24
    17b8:	2420      	movne	r4, #32
    17ba:	f000 fa51 	bl	1c60 <_has_ext_exit_extended>
    17be:	b120      	cbz	r0, 17ca <_kill_shared+0x22>
    17c0:	466d      	mov	r5, sp
    17c2:	4620      	mov	r0, r4
    17c4:	4629      	mov	r1, r5
    17c6:	beab      	bkpt	0x00ab
    17c8:	4604      	mov	r4, r0
    17ca:	9d00      	ldr	r5, [sp, #0]
    17cc:	e7f9      	b.n	17c2 <_kill_shared+0x1a>
	...

000017d0 <_kill>:
    17d0:	2906      	cmp	r1, #6
    17d2:	b508      	push	{r3, lr}
    17d4:	bf0c      	ite	eq
    17d6:	4a02      	ldreq	r2, [pc, #8]	@ (17e0 <_kill+0x10>)
    17d8:	4a02      	ldrne	r2, [pc, #8]	@ (17e4 <_kill+0x14>)
    17da:	f7ff ffe5 	bl	17a8 <_kill_shared>
    17de:	bf00      	nop
    17e0:	00020023 	.word	0x00020023
    17e4:	00020026 	.word	0x00020026

000017e8 <findslot>:
    17e8:	4b0a      	ldr	r3, [pc, #40]	@ (1814 <findslot+0x2c>)
    17ea:	b510      	push	{r4, lr}
    17ec:	4604      	mov	r4, r0
    17ee:	6818      	ldr	r0, [r3, #0]
    17f0:	b118      	cbz	r0, 17fa <findslot+0x12>
    17f2:	6a03      	ldr	r3, [r0, #32]
    17f4:	b90b      	cbnz	r3, 17fa <findslot+0x12>
    17f6:	f7ff fac7 	bl	d88 <__sinit>
    17fa:	2c13      	cmp	r4, #19
    17fc:	d807      	bhi.n	180e <findslot+0x26>
    17fe:	4806      	ldr	r0, [pc, #24]	@ (1818 <findslot+0x30>)
    1800:	f850 2034 	ldr.w	r2, [r0, r4, lsl #3]
    1804:	3201      	adds	r2, #1
    1806:	d002      	beq.n	180e <findslot+0x26>
    1808:	eb00 00c4 	add.w	r0, r0, r4, lsl #3
    180c:	bd10      	pop	{r4, pc}
    180e:	2000      	movs	r0, #0
    1810:	e7fc      	b.n	180c <findslot+0x24>
    1812:	bf00      	nop
    1814:	2000029c 	.word	0x2000029c
    1818:	20000550 	.word	0x20000550

0000181c <error>:
    181c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    181e:	4604      	mov	r4, r0
    1820:	f000 fb30 	bl	1e84 <__errno>
    1824:	2613      	movs	r6, #19
    1826:	4605      	mov	r5, r0
    1828:	2700      	movs	r7, #0
    182a:	4630      	mov	r0, r6
    182c:	4639      	mov	r1, r7
    182e:	beab      	bkpt	0x00ab
    1830:	4606      	mov	r6, r0
    1832:	602e      	str	r6, [r5, #0]
    1834:	4620      	mov	r0, r4
    1836:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

00001838 <checkerror>:
    1838:	1c43      	adds	r3, r0, #1
    183a:	d101      	bne.n	1840 <checkerror+0x8>
    183c:	f7ff bfee 	b.w	181c <error>
    1840:	4770      	bx	lr

00001842 <_swiread>:
    1842:	b530      	push	{r4, r5, lr}
    1844:	b085      	sub	sp, #20
    1846:	e9cd 0101 	strd	r0, r1, [sp, #4]
    184a:	9203      	str	r2, [sp, #12]
    184c:	2406      	movs	r4, #6
    184e:	ad01      	add	r5, sp, #4
    1850:	4620      	mov	r0, r4
    1852:	4629      	mov	r1, r5
    1854:	beab      	bkpt	0x00ab
    1856:	4604      	mov	r4, r0
    1858:	4620      	mov	r0, r4
    185a:	f7ff ffed 	bl	1838 <checkerror>
    185e:	b005      	add	sp, #20
    1860:	bd30      	pop	{r4, r5, pc}

00001862 <_read>:
    1862:	b570      	push	{r4, r5, r6, lr}
    1864:	460e      	mov	r6, r1
    1866:	4614      	mov	r4, r2
    1868:	f7ff ffbe 	bl	17e8 <findslot>
    186c:	4605      	mov	r5, r0
    186e:	b930      	cbnz	r0, 187e <_read+0x1c>
    1870:	f000 fb08 	bl	1e84 <__errno>
    1874:	2309      	movs	r3, #9
    1876:	6003      	str	r3, [r0, #0]
    1878:	f04f 30ff 	mov.w	r0, #4294967295
    187c:	bd70      	pop	{r4, r5, r6, pc}
    187e:	6800      	ldr	r0, [r0, #0]
    1880:	4622      	mov	r2, r4
    1882:	4631      	mov	r1, r6
    1884:	f7ff ffdd 	bl	1842 <_swiread>
    1888:	1c43      	adds	r3, r0, #1
    188a:	d0f5      	beq.n	1878 <_read+0x16>
    188c:	686b      	ldr	r3, [r5, #4]
    188e:	1a20      	subs	r0, r4, r0
    1890:	4403      	add	r3, r0
    1892:	606b      	str	r3, [r5, #4]
    1894:	e7f2      	b.n	187c <_read+0x1a>

00001896 <_swilseek>:
    1896:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
    1898:	460c      	mov	r4, r1
    189a:	4616      	mov	r6, r2
    189c:	f7ff ffa4 	bl	17e8 <findslot>
    18a0:	4605      	mov	r5, r0
    18a2:	b940      	cbnz	r0, 18b6 <_swilseek+0x20>
    18a4:	f000 faee 	bl	1e84 <__errno>
    18a8:	2309      	movs	r3, #9
    18aa:	6003      	str	r3, [r0, #0]
    18ac:	f04f 34ff 	mov.w	r4, #4294967295
    18b0:	4620      	mov	r0, r4
    18b2:	b003      	add	sp, #12
    18b4:	bdf0      	pop	{r4, r5, r6, r7, pc}
    18b6:	2e02      	cmp	r6, #2
    18b8:	d903      	bls.n	18c2 <_swilseek+0x2c>
    18ba:	f000 fae3 	bl	1e84 <__errno>
    18be:	2316      	movs	r3, #22
    18c0:	e7f3      	b.n	18aa <_swilseek+0x14>
    18c2:	2e01      	cmp	r6, #1
    18c4:	d112      	bne.n	18ec <_swilseek+0x56>
    18c6:	6843      	ldr	r3, [r0, #4]
    18c8:	18e4      	adds	r4, r4, r3
    18ca:	d4f6      	bmi.n	18ba <_swilseek+0x24>
    18cc:	682b      	ldr	r3, [r5, #0]
    18ce:	260a      	movs	r6, #10
    18d0:	e9cd 3400 	strd	r3, r4, [sp]
    18d4:	466f      	mov	r7, sp
    18d6:	4630      	mov	r0, r6
    18d8:	4639      	mov	r1, r7
    18da:	beab      	bkpt	0x00ab
    18dc:	4606      	mov	r6, r0
    18de:	4630      	mov	r0, r6
    18e0:	f7ff ffaa 	bl	1838 <checkerror>
    18e4:	2800      	cmp	r0, #0
    18e6:	dbe1      	blt.n	18ac <_swilseek+0x16>
    18e8:	606c      	str	r4, [r5, #4]
    18ea:	e7e1      	b.n	18b0 <_swilseek+0x1a>
    18ec:	2e02      	cmp	r6, #2
    18ee:	6803      	ldr	r3, [r0, #0]
    18f0:	d1ec      	bne.n	18cc <_swilseek+0x36>
    18f2:	9300      	str	r3, [sp, #0]
    18f4:	260c      	movs	r6, #12
    18f6:	466f      	mov	r7, sp
    18f8:	4630      	mov	r0, r6
    18fa:	4639      	mov	r1, r7
    18fc:	beab      	bkpt	0x00ab
    18fe:	4606      	mov	r6, r0
    1900:	4630      	mov	r0, r6
    1902:	f7ff ff99 	bl	1838 <checkerror>
    1906:	1c43      	adds	r3, r0, #1
    1908:	d0d0      	beq.n	18ac <_swilseek+0x16>
    190a:	4404      	add	r4, r0
    190c:	e7de      	b.n	18cc <_swilseek+0x36>

0000190e <_lseek>:
    190e:	f7ff bfc2 	b.w	1896 <_swilseek>

00001912 <_swiwrite>:
    1912:	b530      	push	{r4, r5, lr}
    1914:	b085      	sub	sp, #20
    1916:	e9cd 0101 	strd	r0, r1, [sp, #4]
    191a:	9203      	str	r2, [sp, #12]
    191c:	2405      	movs	r4, #5
    191e:	ad01      	add	r5, sp, #4
    1920:	4620      	mov	r0, r4
    1922:	4629      	mov	r1, r5
    1924:	beab      	bkpt	0x00ab
    1926:	4604      	mov	r4, r0
    1928:	4620      	mov	r0, r4
    192a:	f7ff ff85 	bl	1838 <checkerror>
    192e:	b005      	add	sp, #20
    1930:	bd30      	pop	{r4, r5, pc}

00001932 <_write>:
    1932:	b570      	push	{r4, r5, r6, lr}
    1934:	460e      	mov	r6, r1
    1936:	4615      	mov	r5, r2
    1938:	f7ff ff56 	bl	17e8 <findslot>
    193c:	4604      	mov	r4, r0
    193e:	b930      	cbnz	r0, 194e <_write+0x1c>
    1940:	f000 faa0 	bl	1e84 <__errno>
    1944:	2309      	movs	r3, #9
    1946:	6003      	str	r3, [r0, #0]
    1948:	f04f 30ff 	mov.w	r0, #4294967295
    194c:	bd70      	pop	{r4, r5, r6, pc}
    194e:	6800      	ldr	r0, [r0, #0]
    1950:	462a      	mov	r2, r5
    1952:	4631      	mov	r1, r6
    1954:	f7ff ffdd 	bl	1912 <_swiwrite>
    1958:	1e03      	subs	r3, r0, #0
    195a:	dbf5      	blt.n	1948 <_write+0x16>
    195c:	6862      	ldr	r2, [r4, #4]
    195e:	1ae8      	subs	r0, r5, r3
    1960:	4402      	add	r2, r0
    1962:	42ab      	cmp	r3, r5
    1964:	6062      	str	r2, [r4, #4]
    1966:	d1f1      	bne.n	194c <_write+0x1a>
    1968:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    196c:	2000      	movs	r0, #0
    196e:	f7ff bf55 	b.w	181c <error>

00001972 <_swiclose>:
    1972:	b537      	push	{r0, r1, r2, r4, r5, lr}
    1974:	2402      	movs	r4, #2
    1976:	9001      	str	r0, [sp, #4]
    1978:	ad01      	add	r5, sp, #4
    197a:	4620      	mov	r0, r4
    197c:	4629      	mov	r1, r5
    197e:	beab      	bkpt	0x00ab
    1980:	4604      	mov	r4, r0
    1982:	4620      	mov	r0, r4
    1984:	f7ff ff58 	bl	1838 <checkerror>
    1988:	b003      	add	sp, #12
    198a:	bd30      	pop	{r4, r5, pc}

0000198c <_close>:
    198c:	b538      	push	{r3, r4, r5, lr}
    198e:	4605      	mov	r5, r0
    1990:	f7ff ff2a 	bl	17e8 <findslot>
    1994:	4604      	mov	r4, r0
    1996:	b930      	cbnz	r0, 19a6 <_close+0x1a>
    1998:	f000 fa74 	bl	1e84 <__errno>
    199c:	2309      	movs	r3, #9
    199e:	6003      	str	r3, [r0, #0]
    19a0:	f04f 30ff 	mov.w	r0, #4294967295
    19a4:	bd38      	pop	{r3, r4, r5, pc}
    19a6:	3d01      	subs	r5, #1
    19a8:	2d01      	cmp	r5, #1
    19aa:	d809      	bhi.n	19c0 <_close+0x34>
    19ac:	4b07      	ldr	r3, [pc, #28]	@ (19cc <_close+0x40>)
    19ae:	689a      	ldr	r2, [r3, #8]
    19b0:	691b      	ldr	r3, [r3, #16]
    19b2:	429a      	cmp	r2, r3
    19b4:	d104      	bne.n	19c0 <_close+0x34>
    19b6:	f04f 33ff 	mov.w	r3, #4294967295
    19ba:	6023      	str	r3, [r4, #0]
    19bc:	2000      	movs	r0, #0
    19be:	e7f1      	b.n	19a4 <_close+0x18>
    19c0:	6820      	ldr	r0, [r4, #0]
    19c2:	f7ff ffd6 	bl	1972 <_swiclose>
    19c6:	2800      	cmp	r0, #0
    19c8:	d0f5      	beq.n	19b6 <_close+0x2a>
    19ca:	e7eb      	b.n	19a4 <_close+0x18>
    19cc:	20000550 	.word	0x20000550

000019d0 <_getpid>:
    19d0:	2001      	movs	r0, #1
    19d2:	4770      	bx	lr

000019d4 <_sbrk>:
    19d4:	4a0d      	ldr	r2, [pc, #52]	@ (1a0c <_sbrk+0x38>)
    19d6:	6811      	ldr	r1, [r2, #0]
    19d8:	b510      	push	{r4, lr}
    19da:	4603      	mov	r3, r0
    19dc:	b909      	cbnz	r1, 19e2 <_sbrk+0xe>
    19de:	490c      	ldr	r1, [pc, #48]	@ (1a10 <_sbrk+0x3c>)
    19e0:	6011      	str	r1, [r2, #0]
    19e2:	6810      	ldr	r0, [r2, #0]
    19e4:	4669      	mov	r1, sp
    19e6:	4403      	add	r3, r0
    19e8:	428b      	cmp	r3, r1
    19ea:	d806      	bhi.n	19fa <_sbrk+0x26>
    19ec:	4909      	ldr	r1, [pc, #36]	@ (1a14 <_sbrk+0x40>)
    19ee:	4c0a      	ldr	r4, [pc, #40]	@ (1a18 <_sbrk+0x44>)
    19f0:	6809      	ldr	r1, [r1, #0]
    19f2:	42a1      	cmp	r1, r4
    19f4:	d008      	beq.n	1a08 <_sbrk+0x34>
    19f6:	428b      	cmp	r3, r1
    19f8:	d906      	bls.n	1a08 <_sbrk+0x34>
    19fa:	f000 fa43 	bl	1e84 <__errno>
    19fe:	230c      	movs	r3, #12
    1a00:	6003      	str	r3, [r0, #0]
    1a02:	f04f 30ff 	mov.w	r0, #4294967295
    1a06:	bd10      	pop	{r4, pc}
    1a08:	6013      	str	r3, [r2, #0]
    1a0a:	e7fc      	b.n	1a06 <_sbrk+0x32>
    1a0c:	20000540 	.word	0x20000540
    1a10:	200005f0 	.word	0x200005f0
    1a14:	200002ec 	.word	0x200002ec
    1a18:	cafedead 	.word	0xcafedead

00001a1c <_swistat>:
    1a1c:	b570      	push	{r4, r5, r6, lr}
    1a1e:	460c      	mov	r4, r1
    1a20:	f7ff fee2 	bl	17e8 <findslot>
    1a24:	4605      	mov	r5, r0
    1a26:	b930      	cbnz	r0, 1a36 <_swistat+0x1a>
    1a28:	f000 fa2c 	bl	1e84 <__errno>
    1a2c:	2309      	movs	r3, #9
    1a2e:	6003      	str	r3, [r0, #0]
    1a30:	f04f 30ff 	mov.w	r0, #4294967295
    1a34:	bd70      	pop	{r4, r5, r6, pc}
    1a36:	6863      	ldr	r3, [r4, #4]
    1a38:	f443 5300 	orr.w	r3, r3, #8192	@ 0x2000
    1a3c:	6063      	str	r3, [r4, #4]
    1a3e:	f44f 6380 	mov.w	r3, #1024	@ 0x400
    1a42:	64a3      	str	r3, [r4, #72]	@ 0x48
    1a44:	260c      	movs	r6, #12
    1a46:	4630      	mov	r0, r6
    1a48:	4629      	mov	r1, r5
    1a4a:	beab      	bkpt	0x00ab
    1a4c:	4605      	mov	r5, r0
    1a4e:	4628      	mov	r0, r5
    1a50:	f7ff fef2 	bl	1838 <checkerror>
    1a54:	1c43      	adds	r3, r0, #1
    1a56:	d0eb      	beq.n	1a30 <_swistat+0x14>
    1a58:	6120      	str	r0, [r4, #16]
    1a5a:	2000      	movs	r0, #0
    1a5c:	e7ea      	b.n	1a34 <_swistat+0x18>

00001a5e <_fstat>:
    1a5e:	460b      	mov	r3, r1
    1a60:	b510      	push	{r4, lr}
    1a62:	2100      	movs	r1, #0
    1a64:	4604      	mov	r4, r0
    1a66:	2258      	movs	r2, #88	@ 0x58
    1a68:	4618      	mov	r0, r3
    1a6a:	f7ff fba3 	bl	11b4 <memset>
    1a6e:	4601      	mov	r1, r0
    1a70:	4620      	mov	r0, r4
    1a72:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    1a76:	f7ff bfd1 	b.w	1a1c <_swistat>

00001a7a <_stat>:
    1a7a:	b538      	push	{r3, r4, r5, lr}
    1a7c:	460d      	mov	r5, r1
    1a7e:	4604      	mov	r4, r0
    1a80:	2258      	movs	r2, #88	@ 0x58
    1a82:	2100      	movs	r1, #0
    1a84:	4628      	mov	r0, r5
    1a86:	f7ff fb95 	bl	11b4 <memset>
    1a8a:	4620      	mov	r0, r4
    1a8c:	2100      	movs	r1, #0
    1a8e:	f000 f811 	bl	1ab4 <_swiopen>
    1a92:	1c43      	adds	r3, r0, #1
    1a94:	4604      	mov	r4, r0
    1a96:	d00b      	beq.n	1ab0 <_stat+0x36>
    1a98:	686b      	ldr	r3, [r5, #4]
    1a9a:	f443 4301 	orr.w	r3, r3, #33024	@ 0x8100
    1a9e:	606b      	str	r3, [r5, #4]
    1aa0:	4629      	mov	r1, r5
    1aa2:	f7ff ffbb 	bl	1a1c <_swistat>
    1aa6:	4605      	mov	r5, r0
    1aa8:	4620      	mov	r0, r4
    1aaa:	f7ff ff6f 	bl	198c <_close>
    1aae:	462c      	mov	r4, r5
    1ab0:	4620      	mov	r0, r4
    1ab2:	bd38      	pop	{r3, r4, r5, pc}

00001ab4 <_swiopen>:
    1ab4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    1ab8:	4f29      	ldr	r7, [pc, #164]	@ (1b60 <_swiopen+0xac>)
    1aba:	b096      	sub	sp, #88	@ 0x58
    1abc:	4682      	mov	sl, r0
    1abe:	460e      	mov	r6, r1
    1ac0:	2400      	movs	r4, #0
    1ac2:	f857 3034 	ldr.w	r3, [r7, r4, lsl #3]
    1ac6:	3301      	adds	r3, #1
    1ac8:	ea4f 08c4 	mov.w	r8, r4, lsl #3
    1acc:	d00c      	beq.n	1ae8 <_swiopen+0x34>
    1ace:	3401      	adds	r4, #1
    1ad0:	2c14      	cmp	r4, #20
    1ad2:	d1f6      	bne.n	1ac2 <_swiopen+0xe>
    1ad4:	f000 f9d6 	bl	1e84 <__errno>
    1ad8:	2318      	movs	r3, #24
    1ada:	6003      	str	r3, [r0, #0]
    1adc:	f04f 34ff 	mov.w	r4, #4294967295
    1ae0:	4620      	mov	r0, r4
    1ae2:	b016      	add	sp, #88	@ 0x58
    1ae4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    1ae8:	f406 6320 	and.w	r3, r6, #2560	@ 0xa00
    1aec:	f5b3 6f20 	cmp.w	r3, #2560	@ 0xa00
    1af0:	46e9      	mov	r9, sp
    1af2:	d109      	bne.n	1b08 <_swiopen+0x54>
    1af4:	4649      	mov	r1, r9
    1af6:	4650      	mov	r0, sl
    1af8:	f7ff ffbf 	bl	1a7a <_stat>
    1afc:	3001      	adds	r0, #1
    1afe:	d003      	beq.n	1b08 <_swiopen+0x54>
    1b00:	f000 f9c0 	bl	1e84 <__errno>
    1b04:	2311      	movs	r3, #17
    1b06:	e7e8      	b.n	1ada <_swiopen+0x26>
    1b08:	f3c6 4500 	ubfx	r5, r6, #16, #1
    1b0c:	f240 6301 	movw	r3, #1537	@ 0x601
    1b10:	07b2      	lsls	r2, r6, #30
    1b12:	bf48      	it	mi
    1b14:	f045 0502 	orrmi.w	r5, r5, #2
    1b18:	421e      	tst	r6, r3
    1b1a:	bf18      	it	ne
    1b1c:	f045 0504 	orrne.w	r5, r5, #4
    1b20:	0733      	lsls	r3, r6, #28
    1b22:	bf48      	it	mi
    1b24:	f025 0504 	bicmi.w	r5, r5, #4
    1b28:	4650      	mov	r0, sl
    1b2a:	bf48      	it	mi
    1b2c:	f045 0508 	orrmi.w	r5, r5, #8
    1b30:	f8cd a000 	str.w	sl, [sp]
    1b34:	f000 f9ac 	bl	1e90 <strlen>
    1b38:	e9cd 5001 	strd	r5, r0, [sp, #4]
    1b3c:	2501      	movs	r5, #1
    1b3e:	4628      	mov	r0, r5
    1b40:	4649      	mov	r1, r9
    1b42:	beab      	bkpt	0x00ab
    1b44:	4605      	mov	r5, r0
    1b46:	2d00      	cmp	r5, #0
    1b48:	db05      	blt.n	1b56 <_swiopen+0xa2>
    1b4a:	f847 5034 	str.w	r5, [r7, r4, lsl #3]
    1b4e:	4447      	add	r7, r8
    1b50:	2300      	movs	r3, #0
    1b52:	607b      	str	r3, [r7, #4]
    1b54:	e7c4      	b.n	1ae0 <_swiopen+0x2c>
    1b56:	4628      	mov	r0, r5
    1b58:	f7ff fe60 	bl	181c <error>
    1b5c:	4604      	mov	r4, r0
    1b5e:	e7bf      	b.n	1ae0 <_swiopen+0x2c>
    1b60:	20000550 	.word	0x20000550

00001b64 <_open>:
    1b64:	b40e      	push	{r1, r2, r3}
    1b66:	b500      	push	{lr}
    1b68:	9901      	ldr	r1, [sp, #4]
    1b6a:	f7ff ffa3 	bl	1ab4 <_swiopen>
    1b6e:	f85d eb04 	ldr.w	lr, [sp], #4
    1b72:	b003      	add	sp, #12
    1b74:	4770      	bx	lr
	...

00001b78 <_get_semihosting_exts>:
    1b78:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
    1b7c:	4606      	mov	r6, r0
    1b7e:	460f      	mov	r7, r1
    1b80:	4829      	ldr	r0, [pc, #164]	@ (1c28 <_get_semihosting_exts+0xb0>)
    1b82:	2100      	movs	r1, #0
    1b84:	4615      	mov	r5, r2
    1b86:	f7ff ff95 	bl	1ab4 <_swiopen>
    1b8a:	462a      	mov	r2, r5
    1b8c:	4604      	mov	r4, r0
    1b8e:	2100      	movs	r1, #0
    1b90:	4630      	mov	r0, r6
    1b92:	f7ff fb0f 	bl	11b4 <memset>
    1b96:	1c63      	adds	r3, r4, #1
    1b98:	d014      	beq.n	1bc4 <_get_semihosting_exts+0x4c>
    1b9a:	4620      	mov	r0, r4
    1b9c:	f7ff fe24 	bl	17e8 <findslot>
    1ba0:	f04f 080c 	mov.w	r8, #12
    1ba4:	4681      	mov	r9, r0
    1ba6:	4640      	mov	r0, r8
    1ba8:	4649      	mov	r1, r9
    1baa:	beab      	bkpt	0x00ab
    1bac:	4680      	mov	r8, r0
    1bae:	4640      	mov	r0, r8
    1bb0:	f7ff fe42 	bl	1838 <checkerror>
    1bb4:	2803      	cmp	r0, #3
    1bb6:	dd02      	ble.n	1bbe <_get_semihosting_exts+0x46>
    1bb8:	1ec3      	subs	r3, r0, #3
    1bba:	42ab      	cmp	r3, r5
    1bbc:	dc07      	bgt.n	1bce <_get_semihosting_exts+0x56>
    1bbe:	4620      	mov	r0, r4
    1bc0:	f7ff fee4 	bl	198c <_close>
    1bc4:	f04f 30ff 	mov.w	r0, #4294967295
    1bc8:	b003      	add	sp, #12
    1bca:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
    1bce:	2204      	movs	r2, #4
    1bd0:	eb0d 0102 	add.w	r1, sp, r2
    1bd4:	4620      	mov	r0, r4
    1bd6:	f7ff fe44 	bl	1862 <_read>
    1bda:	2803      	cmp	r0, #3
    1bdc:	ddef      	ble.n	1bbe <_get_semihosting_exts+0x46>
    1bde:	f89d 3004 	ldrb.w	r3, [sp, #4]
    1be2:	2b53      	cmp	r3, #83	@ 0x53
    1be4:	d1eb      	bne.n	1bbe <_get_semihosting_exts+0x46>
    1be6:	f89d 3005 	ldrb.w	r3, [sp, #5]
    1bea:	2b48      	cmp	r3, #72	@ 0x48
    1bec:	d1e7      	bne.n	1bbe <_get_semihosting_exts+0x46>
    1bee:	f89d 3006 	ldrb.w	r3, [sp, #6]
    1bf2:	2b46      	cmp	r3, #70	@ 0x46
    1bf4:	d1e3      	bne.n	1bbe <_get_semihosting_exts+0x46>
    1bf6:	f89d 3007 	ldrb.w	r3, [sp, #7]
    1bfa:	2b42      	cmp	r3, #66	@ 0x42
    1bfc:	d1df      	bne.n	1bbe <_get_semihosting_exts+0x46>
    1bfe:	2201      	movs	r2, #1
    1c00:	4639      	mov	r1, r7
    1c02:	4620      	mov	r0, r4
    1c04:	f7ff fe47 	bl	1896 <_swilseek>
    1c08:	2800      	cmp	r0, #0
    1c0a:	dbd8      	blt.n	1bbe <_get_semihosting_exts+0x46>
    1c0c:	462a      	mov	r2, r5
    1c0e:	4631      	mov	r1, r6
    1c10:	4620      	mov	r0, r4
    1c12:	f7ff fe26 	bl	1862 <_read>
    1c16:	4605      	mov	r5, r0
    1c18:	4620      	mov	r0, r4
    1c1a:	f7ff feb7 	bl	198c <_close>
    1c1e:	4628      	mov	r0, r5
    1c20:	f7ff fe0a 	bl	1838 <checkerror>
    1c24:	e7d0      	b.n	1bc8 <_get_semihosting_exts+0x50>
    1c26:	bf00      	nop
    1c28:	00001f90 	.word	0x00001f90

00001c2c <initialise_semihosting_exts>:
    1c2c:	b537      	push	{r0, r1, r2, r4, r5, lr}
    1c2e:	4d0a      	ldr	r5, [pc, #40]	@ (1c58 <initialise_semihosting_exts+0x2c>)
    1c30:	4c0a      	ldr	r4, [pc, #40]	@ (1c5c <initialise_semihosting_exts+0x30>)
    1c32:	2100      	movs	r1, #0
    1c34:	2201      	movs	r2, #1
    1c36:	a801      	add	r0, sp, #4
    1c38:	6029      	str	r1, [r5, #0]
    1c3a:	6022      	str	r2, [r4, #0]
    1c3c:	f7ff ff9c 	bl	1b78 <_get_semihosting_exts>
    1c40:	2800      	cmp	r0, #0
    1c42:	dd07      	ble.n	1c54 <initialise_semihosting_exts+0x28>
    1c44:	f89d 3004 	ldrb.w	r3, [sp, #4]
    1c48:	f003 0201 	and.w	r2, r3, #1
    1c4c:	f003 0302 	and.w	r3, r3, #2
    1c50:	602a      	str	r2, [r5, #0]
    1c52:	6023      	str	r3, [r4, #0]
    1c54:	b003      	add	sp, #12
    1c56:	bd30      	pop	{r4, r5, pc}
    1c58:	200002f4 	.word	0x200002f4
    1c5c:	200002f0 	.word	0x200002f0

00001c60 <_has_ext_exit_extended>:
    1c60:	b510      	push	{r4, lr}
    1c62:	4c04      	ldr	r4, [pc, #16]	@ (1c74 <_has_ext_exit_extended+0x14>)
    1c64:	6823      	ldr	r3, [r4, #0]
    1c66:	2b00      	cmp	r3, #0
    1c68:	da01      	bge.n	1c6e <_has_ext_exit_extended+0xe>
    1c6a:	f7ff ffdf 	bl	1c2c <initialise_semihosting_exts>
    1c6e:	6820      	ldr	r0, [r4, #0]
    1c70:	bd10      	pop	{r4, pc}
    1c72:	bf00      	nop
    1c74:	200002f4 	.word	0x200002f4

00001c78 <_has_ext_stdout_stderr>:
    1c78:	b510      	push	{r4, lr}
    1c7a:	4c04      	ldr	r4, [pc, #16]	@ (1c8c <_has_ext_stdout_stderr+0x14>)
    1c7c:	6823      	ldr	r3, [r4, #0]
    1c7e:	2b00      	cmp	r3, #0
    1c80:	da01      	bge.n	1c86 <_has_ext_stdout_stderr+0xe>
    1c82:	f7ff ffd3 	bl	1c2c <initialise_semihosting_exts>
    1c86:	6820      	ldr	r0, [r4, #0]
    1c88:	bd10      	pop	{r4, pc}
    1c8a:	bf00      	nop
    1c8c:	200002f0 	.word	0x200002f0

00001c90 <initialise_monitor_handles>:
    1c90:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    1c94:	b085      	sub	sp, #20
    1c96:	f8df 90a4 	ldr.w	r9, [pc, #164]	@ 1d3c <initialise_monitor_handles+0xac>
    1c9a:	f8cd 9004 	str.w	r9, [sp, #4]
    1c9e:	2303      	movs	r3, #3
    1ca0:	2400      	movs	r4, #0
    1ca2:	9303      	str	r3, [sp, #12]
    1ca4:	af01      	add	r7, sp, #4
    1ca6:	9402      	str	r4, [sp, #8]
    1ca8:	2501      	movs	r5, #1
    1caa:	4628      	mov	r0, r5
    1cac:	4639      	mov	r1, r7
    1cae:	beab      	bkpt	0x00ab
    1cb0:	4605      	mov	r5, r0
    1cb2:	f8df 808c 	ldr.w	r8, [pc, #140]	@ 1d40 <initialise_monitor_handles+0xb0>
    1cb6:	4623      	mov	r3, r4
    1cb8:	4c22      	ldr	r4, [pc, #136]	@ (1d44 <initialise_monitor_handles+0xb4>)
    1cba:	f8c8 5000 	str.w	r5, [r8]
    1cbe:	f04f 32ff 	mov.w	r2, #4294967295
    1cc2:	f844 2033 	str.w	r2, [r4, r3, lsl #3]
    1cc6:	3301      	adds	r3, #1
    1cc8:	2b14      	cmp	r3, #20
    1cca:	d1fa      	bne.n	1cc2 <initialise_monitor_handles+0x32>
    1ccc:	f7ff ffd4 	bl	1c78 <_has_ext_stdout_stderr>
    1cd0:	4d1d      	ldr	r5, [pc, #116]	@ (1d48 <initialise_monitor_handles+0xb8>)
    1cd2:	b1d0      	cbz	r0, 1d0a <initialise_monitor_handles+0x7a>
    1cd4:	f04f 0a03 	mov.w	sl, #3
    1cd8:	2304      	movs	r3, #4
    1cda:	f8cd 9004 	str.w	r9, [sp, #4]
    1cde:	2601      	movs	r6, #1
    1ce0:	f8cd a00c 	str.w	sl, [sp, #12]
    1ce4:	9302      	str	r3, [sp, #8]
    1ce6:	4630      	mov	r0, r6
    1ce8:	4639      	mov	r1, r7
    1cea:	beab      	bkpt	0x00ab
    1cec:	4683      	mov	fp, r0
    1cee:	4b17      	ldr	r3, [pc, #92]	@ (1d4c <initialise_monitor_handles+0xbc>)
    1cf0:	f8cd 9004 	str.w	r9, [sp, #4]
    1cf4:	f8c3 b000 	str.w	fp, [r3]
    1cf8:	2308      	movs	r3, #8
    1cfa:	f8cd a00c 	str.w	sl, [sp, #12]
    1cfe:	9302      	str	r3, [sp, #8]
    1d00:	4630      	mov	r0, r6
    1d02:	4639      	mov	r1, r7
    1d04:	beab      	bkpt	0x00ab
    1d06:	4606      	mov	r6, r0
    1d08:	602e      	str	r6, [r5, #0]
    1d0a:	682b      	ldr	r3, [r5, #0]
    1d0c:	3301      	adds	r3, #1
    1d0e:	bf02      	ittt	eq
    1d10:	4b0e      	ldreq	r3, [pc, #56]	@ (1d4c <initialise_monitor_handles+0xbc>)
    1d12:	681b      	ldreq	r3, [r3, #0]
    1d14:	602b      	streq	r3, [r5, #0]
    1d16:	2600      	movs	r6, #0
    1d18:	f8d8 3000 	ldr.w	r3, [r8]
    1d1c:	6023      	str	r3, [r4, #0]
    1d1e:	6066      	str	r6, [r4, #4]
    1d20:	f7ff ffaa 	bl	1c78 <_has_ext_stdout_stderr>
    1d24:	b130      	cbz	r0, 1d34 <initialise_monitor_handles+0xa4>
    1d26:	4b09      	ldr	r3, [pc, #36]	@ (1d4c <initialise_monitor_handles+0xbc>)
    1d28:	681b      	ldr	r3, [r3, #0]
    1d2a:	e9c4 3602 	strd	r3, r6, [r4, #8]
    1d2e:	682b      	ldr	r3, [r5, #0]
    1d30:	e9c4 3604 	strd	r3, r6, [r4, #16]
    1d34:	b005      	add	sp, #20
    1d36:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    1d3a:	bf00      	nop
    1d3c:	00001fa6 	.word	0x00001fa6
    1d40:	2000054c 	.word	0x2000054c
    1d44:	20000550 	.word	0x20000550
    1d48:	20000544 	.word	0x20000544
    1d4c:	20000548 	.word	0x20000548

00001d50 <_link>:
    1d50:	b508      	push	{r3, lr}
    1d52:	f000 f897 	bl	1e84 <__errno>
    1d56:	2358      	movs	r3, #88	@ 0x58
    1d58:	6003      	str	r3, [r0, #0]
    1d5a:	f04f 30ff 	mov.w	r0, #4294967295
    1d5e:	bd08      	pop	{r3, pc}

00001d60 <_unlink>:
    1d60:	b537      	push	{r0, r1, r2, r4, r5, lr}
    1d62:	9000      	str	r0, [sp, #0]
    1d64:	f000 f894 	bl	1e90 <strlen>
    1d68:	240e      	movs	r4, #14
    1d6a:	9001      	str	r0, [sp, #4]
    1d6c:	466d      	mov	r5, sp
    1d6e:	4620      	mov	r0, r4
    1d70:	4629      	mov	r1, r5
    1d72:	beab      	bkpt	0x00ab
    1d74:	4604      	mov	r4, r0
    1d76:	1c63      	adds	r3, r4, #1
    1d78:	d104      	bne.n	1d84 <_unlink+0x24>
    1d7a:	4620      	mov	r0, r4
    1d7c:	f7ff fd4e 	bl	181c <error>
    1d80:	b003      	add	sp, #12
    1d82:	bd30      	pop	{r4, r5, pc}
    1d84:	2000      	movs	r0, #0
    1d86:	e7fb      	b.n	1d80 <_unlink+0x20>

00001d88 <_gettimeofday>:
    1d88:	b5f0      	push	{r4, r5, r6, r7, lr}
    1d8a:	460d      	mov	r5, r1
    1d8c:	4604      	mov	r4, r0
    1d8e:	b148      	cbz	r0, 1da4 <_gettimeofday+0x1c>
    1d90:	2700      	movs	r7, #0
    1d92:	2611      	movs	r6, #17
    1d94:	4630      	mov	r0, r6
    1d96:	4639      	mov	r1, r7
    1d98:	beab      	bkpt	0x00ab
    1d9a:	4606      	mov	r6, r0
    1d9c:	17f3      	asrs	r3, r6, #31
    1d9e:	e9c4 6300 	strd	r6, r3, [r4]
    1da2:	60a7      	str	r7, [r4, #8]
    1da4:	b115      	cbz	r5, 1dac <_gettimeofday+0x24>
    1da6:	2300      	movs	r3, #0
    1da8:	e9c5 3300 	strd	r3, r3, [r5]
    1dac:	2000      	movs	r0, #0
    1dae:	bdf0      	pop	{r4, r5, r6, r7, pc}

00001db0 <_clock>:
    1db0:	b530      	push	{r4, r5, lr}
    1db2:	2410      	movs	r4, #16
    1db4:	2500      	movs	r5, #0
    1db6:	4620      	mov	r0, r4
    1db8:	4629      	mov	r1, r5
    1dba:	beab      	bkpt	0x00ab
    1dbc:	4604      	mov	r4, r0
    1dbe:	4620      	mov	r0, r4
    1dc0:	bd30      	pop	{r4, r5, pc}

00001dc2 <_times>:
    1dc2:	b510      	push	{r4, lr}
    1dc4:	4604      	mov	r4, r0
    1dc6:	f7ff fff3 	bl	1db0 <_clock>
    1dca:	b124      	cbz	r4, 1dd6 <_times+0x14>
    1dcc:	2300      	movs	r3, #0
    1dce:	e9c4 3301 	strd	r3, r3, [r4, #4]
    1dd2:	6020      	str	r0, [r4, #0]
    1dd4:	60e3      	str	r3, [r4, #12]
    1dd6:	bd10      	pop	{r4, pc}

00001dd8 <_isatty>:
    1dd8:	b570      	push	{r4, r5, r6, lr}
    1dda:	f7ff fd05 	bl	17e8 <findslot>
    1dde:	2409      	movs	r4, #9
    1de0:	4605      	mov	r5, r0
    1de2:	b920      	cbnz	r0, 1dee <_isatty+0x16>
    1de4:	f000 f84e 	bl	1e84 <__errno>
    1de8:	6004      	str	r4, [r0, #0]
    1dea:	2000      	movs	r0, #0
    1dec:	bd70      	pop	{r4, r5, r6, pc}
    1dee:	4620      	mov	r0, r4
    1df0:	4629      	mov	r1, r5
    1df2:	beab      	bkpt	0x00ab
    1df4:	4604      	mov	r4, r0
    1df6:	2c01      	cmp	r4, #1
    1df8:	4620      	mov	r0, r4
    1dfa:	d0f7      	beq.n	1dec <_isatty+0x14>
    1dfc:	f000 f842 	bl	1e84 <__errno>
    1e00:	2513      	movs	r5, #19
    1e02:	4604      	mov	r4, r0
    1e04:	2600      	movs	r6, #0
    1e06:	4628      	mov	r0, r5
    1e08:	4631      	mov	r1, r6
    1e0a:	beab      	bkpt	0x00ab
    1e0c:	4605      	mov	r5, r0
    1e0e:	6025      	str	r5, [r4, #0]
    1e10:	e7eb      	b.n	1dea <_isatty+0x12>

00001e12 <_system>:
    1e12:	b537      	push	{r0, r1, r2, r4, r5, lr}
    1e14:	b1c8      	cbz	r0, 1e4a <_system+0x38>
    1e16:	9000      	str	r0, [sp, #0]
    1e18:	f000 f83a 	bl	1e90 <strlen>
    1e1c:	2412      	movs	r4, #18
    1e1e:	9001      	str	r0, [sp, #4]
    1e20:	466d      	mov	r5, sp
    1e22:	4620      	mov	r0, r4
    1e24:	4629      	mov	r1, r5
    1e26:	beab      	bkpt	0x00ab
    1e28:	4604      	mov	r4, r0
    1e2a:	4620      	mov	r0, r4
    1e2c:	f7ff fd04 	bl	1838 <checkerror>
    1e30:	28ff      	cmp	r0, #255	@ 0xff
    1e32:	4603      	mov	r3, r0
    1e34:	d902      	bls.n	1e3c <_system+0x2a>
    1e36:	b003      	add	sp, #12
    1e38:	bd30      	pop	{r4, r5, pc}
    1e3a:	0040      	lsls	r0, r0, #1
    1e3c:	2800      	cmp	r0, #0
    1e3e:	d0fa      	beq.n	1e36 <_system+0x24>
    1e40:	f3c0 2207 	ubfx	r2, r0, #8, #8
    1e44:	429a      	cmp	r2, r3
    1e46:	d0f6      	beq.n	1e36 <_system+0x24>
    1e48:	e7f7      	b.n	1e3a <_system+0x28>
    1e4a:	2001      	movs	r0, #1
    1e4c:	e7f3      	b.n	1e36 <_system+0x24>

00001e4e <_rename>:
    1e4e:	b530      	push	{r4, r5, lr}
    1e50:	b085      	sub	sp, #20
    1e52:	460c      	mov	r4, r1
    1e54:	9000      	str	r0, [sp, #0]
    1e56:	f000 f81b 	bl	1e90 <strlen>
    1e5a:	e9cd 0401 	strd	r0, r4, [sp, #4]
    1e5e:	4620      	mov	r0, r4
    1e60:	f000 f816 	bl	1e90 <strlen>
    1e64:	240f      	movs	r4, #15
    1e66:	9003      	str	r0, [sp, #12]
    1e68:	466d      	mov	r5, sp
    1e6a:	4620      	mov	r0, r4
    1e6c:	4629      	mov	r1, r5
    1e6e:	beab      	bkpt	0x00ab
    1e70:	4604      	mov	r4, r0
    1e72:	4620      	mov	r0, r4
    1e74:	f7ff fce0 	bl	1838 <checkerror>
    1e78:	3800      	subs	r0, #0
    1e7a:	bf18      	it	ne
    1e7c:	2001      	movne	r0, #1
    1e7e:	4240      	negs	r0, r0
    1e80:	b005      	add	sp, #20
    1e82:	bd30      	pop	{r4, r5, pc}

00001e84 <__errno>:
    1e84:	4b01      	ldr	r3, [pc, #4]	@ (1e8c <__errno+0x8>)
    1e86:	6818      	ldr	r0, [r3, #0]
    1e88:	4770      	bx	lr
    1e8a:	bf00      	nop
    1e8c:	2000029c 	.word	0x2000029c

00001e90 <strlen>:
    1e90:	4603      	mov	r3, r0
    1e92:	f813 2b01 	ldrb.w	r2, [r3], #1
    1e96:	2a00      	cmp	r2, #0
    1e98:	d1fb      	bne.n	1e92 <strlen+0x2>
    1e9a:	1a18      	subs	r0, r3, r0
    1e9c:	3801      	subs	r0, #1
    1e9e:	4770      	bx	lr

00001ea0 <_init>:
    1ea0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1ea2:	bf00      	nop
    1ea4:	bcf8      	pop	{r3, r4, r5, r6, r7}
    1ea6:	bc08      	pop	{r3}
    1ea8:	469e      	mov	lr, r3
    1eaa:	4770      	bx	lr

00001eac <_fini>:
    1eac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1eae:	bf00      	nop
    1eb0:	bcf8      	pop	{r3, r4, r5, r6, r7}
    1eb2:	bc08      	pop	{r3}
    1eb4:	469e      	mov	lr, r3
    1eb6:	4770      	bx	lr

00001eb8 <all_implied_fbits>:
    1eb8:	403d 400b 4010 4026 4035 4003 4006 4014     =@.@.@&@5@.@.@.@
    1ec8:	400e 400d 4025 4012 4028 4002 4018 4009     .@.@%@.@(@.@.@.@
    1ed8:	400a 0000                                   .@..

00001edc <a>:
    1edc:	0061 0000 3a43 555c 6573 7372 665c 726f     a...C:\Users\for
    1eec:	6f63 376e 5c39 6f44 7563 656d 746e 5c73     con79\Documents\
    1efc:	6f63 6564 635f 766f 7265 6761 5c65 6367     code_coverage\gc
    1f0c:	766f 655f 6178 706d 656c 5c73 7266 6565     ov_examples\free
    1f1c:	7473 6e61 6964 676e 625c 6975 646c 6d2f     standing\build/m
    1f2c:	6961 2e6e 6367 6164 0000 0000               ain.gcda....

00001f38 <a>:
    1f38:	0061 0000 3a43 555c 6573 7372 665c 726f     a...C:\Users\for
    1f48:	6f63 376e 5c39 6f44 7563 656d 746e 5c73     con79\Documents\
    1f58:	6f63 6564 635f 766f 7265 6761 5c65 6367     code_coverage\gc
    1f68:	766f 655f 6178 706d 656c 5c73 7266 6565     ov_examples\free
    1f78:	7473 6e61 6964 676e 625c 6975 646c 612f     standing\build/a
    1f88:	7070 672e 6463 0061 733a 6d65 6869 736f     pp.gcda.:semihos
    1f98:	6974 676e 662d 6165 7574 6572 0073 743a     ting-features.:t
    1fa8:	0074 0000                                   t...

00001fac <all_implied_fbits>:
    1fac:	403d 400b 4010 4026 4035 4003 4006 4014     =@.@.@&@5@.@.@.@
    1fbc:	400e 400d 4025 4012 4028 4002 4018 4009     .@.@%@.@(@.@.@.@
    1fcc:	400a 0000                                   .@..

00001fd0 <__EH_FRAME_BEGIN__>:
    1fd0:	0010 0000 0000 0000 7a01 0052 7c02 010e     .........zR..|..
    1fe0:	0c1b 000d 0010 0000 0018 0000 fea4 ffff     ................
    1ff0:	0010 0000 0000 0000                         ........

00001ff8 <__FRAME_END__>:
    1ff8:	0000 0000                                   ....
