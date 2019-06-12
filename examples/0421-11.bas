10 INPUT X$:Y$=""
20 FOR I=1 TO LEN(X$):Y$=MID$(X$,I,1)+Y$:NEXT
30 IF X$=Y$ THEN PRINT"Палиндром!" ELSE PRINT"Не палиндром!"
