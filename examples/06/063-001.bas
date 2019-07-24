20 SCREEN0:KEY OFF
30 CLS
40 PRINT "Вычисление частоты"
50 INPUT "Введите частоту в Гц";HZ
60 IF HZ<28 OR HZ>55932! THEN 30
70 TMP=1789800#/(16*HZ)
80 CT=INT(TMP/256)
90 FT=TMPMOD256
100 PRINT "Частота";TAB(17);":";HZ;"Гц"
110 PRINT "Параметр точной настройки:";FT
120 PRINT "Параметр грубой настройки:";CT
130 PRINT"Будете ли продолжать (Y-да, N-нет)?";
140 A$=INKEY$:IF A$="" THEN 140
150 IF A$="Y" OR A$="y" THEN 30
160 END
