                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module CentralHeatingMenus
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _AddMenuDefinition
                                     12 	.globl _InitialiseMenuDefinitions
                                     13 	.globl _P5_7
                                     14 	.globl _P5_6
                                     15 	.globl _P5_5
                                     16 	.globl _P5_4
                                     17 	.globl _P5_3
                                     18 	.globl _P5_2
                                     19 	.globl _P5_1
                                     20 	.globl _P5_0
                                     21 	.globl _P4_7
                                     22 	.globl _P4_6
                                     23 	.globl _P4_5
                                     24 	.globl _P4_4
                                     25 	.globl _P4_3
                                     26 	.globl _P4_2
                                     27 	.globl _P4_1
                                     28 	.globl _P4_0
                                     29 	.globl _PX0L
                                     30 	.globl _PT0L
                                     31 	.globl _PX1L
                                     32 	.globl _PT1L
                                     33 	.globl _PSL
                                     34 	.globl _PT2L
                                     35 	.globl _PPCL
                                     36 	.globl _EC
                                     37 	.globl _CCF0
                                     38 	.globl _CCF1
                                     39 	.globl _CCF2
                                     40 	.globl _CCF3
                                     41 	.globl _CCF4
                                     42 	.globl _CR
                                     43 	.globl _CF
                                     44 	.globl _TF2
                                     45 	.globl _EXF2
                                     46 	.globl _RCLK
                                     47 	.globl _TCLK
                                     48 	.globl _EXEN2
                                     49 	.globl _TR2
                                     50 	.globl _C_T2
                                     51 	.globl _CP_RL2
                                     52 	.globl _T2CON_7
                                     53 	.globl _T2CON_6
                                     54 	.globl _T2CON_5
                                     55 	.globl _T2CON_4
                                     56 	.globl _T2CON_3
                                     57 	.globl _T2CON_2
                                     58 	.globl _T2CON_1
                                     59 	.globl _T2CON_0
                                     60 	.globl _PT2
                                     61 	.globl _ET2
                                     62 	.globl _CY
                                     63 	.globl _AC
                                     64 	.globl _F0
                                     65 	.globl _RS1
                                     66 	.globl _RS0
                                     67 	.globl _OV
                                     68 	.globl _F1
                                     69 	.globl _P
                                     70 	.globl _PS
                                     71 	.globl _PT1
                                     72 	.globl _PX1
                                     73 	.globl _PT0
                                     74 	.globl _PX0
                                     75 	.globl _RD
                                     76 	.globl _WR
                                     77 	.globl _T1
                                     78 	.globl _T0
                                     79 	.globl _INT1
                                     80 	.globl _INT0
                                     81 	.globl _TXD
                                     82 	.globl _RXD
                                     83 	.globl _P3_7
                                     84 	.globl _P3_6
                                     85 	.globl _P3_5
                                     86 	.globl _P3_4
                                     87 	.globl _P3_3
                                     88 	.globl _P3_2
                                     89 	.globl _P3_1
                                     90 	.globl _P3_0
                                     91 	.globl _EA
                                     92 	.globl _ES
                                     93 	.globl _ET1
                                     94 	.globl _EX1
                                     95 	.globl _ET0
                                     96 	.globl _EX0
                                     97 	.globl _P2_7
                                     98 	.globl _P2_6
                                     99 	.globl _P2_5
                                    100 	.globl _P2_4
                                    101 	.globl _P2_3
                                    102 	.globl _P2_2
                                    103 	.globl _P2_1
                                    104 	.globl _P2_0
                                    105 	.globl _SM0
                                    106 	.globl _SM1
                                    107 	.globl _SM2
                                    108 	.globl _REN
                                    109 	.globl _TB8
                                    110 	.globl _RB8
                                    111 	.globl _TI
                                    112 	.globl _RI
                                    113 	.globl _P1_7
                                    114 	.globl _P1_6
                                    115 	.globl _P1_5
                                    116 	.globl _P1_4
                                    117 	.globl _P1_3
                                    118 	.globl _P1_2
                                    119 	.globl _P1_1
                                    120 	.globl _P1_0
                                    121 	.globl _TF1
                                    122 	.globl _TR1
                                    123 	.globl _TF0
                                    124 	.globl _TR0
                                    125 	.globl _IE1
                                    126 	.globl _IT1
                                    127 	.globl _IE0
                                    128 	.globl _IT0
                                    129 	.globl _P0_7
                                    130 	.globl _P0_6
                                    131 	.globl _P0_5
                                    132 	.globl _P0_4
                                    133 	.globl _P0_3
                                    134 	.globl _P0_2
                                    135 	.globl _P0_1
                                    136 	.globl _P0_0
                                    137 	.globl _EECON
                                    138 	.globl _KBF
                                    139 	.globl _KBE
                                    140 	.globl _KBLS
                                    141 	.globl _BRL
                                    142 	.globl _BDRCON
                                    143 	.globl _T2MOD
                                    144 	.globl _SPDAT
                                    145 	.globl _SPSTA
                                    146 	.globl _SPCON
                                    147 	.globl _SADEN
                                    148 	.globl _SADDR
                                    149 	.globl _WDTPRG
                                    150 	.globl _WDTRST
                                    151 	.globl _P5
                                    152 	.globl _P4
                                    153 	.globl _IPH1
                                    154 	.globl _IPL1
                                    155 	.globl _IPH0
                                    156 	.globl _IPL0
                                    157 	.globl _IEN1
                                    158 	.globl _IEN0
                                    159 	.globl _CMOD
                                    160 	.globl _CL
                                    161 	.globl _CH
                                    162 	.globl _CCON
                                    163 	.globl _CCAPM4
                                    164 	.globl _CCAPM3
                                    165 	.globl _CCAPM2
                                    166 	.globl _CCAPM1
                                    167 	.globl _CCAPM0
                                    168 	.globl _CCAP4L
                                    169 	.globl _CCAP3L
                                    170 	.globl _CCAP2L
                                    171 	.globl _CCAP1L
                                    172 	.globl _CCAP0L
                                    173 	.globl _CCAP4H
                                    174 	.globl _CCAP3H
                                    175 	.globl _CCAP2H
                                    176 	.globl _CCAP1H
                                    177 	.globl _CCAP0H
                                    178 	.globl _CKCON1
                                    179 	.globl _CKCON0
                                    180 	.globl _CKRL
                                    181 	.globl _AUXR1
                                    182 	.globl _AUXR
                                    183 	.globl _TH2
                                    184 	.globl _TL2
                                    185 	.globl _RCAP2H
                                    186 	.globl _RCAP2L
                                    187 	.globl _T2CON
                                    188 	.globl _B
                                    189 	.globl _ACC
                                    190 	.globl _PSW
                                    191 	.globl _IP
                                    192 	.globl _P3
                                    193 	.globl _IE
                                    194 	.globl _P2
                                    195 	.globl _SBUF
                                    196 	.globl _SCON
                                    197 	.globl _P1
                                    198 	.globl _TH1
                                    199 	.globl _TH0
                                    200 	.globl _TL1
                                    201 	.globl _TL0
                                    202 	.globl _TMOD
                                    203 	.globl _TCON
                                    204 	.globl _PCON
                                    205 	.globl _DPH
                                    206 	.globl _DPL
                                    207 	.globl _SP
                                    208 	.globl _P0
                                    209 	.globl _BuildCentralHeatingMenuDefinitions
                                    210 ;--------------------------------------------------------
                                    211 ; special function registers
                                    212 ;--------------------------------------------------------
                                    213 	.area RSEG    (ABS,DATA)
      000000                        214 	.org 0x0000
                           000080   215 _P0	=	0x0080
                           000081   216 _SP	=	0x0081
                           000082   217 _DPL	=	0x0082
                           000083   218 _DPH	=	0x0083
                           000087   219 _PCON	=	0x0087
                           000088   220 _TCON	=	0x0088
                           000089   221 _TMOD	=	0x0089
                           00008A   222 _TL0	=	0x008a
                           00008B   223 _TL1	=	0x008b
                           00008C   224 _TH0	=	0x008c
                           00008D   225 _TH1	=	0x008d
                           000090   226 _P1	=	0x0090
                           000098   227 _SCON	=	0x0098
                           000099   228 _SBUF	=	0x0099
                           0000A0   229 _P2	=	0x00a0
                           0000A8   230 _IE	=	0x00a8
                           0000B0   231 _P3	=	0x00b0
                           0000B8   232 _IP	=	0x00b8
                           0000D0   233 _PSW	=	0x00d0
                           0000E0   234 _ACC	=	0x00e0
                           0000F0   235 _B	=	0x00f0
                           0000C8   236 _T2CON	=	0x00c8
                           0000CA   237 _RCAP2L	=	0x00ca
                           0000CB   238 _RCAP2H	=	0x00cb
                           0000CC   239 _TL2	=	0x00cc
                           0000CD   240 _TH2	=	0x00cd
                           00008E   241 _AUXR	=	0x008e
                           0000A2   242 _AUXR1	=	0x00a2
                           000097   243 _CKRL	=	0x0097
                           00008F   244 _CKCON0	=	0x008f
                           0000AF   245 _CKCON1	=	0x00af
                           0000FA   246 _CCAP0H	=	0x00fa
                           0000FB   247 _CCAP1H	=	0x00fb
                           0000FC   248 _CCAP2H	=	0x00fc
                           0000FD   249 _CCAP3H	=	0x00fd
                           0000FE   250 _CCAP4H	=	0x00fe
                           0000EA   251 _CCAP0L	=	0x00ea
                           0000EB   252 _CCAP1L	=	0x00eb
                           0000EC   253 _CCAP2L	=	0x00ec
                           0000ED   254 _CCAP3L	=	0x00ed
                           0000EE   255 _CCAP4L	=	0x00ee
                           0000DA   256 _CCAPM0	=	0x00da
                           0000DB   257 _CCAPM1	=	0x00db
                           0000DC   258 _CCAPM2	=	0x00dc
                           0000DD   259 _CCAPM3	=	0x00dd
                           0000DE   260 _CCAPM4	=	0x00de
                           0000D8   261 _CCON	=	0x00d8
                           0000F9   262 _CH	=	0x00f9
                           0000E9   263 _CL	=	0x00e9
                           0000D9   264 _CMOD	=	0x00d9
                           0000A8   265 _IEN0	=	0x00a8
                           0000B1   266 _IEN1	=	0x00b1
                           0000B8   267 _IPL0	=	0x00b8
                           0000B7   268 _IPH0	=	0x00b7
                           0000B2   269 _IPL1	=	0x00b2
                           0000B3   270 _IPH1	=	0x00b3
                           0000C0   271 _P4	=	0x00c0
                           0000E8   272 _P5	=	0x00e8
                           0000A6   273 _WDTRST	=	0x00a6
                           0000A7   274 _WDTPRG	=	0x00a7
                           0000A9   275 _SADDR	=	0x00a9
                           0000B9   276 _SADEN	=	0x00b9
                           0000C3   277 _SPCON	=	0x00c3
                           0000C4   278 _SPSTA	=	0x00c4
                           0000C5   279 _SPDAT	=	0x00c5
                           0000C9   280 _T2MOD	=	0x00c9
                           00009B   281 _BDRCON	=	0x009b
                           00009A   282 _BRL	=	0x009a
                           00009C   283 _KBLS	=	0x009c
                           00009D   284 _KBE	=	0x009d
                           00009E   285 _KBF	=	0x009e
                           0000D2   286 _EECON	=	0x00d2
                                    287 ;--------------------------------------------------------
                                    288 ; special function bits
                                    289 ;--------------------------------------------------------
                                    290 	.area RSEG    (ABS,DATA)
      000000                        291 	.org 0x0000
                           000080   292 _P0_0	=	0x0080
                           000081   293 _P0_1	=	0x0081
                           000082   294 _P0_2	=	0x0082
                           000083   295 _P0_3	=	0x0083
                           000084   296 _P0_4	=	0x0084
                           000085   297 _P0_5	=	0x0085
                           000086   298 _P0_6	=	0x0086
                           000087   299 _P0_7	=	0x0087
                           000088   300 _IT0	=	0x0088
                           000089   301 _IE0	=	0x0089
                           00008A   302 _IT1	=	0x008a
                           00008B   303 _IE1	=	0x008b
                           00008C   304 _TR0	=	0x008c
                           00008D   305 _TF0	=	0x008d
                           00008E   306 _TR1	=	0x008e
                           00008F   307 _TF1	=	0x008f
                           000090   308 _P1_0	=	0x0090
                           000091   309 _P1_1	=	0x0091
                           000092   310 _P1_2	=	0x0092
                           000093   311 _P1_3	=	0x0093
                           000094   312 _P1_4	=	0x0094
                           000095   313 _P1_5	=	0x0095
                           000096   314 _P1_6	=	0x0096
                           000097   315 _P1_7	=	0x0097
                           000098   316 _RI	=	0x0098
                           000099   317 _TI	=	0x0099
                           00009A   318 _RB8	=	0x009a
                           00009B   319 _TB8	=	0x009b
                           00009C   320 _REN	=	0x009c
                           00009D   321 _SM2	=	0x009d
                           00009E   322 _SM1	=	0x009e
                           00009F   323 _SM0	=	0x009f
                           0000A0   324 _P2_0	=	0x00a0
                           0000A1   325 _P2_1	=	0x00a1
                           0000A2   326 _P2_2	=	0x00a2
                           0000A3   327 _P2_3	=	0x00a3
                           0000A4   328 _P2_4	=	0x00a4
                           0000A5   329 _P2_5	=	0x00a5
                           0000A6   330 _P2_6	=	0x00a6
                           0000A7   331 _P2_7	=	0x00a7
                           0000A8   332 _EX0	=	0x00a8
                           0000A9   333 _ET0	=	0x00a9
                           0000AA   334 _EX1	=	0x00aa
                           0000AB   335 _ET1	=	0x00ab
                           0000AC   336 _ES	=	0x00ac
                           0000AF   337 _EA	=	0x00af
                           0000B0   338 _P3_0	=	0x00b0
                           0000B1   339 _P3_1	=	0x00b1
                           0000B2   340 _P3_2	=	0x00b2
                           0000B3   341 _P3_3	=	0x00b3
                           0000B4   342 _P3_4	=	0x00b4
                           0000B5   343 _P3_5	=	0x00b5
                           0000B6   344 _P3_6	=	0x00b6
                           0000B7   345 _P3_7	=	0x00b7
                           0000B0   346 _RXD	=	0x00b0
                           0000B1   347 _TXD	=	0x00b1
                           0000B2   348 _INT0	=	0x00b2
                           0000B3   349 _INT1	=	0x00b3
                           0000B4   350 _T0	=	0x00b4
                           0000B5   351 _T1	=	0x00b5
                           0000B6   352 _WR	=	0x00b6
                           0000B7   353 _RD	=	0x00b7
                           0000B8   354 _PX0	=	0x00b8
                           0000B9   355 _PT0	=	0x00b9
                           0000BA   356 _PX1	=	0x00ba
                           0000BB   357 _PT1	=	0x00bb
                           0000BC   358 _PS	=	0x00bc
                           0000D0   359 _P	=	0x00d0
                           0000D1   360 _F1	=	0x00d1
                           0000D2   361 _OV	=	0x00d2
                           0000D3   362 _RS0	=	0x00d3
                           0000D4   363 _RS1	=	0x00d4
                           0000D5   364 _F0	=	0x00d5
                           0000D6   365 _AC	=	0x00d6
                           0000D7   366 _CY	=	0x00d7
                           0000AD   367 _ET2	=	0x00ad
                           0000BD   368 _PT2	=	0x00bd
                           0000C8   369 _T2CON_0	=	0x00c8
                           0000C9   370 _T2CON_1	=	0x00c9
                           0000CA   371 _T2CON_2	=	0x00ca
                           0000CB   372 _T2CON_3	=	0x00cb
                           0000CC   373 _T2CON_4	=	0x00cc
                           0000CD   374 _T2CON_5	=	0x00cd
                           0000CE   375 _T2CON_6	=	0x00ce
                           0000CF   376 _T2CON_7	=	0x00cf
                           0000C8   377 _CP_RL2	=	0x00c8
                           0000C9   378 _C_T2	=	0x00c9
                           0000CA   379 _TR2	=	0x00ca
                           0000CB   380 _EXEN2	=	0x00cb
                           0000CC   381 _TCLK	=	0x00cc
                           0000CD   382 _RCLK	=	0x00cd
                           0000CE   383 _EXF2	=	0x00ce
                           0000CF   384 _TF2	=	0x00cf
                           0000DF   385 _CF	=	0x00df
                           0000DE   386 _CR	=	0x00de
                           0000DC   387 _CCF4	=	0x00dc
                           0000DB   388 _CCF3	=	0x00db
                           0000DA   389 _CCF2	=	0x00da
                           0000D9   390 _CCF1	=	0x00d9
                           0000D8   391 _CCF0	=	0x00d8
                           0000AE   392 _EC	=	0x00ae
                           0000BE   393 _PPCL	=	0x00be
                           0000BD   394 _PT2L	=	0x00bd
                           0000BC   395 _PSL	=	0x00bc
                           0000BB   396 _PT1L	=	0x00bb
                           0000BA   397 _PX1L	=	0x00ba
                           0000B9   398 _PT0L	=	0x00b9
                           0000B8   399 _PX0L	=	0x00b8
                           0000C0   400 _P4_0	=	0x00c0
                           0000C1   401 _P4_1	=	0x00c1
                           0000C2   402 _P4_2	=	0x00c2
                           0000C3   403 _P4_3	=	0x00c3
                           0000C4   404 _P4_4	=	0x00c4
                           0000C5   405 _P4_5	=	0x00c5
                           0000C6   406 _P4_6	=	0x00c6
                           0000C7   407 _P4_7	=	0x00c7
                           0000E8   408 _P5_0	=	0x00e8
                           0000E9   409 _P5_1	=	0x00e9
                           0000EA   410 _P5_2	=	0x00ea
                           0000EB   411 _P5_3	=	0x00eb
                           0000EC   412 _P5_4	=	0x00ec
                           0000ED   413 _P5_5	=	0x00ed
                           0000EE   414 _P5_6	=	0x00ee
                           0000EF   415 _P5_7	=	0x00ef
                                    416 ;--------------------------------------------------------
                                    417 ; overlayable register banks
                                    418 ;--------------------------------------------------------
                                    419 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        420 	.ds 8
                                    421 ;--------------------------------------------------------
                                    422 ; internal ram data
                                    423 ;--------------------------------------------------------
                                    424 	.area DSEG    (DATA)
                                    425 ;--------------------------------------------------------
                                    426 ; overlayable items in internal ram
                                    427 ;--------------------------------------------------------
                                    428 ;--------------------------------------------------------
                                    429 ; indirectly addressable internal ram data
                                    430 ;--------------------------------------------------------
                                    431 	.area ISEG    (DATA)
                                    432 ;--------------------------------------------------------
                                    433 ; absolute internal ram data
                                    434 ;--------------------------------------------------------
                                    435 	.area IABS    (ABS,DATA)
                                    436 	.area IABS    (ABS,DATA)
                                    437 ;--------------------------------------------------------
                                    438 ; bit data
                                    439 ;--------------------------------------------------------
                                    440 	.area BSEG    (BIT)
                                    441 ;--------------------------------------------------------
                                    442 ; paged external ram data
                                    443 ;--------------------------------------------------------
                                    444 	.area PSEG    (PAG,XDATA)
                                    445 ;--------------------------------------------------------
                                    446 ; uninitialized external ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area XSEG    (XDATA)
                                    449 ;--------------------------------------------------------
                                    450 ; absolute external ram data
                                    451 ;--------------------------------------------------------
                                    452 	.area XABS    (ABS,XDATA)
                                    453 ;--------------------------------------------------------
                                    454 ; initialized external ram data
                                    455 ;--------------------------------------------------------
                                    456 	.area XISEG   (XDATA)
                                    457 	.area HOME    (CODE)
                                    458 	.area GSINIT0 (CODE)
                                    459 	.area GSINIT1 (CODE)
                                    460 	.area GSINIT2 (CODE)
                                    461 	.area GSINIT3 (CODE)
                                    462 	.area GSINIT4 (CODE)
                                    463 	.area GSINIT5 (CODE)
                                    464 	.area GSINIT  (CODE)
                                    465 	.area GSFINAL (CODE)
                                    466 	.area CSEG    (CODE)
                                    467 ;--------------------------------------------------------
                                    468 ; global & static initialisations
                                    469 ;--------------------------------------------------------
                                    470 	.area HOME    (CODE)
                                    471 	.area GSINIT  (CODE)
                                    472 	.area GSFINAL (CODE)
                                    473 	.area GSINIT  (CODE)
                                    474 ;--------------------------------------------------------
                                    475 ; Home
                                    476 ;--------------------------------------------------------
                                    477 	.area HOME    (CODE)
                                    478 	.area HOME    (CODE)
                                    479 ;--------------------------------------------------------
                                    480 ; code
                                    481 ;--------------------------------------------------------
                                    482 	.area CSEG    (CODE)
                                    483 ;------------------------------------------------------------
                                    484 ;Allocation info for local variables in function 'BuildCentralHeatingMenuDefinitions'
                                    485 ;------------------------------------------------------------
                                    486 ;	../Common/CentralHeatingMenus.c:9: void BuildCentralHeatingMenuDefinitions()
                                    487 ;	-----------------------------------------
                                    488 ;	 function BuildCentralHeatingMenuDefinitions
                                    489 ;	-----------------------------------------
      0021EB                        490 _BuildCentralHeatingMenuDefinitions:
                           000007   491 	ar7 = 0x07
                           000006   492 	ar6 = 0x06
                           000005   493 	ar5 = 0x05
                           000004   494 	ar4 = 0x04
                           000003   495 	ar3 = 0x03
                           000002   496 	ar2 = 0x02
                           000001   497 	ar1 = 0x01
                           000000   498 	ar0 = 0x00
                                    499 ;	../Common/CentralHeatingMenus.c:12: InitialiseMenuDefinitions();
      0021EB 12 09 FA         [24]  500 	lcall	_InitialiseMenuDefinitions
                                    501 ;	../Common/CentralHeatingMenus.c:14: AddMenuDefinition("Hot Water", 0, MENUID_HOTWATER);
      0021EE 90 01 73         [24]  502 	mov	dptr,#_AddMenuDefinition_PARM_2
      0021F1 E4               [12]  503 	clr	a
      0021F2 F0               [24]  504 	movx	@dptr,a
      0021F3 A3               [24]  505 	inc	dptr
      0021F4 F0               [24]  506 	movx	@dptr,a
      0021F5 90 01 75         [24]  507 	mov	dptr,#_AddMenuDefinition_PARM_3
      0021F8 74 28            [12]  508 	mov	a,#0x28
      0021FA F0               [24]  509 	movx	@dptr,a
      0021FB E4               [12]  510 	clr	a
      0021FC A3               [24]  511 	inc	dptr
      0021FD F0               [24]  512 	movx	@dptr,a
      0021FE 90 3B 5E         [24]  513 	mov	dptr,#___str_0
      002201 75 F0 80         [24]  514 	mov	b, #0x80
      002204 12 0A 86         [24]  515 	lcall	_AddMenuDefinition
                                    516 ;	../Common/CentralHeatingMenus.c:15: AddMenuDefinition("1 Hour",             MENUID_HOTWATER, MENUID_HOTWATER1HR);
      002207 90 01 73         [24]  517 	mov	dptr,#_AddMenuDefinition_PARM_2
      00220A 74 28            [12]  518 	mov	a,#0x28
      00220C F0               [24]  519 	movx	@dptr,a
      00220D E4               [12]  520 	clr	a
      00220E A3               [24]  521 	inc	dptr
      00220F F0               [24]  522 	movx	@dptr,a
      002210 90 01 75         [24]  523 	mov	dptr,#_AddMenuDefinition_PARM_3
      002213 74 29            [12]  524 	mov	a,#0x29
      002215 F0               [24]  525 	movx	@dptr,a
      002216 E4               [12]  526 	clr	a
      002217 A3               [24]  527 	inc	dptr
      002218 F0               [24]  528 	movx	@dptr,a
      002219 90 3B 68         [24]  529 	mov	dptr,#___str_1
      00221C 75 F0 80         [24]  530 	mov	b, #0x80
      00221F 12 0A 86         [24]  531 	lcall	_AddMenuDefinition
                                    532 ;	../Common/CentralHeatingMenus.c:16: AddMenuDefinition("Reset",              MENUID_HOTWATER, MENUID_HOTWATERRST);
      002222 90 01 73         [24]  533 	mov	dptr,#_AddMenuDefinition_PARM_2
      002225 74 28            [12]  534 	mov	a,#0x28
      002227 F0               [24]  535 	movx	@dptr,a
      002228 E4               [12]  536 	clr	a
      002229 A3               [24]  537 	inc	dptr
      00222A F0               [24]  538 	movx	@dptr,a
      00222B 90 01 75         [24]  539 	mov	dptr,#_AddMenuDefinition_PARM_3
      00222E 74 2A            [12]  540 	mov	a,#0x2a
      002230 F0               [24]  541 	movx	@dptr,a
      002231 E4               [12]  542 	clr	a
      002232 A3               [24]  543 	inc	dptr
      002233 F0               [24]  544 	movx	@dptr,a
      002234 90 3B 6F         [24]  545 	mov	dptr,#___str_2
      002237 75 F0 80         [24]  546 	mov	b, #0x80
      00223A 12 0A 86         [24]  547 	lcall	_AddMenuDefinition
                                    548 ;	../Common/CentralHeatingMenus.c:17: AddMenuDefinition("Return",             MENUID_HOTWATER, MENU_END_SENTINEL);
      00223D 90 01 73         [24]  549 	mov	dptr,#_AddMenuDefinition_PARM_2
      002240 74 28            [12]  550 	mov	a,#0x28
      002242 F0               [24]  551 	movx	@dptr,a
      002243 E4               [12]  552 	clr	a
      002244 A3               [24]  553 	inc	dptr
      002245 F0               [24]  554 	movx	@dptr,a
      002246 90 01 75         [24]  555 	mov	dptr,#_AddMenuDefinition_PARM_3
      002249 04               [12]  556 	inc	a
      00224A F0               [24]  557 	movx	@dptr,a
      00224B E4               [12]  558 	clr	a
      00224C A3               [24]  559 	inc	dptr
      00224D F0               [24]  560 	movx	@dptr,a
      00224E 90 3B 75         [24]  561 	mov	dptr,#___str_3
      002251 75 F0 80         [24]  562 	mov	b, #0x80
      002254 12 0A 86         [24]  563 	lcall	_AddMenuDefinition
                                    564 ;	../Common/CentralHeatingMenus.c:19: AddMenuDefinition("Set Clock", 0, MENUID_SETRTC);
      002257 90 01 73         [24]  565 	mov	dptr,#_AddMenuDefinition_PARM_2
      00225A E4               [12]  566 	clr	a
      00225B F0               [24]  567 	movx	@dptr,a
      00225C A3               [24]  568 	inc	dptr
      00225D F0               [24]  569 	movx	@dptr,a
      00225E 90 01 75         [24]  570 	mov	dptr,#_AddMenuDefinition_PARM_3
      002261 74 0A            [12]  571 	mov	a,#0x0a
      002263 F0               [24]  572 	movx	@dptr,a
      002264 E4               [12]  573 	clr	a
      002265 A3               [24]  574 	inc	dptr
      002266 F0               [24]  575 	movx	@dptr,a
      002267 90 3B 7C         [24]  576 	mov	dptr,#___str_4
      00226A 75 F0 80         [24]  577 	mov	b, #0x80
      00226D 12 0A 86         [24]  578 	lcall	_AddMenuDefinition
                                    579 ;	../Common/CentralHeatingMenus.c:20: AddMenuDefinition("Set Date",            MENUID_SETRTC, MENUID_SETDATE);
      002270 90 01 73         [24]  580 	mov	dptr,#_AddMenuDefinition_PARM_2
      002273 74 0A            [12]  581 	mov	a,#0x0a
      002275 F0               [24]  582 	movx	@dptr,a
      002276 E4               [12]  583 	clr	a
      002277 A3               [24]  584 	inc	dptr
      002278 F0               [24]  585 	movx	@dptr,a
      002279 90 01 75         [24]  586 	mov	dptr,#_AddMenuDefinition_PARM_3
      00227C 74 0B            [12]  587 	mov	a,#0x0b
      00227E F0               [24]  588 	movx	@dptr,a
      00227F E4               [12]  589 	clr	a
      002280 A3               [24]  590 	inc	dptr
      002281 F0               [24]  591 	movx	@dptr,a
      002282 90 3B 86         [24]  592 	mov	dptr,#___str_5
      002285 75 F0 80         [24]  593 	mov	b, #0x80
      002288 12 0A 86         [24]  594 	lcall	_AddMenuDefinition
                                    595 ;	../Common/CentralHeatingMenus.c:21: AddMenuDefinition("Day+",                MENUID_SETDATE, MENUID_ADDDAY);
      00228B 90 01 73         [24]  596 	mov	dptr,#_AddMenuDefinition_PARM_2
      00228E 74 0B            [12]  597 	mov	a,#0x0b
      002290 F0               [24]  598 	movx	@dptr,a
      002291 E4               [12]  599 	clr	a
      002292 A3               [24]  600 	inc	dptr
      002293 F0               [24]  601 	movx	@dptr,a
      002294 90 01 75         [24]  602 	mov	dptr,#_AddMenuDefinition_PARM_3
      002297 74 0C            [12]  603 	mov	a,#0x0c
      002299 F0               [24]  604 	movx	@dptr,a
      00229A E4               [12]  605 	clr	a
      00229B A3               [24]  606 	inc	dptr
      00229C F0               [24]  607 	movx	@dptr,a
      00229D 90 3B 8F         [24]  608 	mov	dptr,#___str_6
      0022A0 75 F0 80         [24]  609 	mov	b, #0x80
      0022A3 12 0A 86         [24]  610 	lcall	_AddMenuDefinition
                                    611 ;	../Common/CentralHeatingMenus.c:22: AddMenuDefinition("Day-",                MENUID_SETDATE, MENUID_SUBDAY);
      0022A6 90 01 73         [24]  612 	mov	dptr,#_AddMenuDefinition_PARM_2
      0022A9 74 0B            [12]  613 	mov	a,#0x0b
      0022AB F0               [24]  614 	movx	@dptr,a
      0022AC E4               [12]  615 	clr	a
      0022AD A3               [24]  616 	inc	dptr
      0022AE F0               [24]  617 	movx	@dptr,a
      0022AF 90 01 75         [24]  618 	mov	dptr,#_AddMenuDefinition_PARM_3
      0022B2 74 0D            [12]  619 	mov	a,#0x0d
      0022B4 F0               [24]  620 	movx	@dptr,a
      0022B5 E4               [12]  621 	clr	a
      0022B6 A3               [24]  622 	inc	dptr
      0022B7 F0               [24]  623 	movx	@dptr,a
      0022B8 90 3B 94         [24]  624 	mov	dptr,#___str_7
      0022BB 75 F0 80         [24]  625 	mov	b, #0x80
      0022BE 12 0A 86         [24]  626 	lcall	_AddMenuDefinition
                                    627 ;	../Common/CentralHeatingMenus.c:23: AddMenuDefinition("Month+",              MENUID_SETDATE, MENUID_ADDMONTH);
      0022C1 90 01 73         [24]  628 	mov	dptr,#_AddMenuDefinition_PARM_2
      0022C4 74 0B            [12]  629 	mov	a,#0x0b
      0022C6 F0               [24]  630 	movx	@dptr,a
      0022C7 E4               [12]  631 	clr	a
      0022C8 A3               [24]  632 	inc	dptr
      0022C9 F0               [24]  633 	movx	@dptr,a
      0022CA 90 01 75         [24]  634 	mov	dptr,#_AddMenuDefinition_PARM_3
      0022CD 74 0E            [12]  635 	mov	a,#0x0e
      0022CF F0               [24]  636 	movx	@dptr,a
      0022D0 E4               [12]  637 	clr	a
      0022D1 A3               [24]  638 	inc	dptr
      0022D2 F0               [24]  639 	movx	@dptr,a
      0022D3 90 3B 99         [24]  640 	mov	dptr,#___str_8
      0022D6 75 F0 80         [24]  641 	mov	b, #0x80
      0022D9 12 0A 86         [24]  642 	lcall	_AddMenuDefinition
                                    643 ;	../Common/CentralHeatingMenus.c:24: AddMenuDefinition("Month-",              MENUID_SETDATE, MENUID_SUBMONTH);
      0022DC 90 01 73         [24]  644 	mov	dptr,#_AddMenuDefinition_PARM_2
      0022DF 74 0B            [12]  645 	mov	a,#0x0b
      0022E1 F0               [24]  646 	movx	@dptr,a
      0022E2 E4               [12]  647 	clr	a
      0022E3 A3               [24]  648 	inc	dptr
      0022E4 F0               [24]  649 	movx	@dptr,a
      0022E5 90 01 75         [24]  650 	mov	dptr,#_AddMenuDefinition_PARM_3
      0022E8 74 0F            [12]  651 	mov	a,#0x0f
      0022EA F0               [24]  652 	movx	@dptr,a
      0022EB E4               [12]  653 	clr	a
      0022EC A3               [24]  654 	inc	dptr
      0022ED F0               [24]  655 	movx	@dptr,a
      0022EE 90 3B A0         [24]  656 	mov	dptr,#___str_9
      0022F1 75 F0 80         [24]  657 	mov	b, #0x80
      0022F4 12 0A 86         [24]  658 	lcall	_AddMenuDefinition
                                    659 ;	../Common/CentralHeatingMenus.c:25: AddMenuDefinition("Year+",               MENUID_SETDATE, MENUID_ADDYEAR);
      0022F7 90 01 73         [24]  660 	mov	dptr,#_AddMenuDefinition_PARM_2
      0022FA 74 0B            [12]  661 	mov	a,#0x0b
      0022FC F0               [24]  662 	movx	@dptr,a
      0022FD E4               [12]  663 	clr	a
      0022FE A3               [24]  664 	inc	dptr
      0022FF F0               [24]  665 	movx	@dptr,a
      002300 90 01 75         [24]  666 	mov	dptr,#_AddMenuDefinition_PARM_3
      002303 74 10            [12]  667 	mov	a,#0x10
      002305 F0               [24]  668 	movx	@dptr,a
      002306 E4               [12]  669 	clr	a
      002307 A3               [24]  670 	inc	dptr
      002308 F0               [24]  671 	movx	@dptr,a
      002309 90 3B A7         [24]  672 	mov	dptr,#___str_10
      00230C 75 F0 80         [24]  673 	mov	b, #0x80
      00230F 12 0A 86         [24]  674 	lcall	_AddMenuDefinition
                                    675 ;	../Common/CentralHeatingMenus.c:26: AddMenuDefinition("Year-",               MENUID_SETDATE, MENUID_SUBYEAR);
      002312 90 01 73         [24]  676 	mov	dptr,#_AddMenuDefinition_PARM_2
      002315 74 0B            [12]  677 	mov	a,#0x0b
      002317 F0               [24]  678 	movx	@dptr,a
      002318 E4               [12]  679 	clr	a
      002319 A3               [24]  680 	inc	dptr
      00231A F0               [24]  681 	movx	@dptr,a
      00231B 90 01 75         [24]  682 	mov	dptr,#_AddMenuDefinition_PARM_3
      00231E 74 11            [12]  683 	mov	a,#0x11
      002320 F0               [24]  684 	movx	@dptr,a
      002321 E4               [12]  685 	clr	a
      002322 A3               [24]  686 	inc	dptr
      002323 F0               [24]  687 	movx	@dptr,a
      002324 90 3B AD         [24]  688 	mov	dptr,#___str_11
      002327 75 F0 80         [24]  689 	mov	b, #0x80
      00232A 12 0A 86         [24]  690 	lcall	_AddMenuDefinition
                                    691 ;	../Common/CentralHeatingMenus.c:27: AddMenuDefinition("Return",              MENUID_SETDATE, MENU_END_SENTINEL);
      00232D 90 01 73         [24]  692 	mov	dptr,#_AddMenuDefinition_PARM_2
      002330 74 0B            [12]  693 	mov	a,#0x0b
      002332 F0               [24]  694 	movx	@dptr,a
      002333 E4               [12]  695 	clr	a
      002334 A3               [24]  696 	inc	dptr
      002335 F0               [24]  697 	movx	@dptr,a
      002336 90 01 75         [24]  698 	mov	dptr,#_AddMenuDefinition_PARM_3
      002339 04               [12]  699 	inc	a
      00233A F0               [24]  700 	movx	@dptr,a
      00233B E4               [12]  701 	clr	a
      00233C A3               [24]  702 	inc	dptr
      00233D F0               [24]  703 	movx	@dptr,a
      00233E 90 3B 75         [24]  704 	mov	dptr,#___str_3
      002341 75 F0 80         [24]  705 	mov	b, #0x80
      002344 12 0A 86         [24]  706 	lcall	_AddMenuDefinition
                                    707 ;	../Common/CentralHeatingMenus.c:29: AddMenuDefinition("Set Time",            MENUID_SETRTC, MENUID_SETTIME);
      002347 90 01 73         [24]  708 	mov	dptr,#_AddMenuDefinition_PARM_2
      00234A 74 0A            [12]  709 	mov	a,#0x0a
      00234C F0               [24]  710 	movx	@dptr,a
      00234D E4               [12]  711 	clr	a
      00234E A3               [24]  712 	inc	dptr
      00234F F0               [24]  713 	movx	@dptr,a
      002350 90 01 75         [24]  714 	mov	dptr,#_AddMenuDefinition_PARM_3
      002353 74 14            [12]  715 	mov	a,#0x14
      002355 F0               [24]  716 	movx	@dptr,a
      002356 E4               [12]  717 	clr	a
      002357 A3               [24]  718 	inc	dptr
      002358 F0               [24]  719 	movx	@dptr,a
      002359 90 3B B3         [24]  720 	mov	dptr,#___str_12
      00235C 75 F0 80         [24]  721 	mov	b, #0x80
      00235F 12 0A 86         [24]  722 	lcall	_AddMenuDefinition
                                    723 ;	../Common/CentralHeatingMenus.c:30: AddMenuDefinition("Minute+",             MENUID_SETTIME, MENUID_ADDMINUTE);
      002362 90 01 73         [24]  724 	mov	dptr,#_AddMenuDefinition_PARM_2
      002365 74 14            [12]  725 	mov	a,#0x14
      002367 F0               [24]  726 	movx	@dptr,a
      002368 E4               [12]  727 	clr	a
      002369 A3               [24]  728 	inc	dptr
      00236A F0               [24]  729 	movx	@dptr,a
      00236B 90 01 75         [24]  730 	mov	dptr,#_AddMenuDefinition_PARM_3
      00236E 74 16            [12]  731 	mov	a,#0x16
      002370 F0               [24]  732 	movx	@dptr,a
      002371 E4               [12]  733 	clr	a
      002372 A3               [24]  734 	inc	dptr
      002373 F0               [24]  735 	movx	@dptr,a
      002374 90 3B BC         [24]  736 	mov	dptr,#___str_13
      002377 75 F0 80         [24]  737 	mov	b, #0x80
      00237A 12 0A 86         [24]  738 	lcall	_AddMenuDefinition
                                    739 ;	../Common/CentralHeatingMenus.c:31: AddMenuDefinition("Minute-",             MENUID_SETTIME, MENUID_SUBMINUTE);
      00237D 90 01 73         [24]  740 	mov	dptr,#_AddMenuDefinition_PARM_2
      002380 74 14            [12]  741 	mov	a,#0x14
      002382 F0               [24]  742 	movx	@dptr,a
      002383 E4               [12]  743 	clr	a
      002384 A3               [24]  744 	inc	dptr
      002385 F0               [24]  745 	movx	@dptr,a
      002386 90 01 75         [24]  746 	mov	dptr,#_AddMenuDefinition_PARM_3
      002389 74 17            [12]  747 	mov	a,#0x17
      00238B F0               [24]  748 	movx	@dptr,a
      00238C E4               [12]  749 	clr	a
      00238D A3               [24]  750 	inc	dptr
      00238E F0               [24]  751 	movx	@dptr,a
      00238F 90 3B C4         [24]  752 	mov	dptr,#___str_14
      002392 75 F0 80         [24]  753 	mov	b, #0x80
      002395 12 0A 86         [24]  754 	lcall	_AddMenuDefinition
                                    755 ;	../Common/CentralHeatingMenus.c:32: AddMenuDefinition("Hour+",               MENUID_SETTIME, MENUID_ADDHOUR);
      002398 90 01 73         [24]  756 	mov	dptr,#_AddMenuDefinition_PARM_2
      00239B 74 14            [12]  757 	mov	a,#0x14
      00239D F0               [24]  758 	movx	@dptr,a
      00239E E4               [12]  759 	clr	a
      00239F A3               [24]  760 	inc	dptr
      0023A0 F0               [24]  761 	movx	@dptr,a
      0023A1 90 01 75         [24]  762 	mov	dptr,#_AddMenuDefinition_PARM_3
      0023A4 74 18            [12]  763 	mov	a,#0x18
      0023A6 F0               [24]  764 	movx	@dptr,a
      0023A7 E4               [12]  765 	clr	a
      0023A8 A3               [24]  766 	inc	dptr
      0023A9 F0               [24]  767 	movx	@dptr,a
      0023AA 90 3B CC         [24]  768 	mov	dptr,#___str_15
      0023AD 75 F0 80         [24]  769 	mov	b, #0x80
      0023B0 12 0A 86         [24]  770 	lcall	_AddMenuDefinition
                                    771 ;	../Common/CentralHeatingMenus.c:33: AddMenuDefinition("Hour-",               MENUID_SETTIME, MENUID_SUBHOUR);
      0023B3 90 01 73         [24]  772 	mov	dptr,#_AddMenuDefinition_PARM_2
      0023B6 74 14            [12]  773 	mov	a,#0x14
      0023B8 F0               [24]  774 	movx	@dptr,a
      0023B9 E4               [12]  775 	clr	a
      0023BA A3               [24]  776 	inc	dptr
      0023BB F0               [24]  777 	movx	@dptr,a
      0023BC 90 01 75         [24]  778 	mov	dptr,#_AddMenuDefinition_PARM_3
      0023BF 74 19            [12]  779 	mov	a,#0x19
      0023C1 F0               [24]  780 	movx	@dptr,a
      0023C2 E4               [12]  781 	clr	a
      0023C3 A3               [24]  782 	inc	dptr
      0023C4 F0               [24]  783 	movx	@dptr,a
      0023C5 90 3B D2         [24]  784 	mov	dptr,#___str_16
      0023C8 75 F0 80         [24]  785 	mov	b, #0x80
      0023CB 12 0A 86         [24]  786 	lcall	_AddMenuDefinition
                                    787 ;	../Common/CentralHeatingMenus.c:34: AddMenuDefinition("Reset Seconds",       MENUID_SETTIME, MENUID_RESETSEC);
      0023CE 90 01 73         [24]  788 	mov	dptr,#_AddMenuDefinition_PARM_2
      0023D1 74 14            [12]  789 	mov	a,#0x14
      0023D3 F0               [24]  790 	movx	@dptr,a
      0023D4 E4               [12]  791 	clr	a
      0023D5 A3               [24]  792 	inc	dptr
      0023D6 F0               [24]  793 	movx	@dptr,a
      0023D7 90 01 75         [24]  794 	mov	dptr,#_AddMenuDefinition_PARM_3
      0023DA 74 15            [12]  795 	mov	a,#0x15
      0023DC F0               [24]  796 	movx	@dptr,a
      0023DD E4               [12]  797 	clr	a
      0023DE A3               [24]  798 	inc	dptr
      0023DF F0               [24]  799 	movx	@dptr,a
      0023E0 90 3B D8         [24]  800 	mov	dptr,#___str_17
      0023E3 75 F0 80         [24]  801 	mov	b, #0x80
      0023E6 12 0A 86         [24]  802 	lcall	_AddMenuDefinition
                                    803 ;	../Common/CentralHeatingMenus.c:35: AddMenuDefinition("Return",              MENUID_SETTIME, MENU_END_SENTINEL);
      0023E9 90 01 73         [24]  804 	mov	dptr,#_AddMenuDefinition_PARM_2
      0023EC 74 14            [12]  805 	mov	a,#0x14
      0023EE F0               [24]  806 	movx	@dptr,a
      0023EF E4               [12]  807 	clr	a
      0023F0 A3               [24]  808 	inc	dptr
      0023F1 F0               [24]  809 	movx	@dptr,a
      0023F2 90 01 75         [24]  810 	mov	dptr,#_AddMenuDefinition_PARM_3
      0023F5 04               [12]  811 	inc	a
      0023F6 F0               [24]  812 	movx	@dptr,a
      0023F7 E4               [12]  813 	clr	a
      0023F8 A3               [24]  814 	inc	dptr
      0023F9 F0               [24]  815 	movx	@dptr,a
      0023FA 90 3B 75         [24]  816 	mov	dptr,#___str_3
      0023FD 75 F0 80         [24]  817 	mov	b, #0x80
      002400 12 0A 86         [24]  818 	lcall	_AddMenuDefinition
                                    819 ;	../Common/CentralHeatingMenus.c:36: AddMenuDefinition("Return",              MENUID_SETRTC, MENU_END_SENTINEL);
      002403 90 01 73         [24]  820 	mov	dptr,#_AddMenuDefinition_PARM_2
      002406 74 0A            [12]  821 	mov	a,#0x0a
      002408 F0               [24]  822 	movx	@dptr,a
      002409 E4               [12]  823 	clr	a
      00240A A3               [24]  824 	inc	dptr
      00240B F0               [24]  825 	movx	@dptr,a
      00240C 90 01 75         [24]  826 	mov	dptr,#_AddMenuDefinition_PARM_3
      00240F 04               [12]  827 	inc	a
      002410 F0               [24]  828 	movx	@dptr,a
      002411 E4               [12]  829 	clr	a
      002412 A3               [24]  830 	inc	dptr
      002413 F0               [24]  831 	movx	@dptr,a
      002414 90 3B 75         [24]  832 	mov	dptr,#___str_3
      002417 75 F0 80         [24]  833 	mov	b, #0x80
      00241A 12 0A 86         [24]  834 	lcall	_AddMenuDefinition
                                    835 ;	../Common/CentralHeatingMenus.c:39: AddMenuDefinition("Test Outputs", 0, MENUID_TESTOUTPUT);
      00241D 90 01 73         [24]  836 	mov	dptr,#_AddMenuDefinition_PARM_2
      002420 E4               [12]  837 	clr	a
      002421 F0               [24]  838 	movx	@dptr,a
      002422 A3               [24]  839 	inc	dptr
      002423 F0               [24]  840 	movx	@dptr,a
      002424 90 01 75         [24]  841 	mov	dptr,#_AddMenuDefinition_PARM_3
      002427 74 1E            [12]  842 	mov	a,#0x1e
      002429 F0               [24]  843 	movx	@dptr,a
      00242A E4               [12]  844 	clr	a
      00242B A3               [24]  845 	inc	dptr
      00242C F0               [24]  846 	movx	@dptr,a
      00242D 90 3B E6         [24]  847 	mov	dptr,#___str_18
      002430 75 F0 80         [24]  848 	mov	b, #0x80
      002433 12 0A 86         [24]  849 	lcall	_AddMenuDefinition
                                    850 ;	../Common/CentralHeatingMenus.c:40: AddMenuDefinition("Boiler", MENUID_TESTOUTPUT, MENUID_TEST_BOILER);
      002436 90 01 73         [24]  851 	mov	dptr,#_AddMenuDefinition_PARM_2
      002439 74 1E            [12]  852 	mov	a,#0x1e
      00243B F0               [24]  853 	movx	@dptr,a
      00243C E4               [12]  854 	clr	a
      00243D A3               [24]  855 	inc	dptr
      00243E F0               [24]  856 	movx	@dptr,a
      00243F 90 01 75         [24]  857 	mov	dptr,#_AddMenuDefinition_PARM_3
      002442 74 1F            [12]  858 	mov	a,#0x1f
      002444 F0               [24]  859 	movx	@dptr,a
      002445 E4               [12]  860 	clr	a
      002446 A3               [24]  861 	inc	dptr
      002447 F0               [24]  862 	movx	@dptr,a
      002448 90 3B F3         [24]  863 	mov	dptr,#___str_19
      00244B 75 F0 80         [24]  864 	mov	b, #0x80
      00244E 12 0A 86         [24]  865 	lcall	_AddMenuDefinition
                                    866 ;	../Common/CentralHeatingMenus.c:41: AddMenuDefinition("Pump",   MENUID_TESTOUTPUT, MENUID_TEST_PUMP);
      002451 90 01 73         [24]  867 	mov	dptr,#_AddMenuDefinition_PARM_2
      002454 74 1E            [12]  868 	mov	a,#0x1e
      002456 F0               [24]  869 	movx	@dptr,a
      002457 E4               [12]  870 	clr	a
      002458 A3               [24]  871 	inc	dptr
      002459 F0               [24]  872 	movx	@dptr,a
      00245A 90 01 75         [24]  873 	mov	dptr,#_AddMenuDefinition_PARM_3
      00245D 74 20            [12]  874 	mov	a,#0x20
      00245F F0               [24]  875 	movx	@dptr,a
      002460 E4               [12]  876 	clr	a
      002461 A3               [24]  877 	inc	dptr
      002462 F0               [24]  878 	movx	@dptr,a
      002463 90 3B FA         [24]  879 	mov	dptr,#___str_20
      002466 75 F0 80         [24]  880 	mov	b, #0x80
      002469 12 0A 86         [24]  881 	lcall	_AddMenuDefinition
                                    882 ;	../Common/CentralHeatingMenus.c:42: AddMenuDefinition("Zone 1", MENUID_TESTOUTPUT, MENUID_TEST_ZONE1);
      00246C 90 01 73         [24]  883 	mov	dptr,#_AddMenuDefinition_PARM_2
      00246F 74 1E            [12]  884 	mov	a,#0x1e
      002471 F0               [24]  885 	movx	@dptr,a
      002472 E4               [12]  886 	clr	a
      002473 A3               [24]  887 	inc	dptr
      002474 F0               [24]  888 	movx	@dptr,a
      002475 90 01 75         [24]  889 	mov	dptr,#_AddMenuDefinition_PARM_3
      002478 74 21            [12]  890 	mov	a,#0x21
      00247A F0               [24]  891 	movx	@dptr,a
      00247B E4               [12]  892 	clr	a
      00247C A3               [24]  893 	inc	dptr
      00247D F0               [24]  894 	movx	@dptr,a
      00247E 90 3B FF         [24]  895 	mov	dptr,#___str_21
      002481 75 F0 80         [24]  896 	mov	b, #0x80
      002484 12 0A 86         [24]  897 	lcall	_AddMenuDefinition
                                    898 ;	../Common/CentralHeatingMenus.c:43: AddMenuDefinition("Zone 2", MENUID_TESTOUTPUT, MENUID_TEST_ZONE2);
      002487 90 01 73         [24]  899 	mov	dptr,#_AddMenuDefinition_PARM_2
      00248A 74 1E            [12]  900 	mov	a,#0x1e
      00248C F0               [24]  901 	movx	@dptr,a
      00248D E4               [12]  902 	clr	a
      00248E A3               [24]  903 	inc	dptr
      00248F F0               [24]  904 	movx	@dptr,a
      002490 90 01 75         [24]  905 	mov	dptr,#_AddMenuDefinition_PARM_3
      002493 74 22            [12]  906 	mov	a,#0x22
      002495 F0               [24]  907 	movx	@dptr,a
      002496 E4               [12]  908 	clr	a
      002497 A3               [24]  909 	inc	dptr
      002498 F0               [24]  910 	movx	@dptr,a
      002499 90 3C 06         [24]  911 	mov	dptr,#___str_22
      00249C 75 F0 80         [24]  912 	mov	b, #0x80
      00249F 12 0A 86         [24]  913 	lcall	_AddMenuDefinition
                                    914 ;	../Common/CentralHeatingMenus.c:44: AddMenuDefinition("Zone 3", MENUID_TESTOUTPUT, MENUID_TEST_ZONE3);
      0024A2 90 01 73         [24]  915 	mov	dptr,#_AddMenuDefinition_PARM_2
      0024A5 74 1E            [12]  916 	mov	a,#0x1e
      0024A7 F0               [24]  917 	movx	@dptr,a
      0024A8 E4               [12]  918 	clr	a
      0024A9 A3               [24]  919 	inc	dptr
      0024AA F0               [24]  920 	movx	@dptr,a
      0024AB 90 01 75         [24]  921 	mov	dptr,#_AddMenuDefinition_PARM_3
      0024AE 74 23            [12]  922 	mov	a,#0x23
      0024B0 F0               [24]  923 	movx	@dptr,a
      0024B1 E4               [12]  924 	clr	a
      0024B2 A3               [24]  925 	inc	dptr
      0024B3 F0               [24]  926 	movx	@dptr,a
      0024B4 90 3C 0D         [24]  927 	mov	dptr,#___str_23
      0024B7 75 F0 80         [24]  928 	mov	b, #0x80
      0024BA 12 0A 86         [24]  929 	lcall	_AddMenuDefinition
                                    930 ;	../Common/CentralHeatingMenus.c:45: AddMenuDefinition("Zone 4", MENUID_TESTOUTPUT, MENUID_TEST_ZONE4);
      0024BD 90 01 73         [24]  931 	mov	dptr,#_AddMenuDefinition_PARM_2
      0024C0 74 1E            [12]  932 	mov	a,#0x1e
      0024C2 F0               [24]  933 	movx	@dptr,a
      0024C3 E4               [12]  934 	clr	a
      0024C4 A3               [24]  935 	inc	dptr
      0024C5 F0               [24]  936 	movx	@dptr,a
      0024C6 90 01 75         [24]  937 	mov	dptr,#_AddMenuDefinition_PARM_3
      0024C9 74 24            [12]  938 	mov	a,#0x24
      0024CB F0               [24]  939 	movx	@dptr,a
      0024CC E4               [12]  940 	clr	a
      0024CD A3               [24]  941 	inc	dptr
      0024CE F0               [24]  942 	movx	@dptr,a
      0024CF 90 3C 14         [24]  943 	mov	dptr,#___str_24
      0024D2 75 F0 80         [24]  944 	mov	b, #0x80
      0024D5 12 0A 86         [24]  945 	lcall	_AddMenuDefinition
                                    946 ;	../Common/CentralHeatingMenus.c:46: AddMenuDefinition("Reset",  MENUID_TESTOUTPUT, MENUID_TEST_RESET);
      0024D8 90 01 73         [24]  947 	mov	dptr,#_AddMenuDefinition_PARM_2
      0024DB 74 1E            [12]  948 	mov	a,#0x1e
      0024DD F0               [24]  949 	movx	@dptr,a
      0024DE E4               [12]  950 	clr	a
      0024DF A3               [24]  951 	inc	dptr
      0024E0 F0               [24]  952 	movx	@dptr,a
      0024E1 90 01 75         [24]  953 	mov	dptr,#_AddMenuDefinition_PARM_3
      0024E4 74 25            [12]  954 	mov	a,#0x25
      0024E6 F0               [24]  955 	movx	@dptr,a
      0024E7 E4               [12]  956 	clr	a
      0024E8 A3               [24]  957 	inc	dptr
      0024E9 F0               [24]  958 	movx	@dptr,a
      0024EA 90 3B 6F         [24]  959 	mov	dptr,#___str_2
      0024ED 75 F0 80         [24]  960 	mov	b, #0x80
      0024F0 12 0A 86         [24]  961 	lcall	_AddMenuDefinition
                                    962 ;	../Common/CentralHeatingMenus.c:47: AddMenuDefinition("Return", MENUID_TESTOUTPUT, MENU_END_SENTINEL);
      0024F3 90 01 73         [24]  963 	mov	dptr,#_AddMenuDefinition_PARM_2
      0024F6 74 1E            [12]  964 	mov	a,#0x1e
      0024F8 F0               [24]  965 	movx	@dptr,a
      0024F9 E4               [12]  966 	clr	a
      0024FA A3               [24]  967 	inc	dptr
      0024FB F0               [24]  968 	movx	@dptr,a
      0024FC 90 01 75         [24]  969 	mov	dptr,#_AddMenuDefinition_PARM_3
      0024FF 04               [12]  970 	inc	a
      002500 F0               [24]  971 	movx	@dptr,a
      002501 E4               [12]  972 	clr	a
      002502 A3               [24]  973 	inc	dptr
      002503 F0               [24]  974 	movx	@dptr,a
      002504 90 3B 75         [24]  975 	mov	dptr,#___str_3
      002507 75 F0 80         [24]  976 	mov	b, #0x80
                                    977 ;	../Common/CentralHeatingMenus.c:49: }
      00250A 02 0A 86         [24]  978 	ljmp	_AddMenuDefinition
                                    979 	.area CSEG    (CODE)
                                    980 	.area CONST   (CODE)
                                    981 	.area CONST   (CODE)
      003B5E                        982 ___str_0:
      003B5E 48 6F 74 20 57 61 74   983 	.ascii "Hot Water"
             65 72
      003B67 00                     984 	.db 0x00
                                    985 	.area CSEG    (CODE)
                                    986 	.area CONST   (CODE)
      003B68                        987 ___str_1:
      003B68 31 20 48 6F 75 72      988 	.ascii "1 Hour"
      003B6E 00                     989 	.db 0x00
                                    990 	.area CSEG    (CODE)
                                    991 	.area CONST   (CODE)
      003B6F                        992 ___str_2:
      003B6F 52 65 73 65 74         993 	.ascii "Reset"
      003B74 00                     994 	.db 0x00
                                    995 	.area CSEG    (CODE)
                                    996 	.area CONST   (CODE)
      003B75                        997 ___str_3:
      003B75 52 65 74 75 72 6E      998 	.ascii "Return"
      003B7B 00                     999 	.db 0x00
                                   1000 	.area CSEG    (CODE)
                                   1001 	.area CONST   (CODE)
      003B7C                       1002 ___str_4:
      003B7C 53 65 74 20 43 6C 6F  1003 	.ascii "Set Clock"
             63 6B
      003B85 00                    1004 	.db 0x00
                                   1005 	.area CSEG    (CODE)
                                   1006 	.area CONST   (CODE)
      003B86                       1007 ___str_5:
      003B86 53 65 74 20 44 61 74  1008 	.ascii "Set Date"
             65
      003B8E 00                    1009 	.db 0x00
                                   1010 	.area CSEG    (CODE)
                                   1011 	.area CONST   (CODE)
      003B8F                       1012 ___str_6:
      003B8F 44 61 79 2B           1013 	.ascii "Day+"
      003B93 00                    1014 	.db 0x00
                                   1015 	.area CSEG    (CODE)
                                   1016 	.area CONST   (CODE)
      003B94                       1017 ___str_7:
      003B94 44 61 79 2D           1018 	.ascii "Day-"
      003B98 00                    1019 	.db 0x00
                                   1020 	.area CSEG    (CODE)
                                   1021 	.area CONST   (CODE)
      003B99                       1022 ___str_8:
      003B99 4D 6F 6E 74 68 2B     1023 	.ascii "Month+"
      003B9F 00                    1024 	.db 0x00
                                   1025 	.area CSEG    (CODE)
                                   1026 	.area CONST   (CODE)
      003BA0                       1027 ___str_9:
      003BA0 4D 6F 6E 74 68 2D     1028 	.ascii "Month-"
      003BA6 00                    1029 	.db 0x00
                                   1030 	.area CSEG    (CODE)
                                   1031 	.area CONST   (CODE)
      003BA7                       1032 ___str_10:
      003BA7 59 65 61 72 2B        1033 	.ascii "Year+"
      003BAC 00                    1034 	.db 0x00
                                   1035 	.area CSEG    (CODE)
                                   1036 	.area CONST   (CODE)
      003BAD                       1037 ___str_11:
      003BAD 59 65 61 72 2D        1038 	.ascii "Year-"
      003BB2 00                    1039 	.db 0x00
                                   1040 	.area CSEG    (CODE)
                                   1041 	.area CONST   (CODE)
      003BB3                       1042 ___str_12:
      003BB3 53 65 74 20 54 69 6D  1043 	.ascii "Set Time"
             65
      003BBB 00                    1044 	.db 0x00
                                   1045 	.area CSEG    (CODE)
                                   1046 	.area CONST   (CODE)
      003BBC                       1047 ___str_13:
      003BBC 4D 69 6E 75 74 65 2B  1048 	.ascii "Minute+"
      003BC3 00                    1049 	.db 0x00
                                   1050 	.area CSEG    (CODE)
                                   1051 	.area CONST   (CODE)
      003BC4                       1052 ___str_14:
      003BC4 4D 69 6E 75 74 65 2D  1053 	.ascii "Minute-"
      003BCB 00                    1054 	.db 0x00
                                   1055 	.area CSEG    (CODE)
                                   1056 	.area CONST   (CODE)
      003BCC                       1057 ___str_15:
      003BCC 48 6F 75 72 2B        1058 	.ascii "Hour+"
      003BD1 00                    1059 	.db 0x00
                                   1060 	.area CSEG    (CODE)
                                   1061 	.area CONST   (CODE)
      003BD2                       1062 ___str_16:
      003BD2 48 6F 75 72 2D        1063 	.ascii "Hour-"
      003BD7 00                    1064 	.db 0x00
                                   1065 	.area CSEG    (CODE)
                                   1066 	.area CONST   (CODE)
      003BD8                       1067 ___str_17:
      003BD8 52 65 73 65 74 20 53  1068 	.ascii "Reset Seconds"
             65 63 6F 6E 64 73
      003BE5 00                    1069 	.db 0x00
                                   1070 	.area CSEG    (CODE)
                                   1071 	.area CONST   (CODE)
      003BE6                       1072 ___str_18:
      003BE6 54 65 73 74 20 4F 75  1073 	.ascii "Test Outputs"
             74 70 75 74 73
      003BF2 00                    1074 	.db 0x00
                                   1075 	.area CSEG    (CODE)
                                   1076 	.area CONST   (CODE)
      003BF3                       1077 ___str_19:
      003BF3 42 6F 69 6C 65 72     1078 	.ascii "Boiler"
      003BF9 00                    1079 	.db 0x00
                                   1080 	.area CSEG    (CODE)
                                   1081 	.area CONST   (CODE)
      003BFA                       1082 ___str_20:
      003BFA 50 75 6D 70           1083 	.ascii "Pump"
      003BFE 00                    1084 	.db 0x00
                                   1085 	.area CSEG    (CODE)
                                   1086 	.area CONST   (CODE)
      003BFF                       1087 ___str_21:
      003BFF 5A 6F 6E 65 20 31     1088 	.ascii "Zone 1"
      003C05 00                    1089 	.db 0x00
                                   1090 	.area CSEG    (CODE)
                                   1091 	.area CONST   (CODE)
      003C06                       1092 ___str_22:
      003C06 5A 6F 6E 65 20 32     1093 	.ascii "Zone 2"
      003C0C 00                    1094 	.db 0x00
                                   1095 	.area CSEG    (CODE)
                                   1096 	.area CONST   (CODE)
      003C0D                       1097 ___str_23:
      003C0D 5A 6F 6E 65 20 33     1098 	.ascii "Zone 3"
      003C13 00                    1099 	.db 0x00
                                   1100 	.area CSEG    (CODE)
                                   1101 	.area CONST   (CODE)
      003C14                       1102 ___str_24:
      003C14 5A 6F 6E 65 20 34     1103 	.ascii "Zone 4"
      003C1A 00                    1104 	.db 0x00
                                   1105 	.area CSEG    (CODE)
                                   1106 	.area XINIT   (CODE)
                                   1107 	.area CABS    (ABS,CODE)
