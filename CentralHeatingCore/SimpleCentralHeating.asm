;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module SimpleCentralHeating
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SimpleCentralHeating
	.globl _strcat
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _displayBuffer
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
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
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_displayBuffer::
	.ds 33
_SimpleCentralHeating_keys_65536_17:
	.ds 2
_SimpleCentralHeating_inputs_65536_17:
	.ds 1
_SimpleCentralHeating_outputs_65536_17:
	.ds 1
_SimpleCentralHeating_animatedChars_65536_17:
	.ds 4
_SimpleCentralHeating_animatedBuffer_65536_17:
	.ds 3
_SimpleCentralHeating_animatedCounter_65536_17:
	.ds 2
_SimpleCentralHeating_zones_65536_17:
	.ds 3
_SimpleCentralHeating_boilerOn_65536_17:
	.ds 1
_SimpleCentralHeating_pumpOn_65536_17:
	.ds 1
_SimpleCentralHeating_actuators_65536_17:
	.ds 3
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
;Allocation info for local variables in function 'SimpleCentralHeating'
;------------------------------------------------------------
;i                         Allocated with name '_SimpleCentralHeating_i_65536_17'
;keys                      Allocated with name '_SimpleCentralHeating_keys_65536_17'
;inputs                    Allocated with name '_SimpleCentralHeating_inputs_65536_17'
;outputs                   Allocated with name '_SimpleCentralHeating_outputs_65536_17'
;animatedChars             Allocated with name '_SimpleCentralHeating_animatedChars_65536_17'
;animatedBuffer            Allocated with name '_SimpleCentralHeating_animatedBuffer_65536_17'
;animatedCounter           Allocated with name '_SimpleCentralHeating_animatedCounter_65536_17'
;zones                     Allocated with name '_SimpleCentralHeating_zones_65536_17'
;boilerOn                  Allocated with name '_SimpleCentralHeating_boilerOn_65536_17'
;pumpOn                    Allocated with name '_SimpleCentralHeating_pumpOn_65536_17'
;actuators                 Allocated with name '_SimpleCentralHeating_actuators_65536_17'
;delay                     Allocated with name '_SimpleCentralHeating_delay_65536_17'
;------------------------------------------------------------
;	SimpleCentralHeating.c:35: void SimpleCentralHeating()
;	-----------------------------------------
;	 function SimpleCentralHeating
;	-----------------------------------------
_SimpleCentralHeating:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	SimpleCentralHeating.c:52: animatedChars[0] = '-';
	mov	dptr,#_SimpleCentralHeating_animatedChars_65536_17
	mov	a,#0x2d
	movx	@dptr,a
;	SimpleCentralHeating.c:53: animatedChars[1] = '/';
	mov	dptr,#(_SimpleCentralHeating_animatedChars_65536_17 + 0x0001)
	mov	a,#0x2f
	movx	@dptr,a
;	SimpleCentralHeating.c:54: animatedChars[2] = '|';
	mov	dptr,#(_SimpleCentralHeating_animatedChars_65536_17 + 0x0002)
	mov	a,#0x7c
	movx	@dptr,a
;	SimpleCentralHeating.c:55: animatedChars[3] = '\\';
	mov	dptr,#(_SimpleCentralHeating_animatedChars_65536_17 + 0x0003)
	mov	a,#0x5c
	movx	@dptr,a
;	SimpleCentralHeating.c:58: animatedBuffer[0] = '.';
	mov	dptr,#_SimpleCentralHeating_animatedBuffer_65536_17
	rr	a
	movx	@dptr,a
;	SimpleCentralHeating.c:59: animatedBuffer[1] = '.';
	mov	dptr,#(_SimpleCentralHeating_animatedBuffer_65536_17 + 0x0001)
	movx	@dptr,a
;	SimpleCentralHeating.c:60: animatedBuffer[2] = 0;
	mov	dptr,#(_SimpleCentralHeating_animatedBuffer_65536_17 + 0x0002)
	clr	a
	movx	@dptr,a
