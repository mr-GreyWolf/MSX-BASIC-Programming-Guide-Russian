10 'Чтение диапазона строк
20 OPEN "Симпсон" FOR INPUT AS#1
30 LINE INPUT #1,R$
40 X$=MID$(R$,1,2)
50 IF X$<"30" OR X$>"70" THEN 80
60 PRINT R$
80 IF NOT EOF(1) THEN 30
90 CLOSE #1
