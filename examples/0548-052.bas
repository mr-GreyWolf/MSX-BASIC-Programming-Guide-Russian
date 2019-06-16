15 COLOR 1,15,8:CLS:PRINT"Для вывода полученного графика на принтер на жмите клавишу ESC":PRINT
20 PRINT "1. Построение графика функции в декартовых координатах":PRINT "2. Построение кривых в полярных координатах":INPUT"Режим (1,2)";SW:ON SW GOTO 110,390
50 '   OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
70 '   O Построение графика функции в декартовых координатахO
90 '   OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
110 SX=255:SY=191:HY=SY/2 'Форматирование экрана дисплея!
120 CLS:DEFFNA(X)=EXP(-ABS(X))*SIN(1/X)
130 PRINT"Область изменения X:"
140 INPUT"min-значение:";A:INPUT"max-значение:";B:PRINT
160 IF A>=B THEN PRINT"Ошибка!":GOTO130
170 INPUT"Количество точек на единицу площади экрана";W
180 C=(B-A)/100:M=1E-30:SCREEN2 'C-шаг 
200 FORX=ATOBSTEPC:IFX=0THENNEXT'Учет области определения!
220 Y=ABS(FNA(X)):IF M<Y THEN M=Y:NEXT ELSE NEXT
240 C=C/W:FORX=A TO B STEPC:IF X=0 THEN NEXT ELSEY=-FNA(X)
260 U=SX*(X-A)/(B-A):V=HY+HY*Y/M:IF V<0 OR V>SY THEN NEXT
290 PSET(U,V),1:NEXT:GOTO 800
320 '        OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
340 '        O Кривые в полярных координатах O
370 '        OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
390 SX=255:SY=191:RAT=.86:HY=SY/2:HX=SX/2
410 CLS:DEFFNA(Z)=COS(8*Z)
420 PRINT"X=COS(AGZ)COS(8GZ)":PRINT"Y=SIN(BGZ)COS(8GZ)":PRINT
440 INPUT"A=";A:INPUT"B=";B
450 M=1E-30:FOR Z=0 TO 8*ATN(1):R=ABS(FNA(Z))
470 IF M<R THEN M=R+.1:NEXT ELSE NEXT
480 SCREEN2:FOR Z=0 TO 24*ATN(1) STEP.01
500 R=-FNA(Z):U=HX+HY*RAT*COS(A*Z)*R/M:IFU<0ORU>SXTHENNEXT
530 V=HY+HY*SIN(B*Z)*R/M:IF V<0 OR V>SY THEN NEXT
550 PSET(U,V),1:NEXT
800 PIT$=INKEY$:IF PIT$<>CHR$(27) THEN 800