;	SimpleCentralHeating.c:71: for (i = 0; i < DISPLAY_BUFFER_SIZE; ++i)
	mov	r6,#0x00
	mov	r7,#0x00
00153$:
;	SimpleCentralHeating.c:73: displayBuffer[i] = '.';
	mov	a,r6
	add	a,#_displayBuffer
	mov	dpl,a
	mov	a,r7
	addc	a,#(_displayBuffer >> 8)
	mov	dph,a
	mov	a,#0x2e
	movx	@dptr,a
;	SimpleCentralHeating.c:71: for (i = 0; i < DISPLAY_BUFFER_SIZE; ++i)
	inc	r6
	cjne	r6,#0x00,00306$
	inc	r7
00306$:
	clr	c
	mov	a,r6
	subb	a,#0x20
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00153$
;	SimpleCentralHeating.c:75: displayBuffer[DISPLAY_BUFFER_SIZE] = 0;
	mov	dptr,#(_displayBuffer + 0x0020)
	clr	a
	movx	@dptr,a
;	SimpleCentralHeating.c:77: pWriteDisplayBuffer(displayBuffer);
	lcall	00308$
	sjmp	00309$
00308$:
	mov	dptr,#_pWriteDisplayBuffer
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	ret
00309$:
;	SimpleCentralHeating.c:80: animatedCounter = 0;
	mov	dptr,#_SimpleCentralHeating_animatedCounter_65536_17
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	SimpleCentralHeating.c:82: while (1)
00151$:
;	SimpleCentralHeating.c:84: *displayBuffer = 0;
	mov	dptr,#_displayBuffer
	clr	a
	movx	@dptr,a
;	SimpleCentralHeating.c:86: animatedBuffer[0] = animatedChars[animatedCounter];
	mov	dptr,#_SimpleCentralHeating_animatedCounter_65536_17
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,#_SimpleCentralHeating_animatedChars_65536_17
	mov	dpl,a
	mov	a,r7
	addc	a,#(_SimpleCentralHeating_animatedChars_65536_17 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_SimpleCentralHeating_animatedBuffer_65536_17
	movx	@dptr,a
;	SimpleCentralHeating.c:88: if (animatedCounter == 3)
	cjne	r6,#0x03,00103$
	cjne	r7,#0x00,00103$
;	SimpleCentralHeating.c:90: animatedCounter = 0;
	mov	dptr,#_SimpleCentralHeating_animatedCounter_65536_17
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00104$
00103$:
;	SimpleCentralHeating.c:94: ++animatedCounter;
	mov	dptr,#_SimpleCentralHeating_animatedCounter_65536_17
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
00104$:
;	SimpleCentralHeating.c:98: strcat(displayBuffer, "Z123 B P A123 ");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_0
	movx	@dptr,a
	mov	a,#(___str_0 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
;	SimpleCentralHeating.c:99: strcat(displayBuffer, animatedBuffer);
	mov	dptr,#_strcat_PARM_2
	mov	a,#_SimpleCentralHeating_animatedBuffer_65536_17
	movx	@dptr,a
	mov	a,#(_SimpleCentralHeating_animatedBuffer_65536_17 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
;	SimpleCentralHeating.c:102: strcat(displayBuffer, " ");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_1
	movx	@dptr,a
	mov	a,#(___str_1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
;	SimpleCentralHeating.c:105: pGetInputPortValues(&inputs);
	lcall	00312$
	sjmp	00313$
00312$:
	mov	dptr,#_pGetInputPortValues
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_SimpleCentralHeating_inputs_65536_17
	mov	b,#0x00
	ret
00313$:
;	SimpleCentralHeating.c:106: zones[0] = ((inputs & ZONE1) == 0);
	mov	dptr,#_SimpleCentralHeating_inputs_65536_17
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x10
	mov	r6,#0x00
	clr	a
	cjne	r7,#0x00,00314$
	cjne	r6,#0x00,00314$
	inc	a
00314$:
	mov	dptr,#_SimpleCentralHeating_zones_65536_17
	movx	@dptr,a
