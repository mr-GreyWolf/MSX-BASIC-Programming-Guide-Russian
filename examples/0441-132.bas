10 INPUT"Строка для сжатия:";A$
20 FOR I=1 TO LEN(A$):C$=MID$(A$,I,1)
30 IF C$<>" " THEN B$=B$+C$
40 NEXT:PRINT B$
