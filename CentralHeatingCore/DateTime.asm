;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module DateTime
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _CompareDateTime_PARM_2
	.globl _AddSecondsToDateTime_PARM_3
	.globl _AddSecondsToDateTime_PARM_2
	.globl _FormatDate_PARM_2
	.globl _FormatTime_PARM_3
	.globl _FormatTime_PARM_2
	.globl _GetNumDaysInMonth
	.globl _FormatTime
	.globl _FormatDate
	.globl _AddSecondsToDateTime
	.globl _CompareDateTime
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
_FormatTime_sloc0_1_0:
	.ds 3
_FormatTime_sloc1_1_0:
	.ds 3
_FormatTime_sloc2_1_0:
	.ds 3
_FormatDate_sloc0_1_0:
	.ds 3
_FormatDate_sloc1_1_0:
	.ds 3
_FormatDate_sloc2_1_0:
	.ds 3
_AddSecondsToDateTime_sloc0_1_0:
	.ds 3
_AddSecondsToDateTime_sloc1_1_0:
	.ds 3
_AddSecondsToDateTime_sloc2_1_0:
	.ds 3
_AddSecondsToDateTime_sloc3_1_0:
	.ds 3
_AddSecondsToDateTime_sloc4_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_CompareDateTime_sloc0_1_0:
	.ds 1
_CompareDateTime_sloc1_1_0:
	.ds 3
_CompareDateTime_sloc2_1_0:
	.ds 3
_CompareDateTime_sloc3_1_0:
	.ds 1
_CompareDateTime_sloc4_1_0:
	.ds 3
_CompareDateTime_sloc5_1_0:
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
_GetNumDaysInMonth_pdt_65536_17:
	.ds 3
_FormatTime_PARM_2:
	.ds 3
_FormatTime_PARM_3:
	.ds 1
_FormatTime_buffer_65536_22:
	.ds 3
_FormatDate_PARM_2:
	.ds 3
_FormatDate_buffer_65536_25:
	.ds 3
_AddSecondsToDateTime_PARM_2:
	.ds 2
_AddSecondsToDateTime_PARM_3:
	.ds 3
_AddSecondsToDateTime_pdt_65536_27:
	.ds 3
_AddSecondsToDateTime_secondsLeft_65536_28:
	.ds 2
_CompareDateTime_PARM_2:
	.ds 3
_CompareDateTime_dt1_65536_35:
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
;Allocation info for local variables in function 'GetNumDaysInMonth'
;------------------------------------------------------------
;pdt                       Allocated with name '_GetNumDaysInMonth_pdt_65536_17'
;year                      Allocated with name '_GetNumDaysInMonth_year_65536_18'
;------------------------------------------------------------
;	../Common/DateTime.c:7: int GetNumDaysInMonth(DateTimeStruct* pdt)
;	-----------------------------------------
;	 function GetNumDaysInMonth
;	-----------------------------------------
_GetNumDaysInMonth:
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
	mov	dptr,#_GetNumDaysInMonth_pdt_65536_17
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/DateTime.c:9: int year = pdt->year + 2000;
	mov	dptr,#_GetNumDaysInMonth_pdt_65536_17
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r4,#0x00
	mov	a,#0xd0
	add	a,r2
	mov	r3,a
	mov	a,#0x07
	addc	a,r4
	mov	r4,a
;	../Common/DateTime.c:10: switch (pdt->month)
	mov	a,#0x05
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r7,a
	add	a,#0xff - 0x0c
	jnc	00129$
	ljmp	00118$
00129$:
	mov	a,r7
	add	a,#(00130$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00131$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00130$:
	.db	00118$
	.db	00101$
	.db	00102$
	.db	00108$
	.db	00109$
	.db	00110$
	.db	00111$
	.db	00112$
	.db	00113$
	.db	00114$
	.db	00115$
	.db	00116$
	.db	00117$
00131$:
	.db	00118$>>8
	.db	00101$>>8
	.db	00102$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00111$>>8
	.db	00112$>>8
	.db	00113$>>8
	.db	00114$>>8
	.db	00115$>>8
	.db	00116$>>8
	.db	00117$>>8
;	../Common/DateTime.c:12: case 1 :   // Jan
00101$:
;	../Common/DateTime.c:13: return 31;
	mov	dptr,#0x001f
	ret
;	../Common/DateTime.c:14: case 2 :   // Feb
00102$:
;	../Common/DateTime.c:15: if ((!(year % 4) && (year % 100)) || !(year % 400))
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	push	ar4
	push	ar3
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar3
	pop	ar4
	orl	a,b
	jnz	00107$
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x64
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	push	ar4
	push	ar3
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar3
	pop	ar4
	orl	a,b
	jnz	00103$
00107$:
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x90
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00104$
00103$:
;	../Common/DateTime.c:17: return 29;
	mov	dptr,#0x001d
	ret
00104$:
;	../Common/DateTime.c:21: return 28;
	mov	dptr,#0x001c
;	../Common/DateTime.c:23: case 3 :   // Mar
	ret
