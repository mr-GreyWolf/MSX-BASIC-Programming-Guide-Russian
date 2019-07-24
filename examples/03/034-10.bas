10 FOR I=1 TO 5
20 IF I<=2 THEN GOTO 100
30 M=I^2:PRINTM
40 NEXT I:END
100 I=I+3:GOTO 30 'Возвращение в тело цикла!
