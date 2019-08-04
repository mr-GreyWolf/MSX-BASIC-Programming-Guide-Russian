10 INPUT"Введите число";A:PRINT"Попробуем 'собрать' его из памяти"
30 B=VARPTR(A):K$=RIGHT$("00000000"+BIN$(PEEK(B)),8)
50 IF MID$(K$,1,1)="1" THEN Z$="-." ELSE Z$="+."
60 FOR T=1 TO 7:Z$=Z$+RIGHT$("00"+HEX$(PEEK(B+T)),2):NEXT
70 Z$=Z$+"E"
80 IF MID$(K$,2,1)="1" THEN Z$=Z$+"+" ELSE Z$=Z$+"-"
90 U=VAL("&b"+MID$(K$,2,7))-64
100 C$=MID$(STR$(U),2):Z$=Z$+RIGHT$("00"+C$,2)
120 PRINT"Вот Ваше число:";Z$
