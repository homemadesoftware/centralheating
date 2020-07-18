;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module CentralHeating
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcpy
	.globl _strcat
	.globl _BuildCentralHeatingMenuDefinitions
	.globl _RenderMenuOnBuffer
	.globl _MenuNavigation
	.globl _InitialiseMenuController
	.globl _CompareDateTime
	.globl _AddSecondsToDateTime
	.globl _FormatDate
	.globl _FormatTime
	.globl _GetNumDaysInMonth
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
	.globl _TestAndDisplay_PARM_2
	.globl _HandleMenuCommand_PARM_2
	.globl _PartialWriteToScreen_PARM_3
	.globl _PartialWriteToScreen_PARM_2
	.globl _provideHotwaterUntil
	.globl _currentDateTime
	.globl _hotWaterNeeded
	.globl _animationType
	.globl _lastOutputState
	.globl _lastInputState
	.globl _flashDateTime
	.globl _currentScreen
	.globl _lastKeys
	.globl _screenBuffer
	.globl _UserProgram
	.globl _Callback
	.globl _DisplayMenuOnHardware
	.globl _PartialWriteToScreen
	.globl _ClearTopLine
	.globl _HandleMenuCommand
	.globl _WriteCurrentTime
	.globl _PreviewTimeAdjustment
	.globl _PreviewDateAdjustment
	.globl _TestAndDisplay
	.globl _ProcessHeating
	.globl _AnimateScreen
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
_screenBuffer::
	.ds 33
_lastKeys::
	.ds 1
_currentScreen::
	.ds 1
_flashDateTime::
	.ds 1
_lastInputState::
	.ds 1
_lastOutputState::
	.ds 1
_animationType::
	.ds 1
_hotWaterNeeded::
	.ds 1
_currentDateTime::
	.ds 7
_provideHotwaterUntil::
	.ds 7
_Callback_cookie_65536_31:
	.ds 2
_Callback_keys_65536_32:
	.ds 2
_DisplayMenuOnHardware_buffer_65536_47:
	.ds 17
_PartialWriteToScreen_PARM_2:
	.ds 2
_PartialWriteToScreen_PARM_3:
	.ds 3
_PartialWriteToScreen_screenPosition_65536_52:
	.ds 2
_HandleMenuCommand_PARM_2:
	.ds 2
_HandleMenuCommand_menuItem_65536_59:
	.ds 2
_HandleMenuCommand_dt_65536_60:
	.ds 7
_WriteCurrentTime_strBuffer_65536_100:
	.ds 10
_PreviewTimeAdjustment_strBuffer_65536_101:
	.ds 10
_PreviewTimeAdjustment_dt_65536_101:
	.ds 7
_PreviewDateAdjustment_strBuffer_65536_102:
	.ds 10
_PreviewDateAdjustment_dt_65536_102:
	.ds 7
_TestAndDisplay_PARM_2:
	.ds 1
_TestAndDisplay_description_65536_103:
	.ds 3
_ProcessHeating_inputs_65536_105:
	.ds 1
_ProcessHeating_zones_65536_105:
	.ds 5
_ProcessHeating_pump_65536_105:
	.ds 1
_ProcessHeating_boiler_65536_105:
	.ds 1
_ProcessHeating_output_65536_105:
	.ds 1
_AnimateScreen_strBuffer_65536_115:
	.ds 11
_AnimateScreen_numericValue_65536_115:
	.ds 2
_AnimateScreen_zones_65536_115:
	.ds 5
_AnimateScreen_outputs_65536_115:
	.ds 4
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
;Allocation info for local variables in function 'UserProgram'
;------------------------------------------------------------
;i                         Allocated with name '_UserProgram_i_65536_28'
;------------------------------------------------------------
;	../Common/CentralHeating.c:79: void STDCALL UserProgram()
;	-----------------------------------------
;	 function UserProgram
;	-----------------------------------------
_UserProgram:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../Common/CentralHeating.c:86: lastKeys = 0;
	mov	dptr,#_lastKeys
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:87: currentScreen = 0;
	mov	dptr,#_currentScreen
	movx	@dptr,a
;	../Common/CentralHeating.c:88: flashDateTime = 0;
	mov	dptr,#_flashDateTime
	movx	@dptr,a
;	../Common/CentralHeating.c:89: lastInputState = 0;
	mov	dptr,#_lastInputState
	movx	@dptr,a
;	../Common/CentralHeating.c:90: lastOutputState = 0;
	mov	dptr,#_lastOutputState
	movx	@dptr,a
;	../Common/CentralHeating.c:91: animationType = ANIMATE_INPUTS;
	mov	dptr,#_animationType
	movx	@dptr,a
;	../Common/CentralHeating.c:94: provideHotwaterUntil.day = 0;
	mov	dptr,#(_provideHotwaterUntil + 0x0004)
	movx	@dptr,a
;	../Common/CentralHeating.c:95: provideHotwaterUntil.dayOfWeek = 0;
	mov	dptr,#(_provideHotwaterUntil + 0x0003)
	movx	@dptr,a
;	../Common/CentralHeating.c:96: provideHotwaterUntil.hours = 0;
	mov	dptr,#(_provideHotwaterUntil + 0x0002)
	movx	@dptr,a
;	../Common/CentralHeating.c:97: provideHotwaterUntil.minutes = 0;
	mov	dptr,#(_provideHotwaterUntil + 0x0001)
	movx	@dptr,a
;	../Common/CentralHeating.c:98: provideHotwaterUntil.month = 0;
	mov	dptr,#(_provideHotwaterUntil + 0x0005)
	movx	@dptr,a
;	../Common/CentralHeating.c:99: provideHotwaterUntil.seconds = 0;
	mov	dptr,#_provideHotwaterUntil
	movx	@dptr,a
;	../Common/CentralHeating.c:100: provideHotwaterUntil.year = 0;
	mov	dptr,#(_provideHotwaterUntil + 0x0006)
	movx	@dptr,a
;	../Common/CentralHeating.c:104: for (i = 0; i < SCREEN_BUFFER_SIZE; ++i)
	mov	r6,#0x00
	mov	r7,#0x00
00102$:
;	../Common/CentralHeating.c:106: screenBuffer[i] = ' ';
	mov	a,r6
	add	a,#_screenBuffer
	mov	dpl,a
	mov	a,r7
	addc	a,#(_screenBuffer >> 8)
	mov	dph,a
	mov	a,#0x20
	movx	@dptr,a
;	../Common/CentralHeating.c:104: for (i = 0; i < SCREEN_BUFFER_SIZE; ++i)
	inc	r6
	cjne	r6,#0x00,00115$
	inc	r7
00115$:
	clr	c
	mov	a,r6
	subb	a,#0x20
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
;	../Common/CentralHeating.c:109: pWriteDisplayBuffer(screenBuffer);
	lcall	00117$
	sjmp	00118$
00117$:
	mov	dptr,#_pWriteDisplayBuffer
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_screenBuffer
	mov	b,#0x00
	ret
00118$:
;	../Common/CentralHeating.c:113: currentScreen = SCREEN_HOME;
	mov	dptr,#_currentScreen
	mov	a,#0x01
	movx	@dptr,a
;	../Common/CentralHeating.c:117: pRegisterForTimer(RTCUPDATECOOKIE, 400, Callback);
	mov	a,#_Callback
	push	acc
	mov	a,#(_Callback >> 8)
	push	acc
	mov	a,#0x90
	push	acc
	mov	a,#0x01
	push	acc
	lcall	00119$
	sjmp	00120$
00119$:
	mov	dptr,#_pRegisterForTimer
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#0x0001
	ret
00120$:
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../Common/CentralHeating.c:118: pRegisterForTimer(READKEYSCOOKIE, 10, Callback);
	mov	a,#_Callback
	push	acc
	mov	a,#(_Callback >> 8)
	push	acc
	mov	a,#0x0a
	push	acc
	clr	a
	push	acc
	lcall	00121$
	sjmp	00122$
00121$:
	mov	dptr,#_pRegisterForTimer
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#0x0002
	ret
00122$:
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../Common/CentralHeating.c:119: pRegisterForTimer(PROCESSHEATING, 1000, Callback);
	mov	a,#_Callback
	push	acc
	mov	a,#(_Callback >> 8)
	push	acc
	mov	a,#0xe8
	push	acc
	mov	a,#0x03
	push	acc
	lcall	00123$
	sjmp	00124$
00123$:
	mov	dptr,#_pRegisterForTimer
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#0x0003
	ret
00124$:
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../Common/CentralHeating.c:120: pRegisterForTimer(SCREENACTIVITY, 1000, Callback);
	mov	a,#_Callback
	push	acc
	mov	a,#(_Callback >> 8)
	push	acc
	mov	a,#0xe8
	push	acc
	mov	a,#0x03
	push	acc
	lcall	00125$
	sjmp	00126$
00125$:
	mov	dptr,#_pRegisterForTimer
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#0x0004
	ret
00126$:
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	../Common/CentralHeating.c:124: BuildCentralHeatingMenuDefinitions();
	lcall	_BuildCentralHeatingMenuDefinitions
;	../Common/CentralHeating.c:127: InitialiseMenuController();
	lcall	_InitialiseMenuController
