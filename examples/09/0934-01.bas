10 MAXFILES=6:OPEN "region1" FOR OUTPUT AS #1
21 OPEN "region2" FOR OUTPUT AS #2:OPEN "region3" FOR OUTPUT AS #3
30 FOR I=1 TO 3
31    PRINT "region";I
35    INPUT "Введите количество работающих метеорологов на станции";N
36 FOR E=1 TO N
40 INPUT "Введите:имя метеоролога";I$:INPUT "название региона";R$:INPUT "количество выпавшего за зиму снега в мм";K
50  PRINT #I,I$;",";R$;",";K
55  NEXT E
60  CLOSE #I
70 NEXT I:CLS
71 OPEN "region1" FOR INPUT AS #1:OPEN "region2" FOR INPUT AS #2
73 OPEN "region3" FOR INPUT AS #3
80 FOR O=1 TO 3
90    S=0
100   FOR E=1 TO N:INPUT #O,I$,R$,K:S=S+K:NEXT E
140   S=S/N:PRINT"Средний уровень снежных осадков по ";R$;" региону";S
150   CLOSE #O
160 NEXT O
170 END
