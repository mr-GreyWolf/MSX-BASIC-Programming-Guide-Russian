10 INPUT"Введите натуральное N:";N
15 PRINT"Совершенные числа на промежутке от 1 до"N":"
20 FOR I=2 TO N:FOR J=1 TO I-1
30 IF I/J=FIX(I/J) THEN K=K+J:NEXTJ:ELSE NEXTJ
40 IF K=I THEN PRINT I:K=0:L=1:NEXT I ELSE K=0:NEXTI
50 IF L<1 THEN PRINT"Таких чисел нет"
