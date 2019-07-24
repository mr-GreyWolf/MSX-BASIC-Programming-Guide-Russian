5 'Вычисление значения многочлена  A(0)+A(1)Gx+A(2)Gx╫+GGG+A(n)Gx╪ в точке x=X0 по схеме Горнера
10 INPUT"Введите степень многочлена n=";N:INPUT "X0=";X
20 FOR I=0 TO N:PRINT"A("I")=";:INPUT A(I):NEXTI
36 C=A(N)
40 FOR I=N-1 TO 0 STEP -1:C=C*X+A(I):NEXTI:PRINT "c=";C
