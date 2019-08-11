10 KEYOFF:CLS
120 LOCATE 0,12,0:PRINT CHR$(27);"MFirst page ";:MP=1:INPUT MP:IF MP<1 OR MP>6 GOTO 120
130 PRINT:PRINT:POKE &HF418,1:DEFUSR=&H156
140 LPRINT CHR$(27);"c1";CHR$(27);"p0";CHR$(27);"T15";CHR$(27);">";CHR$(27);"Q";
150 IF MP=1 THEN I=0:LPRINT CHR$(27);"E (c) LHsoft     ver.2":LPRINT CHR$(27);"Q" ELSE I=43*MP-45
160 P=MP
170 GOSUB 460
180 IF P=1 THEN K=41 ELSE K=43
190 FOR N=1 TO K
200    GOSUB 260
210    I=I+1
220 NEXT N
230 LPRINT"ZWWWWQWWWWWQWWWWQWWWWWWQWWWWWWQWWWWWWQWWWWWWQWWWWWWQWWWWWWQWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWQWWWWWWWWWWWWWWWWWWWWWWWWW[
240 LPRINT CHR$(12);:IF P<6 THEN PRINT CHR$(27);"MPut in a new sheet ";:QQ=USR(0):Q$=INPUT$(1):P=P+1:GOTO 170
250 CLS:KEYON:END
260 LPRINT"V    V     V    V      V      V      V      V      V      V                                 V                         V
270 LPRINT"V    V ";
280 LPRINTUSING("###");I;
290 A1=I*8:A0=A1+2048:LPRINT" V ";RIGHT$("0"+HEX$(I),2);" V";A0;"V 0";HEX$(A0);" V ";
300 LPRINTUSING("####");A1;
310 LPRINT" V ";RIGHT$("000"+HEX$(A1),4);" V";
320 IF IMOD8=0 THEN LPRINT 8192+I/8;"V ";HEX$(&H2000+I/8);" V";ELSE LPRINT"      V      V";
330 FOR T=0 TO 7:LPRINTUSING(" ###");PEEK(&H1BBF+I*8+T);:NEXT
340 LPRINT" V ";
350 FOR T=0 TO 7:LPRINT RIGHT$("0"+HEX$(PEEK(&H1BBF+I*8+T)),2);" ";:NEXT
360 LPRINT"V";CHR$(13);"   ";CHR$(27);"N";CHR$(27);"S0008";
370 M=128
380 FOR K1=0 TO 7
390    D=0
400    FOR K2=7 TO 0 STEP-1
410    D=D*2
420    IF PEEK(&H1BBF+I*8+K2)ANDM THEN D=D+1
430 NEXT K2:LPRINT CHR$(D);:M=M/2:NEXT K1
440 LPRINT CHR$(27);"Q"
450 RETURN
460 PRINT CHR$(27);"MCurrent page is";P;
470 LPRINT"XWWWWRWWWWWWWWWWRWWWWWWWWWWWWWWWWWWWWWWWWWWWRWWWWWWWWWWWWWRWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWY
480 LPRINT"V    V   Код    V        Адрес в  PGT       V  Адрес в CT V                                                           V
490 LPRINT"VСим-V          TWWWWWWWWWWWWWRWWWWWWWWWWWWWUWWWWWWWWWWWWWS                Стандартное значение                       V
500 LPRINT"Vвол V  ASCII   V  SCREEN 0   V   SCREEN 1  V  SCREEN 1   V                                                           V
510 LPRINT"V    TWWWWWRWWWWUWWWWWWRWWWWWWUWWWWWWRWWWWWWUWWWWWWRWWWWWWUWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWRWWWWWWWWWWWWWWWWWWWWWWWWWS
520 LPRINT"V    V дес.VшестV дес. V шест.V дес. V шест.V дес. V шест.V            десятичное           V     шестнадцатеричное   V
530 LPRINT"TWWWWUWWWWWUWWWWUWWWWWWUWWWWWWUWWWWWWUWWWWWWUWWWWWWUWWWWWWUWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWUWWWWWWWWWWWWWWWWWWWWWWWWWS
540 RETURN
