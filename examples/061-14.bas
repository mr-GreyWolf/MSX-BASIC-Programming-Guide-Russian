10 CLS:INPUT"Начало модуляции";X
20 INPUT"Конец модуляции";Y:INPUT"Шаг модуляции";Z
30 CLS:FOR S=1 TO 8:READ I:PRINT"Форма";I
40 FOR M=X TO Y STEP Z:BEEP:PRINT"Модуляция";M
50 PLAY"S=I;M=M;B":FOR D=1TO500:NEXTD:NEXTM:NEXTS
60 DATA 0,4,8,10,11,12,13,14
