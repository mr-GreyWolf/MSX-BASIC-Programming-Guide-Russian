5  CLEAR 1000
10 DIM A(255),B(255),C(255)
20 T=1000:Z$="000"
30 PRINT"Точное произведение целых чисел"
40 INPUT"Введите первое число: ";A$
50 LA=LEN(A$):NA=INT((LA-1)/3)
60 FOR I=0 TO NA-1
70    A(I)=VAL(MID$(A$,LA-2-3*I,3))
80 NEXT I
90 A(NA)=VAL(LEFT$(A$,LA-3*NA))
100 INPUT"Введите второе число: ";B$
110 LB=LEN(B$):NB=INT((LB-1)/3)
120 FOR I=0 TO NB-1
130    B(I)=VAL(MID$(B$,LB-2-3*I,3))
140 NEXT I
150 B(NB)=VAL(LEFT$(B$,LB-3*NB))
160 NC=NA+NB+1
170 FOR I=0 TO NC:C(I)=0:NEXT I
180 FOR I=0 TO NA
190    FOR J=0 TO NB
200       K=I+J:X=A(I)*B(J)+C(K)
210       Y=INT(X/T):C(K)=X-T*Y
220       IF Y>0 THEN K=K+1:X=Y+C(K):GOTO 210
230    NEXT J
240 NEXT I
250 PRINT "Произведение = ";
260 IF C(NC)=0 THEN NC=NC-1
270 PRINT C(NC)
280 FOR I=NC-1 TO 0 STEP -1
290    PRINT",";RIGHT$(Z$+STR$(C(I)),3);
300 NEXT I
320 END
