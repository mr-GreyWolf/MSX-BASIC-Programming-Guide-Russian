10 SCREEN1:WIDTH 32
20 DEFUSR=&H7E:A=USR(0) 'Установили совмещенный режим
30 'Считываем шаблоны символов из ROM в Таблицу PGT
40 FOR T=0 TO 2
50    FOR K=0 TO 2047
60       VPOKE BASE(7)+2048*T+K,PEEK(&H1BBF+K)
70 NEXT K,T
80 'Инициализируем цвета символов в Таблице CT
90 FOR I=0 TO 6143:VPOKE BASE(6)+I,&HF4:NEXT I
100 'Установим форму курсора во 2-м и 3-м окне экрана
110 FOR Y=1 TO 2:FOR X=0 TO 7:VPOKE &H800*Y+255*8+X,255:NEXT X,Y
120 NEW
