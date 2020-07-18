                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Wed Jun 27 23:08:40 2012
                              5 ;--------------------------------------------------------
                              6 	.module StringUtils
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _strcpy_PARM_2
                             13 	.globl _strcat_PARM_2
                             14 	.globl _strcpy
                             15 	.globl _strcat
                             16 	.globl _UnsignedCharToString
                             17 	.globl _IntToString
                             18 	.globl _UnsignedCharToString_PARM_2
                             19 	.globl _IntToString_PARM_2
                             20 ;--------------------------------------------------------
                             21 ; special function registers
                             22 ;--------------------------------------------------------
                             23 	.area RSEG    (ABS,DATA)
   0000                      24 	.org 0x0000
                             25 ;--------------------------------------------------------
                             26 ; special function bits
                             27 ;--------------------------------------------------------
                             28 	.area RSEG    (ABS,DATA)
   0000                      29 	.org 0x0000
                             30 ;--------------------------------------------------------
                             31 ; overlayable register banks
                             32 ;--------------------------------------------------------
                             33 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      34 	.ds 8
                             35 ;--------------------------------------------------------
                             36 ; internal ram data
                             37 ;--------------------------------------------------------
                             38 	.area DSEG    (DATA)
   0015                      39 _IntToString_PARM_2:
   0015                      40 	.ds 2
   0017                      41 _UnsignedCharToString_PARM_2:
   0017                      42 	.ds 1
   0018                      43 _UnsignedCharToString_sloc0_1_0:
   0018                      44 	.ds 3
                             45 ;--------------------------------------------------------
                             46 ; overlayable items in internal ram 
                             47 ;--------------------------------------------------------
                             48 	.area	OSEG    (OVR,DATA)
   001B                      49 _strcat_PARM_2::
   001B                      50 	.ds 3
                             51 	.area	OSEG    (OVR,DATA)
   001B                      52 _strcpy_PARM_2::
   001B                      53 	.ds 3
                             54 ;--------------------------------------------------------
                             55 ; indirectly addressable internal ram data
                             56 ;--------------------------------------------------------
                             57 	.area ISEG    (DATA)
                             58 ;--------------------------------------------------------
                             59 ; absolute internal ram data
                             60 ;--------------------------------------------------------
                             61 	.area IABS    (ABS,DATA)
                             62 	.area IABS    (ABS,DATA)
                             63 ;--------------------------------------------------------
                             64 ; bit data
                             65 ;--------------------------------------------------------
                             66 	.area BSEG    (BIT)
                             67 ;--------------------------------------------------------
                             68 ; paged external ram data
                             69 ;--------------------------------------------------------
                             70 	.area PSEG    (PAG,XDATA)
                             71 ;--------------------------------------------------------
                             72 ; external ram data
                             73 ;--------------------------------------------------------
                             74 	.area XSEG    (XDATA)
                             75 ;--------------------------------------------------------
                             76 ; absolute external ram data
                             77 ;--------------------------------------------------------
                             78 	.area XABS    (ABS,XDATA)
                             79 ;--------------------------------------------------------
                             80 ; external initialized ram data
                             81 ;--------------------------------------------------------
                             82 	.area XISEG   (XDATA)
                             83 	.area HOME    (CODE)
                             84 	.area GSINIT0 (CODE)
                             85 	.area GSINIT1 (CODE)
                             86 	.area GSINIT2 (CODE)
                             87 	.area GSINIT3 (CODE)
                             88 	.area GSINIT4 (CODE)
                             89 	.area GSINIT5 (CODE)
                             90 	.area GSINIT  (CODE)
                             91 	.area GSFINAL (CODE)
                             92 	.area CSEG    (CODE)
                             93 ;--------------------------------------------------------
                             94 ; global & static initialisations
                             95 ;--------------------------------------------------------
                             96 	.area HOME    (CODE)
                             97 	.area GSINIT  (CODE)
                             98 	.area GSFINAL (CODE)
                             99 	.area GSINIT  (CODE)
                            100 ;--------------------------------------------------------
                            101 ; Home
                            102 ;--------------------------------------------------------
                            103 	.area HOME    (CODE)
                            104 	.area HOME    (CODE)
                            105 ;--------------------------------------------------------
                            106 ; code
                            107 ;--------------------------------------------------------
                            108 	.area CSEG    (CODE)
                            109 ;------------------------------------------------------------
                            110 ;Allocation info for local variables in function 'IntToString'
                            111 ;------------------------------------------------------------
                            112 ;v                         Allocated with name '_IntToString_PARM_2'
                            113 ;p                         Allocated to registers r2 r3 r4 
                            114 ;digit                     Allocated to registers r7 r0 
                            115 ;divider                   Allocated to registers r5 r6 
                            116 ;------------------------------------------------------------
                            117 ;	../Common/StringUtils.c:2: void IntToString(unsigned char *p, unsigned int v)
                            118 ;	-----------------------------------------
                            119 ;	 function IntToString
                            120 ;	-----------------------------------------
   02C4                     121 _IntToString:
                    0002    122 	ar2 = 0x02
                    0003    123 	ar3 = 0x03
                    0004    124 	ar4 = 0x04
                    0005    125 	ar5 = 0x05
                    0006    126 	ar6 = 0x06
                    0007    127 	ar7 = 0x07
                    0000    128 	ar0 = 0x00
                    0001    129 	ar1 = 0x01
   02C4 AA 82               130 	mov	r2,dpl
   02C6 AB 83               131 	mov	r3,dph
   02C8 AC F0               132 	mov	r4,b
                            133 ;	../Common/StringUtils.c:6: divider = 10000;
   02CA 7D 10               134 	mov	r5,#0x10
   02CC 7E 27               135 	mov	r6,#0x27
                            136 ;	../Common/StringUtils.c:7: do
   02CE                     137 00101$:
                            138 ;	../Common/StringUtils.c:9: digit = v / divider;
   02CE 8D 1B               139 	mov	__divuint_PARM_2,r5
   02D0 8E 1C               140 	mov	(__divuint_PARM_2 + 1),r6
   02D2 85 15 82            141 	mov	dpl,_IntToString_PARM_2
   02D5 85 16 83            142 	mov	dph,(_IntToString_PARM_2 + 1)
   02D8 C0 02               143 	push	ar2
   02DA C0 03               144 	push	ar3
   02DC C0 04               145 	push	ar4
   02DE C0 05               146 	push	ar5
   02E0 C0 06               147 	push	ar6
   02E2 12 04 4D            148 	lcall	__divuint
   02E5 AF 82               149 	mov	r7,dpl
   02E7 A8 83               150 	mov	r0,dph
   02E9 D0 06               151 	pop	ar6
   02EB D0 05               152 	pop	ar5
   02ED D0 04               153 	pop	ar4
   02EF D0 03               154 	pop	ar3
   02F1 D0 02               155 	pop	ar2
                            156 ;	../Common/StringUtils.c:10: *p = '0' + digit;
   02F3 8F 01               157 	mov	ar1,r7
   02F5 74 30               158 	mov	a,#0x30
   02F7 29                  159 	add	a,r1
   02F8 8A 82               160 	mov	dpl,r2
   02FA 8B 83               161 	mov	dph,r3
   02FC 8C F0               162 	mov	b,r4
   02FE 12 04 76            163 	lcall	__gptrput
   0301 A3                  164 	inc	dptr
   0302 AA 82               165 	mov	r2,dpl
   0304 AB 83               166 	mov	r3,dph
                            167 ;	../Common/StringUtils.c:11: v -= digit * divider;
   0306 8D 1B               168 	mov	__mulint_PARM_2,r5
   0308 8E 1C               169 	mov	(__mulint_PARM_2 + 1),r6
   030A 8F 82               170 	mov	dpl,r7
   030C 88 83               171 	mov	dph,r0
   030E C0 02               172 	push	ar2
   0310 C0 03               173 	push	ar3
   0312 C0 04               174 	push	ar4
   0314 C0 05               175 	push	ar5
   0316 C0 06               176 	push	ar6
   0318 12 04 8F            177 	lcall	__mulint
   031B AF 82               178 	mov	r7,dpl
   031D A8 83               179 	mov	r0,dph
   031F D0 06               180 	pop	ar6
   0321 D0 05               181 	pop	ar5
   0323 E5 15               182 	mov	a,_IntToString_PARM_2
   0325 C3                  183 	clr	c
   0326 9F                  184 	subb	a,r7
   0327 F5 15               185 	mov	_IntToString_PARM_2,a
   0329 E5 16               186 	mov	a,(_IntToString_PARM_2 + 1)
   032B 98                  187 	subb	a,r0
   032C F5 16               188 	mov	(_IntToString_PARM_2 + 1),a
                            189 ;	../Common/StringUtils.c:12: divider = divider / 10;
   032E 75 1B 0A            190 	mov	__divuint_PARM_2,#0x0A
   0331 75 1C 00            191 	mov	(__divuint_PARM_2 + 1),#0x00
   0334 8D 82               192 	mov	dpl,r5
   0336 8E 83               193 	mov	dph,r6
   0338 12 04 4D            194 	lcall	__divuint
   033B AD 82               195 	mov	r5,dpl
   033D AE 83               196 	mov	r6,dph
   033F D0 04               197 	pop	ar4
   0341 D0 03               198 	pop	ar3
   0343 D0 02               199 	pop	ar2
                            200 ;	../Common/StringUtils.c:13: ++p;
                            201 ;	../Common/StringUtils.c:15: while (divider > 0);
   0345 ED                  202 	mov	a,r5
   0346 4E                  203 	orl	a,r6
   0347 70 85               204 	jnz	00101$
                            205 ;	../Common/StringUtils.c:16: *p = 0;
   0349 8A 82               206 	mov	dpl,r2
   034B 8B 83               207 	mov	dph,r3
   034D 8C F0               208 	mov	b,r4
   034F E4                  209 	clr	a
   0350 02 04 76            210 	ljmp	__gptrput
                            211 ;------------------------------------------------------------
                            212 ;Allocation info for local variables in function 'UnsignedCharToString'
                            213 ;------------------------------------------------------------
                            214 ;v                         Allocated with name '_UnsignedCharToString_PARM_2'
                            215 ;p                         Allocated to registers r2 r3 r4 
                            216 ;digit                     Allocated to registers r7 r0 
                            217 ;divider                   Allocated to registers r5 r6 
                            218 ;sloc0                     Allocated with name '_UnsignedCharToString_sloc0_1_0'
                            219 ;------------------------------------------------------------
                            220 ;	../Common/StringUtils.c:21: void UnsignedCharToString(unsigned char *p, unsigned char v)
                            221 ;	-----------------------------------------
                            222 ;	 function UnsignedCharToString
                            223 ;	-----------------------------------------
   0353                     224 _UnsignedCharToString:
   0353 AA 82               225 	mov	r2,dpl
   0355 AB 83               226 	mov	r3,dph
   0357 AC F0               227 	mov	r4,b
                            228 ;	../Common/StringUtils.c:25: divider = 0x80;
   0359 7D 80               229 	mov	r5,#0x80
   035B 7E 00               230 	mov	r6,#0x00
                            231 ;	../Common/StringUtils.c:26: do
   035D                     232 00101$:
                            233 ;	../Common/StringUtils.c:28: digit = v / divider;
   035D AF 17               234 	mov	r7,_UnsignedCharToString_PARM_2
   035F 78 00               235 	mov	r0,#0x00
   0361 8D 1B               236 	mov	__divuint_PARM_2,r5
   0363 8E 1C               237 	mov	(__divuint_PARM_2 + 1),r6
   0365 8F 82               238 	mov	dpl,r7
   0367 88 83               239 	mov	dph,r0
   0369 C0 02               240 	push	ar2
   036B C0 03               241 	push	ar3
   036D C0 04               242 	push	ar4
   036F C0 05               243 	push	ar5
   0371 C0 06               244 	push	ar6
   0373 12 04 4D            245 	lcall	__divuint
   0376 AF 82               246 	mov	r7,dpl
   0378 A8 83               247 	mov	r0,dph
   037A D0 06               248 	pop	ar6
   037C D0 05               249 	pop	ar5
   037E D0 04               250 	pop	ar4
   0380 D0 03               251 	pop	ar3
   0382 D0 02               252 	pop	ar2
                            253 ;	../Common/StringUtils.c:29: *p = digit ? '1' : '0';
   0384 8A 18               254 	mov	_UnsignedCharToString_sloc0_1_0,r2
   0386 8B 19               255 	mov	(_UnsignedCharToString_sloc0_1_0 + 1),r3
   0388 8C 1A               256 	mov	(_UnsignedCharToString_sloc0_1_0 + 2),r4
   038A EF                  257 	mov	a,r7
   038B 48                  258 	orl	a,r0
   038C 60 04               259 	jz	00106$
   038E 79 31               260 	mov	r1,#0x31
   0390 80 02               261 	sjmp	00107$
   0392                     262 00106$:
   0392 79 30               263 	mov	r1,#0x30
   0394                     264 00107$:
   0394 85 18 82            265 	mov	dpl,_UnsignedCharToString_sloc0_1_0
   0397 85 19 83            266 	mov	dph,(_UnsignedCharToString_sloc0_1_0 + 1)
   039A 85 1A F0            267 	mov	b,(_UnsignedCharToString_sloc0_1_0 + 2)
   039D E9                  268 	mov	a,r1
   039E 12 04 76            269 	lcall	__gptrput
                            270 ;	../Common/StringUtils.c:30: v -= digit * divider;
   03A1 8D 00               271 	mov	ar0,r5
   03A3 8F F0               272 	mov	b,r7
   03A5 E8                  273 	mov	a,r0
   03A6 A4                  274 	mul	ab
   03A7 D3                  275 	setb	c
   03A8 95 17               276 	subb	a,_UnsignedCharToString_PARM_2
   03AA F4                  277 	cpl	a
   03AB F5 17               278 	mov	_UnsignedCharToString_PARM_2,a
                            279 ;	../Common/StringUtils.c:31: divider = divider / 2;
   03AD EE                  280 	mov	a,r6
   03AE C3                  281 	clr	c
   03AF 13                  282 	rrc	a
   03B0 CD                  283 	xch	a,r5
   03B1 13                  284 	rrc	a
   03B2 CD                  285 	xch	a,r5
   03B3 FE                  286 	mov	r6,a
                            287 ;	../Common/StringUtils.c:32: ++p;
   03B4 0A                  288 	inc	r2
   03B5 BA 00 01            289 	cjne	r2,#0x00,00113$
   03B8 0B                  290 	inc	r3
   03B9                     291 00113$:
                            292 ;	../Common/StringUtils.c:34: while (divider > 0);
   03B9 ED                  293 	mov	a,r5
   03BA 4E                  294 	orl	a,r6
   03BB 70 A0               295 	jnz	00101$
                            296 ;	../Common/StringUtils.c:35: *p = 0;
   03BD 8A 82               297 	mov	dpl,r2
   03BF 8B 83               298 	mov	dph,r3
   03C1 8C F0               299 	mov	b,r4
   03C3 E4                  300 	clr	a
   03C4 02 04 76            301 	ljmp	__gptrput
                            302 ;------------------------------------------------------------
                            303 ;Allocation info for local variables in function 'strcat'
                            304 ;------------------------------------------------------------
                            305 ;s                         Allocated with name '_strcat_PARM_2'
                            306 ;p                         Allocated to registers r2 r3 r4 
                            307 ;------------------------------------------------------------
                            308 ;	../Common/StringUtils.c:39: void strcat(char *p, char *s)
                            309 ;	-----------------------------------------
                            310 ;	 function strcat
                            311 ;	-----------------------------------------
   03C7                     312 _strcat:
   03C7 AA 82               313 	mov	r2,dpl
   03C9 AB 83               314 	mov	r3,dph
   03CB AC F0               315 	mov	r4,b
                            316 ;	../Common/StringUtils.c:41: while (*p)
   03CD                     317 00101$:
   03CD 8A 82               318 	mov	dpl,r2
   03CF 8B 83               319 	mov	dph,r3
   03D1 8C F0               320 	mov	b,r4
   03D3 12 04 AC            321 	lcall	__gptrget
   03D6 60 07               322 	jz	00112$
                            323 ;	../Common/StringUtils.c:43: ++p;
   03D8 0A                  324 	inc	r2
   03D9 BA 00 F1            325 	cjne	r2,#0x00,00101$
   03DC 0B                  326 	inc	r3
                            327 ;	../Common/StringUtils.c:45: while (*s)
   03DD 80 EE               328 	sjmp	00101$
   03DF                     329 00112$:
   03DF AD 1B               330 	mov	r5,_strcat_PARM_2
   03E1 AE 1C               331 	mov	r6,(_strcat_PARM_2 + 1)
   03E3 AF 1D               332 	mov	r7,(_strcat_PARM_2 + 2)
   03E5                     333 00104$:
   03E5 8D 82               334 	mov	dpl,r5
   03E7 8E 83               335 	mov	dph,r6
   03E9 8F F0               336 	mov	b,r7
   03EB 12 04 AC            337 	lcall	__gptrget
   03EE F8                  338 	mov	r0,a
   03EF 60 16               339 	jz	00106$
                            340 ;	../Common/StringUtils.c:47: *p = *s;
   03F1 8A 82               341 	mov	dpl,r2
   03F3 8B 83               342 	mov	dph,r3
   03F5 8C F0               343 	mov	b,r4
   03F7 E8                  344 	mov	a,r0
   03F8 12 04 76            345 	lcall	__gptrput
   03FB A3                  346 	inc	dptr
   03FC AA 82               347 	mov	r2,dpl
   03FE AB 83               348 	mov	r3,dph
                            349 ;	../Common/StringUtils.c:48: ++p;
                            350 ;	../Common/StringUtils.c:49: ++s;
   0400 0D                  351 	inc	r5
   0401 BD 00 E1            352 	cjne	r5,#0x00,00104$
   0404 0E                  353 	inc	r6
   0405 80 DE               354 	sjmp	00104$
   0407                     355 00106$:
                            356 ;	../Common/StringUtils.c:51: *p = 0;
   0407 8A 82               357 	mov	dpl,r2
   0409 8B 83               358 	mov	dph,r3
   040B 8C F0               359 	mov	b,r4
   040D E4                  360 	clr	a
   040E 02 04 76            361 	ljmp	__gptrput
                            362 ;------------------------------------------------------------
                            363 ;Allocation info for local variables in function 'strcpy'
                            364 ;------------------------------------------------------------
                            365 ;s                         Allocated with name '_strcpy_PARM_2'
                            366 ;p                         Allocated to registers r2 r3 r4 
                            367 ;------------------------------------------------------------
                            368 ;	../Common/StringUtils.c:54: void strcpy(char *p, char *s)
                            369 ;	-----------------------------------------
                            370 ;	 function strcpy
                            371 ;	-----------------------------------------
   0411                     372 _strcpy:
                            373 ;	../Common/StringUtils.c:56: *p = 0;
   0411 AA 82               374 	mov	r2,dpl
   0413 AB 83               375 	mov	r3,dph
   0415 AC F0               376 	mov	r4,b
   0417 E4                  377 	clr	a
   0418 12 04 76            378 	lcall	__gptrput
                            379 ;	../Common/StringUtils.c:57: while (*s)
   041B AD 1B               380 	mov	r5,_strcpy_PARM_2
   041D AE 1C               381 	mov	r6,(_strcpy_PARM_2 + 1)
   041F AF 1D               382 	mov	r7,(_strcpy_PARM_2 + 2)
   0421                     383 00101$:
   0421 8D 82               384 	mov	dpl,r5
   0423 8E 83               385 	mov	dph,r6
   0425 8F F0               386 	mov	b,r7
   0427 12 04 AC            387 	lcall	__gptrget
   042A F8                  388 	mov	r0,a
   042B 60 16               389 	jz	00103$
                            390 ;	../Common/StringUtils.c:59: *p = *s;
   042D 8A 82               391 	mov	dpl,r2
   042F 8B 83               392 	mov	dph,r3
   0431 8C F0               393 	mov	b,r4
   0433 E8                  394 	mov	a,r0
   0434 12 04 76            395 	lcall	__gptrput
   0437 A3                  396 	inc	dptr
   0438 AA 82               397 	mov	r2,dpl
   043A AB 83               398 	mov	r3,dph
                            399 ;	../Common/StringUtils.c:60: ++p;
                            400 ;	../Common/StringUtils.c:61: ++s;
   043C 0D                  401 	inc	r5
   043D BD 00 E1            402 	cjne	r5,#0x00,00101$
   0440 0E                  403 	inc	r6
   0441 80 DE               404 	sjmp	00101$
   0443                     405 00103$:
                            406 ;	../Common/StringUtils.c:63: *p = 0;
   0443 8A 82               407 	mov	dpl,r2
   0445 8B 83               408 	mov	dph,r3
   0447 8C F0               409 	mov	b,r4
   0449 E4                  410 	clr	a
   044A 02 04 76            411 	ljmp	__gptrput
                            412 	.area CSEG    (CODE)
                            413 	.area CONST   (CODE)
                            414 	.area XINIT   (CODE)
                            415 	.area CABS    (ABS,CODE)
