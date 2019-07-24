10 '****************************************************
30 '*               Программа  LONGMULT                *
50 '*   позволяет найти точное значение произведения   * 
70 '*           не более чем 210-значных чисел         *
81 '*             Мах. время работы - 1.5 мин.         *
83 '****************************************************
90 CLEAR 1000:DIMA(30),C(31,61),D(62),D$(62),B(30),S(62):CC=10000000!
92 DEFFND$(X)=RIGHT$("0000000"+RIGHT$(STR$(X),LEN(STR$(X))-1),7):CLS
100 PRINT"Введите 1-й множитель":PRINT"a=";:GOSUB 150
110 FOR I=1TO N:A(I)=S(1):NEXT:NA=N
120 PRINT:PRINT"Введите 2-й множитель":PRINT"b=";:GOSUB 150
130 FOR I=1 TO N:B(I)=S(I):NEXT:NB=N:GOSUB 190
135 IF D(1)=0 THEN S=2 ELSE S=1
140 PRINT:PRINT"a*b=";:FOR I=S TO NA+NB:PRINT FND$(D(I));:NEXT
145 PRINT :PRINT:END
150 VV$=""
160 S$=INKEY$:IF S$=""THEN160 ELSE IF S$=CHR$(13) THEN PRINT:GOTO170 ELSE IF ASC (S$)<48 OR ASC(S$)>57 THEN160 ELSE PRINT S$;:VV$=VV$+S$:GOTO 160
170 N=LEN(VV$):IFNMOD7=0THEN180 ELSE VV$="0"+VV$: GOTO170
180 N=N/7:FOR I=1 TO N:S(I)=VAL(MID$(VV$,1+(I-1)*7,7)):NEXT:RETURN
190 'OOO Собственно длинное умножение OOO
200 FOR I=NB TO 1 STEP-1:S=0
210 FOR J=NA TO 0 STEP-1
220 C(I,J+I)=S+B(I)*A(J)-INT((S+B(I)*A(J))/CC)*CC:S=INT((S+B(I)*A(J))/CC):NEXT:NEXT
230 S=0:FORJ=NA+NBTO1 STEP-1:FORI=1TONB:D(J)=D(J)+C(I,J):NEXT:D(J)=D(J)+S:S=INT((D(J)+S)/CC):D(J)=D(J)-INT(D(J)/CC)*CC:NEXT:RETURN
