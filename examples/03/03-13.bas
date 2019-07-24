5 INPUT"Введите N";N:DIM A(N):X=RND(-TIME)
8 PRINT "Исходный массив:"
10 FOR I=1TO N:A(I)=INT(10*RND(1)):PRINT A(I);:NEXT
20 FOR I=1 TO N-1:FOR J=I+1 TO N
23 IF A(I)=<A(J) THEN GOTO 27 ELSE SWAP A(I),A(J)
27 NEXT:NEXT :PRINT
30 FOR I=1 TO N-1
40 IF A(I)<>A(I+1) THEN P=0:NEXT I ELSE IF P=0 THEN K=K+1:P=1:NEXT ELSE NEXT 'P-флажок!
50 PRINT:PRINT K;"элементов в массиве встречаются более одного раза"
