5 ' Вложенные прямоугольники
10 COLOR 1,15,8:SCREEN2
20 FOR X=0 TO 15
30 LINE(2+8*X,6+6*X)-(254-8*X,185-6*X),15-X,BF:NEXT
40 GOTO 40