;	../Common/CentralHeating.c:128: DisplayMenuOnHardware();
;	../Common/CentralHeating.c:131: }
	ljmp	_DisplayMenuOnHardware
;------------------------------------------------------------
;Allocation info for local variables in function 'Callback'
;------------------------------------------------------------
;cookie                    Allocated with name '_Callback_cookie_65536_31'
;keys                      Allocated with name '_Callback_keys_65536_32'
;------------------------------------------------------------
;	../Common/CentralHeating.c:134: void STDCALL Callback(int cookie)
;	-----------------------------------------
;	 function Callback
;	-----------------------------------------
_Callback:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_Callback_cookie_65536_31
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/CentralHeating.c:138: switch (cookie)
	mov	dptr,#_Callback_cookie_65536_31
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x01,00196$
	cjne	r7,#0x00,00196$
	sjmp	00101$
00196$:
	cjne	r6,#0x02,00197$
	cjne	r7,#0x00,00197$
	sjmp	00116$
00197$:
	cjne	r6,#0x03,00198$
	cjne	r7,#0x00,00198$
	ljmp	00127$
00198$:
	cjne	r6,#0x04,00199$
	cjne	r7,#0x00,00199$
	ljmp	00130$
00199$:
	ret
;	../Common/CentralHeating.c:140: case RTCUPDATECOOKIE :
00101$:
;	../Common/CentralHeating.c:141: if (currentScreen == SCREEN_HOME)
	mov	dptr,#_currentScreen
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00114$
;	../Common/CentralHeating.c:143: WriteCurrentTime();
	ljmp	_WriteCurrentTime
00114$:
;	../Common/CentralHeating.c:145: else if (currentScreen == SCREEN_SETDATE)
	cjne	r7,#0x02,00111$
;	../Common/CentralHeating.c:147: if (flashDateTime)
	mov	dptr,#_flashDateTime
	movx	a,@dptr
	jz	00103$
;	../Common/CentralHeating.c:149: ClearTopLine();
	lcall	_ClearTopLine
;	../Common/CentralHeating.c:150: flashDateTime = 0;
	mov	dptr,#_flashDateTime
	clr	a
	movx	@dptr,a
	ret
00103$:
;	../Common/CentralHeating.c:154: PreviewDateAdjustment(); 
	lcall	_PreviewDateAdjustment
;	../Common/CentralHeating.c:155: flashDateTime = 1;
	mov	dptr,#_flashDateTime
	mov	a,#0x01
	movx	@dptr,a
	ret
00111$:
;	../Common/CentralHeating.c:159: else if (currentScreen == SCREEN_SETTIME)
	cjne	r7,#0x03,00205$
	sjmp	00206$
00205$:
	ret
00206$:
;	../Common/CentralHeating.c:161: if (flashDateTime)
	mov	dptr,#_flashDateTime
	movx	a,@dptr
	jz	00106$
;	../Common/CentralHeating.c:163: ClearTopLine();
	lcall	_ClearTopLine
;	../Common/CentralHeating.c:164: flashDateTime = 0;
	mov	dptr,#_flashDateTime
	clr	a
	movx	@dptr,a
	ret
00106$:
;	../Common/CentralHeating.c:168: PreviewTimeAdjustment();
	lcall	_PreviewTimeAdjustment
;	../Common/CentralHeating.c:169: flashDateTime = 1;
	mov	dptr,#_flashDateTime
	mov	a,#0x01
	movx	@dptr,a
;	../Common/CentralHeating.c:172: break;
	ret
;	../Common/CentralHeating.c:174: case READKEYSCOOKIE :
00116$:
;	../Common/CentralHeating.c:175: pGetKeyState(&keys);
	lcall	00208$
	sjmp	00209$
00208$:
	mov	dptr,#_pGetKeyState
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_Callback_keys_65536_32
	mov	b,#0x00
	ret
00209$:
;	../Common/CentralHeating.c:176: if (keys != lastKeys)
	mov	dptr,#_Callback_keys_65536_32
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_lastKeys
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	a,r6
	cjne	a,ar5,00210$
	mov	a,r7
	cjne	a,ar4,00210$
	ret
00210$:
;	../Common/CentralHeating.c:178: lastKeys = keys;
	mov	dptr,#_lastKeys
	mov	a,r6
	movx	@dptr,a
;	../Common/CentralHeating.c:179: if (keys == 1)
	cjne	r6,#0x01,00123$
	cjne	r7,#0x00,00123$
;	../Common/CentralHeating.c:182: MenuNavigation(NAVTYPE_LEFT);
	mov	dpl,#0x01
	lcall	_MenuNavigation
	sjmp	00124$
00123$:
;	../Common/CentralHeating.c:184: else if (keys == 2)
	cjne	r6,#0x02,00120$
	cjne	r7,#0x00,00120$
;	../Common/CentralHeating.c:186: MenuNavigation(NAVTYPE_SELECTITEM);
	mov	dpl,#0x03
	lcall	_MenuNavigation
	sjmp	00124$
00120$:
;	../Common/CentralHeating.c:188: else if (keys == 3)
	cjne	r6,#0x03,00124$
	cjne	r7,#0x00,00124$
;	../Common/CentralHeating.c:190: MenuNavigation(NAVTYPE_RIGHT);
	mov	dpl,#0x02
	lcall	_MenuNavigation
00124$:
;	../Common/CentralHeating.c:192: DisplayMenuOnHardware();
;	../Common/CentralHeating.c:194: break;
;	../Common/CentralHeating.c:196: case PROCESSHEATING :
	ljmp	_DisplayMenuOnHardware
00127$:
;	../Common/CentralHeating.c:197: if (currentScreen != SCREEN_OUTPUTTEST)
	mov	dptr,#_currentScreen
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00217$
	ret
00217$:
;	../Common/CentralHeating.c:199: ProcessHeating();
;	../Common/CentralHeating.c:201: break;
;	../Common/CentralHeating.c:203: case SCREENACTIVITY :
	ljmp	_ProcessHeating
00130$:
;	../Common/CentralHeating.c:204: if (currentScreen == SCREEN_HOME)
	mov	dptr,#_currentScreen
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00134$
;	../Common/CentralHeating.c:206: AnimateScreen();
;	../Common/CentralHeating.c:210: }
;	../Common/CentralHeating.c:211: }
	ljmp	_AnimateScreen
00134$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DisplayMenuOnHardware'
;------------------------------------------------------------
;buffer                    Allocated with name '_DisplayMenuOnHardware_buffer_65536_47'
;i                         Allocated with name '_DisplayMenuOnHardware_i_65536_47'
;j                         Allocated with name '_DisplayMenuOnHardware_j_65536_47'
;------------------------------------------------------------
;	../Common/CentralHeating.c:215: void DisplayMenuOnHardware()
;	-----------------------------------------
;	 function DisplayMenuOnHardware
;	-----------------------------------------
_DisplayMenuOnHardware:
;	../Common/CentralHeating.c:221: RenderMenuOnBuffer(buffer, SCREEN_BUFFER_SIZE / 2);
	mov	dptr,#_RenderMenuOnBuffer_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_DisplayMenuOnHardware_buffer_65536_47
	mov	b,#0x00
	lcall	_RenderMenuOnBuffer
;	../Common/CentralHeating.c:224: for (i = 0; i < SCREEN_BUFFER_SIZE / 2; ++i)
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
00105$:
;	../Common/CentralHeating.c:226: if (buffer[j] != 0)
	mov	a,r6
	add	a,#_DisplayMenuOnHardware_buffer_65536_47
	mov	r2,a
	mov	a,r7
	addc	a,#(_DisplayMenuOnHardware_buffer_65536_47 >> 8)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	jz	00102$
;	../Common/CentralHeating.c:228: screenBuffer[i + SCREEN_BUFFER_SIZE / 2] = buffer[j++];
	mov	ar3,r4
	mov	a,#0x10
	add	a,r3
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r3
	add	a,#_screenBuffer
	mov	r3,a
	mov	a,r2
	addc	a,#(_screenBuffer >> 8)
	mov	r2,a
	mov	a,r6
	add	a,#_DisplayMenuOnHardware_buffer_65536_47
	mov	dpl,a
	mov	a,r7
	addc	a,#(_DisplayMenuOnHardware_buffer_65536_47 >> 8)
	mov	dph,a
	inc	r6
	cjne	r6,#0x00,00123$
	inc	r7
00123$:
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r3
	mov	dph,r2
	movx	@dptr,a
	sjmp	00106$
00102$:
;	../Common/CentralHeating.c:232: screenBuffer[i + SCREEN_BUFFER_SIZE / 2] = ' ';
	mov	ar3,r4
	mov	a,#0x10
	add	a,r3
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r3
	add	a,#_screenBuffer
	mov	dpl,a
	mov	a,r2
	addc	a,#(_screenBuffer >> 8)
	mov	dph,a
	mov	a,#0x20
	movx	@dptr,a
00106$:
;	../Common/CentralHeating.c:224: for (i = 0; i < SCREEN_BUFFER_SIZE / 2; ++i)
	inc	r4
	cjne	r4,#0x00,00124$
	inc	r5
