;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (MINGW64)
;--------------------------------------------------------
	.module I2C
	
	.optsdcc -mmcs51 --model-large
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SendAddressWithDirection
	.globl _RecvByte
	.globl _SendByte
	.globl _ReadAckNack
	.globl _SendStop
	.globl _SendStart
	.globl _Delay
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
	.globl _I2C_RecvData_PARM_3
	.globl _I2C_RecvData_PARM_2
	.globl _I2C_SendData_PARM_3
	.globl _I2C_SendData_PARM_2
	.globl _SendAddressWithDirection_PARM_2
	.globl _I2C_Initialise
	.globl _I2C_SendData
	.globl _I2C_RecvData
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
_I2C_RecvData_sloc0_1_0:
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
_ReadAckNack_ack_10000_24:
	.ds 1
_SendByte_byteValue_10000_27:
	.ds 1
_RecvByte_ack_10000_33:
	.ds 1
_RecvByte_byteValue_10000_34:
	.ds 1
_SendAddressWithDirection_PARM_2:
	.ds 1
_SendAddressWithDirection_slaveAddress_10000_39:
	.ds 1
_I2C_SendData_PARM_2:
	.ds 3
_I2C_SendData_PARM_3:
	.ds 2
_I2C_SendData_slaveAddress_10000_41:
	.ds 1
_I2C_RecvData_PARM_2:
	.ds 3
_I2C_RecvData_PARM_3:
	.ds 2
_I2C_RecvData_slaveAddress_10000_47:
	.ds 1
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
;Allocation info for local variables in function 'I2C_Initialise'
;------------------------------------------------------------
;	I2C.c:10: void I2C_Initialise()
;	-----------------------------------------
;	 function I2C_Initialise
;	-----------------------------------------
_I2C_Initialise:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	I2C.c:12: SDA = 1;
;	assignBit
	setb	_P3_6
;	I2C.c:13: SCL = 1;
;	assignBit
	setb	_P3_7
;	I2C.c:14: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay'
;------------------------------------------------------------
;i             Allocated with name '_Delay_i_10000_19'
;------------------------------------------------------------
;	I2C.c:16: void Delay()
;	-----------------------------------------
;	 function Delay
;	-----------------------------------------
_Delay:
;	I2C.c:19: for (i = 0; i < 10; ++i)
	mov	r6,#0x0a
	mov	r7,#0x00
00104$:
	dec	r6
	cjne	r6,#0xff,00115$
	dec	r7
00115$:
	mov	a,r6
	orl	a,r7
	jnz	00104$
;	I2C.c:23: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendStart'
;------------------------------------------------------------
;	I2C.c:25: void SendStart()
;	-----------------------------------------
;	 function SendStart
;	-----------------------------------------
_SendStart:
;	I2C.c:28: SCL = 1;
;	assignBit
	setb	_P3_7
;	I2C.c:29: Delay();
	lcall	_Delay
;	I2C.c:32: SDA = 0;
;	assignBit
	clr	_P3_6
;	I2C.c:33: Delay();
	lcall	_Delay
;	I2C.c:36: SCL = 0;
;	assignBit
	clr	_P3_7
;	I2C.c:37: Delay();
;	I2C.c:40: }
	ljmp	_Delay
;------------------------------------------------------------
;Allocation info for local variables in function 'SendStop'
;------------------------------------------------------------
;	I2C.c:43: void SendStop()
;	-----------------------------------------
;	 function SendStop
;	-----------------------------------------
_SendStop:
;	I2C.c:46: SDA = 0;
;	assignBit
	clr	_P3_6
;	I2C.c:48: SCL = 1;
;	assignBit
	setb	_P3_7
;	I2C.c:49: Delay();
	lcall	_Delay
;	I2C.c:52: SDA = 1;
;	assignBit
	setb	_P3_6
;	I2C.c:53: Delay();
;	I2C.c:56: }
	ljmp	_Delay
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadAckNack'
;------------------------------------------------------------
;ack           Allocated with name '_ReadAckNack_ack_10000_24'
;------------------------------------------------------------
;	I2C.c:61: unsigned char ReadAckNack()
;	-----------------------------------------
;	 function ReadAckNack
;	-----------------------------------------
_ReadAckNack:
;	I2C.c:67: SDA = 1;
;	assignBit
	setb	_P3_6
;	I2C.c:70: SCL = 1;
;	assignBit
	setb	_P3_7
