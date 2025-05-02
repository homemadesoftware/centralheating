;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (MINGW64)
;--------------------------------------------------------
	.module 89C51Board
	
	.optsdcc -mmcs51 --model-large
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _Rtc_WriteClock
	.globl _Rtc_ReadClock
	.globl _Rtc_Initialise
	.globl _DirectWriteToDisplay
	.globl _InitialiseLcd
	.globl _UserProgram
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
	.globl _timers
	.globl _pCrashDump
	.globl _pSetOutputPortValues
	.globl _pGetInputPortValues
	.globl _pGetKeyState
	.globl _pWriteDisplayBuffer
	.globl _pSetRtc
	.globl _pGetRtc
	.globl _pEnableTimer
	.globl _pRegisterForTimer
	.globl _Hardware_ScheduleUserCalls
	.globl _Hardware_InitialiseHardware
	.globl _Hardware_RegisterForTimer
	.globl _Hardware_EnableTimer
	.globl _Hardware_WriteDisplayBuffer
	.globl _Hardware_SetRtc
	.globl _Hardware_GetRtc
	.globl _Hardware_GetKeyState
	.globl _Hardware_GetInputPortValues
	.globl _Hardware_SetOutputPortValues
	.globl _Hardware_CrashDump
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
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

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
_pRegisterForTimer::
	.ds 2
_pEnableTimer::
	.ds 2
_pGetRtc::
	.ds 2
_pSetRtc::
	.ds 2
_pWriteDisplayBuffer::
	.ds 2
_pGetKeyState::
	.ds 2
_pGetInputPortValues::
	.ds 2
_pSetOutputPortValues::
	.ds 2
_pCrashDump::
	.ds 2
_timers::
	.ds 90
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
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
; restartable atomic support routines
	.ds	5
sdcc_atomic_exchange_rollback_start::
	nop
	nop
sdcc_atomic_exchange_pdata_impl:
	movx	a, @r0
	mov	r3, a
	mov	a, r2
	movx	@r0, a
	sjmp	sdcc_atomic_exchange_exit
	nop
	nop
sdcc_atomic_exchange_xdata_impl:
	movx	a, @dptr
	mov	r3, a
	mov	a, r2
	movx	@dptr, a
	sjmp	sdcc_atomic_exchange_exit
sdcc_atomic_compare_exchange_idata_impl:
	mov	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	mov	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_pdata_impl:
	movx	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_xdata_impl:
	movx	a, @dptr
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@dptr, a
	ret
sdcc_atomic_exchange_rollback_end::

sdcc_atomic_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_exchange_pdata_impl
sdcc_atomic_exchange_idata_impl:
	mov	a, r2
	xch	a, @r0
	mov	dpl, a
	ret
sdcc_atomic_exchange_exit:
	mov	dpl, r3
	ret
sdcc_atomic_compare_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
	sjmp	sdcc_atomic_compare_exchange_idata_impl
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	89C51Board.c:60: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	89C51Board.c:62: CKCON0 = 0x01;						// Initial X2 Mode (BUS Clock = 58.9824 MHz) 
	mov	_CKCON0,#0x01
;	89C51Board.c:66: Hardware_InitialiseHardware();
	lcall	_Hardware_InitialiseHardware
;	89C51Board.c:74: UserProgram();
	lcall	_UserProgram
;	89C51Board.c:76: Hardware_ScheduleUserCalls();
;	89C51Board.c:78: }   
	ljmp	_Hardware_ScheduleUserCalls
;------------------------------------------------------------
;Allocation info for local variables in function 'Hardware_ScheduleUserCalls'
;------------------------------------------------------------
;timerCounter  Allocated to stack - _bp +5 +2 
;c             Allocated to registers r4 r5 r6 r7 
;pTimer        Allocated to registers r3 r4 
;sloc0         Allocated to stack - _bp +1 +2 
;sloc1         Allocated to stack - _bp +3 +2 
;------------------------------------------------------------
;	89C51Board.c:81: void Hardware_ScheduleUserCalls() REENTRANT
;	-----------------------------------------
;	 function Hardware_ScheduleUserCalls
;	-----------------------------------------
_Hardware_ScheduleUserCalls:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x06
	mov	sp,a
