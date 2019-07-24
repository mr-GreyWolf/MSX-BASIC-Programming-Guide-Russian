7 CLS
10 INPUT"Введите значения M и N";M,N
15 IF M<=1 OR N<=1 THEN 7
20 DIM A(M,N):X=RND(-TIME)
30 FOR I=1 TO M:FOR J=1 TO N:A(I,J)=INT(21*RND(1)):PRINT A(I,J);:NEXT J:PRINT:NEXT I
40 DIM B(M)
50 FOR I=1 TO M:FOR J=1 TO N-1:FOR L=J+1 TO N
60 IF A(I,J)>A(I,L) THEN NEXT L:B(I)=A(I,J) ELSE NEXT J:B(I)=A(I,L)
70 NEXT I
80 FOR I=1 TO M-1:FOR J=I+1 TO M
90 IF B(I)<=B(J) THEN NEXT J:PRINT"Число,удовлетворяющее условию:"B(I) ELSE NEXT I:PRINT"Число,удовлетворяющее условию:"B(J)
