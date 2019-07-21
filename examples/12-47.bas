10 LINEINPUT "Введите строку, содержащую открывающие и закрывающие круглые скобки:";A$
15 IF LEFT$(A$,1)<>"("THEN GOSUB45:END
20 FOR I=1 TO LEN(A$)
25 IF MID$(A$,I,1)="(" THEN K=K+1 ELSE IF MID$(A$,I,1)=")"THEN K=K-1
30 IF K<0 THEN GOSUB45:END ELSE NEXT
35 IF K<>0 THEN GOSUB45 ELSE PRINT"Скобки расставлены правильно!"
40 END
45 PRINT"Скобки расставлены неправильно!":RETURN
