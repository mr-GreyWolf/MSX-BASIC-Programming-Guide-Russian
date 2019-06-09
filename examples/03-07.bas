5 'Идентификация массива A(N)
10 DEFINTN,A,I:INPUT"Введите N";N:DIMA(N)
15 PRINT "Для каких чисел ищется НОД?"
20 FOR I=1 TO N:INPUT A(I):NEXT
30 FOR I=1 TO N-1
35 'Далее находится НОД элементов A(I) и А(I+1) с использованием алгоритма Евклида.
40 IF A(I)>A(I+1) THEN A(I)=A(I)-A(I+1)
50 IF A(I)<A(I+1) THEN A(I+1)=A(I+1)-A(I)
60 IF A(I)<>A(I+1) THEN GOTO 40
70 NEXT
75 'Последний вычисленный НОД выводится на экран.
80 PRINT A(I)
