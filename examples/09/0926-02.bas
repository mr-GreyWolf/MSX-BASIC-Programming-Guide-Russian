10 'Объявление FCB0, FCB1, FCB2 и FCB3
20 'Открытие файла "рыба" с буфером #2
30 MAXFILES=3:OPEN "Рыба" AS#2 LEN=13
40 'Определение формата записи
50 FIELD #2,8 AS L$, 5 AS M$
60 'Формирование первых 10 записей
70 FOR K=1 TO 10
80    INPUT"X$-8";X$:INPUT"Y$-5";Y$
90    LSET L$=X$:RSET M$=Y$:PUT #2,K
99 NEXT:END
