10 INPUT"Введите номер режима экрана (5,6,7 или 8)";I 
20 INPUT"Введите координаты первой точки (X1,Y1)";X1,Y1
30 INPUT"Введите координаты второй точки (X2,Y2)";X2,Y2
40 S=4:C=8:IF I=6 THEN S=2:C=2 ELSE IF I=8 THEN 60
50 M=INT((S*(ABS(X1-X2)+1)*(ABS(Y1-Y2)+1)+7)/C)+4:GOTO 70
60 M=INT((8*ABS(X1-X2)+1)*(ABS(Y1-Y2)+1)+7/8)
70 PRINT "SCREEN"I:PRINT "X1-"X1,"Y1-"Y1:PRINT "X2-"X2,"Y2-"Y2
80 PRINT "Размерность массива- "M:END