00124$:
	clr	c
	mov	a,r4
	subb	a,#0x10
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
;	../Common/CentralHeating.c:236: pWriteDisplayBuffer(screenBuffer);    
	ljmp	00126$
00126$:
	mov	dptr,#_pWriteDisplayBuffer
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_screenBuffer
	mov	b,#0x00
	ret
;	../Common/CentralHeating.c:237: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PartialWriteToScreen'
;------------------------------------------------------------
;maxLen                    Allocated with name '_PartialWriteToScreen_PARM_2'
;information               Allocated with name '_PartialWriteToScreen_PARM_3'
;screenPosition            Allocated with name '_PartialWriteToScreen_screenPosition_65536_52'
;p                         Allocated with name '_PartialWriteToScreen_p_65536_53'
;i                         Allocated with name '_PartialWriteToScreen_i_65536_53'
;------------------------------------------------------------
;	../Common/CentralHeating.c:241: void PartialWriteToScreen(int screenPosition, int maxLen, char *information)
;	-----------------------------------------
;	 function PartialWriteToScreen
;	-----------------------------------------
_PartialWriteToScreen:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_PartialWriteToScreen_screenPosition_65536_52
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/CentralHeating.c:243: char *p = information;
	mov	dptr,#_PartialWriteToScreen_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	../Common/CentralHeating.c:245: for (i = screenPosition; i < (screenPosition + maxLen); ++i)
	mov	dptr,#_PartialWriteToScreen_screenPosition_65536_52
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_PartialWriteToScreen_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r1
	add	a,r3
	mov	r1,a
	mov	a,r2
	addc	a,r4
	mov	r2,a
00106$:
	clr	c
	mov	a,r3
	subb	a,r1
	mov	a,r4
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
;	../Common/CentralHeating.c:247: if (*p == 0)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	jnz	00102$
;	../Common/CentralHeating.c:249: screenBuffer[i] = ' ';
	mov	a,r3
	add	a,#_screenBuffer
	mov	dpl,a
	mov	a,r4
	addc	a,#(_screenBuffer >> 8)
	mov	dph,a
	mov	a,#0x20
	movx	@dptr,a
	sjmp	00107$
00102$:
;	../Common/CentralHeating.c:253: screenBuffer[i] = *p;
	mov	a,r3
	add	a,#_screenBuffer
	mov	dpl,a
	mov	a,r4
	addc	a,#(_screenBuffer >> 8)
	mov	dph,a
	mov	a,r0
	movx	@dptr,a
;	../Common/CentralHeating.c:254: ++p;
	inc	r5
	cjne	r5,#0x00,00125$
	inc	r6
00125$:
00107$:
;	../Common/CentralHeating.c:245: for (i = screenPosition; i < (screenPosition + maxLen); ++i)
	inc	r3
	cjne	r3,#0x00,00106$
	inc	r4
	sjmp	00106$
00104$:
;	../Common/CentralHeating.c:257: pWriteDisplayBuffer(screenBuffer);    
	ljmp	00127$
00127$:
	mov	dptr,#_pWriteDisplayBuffer
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_screenBuffer
	mov	b,#0x00
	ret
;	../Common/CentralHeating.c:258: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ClearTopLine'
;------------------------------------------------------------
;	../Common/CentralHeating.c:262: void ClearTopLine()
;	-----------------------------------------
;	 function ClearTopLine
;	-----------------------------------------
_ClearTopLine:
;	../Common/CentralHeating.c:264: PartialWriteToScreen(0, 16, "");
	mov	dptr,#_PartialWriteToScreen_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_PartialWriteToScreen_PARM_3
	mov	a,#___str_0
	movx	@dptr,a
	mov	a,#(___str_0 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
;	../Common/CentralHeating.c:265: }
	ljmp	_PartialWriteToScreen
;------------------------------------------------------------
;Allocation info for local variables in function 'HandleMenuCommand'
;------------------------------------------------------------
;eventType                 Allocated with name '_HandleMenuCommand_PARM_2'
;menuItem                  Allocated with name '_HandleMenuCommand_menuItem_65536_59'
;dt                        Allocated with name '_HandleMenuCommand_dt_65536_60'
;------------------------------------------------------------
;	../Common/CentralHeating.c:267: void HandleMenuCommand(int menuItem, int eventType)
;	-----------------------------------------
;	 function HandleMenuCommand
;	-----------------------------------------
_HandleMenuCommand:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_HandleMenuCommand_menuItem_65536_59
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/CentralHeating.c:270: switch (menuItem)
	mov	dptr,#_HandleMenuCommand_menuItem_65536_59
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x0b
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00346$
	ret
00346$:
	clr	c
	mov	a,#0x2a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00347$
	ret
00347$:
	mov	a,r6
	add	a,#0xf5
	mov	r6,a
	add	a,#(00348$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r6
	add	a,#(00349$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00348$:
	.db	00103$
	.db	00115$
	.db	00120$
	.db	00125$
	.db	00130$
	.db	00135$
	.db	00140$
	.db	00200$
	.db	00200$
	.db	00109$
	.db	00169$
	.db	00145$
	.db	00151$
	.db	00157$
	.db	00163$
	.db	00200$
	.db	00200$
	.db	00200$
	.db	00200$
	.db	00172$
	.db	00178$
	.db	00181$
	.db	00184$
	.db	00187$
	.db	00190$
	.db	00193$
	.db	00196$
	.db	00200$
	.db	00200$
	.db	00200$
	.db	00101$
	.db	00102$
00349$:
	.db	00103$>>8
	.db	00115$>>8
	.db	00120$>>8
	.db	00125$>>8
	.db	00130$>>8
	.db	00135$>>8
	.db	00140$>>8
	.db	00200$>>8
	.db	00200$>>8
	.db	00109$>>8
	.db	00169$>>8
	.db	00145$>>8
	.db	00151$>>8
	.db	00157$>>8
	.db	00163$>>8
	.db	00200$>>8
	.db	00200$>>8
	.db	00200$>>8
	.db	00200$>>8
	.db	00172$>>8
	.db	00178$>>8
	.db	00181$>>8
	.db	00184$>>8
	.db	00187$>>8
	.db	00190$>>8
	.db	00193$>>8
	.db	00196$>>8
	.db	00200$>>8
	.db	00200$>>8
	.db	00200$>>8
	.db	00101$>>8
	.db	00102$>>8
;	../Common/CentralHeating.c:272: case MENUID_HOTWATER1HR :
00101$:
;	../Common/CentralHeating.c:273: AddSecondsToDateTime(&currentDateTime, 3600, &provideHotwaterUntil);
	mov	dptr,#_AddSecondsToDateTime_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x0e
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_AddSecondsToDateTime_PARM_3
	mov	a,#_provideHotwaterUntil
	movx	@dptr,a
	mov	a,#(_provideHotwaterUntil >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_currentDateTime
	mov	b,#0x00
;	../Common/CentralHeating.c:274: break;
	ljmp	_AddSecondsToDateTime
;	../Common/CentralHeating.c:276: case MENUID_HOTWATERRST :
00102$:
;	../Common/CentralHeating.c:277: provideHotwaterUntil.year = 0;
	mov	dptr,#(_provideHotwaterUntil + 0x0006)
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:278: break;
	ret
;	../Common/CentralHeating.c:280: case MENUID_SETDATE :
00103$:
;	../Common/CentralHeating.c:281: if (eventType == MENU_SUBMENUENTER)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x03,00107$
	cjne	r7,#0x00,00107$
;	../Common/CentralHeating.c:283: currentScreen = SCREEN_SETDATE;
	mov	dptr,#_currentScreen
	mov	a,#0x02
	movx	@dptr,a
;	../Common/CentralHeating.c:284: flashDateTime = 0;
	mov	dptr,#_flashDateTime
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:285: ClearTopLine();
	ljmp	_ClearTopLine
00107$:
;	../Common/CentralHeating.c:287: else if (eventType == MENU_SUBMENUEXIT)
	cjne	r6,#0x04,00352$
	cjne	r7,#0x00,00352$
	sjmp	00353$
00352$:
	ret
00353$:
;	../Common/CentralHeating.c:289: currentScreen = SCREEN_HOME;
	mov	dptr,#_currentScreen
	mov	a,#0x01
	movx	@dptr,a
;	../Common/CentralHeating.c:290: ClearTopLine();
;	../Common/CentralHeating.c:292: break;
	ljmp	_ClearTopLine
;	../Common/CentralHeating.c:294: case MENUID_SETTIME :
00109$:
;	../Common/CentralHeating.c:295: if (eventType == MENU_SUBMENUENTER)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x03,00113$
	cjne	r7,#0x00,00113$
;	../Common/CentralHeating.c:297: currentScreen = SCREEN_SETTIME;
	mov	dptr,#_currentScreen
	mov	a,#0x03
	movx	@dptr,a
;	../Common/CentralHeating.c:298: flashDateTime = 0;
	mov	dptr,#_flashDateTime
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:299: ClearTopLine();
	ljmp	_ClearTopLine
00113$:
;	../Common/CentralHeating.c:301: else if (eventType == MENU_SUBMENUEXIT)
	cjne	r6,#0x04,00356$
	cjne	r7,#0x00,00356$
	sjmp	00357$