00108$:
;	../Common/DateTime.c:24: return 31;
	mov	dptr,#0x001f
;	../Common/DateTime.c:25: case 4 :   // Apr
	ret
00109$:
;	../Common/DateTime.c:26: return 30;
	mov	dptr,#0x001e
;	../Common/DateTime.c:27: case 5 :   // May
	ret
00110$:
;	../Common/DateTime.c:28: return 31;
	mov	dptr,#0x001f
;	../Common/DateTime.c:29: case 6 :   // Jun
	ret
00111$:
;	../Common/DateTime.c:30: return 30;
	mov	dptr,#0x001e
;	../Common/DateTime.c:31: case 7 :   // Jul 
	ret
00112$:
;	../Common/DateTime.c:32: return 31;
	mov	dptr,#0x001f
;	../Common/DateTime.c:33: case 8 :   // Aug
	ret
00113$:
;	../Common/DateTime.c:34: return 30;
	mov	dptr,#0x001e
;	../Common/DateTime.c:35: case 9 :   // Sep
	ret
00114$:
;	../Common/DateTime.c:36: return 30;
	mov	dptr,#0x001e
;	../Common/DateTime.c:37: case 10 :  // Oct
	ret
00115$:
;	../Common/DateTime.c:38: return 30;
	mov	dptr,#0x001e
;	../Common/DateTime.c:39: case 11 :  // Nov
	ret
00116$:
;	../Common/DateTime.c:40: return 30;
	mov	dptr,#0x001e
;	../Common/DateTime.c:41: case 12 :  // Dec
	ret
00117$:
;	../Common/DateTime.c:42: return 31;
	mov	dptr,#0x001f
;	../Common/DateTime.c:43: }
	ret
00118$:
;	../Common/DateTime.c:44: return -1;
	mov	dptr,#0xffff
