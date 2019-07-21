40 CODE$="Секрет":COUNT=0:PRINT"Имя":INPUT N$
70 PRINT "Пароль:"
110 P$=INPUT$(6) 'Чтение  ш е с т и  символов
120 IF P$=CODE$ THEN GOTO 150
130 COUNT=COUNT+1
140 IF COUNT<3 THEN GOTO 70 ELSE PRINT"Проход закрыт":END
150 PRINT:PRINT N$:PRINT"Проходи, приятель":END
