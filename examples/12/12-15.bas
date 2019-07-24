10 Z=RND(-TIME):INPUT"Число элементов";N:DIM A(N)
20 FOR T=1 TO N: A(T)=INT(2*RND(1)):PRINT A(T);: NEXT T:K=1:F=0:PRINT
30 FOR I=1 TO N-1
40   IF A(I)=A(I+1) THEN K=K+1:M=K ELSE M=K:K=1
50   IF M>F THEN F=M
60 NEXT I:PRINT"Максимальная длина:"F
