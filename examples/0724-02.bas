50 ON STRIG GOSUB 270
60 CLS:R=RND(-TIME):PRINT "Реле времени"
100 PRINT "Когда раздастся звонок, нажмите клавишу 'пробел'"
130 T=INT(RND(1)*500)+10
140 ON INTERVAL=T GOSUB 200
150 INTERVAL ON
160 GOTO 160
190 'Подпрограмма отсчета времени
200 INTERVAL OFF:BEEP:TIME=0:STRIG(0)ON
230 GOTO 230
260 'Анализ прерывания от джойстика
270 STRIG(0) OFF
280 PRINT "Ваша реакция":PRINT"=";TIME/60;"секунд":END
