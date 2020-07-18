                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module MenuMgr
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
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
      000008                        447 _RenderActiveMenu_sloc0_1_0:
      000008                        448 	.ds 2
      00000A                        449 _RenderActiveMenu_sloc1_1_0:
      00000A                        450 	.ds 2
      00000C                        451 _RenderActiveMenu_sloc2_1_0:
      00000C                        452 	.ds 2
      00000E                        453 _RenderActiveMenu_sloc3_1_0:
      00000E                        454 	.ds 2
      000010                        455 _RenderActiveMenu_sloc4_1_0:
      000010                        456 	.ds 2
      000012                        457 _RenderActiveMenu_sloc5_1_0:
      000012                        458 	.ds 3
      000015                        459 _GetMenuItemExtent_sloc0_1_0:
      000015                        460 	.ds 2
      000017                        461 _GetMenuItemExtent_sloc1_1_0:
      000017                        462 	.ds 2
      000019                        463 _GetMenuItemExtent_sloc2_1_0:
      000019                        464 	.ds 2
      00001B                        465 _GetMenuItemExtent_sloc3_1_0:
      00001B                        466 	.ds 2
      00001D                        467 _GetMenuItemExtent_sloc4_1_0:
      00001D                        468 	.ds 2
      00001F                        469 _GetMenuItemExtent_sloc5_1_0:
      00001F                        470 	.ds 3
      000022                        471 _RenderMenuOnBuffer_sloc0_1_0:
      000022                        472 	.ds 2
      000024                        473 _IsParentMenu_sloc0_1_0:
      000024                        474 	.ds 2
      000026                        475 _GoRight_sloc0_1_0:
      000026                        476 	.ds 2
                                    477 ;--------------------------------------------------------
                                    478 ; overlayable items in internal ram 
                                    479 ;--------------------------------------------------------
                                    480 ;--------------------------------------------------------
                                    481 ; indirectly addressable internal ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area ISEG    (DATA)
                                    484 ;--------------------------------------------------------
                                    485 ; absolute internal ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area IABS    (ABS,DATA)
                                    488 	.area IABS    (ABS,DATA)
                                    489 ;--------------------------------------------------------
                                    490 ; bit data
                                    491 ;--------------------------------------------------------
                                    492 	.area BSEG    (BIT)
                                    493 ;--------------------------------------------------------
                                    494 ; paged external ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area PSEG    (PAG,XDATA)
                                    497 ;--------------------------------------------------------
                                    498 ; external ram data
                                    499 ;--------------------------------------------------------
                                    500 	.area XSEG    (XDATA)
      0000A3                        501 _MenuDefinitions::
      0000A3                        502 	.ds 200
      00016B                        503 _MenuDefinitionCounter::
      00016B                        504 	.ds 2
      00016D                        505 _MenuController::
      00016D                        506 	.ds 6
      000173                        507 _AddMenuDefinition_PARM_2:
      000173                        508 	.ds 2
      000175                        509 _AddMenuDefinition_PARM_3:
      000175                        510 	.ds 2
      000177                        511 _AddMenuDefinition_text_65536_61:
      000177                        512 	.ds 3
      00017A                        513 _MenuNavigation_navType_65536_65:
      00017A                        514 	.ds 1
      00017B                        515 _RenderActiveMenu_PARM_2:
      00017B                        516 	.ds 2
      00017D                        517 _RenderActiveMenu_PARM_3:
      00017D                        518 	.ds 2
      00017F                        519 _RenderActiveMenu_pDisplay_65536_71:
      00017F                        520 	.ds 3
      000182                        521 _RenderActiveMenu_ch_65536_72:
      000182                        522 	.ds 1
      000183                        523 _RenderActiveMenu_currentPos_65536_72:
      000183                        524 	.ds 2
      000185                        525 _GetMenuItemExtent_PARM_2:
      000185                        526 	.ds 3
      000188                        527 _GetMenuItemExtent_PARM_3:
      000188                        528 	.ds 3
      00018B                        529 _GetMenuItemExtent_menuItem_65536_85:
      00018B                        530 	.ds 2
      00018D                        531 _GetMenuItemExtent_currentPos_65536_86:
      00018D                        532 	.ds 2
      00018F                        533 _RenderMenuOnBuffer_PARM_2:
      00018F                        534 	.ds 2
      000191                        535 _RenderMenuOnBuffer_pBuffer_65536_94:
      000191                        536 	.ds 3
      000194                        537 _RenderMenuOnBuffer_startPos_131072_96:
      000194                        538 	.ds 2
      000196                        539 _RenderMenuOnBuffer_endPos_131072_96:
      000196                        540 	.ds 2
                                    541 ;--------------------------------------------------------
                                    542 ; absolute external ram data
                                    543 ;--------------------------------------------------------
                                    544 	.area XABS    (ABS,XDATA)
                                    545 ;--------------------------------------------------------
                                    546 ; external initialized ram data
                                    547 ;--------------------------------------------------------
                                    548 	.area XISEG   (XDATA)
                                    549 	.area HOME    (CODE)
                                    550 	.area GSINIT0 (CODE)
                                    551 	.area GSINIT1 (CODE)
                                    552 	.area GSINIT2 (CODE)
                                    553 	.area GSINIT3 (CODE)
                                    554 	.area GSINIT4 (CODE)
                                    555 	.area GSINIT5 (CODE)
                                    556 	.area GSINIT  (CODE)
                                    557 	.area GSFINAL (CODE)
                                    558 	.area CSEG    (CODE)
                                    559 ;--------------------------------------------------------
                                    560 ; global & static initialisations
                                    561 ;--------------------------------------------------------
                                    562 	.area HOME    (CODE)
                                    563 	.area GSINIT  (CODE)
                                    564 	.area GSFINAL (CODE)
                                    565 	.area GSINIT  (CODE)
                                    566 ;--------------------------------------------------------
                                    567 ; Home
                                    568 ;--------------------------------------------------------
                                    569 	.area HOME    (CODE)
                                    570 	.area HOME    (CODE)
                                    571 ;--------------------------------------------------------
                                    572 ; code
                                    573 ;--------------------------------------------------------
                                    574 	.area CSEG    (CODE)
                                    575 ;------------------------------------------------------------
                                    576 ;Allocation info for local variables in function 'InitialiseMenuDefinitions'
                                    577 ;------------------------------------------------------------
                                    578 ;	../Common/MenuMgr.c:47: void InitialiseMenuDefinitions()
                                    579 ;	-----------------------------------------
                                    580 ;	 function InitialiseMenuDefinitions
                                    581 ;	-----------------------------------------
      000A87                        582 _InitialiseMenuDefinitions:
                           000007   583 	ar7 = 0x07
                           000006   584 	ar6 = 0x06
                           000005   585 	ar5 = 0x05
                           000004   586 	ar4 = 0x04
                           000003   587 	ar3 = 0x03
                           000002   588 	ar2 = 0x02
                           000001   589 	ar1 = 0x01
                           000000   590 	ar0 = 0x00
                                    591 ;	../Common/MenuMgr.c:49: MenuDefinitionCounter = 0;
      000A87 90 01 6B         [24]  592 	mov	dptr,#_MenuDefinitionCounter
      000A8A E4               [12]  593 	clr	a
      000A8B F0               [24]  594 	movx	@dptr,a
      000A8C A3               [24]  595 	inc	dptr
      000A8D F0               [24]  596 	movx	@dptr,a
                                    597 ;	../Common/MenuMgr.c:50: TerminateMenuDefinitions();
                                    598 ;	../Common/MenuMgr.c:51: }
      000A8E 02 0A 91         [24]  599 	ljmp	_TerminateMenuDefinitions
                                    600 ;------------------------------------------------------------
                                    601 ;Allocation info for local variables in function 'TerminateMenuDefinitions'
                                    602 ;------------------------------------------------------------
                                    603 ;	../Common/MenuMgr.c:53: void TerminateMenuDefinitions()
                                    604 ;	-----------------------------------------
                                    605 ;	 function TerminateMenuDefinitions
                                    606 ;	-----------------------------------------
      000A91                        607 _TerminateMenuDefinitions:
                                    608 ;	../Common/MenuMgr.c:55: MenuDefinitions[MenuDefinitionCounter].id = 0;
      000A91 90 01 6B         [24]  609 	mov	dptr,#_MenuDefinitionCounter
      000A94 E0               [24]  610 	movx	a,@dptr
      000A95 FE               [12]  611 	mov	r6,a
      000A96 A3               [24]  612 	inc	dptr
      000A97 E0               [24]  613 	movx	a,@dptr
      000A98 FF               [12]  614 	mov	r7,a
      000A99 90 02 BD         [24]  615 	mov	dptr,#__mulint_PARM_2
      000A9C EE               [12]  616 	mov	a,r6
      000A9D F0               [24]  617 	movx	@dptr,a
      000A9E EF               [12]  618 	mov	a,r7
      000A9F A3               [24]  619 	inc	dptr
      000AA0 F0               [24]  620 	movx	@dptr,a
      000AA1 90 00 05         [24]  621 	mov	dptr,#0x0005
      000AA4 12 3C 42         [24]  622 	lcall	__mulint
      000AA7 AE 82            [24]  623 	mov	r6,dpl
      000AA9 AF 83            [24]  624 	mov	r7,dph
      000AAB EE               [12]  625 	mov	a,r6
      000AAC 24 A3            [12]  626 	add	a,#_MenuDefinitions
      000AAE FE               [12]  627 	mov	r6,a
      000AAF EF               [12]  628 	mov	a,r7
      000AB0 34 00            [12]  629 	addc	a,#(_MenuDefinitions >> 8)
      000AB2 FF               [12]  630 	mov	r7,a
      000AB3 8E 82            [24]  631 	mov	dpl,r6
      000AB5 8F 83            [24]  632 	mov	dph,r7
      000AB7 A3               [24]  633 	inc	dptr
      000AB8 A3               [24]  634 	inc	dptr
      000AB9 A3               [24]  635 	inc	dptr
      000ABA A3               [24]  636 	inc	dptr
      000ABB E4               [12]  637 	clr	a
      000ABC F0               [24]  638 	movx	@dptr,a
                                    639 ;	../Common/MenuMgr.c:56: MenuDefinitions[MenuDefinitionCounter].text = 0;
      000ABD 90 01 6B         [24]  640 	mov	dptr,#_MenuDefinitionCounter
      000AC0 E0               [24]  641 	movx	a,@dptr
      000AC1 FE               [12]  642 	mov	r6,a
      000AC2 A3               [24]  643 	inc	dptr
      000AC3 E0               [24]  644 	movx	a,@dptr
      000AC4 FF               [12]  645 	mov	r7,a
      000AC5 90 02 BD         [24]  646 	mov	dptr,#__mulint_PARM_2
      000AC8 EE               [12]  647 	mov	a,r6
      000AC9 F0               [24]  648 	movx	@dptr,a
      000ACA EF               [12]  649 	mov	a,r7
      000ACB A3               [24]  650 	inc	dptr
      000ACC F0               [24]  651 	movx	@dptr,a
      000ACD 90 00 05         [24]  652 	mov	dptr,#0x0005
      000AD0 12 3C 42         [24]  653 	lcall	__mulint
      000AD3 AE 82            [24]  654 	mov	r6,dpl
      000AD5 AF 83            [24]  655 	mov	r7,dph
      000AD7 EE               [12]  656 	mov	a,r6
      000AD8 24 A3            [12]  657 	add	a,#_MenuDefinitions
      000ADA F5 82            [12]  658 	mov	dpl,a
      000ADC EF               [12]  659 	mov	a,r7
      000ADD 34 00            [12]  660 	addc	a,#(_MenuDefinitions >> 8)
      000ADF F5 83            [12]  661 	mov	dph,a
      000AE1 E4               [12]  662 	clr	a
      000AE2 F0               [24]  663 	movx	@dptr,a
      000AE3 A3               [24]  664 	inc	dptr
      000AE4 F0               [24]  665 	movx	@dptr,a
      000AE5 A3               [24]  666 	inc	dptr
      000AE6 F0               [24]  667 	movx	@dptr,a
                                    668 ;	../Common/MenuMgr.c:57: MenuDefinitions[MenuDefinitionCounter].parent = 0;
      000AE7 90 01 6B         [24]  669 	mov	dptr,#_MenuDefinitionCounter
      000AEA E0               [24]  670 	movx	a,@dptr
      000AEB FE               [12]  671 	mov	r6,a
      000AEC A3               [24]  672 	inc	dptr
      000AED E0               [24]  673 	movx	a,@dptr
      000AEE FF               [12]  674 	mov	r7,a
      000AEF 90 02 BD         [24]  675 	mov	dptr,#__mulint_PARM_2
      000AF2 EE               [12]  676 	mov	a,r6
      000AF3 F0               [24]  677 	movx	@dptr,a
      000AF4 EF               [12]  678 	mov	a,r7
      000AF5 A3               [24]  679 	inc	dptr
      000AF6 F0               [24]  680 	movx	@dptr,a
      000AF7 90 00 05         [24]  681 	mov	dptr,#0x0005
      000AFA 12 3C 42         [24]  682 	lcall	__mulint
      000AFD AE 82            [24]  683 	mov	r6,dpl
      000AFF AF 83            [24]  684 	mov	r7,dph
      000B01 EE               [12]  685 	mov	a,r6
      000B02 24 A3            [12]  686 	add	a,#_MenuDefinitions
      000B04 FE               [12]  687 	mov	r6,a
      000B05 EF               [12]  688 	mov	a,r7
      000B06 34 00            [12]  689 	addc	a,#(_MenuDefinitions >> 8)
      000B08 FF               [12]  690 	mov	r7,a
      000B09 8E 82            [24]  691 	mov	dpl,r6
      000B0B 8F 83            [24]  692 	mov	dph,r7
      000B0D A3               [24]  693 	inc	dptr
      000B0E A3               [24]  694 	inc	dptr
      000B0F A3               [24]  695 	inc	dptr
      000B10 E4               [12]  696 	clr	a
      000B11 F0               [24]  697 	movx	@dptr,a
                                    698 ;	../Common/MenuMgr.c:58: }
      000B12 22               [24]  699 	ret
                                    700 ;------------------------------------------------------------
                                    701 ;Allocation info for local variables in function 'AddMenuDefinition'
                                    702 ;------------------------------------------------------------
                                    703 ;parent                    Allocated with name '_AddMenuDefinition_PARM_2'
                                    704 ;id                        Allocated with name '_AddMenuDefinition_PARM_3'
                                    705 ;text                      Allocated with name '_AddMenuDefinition_text_65536_61'
                                    706 ;------------------------------------------------------------
                                    707 ;	../Common/MenuMgr.c:60: void AddMenuDefinition(char *text, int parent, int id)
                                    708 ;	-----------------------------------------
                                    709 ;	 function AddMenuDefinition
                                    710 ;	-----------------------------------------
      000B13                        711 _AddMenuDefinition:
      000B13 AF F0            [24]  712 	mov	r7,b
      000B15 AE 83            [24]  713 	mov	r6,dph
      000B17 E5 82            [12]  714 	mov	a,dpl
      000B19 90 01 77         [24]  715 	mov	dptr,#_AddMenuDefinition_text_65536_61
      000B1C F0               [24]  716 	movx	@dptr,a
      000B1D EE               [12]  717 	mov	a,r6
      000B1E A3               [24]  718 	inc	dptr
      000B1F F0               [24]  719 	movx	@dptr,a
      000B20 EF               [12]  720 	mov	a,r7
      000B21 A3               [24]  721 	inc	dptr
      000B22 F0               [24]  722 	movx	@dptr,a
                                    723 ;	../Common/MenuMgr.c:62: MenuDefinitions[MenuDefinitionCounter].id = id;
      000B23 90 01 6B         [24]  724 	mov	dptr,#_MenuDefinitionCounter
      000B26 E0               [24]  725 	movx	a,@dptr
      000B27 FE               [12]  726 	mov	r6,a
      000B28 A3               [24]  727 	inc	dptr
      000B29 E0               [24]  728 	movx	a,@dptr
      000B2A FF               [12]  729 	mov	r7,a
      000B2B 90 02 BD         [24]  730 	mov	dptr,#__mulint_PARM_2
      000B2E EE               [12]  731 	mov	a,r6
      000B2F F0               [24]  732 	movx	@dptr,a
      000B30 EF               [12]  733 	mov	a,r7
      000B31 A3               [24]  734 	inc	dptr
      000B32 F0               [24]  735 	movx	@dptr,a
      000B33 90 00 05         [24]  736 	mov	dptr,#0x0005
      000B36 12 3C 42         [24]  737 	lcall	__mulint
      000B39 AE 82            [24]  738 	mov	r6,dpl
      000B3B AF 83            [24]  739 	mov	r7,dph
      000B3D EE               [12]  740 	mov	a,r6
      000B3E 24 A3            [12]  741 	add	a,#_MenuDefinitions
      000B40 FE               [12]  742 	mov	r6,a
      000B41 EF               [12]  743 	mov	a,r7
      000B42 34 00            [12]  744 	addc	a,#(_MenuDefinitions >> 8)
      000B44 FF               [12]  745 	mov	r7,a
      000B45 74 04            [12]  746 	mov	a,#0x04
      000B47 2E               [12]  747 	add	a,r6
      000B48 FE               [12]  748 	mov	r6,a
      000B49 E4               [12]  749 	clr	a
      000B4A 3F               [12]  750 	addc	a,r7
      000B4B FF               [12]  751 	mov	r7,a
      000B4C 90 01 75         [24]  752 	mov	dptr,#_AddMenuDefinition_PARM_3
      000B4F E0               [24]  753 	movx	a,@dptr
      000B50 FC               [12]  754 	mov	r4,a
      000B51 A3               [24]  755 	inc	dptr
      000B52 E0               [24]  756 	movx	a,@dptr
      000B53 8E 82            [24]  757 	mov	dpl,r6
      000B55 8F 83            [24]  758 	mov	dph,r7
      000B57 EC               [12]  759 	mov	a,r4
      000B58 F0               [24]  760 	movx	@dptr,a
                                    761 ;	../Common/MenuMgr.c:63: MenuDefinitions[MenuDefinitionCounter].text = text;
      000B59 90 01 6B         [24]  762 	mov	dptr,#_MenuDefinitionCounter
      000B5C E0               [24]  763 	movx	a,@dptr
      000B5D FE               [12]  764 	mov	r6,a
      000B5E A3               [24]  765 	inc	dptr
      000B5F E0               [24]  766 	movx	a,@dptr
      000B60 FF               [12]  767 	mov	r7,a
      000B61 90 02 BD         [24]  768 	mov	dptr,#__mulint_PARM_2
      000B64 EE               [12]  769 	mov	a,r6
      000B65 F0               [24]  770 	movx	@dptr,a
      000B66 EF               [12]  771 	mov	a,r7
      000B67 A3               [24]  772 	inc	dptr
      000B68 F0               [24]  773 	movx	@dptr,a
      000B69 90 00 05         [24]  774 	mov	dptr,#0x0005
      000B6C 12 3C 42         [24]  775 	lcall	__mulint
      000B6F AE 82            [24]  776 	mov	r6,dpl
      000B71 AF 83            [24]  777 	mov	r7,dph
      000B73 EE               [12]  778 	mov	a,r6
      000B74 24 A3            [12]  779 	add	a,#_MenuDefinitions
      000B76 FE               [12]  780 	mov	r6,a
      000B77 EF               [12]  781 	mov	a,r7
      000B78 34 00            [12]  782 	addc	a,#(_MenuDefinitions >> 8)
      000B7A FF               [12]  783 	mov	r7,a
      000B7B 90 01 77         [24]  784 	mov	dptr,#_AddMenuDefinition_text_65536_61
      000B7E E0               [24]  785 	movx	a,@dptr
      000B7F FB               [12]  786 	mov	r3,a
      000B80 A3               [24]  787 	inc	dptr
      000B81 E0               [24]  788 	movx	a,@dptr
      000B82 FC               [12]  789 	mov	r4,a
      000B83 A3               [24]  790 	inc	dptr
      000B84 E0               [24]  791 	movx	a,@dptr
      000B85 FD               [12]  792 	mov	r5,a
      000B86 8E 82            [24]  793 	mov	dpl,r6
      000B88 8F 83            [24]  794 	mov	dph,r7
      000B8A EB               [12]  795 	mov	a,r3
      000B8B F0               [24]  796 	movx	@dptr,a
      000B8C EC               [12]  797 	mov	a,r4
      000B8D A3               [24]  798 	inc	dptr
      000B8E F0               [24]  799 	movx	@dptr,a
      000B8F ED               [12]  800 	mov	a,r5
      000B90 A3               [24]  801 	inc	dptr
      000B91 F0               [24]  802 	movx	@dptr,a
                                    803 ;	../Common/MenuMgr.c:64: MenuDefinitions[MenuDefinitionCounter].parent = parent;
      000B92 90 01 6B         [24]  804 	mov	dptr,#_MenuDefinitionCounter
      000B95 E0               [24]  805 	movx	a,@dptr
      000B96 FE               [12]  806 	mov	r6,a
      000B97 A3               [24]  807 	inc	dptr
      000B98 E0               [24]  808 	movx	a,@dptr
      000B99 FF               [12]  809 	mov	r7,a
      000B9A 90 02 BD         [24]  810 	mov	dptr,#__mulint_PARM_2
      000B9D EE               [12]  811 	mov	a,r6
      000B9E F0               [24]  812 	movx	@dptr,a
      000B9F EF               [12]  813 	mov	a,r7
      000BA0 A3               [24]  814 	inc	dptr
      000BA1 F0               [24]  815 	movx	@dptr,a
      000BA2 90 00 05         [24]  816 	mov	dptr,#0x0005
      000BA5 12 3C 42         [24]  817 	lcall	__mulint
      000BA8 AE 82            [24]  818 	mov	r6,dpl
      000BAA AF 83            [24]  819 	mov	r7,dph
      000BAC EE               [12]  820 	mov	a,r6
      000BAD 24 A3            [12]  821 	add	a,#_MenuDefinitions
      000BAF FE               [12]  822 	mov	r6,a
      000BB0 EF               [12]  823 	mov	a,r7
      000BB1 34 00            [12]  824 	addc	a,#(_MenuDefinitions >> 8)
      000BB3 FF               [12]  825 	mov	r7,a
      000BB4 74 03            [12]  826 	mov	a,#0x03
      000BB6 2E               [12]  827 	add	a,r6
      000BB7 FE               [12]  828 	mov	r6,a
      000BB8 E4               [12]  829 	clr	a
      000BB9 3F               [12]  830 	addc	a,r7
      000BBA FF               [12]  831 	mov	r7,a
      000BBB 90 01 73         [24]  832 	mov	dptr,#_AddMenuDefinition_PARM_2
      000BBE E0               [24]  833 	movx	a,@dptr
      000BBF FC               [12]  834 	mov	r4,a
      000BC0 A3               [24]  835 	inc	dptr
      000BC1 E0               [24]  836 	movx	a,@dptr
      000BC2 FD               [12]  837 	mov	r5,a
      000BC3 8E 82            [24]  838 	mov	dpl,r6
      000BC5 8F 83            [24]  839 	mov	dph,r7
      000BC7 EC               [12]  840 	mov	a,r4
      000BC8 F0               [24]  841 	movx	@dptr,a
                                    842 ;	../Common/MenuMgr.c:66: ++MenuDefinitionCounter;
      000BC9 90 01 6B         [24]  843 	mov	dptr,#_MenuDefinitionCounter
      000BCC E0               [24]  844 	movx	a,@dptr
      000BCD 24 01            [12]  845 	add	a,#0x01
      000BCF F0               [24]  846 	movx	@dptr,a
      000BD0 A3               [24]  847 	inc	dptr
      000BD1 E0               [24]  848 	movx	a,@dptr
      000BD2 34 00            [12]  849 	addc	a,#0x00
      000BD4 F0               [24]  850 	movx	@dptr,a
                                    851 ;	../Common/MenuMgr.c:67: if ((MenuDefinitionCounter + 1) > MAX_MENU_ITEMS)
      000BD5 90 01 6B         [24]  852 	mov	dptr,#_MenuDefinitionCounter
      000BD8 E0               [24]  853 	movx	a,@dptr
      000BD9 FE               [12]  854 	mov	r6,a
      000BDA A3               [24]  855 	inc	dptr
      000BDB E0               [24]  856 	movx	a,@dptr
      000BDC FF               [12]  857 	mov	r7,a
      000BDD 0E               [12]  858 	inc	r6
      000BDE BE 00 01         [24]  859 	cjne	r6,#0x00,00109$
      000BE1 0F               [12]  860 	inc	r7
      000BE2                        861 00109$:
      000BE2 C3               [12]  862 	clr	c
      000BE3 74 28            [12]  863 	mov	a,#0x28
      000BE5 9E               [12]  864 	subb	a,r6
      000BE6 74 80            [12]  865 	mov	a,#(0x00 ^ 0x80)
      000BE8 8F F0            [24]  866 	mov	b,r7
      000BEA 63 F0 80         [24]  867 	xrl	b,#0x80
      000BED 95 F0            [12]  868 	subb	a,b
      000BEF 50 16            [24]  869 	jnc	00102$
                                    870 ;	../Common/MenuMgr.c:69: pCrashDump("Menu item count");
      000BF1 12 0B F6         [24]  871 	lcall	00111$
      000BF4 80 11            [24]  872 	sjmp	00112$
      000BF6                        873 00111$:
      000BF6 90 00 11         [24]  874 	mov	dptr,#_pCrashDump
      000BF9 E0               [24]  875 	movx	a,@dptr
      000BFA C0 E0            [24]  876 	push	acc
      000BFC A3               [24]  877 	inc	dptr
      000BFD E0               [24]  878 	movx	a,@dptr
      000BFE C0 E0            [24]  879 	push	acc
      000C00 90 3E 2D         [24]  880 	mov	dptr,#___str_0
      000C03 75 F0 80         [24]  881 	mov	b,#0x80
      000C06 22               [24]  882 	ret
      000C07                        883 00112$:
      000C07                        884 00102$:
                                    885 ;	../Common/MenuMgr.c:72: TerminateMenuDefinitions();
                                    886 ;	../Common/MenuMgr.c:73: }
      000C07 02 0A 91         [24]  887 	ljmp	_TerminateMenuDefinitions
                                    888 ;------------------------------------------------------------
                                    889 ;Allocation info for local variables in function 'InitialiseMenuController'
                                    890 ;------------------------------------------------------------
                                    891 ;	../Common/MenuMgr.c:77: void InitialiseMenuController()
                                    892 ;	-----------------------------------------
                                    893 ;	 function InitialiseMenuController
                                    894 ;	-----------------------------------------
      000C0A                        895 _InitialiseMenuController:
                                    896 ;	../Common/MenuMgr.c:79: MenuController.currentSelectedMenuIndex = 0;
      000C0A 90 01 6D         [24]  897 	mov	dptr,#_MenuController
      000C0D E4               [12]  898 	clr	a
      000C0E F0               [24]  899 	movx	@dptr,a
                                    900 ;	../Common/MenuMgr.c:80: MenuController.navStack[0] = 0;
      000C0F 90 01 6E         [24]  901 	mov	dptr,#(_MenuController + 0x0001)
      000C12 F0               [24]  902 	movx	@dptr,a
                                    903 ;	../Common/MenuMgr.c:81: MenuController.navStackPtr = 0;
      000C13 90 01 71         [24]  904 	mov	dptr,#(_MenuController + 0x0004)
      000C16 F0               [24]  905 	movx	@dptr,a
                                    906 ;	../Common/MenuMgr.c:82: MenuController.scrollPos = 0;
      000C17 90 01 72         [24]  907 	mov	dptr,#(_MenuController + 0x0005)
      000C1A F0               [24]  908 	movx	@dptr,a
                                    909 ;	../Common/MenuMgr.c:83: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
      000C1B 90 01 6D         [24]  910 	mov	dptr,#_MenuController
      000C1E E0               [24]  911 	movx	a,@dptr
      000C1F 75 F0 05         [24]  912 	mov	b,#0x05
      000C22 A4               [48]  913 	mul	ab
      000C23 24 A3            [12]  914 	add	a,#_MenuDefinitions
      000C25 FE               [12]  915 	mov	r6,a
      000C26 74 00            [12]  916 	mov	a,#(_MenuDefinitions >> 8)
      000C28 35 F0            [12]  917 	addc	a,b
      000C2A FF               [12]  918 	mov	r7,a
      000C2B 8E 82            [24]  919 	mov	dpl,r6
      000C2D 8F 83            [24]  920 	mov	dph,r7
      000C2F A3               [24]  921 	inc	dptr
      000C30 A3               [24]  922 	inc	dptr
      000C31 A3               [24]  923 	inc	dptr
      000C32 A3               [24]  924 	inc	dptr
      000C33 E0               [24]  925 	movx	a,@dptr
      000C34 FF               [12]  926 	mov	r7,a
      000C35 7E 00            [12]  927 	mov	r6,#0x00
      000C37 90 01 EA         [24]  928 	mov	dptr,#_HandleMenuCommand_PARM_2
      000C3A 74 01            [12]  929 	mov	a,#0x01
      000C3C F0               [24]  930 	movx	@dptr,a
      000C3D E4               [12]  931 	clr	a
      000C3E A3               [24]  932 	inc	dptr
      000C3F F0               [24]  933 	movx	@dptr,a
      000C40 8F 82            [24]  934 	mov	dpl,r7
      000C42 8E 83            [24]  935 	mov	dph,r6
                                    936 ;	../Common/MenuMgr.c:84: }
      000C44 02 18 4B         [24]  937 	ljmp	_HandleMenuCommand
                                    938 ;------------------------------------------------------------
                                    939 ;Allocation info for local variables in function 'MenuNavigation'
                                    940 ;------------------------------------------------------------
                                    941 ;navType                   Allocated with name '_MenuNavigation_navType_65536_65'
                                    942 ;------------------------------------------------------------
                                    943 ;	../Common/MenuMgr.c:87: void MenuNavigation(char navType)
                                    944 ;	-----------------------------------------
                                    945 ;	 function MenuNavigation
                                    946 ;	-----------------------------------------
      000C47                        947 _MenuNavigation:
      000C47 E5 82            [12]  948 	mov	a,dpl
      000C49 90 01 7A         [24]  949 	mov	dptr,#_MenuNavigation_navType_65536_65
      000C4C F0               [24]  950 	movx	@dptr,a
                                    951 ;	../Common/MenuMgr.c:89: switch (navType)
      000C4D E0               [24]  952 	movx	a,@dptr
      000C4E FF               [12]  953 	mov	r7,a
      000C4F BF 01 02         [24]  954 	cjne	r7,#0x01,00133$
      000C52 80 0D            [24]  955 	sjmp	00102$
      000C54                        956 00133$:
      000C54 BF 02 02         [24]  957 	cjne	r7,#0x02,00134$
      000C57 80 05            [24]  958 	sjmp	00101$
      000C59                        959 00134$:
                                    960 ;	../Common/MenuMgr.c:91: case NAVTYPE_RIGHT :
      000C59 BF 03 52         [24]  961 	cjne	r7,#0x03,00111$
      000C5C 80 06            [24]  962 	sjmp	00103$
      000C5E                        963 00101$:
                                    964 ;	../Common/MenuMgr.c:92: GoRight();
                                    965 ;	../Common/MenuMgr.c:93: break;
                                    966 ;	../Common/MenuMgr.c:95: case NAVTYPE_LEFT :
      000C5E 02 13 50         [24]  967 	ljmp	_GoRight
      000C61                        968 00102$:
                                    969 ;	../Common/MenuMgr.c:96: GoLeft();
                                    970 ;	../Common/MenuMgr.c:97: break;
                                    971 ;	../Common/MenuMgr.c:99: case NAVTYPE_SELECTITEM :
      000C61 02 13 F8         [24]  972 	ljmp	_GoLeft
      000C64                        973 00103$:
                                    974 ;	../Common/MenuMgr.c:101: if (IsParentMenu())
      000C64 12 11 DE         [24]  975 	lcall	_IsParentMenu
      000C67 E5 82            [12]  976 	mov	a,dpl
      000C69 85 83 F0         [24]  977 	mov	b,dph
      000C6C 45 F0            [12]  978 	orl	a,b
      000C6E 60 03            [24]  979 	jz	00108$
                                    980 ;	../Common/MenuMgr.c:103: GoSubMenu();
      000C70 02 12 80         [24]  981 	ljmp	_GoSubMenu
      000C73                        982 00108$:
                                    983 ;	../Common/MenuMgr.c:105: else if (IsGoBack())
      000C73 12 12 57         [24]  984 	lcall	_IsGoBack
      000C76 E5 82            [12]  985 	mov	a,dpl
      000C78 85 83 F0         [24]  986 	mov	b,dph
      000C7B 45 F0            [12]  987 	orl	a,b
      000C7D 60 03            [24]  988 	jz	00105$
                                    989 ;	../Common/MenuMgr.c:107: GoBackUp();
      000C7F 02 14 94         [24]  990 	ljmp	_GoBackUp
      000C82                        991 00105$:
                                    992 ;	../Common/MenuMgr.c:111: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_COMMAND);
      000C82 90 01 6D         [24]  993 	mov	dptr,#_MenuController
      000C85 E0               [24]  994 	movx	a,@dptr
      000C86 75 F0 05         [24]  995 	mov	b,#0x05
      000C89 A4               [48]  996 	mul	ab
      000C8A 24 A3            [12]  997 	add	a,#_MenuDefinitions
      000C8C FE               [12]  998 	mov	r6,a
      000C8D 74 00            [12]  999 	mov	a,#(_MenuDefinitions >> 8)
      000C8F 35 F0            [12] 1000 	addc	a,b
      000C91 FF               [12] 1001 	mov	r7,a
      000C92 8E 82            [24] 1002 	mov	dpl,r6
      000C94 8F 83            [24] 1003 	mov	dph,r7
      000C96 A3               [24] 1004 	inc	dptr
      000C97 A3               [24] 1005 	inc	dptr
      000C98 A3               [24] 1006 	inc	dptr
      000C99 A3               [24] 1007 	inc	dptr
      000C9A E0               [24] 1008 	movx	a,@dptr
      000C9B FF               [12] 1009 	mov	r7,a
      000C9C 7E 00            [12] 1010 	mov	r6,#0x00
      000C9E 90 01 EA         [24] 1011 	mov	dptr,#_HandleMenuCommand_PARM_2
      000CA1 74 02            [12] 1012 	mov	a,#0x02
      000CA3 F0               [24] 1013 	movx	@dptr,a
      000CA4 E4               [12] 1014 	clr	a
      000CA5 A3               [24] 1015 	inc	dptr
      000CA6 F0               [24] 1016 	movx	@dptr,a
      000CA7 8F 82            [24] 1017 	mov	dpl,r7
      000CA9 8E 83            [24] 1018 	mov	dph,r6
                                   1019 ;	../Common/MenuMgr.c:116: }
                                   1020 ;	../Common/MenuMgr.c:117: }
      000CAB 02 18 4B         [24] 1021 	ljmp	_HandleMenuCommand
      000CAE                       1022 00111$:
      000CAE 22               [24] 1023 	ret
                                   1024 ;------------------------------------------------------------
                                   1025 ;Allocation info for local variables in function 'RenderActiveMenu'
                                   1026 ;------------------------------------------------------------
                                   1027 ;sloc0                     Allocated with name '_RenderActiveMenu_sloc0_1_0'
                                   1028 ;sloc1                     Allocated with name '_RenderActiveMenu_sloc1_1_0'
                                   1029 ;sloc2                     Allocated with name '_RenderActiveMenu_sloc2_1_0'
                                   1030 ;sloc3                     Allocated with name '_RenderActiveMenu_sloc3_1_0'
                                   1031 ;sloc4                     Allocated with name '_RenderActiveMenu_sloc4_1_0'
                                   1032 ;sloc5                     Allocated with name '_RenderActiveMenu_sloc5_1_0'
                                   1033 ;windowStart               Allocated with name '_RenderActiveMenu_PARM_2'
                                   1034 ;windowEnd                 Allocated with name '_RenderActiveMenu_PARM_3'
                                   1035 ;pDisplay                  Allocated with name '_RenderActiveMenu_pDisplay_65536_71'
                                   1036 ;currentParent             Allocated with name '_RenderActiveMenu_currentParent_65536_72'
                                   1037 ;i                         Allocated with name '_RenderActiveMenu_i_65536_72'
                                   1038 ;pTemp                     Allocated with name '_RenderActiveMenu_pTemp_65536_72'
                                   1039 ;ch                        Allocated with name '_RenderActiveMenu_ch_65536_72'
                                   1040 ;currentPos                Allocated with name '_RenderActiveMenu_currentPos_65536_72'
                                   1041 ;------------------------------------------------------------
                                   1042 ;	../Common/MenuMgr.c:121: void RenderActiveMenu(char *pDisplay, int windowStart, int windowEnd)
                                   1043 ;	-----------------------------------------
                                   1044 ;	 function RenderActiveMenu
                                   1045 ;	-----------------------------------------
      000CAF                       1046 _RenderActiveMenu:
      000CAF AF F0            [24] 1047 	mov	r7,b
      000CB1 AE 83            [24] 1048 	mov	r6,dph
      000CB3 E5 82            [12] 1049 	mov	a,dpl
      000CB5 90 01 7F         [24] 1050 	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
      000CB8 F0               [24] 1051 	movx	@dptr,a
      000CB9 EE               [12] 1052 	mov	a,r6
      000CBA A3               [24] 1053 	inc	dptr
      000CBB F0               [24] 1054 	movx	@dptr,a
      000CBC EF               [12] 1055 	mov	a,r7
      000CBD A3               [24] 1056 	inc	dptr
      000CBE F0               [24] 1057 	movx	@dptr,a
                                   1058 ;	../Common/MenuMgr.c:125: int currentParent = MenuDefinitions[MenuController.currentSelectedMenuIndex].parent;
      000CBF 90 01 6D         [24] 1059 	mov	dptr,#_MenuController
      000CC2 E0               [24] 1060 	movx	a,@dptr
      000CC3 75 F0 05         [24] 1061 	mov	b,#0x05
      000CC6 A4               [48] 1062 	mul	ab
      000CC7 24 A3            [12] 1063 	add	a,#_MenuDefinitions
      000CC9 FE               [12] 1064 	mov	r6,a
      000CCA 74 00            [12] 1065 	mov	a,#(_MenuDefinitions >> 8)
      000CCC 35 F0            [12] 1066 	addc	a,b
      000CCE FF               [12] 1067 	mov	r7,a
      000CCF 8E 82            [24] 1068 	mov	dpl,r6
      000CD1 8F 83            [24] 1069 	mov	dph,r7
      000CD3 A3               [24] 1070 	inc	dptr
      000CD4 A3               [24] 1071 	inc	dptr
      000CD5 A3               [24] 1072 	inc	dptr
      000CD6 E0               [24] 1073 	movx	a,@dptr
      000CD7 FF               [12] 1074 	mov	r7,a
      000CD8 8F 0E            [24] 1075 	mov	_RenderActiveMenu_sloc3_1_0,r7
      000CDA 75 0F 00         [24] 1076 	mov	(_RenderActiveMenu_sloc3_1_0 + 1),#0x00
                                   1077 ;	../Common/MenuMgr.c:131: currentPos = 0;
      000CDD 90 01 83         [24] 1078 	mov	dptr,#_RenderActiveMenu_currentPos_65536_72
      000CE0 E4               [12] 1079 	clr	a
      000CE1 F0               [24] 1080 	movx	@dptr,a
      000CE2 A3               [24] 1081 	inc	dptr
      000CE3 F0               [24] 1082 	movx	@dptr,a
                                   1083 ;	../Common/MenuMgr.c:132: for (i = 0; MenuDefinitions[i].text != 0; ++i)
      000CE4 90 01 7D         [24] 1084 	mov	dptr,#_RenderActiveMenu_PARM_3
      000CE7 E0               [24] 1085 	movx	a,@dptr
      000CE8 FC               [12] 1086 	mov	r4,a
      000CE9 A3               [24] 1087 	inc	dptr
      000CEA E0               [24] 1088 	movx	a,@dptr
      000CEB FD               [12] 1089 	mov	r5,a
      000CEC 90 01 7B         [24] 1090 	mov	dptr,#_RenderActiveMenu_PARM_2
      000CEF E0               [24] 1091 	movx	a,@dptr
      000CF0 FA               [12] 1092 	mov	r2,a
      000CF1 A3               [24] 1093 	inc	dptr
      000CF2 E0               [24] 1094 	movx	a,@dptr
      000CF3 FB               [12] 1095 	mov	r3,a
      000CF4 8C 10            [24] 1096 	mov	_RenderActiveMenu_sloc4_1_0,r4
      000CF6 8D 11            [24] 1097 	mov	(_RenderActiveMenu_sloc4_1_0 + 1),r5
      000CF8 8C 08            [24] 1098 	mov	_RenderActiveMenu_sloc0_1_0,r4
      000CFA 8D 09            [24] 1099 	mov	(_RenderActiveMenu_sloc0_1_0 + 1),r5
      000CFC E4               [12] 1100 	clr	a
      000CFD F5 0A            [12] 1101 	mov	_RenderActiveMenu_sloc1_1_0,a
      000CFF F5 0B            [12] 1102 	mov	(_RenderActiveMenu_sloc1_1_0 + 1),a
      000D01                       1103 00124$:
      000D01 90 02 BD         [24] 1104 	mov	dptr,#__mulint_PARM_2
      000D04 E5 0A            [12] 1105 	mov	a,_RenderActiveMenu_sloc1_1_0
      000D06 F0               [24] 1106 	movx	@dptr,a
      000D07 E5 0B            [12] 1107 	mov	a,(_RenderActiveMenu_sloc1_1_0 + 1)
      000D09 A3               [24] 1108 	inc	dptr
      000D0A F0               [24] 1109 	movx	@dptr,a
      000D0B 90 00 05         [24] 1110 	mov	dptr,#0x0005
      000D0E C0 05            [24] 1111 	push	ar5
      000D10 C0 04            [24] 1112 	push	ar4
      000D12 C0 03            [24] 1113 	push	ar3
      000D14 C0 02            [24] 1114 	push	ar2
      000D16 12 3C 42         [24] 1115 	lcall	__mulint
      000D19 85 82 0C         [24] 1116 	mov	_RenderActiveMenu_sloc2_1_0,dpl
      000D1C 85 83 0D         [24] 1117 	mov	(_RenderActiveMenu_sloc2_1_0 + 1),dph
      000D1F D0 02            [24] 1118 	pop	ar2
      000D21 D0 03            [24] 1119 	pop	ar3
      000D23 D0 04            [24] 1120 	pop	ar4
      000D25 D0 05            [24] 1121 	pop	ar5
      000D27 E5 0C            [12] 1122 	mov	a,_RenderActiveMenu_sloc2_1_0
      000D29 24 A3            [12] 1123 	add	a,#_MenuDefinitions
      000D2B F5 82            [12] 1124 	mov	dpl,a
      000D2D E5 0D            [12] 1125 	mov	a,(_RenderActiveMenu_sloc2_1_0 + 1)
      000D2F 34 00            [12] 1126 	addc	a,#(_MenuDefinitions >> 8)
      000D31 F5 83            [12] 1127 	mov	dph,a
      000D33 E0               [24] 1128 	movx	a,@dptr
      000D34 F9               [12] 1129 	mov	r1,a
      000D35 A3               [24] 1130 	inc	dptr
      000D36 E0               [24] 1131 	movx	a,@dptr
      000D37 FE               [12] 1132 	mov	r6,a
      000D38 A3               [24] 1133 	inc	dptr
      000D39 E0               [24] 1134 	movx	a,@dptr
      000D3A E9               [12] 1135 	mov	a,r1
      000D3B 4E               [12] 1136 	orl	a,r6
      000D3C 70 01            [24] 1137 	jnz	00182$
      000D3E 22               [24] 1138 	ret
      000D3F                       1139 00182$:
                                   1140 ;	../Common/MenuMgr.c:134: if (MenuDefinitions[i].parent == currentParent)
      000D3F E5 0C            [12] 1141 	mov	a,_RenderActiveMenu_sloc2_1_0
      000D41 24 A3            [12] 1142 	add	a,#_MenuDefinitions
      000D43 FE               [12] 1143 	mov	r6,a
      000D44 E5 0D            [12] 1144 	mov	a,(_RenderActiveMenu_sloc2_1_0 + 1)
      000D46 34 00            [12] 1145 	addc	a,#(_MenuDefinitions >> 8)
      000D48 FF               [12] 1146 	mov	r7,a
      000D49 8E 82            [24] 1147 	mov	dpl,r6
      000D4B 8F 83            [24] 1148 	mov	dph,r7
      000D4D A3               [24] 1149 	inc	dptr
      000D4E A3               [24] 1150 	inc	dptr
      000D4F A3               [24] 1151 	inc	dptr
      000D50 E0               [24] 1152 	movx	a,@dptr
      000D51 FF               [12] 1153 	mov	r7,a
      000D52 7E 00            [12] 1154 	mov	r6,#0x00
      000D54 B5 0E 06         [24] 1155 	cjne	a,_RenderActiveMenu_sloc3_1_0,00183$
      000D57 EE               [12] 1156 	mov	a,r6
      000D58 B5 0F 02         [24] 1157 	cjne	a,(_RenderActiveMenu_sloc3_1_0 + 1),00183$
      000D5B 80 03            [24] 1158 	sjmp	00184$
      000D5D                       1159 00183$:
      000D5D 02 0F 45         [24] 1160 	ljmp	00125$
      000D60                       1161 00184$:
                                   1162 ;	../Common/MenuMgr.c:136: if (i == MenuController.currentSelectedMenuIndex)
      000D60 90 01 6D         [24] 1163 	mov	dptr,#_MenuController
      000D63 E0               [24] 1164 	movx	a,@dptr
      000D64 7E 00            [12] 1165 	mov	r6,#0x00
      000D66 B5 0A 0C         [24] 1166 	cjne	a,_RenderActiveMenu_sloc1_1_0,00102$
      000D69 EE               [12] 1167 	mov	a,r6
      000D6A B5 0B 08         [24] 1168 	cjne	a,(_RenderActiveMenu_sloc1_1_0 + 1),00102$
                                   1169 ;	../Common/MenuMgr.c:138: ch = '[';
      000D6D 90 01 82         [24] 1170 	mov	dptr,#_RenderActiveMenu_ch_65536_72
      000D70 74 5B            [12] 1171 	mov	a,#0x5b
      000D72 F0               [24] 1172 	movx	@dptr,a
      000D73 80 06            [24] 1173 	sjmp	00103$
      000D75                       1174 00102$:
                                   1175 ;	../Common/MenuMgr.c:142: ch = ' ';
      000D75 90 01 82         [24] 1176 	mov	dptr,#_RenderActiveMenu_ch_65536_72
      000D78 74 20            [12] 1177 	mov	a,#0x20
      000D7A F0               [24] 1178 	movx	@dptr,a
      000D7B                       1179 00103$:
                                   1180 ;	../Common/MenuMgr.c:144: COPY_IF_IN_WINDOW(pDisplay, ch, currentPos, windowStart, windowEnd);
      000D7B 90 01 83         [24] 1181 	mov	dptr,#_RenderActiveMenu_currentPos_65536_72
      000D7E E0               [24] 1182 	movx	a,@dptr
      000D7F FE               [12] 1183 	mov	r6,a
      000D80 A3               [24] 1184 	inc	dptr
      000D81 E0               [24] 1185 	movx	a,@dptr
      000D82 FF               [12] 1186 	mov	r7,a
      000D83 C3               [12] 1187 	clr	c
      000D84 EE               [12] 1188 	mov	a,r6
      000D85 9A               [12] 1189 	subb	a,r2
      000D86 EF               [12] 1190 	mov	a,r7
      000D87 64 80            [12] 1191 	xrl	a,#0x80
      000D89 8B F0            [24] 1192 	mov	b,r3
      000D8B 63 F0 80         [24] 1193 	xrl	b,#0x80
      000D8E 95 F0            [12] 1194 	subb	a,b
      000D90 40 4A            [24] 1195 	jc	00105$
      000D92 EE               [12] 1196 	mov	a,r6
      000D93 9C               [12] 1197 	subb	a,r4
      000D94 EF               [12] 1198 	mov	a,r7
      000D95 64 80            [12] 1199 	xrl	a,#0x80
      000D97 8D F0            [24] 1200 	mov	b,r5
      000D99 63 F0 80         [24] 1201 	xrl	b,#0x80
      000D9C 95 F0            [12] 1202 	subb	a,b
      000D9E 50 3C            [24] 1203 	jnc	00105$
      000DA0 90 01 7F         [24] 1204 	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
      000DA3 E0               [24] 1205 	movx	a,@dptr
      000DA4 F9               [12] 1206 	mov	r1,a
      000DA5 A3               [24] 1207 	inc	dptr
      000DA6 E0               [24] 1208 	movx	a,@dptr
      000DA7 FE               [12] 1209 	mov	r6,a
      000DA8 A3               [24] 1210 	inc	dptr
      000DA9 E0               [24] 1211 	movx	a,@dptr
      000DAA FF               [12] 1212 	mov	r7,a
      000DAB 90 01 82         [24] 1213 	mov	dptr,#_RenderActiveMenu_ch_65536_72
      000DAE E0               [24] 1214 	movx	a,@dptr
      000DAF F8               [12] 1215 	mov	r0,a
      000DB0 89 82            [24] 1216 	mov	dpl,r1
      000DB2 8E 83            [24] 1217 	mov	dph,r6
      000DB4 8F F0            [24] 1218 	mov	b,r7
      000DB6 12 3C 27         [24] 1219 	lcall	__gptrput
      000DB9 90 01 7F         [24] 1220 	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
      000DBC 74 01            [12] 1221 	mov	a,#0x01
      000DBE 29               [12] 1222 	add	a,r1
      000DBF F0               [24] 1223 	movx	@dptr,a
      000DC0 E4               [12] 1224 	clr	a
      000DC1 3E               [12] 1225 	addc	a,r6
      000DC2 A3               [24] 1226 	inc	dptr
      000DC3 F0               [24] 1227 	movx	@dptr,a
      000DC4 EF               [12] 1228 	mov	a,r7
      000DC5 A3               [24] 1229 	inc	dptr
      000DC6 F0               [24] 1230 	movx	@dptr,a
      000DC7 90 01 7F         [24] 1231 	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
      000DCA E0               [24] 1232 	movx	a,@dptr
      000DCB F9               [12] 1233 	mov	r1,a
      000DCC A3               [24] 1234 	inc	dptr
      000DCD E0               [24] 1235 	movx	a,@dptr
      000DCE FE               [12] 1236 	mov	r6,a
      000DCF A3               [24] 1237 	inc	dptr
      000DD0 E0               [24] 1238 	movx	a,@dptr
      000DD1 FF               [12] 1239 	mov	r7,a
      000DD2 89 82            [24] 1240 	mov	dpl,r1
      000DD4 8E 83            [24] 1241 	mov	dph,r6
      000DD6 8F F0            [24] 1242 	mov	b,r7
      000DD8 E4               [12] 1243 	clr	a
      000DD9 12 3C 27         [24] 1244 	lcall	__gptrput
      000DDC                       1245 00105$:
                                   1246 ;	../Common/MenuMgr.c:145: ++currentPos;
      000DDC 90 01 83         [24] 1247 	mov	dptr,#_RenderActiveMenu_currentPos_65536_72
      000DDF E0               [24] 1248 	movx	a,@dptr
      000DE0 24 01            [12] 1249 	add	a,#0x01
      000DE2 F0               [24] 1250 	movx	@dptr,a
      000DE3 A3               [24] 1251 	inc	dptr
      000DE4 E0               [24] 1252 	movx	a,@dptr
      000DE5 34 00            [12] 1253 	addc	a,#0x00
      000DE7 F0               [24] 1254 	movx	@dptr,a
                                   1255 ;	../Common/MenuMgr.c:147: for (pTemp = MenuDefinitions[i].text; *pTemp; ++pTemp)
      000DE8 90 02 BD         [24] 1256 	mov	dptr,#__mulint_PARM_2
      000DEB E5 0A            [12] 1257 	mov	a,_RenderActiveMenu_sloc1_1_0
      000DED F0               [24] 1258 	movx	@dptr,a
      000DEE E5 0B            [12] 1259 	mov	a,(_RenderActiveMenu_sloc1_1_0 + 1)
      000DF0 A3               [24] 1260 	inc	dptr
      000DF1 F0               [24] 1261 	movx	@dptr,a
      000DF2 90 00 05         [24] 1262 	mov	dptr,#0x0005
      000DF5 C0 05            [24] 1263 	push	ar5
      000DF7 C0 04            [24] 1264 	push	ar4
      000DF9 C0 03            [24] 1265 	push	ar3
      000DFB C0 02            [24] 1266 	push	ar2
      000DFD 12 3C 42         [24] 1267 	lcall	__mulint
      000E00 AE 82            [24] 1268 	mov	r6,dpl
      000E02 AF 83            [24] 1269 	mov	r7,dph
      000E04 D0 02            [24] 1270 	pop	ar2
      000E06 D0 03            [24] 1271 	pop	ar3
      000E08 D0 04            [24] 1272 	pop	ar4
      000E0A D0 05            [24] 1273 	pop	ar5
      000E0C EE               [12] 1274 	mov	a,r6
      000E0D 24 A3            [12] 1275 	add	a,#_MenuDefinitions
      000E0F F5 82            [12] 1276 	mov	dpl,a
      000E11 EF               [12] 1277 	mov	a,r7
      000E12 34 00            [12] 1278 	addc	a,#(_MenuDefinitions >> 8)
      000E14 F5 83            [12] 1279 	mov	dph,a
      000E16 E0               [24] 1280 	movx	a,@dptr
      000E17 F9               [12] 1281 	mov	r1,a
      000E18 A3               [24] 1282 	inc	dptr
      000E19 E0               [24] 1283 	movx	a,@dptr
      000E1A FE               [12] 1284 	mov	r6,a
      000E1B A3               [24] 1285 	inc	dptr
      000E1C E0               [24] 1286 	movx	a,@dptr
      000E1D FF               [12] 1287 	mov	r7,a
      000E1E 90 01 7F         [24] 1288 	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
      000E21 E0               [24] 1289 	movx	a,@dptr
      000E22 F5 12            [12] 1290 	mov	_RenderActiveMenu_sloc5_1_0,a
      000E24 A3               [24] 1291 	inc	dptr
      000E25 E0               [24] 1292 	movx	a,@dptr
      000E26 F5 13            [12] 1293 	mov	(_RenderActiveMenu_sloc5_1_0 + 1),a
      000E28 A3               [24] 1294 	inc	dptr
      000E29 E0               [24] 1295 	movx	a,@dptr
      000E2A F5 14            [12] 1296 	mov	(_RenderActiveMenu_sloc5_1_0 + 2),a
      000E2C 90 01 83         [24] 1297 	mov	dptr,#_RenderActiveMenu_currentPos_65536_72
      000E2F E0               [24] 1298 	movx	a,@dptr
      000E30 F5 0C            [12] 1299 	mov	_RenderActiveMenu_sloc2_1_0,a
      000E32 A3               [24] 1300 	inc	dptr
      000E33 E0               [24] 1301 	movx	a,@dptr
      000E34 F5 0D            [12] 1302 	mov	(_RenderActiveMenu_sloc2_1_0 + 1),a
      000E36                       1303 00121$:
      000E36 89 82            [24] 1304 	mov	dpl,r1
      000E38 8E 83            [24] 1305 	mov	dph,r6
      000E3A 8F F0            [24] 1306 	mov	b,r7
      000E3C 12 3D E8         [24] 1307 	lcall	__gptrget
      000E3F F8               [12] 1308 	mov	r0,a
      000E40 60 61            [24] 1309 	jz	00141$
                                   1310 ;	../Common/MenuMgr.c:149: COPY_IF_IN_WINDOW(pDisplay, *pTemp, currentPos, windowStart, windowEnd);
      000E42 C3               [12] 1311 	clr	c
      000E43 E5 0C            [12] 1312 	mov	a,_RenderActiveMenu_sloc2_1_0
      000E45 9A               [12] 1313 	subb	a,r2
      000E46 E5 0D            [12] 1314 	mov	a,(_RenderActiveMenu_sloc2_1_0 + 1)
      000E48 64 80            [12] 1315 	xrl	a,#0x80
      000E4A 8B F0            [24] 1316 	mov	b,r3
      000E4C 63 F0 80         [24] 1317 	xrl	b,#0x80
      000E4F 95 F0            [12] 1318 	subb	a,b
      000E51 40 41            [24] 1319 	jc	00108$
      000E53 E5 0C            [12] 1320 	mov	a,_RenderActiveMenu_sloc2_1_0
      000E55 95 10            [12] 1321 	subb	a,_RenderActiveMenu_sloc4_1_0
      000E57 E5 0D            [12] 1322 	mov	a,(_RenderActiveMenu_sloc2_1_0 + 1)
      000E59 64 80            [12] 1323 	xrl	a,#0x80
      000E5B 85 11 F0         [24] 1324 	mov	b,(_RenderActiveMenu_sloc4_1_0 + 1)
      000E5E 63 F0 80         [24] 1325 	xrl	b,#0x80
      000E61 95 F0            [12] 1326 	subb	a,b
      000E63 50 2F            [24] 1327 	jnc	00108$
      000E65 85 12 82         [24] 1328 	mov	dpl,_RenderActiveMenu_sloc5_1_0
      000E68 85 13 83         [24] 1329 	mov	dph,(_RenderActiveMenu_sloc5_1_0 + 1)
      000E6B 85 14 F0         [24] 1330 	mov	b,(_RenderActiveMenu_sloc5_1_0 + 2)
      000E6E E8               [12] 1331 	mov	a,r0
      000E6F 12 3C 27         [24] 1332 	lcall	__gptrput
      000E72 A3               [24] 1333 	inc	dptr
      000E73 85 82 12         [24] 1334 	mov	_RenderActiveMenu_sloc5_1_0,dpl
      000E76 85 83 13         [24] 1335 	mov	(_RenderActiveMenu_sloc5_1_0 + 1),dph
      000E79 90 01 7F         [24] 1336 	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
      000E7C E5 12            [12] 1337 	mov	a,_RenderActiveMenu_sloc5_1_0
      000E7E F0               [24] 1338 	movx	@dptr,a
      000E7F E5 13            [12] 1339 	mov	a,(_RenderActiveMenu_sloc5_1_0 + 1)
      000E81 A3               [24] 1340 	inc	dptr
      000E82 F0               [24] 1341 	movx	@dptr,a
      000E83 E5 14            [12] 1342 	mov	a,(_RenderActiveMenu_sloc5_1_0 + 2)
      000E85 A3               [24] 1343 	inc	dptr
      000E86 F0               [24] 1344 	movx	@dptr,a
      000E87 85 12 82         [24] 1345 	mov	dpl,_RenderActiveMenu_sloc5_1_0
      000E8A 85 13 83         [24] 1346 	mov	dph,(_RenderActiveMenu_sloc5_1_0 + 1)
      000E8D 85 14 F0         [24] 1347 	mov	b,(_RenderActiveMenu_sloc5_1_0 + 2)
      000E90 E4               [12] 1348 	clr	a
      000E91 12 3C 27         [24] 1349 	lcall	__gptrput
      000E94                       1350 00108$:
                                   1351 ;	../Common/MenuMgr.c:150: ++currentPos;
      000E94 05 0C            [12] 1352 	inc	_RenderActiveMenu_sloc2_1_0
      000E96 E4               [12] 1353 	clr	a
      000E97 B5 0C 02         [24] 1354 	cjne	a,_RenderActiveMenu_sloc2_1_0,00192$
      000E9A 05 0D            [12] 1355 	inc	(_RenderActiveMenu_sloc2_1_0 + 1)
      000E9C                       1356 00192$:
                                   1357 ;	../Common/MenuMgr.c:147: for (pTemp = MenuDefinitions[i].text; *pTemp; ++pTemp)
      000E9C 09               [12] 1358 	inc	r1
      000E9D B9 00 96         [24] 1359 	cjne	r1,#0x00,00121$
      000EA0 0E               [12] 1360 	inc	r6
      000EA1 80 93            [24] 1361 	sjmp	00121$
      000EA3                       1362 00141$:
      000EA3 90 01 7F         [24] 1363 	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
      000EA6 E5 12            [12] 1364 	mov	a,_RenderActiveMenu_sloc5_1_0
      000EA8 F0               [24] 1365 	movx	@dptr,a
      000EA9 E5 13            [12] 1366 	mov	a,(_RenderActiveMenu_sloc5_1_0 + 1)
      000EAB A3               [24] 1367 	inc	dptr
      000EAC F0               [24] 1368 	movx	@dptr,a
      000EAD E5 14            [12] 1369 	mov	a,(_RenderActiveMenu_sloc5_1_0 + 2)
      000EAF A3               [24] 1370 	inc	dptr
      000EB0 F0               [24] 1371 	movx	@dptr,a
      000EB1 90 01 83         [24] 1372 	mov	dptr,#_RenderActiveMenu_currentPos_65536_72
      000EB4 E5 0C            [12] 1373 	mov	a,_RenderActiveMenu_sloc2_1_0
      000EB6 F0               [24] 1374 	movx	@dptr,a
      000EB7 E5 0D            [12] 1375 	mov	a,(_RenderActiveMenu_sloc2_1_0 + 1)
      000EB9 A3               [24] 1376 	inc	dptr
      000EBA F0               [24] 1377 	movx	@dptr,a
                                   1378 ;	../Common/MenuMgr.c:153: if (i == MenuController.currentSelectedMenuIndex)
      000EBB 90 01 6D         [24] 1379 	mov	dptr,#_MenuController
      000EBE E0               [24] 1380 	movx	a,@dptr
      000EBF 7E 00            [12] 1381 	mov	r6,#0x00
      000EC1 B5 0A 0C         [24] 1382 	cjne	a,_RenderActiveMenu_sloc1_1_0,00112$
      000EC4 EE               [12] 1383 	mov	a,r6
      000EC5 B5 0B 08         [24] 1384 	cjne	a,(_RenderActiveMenu_sloc1_1_0 + 1),00112$
                                   1385 ;	../Common/MenuMgr.c:155: ch = ']';
      000EC8 90 01 82         [24] 1386 	mov	dptr,#_RenderActiveMenu_ch_65536_72
      000ECB 74 5D            [12] 1387 	mov	a,#0x5d
      000ECD F0               [24] 1388 	movx	@dptr,a
      000ECE 80 06            [24] 1389 	sjmp	00113$
      000ED0                       1390 00112$:
                                   1391 ;	../Common/MenuMgr.c:159: ch = ' ';
      000ED0 90 01 82         [24] 1392 	mov	dptr,#_RenderActiveMenu_ch_65536_72
      000ED3 74 20            [12] 1393 	mov	a,#0x20
      000ED5 F0               [24] 1394 	movx	@dptr,a
      000ED6                       1395 00113$:
                                   1396 ;	../Common/MenuMgr.c:161: COPY_IF_IN_WINDOW(pDisplay, ch, currentPos, windowStart, windowEnd);
      000ED6 90 01 83         [24] 1397 	mov	dptr,#_RenderActiveMenu_currentPos_65536_72
      000ED9 E0               [24] 1398 	movx	a,@dptr
      000EDA FE               [12] 1399 	mov	r6,a
      000EDB A3               [24] 1400 	inc	dptr
      000EDC E0               [24] 1401 	movx	a,@dptr
      000EDD FF               [12] 1402 	mov	r7,a
      000EDE C3               [12] 1403 	clr	c
      000EDF EE               [12] 1404 	mov	a,r6
      000EE0 9A               [12] 1405 	subb	a,r2
      000EE1 EF               [12] 1406 	mov	a,r7
      000EE2 64 80            [12] 1407 	xrl	a,#0x80
      000EE4 8B F0            [24] 1408 	mov	b,r3
      000EE6 63 F0 80         [24] 1409 	xrl	b,#0x80
      000EE9 95 F0            [12] 1410 	subb	a,b
      000EEB 40 4C            [24] 1411 	jc	00115$
      000EED EE               [12] 1412 	mov	a,r6
      000EEE 95 08            [12] 1413 	subb	a,_RenderActiveMenu_sloc0_1_0
      000EF0 EF               [12] 1414 	mov	a,r7
      000EF1 64 80            [12] 1415 	xrl	a,#0x80
      000EF3 85 09 F0         [24] 1416 	mov	b,(_RenderActiveMenu_sloc0_1_0 + 1)
      000EF6 63 F0 80         [24] 1417 	xrl	b,#0x80
      000EF9 95 F0            [12] 1418 	subb	a,b
      000EFB 50 3C            [24] 1419 	jnc	00115$
      000EFD 90 01 7F         [24] 1420 	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
      000F00 E0               [24] 1421 	movx	a,@dptr
      000F01 F9               [12] 1422 	mov	r1,a
      000F02 A3               [24] 1423 	inc	dptr
      000F03 E0               [24] 1424 	movx	a,@dptr
      000F04 FE               [12] 1425 	mov	r6,a
      000F05 A3               [24] 1426 	inc	dptr
      000F06 E0               [24] 1427 	movx	a,@dptr
      000F07 FF               [12] 1428 	mov	r7,a
      000F08 90 01 82         [24] 1429 	mov	dptr,#_RenderActiveMenu_ch_65536_72
      000F0B E0               [24] 1430 	movx	a,@dptr
      000F0C F8               [12] 1431 	mov	r0,a
      000F0D 89 82            [24] 1432 	mov	dpl,r1
      000F0F 8E 83            [24] 1433 	mov	dph,r6
      000F11 8F F0            [24] 1434 	mov	b,r7
      000F13 12 3C 27         [24] 1435 	lcall	__gptrput
      000F16 90 01 7F         [24] 1436 	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
      000F19 74 01            [12] 1437 	mov	a,#0x01
      000F1B 29               [12] 1438 	add	a,r1
      000F1C F0               [24] 1439 	movx	@dptr,a
      000F1D E4               [12] 1440 	clr	a
      000F1E 3E               [12] 1441 	addc	a,r6
      000F1F A3               [24] 1442 	inc	dptr
      000F20 F0               [24] 1443 	movx	@dptr,a
      000F21 EF               [12] 1444 	mov	a,r7
      000F22 A3               [24] 1445 	inc	dptr
      000F23 F0               [24] 1446 	movx	@dptr,a
      000F24 90 01 7F         [24] 1447 	mov	dptr,#_RenderActiveMenu_pDisplay_65536_71
      000F27 E0               [24] 1448 	movx	a,@dptr
      000F28 F9               [12] 1449 	mov	r1,a
      000F29 A3               [24] 1450 	inc	dptr
      000F2A E0               [24] 1451 	movx	a,@dptr
      000F2B FE               [12] 1452 	mov	r6,a
      000F2C A3               [24] 1453 	inc	dptr
      000F2D E0               [24] 1454 	movx	a,@dptr
      000F2E FF               [12] 1455 	mov	r7,a
      000F2F 89 82            [24] 1456 	mov	dpl,r1
      000F31 8E 83            [24] 1457 	mov	dph,r6
      000F33 8F F0            [24] 1458 	mov	b,r7
      000F35 E4               [12] 1459 	clr	a
      000F36 12 3C 27         [24] 1460 	lcall	__gptrput
      000F39                       1461 00115$:
                                   1462 ;	../Common/MenuMgr.c:162: ++currentPos;
      000F39 90 01 83         [24] 1463 	mov	dptr,#_RenderActiveMenu_currentPos_65536_72
      000F3C E0               [24] 1464 	movx	a,@dptr
      000F3D 24 01            [12] 1465 	add	a,#0x01
      000F3F F0               [24] 1466 	movx	@dptr,a
      000F40 A3               [24] 1467 	inc	dptr
      000F41 E0               [24] 1468 	movx	a,@dptr
      000F42 34 00            [12] 1469 	addc	a,#0x00
      000F44 F0               [24] 1470 	movx	@dptr,a
      000F45                       1471 00125$:
                                   1472 ;	../Common/MenuMgr.c:132: for (i = 0; MenuDefinitions[i].text != 0; ++i)
      000F45 05 0A            [12] 1473 	inc	_RenderActiveMenu_sloc1_1_0
      000F47 E4               [12] 1474 	clr	a
      000F48 B5 0A 02         [24] 1475 	cjne	a,_RenderActiveMenu_sloc1_1_0,00198$
      000F4B 05 0B            [12] 1476 	inc	(_RenderActiveMenu_sloc1_1_0 + 1)
      000F4D                       1477 00198$:
                                   1478 ;	../Common/MenuMgr.c:165: }
      000F4D 02 0D 01         [24] 1479 	ljmp	00124$
                                   1480 ;------------------------------------------------------------
                                   1481 ;Allocation info for local variables in function 'GetMenuItemExtent'
                                   1482 ;------------------------------------------------------------
                                   1483 ;sloc0                     Allocated with name '_GetMenuItemExtent_sloc0_1_0'
                                   1484 ;sloc1                     Allocated with name '_GetMenuItemExtent_sloc1_1_0'
                                   1485 ;sloc2                     Allocated with name '_GetMenuItemExtent_sloc2_1_0'
                                   1486 ;sloc3                     Allocated with name '_GetMenuItemExtent_sloc3_1_0'
                                   1487 ;sloc4                     Allocated with name '_GetMenuItemExtent_sloc4_1_0'
                                   1488 ;sloc5                     Allocated with name '_GetMenuItemExtent_sloc5_1_0'
                                   1489 ;pStartPos                 Allocated with name '_GetMenuItemExtent_PARM_2'
                                   1490 ;pEndPos                   Allocated with name '_GetMenuItemExtent_PARM_3'
                                   1491 ;menuItem                  Allocated with name '_GetMenuItemExtent_menuItem_65536_85'
                                   1492 ;currentParent             Allocated with name '_GetMenuItemExtent_currentParent_65536_86'
                                   1493 ;i                         Allocated with name '_GetMenuItemExtent_i_65536_86'
                                   1494 ;currentPos                Allocated with name '_GetMenuItemExtent_currentPos_65536_86'
                                   1495 ;pTemp                     Allocated with name '_GetMenuItemExtent_pTemp_65536_86'
                                   1496 ;------------------------------------------------------------
                                   1497 ;	../Common/MenuMgr.c:167: void GetMenuItemExtent(int menuItem, int *pStartPos, int *pEndPos)
                                   1498 ;	-----------------------------------------
                                   1499 ;	 function GetMenuItemExtent
                                   1500 ;	-----------------------------------------
      000F50                       1501 _GetMenuItemExtent:
      000F50 AF 83            [24] 1502 	mov	r7,dph
      000F52 E5 82            [12] 1503 	mov	a,dpl
      000F54 90 01 8B         [24] 1504 	mov	dptr,#_GetMenuItemExtent_menuItem_65536_85
      000F57 F0               [24] 1505 	movx	@dptr,a
      000F58 EF               [12] 1506 	mov	a,r7
      000F59 A3               [24] 1507 	inc	dptr
      000F5A F0               [24] 1508 	movx	@dptr,a
                                   1509 ;	../Common/MenuMgr.c:174: *pStartPos = 0;
      000F5B 90 01 85         [24] 1510 	mov	dptr,#_GetMenuItemExtent_PARM_2
      000F5E E0               [24] 1511 	movx	a,@dptr
      000F5F FD               [12] 1512 	mov	r5,a
      000F60 A3               [24] 1513 	inc	dptr
      000F61 E0               [24] 1514 	movx	a,@dptr
      000F62 FE               [12] 1515 	mov	r6,a
      000F63 A3               [24] 1516 	inc	dptr
      000F64 E0               [24] 1517 	movx	a,@dptr
      000F65 FF               [12] 1518 	mov	r7,a
      000F66 8D 82            [24] 1519 	mov	dpl,r5
      000F68 8E 83            [24] 1520 	mov	dph,r6
      000F6A 8F F0            [24] 1521 	mov	b,r7
      000F6C E4               [12] 1522 	clr	a
      000F6D 12 3C 27         [24] 1523 	lcall	__gptrput
      000F70 A3               [24] 1524 	inc	dptr
      000F71 12 3C 27         [24] 1525 	lcall	__gptrput
                                   1526 ;	../Common/MenuMgr.c:175: *pEndPos = 0;
      000F74 90 01 88         [24] 1527 	mov	dptr,#_GetMenuItemExtent_PARM_3
      000F77 E0               [24] 1528 	movx	a,@dptr
      000F78 F5 1F            [12] 1529 	mov	_GetMenuItemExtent_sloc5_1_0,a
      000F7A A3               [24] 1530 	inc	dptr
      000F7B E0               [24] 1531 	movx	a,@dptr
      000F7C F5 20            [12] 1532 	mov	(_GetMenuItemExtent_sloc5_1_0 + 1),a
      000F7E A3               [24] 1533 	inc	dptr
      000F7F E0               [24] 1534 	movx	a,@dptr
      000F80 F5 21            [12] 1535 	mov	(_GetMenuItemExtent_sloc5_1_0 + 2),a
      000F82 85 1F 82         [24] 1536 	mov	dpl,_GetMenuItemExtent_sloc5_1_0
      000F85 85 20 83         [24] 1537 	mov	dph,(_GetMenuItemExtent_sloc5_1_0 + 1)
      000F88 85 21 F0         [24] 1538 	mov	b,(_GetMenuItemExtent_sloc5_1_0 + 2)
      000F8B E4               [12] 1539 	clr	a
      000F8C 12 3C 27         [24] 1540 	lcall	__gptrput
      000F8F A3               [24] 1541 	inc	dptr
      000F90 12 3C 27         [24] 1542 	lcall	__gptrput
                                   1543 ;	../Common/MenuMgr.c:176: currentPos = 0;
      000F93 90 01 8D         [24] 1544 	mov	dptr,#_GetMenuItemExtent_currentPos_65536_86
      000F96 F0               [24] 1545 	movx	@dptr,a
      000F97 A3               [24] 1546 	inc	dptr
      000F98 F0               [24] 1547 	movx	@dptr,a
                                   1548 ;	../Common/MenuMgr.c:178: currentParent = MenuDefinitions[menuItem].parent;
      000F99 90 01 8B         [24] 1549 	mov	dptr,#_GetMenuItemExtent_menuItem_65536_85
      000F9C E0               [24] 1550 	movx	a,@dptr
      000F9D F5 15            [12] 1551 	mov	_GetMenuItemExtent_sloc0_1_0,a
      000F9F A3               [24] 1552 	inc	dptr
      000FA0 E0               [24] 1553 	movx	a,@dptr
      000FA1 F5 16            [12] 1554 	mov	(_GetMenuItemExtent_sloc0_1_0 + 1),a
      000FA3 90 02 BD         [24] 1555 	mov	dptr,#__mulint_PARM_2
      000FA6 E5 15            [12] 1556 	mov	a,_GetMenuItemExtent_sloc0_1_0
      000FA8 F0               [24] 1557 	movx	@dptr,a
      000FA9 E5 16            [12] 1558 	mov	a,(_GetMenuItemExtent_sloc0_1_0 + 1)
      000FAB A3               [24] 1559 	inc	dptr
      000FAC F0               [24] 1560 	movx	@dptr,a
      000FAD 90 00 05         [24] 1561 	mov	dptr,#0x0005
      000FB0 C0 07            [24] 1562 	push	ar7
      000FB2 C0 06            [24] 1563 	push	ar6
      000FB4 C0 05            [24] 1564 	push	ar5
      000FB6 12 3C 42         [24] 1565 	lcall	__mulint
      000FB9 A8 82            [24] 1566 	mov	r0,dpl
      000FBB A9 83            [24] 1567 	mov	r1,dph
      000FBD D0 05            [24] 1568 	pop	ar5
      000FBF D0 06            [24] 1569 	pop	ar6
      000FC1 D0 07            [24] 1570 	pop	ar7
      000FC3 E8               [12] 1571 	mov	a,r0
      000FC4 24 A3            [12] 1572 	add	a,#_MenuDefinitions
      000FC6 F8               [12] 1573 	mov	r0,a
      000FC7 E9               [12] 1574 	mov	a,r1
      000FC8 34 00            [12] 1575 	addc	a,#(_MenuDefinitions >> 8)
      000FCA F9               [12] 1576 	mov	r1,a
      000FCB 88 82            [24] 1577 	mov	dpl,r0
      000FCD 89 83            [24] 1578 	mov	dph,r1
      000FCF A3               [24] 1579 	inc	dptr
      000FD0 A3               [24] 1580 	inc	dptr
      000FD1 A3               [24] 1581 	inc	dptr
      000FD2 E0               [24] 1582 	movx	a,@dptr
      000FD3 F9               [12] 1583 	mov	r1,a
      000FD4 89 1D            [24] 1584 	mov	_GetMenuItemExtent_sloc4_1_0,r1
      000FD6 75 1E 00         [24] 1585 	mov	(_GetMenuItemExtent_sloc4_1_0 + 1),#0x00
                                   1586 ;	../Common/MenuMgr.c:180: for (i = 0; MenuDefinitions[i].text != 0; ++i)
      000FD9 85 15 17         [24] 1587 	mov	_GetMenuItemExtent_sloc1_1_0,_GetMenuItemExtent_sloc0_1_0
      000FDC 85 16 18         [24] 1588 	mov	(_GetMenuItemExtent_sloc1_1_0 + 1),(_GetMenuItemExtent_sloc0_1_0 + 1)
      000FDF E4               [12] 1589 	clr	a
      000FE0 F5 19            [12] 1590 	mov	_GetMenuItemExtent_sloc2_1_0,a
      000FE2 F5 1A            [12] 1591 	mov	(_GetMenuItemExtent_sloc2_1_0 + 1),a
      000FE4                       1592 00113$:
      000FE4 90 02 BD         [24] 1593 	mov	dptr,#__mulint_PARM_2
      000FE7 E5 19            [12] 1594 	mov	a,_GetMenuItemExtent_sloc2_1_0
      000FE9 F0               [24] 1595 	movx	@dptr,a
      000FEA E5 1A            [12] 1596 	mov	a,(_GetMenuItemExtent_sloc2_1_0 + 1)
      000FEC A3               [24] 1597 	inc	dptr
      000FED F0               [24] 1598 	movx	@dptr,a
      000FEE 90 00 05         [24] 1599 	mov	dptr,#0x0005
      000FF1 C0 07            [24] 1600 	push	ar7
      000FF3 C0 06            [24] 1601 	push	ar6
      000FF5 C0 05            [24] 1602 	push	ar5
      000FF7 12 3C 42         [24] 1603 	lcall	__mulint
      000FFA 85 82 1B         [24] 1604 	mov	_GetMenuItemExtent_sloc3_1_0,dpl
      000FFD 85 83 1C         [24] 1605 	mov	(_GetMenuItemExtent_sloc3_1_0 + 1),dph
      001000 D0 05            [24] 1606 	pop	ar5
      001002 D0 06            [24] 1607 	pop	ar6
      001004 D0 07            [24] 1608 	pop	ar7
      001006 E5 1B            [12] 1609 	mov	a,_GetMenuItemExtent_sloc3_1_0
      001008 24 A3            [12] 1610 	add	a,#_MenuDefinitions
      00100A F5 82            [12] 1611 	mov	dpl,a
      00100C E5 1C            [12] 1612 	mov	a,(_GetMenuItemExtent_sloc3_1_0 + 1)
      00100E 34 00            [12] 1613 	addc	a,#(_MenuDefinitions >> 8)
      001010 F5 83            [12] 1614 	mov	dph,a
      001012 E0               [24] 1615 	movx	a,@dptr
      001013 F8               [12] 1616 	mov	r0,a
      001014 A3               [24] 1617 	inc	dptr
      001015 E0               [24] 1618 	movx	a,@dptr
      001016 F9               [12] 1619 	mov	r1,a
      001017 A3               [24] 1620 	inc	dptr
      001018 E0               [24] 1621 	movx	a,@dptr
      001019 E8               [12] 1622 	mov	a,r0
      00101A 49               [12] 1623 	orl	a,r1
      00101B 70 01            [24] 1624 	jnz	00147$
      00101D 22               [24] 1625 	ret
      00101E                       1626 00147$:
                                   1627 ;	../Common/MenuMgr.c:182: if (MenuDefinitions[i].parent == currentParent)
      00101E E5 1B            [12] 1628 	mov	a,_GetMenuItemExtent_sloc3_1_0
      001020 24 A3            [12] 1629 	add	a,#_MenuDefinitions
      001022 FB               [12] 1630 	mov	r3,a
      001023 E5 1C            [12] 1631 	mov	a,(_GetMenuItemExtent_sloc3_1_0 + 1)
      001025 34 00            [12] 1632 	addc	a,#(_MenuDefinitions >> 8)
      001027 FC               [12] 1633 	mov	r4,a
      001028 8B 82            [24] 1634 	mov	dpl,r3
      00102A 8C 83            [24] 1635 	mov	dph,r4
      00102C A3               [24] 1636 	inc	dptr
      00102D A3               [24] 1637 	inc	dptr
      00102E A3               [24] 1638 	inc	dptr
      00102F E0               [24] 1639 	movx	a,@dptr
      001030 FC               [12] 1640 	mov	r4,a
      001031 7B 00            [12] 1641 	mov	r3,#0x00
      001033 B5 1D 06         [24] 1642 	cjne	a,_GetMenuItemExtent_sloc4_1_0,00148$
      001036 EB               [12] 1643 	mov	a,r3
      001037 B5 1E 02         [24] 1644 	cjne	a,(_GetMenuItemExtent_sloc4_1_0 + 1),00148$
      00103A 80 03            [24] 1645 	sjmp	00149$
      00103C                       1646 00148$:
      00103C 02 10 ED         [24] 1647 	ljmp	00114$
      00103F                       1648 00149$:
                                   1649 ;	../Common/MenuMgr.c:184: if (i == menuItem)
      00103F E5 17            [12] 1650 	mov	a,_GetMenuItemExtent_sloc1_1_0
      001041 B5 19 1C         [24] 1651 	cjne	a,_GetMenuItemExtent_sloc2_1_0,00102$
      001044 E5 18            [12] 1652 	mov	a,(_GetMenuItemExtent_sloc1_1_0 + 1)
      001046 B5 1A 17         [24] 1653 	cjne	a,(_GetMenuItemExtent_sloc2_1_0 + 1),00102$
                                   1654 ;	../Common/MenuMgr.c:186: *pStartPos = currentPos;
      001049 90 01 8D         [24] 1655 	mov	dptr,#_GetMenuItemExtent_currentPos_65536_86
      00104C E0               [24] 1656 	movx	a,@dptr
      00104D FB               [12] 1657 	mov	r3,a
      00104E A3               [24] 1658 	inc	dptr
      00104F E0               [24] 1659 	movx	a,@dptr
      001050 FC               [12] 1660 	mov	r4,a
      001051 8D 82            [24] 1661 	mov	dpl,r5
      001053 8E 83            [24] 1662 	mov	dph,r6
      001055 8F F0            [24] 1663 	mov	b,r7
      001057 EB               [12] 1664 	mov	a,r3
      001058 12 3C 27         [24] 1665 	lcall	__gptrput
      00105B A3               [24] 1666 	inc	dptr
      00105C EC               [12] 1667 	mov	a,r4
      00105D 12 3C 27         [24] 1668 	lcall	__gptrput
      001060                       1669 00102$:
                                   1670 ;	../Common/MenuMgr.c:188: currentPos++; 
      001060 90 01 8D         [24] 1671 	mov	dptr,#_GetMenuItemExtent_currentPos_65536_86
      001063 E0               [24] 1672 	movx	a,@dptr
      001064 24 01            [12] 1673 	add	a,#0x01
      001066 F0               [24] 1674 	movx	@dptr,a
      001067 A3               [24] 1675 	inc	dptr
      001068 E0               [24] 1676 	movx	a,@dptr
      001069 34 00            [12] 1677 	addc	a,#0x00
      00106B F0               [24] 1678 	movx	@dptr,a
                                   1679 ;	../Common/MenuMgr.c:191: for (pTemp = MenuDefinitions[i].text; *pTemp; ++pTemp)
      00106C 90 02 BD         [24] 1680 	mov	dptr,#__mulint_PARM_2
      00106F E5 19            [12] 1681 	mov	a,_GetMenuItemExtent_sloc2_1_0
      001071 F0               [24] 1682 	movx	@dptr,a
      001072 E5 1A            [12] 1683 	mov	a,(_GetMenuItemExtent_sloc2_1_0 + 1)
      001074 A3               [24] 1684 	inc	dptr
      001075 F0               [24] 1685 	movx	@dptr,a
      001076 90 00 05         [24] 1686 	mov	dptr,#0x0005
      001079 C0 07            [24] 1687 	push	ar7
      00107B C0 06            [24] 1688 	push	ar6
      00107D C0 05            [24] 1689 	push	ar5
      00107F 12 3C 42         [24] 1690 	lcall	__mulint
      001082 AB 82            [24] 1691 	mov	r3,dpl
      001084 AC 83            [24] 1692 	mov	r4,dph
      001086 D0 05            [24] 1693 	pop	ar5
      001088 D0 06            [24] 1694 	pop	ar6
      00108A D0 07            [24] 1695 	pop	ar7
      00108C EB               [12] 1696 	mov	a,r3
      00108D 24 A3            [12] 1697 	add	a,#_MenuDefinitions
      00108F F5 82            [12] 1698 	mov	dpl,a
      001091 EC               [12] 1699 	mov	a,r4
      001092 34 00            [12] 1700 	addc	a,#(_MenuDefinitions >> 8)
      001094 F5 83            [12] 1701 	mov	dph,a
      001096 E0               [24] 1702 	movx	a,@dptr
      001097 FA               [12] 1703 	mov	r2,a
      001098 A3               [24] 1704 	inc	dptr
      001099 E0               [24] 1705 	movx	a,@dptr
      00109A FB               [12] 1706 	mov	r3,a
      00109B A3               [24] 1707 	inc	dptr
      00109C E0               [24] 1708 	movx	a,@dptr
      00109D FC               [12] 1709 	mov	r4,a
      00109E 90 01 8D         [24] 1710 	mov	dptr,#_GetMenuItemExtent_currentPos_65536_86
      0010A1 E0               [24] 1711 	movx	a,@dptr
      0010A2 F8               [12] 1712 	mov	r0,a
      0010A3 A3               [24] 1713 	inc	dptr
      0010A4 E0               [24] 1714 	movx	a,@dptr
      0010A5 F9               [12] 1715 	mov	r1,a
      0010A6                       1716 00110$:
      0010A6 8A 82            [24] 1717 	mov	dpl,r2
      0010A8 8B 83            [24] 1718 	mov	dph,r3
      0010AA 8C F0            [24] 1719 	mov	b,r4
      0010AC 12 3D E8         [24] 1720 	lcall	__gptrget
      0010AF 60 0C            [24] 1721 	jz	00124$
                                   1722 ;	../Common/MenuMgr.c:193: currentPos++;
      0010B1 08               [12] 1723 	inc	r0
      0010B2 B8 00 01         [24] 1724 	cjne	r0,#0x00,00153$
      0010B5 09               [12] 1725 	inc	r1
      0010B6                       1726 00153$:
                                   1727 ;	../Common/MenuMgr.c:191: for (pTemp = MenuDefinitions[i].text; *pTemp; ++pTemp)
      0010B6 0A               [12] 1728 	inc	r2
      0010B7 BA 00 EC         [24] 1729 	cjne	r2,#0x00,00110$
      0010BA 0B               [12] 1730 	inc	r3
      0010BB 80 E9            [24] 1731 	sjmp	00110$
      0010BD                       1732 00124$:
      0010BD 90 01 8D         [24] 1733 	mov	dptr,#_GetMenuItemExtent_currentPos_65536_86
      0010C0 E8               [12] 1734 	mov	a,r0
      0010C1 F0               [24] 1735 	movx	@dptr,a
      0010C2 E9               [12] 1736 	mov	a,r1
      0010C3 A3               [24] 1737 	inc	dptr
      0010C4 F0               [24] 1738 	movx	@dptr,a
                                   1739 ;	../Common/MenuMgr.c:196: if (i == menuItem)
      0010C5 E5 15            [12] 1740 	mov	a,_GetMenuItemExtent_sloc0_1_0
      0010C7 B5 19 17         [24] 1741 	cjne	a,_GetMenuItemExtent_sloc2_1_0,00105$
      0010CA E5 16            [12] 1742 	mov	a,(_GetMenuItemExtent_sloc0_1_0 + 1)
      0010CC B5 1A 12         [24] 1743 	cjne	a,(_GetMenuItemExtent_sloc2_1_0 + 1),00105$
                                   1744 ;	../Common/MenuMgr.c:198: *pEndPos = currentPos;
      0010CF 85 1F 82         [24] 1745 	mov	dpl,_GetMenuItemExtent_sloc5_1_0
      0010D2 85 20 83         [24] 1746 	mov	dph,(_GetMenuItemExtent_sloc5_1_0 + 1)
      0010D5 85 21 F0         [24] 1747 	mov	b,(_GetMenuItemExtent_sloc5_1_0 + 2)
      0010D8 E8               [12] 1748 	mov	a,r0
      0010D9 12 3C 27         [24] 1749 	lcall	__gptrput
      0010DC A3               [24] 1750 	inc	dptr
      0010DD E9               [12] 1751 	mov	a,r1
      0010DE 12 3C 27         [24] 1752 	lcall	__gptrput
      0010E1                       1753 00105$:
                                   1754 ;	../Common/MenuMgr.c:200: currentPos++;
      0010E1 90 01 8D         [24] 1755 	mov	dptr,#_GetMenuItemExtent_currentPos_65536_86
      0010E4 E0               [24] 1756 	movx	a,@dptr
      0010E5 24 01            [12] 1757 	add	a,#0x01
      0010E7 F0               [24] 1758 	movx	@dptr,a
      0010E8 A3               [24] 1759 	inc	dptr
      0010E9 E0               [24] 1760 	movx	a,@dptr
      0010EA 34 00            [12] 1761 	addc	a,#0x00
      0010EC F0               [24] 1762 	movx	@dptr,a
      0010ED                       1763 00114$:
                                   1764 ;	../Common/MenuMgr.c:180: for (i = 0; MenuDefinitions[i].text != 0; ++i)
      0010ED 05 19            [12] 1765 	inc	_GetMenuItemExtent_sloc2_1_0
      0010EF E4               [12] 1766 	clr	a
      0010F0 B5 19 02         [24] 1767 	cjne	a,_GetMenuItemExtent_sloc2_1_0,00157$
      0010F3 05 1A            [12] 1768 	inc	(_GetMenuItemExtent_sloc2_1_0 + 1)
      0010F5                       1769 00157$:
                                   1770 ;	../Common/MenuMgr.c:203: }
      0010F5 02 0F E4         [24] 1771 	ljmp	00113$
                                   1772 ;------------------------------------------------------------
                                   1773 ;Allocation info for local variables in function 'RenderMenuOnBuffer'
                                   1774 ;------------------------------------------------------------
                                   1775 ;sloc0                     Allocated with name '_RenderMenuOnBuffer_sloc0_1_0'
                                   1776 ;maxLength                 Allocated with name '_RenderMenuOnBuffer_PARM_2'
                                   1777 ;pBuffer                   Allocated with name '_RenderMenuOnBuffer_pBuffer_65536_94'
                                   1778 ;startPos                  Allocated with name '_RenderMenuOnBuffer_startPos_131072_96'
                                   1779 ;endPos                    Allocated with name '_RenderMenuOnBuffer_endPos_131072_96'
                                   1780 ;------------------------------------------------------------
                                   1781 ;	../Common/MenuMgr.c:205: void RenderMenuOnBuffer(char *pBuffer, int maxLength)
                                   1782 ;	-----------------------------------------
                                   1783 ;	 function RenderMenuOnBuffer
                                   1784 ;	-----------------------------------------
      0010F8                       1785 _RenderMenuOnBuffer:
      0010F8 AF F0            [24] 1786 	mov	r7,b
      0010FA AE 83            [24] 1787 	mov	r6,dph
      0010FC E5 82            [12] 1788 	mov	a,dpl
      0010FE 90 01 91         [24] 1789 	mov	dptr,#_RenderMenuOnBuffer_pBuffer_65536_94
      001101 F0               [24] 1790 	movx	@dptr,a
      001102 EE               [12] 1791 	mov	a,r6
      001103 A3               [24] 1792 	inc	dptr
      001104 F0               [24] 1793 	movx	@dptr,a
      001105 EF               [12] 1794 	mov	a,r7
      001106 A3               [24] 1795 	inc	dptr
      001107 F0               [24] 1796 	movx	@dptr,a
                                   1797 ;	../Common/MenuMgr.c:207: *pBuffer = 0;
      001108 90 01 91         [24] 1798 	mov	dptr,#_RenderMenuOnBuffer_pBuffer_65536_94
      00110B E0               [24] 1799 	movx	a,@dptr
      00110C FD               [12] 1800 	mov	r5,a
      00110D A3               [24] 1801 	inc	dptr
      00110E E0               [24] 1802 	movx	a,@dptr
      00110F FE               [12] 1803 	mov	r6,a
      001110 A3               [24] 1804 	inc	dptr
      001111 E0               [24] 1805 	movx	a,@dptr
      001112 FF               [12] 1806 	mov	r7,a
      001113 8D 82            [24] 1807 	mov	dpl,r5
      001115 8E 83            [24] 1808 	mov	dph,r6
      001117 8F F0            [24] 1809 	mov	b,r7
      001119 E4               [12] 1810 	clr	a
      00111A 12 3C 27         [24] 1811 	lcall	__gptrput
                                   1812 ;	../Common/MenuMgr.c:215: GetMenuItemExtent(MenuController.currentSelectedMenuIndex, &startPos, &endPos);
      00111D 90 01 6D         [24] 1813 	mov	dptr,#_MenuController
      001120 E0               [24] 1814 	movx	a,@dptr
      001121 FF               [12] 1815 	mov	r7,a
      001122 7E 00            [12] 1816 	mov	r6,#0x00
      001124 90 01 85         [24] 1817 	mov	dptr,#_GetMenuItemExtent_PARM_2
      001127 74 94            [12] 1818 	mov	a,#_RenderMenuOnBuffer_startPos_131072_96
      001129 F0               [24] 1819 	movx	@dptr,a
      00112A 74 01            [12] 1820 	mov	a,#(_RenderMenuOnBuffer_startPos_131072_96 >> 8)
      00112C A3               [24] 1821 	inc	dptr
      00112D F0               [24] 1822 	movx	@dptr,a
      00112E E4               [12] 1823 	clr	a
      00112F A3               [24] 1824 	inc	dptr
      001130 F0               [24] 1825 	movx	@dptr,a
      001131 90 01 88         [24] 1826 	mov	dptr,#_GetMenuItemExtent_PARM_3
      001134 74 96            [12] 1827 	mov	a,#_RenderMenuOnBuffer_endPos_131072_96
      001136 F0               [24] 1828 	movx	@dptr,a
      001137 74 01            [12] 1829 	mov	a,#(_RenderMenuOnBuffer_endPos_131072_96 >> 8)
      001139 A3               [24] 1830 	inc	dptr
      00113A F0               [24] 1831 	movx	@dptr,a
      00113B E4               [12] 1832 	clr	a
      00113C A3               [24] 1833 	inc	dptr
      00113D F0               [24] 1834 	movx	@dptr,a
      00113E 8F 82            [24] 1835 	mov	dpl,r7
      001140 8E 83            [24] 1836 	mov	dph,r6
      001142 12 0F 50         [24] 1837 	lcall	_GetMenuItemExtent
                                   1838 ;	../Common/MenuMgr.c:219: if (startPos < MenuController.scrollPos)
      001145 90 01 72         [24] 1839 	mov	dptr,#(_MenuController + 0x0005)
      001148 E0               [24] 1840 	movx	a,@dptr
      001149 FF               [12] 1841 	mov	r7,a
      00114A 90 01 94         [24] 1842 	mov	dptr,#_RenderMenuOnBuffer_startPos_131072_96
      00114D E0               [24] 1843 	movx	a,@dptr
      00114E FD               [12] 1844 	mov	r5,a
      00114F A3               [24] 1845 	inc	dptr
      001150 E0               [24] 1846 	movx	a,@dptr
      001151 FE               [12] 1847 	mov	r6,a
      001152 8F 04            [24] 1848 	mov	ar4,r7
      001154 7F 00            [12] 1849 	mov	r7,#0x00
      001156 C3               [12] 1850 	clr	c
      001157 ED               [12] 1851 	mov	a,r5
      001158 9C               [12] 1852 	subb	a,r4
      001159 EE               [12] 1853 	mov	a,r6
      00115A 64 80            [12] 1854 	xrl	a,#0x80
      00115C 8F F0            [24] 1855 	mov	b,r7
      00115E 63 F0 80         [24] 1856 	xrl	b,#0x80
      001161 95 F0            [12] 1857 	subb	a,b
      001163 50 07            [24] 1858 	jnc	00104$
                                   1859 ;	../Common/MenuMgr.c:221: MenuController.scrollPos = startPos;
      001165 90 01 72         [24] 1860 	mov	dptr,#(_MenuController + 0x0005)
      001168 ED               [12] 1861 	mov	a,r5
      001169 F0               [24] 1862 	movx	@dptr,a
      00116A 80 2E            [24] 1863 	sjmp	00105$
      00116C                       1864 00104$:
                                   1865 ;	../Common/MenuMgr.c:223: else if (endPos > MenuController.scrollPos + maxLength)
      00116C 90 01 8F         [24] 1866 	mov	dptr,#_RenderMenuOnBuffer_PARM_2
      00116F E0               [24] 1867 	movx	a,@dptr
      001170 FD               [12] 1868 	mov	r5,a
      001171 A3               [24] 1869 	inc	dptr
      001172 E0               [24] 1870 	movx	a,@dptr
      001173 FE               [12] 1871 	mov	r6,a
      001174 ED               [12] 1872 	mov	a,r5
      001175 2C               [12] 1873 	add	a,r4
      001176 FC               [12] 1874 	mov	r4,a
      001177 EE               [12] 1875 	mov	a,r6
      001178 3F               [12] 1876 	addc	a,r7
      001179 FF               [12] 1877 	mov	r7,a
      00117A 90 01 96         [24] 1878 	mov	dptr,#_RenderMenuOnBuffer_endPos_131072_96
      00117D E0               [24] 1879 	movx	a,@dptr
      00117E FA               [12] 1880 	mov	r2,a
      00117F A3               [24] 1881 	inc	dptr
      001180 E0               [24] 1882 	movx	a,@dptr
      001181 FB               [12] 1883 	mov	r3,a
      001182 C3               [12] 1884 	clr	c
      001183 EC               [12] 1885 	mov	a,r4
      001184 9A               [12] 1886 	subb	a,r2
      001185 EF               [12] 1887 	mov	a,r7
      001186 64 80            [12] 1888 	xrl	a,#0x80
      001188 8B F0            [24] 1889 	mov	b,r3
      00118A 63 F0 80         [24] 1890 	xrl	b,#0x80
      00118D 95 F0            [12] 1891 	subb	a,b
      00118F 50 09            [24] 1892 	jnc	00105$
                                   1893 ;	../Common/MenuMgr.c:225: MenuController.scrollPos = endPos - maxLength + 1;
      001191 EA               [12] 1894 	mov	a,r2
      001192 C3               [12] 1895 	clr	c
      001193 9D               [12] 1896 	subb	a,r5
      001194 04               [12] 1897 	inc	a
      001195 FF               [12] 1898 	mov	r7,a
      001196 90 01 72         [24] 1899 	mov	dptr,#(_MenuController + 0x0005)
      001199 F0               [24] 1900 	movx	@dptr,a
      00119A                       1901 00105$:
                                   1902 ;	../Common/MenuMgr.c:228: RenderActiveMenu(pBuffer, MenuController.scrollPos, MenuController.scrollPos + maxLength);
      00119A 90 01 91         [24] 1903 	mov	dptr,#_RenderMenuOnBuffer_pBuffer_65536_94
      00119D E0               [24] 1904 	movx	a,@dptr
      00119E FD               [12] 1905 	mov	r5,a
      00119F A3               [24] 1906 	inc	dptr
      0011A0 E0               [24] 1907 	movx	a,@dptr
      0011A1 FE               [12] 1908 	mov	r6,a
      0011A2 A3               [24] 1909 	inc	dptr
      0011A3 E0               [24] 1910 	movx	a,@dptr
      0011A4 FF               [12] 1911 	mov	r7,a
      0011A5 90 01 72         [24] 1912 	mov	dptr,#(_MenuController + 0x0005)
      0011A8 E0               [24] 1913 	movx	a,@dptr
      0011A9 FC               [12] 1914 	mov	r4,a
      0011AA 7B 00            [12] 1915 	mov	r3,#0x00
      0011AC 90 01 72         [24] 1916 	mov	dptr,#(_MenuController + 0x0005)
      0011AF E0               [24] 1917 	movx	a,@dptr
      0011B0 FA               [12] 1918 	mov	r2,a
      0011B1 8A 22            [24] 1919 	mov	_RenderMenuOnBuffer_sloc0_1_0,r2
                                   1920 ;	1-genFromRTrack replaced	mov	(_RenderMenuOnBuffer_sloc0_1_0 + 1),#0x00
      0011B3 8B 23            [24] 1921 	mov	(_RenderMenuOnBuffer_sloc0_1_0 + 1),r3
      0011B5 90 01 8F         [24] 1922 	mov	dptr,#_RenderMenuOnBuffer_PARM_2
      0011B8 E0               [24] 1923 	movx	a,@dptr
      0011B9 F8               [12] 1924 	mov	r0,a
      0011BA A3               [24] 1925 	inc	dptr
      0011BB E0               [24] 1926 	movx	a,@dptr
      0011BC FA               [12] 1927 	mov	r2,a
      0011BD E8               [12] 1928 	mov	a,r0
      0011BE 25 22            [12] 1929 	add	a,_RenderMenuOnBuffer_sloc0_1_0
      0011C0 F8               [12] 1930 	mov	r0,a
      0011C1 EA               [12] 1931 	mov	a,r2
      0011C2 35 23            [12] 1932 	addc	a,(_RenderMenuOnBuffer_sloc0_1_0 + 1)
      0011C4 FA               [12] 1933 	mov	r2,a
      0011C5 90 01 7B         [24] 1934 	mov	dptr,#_RenderActiveMenu_PARM_2
      0011C8 EC               [12] 1935 	mov	a,r4
      0011C9 F0               [24] 1936 	movx	@dptr,a
      0011CA EB               [12] 1937 	mov	a,r3
      0011CB A3               [24] 1938 	inc	dptr
      0011CC F0               [24] 1939 	movx	@dptr,a
      0011CD 90 01 7D         [24] 1940 	mov	dptr,#_RenderActiveMenu_PARM_3
      0011D0 E8               [12] 1941 	mov	a,r0
      0011D1 F0               [24] 1942 	movx	@dptr,a
      0011D2 EA               [12] 1943 	mov	a,r2
      0011D3 A3               [24] 1944 	inc	dptr
      0011D4 F0               [24] 1945 	movx	@dptr,a
      0011D5 8D 82            [24] 1946 	mov	dpl,r5
      0011D7 8E 83            [24] 1947 	mov	dph,r6
      0011D9 8F F0            [24] 1948 	mov	b,r7
                                   1949 ;	../Common/MenuMgr.c:230: }
      0011DB 02 0C AF         [24] 1950 	ljmp	_RenderActiveMenu
                                   1951 ;------------------------------------------------------------
                                   1952 ;Allocation info for local variables in function 'IsParentMenu'
                                   1953 ;------------------------------------------------------------
                                   1954 ;sloc0                     Allocated with name '_IsParentMenu_sloc0_1_0'
                                   1955 ;i                         Allocated with name '_IsParentMenu_i_65536_99'
                                   1956 ;------------------------------------------------------------
                                   1957 ;	../Common/MenuMgr.c:232: int IsParentMenu()
                                   1958 ;	-----------------------------------------
                                   1959 ;	 function IsParentMenu
                                   1960 ;	-----------------------------------------
      0011DE                       1961 _IsParentMenu:
                                   1962 ;	../Common/MenuMgr.c:235: for (i = 0; MenuDefinitions[i].text != 0; ++i)
      0011DE 90 01 6D         [24] 1963 	mov	dptr,#_MenuController
      0011E1 E0               [24] 1964 	movx	a,@dptr
      0011E2 FF               [12] 1965 	mov	r7,a
      0011E3 75 F0 05         [24] 1966 	mov	b,#0x05
      0011E6 A4               [48] 1967 	mul	ab
      0011E7 F5 24            [12] 1968 	mov	_IsParentMenu_sloc0_1_0,a
      0011E9 85 F0 25         [24] 1969 	mov	(_IsParentMenu_sloc0_1_0 + 1),b
      0011EC 7C 00            [12] 1970 	mov	r4,#0x00
      0011EE 7D 00            [12] 1971 	mov	r5,#0x00
      0011F0                       1972 00105$:
      0011F0 90 02 BD         [24] 1973 	mov	dptr,#__mulint_PARM_2
      0011F3 EC               [12] 1974 	mov	a,r4
      0011F4 F0               [24] 1975 	movx	@dptr,a
      0011F5 ED               [12] 1976 	mov	a,r5
      0011F6 A3               [24] 1977 	inc	dptr
      0011F7 F0               [24] 1978 	movx	@dptr,a
      0011F8 90 00 05         [24] 1979 	mov	dptr,#0x0005
      0011FB C0 05            [24] 1980 	push	ar5
      0011FD C0 04            [24] 1981 	push	ar4
      0011FF 12 3C 42         [24] 1982 	lcall	__mulint
      001202 AA 82            [24] 1983 	mov	r2,dpl
      001204 AB 83            [24] 1984 	mov	r3,dph
      001206 D0 04            [24] 1985 	pop	ar4
      001208 D0 05            [24] 1986 	pop	ar5
      00120A EA               [12] 1987 	mov	a,r2
      00120B 24 A3            [12] 1988 	add	a,#_MenuDefinitions
      00120D F5 82            [12] 1989 	mov	dpl,a
      00120F EB               [12] 1990 	mov	a,r3
      001210 34 00            [12] 1991 	addc	a,#(_MenuDefinitions >> 8)
      001212 F5 83            [12] 1992 	mov	dph,a
      001214 E0               [24] 1993 	movx	a,@dptr
      001215 F8               [12] 1994 	mov	r0,a
      001216 A3               [24] 1995 	inc	dptr
      001217 E0               [24] 1996 	movx	a,@dptr
      001218 F9               [12] 1997 	mov	r1,a
      001219 A3               [24] 1998 	inc	dptr
      00121A E0               [24] 1999 	movx	a,@dptr
      00121B E8               [12] 2000 	mov	a,r0
      00121C 49               [12] 2001 	orl	a,r1
      00121D 60 34            [24] 2002 	jz	00103$
                                   2003 ;	../Common/MenuMgr.c:237: if (MenuDefinitions[i].parent == MenuDefinitions[MenuController.currentSelectedMenuIndex].id)
      00121F EA               [12] 2004 	mov	a,r2
      001220 24 A3            [12] 2005 	add	a,#_MenuDefinitions
      001222 FA               [12] 2006 	mov	r2,a
      001223 EB               [12] 2007 	mov	a,r3
      001224 34 00            [12] 2008 	addc	a,#(_MenuDefinitions >> 8)
      001226 FB               [12] 2009 	mov	r3,a
      001227 8A 82            [24] 2010 	mov	dpl,r2
      001229 8B 83            [24] 2011 	mov	dph,r3
      00122B A3               [24] 2012 	inc	dptr
      00122C A3               [24] 2013 	inc	dptr
      00122D A3               [24] 2014 	inc	dptr
      00122E E0               [24] 2015 	movx	a,@dptr
      00122F FF               [12] 2016 	mov	r7,a
      001230 E5 24            [12] 2017 	mov	a,_IsParentMenu_sloc0_1_0
      001232 24 A3            [12] 2018 	add	a,#_MenuDefinitions
      001234 FB               [12] 2019 	mov	r3,a
      001235 E5 25            [12] 2020 	mov	a,(_IsParentMenu_sloc0_1_0 + 1)
      001237 34 00            [12] 2021 	addc	a,#(_MenuDefinitions >> 8)
      001239 FE               [12] 2022 	mov	r6,a
      00123A 8B 82            [24] 2023 	mov	dpl,r3
      00123C 8E 83            [24] 2024 	mov	dph,r6
      00123E A3               [24] 2025 	inc	dptr
      00123F A3               [24] 2026 	inc	dptr
      001240 A3               [24] 2027 	inc	dptr
      001241 A3               [24] 2028 	inc	dptr
      001242 E0               [24] 2029 	movx	a,@dptr
      001243 FE               [12] 2030 	mov	r6,a
      001244 EF               [12] 2031 	mov	a,r7
      001245 B5 06 04         [24] 2032 	cjne	a,ar6,00106$
                                   2033 ;	../Common/MenuMgr.c:239: return 1;
      001248 90 00 01         [24] 2034 	mov	dptr,#0x0001
      00124B 22               [24] 2035 	ret
      00124C                       2036 00106$:
                                   2037 ;	../Common/MenuMgr.c:235: for (i = 0; MenuDefinitions[i].text != 0; ++i)
      00124C 0C               [12] 2038 	inc	r4
      00124D BC 00 A0         [24] 2039 	cjne	r4,#0x00,00105$
      001250 0D               [12] 2040 	inc	r5
      001251 80 9D            [24] 2041 	sjmp	00105$
      001253                       2042 00103$:
                                   2043 ;	../Common/MenuMgr.c:242: return 0;
      001253 90 00 00         [24] 2044 	mov	dptr,#0x0000
                                   2045 ;	../Common/MenuMgr.c:243: }
      001256 22               [24] 2046 	ret
                                   2047 ;------------------------------------------------------------
                                   2048 ;Allocation info for local variables in function 'IsGoBack'
                                   2049 ;------------------------------------------------------------
                                   2050 ;	../Common/MenuMgr.c:245: int IsGoBack()
                                   2051 ;	-----------------------------------------
                                   2052 ;	 function IsGoBack
                                   2053 ;	-----------------------------------------
      001257                       2054 _IsGoBack:
                                   2055 ;	../Common/MenuMgr.c:247: return MenuDefinitions[MenuController.currentSelectedMenuIndex].id == MENU_END_SENTINEL;
      001257 90 01 6D         [24] 2056 	mov	dptr,#_MenuController
      00125A E0               [24] 2057 	movx	a,@dptr
      00125B 75 F0 05         [24] 2058 	mov	b,#0x05
      00125E A4               [48] 2059 	mul	ab
      00125F 24 A3            [12] 2060 	add	a,#_MenuDefinitions
      001261 FE               [12] 2061 	mov	r6,a
      001262 74 00            [12] 2062 	mov	a,#(_MenuDefinitions >> 8)
      001264 35 F0            [12] 2063 	addc	a,b
      001266 FF               [12] 2064 	mov	r7,a
      001267 8E 82            [24] 2065 	mov	dpl,r6
      001269 8F 83            [24] 2066 	mov	dph,r7
      00126B A3               [24] 2067 	inc	dptr
      00126C A3               [24] 2068 	inc	dptr
      00126D A3               [24] 2069 	inc	dptr
      00126E A3               [24] 2070 	inc	dptr
      00126F E0               [24] 2071 	movx	a,@dptr
      001270 FF               [12] 2072 	mov	r7,a
      001271 BF 01 03         [24] 2073 	cjne	r7,#0x01,00103$
      001274 EF               [12] 2074 	mov	a,r7
      001275 80 01            [24] 2075 	sjmp	00104$
      001277                       2076 00103$:
      001277 E4               [12] 2077 	clr	a
      001278                       2078 00104$:
      001278 FF               [12] 2079 	mov	r7,a
      001279 7E 00            [12] 2080 	mov	r6,#0x00
      00127B 8F 82            [24] 2081 	mov	dpl,r7
      00127D 8E 83            [24] 2082 	mov	dph,r6
                                   2083 ;	../Common/MenuMgr.c:248: }
      00127F 22               [24] 2084 	ret
                                   2085 ;------------------------------------------------------------
                                   2086 ;Allocation info for local variables in function 'GoSubMenu'
                                   2087 ;------------------------------------------------------------
                                   2088 ;i                         Allocated with name '_GoSubMenu_i_65536_104'
                                   2089 ;------------------------------------------------------------
                                   2090 ;	../Common/MenuMgr.c:250: void GoSubMenu()
                                   2091 ;	-----------------------------------------
                                   2092 ;	 function GoSubMenu
                                   2093 ;	-----------------------------------------
      001280                       2094 _GoSubMenu:
                                   2095 ;	../Common/MenuMgr.c:253: for (i = 0; MenuDefinitions[i].text != 0; ++i)
      001280 7E 00            [12] 2096 	mov	r6,#0x00
      001282 7F 00            [12] 2097 	mov	r7,#0x00
      001284                       2098 00105$:
      001284 90 02 BD         [24] 2099 	mov	dptr,#__mulint_PARM_2
      001287 EE               [12] 2100 	mov	a,r6
      001288 F0               [24] 2101 	movx	@dptr,a
      001289 EF               [12] 2102 	mov	a,r7
      00128A A3               [24] 2103 	inc	dptr
      00128B F0               [24] 2104 	movx	@dptr,a
      00128C 90 00 05         [24] 2105 	mov	dptr,#0x0005
      00128F C0 07            [24] 2106 	push	ar7
      001291 C0 06            [24] 2107 	push	ar6
      001293 12 3C 42         [24] 2108 	lcall	__mulint
      001296 AC 82            [24] 2109 	mov	r4,dpl
      001298 AD 83            [24] 2110 	mov	r5,dph
      00129A D0 06            [24] 2111 	pop	ar6
      00129C D0 07            [24] 2112 	pop	ar7
      00129E EC               [12] 2113 	mov	a,r4
      00129F 24 A3            [12] 2114 	add	a,#_MenuDefinitions
      0012A1 F5 82            [12] 2115 	mov	dpl,a
      0012A3 ED               [12] 2116 	mov	a,r5
      0012A4 34 00            [12] 2117 	addc	a,#(_MenuDefinitions >> 8)
      0012A6 F5 83            [12] 2118 	mov	dph,a
      0012A8 E0               [24] 2119 	movx	a,@dptr
      0012A9 F9               [12] 2120 	mov	r1,a
      0012AA A3               [24] 2121 	inc	dptr
      0012AB E0               [24] 2122 	movx	a,@dptr
      0012AC FA               [12] 2123 	mov	r2,a
      0012AD A3               [24] 2124 	inc	dptr
      0012AE E0               [24] 2125 	movx	a,@dptr
      0012AF E9               [12] 2126 	mov	a,r1
      0012B0 4A               [12] 2127 	orl	a,r2
      0012B1 70 01            [24] 2128 	jnz	00121$
      0012B3 22               [24] 2129 	ret
      0012B4                       2130 00121$:
                                   2131 ;	../Common/MenuMgr.c:255: if (MenuDefinitions[i].parent == MenuDefinitions[MenuController.currentSelectedMenuIndex].id)
      0012B4 EC               [12] 2132 	mov	a,r4
      0012B5 24 A3            [12] 2133 	add	a,#_MenuDefinitions
      0012B7 FC               [12] 2134 	mov	r4,a
      0012B8 ED               [12] 2135 	mov	a,r5
      0012B9 34 00            [12] 2136 	addc	a,#(_MenuDefinitions >> 8)
      0012BB FD               [12] 2137 	mov	r5,a
      0012BC 8C 82            [24] 2138 	mov	dpl,r4
      0012BE 8D 83            [24] 2139 	mov	dph,r5
      0012C0 A3               [24] 2140 	inc	dptr
      0012C1 A3               [24] 2141 	inc	dptr
      0012C2 A3               [24] 2142 	inc	dptr
      0012C3 E0               [24] 2143 	movx	a,@dptr
      0012C4 FD               [12] 2144 	mov	r5,a
      0012C5 90 01 6D         [24] 2145 	mov	dptr,#_MenuController
      0012C8 E0               [24] 2146 	movx	a,@dptr
      0012C9 75 F0 05         [24] 2147 	mov	b,#0x05
      0012CC A4               [48] 2148 	mul	ab
      0012CD 24 A3            [12] 2149 	add	a,#_MenuDefinitions
      0012CF FB               [12] 2150 	mov	r3,a
      0012D0 74 00            [12] 2151 	mov	a,#(_MenuDefinitions >> 8)
      0012D2 35 F0            [12] 2152 	addc	a,b
      0012D4 FC               [12] 2153 	mov	r4,a
      0012D5 8B 82            [24] 2154 	mov	dpl,r3
      0012D7 8C 83            [24] 2155 	mov	dph,r4
      0012D9 A3               [24] 2156 	inc	dptr
      0012DA A3               [24] 2157 	inc	dptr
      0012DB A3               [24] 2158 	inc	dptr
      0012DC A3               [24] 2159 	inc	dptr
      0012DD E0               [24] 2160 	movx	a,@dptr
      0012DE FC               [12] 2161 	mov	r4,a
      0012DF ED               [12] 2162 	mov	a,r5
      0012E0 B5 04 65         [24] 2163 	cjne	a,ar4,00106$
                                   2164 ;	../Common/MenuMgr.c:257: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_SUBMENUENTER);
      0012E3 7D 00            [12] 2165 	mov	r5,#0x00
      0012E5 90 01 EA         [24] 2166 	mov	dptr,#_HandleMenuCommand_PARM_2
      0012E8 74 03            [12] 2167 	mov	a,#0x03
      0012EA F0               [24] 2168 	movx	@dptr,a
      0012EB E4               [12] 2169 	clr	a
      0012EC A3               [24] 2170 	inc	dptr
      0012ED F0               [24] 2171 	movx	@dptr,a
      0012EE 8C 82            [24] 2172 	mov	dpl,r4
      0012F0 8D 83            [24] 2173 	mov	dph,r5
      0012F2 C0 07            [24] 2174 	push	ar7
      0012F4 C0 06            [24] 2175 	push	ar6
      0012F6 12 18 4B         [24] 2176 	lcall	_HandleMenuCommand
      0012F9 D0 06            [24] 2177 	pop	ar6
      0012FB D0 07            [24] 2178 	pop	ar7
                                   2179 ;	../Common/MenuMgr.c:259: MenuController.navStack[MenuController.navStackPtr++] = MenuController.currentSelectedMenuIndex;
      0012FD 90 01 71         [24] 2180 	mov	dptr,#(_MenuController + 0x0004)
      001300 E0               [24] 2181 	movx	a,@dptr
      001301 FD               [12] 2182 	mov	r5,a
      001302 04               [12] 2183 	inc	a
      001303 90 01 71         [24] 2184 	mov	dptr,#(_MenuController + 0x0004)
      001306 F0               [24] 2185 	movx	@dptr,a
      001307 ED               [12] 2186 	mov	a,r5
      001308 24 6E            [12] 2187 	add	a,#(_MenuController + 0x0001)
      00130A FD               [12] 2188 	mov	r5,a
      00130B E4               [12] 2189 	clr	a
      00130C 34 01            [12] 2190 	addc	a,#((_MenuController + 0x0001) >> 8)
      00130E FC               [12] 2191 	mov	r4,a
      00130F 90 01 6D         [24] 2192 	mov	dptr,#_MenuController
      001312 E0               [24] 2193 	movx	a,@dptr
      001313 8D 82            [24] 2194 	mov	dpl,r5
      001315 8C 83            [24] 2195 	mov	dph,r4
      001317 F0               [24] 2196 	movx	@dptr,a
                                   2197 ;	../Common/MenuMgr.c:260: MenuController.currentSelectedMenuIndex = i;
      001318 8E 05            [24] 2198 	mov	ar5,r6
      00131A 90 01 6D         [24] 2199 	mov	dptr,#_MenuController
      00131D ED               [12] 2200 	mov	a,r5
      00131E F0               [24] 2201 	movx	@dptr,a
                                   2202 ;	../Common/MenuMgr.c:261: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
      00131F ED               [12] 2203 	mov	a,r5
      001320 75 F0 05         [24] 2204 	mov	b,#0x05
      001323 A4               [48] 2205 	mul	ab
      001324 24 A3            [12] 2206 	add	a,#_MenuDefinitions
      001326 FC               [12] 2207 	mov	r4,a
      001327 74 00            [12] 2208 	mov	a,#(_MenuDefinitions >> 8)
      001329 35 F0            [12] 2209 	addc	a,b
      00132B FD               [12] 2210 	mov	r5,a
      00132C 8C 82            [24] 2211 	mov	dpl,r4
      00132E 8D 83            [24] 2212 	mov	dph,r5
      001330 A3               [24] 2213 	inc	dptr
      001331 A3               [24] 2214 	inc	dptr
      001332 A3               [24] 2215 	inc	dptr
      001333 A3               [24] 2216 	inc	dptr
      001334 E0               [24] 2217 	movx	a,@dptr
      001335 FD               [12] 2218 	mov	r5,a
      001336 7C 00            [12] 2219 	mov	r4,#0x00
      001338 90 01 EA         [24] 2220 	mov	dptr,#_HandleMenuCommand_PARM_2
      00133B 74 01            [12] 2221 	mov	a,#0x01
      00133D F0               [24] 2222 	movx	@dptr,a
      00133E E4               [12] 2223 	clr	a
      00133F A3               [24] 2224 	inc	dptr
      001340 F0               [24] 2225 	movx	@dptr,a
      001341 8D 82            [24] 2226 	mov	dpl,r5
      001343 8C 83            [24] 2227 	mov	dph,r4
                                   2228 ;	../Common/MenuMgr.c:262: break;
      001345 02 18 4B         [24] 2229 	ljmp	_HandleMenuCommand
      001348                       2230 00106$:
                                   2231 ;	../Common/MenuMgr.c:253: for (i = 0; MenuDefinitions[i].text != 0; ++i)
      001348 0E               [12] 2232 	inc	r6
      001349 BE 00 01         [24] 2233 	cjne	r6,#0x00,00124$
      00134C 0F               [12] 2234 	inc	r7
      00134D                       2235 00124$:
                                   2236 ;	../Common/MenuMgr.c:265: }
      00134D 02 12 84         [24] 2237 	ljmp	00105$
                                   2238 ;------------------------------------------------------------
                                   2239 ;Allocation info for local variables in function 'GoRight'
                                   2240 ;------------------------------------------------------------
                                   2241 ;sloc0                     Allocated with name '_GoRight_sloc0_1_0'
                                   2242 ;i                         Allocated with name '_GoRight_i_65536_108'
                                   2243 ;currentParent             Allocated with name '_GoRight_currentParent_65536_108'
                                   2244 ;------------------------------------------------------------
                                   2245 ;	../Common/MenuMgr.c:267: void GoRight()
                                   2246 ;	-----------------------------------------
                                   2247 ;	 function GoRight
                                   2248 ;	-----------------------------------------
      001350                       2249 _GoRight:
                                   2250 ;	../Common/MenuMgr.c:272: currentParent = MenuDefinitions[MenuController.currentSelectedMenuIndex].parent;
      001350 90 01 6D         [24] 2251 	mov	dptr,#_MenuController
      001353 E0               [24] 2252 	movx	a,@dptr
      001354 FF               [12] 2253 	mov	r7,a
      001355 75 F0 05         [24] 2254 	mov	b,#0x05
      001358 A4               [48] 2255 	mul	ab
      001359 24 A3            [12] 2256 	add	a,#_MenuDefinitions
      00135B FD               [12] 2257 	mov	r5,a
      00135C 74 00            [12] 2258 	mov	a,#(_MenuDefinitions >> 8)
      00135E 35 F0            [12] 2259 	addc	a,b
      001360 FE               [12] 2260 	mov	r6,a
      001361 8D 82            [24] 2261 	mov	dpl,r5
      001363 8E 83            [24] 2262 	mov	dph,r6
      001365 A3               [24] 2263 	inc	dptr
      001366 A3               [24] 2264 	inc	dptr
      001367 A3               [24] 2265 	inc	dptr
      001368 E0               [24] 2266 	movx	a,@dptr
      001369 FE               [12] 2267 	mov	r6,a
      00136A 8E 26            [24] 2268 	mov	_GoRight_sloc0_1_0,r6
      00136C 75 27 00         [24] 2269 	mov	(_GoRight_sloc0_1_0 + 1),#0x00
                                   2270 ;	../Common/MenuMgr.c:273: i = MenuController.currentSelectedMenuIndex + 1;
      00136F 7C 00            [12] 2271 	mov	r4,#0x00
      001371 0F               [12] 2272 	inc	r7
      001372 BF 00 01         [24] 2273 	cjne	r7,#0x00,00121$
      001375 0C               [12] 2274 	inc	r4
      001376                       2275 00121$:
                                   2276 ;	../Common/MenuMgr.c:274: while (MenuDefinitions[i].text != 0)
      001376                       2277 00104$:
      001376 90 02 BD         [24] 2278 	mov	dptr,#__mulint_PARM_2
      001379 EF               [12] 2279 	mov	a,r7
      00137A F0               [24] 2280 	movx	@dptr,a
      00137B EC               [12] 2281 	mov	a,r4
      00137C A3               [24] 2282 	inc	dptr
      00137D F0               [24] 2283 	movx	@dptr,a
      00137E 90 00 05         [24] 2284 	mov	dptr,#0x0005
      001381 C0 07            [24] 2285 	push	ar7
      001383 C0 04            [24] 2286 	push	ar4
      001385 12 3C 42         [24] 2287 	lcall	__mulint
      001388 AA 82            [24] 2288 	mov	r2,dpl
      00138A AB 83            [24] 2289 	mov	r3,dph
      00138C D0 04            [24] 2290 	pop	ar4
      00138E D0 07            [24] 2291 	pop	ar7
      001390 EA               [12] 2292 	mov	a,r2
      001391 24 A3            [12] 2293 	add	a,#_MenuDefinitions
      001393 F5 82            [12] 2294 	mov	dpl,a
      001395 EB               [12] 2295 	mov	a,r3
      001396 34 00            [12] 2296 	addc	a,#(_MenuDefinitions >> 8)
      001398 F5 83            [12] 2297 	mov	dph,a
      00139A E0               [24] 2298 	movx	a,@dptr
      00139B F8               [12] 2299 	mov	r0,a
      00139C A3               [24] 2300 	inc	dptr
      00139D E0               [24] 2301 	movx	a,@dptr
      00139E F9               [12] 2302 	mov	r1,a
      00139F A3               [24] 2303 	inc	dptr
      0013A0 E0               [24] 2304 	movx	a,@dptr
      0013A1 E8               [12] 2305 	mov	a,r0
      0013A2 49               [12] 2306 	orl	a,r1
      0013A3 60 52            [24] 2307 	jz	00107$
                                   2308 ;	../Common/MenuMgr.c:276: if (MenuDefinitions[i].parent == currentParent)
      0013A5 EA               [12] 2309 	mov	a,r2
      0013A6 24 A3            [12] 2310 	add	a,#_MenuDefinitions
      0013A8 FA               [12] 2311 	mov	r2,a
      0013A9 EB               [12] 2312 	mov	a,r3
      0013AA 34 00            [12] 2313 	addc	a,#(_MenuDefinitions >> 8)
      0013AC FB               [12] 2314 	mov	r3,a
      0013AD 8A 82            [24] 2315 	mov	dpl,r2
      0013AF 8B 83            [24] 2316 	mov	dph,r3
      0013B1 A3               [24] 2317 	inc	dptr
      0013B2 A3               [24] 2318 	inc	dptr
      0013B3 A3               [24] 2319 	inc	dptr
      0013B4 E0               [24] 2320 	movx	a,@dptr
      0013B5 FE               [12] 2321 	mov	r6,a
      0013B6 7D 00            [12] 2322 	mov	r5,#0x00
      0013B8 B5 26 34         [24] 2323 	cjne	a,_GoRight_sloc0_1_0,00102$
      0013BB ED               [12] 2324 	mov	a,r5
      0013BC B5 27 30         [24] 2325 	cjne	a,(_GoRight_sloc0_1_0 + 1),00102$
                                   2326 ;	../Common/MenuMgr.c:278: MenuController.currentSelectedMenuIndex = i;
      0013BF 8F 06            [24] 2327 	mov	ar6,r7
      0013C1 90 01 6D         [24] 2328 	mov	dptr,#_MenuController
      0013C4 EE               [12] 2329 	mov	a,r6
      0013C5 F0               [24] 2330 	movx	@dptr,a
                                   2331 ;	../Common/MenuMgr.c:279: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
      0013C6 EE               [12] 2332 	mov	a,r6
      0013C7 75 F0 05         [24] 2333 	mov	b,#0x05
      0013CA A4               [48] 2334 	mul	ab
      0013CB 24 A3            [12] 2335 	add	a,#_MenuDefinitions
      0013CD FD               [12] 2336 	mov	r5,a
      0013CE 74 00            [12] 2337 	mov	a,#(_MenuDefinitions >> 8)
      0013D0 35 F0            [12] 2338 	addc	a,b
      0013D2 FE               [12] 2339 	mov	r6,a
      0013D3 8D 82            [24] 2340 	mov	dpl,r5
      0013D5 8E 83            [24] 2341 	mov	dph,r6
      0013D7 A3               [24] 2342 	inc	dptr
      0013D8 A3               [24] 2343 	inc	dptr
      0013D9 A3               [24] 2344 	inc	dptr
      0013DA A3               [24] 2345 	inc	dptr
      0013DB E0               [24] 2346 	movx	a,@dptr
      0013DC FE               [12] 2347 	mov	r6,a
      0013DD 7D 00            [12] 2348 	mov	r5,#0x00
      0013DF 90 01 EA         [24] 2349 	mov	dptr,#_HandleMenuCommand_PARM_2
      0013E2 74 01            [12] 2350 	mov	a,#0x01
      0013E4 F0               [24] 2351 	movx	@dptr,a
      0013E5 E4               [12] 2352 	clr	a
      0013E6 A3               [24] 2353 	inc	dptr
      0013E7 F0               [24] 2354 	movx	@dptr,a
      0013E8 8E 82            [24] 2355 	mov	dpl,r6
      0013EA 8D 83            [24] 2356 	mov	dph,r5
                                   2357 ;	../Common/MenuMgr.c:280: break;
      0013EC 02 18 4B         [24] 2358 	ljmp	_HandleMenuCommand
      0013EF                       2359 00102$:
                                   2360 ;	../Common/MenuMgr.c:284: i++;
      0013EF 0F               [12] 2361 	inc	r7
      0013F0 BF 00 01         [24] 2362 	cjne	r7,#0x00,00125$
      0013F3 0C               [12] 2363 	inc	r4
      0013F4                       2364 00125$:
      0013F4 02 13 76         [24] 2365 	ljmp	00104$
      0013F7                       2366 00107$:
                                   2367 ;	../Common/MenuMgr.c:288: }
      0013F7 22               [24] 2368 	ret
                                   2369 ;------------------------------------------------------------
                                   2370 ;Allocation info for local variables in function 'GoLeft'
                                   2371 ;------------------------------------------------------------
                                   2372 ;i                         Allocated with name '_GoLeft_i_65536_112'
                                   2373 ;currentParent             Allocated with name '_GoLeft_currentParent_65536_112'
                                   2374 ;------------------------------------------------------------
                                   2375 ;	../Common/MenuMgr.c:290: void GoLeft()
                                   2376 ;	-----------------------------------------
                                   2377 ;	 function GoLeft
                                   2378 ;	-----------------------------------------
      0013F8                       2379 _GoLeft:
                                   2380 ;	../Common/MenuMgr.c:295: currentParent = MenuDefinitions[MenuController.currentSelectedMenuIndex].parent;
      0013F8 90 01 6D         [24] 2381 	mov	dptr,#_MenuController
      0013FB E0               [24] 2382 	movx	a,@dptr
      0013FC FF               [12] 2383 	mov	r7,a
      0013FD 75 F0 05         [24] 2384 	mov	b,#0x05
      001400 A4               [48] 2385 	mul	ab
      001401 24 A3            [12] 2386 	add	a,#_MenuDefinitions
      001403 FD               [12] 2387 	mov	r5,a
      001404 74 00            [12] 2388 	mov	a,#(_MenuDefinitions >> 8)
      001406 35 F0            [12] 2389 	addc	a,b
      001408 FE               [12] 2390 	mov	r6,a
      001409 8D 82            [24] 2391 	mov	dpl,r5
      00140B 8E 83            [24] 2392 	mov	dph,r6
      00140D A3               [24] 2393 	inc	dptr
      00140E A3               [24] 2394 	inc	dptr
      00140F A3               [24] 2395 	inc	dptr
      001410 E0               [24] 2396 	movx	a,@dptr
      001411 FD               [12] 2397 	mov	r5,a
      001412 7E 00            [12] 2398 	mov	r6,#0x00
                                   2399 ;	../Common/MenuMgr.c:296: i = MenuController.currentSelectedMenuIndex - 1;
      001414 7C 00            [12] 2400 	mov	r4,#0x00
      001416 1F               [12] 2401 	dec	r7
      001417 BF FF 01         [24] 2402 	cjne	r7,#0xff,00121$
      00141A 1C               [12] 2403 	dec	r4
      00141B                       2404 00121$:
                                   2405 ;	../Common/MenuMgr.c:297: while (i >= 0)
      00141B                       2406 00104$:
      00141B EC               [12] 2407 	mov	a,r4
      00141C 30 E7 01         [24] 2408 	jnb	acc.7,00122$
      00141F 22               [24] 2409 	ret
      001420                       2410 00122$:
                                   2411 ;	../Common/MenuMgr.c:299: if (MenuDefinitions[i].parent == currentParent)
      001420 90 02 BD         [24] 2412 	mov	dptr,#__mulint_PARM_2
      001423 EF               [12] 2413 	mov	a,r7
      001424 F0               [24] 2414 	movx	@dptr,a
      001425 EC               [12] 2415 	mov	a,r4
      001426 A3               [24] 2416 	inc	dptr
      001427 F0               [24] 2417 	movx	@dptr,a
      001428 90 00 05         [24] 2418 	mov	dptr,#0x0005
      00142B C0 07            [24] 2419 	push	ar7
      00142D C0 06            [24] 2420 	push	ar6
      00142F C0 05            [24] 2421 	push	ar5
      001431 C0 04            [24] 2422 	push	ar4
      001433 12 3C 42         [24] 2423 	lcall	__mulint
      001436 AA 82            [24] 2424 	mov	r2,dpl
      001438 AB 83            [24] 2425 	mov	r3,dph
      00143A D0 04            [24] 2426 	pop	ar4
      00143C D0 05            [24] 2427 	pop	ar5
      00143E D0 06            [24] 2428 	pop	ar6
      001440 D0 07            [24] 2429 	pop	ar7
      001442 EA               [12] 2430 	mov	a,r2
      001443 24 A3            [12] 2431 	add	a,#_MenuDefinitions
      001445 FA               [12] 2432 	mov	r2,a
      001446 EB               [12] 2433 	mov	a,r3
      001447 34 00            [12] 2434 	addc	a,#(_MenuDefinitions >> 8)
      001449 FB               [12] 2435 	mov	r3,a
      00144A 8A 82            [24] 2436 	mov	dpl,r2
      00144C 8B 83            [24] 2437 	mov	dph,r3
      00144E A3               [24] 2438 	inc	dptr
      00144F A3               [24] 2439 	inc	dptr
      001450 A3               [24] 2440 	inc	dptr
      001451 E0               [24] 2441 	movx	a,@dptr
      001452 FB               [12] 2442 	mov	r3,a
      001453 7A 00            [12] 2443 	mov	r2,#0x00
      001455 B5 05 34         [24] 2444 	cjne	a,ar5,00102$
      001458 EA               [12] 2445 	mov	a,r2
      001459 B5 06 30         [24] 2446 	cjne	a,ar6,00102$
                                   2447 ;	../Common/MenuMgr.c:301: MenuController.currentSelectedMenuIndex = i;
      00145C 8F 03            [24] 2448 	mov	ar3,r7
      00145E 90 01 6D         [24] 2449 	mov	dptr,#_MenuController
      001461 EB               [12] 2450 	mov	a,r3
      001462 F0               [24] 2451 	movx	@dptr,a
                                   2452 ;	../Common/MenuMgr.c:302: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
      001463 EB               [12] 2453 	mov	a,r3
      001464 75 F0 05         [24] 2454 	mov	b,#0x05
      001467 A4               [48] 2455 	mul	ab
      001468 24 A3            [12] 2456 	add	a,#_MenuDefinitions
      00146A FA               [12] 2457 	mov	r2,a
      00146B 74 00            [12] 2458 	mov	a,#(_MenuDefinitions >> 8)
      00146D 35 F0            [12] 2459 	addc	a,b
      00146F FB               [12] 2460 	mov	r3,a
      001470 8A 82            [24] 2461 	mov	dpl,r2
      001472 8B 83            [24] 2462 	mov	dph,r3
      001474 A3               [24] 2463 	inc	dptr
      001475 A3               [24] 2464 	inc	dptr
      001476 A3               [24] 2465 	inc	dptr
      001477 A3               [24] 2466 	inc	dptr
      001478 E0               [24] 2467 	movx	a,@dptr
      001479 FB               [12] 2468 	mov	r3,a
      00147A 7A 00            [12] 2469 	mov	r2,#0x00
      00147C 90 01 EA         [24] 2470 	mov	dptr,#_HandleMenuCommand_PARM_2
      00147F 74 01            [12] 2471 	mov	a,#0x01
      001481 F0               [24] 2472 	movx	@dptr,a
      001482 E4               [12] 2473 	clr	a
      001483 A3               [24] 2474 	inc	dptr
      001484 F0               [24] 2475 	movx	@dptr,a
      001485 8B 82            [24] 2476 	mov	dpl,r3
      001487 8A 83            [24] 2477 	mov	dph,r2
                                   2478 ;	../Common/MenuMgr.c:303: break;
      001489 02 18 4B         [24] 2479 	ljmp	_HandleMenuCommand
      00148C                       2480 00102$:
                                   2481 ;	../Common/MenuMgr.c:307: i--;
      00148C 1F               [12] 2482 	dec	r7
      00148D BF FF 01         [24] 2483 	cjne	r7,#0xff,00125$
      001490 1C               [12] 2484 	dec	r4
      001491                       2485 00125$:
                                   2486 ;	../Common/MenuMgr.c:311: }
      001491 02 14 1B         [24] 2487 	ljmp	00104$
                                   2488 ;------------------------------------------------------------
                                   2489 ;Allocation info for local variables in function 'GoBackUp'
                                   2490 ;------------------------------------------------------------
                                   2491 ;	../Common/MenuMgr.c:313: void GoBackUp()
                                   2492 ;	-----------------------------------------
                                   2493 ;	 function GoBackUp
                                   2494 ;	-----------------------------------------
      001494                       2495 _GoBackUp:
                                   2496 ;	../Common/MenuMgr.c:315: MenuController.currentSelectedMenuIndex = 0;
      001494 90 01 6D         [24] 2497 	mov	dptr,#_MenuController
      001497 E4               [12] 2498 	clr	a
      001498 F0               [24] 2499 	movx	@dptr,a
                                   2500 ;	../Common/MenuMgr.c:317: if (MenuController.navStackPtr > 0)
      001499 90 01 71         [24] 2501 	mov	dptr,#(_MenuController + 0x0004)
      00149C E0               [24] 2502 	movx	a,@dptr
      00149D FF               [12] 2503 	mov	r7,a
      00149E 60 6B            [24] 2504 	jz	00103$
                                   2505 ;	../Common/MenuMgr.c:319: MenuController.currentSelectedMenuIndex = MenuController.navStack[--MenuController.navStackPtr];
      0014A0 1F               [12] 2506 	dec	r7
      0014A1 90 01 71         [24] 2507 	mov	dptr,#(_MenuController + 0x0004)
      0014A4 EF               [12] 2508 	mov	a,r7
      0014A5 F0               [24] 2509 	movx	@dptr,a
      0014A6 EF               [12] 2510 	mov	a,r7
      0014A7 24 6E            [12] 2511 	add	a,#(_MenuController + 0x0001)
      0014A9 F5 82            [12] 2512 	mov	dpl,a
      0014AB E4               [12] 2513 	clr	a
      0014AC 34 01            [12] 2514 	addc	a,#((_MenuController + 0x0001) >> 8)
      0014AE F5 83            [12] 2515 	mov	dph,a
      0014B0 E0               [24] 2516 	movx	a,@dptr
      0014B1 FF               [12] 2517 	mov	r7,a
      0014B2 90 01 6D         [24] 2518 	mov	dptr,#_MenuController
      0014B5 F0               [24] 2519 	movx	@dptr,a
                                   2520 ;	../Common/MenuMgr.c:320: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_SUBMENUEXIT);
      0014B6 EF               [12] 2521 	mov	a,r7
      0014B7 75 F0 05         [24] 2522 	mov	b,#0x05
      0014BA A4               [48] 2523 	mul	ab
      0014BB 24 A3            [12] 2524 	add	a,#_MenuDefinitions
      0014BD FE               [12] 2525 	mov	r6,a
      0014BE 74 00            [12] 2526 	mov	a,#(_MenuDefinitions >> 8)
      0014C0 35 F0            [12] 2527 	addc	a,b
      0014C2 FF               [12] 2528 	mov	r7,a
      0014C3 8E 82            [24] 2529 	mov	dpl,r6
      0014C5 8F 83            [24] 2530 	mov	dph,r7
      0014C7 A3               [24] 2531 	inc	dptr
      0014C8 A3               [24] 2532 	inc	dptr
      0014C9 A3               [24] 2533 	inc	dptr
      0014CA A3               [24] 2534 	inc	dptr
      0014CB E0               [24] 2535 	movx	a,@dptr
      0014CC FF               [12] 2536 	mov	r7,a
      0014CD 7E 00            [12] 2537 	mov	r6,#0x00
      0014CF 90 01 EA         [24] 2538 	mov	dptr,#_HandleMenuCommand_PARM_2
      0014D2 74 04            [12] 2539 	mov	a,#0x04
      0014D4 F0               [24] 2540 	movx	@dptr,a
      0014D5 E4               [12] 2541 	clr	a
      0014D6 A3               [24] 2542 	inc	dptr
      0014D7 F0               [24] 2543 	movx	@dptr,a
      0014D8 8F 82            [24] 2544 	mov	dpl,r7
      0014DA 8E 83            [24] 2545 	mov	dph,r6
      0014DC 12 18 4B         [24] 2546 	lcall	_HandleMenuCommand
                                   2547 ;	../Common/MenuMgr.c:321: HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
      0014DF 90 01 6D         [24] 2548 	mov	dptr,#_MenuController
      0014E2 E0               [24] 2549 	movx	a,@dptr
      0014E3 75 F0 05         [24] 2550 	mov	b,#0x05
      0014E6 A4               [48] 2551 	mul	ab
      0014E7 24 A3            [12] 2552 	add	a,#_MenuDefinitions
      0014E9 FE               [12] 2553 	mov	r6,a
      0014EA 74 00            [12] 2554 	mov	a,#(_MenuDefinitions >> 8)
      0014EC 35 F0            [12] 2555 	addc	a,b
      0014EE FF               [12] 2556 	mov	r7,a
      0014EF 8E 82            [24] 2557 	mov	dpl,r6
      0014F1 8F 83            [24] 2558 	mov	dph,r7
      0014F3 A3               [24] 2559 	inc	dptr
      0014F4 A3               [24] 2560 	inc	dptr
      0014F5 A3               [24] 2561 	inc	dptr
      0014F6 A3               [24] 2562 	inc	dptr
      0014F7 E0               [24] 2563 	movx	a,@dptr
      0014F8 FF               [12] 2564 	mov	r7,a
      0014F9 7E 00            [12] 2565 	mov	r6,#0x00
      0014FB 90 01 EA         [24] 2566 	mov	dptr,#_HandleMenuCommand_PARM_2
      0014FE 74 01            [12] 2567 	mov	a,#0x01
      001500 F0               [24] 2568 	movx	@dptr,a
      001501 E4               [12] 2569 	clr	a
      001502 A3               [24] 2570 	inc	dptr
      001503 F0               [24] 2571 	movx	@dptr,a
      001504 8F 82            [24] 2572 	mov	dpl,r7
      001506 8E 83            [24] 2573 	mov	dph,r6
                                   2574 ;	../Common/MenuMgr.c:323: }
      001508 02 18 4B         [24] 2575 	ljmp	_HandleMenuCommand
      00150B                       2576 00103$:
      00150B 22               [24] 2577 	ret
                                   2578 	.area CSEG    (CODE)
                                   2579 	.area CONST   (CODE)
                                   2580 	.area CONST   (CODE)
      003E2D                       2581 ___str_0:
      003E2D 4D 65 6E 75 20 69 74  2582 	.ascii "Menu item count"
             65 6D 20 63 6F 75 6E
             74
      003E3C 00                    2583 	.db 0x00
                                   2584 	.area CSEG    (CODE)
                                   2585 	.area XINIT   (CODE)
                                   2586 	.area CABS    (ABS,CODE)
