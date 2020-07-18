;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module MenuMgr
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _HandleMenuCommand
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
	.globl _RenderMenuOnBuffer_PARM_2
	.globl _GetMenuItemExtent_PARM_3
	.globl _GetMenuItemExtent_PARM_2
	.globl _RenderActiveMenu_PARM_3
	.globl _RenderActiveMenu_PARM_2
	.globl _AddMenuDefinition_PARM_3
	.globl _AddMenuDefinition_PARM_2
	.globl _MenuController
	.globl _MenuDefinitionCounter
	.globl _MenuDefinitions
	.globl _InitialiseMenuDefinitions
	.globl _TerminateMenuDefinitions
	.globl _AddMenuDefinition
	.globl _InitialiseMenuController
	.globl _MenuNavigation
	.globl _RenderActiveMenu
	.globl _GetMenuItemExtent
	.globl _RenderMenuOnBuffer
	.globl _IsParentMenu
	.globl _IsGoBack
	.globl _GoSubMenu
	.globl _GoRight
	.globl _GoLeft
	.globl _GoBackUp
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
_RenderActiveMenu_sloc0_1_0:
	.ds 2
_RenderActiveMenu_sloc1_1_0:
	.ds 2
_RenderActiveMenu_sloc2_1_0:
	.ds 2
_RenderActiveMenu_sloc3_1_0:
	.ds 2
_RenderActiveMenu_sloc4_1_0:
	.ds 2
_RenderActiveMenu_sloc5_1_0:
	.ds 3
_GetMenuItemExtent_sloc0_1_0:
	.ds 2
_GetMenuItemExtent_sloc1_1_0:
	.ds 2
_GetMenuItemExtent_sloc2_1_0:
	.ds 2
_GetMenuItemExtent_sloc3_1_0:
	.ds 2
_GetMenuItemExtent_sloc4_1_0:
	.ds 2
_GetMenuItemExtent_sloc5_1_0:
	.ds 3
_RenderMenuOnBuffer_sloc0_1_0:
	.ds 2
_IsParentMenu_sloc0_1_0:
	.ds 2
_GoRight_sloc0_1_0:
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
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_MenuDefinitions::
	.ds 200
_MenuDefinitionCounter::
	.ds 2
_MenuController::
	.ds 6
_AddMenuDefinition_PARM_2:
	.ds 2
_AddMenuDefinition_PARM_3:
	.ds 2
_AddMenuDefinition_text_65536_61:
	.ds 3
_MenuNavigation_navType_65536_65:
	.ds 1
_RenderActiveMenu_PARM_2:
	.ds 2
_RenderActiveMenu_PARM_3:
	.ds 2
_RenderActiveMenu_pDisplay_65536_71:
	.ds 3
_RenderActiveMenu_ch_65536_72:
	.ds 1
_RenderActiveMenu_currentPos_65536_72:
	.ds 2
_GetMenuItemExtent_PARM_2:
	.ds 3
_GetMenuItemExtent_PARM_3:
	.ds 3
_GetMenuItemExtent_menuItem_65536_85:
	.ds 2
_GetMenuItemExtent_currentPos_65536_86:
	.ds 2
_RenderMenuOnBuffer_PARM_2:
	.ds 2
_RenderMenuOnBuffer_pBuffer_65536_94:
	.ds 3
_RenderMenuOnBuffer_startPos_131072_96:
	.ds 2
_RenderMenuOnBuffer_endPos_131072_96:
	.ds 2
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
;Allocation info for local variables in function 'InitialiseMenuDefinitions'
;------------------------------------------------------------
;	../Common/MenuMgr.c:47: void InitialiseMenuDefinitions()
;	-----------------------------------------
;	 function InitialiseMenuDefinitions
;	-----------------------------------------
_InitialiseMenuDefinitions:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../Common/MenuMgr.c:49: MenuDefinitionCounter = 0;
	mov	dptr,#_MenuDefinitionCounter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../Common/MenuMgr.c:50: TerminateMenuDefinitions();
;	../Common/MenuMgr.c:51: }
	ljmp	_TerminateMenuDefinitions
;------------------------------------------------------------
;Allocation info for local variables in function 'TerminateMenuDefinitions'
;------------------------------------------------------------
;	../Common/MenuMgr.c:53: void TerminateMenuDefinitions()
;	-----------------------------------------
;	 function TerminateMenuDefinitions
;	-----------------------------------------
_TerminateMenuDefinitions:
;	../Common/MenuMgr.c:55: MenuDefinitions[MenuDefinitionCounter].id = 0;
	mov	dptr,#_MenuDefinitionCounter
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0005
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_MenuDefinitions
	mov	r6,a
	mov	a,r7
	addc	a,#(_MenuDefinitions >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
;	../Common/MenuMgr.c:56: MenuDefinitions[MenuDefinitionCounter].text = 0;
	mov	dptr,#_MenuDefinitionCounter
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0005
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_MenuDefinitions
	mov	dpl,a
	mov	a,r7
	addc	a,#(_MenuDefinitions >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../Common/MenuMgr.c:57: MenuDefinitions[MenuDefinitionCounter].parent = 0;
	mov	dptr,#_MenuDefinitionCounter
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0005
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_MenuDefinitions
	mov	r6,a
	mov	a,r7
	addc	a,#(_MenuDefinitions >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
