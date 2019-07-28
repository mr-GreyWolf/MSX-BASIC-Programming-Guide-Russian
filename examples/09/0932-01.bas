10 OPEN "GAMES" FOR OUTPUT AS #1
20 FOR X=1 TO 5
30    INPUT"Введите название игры";F$:PRINT #1,F$
50 NEXT X
60 CLOSE #1
