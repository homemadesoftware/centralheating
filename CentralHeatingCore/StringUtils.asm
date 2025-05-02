;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (MINGW64)
;--------------------------------------------------------
	.module StringUtils
	
	.optsdcc -mmcs51 --model-large
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcpy
	.globl _strcat
	.globl _UnsignedCharToString
	.globl _IntToString
	.globl _strcpy_PARM_2
	.globl _strcat_PARM_2
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
_IntToString_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_IntToString_PARM_2:
	.ds 2
_IntToString_p_10000_1:
	.ds 3
_IntToString_divider_10000_2:
	.ds 2
_UnsignedCharToString_PARM_2:
	.ds 1
_UnsignedCharToString_p_10000_4:
	.ds 3
_UnsignedCharToString_digit_10000_5:
	.ds 2
_UnsignedCharToString_divider_10000_5:
	.ds 2
_strcat_PARM_2:
	.ds 3
_strcat_p_10000_7:
	.ds 3
_strcpy_PARM_2:
	.ds 3
_strcpy_p_10000_11:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
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
;sloc0         Allocated with name '_IntToString_sloc0_1_0'
;v             Allocated with name '_IntToString_PARM_2'
;p             Allocated with name '_IntToString_p_10000_1'
;digit         Allocated with name '_IntToString_digit_10000_2'
;divider       Allocated with name '_IntToString_divider_10000_2'
;------------------------------------------------------------
;	../Common/StringUtils.c:2: void IntToString(unsigned char *p, unsigned int v)
;	-----------------------------------------
;	 function IntToString
;	-----------------------------------------
_IntToString:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_IntToString_p_10000_1
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/StringUtils.c:6: divider = 10000;
	mov	dptr,#_IntToString_divider_10000_2
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x27
	inc	dptr
	movx	@dptr,a
;	../Common/StringUtils.c:7: do
	mov	dptr,#_IntToString_p_10000_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
;	../Common/StringUtils.c:9: digit = v / divider;
	mov	dptr,#_IntToString_divider_10000_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_IntToString_PARM_2
	movx	a,@dptr
	mov	_IntToString_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_IntToString_sloc0_1_0 + 1),a
	mov	dptr,#__divuint_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../Common/StringUtils.c:10: *p = '0' + digit;
	mov	dpl, _IntToString_sloc0_1_0
	mov	dph, (_IntToString_sloc0_1_0 + 1)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	__divuint
	mov	r0, dpl
	mov	r2, dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	ar1,r0
	mov	a,#0x30
	add	a, r1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	../Common/StringUtils.c:11: v -= digit * divider;
	mov	dptr,#__mulint_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl, r0
	mov	dph, r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	__mulint
	mov	r1, dpl
	mov	r2, dph
	pop	ar3
	pop	ar4
	mov	dptr,#_IntToString_PARM_2
	mov	a,_IntToString_sloc0_1_0
	clr	c
	subb	a,r1
	movx	@dptr,a
	mov	a,(_IntToString_sloc0_1_0 + 1)
	subb	a,r2
	inc	dptr
	movx	@dptr,a
;	../Common/StringUtils.c:12: divider = divider / 10;
	mov	dptr,#__divuint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl, r3
	mov	dph, r4
	lcall	__divuint
	mov	a, dpl
	mov	b, dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_IntToString_divider_10000_2
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
;	../Common/StringUtils.c:13: ++p;
	mov	dptr,#_IntToString_p_10000_1
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/StringUtils.c:15: while (divider > 0);
	mov	dptr,#_IntToString_divider_10000_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00119$
	ljmp	00101$
00119$:
;	../Common/StringUtils.c:16: *p = 0;
	mov	dptr,#_IntToString_p_10000_1
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	../Common/StringUtils.c:17: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'UnsignedCharToString'
;------------------------------------------------------------
;v             Allocated with name '_UnsignedCharToString_PARM_2'
;p             Allocated with name '_UnsignedCharToString_p_10000_4'
;digit         Allocated with name '_UnsignedCharToString_digit_10000_5'
;divider       Allocated with name '_UnsignedCharToString_divider_10000_5'
;------------------------------------------------------------
;	../Common/StringUtils.c:21: void UnsignedCharToString(unsigned char *p, unsigned char v)
;	-----------------------------------------
;	 function UnsignedCharToString
;	-----------------------------------------
_UnsignedCharToString:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_UnsignedCharToString_p_10000_4
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/StringUtils.c:25: divider = 0x80;
	mov	dptr,#_UnsignedCharToString_divider_10000_5
	mov	a,#0x80
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../Common/StringUtils.c:26: do
	mov	dptr,#_UnsignedCharToString_p_10000_4
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
;	../Common/StringUtils.c:28: digit = v / divider;
	mov	dptr,#_UnsignedCharToString_divider_10000_5
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_UnsignedCharToString_PARM_2
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	mov	dptr,#__divuint_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl, r1
	mov	dph, r2
	push	ar7
	push	ar6
	push	ar5
	lcall	__divuint
	mov	r3, dpl
	mov	r4, dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_UnsignedCharToString_digit_10000_5
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../Common/StringUtils.c:29: *p = digit ? '1' : '0';
	mov	ar0,r5
	mov	ar1,r6
	mov	ar2,r7
	mov	a,r3
	orl	a,r4
	jz	00106$
	mov	r4,#0x31
	sjmp	00107$
