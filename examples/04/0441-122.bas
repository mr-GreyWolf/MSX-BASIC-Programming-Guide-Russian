5 'Программа находит число сочетаний из N по M по формуле (O) с при менением рекурсивной подпрограммы.
10 INPUT N,M:C=N:GOSUB100:PRINT FIX(C+.5):END
100 IF M>1THEN C=C*(N-M+1)/M:M=M-1:GOSUB100:RETURN ELSE RETURN
