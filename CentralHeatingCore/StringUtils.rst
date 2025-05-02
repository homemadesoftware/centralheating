                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module StringUtils
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-large
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
      00000A                         38 _IntToString_sloc0_1_0:
      00000A                         39 	.ds 2
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
                                     61 ; uninitialized external ram data
                                     62 ;--------------------------------------------------------
                                     63 	.area XSEG    (XDATA)
      00027A                         64 _IntToString_PARM_2:
      00027A                         65 	.ds 2
      00027C                         66 _IntToString_p_10000_1:
      00027C                         67 	.ds 3
      00027F                         68 _IntToString_divider_10000_2:
      00027F                         69 	.ds 2
      000281                         70 _UnsignedCharToString_PARM_2:
      000281                         71 	.ds 1
      000282                         72 _UnsignedCharToString_p_10000_4:
      000282                         73 	.ds 3
      000285                         74 _UnsignedCharToString_digit_10000_5:
      000285                         75 	.ds 2
      000287                         76 _UnsignedCharToString_divider_10000_5:
      000287                         77 	.ds 2
      000289                         78 _strcat_PARM_2:
      000289                         79 	.ds 3
      00028C                         80 _strcat_p_10000_7:
      00028C                         81 	.ds 3
      00028F                         82 _strcpy_PARM_2:
      00028F                         83 	.ds 3
      000292                         84 _strcpy_p_10000_11:
      000292                         85 	.ds 3
                                     86 ;--------------------------------------------------------
                                     87 ; absolute external ram data
                                     88 ;--------------------------------------------------------
                                     89 	.area XABS    (ABS,XDATA)
                                     90 ;--------------------------------------------------------
                                     91 ; initialized external ram data
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
                                    123 ;sloc0         Allocated with name '_IntToString_sloc0_1_0'
                                    124 ;v             Allocated with name '_IntToString_PARM_2'
                                    125 ;p             Allocated with name '_IntToString_p_10000_1'
                                    126 ;digit         Allocated with name '_IntToString_digit_10000_2'
                                    127 ;divider       Allocated with name '_IntToString_divider_10000_2'
                                    128 ;------------------------------------------------------------
                                    129 ;	../Common/StringUtils.c:2: void IntToString(unsigned char *p, unsigned int v)
                                    130 ;	-----------------------------------------
                                    131 ;	 function IntToString
                                    132 ;	-----------------------------------------
      002CCC                        133 _IntToString:
                           000007   134 	ar7 = 0x07
                           000006   135 	ar6 = 0x06
                           000005   136 	ar5 = 0x05
                           000004   137 	ar4 = 0x04
                           000003   138 	ar3 = 0x03
                           000002   139 	ar2 = 0x02
                           000001   140 	ar1 = 0x01
                           000000   141 	ar0 = 0x00
      002CCC AF F0            [24]  142 	mov	r7,b
      002CCE AE 83            [24]  143 	mov	r6,dph
      002CD0 E5 82            [12]  144 	mov	a,dpl
      002CD2 90 02 7C         [24]  145 	mov	dptr,#_IntToString_p_10000_1
      002CD5 F0               [24]  146 	movx	@dptr,a
      002CD6 EE               [12]  147 	mov	a,r6
      002CD7 A3               [24]  148 	inc	dptr
      002CD8 F0               [24]  149 	movx	@dptr,a
      002CD9 EF               [12]  150 	mov	a,r7
      002CDA A3               [24]  151 	inc	dptr
      002CDB F0               [24]  152 	movx	@dptr,a
                                    153 ;	../Common/StringUtils.c:6: divider = 10000;
      002CDC 90 02 7F         [24]  154 	mov	dptr,#_IntToString_divider_10000_2
      002CDF 74 10            [12]  155 	mov	a,#0x10
      002CE1 F0               [24]  156 	movx	@dptr,a
      002CE2 74 27            [12]  157 	mov	a,#0x27
      002CE4 A3               [24]  158 	inc	dptr
      002CE5 F0               [24]  159 	movx	@dptr,a
                                    160 ;	../Common/StringUtils.c:7: do
      002CE6 90 02 7C         [24]  161 	mov	dptr,#_IntToString_p_10000_1
      002CE9 E0               [24]  162 	movx	a,@dptr
      002CEA FD               [12]  163 	mov	r5,a
      002CEB A3               [24]  164 	inc	dptr
      002CEC E0               [24]  165 	movx	a,@dptr
      002CED FE               [12]  166 	mov	r6,a
      002CEE A3               [24]  167 	inc	dptr
      002CEF E0               [24]  168 	movx	a,@dptr
      002CF0 FF               [12]  169 	mov	r7,a
      002CF1                        170 00101$:
                                    171 ;	../Common/StringUtils.c:9: digit = v / divider;
      002CF1 90 02 7F         [24]  172 	mov	dptr,#_IntToString_divider_10000_2
      002CF4 E0               [24]  173 	movx	a,@dptr
      002CF5 FB               [12]  174 	mov	r3,a
      002CF6 A3               [24]  175 	inc	dptr
      002CF7 E0               [24]  176 	movx	a,@dptr
      002CF8 FC               [12]  177 	mov	r4,a
      002CF9 90 02 7A         [24]  178 	mov	dptr,#_IntToString_PARM_2
      002CFC E0               [24]  179 	movx	a,@dptr
      002CFD F5 0A            [12]  180 	mov	_IntToString_sloc0_1_0,a
      002CFF A3               [24]  181 	inc	dptr
      002D00 E0               [24]  182 	movx	a,@dptr
      002D01 F5 0B            [12]  183 	mov	(_IntToString_sloc0_1_0 + 1),a
      002D03 90 02 B5         [24]  184 	mov	dptr,#__divuint_PARM_2
      002D06 EB               [12]  185 	mov	a,r3
      002D07 F0               [24]  186 	movx	@dptr,a
      002D08 EC               [12]  187 	mov	a,r4
      002D09 A3               [24]  188 	inc	dptr
      002D0A F0               [24]  189 	movx	@dptr,a
                                    190 ;	../Common/StringUtils.c:10: *p = '0' + digit;
      002D0B 85 0A 82         [24]  191 	mov	dpl, _IntToString_sloc0_1_0
      002D0E 85 0B 83         [24]  192 	mov	dph, (_IntToString_sloc0_1_0 + 1)
      002D11 C0 07            [24]  193 	push	ar7
      002D13 C0 06            [24]  194 	push	ar6
      002D15 C0 05            [24]  195 	push	ar5
      002D17 C0 04            [24]  196 	push	ar4
      002D19 C0 03            [24]  197 	push	ar3
      002D1B 12 38 DA         [24]  198 	lcall	__divuint
      002D1E A8 82            [24]  199 	mov	r0, dpl
      002D20 AA 83            [24]  200 	mov	r2, dph
      002D22 D0 03            [24]  201 	pop	ar3
      002D24 D0 04            [24]  202 	pop	ar4
      002D26 D0 05            [24]  203 	pop	ar5
      002D28 D0 06            [24]  204 	pop	ar6
      002D2A D0 07            [24]  205 	pop	ar7
      002D2C 88 01            [24]  206 	mov	ar1,r0
      002D2E 74 30            [12]  207 	mov	a,#0x30
      002D30 29               [12]  208 	add	a, r1
      002D31 8D 82            [24]  209 	mov	dpl,r5
      002D33 8E 83            [24]  210 	mov	dph,r6
      002D35 8F F0            [24]  211 	mov	b,r7
      002D37 12 39 67         [24]  212 	lcall	__gptrput
      002D3A A3               [24]  213 	inc	dptr
      002D3B AD 82            [24]  214 	mov	r5,dpl
      002D3D AE 83            [24]  215 	mov	r6,dph
                                    216 ;	../Common/StringUtils.c:11: v -= digit * divider;
      002D3F 90 02 BD         [24]  217 	mov	dptr,#__mulint_PARM_2
      002D42 EB               [12]  218 	mov	a,r3
      002D43 F0               [24]  219 	movx	@dptr,a
      002D44 EC               [12]  220 	mov	a,r4
      002D45 A3               [24]  221 	inc	dptr
      002D46 F0               [24]  222 	movx	@dptr,a
      002D47 88 82            [24]  223 	mov	dpl, r0
      002D49 8A 83            [24]  224 	mov	dph, r2
      002D4B C0 07            [24]  225 	push	ar7
      002D4D C0 06            [24]  226 	push	ar6
      002D4F C0 05            [24]  227 	push	ar5
      002D51 C0 04            [24]  228 	push	ar4
      002D53 C0 03            [24]  229 	push	ar3
      002D55 12 39 82         [24]  230 	lcall	__mulint
      002D58 A9 82            [24]  231 	mov	r1, dpl
      002D5A AA 83            [24]  232 	mov	r2, dph
      002D5C D0 03            [24]  233 	pop	ar3
      002D5E D0 04            [24]  234 	pop	ar4
      002D60 90 02 7A         [24]  235 	mov	dptr,#_IntToString_PARM_2
      002D63 E5 0A            [12]  236 	mov	a,_IntToString_sloc0_1_0
      002D65 C3               [12]  237 	clr	c
      002D66 99               [12]  238 	subb	a,r1
      002D67 F0               [24]  239 	movx	@dptr,a
      002D68 E5 0B            [12]  240 	mov	a,(_IntToString_sloc0_1_0 + 1)
      002D6A 9A               [12]  241 	subb	a,r2
      002D6B A3               [24]  242 	inc	dptr
      002D6C F0               [24]  243 	movx	@dptr,a
                                    244 ;	../Common/StringUtils.c:12: divider = divider / 10;
      002D6D 90 02 B5         [24]  245 	mov	dptr,#__divuint_PARM_2
      002D70 74 0A            [12]  246 	mov	a,#0x0a
      002D72 F0               [24]  247 	movx	@dptr,a
      002D73 E4               [12]  248 	clr	a
      002D74 A3               [24]  249 	inc	dptr
      002D75 F0               [24]  250 	movx	@dptr,a
      002D76 8B 82            [24]  251 	mov	dpl, r3
      002D78 8C 83            [24]  252 	mov	dph, r4
      002D7A 12 38 DA         [24]  253 	lcall	__divuint
      002D7D E5 82            [12]  254 	mov	a, dpl
      002D7F 85 83 F0         [24]  255 	mov	b, dph
      002D82 D0 05            [24]  256 	pop	ar5
      002D84 D0 06            [24]  257 	pop	ar6
      002D86 D0 07            [24]  258 	pop	ar7
      002D88 90 02 7F         [24]  259 	mov	dptr,#_IntToString_divider_10000_2
      002D8B F0               [24]  260 	movx	@dptr,a
      002D8C E5 F0            [12]  261 	mov	a,b
      002D8E A3               [24]  262 	inc	dptr
      002D8F F0               [24]  263 	movx	@dptr,a
                                    264 ;	../Common/StringUtils.c:13: ++p;
      002D90 90 02 7C         [24]  265 	mov	dptr,#_IntToString_p_10000_1
      002D93 ED               [12]  266 	mov	a,r5
      002D94 F0               [24]  267 	movx	@dptr,a
      002D95 EE               [12]  268 	mov	a,r6
      002D96 A3               [24]  269 	inc	dptr
      002D97 F0               [24]  270 	movx	@dptr,a
      002D98 EF               [12]  271 	mov	a,r7
      002D99 A3               [24]  272 	inc	dptr
      002D9A F0               [24]  273 	movx	@dptr,a
                                    274 ;	../Common/StringUtils.c:15: while (divider > 0);
      002D9B 90 02 7F         [24]  275 	mov	dptr,#_IntToString_divider_10000_2
      002D9E E0               [24]  276 	movx	a,@dptr
      002D9F F5 F0            [12]  277 	mov	b,a
      002DA1 A3               [24]  278 	inc	dptr
      002DA2 E0               [24]  279 	movx	a,@dptr
      002DA3 45 F0            [12]  280 	orl	a,b
      002DA5 60 03            [24]  281 	jz	00119$
      002DA7 02 2C F1         [24]  282 	ljmp	00101$
      002DAA                        283 00119$:
                                    284 ;	../Common/StringUtils.c:16: *p = 0;
      002DAA 90 02 7C         [24]  285 	mov	dptr,#_IntToString_p_10000_1
      002DAD ED               [12]  286 	mov	a,r5
      002DAE F0               [24]  287 	movx	@dptr,a
      002DAF EE               [12]  288 	mov	a,r6
      002DB0 A3               [24]  289 	inc	dptr
      002DB1 F0               [24]  290 	movx	@dptr,a
      002DB2 EF               [12]  291 	mov	a,r7
      002DB3 A3               [24]  292 	inc	dptr
      002DB4 F0               [24]  293 	movx	@dptr,a
      002DB5 8D 82            [24]  294 	mov	dpl,r5
      002DB7 8E 83            [24]  295 	mov	dph,r6
      002DB9 8F F0            [24]  296 	mov	b,r7
      002DBB E4               [12]  297 	clr	a
                                    298 ;	../Common/StringUtils.c:17: }
      002DBC 02 39 67         [24]  299 	ljmp	__gptrput
                                    300 ;------------------------------------------------------------
                                    301 ;Allocation info for local variables in function 'UnsignedCharToString'
                                    302 ;------------------------------------------------------------
                                    303 ;v             Allocated with name '_UnsignedCharToString_PARM_2'
                                    304 ;p             Allocated with name '_UnsignedCharToString_p_10000_4'
                                    305 ;digit         Allocated with name '_UnsignedCharToString_digit_10000_5'
                                    306 ;divider       Allocated with name '_UnsignedCharToString_divider_10000_5'
                                    307 ;------------------------------------------------------------
                                    308 ;	../Common/StringUtils.c:21: void UnsignedCharToString(unsigned char *p, unsigned char v)
                                    309 ;	-----------------------------------------
                                    310 ;	 function UnsignedCharToString
                                    311 ;	-----------------------------------------
      002DBF                        312 _UnsignedCharToString:
      002DBF AF F0            [24]  313 	mov	r7,b
      002DC1 AE 83            [24]  314 	mov	r6,dph
      002DC3 E5 82            [12]  315 	mov	a,dpl
      002DC5 90 02 82         [24]  316 	mov	dptr,#_UnsignedCharToString_p_10000_4
      002DC8 F0               [24]  317 	movx	@dptr,a
      002DC9 EE               [12]  318 	mov	a,r6
      002DCA A3               [24]  319 	inc	dptr
      002DCB F0               [24]  320 	movx	@dptr,a
      002DCC EF               [12]  321 	mov	a,r7
      002DCD A3               [24]  322 	inc	dptr
      002DCE F0               [24]  323 	movx	@dptr,a
                                    324 ;	../Common/StringUtils.c:25: divider = 0x80;
      002DCF 90 02 87         [24]  325 	mov	dptr,#_UnsignedCharToString_divider_10000_5
      002DD2 74 80            [12]  326 	mov	a,#0x80
      002DD4 F0               [24]  327 	movx	@dptr,a
      002DD5 E4               [12]  328 	clr	a
      002DD6 A3               [24]  329 	inc	dptr
      002DD7 F0               [24]  330 	movx	@dptr,a
                                    331 ;	../Common/StringUtils.c:26: do
      002DD8 90 02 82         [24]  332 	mov	dptr,#_UnsignedCharToString_p_10000_4
      002DDB E0               [24]  333 	movx	a,@dptr
      002DDC FD               [12]  334 	mov	r5,a
      002DDD A3               [24]  335 	inc	dptr
      002DDE E0               [24]  336 	movx	a,@dptr
      002DDF FE               [12]  337 	mov	r6,a
      002DE0 A3               [24]  338 	inc	dptr
      002DE1 E0               [24]  339 	movx	a,@dptr
      002DE2 FF               [12]  340 	mov	r7,a
      002DE3                        341 00101$:
                                    342 ;	../Common/StringUtils.c:28: digit = v / divider;
      002DE3 90 02 87         [24]  343 	mov	dptr,#_UnsignedCharToString_divider_10000_5
      002DE6 E0               [24]  344 	movx	a,@dptr
      002DE7 FB               [12]  345 	mov	r3,a
      002DE8 A3               [24]  346 	inc	dptr
      002DE9 E0               [24]  347 	movx	a,@dptr
      002DEA FC               [12]  348 	mov	r4,a
      002DEB 90 02 81         [24]  349 	mov	dptr,#_UnsignedCharToString_PARM_2
      002DEE E0               [24]  350 	movx	a,@dptr
      002DEF F9               [12]  351 	mov	r1,a
      002DF0 7A 00            [12]  352 	mov	r2,#0x00
      002DF2 90 02 B5         [24]  353 	mov	dptr,#__divuint_PARM_2
      002DF5 EB               [12]  354 	mov	a,r3
      002DF6 F0               [24]  355 	movx	@dptr,a
      002DF7 EC               [12]  356 	mov	a,r4
      002DF8 A3               [24]  357 	inc	dptr
      002DF9 F0               [24]  358 	movx	@dptr,a
      002DFA 89 82            [24]  359 	mov	dpl, r1
      002DFC 8A 83            [24]  360 	mov	dph, r2
      002DFE C0 07            [24]  361 	push	ar7
      002E00 C0 06            [24]  362 	push	ar6
      002E02 C0 05            [24]  363 	push	ar5
      002E04 12 38 DA         [24]  364 	lcall	__divuint
      002E07 AB 82            [24]  365 	mov	r3, dpl
      002E09 AC 83            [24]  366 	mov	r4, dph
      002E0B D0 05            [24]  367 	pop	ar5
      002E0D D0 06            [24]  368 	pop	ar6
      002E0F D0 07            [24]  369 	pop	ar7
      002E11 90 02 85         [24]  370 	mov	dptr,#_UnsignedCharToString_digit_10000_5
      002E14 EB               [12]  371 	mov	a,r3
      002E15 F0               [24]  372 	movx	@dptr,a
      002E16 EC               [12]  373 	mov	a,r4
      002E17 A3               [24]  374 	inc	dptr
      002E18 F0               [24]  375 	movx	@dptr,a
                                    376 ;	../Common/StringUtils.c:29: *p = digit ? '1' : '0';
      002E19 8D 00            [24]  377 	mov	ar0,r5
      002E1B 8E 01            [24]  378 	mov	ar1,r6
      002E1D 8F 02            [24]  379 	mov	ar2,r7
      002E1F EB               [12]  380 	mov	a,r3
      002E20 4C               [12]  381 	orl	a,r4
      002E21 60 04            [24]  382 	jz	00106$
      002E23 7C 31            [12]  383 	mov	r4,#0x31
      002E25 80 02            [24]  384 	sjmp	00107$
      002E27                        385 00106$:
      002E27 7C 30            [12]  386 	mov	r4,#0x30
      002E29                        387 00107$:
      002E29 88 82            [24]  388 	mov	dpl,r0
      002E2B 89 83            [24]  389 	mov	dph,r1
      002E2D 8A F0            [24]  390 	mov	b,r2
      002E2F EC               [12]  391 	mov	a,r4
      002E30 12 39 67         [24]  392 	lcall	__gptrput
                                    393 ;	../Common/StringUtils.c:30: v -= digit * divider;
      002E33 90 02 85         [24]  394 	mov	dptr,#_UnsignedCharToString_digit_10000_5
      002E36 E0               [24]  395 	movx	a,@dptr
      002E37 FC               [12]  396 	mov	r4,a
      002E38 90 02 87         [24]  397 	mov	dptr,#_UnsignedCharToString_divider_10000_5
      002E3B E0               [24]  398 	movx	a,@dptr
      002E3C FA               [12]  399 	mov	r2,a
      002E3D A3               [24]  400 	inc	dptr
      002E3E E0               [24]  401 	movx	a,@dptr
      002E3F FB               [12]  402 	mov	r3,a
      002E40 8A 01            [24]  403 	mov	ar1,r2
      002E42 8C F0            [24]  404 	mov	b,r4
      002E44 E9               [12]  405 	mov	a,r1
      002E45 A4               [48]  406 	mul	ab
      002E46 FC               [12]  407 	mov	r4,a
      002E47 90 02 81         [24]  408 	mov	dptr,#_UnsignedCharToString_PARM_2
      002E4A E0               [24]  409 	movx	a,@dptr
      002E4B C3               [12]  410 	clr	c
      002E4C 9C               [12]  411 	subb	a,r4
      002E4D F0               [24]  412 	movx	@dptr,a
                                    413 ;	../Common/StringUtils.c:31: divider = divider / 2;
      002E4E EB               [12]  414 	mov	a,r3
      002E4F C3               [12]  415 	clr	c
      002E50 13               [12]  416 	rrc	a
      002E51 CA               [12]  417 	xch	a,r2
      002E52 13               [12]  418 	rrc	a
      002E53 CA               [12]  419 	xch	a,r2
      002E54 FB               [12]  420 	mov	r3,a
      002E55 90 02 87         [24]  421 	mov	dptr,#_UnsignedCharToString_divider_10000_5
      002E58 EA               [12]  422 	mov	a,r2
      002E59 F0               [24]  423 	movx	@dptr,a
      002E5A EB               [12]  424 	mov	a,r3
      002E5B A3               [24]  425 	inc	dptr
      002E5C F0               [24]  426 	movx	@dptr,a
                                    427 ;	../Common/StringUtils.c:32: ++p;
      002E5D 0D               [12]  428 	inc	r5
      002E5E BD 00 01         [24]  429 	cjne	r5,#0x00,00128$
      002E61 0E               [12]  430 	inc	r6
      002E62                        431 00128$:
      002E62 90 02 82         [24]  432 	mov	dptr,#_UnsignedCharToString_p_10000_4
      002E65 ED               [12]  433 	mov	a,r5
      002E66 F0               [24]  434 	movx	@dptr,a
      002E67 EE               [12]  435 	mov	a,r6
      002E68 A3               [24]  436 	inc	dptr
      002E69 F0               [24]  437 	movx	@dptr,a
      002E6A EF               [12]  438 	mov	a,r7
      002E6B A3               [24]  439 	inc	dptr
      002E6C F0               [24]  440 	movx	@dptr,a
                                    441 ;	../Common/StringUtils.c:34: while (divider > 0);
      002E6D 90 02 87         [24]  442 	mov	dptr,#_UnsignedCharToString_divider_10000_5
      002E70 E0               [24]  443 	movx	a,@dptr
      002E71 F5 F0            [12]  444 	mov	b,a
      002E73 A3               [24]  445 	inc	dptr
      002E74 E0               [24]  446 	movx	a,@dptr
      002E75 45 F0            [12]  447 	orl	a,b
      002E77 60 03            [24]  448 	jz	00129$
      002E79 02 2D E3         [24]  449 	ljmp	00101$
      002E7C                        450 00129$:
                                    451 ;	../Common/StringUtils.c:35: *p = 0;
      002E7C 90 02 82         [24]  452 	mov	dptr,#_UnsignedCharToString_p_10000_4
      002E7F ED               [12]  453 	mov	a,r5
      002E80 F0               [24]  454 	movx	@dptr,a
      002E81 EE               [12]  455 	mov	a,r6
      002E82 A3               [24]  456 	inc	dptr
      002E83 F0               [24]  457 	movx	@dptr,a
      002E84 EF               [12]  458 	mov	a,r7
      002E85 A3               [24]  459 	inc	dptr
      002E86 F0               [24]  460 	movx	@dptr,a
      002E87 8D 82            [24]  461 	mov	dpl,r5
      002E89 8E 83            [24]  462 	mov	dph,r6
      002E8B 8F F0            [24]  463 	mov	b,r7
      002E8D E4               [12]  464 	clr	a
                                    465 ;	../Common/StringUtils.c:36: }
      002E8E 02 39 67         [24]  466 	ljmp	__gptrput
                                    467 ;------------------------------------------------------------
                                    468 ;Allocation info for local variables in function 'strcat'
                                    469 ;------------------------------------------------------------
                                    470 ;s             Allocated with name '_strcat_PARM_2'
                                    471 ;p             Allocated with name '_strcat_p_10000_7'
                                    472 ;------------------------------------------------------------
                                    473 ;	../Common/StringUtils.c:39: void strcat(char *p, char *s)
                                    474 ;	-----------------------------------------
                                    475 ;	 function strcat
                                    476 ;	-----------------------------------------
      002E91                        477 _strcat:
      002E91 AF F0            [24]  478 	mov	r7,b
      002E93 AE 83            [24]  479 	mov	r6,dph
      002E95 E5 82            [12]  480 	mov	a,dpl
      002E97 90 02 8C         [24]  481 	mov	dptr,#_strcat_p_10000_7
      002E9A F0               [24]  482 	movx	@dptr,a
      002E9B EE               [12]  483 	mov	a,r6
      002E9C A3               [24]  484 	inc	dptr
      002E9D F0               [24]  485 	movx	@dptr,a
      002E9E EF               [12]  486 	mov	a,r7
      002E9F A3               [24]  487 	inc	dptr
      002EA0 F0               [24]  488 	movx	@dptr,a
                                    489 ;	../Common/StringUtils.c:41: while (*p)
      002EA1 90 02 8C         [24]  490 	mov	dptr,#_strcat_p_10000_7
      002EA4 E0               [24]  491 	movx	a,@dptr
      002EA5 FD               [12]  492 	mov	r5,a
      002EA6 A3               [24]  493 	inc	dptr
      002EA7 E0               [24]  494 	movx	a,@dptr
      002EA8 FE               [12]  495 	mov	r6,a
      002EA9 A3               [24]  496 	inc	dptr
      002EAA E0               [24]  497 	movx	a,@dptr
      002EAB FF               [12]  498 	mov	r7,a
      002EAC                        499 00101$:
      002EAC 8D 82            [24]  500 	mov	dpl,r5
      002EAE 8E 83            [24]  501 	mov	dph,r6
      002EB0 8F F0            [24]  502 	mov	b,r7
      002EB2 12 3A B5         [24]  503 	lcall	__gptrget
      002EB5 60 12            [24]  504 	jz	00113$
                                    505 ;	../Common/StringUtils.c:43: ++p;
      002EB7 0D               [12]  506 	inc	r5
      002EB8 BD 00 01         [24]  507 	cjne	r5,#0x00,00136$
      002EBB 0E               [12]  508 	inc	r6
      002EBC                        509 00136$:
      002EBC 90 02 8C         [24]  510 	mov	dptr,#_strcat_p_10000_7
      002EBF ED               [12]  511 	mov	a,r5
      002EC0 F0               [24]  512 	movx	@dptr,a
      002EC1 EE               [12]  513 	mov	a,r6
      002EC2 A3               [24]  514 	inc	dptr
      002EC3 F0               [24]  515 	movx	@dptr,a
      002EC4 EF               [12]  516 	mov	a,r7
      002EC5 A3               [24]  517 	inc	dptr
      002EC6 F0               [24]  518 	movx	@dptr,a
                                    519 ;	../Common/StringUtils.c:45: while (*s)
      002EC7 80 E3            [24]  520 	sjmp	00101$
      002EC9                        521 00113$:
      002EC9 90 02 8C         [24]  522 	mov	dptr,#_strcat_p_10000_7
      002ECC ED               [12]  523 	mov	a,r5
      002ECD F0               [24]  524 	movx	@dptr,a
      002ECE EE               [12]  525 	mov	a,r6
      002ECF A3               [24]  526 	inc	dptr
      002ED0 F0               [24]  527 	movx	@dptr,a
      002ED1 EF               [12]  528 	mov	a,r7
      002ED2 A3               [24]  529 	inc	dptr
      002ED3 F0               [24]  530 	movx	@dptr,a
      002ED4 90 02 89         [24]  531 	mov	dptr,#_strcat_PARM_2
      002ED7 E0               [24]  532 	movx	a,@dptr
      002ED8 FA               [12]  533 	mov	r2,a
      002ED9 A3               [24]  534 	inc	dptr
      002EDA E0               [24]  535 	movx	a,@dptr
      002EDB FB               [12]  536 	mov	r3,a
      002EDC A3               [24]  537 	inc	dptr
      002EDD E0               [24]  538 	movx	a,@dptr
      002EDE FC               [12]  539 	mov	r4,a
      002EDF                        540 00104$:
      002EDF 8A 82            [24]  541 	mov	dpl,r2
      002EE1 8B 83            [24]  542 	mov	dph,r3
      002EE3 8C F0            [24]  543 	mov	b,r4
      002EE5 12 3A B5         [24]  544 	lcall	__gptrget
      002EE8 F9               [12]  545 	mov	r1,a
      002EE9 60 21            [24]  546 	jz	00114$
                                    547 ;	../Common/StringUtils.c:47: *p = *s;
      002EEB 8D 82            [24]  548 	mov	dpl,r5
      002EED 8E 83            [24]  549 	mov	dph,r6
      002EEF 8F F0            [24]  550 	mov	b,r7
      002EF1 E9               [12]  551 	mov	a,r1
      002EF2 12 39 67         [24]  552 	lcall	__gptrput
      002EF5 A3               [24]  553 	inc	dptr
      002EF6 AD 82            [24]  554 	mov	r5,dpl
      002EF8 AE 83            [24]  555 	mov	r6,dph
                                    556 ;	../Common/StringUtils.c:48: ++p;
      002EFA 90 02 8C         [24]  557 	mov	dptr,#_strcat_p_10000_7
      002EFD ED               [12]  558 	mov	a,r5
      002EFE F0               [24]  559 	movx	@dptr,a
      002EFF EE               [12]  560 	mov	a,r6
      002F00 A3               [24]  561 	inc	dptr
      002F01 F0               [24]  562 	movx	@dptr,a
      002F02 EF               [12]  563 	mov	a,r7
      002F03 A3               [24]  564 	inc	dptr
      002F04 F0               [24]  565 	movx	@dptr,a
                                    566 ;	../Common/StringUtils.c:49: ++s;
      002F05 0A               [12]  567 	inc	r2
      002F06 BA 00 D6         [24]  568 	cjne	r2,#0x00,00104$
      002F09 0B               [12]  569 	inc	r3
      002F0A 80 D3            [24]  570 	sjmp	00104$
      002F0C                        571 00114$:
      002F0C 90 02 8C         [24]  572 	mov	dptr,#_strcat_p_10000_7
      002F0F ED               [12]  573 	mov	a,r5
      002F10 F0               [24]  574 	movx	@dptr,a
      002F11 EE               [12]  575 	mov	a,r6
      002F12 A3               [24]  576 	inc	dptr
      002F13 F0               [24]  577 	movx	@dptr,a
      002F14 EF               [12]  578 	mov	a,r7
      002F15 A3               [24]  579 	inc	dptr
      002F16 F0               [24]  580 	movx	@dptr,a
                                    581 ;	../Common/StringUtils.c:51: *p = 0;
      002F17 8D 82            [24]  582 	mov	dpl,r5
      002F19 8E 83            [24]  583 	mov	dph,r6
      002F1B 8F F0            [24]  584 	mov	b,r7
      002F1D E4               [12]  585 	clr	a
                                    586 ;	../Common/StringUtils.c:52: }
      002F1E 02 39 67         [24]  587 	ljmp	__gptrput
                                    588 ;------------------------------------------------------------
                                    589 ;Allocation info for local variables in function 'strcpy'
                                    590 ;------------------------------------------------------------
                                    591 ;s             Allocated with name '_strcpy_PARM_2'
                                    592 ;p             Allocated with name '_strcpy_p_10000_11'
                                    593 ;------------------------------------------------------------
                                    594 ;	../Common/StringUtils.c:54: void strcpy(char *p, char *s)
                                    595 ;	-----------------------------------------
                                    596 ;	 function strcpy
                                    597 ;	-----------------------------------------
      002F21                        598 _strcpy:
      002F21 AF F0            [24]  599 	mov	r7,b
      002F23 AE 83            [24]  600 	mov	r6,dph
      002F25 E5 82            [12]  601 	mov	a,dpl
      002F27 90 02 92         [24]  602 	mov	dptr,#_strcpy_p_10000_11
      002F2A F0               [24]  603 	movx	@dptr,a
      002F2B EE               [12]  604 	mov	a,r6
      002F2C A3               [24]  605 	inc	dptr
      002F2D F0               [24]  606 	movx	@dptr,a
      002F2E EF               [12]  607 	mov	a,r7
      002F2F A3               [24]  608 	inc	dptr
      002F30 F0               [24]  609 	movx	@dptr,a
                                    610 ;	../Common/StringUtils.c:56: *p = 0;
      002F31 90 02 92         [24]  611 	mov	dptr,#_strcpy_p_10000_11
      002F34 E0               [24]  612 	movx	a,@dptr
      002F35 FD               [12]  613 	mov	r5,a
      002F36 A3               [24]  614 	inc	dptr
      002F37 E0               [24]  615 	movx	a,@dptr
      002F38 FE               [12]  616 	mov	r6,a
      002F39 A3               [24]  617 	inc	dptr
      002F3A E0               [24]  618 	movx	a,@dptr
      002F3B FF               [12]  619 	mov	r7,a
      002F3C 8D 82            [24]  620 	mov	dpl,r5
      002F3E 8E 83            [24]  621 	mov	dph,r6
      002F40 8F F0            [24]  622 	mov	b,r7
      002F42 E4               [12]  623 	clr	a
      002F43 12 39 67         [24]  624 	lcall	__gptrput
                                    625 ;	../Common/StringUtils.c:57: while (*s)
      002F46 90 02 8F         [24]  626 	mov	dptr,#_strcpy_PARM_2
      002F49 E0               [24]  627 	movx	a,@dptr
      002F4A FA               [12]  628 	mov	r2,a
      002F4B A3               [24]  629 	inc	dptr
      002F4C E0               [24]  630 	movx	a,@dptr
      002F4D FB               [12]  631 	mov	r3,a
      002F4E A3               [24]  632 	inc	dptr
      002F4F E0               [24]  633 	movx	a,@dptr
      002F50 FC               [12]  634 	mov	r4,a
      002F51                        635 00101$:
      002F51 8A 82            [24]  636 	mov	dpl,r2
      002F53 8B 83            [24]  637 	mov	dph,r3
      002F55 8C F0            [24]  638 	mov	b,r4
      002F57 12 3A B5         [24]  639 	lcall	__gptrget
      002F5A F9               [12]  640 	mov	r1,a
      002F5B 60 21            [24]  641 	jz	00108$
                                    642 ;	../Common/StringUtils.c:59: *p = *s;
      002F5D 8D 82            [24]  643 	mov	dpl,r5
      002F5F 8E 83            [24]  644 	mov	dph,r6
      002F61 8F F0            [24]  645 	mov	b,r7
      002F63 E9               [12]  646 	mov	a,r1
      002F64 12 39 67         [24]  647 	lcall	__gptrput
      002F67 A3               [24]  648 	inc	dptr
      002F68 AD 82            [24]  649 	mov	r5,dpl
      002F6A AE 83            [24]  650 	mov	r6,dph
                                    651 ;	../Common/StringUtils.c:60: ++p;
      002F6C 90 02 92         [24]  652 	mov	dptr,#_strcpy_p_10000_11
      002F6F ED               [12]  653 	mov	a,r5
      002F70 F0               [24]  654 	movx	@dptr,a
      002F71 EE               [12]  655 	mov	a,r6
      002F72 A3               [24]  656 	inc	dptr
      002F73 F0               [24]  657 	movx	@dptr,a
      002F74 EF               [12]  658 	mov	a,r7
      002F75 A3               [24]  659 	inc	dptr
      002F76 F0               [24]  660 	movx	@dptr,a
                                    661 ;	../Common/StringUtils.c:61: ++s;
      002F77 0A               [12]  662 	inc	r2
      002F78 BA 00 D6         [24]  663 	cjne	r2,#0x00,00101$
      002F7B 0B               [12]  664 	inc	r3
      002F7C 80 D3            [24]  665 	sjmp	00101$
      002F7E                        666 00108$:
      002F7E 90 02 92         [24]  667 	mov	dptr,#_strcpy_p_10000_11
      002F81 ED               [12]  668 	mov	a,r5
      002F82 F0               [24]  669 	movx	@dptr,a
      002F83 EE               [12]  670 	mov	a,r6
      002F84 A3               [24]  671 	inc	dptr
      002F85 F0               [24]  672 	movx	@dptr,a
      002F86 EF               [12]  673 	mov	a,r7
      002F87 A3               [24]  674 	inc	dptr
      002F88 F0               [24]  675 	movx	@dptr,a
                                    676 ;	../Common/StringUtils.c:63: *p = 0;
      002F89 8D 82            [24]  677 	mov	dpl,r5
      002F8B 8E 83            [24]  678 	mov	dph,r6
      002F8D 8F F0            [24]  679 	mov	b,r7
      002F8F E4               [12]  680 	clr	a
                                    681 ;	../Common/StringUtils.c:64: }
      002F90 02 39 67         [24]  682 	ljmp	__gptrput
                                    683 	.area CSEG    (CODE)
                                    684 	.area CONST   (CODE)
                                    685 	.area XINIT   (CODE)
                                    686 	.area CABS    (ABS,CODE)