;	SimpleCentralHeating.c:107: zones[1] = ((inputs & ZONE2) == 0);
	mov	dptr,#_SimpleCentralHeating_inputs_65536_17
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x20
	mov	r6,#0x00
	clr	a
	cjne	r7,#0x00,00316$
	cjne	r6,#0x00,00316$
	inc	a
00316$:
	mov	dptr,#(_SimpleCentralHeating_zones_65536_17 + 0x0001)
	movx	@dptr,a
;	SimpleCentralHeating.c:108: zones[2] = ((inputs & ZONE3) == 0);
	mov	dptr,#_SimpleCentralHeating_inputs_65536_17
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x04
	mov	r6,#0x00
	clr	a
	cjne	r7,#0x00,00318$
	cjne	r6,#0x00,00318$
	inc	a
00318$:
	mov	r7,a
	mov	dptr,#(_SimpleCentralHeating_zones_65536_17 + 0x0002)
	movx	@dptr,a
;	SimpleCentralHeating.c:112: pGetKeyState(&keys);
	lcall	00320$
	sjmp	00321$
00320$:
	mov	dptr,#_pGetKeyState
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_SimpleCentralHeating_keys_65536_17
	mov	b,#0x00
	ret
00321$:
;	SimpleCentralHeating.c:114: switch (keys)
	mov	dptr,#_SimpleCentralHeating_keys_65536_17
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x01,00322$
	cjne	r7,#0x00,00322$
	sjmp	00105$
00322$:
	cjne	r6,#0x02,00323$
	cjne	r7,#0x00,00323$
	sjmp	00106$
00323$:
;	SimpleCentralHeating.c:116: case 1 :
	cjne	r6,#0x03,00108$
	cjne	r7,#0x00,00108$
	sjmp	00107$
00105$:
;	SimpleCentralHeating.c:117: zones[0] = 1;
	mov	dptr,#_SimpleCentralHeating_zones_65536_17
	mov	a,#0x01
	movx	@dptr,a
;	SimpleCentralHeating.c:118: break;
;	SimpleCentralHeating.c:120: case 2 :
	sjmp	00108$
00106$:
;	SimpleCentralHeating.c:121: zones[1] = 1;
	mov	dptr,#(_SimpleCentralHeating_zones_65536_17 + 0x0001)
	mov	a,#0x01
	movx	@dptr,a
;	SimpleCentralHeating.c:122: break;
;	SimpleCentralHeating.c:124: case 3 :
	sjmp	00108$
00107$:
;	SimpleCentralHeating.c:125: zones[2] = 1;
	mov	dptr,#(_SimpleCentralHeating_zones_65536_17 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
;	SimpleCentralHeating.c:127: }
00108$:
;	SimpleCentralHeating.c:129: if (zones[0])
	mov	dptr,#_SimpleCentralHeating_zones_65536_17
	movx	a,@dptr
	jz	00110$
;	SimpleCentralHeating.c:131: strcat(displayBuffer, "*");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_2
	movx	@dptr,a
	mov	a,#(___str_2 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
	sjmp	00111$
00110$:
;	SimpleCentralHeating.c:135: strcat(displayBuffer, " ");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_1
	movx	@dptr,a
	mov	a,#(___str_1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
00111$:
;	SimpleCentralHeating.c:138: if (zones[1])
	mov	dptr,#(_SimpleCentralHeating_zones_65536_17 + 0x0001)
	movx	a,@dptr
	jz	00113$
;	SimpleCentralHeating.c:140: strcat(displayBuffer, "*");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_2
	movx	@dptr,a
	mov	a,#(___str_2 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
	sjmp	00114$
00113$:
;	SimpleCentralHeating.c:144: strcat(displayBuffer, " ");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_1
	movx	@dptr,a
	mov	a,#(___str_1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
00114$:
;	SimpleCentralHeating.c:147: if (zones[2])
	mov	dptr,#(_SimpleCentralHeating_zones_65536_17 + 0x0002)
	movx	a,@dptr
	jz	00116$