;	89C51Board.c:88: for (timerCounter = 0; timerCounter < MAX_TIMERS; ++timerCounter)
00121$:
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
00111$:
;	89C51Board.c:90: TimerSetup *pTimer = timers + timerCounter;
	mov	a,r5
	add	a, #_timers
	mov	r3,a
	mov	a,r6
	addc	a, #(_timers >> 8)
	mov	r4,a
;	89C51Board.c:91: if (pTimer->cookie != 0 && pTimer->periodMilliseconds <= pTimer->ticksSoFar && pTimer->enabled)
	mov	r0,_bp
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	orl	a,r2
	jnz	00168$
	ljmp	00102$
00168$:
	push	ar5
	push	ar6
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x04
	add	a, r3
	mov	@r0,a
	clr	a
	addc	a, r4
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,r5
	subb	a,r2
	mov	a,r6
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	pop	ar6
	pop	ar5
	jc	00102$
	mov	a,#0x06
	add	a, r3
	mov	r2,a
	clr	a
	addc	a, r4
	mov	r7,a
	mov	dpl,r2
	mov	dph,r7
	movx	a,@dptr
	jz	00102$
;	89C51Board.c:94: pTimer->ticksSoFar = 0;
	push	ar5
	push	ar6
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	89C51Board.c:95: pTimer->callback(pTimer->cookie);
	mov	a,#0x07
	add	a, r3
	mov	dpl,a
	clr	a
	addc	a, r4
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	lcall	00171$
	sjmp	00172$
00171$:
	push	ar2
	push	ar7
	mov	dpl, r5
	mov	dph, r6
	ret
00172$:
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00112$
00102$:
;	89C51Board.c:99: pTimer->ticksSoFar++;
	mov	a,#0x04
	add	a, r3
	mov	r3,a
	clr	a
	addc	a, r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r2
	cjne	r2,#0x00,00173$
	inc	r7
00173$:
	mov	dpl,r3
	mov	dph,r4
	mov	a,r2
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00112$:
;	89C51Board.c:88: for (timerCounter = 0; timerCounter < MAX_TIMERS; ++timerCounter)
	mov	a,#0x09
	add	a, r5
	mov	r5,a
	clr	a
	addc	a, r6
	mov	r6,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,@r0
	inc	a
	mov	@r1,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	cjne	@r0,#0x0a,00174$
00174$:
	jnc	00175$
	ljmp	00111$
00175$:
;	89C51Board.c:104: for (c = 0; c < 100; ++c)
	mov	r4,#0x64
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00115$:
	dec	r4
	cjne	r4,#0xff,00176$
	dec	r5
	cjne	r5,#0xff,00176$
	dec	r6
	cjne	r6,#0xff,00176$
	dec	r7
00176$:
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00115$
	ljmp	00121$
;	89C51Board.c:109: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Hardware_InitialiseHardware'
;------------------------------------------------------------
;i             Allocated to registers r7 
;------------------------------------------------------------
;	89C51Board.c:112: void Hardware_InitialiseHardware() REENTRANT
;	-----------------------------------------
;	 function Hardware_InitialiseHardware
;	-----------------------------------------
_Hardware_InitialiseHardware:
;	89C51Board.c:116: for (i = 0; i < MAX_TIMERS; ++i)
	mov	r7,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
00102$:
;	89C51Board.c:118: timers[i].cookie = 0;
	mov	a,r5
	add	a, #_timers
	mov	dpl,a
	mov	a,r6
	addc	a, #(_timers >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	89C51Board.c:116: for (i = 0; i < MAX_TIMERS; ++i)
	mov	a,#0x09
	add	a, r5
	mov	r5,a
	clr	a
	addc	a, r6
	mov	r6,a
	inc	r7
	cjne	r7,#0x0a,00119$
00119$:
	jc	00102$
