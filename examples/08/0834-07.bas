10 ON ERROR GOTO 100
20 X=0
30 INPUT"Сколько миль до Луны";FAR
40 IF FAR<>238857! THEN 50
45 PRINT"Отлично!" 
48 GOTO 130
50 X=X+1
55 IF X>2 THEN ERROR 200
60 GOTO 30
100 IF ERR<>200 THEN ON ERROR GOTO 0'Обработать ошибку как обычно!
110 PRINT"Уже три попытки. Хватит!"
120 RESUME 130
130 END
