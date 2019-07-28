10 MAXFILES=2:INPUT "Количество студентов";N
20 OPEN "СПИСОК" FOR OUTPUT AS #1:OPEN "SMART" FOR OUTPUT AS #2
30 FOR X=1 TO N
50 INPUT"Ф.И. студента:";I$:INPUT"Название курса:";K$:INPUT"Оценка:";O
60 PRINT #1,I$;",";K$;",";O
70 NEXT X:CLOSE #1
90 OPEN "СПИСОК" FOR INPUT AS #1
130 FOR X=1 TO N
140    INPUT #1,I$,K$,O:IF O>=4 THEN D=D+1:PRINT #2,I$;",";K$
155 NEXT X:CLOSE #1:CLOSE #2
220 OPEN "SMART" FOR INPUT AS#2
225 INPUT "Введите название курса";E$
230 FOR I=1 TO D
240    INPUT #2,I$,K$:IF K$=E$ THEN PRINT I$
280 NEXT I:CLOSE #2  
290 PRINT "Хотите закончить Д/Н"
300 IF INPUT$(1)="Д" THEN END ELSE GOTO 220
