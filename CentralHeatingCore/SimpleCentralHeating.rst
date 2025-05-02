                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module SimpleCentralHeating
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _SimpleCentralHeating
                                     12 	.globl _strcat
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
                                    209 	.globl _displayBuffer
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
      000000                        441 _SimpleCentralHeating_sloc0_1_0:
      000000                        442 	.ds 1
                                    443 ;--------------------------------------------------------
                                    444 ; paged external ram data
                                    445 ;--------------------------------------------------------
                                    446 	.area PSEG    (PAG,XDATA)
                                    447 ;--------------------------------------------------------
                                    448 ; uninitialized external ram data
                                    449 ;--------------------------------------------------------
                                    450 	.area XSEG    (XDATA)
      00006D                        451 _displayBuffer::
      00006D                        452 	.ds 33
      00008E                        453 _SimpleCentralHeating_keys_10000_17:
      00008E                        454 	.ds 2
      000090                        455 _SimpleCentralHeating_inputs_10000_17:
      000090                        456 	.ds 1
      000091                        457 _SimpleCentralHeating_outputs_10000_17:
      000091                        458 	.ds 1
      000092                        459 _SimpleCentralHeating_animatedChars_10000_17:
      000092                        460 	.ds 4
      000096                        461 _SimpleCentralHeating_animatedBuffer_10000_17:
      000096                        462 	.ds 3
      000099                        463 _SimpleCentralHeating_animatedCounter_10000_17:
      000099                        464 	.ds 2
      00009B                        465 _SimpleCentralHeating_zones_10000_17:
      00009B                        466 	.ds 3
      00009E                        467 _SimpleCentralHeating_boilerOn_10000_17:
      00009E                        468 	.ds 1
      00009F                        469 _SimpleCentralHeating_pumpOn_10000_17:
      00009F                        470 	.ds 1
      0000A0                        471 _SimpleCentralHeating_actuators_10000_17:
      0000A0                        472 	.ds 3
                                    473 ;--------------------------------------------------------
                                    474 ; absolute external ram data
                                    475 ;--------------------------------------------------------
                                    476 	.area XABS    (ABS,XDATA)
                                    477 ;--------------------------------------------------------
                                    478 ; initialized external ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area XISEG   (XDATA)
                                    481 	.area HOME    (CODE)
                                    482 	.area GSINIT0 (CODE)
                                    483 	.area GSINIT1 (CODE)
                                    484 	.area GSINIT2 (CODE)
                                    485 	.area GSINIT3 (CODE)
                                    486 	.area GSINIT4 (CODE)
                                    487 	.area GSINIT5 (CODE)
                                    488 	.area GSINIT  (CODE)
                                    489 	.area GSFINAL (CODE)
                                    490 	.area CSEG    (CODE)
                                    491 ;--------------------------------------------------------
                                    492 ; global & static initialisations
                                    493 ;--------------------------------------------------------
                                    494 	.area HOME    (CODE)
                                    495 	.area GSINIT  (CODE)
                                    496 	.area GSFINAL (CODE)
                                    497 	.area GSINIT  (CODE)
                                    498 ;--------------------------------------------------------
                                    499 ; Home
                                    500 ;--------------------------------------------------------
                                    501 	.area HOME    (CODE)
                                    502 	.area HOME    (CODE)
                                    503 ;--------------------------------------------------------
                                    504 ; code
                                    505 ;--------------------------------------------------------
                                    506 	.area CSEG    (CODE)
                                    507 ;------------------------------------------------------------
                                    508 ;Allocation info for local variables in function 'SimpleCentralHeating'
                                    509 ;------------------------------------------------------------
                                    510 ;i             Allocated with name '_SimpleCentralHeating_i_10000_17'
                                    511 ;keys          Allocated with name '_SimpleCentralHeating_keys_10000_17'
                                    512 ;inputs        Allocated with name '_SimpleCentralHeating_inputs_10000_17'
                                    513 ;outputs       Allocated with name '_SimpleCentralHeating_outputs_10000_17'
                                    514 ;animatedChars Allocated with name '_SimpleCentralHeating_animatedChars_10000_17'
                                    515 ;animatedBuffer Allocated with name '_SimpleCentralHeating_animatedBuffer_10000_17'
                                    516 ;animatedCounter Allocated with name '_SimpleCentralHeating_animatedCounter_10000_17'
                                    517 ;zones         Allocated with name '_SimpleCentralHeating_zones_10000_17'
                                    518 ;boilerOn      Allocated with name '_SimpleCentralHeating_boilerOn_10000_17'
                                    519 ;pumpOn        Allocated with name '_SimpleCentralHeating_pumpOn_10000_17'
                                    520 ;actuators     Allocated with name '_SimpleCentralHeating_actuators_10000_17'
                                    521 ;delay         Allocated with name '_SimpleCentralHeating_delay_10000_17'
                                    522 ;------------------------------------------------------------
                                    523 ;	SimpleCentralHeating.c:35: void SimpleCentralHeating()
                                    524 ;	-----------------------------------------
                                    525 ;	 function SimpleCentralHeating
                                    526 ;	-----------------------------------------
      000570                        527 _SimpleCentralHeating:
                           000007   528 	ar7 = 0x07
                           000006   529 	ar6 = 0x06
                           000005   530 	ar5 = 0x05
                           000004   531 	ar4 = 0x04
                           000003   532 	ar3 = 0x03
                           000002   533 	ar2 = 0x02
                           000001   534 	ar1 = 0x01
                           000000   535 	ar0 = 0x00
                                    536 ;	SimpleCentralHeating.c:52: animatedChars[0] = '-';
      000570 90 00 92         [24]  537 	mov	dptr,#_SimpleCentralHeating_animatedChars_10000_17
      000573 74 2D            [12]  538 	mov	a,#0x2d
      000575 F0               [24]  539 	movx	@dptr,a
                                    540 ;	SimpleCentralHeating.c:53: animatedChars[1] = '/';
      000576 90 00 93         [24]  541 	mov	dptr,#(_SimpleCentralHeating_animatedChars_10000_17 + 0x0001)
      000579 74 2F            [12]  542 	mov	a,#0x2f
      00057B F0               [24]  543 	movx	@dptr,a
                                    544 ;	SimpleCentralHeating.c:54: animatedChars[2] = '|';
      00057C 90 00 94         [24]  545 	mov	dptr,#(_SimpleCentralHeating_animatedChars_10000_17 + 0x0002)
      00057F 74 7C            [12]  546 	mov	a,#0x7c
      000581 F0               [24]  547 	movx	@dptr,a
                                    548 ;	SimpleCentralHeating.c:55: animatedChars[3] = '\\';
      000582 90 00 95         [24]  549 	mov	dptr,#(_SimpleCentralHeating_animatedChars_10000_17 + 0x0003)
      000585 74 5C            [12]  550 	mov	a,#0x5c
      000587 F0               [24]  551 	movx	@dptr,a
                                    552 ;	SimpleCentralHeating.c:58: animatedBuffer[0] = '.';
      000588 90 00 96         [24]  553 	mov	dptr,#_SimpleCentralHeating_animatedBuffer_10000_17
      00058B 03               [12]  554 	rr	a
      00058C F0               [24]  555 	movx	@dptr,a
                                    556 ;	SimpleCentralHeating.c:59: animatedBuffer[1] = '.';
      00058D 90 00 97         [24]  557 	mov	dptr,#(_SimpleCentralHeating_animatedBuffer_10000_17 + 0x0001)
      000590 F0               [24]  558 	movx	@dptr,a
                                    559 ;	SimpleCentralHeating.c:60: animatedBuffer[2] = 0;
      000591 90 00 98         [24]  560 	mov	dptr,#(_SimpleCentralHeating_animatedBuffer_10000_17 + 0x0002)
      000594 E4               [12]  561 	clr	a
      000595 F0               [24]  562 	movx	@dptr,a
                                    563 ;	SimpleCentralHeating.c:71: for (i = 0; i < DISPLAY_BUFFER_SIZE; ++i)
      000596 FF               [12]  564 	mov	r7,a
      000597                        565 00153$:
                                    566 ;	SimpleCentralHeating.c:73: displayBuffer[i] = '.';
      000597 EF               [12]  567 	mov	a,r7
      000598 24 6D            [12]  568 	add	a, #_displayBuffer
      00059A F5 82            [12]  569 	mov	dpl,a
      00059C E4               [12]  570 	clr	a
      00059D 34 00            [12]  571 	addc	a, #(_displayBuffer >> 8)
      00059F F5 83            [12]  572 	mov	dph,a
      0005A1 74 2E            [12]  573 	mov	a,#0x2e
      0005A3 F0               [24]  574 	movx	@dptr,a
                                    575 ;	SimpleCentralHeating.c:71: for (i = 0; i < DISPLAY_BUFFER_SIZE; ++i)
      0005A4 0F               [12]  576 	inc	r7
      0005A5 BF 20 00         [24]  577 	cjne	r7,#0x20,00372$
      0005A8                        578 00372$:
      0005A8 40 ED            [24]  579 	jc	00153$
                                    580 ;	SimpleCentralHeating.c:75: displayBuffer[DISPLAY_BUFFER_SIZE] = 0;
      0005AA 90 00 8D         [24]  581 	mov	dptr,#(_displayBuffer + 0x0020)
      0005AD E4               [12]  582 	clr	a
      0005AE F0               [24]  583 	movx	@dptr,a
                                    584 ;	SimpleCentralHeating.c:77: pWriteDisplayBuffer(displayBuffer);
      0005AF 12 05 B4         [24]  585 	lcall	00374$
      0005B2 80 11            [24]  586 	sjmp	00375$
      0005B4                        587 00374$:
      0005B4 90 00 09         [24]  588 	mov	dptr,#_pWriteDisplayBuffer
      0005B7 E0               [24]  589 	movx	a,@dptr
      0005B8 C0 E0            [24]  590 	push	acc
      0005BA A3               [24]  591 	inc	dptr
      0005BB E0               [24]  592 	movx	a,@dptr
      0005BC C0 E0            [24]  593 	push	acc
      0005BE 90 00 6D         [24]  594 	mov	dptr,#_displayBuffer
      0005C1 75 F0 00         [24]  595 	mov	b, #0x00
      0005C4 22               [24]  596 	ret
      0005C5                        597 00375$:
                                    598 ;	SimpleCentralHeating.c:80: animatedCounter = 0;
      0005C5 90 00 99         [24]  599 	mov	dptr,#_SimpleCentralHeating_animatedCounter_10000_17
      0005C8 E4               [12]  600 	clr	a
      0005C9 F0               [24]  601 	movx	@dptr,a
      0005CA A3               [24]  602 	inc	dptr
      0005CB F0               [24]  603 	movx	@dptr,a
                                    604 ;	SimpleCentralHeating.c:82: while (1)
      0005CC                        605 00151$:
                                    606 ;	SimpleCentralHeating.c:84: *displayBuffer = 0;
      0005CC 90 00 6D         [24]  607 	mov	dptr,#_displayBuffer
      0005CF E4               [12]  608 	clr	a
      0005D0 F0               [24]  609 	movx	@dptr,a
                                    610 ;	SimpleCentralHeating.c:86: animatedBuffer[0] = animatedChars[animatedCounter];
      0005D1 90 00 99         [24]  611 	mov	dptr,#_SimpleCentralHeating_animatedCounter_10000_17
      0005D4 E0               [24]  612 	movx	a,@dptr
      0005D5 FE               [12]  613 	mov	r6,a
      0005D6 A3               [24]  614 	inc	dptr
      0005D7 E0               [24]  615 	movx	a,@dptr
      0005D8 FF               [12]  616 	mov	r7,a
      0005D9 EE               [12]  617 	mov	a,r6
      0005DA 24 92            [12]  618 	add	a, #_SimpleCentralHeating_animatedChars_10000_17
      0005DC F5 82            [12]  619 	mov	dpl,a
      0005DE EF               [12]  620 	mov	a,r7
      0005DF 34 00            [12]  621 	addc	a, #(_SimpleCentralHeating_animatedChars_10000_17 >> 8)
      0005E1 F5 83            [12]  622 	mov	dph,a
      0005E3 E0               [24]  623 	movx	a,@dptr
      0005E4 90 00 96         [24]  624 	mov	dptr,#_SimpleCentralHeating_animatedBuffer_10000_17
      0005E7 F0               [24]  625 	movx	@dptr,a
                                    626 ;	SimpleCentralHeating.c:88: if (animatedCounter == 3)
      0005E8 BE 03 0C         [24]  627 	cjne	r6,#0x03,00103$
      0005EB BF 00 09         [24]  628 	cjne	r7,#0x00,00103$
                                    629 ;	SimpleCentralHeating.c:90: animatedCounter = 0;
      0005EE 90 00 99         [24]  630 	mov	dptr,#_SimpleCentralHeating_animatedCounter_10000_17
      0005F1 E4               [12]  631 	clr	a
      0005F2 F0               [24]  632 	movx	@dptr,a
      0005F3 A3               [24]  633 	inc	dptr
      0005F4 F0               [24]  634 	movx	@dptr,a
      0005F5 80 0B            [24]  635 	sjmp	00104$
      0005F7                        636 00103$:
                                    637 ;	SimpleCentralHeating.c:94: ++animatedCounter;
      0005F7 90 00 99         [24]  638 	mov	dptr,#_SimpleCentralHeating_animatedCounter_10000_17
      0005FA 74 01            [12]  639 	mov	a,#0x01
      0005FC 2E               [12]  640 	add	a, r6
      0005FD F0               [24]  641 	movx	@dptr,a
      0005FE E4               [12]  642 	clr	a
      0005FF 3F               [12]  643 	addc	a, r7
      000600 A3               [24]  644 	inc	dptr
      000601 F0               [24]  645 	movx	@dptr,a
      000602                        646 00104$:
                                    647 ;	SimpleCentralHeating.c:98: strcat(displayBuffer, "Z123 B P A123 ");
      000602 90 02 89         [24]  648 	mov	dptr,#_strcat_PARM_2
      000605 74 E1            [12]  649 	mov	a,#___str_0
      000607 F0               [24]  650 	movx	@dptr,a
      000608 74 3A            [12]  651 	mov	a,#(___str_0 >> 8)
      00060A A3               [24]  652 	inc	dptr
      00060B F0               [24]  653 	movx	@dptr,a
      00060C 74 80            [12]  654 	mov	a,#0x80
      00060E A3               [24]  655 	inc	dptr
      00060F F0               [24]  656 	movx	@dptr,a
      000610 90 00 6D         [24]  657 	mov	dptr,#_displayBuffer
      000613 75 F0 00         [24]  658 	mov	b, #0x00
      000616 12 2E 91         [24]  659 	lcall	_strcat
                                    660 ;	SimpleCentralHeating.c:99: strcat(displayBuffer, animatedBuffer);
      000619 90 02 89         [24]  661 	mov	dptr,#_strcat_PARM_2
      00061C 74 96            [12]  662 	mov	a,#_SimpleCentralHeating_animatedBuffer_10000_17
      00061E F0               [24]  663 	movx	@dptr,a
      00061F 74 00            [12]  664 	mov	a,#(_SimpleCentralHeating_animatedBuffer_10000_17 >> 8)
      000621 A3               [24]  665 	inc	dptr
      000622 F0               [24]  666 	movx	@dptr,a
      000623 E4               [12]  667 	clr	a
      000624 A3               [24]  668 	inc	dptr
      000625 F0               [24]  669 	movx	@dptr,a
      000626 90 00 6D         [24]  670 	mov	dptr,#_displayBuffer
      000629 F5 F0            [12]  671 	mov	b,a
      00062B 12 2E 91         [24]  672 	lcall	_strcat
                                    673 ;	SimpleCentralHeating.c:102: strcat(displayBuffer, " ");
      00062E 90 02 89         [24]  674 	mov	dptr,#_strcat_PARM_2
      000631 74 F0            [12]  675 	mov	a,#___str_1
      000633 F0               [24]  676 	movx	@dptr,a
      000634 74 3A            [12]  677 	mov	a,#(___str_1 >> 8)
      000636 A3               [24]  678 	inc	dptr
      000637 F0               [24]  679 	movx	@dptr,a
      000638 74 80            [12]  680 	mov	a,#0x80
      00063A A3               [24]  681 	inc	dptr
      00063B F0               [24]  682 	movx	@dptr,a
      00063C 90 00 6D         [24]  683 	mov	dptr,#_displayBuffer
      00063F 75 F0 00         [24]  684 	mov	b, #0x00
      000642 12 2E 91         [24]  685 	lcall	_strcat
                                    686 ;	SimpleCentralHeating.c:105: pGetInputPortValues(&inputs);
      000645 12 06 4A         [24]  687 	lcall	00378$
      000648 80 11            [24]  688 	sjmp	00379$
      00064A                        689 00378$:
      00064A 90 00 0D         [24]  690 	mov	dptr,#_pGetInputPortValues
      00064D E0               [24]  691 	movx	a,@dptr
      00064E C0 E0            [24]  692 	push	acc
      000650 A3               [24]  693 	inc	dptr
      000651 E0               [24]  694 	movx	a,@dptr
      000652 C0 E0            [24]  695 	push	acc
      000654 90 00 90         [24]  696 	mov	dptr,#_SimpleCentralHeating_inputs_10000_17
      000657 75 F0 00         [24]  697 	mov	b, #0x00
      00065A 22               [24]  698 	ret
      00065B                        699 00379$:
                                    700 ;	SimpleCentralHeating.c:106: zones[0] = ((inputs & ZONE1) == 0);
      00065B 90 00 90         [24]  701 	mov	dptr,#_SimpleCentralHeating_inputs_10000_17
      00065E E0               [24]  702 	movx	a,@dptr
      00065F FF               [12]  703 	mov	r7,a
      000660 53 07 10         [24]  704 	anl	ar7,#0x10
      000663 E4               [12]  705 	clr	a
      000664 BF 00 01         [24]  706 	cjne	r7,#0x00,00380$
      000667 04               [12]  707 	inc	a
      000668                        708 00380$:
      000668 90 00 9B         [24]  709 	mov	dptr,#_SimpleCentralHeating_zones_10000_17
      00066B F0               [24]  710 	movx	@dptr,a
                                    711 ;	SimpleCentralHeating.c:107: zones[1] = ((inputs & ZONE2) == 0);
      00066C 90 00 90         [24]  712 	mov	dptr,#_SimpleCentralHeating_inputs_10000_17
      00066F E0               [24]  713 	movx	a,@dptr
      000670 FF               [12]  714 	mov	r7,a
      000671 53 07 20         [24]  715 	anl	ar7,#0x20
      000674 E4               [12]  716 	clr	a
      000675 BF 00 01         [24]  717 	cjne	r7,#0x00,00382$
      000678 04               [12]  718 	inc	a
      000679                        719 00382$:
      000679 90 00 9C         [24]  720 	mov	dptr,#(_SimpleCentralHeating_zones_10000_17 + 0x0001)
      00067C F0               [24]  721 	movx	@dptr,a
                                    722 ;	SimpleCentralHeating.c:108: zones[2] = ((inputs & ZONE3) == 0);
      00067D 90 00 90         [24]  723 	mov	dptr,#_SimpleCentralHeating_inputs_10000_17
      000680 E0               [24]  724 	movx	a,@dptr
      000681 FF               [12]  725 	mov	r7,a
      000682 53 07 04         [24]  726 	anl	ar7,#0x04
      000685 E4               [12]  727 	clr	a
      000686 BF 00 01         [24]  728 	cjne	r7,#0x00,00384$
      000689 04               [12]  729 	inc	a
      00068A                        730 00384$:
      00068A 90 00 9D         [24]  731 	mov	dptr,#(_SimpleCentralHeating_zones_10000_17 + 0x0002)
      00068D F0               [24]  732 	movx	@dptr,a
                                    733 ;	SimpleCentralHeating.c:112: pGetKeyState(&keys);
      00068E 12 06 93         [24]  734 	lcall	00386$
      000691 80 11            [24]  735 	sjmp	00387$
      000693                        736 00386$:
      000693 90 00 0B         [24]  737 	mov	dptr,#_pGetKeyState
      000696 E0               [24]  738 	movx	a,@dptr
      000697 C0 E0            [24]  739 	push	acc
      000699 A3               [24]  740 	inc	dptr
      00069A E0               [24]  741 	movx	a,@dptr
      00069B C0 E0            [24]  742 	push	acc
      00069D 90 00 8E         [24]  743 	mov	dptr,#_SimpleCentralHeating_keys_10000_17
      0006A0 75 F0 00         [24]  744 	mov	b, #0x00
      0006A3 22               [24]  745 	ret
      0006A4                        746 00387$:
                                    747 ;	SimpleCentralHeating.c:114: switch (keys)
      0006A4 90 00 8E         [24]  748 	mov	dptr,#_SimpleCentralHeating_keys_10000_17
      0006A7 E0               [24]  749 	movx	a,@dptr
      0006A8 FE               [12]  750 	mov	r6,a
      0006A9 A3               [24]  751 	inc	dptr
      0006AA E0               [24]  752 	movx	a,@dptr
      0006AB FF               [12]  753 	mov	r7,a
      0006AC BE 01 05         [24]  754 	cjne	r6,#0x01,00388$
      0006AF BF 00 02         [24]  755 	cjne	r7,#0x00,00388$
      0006B2 80 10            [24]  756 	sjmp	00105$
      0006B4                        757 00388$:
      0006B4 BE 02 05         [24]  758 	cjne	r6,#0x02,00389$
      0006B7 BF 00 02         [24]  759 	cjne	r7,#0x00,00389$
      0006BA 80 10            [24]  760 	sjmp	00106$
      0006BC                        761 00389$:
                                    762 ;	SimpleCentralHeating.c:116: case 1 :
      0006BC BE 03 1B         [24]  763 	cjne	r6,#0x03,00108$
      0006BF BF 00 18         [24]  764 	cjne	r7,#0x00,00108$
      0006C2 80 10            [24]  765 	sjmp	00107$
      0006C4                        766 00105$:
                                    767 ;	SimpleCentralHeating.c:117: zones[0] = 1;
      0006C4 90 00 9B         [24]  768 	mov	dptr,#_SimpleCentralHeating_zones_10000_17
      0006C7 74 01            [12]  769 	mov	a,#0x01
      0006C9 F0               [24]  770 	movx	@dptr,a
                                    771 ;	SimpleCentralHeating.c:118: break;
                                    772 ;	SimpleCentralHeating.c:120: case 2 :
      0006CA 80 0E            [24]  773 	sjmp	00108$
      0006CC                        774 00106$:
                                    775 ;	SimpleCentralHeating.c:121: zones[1] = 1;
      0006CC 90 00 9C         [24]  776 	mov	dptr,#(_SimpleCentralHeating_zones_10000_17 + 0x0001)
      0006CF 74 01            [12]  777 	mov	a,#0x01
      0006D1 F0               [24]  778 	movx	@dptr,a
                                    779 ;	SimpleCentralHeating.c:122: break;
                                    780 ;	SimpleCentralHeating.c:124: case 3 :
      0006D2 80 06            [24]  781 	sjmp	00108$
      0006D4                        782 00107$:
                                    783 ;	SimpleCentralHeating.c:125: zones[2] = 1;
      0006D4 90 00 9D         [24]  784 	mov	dptr,#(_SimpleCentralHeating_zones_10000_17 + 0x0002)
      0006D7 74 01            [12]  785 	mov	a,#0x01
      0006D9 F0               [24]  786 	movx	@dptr,a
                                    787 ;	SimpleCentralHeating.c:127: }
      0006DA                        788 00108$:
                                    789 ;	SimpleCentralHeating.c:129: if (zones[0])
      0006DA 90 00 9B         [24]  790 	mov	dptr,#_SimpleCentralHeating_zones_10000_17
      0006DD E0               [24]  791 	movx	a,@dptr
      0006DE 60 19            [24]  792 	jz	00110$
                                    793 ;	SimpleCentralHeating.c:131: strcat(displayBuffer, "*");
      0006E0 90 02 89         [24]  794 	mov	dptr,#_strcat_PARM_2
      0006E3 74 F2            [12]  795 	mov	a,#___str_2
      0006E5 F0               [24]  796 	movx	@dptr,a
      0006E6 74 3A            [12]  797 	mov	a,#(___str_2 >> 8)
      0006E8 A3               [24]  798 	inc	dptr
      0006E9 F0               [24]  799 	movx	@dptr,a
      0006EA 74 80            [12]  800 	mov	a,#0x80
      0006EC A3               [24]  801 	inc	dptr
      0006ED F0               [24]  802 	movx	@dptr,a
      0006EE 90 00 6D         [24]  803 	mov	dptr,#_displayBuffer
      0006F1 75 F0 00         [24]  804 	mov	b, #0x00
      0006F4 12 2E 91         [24]  805 	lcall	_strcat
      0006F7 80 17            [24]  806 	sjmp	00111$
      0006F9                        807 00110$:
                                    808 ;	SimpleCentralHeating.c:135: strcat(displayBuffer, " ");
      0006F9 90 02 89         [24]  809 	mov	dptr,#_strcat_PARM_2
      0006FC 74 F0            [12]  810 	mov	a,#___str_1
      0006FE F0               [24]  811 	movx	@dptr,a
      0006FF 74 3A            [12]  812 	mov	a,#(___str_1 >> 8)
      000701 A3               [24]  813 	inc	dptr
      000702 F0               [24]  814 	movx	@dptr,a
      000703 74 80            [12]  815 	mov	a,#0x80
      000705 A3               [24]  816 	inc	dptr
      000706 F0               [24]  817 	movx	@dptr,a
      000707 90 00 6D         [24]  818 	mov	dptr,#_displayBuffer
      00070A 75 F0 00         [24]  819 	mov	b, #0x00
      00070D 12 2E 91         [24]  820 	lcall	_strcat
      000710                        821 00111$:
                                    822 ;	SimpleCentralHeating.c:138: if (zones[1])
      000710 90 00 9C         [24]  823 	mov	dptr,#(_SimpleCentralHeating_zones_10000_17 + 0x0001)
      000713 E0               [24]  824 	movx	a,@dptr
      000714 60 19            [24]  825 	jz	00113$
                                    826 ;	SimpleCentralHeating.c:140: strcat(displayBuffer, "*");
      000716 90 02 89         [24]  827 	mov	dptr,#_strcat_PARM_2
      000719 74 F2            [12]  828 	mov	a,#___str_2
      00071B F0               [24]  829 	movx	@dptr,a
      00071C 74 3A            [12]  830 	mov	a,#(___str_2 >> 8)
      00071E A3               [24]  831 	inc	dptr
      00071F F0               [24]  832 	movx	@dptr,a
      000720 74 80            [12]  833 	mov	a,#0x80
      000722 A3               [24]  834 	inc	dptr
      000723 F0               [24]  835 	movx	@dptr,a
      000724 90 00 6D         [24]  836 	mov	dptr,#_displayBuffer
      000727 75 F0 00         [24]  837 	mov	b, #0x00
      00072A 12 2E 91         [24]  838 	lcall	_strcat
      00072D 80 17            [24]  839 	sjmp	00114$
      00072F                        840 00113$:
                                    841 ;	SimpleCentralHeating.c:144: strcat(displayBuffer, " ");
      00072F 90 02 89         [24]  842 	mov	dptr,#_strcat_PARM_2
      000732 74 F0            [12]  843 	mov	a,#___str_1
      000734 F0               [24]  844 	movx	@dptr,a
      000735 74 3A            [12]  845 	mov	a,#(___str_1 >> 8)
      000737 A3               [24]  846 	inc	dptr
      000738 F0               [24]  847 	movx	@dptr,a
      000739 74 80            [12]  848 	mov	a,#0x80
      00073B A3               [24]  849 	inc	dptr
      00073C F0               [24]  850 	movx	@dptr,a
      00073D 90 00 6D         [24]  851 	mov	dptr,#_displayBuffer
      000740 75 F0 00         [24]  852 	mov	b, #0x00
      000743 12 2E 91         [24]  853 	lcall	_strcat
      000746                        854 00114$:
                                    855 ;	SimpleCentralHeating.c:147: if (zones[2])
      000746 90 00 9D         [24]  856 	mov	dptr,#(_SimpleCentralHeating_zones_10000_17 + 0x0002)
      000749 E0               [24]  857 	movx	a,@dptr
      00074A 60 19            [24]  858 	jz	00116$
                                    859 ;	SimpleCentralHeating.c:149: strcat(displayBuffer, "*");
      00074C 90 02 89         [24]  860 	mov	dptr,#_strcat_PARM_2
      00074F 74 F2            [12]  861 	mov	a,#___str_2
      000751 F0               [24]  862 	movx	@dptr,a
      000752 74 3A            [12]  863 	mov	a,#(___str_2 >> 8)
      000754 A3               [24]  864 	inc	dptr
      000755 F0               [24]  865 	movx	@dptr,a
      000756 74 80            [12]  866 	mov	a,#0x80
      000758 A3               [24]  867 	inc	dptr
      000759 F0               [24]  868 	movx	@dptr,a
      00075A 90 00 6D         [24]  869 	mov	dptr,#_displayBuffer
      00075D 75 F0 00         [24]  870 	mov	b, #0x00
      000760 12 2E 91         [24]  871 	lcall	_strcat
      000763 80 17            [24]  872 	sjmp	00117$
      000765                        873 00116$:
                                    874 ;	SimpleCentralHeating.c:153: strcat(displayBuffer, " ");
      000765 90 02 89         [24]  875 	mov	dptr,#_strcat_PARM_2
      000768 74 F0            [12]  876 	mov	a,#___str_1
      00076A F0               [24]  877 	movx	@dptr,a
      00076B 74 3A            [12]  878 	mov	a,#(___str_1 >> 8)
      00076D A3               [24]  879 	inc	dptr
      00076E F0               [24]  880 	movx	@dptr,a
      00076F 74 80            [12]  881 	mov	a,#0x80
      000771 A3               [24]  882 	inc	dptr
      000772 F0               [24]  883 	movx	@dptr,a
      000773 90 00 6D         [24]  884 	mov	dptr,#_displayBuffer
      000776 75 F0 00         [24]  885 	mov	b, #0x00
      000779 12 2E 91         [24]  886 	lcall	_strcat
      00077C                        887 00117$:
                                    888 ;	SimpleCentralHeating.c:159: boilerOn = (zones[0] || zones[1] || zones[2]);
      00077C 90 00 9B         [24]  889 	mov	dptr,#_SimpleCentralHeating_zones_10000_17
      00077F E0               [24]  890 	movx	a,@dptr
      000780 70 10            [24]  891 	jnz	00161$
      000782 90 00 9C         [24]  892 	mov	dptr,#(_SimpleCentralHeating_zones_10000_17 + 0x0001)
      000785 E0               [24]  893 	movx	a,@dptr
      000786 70 0A            [24]  894 	jnz	00161$
      000788 90 00 9D         [24]  895 	mov	dptr,#(_SimpleCentralHeating_zones_10000_17 + 0x0002)
      00078B E0               [24]  896 	movx	a,@dptr
      00078C 70 04            [24]  897 	jnz	00161$
                                    898 ;	assignBit
      00078E C2 00            [12]  899 	clr	_SimpleCentralHeating_sloc0_1_0
      000790 80 02            [24]  900 	sjmp	00162$
      000792                        901 00161$:
                                    902 ;	assignBit
      000792 D2 00            [12]  903 	setb	_SimpleCentralHeating_sloc0_1_0
      000794                        904 00162$:
      000794 90 00 9E         [24]  905 	mov	dptr,#_SimpleCentralHeating_boilerOn_10000_17
      000797 A2 00            [12]  906 	mov	c,_SimpleCentralHeating_sloc0_1_0
      000799 E4               [12]  907 	clr	a
      00079A 33               [12]  908 	rlc	a
      00079B F0               [24]  909 	movx	@dptr,a
                                    910 ;	SimpleCentralHeating.c:163: pumpOn = (zones[0] || zones[1] || zones[2]);
      00079C 90 00 9B         [24]  911 	mov	dptr,#_SimpleCentralHeating_zones_10000_17
      00079F E0               [24]  912 	movx	a,@dptr
      0007A0 70 10            [24]  913 	jnz	00167$
      0007A2 90 00 9C         [24]  914 	mov	dptr,#(_SimpleCentralHeating_zones_10000_17 + 0x0001)
      0007A5 E0               [24]  915 	movx	a,@dptr
      0007A6 70 0A            [24]  916 	jnz	00167$
      0007A8 90 00 9D         [24]  917 	mov	dptr,#(_SimpleCentralHeating_zones_10000_17 + 0x0002)
      0007AB E0               [24]  918 	movx	a,@dptr
      0007AC 70 04            [24]  919 	jnz	00167$
                                    920 ;	assignBit
      0007AE C2 00            [12]  921 	clr	_SimpleCentralHeating_sloc0_1_0
      0007B0 80 02            [24]  922 	sjmp	00168$
      0007B2                        923 00167$:
                                    924 ;	assignBit
      0007B2 D2 00            [12]  925 	setb	_SimpleCentralHeating_sloc0_1_0
      0007B4                        926 00168$:
      0007B4 90 00 9F         [24]  927 	mov	dptr,#_SimpleCentralHeating_pumpOn_10000_17
      0007B7 A2 00            [12]  928 	mov	c,_SimpleCentralHeating_sloc0_1_0
      0007B9 E4               [12]  929 	clr	a
      0007BA 33               [12]  930 	rlc	a
      0007BB F0               [24]  931 	movx	@dptr,a
                                    932 ;	SimpleCentralHeating.c:166: actuators[0] = zones[0];
      0007BC 90 00 9B         [24]  933 	mov	dptr,#_SimpleCentralHeating_zones_10000_17
      0007BF E0               [24]  934 	movx	a,@dptr
      0007C0 90 00 A0         [24]  935 	mov	dptr,#_SimpleCentralHeating_actuators_10000_17
      0007C3 F0               [24]  936 	movx	@dptr,a
                                    937 ;	SimpleCentralHeating.c:167: actuators[1] = zones[1];
      0007C4 90 00 9C         [24]  938 	mov	dptr,#(_SimpleCentralHeating_zones_10000_17 + 0x0001)
      0007C7 E0               [24]  939 	movx	a,@dptr
      0007C8 90 00 A1         [24]  940 	mov	dptr,#(_SimpleCentralHeating_actuators_10000_17 + 0x0001)
      0007CB F0               [24]  941 	movx	@dptr,a
                                    942 ;	SimpleCentralHeating.c:168: actuators[2] = zones[2];
      0007CC 90 00 9D         [24]  943 	mov	dptr,#(_SimpleCentralHeating_zones_10000_17 + 0x0002)
      0007CF E0               [24]  944 	movx	a,@dptr
      0007D0 90 00 A2         [24]  945 	mov	dptr,#(_SimpleCentralHeating_actuators_10000_17 + 0x0002)
      0007D3 F0               [24]  946 	movx	@dptr,a
                                    947 ;	SimpleCentralHeating.c:170: switch (keys)
      0007D4 90 00 8E         [24]  948 	mov	dptr,#_SimpleCentralHeating_keys_10000_17
      0007D7 E0               [24]  949 	movx	a,@dptr
      0007D8 FE               [12]  950 	mov	r6,a
      0007D9 A3               [24]  951 	inc	dptr
      0007DA E0               [24]  952 	movx	a,@dptr
      0007DB FF               [12]  953 	mov	r7,a
      0007DC BE 05 05         [24]  954 	cjne	r6,#0x05,00400$
      0007DF BF 00 02         [24]  955 	cjne	r7,#0x00,00400$
      0007E2 80 20            [24]  956 	sjmp	00118$
      0007E4                        957 00400$:
      0007E4 BE 06 05         [24]  958 	cjne	r6,#0x06,00401$
      0007E7 BF 00 02         [24]  959 	cjne	r7,#0x00,00401$
      0007EA 80 20            [24]  960 	sjmp	00119$
      0007EC                        961 00401$:
      0007EC BE 09 05         [24]  962 	cjne	r6,#0x09,00402$
      0007EF BF 00 02         [24]  963 	cjne	r7,#0x00,00402$
      0007F2 80 20            [24]  964 	sjmp	00120$
      0007F4                        965 00402$:
      0007F4 BE 0A 05         [24]  966 	cjne	r6,#0x0a,00403$
      0007F7 BF 00 02         [24]  967 	cjne	r7,#0x00,00403$
      0007FA 80 20            [24]  968 	sjmp	00121$
      0007FC                        969 00403$:
                                    970 ;	SimpleCentralHeating.c:172: case 5 :
      0007FC BE 0B 2B         [24]  971 	cjne	r6,#0x0b,00123$
      0007FF BF 00 28         [24]  972 	cjne	r7,#0x00,00123$
      000802 80 20            [24]  973 	sjmp	00122$
      000804                        974 00118$:
                                    975 ;	SimpleCentralHeating.c:173: boilerOn = 1;
      000804 90 00 9E         [24]  976 	mov	dptr,#_SimpleCentralHeating_boilerOn_10000_17
      000807 74 01            [12]  977 	mov	a,#0x01
      000809 F0               [24]  978 	movx	@dptr,a
                                    979 ;	SimpleCentralHeating.c:174: break;
                                    980 ;	SimpleCentralHeating.c:176: case 6 :
      00080A 80 1E            [24]  981 	sjmp	00123$
      00080C                        982 00119$:
                                    983 ;	SimpleCentralHeating.c:177: pumpOn = 1;
      00080C 90 00 9F         [24]  984 	mov	dptr,#_SimpleCentralHeating_pumpOn_10000_17
      00080F 74 01            [12]  985 	mov	a,#0x01
      000811 F0               [24]  986 	movx	@dptr,a
                                    987 ;	SimpleCentralHeating.c:178: break;
                                    988 ;	SimpleCentralHeating.c:180: case 9 :
      000812 80 16            [24]  989 	sjmp	00123$
      000814                        990 00120$:
                                    991 ;	SimpleCentralHeating.c:181: actuators[0] = 1;
      000814 90 00 A0         [24]  992 	mov	dptr,#_SimpleCentralHeating_actuators_10000_17
      000817 74 01            [12]  993 	mov	a,#0x01
      000819 F0               [24]  994 	movx	@dptr,a
                                    995 ;	SimpleCentralHeating.c:182: break;
                                    996 ;	SimpleCentralHeating.c:184: case 10 :
      00081A 80 0E            [24]  997 	sjmp	00123$
      00081C                        998 00121$:
                                    999 ;	SimpleCentralHeating.c:185: actuators[1] = 1;
      00081C 90 00 A1         [24] 1000 	mov	dptr,#(_SimpleCentralHeating_actuators_10000_17 + 0x0001)
      00081F 74 01            [12] 1001 	mov	a,#0x01
      000821 F0               [24] 1002 	movx	@dptr,a
                                   1003 ;	SimpleCentralHeating.c:186: break;
                                   1004 ;	SimpleCentralHeating.c:188: case 11 :
      000822 80 06            [24] 1005 	sjmp	00123$
      000824                       1006 00122$:
                                   1007 ;	SimpleCentralHeating.c:189: actuators[2] = 1;
      000824 90 00 A2         [24] 1008 	mov	dptr,#(_SimpleCentralHeating_actuators_10000_17 + 0x0002)
      000827 74 01            [12] 1009 	mov	a,#0x01
      000829 F0               [24] 1010 	movx	@dptr,a
                                   1011 ;	SimpleCentralHeating.c:191: }
      00082A                       1012 00123$:
                                   1013 ;	SimpleCentralHeating.c:193: strcat(displayBuffer, " ");
      00082A 90 02 89         [24] 1014 	mov	dptr,#_strcat_PARM_2
      00082D 74 F0            [12] 1015 	mov	a,#___str_1
      00082F F0               [24] 1016 	movx	@dptr,a
      000830 74 3A            [12] 1017 	mov	a,#(___str_1 >> 8)
      000832 A3               [24] 1018 	inc	dptr
      000833 F0               [24] 1019 	movx	@dptr,a
      000834 74 80            [12] 1020 	mov	a,#0x80
      000836 A3               [24] 1021 	inc	dptr
      000837 F0               [24] 1022 	movx	@dptr,a
      000838 90 00 6D         [24] 1023 	mov	dptr,#_displayBuffer
      00083B 75 F0 00         [24] 1024 	mov	b, #0x00
      00083E 12 2E 91         [24] 1025 	lcall	_strcat
                                   1026 ;	SimpleCentralHeating.c:195: if (boilerOn)
      000841 90 00 9E         [24] 1027 	mov	dptr,#_SimpleCentralHeating_boilerOn_10000_17
      000844 E0               [24] 1028 	movx	a,@dptr
      000845 60 19            [24] 1029 	jz	00125$
                                   1030 ;	SimpleCentralHeating.c:197: strcat(displayBuffer, "* ");
      000847 90 02 89         [24] 1031 	mov	dptr,#_strcat_PARM_2
      00084A 74 F4            [12] 1032 	mov	a,#___str_3
      00084C F0               [24] 1033 	movx	@dptr,a
      00084D 74 3A            [12] 1034 	mov	a,#(___str_3 >> 8)
      00084F A3               [24] 1035 	inc	dptr
      000850 F0               [24] 1036 	movx	@dptr,a
      000851 74 80            [12] 1037 	mov	a,#0x80
      000853 A3               [24] 1038 	inc	dptr
      000854 F0               [24] 1039 	movx	@dptr,a
      000855 90 00 6D         [24] 1040 	mov	dptr,#_displayBuffer
      000858 75 F0 00         [24] 1041 	mov	b, #0x00
      00085B 12 2E 91         [24] 1042 	lcall	_strcat
      00085E 80 17            [24] 1043 	sjmp	00126$
      000860                       1044 00125$:
                                   1045 ;	SimpleCentralHeating.c:201: strcat(displayBuffer, "  ");
      000860 90 02 89         [24] 1046 	mov	dptr,#_strcat_PARM_2
      000863 74 F7            [12] 1047 	mov	a,#___str_4
      000865 F0               [24] 1048 	movx	@dptr,a
      000866 74 3A            [12] 1049 	mov	a,#(___str_4 >> 8)
      000868 A3               [24] 1050 	inc	dptr
      000869 F0               [24] 1051 	movx	@dptr,a
      00086A 74 80            [12] 1052 	mov	a,#0x80
      00086C A3               [24] 1053 	inc	dptr
      00086D F0               [24] 1054 	movx	@dptr,a
      00086E 90 00 6D         [24] 1055 	mov	dptr,#_displayBuffer
      000871 75 F0 00         [24] 1056 	mov	b, #0x00
      000874 12 2E 91         [24] 1057 	lcall	_strcat
      000877                       1058 00126$:
                                   1059 ;	SimpleCentralHeating.c:204: if (pumpOn)
      000877 90 00 9F         [24] 1060 	mov	dptr,#_SimpleCentralHeating_pumpOn_10000_17
      00087A E0               [24] 1061 	movx	a,@dptr
      00087B 60 19            [24] 1062 	jz	00128$
                                   1063 ;	SimpleCentralHeating.c:206: strcat(displayBuffer, "* ");
      00087D 90 02 89         [24] 1064 	mov	dptr,#_strcat_PARM_2
      000880 74 F4            [12] 1065 	mov	a,#___str_3
      000882 F0               [24] 1066 	movx	@dptr,a
      000883 74 3A            [12] 1067 	mov	a,#(___str_3 >> 8)
      000885 A3               [24] 1068 	inc	dptr
      000886 F0               [24] 1069 	movx	@dptr,a
      000887 74 80            [12] 1070 	mov	a,#0x80
      000889 A3               [24] 1071 	inc	dptr
      00088A F0               [24] 1072 	movx	@dptr,a
      00088B 90 00 6D         [24] 1073 	mov	dptr,#_displayBuffer
      00088E 75 F0 00         [24] 1074 	mov	b, #0x00
      000891 12 2E 91         [24] 1075 	lcall	_strcat
      000894 80 17            [24] 1076 	sjmp	00129$
      000896                       1077 00128$:
                                   1078 ;	SimpleCentralHeating.c:210: strcat(displayBuffer, "  ");
      000896 90 02 89         [24] 1079 	mov	dptr,#_strcat_PARM_2
      000899 74 F7            [12] 1080 	mov	a,#___str_4
      00089B F0               [24] 1081 	movx	@dptr,a
      00089C 74 3A            [12] 1082 	mov	a,#(___str_4 >> 8)
      00089E A3               [24] 1083 	inc	dptr
      00089F F0               [24] 1084 	movx	@dptr,a
      0008A0 74 80            [12] 1085 	mov	a,#0x80
      0008A2 A3               [24] 1086 	inc	dptr
      0008A3 F0               [24] 1087 	movx	@dptr,a
      0008A4 90 00 6D         [24] 1088 	mov	dptr,#_displayBuffer
      0008A7 75 F0 00         [24] 1089 	mov	b, #0x00
      0008AA 12 2E 91         [24] 1090 	lcall	_strcat
      0008AD                       1091 00129$:
                                   1092 ;	SimpleCentralHeating.c:213: strcat(displayBuffer, " ");
      0008AD 90 02 89         [24] 1093 	mov	dptr,#_strcat_PARM_2
      0008B0 74 F0            [12] 1094 	mov	a,#___str_1
      0008B2 F0               [24] 1095 	movx	@dptr,a
      0008B3 74 3A            [12] 1096 	mov	a,#(___str_1 >> 8)
      0008B5 A3               [24] 1097 	inc	dptr
      0008B6 F0               [24] 1098 	movx	@dptr,a
      0008B7 74 80            [12] 1099 	mov	a,#0x80
      0008B9 A3               [24] 1100 	inc	dptr
      0008BA F0               [24] 1101 	movx	@dptr,a
      0008BB 90 00 6D         [24] 1102 	mov	dptr,#_displayBuffer
      0008BE 75 F0 00         [24] 1103 	mov	b, #0x00
      0008C1 12 2E 91         [24] 1104 	lcall	_strcat
                                   1105 ;	SimpleCentralHeating.c:215: if (actuators[0])
      0008C4 90 00 A0         [24] 1106 	mov	dptr,#_SimpleCentralHeating_actuators_10000_17
      0008C7 E0               [24] 1107 	movx	a,@dptr
      0008C8 60 19            [24] 1108 	jz	00131$
                                   1109 ;	SimpleCentralHeating.c:217: strcat(displayBuffer, "*");
      0008CA 90 02 89         [24] 1110 	mov	dptr,#_strcat_PARM_2
      0008CD 74 F2            [12] 1111 	mov	a,#___str_2
      0008CF F0               [24] 1112 	movx	@dptr,a
      0008D0 74 3A            [12] 1113 	mov	a,#(___str_2 >> 8)
      0008D2 A3               [24] 1114 	inc	dptr
      0008D3 F0               [24] 1115 	movx	@dptr,a
      0008D4 74 80            [12] 1116 	mov	a,#0x80
      0008D6 A3               [24] 1117 	inc	dptr
      0008D7 F0               [24] 1118 	movx	@dptr,a
      0008D8 90 00 6D         [24] 1119 	mov	dptr,#_displayBuffer
      0008DB 75 F0 00         [24] 1120 	mov	b, #0x00
      0008DE 12 2E 91         [24] 1121 	lcall	_strcat
      0008E1 80 17            [24] 1122 	sjmp	00132$
      0008E3                       1123 00131$:
                                   1124 ;	SimpleCentralHeating.c:221: strcat(displayBuffer, " ");
      0008E3 90 02 89         [24] 1125 	mov	dptr,#_strcat_PARM_2
      0008E6 74 F0            [12] 1126 	mov	a,#___str_1
      0008E8 F0               [24] 1127 	movx	@dptr,a
      0008E9 74 3A            [12] 1128 	mov	a,#(___str_1 >> 8)
      0008EB A3               [24] 1129 	inc	dptr
      0008EC F0               [24] 1130 	movx	@dptr,a
      0008ED 74 80            [12] 1131 	mov	a,#0x80
      0008EF A3               [24] 1132 	inc	dptr
      0008F0 F0               [24] 1133 	movx	@dptr,a
      0008F1 90 00 6D         [24] 1134 	mov	dptr,#_displayBuffer
      0008F4 75 F0 00         [24] 1135 	mov	b, #0x00
      0008F7 12 2E 91         [24] 1136 	lcall	_strcat
      0008FA                       1137 00132$:
                                   1138 ;	SimpleCentralHeating.c:223: if (actuators[1])
      0008FA 90 00 A1         [24] 1139 	mov	dptr,#(_SimpleCentralHeating_actuators_10000_17 + 0x0001)
      0008FD E0               [24] 1140 	movx	a,@dptr
      0008FE 60 19            [24] 1141 	jz	00134$
                                   1142 ;	SimpleCentralHeating.c:225: strcat(displayBuffer, "*");
      000900 90 02 89         [24] 1143 	mov	dptr,#_strcat_PARM_2
      000903 74 F2            [12] 1144 	mov	a,#___str_2
      000905 F0               [24] 1145 	movx	@dptr,a
      000906 74 3A            [12] 1146 	mov	a,#(___str_2 >> 8)
      000908 A3               [24] 1147 	inc	dptr
      000909 F0               [24] 1148 	movx	@dptr,a
      00090A 74 80            [12] 1149 	mov	a,#0x80
      00090C A3               [24] 1150 	inc	dptr
      00090D F0               [24] 1151 	movx	@dptr,a
      00090E 90 00 6D         [24] 1152 	mov	dptr,#_displayBuffer
      000911 75 F0 00         [24] 1153 	mov	b, #0x00
      000914 12 2E 91         [24] 1154 	lcall	_strcat
      000917 80 17            [24] 1155 	sjmp	00135$
      000919                       1156 00134$:
                                   1157 ;	SimpleCentralHeating.c:229: strcat(displayBuffer, " ");
      000919 90 02 89         [24] 1158 	mov	dptr,#_strcat_PARM_2
      00091C 74 F0            [12] 1159 	mov	a,#___str_1
      00091E F0               [24] 1160 	movx	@dptr,a
      00091F 74 3A            [12] 1161 	mov	a,#(___str_1 >> 8)
      000921 A3               [24] 1162 	inc	dptr
      000922 F0               [24] 1163 	movx	@dptr,a
      000923 74 80            [12] 1164 	mov	a,#0x80
      000925 A3               [24] 1165 	inc	dptr
      000926 F0               [24] 1166 	movx	@dptr,a
      000927 90 00 6D         [24] 1167 	mov	dptr,#_displayBuffer
      00092A 75 F0 00         [24] 1168 	mov	b, #0x00
      00092D 12 2E 91         [24] 1169 	lcall	_strcat
      000930                       1170 00135$:
                                   1171 ;	SimpleCentralHeating.c:231: if (actuators[2])
      000930 90 00 A2         [24] 1172 	mov	dptr,#(_SimpleCentralHeating_actuators_10000_17 + 0x0002)
      000933 E0               [24] 1173 	movx	a,@dptr
      000934 60 19            [24] 1174 	jz	00137$
                                   1175 ;	SimpleCentralHeating.c:233: strcat(displayBuffer, "*");
      000936 90 02 89         [24] 1176 	mov	dptr,#_strcat_PARM_2
      000939 74 F2            [12] 1177 	mov	a,#___str_2
      00093B F0               [24] 1178 	movx	@dptr,a
      00093C 74 3A            [12] 1179 	mov	a,#(___str_2 >> 8)
      00093E A3               [24] 1180 	inc	dptr
      00093F F0               [24] 1181 	movx	@dptr,a
      000940 74 80            [12] 1182 	mov	a,#0x80
      000942 A3               [24] 1183 	inc	dptr
      000943 F0               [24] 1184 	movx	@dptr,a
      000944 90 00 6D         [24] 1185 	mov	dptr,#_displayBuffer
      000947 75 F0 00         [24] 1186 	mov	b, #0x00
      00094A 12 2E 91         [24] 1187 	lcall	_strcat
      00094D 80 17            [24] 1188 	sjmp	00138$
      00094F                       1189 00137$:
                                   1190 ;	SimpleCentralHeating.c:237: strcat(displayBuffer, " ");
      00094F 90 02 89         [24] 1191 	mov	dptr,#_strcat_PARM_2
      000952 74 F0            [12] 1192 	mov	a,#___str_1
      000954 F0               [24] 1193 	movx	@dptr,a
      000955 74 3A            [12] 1194 	mov	a,#(___str_1 >> 8)
      000957 A3               [24] 1195 	inc	dptr
      000958 F0               [24] 1196 	movx	@dptr,a
      000959 74 80            [12] 1197 	mov	a,#0x80
      00095B A3               [24] 1198 	inc	dptr
      00095C F0               [24] 1199 	movx	@dptr,a
      00095D 90 00 6D         [24] 1200 	mov	dptr,#_displayBuffer
      000960 75 F0 00         [24] 1201 	mov	b, #0x00
      000963 12 2E 91         [24] 1202 	lcall	_strcat
      000966                       1203 00138$:
                                   1204 ;	SimpleCentralHeating.c:242: pWriteDisplayBuffer(displayBuffer);
      000966 12 09 6B         [24] 1205 	lcall	00410$
      000969 80 11            [24] 1206 	sjmp	00411$
      00096B                       1207 00410$:
      00096B 90 00 09         [24] 1208 	mov	dptr,#_pWriteDisplayBuffer
      00096E E0               [24] 1209 	movx	a,@dptr
      00096F C0 E0            [24] 1210 	push	acc
      000971 A3               [24] 1211 	inc	dptr
      000972 E0               [24] 1212 	movx	a,@dptr
      000973 C0 E0            [24] 1213 	push	acc
      000975 90 00 6D         [24] 1214 	mov	dptr,#_displayBuffer
      000978 75 F0 00         [24] 1215 	mov	b, #0x00
      00097B 22               [24] 1216 	ret
      00097C                       1217 00411$:
                                   1218 ;	SimpleCentralHeating.c:245: outputs = 0;
      00097C 90 00 91         [24] 1219 	mov	dptr,#_SimpleCentralHeating_outputs_10000_17
      00097F E4               [12] 1220 	clr	a
      000980 F0               [24] 1221 	movx	@dptr,a
                                   1222 ;	SimpleCentralHeating.c:246: if (actuators[0])
      000981 90 00 A0         [24] 1223 	mov	dptr,#_SimpleCentralHeating_actuators_10000_17
      000984 E0               [24] 1224 	movx	a,@dptr
      000985 60 06            [24] 1225 	jz	00140$
                                   1226 ;	SimpleCentralHeating.c:248: outputs |= ACTUATOR1;
      000987 90 00 91         [24] 1227 	mov	dptr,#_SimpleCentralHeating_outputs_10000_17
      00098A 74 01            [12] 1228 	mov	a,#0x01
      00098C F0               [24] 1229 	movx	@dptr,a
      00098D                       1230 00140$:
                                   1231 ;	SimpleCentralHeating.c:250: if (actuators[1])
      00098D 90 00 A1         [24] 1232 	mov	dptr,#(_SimpleCentralHeating_actuators_10000_17 + 0x0001)
      000990 E0               [24] 1233 	movx	a,@dptr
      000991 60 08            [24] 1234 	jz	00142$
                                   1235 ;	SimpleCentralHeating.c:252: outputs |= ACTUATOR2;
      000993 90 00 91         [24] 1236 	mov	dptr,#_SimpleCentralHeating_outputs_10000_17
      000996 E0               [24] 1237 	movx	a,@dptr
      000997 43 E0 02         [24] 1238 	orl	acc,#0x02
      00099A F0               [24] 1239 	movx	@dptr,a
      00099B                       1240 00142$:
                                   1241 ;	SimpleCentralHeating.c:254: if (actuators[2])
      00099B 90 00 A2         [24] 1242 	mov	dptr,#(_SimpleCentralHeating_actuators_10000_17 + 0x0002)
      00099E E0               [24] 1243 	movx	a,@dptr
      00099F 60 08            [24] 1244 	jz	00144$
                                   1245 ;	SimpleCentralHeating.c:256: outputs |= ACTUATOR3;
      0009A1 90 00 91         [24] 1246 	mov	dptr,#_SimpleCentralHeating_outputs_10000_17
      0009A4 E0               [24] 1247 	movx	a,@dptr
      0009A5 43 E0 04         [24] 1248 	orl	acc,#0x04
      0009A8 F0               [24] 1249 	movx	@dptr,a
      0009A9                       1250 00144$:
                                   1251 ;	SimpleCentralHeating.c:258: if (pumpOn)
      0009A9 90 00 9F         [24] 1252 	mov	dptr,#_SimpleCentralHeating_pumpOn_10000_17
      0009AC E0               [24] 1253 	movx	a,@dptr
      0009AD 60 08            [24] 1254 	jz	00146$
                                   1255 ;	SimpleCentralHeating.c:260: outputs |= PUMP;
      0009AF 90 00 91         [24] 1256 	mov	dptr,#_SimpleCentralHeating_outputs_10000_17
      0009B2 E0               [24] 1257 	movx	a,@dptr
      0009B3 43 E0 10         [24] 1258 	orl	acc,#0x10
      0009B6 F0               [24] 1259 	movx	@dptr,a
      0009B7                       1260 00146$:
                                   1261 ;	SimpleCentralHeating.c:262: if (boilerOn)
      0009B7 90 00 9E         [24] 1262 	mov	dptr,#_SimpleCentralHeating_boilerOn_10000_17
      0009BA E0               [24] 1263 	movx	a,@dptr
      0009BB 60 08            [24] 1264 	jz	00148$
                                   1265 ;	SimpleCentralHeating.c:264: outputs |= BOILER;
      0009BD 90 00 91         [24] 1266 	mov	dptr,#_SimpleCentralHeating_outputs_10000_17
      0009C0 E0               [24] 1267 	movx	a,@dptr
      0009C1 43 E0 20         [24] 1268 	orl	acc,#0x20
      0009C4 F0               [24] 1269 	movx	@dptr,a
      0009C5                       1270 00148$:
                                   1271 ;	SimpleCentralHeating.c:267: pSetOutputPortValues(outputs);
      0009C5 90 00 91         [24] 1272 	mov	dptr,#_SimpleCentralHeating_outputs_10000_17
      0009C8 E0               [24] 1273 	movx	a,@dptr
      0009C9 FF               [12] 1274 	mov	r7,a
      0009CA 12 09 CF         [24] 1275 	lcall	00417$
      0009CD 80 0D            [24] 1276 	sjmp	00418$
      0009CF                       1277 00417$:
      0009CF 90 00 0F         [24] 1278 	mov	dptr,#_pSetOutputPortValues
      0009D2 E0               [24] 1279 	movx	a,@dptr
      0009D3 C0 E0            [24] 1280 	push	acc
      0009D5 A3               [24] 1281 	inc	dptr
      0009D6 E0               [24] 1282 	movx	a,@dptr
      0009D7 C0 E0            [24] 1283 	push	acc
      0009D9 8F 82            [24] 1284 	mov	dpl, r7
      0009DB 22               [24] 1285 	ret
      0009DC                       1286 00418$:
                                   1287 ;	SimpleCentralHeating.c:269: for (delay = 0; delay < 200000; ++delay)
      0009DC 7C 40            [12] 1288 	mov	r4,#0x40
      0009DE 7D 0D            [12] 1289 	mov	r5,#0x0d
      0009E0 7E 03            [12] 1290 	mov	r6,#0x03
      0009E2 7F 00            [12] 1291 	mov	r7,#0x00
      0009E4                       1292 00157$:
      0009E4 1C               [12] 1293 	dec	r4
      0009E5 BC FF 09         [24] 1294 	cjne	r4,#0xff,00419$
      0009E8 1D               [12] 1295 	dec	r5
      0009E9 BD FF 05         [24] 1296 	cjne	r5,#0xff,00419$
      0009EC 1E               [12] 1297 	dec	r6
      0009ED BE FF 01         [24] 1298 	cjne	r6,#0xff,00419$
      0009F0 1F               [12] 1299 	dec	r7
      0009F1                       1300 00419$:
      0009F1 EC               [12] 1301 	mov	a,r4
      0009F2 4D               [12] 1302 	orl	a,r5
      0009F3 4E               [12] 1303 	orl	a,r6
      0009F4 4F               [12] 1304 	orl	a,r7
      0009F5 70 ED            [24] 1305 	jnz	00157$
                                   1306 ;	SimpleCentralHeating.c:275: ++i;
                                   1307 ;	SimpleCentralHeating.c:281: }
      0009F7 02 05 CC         [24] 1308 	ljmp	00151$
                                   1309 	.area CSEG    (CODE)
                                   1310 	.area CONST   (CODE)
                                   1311 	.area CONST   (CODE)
      003AE1                       1312 ___str_0:
      003AE1 5A 31 32 33 20 42 20  1313 	.ascii "Z123 B P A123 "
             50 20 41 31 32 33 20
      003AEF 00                    1314 	.db 0x00
                                   1315 	.area CSEG    (CODE)
                                   1316 	.area CONST   (CODE)
      003AF0                       1317 ___str_1:
      003AF0 20                    1318 	.ascii " "
      003AF1 00                    1319 	.db 0x00
                                   1320 	.area CSEG    (CODE)
                                   1321 	.area CONST   (CODE)
      003AF2                       1322 ___str_2:
      003AF2 2A                    1323 	.ascii "*"
      003AF3 00                    1324 	.db 0x00
                                   1325 	.area CSEG    (CODE)
                                   1326 	.area CONST   (CODE)
      003AF4                       1327 ___str_3:
      003AF4 2A 20                 1328 	.ascii "* "
      003AF6 00                    1329 	.db 0x00
                                   1330 	.area CSEG    (CODE)
                                   1331 	.area CONST   (CODE)
      003AF7                       1332 ___str_4:
      003AF7 20 20                 1333 	.ascii "  "
      003AF9 00                    1334 	.db 0x00
                                   1335 	.area CSEG    (CODE)
                                   1336 	.area XINIT   (CODE)
                                   1337 	.area CABS    (ABS,CODE)