;	../Common/DateTime.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FormatTime'
;------------------------------------------------------------
;sloc0                     Allocated with name '_FormatTime_sloc0_1_0'
;sloc1                     Allocated with name '_FormatTime_sloc1_1_0'
;sloc2                     Allocated with name '_FormatTime_sloc2_1_0'
;pdt                       Allocated with name '_FormatTime_PARM_2'
;seconds                   Allocated with name '_FormatTime_PARM_3'
;buffer                    Allocated with name '_FormatTime_buffer_65536_22'
;------------------------------------------------------------
;	../Common/DateTime.c:48: void FormatTime(char *buffer, DateTimeStruct *pdt, unsigned char seconds)
;	-----------------------------------------
;	 function FormatTime
;	-----------------------------------------
_FormatTime:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_FormatTime_buffer_65536_22
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/DateTime.c:50: buffer[0] = (pdt->hours / 10) + '0';
	mov	dptr,#_FormatTime_buffer_65536_22
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_FormatTime_PARM_2
	movx	a,@dptr
	mov	_FormatTime_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_FormatTime_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_FormatTime_sloc0_1_0 + 2),a
	mov	a,#0x02
	add	a,_FormatTime_sloc0_1_0
	mov	_FormatTime_sloc1_1_0,a
	clr	a
	addc	a,(_FormatTime_sloc0_1_0 + 1)
	mov	(_FormatTime_sloc1_1_0 + 1),a
	mov	(_FormatTime_sloc1_1_0 + 2),(_FormatTime_sloc0_1_0 + 2)
	mov	dpl,_FormatTime_sloc1_1_0
	mov	dph,(_FormatTime_sloc1_1_0 + 1)
	mov	b,(_FormatTime_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	mov	r2,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	lcall	__divsint
	mov	r2,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../Common/DateTime.c:51: buffer[1] = (pdt->hours % 10) + '0';
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,_FormatTime_sloc1_1_0
	mov	dph,(_FormatTime_sloc1_1_0 + 1)
	mov	b,(_FormatTime_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	r1,#0x00
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__modsint
	mov	r0,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	../Common/DateTime.c:52: buffer[2] = ':';
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x3a
	lcall	__gptrput
;	../Common/DateTime.c:53: buffer[3] = (pdt->minutes / 10) + '0';
	mov	a,#0x03
	add	a,r5
	mov	_FormatTime_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_FormatTime_sloc1_1_0 + 1),a
	mov	(_FormatTime_sloc1_1_0 + 2),r7
	mov	a,#0x01
	add	a,_FormatTime_sloc0_1_0
	mov	_FormatTime_sloc2_1_0,a
	clr	a
	addc	a,(_FormatTime_sloc0_1_0 + 1)
	mov	(_FormatTime_sloc2_1_0 + 1),a
	mov	(_FormatTime_sloc2_1_0 + 2),(_FormatTime_sloc0_1_0 + 2)
	mov	dpl,_FormatTime_sloc2_1_0
	mov	dph,(_FormatTime_sloc2_1_0 + 1)
	mov	b,(_FormatTime_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	mov	r2,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	lcall	__divsint
	mov	r2,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r2
	mov	dpl,_FormatTime_sloc1_1_0
	mov	dph,(_FormatTime_sloc1_1_0 + 1)
	mov	b,(_FormatTime_sloc1_1_0 + 2)
	lcall	__gptrput
;	../Common/DateTime.c:54: buffer[4] = (pdt->minutes % 10) + '0';
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,_FormatTime_sloc2_1_0
	mov	dph,(_FormatTime_sloc2_1_0 + 1)
	mov	b,(_FormatTime_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	r1,#0x00
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__modsint
	mov	r0,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	../Common/DateTime.c:55: if (!seconds)
	mov	dptr,#_FormatTime_PARM_3
	movx	a,@dptr
	jnz	00102$
;	../Common/DateTime.c:57: buffer[5] = 0;
	mov	a,#0x05
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
;	../Common/DateTime.c:58: return;
	ljmp	__gptrput
00102$:
;	../Common/DateTime.c:60: buffer[5] = ':';
	mov	a,#0x05
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x3a
	lcall	__gptrput
;	../Common/DateTime.c:61: buffer[6] = (pdt->seconds / 10) + '0';
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,_FormatTime_sloc0_1_0
	mov	dph,(_FormatTime_sloc0_1_0 + 1)
	mov	b,(_FormatTime_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	r1,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__divsint
	mov	r0,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	../Common/DateTime.c:62: buffer[7] = (pdt->seconds % 10) + '0';
	mov	a,#0x07
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,_FormatTime_sloc0_1_0
	mov	dph,(_FormatTime_sloc0_1_0 + 1)
	mov	b,(_FormatTime_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	r1,#0x00
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__modsint
	mov	r0,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	../Common/DateTime.c:63: buffer[8] = 0;
	mov	a,#0x08
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	../Common/DateTime.c:64: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'FormatDate'
;------------------------------------------------------------
;sloc0                     Allocated with name '_FormatDate_sloc0_1_0'
;sloc1                     Allocated with name '_FormatDate_sloc1_1_0'
;sloc2                     Allocated with name '_FormatDate_sloc2_1_0'
;pdt                       Allocated with name '_FormatDate_PARM_2'
;buffer                    Allocated with name '_FormatDate_buffer_65536_25'
;------------------------------------------------------------
;	../Common/DateTime.c:67: void FormatDate(char *buffer, DateTimeStruct *pdt)
;	-----------------------------------------
;	 function FormatDate
;	-----------------------------------------
_FormatDate:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_FormatDate_buffer_65536_25
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/DateTime.c:69: buffer[0] = (pdt->day / 10) + '0';
	mov	dptr,#_FormatDate_buffer_65536_25
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_FormatDate_PARM_2
	movx	a,@dptr
	mov	_FormatDate_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_FormatDate_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_FormatDate_sloc0_1_0 + 2),a
	mov	a,#0x04
	add	a,_FormatDate_sloc0_1_0
	mov	_FormatDate_sloc1_1_0,a
	clr	a
	addc	a,(_FormatDate_sloc0_1_0 + 1)
	mov	(_FormatDate_sloc1_1_0 + 1),a
	mov	(_FormatDate_sloc1_1_0 + 2),(_FormatDate_sloc0_1_0 + 2)
	mov	dpl,_FormatDate_sloc1_1_0
	mov	dph,(_FormatDate_sloc1_1_0 + 1)
	mov	b,(_FormatDate_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	mov	r2,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	lcall	__divsint
	mov	r2,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../Common/DateTime.c:70: buffer[1] = (pdt->day % 10) + '0';
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,_FormatDate_sloc1_1_0
	mov	dph,(_FormatDate_sloc1_1_0 + 1)
	mov	b,(_FormatDate_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	r1,#0x00
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__modsint
	mov	r0,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	../Common/DateTime.c:71: buffer[2] = '/';
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x2f
	lcall	__gptrput
;	../Common/DateTime.c:72: buffer[3] = (pdt->month / 10) + '0';
	mov	a,#0x03
	add	a,r5
	mov	_FormatDate_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_FormatDate_sloc1_1_0 + 1),a
	mov	(_FormatDate_sloc1_1_0 + 2),r7
	mov	a,#0x05
	add	a,_FormatDate_sloc0_1_0
	mov	_FormatDate_sloc2_1_0,a
	clr	a
	addc	a,(_FormatDate_sloc0_1_0 + 1)
	mov	(_FormatDate_sloc2_1_0 + 1),a
	mov	(_FormatDate_sloc2_1_0 + 2),(_FormatDate_sloc0_1_0 + 2)
	mov	dpl,_FormatDate_sloc2_1_0
	mov	dph,(_FormatDate_sloc2_1_0 + 1)
	mov	b,(_FormatDate_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	mov	r2,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	lcall	__divsint
	mov	r2,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r2
	mov	dpl,_FormatDate_sloc1_1_0
	mov	dph,(_FormatDate_sloc1_1_0 + 1)
	mov	b,(_FormatDate_sloc1_1_0 + 2)
	lcall	__gptrput
;	../Common/DateTime.c:73: buffer[4] = (pdt->month % 10) + '0';
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,_FormatDate_sloc2_1_0
	mov	dph,(_FormatDate_sloc2_1_0 + 1)
	mov	b,(_FormatDate_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	r1,#0x00
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__modsint
	mov	r0,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	../Common/DateTime.c:74: buffer[5] = '/';
	mov	a,#0x05
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x2f
	lcall	__gptrput
;	../Common/DateTime.c:75: buffer[6] = (pdt->year / 10) + '0';
	mov	a,#0x06
	add	a,r5
	mov	_FormatDate_sloc2_1_0,a
	clr	a
	addc	a,r6
	mov	(_FormatDate_sloc2_1_0 + 1),a
	mov	(_FormatDate_sloc2_1_0 + 2),r7
	mov	a,#0x06
	add	a,_FormatDate_sloc0_1_0
	mov	_FormatDate_sloc1_1_0,a
	clr	a
	addc	a,(_FormatDate_sloc0_1_0 + 1)
	mov	(_FormatDate_sloc1_1_0 + 1),a
	mov	(_FormatDate_sloc1_1_0 + 2),(_FormatDate_sloc0_1_0 + 2)
	mov	dpl,_FormatDate_sloc1_1_0
	mov	dph,(_FormatDate_sloc1_1_0 + 1)
	mov	b,(_FormatDate_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	mov	r2,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r2
	push	ar7
	push	ar6
	push	ar5
	lcall	__divsint
	mov	r2,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r2
	mov	dpl,_FormatDate_sloc2_1_0
	mov	dph,(_FormatDate_sloc2_1_0 + 1)
	mov	b,(_FormatDate_sloc2_1_0 + 2)
	lcall	__gptrput
;	../Common/DateTime.c:76: buffer[7] = (pdt->year % 10) + '0';
	mov	a,#0x07
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,_FormatDate_sloc1_1_0
	mov	dph,(_FormatDate_sloc1_1_0 + 1)
	mov	b,(_FormatDate_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	r1,#0x00
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__modsint
	mov	r0,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	../Common/DateTime.c:77: buffer[8] = 0;
	mov	a,#0x08
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
;	../Common/DateTime.c:78: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'AddSecondsToDateTime'
;------------------------------------------------------------
;sloc0                     Allocated with name '_AddSecondsToDateTime_sloc0_1_0'
;sloc1                     Allocated with name '_AddSecondsToDateTime_sloc1_1_0'
;sloc2                     Allocated with name '_AddSecondsToDateTime_sloc2_1_0'
;sloc3                     Allocated with name '_AddSecondsToDateTime_sloc3_1_0'
;sloc4                     Allocated with name '_AddSecondsToDateTime_sloc4_1_0'
;seconds                   Allocated with name '_AddSecondsToDateTime_PARM_2'
;result                    Allocated with name '_AddSecondsToDateTime_PARM_3'
;pdt                       Allocated with name '_AddSecondsToDateTime_pdt_65536_27'
;secondsLeft               Allocated with name '_AddSecondsToDateTime_secondsLeft_65536_28'
;secondsAdded              Allocated with name '_AddSecondsToDateTime_secondsAdded_65536_28'
;secondsToNextMinute       Allocated with name '_AddSecondsToDateTime_secondsToNextMinute_65536_28'
;numDays                   Allocated with name '_AddSecondsToDateTime_numDays_65536_28'
;------------------------------------------------------------
;	../Common/DateTime.c:81: void AddSecondsToDateTime(DateTimeStruct* pdt, int seconds, DateTimeStruct* result)
;	-----------------------------------------
;	 function AddSecondsToDateTime
;	-----------------------------------------
_AddSecondsToDateTime:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_AddSecondsToDateTime_pdt_65536_27
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/DateTime.c:86: result->day = pdt->day;
	mov	dptr,#_AddSecondsToDateTime_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	add	a,r5
	mov	_AddSecondsToDateTime_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_AddSecondsToDateTime_sloc0_1_0 + 1),a
	mov	(_AddSecondsToDateTime_sloc0_1_0 + 2),r7
	mov	dptr,#_AddSecondsToDateTime_pdt_65536_27
	movx	a,@dptr
	mov	_AddSecondsToDateTime_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_AddSecondsToDateTime_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_AddSecondsToDateTime_sloc1_1_0 + 2),a
	mov	a,#0x04
	add	a,_AddSecondsToDateTime_sloc1_1_0
	mov	r2,a
	clr	a
	addc	a,(_AddSecondsToDateTime_sloc1_1_0 + 1)
	mov	r3,a
	mov	r4,(_AddSecondsToDateTime_sloc1_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,_AddSecondsToDateTime_sloc0_1_0
	mov	dph,(_AddSecondsToDateTime_sloc0_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc0_1_0 + 2)
	lcall	__gptrput
;	../Common/DateTime.c:87: result->dayOfWeek = pdt->dayOfWeek;
	mov	a,#0x03
	add	a,r5
	mov	_AddSecondsToDateTime_sloc2_1_0,a
	clr	a
	addc	a,r6
	mov	(_AddSecondsToDateTime_sloc2_1_0 + 1),a
	mov	(_AddSecondsToDateTime_sloc2_1_0 + 2),r7
	mov	a,#0x03
	add	a,_AddSecondsToDateTime_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_AddSecondsToDateTime_sloc1_1_0 + 1)
	mov	r1,a
	mov	r4,(_AddSecondsToDateTime_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	dpl,_AddSecondsToDateTime_sloc2_1_0
	mov	dph,(_AddSecondsToDateTime_sloc2_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc2_1_0 + 2)
	lcall	__gptrput
;	../Common/DateTime.c:88: result->hours = pdt->hours;
	mov	a,#0x02
	add	a,r5
	mov	_AddSecondsToDateTime_sloc2_1_0,a
	clr	a
	addc	a,r6
	mov	(_AddSecondsToDateTime_sloc2_1_0 + 1),a
	mov	(_AddSecondsToDateTime_sloc2_1_0 + 2),r7
	mov	a,#0x02
	add	a,_AddSecondsToDateTime_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_AddSecondsToDateTime_sloc1_1_0 + 1)
	mov	r1,a
	mov	r4,(_AddSecondsToDateTime_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	dpl,_AddSecondsToDateTime_sloc2_1_0
	mov	dph,(_AddSecondsToDateTime_sloc2_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc2_1_0 + 2)
	lcall	__gptrput
;	../Common/DateTime.c:89: result->minutes = pdt->minutes;
	mov	a,#0x01
	add	a,r5
	mov	_AddSecondsToDateTime_sloc3_1_0,a
	clr	a
	addc	a,r6
	mov	(_AddSecondsToDateTime_sloc3_1_0 + 1),a
	mov	(_AddSecondsToDateTime_sloc3_1_0 + 2),r7
	mov	a,#0x01
	add	a,_AddSecondsToDateTime_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_AddSecondsToDateTime_sloc1_1_0 + 1)
	mov	r1,a
	mov	r4,(_AddSecondsToDateTime_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	dpl,_AddSecondsToDateTime_sloc3_1_0
	mov	dph,(_AddSecondsToDateTime_sloc3_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc3_1_0 + 2)
	lcall	__gptrput
;	../Common/DateTime.c:90: result->month = pdt->month;
	mov	a,#0x05
	add	a,r5
	mov	_AddSecondsToDateTime_sloc4_1_0,a
	clr	a
	addc	a,r6
	mov	(_AddSecondsToDateTime_sloc4_1_0 + 1),a
	mov	(_AddSecondsToDateTime_sloc4_1_0 + 2),r7
	mov	a,#0x05
	add	a,_AddSecondsToDateTime_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_AddSecondsToDateTime_sloc1_1_0 + 1)
	mov	r1,a
	mov	r4,(_AddSecondsToDateTime_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
	lcall	__gptrput
;	../Common/DateTime.c:91: result->seconds = pdt->seconds;
	mov	dpl,_AddSecondsToDateTime_sloc1_1_0
	mov	dph,(_AddSecondsToDateTime_sloc1_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../Common/DateTime.c:92: result->year = pdt->year;
	mov	a,#0x06
	add	a,r5
	mov	_AddSecondsToDateTime_sloc4_1_0,a
	clr	a
	addc	a,r6
	mov	(_AddSecondsToDateTime_sloc4_1_0 + 1),a
	mov	(_AddSecondsToDateTime_sloc4_1_0 + 2),r7
	mov	a,#0x06
	add	a,_AddSecondsToDateTime_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_AddSecondsToDateTime_sloc1_1_0 + 1)
	mov	r1,a
	mov	r4,(_AddSecondsToDateTime_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
	lcall	__gptrput
;	../Common/DateTime.c:95: secondsLeft = seconds;
	mov	dptr,#_AddSecondsToDateTime_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_AddSecondsToDateTime_secondsLeft_65536_28
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../Common/DateTime.c:96: while (secondsLeft > 0)
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
00111$:
	mov	dptr,#_AddSecondsToDateTime_secondsLeft_65536_28
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	clr	c
	clr	a
	subb	a,r0
	mov	a,#(0x00 ^ 0x80)
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jc	00150$
	ret
00150$:
;	../Common/DateTime.c:98: secondsToNextMinute = 60 - result->seconds;
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	a,#0x3c
	clr	c
	subb	a,r4
	mov	_AddSecondsToDateTime_sloc4_1_0,a
	clr	a
	subb	a,r3
	mov	(_AddSecondsToDateTime_sloc4_1_0 + 1),a
;	../Common/DateTime.c:99: secondsAdded = secondsLeft < secondsToNextMinute ? secondsLeft : secondsToNextMinute;
	clr	c
	mov	a,r0
	subb	a,_AddSecondsToDateTime_sloc4_1_0
	mov	a,r1
	xrl	a,#0x80
	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	pop	ar4
	pop	ar3
	pop	ar2
	jnc	00116$
	sjmp	00117$
00116$:
	mov	r0,_AddSecondsToDateTime_sloc4_1_0
	mov	r1,(_AddSecondsToDateTime_sloc4_1_0 + 1)
00117$:
;	../Common/DateTime.c:100: result->seconds += secondsAdded;
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	ar3,r0
	mov	a,r3
	add	a,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	../Common/DateTime.c:101: secondsLeft -= secondsAdded;
	mov	dptr,#_AddSecondsToDateTime_secondsLeft_65536_28
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_AddSecondsToDateTime_secondsLeft_65536_28
	mov	a,r3
	clr	c
	subb	a,r0
	movx	@dptr,a
	mov	a,r4
	subb	a,r1
	inc	dptr
	movx	@dptr,a
;	../Common/DateTime.c:104: if (result->seconds == 60)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x3c,00152$
	sjmp	00153$
00152$:
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00111$
00153$:
	pop	ar4
	pop	ar3
	pop	ar2
;	../Common/DateTime.c:106: result->seconds = 0;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../Common/DateTime.c:107: result->minutes++;
	mov	dpl,_AddSecondsToDateTime_sloc3_1_0
	mov	dph,(_AddSecondsToDateTime_sloc3_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	r1
	mov	dpl,_AddSecondsToDateTime_sloc3_1_0
	mov	dph,(_AddSecondsToDateTime_sloc3_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc3_1_0 + 2)
	mov	a,r1
	lcall	__gptrput
;	../Common/DateTime.c:108: if (result->minutes == 60)
	cjne	r1,#0x3c,00154$
	sjmp	00155$
00154$:
	ljmp	00111$
00155$:
;	../Common/DateTime.c:110: result->minutes = 0;
	mov	dpl,_AddSecondsToDateTime_sloc3_1_0
	mov	dph,(_AddSecondsToDateTime_sloc3_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc3_1_0 + 2)
	clr	a
	lcall	__gptrput
;	../Common/DateTime.c:111: result->hours++;
	mov	dpl,_AddSecondsToDateTime_sloc2_1_0
	mov	dph,(_AddSecondsToDateTime_sloc2_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	r1
	mov	dpl,_AddSecondsToDateTime_sloc2_1_0
	mov	dph,(_AddSecondsToDateTime_sloc2_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc2_1_0 + 2)
	mov	a,r1
	lcall	__gptrput
;	../Common/DateTime.c:112: if (result->hours == 24)
	cjne	r1,#0x18,00156$
	sjmp	00157$
00156$:
	ljmp	00111$
00157$:
;	../Common/DateTime.c:114: result->hours = 0;
	mov	dpl,_AddSecondsToDateTime_sloc2_1_0
	mov	dph,(_AddSecondsToDateTime_sloc2_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc2_1_0 + 2)
	clr	a
	lcall	__gptrput
;	../Common/DateTime.c:115: result->day++;
	mov	dpl,_AddSecondsToDateTime_sloc0_1_0
	mov	dph,(_AddSecondsToDateTime_sloc0_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	r1
	mov	dpl,_AddSecondsToDateTime_sloc0_1_0
	mov	dph,(_AddSecondsToDateTime_sloc0_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc0_1_0 + 2)
	mov	a,r1
	lcall	__gptrput
;	../Common/DateTime.c:116: numDays = GetNumDaysInMonth(result);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_GetNumDaysInMonth
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../Common/DateTime.c:117: if (result->day > numDays)
	mov	a,#0x04
	add	a,r2
	mov	_AddSecondsToDateTime_sloc4_1_0,a
	clr	a
	addc	a,r3
	mov	(_AddSecondsToDateTime_sloc4_1_0 + 1),a
	mov	(_AddSecondsToDateTime_sloc4_1_0 + 2),r4
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	clr	c
	mov	a,r0
	subb	a,r4
	mov	a,r1
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	pop	ar4
	pop	ar3
	pop	ar2
	jc	00158$
	ljmp	00111$
00158$:
;	../Common/DateTime.c:119: result->day = 1;
	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
	mov	a,#0x01
	lcall	__gptrput
;	../Common/DateTime.c:120: result->month++;
	mov	a,#0x05
	add	a,r2
	mov	_AddSecondsToDateTime_sloc4_1_0,a
	clr	a
	addc	a,r3
	mov	(_AddSecondsToDateTime_sloc4_1_0 + 1),a
	mov	(_AddSecondsToDateTime_sloc4_1_0 + 2),r4
	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	r1
	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
	mov	a,r1
	lcall	__gptrput
;	../Common/DateTime.c:121: if (result->month == 12)
	cjne	r1,#0x0c,00159$
	sjmp	00160$
00159$:
	ljmp	00111$
00160$:
;	../Common/DateTime.c:123: result->month = 1;
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
	mov	a,#0x01
	lcall	__gptrput
;	../Common/DateTime.c:124: result->year++;
	mov	a,#0x06
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	inc	r6
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	mov	a,r6
	lcall	__gptrput
	pop	ar7
	pop	ar6
	pop	ar5
;	../Common/DateTime.c:131: }
	ljmp	00111$
;------------------------------------------------------------
;Allocation info for local variables in function 'CompareDateTime'
;------------------------------------------------------------
;dt2                       Allocated with name '_CompareDateTime_PARM_2'
;dt1                       Allocated with name '_CompareDateTime_dt1_65536_35'
;sloc0                     Allocated with name '_CompareDateTime_sloc0_1_0'
;sloc1                     Allocated with name '_CompareDateTime_sloc1_1_0'
;sloc2                     Allocated with name '_CompareDateTime_sloc2_1_0'
;sloc3                     Allocated with name '_CompareDateTime_sloc3_1_0'
;sloc4                     Allocated with name '_CompareDateTime_sloc4_1_0'
;sloc5                     Allocated with name '_CompareDateTime_sloc5_1_0'
;------------------------------------------------------------
;	../Common/DateTime.c:134: int CompareDateTime(DateTimeStruct* dt1, DateTimeStruct* dt2)
;	-----------------------------------------
;	 function CompareDateTime
;	-----------------------------------------
_CompareDateTime:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_CompareDateTime_dt1_65536_35
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/DateTime.c:136: if (dt1->year == dt2->year)
	mov	dptr,#_CompareDateTime_dt1_65536_35
	movx	a,@dptr
	mov	_CompareDateTime_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_CompareDateTime_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_CompareDateTime_sloc2_1_0 + 2),a
	mov	a,#0x06
	add	a,_CompareDateTime_sloc2_1_0
	mov	r2,a
	clr	a
	addc	a,(_CompareDateTime_sloc2_1_0 + 1)
	mov	r3,a
	mov	r4,(_CompareDateTime_sloc2_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_CompareDateTime_sloc0_1_0,a
	mov	dptr,#_CompareDateTime_PARM_2
	movx	a,@dptr
	mov	_CompareDateTime_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_CompareDateTime_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_CompareDateTime_sloc1_1_0 + 2),a
	mov	a,#0x06
	add	a,_CompareDateTime_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_CompareDateTime_sloc1_1_0 + 1)
	mov	r3,a
	mov	r4,(_CompareDateTime_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	cjne	a,_CompareDateTime_sloc0_1_0,00145$
	sjmp	00146$
00145$:
	ljmp	00117$
00146$:
;	../Common/DateTime.c:138: if (dt1->month == dt2->month)
	mov	a,#0x05
	add	a,_CompareDateTime_sloc2_1_0
	mov	r1,a
	clr	a
	addc	a,(_CompareDateTime_sloc2_1_0 + 1)
	mov	r2,a
	mov	r3,(_CompareDateTime_sloc2_1_0 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r3,a
	mov	a,#0x05
	add	a,_CompareDateTime_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_CompareDateTime_sloc1_1_0 + 1)
	mov	r1,a
	mov	r2,(_CompareDateTime_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r2,a
	mov	a,r3
	cjne	a,ar2,00147$
	sjmp	00148$
00147$:
	ljmp	00114$
00148$:
;	../Common/DateTime.c:140: if (dt1->day == dt2->day)
	mov	a,#0x04
	add	a,_CompareDateTime_sloc2_1_0
	mov	r0,a
	clr	a
	addc	a,(_CompareDateTime_sloc2_1_0 + 1)
	mov	r1,a
	mov	r7,(_CompareDateTime_sloc2_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x04
	add	a,_CompareDateTime_sloc1_1_0
	mov	r1,a
	clr	a
	addc	a,(_CompareDateTime_sloc1_1_0 + 1)
	mov	r5,a
	mov	r6,(_CompareDateTime_sloc1_1_0 + 2)
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00149$
	sjmp	00150$
00149$:
	ljmp	00111$
00150$:
;	../Common/DateTime.c:142: if (dt1->hours == dt2->hours)
	mov	a,#0x02
	add	a,_CompareDateTime_sloc2_1_0
	mov	r0,a
	clr	a
	addc	a,(_CompareDateTime_sloc2_1_0 + 1)
	mov	r1,a
	mov	r5,(_CompareDateTime_sloc2_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	lcall	__gptrget
	mov	_CompareDateTime_sloc3_1_0,a
	mov	a,#0x02
	add	a,_CompareDateTime_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_CompareDateTime_sloc1_1_0 + 1)
	mov	r1,a
	mov	r5,(_CompareDateTime_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	lcall	__gptrget
	mov	r5,a
	cjne	a,_CompareDateTime_sloc3_1_0,00151$
	sjmp	00152$
00151$:
	ljmp	00108$
00152$:
;	../Common/DateTime.c:144: if (dt1->minutes == dt2->minutes)
	mov	a,#0x01
	add	a,_CompareDateTime_sloc2_1_0
	mov	_CompareDateTime_sloc4_1_0,a
	clr	a
	addc	a,(_CompareDateTime_sloc2_1_0 + 1)
	mov	(_CompareDateTime_sloc4_1_0 + 1),a
	mov	(_CompareDateTime_sloc4_1_0 + 2),(_CompareDateTime_sloc2_1_0 + 2)
	mov	dpl,_CompareDateTime_sloc4_1_0
	mov	dph,(_CompareDateTime_sloc4_1_0 + 1)
	mov	b,(_CompareDateTime_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	_CompareDateTime_sloc4_1_0,a
	mov	a,#0x01
	add	a,_CompareDateTime_sloc1_1_0
	mov	_CompareDateTime_sloc5_1_0,a
	clr	a
	addc	a,(_CompareDateTime_sloc1_1_0 + 1)
	mov	(_CompareDateTime_sloc5_1_0 + 1),a
	mov	(_CompareDateTime_sloc5_1_0 + 2),(_CompareDateTime_sloc1_1_0 + 2)
	mov	dpl,_CompareDateTime_sloc5_1_0
	mov	dph,(_CompareDateTime_sloc5_1_0 + 1)
	mov	b,(_CompareDateTime_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	_CompareDateTime_sloc5_1_0,a
	cjne	a,_CompareDateTime_sloc4_1_0,00105$
;	../Common/DateTime.c:146: if (dt1->seconds == dt2->seconds)
	mov	dpl,_CompareDateTime_sloc2_1_0
	mov	dph,(_CompareDateTime_sloc2_1_0 + 1)
	mov	b,(_CompareDateTime_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	dpl,_CompareDateTime_sloc1_1_0
	mov	dph,(_CompareDateTime_sloc1_1_0 + 1)
	mov	b,(_CompareDateTime_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	_CompareDateTime_sloc5_1_0,a
	mov	a,r0
	cjne	a,_CompareDateTime_sloc5_1_0,00102$
;	../Common/DateTime.c:148: return 0;
	mov	dptr,#0x0000
	ret
00102$:
;	../Common/DateTime.c:152: return dt1->seconds - dt2->seconds;
	mov	_CompareDateTime_sloc2_1_0,r0
	clr	a
	mov	(_CompareDateTime_sloc2_1_0 + 1),a
	mov	(_CompareDateTime_sloc5_1_0 + 1),a
	mov	a,_CompareDateTime_sloc2_1_0
	clr	c
	subb	a,_CompareDateTime_sloc5_1_0
	mov	_CompareDateTime_sloc5_1_0,a
	mov	a,(_CompareDateTime_sloc2_1_0 + 1)
	subb	a,(_CompareDateTime_sloc5_1_0 + 1)
	mov	(_CompareDateTime_sloc5_1_0 + 1),a
	mov	dpl,_CompareDateTime_sloc5_1_0
	mov	dph,(_CompareDateTime_sloc5_1_0 + 1)
	ret
00105$:
;	../Common/DateTime.c:157: return dt1->minutes - dt2->minutes;
	mov	(_CompareDateTime_sloc4_1_0 + 1),#0x00
	mov	r0,_CompareDateTime_sloc5_1_0
	mov	r1,#0x00
	mov	a,_CompareDateTime_sloc4_1_0
	clr	c
	subb	a,r0
	mov	r0,a
	mov	a,(_CompareDateTime_sloc4_1_0 + 1)
	subb	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	ret
00108$:
;	../Common/DateTime.c:162: return dt1->hours - dt2->hours;
	mov	_CompareDateTime_sloc5_1_0,_CompareDateTime_sloc3_1_0
	mov	(_CompareDateTime_sloc5_1_0 + 1),#0x00
	mov	ar1,r5
	mov	r5,#0x00
	mov	a,_CompareDateTime_sloc5_1_0
	clr	c
	subb	a,r1
	mov	r1,a
	mov	a,(_CompareDateTime_sloc5_1_0 + 1)
	subb	a,r5
	mov	r5,a
	mov	dpl,r1
	mov	dph,r5
	ret
00111$:
;	../Common/DateTime.c:167: return dt1->day - dt2->day;
	mov	r5,#0x00
	mov	ar1,r6
	mov	r6,#0x00
	mov	a,r7
	clr	c
	subb	a,r1
	mov	r7,a
	mov	a,r5
	subb	a,r6
	mov	r5,a
	mov	dpl,r7
	mov	dph,r5
	ret
00114$:
;	../Common/DateTime.c:172: return dt1->month - dt2->month;
	clr	a
	mov	r7,a
	mov	r6,a
	mov	a,r3
	clr	c
	subb	a,r2
	mov	r3,a
	mov	a,r7
	subb	a,r6
	mov	r7,a
	mov	dpl,r3
	mov	dph,r7
	ret
00117$:
;	../Common/DateTime.c:177: return dt1->year - dt2->year;
	mov	r6,_CompareDateTime_sloc0_1_0
	clr	a
	mov	r7,a
	mov	r5,a
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r6,a
	mov	a,r7
	subb	a,r5
;	../Common/DateTime.c:180: }
	mov	dpl,r6
	mov	dph,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
