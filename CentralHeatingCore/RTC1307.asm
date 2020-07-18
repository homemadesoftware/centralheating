;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module RTC1307
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DecodeBcd
	.globl _EncodeAsBcd
	.globl _I2C_RecvData
	.globl _I2C_SendData
	.globl _I2C_Initialise
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
	.globl _Rtc_ReadClock
	.globl _Rtc_WriteClock
	.globl _Rtc_Initialise
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
_EncodeAsBcd_value_65536_16:
	.ds 1
_DecodeBcd_value_65536_18:
	.ds 1
_Rtc_ReadClock_dateTime_65536_20:
	.ds 3
_Rtc_ReadClock_buffer_65536_21:
	.ds 9
_Rtc_WriteClock_dateTime_65536_25:
	.ds 3
_Rtc_WriteClock_buffer_65536_26:
	.ds 9
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
;Allocation info for local variables in function 'EncodeAsBcd'
;------------------------------------------------------------
;value                     Allocated with name '_EncodeAsBcd_value_65536_16'
;result                    Allocated with name '_EncodeAsBcd_result_65536_17'
;------------------------------------------------------------
;	RTC1307.c:9: unsigned char EncodeAsBcd(unsigned char value)
;	-----------------------------------------
;	 function EncodeAsBcd
;	-----------------------------------------
_EncodeAsBcd:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_EncodeAsBcd_value_65536_16
	movx	@dptr,a
;	RTC1307.c:11: unsigned char result = ((value % 10) & 0xf);
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	push	ar7
	push	ar6
	lcall	__modsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	anl	ar4,#0x0f
;	RTC1307.c:12: result |= ((value / 10) & 0xf) << 4;
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	push	ar4
	lcall	__divsint
	mov	r6,dpl
	pop	ar4
	anl	ar6,#0x0f
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov	r6,a
	mov	a,r4
	orl	ar6,a
;	RTC1307.c:13: return result;
	mov	dpl,r6
;	RTC1307.c:14: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DecodeBcd'
;------------------------------------------------------------
;value                     Allocated with name '_DecodeBcd_value_65536_18'
;------------------------------------------------------------
;	RTC1307.c:16: unsigned char DecodeBcd(unsigned char value)
;	-----------------------------------------
;	 function DecodeBcd
;	-----------------------------------------
_DecodeBcd:
	mov	a,dpl
	mov	dptr,#_DecodeBcd_value_65536_18
	movx	@dptr,a
;	RTC1307.c:18: return (10 * ((value & 0xf0) >> 4)) + (value & 0xf);
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	anl	ar5,#0xf0
	clr	a
	swap	a
	xch	a,r5
	swap	a
	anl	a,#0x0f
	xrl	a,r5
	xch	a,r5
	anl	a,#0x0f
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	jnb	acc.3,00103$
	orl	a,#0xf0
00103$:
	mov	a,r5
	mov	b,#0x0a
	mul	ab
	mov	r5,a
	mov	a,#0x0f
	anl	a,r7
	add	a,r5
;	RTC1307.c:19: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Rtc_ReadClock'
;------------------------------------------------------------
;dateTime                  Allocated with name '_Rtc_ReadClock_dateTime_65536_20'
;buffer                    Allocated with name '_Rtc_ReadClock_buffer_65536_21'
;i                         Allocated with name '_Rtc_ReadClock_i_65536_21'
;------------------------------------------------------------
;	RTC1307.c:21: unsigned char Rtc_ReadClock(DateTimeStruct *dateTime)
;	-----------------------------------------
;	 function Rtc_ReadClock
;	-----------------------------------------
_Rtc_ReadClock:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_Rtc_ReadClock_dateTime_65536_20
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	RTC1307.c:25: for (i = 0; i < BUFFER_LEN; ++i)
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
;	RTC1307.c:27: buffer[i] = 0;
	mov	a,r6
	add	a,#_Rtc_ReadClock_buffer_65536_21
	mov	dpl,a
	mov	a,r7
	addc	a,#(_Rtc_ReadClock_buffer_65536_21 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	RTC1307.c:25: for (i = 0; i < BUFFER_LEN; ++i)
	inc	r6
	cjne	r6,#0x00,00121$
	inc	r7
00121$:
	clr	c
	mov	a,r6
	subb	a,#0x09
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00104$
;	RTC1307.c:31: I2C_SendData(DS1307ADDRESS, buffer, 1);
	mov	dptr,#_I2C_SendData_PARM_2
	mov	a,#_Rtc_ReadClock_buffer_65536_21
	movx	@dptr,a
	mov	a,#(_Rtc_ReadClock_buffer_65536_21 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_I2C_SendData_PARM_3
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x68
	lcall	_I2C_SendData
;	RTC1307.c:33: if (!I2C_RecvData(DS1307ADDRESS, buffer, 7))
	mov	dptr,#_I2C_RecvData_PARM_2
	mov	a,#_Rtc_ReadClock_buffer_65536_21
	movx	@dptr,a
	mov	a,#(_Rtc_ReadClock_buffer_65536_21 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_I2C_RecvData_PARM_3
	mov	a,#0x07
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x68
	lcall	_I2C_RecvData
	mov	a,dpl
;	RTC1307.c:35: return 0;
	jnz	00103$
	mov	dpl,a
	ret
