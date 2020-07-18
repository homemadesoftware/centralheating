                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module I2C
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _SendAddressWithDirection
                                     12 	.globl _RecvByte
                                     13 	.globl _SendByte
                                     14 	.globl _ReadAckNack
                                     15 	.globl _SendStop
                                     16 	.globl _SendStart
                                     17 	.globl _Delay
                                     18 	.globl _P5_7
                                     19 	.globl _P5_6
                                     20 	.globl _P5_5
                                     21 	.globl _P5_4
                                     22 	.globl _P5_3
                                     23 	.globl _P5_2
                                     24 	.globl _P5_1
                                     25 	.globl _P5_0
                                     26 	.globl _P4_7
                                     27 	.globl _P4_6
                                     28 	.globl _P4_5
                                     29 	.globl _P4_4
                                     30 	.globl _P4_3
                                     31 	.globl _P4_2
                                     32 	.globl _P4_1
                                     33 	.globl _P4_0
                                     34 	.globl _PX0L
                                     35 	.globl _PT0L
                                     36 	.globl _PX1L
                                     37 	.globl _PT1L
                                     38 	.globl _PSL
                                     39 	.globl _PT2L
                                     40 	.globl _PPCL
                                     41 	.globl _EC
                                     42 	.globl _CCF0
                                     43 	.globl _CCF1
                                     44 	.globl _CCF2
                                     45 	.globl _CCF3
                                     46 	.globl _CCF4
                                     47 	.globl _CR
                                     48 	.globl _CF
                                     49 	.globl _TF2
                                     50 	.globl _EXF2
                                     51 	.globl _RCLK
                                     52 	.globl _TCLK
                                     53 	.globl _EXEN2
                                     54 	.globl _TR2
                                     55 	.globl _C_T2
                                     56 	.globl _CP_RL2
                                     57 	.globl _T2CON_7
                                     58 	.globl _T2CON_6
                                     59 	.globl _T2CON_5
                                     60 	.globl _T2CON_4
                                     61 	.globl _T2CON_3
                                     62 	.globl _T2CON_2
                                     63 	.globl _T2CON_1
                                     64 	.globl _T2CON_0
                                     65 	.globl _PT2
                                     66 	.globl _ET2
                                     67 	.globl _CY
                                     68 	.globl _AC
                                     69 	.globl _F0
                                     70 	.globl _RS1
                                     71 	.globl _RS0
                                     72 	.globl _OV
                                     73 	.globl _F1
                                     74 	.globl _P
                                     75 	.globl _PS
                                     76 	.globl _PT1
                                     77 	.globl _PX1
                                     78 	.globl _PT0
                                     79 	.globl _PX0
                                     80 	.globl _RD
                                     81 	.globl _WR
                                     82 	.globl _T1
                                     83 	.globl _T0
                                     84 	.globl _INT1
                                     85 	.globl _INT0
                                     86 	.globl _TXD
                                     87 	.globl _RXD
                                     88 	.globl _P3_7
                                     89 	.globl _P3_6
                                     90 	.globl _P3_5
                                     91 	.globl _P3_4
                                     92 	.globl _P3_3
                                     93 	.globl _P3_2
                                     94 	.globl _P3_1
                                     95 	.globl _P3_0
                                     96 	.globl _EA
                                     97 	.globl _ES
                                     98 	.globl _ET1
                                     99 	.globl _EX1
                                    100 	.globl _ET0
                                    101 	.globl _EX0
                                    102 	.globl _P2_7
                                    103 	.globl _P2_6
                                    104 	.globl _P2_5
                                    105 	.globl _P2_4
                                    106 	.globl _P2_3
                                    107 	.globl _P2_2
                                    108 	.globl _P2_1
                                    109 	.globl _P2_0
                                    110 	.globl _SM0
                                    111 	.globl _SM1
                                    112 	.globl _SM2
                                    113 	.globl _REN
                                    114 	.globl _TB8
                                    115 	.globl _RB8
                                    116 	.globl _TI
                                    117 	.globl _RI
                                    118 	.globl _P1_7
                                    119 	.globl _P1_6
                                    120 	.globl _P1_5
                                    121 	.globl _P1_4
                                    122 	.globl _P1_3
                                    123 	.globl _P1_2
                                    124 	.globl _P1_1
                                    125 	.globl _P1_0
                                    126 	.globl _TF1
                                    127 	.globl _TR1
                                    128 	.globl _TF0
                                    129 	.globl _TR0
                                    130 	.globl _IE1
                                    131 	.globl _IT1
                                    132 	.globl _IE0
                                    133 	.globl _IT0
                                    134 	.globl _P0_7
                                    135 	.globl _P0_6
                                    136 	.globl _P0_5
                                    137 	.globl _P0_4
                                    138 	.globl _P0_3
                                    139 	.globl _P0_2
                                    140 	.globl _P0_1
                                    141 	.globl _P0_0
                                    142 	.globl _EECON
                                    143 	.globl _KBF
                                    144 	.globl _KBE
                                    145 	.globl _KBLS
                                    146 	.globl _BRL
                                    147 	.globl _BDRCON
                                    148 	.globl _T2MOD
                                    149 	.globl _SPDAT
                                    150 	.globl _SPSTA
                                    151 	.globl _SPCON
                                    152 	.globl _SADEN
                                    153 	.globl _SADDR
                                    154 	.globl _WDTPRG
                                    155 	.globl _WDTRST
                                    156 	.globl _P5
                                    157 	.globl _P4
                                    158 	.globl _IPH1
                                    159 	.globl _IPL1
                                    160 	.globl _IPH0
                                    161 	.globl _IPL0
                                    162 	.globl _IEN1
                                    163 	.globl _IEN0
                                    164 	.globl _CMOD
                                    165 	.globl _CL
                                    166 	.globl _CH
                                    167 	.globl _CCON
                                    168 	.globl _CCAPM4
                                    169 	.globl _CCAPM3
                                    170 	.globl _CCAPM2
                                    171 	.globl _CCAPM1
                                    172 	.globl _CCAPM0
                                    173 	.globl _CCAP4L
                                    174 	.globl _CCAP3L
                                    175 	.globl _CCAP2L
                                    176 	.globl _CCAP1L
                                    177 	.globl _CCAP0L
                                    178 	.globl _CCAP4H
                                    179 	.globl _CCAP3H
                                    180 	.globl _CCAP2H
                                    181 	.globl _CCAP1H
                                    182 	.globl _CCAP0H
                                    183 	.globl _CKCON1
                                    184 	.globl _CKCON0
                                    185 	.globl _CKRL
                                    186 	.globl _AUXR1
                                    187 	.globl _AUXR
                                    188 	.globl _TH2
                                    189 	.globl _TL2
                                    190 	.globl _RCAP2H
                                    191 	.globl _RCAP2L
                                    192 	.globl _T2CON
                                    193 	.globl _B
                                    194 	.globl _ACC
                                    195 	.globl _PSW
                                    196 	.globl _IP
                                    197 	.globl _P3
                                    198 	.globl _IE
                                    199 	.globl _P2
                                    200 	.globl _SBUF
                                    201 	.globl _SCON
                                    202 	.globl _P1
                                    203 	.globl _TH1
                                    204 	.globl _TH0
                                    205 	.globl _TL1
                                    206 	.globl _TL0
                                    207 	.globl _TMOD
                                    208 	.globl _TCON
                                    209 	.globl _PCON
                                    210 	.globl _DPH
                                    211 	.globl _DPL
                                    212 	.globl _SP
                                    213 	.globl _P0
                                    214 	.globl _I2C_RecvData_PARM_3
                                    215 	.globl _I2C_RecvData_PARM_2
                                    216 	.globl _I2C_SendData_PARM_3
                                    217 	.globl _I2C_SendData_PARM_2
                                    218 	.globl _SendAddressWithDirection_PARM_2
                                    219 	.globl _I2C_Initialise
                                    220 	.globl _I2C_SendData
                                    221 	.globl _I2C_RecvData
                                    222 ;--------------------------------------------------------
                                    223 ; special function registers
                                    224 ;--------------------------------------------------------
                                    225 	.area RSEG    (ABS,DATA)
      000000                        226 	.org 0x0000
                           000080   227 _P0	=	0x0080
                           000081   228 _SP	=	0x0081
                           000082   229 _DPL	=	0x0082
                           000083   230 _DPH	=	0x0083
                           000087   231 _PCON	=	0x0087
                           000088   232 _TCON	=	0x0088
                           000089   233 _TMOD	=	0x0089
                           00008A   234 _TL0	=	0x008a
                           00008B   235 _TL1	=	0x008b
                           00008C   236 _TH0	=	0x008c
                           00008D   237 _TH1	=	0x008d
                           000090   238 _P1	=	0x0090
                           000098   239 _SCON	=	0x0098
                           000099   240 _SBUF	=	0x0099
                           0000A0   241 _P2	=	0x00a0
                           0000A8   242 _IE	=	0x00a8
                           0000B0   243 _P3	=	0x00b0
                           0000B8   244 _IP	=	0x00b8
                           0000D0   245 _PSW	=	0x00d0
                           0000E0   246 _ACC	=	0x00e0
                           0000F0   247 _B	=	0x00f0
                           0000C8   248 _T2CON	=	0x00c8
                           0000CA   249 _RCAP2L	=	0x00ca
                           0000CB   250 _RCAP2H	=	0x00cb
                           0000CC   251 _TL2	=	0x00cc
                           0000CD   252 _TH2	=	0x00cd
                           00008E   253 _AUXR	=	0x008e
                           0000A2   254 _AUXR1	=	0x00a2
                           000097   255 _CKRL	=	0x0097
                           00008F   256 _CKCON0	=	0x008f
                           0000AF   257 _CKCON1	=	0x00af
                           0000FA   258 _CCAP0H	=	0x00fa
                           0000FB   259 _CCAP1H	=	0x00fb
                           0000FC   260 _CCAP2H	=	0x00fc
                           0000FD   261 _CCAP3H	=	0x00fd
                           0000FE   262 _CCAP4H	=	0x00fe
                           0000EA   263 _CCAP0L	=	0x00ea
                           0000EB   264 _CCAP1L	=	0x00eb
                           0000EC   265 _CCAP2L	=	0x00ec
                           0000ED   266 _CCAP3L	=	0x00ed
                           0000EE   267 _CCAP4L	=	0x00ee
                           0000DA   268 _CCAPM0	=	0x00da
                           0000DB   269 _CCAPM1	=	0x00db
                           0000DC   270 _CCAPM2	=	0x00dc
                           0000DD   271 _CCAPM3	=	0x00dd
                           0000DE   272 _CCAPM4	=	0x00de
                           0000D8   273 _CCON	=	0x00d8
                           0000F9   274 _CH	=	0x00f9
                           0000E9   275 _CL	=	0x00e9
                           0000D9   276 _CMOD	=	0x00d9
                           0000A8   277 _IEN0	=	0x00a8
                           0000B1   278 _IEN1	=	0x00b1
                           0000B8   279 _IPL0	=	0x00b8
                           0000B7   280 _IPH0	=	0x00b7
                           0000B2   281 _IPL1	=	0x00b2
                           0000B3   282 _IPH1	=	0x00b3
                           0000C0   283 _P4	=	0x00c0
                           0000E8   284 _P5	=	0x00e8
                           0000A6   285 _WDTRST	=	0x00a6
                           0000A7   286 _WDTPRG	=	0x00a7
                           0000A9   287 _SADDR	=	0x00a9
                           0000B9   288 _SADEN	=	0x00b9
                           0000C3   289 _SPCON	=	0x00c3
                           0000C4   290 _SPSTA	=	0x00c4
                           0000C5   291 _SPDAT	=	0x00c5
                           0000C9   292 _T2MOD	=	0x00c9
                           00009B   293 _BDRCON	=	0x009b
                           00009A   294 _BRL	=	0x009a
                           00009C   295 _KBLS	=	0x009c
                           00009D   296 _KBE	=	0x009d
                           00009E   297 _KBF	=	0x009e
                           0000D2   298 _EECON	=	0x00d2
                                    299 ;--------------------------------------------------------
                                    300 ; special function bits
                                    301 ;--------------------------------------------------------
                                    302 	.area RSEG    (ABS,DATA)
      000000                        303 	.org 0x0000
                           000080   304 _P0_0	=	0x0080
                           000081   305 _P0_1	=	0x0081
                           000082   306 _P0_2	=	0x0082
                           000083   307 _P0_3	=	0x0083
                           000084   308 _P0_4	=	0x0084
                           000085   309 _P0_5	=	0x0085
                           000086   310 _P0_6	=	0x0086
                           000087   311 _P0_7	=	0x0087
                           000088   312 _IT0	=	0x0088
                           000089   313 _IE0	=	0x0089
                           00008A   314 _IT1	=	0x008a
                           00008B   315 _IE1	=	0x008b
                           00008C   316 _TR0	=	0x008c
                           00008D   317 _TF0	=	0x008d
                           00008E   318 _TR1	=	0x008e
                           00008F   319 _TF1	=	0x008f
                           000090   320 _P1_0	=	0x0090
                           000091   321 _P1_1	=	0x0091
                           000092   322 _P1_2	=	0x0092
                           000093   323 _P1_3	=	0x0093
                           000094   324 _P1_4	=	0x0094
                           000095   325 _P1_5	=	0x0095
                           000096   326 _P1_6	=	0x0096
                           000097   327 _P1_7	=	0x0097
                           000098   328 _RI	=	0x0098
                           000099   329 _TI	=	0x0099
                           00009A   330 _RB8	=	0x009a
                           00009B   331 _TB8	=	0x009b
                           00009C   332 _REN	=	0x009c
                           00009D   333 _SM2	=	0x009d
                           00009E   334 _SM1	=	0x009e
                           00009F   335 _SM0	=	0x009f
                           0000A0   336 _P2_0	=	0x00a0
                           0000A1   337 _P2_1	=	0x00a1
                           0000A2   338 _P2_2	=	0x00a2
                           0000A3   339 _P2_3	=	0x00a3
                           0000A4   340 _P2_4	=	0x00a4
                           0000A5   341 _P2_5	=	0x00a5
                           0000A6   342 _P2_6	=	0x00a6
                           0000A7   343 _P2_7	=	0x00a7
                           0000A8   344 _EX0	=	0x00a8
                           0000A9   345 _ET0	=	0x00a9
                           0000AA   346 _EX1	=	0x00aa
                           0000AB   347 _ET1	=	0x00ab
                           0000AC   348 _ES	=	0x00ac
                           0000AF   349 _EA	=	0x00af
                           0000B0   350 _P3_0	=	0x00b0
                           0000B1   351 _P3_1	=	0x00b1
                           0000B2   352 _P3_2	=	0x00b2
                           0000B3   353 _P3_3	=	0x00b3
                           0000B4   354 _P3_4	=	0x00b4
                           0000B5   355 _P3_5	=	0x00b5
                           0000B6   356 _P3_6	=	0x00b6
                           0000B7   357 _P3_7	=	0x00b7
                           0000B0   358 _RXD	=	0x00b0
                           0000B1   359 _TXD	=	0x00b1
                           0000B2   360 _INT0	=	0x00b2
                           0000B3   361 _INT1	=	0x00b3
                           0000B4   362 _T0	=	0x00b4
                           0000B5   363 _T1	=	0x00b5
                           0000B6   364 _WR	=	0x00b6
                           0000B7   365 _RD	=	0x00b7
                           0000B8   366 _PX0	=	0x00b8
                           0000B9   367 _PT0	=	0x00b9
                           0000BA   368 _PX1	=	0x00ba
                           0000BB   369 _PT1	=	0x00bb
                           0000BC   370 _PS	=	0x00bc
                           0000D0   371 _P	=	0x00d0
                           0000D1   372 _F1	=	0x00d1
                           0000D2   373 _OV	=	0x00d2
                           0000D3   374 _RS0	=	0x00d3
                           0000D4   375 _RS1	=	0x00d4
                           0000D5   376 _F0	=	0x00d5
                           0000D6   377 _AC	=	0x00d6
                           0000D7   378 _CY	=	0x00d7
                           0000AD   379 _ET2	=	0x00ad
                           0000BD   380 _PT2	=	0x00bd
                           0000C8   381 _T2CON_0	=	0x00c8
                           0000C9   382 _T2CON_1	=	0x00c9
                           0000CA   383 _T2CON_2	=	0x00ca
                           0000CB   384 _T2CON_3	=	0x00cb
                           0000CC   385 _T2CON_4	=	0x00cc
                           0000CD   386 _T2CON_5	=	0x00cd
                           0000CE   387 _T2CON_6	=	0x00ce
                           0000CF   388 _T2CON_7	=	0x00cf
                           0000C8   389 _CP_RL2	=	0x00c8
                           0000C9   390 _C_T2	=	0x00c9
                           0000CA   391 _TR2	=	0x00ca
                           0000CB   392 _EXEN2	=	0x00cb
                           0000CC   393 _TCLK	=	0x00cc
                           0000CD   394 _RCLK	=	0x00cd
                           0000CE   395 _EXF2	=	0x00ce
                           0000CF   396 _TF2	=	0x00cf
                           0000DF   397 _CF	=	0x00df
                           0000DE   398 _CR	=	0x00de
                           0000DC   399 _CCF4	=	0x00dc
                           0000DB   400 _CCF3	=	0x00db
                           0000DA   401 _CCF2	=	0x00da
                           0000D9   402 _CCF1	=	0x00d9
                           0000D8   403 _CCF0	=	0x00d8
                           0000AE   404 _EC	=	0x00ae
                           0000BE   405 _PPCL	=	0x00be
                           0000BD   406 _PT2L	=	0x00bd
                           0000BC   407 _PSL	=	0x00bc
                           0000BB   408 _PT1L	=	0x00bb
                           0000BA   409 _PX1L	=	0x00ba
                           0000B9   410 _PT0L	=	0x00b9
                           0000B8   411 _PX0L	=	0x00b8
                           0000C0   412 _P4_0	=	0x00c0
                           0000C1   413 _P4_1	=	0x00c1
                           0000C2   414 _P4_2	=	0x00c2
                           0000C3   415 _P4_3	=	0x00c3
                           0000C4   416 _P4_4	=	0x00c4
                           0000C5   417 _P4_5	=	0x00c5
                           0000C6   418 _P4_6	=	0x00c6
                           0000C7   419 _P4_7	=	0x00c7
                           0000E8   420 _P5_0	=	0x00e8
                           0000E9   421 _P5_1	=	0x00e9
                           0000EA   422 _P5_2	=	0x00ea
                           0000EB   423 _P5_3	=	0x00eb
                           0000EC   424 _P5_4	=	0x00ec
                           0000ED   425 _P5_5	=	0x00ed
                           0000EE   426 _P5_6	=	0x00ee
                           0000EF   427 _P5_7	=	0x00ef
                                    428 ;--------------------------------------------------------
                                    429 ; overlayable register banks
                                    430 ;--------------------------------------------------------
                                    431 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        432 	.ds 8
                                    433 ;--------------------------------------------------------
                                    434 ; internal ram data
                                    435 ;--------------------------------------------------------
                                    436 	.area DSEG    (DATA)
      000028                        437 _I2C_RecvData_sloc0_1_0:
      000028                        438 	.ds 2
                                    439 ;--------------------------------------------------------
                                    440 ; overlayable items in internal ram 
                                    441 ;--------------------------------------------------------
                                    442 ;--------------------------------------------------------
                                    443 ; indirectly addressable internal ram data
                                    444 ;--------------------------------------------------------
                                    445 	.area ISEG    (DATA)
                                    446 ;--------------------------------------------------------
                                    447 ; absolute internal ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area IABS    (ABS,DATA)
                                    450 	.area IABS    (ABS,DATA)
                                    451 ;--------------------------------------------------------
                                    452 ; bit data
                                    453 ;--------------------------------------------------------
                                    454 	.area BSEG    (BIT)
                                    455 ;--------------------------------------------------------
                                    456 ; paged external ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area PSEG    (PAG,XDATA)
                                    459 ;--------------------------------------------------------
                                    460 ; external ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area XSEG    (XDATA)
      00024E                        463 _ReadAckNack_ack_65536_24:
      00024E                        464 	.ds 1
      00024F                        465 _SendByte_byteValue_65536_27:
      00024F                        466 	.ds 1
      000250                        467 _RecvByte_ack_65536_33:
      000250                        468 	.ds 1
      000251                        469 _RecvByte_byteValue_65536_34:
      000251                        470 	.ds 1
      000252                        471 _SendAddressWithDirection_PARM_2:
      000252                        472 	.ds 1
      000253                        473 _SendAddressWithDirection_slaveAddress_65536_39:
      000253                        474 	.ds 1
      000254                        475 _I2C_SendData_PARM_2:
      000254                        476 	.ds 3
      000257                        477 _I2C_SendData_PARM_3:
      000257                        478 	.ds 2
      000259                        479 _I2C_SendData_slaveAddress_65536_41:
      000259                        480 	.ds 1
      00025A                        481 _I2C_RecvData_PARM_2:
      00025A                        482 	.ds 3
      00025D                        483 _I2C_RecvData_PARM_3:
      00025D                        484 	.ds 2
      00025F                        485 _I2C_RecvData_slaveAddress_65536_47:
      00025F                        486 	.ds 1
                                    487 ;--------------------------------------------------------
                                    488 ; absolute external ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area XABS    (ABS,XDATA)
                                    491 ;--------------------------------------------------------
                                    492 ; external initialized ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area XISEG   (XDATA)
                                    495 	.area HOME    (CODE)
                                    496 	.area GSINIT0 (CODE)
                                    497 	.area GSINIT1 (CODE)
                                    498 	.area GSINIT2 (CODE)
                                    499 	.area GSINIT3 (CODE)
                                    500 	.area GSINIT4 (CODE)
                                    501 	.area GSINIT5 (CODE)
                                    502 	.area GSINIT  (CODE)
                                    503 	.area GSFINAL (CODE)
                                    504 	.area CSEG    (CODE)
                                    505 ;--------------------------------------------------------
                                    506 ; global & static initialisations
                                    507 ;--------------------------------------------------------
                                    508 	.area HOME    (CODE)
                                    509 	.area GSINIT  (CODE)
                                    510 	.area GSFINAL (CODE)
                                    511 	.area GSINIT  (CODE)
                                    512 ;--------------------------------------------------------
                                    513 ; Home
                                    514 ;--------------------------------------------------------
                                    515 	.area HOME    (CODE)
                                    516 	.area HOME    (CODE)
                                    517 ;--------------------------------------------------------
                                    518 ; code
                                    519 ;--------------------------------------------------------
                                    520 	.area CSEG    (CODE)
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function 'I2C_Initialise'
                                    523 ;------------------------------------------------------------
                                    524 ;	I2C.c:10: void I2C_Initialise()
                                    525 ;	-----------------------------------------
                                    526 ;	 function I2C_Initialise
                                    527 ;	-----------------------------------------
      002808                        528 _I2C_Initialise:
                           000007   529 	ar7 = 0x07
                           000006   530 	ar6 = 0x06
                           000005   531 	ar5 = 0x05
                           000004   532 	ar4 = 0x04
                           000003   533 	ar3 = 0x03
                           000002   534 	ar2 = 0x02
                           000001   535 	ar1 = 0x01
                           000000   536 	ar0 = 0x00
                                    537 ;	I2C.c:12: SDA = 1;
                                    538 ;	assignBit
      002808 D2 B6            [12]  539 	setb	_P3_6
                                    540 ;	I2C.c:13: SCL = 1;
                                    541 ;	assignBit
      00280A D2 B7            [12]  542 	setb	_P3_7
                                    543 ;	I2C.c:14: }
      00280C 22               [24]  544 	ret
                                    545 ;------------------------------------------------------------
                                    546 ;Allocation info for local variables in function 'Delay'
                                    547 ;------------------------------------------------------------
                                    548 ;i                         Allocated with name '_Delay_i_65536_19'
                                    549 ;------------------------------------------------------------
                                    550 ;	I2C.c:16: void Delay()
                                    551 ;	-----------------------------------------
                                    552 ;	 function Delay
                                    553 ;	-----------------------------------------
      00280D                        554 _Delay:
                                    555 ;	I2C.c:19: for (i = 0; i < 10; ++i)
      00280D 7E 0A            [12]  556 	mov	r6,#0x0a
      00280F 7F 00            [12]  557 	mov	r7,#0x00
      002811                        558 00104$:
      002811 1E               [12]  559 	dec	r6
      002812 BE FF 01         [24]  560 	cjne	r6,#0xff,00113$
      002815 1F               [12]  561 	dec	r7
      002816                        562 00113$:
      002816 EE               [12]  563 	mov	a,r6
      002817 4F               [12]  564 	orl	a,r7
      002818 70 F7            [24]  565 	jnz	00104$
                                    566 ;	I2C.c:23: }
      00281A 22               [24]  567 	ret
                                    568 ;------------------------------------------------------------
                                    569 ;Allocation info for local variables in function 'SendStart'
                                    570 ;------------------------------------------------------------
                                    571 ;	I2C.c:25: void SendStart()
                                    572 ;	-----------------------------------------
                                    573 ;	 function SendStart
                                    574 ;	-----------------------------------------
      00281B                        575 _SendStart:
                                    576 ;	I2C.c:28: SCL = 1;
                                    577 ;	assignBit
      00281B D2 B7            [12]  578 	setb	_P3_7
                                    579 ;	I2C.c:29: Delay();
      00281D 12 28 0D         [24]  580 	lcall	_Delay
                                    581 ;	I2C.c:32: SDA = 0;
                                    582 ;	assignBit
      002820 C2 B6            [12]  583 	clr	_P3_6
                                    584 ;	I2C.c:33: Delay();
      002822 12 28 0D         [24]  585 	lcall	_Delay
                                    586 ;	I2C.c:36: SCL = 0;
                                    587 ;	assignBit
      002825 C2 B7            [12]  588 	clr	_P3_7
                                    589 ;	I2C.c:37: Delay();
                                    590 ;	I2C.c:40: }
      002827 02 28 0D         [24]  591 	ljmp	_Delay
                                    592 ;------------------------------------------------------------
                                    593 ;Allocation info for local variables in function 'SendStop'
                                    594 ;------------------------------------------------------------
                                    595 ;	I2C.c:43: void SendStop()
                                    596 ;	-----------------------------------------
                                    597 ;	 function SendStop
                                    598 ;	-----------------------------------------
      00282A                        599 _SendStop:
                                    600 ;	I2C.c:46: SDA = 0;
                                    601 ;	assignBit
      00282A C2 B6            [12]  602 	clr	_P3_6
                                    603 ;	I2C.c:48: SCL = 1;
                                    604 ;	assignBit
      00282C D2 B7            [12]  605 	setb	_P3_7
                                    606 ;	I2C.c:49: Delay();
      00282E 12 28 0D         [24]  607 	lcall	_Delay
                                    608 ;	I2C.c:52: SDA = 1;
                                    609 ;	assignBit
      002831 D2 B6            [12]  610 	setb	_P3_6
                                    611 ;	I2C.c:53: Delay();
                                    612 ;	I2C.c:56: }
      002833 02 28 0D         [24]  613 	ljmp	_Delay
                                    614 ;------------------------------------------------------------
                                    615 ;Allocation info for local variables in function 'ReadAckNack'
                                    616 ;------------------------------------------------------------
                                    617 ;ack                       Allocated with name '_ReadAckNack_ack_65536_24'
                                    618 ;------------------------------------------------------------
                                    619 ;	I2C.c:61: unsigned char ReadAckNack()
                                    620 ;	-----------------------------------------
                                    621 ;	 function ReadAckNack
                                    622 ;	-----------------------------------------
      002836                        623 _ReadAckNack:
                                    624 ;	I2C.c:67: SDA = 1;
                                    625 ;	assignBit
      002836 D2 B6            [12]  626 	setb	_P3_6
                                    627 ;	I2C.c:70: SCL = 1;
                                    628 ;	assignBit
      002838 D2 B7            [12]  629 	setb	_P3_7
                                    630 ;	I2C.c:71: Delay();
      00283A 12 28 0D         [24]  631 	lcall	_Delay
                                    632 ;	I2C.c:75: if (SDA)
      00283D 30 B6 07         [24]  633 	jnb	_P3_6,00102$
                                    634 ;	I2C.c:77: ack = 0;
      002840 90 02 4E         [24]  635 	mov	dptr,#_ReadAckNack_ack_65536_24
      002843 E4               [12]  636 	clr	a
      002844 F0               [24]  637 	movx	@dptr,a
      002845 80 06            [24]  638 	sjmp	00103$
      002847                        639 00102$:
                                    640 ;	I2C.c:81: ack = 1;
      002847 90 02 4E         [24]  641 	mov	dptr,#_ReadAckNack_ack_65536_24
      00284A 74 01            [12]  642 	mov	a,#0x01
      00284C F0               [24]  643 	movx	@dptr,a
      00284D                        644 00103$:
                                    645 ;	I2C.c:86: SCL = 0;
                                    646 ;	assignBit
      00284D C2 B7            [12]  647 	clr	_P3_7
                                    648 ;	I2C.c:87: Delay();
      00284F 12 28 0D         [24]  649 	lcall	_Delay
                                    650 ;	I2C.c:90: SDA = 0;
                                    651 ;	assignBit
      002852 C2 B6            [12]  652 	clr	_P3_6
                                    653 ;	I2C.c:92: return ack;
      002854 90 02 4E         [24]  654 	mov	dptr,#_ReadAckNack_ack_65536_24
      002857 E0               [24]  655 	movx	a,@dptr
                                    656 ;	I2C.c:93: }
      002858 F5 82            [12]  657 	mov	dpl,a
      00285A 22               [24]  658 	ret
                                    659 ;------------------------------------------------------------
                                    660 ;Allocation info for local variables in function 'SendByte'
                                    661 ;------------------------------------------------------------
                                    662 ;byteValue                 Allocated with name '_SendByte_byteValue_65536_27'
                                    663 ;ack                       Allocated with name '_SendByte_ack_65536_28'
                                    664 ;i                         Allocated with name '_SendByte_i_65536_28'
                                    665 ;------------------------------------------------------------
                                    666 ;	I2C.c:97: unsigned char SendByte(unsigned char byteValue)
                                    667 ;	-----------------------------------------
                                    668 ;	 function SendByte
                                    669 ;	-----------------------------------------
      00285B                        670 _SendByte:
      00285B E5 82            [12]  671 	mov	a,dpl
      00285D 90 02 4F         [24]  672 	mov	dptr,#_SendByte_byteValue_65536_27
      002860 F0               [24]  673 	movx	@dptr,a
                                    674 ;	I2C.c:102: for (i = 0; i < 8; ++i)
      002861 7E 00            [12]  675 	mov	r6,#0x00
      002863 7F 00            [12]  676 	mov	r7,#0x00
      002865                        677 00105$:
                                    678 ;	I2C.c:105: if (byteValue & 0x80)
      002865 90 02 4F         [24]  679 	mov	dptr,#_SendByte_byteValue_65536_27
      002868 E0               [24]  680 	movx	a,@dptr
      002869 30 E7 04         [24]  681 	jnb	acc.7,00102$
                                    682 ;	I2C.c:107: SDA = 1;
                                    683 ;	assignBit
      00286C D2 B6            [12]  684 	setb	_P3_6
      00286E 80 02            [24]  685 	sjmp	00103$
      002870                        686 00102$:
                                    687 ;	I2C.c:111: SDA = 0;
                                    688 ;	assignBit
      002870 C2 B6            [12]  689 	clr	_P3_6
      002872                        690 00103$:
                                    691 ;	I2C.c:113: Delay();
      002872 C0 07            [24]  692 	push	ar7
      002874 C0 06            [24]  693 	push	ar6
      002876 12 28 0D         [24]  694 	lcall	_Delay
                                    695 ;	I2C.c:115: SCL = 1;
                                    696 ;	assignBit
      002879 D2 B7            [12]  697 	setb	_P3_7
                                    698 ;	I2C.c:116: Delay();
      00287B 12 28 0D         [24]  699 	lcall	_Delay
                                    700 ;	I2C.c:120: SCL = 0;
                                    701 ;	assignBit
      00287E C2 B7            [12]  702 	clr	_P3_7
                                    703 ;	I2C.c:121: Delay();
      002880 12 28 0D         [24]  704 	lcall	_Delay
                                    705 ;	I2C.c:124: SDA = 0;
                                    706 ;	assignBit
      002883 C2 B6            [12]  707 	clr	_P3_6
                                    708 ;	I2C.c:125: Delay();
      002885 12 28 0D         [24]  709 	lcall	_Delay
      002888 D0 06            [24]  710 	pop	ar6
      00288A D0 07            [24]  711 	pop	ar7
                                    712 ;	I2C.c:127: byteValue <<= 1;
      00288C 90 02 4F         [24]  713 	mov	dptr,#_SendByte_byteValue_65536_27
      00288F E0               [24]  714 	movx	a,@dptr
      002890 25 E0            [12]  715 	add	a,acc
      002892 F0               [24]  716 	movx	@dptr,a
                                    717 ;	I2C.c:102: for (i = 0; i < 8; ++i)
      002893 0E               [12]  718 	inc	r6
      002894 BE 00 01         [24]  719 	cjne	r6,#0x00,00123$
      002897 0F               [12]  720 	inc	r7
      002898                        721 00123$:
      002898 C3               [12]  722 	clr	c
      002899 EE               [12]  723 	mov	a,r6
      00289A 94 08            [12]  724 	subb	a,#0x08
      00289C EF               [12]  725 	mov	a,r7
      00289D 64 80            [12]  726 	xrl	a,#0x80
      00289F 94 80            [12]  727 	subb	a,#0x80
      0028A1 40 C2            [24]  728 	jc	00105$
                                    729 ;	I2C.c:130: ack = ReadAckNack();
                                    730 ;	I2C.c:132: return ack;
                                    731 ;	I2C.c:133: }
      0028A3 02 28 36         [24]  732 	ljmp	_ReadAckNack
                                    733 ;------------------------------------------------------------
                                    734 ;Allocation info for local variables in function 'RecvByte'
                                    735 ;------------------------------------------------------------
                                    736 ;ack                       Allocated with name '_RecvByte_ack_65536_33'
                                    737 ;byteValue                 Allocated with name '_RecvByte_byteValue_65536_34'
                                    738 ;bitValue                  Allocated with name '_RecvByte_bitValue_65536_34'
                                    739 ;i                         Allocated with name '_RecvByte_i_65536_34'
                                    740 ;------------------------------------------------------------
                                    741 ;	I2C.c:136: unsigned char RecvByte(unsigned char ack)
                                    742 ;	-----------------------------------------
                                    743 ;	 function RecvByte
                                    744 ;	-----------------------------------------
      0028A6                        745 _RecvByte:
      0028A6 E5 82            [12]  746 	mov	a,dpl
      0028A8 90 02 50         [24]  747 	mov	dptr,#_RecvByte_ack_65536_33
      0028AB F0               [24]  748 	movx	@dptr,a
                                    749 ;	I2C.c:142: byteValue = 0;
      0028AC 90 02 51         [24]  750 	mov	dptr,#_RecvByte_byteValue_65536_34
      0028AF E4               [12]  751 	clr	a
      0028B0 F0               [24]  752 	movx	@dptr,a
                                    753 ;	I2C.c:144: for (i = 0; i < 8; ++i)
      0028B1 7E 00            [12]  754 	mov	r6,#0x00
      0028B3 7F 00            [12]  755 	mov	r7,#0x00
      0028B5                        756 00105$:
                                    757 ;	I2C.c:146: byteValue <<= 1;
      0028B5 90 02 51         [24]  758 	mov	dptr,#_RecvByte_byteValue_65536_34
      0028B8 E0               [24]  759 	movx	a,@dptr
      0028B9 25 E0            [12]  760 	add	a,acc
      0028BB F0               [24]  761 	movx	@dptr,a
                                    762 ;	I2C.c:148: SDA = 1; // SDA up so we can read it back from the device.
                                    763 ;	assignBit
      0028BC D2 B6            [12]  764 	setb	_P3_6
                                    765 ;	I2C.c:150: SCL = 0;
                                    766 ;	assignBit
      0028BE C2 B7            [12]  767 	clr	_P3_7
                                    768 ;	I2C.c:151: Delay();
      0028C0 C0 07            [24]  769 	push	ar7
      0028C2 C0 06            [24]  770 	push	ar6
      0028C4 12 28 0D         [24]  771 	lcall	_Delay
                                    772 ;	I2C.c:154: SCL = 1;
                                    773 ;	assignBit
      0028C7 D2 B7            [12]  774 	setb	_P3_7
                                    775 ;	I2C.c:155: Delay();
      0028C9 12 28 0D         [24]  776 	lcall	_Delay
                                    777 ;	I2C.c:157: bitValue = SDA;
      0028CC A2 B6            [12]  778 	mov	c,_P3_6
      0028CE E4               [12]  779 	clr	a
      0028CF 33               [12]  780 	rlc	a
      0028D0 FD               [12]  781 	mov	r5,a
                                    782 ;	I2C.c:158: Delay();
      0028D1 C0 05            [24]  783 	push	ar5
      0028D3 12 28 0D         [24]  784 	lcall	_Delay
                                    785 ;	I2C.c:160: SCL = 0;
                                    786 ;	assignBit
      0028D6 C2 B7            [12]  787 	clr	_P3_7
                                    788 ;	I2C.c:161: Delay();
      0028D8 12 28 0D         [24]  789 	lcall	_Delay
      0028DB D0 05            [24]  790 	pop	ar5
      0028DD D0 06            [24]  791 	pop	ar6
      0028DF D0 07            [24]  792 	pop	ar7
                                    793 ;	I2C.c:163: byteValue |= bitValue;
      0028E1 90 02 51         [24]  794 	mov	dptr,#_RecvByte_byteValue_65536_34
      0028E4 E0               [24]  795 	movx	a,@dptr
      0028E5 4D               [12]  796 	orl	a,r5
      0028E6 F0               [24]  797 	movx	@dptr,a
                                    798 ;	I2C.c:144: for (i = 0; i < 8; ++i)
      0028E7 0E               [12]  799 	inc	r6
      0028E8 BE 00 01         [24]  800 	cjne	r6,#0x00,00122$
      0028EB 0F               [12]  801 	inc	r7
      0028EC                        802 00122$:
      0028EC C3               [12]  803 	clr	c
      0028ED EE               [12]  804 	mov	a,r6
      0028EE 94 08            [12]  805 	subb	a,#0x08
      0028F0 EF               [12]  806 	mov	a,r7
      0028F1 64 80            [12]  807 	xrl	a,#0x80
      0028F3 94 80            [12]  808 	subb	a,#0x80
      0028F5 40 BE            [24]  809 	jc	00105$
                                    810 ;	I2C.c:167: if (ack)
      0028F7 90 02 50         [24]  811 	mov	dptr,#_RecvByte_ack_65536_33
      0028FA E0               [24]  812 	movx	a,@dptr
      0028FB 60 04            [24]  813 	jz	00103$
                                    814 ;	I2C.c:169: SDA = 0;
                                    815 ;	assignBit
      0028FD C2 B6            [12]  816 	clr	_P3_6
      0028FF 80 02            [24]  817 	sjmp	00104$
      002901                        818 00103$:
                                    819 ;	I2C.c:173: SDA = 1;
                                    820 ;	assignBit
      002901 D2 B6            [12]  821 	setb	_P3_6
      002903                        822 00104$:
                                    823 ;	I2C.c:176: Delay();
      002903 12 28 0D         [24]  824 	lcall	_Delay
                                    825 ;	I2C.c:178: SCL = 1;
                                    826 ;	assignBit
      002906 D2 B7            [12]  827 	setb	_P3_7
                                    828 ;	I2C.c:179: Delay();
      002908 12 28 0D         [24]  829 	lcall	_Delay
                                    830 ;	I2C.c:181: SCL = 0;
                                    831 ;	assignBit
      00290B C2 B7            [12]  832 	clr	_P3_7
                                    833 ;	I2C.c:182: Delay();
      00290D 12 28 0D         [24]  834 	lcall	_Delay
                                    835 ;	I2C.c:184: return byteValue;
      002910 90 02 51         [24]  836 	mov	dptr,#_RecvByte_byteValue_65536_34
      002913 E0               [24]  837 	movx	a,@dptr
                                    838 ;	I2C.c:185: }
      002914 F5 82            [12]  839 	mov	dpl,a
      002916 22               [24]  840 	ret
                                    841 ;------------------------------------------------------------
                                    842 ;Allocation info for local variables in function 'SendAddressWithDirection'
                                    843 ;------------------------------------------------------------
                                    844 ;readFlag                  Allocated with name '_SendAddressWithDirection_PARM_2'
                                    845 ;slaveAddress              Allocated with name '_SendAddressWithDirection_slaveAddress_65536_39'
                                    846 ;ack                       Allocated with name '_SendAddressWithDirection_ack_65536_40'
                                    847 ;------------------------------------------------------------
                                    848 ;	I2C.c:190: unsigned char SendAddressWithDirection(unsigned char slaveAddress, unsigned char readFlag)
                                    849 ;	-----------------------------------------
                                    850 ;	 function SendAddressWithDirection
                                    851 ;	-----------------------------------------
      002917                        852 _SendAddressWithDirection:
      002917 E5 82            [12]  853 	mov	a,dpl
      002919 90 02 53         [24]  854 	mov	dptr,#_SendAddressWithDirection_slaveAddress_65536_39
      00291C F0               [24]  855 	movx	@dptr,a
                                    856 ;	I2C.c:195: slaveAddress <<= 1;
      00291D E0               [24]  857 	movx	a,@dptr
      00291E 25 E0            [12]  858 	add	a,acc
      002920 F0               [24]  859 	movx	@dptr,a
                                    860 ;	I2C.c:196: slaveAddress |= readFlag & 0x01;
      002921 90 02 52         [24]  861 	mov	dptr,#_SendAddressWithDirection_PARM_2
      002924 E0               [24]  862 	movx	a,@dptr
      002925 54 01            [12]  863 	anl	a,#0x01
      002927 FF               [12]  864 	mov	r7,a
      002928 90 02 53         [24]  865 	mov	dptr,#_SendAddressWithDirection_slaveAddress_65536_39
      00292B E0               [24]  866 	movx	a,@dptr
      00292C 4F               [12]  867 	orl	a,r7
      00292D F0               [24]  868 	movx	@dptr,a
                                    869 ;	I2C.c:198: ack = SendByte(slaveAddress);
      00292E E0               [24]  870 	movx	a,@dptr
      00292F F5 82            [12]  871 	mov	dpl,a
                                    872 ;	I2C.c:199: return ack;
                                    873 ;	I2C.c:200: }
      002931 02 28 5B         [24]  874 	ljmp	_SendByte
                                    875 ;------------------------------------------------------------
                                    876 ;Allocation info for local variables in function 'I2C_SendData'
                                    877 ;------------------------------------------------------------
                                    878 ;byte                      Allocated with name '_I2C_SendData_PARM_2'
                                    879 ;dataLen                   Allocated with name '_I2C_SendData_PARM_3'
                                    880 ;slaveAddress              Allocated with name '_I2C_SendData_slaveAddress_65536_41'
                                    881 ;i                         Allocated with name '_I2C_SendData_i_65536_42'
                                    882 ;ack                       Allocated with name '_I2C_SendData_ack_65536_42'
                                    883 ;------------------------------------------------------------
                                    884 ;	I2C.c:205: unsigned char I2C_SendData(unsigned char slaveAddress, unsigned char *byte, int dataLen)
                                    885 ;	-----------------------------------------
                                    886 ;	 function I2C_SendData
                                    887 ;	-----------------------------------------
      002934                        888 _I2C_SendData:
      002934 E5 82            [12]  889 	mov	a,dpl
      002936 90 02 59         [24]  890 	mov	dptr,#_I2C_SendData_slaveAddress_65536_41
      002939 F0               [24]  891 	movx	@dptr,a
                                    892 ;	I2C.c:210: SendStart();
      00293A 12 28 1B         [24]  893 	lcall	_SendStart
                                    894 ;	I2C.c:212: ack = SendAddressWithDirection(slaveAddress, 0);
      00293D 90 02 59         [24]  895 	mov	dptr,#_I2C_SendData_slaveAddress_65536_41
      002940 E0               [24]  896 	movx	a,@dptr
      002941 FF               [12]  897 	mov	r7,a
      002942 90 02 52         [24]  898 	mov	dptr,#_SendAddressWithDirection_PARM_2
      002945 E4               [12]  899 	clr	a
      002946 F0               [24]  900 	movx	@dptr,a
      002947 8F 82            [24]  901 	mov	dpl,r7
      002949 12 29 17         [24]  902 	lcall	_SendAddressWithDirection
      00294C E5 82            [12]  903 	mov	a,dpl
                                    904 ;	I2C.c:213: if (!ack)
      00294E 70 07            [24]  905 	jnz	00114$
                                    906 ;	I2C.c:215: SendStop();
      002950 12 28 2A         [24]  907 	lcall	_SendStop
                                    908 ;	I2C.c:216: return 0;
      002953 75 82 00         [24]  909 	mov	dpl,#0x00
                                    910 ;	I2C.c:219: for (i = 0; i < dataLen; ++i)
      002956 22               [24]  911 	ret
      002957                        912 00114$:
      002957 90 02 57         [24]  913 	mov	dptr,#_I2C_SendData_PARM_3
      00295A E0               [24]  914 	movx	a,@dptr
      00295B FE               [12]  915 	mov	r6,a
      00295C A3               [24]  916 	inc	dptr
      00295D E0               [24]  917 	movx	a,@dptr
      00295E FF               [12]  918 	mov	r7,a
      00295F 90 02 54         [24]  919 	mov	dptr,#_I2C_SendData_PARM_2
      002962 E0               [24]  920 	movx	a,@dptr
      002963 FB               [12]  921 	mov	r3,a
      002964 A3               [24]  922 	inc	dptr
      002965 E0               [24]  923 	movx	a,@dptr
      002966 FC               [12]  924 	mov	r4,a
      002967 A3               [24]  925 	inc	dptr
      002968 E0               [24]  926 	movx	a,@dptr
      002969 FD               [12]  927 	mov	r5,a
      00296A 79 00            [12]  928 	mov	r1,#0x00
      00296C 7A 00            [12]  929 	mov	r2,#0x00
      00296E                        930 00107$:
      00296E C3               [12]  931 	clr	c
      00296F E9               [12]  932 	mov	a,r1
      002970 9E               [12]  933 	subb	a,r6
      002971 EA               [12]  934 	mov	a,r2
      002972 64 80            [12]  935 	xrl	a,#0x80
      002974 8F F0            [24]  936 	mov	b,r7
      002976 63 F0 80         [24]  937 	xrl	b,#0x80
      002979 95 F0            [12]  938 	subb	a,b
      00297B 50 41            [24]  939 	jnc	00105$
                                    940 ;	I2C.c:221: ack = SendByte(*byte);
      00297D 8B 82            [24]  941 	mov	dpl,r3
      00297F 8C 83            [24]  942 	mov	dph,r4
      002981 8D F0            [24]  943 	mov	b,r5
      002983 12 3D E8         [24]  944 	lcall	__gptrget
      002986 F5 82            [12]  945 	mov	dpl,a
      002988 C0 07            [24]  946 	push	ar7
      00298A C0 06            [24]  947 	push	ar6
      00298C C0 05            [24]  948 	push	ar5
      00298E C0 04            [24]  949 	push	ar4
      002990 C0 03            [24]  950 	push	ar3
      002992 C0 02            [24]  951 	push	ar2
      002994 C0 01            [24]  952 	push	ar1
      002996 12 28 5B         [24]  953 	lcall	_SendByte
      002999 E5 82            [12]  954 	mov	a,dpl
      00299B D0 01            [24]  955 	pop	ar1
      00299D D0 02            [24]  956 	pop	ar2
      00299F D0 03            [24]  957 	pop	ar3
      0029A1 D0 04            [24]  958 	pop	ar4
      0029A3 D0 05            [24]  959 	pop	ar5
      0029A5 D0 06            [24]  960 	pop	ar6
      0029A7 D0 07            [24]  961 	pop	ar7
                                    962 ;	I2C.c:222: if (!ack)
      0029A9 70 07            [24]  963 	jnz	00104$
                                    964 ;	I2C.c:224: SendStop();
      0029AB 12 28 2A         [24]  965 	lcall	_SendStop
                                    966 ;	I2C.c:225: return 0;
      0029AE 75 82 00         [24]  967 	mov	dpl,#0x00
      0029B1 22               [24]  968 	ret
      0029B2                        969 00104$:
                                    970 ;	I2C.c:227: ++byte;
      0029B2 0B               [12]  971 	inc	r3
      0029B3 BB 00 01         [24]  972 	cjne	r3,#0x00,00130$
      0029B6 0C               [12]  973 	inc	r4
      0029B7                        974 00130$:
                                    975 ;	I2C.c:219: for (i = 0; i < dataLen; ++i)
      0029B7 09               [12]  976 	inc	r1
      0029B8 B9 00 B3         [24]  977 	cjne	r1,#0x00,00107$
      0029BB 0A               [12]  978 	inc	r2
      0029BC 80 B0            [24]  979 	sjmp	00107$
      0029BE                        980 00105$:
                                    981 ;	I2C.c:230: SendStop();
      0029BE 12 28 2A         [24]  982 	lcall	_SendStop
                                    983 ;	I2C.c:231: return 1;
      0029C1 75 82 01         [24]  984 	mov	dpl,#0x01
                                    985 ;	I2C.c:232: }
      0029C4 22               [24]  986 	ret
                                    987 ;------------------------------------------------------------
                                    988 ;Allocation info for local variables in function 'I2C_RecvData'
                                    989 ;------------------------------------------------------------
                                    990 ;sloc0                     Allocated with name '_I2C_RecvData_sloc0_1_0'
                                    991 ;pbyte                     Allocated with name '_I2C_RecvData_PARM_2'
                                    992 ;dataLen                   Allocated with name '_I2C_RecvData_PARM_3'
                                    993 ;slaveAddress              Allocated with name '_I2C_RecvData_slaveAddress_65536_47'
                                    994 ;i                         Allocated with name '_I2C_RecvData_i_65536_48'
                                    995 ;ack                       Allocated with name '_I2C_RecvData_ack_65536_48'
                                    996 ;------------------------------------------------------------
                                    997 ;	I2C.c:236: unsigned char I2C_RecvData(unsigned char slaveAddress, unsigned char *pbyte, int dataLen)
                                    998 ;	-----------------------------------------
                                    999 ;	 function I2C_RecvData
                                   1000 ;	-----------------------------------------
      0029C5                       1001 _I2C_RecvData:
      0029C5 E5 82            [12] 1002 	mov	a,dpl
      0029C7 90 02 5F         [24] 1003 	mov	dptr,#_I2C_RecvData_slaveAddress_65536_47
      0029CA F0               [24] 1004 	movx	@dptr,a
                                   1005 ;	I2C.c:241: SendStart();
      0029CB 12 28 1B         [24] 1006 	lcall	_SendStart
                                   1007 ;	I2C.c:243: ack = SendAddressWithDirection(slaveAddress, 1);
      0029CE 90 02 5F         [24] 1008 	mov	dptr,#_I2C_RecvData_slaveAddress_65536_47
      0029D1 E0               [24] 1009 	movx	a,@dptr
      0029D2 FF               [12] 1010 	mov	r7,a
      0029D3 90 02 52         [24] 1011 	mov	dptr,#_SendAddressWithDirection_PARM_2
      0029D6 74 01            [12] 1012 	mov	a,#0x01
      0029D8 F0               [24] 1013 	movx	@dptr,a
      0029D9 8F 82            [24] 1014 	mov	dpl,r7
      0029DB 12 29 17         [24] 1015 	lcall	_SendAddressWithDirection
      0029DE E5 82            [12] 1016 	mov	a,dpl
                                   1017 ;	I2C.c:244: if (!ack)
      0029E0 70 07            [24] 1018 	jnz	00111$
                                   1019 ;	I2C.c:246: SendStop();
      0029E2 12 28 2A         [24] 1020 	lcall	_SendStop
                                   1021 ;	I2C.c:247: return 0;
      0029E5 75 82 00         [24] 1022 	mov	dpl,#0x00
                                   1023 ;	I2C.c:250: for (i = 0; i < dataLen; ++i)
      0029E8 22               [24] 1024 	ret
      0029E9                       1025 00111$:
      0029E9 90 02 5D         [24] 1026 	mov	dptr,#_I2C_RecvData_PARM_3
      0029EC E0               [24] 1027 	movx	a,@dptr
      0029ED F5 28            [12] 1028 	mov	_I2C_RecvData_sloc0_1_0,a
      0029EF A3               [24] 1029 	inc	dptr
      0029F0 E0               [24] 1030 	movx	a,@dptr
      0029F1 F5 29            [12] 1031 	mov	(_I2C_RecvData_sloc0_1_0 + 1),a
      0029F3 90 02 5A         [24] 1032 	mov	dptr,#_I2C_RecvData_PARM_2
      0029F6 E0               [24] 1033 	movx	a,@dptr
      0029F7 FB               [12] 1034 	mov	r3,a
      0029F8 A3               [24] 1035 	inc	dptr
      0029F9 E0               [24] 1036 	movx	a,@dptr
      0029FA FC               [12] 1037 	mov	r4,a
      0029FB A3               [24] 1038 	inc	dptr
      0029FC E0               [24] 1039 	movx	a,@dptr
      0029FD FD               [12] 1040 	mov	r5,a
      0029FE 79 00            [12] 1041 	mov	r1,#0x00
      002A00 7A 00            [12] 1042 	mov	r2,#0x00
      002A02                       1043 00105$:
      002A02 C3               [12] 1044 	clr	c
      002A03 E9               [12] 1045 	mov	a,r1
      002A04 95 28            [12] 1046 	subb	a,_I2C_RecvData_sloc0_1_0
      002A06 EA               [12] 1047 	mov	a,r2
      002A07 64 80            [12] 1048 	xrl	a,#0x80
      002A09 85 29 F0         [24] 1049 	mov	b,(_I2C_RecvData_sloc0_1_0 + 1)
      002A0C 63 F0 80         [24] 1050 	xrl	b,#0x80
      002A0F 95 F0            [12] 1051 	subb	a,b
      002A11 50 4A            [24] 1052 	jnc	00103$
                                   1053 ;	I2C.c:253: ack = (i < dataLen - 1);
      002A13 E5 28            [12] 1054 	mov	a,_I2C_RecvData_sloc0_1_0
      002A15 24 FF            [12] 1055 	add	a,#0xff
      002A17 F8               [12] 1056 	mov	r0,a
      002A18 E5 29            [12] 1057 	mov	a,(_I2C_RecvData_sloc0_1_0 + 1)
      002A1A 34 FF            [12] 1058 	addc	a,#0xff
      002A1C FF               [12] 1059 	mov	r7,a
      002A1D C3               [12] 1060 	clr	c
      002A1E E9               [12] 1061 	mov	a,r1
      002A1F 98               [12] 1062 	subb	a,r0
      002A20 EA               [12] 1063 	mov	a,r2
      002A21 64 80            [12] 1064 	xrl	a,#0x80
      002A23 8F F0            [24] 1065 	mov	b,r7
      002A25 63 F0 80         [24] 1066 	xrl	b,#0x80
      002A28 95 F0            [12] 1067 	subb	a,b
      002A2A E4               [12] 1068 	clr	a
      002A2B 33               [12] 1069 	rlc	a
                                   1070 ;	I2C.c:254: *pbyte = RecvByte(ack);
      002A2C F5 82            [12] 1071 	mov	dpl,a
      002A2E C0 05            [24] 1072 	push	ar5
      002A30 C0 04            [24] 1073 	push	ar4
      002A32 C0 03            [24] 1074 	push	ar3
      002A34 C0 02            [24] 1075 	push	ar2
      002A36 C0 01            [24] 1076 	push	ar1
      002A38 12 28 A6         [24] 1077 	lcall	_RecvByte
      002A3B AF 82            [24] 1078 	mov	r7,dpl
      002A3D D0 01            [24] 1079 	pop	ar1
      002A3F D0 02            [24] 1080 	pop	ar2
      002A41 D0 03            [24] 1081 	pop	ar3
      002A43 D0 04            [24] 1082 	pop	ar4
      002A45 D0 05            [24] 1083 	pop	ar5
      002A47 8B 82            [24] 1084 	mov	dpl,r3
      002A49 8C 83            [24] 1085 	mov	dph,r4
      002A4B 8D F0            [24] 1086 	mov	b,r5
      002A4D EF               [12] 1087 	mov	a,r7
      002A4E 12 3C 27         [24] 1088 	lcall	__gptrput
      002A51 A3               [24] 1089 	inc	dptr
      002A52 AB 82            [24] 1090 	mov	r3,dpl
      002A54 AC 83            [24] 1091 	mov	r4,dph
                                   1092 ;	I2C.c:255: ++pbyte;
                                   1093 ;	I2C.c:250: for (i = 0; i < dataLen; ++i)
      002A56 09               [12] 1094 	inc	r1
      002A57 B9 00 A8         [24] 1095 	cjne	r1,#0x00,00105$
      002A5A 0A               [12] 1096 	inc	r2
      002A5B 80 A5            [24] 1097 	sjmp	00105$
      002A5D                       1098 00103$:
                                   1099 ;	I2C.c:258: SendStop();
      002A5D 12 28 2A         [24] 1100 	lcall	_SendStop
                                   1101 ;	I2C.c:259: return 1;
      002A60 75 82 01         [24] 1102 	mov	dpl,#0x01
                                   1103 ;	I2C.c:260: }
      002A63 22               [24] 1104 	ret
                                   1105 	.area CSEG    (CODE)
                                   1106 	.area CONST   (CODE)
                                   1107 	.area XINIT   (CODE)
                                   1108 	.area CABS    (ABS,CODE)
