;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Wed Jun 27 23:08:40 2012
;--------------------------------------------------------
	.module StringUtils
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcpy_PARM_2
	.globl _strcat_PARM_2
	.globl _strcpy
	.globl _strcat
	.globl _UnsignedCharToString
	.globl _IntToString
	.globl _UnsignedCharToString_PARM_2
	.globl _IntToString_PARM_2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_IntToString_PARM_2:
	.ds 2
_UnsignedCharToString_PARM_2:
	.ds 1
_UnsignedCharToString_sloc0_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_strcat_PARM_2::
	.ds 3
	.area	OSEG    (OVR,DATA)
_strcpy_PARM_2::
	.ds 3
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'IntToString'
;------------------------------------------------------------
;v                         Allocated with name '_IntToString_PARM_2'
;p                         Allocated to registers r2 r3 r4 
;digit                     Allocated to registers r7 r0 
;divider                   Allocated to registers r5 r6 
;------------------------------------------------------------
;	../Common/StringUtils.c:2: void IntToString(unsigned char *p, unsigned int v)
;	-----------------------------------------
;	 function IntToString
;	-----------------------------------------
_IntToString:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../Common/StringUtils.c:6: divider = 10000;
	mov	r5,#0x10
	mov	r6,#0x27
;	../Common/StringUtils.c:7: do
00101$:
;	../Common/StringUtils.c:9: digit = v / divider;
	mov	__divuint_PARM_2,r5
	mov	(__divuint_PARM_2 + 1),r6
	mov	dpl,_IntToString_PARM_2
	mov	dph,(_IntToString_PARM_2 + 1)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	__divuint
	mov	r7,dpl
	mov	r0,dph
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	../Common/StringUtils.c:10: *p = '0' + digit;
	mov	ar1,r7
	mov	a,#0x30
	add	a,r1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
;	../Common/StringUtils.c:11: v -= digit * divider;
	mov	__mulint_PARM_2,r5
	mov	(__mulint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	__mulint
	mov	r7,dpl
	mov	r0,dph
	pop	ar6
	pop	ar5
	mov	a,_IntToString_PARM_2
	clr	c
	subb	a,r7
	mov	_IntToString_PARM_2,a
	mov	a,(_IntToString_PARM_2 + 1)
	subb	a,r0
	mov	(_IntToString_PARM_2 + 1),a
;	../Common/StringUtils.c:12: divider = divider / 10;
	mov	__divuint_PARM_2,#0x0A
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r5
	mov	dph,r6
	lcall	__divuint
	mov	r5,dpl
	mov	r6,dph
	pop	ar4
	pop	ar3
	pop	ar2
;	../Common/StringUtils.c:13: ++p;
;	../Common/StringUtils.c:15: while (divider > 0);
	mov	a,r5
	orl	a,r6
	jnz	00101$
;	../Common/StringUtils.c:16: *p = 0;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'UnsignedCharToString'
;------------------------------------------------------------
;v                         Allocated with name '_UnsignedCharToString_PARM_2'
;p                         Allocated to registers r2 r3 r4 
;digit                     Allocated to registers r7 r0 
;divider                   Allocated to registers r5 r6 
;sloc0                     Allocated with name '_UnsignedCharToString_sloc0_1_0'
;------------------------------------------------------------
;	../Common/StringUtils.c:21: void UnsignedCharToString(unsigned char *p, unsigned char v)
;	-----------------------------------------
;	 function UnsignedCharToString
;	-----------------------------------------
_UnsignedCharToString:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../Common/StringUtils.c:25: divider = 0x80;
	mov	r5,#0x80
	mov	r6,#0x00
;	../Common/StringUtils.c:26: do
00101$:
;	../Common/StringUtils.c:28: digit = v / divider;
	mov	r7,_UnsignedCharToString_PARM_2
	mov	r0,#0x00
	mov	__divuint_PARM_2,r5
	mov	(__divuint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	__divuint
	mov	r7,dpl
	mov	r0,dph
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	../Common/StringUtils.c:29: *p = digit ? '1' : '0';
	mov	_UnsignedCharToString_sloc0_1_0,r2
	mov	(_UnsignedCharToString_sloc0_1_0 + 1),r3
	mov	(_UnsignedCharToString_sloc0_1_0 + 2),r4
	mov	a,r7
	orl	a,r0
	jz	00106$
	mov	r1,#0x31
	sjmp	00107$
00106$:
	mov	r1,#0x30
00107$:
	mov	dpl,_UnsignedCharToString_sloc0_1_0
	mov	dph,(_UnsignedCharToString_sloc0_1_0 + 1)
	mov	b,(_UnsignedCharToString_sloc0_1_0 + 2)
	mov	a,r1
	lcall	__gptrput
;	../Common/StringUtils.c:30: v -= digit * divider;
	mov	ar0,r5
	mov	b,r7
	mov	a,r0
	mul	ab
	setb	c
	subb	a,_UnsignedCharToString_PARM_2
	cpl	a
	mov	_UnsignedCharToString_PARM_2,a
;	../Common/StringUtils.c:31: divider = divider / 2;
	mov	a,r6
	clr	c
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r6,a
;	../Common/StringUtils.c:32: ++p;
	inc	r2
	cjne	r2,#0x00,00113$
	inc	r3
00113$:
;	../Common/StringUtils.c:34: while (divider > 0);
	mov	a,r5
	orl	a,r6
	jnz	00101$
;	../Common/StringUtils.c:35: *p = 0;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'strcat'
;------------------------------------------------------------
;s                         Allocated with name '_strcat_PARM_2'
;p                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	../Common/StringUtils.c:39: void strcat(char *p, char *s)
;	-----------------------------------------
;	 function strcat
;	-----------------------------------------
_strcat:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	../Common/StringUtils.c:41: while (*p)
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jz	00112$
;	../Common/StringUtils.c:43: ++p;
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
;	../Common/StringUtils.c:45: while (*s)
	sjmp	00101$
00112$:
	mov	r5,_strcat_PARM_2
	mov	r6,(_strcat_PARM_2 + 1)
	mov	r7,(_strcat_PARM_2 + 2)
00104$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	jz	00106$
;	../Common/StringUtils.c:47: *p = *s;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
;	../Common/StringUtils.c:48: ++p;
;	../Common/StringUtils.c:49: ++s;
	inc	r5
	cjne	r5,#0x00,00104$
	inc	r6
	sjmp	00104$
00106$:
;	../Common/StringUtils.c:51: *p = 0;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'strcpy'
;------------------------------------------------------------
;s                         Allocated with name '_strcpy_PARM_2'
;p                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	../Common/StringUtils.c:54: void strcpy(char *p, char *s)
;	-----------------------------------------
;	 function strcpy
;	-----------------------------------------
_strcpy:
;	../Common/StringUtils.c:56: *p = 0;
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	clr	a
	lcall	__gptrput
;	../Common/StringUtils.c:57: while (*s)
	mov	r5,_strcpy_PARM_2
	mov	r6,(_strcpy_PARM_2 + 1)
	mov	r7,(_strcpy_PARM_2 + 2)
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	jz	00103$
;	../Common/StringUtils.c:59: *p = *s;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
;	../Common/StringUtils.c:60: ++p;
;	../Common/StringUtils.c:61: ++s;
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00103$:
;	../Common/StringUtils.c:63: *p = 0;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	ljmp	__gptrput
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
