                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module DateTime
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
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
      00002C                        433 _FormatTime_sloc0_1_0:
      00002C                        434 	.ds 3
      00002F                        435 _FormatTime_sloc1_1_0:
      00002F                        436 	.ds 3
      000032                        437 _FormatTime_sloc2_1_0:
      000032                        438 	.ds 3
      000035                        439 _FormatDate_sloc0_1_0:
      000035                        440 	.ds 3
      000038                        441 _FormatDate_sloc1_1_0:
      000038                        442 	.ds 3
      00003B                        443 _FormatDate_sloc2_1_0:
      00003B                        444 	.ds 3
      00003E                        445 _AddSecondsToDateTime_sloc0_1_0:
      00003E                        446 	.ds 3
      000041                        447 _AddSecondsToDateTime_sloc1_1_0:
      000041                        448 	.ds 3
      000044                        449 _AddSecondsToDateTime_sloc2_1_0:
      000044                        450 	.ds 3
      000047                        451 _AddSecondsToDateTime_sloc3_1_0:
      000047                        452 	.ds 3
      00004A                        453 _AddSecondsToDateTime_sloc4_1_0:
      00004A                        454 	.ds 3
                                    455 ;--------------------------------------------------------
                                    456 ; overlayable items in internal ram 
                                    457 ;--------------------------------------------------------
                                    458 	.area	OSEG    (OVR,DATA)
      00004E                        459 _CompareDateTime_sloc0_1_0:
      00004E                        460 	.ds 1
      00004F                        461 _CompareDateTime_sloc1_1_0:
      00004F                        462 	.ds 3
      000052                        463 _CompareDateTime_sloc2_1_0:
      000052                        464 	.ds 3
      000055                        465 _CompareDateTime_sloc3_1_0:
      000055                        466 	.ds 1
      000056                        467 _CompareDateTime_sloc4_1_0:
      000056                        468 	.ds 3
      000059                        469 _CompareDateTime_sloc5_1_0:
      000059                        470 	.ds 3
                                    471 ;--------------------------------------------------------
                                    472 ; indirectly addressable internal ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area ISEG    (DATA)
                                    475 ;--------------------------------------------------------
                                    476 ; absolute internal ram data
                                    477 ;--------------------------------------------------------
                                    478 	.area IABS    (ABS,DATA)
                                    479 	.area IABS    (ABS,DATA)
                                    480 ;--------------------------------------------------------
                                    481 ; bit data
                                    482 ;--------------------------------------------------------
                                    483 	.area BSEG    (BIT)
                                    484 ;--------------------------------------------------------
                                    485 ; paged external ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area PSEG    (PAG,XDATA)
                                    488 ;--------------------------------------------------------
                                    489 ; external ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area XSEG    (XDATA)
      000295                        492 _GetNumDaysInMonth_pdt_65536_17:
      000295                        493 	.ds 3
      000298                        494 _FormatTime_PARM_2:
      000298                        495 	.ds 3
      00029B                        496 _FormatTime_PARM_3:
      00029B                        497 	.ds 1
      00029C                        498 _FormatTime_buffer_65536_22:
      00029C                        499 	.ds 3
      00029F                        500 _FormatDate_PARM_2:
      00029F                        501 	.ds 3
      0002A2                        502 _FormatDate_buffer_65536_25:
      0002A2                        503 	.ds 3
      0002A5                        504 _AddSecondsToDateTime_PARM_2:
      0002A5                        505 	.ds 2
      0002A7                        506 _AddSecondsToDateTime_PARM_3:
      0002A7                        507 	.ds 3
      0002AA                        508 _AddSecondsToDateTime_pdt_65536_27:
      0002AA                        509 	.ds 3
      0002AD                        510 _AddSecondsToDateTime_secondsLeft_65536_28:
      0002AD                        511 	.ds 2
      0002AF                        512 _CompareDateTime_PARM_2:
      0002AF                        513 	.ds 3
      0002B2                        514 _CompareDateTime_dt1_65536_35:
      0002B2                        515 	.ds 3
                                    516 ;--------------------------------------------------------
                                    517 ; absolute external ram data
                                    518 ;--------------------------------------------------------
                                    519 	.area XABS    (ABS,XDATA)
                                    520 ;--------------------------------------------------------
                                    521 ; external initialized ram data
                                    522 ;--------------------------------------------------------
                                    523 	.area XISEG   (XDATA)
                                    524 	.area HOME    (CODE)
                                    525 	.area GSINIT0 (CODE)
                                    526 	.area GSINIT1 (CODE)
                                    527 	.area GSINIT2 (CODE)
                                    528 	.area GSINIT3 (CODE)
                                    529 	.area GSINIT4 (CODE)
                                    530 	.area GSINIT5 (CODE)
                                    531 	.area GSINIT  (CODE)
                                    532 	.area GSFINAL (CODE)
                                    533 	.area CSEG    (CODE)
                                    534 ;--------------------------------------------------------
                                    535 ; global & static initialisations
                                    536 ;--------------------------------------------------------
                                    537 	.area HOME    (CODE)
                                    538 	.area GSINIT  (CODE)
                                    539 	.area GSFINAL (CODE)
                                    540 	.area GSINIT  (CODE)
                                    541 ;--------------------------------------------------------
                                    542 ; Home
                                    543 ;--------------------------------------------------------
                                    544 	.area HOME    (CODE)
                                    545 	.area HOME    (CODE)
                                    546 ;--------------------------------------------------------
                                    547 ; code
                                    548 ;--------------------------------------------------------
                                    549 	.area CSEG    (CODE)
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'GetNumDaysInMonth'
                                    552 ;------------------------------------------------------------
                                    553 ;pdt                       Allocated with name '_GetNumDaysInMonth_pdt_65536_17'
                                    554 ;year                      Allocated with name '_GetNumDaysInMonth_year_65536_18'
                                    555 ;------------------------------------------------------------
                                    556 ;	../Common/DateTime.c:7: int GetNumDaysInMonth(DateTimeStruct* pdt)
                                    557 ;	-----------------------------------------
                                    558 ;	 function GetNumDaysInMonth
                                    559 ;	-----------------------------------------
      0030E5                        560 _GetNumDaysInMonth:
                           000007   561 	ar7 = 0x07
                           000006   562 	ar6 = 0x06
                           000005   563 	ar5 = 0x05
                           000004   564 	ar4 = 0x04
                           000003   565 	ar3 = 0x03
                           000002   566 	ar2 = 0x02
                           000001   567 	ar1 = 0x01
                           000000   568 	ar0 = 0x00
      0030E5 AF F0            [24]  569 	mov	r7,b
      0030E7 AE 83            [24]  570 	mov	r6,dph
      0030E9 E5 82            [12]  571 	mov	a,dpl
      0030EB 90 02 95         [24]  572 	mov	dptr,#_GetNumDaysInMonth_pdt_65536_17
      0030EE F0               [24]  573 	movx	@dptr,a
      0030EF EE               [12]  574 	mov	a,r6
      0030F0 A3               [24]  575 	inc	dptr
      0030F1 F0               [24]  576 	movx	@dptr,a
      0030F2 EF               [12]  577 	mov	a,r7
      0030F3 A3               [24]  578 	inc	dptr
      0030F4 F0               [24]  579 	movx	@dptr,a
                                    580 ;	../Common/DateTime.c:9: int year = pdt->year + 2000;
      0030F5 90 02 95         [24]  581 	mov	dptr,#_GetNumDaysInMonth_pdt_65536_17
      0030F8 E0               [24]  582 	movx	a,@dptr
      0030F9 FD               [12]  583 	mov	r5,a
      0030FA A3               [24]  584 	inc	dptr
      0030FB E0               [24]  585 	movx	a,@dptr
      0030FC FE               [12]  586 	mov	r6,a
      0030FD A3               [24]  587 	inc	dptr
      0030FE E0               [24]  588 	movx	a,@dptr
      0030FF FF               [12]  589 	mov	r7,a
      003100 74 06            [12]  590 	mov	a,#0x06
      003102 2D               [12]  591 	add	a,r5
      003103 FA               [12]  592 	mov	r2,a
      003104 E4               [12]  593 	clr	a
      003105 3E               [12]  594 	addc	a,r6
      003106 FB               [12]  595 	mov	r3,a
      003107 8F 04            [24]  596 	mov	ar4,r7
      003109 8A 82            [24]  597 	mov	dpl,r2
      00310B 8B 83            [24]  598 	mov	dph,r3
      00310D 8C F0            [24]  599 	mov	b,r4
      00310F 12 3D E8         [24]  600 	lcall	__gptrget
      003112 FA               [12]  601 	mov	r2,a
      003113 7C 00            [12]  602 	mov	r4,#0x00
      003115 74 D0            [12]  603 	mov	a,#0xd0
      003117 2A               [12]  604 	add	a,r2
      003118 FB               [12]  605 	mov	r3,a
      003119 74 07            [12]  606 	mov	a,#0x07
      00311B 3C               [12]  607 	addc	a,r4
      00311C FC               [12]  608 	mov	r4,a
                                    609 ;	../Common/DateTime.c:10: switch (pdt->month)
      00311D 74 05            [12]  610 	mov	a,#0x05
      00311F 2D               [12]  611 	add	a,r5
      003120 FD               [12]  612 	mov	r5,a
      003121 E4               [12]  613 	clr	a
      003122 3E               [12]  614 	addc	a,r6
      003123 FE               [12]  615 	mov	r6,a
      003124 8D 82            [24]  616 	mov	dpl,r5
      003126 8E 83            [24]  617 	mov	dph,r6
      003128 8F F0            [24]  618 	mov	b,r7
      00312A 12 3D E8         [24]  619 	lcall	__gptrget
      00312D FF               [12]  620 	mov  r7,a
      00312E 24 F3            [12]  621 	add	a,#0xff - 0x0c
      003130 50 03            [24]  622 	jnc	00129$
      003132 02 31 ED         [24]  623 	ljmp	00118$
      003135                        624 00129$:
      003135 EF               [12]  625 	mov	a,r7
      003136 24 0A            [12]  626 	add	a,#(00130$-3-.)
      003138 83               [24]  627 	movc	a,@a+pc
      003139 F5 82            [12]  628 	mov	dpl,a
      00313B EF               [12]  629 	mov	a,r7
      00313C 24 11            [12]  630 	add	a,#(00131$-3-.)
      00313E 83               [24]  631 	movc	a,@a+pc
      00313F F5 83            [12]  632 	mov	dph,a
      003141 E4               [12]  633 	clr	a
      003142 73               [24]  634 	jmp	@a+dptr
      003143                        635 00130$:
      003143 ED                     636 	.db	00118$
      003144 5D                     637 	.db	00101$
      003145 61                     638 	.db	00102$
      003146 C5                     639 	.db	00108$
      003147 C9                     640 	.db	00109$
      003148 CD                     641 	.db	00110$
      003149 D1                     642 	.db	00111$
      00314A D5                     643 	.db	00112$
      00314B D9                     644 	.db	00113$
      00314C DD                     645 	.db	00114$
      00314D E1                     646 	.db	00115$
      00314E E5                     647 	.db	00116$
      00314F E9                     648 	.db	00117$
      003150                        649 00131$:
      003150 31                     650 	.db	00118$>>8
      003151 31                     651 	.db	00101$>>8
      003152 31                     652 	.db	00102$>>8
      003153 31                     653 	.db	00108$>>8
      003154 31                     654 	.db	00109$>>8
      003155 31                     655 	.db	00110$>>8
      003156 31                     656 	.db	00111$>>8
      003157 31                     657 	.db	00112$>>8
      003158 31                     658 	.db	00113$>>8
      003159 31                     659 	.db	00114$>>8
      00315A 31                     660 	.db	00115$>>8
      00315B 31                     661 	.db	00116$>>8
      00315C 31                     662 	.db	00117$>>8
                                    663 ;	../Common/DateTime.c:12: case 1 :   // Jan
      00315D                        664 00101$:
                                    665 ;	../Common/DateTime.c:13: return 31;
      00315D 90 00 1F         [24]  666 	mov	dptr,#0x001f
      003160 22               [24]  667 	ret
                                    668 ;	../Common/DateTime.c:14: case 2 :   // Feb
      003161                        669 00102$:
                                    670 ;	../Common/DateTime.c:15: if ((!(year % 4) && (year % 100)) || !(year % 400))
      003161 90 02 BF         [24]  671 	mov	dptr,#__modsint_PARM_2
      003164 74 04            [12]  672 	mov	a,#0x04
      003166 F0               [24]  673 	movx	@dptr,a
      003167 E4               [12]  674 	clr	a
      003168 A3               [24]  675 	inc	dptr
      003169 F0               [24]  676 	movx	@dptr,a
      00316A 8B 82            [24]  677 	mov	dpl,r3
      00316C 8C 83            [24]  678 	mov	dph,r4
      00316E C0 04            [24]  679 	push	ar4
      003170 C0 03            [24]  680 	push	ar3
      003172 12 3C 62         [24]  681 	lcall	__modsint
      003175 E5 82            [12]  682 	mov	a,dpl
      003177 85 83 F0         [24]  683 	mov	b,dph
      00317A D0 03            [24]  684 	pop	ar3
      00317C D0 04            [24]  685 	pop	ar4
      00317E 45 F0            [12]  686 	orl	a,b
      003180 70 21            [24]  687 	jnz	00107$
      003182 90 02 BF         [24]  688 	mov	dptr,#__modsint_PARM_2
      003185 74 64            [12]  689 	mov	a,#0x64
      003187 F0               [24]  690 	movx	@dptr,a
      003188 E4               [12]  691 	clr	a
      003189 A3               [24]  692 	inc	dptr
      00318A F0               [24]  693 	movx	@dptr,a
      00318B 8B 82            [24]  694 	mov	dpl,r3
      00318D 8C 83            [24]  695 	mov	dph,r4
      00318F C0 04            [24]  696 	push	ar4
      003191 C0 03            [24]  697 	push	ar3
      003193 12 3C 62         [24]  698 	lcall	__modsint
      003196 E5 82            [12]  699 	mov	a,dpl
      003198 85 83 F0         [24]  700 	mov	b,dph
      00319B D0 03            [24]  701 	pop	ar3
      00319D D0 04            [24]  702 	pop	ar4
      00319F 45 F0            [12]  703 	orl	a,b
      0031A1 70 1A            [24]  704 	jnz	00103$
      0031A3                        705 00107$:
      0031A3 90 02 BF         [24]  706 	mov	dptr,#__modsint_PARM_2
      0031A6 74 90            [12]  707 	mov	a,#0x90
      0031A8 F0               [24]  708 	movx	@dptr,a
      0031A9 74 01            [12]  709 	mov	a,#0x01
      0031AB A3               [24]  710 	inc	dptr
      0031AC F0               [24]  711 	movx	@dptr,a
      0031AD 8B 82            [24]  712 	mov	dpl,r3
      0031AF 8C 83            [24]  713 	mov	dph,r4
      0031B1 12 3C 62         [24]  714 	lcall	__modsint
      0031B4 E5 82            [12]  715 	mov	a,dpl
      0031B6 85 83 F0         [24]  716 	mov	b,dph
      0031B9 45 F0            [12]  717 	orl	a,b
      0031BB 70 04            [24]  718 	jnz	00104$
      0031BD                        719 00103$:
                                    720 ;	../Common/DateTime.c:17: return 29;
      0031BD 90 00 1D         [24]  721 	mov	dptr,#0x001d
      0031C0 22               [24]  722 	ret
      0031C1                        723 00104$:
                                    724 ;	../Common/DateTime.c:21: return 28;
      0031C1 90 00 1C         [24]  725 	mov	dptr,#0x001c
                                    726 ;	../Common/DateTime.c:23: case 3 :   // Mar
      0031C4 22               [24]  727 	ret
      0031C5                        728 00108$:
                                    729 ;	../Common/DateTime.c:24: return 31;
      0031C5 90 00 1F         [24]  730 	mov	dptr,#0x001f
                                    731 ;	../Common/DateTime.c:25: case 4 :   // Apr
      0031C8 22               [24]  732 	ret
      0031C9                        733 00109$:
                                    734 ;	../Common/DateTime.c:26: return 30;
      0031C9 90 00 1E         [24]  735 	mov	dptr,#0x001e
                                    736 ;	../Common/DateTime.c:27: case 5 :   // May
      0031CC 22               [24]  737 	ret
      0031CD                        738 00110$:
                                    739 ;	../Common/DateTime.c:28: return 31;
      0031CD 90 00 1F         [24]  740 	mov	dptr,#0x001f
                                    741 ;	../Common/DateTime.c:29: case 6 :   // Jun
      0031D0 22               [24]  742 	ret
      0031D1                        743 00111$:
                                    744 ;	../Common/DateTime.c:30: return 30;
      0031D1 90 00 1E         [24]  745 	mov	dptr,#0x001e
                                    746 ;	../Common/DateTime.c:31: case 7 :   // Jul 
      0031D4 22               [24]  747 	ret
      0031D5                        748 00112$:
                                    749 ;	../Common/DateTime.c:32: return 31;
      0031D5 90 00 1F         [24]  750 	mov	dptr,#0x001f
                                    751 ;	../Common/DateTime.c:33: case 8 :   // Aug
      0031D8 22               [24]  752 	ret
      0031D9                        753 00113$:
                                    754 ;	../Common/DateTime.c:34: return 30;
      0031D9 90 00 1E         [24]  755 	mov	dptr,#0x001e
                                    756 ;	../Common/DateTime.c:35: case 9 :   // Sep
      0031DC 22               [24]  757 	ret
      0031DD                        758 00114$:
                                    759 ;	../Common/DateTime.c:36: return 30;
      0031DD 90 00 1E         [24]  760 	mov	dptr,#0x001e
                                    761 ;	../Common/DateTime.c:37: case 10 :  // Oct
      0031E0 22               [24]  762 	ret
      0031E1                        763 00115$:
                                    764 ;	../Common/DateTime.c:38: return 30;
      0031E1 90 00 1E         [24]  765 	mov	dptr,#0x001e
                                    766 ;	../Common/DateTime.c:39: case 11 :  // Nov
      0031E4 22               [24]  767 	ret
      0031E5                        768 00116$:
                                    769 ;	../Common/DateTime.c:40: return 30;
      0031E5 90 00 1E         [24]  770 	mov	dptr,#0x001e
                                    771 ;	../Common/DateTime.c:41: case 12 :  // Dec
      0031E8 22               [24]  772 	ret
      0031E9                        773 00117$:
                                    774 ;	../Common/DateTime.c:42: return 31;
      0031E9 90 00 1F         [24]  775 	mov	dptr,#0x001f
                                    776 ;	../Common/DateTime.c:43: }
      0031EC 22               [24]  777 	ret
      0031ED                        778 00118$:
                                    779 ;	../Common/DateTime.c:44: return -1;
      0031ED 90 FF FF         [24]  780 	mov	dptr,#0xffff
                                    781 ;	../Common/DateTime.c:45: }
      0031F0 22               [24]  782 	ret
                                    783 ;------------------------------------------------------------
                                    784 ;Allocation info for local variables in function 'FormatTime'
                                    785 ;------------------------------------------------------------
                                    786 ;sloc0                     Allocated with name '_FormatTime_sloc0_1_0'
                                    787 ;sloc1                     Allocated with name '_FormatTime_sloc1_1_0'
                                    788 ;sloc2                     Allocated with name '_FormatTime_sloc2_1_0'
                                    789 ;pdt                       Allocated with name '_FormatTime_PARM_2'
                                    790 ;seconds                   Allocated with name '_FormatTime_PARM_3'
                                    791 ;buffer                    Allocated with name '_FormatTime_buffer_65536_22'
                                    792 ;------------------------------------------------------------
                                    793 ;	../Common/DateTime.c:48: void FormatTime(char *buffer, DateTimeStruct *pdt, unsigned char seconds)
                                    794 ;	-----------------------------------------
                                    795 ;	 function FormatTime
                                    796 ;	-----------------------------------------
      0031F1                        797 _FormatTime:
      0031F1 AF F0            [24]  798 	mov	r7,b
      0031F3 AE 83            [24]  799 	mov	r6,dph
      0031F5 E5 82            [12]  800 	mov	a,dpl
      0031F7 90 02 9C         [24]  801 	mov	dptr,#_FormatTime_buffer_65536_22
      0031FA F0               [24]  802 	movx	@dptr,a
      0031FB EE               [12]  803 	mov	a,r6
      0031FC A3               [24]  804 	inc	dptr
      0031FD F0               [24]  805 	movx	@dptr,a
      0031FE EF               [12]  806 	mov	a,r7
      0031FF A3               [24]  807 	inc	dptr
      003200 F0               [24]  808 	movx	@dptr,a
                                    809 ;	../Common/DateTime.c:50: buffer[0] = (pdt->hours / 10) + '0';
      003201 90 02 9C         [24]  810 	mov	dptr,#_FormatTime_buffer_65536_22
      003204 E0               [24]  811 	movx	a,@dptr
      003205 FD               [12]  812 	mov	r5,a
      003206 A3               [24]  813 	inc	dptr
      003207 E0               [24]  814 	movx	a,@dptr
      003208 FE               [12]  815 	mov	r6,a
      003209 A3               [24]  816 	inc	dptr
      00320A E0               [24]  817 	movx	a,@dptr
      00320B FF               [12]  818 	mov	r7,a
      00320C 90 02 98         [24]  819 	mov	dptr,#_FormatTime_PARM_2
      00320F E0               [24]  820 	movx	a,@dptr
      003210 F5 2C            [12]  821 	mov	_FormatTime_sloc0_1_0,a
      003212 A3               [24]  822 	inc	dptr
      003213 E0               [24]  823 	movx	a,@dptr
      003214 F5 2D            [12]  824 	mov	(_FormatTime_sloc0_1_0 + 1),a
      003216 A3               [24]  825 	inc	dptr
      003217 E0               [24]  826 	movx	a,@dptr
      003218 F5 2E            [12]  827 	mov	(_FormatTime_sloc0_1_0 + 2),a
      00321A 74 02            [12]  828 	mov	a,#0x02
      00321C 25 2C            [12]  829 	add	a,_FormatTime_sloc0_1_0
      00321E F5 2F            [12]  830 	mov	_FormatTime_sloc1_1_0,a
      003220 E4               [12]  831 	clr	a
      003221 35 2D            [12]  832 	addc	a,(_FormatTime_sloc0_1_0 + 1)
      003223 F5 30            [12]  833 	mov	(_FormatTime_sloc1_1_0 + 1),a
      003225 85 2E 31         [24]  834 	mov	(_FormatTime_sloc1_1_0 + 2),(_FormatTime_sloc0_1_0 + 2)
      003228 85 2F 82         [24]  835 	mov	dpl,_FormatTime_sloc1_1_0
      00322B 85 30 83         [24]  836 	mov	dph,(_FormatTime_sloc1_1_0 + 1)
      00322E 85 31 F0         [24]  837 	mov	b,(_FormatTime_sloc1_1_0 + 2)
      003231 12 3D E8         [24]  838 	lcall	__gptrget
      003234 FB               [12]  839 	mov	r3,a
      003235 7A 00            [12]  840 	mov	r2,#0x00
      003237 90 02 C8         [24]  841 	mov	dptr,#__divsint_PARM_2
      00323A 74 0A            [12]  842 	mov	a,#0x0a
      00323C F0               [24]  843 	movx	@dptr,a
      00323D E4               [12]  844 	clr	a
      00323E A3               [24]  845 	inc	dptr
      00323F F0               [24]  846 	movx	@dptr,a
      003240 8B 82            [24]  847 	mov	dpl,r3
      003242 8A 83            [24]  848 	mov	dph,r2
      003244 C0 07            [24]  849 	push	ar7
      003246 C0 06            [24]  850 	push	ar6
      003248 C0 05            [24]  851 	push	ar5
      00324A 12 3D 76         [24]  852 	lcall	__divsint
      00324D AA 82            [24]  853 	mov	r2,dpl
      00324F D0 05            [24]  854 	pop	ar5
      003251 D0 06            [24]  855 	pop	ar6
      003253 D0 07            [24]  856 	pop	ar7
      003255 74 30            [12]  857 	mov	a,#0x30
      003257 2A               [12]  858 	add	a,r2
      003258 8D 82            [24]  859 	mov	dpl,r5
      00325A 8E 83            [24]  860 	mov	dph,r6
      00325C 8F F0            [24]  861 	mov	b,r7
      00325E 12 3C 27         [24]  862 	lcall	__gptrput
                                    863 ;	../Common/DateTime.c:51: buffer[1] = (pdt->hours % 10) + '0';
      003261 74 01            [12]  864 	mov	a,#0x01
      003263 2D               [12]  865 	add	a,r5
      003264 FA               [12]  866 	mov	r2,a
      003265 E4               [12]  867 	clr	a
      003266 3E               [12]  868 	addc	a,r6
      003267 FB               [12]  869 	mov	r3,a
      003268 8F 04            [24]  870 	mov	ar4,r7
      00326A 85 2F 82         [24]  871 	mov	dpl,_FormatTime_sloc1_1_0
      00326D 85 30 83         [24]  872 	mov	dph,(_FormatTime_sloc1_1_0 + 1)
      003270 85 31 F0         [24]  873 	mov	b,(_FormatTime_sloc1_1_0 + 2)
      003273 12 3D E8         [24]  874 	lcall	__gptrget
      003276 F8               [12]  875 	mov	r0,a
      003277 79 00            [12]  876 	mov	r1,#0x00
      003279 90 02 BF         [24]  877 	mov	dptr,#__modsint_PARM_2
      00327C 74 0A            [12]  878 	mov	a,#0x0a
      00327E F0               [24]  879 	movx	@dptr,a
      00327F E4               [12]  880 	clr	a
      003280 A3               [24]  881 	inc	dptr
      003281 F0               [24]  882 	movx	@dptr,a
      003282 88 82            [24]  883 	mov	dpl,r0
      003284 89 83            [24]  884 	mov	dph,r1
      003286 C0 07            [24]  885 	push	ar7
      003288 C0 06            [24]  886 	push	ar6
      00328A C0 05            [24]  887 	push	ar5
      00328C C0 04            [24]  888 	push	ar4
      00328E C0 03            [24]  889 	push	ar3
      003290 C0 02            [24]  890 	push	ar2
      003292 12 3C 62         [24]  891 	lcall	__modsint
      003295 A8 82            [24]  892 	mov	r0,dpl
      003297 D0 02            [24]  893 	pop	ar2
      003299 D0 03            [24]  894 	pop	ar3
      00329B D0 04            [24]  895 	pop	ar4
      00329D D0 05            [24]  896 	pop	ar5
      00329F D0 06            [24]  897 	pop	ar6
      0032A1 D0 07            [24]  898 	pop	ar7
      0032A3 74 30            [12]  899 	mov	a,#0x30
      0032A5 28               [12]  900 	add	a,r0
      0032A6 8A 82            [24]  901 	mov	dpl,r2
      0032A8 8B 83            [24]  902 	mov	dph,r3
      0032AA 8C F0            [24]  903 	mov	b,r4
      0032AC 12 3C 27         [24]  904 	lcall	__gptrput
                                    905 ;	../Common/DateTime.c:52: buffer[2] = ':';
      0032AF 74 02            [12]  906 	mov	a,#0x02
      0032B1 2D               [12]  907 	add	a,r5
      0032B2 FA               [12]  908 	mov	r2,a
      0032B3 E4               [12]  909 	clr	a
      0032B4 3E               [12]  910 	addc	a,r6
      0032B5 FB               [12]  911 	mov	r3,a
      0032B6 8F 04            [24]  912 	mov	ar4,r7
      0032B8 8A 82            [24]  913 	mov	dpl,r2
      0032BA 8B 83            [24]  914 	mov	dph,r3
      0032BC 8C F0            [24]  915 	mov	b,r4
      0032BE 74 3A            [12]  916 	mov	a,#0x3a
      0032C0 12 3C 27         [24]  917 	lcall	__gptrput
                                    918 ;	../Common/DateTime.c:53: buffer[3] = (pdt->minutes / 10) + '0';
      0032C3 74 03            [12]  919 	mov	a,#0x03
      0032C5 2D               [12]  920 	add	a,r5
      0032C6 F5 2F            [12]  921 	mov	_FormatTime_sloc1_1_0,a
      0032C8 E4               [12]  922 	clr	a
      0032C9 3E               [12]  923 	addc	a,r6
      0032CA F5 30            [12]  924 	mov	(_FormatTime_sloc1_1_0 + 1),a
      0032CC 8F 31            [24]  925 	mov	(_FormatTime_sloc1_1_0 + 2),r7
      0032CE 74 01            [12]  926 	mov	a,#0x01
      0032D0 25 2C            [12]  927 	add	a,_FormatTime_sloc0_1_0
      0032D2 F5 32            [12]  928 	mov	_FormatTime_sloc2_1_0,a
      0032D4 E4               [12]  929 	clr	a
      0032D5 35 2D            [12]  930 	addc	a,(_FormatTime_sloc0_1_0 + 1)
      0032D7 F5 33            [12]  931 	mov	(_FormatTime_sloc2_1_0 + 1),a
      0032D9 85 2E 34         [24]  932 	mov	(_FormatTime_sloc2_1_0 + 2),(_FormatTime_sloc0_1_0 + 2)
      0032DC 85 32 82         [24]  933 	mov	dpl,_FormatTime_sloc2_1_0
      0032DF 85 33 83         [24]  934 	mov	dph,(_FormatTime_sloc2_1_0 + 1)
      0032E2 85 34 F0         [24]  935 	mov	b,(_FormatTime_sloc2_1_0 + 2)
      0032E5 12 3D E8         [24]  936 	lcall	__gptrget
      0032E8 FB               [12]  937 	mov	r3,a
      0032E9 7A 00            [12]  938 	mov	r2,#0x00
      0032EB 90 02 C8         [24]  939 	mov	dptr,#__divsint_PARM_2
      0032EE 74 0A            [12]  940 	mov	a,#0x0a
      0032F0 F0               [24]  941 	movx	@dptr,a
      0032F1 E4               [12]  942 	clr	a
      0032F2 A3               [24]  943 	inc	dptr
      0032F3 F0               [24]  944 	movx	@dptr,a
      0032F4 8B 82            [24]  945 	mov	dpl,r3
      0032F6 8A 83            [24]  946 	mov	dph,r2
      0032F8 C0 07            [24]  947 	push	ar7
      0032FA C0 06            [24]  948 	push	ar6
      0032FC C0 05            [24]  949 	push	ar5
      0032FE 12 3D 76         [24]  950 	lcall	__divsint
      003301 AA 82            [24]  951 	mov	r2,dpl
      003303 D0 05            [24]  952 	pop	ar5
      003305 D0 06            [24]  953 	pop	ar6
      003307 D0 07            [24]  954 	pop	ar7
      003309 74 30            [12]  955 	mov	a,#0x30
      00330B 2A               [12]  956 	add	a,r2
      00330C 85 2F 82         [24]  957 	mov	dpl,_FormatTime_sloc1_1_0
      00330F 85 30 83         [24]  958 	mov	dph,(_FormatTime_sloc1_1_0 + 1)
      003312 85 31 F0         [24]  959 	mov	b,(_FormatTime_sloc1_1_0 + 2)
      003315 12 3C 27         [24]  960 	lcall	__gptrput
                                    961 ;	../Common/DateTime.c:54: buffer[4] = (pdt->minutes % 10) + '0';
      003318 74 04            [12]  962 	mov	a,#0x04
      00331A 2D               [12]  963 	add	a,r5
      00331B FA               [12]  964 	mov	r2,a
      00331C E4               [12]  965 	clr	a
      00331D 3E               [12]  966 	addc	a,r6
      00331E FB               [12]  967 	mov	r3,a
      00331F 8F 04            [24]  968 	mov	ar4,r7
      003321 85 32 82         [24]  969 	mov	dpl,_FormatTime_sloc2_1_0
      003324 85 33 83         [24]  970 	mov	dph,(_FormatTime_sloc2_1_0 + 1)
      003327 85 34 F0         [24]  971 	mov	b,(_FormatTime_sloc2_1_0 + 2)
      00332A 12 3D E8         [24]  972 	lcall	__gptrget
      00332D F8               [12]  973 	mov	r0,a
      00332E 79 00            [12]  974 	mov	r1,#0x00
      003330 90 02 BF         [24]  975 	mov	dptr,#__modsint_PARM_2
      003333 74 0A            [12]  976 	mov	a,#0x0a
      003335 F0               [24]  977 	movx	@dptr,a
      003336 E4               [12]  978 	clr	a
      003337 A3               [24]  979 	inc	dptr
      003338 F0               [24]  980 	movx	@dptr,a
      003339 88 82            [24]  981 	mov	dpl,r0
      00333B 89 83            [24]  982 	mov	dph,r1
      00333D C0 07            [24]  983 	push	ar7
      00333F C0 06            [24]  984 	push	ar6
      003341 C0 05            [24]  985 	push	ar5
      003343 C0 04            [24]  986 	push	ar4
      003345 C0 03            [24]  987 	push	ar3
      003347 C0 02            [24]  988 	push	ar2
      003349 12 3C 62         [24]  989 	lcall	__modsint
      00334C A8 82            [24]  990 	mov	r0,dpl
      00334E D0 02            [24]  991 	pop	ar2
      003350 D0 03            [24]  992 	pop	ar3
      003352 D0 04            [24]  993 	pop	ar4
      003354 D0 05            [24]  994 	pop	ar5
      003356 D0 06            [24]  995 	pop	ar6
      003358 D0 07            [24]  996 	pop	ar7
      00335A 74 30            [12]  997 	mov	a,#0x30
      00335C 28               [12]  998 	add	a,r0
      00335D 8A 82            [24]  999 	mov	dpl,r2
      00335F 8B 83            [24] 1000 	mov	dph,r3
      003361 8C F0            [24] 1001 	mov	b,r4
      003363 12 3C 27         [24] 1002 	lcall	__gptrput
                                   1003 ;	../Common/DateTime.c:55: if (!seconds)
      003366 90 02 9B         [24] 1004 	mov	dptr,#_FormatTime_PARM_3
      003369 E0               [24] 1005 	movx	a,@dptr
      00336A 70 13            [24] 1006 	jnz	00102$
                                   1007 ;	../Common/DateTime.c:57: buffer[5] = 0;
      00336C 74 05            [12] 1008 	mov	a,#0x05
      00336E 2D               [12] 1009 	add	a,r5
      00336F FA               [12] 1010 	mov	r2,a
      003370 E4               [12] 1011 	clr	a
      003371 3E               [12] 1012 	addc	a,r6
      003372 FB               [12] 1013 	mov	r3,a
      003373 8F 04            [24] 1014 	mov	ar4,r7
      003375 8A 82            [24] 1015 	mov	dpl,r2
      003377 8B 83            [24] 1016 	mov	dph,r3
      003379 8C F0            [24] 1017 	mov	b,r4
      00337B E4               [12] 1018 	clr	a
                                   1019 ;	../Common/DateTime.c:58: return;
      00337C 02 3C 27         [24] 1020 	ljmp	__gptrput
      00337F                       1021 00102$:
                                   1022 ;	../Common/DateTime.c:60: buffer[5] = ':';
      00337F 74 05            [12] 1023 	mov	a,#0x05
      003381 2D               [12] 1024 	add	a,r5
      003382 FA               [12] 1025 	mov	r2,a
      003383 E4               [12] 1026 	clr	a
      003384 3E               [12] 1027 	addc	a,r6
      003385 FB               [12] 1028 	mov	r3,a
      003386 8F 04            [24] 1029 	mov	ar4,r7
      003388 8A 82            [24] 1030 	mov	dpl,r2
      00338A 8B 83            [24] 1031 	mov	dph,r3
      00338C 8C F0            [24] 1032 	mov	b,r4
      00338E 74 3A            [12] 1033 	mov	a,#0x3a
      003390 12 3C 27         [24] 1034 	lcall	__gptrput
                                   1035 ;	../Common/DateTime.c:61: buffer[6] = (pdt->seconds / 10) + '0';
      003393 74 06            [12] 1036 	mov	a,#0x06
      003395 2D               [12] 1037 	add	a,r5
      003396 FA               [12] 1038 	mov	r2,a
      003397 E4               [12] 1039 	clr	a
      003398 3E               [12] 1040 	addc	a,r6
      003399 FB               [12] 1041 	mov	r3,a
      00339A 8F 04            [24] 1042 	mov	ar4,r7
      00339C 85 2C 82         [24] 1043 	mov	dpl,_FormatTime_sloc0_1_0
      00339F 85 2D 83         [24] 1044 	mov	dph,(_FormatTime_sloc0_1_0 + 1)
      0033A2 85 2E F0         [24] 1045 	mov	b,(_FormatTime_sloc0_1_0 + 2)
      0033A5 12 3D E8         [24] 1046 	lcall	__gptrget
      0033A8 F8               [12] 1047 	mov	r0,a
      0033A9 79 00            [12] 1048 	mov	r1,#0x00
      0033AB 90 02 C8         [24] 1049 	mov	dptr,#__divsint_PARM_2
      0033AE 74 0A            [12] 1050 	mov	a,#0x0a
      0033B0 F0               [24] 1051 	movx	@dptr,a
      0033B1 E4               [12] 1052 	clr	a
      0033B2 A3               [24] 1053 	inc	dptr
      0033B3 F0               [24] 1054 	movx	@dptr,a
      0033B4 88 82            [24] 1055 	mov	dpl,r0
      0033B6 89 83            [24] 1056 	mov	dph,r1
      0033B8 C0 07            [24] 1057 	push	ar7
      0033BA C0 06            [24] 1058 	push	ar6
      0033BC C0 05            [24] 1059 	push	ar5
      0033BE C0 04            [24] 1060 	push	ar4
      0033C0 C0 03            [24] 1061 	push	ar3
      0033C2 C0 02            [24] 1062 	push	ar2
      0033C4 12 3D 76         [24] 1063 	lcall	__divsint
      0033C7 A8 82            [24] 1064 	mov	r0,dpl
      0033C9 D0 02            [24] 1065 	pop	ar2
      0033CB D0 03            [24] 1066 	pop	ar3
      0033CD D0 04            [24] 1067 	pop	ar4
      0033CF D0 05            [24] 1068 	pop	ar5
      0033D1 D0 06            [24] 1069 	pop	ar6
      0033D3 D0 07            [24] 1070 	pop	ar7
      0033D5 74 30            [12] 1071 	mov	a,#0x30
      0033D7 28               [12] 1072 	add	a,r0
      0033D8 8A 82            [24] 1073 	mov	dpl,r2
      0033DA 8B 83            [24] 1074 	mov	dph,r3
      0033DC 8C F0            [24] 1075 	mov	b,r4
      0033DE 12 3C 27         [24] 1076 	lcall	__gptrput
                                   1077 ;	../Common/DateTime.c:62: buffer[7] = (pdt->seconds % 10) + '0';
      0033E1 74 07            [12] 1078 	mov	a,#0x07
      0033E3 2D               [12] 1079 	add	a,r5
      0033E4 FA               [12] 1080 	mov	r2,a
      0033E5 E4               [12] 1081 	clr	a
      0033E6 3E               [12] 1082 	addc	a,r6
      0033E7 FB               [12] 1083 	mov	r3,a
      0033E8 8F 04            [24] 1084 	mov	ar4,r7
      0033EA 85 2C 82         [24] 1085 	mov	dpl,_FormatTime_sloc0_1_0
      0033ED 85 2D 83         [24] 1086 	mov	dph,(_FormatTime_sloc0_1_0 + 1)
      0033F0 85 2E F0         [24] 1087 	mov	b,(_FormatTime_sloc0_1_0 + 2)
      0033F3 12 3D E8         [24] 1088 	lcall	__gptrget
      0033F6 F8               [12] 1089 	mov	r0,a
      0033F7 79 00            [12] 1090 	mov	r1,#0x00
      0033F9 90 02 BF         [24] 1091 	mov	dptr,#__modsint_PARM_2
      0033FC 74 0A            [12] 1092 	mov	a,#0x0a
      0033FE F0               [24] 1093 	movx	@dptr,a
      0033FF E4               [12] 1094 	clr	a
      003400 A3               [24] 1095 	inc	dptr
      003401 F0               [24] 1096 	movx	@dptr,a
      003402 88 82            [24] 1097 	mov	dpl,r0
      003404 89 83            [24] 1098 	mov	dph,r1
      003406 C0 07            [24] 1099 	push	ar7
      003408 C0 06            [24] 1100 	push	ar6
      00340A C0 05            [24] 1101 	push	ar5
      00340C C0 04            [24] 1102 	push	ar4
      00340E C0 03            [24] 1103 	push	ar3
      003410 C0 02            [24] 1104 	push	ar2
      003412 12 3C 62         [24] 1105 	lcall	__modsint
      003415 A8 82            [24] 1106 	mov	r0,dpl
      003417 D0 02            [24] 1107 	pop	ar2
      003419 D0 03            [24] 1108 	pop	ar3
      00341B D0 04            [24] 1109 	pop	ar4
      00341D D0 05            [24] 1110 	pop	ar5
      00341F D0 06            [24] 1111 	pop	ar6
      003421 D0 07            [24] 1112 	pop	ar7
      003423 74 30            [12] 1113 	mov	a,#0x30
      003425 28               [12] 1114 	add	a,r0
      003426 8A 82            [24] 1115 	mov	dpl,r2
      003428 8B 83            [24] 1116 	mov	dph,r3
      00342A 8C F0            [24] 1117 	mov	b,r4
      00342C 12 3C 27         [24] 1118 	lcall	__gptrput
                                   1119 ;	../Common/DateTime.c:63: buffer[8] = 0;
      00342F 74 08            [12] 1120 	mov	a,#0x08
      003431 2D               [12] 1121 	add	a,r5
      003432 FD               [12] 1122 	mov	r5,a
      003433 E4               [12] 1123 	clr	a
      003434 3E               [12] 1124 	addc	a,r6
      003435 FE               [12] 1125 	mov	r6,a
      003436 8D 82            [24] 1126 	mov	dpl,r5
      003438 8E 83            [24] 1127 	mov	dph,r6
      00343A 8F F0            [24] 1128 	mov	b,r7
      00343C E4               [12] 1129 	clr	a
                                   1130 ;	../Common/DateTime.c:64: }
      00343D 02 3C 27         [24] 1131 	ljmp	__gptrput
                                   1132 ;------------------------------------------------------------
                                   1133 ;Allocation info for local variables in function 'FormatDate'
                                   1134 ;------------------------------------------------------------
                                   1135 ;sloc0                     Allocated with name '_FormatDate_sloc0_1_0'
                                   1136 ;sloc1                     Allocated with name '_FormatDate_sloc1_1_0'
                                   1137 ;sloc2                     Allocated with name '_FormatDate_sloc2_1_0'
                                   1138 ;pdt                       Allocated with name '_FormatDate_PARM_2'
                                   1139 ;buffer                    Allocated with name '_FormatDate_buffer_65536_25'
                                   1140 ;------------------------------------------------------------
                                   1141 ;	../Common/DateTime.c:67: void FormatDate(char *buffer, DateTimeStruct *pdt)
                                   1142 ;	-----------------------------------------
                                   1143 ;	 function FormatDate
                                   1144 ;	-----------------------------------------
      003440                       1145 _FormatDate:
      003440 AF F0            [24] 1146 	mov	r7,b
      003442 AE 83            [24] 1147 	mov	r6,dph
      003444 E5 82            [12] 1148 	mov	a,dpl
      003446 90 02 A2         [24] 1149 	mov	dptr,#_FormatDate_buffer_65536_25
      003449 F0               [24] 1150 	movx	@dptr,a
      00344A EE               [12] 1151 	mov	a,r6
      00344B A3               [24] 1152 	inc	dptr
      00344C F0               [24] 1153 	movx	@dptr,a
      00344D EF               [12] 1154 	mov	a,r7
      00344E A3               [24] 1155 	inc	dptr
      00344F F0               [24] 1156 	movx	@dptr,a
                                   1157 ;	../Common/DateTime.c:69: buffer[0] = (pdt->day / 10) + '0';
      003450 90 02 A2         [24] 1158 	mov	dptr,#_FormatDate_buffer_65536_25
      003453 E0               [24] 1159 	movx	a,@dptr
      003454 FD               [12] 1160 	mov	r5,a
      003455 A3               [24] 1161 	inc	dptr
      003456 E0               [24] 1162 	movx	a,@dptr
      003457 FE               [12] 1163 	mov	r6,a
      003458 A3               [24] 1164 	inc	dptr
      003459 E0               [24] 1165 	movx	a,@dptr
      00345A FF               [12] 1166 	mov	r7,a
      00345B 90 02 9F         [24] 1167 	mov	dptr,#_FormatDate_PARM_2
      00345E E0               [24] 1168 	movx	a,@dptr
      00345F F5 35            [12] 1169 	mov	_FormatDate_sloc0_1_0,a
      003461 A3               [24] 1170 	inc	dptr
      003462 E0               [24] 1171 	movx	a,@dptr
      003463 F5 36            [12] 1172 	mov	(_FormatDate_sloc0_1_0 + 1),a
      003465 A3               [24] 1173 	inc	dptr
      003466 E0               [24] 1174 	movx	a,@dptr
      003467 F5 37            [12] 1175 	mov	(_FormatDate_sloc0_1_0 + 2),a
      003469 74 04            [12] 1176 	mov	a,#0x04
      00346B 25 35            [12] 1177 	add	a,_FormatDate_sloc0_1_0
      00346D F5 38            [12] 1178 	mov	_FormatDate_sloc1_1_0,a
      00346F E4               [12] 1179 	clr	a
      003470 35 36            [12] 1180 	addc	a,(_FormatDate_sloc0_1_0 + 1)
      003472 F5 39            [12] 1181 	mov	(_FormatDate_sloc1_1_0 + 1),a
      003474 85 37 3A         [24] 1182 	mov	(_FormatDate_sloc1_1_0 + 2),(_FormatDate_sloc0_1_0 + 2)
      003477 85 38 82         [24] 1183 	mov	dpl,_FormatDate_sloc1_1_0
      00347A 85 39 83         [24] 1184 	mov	dph,(_FormatDate_sloc1_1_0 + 1)
      00347D 85 3A F0         [24] 1185 	mov	b,(_FormatDate_sloc1_1_0 + 2)
      003480 12 3D E8         [24] 1186 	lcall	__gptrget
      003483 FB               [12] 1187 	mov	r3,a
      003484 7A 00            [12] 1188 	mov	r2,#0x00
      003486 90 02 C8         [24] 1189 	mov	dptr,#__divsint_PARM_2
      003489 74 0A            [12] 1190 	mov	a,#0x0a
      00348B F0               [24] 1191 	movx	@dptr,a
      00348C E4               [12] 1192 	clr	a
      00348D A3               [24] 1193 	inc	dptr
      00348E F0               [24] 1194 	movx	@dptr,a
      00348F 8B 82            [24] 1195 	mov	dpl,r3
      003491 8A 83            [24] 1196 	mov	dph,r2
      003493 C0 07            [24] 1197 	push	ar7
      003495 C0 06            [24] 1198 	push	ar6
      003497 C0 05            [24] 1199 	push	ar5
      003499 12 3D 76         [24] 1200 	lcall	__divsint
      00349C AA 82            [24] 1201 	mov	r2,dpl
      00349E D0 05            [24] 1202 	pop	ar5
      0034A0 D0 06            [24] 1203 	pop	ar6
      0034A2 D0 07            [24] 1204 	pop	ar7
      0034A4 74 30            [12] 1205 	mov	a,#0x30
      0034A6 2A               [12] 1206 	add	a,r2
      0034A7 8D 82            [24] 1207 	mov	dpl,r5
      0034A9 8E 83            [24] 1208 	mov	dph,r6
      0034AB 8F F0            [24] 1209 	mov	b,r7
      0034AD 12 3C 27         [24] 1210 	lcall	__gptrput
                                   1211 ;	../Common/DateTime.c:70: buffer[1] = (pdt->day % 10) + '0';
      0034B0 74 01            [12] 1212 	mov	a,#0x01
      0034B2 2D               [12] 1213 	add	a,r5
      0034B3 FA               [12] 1214 	mov	r2,a
      0034B4 E4               [12] 1215 	clr	a
      0034B5 3E               [12] 1216 	addc	a,r6
      0034B6 FB               [12] 1217 	mov	r3,a
      0034B7 8F 04            [24] 1218 	mov	ar4,r7
      0034B9 85 38 82         [24] 1219 	mov	dpl,_FormatDate_sloc1_1_0
      0034BC 85 39 83         [24] 1220 	mov	dph,(_FormatDate_sloc1_1_0 + 1)
      0034BF 85 3A F0         [24] 1221 	mov	b,(_FormatDate_sloc1_1_0 + 2)
      0034C2 12 3D E8         [24] 1222 	lcall	__gptrget
      0034C5 F8               [12] 1223 	mov	r0,a
      0034C6 79 00            [12] 1224 	mov	r1,#0x00
      0034C8 90 02 BF         [24] 1225 	mov	dptr,#__modsint_PARM_2
      0034CB 74 0A            [12] 1226 	mov	a,#0x0a
      0034CD F0               [24] 1227 	movx	@dptr,a
      0034CE E4               [12] 1228 	clr	a
      0034CF A3               [24] 1229 	inc	dptr
      0034D0 F0               [24] 1230 	movx	@dptr,a
      0034D1 88 82            [24] 1231 	mov	dpl,r0
      0034D3 89 83            [24] 1232 	mov	dph,r1
      0034D5 C0 07            [24] 1233 	push	ar7
      0034D7 C0 06            [24] 1234 	push	ar6
      0034D9 C0 05            [24] 1235 	push	ar5
      0034DB C0 04            [24] 1236 	push	ar4
      0034DD C0 03            [24] 1237 	push	ar3
      0034DF C0 02            [24] 1238 	push	ar2
      0034E1 12 3C 62         [24] 1239 	lcall	__modsint
      0034E4 A8 82            [24] 1240 	mov	r0,dpl
      0034E6 D0 02            [24] 1241 	pop	ar2
      0034E8 D0 03            [24] 1242 	pop	ar3
      0034EA D0 04            [24] 1243 	pop	ar4
      0034EC D0 05            [24] 1244 	pop	ar5
      0034EE D0 06            [24] 1245 	pop	ar6
      0034F0 D0 07            [24] 1246 	pop	ar7
      0034F2 74 30            [12] 1247 	mov	a,#0x30
      0034F4 28               [12] 1248 	add	a,r0
      0034F5 8A 82            [24] 1249 	mov	dpl,r2
      0034F7 8B 83            [24] 1250 	mov	dph,r3
      0034F9 8C F0            [24] 1251 	mov	b,r4
      0034FB 12 3C 27         [24] 1252 	lcall	__gptrput
                                   1253 ;	../Common/DateTime.c:71: buffer[2] = '/';
      0034FE 74 02            [12] 1254 	mov	a,#0x02
      003500 2D               [12] 1255 	add	a,r5
      003501 FA               [12] 1256 	mov	r2,a
      003502 E4               [12] 1257 	clr	a
      003503 3E               [12] 1258 	addc	a,r6
      003504 FB               [12] 1259 	mov	r3,a
      003505 8F 04            [24] 1260 	mov	ar4,r7
      003507 8A 82            [24] 1261 	mov	dpl,r2
      003509 8B 83            [24] 1262 	mov	dph,r3
      00350B 8C F0            [24] 1263 	mov	b,r4
      00350D 74 2F            [12] 1264 	mov	a,#0x2f
      00350F 12 3C 27         [24] 1265 	lcall	__gptrput
                                   1266 ;	../Common/DateTime.c:72: buffer[3] = (pdt->month / 10) + '0';
      003512 74 03            [12] 1267 	mov	a,#0x03
      003514 2D               [12] 1268 	add	a,r5
      003515 F5 38            [12] 1269 	mov	_FormatDate_sloc1_1_0,a
      003517 E4               [12] 1270 	clr	a
      003518 3E               [12] 1271 	addc	a,r6
      003519 F5 39            [12] 1272 	mov	(_FormatDate_sloc1_1_0 + 1),a
      00351B 8F 3A            [24] 1273 	mov	(_FormatDate_sloc1_1_0 + 2),r7
      00351D 74 05            [12] 1274 	mov	a,#0x05
      00351F 25 35            [12] 1275 	add	a,_FormatDate_sloc0_1_0
      003521 F5 3B            [12] 1276 	mov	_FormatDate_sloc2_1_0,a
      003523 E4               [12] 1277 	clr	a
      003524 35 36            [12] 1278 	addc	a,(_FormatDate_sloc0_1_0 + 1)
      003526 F5 3C            [12] 1279 	mov	(_FormatDate_sloc2_1_0 + 1),a
      003528 85 37 3D         [24] 1280 	mov	(_FormatDate_sloc2_1_0 + 2),(_FormatDate_sloc0_1_0 + 2)
      00352B 85 3B 82         [24] 1281 	mov	dpl,_FormatDate_sloc2_1_0
      00352E 85 3C 83         [24] 1282 	mov	dph,(_FormatDate_sloc2_1_0 + 1)
      003531 85 3D F0         [24] 1283 	mov	b,(_FormatDate_sloc2_1_0 + 2)
      003534 12 3D E8         [24] 1284 	lcall	__gptrget
      003537 FB               [12] 1285 	mov	r3,a
      003538 7A 00            [12] 1286 	mov	r2,#0x00
      00353A 90 02 C8         [24] 1287 	mov	dptr,#__divsint_PARM_2
      00353D 74 0A            [12] 1288 	mov	a,#0x0a
      00353F F0               [24] 1289 	movx	@dptr,a
      003540 E4               [12] 1290 	clr	a
      003541 A3               [24] 1291 	inc	dptr
      003542 F0               [24] 1292 	movx	@dptr,a
      003543 8B 82            [24] 1293 	mov	dpl,r3
      003545 8A 83            [24] 1294 	mov	dph,r2
      003547 C0 07            [24] 1295 	push	ar7
      003549 C0 06            [24] 1296 	push	ar6
      00354B C0 05            [24] 1297 	push	ar5
      00354D 12 3D 76         [24] 1298 	lcall	__divsint
      003550 AA 82            [24] 1299 	mov	r2,dpl
      003552 D0 05            [24] 1300 	pop	ar5
      003554 D0 06            [24] 1301 	pop	ar6
      003556 D0 07            [24] 1302 	pop	ar7
      003558 74 30            [12] 1303 	mov	a,#0x30
      00355A 2A               [12] 1304 	add	a,r2
      00355B 85 38 82         [24] 1305 	mov	dpl,_FormatDate_sloc1_1_0
      00355E 85 39 83         [24] 1306 	mov	dph,(_FormatDate_sloc1_1_0 + 1)
      003561 85 3A F0         [24] 1307 	mov	b,(_FormatDate_sloc1_1_0 + 2)
      003564 12 3C 27         [24] 1308 	lcall	__gptrput
                                   1309 ;	../Common/DateTime.c:73: buffer[4] = (pdt->month % 10) + '0';
      003567 74 04            [12] 1310 	mov	a,#0x04
      003569 2D               [12] 1311 	add	a,r5
      00356A FA               [12] 1312 	mov	r2,a
      00356B E4               [12] 1313 	clr	a
      00356C 3E               [12] 1314 	addc	a,r6
      00356D FB               [12] 1315 	mov	r3,a
      00356E 8F 04            [24] 1316 	mov	ar4,r7
      003570 85 3B 82         [24] 1317 	mov	dpl,_FormatDate_sloc2_1_0
      003573 85 3C 83         [24] 1318 	mov	dph,(_FormatDate_sloc2_1_0 + 1)
      003576 85 3D F0         [24] 1319 	mov	b,(_FormatDate_sloc2_1_0 + 2)
      003579 12 3D E8         [24] 1320 	lcall	__gptrget
      00357C F8               [12] 1321 	mov	r0,a
      00357D 79 00            [12] 1322 	mov	r1,#0x00
      00357F 90 02 BF         [24] 1323 	mov	dptr,#__modsint_PARM_2
      003582 74 0A            [12] 1324 	mov	a,#0x0a
      003584 F0               [24] 1325 	movx	@dptr,a
      003585 E4               [12] 1326 	clr	a
      003586 A3               [24] 1327 	inc	dptr
      003587 F0               [24] 1328 	movx	@dptr,a
      003588 88 82            [24] 1329 	mov	dpl,r0
      00358A 89 83            [24] 1330 	mov	dph,r1
      00358C C0 07            [24] 1331 	push	ar7
      00358E C0 06            [24] 1332 	push	ar6
      003590 C0 05            [24] 1333 	push	ar5
      003592 C0 04            [24] 1334 	push	ar4
      003594 C0 03            [24] 1335 	push	ar3
      003596 C0 02            [24] 1336 	push	ar2
      003598 12 3C 62         [24] 1337 	lcall	__modsint
      00359B A8 82            [24] 1338 	mov	r0,dpl
      00359D D0 02            [24] 1339 	pop	ar2
      00359F D0 03            [24] 1340 	pop	ar3
      0035A1 D0 04            [24] 1341 	pop	ar4
      0035A3 D0 05            [24] 1342 	pop	ar5
      0035A5 D0 06            [24] 1343 	pop	ar6
      0035A7 D0 07            [24] 1344 	pop	ar7
      0035A9 74 30            [12] 1345 	mov	a,#0x30
      0035AB 28               [12] 1346 	add	a,r0
      0035AC 8A 82            [24] 1347 	mov	dpl,r2
      0035AE 8B 83            [24] 1348 	mov	dph,r3
      0035B0 8C F0            [24] 1349 	mov	b,r4
      0035B2 12 3C 27         [24] 1350 	lcall	__gptrput
                                   1351 ;	../Common/DateTime.c:74: buffer[5] = '/';
      0035B5 74 05            [12] 1352 	mov	a,#0x05
      0035B7 2D               [12] 1353 	add	a,r5
      0035B8 FA               [12] 1354 	mov	r2,a
      0035B9 E4               [12] 1355 	clr	a
      0035BA 3E               [12] 1356 	addc	a,r6
      0035BB FB               [12] 1357 	mov	r3,a
      0035BC 8F 04            [24] 1358 	mov	ar4,r7
      0035BE 8A 82            [24] 1359 	mov	dpl,r2
      0035C0 8B 83            [24] 1360 	mov	dph,r3
      0035C2 8C F0            [24] 1361 	mov	b,r4
      0035C4 74 2F            [12] 1362 	mov	a,#0x2f
      0035C6 12 3C 27         [24] 1363 	lcall	__gptrput
                                   1364 ;	../Common/DateTime.c:75: buffer[6] = (pdt->year / 10) + '0';
      0035C9 74 06            [12] 1365 	mov	a,#0x06
      0035CB 2D               [12] 1366 	add	a,r5
      0035CC F5 3B            [12] 1367 	mov	_FormatDate_sloc2_1_0,a
      0035CE E4               [12] 1368 	clr	a
      0035CF 3E               [12] 1369 	addc	a,r6
      0035D0 F5 3C            [12] 1370 	mov	(_FormatDate_sloc2_1_0 + 1),a
      0035D2 8F 3D            [24] 1371 	mov	(_FormatDate_sloc2_1_0 + 2),r7
      0035D4 74 06            [12] 1372 	mov	a,#0x06
      0035D6 25 35            [12] 1373 	add	a,_FormatDate_sloc0_1_0
      0035D8 F5 38            [12] 1374 	mov	_FormatDate_sloc1_1_0,a
      0035DA E4               [12] 1375 	clr	a
      0035DB 35 36            [12] 1376 	addc	a,(_FormatDate_sloc0_1_0 + 1)
      0035DD F5 39            [12] 1377 	mov	(_FormatDate_sloc1_1_0 + 1),a
      0035DF 85 37 3A         [24] 1378 	mov	(_FormatDate_sloc1_1_0 + 2),(_FormatDate_sloc0_1_0 + 2)
      0035E2 85 38 82         [24] 1379 	mov	dpl,_FormatDate_sloc1_1_0
      0035E5 85 39 83         [24] 1380 	mov	dph,(_FormatDate_sloc1_1_0 + 1)
      0035E8 85 3A F0         [24] 1381 	mov	b,(_FormatDate_sloc1_1_0 + 2)
      0035EB 12 3D E8         [24] 1382 	lcall	__gptrget
      0035EE FB               [12] 1383 	mov	r3,a
      0035EF 7A 00            [12] 1384 	mov	r2,#0x00
      0035F1 90 02 C8         [24] 1385 	mov	dptr,#__divsint_PARM_2
      0035F4 74 0A            [12] 1386 	mov	a,#0x0a
      0035F6 F0               [24] 1387 	movx	@dptr,a
      0035F7 E4               [12] 1388 	clr	a
      0035F8 A3               [24] 1389 	inc	dptr
      0035F9 F0               [24] 1390 	movx	@dptr,a
      0035FA 8B 82            [24] 1391 	mov	dpl,r3
      0035FC 8A 83            [24] 1392 	mov	dph,r2
      0035FE C0 07            [24] 1393 	push	ar7
      003600 C0 06            [24] 1394 	push	ar6
      003602 C0 05            [24] 1395 	push	ar5
      003604 12 3D 76         [24] 1396 	lcall	__divsint
      003607 AA 82            [24] 1397 	mov	r2,dpl
      003609 D0 05            [24] 1398 	pop	ar5
      00360B D0 06            [24] 1399 	pop	ar6
      00360D D0 07            [24] 1400 	pop	ar7
      00360F 74 30            [12] 1401 	mov	a,#0x30
      003611 2A               [12] 1402 	add	a,r2
      003612 85 3B 82         [24] 1403 	mov	dpl,_FormatDate_sloc2_1_0
      003615 85 3C 83         [24] 1404 	mov	dph,(_FormatDate_sloc2_1_0 + 1)
      003618 85 3D F0         [24] 1405 	mov	b,(_FormatDate_sloc2_1_0 + 2)
      00361B 12 3C 27         [24] 1406 	lcall	__gptrput
                                   1407 ;	../Common/DateTime.c:76: buffer[7] = (pdt->year % 10) + '0';
      00361E 74 07            [12] 1408 	mov	a,#0x07
      003620 2D               [12] 1409 	add	a,r5
      003621 FA               [12] 1410 	mov	r2,a
      003622 E4               [12] 1411 	clr	a
      003623 3E               [12] 1412 	addc	a,r6
      003624 FB               [12] 1413 	mov	r3,a
      003625 8F 04            [24] 1414 	mov	ar4,r7
      003627 85 38 82         [24] 1415 	mov	dpl,_FormatDate_sloc1_1_0
      00362A 85 39 83         [24] 1416 	mov	dph,(_FormatDate_sloc1_1_0 + 1)
      00362D 85 3A F0         [24] 1417 	mov	b,(_FormatDate_sloc1_1_0 + 2)
      003630 12 3D E8         [24] 1418 	lcall	__gptrget
      003633 F8               [12] 1419 	mov	r0,a
      003634 79 00            [12] 1420 	mov	r1,#0x00
      003636 90 02 BF         [24] 1421 	mov	dptr,#__modsint_PARM_2
      003639 74 0A            [12] 1422 	mov	a,#0x0a
      00363B F0               [24] 1423 	movx	@dptr,a
      00363C E4               [12] 1424 	clr	a
      00363D A3               [24] 1425 	inc	dptr
      00363E F0               [24] 1426 	movx	@dptr,a
      00363F 88 82            [24] 1427 	mov	dpl,r0
      003641 89 83            [24] 1428 	mov	dph,r1
      003643 C0 07            [24] 1429 	push	ar7
      003645 C0 06            [24] 1430 	push	ar6
      003647 C0 05            [24] 1431 	push	ar5
      003649 C0 04            [24] 1432 	push	ar4
      00364B C0 03            [24] 1433 	push	ar3
      00364D C0 02            [24] 1434 	push	ar2
      00364F 12 3C 62         [24] 1435 	lcall	__modsint
      003652 A8 82            [24] 1436 	mov	r0,dpl
      003654 D0 02            [24] 1437 	pop	ar2
      003656 D0 03            [24] 1438 	pop	ar3
      003658 D0 04            [24] 1439 	pop	ar4
      00365A D0 05            [24] 1440 	pop	ar5
      00365C D0 06            [24] 1441 	pop	ar6
      00365E D0 07            [24] 1442 	pop	ar7
      003660 74 30            [12] 1443 	mov	a,#0x30
      003662 28               [12] 1444 	add	a,r0
      003663 8A 82            [24] 1445 	mov	dpl,r2
      003665 8B 83            [24] 1446 	mov	dph,r3
      003667 8C F0            [24] 1447 	mov	b,r4
      003669 12 3C 27         [24] 1448 	lcall	__gptrput
                                   1449 ;	../Common/DateTime.c:77: buffer[8] = 0;
      00366C 74 08            [12] 1450 	mov	a,#0x08
      00366E 2D               [12] 1451 	add	a,r5
      00366F FD               [12] 1452 	mov	r5,a
      003670 E4               [12] 1453 	clr	a
      003671 3E               [12] 1454 	addc	a,r6
      003672 FE               [12] 1455 	mov	r6,a
      003673 8D 82            [24] 1456 	mov	dpl,r5
      003675 8E 83            [24] 1457 	mov	dph,r6
      003677 8F F0            [24] 1458 	mov	b,r7
      003679 E4               [12] 1459 	clr	a
                                   1460 ;	../Common/DateTime.c:78: }
      00367A 02 3C 27         [24] 1461 	ljmp	__gptrput
                                   1462 ;------------------------------------------------------------
                                   1463 ;Allocation info for local variables in function 'AddSecondsToDateTime'
                                   1464 ;------------------------------------------------------------
                                   1465 ;sloc0                     Allocated with name '_AddSecondsToDateTime_sloc0_1_0'
                                   1466 ;sloc1                     Allocated with name '_AddSecondsToDateTime_sloc1_1_0'
                                   1467 ;sloc2                     Allocated with name '_AddSecondsToDateTime_sloc2_1_0'
                                   1468 ;sloc3                     Allocated with name '_AddSecondsToDateTime_sloc3_1_0'
                                   1469 ;sloc4                     Allocated with name '_AddSecondsToDateTime_sloc4_1_0'
                                   1470 ;seconds                   Allocated with name '_AddSecondsToDateTime_PARM_2'
                                   1471 ;result                    Allocated with name '_AddSecondsToDateTime_PARM_3'
                                   1472 ;pdt                       Allocated with name '_AddSecondsToDateTime_pdt_65536_27'
                                   1473 ;secondsLeft               Allocated with name '_AddSecondsToDateTime_secondsLeft_65536_28'
                                   1474 ;secondsAdded              Allocated with name '_AddSecondsToDateTime_secondsAdded_65536_28'
                                   1475 ;secondsToNextMinute       Allocated with name '_AddSecondsToDateTime_secondsToNextMinute_65536_28'
                                   1476 ;numDays                   Allocated with name '_AddSecondsToDateTime_numDays_65536_28'
                                   1477 ;------------------------------------------------------------
                                   1478 ;	../Common/DateTime.c:81: void AddSecondsToDateTime(DateTimeStruct* pdt, int seconds, DateTimeStruct* result)
                                   1479 ;	-----------------------------------------
                                   1480 ;	 function AddSecondsToDateTime
                                   1481 ;	-----------------------------------------
      00367D                       1482 _AddSecondsToDateTime:
      00367D AF F0            [24] 1483 	mov	r7,b
      00367F AE 83            [24] 1484 	mov	r6,dph
      003681 E5 82            [12] 1485 	mov	a,dpl
      003683 90 02 AA         [24] 1486 	mov	dptr,#_AddSecondsToDateTime_pdt_65536_27
      003686 F0               [24] 1487 	movx	@dptr,a
      003687 EE               [12] 1488 	mov	a,r6
      003688 A3               [24] 1489 	inc	dptr
      003689 F0               [24] 1490 	movx	@dptr,a
      00368A EF               [12] 1491 	mov	a,r7
      00368B A3               [24] 1492 	inc	dptr
      00368C F0               [24] 1493 	movx	@dptr,a
                                   1494 ;	../Common/DateTime.c:86: result->day = pdt->day;
      00368D 90 02 A7         [24] 1495 	mov	dptr,#_AddSecondsToDateTime_PARM_3
      003690 E0               [24] 1496 	movx	a,@dptr
      003691 FD               [12] 1497 	mov	r5,a
      003692 A3               [24] 1498 	inc	dptr
      003693 E0               [24] 1499 	movx	a,@dptr
      003694 FE               [12] 1500 	mov	r6,a
      003695 A3               [24] 1501 	inc	dptr
      003696 E0               [24] 1502 	movx	a,@dptr
      003697 FF               [12] 1503 	mov	r7,a
      003698 74 04            [12] 1504 	mov	a,#0x04
      00369A 2D               [12] 1505 	add	a,r5
      00369B F5 3E            [12] 1506 	mov	_AddSecondsToDateTime_sloc0_1_0,a
      00369D E4               [12] 1507 	clr	a
      00369E 3E               [12] 1508 	addc	a,r6
      00369F F5 3F            [12] 1509 	mov	(_AddSecondsToDateTime_sloc0_1_0 + 1),a
      0036A1 8F 40            [24] 1510 	mov	(_AddSecondsToDateTime_sloc0_1_0 + 2),r7
      0036A3 90 02 AA         [24] 1511 	mov	dptr,#_AddSecondsToDateTime_pdt_65536_27
      0036A6 E0               [24] 1512 	movx	a,@dptr
      0036A7 F5 41            [12] 1513 	mov	_AddSecondsToDateTime_sloc1_1_0,a
      0036A9 A3               [24] 1514 	inc	dptr
      0036AA E0               [24] 1515 	movx	a,@dptr
      0036AB F5 42            [12] 1516 	mov	(_AddSecondsToDateTime_sloc1_1_0 + 1),a
      0036AD A3               [24] 1517 	inc	dptr
      0036AE E0               [24] 1518 	movx	a,@dptr
      0036AF F5 43            [12] 1519 	mov	(_AddSecondsToDateTime_sloc1_1_0 + 2),a
      0036B1 74 04            [12] 1520 	mov	a,#0x04
      0036B3 25 41            [12] 1521 	add	a,_AddSecondsToDateTime_sloc1_1_0
      0036B5 FA               [12] 1522 	mov	r2,a
      0036B6 E4               [12] 1523 	clr	a
      0036B7 35 42            [12] 1524 	addc	a,(_AddSecondsToDateTime_sloc1_1_0 + 1)
      0036B9 FB               [12] 1525 	mov	r3,a
      0036BA AC 43            [24] 1526 	mov	r4,(_AddSecondsToDateTime_sloc1_1_0 + 2)
      0036BC 8A 82            [24] 1527 	mov	dpl,r2
      0036BE 8B 83            [24] 1528 	mov	dph,r3
      0036C0 8C F0            [24] 1529 	mov	b,r4
      0036C2 12 3D E8         [24] 1530 	lcall	__gptrget
      0036C5 85 3E 82         [24] 1531 	mov	dpl,_AddSecondsToDateTime_sloc0_1_0
      0036C8 85 3F 83         [24] 1532 	mov	dph,(_AddSecondsToDateTime_sloc0_1_0 + 1)
      0036CB 85 40 F0         [24] 1533 	mov	b,(_AddSecondsToDateTime_sloc0_1_0 + 2)
      0036CE 12 3C 27         [24] 1534 	lcall	__gptrput
                                   1535 ;	../Common/DateTime.c:87: result->dayOfWeek = pdt->dayOfWeek;
      0036D1 74 03            [12] 1536 	mov	a,#0x03
      0036D3 2D               [12] 1537 	add	a,r5
      0036D4 F5 44            [12] 1538 	mov	_AddSecondsToDateTime_sloc2_1_0,a
      0036D6 E4               [12] 1539 	clr	a
      0036D7 3E               [12] 1540 	addc	a,r6
      0036D8 F5 45            [12] 1541 	mov	(_AddSecondsToDateTime_sloc2_1_0 + 1),a
      0036DA 8F 46            [24] 1542 	mov	(_AddSecondsToDateTime_sloc2_1_0 + 2),r7
      0036DC 74 03            [12] 1543 	mov	a,#0x03
      0036DE 25 41            [12] 1544 	add	a,_AddSecondsToDateTime_sloc1_1_0
      0036E0 F8               [12] 1545 	mov	r0,a
      0036E1 E4               [12] 1546 	clr	a
      0036E2 35 42            [12] 1547 	addc	a,(_AddSecondsToDateTime_sloc1_1_0 + 1)
      0036E4 F9               [12] 1548 	mov	r1,a
      0036E5 AC 43            [24] 1549 	mov	r4,(_AddSecondsToDateTime_sloc1_1_0 + 2)
      0036E7 88 82            [24] 1550 	mov	dpl,r0
      0036E9 89 83            [24] 1551 	mov	dph,r1
      0036EB 8C F0            [24] 1552 	mov	b,r4
      0036ED 12 3D E8         [24] 1553 	lcall	__gptrget
      0036F0 85 44 82         [24] 1554 	mov	dpl,_AddSecondsToDateTime_sloc2_1_0
      0036F3 85 45 83         [24] 1555 	mov	dph,(_AddSecondsToDateTime_sloc2_1_0 + 1)
      0036F6 85 46 F0         [24] 1556 	mov	b,(_AddSecondsToDateTime_sloc2_1_0 + 2)
      0036F9 12 3C 27         [24] 1557 	lcall	__gptrput
                                   1558 ;	../Common/DateTime.c:88: result->hours = pdt->hours;
      0036FC 74 02            [12] 1559 	mov	a,#0x02
      0036FE 2D               [12] 1560 	add	a,r5
      0036FF F5 44            [12] 1561 	mov	_AddSecondsToDateTime_sloc2_1_0,a
      003701 E4               [12] 1562 	clr	a
      003702 3E               [12] 1563 	addc	a,r6
      003703 F5 45            [12] 1564 	mov	(_AddSecondsToDateTime_sloc2_1_0 + 1),a
      003705 8F 46            [24] 1565 	mov	(_AddSecondsToDateTime_sloc2_1_0 + 2),r7
      003707 74 02            [12] 1566 	mov	a,#0x02
      003709 25 41            [12] 1567 	add	a,_AddSecondsToDateTime_sloc1_1_0
      00370B F8               [12] 1568 	mov	r0,a
      00370C E4               [12] 1569 	clr	a
      00370D 35 42            [12] 1570 	addc	a,(_AddSecondsToDateTime_sloc1_1_0 + 1)
      00370F F9               [12] 1571 	mov	r1,a
      003710 AC 43            [24] 1572 	mov	r4,(_AddSecondsToDateTime_sloc1_1_0 + 2)
      003712 88 82            [24] 1573 	mov	dpl,r0
      003714 89 83            [24] 1574 	mov	dph,r1
      003716 8C F0            [24] 1575 	mov	b,r4
      003718 12 3D E8         [24] 1576 	lcall	__gptrget
      00371B 85 44 82         [24] 1577 	mov	dpl,_AddSecondsToDateTime_sloc2_1_0
      00371E 85 45 83         [24] 1578 	mov	dph,(_AddSecondsToDateTime_sloc2_1_0 + 1)
      003721 85 46 F0         [24] 1579 	mov	b,(_AddSecondsToDateTime_sloc2_1_0 + 2)
      003724 12 3C 27         [24] 1580 	lcall	__gptrput
                                   1581 ;	../Common/DateTime.c:89: result->minutes = pdt->minutes;
      003727 74 01            [12] 1582 	mov	a,#0x01
      003729 2D               [12] 1583 	add	a,r5
      00372A F5 47            [12] 1584 	mov	_AddSecondsToDateTime_sloc3_1_0,a
      00372C E4               [12] 1585 	clr	a
      00372D 3E               [12] 1586 	addc	a,r6
      00372E F5 48            [12] 1587 	mov	(_AddSecondsToDateTime_sloc3_1_0 + 1),a
      003730 8F 49            [24] 1588 	mov	(_AddSecondsToDateTime_sloc3_1_0 + 2),r7
      003732 74 01            [12] 1589 	mov	a,#0x01
      003734 25 41            [12] 1590 	add	a,_AddSecondsToDateTime_sloc1_1_0
      003736 F8               [12] 1591 	mov	r0,a
      003737 E4               [12] 1592 	clr	a
      003738 35 42            [12] 1593 	addc	a,(_AddSecondsToDateTime_sloc1_1_0 + 1)
      00373A F9               [12] 1594 	mov	r1,a
      00373B AC 43            [24] 1595 	mov	r4,(_AddSecondsToDateTime_sloc1_1_0 + 2)
      00373D 88 82            [24] 1596 	mov	dpl,r0
      00373F 89 83            [24] 1597 	mov	dph,r1
      003741 8C F0            [24] 1598 	mov	b,r4
      003743 12 3D E8         [24] 1599 	lcall	__gptrget
      003746 85 47 82         [24] 1600 	mov	dpl,_AddSecondsToDateTime_sloc3_1_0
      003749 85 48 83         [24] 1601 	mov	dph,(_AddSecondsToDateTime_sloc3_1_0 + 1)
      00374C 85 49 F0         [24] 1602 	mov	b,(_AddSecondsToDateTime_sloc3_1_0 + 2)
      00374F 12 3C 27         [24] 1603 	lcall	__gptrput
                                   1604 ;	../Common/DateTime.c:90: result->month = pdt->month;
      003752 74 05            [12] 1605 	mov	a,#0x05
      003754 2D               [12] 1606 	add	a,r5
      003755 F5 4A            [12] 1607 	mov	_AddSecondsToDateTime_sloc4_1_0,a
      003757 E4               [12] 1608 	clr	a
      003758 3E               [12] 1609 	addc	a,r6
      003759 F5 4B            [12] 1610 	mov	(_AddSecondsToDateTime_sloc4_1_0 + 1),a
      00375B 8F 4C            [24] 1611 	mov	(_AddSecondsToDateTime_sloc4_1_0 + 2),r7
      00375D 74 05            [12] 1612 	mov	a,#0x05
      00375F 25 41            [12] 1613 	add	a,_AddSecondsToDateTime_sloc1_1_0
      003761 F8               [12] 1614 	mov	r0,a
      003762 E4               [12] 1615 	clr	a
      003763 35 42            [12] 1616 	addc	a,(_AddSecondsToDateTime_sloc1_1_0 + 1)
      003765 F9               [12] 1617 	mov	r1,a
      003766 AC 43            [24] 1618 	mov	r4,(_AddSecondsToDateTime_sloc1_1_0 + 2)
      003768 88 82            [24] 1619 	mov	dpl,r0
      00376A 89 83            [24] 1620 	mov	dph,r1
      00376C 8C F0            [24] 1621 	mov	b,r4
      00376E 12 3D E8         [24] 1622 	lcall	__gptrget
      003771 85 4A 82         [24] 1623 	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
      003774 85 4B 83         [24] 1624 	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
      003777 85 4C F0         [24] 1625 	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
      00377A 12 3C 27         [24] 1626 	lcall	__gptrput
                                   1627 ;	../Common/DateTime.c:91: result->seconds = pdt->seconds;
      00377D 85 41 82         [24] 1628 	mov	dpl,_AddSecondsToDateTime_sloc1_1_0
      003780 85 42 83         [24] 1629 	mov	dph,(_AddSecondsToDateTime_sloc1_1_0 + 1)
      003783 85 43 F0         [24] 1630 	mov	b,(_AddSecondsToDateTime_sloc1_1_0 + 2)
      003786 12 3D E8         [24] 1631 	lcall	__gptrget
      003789 8D 82            [24] 1632 	mov	dpl,r5
      00378B 8E 83            [24] 1633 	mov	dph,r6
      00378D 8F F0            [24] 1634 	mov	b,r7
      00378F 12 3C 27         [24] 1635 	lcall	__gptrput
                                   1636 ;	../Common/DateTime.c:92: result->year = pdt->year;
      003792 74 06            [12] 1637 	mov	a,#0x06
      003794 2D               [12] 1638 	add	a,r5
      003795 F5 4A            [12] 1639 	mov	_AddSecondsToDateTime_sloc4_1_0,a
      003797 E4               [12] 1640 	clr	a
      003798 3E               [12] 1641 	addc	a,r6
      003799 F5 4B            [12] 1642 	mov	(_AddSecondsToDateTime_sloc4_1_0 + 1),a
      00379B 8F 4C            [24] 1643 	mov	(_AddSecondsToDateTime_sloc4_1_0 + 2),r7
      00379D 74 06            [12] 1644 	mov	a,#0x06
      00379F 25 41            [12] 1645 	add	a,_AddSecondsToDateTime_sloc1_1_0
      0037A1 F8               [12] 1646 	mov	r0,a
      0037A2 E4               [12] 1647 	clr	a
      0037A3 35 42            [12] 1648 	addc	a,(_AddSecondsToDateTime_sloc1_1_0 + 1)
      0037A5 F9               [12] 1649 	mov	r1,a
      0037A6 AC 43            [24] 1650 	mov	r4,(_AddSecondsToDateTime_sloc1_1_0 + 2)
      0037A8 88 82            [24] 1651 	mov	dpl,r0
      0037AA 89 83            [24] 1652 	mov	dph,r1
      0037AC 8C F0            [24] 1653 	mov	b,r4
      0037AE 12 3D E8         [24] 1654 	lcall	__gptrget
      0037B1 F8               [12] 1655 	mov	r0,a
      0037B2 85 4A 82         [24] 1656 	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
      0037B5 85 4B 83         [24] 1657 	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
      0037B8 85 4C F0         [24] 1658 	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
      0037BB 12 3C 27         [24] 1659 	lcall	__gptrput
                                   1660 ;	../Common/DateTime.c:95: secondsLeft = seconds;
      0037BE 90 02 A5         [24] 1661 	mov	dptr,#_AddSecondsToDateTime_PARM_2
      0037C1 E0               [24] 1662 	movx	a,@dptr
      0037C2 FB               [12] 1663 	mov	r3,a
      0037C3 A3               [24] 1664 	inc	dptr
      0037C4 E0               [24] 1665 	movx	a,@dptr
      0037C5 FC               [12] 1666 	mov	r4,a
      0037C6 90 02 AD         [24] 1667 	mov	dptr,#_AddSecondsToDateTime_secondsLeft_65536_28
      0037C9 EB               [12] 1668 	mov	a,r3
      0037CA F0               [24] 1669 	movx	@dptr,a
      0037CB EC               [12] 1670 	mov	a,r4
      0037CC A3               [24] 1671 	inc	dptr
      0037CD F0               [24] 1672 	movx	@dptr,a
                                   1673 ;	../Common/DateTime.c:96: while (secondsLeft > 0)
      0037CE 8D 02            [24] 1674 	mov	ar2,r5
      0037D0 8E 03            [24] 1675 	mov	ar3,r6
      0037D2 8F 04            [24] 1676 	mov	ar4,r7
      0037D4                       1677 00111$:
      0037D4 90 02 AD         [24] 1678 	mov	dptr,#_AddSecondsToDateTime_secondsLeft_65536_28
      0037D7 E0               [24] 1679 	movx	a,@dptr
      0037D8 F8               [12] 1680 	mov	r0,a
      0037D9 A3               [24] 1681 	inc	dptr
      0037DA E0               [24] 1682 	movx	a,@dptr
      0037DB F9               [12] 1683 	mov	r1,a
      0037DC C3               [12] 1684 	clr	c
      0037DD E4               [12] 1685 	clr	a
      0037DE 98               [12] 1686 	subb	a,r0
      0037DF 74 80            [12] 1687 	mov	a,#(0x00 ^ 0x80)
      0037E1 89 F0            [24] 1688 	mov	b,r1
      0037E3 63 F0 80         [24] 1689 	xrl	b,#0x80
      0037E6 95 F0            [12] 1690 	subb	a,b
      0037E8 40 01            [24] 1691 	jc	00150$
      0037EA 22               [24] 1692 	ret
      0037EB                       1693 00150$:
                                   1694 ;	../Common/DateTime.c:98: secondsToNextMinute = 60 - result->seconds;
      0037EB C0 02            [24] 1695 	push	ar2
      0037ED C0 03            [24] 1696 	push	ar3
      0037EF C0 04            [24] 1697 	push	ar4
      0037F1 8D 82            [24] 1698 	mov	dpl,r5
      0037F3 8E 83            [24] 1699 	mov	dph,r6
      0037F5 8F F0            [24] 1700 	mov	b,r7
      0037F7 12 3D E8         [24] 1701 	lcall	__gptrget
      0037FA FC               [12] 1702 	mov	r4,a
      0037FB 7B 00            [12] 1703 	mov	r3,#0x00
      0037FD 74 3C            [12] 1704 	mov	a,#0x3c
      0037FF C3               [12] 1705 	clr	c
      003800 9C               [12] 1706 	subb	a,r4
      003801 F5 4A            [12] 1707 	mov	_AddSecondsToDateTime_sloc4_1_0,a
      003803 E4               [12] 1708 	clr	a
      003804 9B               [12] 1709 	subb	a,r3
      003805 F5 4B            [12] 1710 	mov	(_AddSecondsToDateTime_sloc4_1_0 + 1),a
                                   1711 ;	../Common/DateTime.c:99: secondsAdded = secondsLeft < secondsToNextMinute ? secondsLeft : secondsToNextMinute;
      003807 C3               [12] 1712 	clr	c
      003808 E8               [12] 1713 	mov	a,r0
      003809 95 4A            [12] 1714 	subb	a,_AddSecondsToDateTime_sloc4_1_0
      00380B E9               [12] 1715 	mov	a,r1
      00380C 64 80            [12] 1716 	xrl	a,#0x80
      00380E 85 4B F0         [24] 1717 	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 1)
      003811 63 F0 80         [24] 1718 	xrl	b,#0x80
      003814 95 F0            [12] 1719 	subb	a,b
      003816 D0 04            [24] 1720 	pop	ar4
      003818 D0 03            [24] 1721 	pop	ar3
      00381A D0 02            [24] 1722 	pop	ar2
      00381C 50 02            [24] 1723 	jnc	00116$
      00381E 80 04            [24] 1724 	sjmp	00117$
      003820                       1725 00116$:
      003820 A8 4A            [24] 1726 	mov	r0,_AddSecondsToDateTime_sloc4_1_0
      003822 A9 4B            [24] 1727 	mov	r1,(_AddSecondsToDateTime_sloc4_1_0 + 1)
      003824                       1728 00117$:
                                   1729 ;	../Common/DateTime.c:100: result->seconds += secondsAdded;
      003824 C0 02            [24] 1730 	push	ar2
      003826 C0 03            [24] 1731 	push	ar3
      003828 C0 04            [24] 1732 	push	ar4
      00382A 8D 82            [24] 1733 	mov	dpl,r5
      00382C 8E 83            [24] 1734 	mov	dph,r6
      00382E 8F F0            [24] 1735 	mov	b,r7
      003830 12 3D E8         [24] 1736 	lcall	__gptrget
      003833 FC               [12] 1737 	mov	r4,a
      003834 88 03            [24] 1738 	mov	ar3,r0
      003836 EB               [12] 1739 	mov	a,r3
      003837 2C               [12] 1740 	add	a,r4
      003838 8D 82            [24] 1741 	mov	dpl,r5
      00383A 8E 83            [24] 1742 	mov	dph,r6
      00383C 8F F0            [24] 1743 	mov	b,r7
      00383E 12 3C 27         [24] 1744 	lcall	__gptrput
                                   1745 ;	../Common/DateTime.c:101: secondsLeft -= secondsAdded;
      003841 90 02 AD         [24] 1746 	mov	dptr,#_AddSecondsToDateTime_secondsLeft_65536_28
      003844 E0               [24] 1747 	movx	a,@dptr
      003845 FB               [12] 1748 	mov	r3,a
      003846 A3               [24] 1749 	inc	dptr
      003847 E0               [24] 1750 	movx	a,@dptr
      003848 FC               [12] 1751 	mov	r4,a
      003849 90 02 AD         [24] 1752 	mov	dptr,#_AddSecondsToDateTime_secondsLeft_65536_28
      00384C EB               [12] 1753 	mov	a,r3
      00384D C3               [12] 1754 	clr	c
      00384E 98               [12] 1755 	subb	a,r0
      00384F F0               [24] 1756 	movx	@dptr,a
      003850 EC               [12] 1757 	mov	a,r4
      003851 99               [12] 1758 	subb	a,r1
      003852 A3               [24] 1759 	inc	dptr
      003853 F0               [24] 1760 	movx	@dptr,a
                                   1761 ;	../Common/DateTime.c:104: if (result->seconds == 60)
      003854 8D 82            [24] 1762 	mov	dpl,r5
      003856 8E 83            [24] 1763 	mov	dph,r6
      003858 8F F0            [24] 1764 	mov	b,r7
      00385A 12 3D E8         [24] 1765 	lcall	__gptrget
      00385D FC               [12] 1766 	mov	r4,a
      00385E BC 3C 02         [24] 1767 	cjne	r4,#0x3c,00152$
      003861 80 09            [24] 1768 	sjmp	00153$
      003863                       1769 00152$:
      003863 D0 04            [24] 1770 	pop	ar4
      003865 D0 03            [24] 1771 	pop	ar3
      003867 D0 02            [24] 1772 	pop	ar2
      003869 02 37 D4         [24] 1773 	ljmp	00111$
      00386C                       1774 00153$:
      00386C D0 04            [24] 1775 	pop	ar4
      00386E D0 03            [24] 1776 	pop	ar3
      003870 D0 02            [24] 1777 	pop	ar2
                                   1778 ;	../Common/DateTime.c:106: result->seconds = 0;
      003872 8D 82            [24] 1779 	mov	dpl,r5
      003874 8E 83            [24] 1780 	mov	dph,r6
      003876 8F F0            [24] 1781 	mov	b,r7
      003878 E4               [12] 1782 	clr	a
      003879 12 3C 27         [24] 1783 	lcall	__gptrput
                                   1784 ;	../Common/DateTime.c:107: result->minutes++;
      00387C 85 47 82         [24] 1785 	mov	dpl,_AddSecondsToDateTime_sloc3_1_0
      00387F 85 48 83         [24] 1786 	mov	dph,(_AddSecondsToDateTime_sloc3_1_0 + 1)
      003882 85 49 F0         [24] 1787 	mov	b,(_AddSecondsToDateTime_sloc3_1_0 + 2)
      003885 12 3D E8         [24] 1788 	lcall	__gptrget
      003888 F9               [12] 1789 	mov	r1,a
      003889 09               [12] 1790 	inc	r1
      00388A 85 47 82         [24] 1791 	mov	dpl,_AddSecondsToDateTime_sloc3_1_0
      00388D 85 48 83         [24] 1792 	mov	dph,(_AddSecondsToDateTime_sloc3_1_0 + 1)
      003890 85 49 F0         [24] 1793 	mov	b,(_AddSecondsToDateTime_sloc3_1_0 + 2)
      003893 E9               [12] 1794 	mov	a,r1
      003894 12 3C 27         [24] 1795 	lcall	__gptrput
                                   1796 ;	../Common/DateTime.c:108: if (result->minutes == 60)
      003897 B9 3C 02         [24] 1797 	cjne	r1,#0x3c,00154$
      00389A 80 03            [24] 1798 	sjmp	00155$
      00389C                       1799 00154$:
      00389C 02 37 D4         [24] 1800 	ljmp	00111$
      00389F                       1801 00155$:
                                   1802 ;	../Common/DateTime.c:110: result->minutes = 0;
      00389F 85 47 82         [24] 1803 	mov	dpl,_AddSecondsToDateTime_sloc3_1_0
      0038A2 85 48 83         [24] 1804 	mov	dph,(_AddSecondsToDateTime_sloc3_1_0 + 1)
      0038A5 85 49 F0         [24] 1805 	mov	b,(_AddSecondsToDateTime_sloc3_1_0 + 2)
      0038A8 E4               [12] 1806 	clr	a
      0038A9 12 3C 27         [24] 1807 	lcall	__gptrput
                                   1808 ;	../Common/DateTime.c:111: result->hours++;
      0038AC 85 44 82         [24] 1809 	mov	dpl,_AddSecondsToDateTime_sloc2_1_0
      0038AF 85 45 83         [24] 1810 	mov	dph,(_AddSecondsToDateTime_sloc2_1_0 + 1)
      0038B2 85 46 F0         [24] 1811 	mov	b,(_AddSecondsToDateTime_sloc2_1_0 + 2)
      0038B5 12 3D E8         [24] 1812 	lcall	__gptrget
      0038B8 F9               [12] 1813 	mov	r1,a
      0038B9 09               [12] 1814 	inc	r1
      0038BA 85 44 82         [24] 1815 	mov	dpl,_AddSecondsToDateTime_sloc2_1_0
      0038BD 85 45 83         [24] 1816 	mov	dph,(_AddSecondsToDateTime_sloc2_1_0 + 1)
      0038C0 85 46 F0         [24] 1817 	mov	b,(_AddSecondsToDateTime_sloc2_1_0 + 2)
      0038C3 E9               [12] 1818 	mov	a,r1
      0038C4 12 3C 27         [24] 1819 	lcall	__gptrput
                                   1820 ;	../Common/DateTime.c:112: if (result->hours == 24)
      0038C7 B9 18 02         [24] 1821 	cjne	r1,#0x18,00156$
      0038CA 80 03            [24] 1822 	sjmp	00157$
      0038CC                       1823 00156$:
      0038CC 02 37 D4         [24] 1824 	ljmp	00111$
      0038CF                       1825 00157$:
                                   1826 ;	../Common/DateTime.c:114: result->hours = 0;
      0038CF 85 44 82         [24] 1827 	mov	dpl,_AddSecondsToDateTime_sloc2_1_0
      0038D2 85 45 83         [24] 1828 	mov	dph,(_AddSecondsToDateTime_sloc2_1_0 + 1)
      0038D5 85 46 F0         [24] 1829 	mov	b,(_AddSecondsToDateTime_sloc2_1_0 + 2)
      0038D8 E4               [12] 1830 	clr	a
      0038D9 12 3C 27         [24] 1831 	lcall	__gptrput
                                   1832 ;	../Common/DateTime.c:115: result->day++;
      0038DC 85 3E 82         [24] 1833 	mov	dpl,_AddSecondsToDateTime_sloc0_1_0
      0038DF 85 3F 83         [24] 1834 	mov	dph,(_AddSecondsToDateTime_sloc0_1_0 + 1)
      0038E2 85 40 F0         [24] 1835 	mov	b,(_AddSecondsToDateTime_sloc0_1_0 + 2)
      0038E5 12 3D E8         [24] 1836 	lcall	__gptrget
      0038E8 F9               [12] 1837 	mov	r1,a
      0038E9 09               [12] 1838 	inc	r1
      0038EA 85 3E 82         [24] 1839 	mov	dpl,_AddSecondsToDateTime_sloc0_1_0
      0038ED 85 3F 83         [24] 1840 	mov	dph,(_AddSecondsToDateTime_sloc0_1_0 + 1)
      0038F0 85 40 F0         [24] 1841 	mov	b,(_AddSecondsToDateTime_sloc0_1_0 + 2)
      0038F3 E9               [12] 1842 	mov	a,r1
      0038F4 12 3C 27         [24] 1843 	lcall	__gptrput
                                   1844 ;	../Common/DateTime.c:116: numDays = GetNumDaysInMonth(result);
      0038F7 8D 82            [24] 1845 	mov	dpl,r5
      0038F9 8E 83            [24] 1846 	mov	dph,r6
      0038FB 8F F0            [24] 1847 	mov	b,r7
      0038FD C0 07            [24] 1848 	push	ar7
      0038FF C0 06            [24] 1849 	push	ar6
      003901 C0 05            [24] 1850 	push	ar5
      003903 C0 04            [24] 1851 	push	ar4
      003905 C0 03            [24] 1852 	push	ar3
      003907 C0 02            [24] 1853 	push	ar2
      003909 12 30 E5         [24] 1854 	lcall	_GetNumDaysInMonth
      00390C A8 82            [24] 1855 	mov	r0,dpl
      00390E A9 83            [24] 1856 	mov	r1,dph
      003910 D0 02            [24] 1857 	pop	ar2
      003912 D0 03            [24] 1858 	pop	ar3
      003914 D0 04            [24] 1859 	pop	ar4
      003916 D0 05            [24] 1860 	pop	ar5
      003918 D0 06            [24] 1861 	pop	ar6
      00391A D0 07            [24] 1862 	pop	ar7
                                   1863 ;	../Common/DateTime.c:117: if (result->day > numDays)
      00391C 74 04            [12] 1864 	mov	a,#0x04
      00391E 2A               [12] 1865 	add	a,r2
      00391F F5 4A            [12] 1866 	mov	_AddSecondsToDateTime_sloc4_1_0,a
      003921 E4               [12] 1867 	clr	a
      003922 3B               [12] 1868 	addc	a,r3
      003923 F5 4B            [12] 1869 	mov	(_AddSecondsToDateTime_sloc4_1_0 + 1),a
      003925 8C 4C            [24] 1870 	mov	(_AddSecondsToDateTime_sloc4_1_0 + 2),r4
      003927 C0 02            [24] 1871 	push	ar2
      003929 C0 03            [24] 1872 	push	ar3
      00392B C0 04            [24] 1873 	push	ar4
      00392D 85 4A 82         [24] 1874 	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
      003930 85 4B 83         [24] 1875 	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
      003933 85 4C F0         [24] 1876 	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
      003936 12 3D E8         [24] 1877 	lcall	__gptrget
      003939 FC               [12] 1878 	mov	r4,a
      00393A 7B 00            [12] 1879 	mov	r3,#0x00
      00393C C3               [12] 1880 	clr	c
      00393D E8               [12] 1881 	mov	a,r0
      00393E 9C               [12] 1882 	subb	a,r4
      00393F E9               [12] 1883 	mov	a,r1
      003940 64 80            [12] 1884 	xrl	a,#0x80
      003942 8B F0            [24] 1885 	mov	b,r3
      003944 63 F0 80         [24] 1886 	xrl	b,#0x80
      003947 95 F0            [12] 1887 	subb	a,b
      003949 D0 04            [24] 1888 	pop	ar4
      00394B D0 03            [24] 1889 	pop	ar3
      00394D D0 02            [24] 1890 	pop	ar2
      00394F 40 03            [24] 1891 	jc	00158$
      003951 02 37 D4         [24] 1892 	ljmp	00111$
      003954                       1893 00158$:
                                   1894 ;	../Common/DateTime.c:119: result->day = 1;
      003954 85 4A 82         [24] 1895 	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
      003957 85 4B 83         [24] 1896 	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
      00395A 85 4C F0         [24] 1897 	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
      00395D 74 01            [12] 1898 	mov	a,#0x01
      00395F 12 3C 27         [24] 1899 	lcall	__gptrput
                                   1900 ;	../Common/DateTime.c:120: result->month++;
      003962 74 05            [12] 1901 	mov	a,#0x05
      003964 2A               [12] 1902 	add	a,r2
      003965 F5 4A            [12] 1903 	mov	_AddSecondsToDateTime_sloc4_1_0,a
      003967 E4               [12] 1904 	clr	a
      003968 3B               [12] 1905 	addc	a,r3
      003969 F5 4B            [12] 1906 	mov	(_AddSecondsToDateTime_sloc4_1_0 + 1),a
      00396B 8C 4C            [24] 1907 	mov	(_AddSecondsToDateTime_sloc4_1_0 + 2),r4
      00396D 85 4A 82         [24] 1908 	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
      003970 85 4B 83         [24] 1909 	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
      003973 85 4C F0         [24] 1910 	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
      003976 12 3D E8         [24] 1911 	lcall	__gptrget
      003979 F9               [12] 1912 	mov	r1,a
      00397A 09               [12] 1913 	inc	r1
      00397B 85 4A 82         [24] 1914 	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
      00397E 85 4B 83         [24] 1915 	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
      003981 85 4C F0         [24] 1916 	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
      003984 E9               [12] 1917 	mov	a,r1
      003985 12 3C 27         [24] 1918 	lcall	__gptrput
                                   1919 ;	../Common/DateTime.c:121: if (result->month == 12)
      003988 B9 0C 02         [24] 1920 	cjne	r1,#0x0c,00159$
      00398B 80 03            [24] 1921 	sjmp	00160$
      00398D                       1922 00159$:
      00398D 02 37 D4         [24] 1923 	ljmp	00111$
      003990                       1924 00160$:
                                   1925 ;	../Common/DateTime.c:123: result->month = 1;
      003990 C0 05            [24] 1926 	push	ar5
      003992 C0 06            [24] 1927 	push	ar6
      003994 C0 07            [24] 1928 	push	ar7
      003996 85 4A 82         [24] 1929 	mov	dpl,_AddSecondsToDateTime_sloc4_1_0
      003999 85 4B 83         [24] 1930 	mov	dph,(_AddSecondsToDateTime_sloc4_1_0 + 1)
      00399C 85 4C F0         [24] 1931 	mov	b,(_AddSecondsToDateTime_sloc4_1_0 + 2)
      00399F 74 01            [12] 1932 	mov	a,#0x01
      0039A1 12 3C 27         [24] 1933 	lcall	__gptrput
                                   1934 ;	../Common/DateTime.c:124: result->year++;
      0039A4 74 06            [12] 1935 	mov	a,#0x06
      0039A6 2A               [12] 1936 	add	a,r2
      0039A7 F8               [12] 1937 	mov	r0,a
      0039A8 E4               [12] 1938 	clr	a
      0039A9 3B               [12] 1939 	addc	a,r3
      0039AA F9               [12] 1940 	mov	r1,a
      0039AB 8C 07            [24] 1941 	mov	ar7,r4
      0039AD 88 82            [24] 1942 	mov	dpl,r0
      0039AF 89 83            [24] 1943 	mov	dph,r1
      0039B1 8F F0            [24] 1944 	mov	b,r7
      0039B3 12 3D E8         [24] 1945 	lcall	__gptrget
      0039B6 FE               [12] 1946 	mov	r6,a
      0039B7 0E               [12] 1947 	inc	r6
      0039B8 88 82            [24] 1948 	mov	dpl,r0
      0039BA 89 83            [24] 1949 	mov	dph,r1
      0039BC 8F F0            [24] 1950 	mov	b,r7
      0039BE EE               [12] 1951 	mov	a,r6
      0039BF 12 3C 27         [24] 1952 	lcall	__gptrput
      0039C2 D0 07            [24] 1953 	pop	ar7
      0039C4 D0 06            [24] 1954 	pop	ar6
      0039C6 D0 05            [24] 1955 	pop	ar5
                                   1956 ;	../Common/DateTime.c:131: }
      0039C8 02 37 D4         [24] 1957 	ljmp	00111$
                                   1958 ;------------------------------------------------------------
                                   1959 ;Allocation info for local variables in function 'CompareDateTime'
                                   1960 ;------------------------------------------------------------
                                   1961 ;dt2                       Allocated with name '_CompareDateTime_PARM_2'
                                   1962 ;dt1                       Allocated with name '_CompareDateTime_dt1_65536_35'
                                   1963 ;sloc0                     Allocated with name '_CompareDateTime_sloc0_1_0'
                                   1964 ;sloc1                     Allocated with name '_CompareDateTime_sloc1_1_0'
                                   1965 ;sloc2                     Allocated with name '_CompareDateTime_sloc2_1_0'
                                   1966 ;sloc3                     Allocated with name '_CompareDateTime_sloc3_1_0'
                                   1967 ;sloc4                     Allocated with name '_CompareDateTime_sloc4_1_0'
                                   1968 ;sloc5                     Allocated with name '_CompareDateTime_sloc5_1_0'
                                   1969 ;------------------------------------------------------------
                                   1970 ;	../Common/DateTime.c:134: int CompareDateTime(DateTimeStruct* dt1, DateTimeStruct* dt2)
                                   1971 ;	-----------------------------------------
                                   1972 ;	 function CompareDateTime
                                   1973 ;	-----------------------------------------
      0039CB                       1974 _CompareDateTime:
      0039CB AF F0            [24] 1975 	mov	r7,b
      0039CD AE 83            [24] 1976 	mov	r6,dph
      0039CF E5 82            [12] 1977 	mov	a,dpl
      0039D1 90 02 B2         [24] 1978 	mov	dptr,#_CompareDateTime_dt1_65536_35
      0039D4 F0               [24] 1979 	movx	@dptr,a
      0039D5 EE               [12] 1980 	mov	a,r6
      0039D6 A3               [24] 1981 	inc	dptr
      0039D7 F0               [24] 1982 	movx	@dptr,a
      0039D8 EF               [12] 1983 	mov	a,r7
      0039D9 A3               [24] 1984 	inc	dptr
      0039DA F0               [24] 1985 	movx	@dptr,a
                                   1986 ;	../Common/DateTime.c:136: if (dt1->year == dt2->year)
      0039DB 90 02 B2         [24] 1987 	mov	dptr,#_CompareDateTime_dt1_65536_35
      0039DE E0               [24] 1988 	movx	a,@dptr
      0039DF F5 52            [12] 1989 	mov	_CompareDateTime_sloc2_1_0,a
      0039E1 A3               [24] 1990 	inc	dptr
      0039E2 E0               [24] 1991 	movx	a,@dptr
      0039E3 F5 53            [12] 1992 	mov	(_CompareDateTime_sloc2_1_0 + 1),a
      0039E5 A3               [24] 1993 	inc	dptr
      0039E6 E0               [24] 1994 	movx	a,@dptr
      0039E7 F5 54            [12] 1995 	mov	(_CompareDateTime_sloc2_1_0 + 2),a
      0039E9 74 06            [12] 1996 	mov	a,#0x06
      0039EB 25 52            [12] 1997 	add	a,_CompareDateTime_sloc2_1_0
      0039ED FA               [12] 1998 	mov	r2,a
      0039EE E4               [12] 1999 	clr	a
      0039EF 35 53            [12] 2000 	addc	a,(_CompareDateTime_sloc2_1_0 + 1)
      0039F1 FB               [12] 2001 	mov	r3,a
      0039F2 AC 54            [24] 2002 	mov	r4,(_CompareDateTime_sloc2_1_0 + 2)
      0039F4 8A 82            [24] 2003 	mov	dpl,r2
      0039F6 8B 83            [24] 2004 	mov	dph,r3
      0039F8 8C F0            [24] 2005 	mov	b,r4
      0039FA 12 3D E8         [24] 2006 	lcall	__gptrget
      0039FD F5 4E            [12] 2007 	mov	_CompareDateTime_sloc0_1_0,a
      0039FF 90 02 AF         [24] 2008 	mov	dptr,#_CompareDateTime_PARM_2
      003A02 E0               [24] 2009 	movx	a,@dptr
      003A03 F5 4F            [12] 2010 	mov	_CompareDateTime_sloc1_1_0,a
      003A05 A3               [24] 2011 	inc	dptr
      003A06 E0               [24] 2012 	movx	a,@dptr
      003A07 F5 50            [12] 2013 	mov	(_CompareDateTime_sloc1_1_0 + 1),a
      003A09 A3               [24] 2014 	inc	dptr
      003A0A E0               [24] 2015 	movx	a,@dptr
      003A0B F5 51            [12] 2016 	mov	(_CompareDateTime_sloc1_1_0 + 2),a
      003A0D 74 06            [12] 2017 	mov	a,#0x06
      003A0F 25 4F            [12] 2018 	add	a,_CompareDateTime_sloc1_1_0
      003A11 F8               [12] 2019 	mov	r0,a
      003A12 E4               [12] 2020 	clr	a
      003A13 35 50            [12] 2021 	addc	a,(_CompareDateTime_sloc1_1_0 + 1)
      003A15 FB               [12] 2022 	mov	r3,a
      003A16 AC 51            [24] 2023 	mov	r4,(_CompareDateTime_sloc1_1_0 + 2)
      003A18 88 82            [24] 2024 	mov	dpl,r0
      003A1A 8B 83            [24] 2025 	mov	dph,r3
      003A1C 8C F0            [24] 2026 	mov	b,r4
      003A1E 12 3D E8         [24] 2027 	lcall	__gptrget
      003A21 FC               [12] 2028 	mov	r4,a
      003A22 B5 4E 02         [24] 2029 	cjne	a,_CompareDateTime_sloc0_1_0,00145$
      003A25 80 03            [24] 2030 	sjmp	00146$
      003A27                       2031 00145$:
      003A27 02 3B 8A         [24] 2032 	ljmp	00117$
      003A2A                       2033 00146$:
                                   2034 ;	../Common/DateTime.c:138: if (dt1->month == dt2->month)
      003A2A 74 05            [12] 2035 	mov	a,#0x05
      003A2C 25 52            [12] 2036 	add	a,_CompareDateTime_sloc2_1_0
      003A2E F9               [12] 2037 	mov	r1,a
      003A2F E4               [12] 2038 	clr	a
      003A30 35 53            [12] 2039 	addc	a,(_CompareDateTime_sloc2_1_0 + 1)
      003A32 FA               [12] 2040 	mov	r2,a
      003A33 AB 54            [24] 2041 	mov	r3,(_CompareDateTime_sloc2_1_0 + 2)
      003A35 89 82            [24] 2042 	mov	dpl,r1
      003A37 8A 83            [24] 2043 	mov	dph,r2
      003A39 8B F0            [24] 2044 	mov	b,r3
      003A3B 12 3D E8         [24] 2045 	lcall	__gptrget
      003A3E FB               [12] 2046 	mov	r3,a
      003A3F 74 05            [12] 2047 	mov	a,#0x05
      003A41 25 4F            [12] 2048 	add	a,_CompareDateTime_sloc1_1_0
      003A43 F8               [12] 2049 	mov	r0,a
      003A44 E4               [12] 2050 	clr	a
      003A45 35 50            [12] 2051 	addc	a,(_CompareDateTime_sloc1_1_0 + 1)
      003A47 F9               [12] 2052 	mov	r1,a
      003A48 AA 51            [24] 2053 	mov	r2,(_CompareDateTime_sloc1_1_0 + 2)
      003A4A 88 82            [24] 2054 	mov	dpl,r0
      003A4C 89 83            [24] 2055 	mov	dph,r1
      003A4E 8A F0            [24] 2056 	mov	b,r2
      003A50 12 3D E8         [24] 2057 	lcall	__gptrget
      003A53 FA               [12] 2058 	mov	r2,a
      003A54 EB               [12] 2059 	mov	a,r3
      003A55 B5 02 02         [24] 2060 	cjne	a,ar2,00147$
      003A58 80 03            [24] 2061 	sjmp	00148$
      003A5A                       2062 00147$:
      003A5A 02 3B 7B         [24] 2063 	ljmp	00114$
      003A5D                       2064 00148$:
                                   2065 ;	../Common/DateTime.c:140: if (dt1->day == dt2->day)
      003A5D 74 04            [12] 2066 	mov	a,#0x04
      003A5F 25 52            [12] 2067 	add	a,_CompareDateTime_sloc2_1_0
      003A61 F8               [12] 2068 	mov	r0,a
      003A62 E4               [12] 2069 	clr	a
      003A63 35 53            [12] 2070 	addc	a,(_CompareDateTime_sloc2_1_0 + 1)
      003A65 F9               [12] 2071 	mov	r1,a
      003A66 AF 54            [24] 2072 	mov	r7,(_CompareDateTime_sloc2_1_0 + 2)
      003A68 88 82            [24] 2073 	mov	dpl,r0
      003A6A 89 83            [24] 2074 	mov	dph,r1
      003A6C 8F F0            [24] 2075 	mov	b,r7
      003A6E 12 3D E8         [24] 2076 	lcall	__gptrget
      003A71 FF               [12] 2077 	mov	r7,a
      003A72 74 04            [12] 2078 	mov	a,#0x04
      003A74 25 4F            [12] 2079 	add	a,_CompareDateTime_sloc1_1_0
      003A76 F9               [12] 2080 	mov	r1,a
      003A77 E4               [12] 2081 	clr	a
      003A78 35 50            [12] 2082 	addc	a,(_CompareDateTime_sloc1_1_0 + 1)
      003A7A FD               [12] 2083 	mov	r5,a
      003A7B AE 51            [24] 2084 	mov	r6,(_CompareDateTime_sloc1_1_0 + 2)
      003A7D 89 82            [24] 2085 	mov	dpl,r1
      003A7F 8D 83            [24] 2086 	mov	dph,r5
      003A81 8E F0            [24] 2087 	mov	b,r6
      003A83 12 3D E8         [24] 2088 	lcall	__gptrget
      003A86 FE               [12] 2089 	mov	r6,a
      003A87 EF               [12] 2090 	mov	a,r7
      003A88 B5 06 02         [24] 2091 	cjne	a,ar6,00149$
      003A8B 80 03            [24] 2092 	sjmp	00150$
      003A8D                       2093 00149$:
      003A8D 02 3B 69         [24] 2094 	ljmp	00111$
      003A90                       2095 00150$:
                                   2096 ;	../Common/DateTime.c:142: if (dt1->hours == dt2->hours)
      003A90 74 02            [12] 2097 	mov	a,#0x02
      003A92 25 52            [12] 2098 	add	a,_CompareDateTime_sloc2_1_0
      003A94 F8               [12] 2099 	mov	r0,a
      003A95 E4               [12] 2100 	clr	a
      003A96 35 53            [12] 2101 	addc	a,(_CompareDateTime_sloc2_1_0 + 1)
      003A98 F9               [12] 2102 	mov	r1,a
      003A99 AD 54            [24] 2103 	mov	r5,(_CompareDateTime_sloc2_1_0 + 2)
      003A9B 88 82            [24] 2104 	mov	dpl,r0
      003A9D 89 83            [24] 2105 	mov	dph,r1
      003A9F 8D F0            [24] 2106 	mov	b,r5
      003AA1 12 3D E8         [24] 2107 	lcall	__gptrget
      003AA4 F5 55            [12] 2108 	mov	_CompareDateTime_sloc3_1_0,a
      003AA6 74 02            [12] 2109 	mov	a,#0x02
      003AA8 25 4F            [12] 2110 	add	a,_CompareDateTime_sloc1_1_0
      003AAA F8               [12] 2111 	mov	r0,a
      003AAB E4               [12] 2112 	clr	a
      003AAC 35 50            [12] 2113 	addc	a,(_CompareDateTime_sloc1_1_0 + 1)
      003AAE F9               [12] 2114 	mov	r1,a
      003AAF AD 51            [24] 2115 	mov	r5,(_CompareDateTime_sloc1_1_0 + 2)
      003AB1 88 82            [24] 2116 	mov	dpl,r0
      003AB3 89 83            [24] 2117 	mov	dph,r1
      003AB5 8D F0            [24] 2118 	mov	b,r5
      003AB7 12 3D E8         [24] 2119 	lcall	__gptrget
      003ABA FD               [12] 2120 	mov	r5,a
      003ABB B5 55 02         [24] 2121 	cjne	a,_CompareDateTime_sloc3_1_0,00151$
      003ABE 80 03            [24] 2122 	sjmp	00152$
      003AC0                       2123 00151$:
      003AC0 02 3B 51         [24] 2124 	ljmp	00108$
      003AC3                       2125 00152$:
                                   2126 ;	../Common/DateTime.c:144: if (dt1->minutes == dt2->minutes)
      003AC3 74 01            [12] 2127 	mov	a,#0x01
      003AC5 25 52            [12] 2128 	add	a,_CompareDateTime_sloc2_1_0
      003AC7 F5 56            [12] 2129 	mov	_CompareDateTime_sloc4_1_0,a
      003AC9 E4               [12] 2130 	clr	a
      003ACA 35 53            [12] 2131 	addc	a,(_CompareDateTime_sloc2_1_0 + 1)
      003ACC F5 57            [12] 2132 	mov	(_CompareDateTime_sloc4_1_0 + 1),a
      003ACE 85 54 58         [24] 2133 	mov	(_CompareDateTime_sloc4_1_0 + 2),(_CompareDateTime_sloc2_1_0 + 2)
      003AD1 85 56 82         [24] 2134 	mov	dpl,_CompareDateTime_sloc4_1_0
      003AD4 85 57 83         [24] 2135 	mov	dph,(_CompareDateTime_sloc4_1_0 + 1)
      003AD7 85 58 F0         [24] 2136 	mov	b,(_CompareDateTime_sloc4_1_0 + 2)
      003ADA 12 3D E8         [24] 2137 	lcall	__gptrget
      003ADD F5 56            [12] 2138 	mov	_CompareDateTime_sloc4_1_0,a
      003ADF 74 01            [12] 2139 	mov	a,#0x01
      003AE1 25 4F            [12] 2140 	add	a,_CompareDateTime_sloc1_1_0
      003AE3 F5 59            [12] 2141 	mov	_CompareDateTime_sloc5_1_0,a
      003AE5 E4               [12] 2142 	clr	a
      003AE6 35 50            [12] 2143 	addc	a,(_CompareDateTime_sloc1_1_0 + 1)
      003AE8 F5 5A            [12] 2144 	mov	(_CompareDateTime_sloc5_1_0 + 1),a
      003AEA 85 51 5B         [24] 2145 	mov	(_CompareDateTime_sloc5_1_0 + 2),(_CompareDateTime_sloc1_1_0 + 2)
      003AED 85 59 82         [24] 2146 	mov	dpl,_CompareDateTime_sloc5_1_0
      003AF0 85 5A 83         [24] 2147 	mov	dph,(_CompareDateTime_sloc5_1_0 + 1)
      003AF3 85 5B F0         [24] 2148 	mov	b,(_CompareDateTime_sloc5_1_0 + 2)
      003AF6 12 3D E8         [24] 2149 	lcall	__gptrget
      003AF9 F5 59            [12] 2150 	mov	_CompareDateTime_sloc5_1_0,a
      003AFB B5 56 3E         [24] 2151 	cjne	a,_CompareDateTime_sloc4_1_0,00105$
                                   2152 ;	../Common/DateTime.c:146: if (dt1->seconds == dt2->seconds)
      003AFE 85 52 82         [24] 2153 	mov	dpl,_CompareDateTime_sloc2_1_0
      003B01 85 53 83         [24] 2154 	mov	dph,(_CompareDateTime_sloc2_1_0 + 1)
      003B04 85 54 F0         [24] 2155 	mov	b,(_CompareDateTime_sloc2_1_0 + 2)
      003B07 12 3D E8         [24] 2156 	lcall	__gptrget
      003B0A F8               [12] 2157 	mov	r0,a
      003B0B 85 4F 82         [24] 2158 	mov	dpl,_CompareDateTime_sloc1_1_0
      003B0E 85 50 83         [24] 2159 	mov	dph,(_CompareDateTime_sloc1_1_0 + 1)
      003B11 85 51 F0         [24] 2160 	mov	b,(_CompareDateTime_sloc1_1_0 + 2)
      003B14 12 3D E8         [24] 2161 	lcall	__gptrget
      003B17 F5 59            [12] 2162 	mov	_CompareDateTime_sloc5_1_0,a
      003B19 E8               [12] 2163 	mov	a,r0
      003B1A B5 59 04         [24] 2164 	cjne	a,_CompareDateTime_sloc5_1_0,00102$
                                   2165 ;	../Common/DateTime.c:148: return 0;
      003B1D 90 00 00         [24] 2166 	mov	dptr,#0x0000
      003B20 22               [24] 2167 	ret
      003B21                       2168 00102$:
                                   2169 ;	../Common/DateTime.c:152: return dt1->seconds - dt2->seconds;
      003B21 88 52            [24] 2170 	mov	_CompareDateTime_sloc2_1_0,r0
      003B23 E4               [12] 2171 	clr	a
      003B24 F5 53            [12] 2172 	mov	(_CompareDateTime_sloc2_1_0 + 1),a
      003B26 F5 5A            [12] 2173 	mov	(_CompareDateTime_sloc5_1_0 + 1),a
      003B28 E5 52            [12] 2174 	mov	a,_CompareDateTime_sloc2_1_0
      003B2A C3               [12] 2175 	clr	c
      003B2B 95 59            [12] 2176 	subb	a,_CompareDateTime_sloc5_1_0
      003B2D F5 59            [12] 2177 	mov	_CompareDateTime_sloc5_1_0,a
      003B2F E5 53            [12] 2178 	mov	a,(_CompareDateTime_sloc2_1_0 + 1)
      003B31 95 5A            [12] 2179 	subb	a,(_CompareDateTime_sloc5_1_0 + 1)
      003B33 F5 5A            [12] 2180 	mov	(_CompareDateTime_sloc5_1_0 + 1),a
      003B35 85 59 82         [24] 2181 	mov	dpl,_CompareDateTime_sloc5_1_0
      003B38 85 5A 83         [24] 2182 	mov	dph,(_CompareDateTime_sloc5_1_0 + 1)
      003B3B 22               [24] 2183 	ret
      003B3C                       2184 00105$:
                                   2185 ;	../Common/DateTime.c:157: return dt1->minutes - dt2->minutes;
      003B3C 75 57 00         [24] 2186 	mov	(_CompareDateTime_sloc4_1_0 + 1),#0x00
      003B3F A8 59            [24] 2187 	mov	r0,_CompareDateTime_sloc5_1_0
      003B41 79 00            [12] 2188 	mov	r1,#0x00
      003B43 E5 56            [12] 2189 	mov	a,_CompareDateTime_sloc4_1_0
      003B45 C3               [12] 2190 	clr	c
      003B46 98               [12] 2191 	subb	a,r0
      003B47 F8               [12] 2192 	mov	r0,a
      003B48 E5 57            [12] 2193 	mov	a,(_CompareDateTime_sloc4_1_0 + 1)
      003B4A 99               [12] 2194 	subb	a,r1
      003B4B F9               [12] 2195 	mov	r1,a
      003B4C 88 82            [24] 2196 	mov	dpl,r0
      003B4E 89 83            [24] 2197 	mov	dph,r1
      003B50 22               [24] 2198 	ret
      003B51                       2199 00108$:
                                   2200 ;	../Common/DateTime.c:162: return dt1->hours - dt2->hours;
      003B51 85 55 59         [24] 2201 	mov	_CompareDateTime_sloc5_1_0,_CompareDateTime_sloc3_1_0
      003B54 75 5A 00         [24] 2202 	mov	(_CompareDateTime_sloc5_1_0 + 1),#0x00
      003B57 8D 01            [24] 2203 	mov	ar1,r5
      003B59 7D 00            [12] 2204 	mov	r5,#0x00
      003B5B E5 59            [12] 2205 	mov	a,_CompareDateTime_sloc5_1_0
      003B5D C3               [12] 2206 	clr	c
      003B5E 99               [12] 2207 	subb	a,r1
      003B5F F9               [12] 2208 	mov	r1,a
      003B60 E5 5A            [12] 2209 	mov	a,(_CompareDateTime_sloc5_1_0 + 1)
      003B62 9D               [12] 2210 	subb	a,r5
      003B63 FD               [12] 2211 	mov	r5,a
      003B64 89 82            [24] 2212 	mov	dpl,r1
      003B66 8D 83            [24] 2213 	mov	dph,r5
      003B68 22               [24] 2214 	ret
      003B69                       2215 00111$:
                                   2216 ;	../Common/DateTime.c:167: return dt1->day - dt2->day;
      003B69 7D 00            [12] 2217 	mov	r5,#0x00
      003B6B 8E 01            [24] 2218 	mov	ar1,r6
      003B6D 7E 00            [12] 2219 	mov	r6,#0x00
      003B6F EF               [12] 2220 	mov	a,r7
      003B70 C3               [12] 2221 	clr	c
      003B71 99               [12] 2222 	subb	a,r1
      003B72 FF               [12] 2223 	mov	r7,a
      003B73 ED               [12] 2224 	mov	a,r5
      003B74 9E               [12] 2225 	subb	a,r6
      003B75 FD               [12] 2226 	mov	r5,a
      003B76 8F 82            [24] 2227 	mov	dpl,r7
      003B78 8D 83            [24] 2228 	mov	dph,r5
      003B7A 22               [24] 2229 	ret
      003B7B                       2230 00114$:
                                   2231 ;	../Common/DateTime.c:172: return dt1->month - dt2->month;
      003B7B E4               [12] 2232 	clr	a
      003B7C FF               [12] 2233 	mov	r7,a
      003B7D FE               [12] 2234 	mov	r6,a
      003B7E EB               [12] 2235 	mov	a,r3
      003B7F C3               [12] 2236 	clr	c
      003B80 9A               [12] 2237 	subb	a,r2
      003B81 FB               [12] 2238 	mov	r3,a
      003B82 EF               [12] 2239 	mov	a,r7
      003B83 9E               [12] 2240 	subb	a,r6
      003B84 FF               [12] 2241 	mov	r7,a
      003B85 8B 82            [24] 2242 	mov	dpl,r3
      003B87 8F 83            [24] 2243 	mov	dph,r7
      003B89 22               [24] 2244 	ret
      003B8A                       2245 00117$:
                                   2246 ;	../Common/DateTime.c:177: return dt1->year - dt2->year;
      003B8A AE 4E            [24] 2247 	mov	r6,_CompareDateTime_sloc0_1_0
      003B8C E4               [12] 2248 	clr	a
      003B8D FF               [12] 2249 	mov	r7,a
      003B8E FD               [12] 2250 	mov	r5,a
      003B8F EE               [12] 2251 	mov	a,r6
      003B90 C3               [12] 2252 	clr	c
      003B91 9C               [12] 2253 	subb	a,r4
      003B92 FE               [12] 2254 	mov	r6,a
      003B93 EF               [12] 2255 	mov	a,r7
      003B94 9D               [12] 2256 	subb	a,r5
                                   2257 ;	../Common/DateTime.c:180: }
      003B95 8E 82            [24] 2258 	mov	dpl,r6
      003B97 F5 83            [12] 2259 	mov	dph,a
      003B99 22               [24] 2260 	ret
                                   2261 	.area CSEG    (CODE)
                                   2262 	.area CONST   (CODE)
                                   2263 	.area XINIT   (CODE)
                                   2264 	.area CABS    (ABS,CODE)