;	SimpleCentralHeating.c:149: strcat(displayBuffer, "*");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_2
	movx	@dptr,a
	mov	a,#(___str_2 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
	sjmp	00117$
00116$:
;	SimpleCentralHeating.c:153: strcat(displayBuffer, " ");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_1
	movx	@dptr,a
	mov	a,#(___str_1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
00117$:
;	SimpleCentralHeating.c:159: boilerOn = (zones[0] || zones[1] || zones[2]);
	mov	dptr,#_SimpleCentralHeating_zones_65536_17
	movx	a,@dptr
	jnz	00161$
	mov	dptr,#(_SimpleCentralHeating_zones_65536_17 + 0x0001)
	movx	a,@dptr
	jnz	00161$
	mov	dptr,#(_SimpleCentralHeating_zones_65536_17 + 0x0002)
	movx	a,@dptr
	jnz	00161$
	mov	r7,a
	sjmp	00162$
00161$:
	mov	r7,#0x01
00162$:
	mov	dptr,#_SimpleCentralHeating_boilerOn_65536_17
	mov	a,r7
	movx	@dptr,a
;	SimpleCentralHeating.c:163: pumpOn = (zones[0] || zones[1] || zones[2]);
	mov	dptr,#_SimpleCentralHeating_zones_65536_17
	movx	a,@dptr
	jnz	00167$
	mov	dptr,#(_SimpleCentralHeating_zones_65536_17 + 0x0001)
	movx	a,@dptr
	jnz	00167$
	mov	dptr,#(_SimpleCentralHeating_zones_65536_17 + 0x0002)
	movx	a,@dptr
	jnz	00167$
	mov	r7,a
	sjmp	00168$
00167$:
	mov	r7,#0x01
00168$:
	mov	dptr,#_SimpleCentralHeating_pumpOn_65536_17
	mov	a,r7
	movx	@dptr,a
;	SimpleCentralHeating.c:166: actuators[0] = zones[0];
	mov	dptr,#_SimpleCentralHeating_zones_65536_17
	movx	a,@dptr
	mov	dptr,#_SimpleCentralHeating_actuators_65536_17
	movx	@dptr,a
;	SimpleCentralHeating.c:167: actuators[1] = zones[1];
	mov	dptr,#(_SimpleCentralHeating_zones_65536_17 + 0x0001)
	movx	a,@dptr
	mov	dptr,#(_SimpleCentralHeating_actuators_65536_17 + 0x0001)
	movx	@dptr,a
;	SimpleCentralHeating.c:168: actuators[2] = zones[2];
	mov	dptr,#(_SimpleCentralHeating_zones_65536_17 + 0x0002)
	movx	a,@dptr
	mov	dptr,#(_SimpleCentralHeating_actuators_65536_17 + 0x0002)
	movx	@dptr,a
;	SimpleCentralHeating.c:170: switch (keys)
	mov	dptr,#_SimpleCentralHeating_keys_65536_17
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x05,00334$
	cjne	r7,#0x00,00334$
	sjmp	00118$
00334$:
	cjne	r6,#0x06,00335$
	cjne	r7,#0x00,00335$
	sjmp	00119$
00335$:
	cjne	r6,#0x09,00336$
	cjne	r7,#0x00,00336$
	sjmp	00120$
00336$:
	cjne	r6,#0x0a,00337$
	cjne	r7,#0x00,00337$
	sjmp	00121$
00337$:
;	SimpleCentralHeating.c:172: case 5 :
	cjne	r6,#0x0b,00123$
	cjne	r7,#0x00,00123$
	sjmp	00122$
00118$:
;	SimpleCentralHeating.c:173: boilerOn = 1;
	mov	dptr,#_SimpleCentralHeating_boilerOn_65536_17
	mov	a,#0x01
	movx	@dptr,a
;	SimpleCentralHeating.c:174: break;
;	SimpleCentralHeating.c:176: case 6 :
	sjmp	00123$
