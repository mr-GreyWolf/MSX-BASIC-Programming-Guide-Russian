10 REM Считывание из файла "Массив"
20 MAXFILES=2:OPEN"Массив" AS#2 LEN=8:FIELD 2,8 AS M
50 FOR I=30 TO 1 STEP-1
60     GET 2,I:PRINT CVD(M);
80 NEXT
