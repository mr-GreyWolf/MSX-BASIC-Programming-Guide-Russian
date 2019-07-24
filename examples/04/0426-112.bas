10 INPUT"Введите число";X$
20 L=LEN(X$):P=L
30 FOR I=1 TO L:FOR J=1TO L
40 IFMID$(X$,I,1)=MID$(X$,J,1)ANDI<>J THEN P=P-1:NEXTI ELSE NEXT J,I
50 PRINT"Цифр,используемых 1 раз:";P
