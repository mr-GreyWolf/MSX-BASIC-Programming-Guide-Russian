5 CLS
10 OPEN "ЭКЗАМЕН" AS#1 LEN=45:FIELD#1,5 AS G$,25 AS F$,1 AS O$
25 INPUT "Введите количество студентов";N
30 FOR I=1 TO N
40    INPUT "Группа";GG$:INPUT "Ф.И.О";FF$:INPUT"Оценка";OO$
50    LSET G$=GG$:LSET F$=FF$:LSET O$=OO$:PUT #1,I
65 NEXT:CLS
66 FOR I=1 TO N
70    GET #1,I:IF O$="5" OR O$="4" THEN PRINT G$,F$;O$
80 NEXT
90 CLOSE #1