00356$:
	ret
00357$:
;	../Common/CentralHeating.c:303: currentScreen = SCREEN_HOME;
	mov	dptr,#_currentScreen
	mov	a,#0x01
	movx	@dptr,a
;	../Common/CentralHeating.c:304: ClearTopLine();
;	../Common/CentralHeating.c:306: break;
	ljmp	_ClearTopLine
;	../Common/CentralHeating.c:308: case MENUID_ADDDAY :
00115$:
;	../Common/CentralHeating.c:309: if (eventType == MENU_COMMAND)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00358$
	cjne	r7,#0x00,00358$
	sjmp	00359$
00358$:
	ret
00359$:
;	../Common/CentralHeating.c:311: pGetRtc(&dt);
	lcall	00360$
	sjmp	00361$
00360$:
	mov	dptr,#_pGetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00361$:
;	../Common/CentralHeating.c:312: if (dt.day == GetNumDaysInMonth(&dt))
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0004)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	push	ar7
	lcall	_GetNumDaysInMonth
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	mov	r4,#0x00
	mov	a,r7
	cjne	a,ar5,00362$
	mov	a,r4
	cjne	a,ar6,00362$
	ret
00362$:
;	../Common/CentralHeating.c:316: dt.day++;
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0004)
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0004)
	mov	a,r7
	movx	@dptr,a
;	../Common/CentralHeating.c:317: pSetRtc(&dt);
	lcall	00363$
	sjmp	00364$
00363$:
	mov	dptr,#_pSetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00364$:
;	../Common/CentralHeating.c:318: flashDateTime = 0;
	mov	dptr,#_flashDateTime
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:319: PreviewDateAdjustment();
;	../Common/CentralHeating.c:321: break;
	ljmp	_PreviewDateAdjustment
;	../Common/CentralHeating.c:323: case MENUID_SUBDAY :
00120$:
;	../Common/CentralHeating.c:324: if (eventType == MENU_COMMAND)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00365$
	cjne	r7,#0x00,00365$
	sjmp	00366$
00365$:
	ret
00366$:
;	../Common/CentralHeating.c:326: pGetRtc(&dt);
	lcall	00367$
	sjmp	00368$
00367$:
	mov	dptr,#_pGetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00368$:
;	../Common/CentralHeating.c:327: if (dt.day == 1)
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0004)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00369$
	ret
00369$:
;	../Common/CentralHeating.c:331: dt.day--;
	dec	r7
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0004)
	mov	a,r7
	movx	@dptr,a
;	../Common/CentralHeating.c:332: pSetRtc(&dt);
	lcall	00370$
	sjmp	00371$
00370$:
	mov	dptr,#_pSetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00371$:
;	../Common/CentralHeating.c:333: flashDateTime = 0;
	mov	dptr,#_flashDateTime
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:334: PreviewDateAdjustment();
;	../Common/CentralHeating.c:336: break;
	ljmp	_PreviewDateAdjustment
;	../Common/CentralHeating.c:338: case MENUID_ADDMONTH :
00125$:
;	../Common/CentralHeating.c:339: if (eventType == MENU_COMMAND)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00372$
	cjne	r7,#0x00,00372$
	sjmp	00373$
00372$:
	ret
00373$:
;	../Common/CentralHeating.c:341: pGetRtc(&dt);
	lcall	00374$
	sjmp	00375$
00374$:
	mov	dptr,#_pGetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00375$:
;	../Common/CentralHeating.c:342: if (dt.month == 12)
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0005)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0c,00376$
	ret
00376$:
;	../Common/CentralHeating.c:346: dt.month++;
	inc	r7
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0005)
	mov	a,r7
	movx	@dptr,a
;	../Common/CentralHeating.c:347: pSetRtc(&dt);
	lcall	00377$
	sjmp	00378$
00377$:
	mov	dptr,#_pSetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00378$:
;	../Common/CentralHeating.c:348: flashDateTime = 0;
	mov	dptr,#_flashDateTime
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:349: PreviewDateAdjustment();
;	../Common/CentralHeating.c:351: break;
	ljmp	_PreviewDateAdjustment
;	../Common/CentralHeating.c:353: case MENUID_SUBMONTH :
00130$:
;	../Common/CentralHeating.c:354: if (eventType == MENU_COMMAND)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00379$
	cjne	r7,#0x00,00379$
	sjmp	00380$
00379$:
	ret
00380$:
;	../Common/CentralHeating.c:356: pGetRtc(&dt);
	lcall	00381$
	sjmp	00382$
00381$:
	mov	dptr,#_pGetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00382$:
;	../Common/CentralHeating.c:357: if (dt.month == 1)
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0005)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00383$
	ret
00383$:
;	../Common/CentralHeating.c:361: dt.month--;
	dec	r7
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0005)
	mov	a,r7
	movx	@dptr,a
;	../Common/CentralHeating.c:362: pSetRtc(&dt);
	lcall	00384$
	sjmp	00385$
00384$:
	mov	dptr,#_pSetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00385$:
;	../Common/CentralHeating.c:363: flashDateTime = 0;
	mov	dptr,#_flashDateTime
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:364: PreviewDateAdjustment();
;	../Common/CentralHeating.c:366: break;
	ljmp	_PreviewDateAdjustment
;	../Common/CentralHeating.c:368: case MENUID_ADDYEAR :
00135$:
;	../Common/CentralHeating.c:369: if (eventType == MENU_COMMAND)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00386$
	cjne	r7,#0x00,00386$
	sjmp	00387$
00386$:
	ret
00387$:
;	../Common/CentralHeating.c:371: pGetRtc(&dt);
	lcall	00388$
	sjmp	00389$
00388$:
	mov	dptr,#_pGetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00389$:
;	../Common/CentralHeating.c:372: if (dt.year == 50)
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0006)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x32,00390$
	ret
00390$:
;	../Common/CentralHeating.c:376: dt.year++;
	inc	r7
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0006)
	mov	a,r7
	movx	@dptr,a
;	../Common/CentralHeating.c:377: pSetRtc(&dt);
	lcall	00391$
	sjmp	00392$
00391$:
	mov	dptr,#_pSetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00392$:
;	../Common/CentralHeating.c:378: flashDateTime = 0;
	mov	dptr,#_flashDateTime
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:379: PreviewDateAdjustment();
;	../Common/CentralHeating.c:381: break;
	ljmp	_PreviewDateAdjustment
;	../Common/CentralHeating.c:383: case MENUID_SUBYEAR :
00140$:
;	../Common/CentralHeating.c:384: if (eventType == MENU_COMMAND)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00393$
	cjne	r7,#0x00,00393$
	sjmp	00394$
00393$:
	ret
00394$:
;	../Common/CentralHeating.c:386: pGetRtc(&dt);
	lcall	00395$
	sjmp	00396$
00395$:
	mov	dptr,#_pGetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00396$:
;	../Common/CentralHeating.c:387: if (dt.year == 10)
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0006)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00397$
	ret
00397$:
;	../Common/CentralHeating.c:391: dt.year--;
	dec	r7
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0006)
	mov	a,r7
	movx	@dptr,a
;	../Common/CentralHeating.c:392: pSetRtc(&dt);
	lcall	00398$
	sjmp	00399$
00398$:
	mov	dptr,#_pSetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00399$:
;	../Common/CentralHeating.c:393: flashDateTime = 0;
	mov	dptr,#_flashDateTime
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:394: PreviewDateAdjustment();
;	../Common/CentralHeating.c:396: break;
	ljmp	_PreviewDateAdjustment
;	../Common/CentralHeating.c:399: case MENUID_ADDMINUTE :
00145$:
;	../Common/CentralHeating.c:400: if (eventType == MENU_COMMAND)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00400$
	cjne	r7,#0x00,00400$
	sjmp	00401$
00400$:
	ret
00401$:
;	../Common/CentralHeating.c:402: pGetRtc(&dt);
	lcall	00402$
	sjmp	00403$
00402$:
	mov	dptr,#_pGetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00403$:
;	../Common/CentralHeating.c:403: if (dt.minutes == 59)
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3b,00147$
;	../Common/CentralHeating.c:405: dt.minutes = 0;
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0001)
	clr	a
	movx	@dptr,a
	sjmp	00148$
00147$:
;	../Common/CentralHeating.c:409: dt.minutes++;
	inc	r7
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0001)
	mov	a,r7
	movx	@dptr,a
00148$:
;	../Common/CentralHeating.c:411: pSetRtc(&dt);
	lcall	00406$
	sjmp	00407$
00406$:
	mov	dptr,#_pSetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00407$:
;	../Common/CentralHeating.c:412: flashDateTime = 0;
	mov	dptr,#_flashDateTime
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:413: PreviewTimeAdjustment();
;	../Common/CentralHeating.c:415: break;
	ljmp	_PreviewTimeAdjustment
;	../Common/CentralHeating.c:417: case MENUID_SUBMINUTE :
00151$:
;	../Common/CentralHeating.c:418: if (eventType == MENU_COMMAND)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00408$
	cjne	r7,#0x00,00408$
	sjmp	00409$
00408$:
	ret
