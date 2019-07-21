10 DEFINT Q,K,I,J,N,D:INPUT "Укажите количество элементов";N:DIM A(N),Q(N),B(N):X=RND(-TIME)
15 PRINT"Исходная последовательность:"
20 FOR I=1 TO N:A(I)=INT(9*RND(1)):PRINT A(I);:NEXTI
30 FOR I=1 TO N:Q(I)=N-1:NEXT I
40 FOR I=1 TO N-1:FOR J=I+1 TO N
50 IF A(I)<A(J) THEN IF Q(I)<Q(J)+1 THEN Q(J)=Q(I)-1
55 NEXT J,I
60 K=Q(1):FOR I=2 TO N
80 IF K>Q(I) THEN K=Q(I)
90 NEXT I:D=K
100 PRINT:PRINT"Нужно выбросить:";K;"элементa"
120 FOR I=N TO 1 STEP(-1)
130 IF Q(I)=K THEN B(K)=A(I):K=K+1:NEXT I ELSE NEXTI
135 PRINT"Одна из самых длинных возрастающих подпоследовательностей:";
140 FOR J=N-1 TO D STEP (-1):PRINT B(J);:NEXTJ
