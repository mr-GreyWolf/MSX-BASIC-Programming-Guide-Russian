10 CLS:KEY OFF:WIDTH 40
20 PRINT "Настройка часов реального времени (RTC)":PRINT
30 GOSUB 90
40 GOSUB 220
50 GOSUB 150
60 GOSUB 430
70 KEY ON:' WIDTH 80
80 END
90 ' Читаем и выводим дату
100 GET DATE D$
110 PRINT "Tекущая дата"
120 PRINT "ММ ДД ГГ"
130 PRINT D$:PRINT
140 RETURN
150 ' Читаем и выводим время
160 GET TIME T$
170 PRINT "Tекущее время"
180 PRINT "ЧЧ ММ СС"
190 PRINT T$
200 RETURN
210 ' Вводим дату
220 PRINT:PRINT "Введите дату в формате"
230 PRINT "  ММ,ДД,ГГ или клавишу Ввод для отмены"
240 INPUT D1,D2,D3
250 IF D1=0 THEN PRINT "Oтмена ввода даты":PRINT:GOTO 420
260 IF D1<0 THEN PRINT "Месяц < 0":GOTO 220
270 IF D1>12 THEN PRINT "Месяц > 12":GOTO 220
280 D1$=MID$(STR$(D1),2,2):IF D1<10 THEN D1$="0"+D1$
290 IF D2<=0 THEN PRINT "День <= 0":GOTO 220
300 IF D2>31 THEN PRINT "День > 31":GOTO 220
310 D2$=MID$(STR$(D2),2,2):IF D2<10 THEN D2$="0"+D2$
320 IF D3<0 THEN PRINT "Год < 0":GOTO 220
330 IF D3>99 THEN PRINT "Год > 99":GOTO 220
340 D3$=MID$(STR$(D3),2,2):IF D3<10 THEN D3$="0"+D3$
350 D$=D1$+"/"+D2$+"/"+D3$
360 PRINT D$
370 ' Изменяем дату
380 PRINT "Новая дата: "
390 PRINT D$
400 SET DATE D$
410 PRINT "Новая дата установлена!":PRINT
420 RETURN
430 ' Вводим время
440 PRINT:PRINT "Введите время в формате"
450 PRINT "  ЧЧ,ММ,СС или клавишу Ввод для отмены"
460 INPUT T1,T2,T3
470 IF T1=0 THEN PRINT "Oтмена ввода времени":PRINT:GOTO 630
480 IF T1<0 THEN PRINT "Час < 0":GOTO 440
490 IF T1>24 THEN PRINT "Час > 24":GOTO 440
500 T1$=MID$(STR$(T1),2,2):IF T1<10 THEN T1$="0"+T1$
510 IF T2<0 THEN PRINT "Минута < 0":GOTO 440
520 IF T2>59 THEN PRINT "Минута > 59":GOTO 440
530 T2$=MID$(STR$(T2),2,2):IF T2<10 THEN T2$="0"+T2$
540 IF T3<0 THEN PRINT "Секунда < 0":GOTO 440
550 IF T3>59 THEN PRINT "Секунда > 59":GOTO 440
560 T3$=MID$(STR$(T3),2,2):IF T3<10 THEN T3$="0"+T3$
570 T$=T1$+":"+T2$+":"+T3$
580 ' Изменяем дату
590 PRINT "Новое время: "
600 PRINT T$
610 SET TIME T$
620 PRINT "Новое время установлено!":PRINT
630 RETURN
