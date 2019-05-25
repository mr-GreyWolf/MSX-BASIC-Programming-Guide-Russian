5 'Нахождение числа . методом Монте-Карло
10 X=RND(-TIME):INPUT"Количество бросаний точки -";N
20 FOR I=1 TO N:X1=RND(1):X2=RND(1)
30 IF X1^2+X2^2<1 THEN IN=IN+1
40 NEXT:PRINT "ё╥";4*IN/N
