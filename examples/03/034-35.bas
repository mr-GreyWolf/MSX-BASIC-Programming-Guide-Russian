10 DEFINT N:INPUT N,A,E
20 IF A<0ANDNMOD2=0 THEN PRINT"Арифметический корень четной степени из отрицательного числа не существует":END
30 X=A:Y=X+(X/A^(N-1)-X)/N:GOTO 50
40 X=Y:Y=X+(A/X^(N-1)-X)/N
50 IF ABS(Y-X)>=E THEN GOTO 40 ELSE PRINT "Результат:";Y