;	I2C.c:71: Delay();
	lcall	_Delay
;	I2C.c:75: if (SDA)
	jnb	_P3_6,00102$
;	I2C.c:77: ack = 0;
	mov	dptr,#_ReadAckNack_ack_10000_24
	clr	a
	movx	@dptr,a
	sjmp	00103$
00102$:
;	I2C.c:81: ack = 1;
	mov	dptr,#_ReadAckNack_ack_10000_24
	mov	a,#0x01
	movx	@dptr,a
00103$:
;	I2C.c:86: SCL = 0;
;	assignBit
	clr	_P3_7
;	I2C.c:87: Delay();
	lcall	_Delay
;	I2C.c:90: SDA = 0;
;	assignBit
	clr	_P3_6
;	I2C.c:92: return ack;
	mov	dptr,#_ReadAckNack_ack_10000_24
	movx	a,@dptr
;	I2C.c:93: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendByte'
;------------------------------------------------------------
;byteValue     Allocated with name '_SendByte_byteValue_10000_27'
;ack           Allocated with name '_SendByte_ack_10000_28'
;i             Allocated with name '_SendByte_i_10000_28'
;------------------------------------------------------------
;	I2C.c:97: unsigned char SendByte(unsigned char byteValue)
;	-----------------------------------------
;	 function SendByte
;	-----------------------------------------
_SendByte:
	mov	a,dpl
	mov	dptr,#_SendByte_byteValue_10000_27
	movx	@dptr,a
;	I2C.c:102: for (i = 0; i < 8; ++i)
	mov	r7,#0x00
00105$:
;	I2C.c:105: if (byteValue & 0x80)
	mov	dptr,#_SendByte_byteValue_10000_27
	movx	a,@dptr
	jnb	acc.7,00102$
;	I2C.c:107: SDA = 1;
;	assignBit
	setb	_P3_6
	sjmp	00103$
00102$:
;	I2C.c:111: SDA = 0;
;	assignBit
	clr	_P3_6
00103$:
;	I2C.c:113: Delay();
	push	ar7
	lcall	_Delay
;	I2C.c:115: SCL = 1;
;	assignBit
	setb	_P3_7
;	I2C.c:116: Delay();
	lcall	_Delay
;	I2C.c:120: SCL = 0;
;	assignBit
	clr	_P3_7
;	I2C.c:121: Delay();
	lcall	_Delay
;	I2C.c:124: SDA = 0;
;	assignBit
	clr	_P3_6
;	I2C.c:125: Delay();
	lcall	_Delay
	pop	ar7
;	I2C.c:127: byteValue <<= 1;
	mov	dptr,#_SendByte_byteValue_10000_27
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
;	I2C.c:102: for (i = 0; i < 8; ++i)
	inc	r7
	cjne	r7,#0x08,00129$
00129$:
	jc	00105$
;	I2C.c:130: ack = ReadAckNack();
;	I2C.c:132: return ack;
;	I2C.c:133: }
	ljmp	_ReadAckNack
;------------------------------------------------------------
;Allocation info for local variables in function 'RecvByte'
;------------------------------------------------------------
;ack           Allocated with name '_RecvByte_ack_10000_33'
;byteValue     Allocated with name '_RecvByte_byteValue_10000_34'
;bitValue      Allocated with name '_RecvByte_bitValue_10000_34'
;i             Allocated with name '_RecvByte_i_10000_34'
;------------------------------------------------------------
;	I2C.c:136: unsigned char RecvByte(unsigned char ack)
;	-----------------------------------------
;	 function RecvByte
;	-----------------------------------------
_RecvByte:
	mov	a,dpl
	mov	dptr,#_RecvByte_ack_10000_33
	movx	@dptr,a
;	I2C.c:142: byteValue = 0;
	mov	dptr,#_RecvByte_byteValue_10000_34
	clr	a
	movx	@dptr,a
;	I2C.c:144: for (i = 0; i < 8; ++i)
	mov	r7,a
00105$:
;	I2C.c:146: byteValue <<= 1;
	mov	dptr,#_RecvByte_byteValue_10000_34
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
;	I2C.c:148: SDA = 1; // SDA up so we can read it back from the device.
;	assignBit
	setb	_P3_6
;	I2C.c:150: SCL = 0;
;	assignBit
	clr	_P3_7
;	I2C.c:151: Delay();
	push	ar7
	lcall	_Delay
