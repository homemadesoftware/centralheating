                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module CentralHeatingMenus
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
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
                                    446 ; external ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area XSEG    (XDATA)
                                    449 ;--------------------------------------------------------
                                    450 ; absolute external ram data
                                    451 ;--------------------------------------------------------
                                    452 	.area XABS    (ABS,XDATA)
                                    453 ;--------------------------------------------------------
                                    454 ; external initialized ram data
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
      0022E2                        490 _BuildCentralHeatingMenuDefinitions:
                           000007   491 	ar7 = 0x07
                           000006   492 	ar6 = 0x06
                           000005   493 	ar5 = 0x05
                           000004   494 	ar4 = 0x04
                           000003   495 	ar3 = 0x03
                           000002   496 	ar2 = 0x02
                           000001   497 	ar1 = 0x01
                           000000   498 	ar0 = 0x00
                                    499 ;	../Common/CentralHeatingMenus.c:12: InitialiseMenuDefinitions();
      0022E2 12 0A 87         [24]  500 	lcall	_InitialiseMenuDefinitions
                                    501 ;	../Common/CentralHeatingMenus.c:14: AddMenuDefinition("Hot Water", 0, MENUID_HOTWATER);
      0022E5 90 01 73         [24]  502 	mov	dptr,#_AddMenuDefinition_PARM_2
      0022E8 E4               [12]  503 	clr	a
      0022E9 F0               [24]  504 	movx	@dptr,a
      0022EA A3               [24]  505 	inc	dptr
      0022EB F0               [24]  506 	movx	@dptr,a
      0022EC 90 01 75         [24]  507 	mov	dptr,#_AddMenuDefinition_PARM_3
      0022EF 74 28            [12]  508 	mov	a,#0x28
      0022F1 F0               [24]  509 	movx	@dptr,a
      0022F2 E4               [12]  510 	clr	a
      0022F3 A3               [24]  511 	inc	dptr
      0022F4 F0               [24]  512 	movx	@dptr,a
      0022F5 90 3E 91         [24]  513 	mov	dptr,#___str_0
      0022F8 75 F0 80         [24]  514 	mov	b,#0x80
      0022FB 12 0B 13         [24]  515 	lcall	_AddMenuDefinition
                                    516 ;	../Common/CentralHeatingMenus.c:15: AddMenuDefinition("1 Hour",             MENUID_HOTWATER, MENUID_HOTWATER1HR);
      0022FE 90 01 73         [24]  517 	mov	dptr,#_AddMenuDefinition_PARM_2
      002301 74 28            [12]  518 	mov	a,#0x28
      002303 F0               [24]  519 	movx	@dptr,a
      002304 E4               [12]  520 	clr	a
      002305 A3               [24]  521 	inc	dptr
      002306 F0               [24]  522 	movx	@dptr,a
      002307 90 01 75         [24]  523 	mov	dptr,#_AddMenuDefinition_PARM_3
      00230A 74 29            [12]  524 	mov	a,#0x29
      00230C F0               [24]  525 	movx	@dptr,a
      00230D E4               [12]  526 	clr	a
      00230E A3               [24]  527 	inc	dptr
      00230F F0               [24]  528 	movx	@dptr,a
      002310 90 3E 9B         [24]  529 	mov	dptr,#___str_1
      002313 75 F0 80         [24]  530 	mov	b,#0x80
      002316 12 0B 13         [24]  531 	lcall	_AddMenuDefinition
                                    532 ;	../Common/CentralHeatingMenus.c:16: AddMenuDefinition("Reset",              MENUID_HOTWATER, MENUID_HOTWATERRST);
      002319 90 01 73         [24]  533 	mov	dptr,#_AddMenuDefinition_PARM_2
      00231C 74 28            [12]  534 	mov	a,#0x28
      00231E F0               [24]  535 	movx	@dptr,a
      00231F E4               [12]  536 	clr	a
      002320 A3               [24]  537 	inc	dptr
      002321 F0               [24]  538 	movx	@dptr,a
      002322 90 01 75         [24]  539 	mov	dptr,#_AddMenuDefinition_PARM_3
      002325 74 2A            [12]  540 	mov	a,#0x2a
      002327 F0               [24]  541 	movx	@dptr,a
      002328 E4               [12]  542 	clr	a
      002329 A3               [24]  543 	inc	dptr
      00232A F0               [24]  544 	movx	@dptr,a
      00232B 90 3E A2         [24]  545 	mov	dptr,#___str_2
      00232E 75 F0 80         [24]  546 	mov	b,#0x80
      002331 12 0B 13         [24]  547 	lcall	_AddMenuDefinition
                                    548 ;	../Common/CentralHeatingMenus.c:17: AddMenuDefinition("Return",             MENUID_HOTWATER, MENU_END_SENTINEL);
      002334 90 01 73         [24]  549 	mov	dptr,#_AddMenuDefinition_PARM_2
      002337 74 28            [12]  550 	mov	a,#0x28
      002339 F0               [24]  551 	movx	@dptr,a
      00233A E4               [12]  552 	clr	a
      00233B A3               [24]  553 	inc	dptr
      00233C F0               [24]  554 	movx	@dptr,a
      00233D 90 01 75         [24]  555 	mov	dptr,#_AddMenuDefinition_PARM_3
      002340 04               [12]  556 	inc	a
      002341 F0               [24]  557 	movx	@dptr,a
      002342 E4               [12]  558 	clr	a
      002343 A3               [24]  559 	inc	dptr
      002344 F0               [24]  560 	movx	@dptr,a
      002345 90 3E A8         [24]  561 	mov	dptr,#___str_3
      002348 75 F0 80         [24]  562 	mov	b,#0x80
      00234B 12 0B 13         [24]  563 	lcall	_AddMenuDefinition
                                    564 ;	../Common/CentralHeatingMenus.c:19: AddMenuDefinition("Set Clock", 0, MENUID_SETRTC);
      00234E 90 01 73         [24]  565 	mov	dptr,#_AddMenuDefinition_PARM_2
      002351 E4               [12]  566 	clr	a
      002352 F0               [24]  567 	movx	@dptr,a
      002353 A3               [24]  568 	inc	dptr
      002354 F0               [24]  569 	movx	@dptr,a
      002355 90 01 75         [24]  570 	mov	dptr,#_AddMenuDefinition_PARM_3
      002358 74 0A            [12]  571 	mov	a,#0x0a
      00235A F0               [24]  572 	movx	@dptr,a
      00235B E4               [12]  573 	clr	a
      00235C A3               [24]  574 	inc	dptr
      00235D F0               [24]  575 	movx	@dptr,a
      00235E 90 3E AF         [24]  576 	mov	dptr,#___str_4
      002361 75 F0 80         [24]  577 	mov	b,#0x80
      002364 12 0B 13         [24]  578 	lcall	_AddMenuDefinition
                                    579 ;	../Common/CentralHeatingMenus.c:20: AddMenuDefinition("Set Date",            MENUID_SETRTC, MENUID_SETDATE);
      002367 90 01 73         [24]  580 	mov	dptr,#_AddMenuDefinition_PARM_2
      00236A 74 0A            [12]  581 	mov	a,#0x0a
      00236C F0               [24]  582 	movx	@dptr,a
      00236D E4               [12]  583 	clr	a
      00236E A3               [24]  584 	inc	dptr
      00236F F0               [24]  585 	movx	@dptr,a
      002370 90 01 75         [24]  586 	mov	dptr,#_AddMenuDefinition_PARM_3
      002373 74 0B            [12]  587 	mov	a,#0x0b
      002375 F0               [24]  588 	movx	@dptr,a
      002376 E4               [12]  589 	clr	a
      002377 A3               [24]  590 	inc	dptr
      002378 F0               [24]  591 	movx	@dptr,a
      002379 90 3E B9         [24]  592 	mov	dptr,#___str_5
      00237C 75 F0 80         [24]  593 	mov	b,#0x80
      00237F 12 0B 13         [24]  594 	lcall	_AddMenuDefinition
                                    595 ;	../Common/CentralHeatingMenus.c:21: AddMenuDefinition("Day+",                MENUID_SETDATE, MENUID_ADDDAY);
      002382 90 01 73         [24]  596 	mov	dptr,#_AddMenuDefinition_PARM_2
      002385 74 0B            [12]  597 	mov	a,#0x0b
      002387 F0               [24]  598 	movx	@dptr,a
      002388 E4               [12]  599 	clr	a
      002389 A3               [24]  600 	inc	dptr
      00238A F0               [24]  601 	movx	@dptr,a
      00238B 90 01 75         [24]  602 	mov	dptr,#_AddMenuDefinition_PARM_3
      00238E 74 0C            [12]  603 	mov	a,#0x0c
      002390 F0               [24]  604 	movx	@dptr,a
      002391 E4               [12]  605 	clr	a
      002392 A3               [24]  606 	inc	dptr
      002393 F0               [24]  607 	movx	@dptr,a
      002394 90 3E C2         [24]  608 	mov	dptr,#___str_6
      002397 75 F0 80         [24]  609 	mov	b,#0x80
      00239A 12 0B 13         [24]  610 	lcall	_AddMenuDefinition
                                    611 ;	../Common/CentralHeatingMenus.c:22: AddMenuDefinition("Day-",                MENUID_SETDATE, MENUID_SUBDAY);
      00239D 90 01 73         [24]  612 	mov	dptr,#_AddMenuDefinition_PARM_2
      0023A0 74 0B            [12]  613 	mov	a,#0x0b
      0023A2 F0               [24]  614 	movx	@dptr,a
      0023A3 E4               [12]  615 	clr	a
      0023A4 A3               [24]  616 	inc	dptr
      0023A5 F0               [24]  617 	movx	@dptr,a
      0023A6 90 01 75         [24]  618 	mov	dptr,#_AddMenuDefinition_PARM_3
      0023A9 74 0D            [12]  619 	mov	a,#0x0d
      0023AB F0               [24]  620 	movx	@dptr,a
      0023AC E4               [12]  621 	clr	a
      0023AD A3               [24]  622 	inc	dptr
      0023AE F0               [24]  623 	movx	@dptr,a
      0023AF 90 3E C7         [24]  624 	mov	dptr,#___str_7
      0023B2 75 F0 80         [24]  625 	mov	b,#0x80
      0023B5 12 0B 13         [24]  626 	lcall	_AddMenuDefinition
                                    627 ;	../Common/CentralHeatingMenus.c:23: AddMenuDefinition("Month+",              MENUID_SETDATE, MENUID_ADDMONTH);
      0023B8 90 01 73         [24]  628 	mov	dptr,#_AddMenuDefinition_PARM_2
      0023BB 74 0B            [12]  629 	mov	a,#0x0b
      0023BD F0               [24]  630 	movx	@dptr,a
      0023BE E4               [12]  631 	clr	a
      0023BF A3               [24]  632 	inc	dptr
      0023C0 F0               [24]  633 	movx	@dptr,a
      0023C1 90 01 75         [24]  634 	mov	dptr,#_AddMenuDefinition_PARM_3
      0023C4 74 0E            [12]  635 	mov	a,#0x0e
      0023C6 F0               [24]  636 	movx	@dptr,a
      0023C7 E4               [12]  637 	clr	a
      0023C8 A3               [24]  638 	inc	dptr
      0023C9 F0               [24]  639 	movx	@dptr,a
      0023CA 90 3E CC         [24]  640 	mov	dptr,#___str_8
      0023CD 75 F0 80         [24]  641 	mov	b,#0x80
      0023D0 12 0B 13         [24]  642 	lcall	_AddMenuDefinition
                                    643 ;	../Common/CentralHeatingMenus.c:24: AddMenuDefinition("Month-",              MENUID_SETDATE, MENUID_SUBMONTH);
      0023D3 90 01 73         [24]  644 	mov	dptr,#_AddMenuDefinition_PARM_2
      0023D6 74 0B            [12]  645 	mov	a,#0x0b
      0023D8 F0               [24]  646 	movx	@dptr,a
      0023D9 E4               [12]  647 	clr	a
      0023DA A3               [24]  648 	inc	dptr
      0023DB F0               [24]  649 	movx	@dptr,a
      0023DC 90 01 75         [24]  650 	mov	dptr,#_AddMenuDefinition_PARM_3
      0023DF 74 0F            [12]  651 	mov	a,#0x0f
      0023E1 F0               [24]  652 	movx	@dptr,a
      0023E2 E4               [12]  653 	clr	a
      0023E3 A3               [24]  654 	inc	dptr
      0023E4 F0               [24]  655 	movx	@dptr,a
      0023E5 90 3E D3         [24]  656 	mov	dptr,#___str_9
      0023E8 75 F0 80         [24]  657 	mov	b,#0x80
      0023EB 12 0B 13         [24]  658 	lcall	_AddMenuDefinition
                                    659 ;	../Common/CentralHeatingMenus.c:25: AddMenuDefinition("Year+",               MENUID_SETDATE, MENUID_ADDYEAR);
      0023EE 90 01 73         [24]  660 	mov	dptr,#_AddMenuDefinition_PARM_2
      0023F1 74 0B            [12]  661 	mov	a,#0x0b
      0023F3 F0               [24]  662 	movx	@dptr,a
      0023F4 E4               [12]  663 	clr	a
      0023F5 A3               [24]  664 	inc	dptr
      0023F6 F0               [24]  665 	movx	@dptr,a
      0023F7 90 01 75         [24]  666 	mov	dptr,#_AddMenuDefinition_PARM_3
      0023FA 74 10            [12]  667 	mov	a,#0x10
      0023FC F0               [24]  668 	movx	@dptr,a
      0023FD E4               [12]  669 	clr	a
      0023FE A3               [24]  670 	inc	dptr
      0023FF F0               [24]  671 	movx	@dptr,a
      002400 90 3E DA         [24]  672 	mov	dptr,#___str_10
      002403 75 F0 80         [24]  673 	mov	b,#0x80
      002406 12 0B 13         [24]  674 	lcall	_AddMenuDefinition
                                    675 ;	../Common/CentralHeatingMenus.c:26: AddMenuDefinition("Year-",               MENUID_SETDATE, MENUID_SUBYEAR);
      002409 90 01 73         [24]  676 	mov	dptr,#_AddMenuDefinition_PARM_2
      00240C 74 0B            [12]  677 	mov	a,#0x0b
      00240E F0               [24]  678 	movx	@dptr,a
      00240F E4               [12]  679 	clr	a
      002410 A3               [24]  680 	inc	dptr
      002411 F0               [24]  681 	movx	@dptr,a
      002412 90 01 75         [24]  682 	mov	dptr,#_AddMenuDefinition_PARM_3
      002415 74 11            [12]  683 	mov	a,#0x11
      002417 F0               [24]  684 	movx	@dptr,a
      002418 E4               [12]  685 	clr	a
      002419 A3               [24]  686 	inc	dptr
      00241A F0               [24]  687 	movx	@dptr,a
      00241B 90 3E E0         [24]  688 	mov	dptr,#___str_11
      00241E 75 F0 80         [24]  689 	mov	b,#0x80
      002421 12 0B 13         [24]  690 	lcall	_AddMenuDefinition
                                    691 ;	../Common/CentralHeatingMenus.c:27: AddMenuDefinition("Return",              MENUID_SETDATE, MENU_END_SENTINEL);
      002424 90 01 73         [24]  692 	mov	dptr,#_AddMenuDefinition_PARM_2
      002427 74 0B            [12]  693 	mov	a,#0x0b
      002429 F0               [24]  694 	movx	@dptr,a
      00242A E4               [12]  695 	clr	a
      00242B A3               [24]  696 	inc	dptr
      00242C F0               [24]  697 	movx	@dptr,a
      00242D 90 01 75         [24]  698 	mov	dptr,#_AddMenuDefinition_PARM_3
      002430 04               [12]  699 	inc	a
      002431 F0               [24]  700 	movx	@dptr,a
      002432 E4               [12]  701 	clr	a
      002433 A3               [24]  702 	inc	dptr
      002434 F0               [24]  703 	movx	@dptr,a
      002435 90 3E A8         [24]  704 	mov	dptr,#___str_3
      002438 75 F0 80         [24]  705 	mov	b,#0x80
      00243B 12 0B 13         [24]  706 	lcall	_AddMenuDefinition
                                    707 ;	../Common/CentralHeatingMenus.c:29: AddMenuDefinition("Set Time",            MENUID_SETRTC, MENUID_SETTIME);
      00243E 90 01 73         [24]  708 	mov	dptr,#_AddMenuDefinition_PARM_2
      002441 74 0A            [12]  709 	mov	a,#0x0a
      002443 F0               [24]  710 	movx	@dptr,a
      002444 E4               [12]  711 	clr	a
      002445 A3               [24]  712 	inc	dptr
      002446 F0               [24]  713 	movx	@dptr,a
      002447 90 01 75         [24]  714 	mov	dptr,#_AddMenuDefinition_PARM_3
      00244A 74 14            [12]  715 	mov	a,#0x14
      00244C F0               [24]  716 	movx	@dptr,a
      00244D E4               [12]  717 	clr	a
      00244E A3               [24]  718 	inc	dptr
      00244F F0               [24]  719 	movx	@dptr,a
      002450 90 3E E6         [24]  720 	mov	dptr,#___str_12
      002453 75 F0 80         [24]  721 	mov	b,#0x80
      002456 12 0B 13         [24]  722 	lcall	_AddMenuDefinition
                                    723 ;	../Common/CentralHeatingMenus.c:30: AddMenuDefinition("Minute+",             MENUID_SETTIME, MENUID_ADDMINUTE);
      002459 90 01 73         [24]  724 	mov	dptr,#_AddMenuDefinition_PARM_2
      00245C 74 14            [12]  725 	mov	a,#0x14
      00245E F0               [24]  726 	movx	@dptr,a
      00245F E4               [12]  727 	clr	a
      002460 A3               [24]  728 	inc	dptr
      002461 F0               [24]  729 	movx	@dptr,a
      002462 90 01 75         [24]  730 	mov	dptr,#_AddMenuDefinition_PARM_3
      002465 74 16            [12]  731 	mov	a,#0x16
      002467 F0               [24]  732 	movx	@dptr,a
      002468 E4               [12]  733 	clr	a
      002469 A3               [24]  734 	inc	dptr
      00246A F0               [24]  735 	movx	@dptr,a
      00246B 90 3E EF         [24]  736 	mov	dptr,#___str_13
      00246E 75 F0 80         [24]  737 	mov	b,#0x80
      002471 12 0B 13         [24]  738 	lcall	_AddMenuDefinition
                                    739 ;	../Common/CentralHeatingMenus.c:31: AddMenuDefinition("Minute-",             MENUID_SETTIME, MENUID_SUBMINUTE);
      002474 90 01 73         [24]  740 	mov	dptr,#_AddMenuDefinition_PARM_2
      002477 74 14            [12]  741 	mov	a,#0x14
      002479 F0               [24]  742 	movx	@dptr,a
      00247A E4               [12]  743 	clr	a
      00247B A3               [24]  744 	inc	dptr
      00247C F0               [24]  745 	movx	@dptr,a
      00247D 90 01 75         [24]  746 	mov	dptr,#_AddMenuDefinition_PARM_3
      002480 74 17            [12]  747 	mov	a,#0x17
      002482 F0               [24]  748 	movx	@dptr,a
      002483 E4               [12]  749 	clr	a
      002484 A3               [24]  750 	inc	dptr
      002485 F0               [24]  751 	movx	@dptr,a
      002486 90 3E F7         [24]  752 	mov	dptr,#___str_14
      002489 75 F0 80         [24]  753 	mov	b,#0x80
      00248C 12 0B 13         [24]  754 	lcall	_AddMenuDefinition
                                    755 ;	../Common/CentralHeatingMenus.c:32: AddMenuDefinition("Hour+",               MENUID_SETTIME, MENUID_ADDHOUR);
      00248F 90 01 73         [24]  756 	mov	dptr,#_AddMenuDefinition_PARM_2
      002492 74 14            [12]  757 	mov	a,#0x14
      002494 F0               [24]  758 	movx	@dptr,a
      002495 E4               [12]  759 	clr	a
      002496 A3               [24]  760 	inc	dptr
      002497 F0               [24]  761 	movx	@dptr,a
      002498 90 01 75         [24]  762 	mov	dptr,#_AddMenuDefinition_PARM_3
      00249B 74 18            [12]  763 	mov	a,#0x18
      00249D F0               [24]  764 	movx	@dptr,a
      00249E E4               [12]  765 	clr	a
      00249F A3               [24]  766 	inc	dptr
      0024A0 F0               [24]  767 	movx	@dptr,a
      0024A1 90 3E FF         [24]  768 	mov	dptr,#___str_15
      0024A4 75 F0 80         [24]  769 	mov	b,#0x80
      0024A7 12 0B 13         [24]  770 	lcall	_AddMenuDefinition
                                    771 ;	../Common/CentralHeatingMenus.c:33: AddMenuDefinition("Hour-",               MENUID_SETTIME, MENUID_SUBHOUR);
      0024AA 90 01 73         [24]  772 	mov	dptr,#_AddMenuDefinition_PARM_2
      0024AD 74 14            [12]  773 	mov	a,#0x14
      0024AF F0               [24]  774 	movx	@dptr,a
      0024B0 E4               [12]  775 	clr	a
      0024B1 A3               [24]  776 	inc	dptr
      0024B2 F0               [24]  777 	movx	@dptr,a
      0024B3 90 01 75         [24]  778 	mov	dptr,#_AddMenuDefinition_PARM_3
      0024B6 74 19            [12]  779 	mov	a,#0x19
      0024B8 F0               [24]  780 	movx	@dptr,a
      0024B9 E4               [12]  781 	clr	a
      0024BA A3               [24]  782 	inc	dptr
      0024BB F0               [24]  783 	movx	@dptr,a
      0024BC 90 3F 05         [24]  784 	mov	dptr,#___str_16
      0024BF 75 F0 80         [24]  785 	mov	b,#0x80
      0024C2 12 0B 13         [24]  786 	lcall	_AddMenuDefinition
                                    787 ;	../Common/CentralHeatingMenus.c:34: AddMenuDefinition("Reset Seconds",       MENUID_SETTIME, MENUID_RESETSEC);
      0024C5 90 01 73         [24]  788 	mov	dptr,#_AddMenuDefinition_PARM_2
      0024C8 74 14            [12]  789 	mov	a,#0x14
      0024CA F0               [24]  790 	movx	@dptr,a
      0024CB E4               [12]  791 	clr	a
      0024CC A3               [24]  792 	inc	dptr
      0024CD F0               [24]  793 	movx	@dptr,a
      0024CE 90 01 75         [24]  794 	mov	dptr,#_AddMenuDefinition_PARM_3
      0024D1 74 15            [12]  795 	mov	a,#0x15
      0024D3 F0               [24]  796 	movx	@dptr,a
      0024D4 E4               [12]  797 	clr	a
      0024D5 A3               [24]  798 	inc	dptr
      0024D6 F0               [24]  799 	movx	@dptr,a
      0024D7 90 3F 0B         [24]  800 	mov	dptr,#___str_17
      0024DA 75 F0 80         [24]  801 	mov	b,#0x80
      0024DD 12 0B 13         [24]  802 	lcall	_AddMenuDefinition
                                    803 ;	../Common/CentralHeatingMenus.c:35: AddMenuDefinition("Return",              MENUID_SETTIME, MENU_END_SENTINEL);
      0024E0 90 01 73         [24]  804 	mov	dptr,#_AddMenuDefinition_PARM_2
      0024E3 74 14            [12]  805 	mov	a,#0x14
      0024E5 F0               [24]  806 	movx	@dptr,a
      0024E6 E4               [12]  807 	clr	a
      0024E7 A3               [24]  808 	inc	dptr
      0024E8 F0               [24]  809 	movx	@dptr,a
      0024E9 90 01 75         [24]  810 	mov	dptr,#_AddMenuDefinition_PARM_3
      0024EC 04               [12]  811 	inc	a
      0024ED F0               [24]  812 	movx	@dptr,a
      0024EE E4               [12]  813 	clr	a
      0024EF A3               [24]  814 	inc	dptr
      0024F0 F0               [24]  815 	movx	@dptr,a
      0024F1 90 3E A8         [24]  816 	mov	dptr,#___str_3
      0024F4 75 F0 80         [24]  817 	mov	b,#0x80
      0024F7 12 0B 13         [24]  818 	lcall	_AddMenuDefinition
                                    819 ;	../Common/CentralHeatingMenus.c:36: AddMenuDefinition("Return",              MENUID_SETRTC, MENU_END_SENTINEL);
      0024FA 90 01 73         [24]  820 	mov	dptr,#_AddMenuDefinition_PARM_2
      0024FD 74 0A            [12]  821 	mov	a,#0x0a
      0024FF F0               [24]  822 	movx	@dptr,a
      002500 E4               [12]  823 	clr	a
      002501 A3               [24]  824 	inc	dptr
      002502 F0               [24]  825 	movx	@dptr,a
      002503 90 01 75         [24]  826 	mov	dptr,#_AddMenuDefinition_PARM_3
      002506 04               [12]  827 	inc	a
      002507 F0               [24]  828 	movx	@dptr,a
      002508 E4               [12]  829 	clr	a
      002509 A3               [24]  830 	inc	dptr
      00250A F0               [24]  831 	movx	@dptr,a
      00250B 90 3E A8         [24]  832 	mov	dptr,#___str_3
      00250E 75 F0 80         [24]  833 	mov	b,#0x80
      002511 12 0B 13         [24]  834 	lcall	_AddMenuDefinition
                                    835 ;	../Common/CentralHeatingMenus.c:39: AddMenuDefinition("Test Outputs", 0, MENUID_TESTOUTPUT);
      002514 90 01 73         [24]  836 	mov	dptr,#_AddMenuDefinition_PARM_2
      002517 E4               [12]  837 	clr	a
      002518 F0               [24]  838 	movx	@dptr,a
      002519 A3               [24]  839 	inc	dptr
      00251A F0               [24]  840 	movx	@dptr,a
      00251B 90 01 75         [24]  841 	mov	dptr,#_AddMenuDefinition_PARM_3
      00251E 74 1E            [12]  842 	mov	a,#0x1e
      002520 F0               [24]  843 	movx	@dptr,a
      002521 E4               [12]  844 	clr	a
      002522 A3               [24]  845 	inc	dptr
      002523 F0               [24]  846 	movx	@dptr,a
      002524 90 3F 19         [24]  847 	mov	dptr,#___str_18
      002527 75 F0 80         [24]  848 	mov	b,#0x80
      00252A 12 0B 13         [24]  849 	lcall	_AddMenuDefinition
                                    850 ;	../Common/CentralHeatingMenus.c:40: AddMenuDefinition("Boiler", MENUID_TESTOUTPUT, MENUID_TEST_BOILER);
      00252D 90 01 73         [24]  851 	mov	dptr,#_AddMenuDefinition_PARM_2
      002530 74 1E            [12]  852 	mov	a,#0x1e
      002532 F0               [24]  853 	movx	@dptr,a
      002533 E4               [12]  854 	clr	a
      002534 A3               [24]  855 	inc	dptr
      002535 F0               [24]  856 	movx	@dptr,a
      002536 90 01 75         [24]  857 	mov	dptr,#_AddMenuDefinition_PARM_3
      002539 74 1F            [12]  858 	mov	a,#0x1f
      00253B F0               [24]  859 	movx	@dptr,a
      00253C E4               [12]  860 	clr	a
      00253D A3               [24]  861 	inc	dptr
      00253E F0               [24]  862 	movx	@dptr,a
      00253F 90 3F 26         [24]  863 	mov	dptr,#___str_19
      002542 75 F0 80         [24]  864 	mov	b,#0x80
      002545 12 0B 13         [24]  865 	lcall	_AddMenuDefinition
                                    866 ;	../Common/CentralHeatingMenus.c:41: AddMenuDefinition("Pump",   MENUID_TESTOUTPUT, MENUID_TEST_PUMP);
      002548 90 01 73         [24]  867 	mov	dptr,#_AddMenuDefinition_PARM_2
      00254B 74 1E            [12]  868 	mov	a,#0x1e
      00254D F0               [24]  869 	movx	@dptr,a
      00254E E4               [12]  870 	clr	a
      00254F A3               [24]  871 	inc	dptr
      002550 F0               [24]  872 	movx	@dptr,a
      002551 90 01 75         [24]  873 	mov	dptr,#_AddMenuDefinition_PARM_3
      002554 74 20            [12]  874 	mov	a,#0x20
      002556 F0               [24]  875 	movx	@dptr,a
      002557 E4               [12]  876 	clr	a
      002558 A3               [24]  877 	inc	dptr
      002559 F0               [24]  878 	movx	@dptr,a
      00255A 90 3F 2D         [24]  879 	mov	dptr,#___str_20
      00255D 75 F0 80         [24]  880 	mov	b,#0x80
      002560 12 0B 13         [24]  881 	lcall	_AddMenuDefinition
                                    882 ;	../Common/CentralHeatingMenus.c:42: AddMenuDefinition("Zone 1", MENUID_TESTOUTPUT, MENUID_TEST_ZONE1);
      002563 90 01 73         [24]  883 	mov	dptr,#_AddMenuDefinition_PARM_2
      002566 74 1E            [12]  884 	mov	a,#0x1e
      002568 F0               [24]  885 	movx	@dptr,a
      002569 E4               [12]  886 	clr	a
      00256A A3               [24]  887 	inc	dptr
      00256B F0               [24]  888 	movx	@dptr,a
      00256C 90 01 75         [24]  889 	mov	dptr,#_AddMenuDefinition_PARM_3
      00256F 74 21            [12]  890 	mov	a,#0x21
      002571 F0               [24]  891 	movx	@dptr,a
      002572 E4               [12]  892 	clr	a
      002573 A3               [24]  893 	inc	dptr
      002574 F0               [24]  894 	movx	@dptr,a
      002575 90 3F 32         [24]  895 	mov	dptr,#___str_21
      002578 75 F0 80         [24]  896 	mov	b,#0x80
      00257B 12 0B 13         [24]  897 	lcall	_AddMenuDefinition
                                    898 ;	../Common/CentralHeatingMenus.c:43: AddMenuDefinition("Zone 2", MENUID_TESTOUTPUT, MENUID_TEST_ZONE2);
      00257E 90 01 73         [24]  899 	mov	dptr,#_AddMenuDefinition_PARM_2
      002581 74 1E            [12]  900 	mov	a,#0x1e
      002583 F0               [24]  901 	movx	@dptr,a
      002584 E4               [12]  902 	clr	a
      002585 A3               [24]  903 	inc	dptr
      002586 F0               [24]  904 	movx	@dptr,a
      002587 90 01 75         [24]  905 	mov	dptr,#_AddMenuDefinition_PARM_3
      00258A 74 22            [12]  906 	mov	a,#0x22
      00258C F0               [24]  907 	movx	@dptr,a
      00258D E4               [12]  908 	clr	a
      00258E A3               [24]  909 	inc	dptr
      00258F F0               [24]  910 	movx	@dptr,a
      002590 90 3F 39         [24]  911 	mov	dptr,#___str_22
      002593 75 F0 80         [24]  912 	mov	b,#0x80
      002596 12 0B 13         [24]  913 	lcall	_AddMenuDefinition
                                    914 ;	../Common/CentralHeatingMenus.c:44: AddMenuDefinition("Zone 3", MENUID_TESTOUTPUT, MENUID_TEST_ZONE3);
      002599 90 01 73         [24]  915 	mov	dptr,#_AddMenuDefinition_PARM_2
      00259C 74 1E            [12]  916 	mov	a,#0x1e
      00259E F0               [24]  917 	movx	@dptr,a
      00259F E4               [12]  918 	clr	a
      0025A0 A3               [24]  919 	inc	dptr
      0025A1 F0               [24]  920 	movx	@dptr,a
      0025A2 90 01 75         [24]  921 	mov	dptr,#_AddMenuDefinition_PARM_3
      0025A5 74 23            [12]  922 	mov	a,#0x23
      0025A7 F0               [24]  923 	movx	@dptr,a
      0025A8 E4               [12]  924 	clr	a
      0025A9 A3               [24]  925 	inc	dptr
      0025AA F0               [24]  926 	movx	@dptr,a
      0025AB 90 3F 40         [24]  927 	mov	dptr,#___str_23
      0025AE 75 F0 80         [24]  928 	mov	b,#0x80
      0025B1 12 0B 13         [24]  929 	lcall	_AddMenuDefinition
                                    930 ;	../Common/CentralHeatingMenus.c:45: AddMenuDefinition("Zone 4", MENUID_TESTOUTPUT, MENUID_TEST_ZONE4);
      0025B4 90 01 73         [24]  931 	mov	dptr,#_AddMenuDefinition_PARM_2
      0025B7 74 1E            [12]  932 	mov	a,#0x1e
      0025B9 F0               [24]  933 	movx	@dptr,a
      0025BA E4               [12]  934 	clr	a
      0025BB A3               [24]  935 	inc	dptr
      0025BC F0               [24]  936 	movx	@dptr,a
      0025BD 90 01 75         [24]  937 	mov	dptr,#_AddMenuDefinition_PARM_3
      0025C0 74 24            [12]  938 	mov	a,#0x24
      0025C2 F0               [24]  939 	movx	@dptr,a
      0025C3 E4               [12]  940 	clr	a
      0025C4 A3               [24]  941 	inc	dptr
      0025C5 F0               [24]  942 	movx	@dptr,a
      0025C6 90 3F 47         [24]  943 	mov	dptr,#___str_24
      0025C9 75 F0 80         [24]  944 	mov	b,#0x80
      0025CC 12 0B 13         [24]  945 	lcall	_AddMenuDefinition
                                    946 ;	../Common/CentralHeatingMenus.c:46: AddMenuDefinition("Reset",  MENUID_TESTOUTPUT, MENUID_TEST_RESET);
      0025CF 90 01 73         [24]  947 	mov	dptr,#_AddMenuDefinition_PARM_2
      0025D2 74 1E            [12]  948 	mov	a,#0x1e
      0025D4 F0               [24]  949 	movx	@dptr,a
      0025D5 E4               [12]  950 	clr	a
      0025D6 A3               [24]  951 	inc	dptr
      0025D7 F0               [24]  952 	movx	@dptr,a
      0025D8 90 01 75         [24]  953 	mov	dptr,#_AddMenuDefinition_PARM_3
      0025DB 74 25            [12]  954 	mov	a,#0x25
      0025DD F0               [24]  955 	movx	@dptr,a
      0025DE E4               [12]  956 	clr	a
      0025DF A3               [24]  957 	inc	dptr
      0025E0 F0               [24]  958 	movx	@dptr,a
      0025E1 90 3E A2         [24]  959 	mov	dptr,#___str_2
      0025E4 75 F0 80         [24]  960 	mov	b,#0x80
      0025E7 12 0B 13         [24]  961 	lcall	_AddMenuDefinition
                                    962 ;	../Common/CentralHeatingMenus.c:47: AddMenuDefinition("Return", MENUID_TESTOUTPUT, MENU_END_SENTINEL);
      0025EA 90 01 73         [24]  963 	mov	dptr,#_AddMenuDefinition_PARM_2
      0025ED 74 1E            [12]  964 	mov	a,#0x1e
      0025EF F0               [24]  965 	movx	@dptr,a
      0025F0 E4               [12]  966 	clr	a
      0025F1 A3               [24]  967 	inc	dptr
      0025F2 F0               [24]  968 	movx	@dptr,a
      0025F3 90 01 75         [24]  969 	mov	dptr,#_AddMenuDefinition_PARM_3
      0025F6 04               [12]  970 	inc	a
      0025F7 F0               [24]  971 	movx	@dptr,a
      0025F8 E4               [12]  972 	clr	a
      0025F9 A3               [24]  973 	inc	dptr
      0025FA F0               [24]  974 	movx	@dptr,a
      0025FB 90 3E A8         [24]  975 	mov	dptr,#___str_3
      0025FE 75 F0 80         [24]  976 	mov	b,#0x80
                                    977 ;	../Common/CentralHeatingMenus.c:49: }
      002601 02 0B 13         [24]  978 	ljmp	_AddMenuDefinition
                                    979 	.area CSEG    (CODE)
                                    980 	.area CONST   (CODE)
                                    981 	.area CONST   (CODE)
      003E91                        982 ___str_0:
      003E91 48 6F 74 20 57 61 74   983 	.ascii "Hot Water"
             65 72
      003E9A 00                     984 	.db 0x00
                                    985 	.area CSEG    (CODE)
                                    986 	.area CONST   (CODE)
      003E9B                        987 ___str_1:
      003E9B 31 20 48 6F 75 72      988 	.ascii "1 Hour"
      003EA1 00                     989 	.db 0x00
                                    990 	.area CSEG    (CODE)
                                    991 	.area CONST   (CODE)
      003EA2                        992 ___str_2:
      003EA2 52 65 73 65 74         993 	.ascii "Reset"
      003EA7 00                     994 	.db 0x00
                                    995 	.area CSEG    (CODE)
                                    996 	.area CONST   (CODE)
      003EA8                        997 ___str_3:
      003EA8 52 65 74 75 72 6E      998 	.ascii "Return"
      003EAE 00                     999 	.db 0x00
                                   1000 	.area CSEG    (CODE)
                                   1001 	.area CONST   (CODE)
      003EAF                       1002 ___str_4:
      003EAF 53 65 74 20 43 6C 6F  1003 	.ascii "Set Clock"
             63 6B
      003EB8 00                    1004 	.db 0x00
                                   1005 	.area CSEG    (CODE)
                                   1006 	.area CONST   (CODE)
      003EB9                       1007 ___str_5:
      003EB9 53 65 74 20 44 61 74  1008 	.ascii "Set Date"
             65
      003EC1 00                    1009 	.db 0x00
                                   1010 	.area CSEG    (CODE)
                                   1011 	.area CONST   (CODE)
      003EC2                       1012 ___str_6:
      003EC2 44 61 79 2B           1013 	.ascii "Day+"
      003EC6 00                    1014 	.db 0x00
                                   1015 	.area CSEG    (CODE)
                                   1016 	.area CONST   (CODE)
      003EC7                       1017 ___str_7:
      003EC7 44 61 79 2D           1018 	.ascii "Day-"
      003ECB 00                    1019 	.db 0x00
                                   1020 	.area CSEG    (CODE)
                                   1021 	.area CONST   (CODE)
      003ECC                       1022 ___str_8:
      003ECC 4D 6F 6E 74 68 2B     1023 	.ascii "Month+"
      003ED2 00                    1024 	.db 0x00
                                   1025 	.area CSEG    (CODE)
                                   1026 	.area CONST   (CODE)
      003ED3                       1027 ___str_9:
      003ED3 4D 6F 6E 74 68 2D     1028 	.ascii "Month-"
      003ED9 00                    1029 	.db 0x00
                                   1030 	.area CSEG    (CODE)
                                   1031 	.area CONST   (CODE)
      003EDA                       1032 ___str_10:
      003EDA 59 65 61 72 2B        1033 	.ascii "Year+"
      003EDF 00                    1034 	.db 0x00
                                   1035 	.area CSEG    (CODE)
                                   1036 	.area CONST   (CODE)
      003EE0                       1037 ___str_11:
      003EE0 59 65 61 72 2D        1038 	.ascii "Year-"
      003EE5 00                    1039 	.db 0x00
                                   1040 	.area CSEG    (CODE)
                                   1041 	.area CONST   (CODE)
      003EE6                       1042 ___str_12:
      003EE6 53 65 74 20 54 69 6D  1043 	.ascii "Set Time"
             65
      003EEE 00                    1044 	.db 0x00
                                   1045 	.area CSEG    (CODE)
                                   1046 	.area CONST   (CODE)
      003EEF                       1047 ___str_13:
      003EEF 4D 69 6E 75 74 65 2B  1048 	.ascii "Minute+"
      003EF6 00                    1049 	.db 0x00
                                   1050 	.area CSEG    (CODE)
                                   1051 	.area CONST   (CODE)
      003EF7                       1052 ___str_14:
      003EF7 4D 69 6E 75 74 65 2D  1053 	.ascii "Minute-"
      003EFE 00                    1054 	.db 0x00
                                   1055 	.area CSEG    (CODE)
                                   1056 	.area CONST   (CODE)
      003EFF                       1057 ___str_15:
      003EFF 48 6F 75 72 2B        1058 	.ascii "Hour+"
      003F04 00                    1059 	.db 0x00
                                   1060 	.area CSEG    (CODE)
                                   1061 	.area CONST   (CODE)
      003F05                       1062 ___str_16:
      003F05 48 6F 75 72 2D        1063 	.ascii "Hour-"
      003F0A 00                    1064 	.db 0x00
                                   1065 	.area CSEG    (CODE)
                                   1066 	.area CONST   (CODE)
      003F0B                       1067 ___str_17:
      003F0B 52 65 73 65 74 20 53  1068 	.ascii "Reset Seconds"
             65 63 6F 6E 64 73
      003F18 00                    1069 	.db 0x00
                                   1070 	.area CSEG    (CODE)
                                   1071 	.area CONST   (CODE)
      003F19                       1072 ___str_18:
      003F19 54 65 73 74 20 4F 75  1073 	.ascii "Test Outputs"
             74 70 75 74 73
      003F25 00                    1074 	.db 0x00
                                   1075 	.area CSEG    (CODE)
                                   1076 	.area CONST   (CODE)
      003F26                       1077 ___str_19:
      003F26 42 6F 69 6C 65 72     1078 	.ascii "Boiler"
      003F2C 00                    1079 	.db 0x00
                                   1080 	.area CSEG    (CODE)
                                   1081 	.area CONST   (CODE)
      003F2D                       1082 ___str_20:
      003F2D 50 75 6D 70           1083 	.ascii "Pump"
      003F31 00                    1084 	.db 0x00
                                   1085 	.area CSEG    (CODE)
                                   1086 	.area CONST   (CODE)
      003F32                       1087 ___str_21:
      003F32 5A 6F 6E 65 20 31     1088 	.ascii "Zone 1"
      003F38 00                    1089 	.db 0x00
                                   1090 	.area CSEG    (CODE)
                                   1091 	.area CONST   (CODE)
      003F39                       1092 ___str_22:
      003F39 5A 6F 6E 65 20 32     1093 	.ascii "Zone 2"
      003F3F 00                    1094 	.db 0x00
                                   1095 	.area CSEG    (CODE)
                                   1096 	.area CONST   (CODE)
      003F40                       1097 ___str_23:
      003F40 5A 6F 6E 65 20 33     1098 	.ascii "Zone 3"
      003F46 00                    1099 	.db 0x00
                                   1100 	.area CSEG    (CODE)
                                   1101 	.area CONST   (CODE)
      003F47                       1102 ___str_24:
      003F47 5A 6F 6E 65 20 34     1103 	.ascii "Zone 4"
      003F4D 00                    1104 	.db 0x00
                                   1105 	.area CSEG    (CODE)
                                   1106 	.area XINIT   (CODE)
                                   1107 	.area CABS    (ABS,CODE)
