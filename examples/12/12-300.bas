10 INPUT"Сколько чисел в каждой таблице";N:DIM A1(N),A2(N),A3(N)
20 INPUT"Чему равен максимальный элемент";F
30 FOR I=1 TO N:A1(I)=INT(2*F*RND(1)-F):PRINT A1(I);:NEXT:PRINT:PRINT
40 FOR I=1 TO N:A2(I)=INT(2*F*RND(1)-F):PRINT A2(I);:NEXT:PRINT:PRINT
50 FOR I=1 TO N:A3(I)=INT(2*F*RND(1)-F):PRINT A3(I);:NEXT:PRINT:PRINT
60 PRINT "А вот те числа, которые встречаются в трех таблицах сразу:"
70 FOR I=1 TO N:FOR J=1 TO N:FOR K=1 TO N
80 IF A1(I)=A2(J) AND A1(I)=A3(K) THEN PRINT A1(I);:NEXT I ELSE NEXT K,J,I
90 PRINT :PRINT"Увы, но все числа, встречающиеся в трех таблицах сразу, уже выведены на экран."