;	../Common/MenuMgr.c:58: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'AddMenuDefinition'
;------------------------------------------------------------
;parent                    Allocated with name '_AddMenuDefinition_PARM_2'
;id                        Allocated with name '_AddMenuDefinition_PARM_3'
;text                      Allocated with name '_AddMenuDefinition_text_65536_61'
;------------------------------------------------------------
;	../Common/MenuMgr.c:60: void AddMenuDefinition(char *text, int parent, int id)
;	-----------------------------------------
;	 function AddMenuDefinition
;	-----------------------------------------
_AddMenuDefinition:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_AddMenuDefinition_text_65536_61
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/MenuMgr.c:62: MenuDefinitions[MenuDefinitionCounter].id = id;
	mov	dptr,#_MenuDefinitionCounter
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0005
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_MenuDefinitions
	mov	r6,a
	mov	a,r7
	addc	a,#(_MenuDefinitions >> 8)
	mov	r7,a
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_AddMenuDefinition_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
;	../Common/MenuMgr.c:63: MenuDefinitions[MenuDefinitionCounter].text = text;
	mov	dptr,#_MenuDefinitionCounter
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0005
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_MenuDefinitions
	mov	r6,a
	mov	a,r7
	addc	a,#(_MenuDefinitions >> 8)
	mov	r7,a
	mov	dptr,#_AddMenuDefinition_text_65536_61
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../Common/MenuMgr.c:64: MenuDefinitions[MenuDefinitionCounter].parent = parent;
	mov	dptr,#_MenuDefinitionCounter
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0005
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_MenuDefinitions
	mov	r6,a
	mov	a,r7
	addc	a,#(_MenuDefinitions >> 8)
	mov	r7,a
	mov	a,#0x03
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#_AddMenuDefinition_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
;	../Common/MenuMgr.c:66: ++MenuDefinitionCounter;
	mov	dptr,#_MenuDefinitionCounter
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	../Common/MenuMgr.c:67: if ((MenuDefinitionCounter + 1) > MAX_MENU_ITEMS)
	mov	dptr,#_MenuDefinitionCounter
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00109$
	inc	r7
00109$:
	clr	c
	mov	a,#0x28
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	../Common/MenuMgr.c:69: pCrashDump("Menu item count");
	lcall	00111$
	sjmp	00112$
00111$:
	mov	dptr,#_pCrashDump
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#___str_0
	mov	b,#0x80
	ret
00112$:
00102$:
;	../Common/MenuMgr.c:72: TerminateMenuDefinitions();
;	../Common/MenuMgr.c:73: }
	ljmp	_TerminateMenuDefinitions
;------------------------------------------------------------
;Allocation info for local variables in function 'InitialiseMenuController'
;------------------------------------------------------------
;	../Common/MenuMgr.c:77: void InitialiseMenuController()
;	-----------------------------------------
;	 function InitialiseMenuController
;	-----------------------------------------
_InitialiseMenuController:
;	../Common/MenuMgr.c:79: MenuController.currentSelectedMenuIndex = 0;
	mov	dptr,#_MenuController
	clr	a
	movx	@dptr,a
;	../Common/MenuMgr.c:80: MenuController.navStack[0] = 0;
	mov	dptr,#(_MenuController + 0x0001)
	movx	@dptr,a
;	../Common/MenuMgr.c:81: MenuController.navStackPtr = 0;
	mov	dptr,#(_MenuController + 0x0004)
	movx	@dptr,a
;	../Common/MenuMgr.c:82: MenuController.scrollPos = 0;
	mov	dptr,#(_MenuController + 0x0005)
	movx	@dptr,a
;	../Common/MenuMgr.c:83: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
	mov	dptr,#_MenuController
	movx	a,@dptr
	mov	b,#0x05
	mul	ab
	add	a,#_MenuDefinitions
	mov	r6,a
	mov	a,#(_MenuDefinitions >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_HandleMenuCommand_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
;	../Common/MenuMgr.c:84: }
	ljmp	_HandleMenuCommand
;------------------------------------------------------------
;Allocation info for local variables in function 'MenuNavigation'
;------------------------------------------------------------
;navType                   Allocated with name '_MenuNavigation_navType_65536_65'
;------------------------------------------------------------
;	../Common/MenuMgr.c:87: void MenuNavigation(char navType)
;	-----------------------------------------
;	 function MenuNavigation
;	-----------------------------------------
_MenuNavigation:
	mov	a,dpl
	mov	dptr,#_MenuNavigation_navType_65536_65
	movx	@dptr,a
;	../Common/MenuMgr.c:89: switch (navType)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00133$
	sjmp	00102$
00133$:
	cjne	r7,#0x02,00134$
	sjmp	00101$
00134$:
;	../Common/MenuMgr.c:91: case NAVTYPE_RIGHT :
	cjne	r7,#0x03,00111$
	sjmp	00103$
00101$:
;	../Common/MenuMgr.c:92: GoRight();
;	../Common/MenuMgr.c:93: break;
;	../Common/MenuMgr.c:95: case NAVTYPE_LEFT :
	ljmp	_GoRight
00102$:
;	../Common/MenuMgr.c:96: GoLeft();
;	../Common/MenuMgr.c:97: break;
;	../Common/MenuMgr.c:99: case NAVTYPE_SELECTITEM :
	ljmp	_GoLeft
00103$:
;	../Common/MenuMgr.c:101: if (IsParentMenu())
	lcall	_IsParentMenu
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00108$
;	../Common/MenuMgr.c:103: GoSubMenu();
	ljmp	_GoSubMenu
00108$:
;	../Common/MenuMgr.c:105: else if (IsGoBack())
	lcall	_IsGoBack
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00105$
;	../Common/MenuMgr.c:107: GoBackUp();
	ljmp	_GoBackUp
00105$:
;	../Common/MenuMgr.c:111: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_COMMAND);
	mov	dptr,#_MenuController
	movx	a,@dptr
	mov	b,#0x05
	mul	ab
	add	a,#_MenuDefinitions
	mov	r6,a
	mov	a,#(_MenuDefinitions >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_HandleMenuCommand_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
;	../Common/MenuMgr.c:116: }
;	../Common/MenuMgr.c:117: }
	ljmp	_HandleMenuCommand
