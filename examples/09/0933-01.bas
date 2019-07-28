10 OPEN "TEST.DAT" FOR OUTPUT AS #1
20 PRINT #1,"Агибалова, Алевтина":CLOSE#1
40 OPEN "TEST.DAT" FOR INPUT AS#1
50 LINE INPUT#1,A$:PRINT"Первое значение в файле:";A$:CLOSE#1
