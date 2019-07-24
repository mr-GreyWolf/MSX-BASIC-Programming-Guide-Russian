5 DEFINT I:INPUT A1,AN,D'А1-первый член арифметической прогрессии;АN-п оследний ее член;D-знаменатель (D>0!)
7 IF D<0 OR A1>AN THEN PRINT"Прогрессия должна быть возрастающей! Повторите ввод!":GOTO 5
10 S=0:N=A1
20 IF N>AN THEN GOTO 70
30 FOR I=1 TO 0 STEP 1
40 S=S+N:N=N+D 'Тело цикла
50 I=N<=AN
60 NEXT I
70 PRINT S;"Тестовый пример:";((AN-A1)/D+1)*(A1+D/2*(AN-A1)/D)