00111$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RenderActiveMenu'
;------------------------------------------------------------
;sloc0                     Allocated with name '_RenderActiveMenu_sloc0_1_0'
;sloc1                     Allocated with name '_RenderActiveMenu_sloc1_1_0'
;sloc2                     Allocated with name '_RenderActiveMenu_sloc2_1_0'
;sloc3                     Allocated with name '_RenderActiveMenu_sloc3_1_0'
;sloc4                     Allocated with name '_RenderActiveMenu_sloc4_1_0'
;sloc5                     Allocated with name '_RenderActiveMenu_sloc5_1_0'
;windowStart               Allocated with name '_RenderActiveMenu_PARM_2'
;windowEnd                 Allocated with name '_RenderActiveMenu_PARM_3'
;pDisplay                  Allocated with name '_RenderActiveMenu_pDisplay_65536_71'
;currentParent             Allocated with name '_RenderActiveMenu_currentParent_65536_72'
;i                         Allocated with name '_RenderActiveMenu_i_65536_72'
;pTemp                     Allocated with name '_RenderActiveMenu_pTemp_65536_72'
;ch                        Allocated with name '_RenderActiveMenu_ch_65536_72'
;currentPos                Allocated with name '_RenderActiveMenu_currentPos_65536_72'
;------------------------------------------------------------
;	../Common/MenuMgr.c:121: void RenderActiveMenu(char *pDisplay, int windowStart, int windowEnd)
;	-----------------------------------------
;	 function RenderActiveMenu
;	-----------------------------------------
_RenderActiveMenu:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/MenuMgr.c:125: int currentParent = MenuDefinitions[MenuController.currentSelectedMenuIndex].parent;
	mov	dptr,#_MenuController
	movx	a,@dptr
	mov	b,#0x05
	mul	ab
	add	a,#_MenuDefinitions
	mov	r6,a
	mov	a,#(_MenuDefinitions >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_RenderActiveMenu_sloc3_1_0,r7
	mov	(_RenderActiveMenu_sloc3_1_0 + 1),#0x00
;	../Common/MenuMgr.c:131: currentPos = 0;
	mov	dptr,#_RenderActiveMenu_currentPos_65536_72
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../Common/MenuMgr.c:132: for (i = 0; MenuDefinitions[i].text != 0; ++i)
	mov	dptr,#_RenderActiveMenu_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_RenderActiveMenu_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	_RenderActiveMenu_sloc4_1_0,r4
	mov	(_RenderActiveMenu_sloc4_1_0 + 1),r5
	mov	_RenderActiveMenu_sloc0_1_0,r4
	mov	(_RenderActiveMenu_sloc0_1_0 + 1),r5
	clr	a
	mov	_RenderActiveMenu_sloc1_1_0,a
	mov	(_RenderActiveMenu_sloc1_1_0 + 1),a
00124$:
	mov	dptr,#__mulint_PARM_2
	mov	a,_RenderActiveMenu_sloc1_1_0
	movx	@dptr,a
	mov	a,(_RenderActiveMenu_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0005
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__mulint
	mov	_RenderActiveMenu_sloc2_1_0,dpl
	mov	(_RenderActiveMenu_sloc2_1_0 + 1),dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,_RenderActiveMenu_sloc2_1_0
	add	a,#_MenuDefinitions
	mov	dpl,a
	mov	a,(_RenderActiveMenu_sloc2_1_0 + 1)
	addc	a,#(_MenuDefinitions >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r1
	orl	a,r6
	jnz	00182$
	ret
00182$:
;	../Common/MenuMgr.c:134: if (MenuDefinitions[i].parent == currentParent)
	mov	a,_RenderActiveMenu_sloc2_1_0
	add	a,#_MenuDefinitions
	mov	r6,a
	mov	a,(_RenderActiveMenu_sloc2_1_0 + 1)
	addc	a,#(_MenuDefinitions >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	cjne	a,_RenderActiveMenu_sloc3_1_0,00183$
	mov	a,r6
	cjne	a,(_RenderActiveMenu_sloc3_1_0 + 1),00183$
	sjmp	00184$
00183$:
	ljmp	00125$
00184$:
;	../Common/MenuMgr.c:136: if (i == MenuController.currentSelectedMenuIndex)
	mov	dptr,#_MenuController
	movx	a,@dptr
	mov	r6,#0x00
	cjne	a,_RenderActiveMenu_sloc1_1_0,00102$
	mov	a,r6
	cjne	a,(_RenderActiveMenu_sloc1_1_0 + 1),00102$
;	../Common/MenuMgr.c:138: ch = '[';
	mov	dptr,#_RenderActiveMenu_ch_65536_72
	mov	a,#0x5b
	movx	@dptr,a
	sjmp	00103$
00102$:
;	../Common/MenuMgr.c:142: ch = ' ';
	mov	dptr,#_RenderActiveMenu_ch_65536_72
	mov	a,#0x20
	movx	@dptr,a
00103$:
;	../Common/MenuMgr.c:144: COPY_IF_IN_WINDOW(pDisplay, ch, currentPos, windowStart, windowEnd);
	mov	dptr,#_RenderActiveMenu_currentPos_65536_72
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00105$
	mov	a,r6
	subb	a,r4
	mov	a,r7
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_RenderActiveMenu_ch_65536_72
	movx	a,@dptr
	mov	r0,a
	mov	dpl,r1
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
	mov	a,#0x01
	add	a,r1
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r1
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
00105$:
;	../Common/MenuMgr.c:145: ++currentPos;
	mov	dptr,#_RenderActiveMenu_currentPos_65536_72
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	../Common/MenuMgr.c:147: for (pTemp = MenuDefinitions[i].text; *pTemp; ++pTemp)
	mov	dptr,#__mulint_PARM_2
	mov	a,_RenderActiveMenu_sloc1_1_0
	movx	@dptr,a
	mov	a,(_RenderActiveMenu_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0005
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r6
	add	a,#_MenuDefinitions
	mov	dpl,a
	mov	a,r7
	addc	a,#(_MenuDefinitions >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
	movx	a,@dptr
	mov	_RenderActiveMenu_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_RenderActiveMenu_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_RenderActiveMenu_sloc5_1_0 + 2),a
	mov	dptr,#_RenderActiveMenu_currentPos_65536_72
	movx	a,@dptr
	mov	_RenderActiveMenu_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_RenderActiveMenu_sloc2_1_0 + 1),a