00106$:
	mov	r4,#0x30
00107$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r4
	lcall	__gptrput
;	../Common/StringUtils.c:30: v -= digit * divider;
	mov	dptr,#_UnsignedCharToString_digit_10000_5
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_UnsignedCharToString_divider_10000_5
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	ar1,r2
	mov	b,r4
	mov	a,r1
	mul	ab
	mov	r4,a
	mov	dptr,#_UnsignedCharToString_PARM_2
	movx	a,@dptr
	clr	c
	subb	a,r4
	movx	@dptr,a
;	../Common/StringUtils.c:31: divider = divider / 2;
	mov	a,r3
	clr	c
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	mov	dptr,#_UnsignedCharToString_divider_10000_5
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	../Common/StringUtils.c:32: ++p;
	inc	r5
	cjne	r5,#0x00,00128$
	inc	r6
00128$:
	mov	dptr,#_UnsignedCharToString_p_10000_4
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/StringUtils.c:34: while (divider > 0);
	mov	dptr,#_UnsignedCharToString_divider_10000_5
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00129$
	ljmp	00101$
00129$:
;	../Common/StringUtils.c:35: *p = 0;
	mov	dptr,#_UnsignedCharToString_p_10000_4
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	../Common/StringUtils.c:36: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'strcat'
;------------------------------------------------------------
;s             Allocated with name '_strcat_PARM_2'
;p             Allocated with name '_strcat_p_10000_7'
;------------------------------------------------------------
;	../Common/StringUtils.c:39: void strcat(char *p, char *s)
;	-----------------------------------------
;	 function strcat
;	-----------------------------------------
_strcat:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_strcat_p_10000_7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/StringUtils.c:41: while (*p)
	mov	dptr,#_strcat_p_10000_7
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00113$
;	../Common/StringUtils.c:43: ++p;
	inc	r5
	cjne	r5,#0x00,00136$
	inc	r6
00136$:
	mov	dptr,#_strcat_p_10000_7
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/StringUtils.c:45: while (*s)
	sjmp	00101$
00113$:
	mov	dptr,#_strcat_p_10000_7
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_strcat_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
00104$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	jz	00114$
;	../Common/StringUtils.c:47: *p = *s;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	../Common/StringUtils.c:48: ++p;
	mov	dptr,#_strcat_p_10000_7
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/StringUtils.c:49: ++s;
	inc	r2
	cjne	r2,#0x00,00104$
	inc	r3
	sjmp	00104$
00114$:
	mov	dptr,#_strcat_p_10000_7
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/StringUtils.c:51: *p = 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	../Common/StringUtils.c:52: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'strcpy'
;------------------------------------------------------------
;s             Allocated with name '_strcpy_PARM_2'
;p             Allocated with name '_strcpy_p_10000_11'
;------------------------------------------------------------
;	../Common/StringUtils.c:54: void strcpy(char *p, char *s)
;	-----------------------------------------
;	 function strcpy
;	-----------------------------------------
_strcpy:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_strcpy_p_10000_11
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/StringUtils.c:56: *p = 0;
	mov	dptr,#_strcpy_p_10000_11
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../Common/StringUtils.c:57: while (*s)
	mov	dptr,#_strcpy_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	jz	00108$
;	../Common/StringUtils.c:59: *p = *s;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	../Common/StringUtils.c:60: ++p;
	mov	dptr,#_strcpy_p_10000_11
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/StringUtils.c:61: ++s;
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
	sjmp	00101$
00108$:
	mov	dptr,#_strcpy_p_10000_11
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/StringUtils.c:63: *p = 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	../Common/StringUtils.c:64: }
	ljmp	__gptrput
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
