10 'Чтение программного файла
20 OPEN "Симпсон" FOR INPUT AS#1
30 LINE INPUT #1,R$:PRINT R$
50 IF NOT EOF(1) THEN 30
60 CLOSE #1
