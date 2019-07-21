10 INPUT "Сторона квадрата";N:DIM A(N,N):FOR I=1 TO N:FOR J=1 TO N:PRINT "Ввести";J;"элемент";I;"строки";:INPUT A(I,J):NEXT J:NEXT I
20 DIM S(N):FOR I=1 TO N:FOR J=1 TO N:S(I)=S(I)+A(J,I):NEXT J:NEXT I
30 FOR I=1 TO N-1:IF S(I)<>S(I+1) THEN PRINT "Элементы массива не образуют магический квадрат!":END
40 DIM C(N):FOR J=1 TO N:FOR I=1 TO N:C(J)=C(J)+A(J,I):NEXT I:NEXT J
50 FOR J=1 TO N-1:IF C(J)<>C(J+1) THEN PRINT "Элементы массива не образуют магический квадрат!":END
60 Q1=0:FOR I=1 TO N:FOR J=1 TO N:IF J=I THEN Q1=Q1+A(I,J):NEXT I ELSE NEXT J:NEXT I
70 IF Q1<>C(1) THEN PRINT "Не является!":END
80 Q2=0:FOR I=N TO 1 STEP -1:FOR J=N TO 1 STEP -1:IF J=I THEN Q2=Q2+A(I,J):NEXT I ELSE NEXT J:NEXT I
90 IF Q1=Q2 THEN PRINT "Магический квадрат есть!":END