;	89C51Board.c:122: pRegisterForTimer = Hardware_RegisterForTimer;
	mov	r6,#_Hardware_RegisterForTimer
	mov	r7,#(_Hardware_RegisterForTimer >> 8)
	mov	dptr,#_pRegisterForTimer
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	89C51Board.c:123: pEnableTimer = Hardware_EnableTimer;
	mov	r6,#_Hardware_EnableTimer
	mov	r7,#(_Hardware_EnableTimer >> 8)
	mov	dptr,#_pEnableTimer
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	89C51Board.c:124: pGetRtc = Hardware_GetRtc;
	mov	r6,#_Hardware_GetRtc
	mov	r7,#(_Hardware_GetRtc >> 8)
	mov	dptr,#_pGetRtc
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	89C51Board.c:125: pSetRtc = Hardware_SetRtc;
	mov	r6,#_Hardware_SetRtc
	mov	r7,#(_Hardware_SetRtc >> 8)
	mov	dptr,#_pSetRtc
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	89C51Board.c:126: pWriteDisplayBuffer = Hardware_WriteDisplayBuffer;
	mov	r6,#_Hardware_WriteDisplayBuffer
	mov	r7,#(_Hardware_WriteDisplayBuffer >> 8)
	mov	dptr,#_pWriteDisplayBuffer
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	89C51Board.c:127: pGetKeyState = Hardware_GetKeyState;
	mov	r6,#_Hardware_GetKeyState
	mov	r7,#(_Hardware_GetKeyState >> 8)
	mov	dptr,#_pGetKeyState
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	89C51Board.c:128: pGetInputPortValues = Hardware_GetInputPortValues;
	mov	r6,#_Hardware_GetInputPortValues
	mov	r7,#(_Hardware_GetInputPortValues >> 8)
	mov	dptr,#_pGetInputPortValues
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	89C51Board.c:129: pSetOutputPortValues = Hardware_SetOutputPortValues;
	mov	r6,#_Hardware_SetOutputPortValues
	mov	r7,#(_Hardware_SetOutputPortValues >> 8)
	mov	dptr,#_pSetOutputPortValues
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	89C51Board.c:130: pCrashDump = Hardware_CrashDump;
	mov	r6,#_Hardware_CrashDump
	mov	r7,#(_Hardware_CrashDump >> 8)
	mov	dptr,#_pCrashDump
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	89C51Board.c:134: InitialiseLcd();
	lcall	_InitialiseLcd
;	89C51Board.c:135: Rtc_Initialise();
;	89C51Board.c:137: }
	ljmp	_Rtc_Initialise
;------------------------------------------------------------
;Allocation info for local variables in function 'Hardware_RegisterForTimer'
;------------------------------------------------------------
;milliSeconds  Allocated to stack - _bp -4 +2 
;callback      Allocated to stack - _bp -6 +2 
;cookie        Allocated to stack - _bp +1 +2 
;i             Allocated to registers r4 r5 
;sloc0         Allocated to stack - _bp +5 +2 
;sloc1         Allocated to stack - _bp +3 +2 
;------------------------------------------------------------
;	89C51Board.c:140: void Hardware_RegisterForTimer(int cookie, int milliSeconds, CallbackDelegate callback) REENTRANT
;	-----------------------------------------
;	 function Hardware_RegisterForTimer
;	-----------------------------------------
_Hardware_RegisterForTimer:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	inc	sp
	inc	sp
;	89C51Board.c:144: for (i = 0; i < MAX_TIMERS; ++i)
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r7,#0x00
	mov	r6,#0x00
00105$:
;	89C51Board.c:146: if (timers[i].cookie == 0 || timers[i].cookie == cookie)
	mov	a,r7
	add	a, #_timers
	mov	dpl,a
	mov	a,r6
	addc	a, #(_timers >> 8)
	mov	dph,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00101$
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00128$
	inc	r0
	mov	b,@r0
	inc	r1
	mov	a,@r1
	cjne	a,b,00128$
	sjmp	00129$
00128$:
	sjmp	00106$
