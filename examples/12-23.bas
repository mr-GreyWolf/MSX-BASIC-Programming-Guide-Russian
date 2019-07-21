100 INPUT"Введите натуральное N:";N:IF N=1 THEN 140
120 FOR J=1 TO N-1
130 IF N/J=FIX(N/J) THEN K=K+J:NEXT J:ELSE NEXT J
140 IF K=N THEN PRINT N"-совершенное число" ELSE PRINT N"не является совершенным"
