10 INPUT"Введите слово";X$
20 INPUT"Укажите число повторений символов";M%
30 IF M%=0 OR M%*LEN(X$)>255 THEN PRINT"Повторите ввод":GOTO10
40 N$="":FOR I=1 TO LEN(X$):FOR J=1 TO M%
70 N$=N$+MID$(X$,I,1):NEXTJ,I
90 PRINT "Вы этого хотели?  ";N$
