                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module MenuMgr
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _HandleMenuCommand
                                     12 	.globl _P5_7
                                     13 	.globl _P5_6
                                     14 	.globl _P5_5
                                     15 	.globl _P5_4
                                     16 	.globl _P5_3
                                     17 	.globl _P5_2
                                     18 	.globl _P5_1
                                     19 	.globl _P5_0
                                     20 	.globl _P4_7
                                     21 	.globl _P4_6
                                     22 	.globl _P4_5
                                     23 	.globl _P4_4
                                     24 	.globl _P4_3
                                     25 	.globl _P4_2
                                     26 	.globl _P4_1
                                     27 	.globl _P4_0
                                     28 	.globl _PX0L
                                     29 	.globl _PT0L
                                     30 	.globl _PX1L
                                     31 	.globl _PT1L
                                     32 	.globl _PSL
                                     33 	.globl _PT2L
                                     34 	.globl _PPCL
                                     35 	.globl _EC
                                     36 	.globl _CCF0
                                     37 	.globl _CCF1
                                     38 	.globl _CCF2
                                     39 	.globl _CCF3
                                     40 	.globl _CCF4
                                     41 	.globl _CR
                                     42 	.globl _CF
                                     43 	.globl _TF2
                                     44 	.globl _EXF2
                                     45 	.globl _RCLK
                                     46 	.globl _TCLK
                                     47 	.globl _EXEN2
                                     48 	.globl _TR2
                                     49 	.globl _C_T2
                                     50 	.globl _CP_RL2
                                     51 	.globl _T2CON_7
                                     52 	.globl _T2CON_6
                                     53 	.globl _T2CON_5
                                     54 	.globl _T2CON_4
                                     55 	.globl _T2CON_3
                                     56 	.globl _T2CON_2
                                     57 	.globl _T2CON_1
                                     58 	.globl _T2CON_0
                                     59 	.globl _PT2
                                     60 	.globl _ET2
                                     61 	.globl _CY
                                     62 	.globl _AC
                                     63 	.globl _F0
                                     64 	.globl _RS1
                                     65 	.globl _RS0
                                     66 	.globl _OV
                                     67 	.globl _F1
                                     68 	.globl _P
                                     69 	.globl _PS
                                     70 	.globl _PT1
                                     71 	.globl _PX1
                                     72 	.globl _PT0
                                     73 	.globl _PX0
                                     74 	.globl _RD
                                     75 	.globl _WR
                                     76 	.globl _T1
                                     77 	.globl _T0
                                     78 	.globl _INT1
                                     79 	.globl _INT0
                                     80 	.globl _TXD
                                     81 	.globl _RXD
                                     82 	.globl _P3_7
                                     83 	.globl _P3_6
                                     84 	.globl _P3_5
                                     85 	.globl _P3_4
                                     86 	.globl _P3_3
                                     87 	.globl _P3_2
                                     88 	.globl _P3_1
                                     89 	.globl _P3_0
                                     90 	.globl _EA
                                     91 	.globl _ES
                                     92 	.globl _ET1
                                     93 	.globl _EX1
                                     94 	.globl _ET0
                                     95 	.globl _EX0
                                     96 	.globl _P2_7
                                     97 	.globl _P2_6
                                     98 	.globl _P2_5
                                     99 	.globl _P2_4
                                    100 	.globl _P2_3
                                    101 	.globl _P2_2
                                    102 	.globl _P2_1
                                    103 	.globl _P2_0
                                    104 	.globl _SM0
                                    105 	.globl _SM1
                                    106 	.globl _SM2
                                    107 	.globl _REN
                                    108 	.globl _TB8
                                    109 	.globl _RB8
                                    110 	.globl _TI
                                    111 	.globl _RI
                                    112 	.globl _P1_7
                                    113 	.globl _P1_6
                                    114 	.globl _P1_5
                                    115 	.globl _P1_4
                                    116 	.globl _P1_3
                                    117 	.globl _P1_2
                                    118 	.globl _P1_1
                                    119 	.globl _P1_0
                                    120 	.globl _TF1
                                    121 	.globl _TR1
                                    122 	.globl _TF0
                                    123 	.globl _TR0
                                    124 	.globl _IE1
                                    125 	.globl _IT1
                                    126 	.globl _IE0
                                    127 	.globl _IT0
                                    128 	.globl _P0_7
                                    129 	.globl _P0_6
                                    130 	.globl _P0_5
                                    131 	.globl _P0_4
                                    132 	.globl _P0_3
                                    133 	.globl _P0_2
                                    134 	.globl _P0_1
                                    135 	.globl _P0_0
                                    136 	.globl _EECON
                                    137 	.globl _KBF
                                    138 	.globl _KBE
                                    139 	.globl _KBLS
                                    140 	.globl _BRL
                                    141 	.globl _BDRCON
                                    142 	.globl _T2MOD
                                    143 	.globl _SPDAT
                                    144 	.globl _SPSTA
                                    145 	.globl _SPCON
                                    146 	.globl _SADEN
                                    147 	.globl _SADDR
                                    148 	.globl _WDTPRG
                                    149 	.globl _WDTRST
                                    150 	.globl _P5
                                    151 	.globl _P4
                                    152 	.globl _IPH1
                                    153 	.globl _IPL1
                                    154 	.globl _IPH0
                                    155 	.globl _IPL0
                                    156 	.globl _IEN1
                                    157 	.globl _IEN0
                                    158 	.globl _CMOD
                                    159 	.globl _CL
                                    160 	.globl _CH
                                    161 	.globl _CCON
                                    162 	.globl _CCAPM4
                                    163 	.globl _CCAPM3
                                    164 	.globl _CCAPM2
                                    165 	.globl _CCAPM1
                                    166 	.globl _CCAPM0
                                    167 	.globl _CCAP4L
                                    168 	.globl _CCAP3L
                                    169 	.globl _CCAP2L
                                    170 	.globl _CCAP1L
                                    171 	.globl _CCAP0L
                                    172 	.globl _CCAP4H
                                    173 	.globl _CCAP3H
                                    174 	.globl _CCAP2H
                                    175 	.globl _CCAP1H
                                    176 	.globl _CCAP0H
                                    177 	.globl _CKCON1
                                    178 	.globl _CKCON0
                                    179 	.globl _CKRL
                                    180 	.globl _AUXR1
                                    181 	.globl _AUXR
                                    182 	.globl _TH2
                                    183 	.globl _TL2
                                    184 	.globl _RCAP2H
                                    185 	.globl _RCAP2L
                                    186 	.globl _T2CON
                                    187 	.globl _B
                                    188 	.globl _ACC
                                    189 	.globl _PSW
                                    190 	.globl _IP
                                    191 	.globl _P3
                                    192 	.globl _IE
                                    193 	.globl _P2
                                    194 	.globl _SBUF
                                    195 	.globl _SCON
                                    196 	.globl _P1
                                    197 	.globl _TH1
                                    198 	.globl _TH0
                                    199 	.globl _TL1
                                    200 	.globl _TL0
                                    201 	.globl _TMOD
                                    202 	.globl _TCON
                                    203 	.globl _PCON
                                    204 	.globl _DPH
                                    205 	.globl _DPL
                                    206 	.globl _SP
                                    207 	.globl _P0
                                    208 	.globl _RenderMenuOnBuffer_PARM_2
                                    209 	.globl _GetMenuItemExtent_PARM_3
                                    210 	.globl _GetMenuItemExtent_PARM_2
                                    211 	.globl _RenderActiveMenu_PARM_3
                                    212 	.globl _RenderActiveMenu_PARM_2
                                    213 	.globl _AddMenuDefinition_PARM_3
                                    214 	.globl _AddMenuDefinition_PARM_2
                                    215 	.globl _MenuController
                                    216 	.globl _MenuDefinitionCounter
                                    217 	.globl _MenuDefinitions
                                    218 	.globl _InitialiseMenuDefinitions
                                    219 	.globl _TerminateMenuDefinitions
                                    220 	.globl _AddMenuDefinition
                                    221 	.globl _InitialiseMenuController
                                    222 	.globl _MenuNavigation
                                    223 	.globl _RenderActiveMenu
                                    224 	.globl _GetMenuItemExtent
                                    225 	.globl _RenderMenuOnBuffer
                                    226 	.globl _IsParentMenu
                                    227 	.globl _IsGoBack
                                    228 	.globl _GoSubMenu
                                    229 	.globl _GoRight
                                    230 	.globl _GoLeft
                                    231 	.globl _GoBackUp
                                    232 ;--------------------------------------------------------
                                    233 ; special function registers
                                    234 ;--------------------------------------------------------
                                    235 	.area RSEG    (ABS,DATA)
      000000                        236 	.org 0x0000
                           000080   237 _P0	=	0x0080
                           000081   238 _SP	=	0x0081
                           000082   239 _DPL	=	0x0082
                           000083   240 _DPH	=	0x0083
                           000087   241 _PCON	=	0x0087
                           000088   242 _TCON	=	0x0088
                           000089   243 _TMOD	=	0x0089
                           00008A   244 _TL0	=	0x008a
                           00008B   245 _TL1	=	0x008b
                           00008C   246 _TH0	=	0x008c
                           00008D   247 _TH1	=	0x008d
                           000090   248 _P1	=	0x0090
                           000098   249 _SCON	=	0x0098
                           000099   250 _SBUF	=	0x0099
                           0000A0   251 _P2	=	0x00a0
                           0000A8   252 _IE	=	0x00a8
                           0000B0   253 _P3	=	0x00b0
                           0000B8   254 _IP	=	0x00b8
                           0000D0   255 _PSW	=	0x00d0
                           0000E0   256 _ACC	=	0x00e0
                           0000F0   257 _B	=	0x00f0
                           0000C8   258 _T2CON	=	0x00c8
                           0000CA   259 _RCAP2L	=	0x00ca
                           0000CB   260 _RCAP2H	=	0x00cb
                           0000CC   261 _TL2	=	0x00cc
                           0000CD   262 _TH2	=	0x00cd
                           00008E   263 _AUXR	=	0x008e
                           0000A2   264 _AUXR1	=	0x00a2
                           000097   265 _CKRL	=	0x0097
                           00008F   266 _CKCON0	=	0x008f
                           0000AF   267 _CKCON1	=	0x00af
                           0000FA   268 _CCAP0H	=	0x00fa
                           0000FB   269 _CCAP1H	=	0x00fb
                           0000FC   270 _CCAP2H	=	0x00fc
                           0000FD   271 _CCAP3H	=	0x00fd
                           0000FE   272 _CCAP4H	=	0x00fe
                           0000EA   273 _CCAP0L	=	0x00ea
                           0000EB   274 _CCAP1L	=	0x00eb
                           0000EC   275 _CCAP2L	=	0x00ec
                           0000ED   276 _CCAP3L	=	0x00ed
                           0000EE   277 _CCAP4L	=	0x00ee
                           0000DA   278 _CCAPM0	=	0x00da
                           0000DB   279 _CCAPM1	=	0x00db
                           0000DC   280 _CCAPM2	=	0x00dc
                           0000DD   281 _CCAPM3	=	0x00dd
                           0000DE   282 _CCAPM4	=	0x00de
                           0000D8   283 _CCON	=	0x00d8
                           0000F9   284 _CH	=	0x00f9
                           0000E9   285 _CL	=	0x00e9
                           0000D9   286 _CMOD	=	0x00d9
                           0000A8   287 _IEN0	=	0x00a8
                           0000B1   288 _IEN1	=	0x00b1
                           0000B8   289 _IPL0	=	0x00b8
                           0000B7   290 _IPH0	=	0x00b7
                           0000B2   291 _IPL1	=	0x00b2
                           0000B3   292 _IPH1	=	0x00b3
                           0000C0   293 _P4	=	0x00c0
                           0000E8   294 _P5	=	0x00e8
                           0000A6   295 _WDTRST	=	0x00a6
                           0000A7   296 _WDTPRG	=	0x00a7
                           0000A9   297 _SADDR	=	0x00a9
                           0000B9   298 _SADEN	=	0x00b9
                           0000C3   299 _SPCON	=	0x00c3
                           0000C4   300 _SPSTA	=	0x00c4
                           0000C5   301 _SPDAT	=	0x00c5
                           0000C9   302 _T2MOD	=	0x00c9
                           00009B   303 _BDRCON	=	0x009b
                           00009A   304 _BRL	=	0x009a
                           00009C   305 _KBLS	=	0x009c
                           00009D   306 _KBE	=	0x009d
                           00009E   307 _KBF	=	0x009e
                           0000D2   308 _EECON	=	0x00d2
                                    309 ;--------------------------------------------------------
                                    310 ; special function bits
                                    311 ;--------------------------------------------------------
                                    312 	.area RSEG    (ABS,DATA)
      000000                        313 	.org 0x0000
                           000080   314 _P0_0	=	0x0080
                           000081   315 _P0_1	=	0x0081
                           000082   316 _P0_2	=	0x0082
                           000083   317 _P0_3	=	0x0083
                           000084   318 _P0_4	=	0x0084
                           000085   319 _P0_5	=	0x0085
                           000086   320 _P0_6	=	0x0086
                           000087   321 _P0_7	=	0x0087
                           000088   322 _IT0	=	0x0088
                           000089   323 _IE0	=	0x0089
                           00008A   324 _IT1	=	0x008a
                           00008B   325 _IE1	=	0x008b
                           00008C   326 _TR0	=	0x008c
                           00008D   327 _TF0	=	0x008d
                           00008E   328 _TR1	=	0x008e
                           00008F   329 _TF1	=	0x008f
                           000090   330 _P1_0	=	0x0090
                           000091   331 _P1_1	=	0x0091
                           000092   332 _P1_2	=	0x0092
                           000093   333 _P1_3	=	0x0093
                           000094   334 _P1_4	=	0x0094
                           000095   335 _P1_5	=	0x0095
                           000096   336 _P1_6	=	0x0096
                           000097   337 _P1_7	=	0x0097
                           000098   338 _RI	=	0x0098
                           000099   339 _TI	=	0x0099
                           00009A   340 _RB8	=	0x009a
                           00009B   341 _TB8	=	0x009b
                           00009C   342 _REN	=	0x009c
                           00009D   343 _SM2	=	0x009d
                           00009E   344 _SM1	=	0x009e
                           00009F   345 _SM0	=	0x009f
                           0000A0   346 _P2_0	=	0x00a0
                           0000A1   347 _P2_1	=	0x00a1
                           0000A2   348 _P2_2	=	0x00a2
                           0000A3   349 _P2_3	=	0x00a3
                           0000A4   350 _P2_4	=	0x00a4
                           0000A5   351 _P2_5	=	0x00a5
                           0000A6   352 _P2_6	=	0x00a6
                           0000A7   353 _P2_7	=	0x00a7
                           0000A8   354 _EX0	=	0x00a8
                           0000A9   355 _ET0	=	0x00a9
                           0000AA   356 _EX1	=	0x00aa
                           0000AB   357 _ET1	=	0x00ab
                           0000AC   358 _ES	=	0x00ac
                           0000AF   359 _EA	=	0x00af
                           0000B0   360 _P3_0	=	0x00b0
                           0000B1   361 _P3_1	=	0x00b1
                           0000B2   362 _P3_2	=	0x00b2
                           0000B3   363 _P3_3	=	0x00b3
                           0000B4   364 _P3_4	=	0x00b4
                           0000B5   365 _P3_5	=	0x00b5
                           0000B6   366 _P3_6	=	0x00b6
                           0000B7   367 _P3_7	=	0x00b7
                           0000B0   368 _RXD	=	0x00b0
                           0000B1   369 _TXD	=	0x00b1
                           0000B2   370 _INT0	=	0x00b2
                           0000B3   371 _INT1	=	0x00b3
                           0000B4   372 _T0	=	0x00b4
                           0000B5   373 _T1	=	0x00b5
                           0000B6   374 _WR	=	0x00b6
                           0000B7   375 _RD	=	0x00b7
                           0000B8   376 _PX0	=	0x00b8
                           0000B9   377 _PT0	=	0x00b9
                           0000BA   378 _PX1	=	0x00ba
                           0000BB   379 _PT1	=	0x00bb
                           0000BC   380 _PS	=	0x00bc
                           0000D0   381 _P	=	0x00d0
                           0000D1   382 _F1	=	0x00d1
                           0000D2   383 _OV	=	0x00d2
                           0000D3   384 _RS0	=	0x00d3
                           0000D4   385 _RS1	=	0x00d4
                           0000D5   386 _F0	=	0x00d5
                           0000D6   387 _AC	=	0x00d6
                           0000D7   388 _CY	=	0x00d7
                           0000AD   389 _ET2	=	0x00ad
                           0000BD   390 _PT2	=	0x00bd
                           0000C8   391 _T2CON_0	=	0x00c8
                           0000C9   392 _T2CON_1	=	0x00c9
                           0000CA   393 _T2CON_2	=	0x00ca
                           0000CB   394 _T2CON_3	=	0x00cb
                           0000CC   395 _T2CON_4	=	0x00cc
                           0000CD   396 _T2CON_5	=	0x00cd
                           0000CE   397 _T2CON_6	=	0x00ce
                           0000CF   398 _T2CON_7	=	0x00cf
                           0000C8   399 _CP_RL2	=	0x00c8
                           0000C9   400 _C_T2	=	0x00c9
                           0000CA   401 _TR2	=	0x00ca
                           0000CB   402 _EXEN2	=	0x00cb
                           0000CC   403 _TCLK	=	0x00cc
                           0000CD   404 _RCLK	=	0x00cd
                           0000CE   405 _EXF2	=	0x00ce
                           0000CF   406 _TF2	=	0x00cf
                           0000DF   407 _CF	=	0x00df
                           0000DE   408 _CR	=	0x00de
                           0000DC   409 _CCF4	=	0x00dc
                           0000DB   410 _CCF3	=	0x00db
                           0000DA   411 _CCF2	=	0x00da
                           0000D9   412 _CCF1	=	0x00d9
                           0000D8   413 _CCF0	=	0x00d8
                           0000AE   414 _EC	=	0x00ae
                           0000BE   415 _PPCL	=	0x00be
                           0000BD   416 _PT2L	=	0x00bd
                           0000BC   417 _PSL	=	0x00bc
                           0000BB   418 _PT1L	=	0x00bb
                           0000BA   419 _PX1L	=	0x00ba
                           0000B9   420 _PT0L	=	0x00b9
                           0000B8   421 _PX0L	=	0x00b8
                           0000C0   422 _P4_0	=	0x00c0
                           0000C1   423 _P4_1	=	0x00c1
                           0000C2   424 _P4_2	=	0x00c2
                           0000C3   425 _P4_3	=	0x00c3
                           0000C4   426 _P4_4	=	0x00c4
                           0000C5   427 _P4_5	=	0x00c5
                           0000C6   428 _P4_6	=	0x00c6
                           0000C7   429 _P4_7	=	0x00c7
                           0000E8   430 _P5_0	=	0x00e8
                           0000E9   431 _P5_1	=	0x00e9
                           0000EA   432 _P5_2	=	0x00ea
                           0000EB   433 _P5_3	=	0x00eb
                           0000EC   434 _P5_4	=	0x00ec
                           0000ED   435 _P5_5	=	0x00ed
                           0000EE   436 _P5_6	=	0x00ee
                           0000EF   437 _P5_7	=	0x00ef
                                    438 ;--------------------------------------------------------
                                    439 ; overlayable register banks
                                    440 ;--------------------------------------------------------
                                    441 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        442 	.ds 8
                                    443 ;--------------------------------------------------------
                                    444 ; internal ram data
                                    445 ;--------------------------------------------------------
                                    446 	.area DSEG    (DATA)
      000021                        447 _RenderActiveMenu_sloc0_1_0:
      000021                        448 	.ds 2
      000023                        449 _RenderActiveMenu_sloc1_1_0:
      000023                        450 	.ds 2
      000025                        451 _RenderActiveMenu_sloc2_1_0:
      000025                        452 	.ds 2
      000027                        453 _RenderActiveMenu_sloc3_1_0:
      000027                        454 	.ds 2
      000029                        455 _RenderActiveMenu_sloc4_1_0:
      000029                        456 	.ds 3
      00002C                        457 _RenderActiveMenu_sloc5_1_0:
      00002C                        458 	.ds 1
      00002D                        459 _GetMenuItemExtent_sloc0_1_0:
      00002D                        460 	.ds 2
      00002F                        461 _GetMenuItemExtent_sloc1_1_0:
      00002F                        462 	.ds 2
      000031                        463 _GetMenuItemExtent_sloc2_1_0:
      000031                        464 	.ds 2
      000033                        465 _GetMenuItemExtent_sloc3_1_0:
      000033                        466 	.ds 2
      000035                        467 _GetMenuItemExtent_sloc4_1_0:
      000035                        468 	.ds 3
      000038                        469 _RenderMenuOnBuffer_sloc0_1_0:
      000038                        470 	.ds 2
      00003A                        471 _IsParentMenu_sloc0_1_0:
      00003A                        472 	.ds 2
                                    473 ;--------------------------------------------------------
                                    474 ; overlayable items in internal ram
                                    475 ;--------------------------------------------------------
                                    476 ;--------------------------------------------------------
                                    477 ; indirectly addressable internal ram data
                                    478 ;--------------------------------------------------------
                                    479 	.area ISEG    (DATA)
                                    480 ;--------------------------------------------------------
                                    481 ; absolute internal ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area IABS    (ABS,DATA)
                                    484 	.area IABS    (ABS,DATA)
                                    485 ;--------------------------------------------------------
                                    486 ; bit data
                                    487 ;--------------------------------------------------------
                                    488 	.area BSEG    (BIT)
                                    489 ;--------------------------------------------------------
                                    490 ; paged external ram data
                                    491 ;--------------------------------------------------------
                                    492 	.area PSEG    (PAG,XDATA)
                                    493 ;--------------------------------------------------------
                                    494 ; uninitialized external ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area XSEG    (XDATA)
      0000A3                        497 _MenuDefinitions::
      0000A3                        498 	.ds 200
      00016B                        499 _MenuDefinitionCounter::
      00016B                        500 	.ds 2
      00016D                        501 _MenuController::
      00016D                        502 	.ds 6
      000173                        503 _AddMenuDefinition_PARM_2:
      000173                        504 	.ds 2
      000175                        505 _AddMenuDefinition_PARM_3:
      000175                        506 	.ds 2
      000177                        507 _AddMenuDefinition_text_10000_68:
      000177                        508 	.ds 3
      00017A                        509 _MenuNavigation_navType_10000_72:
      00017A                        510 	.ds 1
      00017B                        511 _RenderActiveMenu_PARM_2:
      00017B                        512 	.ds 2
      00017D                        513 _RenderActiveMenu_PARM_3:
      00017D                        514 	.ds 2
      00017F                        515 _RenderActiveMenu_pDisplay_10000_78:
      00017F                        516 	.ds 3
      000182                        517 _RenderActiveMenu_ch_10000_79:
      000182                        518 	.ds 1
      000183                        519 _RenderActiveMenu_currentPos_10000_79:
      000183                        520 	.ds 2
      000185                        521 _GetMenuItemExtent_PARM_2:
      000185                        522 	.ds 3
      000188                        523 _GetMenuItemExtent_PARM_3:
      000188                        524 	.ds 3
      00018B                        525 _GetMenuItemExtent_menuItem_10000_92:
      00018B                        526 	.ds 2
      00018D                        527 _GetMenuItemExtent_currentPos_10000_93:
      00018D                        528 	.ds 2
      00018F                        529 _RenderMenuOnBuffer_PARM_2:
      00018F                        530 	.ds 2
      000191                        531 _RenderMenuOnBuffer_pBuffer_10000_101:
      000191                        532 	.ds 3
      000194                        533 _RenderMenuOnBuffer_startPos_20000_103:
      000194                        534 	.ds 2
      000196                        535 _RenderMenuOnBuffer_endPos_20000_103:
      000196                        536 	.ds 2
                                    537 ;--------------------------------------------------------
                                    538 ; absolute external ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area XABS    (ABS,XDATA)
                                    541 ;--------------------------------------------------------
                                    542 ; initialized external ram data
                                    543 ;--------------------------------------------------------
                                    544 	.area XISEG   (XDATA)
                                    545 	.area HOME    (CODE)
                                    546 	.area GSINIT0 (CODE)
                                    547 	.area GSINIT1 (CODE)
                                    548 	.area GSINIT2 (CODE)
                                    549 	.area GSINIT3 (CODE)
                                    550 	.area GSINIT4 (CODE)
                                    551 	.area GSINIT5 (CODE)
                                    552 	.area GSINIT  (CODE)
                                    553 	.area GSFINAL (CODE)
                                    554 	.area CSEG    (CODE)
                                    555 ;--------------------------------------------------------
                                    556 ; global & static initialisations
                                    557 ;--------------------------------------------------------
                                    558 	.area HOME    (CODE)
                                    559 	.area GSINIT  (CODE)
                                    560 	.area GSFINAL (CODE)
                                    561 	.area GSINIT  (CODE)
                                    562 ;--------------------------------------------------------
                                    563 ; Home
                                    564 ;--------------------------------------------------------
                                    565 	.area HOME    (CODE)
                                    566 	.area HOME    (CODE)
                                    567 ;--------------------------------------------------------
                                    568 ; code
                                    569 ;--------------------------------------------------------
                                    570 	.area CSEG    (CODE)
                                    571 ;------------------------------------------------------------
                                    572 ;Allocation info for local variables in function 'InitialiseMenuDefinitions'
                                    573 ;------------------------------------------------------------
                                    574 ;	../Common/MenuMgr.c:47: void InitialiseMenuDefinitions()
                                    575 ;	-----------------------------------------
                                    576 ;	 function InitialiseMenuDefinitions
                                    577 ;	-----------------------------------------
      0009FA                        578 _InitialiseMenuDefinitions:
                           000007   579 	ar7 = 0x07
                           000006   580 	ar6 = 0x06
                           000005   581 	ar5 = 0x05
                           000004   582 	ar4 = 0x04
                           000003   583 	ar3 = 0x03
                           000002   584 	ar2 = 0x02
                           000001   585 	ar1 = 0x01
                           000000   586 	ar0 = 0x00
                                    587 ;	../Common/MenuMgr.c:49: MenuDefinitionCounter = 0;
      0009FA 90 01 6B         [24]  588 	mov	dptr,#_MenuDefinitionCounter
      0009FD E4               [12]  589 	clr	a
      0009FE F0               [24]  590 	movx	@dptr,a
      0009FF A3               [24]  591 	inc	dptr
      000A00 F0               [24]  592 	movx	@dptr,a
                                    593 ;	../Common/MenuMgr.c:50: TerminateMenuDefinitions();
                                    594 ;	../Common/MenuMgr.c:51: }
      000A01 02 0A 04         [24]  595 	ljmp	_TerminateMenuDefinitions
                                    596 ;------------------------------------------------------------
                                    597 ;Allocation info for local variables in function 'TerminateMenuDefinitions'
                                    598 ;------------------------------------------------------------
                                    599 ;	../Common/MenuMgr.c:53: void TerminateMenuDefinitions()
                                    600 ;	-----------------------------------------
                                    601 ;	 function TerminateMenuDefinitions
                                    602 ;	-----------------------------------------
      000A04                        603 _TerminateMenuDefinitions:
                                    604 ;	../Common/MenuMgr.c:55: MenuDefinitions[MenuDefinitionCounter].id = 0;
      000A04 90 01 6B         [24]  605 	mov	dptr,#_MenuDefinitionCounter
      000A07 E0               [24]  606 	movx	a,@dptr
      000A08 FE               [12]  607 	mov	r6,a
      000A09 A3               [24]  608 	inc	dptr
      000A0A E0               [24]  609 	movx	a,@dptr
      000A0B FF               [12]  610 	mov	r7,a
      000A0C 90 02 BD         [24]  611 	mov	dptr,#__mulint_PARM_2
      000A0F EE               [12]  612 	mov	a,r6
      000A10 F0               [24]  613 	movx	@dptr,a
      000A11 EF               [12]  614 	mov	a,r7
      000A12 A3               [24]  615 	inc	dptr
      000A13 F0               [24]  616 	movx	@dptr,a
      000A14 90 00 05         [24]  617 	mov	dptr,#0x0005
      000A17 12 39 82         [24]  618 	lcall	__mulint
      000A1A AE 82            [24]  619 	mov	r6, dpl
      000A1C AF 83            [24]  620 	mov	r7, dph
      000A1E EE               [12]  621 	mov	a,r6
      000A1F 24 A3            [12]  622 	add	a, #_MenuDefinitions
      000A21 FE               [12]  623 	mov	r6,a
      000A22 EF               [12]  624 	mov	a,r7
      000A23 34 00            [12]  625 	addc	a, #(_MenuDefinitions >> 8)
      000A25 FF               [12]  626 	mov	r7,a
      000A26 8E 82            [24]  627 	mov	dpl,r6
      000A28 8F 83            [24]  628 	mov	dph,r7
      000A2A A3               [24]  629 	inc	dptr
      000A2B A3               [24]  630 	inc	dptr
      000A2C A3               [24]  631 	inc	dptr
      000A2D A3               [24]  632 	inc	dptr
      000A2E E4               [12]  633 	clr	a
      000A2F F0               [24]  634 	movx	@dptr,a
                                    635 ;	../Common/MenuMgr.c:56: MenuDefinitions[MenuDefinitionCounter].text = 0;
      000A30 90 01 6B         [24]  636 	mov	dptr,#_MenuDefinitionCounter
      000A33 E0               [24]  637 	movx	a,@dptr
      000A34 FE               [12]  638 	mov	r6,a
      000A35 A3               [24]  639 	inc	dptr
      000A36 E0               [24]  640 	movx	a,@dptr
      000A37 FF               [12]  641 	mov	r7,a
      000A38 90 02 BD         [24]  642 	mov	dptr,#__mulint_PARM_2
      000A3B EE               [12]  643 	mov	a,r6
      000A3C F0               [24]  644 	movx	@dptr,a
      000A3D EF               [12]  645 	mov	a,r7
      000A3E A3               [24]  646 	inc	dptr
      000A3F F0               [24]  647 	movx	@dptr,a
      000A40 90 00 05         [24]  648 	mov	dptr,#0x0005
      000A43 12 39 82         [24]  649 	lcall	__mulint
      000A46 AE 82            [24]  650 	mov	r6, dpl
      000A48 AF 83            [24]  651 	mov	r7, dph
      000A4A EE               [12]  652 	mov	a,r6
      000A4B 24 A3            [12]  653 	add	a, #_MenuDefinitions
      000A4D F5 82            [12]  654 	mov	dpl,a
      000A4F EF               [12]  655 	mov	a,r7
      000A50 34 00            [12]  656 	addc	a, #(_MenuDefinitions >> 8)
      000A52 F5 83            [12]  657 	mov	dph,a
      000A54 E4               [12]  658 	clr	a
      000A55 F0               [24]  659 	movx	@dptr,a
      000A56 A3               [24]  660 	inc	dptr
      000A57 F0               [24]  661 	movx	@dptr,a
      000A58 A3               [24]  662 	inc	dptr
      000A59 F0               [24]  663 	movx	@dptr,a
                                    664 ;	../Common/MenuMgr.c:57: MenuDefinitions[MenuDefinitionCounter].parent = 0;
      000A5A 90 01 6B         [24]  665 	mov	dptr,#_MenuDefinitionCounter
      000A5D E0               [24]  666 	movx	a,@dptr
      000A5E FE               [12]  667 	mov	r6,a
      000A5F A3               [24]  668 	inc	dptr
      000A60 E0               [24]  669 	movx	a,@dptr
      000A61 FF               [12]  670 	mov	r7,a
      000A62 90 02 BD         [24]  671 	mov	dptr,#__mulint_PARM_2
      000A65 EE               [12]  672 	mov	a,r6
      000A66 F0               [24]  673 	movx	@dptr,a
      000A67 EF               [12]  674 	mov	a,r7
      000A68 A3               [24]  675 	inc	dptr
      000A69 F0               [24]  676 	movx	@dptr,a
      000A6A 90 00 05         [24]  677 	mov	dptr,#0x0005
      000A6D 12 39 82         [24]  678 	lcall	__mulint
      000A70 AE 82            [24]  679 	mov	r6, dpl
      000A72 AF 83            [24]  680 	mov	r7, dph
      000A74 EE               [12]  681 	mov	a,r6
      000A75 24 A3            [12]  682 	add	a, #_MenuDefinitions
      000A77 FE               [12]  683 	mov	r6,a
      000A78 EF               [12]  684 	mov	a,r7
      000A79 34 00            [12]  685 	addc	a, #(_MenuDefinitions >> 8)
      000A7B FF               [12]  686 	mov	r7,a
      000A7C 8E 82            [24]  687 	mov	dpl,r6
      000A7E 8F 83            [24]  688 	mov	dph,r7
      000A80 A3               [24]  689 	inc	dptr
      000A81 A3               [24]  690 	inc	dptr
      000A82 A3               [24]  691 	inc	dptr
      000A83 E4               [12]  692 	clr	a
      000A84 F0               [24]  693 	movx	@dptr,a
                                    694 ;	../Common/MenuMgr.c:58: }
      000A85 22               [24]  695 	ret
                                    696 ;------------------------------------------------------------
                                    697 ;Allocation info for local variables in function 'AddMenuDefinition'
                                    698 ;------------------------------------------------------------
                                    699 ;parent        Allocated with name '_AddMenuDefinition_PARM_2'
                                    700 ;id            Allocated with name '_AddMenuDefinition_PARM_3'
                                    701 ;text          Allocated with name '_AddMenuDefinition_text_10000_68'
                                    702 ;------------------------------------------------------------
                                    703 ;	../Common/MenuMgr.c:60: void AddMenuDefinition(char *text, int parent, int id)
                                    704 ;	-----------------------------------------
                                    705 ;	 function AddMenuDefinition
                                    706 ;	-----------------------------------------
      000A86                        707 _AddMenuDefinition:
      000A86 AF F0            [24]  708 	mov	r7,b
      000A88 AE 83            [24]  709 	mov	r6,dph
      000A8A E5 82            [12]  710 	mov	a,dpl
      000A8C 90 01 77         [24]  711 	mov	dptr,#_AddMenuDefinition_text_10000_68
      000A8F F0               [24]  712 	movx	@dptr,a
      000A90 EE               [12]  713 	mov	a,r6
      000A91 A3               [24]  714 	inc	dptr
      000A92 F0               [24]  715 	movx	@dptr,a
      000A93 EF               [12]  716 	mov	a,r7
      000A94 A3               [24]  717 	inc	dptr
      000A95 F0               [24]  718 	movx	@dptr,a
                                    719 ;	../Common/MenuMgr.c:62: MenuDefinitions[MenuDefinitionCounter].id = id;
      000A96 90 01 6B         [24]  720 	mov	dptr,#_MenuDefinitionCounter
      000A99 E0               [24]  721 	movx	a,@dptr
      000A9A FE               [12]  722 	mov	r6,a
      000A9B A3               [24]  723 	inc	dptr
      000A9C E0               [24]  724 	movx	a,@dptr
      000A9D FF               [12]  725 	mov	r7,a
      000A9E 90 02 BD         [24]  726 	mov	dptr,#__mulint_PARM_2
      000AA1 EE               [12]  727 	mov	a,r6
      000AA2 F0               [24]  728 	movx	@dptr,a
      000AA3 EF               [12]  729 	mov	a,r7
      000AA4 A3               [24]  730 	inc	dptr
      000AA5 F0               [24]  731 	movx	@dptr,a
      000AA6 90 00 05         [24]  732 	mov	dptr,#0x0005
      000AA9 12 39 82         [24]  733 	lcall	__mulint
      000AAC AE 82            [24]  734 	mov	r6, dpl
      000AAE AF 83            [24]  735 	mov	r7, dph
      000AB0 EE               [12]  736 	mov	a,r6
      000AB1 24 A3            [12]  737 	add	a, #_MenuDefinitions
      000AB3 FE               [12]  738 	mov	r6,a
      000AB4 EF               [12]  739 	mov	a,r7
      000AB5 34 00            [12]  740 	addc	a, #(_MenuDefinitions >> 8)
      000AB7 FF               [12]  741 	mov	r7,a
      000AB8 74 04            [12]  742 	mov	a,#0x04
      000ABA 2E               [12]  743 	add	a, r6
      000ABB FE               [12]  744 	mov	r6,a
      000ABC E4               [12]  745 	clr	a
      000ABD 3F               [12]  746 	addc	a, r7
      000ABE FF               [12]  747 	mov	r7,a
      000ABF 90 01 75         [24]  748 	mov	dptr,#_AddMenuDefinition_PARM_3
      000AC2 E0               [24]  749 	movx	a,@dptr
      000AC3 8E 82            [24]  750 	mov	dpl,r6
      000AC5 8F 83            [24]  751 	mov	dph,r7
      000AC7 F0               [24]  752 	movx	@dptr,a
                                    753 ;	../Common/MenuMgr.c:63: MenuDefinitions[MenuDefinitionCounter].text = text;
      000AC8 90 01 6B         [24]  754 	mov	dptr,#_MenuDefinitionCounter
      000ACB E0               [24]  755 	movx	a,@dptr
      000ACC FE               [12]  756 	mov	r6,a
      000ACD A3               [24]  757 	inc	dptr
      000ACE E0               [24]  758 	movx	a,@dptr
      000ACF FF               [12]  759 	mov	r7,a
      000AD0 90 02 BD         [24]  760 	mov	dptr,#__mulint_PARM_2
      000AD3 EE               [12]  761 	mov	a,r6
      000AD4 F0               [24]  762 	movx	@dptr,a
      000AD5 EF               [12]  763 	mov	a,r7
      000AD6 A3               [24]  764 	inc	dptr
      000AD7 F0               [24]  765 	movx	@dptr,a
      000AD8 90 00 05         [24]  766 	mov	dptr,#0x0005
      000ADB 12 39 82         [24]  767 	lcall	__mulint
      000ADE AE 82            [24]  768 	mov	r6, dpl
      000AE0 AF 83            [24]  769 	mov	r7, dph
      000AE2 EE               [12]  770 	mov	a,r6
      000AE3 24 A3            [12]  771 	add	a, #_MenuDefinitions
      000AE5 FE               [12]  772 	mov	r6,a
      000AE6 EF               [12]  773 	mov	a,r7
      000AE7 34 00            [12]  774 	addc	a, #(_MenuDefinitions >> 8)
      000AE9 FF               [12]  775 	mov	r7,a
      000AEA 90 01 77         [24]  776 	mov	dptr,#_AddMenuDefinition_text_10000_68
      000AED E0               [24]  777 	movx	a,@dptr
      000AEE FB               [12]  778 	mov	r3,a
      000AEF A3               [24]  779 	inc	dptr
      000AF0 E0               [24]  780 	movx	a,@dptr
      000AF1 FC               [12]  781 	mov	r4,a
      000AF2 A3               [24]  782 	inc	dptr
      000AF3 E0               [24]  783 	movx	a,@dptr
      000AF4 FD               [12]  784 	mov	r5,a
      000AF5 8E 82            [24]  785 	mov	dpl,r6
      000AF7 8F 83            [24]  786 	mov	dph,r7
      000AF9 EB               [12]  787 	mov	a,r3
      000AFA F0               [24]  788 	movx	@dptr,a
      000AFB EC               [12]  789 	mov	a,r4
      000AFC A3               [24]  790 	inc	dptr
      000AFD F0               [24]  791 	movx	@dptr,a
      000AFE ED               [12]  792 	mov	a,r5
      000AFF A3               [24]  793 	inc	dptr
      000B00 F0               [24]  794 	movx	@dptr,a
                                    795 ;	../Common/MenuMgr.c:64: MenuDefinitions[MenuDefinitionCounter].parent = parent;
      000B01 90 01 6B         [24]  796 	mov	dptr,#_MenuDefinitionCounter
      000B04 E0               [24]  797 	movx	a,@dptr
      000B05 FE               [12]  798 	mov	r6,a
      000B06 A3               [24]  799 	inc	dptr
      000B07 E0               [24]  800 	movx	a,@dptr
      000B08 FF               [12]  801 	mov	r7,a
      000B09 90 02 BD         [24]  802 	mov	dptr,#__mulint_PARM_2
      000B0C EE               [12]  803 	mov	a,r6
      000B0D F0               [24]  804 	movx	@dptr,a
      000B0E EF               [12]  805 	mov	a,r7
      000B0F A3               [24]  806 	inc	dptr
      000B10 F0               [24]  807 	movx	@dptr,a
      000B11 90 00 05         [24]  808 	mov	dptr,#0x0005
      000B14 12 39 82         [24]  809 	lcall	__mulint
      000B17 AE 82            [24]  810 	mov	r6, dpl
      000B19 AF 83            [24]  811 	mov	r7, dph
      000B1B EE               [12]  812 	mov	a,r6
      000B1C 24 A3            [12]  813 	add	a, #_MenuDefinitions
      000B1E FE               [12]  814 	mov	r6,a
      000B1F EF               [12]  815 	mov	a,r7
      000B20 34 00            [12]  816 	addc	a, #(_MenuDefinitions >> 8)
      000B22 FF               [12]  817 	mov	r7,a
      000B23 74 03            [12]  818 	mov	a,#0x03
      000B25 2E               [12]  819 	add	a, r6
      000B26 FE               [12]  820 	mov	r6,a
      000B27 E4               [12]  821 	clr	a
      000B28 3F               [12]  822 	addc	a, r7
      000B29 FF               [12]  823 	mov	r7,a
      000B2A 90 01 73         [24]  824 	mov	dptr,#_AddMenuDefinition_PARM_2
      000B2D E0               [24]  825 	movx	a,@dptr
      000B2E 8E 82            [24]  826 	mov	dpl,r6
      000B30 8F 83            [24]  827 	mov	dph,r7
      000B32 F0               [24]  828 	movx	@dptr,a
                                    829 ;	../Common/MenuMgr.c:66: ++MenuDefinitionCounter;
      000B33 90 01 6B         [24]  830 	mov	dptr,#_MenuDefinitionCounter
      000B36 E0               [24]  831 	movx	a,@dptr
      000B37 24 01            [12]  832 	add	a, #0x01
      000B39 F0               [24]  833 	movx	@dptr,a
      000B3A A3               [24]  834 	inc	dptr
      000B3B E0               [24]  835 	movx	a,@dptr
      000B3C 34 00            [12]  836 	addc	a, #0x00
      000B3E F0               [24]  837 	movx	@dptr,a
                                    838 ;	../Common/MenuMgr.c:67: if ((MenuDefinitionCounter + 1) > MAX_MENU_ITEMS)
      000B3F 90 01 6B         [24]  839 	mov	dptr,#_MenuDefinitionCounter
      000B42 E0               [24]  840 	movx	a,@dptr
      000B43 FE               [12]  841 	mov	r6,a
      000B44 A3               [24]  842 	inc	dptr
      000B45 E0               [24]  843 	movx	a,@dptr
      000B46 FF               [12]  844 	mov	r7,a
      000B47 0E               [12]  845 	inc	r6
      000B48 BE 00 01         [24]  846 	cjne	r6,#0x00,00111$
      000B4B 0F               [12]  847 	inc	r7
      000B4C                        848 00111$:
      000B4C C3               [12]  849 	clr	c
      000B4D 74 28            [12]  850 	mov	a,#0x28
      000B4F 9E               [12]  851 	subb	a,r6
      000B50 74 80            [12]  852 	mov	a,#(0x00 ^ 0x80)
      000B52 8F F0            [24]  853 	mov	b,r7
      000B54 63 F0 80         [24]  854 	xrl	b,#0x80
      000B57 95 F0            [12]  855 	subb	a,b
      000B59 50 16            [24]  856 	jnc	00102$
                                    857 ;	../Common/MenuMgr.c:69: pCrashDump("Menu item count");
      000B5B 12 0B 60         [24]  858 	lcall	00113$
      000B5E 80 11            [24]  859 	sjmp	00114$
      000B60                        860 00113$:
      000B60 90 00 11         [24]  861 	mov	dptr,#_pCrashDump
      000B63 E0               [24]  862 	movx	a,@dptr
      000B64 C0 E0            [24]  863 	push	acc
      000B66 A3               [24]  864 	inc	dptr
      000B67 E0               [24]  865 	movx	a,@dptr
      000B68 C0 E0            [24]  866 	push	acc
      000B6A 90 3A FA         [24]  867 	mov	dptr,#___str_0
      000B6D 75 F0 80         [24]  868 	mov	b, #0x80
      000B70 22               [24]  869 	ret
      000B71                        870 00114$:
      000B71                        871 00102$:
                                    872 ;	../Common/MenuMgr.c:72: TerminateMenuDefinitions();
                                    873 ;	../Common/MenuMgr.c:73: }
      000B71 02 0A 04         [24]  874 	ljmp	_TerminateMenuDefinitions
                                    875 ;------------------------------------------------------------
                                    876 ;Allocation info for local variables in function 'InitialiseMenuController'
                                    877 ;------------------------------------------------------------
                                    878 ;	../Common/MenuMgr.c:77: void InitialiseMenuController()
                                    879 ;	-----------------------------------------
                                    880 ;	 function InitialiseMenuController
                                    881 ;	-----------------------------------------
      000B74                        882 _InitialiseMenuController:
                                    883 ;	../Common/MenuMgr.c:79: MenuController.currentSelectedMenuIndex = 0;
      000B74 90 01 6D         [24]  884 	mov	dptr,#_MenuController
      000B77 E4               [12]  885 	clr	a
      000B78 F0               [24]  886 	movx	@dptr,a
                                    887 ;	../Common/MenuMgr.c:80: MenuController.navStack[0] = 0;
      000B79 90 01 6E         [24]  888 	mov	dptr,#(_MenuController + 0x0001)
      000B7C F0               [24]  889 	movx	@dptr,a
                                    890 ;	../Common/MenuMgr.c:81: MenuController.navStackPtr = 0;
      000B7D 90 01 71         [24]  891 	mov	dptr,#(_MenuController + 0x0004)
      000B80 F0               [24]  892 	movx	@dptr,a
                                    893 ;	../Common/MenuMgr.c:82: MenuController.scrollPos = 0;
      000B81 90 01 72         [24]  894 	mov	dptr,#(_MenuController + 0x0005)
      000B84 F0               [24]  895 	movx	@dptr,a
                                    896 ;	../Common/MenuMgr.c:83: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
      000B85 90 01 6D         [24]  897 	mov	dptr,#_MenuController
      000B88 E0               [24]  898 	movx	a,@dptr
      000B89 75 F0 05         [24]  899 	mov	b,#0x05
      000B8C A4               [48]  900 	mul	ab
      000B8D 24 A3            [12]  901 	add	a, #_MenuDefinitions
      000B8F FE               [12]  902 	mov	r6,a
      000B90 74 00            [12]  903 	mov	a,#(_MenuDefinitions >> 8)
      000B92 35 F0            [12]  904 	addc	a, b
      000B94 FF               [12]  905 	mov	r7,a
      000B95 8E 82            [24]  906 	mov	dpl,r6
      000B97 8F 83            [24]  907 	mov	dph,r7
      000B99 A3               [24]  908 	inc	dptr
      000B9A A3               [24]  909 	inc	dptr
      000B9B A3               [24]  910 	inc	dptr
      000B9C A3               [24]  911 	inc	dptr
      000B9D E0               [24]  912 	movx	a,@dptr
      000B9E FF               [12]  913 	mov	r7,a
      000B9F 7E 00            [12]  914 	mov	r6,#0x00
      000BA1 90 01 EA         [24]  915 	mov	dptr,#_HandleMenuCommand_PARM_2
      000BA4 74 01            [12]  916 	mov	a,#0x01
      000BA6 F0               [24]  917 	movx	@dptr,a
      000BA7 E4               [12]  918 	clr	a
      000BA8 A3               [24]  919 	inc	dptr
      000BA9 F0               [24]  920 	movx	@dptr,a
      000BAA 8F 82            [24]  921 	mov	dpl, r7
      000BAC 8E 83            [24]  922 	mov	dph, r6
                                    923 ;	../Common/MenuMgr.c:84: }
      000BAE 02 17 5C         [24]  924 	ljmp	_HandleMenuCommand
                                    925 ;------------------------------------------------------------
                                    926 ;Allocation info for local variables in function 'MenuNavigation'
                                    927 ;------------------------------------------------------------
                                    928 ;navType       Allocated with name '_MenuNavigation_navType_10000_72'
                                    929 ;------------------------------------------------------------
                                    930 ;	../Common/MenuMgr.c:87: void MenuNavigation(char navType)
                                    931 ;	-----------------------------------------
                                    932 ;	 function MenuNavigation
                                    933 ;	-----------------------------------------
      000BB1                        934 _MenuNavigation:
      000BB1 E5 82            [12]  935 	mov	a,dpl
      000BB3 90 01 7A         [24]  936 	mov	dptr,#_MenuNavigation_navType_10000_72
      000BB6 F0               [24]  937 	movx	@dptr,a
                                    938 ;	../Common/MenuMgr.c:89: switch (navType)
      000BB7 E0               [24]  939 	movx	a,@dptr
      000BB8 FF               [12]  940 	mov	r7,a
      000BB9 BF 01 02         [24]  941 	cjne	r7,#0x01,00143$
      000BBC 80 0D            [24]  942 	sjmp	00102$
      000BBE                        943 00143$:
      000BBE BF 02 02         [24]  944 	cjne	r7,#0x02,00144$
      000BC1 80 05            [24]  945 	sjmp	00101$
      000BC3                        946 00144$:
                                    947 ;	../Common/MenuMgr.c:91: case NAVTYPE_RIGHT :
      000BC3 BF 03 52         [24]  948 	cjne	r7,#0x03,00111$
      000BC6 80 06            [24]  949 	sjmp	00103$
      000BC8                        950 00101$:
                                    951 ;	../Common/MenuMgr.c:92: GoRight();
                                    952 ;	../Common/MenuMgr.c:93: break;
                                    953 ;	../Common/MenuMgr.c:95: case NAVTYPE_LEFT :
      000BC8 02 12 A8         [24]  954 	ljmp	_GoRight
      000BCB                        955 00102$:
                                    956 ;	../Common/MenuMgr.c:96: GoLeft();
                                    957 ;	../Common/MenuMgr.c:97: break;
                                    958 ;	../Common/MenuMgr.c:99: case NAVTYPE_SELECTITEM :
      000BCB 02 13 41         [24]  959 	ljmp	_GoLeft
      000BCE                        960 00103$:
                                    961 ;	../Common/MenuMgr.c:101: if (IsParentMenu())
      000BCE 12 11 43         [24]  962 	lcall	_IsParentMenu
      000BD1 E5 82            [12]  963 	mov	a, dpl
      000BD3 85 83 F0         [24]  964 	mov	b, dph
      000BD6 45 F0            [12]  965 	orl	a,b
      000BD8 60 03            [24]  966 	jz	00108$
                                    967 ;	../Common/MenuMgr.c:103: GoSubMenu();
      000BDA 02 11 DE         [24]  968 	ljmp	_GoSubMenu
      000BDD                        969 00108$:
                                    970 ;	../Common/MenuMgr.c:105: else if (IsGoBack())
      000BDD 12 11 B5         [24]  971 	lcall	_IsGoBack
      000BE0 E5 82            [12]  972 	mov	a, dpl
      000BE2 85 83 F0         [24]  973 	mov	b, dph
      000BE5 45 F0            [12]  974 	orl	a,b
      000BE7 60 03            [24]  975 	jz	00105$
                                    976 ;	../Common/MenuMgr.c:107: GoBackUp();
      000BE9 02 13 CF         [24]  977 	ljmp	_GoBackUp
      000BEC                        978 00105$:
                                    979 ;	../Common/MenuMgr.c:111: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_COMMAND);
      000BEC 90 01 6D         [24]  980 	mov	dptr,#_MenuController
      000BEF E0               [24]  981 	movx	a,@dptr
      000BF0 75 F0 05         [24]  982 	mov	b,#0x05
      000BF3 A4               [48]  983 	mul	ab
      000BF4 24 A3            [12]  984 	add	a, #_MenuDefinitions
      000BF6 FE               [12]  985 	mov	r6,a
      000BF7 74 00            [12]  986 	mov	a,#(_MenuDefinitions >> 8)
      000BF9 35 F0            [12]  987 	addc	a, b
      000BFB FF               [12]  988 	mov	r7,a
      000BFC 8E 82            [24]  989 	mov	dpl,r6
      000BFE 8F 83            [24]  990 	mov	dph,r7
      000C00 A3               [24]  991 	inc	dptr
      000C01 A3               [24]  992 	inc	dptr
      000C02 A3               [24]  993 	inc	dptr
      000C03 A3               [24]  994 	inc	dptr
      000C04 E0               [24]  995 	movx	a,@dptr
      000C05 FF               [12]  996 	mov	r7,a
      000C06 7E 00            [12]  997 	mov	r6,#0x00
      000C08 90 01 EA         [24]  998 	mov	dptr,#_HandleMenuCommand_PARM_2
      000C0B 74 02            [12]  999 	mov	a,#0x02
      000C0D F0               [24] 1000 	movx	@dptr,a
      000C0E E4               [12] 1001 	clr	a
      000C0F A3               [24] 1002 	inc	dptr
      000C10 F0               [24] 1003 	movx	@dptr,a
      000C11 8F 82            [24] 1004 	mov	dpl, r7
      000C13 8E 83            [24] 1005 	mov	dph, r6
                                   1006 ;	../Common/MenuMgr.c:116: }
                                   1007 ;	../Common/MenuMgr.c:117: }
      000C15 02 17 5C         [24] 1008 	ljmp	_HandleMenuCommand
      000C18                       1009 00111$:
      000C18 22               [24] 1010 	ret
                                   1011 ;------------------------------------------------------------
                                   1012 ;Allocation info for local variables in function 'RenderActiveMenu'
                                   1013 ;------------------------------------------------------------
                                   1014 ;sloc0         Allocated with name '_RenderActiveMenu_sloc0_1_0'
                                   1015 ;sloc1         Allocated with name '_RenderActiveMenu_sloc1_1_0'
                                   1016 ;sloc2         Allocated with name '_RenderActiveMenu_sloc2_1_0'
                                   1017 ;sloc3         Allocated with name '_RenderActiveMenu_sloc3_1_0'
                                   1018 ;sloc4         Allocated with name '_RenderActiveMenu_sloc4_1_0'
                                   1019 ;sloc5         Allocated with name '_RenderActiveMenu_sloc5_1_0'
                                   1020 ;windowStart   Allocated with name '_RenderActiveMenu_PARM_2'
                                   1021 ;windowEnd     Allocated with name '_RenderActiveMenu_PARM_3'
                                   1022 ;pDisplay      Allocated with name '_RenderActiveMenu_pDisplay_10000_78'
                                   1023 ;currentParent Allocated with name '_RenderActiveMenu_currentParent_10000_79'
                                   1024 ;i             Allocated with name '_RenderActiveMenu_i_10000_79'
                                   1025 ;pTemp         Allocated with name '_RenderActiveMenu_pTemp_10000_79'
                                   1026 ;ch            Allocated with name '_RenderActiveMenu_ch_10000_79'
                                   1027 ;currentPos    Allocated with name '_RenderActiveMenu_currentPos_10000_79'
                                   1028 ;------------------------------------------------------------
                                   1029 ;	../Common/MenuMgr.c:121: void RenderActiveMenu(char *pDisplay, int windowStart, int windowEnd)
                                   1030 ;	-----------------------------------------
                                   1031 ;	 function RenderActiveMenu
                                   1032 ;	-----------------------------------------
      000C19                       1033 _RenderActiveMenu:
      000C19 AF F0            [24] 1034 	mov	r7,b
      000C1B AE 83            [24] 1035 	mov	r6,dph
      000C1D E5 82            [12] 1036 	mov	a,dpl
      000C1F 90 01 7F         [24] 1037 	mov	dptr,#_RenderActiveMenu_pDisplay_10000_78
      000C22 F0               [24] 1038 	movx	@dptr,a
      000C23 EE               [12] 1039 	mov	a,r6
      000C24 A3               [24] 1040 	inc	dptr
      000C25 F0               [24] 1041 	movx	@dptr,a
      000C26 EF               [12] 1042 	mov	a,r7
      000C27 A3               [24] 1043 	inc	dptr
      000C28 F0               [24] 1044 	movx	@dptr,a
                                   1045 ;	../Common/MenuMgr.c:125: int currentParent = MenuDefinitions[MenuController.currentSelectedMenuIndex].parent;
      000C29 90 01 6D         [24] 1046 	mov	dptr,#_MenuController
      000C2C E0               [24] 1047 	movx	a,@dptr
      000C2D 75 F0 05         [24] 1048 	mov	b,#0x05
      000C30 A4               [48] 1049 	mul	ab
      000C31 24 A3            [12] 1050 	add	a, #_MenuDefinitions
      000C33 FE               [12] 1051 	mov	r6,a
      000C34 74 00            [12] 1052 	mov	a,#(_MenuDefinitions >> 8)
      000C36 35 F0            [12] 1053 	addc	a, b
      000C38 FF               [12] 1054 	mov	r7,a
      000C39 8E 82            [24] 1055 	mov	dpl,r6
      000C3B 8F 83            [24] 1056 	mov	dph,r7
      000C3D A3               [24] 1057 	inc	dptr
      000C3E A3               [24] 1058 	inc	dptr
      000C3F A3               [24] 1059 	inc	dptr
      000C40 E0               [24] 1060 	movx	a,@dptr
      000C41 FF               [12] 1061 	mov	r7,a
                                   1062 ;	../Common/MenuMgr.c:131: currentPos = 0;
      000C42 90 01 83         [24] 1063 	mov	dptr,#_RenderActiveMenu_currentPos_10000_79
      000C45 E4               [12] 1064 	clr	a
      000C46 F0               [24] 1065 	movx	@dptr,a
      000C47 A3               [24] 1066 	inc	dptr
      000C48 F0               [24] 1067 	movx	@dptr,a
                                   1068 ;	../Common/MenuMgr.c:132: for (i = 0; MenuDefinitions[i].text != 0; ++i)
      000C49 90 01 7D         [24] 1069 	mov	dptr,#_RenderActiveMenu_PARM_3
      000C4C E0               [24] 1070 	movx	a,@dptr
      000C4D FD               [12] 1071 	mov	r5,a
      000C4E A3               [24] 1072 	inc	dptr
      000C4F E0               [24] 1073 	movx	a,@dptr
      000C50 FE               [12] 1074 	mov	r6,a
      000C51 90 01 7B         [24] 1075 	mov	dptr,#_RenderActiveMenu_PARM_2
      000C54 E0               [24] 1076 	movx	a,@dptr
      000C55 FB               [12] 1077 	mov	r3,a
      000C56 A3               [24] 1078 	inc	dptr
      000C57 E0               [24] 1079 	movx	a,@dptr
      000C58 FC               [12] 1080 	mov	r4,a
      000C59 8D 27            [24] 1081 	mov	_RenderActiveMenu_sloc3_1_0,r5
      000C5B 8E 28            [24] 1082 	mov	(_RenderActiveMenu_sloc3_1_0 + 1),r6
      000C5D 8D 21            [24] 1083 	mov	_RenderActiveMenu_sloc0_1_0,r5
      000C5F 8E 22            [24] 1084 	mov	(_RenderActiveMenu_sloc0_1_0 + 1),r6
      000C61 E4               [12] 1085 	clr	a
      000C62 F5 23            [12] 1086 	mov	_RenderActiveMenu_sloc1_1_0,a
      000C64 F5 24            [12] 1087 	mov	(_RenderActiveMenu_sloc1_1_0 + 1),a
      000C66                       1088 00124$:
      000C66 C0 07            [24] 1089 	push	ar7
      000C68 90 02 BD         [24] 1090 	mov	dptr,#__mulint_PARM_2
      000C6B E5 23            [12] 1091 	mov	a,_RenderActiveMenu_sloc1_1_0
      000C6D F0               [24] 1092 	movx	@dptr,a
      000C6E E5 24            [12] 1093 	mov	a,(_RenderActiveMenu_sloc1_1_0 + 1)
      000C70 A3               [24] 1094 	inc	dptr
      000C71 F0               [24] 1095 	movx	@dptr,a
      000C72 90 00 05         [24] 1096 	mov	dptr,#0x0005
      000C75 C0 06            [24] 1097 	push	ar6
      000C77 C0 05            [24] 1098 	push	ar5
      000C79 C0 04            [24] 1099 	push	ar4
      000C7B C0 03            [24] 1100 	push	ar3
      000C7D 12 39 82         [24] 1101 	lcall	__mulint
      000C80 A8 82            [24] 1102 	mov	r0, dpl
      000C82 AF 83            [24] 1103 	mov	r7, dph
      000C84 D0 03            [24] 1104 	pop	ar3
      000C86 D0 04            [24] 1105 	pop	ar4
      000C88 D0 05            [24] 1106 	pop	ar5
      000C8A D0 06            [24] 1107 	pop	ar6
      000C8C E8               [12] 1108 	mov	a,r0
      000C8D 24 A3            [12] 1109 	add	a, #_MenuDefinitions
      000C8F F5 25            [12] 1110 	mov	_RenderActiveMenu_sloc2_1_0,a
      000C91 EF               [12] 1111 	mov	a,r7
      000C92 34 00            [12] 1112 	addc	a, #(_MenuDefinitions >> 8)
      000C94 F5 26            [12] 1113 	mov	(_RenderActiveMenu_sloc2_1_0 + 1),a
      000C96 85 25 82         [24] 1114 	mov	dpl,_RenderActiveMenu_sloc2_1_0
      000C99 85 26 83         [24] 1115 	mov	dph,(_RenderActiveMenu_sloc2_1_0 + 1)
      000C9C E0               [24] 1116 	movx	a,@dptr
      000C9D F8               [12] 1117 	mov	r0,a
      000C9E A3               [24] 1118 	inc	dptr
      000C9F E0               [24] 1119 	movx	a,@dptr
      000CA0 FA               [12] 1120 	mov	r2,a
      000CA1 A3               [24] 1121 	inc	dptr
      000CA2 E0               [24] 1122 	movx	a,@dptr
      000CA3 E8               [12] 1123 	mov	a,r0
      000CA4 4A               [12] 1124 	orl	a,r2
      000CA5 D0 07            [24] 1125 	pop	ar7
      000CA7 70 01            [24] 1126 	jnz	00208$
      000CA9 22               [24] 1127 	ret
      000CAA                       1128 00208$:
                                   1129 ;	../Common/MenuMgr.c:134: if (MenuDefinitions[i].parent == currentParent)
      000CAA 85 25 82         [24] 1130 	mov	dpl,_RenderActiveMenu_sloc2_1_0
      000CAD 85 26 83         [24] 1131 	mov	dph,(_RenderActiveMenu_sloc2_1_0 + 1)
      000CB0 A3               [24] 1132 	inc	dptr
      000CB1 A3               [24] 1133 	inc	dptr
      000CB2 A3               [24] 1134 	inc	dptr
      000CB3 E0               [24] 1135 	movx	a,@dptr
      000CB4 B5 07 02         [24] 1136 	cjne	a,ar7,00209$
      000CB7 80 03            [24] 1137 	sjmp	00210$
      000CB9                       1138 00209$:
      000CB9 02 0E AD         [24] 1139 	ljmp	00125$
      000CBC                       1140 00210$:
                                   1141 ;	../Common/MenuMgr.c:136: if (i == MenuController.currentSelectedMenuIndex)
      000CBC 90 01 6D         [24] 1142 	mov	dptr,#_MenuController
      000CBF E0               [24] 1143 	movx	a,@dptr
      000CC0 7A 00            [12] 1144 	mov	r2,#0x00
      000CC2 B5 23 0C         [24] 1145 	cjne	a,_RenderActiveMenu_sloc1_1_0,00102$
      000CC5 EA               [12] 1146 	mov	a,r2
      000CC6 B5 24 08         [24] 1147 	cjne	a,(_RenderActiveMenu_sloc1_1_0 + 1),00102$
                                   1148 ;	../Common/MenuMgr.c:138: ch = '[';
      000CC9 90 01 82         [24] 1149 	mov	dptr,#_RenderActiveMenu_ch_10000_79
      000CCC 74 5B            [12] 1150 	mov	a,#0x5b
      000CCE F0               [24] 1151 	movx	@dptr,a
      000CCF 80 06            [24] 1152 	sjmp	00103$
      000CD1                       1153 00102$:
                                   1154 ;	../Common/MenuMgr.c:142: ch = ' ';
      000CD1 90 01 82         [24] 1155 	mov	dptr,#_RenderActiveMenu_ch_10000_79
      000CD4 74 20            [12] 1156 	mov	a,#0x20
      000CD6 F0               [24] 1157 	movx	@dptr,a
      000CD7                       1158 00103$:
                                   1159 ;	../Common/MenuMgr.c:144: COPY_IF_IN_WINDOW(pDisplay, ch, currentPos, windowStart, windowEnd);
      000CD7 90 01 83         [24] 1160 	mov	dptr,#_RenderActiveMenu_currentPos_10000_79
      000CDA E0               [24] 1161 	movx	a,@dptr
      000CDB F9               [12] 1162 	mov	r1,a
      000CDC A3               [24] 1163 	inc	dptr
      000CDD E0               [24] 1164 	movx	a,@dptr
      000CDE FA               [12] 1165 	mov	r2,a
      000CDF C3               [12] 1166 	clr	c
      000CE0 E9               [12] 1167 	mov	a,r1
      000CE1 9B               [12] 1168 	subb	a,r3
      000CE2 EA               [12] 1169 	mov	a,r2
      000CE3 64 80            [12] 1170 	xrl	a,#0x80
      000CE5 8C F0            [24] 1171 	mov	b,r4
      000CE7 63 F0 80         [24] 1172 	xrl	b,#0x80
      000CEA 95 F0            [12] 1173 	subb	a,b
      000CEC 40 4D            [24] 1174 	jc	00105$
      000CEE E9               [12] 1175 	mov	a,r1
      000CEF 9D               [12] 1176 	subb	a,r5
      000CF0 EA               [12] 1177 	mov	a,r2
      000CF1 64 80            [12] 1178 	xrl	a,#0x80
      000CF3 8E F0            [24] 1179 	mov	b,r6
      000CF5 63 F0 80         [24] 1180 	xrl	b,#0x80
      000CF8 95 F0            [12] 1181 	subb	a,b
      000CFA 50 3F            [24] 1182 	jnc	00105$
      000CFC C0 07            [24] 1183 	push	ar7
      000CFE 90 01 7F         [24] 1184 	mov	dptr,#_RenderActiveMenu_pDisplay_10000_78
      000D01 E0               [24] 1185 	movx	a,@dptr
      000D02 F8               [12] 1186 	mov	r0,a
      000D03 A3               [24] 1187 	inc	dptr
      000D04 E0               [24] 1188 	movx	a,@dptr
      000D05 F9               [12] 1189 	mov	r1,a
      000D06 A3               [24] 1190 	inc	dptr
      000D07 E0               [24] 1191 	movx	a,@dptr
      000D08 FA               [12] 1192 	mov	r2,a
      000D09 90 01 82         [24] 1193 	mov	dptr,#_RenderActiveMenu_ch_10000_79
      000D0C E0               [24] 1194 	movx	a,@dptr
      000D0D 88 82            [24] 1195 	mov	dpl,r0
      000D0F 89 83            [24] 1196 	mov	dph,r1
      000D11 8A F0            [24] 1197 	mov	b,r2
      000D13 12 39 67         [24] 1198 	lcall	__gptrput
      000D16 90 01 7F         [24] 1199 	mov	dptr,#_RenderActiveMenu_pDisplay_10000_78
      000D19 74 01            [12] 1200 	mov	a,#0x01
      000D1B 28               [12] 1201 	add	a, r0
      000D1C F0               [24] 1202 	movx	@dptr,a
      000D1D E4               [12] 1203 	clr	a
      000D1E 39               [12] 1204 	addc	a, r1
      000D1F A3               [24] 1205 	inc	dptr
      000D20 F0               [24] 1206 	movx	@dptr,a
      000D21 EA               [12] 1207 	mov	a,r2
      000D22 A3               [24] 1208 	inc	dptr
      000D23 F0               [24] 1209 	movx	@dptr,a
      000D24 90 01 7F         [24] 1210 	mov	dptr,#_RenderActiveMenu_pDisplay_10000_78
      000D27 E0               [24] 1211 	movx	a,@dptr
      000D28 F9               [12] 1212 	mov	r1,a
      000D29 A3               [24] 1213 	inc	dptr
      000D2A E0               [24] 1214 	movx	a,@dptr
      000D2B FA               [12] 1215 	mov	r2,a
      000D2C A3               [24] 1216 	inc	dptr
      000D2D E0               [24] 1217 	movx	a,@dptr
      000D2E FF               [12] 1218 	mov	r7,a
      000D2F 89 82            [24] 1219 	mov	dpl,r1
      000D31 8A 83            [24] 1220 	mov	dph,r2
      000D33 8F F0            [24] 1221 	mov	b,r7
      000D35 E4               [12] 1222 	clr	a
      000D36 12 39 67         [24] 1223 	lcall	__gptrput
                                   1224 ;	../Common/MenuMgr.c:132: for (i = 0; MenuDefinitions[i].text != 0; ++i)
      000D39 D0 07            [24] 1225 	pop	ar7
                                   1226 ;	../Common/MenuMgr.c:144: COPY_IF_IN_WINDOW(pDisplay, ch, currentPos, windowStart, windowEnd);
      000D3B                       1227 00105$:
                                   1228 ;	../Common/MenuMgr.c:145: ++currentPos;
      000D3B 90 01 83         [24] 1229 	mov	dptr,#_RenderActiveMenu_currentPos_10000_79
      000D3E E0               [24] 1230 	movx	a,@dptr
      000D3F 24 01            [12] 1231 	add	a, #0x01
      000D41 F0               [24] 1232 	movx	@dptr,a
      000D42 A3               [24] 1233 	inc	dptr
      000D43 E0               [24] 1234 	movx	a,@dptr
      000D44 34 00            [12] 1235 	addc	a, #0x00
      000D46 F0               [24] 1236 	movx	@dptr,a
                                   1237 ;	../Common/MenuMgr.c:147: for (pTemp = MenuDefinitions[i].text; *pTemp; ++pTemp)
      000D47 90 02 BD         [24] 1238 	mov	dptr,#__mulint_PARM_2
      000D4A E5 23            [12] 1239 	mov	a,_RenderActiveMenu_sloc1_1_0
      000D4C F0               [24] 1240 	movx	@dptr,a
      000D4D E5 24            [12] 1241 	mov	a,(_RenderActiveMenu_sloc1_1_0 + 1)
      000D4F A3               [24] 1242 	inc	dptr
      000D50 F0               [24] 1243 	movx	@dptr,a
      000D51 90 00 05         [24] 1244 	mov	dptr,#0x0005
      000D54 C0 07            [24] 1245 	push	ar7
      000D56 C0 06            [24] 1246 	push	ar6
      000D58 C0 05            [24] 1247 	push	ar5
      000D5A C0 04            [24] 1248 	push	ar4
      000D5C C0 03            [24] 1249 	push	ar3
      000D5E 12 39 82         [24] 1250 	lcall	__mulint
      000D61 A9 82            [24] 1251 	mov	r1, dpl
      000D63 AA 83            [24] 1252 	mov	r2, dph
      000D65 D0 03            [24] 1253 	pop	ar3
      000D67 D0 04            [24] 1254 	pop	ar4
      000D69 D0 05            [24] 1255 	pop	ar5
      000D6B D0 06            [24] 1256 	pop	ar6
      000D6D D0 07            [24] 1257 	pop	ar7
      000D6F E9               [12] 1258 	mov	a,r1
      000D70 24 A3            [12] 1259 	add	a, #_MenuDefinitions
      000D72 F5 82            [12] 1260 	mov	dpl,a
      000D74 EA               [12] 1261 	mov	a,r2
      000D75 34 00            [12] 1262 	addc	a, #(_MenuDefinitions >> 8)
      000D77 F5 83            [12] 1263 	mov	dph,a
      000D79 E0               [24] 1264 	movx	a,@dptr
      000D7A F8               [12] 1265 	mov	r0,a
      000D7B A3               [24] 1266 	inc	dptr
      000D7C E0               [24] 1267 	movx	a,@dptr
      000D7D F9               [12] 1268 	mov	r1,a
      000D7E A3               [24] 1269 	inc	dptr
      000D7F E0               [24] 1270 	movx	a,@dptr
      000D80 FA               [12] 1271 	mov	r2,a
      000D81 90 01 7F         [24] 1272 	mov	dptr,#_RenderActiveMenu_pDisplay_10000_78
      000D84 E0               [24] 1273 	movx	a,@dptr
      000D85 F5 29            [12] 1274 	mov	_RenderActiveMenu_sloc4_1_0,a
      000D87 A3               [24] 1275 	inc	dptr
      000D88 E0               [24] 1276 	movx	a,@dptr
      000D89 F5 2A            [12] 1277 	mov	(_RenderActiveMenu_sloc4_1_0 + 1),a
      000D8B A3               [24] 1278 	inc	dptr
      000D8C E0               [24] 1279 	movx	a,@dptr
      000D8D F5 2B            [12] 1280 	mov	(_RenderActiveMenu_sloc4_1_0 + 2),a
      000D8F 90 01 83         [24] 1281 	mov	dptr,#_RenderActiveMenu_currentPos_10000_79
      000D92 E0               [24] 1282 	movx	a,@dptr
      000D93 F5 25            [12] 1283 	mov	_RenderActiveMenu_sloc2_1_0,a
      000D95 A3               [24] 1284 	inc	dptr
      000D96 E0               [24] 1285 	movx	a,@dptr
      000D97 F5 26            [12] 1286 	mov	(_RenderActiveMenu_sloc2_1_0 + 1),a
      000D99                       1287 00121$:
      000D99 88 82            [24] 1288 	mov	dpl,r0
      000D9B 89 83            [24] 1289 	mov	dph,r1
      000D9D 8A F0            [24] 1290 	mov	b,r2
      000D9F 12 3A B5         [24] 1291 	lcall	__gptrget
      000DA2 F5 2C            [12] 1292 	mov	_RenderActiveMenu_sloc5_1_0,a
      000DA4 60 62            [24] 1293 	jz	00141$
                                   1294 ;	../Common/MenuMgr.c:149: COPY_IF_IN_WINDOW(pDisplay, *pTemp, currentPos, windowStart, windowEnd);
      000DA6 C3               [12] 1295 	clr	c
      000DA7 E5 25            [12] 1296 	mov	a,_RenderActiveMenu_sloc2_1_0
      000DA9 9B               [12] 1297 	subb	a,r3
      000DAA E5 26            [12] 1298 	mov	a,(_RenderActiveMenu_sloc2_1_0 + 1)
      000DAC 64 80            [12] 1299 	xrl	a,#0x80
      000DAE 8C F0            [24] 1300 	mov	b,r4
      000DB0 63 F0 80         [24] 1301 	xrl	b,#0x80
      000DB3 95 F0            [12] 1302 	subb	a,b
      000DB5 40 42            [24] 1303 	jc	00108$
      000DB7 E5 25            [12] 1304 	mov	a,_RenderActiveMenu_sloc2_1_0
      000DB9 95 27            [12] 1305 	subb	a,_RenderActiveMenu_sloc3_1_0
      000DBB E5 26            [12] 1306 	mov	a,(_RenderActiveMenu_sloc2_1_0 + 1)
      000DBD 64 80            [12] 1307 	xrl	a,#0x80
      000DBF 85 28 F0         [24] 1308 	mov	b,(_RenderActiveMenu_sloc3_1_0 + 1)
      000DC2 63 F0 80         [24] 1309 	xrl	b,#0x80
      000DC5 95 F0            [12] 1310 	subb	a,b
      000DC7 50 30            [24] 1311 	jnc	00108$
      000DC9 85 29 82         [24] 1312 	mov	dpl,_RenderActiveMenu_sloc4_1_0
      000DCC 85 2A 83         [24] 1313 	mov	dph,(_RenderActiveMenu_sloc4_1_0 + 1)
      000DCF 85 2B F0         [24] 1314 	mov	b,(_RenderActiveMenu_sloc4_1_0 + 2)
      000DD2 E5 2C            [12] 1315 	mov	a,_RenderActiveMenu_sloc5_1_0
      000DD4 12 39 67         [24] 1316 	lcall	__gptrput
      000DD7 A3               [24] 1317 	inc	dptr
      000DD8 85 82 29         [24] 1318 	mov	_RenderActiveMenu_sloc4_1_0,dpl
      000DDB 85 83 2A         [24] 1319 	mov	(_RenderActiveMenu_sloc4_1_0 + 1),dph
      000DDE 90 01 7F         [24] 1320 	mov	dptr,#_RenderActiveMenu_pDisplay_10000_78
      000DE1 E5 29            [12] 1321 	mov	a,_RenderActiveMenu_sloc4_1_0
      000DE3 F0               [24] 1322 	movx	@dptr,a
      000DE4 E5 2A            [12] 1323 	mov	a,(_RenderActiveMenu_sloc4_1_0 + 1)
      000DE6 A3               [24] 1324 	inc	dptr
      000DE7 F0               [24] 1325 	movx	@dptr,a
      000DE8 E5 2B            [12] 1326 	mov	a,(_RenderActiveMenu_sloc4_1_0 + 2)
      000DEA A3               [24] 1327 	inc	dptr
      000DEB F0               [24] 1328 	movx	@dptr,a
      000DEC 85 29 82         [24] 1329 	mov	dpl,_RenderActiveMenu_sloc4_1_0
      000DEF 85 2A 83         [24] 1330 	mov	dph,(_RenderActiveMenu_sloc4_1_0 + 1)
      000DF2 85 2B F0         [24] 1331 	mov	b,(_RenderActiveMenu_sloc4_1_0 + 2)
      000DF5 E4               [12] 1332 	clr	a
      000DF6 12 39 67         [24] 1333 	lcall	__gptrput
      000DF9                       1334 00108$:
                                   1335 ;	../Common/MenuMgr.c:150: ++currentPos;
      000DF9 05 25            [12] 1336 	inc	_RenderActiveMenu_sloc2_1_0
      000DFB E4               [12] 1337 	clr	a
      000DFC B5 25 02         [24] 1338 	cjne	a,_RenderActiveMenu_sloc2_1_0,00218$
      000DFF 05 26            [12] 1339 	inc	(_RenderActiveMenu_sloc2_1_0 + 1)
      000E01                       1340 00218$:
                                   1341 ;	../Common/MenuMgr.c:147: for (pTemp = MenuDefinitions[i].text; *pTemp; ++pTemp)
      000E01 08               [12] 1342 	inc	r0
      000E02 B8 00 94         [24] 1343 	cjne	r0,#0x00,00121$
      000E05 09               [12] 1344 	inc	r1
      000E06 80 91            [24] 1345 	sjmp	00121$
      000E08                       1346 00141$:
      000E08 90 01 7F         [24] 1347 	mov	dptr,#_RenderActiveMenu_pDisplay_10000_78
      000E0B E5 29            [12] 1348 	mov	a,_RenderActiveMenu_sloc4_1_0
      000E0D F0               [24] 1349 	movx	@dptr,a
      000E0E E5 2A            [12] 1350 	mov	a,(_RenderActiveMenu_sloc4_1_0 + 1)
      000E10 A3               [24] 1351 	inc	dptr
      000E11 F0               [24] 1352 	movx	@dptr,a
      000E12 E5 2B            [12] 1353 	mov	a,(_RenderActiveMenu_sloc4_1_0 + 2)
      000E14 A3               [24] 1354 	inc	dptr
      000E15 F0               [24] 1355 	movx	@dptr,a
      000E16 90 01 83         [24] 1356 	mov	dptr,#_RenderActiveMenu_currentPos_10000_79
      000E19 E5 25            [12] 1357 	mov	a,_RenderActiveMenu_sloc2_1_0
      000E1B F0               [24] 1358 	movx	@dptr,a
      000E1C E5 26            [12] 1359 	mov	a,(_RenderActiveMenu_sloc2_1_0 + 1)
      000E1E A3               [24] 1360 	inc	dptr
      000E1F F0               [24] 1361 	movx	@dptr,a
                                   1362 ;	../Common/MenuMgr.c:153: if (i == MenuController.currentSelectedMenuIndex)
      000E20 90 01 6D         [24] 1363 	mov	dptr,#_MenuController
      000E23 E0               [24] 1364 	movx	a,@dptr
      000E24 7A 00            [12] 1365 	mov	r2,#0x00
      000E26 B5 23 0C         [24] 1366 	cjne	a,_RenderActiveMenu_sloc1_1_0,00112$
      000E29 EA               [12] 1367 	mov	a,r2
      000E2A B5 24 08         [24] 1368 	cjne	a,(_RenderActiveMenu_sloc1_1_0 + 1),00112$
                                   1369 ;	../Common/MenuMgr.c:155: ch = ']';
      000E2D 90 01 82         [24] 1370 	mov	dptr,#_RenderActiveMenu_ch_10000_79
      000E30 74 5D            [12] 1371 	mov	a,#0x5d
      000E32 F0               [24] 1372 	movx	@dptr,a
      000E33 80 06            [24] 1373 	sjmp	00113$
      000E35                       1374 00112$:
                                   1375 ;	../Common/MenuMgr.c:159: ch = ' ';
      000E35 90 01 82         [24] 1376 	mov	dptr,#_RenderActiveMenu_ch_10000_79
      000E38 74 20            [12] 1377 	mov	a,#0x20
      000E3A F0               [24] 1378 	movx	@dptr,a
      000E3B                       1379 00113$:
                                   1380 ;	../Common/MenuMgr.c:161: COPY_IF_IN_WINDOW(pDisplay, ch, currentPos, windowStart, windowEnd);
      000E3B 90 01 83         [24] 1381 	mov	dptr,#_RenderActiveMenu_currentPos_10000_79
      000E3E E0               [24] 1382 	movx	a,@dptr
      000E3F F9               [12] 1383 	mov	r1,a
      000E40 A3               [24] 1384 	inc	dptr
      000E41 E0               [24] 1385 	movx	a,@dptr
      000E42 FA               [12] 1386 	mov	r2,a
      000E43 C3               [12] 1387 	clr	c
      000E44 E9               [12] 1388 	mov	a,r1
      000E45 9B               [12] 1389 	subb	a,r3
      000E46 EA               [12] 1390 	mov	a,r2
      000E47 64 80            [12] 1391 	xrl	a,#0x80
      000E49 8C F0            [24] 1392 	mov	b,r4
      000E4B 63 F0 80         [24] 1393 	xrl	b,#0x80
      000E4E 95 F0            [12] 1394 	subb	a,b
      000E50 40 4F            [24] 1395 	jc	00115$
      000E52 E9               [12] 1396 	mov	a,r1
      000E53 95 21            [12] 1397 	subb	a,_RenderActiveMenu_sloc0_1_0
      000E55 EA               [12] 1398 	mov	a,r2
      000E56 64 80            [12] 1399 	xrl	a,#0x80
      000E58 85 22 F0         [24] 1400 	mov	b,(_RenderActiveMenu_sloc0_1_0 + 1)
      000E5B 63 F0 80         [24] 1401 	xrl	b,#0x80
      000E5E 95 F0            [12] 1402 	subb	a,b
      000E60 50 3F            [24] 1403 	jnc	00115$
      000E62 C0 07            [24] 1404 	push	ar7
      000E64 90 01 7F         [24] 1405 	mov	dptr,#_RenderActiveMenu_pDisplay_10000_78
      000E67 E0               [24] 1406 	movx	a,@dptr
      000E68 F8               [12] 1407 	mov	r0,a
      000E69 A3               [24] 1408 	inc	dptr
      000E6A E0               [24] 1409 	movx	a,@dptr
      000E6B F9               [12] 1410 	mov	r1,a
      000E6C A3               [24] 1411 	inc	dptr
      000E6D E0               [24] 1412 	movx	a,@dptr
      000E6E FA               [12] 1413 	mov	r2,a
      000E6F 90 01 82         [24] 1414 	mov	dptr,#_RenderActiveMenu_ch_10000_79
      000E72 E0               [24] 1415 	movx	a,@dptr
      000E73 88 82            [24] 1416 	mov	dpl,r0
      000E75 89 83            [24] 1417 	mov	dph,r1
      000E77 8A F0            [24] 1418 	mov	b,r2
      000E79 12 39 67         [24] 1419 	lcall	__gptrput
      000E7C 90 01 7F         [24] 1420 	mov	dptr,#_RenderActiveMenu_pDisplay_10000_78
      000E7F 74 01            [12] 1421 	mov	a,#0x01
      000E81 28               [12] 1422 	add	a, r0
      000E82 F0               [24] 1423 	movx	@dptr,a
      000E83 E4               [12] 1424 	clr	a
      000E84 39               [12] 1425 	addc	a, r1
      000E85 A3               [24] 1426 	inc	dptr
      000E86 F0               [24] 1427 	movx	@dptr,a
      000E87 EA               [12] 1428 	mov	a,r2
      000E88 A3               [24] 1429 	inc	dptr
      000E89 F0               [24] 1430 	movx	@dptr,a
      000E8A 90 01 7F         [24] 1431 	mov	dptr,#_RenderActiveMenu_pDisplay_10000_78
      000E8D E0               [24] 1432 	movx	a,@dptr
      000E8E F9               [12] 1433 	mov	r1,a
      000E8F A3               [24] 1434 	inc	dptr
      000E90 E0               [24] 1435 	movx	a,@dptr
      000E91 FA               [12] 1436 	mov	r2,a
      000E92 A3               [24] 1437 	inc	dptr
      000E93 E0               [24] 1438 	movx	a,@dptr
      000E94 FF               [12] 1439 	mov	r7,a
      000E95 89 82            [24] 1440 	mov	dpl,r1
      000E97 8A 83            [24] 1441 	mov	dph,r2
      000E99 8F F0            [24] 1442 	mov	b,r7
      000E9B E4               [12] 1443 	clr	a
      000E9C 12 39 67         [24] 1444 	lcall	__gptrput
                                   1445 ;	../Common/MenuMgr.c:132: for (i = 0; MenuDefinitions[i].text != 0; ++i)
      000E9F D0 07            [24] 1446 	pop	ar7
                                   1447 ;	../Common/MenuMgr.c:161: COPY_IF_IN_WINDOW(pDisplay, ch, currentPos, windowStart, windowEnd);
      000EA1                       1448 00115$:
                                   1449 ;	../Common/MenuMgr.c:162: ++currentPos;
      000EA1 90 01 83         [24] 1450 	mov	dptr,#_RenderActiveMenu_currentPos_10000_79
      000EA4 E0               [24] 1451 	movx	a,@dptr
      000EA5 24 01            [12] 1452 	add	a, #0x01
      000EA7 F0               [24] 1453 	movx	@dptr,a
      000EA8 A3               [24] 1454 	inc	dptr
      000EA9 E0               [24] 1455 	movx	a,@dptr
      000EAA 34 00            [12] 1456 	addc	a, #0x00
      000EAC F0               [24] 1457 	movx	@dptr,a
      000EAD                       1458 00125$:
                                   1459 ;	../Common/MenuMgr.c:132: for (i = 0; MenuDefinitions[i].text != 0; ++i)
      000EAD 05 23            [12] 1460 	inc	_RenderActiveMenu_sloc1_1_0
      000EAF E4               [12] 1461 	clr	a
      000EB0 B5 23 02         [24] 1462 	cjne	a,_RenderActiveMenu_sloc1_1_0,00224$
      000EB3 05 24            [12] 1463 	inc	(_RenderActiveMenu_sloc1_1_0 + 1)
      000EB5                       1464 00224$:
                                   1465 ;	../Common/MenuMgr.c:165: }
      000EB5 02 0C 66         [24] 1466 	ljmp	00124$
                                   1467 ;------------------------------------------------------------
                                   1468 ;Allocation info for local variables in function 'GetMenuItemExtent'
                                   1469 ;------------------------------------------------------------
                                   1470 ;sloc0         Allocated with name '_GetMenuItemExtent_sloc0_1_0'
                                   1471 ;sloc1         Allocated with name '_GetMenuItemExtent_sloc1_1_0'
                                   1472 ;sloc2         Allocated with name '_GetMenuItemExtent_sloc2_1_0'
                                   1473 ;sloc3         Allocated with name '_GetMenuItemExtent_sloc3_1_0'
                                   1474 ;sloc4         Allocated with name '_GetMenuItemExtent_sloc4_1_0'
                                   1475 ;pStartPos     Allocated with name '_GetMenuItemExtent_PARM_2'
                                   1476 ;pEndPos       Allocated with name '_GetMenuItemExtent_PARM_3'
                                   1477 ;menuItem      Allocated with name '_GetMenuItemExtent_menuItem_10000_92'
                                   1478 ;currentParent Allocated with name '_GetMenuItemExtent_currentParent_10000_93'
                                   1479 ;i             Allocated with name '_GetMenuItemExtent_i_10000_93'
                                   1480 ;currentPos    Allocated with name '_GetMenuItemExtent_currentPos_10000_93'
                                   1481 ;pTemp         Allocated with name '_GetMenuItemExtent_pTemp_10000_93'
                                   1482 ;------------------------------------------------------------
                                   1483 ;	../Common/MenuMgr.c:167: void GetMenuItemExtent(int menuItem, int *pStartPos, int *pEndPos)
                                   1484 ;	-----------------------------------------
                                   1485 ;	 function GetMenuItemExtent
                                   1486 ;	-----------------------------------------
      000EB8                       1487 _GetMenuItemExtent:
      000EB8 AF 83            [24] 1488 	mov	r7,dph
      000EBA E5 82            [12] 1489 	mov	a,dpl
      000EBC 90 01 8B         [24] 1490 	mov	dptr,#_GetMenuItemExtent_menuItem_10000_92
      000EBF F0               [24] 1491 	movx	@dptr,a
      000EC0 EF               [12] 1492 	mov	a,r7
      000EC1 A3               [24] 1493 	inc	dptr
      000EC2 F0               [24] 1494 	movx	@dptr,a
                                   1495 ;	../Common/MenuMgr.c:174: *pStartPos = 0;
      000EC3 90 01 85         [24] 1496 	mov	dptr,#_GetMenuItemExtent_PARM_2
      000EC6 E0               [24] 1497 	movx	a,@dptr
      000EC7 FD               [12] 1498 	mov	r5,a
      000EC8 A3               [24] 1499 	inc	dptr
      000EC9 E0               [24] 1500 	movx	a,@dptr
      000ECA FE               [12] 1501 	mov	r6,a
      000ECB A3               [24] 1502 	inc	dptr
      000ECC E0               [24] 1503 	movx	a,@dptr
      000ECD FF               [12] 1504 	mov	r7,a
      000ECE 8D 82            [24] 1505 	mov	dpl,r5
      000ED0 8E 83            [24] 1506 	mov	dph,r6
      000ED2 8F F0            [24] 1507 	mov	b,r7
      000ED4 E4               [12] 1508 	clr	a
      000ED5 12 39 67         [24] 1509 	lcall	__gptrput
      000ED8 A3               [24] 1510 	inc	dptr
      000ED9 12 39 67         [24] 1511 	lcall	__gptrput
                                   1512 ;	../Common/MenuMgr.c:175: *pEndPos = 0;
      000EDC 90 01 88         [24] 1513 	mov	dptr,#_GetMenuItemExtent_PARM_3
      000EDF E0               [24] 1514 	movx	a,@dptr
      000EE0 F5 35            [12] 1515 	mov	_GetMenuItemExtent_sloc4_1_0,a
      000EE2 A3               [24] 1516 	inc	dptr
      000EE3 E0               [24] 1517 	movx	a,@dptr
      000EE4 F5 36            [12] 1518 	mov	(_GetMenuItemExtent_sloc4_1_0 + 1),a
      000EE6 A3               [24] 1519 	inc	dptr
      000EE7 E0               [24] 1520 	movx	a,@dptr
      000EE8 F5 37            [12] 1521 	mov	(_GetMenuItemExtent_sloc4_1_0 + 2),a
      000EEA 85 35 82         [24] 1522 	mov	dpl,_GetMenuItemExtent_sloc4_1_0
      000EED 85 36 83         [24] 1523 	mov	dph,(_GetMenuItemExtent_sloc4_1_0 + 1)
      000EF0 85 37 F0         [24] 1524 	mov	b,(_GetMenuItemExtent_sloc4_1_0 + 2)
      000EF3 E4               [12] 1525 	clr	a
      000EF4 12 39 67         [24] 1526 	lcall	__gptrput
      000EF7 A3               [24] 1527 	inc	dptr
      000EF8 12 39 67         [24] 1528 	lcall	__gptrput
                                   1529 ;	../Common/MenuMgr.c:176: currentPos = 0;
      000EFB 90 01 8D         [24] 1530 	mov	dptr,#_GetMenuItemExtent_currentPos_10000_93
      000EFE F0               [24] 1531 	movx	@dptr,a
      000EFF A3               [24] 1532 	inc	dptr
      000F00 F0               [24] 1533 	movx	@dptr,a
                                   1534 ;	../Common/MenuMgr.c:178: currentParent = MenuDefinitions[menuItem].parent;
      000F01 90 01 8B         [24] 1535 	mov	dptr,#_GetMenuItemExtent_menuItem_10000_92
      000F04 E0               [24] 1536 	movx	a,@dptr
      000F05 F5 2D            [12] 1537 	mov	_GetMenuItemExtent_sloc0_1_0,a
      000F07 A3               [24] 1538 	inc	dptr
      000F08 E0               [24] 1539 	movx	a,@dptr
      000F09 F5 2E            [12] 1540 	mov	(_GetMenuItemExtent_sloc0_1_0 + 1),a
      000F0B 90 02 BD         [24] 1541 	mov	dptr,#__mulint_PARM_2
      000F0E E5 2D            [12] 1542 	mov	a,_GetMenuItemExtent_sloc0_1_0
      000F10 F0               [24] 1543 	movx	@dptr,a
      000F11 E5 2E            [12] 1544 	mov	a,(_GetMenuItemExtent_sloc0_1_0 + 1)
      000F13 A3               [24] 1545 	inc	dptr
      000F14 F0               [24] 1546 	movx	@dptr,a
      000F15 90 00 05         [24] 1547 	mov	dptr,#0x0005
      000F18 C0 07            [24] 1548 	push	ar7
      000F1A C0 06            [24] 1549 	push	ar6
      000F1C C0 05            [24] 1550 	push	ar5
      000F1E 12 39 82         [24] 1551 	lcall	__mulint
      000F21 A8 82            [24] 1552 	mov	r0, dpl
      000F23 A9 83            [24] 1553 	mov	r1, dph
      000F25 D0 05            [24] 1554 	pop	ar5
      000F27 D0 06            [24] 1555 	pop	ar6
      000F29 D0 07            [24] 1556 	pop	ar7
      000F2B E8               [12] 1557 	mov	a,r0
      000F2C 24 A3            [12] 1558 	add	a, #_MenuDefinitions
      000F2E F8               [12] 1559 	mov	r0,a
      000F2F E9               [12] 1560 	mov	a,r1
      000F30 34 00            [12] 1561 	addc	a, #(_MenuDefinitions >> 8)
      000F32 F9               [12] 1562 	mov	r1,a
      000F33 88 82            [24] 1563 	mov	dpl,r0
      000F35 89 83            [24] 1564 	mov	dph,r1
      000F37 A3               [24] 1565 	inc	dptr
      000F38 A3               [24] 1566 	inc	dptr
      000F39 A3               [24] 1567 	inc	dptr
      000F3A E0               [24] 1568 	movx	a,@dptr
      000F3B F9               [12] 1569 	mov	r1,a
                                   1570 ;	../Common/MenuMgr.c:180: for (i = 0; MenuDefinitions[i].text != 0; ++i)
      000F3C 85 2D 2F         [24] 1571 	mov	_GetMenuItemExtent_sloc1_1_0,_GetMenuItemExtent_sloc0_1_0
      000F3F 85 2E 30         [24] 1572 	mov	(_GetMenuItemExtent_sloc1_1_0 + 1),(_GetMenuItemExtent_sloc0_1_0 + 1)
      000F42 E4               [12] 1573 	clr	a
      000F43 F5 31            [12] 1574 	mov	_GetMenuItemExtent_sloc2_1_0,a
      000F45 F5 32            [12] 1575 	mov	(_GetMenuItemExtent_sloc2_1_0 + 1),a
      000F47                       1576 00113$:
      000F47 C0 01            [24] 1577 	push	ar1
      000F49 90 02 BD         [24] 1578 	mov	dptr,#__mulint_PARM_2
      000F4C E5 31            [12] 1579 	mov	a,_GetMenuItemExtent_sloc2_1_0
      000F4E F0               [24] 1580 	movx	@dptr,a
      000F4F E5 32            [12] 1581 	mov	a,(_GetMenuItemExtent_sloc2_1_0 + 1)
      000F51 A3               [24] 1582 	inc	dptr
      000F52 F0               [24] 1583 	movx	@dptr,a
      000F53 90 00 05         [24] 1584 	mov	dptr,#0x0005
      000F56 C0 07            [24] 1585 	push	ar7
      000F58 C0 06            [24] 1586 	push	ar6
      000F5A C0 05            [24] 1587 	push	ar5
      000F5C 12 39 82         [24] 1588 	lcall	__mulint
      000F5F A8 82            [24] 1589 	mov	r0, dpl
      000F61 A9 83            [24] 1590 	mov	r1, dph
      000F63 D0 05            [24] 1591 	pop	ar5
      000F65 D0 06            [24] 1592 	pop	ar6
      000F67 D0 07            [24] 1593 	pop	ar7
      000F69 E8               [12] 1594 	mov	a,r0
      000F6A 24 A3            [12] 1595 	add	a, #_MenuDefinitions
      000F6C F5 33            [12] 1596 	mov	_GetMenuItemExtent_sloc3_1_0,a
      000F6E E9               [12] 1597 	mov	a,r1
      000F6F 34 00            [12] 1598 	addc	a, #(_MenuDefinitions >> 8)
      000F71 F5 34            [12] 1599 	mov	(_GetMenuItemExtent_sloc3_1_0 + 1),a
      000F73 85 33 82         [24] 1600 	mov	dpl,_GetMenuItemExtent_sloc3_1_0
      000F76 85 34 83         [24] 1601 	mov	dph,(_GetMenuItemExtent_sloc3_1_0 + 1)
      000F79 E0               [24] 1602 	movx	a,@dptr
      000F7A F8               [12] 1603 	mov	r0,a
      000F7B A3               [24] 1604 	inc	dptr
      000F7C E0               [24] 1605 	movx	a,@dptr
      000F7D F9               [12] 1606 	mov	r1,a
      000F7E A3               [24] 1607 	inc	dptr
      000F7F E0               [24] 1608 	movx	a,@dptr
      000F80 E8               [12] 1609 	mov	a,r0
      000F81 49               [12] 1610 	orl	a,r1
      000F82 D0 01            [24] 1611 	pop	ar1
      000F84 70 01            [24] 1612 	jnz	00161$
      000F86 22               [24] 1613 	ret
      000F87                       1614 00161$:
                                   1615 ;	../Common/MenuMgr.c:182: if (MenuDefinitions[i].parent == currentParent)
      000F87 85 33 82         [24] 1616 	mov	dpl,_GetMenuItemExtent_sloc3_1_0
      000F8A 85 34 83         [24] 1617 	mov	dph,(_GetMenuItemExtent_sloc3_1_0 + 1)
      000F8D A3               [24] 1618 	inc	dptr
      000F8E A3               [24] 1619 	inc	dptr
      000F8F A3               [24] 1620 	inc	dptr
      000F90 E0               [24] 1621 	movx	a,@dptr
      000F91 B5 01 02         [24] 1622 	cjne	a,ar1,00162$
      000F94 80 03            [24] 1623 	sjmp	00163$
      000F96                       1624 00162$:
      000F96 02 10 54         [24] 1625 	ljmp	00114$
      000F99                       1626 00163$:
                                   1627 ;	../Common/MenuMgr.c:184: if (i == menuItem)
      000F99 E5 2F            [12] 1628 	mov	a,_GetMenuItemExtent_sloc1_1_0
      000F9B B5 31 1C         [24] 1629 	cjne	a,_GetMenuItemExtent_sloc2_1_0,00102$
      000F9E E5 30            [12] 1630 	mov	a,(_GetMenuItemExtent_sloc1_1_0 + 1)
      000FA0 B5 32 17         [24] 1631 	cjne	a,(_GetMenuItemExtent_sloc2_1_0 + 1),00102$
                                   1632 ;	../Common/MenuMgr.c:186: *pStartPos = currentPos;
      000FA3 90 01 8D         [24] 1633 	mov	dptr,#_GetMenuItemExtent_currentPos_10000_93
      000FA6 E0               [24] 1634 	movx	a,@dptr
      000FA7 FB               [12] 1635 	mov	r3,a
      000FA8 A3               [24] 1636 	inc	dptr
      000FA9 E0               [24] 1637 	movx	a,@dptr
      000FAA FC               [12] 1638 	mov	r4,a
      000FAB 8D 82            [24] 1639 	mov	dpl,r5
      000FAD 8E 83            [24] 1640 	mov	dph,r6
      000FAF 8F F0            [24] 1641 	mov	b,r7
      000FB1 EB               [12] 1642 	mov	a,r3
      000FB2 12 39 67         [24] 1643 	lcall	__gptrput
      000FB5 A3               [24] 1644 	inc	dptr
      000FB6 EC               [12] 1645 	mov	a,r4
      000FB7 12 39 67         [24] 1646 	lcall	__gptrput
      000FBA                       1647 00102$:
                                   1648 ;	../Common/MenuMgr.c:188: currentPos++; 
      000FBA 90 01 8D         [24] 1649 	mov	dptr,#_GetMenuItemExtent_currentPos_10000_93
      000FBD E0               [24] 1650 	movx	a,@dptr
      000FBE 24 01            [12] 1651 	add	a, #0x01
      000FC0 F0               [24] 1652 	movx	@dptr,a
      000FC1 A3               [24] 1653 	inc	dptr
      000FC2 E0               [24] 1654 	movx	a,@dptr
      000FC3 34 00            [12] 1655 	addc	a, #0x00
      000FC5 F0               [24] 1656 	movx	@dptr,a
                                   1657 ;	../Common/MenuMgr.c:191: for (pTemp = MenuDefinitions[i].text; *pTemp; ++pTemp)
      000FC6 90 02 BD         [24] 1658 	mov	dptr,#__mulint_PARM_2
      000FC9 E5 31            [12] 1659 	mov	a,_GetMenuItemExtent_sloc2_1_0
      000FCB F0               [24] 1660 	movx	@dptr,a
      000FCC E5 32            [12] 1661 	mov	a,(_GetMenuItemExtent_sloc2_1_0 + 1)
      000FCE A3               [24] 1662 	inc	dptr
      000FCF F0               [24] 1663 	movx	@dptr,a
      000FD0 90 00 05         [24] 1664 	mov	dptr,#0x0005
      000FD3 C0 07            [24] 1665 	push	ar7
      000FD5 C0 06            [24] 1666 	push	ar6
      000FD7 C0 05            [24] 1667 	push	ar5
      000FD9 C0 01            [24] 1668 	push	ar1
      000FDB 12 39 82         [24] 1669 	lcall	__mulint
      000FDE AB 82            [24] 1670 	mov	r3, dpl
      000FE0 AC 83            [24] 1671 	mov	r4, dph
      000FE2 D0 01            [24] 1672 	pop	ar1
      000FE4 D0 05            [24] 1673 	pop	ar5
      000FE6 D0 06            [24] 1674 	pop	ar6
      000FE8 D0 07            [24] 1675 	pop	ar7
      000FEA EB               [12] 1676 	mov	a,r3
      000FEB 24 A3            [12] 1677 	add	a, #_MenuDefinitions
      000FED F5 82            [12] 1678 	mov	dpl,a
      000FEF EC               [12] 1679 	mov	a,r4
      000FF0 34 00            [12] 1680 	addc	a, #(_MenuDefinitions >> 8)
      000FF2 F5 83            [12] 1681 	mov	dph,a
      000FF4 E0               [24] 1682 	movx	a,@dptr
      000FF5 FA               [12] 1683 	mov	r2,a
      000FF6 A3               [24] 1684 	inc	dptr
      000FF7 E0               [24] 1685 	movx	a,@dptr
      000FF8 FB               [12] 1686 	mov	r3,a
      000FF9 A3               [24] 1687 	inc	dptr
      000FFA E0               [24] 1688 	movx	a,@dptr
      000FFB FC               [12] 1689 	mov	r4,a
      000FFC 90 01 8D         [24] 1690 	mov	dptr,#_GetMenuItemExtent_currentPos_10000_93
      000FFF E0               [24] 1691 	movx	a,@dptr
      001000 F5 33            [12] 1692 	mov	_GetMenuItemExtent_sloc3_1_0,a
      001002 A3               [24] 1693 	inc	dptr
      001003 E0               [24] 1694 	movx	a,@dptr
      001004 F5 34            [12] 1695 	mov	(_GetMenuItemExtent_sloc3_1_0 + 1),a
      001006                       1696 00110$:
      001006 8A 82            [24] 1697 	mov	dpl,r2
      001008 8B 83            [24] 1698 	mov	dph,r3
      00100A 8C F0            [24] 1699 	mov	b,r4
      00100C 12 3A B5         [24] 1700 	lcall	__gptrget
      00100F 60 0F            [24] 1701 	jz	00124$
                                   1702 ;	../Common/MenuMgr.c:193: currentPos++;
      001011 05 33            [12] 1703 	inc	_GetMenuItemExtent_sloc3_1_0
      001013 E4               [12] 1704 	clr	a
      001014 B5 33 02         [24] 1705 	cjne	a,_GetMenuItemExtent_sloc3_1_0,00167$
      001017 05 34            [12] 1706 	inc	(_GetMenuItemExtent_sloc3_1_0 + 1)
      001019                       1707 00167$:
                                   1708 ;	../Common/MenuMgr.c:191: for (pTemp = MenuDefinitions[i].text; *pTemp; ++pTemp)
      001019 0A               [12] 1709 	inc	r2
      00101A BA 00 E9         [24] 1710 	cjne	r2,#0x00,00110$
      00101D 0B               [12] 1711 	inc	r3
      00101E 80 E6            [24] 1712 	sjmp	00110$
      001020                       1713 00124$:
      001020 90 01 8D         [24] 1714 	mov	dptr,#_GetMenuItemExtent_currentPos_10000_93
      001023 E5 33            [12] 1715 	mov	a,_GetMenuItemExtent_sloc3_1_0
      001025 F0               [24] 1716 	movx	@dptr,a
      001026 E5 34            [12] 1717 	mov	a,(_GetMenuItemExtent_sloc3_1_0 + 1)
      001028 A3               [24] 1718 	inc	dptr
      001029 F0               [24] 1719 	movx	@dptr,a
                                   1720 ;	../Common/MenuMgr.c:196: if (i == menuItem)
      00102A E5 2D            [12] 1721 	mov	a,_GetMenuItemExtent_sloc0_1_0
      00102C B5 31 19         [24] 1722 	cjne	a,_GetMenuItemExtent_sloc2_1_0,00105$
      00102F E5 2E            [12] 1723 	mov	a,(_GetMenuItemExtent_sloc0_1_0 + 1)
      001031 B5 32 14         [24] 1724 	cjne	a,(_GetMenuItemExtent_sloc2_1_0 + 1),00105$
                                   1725 ;	../Common/MenuMgr.c:198: *pEndPos = currentPos;
      001034 85 35 82         [24] 1726 	mov	dpl,_GetMenuItemExtent_sloc4_1_0
      001037 85 36 83         [24] 1727 	mov	dph,(_GetMenuItemExtent_sloc4_1_0 + 1)
      00103A 85 37 F0         [24] 1728 	mov	b,(_GetMenuItemExtent_sloc4_1_0 + 2)
      00103D E5 33            [12] 1729 	mov	a,_GetMenuItemExtent_sloc3_1_0
      00103F 12 39 67         [24] 1730 	lcall	__gptrput
      001042 A3               [24] 1731 	inc	dptr
      001043 E5 34            [12] 1732 	mov	a,(_GetMenuItemExtent_sloc3_1_0 + 1)
      001045 12 39 67         [24] 1733 	lcall	__gptrput
      001048                       1734 00105$:
                                   1735 ;	../Common/MenuMgr.c:200: currentPos++;
      001048 90 01 8D         [24] 1736 	mov	dptr,#_GetMenuItemExtent_currentPos_10000_93
      00104B E0               [24] 1737 	movx	a,@dptr
      00104C 24 01            [12] 1738 	add	a, #0x01
      00104E F0               [24] 1739 	movx	@dptr,a
      00104F A3               [24] 1740 	inc	dptr
      001050 E0               [24] 1741 	movx	a,@dptr
      001051 34 00            [12] 1742 	addc	a, #0x00
      001053 F0               [24] 1743 	movx	@dptr,a
      001054                       1744 00114$:
                                   1745 ;	../Common/MenuMgr.c:180: for (i = 0; MenuDefinitions[i].text != 0; ++i)
      001054 05 31            [12] 1746 	inc	_GetMenuItemExtent_sloc2_1_0
      001056 E4               [12] 1747 	clr	a
      001057 B5 31 02         [24] 1748 	cjne	a,_GetMenuItemExtent_sloc2_1_0,00171$
      00105A 05 32            [12] 1749 	inc	(_GetMenuItemExtent_sloc2_1_0 + 1)
      00105C                       1750 00171$:
                                   1751 ;	../Common/MenuMgr.c:203: }
      00105C 02 0F 47         [24] 1752 	ljmp	00113$
                                   1753 ;------------------------------------------------------------
                                   1754 ;Allocation info for local variables in function 'RenderMenuOnBuffer'
                                   1755 ;------------------------------------------------------------
                                   1756 ;sloc0         Allocated with name '_RenderMenuOnBuffer_sloc0_1_0'
                                   1757 ;maxLength     Allocated with name '_RenderMenuOnBuffer_PARM_2'
                                   1758 ;pBuffer       Allocated with name '_RenderMenuOnBuffer_pBuffer_10000_101'
                                   1759 ;startPos      Allocated with name '_RenderMenuOnBuffer_startPos_20000_103'
                                   1760 ;endPos        Allocated with name '_RenderMenuOnBuffer_endPos_20000_103'
                                   1761 ;------------------------------------------------------------
                                   1762 ;	../Common/MenuMgr.c:205: void RenderMenuOnBuffer(char *pBuffer, int maxLength)
                                   1763 ;	-----------------------------------------
                                   1764 ;	 function RenderMenuOnBuffer
                                   1765 ;	-----------------------------------------
      00105F                       1766 _RenderMenuOnBuffer:
      00105F AF F0            [24] 1767 	mov	r7,b
      001061 AE 83            [24] 1768 	mov	r6,dph
      001063 E5 82            [12] 1769 	mov	a,dpl
      001065 90 01 91         [24] 1770 	mov	dptr,#_RenderMenuOnBuffer_pBuffer_10000_101
      001068 F0               [24] 1771 	movx	@dptr,a
      001069 EE               [12] 1772 	mov	a,r6
      00106A A3               [24] 1773 	inc	dptr
      00106B F0               [24] 1774 	movx	@dptr,a
      00106C EF               [12] 1775 	mov	a,r7
      00106D A3               [24] 1776 	inc	dptr
      00106E F0               [24] 1777 	movx	@dptr,a
                                   1778 ;	../Common/MenuMgr.c:207: *pBuffer = 0;
      00106F 90 01 91         [24] 1779 	mov	dptr,#_RenderMenuOnBuffer_pBuffer_10000_101
      001072 E0               [24] 1780 	movx	a,@dptr
      001073 FD               [12] 1781 	mov	r5,a
      001074 A3               [24] 1782 	inc	dptr
      001075 E0               [24] 1783 	movx	a,@dptr
      001076 FE               [12] 1784 	mov	r6,a
      001077 A3               [24] 1785 	inc	dptr
      001078 E0               [24] 1786 	movx	a,@dptr
      001079 FF               [12] 1787 	mov	r7,a
      00107A 8D 82            [24] 1788 	mov	dpl,r5
      00107C 8E 83            [24] 1789 	mov	dph,r6
      00107E 8F F0            [24] 1790 	mov	b,r7
      001080 E4               [12] 1791 	clr	a
      001081 12 39 67         [24] 1792 	lcall	__gptrput
                                   1793 ;	../Common/MenuMgr.c:215: GetMenuItemExtent(MenuController.currentSelectedMenuIndex, &startPos, &endPos);
      001084 90 01 6D         [24] 1794 	mov	dptr,#_MenuController
      001087 E0               [24] 1795 	movx	a,@dptr
      001088 FF               [12] 1796 	mov	r7,a
      001089 7E 00            [12] 1797 	mov	r6,#0x00
      00108B 90 01 85         [24] 1798 	mov	dptr,#_GetMenuItemExtent_PARM_2
      00108E 74 94            [12] 1799 	mov	a,#_RenderMenuOnBuffer_startPos_20000_103
      001090 F0               [24] 1800 	movx	@dptr,a
      001091 74 01            [12] 1801 	mov	a,#(_RenderMenuOnBuffer_startPos_20000_103 >> 8)
      001093 A3               [24] 1802 	inc	dptr
      001094 F0               [24] 1803 	movx	@dptr,a
      001095 E4               [12] 1804 	clr	a
      001096 A3               [24] 1805 	inc	dptr
      001097 F0               [24] 1806 	movx	@dptr,a
      001098 90 01 88         [24] 1807 	mov	dptr,#_GetMenuItemExtent_PARM_3
      00109B 74 96            [12] 1808 	mov	a,#_RenderMenuOnBuffer_endPos_20000_103
      00109D F0               [24] 1809 	movx	@dptr,a
      00109E 74 01            [12] 1810 	mov	a,#(_RenderMenuOnBuffer_endPos_20000_103 >> 8)
      0010A0 A3               [24] 1811 	inc	dptr
      0010A1 F0               [24] 1812 	movx	@dptr,a
      0010A2 E4               [12] 1813 	clr	a
      0010A3 A3               [24] 1814 	inc	dptr
      0010A4 F0               [24] 1815 	movx	@dptr,a
      0010A5 8F 82            [24] 1816 	mov	dpl, r7
      0010A7 8E 83            [24] 1817 	mov	dph, r6
      0010A9 12 0E B8         [24] 1818 	lcall	_GetMenuItemExtent
                                   1819 ;	../Common/MenuMgr.c:219: if (startPos < MenuController.scrollPos)
      0010AC 90 01 72         [24] 1820 	mov	dptr,#(_MenuController + 0x0005)
      0010AF E0               [24] 1821 	movx	a,@dptr
      0010B0 FF               [12] 1822 	mov	r7,a
      0010B1 90 01 94         [24] 1823 	mov	dptr,#_RenderMenuOnBuffer_startPos_20000_103
      0010B4 E0               [24] 1824 	movx	a,@dptr
      0010B5 FD               [12] 1825 	mov	r5,a
      0010B6 A3               [24] 1826 	inc	dptr
      0010B7 E0               [24] 1827 	movx	a,@dptr
      0010B8 FE               [12] 1828 	mov	r6,a
      0010B9 8F 04            [24] 1829 	mov	ar4,r7
      0010BB 7F 00            [12] 1830 	mov	r7,#0x00
      0010BD C3               [12] 1831 	clr	c
      0010BE ED               [12] 1832 	mov	a,r5
      0010BF 9C               [12] 1833 	subb	a,r4
      0010C0 EE               [12] 1834 	mov	a,r6
      0010C1 64 80            [12] 1835 	xrl	a,#0x80
      0010C3 8F F0            [24] 1836 	mov	b,r7
      0010C5 63 F0 80         [24] 1837 	xrl	b,#0x80
      0010C8 95 F0            [12] 1838 	subb	a,b
      0010CA 50 07            [24] 1839 	jnc	00104$
                                   1840 ;	../Common/MenuMgr.c:221: MenuController.scrollPos = startPos;
      0010CC 90 01 72         [24] 1841 	mov	dptr,#(_MenuController + 0x0005)
      0010CF ED               [12] 1842 	mov	a,r5
      0010D0 F0               [24] 1843 	movx	@dptr,a
      0010D1 80 2D            [24] 1844 	sjmp	00105$
      0010D3                       1845 00104$:
                                   1846 ;	../Common/MenuMgr.c:223: else if (endPos > MenuController.scrollPos + maxLength)
      0010D3 90 01 8F         [24] 1847 	mov	dptr,#_RenderMenuOnBuffer_PARM_2
      0010D6 E0               [24] 1848 	movx	a,@dptr
      0010D7 FD               [12] 1849 	mov	r5,a
      0010D8 A3               [24] 1850 	inc	dptr
      0010D9 E0               [24] 1851 	movx	a,@dptr
      0010DA FE               [12] 1852 	mov	r6,a
      0010DB ED               [12] 1853 	mov	a,r5
      0010DC 2C               [12] 1854 	add	a, r4
      0010DD FC               [12] 1855 	mov	r4,a
      0010DE EE               [12] 1856 	mov	a,r6
      0010DF 3F               [12] 1857 	addc	a, r7
      0010E0 FF               [12] 1858 	mov	r7,a
      0010E1 90 01 96         [24] 1859 	mov	dptr,#_RenderMenuOnBuffer_endPos_20000_103
      0010E4 E0               [24] 1860 	movx	a,@dptr
      0010E5 FA               [12] 1861 	mov	r2,a
      0010E6 A3               [24] 1862 	inc	dptr
      0010E7 E0               [24] 1863 	movx	a,@dptr
      0010E8 FB               [12] 1864 	mov	r3,a
      0010E9 C3               [12] 1865 	clr	c
      0010EA EC               [12] 1866 	mov	a,r4
      0010EB 9A               [12] 1867 	subb	a,r2
      0010EC EF               [12] 1868 	mov	a,r7
      0010ED 64 80            [12] 1869 	xrl	a,#0x80
      0010EF 8B F0            [24] 1870 	mov	b,r3
      0010F1 63 F0 80         [24] 1871 	xrl	b,#0x80
      0010F4 95 F0            [12] 1872 	subb	a,b
      0010F6 50 08            [24] 1873 	jnc	00105$
                                   1874 ;	../Common/MenuMgr.c:225: MenuController.scrollPos = endPos - maxLength + 1;
      0010F8 EA               [12] 1875 	mov	a,r2
      0010F9 C3               [12] 1876 	clr	c
      0010FA 9D               [12] 1877 	subb	a,r5
      0010FB 04               [12] 1878 	inc	a
      0010FC 90 01 72         [24] 1879 	mov	dptr,#(_MenuController + 0x0005)
      0010FF F0               [24] 1880 	movx	@dptr,a
      001100                       1881 00105$:
                                   1882 ;	../Common/MenuMgr.c:228: RenderActiveMenu(pBuffer, MenuController.scrollPos, MenuController.scrollPos + maxLength);
      001100 90 01 91         [24] 1883 	mov	dptr,#_RenderMenuOnBuffer_pBuffer_10000_101
      001103 E0               [24] 1884 	movx	a,@dptr
      001104 FD               [12] 1885 	mov	r5,a
      001105 A3               [24] 1886 	inc	dptr
      001106 E0               [24] 1887 	movx	a,@dptr
      001107 FE               [12] 1888 	mov	r6,a
      001108 A3               [24] 1889 	inc	dptr
      001109 E0               [24] 1890 	movx	a,@dptr
      00110A FF               [12] 1891 	mov	r7,a
      00110B 90 01 72         [24] 1892 	mov	dptr,#(_MenuController + 0x0005)
      00110E E0               [24] 1893 	movx	a,@dptr
      00110F FC               [12] 1894 	mov	r4,a
      001110 7B 00            [12] 1895 	mov	r3,#0x00
      001112 90 01 72         [24] 1896 	mov	dptr,#(_MenuController + 0x0005)
      001115 E0               [24] 1897 	movx	a,@dptr
      001116 F5 38            [12] 1898 	mov	_RenderMenuOnBuffer_sloc0_1_0, a
      001118 8B 39            [24] 1899 	mov	(_RenderMenuOnBuffer_sloc0_1_0 + 1),r3
      00111A 90 01 8F         [24] 1900 	mov	dptr,#_RenderMenuOnBuffer_PARM_2
      00111D E0               [24] 1901 	movx	a,@dptr
      00111E F8               [12] 1902 	mov	r0,a
      00111F A3               [24] 1903 	inc	dptr
      001120 E0               [24] 1904 	movx	a,@dptr
      001121 FA               [12] 1905 	mov	r2,a
      001122 E8               [12] 1906 	mov	a,r0
      001123 25 38            [12] 1907 	add	a, _RenderMenuOnBuffer_sloc0_1_0
      001125 F8               [12] 1908 	mov	r0,a
      001126 EA               [12] 1909 	mov	a,r2
      001127 35 39            [12] 1910 	addc	a, (_RenderMenuOnBuffer_sloc0_1_0 + 1)
      001129 FA               [12] 1911 	mov	r2,a
      00112A 90 01 7B         [24] 1912 	mov	dptr,#_RenderActiveMenu_PARM_2
      00112D EC               [12] 1913 	mov	a,r4
      00112E F0               [24] 1914 	movx	@dptr,a
      00112F EB               [12] 1915 	mov	a,r3
      001130 A3               [24] 1916 	inc	dptr
      001131 F0               [24] 1917 	movx	@dptr,a
      001132 90 01 7D         [24] 1918 	mov	dptr,#_RenderActiveMenu_PARM_3
      001135 E8               [12] 1919 	mov	a,r0
      001136 F0               [24] 1920 	movx	@dptr,a
      001137 EA               [12] 1921 	mov	a,r2
      001138 A3               [24] 1922 	inc	dptr
      001139 F0               [24] 1923 	movx	@dptr,a
      00113A 8D 82            [24] 1924 	mov	dpl, r5
      00113C 8E 83            [24] 1925 	mov	dph, r6
      00113E 8F F0            [24] 1926 	mov	b, r7
                                   1927 ;	../Common/MenuMgr.c:230: }
      001140 02 0C 19         [24] 1928 	ljmp	_RenderActiveMenu
                                   1929 ;------------------------------------------------------------
                                   1930 ;Allocation info for local variables in function 'IsParentMenu'
                                   1931 ;------------------------------------------------------------
                                   1932 ;sloc0         Allocated with name '_IsParentMenu_sloc0_1_0'
                                   1933 ;i             Allocated with name '_IsParentMenu_i_10000_106'
                                   1934 ;------------------------------------------------------------
                                   1935 ;	../Common/MenuMgr.c:232: int IsParentMenu()
                                   1936 ;	-----------------------------------------
                                   1937 ;	 function IsParentMenu
                                   1938 ;	-----------------------------------------
      001143                       1939 _IsParentMenu:
                                   1940 ;	../Common/MenuMgr.c:235: for (i = 0; MenuDefinitions[i].text != 0; ++i)
      001143 90 01 6D         [24] 1941 	mov	dptr,#_MenuController
      001146 E0               [24] 1942 	movx	a,@dptr
      001147 75 F0 05         [24] 1943 	mov	b,#0x05
      00114A A4               [48] 1944 	mul	ab
      00114B F5 3A            [12] 1945 	mov	_IsParentMenu_sloc0_1_0,a
      00114D 85 F0 3B         [24] 1946 	mov	(_IsParentMenu_sloc0_1_0 + 1),b
      001150 7C 00            [12] 1947 	mov	r4,#0x00
      001152 7D 00            [12] 1948 	mov	r5,#0x00
      001154                       1949 00105$:
      001154 90 02 BD         [24] 1950 	mov	dptr,#__mulint_PARM_2
      001157 EC               [12] 1951 	mov	a,r4
      001158 F0               [24] 1952 	movx	@dptr,a
      001159 ED               [12] 1953 	mov	a,r5
      00115A A3               [24] 1954 	inc	dptr
      00115B F0               [24] 1955 	movx	@dptr,a
      00115C 90 00 05         [24] 1956 	mov	dptr,#0x0005
      00115F C0 05            [24] 1957 	push	ar5
      001161 C0 04            [24] 1958 	push	ar4
      001163 12 39 82         [24] 1959 	lcall	__mulint
      001166 AA 82            [24] 1960 	mov	r2, dpl
      001168 AB 83            [24] 1961 	mov	r3, dph
      00116A D0 04            [24] 1962 	pop	ar4
      00116C D0 05            [24] 1963 	pop	ar5
      00116E EA               [12] 1964 	mov	a,r2
      00116F 24 A3            [12] 1965 	add	a, #_MenuDefinitions
      001171 FA               [12] 1966 	mov	r2,a
      001172 EB               [12] 1967 	mov	a,r3
      001173 34 00            [12] 1968 	addc	a, #(_MenuDefinitions >> 8)
      001175 FB               [12] 1969 	mov	r3,a
      001176 8A 82            [24] 1970 	mov	dpl,r2
      001178 8B 83            [24] 1971 	mov	dph,r3
      00117A E0               [24] 1972 	movx	a,@dptr
      00117B F8               [12] 1973 	mov	r0,a
      00117C A3               [24] 1974 	inc	dptr
      00117D E0               [24] 1975 	movx	a,@dptr
      00117E F9               [12] 1976 	mov	r1,a
      00117F A3               [24] 1977 	inc	dptr
      001180 E0               [24] 1978 	movx	a,@dptr
      001181 E8               [12] 1979 	mov	a,r0
      001182 49               [12] 1980 	orl	a,r1
      001183 60 2C            [24] 1981 	jz	00103$
                                   1982 ;	../Common/MenuMgr.c:237: if (MenuDefinitions[i].parent == MenuDefinitions[MenuController.currentSelectedMenuIndex].id)
      001185 8A 82            [24] 1983 	mov	dpl,r2
      001187 8B 83            [24] 1984 	mov	dph,r3
      001189 A3               [24] 1985 	inc	dptr
      00118A A3               [24] 1986 	inc	dptr
      00118B A3               [24] 1987 	inc	dptr
      00118C E0               [24] 1988 	movx	a,@dptr
      00118D FF               [12] 1989 	mov	r7,a
      00118E E5 3A            [12] 1990 	mov	a,_IsParentMenu_sloc0_1_0
      001190 24 A3            [12] 1991 	add	a, #_MenuDefinitions
      001192 FB               [12] 1992 	mov	r3,a
      001193 E5 3B            [12] 1993 	mov	a,(_IsParentMenu_sloc0_1_0 + 1)
      001195 34 00            [12] 1994 	addc	a, #(_MenuDefinitions >> 8)
      001197 FE               [12] 1995 	mov	r6,a
      001198 8B 82            [24] 1996 	mov	dpl,r3
      00119A 8E 83            [24] 1997 	mov	dph,r6
      00119C A3               [24] 1998 	inc	dptr
      00119D A3               [24] 1999 	inc	dptr
      00119E A3               [24] 2000 	inc	dptr
      00119F A3               [24] 2001 	inc	dptr
      0011A0 E0               [24] 2002 	movx	a,@dptr
      0011A1 FE               [12] 2003 	mov	r6,a
      0011A2 EF               [12] 2004 	mov	a,r7
      0011A3 B5 06 04         [24] 2005 	cjne	a,ar6,00106$
                                   2006 ;	../Common/MenuMgr.c:239: return 1;
      0011A6 90 00 01         [24] 2007 	mov	dptr,#0x0001
      0011A9 22               [24] 2008 	ret
      0011AA                       2009 00106$:
                                   2010 ;	../Common/MenuMgr.c:235: for (i = 0; MenuDefinitions[i].text != 0; ++i)
      0011AA 0C               [12] 2011 	inc	r4
      0011AB BC 00 A6         [24] 2012 	cjne	r4,#0x00,00105$
      0011AE 0D               [12] 2013 	inc	r5
      0011AF 80 A3            [24] 2014 	sjmp	00105$
      0011B1                       2015 00103$:
                                   2016 ;	../Common/MenuMgr.c:242: return 0;
      0011B1 90 00 00         [24] 2017 	mov	dptr,#0x0000
                                   2018 ;	../Common/MenuMgr.c:243: }
      0011B4 22               [24] 2019 	ret
                                   2020 ;------------------------------------------------------------
                                   2021 ;Allocation info for local variables in function 'IsGoBack'
                                   2022 ;------------------------------------------------------------
                                   2023 ;	../Common/MenuMgr.c:245: int IsGoBack()
                                   2024 ;	-----------------------------------------
                                   2025 ;	 function IsGoBack
                                   2026 ;	-----------------------------------------
      0011B5                       2027 _IsGoBack:
                                   2028 ;	../Common/MenuMgr.c:247: return MenuDefinitions[MenuController.currentSelectedMenuIndex].id == MENU_END_SENTINEL;
      0011B5 90 01 6D         [24] 2029 	mov	dptr,#_MenuController
      0011B8 E0               [24] 2030 	movx	a,@dptr
      0011B9 75 F0 05         [24] 2031 	mov	b,#0x05
      0011BC A4               [48] 2032 	mul	ab
      0011BD 24 A3            [12] 2033 	add	a, #_MenuDefinitions
      0011BF FE               [12] 2034 	mov	r6,a
      0011C0 74 00            [12] 2035 	mov	a,#(_MenuDefinitions >> 8)
      0011C2 35 F0            [12] 2036 	addc	a, b
      0011C4 FF               [12] 2037 	mov	r7,a
      0011C5 8E 82            [24] 2038 	mov	dpl,r6
      0011C7 8F 83            [24] 2039 	mov	dph,r7
      0011C9 A3               [24] 2040 	inc	dptr
      0011CA A3               [24] 2041 	inc	dptr
      0011CB A3               [24] 2042 	inc	dptr
      0011CC A3               [24] 2043 	inc	dptr
      0011CD E0               [24] 2044 	movx	a,@dptr
      0011CE FF               [12] 2045 	mov	r7,a
      0011CF BF 01 03         [24] 2046 	cjne	r7,#0x01,00103$
      0011D2 EF               [12] 2047 	mov	a,r7
      0011D3 80 01            [24] 2048 	sjmp	00104$
      0011D5                       2049 00103$:
      0011D5 E4               [12] 2050 	clr	a
      0011D6                       2051 00104$:
      0011D6 FF               [12] 2052 	mov	r7,a
      0011D7 7E 00            [12] 2053 	mov	r6,#0x00
      0011D9 8F 82            [24] 2054 	mov	dpl, r7
      0011DB 8E 83            [24] 2055 	mov	dph, r6
                                   2056 ;	../Common/MenuMgr.c:248: }
      0011DD 22               [24] 2057 	ret
                                   2058 ;------------------------------------------------------------
                                   2059 ;Allocation info for local variables in function 'GoSubMenu'
                                   2060 ;------------------------------------------------------------
                                   2061 ;i             Allocated with name '_GoSubMenu_i_10000_111'
                                   2062 ;------------------------------------------------------------
                                   2063 ;	../Common/MenuMgr.c:250: void GoSubMenu()
                                   2064 ;	-----------------------------------------
                                   2065 ;	 function GoSubMenu
                                   2066 ;	-----------------------------------------
      0011DE                       2067 _GoSubMenu:
                                   2068 ;	../Common/MenuMgr.c:253: for (i = 0; MenuDefinitions[i].text != 0; ++i)
      0011DE 7E 00            [12] 2069 	mov	r6,#0x00
      0011E0 7F 00            [12] 2070 	mov	r7,#0x00
      0011E2                       2071 00105$:
      0011E2 90 02 BD         [24] 2072 	mov	dptr,#__mulint_PARM_2
      0011E5 EE               [12] 2073 	mov	a,r6
      0011E6 F0               [24] 2074 	movx	@dptr,a
      0011E7 EF               [12] 2075 	mov	a,r7
      0011E8 A3               [24] 2076 	inc	dptr
      0011E9 F0               [24] 2077 	movx	@dptr,a
      0011EA 90 00 05         [24] 2078 	mov	dptr,#0x0005
      0011ED C0 07            [24] 2079 	push	ar7
      0011EF C0 06            [24] 2080 	push	ar6
      0011F1 12 39 82         [24] 2081 	lcall	__mulint
      0011F4 AC 82            [24] 2082 	mov	r4, dpl
      0011F6 AD 83            [24] 2083 	mov	r5, dph
      0011F8 D0 06            [24] 2084 	pop	ar6
      0011FA D0 07            [24] 2085 	pop	ar7
      0011FC EC               [12] 2086 	mov	a,r4
      0011FD 24 A3            [12] 2087 	add	a, #_MenuDefinitions
      0011FF FC               [12] 2088 	mov	r4,a
      001200 ED               [12] 2089 	mov	a,r5
      001201 34 00            [12] 2090 	addc	a, #(_MenuDefinitions >> 8)
      001203 FD               [12] 2091 	mov	r5,a
      001204 8C 82            [24] 2092 	mov	dpl,r4
      001206 8D 83            [24] 2093 	mov	dph,r5
      001208 E0               [24] 2094 	movx	a,@dptr
      001209 F9               [12] 2095 	mov	r1,a
      00120A A3               [24] 2096 	inc	dptr
      00120B E0               [24] 2097 	movx	a,@dptr
      00120C FA               [12] 2098 	mov	r2,a
      00120D A3               [24] 2099 	inc	dptr
      00120E E0               [24] 2100 	movx	a,@dptr
      00120F E9               [12] 2101 	mov	a,r1
      001210 4A               [12] 2102 	orl	a,r2
      001211 70 01            [24] 2103 	jnz	00127$
      001213 22               [24] 2104 	ret
      001214                       2105 00127$:
                                   2106 ;	../Common/MenuMgr.c:255: if (MenuDefinitions[i].parent == MenuDefinitions[MenuController.currentSelectedMenuIndex].id)
      001214 8C 82            [24] 2107 	mov	dpl,r4
      001216 8D 83            [24] 2108 	mov	dph,r5
      001218 A3               [24] 2109 	inc	dptr
      001219 A3               [24] 2110 	inc	dptr
      00121A A3               [24] 2111 	inc	dptr
      00121B E0               [24] 2112 	movx	a,@dptr
      00121C FD               [12] 2113 	mov	r5,a
      00121D 90 01 6D         [24] 2114 	mov	dptr,#_MenuController
      001220 E0               [24] 2115 	movx	a,@dptr
      001221 75 F0 05         [24] 2116 	mov	b,#0x05
      001224 A4               [48] 2117 	mul	ab
      001225 24 A3            [12] 2118 	add	a, #_MenuDefinitions
      001227 FB               [12] 2119 	mov	r3,a
      001228 74 00            [12] 2120 	mov	a,#(_MenuDefinitions >> 8)
      00122A 35 F0            [12] 2121 	addc	a, b
      00122C FC               [12] 2122 	mov	r4,a
      00122D 8B 82            [24] 2123 	mov	dpl,r3
      00122F 8C 83            [24] 2124 	mov	dph,r4
      001231 A3               [24] 2125 	inc	dptr
      001232 A3               [24] 2126 	inc	dptr
      001233 A3               [24] 2127 	inc	dptr
      001234 A3               [24] 2128 	inc	dptr
      001235 E0               [24] 2129 	movx	a,@dptr
      001236 FC               [12] 2130 	mov	r4,a
      001237 ED               [12] 2131 	mov	a,r5
      001238 B5 04 65         [24] 2132 	cjne	a,ar4,00106$
                                   2133 ;	../Common/MenuMgr.c:257: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_SUBMENUENTER);
      00123B 7D 00            [12] 2134 	mov	r5,#0x00
      00123D 90 01 EA         [24] 2135 	mov	dptr,#_HandleMenuCommand_PARM_2
      001240 74 03            [12] 2136 	mov	a,#0x03
      001242 F0               [24] 2137 	movx	@dptr,a
      001243 E4               [12] 2138 	clr	a
      001244 A3               [24] 2139 	inc	dptr
      001245 F0               [24] 2140 	movx	@dptr,a
      001246 8C 82            [24] 2141 	mov	dpl, r4
      001248 8D 83            [24] 2142 	mov	dph, r5
      00124A C0 07            [24] 2143 	push	ar7
      00124C C0 06            [24] 2144 	push	ar6
      00124E 12 17 5C         [24] 2145 	lcall	_HandleMenuCommand
      001251 D0 06            [24] 2146 	pop	ar6
      001253 D0 07            [24] 2147 	pop	ar7
                                   2148 ;	../Common/MenuMgr.c:259: MenuController.navStack[MenuController.navStackPtr++] = MenuController.currentSelectedMenuIndex;
      001255 90 01 71         [24] 2149 	mov	dptr,#(_MenuController + 0x0004)
      001258 E0               [24] 2150 	movx	a,@dptr
      001259 FD               [12] 2151 	mov	r5,a
      00125A 04               [12] 2152 	inc	a
      00125B 90 01 71         [24] 2153 	mov	dptr,#(_MenuController + 0x0004)
      00125E F0               [24] 2154 	movx	@dptr,a
      00125F ED               [12] 2155 	mov	a,r5
      001260 24 6E            [12] 2156 	add	a, #(_MenuController + 0x0001)
      001262 FD               [12] 2157 	mov	r5,a
      001263 E4               [12] 2158 	clr	a
      001264 34 01            [12] 2159 	addc	a, #((_MenuController + 0x0001) >> 8)
      001266 FC               [12] 2160 	mov	r4,a
      001267 90 01 6D         [24] 2161 	mov	dptr,#_MenuController
      00126A E0               [24] 2162 	movx	a,@dptr
      00126B 8D 82            [24] 2163 	mov	dpl,r5
      00126D 8C 83            [24] 2164 	mov	dph,r4
      00126F F0               [24] 2165 	movx	@dptr,a
                                   2166 ;	../Common/MenuMgr.c:260: MenuController.currentSelectedMenuIndex = i;
      001270 8E 05            [24] 2167 	mov	ar5,r6
      001272 90 01 6D         [24] 2168 	mov	dptr,#_MenuController
      001275 ED               [12] 2169 	mov	a,r5
      001276 F0               [24] 2170 	movx	@dptr,a
                                   2171 ;	../Common/MenuMgr.c:261: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
      001277 ED               [12] 2172 	mov	a,r5
      001278 75 F0 05         [24] 2173 	mov	b,#0x05
      00127B A4               [48] 2174 	mul	ab
      00127C 24 A3            [12] 2175 	add	a, #_MenuDefinitions
      00127E FC               [12] 2176 	mov	r4,a
      00127F 74 00            [12] 2177 	mov	a,#(_MenuDefinitions >> 8)
      001281 35 F0            [12] 2178 	addc	a, b
      001283 FD               [12] 2179 	mov	r5,a
      001284 8C 82            [24] 2180 	mov	dpl,r4
      001286 8D 83            [24] 2181 	mov	dph,r5
      001288 A3               [24] 2182 	inc	dptr
      001289 A3               [24] 2183 	inc	dptr
      00128A A3               [24] 2184 	inc	dptr
      00128B A3               [24] 2185 	inc	dptr
      00128C E0               [24] 2186 	movx	a,@dptr
      00128D FD               [12] 2187 	mov	r5,a
      00128E 7C 00            [12] 2188 	mov	r4,#0x00
      001290 90 01 EA         [24] 2189 	mov	dptr,#_HandleMenuCommand_PARM_2
      001293 74 01            [12] 2190 	mov	a,#0x01
      001295 F0               [24] 2191 	movx	@dptr,a
      001296 E4               [12] 2192 	clr	a
      001297 A3               [24] 2193 	inc	dptr
      001298 F0               [24] 2194 	movx	@dptr,a
      001299 8D 82            [24] 2195 	mov	dpl, r5
      00129B 8C 83            [24] 2196 	mov	dph, r4
                                   2197 ;	../Common/MenuMgr.c:262: break;
      00129D 02 17 5C         [24] 2198 	ljmp	_HandleMenuCommand
      0012A0                       2199 00106$:
                                   2200 ;	../Common/MenuMgr.c:253: for (i = 0; MenuDefinitions[i].text != 0; ++i)
      0012A0 0E               [12] 2201 	inc	r6
      0012A1 BE 00 01         [24] 2202 	cjne	r6,#0x00,00130$
      0012A4 0F               [12] 2203 	inc	r7
      0012A5                       2204 00130$:
                                   2205 ;	../Common/MenuMgr.c:265: }
      0012A5 02 11 E2         [24] 2206 	ljmp	00105$
                                   2207 ;------------------------------------------------------------
                                   2208 ;Allocation info for local variables in function 'GoRight'
                                   2209 ;------------------------------------------------------------
                                   2210 ;i             Allocated with name '_GoRight_i_10000_115'
                                   2211 ;currentParent Allocated with name '_GoRight_currentParent_10000_115'
                                   2212 ;------------------------------------------------------------
                                   2213 ;	../Common/MenuMgr.c:267: void GoRight()
                                   2214 ;	-----------------------------------------
                                   2215 ;	 function GoRight
                                   2216 ;	-----------------------------------------
      0012A8                       2217 _GoRight:
                                   2218 ;	../Common/MenuMgr.c:272: currentParent = MenuDefinitions[MenuController.currentSelectedMenuIndex].parent;
      0012A8 90 01 6D         [24] 2219 	mov	dptr,#_MenuController
      0012AB E0               [24] 2220 	movx	a,@dptr
      0012AC FF               [12] 2221 	mov	r7,a
      0012AD 75 F0 05         [24] 2222 	mov	b,#0x05
      0012B0 A4               [48] 2223 	mul	ab
      0012B1 24 A3            [12] 2224 	add	a, #_MenuDefinitions
      0012B3 FD               [12] 2225 	mov	r5,a
      0012B4 74 00            [12] 2226 	mov	a,#(_MenuDefinitions >> 8)
      0012B6 35 F0            [12] 2227 	addc	a, b
      0012B8 FE               [12] 2228 	mov	r6,a
      0012B9 8D 82            [24] 2229 	mov	dpl,r5
      0012BB 8E 83            [24] 2230 	mov	dph,r6
      0012BD A3               [24] 2231 	inc	dptr
      0012BE A3               [24] 2232 	inc	dptr
      0012BF A3               [24] 2233 	inc	dptr
      0012C0 E0               [24] 2234 	movx	a,@dptr
      0012C1 FE               [12] 2235 	mov	r6,a
                                   2236 ;	../Common/MenuMgr.c:273: i = MenuController.currentSelectedMenuIndex + 1;
      0012C2 7D 00            [12] 2237 	mov	r5,#0x00
      0012C4 0F               [12] 2238 	inc	r7
      0012C5 BF 00 01         [24] 2239 	cjne	r7,#0x00,00127$
      0012C8 0D               [12] 2240 	inc	r5
      0012C9                       2241 00127$:
                                   2242 ;	../Common/MenuMgr.c:274: while (MenuDefinitions[i].text != 0)
      0012C9                       2243 00104$:
      0012C9 90 02 BD         [24] 2244 	mov	dptr,#__mulint_PARM_2
      0012CC EF               [12] 2245 	mov	a,r7
      0012CD F0               [24] 2246 	movx	@dptr,a
      0012CE ED               [12] 2247 	mov	a,r5
      0012CF A3               [24] 2248 	inc	dptr
      0012D0 F0               [24] 2249 	movx	@dptr,a
      0012D1 90 00 05         [24] 2250 	mov	dptr,#0x0005
      0012D4 C0 07            [24] 2251 	push	ar7
      0012D6 C0 06            [24] 2252 	push	ar6
      0012D8 C0 05            [24] 2253 	push	ar5
      0012DA 12 39 82         [24] 2254 	lcall	__mulint
      0012DD AB 82            [24] 2255 	mov	r3, dpl
      0012DF AC 83            [24] 2256 	mov	r4, dph
      0012E1 D0 05            [24] 2257 	pop	ar5
      0012E3 D0 06            [24] 2258 	pop	ar6
      0012E5 D0 07            [24] 2259 	pop	ar7
      0012E7 EB               [12] 2260 	mov	a,r3
      0012E8 24 A3            [12] 2261 	add	a, #_MenuDefinitions
      0012EA FB               [12] 2262 	mov	r3,a
      0012EB EC               [12] 2263 	mov	a,r4
      0012EC 34 00            [12] 2264 	addc	a, #(_MenuDefinitions >> 8)
      0012EE FC               [12] 2265 	mov	r4,a
      0012EF 8B 82            [24] 2266 	mov	dpl,r3
      0012F1 8C 83            [24] 2267 	mov	dph,r4
      0012F3 E0               [24] 2268 	movx	a,@dptr
      0012F4 F8               [12] 2269 	mov	r0,a
      0012F5 A3               [24] 2270 	inc	dptr
      0012F6 E0               [24] 2271 	movx	a,@dptr
      0012F7 F9               [12] 2272 	mov	r1,a
      0012F8 A3               [24] 2273 	inc	dptr
      0012F9 E0               [24] 2274 	movx	a,@dptr
      0012FA E8               [12] 2275 	mov	a,r0
      0012FB 49               [12] 2276 	orl	a,r1
      0012FC 60 42            [24] 2277 	jz	00107$
                                   2278 ;	../Common/MenuMgr.c:276: if (MenuDefinitions[i].parent == currentParent)
      0012FE 8B 82            [24] 2279 	mov	dpl,r3
      001300 8C 83            [24] 2280 	mov	dph,r4
      001302 A3               [24] 2281 	inc	dptr
      001303 A3               [24] 2282 	inc	dptr
      001304 A3               [24] 2283 	inc	dptr
      001305 E0               [24] 2284 	movx	a,@dptr
      001306 B5 06 30         [24] 2285 	cjne	a,ar6,00102$
                                   2286 ;	../Common/MenuMgr.c:278: MenuController.currentSelectedMenuIndex = i;
      001309 8F 04            [24] 2287 	mov	ar4,r7
      00130B 90 01 6D         [24] 2288 	mov	dptr,#_MenuController
      00130E EC               [12] 2289 	mov	a,r4
      00130F F0               [24] 2290 	movx	@dptr,a
                                   2291 ;	../Common/MenuMgr.c:279: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
      001310 EC               [12] 2292 	mov	a,r4
      001311 75 F0 05         [24] 2293 	mov	b,#0x05
      001314 A4               [48] 2294 	mul	ab
      001315 24 A3            [12] 2295 	add	a, #_MenuDefinitions
      001317 FB               [12] 2296 	mov	r3,a
      001318 74 00            [12] 2297 	mov	a,#(_MenuDefinitions >> 8)
      00131A 35 F0            [12] 2298 	addc	a, b
      00131C FC               [12] 2299 	mov	r4,a
      00131D 8B 82            [24] 2300 	mov	dpl,r3
      00131F 8C 83            [24] 2301 	mov	dph,r4
      001321 A3               [24] 2302 	inc	dptr
      001322 A3               [24] 2303 	inc	dptr
      001323 A3               [24] 2304 	inc	dptr
      001324 A3               [24] 2305 	inc	dptr
      001325 E0               [24] 2306 	movx	a,@dptr
      001326 FC               [12] 2307 	mov	r4,a
      001327 7B 00            [12] 2308 	mov	r3,#0x00
      001329 90 01 EA         [24] 2309 	mov	dptr,#_HandleMenuCommand_PARM_2
      00132C 74 01            [12] 2310 	mov	a,#0x01
      00132E F0               [24] 2311 	movx	@dptr,a
      00132F E4               [12] 2312 	clr	a
      001330 A3               [24] 2313 	inc	dptr
      001331 F0               [24] 2314 	movx	@dptr,a
      001332 8C 82            [24] 2315 	mov	dpl, r4
      001334 8B 83            [24] 2316 	mov	dph, r3
                                   2317 ;	../Common/MenuMgr.c:280: break;
      001336 02 17 5C         [24] 2318 	ljmp	_HandleMenuCommand
      001339                       2319 00102$:
                                   2320 ;	../Common/MenuMgr.c:284: i++;
      001339 0F               [12] 2321 	inc	r7
      00133A BF 00 8C         [24] 2322 	cjne	r7,#0x00,00104$
      00133D 0D               [12] 2323 	inc	r5
      00133E 80 89            [24] 2324 	sjmp	00104$
      001340                       2325 00107$:
                                   2326 ;	../Common/MenuMgr.c:288: }
      001340 22               [24] 2327 	ret
                                   2328 ;------------------------------------------------------------
                                   2329 ;Allocation info for local variables in function 'GoLeft'
                                   2330 ;------------------------------------------------------------
                                   2331 ;i             Allocated with name '_GoLeft_i_10000_119'
                                   2332 ;currentParent Allocated with name '_GoLeft_currentParent_10000_119'
                                   2333 ;------------------------------------------------------------
                                   2334 ;	../Common/MenuMgr.c:290: void GoLeft()
                                   2335 ;	-----------------------------------------
                                   2336 ;	 function GoLeft
                                   2337 ;	-----------------------------------------
      001341                       2338 _GoLeft:
                                   2339 ;	../Common/MenuMgr.c:295: currentParent = MenuDefinitions[MenuController.currentSelectedMenuIndex].parent;
      001341 90 01 6D         [24] 2340 	mov	dptr,#_MenuController
      001344 E0               [24] 2341 	movx	a,@dptr
      001345 FF               [12] 2342 	mov	r7,a
      001346 75 F0 05         [24] 2343 	mov	b,#0x05
      001349 A4               [48] 2344 	mul	ab
      00134A 24 A3            [12] 2345 	add	a, #_MenuDefinitions
      00134C FD               [12] 2346 	mov	r5,a
      00134D 74 00            [12] 2347 	mov	a,#(_MenuDefinitions >> 8)
      00134F 35 F0            [12] 2348 	addc	a, b
      001351 FE               [12] 2349 	mov	r6,a
      001352 8D 82            [24] 2350 	mov	dpl,r5
      001354 8E 83            [24] 2351 	mov	dph,r6
      001356 A3               [24] 2352 	inc	dptr
      001357 A3               [24] 2353 	inc	dptr
      001358 A3               [24] 2354 	inc	dptr
      001359 E0               [24] 2355 	movx	a,@dptr
      00135A FE               [12] 2356 	mov	r6,a
                                   2357 ;	../Common/MenuMgr.c:296: i = MenuController.currentSelectedMenuIndex - 1;
      00135B 7D 00            [12] 2358 	mov	r5,#0x00
      00135D 1F               [12] 2359 	dec	r7
      00135E BF FF 01         [24] 2360 	cjne	r7,#0xff,00127$
      001361 1D               [12] 2361 	dec	r5
      001362                       2362 00127$:
                                   2363 ;	../Common/MenuMgr.c:297: while (i >= 0)
      001362                       2364 00104$:
      001362 ED               [12] 2365 	mov	a,r5
      001363 20 E7 68         [24] 2366 	jb	acc.7,00107$
                                   2367 ;	../Common/MenuMgr.c:299: if (MenuDefinitions[i].parent == currentParent)
      001366 90 02 BD         [24] 2368 	mov	dptr,#__mulint_PARM_2
      001369 EF               [12] 2369 	mov	a,r7
      00136A F0               [24] 2370 	movx	@dptr,a
      00136B ED               [12] 2371 	mov	a,r5
      00136C A3               [24] 2372 	inc	dptr
      00136D F0               [24] 2373 	movx	@dptr,a
      00136E 90 00 05         [24] 2374 	mov	dptr,#0x0005
      001371 C0 07            [24] 2375 	push	ar7
      001373 C0 06            [24] 2376 	push	ar6
      001375 C0 05            [24] 2377 	push	ar5
      001377 12 39 82         [24] 2378 	lcall	__mulint
      00137A AB 82            [24] 2379 	mov	r3, dpl
      00137C AC 83            [24] 2380 	mov	r4, dph
      00137E D0 05            [24] 2381 	pop	ar5
      001380 D0 06            [24] 2382 	pop	ar6
      001382 D0 07            [24] 2383 	pop	ar7
      001384 EB               [12] 2384 	mov	a,r3
      001385 24 A3            [12] 2385 	add	a, #_MenuDefinitions
      001387 FB               [12] 2386 	mov	r3,a
      001388 EC               [12] 2387 	mov	a,r4
      001389 34 00            [12] 2388 	addc	a, #(_MenuDefinitions >> 8)
      00138B FC               [12] 2389 	mov	r4,a
      00138C 8B 82            [24] 2390 	mov	dpl,r3
      00138E 8C 83            [24] 2391 	mov	dph,r4
      001390 A3               [24] 2392 	inc	dptr
      001391 A3               [24] 2393 	inc	dptr
      001392 A3               [24] 2394 	inc	dptr
      001393 E0               [24] 2395 	movx	a,@dptr
      001394 B5 06 30         [24] 2396 	cjne	a,ar6,00102$
                                   2397 ;	../Common/MenuMgr.c:301: MenuController.currentSelectedMenuIndex = i;
      001397 8F 04            [24] 2398 	mov	ar4,r7
      001399 90 01 6D         [24] 2399 	mov	dptr,#_MenuController
      00139C EC               [12] 2400 	mov	a,r4
      00139D F0               [24] 2401 	movx	@dptr,a
                                   2402 ;	../Common/MenuMgr.c:302: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
      00139E EC               [12] 2403 	mov	a,r4
      00139F 75 F0 05         [24] 2404 	mov	b,#0x05
      0013A2 A4               [48] 2405 	mul	ab
      0013A3 24 A3            [12] 2406 	add	a, #_MenuDefinitions
      0013A5 FB               [12] 2407 	mov	r3,a
      0013A6 74 00            [12] 2408 	mov	a,#(_MenuDefinitions >> 8)
      0013A8 35 F0            [12] 2409 	addc	a, b
      0013AA FC               [12] 2410 	mov	r4,a
      0013AB 8B 82            [24] 2411 	mov	dpl,r3
      0013AD 8C 83            [24] 2412 	mov	dph,r4
      0013AF A3               [24] 2413 	inc	dptr
      0013B0 A3               [24] 2414 	inc	dptr
      0013B1 A3               [24] 2415 	inc	dptr
      0013B2 A3               [24] 2416 	inc	dptr
      0013B3 E0               [24] 2417 	movx	a,@dptr
      0013B4 FC               [12] 2418 	mov	r4,a
      0013B5 7B 00            [12] 2419 	mov	r3,#0x00
      0013B7 90 01 EA         [24] 2420 	mov	dptr,#_HandleMenuCommand_PARM_2
      0013BA 74 01            [12] 2421 	mov	a,#0x01
      0013BC F0               [24] 2422 	movx	@dptr,a
      0013BD E4               [12] 2423 	clr	a
      0013BE A3               [24] 2424 	inc	dptr
      0013BF F0               [24] 2425 	movx	@dptr,a
      0013C0 8C 82            [24] 2426 	mov	dpl, r4
      0013C2 8B 83            [24] 2427 	mov	dph, r3
                                   2428 ;	../Common/MenuMgr.c:303: break;
      0013C4 02 17 5C         [24] 2429 	ljmp	_HandleMenuCommand
      0013C7                       2430 00102$:
                                   2431 ;	../Common/MenuMgr.c:307: i--;
      0013C7 1F               [12] 2432 	dec	r7
      0013C8 BF FF 01         [24] 2433 	cjne	r7,#0xff,00131$
      0013CB 1D               [12] 2434 	dec	r5
      0013CC                       2435 00131$:
      0013CC 80 94            [24] 2436 	sjmp	00104$
      0013CE                       2437 00107$:
                                   2438 ;	../Common/MenuMgr.c:311: }
      0013CE 22               [24] 2439 	ret
                                   2440 ;------------------------------------------------------------
                                   2441 ;Allocation info for local variables in function 'GoBackUp'
                                   2442 ;------------------------------------------------------------
                                   2443 ;	../Common/MenuMgr.c:313: void GoBackUp()
                                   2444 ;	-----------------------------------------
                                   2445 ;	 function GoBackUp
                                   2446 ;	-----------------------------------------
      0013CF                       2447 _GoBackUp:
                                   2448 ;	../Common/MenuMgr.c:315: MenuController.currentSelectedMenuIndex = 0;
      0013CF 90 01 6D         [24] 2449 	mov	dptr,#_MenuController
      0013D2 E4               [12] 2450 	clr	a
      0013D3 F0               [24] 2451 	movx	@dptr,a
                                   2452 ;	../Common/MenuMgr.c:317: if (MenuController.navStackPtr > 0)
      0013D4 90 01 71         [24] 2453 	mov	dptr,#(_MenuController + 0x0004)
      0013D7 E0               [24] 2454 	movx	a,@dptr
      0013D8 FF               [12] 2455 	mov	r7,a
      0013D9 60 6B            [24] 2456 	jz	00103$
                                   2457 ;	../Common/MenuMgr.c:319: MenuController.currentSelectedMenuIndex = MenuController.navStack[--MenuController.navStackPtr];
      0013DB 1F               [12] 2458 	dec	r7
      0013DC 90 01 71         [24] 2459 	mov	dptr,#(_MenuController + 0x0004)
      0013DF EF               [12] 2460 	mov	a,r7
      0013E0 F0               [24] 2461 	movx	@dptr,a
      0013E1 EF               [12] 2462 	mov	a,r7
      0013E2 24 6E            [12] 2463 	add	a, #(_MenuController + 0x0001)
      0013E4 F5 82            [12] 2464 	mov	dpl,a
      0013E6 E4               [12] 2465 	clr	a
      0013E7 34 01            [12] 2466 	addc	a, #((_MenuController + 0x0001) >> 8)
      0013E9 F5 83            [12] 2467 	mov	dph,a
      0013EB E0               [24] 2468 	movx	a,@dptr
      0013EC FF               [12] 2469 	mov	r7,a
      0013ED 90 01 6D         [24] 2470 	mov	dptr,#_MenuController
      0013F0 F0               [24] 2471 	movx	@dptr,a
                                   2472 ;	../Common/MenuMgr.c:320: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_SUBMENUEXIT);
      0013F1 EF               [12] 2473 	mov	a,r7
      0013F2 75 F0 05         [24] 2474 	mov	b,#0x05
      0013F5 A4               [48] 2475 	mul	ab
      0013F6 24 A3            [12] 2476 	add	a, #_MenuDefinitions
      0013F8 FE               [12] 2477 	mov	r6,a
      0013F9 74 00            [12] 2478 	mov	a,#(_MenuDefinitions >> 8)
      0013FB 35 F0            [12] 2479 	addc	a, b
      0013FD FF               [12] 2480 	mov	r7,a
      0013FE 8E 82            [24] 2481 	mov	dpl,r6
      001400 8F 83            [24] 2482 	mov	dph,r7
      001402 A3               [24] 2483 	inc	dptr
      001403 A3               [24] 2484 	inc	dptr
      001404 A3               [24] 2485 	inc	dptr
      001405 A3               [24] 2486 	inc	dptr
      001406 E0               [24] 2487 	movx	a,@dptr
      001407 FF               [12] 2488 	mov	r7,a
      001408 7E 00            [12] 2489 	mov	r6,#0x00
      00140A 90 01 EA         [24] 2490 	mov	dptr,#_HandleMenuCommand_PARM_2
      00140D 74 04            [12] 2491 	mov	a,#0x04
      00140F F0               [24] 2492 	movx	@dptr,a
      001410 E4               [12] 2493 	clr	a
      001411 A3               [24] 2494 	inc	dptr
      001412 F0               [24] 2495 	movx	@dptr,a
      001413 8F 82            [24] 2496 	mov	dpl, r7
      001415 8E 83            [24] 2497 	mov	dph, r6
      001417 12 17 5C         [24] 2498 	lcall	_HandleMenuCommand
                                   2499 ;	../Common/MenuMgr.c:321: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
      00141A 90 01 6D         [24] 2500 	mov	dptr,#_MenuController
      00141D E0               [24] 2501 	movx	a,@dptr
      00141E 75 F0 05         [24] 2502 	mov	b,#0x05
      001421 A4               [48] 2503 	mul	ab
      001422 24 A3            [12] 2504 	add	a, #_MenuDefinitions
      001424 FE               [12] 2505 	mov	r6,a
      001425 74 00            [12] 2506 	mov	a,#(_MenuDefinitions >> 8)
      001427 35 F0            [12] 2507 	addc	a, b
      001429 FF               [12] 2508 	mov	r7,a
      00142A 8E 82            [24] 2509 	mov	dpl,r6
      00142C 8F 83            [24] 2510 	mov	dph,r7
      00142E A3               [24] 2511 	inc	dptr
      00142F A3               [24] 2512 	inc	dptr
      001430 A3               [24] 2513 	inc	dptr
      001431 A3               [24] 2514 	inc	dptr
      001432 E0               [24] 2515 	movx	a,@dptr
      001433 FF               [12] 2516 	mov	r7,a
      001434 7E 00            [12] 2517 	mov	r6,#0x00
      001436 90 01 EA         [24] 2518 	mov	dptr,#_HandleMenuCommand_PARM_2
      001439 74 01            [12] 2519 	mov	a,#0x01
      00143B F0               [24] 2520 	movx	@dptr,a
      00143C E4               [12] 2521 	clr	a
      00143D A3               [24] 2522 	inc	dptr
      00143E F0               [24] 2523 	movx	@dptr,a
      00143F 8F 82            [24] 2524 	mov	dpl, r7
      001441 8E 83            [24] 2525 	mov	dph, r6
                                   2526 ;	../Common/MenuMgr.c:323: }
      001443 02 17 5C         [24] 2527 	ljmp	_HandleMenuCommand
      001446                       2528 00103$:
      001446 22               [24] 2529 	ret
                                   2530 	.area CSEG    (CODE)
                                   2531 	.area CONST   (CODE)
                                   2532 	.area CONST   (CODE)
      003AFA                       2533 ___str_0:
      003AFA 4D 65 6E 75 20 69 74  2534 	.ascii "Menu item count"
             65 6D 20 63 6F 75 6E
             74
      003B09 00                    2535 	.db 0x00
                                   2536 	.area CSEG    (CODE)
                                   2537 	.area XINIT   (CODE)
                                   2538 	.area CABS    (ABS,CODE)
