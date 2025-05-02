                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module CentralHeating
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _strcpy
                                     12 	.globl _strcat
                                     13 	.globl _BuildCentralHeatingMenuDefinitions
                                     14 	.globl _RenderMenuOnBuffer
                                     15 	.globl _MenuNavigation
                                     16 	.globl _InitialiseMenuController
                                     17 	.globl _CompareDateTime
                                     18 	.globl _AddSecondsToDateTime
                                     19 	.globl _FormatDate
                                     20 	.globl _FormatTime
                                     21 	.globl _GetNumDaysInMonth
                                     22 	.globl _P5_7
                                     23 	.globl _P5_6
                                     24 	.globl _P5_5
                                     25 	.globl _P5_4
                                     26 	.globl _P5_3
                                     27 	.globl _P5_2
                                     28 	.globl _P5_1
                                     29 	.globl _P5_0
                                     30 	.globl _P4_7
                                     31 	.globl _P4_6
                                     32 	.globl _P4_5
                                     33 	.globl _P4_4
                                     34 	.globl _P4_3
                                     35 	.globl _P4_2
                                     36 	.globl _P4_1
                                     37 	.globl _P4_0
                                     38 	.globl _PX0L
                                     39 	.globl _PT0L
                                     40 	.globl _PX1L
                                     41 	.globl _PT1L
                                     42 	.globl _PSL
                                     43 	.globl _PT2L
                                     44 	.globl _PPCL
                                     45 	.globl _EC
                                     46 	.globl _CCF0
                                     47 	.globl _CCF1
                                     48 	.globl _CCF2
                                     49 	.globl _CCF3
                                     50 	.globl _CCF4
                                     51 	.globl _CR
                                     52 	.globl _CF
                                     53 	.globl _TF2
                                     54 	.globl _EXF2
                                     55 	.globl _RCLK
                                     56 	.globl _TCLK
                                     57 	.globl _EXEN2
                                     58 	.globl _TR2
                                     59 	.globl _C_T2
                                     60 	.globl _CP_RL2
                                     61 	.globl _T2CON_7
                                     62 	.globl _T2CON_6
                                     63 	.globl _T2CON_5
                                     64 	.globl _T2CON_4
                                     65 	.globl _T2CON_3
                                     66 	.globl _T2CON_2
                                     67 	.globl _T2CON_1
                                     68 	.globl _T2CON_0
                                     69 	.globl _PT2
                                     70 	.globl _ET2
                                     71 	.globl _CY
                                     72 	.globl _AC
                                     73 	.globl _F0
                                     74 	.globl _RS1
                                     75 	.globl _RS0
                                     76 	.globl _OV
                                     77 	.globl _F1
                                     78 	.globl _P
                                     79 	.globl _PS
                                     80 	.globl _PT1
                                     81 	.globl _PX1
                                     82 	.globl _PT0
                                     83 	.globl _PX0
                                     84 	.globl _RD
                                     85 	.globl _WR
                                     86 	.globl _T1
                                     87 	.globl _T0
                                     88 	.globl _INT1
                                     89 	.globl _INT0
                                     90 	.globl _TXD
                                     91 	.globl _RXD
                                     92 	.globl _P3_7
                                     93 	.globl _P3_6
                                     94 	.globl _P3_5
                                     95 	.globl _P3_4
                                     96 	.globl _P3_3
                                     97 	.globl _P3_2
                                     98 	.globl _P3_1
                                     99 	.globl _P3_0
                                    100 	.globl _EA
                                    101 	.globl _ES
                                    102 	.globl _ET1
                                    103 	.globl _EX1
                                    104 	.globl _ET0
                                    105 	.globl _EX0
                                    106 	.globl _P2_7
                                    107 	.globl _P2_6
                                    108 	.globl _P2_5
                                    109 	.globl _P2_4
                                    110 	.globl _P2_3
                                    111 	.globl _P2_2
                                    112 	.globl _P2_1
                                    113 	.globl _P2_0
                                    114 	.globl _SM0
                                    115 	.globl _SM1
                                    116 	.globl _SM2
                                    117 	.globl _REN
                                    118 	.globl _TB8
                                    119 	.globl _RB8
                                    120 	.globl _TI
                                    121 	.globl _RI
                                    122 	.globl _P1_7
                                    123 	.globl _P1_6
                                    124 	.globl _P1_5
                                    125 	.globl _P1_4
                                    126 	.globl _P1_3
                                    127 	.globl _P1_2
                                    128 	.globl _P1_1
                                    129 	.globl _P1_0
                                    130 	.globl _TF1
                                    131 	.globl _TR1
                                    132 	.globl _TF0
                                    133 	.globl _TR0
                                    134 	.globl _IE1
                                    135 	.globl _IT1
                                    136 	.globl _IE0
                                    137 	.globl _IT0
                                    138 	.globl _P0_7
                                    139 	.globl _P0_6
                                    140 	.globl _P0_5
                                    141 	.globl _P0_4
                                    142 	.globl _P0_3
                                    143 	.globl _P0_2
                                    144 	.globl _P0_1
                                    145 	.globl _P0_0
                                    146 	.globl _EECON
                                    147 	.globl _KBF
                                    148 	.globl _KBE
                                    149 	.globl _KBLS
                                    150 	.globl _BRL
                                    151 	.globl _BDRCON
                                    152 	.globl _T2MOD
                                    153 	.globl _SPDAT
                                    154 	.globl _SPSTA
                                    155 	.globl _SPCON
                                    156 	.globl _SADEN
                                    157 	.globl _SADDR
                                    158 	.globl _WDTPRG
                                    159 	.globl _WDTRST
                                    160 	.globl _P5
                                    161 	.globl _P4
                                    162 	.globl _IPH1
                                    163 	.globl _IPL1
                                    164 	.globl _IPH0
                                    165 	.globl _IPL0
                                    166 	.globl _IEN1
                                    167 	.globl _IEN0
                                    168 	.globl _CMOD
                                    169 	.globl _CL
                                    170 	.globl _CH
                                    171 	.globl _CCON
                                    172 	.globl _CCAPM4
                                    173 	.globl _CCAPM3
                                    174 	.globl _CCAPM2
                                    175 	.globl _CCAPM1
                                    176 	.globl _CCAPM0
                                    177 	.globl _CCAP4L
                                    178 	.globl _CCAP3L
                                    179 	.globl _CCAP2L
                                    180 	.globl _CCAP1L
                                    181 	.globl _CCAP0L
                                    182 	.globl _CCAP4H
                                    183 	.globl _CCAP3H
                                    184 	.globl _CCAP2H
                                    185 	.globl _CCAP1H
                                    186 	.globl _CCAP0H
                                    187 	.globl _CKCON1
                                    188 	.globl _CKCON0
                                    189 	.globl _CKRL
                                    190 	.globl _AUXR1
                                    191 	.globl _AUXR
                                    192 	.globl _TH2
                                    193 	.globl _TL2
                                    194 	.globl _RCAP2H
                                    195 	.globl _RCAP2L
                                    196 	.globl _T2CON
                                    197 	.globl _B
                                    198 	.globl _ACC
                                    199 	.globl _PSW
                                    200 	.globl _IP
                                    201 	.globl _P3
                                    202 	.globl _IE
                                    203 	.globl _P2
                                    204 	.globl _SBUF
                                    205 	.globl _SCON
                                    206 	.globl _P1
                                    207 	.globl _TH1
                                    208 	.globl _TH0
                                    209 	.globl _TL1
                                    210 	.globl _TL0
                                    211 	.globl _TMOD
                                    212 	.globl _TCON
                                    213 	.globl _PCON
                                    214 	.globl _DPH
                                    215 	.globl _DPL
                                    216 	.globl _SP
                                    217 	.globl _P0
                                    218 	.globl _TestAndDisplay_PARM_2
                                    219 	.globl _HandleMenuCommand_PARM_2
                                    220 	.globl _PartialWriteToScreen_PARM_3
                                    221 	.globl _PartialWriteToScreen_PARM_2
                                    222 	.globl _provideHotwaterUntil
                                    223 	.globl _currentDateTime
                                    224 	.globl _hotWaterNeeded
                                    225 	.globl _animationType
                                    226 	.globl _lastOutputState
                                    227 	.globl _lastInputState
                                    228 	.globl _flashDateTime
                                    229 	.globl _currentScreen
                                    230 	.globl _lastKeys
                                    231 	.globl _screenBuffer
                                    232 	.globl _UserProgram
                                    233 	.globl _Callback
                                    234 	.globl _DisplayMenuOnHardware
                                    235 	.globl _PartialWriteToScreen
                                    236 	.globl _ClearTopLine
                                    237 	.globl _HandleMenuCommand
                                    238 	.globl _WriteCurrentTime
                                    239 	.globl _PreviewTimeAdjustment
                                    240 	.globl _PreviewDateAdjustment
                                    241 	.globl _TestAndDisplay
                                    242 	.globl _ProcessHeating
                                    243 	.globl _AnimateScreen
                                    244 ;--------------------------------------------------------
                                    245 ; special function registers
                                    246 ;--------------------------------------------------------
                                    247 	.area RSEG    (ABS,DATA)
      000000                        248 	.org 0x0000
                           000080   249 _P0	=	0x0080
                           000081   250 _SP	=	0x0081
                           000082   251 _DPL	=	0x0082
                           000083   252 _DPH	=	0x0083
                           000087   253 _PCON	=	0x0087
                           000088   254 _TCON	=	0x0088
                           000089   255 _TMOD	=	0x0089
                           00008A   256 _TL0	=	0x008a
                           00008B   257 _TL1	=	0x008b
                           00008C   258 _TH0	=	0x008c
                           00008D   259 _TH1	=	0x008d
                           000090   260 _P1	=	0x0090
                           000098   261 _SCON	=	0x0098
                           000099   262 _SBUF	=	0x0099
                           0000A0   263 _P2	=	0x00a0
                           0000A8   264 _IE	=	0x00a8
                           0000B0   265 _P3	=	0x00b0
                           0000B8   266 _IP	=	0x00b8
                           0000D0   267 _PSW	=	0x00d0
                           0000E0   268 _ACC	=	0x00e0
                           0000F0   269 _B	=	0x00f0
                           0000C8   270 _T2CON	=	0x00c8
                           0000CA   271 _RCAP2L	=	0x00ca
                           0000CB   272 _RCAP2H	=	0x00cb
                           0000CC   273 _TL2	=	0x00cc
                           0000CD   274 _TH2	=	0x00cd
                           00008E   275 _AUXR	=	0x008e
                           0000A2   276 _AUXR1	=	0x00a2
                           000097   277 _CKRL	=	0x0097
                           00008F   278 _CKCON0	=	0x008f
                           0000AF   279 _CKCON1	=	0x00af
                           0000FA   280 _CCAP0H	=	0x00fa
                           0000FB   281 _CCAP1H	=	0x00fb
                           0000FC   282 _CCAP2H	=	0x00fc
                           0000FD   283 _CCAP3H	=	0x00fd
                           0000FE   284 _CCAP4H	=	0x00fe
                           0000EA   285 _CCAP0L	=	0x00ea
                           0000EB   286 _CCAP1L	=	0x00eb
                           0000EC   287 _CCAP2L	=	0x00ec
                           0000ED   288 _CCAP3L	=	0x00ed
                           0000EE   289 _CCAP4L	=	0x00ee
                           0000DA   290 _CCAPM0	=	0x00da
                           0000DB   291 _CCAPM1	=	0x00db
                           0000DC   292 _CCAPM2	=	0x00dc
                           0000DD   293 _CCAPM3	=	0x00dd
                           0000DE   294 _CCAPM4	=	0x00de
                           0000D8   295 _CCON	=	0x00d8
                           0000F9   296 _CH	=	0x00f9
                           0000E9   297 _CL	=	0x00e9
                           0000D9   298 _CMOD	=	0x00d9
                           0000A8   299 _IEN0	=	0x00a8
                           0000B1   300 _IEN1	=	0x00b1
                           0000B8   301 _IPL0	=	0x00b8
                           0000B7   302 _IPH0	=	0x00b7
                           0000B2   303 _IPL1	=	0x00b2
                           0000B3   304 _IPH1	=	0x00b3
                           0000C0   305 _P4	=	0x00c0
                           0000E8   306 _P5	=	0x00e8
                           0000A6   307 _WDTRST	=	0x00a6
                           0000A7   308 _WDTPRG	=	0x00a7
                           0000A9   309 _SADDR	=	0x00a9
                           0000B9   310 _SADEN	=	0x00b9
                           0000C3   311 _SPCON	=	0x00c3
                           0000C4   312 _SPSTA	=	0x00c4
                           0000C5   313 _SPDAT	=	0x00c5
                           0000C9   314 _T2MOD	=	0x00c9
                           00009B   315 _BDRCON	=	0x009b
                           00009A   316 _BRL	=	0x009a
                           00009C   317 _KBLS	=	0x009c
                           00009D   318 _KBE	=	0x009d
                           00009E   319 _KBF	=	0x009e
                           0000D2   320 _EECON	=	0x00d2
                                    321 ;--------------------------------------------------------
                                    322 ; special function bits
                                    323 ;--------------------------------------------------------
                                    324 	.area RSEG    (ABS,DATA)
      000000                        325 	.org 0x0000
                           000080   326 _P0_0	=	0x0080
                           000081   327 _P0_1	=	0x0081
                           000082   328 _P0_2	=	0x0082
                           000083   329 _P0_3	=	0x0083
                           000084   330 _P0_4	=	0x0084
                           000085   331 _P0_5	=	0x0085
                           000086   332 _P0_6	=	0x0086
                           000087   333 _P0_7	=	0x0087
                           000088   334 _IT0	=	0x0088
                           000089   335 _IE0	=	0x0089
                           00008A   336 _IT1	=	0x008a
                           00008B   337 _IE1	=	0x008b
                           00008C   338 _TR0	=	0x008c
                           00008D   339 _TF0	=	0x008d
                           00008E   340 _TR1	=	0x008e
                           00008F   341 _TF1	=	0x008f
                           000090   342 _P1_0	=	0x0090
                           000091   343 _P1_1	=	0x0091
                           000092   344 _P1_2	=	0x0092
                           000093   345 _P1_3	=	0x0093
                           000094   346 _P1_4	=	0x0094
                           000095   347 _P1_5	=	0x0095
                           000096   348 _P1_6	=	0x0096
                           000097   349 _P1_7	=	0x0097
                           000098   350 _RI	=	0x0098
                           000099   351 _TI	=	0x0099
                           00009A   352 _RB8	=	0x009a
                           00009B   353 _TB8	=	0x009b
                           00009C   354 _REN	=	0x009c
                           00009D   355 _SM2	=	0x009d
                           00009E   356 _SM1	=	0x009e
                           00009F   357 _SM0	=	0x009f
                           0000A0   358 _P2_0	=	0x00a0
                           0000A1   359 _P2_1	=	0x00a1
                           0000A2   360 _P2_2	=	0x00a2
                           0000A3   361 _P2_3	=	0x00a3
                           0000A4   362 _P2_4	=	0x00a4
                           0000A5   363 _P2_5	=	0x00a5
                           0000A6   364 _P2_6	=	0x00a6
                           0000A7   365 _P2_7	=	0x00a7
                           0000A8   366 _EX0	=	0x00a8
                           0000A9   367 _ET0	=	0x00a9
                           0000AA   368 _EX1	=	0x00aa
                           0000AB   369 _ET1	=	0x00ab
                           0000AC   370 _ES	=	0x00ac
                           0000AF   371 _EA	=	0x00af
                           0000B0   372 _P3_0	=	0x00b0
                           0000B1   373 _P3_1	=	0x00b1
                           0000B2   374 _P3_2	=	0x00b2
                           0000B3   375 _P3_3	=	0x00b3
                           0000B4   376 _P3_4	=	0x00b4
                           0000B5   377 _P3_5	=	0x00b5
                           0000B6   378 _P3_6	=	0x00b6
                           0000B7   379 _P3_7	=	0x00b7
                           0000B0   380 _RXD	=	0x00b0
                           0000B1   381 _TXD	=	0x00b1
                           0000B2   382 _INT0	=	0x00b2
                           0000B3   383 _INT1	=	0x00b3
                           0000B4   384 _T0	=	0x00b4
                           0000B5   385 _T1	=	0x00b5
                           0000B6   386 _WR	=	0x00b6
                           0000B7   387 _RD	=	0x00b7
                           0000B8   388 _PX0	=	0x00b8
                           0000B9   389 _PT0	=	0x00b9
                           0000BA   390 _PX1	=	0x00ba
                           0000BB   391 _PT1	=	0x00bb
                           0000BC   392 _PS	=	0x00bc
                           0000D0   393 _P	=	0x00d0
                           0000D1   394 _F1	=	0x00d1
                           0000D2   395 _OV	=	0x00d2
                           0000D3   396 _RS0	=	0x00d3
                           0000D4   397 _RS1	=	0x00d4
                           0000D5   398 _F0	=	0x00d5
                           0000D6   399 _AC	=	0x00d6
                           0000D7   400 _CY	=	0x00d7
                           0000AD   401 _ET2	=	0x00ad
                           0000BD   402 _PT2	=	0x00bd
                           0000C8   403 _T2CON_0	=	0x00c8
                           0000C9   404 _T2CON_1	=	0x00c9
                           0000CA   405 _T2CON_2	=	0x00ca
                           0000CB   406 _T2CON_3	=	0x00cb
                           0000CC   407 _T2CON_4	=	0x00cc
                           0000CD   408 _T2CON_5	=	0x00cd
                           0000CE   409 _T2CON_6	=	0x00ce
                           0000CF   410 _T2CON_7	=	0x00cf
                           0000C8   411 _CP_RL2	=	0x00c8
                           0000C9   412 _C_T2	=	0x00c9
                           0000CA   413 _TR2	=	0x00ca
                           0000CB   414 _EXEN2	=	0x00cb
                           0000CC   415 _TCLK	=	0x00cc
                           0000CD   416 _RCLK	=	0x00cd
                           0000CE   417 _EXF2	=	0x00ce
                           0000CF   418 _TF2	=	0x00cf
                           0000DF   419 _CF	=	0x00df
                           0000DE   420 _CR	=	0x00de
                           0000DC   421 _CCF4	=	0x00dc
                           0000DB   422 _CCF3	=	0x00db
                           0000DA   423 _CCF2	=	0x00da
                           0000D9   424 _CCF1	=	0x00d9
                           0000D8   425 _CCF0	=	0x00d8
                           0000AE   426 _EC	=	0x00ae
                           0000BE   427 _PPCL	=	0x00be
                           0000BD   428 _PT2L	=	0x00bd
                           0000BC   429 _PSL	=	0x00bc
                           0000BB   430 _PT1L	=	0x00bb
                           0000BA   431 _PX1L	=	0x00ba
                           0000B9   432 _PT0L	=	0x00b9
                           0000B8   433 _PX0L	=	0x00b8
                           0000C0   434 _P4_0	=	0x00c0
                           0000C1   435 _P4_1	=	0x00c1
                           0000C2   436 _P4_2	=	0x00c2
                           0000C3   437 _P4_3	=	0x00c3
                           0000C4   438 _P4_4	=	0x00c4
                           0000C5   439 _P4_5	=	0x00c5
                           0000C6   440 _P4_6	=	0x00c6
                           0000C7   441 _P4_7	=	0x00c7
                           0000E8   442 _P5_0	=	0x00e8
                           0000E9   443 _P5_1	=	0x00e9
                           0000EA   444 _P5_2	=	0x00ea
                           0000EB   445 _P5_3	=	0x00eb
                           0000EC   446 _P5_4	=	0x00ec
                           0000ED   447 _P5_5	=	0x00ed
                           0000EE   448 _P5_6	=	0x00ee
                           0000EF   449 _P5_7	=	0x00ef
                                    450 ;--------------------------------------------------------
                                    451 ; overlayable register banks
                                    452 ;--------------------------------------------------------
                                    453 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        454 	.ds 8
                                    455 ;--------------------------------------------------------
                                    456 ; internal ram data
                                    457 ;--------------------------------------------------------
                                    458 	.area DSEG    (DATA)
                                    459 ;--------------------------------------------------------
                                    460 ; overlayable items in internal ram
                                    461 ;--------------------------------------------------------
                                    462 ;--------------------------------------------------------
                                    463 ; indirectly addressable internal ram data
                                    464 ;--------------------------------------------------------
                                    465 	.area ISEG    (DATA)
                                    466 ;--------------------------------------------------------
                                    467 ; absolute internal ram data
                                    468 ;--------------------------------------------------------
                                    469 	.area IABS    (ABS,DATA)
                                    470 	.area IABS    (ABS,DATA)
                                    471 ;--------------------------------------------------------
                                    472 ; bit data
                                    473 ;--------------------------------------------------------
                                    474 	.area BSEG    (BIT)
                                    475 ;--------------------------------------------------------
                                    476 ; paged external ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area PSEG    (PAG,XDATA)
                                    479 ;--------------------------------------------------------
                                    480 ; uninitialized external ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area XSEG    (XDATA)
      000198                        483 _screenBuffer::
      000198                        484 	.ds 33
      0001B9                        485 _lastKeys::
      0001B9                        486 	.ds 1
      0001BA                        487 _currentScreen::
      0001BA                        488 	.ds 1
      0001BB                        489 _flashDateTime::
      0001BB                        490 	.ds 1
      0001BC                        491 _lastInputState::
      0001BC                        492 	.ds 1
      0001BD                        493 _lastOutputState::
      0001BD                        494 	.ds 1
      0001BE                        495 _animationType::
      0001BE                        496 	.ds 1
      0001BF                        497 _hotWaterNeeded::
      0001BF                        498 	.ds 1
      0001C0                        499 _currentDateTime::
      0001C0                        500 	.ds 7
      0001C7                        501 _provideHotwaterUntil::
      0001C7                        502 	.ds 7
      0001CE                        503 _Callback_cookie_10000_31:
      0001CE                        504 	.ds 2
      0001D0                        505 _Callback_keys_10000_32:
      0001D0                        506 	.ds 2
      0001D2                        507 _DisplayMenuOnHardware_buffer_10000_47:
      0001D2                        508 	.ds 17
      0001E3                        509 _PartialWriteToScreen_PARM_2:
      0001E3                        510 	.ds 2
      0001E5                        511 _PartialWriteToScreen_PARM_3:
      0001E5                        512 	.ds 3
      0001E8                        513 _PartialWriteToScreen_screenPosition_10000_52:
      0001E8                        514 	.ds 2
      0001EA                        515 _HandleMenuCommand_PARM_2:
      0001EA                        516 	.ds 2
      0001EC                        517 _HandleMenuCommand_menuItem_10000_59:
      0001EC                        518 	.ds 2
      0001EE                        519 _HandleMenuCommand_dt_10000_60:
      0001EE                        520 	.ds 7
      0001F5                        521 _WriteCurrentTime_strBuffer_10000_100:
      0001F5                        522 	.ds 10
      0001FF                        523 _PreviewTimeAdjustment_strBuffer_10000_101:
      0001FF                        524 	.ds 10
      000209                        525 _PreviewTimeAdjustment_dt_10000_101:
      000209                        526 	.ds 7
      000210                        527 _PreviewDateAdjustment_strBuffer_10000_102:
      000210                        528 	.ds 10
      00021A                        529 _PreviewDateAdjustment_dt_10000_102:
      00021A                        530 	.ds 7
      000221                        531 _TestAndDisplay_PARM_2:
      000221                        532 	.ds 1
      000222                        533 _TestAndDisplay_description_10000_103:
      000222                        534 	.ds 3
      000225                        535 _ProcessHeating_inputs_10000_105:
      000225                        536 	.ds 1
      000226                        537 _ProcessHeating_zones_10000_105:
      000226                        538 	.ds 5
      00022B                        539 _ProcessHeating_pump_10000_105:
      00022B                        540 	.ds 1
      00022C                        541 _ProcessHeating_boiler_10000_105:
      00022C                        542 	.ds 1
      00022D                        543 _ProcessHeating_output_10000_105:
      00022D                        544 	.ds 1
      00022E                        545 _AnimateScreen_strBuffer_10000_115:
      00022E                        546 	.ds 11
      000239                        547 _AnimateScreen_numericValue_10000_115:
      000239                        548 	.ds 2
      00023B                        549 _AnimateScreen_zones_10000_115:
      00023B                        550 	.ds 5
      000240                        551 _AnimateScreen_outputs_10000_115:
      000240                        552 	.ds 4
                                    553 ;--------------------------------------------------------
                                    554 ; absolute external ram data
                                    555 ;--------------------------------------------------------
                                    556 	.area XABS    (ABS,XDATA)
                                    557 ;--------------------------------------------------------
                                    558 ; initialized external ram data
                                    559 ;--------------------------------------------------------
                                    560 	.area XISEG   (XDATA)
                                    561 	.area HOME    (CODE)
                                    562 	.area GSINIT0 (CODE)
                                    563 	.area GSINIT1 (CODE)
                                    564 	.area GSINIT2 (CODE)
                                    565 	.area GSINIT3 (CODE)
                                    566 	.area GSINIT4 (CODE)
                                    567 	.area GSINIT5 (CODE)
                                    568 	.area GSINIT  (CODE)
                                    569 	.area GSFINAL (CODE)
                                    570 	.area CSEG    (CODE)
                                    571 ;--------------------------------------------------------
                                    572 ; global & static initialisations
                                    573 ;--------------------------------------------------------
                                    574 	.area HOME    (CODE)
                                    575 	.area GSINIT  (CODE)
                                    576 	.area GSFINAL (CODE)
                                    577 	.area GSINIT  (CODE)
                                    578 ;--------------------------------------------------------
                                    579 ; Home
                                    580 ;--------------------------------------------------------
                                    581 	.area HOME    (CODE)
                                    582 	.area HOME    (CODE)
                                    583 ;--------------------------------------------------------
                                    584 ; code
                                    585 ;--------------------------------------------------------
                                    586 	.area CSEG    (CODE)
                                    587 ;------------------------------------------------------------
                                    588 ;Allocation info for local variables in function 'UserProgram'
                                    589 ;------------------------------------------------------------
                                    590 ;i             Allocated with name '_UserProgram_i_10000_28'
                                    591 ;------------------------------------------------------------
                                    592 ;	../Common/CentralHeating.c:79: void STDCALL UserProgram()
                                    593 ;	-----------------------------------------
                                    594 ;	 function UserProgram
                                    595 ;	-----------------------------------------
      001447                        596 _UserProgram:
                           000007   597 	ar7 = 0x07
                           000006   598 	ar6 = 0x06
                           000005   599 	ar5 = 0x05
                           000004   600 	ar4 = 0x04
                           000003   601 	ar3 = 0x03
                           000002   602 	ar2 = 0x02
                           000001   603 	ar1 = 0x01
                           000000   604 	ar0 = 0x00
                                    605 ;	../Common/CentralHeating.c:86: lastKeys = 0;
      001447 90 01 B9         [24]  606 	mov	dptr,#_lastKeys
      00144A E4               [12]  607 	clr	a
      00144B F0               [24]  608 	movx	@dptr,a
                                    609 ;	../Common/CentralHeating.c:87: currentScreen = 0;
      00144C 90 01 BA         [24]  610 	mov	dptr,#_currentScreen
      00144F F0               [24]  611 	movx	@dptr,a
                                    612 ;	../Common/CentralHeating.c:88: flashDateTime = 0;
      001450 90 01 BB         [24]  613 	mov	dptr,#_flashDateTime
      001453 F0               [24]  614 	movx	@dptr,a
                                    615 ;	../Common/CentralHeating.c:89: lastInputState = 0;
      001454 90 01 BC         [24]  616 	mov	dptr,#_lastInputState
      001457 F0               [24]  617 	movx	@dptr,a
                                    618 ;	../Common/CentralHeating.c:90: lastOutputState = 0;
      001458 90 01 BD         [24]  619 	mov	dptr,#_lastOutputState
      00145B F0               [24]  620 	movx	@dptr,a
                                    621 ;	../Common/CentralHeating.c:91: animationType = ANIMATE_INPUTS;
      00145C 90 01 BE         [24]  622 	mov	dptr,#_animationType
      00145F F0               [24]  623 	movx	@dptr,a
                                    624 ;	../Common/CentralHeating.c:94: provideHotwaterUntil.day = 0;
      001460 90 01 CB         [24]  625 	mov	dptr,#(_provideHotwaterUntil + 0x0004)
      001463 F0               [24]  626 	movx	@dptr,a
                                    627 ;	../Common/CentralHeating.c:95: provideHotwaterUntil.dayOfWeek = 0;
      001464 90 01 CA         [24]  628 	mov	dptr,#(_provideHotwaterUntil + 0x0003)
      001467 F0               [24]  629 	movx	@dptr,a
                                    630 ;	../Common/CentralHeating.c:96: provideHotwaterUntil.hours = 0;
      001468 90 01 C9         [24]  631 	mov	dptr,#(_provideHotwaterUntil + 0x0002)
      00146B F0               [24]  632 	movx	@dptr,a
                                    633 ;	../Common/CentralHeating.c:97: provideHotwaterUntil.minutes = 0;
      00146C 90 01 C8         [24]  634 	mov	dptr,#(_provideHotwaterUntil + 0x0001)
      00146F F0               [24]  635 	movx	@dptr,a
                                    636 ;	../Common/CentralHeating.c:98: provideHotwaterUntil.month = 0;
      001470 90 01 CC         [24]  637 	mov	dptr,#(_provideHotwaterUntil + 0x0005)
      001473 F0               [24]  638 	movx	@dptr,a
                                    639 ;	../Common/CentralHeating.c:99: provideHotwaterUntil.seconds = 0;
      001474 90 01 C7         [24]  640 	mov	dptr,#_provideHotwaterUntil
      001477 F0               [24]  641 	movx	@dptr,a
                                    642 ;	../Common/CentralHeating.c:100: provideHotwaterUntil.year = 0;
      001478 90 01 CD         [24]  643 	mov	dptr,#(_provideHotwaterUntil + 0x0006)
      00147B F0               [24]  644 	movx	@dptr,a
                                    645 ;	../Common/CentralHeating.c:104: for (i = 0; i < SCREEN_BUFFER_SIZE; ++i)
      00147C FF               [12]  646 	mov	r7,a
      00147D                        647 00102$:
                                    648 ;	../Common/CentralHeating.c:106: screenBuffer[i] = ' ';
      00147D EF               [12]  649 	mov	a,r7
      00147E 24 98            [12]  650 	add	a, #_screenBuffer
      001480 F5 82            [12]  651 	mov	dpl,a
      001482 E4               [12]  652 	clr	a
      001483 34 01            [12]  653 	addc	a, #(_screenBuffer >> 8)
      001485 F5 83            [12]  654 	mov	dph,a
      001487 74 20            [12]  655 	mov	a,#0x20
      001489 F0               [24]  656 	movx	@dptr,a
                                    657 ;	../Common/CentralHeating.c:104: for (i = 0; i < SCREEN_BUFFER_SIZE; ++i)
      00148A 0F               [12]  658 	inc	r7
      00148B BF 20 00         [24]  659 	cjne	r7,#0x20,00119$
      00148E                        660 00119$:
      00148E 40 ED            [24]  661 	jc	00102$
                                    662 ;	../Common/CentralHeating.c:109: pWriteDisplayBuffer(screenBuffer);
      001490 12 14 95         [24]  663 	lcall	00121$
      001493 80 11            [24]  664 	sjmp	00122$
      001495                        665 00121$:
      001495 90 00 09         [24]  666 	mov	dptr,#_pWriteDisplayBuffer
      001498 E0               [24]  667 	movx	a,@dptr
      001499 C0 E0            [24]  668 	push	acc
      00149B A3               [24]  669 	inc	dptr
      00149C E0               [24]  670 	movx	a,@dptr
      00149D C0 E0            [24]  671 	push	acc
      00149F 90 01 98         [24]  672 	mov	dptr,#_screenBuffer
      0014A2 75 F0 00         [24]  673 	mov	b, #0x00
      0014A5 22               [24]  674 	ret
      0014A6                        675 00122$:
                                    676 ;	../Common/CentralHeating.c:113: currentScreen = SCREEN_HOME;
      0014A6 90 01 BA         [24]  677 	mov	dptr,#_currentScreen
      0014A9 74 01            [12]  678 	mov	a,#0x01
      0014AB F0               [24]  679 	movx	@dptr,a
                                    680 ;	../Common/CentralHeating.c:117: pRegisterForTimer(RTCUPDATECOOKIE, 400, Callback);
      0014AC 74 58            [12]  681 	mov	a,#_Callback
      0014AE C0 E0            [24]  682 	push	acc
      0014B0 74 15            [12]  683 	mov	a,#(_Callback >> 8)
      0014B2 C0 E0            [24]  684 	push	acc
      0014B4 74 90            [12]  685 	mov	a,#0x90
      0014B6 C0 E0            [24]  686 	push	acc
      0014B8 74 01            [12]  687 	mov	a,#0x01
      0014BA C0 E0            [24]  688 	push	acc
      0014BC 12 14 C1         [24]  689 	lcall	00123$
      0014BF 80 0E            [24]  690 	sjmp	00124$
      0014C1                        691 00123$:
      0014C1 90 00 01         [24]  692 	mov	dptr,#_pRegisterForTimer
      0014C4 E0               [24]  693 	movx	a,@dptr
      0014C5 C0 E0            [24]  694 	push	acc
      0014C7 A3               [24]  695 	inc	dptr
      0014C8 E0               [24]  696 	movx	a,@dptr
      0014C9 C0 E0            [24]  697 	push	acc
      0014CB 90 00 01         [24]  698 	mov	dptr,#0x0001
      0014CE 22               [24]  699 	ret
      0014CF                        700 00124$:
      0014CF E5 81            [12]  701 	mov	a,sp
      0014D1 24 FC            [12]  702 	add	a,#0xfc
      0014D3 F5 81            [12]  703 	mov	sp,a
                                    704 ;	../Common/CentralHeating.c:118: pRegisterForTimer(READKEYSCOOKIE, 10, Callback);
      0014D5 74 58            [12]  705 	mov	a,#_Callback
      0014D7 C0 E0            [24]  706 	push	acc
      0014D9 74 15            [12]  707 	mov	a,#(_Callback >> 8)
      0014DB C0 E0            [24]  708 	push	acc
      0014DD 74 0A            [12]  709 	mov	a,#0x0a
      0014DF C0 E0            [24]  710 	push	acc
      0014E1 E4               [12]  711 	clr	a
      0014E2 C0 E0            [24]  712 	push	acc
      0014E4 12 14 E9         [24]  713 	lcall	00125$
      0014E7 80 0E            [24]  714 	sjmp	00126$
      0014E9                        715 00125$:
      0014E9 90 00 01         [24]  716 	mov	dptr,#_pRegisterForTimer
      0014EC E0               [24]  717 	movx	a,@dptr
      0014ED C0 E0            [24]  718 	push	acc
      0014EF A3               [24]  719 	inc	dptr
      0014F0 E0               [24]  720 	movx	a,@dptr
      0014F1 C0 E0            [24]  721 	push	acc
      0014F3 90 00 02         [24]  722 	mov	dptr,#0x0002
      0014F6 22               [24]  723 	ret
      0014F7                        724 00126$:
      0014F7 E5 81            [12]  725 	mov	a,sp
      0014F9 24 FC            [12]  726 	add	a,#0xfc
      0014FB F5 81            [12]  727 	mov	sp,a
                                    728 ;	../Common/CentralHeating.c:119: pRegisterForTimer(PROCESSHEATING, 1000, Callback);
      0014FD 74 58            [12]  729 	mov	a,#_Callback
      0014FF C0 E0            [24]  730 	push	acc
      001501 74 15            [12]  731 	mov	a,#(_Callback >> 8)
      001503 C0 E0            [24]  732 	push	acc
      001505 74 E8            [12]  733 	mov	a,#0xe8
      001507 C0 E0            [24]  734 	push	acc
      001509 74 03            [12]  735 	mov	a,#0x03
      00150B C0 E0            [24]  736 	push	acc
      00150D 12 15 12         [24]  737 	lcall	00127$
      001510 80 0E            [24]  738 	sjmp	00128$
      001512                        739 00127$:
      001512 90 00 01         [24]  740 	mov	dptr,#_pRegisterForTimer
      001515 E0               [24]  741 	movx	a,@dptr
      001516 C0 E0            [24]  742 	push	acc
      001518 A3               [24]  743 	inc	dptr
      001519 E0               [24]  744 	movx	a,@dptr
      00151A C0 E0            [24]  745 	push	acc
      00151C 90 00 03         [24]  746 	mov	dptr,#0x0003
      00151F 22               [24]  747 	ret
      001520                        748 00128$:
      001520 E5 81            [12]  749 	mov	a,sp
      001522 24 FC            [12]  750 	add	a,#0xfc
      001524 F5 81            [12]  751 	mov	sp,a
                                    752 ;	../Common/CentralHeating.c:120: pRegisterForTimer(SCREENACTIVITY, 1000, Callback);
      001526 74 58            [12]  753 	mov	a,#_Callback
      001528 C0 E0            [24]  754 	push	acc
      00152A 74 15            [12]  755 	mov	a,#(_Callback >> 8)
      00152C C0 E0            [24]  756 	push	acc
      00152E 74 E8            [12]  757 	mov	a,#0xe8
      001530 C0 E0            [24]  758 	push	acc
      001532 74 03            [12]  759 	mov	a,#0x03
      001534 C0 E0            [24]  760 	push	acc
      001536 12 15 3B         [24]  761 	lcall	00129$
      001539 80 0E            [24]  762 	sjmp	00130$
      00153B                        763 00129$:
      00153B 90 00 01         [24]  764 	mov	dptr,#_pRegisterForTimer
      00153E E0               [24]  765 	movx	a,@dptr
      00153F C0 E0            [24]  766 	push	acc
      001541 A3               [24]  767 	inc	dptr
      001542 E0               [24]  768 	movx	a,@dptr
      001543 C0 E0            [24]  769 	push	acc
      001545 90 00 04         [24]  770 	mov	dptr,#0x0004
      001548 22               [24]  771 	ret
      001549                        772 00130$:
      001549 E5 81            [12]  773 	mov	a,sp
      00154B 24 FC            [12]  774 	add	a,#0xfc
      00154D F5 81            [12]  775 	mov	sp,a
                                    776 ;	../Common/CentralHeating.c:124: BuildCentralHeatingMenuDefinitions();
      00154F 12 21 EB         [24]  777 	lcall	_BuildCentralHeatingMenuDefinitions
                                    778 ;	../Common/CentralHeating.c:127: InitialiseMenuController();
      001552 12 0B 74         [24]  779 	lcall	_InitialiseMenuController
                                    780 ;	../Common/CentralHeating.c:128: DisplayMenuOnHardware();
                                    781 ;	../Common/CentralHeating.c:131: }
      001555 02 16 4A         [24]  782 	ljmp	_DisplayMenuOnHardware
                                    783 ;------------------------------------------------------------
                                    784 ;Allocation info for local variables in function 'Callback'
                                    785 ;------------------------------------------------------------
                                    786 ;cookie        Allocated with name '_Callback_cookie_10000_31'
                                    787 ;keys          Allocated with name '_Callback_keys_10000_32'
                                    788 ;------------------------------------------------------------
                                    789 ;	../Common/CentralHeating.c:134: void STDCALL Callback(int cookie)
                                    790 ;	-----------------------------------------
                                    791 ;	 function Callback
                                    792 ;	-----------------------------------------
      001558                        793 _Callback:
      001558 AF 83            [24]  794 	mov	r7,dph
      00155A E5 82            [12]  795 	mov	a,dpl
      00155C 90 01 CE         [24]  796 	mov	dptr,#_Callback_cookie_10000_31
      00155F F0               [24]  797 	movx	@dptr,a
      001560 EF               [12]  798 	mov	a,r7
      001561 A3               [24]  799 	inc	dptr
      001562 F0               [24]  800 	movx	@dptr,a
                                    801 ;	../Common/CentralHeating.c:138: switch (cookie)
      001563 90 01 CE         [24]  802 	mov	dptr,#_Callback_cookie_10000_31
      001566 E0               [24]  803 	movx	a,@dptr
      001567 FE               [12]  804 	mov	r6,a
      001568 A3               [24]  805 	inc	dptr
      001569 E0               [24]  806 	movx	a,@dptr
      00156A FF               [12]  807 	mov	r7,a
      00156B BE 01 05         [24]  808 	cjne	r6,#0x01,00226$
      00156E BF 00 02         [24]  809 	cjne	r7,#0x00,00226$
      001571 80 1B            [24]  810 	sjmp	00101$
      001573                        811 00226$:
      001573 BE 02 05         [24]  812 	cjne	r6,#0x02,00227$
      001576 BF 00 02         [24]  813 	cjne	r7,#0x00,00227$
      001579 80 59            [24]  814 	sjmp	00116$
      00157B                        815 00227$:
      00157B BE 03 06         [24]  816 	cjne	r6,#0x03,00228$
      00157E BF 00 03         [24]  817 	cjne	r7,#0x00,00228$
      001581 02 16 32         [24]  818 	ljmp	00127$
      001584                        819 00228$:
      001584 BE 04 06         [24]  820 	cjne	r6,#0x04,00229$
      001587 BF 00 03         [24]  821 	cjne	r7,#0x00,00229$
      00158A 02 16 3E         [24]  822 	ljmp	00130$
      00158D                        823 00229$:
      00158D 22               [24]  824 	ret
                                    825 ;	../Common/CentralHeating.c:140: case RTCUPDATECOOKIE :
      00158E                        826 00101$:
                                    827 ;	../Common/CentralHeating.c:141: if (currentScreen == SCREEN_HOME)
      00158E 90 01 BA         [24]  828 	mov	dptr,#_currentScreen
      001591 E0               [24]  829 	movx	a,@dptr
      001592 FF               [12]  830 	mov	r7,a
      001593 BF 01 03         [24]  831 	cjne	r7,#0x01,00114$
                                    832 ;	../Common/CentralHeating.c:143: WriteCurrentTime();
      001596 02 1D 32         [24]  833 	ljmp	_WriteCurrentTime
      001599                        834 00114$:
                                    835 ;	../Common/CentralHeating.c:145: else if (currentScreen == SCREEN_SETDATE)
      001599 BF 02 19         [24]  836 	cjne	r7,#0x02,00111$
                                    837 ;	../Common/CentralHeating.c:147: if (flashDateTime)
      00159C 90 01 BB         [24]  838 	mov	dptr,#_flashDateTime
      00159F E0               [24]  839 	movx	a,@dptr
      0015A0 60 09            [24]  840 	jz	00103$
                                    841 ;	../Common/CentralHeating.c:149: ClearTopLine();
      0015A2 12 17 3F         [24]  842 	lcall	_ClearTopLine
                                    843 ;	../Common/CentralHeating.c:150: flashDateTime = 0;
      0015A5 90 01 BB         [24]  844 	mov	dptr,#_flashDateTime
      0015A8 E4               [12]  845 	clr	a
      0015A9 F0               [24]  846 	movx	@dptr,a
      0015AA 22               [24]  847 	ret
      0015AB                        848 00103$:
                                    849 ;	../Common/CentralHeating.c:154: PreviewDateAdjustment(); 
      0015AB 12 1D CA         [24]  850 	lcall	_PreviewDateAdjustment
                                    851 ;	../Common/CentralHeating.c:155: flashDateTime = 1;
      0015AE 90 01 BB         [24]  852 	mov	dptr,#_flashDateTime
      0015B1 74 01            [12]  853 	mov	a,#0x01
      0015B3 F0               [24]  854 	movx	@dptr,a
      0015B4 22               [24]  855 	ret
      0015B5                        856 00111$:
                                    857 ;	../Common/CentralHeating.c:159: else if (currentScreen == SCREEN_SETTIME)
      0015B5 BF 03 02         [24]  858 	cjne	r7,#0x03,00235$
      0015B8 80 01            [24]  859 	sjmp	00236$
      0015BA                        860 00235$:
      0015BA 22               [24]  861 	ret
      0015BB                        862 00236$:
                                    863 ;	../Common/CentralHeating.c:161: if (flashDateTime)
      0015BB 90 01 BB         [24]  864 	mov	dptr,#_flashDateTime
      0015BE E0               [24]  865 	movx	a,@dptr
      0015BF 60 09            [24]  866 	jz	00106$
                                    867 ;	../Common/CentralHeating.c:163: ClearTopLine();
      0015C1 12 17 3F         [24]  868 	lcall	_ClearTopLine
                                    869 ;	../Common/CentralHeating.c:164: flashDateTime = 0;
      0015C4 90 01 BB         [24]  870 	mov	dptr,#_flashDateTime
      0015C7 E4               [12]  871 	clr	a
      0015C8 F0               [24]  872 	movx	@dptr,a
      0015C9 22               [24]  873 	ret
      0015CA                        874 00106$:
                                    875 ;	../Common/CentralHeating.c:168: PreviewTimeAdjustment();
      0015CA 12 1D 7D         [24]  876 	lcall	_PreviewTimeAdjustment
                                    877 ;	../Common/CentralHeating.c:169: flashDateTime = 1;
      0015CD 90 01 BB         [24]  878 	mov	dptr,#_flashDateTime
      0015D0 74 01            [12]  879 	mov	a,#0x01
      0015D2 F0               [24]  880 	movx	@dptr,a
                                    881 ;	../Common/CentralHeating.c:172: break;
      0015D3 22               [24]  882 	ret
                                    883 ;	../Common/CentralHeating.c:174: case READKEYSCOOKIE :
      0015D4                        884 00116$:
                                    885 ;	../Common/CentralHeating.c:175: pGetKeyState(&keys);
      0015D4 12 15 D9         [24]  886 	lcall	00238$
      0015D7 80 11            [24]  887 	sjmp	00239$
      0015D9                        888 00238$:
      0015D9 90 00 0B         [24]  889 	mov	dptr,#_pGetKeyState
      0015DC E0               [24]  890 	movx	a,@dptr
      0015DD C0 E0            [24]  891 	push	acc
      0015DF A3               [24]  892 	inc	dptr
      0015E0 E0               [24]  893 	movx	a,@dptr
      0015E1 C0 E0            [24]  894 	push	acc
      0015E3 90 01 D0         [24]  895 	mov	dptr,#_Callback_keys_10000_32
      0015E6 75 F0 00         [24]  896 	mov	b, #0x00
      0015E9 22               [24]  897 	ret
      0015EA                        898 00239$:
                                    899 ;	../Common/CentralHeating.c:176: if (keys != lastKeys)
      0015EA 90 01 D0         [24]  900 	mov	dptr,#_Callback_keys_10000_32
      0015ED E0               [24]  901 	movx	a,@dptr
      0015EE FE               [12]  902 	mov	r6,a
      0015EF A3               [24]  903 	inc	dptr
      0015F0 E0               [24]  904 	movx	a,@dptr
      0015F1 FF               [12]  905 	mov	r7,a
      0015F2 90 01 B9         [24]  906 	mov	dptr,#_lastKeys
      0015F5 E0               [24]  907 	movx	a,@dptr
      0015F6 FC               [12]  908 	mov	r4,a
      0015F7 7D 00            [12]  909 	mov	r5,#0x00
      0015F9 EE               [12]  910 	mov	a,r6
      0015FA B5 04 05         [24]  911 	cjne	a,ar4,00240$
      0015FD EF               [12]  912 	mov	a,r7
      0015FE B5 05 01         [24]  913 	cjne	a,ar5,00240$
      001601 22               [24]  914 	ret
      001602                        915 00240$:
                                    916 ;	../Common/CentralHeating.c:178: lastKeys = keys;
      001602 90 01 B9         [24]  917 	mov	dptr,#_lastKeys
      001605 EE               [12]  918 	mov	a,r6
      001606 F0               [24]  919 	movx	@dptr,a
                                    920 ;	../Common/CentralHeating.c:179: if (keys == 1)
      001607 BE 01 0B         [24]  921 	cjne	r6,#0x01,00123$
      00160A BF 00 08         [24]  922 	cjne	r7,#0x00,00123$
                                    923 ;	../Common/CentralHeating.c:182: MenuNavigation(NAVTYPE_LEFT);
      00160D 75 82 01         [24]  924 	mov	dpl, #0x01
      001610 12 0B B1         [24]  925 	lcall	_MenuNavigation
      001613 80 1A            [24]  926 	sjmp	00124$
      001615                        927 00123$:
                                    928 ;	../Common/CentralHeating.c:184: else if (keys == 2)
      001615 BE 02 0B         [24]  929 	cjne	r6,#0x02,00120$
      001618 BF 00 08         [24]  930 	cjne	r7,#0x00,00120$
                                    931 ;	../Common/CentralHeating.c:186: MenuNavigation(NAVTYPE_SELECTITEM);
      00161B 75 82 03         [24]  932 	mov	dpl, #0x03
      00161E 12 0B B1         [24]  933 	lcall	_MenuNavigation
      001621 80 0C            [24]  934 	sjmp	00124$
      001623                        935 00120$:
                                    936 ;	../Common/CentralHeating.c:188: else if (keys == 3)
      001623 BE 03 09         [24]  937 	cjne	r6,#0x03,00124$
      001626 BF 00 06         [24]  938 	cjne	r7,#0x00,00124$
                                    939 ;	../Common/CentralHeating.c:190: MenuNavigation(NAVTYPE_RIGHT);
      001629 75 82 02         [24]  940 	mov	dpl, #0x02
      00162C 12 0B B1         [24]  941 	lcall	_MenuNavigation
      00162F                        942 00124$:
                                    943 ;	../Common/CentralHeating.c:192: DisplayMenuOnHardware();
                                    944 ;	../Common/CentralHeating.c:194: break;
                                    945 ;	../Common/CentralHeating.c:196: case PROCESSHEATING :
      00162F 02 16 4A         [24]  946 	ljmp	_DisplayMenuOnHardware
      001632                        947 00127$:
                                    948 ;	../Common/CentralHeating.c:197: if (currentScreen != SCREEN_OUTPUTTEST)
      001632 90 01 BA         [24]  949 	mov	dptr,#_currentScreen
      001635 E0               [24]  950 	movx	a,@dptr
      001636 FF               [12]  951 	mov	r7,a
      001637 BF 04 01         [24]  952 	cjne	r7,#0x04,00247$
      00163A 22               [24]  953 	ret
      00163B                        954 00247$:
                                    955 ;	../Common/CentralHeating.c:199: ProcessHeating();
                                    956 ;	../Common/CentralHeating.c:201: break;
                                    957 ;	../Common/CentralHeating.c:203: case SCREENACTIVITY :
      00163B 02 1E 5C         [24]  958 	ljmp	_ProcessHeating
      00163E                        959 00130$:
                                    960 ;	../Common/CentralHeating.c:204: if (currentScreen == SCREEN_HOME)
      00163E 90 01 BA         [24]  961 	mov	dptr,#_currentScreen
      001641 E0               [24]  962 	movx	a,@dptr
      001642 FF               [12]  963 	mov	r7,a
      001643 BF 01 03         [24]  964 	cjne	r7,#0x01,00134$
                                    965 ;	../Common/CentralHeating.c:206: AnimateScreen();
                                    966 ;	../Common/CentralHeating.c:210: }
                                    967 ;	../Common/CentralHeating.c:211: }
      001646 02 1F 8D         [24]  968 	ljmp	_AnimateScreen
      001649                        969 00134$:
      001649 22               [24]  970 	ret
                                    971 ;------------------------------------------------------------
                                    972 ;Allocation info for local variables in function 'DisplayMenuOnHardware'
                                    973 ;------------------------------------------------------------
                                    974 ;buffer        Allocated with name '_DisplayMenuOnHardware_buffer_10000_47'
                                    975 ;i             Allocated with name '_DisplayMenuOnHardware_i_10000_47'
                                    976 ;j             Allocated with name '_DisplayMenuOnHardware_j_10000_47'
                                    977 ;------------------------------------------------------------
                                    978 ;	../Common/CentralHeating.c:215: void DisplayMenuOnHardware()
                                    979 ;	-----------------------------------------
                                    980 ;	 function DisplayMenuOnHardware
                                    981 ;	-----------------------------------------
      00164A                        982 _DisplayMenuOnHardware:
                                    983 ;	../Common/CentralHeating.c:221: RenderMenuOnBuffer(buffer, SCREEN_BUFFER_SIZE / 2);
      00164A 90 01 8F         [24]  984 	mov	dptr,#_RenderMenuOnBuffer_PARM_2
      00164D 74 10            [12]  985 	mov	a,#0x10
      00164F F0               [24]  986 	movx	@dptr,a
      001650 E4               [12]  987 	clr	a
      001651 A3               [24]  988 	inc	dptr
      001652 F0               [24]  989 	movx	@dptr,a
      001653 90 01 D2         [24]  990 	mov	dptr,#_DisplayMenuOnHardware_buffer_10000_47
      001656 F5 F0            [12]  991 	mov	b,a
      001658 12 10 5F         [24]  992 	lcall	_RenderMenuOnBuffer
                                    993 ;	../Common/CentralHeating.c:224: for (i = 0; i < SCREEN_BUFFER_SIZE / 2; ++i)
      00165B 7E 00            [12]  994 	mov	r6,#0x00
      00165D 7F 00            [12]  995 	mov	r7,#0x00
      00165F 7D 00            [12]  996 	mov	r5,#0x00
      001661                        997 00105$:
                                    998 ;	../Common/CentralHeating.c:226: if (buffer[j] != 0)
      001661 EE               [12]  999 	mov	a,r6
      001662 24 D2            [12] 1000 	add	a, #_DisplayMenuOnHardware_buffer_10000_47
      001664 FB               [12] 1001 	mov	r3,a
      001665 EF               [12] 1002 	mov	a,r7
      001666 34 01            [12] 1003 	addc	a, #(_DisplayMenuOnHardware_buffer_10000_47 >> 8)
      001668 FC               [12] 1004 	mov	r4,a
      001669 8B 82            [24] 1005 	mov	dpl,r3
      00166B 8C 83            [24] 1006 	mov	dph,r4
      00166D E0               [24] 1007 	movx	a,@dptr
      00166E 60 23            [24] 1008 	jz	00102$
                                   1009 ;	../Common/CentralHeating.c:228: screenBuffer[i + SCREEN_BUFFER_SIZE / 2] = buffer[j++];
      001670 8D 04            [24] 1010 	mov	ar4,r5
      001672 74 10            [12] 1011 	mov	a,#0x10
      001674 2C               [12] 1012 	add	a, r4
      001675 24 98            [12] 1013 	add	a,#_screenBuffer
      001677 FC               [12] 1014 	mov	r4,a
      001678 E4               [12] 1015 	clr	a
      001679 34 01            [12] 1016 	addc	a, #(_screenBuffer >> 8)
      00167B FB               [12] 1017 	mov	r3,a
      00167C EE               [12] 1018 	mov	a,r6
      00167D 24 D2            [12] 1019 	add	a, #_DisplayMenuOnHardware_buffer_10000_47
      00167F F5 82            [12] 1020 	mov	dpl,a
      001681 EF               [12] 1021 	mov	a,r7
      001682 34 01            [12] 1022 	addc	a, #(_DisplayMenuOnHardware_buffer_10000_47 >> 8)
      001684 F5 83            [12] 1023 	mov	dph,a
      001686 0E               [12] 1024 	inc	r6
      001687 BE 00 01         [24] 1025 	cjne	r6,#0x00,00129$
      00168A 0F               [12] 1026 	inc	r7
      00168B                       1027 00129$:
      00168B E0               [24] 1028 	movx	a,@dptr
      00168C 8C 82            [24] 1029 	mov	dpl,r4
      00168E 8B 83            [24] 1030 	mov	dph,r3
      001690 F0               [24] 1031 	movx	@dptr,a
      001691 80 11            [24] 1032 	sjmp	00106$
      001693                       1033 00102$:
                                   1034 ;	../Common/CentralHeating.c:232: screenBuffer[i + SCREEN_BUFFER_SIZE / 2] = ' ';
      001693 8D 04            [24] 1035 	mov	ar4,r5
      001695 74 10            [12] 1036 	mov	a,#0x10
      001697 2C               [12] 1037 	add	a, r4
      001698 24 98            [12] 1038 	add	a, #_screenBuffer
      00169A F5 82            [12] 1039 	mov	dpl,a
      00169C E4               [12] 1040 	clr	a
      00169D 34 01            [12] 1041 	addc	a, #(_screenBuffer >> 8)
      00169F F5 83            [12] 1042 	mov	dph,a
      0016A1 74 20            [12] 1043 	mov	a,#0x20
      0016A3 F0               [24] 1044 	movx	@dptr,a
      0016A4                       1045 00106$:
                                   1046 ;	../Common/CentralHeating.c:224: for (i = 0; i < SCREEN_BUFFER_SIZE / 2; ++i)
      0016A4 0D               [12] 1047 	inc	r5
      0016A5 BD 10 00         [24] 1048 	cjne	r5,#0x10,00130$
      0016A8                       1049 00130$:
      0016A8 40 B7            [24] 1050 	jc	00105$
                                   1051 ;	../Common/CentralHeating.c:236: pWriteDisplayBuffer(screenBuffer);    
      0016AA 90 00 09         [24] 1052 	mov	dptr,#_pWriteDisplayBuffer
      0016AD E0               [24] 1053 	movx	a,@dptr
      0016AE C0 E0            [24] 1054 	push	acc
      0016B0 A3               [24] 1055 	inc	dptr
      0016B1 E0               [24] 1056 	movx	a,@dptr
      0016B2 C0 E0            [24] 1057 	push	acc
      0016B4 90 01 98         [24] 1058 	mov	dptr,#_screenBuffer
      0016B7 75 F0 00         [24] 1059 	mov	b, #0x00
      0016BA 22               [24] 1060 	ret
                                   1061 ;	../Common/CentralHeating.c:237: }
      0016BB 22               [24] 1062 	ret
                                   1063 ;------------------------------------------------------------
                                   1064 ;Allocation info for local variables in function 'PartialWriteToScreen'
                                   1065 ;------------------------------------------------------------
                                   1066 ;maxLen        Allocated with name '_PartialWriteToScreen_PARM_2'
                                   1067 ;information   Allocated with name '_PartialWriteToScreen_PARM_3'
                                   1068 ;screenPosition Allocated with name '_PartialWriteToScreen_screenPosition_10000_52'
                                   1069 ;p             Allocated with name '_PartialWriteToScreen_p_10000_53'
                                   1070 ;i             Allocated with name '_PartialWriteToScreen_i_10000_53'
                                   1071 ;------------------------------------------------------------
                                   1072 ;	../Common/CentralHeating.c:241: void PartialWriteToScreen(int screenPosition, int maxLen, char *information)
                                   1073 ;	-----------------------------------------
                                   1074 ;	 function PartialWriteToScreen
                                   1075 ;	-----------------------------------------
      0016BC                       1076 _PartialWriteToScreen:
      0016BC AF 83            [24] 1077 	mov	r7,dph
      0016BE E5 82            [12] 1078 	mov	a,dpl
      0016C0 90 01 E8         [24] 1079 	mov	dptr,#_PartialWriteToScreen_screenPosition_10000_52
      0016C3 F0               [24] 1080 	movx	@dptr,a
      0016C4 EF               [12] 1081 	mov	a,r7
      0016C5 A3               [24] 1082 	inc	dptr
      0016C6 F0               [24] 1083 	movx	@dptr,a
                                   1084 ;	../Common/CentralHeating.c:243: char *p = information;
      0016C7 90 01 E5         [24] 1085 	mov	dptr,#_PartialWriteToScreen_PARM_3
      0016CA E0               [24] 1086 	movx	a,@dptr
      0016CB FD               [12] 1087 	mov	r5,a
      0016CC A3               [24] 1088 	inc	dptr
      0016CD E0               [24] 1089 	movx	a,@dptr
      0016CE FE               [12] 1090 	mov	r6,a
      0016CF A3               [24] 1091 	inc	dptr
      0016D0 E0               [24] 1092 	movx	a,@dptr
      0016D1 FF               [12] 1093 	mov	r7,a
                                   1094 ;	../Common/CentralHeating.c:245: for (i = screenPosition; i < (screenPosition + maxLen); ++i)
      0016D2 90 01 E8         [24] 1095 	mov	dptr,#_PartialWriteToScreen_screenPosition_10000_52
      0016D5 E0               [24] 1096 	movx	a,@dptr
      0016D6 FB               [12] 1097 	mov	r3,a
      0016D7 A3               [24] 1098 	inc	dptr
      0016D8 E0               [24] 1099 	movx	a,@dptr
      0016D9 FC               [12] 1100 	mov	r4,a
      0016DA 90 01 E3         [24] 1101 	mov	dptr,#_PartialWriteToScreen_PARM_2
      0016DD E0               [24] 1102 	movx	a,@dptr
      0016DE F9               [12] 1103 	mov	r1,a
      0016DF A3               [24] 1104 	inc	dptr
      0016E0 E0               [24] 1105 	movx	a,@dptr
      0016E1 FA               [12] 1106 	mov	r2,a
      0016E2 E9               [12] 1107 	mov	a,r1
      0016E3 2B               [12] 1108 	add	a, r3
      0016E4 F9               [12] 1109 	mov	r1,a
      0016E5 EA               [12] 1110 	mov	a,r2
      0016E6 3C               [12] 1111 	addc	a, r4
      0016E7 FA               [12] 1112 	mov	r2,a
      0016E8                       1113 00106$:
      0016E8 C3               [12] 1114 	clr	c
      0016E9 EB               [12] 1115 	mov	a,r3
      0016EA 99               [12] 1116 	subb	a,r1
      0016EB EC               [12] 1117 	mov	a,r4
      0016EC 64 80            [12] 1118 	xrl	a,#0x80
      0016EE 8A F0            [24] 1119 	mov	b,r2
      0016F0 63 F0 80         [24] 1120 	xrl	b,#0x80
      0016F3 95 F0            [12] 1121 	subb	a,b
      0016F5 50 33            [24] 1122 	jnc	00104$
                                   1123 ;	../Common/CentralHeating.c:247: if (*p == 0)
      0016F7 8D 82            [24] 1124 	mov	dpl,r5
      0016F9 8E 83            [24] 1125 	mov	dph,r6
      0016FB 8F F0            [24] 1126 	mov	b,r7
      0016FD 12 3A B5         [24] 1127 	lcall	__gptrget
      001700 F8               [12] 1128 	mov	r0,a
      001701 70 0F            [24] 1129 	jnz	00102$
                                   1130 ;	../Common/CentralHeating.c:249: screenBuffer[i] = ' ';
      001703 EB               [12] 1131 	mov	a,r3
      001704 24 98            [12] 1132 	add	a, #_screenBuffer
      001706 F5 82            [12] 1133 	mov	dpl,a
      001708 EC               [12] 1134 	mov	a,r4
      001709 34 01            [12] 1135 	addc	a, #(_screenBuffer >> 8)
      00170B F5 83            [12] 1136 	mov	dph,a
      00170D 74 20            [12] 1137 	mov	a,#0x20
      00170F F0               [24] 1138 	movx	@dptr,a
      001710 80 11            [24] 1139 	sjmp	00107$
      001712                       1140 00102$:
                                   1141 ;	../Common/CentralHeating.c:253: screenBuffer[i] = *p;
      001712 EB               [12] 1142 	mov	a,r3
      001713 24 98            [12] 1143 	add	a, #_screenBuffer
      001715 F5 82            [12] 1144 	mov	dpl,a
      001717 EC               [12] 1145 	mov	a,r4
      001718 34 01            [12] 1146 	addc	a, #(_screenBuffer >> 8)
      00171A F5 83            [12] 1147 	mov	dph,a
      00171C E8               [12] 1148 	mov	a,r0
      00171D F0               [24] 1149 	movx	@dptr,a
                                   1150 ;	../Common/CentralHeating.c:254: ++p;
      00171E 0D               [12] 1151 	inc	r5
      00171F BD 00 01         [24] 1152 	cjne	r5,#0x00,00131$
      001722 0E               [12] 1153 	inc	r6
      001723                       1154 00131$:
      001723                       1155 00107$:
                                   1156 ;	../Common/CentralHeating.c:245: for (i = screenPosition; i < (screenPosition + maxLen); ++i)
      001723 0B               [12] 1157 	inc	r3
      001724 BB 00 C1         [24] 1158 	cjne	r3,#0x00,00106$
      001727 0C               [12] 1159 	inc	r4
      001728 80 BE            [24] 1160 	sjmp	00106$
      00172A                       1161 00104$:
                                   1162 ;	../Common/CentralHeating.c:257: pWriteDisplayBuffer(screenBuffer);    
      00172A 02 17 2D         [24] 1163 	ljmp	00133$
      00172D                       1164 00133$:
      00172D 90 00 09         [24] 1165 	mov	dptr,#_pWriteDisplayBuffer
      001730 E0               [24] 1166 	movx	a,@dptr
      001731 C0 E0            [24] 1167 	push	acc
      001733 A3               [24] 1168 	inc	dptr
      001734 E0               [24] 1169 	movx	a,@dptr
      001735 C0 E0            [24] 1170 	push	acc
      001737 90 01 98         [24] 1171 	mov	dptr,#_screenBuffer
      00173A 75 F0 00         [24] 1172 	mov	b, #0x00
      00173D 22               [24] 1173 	ret
                                   1174 ;	../Common/CentralHeating.c:258: }
      00173E 22               [24] 1175 	ret
                                   1176 ;------------------------------------------------------------
                                   1177 ;Allocation info for local variables in function 'ClearTopLine'
                                   1178 ;------------------------------------------------------------
                                   1179 ;	../Common/CentralHeating.c:262: void ClearTopLine()
                                   1180 ;	-----------------------------------------
                                   1181 ;	 function ClearTopLine
                                   1182 ;	-----------------------------------------
      00173F                       1183 _ClearTopLine:
                                   1184 ;	../Common/CentralHeating.c:264: PartialWriteToScreen(0, 16, "");
      00173F 90 01 E3         [24] 1185 	mov	dptr,#_PartialWriteToScreen_PARM_2
      001742 74 10            [12] 1186 	mov	a,#0x10
      001744 F0               [24] 1187 	movx	@dptr,a
      001745 E4               [12] 1188 	clr	a
      001746 A3               [24] 1189 	inc	dptr
      001747 F0               [24] 1190 	movx	@dptr,a
      001748 90 01 E5         [24] 1191 	mov	dptr,#_PartialWriteToScreen_PARM_3
      00174B 74 0A            [12] 1192 	mov	a,#___str_0
      00174D F0               [24] 1193 	movx	@dptr,a
      00174E 74 3B            [12] 1194 	mov	a,#(___str_0 >> 8)
      001750 A3               [24] 1195 	inc	dptr
      001751 F0               [24] 1196 	movx	@dptr,a
      001752 74 80            [12] 1197 	mov	a,#0x80
      001754 A3               [24] 1198 	inc	dptr
      001755 F0               [24] 1199 	movx	@dptr,a
      001756 90 00 00         [24] 1200 	mov	dptr,#0x0000
                                   1201 ;	../Common/CentralHeating.c:265: }
      001759 02 16 BC         [24] 1202 	ljmp	_PartialWriteToScreen
                                   1203 ;------------------------------------------------------------
                                   1204 ;Allocation info for local variables in function 'HandleMenuCommand'
                                   1205 ;------------------------------------------------------------
                                   1206 ;eventType     Allocated with name '_HandleMenuCommand_PARM_2'
                                   1207 ;menuItem      Allocated with name '_HandleMenuCommand_menuItem_10000_59'
                                   1208 ;dt            Allocated with name '_HandleMenuCommand_dt_10000_60'
                                   1209 ;------------------------------------------------------------
                                   1210 ;	../Common/CentralHeating.c:267: void HandleMenuCommand(int menuItem, int eventType)
                                   1211 ;	-----------------------------------------
                                   1212 ;	 function HandleMenuCommand
                                   1213 ;	-----------------------------------------
      00175C                       1214 _HandleMenuCommand:
      00175C AF 83            [24] 1215 	mov	r7,dph
      00175E E5 82            [12] 1216 	mov	a,dpl
      001760 90 01 EC         [24] 1217 	mov	dptr,#_HandleMenuCommand_menuItem_10000_59
      001763 F0               [24] 1218 	movx	@dptr,a
      001764 EF               [12] 1219 	mov	a,r7
      001765 A3               [24] 1220 	inc	dptr
      001766 F0               [24] 1221 	movx	@dptr,a
                                   1222 ;	../Common/CentralHeating.c:270: switch (menuItem)
      001767 90 01 EC         [24] 1223 	mov	dptr,#_HandleMenuCommand_menuItem_10000_59
      00176A E0               [24] 1224 	movx	a,@dptr
      00176B FE               [12] 1225 	mov	r6,a
      00176C A3               [24] 1226 	inc	dptr
      00176D E0               [24] 1227 	movx	a,@dptr
      00176E FF               [12] 1228 	mov	r7,a
      00176F C3               [12] 1229 	clr	c
      001770 EE               [12] 1230 	mov	a,r6
      001771 94 0B            [12] 1231 	subb	a,#0x0b
      001773 EF               [12] 1232 	mov	a,r7
      001774 64 80            [12] 1233 	xrl	a,#0x80
      001776 94 80            [12] 1234 	subb	a,#0x80
      001778 50 01            [24] 1235 	jnc	00418$
      00177A 22               [24] 1236 	ret
      00177B                       1237 00418$:
      00177B C3               [12] 1238 	clr	c
      00177C 74 2A            [12] 1239 	mov	a,#0x2a
      00177E 9E               [12] 1240 	subb	a,r6
      00177F 74 80            [12] 1241 	mov	a,#(0x00 ^ 0x80)
      001781 8F F0            [24] 1242 	mov	b,r7
      001783 63 F0 80         [24] 1243 	xrl	b,#0x80
      001786 95 F0            [12] 1244 	subb	a,b
      001788 50 01            [24] 1245 	jnc	00419$
      00178A 22               [24] 1246 	ret
      00178B                       1247 00419$:
      00178B EE               [12] 1248 	mov	a,r6
      00178C 24 F5            [12] 1249 	add	a,#0xf5
      00178E FE               [12] 1250 	mov	r6,a
      00178F 24 0A            [12] 1251 	add	a,#(00420$-3-.)
      001791 83               [24] 1252 	movc	a,@a+pc
      001792 F5 82            [12] 1253 	mov	dpl,a
      001794 EE               [12] 1254 	mov	a,r6
      001795 24 24            [12] 1255 	add	a,#(00421$-3-.)
      001797 83               [24] 1256 	movc	a,@a+pc
      001798 F5 83            [12] 1257 	mov	dph,a
      00179A E4               [12] 1258 	clr	a
      00179B 73               [24] 1259 	jmp	@a+dptr
      00179C                       1260 00420$:
      00179C 01                    1261 	.db	00103$
      00179D 5D                    1262 	.db	00115$
      00179E CE                    1263 	.db	00120$
      00179F 22                    1264 	.db	00125$
      0017A0 76                    1265 	.db	00130$
      0017A1 CA                    1266 	.db	00135$
      0017A2 1E                    1267 	.db	00140$
      0017A3 31                    1268 	.db	00200$
      0017A4 31                    1269 	.db	00200$
      0017A5 2F                    1270 	.db	00109$
      0017A6 DA                    1271 	.db	00169$
      0017A7 72                    1272 	.db	00145$
      0017A8 CC                    1273 	.db	00151$
      0017A9 26                    1274 	.db	00157$
      0017AA 80                    1275 	.db	00163$
      0017AB 31                    1276 	.db	00200$
      0017AC 31                    1277 	.db	00200$
      0017AD 31                    1278 	.db	00200$
      0017AE 31                    1279 	.db	00200$
      0017AF 24                    1280 	.db	00172$
      0017B0 5B                    1281 	.db	00178$
      0017B1 7B                    1282 	.db	00181$
      0017B2 9B                    1283 	.db	00184$
      0017B3 BB                    1284 	.db	00187$
      0017B4 DB                    1285 	.db	00190$
      0017B5 F8                    1286 	.db	00193$
      0017B6 15                    1287 	.db	00196$
      0017B7 31                    1288 	.db	00200$
      0017B8 31                    1289 	.db	00200$
      0017B9 31                    1290 	.db	00200$
      0017BA DC                    1291 	.db	00101$
      0017BB FB                    1292 	.db	00102$
      0017BC                       1293 00421$:
      0017BC 18                    1294 	.db	00103$>>8
      0017BD 18                    1295 	.db	00115$>>8
      0017BE 18                    1296 	.db	00120$>>8
      0017BF 19                    1297 	.db	00125$>>8
      0017C0 19                    1298 	.db	00130$>>8
      0017C1 19                    1299 	.db	00135$>>8
      0017C2 1A                    1300 	.db	00140$>>8
      0017C3 1D                    1301 	.db	00200$>>8
      0017C4 1D                    1302 	.db	00200$>>8
      0017C5 18                    1303 	.db	00109$>>8
      0017C6 1B                    1304 	.db	00169$>>8
      0017C7 1A                    1305 	.db	00145$>>8
      0017C8 1A                    1306 	.db	00151$>>8
      0017C9 1B                    1307 	.db	00157$>>8
      0017CA 1B                    1308 	.db	00163$>>8
      0017CB 1D                    1309 	.db	00200$>>8
      0017CC 1D                    1310 	.db	00200$>>8
      0017CD 1D                    1311 	.db	00200$>>8
      0017CE 1D                    1312 	.db	00200$>>8
      0017CF 1C                    1313 	.db	00172$>>8
      0017D0 1C                    1314 	.db	00178$>>8
      0017D1 1C                    1315 	.db	00181$>>8
      0017D2 1C                    1316 	.db	00184$>>8
      0017D3 1C                    1317 	.db	00187$>>8
      0017D4 1C                    1318 	.db	00190$>>8
      0017D5 1C                    1319 	.db	00193$>>8
      0017D6 1D                    1320 	.db	00196$>>8
      0017D7 1D                    1321 	.db	00200$>>8
      0017D8 1D                    1322 	.db	00200$>>8
      0017D9 1D                    1323 	.db	00200$>>8
      0017DA 17                    1324 	.db	00101$>>8
      0017DB 17                    1325 	.db	00102$>>8
                                   1326 ;	../Common/CentralHeating.c:272: case MENUID_HOTWATER1HR :
      0017DC                       1327 00101$:
                                   1328 ;	../Common/CentralHeating.c:273: AddSecondsToDateTime(&currentDateTime, 3600, &provideHotwaterUntil);
      0017DC 90 02 A5         [24] 1329 	mov	dptr,#_AddSecondsToDateTime_PARM_2
      0017DF 74 10            [12] 1330 	mov	a,#0x10
      0017E1 F0               [24] 1331 	movx	@dptr,a
      0017E2 74 0E            [12] 1332 	mov	a,#0x0e
      0017E4 A3               [24] 1333 	inc	dptr
      0017E5 F0               [24] 1334 	movx	@dptr,a
      0017E6 90 02 A7         [24] 1335 	mov	dptr,#_AddSecondsToDateTime_PARM_3
      0017E9 74 C7            [12] 1336 	mov	a,#_provideHotwaterUntil
      0017EB F0               [24] 1337 	movx	@dptr,a
      0017EC 74 01            [12] 1338 	mov	a,#(_provideHotwaterUntil >> 8)
      0017EE A3               [24] 1339 	inc	dptr
      0017EF F0               [24] 1340 	movx	@dptr,a
      0017F0 E4               [12] 1341 	clr	a
      0017F1 A3               [24] 1342 	inc	dptr
      0017F2 F0               [24] 1343 	movx	@dptr,a
      0017F3 90 01 C0         [24] 1344 	mov	dptr,#_currentDateTime
      0017F6 F5 F0            [12] 1345 	mov	b,a
                                   1346 ;	../Common/CentralHeating.c:274: break;
      0017F8 02 33 8F         [24] 1347 	ljmp	_AddSecondsToDateTime
                                   1348 ;	../Common/CentralHeating.c:276: case MENUID_HOTWATERRST :
      0017FB                       1349 00102$:
                                   1350 ;	../Common/CentralHeating.c:277: provideHotwaterUntil.year = 0;
      0017FB 90 01 CD         [24] 1351 	mov	dptr,#(_provideHotwaterUntil + 0x0006)
      0017FE E4               [12] 1352 	clr	a
      0017FF F0               [24] 1353 	movx	@dptr,a
                                   1354 ;	../Common/CentralHeating.c:278: break;
      001800 22               [24] 1355 	ret
                                   1356 ;	../Common/CentralHeating.c:280: case MENUID_SETDATE :
      001801                       1357 00103$:
                                   1358 ;	../Common/CentralHeating.c:281: if (eventType == MENU_SUBMENUENTER)
      001801 90 01 EA         [24] 1359 	mov	dptr,#_HandleMenuCommand_PARM_2
      001804 E0               [24] 1360 	movx	a,@dptr
      001805 FE               [12] 1361 	mov	r6,a
      001806 A3               [24] 1362 	inc	dptr
      001807 E0               [24] 1363 	movx	a,@dptr
      001808 FF               [12] 1364 	mov	r7,a
      001809 BE 03 11         [24] 1365 	cjne	r6,#0x03,00107$
      00180C BF 00 0E         [24] 1366 	cjne	r7,#0x00,00107$
                                   1367 ;	../Common/CentralHeating.c:283: currentScreen = SCREEN_SETDATE;
      00180F 90 01 BA         [24] 1368 	mov	dptr,#_currentScreen
      001812 74 02            [12] 1369 	mov	a,#0x02
      001814 F0               [24] 1370 	movx	@dptr,a
                                   1371 ;	../Common/CentralHeating.c:284: flashDateTime = 0;
      001815 90 01 BB         [24] 1372 	mov	dptr,#_flashDateTime
      001818 E4               [12] 1373 	clr	a
      001819 F0               [24] 1374 	movx	@dptr,a
                                   1375 ;	../Common/CentralHeating.c:285: ClearTopLine();
      00181A 02 17 3F         [24] 1376 	ljmp	_ClearTopLine
      00181D                       1377 00107$:
                                   1378 ;	../Common/CentralHeating.c:287: else if (eventType == MENU_SUBMENUEXIT)
      00181D BE 04 05         [24] 1379 	cjne	r6,#0x04,00424$
      001820 BF 00 02         [24] 1380 	cjne	r7,#0x00,00424$
      001823 80 01            [24] 1381 	sjmp	00425$
      001825                       1382 00424$:
      001825 22               [24] 1383 	ret
      001826                       1384 00425$:
                                   1385 ;	../Common/CentralHeating.c:289: currentScreen = SCREEN_HOME;
      001826 90 01 BA         [24] 1386 	mov	dptr,#_currentScreen
      001829 74 01            [12] 1387 	mov	a,#0x01
      00182B F0               [24] 1388 	movx	@dptr,a
                                   1389 ;	../Common/CentralHeating.c:290: ClearTopLine();
                                   1390 ;	../Common/CentralHeating.c:292: break;
      00182C 02 17 3F         [24] 1391 	ljmp	_ClearTopLine
                                   1392 ;	../Common/CentralHeating.c:294: case MENUID_SETTIME :
      00182F                       1393 00109$:
                                   1394 ;	../Common/CentralHeating.c:295: if (eventType == MENU_SUBMENUENTER)
      00182F 90 01 EA         [24] 1395 	mov	dptr,#_HandleMenuCommand_PARM_2
      001832 E0               [24] 1396 	movx	a,@dptr
      001833 FE               [12] 1397 	mov	r6,a
      001834 A3               [24] 1398 	inc	dptr
      001835 E0               [24] 1399 	movx	a,@dptr
      001836 FF               [12] 1400 	mov	r7,a
      001837 BE 03 11         [24] 1401 	cjne	r6,#0x03,00113$
      00183A BF 00 0E         [24] 1402 	cjne	r7,#0x00,00113$
                                   1403 ;	../Common/CentralHeating.c:297: currentScreen = SCREEN_SETTIME;
      00183D 90 01 BA         [24] 1404 	mov	dptr,#_currentScreen
      001840 74 03            [12] 1405 	mov	a,#0x03
      001842 F0               [24] 1406 	movx	@dptr,a
                                   1407 ;	../Common/CentralHeating.c:298: flashDateTime = 0;
      001843 90 01 BB         [24] 1408 	mov	dptr,#_flashDateTime
      001846 E4               [12] 1409 	clr	a
      001847 F0               [24] 1410 	movx	@dptr,a
                                   1411 ;	../Common/CentralHeating.c:299: ClearTopLine();
      001848 02 17 3F         [24] 1412 	ljmp	_ClearTopLine
      00184B                       1413 00113$:
                                   1414 ;	../Common/CentralHeating.c:301: else if (eventType == MENU_SUBMENUEXIT)
      00184B BE 04 05         [24] 1415 	cjne	r6,#0x04,00428$
      00184E BF 00 02         [24] 1416 	cjne	r7,#0x00,00428$
      001851 80 01            [24] 1417 	sjmp	00429$
      001853                       1418 00428$:
      001853 22               [24] 1419 	ret
      001854                       1420 00429$:
                                   1421 ;	../Common/CentralHeating.c:303: currentScreen = SCREEN_HOME;
      001854 90 01 BA         [24] 1422 	mov	dptr,#_currentScreen
      001857 74 01            [12] 1423 	mov	a,#0x01
      001859 F0               [24] 1424 	movx	@dptr,a
                                   1425 ;	../Common/CentralHeating.c:304: ClearTopLine();
                                   1426 ;	../Common/CentralHeating.c:306: break;
      00185A 02 17 3F         [24] 1427 	ljmp	_ClearTopLine
                                   1428 ;	../Common/CentralHeating.c:308: case MENUID_ADDDAY :
      00185D                       1429 00115$:
                                   1430 ;	../Common/CentralHeating.c:309: if (eventType == MENU_COMMAND)
      00185D 90 01 EA         [24] 1431 	mov	dptr,#_HandleMenuCommand_PARM_2
      001860 E0               [24] 1432 	movx	a,@dptr
      001861 FE               [12] 1433 	mov	r6,a
      001862 A3               [24] 1434 	inc	dptr
      001863 E0               [24] 1435 	movx	a,@dptr
      001864 FF               [12] 1436 	mov	r7,a
      001865 BE 02 05         [24] 1437 	cjne	r6,#0x02,00430$
      001868 BF 00 02         [24] 1438 	cjne	r7,#0x00,00430$
      00186B 80 01            [24] 1439 	sjmp	00431$
      00186D                       1440 00430$:
      00186D 22               [24] 1441 	ret
      00186E                       1442 00431$:
                                   1443 ;	../Common/CentralHeating.c:311: pGetRtc(&dt);
      00186E 12 18 73         [24] 1444 	lcall	00432$
      001871 80 11            [24] 1445 	sjmp	00433$
      001873                       1446 00432$:
      001873 90 00 05         [24] 1447 	mov	dptr,#_pGetRtc
      001876 E0               [24] 1448 	movx	a,@dptr
      001877 C0 E0            [24] 1449 	push	acc
      001879 A3               [24] 1450 	inc	dptr
      00187A E0               [24] 1451 	movx	a,@dptr
      00187B C0 E0            [24] 1452 	push	acc
      00187D 90 01 EE         [24] 1453 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      001880 75 F0 00         [24] 1454 	mov	b, #0x00
      001883 22               [24] 1455 	ret
      001884                       1456 00433$:
                                   1457 ;	../Common/CentralHeating.c:312: if (dt.day == GetNumDaysInMonth(&dt))
      001884 90 01 F2         [24] 1458 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0004)
      001887 E0               [24] 1459 	movx	a,@dptr
      001888 FF               [12] 1460 	mov	r7,a
      001889 90 01 EE         [24] 1461 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      00188C 75 F0 00         [24] 1462 	mov	b, #0x00
      00188F C0 07            [24] 1463 	push	ar7
      001891 12 2F 93         [24] 1464 	lcall	_GetNumDaysInMonth
      001894 AD 82            [24] 1465 	mov	r5, dpl
      001896 AE 83            [24] 1466 	mov	r6, dph
      001898 D0 07            [24] 1467 	pop	ar7
      00189A 7C 00            [12] 1468 	mov	r4,#0x00
      00189C EF               [12] 1469 	mov	a,r7
      00189D B5 05 05         [24] 1470 	cjne	a,ar5,00434$
      0018A0 EC               [12] 1471 	mov	a,r4
      0018A1 B5 06 01         [24] 1472 	cjne	a,ar6,00434$
      0018A4 22               [24] 1473 	ret
      0018A5                       1474 00434$:
                                   1475 ;	../Common/CentralHeating.c:316: dt.day++;
      0018A5 90 01 F2         [24] 1476 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0004)
      0018A8 E0               [24] 1477 	movx	a,@dptr
      0018A9 FF               [12] 1478 	mov	r7,a
      0018AA 0F               [12] 1479 	inc	r7
      0018AB 90 01 F2         [24] 1480 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0004)
      0018AE EF               [12] 1481 	mov	a,r7
      0018AF F0               [24] 1482 	movx	@dptr,a
                                   1483 ;	../Common/CentralHeating.c:317: pSetRtc(&dt);
      0018B0 12 18 B5         [24] 1484 	lcall	00435$
      0018B3 80 11            [24] 1485 	sjmp	00436$
      0018B5                       1486 00435$:
      0018B5 90 00 07         [24] 1487 	mov	dptr,#_pSetRtc
      0018B8 E0               [24] 1488 	movx	a,@dptr
      0018B9 C0 E0            [24] 1489 	push	acc
      0018BB A3               [24] 1490 	inc	dptr
      0018BC E0               [24] 1491 	movx	a,@dptr
      0018BD C0 E0            [24] 1492 	push	acc
      0018BF 90 01 EE         [24] 1493 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      0018C2 75 F0 00         [24] 1494 	mov	b, #0x00
      0018C5 22               [24] 1495 	ret
      0018C6                       1496 00436$:
                                   1497 ;	../Common/CentralHeating.c:318: flashDateTime = 0;
      0018C6 90 01 BB         [24] 1498 	mov	dptr,#_flashDateTime
      0018C9 E4               [12] 1499 	clr	a
      0018CA F0               [24] 1500 	movx	@dptr,a
                                   1501 ;	../Common/CentralHeating.c:319: PreviewDateAdjustment();
                                   1502 ;	../Common/CentralHeating.c:321: break;
      0018CB 02 1D CA         [24] 1503 	ljmp	_PreviewDateAdjustment
                                   1504 ;	../Common/CentralHeating.c:323: case MENUID_SUBDAY :
      0018CE                       1505 00120$:
                                   1506 ;	../Common/CentralHeating.c:324: if (eventType == MENU_COMMAND)
      0018CE 90 01 EA         [24] 1507 	mov	dptr,#_HandleMenuCommand_PARM_2
      0018D1 E0               [24] 1508 	movx	a,@dptr
      0018D2 FE               [12] 1509 	mov	r6,a
      0018D3 A3               [24] 1510 	inc	dptr
      0018D4 E0               [24] 1511 	movx	a,@dptr
      0018D5 FF               [12] 1512 	mov	r7,a
      0018D6 BE 02 05         [24] 1513 	cjne	r6,#0x02,00437$
      0018D9 BF 00 02         [24] 1514 	cjne	r7,#0x00,00437$
      0018DC 80 01            [24] 1515 	sjmp	00438$
      0018DE                       1516 00437$:
      0018DE 22               [24] 1517 	ret
      0018DF                       1518 00438$:
                                   1519 ;	../Common/CentralHeating.c:326: pGetRtc(&dt);
      0018DF 12 18 E4         [24] 1520 	lcall	00439$
      0018E2 80 11            [24] 1521 	sjmp	00440$
      0018E4                       1522 00439$:
      0018E4 90 00 05         [24] 1523 	mov	dptr,#_pGetRtc
      0018E7 E0               [24] 1524 	movx	a,@dptr
      0018E8 C0 E0            [24] 1525 	push	acc
      0018EA A3               [24] 1526 	inc	dptr
      0018EB E0               [24] 1527 	movx	a,@dptr
      0018EC C0 E0            [24] 1528 	push	acc
      0018EE 90 01 EE         [24] 1529 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      0018F1 75 F0 00         [24] 1530 	mov	b, #0x00
      0018F4 22               [24] 1531 	ret
      0018F5                       1532 00440$:
                                   1533 ;	../Common/CentralHeating.c:327: if (dt.day == 1)
      0018F5 90 01 F2         [24] 1534 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0004)
      0018F8 E0               [24] 1535 	movx	a,@dptr
      0018F9 FF               [12] 1536 	mov	r7,a
      0018FA BF 01 01         [24] 1537 	cjne	r7,#0x01,00441$
      0018FD 22               [24] 1538 	ret
      0018FE                       1539 00441$:
                                   1540 ;	../Common/CentralHeating.c:331: dt.day--;
      0018FE 1F               [12] 1541 	dec	r7
      0018FF 90 01 F2         [24] 1542 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0004)
      001902 EF               [12] 1543 	mov	a,r7
      001903 F0               [24] 1544 	movx	@dptr,a
                                   1545 ;	../Common/CentralHeating.c:332: pSetRtc(&dt);
      001904 12 19 09         [24] 1546 	lcall	00442$
      001907 80 11            [24] 1547 	sjmp	00443$
      001909                       1548 00442$:
      001909 90 00 07         [24] 1549 	mov	dptr,#_pSetRtc
      00190C E0               [24] 1550 	movx	a,@dptr
      00190D C0 E0            [24] 1551 	push	acc
      00190F A3               [24] 1552 	inc	dptr
      001910 E0               [24] 1553 	movx	a,@dptr
      001911 C0 E0            [24] 1554 	push	acc
      001913 90 01 EE         [24] 1555 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      001916 75 F0 00         [24] 1556 	mov	b, #0x00
      001919 22               [24] 1557 	ret
      00191A                       1558 00443$:
                                   1559 ;	../Common/CentralHeating.c:333: flashDateTime = 0;
      00191A 90 01 BB         [24] 1560 	mov	dptr,#_flashDateTime
      00191D E4               [12] 1561 	clr	a
      00191E F0               [24] 1562 	movx	@dptr,a
                                   1563 ;	../Common/CentralHeating.c:334: PreviewDateAdjustment();
                                   1564 ;	../Common/CentralHeating.c:336: break;
      00191F 02 1D CA         [24] 1565 	ljmp	_PreviewDateAdjustment
                                   1566 ;	../Common/CentralHeating.c:338: case MENUID_ADDMONTH :
      001922                       1567 00125$:
                                   1568 ;	../Common/CentralHeating.c:339: if (eventType == MENU_COMMAND)
      001922 90 01 EA         [24] 1569 	mov	dptr,#_HandleMenuCommand_PARM_2
      001925 E0               [24] 1570 	movx	a,@dptr
      001926 FE               [12] 1571 	mov	r6,a
      001927 A3               [24] 1572 	inc	dptr
      001928 E0               [24] 1573 	movx	a,@dptr
      001929 FF               [12] 1574 	mov	r7,a
      00192A BE 02 05         [24] 1575 	cjne	r6,#0x02,00444$
      00192D BF 00 02         [24] 1576 	cjne	r7,#0x00,00444$
      001930 80 01            [24] 1577 	sjmp	00445$
      001932                       1578 00444$:
      001932 22               [24] 1579 	ret
      001933                       1580 00445$:
                                   1581 ;	../Common/CentralHeating.c:341: pGetRtc(&dt);
      001933 12 19 38         [24] 1582 	lcall	00446$
      001936 80 11            [24] 1583 	sjmp	00447$
      001938                       1584 00446$:
      001938 90 00 05         [24] 1585 	mov	dptr,#_pGetRtc
      00193B E0               [24] 1586 	movx	a,@dptr
      00193C C0 E0            [24] 1587 	push	acc
      00193E A3               [24] 1588 	inc	dptr
      00193F E0               [24] 1589 	movx	a,@dptr
      001940 C0 E0            [24] 1590 	push	acc
      001942 90 01 EE         [24] 1591 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      001945 75 F0 00         [24] 1592 	mov	b, #0x00
      001948 22               [24] 1593 	ret
      001949                       1594 00447$:
                                   1595 ;	../Common/CentralHeating.c:342: if (dt.month == 12)
      001949 90 01 F3         [24] 1596 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0005)
      00194C E0               [24] 1597 	movx	a,@dptr
      00194D FF               [12] 1598 	mov	r7,a
      00194E BF 0C 01         [24] 1599 	cjne	r7,#0x0c,00448$
      001951 22               [24] 1600 	ret
      001952                       1601 00448$:
                                   1602 ;	../Common/CentralHeating.c:346: dt.month++;
      001952 0F               [12] 1603 	inc	r7
      001953 90 01 F3         [24] 1604 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0005)
      001956 EF               [12] 1605 	mov	a,r7
      001957 F0               [24] 1606 	movx	@dptr,a
                                   1607 ;	../Common/CentralHeating.c:347: pSetRtc(&dt);
      001958 12 19 5D         [24] 1608 	lcall	00449$
      00195B 80 11            [24] 1609 	sjmp	00450$
      00195D                       1610 00449$:
      00195D 90 00 07         [24] 1611 	mov	dptr,#_pSetRtc
      001960 E0               [24] 1612 	movx	a,@dptr
      001961 C0 E0            [24] 1613 	push	acc
      001963 A3               [24] 1614 	inc	dptr
      001964 E0               [24] 1615 	movx	a,@dptr
      001965 C0 E0            [24] 1616 	push	acc
      001967 90 01 EE         [24] 1617 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      00196A 75 F0 00         [24] 1618 	mov	b, #0x00
      00196D 22               [24] 1619 	ret
      00196E                       1620 00450$:
                                   1621 ;	../Common/CentralHeating.c:348: flashDateTime = 0;
      00196E 90 01 BB         [24] 1622 	mov	dptr,#_flashDateTime
      001971 E4               [12] 1623 	clr	a
      001972 F0               [24] 1624 	movx	@dptr,a
                                   1625 ;	../Common/CentralHeating.c:349: PreviewDateAdjustment();
                                   1626 ;	../Common/CentralHeating.c:351: break;
      001973 02 1D CA         [24] 1627 	ljmp	_PreviewDateAdjustment
                                   1628 ;	../Common/CentralHeating.c:353: case MENUID_SUBMONTH :
      001976                       1629 00130$:
                                   1630 ;	../Common/CentralHeating.c:354: if (eventType == MENU_COMMAND)
      001976 90 01 EA         [24] 1631 	mov	dptr,#_HandleMenuCommand_PARM_2
      001979 E0               [24] 1632 	movx	a,@dptr
      00197A FE               [12] 1633 	mov	r6,a
      00197B A3               [24] 1634 	inc	dptr
      00197C E0               [24] 1635 	movx	a,@dptr
      00197D FF               [12] 1636 	mov	r7,a
      00197E BE 02 05         [24] 1637 	cjne	r6,#0x02,00451$
      001981 BF 00 02         [24] 1638 	cjne	r7,#0x00,00451$
      001984 80 01            [24] 1639 	sjmp	00452$
      001986                       1640 00451$:
      001986 22               [24] 1641 	ret
      001987                       1642 00452$:
                                   1643 ;	../Common/CentralHeating.c:356: pGetRtc(&dt);
      001987 12 19 8C         [24] 1644 	lcall	00453$
      00198A 80 11            [24] 1645 	sjmp	00454$
      00198C                       1646 00453$:
      00198C 90 00 05         [24] 1647 	mov	dptr,#_pGetRtc
      00198F E0               [24] 1648 	movx	a,@dptr
      001990 C0 E0            [24] 1649 	push	acc
      001992 A3               [24] 1650 	inc	dptr
      001993 E0               [24] 1651 	movx	a,@dptr
      001994 C0 E0            [24] 1652 	push	acc
      001996 90 01 EE         [24] 1653 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      001999 75 F0 00         [24] 1654 	mov	b, #0x00
      00199C 22               [24] 1655 	ret
      00199D                       1656 00454$:
                                   1657 ;	../Common/CentralHeating.c:357: if (dt.month == 1)
      00199D 90 01 F3         [24] 1658 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0005)
      0019A0 E0               [24] 1659 	movx	a,@dptr
      0019A1 FF               [12] 1660 	mov	r7,a
      0019A2 BF 01 01         [24] 1661 	cjne	r7,#0x01,00455$
      0019A5 22               [24] 1662 	ret
      0019A6                       1663 00455$:
                                   1664 ;	../Common/CentralHeating.c:361: dt.month--;
      0019A6 1F               [12] 1665 	dec	r7
      0019A7 90 01 F3         [24] 1666 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0005)
      0019AA EF               [12] 1667 	mov	a,r7
      0019AB F0               [24] 1668 	movx	@dptr,a
                                   1669 ;	../Common/CentralHeating.c:362: pSetRtc(&dt);
      0019AC 12 19 B1         [24] 1670 	lcall	00456$
      0019AF 80 11            [24] 1671 	sjmp	00457$
      0019B1                       1672 00456$:
      0019B1 90 00 07         [24] 1673 	mov	dptr,#_pSetRtc
      0019B4 E0               [24] 1674 	movx	a,@dptr
      0019B5 C0 E0            [24] 1675 	push	acc
      0019B7 A3               [24] 1676 	inc	dptr
      0019B8 E0               [24] 1677 	movx	a,@dptr
      0019B9 C0 E0            [24] 1678 	push	acc
      0019BB 90 01 EE         [24] 1679 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      0019BE 75 F0 00         [24] 1680 	mov	b, #0x00
      0019C1 22               [24] 1681 	ret
      0019C2                       1682 00457$:
                                   1683 ;	../Common/CentralHeating.c:363: flashDateTime = 0;
      0019C2 90 01 BB         [24] 1684 	mov	dptr,#_flashDateTime
      0019C5 E4               [12] 1685 	clr	a
      0019C6 F0               [24] 1686 	movx	@dptr,a
                                   1687 ;	../Common/CentralHeating.c:364: PreviewDateAdjustment();
                                   1688 ;	../Common/CentralHeating.c:366: break;
      0019C7 02 1D CA         [24] 1689 	ljmp	_PreviewDateAdjustment
                                   1690 ;	../Common/CentralHeating.c:368: case MENUID_ADDYEAR :
      0019CA                       1691 00135$:
                                   1692 ;	../Common/CentralHeating.c:369: if (eventType == MENU_COMMAND)
      0019CA 90 01 EA         [24] 1693 	mov	dptr,#_HandleMenuCommand_PARM_2
      0019CD E0               [24] 1694 	movx	a,@dptr
      0019CE FE               [12] 1695 	mov	r6,a
      0019CF A3               [24] 1696 	inc	dptr
      0019D0 E0               [24] 1697 	movx	a,@dptr
      0019D1 FF               [12] 1698 	mov	r7,a
      0019D2 BE 02 05         [24] 1699 	cjne	r6,#0x02,00458$
      0019D5 BF 00 02         [24] 1700 	cjne	r7,#0x00,00458$
      0019D8 80 01            [24] 1701 	sjmp	00459$
      0019DA                       1702 00458$:
      0019DA 22               [24] 1703 	ret
      0019DB                       1704 00459$:
                                   1705 ;	../Common/CentralHeating.c:371: pGetRtc(&dt);
      0019DB 12 19 E0         [24] 1706 	lcall	00460$
      0019DE 80 11            [24] 1707 	sjmp	00461$
      0019E0                       1708 00460$:
      0019E0 90 00 05         [24] 1709 	mov	dptr,#_pGetRtc
      0019E3 E0               [24] 1710 	movx	a,@dptr
      0019E4 C0 E0            [24] 1711 	push	acc
      0019E6 A3               [24] 1712 	inc	dptr
      0019E7 E0               [24] 1713 	movx	a,@dptr
      0019E8 C0 E0            [24] 1714 	push	acc
      0019EA 90 01 EE         [24] 1715 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      0019ED 75 F0 00         [24] 1716 	mov	b, #0x00
      0019F0 22               [24] 1717 	ret
      0019F1                       1718 00461$:
                                   1719 ;	../Common/CentralHeating.c:372: if (dt.year == 50)
      0019F1 90 01 F4         [24] 1720 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0006)
      0019F4 E0               [24] 1721 	movx	a,@dptr
      0019F5 FF               [12] 1722 	mov	r7,a
      0019F6 BF 32 01         [24] 1723 	cjne	r7,#0x32,00462$
      0019F9 22               [24] 1724 	ret
      0019FA                       1725 00462$:
                                   1726 ;	../Common/CentralHeating.c:376: dt.year++;
      0019FA 0F               [12] 1727 	inc	r7
      0019FB 90 01 F4         [24] 1728 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0006)
      0019FE EF               [12] 1729 	mov	a,r7
      0019FF F0               [24] 1730 	movx	@dptr,a
                                   1731 ;	../Common/CentralHeating.c:377: pSetRtc(&dt);
      001A00 12 1A 05         [24] 1732 	lcall	00463$
      001A03 80 11            [24] 1733 	sjmp	00464$
      001A05                       1734 00463$:
      001A05 90 00 07         [24] 1735 	mov	dptr,#_pSetRtc
      001A08 E0               [24] 1736 	movx	a,@dptr
      001A09 C0 E0            [24] 1737 	push	acc
      001A0B A3               [24] 1738 	inc	dptr
      001A0C E0               [24] 1739 	movx	a,@dptr
      001A0D C0 E0            [24] 1740 	push	acc
      001A0F 90 01 EE         [24] 1741 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      001A12 75 F0 00         [24] 1742 	mov	b, #0x00
      001A15 22               [24] 1743 	ret
      001A16                       1744 00464$:
                                   1745 ;	../Common/CentralHeating.c:378: flashDateTime = 0;
      001A16 90 01 BB         [24] 1746 	mov	dptr,#_flashDateTime
      001A19 E4               [12] 1747 	clr	a
      001A1A F0               [24] 1748 	movx	@dptr,a
                                   1749 ;	../Common/CentralHeating.c:379: PreviewDateAdjustment();
                                   1750 ;	../Common/CentralHeating.c:381: break;
      001A1B 02 1D CA         [24] 1751 	ljmp	_PreviewDateAdjustment
                                   1752 ;	../Common/CentralHeating.c:383: case MENUID_SUBYEAR :
      001A1E                       1753 00140$:
                                   1754 ;	../Common/CentralHeating.c:384: if (eventType == MENU_COMMAND)
      001A1E 90 01 EA         [24] 1755 	mov	dptr,#_HandleMenuCommand_PARM_2
      001A21 E0               [24] 1756 	movx	a,@dptr
      001A22 FE               [12] 1757 	mov	r6,a
      001A23 A3               [24] 1758 	inc	dptr
      001A24 E0               [24] 1759 	movx	a,@dptr
      001A25 FF               [12] 1760 	mov	r7,a
      001A26 BE 02 05         [24] 1761 	cjne	r6,#0x02,00465$
      001A29 BF 00 02         [24] 1762 	cjne	r7,#0x00,00465$
      001A2C 80 01            [24] 1763 	sjmp	00466$
      001A2E                       1764 00465$:
      001A2E 22               [24] 1765 	ret
      001A2F                       1766 00466$:
                                   1767 ;	../Common/CentralHeating.c:386: pGetRtc(&dt);
      001A2F 12 1A 34         [24] 1768 	lcall	00467$
      001A32 80 11            [24] 1769 	sjmp	00468$
      001A34                       1770 00467$:
      001A34 90 00 05         [24] 1771 	mov	dptr,#_pGetRtc
      001A37 E0               [24] 1772 	movx	a,@dptr
      001A38 C0 E0            [24] 1773 	push	acc
      001A3A A3               [24] 1774 	inc	dptr
      001A3B E0               [24] 1775 	movx	a,@dptr
      001A3C C0 E0            [24] 1776 	push	acc
      001A3E 90 01 EE         [24] 1777 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      001A41 75 F0 00         [24] 1778 	mov	b, #0x00
      001A44 22               [24] 1779 	ret
      001A45                       1780 00468$:
                                   1781 ;	../Common/CentralHeating.c:387: if (dt.year == 10)
      001A45 90 01 F4         [24] 1782 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0006)
      001A48 E0               [24] 1783 	movx	a,@dptr
      001A49 FF               [12] 1784 	mov	r7,a
      001A4A BF 0A 01         [24] 1785 	cjne	r7,#0x0a,00469$
      001A4D 22               [24] 1786 	ret
      001A4E                       1787 00469$:
                                   1788 ;	../Common/CentralHeating.c:391: dt.year--;
      001A4E 1F               [12] 1789 	dec	r7
      001A4F 90 01 F4         [24] 1790 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0006)
      001A52 EF               [12] 1791 	mov	a,r7
      001A53 F0               [24] 1792 	movx	@dptr,a
                                   1793 ;	../Common/CentralHeating.c:392: pSetRtc(&dt);
      001A54 12 1A 59         [24] 1794 	lcall	00470$
      001A57 80 11            [24] 1795 	sjmp	00471$
      001A59                       1796 00470$:
      001A59 90 00 07         [24] 1797 	mov	dptr,#_pSetRtc
      001A5C E0               [24] 1798 	movx	a,@dptr
      001A5D C0 E0            [24] 1799 	push	acc
      001A5F A3               [24] 1800 	inc	dptr
      001A60 E0               [24] 1801 	movx	a,@dptr
      001A61 C0 E0            [24] 1802 	push	acc
      001A63 90 01 EE         [24] 1803 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      001A66 75 F0 00         [24] 1804 	mov	b, #0x00
      001A69 22               [24] 1805 	ret
      001A6A                       1806 00471$:
                                   1807 ;	../Common/CentralHeating.c:393: flashDateTime = 0;
      001A6A 90 01 BB         [24] 1808 	mov	dptr,#_flashDateTime
      001A6D E4               [12] 1809 	clr	a
      001A6E F0               [24] 1810 	movx	@dptr,a
                                   1811 ;	../Common/CentralHeating.c:394: PreviewDateAdjustment();
                                   1812 ;	../Common/CentralHeating.c:396: break;
      001A6F 02 1D CA         [24] 1813 	ljmp	_PreviewDateAdjustment
                                   1814 ;	../Common/CentralHeating.c:399: case MENUID_ADDMINUTE :
      001A72                       1815 00145$:
                                   1816 ;	../Common/CentralHeating.c:400: if (eventType == MENU_COMMAND)
      001A72 90 01 EA         [24] 1817 	mov	dptr,#_HandleMenuCommand_PARM_2
      001A75 E0               [24] 1818 	movx	a,@dptr
      001A76 FE               [12] 1819 	mov	r6,a
      001A77 A3               [24] 1820 	inc	dptr
      001A78 E0               [24] 1821 	movx	a,@dptr
      001A79 FF               [12] 1822 	mov	r7,a
      001A7A BE 02 05         [24] 1823 	cjne	r6,#0x02,00472$
      001A7D BF 00 02         [24] 1824 	cjne	r7,#0x00,00472$
      001A80 80 01            [24] 1825 	sjmp	00473$
      001A82                       1826 00472$:
      001A82 22               [24] 1827 	ret
      001A83                       1828 00473$:
                                   1829 ;	../Common/CentralHeating.c:402: pGetRtc(&dt);
      001A83 12 1A 88         [24] 1830 	lcall	00474$
      001A86 80 11            [24] 1831 	sjmp	00475$
      001A88                       1832 00474$:
      001A88 90 00 05         [24] 1833 	mov	dptr,#_pGetRtc
      001A8B E0               [24] 1834 	movx	a,@dptr
      001A8C C0 E0            [24] 1835 	push	acc
      001A8E A3               [24] 1836 	inc	dptr
      001A8F E0               [24] 1837 	movx	a,@dptr
      001A90 C0 E0            [24] 1838 	push	acc
      001A92 90 01 EE         [24] 1839 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      001A95 75 F0 00         [24] 1840 	mov	b, #0x00
      001A98 22               [24] 1841 	ret
      001A99                       1842 00475$:
                                   1843 ;	../Common/CentralHeating.c:403: if (dt.minutes == 59)
      001A99 90 01 EF         [24] 1844 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0001)
      001A9C E0               [24] 1845 	movx	a,@dptr
      001A9D FF               [12] 1846 	mov	r7,a
      001A9E BF 3B 07         [24] 1847 	cjne	r7,#0x3b,00147$
                                   1848 ;	../Common/CentralHeating.c:405: dt.minutes = 0;
      001AA1 90 01 EF         [24] 1849 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0001)
      001AA4 E4               [12] 1850 	clr	a
      001AA5 F0               [24] 1851 	movx	@dptr,a
      001AA6 80 06            [24] 1852 	sjmp	00148$
      001AA8                       1853 00147$:
                                   1854 ;	../Common/CentralHeating.c:409: dt.minutes++;
      001AA8 0F               [12] 1855 	inc	r7
      001AA9 90 01 EF         [24] 1856 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0001)
      001AAC EF               [12] 1857 	mov	a,r7
      001AAD F0               [24] 1858 	movx	@dptr,a
      001AAE                       1859 00148$:
                                   1860 ;	../Common/CentralHeating.c:411: pSetRtc(&dt);
      001AAE 12 1A B3         [24] 1861 	lcall	00478$
      001AB1 80 11            [24] 1862 	sjmp	00479$
      001AB3                       1863 00478$:
      001AB3 90 00 07         [24] 1864 	mov	dptr,#_pSetRtc
      001AB6 E0               [24] 1865 	movx	a,@dptr
      001AB7 C0 E0            [24] 1866 	push	acc
      001AB9 A3               [24] 1867 	inc	dptr
      001ABA E0               [24] 1868 	movx	a,@dptr
      001ABB C0 E0            [24] 1869 	push	acc
      001ABD 90 01 EE         [24] 1870 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      001AC0 75 F0 00         [24] 1871 	mov	b, #0x00
      001AC3 22               [24] 1872 	ret
      001AC4                       1873 00479$:
                                   1874 ;	../Common/CentralHeating.c:412: flashDateTime = 0;
      001AC4 90 01 BB         [24] 1875 	mov	dptr,#_flashDateTime
      001AC7 E4               [12] 1876 	clr	a
      001AC8 F0               [24] 1877 	movx	@dptr,a
                                   1878 ;	../Common/CentralHeating.c:413: PreviewTimeAdjustment();
                                   1879 ;	../Common/CentralHeating.c:415: break;
      001AC9 02 1D 7D         [24] 1880 	ljmp	_PreviewTimeAdjustment
                                   1881 ;	../Common/CentralHeating.c:417: case MENUID_SUBMINUTE :
      001ACC                       1882 00151$:
                                   1883 ;	../Common/CentralHeating.c:418: if (eventType == MENU_COMMAND)
      001ACC 90 01 EA         [24] 1884 	mov	dptr,#_HandleMenuCommand_PARM_2
      001ACF E0               [24] 1885 	movx	a,@dptr
      001AD0 FE               [12] 1886 	mov	r6,a
      001AD1 A3               [24] 1887 	inc	dptr
      001AD2 E0               [24] 1888 	movx	a,@dptr
      001AD3 FF               [12] 1889 	mov	r7,a
      001AD4 BE 02 05         [24] 1890 	cjne	r6,#0x02,00480$
      001AD7 BF 00 02         [24] 1891 	cjne	r7,#0x00,00480$
      001ADA 80 01            [24] 1892 	sjmp	00481$
      001ADC                       1893 00480$:
      001ADC 22               [24] 1894 	ret
      001ADD                       1895 00481$:
                                   1896 ;	../Common/CentralHeating.c:420: pGetRtc(&dt);
      001ADD 12 1A E2         [24] 1897 	lcall	00482$
      001AE0 80 11            [24] 1898 	sjmp	00483$
      001AE2                       1899 00482$:
      001AE2 90 00 05         [24] 1900 	mov	dptr,#_pGetRtc
      001AE5 E0               [24] 1901 	movx	a,@dptr
      001AE6 C0 E0            [24] 1902 	push	acc
      001AE8 A3               [24] 1903 	inc	dptr
      001AE9 E0               [24] 1904 	movx	a,@dptr
      001AEA C0 E0            [24] 1905 	push	acc
      001AEC 90 01 EE         [24] 1906 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      001AEF 75 F0 00         [24] 1907 	mov	b, #0x00
      001AF2 22               [24] 1908 	ret
      001AF3                       1909 00483$:
                                   1910 ;	../Common/CentralHeating.c:421: if (dt.minutes == 0)
      001AF3 90 01 EF         [24] 1911 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0001)
      001AF6 E0               [24] 1912 	movx	a,@dptr
      001AF7 FF               [12] 1913 	mov	r7,a
      001AF8 70 08            [24] 1914 	jnz	00153$
                                   1915 ;	../Common/CentralHeating.c:423: dt.minutes = 59;
      001AFA 90 01 EF         [24] 1916 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0001)
      001AFD 74 3B            [12] 1917 	mov	a,#0x3b
      001AFF F0               [24] 1918 	movx	@dptr,a
      001B00 80 06            [24] 1919 	sjmp	00154$
      001B02                       1920 00153$:
                                   1921 ;	../Common/CentralHeating.c:427: dt.minutes--;
      001B02 1F               [12] 1922 	dec	r7
      001B03 90 01 EF         [24] 1923 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0001)
      001B06 EF               [12] 1924 	mov	a,r7
      001B07 F0               [24] 1925 	movx	@dptr,a
      001B08                       1926 00154$:
                                   1927 ;	../Common/CentralHeating.c:429: pSetRtc(&dt);
      001B08 12 1B 0D         [24] 1928 	lcall	00485$
      001B0B 80 11            [24] 1929 	sjmp	00486$
      001B0D                       1930 00485$:
      001B0D 90 00 07         [24] 1931 	mov	dptr,#_pSetRtc
      001B10 E0               [24] 1932 	movx	a,@dptr
      001B11 C0 E0            [24] 1933 	push	acc
      001B13 A3               [24] 1934 	inc	dptr
      001B14 E0               [24] 1935 	movx	a,@dptr
      001B15 C0 E0            [24] 1936 	push	acc
      001B17 90 01 EE         [24] 1937 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      001B1A 75 F0 00         [24] 1938 	mov	b, #0x00
      001B1D 22               [24] 1939 	ret
      001B1E                       1940 00486$:
                                   1941 ;	../Common/CentralHeating.c:430: flashDateTime = 0;
      001B1E 90 01 BB         [24] 1942 	mov	dptr,#_flashDateTime
      001B21 E4               [12] 1943 	clr	a
      001B22 F0               [24] 1944 	movx	@dptr,a
                                   1945 ;	../Common/CentralHeating.c:431: PreviewTimeAdjustment();
                                   1946 ;	../Common/CentralHeating.c:433: break;
      001B23 02 1D 7D         [24] 1947 	ljmp	_PreviewTimeAdjustment
                                   1948 ;	../Common/CentralHeating.c:436: case MENUID_ADDHOUR :
      001B26                       1949 00157$:
                                   1950 ;	../Common/CentralHeating.c:437: if (eventType == MENU_COMMAND)
      001B26 90 01 EA         [24] 1951 	mov	dptr,#_HandleMenuCommand_PARM_2
      001B29 E0               [24] 1952 	movx	a,@dptr
      001B2A FE               [12] 1953 	mov	r6,a
      001B2B A3               [24] 1954 	inc	dptr
      001B2C E0               [24] 1955 	movx	a,@dptr
      001B2D FF               [12] 1956 	mov	r7,a
      001B2E BE 02 05         [24] 1957 	cjne	r6,#0x02,00487$
      001B31 BF 00 02         [24] 1958 	cjne	r7,#0x00,00487$
      001B34 80 01            [24] 1959 	sjmp	00488$
      001B36                       1960 00487$:
      001B36 22               [24] 1961 	ret
      001B37                       1962 00488$:
                                   1963 ;	../Common/CentralHeating.c:439: pGetRtc(&dt);
      001B37 12 1B 3C         [24] 1964 	lcall	00489$
      001B3A 80 11            [24] 1965 	sjmp	00490$
      001B3C                       1966 00489$:
      001B3C 90 00 05         [24] 1967 	mov	dptr,#_pGetRtc
      001B3F E0               [24] 1968 	movx	a,@dptr
      001B40 C0 E0            [24] 1969 	push	acc
      001B42 A3               [24] 1970 	inc	dptr
      001B43 E0               [24] 1971 	movx	a,@dptr
      001B44 C0 E0            [24] 1972 	push	acc
      001B46 90 01 EE         [24] 1973 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      001B49 75 F0 00         [24] 1974 	mov	b, #0x00
      001B4C 22               [24] 1975 	ret
      001B4D                       1976 00490$:
                                   1977 ;	../Common/CentralHeating.c:440: if (dt.hours == 23)
      001B4D 90 01 F0         [24] 1978 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0002)
      001B50 E0               [24] 1979 	movx	a,@dptr
      001B51 FF               [12] 1980 	mov	r7,a
      001B52 BF 17 07         [24] 1981 	cjne	r7,#0x17,00159$
                                   1982 ;	../Common/CentralHeating.c:442: dt.hours = 0;
      001B55 90 01 F0         [24] 1983 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0002)
      001B58 E4               [12] 1984 	clr	a
      001B59 F0               [24] 1985 	movx	@dptr,a
      001B5A 80 06            [24] 1986 	sjmp	00160$
      001B5C                       1987 00159$:
                                   1988 ;	../Common/CentralHeating.c:446: dt.hours++;
      001B5C 0F               [12] 1989 	inc	r7
      001B5D 90 01 F0         [24] 1990 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0002)
      001B60 EF               [12] 1991 	mov	a,r7
      001B61 F0               [24] 1992 	movx	@dptr,a
      001B62                       1993 00160$:
                                   1994 ;	../Common/CentralHeating.c:448: pSetRtc(&dt);
      001B62 12 1B 67         [24] 1995 	lcall	00493$
      001B65 80 11            [24] 1996 	sjmp	00494$
      001B67                       1997 00493$:
      001B67 90 00 07         [24] 1998 	mov	dptr,#_pSetRtc
      001B6A E0               [24] 1999 	movx	a,@dptr
      001B6B C0 E0            [24] 2000 	push	acc
      001B6D A3               [24] 2001 	inc	dptr
      001B6E E0               [24] 2002 	movx	a,@dptr
      001B6F C0 E0            [24] 2003 	push	acc
      001B71 90 01 EE         [24] 2004 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      001B74 75 F0 00         [24] 2005 	mov	b, #0x00
      001B77 22               [24] 2006 	ret
      001B78                       2007 00494$:
                                   2008 ;	../Common/CentralHeating.c:449: flashDateTime = 0;
      001B78 90 01 BB         [24] 2009 	mov	dptr,#_flashDateTime
      001B7B E4               [12] 2010 	clr	a
      001B7C F0               [24] 2011 	movx	@dptr,a
                                   2012 ;	../Common/CentralHeating.c:450: PreviewTimeAdjustment();
                                   2013 ;	../Common/CentralHeating.c:452: break;
      001B7D 02 1D 7D         [24] 2014 	ljmp	_PreviewTimeAdjustment
                                   2015 ;	../Common/CentralHeating.c:454: case MENUID_SUBHOUR :
      001B80                       2016 00163$:
                                   2017 ;	../Common/CentralHeating.c:455: if (eventType == MENU_COMMAND)
      001B80 90 01 EA         [24] 2018 	mov	dptr,#_HandleMenuCommand_PARM_2
      001B83 E0               [24] 2019 	movx	a,@dptr
      001B84 FE               [12] 2020 	mov	r6,a
      001B85 A3               [24] 2021 	inc	dptr
      001B86 E0               [24] 2022 	movx	a,@dptr
      001B87 FF               [12] 2023 	mov	r7,a
      001B88 BE 02 05         [24] 2024 	cjne	r6,#0x02,00495$
      001B8B BF 00 02         [24] 2025 	cjne	r7,#0x00,00495$
      001B8E 80 01            [24] 2026 	sjmp	00496$
      001B90                       2027 00495$:
      001B90 22               [24] 2028 	ret
      001B91                       2029 00496$:
                                   2030 ;	../Common/CentralHeating.c:457: pGetRtc(&dt);
      001B91 12 1B 96         [24] 2031 	lcall	00497$
      001B94 80 11            [24] 2032 	sjmp	00498$
      001B96                       2033 00497$:
      001B96 90 00 05         [24] 2034 	mov	dptr,#_pGetRtc
      001B99 E0               [24] 2035 	movx	a,@dptr
      001B9A C0 E0            [24] 2036 	push	acc
      001B9C A3               [24] 2037 	inc	dptr
      001B9D E0               [24] 2038 	movx	a,@dptr
      001B9E C0 E0            [24] 2039 	push	acc
      001BA0 90 01 EE         [24] 2040 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      001BA3 75 F0 00         [24] 2041 	mov	b, #0x00
      001BA6 22               [24] 2042 	ret
      001BA7                       2043 00498$:
                                   2044 ;	../Common/CentralHeating.c:458: if (dt.hours == 0)
      001BA7 90 01 F0         [24] 2045 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0002)
      001BAA E0               [24] 2046 	movx	a,@dptr
      001BAB FF               [12] 2047 	mov	r7,a
      001BAC 70 08            [24] 2048 	jnz	00165$
                                   2049 ;	../Common/CentralHeating.c:460: dt.hours = 23;
      001BAE 90 01 F0         [24] 2050 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0002)
      001BB1 74 17            [12] 2051 	mov	a,#0x17
      001BB3 F0               [24] 2052 	movx	@dptr,a
      001BB4 80 06            [24] 2053 	sjmp	00166$
      001BB6                       2054 00165$:
                                   2055 ;	../Common/CentralHeating.c:464: dt.hours--;
      001BB6 1F               [12] 2056 	dec	r7
      001BB7 90 01 F0         [24] 2057 	mov	dptr,#(_HandleMenuCommand_dt_10000_60 + 0x0002)
      001BBA EF               [12] 2058 	mov	a,r7
      001BBB F0               [24] 2059 	movx	@dptr,a
      001BBC                       2060 00166$:
                                   2061 ;	../Common/CentralHeating.c:466: pSetRtc(&dt);
      001BBC 12 1B C1         [24] 2062 	lcall	00500$
      001BBF 80 11            [24] 2063 	sjmp	00501$
      001BC1                       2064 00500$:
      001BC1 90 00 07         [24] 2065 	mov	dptr,#_pSetRtc
      001BC4 E0               [24] 2066 	movx	a,@dptr
      001BC5 C0 E0            [24] 2067 	push	acc
      001BC7 A3               [24] 2068 	inc	dptr
      001BC8 E0               [24] 2069 	movx	a,@dptr
      001BC9 C0 E0            [24] 2070 	push	acc
      001BCB 90 01 EE         [24] 2071 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      001BCE 75 F0 00         [24] 2072 	mov	b, #0x00
      001BD1 22               [24] 2073 	ret
      001BD2                       2074 00501$:
                                   2075 ;	../Common/CentralHeating.c:467: flashDateTime = 0;
      001BD2 90 01 BB         [24] 2076 	mov	dptr,#_flashDateTime
      001BD5 E4               [12] 2077 	clr	a
      001BD6 F0               [24] 2078 	movx	@dptr,a
                                   2079 ;	../Common/CentralHeating.c:468: PreviewTimeAdjustment();
                                   2080 ;	../Common/CentralHeating.c:470: break;
      001BD7 02 1D 7D         [24] 2081 	ljmp	_PreviewTimeAdjustment
                                   2082 ;	../Common/CentralHeating.c:472: case MENUID_RESETSEC :
      001BDA                       2083 00169$:
                                   2084 ;	../Common/CentralHeating.c:473: if (eventType == MENU_COMMAND)
      001BDA 90 01 EA         [24] 2085 	mov	dptr,#_HandleMenuCommand_PARM_2
      001BDD E0               [24] 2086 	movx	a,@dptr
      001BDE FE               [12] 2087 	mov	r6,a
      001BDF A3               [24] 2088 	inc	dptr
      001BE0 E0               [24] 2089 	movx	a,@dptr
      001BE1 FF               [12] 2090 	mov	r7,a
      001BE2 BE 02 05         [24] 2091 	cjne	r6,#0x02,00502$
      001BE5 BF 00 02         [24] 2092 	cjne	r7,#0x00,00502$
      001BE8 80 01            [24] 2093 	sjmp	00503$
      001BEA                       2094 00502$:
      001BEA 22               [24] 2095 	ret
      001BEB                       2096 00503$:
                                   2097 ;	../Common/CentralHeating.c:475: pGetRtc(&dt);
      001BEB 12 1B F0         [24] 2098 	lcall	00504$
      001BEE 80 11            [24] 2099 	sjmp	00505$
      001BF0                       2100 00504$:
      001BF0 90 00 05         [24] 2101 	mov	dptr,#_pGetRtc
      001BF3 E0               [24] 2102 	movx	a,@dptr
      001BF4 C0 E0            [24] 2103 	push	acc
      001BF6 A3               [24] 2104 	inc	dptr
      001BF7 E0               [24] 2105 	movx	a,@dptr
      001BF8 C0 E0            [24] 2106 	push	acc
      001BFA 90 01 EE         [24] 2107 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      001BFD 75 F0 00         [24] 2108 	mov	b, #0x00
      001C00 22               [24] 2109 	ret
      001C01                       2110 00505$:
                                   2111 ;	../Common/CentralHeating.c:476: dt.seconds = 0;
      001C01 90 01 EE         [24] 2112 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      001C04 E4               [12] 2113 	clr	a
      001C05 F0               [24] 2114 	movx	@dptr,a
                                   2115 ;	../Common/CentralHeating.c:477: pSetRtc(&dt);
      001C06 12 1C 0B         [24] 2116 	lcall	00506$
      001C09 80 11            [24] 2117 	sjmp	00507$
      001C0B                       2118 00506$:
      001C0B 90 00 07         [24] 2119 	mov	dptr,#_pSetRtc
      001C0E E0               [24] 2120 	movx	a,@dptr
      001C0F C0 E0            [24] 2121 	push	acc
      001C11 A3               [24] 2122 	inc	dptr
      001C12 E0               [24] 2123 	movx	a,@dptr
      001C13 C0 E0            [24] 2124 	push	acc
      001C15 90 01 EE         [24] 2125 	mov	dptr,#_HandleMenuCommand_dt_10000_60
      001C18 75 F0 00         [24] 2126 	mov	b, #0x00
      001C1B 22               [24] 2127 	ret
      001C1C                       2128 00507$:
                                   2129 ;	../Common/CentralHeating.c:478: flashDateTime = 0;
      001C1C 90 01 BB         [24] 2130 	mov	dptr,#_flashDateTime
      001C1F E4               [12] 2131 	clr	a
      001C20 F0               [24] 2132 	movx	@dptr,a
                                   2133 ;	../Common/CentralHeating.c:479: PreviewTimeAdjustment();
                                   2134 ;	../Common/CentralHeating.c:481: break;
      001C21 02 1D 7D         [24] 2135 	ljmp	_PreviewTimeAdjustment
                                   2136 ;	../Common/CentralHeating.c:483: case MENUID_TESTOUTPUT :
      001C24                       2137 00172$:
                                   2138 ;	../Common/CentralHeating.c:484: if (eventType == MENU_SUBMENUENTER)
      001C24 90 01 EA         [24] 2139 	mov	dptr,#_HandleMenuCommand_PARM_2
      001C27 E0               [24] 2140 	movx	a,@dptr
      001C28 FE               [12] 2141 	mov	r6,a
      001C29 A3               [24] 2142 	inc	dptr
      001C2A E0               [24] 2143 	movx	a,@dptr
      001C2B FF               [12] 2144 	mov	r7,a
      001C2C BE 03 1A         [24] 2145 	cjne	r6,#0x03,00176$
      001C2F BF 00 17         [24] 2146 	cjne	r7,#0x00,00176$
                                   2147 ;	../Common/CentralHeating.c:486: currentScreen = SCREEN_OUTPUTTEST;
      001C32 90 01 BA         [24] 2148 	mov	dptr,#_currentScreen
      001C35 74 04            [12] 2149 	mov	a,#0x04
      001C37 F0               [24] 2150 	movx	@dptr,a
                                   2151 ;	../Common/CentralHeating.c:487: ClearTopLine();
      001C38 12 17 3F         [24] 2152 	lcall	_ClearTopLine
                                   2153 ;	../Common/CentralHeating.c:488: TestAndDisplay("Off", 0);
      001C3B 90 02 21         [24] 2154 	mov	dptr,#_TestAndDisplay_PARM_2
      001C3E E4               [12] 2155 	clr	a
      001C3F F0               [24] 2156 	movx	@dptr,a
      001C40 90 3B 0B         [24] 2157 	mov	dptr,#___str_1
      001C43 75 F0 80         [24] 2158 	mov	b, #0x80
      001C46 02 1E 11         [24] 2159 	ljmp	_TestAndDisplay
      001C49                       2160 00176$:
                                   2161 ;	../Common/CentralHeating.c:490: else if (eventType == MENU_SUBMENUEXIT)
      001C49 BE 04 05         [24] 2162 	cjne	r6,#0x04,00510$
      001C4C BF 00 02         [24] 2163 	cjne	r7,#0x00,00510$
      001C4F 80 01            [24] 2164 	sjmp	00511$
      001C51                       2165 00510$:
      001C51 22               [24] 2166 	ret
      001C52                       2167 00511$:
                                   2168 ;	../Common/CentralHeating.c:492: currentScreen = SCREEN_HOME;
      001C52 90 01 BA         [24] 2169 	mov	dptr,#_currentScreen
      001C55 74 01            [12] 2170 	mov	a,#0x01
      001C57 F0               [24] 2171 	movx	@dptr,a
                                   2172 ;	../Common/CentralHeating.c:493: ClearTopLine();
                                   2173 ;	../Common/CentralHeating.c:495: break;
      001C58 02 17 3F         [24] 2174 	ljmp	_ClearTopLine
                                   2175 ;	../Common/CentralHeating.c:497: case MENUID_TEST_BOILER :
      001C5B                       2176 00178$:
                                   2177 ;	../Common/CentralHeating.c:498: if (eventType == MENU_COMMAND)
      001C5B 90 01 EA         [24] 2178 	mov	dptr,#_HandleMenuCommand_PARM_2
      001C5E E0               [24] 2179 	movx	a,@dptr
      001C5F FE               [12] 2180 	mov	r6,a
      001C60 A3               [24] 2181 	inc	dptr
      001C61 E0               [24] 2182 	movx	a,@dptr
      001C62 FF               [12] 2183 	mov	r7,a
      001C63 BE 02 05         [24] 2184 	cjne	r6,#0x02,00512$
      001C66 BF 00 02         [24] 2185 	cjne	r7,#0x00,00512$
      001C69 80 01            [24] 2186 	sjmp	00513$
      001C6B                       2187 00512$:
      001C6B 22               [24] 2188 	ret
      001C6C                       2189 00513$:
                                   2190 ;	../Common/CentralHeating.c:500: TestAndDisplay("Boiler", OUTPUT_BOILER);
      001C6C 90 02 21         [24] 2191 	mov	dptr,#_TestAndDisplay_PARM_2
      001C6F 74 20            [12] 2192 	mov	a,#0x20
      001C71 F0               [24] 2193 	movx	@dptr,a
      001C72 90 3B 0F         [24] 2194 	mov	dptr,#___str_2
      001C75 75 F0 80         [24] 2195 	mov	b, #0x80
                                   2196 ;	../Common/CentralHeating.c:502: break;
      001C78 02 1E 11         [24] 2197 	ljmp	_TestAndDisplay
                                   2198 ;	../Common/CentralHeating.c:504: case MENUID_TEST_PUMP :
      001C7B                       2199 00181$:
                                   2200 ;	../Common/CentralHeating.c:505: if (eventType == MENU_COMMAND)
      001C7B 90 01 EA         [24] 2201 	mov	dptr,#_HandleMenuCommand_PARM_2
      001C7E E0               [24] 2202 	movx	a,@dptr
      001C7F FE               [12] 2203 	mov	r6,a
      001C80 A3               [24] 2204 	inc	dptr
      001C81 E0               [24] 2205 	movx	a,@dptr
      001C82 FF               [12] 2206 	mov	r7,a
      001C83 BE 02 05         [24] 2207 	cjne	r6,#0x02,00514$
      001C86 BF 00 02         [24] 2208 	cjne	r7,#0x00,00514$
      001C89 80 01            [24] 2209 	sjmp	00515$
      001C8B                       2210 00514$:
      001C8B 22               [24] 2211 	ret
      001C8C                       2212 00515$:
                                   2213 ;	../Common/CentralHeating.c:507: TestAndDisplay("Pump", OUTPUT_PUMP);
      001C8C 90 02 21         [24] 2214 	mov	dptr,#_TestAndDisplay_PARM_2
      001C8F 74 10            [12] 2215 	mov	a,#0x10
      001C91 F0               [24] 2216 	movx	@dptr,a
      001C92 90 3B 16         [24] 2217 	mov	dptr,#___str_3
      001C95 75 F0 80         [24] 2218 	mov	b, #0x80
                                   2219 ;	../Common/CentralHeating.c:509: break;
      001C98 02 1E 11         [24] 2220 	ljmp	_TestAndDisplay
                                   2221 ;	../Common/CentralHeating.c:511: case MENUID_TEST_ZONE1 :
      001C9B                       2222 00184$:
                                   2223 ;	../Common/CentralHeating.c:512: if (eventType == MENU_COMMAND)
      001C9B 90 01 EA         [24] 2224 	mov	dptr,#_HandleMenuCommand_PARM_2
      001C9E E0               [24] 2225 	movx	a,@dptr
      001C9F FE               [12] 2226 	mov	r6,a
      001CA0 A3               [24] 2227 	inc	dptr
      001CA1 E0               [24] 2228 	movx	a,@dptr
      001CA2 FF               [12] 2229 	mov	r7,a
      001CA3 BE 02 05         [24] 2230 	cjne	r6,#0x02,00516$
      001CA6 BF 00 02         [24] 2231 	cjne	r7,#0x00,00516$
      001CA9 80 01            [24] 2232 	sjmp	00517$
      001CAB                       2233 00516$:
      001CAB 22               [24] 2234 	ret
      001CAC                       2235 00517$:
                                   2236 ;	../Common/CentralHeating.c:514: TestAndDisplay("Zone 1", OUTPUT_ACTUATOR1);
      001CAC 90 02 21         [24] 2237 	mov	dptr,#_TestAndDisplay_PARM_2
      001CAF 74 01            [12] 2238 	mov	a,#0x01
      001CB1 F0               [24] 2239 	movx	@dptr,a
      001CB2 90 3B 1B         [24] 2240 	mov	dptr,#___str_4
      001CB5 75 F0 80         [24] 2241 	mov	b, #0x80
                                   2242 ;	../Common/CentralHeating.c:516: break;
      001CB8 02 1E 11         [24] 2243 	ljmp	_TestAndDisplay
                                   2244 ;	../Common/CentralHeating.c:518: case MENUID_TEST_ZONE2 :
      001CBB                       2245 00187$:
                                   2246 ;	../Common/CentralHeating.c:519: if (eventType == MENU_COMMAND)
      001CBB 90 01 EA         [24] 2247 	mov	dptr,#_HandleMenuCommand_PARM_2
      001CBE E0               [24] 2248 	movx	a,@dptr
      001CBF FE               [12] 2249 	mov	r6,a
      001CC0 A3               [24] 2250 	inc	dptr
      001CC1 E0               [24] 2251 	movx	a,@dptr
      001CC2 FF               [12] 2252 	mov	r7,a
      001CC3 BE 02 05         [24] 2253 	cjne	r6,#0x02,00518$
      001CC6 BF 00 02         [24] 2254 	cjne	r7,#0x00,00518$
      001CC9 80 01            [24] 2255 	sjmp	00519$
      001CCB                       2256 00518$:
      001CCB 22               [24] 2257 	ret
      001CCC                       2258 00519$:
                                   2259 ;	../Common/CentralHeating.c:521: TestAndDisplay("Zone 2", OUTPUT_ACTUATOR2);
      001CCC 90 02 21         [24] 2260 	mov	dptr,#_TestAndDisplay_PARM_2
      001CCF 74 02            [12] 2261 	mov	a,#0x02
      001CD1 F0               [24] 2262 	movx	@dptr,a
      001CD2 90 3B 22         [24] 2263 	mov	dptr,#___str_5
      001CD5 75 F0 80         [24] 2264 	mov	b, #0x80
                                   2265 ;	../Common/CentralHeating.c:523: break;
                                   2266 ;	../Common/CentralHeating.c:525: case MENUID_TEST_ZONE3 :
      001CD8 02 1E 11         [24] 2267 	ljmp	_TestAndDisplay
      001CDB                       2268 00190$:
                                   2269 ;	../Common/CentralHeating.c:526: if (eventType == MENU_COMMAND)
      001CDB 90 01 EA         [24] 2270 	mov	dptr,#_HandleMenuCommand_PARM_2
      001CDE E0               [24] 2271 	movx	a,@dptr
      001CDF FE               [12] 2272 	mov	r6,a
      001CE0 A3               [24] 2273 	inc	dptr
      001CE1 E0               [24] 2274 	movx	a,@dptr
      001CE2 FF               [12] 2275 	mov	r7,a
      001CE3 BE 02 4B         [24] 2276 	cjne	r6,#0x02,00200$
      001CE6 BF 00 48         [24] 2277 	cjne	r7,#0x00,00200$
                                   2278 ;	../Common/CentralHeating.c:528: TestAndDisplay("Zone 3", OUTPUT_ACTUATOR3);
      001CE9 90 02 21         [24] 2279 	mov	dptr,#_TestAndDisplay_PARM_2
      001CEC 74 04            [12] 2280 	mov	a,#0x04
      001CEE F0               [24] 2281 	movx	@dptr,a
      001CEF 90 3B 29         [24] 2282 	mov	dptr,#___str_6
      001CF2 75 F0 80         [24] 2283 	mov	b, #0x80
                                   2284 ;	../Common/CentralHeating.c:530: break;
                                   2285 ;	../Common/CentralHeating.c:532: case MENUID_TEST_ZONE4 :
      001CF5 02 1E 11         [24] 2286 	ljmp	_TestAndDisplay
      001CF8                       2287 00193$:
                                   2288 ;	../Common/CentralHeating.c:533: if (eventType == MENU_COMMAND)
      001CF8 90 01 EA         [24] 2289 	mov	dptr,#_HandleMenuCommand_PARM_2
      001CFB E0               [24] 2290 	movx	a,@dptr
      001CFC FE               [12] 2291 	mov	r6,a
      001CFD A3               [24] 2292 	inc	dptr
      001CFE E0               [24] 2293 	movx	a,@dptr
      001CFF FF               [12] 2294 	mov	r7,a
      001D00 BE 02 2E         [24] 2295 	cjne	r6,#0x02,00200$
      001D03 BF 00 2B         [24] 2296 	cjne	r7,#0x00,00200$
                                   2297 ;	../Common/CentralHeating.c:535: TestAndDisplay("Zone 4", OUTPUT_ACTUATOR4);
      001D06 90 02 21         [24] 2298 	mov	dptr,#_TestAndDisplay_PARM_2
      001D09 74 08            [12] 2299 	mov	a,#0x08
      001D0B F0               [24] 2300 	movx	@dptr,a
      001D0C 90 3B 30         [24] 2301 	mov	dptr,#___str_7
      001D0F 75 F0 80         [24] 2302 	mov	b, #0x80
                                   2303 ;	../Common/CentralHeating.c:537: break;
                                   2304 ;	../Common/CentralHeating.c:540: case MENUID_TEST_RESET :
      001D12 02 1E 11         [24] 2305 	ljmp	_TestAndDisplay
      001D15                       2306 00196$:
                                   2307 ;	../Common/CentralHeating.c:541: if (eventType == MENU_COMMAND)
      001D15 90 01 EA         [24] 2308 	mov	dptr,#_HandleMenuCommand_PARM_2
      001D18 E0               [24] 2309 	movx	a,@dptr
      001D19 FE               [12] 2310 	mov	r6,a
      001D1A A3               [24] 2311 	inc	dptr
      001D1B E0               [24] 2312 	movx	a,@dptr
      001D1C FF               [12] 2313 	mov	r7,a
      001D1D BE 02 11         [24] 2314 	cjne	r6,#0x02,00200$
      001D20 BF 00 0E         [24] 2315 	cjne	r7,#0x00,00200$
                                   2316 ;	../Common/CentralHeating.c:543: TestAndDisplay("Reset", 0);
      001D23 90 02 21         [24] 2317 	mov	dptr,#_TestAndDisplay_PARM_2
      001D26 E4               [12] 2318 	clr	a
      001D27 F0               [24] 2319 	movx	@dptr,a
      001D28 90 3B 37         [24] 2320 	mov	dptr,#___str_8
      001D2B 75 F0 80         [24] 2321 	mov	b, #0x80
                                   2322 ;	../Common/CentralHeating.c:548: }
                                   2323 ;	../Common/CentralHeating.c:550: }
      001D2E 02 1E 11         [24] 2324 	ljmp	_TestAndDisplay
      001D31                       2325 00200$:
      001D31 22               [24] 2326 	ret
                                   2327 ;------------------------------------------------------------
                                   2328 ;Allocation info for local variables in function 'WriteCurrentTime'
                                   2329 ;------------------------------------------------------------
                                   2330 ;strBuffer     Allocated with name '_WriteCurrentTime_strBuffer_10000_100'
                                   2331 ;------------------------------------------------------------
                                   2332 ;	../Common/CentralHeating.c:554: void WriteCurrentTime()
                                   2333 ;	-----------------------------------------
                                   2334 ;	 function WriteCurrentTime
                                   2335 ;	-----------------------------------------
      001D32                       2336 _WriteCurrentTime:
                                   2337 ;	../Common/CentralHeating.c:558: pGetRtc(&currentDateTime);
      001D32 12 1D 37         [24] 2338 	lcall	00103$
      001D35 80 11            [24] 2339 	sjmp	00104$
      001D37                       2340 00103$:
      001D37 90 00 05         [24] 2341 	mov	dptr,#_pGetRtc
      001D3A E0               [24] 2342 	movx	a,@dptr
      001D3B C0 E0            [24] 2343 	push	acc
      001D3D A3               [24] 2344 	inc	dptr
      001D3E E0               [24] 2345 	movx	a,@dptr
      001D3F C0 E0            [24] 2346 	push	acc
      001D41 90 01 C0         [24] 2347 	mov	dptr,#_currentDateTime
      001D44 75 F0 00         [24] 2348 	mov	b, #0x00
      001D47 22               [24] 2349 	ret
      001D48                       2350 00104$:
                                   2351 ;	../Common/CentralHeating.c:559: FormatTime(strBuffer, &currentDateTime, 0);
      001D48 90 02 98         [24] 2352 	mov	dptr,#_FormatTime_PARM_2
      001D4B 74 C0            [12] 2353 	mov	a,#_currentDateTime
      001D4D F0               [24] 2354 	movx	@dptr,a
      001D4E 74 01            [12] 2355 	mov	a,#(_currentDateTime >> 8)
      001D50 A3               [24] 2356 	inc	dptr
      001D51 F0               [24] 2357 	movx	@dptr,a
      001D52 E4               [12] 2358 	clr	a
      001D53 A3               [24] 2359 	inc	dptr
      001D54 F0               [24] 2360 	movx	@dptr,a
      001D55 90 02 9B         [24] 2361 	mov	dptr,#_FormatTime_PARM_3
      001D58 F0               [24] 2362 	movx	@dptr,a
      001D59 90 01 F5         [24] 2363 	mov	dptr,#_WriteCurrentTime_strBuffer_10000_100
      001D5C F5 F0            [12] 2364 	mov	b,a
      001D5E 12 30 9F         [24] 2365 	lcall	_FormatTime
                                   2366 ;	../Common/CentralHeating.c:560: PartialWriteToScreen(11, 5, strBuffer);
      001D61 90 01 E3         [24] 2367 	mov	dptr,#_PartialWriteToScreen_PARM_2
      001D64 74 05            [12] 2368 	mov	a,#0x05
      001D66 F0               [24] 2369 	movx	@dptr,a
      001D67 E4               [12] 2370 	clr	a
      001D68 A3               [24] 2371 	inc	dptr
      001D69 F0               [24] 2372 	movx	@dptr,a
      001D6A 90 01 E5         [24] 2373 	mov	dptr,#_PartialWriteToScreen_PARM_3
      001D6D 74 F5            [12] 2374 	mov	a,#_WriteCurrentTime_strBuffer_10000_100
      001D6F F0               [24] 2375 	movx	@dptr,a
      001D70 74 01            [12] 2376 	mov	a,#(_WriteCurrentTime_strBuffer_10000_100 >> 8)
      001D72 A3               [24] 2377 	inc	dptr
      001D73 F0               [24] 2378 	movx	@dptr,a
      001D74 E4               [12] 2379 	clr	a
      001D75 A3               [24] 2380 	inc	dptr
      001D76 F0               [24] 2381 	movx	@dptr,a
      001D77 90 00 0B         [24] 2382 	mov	dptr,#0x000b
                                   2383 ;	../Common/CentralHeating.c:561: }
      001D7A 02 16 BC         [24] 2384 	ljmp	_PartialWriteToScreen
                                   2385 ;------------------------------------------------------------
                                   2386 ;Allocation info for local variables in function 'PreviewTimeAdjustment'
                                   2387 ;------------------------------------------------------------
                                   2388 ;strBuffer     Allocated with name '_PreviewTimeAdjustment_strBuffer_10000_101'
                                   2389 ;dt            Allocated with name '_PreviewTimeAdjustment_dt_10000_101'
                                   2390 ;------------------------------------------------------------
                                   2391 ;	../Common/CentralHeating.c:564: void PreviewTimeAdjustment()
                                   2392 ;	-----------------------------------------
                                   2393 ;	 function PreviewTimeAdjustment
                                   2394 ;	-----------------------------------------
      001D7D                       2395 _PreviewTimeAdjustment:
                                   2396 ;	../Common/CentralHeating.c:568: pGetRtc(&dt);
      001D7D 12 1D 82         [24] 2397 	lcall	00103$
      001D80 80 11            [24] 2398 	sjmp	00104$
      001D82                       2399 00103$:
      001D82 90 00 05         [24] 2400 	mov	dptr,#_pGetRtc
      001D85 E0               [24] 2401 	movx	a,@dptr
      001D86 C0 E0            [24] 2402 	push	acc
      001D88 A3               [24] 2403 	inc	dptr
      001D89 E0               [24] 2404 	movx	a,@dptr
      001D8A C0 E0            [24] 2405 	push	acc
      001D8C 90 02 09         [24] 2406 	mov	dptr,#_PreviewTimeAdjustment_dt_10000_101
      001D8F 75 F0 00         [24] 2407 	mov	b, #0x00
      001D92 22               [24] 2408 	ret
      001D93                       2409 00104$:
                                   2410 ;	../Common/CentralHeating.c:569: FormatTime(strBuffer, &dt, 1);
      001D93 90 02 98         [24] 2411 	mov	dptr,#_FormatTime_PARM_2
      001D96 74 09            [12] 2412 	mov	a,#_PreviewTimeAdjustment_dt_10000_101
      001D98 F0               [24] 2413 	movx	@dptr,a
      001D99 74 02            [12] 2414 	mov	a,#(_PreviewTimeAdjustment_dt_10000_101 >> 8)
      001D9B A3               [24] 2415 	inc	dptr
      001D9C F0               [24] 2416 	movx	@dptr,a
      001D9D E4               [12] 2417 	clr	a
      001D9E A3               [24] 2418 	inc	dptr
      001D9F F0               [24] 2419 	movx	@dptr,a
      001DA0 90 02 9B         [24] 2420 	mov	dptr,#_FormatTime_PARM_3
      001DA3 04               [12] 2421 	inc	a
      001DA4 F0               [24] 2422 	movx	@dptr,a
      001DA5 90 01 FF         [24] 2423 	mov	dptr,#_PreviewTimeAdjustment_strBuffer_10000_101
      001DA8 75 F0 00         [24] 2424 	mov	b, #0x00
      001DAB 12 30 9F         [24] 2425 	lcall	_FormatTime
                                   2426 ;	../Common/CentralHeating.c:570: PartialWriteToScreen(0, 16, strBuffer);
      001DAE 90 01 E3         [24] 2427 	mov	dptr,#_PartialWriteToScreen_PARM_2
      001DB1 74 10            [12] 2428 	mov	a,#0x10
      001DB3 F0               [24] 2429 	movx	@dptr,a
      001DB4 E4               [12] 2430 	clr	a
      001DB5 A3               [24] 2431 	inc	dptr
      001DB6 F0               [24] 2432 	movx	@dptr,a
      001DB7 90 01 E5         [24] 2433 	mov	dptr,#_PartialWriteToScreen_PARM_3
      001DBA 74 FF            [12] 2434 	mov	a,#_PreviewTimeAdjustment_strBuffer_10000_101
      001DBC F0               [24] 2435 	movx	@dptr,a
      001DBD 74 01            [12] 2436 	mov	a,#(_PreviewTimeAdjustment_strBuffer_10000_101 >> 8)
      001DBF A3               [24] 2437 	inc	dptr
      001DC0 F0               [24] 2438 	movx	@dptr,a
      001DC1 E4               [12] 2439 	clr	a
      001DC2 A3               [24] 2440 	inc	dptr
      001DC3 F0               [24] 2441 	movx	@dptr,a
      001DC4 90 00 00         [24] 2442 	mov	dptr,#0x0000
                                   2443 ;	../Common/CentralHeating.c:571: }
      001DC7 02 16 BC         [24] 2444 	ljmp	_PartialWriteToScreen
                                   2445 ;------------------------------------------------------------
                                   2446 ;Allocation info for local variables in function 'PreviewDateAdjustment'
                                   2447 ;------------------------------------------------------------
                                   2448 ;strBuffer     Allocated with name '_PreviewDateAdjustment_strBuffer_10000_102'
                                   2449 ;dt            Allocated with name '_PreviewDateAdjustment_dt_10000_102'
                                   2450 ;------------------------------------------------------------
                                   2451 ;	../Common/CentralHeating.c:574: void PreviewDateAdjustment()
                                   2452 ;	-----------------------------------------
                                   2453 ;	 function PreviewDateAdjustment
                                   2454 ;	-----------------------------------------
      001DCA                       2455 _PreviewDateAdjustment:
                                   2456 ;	../Common/CentralHeating.c:578: pGetRtc(&dt);
      001DCA 12 1D CF         [24] 2457 	lcall	00103$
      001DCD 80 11            [24] 2458 	sjmp	00104$
      001DCF                       2459 00103$:
      001DCF 90 00 05         [24] 2460 	mov	dptr,#_pGetRtc
      001DD2 E0               [24] 2461 	movx	a,@dptr
      001DD3 C0 E0            [24] 2462 	push	acc
      001DD5 A3               [24] 2463 	inc	dptr
      001DD6 E0               [24] 2464 	movx	a,@dptr
      001DD7 C0 E0            [24] 2465 	push	acc
      001DD9 90 02 1A         [24] 2466 	mov	dptr,#_PreviewDateAdjustment_dt_10000_102
      001DDC 75 F0 00         [24] 2467 	mov	b, #0x00
      001DDF 22               [24] 2468 	ret
      001DE0                       2469 00104$:
                                   2470 ;	../Common/CentralHeating.c:579: FormatDate(strBuffer, &dt);
      001DE0 90 02 9F         [24] 2471 	mov	dptr,#_FormatDate_PARM_2
      001DE3 74 1A            [12] 2472 	mov	a,#_PreviewDateAdjustment_dt_10000_102
      001DE5 F0               [24] 2473 	movx	@dptr,a
      001DE6 74 02            [12] 2474 	mov	a,#(_PreviewDateAdjustment_dt_10000_102 >> 8)
      001DE8 A3               [24] 2475 	inc	dptr
      001DE9 F0               [24] 2476 	movx	@dptr,a
      001DEA E4               [12] 2477 	clr	a
      001DEB A3               [24] 2478 	inc	dptr
      001DEC F0               [24] 2479 	movx	@dptr,a
      001DED 90 02 10         [24] 2480 	mov	dptr,#_PreviewDateAdjustment_strBuffer_10000_102
      001DF0 F5 F0            [12] 2481 	mov	b,a
      001DF2 12 32 21         [24] 2482 	lcall	_FormatDate
                                   2483 ;	../Common/CentralHeating.c:580: PartialWriteToScreen(0, 16, strBuffer);
      001DF5 90 01 E3         [24] 2484 	mov	dptr,#_PartialWriteToScreen_PARM_2
      001DF8 74 10            [12] 2485 	mov	a,#0x10
      001DFA F0               [24] 2486 	movx	@dptr,a
      001DFB E4               [12] 2487 	clr	a
      001DFC A3               [24] 2488 	inc	dptr
      001DFD F0               [24] 2489 	movx	@dptr,a
      001DFE 90 01 E5         [24] 2490 	mov	dptr,#_PartialWriteToScreen_PARM_3
      001E01 74 10            [12] 2491 	mov	a,#_PreviewDateAdjustment_strBuffer_10000_102
      001E03 F0               [24] 2492 	movx	@dptr,a
      001E04 74 02            [12] 2493 	mov	a,#(_PreviewDateAdjustment_strBuffer_10000_102 >> 8)
      001E06 A3               [24] 2494 	inc	dptr
      001E07 F0               [24] 2495 	movx	@dptr,a
      001E08 E4               [12] 2496 	clr	a
      001E09 A3               [24] 2497 	inc	dptr
      001E0A F0               [24] 2498 	movx	@dptr,a
      001E0B 90 00 00         [24] 2499 	mov	dptr,#0x0000
                                   2500 ;	../Common/CentralHeating.c:581: }
      001E0E 02 16 BC         [24] 2501 	ljmp	_PartialWriteToScreen
                                   2502 ;------------------------------------------------------------
                                   2503 ;Allocation info for local variables in function 'TestAndDisplay'
                                   2504 ;------------------------------------------------------------
                                   2505 ;output        Allocated with name '_TestAndDisplay_PARM_2'
                                   2506 ;description   Allocated with name '_TestAndDisplay_description_10000_103'
                                   2507 ;------------------------------------------------------------
                                   2508 ;	../Common/CentralHeating.c:584: void TestAndDisplay(char *description, unsigned char output)
                                   2509 ;	-----------------------------------------
                                   2510 ;	 function TestAndDisplay
                                   2511 ;	-----------------------------------------
      001E11                       2512 _TestAndDisplay:
      001E11 AF F0            [24] 2513 	mov	r7,b
      001E13 AE 83            [24] 2514 	mov	r6,dph
      001E15 E5 82            [12] 2515 	mov	a,dpl
      001E17 90 02 22         [24] 2516 	mov	dptr,#_TestAndDisplay_description_10000_103
      001E1A F0               [24] 2517 	movx	@dptr,a
      001E1B EE               [12] 2518 	mov	a,r6
      001E1C A3               [24] 2519 	inc	dptr
      001E1D F0               [24] 2520 	movx	@dptr,a
      001E1E EF               [12] 2521 	mov	a,r7
      001E1F A3               [24] 2522 	inc	dptr
      001E20 F0               [24] 2523 	movx	@dptr,a
                                   2524 ;	../Common/CentralHeating.c:586: PartialWriteToScreen(0, 16, description);
      001E21 90 02 22         [24] 2525 	mov	dptr,#_TestAndDisplay_description_10000_103
      001E24 E0               [24] 2526 	movx	a,@dptr
      001E25 FD               [12] 2527 	mov	r5,a
      001E26 A3               [24] 2528 	inc	dptr
      001E27 E0               [24] 2529 	movx	a,@dptr
      001E28 FE               [12] 2530 	mov	r6,a
      001E29 A3               [24] 2531 	inc	dptr
      001E2A E0               [24] 2532 	movx	a,@dptr
      001E2B FF               [12] 2533 	mov	r7,a
      001E2C 90 01 E3         [24] 2534 	mov	dptr,#_PartialWriteToScreen_PARM_2
      001E2F 74 10            [12] 2535 	mov	a,#0x10
      001E31 F0               [24] 2536 	movx	@dptr,a
      001E32 E4               [12] 2537 	clr	a
      001E33 A3               [24] 2538 	inc	dptr
      001E34 F0               [24] 2539 	movx	@dptr,a
      001E35 90 01 E5         [24] 2540 	mov	dptr,#_PartialWriteToScreen_PARM_3
      001E38 ED               [12] 2541 	mov	a,r5
      001E39 F0               [24] 2542 	movx	@dptr,a
      001E3A EE               [12] 2543 	mov	a,r6
      001E3B A3               [24] 2544 	inc	dptr
      001E3C F0               [24] 2545 	movx	@dptr,a
      001E3D EF               [12] 2546 	mov	a,r7
      001E3E A3               [24] 2547 	inc	dptr
      001E3F F0               [24] 2548 	movx	@dptr,a
      001E40 90 00 00         [24] 2549 	mov	dptr,#0x0000
      001E43 12 16 BC         [24] 2550 	lcall	_PartialWriteToScreen
                                   2551 ;	../Common/CentralHeating.c:587: pSetOutputPortValues(output);
      001E46 90 02 21         [24] 2552 	mov	dptr,#_TestAndDisplay_PARM_2
      001E49 E0               [24] 2553 	movx	a,@dptr
      001E4A FF               [12] 2554 	mov	r7,a
      001E4B 02 1E 4E         [24] 2555 	ljmp	00103$
      001E4E                       2556 00103$:
      001E4E 90 00 0F         [24] 2557 	mov	dptr,#_pSetOutputPortValues
      001E51 E0               [24] 2558 	movx	a,@dptr
      001E52 C0 E0            [24] 2559 	push	acc
      001E54 A3               [24] 2560 	inc	dptr
      001E55 E0               [24] 2561 	movx	a,@dptr
      001E56 C0 E0            [24] 2562 	push	acc
      001E58 8F 82            [24] 2563 	mov	dpl, r7
      001E5A 22               [24] 2564 	ret
                                   2565 ;	../Common/CentralHeating.c:588: }
      001E5B 22               [24] 2566 	ret
                                   2567 ;------------------------------------------------------------
                                   2568 ;Allocation info for local variables in function 'ProcessHeating'
                                   2569 ;------------------------------------------------------------
                                   2570 ;inputs        Allocated with name '_ProcessHeating_inputs_10000_105'
                                   2571 ;zones         Allocated with name '_ProcessHeating_zones_10000_105'
                                   2572 ;pump          Allocated with name '_ProcessHeating_pump_10000_105'
                                   2573 ;boiler        Allocated with name '_ProcessHeating_boiler_10000_105'
                                   2574 ;output        Allocated with name '_ProcessHeating_output_10000_105'
                                   2575 ;------------------------------------------------------------
                                   2576 ;	../Common/CentralHeating.c:594: void ProcessHeating()
                                   2577 ;	-----------------------------------------
                                   2578 ;	 function ProcessHeating
                                   2579 ;	-----------------------------------------
      001E5C                       2580 _ProcessHeating:
                                   2581 ;	../Common/CentralHeating.c:604: inputs = 0;
      001E5C 90 02 25         [24] 2582 	mov	dptr,#_ProcessHeating_inputs_10000_105
      001E5F E4               [12] 2583 	clr	a
      001E60 F0               [24] 2584 	movx	@dptr,a
                                   2585 ;	../Common/CentralHeating.c:605: pGetInputPortValues(&inputs);
      001E61 12 1E 66         [24] 2586 	lcall	00191$
      001E64 80 11            [24] 2587 	sjmp	00192$
      001E66                       2588 00191$:
      001E66 90 00 0D         [24] 2589 	mov	dptr,#_pGetInputPortValues
      001E69 E0               [24] 2590 	movx	a,@dptr
      001E6A C0 E0            [24] 2591 	push	acc
      001E6C A3               [24] 2592 	inc	dptr
      001E6D E0               [24] 2593 	movx	a,@dptr
      001E6E C0 E0            [24] 2594 	push	acc
      001E70 90 02 25         [24] 2595 	mov	dptr,#_ProcessHeating_inputs_10000_105
      001E73 75 F0 00         [24] 2596 	mov	b, #0x00
      001E76 22               [24] 2597 	ret
      001E77                       2598 00192$:
                                   2599 ;	../Common/CentralHeating.c:607: lastInputState = inputs;
      001E77 90 02 25         [24] 2600 	mov	dptr,#_ProcessHeating_inputs_10000_105
      001E7A E0               [24] 2601 	movx	a,@dptr
      001E7B FF               [12] 2602 	mov	r7,a
      001E7C 90 01 BC         [24] 2603 	mov	dptr,#_lastInputState
      001E7F F0               [24] 2604 	movx	@dptr,a
                                   2605 ;	../Common/CentralHeating.c:609: zones[0] = inputs & INPUT_ZONE1;
      001E80 53 07 10         [24] 2606 	anl	ar7,#0x10
      001E83 90 02 26         [24] 2607 	mov	dptr,#_ProcessHeating_zones_10000_105
      001E86 EF               [12] 2608 	mov	a,r7
      001E87 F0               [24] 2609 	movx	@dptr,a
                                   2610 ;	../Common/CentralHeating.c:610: zones[1] = inputs & INPUT_ZONE2;
      001E88 90 02 25         [24] 2611 	mov	dptr,#_ProcessHeating_inputs_10000_105
      001E8B E0               [24] 2612 	movx	a,@dptr
      001E8C 54 20            [12] 2613 	anl	a,#0x20
      001E8E 90 02 27         [24] 2614 	mov	dptr,#(_ProcessHeating_zones_10000_105 + 0x0001)
      001E91 F0               [24] 2615 	movx	@dptr,a
                                   2616 ;	../Common/CentralHeating.c:611: zones[2] = inputs & INPUT_ZONE3;
      001E92 90 02 25         [24] 2617 	mov	dptr,#_ProcessHeating_inputs_10000_105
      001E95 E0               [24] 2618 	movx	a,@dptr
      001E96 54 04            [12] 2619 	anl	a,#0x04
      001E98 90 02 28         [24] 2620 	mov	dptr,#(_ProcessHeating_zones_10000_105 + 0x0002)
      001E9B F0               [24] 2621 	movx	@dptr,a
                                   2622 ;	../Common/CentralHeating.c:612: zones[3] = inputs & INPUT_ZONE4;
      001E9C 90 02 25         [24] 2623 	mov	dptr,#_ProcessHeating_inputs_10000_105
      001E9F E0               [24] 2624 	movx	a,@dptr
      001EA0 54 08            [12] 2625 	anl	a,#0x08
      001EA2 90 02 29         [24] 2626 	mov	dptr,#(_ProcessHeating_zones_10000_105 + 0x0003)
      001EA5 F0               [24] 2627 	movx	@dptr,a
                                   2628 ;	../Common/CentralHeating.c:613: zones[4] = inputs & INPUT_ZONE5;
      001EA6 90 02 25         [24] 2629 	mov	dptr,#_ProcessHeating_inputs_10000_105
      001EA9 E0               [24] 2630 	movx	a,@dptr
      001EAA 54 40            [12] 2631 	anl	a,#0x40
      001EAC 90 02 2A         [24] 2632 	mov	dptr,#(_ProcessHeating_zones_10000_105 + 0x0004)
      001EAF F0               [24] 2633 	movx	@dptr,a
                                   2634 ;	../Common/CentralHeating.c:615: if (zones[0] || zones[1] || zones[2] || zones[3] || zones[4])
      001EB0 90 02 26         [24] 2635 	mov	dptr,#_ProcessHeating_zones_10000_105
      001EB3 E0               [24] 2636 	movx	a,@dptr
      001EB4 70 18            [24] 2637 	jnz	00106$
      001EB6 90 02 27         [24] 2638 	mov	dptr,#(_ProcessHeating_zones_10000_105 + 0x0001)
      001EB9 E0               [24] 2639 	movx	a,@dptr
      001EBA 70 12            [24] 2640 	jnz	00106$
      001EBC 90 02 28         [24] 2641 	mov	dptr,#(_ProcessHeating_zones_10000_105 + 0x0002)
      001EBF E0               [24] 2642 	movx	a,@dptr
      001EC0 70 0C            [24] 2643 	jnz	00106$
      001EC2 90 02 29         [24] 2644 	mov	dptr,#(_ProcessHeating_zones_10000_105 + 0x0003)
      001EC5 E0               [24] 2645 	movx	a,@dptr
      001EC6 70 06            [24] 2646 	jnz	00106$
      001EC8 90 02 2A         [24] 2647 	mov	dptr,#(_ProcessHeating_zones_10000_105 + 0x0004)
      001ECB E0               [24] 2648 	movx	a,@dptr
      001ECC 60 0C            [24] 2649 	jz	00107$
      001ECE                       2650 00106$:
                                   2651 ;	../Common/CentralHeating.c:617: pump = 1;
      001ECE 90 02 2B         [24] 2652 	mov	dptr,#_ProcessHeating_pump_10000_105
      001ED1 74 01            [12] 2653 	mov	a,#0x01
      001ED3 F0               [24] 2654 	movx	@dptr,a
                                   2655 ;	../Common/CentralHeating.c:618: boiler = 1;
      001ED4 90 02 2C         [24] 2656 	mov	dptr,#_ProcessHeating_boiler_10000_105
      001ED7 F0               [24] 2657 	movx	@dptr,a
      001ED8 80 41            [24] 2658 	sjmp	00108$
      001EDA                       2659 00107$:
                                   2660 ;	../Common/CentralHeating.c:622: pump = 0;
      001EDA 90 02 2B         [24] 2661 	mov	dptr,#_ProcessHeating_pump_10000_105
      001EDD E4               [12] 2662 	clr	a
      001EDE F0               [24] 2663 	movx	@dptr,a
                                   2664 ;	../Common/CentralHeating.c:623: boiler = 0;
      001EDF 90 02 2C         [24] 2665 	mov	dptr,#_ProcessHeating_boiler_10000_105
      001EE2 F0               [24] 2666 	movx	@dptr,a
                                   2667 ;	../Common/CentralHeating.c:626: if (CompareDateTime(&currentDateTime, &provideHotwaterUntil) < 0 ||
      001EE3 90 02 AF         [24] 2668 	mov	dptr,#_CompareDateTime_PARM_2
      001EE6 74 C7            [12] 2669 	mov	a,#_provideHotwaterUntil
      001EE8 F0               [24] 2670 	movx	@dptr,a
      001EE9 74 01            [12] 2671 	mov	a,#(_provideHotwaterUntil >> 8)
      001EEB A3               [24] 2672 	inc	dptr
      001EEC F0               [24] 2673 	movx	@dptr,a
      001EED E4               [12] 2674 	clr	a
      001EEE A3               [24] 2675 	inc	dptr
      001EEF F0               [24] 2676 	movx	@dptr,a
      001EF0 90 01 C0         [24] 2677 	mov	dptr,#_currentDateTime
      001EF3 F5 F0            [12] 2678 	mov	b,a
      001EF5 12 36 FB         [24] 2679 	lcall	_CompareDateTime
      001EF8 E5 83            [12] 2680 	mov	a,dph
      001EFA 20 E7 0D         [24] 2681 	jb	acc.7,00101$
                                   2682 ;	../Common/CentralHeating.c:627: currentDateTime.hours == 17 || currentDateTime.hours == 18 )
      001EFD 90 01 C2         [24] 2683 	mov	dptr,#(_currentDateTime + 0x0002)
      001F00 E0               [24] 2684 	movx	a,@dptr
      001F01 FF               [12] 2685 	mov	r7,a
      001F02 BF 11 02         [24] 2686 	cjne	r7,#0x11,00199$
      001F05 80 03            [24] 2687 	sjmp	00101$
      001F07                       2688 00199$:
      001F07 BF 12 0C         [24] 2689 	cjne	r7,#0x12,00102$
      001F0A                       2690 00101$:
                                   2691 ;	../Common/CentralHeating.c:629: hotWaterNeeded = 1;
      001F0A 90 01 BF         [24] 2692 	mov	dptr,#_hotWaterNeeded
      001F0D 74 01            [12] 2693 	mov	a,#0x01
      001F0F F0               [24] 2694 	movx	@dptr,a
                                   2695 ;	../Common/CentralHeating.c:630: boiler = 1;
      001F10 90 02 2C         [24] 2696 	mov	dptr,#_ProcessHeating_boiler_10000_105
      001F13 F0               [24] 2697 	movx	@dptr,a
      001F14 80 05            [24] 2698 	sjmp	00108$
      001F16                       2699 00102$:
                                   2700 ;	../Common/CentralHeating.c:634: hotWaterNeeded = 0;
      001F16 90 01 BF         [24] 2701 	mov	dptr,#_hotWaterNeeded
      001F19 E4               [12] 2702 	clr	a
      001F1A F0               [24] 2703 	movx	@dptr,a
      001F1B                       2704 00108$:
                                   2705 ;	../Common/CentralHeating.c:639: output = 0;
      001F1B 90 02 2D         [24] 2706 	mov	dptr,#_ProcessHeating_output_10000_105
      001F1E E4               [12] 2707 	clr	a
      001F1F F0               [24] 2708 	movx	@dptr,a
                                   2709 ;	../Common/CentralHeating.c:640: if (boiler)
      001F20 90 02 2C         [24] 2710 	mov	dptr,#_ProcessHeating_boiler_10000_105
      001F23 E0               [24] 2711 	movx	a,@dptr
      001F24 60 06            [24] 2712 	jz	00114$
                                   2713 ;	../Common/CentralHeating.c:642: output |= OUTPUT_BOILER;
      001F26 90 02 2D         [24] 2714 	mov	dptr,#_ProcessHeating_output_10000_105
      001F29 74 20            [12] 2715 	mov	a,#0x20
      001F2B F0               [24] 2716 	movx	@dptr,a
      001F2C                       2717 00114$:
                                   2718 ;	../Common/CentralHeating.c:644: if (pump)
      001F2C 90 02 2B         [24] 2719 	mov	dptr,#_ProcessHeating_pump_10000_105
      001F2F E0               [24] 2720 	movx	a,@dptr
      001F30 60 08            [24] 2721 	jz	00116$
                                   2722 ;	../Common/CentralHeating.c:646: output |= OUTPUT_PUMP;
      001F32 90 02 2D         [24] 2723 	mov	dptr,#_ProcessHeating_output_10000_105
      001F35 E0               [24] 2724 	movx	a,@dptr
      001F36 43 E0 10         [24] 2725 	orl	acc,#0x10
      001F39 F0               [24] 2726 	movx	@dptr,a
      001F3A                       2727 00116$:
                                   2728 ;	../Common/CentralHeating.c:649: if (zones[0])
      001F3A 90 02 26         [24] 2729 	mov	dptr,#_ProcessHeating_zones_10000_105
      001F3D E0               [24] 2730 	movx	a,@dptr
      001F3E 60 10            [24] 2731 	jz	00118$
                                   2732 ;	../Common/CentralHeating.c:651: output |= OUTPUT_ACTUATOR1;
      001F40 90 02 2D         [24] 2733 	mov	dptr,#_ProcessHeating_output_10000_105
      001F43 E0               [24] 2734 	movx	a,@dptr
      001F44 43 E0 01         [24] 2735 	orl	acc,#0x01
      001F47 F0               [24] 2736 	movx	@dptr,a
                                   2737 ;	../Common/CentralHeating.c:652: output |= OUTPUT_ACTUATOR2;
      001F48 90 02 2D         [24] 2738 	mov	dptr,#_ProcessHeating_output_10000_105
      001F4B E0               [24] 2739 	movx	a,@dptr
      001F4C 43 E0 02         [24] 2740 	orl	acc,#0x02
      001F4F F0               [24] 2741 	movx	@dptr,a
      001F50                       2742 00118$:
                                   2743 ;	../Common/CentralHeating.c:654: if (zones[1])
      001F50 90 02 27         [24] 2744 	mov	dptr,#(_ProcessHeating_zones_10000_105 + 0x0001)
      001F53 E0               [24] 2745 	movx	a,@dptr
      001F54 60 08            [24] 2746 	jz	00120$
                                   2747 ;	../Common/CentralHeating.c:656: output |= OUTPUT_ACTUATOR3;
      001F56 90 02 2D         [24] 2748 	mov	dptr,#_ProcessHeating_output_10000_105
      001F59 E0               [24] 2749 	movx	a,@dptr
      001F5A 43 E0 04         [24] 2750 	orl	acc,#0x04
      001F5D F0               [24] 2751 	movx	@dptr,a
      001F5E                       2752 00120$:
                                   2753 ;	../Common/CentralHeating.c:658: if (zones[2])
      001F5E 90 02 28         [24] 2754 	mov	dptr,#(_ProcessHeating_zones_10000_105 + 0x0002)
      001F61 E0               [24] 2755 	movx	a,@dptr
      001F62 60 08            [24] 2756 	jz	00122$
                                   2757 ;	../Common/CentralHeating.c:660: output |= OUTPUT_ACTUATOR4;
      001F64 90 02 2D         [24] 2758 	mov	dptr,#_ProcessHeating_output_10000_105
      001F67 E0               [24] 2759 	movx	a,@dptr
      001F68 43 E0 08         [24] 2760 	orl	acc,#0x08
      001F6B F0               [24] 2761 	movx	@dptr,a
      001F6C                       2762 00122$:
                                   2763 ;	../Common/CentralHeating.c:663: pSetOutputPortValues(output);
      001F6C 90 02 2D         [24] 2764 	mov	dptr,#_ProcessHeating_output_10000_105
      001F6F E0               [24] 2765 	movx	a,@dptr
      001F70 FF               [12] 2766 	mov	r7,a
      001F71 C0 07            [24] 2767 	push	ar7
      001F73 12 1F 78         [24] 2768 	lcall	00207$
      001F76 80 0D            [24] 2769 	sjmp	00208$
      001F78                       2770 00207$:
      001F78 90 00 0F         [24] 2771 	mov	dptr,#_pSetOutputPortValues
      001F7B E0               [24] 2772 	movx	a,@dptr
      001F7C C0 E0            [24] 2773 	push	acc
      001F7E A3               [24] 2774 	inc	dptr
      001F7F E0               [24] 2775 	movx	a,@dptr
      001F80 C0 E0            [24] 2776 	push	acc
      001F82 8F 82            [24] 2777 	mov	dpl, r7
      001F84 22               [24] 2778 	ret
      001F85                       2779 00208$:
      001F85 D0 07            [24] 2780 	pop	ar7
                                   2781 ;	../Common/CentralHeating.c:664: lastOutputState = output;
      001F87 90 01 BD         [24] 2782 	mov	dptr,#_lastOutputState
      001F8A EF               [12] 2783 	mov	a,r7
      001F8B F0               [24] 2784 	movx	@dptr,a
                                   2785 ;	../Common/CentralHeating.c:665: }
      001F8C 22               [24] 2786 	ret
                                   2787 ;------------------------------------------------------------
                                   2788 ;Allocation info for local variables in function 'AnimateScreen'
                                   2789 ;------------------------------------------------------------
                                   2790 ;strBuffer     Allocated with name '_AnimateScreen_strBuffer_10000_115'
                                   2791 ;numericValue  Allocated with name '_AnimateScreen_numericValue_10000_115'
                                   2792 ;zones         Allocated with name '_AnimateScreen_zones_10000_115'
                                   2793 ;outputs       Allocated with name '_AnimateScreen_outputs_10000_115'
                                   2794 ;index         Allocated with name '_AnimateScreen_index_10000_115'
                                   2795 ;------------------------------------------------------------
                                   2796 ;	../Common/CentralHeating.c:668: void AnimateScreen()
                                   2797 ;	-----------------------------------------
                                   2798 ;	 function AnimateScreen
                                   2799 ;	-----------------------------------------
      001F8D                       2800 _AnimateScreen:
                                   2801 ;	../Common/CentralHeating.c:676: if (animationType == ANIMATE_INPUTS)
      001F8D 90 01 BE         [24] 2802 	mov	dptr,#_animationType
      001F90 E0               [24] 2803 	movx	a,@dptr
      001F91 FF               [12] 2804 	mov	r7,a
      001F92 60 03            [24] 2805 	jz	00223$
      001F94 02 20 3E         [24] 2806 	ljmp	00127$
      001F97                       2807 00223$:
                                   2808 ;	../Common/CentralHeating.c:678: zones[0] = lastInputState & INPUT_ZONE1;
      001F97 90 01 BC         [24] 2809 	mov	dptr,#_lastInputState
      001F9A E0               [24] 2810 	movx	a,@dptr
      001F9B 54 10            [12] 2811 	anl	a,#0x10
      001F9D 90 02 3B         [24] 2812 	mov	dptr,#_AnimateScreen_zones_10000_115
      001FA0 F0               [24] 2813 	movx	@dptr,a
                                   2814 ;	../Common/CentralHeating.c:679: zones[1] = lastInputState & INPUT_ZONE2;
      001FA1 90 01 BC         [24] 2815 	mov	dptr,#_lastInputState
      001FA4 E0               [24] 2816 	movx	a,@dptr
      001FA5 54 20            [12] 2817 	anl	a,#0x20
      001FA7 90 02 3C         [24] 2818 	mov	dptr,#(_AnimateScreen_zones_10000_115 + 0x0001)
      001FAA F0               [24] 2819 	movx	@dptr,a
                                   2820 ;	../Common/CentralHeating.c:680: zones[2] = lastInputState & INPUT_ZONE3;
      001FAB 90 01 BC         [24] 2821 	mov	dptr,#_lastInputState
      001FAE E0               [24] 2822 	movx	a,@dptr
      001FAF 54 04            [12] 2823 	anl	a,#0x04
      001FB1 90 02 3D         [24] 2824 	mov	dptr,#(_AnimateScreen_zones_10000_115 + 0x0002)
      001FB4 F0               [24] 2825 	movx	@dptr,a
                                   2826 ;	../Common/CentralHeating.c:681: zones[3] = lastInputState & INPUT_ZONE4;
      001FB5 90 01 BC         [24] 2827 	mov	dptr,#_lastInputState
      001FB8 E0               [24] 2828 	movx	a,@dptr
      001FB9 54 08            [12] 2829 	anl	a,#0x08
      001FBB 90 02 3E         [24] 2830 	mov	dptr,#(_AnimateScreen_zones_10000_115 + 0x0003)
      001FBE F0               [24] 2831 	movx	@dptr,a
                                   2832 ;	../Common/CentralHeating.c:682: zones[4] = lastInputState & INPUT_ZONE5;
      001FBF 90 01 BC         [24] 2833 	mov	dptr,#_lastInputState
      001FC2 E0               [24] 2834 	movx	a,@dptr
      001FC3 54 40            [12] 2835 	anl	a,#0x40
      001FC5 90 02 3F         [24] 2836 	mov	dptr,#(_AnimateScreen_zones_10000_115 + 0x0004)
      001FC8 F0               [24] 2837 	movx	@dptr,a
                                   2838 ;	../Common/CentralHeating.c:685: strcpy(strBuffer, "Zone ");
      001FC9 90 02 8F         [24] 2839 	mov	dptr,#_strcpy_PARM_2
      001FCC 74 3D            [12] 2840 	mov	a,#___str_9
      001FCE F0               [24] 2841 	movx	@dptr,a
      001FCF 74 3B            [12] 2842 	mov	a,#(___str_9 >> 8)
      001FD1 A3               [24] 2843 	inc	dptr
      001FD2 F0               [24] 2844 	movx	@dptr,a
      001FD3 74 80            [12] 2845 	mov	a,#0x80
      001FD5 A3               [24] 2846 	inc	dptr
      001FD6 F0               [24] 2847 	movx	@dptr,a
      001FD7 90 02 2E         [24] 2848 	mov	dptr,#_AnimateScreen_strBuffer_10000_115
      001FDA 75 F0 00         [24] 2849 	mov	b, #0x00
      001FDD 12 2F 21         [24] 2850 	lcall	_strcpy
                                   2851 ;	../Common/CentralHeating.c:686: for (index = 0; index < 5; ++index)
      001FE0 7E 00            [12] 2852 	mov	r6,#0x00
      001FE2                       2853 00131$:
                                   2854 ;	../Common/CentralHeating.c:688: if (zones[index])
      001FE2 EE               [12] 2855 	mov	a,r6
      001FE3 24 3B            [12] 2856 	add	a, #_AnimateScreen_zones_10000_115
      001FE5 FC               [12] 2857 	mov	r4,a
      001FE6 E4               [12] 2858 	clr	a
      001FE7 34 02            [12] 2859 	addc	a, #(_AnimateScreen_zones_10000_115 >> 8)
      001FE9 FD               [12] 2860 	mov	r5,a
      001FEA 8C 82            [24] 2861 	mov	dpl,r4
      001FEC 8D 83            [24] 2862 	mov	dph,r5
      001FEE E0               [24] 2863 	movx	a,@dptr
      001FEF 60 29            [24] 2864 	jz	00102$
                                   2865 ;	../Common/CentralHeating.c:690: numericValue[0] = '1' + index;
      001FF1 8E 05            [24] 2866 	mov	ar5,r6
      001FF3 74 31            [12] 2867 	mov	a,#0x31
      001FF5 2D               [12] 2868 	add	a, r5
      001FF6 90 02 39         [24] 2869 	mov	dptr,#_AnimateScreen_numericValue_10000_115
      001FF9 F0               [24] 2870 	movx	@dptr,a
                                   2871 ;	../Common/CentralHeating.c:691: numericValue[1] = 0;
      001FFA 90 02 3A         [24] 2872 	mov	dptr,#(_AnimateScreen_numericValue_10000_115 + 0x0001)
      001FFD E4               [12] 2873 	clr	a
      001FFE F0               [24] 2874 	movx	@dptr,a
                                   2875 ;	../Common/CentralHeating.c:692: strcat(strBuffer, numericValue);
      001FFF 90 02 89         [24] 2876 	mov	dptr,#_strcat_PARM_2
      002002 74 39            [12] 2877 	mov	a,#_AnimateScreen_numericValue_10000_115
      002004 F0               [24] 2878 	movx	@dptr,a
      002005 74 02            [12] 2879 	mov	a,#(_AnimateScreen_numericValue_10000_115 >> 8)
      002007 A3               [24] 2880 	inc	dptr
      002008 F0               [24] 2881 	movx	@dptr,a
      002009 E4               [12] 2882 	clr	a
      00200A A3               [24] 2883 	inc	dptr
      00200B F0               [24] 2884 	movx	@dptr,a
      00200C 90 02 2E         [24] 2885 	mov	dptr,#_AnimateScreen_strBuffer_10000_115
      00200F F5 F0            [12] 2886 	mov	b,a
      002011 C0 06            [24] 2887 	push	ar6
      002013 12 2E 91         [24] 2888 	lcall	_strcat
      002016 D0 06            [24] 2889 	pop	ar6
      002018 80 1B            [24] 2890 	sjmp	00132$
      00201A                       2891 00102$:
                                   2892 ;	../Common/CentralHeating.c:696: strcat(strBuffer, "_");
      00201A 90 02 89         [24] 2893 	mov	dptr,#_strcat_PARM_2
      00201D 74 43            [12] 2894 	mov	a,#___str_10
      00201F F0               [24] 2895 	movx	@dptr,a
      002020 74 3B            [12] 2896 	mov	a,#(___str_10 >> 8)
      002022 A3               [24] 2897 	inc	dptr
      002023 F0               [24] 2898 	movx	@dptr,a
      002024 74 80            [12] 2899 	mov	a,#0x80
      002026 A3               [24] 2900 	inc	dptr
      002027 F0               [24] 2901 	movx	@dptr,a
      002028 90 02 2E         [24] 2902 	mov	dptr,#_AnimateScreen_strBuffer_10000_115
      00202B 75 F0 00         [24] 2903 	mov	b, #0x00
      00202E C0 06            [24] 2904 	push	ar6
      002030 12 2E 91         [24] 2905 	lcall	_strcat
      002033 D0 06            [24] 2906 	pop	ar6
      002035                       2907 00132$:
                                   2908 ;	../Common/CentralHeating.c:686: for (index = 0; index < 5; ++index)
      002035 0E               [12] 2909 	inc	r6
      002036 BE 05 00         [24] 2910 	cjne	r6,#0x05,00225$
      002039                       2911 00225$:
      002039 40 A7            [24] 2912 	jc	00131$
      00203B 02 21 BD         [24] 2913 	ljmp	00128$
      00203E                       2914 00127$:
                                   2915 ;	../Common/CentralHeating.c:700: else if (animationType == ANIMATE_OUTPUTS)
      00203E BF 01 02         [24] 2916 	cjne	r7,#0x01,00227$
      002041 80 03            [24] 2917 	sjmp	00228$
      002043                       2918 00227$:
      002043 02 21 51         [24] 2919 	ljmp	00124$
      002046                       2920 00228$:
                                   2921 ;	../Common/CentralHeating.c:702: outputs[0] = lastOutputState & OUTPUT_ACTUATOR1;
      002046 90 01 BD         [24] 2922 	mov	dptr,#_lastOutputState
      002049 E0               [24] 2923 	movx	a,@dptr
      00204A 54 01            [12] 2924 	anl	a,#0x01
      00204C 90 02 40         [24] 2925 	mov	dptr,#_AnimateScreen_outputs_10000_115
      00204F F0               [24] 2926 	movx	@dptr,a
                                   2927 ;	../Common/CentralHeating.c:703: outputs[1] = lastOutputState & OUTPUT_ACTUATOR2;
      002050 90 01 BD         [24] 2928 	mov	dptr,#_lastOutputState
      002053 E0               [24] 2929 	movx	a,@dptr
      002054 54 02            [12] 2930 	anl	a,#0x02
      002056 90 02 41         [24] 2931 	mov	dptr,#(_AnimateScreen_outputs_10000_115 + 0x0001)
      002059 F0               [24] 2932 	movx	@dptr,a
                                   2933 ;	../Common/CentralHeating.c:704: outputs[2] = lastOutputState & OUTPUT_ACTUATOR3;
      00205A 90 01 BD         [24] 2934 	mov	dptr,#_lastOutputState
      00205D E0               [24] 2935 	movx	a,@dptr
      00205E 54 04            [12] 2936 	anl	a,#0x04
      002060 90 02 42         [24] 2937 	mov	dptr,#(_AnimateScreen_outputs_10000_115 + 0x0002)
      002063 F0               [24] 2938 	movx	@dptr,a
                                   2939 ;	../Common/CentralHeating.c:705: outputs[3] = lastOutputState & OUTPUT_ACTUATOR4;
      002064 90 01 BD         [24] 2940 	mov	dptr,#_lastOutputState
      002067 E0               [24] 2941 	movx	a,@dptr
      002068 54 08            [12] 2942 	anl	a,#0x08
      00206A 90 02 43         [24] 2943 	mov	dptr,#(_AnimateScreen_outputs_10000_115 + 0x0003)
      00206D F0               [24] 2944 	movx	@dptr,a
                                   2945 ;	../Common/CentralHeating.c:707: strcpy(strBuffer, "Out ");
      00206E 90 02 8F         [24] 2946 	mov	dptr,#_strcpy_PARM_2
      002071 74 45            [12] 2947 	mov	a,#___str_11
      002073 F0               [24] 2948 	movx	@dptr,a
      002074 74 3B            [12] 2949 	mov	a,#(___str_11 >> 8)
      002076 A3               [24] 2950 	inc	dptr
      002077 F0               [24] 2951 	movx	@dptr,a
      002078 74 80            [12] 2952 	mov	a,#0x80
      00207A A3               [24] 2953 	inc	dptr
      00207B F0               [24] 2954 	movx	@dptr,a
      00207C 90 02 2E         [24] 2955 	mov	dptr,#_AnimateScreen_strBuffer_10000_115
      00207F 75 F0 00         [24] 2956 	mov	b, #0x00
      002082 12 2F 21         [24] 2957 	lcall	_strcpy
                                   2958 ;	../Common/CentralHeating.c:708: for (index = 0; index < 4; ++index)
      002085 7E 00            [12] 2959 	mov	r6,#0x00
      002087                       2960 00133$:
                                   2961 ;	../Common/CentralHeating.c:710: if (outputs[index])
      002087 EE               [12] 2962 	mov	a,r6
      002088 24 40            [12] 2963 	add	a, #_AnimateScreen_outputs_10000_115
      00208A FC               [12] 2964 	mov	r4,a
      00208B E4               [12] 2965 	clr	a
      00208C 34 02            [12] 2966 	addc	a, #(_AnimateScreen_outputs_10000_115 >> 8)
      00208E FD               [12] 2967 	mov	r5,a
      00208F 8C 82            [24] 2968 	mov	dpl,r4
      002091 8D 83            [24] 2969 	mov	dph,r5
      002093 E0               [24] 2970 	movx	a,@dptr
      002094 60 29            [24] 2971 	jz	00106$
                                   2972 ;	../Common/CentralHeating.c:712: numericValue[0] = '1' + index;
      002096 8E 05            [24] 2973 	mov	ar5,r6
      002098 74 31            [12] 2974 	mov	a,#0x31
      00209A 2D               [12] 2975 	add	a, r5
      00209B 90 02 39         [24] 2976 	mov	dptr,#_AnimateScreen_numericValue_10000_115
      00209E F0               [24] 2977 	movx	@dptr,a
                                   2978 ;	../Common/CentralHeating.c:713: numericValue[1] = 0;
      00209F 90 02 3A         [24] 2979 	mov	dptr,#(_AnimateScreen_numericValue_10000_115 + 0x0001)
      0020A2 E4               [12] 2980 	clr	a
      0020A3 F0               [24] 2981 	movx	@dptr,a
                                   2982 ;	../Common/CentralHeating.c:714: strcat(strBuffer, numericValue);
      0020A4 90 02 89         [24] 2983 	mov	dptr,#_strcat_PARM_2
      0020A7 74 39            [12] 2984 	mov	a,#_AnimateScreen_numericValue_10000_115
      0020A9 F0               [24] 2985 	movx	@dptr,a
      0020AA 74 02            [12] 2986 	mov	a,#(_AnimateScreen_numericValue_10000_115 >> 8)
      0020AC A3               [24] 2987 	inc	dptr
      0020AD F0               [24] 2988 	movx	@dptr,a
      0020AE E4               [12] 2989 	clr	a
      0020AF A3               [24] 2990 	inc	dptr
      0020B0 F0               [24] 2991 	movx	@dptr,a
      0020B1 90 02 2E         [24] 2992 	mov	dptr,#_AnimateScreen_strBuffer_10000_115
      0020B4 F5 F0            [12] 2993 	mov	b,a
      0020B6 C0 06            [24] 2994 	push	ar6
      0020B8 12 2E 91         [24] 2995 	lcall	_strcat
      0020BB D0 06            [24] 2996 	pop	ar6
      0020BD 80 1B            [24] 2997 	sjmp	00134$
      0020BF                       2998 00106$:
                                   2999 ;	../Common/CentralHeating.c:718: strcat(strBuffer, "_");
      0020BF 90 02 89         [24] 3000 	mov	dptr,#_strcat_PARM_2
      0020C2 74 43            [12] 3001 	mov	a,#___str_10
      0020C4 F0               [24] 3002 	movx	@dptr,a
      0020C5 74 3B            [12] 3003 	mov	a,#(___str_10 >> 8)
      0020C7 A3               [24] 3004 	inc	dptr
      0020C8 F0               [24] 3005 	movx	@dptr,a
      0020C9 74 80            [12] 3006 	mov	a,#0x80
      0020CB A3               [24] 3007 	inc	dptr
      0020CC F0               [24] 3008 	movx	@dptr,a
      0020CD 90 02 2E         [24] 3009 	mov	dptr,#_AnimateScreen_strBuffer_10000_115
      0020D0 75 F0 00         [24] 3010 	mov	b, #0x00
      0020D3 C0 06            [24] 3011 	push	ar6
      0020D5 12 2E 91         [24] 3012 	lcall	_strcat
      0020D8 D0 06            [24] 3013 	pop	ar6
      0020DA                       3014 00134$:
                                   3015 ;	../Common/CentralHeating.c:708: for (index = 0; index < 4; ++index)
      0020DA 0E               [12] 3016 	inc	r6
      0020DB BE 04 00         [24] 3017 	cjne	r6,#0x04,00230$
      0020DE                       3018 00230$:
      0020DE 40 A7            [24] 3019 	jc	00133$
                                   3020 ;	../Common/CentralHeating.c:722: if (lastOutputState & OUTPUT_PUMP)
      0020E0 90 01 BD         [24] 3021 	mov	dptr,#_lastOutputState
      0020E3 E0               [24] 3022 	movx	a,@dptr
      0020E4 30 E4 19         [24] 3023 	jnb	acc.4,00110$
                                   3024 ;	../Common/CentralHeating.c:724: strcat(strBuffer, "P");
      0020E7 90 02 89         [24] 3025 	mov	dptr,#_strcat_PARM_2
      0020EA 74 4A            [12] 3026 	mov	a,#___str_12
      0020EC F0               [24] 3027 	movx	@dptr,a
      0020ED 74 3B            [12] 3028 	mov	a,#(___str_12 >> 8)
      0020EF A3               [24] 3029 	inc	dptr
      0020F0 F0               [24] 3030 	movx	@dptr,a
      0020F1 74 80            [12] 3031 	mov	a,#0x80
      0020F3 A3               [24] 3032 	inc	dptr
      0020F4 F0               [24] 3033 	movx	@dptr,a
      0020F5 90 02 2E         [24] 3034 	mov	dptr,#_AnimateScreen_strBuffer_10000_115
      0020F8 75 F0 00         [24] 3035 	mov	b, #0x00
      0020FB 12 2E 91         [24] 3036 	lcall	_strcat
      0020FE 80 17            [24] 3037 	sjmp	00111$
      002100                       3038 00110$:
                                   3039 ;	../Common/CentralHeating.c:728: strcat(strBuffer, "_");
      002100 90 02 89         [24] 3040 	mov	dptr,#_strcat_PARM_2
      002103 74 43            [12] 3041 	mov	a,#___str_10
      002105 F0               [24] 3042 	movx	@dptr,a
      002106 74 3B            [12] 3043 	mov	a,#(___str_10 >> 8)
      002108 A3               [24] 3044 	inc	dptr
      002109 F0               [24] 3045 	movx	@dptr,a
      00210A 74 80            [12] 3046 	mov	a,#0x80
      00210C A3               [24] 3047 	inc	dptr
      00210D F0               [24] 3048 	movx	@dptr,a
      00210E 90 02 2E         [24] 3049 	mov	dptr,#_AnimateScreen_strBuffer_10000_115
      002111 75 F0 00         [24] 3050 	mov	b, #0x00
      002114 12 2E 91         [24] 3051 	lcall	_strcat
      002117                       3052 00111$:
                                   3053 ;	../Common/CentralHeating.c:731: if (lastOutputState & OUTPUT_BOILER)
      002117 90 01 BD         [24] 3054 	mov	dptr,#_lastOutputState
      00211A E0               [24] 3055 	movx	a,@dptr
      00211B 30 E5 1A         [24] 3056 	jnb	acc.5,00113$
                                   3057 ;	../Common/CentralHeating.c:733: strcat(strBuffer, "B");
      00211E 90 02 89         [24] 3058 	mov	dptr,#_strcat_PARM_2
      002121 74 4C            [12] 3059 	mov	a,#___str_13
      002123 F0               [24] 3060 	movx	@dptr,a
      002124 74 3B            [12] 3061 	mov	a,#(___str_13 >> 8)
      002126 A3               [24] 3062 	inc	dptr
      002127 F0               [24] 3063 	movx	@dptr,a
      002128 74 80            [12] 3064 	mov	a,#0x80
      00212A A3               [24] 3065 	inc	dptr
      00212B F0               [24] 3066 	movx	@dptr,a
      00212C 90 02 2E         [24] 3067 	mov	dptr,#_AnimateScreen_strBuffer_10000_115
      00212F 75 F0 00         [24] 3068 	mov	b, #0x00
      002132 12 2E 91         [24] 3069 	lcall	_strcat
      002135 02 21 BD         [24] 3070 	ljmp	00128$
      002138                       3071 00113$:
                                   3072 ;	../Common/CentralHeating.c:737: strcat(strBuffer, "_");
      002138 90 02 89         [24] 3073 	mov	dptr,#_strcat_PARM_2
      00213B 74 43            [12] 3074 	mov	a,#___str_10
      00213D F0               [24] 3075 	movx	@dptr,a
      00213E 74 3B            [12] 3076 	mov	a,#(___str_10 >> 8)
      002140 A3               [24] 3077 	inc	dptr
      002141 F0               [24] 3078 	movx	@dptr,a
      002142 74 80            [12] 3079 	mov	a,#0x80
      002144 A3               [24] 3080 	inc	dptr
      002145 F0               [24] 3081 	movx	@dptr,a
      002146 90 02 2E         [24] 3082 	mov	dptr,#_AnimateScreen_strBuffer_10000_115
      002149 75 F0 00         [24] 3083 	mov	b, #0x00
      00214C 12 2E 91         [24] 3084 	lcall	_strcat
      00214F 80 6C            [24] 3085 	sjmp	00128$
      002151                       3086 00124$:
                                   3087 ;	../Common/CentralHeating.c:740: else if (animationType == ANIMATE_HW)
      002151 BF 02 4F         [24] 3088 	cjne	r7,#0x02,00121$
                                   3089 ;	../Common/CentralHeating.c:742: strcpy(strBuffer, "HW ");
      002154 90 02 8F         [24] 3090 	mov	dptr,#_strcpy_PARM_2
      002157 74 4E            [12] 3091 	mov	a,#___str_14
      002159 F0               [24] 3092 	movx	@dptr,a
      00215A 74 3B            [12] 3093 	mov	a,#(___str_14 >> 8)
      00215C A3               [24] 3094 	inc	dptr
      00215D F0               [24] 3095 	movx	@dptr,a
      00215E 74 80            [12] 3096 	mov	a,#0x80
      002160 A3               [24] 3097 	inc	dptr
      002161 F0               [24] 3098 	movx	@dptr,a
      002162 90 02 2E         [24] 3099 	mov	dptr,#_AnimateScreen_strBuffer_10000_115
      002165 75 F0 00         [24] 3100 	mov	b, #0x00
      002168 12 2F 21         [24] 3101 	lcall	_strcpy
                                   3102 ;	../Common/CentralHeating.c:743: if (hotWaterNeeded)
      00216B 90 01 BF         [24] 3103 	mov	dptr,#_hotWaterNeeded
      00216E E0               [24] 3104 	movx	a,@dptr
      00216F 60 19            [24] 3105 	jz	00116$
                                   3106 ;	../Common/CentralHeating.c:745: strcat(strBuffer, "On");
      002171 90 02 89         [24] 3107 	mov	dptr,#_strcat_PARM_2
      002174 74 52            [12] 3108 	mov	a,#___str_15
      002176 F0               [24] 3109 	movx	@dptr,a
      002177 74 3B            [12] 3110 	mov	a,#(___str_15 >> 8)
      002179 A3               [24] 3111 	inc	dptr
      00217A F0               [24] 3112 	movx	@dptr,a
      00217B 74 80            [12] 3113 	mov	a,#0x80
      00217D A3               [24] 3114 	inc	dptr
      00217E F0               [24] 3115 	movx	@dptr,a
      00217F 90 02 2E         [24] 3116 	mov	dptr,#_AnimateScreen_strBuffer_10000_115
      002182 75 F0 00         [24] 3117 	mov	b, #0x00
      002185 12 2E 91         [24] 3118 	lcall	_strcat
      002188 80 33            [24] 3119 	sjmp	00128$
      00218A                       3120 00116$:
                                   3121 ;	../Common/CentralHeating.c:749: strcat(strBuffer, "Off");
      00218A 90 02 89         [24] 3122 	mov	dptr,#_strcat_PARM_2
      00218D 74 0B            [12] 3123 	mov	a,#___str_1
      00218F F0               [24] 3124 	movx	@dptr,a
      002190 74 3B            [12] 3125 	mov	a,#(___str_1 >> 8)
      002192 A3               [24] 3126 	inc	dptr
      002193 F0               [24] 3127 	movx	@dptr,a
      002194 74 80            [12] 3128 	mov	a,#0x80
      002196 A3               [24] 3129 	inc	dptr
      002197 F0               [24] 3130 	movx	@dptr,a
      002198 90 02 2E         [24] 3131 	mov	dptr,#_AnimateScreen_strBuffer_10000_115
      00219B 75 F0 00         [24] 3132 	mov	b, #0x00
      00219E 12 2E 91         [24] 3133 	lcall	_strcat
      0021A1 80 1A            [24] 3134 	sjmp	00128$
      0021A3                       3135 00121$:
                                   3136 ;	../Common/CentralHeating.c:752: else if (animationType == ANIMATE_VERSION)
      0021A3 BF 03 17         [24] 3137 	cjne	r7,#0x03,00128$
                                   3138 ;	../Common/CentralHeating.c:754: strcpy(strBuffer, COMPILED_AT);
      0021A6 90 02 8F         [24] 3139 	mov	dptr,#_strcpy_PARM_2
      0021A9 74 55            [12] 3140 	mov	a,#___str_16
      0021AB F0               [24] 3141 	movx	@dptr,a
      0021AC 74 3B            [12] 3142 	mov	a,#(___str_16 >> 8)
      0021AE A3               [24] 3143 	inc	dptr
      0021AF F0               [24] 3144 	movx	@dptr,a
      0021B0 74 80            [12] 3145 	mov	a,#0x80
      0021B2 A3               [24] 3146 	inc	dptr
      0021B3 F0               [24] 3147 	movx	@dptr,a
      0021B4 90 02 2E         [24] 3148 	mov	dptr,#_AnimateScreen_strBuffer_10000_115
      0021B7 75 F0 00         [24] 3149 	mov	b, #0x00
      0021BA 12 2F 21         [24] 3150 	lcall	_strcpy
      0021BD                       3151 00128$:
                                   3152 ;	../Common/CentralHeating.c:757: PartialWriteToScreen(0, 10, strBuffer);
      0021BD 90 01 E3         [24] 3153 	mov	dptr,#_PartialWriteToScreen_PARM_2
      0021C0 74 0A            [12] 3154 	mov	a,#0x0a
      0021C2 F0               [24] 3155 	movx	@dptr,a
      0021C3 E4               [12] 3156 	clr	a
      0021C4 A3               [24] 3157 	inc	dptr
      0021C5 F0               [24] 3158 	movx	@dptr,a
      0021C6 90 01 E5         [24] 3159 	mov	dptr,#_PartialWriteToScreen_PARM_3
      0021C9 74 2E            [12] 3160 	mov	a,#_AnimateScreen_strBuffer_10000_115
      0021CB F0               [24] 3161 	movx	@dptr,a
      0021CC 74 02            [12] 3162 	mov	a,#(_AnimateScreen_strBuffer_10000_115 >> 8)
      0021CE A3               [24] 3163 	inc	dptr
      0021CF F0               [24] 3164 	movx	@dptr,a
      0021D0 E4               [12] 3165 	clr	a
      0021D1 A3               [24] 3166 	inc	dptr
      0021D2 F0               [24] 3167 	movx	@dptr,a
      0021D3 90 00 00         [24] 3168 	mov	dptr,#0x0000
      0021D6 12 16 BC         [24] 3169 	lcall	_PartialWriteToScreen
                                   3170 ;	../Common/CentralHeating.c:758: animationType++;
      0021D9 90 01 BE         [24] 3171 	mov	dptr,#_animationType
      0021DC E0               [24] 3172 	movx	a,@dptr
      0021DD 24 01            [12] 3173 	add	a, #0x01
      0021DF F0               [24] 3174 	movx	@dptr,a
                                   3175 ;	../Common/CentralHeating.c:759: if (animationType > ANIMATE_VERSION)
      0021E0 E0               [24] 3176 	movx	a,@dptr
      0021E1 24 FC            [12] 3177 	add	a,#0xff - 0x03
      0021E3 50 05            [24] 3178 	jnc	00135$
                                   3179 ;	../Common/CentralHeating.c:761: animationType = ANIMATE_INPUTS;
      0021E5 90 01 BE         [24] 3180 	mov	dptr,#_animationType
      0021E8 E4               [12] 3181 	clr	a
      0021E9 F0               [24] 3182 	movx	@dptr,a
      0021EA                       3183 00135$:
                                   3184 ;	../Common/CentralHeating.c:763: }
      0021EA 22               [24] 3185 	ret
                                   3186 	.area CSEG    (CODE)
                                   3187 	.area CONST   (CODE)
                                   3188 	.area CONST   (CODE)
      003B0A                       3189 ___str_0:
      003B0A 00                    3190 	.db 0x00
                                   3191 	.area CSEG    (CODE)
                                   3192 	.area CONST   (CODE)
      003B0B                       3193 ___str_1:
      003B0B 4F 66 66              3194 	.ascii "Off"
      003B0E 00                    3195 	.db 0x00
                                   3196 	.area CSEG    (CODE)
                                   3197 	.area CONST   (CODE)
      003B0F                       3198 ___str_2:
      003B0F 42 6F 69 6C 65 72     3199 	.ascii "Boiler"
      003B15 00                    3200 	.db 0x00
                                   3201 	.area CSEG    (CODE)
                                   3202 	.area CONST   (CODE)
      003B16                       3203 ___str_3:
      003B16 50 75 6D 70           3204 	.ascii "Pump"
      003B1A 00                    3205 	.db 0x00
                                   3206 	.area CSEG    (CODE)
                                   3207 	.area CONST   (CODE)
      003B1B                       3208 ___str_4:
      003B1B 5A 6F 6E 65 20 31     3209 	.ascii "Zone 1"
      003B21 00                    3210 	.db 0x00
                                   3211 	.area CSEG    (CODE)
                                   3212 	.area CONST   (CODE)
      003B22                       3213 ___str_5:
      003B22 5A 6F 6E 65 20 32     3214 	.ascii "Zone 2"
      003B28 00                    3215 	.db 0x00
                                   3216 	.area CSEG    (CODE)
                                   3217 	.area CONST   (CODE)
      003B29                       3218 ___str_6:
      003B29 5A 6F 6E 65 20 33     3219 	.ascii "Zone 3"
      003B2F 00                    3220 	.db 0x00
                                   3221 	.area CSEG    (CODE)
                                   3222 	.area CONST   (CODE)
      003B30                       3223 ___str_7:
      003B30 5A 6F 6E 65 20 34     3224 	.ascii "Zone 4"
      003B36 00                    3225 	.db 0x00
                                   3226 	.area CSEG    (CODE)
                                   3227 	.area CONST   (CODE)
      003B37                       3228 ___str_8:
      003B37 52 65 73 65 74        3229 	.ascii "Reset"
      003B3C 00                    3230 	.db 0x00
                                   3231 	.area CSEG    (CODE)
                                   3232 	.area CONST   (CODE)
      003B3D                       3233 ___str_9:
      003B3D 5A 6F 6E 65 20        3234 	.ascii "Zone "
      003B42 00                    3235 	.db 0x00
                                   3236 	.area CSEG    (CODE)
                                   3237 	.area CONST   (CODE)
      003B43                       3238 ___str_10:
      003B43 5F                    3239 	.ascii "_"
      003B44 00                    3240 	.db 0x00
                                   3241 	.area CSEG    (CODE)
                                   3242 	.area CONST   (CODE)
      003B45                       3243 ___str_11:
      003B45 4F 75 74 20           3244 	.ascii "Out "
      003B49 00                    3245 	.db 0x00
                                   3246 	.area CSEG    (CODE)
                                   3247 	.area CONST   (CODE)
      003B4A                       3248 ___str_12:
      003B4A 50                    3249 	.ascii "P"
      003B4B 00                    3250 	.db 0x00
                                   3251 	.area CSEG    (CODE)
                                   3252 	.area CONST   (CODE)
      003B4C                       3253 ___str_13:
      003B4C 42                    3254 	.ascii "B"
      003B4D 00                    3255 	.db 0x00
                                   3256 	.area CSEG    (CODE)
                                   3257 	.area CONST   (CODE)
      003B4E                       3258 ___str_14:
      003B4E 48 57 20              3259 	.ascii "HW "
      003B51 00                    3260 	.db 0x00
                                   3261 	.area CSEG    (CODE)
                                   3262 	.area CONST   (CODE)
      003B52                       3263 ___str_15:
      003B52 4F 6E                 3264 	.ascii "On"
      003B54 00                    3265 	.db 0x00
                                   3266 	.area CSEG    (CODE)
                                   3267 	.area CONST   (CODE)
      003B55                       3268 ___str_16:
      003B55 32 30 32 30 30 37 31  3269 	.ascii "20200718"
             38
      003B5D 00                    3270 	.db 0x00
                                   3271 	.area CSEG    (CODE)
                                   3272 	.area XINIT   (CODE)
                                   3273 	.area CABS    (ABS,CODE)
