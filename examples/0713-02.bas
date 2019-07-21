40 CLS:WIDTH 40
60 PRINT "Нажмите пусковую кнопку":PRINT "выбранного джойстика или"
80 PRINT "клавишу ПРОБЕЛ - для клавиатуры"
90 PRINT:PRINT:PRINT "Нажимайте":PRINT:PRINT
150 F=-1
160 FOR I=0 TO 4:IF STRIG(I) THEN F=I:NEXT I
190 IF F=-1 THEN GOTO 160
200 BEEP
240 IF F=0 THEN PRINT "Клавиатура ";
250 IF F=1 OR F=3 THEN PRINT "Джойстик А";
260 IF F=2 OR F=4 THEN PRINT "Джойстик B";
270 PRINT " в действии":END