00129$:
00101$:
;	89C51Board.c:148: timers[i].cookie = cookie;
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0009
	lcall	__mulint
	mov	r6, dpl
	mov	r7, dph
	mov	a,r6
	add	a, #_timers
	mov	r6,a
	mov	a,r7
	addc	a, #(_timers >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	89C51Board.c:149: timers[i].periodMilliseconds = milliSeconds;
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	89C51Board.c:150: timers[i].ticksSoFar = 0;
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	89C51Board.c:151: timers[i].enabled = 1;
	mov	a,#0x06
	add	a, r6
	mov	dpl,a
	clr	a
	addc	a, r7
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
;	89C51Board.c:152: timers[i].callback = callback;
	mov	a,#0x07
	add	a, r6
	mov	dpl,a
	clr	a
	addc	a, r7
	mov	dph,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	89C51Board.c:153: return;
	sjmp	00107$
00106$:
;	89C51Board.c:144: for (i = 0; i < MAX_TIMERS; ++i)
	mov	a,#0x09
	add	a, r7
	mov	r7,a
	clr	a
	addc	a, r6
	mov	r6,a
	inc	r2
	cjne	r2,#0x00,00130$
	inc	r3
00130$:
	mov	ar4,r2
	mov	ar5,r3
	clr	c
	mov	a,r2
	subb	a,#0x0a
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00131$
	ljmp	00105$
00131$:
;	89C51Board.c:157: pCrashDump("OutOfTimers");
	lcall	00132$
	sjmp	00133$
00132$:
	mov	dptr,#_pCrashDump
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#___str_0
	mov	b, #0x80
	ret
00133$:
00107$:
;	89C51Board.c:159: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Hardware_EnableTimer'
;------------------------------------------------------------
;enabled       Allocated to stack - _bp -4 +2 
;cookie        Allocated to registers r6 r7 
;i             Allocated to registers r4 r5 
;sloc0         Allocated to stack - _bp +1 +2 
;sloc1         Allocated to stack - _bp +3 +2 
;sloc2         Allocated to stack - _bp +9 +1 
;------------------------------------------------------------
;	89C51Board.c:162: void Hardware_EnableTimer(int cookie, int enabled) REENTRANT
;	-----------------------------------------
;	 function Hardware_EnableTimer
;	-----------------------------------------
_Hardware_EnableTimer:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	mov	r6, dpl
	mov	r7, dph
;	89C51Board.c:165: for (i = 0; i < MAX_TIMERS; ++i)
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00105$:
;	89C51Board.c:167: if (timers[i].cookie == 0 || timers[i].cookie == cookie)
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a, #_timers
	mov	dpl,a
	inc	r0
	mov	a,@r0
	addc	a, #(_timers >> 8)
	mov	dph,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00101$
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	cjne	a,ar6,00122$
	inc	r0
	mov	a,@r0
	cjne	a,ar7,00122$
	sjmp	00123$
00122$:
	sjmp	00106$
00123$:
00101$:
;	89C51Board.c:169: timers[i].enabled = enabled;
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0009
	lcall	__mulint
	mov	r7, dpl
	mov	r6, dph
	mov	a,r7
	add	a, #_timers
	mov	r7,a
	mov	a,r6
	addc	a, #(_timers >> 8)
	mov	r6,a
	mov	a,#0x06
	add	a, r7
	mov	r7,a
	clr	a
	addc	a, r6
	mov	r6,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	a,r5
	movx	@dptr,a
;	89C51Board.c:170: return;
	sjmp	00107$
00106$:
;	89C51Board.c:165: for (i = 0; i < MAX_TIMERS; ++i)
	mov	r0,_bp
	inc	r0
	mov	a,#0x09
	add	a, @r0
	mov	@r0,a
	clr	a
	inc	r0
	addc	a, @r0
	mov	@r0,a
	inc	r2
	cjne	r2,#0x00,00124$
	inc	r3
00124$:
	mov	ar4,r2
	mov	ar5,r3
	clr	c
	mov	a,r2
	subb	a,#0x0a
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00125$
	ljmp	00105$
