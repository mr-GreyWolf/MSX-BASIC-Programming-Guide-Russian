5 INPUT K,N:FOR I=1 TO N:GOSUB 100:PRINT I;:NEXTI:END
10 DATA 5,2:'Данные основной программы
20 DATA 7,.5:'Данные подпрограммы
30 READ A,B:PRINTA+B;:GOSUB 40:PRINTA+B:END
40 RESTORE 20:READ A,B:PRINTA+B;:RESTORE 10:READA,B:RETURN'A и B - л о к а л ь н ы е  переменные подпрограммы!
100 IF K>I THEN NEXTI:RETURN ELSE RETURN