00119$:
;	SimpleCentralHeating.c:177: pumpOn = 1;
	mov	dptr,#_SimpleCentralHeating_pumpOn_65536_17
	mov	a,#0x01
	movx	@dptr,a
;	SimpleCentralHeating.c:178: break;
;	SimpleCentralHeating.c:180: case 9 :
	sjmp	00123$
00120$:
;	SimpleCentralHeating.c:181: actuators[0] = 1;
	mov	dptr,#_SimpleCentralHeating_actuators_65536_17
	mov	a,#0x01
	movx	@dptr,a
;	SimpleCentralHeating.c:182: break;
;	SimpleCentralHeating.c:184: case 10 :
	sjmp	00123$
00121$:
;	SimpleCentralHeating.c:185: actuators[1] = 1;
	mov	dptr,#(_SimpleCentralHeating_actuators_65536_17 + 0x0001)
	mov	a,#0x01
	movx	@dptr,a
;	SimpleCentralHeating.c:186: break;
;	SimpleCentralHeating.c:188: case 11 :
	sjmp	00123$
00122$:
;	SimpleCentralHeating.c:189: actuators[2] = 1;
	mov	dptr,#(_SimpleCentralHeating_actuators_65536_17 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
;	SimpleCentralHeating.c:191: }
00123$:
;	SimpleCentralHeating.c:193: strcat(displayBuffer, " ");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_1
	movx	@dptr,a
	mov	a,#(___str_1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
;	SimpleCentralHeating.c:195: if (boilerOn)
	mov	dptr,#_SimpleCentralHeating_boilerOn_65536_17
	movx	a,@dptr
	jz	00125$
;	SimpleCentralHeating.c:197: strcat(displayBuffer, "* ");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_3
	movx	@dptr,a
	mov	a,#(___str_3 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
	sjmp	00126$
00125$:
;	SimpleCentralHeating.c:201: strcat(displayBuffer, "  ");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_4
	movx	@dptr,a
	mov	a,#(___str_4 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
00126$:
;	SimpleCentralHeating.c:204: if (pumpOn)
	mov	dptr,#_SimpleCentralHeating_pumpOn_65536_17
	movx	a,@dptr
	jz	00128$
;	SimpleCentralHeating.c:206: strcat(displayBuffer, "* ");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_3
	movx	@dptr,a
	mov	a,#(___str_3 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
	sjmp	00129$
00128$:
;	SimpleCentralHeating.c:210: strcat(displayBuffer, "  ");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_4
	movx	@dptr,a
	mov	a,#(___str_4 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
00129$:
;	SimpleCentralHeating.c:213: strcat(displayBuffer, " ");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_1
	movx	@dptr,a
	mov	a,#(___str_1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
;	SimpleCentralHeating.c:215: if (actuators[0])
	mov	dptr,#_SimpleCentralHeating_actuators_65536_17
	movx	a,@dptr
	jz	00131$
;	SimpleCentralHeating.c:217: strcat(displayBuffer, "*");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_2
	movx	@dptr,a
	mov	a,#(___str_2 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
	sjmp	00132$
00131$:
;	SimpleCentralHeating.c:221: strcat(displayBuffer, " ");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_1
	movx	@dptr,a
	mov	a,#(___str_1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
00132$:
;	SimpleCentralHeating.c:223: if (actuators[1])
	mov	dptr,#(_SimpleCentralHeating_actuators_65536_17 + 0x0001)
	movx	a,@dptr
	jz	00134$
;	SimpleCentralHeating.c:225: strcat(displayBuffer, "*");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_2
	movx	@dptr,a
	mov	a,#(___str_2 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
	sjmp	00135$
00134$:
;	SimpleCentralHeating.c:229: strcat(displayBuffer, " ");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_1
	movx	@dptr,a
	mov	a,#(___str_1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
00135$:
;	SimpleCentralHeating.c:231: if (actuators[2])
	mov	dptr,#(_SimpleCentralHeating_actuators_65536_17 + 0x0002)
	movx	a,@dptr
	jz	00137$