00125$:
00107$:
;	89C51Board.c:173: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Hardware_WriteDisplayBuffer'
;------------------------------------------------------------
;buffer        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	89C51Board.c:176: void Hardware_WriteDisplayBuffer(unsigned char* buffer) REENTRANT
;	-----------------------------------------
;	 function Hardware_WriteDisplayBuffer
;	-----------------------------------------
_Hardware_WriteDisplayBuffer:
;	89C51Board.c:178: DirectWriteToDisplay(buffer);
;	89C51Board.c:179: }
	ljmp	_DirectWriteToDisplay
;------------------------------------------------------------
;Allocation info for local variables in function 'Hardware_SetRtc'
;------------------------------------------------------------
;dts           Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	89C51Board.c:181: void Hardware_SetRtc(DateTimeStruct* dts) REENTRANT
;	-----------------------------------------
;	 function Hardware_SetRtc
;	-----------------------------------------
_Hardware_SetRtc:
;	89C51Board.c:183: Rtc_WriteClock(dts);
;	89C51Board.c:184: }
	ljmp	_Rtc_WriteClock
;------------------------------------------------------------
;Allocation info for local variables in function 'Hardware_GetRtc'
;------------------------------------------------------------
;dts           Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	89C51Board.c:186: void Hardware_GetRtc(DateTimeStruct* dts) REENTRANT
;	-----------------------------------------
;	 function Hardware_GetRtc
;	-----------------------------------------
_Hardware_GetRtc:
;	89C51Board.c:188: Rtc_ReadClock(dts);
;	89C51Board.c:189: }
	ljmp	_Rtc_ReadClock
;------------------------------------------------------------
;Allocation info for local variables in function 'Hardware_GetKeyState'
;------------------------------------------------------------
;keys          Allocated to stack - _bp +1 +3 
;rowCount      Allocated to registers r4 
;colCount      Allocated to stack - _bp +4 +1 
;portValue     Allocated to registers 
;sloc0         Allocated to stack - _bp +4 +1 
;------------------------------------------------------------
;	89C51Board.c:191: void Hardware_GetKeyState(int *keys) REENTRANT
;	-----------------------------------------
;	 function Hardware_GetKeyState
;	-----------------------------------------
_Hardware_GetKeyState:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
;	89C51Board.c:195: *keys = 0;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	89C51Board.c:197: for (rowCount = 0; rowCount < 4; ++rowCount)
	mov	r4,a
	mov	r3,a
00107$:
;	89C51Board.c:199: P1 = ~(0x80 >> rowCount) | 0xf;
	push	ar4
	mov	b,r3
	inc	b
	mov	r2,#0x80
	clr	a
	mov	r4,a
	rlc	a
	mov	ov,c
	sjmp	00136$
00135$:
	mov	c,ov
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r2
	rrc	a
	mov	r2,a
00136$:
	djnz	b,00135$
	mov	a,r2
	cpl	a
	mov	r2,a
	mov	a,#0x0f
	orl	a,r2
	mov	_P1,a
;	89C51Board.c:200: for (colCount = 0; colCount < 4; ++colCount)
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x00
	mov	r7,#0x00
;	89C51Board.c:197: for (rowCount = 0; rowCount < 4; ++rowCount)
	pop	ar4
;	89C51Board.c:200: for (colCount = 0; colCount < 4; ++colCount)
00105$:
;	89C51Board.c:202: portValue = ~P1 & (0x01 << colCount);
	push	ar4
	mov	a,_P1
	cpl	a
	mov	r2,a
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00138$
00137$:
	add	a,acc
00138$:
	djnz	b,00137$
	anl	a,r2
;	89C51Board.c:203: if (portValue)
	pop	ar4
	jz	00106$
;	89C51Board.c:205: *keys = rowCount * 4 + colCount + 1;
	mov	ar2,r4
	mov	r7,#0x00
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	mov	a,r5
	add	a, r2
	mov	r2,a
	mov	a,r6
	addc	a, r7
	mov	r7,a
	inc	r2
	cjne	r2,#0x00,00140$
	inc	r7
