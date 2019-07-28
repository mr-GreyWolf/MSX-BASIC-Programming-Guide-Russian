10 OPEN "GAMES" FOR INPUT AS #1   'Открывается "старый" файл
20 OPEN "GAMES2" FOR OUTPUT AS #2 'Открывается "новый" файл (пустой)
30 FOR X=1 TO 5
40    INPUT #1,F$
50    IF F$="Баскетбол" THEN F$="Водное поло"
60    PRINT #2,F$
70 NEXT X
80 CLOSE 1,2                      'Оба файла закрываются
90 KILL"GAMES"                    'Удаление исходного файла
100 NAME "GAMES2" AS "GAMES"      'Переименование "нового" файла
