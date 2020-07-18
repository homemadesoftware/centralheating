                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module CentralHeating
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
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
                                    480 ; external ram data
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
      0001CE                        503 _Callback_cookie_65536_31:
      0001CE                        504 	.ds 2
      0001D0                        505 _Callback_keys_65536_32:
      0001D0                        506 	.ds 2
      0001D2                        507 _DisplayMenuOnHardware_buffer_65536_47:
      0001D2                        508 	.ds 17
      0001E3                        509 _PartialWriteToScreen_PARM_2:
      0001E3                        510 	.ds 2
      0001E5                        511 _PartialWriteToScreen_PARM_3:
      0001E5                        512 	.ds 3
      0001E8                        513 _PartialWriteToScreen_screenPosition_65536_52:
      0001E8                        514 	.ds 2
      0001EA                        515 _HandleMenuCommand_PARM_2:
      0001EA                        516 	.ds 2
      0001EC                        517 _HandleMenuCommand_menuItem_65536_59:
      0001EC                        518 	.ds 2
      0001EE                        519 _HandleMenuCommand_dt_65536_60:
      0001EE                        520 	.ds 7
      0001F5                        521 _WriteCurrentTime_strBuffer_65536_100:
      0001F5                        522 	.ds 10
      0001FF                        523 _PreviewTimeAdjustment_strBuffer_65536_101:
      0001FF                        524 	.ds 10
      000209                        525 _PreviewTimeAdjustment_dt_65536_101:
      000209                        526 	.ds 7
      000210                        527 _PreviewDateAdjustment_strBuffer_65536_102:
      000210                        528 	.ds 10
      00021A                        529 _PreviewDateAdjustment_dt_65536_102:
      00021A                        530 	.ds 7
      000221                        531 _TestAndDisplay_PARM_2:
      000221                        532 	.ds 1
      000222                        533 _TestAndDisplay_description_65536_103:
      000222                        534 	.ds 3
      000225                        535 _ProcessHeating_inputs_65536_105:
      000225                        536 	.ds 1
      000226                        537 _ProcessHeating_zones_65536_105:
      000226                        538 	.ds 5
      00022B                        539 _ProcessHeating_pump_65536_105:
      00022B                        540 	.ds 1
      00022C                        541 _ProcessHeating_boiler_65536_105:
      00022C                        542 	.ds 1
      00022D                        543 _ProcessHeating_output_65536_105:
      00022D                        544 	.ds 1
      00022E                        545 _AnimateScreen_strBuffer_65536_115:
      00022E                        546 	.ds 11
      000239                        547 _AnimateScreen_numericValue_65536_115:
      000239                        548 	.ds 2
      00023B                        549 _AnimateScreen_zones_65536_115:
      00023B                        550 	.ds 5
      000240                        551 _AnimateScreen_outputs_65536_115:
      000240                        552 	.ds 4
                                    553 ;--------------------------------------------------------
                                    554 ; absolute external ram data
                                    555 ;--------------------------------------------------------
                                    556 	.area XABS    (ABS,XDATA)
                                    557 ;--------------------------------------------------------
                                    558 ; external initialized ram data
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
                                    590 ;i                         Allocated with name '_UserProgram_i_65536_28'
                                    591 ;------------------------------------------------------------
                                    592 ;	../Common/CentralHeating.c:79: void STDCALL UserProgram()
                                    593 ;	-----------------------------------------
                                    594 ;	 function UserProgram
                                    595 ;	-----------------------------------------
      00150C                        596 _UserProgram:
                           000007   597 	ar7 = 0x07
                           000006   598 	ar6 = 0x06
                           000005   599 	ar5 = 0x05
                           000004   600 	ar4 = 0x04
                           000003   601 	ar3 = 0x03
                           000002   602 	ar2 = 0x02
                           000001   603 	ar1 = 0x01
                           000000   604 	ar0 = 0x00
                                    605 ;	../Common/CentralHeating.c:86: lastKeys = 0;
      00150C 90 01 B9         [24]  606 	mov	dptr,#_lastKeys
      00150F E4               [12]  607 	clr	a
      001510 F0               [24]  608 	movx	@dptr,a
                                    609 ;	../Common/CentralHeating.c:87: currentScreen = 0;
      001511 90 01 BA         [24]  610 	mov	dptr,#_currentScreen
      001514 F0               [24]  611 	movx	@dptr,a
                                    612 ;	../Common/CentralHeating.c:88: flashDateTime = 0;
      001515 90 01 BB         [24]  613 	mov	dptr,#_flashDateTime
      001518 F0               [24]  614 	movx	@dptr,a
                                    615 ;	../Common/CentralHeating.c:89: lastInputState = 0;
      001519 90 01 BC         [24]  616 	mov	dptr,#_lastInputState
      00151C F0               [24]  617 	movx	@dptr,a
                                    618 ;	../Common/CentralHeating.c:90: lastOutputState = 0;
      00151D 90 01 BD         [24]  619 	mov	dptr,#_lastOutputState
      001520 F0               [24]  620 	movx	@dptr,a
                                    621 ;	../Common/CentralHeating.c:91: animationType = ANIMATE_INPUTS;
      001521 90 01 BE         [24]  622 	mov	dptr,#_animationType
      001524 F0               [24]  623 	movx	@dptr,a
                                    624 ;	../Common/CentralHeating.c:94: provideHotwaterUntil.day = 0;
      001525 90 01 CB         [24]  625 	mov	dptr,#(_provideHotwaterUntil + 0x0004)
      001528 F0               [24]  626 	movx	@dptr,a
                                    627 ;	../Common/CentralHeating.c:95: provideHotwaterUntil.dayOfWeek = 0;
      001529 90 01 CA         [24]  628 	mov	dptr,#(_provideHotwaterUntil + 0x0003)
      00152C F0               [24]  629 	movx	@dptr,a
                                    630 ;	../Common/CentralHeating.c:96: provideHotwaterUntil.hours = 0;
      00152D 90 01 C9         [24]  631 	mov	dptr,#(_provideHotwaterUntil + 0x0002)
      001530 F0               [24]  632 	movx	@dptr,a
                                    633 ;	../Common/CentralHeating.c:97: provideHotwaterUntil.minutes = 0;
      001531 90 01 C8         [24]  634 	mov	dptr,#(_provideHotwaterUntil + 0x0001)
      001534 F0               [24]  635 	movx	@dptr,a
                                    636 ;	../Common/CentralHeating.c:98: provideHotwaterUntil.month = 0;
      001535 90 01 CC         [24]  637 	mov	dptr,#(_provideHotwaterUntil + 0x0005)
      001538 F0               [24]  638 	movx	@dptr,a
                                    639 ;	../Common/CentralHeating.c:99: provideHotwaterUntil.seconds = 0;
      001539 90 01 C7         [24]  640 	mov	dptr,#_provideHotwaterUntil
      00153C F0               [24]  641 	movx	@dptr,a
                                    642 ;	../Common/CentralHeating.c:100: provideHotwaterUntil.year = 0;
      00153D 90 01 CD         [24]  643 	mov	dptr,#(_provideHotwaterUntil + 0x0006)
      001540 F0               [24]  644 	movx	@dptr,a
                                    645 ;	../Common/CentralHeating.c:104: for (i = 0; i < SCREEN_BUFFER_SIZE; ++i)
      001541 7E 00            [12]  646 	mov	r6,#0x00
      001543 7F 00            [12]  647 	mov	r7,#0x00
      001545                        648 00102$:
                                    649 ;	../Common/CentralHeating.c:106: screenBuffer[i] = ' ';
      001545 EE               [12]  650 	mov	a,r6
      001546 24 98            [12]  651 	add	a,#_screenBuffer
      001548 F5 82            [12]  652 	mov	dpl,a
      00154A EF               [12]  653 	mov	a,r7
      00154B 34 01            [12]  654 	addc	a,#(_screenBuffer >> 8)
      00154D F5 83            [12]  655 	mov	dph,a
      00154F 74 20            [12]  656 	mov	a,#0x20
      001551 F0               [24]  657 	movx	@dptr,a
                                    658 ;	../Common/CentralHeating.c:104: for (i = 0; i < SCREEN_BUFFER_SIZE; ++i)
      001552 0E               [12]  659 	inc	r6
      001553 BE 00 01         [24]  660 	cjne	r6,#0x00,00115$
      001556 0F               [12]  661 	inc	r7
      001557                        662 00115$:
      001557 C3               [12]  663 	clr	c
      001558 EE               [12]  664 	mov	a,r6
      001559 94 20            [12]  665 	subb	a,#0x20
      00155B EF               [12]  666 	mov	a,r7
      00155C 64 80            [12]  667 	xrl	a,#0x80
      00155E 94 80            [12]  668 	subb	a,#0x80
      001560 40 E3            [24]  669 	jc	00102$
                                    670 ;	../Common/CentralHeating.c:109: pWriteDisplayBuffer(screenBuffer);
      001562 12 15 67         [24]  671 	lcall	00117$
      001565 80 11            [24]  672 	sjmp	00118$
      001567                        673 00117$:
      001567 90 00 09         [24]  674 	mov	dptr,#_pWriteDisplayBuffer
      00156A E0               [24]  675 	movx	a,@dptr
      00156B C0 E0            [24]  676 	push	acc
      00156D A3               [24]  677 	inc	dptr
      00156E E0               [24]  678 	movx	a,@dptr
      00156F C0 E0            [24]  679 	push	acc
      001571 90 01 98         [24]  680 	mov	dptr,#_screenBuffer
      001574 75 F0 00         [24]  681 	mov	b,#0x00
      001577 22               [24]  682 	ret
      001578                        683 00118$:
                                    684 ;	../Common/CentralHeating.c:113: currentScreen = SCREEN_HOME;
      001578 90 01 BA         [24]  685 	mov	dptr,#_currentScreen
      00157B 74 01            [12]  686 	mov	a,#0x01
      00157D F0               [24]  687 	movx	@dptr,a
                                    688 ;	../Common/CentralHeating.c:117: pRegisterForTimer(RTCUPDATECOOKIE, 400, Callback);
      00157E 74 2A            [12]  689 	mov	a,#_Callback
      001580 C0 E0            [24]  690 	push	acc
      001582 74 16            [12]  691 	mov	a,#(_Callback >> 8)
      001584 C0 E0            [24]  692 	push	acc
      001586 74 90            [12]  693 	mov	a,#0x90
      001588 C0 E0            [24]  694 	push	acc
      00158A 74 01            [12]  695 	mov	a,#0x01
      00158C C0 E0            [24]  696 	push	acc
      00158E 12 15 93         [24]  697 	lcall	00119$
      001591 80 0E            [24]  698 	sjmp	00120$
      001593                        699 00119$:
      001593 90 00 01         [24]  700 	mov	dptr,#_pRegisterForTimer
      001596 E0               [24]  701 	movx	a,@dptr
      001597 C0 E0            [24]  702 	push	acc
      001599 A3               [24]  703 	inc	dptr
      00159A E0               [24]  704 	movx	a,@dptr
      00159B C0 E0            [24]  705 	push	acc
      00159D 90 00 01         [24]  706 	mov	dptr,#0x0001
      0015A0 22               [24]  707 	ret
      0015A1                        708 00120$:
      0015A1 E5 81            [12]  709 	mov	a,sp
      0015A3 24 FC            [12]  710 	add	a,#0xfc
      0015A5 F5 81            [12]  711 	mov	sp,a
                                    712 ;	../Common/CentralHeating.c:118: pRegisterForTimer(READKEYSCOOKIE, 10, Callback);
      0015A7 74 2A            [12]  713 	mov	a,#_Callback
      0015A9 C0 E0            [24]  714 	push	acc
      0015AB 74 16            [12]  715 	mov	a,#(_Callback >> 8)
      0015AD C0 E0            [24]  716 	push	acc
      0015AF 74 0A            [12]  717 	mov	a,#0x0a
      0015B1 C0 E0            [24]  718 	push	acc
      0015B3 E4               [12]  719 	clr	a
      0015B4 C0 E0            [24]  720 	push	acc
      0015B6 12 15 BB         [24]  721 	lcall	00121$
      0015B9 80 0E            [24]  722 	sjmp	00122$
      0015BB                        723 00121$:
      0015BB 90 00 01         [24]  724 	mov	dptr,#_pRegisterForTimer
      0015BE E0               [24]  725 	movx	a,@dptr
      0015BF C0 E0            [24]  726 	push	acc
      0015C1 A3               [24]  727 	inc	dptr
      0015C2 E0               [24]  728 	movx	a,@dptr
      0015C3 C0 E0            [24]  729 	push	acc
      0015C5 90 00 02         [24]  730 	mov	dptr,#0x0002
      0015C8 22               [24]  731 	ret
      0015C9                        732 00122$:
      0015C9 E5 81            [12]  733 	mov	a,sp
      0015CB 24 FC            [12]  734 	add	a,#0xfc
      0015CD F5 81            [12]  735 	mov	sp,a
                                    736 ;	../Common/CentralHeating.c:119: pRegisterForTimer(PROCESSHEATING, 1000, Callback);
      0015CF 74 2A            [12]  737 	mov	a,#_Callback
      0015D1 C0 E0            [24]  738 	push	acc
      0015D3 74 16            [12]  739 	mov	a,#(_Callback >> 8)
      0015D5 C0 E0            [24]  740 	push	acc
      0015D7 74 E8            [12]  741 	mov	a,#0xe8
      0015D9 C0 E0            [24]  742 	push	acc
      0015DB 74 03            [12]  743 	mov	a,#0x03
      0015DD C0 E0            [24]  744 	push	acc
      0015DF 12 15 E4         [24]  745 	lcall	00123$
      0015E2 80 0E            [24]  746 	sjmp	00124$
      0015E4                        747 00123$:
      0015E4 90 00 01         [24]  748 	mov	dptr,#_pRegisterForTimer
      0015E7 E0               [24]  749 	movx	a,@dptr
      0015E8 C0 E0            [24]  750 	push	acc
      0015EA A3               [24]  751 	inc	dptr
      0015EB E0               [24]  752 	movx	a,@dptr
      0015EC C0 E0            [24]  753 	push	acc
      0015EE 90 00 03         [24]  754 	mov	dptr,#0x0003
      0015F1 22               [24]  755 	ret
      0015F2                        756 00124$:
      0015F2 E5 81            [12]  757 	mov	a,sp
      0015F4 24 FC            [12]  758 	add	a,#0xfc
      0015F6 F5 81            [12]  759 	mov	sp,a
                                    760 ;	../Common/CentralHeating.c:120: pRegisterForTimer(SCREENACTIVITY, 1000, Callback);
      0015F8 74 2A            [12]  761 	mov	a,#_Callback
      0015FA C0 E0            [24]  762 	push	acc
      0015FC 74 16            [12]  763 	mov	a,#(_Callback >> 8)
      0015FE C0 E0            [24]  764 	push	acc
      001600 74 E8            [12]  765 	mov	a,#0xe8
      001602 C0 E0            [24]  766 	push	acc
      001604 74 03            [12]  767 	mov	a,#0x03
      001606 C0 E0            [24]  768 	push	acc
      001608 12 16 0D         [24]  769 	lcall	00125$
      00160B 80 0E            [24]  770 	sjmp	00126$
      00160D                        771 00125$:
      00160D 90 00 01         [24]  772 	mov	dptr,#_pRegisterForTimer
      001610 E0               [24]  773 	movx	a,@dptr
      001611 C0 E0            [24]  774 	push	acc
      001613 A3               [24]  775 	inc	dptr
      001614 E0               [24]  776 	movx	a,@dptr
      001615 C0 E0            [24]  777 	push	acc
      001617 90 00 04         [24]  778 	mov	dptr,#0x0004
      00161A 22               [24]  779 	ret
      00161B                        780 00126$:
      00161B E5 81            [12]  781 	mov	a,sp
      00161D 24 FC            [12]  782 	add	a,#0xfc
      00161F F5 81            [12]  783 	mov	sp,a
                                    784 ;	../Common/CentralHeating.c:124: BuildCentralHeatingMenuDefinitions();
      001621 12 22 E2         [24]  785 	lcall	_BuildCentralHeatingMenuDefinitions
                                    786 ;	../Common/CentralHeating.c:127: InitialiseMenuController();
      001624 12 0C 0A         [24]  787 	lcall	_InitialiseMenuController
                                    788 ;	../Common/CentralHeating.c:128: DisplayMenuOnHardware();
                                    789 ;	../Common/CentralHeating.c:131: }
      001627 02 17 1C         [24]  790 	ljmp	_DisplayMenuOnHardware
                                    791 ;------------------------------------------------------------
                                    792 ;Allocation info for local variables in function 'Callback'
                                    793 ;------------------------------------------------------------
                                    794 ;cookie                    Allocated with name '_Callback_cookie_65536_31'
                                    795 ;keys                      Allocated with name '_Callback_keys_65536_32'
                                    796 ;------------------------------------------------------------
                                    797 ;	../Common/CentralHeating.c:134: void STDCALL Callback(int cookie)
                                    798 ;	-----------------------------------------
                                    799 ;	 function Callback
                                    800 ;	-----------------------------------------
      00162A                        801 _Callback:
      00162A AF 83            [24]  802 	mov	r7,dph
      00162C E5 82            [12]  803 	mov	a,dpl
      00162E 90 01 CE         [24]  804 	mov	dptr,#_Callback_cookie_65536_31
      001631 F0               [24]  805 	movx	@dptr,a
      001632 EF               [12]  806 	mov	a,r7
      001633 A3               [24]  807 	inc	dptr
      001634 F0               [24]  808 	movx	@dptr,a
                                    809 ;	../Common/CentralHeating.c:138: switch (cookie)
      001635 90 01 CE         [24]  810 	mov	dptr,#_Callback_cookie_65536_31
      001638 E0               [24]  811 	movx	a,@dptr
      001639 FE               [12]  812 	mov	r6,a
      00163A A3               [24]  813 	inc	dptr
      00163B E0               [24]  814 	movx	a,@dptr
      00163C FF               [12]  815 	mov	r7,a
      00163D BE 01 05         [24]  816 	cjne	r6,#0x01,00196$
      001640 BF 00 02         [24]  817 	cjne	r7,#0x00,00196$
      001643 80 1B            [24]  818 	sjmp	00101$
      001645                        819 00196$:
      001645 BE 02 05         [24]  820 	cjne	r6,#0x02,00197$
      001648 BF 00 02         [24]  821 	cjne	r7,#0x00,00197$
      00164B 80 59            [24]  822 	sjmp	00116$
      00164D                        823 00197$:
      00164D BE 03 06         [24]  824 	cjne	r6,#0x03,00198$
      001650 BF 00 03         [24]  825 	cjne	r7,#0x00,00198$
      001653 02 17 04         [24]  826 	ljmp	00127$
      001656                        827 00198$:
      001656 BE 04 06         [24]  828 	cjne	r6,#0x04,00199$
      001659 BF 00 03         [24]  829 	cjne	r7,#0x00,00199$
      00165C 02 17 10         [24]  830 	ljmp	00130$
      00165F                        831 00199$:
      00165F 22               [24]  832 	ret
                                    833 ;	../Common/CentralHeating.c:140: case RTCUPDATECOOKIE :
      001660                        834 00101$:
                                    835 ;	../Common/CentralHeating.c:141: if (currentScreen == SCREEN_HOME)
      001660 90 01 BA         [24]  836 	mov	dptr,#_currentScreen
      001663 E0               [24]  837 	movx	a,@dptr
      001664 FF               [12]  838 	mov	r7,a
      001665 BF 01 03         [24]  839 	cjne	r7,#0x01,00114$
                                    840 ;	../Common/CentralHeating.c:143: WriteCurrentTime();
      001668 02 1E 22         [24]  841 	ljmp	_WriteCurrentTime
      00166B                        842 00114$:
                                    843 ;	../Common/CentralHeating.c:145: else if (currentScreen == SCREEN_SETDATE)
      00166B BF 02 19         [24]  844 	cjne	r7,#0x02,00111$
                                    845 ;	../Common/CentralHeating.c:147: if (flashDateTime)
      00166E 90 01 BB         [24]  846 	mov	dptr,#_flashDateTime
      001671 E0               [24]  847 	movx	a,@dptr
      001672 60 09            [24]  848 	jz	00103$
                                    849 ;	../Common/CentralHeating.c:149: ClearTopLine();
      001674 12 18 2E         [24]  850 	lcall	_ClearTopLine
                                    851 ;	../Common/CentralHeating.c:150: flashDateTime = 0;
      001677 90 01 BB         [24]  852 	mov	dptr,#_flashDateTime
      00167A E4               [12]  853 	clr	a
      00167B F0               [24]  854 	movx	@dptr,a
      00167C 22               [24]  855 	ret
      00167D                        856 00103$:
                                    857 ;	../Common/CentralHeating.c:154: PreviewDateAdjustment(); 
      00167D 12 1E BB         [24]  858 	lcall	_PreviewDateAdjustment
                                    859 ;	../Common/CentralHeating.c:155: flashDateTime = 1;
      001680 90 01 BB         [24]  860 	mov	dptr,#_flashDateTime
      001683 74 01            [12]  861 	mov	a,#0x01
      001685 F0               [24]  862 	movx	@dptr,a
      001686 22               [24]  863 	ret
      001687                        864 00111$:
                                    865 ;	../Common/CentralHeating.c:159: else if (currentScreen == SCREEN_SETTIME)
      001687 BF 03 02         [24]  866 	cjne	r7,#0x03,00205$
      00168A 80 01            [24]  867 	sjmp	00206$
      00168C                        868 00205$:
      00168C 22               [24]  869 	ret
      00168D                        870 00206$:
                                    871 ;	../Common/CentralHeating.c:161: if (flashDateTime)
      00168D 90 01 BB         [24]  872 	mov	dptr,#_flashDateTime
      001690 E0               [24]  873 	movx	a,@dptr
      001691 60 09            [24]  874 	jz	00106$
                                    875 ;	../Common/CentralHeating.c:163: ClearTopLine();
      001693 12 18 2E         [24]  876 	lcall	_ClearTopLine
                                    877 ;	../Common/CentralHeating.c:164: flashDateTime = 0;
      001696 90 01 BB         [24]  878 	mov	dptr,#_flashDateTime
      001699 E4               [12]  879 	clr	a
      00169A F0               [24]  880 	movx	@dptr,a
      00169B 22               [24]  881 	ret
      00169C                        882 00106$:
                                    883 ;	../Common/CentralHeating.c:168: PreviewTimeAdjustment();
      00169C 12 1E 6E         [24]  884 	lcall	_PreviewTimeAdjustment
                                    885 ;	../Common/CentralHeating.c:169: flashDateTime = 1;
      00169F 90 01 BB         [24]  886 	mov	dptr,#_flashDateTime
      0016A2 74 01            [12]  887 	mov	a,#0x01
      0016A4 F0               [24]  888 	movx	@dptr,a
                                    889 ;	../Common/CentralHeating.c:172: break;
      0016A5 22               [24]  890 	ret
                                    891 ;	../Common/CentralHeating.c:174: case READKEYSCOOKIE :
      0016A6                        892 00116$:
                                    893 ;	../Common/CentralHeating.c:175: pGetKeyState(&keys);
      0016A6 12 16 AB         [24]  894 	lcall	00208$
      0016A9 80 11            [24]  895 	sjmp	00209$
      0016AB                        896 00208$:
      0016AB 90 00 0B         [24]  897 	mov	dptr,#_pGetKeyState
      0016AE E0               [24]  898 	movx	a,@dptr
      0016AF C0 E0            [24]  899 	push	acc
      0016B1 A3               [24]  900 	inc	dptr
      0016B2 E0               [24]  901 	movx	a,@dptr
      0016B3 C0 E0            [24]  902 	push	acc
      0016B5 90 01 D0         [24]  903 	mov	dptr,#_Callback_keys_65536_32
      0016B8 75 F0 00         [24]  904 	mov	b,#0x00
      0016BB 22               [24]  905 	ret
      0016BC                        906 00209$:
                                    907 ;	../Common/CentralHeating.c:176: if (keys != lastKeys)
      0016BC 90 01 D0         [24]  908 	mov	dptr,#_Callback_keys_65536_32
      0016BF E0               [24]  909 	movx	a,@dptr
      0016C0 FE               [12]  910 	mov	r6,a
      0016C1 A3               [24]  911 	inc	dptr
      0016C2 E0               [24]  912 	movx	a,@dptr
      0016C3 FF               [12]  913 	mov	r7,a
      0016C4 90 01 B9         [24]  914 	mov	dptr,#_lastKeys
      0016C7 E0               [24]  915 	movx	a,@dptr
      0016C8 FD               [12]  916 	mov	r5,a
      0016C9 7C 00            [12]  917 	mov	r4,#0x00
      0016CB EE               [12]  918 	mov	a,r6
      0016CC B5 05 05         [24]  919 	cjne	a,ar5,00210$
      0016CF EF               [12]  920 	mov	a,r7
      0016D0 B5 04 01         [24]  921 	cjne	a,ar4,00210$
      0016D3 22               [24]  922 	ret
      0016D4                        923 00210$:
                                    924 ;	../Common/CentralHeating.c:178: lastKeys = keys;
      0016D4 90 01 B9         [24]  925 	mov	dptr,#_lastKeys
      0016D7 EE               [12]  926 	mov	a,r6
      0016D8 F0               [24]  927 	movx	@dptr,a
                                    928 ;	../Common/CentralHeating.c:179: if (keys == 1)
      0016D9 BE 01 0B         [24]  929 	cjne	r6,#0x01,00123$
      0016DC BF 00 08         [24]  930 	cjne	r7,#0x00,00123$
                                    931 ;	../Common/CentralHeating.c:182: MenuNavigation(NAVTYPE_LEFT);
      0016DF 75 82 01         [24]  932 	mov	dpl,#0x01
      0016E2 12 0C 47         [24]  933 	lcall	_MenuNavigation
      0016E5 80 1A            [24]  934 	sjmp	00124$
      0016E7                        935 00123$:
                                    936 ;	../Common/CentralHeating.c:184: else if (keys == 2)
      0016E7 BE 02 0B         [24]  937 	cjne	r6,#0x02,00120$
      0016EA BF 00 08         [24]  938 	cjne	r7,#0x00,00120$
                                    939 ;	../Common/CentralHeating.c:186: MenuNavigation(NAVTYPE_SELECTITEM);
      0016ED 75 82 03         [24]  940 	mov	dpl,#0x03
      0016F0 12 0C 47         [24]  941 	lcall	_MenuNavigation
      0016F3 80 0C            [24]  942 	sjmp	00124$
      0016F5                        943 00120$:
                                    944 ;	../Common/CentralHeating.c:188: else if (keys == 3)
      0016F5 BE 03 09         [24]  945 	cjne	r6,#0x03,00124$
      0016F8 BF 00 06         [24]  946 	cjne	r7,#0x00,00124$
                                    947 ;	../Common/CentralHeating.c:190: MenuNavigation(NAVTYPE_RIGHT);
      0016FB 75 82 02         [24]  948 	mov	dpl,#0x02
      0016FE 12 0C 47         [24]  949 	lcall	_MenuNavigation
      001701                        950 00124$:
                                    951 ;	../Common/CentralHeating.c:192: DisplayMenuOnHardware();
                                    952 ;	../Common/CentralHeating.c:194: break;
                                    953 ;	../Common/CentralHeating.c:196: case PROCESSHEATING :
      001701 02 17 1C         [24]  954 	ljmp	_DisplayMenuOnHardware
      001704                        955 00127$:
                                    956 ;	../Common/CentralHeating.c:197: if (currentScreen != SCREEN_OUTPUTTEST)
      001704 90 01 BA         [24]  957 	mov	dptr,#_currentScreen
      001707 E0               [24]  958 	movx	a,@dptr
      001708 FF               [12]  959 	mov	r7,a
      001709 BF 04 01         [24]  960 	cjne	r7,#0x04,00217$
      00170C 22               [24]  961 	ret
      00170D                        962 00217$:
                                    963 ;	../Common/CentralHeating.c:199: ProcessHeating();
                                    964 ;	../Common/CentralHeating.c:201: break;
                                    965 ;	../Common/CentralHeating.c:203: case SCREENACTIVITY :
      00170D 02 1F 4E         [24]  966 	ljmp	_ProcessHeating
      001710                        967 00130$:
                                    968 ;	../Common/CentralHeating.c:204: if (currentScreen == SCREEN_HOME)
      001710 90 01 BA         [24]  969 	mov	dptr,#_currentScreen
      001713 E0               [24]  970 	movx	a,@dptr
      001714 FF               [12]  971 	mov	r7,a
      001715 BF 01 03         [24]  972 	cjne	r7,#0x01,00134$
                                    973 ;	../Common/CentralHeating.c:206: AnimateScreen();
                                    974 ;	../Common/CentralHeating.c:210: }
                                    975 ;	../Common/CentralHeating.c:211: }
      001718 02 20 81         [24]  976 	ljmp	_AnimateScreen
      00171B                        977 00134$:
      00171B 22               [24]  978 	ret
                                    979 ;------------------------------------------------------------
                                    980 ;Allocation info for local variables in function 'DisplayMenuOnHardware'
                                    981 ;------------------------------------------------------------
                                    982 ;buffer                    Allocated with name '_DisplayMenuOnHardware_buffer_65536_47'
                                    983 ;i                         Allocated with name '_DisplayMenuOnHardware_i_65536_47'
                                    984 ;j                         Allocated with name '_DisplayMenuOnHardware_j_65536_47'
                                    985 ;------------------------------------------------------------
                                    986 ;	../Common/CentralHeating.c:215: void DisplayMenuOnHardware()
                                    987 ;	-----------------------------------------
                                    988 ;	 function DisplayMenuOnHardware
                                    989 ;	-----------------------------------------
      00171C                        990 _DisplayMenuOnHardware:
                                    991 ;	../Common/CentralHeating.c:221: RenderMenuOnBuffer(buffer, SCREEN_BUFFER_SIZE / 2);
      00171C 90 01 8F         [24]  992 	mov	dptr,#_RenderMenuOnBuffer_PARM_2
      00171F 74 10            [12]  993 	mov	a,#0x10
      001721 F0               [24]  994 	movx	@dptr,a
      001722 E4               [12]  995 	clr	a
      001723 A3               [24]  996 	inc	dptr
      001724 F0               [24]  997 	movx	@dptr,a
      001725 90 01 D2         [24]  998 	mov	dptr,#_DisplayMenuOnHardware_buffer_65536_47
      001728 75 F0 00         [24]  999 	mov	b,#0x00
      00172B 12 10 F8         [24] 1000 	lcall	_RenderMenuOnBuffer
                                   1001 ;	../Common/CentralHeating.c:224: for (i = 0; i < SCREEN_BUFFER_SIZE / 2; ++i)
      00172E 7E 00            [12] 1002 	mov	r6,#0x00
      001730 7F 00            [12] 1003 	mov	r7,#0x00
      001732 7C 00            [12] 1004 	mov	r4,#0x00
      001734 7D 00            [12] 1005 	mov	r5,#0x00
      001736                       1006 00105$:
                                   1007 ;	../Common/CentralHeating.c:226: if (buffer[j] != 0)
      001736 EE               [12] 1008 	mov	a,r6
      001737 24 D2            [12] 1009 	add	a,#_DisplayMenuOnHardware_buffer_65536_47
      001739 FA               [12] 1010 	mov	r2,a
      00173A EF               [12] 1011 	mov	a,r7
      00173B 34 01            [12] 1012 	addc	a,#(_DisplayMenuOnHardware_buffer_65536_47 >> 8)
      00173D FB               [12] 1013 	mov	r3,a
      00173E 8A 82            [24] 1014 	mov	dpl,r2
      001740 8B 83            [24] 1015 	mov	dph,r3
      001742 E0               [24] 1016 	movx	a,@dptr
      001743 60 2A            [24] 1017 	jz	00102$
                                   1018 ;	../Common/CentralHeating.c:228: screenBuffer[i + SCREEN_BUFFER_SIZE / 2] = buffer[j++];
      001745 8C 03            [24] 1019 	mov	ar3,r4
      001747 74 10            [12] 1020 	mov	a,#0x10
      001749 2B               [12] 1021 	add	a,r3
      00174A FB               [12] 1022 	mov	r3,a
      00174B 33               [12] 1023 	rlc	a
      00174C 95 E0            [12] 1024 	subb	a,acc
      00174E FA               [12] 1025 	mov	r2,a
      00174F EB               [12] 1026 	mov	a,r3
      001750 24 98            [12] 1027 	add	a,#_screenBuffer
      001752 FB               [12] 1028 	mov	r3,a
      001753 EA               [12] 1029 	mov	a,r2
      001754 34 01            [12] 1030 	addc	a,#(_screenBuffer >> 8)
      001756 FA               [12] 1031 	mov	r2,a
      001757 EE               [12] 1032 	mov	a,r6
      001758 24 D2            [12] 1033 	add	a,#_DisplayMenuOnHardware_buffer_65536_47
      00175A F5 82            [12] 1034 	mov	dpl,a
      00175C EF               [12] 1035 	mov	a,r7
      00175D 34 01            [12] 1036 	addc	a,#(_DisplayMenuOnHardware_buffer_65536_47 >> 8)
      00175F F5 83            [12] 1037 	mov	dph,a
      001761 0E               [12] 1038 	inc	r6
      001762 BE 00 01         [24] 1039 	cjne	r6,#0x00,00123$
      001765 0F               [12] 1040 	inc	r7
      001766                       1041 00123$:
      001766 E0               [24] 1042 	movx	a,@dptr
      001767 F9               [12] 1043 	mov	r1,a
      001768 8B 82            [24] 1044 	mov	dpl,r3
      00176A 8A 83            [24] 1045 	mov	dph,r2
      00176C F0               [24] 1046 	movx	@dptr,a
      00176D 80 17            [24] 1047 	sjmp	00106$
      00176F                       1048 00102$:
                                   1049 ;	../Common/CentralHeating.c:232: screenBuffer[i + SCREEN_BUFFER_SIZE / 2] = ' ';
      00176F 8C 03            [24] 1050 	mov	ar3,r4
      001771 74 10            [12] 1051 	mov	a,#0x10
      001773 2B               [12] 1052 	add	a,r3
      001774 FB               [12] 1053 	mov	r3,a
      001775 33               [12] 1054 	rlc	a
      001776 95 E0            [12] 1055 	subb	a,acc
      001778 FA               [12] 1056 	mov	r2,a
      001779 EB               [12] 1057 	mov	a,r3
      00177A 24 98            [12] 1058 	add	a,#_screenBuffer
      00177C F5 82            [12] 1059 	mov	dpl,a
      00177E EA               [12] 1060 	mov	a,r2
      00177F 34 01            [12] 1061 	addc	a,#(_screenBuffer >> 8)
      001781 F5 83            [12] 1062 	mov	dph,a
      001783 74 20            [12] 1063 	mov	a,#0x20
      001785 F0               [24] 1064 	movx	@dptr,a
      001786                       1065 00106$:
                                   1066 ;	../Common/CentralHeating.c:224: for (i = 0; i < SCREEN_BUFFER_SIZE / 2; ++i)
      001786 0C               [12] 1067 	inc	r4
      001787 BC 00 01         [24] 1068 	cjne	r4,#0x00,00124$
      00178A 0D               [12] 1069 	inc	r5
      00178B                       1070 00124$:
      00178B C3               [12] 1071 	clr	c
      00178C EC               [12] 1072 	mov	a,r4
      00178D 94 10            [12] 1073 	subb	a,#0x10
      00178F ED               [12] 1074 	mov	a,r5
      001790 64 80            [12] 1075 	xrl	a,#0x80
      001792 94 80            [12] 1076 	subb	a,#0x80
      001794 40 A0            [24] 1077 	jc	00105$
                                   1078 ;	../Common/CentralHeating.c:236: pWriteDisplayBuffer(screenBuffer);    
      001796 02 17 99         [24] 1079 	ljmp	00126$
      001799                       1080 00126$:
      001799 90 00 09         [24] 1081 	mov	dptr,#_pWriteDisplayBuffer
      00179C E0               [24] 1082 	movx	a,@dptr
      00179D C0 E0            [24] 1083 	push	acc
      00179F A3               [24] 1084 	inc	dptr
      0017A0 E0               [24] 1085 	movx	a,@dptr
      0017A1 C0 E0            [24] 1086 	push	acc
      0017A3 90 01 98         [24] 1087 	mov	dptr,#_screenBuffer
      0017A6 75 F0 00         [24] 1088 	mov	b,#0x00
      0017A9 22               [24] 1089 	ret
                                   1090 ;	../Common/CentralHeating.c:237: }
      0017AA 22               [24] 1091 	ret
                                   1092 ;------------------------------------------------------------
                                   1093 ;Allocation info for local variables in function 'PartialWriteToScreen'
                                   1094 ;------------------------------------------------------------
                                   1095 ;maxLen                    Allocated with name '_PartialWriteToScreen_PARM_2'
                                   1096 ;information               Allocated with name '_PartialWriteToScreen_PARM_3'
                                   1097 ;screenPosition            Allocated with name '_PartialWriteToScreen_screenPosition_65536_52'
                                   1098 ;p                         Allocated with name '_PartialWriteToScreen_p_65536_53'
                                   1099 ;i                         Allocated with name '_PartialWriteToScreen_i_65536_53'
                                   1100 ;------------------------------------------------------------
                                   1101 ;	../Common/CentralHeating.c:241: void PartialWriteToScreen(int screenPosition, int maxLen, char *information)
                                   1102 ;	-----------------------------------------
                                   1103 ;	 function PartialWriteToScreen
                                   1104 ;	-----------------------------------------
      0017AB                       1105 _PartialWriteToScreen:
      0017AB AF 83            [24] 1106 	mov	r7,dph
      0017AD E5 82            [12] 1107 	mov	a,dpl
      0017AF 90 01 E8         [24] 1108 	mov	dptr,#_PartialWriteToScreen_screenPosition_65536_52
      0017B2 F0               [24] 1109 	movx	@dptr,a
      0017B3 EF               [12] 1110 	mov	a,r7
      0017B4 A3               [24] 1111 	inc	dptr
      0017B5 F0               [24] 1112 	movx	@dptr,a
                                   1113 ;	../Common/CentralHeating.c:243: char *p = information;
      0017B6 90 01 E5         [24] 1114 	mov	dptr,#_PartialWriteToScreen_PARM_3
      0017B9 E0               [24] 1115 	movx	a,@dptr
      0017BA FD               [12] 1116 	mov	r5,a
      0017BB A3               [24] 1117 	inc	dptr
      0017BC E0               [24] 1118 	movx	a,@dptr
      0017BD FE               [12] 1119 	mov	r6,a
      0017BE A3               [24] 1120 	inc	dptr
      0017BF E0               [24] 1121 	movx	a,@dptr
      0017C0 FF               [12] 1122 	mov	r7,a
                                   1123 ;	../Common/CentralHeating.c:245: for (i = screenPosition; i < (screenPosition + maxLen); ++i)
      0017C1 90 01 E8         [24] 1124 	mov	dptr,#_PartialWriteToScreen_screenPosition_65536_52
      0017C4 E0               [24] 1125 	movx	a,@dptr
      0017C5 FB               [12] 1126 	mov	r3,a
      0017C6 A3               [24] 1127 	inc	dptr
      0017C7 E0               [24] 1128 	movx	a,@dptr
      0017C8 FC               [12] 1129 	mov	r4,a
      0017C9 90 01 E3         [24] 1130 	mov	dptr,#_PartialWriteToScreen_PARM_2
      0017CC E0               [24] 1131 	movx	a,@dptr
      0017CD F9               [12] 1132 	mov	r1,a
      0017CE A3               [24] 1133 	inc	dptr
      0017CF E0               [24] 1134 	movx	a,@dptr
      0017D0 FA               [12] 1135 	mov	r2,a
      0017D1 E9               [12] 1136 	mov	a,r1
      0017D2 2B               [12] 1137 	add	a,r3
      0017D3 F9               [12] 1138 	mov	r1,a
      0017D4 EA               [12] 1139 	mov	a,r2
      0017D5 3C               [12] 1140 	addc	a,r4
      0017D6 FA               [12] 1141 	mov	r2,a
      0017D7                       1142 00106$:
      0017D7 C3               [12] 1143 	clr	c
      0017D8 EB               [12] 1144 	mov	a,r3
      0017D9 99               [12] 1145 	subb	a,r1
      0017DA EC               [12] 1146 	mov	a,r4
      0017DB 64 80            [12] 1147 	xrl	a,#0x80
      0017DD 8A F0            [24] 1148 	mov	b,r2
      0017DF 63 F0 80         [24] 1149 	xrl	b,#0x80
      0017E2 95 F0            [12] 1150 	subb	a,b
      0017E4 50 33            [24] 1151 	jnc	00104$
                                   1152 ;	../Common/CentralHeating.c:247: if (*p == 0)
      0017E6 8D 82            [24] 1153 	mov	dpl,r5
      0017E8 8E 83            [24] 1154 	mov	dph,r6
      0017EA 8F F0            [24] 1155 	mov	b,r7
      0017EC 12 3D E8         [24] 1156 	lcall	__gptrget
      0017EF F8               [12] 1157 	mov	r0,a
      0017F0 70 0F            [24] 1158 	jnz	00102$
                                   1159 ;	../Common/CentralHeating.c:249: screenBuffer[i] = ' ';
      0017F2 EB               [12] 1160 	mov	a,r3
      0017F3 24 98            [12] 1161 	add	a,#_screenBuffer
      0017F5 F5 82            [12] 1162 	mov	dpl,a
      0017F7 EC               [12] 1163 	mov	a,r4
      0017F8 34 01            [12] 1164 	addc	a,#(_screenBuffer >> 8)
      0017FA F5 83            [12] 1165 	mov	dph,a
      0017FC 74 20            [12] 1166 	mov	a,#0x20
      0017FE F0               [24] 1167 	movx	@dptr,a
      0017FF 80 11            [24] 1168 	sjmp	00107$
      001801                       1169 00102$:
                                   1170 ;	../Common/CentralHeating.c:253: screenBuffer[i] = *p;
      001801 EB               [12] 1171 	mov	a,r3
      001802 24 98            [12] 1172 	add	a,#_screenBuffer
      001804 F5 82            [12] 1173 	mov	dpl,a
      001806 EC               [12] 1174 	mov	a,r4
      001807 34 01            [12] 1175 	addc	a,#(_screenBuffer >> 8)
      001809 F5 83            [12] 1176 	mov	dph,a
      00180B E8               [12] 1177 	mov	a,r0
      00180C F0               [24] 1178 	movx	@dptr,a
                                   1179 ;	../Common/CentralHeating.c:254: ++p;
      00180D 0D               [12] 1180 	inc	r5
      00180E BD 00 01         [24] 1181 	cjne	r5,#0x00,00125$
      001811 0E               [12] 1182 	inc	r6
      001812                       1183 00125$:
      001812                       1184 00107$:
                                   1185 ;	../Common/CentralHeating.c:245: for (i = screenPosition; i < (screenPosition + maxLen); ++i)
      001812 0B               [12] 1186 	inc	r3
      001813 BB 00 C1         [24] 1187 	cjne	r3,#0x00,00106$
      001816 0C               [12] 1188 	inc	r4
      001817 80 BE            [24] 1189 	sjmp	00106$
      001819                       1190 00104$:
                                   1191 ;	../Common/CentralHeating.c:257: pWriteDisplayBuffer(screenBuffer);    
      001819 02 18 1C         [24] 1192 	ljmp	00127$
      00181C                       1193 00127$:
      00181C 90 00 09         [24] 1194 	mov	dptr,#_pWriteDisplayBuffer
      00181F E0               [24] 1195 	movx	a,@dptr
      001820 C0 E0            [24] 1196 	push	acc
      001822 A3               [24] 1197 	inc	dptr
      001823 E0               [24] 1198 	movx	a,@dptr
      001824 C0 E0            [24] 1199 	push	acc
      001826 90 01 98         [24] 1200 	mov	dptr,#_screenBuffer
      001829 75 F0 00         [24] 1201 	mov	b,#0x00
      00182C 22               [24] 1202 	ret
                                   1203 ;	../Common/CentralHeating.c:258: }
      00182D 22               [24] 1204 	ret
                                   1205 ;------------------------------------------------------------
                                   1206 ;Allocation info for local variables in function 'ClearTopLine'
                                   1207 ;------------------------------------------------------------
                                   1208 ;	../Common/CentralHeating.c:262: void ClearTopLine()
                                   1209 ;	-----------------------------------------
                                   1210 ;	 function ClearTopLine
                                   1211 ;	-----------------------------------------
      00182E                       1212 _ClearTopLine:
                                   1213 ;	../Common/CentralHeating.c:264: PartialWriteToScreen(0, 16, "");
      00182E 90 01 E3         [24] 1214 	mov	dptr,#_PartialWriteToScreen_PARM_2
      001831 74 10            [12] 1215 	mov	a,#0x10
      001833 F0               [24] 1216 	movx	@dptr,a
      001834 E4               [12] 1217 	clr	a
      001835 A3               [24] 1218 	inc	dptr
      001836 F0               [24] 1219 	movx	@dptr,a
      001837 90 01 E5         [24] 1220 	mov	dptr,#_PartialWriteToScreen_PARM_3
      00183A 74 3D            [12] 1221 	mov	a,#___str_0
      00183C F0               [24] 1222 	movx	@dptr,a
      00183D 74 3E            [12] 1223 	mov	a,#(___str_0 >> 8)
      00183F A3               [24] 1224 	inc	dptr
      001840 F0               [24] 1225 	movx	@dptr,a
      001841 74 80            [12] 1226 	mov	a,#0x80
      001843 A3               [24] 1227 	inc	dptr
      001844 F0               [24] 1228 	movx	@dptr,a
      001845 90 00 00         [24] 1229 	mov	dptr,#0x0000
                                   1230 ;	../Common/CentralHeating.c:265: }
      001848 02 17 AB         [24] 1231 	ljmp	_PartialWriteToScreen
                                   1232 ;------------------------------------------------------------
                                   1233 ;Allocation info for local variables in function 'HandleMenuCommand'
                                   1234 ;------------------------------------------------------------
                                   1235 ;eventType                 Allocated with name '_HandleMenuCommand_PARM_2'
                                   1236 ;menuItem                  Allocated with name '_HandleMenuCommand_menuItem_65536_59'
                                   1237 ;dt                        Allocated with name '_HandleMenuCommand_dt_65536_60'
                                   1238 ;------------------------------------------------------------
                                   1239 ;	../Common/CentralHeating.c:267: void HandleMenuCommand(int menuItem, int eventType)
                                   1240 ;	-----------------------------------------
                                   1241 ;	 function HandleMenuCommand
                                   1242 ;	-----------------------------------------
      00184B                       1243 _HandleMenuCommand:
      00184B AF 83            [24] 1244 	mov	r7,dph
      00184D E5 82            [12] 1245 	mov	a,dpl
      00184F 90 01 EC         [24] 1246 	mov	dptr,#_HandleMenuCommand_menuItem_65536_59
      001852 F0               [24] 1247 	movx	@dptr,a
      001853 EF               [12] 1248 	mov	a,r7
      001854 A3               [24] 1249 	inc	dptr
      001855 F0               [24] 1250 	movx	@dptr,a
                                   1251 ;	../Common/CentralHeating.c:270: switch (menuItem)
      001856 90 01 EC         [24] 1252 	mov	dptr,#_HandleMenuCommand_menuItem_65536_59
      001859 E0               [24] 1253 	movx	a,@dptr
      00185A FE               [12] 1254 	mov	r6,a
      00185B A3               [24] 1255 	inc	dptr
      00185C E0               [24] 1256 	movx	a,@dptr
      00185D FF               [12] 1257 	mov	r7,a
      00185E C3               [12] 1258 	clr	c
      00185F EE               [12] 1259 	mov	a,r6
      001860 94 0B            [12] 1260 	subb	a,#0x0b
      001862 EF               [12] 1261 	mov	a,r7
      001863 64 80            [12] 1262 	xrl	a,#0x80
      001865 94 80            [12] 1263 	subb	a,#0x80
      001867 50 01            [24] 1264 	jnc	00346$
      001869 22               [24] 1265 	ret
      00186A                       1266 00346$:
      00186A C3               [12] 1267 	clr	c
      00186B 74 2A            [12] 1268 	mov	a,#0x2a
      00186D 9E               [12] 1269 	subb	a,r6
      00186E 74 80            [12] 1270 	mov	a,#(0x00 ^ 0x80)
      001870 8F F0            [24] 1271 	mov	b,r7
      001872 63 F0 80         [24] 1272 	xrl	b,#0x80
      001875 95 F0            [12] 1273 	subb	a,b
      001877 50 01            [24] 1274 	jnc	00347$
      001879 22               [24] 1275 	ret
      00187A                       1276 00347$:
      00187A EE               [12] 1277 	mov	a,r6
      00187B 24 F5            [12] 1278 	add	a,#0xf5
      00187D FE               [12] 1279 	mov	r6,a
      00187E 24 0A            [12] 1280 	add	a,#(00348$-3-.)
      001880 83               [24] 1281 	movc	a,@a+pc
      001881 F5 82            [12] 1282 	mov	dpl,a
      001883 EE               [12] 1283 	mov	a,r6
      001884 24 24            [12] 1284 	add	a,#(00349$-3-.)
      001886 83               [24] 1285 	movc	a,@a+pc
      001887 F5 83            [12] 1286 	mov	dph,a
      001889 E4               [12] 1287 	clr	a
      00188A 73               [24] 1288 	jmp	@a+dptr
      00188B                       1289 00348$:
      00188B F1                    1290 	.db	00103$
      00188C 4D                    1291 	.db	00115$
      00188D BE                    1292 	.db	00120$
      00188E 12                    1293 	.db	00125$
      00188F 66                    1294 	.db	00130$
      001890 BA                    1295 	.db	00135$
      001891 0E                    1296 	.db	00140$
      001892 21                    1297 	.db	00200$
      001893 21                    1298 	.db	00200$
      001894 1F                    1299 	.db	00109$
      001895 CA                    1300 	.db	00169$
      001896 62                    1301 	.db	00145$
      001897 BC                    1302 	.db	00151$
      001898 16                    1303 	.db	00157$
      001899 70                    1304 	.db	00163$
      00189A 21                    1305 	.db	00200$
      00189B 21                    1306 	.db	00200$
      00189C 21                    1307 	.db	00200$
      00189D 21                    1308 	.db	00200$
      00189E 14                    1309 	.db	00172$
      00189F 4B                    1310 	.db	00178$
      0018A0 6B                    1311 	.db	00181$
      0018A1 8B                    1312 	.db	00184$
      0018A2 AB                    1313 	.db	00187$
      0018A3 CB                    1314 	.db	00190$
      0018A4 E8                    1315 	.db	00193$
      0018A5 05                    1316 	.db	00196$
      0018A6 21                    1317 	.db	00200$
      0018A7 21                    1318 	.db	00200$
      0018A8 21                    1319 	.db	00200$
      0018A9 CB                    1320 	.db	00101$
      0018AA EB                    1321 	.db	00102$
      0018AB                       1322 00349$:
      0018AB 18                    1323 	.db	00103$>>8
      0018AC 19                    1324 	.db	00115$>>8
      0018AD 19                    1325 	.db	00120$>>8
      0018AE 1A                    1326 	.db	00125$>>8
      0018AF 1A                    1327 	.db	00130$>>8
      0018B0 1A                    1328 	.db	00135$>>8
      0018B1 1B                    1329 	.db	00140$>>8
      0018B2 1E                    1330 	.db	00200$>>8
      0018B3 1E                    1331 	.db	00200$>>8
      0018B4 19                    1332 	.db	00109$>>8
      0018B5 1C                    1333 	.db	00169$>>8
      0018B6 1B                    1334 	.db	00145$>>8
      0018B7 1B                    1335 	.db	00151$>>8
      0018B8 1C                    1336 	.db	00157$>>8
      0018B9 1C                    1337 	.db	00163$>>8
      0018BA 1E                    1338 	.db	00200$>>8
      0018BB 1E                    1339 	.db	00200$>>8
      0018BC 1E                    1340 	.db	00200$>>8
      0018BD 1E                    1341 	.db	00200$>>8
      0018BE 1D                    1342 	.db	00172$>>8
      0018BF 1D                    1343 	.db	00178$>>8
      0018C0 1D                    1344 	.db	00181$>>8
      0018C1 1D                    1345 	.db	00184$>>8
      0018C2 1D                    1346 	.db	00187$>>8
      0018C3 1D                    1347 	.db	00190$>>8
      0018C4 1D                    1348 	.db	00193$>>8
      0018C5 1E                    1349 	.db	00196$>>8
      0018C6 1E                    1350 	.db	00200$>>8
      0018C7 1E                    1351 	.db	00200$>>8
      0018C8 1E                    1352 	.db	00200$>>8
      0018C9 18                    1353 	.db	00101$>>8
      0018CA 18                    1354 	.db	00102$>>8
                                   1355 ;	../Common/CentralHeating.c:272: case MENUID_HOTWATER1HR :
      0018CB                       1356 00101$:
                                   1357 ;	../Common/CentralHeating.c:273: AddSecondsToDateTime(&currentDateTime, 3600, &provideHotwaterUntil);
      0018CB 90 02 A5         [24] 1358 	mov	dptr,#_AddSecondsToDateTime_PARM_2
      0018CE 74 10            [12] 1359 	mov	a,#0x10
      0018D0 F0               [24] 1360 	movx	@dptr,a
      0018D1 74 0E            [12] 1361 	mov	a,#0x0e
      0018D3 A3               [24] 1362 	inc	dptr
      0018D4 F0               [24] 1363 	movx	@dptr,a
      0018D5 90 02 A7         [24] 1364 	mov	dptr,#_AddSecondsToDateTime_PARM_3
      0018D8 74 C7            [12] 1365 	mov	a,#_provideHotwaterUntil
      0018DA F0               [24] 1366 	movx	@dptr,a
      0018DB 74 01            [12] 1367 	mov	a,#(_provideHotwaterUntil >> 8)
      0018DD A3               [24] 1368 	inc	dptr
      0018DE F0               [24] 1369 	movx	@dptr,a
      0018DF E4               [12] 1370 	clr	a
      0018E0 A3               [24] 1371 	inc	dptr
      0018E1 F0               [24] 1372 	movx	@dptr,a
      0018E2 90 01 C0         [24] 1373 	mov	dptr,#_currentDateTime
      0018E5 75 F0 00         [24] 1374 	mov	b,#0x00
                                   1375 ;	../Common/CentralHeating.c:274: break;
      0018E8 02 36 7D         [24] 1376 	ljmp	_AddSecondsToDateTime
                                   1377 ;	../Common/CentralHeating.c:276: case MENUID_HOTWATERRST :
      0018EB                       1378 00102$:
                                   1379 ;	../Common/CentralHeating.c:277: provideHotwaterUntil.year = 0;
      0018EB 90 01 CD         [24] 1380 	mov	dptr,#(_provideHotwaterUntil + 0x0006)
      0018EE E4               [12] 1381 	clr	a
      0018EF F0               [24] 1382 	movx	@dptr,a
                                   1383 ;	../Common/CentralHeating.c:278: break;
      0018F0 22               [24] 1384 	ret
                                   1385 ;	../Common/CentralHeating.c:280: case MENUID_SETDATE :
      0018F1                       1386 00103$:
                                   1387 ;	../Common/CentralHeating.c:281: if (eventType == MENU_SUBMENUENTER)
      0018F1 90 01 EA         [24] 1388 	mov	dptr,#_HandleMenuCommand_PARM_2
      0018F4 E0               [24] 1389 	movx	a,@dptr
      0018F5 FE               [12] 1390 	mov	r6,a
      0018F6 A3               [24] 1391 	inc	dptr
      0018F7 E0               [24] 1392 	movx	a,@dptr
      0018F8 FF               [12] 1393 	mov	r7,a
      0018F9 BE 03 11         [24] 1394 	cjne	r6,#0x03,00107$
      0018FC BF 00 0E         [24] 1395 	cjne	r7,#0x00,00107$
                                   1396 ;	../Common/CentralHeating.c:283: currentScreen = SCREEN_SETDATE;
      0018FF 90 01 BA         [24] 1397 	mov	dptr,#_currentScreen
      001902 74 02            [12] 1398 	mov	a,#0x02
      001904 F0               [24] 1399 	movx	@dptr,a
                                   1400 ;	../Common/CentralHeating.c:284: flashDateTime = 0;
      001905 90 01 BB         [24] 1401 	mov	dptr,#_flashDateTime
      001908 E4               [12] 1402 	clr	a
      001909 F0               [24] 1403 	movx	@dptr,a
                                   1404 ;	../Common/CentralHeating.c:285: ClearTopLine();
      00190A 02 18 2E         [24] 1405 	ljmp	_ClearTopLine
      00190D                       1406 00107$:
                                   1407 ;	../Common/CentralHeating.c:287: else if (eventType == MENU_SUBMENUEXIT)
      00190D BE 04 05         [24] 1408 	cjne	r6,#0x04,00352$
      001910 BF 00 02         [24] 1409 	cjne	r7,#0x00,00352$
      001913 80 01            [24] 1410 	sjmp	00353$
      001915                       1411 00352$:
      001915 22               [24] 1412 	ret
      001916                       1413 00353$:
                                   1414 ;	../Common/CentralHeating.c:289: currentScreen = SCREEN_HOME;
      001916 90 01 BA         [24] 1415 	mov	dptr,#_currentScreen
      001919 74 01            [12] 1416 	mov	a,#0x01
      00191B F0               [24] 1417 	movx	@dptr,a
                                   1418 ;	../Common/CentralHeating.c:290: ClearTopLine();
                                   1419 ;	../Common/CentralHeating.c:292: break;
      00191C 02 18 2E         [24] 1420 	ljmp	_ClearTopLine
                                   1421 ;	../Common/CentralHeating.c:294: case MENUID_SETTIME :
      00191F                       1422 00109$:
                                   1423 ;	../Common/CentralHeating.c:295: if (eventType == MENU_SUBMENUENTER)
      00191F 90 01 EA         [24] 1424 	mov	dptr,#_HandleMenuCommand_PARM_2
      001922 E0               [24] 1425 	movx	a,@dptr
      001923 FE               [12] 1426 	mov	r6,a
      001924 A3               [24] 1427 	inc	dptr
      001925 E0               [24] 1428 	movx	a,@dptr
      001926 FF               [12] 1429 	mov	r7,a
      001927 BE 03 11         [24] 1430 	cjne	r6,#0x03,00113$
      00192A BF 00 0E         [24] 1431 	cjne	r7,#0x00,00113$
                                   1432 ;	../Common/CentralHeating.c:297: currentScreen = SCREEN_SETTIME;
      00192D 90 01 BA         [24] 1433 	mov	dptr,#_currentScreen
      001930 74 03            [12] 1434 	mov	a,#0x03
      001932 F0               [24] 1435 	movx	@dptr,a
                                   1436 ;	../Common/CentralHeating.c:298: flashDateTime = 0;
      001933 90 01 BB         [24] 1437 	mov	dptr,#_flashDateTime
      001936 E4               [12] 1438 	clr	a
      001937 F0               [24] 1439 	movx	@dptr,a
                                   1440 ;	../Common/CentralHeating.c:299: ClearTopLine();
      001938 02 18 2E         [24] 1441 	ljmp	_ClearTopLine
      00193B                       1442 00113$:
                                   1443 ;	../Common/CentralHeating.c:301: else if (eventType == MENU_SUBMENUEXIT)
      00193B BE 04 05         [24] 1444 	cjne	r6,#0x04,00356$
      00193E BF 00 02         [24] 1445 	cjne	r7,#0x00,00356$
      001941 80 01            [24] 1446 	sjmp	00357$
      001943                       1447 00356$:
      001943 22               [24] 1448 	ret
      001944                       1449 00357$:
                                   1450 ;	../Common/CentralHeating.c:303: currentScreen = SCREEN_HOME;
      001944 90 01 BA         [24] 1451 	mov	dptr,#_currentScreen
      001947 74 01            [12] 1452 	mov	a,#0x01
      001949 F0               [24] 1453 	movx	@dptr,a
                                   1454 ;	../Common/CentralHeating.c:304: ClearTopLine();
                                   1455 ;	../Common/CentralHeating.c:306: break;
      00194A 02 18 2E         [24] 1456 	ljmp	_ClearTopLine
                                   1457 ;	../Common/CentralHeating.c:308: case MENUID_ADDDAY :
      00194D                       1458 00115$:
                                   1459 ;	../Common/CentralHeating.c:309: if (eventType == MENU_COMMAND)
      00194D 90 01 EA         [24] 1460 	mov	dptr,#_HandleMenuCommand_PARM_2
      001950 E0               [24] 1461 	movx	a,@dptr
      001951 FE               [12] 1462 	mov	r6,a
      001952 A3               [24] 1463 	inc	dptr
      001953 E0               [24] 1464 	movx	a,@dptr
      001954 FF               [12] 1465 	mov	r7,a
      001955 BE 02 05         [24] 1466 	cjne	r6,#0x02,00358$
      001958 BF 00 02         [24] 1467 	cjne	r7,#0x00,00358$
      00195B 80 01            [24] 1468 	sjmp	00359$
      00195D                       1469 00358$:
      00195D 22               [24] 1470 	ret
      00195E                       1471 00359$:
                                   1472 ;	../Common/CentralHeating.c:311: pGetRtc(&dt);
      00195E 12 19 63         [24] 1473 	lcall	00360$
      001961 80 11            [24] 1474 	sjmp	00361$
      001963                       1475 00360$:
      001963 90 00 05         [24] 1476 	mov	dptr,#_pGetRtc
      001966 E0               [24] 1477 	movx	a,@dptr
      001967 C0 E0            [24] 1478 	push	acc
      001969 A3               [24] 1479 	inc	dptr
      00196A E0               [24] 1480 	movx	a,@dptr
      00196B C0 E0            [24] 1481 	push	acc
      00196D 90 01 EE         [24] 1482 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001970 75 F0 00         [24] 1483 	mov	b,#0x00
      001973 22               [24] 1484 	ret
      001974                       1485 00361$:
                                   1486 ;	../Common/CentralHeating.c:312: if (dt.day == GetNumDaysInMonth(&dt))
      001974 90 01 F2         [24] 1487 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0004)
      001977 E0               [24] 1488 	movx	a,@dptr
      001978 FF               [12] 1489 	mov	r7,a
      001979 90 01 EE         [24] 1490 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      00197C 75 F0 00         [24] 1491 	mov	b,#0x00
      00197F C0 07            [24] 1492 	push	ar7
      001981 12 30 E5         [24] 1493 	lcall	_GetNumDaysInMonth
      001984 AD 82            [24] 1494 	mov	r5,dpl
      001986 AE 83            [24] 1495 	mov	r6,dph
      001988 D0 07            [24] 1496 	pop	ar7
      00198A 7C 00            [12] 1497 	mov	r4,#0x00
      00198C EF               [12] 1498 	mov	a,r7
      00198D B5 05 05         [24] 1499 	cjne	a,ar5,00362$
      001990 EC               [12] 1500 	mov	a,r4
      001991 B5 06 01         [24] 1501 	cjne	a,ar6,00362$
      001994 22               [24] 1502 	ret
      001995                       1503 00362$:
                                   1504 ;	../Common/CentralHeating.c:316: dt.day++;
      001995 90 01 F2         [24] 1505 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0004)
      001998 E0               [24] 1506 	movx	a,@dptr
      001999 FF               [12] 1507 	mov	r7,a
      00199A 0F               [12] 1508 	inc	r7
      00199B 90 01 F2         [24] 1509 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0004)
      00199E EF               [12] 1510 	mov	a,r7
      00199F F0               [24] 1511 	movx	@dptr,a
                                   1512 ;	../Common/CentralHeating.c:317: pSetRtc(&dt);
      0019A0 12 19 A5         [24] 1513 	lcall	00363$
      0019A3 80 11            [24] 1514 	sjmp	00364$
      0019A5                       1515 00363$:
      0019A5 90 00 07         [24] 1516 	mov	dptr,#_pSetRtc
      0019A8 E0               [24] 1517 	movx	a,@dptr
      0019A9 C0 E0            [24] 1518 	push	acc
      0019AB A3               [24] 1519 	inc	dptr
      0019AC E0               [24] 1520 	movx	a,@dptr
      0019AD C0 E0            [24] 1521 	push	acc
      0019AF 90 01 EE         [24] 1522 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      0019B2 75 F0 00         [24] 1523 	mov	b,#0x00
      0019B5 22               [24] 1524 	ret
      0019B6                       1525 00364$:
                                   1526 ;	../Common/CentralHeating.c:318: flashDateTime = 0;
      0019B6 90 01 BB         [24] 1527 	mov	dptr,#_flashDateTime
      0019B9 E4               [12] 1528 	clr	a
      0019BA F0               [24] 1529 	movx	@dptr,a
                                   1530 ;	../Common/CentralHeating.c:319: PreviewDateAdjustment();
                                   1531 ;	../Common/CentralHeating.c:321: break;
      0019BB 02 1E BB         [24] 1532 	ljmp	_PreviewDateAdjustment
                                   1533 ;	../Common/CentralHeating.c:323: case MENUID_SUBDAY :
      0019BE                       1534 00120$:
                                   1535 ;	../Common/CentralHeating.c:324: if (eventType == MENU_COMMAND)
      0019BE 90 01 EA         [24] 1536 	mov	dptr,#_HandleMenuCommand_PARM_2
      0019C1 E0               [24] 1537 	movx	a,@dptr
      0019C2 FE               [12] 1538 	mov	r6,a
      0019C3 A3               [24] 1539 	inc	dptr
      0019C4 E0               [24] 1540 	movx	a,@dptr
      0019C5 FF               [12] 1541 	mov	r7,a
      0019C6 BE 02 05         [24] 1542 	cjne	r6,#0x02,00365$
      0019C9 BF 00 02         [24] 1543 	cjne	r7,#0x00,00365$
      0019CC 80 01            [24] 1544 	sjmp	00366$
      0019CE                       1545 00365$:
      0019CE 22               [24] 1546 	ret
      0019CF                       1547 00366$:
                                   1548 ;	../Common/CentralHeating.c:326: pGetRtc(&dt);
      0019CF 12 19 D4         [24] 1549 	lcall	00367$
      0019D2 80 11            [24] 1550 	sjmp	00368$
      0019D4                       1551 00367$:
      0019D4 90 00 05         [24] 1552 	mov	dptr,#_pGetRtc
      0019D7 E0               [24] 1553 	movx	a,@dptr
      0019D8 C0 E0            [24] 1554 	push	acc
      0019DA A3               [24] 1555 	inc	dptr
      0019DB E0               [24] 1556 	movx	a,@dptr
      0019DC C0 E0            [24] 1557 	push	acc
      0019DE 90 01 EE         [24] 1558 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      0019E1 75 F0 00         [24] 1559 	mov	b,#0x00
      0019E4 22               [24] 1560 	ret
      0019E5                       1561 00368$:
                                   1562 ;	../Common/CentralHeating.c:327: if (dt.day == 1)
      0019E5 90 01 F2         [24] 1563 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0004)
      0019E8 E0               [24] 1564 	movx	a,@dptr
      0019E9 FF               [12] 1565 	mov	r7,a
      0019EA BF 01 01         [24] 1566 	cjne	r7,#0x01,00369$
      0019ED 22               [24] 1567 	ret
      0019EE                       1568 00369$:
                                   1569 ;	../Common/CentralHeating.c:331: dt.day--;
      0019EE 1F               [12] 1570 	dec	r7
      0019EF 90 01 F2         [24] 1571 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0004)
      0019F2 EF               [12] 1572 	mov	a,r7
      0019F3 F0               [24] 1573 	movx	@dptr,a
                                   1574 ;	../Common/CentralHeating.c:332: pSetRtc(&dt);
      0019F4 12 19 F9         [24] 1575 	lcall	00370$
      0019F7 80 11            [24] 1576 	sjmp	00371$
      0019F9                       1577 00370$:
      0019F9 90 00 07         [24] 1578 	mov	dptr,#_pSetRtc
      0019FC E0               [24] 1579 	movx	a,@dptr
      0019FD C0 E0            [24] 1580 	push	acc
      0019FF A3               [24] 1581 	inc	dptr
      001A00 E0               [24] 1582 	movx	a,@dptr
      001A01 C0 E0            [24] 1583 	push	acc
      001A03 90 01 EE         [24] 1584 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001A06 75 F0 00         [24] 1585 	mov	b,#0x00
      001A09 22               [24] 1586 	ret
      001A0A                       1587 00371$:
                                   1588 ;	../Common/CentralHeating.c:333: flashDateTime = 0;
      001A0A 90 01 BB         [24] 1589 	mov	dptr,#_flashDateTime
      001A0D E4               [12] 1590 	clr	a
      001A0E F0               [24] 1591 	movx	@dptr,a
                                   1592 ;	../Common/CentralHeating.c:334: PreviewDateAdjustment();
                                   1593 ;	../Common/CentralHeating.c:336: break;
      001A0F 02 1E BB         [24] 1594 	ljmp	_PreviewDateAdjustment
                                   1595 ;	../Common/CentralHeating.c:338: case MENUID_ADDMONTH :
      001A12                       1596 00125$:
                                   1597 ;	../Common/CentralHeating.c:339: if (eventType == MENU_COMMAND)
      001A12 90 01 EA         [24] 1598 	mov	dptr,#_HandleMenuCommand_PARM_2
      001A15 E0               [24] 1599 	movx	a,@dptr
      001A16 FE               [12] 1600 	mov	r6,a
      001A17 A3               [24] 1601 	inc	dptr
      001A18 E0               [24] 1602 	movx	a,@dptr
      001A19 FF               [12] 1603 	mov	r7,a
      001A1A BE 02 05         [24] 1604 	cjne	r6,#0x02,00372$
      001A1D BF 00 02         [24] 1605 	cjne	r7,#0x00,00372$
      001A20 80 01            [24] 1606 	sjmp	00373$
      001A22                       1607 00372$:
      001A22 22               [24] 1608 	ret
      001A23                       1609 00373$:
                                   1610 ;	../Common/CentralHeating.c:341: pGetRtc(&dt);
      001A23 12 1A 28         [24] 1611 	lcall	00374$
      001A26 80 11            [24] 1612 	sjmp	00375$
      001A28                       1613 00374$:
      001A28 90 00 05         [24] 1614 	mov	dptr,#_pGetRtc
      001A2B E0               [24] 1615 	movx	a,@dptr
      001A2C C0 E0            [24] 1616 	push	acc
      001A2E A3               [24] 1617 	inc	dptr
      001A2F E0               [24] 1618 	movx	a,@dptr
      001A30 C0 E0            [24] 1619 	push	acc
      001A32 90 01 EE         [24] 1620 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001A35 75 F0 00         [24] 1621 	mov	b,#0x00
      001A38 22               [24] 1622 	ret
      001A39                       1623 00375$:
                                   1624 ;	../Common/CentralHeating.c:342: if (dt.month == 12)
      001A39 90 01 F3         [24] 1625 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0005)
      001A3C E0               [24] 1626 	movx	a,@dptr
      001A3D FF               [12] 1627 	mov	r7,a
      001A3E BF 0C 01         [24] 1628 	cjne	r7,#0x0c,00376$
      001A41 22               [24] 1629 	ret
      001A42                       1630 00376$:
                                   1631 ;	../Common/CentralHeating.c:346: dt.month++;
      001A42 0F               [12] 1632 	inc	r7
      001A43 90 01 F3         [24] 1633 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0005)
      001A46 EF               [12] 1634 	mov	a,r7
      001A47 F0               [24] 1635 	movx	@dptr,a
                                   1636 ;	../Common/CentralHeating.c:347: pSetRtc(&dt);
      001A48 12 1A 4D         [24] 1637 	lcall	00377$
      001A4B 80 11            [24] 1638 	sjmp	00378$
      001A4D                       1639 00377$:
      001A4D 90 00 07         [24] 1640 	mov	dptr,#_pSetRtc
      001A50 E0               [24] 1641 	movx	a,@dptr
      001A51 C0 E0            [24] 1642 	push	acc
      001A53 A3               [24] 1643 	inc	dptr
      001A54 E0               [24] 1644 	movx	a,@dptr
      001A55 C0 E0            [24] 1645 	push	acc
      001A57 90 01 EE         [24] 1646 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001A5A 75 F0 00         [24] 1647 	mov	b,#0x00
      001A5D 22               [24] 1648 	ret
      001A5E                       1649 00378$:
                                   1650 ;	../Common/CentralHeating.c:348: flashDateTime = 0;
      001A5E 90 01 BB         [24] 1651 	mov	dptr,#_flashDateTime
      001A61 E4               [12] 1652 	clr	a
      001A62 F0               [24] 1653 	movx	@dptr,a
                                   1654 ;	../Common/CentralHeating.c:349: PreviewDateAdjustment();
                                   1655 ;	../Common/CentralHeating.c:351: break;
      001A63 02 1E BB         [24] 1656 	ljmp	_PreviewDateAdjustment
                                   1657 ;	../Common/CentralHeating.c:353: case MENUID_SUBMONTH :
      001A66                       1658 00130$:
                                   1659 ;	../Common/CentralHeating.c:354: if (eventType == MENU_COMMAND)
      001A66 90 01 EA         [24] 1660 	mov	dptr,#_HandleMenuCommand_PARM_2
      001A69 E0               [24] 1661 	movx	a,@dptr
      001A6A FE               [12] 1662 	mov	r6,a
      001A6B A3               [24] 1663 	inc	dptr
      001A6C E0               [24] 1664 	movx	a,@dptr
      001A6D FF               [12] 1665 	mov	r7,a
      001A6E BE 02 05         [24] 1666 	cjne	r6,#0x02,00379$
      001A71 BF 00 02         [24] 1667 	cjne	r7,#0x00,00379$
      001A74 80 01            [24] 1668 	sjmp	00380$
      001A76                       1669 00379$:
      001A76 22               [24] 1670 	ret
      001A77                       1671 00380$:
                                   1672 ;	../Common/CentralHeating.c:356: pGetRtc(&dt);
      001A77 12 1A 7C         [24] 1673 	lcall	00381$
      001A7A 80 11            [24] 1674 	sjmp	00382$
      001A7C                       1675 00381$:
      001A7C 90 00 05         [24] 1676 	mov	dptr,#_pGetRtc
      001A7F E0               [24] 1677 	movx	a,@dptr
      001A80 C0 E0            [24] 1678 	push	acc
      001A82 A3               [24] 1679 	inc	dptr
      001A83 E0               [24] 1680 	movx	a,@dptr
      001A84 C0 E0            [24] 1681 	push	acc
      001A86 90 01 EE         [24] 1682 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001A89 75 F0 00         [24] 1683 	mov	b,#0x00
      001A8C 22               [24] 1684 	ret
      001A8D                       1685 00382$:
                                   1686 ;	../Common/CentralHeating.c:357: if (dt.month == 1)
      001A8D 90 01 F3         [24] 1687 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0005)
      001A90 E0               [24] 1688 	movx	a,@dptr
      001A91 FF               [12] 1689 	mov	r7,a
      001A92 BF 01 01         [24] 1690 	cjne	r7,#0x01,00383$
      001A95 22               [24] 1691 	ret
      001A96                       1692 00383$:
                                   1693 ;	../Common/CentralHeating.c:361: dt.month--;
      001A96 1F               [12] 1694 	dec	r7
      001A97 90 01 F3         [24] 1695 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0005)
      001A9A EF               [12] 1696 	mov	a,r7
      001A9B F0               [24] 1697 	movx	@dptr,a
                                   1698 ;	../Common/CentralHeating.c:362: pSetRtc(&dt);
      001A9C 12 1A A1         [24] 1699 	lcall	00384$
      001A9F 80 11            [24] 1700 	sjmp	00385$
      001AA1                       1701 00384$:
      001AA1 90 00 07         [24] 1702 	mov	dptr,#_pSetRtc
      001AA4 E0               [24] 1703 	movx	a,@dptr
      001AA5 C0 E0            [24] 1704 	push	acc
      001AA7 A3               [24] 1705 	inc	dptr
      001AA8 E0               [24] 1706 	movx	a,@dptr
      001AA9 C0 E0            [24] 1707 	push	acc
      001AAB 90 01 EE         [24] 1708 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001AAE 75 F0 00         [24] 1709 	mov	b,#0x00
      001AB1 22               [24] 1710 	ret
      001AB2                       1711 00385$:
                                   1712 ;	../Common/CentralHeating.c:363: flashDateTime = 0;
      001AB2 90 01 BB         [24] 1713 	mov	dptr,#_flashDateTime
      001AB5 E4               [12] 1714 	clr	a
      001AB6 F0               [24] 1715 	movx	@dptr,a
                                   1716 ;	../Common/CentralHeating.c:364: PreviewDateAdjustment();
                                   1717 ;	../Common/CentralHeating.c:366: break;
      001AB7 02 1E BB         [24] 1718 	ljmp	_PreviewDateAdjustment
                                   1719 ;	../Common/CentralHeating.c:368: case MENUID_ADDYEAR :
      001ABA                       1720 00135$:
                                   1721 ;	../Common/CentralHeating.c:369: if (eventType == MENU_COMMAND)
      001ABA 90 01 EA         [24] 1722 	mov	dptr,#_HandleMenuCommand_PARM_2
      001ABD E0               [24] 1723 	movx	a,@dptr
      001ABE FE               [12] 1724 	mov	r6,a
      001ABF A3               [24] 1725 	inc	dptr
      001AC0 E0               [24] 1726 	movx	a,@dptr
      001AC1 FF               [12] 1727 	mov	r7,a
      001AC2 BE 02 05         [24] 1728 	cjne	r6,#0x02,00386$
      001AC5 BF 00 02         [24] 1729 	cjne	r7,#0x00,00386$
      001AC8 80 01            [24] 1730 	sjmp	00387$
      001ACA                       1731 00386$:
      001ACA 22               [24] 1732 	ret
      001ACB                       1733 00387$:
                                   1734 ;	../Common/CentralHeating.c:371: pGetRtc(&dt);
      001ACB 12 1A D0         [24] 1735 	lcall	00388$
      001ACE 80 11            [24] 1736 	sjmp	00389$
      001AD0                       1737 00388$:
      001AD0 90 00 05         [24] 1738 	mov	dptr,#_pGetRtc
      001AD3 E0               [24] 1739 	movx	a,@dptr
      001AD4 C0 E0            [24] 1740 	push	acc
      001AD6 A3               [24] 1741 	inc	dptr
      001AD7 E0               [24] 1742 	movx	a,@dptr
      001AD8 C0 E0            [24] 1743 	push	acc
      001ADA 90 01 EE         [24] 1744 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001ADD 75 F0 00         [24] 1745 	mov	b,#0x00
      001AE0 22               [24] 1746 	ret
      001AE1                       1747 00389$:
                                   1748 ;	../Common/CentralHeating.c:372: if (dt.year == 50)
      001AE1 90 01 F4         [24] 1749 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0006)
      001AE4 E0               [24] 1750 	movx	a,@dptr
      001AE5 FF               [12] 1751 	mov	r7,a
      001AE6 BF 32 01         [24] 1752 	cjne	r7,#0x32,00390$
      001AE9 22               [24] 1753 	ret
      001AEA                       1754 00390$:
                                   1755 ;	../Common/CentralHeating.c:376: dt.year++;
      001AEA 0F               [12] 1756 	inc	r7
      001AEB 90 01 F4         [24] 1757 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0006)
      001AEE EF               [12] 1758 	mov	a,r7
      001AEF F0               [24] 1759 	movx	@dptr,a
                                   1760 ;	../Common/CentralHeating.c:377: pSetRtc(&dt);
      001AF0 12 1A F5         [24] 1761 	lcall	00391$
      001AF3 80 11            [24] 1762 	sjmp	00392$
      001AF5                       1763 00391$:
      001AF5 90 00 07         [24] 1764 	mov	dptr,#_pSetRtc
      001AF8 E0               [24] 1765 	movx	a,@dptr
      001AF9 C0 E0            [24] 1766 	push	acc
      001AFB A3               [24] 1767 	inc	dptr
      001AFC E0               [24] 1768 	movx	a,@dptr
      001AFD C0 E0            [24] 1769 	push	acc
      001AFF 90 01 EE         [24] 1770 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001B02 75 F0 00         [24] 1771 	mov	b,#0x00
      001B05 22               [24] 1772 	ret
      001B06                       1773 00392$:
                                   1774 ;	../Common/CentralHeating.c:378: flashDateTime = 0;
      001B06 90 01 BB         [24] 1775 	mov	dptr,#_flashDateTime
      001B09 E4               [12] 1776 	clr	a
      001B0A F0               [24] 1777 	movx	@dptr,a
                                   1778 ;	../Common/CentralHeating.c:379: PreviewDateAdjustment();
                                   1779 ;	../Common/CentralHeating.c:381: break;
      001B0B 02 1E BB         [24] 1780 	ljmp	_PreviewDateAdjustment
                                   1781 ;	../Common/CentralHeating.c:383: case MENUID_SUBYEAR :
      001B0E                       1782 00140$:
                                   1783 ;	../Common/CentralHeating.c:384: if (eventType == MENU_COMMAND)
      001B0E 90 01 EA         [24] 1784 	mov	dptr,#_HandleMenuCommand_PARM_2
      001B11 E0               [24] 1785 	movx	a,@dptr
      001B12 FE               [12] 1786 	mov	r6,a
      001B13 A3               [24] 1787 	inc	dptr
      001B14 E0               [24] 1788 	movx	a,@dptr
      001B15 FF               [12] 1789 	mov	r7,a
      001B16 BE 02 05         [24] 1790 	cjne	r6,#0x02,00393$
      001B19 BF 00 02         [24] 1791 	cjne	r7,#0x00,00393$
      001B1C 80 01            [24] 1792 	sjmp	00394$
      001B1E                       1793 00393$:
      001B1E 22               [24] 1794 	ret
      001B1F                       1795 00394$:
                                   1796 ;	../Common/CentralHeating.c:386: pGetRtc(&dt);
      001B1F 12 1B 24         [24] 1797 	lcall	00395$
      001B22 80 11            [24] 1798 	sjmp	00396$
      001B24                       1799 00395$:
      001B24 90 00 05         [24] 1800 	mov	dptr,#_pGetRtc
      001B27 E0               [24] 1801 	movx	a,@dptr
      001B28 C0 E0            [24] 1802 	push	acc
      001B2A A3               [24] 1803 	inc	dptr
      001B2B E0               [24] 1804 	movx	a,@dptr
      001B2C C0 E0            [24] 1805 	push	acc
      001B2E 90 01 EE         [24] 1806 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001B31 75 F0 00         [24] 1807 	mov	b,#0x00
      001B34 22               [24] 1808 	ret
      001B35                       1809 00396$:
                                   1810 ;	../Common/CentralHeating.c:387: if (dt.year == 10)
      001B35 90 01 F4         [24] 1811 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0006)
      001B38 E0               [24] 1812 	movx	a,@dptr
      001B39 FF               [12] 1813 	mov	r7,a
      001B3A BF 0A 01         [24] 1814 	cjne	r7,#0x0a,00397$
      001B3D 22               [24] 1815 	ret
      001B3E                       1816 00397$:
                                   1817 ;	../Common/CentralHeating.c:391: dt.year--;
      001B3E 1F               [12] 1818 	dec	r7
      001B3F 90 01 F4         [24] 1819 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0006)
      001B42 EF               [12] 1820 	mov	a,r7
      001B43 F0               [24] 1821 	movx	@dptr,a
                                   1822 ;	../Common/CentralHeating.c:392: pSetRtc(&dt);
      001B44 12 1B 49         [24] 1823 	lcall	00398$
      001B47 80 11            [24] 1824 	sjmp	00399$
      001B49                       1825 00398$:
      001B49 90 00 07         [24] 1826 	mov	dptr,#_pSetRtc
      001B4C E0               [24] 1827 	movx	a,@dptr
      001B4D C0 E0            [24] 1828 	push	acc
      001B4F A3               [24] 1829 	inc	dptr
      001B50 E0               [24] 1830 	movx	a,@dptr
      001B51 C0 E0            [24] 1831 	push	acc
      001B53 90 01 EE         [24] 1832 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001B56 75 F0 00         [24] 1833 	mov	b,#0x00
      001B59 22               [24] 1834 	ret
      001B5A                       1835 00399$:
                                   1836 ;	../Common/CentralHeating.c:393: flashDateTime = 0;
      001B5A 90 01 BB         [24] 1837 	mov	dptr,#_flashDateTime
      001B5D E4               [12] 1838 	clr	a
      001B5E F0               [24] 1839 	movx	@dptr,a
                                   1840 ;	../Common/CentralHeating.c:394: PreviewDateAdjustment();
                                   1841 ;	../Common/CentralHeating.c:396: break;
      001B5F 02 1E BB         [24] 1842 	ljmp	_PreviewDateAdjustment
                                   1843 ;	../Common/CentralHeating.c:399: case MENUID_ADDMINUTE :
      001B62                       1844 00145$:
                                   1845 ;	../Common/CentralHeating.c:400: if (eventType == MENU_COMMAND)
      001B62 90 01 EA         [24] 1846 	mov	dptr,#_HandleMenuCommand_PARM_2
      001B65 E0               [24] 1847 	movx	a,@dptr
      001B66 FE               [12] 1848 	mov	r6,a
      001B67 A3               [24] 1849 	inc	dptr
      001B68 E0               [24] 1850 	movx	a,@dptr
      001B69 FF               [12] 1851 	mov	r7,a
      001B6A BE 02 05         [24] 1852 	cjne	r6,#0x02,00400$
      001B6D BF 00 02         [24] 1853 	cjne	r7,#0x00,00400$
      001B70 80 01            [24] 1854 	sjmp	00401$
      001B72                       1855 00400$:
      001B72 22               [24] 1856 	ret
      001B73                       1857 00401$:
                                   1858 ;	../Common/CentralHeating.c:402: pGetRtc(&dt);
      001B73 12 1B 78         [24] 1859 	lcall	00402$
      001B76 80 11            [24] 1860 	sjmp	00403$
      001B78                       1861 00402$:
      001B78 90 00 05         [24] 1862 	mov	dptr,#_pGetRtc
      001B7B E0               [24] 1863 	movx	a,@dptr
      001B7C C0 E0            [24] 1864 	push	acc
      001B7E A3               [24] 1865 	inc	dptr
      001B7F E0               [24] 1866 	movx	a,@dptr
      001B80 C0 E0            [24] 1867 	push	acc
      001B82 90 01 EE         [24] 1868 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001B85 75 F0 00         [24] 1869 	mov	b,#0x00
      001B88 22               [24] 1870 	ret
      001B89                       1871 00403$:
                                   1872 ;	../Common/CentralHeating.c:403: if (dt.minutes == 59)
      001B89 90 01 EF         [24] 1873 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0001)
      001B8C E0               [24] 1874 	movx	a,@dptr
      001B8D FF               [12] 1875 	mov	r7,a
      001B8E BF 3B 07         [24] 1876 	cjne	r7,#0x3b,00147$
                                   1877 ;	../Common/CentralHeating.c:405: dt.minutes = 0;
      001B91 90 01 EF         [24] 1878 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0001)
      001B94 E4               [12] 1879 	clr	a
      001B95 F0               [24] 1880 	movx	@dptr,a
      001B96 80 06            [24] 1881 	sjmp	00148$
      001B98                       1882 00147$:
                                   1883 ;	../Common/CentralHeating.c:409: dt.minutes++;
      001B98 0F               [12] 1884 	inc	r7
      001B99 90 01 EF         [24] 1885 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0001)
      001B9C EF               [12] 1886 	mov	a,r7
      001B9D F0               [24] 1887 	movx	@dptr,a
      001B9E                       1888 00148$:
                                   1889 ;	../Common/CentralHeating.c:411: pSetRtc(&dt);
      001B9E 12 1B A3         [24] 1890 	lcall	00406$
      001BA1 80 11            [24] 1891 	sjmp	00407$
      001BA3                       1892 00406$:
      001BA3 90 00 07         [24] 1893 	mov	dptr,#_pSetRtc
      001BA6 E0               [24] 1894 	movx	a,@dptr
      001BA7 C0 E0            [24] 1895 	push	acc
      001BA9 A3               [24] 1896 	inc	dptr
      001BAA E0               [24] 1897 	movx	a,@dptr
      001BAB C0 E0            [24] 1898 	push	acc
      001BAD 90 01 EE         [24] 1899 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001BB0 75 F0 00         [24] 1900 	mov	b,#0x00
      001BB3 22               [24] 1901 	ret
      001BB4                       1902 00407$:
                                   1903 ;	../Common/CentralHeating.c:412: flashDateTime = 0;
      001BB4 90 01 BB         [24] 1904 	mov	dptr,#_flashDateTime
      001BB7 E4               [12] 1905 	clr	a
      001BB8 F0               [24] 1906 	movx	@dptr,a
                                   1907 ;	../Common/CentralHeating.c:413: PreviewTimeAdjustment();
                                   1908 ;	../Common/CentralHeating.c:415: break;
      001BB9 02 1E 6E         [24] 1909 	ljmp	_PreviewTimeAdjustment
                                   1910 ;	../Common/CentralHeating.c:417: case MENUID_SUBMINUTE :
      001BBC                       1911 00151$:
                                   1912 ;	../Common/CentralHeating.c:418: if (eventType == MENU_COMMAND)
      001BBC 90 01 EA         [24] 1913 	mov	dptr,#_HandleMenuCommand_PARM_2
      001BBF E0               [24] 1914 	movx	a,@dptr
      001BC0 FE               [12] 1915 	mov	r6,a
      001BC1 A3               [24] 1916 	inc	dptr
      001BC2 E0               [24] 1917 	movx	a,@dptr
      001BC3 FF               [12] 1918 	mov	r7,a
      001BC4 BE 02 05         [24] 1919 	cjne	r6,#0x02,00408$
      001BC7 BF 00 02         [24] 1920 	cjne	r7,#0x00,00408$
      001BCA 80 01            [24] 1921 	sjmp	00409$
      001BCC                       1922 00408$:
      001BCC 22               [24] 1923 	ret
      001BCD                       1924 00409$:
                                   1925 ;	../Common/CentralHeating.c:420: pGetRtc(&dt);
      001BCD 12 1B D2         [24] 1926 	lcall	00410$
      001BD0 80 11            [24] 1927 	sjmp	00411$
      001BD2                       1928 00410$:
      001BD2 90 00 05         [24] 1929 	mov	dptr,#_pGetRtc
      001BD5 E0               [24] 1930 	movx	a,@dptr
      001BD6 C0 E0            [24] 1931 	push	acc
      001BD8 A3               [24] 1932 	inc	dptr
      001BD9 E0               [24] 1933 	movx	a,@dptr
      001BDA C0 E0            [24] 1934 	push	acc
      001BDC 90 01 EE         [24] 1935 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001BDF 75 F0 00         [24] 1936 	mov	b,#0x00
      001BE2 22               [24] 1937 	ret
      001BE3                       1938 00411$:
                                   1939 ;	../Common/CentralHeating.c:421: if (dt.minutes == 0)
      001BE3 90 01 EF         [24] 1940 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0001)
      001BE6 E0               [24] 1941 	movx	a,@dptr
      001BE7 FF               [12] 1942 	mov	r7,a
      001BE8 70 08            [24] 1943 	jnz	00153$
                                   1944 ;	../Common/CentralHeating.c:423: dt.minutes = 59;
      001BEA 90 01 EF         [24] 1945 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0001)
      001BED 74 3B            [12] 1946 	mov	a,#0x3b
      001BEF F0               [24] 1947 	movx	@dptr,a
      001BF0 80 06            [24] 1948 	sjmp	00154$
      001BF2                       1949 00153$:
                                   1950 ;	../Common/CentralHeating.c:427: dt.minutes--;
      001BF2 1F               [12] 1951 	dec	r7
      001BF3 90 01 EF         [24] 1952 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0001)
      001BF6 EF               [12] 1953 	mov	a,r7
      001BF7 F0               [24] 1954 	movx	@dptr,a
      001BF8                       1955 00154$:
                                   1956 ;	../Common/CentralHeating.c:429: pSetRtc(&dt);
      001BF8 12 1B FD         [24] 1957 	lcall	00413$
      001BFB 80 11            [24] 1958 	sjmp	00414$
      001BFD                       1959 00413$:
      001BFD 90 00 07         [24] 1960 	mov	dptr,#_pSetRtc
      001C00 E0               [24] 1961 	movx	a,@dptr
      001C01 C0 E0            [24] 1962 	push	acc
      001C03 A3               [24] 1963 	inc	dptr
      001C04 E0               [24] 1964 	movx	a,@dptr
      001C05 C0 E0            [24] 1965 	push	acc
      001C07 90 01 EE         [24] 1966 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001C0A 75 F0 00         [24] 1967 	mov	b,#0x00
      001C0D 22               [24] 1968 	ret
      001C0E                       1969 00414$:
                                   1970 ;	../Common/CentralHeating.c:430: flashDateTime = 0;
      001C0E 90 01 BB         [24] 1971 	mov	dptr,#_flashDateTime
      001C11 E4               [12] 1972 	clr	a
      001C12 F0               [24] 1973 	movx	@dptr,a
                                   1974 ;	../Common/CentralHeating.c:431: PreviewTimeAdjustment();
                                   1975 ;	../Common/CentralHeating.c:433: break;
      001C13 02 1E 6E         [24] 1976 	ljmp	_PreviewTimeAdjustment
                                   1977 ;	../Common/CentralHeating.c:436: case MENUID_ADDHOUR :
      001C16                       1978 00157$:
                                   1979 ;	../Common/CentralHeating.c:437: if (eventType == MENU_COMMAND)
      001C16 90 01 EA         [24] 1980 	mov	dptr,#_HandleMenuCommand_PARM_2
      001C19 E0               [24] 1981 	movx	a,@dptr
      001C1A FE               [12] 1982 	mov	r6,a
      001C1B A3               [24] 1983 	inc	dptr
      001C1C E0               [24] 1984 	movx	a,@dptr
      001C1D FF               [12] 1985 	mov	r7,a
      001C1E BE 02 05         [24] 1986 	cjne	r6,#0x02,00415$
      001C21 BF 00 02         [24] 1987 	cjne	r7,#0x00,00415$
      001C24 80 01            [24] 1988 	sjmp	00416$
      001C26                       1989 00415$:
      001C26 22               [24] 1990 	ret
      001C27                       1991 00416$:
                                   1992 ;	../Common/CentralHeating.c:439: pGetRtc(&dt);
      001C27 12 1C 2C         [24] 1993 	lcall	00417$
      001C2A 80 11            [24] 1994 	sjmp	00418$
      001C2C                       1995 00417$:
      001C2C 90 00 05         [24] 1996 	mov	dptr,#_pGetRtc
      001C2F E0               [24] 1997 	movx	a,@dptr
      001C30 C0 E0            [24] 1998 	push	acc
      001C32 A3               [24] 1999 	inc	dptr
      001C33 E0               [24] 2000 	movx	a,@dptr
      001C34 C0 E0            [24] 2001 	push	acc
      001C36 90 01 EE         [24] 2002 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001C39 75 F0 00         [24] 2003 	mov	b,#0x00
      001C3C 22               [24] 2004 	ret
      001C3D                       2005 00418$:
                                   2006 ;	../Common/CentralHeating.c:440: if (dt.hours == 23)
      001C3D 90 01 F0         [24] 2007 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0002)
      001C40 E0               [24] 2008 	movx	a,@dptr
      001C41 FF               [12] 2009 	mov	r7,a
      001C42 BF 17 07         [24] 2010 	cjne	r7,#0x17,00159$
                                   2011 ;	../Common/CentralHeating.c:442: dt.hours = 0;
      001C45 90 01 F0         [24] 2012 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0002)
      001C48 E4               [12] 2013 	clr	a
      001C49 F0               [24] 2014 	movx	@dptr,a
      001C4A 80 06            [24] 2015 	sjmp	00160$
      001C4C                       2016 00159$:
                                   2017 ;	../Common/CentralHeating.c:446: dt.hours++;
      001C4C 0F               [12] 2018 	inc	r7
      001C4D 90 01 F0         [24] 2019 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0002)
      001C50 EF               [12] 2020 	mov	a,r7
      001C51 F0               [24] 2021 	movx	@dptr,a
      001C52                       2022 00160$:
                                   2023 ;	../Common/CentralHeating.c:448: pSetRtc(&dt);
      001C52 12 1C 57         [24] 2024 	lcall	00421$
      001C55 80 11            [24] 2025 	sjmp	00422$
      001C57                       2026 00421$:
      001C57 90 00 07         [24] 2027 	mov	dptr,#_pSetRtc
      001C5A E0               [24] 2028 	movx	a,@dptr
      001C5B C0 E0            [24] 2029 	push	acc
      001C5D A3               [24] 2030 	inc	dptr
      001C5E E0               [24] 2031 	movx	a,@dptr
      001C5F C0 E0            [24] 2032 	push	acc
      001C61 90 01 EE         [24] 2033 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001C64 75 F0 00         [24] 2034 	mov	b,#0x00
      001C67 22               [24] 2035 	ret
      001C68                       2036 00422$:
                                   2037 ;	../Common/CentralHeating.c:449: flashDateTime = 0;
      001C68 90 01 BB         [24] 2038 	mov	dptr,#_flashDateTime
      001C6B E4               [12] 2039 	clr	a
      001C6C F0               [24] 2040 	movx	@dptr,a
                                   2041 ;	../Common/CentralHeating.c:450: PreviewTimeAdjustment();
                                   2042 ;	../Common/CentralHeating.c:452: break;
      001C6D 02 1E 6E         [24] 2043 	ljmp	_PreviewTimeAdjustment
                                   2044 ;	../Common/CentralHeating.c:454: case MENUID_SUBHOUR :
      001C70                       2045 00163$:
                                   2046 ;	../Common/CentralHeating.c:455: if (eventType == MENU_COMMAND)
      001C70 90 01 EA         [24] 2047 	mov	dptr,#_HandleMenuCommand_PARM_2
      001C73 E0               [24] 2048 	movx	a,@dptr
      001C74 FE               [12] 2049 	mov	r6,a
      001C75 A3               [24] 2050 	inc	dptr
      001C76 E0               [24] 2051 	movx	a,@dptr
      001C77 FF               [12] 2052 	mov	r7,a
      001C78 BE 02 05         [24] 2053 	cjne	r6,#0x02,00423$
      001C7B BF 00 02         [24] 2054 	cjne	r7,#0x00,00423$
      001C7E 80 01            [24] 2055 	sjmp	00424$
      001C80                       2056 00423$:
      001C80 22               [24] 2057 	ret
      001C81                       2058 00424$:
                                   2059 ;	../Common/CentralHeating.c:457: pGetRtc(&dt);
      001C81 12 1C 86         [24] 2060 	lcall	00425$
      001C84 80 11            [24] 2061 	sjmp	00426$
      001C86                       2062 00425$:
      001C86 90 00 05         [24] 2063 	mov	dptr,#_pGetRtc
      001C89 E0               [24] 2064 	movx	a,@dptr
      001C8A C0 E0            [24] 2065 	push	acc
      001C8C A3               [24] 2066 	inc	dptr
      001C8D E0               [24] 2067 	movx	a,@dptr
      001C8E C0 E0            [24] 2068 	push	acc
      001C90 90 01 EE         [24] 2069 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001C93 75 F0 00         [24] 2070 	mov	b,#0x00
      001C96 22               [24] 2071 	ret
      001C97                       2072 00426$:
                                   2073 ;	../Common/CentralHeating.c:458: if (dt.hours == 0)
      001C97 90 01 F0         [24] 2074 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0002)
      001C9A E0               [24] 2075 	movx	a,@dptr
      001C9B FF               [12] 2076 	mov	r7,a
      001C9C 70 08            [24] 2077 	jnz	00165$
                                   2078 ;	../Common/CentralHeating.c:460: dt.hours = 23;
      001C9E 90 01 F0         [24] 2079 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0002)
      001CA1 74 17            [12] 2080 	mov	a,#0x17
      001CA3 F0               [24] 2081 	movx	@dptr,a
      001CA4 80 06            [24] 2082 	sjmp	00166$
      001CA6                       2083 00165$:
                                   2084 ;	../Common/CentralHeating.c:464: dt.hours--;
      001CA6 1F               [12] 2085 	dec	r7
      001CA7 90 01 F0         [24] 2086 	mov	dptr,#(_HandleMenuCommand_dt_65536_60 + 0x0002)
      001CAA EF               [12] 2087 	mov	a,r7
      001CAB F0               [24] 2088 	movx	@dptr,a
      001CAC                       2089 00166$:
                                   2090 ;	../Common/CentralHeating.c:466: pSetRtc(&dt);
      001CAC 12 1C B1         [24] 2091 	lcall	00428$
      001CAF 80 11            [24] 2092 	sjmp	00429$
      001CB1                       2093 00428$:
      001CB1 90 00 07         [24] 2094 	mov	dptr,#_pSetRtc
      001CB4 E0               [24] 2095 	movx	a,@dptr
      001CB5 C0 E0            [24] 2096 	push	acc
      001CB7 A3               [24] 2097 	inc	dptr
      001CB8 E0               [24] 2098 	movx	a,@dptr
      001CB9 C0 E0            [24] 2099 	push	acc
      001CBB 90 01 EE         [24] 2100 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001CBE 75 F0 00         [24] 2101 	mov	b,#0x00
      001CC1 22               [24] 2102 	ret
      001CC2                       2103 00429$:
                                   2104 ;	../Common/CentralHeating.c:467: flashDateTime = 0;
      001CC2 90 01 BB         [24] 2105 	mov	dptr,#_flashDateTime
      001CC5 E4               [12] 2106 	clr	a
      001CC6 F0               [24] 2107 	movx	@dptr,a
                                   2108 ;	../Common/CentralHeating.c:468: PreviewTimeAdjustment();
                                   2109 ;	../Common/CentralHeating.c:470: break;
      001CC7 02 1E 6E         [24] 2110 	ljmp	_PreviewTimeAdjustment
                                   2111 ;	../Common/CentralHeating.c:472: case MENUID_RESETSEC :
      001CCA                       2112 00169$:
                                   2113 ;	../Common/CentralHeating.c:473: if (eventType == MENU_COMMAND)
      001CCA 90 01 EA         [24] 2114 	mov	dptr,#_HandleMenuCommand_PARM_2
      001CCD E0               [24] 2115 	movx	a,@dptr
      001CCE FE               [12] 2116 	mov	r6,a
      001CCF A3               [24] 2117 	inc	dptr
      001CD0 E0               [24] 2118 	movx	a,@dptr
      001CD1 FF               [12] 2119 	mov	r7,a
      001CD2 BE 02 05         [24] 2120 	cjne	r6,#0x02,00430$
      001CD5 BF 00 02         [24] 2121 	cjne	r7,#0x00,00430$
      001CD8 80 01            [24] 2122 	sjmp	00431$
      001CDA                       2123 00430$:
      001CDA 22               [24] 2124 	ret
      001CDB                       2125 00431$:
                                   2126 ;	../Common/CentralHeating.c:475: pGetRtc(&dt);
      001CDB 12 1C E0         [24] 2127 	lcall	00432$
      001CDE 80 11            [24] 2128 	sjmp	00433$
      001CE0                       2129 00432$:
      001CE0 90 00 05         [24] 2130 	mov	dptr,#_pGetRtc
      001CE3 E0               [24] 2131 	movx	a,@dptr
      001CE4 C0 E0            [24] 2132 	push	acc
      001CE6 A3               [24] 2133 	inc	dptr
      001CE7 E0               [24] 2134 	movx	a,@dptr
      001CE8 C0 E0            [24] 2135 	push	acc
      001CEA 90 01 EE         [24] 2136 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001CED 75 F0 00         [24] 2137 	mov	b,#0x00
      001CF0 22               [24] 2138 	ret
      001CF1                       2139 00433$:
                                   2140 ;	../Common/CentralHeating.c:476: dt.seconds = 0;
      001CF1 90 01 EE         [24] 2141 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001CF4 E4               [12] 2142 	clr	a
      001CF5 F0               [24] 2143 	movx	@dptr,a
                                   2144 ;	../Common/CentralHeating.c:477: pSetRtc(&dt);
      001CF6 12 1C FB         [24] 2145 	lcall	00434$
      001CF9 80 11            [24] 2146 	sjmp	00435$
      001CFB                       2147 00434$:
      001CFB 90 00 07         [24] 2148 	mov	dptr,#_pSetRtc
      001CFE E0               [24] 2149 	movx	a,@dptr
      001CFF C0 E0            [24] 2150 	push	acc
      001D01 A3               [24] 2151 	inc	dptr
      001D02 E0               [24] 2152 	movx	a,@dptr
      001D03 C0 E0            [24] 2153 	push	acc
      001D05 90 01 EE         [24] 2154 	mov	dptr,#_HandleMenuCommand_dt_65536_60
      001D08 75 F0 00         [24] 2155 	mov	b,#0x00
      001D0B 22               [24] 2156 	ret
      001D0C                       2157 00435$:
                                   2158 ;	../Common/CentralHeating.c:478: flashDateTime = 0;
      001D0C 90 01 BB         [24] 2159 	mov	dptr,#_flashDateTime
      001D0F E4               [12] 2160 	clr	a
      001D10 F0               [24] 2161 	movx	@dptr,a
                                   2162 ;	../Common/CentralHeating.c:479: PreviewTimeAdjustment();
                                   2163 ;	../Common/CentralHeating.c:481: break;
      001D11 02 1E 6E         [24] 2164 	ljmp	_PreviewTimeAdjustment
                                   2165 ;	../Common/CentralHeating.c:483: case MENUID_TESTOUTPUT :
      001D14                       2166 00172$:
                                   2167 ;	../Common/CentralHeating.c:484: if (eventType == MENU_SUBMENUENTER)
      001D14 90 01 EA         [24] 2168 	mov	dptr,#_HandleMenuCommand_PARM_2
      001D17 E0               [24] 2169 	movx	a,@dptr
      001D18 FE               [12] 2170 	mov	r6,a
      001D19 A3               [24] 2171 	inc	dptr
      001D1A E0               [24] 2172 	movx	a,@dptr
      001D1B FF               [12] 2173 	mov	r7,a
      001D1C BE 03 1A         [24] 2174 	cjne	r6,#0x03,00176$
      001D1F BF 00 17         [24] 2175 	cjne	r7,#0x00,00176$
                                   2176 ;	../Common/CentralHeating.c:486: currentScreen = SCREEN_OUTPUTTEST;
      001D22 90 01 BA         [24] 2177 	mov	dptr,#_currentScreen
      001D25 74 04            [12] 2178 	mov	a,#0x04
      001D27 F0               [24] 2179 	movx	@dptr,a
                                   2180 ;	../Common/CentralHeating.c:487: ClearTopLine();
      001D28 12 18 2E         [24] 2181 	lcall	_ClearTopLine
                                   2182 ;	../Common/CentralHeating.c:488: TestAndDisplay("Off", 0);
      001D2B 90 02 21         [24] 2183 	mov	dptr,#_TestAndDisplay_PARM_2
      001D2E E4               [12] 2184 	clr	a
      001D2F F0               [24] 2185 	movx	@dptr,a
      001D30 90 3E 3E         [24] 2186 	mov	dptr,#___str_1
      001D33 75 F0 80         [24] 2187 	mov	b,#0x80
      001D36 02 1F 03         [24] 2188 	ljmp	_TestAndDisplay
      001D39                       2189 00176$:
                                   2190 ;	../Common/CentralHeating.c:490: else if (eventType == MENU_SUBMENUEXIT)
      001D39 BE 04 05         [24] 2191 	cjne	r6,#0x04,00438$
      001D3C BF 00 02         [24] 2192 	cjne	r7,#0x00,00438$
      001D3F 80 01            [24] 2193 	sjmp	00439$
      001D41                       2194 00438$:
      001D41 22               [24] 2195 	ret
      001D42                       2196 00439$:
                                   2197 ;	../Common/CentralHeating.c:492: currentScreen = SCREEN_HOME;
      001D42 90 01 BA         [24] 2198 	mov	dptr,#_currentScreen
      001D45 74 01            [12] 2199 	mov	a,#0x01
      001D47 F0               [24] 2200 	movx	@dptr,a
                                   2201 ;	../Common/CentralHeating.c:493: ClearTopLine();
                                   2202 ;	../Common/CentralHeating.c:495: break;
      001D48 02 18 2E         [24] 2203 	ljmp	_ClearTopLine
                                   2204 ;	../Common/CentralHeating.c:497: case MENUID_TEST_BOILER :
      001D4B                       2205 00178$:
                                   2206 ;	../Common/CentralHeating.c:498: if (eventType == MENU_COMMAND)
      001D4B 90 01 EA         [24] 2207 	mov	dptr,#_HandleMenuCommand_PARM_2
      001D4E E0               [24] 2208 	movx	a,@dptr
      001D4F FE               [12] 2209 	mov	r6,a
      001D50 A3               [24] 2210 	inc	dptr
      001D51 E0               [24] 2211 	movx	a,@dptr
      001D52 FF               [12] 2212 	mov	r7,a
      001D53 BE 02 05         [24] 2213 	cjne	r6,#0x02,00440$
      001D56 BF 00 02         [24] 2214 	cjne	r7,#0x00,00440$
      001D59 80 01            [24] 2215 	sjmp	00441$
      001D5B                       2216 00440$:
      001D5B 22               [24] 2217 	ret
      001D5C                       2218 00441$:
                                   2219 ;	../Common/CentralHeating.c:500: TestAndDisplay("Boiler", OUTPUT_BOILER);
      001D5C 90 02 21         [24] 2220 	mov	dptr,#_TestAndDisplay_PARM_2
      001D5F 74 20            [12] 2221 	mov	a,#0x20
      001D61 F0               [24] 2222 	movx	@dptr,a
      001D62 90 3E 42         [24] 2223 	mov	dptr,#___str_2
      001D65 75 F0 80         [24] 2224 	mov	b,#0x80
                                   2225 ;	../Common/CentralHeating.c:502: break;
      001D68 02 1F 03         [24] 2226 	ljmp	_TestAndDisplay
                                   2227 ;	../Common/CentralHeating.c:504: case MENUID_TEST_PUMP :
      001D6B                       2228 00181$:
                                   2229 ;	../Common/CentralHeating.c:505: if (eventType == MENU_COMMAND)
      001D6B 90 01 EA         [24] 2230 	mov	dptr,#_HandleMenuCommand_PARM_2
      001D6E E0               [24] 2231 	movx	a,@dptr
      001D6F FE               [12] 2232 	mov	r6,a
      001D70 A3               [24] 2233 	inc	dptr
      001D71 E0               [24] 2234 	movx	a,@dptr
      001D72 FF               [12] 2235 	mov	r7,a
      001D73 BE 02 05         [24] 2236 	cjne	r6,#0x02,00442$
      001D76 BF 00 02         [24] 2237 	cjne	r7,#0x00,00442$
      001D79 80 01            [24] 2238 	sjmp	00443$
      001D7B                       2239 00442$:
      001D7B 22               [24] 2240 	ret
      001D7C                       2241 00443$:
                                   2242 ;	../Common/CentralHeating.c:507: TestAndDisplay("Pump", OUTPUT_PUMP);
      001D7C 90 02 21         [24] 2243 	mov	dptr,#_TestAndDisplay_PARM_2
      001D7F 74 10            [12] 2244 	mov	a,#0x10
      001D81 F0               [24] 2245 	movx	@dptr,a
      001D82 90 3E 49         [24] 2246 	mov	dptr,#___str_3
      001D85 75 F0 80         [24] 2247 	mov	b,#0x80
                                   2248 ;	../Common/CentralHeating.c:509: break;
      001D88 02 1F 03         [24] 2249 	ljmp	_TestAndDisplay
                                   2250 ;	../Common/CentralHeating.c:511: case MENUID_TEST_ZONE1 :
      001D8B                       2251 00184$:
                                   2252 ;	../Common/CentralHeating.c:512: if (eventType == MENU_COMMAND)
      001D8B 90 01 EA         [24] 2253 	mov	dptr,#_HandleMenuCommand_PARM_2
      001D8E E0               [24] 2254 	movx	a,@dptr
      001D8F FE               [12] 2255 	mov	r6,a
      001D90 A3               [24] 2256 	inc	dptr
      001D91 E0               [24] 2257 	movx	a,@dptr
      001D92 FF               [12] 2258 	mov	r7,a
      001D93 BE 02 05         [24] 2259 	cjne	r6,#0x02,00444$
      001D96 BF 00 02         [24] 2260 	cjne	r7,#0x00,00444$
      001D99 80 01            [24] 2261 	sjmp	00445$
      001D9B                       2262 00444$:
      001D9B 22               [24] 2263 	ret
      001D9C                       2264 00445$:
                                   2265 ;	../Common/CentralHeating.c:514: TestAndDisplay("Zone 1", OUTPUT_ACTUATOR1);
      001D9C 90 02 21         [24] 2266 	mov	dptr,#_TestAndDisplay_PARM_2
      001D9F 74 01            [12] 2267 	mov	a,#0x01
      001DA1 F0               [24] 2268 	movx	@dptr,a
      001DA2 90 3E 4E         [24] 2269 	mov	dptr,#___str_4
      001DA5 75 F0 80         [24] 2270 	mov	b,#0x80
                                   2271 ;	../Common/CentralHeating.c:516: break;
      001DA8 02 1F 03         [24] 2272 	ljmp	_TestAndDisplay
                                   2273 ;	../Common/CentralHeating.c:518: case MENUID_TEST_ZONE2 :
      001DAB                       2274 00187$:
                                   2275 ;	../Common/CentralHeating.c:519: if (eventType == MENU_COMMAND)
      001DAB 90 01 EA         [24] 2276 	mov	dptr,#_HandleMenuCommand_PARM_2
      001DAE E0               [24] 2277 	movx	a,@dptr
      001DAF FE               [12] 2278 	mov	r6,a
      001DB0 A3               [24] 2279 	inc	dptr
      001DB1 E0               [24] 2280 	movx	a,@dptr
      001DB2 FF               [12] 2281 	mov	r7,a
      001DB3 BE 02 05         [24] 2282 	cjne	r6,#0x02,00446$
      001DB6 BF 00 02         [24] 2283 	cjne	r7,#0x00,00446$
      001DB9 80 01            [24] 2284 	sjmp	00447$
      001DBB                       2285 00446$:
      001DBB 22               [24] 2286 	ret
      001DBC                       2287 00447$:
                                   2288 ;	../Common/CentralHeating.c:521: TestAndDisplay("Zone 2", OUTPUT_ACTUATOR2);
      001DBC 90 02 21         [24] 2289 	mov	dptr,#_TestAndDisplay_PARM_2
      001DBF 74 02            [12] 2290 	mov	a,#0x02
      001DC1 F0               [24] 2291 	movx	@dptr,a
      001DC2 90 3E 55         [24] 2292 	mov	dptr,#___str_5
      001DC5 75 F0 80         [24] 2293 	mov	b,#0x80
                                   2294 ;	../Common/CentralHeating.c:523: break;
                                   2295 ;	../Common/CentralHeating.c:525: case MENUID_TEST_ZONE3 :
      001DC8 02 1F 03         [24] 2296 	ljmp	_TestAndDisplay
      001DCB                       2297 00190$:
                                   2298 ;	../Common/CentralHeating.c:526: if (eventType == MENU_COMMAND)
      001DCB 90 01 EA         [24] 2299 	mov	dptr,#_HandleMenuCommand_PARM_2
      001DCE E0               [24] 2300 	movx	a,@dptr
      001DCF FE               [12] 2301 	mov	r6,a
      001DD0 A3               [24] 2302 	inc	dptr
      001DD1 E0               [24] 2303 	movx	a,@dptr
      001DD2 FF               [12] 2304 	mov	r7,a
      001DD3 BE 02 4B         [24] 2305 	cjne	r6,#0x02,00200$
      001DD6 BF 00 48         [24] 2306 	cjne	r7,#0x00,00200$
                                   2307 ;	../Common/CentralHeating.c:528: TestAndDisplay("Zone 3", OUTPUT_ACTUATOR3);
      001DD9 90 02 21         [24] 2308 	mov	dptr,#_TestAndDisplay_PARM_2
      001DDC 74 04            [12] 2309 	mov	a,#0x04
      001DDE F0               [24] 2310 	movx	@dptr,a
      001DDF 90 3E 5C         [24] 2311 	mov	dptr,#___str_6
      001DE2 75 F0 80         [24] 2312 	mov	b,#0x80
                                   2313 ;	../Common/CentralHeating.c:530: break;
                                   2314 ;	../Common/CentralHeating.c:532: case MENUID_TEST_ZONE4 :
      001DE5 02 1F 03         [24] 2315 	ljmp	_TestAndDisplay
      001DE8                       2316 00193$:
                                   2317 ;	../Common/CentralHeating.c:533: if (eventType == MENU_COMMAND)
      001DE8 90 01 EA         [24] 2318 	mov	dptr,#_HandleMenuCommand_PARM_2
      001DEB E0               [24] 2319 	movx	a,@dptr
      001DEC FE               [12] 2320 	mov	r6,a
      001DED A3               [24] 2321 	inc	dptr
      001DEE E0               [24] 2322 	movx	a,@dptr
      001DEF FF               [12] 2323 	mov	r7,a
      001DF0 BE 02 2E         [24] 2324 	cjne	r6,#0x02,00200$
      001DF3 BF 00 2B         [24] 2325 	cjne	r7,#0x00,00200$
                                   2326 ;	../Common/CentralHeating.c:535: TestAndDisplay("Zone 4", OUTPUT_ACTUATOR4);
      001DF6 90 02 21         [24] 2327 	mov	dptr,#_TestAndDisplay_PARM_2
      001DF9 74 08            [12] 2328 	mov	a,#0x08
      001DFB F0               [24] 2329 	movx	@dptr,a
      001DFC 90 3E 63         [24] 2330 	mov	dptr,#___str_7
      001DFF 75 F0 80         [24] 2331 	mov	b,#0x80
                                   2332 ;	../Common/CentralHeating.c:537: break;
                                   2333 ;	../Common/CentralHeating.c:540: case MENUID_TEST_RESET :
      001E02 02 1F 03         [24] 2334 	ljmp	_TestAndDisplay
      001E05                       2335 00196$:
                                   2336 ;	../Common/CentralHeating.c:541: if (eventType == MENU_COMMAND)
      001E05 90 01 EA         [24] 2337 	mov	dptr,#_HandleMenuCommand_PARM_2
      001E08 E0               [24] 2338 	movx	a,@dptr
      001E09 FE               [12] 2339 	mov	r6,a
      001E0A A3               [24] 2340 	inc	dptr
      001E0B E0               [24] 2341 	movx	a,@dptr
      001E0C FF               [12] 2342 	mov	r7,a
      001E0D BE 02 11         [24] 2343 	cjne	r6,#0x02,00200$
      001E10 BF 00 0E         [24] 2344 	cjne	r7,#0x00,00200$
                                   2345 ;	../Common/CentralHeating.c:543: TestAndDisplay("Reset", 0);
      001E13 90 02 21         [24] 2346 	mov	dptr,#_TestAndDisplay_PARM_2
      001E16 E4               [12] 2347 	clr	a
      001E17 F0               [24] 2348 	movx	@dptr,a
      001E18 90 3E 6A         [24] 2349 	mov	dptr,#___str_8
      001E1B 75 F0 80         [24] 2350 	mov	b,#0x80
                                   2351 ;	../Common/CentralHeating.c:548: }
                                   2352 ;	../Common/CentralHeating.c:550: }
      001E1E 02 1F 03         [24] 2353 	ljmp	_TestAndDisplay
      001E21                       2354 00200$:
      001E21 22               [24] 2355 	ret
                                   2356 ;------------------------------------------------------------
                                   2357 ;Allocation info for local variables in function 'WriteCurrentTime'
                                   2358 ;------------------------------------------------------------
                                   2359 ;strBuffer                 Allocated with name '_WriteCurrentTime_strBuffer_65536_100'
                                   2360 ;------------------------------------------------------------
                                   2361 ;	../Common/CentralHeating.c:554: void WriteCurrentTime()
                                   2362 ;	-----------------------------------------
                                   2363 ;	 function WriteCurrentTime
                                   2364 ;	-----------------------------------------
      001E22                       2365 _WriteCurrentTime:
                                   2366 ;	../Common/CentralHeating.c:558: pGetRtc(&currentDateTime);
      001E22 12 1E 27         [24] 2367 	lcall	00103$
      001E25 80 11            [24] 2368 	sjmp	00104$
      001E27                       2369 00103$:
      001E27 90 00 05         [24] 2370 	mov	dptr,#_pGetRtc
      001E2A E0               [24] 2371 	movx	a,@dptr
      001E2B C0 E0            [24] 2372 	push	acc
      001E2D A3               [24] 2373 	inc	dptr
      001E2E E0               [24] 2374 	movx	a,@dptr
      001E2F C0 E0            [24] 2375 	push	acc
      001E31 90 01 C0         [24] 2376 	mov	dptr,#_currentDateTime
      001E34 75 F0 00         [24] 2377 	mov	b,#0x00
      001E37 22               [24] 2378 	ret
      001E38                       2379 00104$:
                                   2380 ;	../Common/CentralHeating.c:559: FormatTime(strBuffer, &currentDateTime, 0);
      001E38 90 02 98         [24] 2381 	mov	dptr,#_FormatTime_PARM_2
      001E3B 74 C0            [12] 2382 	mov	a,#_currentDateTime
      001E3D F0               [24] 2383 	movx	@dptr,a
      001E3E 74 01            [12] 2384 	mov	a,#(_currentDateTime >> 8)
      001E40 A3               [24] 2385 	inc	dptr
      001E41 F0               [24] 2386 	movx	@dptr,a
      001E42 E4               [12] 2387 	clr	a
      001E43 A3               [24] 2388 	inc	dptr
      001E44 F0               [24] 2389 	movx	@dptr,a
      001E45 90 02 9B         [24] 2390 	mov	dptr,#_FormatTime_PARM_3
      001E48 F0               [24] 2391 	movx	@dptr,a
      001E49 90 01 F5         [24] 2392 	mov	dptr,#_WriteCurrentTime_strBuffer_65536_100
      001E4C 75 F0 00         [24] 2393 	mov	b,#0x00
      001E4F 12 31 F1         [24] 2394 	lcall	_FormatTime
                                   2395 ;	../Common/CentralHeating.c:560: PartialWriteToScreen(11, 5, strBuffer);
      001E52 90 01 E3         [24] 2396 	mov	dptr,#_PartialWriteToScreen_PARM_2
      001E55 74 05            [12] 2397 	mov	a,#0x05
      001E57 F0               [24] 2398 	movx	@dptr,a
      001E58 E4               [12] 2399 	clr	a
      001E59 A3               [24] 2400 	inc	dptr
      001E5A F0               [24] 2401 	movx	@dptr,a
      001E5B 90 01 E5         [24] 2402 	mov	dptr,#_PartialWriteToScreen_PARM_3
      001E5E 74 F5            [12] 2403 	mov	a,#_WriteCurrentTime_strBuffer_65536_100
      001E60 F0               [24] 2404 	movx	@dptr,a
      001E61 74 01            [12] 2405 	mov	a,#(_WriteCurrentTime_strBuffer_65536_100 >> 8)
      001E63 A3               [24] 2406 	inc	dptr
      001E64 F0               [24] 2407 	movx	@dptr,a
      001E65 E4               [12] 2408 	clr	a
      001E66 A3               [24] 2409 	inc	dptr
      001E67 F0               [24] 2410 	movx	@dptr,a
      001E68 90 00 0B         [24] 2411 	mov	dptr,#0x000b
                                   2412 ;	../Common/CentralHeating.c:561: }
      001E6B 02 17 AB         [24] 2413 	ljmp	_PartialWriteToScreen
                                   2414 ;------------------------------------------------------------
                                   2415 ;Allocation info for local variables in function 'PreviewTimeAdjustment'
                                   2416 ;------------------------------------------------------------
                                   2417 ;strBuffer                 Allocated with name '_PreviewTimeAdjustment_strBuffer_65536_101'
                                   2418 ;dt                        Allocated with name '_PreviewTimeAdjustment_dt_65536_101'
                                   2419 ;------------------------------------------------------------
                                   2420 ;	../Common/CentralHeating.c:564: void PreviewTimeAdjustment()
                                   2421 ;	-----------------------------------------
                                   2422 ;	 function PreviewTimeAdjustment
                                   2423 ;	-----------------------------------------
      001E6E                       2424 _PreviewTimeAdjustment:
                                   2425 ;	../Common/CentralHeating.c:568: pGetRtc(&dt);
      001E6E 12 1E 73         [24] 2426 	lcall	00103$
      001E71 80 11            [24] 2427 	sjmp	00104$
      001E73                       2428 00103$:
      001E73 90 00 05         [24] 2429 	mov	dptr,#_pGetRtc
      001E76 E0               [24] 2430 	movx	a,@dptr
      001E77 C0 E0            [24] 2431 	push	acc
      001E79 A3               [24] 2432 	inc	dptr
      001E7A E0               [24] 2433 	movx	a,@dptr
      001E7B C0 E0            [24] 2434 	push	acc
      001E7D 90 02 09         [24] 2435 	mov	dptr,#_PreviewTimeAdjustment_dt_65536_101
      001E80 75 F0 00         [24] 2436 	mov	b,#0x00
      001E83 22               [24] 2437 	ret
      001E84                       2438 00104$:
                                   2439 ;	../Common/CentralHeating.c:569: FormatTime(strBuffer, &dt, 1);
      001E84 90 02 98         [24] 2440 	mov	dptr,#_FormatTime_PARM_2
      001E87 74 09            [12] 2441 	mov	a,#_PreviewTimeAdjustment_dt_65536_101
      001E89 F0               [24] 2442 	movx	@dptr,a
      001E8A 74 02            [12] 2443 	mov	a,#(_PreviewTimeAdjustment_dt_65536_101 >> 8)
      001E8C A3               [24] 2444 	inc	dptr
      001E8D F0               [24] 2445 	movx	@dptr,a
      001E8E E4               [12] 2446 	clr	a
      001E8F A3               [24] 2447 	inc	dptr
      001E90 F0               [24] 2448 	movx	@dptr,a
      001E91 90 02 9B         [24] 2449 	mov	dptr,#_FormatTime_PARM_3
      001E94 04               [12] 2450 	inc	a
      001E95 F0               [24] 2451 	movx	@dptr,a
      001E96 90 01 FF         [24] 2452 	mov	dptr,#_PreviewTimeAdjustment_strBuffer_65536_101
      001E99 75 F0 00         [24] 2453 	mov	b,#0x00
      001E9C 12 31 F1         [24] 2454 	lcall	_FormatTime
                                   2455 ;	../Common/CentralHeating.c:570: PartialWriteToScreen(0, 16, strBuffer);
      001E9F 90 01 E3         [24] 2456 	mov	dptr,#_PartialWriteToScreen_PARM_2
      001EA2 74 10            [12] 2457 	mov	a,#0x10
      001EA4 F0               [24] 2458 	movx	@dptr,a
      001EA5 E4               [12] 2459 	clr	a
      001EA6 A3               [24] 2460 	inc	dptr
      001EA7 F0               [24] 2461 	movx	@dptr,a
      001EA8 90 01 E5         [24] 2462 	mov	dptr,#_PartialWriteToScreen_PARM_3
      001EAB 74 FF            [12] 2463 	mov	a,#_PreviewTimeAdjustment_strBuffer_65536_101
      001EAD F0               [24] 2464 	movx	@dptr,a
      001EAE 74 01            [12] 2465 	mov	a,#(_PreviewTimeAdjustment_strBuffer_65536_101 >> 8)
      001EB0 A3               [24] 2466 	inc	dptr
      001EB1 F0               [24] 2467 	movx	@dptr,a
      001EB2 E4               [12] 2468 	clr	a
      001EB3 A3               [24] 2469 	inc	dptr
      001EB4 F0               [24] 2470 	movx	@dptr,a
      001EB5 90 00 00         [24] 2471 	mov	dptr,#0x0000
                                   2472 ;	../Common/CentralHeating.c:571: }
      001EB8 02 17 AB         [24] 2473 	ljmp	_PartialWriteToScreen
                                   2474 ;------------------------------------------------------------
                                   2475 ;Allocation info for local variables in function 'PreviewDateAdjustment'
                                   2476 ;------------------------------------------------------------
                                   2477 ;strBuffer                 Allocated with name '_PreviewDateAdjustment_strBuffer_65536_102'
                                   2478 ;dt                        Allocated with name '_PreviewDateAdjustment_dt_65536_102'
                                   2479 ;------------------------------------------------------------
                                   2480 ;	../Common/CentralHeating.c:574: void PreviewDateAdjustment()
                                   2481 ;	-----------------------------------------
                                   2482 ;	 function PreviewDateAdjustment
                                   2483 ;	-----------------------------------------
      001EBB                       2484 _PreviewDateAdjustment:
                                   2485 ;	../Common/CentralHeating.c:578: pGetRtc(&dt);
      001EBB 12 1E C0         [24] 2486 	lcall	00103$
      001EBE 80 11            [24] 2487 	sjmp	00104$
      001EC0                       2488 00103$:
      001EC0 90 00 05         [24] 2489 	mov	dptr,#_pGetRtc
      001EC3 E0               [24] 2490 	movx	a,@dptr
      001EC4 C0 E0            [24] 2491 	push	acc
      001EC6 A3               [24] 2492 	inc	dptr
      001EC7 E0               [24] 2493 	movx	a,@dptr
      001EC8 C0 E0            [24] 2494 	push	acc
      001ECA 90 02 1A         [24] 2495 	mov	dptr,#_PreviewDateAdjustment_dt_65536_102
      001ECD 75 F0 00         [24] 2496 	mov	b,#0x00
      001ED0 22               [24] 2497 	ret
      001ED1                       2498 00104$:
                                   2499 ;	../Common/CentralHeating.c:579: FormatDate(strBuffer, &dt);
      001ED1 90 02 9F         [24] 2500 	mov	dptr,#_FormatDate_PARM_2
      001ED4 74 1A            [12] 2501 	mov	a,#_PreviewDateAdjustment_dt_65536_102
      001ED6 F0               [24] 2502 	movx	@dptr,a
      001ED7 74 02            [12] 2503 	mov	a,#(_PreviewDateAdjustment_dt_65536_102 >> 8)
      001ED9 A3               [24] 2504 	inc	dptr
      001EDA F0               [24] 2505 	movx	@dptr,a
      001EDB E4               [12] 2506 	clr	a
      001EDC A3               [24] 2507 	inc	dptr
      001EDD F0               [24] 2508 	movx	@dptr,a
      001EDE 90 02 10         [24] 2509 	mov	dptr,#_PreviewDateAdjustment_strBuffer_65536_102
      001EE1 75 F0 00         [24] 2510 	mov	b,#0x00
      001EE4 12 34 40         [24] 2511 	lcall	_FormatDate
                                   2512 ;	../Common/CentralHeating.c:580: PartialWriteToScreen(0, 16, strBuffer);
      001EE7 90 01 E3         [24] 2513 	mov	dptr,#_PartialWriteToScreen_PARM_2
      001EEA 74 10            [12] 2514 	mov	a,#0x10
      001EEC F0               [24] 2515 	movx	@dptr,a
      001EED E4               [12] 2516 	clr	a
      001EEE A3               [24] 2517 	inc	dptr
      001EEF F0               [24] 2518 	movx	@dptr,a
      001EF0 90 01 E5         [24] 2519 	mov	dptr,#_PartialWriteToScreen_PARM_3
      001EF3 74 10            [12] 2520 	mov	a,#_PreviewDateAdjustment_strBuffer_65536_102
      001EF5 F0               [24] 2521 	movx	@dptr,a
      001EF6 74 02            [12] 2522 	mov	a,#(_PreviewDateAdjustment_strBuffer_65536_102 >> 8)
      001EF8 A3               [24] 2523 	inc	dptr
      001EF9 F0               [24] 2524 	movx	@dptr,a
      001EFA E4               [12] 2525 	clr	a
      001EFB A3               [24] 2526 	inc	dptr
      001EFC F0               [24] 2527 	movx	@dptr,a
      001EFD 90 00 00         [24] 2528 	mov	dptr,#0x0000
                                   2529 ;	../Common/CentralHeating.c:581: }
      001F00 02 17 AB         [24] 2530 	ljmp	_PartialWriteToScreen
                                   2531 ;------------------------------------------------------------
                                   2532 ;Allocation info for local variables in function 'TestAndDisplay'
                                   2533 ;------------------------------------------------------------
                                   2534 ;output                    Allocated with name '_TestAndDisplay_PARM_2'
                                   2535 ;description               Allocated with name '_TestAndDisplay_description_65536_103'
                                   2536 ;------------------------------------------------------------
                                   2537 ;	../Common/CentralHeating.c:584: void TestAndDisplay(char *description, unsigned char output)
                                   2538 ;	-----------------------------------------
                                   2539 ;	 function TestAndDisplay
                                   2540 ;	-----------------------------------------
      001F03                       2541 _TestAndDisplay:
      001F03 AF F0            [24] 2542 	mov	r7,b
      001F05 AE 83            [24] 2543 	mov	r6,dph
      001F07 E5 82            [12] 2544 	mov	a,dpl
      001F09 90 02 22         [24] 2545 	mov	dptr,#_TestAndDisplay_description_65536_103
      001F0C F0               [24] 2546 	movx	@dptr,a
      001F0D EE               [12] 2547 	mov	a,r6
      001F0E A3               [24] 2548 	inc	dptr
      001F0F F0               [24] 2549 	movx	@dptr,a
      001F10 EF               [12] 2550 	mov	a,r7
      001F11 A3               [24] 2551 	inc	dptr
      001F12 F0               [24] 2552 	movx	@dptr,a
                                   2553 ;	../Common/CentralHeating.c:586: PartialWriteToScreen(0, 16, description);
      001F13 90 02 22         [24] 2554 	mov	dptr,#_TestAndDisplay_description_65536_103
      001F16 E0               [24] 2555 	movx	a,@dptr
      001F17 FD               [12] 2556 	mov	r5,a
      001F18 A3               [24] 2557 	inc	dptr
      001F19 E0               [24] 2558 	movx	a,@dptr
      001F1A FE               [12] 2559 	mov	r6,a
      001F1B A3               [24] 2560 	inc	dptr
      001F1C E0               [24] 2561 	movx	a,@dptr
      001F1D FF               [12] 2562 	mov	r7,a
      001F1E 90 01 E3         [24] 2563 	mov	dptr,#_PartialWriteToScreen_PARM_2
      001F21 74 10            [12] 2564 	mov	a,#0x10
      001F23 F0               [24] 2565 	movx	@dptr,a
      001F24 E4               [12] 2566 	clr	a
      001F25 A3               [24] 2567 	inc	dptr
      001F26 F0               [24] 2568 	movx	@dptr,a
      001F27 90 01 E5         [24] 2569 	mov	dptr,#_PartialWriteToScreen_PARM_3
      001F2A ED               [12] 2570 	mov	a,r5
      001F2B F0               [24] 2571 	movx	@dptr,a
      001F2C EE               [12] 2572 	mov	a,r6
      001F2D A3               [24] 2573 	inc	dptr
      001F2E F0               [24] 2574 	movx	@dptr,a
      001F2F EF               [12] 2575 	mov	a,r7
      001F30 A3               [24] 2576 	inc	dptr
      001F31 F0               [24] 2577 	movx	@dptr,a
      001F32 90 00 00         [24] 2578 	mov	dptr,#0x0000
      001F35 12 17 AB         [24] 2579 	lcall	_PartialWriteToScreen
                                   2580 ;	../Common/CentralHeating.c:587: pSetOutputPortValues(output);
      001F38 90 02 21         [24] 2581 	mov	dptr,#_TestAndDisplay_PARM_2
      001F3B E0               [24] 2582 	movx	a,@dptr
      001F3C FF               [12] 2583 	mov	r7,a
      001F3D 02 1F 40         [24] 2584 	ljmp	00103$
      001F40                       2585 00103$:
      001F40 90 00 0F         [24] 2586 	mov	dptr,#_pSetOutputPortValues
      001F43 E0               [24] 2587 	movx	a,@dptr
      001F44 C0 E0            [24] 2588 	push	acc
      001F46 A3               [24] 2589 	inc	dptr
      001F47 E0               [24] 2590 	movx	a,@dptr
      001F48 C0 E0            [24] 2591 	push	acc
      001F4A 8F 82            [24] 2592 	mov	dpl,r7
      001F4C 22               [24] 2593 	ret
                                   2594 ;	../Common/CentralHeating.c:588: }
      001F4D 22               [24] 2595 	ret
                                   2596 ;------------------------------------------------------------
                                   2597 ;Allocation info for local variables in function 'ProcessHeating'
                                   2598 ;------------------------------------------------------------
                                   2599 ;inputs                    Allocated with name '_ProcessHeating_inputs_65536_105'
                                   2600 ;zones                     Allocated with name '_ProcessHeating_zones_65536_105'
                                   2601 ;pump                      Allocated with name '_ProcessHeating_pump_65536_105'
                                   2602 ;boiler                    Allocated with name '_ProcessHeating_boiler_65536_105'
                                   2603 ;output                    Allocated with name '_ProcessHeating_output_65536_105'
                                   2604 ;------------------------------------------------------------
                                   2605 ;	../Common/CentralHeating.c:594: void ProcessHeating()
                                   2606 ;	-----------------------------------------
                                   2607 ;	 function ProcessHeating
                                   2608 ;	-----------------------------------------
      001F4E                       2609 _ProcessHeating:
                                   2610 ;	../Common/CentralHeating.c:604: inputs = 0;
      001F4E 90 02 25         [24] 2611 	mov	dptr,#_ProcessHeating_inputs_65536_105
      001F51 E4               [12] 2612 	clr	a
      001F52 F0               [24] 2613 	movx	@dptr,a
                                   2614 ;	../Common/CentralHeating.c:605: pGetInputPortValues(&inputs);
      001F53 12 1F 58         [24] 2615 	lcall	00169$
      001F56 80 11            [24] 2616 	sjmp	00170$
      001F58                       2617 00169$:
      001F58 90 00 0D         [24] 2618 	mov	dptr,#_pGetInputPortValues
      001F5B E0               [24] 2619 	movx	a,@dptr
      001F5C C0 E0            [24] 2620 	push	acc
      001F5E A3               [24] 2621 	inc	dptr
      001F5F E0               [24] 2622 	movx	a,@dptr
      001F60 C0 E0            [24] 2623 	push	acc
      001F62 90 02 25         [24] 2624 	mov	dptr,#_ProcessHeating_inputs_65536_105
      001F65 75 F0 00         [24] 2625 	mov	b,#0x00
      001F68 22               [24] 2626 	ret
      001F69                       2627 00170$:
                                   2628 ;	../Common/CentralHeating.c:607: lastInputState = inputs;
      001F69 90 02 25         [24] 2629 	mov	dptr,#_ProcessHeating_inputs_65536_105
      001F6C E0               [24] 2630 	movx	a,@dptr
      001F6D FF               [12] 2631 	mov	r7,a
      001F6E 90 01 BC         [24] 2632 	mov	dptr,#_lastInputState
      001F71 F0               [24] 2633 	movx	@dptr,a
                                   2634 ;	../Common/CentralHeating.c:609: zones[0] = inputs & INPUT_ZONE1;
      001F72 53 07 10         [24] 2635 	anl	ar7,#0x10
      001F75 90 02 26         [24] 2636 	mov	dptr,#_ProcessHeating_zones_65536_105
      001F78 EF               [12] 2637 	mov	a,r7
      001F79 F0               [24] 2638 	movx	@dptr,a
                                   2639 ;	../Common/CentralHeating.c:610: zones[1] = inputs & INPUT_ZONE2;
      001F7A 90 02 25         [24] 2640 	mov	dptr,#_ProcessHeating_inputs_65536_105
      001F7D E0               [24] 2641 	movx	a,@dptr
      001F7E 54 20            [12] 2642 	anl	a,#0x20
      001F80 90 02 27         [24] 2643 	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0001)
      001F83 F0               [24] 2644 	movx	@dptr,a
                                   2645 ;	../Common/CentralHeating.c:611: zones[2] = inputs & INPUT_ZONE3;
      001F84 90 02 25         [24] 2646 	mov	dptr,#_ProcessHeating_inputs_65536_105
      001F87 E0               [24] 2647 	movx	a,@dptr
      001F88 54 04            [12] 2648 	anl	a,#0x04
      001F8A 90 02 28         [24] 2649 	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0002)
      001F8D F0               [24] 2650 	movx	@dptr,a
                                   2651 ;	../Common/CentralHeating.c:612: zones[3] = inputs & INPUT_ZONE4;
      001F8E 90 02 25         [24] 2652 	mov	dptr,#_ProcessHeating_inputs_65536_105
      001F91 E0               [24] 2653 	movx	a,@dptr
      001F92 54 08            [12] 2654 	anl	a,#0x08
      001F94 90 02 29         [24] 2655 	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0003)
      001F97 F0               [24] 2656 	movx	@dptr,a
                                   2657 ;	../Common/CentralHeating.c:613: zones[4] = inputs & INPUT_ZONE5;
      001F98 90 02 25         [24] 2658 	mov	dptr,#_ProcessHeating_inputs_65536_105
      001F9B E0               [24] 2659 	movx	a,@dptr
      001F9C 54 40            [12] 2660 	anl	a,#0x40
      001F9E FE               [12] 2661 	mov	r6,a
      001F9F 90 02 2A         [24] 2662 	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0004)
      001FA2 F0               [24] 2663 	movx	@dptr,a
                                   2664 ;	../Common/CentralHeating.c:615: if (zones[0] || zones[1] || zones[2] || zones[3] || zones[4])
      001FA3 EF               [12] 2665 	mov	a,r7
      001FA4 70 18            [24] 2666 	jnz	00106$
      001FA6 90 02 27         [24] 2667 	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0001)
      001FA9 E0               [24] 2668 	movx	a,@dptr
      001FAA 70 12            [24] 2669 	jnz	00106$
      001FAC 90 02 28         [24] 2670 	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0002)
      001FAF E0               [24] 2671 	movx	a,@dptr
      001FB0 70 0C            [24] 2672 	jnz	00106$
      001FB2 90 02 29         [24] 2673 	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0003)
      001FB5 E0               [24] 2674 	movx	a,@dptr
      001FB6 70 06            [24] 2675 	jnz	00106$
      001FB8 90 02 2A         [24] 2676 	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0004)
      001FBB E0               [24] 2677 	movx	a,@dptr
      001FBC 60 0C            [24] 2678 	jz	00107$
      001FBE                       2679 00106$:
                                   2680 ;	../Common/CentralHeating.c:617: pump = 1;
      001FBE 90 02 2B         [24] 2681 	mov	dptr,#_ProcessHeating_pump_65536_105
      001FC1 74 01            [12] 2682 	mov	a,#0x01
      001FC3 F0               [24] 2683 	movx	@dptr,a
                                   2684 ;	../Common/CentralHeating.c:618: boiler = 1;
      001FC4 90 02 2C         [24] 2685 	mov	dptr,#_ProcessHeating_boiler_65536_105
      001FC7 F0               [24] 2686 	movx	@dptr,a
      001FC8 80 45            [24] 2687 	sjmp	00108$
      001FCA                       2688 00107$:
                                   2689 ;	../Common/CentralHeating.c:622: pump = 0;
      001FCA 90 02 2B         [24] 2690 	mov	dptr,#_ProcessHeating_pump_65536_105
      001FCD E4               [12] 2691 	clr	a
      001FCE F0               [24] 2692 	movx	@dptr,a
                                   2693 ;	../Common/CentralHeating.c:623: boiler = 0;
      001FCF 90 02 2C         [24] 2694 	mov	dptr,#_ProcessHeating_boiler_65536_105
      001FD2 F0               [24] 2695 	movx	@dptr,a
                                   2696 ;	../Common/CentralHeating.c:626: if (CompareDateTime(&currentDateTime, &provideHotwaterUntil) < 0 ||
      001FD3 90 02 AF         [24] 2697 	mov	dptr,#_CompareDateTime_PARM_2
      001FD6 74 C7            [12] 2698 	mov	a,#_provideHotwaterUntil
      001FD8 F0               [24] 2699 	movx	@dptr,a
      001FD9 74 01            [12] 2700 	mov	a,#(_provideHotwaterUntil >> 8)
      001FDB A3               [24] 2701 	inc	dptr
      001FDC F0               [24] 2702 	movx	@dptr,a
      001FDD E4               [12] 2703 	clr	a
      001FDE A3               [24] 2704 	inc	dptr
      001FDF F0               [24] 2705 	movx	@dptr,a
      001FE0 90 01 C0         [24] 2706 	mov	dptr,#_currentDateTime
      001FE3 75 F0 00         [24] 2707 	mov	b,#0x00
      001FE6 12 39 CB         [24] 2708 	lcall	_CompareDateTime
      001FE9 AE 82            [24] 2709 	mov	r6,dpl
      001FEB E5 83            [12] 2710 	mov	a,dph
      001FED FF               [12] 2711 	mov	r7,a
      001FEE 20 E7 0D         [24] 2712 	jb	acc.7,00101$
                                   2713 ;	../Common/CentralHeating.c:627: currentDateTime.hours == 17 || currentDateTime.hours == 18 )
      001FF1 90 01 C2         [24] 2714 	mov	dptr,#(_currentDateTime + 0x0002)
      001FF4 E0               [24] 2715 	movx	a,@dptr
      001FF5 FF               [12] 2716 	mov	r7,a
      001FF6 BF 11 02         [24] 2717 	cjne	r7,#0x11,00177$
      001FF9 80 03            [24] 2718 	sjmp	00101$
      001FFB                       2719 00177$:
      001FFB BF 12 0C         [24] 2720 	cjne	r7,#0x12,00102$
      001FFE                       2721 00101$:
                                   2722 ;	../Common/CentralHeating.c:629: hotWaterNeeded = 1;
      001FFE 90 01 BF         [24] 2723 	mov	dptr,#_hotWaterNeeded
      002001 74 01            [12] 2724 	mov	a,#0x01
      002003 F0               [24] 2725 	movx	@dptr,a
                                   2726 ;	../Common/CentralHeating.c:630: boiler = 1;
      002004 90 02 2C         [24] 2727 	mov	dptr,#_ProcessHeating_boiler_65536_105
      002007 F0               [24] 2728 	movx	@dptr,a
      002008 80 05            [24] 2729 	sjmp	00108$
      00200A                       2730 00102$:
                                   2731 ;	../Common/CentralHeating.c:634: hotWaterNeeded = 0;
      00200A 90 01 BF         [24] 2732 	mov	dptr,#_hotWaterNeeded
      00200D E4               [12] 2733 	clr	a
      00200E F0               [24] 2734 	movx	@dptr,a
      00200F                       2735 00108$:
                                   2736 ;	../Common/CentralHeating.c:639: output = 0;
      00200F 90 02 2D         [24] 2737 	mov	dptr,#_ProcessHeating_output_65536_105
      002012 E4               [12] 2738 	clr	a
      002013 F0               [24] 2739 	movx	@dptr,a
                                   2740 ;	../Common/CentralHeating.c:640: if (boiler)
      002014 90 02 2C         [24] 2741 	mov	dptr,#_ProcessHeating_boiler_65536_105
      002017 E0               [24] 2742 	movx	a,@dptr
      002018 60 06            [24] 2743 	jz	00114$
                                   2744 ;	../Common/CentralHeating.c:642: output |= OUTPUT_BOILER;
      00201A 90 02 2D         [24] 2745 	mov	dptr,#_ProcessHeating_output_65536_105
      00201D 74 20            [12] 2746 	mov	a,#0x20
      00201F F0               [24] 2747 	movx	@dptr,a
      002020                       2748 00114$:
                                   2749 ;	../Common/CentralHeating.c:644: if (pump)
      002020 90 02 2B         [24] 2750 	mov	dptr,#_ProcessHeating_pump_65536_105
      002023 E0               [24] 2751 	movx	a,@dptr
      002024 60 08            [24] 2752 	jz	00116$
                                   2753 ;	../Common/CentralHeating.c:646: output |= OUTPUT_PUMP;
      002026 90 02 2D         [24] 2754 	mov	dptr,#_ProcessHeating_output_65536_105
      002029 E0               [24] 2755 	movx	a,@dptr
      00202A 43 E0 10         [24] 2756 	orl	acc,#0x10
      00202D F0               [24] 2757 	movx	@dptr,a
      00202E                       2758 00116$:
                                   2759 ;	../Common/CentralHeating.c:649: if (zones[0])
      00202E 90 02 26         [24] 2760 	mov	dptr,#_ProcessHeating_zones_65536_105
      002031 E0               [24] 2761 	movx	a,@dptr
      002032 60 10            [24] 2762 	jz	00118$
                                   2763 ;	../Common/CentralHeating.c:651: output |= OUTPUT_ACTUATOR1;
      002034 90 02 2D         [24] 2764 	mov	dptr,#_ProcessHeating_output_65536_105
      002037 E0               [24] 2765 	movx	a,@dptr
      002038 43 E0 01         [24] 2766 	orl	acc,#0x01
      00203B F0               [24] 2767 	movx	@dptr,a
                                   2768 ;	../Common/CentralHeating.c:652: output |= OUTPUT_ACTUATOR2;
      00203C 90 02 2D         [24] 2769 	mov	dptr,#_ProcessHeating_output_65536_105
      00203F E0               [24] 2770 	movx	a,@dptr
      002040 43 E0 02         [24] 2771 	orl	acc,#0x02
      002043 F0               [24] 2772 	movx	@dptr,a
      002044                       2773 00118$:
                                   2774 ;	../Common/CentralHeating.c:654: if (zones[1])
      002044 90 02 27         [24] 2775 	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0001)
      002047 E0               [24] 2776 	movx	a,@dptr
      002048 60 08            [24] 2777 	jz	00120$
                                   2778 ;	../Common/CentralHeating.c:656: output |= OUTPUT_ACTUATOR3;
      00204A 90 02 2D         [24] 2779 	mov	dptr,#_ProcessHeating_output_65536_105
      00204D E0               [24] 2780 	movx	a,@dptr
      00204E 43 E0 04         [24] 2781 	orl	acc,#0x04
      002051 F0               [24] 2782 	movx	@dptr,a
      002052                       2783 00120$:
                                   2784 ;	../Common/CentralHeating.c:658: if (zones[2])
      002052 90 02 28         [24] 2785 	mov	dptr,#(_ProcessHeating_zones_65536_105 + 0x0002)
      002055 E0               [24] 2786 	movx	a,@dptr
      002056 60 08            [24] 2787 	jz	00122$
                                   2788 ;	../Common/CentralHeating.c:660: output |= OUTPUT_ACTUATOR4;
      002058 90 02 2D         [24] 2789 	mov	dptr,#_ProcessHeating_output_65536_105
      00205B E0               [24] 2790 	movx	a,@dptr
      00205C 43 E0 08         [24] 2791 	orl	acc,#0x08
      00205F F0               [24] 2792 	movx	@dptr,a
      002060                       2793 00122$:
                                   2794 ;	../Common/CentralHeating.c:663: pSetOutputPortValues(output);
      002060 90 02 2D         [24] 2795 	mov	dptr,#_ProcessHeating_output_65536_105
      002063 E0               [24] 2796 	movx	a,@dptr
      002064 FF               [12] 2797 	mov	r7,a
      002065 C0 07            [24] 2798 	push	ar7
      002067 12 20 6C         [24] 2799 	lcall	00185$
      00206A 80 0D            [24] 2800 	sjmp	00186$
      00206C                       2801 00185$:
      00206C 90 00 0F         [24] 2802 	mov	dptr,#_pSetOutputPortValues
      00206F E0               [24] 2803 	movx	a,@dptr
      002070 C0 E0            [24] 2804 	push	acc
      002072 A3               [24] 2805 	inc	dptr
      002073 E0               [24] 2806 	movx	a,@dptr
      002074 C0 E0            [24] 2807 	push	acc
      002076 8F 82            [24] 2808 	mov	dpl,r7
      002078 22               [24] 2809 	ret
      002079                       2810 00186$:
      002079 D0 07            [24] 2811 	pop	ar7
                                   2812 ;	../Common/CentralHeating.c:664: lastOutputState = output;
      00207B 90 01 BD         [24] 2813 	mov	dptr,#_lastOutputState
      00207E EF               [12] 2814 	mov	a,r7
      00207F F0               [24] 2815 	movx	@dptr,a
                                   2816 ;	../Common/CentralHeating.c:665: }
      002080 22               [24] 2817 	ret
                                   2818 ;------------------------------------------------------------
                                   2819 ;Allocation info for local variables in function 'AnimateScreen'
                                   2820 ;------------------------------------------------------------
                                   2821 ;strBuffer                 Allocated with name '_AnimateScreen_strBuffer_65536_115'
                                   2822 ;numericValue              Allocated with name '_AnimateScreen_numericValue_65536_115'
                                   2823 ;zones                     Allocated with name '_AnimateScreen_zones_65536_115'
                                   2824 ;outputs                   Allocated with name '_AnimateScreen_outputs_65536_115'
                                   2825 ;index                     Allocated with name '_AnimateScreen_index_65536_115'
                                   2826 ;------------------------------------------------------------
                                   2827 ;	../Common/CentralHeating.c:668: void AnimateScreen()
                                   2828 ;	-----------------------------------------
                                   2829 ;	 function AnimateScreen
                                   2830 ;	-----------------------------------------
      002081                       2831 _AnimateScreen:
                                   2832 ;	../Common/CentralHeating.c:676: if (animationType == ANIMATE_INPUTS)
      002081 90 01 BE         [24] 2833 	mov	dptr,#_animationType
      002084 E0               [24] 2834 	movx	a,@dptr
      002085 FF               [12] 2835 	mov	r7,a
      002086 60 03            [24] 2836 	jz	00195$
      002088 02 21 33         [24] 2837 	ljmp	00127$
      00208B                       2838 00195$:
                                   2839 ;	../Common/CentralHeating.c:678: zones[0] = lastInputState & INPUT_ZONE1;
      00208B 90 01 BC         [24] 2840 	mov	dptr,#_lastInputState
      00208E E0               [24] 2841 	movx	a,@dptr
      00208F 54 10            [12] 2842 	anl	a,#0x10
      002091 90 02 3B         [24] 2843 	mov	dptr,#_AnimateScreen_zones_65536_115
      002094 F0               [24] 2844 	movx	@dptr,a
                                   2845 ;	../Common/CentralHeating.c:679: zones[1] = lastInputState & INPUT_ZONE2;
      002095 90 01 BC         [24] 2846 	mov	dptr,#_lastInputState
      002098 E0               [24] 2847 	movx	a,@dptr
      002099 54 20            [12] 2848 	anl	a,#0x20
      00209B 90 02 3C         [24] 2849 	mov	dptr,#(_AnimateScreen_zones_65536_115 + 0x0001)
      00209E F0               [24] 2850 	movx	@dptr,a
                                   2851 ;	../Common/CentralHeating.c:680: zones[2] = lastInputState & INPUT_ZONE3;
      00209F 90 01 BC         [24] 2852 	mov	dptr,#_lastInputState
      0020A2 E0               [24] 2853 	movx	a,@dptr
      0020A3 54 04            [12] 2854 	anl	a,#0x04
      0020A5 90 02 3D         [24] 2855 	mov	dptr,#(_AnimateScreen_zones_65536_115 + 0x0002)
      0020A8 F0               [24] 2856 	movx	@dptr,a
                                   2857 ;	../Common/CentralHeating.c:681: zones[3] = lastInputState & INPUT_ZONE4;
      0020A9 90 01 BC         [24] 2858 	mov	dptr,#_lastInputState
      0020AC E0               [24] 2859 	movx	a,@dptr
      0020AD 54 08            [12] 2860 	anl	a,#0x08
      0020AF 90 02 3E         [24] 2861 	mov	dptr,#(_AnimateScreen_zones_65536_115 + 0x0003)
      0020B2 F0               [24] 2862 	movx	@dptr,a
                                   2863 ;	../Common/CentralHeating.c:682: zones[4] = lastInputState & INPUT_ZONE5;
      0020B3 90 01 BC         [24] 2864 	mov	dptr,#_lastInputState
      0020B6 E0               [24] 2865 	movx	a,@dptr
      0020B7 54 40            [12] 2866 	anl	a,#0x40
      0020B9 90 02 3F         [24] 2867 	mov	dptr,#(_AnimateScreen_zones_65536_115 + 0x0004)
      0020BC F0               [24] 2868 	movx	@dptr,a
                                   2869 ;	../Common/CentralHeating.c:685: strcpy(strBuffer, "Zone ");
      0020BD 90 02 8F         [24] 2870 	mov	dptr,#_strcpy_PARM_2
      0020C0 74 70            [12] 2871 	mov	a,#___str_9
      0020C2 F0               [24] 2872 	movx	@dptr,a
      0020C3 74 3E            [12] 2873 	mov	a,#(___str_9 >> 8)
      0020C5 A3               [24] 2874 	inc	dptr
      0020C6 F0               [24] 2875 	movx	@dptr,a
      0020C7 74 80            [12] 2876 	mov	a,#0x80
      0020C9 A3               [24] 2877 	inc	dptr
      0020CA F0               [24] 2878 	movx	@dptr,a
      0020CB 90 02 2E         [24] 2879 	mov	dptr,#_AnimateScreen_strBuffer_65536_115
      0020CE 75 F0 00         [24] 2880 	mov	b,#0x00
      0020D1 12 30 73         [24] 2881 	lcall	_strcpy
                                   2882 ;	../Common/CentralHeating.c:686: for (index = 0; index < 5; ++index)
      0020D4 7E 00            [12] 2883 	mov	r6,#0x00
      0020D6                       2884 00131$:
                                   2885 ;	../Common/CentralHeating.c:688: if (zones[index])
      0020D6 EE               [12] 2886 	mov	a,r6
      0020D7 24 3B            [12] 2887 	add	a,#_AnimateScreen_zones_65536_115
      0020D9 FC               [12] 2888 	mov	r4,a
      0020DA E4               [12] 2889 	clr	a
      0020DB 34 02            [12] 2890 	addc	a,#(_AnimateScreen_zones_65536_115 >> 8)
      0020DD FD               [12] 2891 	mov	r5,a
      0020DE 8C 82            [24] 2892 	mov	dpl,r4
      0020E0 8D 83            [24] 2893 	mov	dph,r5
      0020E2 E0               [24] 2894 	movx	a,@dptr
      0020E3 60 2A            [24] 2895 	jz	00102$
                                   2896 ;	../Common/CentralHeating.c:690: numericValue[0] = '1' + index;
      0020E5 8E 05            [24] 2897 	mov	ar5,r6
      0020E7 74 31            [12] 2898 	mov	a,#0x31
      0020E9 2D               [12] 2899 	add	a,r5
      0020EA 90 02 39         [24] 2900 	mov	dptr,#_AnimateScreen_numericValue_65536_115
      0020ED F0               [24] 2901 	movx	@dptr,a
                                   2902 ;	../Common/CentralHeating.c:691: numericValue[1] = 0;
      0020EE 90 02 3A         [24] 2903 	mov	dptr,#(_AnimateScreen_numericValue_65536_115 + 0x0001)
      0020F1 E4               [12] 2904 	clr	a
      0020F2 F0               [24] 2905 	movx	@dptr,a
                                   2906 ;	../Common/CentralHeating.c:692: strcat(strBuffer, numericValue);
      0020F3 90 02 89         [24] 2907 	mov	dptr,#_strcat_PARM_2
      0020F6 74 39            [12] 2908 	mov	a,#_AnimateScreen_numericValue_65536_115
      0020F8 F0               [24] 2909 	movx	@dptr,a
      0020F9 74 02            [12] 2910 	mov	a,#(_AnimateScreen_numericValue_65536_115 >> 8)
      0020FB A3               [24] 2911 	inc	dptr
      0020FC F0               [24] 2912 	movx	@dptr,a
      0020FD E4               [12] 2913 	clr	a
      0020FE A3               [24] 2914 	inc	dptr
      0020FF F0               [24] 2915 	movx	@dptr,a
      002100 90 02 2E         [24] 2916 	mov	dptr,#_AnimateScreen_strBuffer_65536_115
      002103 75 F0 00         [24] 2917 	mov	b,#0x00
      002106 C0 06            [24] 2918 	push	ar6
      002108 12 2F E3         [24] 2919 	lcall	_strcat
      00210B D0 06            [24] 2920 	pop	ar6
      00210D 80 1B            [24] 2921 	sjmp	00132$
      00210F                       2922 00102$:
                                   2923 ;	../Common/CentralHeating.c:696: strcat(strBuffer, "_");
      00210F 90 02 89         [24] 2924 	mov	dptr,#_strcat_PARM_2
      002112 74 76            [12] 2925 	mov	a,#___str_10
      002114 F0               [24] 2926 	movx	@dptr,a
      002115 74 3E            [12] 2927 	mov	a,#(___str_10 >> 8)
      002117 A3               [24] 2928 	inc	dptr
      002118 F0               [24] 2929 	movx	@dptr,a
      002119 74 80            [12] 2930 	mov	a,#0x80
      00211B A3               [24] 2931 	inc	dptr
      00211C F0               [24] 2932 	movx	@dptr,a
      00211D 90 02 2E         [24] 2933 	mov	dptr,#_AnimateScreen_strBuffer_65536_115
      002120 75 F0 00         [24] 2934 	mov	b,#0x00
      002123 C0 06            [24] 2935 	push	ar6
      002125 12 2F E3         [24] 2936 	lcall	_strcat
      002128 D0 06            [24] 2937 	pop	ar6
      00212A                       2938 00132$:
                                   2939 ;	../Common/CentralHeating.c:686: for (index = 0; index < 5; ++index)
      00212A 0E               [12] 2940 	inc	r6
      00212B BE 05 00         [24] 2941 	cjne	r6,#0x05,00197$
      00212E                       2942 00197$:
      00212E 40 A6            [24] 2943 	jc	00131$
      002130 02 22 B4         [24] 2944 	ljmp	00128$
      002133                       2945 00127$:
                                   2946 ;	../Common/CentralHeating.c:700: else if (animationType == ANIMATE_OUTPUTS)
      002133 BF 01 02         [24] 2947 	cjne	r7,#0x01,00199$
      002136 80 03            [24] 2948 	sjmp	00200$
      002138                       2949 00199$:
      002138 02 22 48         [24] 2950 	ljmp	00124$
      00213B                       2951 00200$:
                                   2952 ;	../Common/CentralHeating.c:702: outputs[0] = lastOutputState & OUTPUT_ACTUATOR1;
      00213B 90 01 BD         [24] 2953 	mov	dptr,#_lastOutputState
      00213E E0               [24] 2954 	movx	a,@dptr
      00213F 54 01            [12] 2955 	anl	a,#0x01
      002141 90 02 40         [24] 2956 	mov	dptr,#_AnimateScreen_outputs_65536_115
      002144 F0               [24] 2957 	movx	@dptr,a
                                   2958 ;	../Common/CentralHeating.c:703: outputs[1] = lastOutputState & OUTPUT_ACTUATOR2;
      002145 90 01 BD         [24] 2959 	mov	dptr,#_lastOutputState
      002148 E0               [24] 2960 	movx	a,@dptr
      002149 54 02            [12] 2961 	anl	a,#0x02
      00214B 90 02 41         [24] 2962 	mov	dptr,#(_AnimateScreen_outputs_65536_115 + 0x0001)
      00214E F0               [24] 2963 	movx	@dptr,a
                                   2964 ;	../Common/CentralHeating.c:704: outputs[2] = lastOutputState & OUTPUT_ACTUATOR3;
      00214F 90 01 BD         [24] 2965 	mov	dptr,#_lastOutputState
      002152 E0               [24] 2966 	movx	a,@dptr
      002153 54 04            [12] 2967 	anl	a,#0x04
      002155 90 02 42         [24] 2968 	mov	dptr,#(_AnimateScreen_outputs_65536_115 + 0x0002)
      002158 F0               [24] 2969 	movx	@dptr,a
                                   2970 ;	../Common/CentralHeating.c:705: outputs[3] = lastOutputState & OUTPUT_ACTUATOR4;
      002159 90 01 BD         [24] 2971 	mov	dptr,#_lastOutputState
      00215C E0               [24] 2972 	movx	a,@dptr
      00215D 54 08            [12] 2973 	anl	a,#0x08
      00215F 90 02 43         [24] 2974 	mov	dptr,#(_AnimateScreen_outputs_65536_115 + 0x0003)
      002162 F0               [24] 2975 	movx	@dptr,a
                                   2976 ;	../Common/CentralHeating.c:707: strcpy(strBuffer, "Out ");
      002163 90 02 8F         [24] 2977 	mov	dptr,#_strcpy_PARM_2
      002166 74 78            [12] 2978 	mov	a,#___str_11
      002168 F0               [24] 2979 	movx	@dptr,a
      002169 74 3E            [12] 2980 	mov	a,#(___str_11 >> 8)
      00216B A3               [24] 2981 	inc	dptr
      00216C F0               [24] 2982 	movx	@dptr,a
      00216D 74 80            [12] 2983 	mov	a,#0x80
      00216F A3               [24] 2984 	inc	dptr
      002170 F0               [24] 2985 	movx	@dptr,a
      002171 90 02 2E         [24] 2986 	mov	dptr,#_AnimateScreen_strBuffer_65536_115
      002174 75 F0 00         [24] 2987 	mov	b,#0x00
      002177 12 30 73         [24] 2988 	lcall	_strcpy
                                   2989 ;	../Common/CentralHeating.c:708: for (index = 0; index < 4; ++index)
      00217A 7E 00            [12] 2990 	mov	r6,#0x00
      00217C                       2991 00133$:
                                   2992 ;	../Common/CentralHeating.c:710: if (outputs[index])
      00217C EE               [12] 2993 	mov	a,r6
      00217D 24 40            [12] 2994 	add	a,#_AnimateScreen_outputs_65536_115
      00217F FC               [12] 2995 	mov	r4,a
      002180 E4               [12] 2996 	clr	a
      002181 34 02            [12] 2997 	addc	a,#(_AnimateScreen_outputs_65536_115 >> 8)
      002183 FD               [12] 2998 	mov	r5,a
      002184 8C 82            [24] 2999 	mov	dpl,r4
      002186 8D 83            [24] 3000 	mov	dph,r5
      002188 E0               [24] 3001 	movx	a,@dptr
      002189 60 2A            [24] 3002 	jz	00106$
                                   3003 ;	../Common/CentralHeating.c:712: numericValue[0] = '1' + index;
      00218B 8E 05            [24] 3004 	mov	ar5,r6
      00218D 74 31            [12] 3005 	mov	a,#0x31
      00218F 2D               [12] 3006 	add	a,r5
      002190 90 02 39         [24] 3007 	mov	dptr,#_AnimateScreen_numericValue_65536_115
      002193 F0               [24] 3008 	movx	@dptr,a
                                   3009 ;	../Common/CentralHeating.c:713: numericValue[1] = 0;
      002194 90 02 3A         [24] 3010 	mov	dptr,#(_AnimateScreen_numericValue_65536_115 + 0x0001)
      002197 E4               [12] 3011 	clr	a
      002198 F0               [24] 3012 	movx	@dptr,a
                                   3013 ;	../Common/CentralHeating.c:714: strcat(strBuffer, numericValue);
      002199 90 02 89         [24] 3014 	mov	dptr,#_strcat_PARM_2
      00219C 74 39            [12] 3015 	mov	a,#_AnimateScreen_numericValue_65536_115
      00219E F0               [24] 3016 	movx	@dptr,a
      00219F 74 02            [12] 3017 	mov	a,#(_AnimateScreen_numericValue_65536_115 >> 8)
      0021A1 A3               [24] 3018 	inc	dptr
      0021A2 F0               [24] 3019 	movx	@dptr,a
      0021A3 E4               [12] 3020 	clr	a
      0021A4 A3               [24] 3021 	inc	dptr
      0021A5 F0               [24] 3022 	movx	@dptr,a
      0021A6 90 02 2E         [24] 3023 	mov	dptr,#_AnimateScreen_strBuffer_65536_115
      0021A9 75 F0 00         [24] 3024 	mov	b,#0x00
      0021AC C0 06            [24] 3025 	push	ar6
      0021AE 12 2F E3         [24] 3026 	lcall	_strcat
      0021B1 D0 06            [24] 3027 	pop	ar6
      0021B3 80 1B            [24] 3028 	sjmp	00134$
      0021B5                       3029 00106$:
                                   3030 ;	../Common/CentralHeating.c:718: strcat(strBuffer, "_");
      0021B5 90 02 89         [24] 3031 	mov	dptr,#_strcat_PARM_2
      0021B8 74 76            [12] 3032 	mov	a,#___str_10
      0021BA F0               [24] 3033 	movx	@dptr,a
      0021BB 74 3E            [12] 3034 	mov	a,#(___str_10 >> 8)
      0021BD A3               [24] 3035 	inc	dptr
      0021BE F0               [24] 3036 	movx	@dptr,a
      0021BF 74 80            [12] 3037 	mov	a,#0x80
      0021C1 A3               [24] 3038 	inc	dptr
      0021C2 F0               [24] 3039 	movx	@dptr,a
      0021C3 90 02 2E         [24] 3040 	mov	dptr,#_AnimateScreen_strBuffer_65536_115
      0021C6 75 F0 00         [24] 3041 	mov	b,#0x00
      0021C9 C0 06            [24] 3042 	push	ar6
      0021CB 12 2F E3         [24] 3043 	lcall	_strcat
      0021CE D0 06            [24] 3044 	pop	ar6
      0021D0                       3045 00134$:
                                   3046 ;	../Common/CentralHeating.c:708: for (index = 0; index < 4; ++index)
      0021D0 0E               [12] 3047 	inc	r6
      0021D1 BE 04 00         [24] 3048 	cjne	r6,#0x04,00202$
      0021D4                       3049 00202$:
      0021D4 40 A6            [24] 3050 	jc	00133$
                                   3051 ;	../Common/CentralHeating.c:722: if (lastOutputState & OUTPUT_PUMP)
      0021D6 90 01 BD         [24] 3052 	mov	dptr,#_lastOutputState
      0021D9 E0               [24] 3053 	movx	a,@dptr
      0021DA 30 E4 19         [24] 3054 	jnb	acc.4,00110$
                                   3055 ;	../Common/CentralHeating.c:724: strcat(strBuffer, "P");
      0021DD 90 02 89         [24] 3056 	mov	dptr,#_strcat_PARM_2
      0021E0 74 7D            [12] 3057 	mov	a,#___str_12
      0021E2 F0               [24] 3058 	movx	@dptr,a
      0021E3 74 3E            [12] 3059 	mov	a,#(___str_12 >> 8)
      0021E5 A3               [24] 3060 	inc	dptr
      0021E6 F0               [24] 3061 	movx	@dptr,a
      0021E7 74 80            [12] 3062 	mov	a,#0x80
      0021E9 A3               [24] 3063 	inc	dptr
      0021EA F0               [24] 3064 	movx	@dptr,a
      0021EB 90 02 2E         [24] 3065 	mov	dptr,#_AnimateScreen_strBuffer_65536_115
      0021EE 75 F0 00         [24] 3066 	mov	b,#0x00
      0021F1 12 2F E3         [24] 3067 	lcall	_strcat
      0021F4 80 17            [24] 3068 	sjmp	00111$
      0021F6                       3069 00110$:
                                   3070 ;	../Common/CentralHeating.c:728: strcat(strBuffer, "_");
      0021F6 90 02 89         [24] 3071 	mov	dptr,#_strcat_PARM_2
      0021F9 74 76            [12] 3072 	mov	a,#___str_10
      0021FB F0               [24] 3073 	movx	@dptr,a
      0021FC 74 3E            [12] 3074 	mov	a,#(___str_10 >> 8)
      0021FE A3               [24] 3075 	inc	dptr
      0021FF F0               [24] 3076 	movx	@dptr,a
      002200 74 80            [12] 3077 	mov	a,#0x80
      002202 A3               [24] 3078 	inc	dptr
      002203 F0               [24] 3079 	movx	@dptr,a
      002204 90 02 2E         [24] 3080 	mov	dptr,#_AnimateScreen_strBuffer_65536_115
      002207 75 F0 00         [24] 3081 	mov	b,#0x00
      00220A 12 2F E3         [24] 3082 	lcall	_strcat
      00220D                       3083 00111$:
                                   3084 ;	../Common/CentralHeating.c:731: if (lastOutputState & OUTPUT_BOILER)
      00220D 90 01 BD         [24] 3085 	mov	dptr,#_lastOutputState
      002210 E0               [24] 3086 	movx	a,@dptr
      002211 30 E5 1A         [24] 3087 	jnb	acc.5,00113$
                                   3088 ;	../Common/CentralHeating.c:733: strcat(strBuffer, "B");
      002214 90 02 89         [24] 3089 	mov	dptr,#_strcat_PARM_2
      002217 74 7F            [12] 3090 	mov	a,#___str_13
      002219 F0               [24] 3091 	movx	@dptr,a
      00221A 74 3E            [12] 3092 	mov	a,#(___str_13 >> 8)
      00221C A3               [24] 3093 	inc	dptr
      00221D F0               [24] 3094 	movx	@dptr,a
      00221E 74 80            [12] 3095 	mov	a,#0x80
      002220 A3               [24] 3096 	inc	dptr
      002221 F0               [24] 3097 	movx	@dptr,a
      002222 90 02 2E         [24] 3098 	mov	dptr,#_AnimateScreen_strBuffer_65536_115
      002225 75 F0 00         [24] 3099 	mov	b,#0x00
      002228 12 2F E3         [24] 3100 	lcall	_strcat
      00222B 02 22 B4         [24] 3101 	ljmp	00128$
      00222E                       3102 00113$:
                                   3103 ;	../Common/CentralHeating.c:737: strcat(strBuffer, "_");
      00222E 90 02 89         [24] 3104 	mov	dptr,#_strcat_PARM_2
      002231 74 76            [12] 3105 	mov	a,#___str_10
      002233 F0               [24] 3106 	movx	@dptr,a
      002234 74 3E            [12] 3107 	mov	a,#(___str_10 >> 8)
      002236 A3               [24] 3108 	inc	dptr
      002237 F0               [24] 3109 	movx	@dptr,a
      002238 74 80            [12] 3110 	mov	a,#0x80
      00223A A3               [24] 3111 	inc	dptr
      00223B F0               [24] 3112 	movx	@dptr,a
      00223C 90 02 2E         [24] 3113 	mov	dptr,#_AnimateScreen_strBuffer_65536_115
      00223F 75 F0 00         [24] 3114 	mov	b,#0x00
      002242 12 2F E3         [24] 3115 	lcall	_strcat
      002245 02 22 B4         [24] 3116 	ljmp	00128$
      002248                       3117 00124$:
                                   3118 ;	../Common/CentralHeating.c:740: else if (animationType == ANIMATE_HW)
      002248 BF 02 4F         [24] 3119 	cjne	r7,#0x02,00121$
                                   3120 ;	../Common/CentralHeating.c:742: strcpy(strBuffer, "HW ");
      00224B 90 02 8F         [24] 3121 	mov	dptr,#_strcpy_PARM_2
      00224E 74 81            [12] 3122 	mov	a,#___str_14
      002250 F0               [24] 3123 	movx	@dptr,a
      002251 74 3E            [12] 3124 	mov	a,#(___str_14 >> 8)
      002253 A3               [24] 3125 	inc	dptr
      002254 F0               [24] 3126 	movx	@dptr,a
      002255 74 80            [12] 3127 	mov	a,#0x80
      002257 A3               [24] 3128 	inc	dptr
      002258 F0               [24] 3129 	movx	@dptr,a
      002259 90 02 2E         [24] 3130 	mov	dptr,#_AnimateScreen_strBuffer_65536_115
      00225C 75 F0 00         [24] 3131 	mov	b,#0x00
      00225F 12 30 73         [24] 3132 	lcall	_strcpy
                                   3133 ;	../Common/CentralHeating.c:743: if (hotWaterNeeded)
      002262 90 01 BF         [24] 3134 	mov	dptr,#_hotWaterNeeded
      002265 E0               [24] 3135 	movx	a,@dptr
      002266 60 19            [24] 3136 	jz	00116$
                                   3137 ;	../Common/CentralHeating.c:745: strcat(strBuffer, "On");
      002268 90 02 89         [24] 3138 	mov	dptr,#_strcat_PARM_2
      00226B 74 85            [12] 3139 	mov	a,#___str_15
      00226D F0               [24] 3140 	movx	@dptr,a
      00226E 74 3E            [12] 3141 	mov	a,#(___str_15 >> 8)
      002270 A3               [24] 3142 	inc	dptr
      002271 F0               [24] 3143 	movx	@dptr,a
      002272 74 80            [12] 3144 	mov	a,#0x80
      002274 A3               [24] 3145 	inc	dptr
      002275 F0               [24] 3146 	movx	@dptr,a
      002276 90 02 2E         [24] 3147 	mov	dptr,#_AnimateScreen_strBuffer_65536_115
      002279 75 F0 00         [24] 3148 	mov	b,#0x00
      00227C 12 2F E3         [24] 3149 	lcall	_strcat
      00227F 80 33            [24] 3150 	sjmp	00128$
      002281                       3151 00116$:
                                   3152 ;	../Common/CentralHeating.c:749: strcat(strBuffer, "Off");
      002281 90 02 89         [24] 3153 	mov	dptr,#_strcat_PARM_2
      002284 74 3E            [12] 3154 	mov	a,#___str_1
      002286 F0               [24] 3155 	movx	@dptr,a
      002287 74 3E            [12] 3156 	mov	a,#(___str_1 >> 8)
      002289 A3               [24] 3157 	inc	dptr
      00228A F0               [24] 3158 	movx	@dptr,a
      00228B 74 80            [12] 3159 	mov	a,#0x80
      00228D A3               [24] 3160 	inc	dptr
      00228E F0               [24] 3161 	movx	@dptr,a
      00228F 90 02 2E         [24] 3162 	mov	dptr,#_AnimateScreen_strBuffer_65536_115
      002292 75 F0 00         [24] 3163 	mov	b,#0x00
      002295 12 2F E3         [24] 3164 	lcall	_strcat
      002298 80 1A            [24] 3165 	sjmp	00128$
      00229A                       3166 00121$:
                                   3167 ;	../Common/CentralHeating.c:752: else if (animationType == ANIMATE_VERSION)
      00229A BF 03 17         [24] 3168 	cjne	r7,#0x03,00128$
                                   3169 ;	../Common/CentralHeating.c:754: strcpy(strBuffer, COMPILED_AT);
      00229D 90 02 8F         [24] 3170 	mov	dptr,#_strcpy_PARM_2
      0022A0 74 88            [12] 3171 	mov	a,#___str_16
      0022A2 F0               [24] 3172 	movx	@dptr,a
      0022A3 74 3E            [12] 3173 	mov	a,#(___str_16 >> 8)
      0022A5 A3               [24] 3174 	inc	dptr
      0022A6 F0               [24] 3175 	movx	@dptr,a
      0022A7 74 80            [12] 3176 	mov	a,#0x80
      0022A9 A3               [24] 3177 	inc	dptr
      0022AA F0               [24] 3178 	movx	@dptr,a
      0022AB 90 02 2E         [24] 3179 	mov	dptr,#_AnimateScreen_strBuffer_65536_115
      0022AE 75 F0 00         [24] 3180 	mov	b,#0x00
      0022B1 12 30 73         [24] 3181 	lcall	_strcpy
      0022B4                       3182 00128$:
                                   3183 ;	../Common/CentralHeating.c:757: PartialWriteToScreen(0, 10, strBuffer);
      0022B4 90 01 E3         [24] 3184 	mov	dptr,#_PartialWriteToScreen_PARM_2
      0022B7 74 0A            [12] 3185 	mov	a,#0x0a
      0022B9 F0               [24] 3186 	movx	@dptr,a
      0022BA E4               [12] 3187 	clr	a
      0022BB A3               [24] 3188 	inc	dptr
      0022BC F0               [24] 3189 	movx	@dptr,a
      0022BD 90 01 E5         [24] 3190 	mov	dptr,#_PartialWriteToScreen_PARM_3
      0022C0 74 2E            [12] 3191 	mov	a,#_AnimateScreen_strBuffer_65536_115
      0022C2 F0               [24] 3192 	movx	@dptr,a
      0022C3 74 02            [12] 3193 	mov	a,#(_AnimateScreen_strBuffer_65536_115 >> 8)
      0022C5 A3               [24] 3194 	inc	dptr
      0022C6 F0               [24] 3195 	movx	@dptr,a
      0022C7 E4               [12] 3196 	clr	a
      0022C8 A3               [24] 3197 	inc	dptr
      0022C9 F0               [24] 3198 	movx	@dptr,a
      0022CA 90 00 00         [24] 3199 	mov	dptr,#0x0000
      0022CD 12 17 AB         [24] 3200 	lcall	_PartialWriteToScreen
                                   3201 ;	../Common/CentralHeating.c:758: animationType++;
      0022D0 90 01 BE         [24] 3202 	mov	dptr,#_animationType
      0022D3 E0               [24] 3203 	movx	a,@dptr
      0022D4 24 01            [12] 3204 	add	a,#0x01
      0022D6 F0               [24] 3205 	movx	@dptr,a
                                   3206 ;	../Common/CentralHeating.c:759: if (animationType > ANIMATE_VERSION)
      0022D7 E0               [24] 3207 	movx	a,@dptr
      0022D8 24 FC            [12] 3208 	add	a,#0xff - 0x03
      0022DA 50 05            [24] 3209 	jnc	00135$
                                   3210 ;	../Common/CentralHeating.c:761: animationType = ANIMATE_INPUTS;
      0022DC 90 01 BE         [24] 3211 	mov	dptr,#_animationType
      0022DF E4               [12] 3212 	clr	a
      0022E0 F0               [24] 3213 	movx	@dptr,a
      0022E1                       3214 00135$:
                                   3215 ;	../Common/CentralHeating.c:763: }
      0022E1 22               [24] 3216 	ret
                                   3217 	.area CSEG    (CODE)
                                   3218 	.area CONST   (CODE)
                                   3219 	.area CONST   (CODE)
      003E3D                       3220 ___str_0:
      003E3D 00                    3221 	.db 0x00
                                   3222 	.area CSEG    (CODE)
                                   3223 	.area CONST   (CODE)
      003E3E                       3224 ___str_1:
      003E3E 4F 66 66              3225 	.ascii "Off"
      003E41 00                    3226 	.db 0x00
                                   3227 	.area CSEG    (CODE)
                                   3228 	.area CONST   (CODE)
      003E42                       3229 ___str_2:
      003E42 42 6F 69 6C 65 72     3230 	.ascii "Boiler"
      003E48 00                    3231 	.db 0x00
                                   3232 	.area CSEG    (CODE)
                                   3233 	.area CONST   (CODE)
      003E49                       3234 ___str_3:
      003E49 50 75 6D 70           3235 	.ascii "Pump"
      003E4D 00                    3236 	.db 0x00
                                   3237 	.area CSEG    (CODE)
                                   3238 	.area CONST   (CODE)
      003E4E                       3239 ___str_4:
      003E4E 5A 6F 6E 65 20 31     3240 	.ascii "Zone 1"
      003E54 00                    3241 	.db 0x00
                                   3242 	.area CSEG    (CODE)
                                   3243 	.area CONST   (CODE)
      003E55                       3244 ___str_5:
      003E55 5A 6F 6E 65 20 32     3245 	.ascii "Zone 2"
      003E5B 00                    3246 	.db 0x00
                                   3247 	.area CSEG    (CODE)
                                   3248 	.area CONST   (CODE)
      003E5C                       3249 ___str_6:
      003E5C 5A 6F 6E 65 20 33     3250 	.ascii "Zone 3"
      003E62 00                    3251 	.db 0x00
                                   3252 	.area CSEG    (CODE)
                                   3253 	.area CONST   (CODE)
      003E63                       3254 ___str_7:
      003E63 5A 6F 6E 65 20 34     3255 	.ascii "Zone 4"
      003E69 00                    3256 	.db 0x00
                                   3257 	.area CSEG    (CODE)
                                   3258 	.area CONST   (CODE)
      003E6A                       3259 ___str_8:
      003E6A 52 65 73 65 74        3260 	.ascii "Reset"
      003E6F 00                    3261 	.db 0x00
                                   3262 	.area CSEG    (CODE)
                                   3263 	.area CONST   (CODE)
      003E70                       3264 ___str_9:
      003E70 5A 6F 6E 65 20        3265 	.ascii "Zone "
      003E75 00                    3266 	.db 0x00
                                   3267 	.area CSEG    (CODE)
                                   3268 	.area CONST   (CODE)
      003E76                       3269 ___str_10:
      003E76 5F                    3270 	.ascii "_"
      003E77 00                    3271 	.db 0x00
                                   3272 	.area CSEG    (CODE)
                                   3273 	.area CONST   (CODE)
      003E78                       3274 ___str_11:
      003E78 4F 75 74 20           3275 	.ascii "Out "
      003E7C 00                    3276 	.db 0x00
                                   3277 	.area CSEG    (CODE)
                                   3278 	.area CONST   (CODE)
      003E7D                       3279 ___str_12:
      003E7D 50                    3280 	.ascii "P"
      003E7E 00                    3281 	.db 0x00
                                   3282 	.area CSEG    (CODE)
                                   3283 	.area CONST   (CODE)
      003E7F                       3284 ___str_13:
      003E7F 42                    3285 	.ascii "B"
      003E80 00                    3286 	.db 0x00
                                   3287 	.area CSEG    (CODE)
                                   3288 	.area CONST   (CODE)
      003E81                       3289 ___str_14:
      003E81 48 57 20              3290 	.ascii "HW "
      003E84 00                    3291 	.db 0x00
                                   3292 	.area CSEG    (CODE)
                                   3293 	.area CONST   (CODE)
      003E85                       3294 ___str_15:
      003E85 4F 6E                 3295 	.ascii "On"
      003E87 00                    3296 	.db 0x00
                                   3297 	.area CSEG    (CODE)
                                   3298 	.area CONST   (CODE)
      003E88                       3299 ___str_16:
      003E88 32 30 32 30 30 37 31  3300 	.ascii "20200718"
             38
      003E90 00                    3301 	.db 0x00
                                   3302 	.area CSEG    (CODE)
                                   3303 	.area XINIT   (CODE)
                                   3304 	.area CABS    (ABS,CODE)