00409$:
;	../Common/CentralHeating.c:420: pGetRtc(&dt);
	lcall	00410$
	sjmp	00411$
00410$:
	mov	dptr,#_pGetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00411$:
;	../Common/CentralHeating.c:421: if (dt.minutes == 0)
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	jnz	00153$
;	../Common/CentralHeating.c:423: dt.minutes = 59;
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0001)
	mov	a,#0x3b
	movx	@dptr,a
	sjmp	00154$
00153$:
;	../Common/CentralHeating.c:427: dt.minutes--;
	dec	r7
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0001)
	mov	a,r7
	movx	@dptr,a
00154$:
;	../Common/CentralHeating.c:429: pSetRtc(&dt);
	lcall	00413$
	sjmp	00414$
00413$:
	mov	dptr,#_pSetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00414$:
;	../Common/CentralHeating.c:430: flashDateTime = 0;
	mov	dptr,#_flashDateTime
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:431: PreviewTimeAdjustment();
;	../Common/CentralHeating.c:433: break;
	ljmp	_PreviewTimeAdjustment
;	../Common/CentralHeating.c:436: case MENUID_ADDHOUR :
00157$:
;	../Common/CentralHeating.c:437: if (eventType == MENU_COMMAND)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00415$
	cjne	r7,#0x00,00415$
	sjmp	00416$
00415$:
	ret
00416$:
;	../Common/CentralHeating.c:439: pGetRtc(&dt);
	lcall	00417$
	sjmp	00418$
00417$:
	mov	dptr,#_pGetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00418$:
;	../Common/CentralHeating.c:440: if (dt.hours == 23)
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x17,00159$
;	../Common/CentralHeating.c:442: dt.hours = 0;
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0002)
	clr	a
	movx	@dptr,a
	sjmp	00160$
00159$:
;	../Common/CentralHeating.c:446: dt.hours++;
	inc	r7
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0002)
	mov	a,r7
	movx	@dptr,a
00160$:
;	../Common/CentralHeating.c:448: pSetRtc(&dt);
	lcall	00421$
	sjmp	00422$
00421$:
	mov	dptr,#_pSetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00422$:
;	../Common/CentralHeating.c:449: flashDateTime = 0;
	mov	dptr,#_flashDateTime
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:450: PreviewTimeAdjustment();
;	../Common/CentralHeating.c:452: break;
	ljmp	_PreviewTimeAdjustment
;	../Common/CentralHeating.c:454: case MENUID_SUBHOUR :
00163$:
;	../Common/CentralHeating.c:455: if (eventType == MENU_COMMAND)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00423$
	cjne	r7,#0x00,00423$
	sjmp	00424$
00423$:
	ret
00424$:
;	../Common/CentralHeating.c:457: pGetRtc(&dt);
	lcall	00425$
	sjmp	00426$
00425$:
	mov	dptr,#_pGetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00426$:
;	../Common/CentralHeating.c:458: if (dt.hours == 0)
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0002)
	movx	a,@dptr
	mov	r7,a
	jnz	00165$
;	../Common/CentralHeating.c:460: dt.hours = 23;
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0002)
	mov	a,#0x17
	movx	@dptr,a
	sjmp	00166$
00165$:
;	../Common/CentralHeating.c:464: dt.hours--;
	dec	r7
	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0002)
	mov	a,r7
	movx	@dptr,a
00166$:
;	../Common/CentralHeating.c:466: pSetRtc(&dt);
	lcall	00428$
	sjmp	00429$
00428$:
	mov	dptr,#_pSetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00429$:
;	../Common/CentralHeating.c:467: flashDateTime = 0;
	mov	dptr,#_flashDateTime
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:468: PreviewTimeAdjustment();
;	../Common/CentralHeating.c:470: break;
	ljmp	_PreviewTimeAdjustment
;	../Common/CentralHeating.c:472: case MENUID_RESETSEC :
00169$:
;	../Common/CentralHeating.c:473: if (eventType == MENU_COMMAND)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00430$
	cjne	r7,#0x00,00430$
	sjmp	00431$
00430$:
	ret
00431$:
;	../Common/CentralHeating.c:475: pGetRtc(&dt);
	lcall	00432$
	sjmp	00433$
00432$:
	mov	dptr,#_pGetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00433$:
;	../Common/CentralHeating.c:476: dt.seconds = 0;
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:477: pSetRtc(&dt);
	lcall	00434$
	sjmp	00435$
00434$:
	mov	dptr,#_pSetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_HandleMenuCommand_dt_65536_60
	mov	b,#0x00
	ret
00435$:
;	../Common/CentralHeating.c:478: flashDateTime = 0;
	mov	dptr,#_flashDateTime
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:479: PreviewTimeAdjustment();
;	../Common/CentralHeating.c:481: break;
	ljmp	_PreviewTimeAdjustment
;	../Common/CentralHeating.c:483: case MENUID_TESTOUTPUT :
00172$:
;	../Common/CentralHeating.c:484: if (eventType == MENU_SUBMENUENTER)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x03,00176$
	cjne	r7,#0x00,00176$
;	../Common/CentralHeating.c:486: currentScreen = SCREEN_OUTPUTTEST;
	mov	dptr,#_currentScreen
	mov	a,#0x04
	movx	@dptr,a
;	../Common/CentralHeating.c:487: ClearTopLine();
	lcall	_ClearTopLine
;	../Common/CentralHeating.c:488: TestAndDisplay("Off", 0);
	mov	dptr,#_TestAndDisplay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#___str_1
	mov	b,#0x80
	ljmp	_TestAndDisplay
00176$:
;	../Common/CentralHeating.c:490: else if (eventType == MENU_SUBMENUEXIT)
	cjne	r6,#0x04,00438$
	cjne	r7,#0x00,00438$
	sjmp	00439$
00438$:
	ret
00439$:
;	../Common/CentralHeating.c:492: currentScreen = SCREEN_HOME;
	mov	dptr,#_currentScreen
	mov	a,#0x01
	movx	@dptr,a
;	../Common/CentralHeating.c:493: ClearTopLine();
;	../Common/CentralHeating.c:495: break;
	ljmp	_ClearTopLine
;	../Common/CentralHeating.c:497: case MENUID_TEST_BOILER :
00178$:
;	../Common/CentralHeating.c:498: if (eventType == MENU_COMMAND)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00440$
	cjne	r7,#0x00,00440$
	sjmp	00441$
00440$:
	ret
00441$:
;	../Common/CentralHeating.c:500: TestAndDisplay("Boiler", OUTPUT_BOILER);
	mov	dptr,#_TestAndDisplay_PARM_2
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#___str_2
	mov	b,#0x80
;	../Common/CentralHeating.c:502: break;
	ljmp	_TestAndDisplay
;	../Common/CentralHeating.c:504: case MENUID_TEST_PUMP :
00181$:
;	../Common/CentralHeating.c:505: if (eventType == MENU_COMMAND)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00442$
	cjne	r7,#0x00,00442$
	sjmp	00443$
00442$:
	ret
00443$:
;	../Common/CentralHeating.c:507: TestAndDisplay("Pump", OUTPUT_PUMP);
	mov	dptr,#_TestAndDisplay_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#___str_3
	mov	b,#0x80
;	../Common/CentralHeating.c:509: break;
	ljmp	_TestAndDisplay
;	../Common/CentralHeating.c:511: case MENUID_TEST_ZONE1 :
00184$:
;	../Common/CentralHeating.c:512: if (eventType == MENU_COMMAND)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00444$
	cjne	r7,#0x00,00444$
	sjmp	00445$
00444$:
	ret
00445$:
;	../Common/CentralHeating.c:514: TestAndDisplay("Zone 1", OUTPUT_ACTUATOR1);
	mov	dptr,#_TestAndDisplay_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#___str_4
	mov	b,#0x80
;	../Common/CentralHeating.c:516: break;
	ljmp	_TestAndDisplay
;	../Common/CentralHeating.c:518: case MENUID_TEST_ZONE2 :
00187$:
;	../Common/CentralHeating.c:519: if (eventType == MENU_COMMAND)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00446$
	cjne	r7,#0x00,00446$
	sjmp	00447$
00446$:
	ret
00447$:
;	../Common/CentralHeating.c:521: TestAndDisplay("Zone 2", OUTPUT_ACTUATOR2);
	mov	dptr,#_TestAndDisplay_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#___str_5
	mov	b,#0x80
;	../Common/CentralHeating.c:523: break;
;	../Common/CentralHeating.c:525: case MENUID_TEST_ZONE3 :
	ljmp	_TestAndDisplay
00190$:
;	../Common/CentralHeating.c:526: if (eventType == MENU_COMMAND)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00200$
	cjne	r7,#0x00,00200$
;	../Common/CentralHeating.c:528: TestAndDisplay("Zone 3", OUTPUT_ACTUATOR3);
	mov	dptr,#_TestAndDisplay_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#___str_6
	mov	b,#0x80
;	../Common/CentralHeating.c:530: break;
;	../Common/CentralHeating.c:532: case MENUID_TEST_ZONE4 :
	ljmp	_TestAndDisplay
00193$:
;	../Common/CentralHeating.c:533: if (eventType == MENU_COMMAND)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00200$
	cjne	r7,#0x00,00200$
