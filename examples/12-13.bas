10 INPUT N:DIM A(N):FOR I=1 TO N:A(I)=INT(2*RND(-TIME)-1):PRINT A(I);:NEXT I:PRINT
20 FOR I=1 TO N:IF A(I)<0 THEN B=I:NEXT I ELSE NEXT I
30 IF B=0 THEN PRINT"Отрицательного элемента в массиве нет" ELSE PRINT "Номер последнего отрицательного элемента:";B