;	I2C.c:154: SCL = 1;
;	assignBit
	setb	_P3_7
;	I2C.c:155: Delay();
	lcall	_Delay
;	I2C.c:157: bitValue = SDA;
	mov	c,_P3_6
	clr	a
	rlc	a
	mov	r6,a
;	I2C.c:158: Delay();
	push	ar6
	lcall	_Delay
;	I2C.c:160: SCL = 0;
;	assignBit
	clr	_P3_7
;	I2C.c:161: Delay();
	lcall	_Delay
	pop	ar6
	pop	ar7
;	I2C.c:163: byteValue |= bitValue;
	mov	dptr,#_RecvByte_byteValue_10000_34
	movx	a,@dptr
	orl	a,r6
	movx	@dptr,a
;	I2C.c:144: for (i = 0; i < 8; ++i)
	inc	r7
	cjne	r7,#0x08,00128$
00128$:
	jc	00105$
;	I2C.c:167: if (ack)
	mov	dptr,#_RecvByte_ack_10000_33
	movx	a,@dptr
	jz	00103$
;	I2C.c:169: SDA = 0;
;	assignBit
	clr	_P3_6
	sjmp	00104$
00103$:
;	I2C.c:173: SDA = 1;
;	assignBit
	setb	_P3_6
00104$:
;	I2C.c:176: Delay();
	lcall	_Delay
;	I2C.c:178: SCL = 1;
;	assignBit
	setb	_P3_7
;	I2C.c:179: Delay();
	lcall	_Delay
;	I2C.c:181: SCL = 0;
;	assignBit
	clr	_P3_7
;	I2C.c:182: Delay();
	lcall	_Delay
;	I2C.c:184: return byteValue;
	mov	dptr,#_RecvByte_byteValue_10000_34
	movx	a,@dptr
;	I2C.c:185: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendAddressWithDirection'
;------------------------------------------------------------
;readFlag      Allocated with name '_SendAddressWithDirection_PARM_2'
;slaveAddress  Allocated with name '_SendAddressWithDirection_slaveAddress_10000_39'
;ack           Allocated with name '_SendAddressWithDirection_ack_10000_40'
;------------------------------------------------------------
;	I2C.c:190: unsigned char SendAddressWithDirection(unsigned char slaveAddress, unsigned char readFlag)
;	-----------------------------------------
;	 function SendAddressWithDirection
;	-----------------------------------------
_SendAddressWithDirection:
	mov	a,dpl
	mov	dptr,#_SendAddressWithDirection_slaveAddress_10000_39
	movx	@dptr,a
;	I2C.c:195: slaveAddress <<= 1;
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
;	I2C.c:196: slaveAddress |= readFlag & 0x01;
	mov	dptr,#_SendAddressWithDirection_PARM_2
	movx	a,@dptr
	anl	a,#0x01
	mov	r7,a
	mov	dptr,#_SendAddressWithDirection_slaveAddress_10000_39
	movx	a,@dptr
	orl	a,r7
	movx	@dptr,a
;	I2C.c:198: ack = SendByte(slaveAddress);
	movx	a,@dptr
	mov	dpl,a
;	I2C.c:199: return ack;
;	I2C.c:200: }
	ljmp	_SendByte
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_SendData'
;------------------------------------------------------------
;byte          Allocated with name '_I2C_SendData_PARM_2'
;dataLen       Allocated with name '_I2C_SendData_PARM_3'
;slaveAddress  Allocated with name '_I2C_SendData_slaveAddress_10000_41'
;i             Allocated with name '_I2C_SendData_i_10000_42'
;ack           Allocated with name '_I2C_SendData_ack_10000_42'
;------------------------------------------------------------
;	I2C.c:205: unsigned char I2C_SendData(unsigned char slaveAddress, unsigned char *byte, int dataLen)
;	-----------------------------------------
;	 function I2C_SendData
;	-----------------------------------------
_I2C_SendData:
	mov	a,dpl
	mov	dptr,#_I2C_SendData_slaveAddress_10000_41
	movx	@dptr,a
;	I2C.c:210: SendStart();
	lcall	_SendStart
;	I2C.c:212: ack = SendAddressWithDirection(slaveAddress, 0);
	mov	dptr,#_I2C_SendData_slaveAddress_10000_41
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_SendAddressWithDirection_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl, r7
	lcall	_SendAddressWithDirection
	mov	a, dpl
