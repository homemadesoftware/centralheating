                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module StringUtils
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _strcpy
                                     12 	.globl _strcat
                                     13 	.globl _UnsignedCharToString
                                     14 	.globl _IntToString
                                     15 	.globl _strcpy_PARM_2
                                     16 	.globl _strcat_PARM_2
                                     17 	.globl _UnsignedCharToString_PARM_2
                                     18 	.globl _IntToString_PARM_2
                                     19 ;--------------------------------------------------------
                                     20 ; special function registers
                                     21 ;--------------------------------------------------------
                                     22 	.area RSEG    (ABS,DATA)
      000000                         23 	.org 0x0000
                                     24 ;--------------------------------------------------------
                                     25 ; special function bits
                                     26 ;--------------------------------------------------------
                                     27 	.area RSEG    (ABS,DATA)
      000000                         28 	.org 0x0000
                                     29 ;--------------------------------------------------------
                                     30 ; overlayable register banks
                                     31 ;--------------------------------------------------------
                                     32 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         33 	.ds 8
                                     34 ;--------------------------------------------------------
                                     35 ; internal ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area DSEG    (DATA)
      00002A                         38 _IntToString_sloc0_1_0:
      00002A                         39 	.ds 2
                                     40 ;--------------------------------------------------------
                                     41 ; overlayable items in internal ram 
                                     42 ;--------------------------------------------------------
                                     43 ;--------------------------------------------------------
                                     44 ; indirectly addressable internal ram data
                                     45 ;--------------------------------------------------------
                                     46 	.area ISEG    (DATA)
                                     47 ;--------------------------------------------------------
                                     48 ; absolute internal ram data
                                     49 ;--------------------------------------------------------
                                     50 	.area IABS    (ABS,DATA)
                                     51 	.area IABS    (ABS,DATA)
                                     52 ;--------------------------------------------------------
                                     53 ; bit data
                                     54 ;--------------------------------------------------------
                                     55 	.area BSEG    (BIT)
                                     56 ;--------------------------------------------------------
                                     57 ; paged external ram data
                                     58 ;--------------------------------------------------------
                                     59 	.area PSEG    (PAG,XDATA)
                                     60 ;--------------------------------------------------------
                                     61 ; external ram data
                                     62 ;--------------------------------------------------------
                                     63 	.area XSEG    (XDATA)
      00027A                         64 _IntToString_PARM_2:
      00027A                         65 	.ds 2
      00027C                         66 _IntToString_p_65536_1:
      00027C                         67 	.ds 3
      00027F                         68 _IntToString_divider_65536_2:
      00027F                         69 	.ds 2
      000281                         70 _UnsignedCharToString_PARM_2:
      000281                         71 	.ds 1
      000282                         72 _UnsignedCharToString_p_65536_4:
      000282                         73 	.ds 3
      000285                         74 _UnsignedCharToString_digit_65536_5:
      000285                         75 	.ds 2
      000287                         76 _UnsignedCharToString_divider_65536_5:
      000287                         77 	.ds 2
      000289                         78 _strcat_PARM_2:
      000289                         79 	.ds 3
      00028C                         80 _strcat_p_65536_7:
      00028C                         81 	.ds 3
      00028F                         82 _strcpy_PARM_2:
      00028F                         83 	.ds 3
      000292                         84 _strcpy_p_65536_11:
      000292                         85 	.ds 3
                                     86 ;--------------------------------------------------------
                                     87 ; absolute external ram data
                                     88 ;--------------------------------------------------------
                                     89 	.area XABS    (ABS,XDATA)
                                     90 ;--------------------------------------------------------
                                     91 ; external initialized ram data
                                     92 ;--------------------------------------------------------
                                     93 	.area XISEG   (XDATA)
                                     94 	.area HOME    (CODE)
                                     95 	.area GSINIT0 (CODE)
                                     96 	.area GSINIT1 (CODE)
                                     97 	.area GSINIT2 (CODE)
                                     98 	.area GSINIT3 (CODE)
                                     99 	.area GSINIT4 (CODE)
                                    100 	.area GSINIT5 (CODE)
                                    101 	.area GSINIT  (CODE)
                                    102 	.area GSFINAL (CODE)
                                    103 	.area CSEG    (CODE)
                                    104 ;--------------------------------------------------------
                                    105 ; global & static initialisations
                                    106 ;--------------------------------------------------------
                                    107 	.area HOME    (CODE)
                                    108 	.area GSINIT  (CODE)
                                    109 	.area GSFINAL (CODE)
                                    110 	.area GSINIT  (CODE)
                                    111 ;--------------------------------------------------------
                                    112 ; Home
                                    113 ;--------------------------------------------------------
                                    114 	.area HOME    (CODE)
                                    115 	.area HOME    (CODE)
                                    116 ;--------------------------------------------------------
                                    117 ; code
                                    118 ;--------------------------------------------------------
                                    119 	.area CSEG    (CODE)
                                    120 ;------------------------------------------------------------
                                    121 ;Allocation info for local variables in function 'IntToString'
                                    122 ;------------------------------------------------------------
                                    123 ;sloc0                     Allocated with name '_IntToString_sloc0_1_0'
                                    124 ;v                         Allocated with name '_IntToString_PARM_2'
                                    125 ;p                         Allocated with name '_IntToString_p_65536_1'
                                    126 ;digit                     Allocated with name '_IntToString_digit_65536_2'
                                    127 ;divider                   Allocated with name '_IntToString_divider_65536_2'
                                    128 ;------------------------------------------------------------
                                    129 ;	../Common/StringUtils.c:2: void IntToString(unsigned char *p, unsigned int v)
                                    130 ;	-----------------------------------------
                                    131 ;	 function IntToString
                                    132 ;	-----------------------------------------
      002E18                        133 _IntToString:
                           000007   134 	ar7 = 0x07
                           000006   135 	ar6 = 0x06
                           000005   136 	ar5 = 0x05
                           000004   137 	ar4 = 0x04
                           000003   138 	ar3 = 0x03
                           000002   139 	ar2 = 0x02
                           000001   140 	ar1 = 0x01
                           000000   141 	ar0 = 0x00
      002E18 AF F0            [24]  142 	mov	r7,b
      002E1A AE 83            [24]  143 	mov	r6,dph
      002E1C E5 82            [12]  144 	mov	a,dpl
      002E1E 90 02 7C         [24]  145 	mov	dptr,#_IntToString_p_65536_1
      002E21 F0               [24]  146 	movx	@dptr,a
      002E22 EE               [12]  147 	mov	a,r6
      002E23 A3               [24]  148 	inc	dptr
      002E24 F0               [24]  149 	movx	@dptr,a
      002E25 EF               [12]  150 	mov	a,r7
      002E26 A3               [24]  151 	inc	dptr
      002E27 F0               [24]  152 	movx	@dptr,a
                                    153 ;	../Common/StringUtils.c:6: divider = 10000;
      002E28 90 02 7F         [24]  154 	mov	dptr,#_IntToString_divider_65536_2
      002E2B 74 10            [12]  155 	mov	a,#0x10
      002E2D F0               [24]  156 	movx	@dptr,a
      002E2E 74 27            [12]  157 	mov	a,#0x27
      002E30 A3               [24]  158 	inc	dptr
      002E31 F0               [24]  159 	movx	@dptr,a
                                    160 ;	../Common/StringUtils.c:7: do
      002E32 90 02 7C         [24]  161 	mov	dptr,#_IntToString_p_65536_1
      002E35 E0               [24]  162 	movx	a,@dptr
      002E36 FD               [12]  163 	mov	r5,a
      002E37 A3               [24]  164 	inc	dptr
      002E38 E0               [24]  165 	movx	a,@dptr
      002E39 FE               [12]  166 	mov	r6,a
      002E3A A3               [24]  167 	inc	dptr
      002E3B E0               [24]  168 	movx	a,@dptr
      002E3C FF               [12]  169 	mov	r7,a
      002E3D                        170 00101$:
                                    171 ;	../Common/StringUtils.c:9: digit = v / divider;
      002E3D 90 02 7F         [24]  172 	mov	dptr,#_IntToString_divider_65536_2
      002E40 E0               [24]  173 	movx	a,@dptr
      002E41 FB               [12]  174 	mov	r3,a
      002E42 A3               [24]  175 	inc	dptr
      002E43 E0               [24]  176 	movx	a,@dptr
      002E44 FC               [12]  177 	mov	r4,a
      002E45 90 02 7A         [24]  178 	mov	dptr,#_IntToString_PARM_2
      002E48 E0               [24]  179 	movx	a,@dptr
      002E49 F5 2A            [12]  180 	mov	_IntToString_sloc0_1_0,a
      002E4B A3               [24]  181 	inc	dptr
      002E4C E0               [24]  182 	movx	a,@dptr
      002E4D F5 2B            [12]  183 	mov	(_IntToString_sloc0_1_0 + 1),a
      002E4F 90 02 B5         [24]  184 	mov	dptr,#__divuint_PARM_2
      002E52 EB               [12]  185 	mov	a,r3
      002E53 F0               [24]  186 	movx	@dptr,a
      002E54 EC               [12]  187 	mov	a,r4
      002E55 A3               [24]  188 	inc	dptr
      002E56 F0               [24]  189 	movx	@dptr,a
                                    190 ;	../Common/StringUtils.c:10: *p = '0' + digit;
      002E57 85 2A 82         [24]  191 	mov	dpl,_IntToString_sloc0_1_0
      002E5A 85 2B 83         [24]  192 	mov	dph,(_IntToString_sloc0_1_0 + 1)
      002E5D C0 07            [24]  193 	push	ar7
      002E5F C0 06            [24]  194 	push	ar6
      002E61 C0 05            [24]  195 	push	ar5
      002E63 C0 04            [24]  196 	push	ar4
      002E65 C0 03            [24]  197 	push	ar3
      002E67 12 3B 9A         [24]  198 	lcall	__divuint
      002E6A A8 82            [24]  199 	mov	r0,dpl
      002E6C AA 83            [24]  200 	mov	r2,dph
      002E6E D0 03            [24]  201 	pop	ar3
      002E70 D0 04            [24]  202 	pop	ar4
      002E72 D0 05            [24]  203 	pop	ar5
      002E74 D0 06            [24]  204 	pop	ar6
      002E76 D0 07            [24]  205 	pop	ar7
      002E78 88 01            [24]  206 	mov	ar1,r0
      002E7A 74 30            [12]  207 	mov	a,#0x30
      002E7C 29               [12]  208 	add	a,r1
      002E7D 8D 82            [24]  209 	mov	dpl,r5
      002E7F 8E 83            [24]  210 	mov	dph,r6
      002E81 8F F0            [24]  211 	mov	b,r7
      002E83 12 3C 27         [24]  212 	lcall	__gptrput
      002E86 A3               [24]  213 	inc	dptr
      002E87 AD 82            [24]  214 	mov	r5,dpl
      002E89 AE 83            [24]  215 	mov	r6,dph
                                    216 ;	../Common/StringUtils.c:11: v -= digit * divider;
      002E8B 90 02 BD         [24]  217 	mov	dptr,#__mulint_PARM_2
      002E8E EB               [12]  218 	mov	a,r3
      002E8F F0               [24]  219 	movx	@dptr,a
      002E90 EC               [12]  220 	mov	a,r4
      002E91 A3               [24]  221 	inc	dptr
      002E92 F0               [24]  222 	movx	@dptr,a
      002E93 88 82            [24]  223 	mov	dpl,r0
      002E95 8A 83            [24]  224 	mov	dph,r2
      002E97 C0 07            [24]  225 	push	ar7
      002E99 C0 06            [24]  226 	push	ar6
      002E9B C0 05            [24]  227 	push	ar5
      002E9D C0 04            [24]  228 	push	ar4
      002E9F C0 03            [24]  229 	push	ar3
      002EA1 12 3C 42         [24]  230 	lcall	__mulint
      002EA4 A9 82            [24]  231 	mov	r1,dpl
      002EA6 AA 83            [24]  232 	mov	r2,dph
      002EA8 D0 03            [24]  233 	pop	ar3
      002EAA D0 04            [24]  234 	pop	ar4
      002EAC 90 02 7A         [24]  235 	mov	dptr,#_IntToString_PARM_2
      002EAF E5 2A            [12]  236 	mov	a,_IntToString_sloc0_1_0
      002EB1 C3               [12]  237 	clr	c
      002EB2 99               [12]  238 	subb	a,r1
      002EB3 F0               [24]  239 	movx	@dptr,a
      002EB4 E5 2B            [12]  240 	mov	a,(_IntToString_sloc0_1_0 + 1)
      002EB6 9A               [12]  241 	subb	a,r2
      002EB7 A3               [24]  242 	inc	dptr
      002EB8 F0               [24]  243 	movx	@dptr,a
                                    244 ;	../Common/StringUtils.c:12: divider = divider / 10;
      002EB9 90 02 B5         [24]  245 	mov	dptr,#__divuint_PARM_2
      002EBC 74 0A            [12]  246 	mov	a,#0x0a
      002EBE F0               [24]  247 	movx	@dptr,a
      002EBF E4               [12]  248 	clr	a
      002EC0 A3               [24]  249 	inc	dptr
      002EC1 F0               [24]  250 	movx	@dptr,a
      002EC2 8B 82            [24]  251 	mov	dpl,r3
      002EC4 8C 83            [24]  252 	mov	dph,r4
      002EC6 12 3B 9A         [24]  253 	lcall	__divuint
      002EC9 E5 82            [12]  254 	mov	a,dpl
      002ECB 85 83 F0         [24]  255 	mov	b,dph
      002ECE D0 05            [24]  256 	pop	ar5
      002ED0 D0 06            [24]  257 	pop	ar6
      002ED2 D0 07            [24]  258 	pop	ar7
      002ED4 90 02 7F         [24]  259 	mov	dptr,#_IntToString_divider_65536_2
      002ED7 F0               [24]  260 	movx	@dptr,a
      002ED8 E5 F0            [12]  261 	mov	a,b
      002EDA A3               [24]  262 	inc	dptr
      002EDB F0               [24]  263 	movx	@dptr,a
                                    264 ;	../Common/StringUtils.c:13: ++p;
      002EDC 90 02 7C         [24]  265 	mov	dptr,#_IntToString_p_65536_1
      002EDF ED               [12]  266 	mov	a,r5
      002EE0 F0               [24]  267 	movx	@dptr,a
      002EE1 EE               [12]  268 	mov	a,r6
      002EE2 A3               [24]  269 	inc	dptr
      002EE3 F0               [24]  270 	movx	@dptr,a
      002EE4 EF               [12]  271 	mov	a,r7
      002EE5 A3               [24]  272 	inc	dptr
      002EE6 F0               [24]  273 	movx	@dptr,a
                                    274 ;	../Common/StringUtils.c:15: while (divider > 0);
      002EE7 90 02 7F         [24]  275 	mov	dptr,#_IntToString_divider_65536_2
      002EEA E0               [24]  276 	movx	a,@dptr
      002EEB F5 F0            [12]  277 	mov	b,a
      002EED A3               [24]  278 	inc	dptr
      002EEE E0               [24]  279 	movx	a,@dptr
      002EEF 45 F0            [12]  280 	orl	a,b
      002EF1 60 03            [24]  281 	jz	00115$
      002EF3 02 2E 3D         [24]  282 	ljmp	00101$
      002EF6                        283 00115$:
                                    284 ;	../Common/StringUtils.c:16: *p = 0;
      002EF6 90 02 7C         [24]  285 	mov	dptr,#_IntToString_p_65536_1
      002EF9 ED               [12]  286 	mov	a,r5
      002EFA F0               [24]  287 	movx	@dptr,a
      002EFB EE               [12]  288 	mov	a,r6
      002EFC A3               [24]  289 	inc	dptr
      002EFD F0               [24]  290 	movx	@dptr,a
      002EFE EF               [12]  291 	mov	a,r7
      002EFF A3               [24]  292 	inc	dptr
      002F00 F0               [24]  293 	movx	@dptr,a
      002F01 8D 82            [24]  294 	mov	dpl,r5
      002F03 8E 83            [24]  295 	mov	dph,r6
      002F05 8F F0            [24]  296 	mov	b,r7
      002F07 E4               [12]  297 	clr	a
                                    298 ;	../Common/StringUtils.c:17: }
      002F08 02 3C 27         [24]  299 	ljmp	__gptrput
                                    300 ;------------------------------------------------------------
                                    301 ;Allocation info for local variables in function 'UnsignedCharToString'
                                    302 ;------------------------------------------------------------
                                    303 ;v                         Allocated with name '_UnsignedCharToString_PARM_2'
                                    304 ;p                         Allocated with name '_UnsignedCharToString_p_65536_4'
                                    305 ;digit                     Allocated with name '_UnsignedCharToString_digit_65536_5'
                                    306 ;divider                   Allocated with name '_UnsignedCharToString_divider_65536_5'
                                    307 ;------------------------------------------------------------
                                    308 ;	../Common/StringUtils.c:21: void UnsignedCharToString(unsigned char *p, unsigned char v)
                                    309 ;	-----------------------------------------
                                    310 ;	 function UnsignedCharToString
                                    311 ;	-----------------------------------------
      002F0B                        312 _UnsignedCharToString:
      002F0B AF F0            [24]  313 	mov	r7,b
      002F0D AE 83            [24]  314 	mov	r6,dph
      002F0F E5 82            [12]  315 	mov	a,dpl
      002F11 90 02 82         [24]  316 	mov	dptr,#_UnsignedCharToString_p_65536_4
      002F14 F0               [24]  317 	movx	@dptr,a
      002F15 EE               [12]  318 	mov	a,r6
      002F16 A3               [24]  319 	inc	dptr
      002F17 F0               [24]  320 	movx	@dptr,a
      002F18 EF               [12]  321 	mov	a,r7
      002F19 A3               [24]  322 	inc	dptr
      002F1A F0               [24]  323 	movx	@dptr,a
                                    324 ;	../Common/StringUtils.c:25: divider = 0x80;
      002F1B 90 02 87         [24]  325 	mov	dptr,#_UnsignedCharToString_divider_65536_5
      002F1E 74 80            [12]  326 	mov	a,#0x80
      002F20 F0               [24]  327 	movx	@dptr,a
      002F21 E4               [12]  328 	clr	a
      002F22 A3               [24]  329 	inc	dptr
      002F23 F0               [24]  330 	movx	@dptr,a
                                    331 ;	../Common/StringUtils.c:26: do
      002F24 90 02 82         [24]  332 	mov	dptr,#_UnsignedCharToString_p_65536_4
      002F27 E0               [24]  333 	movx	a,@dptr
      002F28 FD               [12]  334 	mov	r5,a
      002F29 A3               [24]  335 	inc	dptr
      002F2A E0               [24]  336 	movx	a,@dptr
      002F2B FE               [12]  337 	mov	r6,a
      002F2C A3               [24]  338 	inc	dptr
      002F2D E0               [24]  339 	movx	a,@dptr
      002F2E FF               [12]  340 	mov	r7,a
      002F2F                        341 00101$:
                                    342 ;	../Common/StringUtils.c:28: digit = v / divider;
      002F2F 90 02 87         [24]  343 	mov	dptr,#_UnsignedCharToString_divider_65536_5
      002F32 E0               [24]  344 	movx	a,@dptr
      002F33 FB               [12]  345 	mov	r3,a
      002F34 A3               [24]  346 	inc	dptr
      002F35 E0               [24]  347 	movx	a,@dptr
      002F36 FC               [12]  348 	mov	r4,a
      002F37 90 02 81         [24]  349 	mov	dptr,#_UnsignedCharToString_PARM_2
      002F3A E0               [24]  350 	movx	a,@dptr
      002F3B F9               [12]  351 	mov	r1,a
      002F3C 7A 00            [12]  352 	mov	r2,#0x00
      002F3E 90 02 B5         [24]  353 	mov	dptr,#__divuint_PARM_2
      002F41 EB               [12]  354 	mov	a,r3
      002F42 F0               [24]  355 	movx	@dptr,a
      002F43 EC               [12]  356 	mov	a,r4
      002F44 A3               [24]  357 	inc	dptr
      002F45 F0               [24]  358 	movx	@dptr,a
      002F46 89 82            [24]  359 	mov	dpl,r1
      002F48 8A 83            [24]  360 	mov	dph,r2
      002F4A C0 07            [24]  361 	push	ar7
      002F4C C0 06            [24]  362 	push	ar6
      002F4E C0 05            [24]  363 	push	ar5
      002F50 12 3B 9A         [24]  364 	lcall	__divuint
      002F53 AB 82            [24]  365 	mov	r3,dpl
      002F55 AC 83            [24]  366 	mov	r4,dph
      002F57 D0 05            [24]  367 	pop	ar5
      002F59 D0 06            [24]  368 	pop	ar6
      002F5B D0 07            [24]  369 	pop	ar7
      002F5D 90 02 85         [24]  370 	mov	dptr,#_UnsignedCharToString_digit_65536_5
      002F60 EB               [12]  371 	mov	a,r3
      002F61 F0               [24]  372 	movx	@dptr,a
      002F62 EC               [12]  373 	mov	a,r4
      002F63 A3               [24]  374 	inc	dptr
      002F64 F0               [24]  375 	movx	@dptr,a
                                    376 ;	../Common/StringUtils.c:29: *p = digit ? '1' : '0';
      002F65 8D 00            [24]  377 	mov	ar0,r5
      002F67 8E 01            [24]  378 	mov	ar1,r6
      002F69 8F 02            [24]  379 	mov	ar2,r7
      002F6B EB               [12]  380 	mov	a,r3
      002F6C 4C               [12]  381 	orl	a,r4
      002F6D 60 06            [24]  382 	jz	00106$
      002F6F 7B 31            [12]  383 	mov	r3,#0x31
      002F71 7C 00            [12]  384 	mov	r4,#0x00
      002F73 80 04            [24]  385 	sjmp	00107$
      002F75                        386 00106$:
      002F75 7B 30            [12]  387 	mov	r3,#0x30
      002F77 7C 00            [12]  388 	mov	r4,#0x00
      002F79                        389 00107$:
      002F79 88 82            [24]  390 	mov	dpl,r0
      002F7B 89 83            [24]  391 	mov	dph,r1
      002F7D 8A F0            [24]  392 	mov	b,r2
      002F7F EB               [12]  393 	mov	a,r3
      002F80 12 3C 27         [24]  394 	lcall	__gptrput
                                    395 ;	../Common/StringUtils.c:30: v -= digit * divider;
      002F83 90 02 85         [24]  396 	mov	dptr,#_UnsignedCharToString_digit_65536_5
      002F86 E0               [24]  397 	movx	a,@dptr
      002F87 FB               [12]  398 	mov	r3,a
      002F88 A3               [24]  399 	inc	dptr
      002F89 E0               [24]  400 	movx	a,@dptr
      002F8A 90 02 87         [24]  401 	mov	dptr,#_UnsignedCharToString_divider_65536_5
      002F8D E0               [24]  402 	movx	a,@dptr
      002F8E FA               [12]  403 	mov	r2,a
      002F8F A3               [24]  404 	inc	dptr
      002F90 E0               [24]  405 	movx	a,@dptr
      002F91 FC               [12]  406 	mov	r4,a
      002F92 8A 01            [24]  407 	mov	ar1,r2
      002F94 8B F0            [24]  408 	mov	b,r3
      002F96 E9               [12]  409 	mov	a,r1
      002F97 A4               [48]  410 	mul	ab
      002F98 FB               [12]  411 	mov	r3,a
      002F99 90 02 81         [24]  412 	mov	dptr,#_UnsignedCharToString_PARM_2
      002F9C E0               [24]  413 	movx	a,@dptr
      002F9D C3               [12]  414 	clr	c
      002F9E 9B               [12]  415 	subb	a,r3
      002F9F F0               [24]  416 	movx	@dptr,a
                                    417 ;	../Common/StringUtils.c:31: divider = divider / 2;
      002FA0 EC               [12]  418 	mov	a,r4
      002FA1 C3               [12]  419 	clr	c
      002FA2 13               [12]  420 	rrc	a
      002FA3 CA               [12]  421 	xch	a,r2
      002FA4 13               [12]  422 	rrc	a
      002FA5 CA               [12]  423 	xch	a,r2
      002FA6 FC               [12]  424 	mov	r4,a
      002FA7 90 02 87         [24]  425 	mov	dptr,#_UnsignedCharToString_divider_65536_5
      002FAA EA               [12]  426 	mov	a,r2
      002FAB F0               [24]  427 	movx	@dptr,a
      002FAC EC               [12]  428 	mov	a,r4
      002FAD A3               [24]  429 	inc	dptr
      002FAE F0               [24]  430 	movx	@dptr,a
                                    431 ;	../Common/StringUtils.c:32: ++p;
      002FAF 0D               [12]  432 	inc	r5
      002FB0 BD 00 01         [24]  433 	cjne	r5,#0x00,00122$
      002FB3 0E               [12]  434 	inc	r6
      002FB4                        435 00122$:
      002FB4 90 02 82         [24]  436 	mov	dptr,#_UnsignedCharToString_p_65536_4
      002FB7 ED               [12]  437 	mov	a,r5
      002FB8 F0               [24]  438 	movx	@dptr,a
      002FB9 EE               [12]  439 	mov	a,r6
      002FBA A3               [24]  440 	inc	dptr
      002FBB F0               [24]  441 	movx	@dptr,a
      002FBC EF               [12]  442 	mov	a,r7
      002FBD A3               [24]  443 	inc	dptr
      002FBE F0               [24]  444 	movx	@dptr,a
                                    445 ;	../Common/StringUtils.c:34: while (divider > 0);
      002FBF 90 02 87         [24]  446 	mov	dptr,#_UnsignedCharToString_divider_65536_5
      002FC2 E0               [24]  447 	movx	a,@dptr
      002FC3 F5 F0            [12]  448 	mov	b,a
      002FC5 A3               [24]  449 	inc	dptr
      002FC6 E0               [24]  450 	movx	a,@dptr
      002FC7 45 F0            [12]  451 	orl	a,b
      002FC9 60 03            [24]  452 	jz	00123$
      002FCB 02 2F 2F         [24]  453 	ljmp	00101$
      002FCE                        454 00123$:
                                    455 ;	../Common/StringUtils.c:35: *p = 0;
      002FCE 90 02 82         [24]  456 	mov	dptr,#_UnsignedCharToString_p_65536_4
      002FD1 ED               [12]  457 	mov	a,r5
      002FD2 F0               [24]  458 	movx	@dptr,a
      002FD3 EE               [12]  459 	mov	a,r6
      002FD4 A3               [24]  460 	inc	dptr
      002FD5 F0               [24]  461 	movx	@dptr,a
      002FD6 EF               [12]  462 	mov	a,r7
      002FD7 A3               [24]  463 	inc	dptr
      002FD8 F0               [24]  464 	movx	@dptr,a
      002FD9 8D 82            [24]  465 	mov	dpl,r5
      002FDB 8E 83            [24]  466 	mov	dph,r6
      002FDD 8F F0            [24]  467 	mov	b,r7
      002FDF E4               [12]  468 	clr	a
                                    469 ;	../Common/StringUtils.c:36: }
      002FE0 02 3C 27         [24]  470 	ljmp	__gptrput
                                    471 ;------------------------------------------------------------
                                    472 ;Allocation info for local variables in function 'strcat'
                                    473 ;------------------------------------------------------------
                                    474 ;s                         Allocated with name '_strcat_PARM_2'
                                    475 ;p                         Allocated with name '_strcat_p_65536_7'
                                    476 ;------------------------------------------------------------
                                    477 ;	../Common/StringUtils.c:39: void strcat(char *p, char *s)
                                    478 ;	-----------------------------------------
                                    479 ;	 function strcat
                                    480 ;	-----------------------------------------
      002FE3                        481 _strcat:
      002FE3 AF F0            [24]  482 	mov	r7,b
      002FE5 AE 83            [24]  483 	mov	r6,dph
      002FE7 E5 82            [12]  484 	mov	a,dpl
      002FE9 90 02 8C         [24]  485 	mov	dptr,#_strcat_p_65536_7
      002FEC F0               [24]  486 	movx	@dptr,a
      002FED EE               [12]  487 	mov	a,r6
      002FEE A3               [24]  488 	inc	dptr
      002FEF F0               [24]  489 	movx	@dptr,a
      002FF0 EF               [12]  490 	mov	a,r7
      002FF1 A3               [24]  491 	inc	dptr
      002FF2 F0               [24]  492 	movx	@dptr,a
                                    493 ;	../Common/StringUtils.c:41: while (*p)
      002FF3 90 02 8C         [24]  494 	mov	dptr,#_strcat_p_65536_7
      002FF6 E0               [24]  495 	movx	a,@dptr
      002FF7 FD               [12]  496 	mov	r5,a
      002FF8 A3               [24]  497 	inc	dptr
      002FF9 E0               [24]  498 	movx	a,@dptr
      002FFA FE               [12]  499 	mov	r6,a
      002FFB A3               [24]  500 	inc	dptr
      002FFC E0               [24]  501 	movx	a,@dptr
      002FFD FF               [12]  502 	mov	r7,a
      002FFE                        503 00101$:
      002FFE 8D 82            [24]  504 	mov	dpl,r5
      003000 8E 83            [24]  505 	mov	dph,r6
      003002 8F F0            [24]  506 	mov	b,r7
      003004 12 3D E8         [24]  507 	lcall	__gptrget
      003007 60 12            [24]  508 	jz	00113$
                                    509 ;	../Common/StringUtils.c:43: ++p;
      003009 0D               [12]  510 	inc	r5
      00300A BD 00 01         [24]  511 	cjne	r5,#0x00,00128$
      00300D 0E               [12]  512 	inc	r6
      00300E                        513 00128$:
      00300E 90 02 8C         [24]  514 	mov	dptr,#_strcat_p_65536_7
      003011 ED               [12]  515 	mov	a,r5
      003012 F0               [24]  516 	movx	@dptr,a
      003013 EE               [12]  517 	mov	a,r6
      003014 A3               [24]  518 	inc	dptr
      003015 F0               [24]  519 	movx	@dptr,a
      003016 EF               [12]  520 	mov	a,r7
      003017 A3               [24]  521 	inc	dptr
      003018 F0               [24]  522 	movx	@dptr,a
                                    523 ;	../Common/StringUtils.c:45: while (*s)
      003019 80 E3            [24]  524 	sjmp	00101$
      00301B                        525 00113$:
      00301B 90 02 8C         [24]  526 	mov	dptr,#_strcat_p_65536_7
      00301E ED               [12]  527 	mov	a,r5
      00301F F0               [24]  528 	movx	@dptr,a
      003020 EE               [12]  529 	mov	a,r6
      003021 A3               [24]  530 	inc	dptr
      003022 F0               [24]  531 	movx	@dptr,a
      003023 EF               [12]  532 	mov	a,r7
      003024 A3               [24]  533 	inc	dptr
      003025 F0               [24]  534 	movx	@dptr,a
      003026 90 02 89         [24]  535 	mov	dptr,#_strcat_PARM_2
      003029 E0               [24]  536 	movx	a,@dptr
      00302A FA               [12]  537 	mov	r2,a
      00302B A3               [24]  538 	inc	dptr
      00302C E0               [24]  539 	movx	a,@dptr
      00302D FB               [12]  540 	mov	r3,a
      00302E A3               [24]  541 	inc	dptr
      00302F E0               [24]  542 	movx	a,@dptr
      003030 FC               [12]  543 	mov	r4,a
      003031                        544 00104$:
      003031 8A 82            [24]  545 	mov	dpl,r2
      003033 8B 83            [24]  546 	mov	dph,r3
      003035 8C F0            [24]  547 	mov	b,r4
      003037 12 3D E8         [24]  548 	lcall	__gptrget
      00303A F9               [12]  549 	mov	r1,a
      00303B 60 21            [24]  550 	jz	00114$
                                    551 ;	../Common/StringUtils.c:47: *p = *s;
      00303D 8D 82            [24]  552 	mov	dpl,r5
      00303F 8E 83            [24]  553 	mov	dph,r6
      003041 8F F0            [24]  554 	mov	b,r7
      003043 E9               [12]  555 	mov	a,r1
      003044 12 3C 27         [24]  556 	lcall	__gptrput
      003047 A3               [24]  557 	inc	dptr
      003048 AD 82            [24]  558 	mov	r5,dpl
      00304A AE 83            [24]  559 	mov	r6,dph
                                    560 ;	../Common/StringUtils.c:48: ++p;
      00304C 90 02 8C         [24]  561 	mov	dptr,#_strcat_p_65536_7
      00304F ED               [12]  562 	mov	a,r5
      003050 F0               [24]  563 	movx	@dptr,a
      003051 EE               [12]  564 	mov	a,r6
      003052 A3               [24]  565 	inc	dptr
      003053 F0               [24]  566 	movx	@dptr,a
      003054 EF               [12]  567 	mov	a,r7
      003055 A3               [24]  568 	inc	dptr
      003056 F0               [24]  569 	movx	@dptr,a
                                    570 ;	../Common/StringUtils.c:49: ++s;
      003057 0A               [12]  571 	inc	r2
      003058 BA 00 D6         [24]  572 	cjne	r2,#0x00,00104$
      00305B 0B               [12]  573 	inc	r3
      00305C 80 D3            [24]  574 	sjmp	00104$
      00305E                        575 00114$:
      00305E 90 02 8C         [24]  576 	mov	dptr,#_strcat_p_65536_7
      003061 ED               [12]  577 	mov	a,r5
      003062 F0               [24]  578 	movx	@dptr,a
      003063 EE               [12]  579 	mov	a,r6
      003064 A3               [24]  580 	inc	dptr
      003065 F0               [24]  581 	movx	@dptr,a
      003066 EF               [12]  582 	mov	a,r7
      003067 A3               [24]  583 	inc	dptr
      003068 F0               [24]  584 	movx	@dptr,a
                                    585 ;	../Common/StringUtils.c:51: *p = 0;
      003069 8D 82            [24]  586 	mov	dpl,r5
      00306B 8E 83            [24]  587 	mov	dph,r6
      00306D 8F F0            [24]  588 	mov	b,r7
      00306F E4               [12]  589 	clr	a
                                    590 ;	../Common/StringUtils.c:52: }
      003070 02 3C 27         [24]  591 	ljmp	__gptrput
                                    592 ;------------------------------------------------------------
                                    593 ;Allocation info for local variables in function 'strcpy'
                                    594 ;------------------------------------------------------------
                                    595 ;s                         Allocated with name '_strcpy_PARM_2'
                                    596 ;p                         Allocated with name '_strcpy_p_65536_11'
                                    597 ;------------------------------------------------------------
                                    598 ;	../Common/StringUtils.c:54: void strcpy(char *p, char *s)
                                    599 ;	-----------------------------------------
                                    600 ;	 function strcpy
                                    601 ;	-----------------------------------------
      003073                        602 _strcpy:
      003073 AF F0            [24]  603 	mov	r7,b
      003075 AE 83            [24]  604 	mov	r6,dph
      003077 E5 82            [12]  605 	mov	a,dpl
      003079 90 02 92         [24]  606 	mov	dptr,#_strcpy_p_65536_11
      00307C F0               [24]  607 	movx	@dptr,a
      00307D EE               [12]  608 	mov	a,r6
      00307E A3               [24]  609 	inc	dptr
      00307F F0               [24]  610 	movx	@dptr,a
      003080 EF               [12]  611 	mov	a,r7
      003081 A3               [24]  612 	inc	dptr
      003082 F0               [24]  613 	movx	@dptr,a
                                    614 ;	../Common/StringUtils.c:56: *p = 0;
      003083 90 02 92         [24]  615 	mov	dptr,#_strcpy_p_65536_11
      003086 E0               [24]  616 	movx	a,@dptr
      003087 FD               [12]  617 	mov	r5,a
      003088 A3               [24]  618 	inc	dptr
      003089 E0               [24]  619 	movx	a,@dptr
      00308A FE               [12]  620 	mov	r6,a
      00308B A3               [24]  621 	inc	dptr
      00308C E0               [24]  622 	movx	a,@dptr
      00308D FF               [12]  623 	mov	r7,a
      00308E 8D 82            [24]  624 	mov	dpl,r5
      003090 8E 83            [24]  625 	mov	dph,r6
      003092 8F F0            [24]  626 	mov	b,r7
      003094 E4               [12]  627 	clr	a
      003095 12 3C 27         [24]  628 	lcall	__gptrput
                                    629 ;	../Common/StringUtils.c:57: while (*s)
      003098 90 02 8F         [24]  630 	mov	dptr,#_strcpy_PARM_2
      00309B E0               [24]  631 	movx	a,@dptr
      00309C FA               [12]  632 	mov	r2,a
      00309D A3               [24]  633 	inc	dptr
      00309E E0               [24]  634 	movx	a,@dptr
      00309F FB               [12]  635 	mov	r3,a
      0030A0 A3               [24]  636 	inc	dptr
      0030A1 E0               [24]  637 	movx	a,@dptr
      0030A2 FC               [12]  638 	mov	r4,a
      0030A3                        639 00101$:
      0030A3 8A 82            [24]  640 	mov	dpl,r2
      0030A5 8B 83            [24]  641 	mov	dph,r3
      0030A7 8C F0            [24]  642 	mov	b,r4
      0030A9 12 3D E8         [24]  643 	lcall	__gptrget
      0030AC F9               [12]  644 	mov	r1,a
      0030AD 60 21            [24]  645 	jz	00108$
                                    646 ;	../Common/StringUtils.c:59: *p = *s;
      0030AF 8D 82            [24]  647 	mov	dpl,r5
      0030B1 8E 83            [24]  648 	mov	dph,r6
      0030B3 8F F0            [24]  649 	mov	b,r7
      0030B5 E9               [12]  650 	mov	a,r1
      0030B6 12 3C 27         [24]  651 	lcall	__gptrput
      0030B9 A3               [24]  652 	inc	dptr
      0030BA AD 82            [24]  653 	mov	r5,dpl
      0030BC AE 83            [24]  654 	mov	r6,dph
                                    655 ;	../Common/StringUtils.c:60: ++p;
      0030BE 90 02 92         [24]  656 	mov	dptr,#_strcpy_p_65536_11
      0030C1 ED               [12]  657 	mov	a,r5
      0030C2 F0               [24]  658 	movx	@dptr,a
      0030C3 EE               [12]  659 	mov	a,r6
      0030C4 A3               [24]  660 	inc	dptr
      0030C5 F0               [24]  661 	movx	@dptr,a
      0030C6 EF               [12]  662 	mov	a,r7
      0030C7 A3               [24]  663 	inc	dptr
      0030C8 F0               [24]  664 	movx	@dptr,a
                                    665 ;	../Common/StringUtils.c:61: ++s;
      0030C9 0A               [12]  666 	inc	r2
      0030CA BA 00 D6         [24]  667 	cjne	r2,#0x00,00101$
      0030CD 0B               [12]  668 	inc	r3
      0030CE 80 D3            [24]  669 	sjmp	00101$
      0030D0                        670 00108$:
      0030D0 90 02 92         [24]  671 	mov	dptr,#_strcpy_p_65536_11
      0030D3 ED               [12]  672 	mov	a,r5
      0030D4 F0               [24]  673 	movx	@dptr,a
      0030D5 EE               [12]  674 	mov	a,r6
      0030D6 A3               [24]  675 	inc	dptr
      0030D7 F0               [24]  676 	movx	@dptr,a
      0030D8 EF               [12]  677 	mov	a,r7
      0030D9 A3               [24]  678 	inc	dptr
      0030DA F0               [24]  679 	movx	@dptr,a
                                    680 ;	../Common/StringUtils.c:63: *p = 0;
      0030DB 8D 82            [24]  681 	mov	dpl,r5
      0030DD 8E 83            [24]  682 	mov	dph,r6
      0030DF 8F F0            [24]  683 	mov	b,r7
      0030E1 E4               [12]  684 	clr	a
                                    685 ;	../Common/StringUtils.c:64: }
      0030E2 02 3C 27         [24]  686 	ljmp	__gptrput
                                    687 	.area CSEG    (CODE)
                                    688 	.area CONST   (CODE)
                                    689 	.area XINIT   (CODE)
                                    690 	.area CABS    (ABS,CODE)
