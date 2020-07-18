                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Tue Jun 05 21:18:16 2012
                              5 ;--------------------------------------------------------
                              6 	.module Main
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
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
                             32 	.globl _PLS
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
                            208 	.globl _TempProg
                            209 ;--------------------------------------------------------
                            210 ; special function registers
                            211 ;--------------------------------------------------------
                            212 	.area RSEG    (ABS,DATA)
   0000                     213 	.org 0x0000
                    0080    214 _P0	=	0x0080
                    0081    215 _SP	=	0x0081
                    0082    216 _DPL	=	0x0082
                    0083    217 _DPH	=	0x0083
                    0087    218 _PCON	=	0x0087
                    0088    219 _TCON	=	0x0088
                    0089    220 _TMOD	=	0x0089
                    008A    221 _TL0	=	0x008a
                    008B    222 _TL1	=	0x008b
                    008C    223 _TH0	=	0x008c
                    008D    224 _TH1	=	0x008d
                    0090    225 _P1	=	0x0090
                    0098    226 _SCON	=	0x0098
                    0099    227 _SBUF	=	0x0099
                    00A0    228 _P2	=	0x00a0
                    00A8    229 _IE	=	0x00a8
                    00B0    230 _P3	=	0x00b0
                    00B8    231 _IP	=	0x00b8
                    00D0    232 _PSW	=	0x00d0
                    00E0    233 _ACC	=	0x00e0
                    00F0    234 _B	=	0x00f0
                    00C8    235 _T2CON	=	0x00c8
                    00CA    236 _RCAP2L	=	0x00ca
                    00CB    237 _RCAP2H	=	0x00cb
                    00CC    238 _TL2	=	0x00cc
                    00CD    239 _TH2	=	0x00cd
                    008E    240 _AUXR	=	0x008e
                    00A2    241 _AUXR1	=	0x00a2
                    0097    242 _CKRL	=	0x0097
                    008F    243 _CKCON0	=	0x008f
                    00AF    244 _CKCON1	=	0x00af
                    00FA    245 _CCAP0H	=	0x00fa
                    00FB    246 _CCAP1H	=	0x00fb
                    00FC    247 _CCAP2H	=	0x00fc
                    00FD    248 _CCAP3H	=	0x00fd
                    00FE    249 _CCAP4H	=	0x00fe
                    00EA    250 _CCAP0L	=	0x00ea
                    00EB    251 _CCAP1L	=	0x00eb
                    00EC    252 _CCAP2L	=	0x00ec
                    00ED    253 _CCAP3L	=	0x00ed
                    00EE    254 _CCAP4L	=	0x00ee
                    00DA    255 _CCAPM0	=	0x00da
                    00DB    256 _CCAPM1	=	0x00db
                    00DC    257 _CCAPM2	=	0x00dc
                    00DD    258 _CCAPM3	=	0x00dd
                    00DE    259 _CCAPM4	=	0x00de
                    00D8    260 _CCON	=	0x00d8
                    00F9    261 _CH	=	0x00f9
                    00E9    262 _CL	=	0x00e9
                    00D9    263 _CMOD	=	0x00d9
                    00A8    264 _IEN0	=	0x00a8
                    00B1    265 _IEN1	=	0x00b1
                    00B8    266 _IPL0	=	0x00b8
                    00B7    267 _IPH0	=	0x00b7
                    00B2    268 _IPL1	=	0x00b2
                    00B3    269 _IPH1	=	0x00b3
                    00C0    270 _P4	=	0x00c0
                    00E8    271 _P5	=	0x00e8
                    00A6    272 _WDTRST	=	0x00a6
                    00A7    273 _WDTPRG	=	0x00a7
                    00A9    274 _SADDR	=	0x00a9
                    00B9    275 _SADEN	=	0x00b9
                    00C3    276 _SPCON	=	0x00c3
                    00C4    277 _SPSTA	=	0x00c4
                    00C5    278 _SPDAT	=	0x00c5
                    00C9    279 _T2MOD	=	0x00c9
                    009B    280 _BDRCON	=	0x009b
                    009A    281 _BRL	=	0x009a
                    009C    282 _KBLS	=	0x009c
                    009D    283 _KBE	=	0x009d
                    009E    284 _KBF	=	0x009e
                    00D2    285 _EECON	=	0x00d2
                            286 ;--------------------------------------------------------
                            287 ; special function bits
                            288 ;--------------------------------------------------------
                            289 	.area RSEG    (ABS,DATA)
   0000                     290 	.org 0x0000
                    0080    291 _P0_0	=	0x0080
                    0081    292 _P0_1	=	0x0081
                    0082    293 _P0_2	=	0x0082
                    0083    294 _P0_3	=	0x0083
                    0084    295 _P0_4	=	0x0084
                    0085    296 _P0_5	=	0x0085
                    0086    297 _P0_6	=	0x0086
                    0087    298 _P0_7	=	0x0087
                    0088    299 _IT0	=	0x0088
                    0089    300 _IE0	=	0x0089
                    008A    301 _IT1	=	0x008a
                    008B    302 _IE1	=	0x008b
                    008C    303 _TR0	=	0x008c
                    008D    304 _TF0	=	0x008d
                    008E    305 _TR1	=	0x008e
                    008F    306 _TF1	=	0x008f
                    0090    307 _P1_0	=	0x0090
                    0091    308 _P1_1	=	0x0091
                    0092    309 _P1_2	=	0x0092
                    0093    310 _P1_3	=	0x0093
                    0094    311 _P1_4	=	0x0094
                    0095    312 _P1_5	=	0x0095
                    0096    313 _P1_6	=	0x0096
                    0097    314 _P1_7	=	0x0097
                    0098    315 _RI	=	0x0098
                    0099    316 _TI	=	0x0099
                    009A    317 _RB8	=	0x009a
                    009B    318 _TB8	=	0x009b
                    009C    319 _REN	=	0x009c
                    009D    320 _SM2	=	0x009d
                    009E    321 _SM1	=	0x009e
                    009F    322 _SM0	=	0x009f
                    00A0    323 _P2_0	=	0x00a0
                    00A1    324 _P2_1	=	0x00a1
                    00A2    325 _P2_2	=	0x00a2
                    00A3    326 _P2_3	=	0x00a3
                    00A4    327 _P2_4	=	0x00a4
                    00A5    328 _P2_5	=	0x00a5
                    00A6    329 _P2_6	=	0x00a6
                    00A7    330 _P2_7	=	0x00a7
                    00A8    331 _EX0	=	0x00a8
                    00A9    332 _ET0	=	0x00a9
                    00AA    333 _EX1	=	0x00aa
                    00AB    334 _ET1	=	0x00ab
                    00AC    335 _ES	=	0x00ac
                    00AF    336 _EA	=	0x00af
                    00B0    337 _P3_0	=	0x00b0
                    00B1    338 _P3_1	=	0x00b1
                    00B2    339 _P3_2	=	0x00b2
                    00B3    340 _P3_3	=	0x00b3
                    00B4    341 _P3_4	=	0x00b4
                    00B5    342 _P3_5	=	0x00b5
                    00B6    343 _P3_6	=	0x00b6
                    00B7    344 _P3_7	=	0x00b7
                    00B0    345 _RXD	=	0x00b0
                    00B1    346 _TXD	=	0x00b1
                    00B2    347 _INT0	=	0x00b2
                    00B3    348 _INT1	=	0x00b3
                    00B4    349 _T0	=	0x00b4
                    00B5    350 _T1	=	0x00b5
                    00B6    351 _WR	=	0x00b6
                    00B7    352 _RD	=	0x00b7
                    00B8    353 _PX0	=	0x00b8
                    00B9    354 _PT0	=	0x00b9
                    00BA    355 _PX1	=	0x00ba
                    00BB    356 _PT1	=	0x00bb
                    00BC    357 _PS	=	0x00bc
                    00D0    358 _P	=	0x00d0
                    00D1    359 _F1	=	0x00d1
                    00D2    360 _OV	=	0x00d2
                    00D3    361 _RS0	=	0x00d3
                    00D4    362 _RS1	=	0x00d4
                    00D5    363 _F0	=	0x00d5
                    00D6    364 _AC	=	0x00d6
                    00D7    365 _CY	=	0x00d7
                    00AD    366 _ET2	=	0x00ad
                    00BD    367 _PT2	=	0x00bd
                    00C8    368 _T2CON_0	=	0x00c8
                    00C9    369 _T2CON_1	=	0x00c9
                    00CA    370 _T2CON_2	=	0x00ca
                    00CB    371 _T2CON_3	=	0x00cb
                    00CC    372 _T2CON_4	=	0x00cc
                    00CD    373 _T2CON_5	=	0x00cd
                    00CE    374 _T2CON_6	=	0x00ce
                    00CF    375 _T2CON_7	=	0x00cf
                    00C8    376 _CP_RL2	=	0x00c8
                    00C9    377 _C_T2	=	0x00c9
                    00CA    378 _TR2	=	0x00ca
                    00CB    379 _EXEN2	=	0x00cb
                    00CC    380 _TCLK	=	0x00cc
                    00CD    381 _RCLK	=	0x00cd
                    00CE    382 _EXF2	=	0x00ce
                    00CF    383 _TF2	=	0x00cf
                    00DF    384 _CF	=	0x00df
                    00DE    385 _CR	=	0x00de
                    00DC    386 _CCF4	=	0x00dc
                    00DB    387 _CCF3	=	0x00db
                    00DA    388 _CCF2	=	0x00da
                    00D9    389 _CCF1	=	0x00d9
                    00D8    390 _CCF0	=	0x00d8
                    00AE    391 _EC	=	0x00ae
                    00BE    392 _PPCL	=	0x00be
                    00BD    393 _PT2L	=	0x00bd
                    00BC    394 _PLS	=	0x00bc
                    00BB    395 _PT1L	=	0x00bb
                    00BA    396 _PX1L	=	0x00ba
                    00B9    397 _PT0L	=	0x00b9
                    00B8    398 _PX0L	=	0x00b8
                    00C0    399 _P4_0	=	0x00c0
                    00C1    400 _P4_1	=	0x00c1
                    00C2    401 _P4_2	=	0x00c2
                    00C3    402 _P4_3	=	0x00c3
                    00C4    403 _P4_4	=	0x00c4
                    00C5    404 _P4_5	=	0x00c5
                    00C6    405 _P4_6	=	0x00c6
                    00C7    406 _P4_7	=	0x00c7
                    00E8    407 _P5_0	=	0x00e8
                    00E9    408 _P5_1	=	0x00e9
                    00EA    409 _P5_2	=	0x00ea
                    00EB    410 _P5_3	=	0x00eb
                    00EC    411 _P5_4	=	0x00ec
                    00ED    412 _P5_5	=	0x00ed
                    00EE    413 _P5_6	=	0x00ee
                    00EF    414 _P5_7	=	0x00ef
                            415 ;--------------------------------------------------------
                            416 ; overlayable register banks
                            417 ;--------------------------------------------------------
                            418 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     419 	.ds 8
                            420 ;--------------------------------------------------------
                            421 ; internal ram data
                            422 ;--------------------------------------------------------
                            423 	.area DSEG    (DATA)
                            424 ;--------------------------------------------------------
                            425 ; overlayable items in internal ram 
                            426 ;--------------------------------------------------------
                            427 	.area OSEG    (OVR,DATA)
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
   0000                     449 _TempProg_dt_1_1:
   0000                     450 	.ds 7
   0007                     451 _TempProg_strBuf_1_1:
   0007                     452 	.ds 10
                            453 ;--------------------------------------------------------
                            454 ; absolute external ram data
                            455 ;--------------------------------------------------------
                            456 	.area XABS    (ABS,XDATA)
                            457 ;--------------------------------------------------------
                            458 ; external initialized ram data
                            459 ;--------------------------------------------------------
                            460 	.area XISEG   (XDATA)
                            461 	.area HOME    (CODE)
                            462 	.area GSINIT0 (CODE)
                            463 	.area GSINIT1 (CODE)
                            464 	.area GSINIT2 (CODE)
                            465 	.area GSINIT3 (CODE)
                            466 	.area GSINIT4 (CODE)
                            467 	.area GSINIT5 (CODE)
                            468 	.area GSINIT  (CODE)
                            469 	.area GSFINAL (CODE)
                            470 	.area CSEG    (CODE)
                            471 ;--------------------------------------------------------
                            472 ; global & static initialisations
                            473 ;--------------------------------------------------------
                            474 	.area HOME    (CODE)
                            475 	.area GSINIT  (CODE)
                            476 	.area GSFINAL (CODE)
                            477 	.area GSINIT  (CODE)
                            478 ;--------------------------------------------------------
                            479 ; Home
                            480 ;--------------------------------------------------------
                            481 	.area HOME    (CODE)
                            482 	.area HOME    (CODE)
                            483 ;--------------------------------------------------------
                            484 ; code
                            485 ;--------------------------------------------------------
                            486 	.area CSEG    (CODE)
                            487 ;------------------------------------------------------------
                            488 ;Allocation info for local variables in function 'TempProg'
                            489 ;------------------------------------------------------------
                            490 ;delay                     Allocated with name '_TempProg_delay_1_1'
                            491 ;dt                        Allocated with name '_TempProg_dt_1_1'
                            492 ;strBuf                    Allocated with name '_TempProg_strBuf_1_1'
                            493 ;------------------------------------------------------------
                            494 ;	Main.c:34: void TempProg()
                            495 ;	-----------------------------------------
                            496 ;	 function TempProg
                            497 ;	-----------------------------------------
   0064                     498 _TempProg:
                    0002    499 	ar2 = 0x02
                    0003    500 	ar3 = 0x03
                    0004    501 	ar4 = 0x04
                    0005    502 	ar5 = 0x05
                    0006    503 	ar6 = 0x06
                    0007    504 	ar7 = 0x07
                    0000    505 	ar0 = 0x00
                    0001    506 	ar1 = 0x01
                            507 ;	Main.c:40: dt.year = 12;
   0064 90 00 06            508 	mov	dptr,#(_TempProg_dt_1_1 + 0x0006)
   0067 74 0C               509 	mov	a,#0x0C
   0069 F0                  510 	movx	@dptr,a
                            511 ;	Main.c:41: dt.month = 1;
   006A 90 00 05            512 	mov	dptr,#(_TempProg_dt_1_1 + 0x0005)
   006D 74 01               513 	mov	a,#0x01
   006F F0                  514 	movx	@dptr,a
                            515 ;	Main.c:42: dt.day = 10;
   0070 90 00 04            516 	mov	dptr,#(_TempProg_dt_1_1 + 0x0004)
   0073 74 0A               517 	mov	a,#0x0A
   0075 F0                  518 	movx	@dptr,a
                            519 ;	Main.c:43: dt.dayOfWeek = 0;
   0076 90 00 03            520 	mov	dptr,#(_TempProg_dt_1_1 + 0x0003)
   0079 E4                  521 	clr	a
   007A F0                  522 	movx	@dptr,a
                            523 ;	Main.c:44: dt.hours = 23;
   007B 90 00 02            524 	mov	dptr,#(_TempProg_dt_1_1 + 0x0002)
   007E 74 17               525 	mov	a,#0x17
   0080 F0                  526 	movx	@dptr,a
                            527 ;	Main.c:45: dt.minutes = 20;
   0081 90 00 01            528 	mov	dptr,#(_TempProg_dt_1_1 + 0x0001)
   0084 74 14               529 	mov	a,#0x14
   0086 F0                  530 	movx	@dptr,a
                            531 ;	Main.c:46: dt.seconds = 3;
                            532 ;	Main.c:48: if (!Rtc_WriteClock(&dt))
   0087 90 00 00            533 	mov	dptr,#_TempProg_dt_1_1
   008A 74 03               534 	mov	a,#0x03
   008C F0                  535 	movx	@dptr,a
   008D 75 F0 00            536 	mov	b,#0x00
   0090 12 0D 64            537 	lcall	_Rtc_WriteClock
   0093 E5 82               538 	mov	a,dpl
   0095 70 19               539 	jnz	00114$
                            540 ;	Main.c:50: pCrashDump("Cannot Write RTC");
   0097 74 B0               541 	mov	a,#00120$
   0099 C0 E0               542 	push	acc
   009B 74 00               543 	mov	a,#(00120$ >> 8)
   009D C0 E0               544 	push	acc
   009F 90 00 97            545 	mov	dptr,#_pCrashDump
   00A2 E0                  546 	movx	a,@dptr
   00A3 C0 E0               547 	push	acc
   00A5 A3                  548 	inc	dptr
   00A6 E0                  549 	movx	a,@dptr
   00A7 C0 E0               550 	push	acc
   00A9 90 14 33            551 	mov	dptr,#__str_0
   00AC 75 F0 80            552 	mov	b,#0x80
   00AF 22                  553 	ret
   00B0                     554 00120$:
                            555 ;	Main.c:55: for (delay = 0; delay < 1000; ++delay)
   00B0                     556 00114$:
   00B0 7A E8               557 	mov	r2,#0xE8
   00B2 7B 03               558 	mov	r3,#0x03
   00B4 7C 00               559 	mov	r4,#0x00
   00B6 7D 00               560 	mov	r5,#0x00
   00B8                     561 00110$:
   00B8 1A                  562 	dec	r2
   00B9 BA FF 09            563 	cjne	r2,#0xff,00121$
   00BC 1B                  564 	dec	r3
   00BD BB FF 05            565 	cjne	r3,#0xff,00121$
   00C0 1C                  566 	dec	r4
   00C1 BC FF 01            567 	cjne	r4,#0xff,00121$
   00C4 1D                  568 	dec	r5
   00C5                     569 00121$:
   00C5 EA                  570 	mov	a,r2
   00C6 4B                  571 	orl	a,r3
   00C7 4C                  572 	orl	a,r4
   00C8 4D                  573 	orl	a,r5
                            574 ;	Main.c:60: if (!Rtc_ReadClock(&dt))
   00C9 70 ED               575 	jnz	00110$
   00CB 90 00 00            576 	mov	dptr,#_TempProg_dt_1_1
   00CE F5 F0               577 	mov	b,a
   00D0 12 0B 75            578 	lcall	_Rtc_ReadClock
   00D3 E5 82               579 	mov	a,dpl
   00D5 70 19               580 	jnz	00104$
                            581 ;	Main.c:62: pCrashDump("Cannot Read RTC");
   00D7 74 F0               582 	mov	a,#00124$
   00D9 C0 E0               583 	push	acc
   00DB 74 00               584 	mov	a,#(00124$ >> 8)
   00DD C0 E0               585 	push	acc
   00DF 90 00 97            586 	mov	dptr,#_pCrashDump
   00E2 E0                  587 	movx	a,@dptr
   00E3 C0 E0               588 	push	acc
   00E5 A3                  589 	inc	dptr
   00E6 E0                  590 	movx	a,@dptr
   00E7 C0 E0               591 	push	acc
   00E9 90 14 44            592 	mov	dptr,#__str_1
   00EC 75 F0 80            593 	mov	b,#0x80
   00EF 22                  594 	ret
   00F0                     595 00124$:
   00F0                     596 00104$:
                            597 ;	Main.c:65: strBuf[0] = (dt.hours / 10) + '0';
   00F0 90 00 02            598 	mov	dptr,#(_TempProg_dt_1_1 + 0x0002)
   00F3 E0                  599 	movx	a,@dptr
   00F4 FA                  600 	mov	r2,a
   00F5 75 F0 0A            601 	mov	b,#0x0A
   00F8 84                  602 	div	ab
   00F9 24 30               603 	add	a,#0x30
   00FB 90 00 07            604 	mov	dptr,#_TempProg_strBuf_1_1
   00FE F0                  605 	movx	@dptr,a
                            606 ;	Main.c:66: strBuf[1] = (dt.hours % 10) + '0';
   00FF 75 F0 0A            607 	mov	b,#0x0A
   0102 EA                  608 	mov	a,r2
   0103 84                  609 	div	ab
   0104 E5 F0               610 	mov	a,b
   0106 24 30               611 	add	a,#0x30
   0108 90 00 08            612 	mov	dptr,#(_TempProg_strBuf_1_1 + 0x0001)
   010B F0                  613 	movx	@dptr,a
                            614 ;	Main.c:67: strBuf[2] = ':';
   010C 90 00 09            615 	mov	dptr,#(_TempProg_strBuf_1_1 + 0x0002)
   010F 74 3A               616 	mov	a,#0x3A
   0111 F0                  617 	movx	@dptr,a
                            618 ;	Main.c:68: strBuf[3] = (dt.minutes / 10) + '0';
   0112 90 00 01            619 	mov	dptr,#(_TempProg_dt_1_1 + 0x0001)
   0115 E0                  620 	movx	a,@dptr
   0116 FA                  621 	mov	r2,a
   0117 75 F0 0A            622 	mov	b,#0x0A
   011A 84                  623 	div	ab
   011B 24 30               624 	add	a,#0x30
   011D 90 00 0A            625 	mov	dptr,#(_TempProg_strBuf_1_1 + 0x0003)
   0120 F0                  626 	movx	@dptr,a
                            627 ;	Main.c:69: strBuf[4] = (dt.minutes % 10) + '0';
   0121 75 F0 0A            628 	mov	b,#0x0A
   0124 EA                  629 	mov	a,r2
   0125 84                  630 	div	ab
   0126 E5 F0               631 	mov	a,b
   0128 24 30               632 	add	a,#0x30
   012A 90 00 0B            633 	mov	dptr,#(_TempProg_strBuf_1_1 + 0x0004)
   012D F0                  634 	movx	@dptr,a
                            635 ;	Main.c:70: strBuf[5] = ':';
   012E 90 00 0C            636 	mov	dptr,#(_TempProg_strBuf_1_1 + 0x0005)
   0131 74 3A               637 	mov	a,#0x3A
   0133 F0                  638 	movx	@dptr,a
                            639 ;	Main.c:71: strBuf[6] = (dt.seconds / 10) + '0';
   0134 90 00 00            640 	mov	dptr,#_TempProg_dt_1_1
   0137 E0                  641 	movx	a,@dptr
   0138 FA                  642 	mov	r2,a
   0139 75 F0 0A            643 	mov	b,#0x0A
   013C 84                  644 	div	ab
   013D 24 30               645 	add	a,#0x30
   013F 90 00 0D            646 	mov	dptr,#(_TempProg_strBuf_1_1 + 0x0006)
   0142 F0                  647 	movx	@dptr,a
                            648 ;	Main.c:72: strBuf[7] = (dt.seconds % 10) + '0';
   0143 75 F0 0A            649 	mov	b,#0x0A
   0146 EA                  650 	mov	a,r2
   0147 84                  651 	div	ab
   0148 E5 F0               652 	mov	a,b
   014A 24 30               653 	add	a,#0x30
   014C 90 00 0E            654 	mov	dptr,#(_TempProg_strBuf_1_1 + 0x0007)
   014F F0                  655 	movx	@dptr,a
                            656 ;	Main.c:73: strBuf[8] = 0;
   0150 90 00 0F            657 	mov	dptr,#(_TempProg_strBuf_1_1 + 0x0008)
   0153 E4                  658 	clr	a
   0154 F0                  659 	movx	@dptr,a
                            660 ;	Main.c:75: pWriteDisplayBuffer(strBuf);
   0155 74 6E               661 	mov	a,#00125$
   0157 C0 E0               662 	push	acc
   0159 74 01               663 	mov	a,#(00125$ >> 8)
   015B C0 E0               664 	push	acc
   015D 90 00 8F            665 	mov	dptr,#_pWriteDisplayBuffer
   0160 E0                  666 	movx	a,@dptr
   0161 C0 E0               667 	push	acc
   0163 A3                  668 	inc	dptr
   0164 E0                  669 	movx	a,@dptr
   0165 C0 E0               670 	push	acc
   0167 90 00 07            671 	mov	dptr,#_TempProg_strBuf_1_1
   016A 75 F0 00            672 	mov	b,#0x00
   016D 22                  673 	ret
   016E                     674 00125$:
   016E 02 00 B0            675 	ljmp	00114$
                            676 	.area CSEG    (CODE)
                            677 	.area CONST   (CODE)
   1433                     678 __str_0:
   1433 43 61 6E 6E 6F 74   679 	.ascii "Cannot Write RTC"
        20 57 72 69 74 65
        20 52 54 43
   1443 00                  680 	.db 0x00
   1444                     681 __str_1:
   1444 43 61 6E 6E 6F 74   682 	.ascii "Cannot Read RTC"
        20 52 65 61 64 20
        52 54 43
   1453 00                  683 	.db 0x00
                            684 	.area XINIT   (CODE)
                            685 	.area CABS    (ABS,CODE)
