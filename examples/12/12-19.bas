10 INPUT"Введите значения N и M";N,M:IF M>50 THEN 10
20 DIM A(N,M):G=RND(-TIME)
30 FOR I=1 TO N:FOR J=1 TO M:A(I,J)=INT(10*RND(1)-5):PRINT A(I,J);:NEXT J:PRINT:NEXT I
40 DIM P(N):FOR I=1 TO N:FOR J=1 TO M
50 IF A(I,J)=0 THEN C=C+1:NEXT J ELSE NEXT J
60 P(I)=C:C=0:NEXT I
70 PRINT"Количество нулевых элементов по строкам:":FOR K=1 TO N:PRINT P(K);:NEXT
80 FOR K=1 TO N:IF P(K)<>0 THEN S=S+1:NEXT K ELSE NEXT K
90 PRINT:PRINT"Количество строк с нулевыми элементами:";S:END
