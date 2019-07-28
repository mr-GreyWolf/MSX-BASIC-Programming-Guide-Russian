10 OPEN "DRESS" FOR OUTPUT AS #1
20 FOR X=1 TO 5
30    INPUT"Данные об одежде";S$,C$,P:PRINT #1,S$;",";C$;",";P
50 NEXT X:CLOSE #1
