10 TIME=0:DIM A%(27)
20 FOR I=0 TO 9:FOR J=0 TO 9:FOR K=0 TO 9
30 A%(I+J+K)=A%(I+J+K)+1:NEXT K,J
40 N=1:FOR I=1 TO27:A%(I)=A%(I)^2
50 N=N+A%(I):NEXT I
60 PRINT"Счастливых билетов:";N:PRINT"Время работы программы:";INT(TIME/60);"с"