;	../Common/CentralHeating.c:535: TestAndDisplay("Zone 4", OUTPUT_ACTUATOR4);
	mov	dptr,#_TestAndDisplay_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#___str_7
	mov	b,#0x80
;	../Common/CentralHeating.c:537: break;
;	../Common/CentralHeating.c:540: case MENUID_TEST_RESET :
	ljmp	_TestAndDisplay
00196$:
;	../Common/CentralHeating.c:541: if (eventType == MENU_COMMAND)
	mov	dptr,#_HandleMenuCommand_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00200$
	cjne	r7,#0x00,00200$
;	../Common/CentralHeating.c:543: TestAndDisplay("Reset", 0);
	mov	dptr,#_TestAndDisplay_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#___str_8
	mov	b,#0x80
;	../Common/CentralHeating.c:548: }
;	../Common/CentralHeating.c:550: }
	ljmp	_TestAndDisplay
00200$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WriteCurrentTime'
;------------------------------------------------------------
;strBuffer                 Allocated with name '_WriteCurrentTime_strBuffer_65536_100'
;------------------------------------------------------------
;	../Common/CentralHeating.c:554: void WriteCurrentTime()
;	-----------------------------------------
;	 function WriteCurrentTime
;	-----------------------------------------
_WriteCurrentTime:
;	../Common/CentralHeating.c:558: pGetRtc(&currentDateTime);
	lcall	00103$
	sjmp	00104$
00103$:
	mov	dptr,#_pGetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_currentDateTime
	mov	b,#0x00
	ret
00104$:
;	../Common/CentralHeating.c:559: FormatTime(strBuffer, &currentDateTime, 0);
	mov	dptr,#_FormatTime_PARM_2
	mov	a,#_currentDateTime
	movx	@dptr,a
	mov	a,#(_currentDateTime >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_FormatTime_PARM_3
	movx	@dptr,a
	mov	dptr,#_WriteCurrentTime_strBuffer_65536_100
	mov	b,#0x00
	lcall	_FormatTime
;	../Common/CentralHeating.c:560: PartialWriteToScreen(11, 5, strBuffer);
	mov	dptr,#_PartialWriteToScreen_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_PartialWriteToScreen_PARM_3
	mov	a,#_WriteCurrentTime_strBuffer_65536_100
	movx	@dptr,a
	mov	a,#(_WriteCurrentTime_strBuffer_65536_100 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000b
;	../Common/CentralHeating.c:561: }
	ljmp	_PartialWriteToScreen
;------------------------------------------------------------
;Allocation info for local variables in function 'PreviewTimeAdjustment'
;------------------------------------------------------------
;strBuffer                 Allocated with name '_PreviewTimeAdjustment_strBuffer_65536_101'
;dt                        Allocated with name '_PreviewTimeAdjustment_dt_65536_101'
;------------------------------------------------------------
;	../Common/CentralHeating.c:564: void PreviewTimeAdjustment()
;	-----------------------------------------
;	 function PreviewTimeAdjustment
;	-----------------------------------------
_PreviewTimeAdjustment:
;	../Common/CentralHeating.c:568: pGetRtc(&dt);
	lcall	00103$
	sjmp	00104$
00103$:
	mov	dptr,#_pGetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_PreviewTimeAdjustment_dt_65536_101
	mov	b,#0x00
	ret
00104$:
;	../Common/CentralHeating.c:569: FormatTime(strBuffer, &dt, 1);
	mov	dptr,#_FormatTime_PARM_2
	mov	a,#_PreviewTimeAdjustment_dt_65536_101
	movx	@dptr,a
	mov	a,#(_PreviewTimeAdjustment_dt_65536_101 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_FormatTime_PARM_3
	inc	a
	movx	@dptr,a
	mov	dptr,#_PreviewTimeAdjustment_strBuffer_65536_101
	mov	b,#0x00
	lcall	_FormatTime
;	../Common/CentralHeating.c:570: PartialWriteToScreen(0, 16, strBuffer);
	mov	dptr,#_PartialWriteToScreen_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_PartialWriteToScreen_PARM_3
	mov	a,#_PreviewTimeAdjustment_strBuffer_65536_101
	movx	@dptr,a
	mov	a,#(_PreviewTimeAdjustment_strBuffer_65536_101 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
;	../Common/CentralHeating.c:571: }
	ljmp	_PartialWriteToScreen
;------------------------------------------------------------
;Allocation info for local variables in function 'PreviewDateAdjustment'
;------------------------------------------------------------
;strBuffer                 Allocated with name '_PreviewDateAdjustment_strBuffer_65536_102'
;dt                        Allocated with name '_PreviewDateAdjustment_dt_65536_102'
;------------------------------------------------------------
;	../Common/CentralHeating.c:574: void PreviewDateAdjustment()
;	-----------------------------------------
;	 function PreviewDateAdjustment
;	-----------------------------------------
_PreviewDateAdjustment:
;	../Common/CentralHeating.c:578: pGetRtc(&dt);
	lcall	00103$
	sjmp	00104$
00103$:
	mov	dptr,#_pGetRtc
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_PreviewDateAdjustment_dt_65536_102
	mov	b,#0x00
	ret
00104$:
;	../Common/CentralHeating.c:579: FormatDate(strBuffer, &dt);
	mov	dptr,#_FormatDate_PARM_2
	mov	a,#_PreviewDateAdjustment_dt_65536_102
	movx	@dptr,a
	mov	a,#(_PreviewDateAdjustment_dt_65536_102 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_PreviewDateAdjustment_strBuffer_65536_102
	mov	b,#0x00
	lcall	_FormatDate
;	../Common/CentralHeating.c:580: PartialWriteToScreen(0, 16, strBuffer);
	mov	dptr,#_PartialWriteToScreen_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_PartialWriteToScreen_PARM_3
	mov	a,#_PreviewDateAdjustment_strBuffer_65536_102
	movx	@dptr,a
	mov	a,#(_PreviewDateAdjustment_strBuffer_65536_102 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
;	../Common/CentralHeating.c:581: }
	ljmp	_PartialWriteToScreen
;------------------------------------------------------------
;Allocation info for local variables in function 'TestAndDisplay'
;------------------------------------------------------------
;output                    Allocated with name '_TestAndDisplay_PARM_2'
;description               Allocated with name '_TestAndDisplay_description_65536_103'
;------------------------------------------------------------
;	../Common/CentralHeating.c:584: void TestAndDisplay(char *description, unsigned char output)
;	-----------------------------------------
;	 function TestAndDisplay
;	-----------------------------------------
_TestAndDisplay:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_TestAndDisplay_description_65536_103
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/CentralHeating.c:586: PartialWriteToScreen(0, 16, description);
	mov	dptr,#_TestAndDisplay_description_65536_103
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_PartialWriteToScreen_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_PartialWriteToScreen_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_PartialWriteToScreen
;	../Common/CentralHeating.c:587: pSetOutputPortValues(output);
	mov	dptr,#_TestAndDisplay_PARM_2
	movx	a,@dptr
	mov	r7,a
	ljmp	00103$
00103$:
	mov	dptr,#_pSetOutputPortValues
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r7
	ret
;	../Common/CentralHeating.c:588: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ProcessHeating'
;------------------------------------------------------------
;inputs                    Allocated with name '_ProcessHeating_inputs_65536_105'
;zones                     Allocated with name '_ProcessHeating_zones_65536_105'
;pump                      Allocated with name '_ProcessHeating_pump_65536_105'
;boiler                    Allocated with name '_ProcessHeating_boiler_65536_105'
;output                    Allocated with name '_ProcessHeating_output_65536_105'
;------------------------------------------------------------
;	../Common/CentralHeating.c:594: void ProcessHeating()
;	-----------------------------------------
;	 function ProcessHeating
;	-----------------------------------------
_ProcessHeating:
;	../Common/CentralHeating.c:604: inputs = 0;
	mov	dptr,#_ProcessHeating_inputs_65536_105
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:605: pGetInputPortValues(&inputs);
	lcall	00169$
	sjmp	00170$
00169$:
	mov	dptr,#_pGetInputPortValues
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_ProcessHeating_inputs_65536_105
	mov	b,#0x00
	ret
00170$:
;	../Common/CentralHeating.c:607: lastInputState = inputs;
	mov	dptr,#_ProcessHeating_inputs_65536_105
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_lastInputState
	movx	@dptr,a
;	../Common/CentralHeating.c:609: zones[0] = inputs & INPUT_ZONE1;
	anl	ar7,#0x10
	mov	dptr,#_ProcessHeating_zones_65536_105
	mov	a,r7
	movx	@dptr,a
;	../Common/CentralHeating.c:610: zones[1] = inputs & INPUT_ZONE2;
	mov	dptr,#_ProcessHeating_inputs_65536_105
	movx	a,@dptr
	anl	a,#0x20
	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0001)
	movx	@dptr,a
;	../Common/CentralHeating.c:611: zones[2] = inputs & INPUT_ZONE3;
	mov	dptr,#_ProcessHeating_inputs_65536_105
	movx	a,@dptr
	anl	a,#0x04
	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0002)
	movx	@dptr,a
