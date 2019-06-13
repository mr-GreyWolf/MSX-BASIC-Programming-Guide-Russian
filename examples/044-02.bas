10 DATA 5,2:'Данные основной программы
20 DATA 7,.5:'Данные подпрограммы
30 READ A,B:PRINTA+B;:GOSUB 40:PRINTA+B:END
40 RESTORE 20:READ A,B:PRINTA+B;:RESTORE 10:READA,B:RETURN'A и B - л о к а л ь н ы е  переменные подпрограммы!
