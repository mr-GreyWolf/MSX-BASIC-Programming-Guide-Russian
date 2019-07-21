10 STRIG(1) ON:ON STRIG GOSUB ,130:DEFINT A-Z
20 DATA 3,7,15,15,31,31,31,31,15,0,49,1,1,0,0,0,192,240,248,252,180,182,182,182,252,2,244,240,236,216,112,32 : '"Череп"
30 DATA 16,56,56,56,16,16,16,16         : 'Вид оружия
40 COLOR 15,1,1:SCREEN 2,2:X=125:Y=96
50 FOR T=1 TO 32:READA:B$=B$+CHR$(A):NEXT:SPRITE$(1)=B$:FOR I=1 TO 8:READ W:C$=C$+CHR$(W):NEXT:SPRITE$(2)=C$   'Формирование спрайтов
60 GOSUB 70:GOTO 60  'Основная программа.
70 D=STICK(1):IF D=1 OR D=2 OR D=8 THEN Y=Y-3  'Движение  "черепа" при 
80 IF D=2 OR D=3 OR D=4 THEN X=X+3           'помощи клавиш управления
90 IF D=4 OR D=5 OR D=6 THEN Y=Y+3                  'курсором
100 IF D=6 OR D=7 OR D=8 THEN X=X-3            
110 IF Y<60 THEN Y=60 ELSE IF Y>145 THEN Y=145 ' Ограничение движения
120 PUT SPRITE 1,(X,Y):RETURN'WW▐ 
130 A=X:B=Y:C=A+8  'Подпрограмма полета стрелы
140 B=B-16:PUT SPRITE 2,(A,B),8,2:PUT SPRITE 3,(C,B),8,2:GOSUB 70
150 E=STRIG(1):IF B<10 THEN IF E=0 THEN RETURN ELSE 130 ELSE 140