00140$:
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	89C51Board.c:206: return;
	sjmp	00109$
00106$:
;	89C51Board.c:200: for (colCount = 0; colCount < 4; ++colCount)
	inc	r7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar7
	cjne	r7,#0x04,00141$
00141$:
	jc	00105$
;	89C51Board.c:197: for (rowCount = 0; rowCount < 4; ++rowCount)
	inc	r3
	mov	ar4,r3
	cjne	r3,#0x04,00143$
00143$:
	jnc	00144$
	ljmp	00107$
00144$:
00109$:
;	89C51Board.c:211: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Hardware_GetInputPortValues'
;------------------------------------------------------------
;pValue        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	89C51Board.c:214: void Hardware_GetInputPortValues(unsigned char *pValue) REENTRANT
;	-----------------------------------------
;	 function Hardware_GetInputPortValues
;	-----------------------------------------
_Hardware_GetInputPortValues:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	89C51Board.c:216: P3 = 0xfC;
	mov	_P3,#0xfc
;	89C51Board.c:217: *pValue = P3 & 0x3C;
	mov	r4,_P3
	anl	ar4,#0x3c
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	89C51Board.c:218: *pValue = ~ (*pValue); // This hardware has logic 1 as pulled down
	mov	a,r4
	lcall	__gptrput
	cpl	a
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	89C51Board.c:219: *pValue &= ~ (0x40); // Do not use zone5
	anl	ar4,#0xbf
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
;	89C51Board.c:221: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'Hardware_SetOutputPortValues'
;------------------------------------------------------------
;value         Allocated to registers 
;------------------------------------------------------------
;	89C51Board.c:223: void Hardware_SetOutputPortValues(unsigned char value) REENTRANT
;	-----------------------------------------
;	 function Hardware_SetOutputPortValues
;	-----------------------------------------
_Hardware_SetOutputPortValues:
	mov	_P2,dpl
;	89C51Board.c:225: P2 = value;	
;	89C51Board.c:226: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Hardware_CrashDump'
;------------------------------------------------------------
;message       Allocated to registers 
;buffer        Allocated to stack - _bp +2 +33 
;i             Allocated to registers r2 
;sloc0         Allocated to stack - _bp +1 +1 
;------------------------------------------------------------
;	89C51Board.c:228: void Hardware_CrashDump(unsigned char* message) REENTRANT
;	-----------------------------------------
;	 function Hardware_CrashDump
;	-----------------------------------------
_Hardware_CrashDump:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x22
	mov	sp,a
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	89C51Board.c:232: for (i = 0; i < SCREEN_BUFFER_SIZE; ++i)
	mov	a,_bp
	add	a,#0x02
	mov	r4,a
	mov	r3,a
	mov	r2,#0x00
00108$:
;	89C51Board.c:234: if (*message != 0)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jz	00102$
;	89C51Board.c:236: buffer[i] = *message;
	mov	a,r2
	add	a, r3
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	mov	@r0,a
;	89C51Board.c:237: ++message;
	inc	r5
	cjne	r5,#0x00,00109$
	inc	r6
	sjmp	00109$
00102$:
;	89C51Board.c:241: buffer[i] = ' ';
	mov	a,r2
	add	a, r4
	mov	r0,a
	mov	@r0,#0x20
00109$:
;	89C51Board.c:232: for (i = 0; i < SCREEN_BUFFER_SIZE; ++i)
	inc	r2
	cjne	r2,#0x20,00139$
00139$:
	jc	00108$
;	89C51Board.c:246: DirectWriteToDisplay(buffer);
	mov	r7,#0x00
	mov	r6,#0x40
	mov	dpl, r4
	mov	dph, r7
	mov	b, r6
	lcall	_DirectWriteToDisplay
;	89C51Board.c:247: while (1);
00106$:
	sjmp	00106$
;	89C51Board.c:249: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "OutOfTimers"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