00103$:
;	RTC1307.c:39: dateTime->seconds = DecodeBcd(buffer[0] & 0x7F);
	mov	dptr,#_Rtc_ReadClock_dateTime_65536_20
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_Rtc_ReadClock_buffer_65536_21
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0x7f
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_DecodeBcd
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	RTC1307.c:40: dateTime->minutes = DecodeBcd(buffer[1] & 0x7F);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#(_Rtc_ReadClock_buffer_65536_21 + 0x0001)
	movx	a,@dptr
	mov	r1,a
	anl	ar1,#0x7f
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_DecodeBcd
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	RTC1307.c:41: dateTime->hours = DecodeBcd(buffer[2] & 0x3F);
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#(_Rtc_ReadClock_buffer_65536_21 + 0x0002)
	movx	a,@dptr
	mov	r1,a
	anl	ar1,#0x3f
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_DecodeBcd
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	RTC1307.c:42: dateTime->dayOfWeek = DecodeBcd(buffer[3] & 0x7);
	mov	a,#0x03
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#(_Rtc_ReadClock_buffer_65536_21 + 0x0003)
	movx	a,@dptr
	mov	r1,a
	anl	ar1,#0x07
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_DecodeBcd
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	RTC1307.c:43: dateTime->day = DecodeBcd(buffer[4] & 0x3F);
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#(_Rtc_ReadClock_buffer_65536_21 + 0x0004)
	movx	a,@dptr
	mov	r1,a
	anl	ar1,#0x3f
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_DecodeBcd
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	RTC1307.c:44: dateTime->month = DecodeBcd(buffer[5] & 0x1F);
	mov	a,#0x05
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#(_Rtc_ReadClock_buffer_65536_21 + 0x0005)
	movx	a,@dptr
	mov	r1,a
	anl	ar1,#0x1f
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_DecodeBcd
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	RTC1307.c:45: dateTime->year = DecodeBcd(buffer[6]);
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#(_Rtc_ReadClock_buffer_65536_21 + 0x0006)
	movx	a,@dptr
	mov	dpl,a
	push	ar6
	push	ar5
	lcall	_DecodeBcd
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	RTC1307.c:47: return 1;
	mov	dpl,#0x01
;	RTC1307.c:48: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Rtc_WriteClock'
;------------------------------------------------------------
;dateTime                  Allocated with name '_Rtc_WriteClock_dateTime_65536_25'
;buffer                    Allocated with name '_Rtc_WriteClock_buffer_65536_26'
;------------------------------------------------------------
;	RTC1307.c:51: unsigned char Rtc_WriteClock(DateTimeStruct *dateTime)
;	-----------------------------------------
;	 function Rtc_WriteClock
;	-----------------------------------------
_Rtc_WriteClock:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_Rtc_WriteClock_dateTime_65536_25
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	RTC1307.c:55: buffer[0] = 0;
	mov	dptr,#_Rtc_WriteClock_buffer_65536_26
	clr	a
	movx	@dptr,a
;	RTC1307.c:56: buffer[1] = EncodeAsBcd(dateTime->seconds) & 0x7F; // Also clear CH
	mov	dptr,#_Rtc_WriteClock_dateTime_65536_25
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
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_EncodeAsBcd
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	anl	a,#0x7f
	mov	dptr,#(_Rtc_WriteClock_buffer_65536_26 + 0x0001)
	movx	@dptr,a
;	RTC1307.c:57: buffer[2] = EncodeAsBcd(dateTime->minutes) & 0x7F;
	mov	a,#0x01
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
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_EncodeAsBcd
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	anl	a,#0x7f
	mov	dptr,#(_Rtc_WriteClock_buffer_65536_26 + 0x0002)
	movx	@dptr,a
;	RTC1307.c:58: buffer[3] = (EncodeAsBcd(dateTime->hours) & 0x7F) | 0x80; // 24 hour
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
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_EncodeAsBcd
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	anl	a,#0x7f
	orl	a,#0x80
	mov	dptr,#(_Rtc_WriteClock_buffer_65536_26 + 0x0003)
	movx	@dptr,a
;	RTC1307.c:59: buffer[4] = EncodeAsBcd(dateTime->dayOfWeek) & 0x7;
	mov	a,#0x03
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
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_EncodeAsBcd
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	anl	a,#0x07
	mov	dptr,#(_Rtc_WriteClock_buffer_65536_26 + 0x0004)
	movx	@dptr,a
;	RTC1307.c:60: buffer[5] = EncodeAsBcd(dateTime->day) & 0x3F;
	mov	a,#0x04
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
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_EncodeAsBcd
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	anl	a,#0x3f
	mov	dptr,#(_Rtc_WriteClock_buffer_65536_26 + 0x0005)
	movx	@dptr,a
;	RTC1307.c:61: buffer[6] = EncodeAsBcd(dateTime->month) & 0x1F;
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
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_EncodeAsBcd
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	anl	a,#0x1f
	mov	dptr,#(_Rtc_WriteClock_buffer_65536_26 + 0x0006)
	movx	@dptr,a
;	RTC1307.c:62: buffer[7] = EncodeAsBcd(dateTime->year);
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	lcall	_EncodeAsBcd
	mov	r7,dpl
	mov	dptr,#(_Rtc_WriteClock_buffer_65536_26 + 0x0007)
	mov	a,r7
	movx	@dptr,a
;	RTC1307.c:65: return I2C_SendData(DS1307ADDRESS, buffer, 8);
	mov	dptr,#_I2C_SendData_PARM_2
	mov	a,#_Rtc_WriteClock_buffer_65536_26
	movx	@dptr,a
	mov	a,#(_Rtc_WriteClock_buffer_65536_26 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_I2C_SendData_PARM_3
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x68
;	RTC1307.c:66: }
	ljmp	_I2C_SendData
;------------------------------------------------------------
;Allocation info for local variables in function 'Rtc_Initialise'
;------------------------------------------------------------
;	RTC1307.c:69: void Rtc_Initialise()
;	-----------------------------------------
;	 function Rtc_Initialise
;	-----------------------------------------
_Rtc_Initialise:
;	RTC1307.c:71: I2C_Initialise();
;	RTC1307.c:72: }
	ljmp	_I2C_Initialise
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
