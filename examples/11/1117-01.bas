10 COLOR 1,15,7:SCREEN 1
20 ' :::::::::::::::
30  FOR N=0 TO 15
40     AD=&H2020+2*N
50     RB=VPEEK(AD):G=VPEEK(AD+1)'Обратите внимание на мнемонику имен: RB и G!
60     PRINT N;TAB(4);HEX$(RB);HEX$(G)
70  NEXT
