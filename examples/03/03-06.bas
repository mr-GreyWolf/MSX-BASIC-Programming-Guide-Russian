10 DEFINTN,I,J:INPUT"Введите N";N:DIM X(N):C=RND(-TIME)
20 FOR I=1 TO N:X(I)=INT(3*RND(1))
30 PRINT X(I);:NEXT I:PRINT'Сформирован массив псевдослучайных чисел для облегчения процесса тестирования программы!
50 FOR J=1 TO N-1:FOR I=1 TO N-1
60 IF X(I)=0 THEN SWAP X(I),X(I+1)
70 NEXT I,J
80 FOR I=1 TO N:PRINT X(I);:NEXT