00121$:
	mov	dpl,r1
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	jz	00141$
;	../Common/MenuMgr.c:149: COPY_IF_IN_WINDOW(pDisplay, *pTemp, currentPos, windowStart, windowEnd);
	clr	c
	mov	a,_RenderActiveMenu_sloc2_1_0
	subb	a,r2
	mov	a,(_RenderActiveMenu_sloc2_1_0 + 1)
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00108$
	mov	a,_RenderActiveMenu_sloc2_1_0
	subb	a,_RenderActiveMenu_sloc4_1_0
	mov	a,(_RenderActiveMenu_sloc2_1_0 + 1)
	xrl	a,#0x80
	mov	b,(_RenderActiveMenu_sloc4_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00108$
	mov	dpl,_RenderActiveMenu_sloc5_1_0
	mov	dph,(_RenderActiveMenu_sloc5_1_0 + 1)
	mov	b,(_RenderActiveMenu_sloc5_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	_RenderActiveMenu_sloc5_1_0,dpl
	mov	(_RenderActiveMenu_sloc5_1_0 + 1),dph
	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
	mov	a,_RenderActiveMenu_sloc5_1_0
	movx	@dptr,a
	mov	a,(_RenderActiveMenu_sloc5_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_RenderActiveMenu_sloc5_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_RenderActiveMenu_sloc5_1_0
	mov	dph,(_RenderActiveMenu_sloc5_1_0 + 1)
	mov	b,(_RenderActiveMenu_sloc5_1_0 + 2)
	clr	a
	lcall	__gptrput
00108$:
;	../Common/MenuMgr.c:150: ++currentPos;
	inc	_RenderActiveMenu_sloc2_1_0
	clr	a
	cjne	a,_RenderActiveMenu_sloc2_1_0,00192$
	inc	(_RenderActiveMenu_sloc2_1_0 + 1)
00192$:
;	../Common/MenuMgr.c:147: for (pTemp = MenuDefinitions[i].text; *pTemp; ++pTemp)
	inc	r1
	cjne	r1,#0x00,00121$
	inc	r6
	sjmp	00121$
00141$:
	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
	mov	a,_RenderActiveMenu_sloc5_1_0
	movx	@dptr,a
	mov	a,(_RenderActiveMenu_sloc5_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_RenderActiveMenu_sloc5_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_RenderActiveMenu_currentPos_65536_72
	mov	a,_RenderActiveMenu_sloc2_1_0
	movx	@dptr,a
	mov	a,(_RenderActiveMenu_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	../Common/MenuMgr.c:153: if (i == MenuController.currentSelectedMenuIndex)
	mov	dptr,#_MenuController
	movx	a,@dptr
	mov	r6,#0x00
	cjne	a,_RenderActiveMenu_sloc1_1_0,00112$
	mov	a,r6
	cjne	a,(_RenderActiveMenu_sloc1_1_0 + 1),00112$
;	../Common/MenuMgr.c:155: ch = ']';
	mov	dptr,#_RenderActiveMenu_ch_65536_72
	mov	a,#0x5d
	movx	@dptr,a
	sjmp	00113$
00112$:
;	../Common/MenuMgr.c:159: ch = ' ';
	mov	dptr,#_RenderActiveMenu_ch_65536_72
	mov	a,#0x20
	movx	@dptr,a
00113$:
;	../Common/MenuMgr.c:161: COPY_IF_IN_WINDOW(pDisplay, ch, currentPos, windowStart, windowEnd);
	mov	dptr,#_RenderActiveMenu_currentPos_65536_72
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00115$
	mov	a,r6
	subb	a,_RenderActiveMenu_sloc0_1_0
	mov	a,r7
	xrl	a,#0x80
	mov	b,(_RenderActiveMenu_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00115$
	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_RenderActiveMenu_ch_65536_72
	movx	a,@dptr
	mov	r0,a
	mov	dpl,r1
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
	mov	a,#0x01
	add	a,r1
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r1
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
00115$:
;	../Common/MenuMgr.c:162: ++currentPos;
	mov	dptr,#_RenderActiveMenu_currentPos_65536_72
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00125$:
;	../Common/MenuMgr.c:132: for (i = 0; MenuDefinitions[i].text != 0; ++i)
	inc	_RenderActiveMenu_sloc1_1_0
	clr	a
	cjne	a,_RenderActiveMenu_sloc1_1_0,00198$
	inc	(_RenderActiveMenu_sloc1_1_0 + 1)
00198$:
;	../Common/MenuMgr.c:165: }
	ljmp	00124$
;------------------------------------------------------------
;Allocation info for local variables in function 'GetMenuItemExtent'
;------------------------------------------------------------
;sloc0                     Allocated with name '_GetMenuItemExtent_sloc0_1_0'
;sloc1                     Allocated with name '_GetMenuItemExtent_sloc1_1_0'
;sloc2                     Allocated with name '_GetMenuItemExtent_sloc2_1_0'
;sloc3                     Allocated with name '_GetMenuItemExtent_sloc3_1_0'
;sloc4                     Allocated with name '_GetMenuItemExtent_sloc4_1_0'
;sloc5                     Allocated with name '_GetMenuItemExtent_sloc5_1_0'
;pStartPos                 Allocated with name '_GetMenuItemExtent_PARM_2'
;pEndPos                   Allocated with name '_GetMenuItemExtent_PARM_3'
;menuItem                  Allocated with name '_GetMenuItemExtent_menuItem_65536_85'
;currentParent             Allocated with name '_GetMenuItemExtent_currentParent_65536_86'
;i                         Allocated with name '_GetMenuItemExtent_i_65536_86'
;currentPos                Allocated with name '_GetMenuItemExtent_currentPos_65536_86'
;pTemp                     Allocated with name '_GetMenuItemExtent_pTemp_65536_86'
;------------------------------------------------------------
;	../Common/MenuMgr.c:167: void GetMenuItemExtent(int menuItem, int *pStartPos, int *pEndPos)
;	-----------------------------------------
;	 function GetMenuItemExtent
;	-----------------------------------------
_GetMenuItemExtent:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_GetMenuItemExtent_menuItem_65536_85
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/MenuMgr.c:174: *pStartPos = 0;
	mov	dptr,#_GetMenuItemExtent_PARM_2
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
	inc	dptr
	lcall	__gptrput
;	../Common/MenuMgr.c:175: *pEndPos = 0;
	mov	dptr,#_GetMenuItemExtent_PARM_3
	movx	a,@dptr
	mov	_GetMenuItemExtent_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_GetMenuItemExtent_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_GetMenuItemExtent_sloc5_1_0 + 2),a
	mov	dpl,_GetMenuItemExtent_sloc5_1_0
	mov	dph,(_GetMenuItemExtent_sloc5_1_0 + 1)
	mov	b,(_GetMenuItemExtent_sloc5_1_0 + 2)
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	../Common/MenuMgr.c:176: currentPos = 0;
	mov	dptr,#_GetMenuItemExtent_currentPos_65536_86
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	../Common/MenuMgr.c:178: currentParent = MenuDefinitions[menuItem].parent;
	mov	dptr,#_GetMenuItemExtent_menuItem_65536_85
	movx	a,@dptr
	mov	_GetMenuItemExtent_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_GetMenuItemExtent_sloc0_1_0 + 1),a
	mov	dptr,#__mulint_PARM_2
	mov	a,_GetMenuItemExtent_sloc0_1_0
	movx	@dptr,a
	mov	a,(_GetMenuItemExtent_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r0,dpl
	mov	r1,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r0
	add	a,#_MenuDefinitions
	mov	r0,a
	mov	a,r1
	addc	a,#(_MenuDefinitions >> 8)
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	_GetMenuItemExtent_sloc4_1_0,r1
	mov	(_GetMenuItemExtent_sloc4_1_0 + 1),#0x00
;	../Common/MenuMgr.c:180: for (i = 0; MenuDefinitions[i].text != 0; ++i)
	mov	_GetMenuItemExtent_sloc1_1_0,_GetMenuItemExtent_sloc0_1_0
	mov	(_GetMenuItemExtent_sloc1_1_0 + 1),(_GetMenuItemExtent_sloc0_1_0 + 1)
	clr	a
	mov	_GetMenuItemExtent_sloc2_1_0,a
	mov	(_GetMenuItemExtent_sloc2_1_0 + 1),a
00113$:
	mov	dptr,#__mulint_PARM_2
	mov	a,_GetMenuItemExtent_sloc2_1_0
	movx	@dptr,a
	mov	a,(_GetMenuItemExtent_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	push	ar5
	lcall	__mulint
	mov	_GetMenuItemExtent_sloc3_1_0,dpl
	mov	(_GetMenuItemExtent_sloc3_1_0 + 1),dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,_GetMenuItemExtent_sloc3_1_0
	add	a,#_MenuDefinitions
	mov	dpl,a
	mov	a,(_GetMenuItemExtent_sloc3_1_0 + 1)
	addc	a,#(_MenuDefinitions >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	a,r0
	orl	a,r1
	jnz	00147$
	ret
00147$:
;	../Common/MenuMgr.c:182: if (MenuDefinitions[i].parent == currentParent)
	mov	a,_GetMenuItemExtent_sloc3_1_0
	add	a,#_MenuDefinitions
	mov	r3,a
	mov	a,(_GetMenuItemExtent_sloc3_1_0 + 1)
	addc	a,#(_MenuDefinitions >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	cjne	a,_GetMenuItemExtent_sloc4_1_0,00148$
	mov	a,r3
	cjne	a,(_GetMenuItemExtent_sloc4_1_0 + 1),00148$
	sjmp	00149$
00148$:
	ljmp	00114$
00149$:
;	../Common/MenuMgr.c:184: if (i == menuItem)
	mov	a,_GetMenuItemExtent_sloc1_1_0
	cjne	a,_GetMenuItemExtent_sloc2_1_0,00102$
	mov	a,(_GetMenuItemExtent_sloc1_1_0 + 1)
	cjne	a,(_GetMenuItemExtent_sloc2_1_0 + 1),00102$
;	../Common/MenuMgr.c:186: *pStartPos = currentPos;
	mov	dptr,#_GetMenuItemExtent_currentPos_65536_86
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00102$:
;	../Common/MenuMgr.c:188: currentPos++; 
	mov	dptr,#_GetMenuItemExtent_currentPos_65536_86
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	../Common/MenuMgr.c:191: for (pTemp = MenuDefinitions[i].text; *pTemp; ++pTemp)
	mov	dptr,#__mulint_PARM_2
	mov	a,_GetMenuItemExtent_sloc2_1_0
	movx	@dptr,a
	mov	a,(_GetMenuItemExtent_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,#_MenuDefinitions
	mov	dpl,a
	mov	a,r4
	addc	a,#(_MenuDefinitions >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_GetMenuItemExtent_currentPos_65536_86
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
00110$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jz	00124$
;	../Common/MenuMgr.c:193: currentPos++;
	inc	r0
	cjne	r0,#0x00,00153$
	inc	r1
00153$:
;	../Common/MenuMgr.c:191: for (pTemp = MenuDefinitions[i].text; *pTemp; ++pTemp)
	inc	r2
	cjne	r2,#0x00,00110$
	inc	r3
	sjmp	00110$
00124$:
	mov	dptr,#_GetMenuItemExtent_currentPos_65536_86
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	../Common/MenuMgr.c:196: if (i == menuItem)
	mov	a,_GetMenuItemExtent_sloc0_1_0
	cjne	a,_GetMenuItemExtent_sloc2_1_0,00105$
	mov	a,(_GetMenuItemExtent_sloc0_1_0 + 1)
	cjne	a,(_GetMenuItemExtent_sloc2_1_0 + 1),00105$
;	../Common/MenuMgr.c:198: *pEndPos = currentPos;
	mov	dpl,_GetMenuItemExtent_sloc5_1_0
	mov	dph,(_GetMenuItemExtent_sloc5_1_0 + 1)
	mov	b,(_GetMenuItemExtent_sloc5_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
00105$:
;	../Common/MenuMgr.c:200: currentPos++;
	mov	dptr,#_GetMenuItemExtent_currentPos_65536_86
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00114$:
;	../Common/MenuMgr.c:180: for (i = 0; MenuDefinitions[i].text != 0; ++i)
	inc	_GetMenuItemExtent_sloc2_1_0
	clr	a
	cjne	a,_GetMenuItemExtent_sloc2_1_0,00157$
	inc	(_GetMenuItemExtent_sloc2_1_0 + 1)
00157$:
;	../Common/MenuMgr.c:203: }
	ljmp	00113$
;------------------------------------------------------------
;Allocation info for local variables in function 'RenderMenuOnBuffer'
;------------------------------------------------------------
;sloc0                     Allocated with name '_RenderMenuOnBuffer_sloc0_1_0'
;maxLength                 Allocated with name '_RenderMenuOnBuffer_PARM_2'
;pBuffer                   Allocated with name '_RenderMenuOnBuffer_pBuffer_65536_94'
;startPos                  Allocated with name '_RenderMenuOnBuffer_startPos_131072_96'
;endPos                    Allocated with name '_RenderMenuOnBuffer_endPos_131072_96'
;------------------------------------------------------------
;	../Common/MenuMgr.c:205: void RenderMenuOnBuffer(char *pBuffer, int maxLength)
;	-----------------------------------------
;	 function RenderMenuOnBuffer
;	-----------------------------------------
_RenderMenuOnBuffer:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_RenderMenuOnBuffer_pBuffer_65536_94
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../Common/MenuMgr.c:207: *pBuffer = 0;
	mov	dptr,#_RenderMenuOnBuffer_pBuffer_65536_94
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
;	../Common/MenuMgr.c:215: GetMenuItemExtent(MenuController.currentSelectedMenuIndex, &startPos, &endPos);
	mov	dptr,#_MenuController
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_GetMenuItemExtent_PARM_2
	mov	a,#_RenderMenuOnBuffer_startPos_131072_96
	movx	@dptr,a
	mov	a,#(_RenderMenuOnBuffer_startPos_131072_96 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_GetMenuItemExtent_PARM_3
	mov	a,#_RenderMenuOnBuffer_endPos_131072_96
	movx	@dptr,a
	mov	a,#(_RenderMenuOnBuffer_endPos_131072_96 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	lcall	_GetMenuItemExtent
;	../Common/MenuMgr.c:219: if (startPos < MenuController.scrollPos)
	mov	dptr,#(_MenuController + 0x0005)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_RenderMenuOnBuffer_startPos_131072_96
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	ar4,r7
	mov	r7,#0x00
	clr	c
	mov	a,r5
	subb	a,r4
	mov	a,r6
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
;	../Common/MenuMgr.c:221: MenuController.scrollPos = startPos;
	mov	dptr,#(_MenuController + 0x0005)
	mov	a,r5
	movx	@dptr,a
	sjmp	00105$
00104$:
;	../Common/MenuMgr.c:223: else if (endPos > MenuController.scrollPos + maxLength)
	mov	dptr,#_RenderMenuOnBuffer_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r5
	add	a,r4
	mov	r4,a
	mov	a,r6
	addc	a,r7
	mov	r7,a
	mov	dptr,#_RenderMenuOnBuffer_endPos_131072_96
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r7
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	../Common/MenuMgr.c:225: MenuController.scrollPos = endPos - maxLength + 1;
	mov	a,r2
	clr	c
	subb	a,r5
	inc	a
	mov	r7,a
	mov	dptr,#(_MenuController + 0x0005)
	movx	@dptr,a
00105$:
;	../Common/MenuMgr.c:228: RenderActiveMenu(pBuffer, MenuController.scrollPos, MenuController.scrollPos + maxLength);
	mov	dptr,#_RenderMenuOnBuffer_pBuffer_65536_94
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_MenuController + 0x0005)
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#(_MenuController + 0x0005)
	movx	a,@dptr
	mov	r2,a
	mov	_RenderMenuOnBuffer_sloc0_1_0,r2
;	1-genFromRTrack replaced	mov	(_RenderMenuOnBuffer_sloc0_1_0 + 1),#0x00
	mov	(_RenderMenuOnBuffer_sloc0_1_0 + 1),r3
	mov	dptr,#_RenderMenuOnBuffer_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r0
	add	a,_RenderMenuOnBuffer_sloc0_1_0
	mov	r0,a
	mov	a,r2
	addc	a,(_RenderMenuOnBuffer_sloc0_1_0 + 1)
	mov	r2,a
	mov	dptr,#_RenderActiveMenu_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_RenderActiveMenu_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	../Common/MenuMgr.c:230: }
	ljmp	_RenderActiveMenu
;------------------------------------------------------------
;Allocation info for local variables in function 'IsParentMenu'
;------------------------------------------------------------
;sloc0                     Allocated with name '_IsParentMenu_sloc0_1_0'
;i                         Allocated with name '_IsParentMenu_i_65536_99'
;------------------------------------------------------------
;	../Common/MenuMgr.c:232: int IsParentMenu()
;	-----------------------------------------
;	 function IsParentMenu
;	-----------------------------------------
_IsParentMenu:
;	../Common/MenuMgr.c:235: for (i = 0; MenuDefinitions[i].text != 0; ++i)
	mov	dptr,#_MenuController
	movx	a,@dptr
	mov	r7,a
	mov	b,#0x05
	mul	ab
	mov	_IsParentMenu_sloc0_1_0,a
	mov	(_IsParentMenu_sloc0_1_0 + 1),b
	mov	r4,#0x00
	mov	r5,#0x00
00105$:
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0005
	push	ar5
	push	ar4
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	mov	a,r2
	add	a,#_MenuDefinitions
	mov	dpl,a
	mov	a,r3
	addc	a,#(_MenuDefinitions >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	a,r0
	orl	a,r1
	jz	00103$
;	../Common/MenuMgr.c:237: if (MenuDefinitions[i].parent == MenuDefinitions[MenuController.currentSelectedMenuIndex].id)
	mov	a,r2
	add	a,#_MenuDefinitions
	mov	r2,a
	mov	a,r3
	addc	a,#(_MenuDefinitions >> 8)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_IsParentMenu_sloc0_1_0
	add	a,#_MenuDefinitions
	mov	r3,a
	mov	a,(_IsParentMenu_sloc0_1_0 + 1)
	addc	a,#(_MenuDefinitions >> 8)
	mov	r6,a
	mov	dpl,r3
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00106$
;	../Common/MenuMgr.c:239: return 1;
	mov	dptr,#0x0001
	ret
00106$:
;	../Common/MenuMgr.c:235: for (i = 0; MenuDefinitions[i].text != 0; ++i)
	inc	r4
	cjne	r4,#0x00,00105$
	inc	r5
	sjmp	00105$
00103$:
;	../Common/MenuMgr.c:242: return 0;
	mov	dptr,#0x0000
;	../Common/MenuMgr.c:243: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IsGoBack'
;------------------------------------------------------------
;	../Common/MenuMgr.c:245: int IsGoBack()
;	-----------------------------------------
;	 function IsGoBack
;	-----------------------------------------
_IsGoBack:
;	../Common/MenuMgr.c:247: return MenuDefinitions[MenuController.currentSelectedMenuIndex].id == MENU_END_SENTINEL;
	mov	dptr,#_MenuController
	movx	a,@dptr
	mov	b,#0x05
	mul	ab
	add	a,#_MenuDefinitions
	mov	r6,a
	mov	a,#(_MenuDefinitions >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00103$
	mov	a,r7
	sjmp	00104$
00103$:
	clr	a
00104$:
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
;	../Common/MenuMgr.c:248: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GoSubMenu'
;------------------------------------------------------------
;i                         Allocated with name '_GoSubMenu_i_65536_104'
;------------------------------------------------------------
;	../Common/MenuMgr.c:250: void GoSubMenu()
;	-----------------------------------------
;	 function GoSubMenu
;	-----------------------------------------
_GoSubMenu:
;	../Common/MenuMgr.c:253: for (i = 0; MenuDefinitions[i].text != 0; ++i)
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_MenuDefinitions
	mov	dpl,a
	mov	a,r5
	addc	a,#(_MenuDefinitions >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	a,r1
	orl	a,r2
	jnz	00121$
	ret
00121$:
;	../Common/MenuMgr.c:255: if (MenuDefinitions[i].parent == MenuDefinitions[MenuController.currentSelectedMenuIndex].id)
	mov	a,r4
	add	a,#_MenuDefinitions
	mov	r4,a
	mov	a,r5
	addc	a,#(_MenuDefinitions >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_MenuController
	movx	a,@dptr
	mov	b,#0x05
	mul	ab
	add	a,#_MenuDefinitions
	mov	r3,a
	mov	a,#(_MenuDefinitions >> 8)
	addc	a,b
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r5
	cjne	a,ar4,00106$
;	../Common/MenuMgr.c:257: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_SUBMENUENTER);
	mov	r5,#0x00
	mov	dptr,#_HandleMenuCommand_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_HandleMenuCommand
	pop	ar6
	pop	ar7
;	../Common/MenuMgr.c:259: MenuController.navStack[MenuController.navStackPtr++] = MenuController.currentSelectedMenuIndex;
	mov	dptr,#(_MenuController + 0x0004)
	movx	a,@dptr
	mov	r5,a
	inc	a
	mov	dptr,#(_MenuController + 0x0004)
	movx	@dptr,a
	mov	a,r5
	add	a,#(_MenuController + 0x0001)
	mov	r5,a
	clr	a
	addc	a,#((_MenuController + 0x0001) >> 8)
	mov	r4,a
	mov	dptr,#_MenuController
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r4
	movx	@dptr,a
;	../Common/MenuMgr.c:260: MenuController.currentSelectedMenuIndex = i;
	mov	ar5,r6
	mov	dptr,#_MenuController
	mov	a,r5
	movx	@dptr,a
;	../Common/MenuMgr.c:261: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
	mov	a,r5
	mov	b,#0x05
	mul	ab
	add	a,#_MenuDefinitions
	mov	r4,a
	mov	a,#(_MenuDefinitions >> 8)
	addc	a,b
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dptr,#_HandleMenuCommand_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r4
;	../Common/MenuMgr.c:262: break;
	ljmp	_HandleMenuCommand
00106$:
;	../Common/MenuMgr.c:253: for (i = 0; MenuDefinitions[i].text != 0; ++i)
	inc	r6
	cjne	r6,#0x00,00124$
	inc	r7
00124$:
;	../Common/MenuMgr.c:265: }
	ljmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'GoRight'
;------------------------------------------------------------
;sloc0                     Allocated with name '_GoRight_sloc0_1_0'
;i                         Allocated with name '_GoRight_i_65536_108'
;currentParent             Allocated with name '_GoRight_currentParent_65536_108'
;------------------------------------------------------------
;	../Common/MenuMgr.c:267: void GoRight()
;	-----------------------------------------
;	 function GoRight
;	-----------------------------------------
_GoRight:
;	../Common/MenuMgr.c:272: currentParent = MenuDefinitions[MenuController.currentSelectedMenuIndex].parent;
	mov	dptr,#_MenuController
	movx	a,@dptr
	mov	r7,a
	mov	b,#0x05
	mul	ab
	add	a,#_MenuDefinitions
	mov	r5,a
	mov	a,#(_MenuDefinitions >> 8)
	addc	a,b
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	_GoRight_sloc0_1_0,r6
	mov	(_GoRight_sloc0_1_0 + 1),#0x00
;	../Common/MenuMgr.c:273: i = MenuController.currentSelectedMenuIndex + 1;
	mov	r4,#0x00
	inc	r7
	cjne	r7,#0x00,00121$
	inc	r4
00121$:
;	../Common/MenuMgr.c:274: while (MenuDefinitions[i].text != 0)
00104$:
	mov	dptr,#__mulint_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0005
	push	ar7
	push	ar4
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar7
	mov	a,r2
	add	a,#_MenuDefinitions
	mov	dpl,a
	mov	a,r3
	addc	a,#(_MenuDefinitions >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	a,r0
	orl	a,r1
	jz	00107$
;	../Common/MenuMgr.c:276: if (MenuDefinitions[i].parent == currentParent)
	mov	a,r2
	add	a,#_MenuDefinitions
	mov	r2,a
	mov	a,r3
	addc	a,#(_MenuDefinitions >> 8)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	cjne	a,_GoRight_sloc0_1_0,00102$
	mov	a,r5
	cjne	a,(_GoRight_sloc0_1_0 + 1),00102$
;	../Common/MenuMgr.c:278: MenuController.currentSelectedMenuIndex = i;
	mov	ar6,r7
	mov	dptr,#_MenuController
	mov	a,r6
	movx	@dptr,a
;	../Common/MenuMgr.c:279: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
	mov	a,r6
	mov	b,#0x05
	mul	ab
	add	a,#_MenuDefinitions
	mov	r5,a
	mov	a,#(_MenuDefinitions >> 8)
	addc	a,b
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	mov	dptr,#_HandleMenuCommand_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r5
;	../Common/MenuMgr.c:280: break;
	ljmp	_HandleMenuCommand
00102$:
;	../Common/MenuMgr.c:284: i++;
	inc	r7
	cjne	r7,#0x00,00125$
	inc	r4
00125$:
	ljmp	00104$
00107$:
;	../Common/MenuMgr.c:288: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GoLeft'
;------------------------------------------------------------
;i                         Allocated with name '_GoLeft_i_65536_112'
;currentParent             Allocated with name '_GoLeft_currentParent_65536_112'
;------------------------------------------------------------
;	../Common/MenuMgr.c:290: void GoLeft()
;	-----------------------------------------
;	 function GoLeft
;	-----------------------------------------
_GoLeft:
;	../Common/MenuMgr.c:295: currentParent = MenuDefinitions[MenuController.currentSelectedMenuIndex].parent;
	mov	dptr,#_MenuController
	movx	a,@dptr
	mov	r7,a
	mov	b,#0x05
	mul	ab
	add	a,#_MenuDefinitions
	mov	r5,a
	mov	a,#(_MenuDefinitions >> 8)
	addc	a,b
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r6,#0x00
;	../Common/MenuMgr.c:296: i = MenuController.currentSelectedMenuIndex - 1;
	mov	r4,#0x00
	dec	r7
	cjne	r7,#0xff,00121$
	dec	r4
00121$:
;	../Common/MenuMgr.c:297: while (i >= 0)
00104$:
	mov	a,r4
	jnb	acc.7,00122$
	ret
00122$:
;	../Common/MenuMgr.c:299: if (MenuDefinitions[i].parent == currentParent)
	mov	dptr,#__mulint_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	add	a,#_MenuDefinitions
	mov	r2,a
	mov	a,r3
	addc	a,#(_MenuDefinitions >> 8)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	cjne	a,ar5,00102$
	mov	a,r2
	cjne	a,ar6,00102$
;	../Common/MenuMgr.c:301: MenuController.currentSelectedMenuIndex = i;
	mov	ar3,r7
	mov	dptr,#_MenuController
	mov	a,r3
	movx	@dptr,a
;	../Common/MenuMgr.c:302: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
	mov	a,r3
	mov	b,#0x05
	mul	ab
	add	a,#_MenuDefinitions
	mov	r2,a
	mov	a,#(_MenuDefinitions >> 8)
	addc	a,b
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	mov	dptr,#_HandleMenuCommand_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r2
;	../Common/MenuMgr.c:303: break;
	ljmp	_HandleMenuCommand
00102$:
;	../Common/MenuMgr.c:307: i--;
	dec	r7
	cjne	r7,#0xff,00125$
	dec	r4
00125$:
;	../Common/MenuMgr.c:311: }
	ljmp	00104$
;------------------------------------------------------------
;Allocation info for local variables in function 'GoBackUp'
;------------------------------------------------------------
;	../Common/MenuMgr.c:313: void GoBackUp()
;	-----------------------------------------
;	 function GoBackUp
;	-----------------------------------------
_GoBackUp:
;	../Common/MenuMgr.c:315: MenuController.currentSelectedMenuIndex = 0;
	mov	dptr,#_MenuController
	clr	a
	movx	@dptr,a
;	../Common/MenuMgr.c:317: if (MenuController.navStackPtr > 0)
	mov	dptr,#(_MenuController + 0x0004)
	movx	a,@dptr
	mov	r7,a
	jz	00103$
;	../Common/MenuMgr.c:319: MenuController.currentSelectedMenuIndex = MenuController.navStack[--MenuController.navStackPtr];
	dec	r7
	mov	dptr,#(_MenuController + 0x0004)
	mov	a,r7
	movx	@dptr,a
	mov	a,r7
	add	a,#(_MenuController + 0x0001)
	mov	dpl,a
	clr	a
	addc	a,#((_MenuController + 0x0001) >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_MenuController
	movx	@dptr,a
;	../Common/MenuMgr.c:320: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_SUBMENUEXIT);
	mov	a,r7
	mov	b,#0x05
	mul	ab
	add	a,#_MenuDefinitions
	mov	r6,a
	mov	a,#(_MenuDefinitions >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_HandleMenuCommand_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	lcall	_HandleMenuCommand
;	../Common/MenuMgr.c:321: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
	mov	dptr,#_MenuController
	movx	a,@dptr
	mov	b,#0x05
	mul	ab
	add	a,#_MenuDefinitions
	mov	r6,a
	mov	a,#(_MenuDefinitions >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_HandleMenuCommand_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
;	../Common/MenuMgr.c:323: }
	ljmp	_HandleMenuCommand
00103$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Menu item count"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
