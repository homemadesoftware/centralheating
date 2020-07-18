;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Wed Jun 27 23:08:40 2012
;--------------------------------------------------------
	.module LcdDisplay
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rowStartAddresses
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
	.globl _PLS
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
	.globl _InitialiseLcd
	.globl _WriteInstructionToLcd
	.globl _WriteDataToLcd
	.globl _PulseLcdEnable
	.globl _WaitLcdReady
	.globl _ClearDisplay
	.globl _SetCursorPos
	.globl _DirectWriteToDisplay
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
_PLS	=	0x00bc
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
_DirectWriteToDisplay_row_1_1:
	.ds 2
_DirectWriteToDisplay_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'InitialiseLcd'
;------------------------------------------------------------
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	LcdDisplay.c:47: void InitialiseLcd()
;	-----------------------------------------
;	 function InitialiseLcd
;	-----------------------------------------
_InitialiseLcd:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	LcdDisplay.c:51: PORT_LCD_E = 0;						// Start LCD Control (Disable)
	clr	_P0_1
;	LcdDisplay.c:52: PORT_LCD_RS = 0;						// Default Instruction
	clr	_P0_3
;	LcdDisplay.c:53: PORT_LCD_RW = 0;						// Default = Write Direction
	clr	_P0_2
;	LcdDisplay.c:54: for (i=0;i<10000;i++);				// Power-On Delay (15 mS)  
	mov	r2,#0x10
	mov	r3,#0x27
00109$:
	dec	r2
	cjne	r2,#0xff,00131$
	dec	r3
00131$:
	mov	a,r2
	orl	a,r3
	jnz	00109$
;	LcdDisplay.c:56: PORT_LCD &= 0x0F;       				// Clear old LCD Data (Bit[7..4])
	anl	_P0,#0x0F
;	LcdDisplay.c:57: PORT_LCD |= 0x30;						// DB5:DB4 = 1:1
	orl	_P0,#0x30
;	LcdDisplay.c:58: PulseLcdEnable();							// Enable Pulse
	lcall	_PulseLcdEnable
;	LcdDisplay.c:59: for (i=0;i<2500;i++);					// Delay 4.1mS
	mov	r2,#0xC4
	mov	r3,#0x09
00112$:
	dec	r2
	cjne	r2,#0xff,00133$
	dec	r3
00133$:
	mov	a,r2
	orl	a,r3
	jnz	00112$
;	LcdDisplay.c:61: PORT_LCD &= 0x0F;       				// Clear old LCD Data (Bit[7..4])
	anl	_P0,#0x0F
;	LcdDisplay.c:62: PORT_LCD |= 0x30;						// DB5:DB4 = 1:1
	orl	_P0,#0x30
;	LcdDisplay.c:63: PulseLcdEnable();							// Enable Pulse
	lcall	_PulseLcdEnable
;	LcdDisplay.c:64: for (i=0;i<100;i++);					// delay 100uS
	mov	r2,#0x64
	mov	r3,#0x00
00115$:
	dec	r2
	cjne	r2,#0xff,00135$
	dec	r3
00135$:
	mov	a,r2
	orl	a,r3
	jnz	00115$
;	LcdDisplay.c:66: PORT_LCD &= 0x0F;       				// Clear old LCD Data (Bit[7..4])
	anl	_P0,#0x0F
;	LcdDisplay.c:67: PORT_LCD |= 0x30;						// DB5:DB4 = 1:1
	orl	_P0,#0x30
;	LcdDisplay.c:68: PulseLcdEnable();							// Enable Pulse
	lcall	_PulseLcdEnable
;	LcdDisplay.c:69: while(WaitLcdReady());      				// Wait LCD Execute Complete
00101$:
	lcall	_WaitLcdReady
	mov	a,dpl
	jnz	00101$
;	LcdDisplay.c:71: PORT_LCD &= 0x0F;       				// Clear old LCD Data (Bit[7..4])
	anl	_P0,#0x0F
;	LcdDisplay.c:72: PORT_LCD |= 0x20;						// DB5:DB4 = 1:0
	orl	_P0,#0x20
