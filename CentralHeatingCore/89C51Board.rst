                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module 89C51Board
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _Rtc_WriteClock
                                     13 	.globl _Rtc_ReadClock
                                     14 	.globl _Rtc_Initialise
                                     15 	.globl _DirectWriteToDisplay
                                     16 	.globl _InitialiseLcd
                                     17 	.globl _UserProgram
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
                                    214 	.globl _timers
                                    215 	.globl _pCrashDump
                                    216 	.globl _pSetOutputPortValues
                                    217 	.globl _pGetInputPortValues
                                    218 	.globl _pGetKeyState
                                    219 	.globl _pWriteDisplayBuffer
                                    220 	.globl _pSetRtc
                                    221 	.globl _pGetRtc
                                    222 	.globl _pEnableTimer
                                    223 	.globl _pRegisterForTimer
                                    224 	.globl _Hardware_ScheduleUserCalls
                                    225 	.globl _Hardware_InitialiseHardware
                                    226 	.globl _Hardware_RegisterForTimer
                                    227 	.globl _Hardware_EnableTimer
                                    228 	.globl _Hardware_WriteDisplayBuffer
                                    229 	.globl _Hardware_SetRtc
                                    230 	.globl _Hardware_GetRtc
                                    231 	.globl _Hardware_GetKeyState
                                    232 	.globl _Hardware_GetInputPortValues
                                    233 	.globl _Hardware_SetOutputPortValues
                                    234 	.globl _Hardware_CrashDump
                                    235 ;--------------------------------------------------------
                                    236 ; special function registers
                                    237 ;--------------------------------------------------------
                                    238 	.area RSEG    (ABS,DATA)
      000000                        239 	.org 0x0000
                           000080   240 _P0	=	0x0080
                           000081   241 _SP	=	0x0081
                           000082   242 _DPL	=	0x0082
                           000083   243 _DPH	=	0x0083
                           000087   244 _PCON	=	0x0087
                           000088   245 _TCON	=	0x0088
                           000089   246 _TMOD	=	0x0089
                           00008A   247 _TL0	=	0x008a
                           00008B   248 _TL1	=	0x008b
                           00008C   249 _TH0	=	0x008c
                           00008D   250 _TH1	=	0x008d
                           000090   251 _P1	=	0x0090
                           000098   252 _SCON	=	0x0098
                           000099   253 _SBUF	=	0x0099
                           0000A0   254 _P2	=	0x00a0
                           0000A8   255 _IE	=	0x00a8
                           0000B0   256 _P3	=	0x00b0
                           0000B8   257 _IP	=	0x00b8
                           0000D0   258 _PSW	=	0x00d0
                           0000E0   259 _ACC	=	0x00e0
                           0000F0   260 _B	=	0x00f0
                           0000C8   261 _T2CON	=	0x00c8
                           0000CA   262 _RCAP2L	=	0x00ca
                           0000CB   263 _RCAP2H	=	0x00cb
                           0000CC   264 _TL2	=	0x00cc
                           0000CD   265 _TH2	=	0x00cd
                           00008E   266 _AUXR	=	0x008e
                           0000A2   267 _AUXR1	=	0x00a2
                           000097   268 _CKRL	=	0x0097
                           00008F   269 _CKCON0	=	0x008f
                           0000AF   270 _CKCON1	=	0x00af
                           0000FA   271 _CCAP0H	=	0x00fa
                           0000FB   272 _CCAP1H	=	0x00fb
                           0000FC   273 _CCAP2H	=	0x00fc
                           0000FD   274 _CCAP3H	=	0x00fd
                           0000FE   275 _CCAP4H	=	0x00fe
                           0000EA   276 _CCAP0L	=	0x00ea
                           0000EB   277 _CCAP1L	=	0x00eb
                           0000EC   278 _CCAP2L	=	0x00ec
                           0000ED   279 _CCAP3L	=	0x00ed
                           0000EE   280 _CCAP4L	=	0x00ee
                           0000DA   281 _CCAPM0	=	0x00da
                           0000DB   282 _CCAPM1	=	0x00db
                           0000DC   283 _CCAPM2	=	0x00dc
                           0000DD   284 _CCAPM3	=	0x00dd
                           0000DE   285 _CCAPM4	=	0x00de
                           0000D8   286 _CCON	=	0x00d8
                           0000F9   287 _CH	=	0x00f9
                           0000E9   288 _CL	=	0x00e9
                           0000D9   289 _CMOD	=	0x00d9
                           0000A8   290 _IEN0	=	0x00a8
                           0000B1   291 _IEN1	=	0x00b1
                           0000B8   292 _IPL0	=	0x00b8
                           0000B7   293 _IPH0	=	0x00b7
                           0000B2   294 _IPL1	=	0x00b2
                           0000B3   295 _IPH1	=	0x00b3
                           0000C0   296 _P4	=	0x00c0
                           0000E8   297 _P5	=	0x00e8
                           0000A6   298 _WDTRST	=	0x00a6
                           0000A7   299 _WDTPRG	=	0x00a7
                           0000A9   300 _SADDR	=	0x00a9
                           0000B9   301 _SADEN	=	0x00b9
                           0000C3   302 _SPCON	=	0x00c3
                           0000C4   303 _SPSTA	=	0x00c4
                           0000C5   304 _SPDAT	=	0x00c5
                           0000C9   305 _T2MOD	=	0x00c9
                           00009B   306 _BDRCON	=	0x009b
                           00009A   307 _BRL	=	0x009a
                           00009C   308 _KBLS	=	0x009c
                           00009D   309 _KBE	=	0x009d
                           00009E   310 _KBF	=	0x009e
                           0000D2   311 _EECON	=	0x00d2
                                    312 ;--------------------------------------------------------
                                    313 ; special function bits
                                    314 ;--------------------------------------------------------
                                    315 	.area RSEG    (ABS,DATA)
      000000                        316 	.org 0x0000
                           000080   317 _P0_0	=	0x0080
                           000081   318 _P0_1	=	0x0081
                           000082   319 _P0_2	=	0x0082
                           000083   320 _P0_3	=	0x0083
                           000084   321 _P0_4	=	0x0084
                           000085   322 _P0_5	=	0x0085
                           000086   323 _P0_6	=	0x0086
                           000087   324 _P0_7	=	0x0087
                           000088   325 _IT0	=	0x0088
                           000089   326 _IE0	=	0x0089
                           00008A   327 _IT1	=	0x008a
                           00008B   328 _IE1	=	0x008b
                           00008C   329 _TR0	=	0x008c
                           00008D   330 _TF0	=	0x008d
                           00008E   331 _TR1	=	0x008e
                           00008F   332 _TF1	=	0x008f
                           000090   333 _P1_0	=	0x0090
                           000091   334 _P1_1	=	0x0091
                           000092   335 _P1_2	=	0x0092
                           000093   336 _P1_3	=	0x0093
                           000094   337 _P1_4	=	0x0094
                           000095   338 _P1_5	=	0x0095
                           000096   339 _P1_6	=	0x0096
                           000097   340 _P1_7	=	0x0097
                           000098   341 _RI	=	0x0098
                           000099   342 _TI	=	0x0099
                           00009A   343 _RB8	=	0x009a
                           00009B   344 _TB8	=	0x009b
                           00009C   345 _REN	=	0x009c
                           00009D   346 _SM2	=	0x009d
                           00009E   347 _SM1	=	0x009e
                           00009F   348 _SM0	=	0x009f
                           0000A0   349 _P2_0	=	0x00a0
                           0000A1   350 _P2_1	=	0x00a1
                           0000A2   351 _P2_2	=	0x00a2
                           0000A3   352 _P2_3	=	0x00a3
                           0000A4   353 _P2_4	=	0x00a4
                           0000A5   354 _P2_5	=	0x00a5
                           0000A6   355 _P2_6	=	0x00a6
                           0000A7   356 _P2_7	=	0x00a7
                           0000A8   357 _EX0	=	0x00a8
                           0000A9   358 _ET0	=	0x00a9
                           0000AA   359 _EX1	=	0x00aa
                           0000AB   360 _ET1	=	0x00ab
                           0000AC   361 _ES	=	0x00ac
                           0000AF   362 _EA	=	0x00af
                           0000B0   363 _P3_0	=	0x00b0
                           0000B1   364 _P3_1	=	0x00b1
                           0000B2   365 _P3_2	=	0x00b2
                           0000B3   366 _P3_3	=	0x00b3
                           0000B4   367 _P3_4	=	0x00b4
                           0000B5   368 _P3_5	=	0x00b5
                           0000B6   369 _P3_6	=	0x00b6
                           0000B7   370 _P3_7	=	0x00b7
                           0000B0   371 _RXD	=	0x00b0
                           0000B1   372 _TXD	=	0x00b1
                           0000B2   373 _INT0	=	0x00b2
                           0000B3   374 _INT1	=	0x00b3
                           0000B4   375 _T0	=	0x00b4
                           0000B5   376 _T1	=	0x00b5
                           0000B6   377 _WR	=	0x00b6
                           0000B7   378 _RD	=	0x00b7
                           0000B8   379 _PX0	=	0x00b8
                           0000B9   380 _PT0	=	0x00b9
                           0000BA   381 _PX1	=	0x00ba
                           0000BB   382 _PT1	=	0x00bb
                           0000BC   383 _PS	=	0x00bc
                           0000D0   384 _P	=	0x00d0
                           0000D1   385 _F1	=	0x00d1
                           0000D2   386 _OV	=	0x00d2
                           0000D3   387 _RS0	=	0x00d3
                           0000D4   388 _RS1	=	0x00d4
                           0000D5   389 _F0	=	0x00d5
                           0000D6   390 _AC	=	0x00d6
                           0000D7   391 _CY	=	0x00d7
                           0000AD   392 _ET2	=	0x00ad
                           0000BD   393 _PT2	=	0x00bd
                           0000C8   394 _T2CON_0	=	0x00c8
                           0000C9   395 _T2CON_1	=	0x00c9
                           0000CA   396 _T2CON_2	=	0x00ca
                           0000CB   397 _T2CON_3	=	0x00cb
                           0000CC   398 _T2CON_4	=	0x00cc
                           0000CD   399 _T2CON_5	=	0x00cd
                           0000CE   400 _T2CON_6	=	0x00ce
                           0000CF   401 _T2CON_7	=	0x00cf
                           0000C8   402 _CP_RL2	=	0x00c8
                           0000C9   403 _C_T2	=	0x00c9
                           0000CA   404 _TR2	=	0x00ca
                           0000CB   405 _EXEN2	=	0x00cb
                           0000CC   406 _TCLK	=	0x00cc
                           0000CD   407 _RCLK	=	0x00cd
                           0000CE   408 _EXF2	=	0x00ce
                           0000CF   409 _TF2	=	0x00cf
                           0000DF   410 _CF	=	0x00df
                           0000DE   411 _CR	=	0x00de
                           0000DC   412 _CCF4	=	0x00dc
                           0000DB   413 _CCF3	=	0x00db
                           0000DA   414 _CCF2	=	0x00da
                           0000D9   415 _CCF1	=	0x00d9
                           0000D8   416 _CCF0	=	0x00d8
                           0000AE   417 _EC	=	0x00ae
                           0000BE   418 _PPCL	=	0x00be
                           0000BD   419 _PT2L	=	0x00bd
                           0000BC   420 _PSL	=	0x00bc
                           0000BB   421 _PT1L	=	0x00bb
                           0000BA   422 _PX1L	=	0x00ba
                           0000B9   423 _PT0L	=	0x00b9
                           0000B8   424 _PX0L	=	0x00b8
                           0000C0   425 _P4_0	=	0x00c0
                           0000C1   426 _P4_1	=	0x00c1
                           0000C2   427 _P4_2	=	0x00c2
                           0000C3   428 _P4_3	=	0x00c3
                           0000C4   429 _P4_4	=	0x00c4
                           0000C5   430 _P4_5	=	0x00c5
                           0000C6   431 _P4_6	=	0x00c6
                           0000C7   432 _P4_7	=	0x00c7
                           0000E8   433 _P5_0	=	0x00e8
                           0000E9   434 _P5_1	=	0x00e9
                           0000EA   435 _P5_2	=	0x00ea
                           0000EB   436 _P5_3	=	0x00eb
                           0000EC   437 _P5_4	=	0x00ec
                           0000ED   438 _P5_5	=	0x00ed
                           0000EE   439 _P5_6	=	0x00ee
                           0000EF   440 _P5_7	=	0x00ef
                                    441 ;--------------------------------------------------------
                                    442 ; overlayable register banks
                                    443 ;--------------------------------------------------------
                                    444 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        445 	.ds 8
                                    446 ;--------------------------------------------------------
                                    447 ; internal ram data
                                    448 ;--------------------------------------------------------
                                    449 	.area DSEG    (DATA)
                                    450 ;--------------------------------------------------------
                                    451 ; overlayable items in internal ram
                                    452 ;--------------------------------------------------------
                                    453 ;--------------------------------------------------------
                                    454 ; Stack segment in internal ram
                                    455 ;--------------------------------------------------------
                                    456 	.area SSEG
      00004A                        457 __start__stack:
      00004A                        458 	.ds	1
                                    459 
                                    460 ;--------------------------------------------------------
                                    461 ; indirectly addressable internal ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area ISEG    (DATA)
                                    464 ;--------------------------------------------------------
                                    465 ; absolute internal ram data
                                    466 ;--------------------------------------------------------
                                    467 	.area IABS    (ABS,DATA)
                                    468 	.area IABS    (ABS,DATA)
                                    469 ;--------------------------------------------------------
                                    470 ; bit data
                                    471 ;--------------------------------------------------------
                                    472 	.area BSEG    (BIT)
                                    473 ;--------------------------------------------------------
                                    474 ; paged external ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area PSEG    (PAG,XDATA)
                                    477 ;--------------------------------------------------------
                                    478 ; uninitialized external ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area XSEG    (XDATA)
      000001                        481 _pRegisterForTimer::
      000001                        482 	.ds 2
      000003                        483 _pEnableTimer::
      000003                        484 	.ds 2
      000005                        485 _pGetRtc::
      000005                        486 	.ds 2
      000007                        487 _pSetRtc::
      000007                        488 	.ds 2
      000009                        489 _pWriteDisplayBuffer::
      000009                        490 	.ds 2
      00000B                        491 _pGetKeyState::
      00000B                        492 	.ds 2
      00000D                        493 _pGetInputPortValues::
      00000D                        494 	.ds 2
      00000F                        495 _pSetOutputPortValues::
      00000F                        496 	.ds 2
      000011                        497 _pCrashDump::
      000011                        498 	.ds 2
      000013                        499 _timers::
      000013                        500 	.ds 90
                                    501 ;--------------------------------------------------------
                                    502 ; absolute external ram data
                                    503 ;--------------------------------------------------------
                                    504 	.area XABS    (ABS,XDATA)
                                    505 ;--------------------------------------------------------
                                    506 ; initialized external ram data
                                    507 ;--------------------------------------------------------
                                    508 	.area XISEG   (XDATA)
                                    509 	.area HOME    (CODE)
                                    510 	.area GSINIT0 (CODE)
                                    511 	.area GSINIT1 (CODE)
                                    512 	.area GSINIT2 (CODE)
                                    513 	.area GSINIT3 (CODE)
                                    514 	.area GSINIT4 (CODE)
                                    515 	.area GSINIT5 (CODE)
                                    516 	.area GSINIT  (CODE)
                                    517 	.area GSFINAL (CODE)
                                    518 	.area CSEG    (CODE)
                                    519 ;--------------------------------------------------------
                                    520 ; interrupt vector
                                    521 ;--------------------------------------------------------
                                    522 	.area HOME    (CODE)
      000000                        523 __interrupt_vect:
      000000 02 00 4C         [24]  524 	ljmp	__sdcc_gsinit_startup
                                    525 ; restartable atomic support routines
      000003                        526 	.ds	5
      000008                        527 sdcc_atomic_exchange_rollback_start::
      000008 00               [12]  528 	nop
      000009 00               [12]  529 	nop
      00000A                        530 sdcc_atomic_exchange_pdata_impl:
      00000A E2               [24]  531 	movx	a, @r0
      00000B FB               [12]  532 	mov	r3, a
      00000C EA               [12]  533 	mov	a, r2
      00000D F2               [24]  534 	movx	@r0, a
      00000E 80 2C            [24]  535 	sjmp	sdcc_atomic_exchange_exit
      000010 00               [12]  536 	nop
      000011 00               [12]  537 	nop
      000012                        538 sdcc_atomic_exchange_xdata_impl:
      000012 E0               [24]  539 	movx	a, @dptr
      000013 FB               [12]  540 	mov	r3, a
      000014 EA               [12]  541 	mov	a, r2
      000015 F0               [24]  542 	movx	@dptr, a
      000016 80 24            [24]  543 	sjmp	sdcc_atomic_exchange_exit
      000018                        544 sdcc_atomic_compare_exchange_idata_impl:
      000018 E6               [12]  545 	mov	a, @r0
      000019 B5 02 02         [24]  546 	cjne	a, ar2, .+#5
      00001C EB               [12]  547 	mov	a, r3
      00001D F6               [12]  548 	mov	@r0, a
      00001E 22               [24]  549 	ret
      00001F 00               [12]  550 	nop
      000020                        551 sdcc_atomic_compare_exchange_pdata_impl:
      000020 E2               [24]  552 	movx	a, @r0
      000021 B5 02 02         [24]  553 	cjne	a, ar2, .+#5
      000024 EB               [12]  554 	mov	a, r3
      000025 F2               [24]  555 	movx	@r0, a
      000026 22               [24]  556 	ret
      000027 00               [12]  557 	nop
      000028                        558 sdcc_atomic_compare_exchange_xdata_impl:
      000028 E0               [24]  559 	movx	a, @dptr
      000029 B5 02 02         [24]  560 	cjne	a, ar2, .+#5
      00002C EB               [12]  561 	mov	a, r3
      00002D F0               [24]  562 	movx	@dptr, a
      00002E 22               [24]  563 	ret
      00002F                        564 sdcc_atomic_exchange_rollback_end::
                                    565 
      00002F                        566 sdcc_atomic_exchange_gptr_impl::
      00002F 30 F6 E0         [24]  567 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000032 A8 82            [24]  568 	mov	r0, dpl
      000034 20 F5 D3         [24]  569 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000037                        570 sdcc_atomic_exchange_idata_impl:
      000037 EA               [12]  571 	mov	a, r2
      000038 C6               [12]  572 	xch	a, @r0
      000039 F5 82            [12]  573 	mov	dpl, a
      00003B 22               [24]  574 	ret
      00003C                        575 sdcc_atomic_exchange_exit:
      00003C 8B 82            [24]  576 	mov	dpl, r3
      00003E 22               [24]  577 	ret
      00003F                        578 sdcc_atomic_compare_exchange_gptr_impl::
      00003F 30 F6 E6         [24]  579 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000042 A8 82            [24]  580 	mov	r0, dpl
      000044 20 F5 D9         [24]  581 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000047 80 CF            [24]  582 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    583 ;--------------------------------------------------------
                                    584 ; global & static initialisations
                                    585 ;--------------------------------------------------------
                                    586 	.area HOME    (CODE)
                                    587 	.area GSINIT  (CODE)
                                    588 	.area GSFINAL (CODE)
                                    589 	.area GSINIT  (CODE)
                                    590 	.globl __sdcc_gsinit_startup
                                    591 	.globl __sdcc_program_startup
                                    592 	.globl __start__stack
                                    593 	.globl __mcs51_genXINIT
                                    594 	.globl __mcs51_genXRAMCLEAR
                                    595 	.globl __mcs51_genRAMCLEAR
                                    596 	.area GSFINAL (CODE)
      0000A5 02 00 49         [24]  597 	ljmp	__sdcc_program_startup
                                    598 ;--------------------------------------------------------
                                    599 ; Home
                                    600 ;--------------------------------------------------------
                                    601 	.area HOME    (CODE)
                                    602 	.area HOME    (CODE)
      000049                        603 __sdcc_program_startup:
      000049 02 00 A8         [24]  604 	ljmp	_main
                                    605 ;	return from main will return to caller
                                    606 ;--------------------------------------------------------
                                    607 ; code
                                    608 ;--------------------------------------------------------
                                    609 	.area CSEG    (CODE)
                                    610 ;------------------------------------------------------------
                                    611 ;Allocation info for local variables in function 'main'
                                    612 ;------------------------------------------------------------
                                    613 ;	89C51Board.c:60: void main(void)
                                    614 ;	-----------------------------------------
                                    615 ;	 function main
                                    616 ;	-----------------------------------------
      0000A8                        617 _main:
                           000007   618 	ar7 = 0x07
                           000006   619 	ar6 = 0x06
                           000005   620 	ar5 = 0x05
                           000004   621 	ar4 = 0x04
                           000003   622 	ar3 = 0x03
                           000002   623 	ar2 = 0x02
                           000001   624 	ar1 = 0x01
                           000000   625 	ar0 = 0x00
                                    626 ;	89C51Board.c:62: CKCON0 = 0x01;						// Initial X2 Mode (BUS Clock = 58.9824 MHz) 
      0000A8 75 8F 01         [24]  627 	mov	_CKCON0,#0x01
                                    628 ;	89C51Board.c:66: Hardware_InitialiseHardware();
      0000AB 12 01 EB         [24]  629 	lcall	_Hardware_InitialiseHardware
                                    630 ;	89C51Board.c:74: UserProgram();
      0000AE 12 14 47         [24]  631 	lcall	_UserProgram
                                    632 ;	89C51Board.c:76: Hardware_ScheduleUserCalls();
                                    633 ;	89C51Board.c:78: }   
      0000B1 02 00 B4         [24]  634 	ljmp	_Hardware_ScheduleUserCalls
                                    635 ;------------------------------------------------------------
                                    636 ;Allocation info for local variables in function 'Hardware_ScheduleUserCalls'
                                    637 ;------------------------------------------------------------
                                    638 ;timerCounter  Allocated to stack - _bp +5 +2 
                                    639 ;c             Allocated to registers r4 r5 r6 r7 
                                    640 ;pTimer        Allocated to registers r3 r4 
                                    641 ;sloc0         Allocated to stack - _bp +1 +2 
                                    642 ;sloc1         Allocated to stack - _bp +3 +2 
                                    643 ;------------------------------------------------------------
                                    644 ;	89C51Board.c:81: void Hardware_ScheduleUserCalls() REENTRANT
                                    645 ;	-----------------------------------------
                                    646 ;	 function Hardware_ScheduleUserCalls
                                    647 ;	-----------------------------------------
      0000B4                        648 _Hardware_ScheduleUserCalls:
      0000B4 C0 1E            [24]  649 	push	_bp
      0000B6 E5 81            [12]  650 	mov	a,sp
      0000B8 F5 1E            [12]  651 	mov	_bp,a
      0000BA 24 06            [12]  652 	add	a,#0x06
      0000BC F5 81            [12]  653 	mov	sp,a
                                    654 ;	89C51Board.c:88: for (timerCounter = 0; timerCounter < MAX_TIMERS; ++timerCounter)
      0000BE                        655 00121$:
      0000BE E5 1E            [12]  656 	mov	a,_bp
      0000C0 24 05            [12]  657 	add	a,#0x05
      0000C2 F8               [12]  658 	mov	r0,a
      0000C3 76 00            [12]  659 	mov	@r0,#0x00
      0000C5 7D 00            [12]  660 	mov	r5,#0x00
      0000C7 7E 00            [12]  661 	mov	r6,#0x00
      0000C9                        662 00111$:
                                    663 ;	89C51Board.c:90: TimerSetup *pTimer = timers + timerCounter;
      0000C9 ED               [12]  664 	mov	a,r5
      0000CA 24 13            [12]  665 	add	a, #_timers
      0000CC FB               [12]  666 	mov	r3,a
      0000CD EE               [12]  667 	mov	a,r6
      0000CE 34 00            [12]  668 	addc	a, #(_timers >> 8)
      0000D0 FC               [12]  669 	mov	r4,a
                                    670 ;	89C51Board.c:91: if (pTimer->cookie != 0 && pTimer->periodMilliseconds <= pTimer->ticksSoFar && pTimer->enabled)
      0000D1 A8 1E            [24]  671 	mov	r0,_bp
      0000D3 08               [12]  672 	inc	r0
      0000D4 A6 03            [24]  673 	mov	@r0,ar3
      0000D6 08               [12]  674 	inc	r0
      0000D7 A6 04            [24]  675 	mov	@r0,ar4
      0000D9 A8 1E            [24]  676 	mov	r0,_bp
      0000DB 08               [12]  677 	inc	r0
      0000DC 86 82            [24]  678 	mov	dpl,@r0
      0000DE 08               [12]  679 	inc	r0
      0000DF 86 83            [24]  680 	mov	dph,@r0
      0000E1 E0               [24]  681 	movx	a,@dptr
      0000E2 FA               [12]  682 	mov	r2,a
      0000E3 A3               [24]  683 	inc	dptr
      0000E4 E0               [24]  684 	movx	a,@dptr
      0000E5 4A               [12]  685 	orl	a,r2
      0000E6 70 03            [24]  686 	jnz	00168$
      0000E8 02 01 88         [24]  687 	ljmp	00102$
      0000EB                        688 00168$:
      0000EB C0 05            [24]  689 	push	ar5
      0000ED C0 06            [24]  690 	push	ar6
      0000EF 8B 82            [24]  691 	mov	dpl,r3
      0000F1 8C 83            [24]  692 	mov	dph,r4
      0000F3 A3               [24]  693 	inc	dptr
      0000F4 A3               [24]  694 	inc	dptr
      0000F5 E0               [24]  695 	movx	a,@dptr
      0000F6 FA               [12]  696 	mov	r2,a
      0000F7 A3               [24]  697 	inc	dptr
      0000F8 E0               [24]  698 	movx	a,@dptr
      0000F9 FF               [12]  699 	mov	r7,a
      0000FA E5 1E            [12]  700 	mov	a,_bp
      0000FC 24 03            [12]  701 	add	a,#0x03
      0000FE F8               [12]  702 	mov	r0,a
      0000FF 74 04            [12]  703 	mov	a,#0x04
      000101 2B               [12]  704 	add	a, r3
      000102 F6               [12]  705 	mov	@r0,a
      000103 E4               [12]  706 	clr	a
      000104 3C               [12]  707 	addc	a, r4
      000105 08               [12]  708 	inc	r0
      000106 F6               [12]  709 	mov	@r0,a
      000107 E5 1E            [12]  710 	mov	a,_bp
      000109 24 03            [12]  711 	add	a,#0x03
      00010B F8               [12]  712 	mov	r0,a
      00010C 86 82            [24]  713 	mov	dpl,@r0
      00010E 08               [12]  714 	inc	r0
      00010F 86 83            [24]  715 	mov	dph,@r0
      000111 E0               [24]  716 	movx	a,@dptr
      000112 FD               [12]  717 	mov	r5,a
      000113 A3               [24]  718 	inc	dptr
      000114 E0               [24]  719 	movx	a,@dptr
      000115 FE               [12]  720 	mov	r6,a
      000116 C3               [12]  721 	clr	c
      000117 ED               [12]  722 	mov	a,r5
      000118 9A               [12]  723 	subb	a,r2
      000119 EE               [12]  724 	mov	a,r6
      00011A 64 80            [12]  725 	xrl	a,#0x80
      00011C 8F F0            [24]  726 	mov	b,r7
      00011E 63 F0 80         [24]  727 	xrl	b,#0x80
      000121 95 F0            [12]  728 	subb	a,b
      000123 D0 06            [24]  729 	pop	ar6
      000125 D0 05            [24]  730 	pop	ar5
      000127 40 5F            [24]  731 	jc	00102$
      000129 74 06            [12]  732 	mov	a,#0x06
      00012B 2B               [12]  733 	add	a, r3
      00012C FA               [12]  734 	mov	r2,a
      00012D E4               [12]  735 	clr	a
      00012E 3C               [12]  736 	addc	a, r4
      00012F FF               [12]  737 	mov	r7,a
      000130 8A 82            [24]  738 	mov	dpl,r2
      000132 8F 83            [24]  739 	mov	dph,r7
      000134 E0               [24]  740 	movx	a,@dptr
      000135 60 51            [24]  741 	jz	00102$
                                    742 ;	89C51Board.c:94: pTimer->ticksSoFar = 0;
      000137 C0 05            [24]  743 	push	ar5
      000139 C0 06            [24]  744 	push	ar6
      00013B E5 1E            [12]  745 	mov	a,_bp
      00013D 24 03            [12]  746 	add	a,#0x03
      00013F F8               [12]  747 	mov	r0,a
      000140 86 82            [24]  748 	mov	dpl,@r0
      000142 08               [12]  749 	inc	r0
      000143 86 83            [24]  750 	mov	dph,@r0
      000145 E4               [12]  751 	clr	a
      000146 F0               [24]  752 	movx	@dptr,a
      000147 A3               [24]  753 	inc	dptr
      000148 F0               [24]  754 	movx	@dptr,a
                                    755 ;	89C51Board.c:95: pTimer->callback(pTimer->cookie);
      000149 74 07            [12]  756 	mov	a,#0x07
      00014B 2B               [12]  757 	add	a, r3
      00014C F5 82            [12]  758 	mov	dpl,a
      00014E E4               [12]  759 	clr	a
      00014F 3C               [12]  760 	addc	a, r4
      000150 F5 83            [12]  761 	mov	dph,a
      000152 E0               [24]  762 	movx	a,@dptr
      000153 FA               [12]  763 	mov	r2,a
      000154 A3               [24]  764 	inc	dptr
      000155 E0               [24]  765 	movx	a,@dptr
      000156 FF               [12]  766 	mov	r7,a
      000157 A8 1E            [24]  767 	mov	r0,_bp
      000159 08               [12]  768 	inc	r0
      00015A 86 82            [24]  769 	mov	dpl,@r0
      00015C 08               [12]  770 	inc	r0
      00015D 86 83            [24]  771 	mov	dph,@r0
      00015F E0               [24]  772 	movx	a,@dptr
      000160 FD               [12]  773 	mov	r5,a
      000161 A3               [24]  774 	inc	dptr
      000162 E0               [24]  775 	movx	a,@dptr
      000163 FE               [12]  776 	mov	r6,a
      000164 C0 07            [24]  777 	push	ar7
      000166 C0 06            [24]  778 	push	ar6
      000168 C0 05            [24]  779 	push	ar5
      00016A C0 02            [24]  780 	push	ar2
      00016C 12 01 71         [24]  781 	lcall	00171$
      00016F 80 09            [24]  782 	sjmp	00172$
      000171                        783 00171$:
      000171 C0 02            [24]  784 	push	ar2
      000173 C0 07            [24]  785 	push	ar7
      000175 8D 82            [24]  786 	mov	dpl, r5
      000177 8E 83            [24]  787 	mov	dph, r6
      000179 22               [24]  788 	ret
      00017A                        789 00172$:
      00017A D0 02            [24]  790 	pop	ar2
      00017C D0 05            [24]  791 	pop	ar5
      00017E D0 06            [24]  792 	pop	ar6
      000180 D0 07            [24]  793 	pop	ar7
      000182 D0 06            [24]  794 	pop	ar6
      000184 D0 05            [24]  795 	pop	ar5
      000186 80 1E            [24]  796 	sjmp	00112$
      000188                        797 00102$:
                                    798 ;	89C51Board.c:99: pTimer->ticksSoFar++;
      000188 74 04            [12]  799 	mov	a,#0x04
      00018A 2B               [12]  800 	add	a, r3
      00018B FB               [12]  801 	mov	r3,a
      00018C E4               [12]  802 	clr	a
      00018D 3C               [12]  803 	addc	a, r4
      00018E FC               [12]  804 	mov	r4,a
      00018F 8B 82            [24]  805 	mov	dpl,r3
      000191 8C 83            [24]  806 	mov	dph,r4
      000193 E0               [24]  807 	movx	a,@dptr
      000194 FA               [12]  808 	mov	r2,a
      000195 A3               [24]  809 	inc	dptr
      000196 E0               [24]  810 	movx	a,@dptr
      000197 FF               [12]  811 	mov	r7,a
      000198 0A               [12]  812 	inc	r2
      000199 BA 00 01         [24]  813 	cjne	r2,#0x00,00173$
      00019C 0F               [12]  814 	inc	r7
      00019D                        815 00173$:
      00019D 8B 82            [24]  816 	mov	dpl,r3
      00019F 8C 83            [24]  817 	mov	dph,r4
      0001A1 EA               [12]  818 	mov	a,r2
      0001A2 F0               [24]  819 	movx	@dptr,a
      0001A3 EF               [12]  820 	mov	a,r7
      0001A4 A3               [24]  821 	inc	dptr
      0001A5 F0               [24]  822 	movx	@dptr,a
      0001A6                        823 00112$:
                                    824 ;	89C51Board.c:88: for (timerCounter = 0; timerCounter < MAX_TIMERS; ++timerCounter)
      0001A6 74 09            [12]  825 	mov	a,#0x09
      0001A8 2D               [12]  826 	add	a, r5
      0001A9 FD               [12]  827 	mov	r5,a
      0001AA E4               [12]  828 	clr	a
      0001AB 3E               [12]  829 	addc	a, r6
      0001AC FE               [12]  830 	mov	r6,a
      0001AD E5 1E            [12]  831 	mov	a,_bp
      0001AF 24 05            [12]  832 	add	a,#0x05
      0001B1 F8               [12]  833 	mov	r0,a
      0001B2 E5 1E            [12]  834 	mov	a,_bp
      0001B4 24 05            [12]  835 	add	a,#0x05
      0001B6 F9               [12]  836 	mov	r1,a
      0001B7 E6               [12]  837 	mov	a,@r0
      0001B8 04               [12]  838 	inc	a
      0001B9 F7               [12]  839 	mov	@r1,a
      0001BA E5 1E            [12]  840 	mov	a,_bp
      0001BC 24 05            [12]  841 	add	a,#0x05
      0001BE F8               [12]  842 	mov	r0,a
      0001BF B6 0A 00         [24]  843 	cjne	@r0,#0x0a,00174$
      0001C2                        844 00174$:
      0001C2 50 03            [24]  845 	jnc	00175$
      0001C4 02 00 C9         [24]  846 	ljmp	00111$
      0001C7                        847 00175$:
                                    848 ;	89C51Board.c:104: for (c = 0; c < 100; ++c)
      0001C7 7C 64            [12]  849 	mov	r4,#0x64
      0001C9 7D 00            [12]  850 	mov	r5,#0x00
      0001CB 7E 00            [12]  851 	mov	r6,#0x00
      0001CD 7F 00            [12]  852 	mov	r7,#0x00
      0001CF                        853 00115$:
      0001CF 1C               [12]  854 	dec	r4
      0001D0 BC FF 09         [24]  855 	cjne	r4,#0xff,00176$
      0001D3 1D               [12]  856 	dec	r5
      0001D4 BD FF 05         [24]  857 	cjne	r5,#0xff,00176$
      0001D7 1E               [12]  858 	dec	r6
      0001D8 BE FF 01         [24]  859 	cjne	r6,#0xff,00176$
      0001DB 1F               [12]  860 	dec	r7
      0001DC                        861 00176$:
      0001DC EC               [12]  862 	mov	a,r4
      0001DD 4D               [12]  863 	orl	a,r5
      0001DE 4E               [12]  864 	orl	a,r6
      0001DF 4F               [12]  865 	orl	a,r7
      0001E0 70 ED            [24]  866 	jnz	00115$
      0001E2 02 00 BE         [24]  867 	ljmp	00121$
                                    868 ;	89C51Board.c:109: }
      0001E5 85 1E 81         [24]  869 	mov	sp,_bp
      0001E8 D0 1E            [24]  870 	pop	_bp
      0001EA 22               [24]  871 	ret
                                    872 ;------------------------------------------------------------
                                    873 ;Allocation info for local variables in function 'Hardware_InitialiseHardware'
                                    874 ;------------------------------------------------------------
                                    875 ;i             Allocated to registers r7 
                                    876 ;------------------------------------------------------------
                                    877 ;	89C51Board.c:112: void Hardware_InitialiseHardware() REENTRANT
                                    878 ;	-----------------------------------------
                                    879 ;	 function Hardware_InitialiseHardware
                                    880 ;	-----------------------------------------
      0001EB                        881 _Hardware_InitialiseHardware:
                                    882 ;	89C51Board.c:116: for (i = 0; i < MAX_TIMERS; ++i)
      0001EB 7F 00            [12]  883 	mov	r7,#0x00
      0001ED 7D 00            [12]  884 	mov	r5,#0x00
      0001EF 7E 00            [12]  885 	mov	r6,#0x00
      0001F1                        886 00102$:
                                    887 ;	89C51Board.c:118: timers[i].cookie = 0;
      0001F1 ED               [12]  888 	mov	a,r5
      0001F2 24 13            [12]  889 	add	a, #_timers
      0001F4 F5 82            [12]  890 	mov	dpl,a
      0001F6 EE               [12]  891 	mov	a,r6
      0001F7 34 00            [12]  892 	addc	a, #(_timers >> 8)
      0001F9 F5 83            [12]  893 	mov	dph,a
      0001FB E4               [12]  894 	clr	a
      0001FC F0               [24]  895 	movx	@dptr,a
      0001FD A3               [24]  896 	inc	dptr
      0001FE F0               [24]  897 	movx	@dptr,a
                                    898 ;	89C51Board.c:116: for (i = 0; i < MAX_TIMERS; ++i)
      0001FF 74 09            [12]  899 	mov	a,#0x09
      000201 2D               [12]  900 	add	a, r5
      000202 FD               [12]  901 	mov	r5,a
      000203 E4               [12]  902 	clr	a
      000204 3E               [12]  903 	addc	a, r6
      000205 FE               [12]  904 	mov	r6,a
      000206 0F               [12]  905 	inc	r7
      000207 BF 0A 00         [24]  906 	cjne	r7,#0x0a,00119$
      00020A                        907 00119$:
      00020A 40 E5            [24]  908 	jc	00102$
                                    909 ;	89C51Board.c:122: pRegisterForTimer = Hardware_RegisterForTimer;
      00020C 7E 7E            [12]  910 	mov	r6,#_Hardware_RegisterForTimer
      00020E 7F 02            [12]  911 	mov	r7,#(_Hardware_RegisterForTimer >> 8)
      000210 90 00 01         [24]  912 	mov	dptr,#_pRegisterForTimer
      000213 EE               [12]  913 	mov	a,r6
      000214 F0               [24]  914 	movx	@dptr,a
      000215 EF               [12]  915 	mov	a,r7
      000216 A3               [24]  916 	inc	dptr
      000217 F0               [24]  917 	movx	@dptr,a
                                    918 ;	89C51Board.c:123: pEnableTimer = Hardware_EnableTimer;
      000218 7E 70            [12]  919 	mov	r6,#_Hardware_EnableTimer
      00021A 7F 03            [12]  920 	mov	r7,#(_Hardware_EnableTimer >> 8)
      00021C 90 00 03         [24]  921 	mov	dptr,#_pEnableTimer
      00021F EE               [12]  922 	mov	a,r6
      000220 F0               [24]  923 	movx	@dptr,a
      000221 EF               [12]  924 	mov	a,r7
      000222 A3               [24]  925 	inc	dptr
      000223 F0               [24]  926 	movx	@dptr,a
                                    927 ;	89C51Board.c:124: pGetRtc = Hardware_GetRtc;
      000224 7E 20            [12]  928 	mov	r6,#_Hardware_GetRtc
      000226 7F 04            [12]  929 	mov	r7,#(_Hardware_GetRtc >> 8)
      000228 90 00 05         [24]  930 	mov	dptr,#_pGetRtc
      00022B EE               [12]  931 	mov	a,r6
      00022C F0               [24]  932 	movx	@dptr,a
      00022D EF               [12]  933 	mov	a,r7
      00022E A3               [24]  934 	inc	dptr
      00022F F0               [24]  935 	movx	@dptr,a
                                    936 ;	89C51Board.c:125: pSetRtc = Hardware_SetRtc;
      000230 7E 1D            [12]  937 	mov	r6,#_Hardware_SetRtc
      000232 7F 04            [12]  938 	mov	r7,#(_Hardware_SetRtc >> 8)
      000234 90 00 07         [24]  939 	mov	dptr,#_pSetRtc
      000237 EE               [12]  940 	mov	a,r6
      000238 F0               [24]  941 	movx	@dptr,a
      000239 EF               [12]  942 	mov	a,r7
      00023A A3               [24]  943 	inc	dptr
      00023B F0               [24]  944 	movx	@dptr,a
                                    945 ;	89C51Board.c:126: pWriteDisplayBuffer = Hardware_WriteDisplayBuffer;
      00023C 7E 1A            [12]  946 	mov	r6,#_Hardware_WriteDisplayBuffer
      00023E 7F 04            [12]  947 	mov	r7,#(_Hardware_WriteDisplayBuffer >> 8)
      000240 90 00 09         [24]  948 	mov	dptr,#_pWriteDisplayBuffer
      000243 EE               [12]  949 	mov	a,r6
      000244 F0               [24]  950 	movx	@dptr,a
      000245 EF               [12]  951 	mov	a,r7
      000246 A3               [24]  952 	inc	dptr
      000247 F0               [24]  953 	movx	@dptr,a
                                    954 ;	89C51Board.c:127: pGetKeyState = Hardware_GetKeyState;
      000248 7E 23            [12]  955 	mov	r6,#_Hardware_GetKeyState
      00024A 7F 04            [12]  956 	mov	r7,#(_Hardware_GetKeyState >> 8)
      00024C 90 00 0B         [24]  957 	mov	dptr,#_pGetKeyState
      00024F EE               [12]  958 	mov	a,r6
      000250 F0               [24]  959 	movx	@dptr,a
      000251 EF               [12]  960 	mov	a,r7
      000252 A3               [24]  961 	inc	dptr
      000253 F0               [24]  962 	movx	@dptr,a
                                    963 ;	89C51Board.c:128: pGetInputPortValues = Hardware_GetInputPortValues;
      000254 7E E2            [12]  964 	mov	r6,#_Hardware_GetInputPortValues
      000256 7F 04            [12]  965 	mov	r7,#(_Hardware_GetInputPortValues >> 8)
      000258 90 00 0D         [24]  966 	mov	dptr,#_pGetInputPortValues
      00025B EE               [12]  967 	mov	a,r6
      00025C F0               [24]  968 	movx	@dptr,a
      00025D EF               [12]  969 	mov	a,r7
      00025E A3               [24]  970 	inc	dptr
      00025F F0               [24]  971 	movx	@dptr,a
                                    972 ;	89C51Board.c:129: pSetOutputPortValues = Hardware_SetOutputPortValues;
      000260 7E 12            [12]  973 	mov	r6,#_Hardware_SetOutputPortValues
      000262 7F 05            [12]  974 	mov	r7,#(_Hardware_SetOutputPortValues >> 8)
      000264 90 00 0F         [24]  975 	mov	dptr,#_pSetOutputPortValues
      000267 EE               [12]  976 	mov	a,r6
      000268 F0               [24]  977 	movx	@dptr,a
      000269 EF               [12]  978 	mov	a,r7
      00026A A3               [24]  979 	inc	dptr
      00026B F0               [24]  980 	movx	@dptr,a
                                    981 ;	89C51Board.c:130: pCrashDump = Hardware_CrashDump;
      00026C 7E 16            [12]  982 	mov	r6,#_Hardware_CrashDump
      00026E 7F 05            [12]  983 	mov	r7,#(_Hardware_CrashDump >> 8)
      000270 90 00 11         [24]  984 	mov	dptr,#_pCrashDump
      000273 EE               [12]  985 	mov	a,r6
      000274 F0               [24]  986 	movx	@dptr,a
      000275 EF               [12]  987 	mov	a,r7
      000276 A3               [24]  988 	inc	dptr
      000277 F0               [24]  989 	movx	@dptr,a
                                    990 ;	89C51Board.c:134: InitialiseLcd();
      000278 12 25 0D         [24]  991 	lcall	_InitialiseLcd
                                    992 ;	89C51Board.c:135: Rtc_Initialise();
                                    993 ;	89C51Board.c:137: }
      00027B 02 2C C9         [24]  994 	ljmp	_Rtc_Initialise
                                    995 ;------------------------------------------------------------
                                    996 ;Allocation info for local variables in function 'Hardware_RegisterForTimer'
                                    997 ;------------------------------------------------------------
                                    998 ;milliSeconds  Allocated to stack - _bp -4 +2 
                                    999 ;callback      Allocated to stack - _bp -6 +2 
                                   1000 ;cookie        Allocated to stack - _bp +1 +2 
                                   1001 ;i             Allocated to registers r4 r5 
                                   1002 ;sloc0         Allocated to stack - _bp +5 +2 
                                   1003 ;sloc1         Allocated to stack - _bp +3 +2 
                                   1004 ;------------------------------------------------------------
                                   1005 ;	89C51Board.c:140: void Hardware_RegisterForTimer(int cookie, int milliSeconds, CallbackDelegate callback) REENTRANT
                                   1006 ;	-----------------------------------------
                                   1007 ;	 function Hardware_RegisterForTimer
                                   1008 ;	-----------------------------------------
      00027E                       1009 _Hardware_RegisterForTimer:
      00027E C0 1E            [24] 1010 	push	_bp
      000280 85 81 1E         [24] 1011 	mov	_bp,sp
      000283 C0 82            [24] 1012 	push	dpl
      000285 C0 83            [24] 1013 	push	dph
      000287 05 81            [12] 1014 	inc	sp
      000289 05 81            [12] 1015 	inc	sp
                                   1016 ;	89C51Board.c:144: for (i = 0; i < MAX_TIMERS; ++i)
      00028B 7C 00            [12] 1017 	mov	r4,#0x00
      00028D 7D 00            [12] 1018 	mov	r5,#0x00
      00028F 7A 00            [12] 1019 	mov	r2,#0x00
      000291 7B 00            [12] 1020 	mov	r3,#0x00
      000293 7F 00            [12] 1021 	mov	r7,#0x00
      000295 7E 00            [12] 1022 	mov	r6,#0x00
      000297                       1023 00105$:
                                   1024 ;	89C51Board.c:146: if (timers[i].cookie == 0 || timers[i].cookie == cookie)
      000297 EF               [12] 1025 	mov	a,r7
      000298 24 13            [12] 1026 	add	a, #_timers
      00029A F5 82            [12] 1027 	mov	dpl,a
      00029C EE               [12] 1028 	mov	a,r6
      00029D 34 00            [12] 1029 	addc	a, #(_timers >> 8)
      00029F F5 83            [12] 1030 	mov	dph,a
      0002A1 E5 1E            [12] 1031 	mov	a,_bp
      0002A3 24 03            [12] 1032 	add	a,#0x03
      0002A5 F8               [12] 1033 	mov	r0,a
      0002A6 E0               [24] 1034 	movx	a,@dptr
      0002A7 F6               [12] 1035 	mov	@r0,a
      0002A8 A3               [24] 1036 	inc	dptr
      0002A9 E0               [24] 1037 	movx	a,@dptr
      0002AA 08               [12] 1038 	inc	r0
      0002AB F6               [12] 1039 	mov	@r0,a
      0002AC E5 1E            [12] 1040 	mov	a,_bp
      0002AE 24 03            [12] 1041 	add	a,#0x03
      0002B0 F8               [12] 1042 	mov	r0,a
      0002B1 E6               [12] 1043 	mov	a,@r0
      0002B2 08               [12] 1044 	inc	r0
      0002B3 46               [12] 1045 	orl	a,@r0
      0002B4 60 1A            [24] 1046 	jz	00101$
      0002B6 E5 1E            [12] 1047 	mov	a,_bp
      0002B8 24 03            [12] 1048 	add	a,#0x03
      0002BA F8               [12] 1049 	mov	r0,a
      0002BB A9 1E            [24] 1050 	mov	r1,_bp
      0002BD 09               [12] 1051 	inc	r1
      0002BE 86 F0            [24] 1052 	mov	b,@r0
      0002C0 E7               [12] 1053 	mov	a,@r1
      0002C1 B5 F0 0A         [24] 1054 	cjne	a,b,00128$
      0002C4 08               [12] 1055 	inc	r0
      0002C5 86 F0            [24] 1056 	mov	b,@r0
      0002C7 09               [12] 1057 	inc	r1
      0002C8 E7               [12] 1058 	mov	a,@r1
      0002C9 B5 F0 02         [24] 1059 	cjne	a,b,00128$
      0002CC 80 02            [24] 1060 	sjmp	00129$
      0002CE                       1061 00128$:
      0002CE 80 66            [24] 1062 	sjmp	00106$
      0002D0                       1063 00129$:
      0002D0                       1064 00101$:
                                   1065 ;	89C51Board.c:148: timers[i].cookie = cookie;
      0002D0 90 02 BD         [24] 1066 	mov	dptr,#__mulint_PARM_2
      0002D3 EC               [12] 1067 	mov	a,r4
      0002D4 F0               [24] 1068 	movx	@dptr,a
      0002D5 ED               [12] 1069 	mov	a,r5
      0002D6 A3               [24] 1070 	inc	dptr
      0002D7 F0               [24] 1071 	movx	@dptr,a
      0002D8 90 00 09         [24] 1072 	mov	dptr,#0x0009
      0002DB 12 39 82         [24] 1073 	lcall	__mulint
      0002DE AE 82            [24] 1074 	mov	r6, dpl
      0002E0 AF 83            [24] 1075 	mov	r7, dph
      0002E2 EE               [12] 1076 	mov	a,r6
      0002E3 24 13            [12] 1077 	add	a, #_timers
      0002E5 FE               [12] 1078 	mov	r6,a
      0002E6 EF               [12] 1079 	mov	a,r7
      0002E7 34 00            [12] 1080 	addc	a, #(_timers >> 8)
      0002E9 FF               [12] 1081 	mov	r7,a
      0002EA 8E 82            [24] 1082 	mov	dpl,r6
      0002EC 8F 83            [24] 1083 	mov	dph,r7
      0002EE A8 1E            [24] 1084 	mov	r0,_bp
      0002F0 08               [12] 1085 	inc	r0
      0002F1 E6               [12] 1086 	mov	a,@r0
      0002F2 F0               [24] 1087 	movx	@dptr,a
      0002F3 08               [12] 1088 	inc	r0
      0002F4 E6               [12] 1089 	mov	a,@r0
      0002F5 A3               [24] 1090 	inc	dptr
      0002F6 F0               [24] 1091 	movx	@dptr,a
                                   1092 ;	89C51Board.c:149: timers[i].periodMilliseconds = milliSeconds;
      0002F7 8E 82            [24] 1093 	mov	dpl,r6
      0002F9 8F 83            [24] 1094 	mov	dph,r7
      0002FB A3               [24] 1095 	inc	dptr
      0002FC A3               [24] 1096 	inc	dptr
      0002FD E5 1E            [12] 1097 	mov	a,_bp
      0002FF 24 FC            [12] 1098 	add	a,#0xfc
      000301 F8               [12] 1099 	mov	r0,a
      000302 E6               [12] 1100 	mov	a,@r0
      000303 F0               [24] 1101 	movx	@dptr,a
      000304 08               [12] 1102 	inc	r0
      000305 E6               [12] 1103 	mov	a,@r0
      000306 A3               [24] 1104 	inc	dptr
      000307 F0               [24] 1105 	movx	@dptr,a
                                   1106 ;	89C51Board.c:150: timers[i].ticksSoFar = 0;
      000308 8E 82            [24] 1107 	mov	dpl,r6
      00030A 8F 83            [24] 1108 	mov	dph,r7
      00030C A3               [24] 1109 	inc	dptr
      00030D A3               [24] 1110 	inc	dptr
      00030E A3               [24] 1111 	inc	dptr
      00030F A3               [24] 1112 	inc	dptr
      000310 E4               [12] 1113 	clr	a
      000311 F0               [24] 1114 	movx	@dptr,a
      000312 A3               [24] 1115 	inc	dptr
      000313 F0               [24] 1116 	movx	@dptr,a
                                   1117 ;	89C51Board.c:151: timers[i].enabled = 1;
      000314 74 06            [12] 1118 	mov	a,#0x06
      000316 2E               [12] 1119 	add	a, r6
      000317 F5 82            [12] 1120 	mov	dpl,a
      000319 E4               [12] 1121 	clr	a
      00031A 3F               [12] 1122 	addc	a, r7
      00031B F5 83            [12] 1123 	mov	dph,a
      00031D 74 01            [12] 1124 	mov	a,#0x01
      00031F F0               [24] 1125 	movx	@dptr,a
                                   1126 ;	89C51Board.c:152: timers[i].callback = callback;
      000320 74 07            [12] 1127 	mov	a,#0x07
      000322 2E               [12] 1128 	add	a, r6
      000323 F5 82            [12] 1129 	mov	dpl,a
      000325 E4               [12] 1130 	clr	a
      000326 3F               [12] 1131 	addc	a, r7
      000327 F5 83            [12] 1132 	mov	dph,a
      000329 E5 1E            [12] 1133 	mov	a,_bp
      00032B 24 FA            [12] 1134 	add	a,#0xfa
      00032D F8               [12] 1135 	mov	r0,a
      00032E E6               [12] 1136 	mov	a,@r0
      00032F F0               [24] 1137 	movx	@dptr,a
      000330 08               [12] 1138 	inc	r0
      000331 E6               [12] 1139 	mov	a,@r0
      000332 A3               [24] 1140 	inc	dptr
      000333 F0               [24] 1141 	movx	@dptr,a
                                   1142 ;	89C51Board.c:153: return;
      000334 80 34            [24] 1143 	sjmp	00107$
      000336                       1144 00106$:
                                   1145 ;	89C51Board.c:144: for (i = 0; i < MAX_TIMERS; ++i)
      000336 74 09            [12] 1146 	mov	a,#0x09
      000338 2F               [12] 1147 	add	a, r7
      000339 FF               [12] 1148 	mov	r7,a
      00033A E4               [12] 1149 	clr	a
      00033B 3E               [12] 1150 	addc	a, r6
      00033C FE               [12] 1151 	mov	r6,a
      00033D 0A               [12] 1152 	inc	r2
      00033E BA 00 01         [24] 1153 	cjne	r2,#0x00,00130$
      000341 0B               [12] 1154 	inc	r3
      000342                       1155 00130$:
      000342 8A 04            [24] 1156 	mov	ar4,r2
      000344 8B 05            [24] 1157 	mov	ar5,r3
      000346 C3               [12] 1158 	clr	c
      000347 EA               [12] 1159 	mov	a,r2
      000348 94 0A            [12] 1160 	subb	a,#0x0a
      00034A EB               [12] 1161 	mov	a,r3
      00034B 64 80            [12] 1162 	xrl	a,#0x80
      00034D 94 80            [12] 1163 	subb	a,#0x80
      00034F 50 03            [24] 1164 	jnc	00131$
      000351 02 02 97         [24] 1165 	ljmp	00105$
      000354                       1166 00131$:
                                   1167 ;	89C51Board.c:157: pCrashDump("OutOfTimers");
      000354 12 03 59         [24] 1168 	lcall	00132$
      000357 80 11            [24] 1169 	sjmp	00133$
      000359                       1170 00132$:
      000359 90 00 11         [24] 1171 	mov	dptr,#_pCrashDump
      00035C E0               [24] 1172 	movx	a,@dptr
      00035D C0 E0            [24] 1173 	push	acc
      00035F A3               [24] 1174 	inc	dptr
      000360 E0               [24] 1175 	movx	a,@dptr
      000361 C0 E0            [24] 1176 	push	acc
      000363 90 3A D5         [24] 1177 	mov	dptr,#___str_0
      000366 75 F0 80         [24] 1178 	mov	b, #0x80
      000369 22               [24] 1179 	ret
      00036A                       1180 00133$:
      00036A                       1181 00107$:
                                   1182 ;	89C51Board.c:159: }
      00036A 85 1E 81         [24] 1183 	mov	sp,_bp
      00036D D0 1E            [24] 1184 	pop	_bp
      00036F 22               [24] 1185 	ret
                                   1186 ;------------------------------------------------------------
                                   1187 ;Allocation info for local variables in function 'Hardware_EnableTimer'
                                   1188 ;------------------------------------------------------------
                                   1189 ;enabled       Allocated to stack - _bp -4 +2 
                                   1190 ;cookie        Allocated to registers r6 r7 
                                   1191 ;i             Allocated to registers r4 r5 
                                   1192 ;sloc0         Allocated to stack - _bp +1 +2 
                                   1193 ;sloc1         Allocated to stack - _bp +3 +2 
                                   1194 ;sloc2         Allocated to stack - _bp +9 +1 
                                   1195 ;------------------------------------------------------------
                                   1196 ;	89C51Board.c:162: void Hardware_EnableTimer(int cookie, int enabled) REENTRANT
                                   1197 ;	-----------------------------------------
                                   1198 ;	 function Hardware_EnableTimer
                                   1199 ;	-----------------------------------------
      000370                       1200 _Hardware_EnableTimer:
      000370 C0 1E            [24] 1201 	push	_bp
      000372 E5 81            [12] 1202 	mov	a,sp
      000374 F5 1E            [12] 1203 	mov	_bp,a
      000376 24 04            [12] 1204 	add	a,#0x04
      000378 F5 81            [12] 1205 	mov	sp,a
      00037A AE 82            [24] 1206 	mov	r6, dpl
      00037C AF 83            [24] 1207 	mov	r7, dph
                                   1208 ;	89C51Board.c:165: for (i = 0; i < MAX_TIMERS; ++i)
      00037E 7C 00            [12] 1209 	mov	r4,#0x00
      000380 7D 00            [12] 1210 	mov	r5,#0x00
      000382 7A 00            [12] 1211 	mov	r2,#0x00
      000384 7B 00            [12] 1212 	mov	r3,#0x00
      000386 A8 1E            [24] 1213 	mov	r0,_bp
      000388 08               [12] 1214 	inc	r0
      000389 E4               [12] 1215 	clr	a
      00038A F6               [12] 1216 	mov	@r0,a
      00038B 08               [12] 1217 	inc	r0
      00038C F6               [12] 1218 	mov	@r0,a
      00038D                       1219 00105$:
                                   1220 ;	89C51Board.c:167: if (timers[i].cookie == 0 || timers[i].cookie == cookie)
      00038D A8 1E            [24] 1221 	mov	r0,_bp
      00038F 08               [12] 1222 	inc	r0
      000390 E6               [12] 1223 	mov	a,@r0
      000391 24 13            [12] 1224 	add	a, #_timers
      000393 F5 82            [12] 1225 	mov	dpl,a
      000395 08               [12] 1226 	inc	r0
      000396 E6               [12] 1227 	mov	a,@r0
      000397 34 00            [12] 1228 	addc	a, #(_timers >> 8)
      000399 F5 83            [12] 1229 	mov	dph,a
      00039B E5 1E            [12] 1230 	mov	a,_bp
      00039D 24 03            [12] 1231 	add	a,#0x03
      00039F F8               [12] 1232 	mov	r0,a
      0003A0 E0               [24] 1233 	movx	a,@dptr
      0003A1 F6               [12] 1234 	mov	@r0,a
      0003A2 A3               [24] 1235 	inc	dptr
      0003A3 E0               [24] 1236 	movx	a,@dptr
      0003A4 08               [12] 1237 	inc	r0
      0003A5 F6               [12] 1238 	mov	@r0,a
      0003A6 E5 1E            [12] 1239 	mov	a,_bp
      0003A8 24 03            [12] 1240 	add	a,#0x03
      0003AA F8               [12] 1241 	mov	r0,a
      0003AB E6               [12] 1242 	mov	a,@r0
      0003AC 08               [12] 1243 	inc	r0
      0003AD 46               [12] 1244 	orl	a,@r0
      0003AE 60 12            [24] 1245 	jz	00101$
      0003B0 E5 1E            [12] 1246 	mov	a,_bp
      0003B2 24 03            [12] 1247 	add	a,#0x03
      0003B4 F8               [12] 1248 	mov	r0,a
      0003B5 E6               [12] 1249 	mov	a,@r0
      0003B6 B5 06 07         [24] 1250 	cjne	a,ar6,00122$
      0003B9 08               [12] 1251 	inc	r0
      0003BA E6               [12] 1252 	mov	a,@r0
      0003BB B5 07 02         [24] 1253 	cjne	a,ar7,00122$
      0003BE 80 02            [24] 1254 	sjmp	00123$
      0003C0                       1255 00122$:
      0003C0 80 30            [24] 1256 	sjmp	00106$
      0003C2                       1257 00123$:
      0003C2                       1258 00101$:
                                   1259 ;	89C51Board.c:169: timers[i].enabled = enabled;
      0003C2 90 02 BD         [24] 1260 	mov	dptr,#__mulint_PARM_2
      0003C5 EC               [12] 1261 	mov	a,r4
      0003C6 F0               [24] 1262 	movx	@dptr,a
      0003C7 ED               [12] 1263 	mov	a,r5
      0003C8 A3               [24] 1264 	inc	dptr
      0003C9 F0               [24] 1265 	movx	@dptr,a
      0003CA 90 00 09         [24] 1266 	mov	dptr,#0x0009
      0003CD 12 39 82         [24] 1267 	lcall	__mulint
      0003D0 AF 82            [24] 1268 	mov	r7, dpl
      0003D2 AE 83            [24] 1269 	mov	r6, dph
      0003D4 EF               [12] 1270 	mov	a,r7
      0003D5 24 13            [12] 1271 	add	a, #_timers
      0003D7 FF               [12] 1272 	mov	r7,a
      0003D8 EE               [12] 1273 	mov	a,r6
      0003D9 34 00            [12] 1274 	addc	a, #(_timers >> 8)
      0003DB FE               [12] 1275 	mov	r6,a
      0003DC 74 06            [12] 1276 	mov	a,#0x06
      0003DE 2F               [12] 1277 	add	a, r7
      0003DF FF               [12] 1278 	mov	r7,a
      0003E0 E4               [12] 1279 	clr	a
      0003E1 3E               [12] 1280 	addc	a, r6
      0003E2 FE               [12] 1281 	mov	r6,a
      0003E3 E5 1E            [12] 1282 	mov	a,_bp
      0003E5 24 FC            [12] 1283 	add	a,#0xfc
      0003E7 F8               [12] 1284 	mov	r0,a
      0003E8 86 05            [24] 1285 	mov	ar5,@r0
      0003EA 8F 82            [24] 1286 	mov	dpl,r7
      0003EC 8E 83            [24] 1287 	mov	dph,r6
      0003EE ED               [12] 1288 	mov	a,r5
      0003EF F0               [24] 1289 	movx	@dptr,a
                                   1290 ;	89C51Board.c:170: return;
      0003F0 80 22            [24] 1291 	sjmp	00107$
      0003F2                       1292 00106$:
                                   1293 ;	89C51Board.c:165: for (i = 0; i < MAX_TIMERS; ++i)
      0003F2 A8 1E            [24] 1294 	mov	r0,_bp
      0003F4 08               [12] 1295 	inc	r0
      0003F5 74 09            [12] 1296 	mov	a,#0x09
      0003F7 26               [12] 1297 	add	a, @r0
      0003F8 F6               [12] 1298 	mov	@r0,a
      0003F9 E4               [12] 1299 	clr	a
      0003FA 08               [12] 1300 	inc	r0
      0003FB 36               [12] 1301 	addc	a, @r0
      0003FC F6               [12] 1302 	mov	@r0,a
      0003FD 0A               [12] 1303 	inc	r2
      0003FE BA 00 01         [24] 1304 	cjne	r2,#0x00,00124$
      000401 0B               [12] 1305 	inc	r3
      000402                       1306 00124$:
      000402 8A 04            [24] 1307 	mov	ar4,r2
      000404 8B 05            [24] 1308 	mov	ar5,r3
      000406 C3               [12] 1309 	clr	c
      000407 EA               [12] 1310 	mov	a,r2
      000408 94 0A            [12] 1311 	subb	a,#0x0a
      00040A EB               [12] 1312 	mov	a,r3
      00040B 64 80            [12] 1313 	xrl	a,#0x80
      00040D 94 80            [12] 1314 	subb	a,#0x80
      00040F 50 03            [24] 1315 	jnc	00125$
      000411 02 03 8D         [24] 1316 	ljmp	00105$
      000414                       1317 00125$:
      000414                       1318 00107$:
                                   1319 ;	89C51Board.c:173: }
      000414 85 1E 81         [24] 1320 	mov	sp,_bp
      000417 D0 1E            [24] 1321 	pop	_bp
      000419 22               [24] 1322 	ret
                                   1323 ;------------------------------------------------------------
                                   1324 ;Allocation info for local variables in function 'Hardware_WriteDisplayBuffer'
                                   1325 ;------------------------------------------------------------
                                   1326 ;buffer        Allocated to registers r5 r6 r7 
                                   1327 ;------------------------------------------------------------
                                   1328 ;	89C51Board.c:176: void Hardware_WriteDisplayBuffer(unsigned char* buffer) REENTRANT
                                   1329 ;	-----------------------------------------
                                   1330 ;	 function Hardware_WriteDisplayBuffer
                                   1331 ;	-----------------------------------------
      00041A                       1332 _Hardware_WriteDisplayBuffer:
                                   1333 ;	89C51Board.c:178: DirectWriteToDisplay(buffer);
                                   1334 ;	89C51Board.c:179: }
      00041A 02 26 34         [24] 1335 	ljmp	_DirectWriteToDisplay
                                   1336 ;------------------------------------------------------------
                                   1337 ;Allocation info for local variables in function 'Hardware_SetRtc'
                                   1338 ;------------------------------------------------------------
                                   1339 ;dts           Allocated to registers r5 r6 r7 
                                   1340 ;------------------------------------------------------------
                                   1341 ;	89C51Board.c:181: void Hardware_SetRtc(DateTimeStruct* dts) REENTRANT
                                   1342 ;	-----------------------------------------
                                   1343 ;	 function Hardware_SetRtc
                                   1344 ;	-----------------------------------------
      00041D                       1345 _Hardware_SetRtc:
                                   1346 ;	89C51Board.c:183: Rtc_WriteClock(dts);
                                   1347 ;	89C51Board.c:184: }
      00041D 02 2B 70         [24] 1348 	ljmp	_Rtc_WriteClock
                                   1349 ;------------------------------------------------------------
                                   1350 ;Allocation info for local variables in function 'Hardware_GetRtc'
                                   1351 ;------------------------------------------------------------
                                   1352 ;dts           Allocated to registers r5 r6 r7 
                                   1353 ;------------------------------------------------------------
                                   1354 ;	89C51Board.c:186: void Hardware_GetRtc(DateTimeStruct* dts) REENTRANT
                                   1355 ;	-----------------------------------------
                                   1356 ;	 function Hardware_GetRtc
                                   1357 ;	-----------------------------------------
      000420                       1358 _Hardware_GetRtc:
                                   1359 ;	89C51Board.c:188: Rtc_ReadClock(dts);
                                   1360 ;	89C51Board.c:189: }
      000420 02 29 82         [24] 1361 	ljmp	_Rtc_ReadClock
                                   1362 ;------------------------------------------------------------
                                   1363 ;Allocation info for local variables in function 'Hardware_GetKeyState'
                                   1364 ;------------------------------------------------------------
                                   1365 ;keys          Allocated to stack - _bp +1 +3 
                                   1366 ;rowCount      Allocated to registers r4 
                                   1367 ;colCount      Allocated to stack - _bp +4 +1 
                                   1368 ;portValue     Allocated to registers 
                                   1369 ;sloc0         Allocated to stack - _bp +4 +1 
                                   1370 ;------------------------------------------------------------
                                   1371 ;	89C51Board.c:191: void Hardware_GetKeyState(int *keys) REENTRANT
                                   1372 ;	-----------------------------------------
                                   1373 ;	 function Hardware_GetKeyState
                                   1374 ;	-----------------------------------------
      000423                       1375 _Hardware_GetKeyState:
      000423 C0 1E            [24] 1376 	push	_bp
      000425 85 81 1E         [24] 1377 	mov	_bp,sp
      000428 C0 82            [24] 1378 	push	dpl
      00042A C0 83            [24] 1379 	push	dph
      00042C C0 F0            [24] 1380 	push	b
      00042E 05 81            [12] 1381 	inc	sp
                                   1382 ;	89C51Board.c:195: *keys = 0;
      000430 A8 1E            [24] 1383 	mov	r0,_bp
      000432 08               [12] 1384 	inc	r0
      000433 86 82            [24] 1385 	mov	dpl,@r0
      000435 08               [12] 1386 	inc	r0
      000436 86 83            [24] 1387 	mov	dph,@r0
      000438 08               [12] 1388 	inc	r0
      000439 86 F0            [24] 1389 	mov	b,@r0
      00043B E4               [12] 1390 	clr	a
      00043C 12 39 67         [24] 1391 	lcall	__gptrput
      00043F A3               [24] 1392 	inc	dptr
      000440 12 39 67         [24] 1393 	lcall	__gptrput
                                   1394 ;	89C51Board.c:197: for (rowCount = 0; rowCount < 4; ++rowCount)
      000443 FC               [12] 1395 	mov	r4,a
      000444 FB               [12] 1396 	mov	r3,a
      000445                       1397 00107$:
                                   1398 ;	89C51Board.c:199: P1 = ~(0x80 >> rowCount) | 0xf;
      000445 C0 04            [24] 1399 	push	ar4
      000447 8B F0            [24] 1400 	mov	b,r3
      000449 05 F0            [12] 1401 	inc	b
      00044B 7A 80            [12] 1402 	mov	r2,#0x80
      00044D E4               [12] 1403 	clr	a
      00044E FC               [12] 1404 	mov	r4,a
      00044F 33               [12] 1405 	rlc	a
      000450 92 D2            [24] 1406 	mov	ov,c
      000452 80 08            [24] 1407 	sjmp	00136$
      000454                       1408 00135$:
      000454 A2 D2            [12] 1409 	mov	c,ov
      000456 EC               [12] 1410 	mov	a,r4
      000457 13               [12] 1411 	rrc	a
      000458 FC               [12] 1412 	mov	r4,a
      000459 EA               [12] 1413 	mov	a,r2
      00045A 13               [12] 1414 	rrc	a
      00045B FA               [12] 1415 	mov	r2,a
      00045C                       1416 00136$:
      00045C D5 F0 F5         [24] 1417 	djnz	b,00135$
      00045F EA               [12] 1418 	mov	a,r2
      000460 F4               [12] 1419 	cpl	a
      000461 FA               [12] 1420 	mov	r2,a
      000462 74 0F            [12] 1421 	mov	a,#0x0f
      000464 4A               [12] 1422 	orl	a,r2
      000465 F5 90            [12] 1423 	mov	_P1,a
                                   1424 ;	89C51Board.c:200: for (colCount = 0; colCount < 4; ++colCount)
      000467 E5 1E            [12] 1425 	mov	a,_bp
      000469 24 04            [12] 1426 	add	a,#0x04
      00046B F8               [12] 1427 	mov	r0,a
      00046C 76 00            [12] 1428 	mov	@r0,#0x00
      00046E 7F 00            [12] 1429 	mov	r7,#0x00
                                   1430 ;	89C51Board.c:197: for (rowCount = 0; rowCount < 4; ++rowCount)
      000470 D0 04            [24] 1431 	pop	ar4
                                   1432 ;	89C51Board.c:200: for (colCount = 0; colCount < 4; ++colCount)
      000472                       1433 00105$:
                                   1434 ;	89C51Board.c:202: portValue = ~P1 & (0x01 << colCount);
      000472 C0 04            [24] 1435 	push	ar4
      000474 E5 90            [12] 1436 	mov	a,_P1
      000476 F4               [12] 1437 	cpl	a
      000477 FA               [12] 1438 	mov	r2,a
      000478 8F F0            [24] 1439 	mov	b,r7
      00047A 05 F0            [12] 1440 	inc	b
      00047C 74 01            [12] 1441 	mov	a,#0x01
      00047E 80 02            [24] 1442 	sjmp	00138$
      000480                       1443 00137$:
      000480 25 E0            [12] 1444 	add	a,acc
      000482                       1445 00138$:
      000482 D5 F0 FB         [24] 1446 	djnz	b,00137$
      000485 5A               [12] 1447 	anl	a,r2
                                   1448 ;	89C51Board.c:203: if (portValue)
      000486 D0 04            [24] 1449 	pop	ar4
      000488 60 3A            [24] 1450 	jz	00106$
                                   1451 ;	89C51Board.c:205: *keys = rowCount * 4 + colCount + 1;
      00048A 8C 02            [24] 1452 	mov	ar2,r4
      00048C 7F 00            [12] 1453 	mov	r7,#0x00
      00048E EA               [12] 1454 	mov	a,r2
      00048F 2A               [12] 1455 	add	a,r2
      000490 FA               [12] 1456 	mov	r2,a
      000491 EF               [12] 1457 	mov	a,r7
      000492 33               [12] 1458 	rlc	a
      000493 FF               [12] 1459 	mov	r7,a
      000494 EA               [12] 1460 	mov	a,r2
      000495 2A               [12] 1461 	add	a,r2
      000496 FA               [12] 1462 	mov	r2,a
      000497 EF               [12] 1463 	mov	a,r7
      000498 33               [12] 1464 	rlc	a
      000499 FF               [12] 1465 	mov	r7,a
      00049A E5 1E            [12] 1466 	mov	a,_bp
      00049C 24 04            [12] 1467 	add	a,#0x04
      00049E F8               [12] 1468 	mov	r0,a
      00049F 86 05            [24] 1469 	mov	ar5,@r0
      0004A1 7E 00            [12] 1470 	mov	r6,#0x00
      0004A3 ED               [12] 1471 	mov	a,r5
      0004A4 2A               [12] 1472 	add	a, r2
      0004A5 FA               [12] 1473 	mov	r2,a
      0004A6 EE               [12] 1474 	mov	a,r6
      0004A7 3F               [12] 1475 	addc	a, r7
      0004A8 FF               [12] 1476 	mov	r7,a
      0004A9 0A               [12] 1477 	inc	r2
      0004AA BA 00 01         [24] 1478 	cjne	r2,#0x00,00140$
      0004AD 0F               [12] 1479 	inc	r7
      0004AE                       1480 00140$:
      0004AE A8 1E            [24] 1481 	mov	r0,_bp
      0004B0 08               [12] 1482 	inc	r0
      0004B1 86 82            [24] 1483 	mov	dpl,@r0
      0004B3 08               [12] 1484 	inc	r0
      0004B4 86 83            [24] 1485 	mov	dph,@r0
      0004B6 08               [12] 1486 	inc	r0
      0004B7 86 F0            [24] 1487 	mov	b,@r0
      0004B9 EA               [12] 1488 	mov	a,r2
      0004BA 12 39 67         [24] 1489 	lcall	__gptrput
      0004BD A3               [24] 1490 	inc	dptr
      0004BE EF               [12] 1491 	mov	a,r7
      0004BF 12 39 67         [24] 1492 	lcall	__gptrput
                                   1493 ;	89C51Board.c:206: return;
      0004C2 80 18            [24] 1494 	sjmp	00109$
      0004C4                       1495 00106$:
                                   1496 ;	89C51Board.c:200: for (colCount = 0; colCount < 4; ++colCount)
      0004C4 0F               [12] 1497 	inc	r7
      0004C5 E5 1E            [12] 1498 	mov	a,_bp
      0004C7 24 04            [12] 1499 	add	a,#0x04
      0004C9 F8               [12] 1500 	mov	r0,a
      0004CA A6 07            [24] 1501 	mov	@r0,ar7
      0004CC BF 04 00         [24] 1502 	cjne	r7,#0x04,00141$
      0004CF                       1503 00141$:
      0004CF 40 A1            [24] 1504 	jc	00105$
                                   1505 ;	89C51Board.c:197: for (rowCount = 0; rowCount < 4; ++rowCount)
      0004D1 0B               [12] 1506 	inc	r3
      0004D2 8B 04            [24] 1507 	mov	ar4,r3
      0004D4 BB 04 00         [24] 1508 	cjne	r3,#0x04,00143$
      0004D7                       1509 00143$:
      0004D7 50 03            [24] 1510 	jnc	00144$
      0004D9 02 04 45         [24] 1511 	ljmp	00107$
      0004DC                       1512 00144$:
      0004DC                       1513 00109$:
                                   1514 ;	89C51Board.c:211: }
      0004DC 85 1E 81         [24] 1515 	mov	sp,_bp
      0004DF D0 1E            [24] 1516 	pop	_bp
      0004E1 22               [24] 1517 	ret
                                   1518 ;------------------------------------------------------------
                                   1519 ;Allocation info for local variables in function 'Hardware_GetInputPortValues'
                                   1520 ;------------------------------------------------------------
                                   1521 ;pValue        Allocated to registers r5 r6 r7 
                                   1522 ;------------------------------------------------------------
                                   1523 ;	89C51Board.c:214: void Hardware_GetInputPortValues(unsigned char *pValue) REENTRANT
                                   1524 ;	-----------------------------------------
                                   1525 ;	 function Hardware_GetInputPortValues
                                   1526 ;	-----------------------------------------
      0004E2                       1527 _Hardware_GetInputPortValues:
      0004E2 AD 82            [24] 1528 	mov	r5, dpl
      0004E4 AE 83            [24] 1529 	mov	r6, dph
      0004E6 AF F0            [24] 1530 	mov	r7, b
                                   1531 ;	89C51Board.c:216: P3 = 0xfC;
      0004E8 75 B0 FC         [24] 1532 	mov	_P3,#0xfc
                                   1533 ;	89C51Board.c:217: *pValue = P3 & 0x3C;
      0004EB AC B0            [24] 1534 	mov	r4,_P3
      0004ED 53 04 3C         [24] 1535 	anl	ar4,#0x3c
      0004F0 8D 82            [24] 1536 	mov	dpl,r5
      0004F2 8E 83            [24] 1537 	mov	dph,r6
      0004F4 8F F0            [24] 1538 	mov	b,r7
                                   1539 ;	89C51Board.c:218: *pValue = ~ (*pValue); // This hardware has logic 1 as pulled down
      0004F6 EC               [12] 1540 	mov	a,r4
      0004F7 12 39 67         [24] 1541 	lcall	__gptrput
      0004FA F4               [12] 1542 	cpl	a
      0004FB FC               [12] 1543 	mov	r4,a
      0004FC 8D 82            [24] 1544 	mov	dpl,r5
      0004FE 8E 83            [24] 1545 	mov	dph,r6
      000500 8F F0            [24] 1546 	mov	b,r7
      000502 12 39 67         [24] 1547 	lcall	__gptrput
                                   1548 ;	89C51Board.c:219: *pValue &= ~ (0x40); // Do not use zone5
      000505 53 04 BF         [24] 1549 	anl	ar4,#0xbf
      000508 8D 82            [24] 1550 	mov	dpl,r5
      00050A 8E 83            [24] 1551 	mov	dph,r6
      00050C 8F F0            [24] 1552 	mov	b,r7
      00050E EC               [12] 1553 	mov	a,r4
                                   1554 ;	89C51Board.c:221: }
      00050F 02 39 67         [24] 1555 	ljmp	__gptrput
                                   1556 ;------------------------------------------------------------
                                   1557 ;Allocation info for local variables in function 'Hardware_SetOutputPortValues'
                                   1558 ;------------------------------------------------------------
                                   1559 ;value         Allocated to registers 
                                   1560 ;------------------------------------------------------------
                                   1561 ;	89C51Board.c:223: void Hardware_SetOutputPortValues(unsigned char value) REENTRANT
                                   1562 ;	-----------------------------------------
                                   1563 ;	 function Hardware_SetOutputPortValues
                                   1564 ;	-----------------------------------------
      000512                       1565 _Hardware_SetOutputPortValues:
      000512 85 82 A0         [24] 1566 	mov	_P2,dpl
                                   1567 ;	89C51Board.c:225: P2 = value;	
                                   1568 ;	89C51Board.c:226: }
      000515 22               [24] 1569 	ret
                                   1570 ;------------------------------------------------------------
                                   1571 ;Allocation info for local variables in function 'Hardware_CrashDump'
                                   1572 ;------------------------------------------------------------
                                   1573 ;message       Allocated to registers 
                                   1574 ;buffer        Allocated to stack - _bp +2 +33 
                                   1575 ;i             Allocated to registers r2 
                                   1576 ;sloc0         Allocated to stack - _bp +1 +1 
                                   1577 ;------------------------------------------------------------
                                   1578 ;	89C51Board.c:228: void Hardware_CrashDump(unsigned char* message) REENTRANT
                                   1579 ;	-----------------------------------------
                                   1580 ;	 function Hardware_CrashDump
                                   1581 ;	-----------------------------------------
      000516                       1582 _Hardware_CrashDump:
      000516 C0 1E            [24] 1583 	push	_bp
      000518 E5 81            [12] 1584 	mov	a,sp
      00051A F5 1E            [12] 1585 	mov	_bp,a
      00051C 24 22            [12] 1586 	add	a,#0x22
      00051E F5 81            [12] 1587 	mov	sp,a
      000520 AD 82            [24] 1588 	mov	r5, dpl
      000522 AE 83            [24] 1589 	mov	r6, dph
      000524 AF F0            [24] 1590 	mov	r7, b
                                   1591 ;	89C51Board.c:232: for (i = 0; i < SCREEN_BUFFER_SIZE; ++i)
      000526 E5 1E            [12] 1592 	mov	a,_bp
      000528 24 02            [12] 1593 	add	a,#0x02
      00052A FC               [12] 1594 	mov	r4,a
      00052B FB               [12] 1595 	mov	r3,a
      00052C 7A 00            [12] 1596 	mov	r2,#0x00
      00052E                       1597 00108$:
                                   1598 ;	89C51Board.c:234: if (*message != 0)
      00052E 8D 82            [24] 1599 	mov	dpl,r5
      000530 8E 83            [24] 1600 	mov	dph,r6
      000532 8F F0            [24] 1601 	mov	b,r7
      000534 A8 1E            [24] 1602 	mov	r0,_bp
      000536 08               [12] 1603 	inc	r0
      000537 12 3A B5         [24] 1604 	lcall	__gptrget
      00053A F6               [12] 1605 	mov	@r0,a
      00053B A8 1E            [24] 1606 	mov	r0,_bp
      00053D 08               [12] 1607 	inc	r0
      00053E E6               [12] 1608 	mov	a,@r0
      00053F 60 0F            [24] 1609 	jz	00102$
                                   1610 ;	89C51Board.c:236: buffer[i] = *message;
      000541 EA               [12] 1611 	mov	a,r2
      000542 2B               [12] 1612 	add	a, r3
      000543 F8               [12] 1613 	mov	r0,a
      000544 A9 1E            [24] 1614 	mov	r1,_bp
      000546 09               [12] 1615 	inc	r1
      000547 E7               [12] 1616 	mov	a,@r1
      000548 F6               [12] 1617 	mov	@r0,a
                                   1618 ;	89C51Board.c:237: ++message;
      000549 0D               [12] 1619 	inc	r5
      00054A BD 00 08         [24] 1620 	cjne	r5,#0x00,00109$
      00054D 0E               [12] 1621 	inc	r6
      00054E 80 05            [24] 1622 	sjmp	00109$
      000550                       1623 00102$:
                                   1624 ;	89C51Board.c:241: buffer[i] = ' ';
      000550 EA               [12] 1625 	mov	a,r2
      000551 2C               [12] 1626 	add	a, r4
      000552 F8               [12] 1627 	mov	r0,a
      000553 76 20            [12] 1628 	mov	@r0,#0x20
      000555                       1629 00109$:
                                   1630 ;	89C51Board.c:232: for (i = 0; i < SCREEN_BUFFER_SIZE; ++i)
      000555 0A               [12] 1631 	inc	r2
      000556 BA 20 00         [24] 1632 	cjne	r2,#0x20,00139$
      000559                       1633 00139$:
      000559 40 D3            [24] 1634 	jc	00108$
                                   1635 ;	89C51Board.c:246: DirectWriteToDisplay(buffer);
      00055B 7F 00            [12] 1636 	mov	r7,#0x00
      00055D 7E 40            [12] 1637 	mov	r6,#0x40
      00055F 8C 82            [24] 1638 	mov	dpl, r4
      000561 8F 83            [24] 1639 	mov	dph, r7
      000563 8E F0            [24] 1640 	mov	b, r6
      000565 12 26 34         [24] 1641 	lcall	_DirectWriteToDisplay
                                   1642 ;	89C51Board.c:247: while (1);
      000568                       1643 00106$:
      000568 80 FE            [24] 1644 	sjmp	00106$
                                   1645 ;	89C51Board.c:249: }
      00056A 85 1E 81         [24] 1646 	mov	sp,_bp
      00056D D0 1E            [24] 1647 	pop	_bp
      00056F 22               [24] 1648 	ret
                                   1649 	.area CSEG    (CODE)
                                   1650 	.area CONST   (CODE)
                                   1651 	.area CONST   (CODE)
      003AD5                       1652 ___str_0:
      003AD5 4F 75 74 4F 66 54 69  1653 	.ascii "OutOfTimers"
             6D 65 72 73
      003AE0 00                    1654 	.db 0x00
                                   1655 	.area CSEG    (CODE)
                                   1656 	.area XINIT   (CODE)
                                   1657 	.area CABS    (ABS,CODE)
