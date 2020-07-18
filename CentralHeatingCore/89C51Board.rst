                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module 89C51Board
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
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
                                    456 	.area	SSEG
      00005C                        457 __start__stack:
      00005C                        458 	.ds	1
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
                                    478 ; external ram data
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
                                    506 ; external initialized ram data
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
      000000 02 00 06         [24]  524 	ljmp	__sdcc_gsinit_startup
                                    525 ;--------------------------------------------------------
                                    526 ; global & static initialisations
                                    527 ;--------------------------------------------------------
                                    528 	.area HOME    (CODE)
                                    529 	.area GSINIT  (CODE)
                                    530 	.area GSFINAL (CODE)
                                    531 	.area GSINIT  (CODE)
                                    532 	.globl __sdcc_gsinit_startup
                                    533 	.globl __sdcc_program_startup
                                    534 	.globl __start__stack
                                    535 	.globl __mcs51_genXINIT
                                    536 	.globl __mcs51_genXRAMCLEAR
                                    537 	.globl __mcs51_genRAMCLEAR
                                    538 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  539 	ljmp	__sdcc_program_startup
                                    540 ;--------------------------------------------------------
                                    541 ; Home
                                    542 ;--------------------------------------------------------
                                    543 	.area HOME    (CODE)
                                    544 	.area HOME    (CODE)
      000003                        545 __sdcc_program_startup:
      000003 02 00 62         [24]  546 	ljmp	_main
                                    547 ;	return from main will return to caller
                                    548 ;--------------------------------------------------------
                                    549 ; code
                                    550 ;--------------------------------------------------------
                                    551 	.area CSEG    (CODE)
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'main'
                                    554 ;------------------------------------------------------------
                                    555 ;	89C51Board.c:60: void main(void)
                                    556 ;	-----------------------------------------
                                    557 ;	 function main
                                    558 ;	-----------------------------------------
      000062                        559 _main:
                           000007   560 	ar7 = 0x07
                           000006   561 	ar6 = 0x06
                           000005   562 	ar5 = 0x05
                           000004   563 	ar4 = 0x04
                           000003   564 	ar3 = 0x03
                           000002   565 	ar2 = 0x02
                           000001   566 	ar1 = 0x01
                           000000   567 	ar0 = 0x00
                                    568 ;	89C51Board.c:62: CKCON0 = 0x01;						// Initial X2 Mode (BUS Clock = 58.9824 MHz) 
      000062 75 8F 01         [24]  569 	mov	_CKCON0,#0x01
                                    570 ;	89C51Board.c:66: Hardware_InitialiseHardware();
      000065 12 02 39         [24]  571 	lcall	_Hardware_InitialiseHardware
                                    572 ;	89C51Board.c:74: UserProgram();
      000068 12 15 0C         [24]  573 	lcall	_UserProgram
                                    574 ;	89C51Board.c:76: Hardware_ScheduleUserCalls();
                                    575 ;	89C51Board.c:78: }   
      00006B 02 00 6E         [24]  576 	ljmp	_Hardware_ScheduleUserCalls
                                    577 ;------------------------------------------------------------
                                    578 ;Allocation info for local variables in function 'Hardware_ScheduleUserCalls'
                                    579 ;------------------------------------------------------------
                                    580 ;timerCounter              Allocated to stack - _bp +8
                                    581 ;c                         Allocated to stack - _bp +4
                                    582 ;pTimer                    Allocated to stack - _bp +10
                                    583 ;sloc0                     Allocated to stack - _bp +1
                                    584 ;------------------------------------------------------------
                                    585 ;	89C51Board.c:81: void Hardware_ScheduleUserCalls() REENTRANT
                                    586 ;	-----------------------------------------
                                    587 ;	 function Hardware_ScheduleUserCalls
                                    588 ;	-----------------------------------------
      00006E                        589 _Hardware_ScheduleUserCalls:
      00006E C0 4D            [24]  590 	push	_bp
      000070 E5 81            [12]  591 	mov	a,sp
      000072 F5 4D            [12]  592 	mov	_bp,a
      000074 24 0C            [12]  593 	add	a,#0x0c
      000076 F5 81            [12]  594 	mov	sp,a
                                    595 ;	89C51Board.c:88: for (timerCounter = 0; timerCounter < MAX_TIMERS; ++timerCounter)
      000078                        596 00121$:
      000078 E5 4D            [12]  597 	mov	a,_bp
      00007A 24 08            [12]  598 	add	a,#0x08
      00007C F8               [12]  599 	mov	r0,a
      00007D E4               [12]  600 	clr	a
      00007E F6               [12]  601 	mov	@r0,a
      00007F 08               [12]  602 	inc	r0
      000080 F6               [12]  603 	mov	@r0,a
      000081 7C 00            [12]  604 	mov	r4,#0x00
      000083 7D 00            [12]  605 	mov	r5,#0x00
      000085                        606 00111$:
                                    607 ;	89C51Board.c:90: TimerSetup *pTimer = timers + timerCounter;
      000085 EC               [12]  608 	mov	a,r4
      000086 24 13            [12]  609 	add	a,#_timers
      000088 FA               [12]  610 	mov	r2,a
      000089 ED               [12]  611 	mov	a,r5
      00008A 34 00            [12]  612 	addc	a,#(_timers >> 8)
      00008C FB               [12]  613 	mov	r3,a
      00008D E5 4D            [12]  614 	mov	a,_bp
      00008F 24 0A            [12]  615 	add	a,#0x0a
      000091 F8               [12]  616 	mov	r0,a
      000092 A6 02            [24]  617 	mov	@r0,ar2
      000094 08               [12]  618 	inc	r0
      000095 A6 03            [24]  619 	mov	@r0,ar3
      000097 08               [12]  620 	inc	r0
      000098 76 00            [12]  621 	mov	@r0,#0x00
                                    622 ;	89C51Board.c:91: if (pTimer->cookie != 0 && pTimer->periodMilliseconds <= pTimer->ticksSoFar && pTimer->enabled)
      00009A E5 4D            [12]  623 	mov	a,_bp
      00009C 24 0A            [12]  624 	add	a,#0x0a
      00009E F8               [12]  625 	mov	r0,a
      00009F 86 82            [24]  626 	mov	dpl,@r0
      0000A1 08               [12]  627 	inc	r0
      0000A2 86 83            [24]  628 	mov	dph,@r0
      0000A4 08               [12]  629 	inc	r0
      0000A5 86 F0            [24]  630 	mov	b,@r0
      0000A7 12 3D E8         [24]  631 	lcall	__gptrget
      0000AA FE               [12]  632 	mov	r6,a
      0000AB A3               [24]  633 	inc	dptr
      0000AC 12 3D E8         [24]  634 	lcall	__gptrget
      0000AF FF               [12]  635 	mov	r7,a
      0000B0 4E               [12]  636 	orl	a,r6
      0000B1 70 03            [24]  637 	jnz	00151$
      0000B3 02 01 93         [24]  638 	ljmp	00102$
      0000B6                        639 00151$:
      0000B6 E5 4D            [12]  640 	mov	a,_bp
      0000B8 24 0A            [12]  641 	add	a,#0x0a
      0000BA F8               [12]  642 	mov	r0,a
      0000BB 74 02            [12]  643 	mov	a,#0x02
      0000BD 26               [12]  644 	add	a,@r0
      0000BE FB               [12]  645 	mov	r3,a
      0000BF E4               [12]  646 	clr	a
      0000C0 08               [12]  647 	inc	r0
      0000C1 36               [12]  648 	addc	a,@r0
      0000C2 FE               [12]  649 	mov	r6,a
      0000C3 08               [12]  650 	inc	r0
      0000C4 86 07            [24]  651 	mov	ar7,@r0
      0000C6 8B 82            [24]  652 	mov	dpl,r3
      0000C8 8E 83            [24]  653 	mov	dph,r6
      0000CA 8F F0            [24]  654 	mov	b,r7
      0000CC 12 3D E8         [24]  655 	lcall	__gptrget
      0000CF FB               [12]  656 	mov	r3,a
      0000D0 A3               [24]  657 	inc	dptr
      0000D1 12 3D E8         [24]  658 	lcall	__gptrget
      0000D4 FE               [12]  659 	mov	r6,a
      0000D5 E5 4D            [12]  660 	mov	a,_bp
      0000D7 24 0A            [12]  661 	add	a,#0x0a
      0000D9 F8               [12]  662 	mov	r0,a
      0000DA A9 4D            [24]  663 	mov	r1,_bp
      0000DC 09               [12]  664 	inc	r1
      0000DD 74 04            [12]  665 	mov	a,#0x04
      0000DF 26               [12]  666 	add	a,@r0
      0000E0 F7               [12]  667 	mov	@r1,a
      0000E1 E4               [12]  668 	clr	a
      0000E2 08               [12]  669 	inc	r0
      0000E3 36               [12]  670 	addc	a,@r0
      0000E4 09               [12]  671 	inc	r1
      0000E5 F7               [12]  672 	mov	@r1,a
      0000E6 08               [12]  673 	inc	r0
      0000E7 09               [12]  674 	inc	r1
      0000E8 E6               [12]  675 	mov	a,@r0
      0000E9 F7               [12]  676 	mov	@r1,a
      0000EA A8 4D            [24]  677 	mov	r0,_bp
      0000EC 08               [12]  678 	inc	r0
      0000ED 86 82            [24]  679 	mov	dpl,@r0
      0000EF 08               [12]  680 	inc	r0
      0000F0 86 83            [24]  681 	mov	dph,@r0
      0000F2 08               [12]  682 	inc	r0
      0000F3 86 F0            [24]  683 	mov	b,@r0
      0000F5 12 3D E8         [24]  684 	lcall	__gptrget
      0000F8 FA               [12]  685 	mov	r2,a
      0000F9 A3               [24]  686 	inc	dptr
      0000FA 12 3D E8         [24]  687 	lcall	__gptrget
      0000FD FF               [12]  688 	mov	r7,a
      0000FE C3               [12]  689 	clr	c
      0000FF EA               [12]  690 	mov	a,r2
      000100 9B               [12]  691 	subb	a,r3
      000101 EF               [12]  692 	mov	a,r7
      000102 64 80            [12]  693 	xrl	a,#0x80
      000104 8E F0            [24]  694 	mov	b,r6
      000106 63 F0 80         [24]  695 	xrl	b,#0x80
      000109 95 F0            [12]  696 	subb	a,b
      00010B 50 03            [24]  697 	jnc	00152$
      00010D 02 01 93         [24]  698 	ljmp	00102$
      000110                        699 00152$:
      000110 E5 4D            [12]  700 	mov	a,_bp
      000112 24 0A            [12]  701 	add	a,#0x0a
      000114 F8               [12]  702 	mov	r0,a
      000115 74 06            [12]  703 	mov	a,#0x06
      000117 26               [12]  704 	add	a,@r0
      000118 FB               [12]  705 	mov	r3,a
      000119 E4               [12]  706 	clr	a
      00011A 08               [12]  707 	inc	r0
      00011B 36               [12]  708 	addc	a,@r0
      00011C FE               [12]  709 	mov	r6,a
      00011D 08               [12]  710 	inc	r0
      00011E 86 07            [24]  711 	mov	ar7,@r0
      000120 8B 82            [24]  712 	mov	dpl,r3
      000122 8E 83            [24]  713 	mov	dph,r6
      000124 8F F0            [24]  714 	mov	b,r7
      000126 12 3D E8         [24]  715 	lcall	__gptrget
      000129 60 68            [24]  716 	jz	00102$
                                    717 ;	89C51Board.c:94: pTimer->ticksSoFar = 0;
      00012B A8 4D            [24]  718 	mov	r0,_bp
      00012D 08               [12]  719 	inc	r0
      00012E 86 82            [24]  720 	mov	dpl,@r0
      000130 08               [12]  721 	inc	r0
      000131 86 83            [24]  722 	mov	dph,@r0
      000133 08               [12]  723 	inc	r0
      000134 86 F0            [24]  724 	mov	b,@r0
      000136 E4               [12]  725 	clr	a
      000137 12 3C 27         [24]  726 	lcall	__gptrput
      00013A A3               [24]  727 	inc	dptr
      00013B 12 3C 27         [24]  728 	lcall	__gptrput
                                    729 ;	89C51Board.c:95: pTimer->callback(pTimer->cookie);
      00013E E5 4D            [12]  730 	mov	a,_bp
      000140 24 0A            [12]  731 	add	a,#0x0a
      000142 F8               [12]  732 	mov	r0,a
      000143 74 07            [12]  733 	mov	a,#0x07
      000145 26               [12]  734 	add	a,@r0
      000146 FB               [12]  735 	mov	r3,a
      000147 E4               [12]  736 	clr	a
      000148 08               [12]  737 	inc	r0
      000149 36               [12]  738 	addc	a,@r0
      00014A FE               [12]  739 	mov	r6,a
      00014B 08               [12]  740 	inc	r0
      00014C 86 07            [24]  741 	mov	ar7,@r0
      00014E 8B 82            [24]  742 	mov	dpl,r3
      000150 8E 83            [24]  743 	mov	dph,r6
      000152 8F F0            [24]  744 	mov	b,r7
      000154 12 3D E8         [24]  745 	lcall	__gptrget
      000157 FB               [12]  746 	mov	r3,a
      000158 A3               [24]  747 	inc	dptr
      000159 12 3D E8         [24]  748 	lcall	__gptrget
      00015C FE               [12]  749 	mov	r6,a
      00015D E5 4D            [12]  750 	mov	a,_bp
      00015F 24 0A            [12]  751 	add	a,#0x0a
      000161 F8               [12]  752 	mov	r0,a
      000162 86 82            [24]  753 	mov	dpl,@r0
      000164 08               [12]  754 	inc	r0
      000165 86 83            [24]  755 	mov	dph,@r0
      000167 08               [12]  756 	inc	r0
      000168 86 F0            [24]  757 	mov	b,@r0
      00016A 12 3D E8         [24]  758 	lcall	__gptrget
      00016D FA               [12]  759 	mov	r2,a
      00016E A3               [24]  760 	inc	dptr
      00016F 12 3D E8         [24]  761 	lcall	__gptrget
      000172 FF               [12]  762 	mov	r7,a
      000173 C0 06            [24]  763 	push	ar6
      000175 C0 05            [24]  764 	push	ar5
      000177 C0 04            [24]  765 	push	ar4
      000179 C0 03            [24]  766 	push	ar3
      00017B 12 01 80         [24]  767 	lcall	00154$
      00017E 80 09            [24]  768 	sjmp	00155$
      000180                        769 00154$:
      000180 C0 03            [24]  770 	push	ar3
      000182 C0 06            [24]  771 	push	ar6
      000184 8A 82            [24]  772 	mov	dpl,r2
      000186 8F 83            [24]  773 	mov	dph,r7
      000188 22               [24]  774 	ret
      000189                        775 00155$:
      000189 D0 03            [24]  776 	pop	ar3
      00018B D0 04            [24]  777 	pop	ar4
      00018D D0 05            [24]  778 	pop	ar5
      00018F D0 06            [24]  779 	pop	ar6
      000191 80 3B            [24]  780 	sjmp	00112$
      000193                        781 00102$:
                                    782 ;	89C51Board.c:99: pTimer->ticksSoFar++;
      000193 C0 04            [24]  783 	push	ar4
      000195 C0 05            [24]  784 	push	ar5
      000197 E5 4D            [12]  785 	mov	a,_bp
      000199 24 0A            [12]  786 	add	a,#0x0a
      00019B F8               [12]  787 	mov	r0,a
      00019C 74 04            [12]  788 	mov	a,#0x04
      00019E 26               [12]  789 	add	a,@r0
      00019F FB               [12]  790 	mov	r3,a
      0001A0 E4               [12]  791 	clr	a
      0001A1 08               [12]  792 	inc	r0
      0001A2 36               [12]  793 	addc	a,@r0
      0001A3 FE               [12]  794 	mov	r6,a
      0001A4 08               [12]  795 	inc	r0
      0001A5 86 07            [24]  796 	mov	ar7,@r0
      0001A7 8B 82            [24]  797 	mov	dpl,r3
      0001A9 8E 83            [24]  798 	mov	dph,r6
      0001AB 8F F0            [24]  799 	mov	b,r7
      0001AD 12 3D E8         [24]  800 	lcall	__gptrget
      0001B0 FA               [12]  801 	mov	r2,a
      0001B1 A3               [24]  802 	inc	dptr
      0001B2 12 3D E8         [24]  803 	lcall	__gptrget
      0001B5 FD               [12]  804 	mov	r5,a
      0001B6 0A               [12]  805 	inc	r2
      0001B7 BA 00 01         [24]  806 	cjne	r2,#0x00,00156$
      0001BA 0D               [12]  807 	inc	r5
      0001BB                        808 00156$:
      0001BB 8B 82            [24]  809 	mov	dpl,r3
      0001BD 8E 83            [24]  810 	mov	dph,r6
      0001BF 8F F0            [24]  811 	mov	b,r7
      0001C1 EA               [12]  812 	mov	a,r2
      0001C2 12 3C 27         [24]  813 	lcall	__gptrput
      0001C5 A3               [24]  814 	inc	dptr
      0001C6 ED               [12]  815 	mov	a,r5
      0001C7 12 3C 27         [24]  816 	lcall	__gptrput
                                    817 ;	89C51Board.c:104: for (c = 0; c < 100; ++c)
      0001CA D0 05            [24]  818 	pop	ar5
      0001CC D0 04            [24]  819 	pop	ar4
                                    820 ;	89C51Board.c:99: pTimer->ticksSoFar++;
      0001CE                        821 00112$:
                                    822 ;	89C51Board.c:88: for (timerCounter = 0; timerCounter < MAX_TIMERS; ++timerCounter)
      0001CE 74 09            [12]  823 	mov	a,#0x09
      0001D0 2C               [12]  824 	add	a,r4
      0001D1 FC               [12]  825 	mov	r4,a
      0001D2 E4               [12]  826 	clr	a
      0001D3 3D               [12]  827 	addc	a,r5
      0001D4 FD               [12]  828 	mov	r5,a
      0001D5 E5 4D            [12]  829 	mov	a,_bp
      0001D7 24 08            [12]  830 	add	a,#0x08
      0001D9 F8               [12]  831 	mov	r0,a
      0001DA 06               [12]  832 	inc	@r0
      0001DB B6 00 02         [24]  833 	cjne	@r0,#0x00,00157$
      0001DE 08               [12]  834 	inc	r0
      0001DF 06               [12]  835 	inc	@r0
      0001E0                        836 00157$:
      0001E0 E5 4D            [12]  837 	mov	a,_bp
      0001E2 24 08            [12]  838 	add	a,#0x08
      0001E4 F8               [12]  839 	mov	r0,a
      0001E5 C3               [12]  840 	clr	c
      0001E6 E6               [12]  841 	mov	a,@r0
      0001E7 94 0A            [12]  842 	subb	a,#0x0a
      0001E9 08               [12]  843 	inc	r0
      0001EA E6               [12]  844 	mov	a,@r0
      0001EB 64 80            [12]  845 	xrl	a,#0x80
      0001ED 94 80            [12]  846 	subb	a,#0x80
      0001EF 50 03            [24]  847 	jnc	00158$
      0001F1 02 00 85         [24]  848 	ljmp	00111$
      0001F4                        849 00158$:
                                    850 ;	89C51Board.c:104: for (c = 0; c < 100; ++c)
      0001F4 E5 4D            [12]  851 	mov	a,_bp
      0001F6 24 04            [12]  852 	add	a,#0x04
      0001F8 F8               [12]  853 	mov	r0,a
      0001F9 76 64            [12]  854 	mov	@r0,#0x64
      0001FB E4               [12]  855 	clr	a
      0001FC 08               [12]  856 	inc	r0
      0001FD F6               [12]  857 	mov	@r0,a
      0001FE 08               [12]  858 	inc	r0
      0001FF F6               [12]  859 	mov	@r0,a
      000200 08               [12]  860 	inc	r0
      000201 F6               [12]  861 	mov	@r0,a
      000202                        862 00115$:
      000202 E5 4D            [12]  863 	mov	a,_bp
      000204 24 04            [12]  864 	add	a,#0x04
      000206 F8               [12]  865 	mov	r0,a
      000207 E6               [12]  866 	mov	a,@r0
      000208 24 FF            [12]  867 	add	a,#0xff
      00020A FA               [12]  868 	mov	r2,a
      00020B 08               [12]  869 	inc	r0
      00020C E6               [12]  870 	mov	a,@r0
      00020D 34 FF            [12]  871 	addc	a,#0xff
      00020F FB               [12]  872 	mov	r3,a
      000210 08               [12]  873 	inc	r0
      000211 E6               [12]  874 	mov	a,@r0
      000212 34 FF            [12]  875 	addc	a,#0xff
      000214 FE               [12]  876 	mov	r6,a
      000215 08               [12]  877 	inc	r0
      000216 E6               [12]  878 	mov	a,@r0
      000217 34 FF            [12]  879 	addc	a,#0xff
      000219 FF               [12]  880 	mov	r7,a
      00021A E5 4D            [12]  881 	mov	a,_bp
      00021C 24 04            [12]  882 	add	a,#0x04
      00021E F8               [12]  883 	mov	r0,a
      00021F A6 02            [24]  884 	mov	@r0,ar2
      000221 08               [12]  885 	inc	r0
      000222 A6 03            [24]  886 	mov	@r0,ar3
      000224 08               [12]  887 	inc	r0
      000225 A6 06            [24]  888 	mov	@r0,ar6
      000227 08               [12]  889 	inc	r0
      000228 A6 07            [24]  890 	mov	@r0,ar7
      00022A EA               [12]  891 	mov	a,r2
      00022B 4B               [12]  892 	orl	a,r3
      00022C 4E               [12]  893 	orl	a,r6
      00022D 4F               [12]  894 	orl	a,r7
      00022E 70 D2            [24]  895 	jnz	00115$
      000230 02 00 78         [24]  896 	ljmp	00121$
                                    897 ;	89C51Board.c:109: }
      000233 85 4D 81         [24]  898 	mov	sp,_bp
      000236 D0 4D            [24]  899 	pop	_bp
      000238 22               [24]  900 	ret
                                    901 ;------------------------------------------------------------
                                    902 ;Allocation info for local variables in function 'Hardware_InitialiseHardware'
                                    903 ;------------------------------------------------------------
                                    904 ;i                         Allocated to registers r6 r7 
                                    905 ;------------------------------------------------------------
                                    906 ;	89C51Board.c:112: void Hardware_InitialiseHardware() REENTRANT
                                    907 ;	-----------------------------------------
                                    908 ;	 function Hardware_InitialiseHardware
                                    909 ;	-----------------------------------------
      000239                        910 _Hardware_InitialiseHardware:
                                    911 ;	89C51Board.c:116: for (i = 0; i < MAX_TIMERS; ++i)
      000239 7E 00            [12]  912 	mov	r6,#0x00
      00023B 7F 00            [12]  913 	mov	r7,#0x00
      00023D 7C 00            [12]  914 	mov	r4,#0x00
      00023F 7D 00            [12]  915 	mov	r5,#0x00
      000241                        916 00102$:
                                    917 ;	89C51Board.c:118: timers[i].cookie = 0;
      000241 EC               [12]  918 	mov	a,r4
      000242 24 13            [12]  919 	add	a,#_timers
      000244 F5 82            [12]  920 	mov	dpl,a
      000246 ED               [12]  921 	mov	a,r5
      000247 34 00            [12]  922 	addc	a,#(_timers >> 8)
      000249 F5 83            [12]  923 	mov	dph,a
      00024B E4               [12]  924 	clr	a
      00024C F0               [24]  925 	movx	@dptr,a
      00024D A3               [24]  926 	inc	dptr
      00024E F0               [24]  927 	movx	@dptr,a
                                    928 ;	89C51Board.c:116: for (i = 0; i < MAX_TIMERS; ++i)
      00024F 74 09            [12]  929 	mov	a,#0x09
      000251 2C               [12]  930 	add	a,r4
      000252 FC               [12]  931 	mov	r4,a
      000253 E4               [12]  932 	clr	a
      000254 3D               [12]  933 	addc	a,r5
      000255 FD               [12]  934 	mov	r5,a
      000256 0E               [12]  935 	inc	r6
      000257 BE 00 01         [24]  936 	cjne	r6,#0x00,00115$
      00025A 0F               [12]  937 	inc	r7
      00025B                        938 00115$:
      00025B C3               [12]  939 	clr	c
      00025C EE               [12]  940 	mov	a,r6
      00025D 94 0A            [12]  941 	subb	a,#0x0a
      00025F EF               [12]  942 	mov	a,r7
      000260 64 80            [12]  943 	xrl	a,#0x80
      000262 94 80            [12]  944 	subb	a,#0x80
      000264 40 DB            [24]  945 	jc	00102$
                                    946 ;	89C51Board.c:122: pRegisterForTimer = Hardware_RegisterForTimer;
      000266 7E D8            [12]  947 	mov	r6,#_Hardware_RegisterForTimer
      000268 7F 02            [12]  948 	mov	r7,#(_Hardware_RegisterForTimer >> 8)
      00026A 90 00 01         [24]  949 	mov	dptr,#_pRegisterForTimer
      00026D EE               [12]  950 	mov	a,r6
      00026E F0               [24]  951 	movx	@dptr,a
      00026F EF               [12]  952 	mov	a,r7
      000270 A3               [24]  953 	inc	dptr
      000271 F0               [24]  954 	movx	@dptr,a
                                    955 ;	89C51Board.c:123: pEnableTimer = Hardware_EnableTimer;
      000272 7E D0            [12]  956 	mov	r6,#_Hardware_EnableTimer
      000274 7F 03            [12]  957 	mov	r7,#(_Hardware_EnableTimer >> 8)
      000276 90 00 03         [24]  958 	mov	dptr,#_pEnableTimer
      000279 EE               [12]  959 	mov	a,r6
      00027A F0               [24]  960 	movx	@dptr,a
      00027B EF               [12]  961 	mov	a,r7
      00027C A3               [24]  962 	inc	dptr
      00027D F0               [24]  963 	movx	@dptr,a
                                    964 ;	89C51Board.c:124: pGetRtc = Hardware_GetRtc;
      00027E 7E 7D            [12]  965 	mov	r6,#_Hardware_GetRtc
      000280 7F 04            [12]  966 	mov	r7,#(_Hardware_GetRtc >> 8)
      000282 90 00 05         [24]  967 	mov	dptr,#_pGetRtc
      000285 EE               [12]  968 	mov	a,r6
      000286 F0               [24]  969 	movx	@dptr,a
      000287 EF               [12]  970 	mov	a,r7
      000288 A3               [24]  971 	inc	dptr
      000289 F0               [24]  972 	movx	@dptr,a
                                    973 ;	89C51Board.c:125: pSetRtc = Hardware_SetRtc;
      00028A 7E 7A            [12]  974 	mov	r6,#_Hardware_SetRtc
      00028C 7F 04            [12]  975 	mov	r7,#(_Hardware_SetRtc >> 8)
      00028E 90 00 07         [24]  976 	mov	dptr,#_pSetRtc
      000291 EE               [12]  977 	mov	a,r6
      000292 F0               [24]  978 	movx	@dptr,a
      000293 EF               [12]  979 	mov	a,r7
      000294 A3               [24]  980 	inc	dptr
      000295 F0               [24]  981 	movx	@dptr,a
                                    982 ;	89C51Board.c:126: pWriteDisplayBuffer = Hardware_WriteDisplayBuffer;
      000296 7E 77            [12]  983 	mov	r6,#_Hardware_WriteDisplayBuffer
      000298 7F 04            [12]  984 	mov	r7,#(_Hardware_WriteDisplayBuffer >> 8)
      00029A 90 00 09         [24]  985 	mov	dptr,#_pWriteDisplayBuffer
      00029D EE               [12]  986 	mov	a,r6
      00029E F0               [24]  987 	movx	@dptr,a
      00029F EF               [12]  988 	mov	a,r7
      0002A0 A3               [24]  989 	inc	dptr
      0002A1 F0               [24]  990 	movx	@dptr,a
                                    991 ;	89C51Board.c:127: pGetKeyState = Hardware_GetKeyState;
      0002A2 7E 80            [12]  992 	mov	r6,#_Hardware_GetKeyState
      0002A4 7F 04            [12]  993 	mov	r7,#(_Hardware_GetKeyState >> 8)
      0002A6 90 00 0B         [24]  994 	mov	dptr,#_pGetKeyState
      0002A9 EE               [12]  995 	mov	a,r6
      0002AA F0               [24]  996 	movx	@dptr,a
      0002AB EF               [12]  997 	mov	a,r7
      0002AC A3               [24]  998 	inc	dptr
      0002AD F0               [24]  999 	movx	@dptr,a
                                   1000 ;	89C51Board.c:128: pGetInputPortValues = Hardware_GetInputPortValues;
      0002AE 7E 43            [12] 1001 	mov	r6,#_Hardware_GetInputPortValues
      0002B0 7F 05            [12] 1002 	mov	r7,#(_Hardware_GetInputPortValues >> 8)
      0002B2 90 00 0D         [24] 1003 	mov	dptr,#_pGetInputPortValues
      0002B5 EE               [12] 1004 	mov	a,r6
      0002B6 F0               [24] 1005 	movx	@dptr,a
      0002B7 EF               [12] 1006 	mov	a,r7
      0002B8 A3               [24] 1007 	inc	dptr
      0002B9 F0               [24] 1008 	movx	@dptr,a
                                   1009 ;	89C51Board.c:129: pSetOutputPortValues = Hardware_SetOutputPortValues;
      0002BA 7E 73            [12] 1010 	mov	r6,#_Hardware_SetOutputPortValues
      0002BC 7F 05            [12] 1011 	mov	r7,#(_Hardware_SetOutputPortValues >> 8)
      0002BE 90 00 0F         [24] 1012 	mov	dptr,#_pSetOutputPortValues
      0002C1 EE               [12] 1013 	mov	a,r6
      0002C2 F0               [24] 1014 	movx	@dptr,a
      0002C3 EF               [12] 1015 	mov	a,r7
      0002C4 A3               [24] 1016 	inc	dptr
      0002C5 F0               [24] 1017 	movx	@dptr,a
                                   1018 ;	89C51Board.c:130: pCrashDump = Hardware_CrashDump;
      0002C6 7E 77            [12] 1019 	mov	r6,#_Hardware_CrashDump
      0002C8 7F 05            [12] 1020 	mov	r7,#(_Hardware_CrashDump >> 8)
      0002CA 90 00 11         [24] 1021 	mov	dptr,#_pCrashDump
      0002CD EE               [12] 1022 	mov	a,r6
      0002CE F0               [24] 1023 	movx	@dptr,a
      0002CF EF               [12] 1024 	mov	a,r7
      0002D0 A3               [24] 1025 	inc	dptr
      0002D1 F0               [24] 1026 	movx	@dptr,a
                                   1027 ;	89C51Board.c:134: InitialiseLcd();
      0002D2 12 26 04         [24] 1028 	lcall	_InitialiseLcd
                                   1029 ;	89C51Board.c:135: Rtc_Initialise();
                                   1030 ;	89C51Board.c:137: }
      0002D5 02 2E 15         [24] 1031 	ljmp	_Rtc_Initialise
                                   1032 ;------------------------------------------------------------
                                   1033 ;Allocation info for local variables in function 'Hardware_RegisterForTimer'
                                   1034 ;------------------------------------------------------------
                                   1035 ;milliSeconds              Allocated to stack - _bp -4
                                   1036 ;callback                  Allocated to stack - _bp -6
                                   1037 ;cookie                    Allocated to stack - _bp +1
                                   1038 ;i                         Allocated to registers r4 r5 
                                   1039 ;sloc0                     Allocated to stack - _bp +5
                                   1040 ;sloc1                     Allocated to stack - _bp +3
                                   1041 ;------------------------------------------------------------
                                   1042 ;	89C51Board.c:140: void Hardware_RegisterForTimer(int cookie, int milliSeconds, CallbackDelegate callback) REENTRANT
                                   1043 ;	-----------------------------------------
                                   1044 ;	 function Hardware_RegisterForTimer
                                   1045 ;	-----------------------------------------
      0002D8                       1046 _Hardware_RegisterForTimer:
      0002D8 C0 4D            [24] 1047 	push	_bp
      0002DA 85 81 4D         [24] 1048 	mov	_bp,sp
      0002DD C0 82            [24] 1049 	push	dpl
      0002DF C0 83            [24] 1050 	push	dph
      0002E1 05 81            [12] 1051 	inc	sp
      0002E3 05 81            [12] 1052 	inc	sp
                                   1053 ;	89C51Board.c:144: for (i = 0; i < MAX_TIMERS; ++i)
      0002E5 7C 00            [12] 1054 	mov	r4,#0x00
      0002E7 7D 00            [12] 1055 	mov	r5,#0x00
      0002E9 7A 00            [12] 1056 	mov	r2,#0x00
      0002EB 7B 00            [12] 1057 	mov	r3,#0x00
      0002ED 7F 00            [12] 1058 	mov	r7,#0x00
      0002EF 7E 00            [12] 1059 	mov	r6,#0x00
      0002F1                       1060 00105$:
                                   1061 ;	89C51Board.c:146: if (timers[i].cookie == 0 || timers[i].cookie == cookie)
      0002F1 EF               [12] 1062 	mov	a,r7
      0002F2 24 13            [12] 1063 	add	a,#_timers
      0002F4 F5 82            [12] 1064 	mov	dpl,a
      0002F6 EE               [12] 1065 	mov	a,r6
      0002F7 34 00            [12] 1066 	addc	a,#(_timers >> 8)
      0002F9 F5 83            [12] 1067 	mov	dph,a
      0002FB E5 4D            [12] 1068 	mov	a,_bp
      0002FD 24 03            [12] 1069 	add	a,#0x03
      0002FF F8               [12] 1070 	mov	r0,a
      000300 E0               [24] 1071 	movx	a,@dptr
      000301 F6               [12] 1072 	mov	@r0,a
      000302 A3               [24] 1073 	inc	dptr
      000303 E0               [24] 1074 	movx	a,@dptr
      000304 08               [12] 1075 	inc	r0
      000305 F6               [12] 1076 	mov	@r0,a
      000306 E5 4D            [12] 1077 	mov	a,_bp
      000308 24 03            [12] 1078 	add	a,#0x03
      00030A F8               [12] 1079 	mov	r0,a
      00030B E6               [12] 1080 	mov	a,@r0
      00030C 08               [12] 1081 	inc	r0
      00030D 46               [12] 1082 	orl	a,@r0
      00030E 60 1A            [24] 1083 	jz	00101$
      000310 E5 4D            [12] 1084 	mov	a,_bp
      000312 24 03            [12] 1085 	add	a,#0x03
      000314 F8               [12] 1086 	mov	r0,a
      000315 A9 4D            [24] 1087 	mov	r1,_bp
      000317 09               [12] 1088 	inc	r1
      000318 86 F0            [24] 1089 	mov	b,@r0
      00031A E7               [12] 1090 	mov	a,@r1
      00031B B5 F0 0A         [24] 1091 	cjne	a,b,00122$
      00031E 08               [12] 1092 	inc	r0
      00031F 86 F0            [24] 1093 	mov	b,@r0
      000321 09               [12] 1094 	inc	r1
      000322 E7               [12] 1095 	mov	a,@r1
      000323 B5 F0 02         [24] 1096 	cjne	a,b,00122$
      000326 80 02            [24] 1097 	sjmp	00123$
      000328                       1098 00122$:
      000328 80 6C            [24] 1099 	sjmp	00106$
      00032A                       1100 00123$:
      00032A                       1101 00101$:
                                   1102 ;	89C51Board.c:148: timers[i].cookie = cookie;
      00032A 90 02 BD         [24] 1103 	mov	dptr,#__mulint_PARM_2
      00032D EC               [12] 1104 	mov	a,r4
      00032E F0               [24] 1105 	movx	@dptr,a
      00032F ED               [12] 1106 	mov	a,r5
      000330 A3               [24] 1107 	inc	dptr
      000331 F0               [24] 1108 	movx	@dptr,a
      000332 90 00 09         [24] 1109 	mov	dptr,#0x0009
      000335 12 3C 42         [24] 1110 	lcall	__mulint
      000338 AE 82            [24] 1111 	mov	r6,dpl
      00033A AF 83            [24] 1112 	mov	r7,dph
      00033C EE               [12] 1113 	mov	a,r6
      00033D 24 13            [12] 1114 	add	a,#_timers
      00033F F5 82            [12] 1115 	mov	dpl,a
      000341 EF               [12] 1116 	mov	a,r7
      000342 34 00            [12] 1117 	addc	a,#(_timers >> 8)
      000344 F5 83            [12] 1118 	mov	dph,a
      000346 A8 4D            [24] 1119 	mov	r0,_bp
      000348 08               [12] 1120 	inc	r0
      000349 E6               [12] 1121 	mov	a,@r0
      00034A F0               [24] 1122 	movx	@dptr,a
      00034B 08               [12] 1123 	inc	r0
      00034C E6               [12] 1124 	mov	a,@r0
      00034D A3               [24] 1125 	inc	dptr
      00034E F0               [24] 1126 	movx	@dptr,a
                                   1127 ;	89C51Board.c:149: timers[i].periodMilliseconds = milliSeconds;
      00034F EE               [12] 1128 	mov	a,r6
      000350 24 13            [12] 1129 	add	a,#_timers
      000352 FE               [12] 1130 	mov	r6,a
      000353 EF               [12] 1131 	mov	a,r7
      000354 34 00            [12] 1132 	addc	a,#(_timers >> 8)
      000356 FF               [12] 1133 	mov	r7,a
      000357 8E 82            [24] 1134 	mov	dpl,r6
      000359 8F 83            [24] 1135 	mov	dph,r7
      00035B A3               [24] 1136 	inc	dptr
      00035C A3               [24] 1137 	inc	dptr
      00035D E5 4D            [12] 1138 	mov	a,_bp
      00035F 24 FC            [12] 1139 	add	a,#0xfc
      000361 F8               [12] 1140 	mov	r0,a
      000362 E6               [12] 1141 	mov	a,@r0
      000363 F0               [24] 1142 	movx	@dptr,a
      000364 08               [12] 1143 	inc	r0
      000365 E6               [12] 1144 	mov	a,@r0
      000366 A3               [24] 1145 	inc	dptr
      000367 F0               [24] 1146 	movx	@dptr,a
                                   1147 ;	89C51Board.c:150: timers[i].ticksSoFar = 0;
      000368 8E 82            [24] 1148 	mov	dpl,r6
      00036A 8F 83            [24] 1149 	mov	dph,r7
      00036C A3               [24] 1150 	inc	dptr
      00036D A3               [24] 1151 	inc	dptr
      00036E A3               [24] 1152 	inc	dptr
      00036F A3               [24] 1153 	inc	dptr
      000370 E4               [12] 1154 	clr	a
      000371 F0               [24] 1155 	movx	@dptr,a
      000372 A3               [24] 1156 	inc	dptr
      000373 F0               [24] 1157 	movx	@dptr,a
                                   1158 ;	89C51Board.c:151: timers[i].enabled = 1;
      000374 74 06            [12] 1159 	mov	a,#0x06
      000376 2E               [12] 1160 	add	a,r6
      000377 F5 82            [12] 1161 	mov	dpl,a
      000379 E4               [12] 1162 	clr	a
      00037A 3F               [12] 1163 	addc	a,r7
      00037B F5 83            [12] 1164 	mov	dph,a
      00037D 74 01            [12] 1165 	mov	a,#0x01
      00037F F0               [24] 1166 	movx	@dptr,a
                                   1167 ;	89C51Board.c:152: timers[i].callback = callback;
      000380 74 07            [12] 1168 	mov	a,#0x07
      000382 2E               [12] 1169 	add	a,r6
      000383 F5 82            [12] 1170 	mov	dpl,a
      000385 E4               [12] 1171 	clr	a
      000386 3F               [12] 1172 	addc	a,r7
      000387 F5 83            [12] 1173 	mov	dph,a
      000389 E5 4D            [12] 1174 	mov	a,_bp
      00038B 24 FA            [12] 1175 	add	a,#0xfa
      00038D F8               [12] 1176 	mov	r0,a
      00038E E6               [12] 1177 	mov	a,@r0
      00038F F0               [24] 1178 	movx	@dptr,a
      000390 08               [12] 1179 	inc	r0
      000391 E6               [12] 1180 	mov	a,@r0
      000392 A3               [24] 1181 	inc	dptr
      000393 F0               [24] 1182 	movx	@dptr,a
                                   1183 ;	89C51Board.c:153: return;
      000394 80 34            [24] 1184 	sjmp	00107$
      000396                       1185 00106$:
                                   1186 ;	89C51Board.c:144: for (i = 0; i < MAX_TIMERS; ++i)
      000396 74 09            [12] 1187 	mov	a,#0x09
      000398 2F               [12] 1188 	add	a,r7
      000399 FF               [12] 1189 	mov	r7,a
      00039A E4               [12] 1190 	clr	a
      00039B 3E               [12] 1191 	addc	a,r6
      00039C FE               [12] 1192 	mov	r6,a
      00039D 0A               [12] 1193 	inc	r2
      00039E BA 00 01         [24] 1194 	cjne	r2,#0x00,00124$
      0003A1 0B               [12] 1195 	inc	r3
      0003A2                       1196 00124$:
      0003A2 8A 04            [24] 1197 	mov	ar4,r2
      0003A4 8B 05            [24] 1198 	mov	ar5,r3
      0003A6 C3               [12] 1199 	clr	c
      0003A7 EA               [12] 1200 	mov	a,r2
      0003A8 94 0A            [12] 1201 	subb	a,#0x0a
      0003AA EB               [12] 1202 	mov	a,r3
      0003AB 64 80            [12] 1203 	xrl	a,#0x80
      0003AD 94 80            [12] 1204 	subb	a,#0x80
      0003AF 50 03            [24] 1205 	jnc	00125$
      0003B1 02 02 F1         [24] 1206 	ljmp	00105$
      0003B4                       1207 00125$:
                                   1208 ;	89C51Board.c:157: pCrashDump("OutOfTimers");
      0003B4 12 03 B9         [24] 1209 	lcall	00126$
      0003B7 80 11            [24] 1210 	sjmp	00127$
      0003B9                       1211 00126$:
      0003B9 90 00 11         [24] 1212 	mov	dptr,#_pCrashDump
      0003BC E0               [24] 1213 	movx	a,@dptr
      0003BD C0 E0            [24] 1214 	push	acc
      0003BF A3               [24] 1215 	inc	dptr
      0003C0 E0               [24] 1216 	movx	a,@dptr
      0003C1 C0 E0            [24] 1217 	push	acc
      0003C3 90 3E 08         [24] 1218 	mov	dptr,#___str_0
      0003C6 75 F0 80         [24] 1219 	mov	b,#0x80
      0003C9 22               [24] 1220 	ret
      0003CA                       1221 00127$:
      0003CA                       1222 00107$:
                                   1223 ;	89C51Board.c:159: }
      0003CA 85 4D 81         [24] 1224 	mov	sp,_bp
      0003CD D0 4D            [24] 1225 	pop	_bp
      0003CF 22               [24] 1226 	ret
                                   1227 ;------------------------------------------------------------
                                   1228 ;Allocation info for local variables in function 'Hardware_EnableTimer'
                                   1229 ;------------------------------------------------------------
                                   1230 ;enabled                   Allocated to stack - _bp -4
                                   1231 ;cookie                    Allocated to registers r6 r7 
                                   1232 ;i                         Allocated to registers r4 r5 
                                   1233 ;sloc0                     Allocated to stack - _bp +3
                                   1234 ;sloc1                     Allocated to stack - _bp +1
                                   1235 ;sloc2                     Allocated to stack - _bp +9
                                   1236 ;------------------------------------------------------------
                                   1237 ;	89C51Board.c:162: void Hardware_EnableTimer(int cookie, int enabled) REENTRANT
                                   1238 ;	-----------------------------------------
                                   1239 ;	 function Hardware_EnableTimer
                                   1240 ;	-----------------------------------------
      0003D0                       1241 _Hardware_EnableTimer:
      0003D0 C0 4D            [24] 1242 	push	_bp
      0003D2 E5 81            [12] 1243 	mov	a,sp
      0003D4 F5 4D            [12] 1244 	mov	_bp,a
      0003D6 24 04            [12] 1245 	add	a,#0x04
      0003D8 F5 81            [12] 1246 	mov	sp,a
      0003DA AE 82            [24] 1247 	mov	r6,dpl
      0003DC AF 83            [24] 1248 	mov	r7,dph
                                   1249 ;	89C51Board.c:165: for (i = 0; i < MAX_TIMERS; ++i)
      0003DE E4               [12] 1250 	clr	a
      0003DF FC               [12] 1251 	mov	r4,a
      0003E0 FD               [12] 1252 	mov	r5,a
      0003E1 FA               [12] 1253 	mov	r2,a
      0003E2 FB               [12] 1254 	mov	r3,a
      0003E3 E5 4D            [12] 1255 	mov	a,_bp
      0003E5 24 03            [12] 1256 	add	a,#0x03
      0003E7 F8               [12] 1257 	mov	r0,a
      0003E8 E4               [12] 1258 	clr	a
      0003E9 F6               [12] 1259 	mov	@r0,a
      0003EA 08               [12] 1260 	inc	r0
      0003EB F6               [12] 1261 	mov	@r0,a
      0003EC                       1262 00105$:
                                   1263 ;	89C51Board.c:167: if (timers[i].cookie == 0 || timers[i].cookie == cookie)
      0003EC E5 4D            [12] 1264 	mov	a,_bp
      0003EE 24 03            [12] 1265 	add	a,#0x03
      0003F0 F8               [12] 1266 	mov	r0,a
      0003F1 E6               [12] 1267 	mov	a,@r0
      0003F2 24 13            [12] 1268 	add	a,#_timers
      0003F4 F5 82            [12] 1269 	mov	dpl,a
      0003F6 08               [12] 1270 	inc	r0
      0003F7 E6               [12] 1271 	mov	a,@r0
      0003F8 34 00            [12] 1272 	addc	a,#(_timers >> 8)
      0003FA F5 83            [12] 1273 	mov	dph,a
      0003FC A8 4D            [24] 1274 	mov	r0,_bp
      0003FE 08               [12] 1275 	inc	r0
      0003FF E0               [24] 1276 	movx	a,@dptr
      000400 F6               [12] 1277 	mov	@r0,a
      000401 A3               [24] 1278 	inc	dptr
      000402 E0               [24] 1279 	movx	a,@dptr
      000403 08               [12] 1280 	inc	r0
      000404 F6               [12] 1281 	mov	@r0,a
      000405 A8 4D            [24] 1282 	mov	r0,_bp
      000407 08               [12] 1283 	inc	r0
      000408 E6               [12] 1284 	mov	a,@r0
      000409 08               [12] 1285 	inc	r0
      00040A 46               [12] 1286 	orl	a,@r0
      00040B 60 10            [24] 1287 	jz	00101$
      00040D A8 4D            [24] 1288 	mov	r0,_bp
      00040F 08               [12] 1289 	inc	r0
      000410 E6               [12] 1290 	mov	a,@r0
      000411 B5 06 07         [24] 1291 	cjne	a,ar6,00118$
      000414 08               [12] 1292 	inc	r0
      000415 E6               [12] 1293 	mov	a,@r0
      000416 B5 07 02         [24] 1294 	cjne	a,ar7,00118$
      000419 80 02            [24] 1295 	sjmp	00119$
      00041B                       1296 00118$:
      00041B 80 30            [24] 1297 	sjmp	00106$
      00041D                       1298 00119$:
      00041D                       1299 00101$:
                                   1300 ;	89C51Board.c:169: timers[i].enabled = enabled;
      00041D 90 02 BD         [24] 1301 	mov	dptr,#__mulint_PARM_2
      000420 EC               [12] 1302 	mov	a,r4
      000421 F0               [24] 1303 	movx	@dptr,a
      000422 ED               [12] 1304 	mov	a,r5
      000423 A3               [24] 1305 	inc	dptr
      000424 F0               [24] 1306 	movx	@dptr,a
      000425 90 00 09         [24] 1307 	mov	dptr,#0x0009
      000428 12 3C 42         [24] 1308 	lcall	__mulint
      00042B AF 82            [24] 1309 	mov	r7,dpl
      00042D AE 83            [24] 1310 	mov	r6,dph
      00042F EF               [12] 1311 	mov	a,r7
      000430 24 13            [12] 1312 	add	a,#_timers
      000432 FF               [12] 1313 	mov	r7,a
      000433 EE               [12] 1314 	mov	a,r6
      000434 34 00            [12] 1315 	addc	a,#(_timers >> 8)
      000436 FE               [12] 1316 	mov	r6,a
      000437 74 06            [12] 1317 	mov	a,#0x06
      000439 2F               [12] 1318 	add	a,r7
      00043A FF               [12] 1319 	mov	r7,a
      00043B E4               [12] 1320 	clr	a
      00043C 3E               [12] 1321 	addc	a,r6
      00043D FE               [12] 1322 	mov	r6,a
      00043E E5 4D            [12] 1323 	mov	a,_bp
      000440 24 FC            [12] 1324 	add	a,#0xfc
      000442 F8               [12] 1325 	mov	r0,a
      000443 86 05            [24] 1326 	mov	ar5,@r0
      000445 8F 82            [24] 1327 	mov	dpl,r7
      000447 8E 83            [24] 1328 	mov	dph,r6
      000449 ED               [12] 1329 	mov	a,r5
      00044A F0               [24] 1330 	movx	@dptr,a
                                   1331 ;	89C51Board.c:170: return;
      00044B 80 24            [24] 1332 	sjmp	00107$
      00044D                       1333 00106$:
                                   1334 ;	89C51Board.c:165: for (i = 0; i < MAX_TIMERS; ++i)
      00044D E5 4D            [12] 1335 	mov	a,_bp
      00044F 24 03            [12] 1336 	add	a,#0x03
      000451 F8               [12] 1337 	mov	r0,a
      000452 74 09            [12] 1338 	mov	a,#0x09
      000454 26               [12] 1339 	add	a,@r0
      000455 F6               [12] 1340 	mov	@r0,a
      000456 E4               [12] 1341 	clr	a
      000457 08               [12] 1342 	inc	r0
      000458 36               [12] 1343 	addc	a,@r0
      000459 F6               [12] 1344 	mov	@r0,a
      00045A 0A               [12] 1345 	inc	r2
      00045B BA 00 01         [24] 1346 	cjne	r2,#0x00,00120$
      00045E 0B               [12] 1347 	inc	r3
      00045F                       1348 00120$:
      00045F 8A 04            [24] 1349 	mov	ar4,r2
      000461 8B 05            [24] 1350 	mov	ar5,r3
      000463 C3               [12] 1351 	clr	c
      000464 EA               [12] 1352 	mov	a,r2
      000465 94 0A            [12] 1353 	subb	a,#0x0a
      000467 EB               [12] 1354 	mov	a,r3
      000468 64 80            [12] 1355 	xrl	a,#0x80
      00046A 94 80            [12] 1356 	subb	a,#0x80
      00046C 50 03            [24] 1357 	jnc	00121$
      00046E 02 03 EC         [24] 1358 	ljmp	00105$
      000471                       1359 00121$:
      000471                       1360 00107$:
                                   1361 ;	89C51Board.c:173: }
      000471 85 4D 81         [24] 1362 	mov	sp,_bp
      000474 D0 4D            [24] 1363 	pop	_bp
      000476 22               [24] 1364 	ret
                                   1365 ;------------------------------------------------------------
                                   1366 ;Allocation info for local variables in function 'Hardware_WriteDisplayBuffer'
                                   1367 ;------------------------------------------------------------
                                   1368 ;buffer                    Allocated to registers r5 r6 r7 
                                   1369 ;------------------------------------------------------------
                                   1370 ;	89C51Board.c:176: void Hardware_WriteDisplayBuffer(unsigned char* buffer) REENTRANT
                                   1371 ;	-----------------------------------------
                                   1372 ;	 function Hardware_WriteDisplayBuffer
                                   1373 ;	-----------------------------------------
      000477                       1374 _Hardware_WriteDisplayBuffer:
                                   1375 ;	89C51Board.c:178: DirectWriteToDisplay(buffer);
                                   1376 ;	89C51Board.c:179: }
      000477 02 27 2B         [24] 1377 	ljmp	_DirectWriteToDisplay
                                   1378 ;------------------------------------------------------------
                                   1379 ;Allocation info for local variables in function 'Hardware_SetRtc'
                                   1380 ;------------------------------------------------------------
                                   1381 ;dts                       Allocated to registers r5 r6 r7 
                                   1382 ;------------------------------------------------------------
                                   1383 ;	89C51Board.c:181: void Hardware_SetRtc(DateTimeStruct* dts) REENTRANT
                                   1384 ;	-----------------------------------------
                                   1385 ;	 function Hardware_SetRtc
                                   1386 ;	-----------------------------------------
      00047A                       1387 _Hardware_SetRtc:
                                   1388 ;	89C51Board.c:183: Rtc_WriteClock(dts);
                                   1389 ;	89C51Board.c:184: }
      00047A 02 2C C2         [24] 1390 	ljmp	_Rtc_WriteClock
                                   1391 ;------------------------------------------------------------
                                   1392 ;Allocation info for local variables in function 'Hardware_GetRtc'
                                   1393 ;------------------------------------------------------------
                                   1394 ;dts                       Allocated to registers r5 r6 r7 
                                   1395 ;------------------------------------------------------------
                                   1396 ;	89C51Board.c:186: void Hardware_GetRtc(DateTimeStruct* dts) REENTRANT
                                   1397 ;	-----------------------------------------
                                   1398 ;	 function Hardware_GetRtc
                                   1399 ;	-----------------------------------------
      00047D                       1400 _Hardware_GetRtc:
                                   1401 ;	89C51Board.c:188: Rtc_ReadClock(dts);
                                   1402 ;	89C51Board.c:189: }
      00047D 02 2A DA         [24] 1403 	ljmp	_Rtc_ReadClock
                                   1404 ;------------------------------------------------------------
                                   1405 ;Allocation info for local variables in function 'Hardware_GetKeyState'
                                   1406 ;------------------------------------------------------------
                                   1407 ;keys                      Allocated to stack - _bp +1
                                   1408 ;rowCount                  Allocated to registers r4 
                                   1409 ;colCount                  Allocated to stack - _bp +4
                                   1410 ;portValue                 Allocated to registers 
                                   1411 ;sloc0                     Allocated to stack - _bp +4
                                   1412 ;------------------------------------------------------------
                                   1413 ;	89C51Board.c:191: void Hardware_GetKeyState(int *keys) REENTRANT
                                   1414 ;	-----------------------------------------
                                   1415 ;	 function Hardware_GetKeyState
                                   1416 ;	-----------------------------------------
      000480                       1417 _Hardware_GetKeyState:
      000480 C0 4D            [24] 1418 	push	_bp
      000482 85 81 4D         [24] 1419 	mov	_bp,sp
      000485 C0 82            [24] 1420 	push	dpl
      000487 C0 83            [24] 1421 	push	dph
      000489 C0 F0            [24] 1422 	push	b
      00048B 05 81            [12] 1423 	inc	sp
                                   1424 ;	89C51Board.c:195: *keys = 0;
      00048D A8 4D            [24] 1425 	mov	r0,_bp
      00048F 08               [12] 1426 	inc	r0
      000490 86 82            [24] 1427 	mov	dpl,@r0
      000492 08               [12] 1428 	inc	r0
      000493 86 83            [24] 1429 	mov	dph,@r0
      000495 08               [12] 1430 	inc	r0
      000496 86 F0            [24] 1431 	mov	b,@r0
      000498 E4               [12] 1432 	clr	a
      000499 12 3C 27         [24] 1433 	lcall	__gptrput
      00049C A3               [24] 1434 	inc	dptr
      00049D 12 3C 27         [24] 1435 	lcall	__gptrput
                                   1436 ;	89C51Board.c:197: for (rowCount = 0; rowCount < 4; ++rowCount)
      0004A0 7C 00            [12] 1437 	mov	r4,#0x00
      0004A2 7B 00            [12] 1438 	mov	r3,#0x00
      0004A4                       1439 00107$:
                                   1440 ;	89C51Board.c:199: P1 = ~(0x80 >> rowCount) | 0xf;
      0004A4 C0 04            [24] 1441 	push	ar4
      0004A6 8B F0            [24] 1442 	mov	b,r3
      0004A8 05 F0            [12] 1443 	inc	b
      0004AA 7A 80            [12] 1444 	mov	r2,#0x80
      0004AC E4               [12] 1445 	clr	a
      0004AD FC               [12] 1446 	mov	r4,a
      0004AE 33               [12] 1447 	rlc	a
      0004AF 92 D2            [24] 1448 	mov	ov,c
      0004B1 80 08            [24] 1449 	sjmp	00128$
      0004B3                       1450 00127$:
      0004B3 A2 D2            [12] 1451 	mov	c,ov
      0004B5 EC               [12] 1452 	mov	a,r4
      0004B6 13               [12] 1453 	rrc	a
      0004B7 FC               [12] 1454 	mov	r4,a
      0004B8 EA               [12] 1455 	mov	a,r2
      0004B9 13               [12] 1456 	rrc	a
      0004BA FA               [12] 1457 	mov	r2,a
      0004BB                       1458 00128$:
      0004BB D5 F0 F5         [24] 1459 	djnz	b,00127$
      0004BE EA               [12] 1460 	mov	a,r2
      0004BF F4               [12] 1461 	cpl	a
      0004C0 FA               [12] 1462 	mov	r2,a
      0004C1 74 0F            [12] 1463 	mov	a,#0x0f
      0004C3 4A               [12] 1464 	orl	a,r2
      0004C4 F5 90            [12] 1465 	mov	_P1,a
                                   1466 ;	89C51Board.c:200: for (colCount = 0; colCount < 4; ++colCount)
      0004C6 E5 4D            [12] 1467 	mov	a,_bp
      0004C8 24 04            [12] 1468 	add	a,#0x04
      0004CA F8               [12] 1469 	mov	r0,a
      0004CB 76 00            [12] 1470 	mov	@r0,#0x00
      0004CD 7F 00            [12] 1471 	mov	r7,#0x00
                                   1472 ;	89C51Board.c:197: for (rowCount = 0; rowCount < 4; ++rowCount)
      0004CF D0 04            [24] 1473 	pop	ar4
                                   1474 ;	89C51Board.c:200: for (colCount = 0; colCount < 4; ++colCount)
      0004D1                       1475 00105$:
                                   1476 ;	89C51Board.c:202: portValue = ~P1 & (0x01 << colCount);
      0004D1 C0 04            [24] 1477 	push	ar4
      0004D3 E5 90            [12] 1478 	mov	a,_P1
      0004D5 F4               [12] 1479 	cpl	a
      0004D6 FA               [12] 1480 	mov	r2,a
      0004D7 8F 04            [24] 1481 	mov	ar4,r7
      0004D9 8C F0            [24] 1482 	mov	b,r4
      0004DB 05 F0            [12] 1483 	inc	b
      0004DD 74 01            [12] 1484 	mov	a,#0x01
      0004DF 80 02            [24] 1485 	sjmp	00131$
      0004E1                       1486 00129$:
      0004E1 25 E0            [12] 1487 	add	a,acc
      0004E3                       1488 00131$:
      0004E3 D5 F0 FB         [24] 1489 	djnz	b,00129$
      0004E6 5A               [12] 1490 	anl	a,r2
                                   1491 ;	89C51Board.c:203: if (portValue)
      0004E7 D0 04            [24] 1492 	pop	ar4
      0004E9 60 3A            [24] 1493 	jz	00106$
                                   1494 ;	89C51Board.c:205: *keys = rowCount * 4 + colCount + 1;
      0004EB 8C 02            [24] 1495 	mov	ar2,r4
      0004ED 7F 00            [12] 1496 	mov	r7,#0x00
      0004EF EA               [12] 1497 	mov	a,r2
      0004F0 2A               [12] 1498 	add	a,r2
      0004F1 FA               [12] 1499 	mov	r2,a
      0004F2 EF               [12] 1500 	mov	a,r7
      0004F3 33               [12] 1501 	rlc	a
      0004F4 FF               [12] 1502 	mov	r7,a
      0004F5 EA               [12] 1503 	mov	a,r2
      0004F6 2A               [12] 1504 	add	a,r2
      0004F7 FA               [12] 1505 	mov	r2,a
      0004F8 EF               [12] 1506 	mov	a,r7
      0004F9 33               [12] 1507 	rlc	a
      0004FA FF               [12] 1508 	mov	r7,a
      0004FB E5 4D            [12] 1509 	mov	a,_bp
      0004FD 24 04            [12] 1510 	add	a,#0x04
      0004FF F8               [12] 1511 	mov	r0,a
      000500 86 05            [24] 1512 	mov	ar5,@r0
      000502 7E 00            [12] 1513 	mov	r6,#0x00
      000504 ED               [12] 1514 	mov	a,r5
      000505 2A               [12] 1515 	add	a,r2
      000506 FA               [12] 1516 	mov	r2,a
      000507 EE               [12] 1517 	mov	a,r6
      000508 3F               [12] 1518 	addc	a,r7
      000509 FF               [12] 1519 	mov	r7,a
      00050A 0A               [12] 1520 	inc	r2
      00050B BA 00 01         [24] 1521 	cjne	r2,#0x00,00133$
      00050E 0F               [12] 1522 	inc	r7
      00050F                       1523 00133$:
      00050F A8 4D            [24] 1524 	mov	r0,_bp
      000511 08               [12] 1525 	inc	r0
      000512 86 82            [24] 1526 	mov	dpl,@r0
      000514 08               [12] 1527 	inc	r0
      000515 86 83            [24] 1528 	mov	dph,@r0
      000517 08               [12] 1529 	inc	r0
      000518 86 F0            [24] 1530 	mov	b,@r0
      00051A EA               [12] 1531 	mov	a,r2
      00051B 12 3C 27         [24] 1532 	lcall	__gptrput
      00051E A3               [24] 1533 	inc	dptr
      00051F EF               [12] 1534 	mov	a,r7
      000520 12 3C 27         [24] 1535 	lcall	__gptrput
                                   1536 ;	89C51Board.c:206: return;
      000523 80 18            [24] 1537 	sjmp	00109$
      000525                       1538 00106$:
                                   1539 ;	89C51Board.c:200: for (colCount = 0; colCount < 4; ++colCount)
      000525 0F               [12] 1540 	inc	r7
      000526 E5 4D            [12] 1541 	mov	a,_bp
      000528 24 04            [12] 1542 	add	a,#0x04
      00052A F8               [12] 1543 	mov	r0,a
      00052B A6 07            [24] 1544 	mov	@r0,ar7
      00052D BF 04 00         [24] 1545 	cjne	r7,#0x04,00134$
      000530                       1546 00134$:
      000530 40 9F            [24] 1547 	jc	00105$
                                   1548 ;	89C51Board.c:197: for (rowCount = 0; rowCount < 4; ++rowCount)
      000532 0B               [12] 1549 	inc	r3
      000533 8B 04            [24] 1550 	mov	ar4,r3
      000535 BB 04 00         [24] 1551 	cjne	r3,#0x04,00136$
      000538                       1552 00136$:
      000538 50 03            [24] 1553 	jnc	00137$
      00053A 02 04 A4         [24] 1554 	ljmp	00107$
      00053D                       1555 00137$:
      00053D                       1556 00109$:
                                   1557 ;	89C51Board.c:211: }
      00053D 85 4D 81         [24] 1558 	mov	sp,_bp
      000540 D0 4D            [24] 1559 	pop	_bp
      000542 22               [24] 1560 	ret
                                   1561 ;------------------------------------------------------------
                                   1562 ;Allocation info for local variables in function 'Hardware_GetInputPortValues'
                                   1563 ;------------------------------------------------------------
                                   1564 ;pValue                    Allocated to registers r5 r6 r7 
                                   1565 ;------------------------------------------------------------
                                   1566 ;	89C51Board.c:214: void Hardware_GetInputPortValues(unsigned char *pValue) REENTRANT
                                   1567 ;	-----------------------------------------
                                   1568 ;	 function Hardware_GetInputPortValues
                                   1569 ;	-----------------------------------------
      000543                       1570 _Hardware_GetInputPortValues:
      000543 AD 82            [24] 1571 	mov	r5,dpl
      000545 AE 83            [24] 1572 	mov	r6,dph
      000547 AF F0            [24] 1573 	mov	r7,b
                                   1574 ;	89C51Board.c:216: P3 = 0xfC;
      000549 75 B0 FC         [24] 1575 	mov	_P3,#0xfc
                                   1576 ;	89C51Board.c:217: *pValue = P3 & 0x3C;
      00054C AC B0            [24] 1577 	mov	r4,_P3
      00054E 53 04 3C         [24] 1578 	anl	ar4,#0x3c
      000551 8D 82            [24] 1579 	mov	dpl,r5
      000553 8E 83            [24] 1580 	mov	dph,r6
      000555 8F F0            [24] 1581 	mov	b,r7
                                   1582 ;	89C51Board.c:218: *pValue = ~ (*pValue); // This hardware has logic 1 as pulled down
      000557 EC               [12] 1583 	mov	a,r4
      000558 12 3C 27         [24] 1584 	lcall	__gptrput
      00055B F4               [12] 1585 	cpl	a
      00055C FC               [12] 1586 	mov	r4,a
      00055D 8D 82            [24] 1587 	mov	dpl,r5
      00055F 8E 83            [24] 1588 	mov	dph,r6
      000561 8F F0            [24] 1589 	mov	b,r7
      000563 12 3C 27         [24] 1590 	lcall	__gptrput
                                   1591 ;	89C51Board.c:219: *pValue &= ~ (0x40); // Do not use zone5
      000566 53 04 BF         [24] 1592 	anl	ar4,#0xbf
      000569 8D 82            [24] 1593 	mov	dpl,r5
      00056B 8E 83            [24] 1594 	mov	dph,r6
      00056D 8F F0            [24] 1595 	mov	b,r7
      00056F EC               [12] 1596 	mov	a,r4
                                   1597 ;	89C51Board.c:221: }
      000570 02 3C 27         [24] 1598 	ljmp	__gptrput
                                   1599 ;------------------------------------------------------------
                                   1600 ;Allocation info for local variables in function 'Hardware_SetOutputPortValues'
                                   1601 ;------------------------------------------------------------
                                   1602 ;value                     Allocated to registers 
                                   1603 ;------------------------------------------------------------
                                   1604 ;	89C51Board.c:223: void Hardware_SetOutputPortValues(unsigned char value) REENTRANT
                                   1605 ;	-----------------------------------------
                                   1606 ;	 function Hardware_SetOutputPortValues
                                   1607 ;	-----------------------------------------
      000573                       1608 _Hardware_SetOutputPortValues:
      000573 85 82 A0         [24] 1609 	mov	_P2,dpl
                                   1610 ;	89C51Board.c:225: P2 = value;	
                                   1611 ;	89C51Board.c:226: }
      000576 22               [24] 1612 	ret
                                   1613 ;------------------------------------------------------------
                                   1614 ;Allocation info for local variables in function 'Hardware_CrashDump'
                                   1615 ;------------------------------------------------------------
                                   1616 ;message                   Allocated to registers 
                                   1617 ;buffer                    Allocated to stack - _bp +3
                                   1618 ;i                         Allocated to registers r2 r3 
                                   1619 ;sloc0                     Allocated to stack - _bp +1
                                   1620 ;sloc1                     Allocated to stack - _bp +2
                                   1621 ;------------------------------------------------------------
                                   1622 ;	89C51Board.c:228: void Hardware_CrashDump(unsigned char* message) REENTRANT
                                   1623 ;	-----------------------------------------
                                   1624 ;	 function Hardware_CrashDump
                                   1625 ;	-----------------------------------------
      000577                       1626 _Hardware_CrashDump:
      000577 C0 4D            [24] 1627 	push	_bp
      000579 E5 81            [12] 1628 	mov	a,sp
      00057B F5 4D            [12] 1629 	mov	_bp,a
      00057D 24 23            [12] 1630 	add	a,#0x23
      00057F F5 81            [12] 1631 	mov	sp,a
      000581 AD 82            [24] 1632 	mov	r5,dpl
      000583 AE 83            [24] 1633 	mov	r6,dph
      000585 AF F0            [24] 1634 	mov	r7,b
                                   1635 ;	89C51Board.c:232: for (i = 0; i < SCREEN_BUFFER_SIZE; ++i)
      000587 E5 4D            [12] 1636 	mov	a,_bp
      000589 24 03            [12] 1637 	add	a,#0x03
      00058B FC               [12] 1638 	mov	r4,a
      00058C A8 4D            [24] 1639 	mov	r0,_bp
      00058E 08               [12] 1640 	inc	r0
      00058F A6 04            [24] 1641 	mov	@r0,ar4
      000591 7A 00            [12] 1642 	mov	r2,#0x00
      000593 7B 00            [12] 1643 	mov	r3,#0x00
      000595                       1644 00108$:
                                   1645 ;	89C51Board.c:234: if (*message != 0)
      000595 8D 82            [24] 1646 	mov	dpl,r5
      000597 8E 83            [24] 1647 	mov	dph,r6
      000599 8F F0            [24] 1648 	mov	b,r7
      00059B A8 4D            [24] 1649 	mov	r0,_bp
      00059D 08               [12] 1650 	inc	r0
      00059E 08               [12] 1651 	inc	r0
      00059F 12 3D E8         [24] 1652 	lcall	__gptrget
      0005A2 F6               [12] 1653 	mov	@r0,a
      0005A3 A8 4D            [24] 1654 	mov	r0,_bp
      0005A5 08               [12] 1655 	inc	r0
      0005A6 08               [12] 1656 	inc	r0
      0005A7 E6               [12] 1657 	mov	a,@r0
      0005A8 60 13            [24] 1658 	jz	00102$
                                   1659 ;	89C51Board.c:236: buffer[i] = *message;
      0005AA A8 4D            [24] 1660 	mov	r0,_bp
      0005AC 08               [12] 1661 	inc	r0
      0005AD EA               [12] 1662 	mov	a,r2
      0005AE 26               [12] 1663 	add	a,@r0
      0005AF F8               [12] 1664 	mov	r0,a
      0005B0 A9 4D            [24] 1665 	mov	r1,_bp
      0005B2 09               [12] 1666 	inc	r1
      0005B3 09               [12] 1667 	inc	r1
      0005B4 E7               [12] 1668 	mov	a,@r1
      0005B5 F6               [12] 1669 	mov	@r0,a
                                   1670 ;	89C51Board.c:237: ++message;
      0005B6 0D               [12] 1671 	inc	r5
      0005B7 BD 00 08         [24] 1672 	cjne	r5,#0x00,00109$
      0005BA 0E               [12] 1673 	inc	r6
      0005BB 80 05            [24] 1674 	sjmp	00109$
      0005BD                       1675 00102$:
                                   1676 ;	89C51Board.c:241: buffer[i] = ' ';
      0005BD EA               [12] 1677 	mov	a,r2
      0005BE 2C               [12] 1678 	add	a,r4
      0005BF F8               [12] 1679 	mov	r0,a
      0005C0 76 20            [12] 1680 	mov	@r0,#0x20
      0005C2                       1681 00109$:
                                   1682 ;	89C51Board.c:232: for (i = 0; i < SCREEN_BUFFER_SIZE; ++i)
      0005C2 0A               [12] 1683 	inc	r2
      0005C3 BA 00 01         [24] 1684 	cjne	r2,#0x00,00131$
      0005C6 0B               [12] 1685 	inc	r3
      0005C7                       1686 00131$:
      0005C7 C3               [12] 1687 	clr	c
      0005C8 EA               [12] 1688 	mov	a,r2
      0005C9 94 20            [12] 1689 	subb	a,#0x20
      0005CB EB               [12] 1690 	mov	a,r3
      0005CC 64 80            [12] 1691 	xrl	a,#0x80
      0005CE 94 80            [12] 1692 	subb	a,#0x80
      0005D0 40 C3            [24] 1693 	jc	00108$
                                   1694 ;	89C51Board.c:246: DirectWriteToDisplay(buffer);
      0005D2 7F 00            [12] 1695 	mov	r7,#0x00
      0005D4 7E 40            [12] 1696 	mov	r6,#0x40
      0005D6 8C 82            [24] 1697 	mov	dpl,r4
      0005D8 8F 83            [24] 1698 	mov	dph,r7
      0005DA 8E F0            [24] 1699 	mov	b,r6
      0005DC 12 27 2B         [24] 1700 	lcall	_DirectWriteToDisplay
                                   1701 ;	89C51Board.c:247: while (1);
      0005DF                       1702 00106$:
      0005DF 80 FE            [24] 1703 	sjmp	00106$
                                   1704 ;	89C51Board.c:249: }
      0005E1 85 4D 81         [24] 1705 	mov	sp,_bp
      0005E4 D0 4D            [24] 1706 	pop	_bp
      0005E6 22               [24] 1707 	ret
                                   1708 	.area CSEG    (CODE)
                                   1709 	.area CONST   (CODE)
                                   1710 	.area CONST   (CODE)
      003E08                       1711 ___str_0:
      003E08 4F 75 74 4F 66 54 69  1712 	.ascii "OutOfTimers"
             6D 65 72 73
      003E13 00                    1713 	.db 0x00
                                   1714 	.area CSEG    (CODE)
                                   1715 	.area XINIT   (CODE)
                                   1716 	.area CABS    (ABS,CODE)