;	LcdDisplay.c:73: PulseLcdEnable();							// Enable Pulse
	lcall	_PulseLcdEnable
;	LcdDisplay.c:74: while(WaitLcdReady());      				// Wait LCD Execute Complete
00104$:
	lcall	_WaitLcdReady
	mov	a,dpl
	jnz	00104$
;	LcdDisplay.c:76: WriteInstructionToLcd(0x28);  					// Function Set (DL=0 4-Bit,N=1 2 Line,F=0 5X7)
	mov	dpl,#0x28
	lcall	_WriteInstructionToLcd
;	LcdDisplay.c:77: WriteInstructionToLcd(0x0C);  					// Display on/off Control (Entry Display,Cursor off,Cursor not Blink)
	mov	dpl,#0x0C
	lcall	_WriteInstructionToLcd
;	LcdDisplay.c:78: WriteInstructionToLcd(0x06);  					// Entry Mode Set (I/D=1 Increment,S=0 Cursor Shift)
	mov	dpl,#0x06
	lcall	_WriteInstructionToLcd
;	LcdDisplay.c:79: WriteInstructionToLcd(0x01);  					// Clear Display  (Clear Display,Set DD RAM Address=0)
	mov	dpl,#0x01
	lcall	_WriteInstructionToLcd
;	LcdDisplay.c:81: SetCursorPos(0);
	mov	dpl,#0x00
	ljmp	_SetCursorPos
;------------------------------------------------------------
;Allocation info for local variables in function 'WriteInstructionToLcd'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;------------------------------------------------------------
;	LcdDisplay.c:89: void WriteInstructionToLcd(unsigned char i)
;	-----------------------------------------
;	 function WriteInstructionToLcd
;	-----------------------------------------
_WriteInstructionToLcd:
	mov	r2,dpl
;	LcdDisplay.c:91: PORT_LCD_RS  = 0;			 			// Instruction Select
	clr	_P0_3
;	LcdDisplay.c:92: PORT_LCD_RW  = 0;						// Write Select
	clr	_P0_2
;	LcdDisplay.c:94: PORT_LCD &= 0x0F;       				// Clear old LCD Data (Bit[7..4])
	anl	_P0,#0x0F
;	LcdDisplay.c:95: PORT_LCD |= i & 0xF0;   				// Strobe High Nibble Command
	mov	a,#0xF0
	anl	a,r2
	orl	_P0,a
;	LcdDisplay.c:96: PulseLcdEnable();							// Enable Pulse
	push	ar2
	lcall	_PulseLcdEnable
	pop	ar2
;	LcdDisplay.c:98: PORT_LCD &= 0x0F;        				// Clear old LCD Data (Bit[7..4])
	anl	_P0,#0x0F
;	LcdDisplay.c:99: PORT_LCD |= (i << 4) & 0xF0;			// Strobe Low Nibble Command
	mov	a,r2
	swap	a
	anl	a,#0xf0
	mov	r2,a
	mov	a,#0xF0
	anl	a,r2
	orl	_P0,a
;	LcdDisplay.c:100: PulseLcdEnable();							// Enable Pulse
	lcall	_PulseLcdEnable
;	LcdDisplay.c:102: while(WaitLcdReady());      				// Wait LCD Execute Complete
00101$:
	lcall	_WaitLcdReady
	mov	a,dpl
	jnz	00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WriteDataToLcd'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;------------------------------------------------------------
;	LcdDisplay.c:108: void WriteDataToLcd(unsigned char i)
;	-----------------------------------------
;	 function WriteDataToLcd
;	-----------------------------------------
_WriteDataToLcd:
	mov	r2,dpl
;	LcdDisplay.c:110: PORT_LCD_RS  = 1;				  		// Data Select
	setb	_P0_3
;	LcdDisplay.c:111: PORT_LCD_RW  = 0;						// Write Select
	clr	_P0_2
;	LcdDisplay.c:113: PORT_LCD &= 0x0F;    					// Clear old LCD Data (Bit[7..4])
	anl	_P0,#0x0F
