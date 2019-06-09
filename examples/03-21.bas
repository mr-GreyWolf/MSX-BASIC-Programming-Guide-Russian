5 'Идентификация массива A(M,M) (строки 10-30).
10 DEFINT M,I,J,K:INPUT M:IF M<=1 THEN 10
20 DIM A(M,M):X=RND(-TIME)
30 FOR I=1 TO M:FOR J=1 TO M:A(I,J)=INT(10*RND(1)):PRINT A(I,J);:NEXT J:PRINT:NEXT I
35 'Нахождение максимальной среди сумм элементов диагоналей, расположенных выше главной (строки 40-50).
40 FOR K=1 TO M-1:FOR I=1 TO M:FOR J=1 TO M
50 IF J=I+K THEN B=B+A(I,J):NEXT J:NEXT I ELSE NEXTJ:NEXTI:IF B>C THEN C=B:B=0:NEXT K ELSE B=0:NEXT K
55 'Нахождение максимальной среди сумм элементов диагоналей, расположенных ниже главной (строки 60-70).
60 FOR K=1 TO M-1:FOR I=1 TO M:FOR J=1 TO M
70 IF J=I-K THEN B=B+A(I,J):NEXT J:NEXTI ELSE NEXTJ:NEXTI:IF B>D THEN D=B:B=0:NEXT K ELSE B=0:NEXT K
80 IF C>D THEN PRINT C ELSE PRINT D 'Сравнение этих максимумов и вывод большего на экран дисплея.