;	../Common/CentralHeating.c:612: zones[3] = inputs & INPUT_ZONE4;
	mov	dptr,#_ProcessHeating_inputs_65536_105
	movx	a,@dptr
	anl	a,#0x08
	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0003)
	movx	@dptr,a
;	../Common/CentralHeating.c:613: zones[4] = inputs & INPUT_ZONE5;
	mov	dptr,#_ProcessHeating_inputs_65536_105
	movx	a,@dptr
	anl	a,#0x40
	mov	r6,a
	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0004)
	movx	@dptr,a
;	../Common/CentralHeating.c:615: if (zones[0] || zones[1] || zones[2] || zones[3] || zones[4])
	mov	a,r7
	jnz	00106$
	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0001)
	movx	a,@dptr
	jnz	00106$
	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0002)
	movx	a,@dptr
	jnz	00106$
	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0003)
	movx	a,@dptr
	jnz	00106$
	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0004)
	movx	a,@dptr
	jz	00107$
00106$:
;	../Common/CentralHeating.c:617: pump = 1;
	mov	dptr,#_ProcessHeating_pump_65536_105
	mov	a,#0x01
	movx	@dptr,a
;	../Common/CentralHeating.c:618: boiler = 1;
	mov	dptr,#_ProcessHeating_boiler_65536_105
	movx	@dptr,a
	sjmp	00108$
00107$:
;	../Common/CentralHeating.c:622: pump = 0;
	mov	dptr,#_ProcessHeating_pump_65536_105
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:623: boiler = 0;
	mov	dptr,#_ProcessHeating_boiler_65536_105
	movx	@dptr,a
;	../Common/CentralHeating.c:626: if (CompareDateTime(&currentDateTime, &provideHotwaterUntil) < 0 ||
	mov	dptr,#_CompareDateTime_PARM_2
	mov	a,#_provideHotwaterUntil
	movx	@dptr,a
	mov	a,#(_provideHotwaterUntil >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_currentDateTime
	mov	b,#0x00
	lcall	_CompareDateTime
	mov	r6,dpl
	mov	a,dph
	mov	r7,a
	jb	acc.7,00101$
;	../Common/CentralHeating.c:627: currentDateTime.hours == 17 || currentDateTime.hours == 18 )
	mov	dptr,#(_currentDateTime + 0x0002)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x11,00177$
	sjmp	00101$
00177$:
	cjne	r7,#0x12,00102$
00101$:
;	../Common/CentralHeating.c:629: hotWaterNeeded = 1;
	mov	dptr,#_hotWaterNeeded
	mov	a,#0x01
	movx	@dptr,a
;	../Common/CentralHeating.c:630: boiler = 1;
	mov	dptr,#_ProcessHeating_boiler_65536_105
	movx	@dptr,a
	sjmp	00108$
00102$:
;	../Common/CentralHeating.c:634: hotWaterNeeded = 0;
	mov	dptr,#_hotWaterNeeded
	clr	a
	movx	@dptr,a
00108$:
;	../Common/CentralHeating.c:639: output = 0;
	mov	dptr,#_ProcessHeating_output_65536_105
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:640: if (boiler)
	mov	dptr,#_ProcessHeating_boiler_65536_105
	movx	a,@dptr
	jz	00114$
;	../Common/CentralHeating.c:642: output |= OUTPUT_BOILER;
	mov	dptr,#_ProcessHeating_output_65536_105
	mov	a,#0x20
	movx	@dptr,a
00114$:
;	../Common/CentralHeating.c:644: if (pump)
	mov	dptr,#_ProcessHeating_pump_65536_105
	movx	a,@dptr
	jz	00116$
;	../Common/CentralHeating.c:646: output |= OUTPUT_PUMP;
	mov	dptr,#_ProcessHeating_output_65536_105
	movx	a,@dptr
	orl	acc,#0x10
	movx	@dptr,a
00116$:
;	../Common/CentralHeating.c:649: if (zones[0])
	mov	dptr,#_ProcessHeating_zones_65536_105
	movx	a,@dptr
	jz	00118$
;	../Common/CentralHeating.c:651: output |= OUTPUT_ACTUATOR1;
	mov	dptr,#_ProcessHeating_output_65536_105
	movx	a,@dptr
	orl	acc,#0x01
	movx	@dptr,a
;	../Common/CentralHeating.c:652: output |= OUTPUT_ACTUATOR2;
	mov	dptr,#_ProcessHeating_output_65536_105
	movx	a,@dptr
	orl	acc,#0x02
	movx	@dptr,a
00118$:
;	../Common/CentralHeating.c:654: if (zones[1])
	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0001)
	movx	a,@dptr
	jz	00120$
;	../Common/CentralHeating.c:656: output |= OUTPUT_ACTUATOR3;
	mov	dptr,#_ProcessHeating_output_65536_105
	movx	a,@dptr
	orl	acc,#0x04
	movx	@dptr,a
00120$:
;	../Common/CentralHeating.c:658: if (zones[2])
	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0002)
	movx	a,@dptr
	jz	00122$
;	../Common/CentralHeating.c:660: output |= OUTPUT_ACTUATOR4;
	mov	dptr,#_ProcessHeating_output_65536_105
	movx	a,@dptr
	orl	acc,#0x08
	movx	@dptr,a
00122$:
;	../Common/CentralHeating.c:663: pSetOutputPortValues(output);
	mov	dptr,#_ProcessHeating_output_65536_105
	movx	a,@dptr
	mov	r7,a
	push	ar7
	lcall	00185$
	sjmp	00186$
00185$:
	mov	dptr,#_pSetOutputPortValues
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r7
	ret
00186$:
	pop	ar7
;	../Common/CentralHeating.c:664: lastOutputState = output;
	mov	dptr,#_lastOutputState
	mov	a,r7
	movx	@dptr,a
;	../Common/CentralHeating.c:665: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'AnimateScreen'
;------------------------------------------------------------
;strBuffer                 Allocated with name '_AnimateScreen_strBuffer_65536_115'
;numericValue              Allocated with name '_AnimateScreen_numericValue_65536_115'
;zones                     Allocated with name '_AnimateScreen_zones_65536_115'
;outputs                   Allocated with name '_AnimateScreen_outputs_65536_115'
;index                     Allocated with name '_AnimateScreen_index_65536_115'
;------------------------------------------------------------
;	../Common/CentralHeating.c:668: void AnimateScreen()
;	-----------------------------------------
;	 function AnimateScreen
;	-----------------------------------------
_AnimateScreen:
;	../Common/CentralHeating.c:676: if (animationType == ANIMATE_INPUTS)
	mov	dptr,#_animationType
	movx	a,@dptr
	mov	r7,a
	jz	00195$
	ljmp	00127$
00195$:
;	../Common/CentralHeating.c:678: zones[0] = lastInputState & INPUT_ZONE1;
	mov	dptr,#_lastInputState
	movx	a,@dptr
	anl	a,#0x10
	mov	dptr,#_AnimateScreen_zones_65536_115
	movx	@dptr,a
;	../Common/CentralHeating.c:679: zones[1] = lastInputState & INPUT_ZONE2;
	mov	dptr,#_lastInputState
	movx	a,@dptr
	anl	a,#0x20
	mov	dptr,#(_AnimateScreen_zones_65536_115 + 0x0001)
	movx	@dptr,a
;	../Common/CentralHeating.c:680: zones[2] = lastInputState & INPUT_ZONE3;
	mov	dptr,#_lastInputState
	movx	a,@dptr
	anl	a,#0x04
	mov	dptr,#(_AnimateScreen_zones_65536_115 + 0x0002)
	movx	@dptr,a
;	../Common/CentralHeating.c:681: zones[3] = lastInputState & INPUT_ZONE4;
	mov	dptr,#_lastInputState
	movx	a,@dptr
	anl	a,#0x08
	mov	dptr,#(_AnimateScreen_zones_65536_115 + 0x0003)
	movx	@dptr,a
;	../Common/CentralHeating.c:682: zones[4] = lastInputState & INPUT_ZONE5;
	mov	dptr,#_lastInputState
	movx	a,@dptr
	anl	a,#0x40
	mov	dptr,#(_AnimateScreen_zones_65536_115 + 0x0004)
	movx	@dptr,a
;	../Common/CentralHeating.c:685: strcpy(strBuffer, "Zone ");
	mov	dptr,#_strcpy_PARM_2
	mov	a,#___str_9
	movx	@dptr,a
	mov	a,#(___str_9 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_AnimateScreen_strBuffer_65536_115
	mov	b,#0x00
	lcall	_strcpy
;	../Common/CentralHeating.c:686: for (index = 0; index < 5; ++index)
	mov	r6,#0x00
00131$:
;	../Common/CentralHeating.c:688: if (zones[index])
	mov	a,r6
	add	a,#_AnimateScreen_zones_65536_115
	mov	r4,a
	clr	a
	addc	a,#(_AnimateScreen_zones_65536_115 >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	jz	00102$
;	../Common/CentralHeating.c:690: numericValue[0] = '1' + index;
	mov	ar5,r6
	mov	a,#0x31
	add	a,r5
	mov	dptr,#_AnimateScreen_numericValue_65536_115
	movx	@dptr,a