;	LcdDisplay.c:114: PORT_LCD |= i & 0xF0;  				// Strobe High Nibble Data
	mov	a,#0xF0
	anl	a,r2
	orl	_P0,a
;	LcdDisplay.c:115: PulseLcdEnable();							// Enable Pulse  
	push	ar2
	lcall	_PulseLcdEnable
	pop	ar2
;	LcdDisplay.c:117: PORT_LCD &= 0x0F;    					// Clear old LCD Data (Bit[7..4])
	anl	_P0,#0x0F
;	LcdDisplay.c:118: PORT_LCD |= (i << 4) & 0xF0; 			// Strobe Low Nibble Data
	mov	a,r2
	swap	a
	anl	a,#0xf0
	mov	r2,a
	mov	a,#0xF0
	anl	a,r2
	orl	_P0,a
;	LcdDisplay.c:119: PulseLcdEnable();							// Enable Pulse
	lcall	_PulseLcdEnable
;	LcdDisplay.c:121: while(WaitLcdReady());      				// Wait LCD Execute Complete
00101$:
	lcall	_WaitLcdReady
	mov	a,dpl
	jnz	00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PulseLcdEnable'
;------------------------------------------------------------
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	LcdDisplay.c:127: void PulseLcdEnable(void)	 				// Enable Pulse
;	-----------------------------------------
;	 function PulseLcdEnable
;	-----------------------------------------
_PulseLcdEnable:
;	LcdDisplay.c:130: PORT_LCD_E = 1;   					// Enable ON
	setb	_P0_1
;	LcdDisplay.c:131: for (i=0;i<500;i++);
	mov	r2,#0xF4
	mov	r3,#0x01
00103$:
	dec	r2
	cjne	r2,#0xff,00109$
	dec	r3
00109$:
	mov	a,r2
	orl	a,r3
	jnz	00103$
;	LcdDisplay.c:132: PORT_LCD_E = 0;   					// Enable OFF 
	clr	_P0_1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WaitLcdReady'
;------------------------------------------------------------
;busy_status               Allocated to registers r2 
;------------------------------------------------------------
;	LcdDisplay.c:138: char WaitLcdReady(void)
;	-----------------------------------------
;	 function WaitLcdReady
;	-----------------------------------------
_WaitLcdReady:
;	LcdDisplay.c:142: PORT_LCD_RS  = 0;			 			// Instruction Select
	clr	_P0_3
;	LcdDisplay.c:143: PORT_LCD_RW  = 1; 					// Read Direction
	setb	_P0_2
;	LcdDisplay.c:144: PORT_LCD_E = 1;						// Start Read Busy
	setb	_P0_1
;	LcdDisplay.c:145: busy_status = PORT_LCD;				// Read LCD Data
;	LcdDisplay.c:147: if(busy_status & 0x80)   				// Read & Check Busy Flag
	mov	a,_P0
	mov	r2,a
	jnb	acc.7,00102$
;	LcdDisplay.c:149: PORT_LCD_E = 0;       				// Disable Read
	clr	_P0_1
;	LcdDisplay.c:150: PORT_LCD_RW = 0;					// Default = Write Direction
	clr	_P0_2
;	LcdDisplay.c:151: return 1;							// LCD Busy Status
	mov	dpl,#0x01
	ret
00102$:
;	LcdDisplay.c:155: PORT_LCD_E = 0;       				// Disable Read
	clr	_P0_1
;	LcdDisplay.c:156: PORT_LCD_RW = 0;					// Default = Write Direction
	clr	_P0_2
;	LcdDisplay.c:157: return 0;							// LCD Ready Status
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ClearDisplay'
;------------------------------------------------------------
;------------------------------------------------------------
;	LcdDisplay.c:163: void ClearDisplay()
;	-----------------------------------------
;	 function ClearDisplay
;	-----------------------------------------
_ClearDisplay:
;	LcdDisplay.c:165: WriteInstructionToLcd(0x01);
	mov	dpl,#0x01
	ljmp	_WriteInstructionToLcd
