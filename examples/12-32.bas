30 PRINT "Ax+By=C (Диофантовы уравнения)"
40 INPUT"Чему равны A,B,C";A,B,C
50 A1=A:B1=B:C1=C
60 'Нам нужно найти число M такое, которое в 5 раз больше числа цифр в максимальном по модулю из чисел  A, B, C (строки 60-80)
70 CJ=ABS(A):IF ABS(B)>CJ THEN CJ=ABS(B)
80 IF ABS(C)>CJ THEN CJ=ABS(C)
90 CJ$=MID$(STR$(CJ),2):M=5*LEN(CJ$)
100 DIM Q(M)
110 N=0:I=0:D=ABS(A):S=ABS(A):R=ABS(B)
120 I=I+1:IF NOT R<>0 THEN 160
130 FOR W=1 TO 0 STEP 1             'OOOO WHILE OOOO
140 N=I:Q[I]=FIX(S/R):D=R:R=S-R*Q[I]:S=D
150 I=I+1:W=R<>0:NEXT W             'OOOO WEND OOOO
160 IF D=0 THEN:::IF C=0 THEN PRINT "Неопределенность":END ELSE PRINT"Нет решения":END:::ELSE
170 IF FIX(C/D)*D<>C THEN PRINT "Нет решения":END
180 A=A/D:B=B/D:C=C/D 'Уравнение приведем к виду, когда A и B взаимно простые.
190 IF N=0 THEN V=0:U=1 ELSE V=1:U=0:::FOR I=N-1 TO 1 STEP -1:S=V:V=U-V*Q[I]:U=S:NEXT I
200 X=C*U*SGN(A):Y=C*V*SGN(B):C=FIX(X/B):X=X-C*B:Y=Y+C*A'Частные решения
210 PRINT "Получено частное решение":PRINT "уравнения: (";STR$(A1);")*x+(";STR$(B1);")*y=";C1
220 PRINT "X0=";STR$(X);SPC(2);"Y0=";STR$(Y)
230 PRINT "Общее решение:":PRINT "Xi=";STR$(X);"+i*(";STR$(B1);") и Yi=";STR$(Y);"-i*(";STR$(A1);"),"
240 PRINT "где i- целое число."
250 '    Таблица тестовых примеров
260 'XWWWWRWWWWRWWWWWRWWWWWWRWWWWWWWWY
270 'V  A V  B V  C  V   X  V    Y   V
280 'VWWWWVWWWWVWWWWWVWWWWWWVWWWWWWWWV
290 'V1000V 23 V 1046V -22  V  1002  V
300 'V  0 V  0 V  0  VНеопределенность
310 'V 57 V-103V47009V  73  V  -416  V
320 'V 10 V 12 V 578 V  -1  V   49   V
330 'V 10 V 12 V 97  V  Нет решения  V
340 'ZWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW[    