;	I2C.c:213: if (!ack)
	jnz	00114$
;	I2C.c:215: SendStop();
	lcall	_SendStop
;	I2C.c:216: return 0;
	mov	dpl, #0x00
;	I2C.c:219: for (i = 0; i < dataLen; ++i)
	ret
00114$:
	mov	dptr,#_I2C_SendData_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_I2C_SendData_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r1,#0x00
	mov	r2,#0x00
00107$:
	clr	c
	mov	a,r1
	subb	a,r6
	mov	a,r2
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	I2C.c:221: ack = SendByte(*byte);
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_SendByte
	mov	a, dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	I2C.c:222: if (!ack)
	jnz	00104$
;	I2C.c:224: SendStop();
	lcall	_SendStop
;	I2C.c:225: return 0;
	mov	dpl, #0x00
	ret
00104$:
;	I2C.c:227: ++byte;
	inc	r3
	cjne	r3,#0x00,00138$
	inc	r4
00138$:
;	I2C.c:219: for (i = 0; i < dataLen; ++i)
	inc	r1
	cjne	r1,#0x00,00107$
	inc	r2
	sjmp	00107$
00105$:
;	I2C.c:230: SendStop();
	lcall	_SendStop
;	I2C.c:231: return 1;
	mov	dpl, #0x01
;	I2C.c:232: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_RecvData'
;------------------------------------------------------------
;sloc0         Allocated with name '_I2C_RecvData_sloc0_1_0'
;pbyte         Allocated with name '_I2C_RecvData_PARM_2'
;dataLen       Allocated with name '_I2C_RecvData_PARM_3'
;slaveAddress  Allocated with name '_I2C_RecvData_slaveAddress_10000_47'
;i             Allocated with name '_I2C_RecvData_i_10000_48'
;ack           Allocated with name '_I2C_RecvData_ack_10000_48'
;------------------------------------------------------------
;	I2C.c:236: unsigned char I2C_RecvData(unsigned char slaveAddress, unsigned char *pbyte, int dataLen)
;	-----------------------------------------
;	 function I2C_RecvData
;	-----------------------------------------
_I2C_RecvData:
	mov	a,dpl
	mov	dptr,#_I2C_RecvData_slaveAddress_10000_47
	movx	@dptr,a
;	I2C.c:241: SendStart();
	lcall	_SendStart
;	I2C.c:243: ack = SendAddressWithDirection(slaveAddress, 1);
	mov	dptr,#_I2C_RecvData_slaveAddress_10000_47
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_SendAddressWithDirection_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl, r7
	lcall	_SendAddressWithDirection
	mov	a, dpl
;	I2C.c:244: if (!ack)
	jnz	00111$
;	I2C.c:246: SendStop();
	lcall	_SendStop
;	I2C.c:247: return 0;
	mov	dpl, #0x00
;	I2C.c:250: for (i = 0; i < dataLen; ++i)
	ret
00111$:
	mov	dptr,#_I2C_RecvData_PARM_3
	movx	a,@dptr
	mov	_I2C_RecvData_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_I2C_RecvData_sloc0_1_0 + 1),a
	mov	dptr,#_I2C_RecvData_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r1,#0x00
	mov	r2,#0x00
00105$:
	clr	c
	mov	a,r1
	subb	a,_I2C_RecvData_sloc0_1_0
	mov	a,r2
	xrl	a,#0x80
	mov	b,(_I2C_RecvData_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	I2C.c:253: ack = (i < dataLen - 1);
	mov	a,_I2C_RecvData_sloc0_1_0
	add	a,#0xff
	mov	r0,a
	mov	a,(_I2C_RecvData_sloc0_1_0 + 1)
	addc	a,#0xff
	mov	r7,a
	clr	c
	mov	a,r1
	subb	a,r0
	mov	a,r2
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
;	I2C.c:254: *pbyte = RecvByte(ack);
	mov	dpl,a
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_RecvByte
	mov	r7, dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
;	I2C.c:255: ++pbyte;
;	I2C.c:250: for (i = 0; i < dataLen; ++i)
	inc	r1
	cjne	r1,#0x00,00105$
	inc	r2
	sjmp	00105$
00103$:
;	I2C.c:258: SendStop();
	lcall	_SendStop
;	I2C.c:259: return 1;
	mov	dpl, #0x01
;	I2C.c:260: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