;------------------------------------------------------------
;Allocation info for local variables in function 'SetCursorPos'
;------------------------------------------------------------
;pos                       Allocated to registers r2 
;------------------------------------------------------------
;	LcdDisplay.c:173: void SetCursorPos(unsigned char pos)
;	-----------------------------------------
;	 function SetCursorPos
;	-----------------------------------------
_SetCursorPos:
	mov	r2,dpl
;	LcdDisplay.c:175: WriteInstructionToLcd(pos | 0x80);			// Set DD-RAM Address Command  
	mov	a,#0x80
	orl	a,r2
	mov	dpl,a
	ljmp	_WriteInstructionToLcd
;------------------------------------------------------------
;Allocation info for local variables in function 'DirectWriteToDisplay'
;------------------------------------------------------------
;contents                  Allocated to registers 
;row                       Allocated with name '_DirectWriteToDisplay_row_1_1'
;col                       Allocated to registers r5 r6 
;p                         Allocated to registers r2 r3 r4 
;sloc0                     Allocated with name '_DirectWriteToDisplay_sloc0_1_0'
;------------------------------------------------------------
;	LcdDisplay.c:283: void DirectWriteToDisplay(unsigned char* contents)
;	-----------------------------------------
;	 function DirectWriteToDisplay
;	-----------------------------------------
_DirectWriteToDisplay:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	LcdDisplay.c:291: for (row = 0; row < ROW_COUNT; ++row)
	clr	a
	mov	_DirectWriteToDisplay_row_1_1,a
	mov	(_DirectWriteToDisplay_row_1_1 + 1),a
00108$:
	clr	c
	mov	a,_DirectWriteToDisplay_row_1_1
	subb	a,#0x02
	mov	a,(_DirectWriteToDisplay_row_1_1 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00121$
	ret
00121$:
;	LcdDisplay.c:293: SetCursorPos(rowStartAddresses[row]);
	mov	a,_DirectWriteToDisplay_row_1_1
	add	a,_DirectWriteToDisplay_row_1_1
	mov	r7,a
	mov	a,(_DirectWriteToDisplay_row_1_1 + 1)
	rlc	a
	mov	r0,a
	mov	a,r7
	add	a,#_rowStartAddresses
	mov	dpl,a
	mov	a,r0
	addc	a,#(_rowStartAddresses >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dpl,r7
	push	ar2
	push	ar3
	push	ar4
	lcall	_SetCursorPos
	pop	ar4
	pop	ar3
	pop	ar2
;	LcdDisplay.c:294: for (col = 0; col < COL_COUNT; ++col)
	mov	ar7,r2
	mov	ar0,r3
	mov	ar1,r4
	mov	r5,#0x00
	mov	r6,#0x00
00104$:
	clr	c
	mov	a,r5
	subb	a,#0x10
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00119$
;	LcdDisplay.c:296: if (*p != 0)
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	_DirectWriteToDisplay_sloc0_1_0,a
	jz	00102$
;	LcdDisplay.c:298: WriteDataToLcd(*p);
	mov	dpl,_DirectWriteToDisplay_sloc0_1_0
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_WriteDataToLcd
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
;	LcdDisplay.c:299: ++p;
	inc	r7
	cjne	r7,#0x00,00106$
	inc	r0
	sjmp	00106$
00102$:
;	LcdDisplay.c:303: WriteDataToLcd(' ');
	mov	dpl,#0x20
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_WriteDataToLcd
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
00106$:
;	LcdDisplay.c:294: for (col = 0; col < COL_COUNT; ++col)
	inc	r5
	cjne	r5,#0x00,00104$
	inc	r6
	sjmp	00104$
00119$:
	mov	ar2,r7
	mov	ar3,r0
	mov	ar4,r1
;	LcdDisplay.c:291: for (row = 0; row < ROW_COUNT; ++row)
	inc	_DirectWriteToDisplay_row_1_1
	clr	a
	cjne	a,_DirectWriteToDisplay_row_1_1,00126$
	inc	(_DirectWriteToDisplay_row_1_1 + 1)
00126$:
	ljmp	00108$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_rowStartAddresses:
	.byte #0x00,#0x00	;  0
	.byte #0x40,#0x00	;  64
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
