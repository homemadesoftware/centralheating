                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module DateTime
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _P5_7
                                     12 	.globl _P5_6
                                     13 	.globl _P5_5
                                     14 	.globl _P5_4
                                     15 	.globl _P5_3
                                     16 	.globl _P5_2
                                     17 	.globl _P5_1
                                     18 	.globl _P5_0
                                     19 	.globl _P4_7
                                     20 	.globl _P4_6
                                     21 	.globl _P4_5
                                     22 	.globl _P4_4
                                     23 	.globl _P4_3
                                     24 	.globl _P4_2
                                     25 	.globl _P4_1
                                     26 	.globl _P4_0
                                     27 	.globl _PX0L
                                     28 	.globl _PT0L
                                     29 	.globl _PX1L
                                     30 	.globl _PT1L
                                     31 	.globl _PSL
                                     32 	.globl _PT2L
                                     33 	.globl _PPCL
                                     34 	.globl _EC
                                     35 	.globl _CCF0
                                     36 	.globl _CCF1
                                     37 	.globl _CCF2
                                     38 	.globl _CCF3
                                     39 	.globl _CCF4
                                     40 	.globl _CR
                                     41 	.globl _CF
                                     42 	.globl _TF2
                                     43 	.globl _EXF2
                                     44 	.globl _RCLK
                                     45 	.globl _TCLK
                                     46 	.globl _EXEN2
                                     47 	.globl _TR2
                                     48 	.globl _C_T2
                                     49 	.globl _CP_RL2
                                     50 	.globl _T2CON_7
                                     51 	.globl _T2CON_6
                                     52 	.globl _T2CON_5
                                     53 	.globl _T2CON_4
                                     54 	.globl _T2CON_3
                                     55 	.globl _T2CON_2
                                     56 	.globl _T2CON_1
                                     57 	.globl _T2CON_0
                                     58 	.globl _PT2
                                     59 	.globl _ET2
                                     60 	.globl _CY
                                     61 	.globl _AC
                                     62 	.globl _F0
                                     63 	.globl _RS1
                                     64 	.globl _RS0
                                     65 	.globl _OV
                                     66 	.globl _F1
                                     67 	.globl _P
                                     68 	.globl _PS
                                     69 	.globl _PT1
                                     70 	.globl _PX1
                                     71 	.globl _PT0
                                     72 	.globl _PX0
                                     73 	.globl _RD
                                     74 	.globl _WR
                                     75 	.globl _T1
                                     76 	.globl _T0
                                     77 	.globl _INT1
                                     78 	.globl _INT0
                                     79 	.globl _TXD
                                     80 	.globl _RXD
                                     81 	.globl _P3_7
                                     82 	.globl _P3_6
                                     83 	.globl _P3_5
                                     84 	.globl _P3_4
                                     85 	.globl _P3_3
                                     86 	.globl _P3_2
                                     87 	.globl _P3_1
                                     88 	.globl _P3_0
                                     89 	.globl _EA
                                     90 	.globl _ES
                                     91 	.globl _ET1
                                     92 	.globl _EX1
                                     93 	.globl _ET0
                                     94 	.globl _EX0
                                     95 	.globl _P2_7
                                     96 	.globl _P2_6
                                     97 	.globl _P2_5
                                     98 	.globl _P2_4
                                     99 	.globl _P2_3
                                    100 	.globl _P2_2
                                    101 	.globl _P2_1
                                    102 	.globl _P2_0
                                    103 	.globl _SM0
                                    104 	.globl _SM1
                                    105 	.globl _SM2
                                    106 	.globl _REN
                                    107 	.globl _TB8
                                    108 	.globl _RB8
                                    109 	.globl _TI
                                    110 	.globl _RI
                                    111 	.globl _P1_7
                                    112 	.globl _P1_6
                                    113 	.globl _P1_5
                                    114 	.globl _P1_4
                                    115 	.globl _P1_3
                                    116 	.globl _P1_2
                                    117 	.globl _P1_1
                                    118 	.globl _P1_0
                                    119 	.globl _TF1
                                    120 	.globl _TR1
                                    121 	.globl _TF0
                                    122 	.globl _TR0
                                    123 	.globl _IE1
                                    124 	.globl _IT1
                                    125 	.globl _IE0
                                    126 	.globl _IT0
                                    127 	.globl _P0_7
                                    128 	.globl _P0_6
                                    129 	.globl _P0_5
                                    130 	.globl _P0_4
                                    131 	.globl _P0_3
                                    132 	.globl _P0_2
                                    133 	.globl _P0_1
                                    134 	.globl _P0_0
                                    135 	.globl _EECON
                                    136 	.globl _KBF
                                    137 	.globl _KBE
                                    138 	.globl _KBLS
                                    139 	.globl _BRL
                                    140 	.globl _BDRCON
                                    141 	.globl _T2MOD
                                    142 	.globl _SPDAT
                                    143 	.globl _SPSTA
                                    144 	.globl _SPCON
                                    145 	.globl _SADEN
                                    146 	.globl _SADDR
                                    147 	.globl _WDTPRG
                                    148 	.globl _WDTRST
                                    149 	.globl _P5
                                    150 	.globl _P4
                                    151 	.globl _IPH1
                                    152 	.globl _IPL1
                                    153 	.globl _IPH0
                                    154 	.globl _IPL0
                                    155 	.globl _IEN1
                                    156 	.globl _IEN0
                                    157 	.globl _CMOD
                                    158 	.globl _CL
                                    159 	.globl _CH
                                    160 	.globl _CCON
                                    161 	.globl _CCAPM4
                                    162 	.globl _CCAPM3
                                    163 	.globl _CCAPM2
                                    164 	.globl _CCAPM1
                                    165 	.globl _CCAPM0
                                    166 	.globl _CCAP4L
                                    167 	.globl _CCAP3L
                                    168 	.globl _CCAP2L
                                    169 	.globl _CCAP1L
                                    170 	.globl _CCAP0L
                                    171 	.globl _CCAP4H
                                    172 	.globl _CCAP3H
                                    173 	.globl _CCAP2H
                                    174 	.globl _CCAP1H
                                    175 	.globl _CCAP0H
                                    176 	.globl _CKCON1
                                    177 	.globl _CKCON0
                                    178 	.globl _CKRL
                                    179 	.globl _AUXR1
                                    180 	.globl _AUXR
                                    181 	.globl _TH2
                                    182 	.globl _TL2
                                    183 	.globl _RCAP2H
                                    184 	.globl _RCAP2L
                                    185 	.globl _T2CON
                                    186 	.globl _B
                                    187 	.globl _ACC
                                    188 	.globl _PSW
                                    189 	.globl _IP
                                    190 	.globl _P3
                                    191 	.globl _IE
                                    192 	.globl _P2
                                    193 	.globl _SBUF
                                    194 	.globl _SCON
                                    195 	.globl _P1
                                    196 	.globl _TH1
                                    197 	.globl _TH0
                                    198 	.globl _TL1
                                    199 	.globl _TL0
                                    200 	.globl _TMOD
                                    201 	.globl _TCON
                                    202 	.globl _PCON
                                    203 	.globl _DPH
                                    204 	.globl _DPL
                                    205 	.globl _SP
                                    206 	.globl _P0
                                    207 	.globl _CompareDateTime_PARM_2
                                    208 	.globl _AddSecondsToDateTime_PARM_3
                                    209 	.globl _AddSecondsToDateTime_PARM_2
                                    210 	.globl _FormatDate_PARM_2
                                    211 	.globl _FormatTime_PARM_3
                                    212 	.globl _FormatTime_PARM_2
                                    213 	.globl _GetNumDaysInMonth
                                    214 	.globl _FormatTime
                                    215 	.globl _FormatDate
                                    216 	.globl _AddSecondsToDateTime
                                    217 	.globl _CompareDateTime
                                    218 ;--------------------------------------------------------
                                    219 ; special function registers
                                    220 ;--------------------------------------------------------
                                    221 	.area RSEG    (ABS,DATA)
      000000                        222 	.org 0x0000
                           000080   223 _P0	=	0x0080
                           000081   224 _SP	=	0x0081
                           000082   225 _DPL	=	0x0082
                           000083   226 _DPH	=	0x0083
                           000087   227 _PCON	=	0x0087
                           000088   228 _TCON	=	0x0088
                           000089   229 _TMOD	=	0x0089
                           00008A   230 _TL0	=	0x008a
                           00008B   231 _TL1	=	0x008b
                           00008C   232 _TH0	=	0x008c
                           00008D   233 _TH1	=	0x008d
                           000090   234 _P1	=	0x0090
                           000098   235 _SCON	=	0x0098
                           000099   236 _SBUF	=	0x0099
                           0000A0   237 _P2	=	0x00a0
                           0000A8   238 _IE	=	0x00a8
                           0000B0   239 _P3	=	0x00b0
                           0000B8   240 _IP	=	0x00b8
                           0000D0   241 _PSW	=	0x00d0
                           0000E0   242 _ACC	=	0x00e0
                           0000F0   243 _B	=	0x00f0
                           0000C8   244 _T2CON	=	0x00c8
                           0000CA   245 _RCAP2L	=	0x00ca
                           0000CB   246 _RCAP2H	=	0x00cb
                           0000CC   247 _TL2	=	0x00cc
                           0000CD   248 _TH2	=	0x00cd
                           00008E   249 _AUXR	=	0x008e
                           0000A2   250 _AUXR1	=	0x00a2
                           000097   251 _CKRL	=	0x0097
                           00008F   252 _CKCON0	=	0x008f
                           0000AF   253 _CKCON1	=	0x00af
                           0000FA   254 _CCAP0H	=	0x00fa
                           0000FB   255 _CCAP1H	=	0x00fb
                           0000FC   256 _CCAP2H	=	0x00fc
                           0000FD   257 _CCAP3H	=	0x00fd
                           0000FE   258 _CCAP4H	=	0x00fe
                           0000EA   259 _CCAP0L	=	0x00ea
                           0000EB   260 _CCAP1L	=	0x00eb
                           0000EC   261 _CCAP2L	=	0x00ec
                           0000ED   262 _CCAP3L	=	0x00ed
                           0000EE   263 _CCAP4L	=	0x00ee
                           0000DA   264 _CCAPM0	=	0x00da
                           0000DB   265 _CCAPM1	=	0x00db
                           0000DC   266 _CCAPM2	=	0x00dc
                           0000DD   267 _CCAPM3	=	0x00dd
                           0000DE   268 _CCAPM4	=	0x00de
                           0000D8   269 _CCON	=	0x00d8
                           0000F9   270 _CH	=	0x00f9
                           0000E9   271 _CL	=	0x00e9
                           0000D9   272 _CMOD	=	0x00d9
                           0000A8   273 _IEN0	=	0x00a8
                           0000B1   274 _IEN1	=	0x00b1
                           0000B8   275 _IPL0	=	0x00b8
                           0000B7   276 _IPH0	=	0x00b7
                           0000B2   277 _IPL1	=	0x00b2
                           0000B3   278 _IPH1	=	0x00b3
                           0000C0   279 _P4	=	0x00c0
                           0000E8   280 _P5	=	0x00e8
                           0000A6   281 _WDTRST	=	0x00a6
                           0000A7   282 _WDTPRG	=	0x00a7
                           0000A9   283 _SADDR	=	0x00a9
                           0000B9   284 _SADEN	=	0x00b9
                           0000C3   285 _SPCON	=	0x00c3
                           0000C4   286 _SPSTA	=	0x00c4
                           0000C5   287 _SPDAT	=	0x00c5
                           0000C9   288 _T2MOD	=	0x00c9
                           00009B   289 _BDRCON	=	0x009b
                           00009A   290 _BRL	=	0x009a
                           00009C   291 _KBLS	=	0x009c
                           00009D   292 _KBE	=	0x009d
                           00009E   293 _KBF	=	0x009e
                           0000D2   294 _EECON	=	0x00d2
                                    295 ;--------------------------------------------------------
                                    296 ; special function bits
                                    297 ;--------------------------------------------------------
                                    298 	.area RSEG    (ABS,DATA)
      000000                        299 	.org 0x0000
                           000080   300 _P0_0	=	0x0080
                           000081   301 _P0_1	=	0x0081
                           000082   302 _P0_2	=	0x0082
                           000083   303 _P0_3	=	0x0083
                           000084   304 _P0_4	=	0x0084
                           000085   305 _P0_5	=	0x0085
                           000086   306 _P0_6	=	0x0086
                           000087   307 _P0_7	=	0x0087
                           000088   308 _IT0	=	0x0088
                           000089   309 _IE0	=	0x0089
                           00008A   310 _IT1	=	0x008a
                           00008B   311 _IE1	=	0x008b
                           00008C   312 _TR0	=	0x008c
                           00008D   313 _TF0	=	0x008d
                           00008E   314 _TR1	=	0x008e
                           00008F   315 _TF1	=	0x008f
                           000090   316 _P1_0	=	0x0090
                           000091   317 _P1_1	=	0x0091
                           000092   318 _P1_2	=	0x0092
                           000093   319 _P1_3	=	0x0093
                           000094   320 _P1_4	=	0x0094
                           000095   321 _P1_5	=	0x0095
                           000096   322 _P1_6	=	0x0096
                           000097   323 _P1_7	=	0x0097
                           000098   324 _RI	=	0x0098
                           000099   325 _TI	=	0x0099
                           00009A   326 _RB8	=	0x009a
                           00009B   327 _TB8	=	0x009b
                           00009C   328 _REN	=	0x009c
                           00009D   329 _SM2	=	0x009d
                           00009E   330 _SM1	=	0x009e
                           00009F   331 _SM0	=	0x009f
                           0000A0   332 _P2_0	=	0x00a0
                           0000A1   333 _P2_1	=	0x00a1
                           0000A2   334 _P2_2	=	0x00a2
                           0000A3   335 _P2_3	=	0x00a3
                           0000A4   336 _P2_4	=	0x00a4
                           0000A5   337 _P2_5	=	0x00a5
                           0000A6   338 _P2_6	=	0x00a6
                           0000A7   339 _P2_7	=	0x00a7
                           0000A8   340 _EX0	=	0x00a8
                           0000A9   341 _ET0	=	0x00a9
                           0000AA   342 _EX1	=	0x00aa
                           0000AB   343 _ET1	=	0x00ab
                           0000AC   344 _ES	=	0x00ac
                           0000AF   345 _EA	=	0x00af
                           0000B0   346 _P3_0	=	0x00b0
                           0000B1   347 _P3_1	=	0x00b1
                           0000B2   348 _P3_2	=	0x00b2
                           0000B3   349 _P3_3	=	0x00b3
                           0000B4   350 _P3_4	=	0x00b4
                           0000B5   351 _P3_5	=	0x00b5
                           0000B6   352 _P3_6	=	0x00b6
                           0000B7   353 _P3_7	=	0x00b7
                           0000B0   354 _RXD	=	0x00b0
                           0000B1   355 _TXD	=	0x00b1
                           0000B2   356 _INT0	=	0x00b2
                           0000B3   357 _INT1	=	0x00b3
                           0000B4   358 _T0	=	0x00b4
                           0000B5   359 _T1	=	0x00b5
                           0000B6   360 _WR	=	0x00b6
                           0000B7   361 _RD	=	0x00b7
                           0000B8   362 _PX0	=	0x00b8
                           0000B9   363 _PT0	=	0x00b9
                           0000BA   364 _PX1	=	0x00ba
                           0000BB   365 _PT1	=	0x00bb
                           0000BC   366 _PS	=	0x00bc
                           0000D0   367 _P	=	0x00d0
                           0000D1   368 _F1	=	0x00d1
                           0000D2   369 _OV	=	0x00d2
                           0000D3   370 _RS0	=	0x00d3
                           0000D4   371 _RS1	=	0x00d4
                           0000D5   372 _F0	=	0x00d5
                           0000D6   373 _AC	=	0x00d6
                           0000D7   374 _CY	=	0x00d7
                           0000AD   375 _ET2	=	0x00ad
                           0000BD   376 _PT2	=	0x00bd
                           0000C8   377 _T2CON_0	=	0x00c8
                           0000C9   378 _T2CON_1	=	0x00c9
                           0000CA   379 _T2CON_2	=	0x00ca
                           0000CB   380 _T2CON_3	=	0x00cb
                           0000CC   381 _T2CON_4	=	0x00cc
                           0000CD   382 _T2CON_5	=	0x00cd
                           0000CE   383 _T2CON_6	=	0x00ce
                           0000CF   384 _T2CON_7	=	0x00cf
                           0000C8   385 _CP_RL2	=	0x00c8
                           0000C9   386 _C_T2	=	0x00c9
                           0000CA   387 _TR2	=	0x00ca
                           0000CB   388 _EXEN2	=	0x00cb
                           0000CC   389 _TCLK	=	0x00cc
                           0000CD   390 _RCLK	=	0x00cd
                           0000CE   391 _EXF2	=	0x00ce
                           0000CF   392 _TF2	=	0x00cf
                           0000DF   393 _CF	=	0x00df
                           0000DE   394 _CR	=	0x00de
                           0000DC   395 _CCF4	=	0x00dc
                           0000DB   396 _CCF3	=	0x00db
                           0000DA   397 _CCF2	=	0x00da
                           0000D9   398 _CCF1	=	0x00d9
                           0000D8   399 _CCF0	=	0x00d8
                           0000AE   400 _EC	=	0x00ae
                           0000BE   401 _PPCL	=	0x00be
                           0000BD   402 _PT2L	=	0x00bd
                           0000BC   403 _PSL	=	0x00bc
                           0000BB   404 _PT1L	=	0x00bb
                           0000BA   405 _PX1L	=	0x00ba
                           0000B9   406 _PT0L	=	0x00b9
                           0000B8   407 _PX0L	=	0x00b8
                           0000C0   408 _P4_0	=	0x00c0
                           0000C1   409 _P4_1	=	0x00c1
                           0000C2   410 _P4_2	=	0x00c2
                           0000C3   411 _P4_3	=	0x00c3
                           0000C4   412 _P4_4	=	0x00c4
                           0000C5   413 _P4_5	=	0x00c5
                           0000C6   414 _P4_6	=	0x00c6
                           0000C7   415 _P4_7	=	0x00c7
                           0000E8   416 _P5_0	=	0x00e8
                           0000E9   417 _P5_1	=	0x00e9
                           0000EA   418 _P5_2	=	0x00ea
                           0000EB   419 _P5_3	=	0x00eb
                           0000EC   420 _P5_4	=	0x00ec
                           0000ED   421 _P5_5	=	0x00ed
                           0000EE   422 _P5_6	=	0x00ee
                           0000EF   423 _P5_7	=	0x00ef
                                    424 ;--------------------------------------------------------
                                    425 ; overlayable register banks
                                    426 ;--------------------------------------------------------
                                    427 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        428 	.ds 8
                                    429 ;--------------------------------------------------------
                                    430 ; internal ram data
                                    431 ;--------------------------------------------------------
                                    432 	.area DSEG    (DATA)
      00000C                        433 _AddSecondsToDateTime_sloc0_1_0:
      00000C                        434 	.ds 3
      00000F                        435 _AddSecondsToDateTime_sloc1_1_0:
      00000F                        436 	.ds 3
      000012                        437 _AddSecondsToDateTime_sloc2_1_0:
      000012                        438 	.ds 3
      000015                        439 _AddSecondsToDateTime_sloc3_1_0:
      000015                        440 	.ds 3
      000018                        441 _AddSecondsToDateTime_sloc4_1_0:
      000018                        442 	.ds 3
      00001B                        443 _AddSecondsToDateTime_sloc5_1_0:
      00001B                        444 	.ds 3
                                    445 ;--------------------------------------------------------
                                    446 ; overlayable items in internal ram
                                    447 ;--------------------------------------------------------
                                    448 	.area	OSEG    (OVR,DATA)
      00003C                        449 _FormatTime_sloc0_1_0:
      00003C                        450 	.ds 3
      00003F                        451 _FormatTime_sloc1_1_0:
      00003F                        452 	.ds 3
      000042                        453 _FormatTime_sloc2_1_0:
      000042                        454 	.ds 3
                                    455 	.area	OSEG    (OVR,DATA)
      00003C                        456 _FormatDate_sloc0_1_0:
      00003C                        457 	.ds 3
      00003F                        458 _FormatDate_sloc1_1_0:
      00003F                        459 	.ds 3
      000042                        460 _FormatDate_sloc2_1_0:
      000042                        461 	.ds 3
                                    462 	.area	OSEG    (OVR,DATA)
      00003C                        463 _CompareDateTime_sloc0_1_0:
      00003C                        464 	.ds 1
      00003D                        465 _CompareDateTime_sloc1_1_0:
      00003D                        466 	.ds 3
      000040                        467 _CompareDateTime_sloc2_1_0:
      000040                        468 	.ds 3
      000043                        469 _CompareDateTime_sloc3_1_0:
      000043                        470 	.ds 1
      000044                        471 _CompareDateTime_sloc4_1_0:
      000044                        472 	.ds 3
      000047                        473 _CompareDateTime_sloc5_1_0:
      000047                        474 	.ds 3
                                    475 ;--------------------------------------------------------
                                    476 ; indirectly addressable internal ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area ISEG    (DATA)
                                    479 ;--------------------------------------------------------
                                    480 ; absolute internal ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area IABS    (ABS,DATA)
                                    483 	.area IABS    (ABS,DATA)
                                    484 ;--------------------------------------------------------
                                    485 ; bit data
                                    486 ;--------------------------------------------------------
                                    487 	.area BSEG    (BIT)
                                    488 ;--------------------------------------------------------
                                    489 ; paged external ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area PSEG    (PAG,XDATA)
                                    492 ;--------------------------------------------------------
                                    493 ; uninitialized external ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area XSEG    (XDATA)
      000295                        496 _GetNumDaysInMonth_pdt_10000_17:
      000295                        497 	.ds 3
      000298                        498 _FormatTime_PARM_2:
      000298                        499 	.ds 3
      00029B                        500 _FormatTime_PARM_3:
      00029B                        501 	.ds 1
      00029C                        502 _FormatTime_buffer_10000_22:
      00029C                        503 	.ds 3
      00029F                        504 _FormatDate_PARM_2:
      00029F                        505 	.ds 3
      0002A2                        506 _FormatDate_buffer_10000_25:
      0002A2                        507 	.ds 3
      0002A5                        508 _AddSecondsToDateTime_PARM_2:
      0002A5                        509 	.ds 2
      0002A7                        510 _AddSecondsToDateTime_PARM_3:
      0002A7                        511 	.ds 3
      0002AA                        512 _AddSecondsToDateTime_pdt_10000_27:
      0002AA                        513 	.ds 3
      0002AD                        514 _AddSecondsToDateTime_secondsLeft_10000_28:
      0002AD                        515 	.ds 2
      0002AF                        516 _CompareDateTime_PARM_2:
      0002AF                        517 	.ds 3
      0002B2                        518 _CompareDateTime_dt1_10000_35:
      0002B2                        519 	.ds 3
                                    520 ;--------------------------------------------------------
                                    521 ; absolute external ram data
                                    522 ;--------------------------------------------------------
                                    523 	.area XABS    (ABS,XDATA)
                                    524 ;--------------------------------------------------------
                                    525 ; initialized external ram data
                                    526 ;--------------------------------------------------------
                                    527 	.area XISEG   (XDATA)
                                    528 	.area HOME    (CODE)
                                    529 	.area GSINIT0 (CODE)
                                    530 	.area GSINIT1 (CODE)
                                    531 	.area GSINIT2 (CODE)
                                    532 	.area GSINIT3 (CODE)
                                    533 	.area GSINIT4 (CODE)
                                    534 	.area GSINIT5 (CODE)
                                    535 	.area GSINIT  (CODE)
                                    536 	.area GSFINAL (CODE)
                                    537 	.area CSEG    (CODE)
                                    538 ;--------------------------------------------------------
                                    539 ; global & static initialisations
                                    540 ;--------------------------------------------------------
                                    541 	.area HOME    (CODE)
                                    542 	.area GSINIT  (CODE)
                                    543 	.area GSFINAL (CODE)
                                    544 	.area GSINIT  (CODE)
                                    545 ;--------------------------------------------------------
                                    546 ; Home
                                    547 ;--------------------------------------------------------
                                    548 	.area HOME    (CODE)
                                    549 	.area HOME    (CODE)
                                    550 ;--------------------------------------------------------
                                    551 ; code
                                    552 ;--------------------------------------------------------
                                    553 	.area CSEG    (CODE)
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'GetNumDaysInMonth'
                                    556 ;------------------------------------------------------------
                                    557 ;pdt           Allocated with name '_GetNumDaysInMonth_pdt_10000_17'
                                    558 ;year          Allocated with name '_GetNumDaysInMonth_year_10000_18'
                                    559 ;------------------------------------------------------------
                                    560 ;	../Common/DateTime.c:7: int GetNumDaysInMonth(DateTimeStruct* pdt)
                                    561 ;	-----------------------------------------
                                    562 ;	 function GetNumDaysInMonth
                                    563 ;	-----------------------------------------
      002F93                        564 _GetNumDaysInMonth:
                           000007   565 	ar7 = 0x07
                           000006   566 	ar6 = 0x06
                           000005   567 	ar5 = 0x05
                           000004   568 	ar4 = 0x04
                           000003   569 	ar3 = 0x03
                           000002   570 	ar2 = 0x02
                           000001   571 	ar1 = 0x01
                           000000   572 	ar0 = 0x00
      002F93 AF F0            [24]  573 	mov	r7,b
      002F95 AE 83            [24]  574 	mov	r6,dph
      002F97 E5 82            [12]  575 	mov	a,dpl
      002F99 90 02 95         [24]  576 	mov	dptr,#_GetNumDaysInMonth_pdt_10000_17
      002F9C F0               [24]  577 	movx	@dptr,a
      002F9D EE               [12]  578 	mov	a,r6
      002F9E A3               [24]  579 	inc	dptr
      002F9F F0               [24]  580 	movx	@dptr,a
      002FA0 EF               [12]  581 	mov	a,r7
      002FA1 A3               [24]  582 	inc	dptr
      002FA2 F0               [24]  583 	movx	@dptr,a
                                    584 ;	../Common/DateTime.c:9: int year = pdt->year + 2000;
      002FA3 90 02 95         [24]  585 	mov	dptr,#_GetNumDaysInMonth_pdt_10000_17
      002FA6 E0               [24]  586 	movx	a,@dptr
      002FA7 FD               [12]  587 	mov	r5,a
      002FA8 A3               [24]  588 	inc	dptr
      002FA9 E0               [24]  589 	movx	a,@dptr
      002FAA FE               [12]  590 	mov	r6,a
      002FAB A3               [24]  591 	inc	dptr
      002FAC E0               [24]  592 	movx	a,@dptr
      002FAD FF               [12]  593 	mov	r7,a
      002FAE 74 06            [12]  594 	mov	a,#0x06
      002FB0 2D               [12]  595 	add	a, r5
      002FB1 FA               [12]  596 	mov	r2,a
      002FB2 E4               [12]  597 	clr	a
      002FB3 3E               [12]  598 	addc	a, r6
      002FB4 FB               [12]  599 	mov	r3,a
      002FB5 8F 04            [24]  600 	mov	ar4,r7
      002FB7 8A 82            [24]  601 	mov	dpl,r2
      002FB9 8B 83            [24]  602 	mov	dph,r3
      002FBB 8C F0            [24]  603 	mov	b,r4
      002FBD 12 3A B5         [24]  604 	lcall	__gptrget
      002FC0 FA               [12]  605 	mov	r2,a
      002FC1 7C 00            [12]  606 	mov	r4,#0x00
      002FC3 74 D0            [12]  607 	mov	a,#0xd0
      002FC5 2A               [12]  608 	add	a, r2
      002FC6 FB               [12]  609 	mov	r3,a
      002FC7 74 07            [12]  610 	mov	a,#0x07
      002FC9 3C               [12]  611 	addc	a, r4
      002FCA FC               [12]  612 	mov	r4,a
                                    613 ;	../Common/DateTime.c:10: switch (pdt->month)
      002FCB 74 05            [12]  614 	mov	a,#0x05
      002FCD 2D               [12]  615 	add	a, r5
      002FCE FD               [12]  616 	mov	r5,a
      002FCF E4               [12]  617 	clr	a
      002FD0 3E               [12]  618 	addc	a, r6
      002FD1 FE               [12]  619 	mov	r6,a
      002FD2 8D 82            [24]  620 	mov	dpl,r5
      002FD4 8E 83            [24]  621 	mov	dph,r6
      002FD6 8F F0            [24]  622 	mov	b,r7
      002FD8 12 3A B5         [24]  623 	lcall	__gptrget
      002FDB FF               [12]  624 	mov  r7,a
      002FDC 24 F3            [12]  625 	add	a,#0xff - 0x0c
      002FDE 50 03            [24]  626 	jnc	00133$
      002FE0 02 30 9B         [24]  627 	ljmp	00118$
      002FE3                        628 00133$:
      002FE3 EF               [12]  629 	mov	a,r7
      002FE4 24 0A            [12]  630 	add	a,#(00134$-3-.)
      002FE6 83               [24]  631 	movc	a,@a+pc
      002FE7 F5 82            [12]  632 	mov	dpl,a
      002FE9 EF               [12]  633 	mov	a,r7
      002FEA 24 11            [12]  634 	add	a,#(00135$-3-.)
      002FEC 83               [24]  635 	movc	a,@a+pc
      002FED F5 83            [12]  636 	mov	dph,a
      002FEF E4               [12]  637 	clr	a
      002FF0 73               [24]  638 	jmp	@a+dptr
      002FF1                        639 00134$:
      002FF1 9B                     640 	.db	00118$
      002FF2 0B                     641 	.db	00101$
      002FF3 0F                     642 	.db	00102$
      002FF4 73                     643 	.db	00108$
      002FF5 77                     644 	.db	00109$
      002FF6 7B                     645 	.db	00110$
      002FF7 7F                     646 	.db	00111$
      002FF8 83                     647 	.db	00112$
      002FF9 87                     648 	.db	00113$
      002FFA 8B                     649 	.db	00114$
      002FFB 8F                     650 	.db	00115$
      002FFC 93                     651 	.db	00116$
      002FFD 97                     652 	.db	00117$
      002FFE                        653 00135$:
      002FFE 30                     654 	.db	00118$>>8
      002FFF 30                     655 	.db	00101$>>8
      003000 30                     656 	.db	00102$>>8
      003001 30                     657 	.db	00108$>>8
      003002 30                     658 	.db	00109$>>8
      003003 30                     659 	.db	00110$>>8
      003004 30                     660 	.db	00111$>>8
      003005 30                     661 	.db	00112$>>8
      003006 30                     662 	.db	00113$>>8
      003007 30                     663 	.db	00114$>>8
      003008 30                     664 	.db	00115$>>8
      003009 30                     665 	.db	00116$>>8
      00300A 30                     666 	.db	00117$>>8
                                    667 ;	../Common/DateTime.c:12: case 1 :   // Jan
      00300B                        668 00101$:
                                    669 ;	../Common/DateTime.c:13: return 31;
      00300B 90 00 1F         [24]  670 	mov	dptr,#0x001f
      00300E 22               [24]  671 	ret
                                    672 ;	../Common/DateTime.c:14: case 2 :   // Feb
      00300F                        673 00102$:
                                    674 ;	../Common/DateTime.c:15: if ((!(year % 4) && (year % 100)) || !(year % 400))
      00300F 90 02 BF         [24]  675 	mov	dptr,#__modsint_PARM_2
      003012 74 04            [12]  676 	mov	a,#0x04
      003014 F0               [24]  677 	movx	@dptr,a
      003015 E4               [12]  678 	clr	a
      003016 A3               [24]  679 	inc	dptr
      003017 F0               [24]  680 	movx	@dptr,a
      003018 8B 82            [24]  681 	mov	dpl, r3
      00301A 8C 83            [24]  682 	mov	dph, r4
      00301C C0 04            [24]  683 	push	ar4
      00301E C0 03            [24]  684 	push	ar3
      003020 12 39 A2         [24]  685 	lcall	__modsint
      003023 E5 82            [12]  686 	mov	a, dpl
      003025 85 83 F0         [24]  687 	mov	b, dph
      003028 D0 03            [24]  688 	pop	ar3
      00302A D0 04            [24]  689 	pop	ar4
      00302C 45 F0            [12]  690 	orl	a,b
      00302E 70 21            [24]  691 	jnz	00107$
      003030 90 02 BF         [24]  692 	mov	dptr,#__modsint_PARM_2
      003033 74 64            [12]  693 	mov	a,#0x64
      003035 F0               [24]  694 	movx	@dptr,a
      003036 E4               [12]  695 	clr	a
      003037 A3               [24]  696 	inc	dptr
      003038 F0               [24]  697 	movx	@dptr,a
      003039 8B 82            [24]  698 	mov	dpl, r3
      00303B 8C 83            [24]  699 	mov	dph, r4
      00303D C0 04            [24]  700 	push	ar4
      00303F C0 03            [24]  701 	push	ar3
      003041 12 39 A2         [24]  702 	lcall	__modsint
      003044 E5 82            [12]  703 	mov	a, dpl
      003046 85 83 F0         [24]  704 	mov	b, dph
      003049 D0 03            [24]  705 	pop	ar3
      00304B D0 04            [24]  706 	pop	ar4
      00304D 45 F0            [12]  707 	orl	a,b
      00304F 70 1A            [24]  708 	jnz	00103$
      003051                        709 00107$:
      003051 90 02 BF         [24]  710 	mov	dptr,#__modsint_PARM_2
      003054 74 90            [12]  711 	mov	a,#0x90
      003056 F0               [24]  712 	movx	@dptr,a
      003057 74 01            [12]  713 	mov	a,#0x01
      003059 A3               [24]  714 	inc	dptr
      00305A F0               [24]  715 	movx	@dptr,a
      00305B 8B 82            [24]  716 	mov	dpl, r3
      00305D 8C 83            [24]  717 	mov	dph, r4
      00305F 12 39 A2         [24]  718 	lcall	__modsint
      003062 E5 82            [12]  719 	mov	a, dpl
      003064 85 83 F0         [24]  720 	mov	b, dph
      003067 45 F0            [12]  721 	orl	a,b
      003069 70 04            [24]  722 	jnz	00104$
      00306B                        723 00103$:
                                    724 ;	../Common/DateTime.c:17: return 29;
      00306B 90 00 1D         [24]  725 	mov	dptr,#0x001d
      00306E 22               [24]  726 	ret
      00306F                        727 00104$:
                                    728 ;	../Common/DateTime.c:21: return 28;
      00306F 90 00 1C         [24]  729 	mov	dptr,#0x001c
                                    730 ;	../Common/DateTime.c:23: case 3 :   // Mar
      003072 22               [24]  731 	ret
      003073                        732 00108$:
                                    733 ;	../Common/DateTime.c:24: return 31;
      003073 90 00 1F         [24]  734 	mov	dptr,#0x001f
                                    735 ;	../Common/DateTime.c:25: case 4 :   // Apr
      003076 22               [24]  736 	ret
      003077                        737 00109$:
                                    738 ;	../Common/DateTime.c:26: return 30;
      003077 90 00 1E         [24]  739 	mov	dptr,#0x001e
                                    740 ;	../Common/DateTime.c:27: case 5 :   // May
      00307A 22               [24]  741 	ret
      00307B                        742 00110$:
                                    743 ;	../Common/DateTime.c:28: return 31;
      00307B 90 00 1F         [24]  744 	mov	dptr,#0x001f
                                    745 ;	../Common/DateTime.c:29: case 6 :   // Jun
      00307E 22               [24]  746 	ret
      00307F                        747 00111$:
                                    748 ;	../Common/DateTime.c:30: return 30;
      00307F 90 00 1E         [24]  749 	mov	dptr,#0x001e
                                    750 ;	../Common/DateTime.c:31: case 7 :   // Jul 
      003082 22               [24]  751 	ret
      003083                        752 00112$:
                                    753 ;	../Common/DateTime.c:32: return 31;
      003083 90 00 1F         [24]  754 	mov	dptr,#0x001f
                                    755 ;	../Common/DateTime.c:33: case 8 :   // Aug
      003086 22               [24]  756 	ret
      003087                        757 00113$:
                                    758 ;	../Common/DateTime.c:34: return 30;
      003087 90 00 1E         [24]  759 	mov	dptr,#0x001e
                                    760 ;	../Common/DateTime.c:35: case 9 :   // Sep
      00308A 22               [24]  761 	ret
      00308B                        762 00114$:
                                    763 ;	../Common/DateTime.c:36: return 30;
      00308B 90 00 1E         [24]  764 	mov	dptr,#0x001e
                                    765 ;	../Common/DateTime.c:37: case 10 :  // Oct
      00308E 22               [24]  766 	ret
      00308F                        767 00115$:
                                    768 ;	../Common/DateTime.c:38: return 30;
      00308F 90 00 1E         [24]  769 	mov	dptr,#0x001e
                                    770 ;	../Common/DateTime.c:39: case 11 :  // Nov
      003092 22               [24]  771 	ret
      003093                        772 00116$:
                                    773 ;	../Common/DateTime.c:40: return 30;
      003093 90 00 1E         [24]  774 	mov	dptr,#0x001e
                                    775 ;	../Common/DateTime.c:41: case 12 :  // Dec
      003096 22               [24]  776 	ret
      003097                        777 00117$:
                                    778 ;	../Common/DateTime.c:42: return 31;
      003097 90 00 1F         [24]  779 	mov	dptr,#0x001f
                                    780 ;	../Common/DateTime.c:43: }
      00309A 22               [24]  781 	ret
      00309B                        782 00118$:
                                    783 ;	../Common/DateTime.c:44: return -1;
      00309B 90 FF FF         [24]  784 	mov	dptr,#0xffff
                                    785 ;	../Common/DateTime.c:45: }
      00309E 22               [24]  786 	ret
                                    787 ;------------------------------------------------------------
                                    788 ;Allocation info for local variables in function 'FormatTime'
                                    789 ;------------------------------------------------------------
                                    790 ;pdt           Allocated with name '_FormatTime_PARM_2'
                                    791 ;seconds       Allocated with name '_FormatTime_PARM_3'
                                    792 ;buffer        Allocated with name '_FormatTime_buffer_10000_22'
                                    793 ;sloc0         Allocated with name '_FormatTime_sloc0_1_0'
                                    794 ;sloc1         Allocated with name '_FormatTime_sloc1_1_0'
                                    795 ;sloc2         Allocated with name '_FormatTime_sloc2_1_0'
                                    796 ;------------------------------------------------------------
                                    797 ;	../Common/DateTime.c:48: void FormatTime(char *buffer, DateTimeStruct *pdt, unsigned char seconds)
                                    798 ;	-----------------------------------------
                                    799 ;	 function FormatTime
                                    800 ;	-----------------------------------------
      00309F                        801 _FormatTime:
      00309F AF F0            [24]  802 	mov	r7,b
      0030A1 AE 83            [24]  803 	mov	r6,dph
      0030A3 E5 82            [12]  804 	mov	a,dpl
      0030A5 90 02 9C         [24]  805 	mov	dptr,#_FormatTime_buffer_10000_22
      0030A8 F0               [24]  806 	movx	@dptr,a
      0030A9 EE               [12]  807 	mov	a,r6
      0030AA A3               [24]  808 	inc	dptr
      0030AB F0               [24]  809 	movx	@dptr,a
      0030AC EF               [12]  810 	mov	a,r7
      0030AD A3               [24]  811 	inc	dptr
      0030AE F0               [24]  812 	movx	@dptr,a
                                    813 ;	../Common/DateTime.c:50: buffer[0] = (pdt->hours / 10) + '0';
      0030AF 90 02 9C         [24]  814 	mov	dptr,#_FormatTime_buffer_10000_22
      0030B2 E0               [24]  815 	movx	a,@dptr
      0030B3 FD               [12]  816 	mov	r5,a
      0030B4 A3               [24]  817 	inc	dptr
      0030B5 E0               [24]  818 	movx	a,@dptr
      0030B6 FE               [12]  819 	mov	r6,a
      0030B7 A3               [24]  820 	inc	dptr
      0030B8 E0               [24]  821 	movx	a,@dptr
      0030B9 FF               [12]  822 	mov	r7,a
      0030BA 90 02 98         [24]  823 	mov	dptr,#_FormatTime_PARM_2
      0030BD E0               [24]  824 	movx	a,@dptr
      0030BE F5 3C            [12]  825 	mov	_FormatTime_sloc0_1_0,a
      0030C0 A3               [24]  826 	inc	dptr
      0030C1 E0               [24]  827 	movx	a,@dptr
      0030C2 F5 3D            [12]  828 	mov	(_FormatTime_sloc0_1_0 + 1),a
      0030C4 A3               [24]  829 	inc	dptr
      0030C5 E0               [24]  830 	movx	a,@dptr
      0030C6 F5 3E            [12]  831 	mov	(_FormatTime_sloc0_1_0 + 2),a
      0030C8 74 02            [12]  832 	mov	a,#0x02
      0030CA 25 3C            [12]  833 	add	a, _FormatTime_sloc0_1_0
      0030CC F5 3F            [12]  834 	mov	_FormatTime_sloc1_1_0,a
      0030CE E4               [12]  835 	clr	a
      0030CF 35 3D            [12]  836 	addc	a, (_FormatTime_sloc0_1_0 + 1)
      0030D1 F5 40            [12]  837 	mov	(_FormatTime_sloc1_1_0 + 1),a
      0030D3 85 3E 41         [24]  838 	mov	(_FormatTime_sloc1_1_0 + 2),(_FormatTime_sloc0_1_0 + 2)
      0030D6 85 3F 82         [24]  839 	mov	dpl,_FormatTime_sloc1_1_0
      0030D9 85 40 83         [24]  840 	mov	dph,(_FormatTime_sloc1_1_0 + 1)
      0030DC 85 41 F0         [24]  841 	mov	b,(_FormatTime_sloc1_1_0 + 2)
      0030DF 12 3A B5         [24]  842 	lcall	__gptrget
      0030E2 75 F0 0A         [24]  843 	mov	b,#0x0a
      0030E5 84               [48]  844 	div	ab
      0030E6 24 30            [12]  845 	add	a,#0x30
      0030E8 8D 82            [24]  846 	mov	dpl,r5
      0030EA 8E 83            [24]  847 	mov	dph,r6
      0030EC 8F F0            [24]  848 	mov	b,r7
      0030EE 12 39 67         [24]  849 	lcall	__gptrput
                                    850 ;	../Common/DateTime.c:51: buffer[1] = (pdt->hours % 10) + '0';
      0030F1 74 01            [12]  851 	mov	a,#0x01
      0030F3 2D               [12]  852 	add	a, r5
      0030F4 FA               [12]  853 	mov	r2,a
      0030F5 E4               [12]  854 	clr	a
      0030F6 3E               [12]  855 	addc	a, r6
      0030F7 FB               [12]  856 	mov	r3,a
      0030F8 8F 04            [24]  857 	mov	ar4,r7
      0030FA 85 3F 82         [24]  858 	mov	dpl,_FormatTime_sloc1_1_0
      0030FD 85 40 83         [24]  859 	mov	dph,(_FormatTime_sloc1_1_0 + 1)
      003100 85 41 F0         [24]  860 	mov	b,(_FormatTime_sloc1_1_0 + 2)
      003103 12 3A B5         [24]  861 	lcall	__gptrget
      003106 75 F0 0A         [24]  862 	mov	b,#0x0a
      003109 84               [48]  863 	div	ab
      00310A A9 F0            [24]  864 	mov	r1,b
      00310C 74 30            [12]  865 	mov	a,#0x30
      00310E 29               [12]  866 	add	a, r1
      00310F 8A 82            [24]  867 	mov	dpl,r2
      003111 8B 83            [24]  868 	mov	dph,r3
      003113 8C F0            [24]  869 	mov	b,r4
      003115 12 39 67         [24]  870 	lcall	__gptrput
                                    871 ;	../Common/DateTime.c:52: buffer[2] = ':';
      003118 74 02            [12]  872 	mov	a,#0x02
      00311A 2D               [12]  873 	add	a, r5
      00311B FA               [12]  874 	mov	r2,a
      00311C E4               [12]  875 	clr	a
      00311D 3E               [12]  876 	addc	a, r6
      00311E FB               [12]  877 	mov	r3,a
      00311F 8F 04            [24]  878 	mov	ar4,r7
      003121 8A 82            [24]  879 	mov	dpl,r2
      003123 8B 83            [24]  880 	mov	dph,r3
      003125 8C F0            [24]  881 	mov	b,r4
      003127 74 3A            [12]  882 	mov	a,#0x3a
      003129 12 39 67         [24]  883 	lcall	__gptrput
                                    884 ;	../Common/DateTime.c:53: buffer[3] = (pdt->minutes / 10) + '0';
      00312C 74 03            [12]  885 	mov	a,#0x03
      00312E 2D               [12]  886 	add	a, r5
      00312F F5 3F            [12]  887 	mov	_FormatTime_sloc1_1_0,a
      003131 E4               [12]  888 	clr	a
      003132 3E               [12]  889 	addc	a, r6
      003133 F5 40            [12]  890 	mov	(_FormatTime_sloc1_1_0 + 1),a
      003135 8F 41            [24]  891 	mov	(_FormatTime_sloc1_1_0 + 2),r7
      003137 74 01            [12]  892 	mov	a,#0x01
      003139 25 3C            [12]  893 	add	a, _FormatTime_sloc0_1_0
      00313B F5 42            [12]  894 	mov	_FormatTime_sloc2_1_0,a
      00313D E4               [12]  895 	clr	a
      00313E 35 3D            [12]  896 	addc	a, (_FormatTime_sloc0_1_0 + 1)
      003140 F5 43            [12]  897 	mov	(_FormatTime_sloc2_1_0 + 1),a
      003142 85 3E 44         [24]  898 	mov	(_FormatTime_sloc2_1_0 + 2),(_FormatTime_sloc0_1_0 + 2)
      003145 85 42 82         [24]  899 	mov	dpl,_FormatTime_sloc2_1_0
      003148 85 43 83         [24]  900 	mov	dph,(_FormatTime_sloc2_1_0 + 1)
      00314B 85 44 F0         [24]  901 	mov	b,(_FormatTime_sloc2_1_0 + 2)
      00314E 12 3A B5         [24]  902 	lcall	__gptrget
      003151 75 F0 0A         [24]  903 	mov	b,#0x0a
      003154 84               [48]  904 	div	ab
      003155 24 30            [12]  905 	add	a,#0x30
      003157 85 3F 82         [24]  906 	mov	dpl,_FormatTime_sloc1_1_0
      00315A 85 40 83         [24]  907 	mov	dph,(_FormatTime_sloc1_1_0 + 1)
      00315D 85 41 F0         [24]  908 	mov	b,(_FormatTime_sloc1_1_0 + 2)
      003160 12 39 67         [24]  909 	lcall	__gptrput
                                    910 ;	../Common/DateTime.c:54: buffer[4] = (pdt->minutes % 10) + '0';
      003163 74 04            [12]  911 	mov	a,#0x04
      003165 2D               [12]  912 	add	a, r5
      003166 FA               [12]  913 	mov	r2,a
      003167 E4               [12]  914 	clr	a
      003168 3E               [12]  915 	addc	a, r6
      003169 FB               [12]  916 	mov	r3,a
      00316A 8F 04            [24]  917 	mov	ar4,r7
      00316C 85 42 82         [24]  918 	mov	dpl,_FormatTime_sloc2_1_0
      00316F 85 43 83         [24]  919 	mov	dph,(_FormatTime_sloc2_1_0 + 1)
      003172 85 44 F0         [24]  920 	mov	b,(_FormatTime_sloc2_1_0 + 2)
      003175 12 3A B5         [24]  921 	lcall	__gptrget
      003178 75 F0 0A         [24]  922 	mov	b,#0x0a
      00317B 84               [48]  923 	div	ab
      00317C A9 F0            [24]  924 	mov	r1,b
      00317E 74 30            [12]  925 	mov	a,#0x30
      003180 29               [12]  926 	add	a, r1
      003181 8A 82            [24]  927 	mov	dpl,r2
      003183 8B 83            [24]  928 	mov	dph,r3
      003185 8C F0            [24]  929 	mov	b,r4
      003187 12 39 67         [24]  930 	lcall	__gptrput
                                    931 ;	../Common/DateTime.c:55: if (!seconds)
      00318A 90 02 9B         [24]  932 	mov	dptr,#_FormatTime_PARM_3
      00318D E0               [24]  933 	movx	a,@dptr
      00318E 70 13            [24]  934 	jnz	00102$
                                    935 ;	../Common/DateTime.c:57: buffer[5] = 0;
      003190 74 05            [12]  936 	mov	a,#0x05
      003192 2D               [12]  937 	add	a, r5
      003193 FA               [12]  938 	mov	r2,a
      003194 E4               [12]  939 	clr	a
      003195 3E               [12]  940 	addc	a, r6
      003196 FB               [12]  941 	mov	r3,a
      003197 8F 04            [24]  942 	mov	ar4,r7
      003199 8A 82            [24]  943 	mov	dpl,r2
      00319B 8B 83            [24]  944 	mov	dph,r3
      00319D 8C F0            [24]  945 	mov	b,r4
      00319F E4               [12]  946 	clr	a
                                    947 ;	../Common/DateTime.c:58: return;
      0031A0 02 39 67         [24]  948 	ljmp	__gptrput
      0031A3                        949 00102$:
                                    950 ;	../Common/DateTime.c:60: buffer[5] = ':';
      0031A3 74 05            [12]  951 	mov	a,#0x05
      0031A5 2D               [12]  952 	add	a, r5
      0031A6 FA               [12]  953 	mov	r2,a
      0031A7 E4               [12]  954 	clr	a
      0031A8 3E               [12]  955 	addc	a, r6
      0031A9 FB               [12]  956 	mov	r3,a
      0031AA 8F 04            [24]  957 	mov	ar4,r7
      0031AC 8A 82            [24]  958 	mov	dpl,r2
      0031AE 8B 83            [24]  959 	mov	dph,r3
      0031B0 8C F0            [24]  960 	mov	b,r4
      0031B2 74 3A            [12]  961 	mov	a,#0x3a
      0031B4 12 39 67         [24]  962 	lcall	__gptrput
                                    963 ;	../Common/DateTime.c:61: buffer[6] = (pdt->seconds / 10) + '0';
      0031B7 74 06            [12]  964 	mov	a,#0x06
      0031B9 2D               [12]  965 	add	a, r5
      0031BA F5 42            [12]  966 	mov	_FormatTime_sloc2_1_0,a
      0031BC E4               [12]  967 	clr	a
      0031BD 3E               [12]  968 	addc	a, r6
      0031BE F5 43            [12]  969 	mov	(_FormatTime_sloc2_1_0 + 1),a
      0031C0 8F 44            [24]  970 	mov	(_FormatTime_sloc2_1_0 + 2),r7
      0031C2 85 3C 3F         [24]  971 	mov	_FormatTime_sloc1_1_0,_FormatTime_sloc0_1_0
      0031C5 85 3D 40         [24]  972 	mov	(_FormatTime_sloc1_1_0 + 1),(_FormatTime_sloc0_1_0 + 1)
      0031C8 85 3E 41         [24]  973 	mov	(_FormatTime_sloc1_1_0 + 2),(_FormatTime_sloc0_1_0 + 2)
      0031CB 85 3F 82         [24]  974 	mov	dpl,_FormatTime_sloc1_1_0
      0031CE 85 40 83         [24]  975 	mov	dph,(_FormatTime_sloc1_1_0 + 1)
      0031D1 85 41 F0         [24]  976 	mov	b,(_FormatTime_sloc1_1_0 + 2)
      0031D4 12 3A B5         [24]  977 	lcall	__gptrget
      0031D7 75 F0 0A         [24]  978 	mov	b,#0x0a
      0031DA 84               [48]  979 	div	ab
      0031DB 24 30            [12]  980 	add	a,#0x30
      0031DD 85 42 82         [24]  981 	mov	dpl,_FormatTime_sloc2_1_0
      0031E0 85 43 83         [24]  982 	mov	dph,(_FormatTime_sloc2_1_0 + 1)
      0031E3 85 44 F0         [24]  983 	mov	b,(_FormatTime_sloc2_1_0 + 2)
      0031E6 12 39 67         [24]  984 	lcall	__gptrput
                                    985 ;	../Common/DateTime.c:62: buffer[7] = (pdt->seconds % 10) + '0';
      0031E9 74 07            [12]  986 	mov	a,#0x07
      0031EB 2D               [12]  987 	add	a, r5
      0031EC FA               [12]  988 	mov	r2,a
      0031ED E4               [12]  989 	clr	a
      0031EE 3E               [12]  990 	addc	a, r6
      0031EF FB               [12]  991 	mov	r3,a
      0031F0 8F 04            [24]  992 	mov	ar4,r7
      0031F2 85 3F 82         [24]  993 	mov	dpl,_FormatTime_sloc1_1_0
      0031F5 85 40 83         [24]  994 	mov	dph,(_FormatTime_sloc1_1_0 + 1)
      0031F8 85 41 F0         [24]  995 	mov	b,(_FormatTime_sloc1_1_0 + 2)
      0031FB 12 3A B5         [24]  996 	lcall	__gptrget
      0031FE 75 F0 0A         [24]  997 	mov	b,#0x0a
      003201 84               [48]  998 	div	ab
      003202 A9 F0            [24]  999 	mov	r1,b
      003204 74 30            [12] 1000 	mov	a,#0x30
      003206 29               [12] 1001 	add	a, r1
      003207 8A 82            [24] 1002 	mov	dpl,r2
      003209 8B 83            [24] 1003 	mov	dph,r3
      00320B 8C F0            [24] 1004 	mov	b,r4
      00320D 12 39 67         [24] 1005 	lcall	__gptrput
                                   1006 ;	../Common/DateTime.c:63: buffer[8] = 0;
      003210 74 08            [12] 1007 	mov	a,#0x08
      003212 2D               [12] 1008 	add	a, r5
      003213 FD               [12] 1009 	mov	r5,a
      003214 E4               [12] 1010 	clr	a
      003215 3E               [12] 1011 	addc	a, r6
      003216 FE               [12] 1012 	mov	r6,a
      003217 8D 82            [24] 1013 	mov	dpl,r5
      003219 8E 83            [24] 1014 	mov	dph,r6
      00321B 8F F0            [24] 1015 	mov	b,r7
      00321D E4               [12] 1016 	clr	a
                                   1017 ;	../Common/DateTime.c:64: }
      00321E 02 39 67         [24] 1018 	ljmp	__gptrput
                                   1019 ;------------------------------------------------------------
                                   1020 ;Allocation info for local variables in function 'FormatDate'
                                   1021 ;------------------------------------------------------------
                                   1022 ;pdt           Allocated with name '_FormatDate_PARM_2'
                                   1023 ;buffer        Allocated with name '_FormatDate_buffer_10000_25'
                                   1024 ;sloc0         Allocated with name '_FormatDate_sloc0_1_0'
                                   1025 ;sloc1         Allocated with name '_FormatDate_sloc1_1_0'
                                   1026 ;sloc2         Allocated with name '_FormatDate_sloc2_1_0'
                                   1027 ;------------------------------------------------------------
                                   1028 ;	../Common/DateTime.c:67: void FormatDate(char *buffer, DateTimeStruct *pdt)
                                   1029 ;	-----------------------------------------
                                   1030 ;	 function FormatDate
                                   1031 ;	-----------------------------------------
      003221                       1032 _FormatDate:
      003221 AF F0            [24] 1033 	mov	r7,b
      003223 AE 83            [24] 1034 	mov	r6,dph
      003225 E5 82            [12] 1035 	mov	a,dpl
      003227 90 02 A2         [24] 1036 	mov	dptr,#_FormatDate_buffer_10000_25
      00322A F0               [24] 1037 	movx	@dptr,a
      00322B EE               [12] 1038 	mov	a,r6
      00322C A3               [24] 1039 	inc	dptr
      00322D F0               [24] 1040 	movx	@dptr,a
      00322E EF               [12] 1041 	mov	a,r7
      00322F A3               [24] 1042 	inc	dptr
      003230 F0               [24] 1043 	movx	@dptr,a
                                   1044 ;	../Common/DateTime.c:69: buffer[0] = (pdt->day / 10) + '0';
      003231 90 02 A2         [24] 1045 	mov	dptr,#_FormatDate_buffer_10000_25
      003234 E0               [24] 1046 	movx	a,@dptr
      003235 FD               [12] 1047 	mov	r5,a
      003236 A3               [24] 1048 	inc	dptr
      003237 E0               [24] 1049 	movx	a,@dptr
      003238 FE               [12] 1050 	mov	r6,a
      003239 A3               [24] 1051 	inc	dptr
      00323A E0               [24] 1052 	movx	a,@dptr
      00323B FF               [12] 1053 	mov	r7,a
      00323C 90 02 9F         [24] 1054 	mov	dptr,#_FormatDate_PARM_2
      00323F E0               [24] 1055 	movx	a,@dptr
      003240 F5 3C            [12] 1056 	mov	_FormatDate_sloc0_1_0,a
      003242 A3               [24] 1057 	inc	dptr
      003243 E0               [24] 1058 	movx	a,@dptr
      003244 F5 3D            [12] 1059 	mov	(_FormatDate_sloc0_1_0 + 1),a
      003246 A3               [24] 1060 	inc	dptr
      003247 E0               [24] 1061 	movx	a,@dptr
      003248 F5 3E            [12] 1062 	mov	(_FormatDate_sloc0_1_0 + 2),a
      00324A 74 04            [12] 1063 	mov	a,#0x04
      00324C 25 3C            [12] 1064 	add	a, _FormatDate_sloc0_1_0
      00324E F5 3F            [12] 1065 	mov	_FormatDate_sloc1_1_0,a
      003250 E4               [12] 1066 	clr	a
      003251 35 3D            [12] 1067 	addc	a, (_FormatDate_sloc0_1_0 + 1)
      003253 F5 40            [12] 1068 	mov	(_FormatDate_sloc1_1_0 + 1),a
      003255 85 3E 41         [24] 1069 	mov	(_FormatDate_sloc1_1_0 + 2),(_FormatDate_sloc0_1_0 + 2)
      003258 85 3F 82         [24] 1070 	mov	dpl,_FormatDate_sloc1_1_0
      00325B 85 40 83         [24] 1071 	mov	dph,(_FormatDate_sloc1_1_0 + 1)
      00325E 85 41 F0         [24] 1072 	mov	b,(_FormatDate_sloc1_1_0 + 2)
      003261 12 3A B5         [24] 1073 	lcall	__gptrget
      003264 75 F0 0A         [24] 1074 	mov	b,#0x0a
      003267 84               [48] 1075 	div	ab
      003268 24 30            [12] 1076 	add	a,#0x30
      00326A 8D 82            [24] 1077 	mov	dpl,r5
      00326C 8E 83            [24] 1078 	mov	dph,r6
      00326E 8F F0            [24] 1079 	mov	b,r7
      003270 12 39 67         [24] 1080 	lcall	__gptrput
                                   1081 ;	../Common/DateTime.c:70: buffer[1] = (pdt->day % 10) + '0';
      003273 74 01            [12] 1082 	mov	a,#0x01
      003275 2D               [12] 1083 	add	a, r5
      003276 FA               [12] 1084 	mov	r2,a
      003277 E4               [12] 1085 	clr	a
      003278 3E               [12] 1086 	addc	a, r6
      003279 FB               [12] 1087 	mov	r3,a
      00327A 8F 04            [24] 1088 	mov	ar4,r7
      00327C 85 3F 82         [24] 1089 	mov	dpl,_FormatDate_sloc1_1_0
      00327F 85 40 83         [24] 1090 	mov	dph,(_FormatDate_sloc1_1_0 + 1)
      003282 85 41 F0         [24] 1091 	mov	b,(_FormatDate_sloc1_1_0 + 2)
      003285 12 3A B5         [24] 1092 	lcall	__gptrget
      003288 75 F0 0A         [24] 1093 	mov	b,#0x0a
      00328B 84               [48] 1094 	div	ab
      00328C A9 F0            [24] 1095 	mov	r1,b
      00328E 74 30            [12] 1096 	mov	a,#0x30
      003290 29               [12] 1097 	add	a, r1
      003291 8A 82            [24] 1098 	mov	dpl,r2
      003293 8B 83            [24] 1099 	mov	dph,r3
      003295 8C F0            [24] 1100 	mov	b,r4
      003297 12 39 67         [24] 1101 	lcall	__gptrput
                                   1102 ;	../Common/DateTime.c:71: buffer[2] = '/';
      00329A 74 02            [12] 1103 	mov	a,#0x02
      00329C 2D               [12] 1104 	add	a, r5
      00329D FA               [12] 1105 	mov	r2,a
      00329E E4               [12] 1106 	clr	a
      00329F 3E               [12] 1107 	addc	a, r6
      0032A0 FB               [12] 1108 	mov	r3,a
      0032A1 8F 04            [24] 1109 	mov	ar4,r7
      0032A3 8A 82            [24] 1110 	mov	dpl,r2
      0032A5 8B 83            [24] 1111 	mov	dph,r3
      0032A7 8C F0            [24] 1112 	mov	b,r4
      0032A9 74 2F            [12] 1113 	mov	a,#0x2f
      0032AB 12 39 67         [24] 1114 	lcall	__gptrput
                                   1115 ;	../Common/DateTime.c:72: buffer[3] = (pdt->month / 10) + '0';
      0032AE 74 03            [12] 1116 	mov	a,#0x03
      0032B0 2D               [12] 1117 	add	a, r5
      0032B1 F5 3F            [12] 1118 	mov	_FormatDate_sloc1_1_0,a
      0032B3 E4               [12] 1119 	clr	a
      0032B4 3E               [12] 1120 	addc	a, r6
      0032B5 F5 40            [12] 1121 	mov	(_FormatDate_sloc1_1_0 + 1),a
      0032B7 8F 41            [24] 1122 	mov	(_FormatDate_sloc1_1_0 + 2),r7
      0032B9 74 05            [12] 1123 	mov	a,#0x05
      0032BB 25 3C            [12] 1124 	add	a, _FormatDate_sloc0_1_0
      0032BD F5 42            [12] 1125 	mov	_FormatDate_sloc2_1_0,a
      0032BF E4               [12] 1126 	clr	a
      0032C0 35 3D            [12] 1127 	addc	a, (_FormatDate_sloc0_1_0 + 1)
      0032C2 F5 43            [12] 1128 	mov	(_FormatDate_sloc2_1_0 + 1),a
      0032C4 85 3E 44         [24] 1129 	mov	(_FormatDate_sloc2_1_0 + 2),(_FormatDate_sloc0_1_0 + 2)
      0032C7 85 42 82         [24] 1130 	mov	dpl,_FormatDate_sloc2_1_0
      0032CA 85 43 83         [24] 1131 	mov	dph,(_FormatDate_sloc2_1_0 + 1)
      0032CD 85 44 F0         [24] 1132 	mov	b,(_FormatDate_sloc2_1_0 + 2)
      0032D0 12 3A B5         [24] 1133 	lcall	__gptrget
      0032D3 75 F0 0A         [24] 1134 	mov	b,#0x0a
      0032D6 84               [48] 1135 	div	ab
      0032D7 24 30            [12] 1136 	add	a,#0x30
      0032D9 85 3F 82         [24] 1137 	mov	dpl,_FormatDate_sloc1_1_0
      0032DC 85 40 83         [24] 1138 	mov	dph,(_FormatDate_sloc1_1_0 + 1)
      0032DF 85 41 F0         [24] 1139 	mov	b,(_FormatDate_sloc1_1_0 + 2)
      0032E2 12 39 67         [24] 1140 	lcall	__gptrput
                                   1141 ;	../Common/DateTime.c:73: buffer[4] = (pdt->month % 10) + '0';
      0032E5 74 04            [12] 1142 	mov	a,#0x04
      0032E7 2D               [12] 1143 	add	a, r5
      0032E8 FA               [12] 1144 	mov	r2,a
      0032E9 E4               [12] 1145 	clr	a
      0032EA 3E               [12] 1146 	addc	a, r6
      0032EB FB               [12] 1147 	mov	r3,a
      0032EC 8F 04            [24] 1148 	mov	ar4,r7
      0032EE 85 42 82         [24] 1149 	mov	dpl,_FormatDate_sloc2_1_0
      0032F1 85 43 83         [24] 1150 	mov	dph,(_FormatDate_sloc2_1_0 + 1)
      0032F4 85 44 F0         [24] 1151 	mov	b,(_FormatDate_sloc2_1_0 + 2)
      0032F7 12 3A B5         [24] 1152 	lcall	__gptrget
      0032FA 75 F0 0A         [24] 1153 	mov	b,#0x0a
      0032FD 84               [48] 1154 	div	ab
      0032FE A9 F0            [24] 1155 	mov	r1,b
      003300 74 30            [12] 1156 	mov	a,#0x30
      003302 29               [12] 1157 	add	a, r1
      003303 8A 82            [24] 1158 	mov	dpl,r2
      003305 8B 83            [24] 1159 	mov	dph,r3
      003307 8C F0            [24] 1160 	mov	b,r4
      003309 12 39 67         [24] 1161 	lcall	__gptrput
                                   1162 ;	../Common/DateTime.c:74: buffer[5] = '/';
      00330C 74 05            [12] 1163 	mov	a,#0x05
      00330E 2D               [12] 1164 	add	a, r5
      00330F FA               [12] 1165 	mov	r2,a
      003310 E4               [12] 1166 	clr	a
      003311 3E               [12] 1167 	addc	a, r6
      003312 FB               [12] 1168 	mov	r3,a
      003313 8F 04            [24] 1169 	mov	ar4,r7
      003315 8A 82            [24] 1170 	mov	dpl,r2
      003317 8B 83            [24] 1171 	mov	dph,r3
      003319 8C F0            [24] 1172 	mov	b,r4
      00331B 74 2F            [12] 1173 	mov	a,#0x2f
      00331D 12 39 67         [24] 1174 	lcall	__gptrput
                                   1175 ;	../Common/DateTime.c:75: buffer[6] = (pdt->year / 10) + '0';
      003320 74 06            [12] 1176 	mov	a,#0x06
      003322 2D               [12] 1177 	add	a, r5
      003323 F5 42            [12] 1178 	mov	_FormatDate_sloc2_1_0,a
      003325 E4               [12] 1179 	clr	a
      003326 3E               [12] 1180 	addc	a, r6
      003327 F5 43            [12] 1181 	mov	(_FormatDate_sloc2_1_0 + 1),a
      003329 8F 44            [24] 1182 	mov	(_FormatDate_sloc2_1_0 + 2),r7
      00332B 74 06            [12] 1183 	mov	a,#0x06
      00332D 25 3C            [12] 1184 	add	a, _FormatDate_sloc0_1_0
      00332F F5 3F            [12] 1185 	mov	_FormatDate_sloc1_1_0,a
      003331 E4               [12] 1186 	clr	a
      003332 35 3D            [12] 1187 	addc	a, (_FormatDate_sloc0_1_0 + 1)
      003334 F5 40            [12] 1188 	mov	(_FormatDate_sloc1_1_0 + 1),a
      003336 85 3E 41         [24] 1189 	mov	(_FormatDate_sloc1_1_0 + 2),(_FormatDate_sloc0_1_0 + 2)
      003339 85 3F 82         [24] 1190 	mov	dpl,_FormatDate_sloc1_1_0
      00333C 85 40 83         [24] 1191 	mov	dph,(_FormatDate_sloc1_1_0 + 1)
      00333F 85 41 F0         [24] 1192 	mov	b,(_FormatDate_sloc1_1_0 + 2)
      003342 12 3A B5         [24] 1193 	lcall	__gptrget
      003345 75 F0 0A         [24] 1194 	mov	b,#0x0a
      003348 84               [48] 1195 	div	ab
      003349 24 30            [12] 1196 	add	a,#0x30
      00334B 85 42 82         [24] 1197 	mov	dpl,_FormatDate_sloc2_1_0
      00334E 85 43 83         [24] 1198 	mov	dph,(_FormatDate_sloc2_1_0 + 1)
      003351 85 44 F0         [24] 1199 	mov	b,(_FormatDate_sloc2_1_0 + 2)
      003354 12 39 67         [24] 1200 	lcall	__gptrput
                                   1201 ;	../Common/DateTime.c:76: buffer[7] = (pdt->year % 10) + '0';
      003357 74 07            [12] 1202 	mov	a,#0x07
      003359 2D               [12] 1203 	add	a, r5
      00335A FA               [12] 1204 	mov	r2,a
      00335B E4               [12] 1205 	clr	a
      00335C 3E               [12] 1206 	addc	a, r6
      00335D FB               [12] 1207 	mov	r3,a
      00335E 8F 04            [24] 1208 	mov	ar4,r7
      003360 85 3F 82         [24] 1209 	mov	dpl,_FormatDate_sloc1_1_0
      003363 85 40 83         [24] 1210 	mov	dph,(_FormatDate_sloc1_1_0 + 1)
      003366 85 41 F0         [24] 1211 	mov	b,(_FormatDate_sloc1_1_0 + 2)
      003369 12 3A B5         [24] 1212 	lcall	__gptrget
      00336C 75 F0 0A         [24] 1213 	mov	b,#0x0a
      00336F 84               [48] 1214 	div	ab
      003370 A9 F0            [24] 1215 	mov	r1,b
      003372 74 30            [12] 1216 	mov	a,#0x30
      003374 29               [12] 1217 	add	a, r1
      003375 8A 82            [24] 1218 	mov	dpl,r2
      003377 8B 83            [24] 1219 	mov	dph,r3
      003379 8C F0            [24] 1220 	mov	b,r4
      00337B 12 39 67         [24] 1221 	lcall	__gptrput
                                   1222 ;	../Common/DateTime.c:77: buffer[8] = 0;
      00337E 74 08            [12] 1223 	mov	a,#0x08
      003380 2D               [12] 1224 	add	a, r5
      003381 FD               [12] 1225 	mov	r5,a
      003382 E4               [12] 1226 	clr	a
      003383 3E               [12] 1227 	addc	a, r6
      003384 FE               [12] 1228 	mov	r6,a
      003385 8D 82            [24] 1229 	mov	dpl,r5
      003387 8E 83            [24] 1230 	mov	dph,r6
      003389 8F F0            [24] 1231 	mov	b,r7
      00338B E4               [12] 1232 	clr	a
                                   1233 ;	../Common/DateTime.c:78: }
      00338C 02 39 67         [24] 1234 	ljmp	__gptrput
                                   1235 ;------------------------------------------------------------
                                   1236 ;Allocation info for local variables in function 'AddSecondsToDateTime'
                                   1237 ;------------------------------------------------------------
                                   1238 ;sloc0         Allocated with name '_AddSecondsToDateTime_sloc0_1_0'
                                   1239 ;sloc1         Allocated with name '_AddSecondsToDateTime_sloc1_1_0'
                                   1240 ;sloc2         Allocated with name '_AddSecondsToDateTime_sloc2_1_0'
                                   1241 ;sloc3         Allocated with name '_AddSecondsToDateTime_sloc3_1_0'
                                   1242 ;sloc4         Allocated with name '_AddSecondsToDateTime_sloc4_1_0'
                                   1243 ;sloc5         Allocated with name '_AddSecondsToDateTime_sloc5_1_0'
                                   1244 ;seconds       Allocated with name '_AddSecondsToDateTime_PARM_2'
                                   1245 ;result        Allocated with name '_AddSecondsToDateTime_PARM_3'
                                   1246 ;pdt           Allocated with name '_AddSecondsToDateTime_pdt_10000_27'
                                   1247 ;secondsLeft   Allocated with name '_AddSecondsToDateTime_secondsLeft_10000_28'
                                   1248 ;secondsAdded  Allocated with name '_AddSecondsToDateTime_secondsAdded_10000_28'
                                   1249 ;secondsToNextMinute Allocated with name '_AddSecondsToDateTime_secondsToNextMinute_10000_28'
                                   1250 ;numDays       Allocated with name '_AddSecondsToDateTime_numDays_10000_28'
                                   1251 ;------------------------------------------------------------
                                   1252 ;	../Common/DateTime.c:81: void AddSecondsToDateTime(DateTimeStruct* pdt, int seconds, DateTimeStruct* result)
                                   1253 ;	-----------------------------------------
                                   1254 ;	 function AddSecondsToDateTime
                                   1255 ;	-----------------------------------------
      00338F                       1256 _AddSecondsToDateTime:
      00338F AF F0            [24] 1257 	mov	r7,b
      003391 AE 83            [24] 1258 	mov	r6,dph
      003393 E5 82            [12] 1259 	mov	a,dpl
      003395 90 02 AA         [24] 1260 	mov	dptr,#_AddSecondsToDateTime_pdt_10000_27
      003398 F0               [24] 1261 	movx	@dptr,a
      003399 EE               [12] 1262 	mov	a,r6
      00339A A3               [24] 1263 	inc	dptr
      00339B F0               [24] 1264 	movx	@dptr,a
      00339C EF               [12] 1265 	mov	a,r7
      00339D A3               [24] 1266 	inc	dptr
      00339E F0               [24] 1267 	movx	@dptr,a
                                   1268 ;	../Common/DateTime.c:86: result->day = pdt->day;
      00339F 90 02 A7         [24] 1269 	mov	dptr,#_AddSecondsToDateTime_PARM_3
      0033A2 E0               [24] 1270 	movx	a,@dptr
      0033A3 F5 1B            [12] 1271 	mov	_AddSecondsToDateTime_sloc5_1_0,a
      0033A5 A3               [24] 1272 	inc	dptr
      0033A6 E0               [24] 1273 	movx	a,@dptr
      0033A7 F5 1C            [12] 1274 	mov	(_AddSecondsToDateTime_sloc5_1_0 + 1),a
      0033A9 A3               [24] 1275 	inc	dptr
      0033AA E0               [24] 1276 	movx	a,@dptr
      0033AB F5 1D            [12] 1277 	mov	(_AddSecondsToDateTime_sloc5_1_0 + 2),a
      0033AD 74 04            [12] 1278 	mov	a,#0x04
      0033AF 25 1B            [12] 1279 	add	a, _AddSecondsToDateTime_sloc5_1_0
      0033B1 F5 0C            [12] 1280 	mov	_AddSecondsToDateTime_sloc0_1_0,a
      0033B3 E4               [12] 1281 	clr	a
      0033B4 35 1C            [12] 1282 	addc	a, (_AddSecondsToDateTime_sloc5_1_0 + 1)
      0033B6 F5 0D            [12] 1283 	mov	(_AddSecondsToDateTime_sloc0_1_0 + 1),a
      0033B8 85 1D 0E         [24] 1284 	mov	(_AddSecondsToDateTime_sloc0_1_0 + 2),(_AddSecondsToDateTime_sloc5_1_0 + 2)
      0033BB 90 02 AA         [24] 1285 	mov	dptr,#_AddSecondsToDateTime_pdt_10000_27
      0033BE E0               [24] 1286 	movx	a,@dptr
      0033BF F5 0F            [12] 1287 	mov	_AddSecondsToDateTime_sloc1_1_0,a
      0033C1 A3               [24] 1288 	inc	dptr
      0033C2 E0               [24] 1289 	movx	a,@dptr
      0033C3 F5 10            [12] 1290 	mov	(_AddSecondsToDateTime_sloc1_1_0 + 1),a
      0033C5 A3               [24] 1291 	inc	dptr
      0033C6 E0               [24] 1292 	movx	a,@dptr
      0033C7 F5 11            [12] 1293 	mov	(_AddSecondsToDateTime_sloc1_1_0 + 2),a
      0033C9 74 04            [12] 1294 	mov	a,#0x04
      0033CB 25 0F            [12] 1295 	add	a, _AddSecondsToDateTime_sloc1_1_0
      0033CD FA               [12] 1296 	mov	r2,a
      0033CE E4               [12] 1297 	clr	a
      0033CF 35 10            [12] 1298 	addc	a, (_AddSecondsToDateTime_sloc1_1_0 + 1)
      0033D1 FB               [12] 1299 	mov	r3,a
      0033D2 AC 11            [24] 1300 	mov	r4,(_AddSecondsToDateTime_sloc1_1_0 + 2)
      0033D4 8A 82            [24] 1301 	mov	dpl,r2
      0033D6 8B 83            [24] 1302 	mov	dph,r3
      0033D8 8C F0            [24] 1303 	mov	b,r4
      0033DA 12 3A B5         [24] 1304 	lcall	__gptrget
      0033DD 85 0C 82         [24] 1305 	mov	dpl,_AddSecondsToDateTime_sloc0_1_0
      0033E0 85 0D 83         [24] 1306 	mov	dph,(_AddSecondsToDateTime_sloc0_1_0 + 1)
      0033E3 85 0E F0         [24] 1307 	mov	b,(_AddSecondsToDateTime_sloc0_1_0 + 2)
      0033E6 12 39 67         [24] 1308 	lcall	__gptrput
                                   1309 ;	../Common/DateTime.c:87: result->dayOfWeek = pdt->dayOfWeek;
      0033E9 74 03            [12] 1310 	mov	a,#0x03
      0033EB 25 1B            [12] 1311 	add	a, _AddSecondsToDateTime_sloc5_1_0
      0033ED F5 12            [12] 1312 	mov	_AddSecondsToDateTime_sloc2_1_0,a
      0033EF E4               [12] 1313 	clr	a
      0033F0 35 1C            [12] 1314 	addc	a, (_AddSecondsToDateTime_sloc5_1_0 + 1)
      0033F2 F5 13            [12] 1315 	mov	(_AddSecondsToDateTime_sloc2_1_0 + 1),a
      0033F4 85 1D 14         [24] 1316 	mov	(_AddSecondsToDateTime_sloc2_1_0 + 2),(_AddSecondsToDateTime_sloc5_1_0 + 2)
      0033F7 74 03            [12] 1317 	mov	a,#0x03
      0033F9 25 0F            [12] 1318 	add	a, _AddSecondsToDateTime_sloc1_1_0
      0033FB F8               [12] 1319 	mov	r0,a
      0033FC E4               [12] 1320 	clr	a
      0033FD 35 10            [12] 1321 	addc	a, (_AddSecondsToDateTime_sloc1_1_0 + 1)
      0033FF F9               [12] 1322 	mov	r1,a
      003400 AC 11            [24] 1323 	mov	r4,(_AddSecondsToDateTime_sloc1_1_0 + 2)
      003402 88 82            [24] 1324 	mov	dpl,r0
      003404 89 83            [24] 1325 	mov	dph,r1
      003406 8C F0            [24] 1326 	mov	b,r4
      003408 12 3A B5         [24] 1327 	lcall	__gptrget
      00340B 85 12 82         [24] 1328 	mov	dpl,_AddSecondsToDateTime_sloc2_1_0
      00340E 85 13 83         [24] 1329 	mov	dph,(_AddSecondsToDateTime_sloc2_1_0 + 1)
      003411 85 14 F0         [24] 1330 	mov	b,(_AddSecondsToDateTime_sloc2_1_0 + 2)
      003414 12 39 67         [24] 1331 	lcall	__gptrput
                                   1332 ;	../Common/DateTime.c:88: result->hours = pdt->hours;
      003417 74 02            [12] 1333 	mov	a,#0x02
      003419 25 1B            [12] 1334 	add	a, _AddSecondsToDateTime_sloc5_1_0
      00341B F5 12            [12] 1335 	mov	_AddSecondsToDateTime_sloc2_1_0,a
      00341D E4               [12] 1336 	clr	a
      00341E 35 1C            [12] 1337 	addc	a, (_AddSecondsToDateTime_sloc5_1_0 + 1)
      003420 F5 13            [12] 1338 	mov	(_AddSecondsToDateTime_sloc2_1_0 + 1),a
      003422 85 1D 14         [24] 1339 	mov	(_AddSecondsToDateTime_sloc2_1_0 + 2),(_AddSecondsToDateTime_sloc5_1_0 + 2)
      003425 74 02            [12] 1340 	mov	a,#0x02
      003427 25 0F            [12] 1341 	add	a, _AddSecondsToDateTime_sloc1_1_0
      003429 F8               [12] 1342 	mov	r0,a
      00342A E4               [12] 1343 	clr	a
      00342B 35 10            [12] 1344 	addc	a, (_AddSecondsToDateTime_sloc1_1_0 + 1)
      00342D F9               [12] 1345 	mov	r1,a
      00342E AC 11            [24] 1346 	mov	r4,(_AddSecondsToDateTime_sloc1_1_0 + 2)
      003430 88 82            [24] 1347 	mov	dpl,r0
      003432 89 83            [24] 1348 	mov	dph,r1
      003434 8C F0            [24] 1349 	mov	b,r4
      003436 12 3A B5         [24] 1350 	lcall	__gptrget
      003439 85 12 82         [24] 1351 	mov	dpl,_AddSecondsToDateTime_sloc2_1_0
      00343C 85 13 83         [24] 1352 	mov	dph,(_AddSecondsToDateTime_sloc2_1_0 + 1)
      00343F 85 14 F0         [24] 1353 	mov	b,(_AddSecondsToDateTime_sloc2_1_0 + 2)
      003442 12 39 67         [24] 1354 	lcall	__gptrput
                                   1355 ;	../Common/DateTime.c:89: result->minutes = pdt->minutes;
      003445 74 01            [12] 1356 	mov	a,#0x01
      003447 25 1B            [12] 1357 	add	a, _AddSecondsToDateTime_sloc5_1_0
      003449 F5 15            [12] 1358 	mov	_AddSecondsToDateTime_sloc3_1_0,a
      00344B E4               [12] 1359 	clr	a
      00344C 35 1C            [12] 1360 	addc	a, (_AddSecondsToDateTime_sloc5_1_0 + 1)
      00344E F5 16            [12] 1361 	mov	(_AddSecondsToDateTime_sloc3_1_0 + 1),a
      003450 85 1D 17         [24] 1362 	mov	(_AddSecondsToDateTime_sloc3_1_0 + 2),(_AddSecondsToDateTime_sloc5_1_0 + 2)
      003453 74 01            [12] 1363 	mov	a,#0x01
      003455 25 0F            [12] 1364 	add	a, _AddSecondsToDateTime_sloc1_1_0
      003457 F8               [12] 1365 	mov	r0,a
      003458 E4               [12] 1366 	clr	a
      003459 35 10            [12] 1367 	addc	a, (_AddSecondsToDateTime_sloc1_1_0 + 1)
      00345B F9               [12] 1368 	mov	r1,a
      00345C AC 11            [24] 1369 	mov	r4,(_AddSecondsToDateTime_sloc1_1_0 + 2)
      00345E 88 82            [24] 1370 	mov	dpl,r0
      003460 89 83            [24] 1371 	mov	dph,r1
      003462 8C F0            [24] 1372 	mov	b,r4
      003464 12 3A B5         [24] 1373 	lcall	__gptrget
      003467 85 15 82         [24] 1374 	mov	dpl,_AddSecondsToDateTime_sloc3_1_0
      00346A 85 16 83         [24] 1375 	mov	dph,(_AddSecondsToDateTime_sloc3_1_0 + 1)
      00346D 85 17 F0         [24] 1376 	mov	b,(_AddSecondsToDateTime_sloc3_1_0 + 2)
      003470 12 39 67         [24] 1377 	lcall	__gptrput
                                   1378 ;	../Common/DateTime.c:90: result->month = pdt->month;
      003473 74 05            [12] 1379 	mov	a,#0x05
      003475 25 1B            [12] 1380 	add	a, _AddSecondsToDateTime_sloc5_1_0
      003477 F5 18            [12] 1381 	mov	_AddSecondsToDateTime_sloc4_1_0,a
      003479 E4               [12] 1382 	clr	a
      00347A 35 1C            [12] 1383 	addc	a, (_AddSecondsToDateTime_sloc5_1_0 + 1)
      00347C F5 19            [12] 1384 	mov	(_AddSecondsToDateTime_sloc4_1_0 + 1),a
      00347E 85 1D 1A         [24] 1385 	mov	(_AddSecondsToDateTime_sloc4_1_0 + 2),(_AddSecondsToDateTime_sloc5_1_0 + 2)
      003481 74 05            [12] 1386 	mov	a,#0x05
      003483 25 0F            [12] 1387 	add	a, _AddSecondsToDateTime_sloc1_1_0
      003485 F8               [12] 1388 	mov	r0,a
      003486 E4               [12] 1389 	clr	a
      003487 35 10            [12] 1390 	addc	a, (_AddSecondsToDateTime_sloc1_1_0 + 1)
      003489 F9               [12] 1391 	mov	r1,a
      00348A AC 11            [24] 1392 	mov	r4,(_AddSecondsToDateTime_sloc1_1_0 + 2)
      00348C 88 82            [24] 1393 	mov	dpl,r0
      00348E 89 83            [24] 1394 	mov	dph,r1
      003490 8C F0            [24] 1395 	mov	b,r4
      003492 12 3A B5         [24] 1396 	lcall	__gptrget
      003495 85 18 82         [24] 1397 	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
      003498 85 19 83         [24] 1398 	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
      00349B 85 1A F0         [24] 1399 	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
      00349E 12 39 67         [24] 1400 	lcall	__gptrput
                                   1401 ;	../Common/DateTime.c:91: result->seconds = pdt->seconds;
      0034A1 AA 1B            [24] 1402 	mov	r2,_AddSecondsToDateTime_sloc5_1_0
      0034A3 AB 1C            [24] 1403 	mov	r3,(_AddSecondsToDateTime_sloc5_1_0 + 1)
      0034A5 AC 1D            [24] 1404 	mov	r4,(_AddSecondsToDateTime_sloc5_1_0 + 2)
      0034A7 A8 0F            [24] 1405 	mov	r0,_AddSecondsToDateTime_sloc1_1_0
      0034A9 A9 10            [24] 1406 	mov	r1,(_AddSecondsToDateTime_sloc1_1_0 + 1)
      0034AB AF 11            [24] 1407 	mov	r7,(_AddSecondsToDateTime_sloc1_1_0 + 2)
      0034AD 88 82            [24] 1408 	mov	dpl,r0
      0034AF 89 83            [24] 1409 	mov	dph,r1
      0034B1 8F F0            [24] 1410 	mov	b,r7
      0034B3 12 3A B5         [24] 1411 	lcall	__gptrget
      0034B6 8A 82            [24] 1412 	mov	dpl,r2
      0034B8 8B 83            [24] 1413 	mov	dph,r3
      0034BA 8C F0            [24] 1414 	mov	b,r4
      0034BC 12 39 67         [24] 1415 	lcall	__gptrput
                                   1416 ;	../Common/DateTime.c:92: result->year = pdt->year;
      0034BF 74 06            [12] 1417 	mov	a,#0x06
      0034C1 25 1B            [12] 1418 	add	a, _AddSecondsToDateTime_sloc5_1_0
      0034C3 F5 18            [12] 1419 	mov	_AddSecondsToDateTime_sloc4_1_0,a
      0034C5 E4               [12] 1420 	clr	a
      0034C6 35 1C            [12] 1421 	addc	a, (_AddSecondsToDateTime_sloc5_1_0 + 1)
      0034C8 F5 19            [12] 1422 	mov	(_AddSecondsToDateTime_sloc4_1_0 + 1),a
      0034CA 85 1D 1A         [24] 1423 	mov	(_AddSecondsToDateTime_sloc4_1_0 + 2),(_AddSecondsToDateTime_sloc5_1_0 + 2)
      0034CD 74 06            [12] 1424 	mov	a,#0x06
      0034CF 25 0F            [12] 1425 	add	a, _AddSecondsToDateTime_sloc1_1_0
      0034D1 F8               [12] 1426 	mov	r0,a
      0034D2 E4               [12] 1427 	clr	a
      0034D3 35 10            [12] 1428 	addc	a, (_AddSecondsToDateTime_sloc1_1_0 + 1)
      0034D5 F9               [12] 1429 	mov	r1,a
      0034D6 AF 11            [24] 1430 	mov	r7,(_AddSecondsToDateTime_sloc1_1_0 + 2)
      0034D8 88 82            [24] 1431 	mov	dpl,r0
      0034DA 89 83            [24] 1432 	mov	dph,r1
      0034DC 8F F0            [24] 1433 	mov	b,r7
      0034DE 12 3A B5         [24] 1434 	lcall	__gptrget
      0034E1 85 18 82         [24] 1435 	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
      0034E4 85 19 83         [24] 1436 	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
      0034E7 85 1A F0         [24] 1437 	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
      0034EA 12 39 67         [24] 1438 	lcall	__gptrput
                                   1439 ;	../Common/DateTime.c:95: secondsLeft = seconds;
      0034ED 90 02 A5         [24] 1440 	mov	dptr,#_AddSecondsToDateTime_PARM_2
      0034F0 E0               [24] 1441 	movx	a,@dptr
      0034F1 FE               [12] 1442 	mov	r6,a
      0034F2 A3               [24] 1443 	inc	dptr
      0034F3 E0               [24] 1444 	movx	a,@dptr
      0034F4 FF               [12] 1445 	mov	r7,a
      0034F5 90 02 AD         [24] 1446 	mov	dptr,#_AddSecondsToDateTime_secondsLeft_10000_28
      0034F8 EE               [12] 1447 	mov	a,r6
      0034F9 F0               [24] 1448 	movx	@dptr,a
      0034FA EF               [12] 1449 	mov	a,r7
      0034FB A3               [24] 1450 	inc	dptr
      0034FC F0               [24] 1451 	movx	@dptr,a
                                   1452 ;	../Common/DateTime.c:96: while (secondsLeft > 0)
      0034FD AD 1B            [24] 1453 	mov	r5,_AddSecondsToDateTime_sloc5_1_0
      0034FF AE 1C            [24] 1454 	mov	r6,(_AddSecondsToDateTime_sloc5_1_0 + 1)
      003501 AF 1D            [24] 1455 	mov	r7,(_AddSecondsToDateTime_sloc5_1_0 + 2)
      003503                       1456 00111$:
      003503 90 02 AD         [24] 1457 	mov	dptr,#_AddSecondsToDateTime_secondsLeft_10000_28
      003506 E0               [24] 1458 	movx	a,@dptr
      003507 F8               [12] 1459 	mov	r0,a
      003508 A3               [24] 1460 	inc	dptr
      003509 E0               [24] 1461 	movx	a,@dptr
      00350A F9               [12] 1462 	mov	r1,a
      00350B C3               [12] 1463 	clr	c
      00350C E4               [12] 1464 	clr	a
      00350D 98               [12] 1465 	subb	a,r0
      00350E 74 80            [12] 1466 	mov	a,#(0x00 ^ 0x80)
      003510 89 F0            [24] 1467 	mov	b,r1
      003512 63 F0 80         [24] 1468 	xrl	b,#0x80
      003515 95 F0            [12] 1469 	subb	a,b
      003517 40 01            [24] 1470 	jc	00166$
      003519 22               [24] 1471 	ret
      00351A                       1472 00166$:
                                   1473 ;	../Common/DateTime.c:98: secondsToNextMinute = 60 - result->seconds;
      00351A C0 05            [24] 1474 	push	ar5
      00351C C0 06            [24] 1475 	push	ar6
      00351E C0 07            [24] 1476 	push	ar7
      003520 8A 82            [24] 1477 	mov	dpl,r2
      003522 8B 83            [24] 1478 	mov	dph,r3
      003524 8C F0            [24] 1479 	mov	b,r4
      003526 12 3A B5         [24] 1480 	lcall	__gptrget
      003529 FF               [12] 1481 	mov	r7,a
      00352A 7E 00            [12] 1482 	mov	r6,#0x00
      00352C 74 3C            [12] 1483 	mov	a,#0x3c
      00352E C3               [12] 1484 	clr	c
      00352F 9F               [12] 1485 	subb	a,r7
      003530 F5 18            [12] 1486 	mov	_AddSecondsToDateTime_sloc4_1_0,a
      003532 E4               [12] 1487 	clr	a
      003533 9E               [12] 1488 	subb	a,r6
      003534 F5 19            [12] 1489 	mov	(_AddSecondsToDateTime_sloc4_1_0 + 1),a
                                   1490 ;	../Common/DateTime.c:99: secondsAdded = secondsLeft < secondsToNextMinute ? secondsLeft : secondsToNextMinute;
      003536 C3               [12] 1491 	clr	c
      003537 E8               [12] 1492 	mov	a,r0
      003538 95 18            [12] 1493 	subb	a,_AddSecondsToDateTime_sloc4_1_0
      00353A E9               [12] 1494 	mov	a,r1
      00353B 64 80            [12] 1495 	xrl	a,#0x80
      00353D 85 19 F0         [24] 1496 	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 1)
      003540 63 F0 80         [24] 1497 	xrl	b,#0x80
      003543 95 F0            [12] 1498 	subb	a,b
      003545 D0 07            [24] 1499 	pop	ar7
      003547 D0 06            [24] 1500 	pop	ar6
      003549 D0 05            [24] 1501 	pop	ar5
      00354B 40 04            [24] 1502 	jc	00117$
      00354D A8 18            [24] 1503 	mov	r0,_AddSecondsToDateTime_sloc4_1_0
      00354F A9 19            [24] 1504 	mov	r1,(_AddSecondsToDateTime_sloc4_1_0 + 1)
      003551                       1505 00117$:
                                   1506 ;	../Common/DateTime.c:100: result->seconds += secondsAdded;
      003551 C0 05            [24] 1507 	push	ar5
      003553 C0 06            [24] 1508 	push	ar6
      003555 C0 07            [24] 1509 	push	ar7
      003557 8A 82            [24] 1510 	mov	dpl,r2
      003559 8B 83            [24] 1511 	mov	dph,r3
      00355B 8C F0            [24] 1512 	mov	b,r4
      00355D 12 3A B5         [24] 1513 	lcall	__gptrget
      003560 FF               [12] 1514 	mov	r7,a
      003561 88 06            [24] 1515 	mov	ar6,r0
      003563 EE               [12] 1516 	mov	a,r6
      003564 2F               [12] 1517 	add	a, r7
      003565 8A 82            [24] 1518 	mov	dpl,r2
      003567 8B 83            [24] 1519 	mov	dph,r3
      003569 8C F0            [24] 1520 	mov	b,r4
      00356B 12 39 67         [24] 1521 	lcall	__gptrput
                                   1522 ;	../Common/DateTime.c:101: secondsLeft -= secondsAdded;
      00356E 90 02 AD         [24] 1523 	mov	dptr,#_AddSecondsToDateTime_secondsLeft_10000_28
      003571 E0               [24] 1524 	movx	a,@dptr
      003572 FE               [12] 1525 	mov	r6,a
      003573 A3               [24] 1526 	inc	dptr
      003574 E0               [24] 1527 	movx	a,@dptr
      003575 FF               [12] 1528 	mov	r7,a
      003576 90 02 AD         [24] 1529 	mov	dptr,#_AddSecondsToDateTime_secondsLeft_10000_28
      003579 EE               [12] 1530 	mov	a,r6
      00357A C3               [12] 1531 	clr	c
      00357B 98               [12] 1532 	subb	a,r0
      00357C F0               [24] 1533 	movx	@dptr,a
      00357D EF               [12] 1534 	mov	a,r7
      00357E 99               [12] 1535 	subb	a,r1
      00357F A3               [24] 1536 	inc	dptr
      003580 F0               [24] 1537 	movx	@dptr,a
                                   1538 ;	../Common/DateTime.c:104: if (result->seconds == 60)
      003581 8A 82            [24] 1539 	mov	dpl,r2
      003583 8B 83            [24] 1540 	mov	dph,r3
      003585 8C F0            [24] 1541 	mov	b,r4
      003587 12 3A B5         [24] 1542 	lcall	__gptrget
      00358A FF               [12] 1543 	mov	r7,a
      00358B BF 3C 02         [24] 1544 	cjne	r7,#0x3c,00168$
      00358E 80 09            [24] 1545 	sjmp	00169$
      003590                       1546 00168$:
      003590 D0 07            [24] 1547 	pop	ar7
      003592 D0 06            [24] 1548 	pop	ar6
      003594 D0 05            [24] 1549 	pop	ar5
      003596 02 35 03         [24] 1550 	ljmp	00111$
      003599                       1551 00169$:
      003599 D0 07            [24] 1552 	pop	ar7
      00359B D0 06            [24] 1553 	pop	ar6
      00359D D0 05            [24] 1554 	pop	ar5
                                   1555 ;	../Common/DateTime.c:106: result->seconds = 0;
      00359F 8A 82            [24] 1556 	mov	dpl,r2
      0035A1 8B 83            [24] 1557 	mov	dph,r3
      0035A3 8C F0            [24] 1558 	mov	b,r4
      0035A5 E4               [12] 1559 	clr	a
      0035A6 12 39 67         [24] 1560 	lcall	__gptrput
                                   1561 ;	../Common/DateTime.c:107: result->minutes++;
      0035A9 85 15 82         [24] 1562 	mov	dpl,_AddSecondsToDateTime_sloc3_1_0
      0035AC 85 16 83         [24] 1563 	mov	dph,(_AddSecondsToDateTime_sloc3_1_0 + 1)
      0035AF 85 17 F0         [24] 1564 	mov	b,(_AddSecondsToDateTime_sloc3_1_0 + 2)
      0035B2 12 3A B5         [24] 1565 	lcall	__gptrget
      0035B5 F9               [12] 1566 	mov	r1,a
      0035B6 09               [12] 1567 	inc	r1
      0035B7 85 15 82         [24] 1568 	mov	dpl,_AddSecondsToDateTime_sloc3_1_0
      0035BA 85 16 83         [24] 1569 	mov	dph,(_AddSecondsToDateTime_sloc3_1_0 + 1)
      0035BD 85 17 F0         [24] 1570 	mov	b,(_AddSecondsToDateTime_sloc3_1_0 + 2)
      0035C0 E9               [12] 1571 	mov	a,r1
      0035C1 12 39 67         [24] 1572 	lcall	__gptrput
                                   1573 ;	../Common/DateTime.c:108: if (result->minutes == 60)
      0035C4 B9 3C 02         [24] 1574 	cjne	r1,#0x3c,00170$
      0035C7 80 03            [24] 1575 	sjmp	00171$
      0035C9                       1576 00170$:
      0035C9 02 35 03         [24] 1577 	ljmp	00111$
      0035CC                       1578 00171$:
                                   1579 ;	../Common/DateTime.c:110: result->minutes = 0;
      0035CC 85 15 82         [24] 1580 	mov	dpl,_AddSecondsToDateTime_sloc3_1_0
      0035CF 85 16 83         [24] 1581 	mov	dph,(_AddSecondsToDateTime_sloc3_1_0 + 1)
      0035D2 85 17 F0         [24] 1582 	mov	b,(_AddSecondsToDateTime_sloc3_1_0 + 2)
      0035D5 E4               [12] 1583 	clr	a
      0035D6 12 39 67         [24] 1584 	lcall	__gptrput
                                   1585 ;	../Common/DateTime.c:111: result->hours++;
      0035D9 85 12 82         [24] 1586 	mov	dpl,_AddSecondsToDateTime_sloc2_1_0
      0035DC 85 13 83         [24] 1587 	mov	dph,(_AddSecondsToDateTime_sloc2_1_0 + 1)
      0035DF 85 14 F0         [24] 1588 	mov	b,(_AddSecondsToDateTime_sloc2_1_0 + 2)
      0035E2 12 3A B5         [24] 1589 	lcall	__gptrget
      0035E5 F9               [12] 1590 	mov	r1,a
      0035E6 09               [12] 1591 	inc	r1
      0035E7 85 12 82         [24] 1592 	mov	dpl,_AddSecondsToDateTime_sloc2_1_0
      0035EA 85 13 83         [24] 1593 	mov	dph,(_AddSecondsToDateTime_sloc2_1_0 + 1)
      0035ED 85 14 F0         [24] 1594 	mov	b,(_AddSecondsToDateTime_sloc2_1_0 + 2)
      0035F0 E9               [12] 1595 	mov	a,r1
      0035F1 12 39 67         [24] 1596 	lcall	__gptrput
                                   1597 ;	../Common/DateTime.c:112: if (result->hours == 24)
      0035F4 B9 18 02         [24] 1598 	cjne	r1,#0x18,00172$
      0035F7 80 03            [24] 1599 	sjmp	00173$
      0035F9                       1600 00172$:
      0035F9 02 35 03         [24] 1601 	ljmp	00111$
      0035FC                       1602 00173$:
                                   1603 ;	../Common/DateTime.c:114: result->hours = 0;
      0035FC C0 02            [24] 1604 	push	ar2
      0035FE C0 03            [24] 1605 	push	ar3
      003600 C0 04            [24] 1606 	push	ar4
      003602 85 12 82         [24] 1607 	mov	dpl,_AddSecondsToDateTime_sloc2_1_0
      003605 85 13 83         [24] 1608 	mov	dph,(_AddSecondsToDateTime_sloc2_1_0 + 1)
      003608 85 14 F0         [24] 1609 	mov	b,(_AddSecondsToDateTime_sloc2_1_0 + 2)
      00360B E4               [12] 1610 	clr	a
      00360C 12 39 67         [24] 1611 	lcall	__gptrput
                                   1612 ;	../Common/DateTime.c:115: result->day++;
      00360F 85 0C 82         [24] 1613 	mov	dpl,_AddSecondsToDateTime_sloc0_1_0
      003612 85 0D 83         [24] 1614 	mov	dph,(_AddSecondsToDateTime_sloc0_1_0 + 1)
      003615 85 0E F0         [24] 1615 	mov	b,(_AddSecondsToDateTime_sloc0_1_0 + 2)
      003618 12 3A B5         [24] 1616 	lcall	__gptrget
      00361B F9               [12] 1617 	mov	r1,a
      00361C 09               [12] 1618 	inc	r1
      00361D 85 0C 82         [24] 1619 	mov	dpl,_AddSecondsToDateTime_sloc0_1_0
      003620 85 0D 83         [24] 1620 	mov	dph,(_AddSecondsToDateTime_sloc0_1_0 + 1)
      003623 85 0E F0         [24] 1621 	mov	b,(_AddSecondsToDateTime_sloc0_1_0 + 2)
      003626 E9               [12] 1622 	mov	a,r1
      003627 12 39 67         [24] 1623 	lcall	__gptrput
                                   1624 ;	../Common/DateTime.c:116: numDays = GetNumDaysInMonth(result);
      00362A 85 1B 82         [24] 1625 	mov	dpl, _AddSecondsToDateTime_sloc5_1_0
      00362D 85 1C 83         [24] 1626 	mov	dph, (_AddSecondsToDateTime_sloc5_1_0 + 1)
      003630 85 1D F0         [24] 1627 	mov	b, (_AddSecondsToDateTime_sloc5_1_0 + 2)
      003633 C0 07            [24] 1628 	push	ar7
      003635 C0 06            [24] 1629 	push	ar6
      003637 C0 05            [24] 1630 	push	ar5
      003639 C0 04            [24] 1631 	push	ar4
      00363B C0 03            [24] 1632 	push	ar3
      00363D C0 02            [24] 1633 	push	ar2
      00363F 12 2F 93         [24] 1634 	lcall	_GetNumDaysInMonth
      003642 A8 82            [24] 1635 	mov	r0, dpl
      003644 A9 83            [24] 1636 	mov	r1, dph
      003646 D0 02            [24] 1637 	pop	ar2
      003648 D0 03            [24] 1638 	pop	ar3
      00364A D0 04            [24] 1639 	pop	ar4
      00364C D0 05            [24] 1640 	pop	ar5
      00364E D0 06            [24] 1641 	pop	ar6
      003650 D0 07            [24] 1642 	pop	ar7
                                   1643 ;	../Common/DateTime.c:117: if (result->day > numDays)
      003652 74 04            [12] 1644 	mov	a,#0x04
      003654 2D               [12] 1645 	add	a, r5
      003655 F5 18            [12] 1646 	mov	_AddSecondsToDateTime_sloc4_1_0,a
      003657 E4               [12] 1647 	clr	a
      003658 3E               [12] 1648 	addc	a, r6
      003659 F5 19            [12] 1649 	mov	(_AddSecondsToDateTime_sloc4_1_0 + 1),a
      00365B 8F 1A            [24] 1650 	mov	(_AddSecondsToDateTime_sloc4_1_0 + 2),r7
      00365D 85 18 82         [24] 1651 	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
      003660 85 19 83         [24] 1652 	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
      003663 85 1A F0         [24] 1653 	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
      003666 12 3A B5         [24] 1654 	lcall	__gptrget
      003669 FC               [12] 1655 	mov	r4,a
      00366A 7B 00            [12] 1656 	mov	r3,#0x00
      00366C C3               [12] 1657 	clr	c
      00366D E8               [12] 1658 	mov	a,r0
      00366E 9C               [12] 1659 	subb	a,r4
      00366F E9               [12] 1660 	mov	a,r1
      003670 64 80            [12] 1661 	xrl	a,#0x80
      003672 8B F0            [24] 1662 	mov	b,r3
      003674 63 F0 80         [24] 1663 	xrl	b,#0x80
      003677 95 F0            [12] 1664 	subb	a,b
      003679 D0 04            [24] 1665 	pop	ar4
      00367B D0 03            [24] 1666 	pop	ar3
      00367D D0 02            [24] 1667 	pop	ar2
      00367F 40 03            [24] 1668 	jc	00174$
      003681 02 35 03         [24] 1669 	ljmp	00111$
      003684                       1670 00174$:
                                   1671 ;	../Common/DateTime.c:119: result->day = 1;
      003684 85 18 82         [24] 1672 	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
      003687 85 19 83         [24] 1673 	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
      00368A 85 1A F0         [24] 1674 	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
      00368D 74 01            [12] 1675 	mov	a,#0x01
      00368F 12 39 67         [24] 1676 	lcall	__gptrput
                                   1677 ;	../Common/DateTime.c:120: result->month++;
      003692 74 05            [12] 1678 	mov	a,#0x05
      003694 2D               [12] 1679 	add	a, r5
      003695 F5 18            [12] 1680 	mov	_AddSecondsToDateTime_sloc4_1_0,a
      003697 E4               [12] 1681 	clr	a
      003698 3E               [12] 1682 	addc	a, r6
      003699 F5 19            [12] 1683 	mov	(_AddSecondsToDateTime_sloc4_1_0 + 1),a
      00369B 8F 1A            [24] 1684 	mov	(_AddSecondsToDateTime_sloc4_1_0 + 2),r7
      00369D 85 18 82         [24] 1685 	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
      0036A0 85 19 83         [24] 1686 	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
      0036A3 85 1A F0         [24] 1687 	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
      0036A6 12 3A B5         [24] 1688 	lcall	__gptrget
      0036A9 F9               [12] 1689 	mov	r1,a
      0036AA 09               [12] 1690 	inc	r1
      0036AB 85 18 82         [24] 1691 	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
      0036AE 85 19 83         [24] 1692 	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
      0036B1 85 1A F0         [24] 1693 	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
      0036B4 E9               [12] 1694 	mov	a,r1
      0036B5 12 39 67         [24] 1695 	lcall	__gptrput
                                   1696 ;	../Common/DateTime.c:121: if (result->month == 12)
      0036B8 B9 0C 02         [24] 1697 	cjne	r1,#0x0c,00175$
      0036BB 80 03            [24] 1698 	sjmp	00176$
      0036BD                       1699 00175$:
      0036BD 02 35 03         [24] 1700 	ljmp	00111$
      0036C0                       1701 00176$:
                                   1702 ;	../Common/DateTime.c:123: result->month = 1;
      0036C0 C0 02            [24] 1703 	push	ar2
      0036C2 C0 03            [24] 1704 	push	ar3
      0036C4 C0 04            [24] 1705 	push	ar4
      0036C6 85 18 82         [24] 1706 	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
      0036C9 85 19 83         [24] 1707 	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
      0036CC 85 1A F0         [24] 1708 	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
      0036CF 74 01            [12] 1709 	mov	a,#0x01
      0036D1 12 39 67         [24] 1710 	lcall	__gptrput
                                   1711 ;	../Common/DateTime.c:124: result->year++;
      0036D4 74 06            [12] 1712 	mov	a,#0x06
      0036D6 2D               [12] 1713 	add	a, r5
      0036D7 F8               [12] 1714 	mov	r0,a
      0036D8 E4               [12] 1715 	clr	a
      0036D9 3E               [12] 1716 	addc	a, r6
      0036DA F9               [12] 1717 	mov	r1,a
      0036DB 8F 04            [24] 1718 	mov	ar4,r7
      0036DD 88 82            [24] 1719 	mov	dpl,r0
      0036DF 89 83            [24] 1720 	mov	dph,r1
      0036E1 8C F0            [24] 1721 	mov	b,r4
      0036E3 12 3A B5         [24] 1722 	lcall	__gptrget
      0036E6 FB               [12] 1723 	mov	r3,a
      0036E7 0B               [12] 1724 	inc	r3
      0036E8 88 82            [24] 1725 	mov	dpl,r0
      0036EA 89 83            [24] 1726 	mov	dph,r1
      0036EC 8C F0            [24] 1727 	mov	b,r4
      0036EE EB               [12] 1728 	mov	a,r3
      0036EF 12 39 67         [24] 1729 	lcall	__gptrput
      0036F2 D0 04            [24] 1730 	pop	ar4
      0036F4 D0 03            [24] 1731 	pop	ar3
      0036F6 D0 02            [24] 1732 	pop	ar2
                                   1733 ;	../Common/DateTime.c:131: }
      0036F8 02 35 03         [24] 1734 	ljmp	00111$
                                   1735 ;------------------------------------------------------------
                                   1736 ;Allocation info for local variables in function 'CompareDateTime'
                                   1737 ;------------------------------------------------------------
                                   1738 ;dt2           Allocated with name '_CompareDateTime_PARM_2'
                                   1739 ;dt1           Allocated with name '_CompareDateTime_dt1_10000_35'
                                   1740 ;sloc0         Allocated with name '_CompareDateTime_sloc0_1_0'
                                   1741 ;sloc1         Allocated with name '_CompareDateTime_sloc1_1_0'
                                   1742 ;sloc2         Allocated with name '_CompareDateTime_sloc2_1_0'
                                   1743 ;sloc3         Allocated with name '_CompareDateTime_sloc3_1_0'
                                   1744 ;sloc4         Allocated with name '_CompareDateTime_sloc4_1_0'
                                   1745 ;sloc5         Allocated with name '_CompareDateTime_sloc5_1_0'
                                   1746 ;------------------------------------------------------------
                                   1747 ;	../Common/DateTime.c:134: int CompareDateTime(DateTimeStruct* dt1, DateTimeStruct* dt2)
                                   1748 ;	-----------------------------------------
                                   1749 ;	 function CompareDateTime
                                   1750 ;	-----------------------------------------
      0036FB                       1751 _CompareDateTime:
      0036FB AF F0            [24] 1752 	mov	r7,b
      0036FD AE 83            [24] 1753 	mov	r6,dph
      0036FF E5 82            [12] 1754 	mov	a,dpl
      003701 90 02 B2         [24] 1755 	mov	dptr,#_CompareDateTime_dt1_10000_35
      003704 F0               [24] 1756 	movx	@dptr,a
      003705 EE               [12] 1757 	mov	a,r6
      003706 A3               [24] 1758 	inc	dptr
      003707 F0               [24] 1759 	movx	@dptr,a
      003708 EF               [12] 1760 	mov	a,r7
      003709 A3               [24] 1761 	inc	dptr
      00370A F0               [24] 1762 	movx	@dptr,a
                                   1763 ;	../Common/DateTime.c:136: if (dt1->year == dt2->year)
      00370B 90 02 B2         [24] 1764 	mov	dptr,#_CompareDateTime_dt1_10000_35
      00370E E0               [24] 1765 	movx	a,@dptr
      00370F F5 40            [12] 1766 	mov	_CompareDateTime_sloc2_1_0,a
      003711 A3               [24] 1767 	inc	dptr
      003712 E0               [24] 1768 	movx	a,@dptr
      003713 F5 41            [12] 1769 	mov	(_CompareDateTime_sloc2_1_0 + 1),a
      003715 A3               [24] 1770 	inc	dptr
      003716 E0               [24] 1771 	movx	a,@dptr
      003717 F5 42            [12] 1772 	mov	(_CompareDateTime_sloc2_1_0 + 2),a
      003719 74 06            [12] 1773 	mov	a,#0x06
      00371B 25 40            [12] 1774 	add	a, _CompareDateTime_sloc2_1_0
      00371D FA               [12] 1775 	mov	r2,a
      00371E E4               [12] 1776 	clr	a
      00371F 35 41            [12] 1777 	addc	a, (_CompareDateTime_sloc2_1_0 + 1)
      003721 FB               [12] 1778 	mov	r3,a
      003722 AC 42            [24] 1779 	mov	r4,(_CompareDateTime_sloc2_1_0 + 2)
      003724 8A 82            [24] 1780 	mov	dpl,r2
      003726 8B 83            [24] 1781 	mov	dph,r3
      003728 8C F0            [24] 1782 	mov	b,r4
      00372A 12 3A B5         [24] 1783 	lcall	__gptrget
      00372D F5 3C            [12] 1784 	mov	_CompareDateTime_sloc0_1_0,a
      00372F 90 02 AF         [24] 1785 	mov	dptr,#_CompareDateTime_PARM_2
      003732 E0               [24] 1786 	movx	a,@dptr
      003733 F5 3D            [12] 1787 	mov	_CompareDateTime_sloc1_1_0,a
      003735 A3               [24] 1788 	inc	dptr
      003736 E0               [24] 1789 	movx	a,@dptr
      003737 F5 3E            [12] 1790 	mov	(_CompareDateTime_sloc1_1_0 + 1),a
      003739 A3               [24] 1791 	inc	dptr
      00373A E0               [24] 1792 	movx	a,@dptr
      00373B F5 3F            [12] 1793 	mov	(_CompareDateTime_sloc1_1_0 + 2),a
      00373D 74 06            [12] 1794 	mov	a,#0x06
      00373F 25 3D            [12] 1795 	add	a, _CompareDateTime_sloc1_1_0
      003741 F8               [12] 1796 	mov	r0,a
      003742 E4               [12] 1797 	clr	a
      003743 35 3E            [12] 1798 	addc	a, (_CompareDateTime_sloc1_1_0 + 1)
      003745 FB               [12] 1799 	mov	r3,a
      003746 AC 3F            [24] 1800 	mov	r4,(_CompareDateTime_sloc1_1_0 + 2)
      003748 88 82            [24] 1801 	mov	dpl,r0
      00374A 8B 83            [24] 1802 	mov	dph,r3
      00374C 8C F0            [24] 1803 	mov	b,r4
      00374E 12 3A B5         [24] 1804 	lcall	__gptrget
      003751 FC               [12] 1805 	mov	r4,a
      003752 B5 3C 02         [24] 1806 	cjne	a,_CompareDateTime_sloc0_1_0,00157$
      003755 80 03            [24] 1807 	sjmp	00158$
      003757                       1808 00157$:
      003757 02 38 CA         [24] 1809 	ljmp	00117$
      00375A                       1810 00158$:
                                   1811 ;	../Common/DateTime.c:138: if (dt1->month == dt2->month)
      00375A 74 05            [12] 1812 	mov	a,#0x05
      00375C 25 40            [12] 1813 	add	a, _CompareDateTime_sloc2_1_0
      00375E F9               [12] 1814 	mov	r1,a
      00375F E4               [12] 1815 	clr	a
      003760 35 41            [12] 1816 	addc	a, (_CompareDateTime_sloc2_1_0 + 1)
      003762 FA               [12] 1817 	mov	r2,a
      003763 AB 42            [24] 1818 	mov	r3,(_CompareDateTime_sloc2_1_0 + 2)
      003765 89 82            [24] 1819 	mov	dpl,r1
      003767 8A 83            [24] 1820 	mov	dph,r2
      003769 8B F0            [24] 1821 	mov	b,r3
      00376B 12 3A B5         [24] 1822 	lcall	__gptrget
      00376E FB               [12] 1823 	mov	r3,a
      00376F 74 05            [12] 1824 	mov	a,#0x05
      003771 25 3D            [12] 1825 	add	a, _CompareDateTime_sloc1_1_0
      003773 F8               [12] 1826 	mov	r0,a
      003774 E4               [12] 1827 	clr	a
      003775 35 3E            [12] 1828 	addc	a, (_CompareDateTime_sloc1_1_0 + 1)
      003777 F9               [12] 1829 	mov	r1,a
      003778 AA 3F            [24] 1830 	mov	r2,(_CompareDateTime_sloc1_1_0 + 2)
      00377A 88 82            [24] 1831 	mov	dpl,r0
      00377C 89 83            [24] 1832 	mov	dph,r1
      00377E 8A F0            [24] 1833 	mov	b,r2
      003780 12 3A B5         [24] 1834 	lcall	__gptrget
      003783 FA               [12] 1835 	mov	r2,a
      003784 EB               [12] 1836 	mov	a,r3
      003785 B5 02 02         [24] 1837 	cjne	a,ar2,00159$
      003788 80 03            [24] 1838 	sjmp	00160$
      00378A                       1839 00159$:
      00378A 02 38 BB         [24] 1840 	ljmp	00114$
      00378D                       1841 00160$:
                                   1842 ;	../Common/DateTime.c:140: if (dt1->day == dt2->day)
      00378D 74 04            [12] 1843 	mov	a,#0x04
      00378F 25 40            [12] 1844 	add	a, _CompareDateTime_sloc2_1_0
      003791 F8               [12] 1845 	mov	r0,a
      003792 E4               [12] 1846 	clr	a
      003793 35 41            [12] 1847 	addc	a, (_CompareDateTime_sloc2_1_0 + 1)
      003795 F9               [12] 1848 	mov	r1,a
      003796 AF 42            [24] 1849 	mov	r7,(_CompareDateTime_sloc2_1_0 + 2)
      003798 88 82            [24] 1850 	mov	dpl,r0
      00379A 89 83            [24] 1851 	mov	dph,r1
      00379C 8F F0            [24] 1852 	mov	b,r7
      00379E 12 3A B5         [24] 1853 	lcall	__gptrget
      0037A1 FF               [12] 1854 	mov	r7,a
      0037A2 74 04            [12] 1855 	mov	a,#0x04
      0037A4 25 3D            [12] 1856 	add	a, _CompareDateTime_sloc1_1_0
      0037A6 F9               [12] 1857 	mov	r1,a
      0037A7 E4               [12] 1858 	clr	a
      0037A8 35 3E            [12] 1859 	addc	a, (_CompareDateTime_sloc1_1_0 + 1)
      0037AA FD               [12] 1860 	mov	r5,a
      0037AB AE 3F            [24] 1861 	mov	r6,(_CompareDateTime_sloc1_1_0 + 2)
      0037AD 89 82            [24] 1862 	mov	dpl,r1
      0037AF 8D 83            [24] 1863 	mov	dph,r5
      0037B1 8E F0            [24] 1864 	mov	b,r6
      0037B3 12 3A B5         [24] 1865 	lcall	__gptrget
      0037B6 FE               [12] 1866 	mov	r6,a
      0037B7 EF               [12] 1867 	mov	a,r7
      0037B8 B5 06 02         [24] 1868 	cjne	a,ar6,00161$
      0037BB 80 03            [24] 1869 	sjmp	00162$
      0037BD                       1870 00161$:
      0037BD 02 38 A9         [24] 1871 	ljmp	00111$
      0037C0                       1872 00162$:
                                   1873 ;	../Common/DateTime.c:142: if (dt1->hours == dt2->hours)
      0037C0 74 02            [12] 1874 	mov	a,#0x02
      0037C2 25 40            [12] 1875 	add	a, _CompareDateTime_sloc2_1_0
      0037C4 F8               [12] 1876 	mov	r0,a
      0037C5 E4               [12] 1877 	clr	a
      0037C6 35 41            [12] 1878 	addc	a, (_CompareDateTime_sloc2_1_0 + 1)
      0037C8 F9               [12] 1879 	mov	r1,a
      0037C9 AD 42            [24] 1880 	mov	r5,(_CompareDateTime_sloc2_1_0 + 2)
      0037CB 88 82            [24] 1881 	mov	dpl,r0
      0037CD 89 83            [24] 1882 	mov	dph,r1
      0037CF 8D F0            [24] 1883 	mov	b,r5
      0037D1 12 3A B5         [24] 1884 	lcall	__gptrget
      0037D4 F5 43            [12] 1885 	mov	_CompareDateTime_sloc3_1_0,a
      0037D6 74 02            [12] 1886 	mov	a,#0x02
      0037D8 25 3D            [12] 1887 	add	a, _CompareDateTime_sloc1_1_0
      0037DA F8               [12] 1888 	mov	r0,a
      0037DB E4               [12] 1889 	clr	a
      0037DC 35 3E            [12] 1890 	addc	a, (_CompareDateTime_sloc1_1_0 + 1)
      0037DE F9               [12] 1891 	mov	r1,a
      0037DF AD 3F            [24] 1892 	mov	r5,(_CompareDateTime_sloc1_1_0 + 2)
      0037E1 88 82            [24] 1893 	mov	dpl,r0
      0037E3 89 83            [24] 1894 	mov	dph,r1
      0037E5 8D F0            [24] 1895 	mov	b,r5
      0037E7 12 3A B5         [24] 1896 	lcall	__gptrget
      0037EA FD               [12] 1897 	mov	r5,a
      0037EB B5 43 02         [24] 1898 	cjne	a,_CompareDateTime_sloc3_1_0,00163$
      0037EE 80 03            [24] 1899 	sjmp	00164$
      0037F0                       1900 00163$:
      0037F0 02 38 91         [24] 1901 	ljmp	00108$
      0037F3                       1902 00164$:
                                   1903 ;	../Common/DateTime.c:144: if (dt1->minutes == dt2->minutes)
      0037F3 74 01            [12] 1904 	mov	a,#0x01
      0037F5 25 40            [12] 1905 	add	a, _CompareDateTime_sloc2_1_0
      0037F7 F5 44            [12] 1906 	mov	_CompareDateTime_sloc4_1_0,a
      0037F9 E4               [12] 1907 	clr	a
      0037FA 35 41            [12] 1908 	addc	a, (_CompareDateTime_sloc2_1_0 + 1)
      0037FC F5 45            [12] 1909 	mov	(_CompareDateTime_sloc4_1_0 + 1),a
      0037FE 85 42 46         [24] 1910 	mov	(_CompareDateTime_sloc4_1_0 + 2),(_CompareDateTime_sloc2_1_0 + 2)
      003801 85 44 82         [24] 1911 	mov	dpl,_CompareDateTime_sloc4_1_0
      003804 85 45 83         [24] 1912 	mov	dph,(_CompareDateTime_sloc4_1_0 + 1)
      003807 85 46 F0         [24] 1913 	mov	b,(_CompareDateTime_sloc4_1_0 + 2)
      00380A 12 3A B5         [24] 1914 	lcall	__gptrget
      00380D F5 44            [12] 1915 	mov	_CompareDateTime_sloc4_1_0,a
      00380F 74 01            [12] 1916 	mov	a,#0x01
      003811 25 3D            [12] 1917 	add	a, _CompareDateTime_sloc1_1_0
      003813 F5 47            [12] 1918 	mov	_CompareDateTime_sloc5_1_0,a
      003815 E4               [12] 1919 	clr	a
      003816 35 3E            [12] 1920 	addc	a, (_CompareDateTime_sloc1_1_0 + 1)
      003818 F5 48            [12] 1921 	mov	(_CompareDateTime_sloc5_1_0 + 1),a
      00381A 85 3F 49         [24] 1922 	mov	(_CompareDateTime_sloc5_1_0 + 2),(_CompareDateTime_sloc1_1_0 + 2)
      00381D 85 47 82         [24] 1923 	mov	dpl,_CompareDateTime_sloc5_1_0
      003820 85 48 83         [24] 1924 	mov	dph,(_CompareDateTime_sloc5_1_0 + 1)
      003823 85 49 F0         [24] 1925 	mov	b,(_CompareDateTime_sloc5_1_0 + 2)
      003826 12 3A B5         [24] 1926 	lcall	__gptrget
      003829 F5 47            [12] 1927 	mov	_CompareDateTime_sloc5_1_0,a
      00382B B5 44 4E         [24] 1928 	cjne	a,_CompareDateTime_sloc4_1_0,00105$
                                   1929 ;	../Common/DateTime.c:146: if (dt1->seconds == dt2->seconds)
      00382E 85 40 47         [24] 1930 	mov	_CompareDateTime_sloc5_1_0,_CompareDateTime_sloc2_1_0
      003831 85 41 48         [24] 1931 	mov	(_CompareDateTime_sloc5_1_0 + 1),(_CompareDateTime_sloc2_1_0 + 1)
      003834 85 42 49         [24] 1932 	mov	(_CompareDateTime_sloc5_1_0 + 2),(_CompareDateTime_sloc2_1_0 + 2)
      003837 85 47 82         [24] 1933 	mov	dpl,_CompareDateTime_sloc5_1_0
      00383A 85 48 83         [24] 1934 	mov	dph,(_CompareDateTime_sloc5_1_0 + 1)
      00383D 85 49 F0         [24] 1935 	mov	b,(_CompareDateTime_sloc5_1_0 + 2)
      003840 12 3A B5         [24] 1936 	lcall	__gptrget
      003843 F5 47            [12] 1937 	mov	_CompareDateTime_sloc5_1_0,a
      003845 85 3D 40         [24] 1938 	mov	_CompareDateTime_sloc2_1_0,_CompareDateTime_sloc1_1_0
      003848 85 3E 41         [24] 1939 	mov	(_CompareDateTime_sloc2_1_0 + 1),(_CompareDateTime_sloc1_1_0 + 1)
      00384B 85 3F 42         [24] 1940 	mov	(_CompareDateTime_sloc2_1_0 + 2),(_CompareDateTime_sloc1_1_0 + 2)
      00384E 85 40 82         [24] 1941 	mov	dpl,_CompareDateTime_sloc2_1_0
      003851 85 41 83         [24] 1942 	mov	dph,(_CompareDateTime_sloc2_1_0 + 1)
      003854 85 42 F0         [24] 1943 	mov	b,(_CompareDateTime_sloc2_1_0 + 2)
      003857 12 3A B5         [24] 1944 	lcall	__gptrget
      00385A F5 40            [12] 1945 	mov	_CompareDateTime_sloc2_1_0,a
      00385C B5 47 04         [24] 1946 	cjne	a,_CompareDateTime_sloc5_1_0,00102$
                                   1947 ;	../Common/DateTime.c:148: return 0;
      00385F 90 00 00         [24] 1948 	mov	dptr,#0x0000
      003862 22               [24] 1949 	ret
      003863                       1950 00102$:
                                   1951 ;	../Common/DateTime.c:152: return dt1->seconds - dt2->seconds;
      003863 E4               [12] 1952 	clr	a
      003864 F5 48            [12] 1953 	mov	(_CompareDateTime_sloc5_1_0 + 1),a
      003866 F5 41            [12] 1954 	mov	(_CompareDateTime_sloc2_1_0 + 1),a
      003868 E5 47            [12] 1955 	mov	a,_CompareDateTime_sloc5_1_0
      00386A C3               [12] 1956 	clr	c
      00386B 95 40            [12] 1957 	subb	a,_CompareDateTime_sloc2_1_0
      00386D F5 47            [12] 1958 	mov	_CompareDateTime_sloc5_1_0,a
      00386F E5 48            [12] 1959 	mov	a,(_CompareDateTime_sloc5_1_0 + 1)
      003871 95 41            [12] 1960 	subb	a,(_CompareDateTime_sloc2_1_0 + 1)
      003873 F5 48            [12] 1961 	mov	(_CompareDateTime_sloc5_1_0 + 1),a
      003875 85 47 82         [24] 1962 	mov	dpl, _CompareDateTime_sloc5_1_0
      003878 85 48 83         [24] 1963 	mov	dph, (_CompareDateTime_sloc5_1_0 + 1)
      00387B 22               [24] 1964 	ret
      00387C                       1965 00105$:
                                   1966 ;	../Common/DateTime.c:157: return dt1->minutes - dt2->minutes;
      00387C 75 45 00         [24] 1967 	mov	(_CompareDateTime_sloc4_1_0 + 1),#0x00
      00387F A8 47            [24] 1968 	mov	r0,_CompareDateTime_sloc5_1_0
      003881 79 00            [12] 1969 	mov	r1,#0x00
      003883 E5 44            [12] 1970 	mov	a,_CompareDateTime_sloc4_1_0
      003885 C3               [12] 1971 	clr	c
      003886 98               [12] 1972 	subb	a,r0
      003887 F8               [12] 1973 	mov	r0,a
      003888 E5 45            [12] 1974 	mov	a,(_CompareDateTime_sloc4_1_0 + 1)
      00388A 99               [12] 1975 	subb	a,r1
      00388B F9               [12] 1976 	mov	r1,a
      00388C 88 82            [24] 1977 	mov	dpl, r0
      00388E 89 83            [24] 1978 	mov	dph, r1
      003890 22               [24] 1979 	ret
      003891                       1980 00108$:
                                   1981 ;	../Common/DateTime.c:162: return dt1->hours - dt2->hours;
      003891 85 43 47         [24] 1982 	mov	_CompareDateTime_sloc5_1_0,_CompareDateTime_sloc3_1_0
      003894 75 48 00         [24] 1983 	mov	(_CompareDateTime_sloc5_1_0 + 1),#0x00
      003897 8D 01            [24] 1984 	mov	ar1,r5
      003899 7D 00            [12] 1985 	mov	r5,#0x00
      00389B E5 47            [12] 1986 	mov	a,_CompareDateTime_sloc5_1_0
      00389D C3               [12] 1987 	clr	c
      00389E 99               [12] 1988 	subb	a,r1
      00389F F9               [12] 1989 	mov	r1,a
      0038A0 E5 48            [12] 1990 	mov	a,(_CompareDateTime_sloc5_1_0 + 1)
      0038A2 9D               [12] 1991 	subb	a,r5
      0038A3 FD               [12] 1992 	mov	r5,a
      0038A4 89 82            [24] 1993 	mov	dpl, r1
      0038A6 8D 83            [24] 1994 	mov	dph, r5
      0038A8 22               [24] 1995 	ret
      0038A9                       1996 00111$:
                                   1997 ;	../Common/DateTime.c:167: return dt1->day - dt2->day;
      0038A9 7D 00            [12] 1998 	mov	r5,#0x00
      0038AB 8E 01            [24] 1999 	mov	ar1,r6
      0038AD 7E 00            [12] 2000 	mov	r6,#0x00
      0038AF EF               [12] 2001 	mov	a,r7
      0038B0 C3               [12] 2002 	clr	c
      0038B1 99               [12] 2003 	subb	a,r1
      0038B2 FF               [12] 2004 	mov	r7,a
      0038B3 ED               [12] 2005 	mov	a,r5
      0038B4 9E               [12] 2006 	subb	a,r6
      0038B5 FD               [12] 2007 	mov	r5,a
      0038B6 8F 82            [24] 2008 	mov	dpl, r7
      0038B8 8D 83            [24] 2009 	mov	dph, r5
      0038BA 22               [24] 2010 	ret
      0038BB                       2011 00114$:
                                   2012 ;	../Common/DateTime.c:172: return dt1->month - dt2->month;
      0038BB E4               [12] 2013 	clr	a
      0038BC FF               [12] 2014 	mov	r7,a
      0038BD FE               [12] 2015 	mov	r6,a
      0038BE EB               [12] 2016 	mov	a,r3
      0038BF C3               [12] 2017 	clr	c
      0038C0 9A               [12] 2018 	subb	a,r2
      0038C1 FB               [12] 2019 	mov	r3,a
      0038C2 EF               [12] 2020 	mov	a,r7
      0038C3 9E               [12] 2021 	subb	a,r6
      0038C4 FF               [12] 2022 	mov	r7,a
      0038C5 8B 82            [24] 2023 	mov	dpl, r3
      0038C7 8F 83            [24] 2024 	mov	dph, r7
      0038C9 22               [24] 2025 	ret
      0038CA                       2026 00117$:
                                   2027 ;	../Common/DateTime.c:177: return dt1->year - dt2->year;
      0038CA AE 3C            [24] 2028 	mov	r6,_CompareDateTime_sloc0_1_0
      0038CC E4               [12] 2029 	clr	a
      0038CD FF               [12] 2030 	mov	r7,a
      0038CE FD               [12] 2031 	mov	r5,a
      0038CF EE               [12] 2032 	mov	a,r6
      0038D0 C3               [12] 2033 	clr	c
      0038D1 9C               [12] 2034 	subb	a,r4
      0038D2 FE               [12] 2035 	mov	r6,a
      0038D3 EF               [12] 2036 	mov	a,r7
      0038D4 9D               [12] 2037 	subb	a,r5
                                   2038 ;	../Common/DateTime.c:180: }
      0038D5 8E 82            [24] 2039 	mov	dpl,r6
      0038D7 F5 83            [12] 2040 	mov	dph,a
      0038D9 22               [24] 2041 	ret
                                   2042 	.area CSEG    (CODE)
                                   2043 	.area CONST   (CODE)
                                   2044 	.area XINIT   (CODE)
                                   2045 	.area CABS    (ABS,CODE)
