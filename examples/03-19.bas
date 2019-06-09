5 'Идентификация массива A(M,N) (строки 10-30).
10 DEFINT M,N,I,J,K:INPUT M,N:DIM A(M,N):K=N+M:X=RND(-TIME)
20 FOR I=1 TO M:FOR J=1 TO N
30 A(I,J)=INT(11*RND(1)-5):PRINT A(I,J);:NEXTJ:PRINT:NEXT I
45 IF M=1 AND N=1 THEN IF A(1,1)<0 THEN PRINT"Искомый элемент:";A(1,1):END ELSE PRINT"Такого элемента нет!":END'Случай M=N=1
47 'Нахождение отрицательного элемента массива A, у которого сумма индексов минимальна (строки 50-70).
50 FOR I=1 TO M:FOR J=1 TO N
60 IF A(I,J)<0 THEN IF I+J<K THEN K=I+J:C=A(I,J):NEXTJ:NEXTI ELSE NEXT J:NEXT I ELSE NEXT J:NEXT I
70 PRINT"Искомый отрицат.элемент:";C
