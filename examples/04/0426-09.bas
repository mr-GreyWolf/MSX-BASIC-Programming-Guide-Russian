10 DEFINT I,J: DEFSTR A
20 INPUT "В каком числе хотите перетрясти цифры";N
25 IF LEN(STR$(N))>14 THEN PRINT "Не озоруй!":GOTO 20
30 FOR I=0 TO9:FOR J=2 TO LEN(STR$(N))
40 IF I=VAL(MID$(STR$(N),J,1))THEN A=A+STR$(I)
50 NEXT J,I
60 PRINT VAL(A):END