;	SimpleCentralHeating.c:233: strcat(displayBuffer, "*");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_2
	movx	@dptr,a
	mov	a,#(___str_2 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
	sjmp	00138$
00137$:
;	SimpleCentralHeating.c:237: strcat(displayBuffer, " ");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_1
	movx	@dptr,a
	mov	a,#(___str_1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	lcall	_strcat
00138$:
;	SimpleCentralHeating.c:242: pWriteDisplayBuffer(displayBuffer);
	lcall	00344$
	sjmp	00345$
00344$:
	mov	dptr,#_pWriteDisplayBuffer
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_displayBuffer
	mov	b,#0x00
	ret
00345$:
;	SimpleCentralHeating.c:245: outputs = 0;
	mov	dptr,#_SimpleCentralHeating_outputs_65536_17
	clr	a
	movx	@dptr,a
;	SimpleCentralHeating.c:246: if (actuators[0])
	mov	dptr,#_SimpleCentralHeating_actuators_65536_17
	movx	a,@dptr
	jz	00140$
;	SimpleCentralHeating.c:248: outputs |= ACTUATOR1;
	mov	dptr,#_SimpleCentralHeating_outputs_65536_17
	mov	a,#0x01
	movx	@dptr,a
00140$:
;	SimpleCentralHeating.c:250: if (actuators[1])
	mov	dptr,#(_SimpleCentralHeating_actuators_65536_17 + 0x0001)
	movx	a,@dptr
	jz	00142$
;	SimpleCentralHeating.c:252: outputs |= ACTUATOR2;
	mov	dptr,#_SimpleCentralHeating_outputs_65536_17
	movx	a,@dptr
	orl	acc,#0x02
	movx	@dptr,a
00142$:
;	SimpleCentralHeating.c:254: if (actuators[2])
	mov	dptr,#(_SimpleCentralHeating_actuators_65536_17 + 0x0002)
	movx	a,@dptr
	jz	00144$
;	SimpleCentralHeating.c:256: outputs |= ACTUATOR3;
	mov	dptr,#_SimpleCentralHeating_outputs_65536_17
	movx	a,@dptr
	orl	acc,#0x04
	movx	@dptr,a
00144$:
;	SimpleCentralHeating.c:258: if (pumpOn)
	mov	dptr,#_SimpleCentralHeating_pumpOn_65536_17
	movx	a,@dptr
	jz	00146$
;	SimpleCentralHeating.c:260: outputs |= PUMP;
	mov	dptr,#_SimpleCentralHeating_outputs_65536_17
	movx	a,@dptr
	orl	acc,#0x10
	movx	@dptr,a
00146$:
;	SimpleCentralHeating.c:262: if (boilerOn)
	mov	dptr,#_SimpleCentralHeating_boilerOn_65536_17
	movx	a,@dptr
	jz	00148$
;	SimpleCentralHeating.c:264: outputs |= BOILER;
	mov	dptr,#_SimpleCentralHeating_outputs_65536_17
	movx	a,@dptr
	orl	acc,#0x20
	movx	@dptr,a
00148$:
;	SimpleCentralHeating.c:267: pSetOutputPortValues(outputs);
	mov	dptr,#_SimpleCentralHeating_outputs_65536_17
	movx	a,@dptr
	mov	r7,a
	lcall	00351$
	sjmp	00352$
00351$:
	mov	dptr,#_pSetOutputPortValues
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r7
	ret
00352$:
;	SimpleCentralHeating.c:269: for (delay = 0; delay < 200000; ++delay)
	mov	r4,#0x40
	mov	r5,#0x0d
	mov	r6,#0x03
	mov	r7,#0x00
00157$:
	dec	r4
	cjne	r4,#0xff,00353$
	dec	r5
	cjne	r5,#0xff,00353$
	dec	r6
	cjne	r6,#0xff,00353$
	dec	r7
00353$:
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00157$
;	SimpleCentralHeating.c:275: ++i;
;	SimpleCentralHeating.c:281: }
	ljmp	00151$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Z123 B P A123 "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "*"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "* "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "  "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
