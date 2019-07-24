10 DEFINT N,I:INPUT "Введите N";N
20 DIM A(N)'Описание массива А
30 FOR I=1 TO N:INPUT A(I):NEXTI'Ввод массива A
40 FOR I=1 TO N
50 IF A(I)>0 THEN PRINT"Искомый индекс:";I:GOTO 60 ELSE NEXTI
60 PRINT"We are out of the loop!" 'Мы вышли из цикла!