;	../Common/CentralHeating.c:691: numericValue[1] = 0;
	mov	dptr,#(_AnimateScreen_numericValue_65536_115 + 0x0001)
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:692: strcat(strBuffer, numericValue);
	mov	dptr,#_strcat_PARM_2
	mov	a,#_AnimateScreen_numericValue_65536_115
	movx	@dptr,a
	mov	a,#(_AnimateScreen_numericValue_65536_115 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_AnimateScreen_strBuffer_65536_115
	mov	b,#0x00
	push	ar6
	lcall	_strcat
	pop	ar6
	sjmp	00132$
00102$:
;	../Common/CentralHeating.c:696: strcat(strBuffer, "_");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_10
	movx	@dptr,a
	mov	a,#(___str_10 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_AnimateScreen_strBuffer_65536_115
	mov	b,#0x00
	push	ar6
	lcall	_strcat
	pop	ar6
00132$:
;	../Common/CentralHeating.c:686: for (index = 0; index < 5; ++index)
	inc	r6
	cjne	r6,#0x05,00197$
00197$:
	jc	00131$
	ljmp	00128$
00127$:
;	../Common/CentralHeating.c:700: else if (animationType == ANIMATE_OUTPUTS)
	cjne	r7,#0x01,00199$
	sjmp	00200$
00199$:
	ljmp	00124$
00200$:
;	../Common/CentralHeating.c:702: outputs[0] = lastOutputState & OUTPUT_ACTUATOR1;
	mov	dptr,#_lastOutputState
	movx	a,@dptr
	anl	a,#0x01
	mov	dptr,#_AnimateScreen_outputs_65536_115
	movx	@dptr,a
;	../Common/CentralHeating.c:703: outputs[1] = lastOutputState & OUTPUT_ACTUATOR2;
	mov	dptr,#_lastOutputState
	movx	a,@dptr
	anl	a,#0x02
	mov	dptr,#(_AnimateScreen_outputs_65536_115 + 0x0001)
	movx	@dptr,a
;	../Common/CentralHeating.c:704: outputs[2] = lastOutputState & OUTPUT_ACTUATOR3;
	mov	dptr,#_lastOutputState
	movx	a,@dptr
	anl	a,#0x04
	mov	dptr,#(_AnimateScreen_outputs_65536_115 + 0x0002)
	movx	@dptr,a
;	../Common/CentralHeating.c:705: outputs[3] = lastOutputState & OUTPUT_ACTUATOR4;
	mov	dptr,#_lastOutputState
	movx	a,@dptr
	anl	a,#0x08
	mov	dptr,#(_AnimateScreen_outputs_65536_115 + 0x0003)
	movx	@dptr,a
;	../Common/CentralHeating.c:707: strcpy(strBuffer, "Out ");
	mov	dptr,#_strcpy_PARM_2
	mov	a,#___str_11
	movx	@dptr,a
	mov	a,#(___str_11 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_AnimateScreen_strBuffer_65536_115
	mov	b,#0x00
	lcall	_strcpy
;	../Common/CentralHeating.c:708: for (index = 0; index < 4; ++index)
	mov	r6,#0x00
00133$:
;	../Common/CentralHeating.c:710: if (outputs[index])
	mov	a,r6
	add	a,#_AnimateScreen_outputs_65536_115
	mov	r4,a
	clr	a
	addc	a,#(_AnimateScreen_outputs_65536_115 >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	jz	00106$
;	../Common/CentralHeating.c:712: numericValue[0] = '1' + index;
	mov	ar5,r6
	mov	a,#0x31
	add	a,r5
	mov	dptr,#_AnimateScreen_numericValue_65536_115
	movx	@dptr,a
;	../Common/CentralHeating.c:713: numericValue[1] = 0;
	mov	dptr,#(_AnimateScreen_numericValue_65536_115 + 0x0001)
	clr	a
	movx	@dptr,a
;	../Common/CentralHeating.c:714: strcat(strBuffer, numericValue);
	mov	dptr,#_strcat_PARM_2
	mov	a,#_AnimateScreen_numericValue_65536_115
	movx	@dptr,a
	mov	a,#(_AnimateScreen_numericValue_65536_115 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_AnimateScreen_strBuffer_65536_115
	mov	b,#0x00
	push	ar6
	lcall	_strcat
	pop	ar6
	sjmp	00134$
00106$:
;	../Common/CentralHeating.c:718: strcat(strBuffer, "_");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_10
	movx	@dptr,a
	mov	a,#(___str_10 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_AnimateScreen_strBuffer_65536_115
	mov	b,#0x00
	push	ar6
	lcall	_strcat
	pop	ar6
00134$:
;	../Common/CentralHeating.c:708: for (index = 0; index < 4; ++index)
	inc	r6
	cjne	r6,#0x04,00202$
00202$:
	jc	00133$
;	../Common/CentralHeating.c:722: if (lastOutputState & OUTPUT_PUMP)
	mov	dptr,#_lastOutputState
	movx	a,@dptr
	jnb	acc.4,00110$
;	../Common/CentralHeating.c:724: strcat(strBuffer, "P");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_12
	movx	@dptr,a
	mov	a,#(___str_12 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_AnimateScreen_strBuffer_65536_115
	mov	b,#0x00
	lcall	_strcat
	sjmp	00111$
00110$:
;	../Common/CentralHeating.c:728: strcat(strBuffer, "_");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_10
	movx	@dptr,a
	mov	a,#(___str_10 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_AnimateScreen_strBuffer_65536_115
	mov	b,#0x00
	lcall	_strcat
00111$:
;	../Common/CentralHeating.c:731: if (lastOutputState & OUTPUT_BOILER)
	mov	dptr,#_lastOutputState
	movx	a,@dptr
	jnb	acc.5,00113$
;	../Common/CentralHeating.c:733: strcat(strBuffer, "B");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_13
	movx	@dptr,a
	mov	a,#(___str_13 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_AnimateScreen_strBuffer_65536_115
	mov	b,#0x00
	lcall	_strcat
	ljmp	00128$
00113$:
;	../Common/CentralHeating.c:737: strcat(strBuffer, "_");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_10
	movx	@dptr,a
	mov	a,#(___str_10 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_AnimateScreen_strBuffer_65536_115
	mov	b,#0x00
	lcall	_strcat
	ljmp	00128$
00124$:
;	../Common/CentralHeating.c:740: else if (animationType == ANIMATE_HW)
	cjne	r7,#0x02,00121$
;	../Common/CentralHeating.c:742: strcpy(strBuffer, "HW ");
	mov	dptr,#_strcpy_PARM_2
	mov	a,#___str_14
	movx	@dptr,a
	mov	a,#(___str_14 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_AnimateScreen_strBuffer_65536_115
	mov	b,#0x00
	lcall	_strcpy
;	../Common/CentralHeating.c:743: if (hotWaterNeeded)
	mov	dptr,#_hotWaterNeeded
	movx	a,@dptr
	jz	00116$
;	../Common/CentralHeating.c:745: strcat(strBuffer, "On");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_15
	movx	@dptr,a
	mov	a,#(___str_15 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_AnimateScreen_strBuffer_65536_115
	mov	b,#0x00
	lcall	_strcat
	sjmp	00128$
00116$:
;	../Common/CentralHeating.c:749: strcat(strBuffer, "Off");
	mov	dptr,#_strcat_PARM_2
	mov	a,#___str_1
	movx	@dptr,a
	mov	a,#(___str_1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_AnimateScreen_strBuffer_65536_115
	mov	b,#0x00
	lcall	_strcat
	sjmp	00128$
00121$:
;	../Common/CentralHeating.c:752: else if (animationType == ANIMATE_VERSION)
	cjne	r7,#0x03,00128$
;	../Common/CentralHeating.c:754: strcpy(strBuffer, COMPILED_AT);
	mov	dptr,#_strcpy_PARM_2
	mov	a,#___str_16
	movx	@dptr,a
	mov	a,#(___str_16 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_AnimateScreen_strBuffer_65536_115
	mov	b,#0x00
	lcall	_strcpy
00128$:
;	../Common/CentralHeating.c:757: PartialWriteToScreen(0, 10, strBuffer);
	mov	dptr,#_PartialWriteToScreen_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_PartialWriteToScreen_PARM_3
	mov	a,#_AnimateScreen_strBuffer_65536_115
	movx	@dptr,a
	mov	a,#(_AnimateScreen_strBuffer_65536_115 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	lcall	_PartialWriteToScreen
;	../Common/CentralHeating.c:758: animationType++;
	mov	dptr,#_animationType
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	../Common/CentralHeating.c:759: if (animationType > ANIMATE_VERSION)
	movx	a,@dptr
	add	a,#0xff - 0x03
	jnc	00135$
;	../Common/CentralHeating.c:761: animationType = ANIMATE_INPUTS;
	mov	dptr,#_animationType
	clr	a
	movx	@dptr,a
00135$:
;	../Common/CentralHeating.c:763: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Off"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "Boiler"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "Pump"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "Zone 1"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "Zone 2"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Zone 3"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "Zone 4"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "Reset"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "Zone "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "_"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "Out "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "P"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "B"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "HW "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "On"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "20200718"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
